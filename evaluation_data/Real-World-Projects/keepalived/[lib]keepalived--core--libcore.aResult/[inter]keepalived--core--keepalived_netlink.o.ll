; ModuleID = './[inter]keepalived--core--keepalived_netlink.o.i'
source_filename = "./[inter]keepalived--core--keepalived_netlink.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._nl_handle = type { %struct.nl_sock*, i32, i32, i32, %struct._thread* }
%struct.nl_sock = type opaque
%struct._thread = type { i64, i32, %struct._thread_master*, i32 (%struct._thread*)*, i8*, %struct.timeval, %union.anon, %struct._thread_event*, %union.anon.0 }
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
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32 }
%struct._thread_event = type { %struct._thread*, %struct._thread*, i64, i32, %struct.rb_node }
%union.anon.0 = type { %struct.rb_node }
%struct._data = type { i8*, i8, i8*, i8, i8*, i8*, %struct.sockaddr_storage, i8*, i64, %struct._list*, i32, i8, i8, i32, i8*, %struct._interface*, i32, i32, i32, i32, %struct.lvs_syncd_config, i8, %struct.sockaddr_in, %struct.sockaddr_in6, i32, %struct.timeval, i32, i32, i32, i32, i32, i32, i8, i8, i32, [29 x i8], [29 x i8], i8, [32 x i8], [32 x i8], [32 x i8], i8, i8, i8, i8, i8, i8, i32, i64, i8, i8, i8, i32, i64, %struct._notify_fifo, %struct._notify_fifo, %struct._notify_fifo, i32, i8, i32, i8, i32, i8, i32, i8, i8, i8, i32, i64, i32 }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct._interface = type { [16 x i8], i32, %struct.in_addr, %struct.in6_addr, i32, i8, i32, i16, [32 x i8], [32 x i8], i64, i32, i8, i32, %struct._interface*, i32, %struct._interface*, i8, %struct._garp_delay*, i8, i32, i32, i32, i32, i32, i8, %struct._list* }
%struct.in_addr = type { i32 }
%struct.in6_addr = type { %union.anon.1 }
%union.anon.1 = type { [4 x i32] }
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
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.rtattr = type { i16, i16 }
%struct.sockaddr_nl = type { i16, i16, i32, i32 }
%struct.iovec = type { i8*, i64 }
%struct.msghdr = type { i8*, i32, %struct.iovec*, i64, i8*, i64, i32 }
%struct.nlmsgerr = type { i32, %struct.nlmsghdr }
%struct._tracking_vrrp = type { i32, %struct._vrrp_t*, i32 }
%struct.anon.2 = type { %struct.nlmsghdr, %struct.ifinfomsg, [64 x i8] }
%struct.ifinfomsg = type { i8, i8, i16, i32, i32, i32 }
%union.__CONST_SOCKADDR_ARG = type { %struct.sockaddr* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.ifaddrmsg = type { i8, i8, i8, i8, i32 }
%struct._ip_address = type { %struct.ifaddrmsg, %union.anon.3, %struct._interface*, i8*, i32, i32, i8, %union.anon.5, i8, %struct._static_track_group*, i8, i8, i8 }
%union.anon.3 = type { %struct.in6_addr }
%union.anon.5 = type { %struct.in6_addr }
%struct._static_track_group = type { i8*, %struct._vector*, %struct._list* }
%union.anon.6 = type { i8* }
%struct.rtmsg = type { i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct._ip_route = type { %struct._ip_address*, %struct._ip_address*, %struct._ip_address*, i8, i8, i32, i8, i8, i32, %struct._ip_address*, %struct._interface*, i32, i32, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8, i8, i32, %struct._encap, %struct._list*, i32, i8, %struct._static_track_group*, i8, i32 }
%struct._encap = type { i16, i32, %union.anon.7 }
%union.anon.7 = type { %struct._encap_ip }
%struct._encap_ip = type { i64, %struct._ip_address*, %struct._ip_address*, i8, i16, i8 }
%struct.fib_rule_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct._ip_rule = type { i32, i8, i32, %struct._ip_address*, %struct._ip_address*, i32, i8, i32, i32, i32, i32, i32, %struct._interface*, %struct._interface*, i32, i32, i8, i64, i8, %struct._static_track_group*, i8 }
%struct.anon.4 = type { %struct.in_addr, %struct.in_addr }
%union.anon.8 = type { %struct.in_addr* }

@nl_cmd = global %struct._nl_handle { %struct.nl_sock* null, i32 -1, i32 0, i32 0, %struct._thread* null }, align 8
@nlmsg_buf_size = internal global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Netlink: sendmsg(%d) cmd %d error: %s\00", align 1
@nl_kernel = internal global %struct._nl_handle { %struct.nl_sock* null, i32 -1, i32 0, i32 0, %struct._thread* null }, align 8
@prog_type = external global i32, align 4
@global_data = external global %struct._data*, align 8
@master = external global %struct._thread_master*, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Registering Kernel netlink reflector\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Error while registering Kernel netlink reflector channel\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Registering Kernel netlink command channel\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Error while registering Kernel netlink cmd channel\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [52 x i8] c"Error while registering Kernel netlink cmd channel\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"netlink_address_lookup() returned %d\0A\00", align 1
@garp_delay = common global %struct._list* null, align 8
@netlink_error_ignore = common global i32 0, align 4
@.str.7 = private unnamed_addr constant [50 x i8] c"Netlink: Cannot add socket membership 0x%x : (%d)\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"Netlink: Receive buffer overrun on %s socket - (%m)\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"monitor\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@.str.11 = private unnamed_addr constant [77 x i8] c"  - increase the relevant netlink_rcv_bufs global parameter and/or set force\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"Netlink: recvmsg error on %s socket  - %d (%m)\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Netlink: EOF\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"Netlink: Sender address length error: length %d\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"Netlink: error: message truncated\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"Netlink: error: %s, type=(%u), seq=%u, pid=%d\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"Netlink: filter function error\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"Netlink: error: data remnant size %zd\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"Netlink: ignoring message type 0x%04x\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"Netlink: sendto() failed: %s\00", align 1
@vrrp_data = external global %struct._vrrp_data*, align 8
@.str.21 = private unnamed_addr constant [22 x i8] c"Netlink reports %s %s\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"macvlan\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"vrf\00", align 1
@.str.26 = private unnamed_addr constant [41 x i8] c" %s MAC address for %s is too large: %zu\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"Broadcast\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"Address\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"Unknown Type\00", align 1
@.str.30 = private unnamed_addr constant [55 x i8] c"Kernel is reflecting an unknown netlink nlmsg_type: %d\00", align 1
@debug = external global i64, align 8
@.str.31 = private unnamed_addr constant [21 x i8] c"Interface %s deleted\00", align 1
@.str.32 = private unnamed_addr constant [41 x i8] c"Interface name has changed from %s to %s\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"Interface %s added\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"Unknown interface %s deleted\00", align 1
@.str.35 = private unnamed_addr constant [37 x i8] c"Assigned address %s for interface %s\00", align 1
@.str.36 = private unnamed_addr constant [40 x i8] c"Deassigned address %s from interface %s\00", align 1
@.str.37 = private unnamed_addr constant [38 x i8] c"Netlink reflector reports IP %s %s %s\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"added to\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"removed from\00", align 1
@.str.40 = private unnamed_addr constant [40 x i8] c"route added index %d != config index %d\00", align 1
@.str.41 = private unnamed_addr constant [33 x i8] c"New route doesn't have i/f index\00", align 1
@.str.42 = private unnamed_addr constant [49 x i8] c"cant set SO_RCVBUFFORCE IP option. errno=%d (%m)\00", align 1
@.str.43 = private unnamed_addr constant [47 x i8] c"Netlink: Cannot set netlink buffer size : (%d)\00", align 1
@.str.44 = private unnamed_addr constant [40 x i8] c"Netlink: Cannot allocate netlink socket\00", align 1
@.str.45 = private unnamed_addr constant [43 x i8] c"Netlink: Cannot open netlink socket : (%d)\00", align 1
@.str.46 = private unnamed_addr constant [55 x i8] c"Netlink: Cannot set netlink socket non-blocking : (%d)\00", align 1

; Function Attrs: nounwind uwtable
define void @netlink_set_recv_buf_size() #0 !dbg !652 {
  %1 = call i32 @getpagesize() #2, !dbg !656
  store i32 %1, i32* @nlmsg_buf_size, align 4, !dbg !657
  %2 = load i32, i32* @nlmsg_buf_size, align 4, !dbg !658
  %3 = icmp sgt i32 %2, 8192, !dbg !660
  br i1 %3, label %4, label %5, !dbg !661

; <label>:4:                                      ; preds = %0
  store i32 8192, i32* @nlmsg_buf_size, align 4, !dbg !662
  br label %5, !dbg !663

; <label>:5:                                      ; preds = %4, %0
  ret void, !dbg !664
}

; Function Attrs: nounwind readnone
declare i32 @getpagesize() #1

; Function Attrs: nounwind uwtable
define void @set_extra_netlink_monitoring(i1 zeroext, i1 zeroext, i1 zeroext, i1 zeroext) #0 !dbg !665 {
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = zext i1 %0 to i8
  store i8 %9, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !668, metadata !669), !dbg !670
  %10 = zext i1 %1 to i8
  store i8 %10, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !671, metadata !669), !dbg !672
  %11 = zext i1 %2 to i8
  store i8 %11, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !673, metadata !669), !dbg !674
  %12 = zext i1 %3 to i8
  store i8 %12, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !675, metadata !669), !dbg !676
  %13 = load i8, i8* %5, align 1, !dbg !677
  %14 = trunc i8 %13 to i1, !dbg !677
  call void @kernel_netlink_set_membership(i32 7, i1 zeroext %14), !dbg !678
  %15 = load i8, i8* %6, align 1, !dbg !679
  %16 = trunc i8 %15 to i1, !dbg !679
  call void @kernel_netlink_set_membership(i32 11, i1 zeroext %16), !dbg !680
  %17 = load i8, i8* %7, align 1, !dbg !681
  %18 = trunc i8 %17 to i1, !dbg !681
  call void @kernel_netlink_set_membership(i32 8, i1 zeroext %18), !dbg !682
  %19 = load i8, i8* %8, align 1, !dbg !683
  %20 = trunc i8 %19 to i1, !dbg !683
  call void @kernel_netlink_set_membership(i32 19, i1 zeroext %20), !dbg !684
  ret void, !dbg !685
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind uwtable
define internal void @kernel_netlink_set_membership(i32, i1 zeroext) #0 !dbg !686 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !689, metadata !669), !dbg !690
  %6 = zext i1 %1 to i8
  store i8 %6, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !691, metadata !669), !dbg !692
  call void @llvm.dbg.declare(metadata i32* %5, metadata !693, metadata !669), !dbg !695
  %7 = load i8, i8* %4, align 1, !dbg !696
  %8 = trunc i8 %7 to i1, !dbg !696
  br i1 %8, label %9, label %13, !dbg !698

; <label>:9:                                      ; preds = %2
  %10 = load %struct.nl_sock*, %struct.nl_sock** getelementptr inbounds (%struct._nl_handle, %struct._nl_handle* @nl_kernel, i32 0, i32 0), align 8, !dbg !699
  %11 = load i32, i32* %3, align 4, !dbg !700
  %12 = call i32 @nl_socket_add_membership(%struct.nl_sock* %10, i32 %11), !dbg !701
  store i32 %12, i32* %5, align 4, !dbg !702
  br label %17, !dbg !703

; <label>:13:                                     ; preds = %2
  %14 = load %struct.nl_sock*, %struct.nl_sock** getelementptr inbounds (%struct._nl_handle, %struct._nl_handle* @nl_kernel, i32 0, i32 0), align 8, !dbg !704
  %15 = load i32, i32* %3, align 4, !dbg !705
  %16 = call i32 @nl_socket_drop_membership(%struct.nl_sock* %14, i32 %15), !dbg !706
  store i32 %16, i32* %5, align 4, !dbg !707
  br label %17

; <label>:17:                                     ; preds = %13, %9
  %18 = load i32, i32* %5, align 4, !dbg !708
  %19 = icmp ne i32 %18, 0, !dbg !708
  br i1 %19, label %20, label %23, !dbg !710

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %3, align 4, !dbg !711
  %22 = load i32, i32* %5, align 4, !dbg !713
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i32 0, i32 0), i32 %21, i32 %22), !dbg !714
  br label %23, !dbg !715

; <label>:23:                                     ; preds = %20, %17
  ret void, !dbg !716
}

; Function Attrs: nounwind uwtable
define i32 @addattr_l(%struct.nlmsghdr*, i64, i16 zeroext, i8*, i64) #0 !dbg !717 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nlmsghdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i16, align 2
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.rtattr*, align 8
  store %struct.nlmsghdr* %0, %struct.nlmsghdr** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.nlmsghdr** %7, metadata !720, metadata !669), !dbg !721
  store i64 %1, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !722, metadata !669), !dbg !723
  store i16 %2, i16* %9, align 2
  call void @llvm.dbg.declare(metadata i16* %9, metadata !724, metadata !669), !dbg !725
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !726, metadata !669), !dbg !727
  store i64 %4, i64* %11, align 8
  call void @llvm.dbg.declare(metadata i64* %11, metadata !728, metadata !669), !dbg !729
  call void @llvm.dbg.declare(metadata i64* %12, metadata !730, metadata !669), !dbg !731
  %15 = load i64, i64* %11, align 8, !dbg !732
  %16 = add i64 4, %15, !dbg !733
  store i64 %16, i64* %12, align 8, !dbg !731
  call void @llvm.dbg.declare(metadata i64* %13, metadata !734, metadata !669), !dbg !735
  %17 = load i64, i64* %12, align 8, !dbg !736
  %18 = add i64 %17, 4, !dbg !737
  %19 = sub i64 %18, 1, !dbg !738
  %20 = and i64 %19, 4294967292, !dbg !739
  store i64 %20, i64* %13, align 8, !dbg !735
  call void @llvm.dbg.declare(metadata %struct.rtattr** %14, metadata !740, metadata !669), !dbg !741
  %21 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8, !dbg !742
  %22 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %21, i32 0, i32 0, !dbg !744
  %23 = load i32, i32* %22, align 4, !dbg !744
  %24 = zext i32 %23 to i64, !dbg !742
  %25 = load i64, i64* %13, align 8, !dbg !745
  %26 = add i64 %24, %25, !dbg !746
  %27 = load i64, i64* %8, align 8, !dbg !747
  %28 = icmp ugt i64 %26, %27, !dbg !748
  br i1 %28, label %29, label %30, !dbg !749

; <label>:29:                                     ; preds = %5
  store i32 -1, i32* %6, align 4, !dbg !750
  br label %57, !dbg !750

; <label>:30:                                     ; preds = %5
  %31 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8, !dbg !751
  %32 = bitcast %struct.nlmsghdr* %31 to i8*, !dbg !752
  %33 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8, !dbg !753
  %34 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %33, i32 0, i32 0, !dbg !754
  %35 = load i32, i32* %34, align 4, !dbg !754
  %36 = zext i32 %35 to i64, !dbg !755
  %37 = getelementptr inbounds i8, i8* %32, i64 %36, !dbg !755
  %38 = bitcast i8* %37 to %struct.rtattr*, !dbg !756
  store %struct.rtattr* %38, %struct.rtattr** %14, align 8, !dbg !757
  %39 = load i16, i16* %9, align 2, !dbg !758
  %40 = load %struct.rtattr*, %struct.rtattr** %14, align 8, !dbg !759
  %41 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %40, i32 0, i32 1, !dbg !760
  store i16 %39, i16* %41, align 2, !dbg !761
  %42 = load i64, i64* %12, align 8, !dbg !762
  %43 = trunc i64 %42 to i16, !dbg !763
  %44 = load %struct.rtattr*, %struct.rtattr** %14, align 8, !dbg !764
  %45 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %44, i32 0, i32 0, !dbg !765
  store i16 %43, i16* %45, align 2, !dbg !766
  %46 = load %struct.rtattr*, %struct.rtattr** %14, align 8, !dbg !767
  %47 = bitcast %struct.rtattr* %46 to i8*, !dbg !768
  %48 = getelementptr inbounds i8, i8* %47, i64 4, !dbg !769
  %49 = load i8*, i8** %10, align 8, !dbg !770
  %50 = load i64, i64* %11, align 8, !dbg !771
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 %50, i32 1, i1 false), !dbg !772
  %51 = load i64, i64* %13, align 8, !dbg !773
  %52 = trunc i64 %51 to i32, !dbg !774
  %53 = load %struct.nlmsghdr*, %struct.nlmsghdr** %7, align 8, !dbg !775
  %54 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %53, i32 0, i32 0, !dbg !776
  %55 = load i32, i32* %54, align 4, !dbg !777
  %56 = add i32 %55, %52, !dbg !777
  store i32 %56, i32* %54, align 4, !dbg !777
  store i32 0, i32* %6, align 4, !dbg !778
  br label %57, !dbg !778

; <label>:57:                                     ; preds = %30, %29
  %58 = load i32, i32* %6, align 4, !dbg !779
  ret i32 %58, !dbg !779
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define i32 @addattr8(%struct.nlmsghdr*, i64, i16 zeroext, i8 zeroext) #0 !dbg !780 {
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i16, align 2
  %8 = alloca i8, align 1
  store %struct.nlmsghdr* %0, %struct.nlmsghdr** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.nlmsghdr** %5, metadata !783, metadata !669), !dbg !784
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !785, metadata !669), !dbg !786
  store i16 %2, i16* %7, align 2
  call void @llvm.dbg.declare(metadata i16* %7, metadata !787, metadata !669), !dbg !788
  store i8 %3, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !789, metadata !669), !dbg !790
  %9 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !791
  %10 = load i64, i64* %6, align 8, !dbg !792
  %11 = load i16, i16* %7, align 2, !dbg !793
  %12 = call i32 @addattr_l(%struct.nlmsghdr* %9, i64 %10, i16 zeroext %11, i8* %8, i64 1), !dbg !794
  ret i32 %12, !dbg !795
}

; Function Attrs: nounwind uwtable
define i32 @addattr32(%struct.nlmsghdr*, i64, i16 zeroext, i32) #0 !dbg !796 {
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  store %struct.nlmsghdr* %0, %struct.nlmsghdr** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.nlmsghdr** %5, metadata !799, metadata !669), !dbg !800
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !801, metadata !669), !dbg !802
  store i16 %2, i16* %7, align 2
  call void @llvm.dbg.declare(metadata i16* %7, metadata !803, metadata !669), !dbg !804
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !805, metadata !669), !dbg !806
  %9 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !807
  %10 = load i64, i64* %6, align 8, !dbg !808
  %11 = load i16, i16* %7, align 2, !dbg !809
  %12 = bitcast i32* %8 to i8*, !dbg !810
  %13 = call i32 @addattr_l(%struct.nlmsghdr* %9, i64 %10, i16 zeroext %11, i8* %12, i64 4), !dbg !811
  ret i32 %13, !dbg !812
}

; Function Attrs: nounwind uwtable
define i32 @addattr64(%struct.nlmsghdr*, i64, i16 zeroext, i64) #0 !dbg !813 {
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i16, align 2
  %8 = alloca i64, align 8
  store %struct.nlmsghdr* %0, %struct.nlmsghdr** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.nlmsghdr** %5, metadata !816, metadata !669), !dbg !817
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !818, metadata !669), !dbg !819
  store i16 %2, i16* %7, align 2
  call void @llvm.dbg.declare(metadata i16* %7, metadata !820, metadata !669), !dbg !821
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !822, metadata !669), !dbg !823
  %9 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !824
  %10 = load i64, i64* %6, align 8, !dbg !825
  %11 = load i16, i16* %7, align 2, !dbg !826
  %12 = bitcast i64* %8 to i8*, !dbg !827
  %13 = call i32 @addattr_l(%struct.nlmsghdr* %9, i64 %10, i16 zeroext %11, i8* %12, i64 8), !dbg !828
  ret i32 %13, !dbg !829
}

; Function Attrs: nounwind uwtable
define i32 @addattr_l2(%struct.nlmsghdr*, i64, i16 zeroext, i8*, i64, i8*, i64) #0 !dbg !830 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nlmsghdr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i16, align 2
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.rtattr*, align 8
  store %struct.nlmsghdr* %0, %struct.nlmsghdr** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.nlmsghdr** %9, metadata !833, metadata !669), !dbg !834
  store i64 %1, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !835, metadata !669), !dbg !836
  store i16 %2, i16* %11, align 2
  call void @llvm.dbg.declare(metadata i16* %11, metadata !837, metadata !669), !dbg !838
  store i8* %3, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !839, metadata !669), !dbg !840
  store i64 %4, i64* %13, align 8
  call void @llvm.dbg.declare(metadata i64* %13, metadata !841, metadata !669), !dbg !842
  store i8* %5, i8** %14, align 8
  call void @llvm.dbg.declare(metadata i8** %14, metadata !843, metadata !669), !dbg !844
  store i64 %6, i64* %15, align 8
  call void @llvm.dbg.declare(metadata i64* %15, metadata !845, metadata !669), !dbg !846
  call void @llvm.dbg.declare(metadata i64* %16, metadata !847, metadata !669), !dbg !848
  %19 = load i64, i64* %13, align 8, !dbg !849
  %20 = load i64, i64* %15, align 8, !dbg !850
  %21 = add i64 %19, %20, !dbg !851
  %22 = add i64 4, %21, !dbg !852
  store i64 %22, i64* %16, align 8, !dbg !848
  call void @llvm.dbg.declare(metadata i64* %17, metadata !853, metadata !669), !dbg !854
  %23 = load i64, i64* %16, align 8, !dbg !855
  %24 = add i64 %23, 4, !dbg !856
  %25 = sub i64 %24, 1, !dbg !857
  %26 = and i64 %25, 4294967292, !dbg !858
  store i64 %26, i64* %17, align 8, !dbg !854
  call void @llvm.dbg.declare(metadata %struct.rtattr** %18, metadata !859, metadata !669), !dbg !860
  %27 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8, !dbg !861
  %28 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %27, i32 0, i32 0, !dbg !863
  %29 = load i32, i32* %28, align 4, !dbg !863
  %30 = zext i32 %29 to i64, !dbg !861
  %31 = load i64, i64* %17, align 8, !dbg !864
  %32 = add i64 %30, %31, !dbg !865
  %33 = load i64, i64* %10, align 8, !dbg !866
  %34 = icmp ugt i64 %32, %33, !dbg !867
  br i1 %34, label %35, label %36, !dbg !868

; <label>:35:                                     ; preds = %7
  store i32 -1, i32* %8, align 4, !dbg !869
  br label %70, !dbg !869

; <label>:36:                                     ; preds = %7
  %37 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8, !dbg !870
  %38 = bitcast %struct.nlmsghdr* %37 to i8*, !dbg !871
  %39 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8, !dbg !872
  %40 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %39, i32 0, i32 0, !dbg !873
  %41 = load i32, i32* %40, align 4, !dbg !873
  %42 = zext i32 %41 to i64, !dbg !874
  %43 = getelementptr inbounds i8, i8* %38, i64 %42, !dbg !874
  %44 = bitcast i8* %43 to %struct.rtattr*, !dbg !875
  store %struct.rtattr* %44, %struct.rtattr** %18, align 8, !dbg !876
  %45 = load i16, i16* %11, align 2, !dbg !877
  %46 = load %struct.rtattr*, %struct.rtattr** %18, align 8, !dbg !878
  %47 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %46, i32 0, i32 1, !dbg !879
  store i16 %45, i16* %47, align 2, !dbg !880
  %48 = load i64, i64* %16, align 8, !dbg !881
  %49 = trunc i64 %48 to i16, !dbg !882
  %50 = load %struct.rtattr*, %struct.rtattr** %18, align 8, !dbg !883
  %51 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %50, i32 0, i32 0, !dbg !884
  store i16 %49, i16* %51, align 2, !dbg !885
  %52 = load %struct.rtattr*, %struct.rtattr** %18, align 8, !dbg !886
  %53 = bitcast %struct.rtattr* %52 to i8*, !dbg !887
  %54 = getelementptr inbounds i8, i8* %53, i64 4, !dbg !888
  %55 = load i8*, i8** %12, align 8, !dbg !889
  %56 = load i64, i64* %13, align 8, !dbg !890
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 %56, i32 1, i1 false), !dbg !891
  %57 = load %struct.rtattr*, %struct.rtattr** %18, align 8, !dbg !892
  %58 = bitcast %struct.rtattr* %57 to i8*, !dbg !893
  %59 = getelementptr inbounds i8, i8* %58, i64 4, !dbg !894
  %60 = load i64, i64* %13, align 8, !dbg !895
  %61 = getelementptr i8, i8* %59, i64 %60, !dbg !896
  %62 = load i8*, i8** %14, align 8, !dbg !897
  %63 = load i64, i64* %15, align 8, !dbg !898
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* %62, i64 %63, i32 1, i1 false), !dbg !899
  %64 = load i64, i64* %17, align 8, !dbg !900
  %65 = trunc i64 %64 to i32, !dbg !901
  %66 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8, !dbg !902
  %67 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %66, i32 0, i32 0, !dbg !903
  %68 = load i32, i32* %67, align 4, !dbg !904
  %69 = add i32 %68, %65, !dbg !904
  store i32 %69, i32* %67, align 4, !dbg !904
  store i32 0, i32* %8, align 4, !dbg !905
  br label %70, !dbg !905

; <label>:70:                                     ; preds = %36, %35
  %71 = load i32, i32* %8, align 4, !dbg !906
  ret i32 %71, !dbg !906
}

; Function Attrs: nounwind uwtable
define i32 @addraw_l(%struct.nlmsghdr*, i64, i8*, i64) #0 !dbg !907 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.nlmsghdr* %0, %struct.nlmsghdr** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.nlmsghdr** %6, metadata !912, metadata !669), !dbg !913
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !914, metadata !669), !dbg !915
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !916, metadata !669), !dbg !917
  store i64 %3, i64* %9, align 8
  call void @llvm.dbg.declare(metadata i64* %9, metadata !918, metadata !669), !dbg !919
  call void @llvm.dbg.declare(metadata i64* %10, metadata !920, metadata !669), !dbg !921
  %11 = load i64, i64* %9, align 8, !dbg !922
  %12 = add i64 %11, 4, !dbg !923
  %13 = sub i64 %12, 1, !dbg !924
  %14 = and i64 %13, 4294967292, !dbg !925
  store i64 %14, i64* %10, align 8, !dbg !921
  %15 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8, !dbg !926
  %16 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %15, i32 0, i32 0, !dbg !928
  %17 = load i32, i32* %16, align 4, !dbg !928
  %18 = zext i32 %17 to i64, !dbg !926
  %19 = load i64, i64* %10, align 8, !dbg !929
  %20 = add i64 %18, %19, !dbg !930
  %21 = load i64, i64* %7, align 8, !dbg !931
  %22 = icmp ugt i64 %20, %21, !dbg !932
  br i1 %22, label %23, label %24, !dbg !933

; <label>:23:                                     ; preds = %4
  store i32 -1, i32* %5, align 4, !dbg !934
  br label %58, !dbg !934

; <label>:24:                                     ; preds = %4
  %25 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8, !dbg !935
  %26 = bitcast %struct.nlmsghdr* %25 to i8*, !dbg !936
  %27 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8, !dbg !935
  %28 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %27, i32 0, i32 0, !dbg !937
  %29 = load i32, i32* %28, align 4, !dbg !937
  %30 = add i32 %29, 4, !dbg !938
  %31 = sub i32 %30, 1, !dbg !939
  %32 = and i32 %31, -4, !dbg !940
  %33 = zext i32 %32 to i64, !dbg !937
  %34 = getelementptr i8, i8* %26, i64 %33, !dbg !937
  %35 = load i8*, i8** %8, align 8, !dbg !941
  %36 = load i64, i64* %9, align 8, !dbg !940
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 %36, i32 1, i1 false), !dbg !942
  %37 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8, !dbg !943
  %38 = bitcast %struct.nlmsghdr* %37 to i8*, !dbg !944
  %39 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8, !dbg !943
  %40 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %39, i32 0, i32 0, !dbg !945
  %41 = load i32, i32* %40, align 4, !dbg !945
  %42 = add i32 %41, 4, !dbg !946
  %43 = sub i32 %42, 1, !dbg !947
  %44 = and i32 %43, -4, !dbg !948
  %45 = zext i32 %44 to i64, !dbg !945
  %46 = getelementptr i8, i8* %38, i64 %45, !dbg !945
  %47 = load i64, i64* %9, align 8, !dbg !949
  %48 = getelementptr i8, i8* %46, i64 %47, !dbg !950
  %49 = load i64, i64* %10, align 8, !dbg !951
  %50 = load i64, i64* %9, align 8, !dbg !952
  %51 = sub i64 %49, %50, !dbg !953
  call void @llvm.memset.p0i8.i64(i8* %48, i8 0, i64 %51, i32 1, i1 false), !dbg !954
  %52 = load i64, i64* %10, align 8, !dbg !955
  %53 = trunc i64 %52 to i32, !dbg !956
  %54 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8, !dbg !957
  %55 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %54, i32 0, i32 0, !dbg !958
  %56 = load i32, i32* %55, align 4, !dbg !959
  %57 = add i32 %56, %53, !dbg !959
  store i32 %57, i32* %55, align 4, !dbg !959
  store i32 0, i32* %5, align 4, !dbg !960
  br label %58, !dbg !960

; <label>:58:                                     ; preds = %24, %23
  %59 = load i32, i32* %5, align 4, !dbg !961
  ret i32 %59, !dbg !961
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define i64 @rta_addattr_l(%struct.rtattr*, i64, i16 zeroext, i8*, i64) #0 !dbg !962 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.rtattr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i16, align 2
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.rtattr*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.rtattr* %0, %struct.rtattr** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.rtattr** %7, metadata !965, metadata !669), !dbg !966
  store i64 %1, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !967, metadata !669), !dbg !968
  store i16 %2, i16* %9, align 2
  call void @llvm.dbg.declare(metadata i16* %9, metadata !969, metadata !669), !dbg !970
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !971, metadata !669), !dbg !972
  store i64 %4, i64* %11, align 8
  call void @llvm.dbg.declare(metadata i64* %11, metadata !973, metadata !669), !dbg !974
  call void @llvm.dbg.declare(metadata %struct.rtattr** %12, metadata !975, metadata !669), !dbg !976
  call void @llvm.dbg.declare(metadata i64* %13, metadata !977, metadata !669), !dbg !978
  %15 = load i64, i64* %11, align 8, !dbg !979
  %16 = add i64 4, %15, !dbg !980
  store i64 %16, i64* %13, align 8, !dbg !978
  call void @llvm.dbg.declare(metadata i64* %14, metadata !981, metadata !669), !dbg !982
  %17 = load i64, i64* %13, align 8, !dbg !983
  %18 = add i64 %17, 4, !dbg !984
  %19 = sub i64 %18, 1, !dbg !985
  %20 = and i64 %19, 4294967292, !dbg !986
  store i64 %20, i64* %14, align 8, !dbg !982
  %21 = load %struct.rtattr*, %struct.rtattr** %7, align 8, !dbg !987
  %22 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %21, i32 0, i32 0, !dbg !989
  %23 = load i16, i16* %22, align 2, !dbg !989
  %24 = zext i16 %23 to i64, !dbg !987
  %25 = load i64, i64* %14, align 8, !dbg !990
  %26 = add i64 %24, %25, !dbg !991
  %27 = load i64, i64* %8, align 8, !dbg !992
  %28 = icmp ugt i64 %26, %27, !dbg !993
  br i1 %28, label %29, label %30, !dbg !994

; <label>:29:                                     ; preds = %5
  store i64 0, i64* %6, align 8, !dbg !995
  br label %62, !dbg !995

; <label>:30:                                     ; preds = %5
  %31 = load %struct.rtattr*, %struct.rtattr** %7, align 8, !dbg !996
  %32 = bitcast %struct.rtattr* %31 to i8*, !dbg !997
  %33 = load %struct.rtattr*, %struct.rtattr** %7, align 8, !dbg !998
  %34 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %33, i32 0, i32 0, !dbg !999
  %35 = load i16, i16* %34, align 2, !dbg !999
  %36 = zext i16 %35 to i32, !dbg !998
  %37 = sext i32 %36 to i64, !dbg !1000
  %38 = getelementptr inbounds i8, i8* %32, i64 %37, !dbg !1000
  %39 = bitcast i8* %38 to %struct.rtattr*, !dbg !1001
  store %struct.rtattr* %39, %struct.rtattr** %12, align 8, !dbg !1002
  %40 = load i16, i16* %9, align 2, !dbg !1003
  %41 = load %struct.rtattr*, %struct.rtattr** %12, align 8, !dbg !1004
  %42 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %41, i32 0, i32 1, !dbg !1005
  store i16 %40, i16* %42, align 2, !dbg !1006
  %43 = load i64, i64* %13, align 8, !dbg !1007
  %44 = trunc i64 %43 to i16, !dbg !1008
  %45 = load %struct.rtattr*, %struct.rtattr** %12, align 8, !dbg !1009
  %46 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %45, i32 0, i32 0, !dbg !1010
  store i16 %44, i16* %46, align 2, !dbg !1011
  %47 = load %struct.rtattr*, %struct.rtattr** %12, align 8, !dbg !1012
  %48 = bitcast %struct.rtattr* %47 to i8*, !dbg !1013
  %49 = getelementptr inbounds i8, i8* %48, i64 4, !dbg !1014
  %50 = load i8*, i8** %10, align 8, !dbg !1015
  %51 = load i64, i64* %11, align 8, !dbg !1016
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %49, i8* %50, i64 %51, i32 1, i1 false), !dbg !1017
  %52 = load %struct.rtattr*, %struct.rtattr** %7, align 8, !dbg !1018
  %53 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %52, i32 0, i32 0, !dbg !1019
  %54 = load i16, i16* %53, align 2, !dbg !1019
  %55 = zext i16 %54 to i64, !dbg !1018
  %56 = load i64, i64* %14, align 8, !dbg !1020
  %57 = add i64 %55, %56, !dbg !1021
  %58 = trunc i64 %57 to i16, !dbg !1022
  %59 = load %struct.rtattr*, %struct.rtattr** %7, align 8, !dbg !1023
  %60 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %59, i32 0, i32 0, !dbg !1024
  store i16 %58, i16* %60, align 2, !dbg !1025
  %61 = load i64, i64* %14, align 8, !dbg !1026
  store i64 %61, i64* %6, align 8, !dbg !1027
  br label %62, !dbg !1027

; <label>:62:                                     ; preds = %30, %29
  %63 = load i64, i64* %6, align 8, !dbg !1028
  ret i64 %63, !dbg !1028
}

; Function Attrs: nounwind uwtable
define i64 @rta_addattr_l2(%struct.rtattr*, i64, i16 zeroext, i8*, i64, i8*, i64) #0 !dbg !1029 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.rtattr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i16, align 2
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.rtattr*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.rtattr* %0, %struct.rtattr** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.rtattr** %9, metadata !1032, metadata !669), !dbg !1033
  store i64 %1, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1034, metadata !669), !dbg !1035
  store i16 %2, i16* %11, align 2
  call void @llvm.dbg.declare(metadata i16* %11, metadata !1036, metadata !669), !dbg !1037
  store i8* %3, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1038, metadata !669), !dbg !1039
  store i64 %4, i64* %13, align 8
  call void @llvm.dbg.declare(metadata i64* %13, metadata !1040, metadata !669), !dbg !1041
  store i8* %5, i8** %14, align 8
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1042, metadata !669), !dbg !1043
  store i64 %6, i64* %15, align 8
  call void @llvm.dbg.declare(metadata i64* %15, metadata !1044, metadata !669), !dbg !1045
  call void @llvm.dbg.declare(metadata %struct.rtattr** %16, metadata !1046, metadata !669), !dbg !1047
  call void @llvm.dbg.declare(metadata i64* %17, metadata !1048, metadata !669), !dbg !1049
  %19 = load i64, i64* %13, align 8, !dbg !1050
  %20 = load i64, i64* %15, align 8, !dbg !1051
  %21 = add i64 %19, %20, !dbg !1052
  %22 = add i64 4, %21, !dbg !1053
  store i64 %22, i64* %17, align 8, !dbg !1049
  call void @llvm.dbg.declare(metadata i64* %18, metadata !1054, metadata !669), !dbg !1055
  %23 = load i64, i64* %17, align 8, !dbg !1056
  %24 = add i64 %23, 4, !dbg !1057
  %25 = sub i64 %24, 1, !dbg !1058
  %26 = and i64 %25, 4294967292, !dbg !1059
  store i64 %26, i64* %18, align 8, !dbg !1055
  %27 = load %struct.rtattr*, %struct.rtattr** %9, align 8, !dbg !1060
  %28 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %27, i32 0, i32 0, !dbg !1062
  %29 = load i16, i16* %28, align 2, !dbg !1062
  %30 = zext i16 %29 to i64, !dbg !1060
  %31 = load i64, i64* %18, align 8, !dbg !1063
  %32 = add i64 %30, %31, !dbg !1064
  %33 = load i64, i64* %10, align 8, !dbg !1065
  %34 = icmp ugt i64 %32, %33, !dbg !1066
  br i1 %34, label %35, label %36, !dbg !1067

; <label>:35:                                     ; preds = %7
  store i64 0, i64* %8, align 8, !dbg !1068
  br label %75, !dbg !1068

; <label>:36:                                     ; preds = %7
  %37 = load %struct.rtattr*, %struct.rtattr** %9, align 8, !dbg !1069
  %38 = bitcast %struct.rtattr* %37 to i8*, !dbg !1070
  %39 = load %struct.rtattr*, %struct.rtattr** %9, align 8, !dbg !1071
  %40 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %39, i32 0, i32 0, !dbg !1072
  %41 = load i16, i16* %40, align 2, !dbg !1072
  %42 = zext i16 %41 to i32, !dbg !1071
  %43 = sext i32 %42 to i64, !dbg !1073
  %44 = getelementptr inbounds i8, i8* %38, i64 %43, !dbg !1073
  %45 = bitcast i8* %44 to %struct.rtattr*, !dbg !1074
  store %struct.rtattr* %45, %struct.rtattr** %16, align 8, !dbg !1075
  %46 = load i16, i16* %11, align 2, !dbg !1076
  %47 = load %struct.rtattr*, %struct.rtattr** %16, align 8, !dbg !1077
  %48 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %47, i32 0, i32 1, !dbg !1078
  store i16 %46, i16* %48, align 2, !dbg !1079
  %49 = load i64, i64* %17, align 8, !dbg !1080
  %50 = trunc i64 %49 to i16, !dbg !1081
  %51 = load %struct.rtattr*, %struct.rtattr** %16, align 8, !dbg !1082
  %52 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %51, i32 0, i32 0, !dbg !1083
  store i16 %50, i16* %52, align 2, !dbg !1084
  %53 = load %struct.rtattr*, %struct.rtattr** %16, align 8, !dbg !1085
  %54 = bitcast %struct.rtattr* %53 to i8*, !dbg !1086
  %55 = getelementptr inbounds i8, i8* %54, i64 4, !dbg !1087
  %56 = load i8*, i8** %12, align 8, !dbg !1088
  %57 = load i64, i64* %13, align 8, !dbg !1089
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* %56, i64 %57, i32 1, i1 false), !dbg !1090
  %58 = load %struct.rtattr*, %struct.rtattr** %16, align 8, !dbg !1091
  %59 = bitcast %struct.rtattr* %58 to i8*, !dbg !1092
  %60 = getelementptr inbounds i8, i8* %59, i64 4, !dbg !1093
  %61 = load i64, i64* %13, align 8, !dbg !1094
  %62 = getelementptr i8, i8* %60, i64 %61, !dbg !1095
  %63 = load i8*, i8** %14, align 8, !dbg !1096
  %64 = load i64, i64* %15, align 8, !dbg !1097
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %63, i64 %64, i32 1, i1 false), !dbg !1098
  %65 = load %struct.rtattr*, %struct.rtattr** %9, align 8, !dbg !1099
  %66 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %65, i32 0, i32 0, !dbg !1100
  %67 = load i16, i16* %66, align 2, !dbg !1100
  %68 = zext i16 %67 to i64, !dbg !1099
  %69 = load i64, i64* %18, align 8, !dbg !1101
  %70 = add i64 %68, %69, !dbg !1102
  %71 = trunc i64 %70 to i16, !dbg !1103
  %72 = load %struct.rtattr*, %struct.rtattr** %9, align 8, !dbg !1104
  %73 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %72, i32 0, i32 0, !dbg !1105
  store i16 %71, i16* %73, align 2, !dbg !1106
  %74 = load i64, i64* %18, align 8, !dbg !1107
  store i64 %74, i64* %8, align 8, !dbg !1108
  br label %75, !dbg !1108

; <label>:75:                                     ; preds = %36, %35
  %76 = load i64, i64* %8, align 8, !dbg !1109
  ret i64 %76, !dbg !1109
}

; Function Attrs: nounwind uwtable
define i64 @rta_addattr64(%struct.rtattr*, i64, i16 zeroext, i64) #0 !dbg !1110 {
  %5 = alloca %struct.rtattr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i16, align 2
  %8 = alloca i64, align 8
  store %struct.rtattr* %0, %struct.rtattr** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.rtattr** %5, metadata !1113, metadata !669), !dbg !1114
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1115, metadata !669), !dbg !1116
  store i16 %2, i16* %7, align 2
  call void @llvm.dbg.declare(metadata i16* %7, metadata !1117, metadata !669), !dbg !1118
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1119, metadata !669), !dbg !1120
  %9 = load %struct.rtattr*, %struct.rtattr** %5, align 8, !dbg !1121
  %10 = load i64, i64* %6, align 8, !dbg !1122
  %11 = load i16, i16* %7, align 2, !dbg !1123
  %12 = bitcast i64* %8 to i8*, !dbg !1124
  %13 = call i64 @rta_addattr_l(%struct.rtattr* %9, i64 %10, i16 zeroext %11, i8* %12, i64 8), !dbg !1125
  ret i64 %13, !dbg !1126
}

; Function Attrs: nounwind uwtable
define i64 @rta_addattr32(%struct.rtattr*, i64, i16 zeroext, i32) #0 !dbg !1127 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.rtattr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca %struct.rtattr*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.rtattr* %0, %struct.rtattr** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.rtattr** %6, metadata !1130, metadata !669), !dbg !1131
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1132, metadata !669), !dbg !1133
  store i16 %2, i16* %8, align 2
  call void @llvm.dbg.declare(metadata i16* %8, metadata !1134, metadata !669), !dbg !1135
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1136, metadata !669), !dbg !1137
  call void @llvm.dbg.declare(metadata %struct.rtattr** %10, metadata !1138, metadata !669), !dbg !1139
  call void @llvm.dbg.declare(metadata i64* %11, metadata !1140, metadata !669), !dbg !1141
  store i64 8, i64* %11, align 8, !dbg !1141
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1142, metadata !669), !dbg !1143
  %13 = load i64, i64* %11, align 8, !dbg !1144
  %14 = add i64 %13, 4, !dbg !1145
  %15 = sub i64 %14, 1, !dbg !1146
  %16 = and i64 %15, 4294967292, !dbg !1147
  store i64 %16, i64* %12, align 8, !dbg !1143
  %17 = load %struct.rtattr*, %struct.rtattr** %6, align 8, !dbg !1148
  %18 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %17, i32 0, i32 0, !dbg !1150
  %19 = load i16, i16* %18, align 2, !dbg !1150
  %20 = zext i16 %19 to i64, !dbg !1148
  %21 = load i64, i64* %12, align 8, !dbg !1151
  %22 = add i64 %20, %21, !dbg !1152
  %23 = load i64, i64* %7, align 8, !dbg !1153
  %24 = icmp ugt i64 %22, %23, !dbg !1154
  br i1 %24, label %25, label %26, !dbg !1155

; <label>:25:                                     ; preds = %4
  store i64 0, i64* %5, align 8, !dbg !1156
  br label %57, !dbg !1156

; <label>:26:                                     ; preds = %4
  %27 = load %struct.rtattr*, %struct.rtattr** %6, align 8, !dbg !1157
  %28 = bitcast %struct.rtattr* %27 to i8*, !dbg !1158
  %29 = load %struct.rtattr*, %struct.rtattr** %6, align 8, !dbg !1159
  %30 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %29, i32 0, i32 0, !dbg !1160
  %31 = load i16, i16* %30, align 2, !dbg !1160
  %32 = zext i16 %31 to i32, !dbg !1159
  %33 = sext i32 %32 to i64, !dbg !1161
  %34 = getelementptr inbounds i8, i8* %28, i64 %33, !dbg !1161
  %35 = bitcast i8* %34 to %struct.rtattr*, !dbg !1162
  store %struct.rtattr* %35, %struct.rtattr** %10, align 8, !dbg !1163
  %36 = load i16, i16* %8, align 2, !dbg !1164
  %37 = load %struct.rtattr*, %struct.rtattr** %10, align 8, !dbg !1165
  %38 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %37, i32 0, i32 1, !dbg !1166
  store i16 %36, i16* %38, align 2, !dbg !1167
  %39 = load i64, i64* %11, align 8, !dbg !1168
  %40 = trunc i64 %39 to i16, !dbg !1169
  %41 = load %struct.rtattr*, %struct.rtattr** %10, align 8, !dbg !1170
  %42 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %41, i32 0, i32 0, !dbg !1171
  store i16 %40, i16* %42, align 2, !dbg !1172
  %43 = load %struct.rtattr*, %struct.rtattr** %10, align 8, !dbg !1173
  %44 = bitcast %struct.rtattr* %43 to i8*, !dbg !1174
  %45 = getelementptr inbounds i8, i8* %44, i64 4, !dbg !1175
  %46 = bitcast i32* %9 to i8*, !dbg !1176
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %46, i64 4, i32 1, i1 false), !dbg !1176
  %47 = load %struct.rtattr*, %struct.rtattr** %6, align 8, !dbg !1177
  %48 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %47, i32 0, i32 0, !dbg !1178
  %49 = load i16, i16* %48, align 2, !dbg !1178
  %50 = zext i16 %49 to i64, !dbg !1177
  %51 = load i64, i64* %12, align 8, !dbg !1179
  %52 = add i64 %50, %51, !dbg !1180
  %53 = trunc i64 %52 to i16, !dbg !1181
  %54 = load %struct.rtattr*, %struct.rtattr** %6, align 8, !dbg !1182
  %55 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %54, i32 0, i32 0, !dbg !1183
  store i16 %53, i16* %55, align 2, !dbg !1184
  %56 = load i64, i64* %12, align 8, !dbg !1185
  store i64 %56, i64* %5, align 8, !dbg !1186
  br label %57, !dbg !1186

; <label>:57:                                     ; preds = %26, %25
  %58 = load i64, i64* %5, align 8, !dbg !1187
  ret i64 %58, !dbg !1187
}

; Function Attrs: nounwind uwtable
define i64 @rta_addattr16(%struct.rtattr*, i64, i16 zeroext, i16 zeroext) #0 !dbg !1188 {
  %5 = alloca %struct.rtattr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  store %struct.rtattr* %0, %struct.rtattr** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.rtattr** %5, metadata !1191, metadata !669), !dbg !1192
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1193, metadata !669), !dbg !1194
  store i16 %2, i16* %7, align 2
  call void @llvm.dbg.declare(metadata i16* %7, metadata !1195, metadata !669), !dbg !1196
  store i16 %3, i16* %8, align 2
  call void @llvm.dbg.declare(metadata i16* %8, metadata !1197, metadata !669), !dbg !1198
  %9 = load %struct.rtattr*, %struct.rtattr** %5, align 8, !dbg !1199
  %10 = load i64, i64* %6, align 8, !dbg !1200
  %11 = load i16, i16* %7, align 2, !dbg !1201
  %12 = bitcast i16* %8 to i8*, !dbg !1202
  %13 = call i64 @rta_addattr_l(%struct.rtattr* %9, i64 %10, i16 zeroext %11, i8* %12, i64 2), !dbg !1203
  ret i64 %13, !dbg !1204
}

; Function Attrs: nounwind uwtable
define i64 @rta_addattr8(%struct.rtattr*, i64, i16 zeroext, i8 zeroext) #0 !dbg !1205 {
  %5 = alloca %struct.rtattr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i16, align 2
  %8 = alloca i8, align 1
  store %struct.rtattr* %0, %struct.rtattr** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.rtattr** %5, metadata !1208, metadata !669), !dbg !1209
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1210, metadata !669), !dbg !1211
  store i16 %2, i16* %7, align 2
  call void @llvm.dbg.declare(metadata i16* %7, metadata !1212, metadata !669), !dbg !1213
  store i8 %3, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !1214, metadata !669), !dbg !1215
  %9 = load %struct.rtattr*, %struct.rtattr** %5, align 8, !dbg !1216
  %10 = load i64, i64* %6, align 8, !dbg !1217
  %11 = load i16, i16* %7, align 2, !dbg !1218
  %12 = call i64 @rta_addattr_l(%struct.rtattr* %9, i64 %10, i16 zeroext %11, i8* %8, i64 1), !dbg !1219
  ret i64 %12, !dbg !1220
}

; Function Attrs: nounwind uwtable
define %struct.rtattr* @rta_nest(%struct.rtattr*, i64, i16 zeroext) #0 !dbg !1221 {
  %4 = alloca %struct.rtattr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i16, align 2
  %7 = alloca %struct.rtattr*, align 8
  store %struct.rtattr* %0, %struct.rtattr** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.rtattr** %4, metadata !1224, metadata !669), !dbg !1225
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1226, metadata !669), !dbg !1227
  store i16 %2, i16* %6, align 2
  call void @llvm.dbg.declare(metadata i16* %6, metadata !1228, metadata !669), !dbg !1229
  call void @llvm.dbg.declare(metadata %struct.rtattr** %7, metadata !1230, metadata !669), !dbg !1231
  %8 = load %struct.rtattr*, %struct.rtattr** %4, align 8, !dbg !1232
  %9 = bitcast %struct.rtattr* %8 to i8*, !dbg !1233
  %10 = load %struct.rtattr*, %struct.rtattr** %4, align 8, !dbg !1234
  %11 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %10, i32 0, i32 0, !dbg !1235
  %12 = load i16, i16* %11, align 2, !dbg !1235
  %13 = zext i16 %12 to i32, !dbg !1236
  %14 = add i32 %13, 4, !dbg !1234
  %15 = sub i32 %14, 1, !dbg !1237
  %16 = and i32 %15, -4, !dbg !1238
  %17 = zext i32 %16 to i64, !dbg !1239
  %18 = getelementptr i8, i8* %9, i64 %17, !dbg !1239
  %19 = bitcast i8* %18 to %struct.rtattr*, !dbg !1240
  store %struct.rtattr* %19, %struct.rtattr** %7, align 8, !dbg !1231
  %20 = load %struct.rtattr*, %struct.rtattr** %4, align 8, !dbg !1241
  %21 = load i64, i64* %5, align 8, !dbg !1242
  %22 = load i16, i16* %6, align 2, !dbg !1243
  %23 = call i64 @rta_addattr_l(%struct.rtattr* %20, i64 %21, i16 zeroext %22, i8* null, i64 0), !dbg !1244
  %24 = load %struct.rtattr*, %struct.rtattr** %7, align 8, !dbg !1245
  ret %struct.rtattr* %24, !dbg !1246
}

; Function Attrs: nounwind uwtable
define i64 @rta_nest_end(%struct.rtattr*, %struct.rtattr*) #0 !dbg !1247 {
  %3 = alloca %struct.rtattr*, align 8
  %4 = alloca %struct.rtattr*, align 8
  store %struct.rtattr* %0, %struct.rtattr** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.rtattr** %3, metadata !1250, metadata !669), !dbg !1251
  store %struct.rtattr* %1, %struct.rtattr** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.rtattr** %4, metadata !1252, metadata !669), !dbg !1253
  %5 = load %struct.rtattr*, %struct.rtattr** %3, align 8, !dbg !1254
  %6 = bitcast %struct.rtattr* %5 to i8*, !dbg !1255
  %7 = load %struct.rtattr*, %struct.rtattr** %3, align 8, !dbg !1256
  %8 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %7, i32 0, i32 0, !dbg !1257
  %9 = load i16, i16* %8, align 2, !dbg !1257
  %10 = zext i16 %9 to i32, !dbg !1258
  %11 = add i32 %10, 4, !dbg !1256
  %12 = sub i32 %11, 1, !dbg !1259
  %13 = and i32 %12, -4, !dbg !1260
  %14 = zext i32 %13 to i64, !dbg !1261
  %15 = getelementptr i8, i8* %6, i64 %14, !dbg !1261
  %16 = bitcast i8* %15 to %struct.rtattr*, !dbg !1262
  %17 = bitcast %struct.rtattr* %16 to i8*, !dbg !1263
  %18 = load %struct.rtattr*, %struct.rtattr** %4, align 8, !dbg !1264
  %19 = bitcast %struct.rtattr* %18 to i8*, !dbg !1259
  %20 = ptrtoint i8* %17 to i64, !dbg !1258
  %21 = ptrtoint i8* %19 to i64, !dbg !1258
  %22 = sub i64 %20, %21, !dbg !1258
  %23 = trunc i64 %22 to i16, !dbg !1265
  %24 = load %struct.rtattr*, %struct.rtattr** %4, align 8, !dbg !1266
  %25 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %24, i32 0, i32 0, !dbg !1267
  store i16 %23, i16* %25, align 2, !dbg !1268
  %26 = load %struct.rtattr*, %struct.rtattr** %3, align 8, !dbg !1269
  %27 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %26, i32 0, i32 0, !dbg !1270
  %28 = load i16, i16* %27, align 2, !dbg !1270
  %29 = zext i16 %28 to i64, !dbg !1269
  ret i64 %29, !dbg !1271
}

; Function Attrs: nounwind uwtable
define i64 @netlink_talk(%struct._nl_handle*, %struct.nlmsghdr*) #0 !dbg !1272 {
  %3 = alloca i64, align 8
  %4 = alloca %struct._nl_handle*, align 8
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sockaddr_nl, align 4
  %8 = alloca %struct.iovec, align 8
  %9 = alloca %struct.msghdr, align 8
  store %struct._nl_handle* %0, %struct._nl_handle** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._nl_handle** %4, metadata !1278, metadata !669), !dbg !1279
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.nlmsghdr** %5, metadata !1280, metadata !669), !dbg !1281
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1282, metadata !669), !dbg !1283
  call void @llvm.dbg.declare(metadata %struct.sockaddr_nl* %7, metadata !1284, metadata !669), !dbg !1293
  call void @llvm.dbg.declare(metadata %struct.iovec* %8, metadata !1294, metadata !669), !dbg !1300
  %10 = getelementptr inbounds %struct.iovec, %struct.iovec* %8, i32 0, i32 0, !dbg !1301
  %11 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !1302
  %12 = bitcast %struct.nlmsghdr* %11 to i8*, !dbg !1302
  store i8* %12, i8** %10, align 8, !dbg !1301
  %13 = getelementptr inbounds %struct.iovec, %struct.iovec* %8, i32 0, i32 1, !dbg !1301
  %14 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !1303
  %15 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %14, i32 0, i32 0, !dbg !1304
  %16 = load i32, i32* %15, align 4, !dbg !1304
  %17 = zext i32 %16 to i64, !dbg !1303
  store i64 %17, i64* %13, align 8, !dbg !1301
  call void @llvm.dbg.declare(metadata %struct.msghdr* %9, metadata !1305, metadata !669), !dbg !1318
  %18 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 0, !dbg !1319
  %19 = bitcast %struct.sockaddr_nl* %7 to i8*, !dbg !1320
  store i8* %19, i8** %18, align 8, !dbg !1319
  %20 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 1, !dbg !1319
  store i32 12, i32* %20, align 8, !dbg !1319
  %21 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 2, !dbg !1319
  store %struct.iovec* %8, %struct.iovec** %21, align 8, !dbg !1319
  %22 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 3, !dbg !1319
  store i64 1, i64* %22, align 8, !dbg !1319
  %23 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 4, !dbg !1319
  store i8* null, i8** %23, align 8, !dbg !1319
  %24 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 5, !dbg !1319
  store i64 0, i64* %24, align 8, !dbg !1319
  %25 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 6, !dbg !1319
  store i32 0, i32* %25, align 8, !dbg !1319
  %26 = bitcast %struct.sockaddr_nl* %7 to i8*, !dbg !1321
  call void @llvm.memset.p0i8.i64(i8* %26, i8 0, i64 12, i32 4, i1 false), !dbg !1321
  %27 = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %7, i32 0, i32 0, !dbg !1322
  store i16 16, i16* %27, align 4, !dbg !1323
  %28 = load %struct._nl_handle*, %struct._nl_handle** %4, align 8, !dbg !1324
  %29 = getelementptr inbounds %struct._nl_handle, %struct._nl_handle* %28, i32 0, i32 3, !dbg !1325
  %30 = load i32, i32* %29, align 8, !dbg !1326
  %31 = add i32 %30, 1, !dbg !1326
  store i32 %31, i32* %29, align 8, !dbg !1326
  %32 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !1327
  %33 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %32, i32 0, i32 3, !dbg !1328
  store i32 %31, i32* %33, align 4, !dbg !1329
  %34 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !1330
  %35 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %34, i32 0, i32 2, !dbg !1331
  %36 = load i16, i16* %35, align 2, !dbg !1332
  %37 = zext i16 %36 to i32, !dbg !1332
  %38 = or i32 %37, 4, !dbg !1332
  %39 = trunc i32 %38 to i16, !dbg !1332
  store i16 %39, i16* %35, align 2, !dbg !1332
  %40 = load %struct._nl_handle*, %struct._nl_handle** %4, align 8, !dbg !1333
  %41 = getelementptr inbounds %struct._nl_handle, %struct._nl_handle* %40, i32 0, i32 1, !dbg !1334
  %42 = load i32, i32* %41, align 8, !dbg !1334
  %43 = call i64 @sendmsg(i32 %42, %struct.msghdr* %9, i32 0), !dbg !1335
  store i64 %43, i64* %6, align 8, !dbg !1336
  %44 = load i64, i64* %6, align 8, !dbg !1337
  %45 = icmp slt i64 %44, 0, !dbg !1339
  br i1 %45, label %46, label %57, !dbg !1340

; <label>:46:                                     ; preds = %2
  %47 = load %struct._nl_handle*, %struct._nl_handle** %4, align 8, !dbg !1341
  %48 = getelementptr inbounds %struct._nl_handle, %struct._nl_handle* %47, i32 0, i32 1, !dbg !1343
  %49 = load i32, i32* %48, align 8, !dbg !1343
  %50 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !1344
  %51 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %50, i32 0, i32 1, !dbg !1345
  %52 = load i16, i16* %51, align 4, !dbg !1345
  %53 = zext i16 %52 to i32, !dbg !1344
  %54 = call i32* @__errno_location() #2, !dbg !1346
  %55 = load i32, i32* %54, align 4, !dbg !1347
  %56 = call i8* @strerror(i32 %55) #6, !dbg !1348
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i32 0, i32 0), i32 %49, i32 %53, i8* %56), !dbg !1350
  store i64 -1, i64* %3, align 8, !dbg !1351
  br label %63, !dbg !1351

; <label>:57:                                     ; preds = %2
  %58 = load %struct._nl_handle*, %struct._nl_handle** %4, align 8, !dbg !1352
  %59 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !1353
  %60 = call i32 @netlink_parse_info(i32 (%struct.sockaddr_nl*, %struct.nlmsghdr*)* @netlink_talk_filter, %struct._nl_handle* %58, %struct.nlmsghdr* %59, i1 zeroext false), !dbg !1354
  %61 = sext i32 %60 to i64, !dbg !1354
  store i64 %61, i64* %6, align 8, !dbg !1355
  %62 = load i64, i64* %6, align 8, !dbg !1356
  store i64 %62, i64* %3, align 8, !dbg !1357
  br label %63, !dbg !1357

; <label>:63:                                     ; preds = %57, %46
  %64 = load i64, i64* %3, align 8, !dbg !1358
  ret i64 %64, !dbg !1358
}

declare i64 @sendmsg(i32, %struct.msghdr*, i32) #4

declare void @log_message(i32, i8*, ...) #4

; Function Attrs: nounwind
declare i8* @strerror(i32) #5

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #1

; Function Attrs: nounwind uwtable
define internal i32 @netlink_parse_info(i32 (%struct.sockaddr_nl*, %struct.nlmsghdr*)*, %struct._nl_handle*, %struct.nlmsghdr*, i1 zeroext) #0 !dbg !1359 {
  %5 = alloca i32, align 4
  %6 = alloca i32 (%struct.sockaddr_nl*, %struct.nlmsghdr*)*, align 8
  %7 = alloca %struct._nl_handle*, align 8
  %8 = alloca %struct.nlmsghdr*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.iovec, align 8
  %15 = alloca %struct.sockaddr_nl, align 4
  %16 = alloca %struct.msghdr, align 8
  %17 = alloca %struct.nlmsghdr*, align 8
  %18 = alloca i32
  %19 = alloca %struct.nlmsgerr*, align 8
  store i32 (%struct.sockaddr_nl*, %struct.nlmsghdr*)* %0, i32 (%struct.sockaddr_nl*, %struct.nlmsghdr*)** %6, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.sockaddr_nl*, %struct.nlmsghdr*)** %6, metadata !1366, metadata !669), !dbg !1367
  store %struct._nl_handle* %1, %struct._nl_handle** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._nl_handle** %7, metadata !1368, metadata !669), !dbg !1369
  store %struct.nlmsghdr* %2, %struct.nlmsghdr** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.nlmsghdr** %8, metadata !1370, metadata !669), !dbg !1371
  %20 = zext i1 %3 to i8
  store i8 %20, i8* %9, align 1
  call void @llvm.dbg.declare(metadata i8* %9, metadata !1372, metadata !669), !dbg !1373
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1374, metadata !669), !dbg !1375
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1376, metadata !669), !dbg !1377
  store i32 0, i32* %11, align 4, !dbg !1377
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1378, metadata !669), !dbg !1379
  br label %21, !dbg !1380

; <label>:21:                                     ; preds = %4, %289, %292
  %22 = load i32, i32* @nlmsg_buf_size, align 4, !dbg !1381
  %23 = zext i32 %22 to i64, !dbg !1383
  %24 = call i8* @llvm.stacksave(), !dbg !1383
  store i8* %24, i8** %13, align 8, !dbg !1383
  %25 = alloca i8, i64 %23, align 16, !dbg !1383
  call void @llvm.dbg.declare(metadata i8* %25, metadata !1384, metadata !1388), !dbg !1389
  call void @llvm.dbg.declare(metadata %struct.iovec* %14, metadata !1390, metadata !669), !dbg !1391
  %26 = getelementptr inbounds %struct.iovec, %struct.iovec* %14, i32 0, i32 0, !dbg !1392
  store i8* %25, i8** %26, align 8, !dbg !1392
  %27 = getelementptr inbounds %struct.iovec, %struct.iovec* %14, i32 0, i32 1, !dbg !1392
  store i64 %23, i64* %27, align 8, !dbg !1392
  call void @llvm.dbg.declare(metadata %struct.sockaddr_nl* %15, metadata !1393, metadata !669), !dbg !1394
  call void @llvm.dbg.declare(metadata %struct.msghdr* %16, metadata !1395, metadata !669), !dbg !1396
  %28 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 0, !dbg !1397
  %29 = bitcast %struct.sockaddr_nl* %15 to i8*, !dbg !1398
  store i8* %29, i8** %28, align 8, !dbg !1397
  %30 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 1, !dbg !1397
  store i32 12, i32* %30, align 8, !dbg !1397
  %31 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 2, !dbg !1397
  store %struct.iovec* %14, %struct.iovec** %31, align 8, !dbg !1397
  %32 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 3, !dbg !1397
  store i64 1, i64* %32, align 8, !dbg !1397
  %33 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 4, !dbg !1397
  store i8* null, i8** %33, align 8, !dbg !1397
  %34 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 5, !dbg !1397
  store i64 0, i64* %34, align 8, !dbg !1397
  %35 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 6, !dbg !1397
  store i32 0, i32* %35, align 8, !dbg !1397
  call void @llvm.dbg.declare(metadata %struct.nlmsghdr** %17, metadata !1399, metadata !669), !dbg !1400
  %36 = load %struct._nl_handle*, %struct._nl_handle** %7, align 8, !dbg !1401
  %37 = getelementptr inbounds %struct._nl_handle, %struct._nl_handle* %36, i32 0, i32 1, !dbg !1402
  %38 = load i32, i32* %37, align 8, !dbg !1402
  %39 = call i64 @recvmsg(i32 %38, %struct.msghdr* %16, i32 0), !dbg !1403
  store i64 %39, i64* %10, align 8, !dbg !1404
  %40 = load i64, i64* %10, align 8, !dbg !1405
  %41 = icmp slt i64 %40, 0, !dbg !1407
  br i1 %41, label %42, label %71, !dbg !1408

; <label>:42:                                     ; preds = %21
  %43 = call i32* @__errno_location() #2, !dbg !1409
  %44 = load i32, i32* %43, align 4, !dbg !1412
  %45 = icmp eq i32 %44, 4, !dbg !1413
  br i1 %45, label %46, label %47, !dbg !1414

; <label>:46:                                     ; preds = %42
  store i32 2, i32* %18, align 4
  br label %289, !dbg !1415, !llvm.loop !1416

; <label>:47:                                     ; preds = %42
  %48 = call i32* @__errno_location() #2, !dbg !1417
  %49 = load i32, i32* %48, align 4, !dbg !1419
  %50 = icmp eq i32 %49, 11, !dbg !1420
  br i1 %50, label %55, label %51, !dbg !1421

; <label>:51:                                     ; preds = %47
  %52 = call i32* @__errno_location() #2, !dbg !1422
  %53 = load i32, i32* %52, align 4, !dbg !1424
  %54 = icmp eq i32 %53, 11, !dbg !1425
  br i1 %54, label %55, label %56, !dbg !1426

; <label>:55:                                     ; preds = %51, %47
  store i32 3, i32* %18, align 4
  br label %289, !dbg !1427

; <label>:56:                                     ; preds = %51
  %57 = call i32* @__errno_location() #2, !dbg !1428
  %58 = load i32, i32* %57, align 4, !dbg !1430
  %59 = icmp eq i32 %58, 105, !dbg !1431
  br i1 %59, label %60, label %64, !dbg !1432

; <label>:60:                                     ; preds = %56
  %61 = load %struct._nl_handle*, %struct._nl_handle** %7, align 8, !dbg !1433
  %62 = icmp eq %struct._nl_handle* %61, @nl_kernel, !dbg !1435
  %63 = select i1 %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), !dbg !1433
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i32 0, i32 0), i8* %63), !dbg !1436
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.11, i32 0, i32 0)), !dbg !1437
  br label %70, !dbg !1438

; <label>:64:                                     ; preds = %56
  %65 = load %struct._nl_handle*, %struct._nl_handle** %7, align 8, !dbg !1439
  %66 = icmp eq %struct._nl_handle* %65, @nl_kernel, !dbg !1440
  %67 = select i1 %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), !dbg !1439
  %68 = call i32* @__errno_location() #2, !dbg !1441
  %69 = load i32, i32* %68, align 4, !dbg !1442
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i32 0, i32 0), i8* %67, i32 %69), !dbg !1443
  br label %70

; <label>:70:                                     ; preds = %64, %60
  store i32 2, i32* %18, align 4
  br label %289, !dbg !1445, !llvm.loop !1416

; <label>:71:                                     ; preds = %21
  %72 = load i64, i64* %10, align 8, !dbg !1446
  %73 = icmp eq i64 %72, 0, !dbg !1448
  br i1 %73, label %74, label %75, !dbg !1449

; <label>:74:                                     ; preds = %71
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0)), !dbg !1450
  store i32 -1, i32* %5, align 4, !dbg !1452
  store i32 1, i32* %18, align 4
  br label %289, !dbg !1452

; <label>:75:                                     ; preds = %71
  %76 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 1, !dbg !1453
  %77 = load i32, i32* %76, align 8, !dbg !1453
  %78 = zext i32 %77 to i64, !dbg !1455
  %79 = icmp ne i64 %78, 12, !dbg !1456
  br i1 %79, label %80, label %83, !dbg !1457

; <label>:80:                                     ; preds = %75
  %81 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 1, !dbg !1458
  %82 = load i32, i32* %81, align 8, !dbg !1458
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.14, i32 0, i32 0), i32 %82), !dbg !1460
  store i32 -1, i32* %5, align 4, !dbg !1461
  store i32 1, i32* %18, align 4
  br label %289, !dbg !1461

; <label>:83:                                     ; preds = %75
  %84 = bitcast i8* %25 to %struct.nlmsghdr*, !dbg !1462
  store %struct.nlmsghdr* %84, %struct.nlmsghdr** %17, align 8, !dbg !1464
  br label %85, !dbg !1465

; <label>:85:                                     ; preds = %256, %83
  %86 = load i64, i64* %10, align 8, !dbg !1466
  %87 = icmp uge i64 %86, 16, !dbg !1469
  br i1 %87, label %88, label %101, !dbg !1470

; <label>:88:                                     ; preds = %85
  %89 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8, !dbg !1471
  %90 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %89, i32 0, i32 0, !dbg !1473
  %91 = load i32, i32* %90, align 4, !dbg !1473
  %92 = zext i32 %91 to i64, !dbg !1474
  %93 = icmp uge i64 %92, 16, !dbg !1475
  br i1 %93, label %94, label %101, !dbg !1476

; <label>:94:                                     ; preds = %88
  %95 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8, !dbg !1477
  %96 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %95, i32 0, i32 0, !dbg !1479
  %97 = load i32, i32* %96, align 4, !dbg !1479
  %98 = zext i32 %97 to i64, !dbg !1480
  %99 = load i64, i64* %10, align 8, !dbg !1481
  %100 = icmp ule i64 %98, %99, !dbg !1482
  br label %101

; <label>:101:                                    ; preds = %94, %88, %85
  %102 = phi i1 [ false, %88 ], [ false, %85 ], [ %100, %94 ]
  br i1 %102, label %103, label %277, !dbg !1483

; <label>:103:                                    ; preds = %101
  %104 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8, !dbg !1485
  %105 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %104, i32 0, i32 1, !dbg !1488
  %106 = load i16, i16* %105, align 4, !dbg !1488
  %107 = zext i16 %106 to i32, !dbg !1485
  %108 = icmp eq i32 %107, 3, !dbg !1489
  br i1 %108, label %109, label %111, !dbg !1490

; <label>:109:                                    ; preds = %103
  %110 = load i32, i32* %11, align 4, !dbg !1491
  store i32 %110, i32* %5, align 4, !dbg !1492
  store i32 1, i32* %18, align 4
  br label %289, !dbg !1492

; <label>:111:                                    ; preds = %103
  %112 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8, !dbg !1493
  %113 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %112, i32 0, i32 1, !dbg !1495
  %114 = load i16, i16* %113, align 4, !dbg !1495
  %115 = zext i16 %114 to i32, !dbg !1493
  %116 = icmp eq i32 %115, 2, !dbg !1496
  br i1 %116, label %117, label %216, !dbg !1497

; <label>:117:                                    ; preds = %111
  call void @llvm.dbg.declare(metadata %struct.nlmsgerr** %19, metadata !1498, metadata !669), !dbg !1500
  %118 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8, !dbg !1501
  %119 = bitcast %struct.nlmsghdr* %118 to i8*, !dbg !1502
  %120 = getelementptr inbounds i8, i8* %119, i64 16, !dbg !1503
  %121 = bitcast i8* %120 to %struct.nlmsgerr*, !dbg !1504
  store %struct.nlmsgerr* %121, %struct.nlmsgerr** %19, align 8, !dbg !1500
  %122 = load %struct.nlmsgerr*, %struct.nlmsgerr** %19, align 8, !dbg !1505
  %123 = getelementptr inbounds %struct.nlmsgerr, %struct.nlmsgerr* %122, i32 0, i32 0, !dbg !1507
  %124 = load i32, i32* %123, align 4, !dbg !1507
  %125 = icmp eq i32 %124, 0, !dbg !1508
  br i1 %125, label %126, label %138, !dbg !1509

; <label>:126:                                    ; preds = %117
  %127 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8, !dbg !1510
  %128 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %127, i32 0, i32 2, !dbg !1513
  %129 = load i16, i16* %128, align 2, !dbg !1513
  %130 = zext i16 %129 to i32, !dbg !1510
  %131 = and i32 %130, 2, !dbg !1514
  %132 = icmp ne i32 %131, 0, !dbg !1514
  br i1 %132, label %137, label %133, !dbg !1515

; <label>:133:                                    ; preds = %126
  %134 = load i8, i8* %9, align 1, !dbg !1516
  %135 = trunc i8 %134 to i1, !dbg !1516
  br i1 %135, label %137, label %136, !dbg !1518

; <label>:136:                                    ; preds = %133
  store i32 0, i32* %5, align 4, !dbg !1519
  store i32 1, i32* %18, align 4
  br label %289, !dbg !1519

; <label>:137:                                    ; preds = %133, %126
  br label %256, !dbg !1520

; <label>:138:                                    ; preds = %117
  %139 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8, !dbg !1521
  %140 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %139, i32 0, i32 0, !dbg !1523
  %141 = load i32, i32* %140, align 4, !dbg !1523
  %142 = zext i32 %141 to i64, !dbg !1521
  %143 = icmp ult i64 %142, 36, !dbg !1524
  br i1 %143, label %144, label %145, !dbg !1525

; <label>:144:                                    ; preds = %138
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i32 0, i32 0)), !dbg !1526
  store i32 -1, i32* %5, align 4, !dbg !1528
  store i32 1, i32* %18, align 4
  br label %289, !dbg !1528

; <label>:145:                                    ; preds = %138
  %146 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8, !dbg !1529
  %147 = icmp ne %struct.nlmsghdr* %146, null, !dbg !1529
  br i1 %147, label %148, label %166, !dbg !1531

; <label>:148:                                    ; preds = %145
  %149 = load %struct.nlmsgerr*, %struct.nlmsgerr** %19, align 8, !dbg !1532
  %150 = getelementptr inbounds %struct.nlmsgerr, %struct.nlmsgerr* %149, i32 0, i32 0, !dbg !1534
  %151 = load i32, i32* %150, align 4, !dbg !1534
  %152 = icmp eq i32 %151, -17, !dbg !1535
  br i1 %152, label %153, label %166, !dbg !1536

; <label>:153:                                    ; preds = %148
  %154 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8, !dbg !1537
  %155 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %154, i32 0, i32 1, !dbg !1538
  %156 = load i16, i16* %155, align 4, !dbg !1538
  %157 = zext i16 %156 to i32, !dbg !1537
  %158 = icmp eq i32 %157, 24, !dbg !1539
  br i1 %158, label %165, label %159, !dbg !1540

; <label>:159:                                    ; preds = %153
  %160 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8, !dbg !1541
  %161 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %160, i32 0, i32 1, !dbg !1542
  %162 = load i16, i16* %161, align 4, !dbg !1542
  %163 = zext i16 %162 to i32, !dbg !1541
  %164 = icmp eq i32 %163, 20, !dbg !1543
  br i1 %164, label %165, label %166, !dbg !1544

; <label>:165:                                    ; preds = %159, %153
  store i32 0, i32* %5, align 4, !dbg !1546
  store i32 1, i32* %18, align 4
  br label %289, !dbg !1546

; <label>:166:                                    ; preds = %159, %148, %145
  %167 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8, !dbg !1547
  %168 = icmp ne %struct.nlmsghdr* %167, null, !dbg !1547
  br i1 %168, label %169, label %189, !dbg !1549

; <label>:169:                                    ; preds = %166
  %170 = load %struct.nlmsgerr*, %struct.nlmsgerr** %19, align 8, !dbg !1550
  %171 = getelementptr inbounds %struct.nlmsgerr, %struct.nlmsgerr* %170, i32 0, i32 0, !dbg !1552
  %172 = load i32, i32* %171, align 4, !dbg !1552
  %173 = icmp eq i32 %172, -99, !dbg !1553
  br i1 %173, label %174, label %189, !dbg !1554

; <label>:174:                                    ; preds = %169
  %175 = load %struct.nlmsghdr*, %struct.nlmsghdr** %8, align 8, !dbg !1555
  %176 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %175, i32 0, i32 1, !dbg !1556
  %177 = load i16, i16* %176, align 4, !dbg !1556
  %178 = zext i16 %177 to i32, !dbg !1555
  %179 = icmp eq i32 %178, 21, !dbg !1557
  br i1 %179, label %180, label %189, !dbg !1558

; <label>:180:                                    ; preds = %174
  %181 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8, !dbg !1559
  %182 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %181, i32 0, i32 2, !dbg !1562
  %183 = load i16, i16* %182, align 2, !dbg !1562
  %184 = zext i16 %183 to i32, !dbg !1559
  %185 = and i32 %184, 2, !dbg !1563
  %186 = icmp ne i32 %185, 0, !dbg !1563
  br i1 %186, label %188, label %187, !dbg !1564

; <label>:187:                                    ; preds = %180
  store i32 0, i32* %5, align 4, !dbg !1565
  store i32 1, i32* %18, align 4
  br label %289, !dbg !1565

; <label>:188:                                    ; preds = %180
  br label %256, !dbg !1566

; <label>:189:                                    ; preds = %174, %169, %166
  %190 = load i32, i32* @netlink_error_ignore, align 4, !dbg !1567
  %191 = load %struct.nlmsgerr*, %struct.nlmsgerr** %19, align 8, !dbg !1569
  %192 = getelementptr inbounds %struct.nlmsgerr, %struct.nlmsgerr* %191, i32 0, i32 0, !dbg !1570
  %193 = load i32, i32* %192, align 4, !dbg !1570
  %194 = sub nsw i32 0, %193, !dbg !1571
  %195 = icmp ne i32 %190, %194, !dbg !1572
  br i1 %195, label %196, label %215, !dbg !1573

; <label>:196:                                    ; preds = %189
  %197 = load %struct.nlmsgerr*, %struct.nlmsgerr** %19, align 8, !dbg !1574
  %198 = getelementptr inbounds %struct.nlmsgerr, %struct.nlmsgerr* %197, i32 0, i32 0, !dbg !1575
  %199 = load i32, i32* %198, align 4, !dbg !1575
  %200 = sub nsw i32 0, %199, !dbg !1576
  %201 = call i8* @strerror(i32 %200) #6, !dbg !1577
  %202 = load %struct.nlmsgerr*, %struct.nlmsgerr** %19, align 8, !dbg !1578
  %203 = getelementptr inbounds %struct.nlmsgerr, %struct.nlmsgerr* %202, i32 0, i32 1, !dbg !1579
  %204 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %203, i32 0, i32 1, !dbg !1580
  %205 = load i16, i16* %204, align 4, !dbg !1580
  %206 = zext i16 %205 to i32, !dbg !1578
  %207 = load %struct.nlmsgerr*, %struct.nlmsgerr** %19, align 8, !dbg !1581
  %208 = getelementptr inbounds %struct.nlmsgerr, %struct.nlmsgerr* %207, i32 0, i32 1, !dbg !1582
  %209 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %208, i32 0, i32 3, !dbg !1583
  %210 = load i32, i32* %209, align 4, !dbg !1583
  %211 = load %struct.nlmsgerr*, %struct.nlmsgerr** %19, align 8, !dbg !1584
  %212 = getelementptr inbounds %struct.nlmsgerr, %struct.nlmsgerr* %211, i32 0, i32 1, !dbg !1585
  %213 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %212, i32 0, i32 4, !dbg !1586
  %214 = load i32, i32* %213, align 4, !dbg !1586
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.16, i32 0, i32 0), i8* %201, i32 %206, i32 %210, i32 %214), !dbg !1587
  br label %215, !dbg !1587

; <label>:215:                                    ; preds = %196, %189
  store i32 -1, i32* %5, align 4, !dbg !1588
  store i32 1, i32* %18, align 4
  br label %289, !dbg !1588

; <label>:216:                                    ; preds = %111
  %217 = load i32, i32* @prog_type, align 4, !dbg !1589
  %218 = icmp eq i32 %217, 1, !dbg !1591
  br i1 %218, label %219, label %235, !dbg !1592

; <label>:219:                                    ; preds = %216
  %220 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8, !dbg !1593
  %221 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %220, i32 0, i32 1, !dbg !1594
  %222 = load i16, i16* %221, align 4, !dbg !1594
  %223 = zext i16 %222 to i32, !dbg !1593
  %224 = icmp ne i32 %223, 24, !dbg !1595
  br i1 %224, label %225, label %235, !dbg !1596

; <label>:225:                                    ; preds = %219
  %226 = load %struct._nl_handle*, %struct._nl_handle** %7, align 8, !dbg !1597
  %227 = icmp ne %struct._nl_handle* %226, @nl_cmd, !dbg !1598
  br i1 %227, label %228, label %235, !dbg !1599

; <label>:228:                                    ; preds = %225
  %229 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8, !dbg !1600
  %230 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %229, i32 0, i32 4, !dbg !1602
  %231 = load i32, i32* %230, align 4, !dbg !1602
  %232 = load i32, i32* getelementptr inbounds (%struct._nl_handle, %struct._nl_handle* @nl_cmd, i32 0, i32 2), align 4, !dbg !1603
  %233 = icmp eq i32 %231, %232, !dbg !1604
  br i1 %233, label %234, label %235, !dbg !1605

; <label>:234:                                    ; preds = %228
  br label %256, !dbg !1607

; <label>:235:                                    ; preds = %228, %225, %219, %216
  %236 = load i32 (%struct.sockaddr_nl*, %struct.nlmsghdr*)*, i32 (%struct.sockaddr_nl*, %struct.nlmsghdr*)** %6, align 8, !dbg !1608
  %237 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8, !dbg !1609
  %238 = call i32 %236(%struct.sockaddr_nl* %15, %struct.nlmsghdr* %237), !dbg !1610
  store i32 %238, i32* %12, align 4, !dbg !1611
  %239 = load i32, i32* %12, align 4, !dbg !1612
  %240 = icmp slt i32 %239, 0, !dbg !1614
  br i1 %240, label %241, label %243, !dbg !1615

; <label>:241:                                    ; preds = %235
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i32 0, i32 0)), !dbg !1616
  %242 = load i32, i32* %12, align 4, !dbg !1618
  store i32 %242, i32* %11, align 4, !dbg !1619
  br label %243, !dbg !1620

; <label>:243:                                    ; preds = %241, %235
  %244 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8, !dbg !1621
  %245 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %244, i32 0, i32 2, !dbg !1623
  %246 = load i16, i16* %245, align 2, !dbg !1623
  %247 = zext i16 %246 to i32, !dbg !1621
  %248 = and i32 %247, 2, !dbg !1624
  %249 = icmp ne i32 %248, 0, !dbg !1624
  br i1 %249, label %255, label %250, !dbg !1625

; <label>:250:                                    ; preds = %243
  %251 = load i8, i8* %9, align 1, !dbg !1626
  %252 = trunc i8 %251 to i1, !dbg !1626
  br i1 %252, label %255, label %253, !dbg !1628

; <label>:253:                                    ; preds = %250
  %254 = load i32, i32* %11, align 4, !dbg !1629
  store i32 %254, i32* %5, align 4, !dbg !1630
  store i32 1, i32* %18, align 4
  br label %289, !dbg !1630

; <label>:255:                                    ; preds = %250, %243
  br label %256, !dbg !1631

; <label>:256:                                    ; preds = %255, %234, %188, %137
  %257 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8, !dbg !1632
  %258 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %257, i32 0, i32 0, !dbg !1634
  %259 = load i32, i32* %258, align 4, !dbg !1634
  %260 = add i32 %259, 4, !dbg !1635
  %261 = sub i32 %260, 1, !dbg !1636
  %262 = and i32 %261, -4, !dbg !1637
  %263 = zext i32 %262 to i64, !dbg !1638
  %264 = load i64, i64* %10, align 8, !dbg !1639
  %265 = sub nsw i64 %264, %263, !dbg !1639
  store i64 %265, i64* %10, align 8, !dbg !1639
  %266 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8, !dbg !1632
  %267 = bitcast %struct.nlmsghdr* %266 to i8*, !dbg !1640
  %268 = load %struct.nlmsghdr*, %struct.nlmsghdr** %17, align 8, !dbg !1632
  %269 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %268, i32 0, i32 0, !dbg !1634
  %270 = load i32, i32* %269, align 4, !dbg !1634
  %271 = add i32 %270, 4, !dbg !1635
  %272 = sub i32 %271, 1, !dbg !1636
  %273 = and i32 %272, -4, !dbg !1637
  %274 = zext i32 %273 to i64, !dbg !1634
  %275 = getelementptr inbounds i8, i8* %267, i64 %274, !dbg !1634
  %276 = bitcast i8* %275 to %struct.nlmsghdr*, !dbg !1641
  store %struct.nlmsghdr* %276, %struct.nlmsghdr** %17, align 8, !dbg !1642
  br label %85, !dbg !1643, !llvm.loop !1644

; <label>:277:                                    ; preds = %101
  %278 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 6, !dbg !1646
  %279 = load i32, i32* %278, align 8, !dbg !1646
  %280 = and i32 %279, 32, !dbg !1648
  %281 = icmp ne i32 %280, 0, !dbg !1648
  br i1 %281, label %282, label %283, !dbg !1649

; <label>:282:                                    ; preds = %277
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i32 0, i32 0)), !dbg !1650
  store i32 2, i32* %18, align 4
  br label %289, !dbg !1652, !llvm.loop !1416

; <label>:283:                                    ; preds = %277
  %284 = load i64, i64* %10, align 8, !dbg !1653
  %285 = icmp ne i64 %284, 0, !dbg !1653
  br i1 %285, label %286, label %288, !dbg !1655

; <label>:286:                                    ; preds = %283
  %287 = load i64, i64* %10, align 8, !dbg !1656
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0), i64 %287), !dbg !1658
  store i32 -1, i32* %5, align 4, !dbg !1659
  store i32 1, i32* %18, align 4
  br label %289, !dbg !1659

; <label>:288:                                    ; preds = %283
  store i32 0, i32* %18, align 4, !dbg !1660
  br label %289, !dbg !1660

; <label>:289:                                    ; preds = %288, %286, %282, %253, %215, %187, %165, %144, %136, %109, %80, %74, %70, %55, %46
  %290 = load i8*, i8** %13, align 8, !dbg !1661
  call void @llvm.stackrestore(i8* %290), !dbg !1661
  %291 = load i32, i32* %18, align 4
  switch i32 %291, label %297 [
    i32 0, label %292
    i32 2, label %21
    i32 3, label %293
    i32 1, label %295
  ]

; <label>:292:                                    ; preds = %289
  br label %21, !dbg !1663, !llvm.loop !1416

; <label>:293:                                    ; preds = %289
  %294 = load i32, i32* %11, align 4, !dbg !1664
  store i32 %294, i32* %5, align 4, !dbg !1665
  br label %295, !dbg !1665

; <label>:295:                                    ; preds = %293, %289
  %296 = load i32, i32* %5, align 4, !dbg !1666
  ret i32 %296, !dbg !1666

; <label>:297:                                    ; preds = %289
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @netlink_talk_filter(%struct.sockaddr_nl*, %struct.nlmsghdr*) #0 !dbg !1667 {
  %3 = alloca %struct.sockaddr_nl*, align 8
  %4 = alloca %struct.nlmsghdr*, align 8
  store %struct.sockaddr_nl* %0, %struct.sockaddr_nl** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr_nl** %3, metadata !1668, metadata !669), !dbg !1669
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.nlmsghdr** %4, metadata !1670, metadata !669), !dbg !1671
  %5 = load %struct.nlmsghdr*, %struct.nlmsghdr** %4, align 8, !dbg !1672
  %6 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %5, i32 0, i32 1, !dbg !1673
  %7 = load i16, i16* %6, align 4, !dbg !1673
  %8 = zext i16 %7 to i32, !dbg !1672
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i32 0, i32 0), i32 %8), !dbg !1674
  ret i32 0, !dbg !1675
}

; Function Attrs: nounwind uwtable
define void @process_if_status_change(%struct._interface*) #0 !dbg !1676 {
  %2 = alloca %struct._interface*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca %struct._element*, align 8
  %5 = alloca %struct._tracking_vrrp*, align 8
  %6 = alloca i8, align 1
  store %struct._interface* %0, %struct._interface** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._interface** %2, metadata !1728, metadata !669), !dbg !1729
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !1730, metadata !669), !dbg !1909
  call void @llvm.dbg.declare(metadata %struct._element** %4, metadata !1910, metadata !669), !dbg !1912
  call void @llvm.dbg.declare(metadata %struct._tracking_vrrp** %5, metadata !1913, metadata !669), !dbg !1923
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1924, metadata !669), !dbg !1925
  %7 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !1926
  %8 = getelementptr inbounds %struct._interface, %struct._interface* %7, i32 0, i32 4, !dbg !1927
  %9 = load i32, i32* %8, align 8, !dbg !1927
  %10 = and i32 %9, 65, !dbg !1928
  %11 = icmp eq i32 %10, 65, !dbg !1926
  %12 = zext i1 %11 to i8, !dbg !1925
  store i8 %12, i8* %6, align 1, !dbg !1925
  %13 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !1929
  %14 = getelementptr inbounds %struct._interface, %struct._interface* %13, i32 0, i32 26, !dbg !1931
  %15 = load %struct._list*, %struct._list** %14, align 8, !dbg !1931
  %16 = icmp ne %struct._list* %15, null, !dbg !1932
  br i1 %16, label %17, label %31, !dbg !1932

; <label>:17:                                     ; preds = %1
  %18 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !1933
  %19 = getelementptr inbounds %struct._interface, %struct._interface* %18, i32 0, i32 26, !dbg !1935
  %20 = load %struct._list*, %struct._list** %19, align 8, !dbg !1935
  %21 = icmp ne %struct._list* %20, null, !dbg !1936
  br i1 %21, label %23, label %22, !dbg !1937

; <label>:22:                                     ; preds = %17
  br label %29, !dbg !1938

; <label>:23:                                     ; preds = %17
  %24 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !1940
  %25 = getelementptr inbounds %struct._interface, %struct._interface* %24, i32 0, i32 26, !dbg !1942
  %26 = load %struct._list*, %struct._list** %25, align 8, !dbg !1942
  %27 = getelementptr inbounds %struct._list, %struct._list* %26, i32 0, i32 0, !dbg !1943
  %28 = load %struct._element*, %struct._element** %27, align 8, !dbg !1943
  br label %29, !dbg !1944

; <label>:29:                                     ; preds = %23, %22
  %30 = phi %struct._element* [ null, %22 ], [ %28, %23 ], !dbg !1945
  br label %32, !dbg !1947

; <label>:31:                                     ; preds = %1
  br label %32, !dbg !1948

; <label>:32:                                     ; preds = %31, %29
  %33 = phi %struct._element* [ %30, %29 ], [ null, %31 ], !dbg !1950
  store %struct._element* %33, %struct._element** %4, align 8, !dbg !1952
  br label %34, !dbg !1953

; <label>:34:                                     ; preds = %89, %32
  %35 = load %struct._element*, %struct._element** %4, align 8, !dbg !1954
  %36 = icmp ne %struct._element* %35, null, !dbg !1957
  br i1 %36, label %37, label %42, !dbg !1958

; <label>:37:                                     ; preds = %34
  %38 = load %struct._element*, %struct._element** %4, align 8, !dbg !1959
  %39 = getelementptr inbounds %struct._element, %struct._element* %38, i32 0, i32 2, !dbg !1961
  %40 = load i8*, i8** %39, align 8, !dbg !1961
  %41 = bitcast i8* %40 to %struct._tracking_vrrp*, !dbg !1962
  store %struct._tracking_vrrp* %41, %struct._tracking_vrrp** %5, align 8, !dbg !1963
  br label %42

; <label>:42:                                     ; preds = %37, %34
  %43 = phi i1 [ false, %34 ], [ true, %37 ]
  br i1 %43, label %44, label %93, !dbg !1964

; <label>:44:                                     ; preds = %42
  %45 = load %struct._tracking_vrrp*, %struct._tracking_vrrp** %5, align 8, !dbg !1966
  %46 = getelementptr inbounds %struct._tracking_vrrp, %struct._tracking_vrrp* %45, i32 0, i32 1, !dbg !1968
  %47 = load %struct._vrrp_t*, %struct._vrrp_t** %46, align 8, !dbg !1968
  store %struct._vrrp_t* %47, %struct._vrrp_t** %3, align 8, !dbg !1969
  %48 = load %struct._tracking_vrrp*, %struct._tracking_vrrp** %5, align 8, !dbg !1970
  %49 = getelementptr inbounds %struct._tracking_vrrp, %struct._tracking_vrrp* %48, i32 0, i32 0, !dbg !1972
  %50 = load i32, i32* %49, align 8, !dbg !1972
  %51 = icmp eq i32 %50, 255, !dbg !1973
  br i1 %51, label %52, label %53, !dbg !1974

; <label>:52:                                     ; preds = %44
  br label %89, !dbg !1975

; <label>:53:                                     ; preds = %44
  %54 = load %struct._tracking_vrrp*, %struct._tracking_vrrp** %5, align 8, !dbg !1977
  %55 = getelementptr inbounds %struct._tracking_vrrp, %struct._tracking_vrrp* %54, i32 0, i32 0, !dbg !1979
  %56 = load i32, i32* %55, align 8, !dbg !1979
  %57 = icmp ne i32 %56, 0, !dbg !1977
  br i1 %57, label %58, label %81, !dbg !1980

; <label>:58:                                     ; preds = %53
  %59 = load i8, i8* %6, align 1, !dbg !1981
  %60 = trunc i8 %59 to i1, !dbg !1981
  br i1 %60, label %61, label %70, !dbg !1984

; <label>:61:                                     ; preds = %58
  %62 = load %struct._tracking_vrrp*, %struct._tracking_vrrp** %5, align 8, !dbg !1985
  %63 = getelementptr inbounds %struct._tracking_vrrp, %struct._tracking_vrrp* %62, i32 0, i32 0, !dbg !1986
  %64 = load i32, i32* %63, align 8, !dbg !1986
  %65 = call i32 @abs(i32 %64) #2, !dbg !1987
  %66 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1988
  %67 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %66, i32 0, i32 39, !dbg !1989
  %68 = load i32, i32* %67, align 8, !dbg !1990
  %69 = add nsw i32 %68, %65, !dbg !1990
  store i32 %69, i32* %67, align 8, !dbg !1990
  br label %79, !dbg !1988

; <label>:70:                                     ; preds = %58
  %71 = load %struct._tracking_vrrp*, %struct._tracking_vrrp** %5, align 8, !dbg !1991
  %72 = getelementptr inbounds %struct._tracking_vrrp, %struct._tracking_vrrp* %71, i32 0, i32 0, !dbg !1992
  %73 = load i32, i32* %72, align 8, !dbg !1992
  %74 = call i32 @abs(i32 %73) #2, !dbg !1993
  %75 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1994
  %76 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %75, i32 0, i32 39, !dbg !1995
  %77 = load i32, i32* %76, align 8, !dbg !1996
  %78 = sub nsw i32 %77, %74, !dbg !1996
  store i32 %78, i32* %76, align 8, !dbg !1996
  br label %79

; <label>:79:                                     ; preds = %70, %61
  %80 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1997
  call void @vrrp_set_effective_priority(%struct._vrrp_t* %80), !dbg !1998
  br label %89, !dbg !1999

; <label>:81:                                     ; preds = %53
  %82 = load i8, i8* %6, align 1, !dbg !2000
  %83 = trunc i8 %82 to i1, !dbg !2000
  br i1 %83, label %84, label %86, !dbg !2002

; <label>:84:                                     ; preds = %81
  %85 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2003
  call void @try_up_instance(%struct._vrrp_t* %85, i1 zeroext false), !dbg !2004
  br label %88, !dbg !2004

; <label>:86:                                     ; preds = %81
  %87 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2005
  call void @down_instance(%struct._vrrp_t* %87), !dbg !2006
  br label %88

; <label>:88:                                     ; preds = %86, %84
  br label %89, !dbg !2007

; <label>:89:                                     ; preds = %88, %79, %52
  %90 = load %struct._element*, %struct._element** %4, align 8, !dbg !2008
  %91 = getelementptr inbounds %struct._element, %struct._element* %90, i32 0, i32 0, !dbg !2010
  %92 = load %struct._element*, %struct._element** %91, align 8, !dbg !2010
  store %struct._element* %92, %struct._element** %4, align 8, !dbg !2011
  br label %34, !dbg !2012, !llvm.loop !2013

; <label>:93:                                     ; preds = %42
  ret void, !dbg !2015
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #1

declare void @vrrp_set_effective_priority(%struct._vrrp_t*) #4

declare void @try_up_instance(%struct._vrrp_t*, i1 zeroext) #4

declare void @down_instance(%struct._vrrp_t*) #4

; Function Attrs: nounwind uwtable
define i32 @netlink_interface_lookup(i8*) #0 !dbg !2016 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2019, metadata !669), !dbg !2020
  %4 = load i8*, i8** %3, align 8, !dbg !2021
  %5 = call i32 @netlink_request(%struct._nl_handle* @nl_cmd, i8 zeroext 17, i16 zeroext 18, i8* %4), !dbg !2023
  %6 = icmp slt i32 %5, 0, !dbg !2024
  br i1 %6, label %7, label %8, !dbg !2025

; <label>:7:                                      ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !2026
  br label %10, !dbg !2026

; <label>:8:                                      ; preds = %1
  %9 = call i32 @netlink_parse_info(i32 (%struct.sockaddr_nl*, %struct.nlmsghdr*)* @netlink_if_link_filter, %struct._nl_handle* @nl_cmd, %struct.nlmsghdr* null, i1 zeroext false), !dbg !2027
  store i32 %9, i32* %2, align 4, !dbg !2028
  br label %10, !dbg !2028

; <label>:10:                                     ; preds = %8, %7
  %11 = load i32, i32* %2, align 4, !dbg !2029
  ret i32 %11, !dbg !2029
}

; Function Attrs: nounwind uwtable
define internal i32 @netlink_request(%struct._nl_handle*, i8 zeroext, i16 zeroext, i8*) #0 !dbg !2030 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._nl_handle*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i16, align 2
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.sockaddr_nl, align 4
  %12 = alloca %struct.anon.2, align 4
  %13 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store %struct._nl_handle* %0, %struct._nl_handle** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._nl_handle** %6, metadata !2033, metadata !669), !dbg !2034
  store i8 %1, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !2035, metadata !669), !dbg !2036
  store i16 %2, i16* %8, align 2
  call void @llvm.dbg.declare(metadata i16* %8, metadata !2037, metadata !669), !dbg !2038
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2039, metadata !669), !dbg !2040
  call void @llvm.dbg.declare(metadata i64* %10, metadata !2041, metadata !669), !dbg !2042
  call void @llvm.dbg.declare(metadata %struct.sockaddr_nl* %11, metadata !2043, metadata !669), !dbg !2044
  call void @llvm.dbg.declare(metadata %struct.anon.2* %12, metadata !2045, metadata !669), !dbg !2062
  %14 = bitcast %struct.sockaddr_nl* %11 to i8*, !dbg !2063
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 12, i32 4, i1 false), !dbg !2063
  %15 = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %11, i32 0, i32 0, !dbg !2064
  store i16 16, i16* %15, align 4, !dbg !2065
  %16 = bitcast %struct.anon.2* %12 to i8*, !dbg !2066
  call void @llvm.memset.p0i8.i64(i8* %16, i8 0, i64 96, i32 4, i1 false), !dbg !2066
  %17 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %12, i32 0, i32 0, !dbg !2067
  %18 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %17, i32 0, i32 0, !dbg !2068
  store i32 32, i32* %18, align 4, !dbg !2069
  %19 = load i16, i16* %8, align 2, !dbg !2070
  %20 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %12, i32 0, i32 0, !dbg !2071
  %21 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %20, i32 0, i32 1, !dbg !2072
  store i16 %19, i16* %21, align 4, !dbg !2073
  %22 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %12, i32 0, i32 0, !dbg !2074
  %23 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %22, i32 0, i32 2, !dbg !2075
  store i16 1, i16* %23, align 2, !dbg !2076
  %24 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %12, i32 0, i32 0, !dbg !2077
  %25 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %24, i32 0, i32 4, !dbg !2078
  store i32 0, i32* %25, align 4, !dbg !2079
  %26 = load %struct._nl_handle*, %struct._nl_handle** %6, align 8, !dbg !2080
  %27 = getelementptr inbounds %struct._nl_handle, %struct._nl_handle* %26, i32 0, i32 3, !dbg !2081
  %28 = load i32, i32* %27, align 8, !dbg !2082
  %29 = add i32 %28, 1, !dbg !2082
  store i32 %29, i32* %27, align 8, !dbg !2082
  %30 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %12, i32 0, i32 0, !dbg !2083
  %31 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %30, i32 0, i32 3, !dbg !2084
  store i32 %29, i32* %31, align 4, !dbg !2085
  %32 = load i8, i8* %7, align 1, !dbg !2086
  %33 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %12, i32 0, i32 1, !dbg !2087
  %34 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %33, i32 0, i32 0, !dbg !2088
  store i8 %32, i8* %34, align 4, !dbg !2089
  %35 = load i8*, i8** %9, align 8, !dbg !2090
  %36 = icmp ne i8* %35, null, !dbg !2090
  br i1 %36, label %37, label %44, !dbg !2092

; <label>:37:                                     ; preds = %4
  %38 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %12, i32 0, i32 0, !dbg !2093
  %39 = load i8*, i8** %9, align 8, !dbg !2094
  %40 = load i8*, i8** %9, align 8, !dbg !2095
  %41 = call i64 @strlen(i8* %40) #9, !dbg !2096
  %42 = add i64 %41, 1, !dbg !2097
  %43 = call i32 @addattr_l(%struct.nlmsghdr* %38, i64 96, i16 zeroext 3, i8* %39, i64 %42), !dbg !2098
  br label %51, !dbg !2100

; <label>:44:                                     ; preds = %4
  %45 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %12, i32 0, i32 0, !dbg !2101
  %46 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %45, i32 0, i32 2, !dbg !2102
  %47 = load i16, i16* %46, align 2, !dbg !2103
  %48 = zext i16 %47 to i32, !dbg !2103
  %49 = or i32 %48, 768, !dbg !2103
  %50 = trunc i32 %49 to i16, !dbg !2103
  store i16 %50, i16* %46, align 2, !dbg !2103
  br label %51

; <label>:51:                                     ; preds = %44, %37
  %52 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %12, i32 0, i32 0, !dbg !2104
  %53 = call i32 @addattr32(%struct.nlmsghdr* %52, i64 96, i16 zeroext 29, i32 8), !dbg !2105
  %54 = load %struct._nl_handle*, %struct._nl_handle** %6, align 8, !dbg !2106
  %55 = getelementptr inbounds %struct._nl_handle, %struct._nl_handle* %54, i32 0, i32 1, !dbg !2107
  %56 = load i32, i32* %55, align 8, !dbg !2107
  %57 = bitcast %struct.anon.2* %12 to i8*, !dbg !2108
  %58 = bitcast %union.__CONST_SOCKADDR_ARG* %13 to %struct.sockaddr**, !dbg !2109
  %59 = bitcast %struct.sockaddr_nl* %11 to %struct.sockaddr*, !dbg !2109
  store %struct.sockaddr* %59, %struct.sockaddr** %58, align 8, !dbg !2109
  %60 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %13, i32 0, i32 0, !dbg !2110
  %61 = load %struct.sockaddr*, %struct.sockaddr** %60, align 8, !dbg !2110
  %62 = call i64 @sendto(i32 %56, i8* %57, i64 96, i32 0, %struct.sockaddr* %61, i32 12), !dbg !2110
  store i64 %62, i64* %10, align 8, !dbg !2111
  %63 = load i64, i64* %10, align 8, !dbg !2112
  %64 = icmp slt i64 %63, 0, !dbg !2114
  br i1 %64, label %65, label %69, !dbg !2115

; <label>:65:                                     ; preds = %51
  %66 = call i32* @__errno_location() #2, !dbg !2116
  %67 = load i32, i32* %66, align 4, !dbg !2118
  %68 = call i8* @strerror(i32 %67) #6, !dbg !2119
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i32 0, i32 0), i8* %68), !dbg !2121
  store i32 -1, i32* %5, align 4, !dbg !2122
  br label %70, !dbg !2122

; <label>:69:                                     ; preds = %51
  store i32 0, i32* %5, align 4, !dbg !2123
  br label %70, !dbg !2123

; <label>:70:                                     ; preds = %69, %65
  %71 = load i32, i32* %5, align 4, !dbg !2124
  ret i32 %71, !dbg !2124
}

; Function Attrs: nounwind uwtable
define internal i32 @netlink_if_link_filter(%struct.sockaddr_nl*, %struct.nlmsghdr*) #0 !dbg !2125 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_nl*, align 8
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca %struct.ifinfomsg*, align 8
  %7 = alloca [40 x %struct.rtattr*], align 16
  %8 = alloca %struct._interface*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.sockaddr_nl* %0, %struct.sockaddr_nl** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr_nl** %4, metadata !2126, metadata !669), !dbg !2127
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.nlmsghdr** %5, metadata !2128, metadata !669), !dbg !2129
  call void @llvm.dbg.declare(metadata %struct.ifinfomsg** %6, metadata !2130, metadata !669), !dbg !2132
  call void @llvm.dbg.declare(metadata [40 x %struct.rtattr*]* %7, metadata !2133, metadata !669), !dbg !2137
  call void @llvm.dbg.declare(metadata %struct._interface** %8, metadata !2138, metadata !669), !dbg !2139
  call void @llvm.dbg.declare(metadata i64* %9, metadata !2140, metadata !669), !dbg !2141
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2142, metadata !669), !dbg !2143
  %11 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !2144
  %12 = bitcast %struct.nlmsghdr* %11 to i8*, !dbg !2145
  %13 = getelementptr inbounds i8, i8* %12, i64 16, !dbg !2146
  %14 = bitcast i8* %13 to %struct.ifinfomsg*, !dbg !2144
  store %struct.ifinfomsg* %14, %struct.ifinfomsg** %6, align 8, !dbg !2147
  %15 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !2148
  %16 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %15, i32 0, i32 1, !dbg !2150
  %17 = load i16, i16* %16, align 4, !dbg !2150
  %18 = zext i16 %17 to i32, !dbg !2148
  %19 = icmp ne i32 %18, 16, !dbg !2151
  br i1 %19, label %20, label %21, !dbg !2152

; <label>:20:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !2153
  br label %69, !dbg !2153

; <label>:21:                                     ; preds = %2
  %22 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !2154
  %23 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %22, i32 0, i32 0, !dbg !2156
  %24 = load i32, i32* %23, align 4, !dbg !2156
  %25 = zext i32 %24 to i64, !dbg !2154
  %26 = icmp ult i64 %25, 32, !dbg !2157
  br i1 %26, label %27, label %28, !dbg !2158

; <label>:27:                                     ; preds = %21
  store i32 -1, i32* %3, align 4, !dbg !2159
  br label %69, !dbg !2159

; <label>:28:                                     ; preds = %21
  %29 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !2160
  %30 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %29, i32 0, i32 0, !dbg !2161
  %31 = load i32, i32* %30, align 4, !dbg !2161
  %32 = zext i32 %31 to i64, !dbg !2160
  %33 = sub i64 %32, 32, !dbg !2162
  store i64 %33, i64* %9, align 8, !dbg !2163
  %34 = getelementptr inbounds [40 x %struct.rtattr*], [40 x %struct.rtattr*]* %7, i32 0, i32 0, !dbg !2164
  %35 = bitcast %struct.rtattr** %34 to i8*, !dbg !2164
  call void @llvm.memset.p0i8.i64(i8* %35, i8 0, i64 320, i32 16, i1 false), !dbg !2164
  %36 = getelementptr inbounds [40 x %struct.rtattr*], [40 x %struct.rtattr*]* %7, i32 0, i32 0, !dbg !2165
  %37 = load %struct.ifinfomsg*, %struct.ifinfomsg** %6, align 8, !dbg !2166
  %38 = bitcast %struct.ifinfomsg* %37 to i8*, !dbg !2167
  %39 = getelementptr inbounds i8, i8* %38, i64 16, !dbg !2168
  %40 = bitcast i8* %39 to %struct.rtattr*, !dbg !2169
  %41 = load i64, i64* %9, align 8, !dbg !2170
  call void @parse_rtattr(%struct.rtattr** %36, i32 39, %struct.rtattr* %40, i64 %41), !dbg !2171
  %42 = getelementptr inbounds [40 x %struct.rtattr*], [40 x %struct.rtattr*]* %7, i64 0, i64 3, !dbg !2172
  %43 = load %struct.rtattr*, %struct.rtattr** %42, align 8, !dbg !2172
  %44 = icmp eq %struct.rtattr* %43, null, !dbg !2174
  br i1 %44, label %45, label %46, !dbg !2175

; <label>:45:                                     ; preds = %28
  store i32 -1, i32* %3, align 4, !dbg !2176
  br label %69, !dbg !2176

; <label>:46:                                     ; preds = %28
  %47 = getelementptr inbounds [40 x %struct.rtattr*], [40 x %struct.rtattr*]* %7, i64 0, i64 3, !dbg !2177
  %48 = load %struct.rtattr*, %struct.rtattr** %47, align 8, !dbg !2177
  %49 = bitcast %struct.rtattr* %48 to i8*, !dbg !2178
  %50 = getelementptr inbounds i8, i8* %49, i64 4, !dbg !2179
  store i8* %50, i8** %10, align 8, !dbg !2180
  %51 = load i8*, i8** %10, align 8, !dbg !2181
  %52 = call %struct._interface* @if_get_by_ifname(i8* %51, i32 3), !dbg !2182
  store %struct._interface* %52, %struct._interface** %8, align 8, !dbg !2183
  %53 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !2184
  %54 = getelementptr inbounds %struct._interface, %struct._interface* %53, i32 0, i32 1, !dbg !2186
  %55 = load i32, i32* %54, align 8, !dbg !2186
  %56 = icmp ne i32 %55, 0, !dbg !2184
  br i1 %56, label %57, label %62, !dbg !2187

; <label>:57:                                     ; preds = %46
  %58 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !2188
  %59 = load %struct.ifinfomsg*, %struct.ifinfomsg** %6, align 8, !dbg !2190
  %60 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %59, i32 0, i32 4, !dbg !2191
  %61 = load i32, i32* %60, align 4, !dbg !2191
  call void @update_interface_flags(%struct._interface* %58, i32 %61), !dbg !2192
  store i32 0, i32* %3, align 4, !dbg !2193
  br label %69, !dbg !2193

; <label>:62:                                     ; preds = %46
  %63 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !2194
  %64 = getelementptr inbounds [40 x %struct.rtattr*], [40 x %struct.rtattr*]* %7, i32 0, i32 0, !dbg !2196
  %65 = load %struct.ifinfomsg*, %struct.ifinfomsg** %6, align 8, !dbg !2197
  %66 = call zeroext i1 @netlink_if_link_populate(%struct._interface* %63, %struct.rtattr** %64, %struct.ifinfomsg* %65), !dbg !2198
  br i1 %66, label %68, label %67, !dbg !2199

; <label>:67:                                     ; preds = %62
  store i32 -1, i32* %3, align 4, !dbg !2200
  br label %69, !dbg !2200

; <label>:68:                                     ; preds = %62
  store i32 0, i32* %3, align 4, !dbg !2201
  br label %69, !dbg !2201

; <label>:69:                                     ; preds = %68, %67, %57, %45, %27, %20
  %70 = load i32, i32* %3, align 4, !dbg !2202
  ret i32 %70, !dbg !2202
}

; Function Attrs: nounwind uwtable
define void @kernel_netlink_poll() #0 !dbg !2203 {
  %1 = load i32, i32* getelementptr inbounds (%struct._nl_handle, %struct._nl_handle* @nl_kernel, i32 0, i32 1), align 8, !dbg !2204
  %2 = icmp ne i32 %1, 0, !dbg !2206
  br i1 %2, label %4, label %3, !dbg !2207

; <label>:3:                                      ; preds = %0
  br label %6, !dbg !2208

; <label>:4:                                      ; preds = %0
  %5 = call i32 @netlink_parse_info(i32 (%struct.sockaddr_nl*, %struct.nlmsghdr*)* @netlink_broadcast_filter, %struct._nl_handle* @nl_kernel, %struct.nlmsghdr* null, i1 zeroext true), !dbg !2209
  br label %6, !dbg !2210

; <label>:6:                                      ; preds = %4, %3
  ret void, !dbg !2211
}

; Function Attrs: nounwind uwtable
define internal i32 @netlink_broadcast_filter(%struct.sockaddr_nl*, %struct.nlmsghdr*) #0 !dbg !2213 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_nl*, align 8
  %5 = alloca %struct.nlmsghdr*, align 8
  store %struct.sockaddr_nl* %0, %struct.sockaddr_nl** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr_nl** %4, metadata !2214, metadata !669), !dbg !2215
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.nlmsghdr** %5, metadata !2216, metadata !669), !dbg !2217
  %6 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !2218
  %7 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %6, i32 0, i32 1, !dbg !2219
  %8 = load i16, i16* %7, align 4, !dbg !2219
  %9 = zext i16 %8 to i32, !dbg !2218
  switch i32 %9, label %30 [
    i32 16, label %10
    i32 17, label %10
    i32 20, label %18
    i32 21, label %18
    i32 24, label %22
    i32 25, label %22
    i32 32, label %26
    i32 33, label %26
  ], !dbg !2220

; <label>:10:                                     ; preds = %2, %2
  %11 = load i32, i32* @prog_type, align 4, !dbg !2221
  %12 = icmp eq i32 %11, 1, !dbg !2224
  br i1 %12, label %13, label %17, !dbg !2225

; <label>:13:                                     ; preds = %10
  %14 = load %struct.sockaddr_nl*, %struct.sockaddr_nl** %4, align 8, !dbg !2226
  %15 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !2227
  %16 = call i32 @netlink_link_filter(%struct.sockaddr_nl* %14, %struct.nlmsghdr* %15), !dbg !2228
  store i32 %16, i32* %3, align 4, !dbg !2229
  br label %36, !dbg !2229

; <label>:17:                                     ; preds = %10
  br label %35, !dbg !2230

; <label>:18:                                     ; preds = %2, %2
  %19 = load %struct.sockaddr_nl*, %struct.sockaddr_nl** %4, align 8, !dbg !2231
  %20 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !2232
  %21 = call i32 @netlink_if_address_filter(%struct.sockaddr_nl* %19, %struct.nlmsghdr* %20), !dbg !2233
  store i32 %21, i32* %3, align 4, !dbg !2234
  br label %36, !dbg !2234

; <label>:22:                                     ; preds = %2, %2
  %23 = load %struct.sockaddr_nl*, %struct.sockaddr_nl** %4, align 8, !dbg !2235
  %24 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !2236
  %25 = call i32 @netlink_route_filter(%struct.sockaddr_nl* %23, %struct.nlmsghdr* %24), !dbg !2237
  store i32 %25, i32* %3, align 4, !dbg !2238
  br label %36, !dbg !2238

; <label>:26:                                     ; preds = %2, %2
  %27 = load %struct.sockaddr_nl*, %struct.sockaddr_nl** %4, align 8, !dbg !2239
  %28 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !2240
  %29 = call i32 @netlink_rule_filter(%struct.sockaddr_nl* %27, %struct.nlmsghdr* %28), !dbg !2241
  store i32 %29, i32* %3, align 4, !dbg !2242
  br label %36, !dbg !2242

; <label>:30:                                     ; preds = %2
  %31 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !2243
  %32 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %31, i32 0, i32 1, !dbg !2244
  %33 = load i16, i16* %32, align 4, !dbg !2244
  %34 = zext i16 %33 to i32, !dbg !2243
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.30, i32 0, i32 0), i32 %34), !dbg !2245
  br label %35, !dbg !2246

; <label>:35:                                     ; preds = %30, %17
  store i32 0, i32* %3, align 4, !dbg !2247
  br label %36, !dbg !2247

; <label>:36:                                     ; preds = %35, %26, %22, %18, %13
  %37 = load i32, i32* %3, align 4, !dbg !2248
  ret i32 %37, !dbg !2248
}

; Function Attrs: nounwind uwtable
define void @kernel_netlink_set_recv_bufs() #0 !dbg !2249 {
  %1 = load i32, i32* @prog_type, align 4, !dbg !2250
  %2 = icmp eq i32 %1, 1, !dbg !2252
  br i1 %2, label %3, label %20, !dbg !2253

; <label>:3:                                      ; preds = %0
  %4 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2254
  %5 = getelementptr inbounds %struct._data, %struct._data* %4, i32 0, i32 59, !dbg !2256
  %6 = load i32, i32* %5, align 8, !dbg !2256
  %7 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2257
  %8 = getelementptr inbounds %struct._data, %struct._data* %7, i32 0, i32 60, !dbg !2258
  %9 = load i8, i8* %8, align 4, !dbg !2258
  %10 = trunc i8 %9 to i1, !dbg !2258
  %11 = call i32 @netlink_set_rx_buf_size(%struct._nl_handle* @nl_kernel, i32 %6, i1 zeroext %10), !dbg !2259
  %12 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2260
  %13 = getelementptr inbounds %struct._data, %struct._data* %12, i32 0, i32 57, !dbg !2261
  %14 = load i32, i32* %13, align 8, !dbg !2261
  %15 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2262
  %16 = getelementptr inbounds %struct._data, %struct._data* %15, i32 0, i32 58, !dbg !2263
  %17 = load i8, i8* %16, align 4, !dbg !2263
  %18 = trunc i8 %17 to i1, !dbg !2263
  %19 = call i32 @netlink_set_rx_buf_size(%struct._nl_handle* @nl_cmd, i32 %14, i1 zeroext %18), !dbg !2264
  br label %20, !dbg !2265

; <label>:20:                                     ; preds = %3, %0
  %21 = load i32, i32* @prog_type, align 4, !dbg !2266
  %22 = icmp eq i32 %21, 2, !dbg !2268
  br i1 %22, label %23, label %32, !dbg !2269

; <label>:23:                                     ; preds = %20
  %24 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2270
  %25 = getelementptr inbounds %struct._data, %struct._data* %24, i32 0, i32 63, !dbg !2271
  %26 = load i32, i32* %25, align 8, !dbg !2271
  %27 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2272
  %28 = getelementptr inbounds %struct._data, %struct._data* %27, i32 0, i32 64, !dbg !2273
  %29 = load i8, i8* %28, align 4, !dbg !2273
  %30 = trunc i8 %29 to i1, !dbg !2273
  %31 = call i32 @netlink_set_rx_buf_size(%struct._nl_handle* @nl_kernel, i32 %26, i1 zeroext %30), !dbg !2274
  br label %32, !dbg !2274

; <label>:32:                                     ; preds = %23, %20
  ret void, !dbg !2275
}

; Function Attrs: nounwind uwtable
define internal i32 @netlink_set_rx_buf_size(%struct._nl_handle*, i32, i1 zeroext) #0 !dbg !2276 {
  %4 = alloca %struct._nl_handle*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct._nl_handle* %0, %struct._nl_handle** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._nl_handle** %4, metadata !2279, metadata !669), !dbg !2280
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2281, metadata !669), !dbg !2282
  %8 = zext i1 %2 to i8
  store i8 %8, i8* %6, align 1
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2283, metadata !669), !dbg !2284
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2285, metadata !669), !dbg !2286
  %9 = load i32, i32* %5, align 4, !dbg !2287
  %10 = icmp ne i32 %9, 0, !dbg !2287
  br i1 %10, label %12, label %11, !dbg !2289

; <label>:11:                                     ; preds = %3
  store i32 65536, i32* %5, align 4, !dbg !2290
  br label %12, !dbg !2291

; <label>:12:                                     ; preds = %11, %3
  %13 = load i8, i8* %6, align 1, !dbg !2292
  %14 = trunc i8 %13 to i1, !dbg !2292
  br i1 %14, label %15, label %26, !dbg !2294

; <label>:15:                                     ; preds = %12
  %16 = load %struct._nl_handle*, %struct._nl_handle** %4, align 8, !dbg !2295
  %17 = getelementptr inbounds %struct._nl_handle, %struct._nl_handle* %16, i32 0, i32 1, !dbg !2298
  %18 = load i32, i32* %17, align 8, !dbg !2298
  %19 = bitcast i32* %5 to i8*, !dbg !2299
  %20 = call i32 @setsockopt(i32 %18, i32 1, i32 33, i8* %19, i32 4) #6, !dbg !2300
  store i32 %20, i32* %7, align 4, !dbg !2301
  %21 = icmp slt i32 %20, 0, !dbg !2302
  br i1 %21, label %22, label %25, !dbg !2303

; <label>:22:                                     ; preds = %15
  %23 = call i32* @__errno_location() #2, !dbg !2304
  %24 = load i32, i32* %23, align 4, !dbg !2305
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.42, i32 0, i32 0), i32 %24), !dbg !2306
  br label %25, !dbg !2308

; <label>:25:                                     ; preds = %22, %15
  br label %36, !dbg !2309

; <label>:26:                                     ; preds = %12
  %27 = load %struct._nl_handle*, %struct._nl_handle** %4, align 8, !dbg !2310
  %28 = getelementptr inbounds %struct._nl_handle, %struct._nl_handle* %27, i32 0, i32 0, !dbg !2314
  %29 = load %struct.nl_sock*, %struct.nl_sock** %28, align 8, !dbg !2314
  %30 = load i32, i32* %5, align 4, !dbg !2315
  %31 = call i32 @nl_socket_set_buffer_size(%struct.nl_sock* %29, i32 %30, i32 0), !dbg !2316
  store i32 %31, i32* %7, align 4, !dbg !2317
  %32 = icmp ne i32 %31, 0, !dbg !2317
  br i1 %32, label %33, label %35, !dbg !2318

; <label>:33:                                     ; preds = %26
  %34 = load i32, i32* %7, align 4, !dbg !2319
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.43, i32 0, i32 0), i32 %34), !dbg !2320
  br label %35, !dbg !2320

; <label>:35:                                     ; preds = %33, %26
  br label %36

; <label>:36:                                     ; preds = %35, %25
  %37 = load i32, i32* %7, align 4, !dbg !2321
  ret i32 %37, !dbg !2322
}

; Function Attrs: nounwind uwtable
define void @kernel_netlink_close_monitor() #0 !dbg !2323 {
  call void @netlink_close(%struct._nl_handle* @nl_kernel), !dbg !2324
  ret void, !dbg !2325
}

; Function Attrs: nounwind uwtable
define internal void @netlink_close(%struct._nl_handle*) #0 !dbg !2326 {
  %2 = alloca %struct._nl_handle*, align 8
  store %struct._nl_handle* %0, %struct._nl_handle** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._nl_handle** %2, metadata !2329, metadata !669), !dbg !2330
  %3 = load %struct._nl_handle*, %struct._nl_handle** %2, align 8, !dbg !2331
  %4 = icmp ne %struct._nl_handle* %3, null, !dbg !2331
  br i1 %4, label %6, label %5, !dbg !2333

; <label>:5:                                      ; preds = %1
  br label %31, !dbg !2334

; <label>:6:                                      ; preds = %1
  %7 = load %struct._nl_handle*, %struct._nl_handle** %2, align 8, !dbg !2335
  %8 = getelementptr inbounds %struct._nl_handle, %struct._nl_handle* %7, i32 0, i32 4, !dbg !2337
  %9 = load %struct._thread*, %struct._thread** %8, align 8, !dbg !2337
  %10 = icmp ne %struct._thread* %9, null, !dbg !2335
  br i1 %10, label %11, label %17, !dbg !2338

; <label>:11:                                     ; preds = %6
  %12 = load %struct._nl_handle*, %struct._nl_handle** %2, align 8, !dbg !2339
  %13 = getelementptr inbounds %struct._nl_handle, %struct._nl_handle* %12, i32 0, i32 4, !dbg !2341
  %14 = load %struct._thread*, %struct._thread** %13, align 8, !dbg !2341
  call void @thread_cancel(%struct._thread* %14), !dbg !2342
  %15 = load %struct._nl_handle*, %struct._nl_handle** %2, align 8, !dbg !2343
  %16 = getelementptr inbounds %struct._nl_handle, %struct._nl_handle* %15, i32 0, i32 4, !dbg !2344
  store %struct._thread* null, %struct._thread** %16, align 8, !dbg !2345
  br label %17, !dbg !2346

; <label>:17:                                     ; preds = %11, %6
  %18 = load %struct._nl_handle*, %struct._nl_handle** %2, align 8, !dbg !2347
  %19 = getelementptr inbounds %struct._nl_handle, %struct._nl_handle* %18, i32 0, i32 0, !dbg !2350
  %20 = load %struct.nl_sock*, %struct.nl_sock** %19, align 8, !dbg !2350
  %21 = icmp ne %struct.nl_sock* %20, null, !dbg !2347
  br i1 %21, label %22, label %28, !dbg !2351

; <label>:22:                                     ; preds = %17
  %23 = load %struct._nl_handle*, %struct._nl_handle** %2, align 8, !dbg !2352
  %24 = getelementptr inbounds %struct._nl_handle, %struct._nl_handle* %23, i32 0, i32 0, !dbg !2354
  %25 = load %struct.nl_sock*, %struct.nl_sock** %24, align 8, !dbg !2354
  call void @nl_socket_free(%struct.nl_sock* %25), !dbg !2355
  %26 = load %struct._nl_handle*, %struct._nl_handle** %2, align 8, !dbg !2356
  %27 = getelementptr inbounds %struct._nl_handle, %struct._nl_handle* %26, i32 0, i32 0, !dbg !2357
  store %struct.nl_sock* null, %struct.nl_sock** %27, align 8, !dbg !2358
  br label %28, !dbg !2359

; <label>:28:                                     ; preds = %22, %17
  %29 = load %struct._nl_handle*, %struct._nl_handle** %2, align 8, !dbg !2360
  %30 = getelementptr inbounds %struct._nl_handle, %struct._nl_handle* %29, i32 0, i32 1, !dbg !2361
  store i32 -1, i32* %30, align 8, !dbg !2362
  br label %31, !dbg !2363

; <label>:31:                                     ; preds = %28, %5
  ret void, !dbg !2364
}

; Function Attrs: nounwind uwtable
define void @kernel_netlink_close_cmd() #0 !dbg !2366 {
  call void @netlink_close(%struct._nl_handle* @nl_cmd), !dbg !2367
  ret void, !dbg !2368
}

; Function Attrs: nounwind uwtable
define void @kernel_netlink_close() #0 !dbg !2369 {
  call void @kernel_netlink_close_monitor(), !dbg !2370
  call void @kernel_netlink_close_cmd(), !dbg !2371
  ret void, !dbg !2372
}

; Function Attrs: nounwind uwtable
define void @kernel_netlink_init() #0 !dbg !2373 {
  %1 = load i32, i32* getelementptr inbounds (%struct._nl_handle, %struct._nl_handle* @nl_kernel, i32 0, i32 1), align 8, !dbg !2374
  %2 = icmp sgt i32 %1, 0, !dbg !2376
  br i1 %2, label %3, label %7, !dbg !2377

; <label>:3:                                      ; preds = %0
  %4 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !2378
  %5 = load i32, i32* getelementptr inbounds (%struct._nl_handle, %struct._nl_handle* @nl_kernel, i32 0, i32 1), align 8, !dbg !2380
  %6 = call %struct._thread* @thread_add_read(%struct._thread_master* %4, i32 (%struct._thread*)* @kernel_netlink, i8* bitcast (%struct._nl_handle* @nl_kernel to i8*), i32 %5, i64 -1), !dbg !2381
  store %struct._thread* %6, %struct._thread** getelementptr inbounds (%struct._nl_handle, %struct._nl_handle* @nl_kernel, i32 0, i32 4), align 8, !dbg !2382
  br label %77, !dbg !2383

; <label>:7:                                      ; preds = %0
  %8 = load i32, i32* @prog_type, align 4, !dbg !2384
  %9 = icmp eq i32 %8, 1, !dbg !2386
  br i1 %9, label %10, label %19, !dbg !2387

; <label>:10:                                     ; preds = %7
  %11 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2388
  %12 = getelementptr inbounds %struct._data, %struct._data* %11, i32 0, i32 59, !dbg !2389
  %13 = load i32, i32* %12, align 8, !dbg !2389
  %14 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2390
  %15 = getelementptr inbounds %struct._data, %struct._data* %14, i32 0, i32 60, !dbg !2391
  %16 = load i8, i8* %15, align 4, !dbg !2391
  %17 = trunc i8 %16 to i1, !dbg !2391
  %18 = call i32 (%struct._nl_handle*, i32, i1, i32, i32, ...) @netlink_socket(%struct._nl_handle* @nl_kernel, i32 %13, i1 zeroext %17, i32 2048, i32 1, i32 5, i32 9, i32 0), !dbg !2392
  br label %19, !dbg !2392

; <label>:19:                                     ; preds = %10, %7
  %20 = load i32, i32* @prog_type, align 4, !dbg !2393
  %21 = icmp eq i32 %20, 2, !dbg !2395
  br i1 %21, label %22, label %31, !dbg !2396

; <label>:22:                                     ; preds = %19
  %23 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2397
  %24 = getelementptr inbounds %struct._data, %struct._data* %23, i32 0, i32 63, !dbg !2398
  %25 = load i32, i32* %24, align 8, !dbg !2398
  %26 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2399
  %27 = getelementptr inbounds %struct._data, %struct._data* %26, i32 0, i32 64, !dbg !2400
  %28 = load i8, i8* %27, align 4, !dbg !2400
  %29 = trunc i8 %28 to i1, !dbg !2400
  %30 = call i32 (%struct._nl_handle*, i32, i1, i32, i32, ...) @netlink_socket(%struct._nl_handle* @nl_kernel, i32 %25, i1 zeroext %29, i32 2048, i32 5, i32 9, i32 0), !dbg !2401
  br label %31, !dbg !2401

; <label>:31:                                     ; preds = %22, %19
  %32 = load i32, i32* getelementptr inbounds (%struct._nl_handle, %struct._nl_handle* @nl_kernel, i32 0, i32 1), align 8, !dbg !2402
  %33 = icmp sgt i32 %32, 0, !dbg !2404
  br i1 %33, label %34, label %38, !dbg !2405

; <label>:34:                                     ; preds = %31
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0)), !dbg !2406
  %35 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !2408
  %36 = load i32, i32* getelementptr inbounds (%struct._nl_handle, %struct._nl_handle* @nl_kernel, i32 0, i32 1), align 8, !dbg !2409
  %37 = call %struct._thread* @thread_add_read(%struct._thread_master* %35, i32 (%struct._thread*)* @kernel_netlink, i8* bitcast (%struct._nl_handle* @nl_kernel to i8*), i32 %36, i64 -1), !dbg !2410
  store %struct._thread* %37, %struct._thread** getelementptr inbounds (%struct._nl_handle, %struct._nl_handle* @nl_kernel, i32 0, i32 4), align 8, !dbg !2411
  br label %39, !dbg !2412

; <label>:38:                                     ; preds = %31
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i32 0, i32 0)), !dbg !2413
  br label %39

; <label>:39:                                     ; preds = %38, %34
  %40 = load i32, i32* @prog_type, align 4, !dbg !2414
  %41 = icmp eq i32 %40, 1, !dbg !2416
  br i1 %41, label %42, label %51, !dbg !2417

; <label>:42:                                     ; preds = %39
  %43 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2418
  %44 = getelementptr inbounds %struct._data, %struct._data* %43, i32 0, i32 57, !dbg !2419
  %45 = load i32, i32* %44, align 8, !dbg !2419
  %46 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2420
  %47 = getelementptr inbounds %struct._data, %struct._data* %46, i32 0, i32 58, !dbg !2421
  %48 = load i8, i8* %47, align 4, !dbg !2421
  %49 = trunc i8 %48 to i1, !dbg !2421
  %50 = call i32 (%struct._nl_handle*, i32, i1, i32, i32, ...) @netlink_socket(%struct._nl_handle* @nl_cmd, i32 %45, i1 zeroext %49, i32 0, i32 0), !dbg !2422
  br label %51, !dbg !2422

; <label>:51:                                     ; preds = %42, %39
  %52 = load i32, i32* @prog_type, align 4, !dbg !2423
  %53 = icmp eq i32 %52, 2, !dbg !2425
  br i1 %53, label %54, label %63, !dbg !2426

; <label>:54:                                     ; preds = %51
  %55 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2427
  %56 = getelementptr inbounds %struct._data, %struct._data* %55, i32 0, i32 61, !dbg !2428
  %57 = load i32, i32* %56, align 8, !dbg !2428
  %58 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2429
  %59 = getelementptr inbounds %struct._data, %struct._data* %58, i32 0, i32 62, !dbg !2430
  %60 = load i8, i8* %59, align 4, !dbg !2430
  %61 = trunc i8 %60 to i1, !dbg !2430
  %62 = call i32 (%struct._nl_handle*, i32, i1, i32, i32, ...) @netlink_socket(%struct._nl_handle* @nl_cmd, i32 %57, i1 zeroext %61, i32 0, i32 0), !dbg !2431
  br label %63, !dbg !2431

; <label>:63:                                     ; preds = %54, %51
  %64 = load i32, i32* getelementptr inbounds (%struct._nl_handle, %struct._nl_handle* @nl_cmd, i32 0, i32 1), align 8, !dbg !2432
  %65 = icmp sgt i32 %64, 0, !dbg !2434
  br i1 %65, label %66, label %67, !dbg !2435

; <label>:66:                                     ; preds = %63
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i32 0, i32 0)), !dbg !2436
  br label %68, !dbg !2436

; <label>:67:                                     ; preds = %63
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i32 0, i32 0)), !dbg !2437
  br label %68

; <label>:68:                                     ; preds = %67, %66
  %69 = load i32, i32* @prog_type, align 4, !dbg !2438
  %70 = icmp eq i32 %69, 1, !dbg !2440
  br i1 %70, label %71, label %72, !dbg !2441

; <label>:71:                                     ; preds = %68
  call void @init_interface_queue(), !dbg !2442
  br label %72, !dbg !2442

; <label>:72:                                     ; preds = %71, %68
  %73 = call i32 @netlink_address_lookup(), !dbg !2443
  %74 = load i32, i32* @prog_type, align 4, !dbg !2444
  %75 = icmp eq i32 %74, 2, !dbg !2446
  br i1 %75, label %76, label %77, !dbg !2447

; <label>:76:                                     ; preds = %72
  call void @kernel_netlink_close_cmd(), !dbg !2448
  br label %77, !dbg !2448

; <label>:77:                                     ; preds = %3, %76, %72
  ret void, !dbg !2449
}

declare %struct._thread* @thread_add_read(%struct._thread_master*, i32 (%struct._thread*)*, i8*, i32, i64) #4

; Function Attrs: nounwind uwtable
define internal i32 @kernel_netlink(%struct._thread*) #0 !dbg !2450 {
  %2 = alloca %struct._thread*, align 8
  %3 = alloca %struct._nl_handle*, align 8
  store %struct._thread* %0, %struct._thread** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %2, metadata !2453, metadata !669), !dbg !2454
  call void @llvm.dbg.declare(metadata %struct._nl_handle** %3, metadata !2455, metadata !669), !dbg !2456
  %4 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !2457
  %5 = getelementptr inbounds %struct._thread, %struct._thread* %4, i32 0, i32 4, !dbg !2458
  %6 = load i8*, i8** %5, align 8, !dbg !2458
  %7 = bitcast i8* %6 to %struct._nl_handle*, !dbg !2459
  store %struct._nl_handle* %7, %struct._nl_handle** %3, align 8, !dbg !2456
  %8 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !2460
  %9 = getelementptr inbounds %struct._thread, %struct._thread* %8, i32 0, i32 1, !dbg !2462
  %10 = load i32, i32* %9, align 8, !dbg !2462
  %11 = icmp ne i32 %10, 9, !dbg !2463
  br i1 %11, label %12, label %15, !dbg !2464

; <label>:12:                                     ; preds = %1
  %13 = load %struct._nl_handle*, %struct._nl_handle** %3, align 8, !dbg !2465
  %14 = call i32 @netlink_parse_info(i32 (%struct.sockaddr_nl*, %struct.nlmsghdr*)* @netlink_broadcast_filter, %struct._nl_handle* %13, %struct.nlmsghdr* null, i1 zeroext true), !dbg !2466
  br label %15, !dbg !2466

; <label>:15:                                     ; preds = %12, %1
  %16 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !2467
  %17 = load %struct._nl_handle*, %struct._nl_handle** %3, align 8, !dbg !2468
  %18 = bitcast %struct._nl_handle* %17 to i8*, !dbg !2468
  %19 = load %struct._nl_handle*, %struct._nl_handle** %3, align 8, !dbg !2469
  %20 = getelementptr inbounds %struct._nl_handle, %struct._nl_handle* %19, i32 0, i32 1, !dbg !2470
  %21 = load i32, i32* %20, align 8, !dbg !2470
  %22 = call %struct._thread* @thread_add_read(%struct._thread_master* %16, i32 (%struct._thread*)* @kernel_netlink, i8* %18, i32 %21, i64 -1), !dbg !2471
  %23 = load %struct._nl_handle*, %struct._nl_handle** %3, align 8, !dbg !2472
  %24 = getelementptr inbounds %struct._nl_handle, %struct._nl_handle* %23, i32 0, i32 4, !dbg !2473
  store %struct._thread* %22, %struct._thread** %24, align 8, !dbg !2474
  ret i32 0, !dbg !2475
}

; Function Attrs: nounwind uwtable
define internal i32 @netlink_socket(%struct._nl_handle*, i32, i1 zeroext, i32, i32, ...) #0 !dbg !2476 {
  %6 = alloca i32, align 4
  %7 = alloca %struct._nl_handle*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._nl_handle* %0, %struct._nl_handle** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._nl_handle** %7, metadata !2479, metadata !669), !dbg !2480
  store i32 %1, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2481, metadata !669), !dbg !2482
  %14 = zext i1 %2 to i8
  store i8 %14, i8* %9, align 1
  call void @llvm.dbg.declare(metadata i8* %9, metadata !2483, metadata !669), !dbg !2484
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2485, metadata !669), !dbg !2486
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2487, metadata !669), !dbg !2488
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2489, metadata !669), !dbg !2490
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %13, metadata !2491, metadata !669), !dbg !2503
  %15 = load %struct._nl_handle*, %struct._nl_handle** %7, align 8, !dbg !2504
  %16 = bitcast %struct._nl_handle* %15 to i8*, !dbg !2505
  call void @llvm.memset.p0i8.i64(i8* %16, i8 0, i64 32, i32 8, i1 false), !dbg !2505
  %17 = call %struct.nl_sock* @nl_socket_alloc(), !dbg !2506
  %18 = load %struct._nl_handle*, %struct._nl_handle** %7, align 8, !dbg !2508
  %19 = getelementptr inbounds %struct._nl_handle, %struct._nl_handle* %18, i32 0, i32 0, !dbg !2509
  store %struct.nl_sock* %17, %struct.nl_sock** %19, align 8, !dbg !2510
  %20 = load %struct._nl_handle*, %struct._nl_handle** %7, align 8, !dbg !2511
  %21 = getelementptr inbounds %struct._nl_handle, %struct._nl_handle* %20, i32 0, i32 0, !dbg !2513
  %22 = load %struct.nl_sock*, %struct.nl_sock** %21, align 8, !dbg !2513
  %23 = icmp eq %struct.nl_sock* %22, null, !dbg !2514
  br i1 %23, label %24, label %25, !dbg !2515

; <label>:24:                                     ; preds = %5
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.44, i32 0, i32 0)), !dbg !2516
  store i32 -1, i32* %6, align 4, !dbg !2518
  br label %130, !dbg !2518

; <label>:25:                                     ; preds = %5
  %26 = load %struct._nl_handle*, %struct._nl_handle** %7, align 8, !dbg !2519
  %27 = getelementptr inbounds %struct._nl_handle, %struct._nl_handle* %26, i32 0, i32 0, !dbg !2520
  %28 = load %struct.nl_sock*, %struct.nl_sock** %27, align 8, !dbg !2520
  %29 = call i32 @nl_connect(%struct.nl_sock* %28, i32 0), !dbg !2521
  store i32 %29, i32* %12, align 4, !dbg !2522
  %30 = load i32, i32* %12, align 4, !dbg !2523
  %31 = icmp ne i32 %30, 0, !dbg !2525
  br i1 %31, label %32, label %34, !dbg !2526

; <label>:32:                                     ; preds = %25
  %33 = load i32, i32* %12, align 4, !dbg !2527
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.45, i32 0, i32 0), i32 %33), !dbg !2529
  store i32 -1, i32* %6, align 4, !dbg !2530
  br label %130, !dbg !2530

; <label>:34:                                     ; preds = %25
  %35 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %13, i32 0, i32 0, !dbg !2531
  %36 = bitcast %struct.__va_list_tag* %35 to i8*, !dbg !2531
  call void @llvm.va_start(i8* %36), !dbg !2531
  br label %37, !dbg !2532

; <label>:37:                                     ; preds = %74, %34
  %38 = load i32, i32* %11, align 4, !dbg !2533
  %39 = icmp ne i32 %38, 0, !dbg !2535
  br i1 %39, label %40, label %77, !dbg !2536

; <label>:40:                                     ; preds = %37
  %41 = load i32, i32* %11, align 4, !dbg !2537
  %42 = icmp slt i32 %41, 0, !dbg !2540
  br i1 %42, label %43, label %46, !dbg !2541

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %13, i32 0, i32 0, !dbg !2542
  %45 = bitcast %struct.__va_list_tag* %44 to i8*, !dbg !2542
  call void @llvm.va_end(i8* %45), !dbg !2542
  store i32 -1, i32* %6, align 4, !dbg !2544
  br label %130, !dbg !2544

; <label>:46:                                     ; preds = %40
  %47 = load %struct._nl_handle*, %struct._nl_handle** %7, align 8, !dbg !2545
  %48 = getelementptr inbounds %struct._nl_handle, %struct._nl_handle* %47, i32 0, i32 0, !dbg !2547
  %49 = load %struct.nl_sock*, %struct.nl_sock** %48, align 8, !dbg !2547
  %50 = load i32, i32* %11, align 4, !dbg !2548
  %51 = call i32 @nl_socket_add_membership(%struct.nl_sock* %49, i32 %50), !dbg !2549
  store i32 %51, i32* %12, align 4, !dbg !2550
  %52 = icmp ne i32 %51, 0, !dbg !2550
  br i1 %52, label %53, label %58, !dbg !2551

; <label>:53:                                     ; preds = %46
  %54 = load i32, i32* %11, align 4, !dbg !2552
  %55 = load i32, i32* %12, align 4, !dbg !2554
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i32 0, i32 0), i32 %54, i32 %55), !dbg !2555
  %56 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %13, i32 0, i32 0, !dbg !2556
  %57 = bitcast %struct.__va_list_tag* %56 to i8*, !dbg !2556
  call void @llvm.va_end(i8* %57), !dbg !2556
  store i32 -1, i32* %6, align 4, !dbg !2557
  br label %130, !dbg !2557

; <label>:58:                                     ; preds = %46
  %59 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %13, i32 0, i32 0, !dbg !2558
  %60 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %59, i32 0, i32 0, !dbg !2558
  %61 = load i32, i32* %60, align 16, !dbg !2558
  %62 = icmp ule i32 %61, 40, !dbg !2558
  br i1 %62, label %63, label %69, !dbg !2558

; <label>:63:                                     ; preds = %58
  %64 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %59, i32 0, i32 3, !dbg !2559
  %65 = load i8*, i8** %64, align 16, !dbg !2559
  %66 = getelementptr i8, i8* %65, i32 %61, !dbg !2559
  %67 = bitcast i8* %66 to i32*, !dbg !2559
  %68 = add i32 %61, 8, !dbg !2559
  store i32 %68, i32* %60, align 16, !dbg !2559
  br label %74, !dbg !2559

; <label>:69:                                     ; preds = %58
  %70 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %59, i32 0, i32 2, !dbg !2561
  %71 = load i8*, i8** %70, align 8, !dbg !2561
  %72 = bitcast i8* %71 to i32*, !dbg !2561
  %73 = getelementptr i8, i8* %71, i32 8, !dbg !2561
  store i8* %73, i8** %70, align 8, !dbg !2561
  br label %74, !dbg !2561

; <label>:74:                                     ; preds = %69, %63
  %75 = phi i32* [ %67, %63 ], [ %72, %69 ], !dbg !2563
  %76 = load i32, i32* %75, align 4, !dbg !2563
  store i32 %76, i32* %11, align 4, !dbg !2565
  br label %37, !dbg !2566, !llvm.loop !2568

; <label>:77:                                     ; preds = %37
  %78 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %13, i32 0, i32 0, !dbg !2569
  %79 = bitcast %struct.__va_list_tag* %78 to i8*, !dbg !2569
  call void @llvm.va_end(i8* %79), !dbg !2569
  %80 = load i32, i32* %10, align 4, !dbg !2570
  %81 = and i32 %80, 2048, !dbg !2572
  %82 = icmp ne i32 %81, 0, !dbg !2572
  br i1 %82, label %83, label %92, !dbg !2573

; <label>:83:                                     ; preds = %77
  %84 = load %struct._nl_handle*, %struct._nl_handle** %7, align 8, !dbg !2574
  %85 = getelementptr inbounds %struct._nl_handle, %struct._nl_handle* %84, i32 0, i32 0, !dbg !2577
  %86 = load %struct.nl_sock*, %struct.nl_sock** %85, align 8, !dbg !2577
  %87 = call i32 @nl_socket_set_nonblocking(%struct.nl_sock* %86), !dbg !2578
  store i32 %87, i32* %12, align 4, !dbg !2579
  %88 = icmp ne i32 %87, 0, !dbg !2579
  br i1 %88, label %89, label %91, !dbg !2580

; <label>:89:                                     ; preds = %83
  %90 = load i32, i32* %12, align 4, !dbg !2581
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.46, i32 0, i32 0), i32 %90), !dbg !2583
  store i32 -1, i32* %6, align 4, !dbg !2584
  br label %130, !dbg !2584

; <label>:91:                                     ; preds = %83
  br label %92, !dbg !2585

; <label>:92:                                     ; preds = %91, %77
  %93 = load %struct._nl_handle*, %struct._nl_handle** %7, align 8, !dbg !2586
  %94 = getelementptr inbounds %struct._nl_handle, %struct._nl_handle* %93, i32 0, i32 0, !dbg !2587
  %95 = load %struct.nl_sock*, %struct.nl_sock** %94, align 8, !dbg !2587
  %96 = call i32 @nl_socket_get_local_port(%struct.nl_sock* %95), !dbg !2588
  %97 = load %struct._nl_handle*, %struct._nl_handle** %7, align 8, !dbg !2589
  %98 = getelementptr inbounds %struct._nl_handle, %struct._nl_handle* %97, i32 0, i32 2, !dbg !2590
  store i32 %96, i32* %98, align 4, !dbg !2591
  %99 = load %struct._nl_handle*, %struct._nl_handle** %7, align 8, !dbg !2592
  %100 = getelementptr inbounds %struct._nl_handle, %struct._nl_handle* %99, i32 0, i32 0, !dbg !2593
  %101 = load %struct.nl_sock*, %struct.nl_sock** %100, align 8, !dbg !2593
  %102 = call i32 @nl_socket_get_fd(%struct.nl_sock* %101), !dbg !2594
  %103 = load %struct._nl_handle*, %struct._nl_handle** %7, align 8, !dbg !2595
  %104 = getelementptr inbounds %struct._nl_handle, %struct._nl_handle* %103, i32 0, i32 1, !dbg !2596
  store i32 %102, i32* %104, align 8, !dbg !2597
  %105 = load %struct._nl_handle*, %struct._nl_handle** %7, align 8, !dbg !2598
  %106 = getelementptr inbounds %struct._nl_handle, %struct._nl_handle* %105, i32 0, i32 1, !dbg !2599
  %107 = load i32, i32* %106, align 8, !dbg !2599
  %108 = load %struct._nl_handle*, %struct._nl_handle** %7, align 8, !dbg !2600
  %109 = getelementptr inbounds %struct._nl_handle, %struct._nl_handle* %108, i32 0, i32 1, !dbg !2601
  %110 = load i32, i32* %109, align 8, !dbg !2601
  %111 = call i32 (i32, i32, ...) @fcntl(i32 %110, i32 1), !dbg !2602
  %112 = or i32 %111, 1, !dbg !2603
  %113 = call i32 (i32, i32, ...) @fcntl(i32 %107, i32 2, i32 %112), !dbg !2604
  %114 = call i64 @time(i64* null) #6, !dbg !2605
  %115 = trunc i64 %114 to i32, !dbg !2606
  %116 = load %struct._nl_handle*, %struct._nl_handle** %7, align 8, !dbg !2607
  %117 = getelementptr inbounds %struct._nl_handle, %struct._nl_handle* %116, i32 0, i32 3, !dbg !2608
  store i32 %115, i32* %117, align 8, !dbg !2609
  %118 = load %struct._nl_handle*, %struct._nl_handle** %7, align 8, !dbg !2610
  %119 = getelementptr inbounds %struct._nl_handle, %struct._nl_handle* %118, i32 0, i32 1, !dbg !2612
  %120 = load i32, i32* %119, align 8, !dbg !2612
  %121 = icmp slt i32 %120, 0, !dbg !2613
  br i1 %121, label %122, label %123, !dbg !2614

; <label>:122:                                    ; preds = %92
  store i32 -1, i32* %6, align 4, !dbg !2615
  br label %130, !dbg !2615

; <label>:123:                                    ; preds = %92
  %124 = load %struct._nl_handle*, %struct._nl_handle** %7, align 8, !dbg !2616
  %125 = load i32, i32* %8, align 4, !dbg !2617
  %126 = load i8, i8* %9, align 1, !dbg !2618
  %127 = trunc i8 %126 to i1, !dbg !2618
  %128 = call i32 @netlink_set_rx_buf_size(%struct._nl_handle* %124, i32 %125, i1 zeroext %127), !dbg !2619
  store i32 %128, i32* %12, align 4, !dbg !2620
  %129 = load i32, i32* %12, align 4, !dbg !2621
  store i32 %129, i32* %6, align 4, !dbg !2622
  br label %130, !dbg !2622

; <label>:130:                                    ; preds = %123, %122, %89, %53, %43, %32, %24
  %131 = load i32, i32* %6, align 4, !dbg !2623
  ret i32 %131, !dbg !2623
}

declare void @init_interface_queue() #4

; Function Attrs: nounwind uwtable
define internal i32 @netlink_address_lookup() #0 !dbg !2624 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !2627, metadata !669), !dbg !2628
  %3 = call i32 @netlink_request(%struct._nl_handle* @nl_cmd, i8 zeroext 2, i16 zeroext 22, i8* null), !dbg !2629
  %4 = icmp slt i32 %3, 0, !dbg !2631
  br i1 %4, label %5, label %6, !dbg !2632

; <label>:5:                                      ; preds = %0
  store i32 -1, i32* %1, align 4, !dbg !2633
  br label %17, !dbg !2633

; <label>:6:                                      ; preds = %0
  %7 = call i32 @netlink_parse_info(i32 (%struct.sockaddr_nl*, %struct.nlmsghdr*)* @netlink_if_address_filter, %struct._nl_handle* @nl_cmd, %struct.nlmsghdr* null, i1 zeroext false), !dbg !2634
  store i32 %7, i32* %2, align 4, !dbg !2636
  %8 = icmp ne i32 %7, 0, !dbg !2636
  br i1 %8, label %9, label %11, !dbg !2637

; <label>:9:                                      ; preds = %6
  %10 = load i32, i32* %2, align 4, !dbg !2638
  store i32 %10, i32* %1, align 4, !dbg !2639
  br label %17, !dbg !2639

; <label>:11:                                     ; preds = %6
  %12 = call i32 @netlink_request(%struct._nl_handle* @nl_cmd, i8 zeroext 10, i16 zeroext 22, i8* null), !dbg !2640
  %13 = icmp slt i32 %12, 0, !dbg !2642
  br i1 %13, label %14, label %15, !dbg !2643

; <label>:14:                                     ; preds = %11
  store i32 -1, i32* %1, align 4, !dbg !2644
  br label %17, !dbg !2644

; <label>:15:                                     ; preds = %11
  %16 = call i32 @netlink_parse_info(i32 (%struct.sockaddr_nl*, %struct.nlmsghdr*)* @netlink_if_address_filter, %struct._nl_handle* @nl_cmd, %struct.nlmsghdr* null, i1 zeroext false), !dbg !2645
  store i32 %16, i32* %1, align 4, !dbg !2646
  br label %17, !dbg !2646

; <label>:17:                                     ; preds = %15, %14, %9, %5
  %18 = load i32, i32* %1, align 4, !dbg !2647
  ret i32 %18, !dbg !2647
}

; Function Attrs: nounwind uwtable
define void @kernel_netlink_read_interfaces() #0 !dbg !2648 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !2649, metadata !669), !dbg !2650
  %2 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2651
  %3 = getelementptr inbounds %struct._data, %struct._data* %2, i32 0, i32 57, !dbg !2652
  %4 = load i32, i32* %3, align 8, !dbg !2652
  %5 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2653
  %6 = getelementptr inbounds %struct._data, %struct._data* %5, i32 0, i32 58, !dbg !2654
  %7 = load i8, i8* %6, align 4, !dbg !2654
  %8 = trunc i8 %7 to i1, !dbg !2654
  %9 = call i32 (%struct._nl_handle*, i32, i1, i32, i32, ...) @netlink_socket(%struct._nl_handle* @nl_cmd, i32 %4, i1 zeroext %8, i32 0, i32 0), !dbg !2655
  %10 = load i32, i32* getelementptr inbounds (%struct._nl_handle, %struct._nl_handle* @nl_cmd, i32 0, i32 1), align 8, !dbg !2656
  %11 = icmp sle i32 %10, 0, !dbg !2658
  br i1 %11, label %12, label %15, !dbg !2659

; <label>:12:                                     ; preds = %0
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2660
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i32 0, i32 0)), !dbg !2661
  br label %15, !dbg !2661

; <label>:15:                                     ; preds = %12, %0
  call void @init_interface_queue(), !dbg !2662
  %16 = call i32 @netlink_address_lookup(), !dbg !2663
  store i32 %16, i32* %1, align 4, !dbg !2665
  %17 = icmp ne i32 %16, 0, !dbg !2665
  br i1 %17, label %18, label %22, !dbg !2666

; <label>:18:                                     ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2667
  %20 = load i32, i32* %1, align 4, !dbg !2668
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0), i32 %20), !dbg !2669
  br label %22, !dbg !2669

; <label>:22:                                     ; preds = %18, %15
  call void @kernel_netlink_close_cmd(), !dbg !2670
  ret void, !dbg !2671
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

declare i32 @nl_socket_add_membership(%struct.nl_sock*, i32) #4

declare i32 @nl_socket_drop_membership(%struct.nl_sock*, i32) #4

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #6

declare i64 @recvmsg(i32, %struct.msghdr*, i32) #4

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #6

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #7

declare i64 @sendto(i32, i8*, i64, i32, %struct.sockaddr*, i32) #4

; Function Attrs: nounwind uwtable
define internal void @parse_rtattr(%struct.rtattr**, i32, %struct.rtattr*, i64) #0 !dbg !2672 {
  %5 = alloca %struct.rtattr**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtattr*, align 8
  %8 = alloca i64, align 8
  store %struct.rtattr** %0, %struct.rtattr*** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.rtattr*** %5, metadata !2676, metadata !669), !dbg !2677
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2678, metadata !669), !dbg !2679
  store %struct.rtattr* %2, %struct.rtattr** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.rtattr** %7, metadata !2680, metadata !669), !dbg !2681
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2682, metadata !669), !dbg !2683
  br label %9, !dbg !2684

; <label>:9:                                      ; preds = %42, %4
  %10 = load i64, i64* %8, align 8, !dbg !2685
  %11 = icmp uge i64 %10, 4, !dbg !2687
  br i1 %11, label %12, label %25, !dbg !2688

; <label>:12:                                     ; preds = %9
  %13 = load %struct.rtattr*, %struct.rtattr** %7, align 8, !dbg !2689
  %14 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %13, i32 0, i32 0, !dbg !2691
  %15 = load i16, i16* %14, align 2, !dbg !2691
  %16 = zext i16 %15 to i64, !dbg !2692
  %17 = icmp uge i64 %16, 4, !dbg !2693
  br i1 %17, label %18, label %25, !dbg !2694

; <label>:18:                                     ; preds = %12
  %19 = load %struct.rtattr*, %struct.rtattr** %7, align 8, !dbg !2695
  %20 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %19, i32 0, i32 0, !dbg !2697
  %21 = load i16, i16* %20, align 2, !dbg !2697
  %22 = zext i16 %21 to i64, !dbg !2698
  %23 = load i64, i64* %8, align 8, !dbg !2695
  %24 = icmp ule i64 %22, %23, !dbg !2699
  br label %25

; <label>:25:                                     ; preds = %18, %12, %9
  %26 = phi i1 [ false, %12 ], [ false, %9 ], [ %24, %18 ]
  br i1 %26, label %27, label %65, !dbg !2700

; <label>:27:                                     ; preds = %25
  %28 = load %struct.rtattr*, %struct.rtattr** %7, align 8, !dbg !2702
  %29 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %28, i32 0, i32 1, !dbg !2705
  %30 = load i16, i16* %29, align 2, !dbg !2705
  %31 = zext i16 %30 to i32, !dbg !2702
  %32 = load i32, i32* %6, align 4, !dbg !2706
  %33 = icmp sle i32 %31, %32, !dbg !2707
  br i1 %33, label %34, label %42, !dbg !2708

; <label>:34:                                     ; preds = %27
  %35 = load %struct.rtattr*, %struct.rtattr** %7, align 8, !dbg !2709
  %36 = load %struct.rtattr*, %struct.rtattr** %7, align 8, !dbg !2710
  %37 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %36, i32 0, i32 1, !dbg !2711
  %38 = load i16, i16* %37, align 2, !dbg !2711
  %39 = zext i16 %38 to i64, !dbg !2712
  %40 = load %struct.rtattr**, %struct.rtattr*** %5, align 8, !dbg !2712
  %41 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %40, i64 %39, !dbg !2712
  store %struct.rtattr* %35, %struct.rtattr** %41, align 8, !dbg !2713
  br label %42, !dbg !2712

; <label>:42:                                     ; preds = %34, %27
  %43 = load %struct.rtattr*, %struct.rtattr** %7, align 8, !dbg !2714
  %44 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %43, i32 0, i32 0, !dbg !2715
  %45 = load i16, i16* %44, align 2, !dbg !2715
  %46 = zext i16 %45 to i32, !dbg !2716
  %47 = add i32 %46, 4, !dbg !2717
  %48 = sub i32 %47, 1, !dbg !2718
  %49 = and i32 %48, -4, !dbg !2719
  %50 = zext i32 %49 to i64, !dbg !2720
  %51 = load i64, i64* %8, align 8, !dbg !2721
  %52 = sub i64 %51, %50, !dbg !2721
  store i64 %52, i64* %8, align 8, !dbg !2721
  %53 = load %struct.rtattr*, %struct.rtattr** %7, align 8, !dbg !2714
  %54 = bitcast %struct.rtattr* %53 to i8*, !dbg !2722
  %55 = load %struct.rtattr*, %struct.rtattr** %7, align 8, !dbg !2714
  %56 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %55, i32 0, i32 0, !dbg !2715
  %57 = load i16, i16* %56, align 2, !dbg !2715
  %58 = zext i16 %57 to i32, !dbg !2716
  %59 = add i32 %58, 4, !dbg !2717
  %60 = sub i32 %59, 1, !dbg !2718
  %61 = and i32 %60, -4, !dbg !2719
  %62 = zext i32 %61 to i64, !dbg !2715
  %63 = getelementptr inbounds i8, i8* %54, i64 %62, !dbg !2715
  %64 = bitcast i8* %63 to %struct.rtattr*, !dbg !2723
  store %struct.rtattr* %64, %struct.rtattr** %7, align 8, !dbg !2724
  br label %9, !dbg !2725, !llvm.loop !2727

; <label>:65:                                     ; preds = %25
  ret void, !dbg !2728
}

declare %struct._interface* @if_get_by_ifname(i8*, i32) #4

; Function Attrs: nounwind uwtable
define internal void @update_interface_flags(%struct._interface*, i32) #0 !dbg !2729 {
  %3 = alloca %struct._interface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct._interface* %0, %struct._interface** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._interface** %3, metadata !2732, metadata !669), !dbg !2733
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2734, metadata !669), !dbg !2735
  call void @llvm.dbg.declare(metadata i8* %5, metadata !2736, metadata !669), !dbg !2737
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2738, metadata !669), !dbg !2739
  %7 = load i32, i32* %4, align 4, !dbg !2740
  %8 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !2742
  %9 = getelementptr inbounds %struct._interface, %struct._interface* %8, i32 0, i32 4, !dbg !2743
  %10 = load i32, i32* %9, align 8, !dbg !2743
  %11 = icmp eq i32 %7, %10, !dbg !2744
  br i1 %11, label %12, label %13, !dbg !2745

; <label>:12:                                     ; preds = %2
  br label %59, !dbg !2746

; <label>:13:                                     ; preds = %2
  %14 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !2747
  %15 = icmp ne %struct._vrrp_data* %14, null, !dbg !2747
  br i1 %15, label %17, label %16, !dbg !2749

; <label>:16:                                     ; preds = %13
  br label %59, !dbg !2750

; <label>:17:                                     ; preds = %13
  %18 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !2751
  %19 = getelementptr inbounds %struct._interface, %struct._interface* %18, i32 0, i32 4, !dbg !2752
  %20 = load i32, i32* %19, align 8, !dbg !2752
  %21 = and i32 %20, 65, !dbg !2753
  %22 = icmp eq i32 %21, 65, !dbg !2754
  %23 = zext i1 %22 to i8, !dbg !2755
  store i8 %23, i8* %5, align 1, !dbg !2755
  %24 = load i32, i32* %4, align 4, !dbg !2756
  %25 = and i32 %24, 65, !dbg !2757
  %26 = icmp eq i32 %25, 65, !dbg !2758
  %27 = zext i1 %26 to i8, !dbg !2759
  store i8 %27, i8* %6, align 1, !dbg !2759
  %28 = load i32, i32* %4, align 4, !dbg !2760
  %29 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !2761
  %30 = getelementptr inbounds %struct._interface, %struct._interface* %29, i32 0, i32 4, !dbg !2762
  store i32 %28, i32* %30, align 8, !dbg !2763
  %31 = load i8, i8* %5, align 1, !dbg !2764
  %32 = trunc i8 %31 to i1, !dbg !2764
  %33 = zext i1 %32 to i32, !dbg !2764
  %34 = load i8, i8* %6, align 1, !dbg !2766
  %35 = trunc i8 %34 to i1, !dbg !2766
  %36 = zext i1 %35 to i32, !dbg !2766
  %37 = icmp eq i32 %33, %36, !dbg !2767
  br i1 %37, label %38, label %39, !dbg !2768

; <label>:38:                                     ; preds = %17
  br label %59, !dbg !2769

; <label>:39:                                     ; preds = %17
  %40 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !2770
  %41 = getelementptr inbounds %struct._interface, %struct._interface* %40, i32 0, i32 26, !dbg !2772
  %42 = load %struct._list*, %struct._list** %41, align 8, !dbg !2772
  %43 = icmp ne %struct._list* %42, null, !dbg !2770
  br i1 %43, label %44, label %52, !dbg !2773

; <label>:44:                                     ; preds = %39
  %45 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !2774
  %46 = getelementptr inbounds %struct._interface, %struct._interface* %45, i32 0, i32 0, !dbg !2776
  %47 = getelementptr inbounds [16 x i8], [16 x i8]* %46, i32 0, i32 0, !dbg !2774
  %48 = load i8, i8* %6, align 1, !dbg !2777
  %49 = trunc i8 %48 to i1, !dbg !2777
  %50 = select i1 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), !dbg !2777
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i32 0, i32 0), i8* %47, i8* %50), !dbg !2778
  %51 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !2779
  call void @process_if_status_change(%struct._interface* %51), !dbg !2780
  br label %52, !dbg !2781

; <label>:52:                                     ; preds = %44, %39
  %53 = load i8, i8* %6, align 1, !dbg !2782
  %54 = trunc i8 %53 to i1, !dbg !2782
  br i1 %54, label %57, label %55, !dbg !2784

; <label>:55:                                     ; preds = %52
  %56 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !2785
  call void @interface_down(%struct._interface* %56), !dbg !2786
  br label %59, !dbg !2786

; <label>:57:                                     ; preds = %52
  %58 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !2787
  call void @interface_up(%struct._interface* %58), !dbg !2788
  br label %59

; <label>:59:                                     ; preds = %12, %16, %38, %57, %55
  ret void, !dbg !2789
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @netlink_if_link_populate(%struct._interface*, %struct.rtattr**, %struct.ifinfomsg*) #0 !dbg !2790 {
  %4 = alloca i1, align 1
  %5 = alloca %struct._interface*, align 8
  %6 = alloca %struct.rtattr**, align 8
  %7 = alloca %struct.ifinfomsg*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [6 x %struct.rtattr*], align 16
  %10 = alloca [7 x %struct.rtattr*], align 16
  %11 = alloca [2 x %struct.rtattr*], align 16
  store %struct._interface* %0, %struct._interface** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._interface** %5, metadata !2793, metadata !669), !dbg !2794
  store %struct.rtattr** %1, %struct.rtattr*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.rtattr*** %6, metadata !2795, metadata !669), !dbg !2796
  store %struct.ifinfomsg* %2, %struct.ifinfomsg** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.ifinfomsg** %7, metadata !2797, metadata !669), !dbg !2798
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2799, metadata !669), !dbg !2800
  call void @llvm.dbg.declare(metadata [6 x %struct.rtattr*]* %9, metadata !2801, metadata !669), !dbg !2805
  call void @llvm.dbg.declare(metadata [7 x %struct.rtattr*]* %10, metadata !2806, metadata !669), !dbg !2810
  call void @llvm.dbg.declare(metadata [2 x %struct.rtattr*]* %11, metadata !2811, metadata !669), !dbg !2815
  %12 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !2816
  %13 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %12, i64 3, !dbg !2816
  %14 = load %struct.rtattr*, %struct.rtattr** %13, align 8, !dbg !2816
  %15 = bitcast %struct.rtattr* %14 to i8*, !dbg !2817
  %16 = getelementptr inbounds i8, i8* %15, i64 4, !dbg !2818
  store i8* %16, i8** %8, align 8, !dbg !2819
  %17 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !2820
  %18 = getelementptr inbounds %struct._interface, %struct._interface* %17, i32 0, i32 0, !dbg !2821
  %19 = getelementptr inbounds [16 x i8], [16 x i8]* %18, i32 0, i32 0, !dbg !2822
  %20 = load i8*, i8** %8, align 8, !dbg !2823
  %21 = load i8*, i8** %8, align 8, !dbg !2824
  %22 = call i64 @strlen(i8* %21) #9, !dbg !2825
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 %22, i32 1, i1 false), !dbg !2826
  %23 = load %struct.ifinfomsg*, %struct.ifinfomsg** %7, align 8, !dbg !2828
  %24 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %23, i32 0, i32 3, !dbg !2829
  %25 = load i32, i32* %24, align 4, !dbg !2829
  %26 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !2830
  %27 = getelementptr inbounds %struct._interface, %struct._interface* %26, i32 0, i32 1, !dbg !2831
  store i32 %25, i32* %27, align 8, !dbg !2832
  %28 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !2833
  %29 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %28, i64 4, !dbg !2833
  %30 = load %struct.rtattr*, %struct.rtattr** %29, align 8, !dbg !2833
  %31 = bitcast %struct.rtattr* %30 to i8*, !dbg !2834
  %32 = getelementptr inbounds i8, i8* %31, i64 4, !dbg !2835
  %33 = bitcast i8* %32 to i32*, !dbg !2836
  %34 = load i32, i32* %33, align 4, !dbg !2837
  %35 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !2838
  %36 = getelementptr inbounds %struct._interface, %struct._interface* %35, i32 0, i32 6, !dbg !2839
  store i32 %34, i32* %36, align 8, !dbg !2840
  %37 = load %struct.ifinfomsg*, %struct.ifinfomsg** %7, align 8, !dbg !2841
  %38 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %37, i32 0, i32 2, !dbg !2842
  %39 = load i16, i16* %38, align 2, !dbg !2842
  %40 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !2843
  %41 = getelementptr inbounds %struct._interface, %struct._interface* %40, i32 0, i32 7, !dbg !2844
  store i16 %39, i16* %41, align 4, !dbg !2845
  %42 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !2846
  %43 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !2847
  %44 = getelementptr inbounds %struct._interface, %struct._interface* %43, i32 0, i32 14, !dbg !2848
  store %struct._interface* %42, %struct._interface** %44, align 8, !dbg !2849
  %45 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !2850
  %46 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !2852
  %47 = load i8*, i8** %8, align 8, !dbg !2853
  %48 = call i32 @netlink_if_get_ll_addr(%struct._interface* %45, %struct.rtattr** %46, i32 1, i8* %47), !dbg !2854
  %49 = icmp eq i32 %48, -1, !dbg !2855
  br i1 %49, label %50, label %51, !dbg !2856

; <label>:50:                                     ; preds = %3
  store i1 true, i1* %4, align 1, !dbg !2857
  br label %193, !dbg !2857

; <label>:51:                                     ; preds = %3
  %52 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !2858
  %53 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !2860
  %54 = load i8*, i8** %8, align 8, !dbg !2861
  %55 = call i32 @netlink_if_get_ll_addr(%struct._interface* %52, %struct.rtattr** %53, i32 2, i8* %54), !dbg !2862
  %56 = icmp eq i32 %55, -1, !dbg !2863
  br i1 %56, label %57, label %58, !dbg !2864

; <label>:57:                                     ; preds = %51
  store i1 true, i1* %4, align 1, !dbg !2865
  br label %193, !dbg !2865

; <label>:58:                                     ; preds = %51
  %59 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !2866
  %60 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %59, i64 18, !dbg !2866
  %61 = load %struct.rtattr*, %struct.rtattr** %60, align 8, !dbg !2866
  %62 = icmp ne %struct.rtattr* %61, null, !dbg !2866
  br i1 %62, label %63, label %146, !dbg !2868

; <label>:63:                                     ; preds = %58
  %64 = getelementptr inbounds [6 x %struct.rtattr*], [6 x %struct.rtattr*]* %9, i32 0, i32 0, !dbg !2869
  %65 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !2871
  %66 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %65, i64 18, !dbg !2871
  %67 = load %struct.rtattr*, %struct.rtattr** %66, align 8, !dbg !2871
  call void @parse_rtattr_nested(%struct.rtattr** %64, i32 5, %struct.rtattr* %67), !dbg !2872
  %68 = getelementptr inbounds [6 x %struct.rtattr*], [6 x %struct.rtattr*]* %9, i64 0, i64 1, !dbg !2873
  %69 = load %struct.rtattr*, %struct.rtattr** %68, align 8, !dbg !2873
  %70 = icmp ne %struct.rtattr* %69, null, !dbg !2873
  br i1 %70, label %71, label %145, !dbg !2875

; <label>:71:                                     ; preds = %63
  %72 = getelementptr inbounds [6 x %struct.rtattr*], [6 x %struct.rtattr*]* %9, i64 0, i64 1, !dbg !2876
  %73 = load %struct.rtattr*, %struct.rtattr** %72, align 8, !dbg !2876
  %74 = bitcast %struct.rtattr* %73 to i8*, !dbg !2879
  %75 = getelementptr inbounds i8, i8* %74, i64 4, !dbg !2880
  %76 = call i32 @strcmp(i8* %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0)) #9, !dbg !2881
  %77 = icmp ne i32 %76, 0, !dbg !2881
  br i1 %77, label %125, label %78, !dbg !2882

; <label>:78:                                     ; preds = %71
  %79 = getelementptr inbounds [7 x %struct.rtattr*], [7 x %struct.rtattr*]* %10, i32 0, i32 0, !dbg !2883
  %80 = getelementptr inbounds [6 x %struct.rtattr*], [6 x %struct.rtattr*]* %9, i64 0, i64 2, !dbg !2885
  %81 = load %struct.rtattr*, %struct.rtattr** %80, align 16, !dbg !2885
  call void @parse_rtattr_nested(%struct.rtattr** %79, i32 6, %struct.rtattr* %81), !dbg !2886
  %82 = getelementptr inbounds [7 x %struct.rtattr*], [7 x %struct.rtattr*]* %10, i64 0, i64 1, !dbg !2887
  %83 = load %struct.rtattr*, %struct.rtattr** %82, align 8, !dbg !2887
  %84 = icmp ne %struct.rtattr* %83, null, !dbg !2887
  br i1 %84, label %85, label %124, !dbg !2889

; <label>:85:                                     ; preds = %78
  %86 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !2890
  %87 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %86, i64 5, !dbg !2890
  %88 = load %struct.rtattr*, %struct.rtattr** %87, align 8, !dbg !2890
  %89 = icmp ne %struct.rtattr* %88, null, !dbg !2890
  br i1 %89, label %90, label %124, !dbg !2891

; <label>:90:                                     ; preds = %85
  %91 = getelementptr inbounds [7 x %struct.rtattr*], [7 x %struct.rtattr*]* %10, i64 0, i64 1, !dbg !2892
  %92 = load %struct.rtattr*, %struct.rtattr** %91, align 8, !dbg !2892
  %93 = bitcast %struct.rtattr* %92 to i8*, !dbg !2893
  %94 = getelementptr inbounds i8, i8* %93, i64 4, !dbg !2894
  %95 = bitcast i8* %94 to i32*, !dbg !2895
  %96 = load i32, i32* %95, align 4, !dbg !2896
  %97 = icmp eq i32 %96, 1, !dbg !2897
  br i1 %97, label %98, label %124, !dbg !2898

; <label>:98:                                     ; preds = %90
  %99 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !2900
  %100 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %99, i64 5, !dbg !2900
  %101 = load %struct.rtattr*, %struct.rtattr** %100, align 8, !dbg !2900
  %102 = bitcast %struct.rtattr* %101 to i8*, !dbg !2902
  %103 = getelementptr inbounds i8, i8* %102, i64 4, !dbg !2903
  %104 = bitcast i8* %103 to i32*, !dbg !2904
  %105 = load i32, i32* %104, align 4, !dbg !2905
  %106 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !2906
  %107 = getelementptr inbounds %struct._interface, %struct._interface* %106, i32 0, i32 13, !dbg !2907
  store i32 %105, i32* %107, align 8, !dbg !2908
  %108 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !2909
  %109 = getelementptr inbounds %struct._interface, %struct._interface* %108, i32 0, i32 13, !dbg !2910
  %110 = load i32, i32* %109, align 8, !dbg !2910
  %111 = call %struct._interface* @if_get_by_ifindex(i32 %110), !dbg !2911
  %112 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !2912
  %113 = getelementptr inbounds %struct._interface, %struct._interface* %112, i32 0, i32 14, !dbg !2913
  store %struct._interface* %111, %struct._interface** %113, align 8, !dbg !2914
  %114 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !2915
  %115 = getelementptr inbounds %struct._interface, %struct._interface* %114, i32 0, i32 14, !dbg !2917
  %116 = load %struct._interface*, %struct._interface** %115, align 8, !dbg !2917
  %117 = icmp ne %struct._interface* %116, null, !dbg !2915
  br i1 %117, label %118, label %121, !dbg !2918

; <label>:118:                                    ; preds = %98
  %119 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !2919
  %120 = getelementptr inbounds %struct._interface, %struct._interface* %119, i32 0, i32 13, !dbg !2920
  store i32 0, i32* %120, align 8, !dbg !2921
  br label %121, !dbg !2919

; <label>:121:                                    ; preds = %118, %98
  %122 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !2922
  %123 = getelementptr inbounds %struct._interface, %struct._interface* %122, i32 0, i32 12, !dbg !2923
  store i8 1, i8* %123, align 4, !dbg !2924
  br label %124, !dbg !2925

; <label>:124:                                    ; preds = %121, %90, %85, %78
  br label %144, !dbg !2926

; <label>:125:                                    ; preds = %71
  %126 = getelementptr inbounds [6 x %struct.rtattr*], [6 x %struct.rtattr*]* %9, i64 0, i64 1, !dbg !2927
  %127 = load %struct.rtattr*, %struct.rtattr** %126, align 8, !dbg !2927
  %128 = bitcast %struct.rtattr* %127 to i8*, !dbg !2929
  %129 = getelementptr inbounds i8, i8* %128, i64 4, !dbg !2930
  %130 = call i32 @strcmp(i8* %129, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0)) #9, !dbg !2931
  %131 = icmp ne i32 %130, 0, !dbg !2931
  br i1 %131, label %143, label %132, !dbg !2932

; <label>:132:                                    ; preds = %125
  %133 = getelementptr inbounds [2 x %struct.rtattr*], [2 x %struct.rtattr*]* %11, i32 0, i32 0, !dbg !2933
  %134 = getelementptr inbounds [6 x %struct.rtattr*], [6 x %struct.rtattr*]* %9, i64 0, i64 2, !dbg !2935
  %135 = load %struct.rtattr*, %struct.rtattr** %134, align 16, !dbg !2935
  call void @parse_rtattr_nested(%struct.rtattr** %133, i32 1, %struct.rtattr* %135), !dbg !2936
  %136 = getelementptr inbounds [2 x %struct.rtattr*], [2 x %struct.rtattr*]* %11, i64 0, i64 1, !dbg !2937
  %137 = load %struct.rtattr*, %struct.rtattr** %136, align 8, !dbg !2937
  %138 = icmp ne %struct.rtattr* %137, null, !dbg !2937
  br i1 %138, label %139, label %142, !dbg !2939

; <label>:139:                                    ; preds = %132
  %140 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !2940
  %141 = getelementptr inbounds %struct._interface, %struct._interface* %140, i32 0, i32 17, !dbg !2941
  store i8 1, i8* %141, align 8, !dbg !2942
  br label %142, !dbg !2940

; <label>:142:                                    ; preds = %139, %132
  br label %143, !dbg !2943

; <label>:143:                                    ; preds = %142, %125
  br label %144

; <label>:144:                                    ; preds = %143, %124
  br label %145, !dbg !2944

; <label>:145:                                    ; preds = %144, %63
  br label %146, !dbg !2945

; <label>:146:                                    ; preds = %145, %58
  %147 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !2946
  %148 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %147, i64 10, !dbg !2946
  %149 = load %struct.rtattr*, %struct.rtattr** %148, align 8, !dbg !2946
  %150 = icmp ne %struct.rtattr* %149, null, !dbg !2946
  br i1 %150, label %151, label %185, !dbg !2948

; <label>:151:                                    ; preds = %146
  %152 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !2949
  %153 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %152, i64 10, !dbg !2949
  %154 = load %struct.rtattr*, %struct.rtattr** %153, align 8, !dbg !2949
  %155 = bitcast %struct.rtattr* %154 to i8*, !dbg !2951
  %156 = getelementptr inbounds i8, i8* %155, i64 4, !dbg !2952
  %157 = bitcast i8* %156 to i32*, !dbg !2953
  %158 = load i32, i32* %157, align 4, !dbg !2954
  %159 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !2955
  %160 = getelementptr inbounds %struct._interface, %struct._interface* %159, i32 0, i32 15, !dbg !2956
  store i32 %158, i32* %160, align 8, !dbg !2957
  %161 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !2958
  %162 = getelementptr inbounds %struct._interface, %struct._interface* %161, i32 0, i32 15, !dbg !2959
  %163 = load i32, i32* %162, align 8, !dbg !2959
  %164 = call %struct._interface* @if_get_by_ifindex(i32 %163), !dbg !2960
  %165 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !2961
  %166 = getelementptr inbounds %struct._interface, %struct._interface* %165, i32 0, i32 16, !dbg !2962
  store %struct._interface* %164, %struct._interface** %166, align 8, !dbg !2963
  %167 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !2964
  %168 = getelementptr inbounds %struct._interface, %struct._interface* %167, i32 0, i32 16, !dbg !2966
  %169 = load %struct._interface*, %struct._interface** %168, align 8, !dbg !2966
  %170 = icmp ne %struct._interface* %169, null, !dbg !2964
  br i1 %170, label %171, label %184, !dbg !2967

; <label>:171:                                    ; preds = %151
  %172 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !2968
  %173 = getelementptr inbounds %struct._interface, %struct._interface* %172, i32 0, i32 16, !dbg !2971
  %174 = load %struct._interface*, %struct._interface** %173, align 8, !dbg !2971
  %175 = getelementptr inbounds %struct._interface, %struct._interface* %174, i32 0, i32 17, !dbg !2972
  %176 = load i8, i8* %175, align 8, !dbg !2972
  %177 = trunc i8 %176 to i1, !dbg !2972
  br i1 %177, label %181, label %178, !dbg !2973

; <label>:178:                                    ; preds = %171
  %179 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !2974
  %180 = getelementptr inbounds %struct._interface, %struct._interface* %179, i32 0, i32 16, !dbg !2975
  store %struct._interface* null, %struct._interface** %180, align 8, !dbg !2976
  br label %181, !dbg !2974

; <label>:181:                                    ; preds = %178, %171
  %182 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !2977
  %183 = getelementptr inbounds %struct._interface, %struct._interface* %182, i32 0, i32 15, !dbg !2978
  store i32 0, i32* %183, align 8, !dbg !2979
  br label %184, !dbg !2980

; <label>:184:                                    ; preds = %181, %151
  br label %185, !dbg !2981

; <label>:185:                                    ; preds = %184, %146
  %186 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !2982
  %187 = getelementptr inbounds %struct._interface, %struct._interface* %186, i32 0, i32 24, !dbg !2983
  store i32 -1, i32* %187, align 4, !dbg !2984
  %188 = load %struct.ifinfomsg*, %struct.ifinfomsg** %7, align 8, !dbg !2985
  %189 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %188, i32 0, i32 4, !dbg !2986
  %190 = load i32, i32* %189, align 4, !dbg !2986
  %191 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !2987
  %192 = getelementptr inbounds %struct._interface, %struct._interface* %191, i32 0, i32 4, !dbg !2988
  store i32 %190, i32* %192, align 8, !dbg !2989
  store i1 true, i1* %4, align 1, !dbg !2990
  br label %193, !dbg !2990

; <label>:193:                                    ; preds = %185, %57, %50
  %194 = load i1, i1* %4, align 1, !dbg !2991
  ret i1 %194, !dbg !2991
}

declare void @interface_down(%struct._interface*) #4

declare void @interface_up(%struct._interface*) #4

; Function Attrs: nounwind uwtable
define internal i32 @netlink_if_get_ll_addr(%struct._interface*, %struct.rtattr**, i32, i8*) #0 !dbg !2992 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._interface*, align 8
  %7 = alloca %struct.rtattr**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct._interface* %0, %struct._interface** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._interface** %6, metadata !2995, metadata !669), !dbg !2996
  store %struct.rtattr** %1, %struct.rtattr*** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.rtattr*** %7, metadata !2997, metadata !669), !dbg !2998
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2999, metadata !669), !dbg !3000
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3001, metadata !669), !dbg !3002
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3003, metadata !669), !dbg !3004
  %12 = load i32, i32* %8, align 4, !dbg !3005
  %13 = sext i32 %12 to i64, !dbg !3007
  %14 = load %struct.rtattr**, %struct.rtattr*** %7, align 8, !dbg !3007
  %15 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %14, i64 %13, !dbg !3007
  %16 = load %struct.rtattr*, %struct.rtattr** %15, align 8, !dbg !3007
  %17 = icmp ne %struct.rtattr* %16, null, !dbg !3007
  br i1 %17, label %18, label %96, !dbg !3008

; <label>:18:                                     ; preds = %4
  call void @llvm.dbg.declare(metadata i64* %11, metadata !3009, metadata !669), !dbg !3011
  %19 = load i32, i32* %8, align 4, !dbg !3012
  %20 = sext i32 %19 to i64, !dbg !3013
  %21 = load %struct.rtattr**, %struct.rtattr*** %7, align 8, !dbg !3013
  %22 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %21, i64 %20, !dbg !3013
  %23 = load %struct.rtattr*, %struct.rtattr** %22, align 8, !dbg !3013
  %24 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %23, i32 0, i32 0, !dbg !3012
  %25 = load i16, i16* %24, align 2, !dbg !3012
  %26 = zext i16 %25 to i32, !dbg !3014
  %27 = sext i32 %26 to i64, !dbg !3014
  %28 = sub i64 %27, 4, !dbg !3015
  store i64 %28, i64* %11, align 8, !dbg !3011
  %29 = load i64, i64* %11, align 8, !dbg !3016
  %30 = icmp ugt i64 %29, 32, !dbg !3018
  br i1 %30, label %31, label %36, !dbg !3019

; <label>:31:                                     ; preds = %18
  %32 = load i32, i32* %8, align 4, !dbg !3020
  %33 = call i8* @get_mac_string(i32 %32), !dbg !3022
  %34 = load i8*, i8** %9, align 8, !dbg !3023
  %35 = load i64, i64* %11, align 8, !dbg !3024
  call void (i32, i8*, ...) @log_message(i32 3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.26, i32 0, i32 0), i8* %33, i8* %34, i64 %35), !dbg !3025
  store i32 -1, i32* %5, align 4, !dbg !3026
  br label %97, !dbg !3026

; <label>:36:                                     ; preds = %18
  %37 = load i32, i32* %8, align 4, !dbg !3027
  switch i32 %37, label %94 [
    i32 1, label %38
    i32 2, label %82
  ], !dbg !3028

; <label>:38:                                     ; preds = %36
  %39 = load i64, i64* %11, align 8, !dbg !3029
  %40 = load %struct._interface*, %struct._interface** %6, align 8, !dbg !3031
  %41 = getelementptr inbounds %struct._interface, %struct._interface* %40, i32 0, i32 10, !dbg !3032
  store i64 %39, i64* %41, align 8, !dbg !3033
  %42 = load %struct._interface*, %struct._interface** %6, align 8, !dbg !3034
  %43 = getelementptr inbounds %struct._interface, %struct._interface* %42, i32 0, i32 8, !dbg !3035
  %44 = getelementptr inbounds [32 x i8], [32 x i8]* %43, i32 0, i32 0, !dbg !3036
  %45 = load i32, i32* %8, align 4, !dbg !3037
  %46 = sext i32 %45 to i64, !dbg !3038
  %47 = load %struct.rtattr**, %struct.rtattr*** %7, align 8, !dbg !3038
  %48 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %47, i64 %46, !dbg !3038
  %49 = load %struct.rtattr*, %struct.rtattr** %48, align 8, !dbg !3038
  %50 = bitcast %struct.rtattr* %49 to i8*, !dbg !3039
  %51 = getelementptr inbounds i8, i8* %50, i64 4, !dbg !3037
  %52 = load i64, i64* %11, align 8, !dbg !3040
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %51, i64 %52, i32 1, i1 false), !dbg !3036
  store i64 0, i64* %10, align 8, !dbg !3041
  br label %53, !dbg !3043

; <label>:53:                                     ; preds = %67, %38
  %54 = load i64, i64* %10, align 8, !dbg !3044
  %55 = load i64, i64* %11, align 8, !dbg !3047
  %56 = icmp ult i64 %54, %55, !dbg !3048
  br i1 %56, label %57, label %70, !dbg !3049

; <label>:57:                                     ; preds = %53
  %58 = load i64, i64* %10, align 8, !dbg !3050
  %59 = load %struct._interface*, %struct._interface** %6, align 8, !dbg !3052
  %60 = getelementptr inbounds %struct._interface, %struct._interface* %59, i32 0, i32 8, !dbg !3053
  %61 = getelementptr inbounds [32 x i8], [32 x i8]* %60, i64 0, i64 %58, !dbg !3052
  %62 = load i8, i8* %61, align 1, !dbg !3052
  %63 = zext i8 %62 to i32, !dbg !3052
  %64 = icmp ne i32 %63, 0, !dbg !3054
  br i1 %64, label %65, label %66, !dbg !3055

; <label>:65:                                     ; preds = %57
  br label %70, !dbg !3056

; <label>:66:                                     ; preds = %57
  br label %67, !dbg !3057

; <label>:67:                                     ; preds = %66
  %68 = load i64, i64* %10, align 8, !dbg !3059
  %69 = add i64 %68, 1, !dbg !3059
  store i64 %69, i64* %10, align 8, !dbg !3059
  br label %53, !dbg !3061, !llvm.loop !3062

; <label>:70:                                     ; preds = %65, %53
  %71 = load i64, i64* %10, align 8, !dbg !3064
  %72 = load i64, i64* %11, align 8, !dbg !3066
  %73 = icmp eq i64 %71, %72, !dbg !3067
  br i1 %73, label %74, label %77, !dbg !3068

; <label>:74:                                     ; preds = %70
  %75 = load %struct._interface*, %struct._interface** %6, align 8, !dbg !3069
  %76 = getelementptr inbounds %struct._interface, %struct._interface* %75, i32 0, i32 10, !dbg !3070
  store i64 0, i64* %76, align 8, !dbg !3071
  br label %81, !dbg !3069

; <label>:77:                                     ; preds = %70
  %78 = load i64, i64* %11, align 8, !dbg !3072
  %79 = load %struct._interface*, %struct._interface** %6, align 8, !dbg !3073
  %80 = getelementptr inbounds %struct._interface, %struct._interface* %79, i32 0, i32 10, !dbg !3074
  store i64 %78, i64* %80, align 8, !dbg !3075
  br label %81

; <label>:81:                                     ; preds = %77, %74
  br label %95, !dbg !3076

; <label>:82:                                     ; preds = %36
  %83 = load %struct._interface*, %struct._interface** %6, align 8, !dbg !3077
  %84 = getelementptr inbounds %struct._interface, %struct._interface* %83, i32 0, i32 9, !dbg !3078
  %85 = getelementptr inbounds [32 x i8], [32 x i8]* %84, i32 0, i32 0, !dbg !3079
  %86 = load i32, i32* %8, align 4, !dbg !3080
  %87 = sext i32 %86 to i64, !dbg !3081
  %88 = load %struct.rtattr**, %struct.rtattr*** %7, align 8, !dbg !3081
  %89 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %88, i64 %87, !dbg !3081
  %90 = load %struct.rtattr*, %struct.rtattr** %89, align 8, !dbg !3081
  %91 = bitcast %struct.rtattr* %90 to i8*, !dbg !3082
  %92 = getelementptr inbounds i8, i8* %91, i64 4, !dbg !3080
  %93 = load i64, i64* %11, align 8, !dbg !3083
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %85, i8* %92, i64 %93, i32 1, i1 false), !dbg !3079
  br label %95, !dbg !3084

; <label>:94:                                     ; preds = %36
  store i32 -1, i32* %5, align 4, !dbg !3085
  br label %97, !dbg !3085

; <label>:95:                                     ; preds = %82, %81
  br label %96, !dbg !3086

; <label>:96:                                     ; preds = %95, %4
  store i32 0, i32* %5, align 4, !dbg !3087
  br label %97, !dbg !3087

; <label>:97:                                     ; preds = %96, %94, %31
  %98 = load i32, i32* %5, align 4, !dbg !3088
  ret i32 %98, !dbg !3088
}

; Function Attrs: nounwind uwtable
define internal void @parse_rtattr_nested(%struct.rtattr**, i32, %struct.rtattr*) #0 !dbg !3089 {
  %4 = alloca %struct.rtattr**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtattr*, align 8
  store %struct.rtattr** %0, %struct.rtattr*** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.rtattr*** %4, metadata !3092, metadata !669), !dbg !3093
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3094, metadata !669), !dbg !3095
  store %struct.rtattr* %2, %struct.rtattr** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.rtattr** %6, metadata !3096, metadata !669), !dbg !3097
  %7 = load %struct.rtattr**, %struct.rtattr*** %4, align 8, !dbg !3098
  %8 = load i32, i32* %5, align 4, !dbg !3099
  %9 = load %struct.rtattr*, %struct.rtattr** %6, align 8, !dbg !3100
  %10 = bitcast %struct.rtattr* %9 to i8*, !dbg !3101
  %11 = getelementptr inbounds i8, i8* %10, i64 4, !dbg !3102
  %12 = bitcast i8* %11 to %struct.rtattr*, !dbg !3100
  %13 = load %struct.rtattr*, %struct.rtattr** %6, align 8, !dbg !3103
  %14 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %13, i32 0, i32 0, !dbg !3104
  %15 = load i16, i16* %14, align 2, !dbg !3104
  %16 = zext i16 %15 to i32, !dbg !3105
  %17 = sext i32 %16 to i64, !dbg !3105
  %18 = sub i64 %17, 4, !dbg !3106
  call void @parse_rtattr(%struct.rtattr** %7, i32 %8, %struct.rtattr* %12, i64 %18), !dbg !3107
  ret void, !dbg !3108
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #7

declare %struct._interface* @if_get_by_ifindex(i32) #4

; Function Attrs: nounwind uwtable
define internal i8* @get_mac_string(i32) #0 !dbg !3109 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !3112, metadata !669), !dbg !3113
  %4 = load i32, i32* %3, align 4, !dbg !3114
  switch i32 %4, label %7 [
    i32 2, label %5
    i32 1, label %6
  ], !dbg !3115

; <label>:5:                                      ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8** %2, align 8, !dbg !3116
  br label %8, !dbg !3116

; <label>:6:                                      ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8** %2, align 8, !dbg !3118
  br label %8, !dbg !3118

; <label>:7:                                      ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0), i8** %2, align 8, !dbg !3119
  br label %8, !dbg !3119

; <label>:8:                                      ; preds = %7, %6, %5
  %9 = load i8*, i8** %2, align 8, !dbg !3120
  ret i8* %9, !dbg !3120
}

; Function Attrs: nounwind uwtable
define internal i32 @netlink_link_filter(%struct.sockaddr_nl*, %struct.nlmsghdr*) #0 !dbg !3121 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_nl*, align 8
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca %struct.ifinfomsg*, align 8
  %7 = alloca [40 x %struct.rtattr*], align 16
  %8 = alloca %struct._interface*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct._garp_delay*, align 8
  %12 = alloca %struct._list*, align 8
  store %struct.sockaddr_nl* %0, %struct.sockaddr_nl** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr_nl** %4, metadata !3122, metadata !669), !dbg !3123
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.nlmsghdr** %5, metadata !3124, metadata !669), !dbg !3125
  call void @llvm.dbg.declare(metadata %struct.ifinfomsg** %6, metadata !3126, metadata !669), !dbg !3127
  call void @llvm.dbg.declare(metadata [40 x %struct.rtattr*]* %7, metadata !3128, metadata !669), !dbg !3129
  call void @llvm.dbg.declare(metadata %struct._interface** %8, metadata !3130, metadata !669), !dbg !3131
  call void @llvm.dbg.declare(metadata i64* %9, metadata !3132, metadata !669), !dbg !3133
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3134, metadata !669), !dbg !3135
  %13 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !3136
  %14 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %13, i32 0, i32 1, !dbg !3138
  %15 = load i16, i16* %14, align 4, !dbg !3138
  %16 = zext i16 %15 to i32, !dbg !3136
  %17 = icmp eq i32 %16, 16, !dbg !3139
  br i1 %17, label %25, label %18, !dbg !3140

; <label>:18:                                     ; preds = %2
  %19 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !3141
  %20 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %19, i32 0, i32 1, !dbg !3143
  %21 = load i16, i16* %20, align 4, !dbg !3143
  %22 = zext i16 %21 to i32, !dbg !3141
  %23 = icmp eq i32 %22, 17, !dbg !3144
  br i1 %23, label %25, label %24, !dbg !3145

; <label>:24:                                     ; preds = %18
  store i32 0, i32* %3, align 4, !dbg !3146
  br label %289, !dbg !3146

; <label>:25:                                     ; preds = %18, %2
  %26 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !3147
  %27 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %26, i32 0, i32 0, !dbg !3149
  %28 = load i32, i32* %27, align 4, !dbg !3149
  %29 = zext i32 %28 to i64, !dbg !3147
  %30 = icmp ult i64 %29, 32, !dbg !3150
  br i1 %30, label %31, label %32, !dbg !3151

; <label>:31:                                     ; preds = %25
  store i32 -1, i32* %3, align 4, !dbg !3152
  br label %289, !dbg !3152

; <label>:32:                                     ; preds = %25
  %33 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !3153
  %34 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %33, i32 0, i32 0, !dbg !3154
  %35 = load i32, i32* %34, align 4, !dbg !3154
  %36 = zext i32 %35 to i64, !dbg !3153
  %37 = sub i64 %36, 32, !dbg !3155
  store i64 %37, i64* %9, align 8, !dbg !3156
  %38 = getelementptr inbounds [40 x %struct.rtattr*], [40 x %struct.rtattr*]* %7, i32 0, i32 0, !dbg !3157
  %39 = bitcast %struct.rtattr** %38 to i8*, !dbg !3157
  call void @llvm.memset.p0i8.i64(i8* %39, i8 0, i64 320, i32 16, i1 false), !dbg !3157
  %40 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !3158
  %41 = bitcast %struct.nlmsghdr* %40 to i8*, !dbg !3159
  %42 = getelementptr inbounds i8, i8* %41, i64 16, !dbg !3160
  %43 = bitcast i8* %42 to %struct.ifinfomsg*, !dbg !3158
  store %struct.ifinfomsg* %43, %struct.ifinfomsg** %6, align 8, !dbg !3161
  %44 = getelementptr inbounds [40 x %struct.rtattr*], [40 x %struct.rtattr*]* %7, i32 0, i32 0, !dbg !3162
  %45 = load %struct.ifinfomsg*, %struct.ifinfomsg** %6, align 8, !dbg !3163
  %46 = bitcast %struct.ifinfomsg* %45 to i8*, !dbg !3164
  %47 = getelementptr inbounds i8, i8* %46, i64 16, !dbg !3165
  %48 = bitcast i8* %47 to %struct.rtattr*, !dbg !3166
  %49 = load i64, i64* %9, align 8, !dbg !3167
  call void @parse_rtattr(%struct.rtattr** %44, i32 39, %struct.rtattr* %48, i64 %49), !dbg !3168
  %50 = getelementptr inbounds [40 x %struct.rtattr*], [40 x %struct.rtattr*]* %7, i64 0, i64 3, !dbg !3169
  %51 = load %struct.rtattr*, %struct.rtattr** %50, align 8, !dbg !3169
  %52 = icmp eq %struct.rtattr* %51, null, !dbg !3171
  br i1 %52, label %53, label %54, !dbg !3172

; <label>:53:                                     ; preds = %32
  store i32 -1, i32* %3, align 4, !dbg !3173
  br label %289, !dbg !3173

; <label>:54:                                     ; preds = %32
  %55 = getelementptr inbounds [40 x %struct.rtattr*], [40 x %struct.rtattr*]* %7, i64 0, i64 3, !dbg !3174
  %56 = load %struct.rtattr*, %struct.rtattr** %55, align 8, !dbg !3174
  %57 = bitcast %struct.rtattr* %56 to i8*, !dbg !3175
  %58 = getelementptr inbounds i8, i8* %57, i64 4, !dbg !3176
  store i8* %58, i8** %10, align 8, !dbg !3177
  %59 = load %struct.ifinfomsg*, %struct.ifinfomsg** %6, align 8, !dbg !3178
  %60 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %59, i32 0, i32 5, !dbg !3180
  %61 = load i32, i32* %60, align 4, !dbg !3180
  %62 = icmp ne i32 %61, 0, !dbg !3178
  br i1 %62, label %74, label %63, !dbg !3181

; <label>:63:                                     ; preds = %54
  %64 = getelementptr inbounds [40 x %struct.rtattr*], [40 x %struct.rtattr*]* %7, i64 0, i64 11, !dbg !3182
  %65 = load %struct.rtattr*, %struct.rtattr** %64, align 8, !dbg !3182
  %66 = icmp ne %struct.rtattr* %65, null, !dbg !3182
  br i1 %66, label %67, label %74, !dbg !3184

; <label>:67:                                     ; preds = %63
  %68 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !3185
  %69 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %68, i32 0, i32 1, !dbg !3187
  %70 = load i16, i16* %69, align 4, !dbg !3187
  %71 = zext i16 %70 to i32, !dbg !3185
  %72 = icmp eq i32 %71, 16, !dbg !3188
  br i1 %72, label %73, label %74, !dbg !3189

; <label>:73:                                     ; preds = %67
  store i32 0, i32* %3, align 4, !dbg !3190
  br label %289, !dbg !3190

; <label>:74:                                     ; preds = %67, %63, %54
  %75 = load %struct.ifinfomsg*, %struct.ifinfomsg** %6, align 8, !dbg !3191
  %76 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %75, i32 0, i32 3, !dbg !3192
  %77 = load i32, i32* %76, align 4, !dbg !3192
  %78 = call %struct._interface* @if_get_by_ifindex(i32 %77), !dbg !3193
  store %struct._interface* %78, %struct._interface** %8, align 8, !dbg !3194
  %79 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3195
  %80 = icmp ne %struct._interface* %79, null, !dbg !3195
  br i1 %80, label %81, label %228, !dbg !3197

; <label>:81:                                     ; preds = %74
  %82 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !3198
  %83 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %82, i32 0, i32 1, !dbg !3201
  %84 = load i16, i16* %83, align 4, !dbg !3201
  %85 = zext i16 %84 to i32, !dbg !3198
  %86 = icmp eq i32 %85, 17, !dbg !3202
  br i1 %86, label %87, label %159, !dbg !3203

; <label>:87:                                     ; preds = %81
  %88 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3204
  %89 = getelementptr inbounds %struct._interface, %struct._interface* %88, i32 0, i32 26, !dbg !3207
  %90 = load %struct._list*, %struct._list** %89, align 8, !dbg !3207
  %91 = icmp eq %struct._list* %90, null, !dbg !3208
  br i1 %91, label %106, label %92, !dbg !3209

; <label>:92:                                     ; preds = %87
  %93 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3210
  %94 = getelementptr inbounds %struct._interface, %struct._interface* %93, i32 0, i32 26, !dbg !3212
  %95 = load %struct._list*, %struct._list** %94, align 8, !dbg !3212
  %96 = getelementptr inbounds %struct._list, %struct._list* %95, i32 0, i32 0, !dbg !3213
  %97 = load %struct._element*, %struct._element** %96, align 8, !dbg !3213
  %98 = icmp eq %struct._element* %97, null, !dbg !3214
  br i1 %98, label %99, label %108, !dbg !3215

; <label>:99:                                     ; preds = %92
  %100 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3216
  %101 = getelementptr inbounds %struct._interface, %struct._interface* %100, i32 0, i32 26, !dbg !3218
  %102 = load %struct._list*, %struct._list** %101, align 8, !dbg !3218
  %103 = getelementptr inbounds %struct._list, %struct._list* %102, i32 0, i32 1, !dbg !3219
  %104 = load %struct._element*, %struct._element** %103, align 8, !dbg !3219
  %105 = icmp eq %struct._element* %104, null, !dbg !3220
  br i1 %105, label %106, label %108, !dbg !3221

; <label>:106:                                    ; preds = %99, %87
  %107 = call zeroext i1 @__test_bit(i32 7, i64* @debug), !dbg !3222
  br i1 %107, label %108, label %112, !dbg !3224

; <label>:108:                                    ; preds = %106, %99, %92
  %109 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3225
  %110 = getelementptr inbounds %struct._interface, %struct._interface* %109, i32 0, i32 0, !dbg !3226
  %111 = getelementptr inbounds [16 x i8], [16 x i8]* %110, i32 0, i32 0, !dbg !3225
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i32 0, i32 0), i8* %111), !dbg !3227
  br label %112, !dbg !3227

; <label>:112:                                    ; preds = %108, %106
  %113 = load i32, i32* @prog_type, align 4, !dbg !3228
  %114 = icmp eq i32 %113, 1, !dbg !3230
  br i1 %114, label %115, label %117, !dbg !3231

; <label>:115:                                    ; preds = %112
  %116 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3232
  call void @cleanup_lost_interface(%struct._interface* %116), !dbg !3233
  br label %122, !dbg !3233

; <label>:117:                                    ; preds = %112
  %118 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3234
  %119 = getelementptr inbounds %struct._interface, %struct._interface* %118, i32 0, i32 4, !dbg !3236
  store i32 0, i32* %119, align 8, !dbg !3237
  %120 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3238
  %121 = getelementptr inbounds %struct._interface, %struct._interface* %120, i32 0, i32 1, !dbg !3239
  store i32 0, i32* %121, align 8, !dbg !3240
  br label %122

; <label>:122:                                    ; preds = %117, %115
  %123 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3241
  %124 = getelementptr inbounds %struct._interface, %struct._interface* %123, i32 0, i32 26, !dbg !3243
  %125 = load %struct._list*, %struct._list** %124, align 8, !dbg !3243
  %126 = icmp eq %struct._list* %125, null, !dbg !3244
  br i1 %126, label %158, label %127, !dbg !3245

; <label>:127:                                    ; preds = %122
  %128 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3246
  %129 = getelementptr inbounds %struct._interface, %struct._interface* %128, i32 0, i32 26, !dbg !3248
  %130 = load %struct._list*, %struct._list** %129, align 8, !dbg !3248
  %131 = getelementptr inbounds %struct._list, %struct._list* %130, i32 0, i32 0, !dbg !3249
  %132 = load %struct._element*, %struct._element** %131, align 8, !dbg !3249
  %133 = icmp eq %struct._element* %132, null, !dbg !3250
  br i1 %133, label %134, label %141, !dbg !3251

; <label>:134:                                    ; preds = %127
  %135 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3252
  %136 = getelementptr inbounds %struct._interface, %struct._interface* %135, i32 0, i32 26, !dbg !3254
  %137 = load %struct._list*, %struct._list** %136, align 8, !dbg !3254
  %138 = getelementptr inbounds %struct._list, %struct._list* %137, i32 0, i32 1, !dbg !3255
  %139 = load %struct._element*, %struct._element** %138, align 8, !dbg !3255
  %140 = icmp eq %struct._element* %139, null, !dbg !3256
  br i1 %140, label %158, label %141, !dbg !3257

; <label>:141:                                    ; preds = %134, %127
  %142 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3258
  %143 = getelementptr inbounds %struct._interface, %struct._interface* %142, i32 0, i32 12, !dbg !3260
  %144 = load i8, i8* %143, align 4, !dbg !3260
  %145 = trunc i8 %144 to i1, !dbg !3260
  br i1 %145, label %146, label %158, !dbg !3261

; <label>:146:                                    ; preds = %141
  %147 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3262
  %148 = getelementptr inbounds %struct._interface, %struct._interface* %147, i32 0, i32 14, !dbg !3264
  %149 = load %struct._interface*, %struct._interface** %148, align 8, !dbg !3264
  %150 = getelementptr inbounds %struct._interface, %struct._interface* %149, i32 0, i32 1, !dbg !3265
  %151 = load i32, i32* %150, align 8, !dbg !3265
  %152 = icmp ne i32 %151, 0, !dbg !3262
  br i1 %152, label %153, label %158, !dbg !3266

; <label>:153:                                    ; preds = %146
  %154 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !3267
  %155 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3268
  %156 = bitcast %struct._interface* %155 to i8*, !dbg !3268
  %157 = call %struct._thread* @thread_add_event(%struct._thread_master* %154, i32 (%struct._thread*)* @recreate_vmac_thread, i8* %156, i32 0), !dbg !3269
  br label %158, !dbg !3269

; <label>:158:                                    ; preds = %153, %146, %141, %134, %122
  br label %227, !dbg !3270

; <label>:159:                                    ; preds = %81
  %160 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3271
  %161 = getelementptr inbounds %struct._interface, %struct._interface* %160, i32 0, i32 0, !dbg !3274
  %162 = getelementptr inbounds [16 x i8], [16 x i8]* %161, i32 0, i32 0, !dbg !3271
  %163 = load i8*, i8** %10, align 8, !dbg !3275
  %164 = call i32 @strcmp(i8* %162, i8* %163) #9, !dbg !3276
  %165 = icmp ne i32 %164, 0, !dbg !3276
  br i1 %165, label %166, label %219, !dbg !3276

; <label>:166:                                    ; preds = %159
  %167 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3277
  %168 = getelementptr inbounds %struct._interface, %struct._interface* %167, i32 0, i32 0, !dbg !3279
  %169 = getelementptr inbounds [16 x i8], [16 x i8]* %168, i32 0, i32 0, !dbg !3277
  %170 = load i8*, i8** %10, align 8, !dbg !3280
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.32, i32 0, i32 0), i8* %169, i8* %170), !dbg !3281
  %171 = load i32, i32* @prog_type, align 4, !dbg !3282
  %172 = icmp eq i32 %171, 1, !dbg !3284
  br i1 %172, label %173, label %175, !dbg !3285

; <label>:173:                                    ; preds = %166
  %174 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3286
  call void @cleanup_lost_interface(%struct._interface* %174), !dbg !3287
  br label %180, !dbg !3287

; <label>:175:                                    ; preds = %166
  %176 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3288
  %177 = getelementptr inbounds %struct._interface, %struct._interface* %176, i32 0, i32 4, !dbg !3290
  store i32 0, i32* %177, align 8, !dbg !3291
  %178 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3292
  %179 = getelementptr inbounds %struct._interface, %struct._interface* %178, i32 0, i32 1, !dbg !3293
  store i32 0, i32* %179, align 8, !dbg !3294
  br label %180

; <label>:180:                                    ; preds = %175, %173
  %181 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3295
  %182 = getelementptr inbounds %struct._interface, %struct._interface* %181, i32 0, i32 26, !dbg !3297
  %183 = load %struct._list*, %struct._list** %182, align 8, !dbg !3297
  %184 = icmp eq %struct._list* %183, null, !dbg !3298
  br i1 %184, label %217, label %185, !dbg !3299

; <label>:185:                                    ; preds = %180
  %186 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3300
  %187 = getelementptr inbounds %struct._interface, %struct._interface* %186, i32 0, i32 26, !dbg !3302
  %188 = load %struct._list*, %struct._list** %187, align 8, !dbg !3302
  %189 = getelementptr inbounds %struct._list, %struct._list* %188, i32 0, i32 0, !dbg !3303
  %190 = load %struct._element*, %struct._element** %189, align 8, !dbg !3303
  %191 = icmp eq %struct._element* %190, null, !dbg !3304
  br i1 %191, label %192, label %199, !dbg !3305

; <label>:192:                                    ; preds = %185
  %193 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3306
  %194 = getelementptr inbounds %struct._interface, %struct._interface* %193, i32 0, i32 26, !dbg !3308
  %195 = load %struct._list*, %struct._list** %194, align 8, !dbg !3308
  %196 = getelementptr inbounds %struct._list, %struct._list* %195, i32 0, i32 1, !dbg !3309
  %197 = load %struct._element*, %struct._element** %196, align 8, !dbg !3309
  %198 = icmp eq %struct._element* %197, null, !dbg !3310
  br i1 %198, label %217, label %199, !dbg !3311

; <label>:199:                                    ; preds = %192, %185
  %200 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3312
  %201 = getelementptr inbounds %struct._interface, %struct._interface* %200, i32 0, i32 12, !dbg !3314
  %202 = load i8, i8* %201, align 4, !dbg !3314
  %203 = trunc i8 %202 to i1, !dbg !3314
  br i1 %203, label %204, label %217, !dbg !3315

; <label>:204:                                    ; preds = %199
  %205 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3316
  %206 = getelementptr inbounds %struct._interface, %struct._interface* %205, i32 0, i32 14, !dbg !3319
  %207 = load %struct._interface*, %struct._interface** %206, align 8, !dbg !3319
  %208 = getelementptr inbounds %struct._interface, %struct._interface* %207, i32 0, i32 1, !dbg !3320
  %209 = load i32, i32* %208, align 8, !dbg !3320
  %210 = icmp ne i32 %209, 0, !dbg !3316
  br i1 %210, label %211, label %216, !dbg !3321

; <label>:211:                                    ; preds = %204
  %212 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !3322
  %213 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3323
  %214 = bitcast %struct._interface* %213 to i8*, !dbg !3323
  %215 = call %struct._thread* @thread_add_event(%struct._thread_master* %212, i32 (%struct._thread*)* @recreate_vmac_thread, i8* %214, i32 0), !dbg !3324
  br label %216, !dbg !3324

; <label>:216:                                    ; preds = %211, %204
  br label %218, !dbg !3325

; <label>:217:                                    ; preds = %199, %192, %180
  store %struct._interface* null, %struct._interface** %8, align 8, !dbg !3326
  br label %218

; <label>:218:                                    ; preds = %217, %216
  br label %226, !dbg !3327

; <label>:219:                                    ; preds = %159
  %220 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3328
  %221 = getelementptr inbounds %struct._interface, %struct._interface* %220, i32 0, i32 5, !dbg !3331
  %222 = load i8, i8* %221, align 4, !dbg !3331
  %223 = trunc i8 %222 to i1, !dbg !3331
  br i1 %223, label %224, label %225, !dbg !3328

; <label>:224:                                    ; preds = %219
  store i32 0, i32* %3, align 4, !dbg !3332
  br label %289, !dbg !3332

; <label>:225:                                    ; preds = %219
  br label %226

; <label>:226:                                    ; preds = %225, %218
  br label %227

; <label>:227:                                    ; preds = %226, %158
  br label %228, !dbg !3334

; <label>:228:                                    ; preds = %227, %74
  %229 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3335
  %230 = icmp ne %struct._interface* %229, null, !dbg !3335
  br i1 %230, label %275, label %231, !dbg !3337

; <label>:231:                                    ; preds = %228
  %232 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !3338
  %233 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %232, i32 0, i32 1, !dbg !3341
  %234 = load i16, i16* %233, align 4, !dbg !3341
  %235 = zext i16 %234 to i32, !dbg !3338
  %236 = icmp eq i32 %235, 16, !dbg !3342
  br i1 %236, label %237, label %267, !dbg !3343

; <label>:237:                                    ; preds = %231
  %238 = load i8*, i8** %10, align 8, !dbg !3344
  %239 = call %struct._interface* @if_get_by_ifname(i8* %238, i32 3), !dbg !3346
  store %struct._interface* %239, %struct._interface** %8, align 8, !dbg !3347
  call void @llvm.dbg.declare(metadata %struct._garp_delay** %11, metadata !3348, metadata !669), !dbg !3349
  %240 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3350
  %241 = getelementptr inbounds %struct._interface, %struct._interface* %240, i32 0, i32 18, !dbg !3351
  %242 = load %struct._garp_delay*, %struct._garp_delay** %241, align 8, !dbg !3351
  store %struct._garp_delay* %242, %struct._garp_delay** %11, align 8, !dbg !3349
  call void @llvm.dbg.declare(metadata %struct._list** %12, metadata !3352, metadata !669), !dbg !3353
  %243 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3354
  %244 = getelementptr inbounds %struct._interface, %struct._interface* %243, i32 0, i32 26, !dbg !3355
  %245 = load %struct._list*, %struct._list** %244, align 8, !dbg !3355
  store %struct._list* %245, %struct._list** %12, align 8, !dbg !3353
  %246 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3356
  %247 = bitcast %struct._interface* %246 to i8*, !dbg !3357
  call void @llvm.memset.p0i8.i64(i8* %247, i8 0, i64 224, i32 8, i1 false), !dbg !3357
  %248 = load %struct._garp_delay*, %struct._garp_delay** %11, align 8, !dbg !3358
  %249 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3359
  %250 = getelementptr inbounds %struct._interface, %struct._interface* %249, i32 0, i32 18, !dbg !3360
  store %struct._garp_delay* %248, %struct._garp_delay** %250, align 8, !dbg !3361
  %251 = load %struct._list*, %struct._list** %12, align 8, !dbg !3362
  %252 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3363
  %253 = getelementptr inbounds %struct._interface, %struct._interface* %252, i32 0, i32 26, !dbg !3364
  store %struct._list* %251, %struct._list** %253, align 8, !dbg !3365
  %254 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3366
  %255 = getelementptr inbounds [40 x %struct.rtattr*], [40 x %struct.rtattr*]* %7, i32 0, i32 0, !dbg !3368
  %256 = load %struct.ifinfomsg*, %struct.ifinfomsg** %6, align 8, !dbg !3369
  %257 = call zeroext i1 @netlink_if_link_populate(%struct._interface* %254, %struct.rtattr** %255, %struct.ifinfomsg* %256), !dbg !3370
  br i1 %257, label %259, label %258, !dbg !3371

; <label>:258:                                    ; preds = %237
  store i32 -1, i32* %3, align 4, !dbg !3372
  br label %289, !dbg !3372

; <label>:259:                                    ; preds = %237
  %260 = call zeroext i1 @__test_bit(i32 7, i64* @debug), !dbg !3373
  br i1 %260, label %261, label %265, !dbg !3375

; <label>:261:                                    ; preds = %259
  %262 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3376
  %263 = getelementptr inbounds %struct._interface, %struct._interface* %262, i32 0, i32 0, !dbg !3377
  %264 = getelementptr inbounds [16 x i8], [16 x i8]* %263, i32 0, i32 0, !dbg !3376
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0), i8* %264), !dbg !3378
  br label %265, !dbg !3378

; <label>:265:                                    ; preds = %261, %259
  %266 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3379
  call void @update_added_interface(%struct._interface* %266), !dbg !3380
  br label %274, !dbg !3381

; <label>:267:                                    ; preds = %231
  %268 = call zeroext i1 @__test_bit(i32 7, i64* @debug), !dbg !3382
  br i1 %268, label %269, label %273, !dbg !3385

; <label>:269:                                    ; preds = %267
  %270 = getelementptr inbounds [40 x %struct.rtattr*], [40 x %struct.rtattr*]* %7, i64 0, i64 3, !dbg !3386
  %271 = load %struct.rtattr*, %struct.rtattr** %270, align 8, !dbg !3386
  %272 = bitcast %struct.rtattr* %271 to i8*, !dbg !3387
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i32 0, i32 0), i8* %272), !dbg !3388
  br label %273, !dbg !3388

; <label>:273:                                    ; preds = %269, %267
  store i32 0, i32* %3, align 4, !dbg !3389
  br label %289, !dbg !3389

; <label>:274:                                    ; preds = %265
  br label %275, !dbg !3390

; <label>:275:                                    ; preds = %274, %228
  %276 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3391
  %277 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !3392
  %278 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %277, i32 0, i32 1, !dbg !3393
  %279 = load i16, i16* %278, align 4, !dbg !3393
  %280 = zext i16 %279 to i32, !dbg !3392
  %281 = icmp eq i32 %280, 17, !dbg !3394
  br i1 %281, label %282, label %283, !dbg !3395

; <label>:282:                                    ; preds = %275
  br label %287, !dbg !3396

; <label>:283:                                    ; preds = %275
  %284 = load %struct.ifinfomsg*, %struct.ifinfomsg** %6, align 8, !dbg !3398
  %285 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %284, i32 0, i32 4, !dbg !3400
  %286 = load i32, i32* %285, align 4, !dbg !3400
  br label %287, !dbg !3401

; <label>:287:                                    ; preds = %283, %282
  %288 = phi i32 [ 0, %282 ], [ %286, %283 ], !dbg !3402
  call void @update_interface_flags(%struct._interface* %276, i32 %288), !dbg !3404
  store i32 0, i32* %3, align 4, !dbg !3405
  br label %289, !dbg !3405

; <label>:289:                                    ; preds = %287, %273, %258, %224, %73, %53, %31, %24
  %290 = load i32, i32* %3, align 4, !dbg !3406
  ret i32 %290, !dbg !3406
}

; Function Attrs: nounwind uwtable
define internal i32 @netlink_if_address_filter(%struct.sockaddr_nl*, %struct.nlmsghdr*) #0 !dbg !3407 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_nl*, align 8
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca %struct.ifaddrmsg*, align 8
  %7 = alloca [9 x %struct.rtattr*], align 16
  %8 = alloca %struct._interface*, align 8
  %9 = alloca %struct._ip_address*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %union.anon.6, align 8
  %12 = alloca [46 x i8], align 16
  %13 = alloca i8, align 1
  %14 = alloca %struct._element*, align 8
  %15 = alloca %struct._vrrp_t*, align 8
  %16 = alloca %struct._vrrp_t*, align 8
  %17 = alloca %struct._tracking_vrrp*, align 8
  %18 = alloca i8, align 1
  store %struct.sockaddr_nl* %0, %struct.sockaddr_nl** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr_nl** %4, metadata !3408, metadata !669), !dbg !3409
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.nlmsghdr** %5, metadata !3410, metadata !669), !dbg !3411
  call void @llvm.dbg.declare(metadata %struct.ifaddrmsg** %6, metadata !3412, metadata !669), !dbg !3422
  call void @llvm.dbg.declare(metadata [9 x %struct.rtattr*]* %7, metadata !3423, metadata !669), !dbg !3427
  call void @llvm.dbg.declare(metadata %struct._interface** %8, metadata !3428, metadata !669), !dbg !3429
  call void @llvm.dbg.declare(metadata %struct._ip_address** %9, metadata !3430, metadata !669), !dbg !3469
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3470, metadata !669), !dbg !3471
  call void @llvm.dbg.declare(metadata %union.anon.6* %11, metadata !3472, metadata !669), !dbg !3478
  call void @llvm.dbg.declare(metadata [46 x i8]* %12, metadata !3479, metadata !669), !dbg !3483
  call void @llvm.dbg.declare(metadata i8* %13, metadata !3484, metadata !669), !dbg !3485
  store i8 0, i8* %13, align 1, !dbg !3485
  call void @llvm.dbg.declare(metadata %struct._element** %14, metadata !3486, metadata !669), !dbg !3487
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %15, metadata !3488, metadata !669), !dbg !3489
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %16, metadata !3490, metadata !669), !dbg !3491
  call void @llvm.dbg.declare(metadata %struct._tracking_vrrp** %17, metadata !3492, metadata !669), !dbg !3493
  call void @llvm.dbg.declare(metadata i8* %18, metadata !3494, metadata !669), !dbg !3495
  %19 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !3496
  %20 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %19, i32 0, i32 1, !dbg !3498
  %21 = load i16, i16* %20, align 4, !dbg !3498
  %22 = zext i16 %21 to i32, !dbg !3496
  %23 = icmp ne i32 %22, 20, !dbg !3499
  br i1 %23, label %24, label %31, !dbg !3500

; <label>:24:                                     ; preds = %2
  %25 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !3501
  %26 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %25, i32 0, i32 1, !dbg !3503
  %27 = load i16, i16* %26, align 4, !dbg !3503
  %28 = zext i16 %27 to i32, !dbg !3501
  %29 = icmp ne i32 %28, 21, !dbg !3504
  br i1 %29, label %30, label %31, !dbg !3505

; <label>:30:                                     ; preds = %24
  store i32 0, i32* %3, align 4, !dbg !3506
  br label %983, !dbg !3506

; <label>:31:                                     ; preds = %24, %2
  %32 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !3507
  %33 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %32, i32 0, i32 0, !dbg !3509
  %34 = load i32, i32* %33, align 4, !dbg !3509
  %35 = zext i32 %34 to i64, !dbg !3507
  %36 = icmp ult i64 %35, 24, !dbg !3510
  br i1 %36, label %37, label %38, !dbg !3511

; <label>:37:                                     ; preds = %31
  store i32 -1, i32* %3, align 4, !dbg !3512
  br label %983, !dbg !3512

; <label>:38:                                     ; preds = %31
  %39 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !3513
  %40 = bitcast %struct.nlmsghdr* %39 to i8*, !dbg !3514
  %41 = getelementptr inbounds i8, i8* %40, i64 16, !dbg !3515
  %42 = bitcast i8* %41 to %struct.ifaddrmsg*, !dbg !3513
  store %struct.ifaddrmsg* %42, %struct.ifaddrmsg** %6, align 8, !dbg !3516
  %43 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %6, align 8, !dbg !3517
  %44 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %43, i32 0, i32 0, !dbg !3519
  %45 = load i8, i8* %44, align 4, !dbg !3519
  %46 = zext i8 %45 to i32, !dbg !3517
  %47 = icmp ne i32 %46, 2, !dbg !3520
  br i1 %47, label %48, label %55, !dbg !3521

; <label>:48:                                     ; preds = %38
  %49 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %6, align 8, !dbg !3522
  %50 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %49, i32 0, i32 0, !dbg !3524
  %51 = load i8, i8* %50, align 4, !dbg !3524
  %52 = zext i8 %51 to i32, !dbg !3522
  %53 = icmp ne i32 %52, 10, !dbg !3525
  br i1 %53, label %54, label %55, !dbg !3526

; <label>:54:                                     ; preds = %48
  store i32 0, i32* %3, align 4, !dbg !3527
  br label %983, !dbg !3527

; <label>:55:                                     ; preds = %48, %38
  %56 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !3528
  %57 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %56, i32 0, i32 0, !dbg !3529
  %58 = load i32, i32* %57, align 4, !dbg !3529
  %59 = zext i32 %58 to i64, !dbg !3528
  %60 = sub i64 %59, 24, !dbg !3530
  store i64 %60, i64* %10, align 8, !dbg !3531
  %61 = getelementptr inbounds [9 x %struct.rtattr*], [9 x %struct.rtattr*]* %7, i32 0, i32 0, !dbg !3532
  %62 = bitcast %struct.rtattr** %61 to i8*, !dbg !3532
  call void @llvm.memset.p0i8.i64(i8* %62, i8 0, i64 72, i32 16, i1 false), !dbg !3532
  %63 = getelementptr inbounds [9 x %struct.rtattr*], [9 x %struct.rtattr*]* %7, i32 0, i32 0, !dbg !3533
  %64 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %6, align 8, !dbg !3534
  %65 = bitcast %struct.ifaddrmsg* %64 to i8*, !dbg !3535
  %66 = getelementptr inbounds i8, i8* %65, i64 8, !dbg !3536
  %67 = bitcast i8* %66 to %struct.rtattr*, !dbg !3537
  %68 = load i64, i64* %10, align 8, !dbg !3538
  call void @parse_rtattr(%struct.rtattr** %63, i32 8, %struct.rtattr* %67, i64 %68), !dbg !3539
  %69 = getelementptr inbounds [9 x %struct.rtattr*], [9 x %struct.rtattr*]* %7, i64 0, i64 2, !dbg !3540
  %70 = load %struct.rtattr*, %struct.rtattr** %69, align 16, !dbg !3540
  %71 = icmp eq %struct.rtattr* %70, null, !dbg !3542
  br i1 %71, label %72, label %76, !dbg !3543

; <label>:72:                                     ; preds = %55
  %73 = getelementptr inbounds [9 x %struct.rtattr*], [9 x %struct.rtattr*]* %7, i64 0, i64 1, !dbg !3544
  %74 = load %struct.rtattr*, %struct.rtattr** %73, align 8, !dbg !3544
  %75 = getelementptr inbounds [9 x %struct.rtattr*], [9 x %struct.rtattr*]* %7, i64 0, i64 2, !dbg !3545
  store %struct.rtattr* %74, %struct.rtattr** %75, align 16, !dbg !3546
  br label %76, !dbg !3545

; <label>:76:                                     ; preds = %72, %55
  %77 = getelementptr inbounds [9 x %struct.rtattr*], [9 x %struct.rtattr*]* %7, i64 0, i64 1, !dbg !3547
  %78 = load %struct.rtattr*, %struct.rtattr** %77, align 8, !dbg !3547
  %79 = icmp eq %struct.rtattr* %78, null, !dbg !3549
  br i1 %79, label %80, label %84, !dbg !3550

; <label>:80:                                     ; preds = %76
  %81 = getelementptr inbounds [9 x %struct.rtattr*], [9 x %struct.rtattr*]* %7, i64 0, i64 2, !dbg !3551
  %82 = load %struct.rtattr*, %struct.rtattr** %81, align 16, !dbg !3551
  %83 = getelementptr inbounds [9 x %struct.rtattr*], [9 x %struct.rtattr*]* %7, i64 0, i64 1, !dbg !3552
  store %struct.rtattr* %82, %struct.rtattr** %83, align 8, !dbg !3553
  br label %84, !dbg !3552

; <label>:84:                                     ; preds = %80, %76
  %85 = getelementptr inbounds [9 x %struct.rtattr*], [9 x %struct.rtattr*]* %7, i64 0, i64 2, !dbg !3554
  %86 = load %struct.rtattr*, %struct.rtattr** %85, align 16, !dbg !3554
  %87 = icmp ne %struct.rtattr* %86, null, !dbg !3554
  br i1 %87, label %88, label %93, !dbg !3554

; <label>:88:                                     ; preds = %84
  %89 = getelementptr inbounds [9 x %struct.rtattr*], [9 x %struct.rtattr*]* %7, i64 0, i64 2, !dbg !3555
  %90 = load %struct.rtattr*, %struct.rtattr** %89, align 16, !dbg !3555
  %91 = bitcast %struct.rtattr* %90 to i8*, !dbg !3557
  %92 = getelementptr inbounds i8, i8* %91, i64 4, !dbg !3558
  br label %94, !dbg !3559

; <label>:93:                                     ; preds = %84
  br label %94, !dbg !3560

; <label>:94:                                     ; preds = %93, %88
  %95 = phi i8* [ %92, %88 ], [ null, %93 ], !dbg !3562
  %96 = bitcast %union.anon.6* %11 to i8**, !dbg !3564
  store i8* %95, i8** %96, align 8, !dbg !3565
  %97 = bitcast %union.anon.6* %11 to i8**, !dbg !3566
  %98 = load i8*, i8** %97, align 8, !dbg !3566
  %99 = icmp eq i8* %98, null, !dbg !3568
  br i1 %99, label %100, label %101, !dbg !3569

; <label>:100:                                    ; preds = %94
  store i32 -1, i32* %3, align 4, !dbg !3570
  br label %983, !dbg !3570

; <label>:101:                                    ; preds = %94
  %102 = load i32, i32* @prog_type, align 4, !dbg !3571
  %103 = icmp eq i32 %102, 1, !dbg !3573
  br i1 %103, label %106, label %104, !dbg !3574

; <label>:104:                                    ; preds = %101
  %105 = call zeroext i1 @__test_bit(i32 11, i64* @debug), !dbg !3575
  br i1 %105, label %106, label %967, !dbg !3577

; <label>:106:                                    ; preds = %104, %101
  %107 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %6, align 8, !dbg !3578
  %108 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %107, i32 0, i32 4, !dbg !3580
  %109 = load i32, i32* %108, align 4, !dbg !3580
  %110 = call %struct._interface* @if_get_by_ifindex(i32 %109), !dbg !3581
  store %struct._interface* %110, %struct._interface** %8, align 8, !dbg !3582
  %111 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3583
  %112 = icmp ne %struct._interface* %111, null, !dbg !3583
  br i1 %112, label %114, label %113, !dbg !3585

; <label>:113:                                    ; preds = %106
  store i32 0, i32* %3, align 4, !dbg !3586
  br label %983, !dbg !3586

; <label>:114:                                    ; preds = %106
  %115 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3587
  %116 = getelementptr inbounds %struct._interface, %struct._interface* %115, i32 0, i32 12, !dbg !3589
  %117 = load i8, i8* %116, align 4, !dbg !3589
  %118 = trunc i8 %117 to i1, !dbg !3589
  br i1 %118, label %119, label %125, !dbg !3590

; <label>:119:                                    ; preds = %114
  %120 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %6, align 8, !dbg !3591
  %121 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %120, i32 0, i32 0, !dbg !3593
  %122 = load i8, i8* %121, align 4, !dbg !3593
  %123 = zext i8 %122 to i32, !dbg !3591
  %124 = icmp eq i32 %123, 10, !dbg !3594
  br i1 %124, label %125, label %835, !dbg !3595

; <label>:125:                                    ; preds = %119, %114
  %126 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !3596
  %127 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %126, i32 0, i32 1, !dbg !3599
  %128 = load i16, i16* %127, align 4, !dbg !3599
  %129 = zext i16 %128 to i32, !dbg !3596
  %130 = icmp eq i32 %129, 20, !dbg !3600
  br i1 %130, label %131, label %429, !dbg !3601

; <label>:131:                                    ; preds = %125
  %132 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %6, align 8, !dbg !3602
  %133 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %132, i32 0, i32 0, !dbg !3605
  %134 = load i8, i8* %133, align 4, !dbg !3605
  %135 = zext i8 %134 to i32, !dbg !3602
  %136 = icmp eq i32 %135, 2, !dbg !3606
  br i1 %136, label %137, label %171, !dbg !3607

; <label>:137:                                    ; preds = %131
  %138 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3608
  %139 = getelementptr inbounds %struct._interface, %struct._interface* %138, i32 0, i32 2, !dbg !3611
  %140 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %139, i32 0, i32 0, !dbg !3612
  %141 = load i32, i32* %140, align 4, !dbg !3612
  %142 = icmp ne i32 %141, 0, !dbg !3608
  br i1 %142, label %170, label %143, !dbg !3613

; <label>:143:                                    ; preds = %137
  %144 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3614
  %145 = getelementptr inbounds %struct._interface, %struct._interface* %144, i32 0, i32 2, !dbg !3616
  %146 = bitcast %union.anon.6* %11 to %struct.in_addr**, !dbg !3617
  %147 = load %struct.in_addr*, %struct.in_addr** %146, align 8, !dbg !3617
  %148 = bitcast %struct.in_addr* %145 to i8*, !dbg !3618
  %149 = bitcast %struct.in_addr* %147 to i8*, !dbg !3618
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %148, i8* %149, i64 4, i32 4, i1 false), !dbg !3618
  %150 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3619
  %151 = getelementptr inbounds %struct._interface, %struct._interface* %150, i32 0, i32 26, !dbg !3621
  %152 = load %struct._list*, %struct._list** %151, align 8, !dbg !3621
  %153 = icmp eq %struct._list* %152, null, !dbg !3622
  br i1 %153, label %169, label %154, !dbg !3623

; <label>:154:                                    ; preds = %143
  %155 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3624
  %156 = getelementptr inbounds %struct._interface, %struct._interface* %155, i32 0, i32 26, !dbg !3626
  %157 = load %struct._list*, %struct._list** %156, align 8, !dbg !3626
  %158 = getelementptr inbounds %struct._list, %struct._list* %157, i32 0, i32 0, !dbg !3627
  %159 = load %struct._element*, %struct._element** %158, align 8, !dbg !3627
  %160 = icmp eq %struct._element* %159, null, !dbg !3628
  br i1 %160, label %161, label %168, !dbg !3629

; <label>:161:                                    ; preds = %154
  %162 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3630
  %163 = getelementptr inbounds %struct._interface, %struct._interface* %162, i32 0, i32 26, !dbg !3632
  %164 = load %struct._list*, %struct._list** %163, align 8, !dbg !3632
  %165 = getelementptr inbounds %struct._list, %struct._list* %164, i32 0, i32 1, !dbg !3633
  %166 = load %struct._element*, %struct._element** %165, align 8, !dbg !3633
  %167 = icmp eq %struct._element* %166, null, !dbg !3634
  br i1 %167, label %169, label %168, !dbg !3635

; <label>:168:                                    ; preds = %161, %154
  store i8 1, i8* %13, align 1, !dbg !3636
  br label %169, !dbg !3637

; <label>:169:                                    ; preds = %168, %161, %143
  br label %170, !dbg !3638

; <label>:170:                                    ; preds = %169, %137
  br label %214, !dbg !3639

; <label>:171:                                    ; preds = %131
  %172 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %6, align 8, !dbg !3640
  %173 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %172, i32 0, i32 3, !dbg !3643
  %174 = load i8, i8* %173, align 1, !dbg !3643
  %175 = zext i8 %174 to i32, !dbg !3640
  %176 = icmp eq i32 %175, 253, !dbg !3644
  br i1 %176, label %177, label %213, !dbg !3645

; <label>:177:                                    ; preds = %171
  %178 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3646
  %179 = getelementptr inbounds %struct._interface, %struct._interface* %178, i32 0, i32 3, !dbg !3649
  %180 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %179, i32 0, i32 0, !dbg !3650
  %181 = bitcast %union.anon.1* %180 to [4 x i32]*, !dbg !3651
  %182 = getelementptr inbounds [4 x i32], [4 x i32]* %181, i64 0, i64 0, !dbg !3646
  %183 = load i32, i32* %182, align 8, !dbg !3646
  %184 = icmp ne i32 %183, 0, !dbg !3646
  br i1 %184, label %212, label %185, !dbg !3652

; <label>:185:                                    ; preds = %177
  %186 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3653
  %187 = getelementptr inbounds %struct._interface, %struct._interface* %186, i32 0, i32 3, !dbg !3655
  %188 = bitcast %union.anon.6* %11 to %struct.in6_addr**, !dbg !3656
  %189 = load %struct.in6_addr*, %struct.in6_addr** %188, align 8, !dbg !3656
  %190 = bitcast %struct.in6_addr* %187 to i8*, !dbg !3657
  %191 = bitcast %struct.in6_addr* %189 to i8*, !dbg !3657
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %190, i8* %191, i64 16, i32 4, i1 false), !dbg !3657
  %192 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3658
  %193 = getelementptr inbounds %struct._interface, %struct._interface* %192, i32 0, i32 26, !dbg !3660
  %194 = load %struct._list*, %struct._list** %193, align 8, !dbg !3660
  %195 = icmp eq %struct._list* %194, null, !dbg !3661
  br i1 %195, label %211, label %196, !dbg !3662

; <label>:196:                                    ; preds = %185
  %197 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3663
  %198 = getelementptr inbounds %struct._interface, %struct._interface* %197, i32 0, i32 26, !dbg !3665
  %199 = load %struct._list*, %struct._list** %198, align 8, !dbg !3665
  %200 = getelementptr inbounds %struct._list, %struct._list* %199, i32 0, i32 0, !dbg !3666
  %201 = load %struct._element*, %struct._element** %200, align 8, !dbg !3666
  %202 = icmp eq %struct._element* %201, null, !dbg !3667
  br i1 %202, label %203, label %210, !dbg !3668

; <label>:203:                                    ; preds = %196
  %204 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3669
  %205 = getelementptr inbounds %struct._interface, %struct._interface* %204, i32 0, i32 26, !dbg !3671
  %206 = load %struct._list*, %struct._list** %205, align 8, !dbg !3671
  %207 = getelementptr inbounds %struct._list, %struct._list* %206, i32 0, i32 1, !dbg !3672
  %208 = load %struct._element*, %struct._element** %207, align 8, !dbg !3672
  %209 = icmp eq %struct._element* %208, null, !dbg !3673
  br i1 %209, label %211, label %210, !dbg !3674

; <label>:210:                                    ; preds = %203, %196
  store i8 1, i8* %13, align 1, !dbg !3675
  br label %211, !dbg !3676

; <label>:211:                                    ; preds = %210, %203, %185
  br label %212, !dbg !3677

; <label>:212:                                    ; preds = %211, %177
  br label %213, !dbg !3678

; <label>:213:                                    ; preds = %212, %171
  br label %214

; <label>:214:                                    ; preds = %213, %170
  %215 = load i8, i8* %13, align 1, !dbg !3679
  %216 = trunc i8 %215 to i1, !dbg !3679
  br i1 %216, label %217, label %428, !dbg !3681

; <label>:217:                                    ; preds = %214
  %218 = call zeroext i1 @__test_bit(i32 7, i64* @debug), !dbg !3682
  br i1 %218, label %219, label %232, !dbg !3685

; <label>:219:                                    ; preds = %217
  %220 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %6, align 8, !dbg !3686
  %221 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %220, i32 0, i32 0, !dbg !3688
  %222 = load i8, i8* %221, align 4, !dbg !3688
  %223 = zext i8 %222 to i32, !dbg !3686
  %224 = bitcast %union.anon.6* %11 to i8**, !dbg !3689
  %225 = load i8*, i8** %224, align 8, !dbg !3689
  %226 = getelementptr inbounds [46 x i8], [46 x i8]* %12, i32 0, i32 0, !dbg !3690
  %227 = call i8* @inet_ntop(i32 %223, i8* %225, i8* %226, i32 46) #6, !dbg !3691
  %228 = getelementptr inbounds [46 x i8], [46 x i8]* %12, i32 0, i32 0, !dbg !3692
  %229 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3693
  %230 = getelementptr inbounds %struct._interface, %struct._interface* %229, i32 0, i32 0, !dbg !3694
  %231 = getelementptr inbounds [16 x i8], [16 x i8]* %230, i32 0, i32 0, !dbg !3693
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.35, i32 0, i32 0), i8* %228, i8* %231), !dbg !3695
  br label %232, !dbg !3696

; <label>:232:                                    ; preds = %219, %217
  %233 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3697
  %234 = getelementptr inbounds %struct._interface, %struct._interface* %233, i32 0, i32 26, !dbg !3699
  %235 = load %struct._list*, %struct._list** %234, align 8, !dbg !3699
  %236 = icmp ne %struct._list* %235, null, !dbg !3700
  br i1 %236, label %238, label %237, !dbg !3701

; <label>:237:                                    ; preds = %232
  br label %244, !dbg !3702

; <label>:238:                                    ; preds = %232
  %239 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3704
  %240 = getelementptr inbounds %struct._interface, %struct._interface* %239, i32 0, i32 26, !dbg !3706
  %241 = load %struct._list*, %struct._list** %240, align 8, !dbg !3706
  %242 = getelementptr inbounds %struct._list, %struct._list* %241, i32 0, i32 0, !dbg !3707
  %243 = load %struct._element*, %struct._element** %242, align 8, !dbg !3707
  br label %244, !dbg !3708

; <label>:244:                                    ; preds = %238, %237
  %245 = phi %struct._element* [ null, %237 ], [ %243, %238 ], !dbg !3709
  store %struct._element* %245, %struct._element** %14, align 8, !dbg !3711
  br label %246, !dbg !3712

; <label>:246:                                    ; preds = %423, %244
  %247 = load %struct._element*, %struct._element** %14, align 8, !dbg !3713
  %248 = icmp ne %struct._element* %247, null, !dbg !3716
  br i1 %248, label %249, label %427, !dbg !3716

; <label>:249:                                    ; preds = %246
  %250 = load %struct._element*, %struct._element** %14, align 8, !dbg !3717
  %251 = getelementptr inbounds %struct._element, %struct._element* %250, i32 0, i32 2, !dbg !3719
  %252 = load i8*, i8** %251, align 8, !dbg !3719
  %253 = bitcast i8* %252 to %struct._tracking_vrrp*, !dbg !3720
  store %struct._tracking_vrrp* %253, %struct._tracking_vrrp** %17, align 8, !dbg !3721
  %254 = load %struct._tracking_vrrp*, %struct._tracking_vrrp** %17, align 8, !dbg !3722
  %255 = getelementptr inbounds %struct._tracking_vrrp, %struct._tracking_vrrp* %254, i32 0, i32 1, !dbg !3723
  %256 = load %struct._vrrp_t*, %struct._vrrp_t** %255, align 8, !dbg !3723
  store %struct._vrrp_t* %256, %struct._vrrp_t** %15, align 8, !dbg !3724
  store i8 0, i8* %18, align 1, !dbg !3725
  %257 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !3726
  %258 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %257, i32 0, i32 18, !dbg !3728
  %259 = load i8, i8* %258, align 1, !dbg !3728
  %260 = trunc i8 %259 to i1, !dbg !3728
  br i1 %260, label %261, label %284, !dbg !3729

; <label>:261:                                    ; preds = %249
  %262 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !3730
  %263 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %262, i32 0, i32 0, !dbg !3733
  %264 = load i16, i16* %263, align 8, !dbg !3733
  %265 = zext i16 %264 to i32, !dbg !3730
  %266 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %6, align 8, !dbg !3734
  %267 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %266, i32 0, i32 0, !dbg !3735
  %268 = load i8, i8* %267, align 4, !dbg !3735
  %269 = zext i8 %268 to i32, !dbg !3734
  %270 = icmp eq i32 %265, %269, !dbg !3736
  br i1 %270, label %271, label %283, !dbg !3737

; <label>:271:                                    ; preds = %261
  %272 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %6, align 8, !dbg !3738
  %273 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %272, i32 0, i32 0, !dbg !3739
  %274 = load i8, i8* %273, align 4, !dbg !3739
  %275 = zext i8 %274 to i16, !dbg !3738
  %276 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !3740
  %277 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %276, i32 0, i32 16, !dbg !3741
  %278 = bitcast %struct.sockaddr_storage* %277 to i8*, !dbg !3742
  %279 = bitcast %union.anon.6* %11 to i8**, !dbg !3743
  %280 = load i8*, i8** %279, align 8, !dbg !3743
  %281 = call zeroext i1 @inaddr_equal(i16 zeroext %275, i8* %278, i8* %280), !dbg !3744
  %282 = zext i1 %281 to i8, !dbg !3745
  store i8 %282, i8* %18, align 1, !dbg !3745
  br label %283, !dbg !3746

; <label>:283:                                    ; preds = %271, %261
  br label %284, !dbg !3747

; <label>:284:                                    ; preds = %283, %249
  %285 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3748
  %286 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !3750
  %287 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %286, i32 0, i32 0, !dbg !3751
  %288 = load i16, i16* %287, align 8, !dbg !3751
  %289 = zext i16 %288 to i32, !dbg !3750
  %290 = icmp eq i32 %289, 2, !dbg !3752
  br i1 %290, label %291, label %297, !dbg !3750

; <label>:291:                                    ; preds = %284
  %292 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !3753
  %293 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %292, i32 0, i32 4, !dbg !3755
  %294 = load %struct._interface*, %struct._interface** %293, align 8, !dbg !3755
  %295 = getelementptr inbounds %struct._interface, %struct._interface* %294, i32 0, i32 14, !dbg !3756
  %296 = load %struct._interface*, %struct._interface** %295, align 8, !dbg !3756
  br label %301, !dbg !3757

; <label>:297:                                    ; preds = %284
  %298 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !3758
  %299 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %298, i32 0, i32 4, !dbg !3760
  %300 = load %struct._interface*, %struct._interface** %299, align 8, !dbg !3760
  br label %301, !dbg !3761

; <label>:301:                                    ; preds = %297, %291
  %302 = phi %struct._interface* [ %296, %291 ], [ %300, %297 ], !dbg !3762
  %303 = icmp eq %struct._interface* %285, %302, !dbg !3764
  br i1 %303, label %304, label %352, !dbg !3765

; <label>:304:                                    ; preds = %301
  %305 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !3766
  %306 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %305, i32 0, i32 14, !dbg !3767
  %307 = load i32, i32* %306, align 8, !dbg !3767
  %308 = icmp ne i32 %307, 0, !dbg !3766
  br i1 %308, label %309, label %352, !dbg !3768

; <label>:309:                                    ; preds = %304
  %310 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !3769
  %311 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %310, i32 0, i32 0, !dbg !3770
  %312 = load i16, i16* %311, align 8, !dbg !3770
  %313 = zext i16 %312 to i32, !dbg !3769
  %314 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %6, align 8, !dbg !3771
  %315 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %314, i32 0, i32 0, !dbg !3772
  %316 = load i8, i8* %315, align 4, !dbg !3772
  %317 = zext i8 %316 to i32, !dbg !3771
  %318 = icmp eq i32 %313, %317, !dbg !3773
  br i1 %318, label %319, label %352, !dbg !3774

; <label>:319:                                    ; preds = %309
  %320 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !3775
  %321 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %320, i32 0, i32 16, !dbg !3776
  %322 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %321, i32 0, i32 0, !dbg !3777
  %323 = load i16, i16* %322, align 8, !dbg !3777
  %324 = zext i16 %323 to i32, !dbg !3775
  %325 = icmp eq i32 %324, 0, !dbg !3778
  br i1 %325, label %326, label %352, !dbg !3779

; <label>:326:                                    ; preds = %319
  %327 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !3780
  %328 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %327, i32 0, i32 17, !dbg !3781
  %329 = load i8, i8* %328, align 8, !dbg !3781
  %330 = trunc i8 %329 to i1, !dbg !3781
  br i1 %330, label %331, label %334, !dbg !3782

; <label>:331:                                    ; preds = %326
  %332 = load i8, i8* %18, align 1, !dbg !3783
  %333 = trunc i8 %332 to i1, !dbg !3783
  br i1 %333, label %334, label %352, !dbg !3784

; <label>:334:                                    ; preds = %331, %326
  %335 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %6, align 8, !dbg !3786
  %336 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %335, i32 0, i32 0, !dbg !3789
  %337 = load i8, i8* %336, align 4, !dbg !3789
  %338 = zext i8 %337 to i32, !dbg !3786
  %339 = icmp eq i32 %338, 2, !dbg !3790
  br i1 %339, label %340, label %345, !dbg !3791

; <label>:340:                                    ; preds = %334
  %341 = bitcast %union.anon.6* %11 to %struct.in_addr**, !dbg !3792
  %342 = load %struct.in_addr*, %struct.in_addr** %341, align 8, !dbg !3792
  %343 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !3793
  %344 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %343, i32 0, i32 16, !dbg !3794
  call void @inet_ip4tosockaddr(%struct.in_addr* %342, %struct.sockaddr_storage* %344), !dbg !3795
  br label %350, !dbg !3795

; <label>:345:                                    ; preds = %334
  %346 = bitcast %union.anon.6* %11 to %struct.in6_addr**, !dbg !3796
  %347 = load %struct.in6_addr*, %struct.in6_addr** %346, align 8, !dbg !3796
  %348 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !3797
  %349 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %348, i32 0, i32 16, !dbg !3798
  call void @inet_ip6tosockaddr(%struct.in6_addr* %347, %struct.sockaddr_storage* %349), !dbg !3799
  br label %350

; <label>:350:                                    ; preds = %345, %340
  %351 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !3800
  call void @try_up_instance(%struct._vrrp_t* %351, i1 zeroext false), !dbg !3801
  br label %422, !dbg !3802

; <label>:352:                                    ; preds = %331, %319, %309, %304, %301
  %353 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !3803
  %354 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %353, i32 0, i32 0, !dbg !3805
  %355 = load i16, i16* %354, align 8, !dbg !3805
  %356 = zext i16 %355 to i32, !dbg !3803
  %357 = icmp eq i32 %356, 10, !dbg !3806
  br i1 %357, label %358, label %421, !dbg !3807

; <label>:358:                                    ; preds = %352
  %359 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3808
  %360 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !3809
  %361 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %360, i32 0, i32 4, !dbg !3810
  %362 = load %struct._interface*, %struct._interface** %361, align 8, !dbg !3810
  %363 = getelementptr inbounds %struct._interface, %struct._interface* %362, i32 0, i32 14, !dbg !3811
  %364 = load %struct._interface*, %struct._interface** %363, align 8, !dbg !3811
  %365 = icmp eq %struct._interface* %359, %364, !dbg !3812
  br i1 %365, label %366, label %421, !dbg !3813

; <label>:366:                                    ; preds = %358
  %367 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !3814
  %368 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %367, i32 0, i32 4, !dbg !3815
  %369 = load %struct._interface*, %struct._interface** %368, align 8, !dbg !3815
  %370 = getelementptr inbounds %struct._interface, %struct._interface* %369, i32 0, i32 12, !dbg !3816
  %371 = load i8, i8* %370, align 4, !dbg !3816
  %372 = trunc i8 %371 to i1, !dbg !3816
  br i1 %372, label %373, label %421, !dbg !3817

; <label>:373:                                    ; preds = %366
  %374 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !3818
  %375 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %374, i32 0, i32 9, !dbg !3819
  %376 = call zeroext i1 @__test_bit(i32 2, i64* %375), !dbg !3820
  br i1 %376, label %421, label %377, !dbg !3821

; <label>:377:                                    ; preds = %373
  %378 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !3822
  %379 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %378, i32 0, i32 14, !dbg !3823
  %380 = load i32, i32* %379, align 8, !dbg !3823
  %381 = icmp ne i32 %380, 0, !dbg !3822
  br i1 %381, label %382, label %421, !dbg !3824

; <label>:382:                                    ; preds = %377
  %383 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !3825
  %384 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %383, i32 0, i32 0, !dbg !3826
  %385 = load i16, i16* %384, align 8, !dbg !3826
  %386 = zext i16 %385 to i32, !dbg !3825
  %387 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %6, align 8, !dbg !3827
  %388 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %387, i32 0, i32 0, !dbg !3828
  %389 = load i8, i8* %388, align 4, !dbg !3828
  %390 = zext i8 %389 to i32, !dbg !3827
  %391 = icmp eq i32 %386, %390, !dbg !3829
  br i1 %391, label %392, label %421, !dbg !3830

; <label>:392:                                    ; preds = %382
  %393 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !3831
  %394 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %393, i32 0, i32 16, !dbg !3832
  %395 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %394, i32 0, i32 0, !dbg !3833
  %396 = load i16, i16* %395, align 8, !dbg !3833
  %397 = zext i16 %396 to i32, !dbg !3831
  %398 = icmp eq i32 %397, 0, !dbg !3834
  br i1 %398, label %399, label %421, !dbg !3835

; <label>:399:                                    ; preds = %392
  %400 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !3836
  %401 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %400, i32 0, i32 17, !dbg !3837
  %402 = load i8, i8* %401, align 8, !dbg !3837
  %403 = trunc i8 %402 to i1, !dbg !3837
  br i1 %403, label %404, label %407, !dbg !3838

; <label>:404:                                    ; preds = %399
  %405 = load i8, i8* %18, align 1, !dbg !3839
  %406 = trunc i8 %405 to i1, !dbg !3839
  br i1 %406, label %407, label %421, !dbg !3841

; <label>:407:                                    ; preds = %404, %399
  %408 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !3842
  %409 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %408, i32 0, i32 4, !dbg !3845
  %410 = load %struct._interface*, %struct._interface** %409, align 8, !dbg !3845
  %411 = bitcast %union.anon.6* %11 to %struct.in6_addr**, !dbg !3846
  %412 = load %struct.in6_addr*, %struct.in6_addr** %411, align 8, !dbg !3846
  %413 = call zeroext i1 @add_link_local_address(%struct._interface* %410, %struct.in6_addr* %412), !dbg !3847
  br i1 %413, label %414, label %420, !dbg !3848

; <label>:414:                                    ; preds = %407
  %415 = bitcast %union.anon.6* %11 to %struct.in6_addr**, !dbg !3849
  %416 = load %struct.in6_addr*, %struct.in6_addr** %415, align 8, !dbg !3849
  %417 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !3851
  %418 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %417, i32 0, i32 16, !dbg !3852
  call void @inet_ip6tosockaddr(%struct.in6_addr* %416, %struct.sockaddr_storage* %418), !dbg !3853
  %419 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !3854
  call void @try_up_instance(%struct._vrrp_t* %419, i1 zeroext false), !dbg !3855
  br label %420, !dbg !3856

; <label>:420:                                    ; preds = %414, %407
  br label %421, !dbg !3857

; <label>:421:                                    ; preds = %420, %404, %392, %382, %377, %373, %366, %358, %352
  br label %422

; <label>:422:                                    ; preds = %421, %350
  br label %423, !dbg !3858

; <label>:423:                                    ; preds = %422
  %424 = load %struct._element*, %struct._element** %14, align 8, !dbg !3859
  %425 = getelementptr inbounds %struct._element, %struct._element* %424, i32 0, i32 0, !dbg !3861
  %426 = load %struct._element*, %struct._element** %425, align 8, !dbg !3861
  store %struct._element* %426, %struct._element** %14, align 8, !dbg !3862
  br label %246, !dbg !3863, !llvm.loop !3864

; <label>:427:                                    ; preds = %246
  br label %428, !dbg !3866

; <label>:428:                                    ; preds = %427, %214
  br label %834, !dbg !3867

; <label>:429:                                    ; preds = %125
  %430 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %6, align 8, !dbg !3868
  %431 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %430, i32 0, i32 0, !dbg !3871
  %432 = load i8, i8* %431, align 4, !dbg !3871
  %433 = zext i8 %432 to i32, !dbg !3868
  %434 = icmp eq i32 %433, 2, !dbg !3872
  br i1 %434, label %435, label %447, !dbg !3873

; <label>:435:                                    ; preds = %429
  %436 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3874
  %437 = getelementptr inbounds %struct._interface, %struct._interface* %436, i32 0, i32 2, !dbg !3877
  %438 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %437, i32 0, i32 0, !dbg !3878
  %439 = load i32, i32* %438, align 4, !dbg !3878
  %440 = bitcast %union.anon.6* %11 to %struct.in_addr**, !dbg !3879
  %441 = load %struct.in_addr*, %struct.in_addr** %440, align 8, !dbg !3879
  %442 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %441, i32 0, i32 0, !dbg !3880
  %443 = load i32, i32* %442, align 4, !dbg !3880
  %444 = icmp eq i32 %439, %443, !dbg !3881
  br i1 %444, label %445, label %446, !dbg !3882

; <label>:445:                                    ; preds = %435
  store i8 1, i8* %13, align 1, !dbg !3883
  br label %446, !dbg !3884

; <label>:446:                                    ; preds = %445, %435
  br label %505, !dbg !3885

; <label>:447:                                    ; preds = %429
  %448 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3886
  %449 = getelementptr inbounds %struct._interface, %struct._interface* %448, i32 0, i32 3, !dbg !3889
  %450 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %449, i32 0, i32 0, !dbg !3890
  %451 = bitcast %union.anon.1* %450 to [4 x i32]*, !dbg !3891
  %452 = getelementptr inbounds [4 x i32], [4 x i32]* %451, i64 0, i64 0, !dbg !3886
  %453 = load i32, i32* %452, align 8, !dbg !3886
  %454 = bitcast %union.anon.6* %11 to %struct.in6_addr**, !dbg !3892
  %455 = load %struct.in6_addr*, %struct.in6_addr** %454, align 8, !dbg !3892
  %456 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %455, i32 0, i32 0, !dbg !3893
  %457 = bitcast %union.anon.1* %456 to [4 x i32]*, !dbg !3894
  %458 = getelementptr inbounds [4 x i32], [4 x i32]* %457, i64 0, i64 0, !dbg !3895
  %459 = load i32, i32* %458, align 4, !dbg !3895
  %460 = icmp eq i32 %453, %459, !dbg !3896
  br i1 %460, label %461, label %504, !dbg !3897

; <label>:461:                                    ; preds = %447
  %462 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3898
  %463 = getelementptr inbounds %struct._interface, %struct._interface* %462, i32 0, i32 3, !dbg !3899
  %464 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %463, i32 0, i32 0, !dbg !3900
  %465 = bitcast %union.anon.1* %464 to [4 x i32]*, !dbg !3901
  %466 = getelementptr inbounds [4 x i32], [4 x i32]* %465, i64 0, i64 1, !dbg !3898
  %467 = load i32, i32* %466, align 4, !dbg !3898
  %468 = bitcast %union.anon.6* %11 to %struct.in6_addr**, !dbg !3902
  %469 = load %struct.in6_addr*, %struct.in6_addr** %468, align 8, !dbg !3902
  %470 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %469, i32 0, i32 0, !dbg !3903
  %471 = bitcast %union.anon.1* %470 to [4 x i32]*, !dbg !3904
  %472 = getelementptr inbounds [4 x i32], [4 x i32]* %471, i64 0, i64 1, !dbg !3905
  %473 = load i32, i32* %472, align 4, !dbg !3905
  %474 = icmp eq i32 %467, %473, !dbg !3906
  br i1 %474, label %475, label %504, !dbg !3907

; <label>:475:                                    ; preds = %461
  %476 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3908
  %477 = getelementptr inbounds %struct._interface, %struct._interface* %476, i32 0, i32 3, !dbg !3909
  %478 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %477, i32 0, i32 0, !dbg !3910
  %479 = bitcast %union.anon.1* %478 to [4 x i32]*, !dbg !3911
  %480 = getelementptr inbounds [4 x i32], [4 x i32]* %479, i64 0, i64 2, !dbg !3908
  %481 = load i32, i32* %480, align 8, !dbg !3908
  %482 = bitcast %union.anon.6* %11 to %struct.in6_addr**, !dbg !3912
  %483 = load %struct.in6_addr*, %struct.in6_addr** %482, align 8, !dbg !3912
  %484 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %483, i32 0, i32 0, !dbg !3913
  %485 = bitcast %union.anon.1* %484 to [4 x i32]*, !dbg !3914
  %486 = getelementptr inbounds [4 x i32], [4 x i32]* %485, i64 0, i64 2, !dbg !3915
  %487 = load i32, i32* %486, align 4, !dbg !3915
  %488 = icmp eq i32 %481, %487, !dbg !3916
  br i1 %488, label %489, label %504, !dbg !3917

; <label>:489:                                    ; preds = %475
  %490 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3918
  %491 = getelementptr inbounds %struct._interface, %struct._interface* %490, i32 0, i32 3, !dbg !3919
  %492 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %491, i32 0, i32 0, !dbg !3920
  %493 = bitcast %union.anon.1* %492 to [4 x i32]*, !dbg !3921
  %494 = getelementptr inbounds [4 x i32], [4 x i32]* %493, i64 0, i64 3, !dbg !3918
  %495 = load i32, i32* %494, align 4, !dbg !3918
  %496 = bitcast %union.anon.6* %11 to %struct.in6_addr**, !dbg !3922
  %497 = load %struct.in6_addr*, %struct.in6_addr** %496, align 8, !dbg !3922
  %498 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %497, i32 0, i32 0, !dbg !3923
  %499 = bitcast %union.anon.1* %498 to [4 x i32]*, !dbg !3924
  %500 = getelementptr inbounds [4 x i32], [4 x i32]* %499, i64 0, i64 3, !dbg !3925
  %501 = load i32, i32* %500, align 4, !dbg !3925
  %502 = icmp eq i32 %495, %501, !dbg !3926
  br i1 %502, label %503, label %504, !dbg !3927

; <label>:503:                                    ; preds = %489
  store i8 1, i8* %13, align 1, !dbg !3929
  br label %504, !dbg !3930

; <label>:504:                                    ; preds = %503, %489, %475, %461, %447
  br label %505

; <label>:505:                                    ; preds = %504, %446
  %506 = load i8, i8* %13, align 1, !dbg !3931
  %507 = trunc i8 %506 to i1, !dbg !3931
  br i1 %507, label %508, label %813, !dbg !3933

; <label>:508:                                    ; preds = %505
  %509 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3934
  %510 = getelementptr inbounds %struct._interface, %struct._interface* %509, i32 0, i32 26, !dbg !3936
  %511 = load %struct._list*, %struct._list** %510, align 8, !dbg !3936
  %512 = icmp eq %struct._list* %511, null, !dbg !3937
  br i1 %512, label %813, label %513, !dbg !3938

; <label>:513:                                    ; preds = %508
  %514 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3939
  %515 = getelementptr inbounds %struct._interface, %struct._interface* %514, i32 0, i32 26, !dbg !3941
  %516 = load %struct._list*, %struct._list** %515, align 8, !dbg !3941
  %517 = getelementptr inbounds %struct._list, %struct._list* %516, i32 0, i32 0, !dbg !3942
  %518 = load %struct._element*, %struct._element** %517, align 8, !dbg !3942
  %519 = icmp eq %struct._element* %518, null, !dbg !3943
  br i1 %519, label %520, label %527, !dbg !3944

; <label>:520:                                    ; preds = %513
  %521 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3945
  %522 = getelementptr inbounds %struct._interface, %struct._interface* %521, i32 0, i32 26, !dbg !3947
  %523 = load %struct._list*, %struct._list** %522, align 8, !dbg !3947
  %524 = getelementptr inbounds %struct._list, %struct._list* %523, i32 0, i32 1, !dbg !3948
  %525 = load %struct._element*, %struct._element** %524, align 8, !dbg !3948
  %526 = icmp eq %struct._element* %525, null, !dbg !3949
  br i1 %526, label %813, label %527, !dbg !3950

; <label>:527:                                    ; preds = %520, %513
  %528 = call zeroext i1 @__test_bit(i32 7, i64* @debug), !dbg !3951
  br i1 %528, label %529, label %542, !dbg !3954

; <label>:529:                                    ; preds = %527
  %530 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %6, align 8, !dbg !3955
  %531 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %530, i32 0, i32 0, !dbg !3957
  %532 = load i8, i8* %531, align 4, !dbg !3957
  %533 = zext i8 %532 to i32, !dbg !3955
  %534 = bitcast %union.anon.6* %11 to i8**, !dbg !3958
  %535 = load i8*, i8** %534, align 8, !dbg !3958
  %536 = getelementptr inbounds [46 x i8], [46 x i8]* %12, i32 0, i32 0, !dbg !3959
  %537 = call i8* @inet_ntop(i32 %533, i8* %535, i8* %536, i32 46) #6, !dbg !3960
  %538 = getelementptr inbounds [46 x i8], [46 x i8]* %12, i32 0, i32 0, !dbg !3961
  %539 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3962
  %540 = getelementptr inbounds %struct._interface, %struct._interface* %539, i32 0, i32 0, !dbg !3963
  %541 = getelementptr inbounds [16 x i8], [16 x i8]* %540, i32 0, i32 0, !dbg !3962
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.36, i32 0, i32 0), i8* %538, i8* %541), !dbg !3964
  br label %542, !dbg !3965

; <label>:542:                                    ; preds = %529, %527
  %543 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3966
  %544 = getelementptr inbounds %struct._interface, %struct._interface* %543, i32 0, i32 26, !dbg !3968
  %545 = load %struct._list*, %struct._list** %544, align 8, !dbg !3968
  %546 = icmp ne %struct._list* %545, null, !dbg !3969
  br i1 %546, label %548, label %547, !dbg !3970

; <label>:547:                                    ; preds = %542
  br label %554, !dbg !3971

; <label>:548:                                    ; preds = %542
  %549 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !3973
  %550 = getelementptr inbounds %struct._interface, %struct._interface* %549, i32 0, i32 26, !dbg !3975
  %551 = load %struct._list*, %struct._list** %550, align 8, !dbg !3975
  %552 = getelementptr inbounds %struct._list, %struct._list* %551, i32 0, i32 0, !dbg !3976
  %553 = load %struct._element*, %struct._element** %552, align 8, !dbg !3976
  br label %554, !dbg !3977

; <label>:554:                                    ; preds = %548, %547
  %555 = phi %struct._element* [ null, %547 ], [ %553, %548 ], !dbg !3978
  store %struct._element* %555, %struct._element** %14, align 8, !dbg !3980
  br label %556, !dbg !3981

; <label>:556:                                    ; preds = %808, %554
  %557 = load %struct._element*, %struct._element** %14, align 8, !dbg !3982
  %558 = icmp ne %struct._element* %557, null, !dbg !3985
  br i1 %558, label %559, label %812, !dbg !3985

; <label>:559:                                    ; preds = %556
  %560 = load %struct._element*, %struct._element** %14, align 8, !dbg !3986
  %561 = getelementptr inbounds %struct._element, %struct._element* %560, i32 0, i32 2, !dbg !3988
  %562 = load i8*, i8** %561, align 8, !dbg !3988
  %563 = bitcast i8* %562 to %struct._tracking_vrrp*, !dbg !3989
  store %struct._tracking_vrrp* %563, %struct._tracking_vrrp** %17, align 8, !dbg !3990
  %564 = load %struct._tracking_vrrp*, %struct._tracking_vrrp** %17, align 8, !dbg !3991
  %565 = getelementptr inbounds %struct._tracking_vrrp, %struct._tracking_vrrp* %564, i32 0, i32 1, !dbg !3992
  %566 = load %struct._vrrp_t*, %struct._vrrp_t** %565, align 8, !dbg !3992
  store %struct._vrrp_t* %566, %struct._vrrp_t** %15, align 8, !dbg !3993
  store i8 0, i8* %18, align 1, !dbg !3994
  %567 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !3995
  %568 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %567, i32 0, i32 18, !dbg !3997
  %569 = load i8, i8* %568, align 1, !dbg !3997
  %570 = trunc i8 %569 to i1, !dbg !3997
  br i1 %570, label %571, label %594, !dbg !3998

; <label>:571:                                    ; preds = %559
  %572 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !3999
  %573 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %572, i32 0, i32 0, !dbg !4002
  %574 = load i16, i16* %573, align 8, !dbg !4002
  %575 = zext i16 %574 to i32, !dbg !3999
  %576 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %6, align 8, !dbg !4003
  %577 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %576, i32 0, i32 0, !dbg !4004
  %578 = load i8, i8* %577, align 4, !dbg !4004
  %579 = zext i8 %578 to i32, !dbg !4003
  %580 = icmp eq i32 %575, %579, !dbg !4005
  br i1 %580, label %581, label %593, !dbg !4006

; <label>:581:                                    ; preds = %571
  %582 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %6, align 8, !dbg !4007
  %583 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %582, i32 0, i32 0, !dbg !4008
  %584 = load i8, i8* %583, align 4, !dbg !4008
  %585 = zext i8 %584 to i16, !dbg !4007
  %586 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !4009
  %587 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %586, i32 0, i32 16, !dbg !4010
  %588 = bitcast %struct.sockaddr_storage* %587 to i8*, !dbg !4011
  %589 = bitcast %union.anon.6* %11 to i8**, !dbg !4012
  %590 = load i8*, i8** %589, align 8, !dbg !4012
  %591 = call zeroext i1 @inaddr_equal(i16 zeroext %585, i8* %588, i8* %590), !dbg !4013
  %592 = zext i1 %591 to i8, !dbg !4014
  store i8 %592, i8* %18, align 1, !dbg !4014
  br label %593, !dbg !4015

; <label>:593:                                    ; preds = %581, %571
  br label %594, !dbg !4016

; <label>:594:                                    ; preds = %593, %559
  %595 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %6, align 8, !dbg !4017
  %596 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %595, i32 0, i32 0, !dbg !4019
  %597 = load i8, i8* %596, align 4, !dbg !4019
  %598 = zext i8 %597 to i32, !dbg !4017
  %599 = icmp eq i32 %598, 10, !dbg !4020
  br i1 %599, label %600, label %756, !dbg !4021

; <label>:600:                                    ; preds = %594
  %601 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !4022
  %602 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %601, i32 0, i32 9, !dbg !4023
  %603 = call zeroext i1 @__test_bit(i32 0, i64* %602), !dbg !4024
  br i1 %603, label %604, label %756, !dbg !4025

; <label>:604:                                    ; preds = %600
  %605 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !4026
  %606 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !4027
  %607 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %606, i32 0, i32 4, !dbg !4028
  %608 = load %struct._interface*, %struct._interface** %607, align 8, !dbg !4028
  %609 = getelementptr inbounds %struct._interface, %struct._interface* %608, i32 0, i32 14, !dbg !4029
  %610 = load %struct._interface*, %struct._interface** %609, align 8, !dbg !4029
  %611 = icmp eq %struct._interface* %605, %610, !dbg !4030
  br i1 %611, label %612, label %756, !dbg !4031

; <label>:612:                                    ; preds = %604
  %613 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %6, align 8, !dbg !4032
  %614 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %613, i32 0, i32 3, !dbg !4033
  %615 = load i8, i8* %614, align 1, !dbg !4033
  %616 = zext i8 %615 to i32, !dbg !4032
  %617 = icmp eq i32 %616, 253, !dbg !4034
  br i1 %617, label %618, label %756, !dbg !4035

; <label>:618:                                    ; preds = %612
  %619 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !4036
  %620 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %619, i32 0, i32 9, !dbg !4037
  %621 = call zeroext i1 @__test_bit(i32 2, i64* %620), !dbg !4038
  br i1 %621, label %756, label %622, !dbg !4039

; <label>:622:                                    ; preds = %618
  %623 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !4040
  %624 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %623, i32 0, i32 17, !dbg !4041
  %625 = load i8, i8* %624, align 8, !dbg !4041
  %626 = trunc i8 %625 to i1, !dbg !4041
  br i1 %626, label %756, label %627, !dbg !4042

; <label>:627:                                    ; preds = %622
  %628 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !4043
  %629 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %628, i32 0, i32 4, !dbg !4044
  %630 = load %struct._interface*, %struct._interface** %629, align 8, !dbg !4044
  %631 = getelementptr inbounds %struct._interface, %struct._interface* %630, i32 0, i32 14, !dbg !4045
  %632 = load %struct._interface*, %struct._interface** %631, align 8, !dbg !4045
  %633 = getelementptr inbounds %struct._interface, %struct._interface* %632, i32 0, i32 3, !dbg !4046
  %634 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %633, i32 0, i32 0, !dbg !4047
  %635 = bitcast %union.anon.1* %634 to [4 x i32]*, !dbg !4048
  %636 = getelementptr inbounds [4 x i32], [4 x i32]* %635, i64 0, i64 0, !dbg !4043
  %637 = load i32, i32* %636, align 8, !dbg !4043
  %638 = bitcast %union.anon.6* %11 to %struct.in6_addr**, !dbg !4049
  %639 = load %struct.in6_addr*, %struct.in6_addr** %638, align 8, !dbg !4049
  %640 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %639, i32 0, i32 0, !dbg !4050
  %641 = bitcast %union.anon.1* %640 to [4 x i32]*, !dbg !4051
  %642 = getelementptr inbounds [4 x i32], [4 x i32]* %641, i64 0, i64 0, !dbg !4052
  %643 = load i32, i32* %642, align 4, !dbg !4052
  %644 = icmp eq i32 %637, %643, !dbg !4053
  br i1 %644, label %645, label %756, !dbg !4054

; <label>:645:                                    ; preds = %627
  %646 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !4055
  %647 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %646, i32 0, i32 4, !dbg !4056
  %648 = load %struct._interface*, %struct._interface** %647, align 8, !dbg !4056
  %649 = getelementptr inbounds %struct._interface, %struct._interface* %648, i32 0, i32 14, !dbg !4057
  %650 = load %struct._interface*, %struct._interface** %649, align 8, !dbg !4057
  %651 = getelementptr inbounds %struct._interface, %struct._interface* %650, i32 0, i32 3, !dbg !4058
  %652 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %651, i32 0, i32 0, !dbg !4059
  %653 = bitcast %union.anon.1* %652 to [4 x i32]*, !dbg !4060
  %654 = getelementptr inbounds [4 x i32], [4 x i32]* %653, i64 0, i64 1, !dbg !4055
  %655 = load i32, i32* %654, align 4, !dbg !4055
  %656 = bitcast %union.anon.6* %11 to %struct.in6_addr**, !dbg !4061
  %657 = load %struct.in6_addr*, %struct.in6_addr** %656, align 8, !dbg !4061
  %658 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %657, i32 0, i32 0, !dbg !4062
  %659 = bitcast %union.anon.1* %658 to [4 x i32]*, !dbg !4063
  %660 = getelementptr inbounds [4 x i32], [4 x i32]* %659, i64 0, i64 1, !dbg !4064
  %661 = load i32, i32* %660, align 4, !dbg !4064
  %662 = icmp eq i32 %655, %661, !dbg !4065
  br i1 %662, label %663, label %756, !dbg !4066

; <label>:663:                                    ; preds = %645
  %664 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !4067
  %665 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %664, i32 0, i32 4, !dbg !4068
  %666 = load %struct._interface*, %struct._interface** %665, align 8, !dbg !4068
  %667 = getelementptr inbounds %struct._interface, %struct._interface* %666, i32 0, i32 14, !dbg !4069
  %668 = load %struct._interface*, %struct._interface** %667, align 8, !dbg !4069
  %669 = getelementptr inbounds %struct._interface, %struct._interface* %668, i32 0, i32 3, !dbg !4070
  %670 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %669, i32 0, i32 0, !dbg !4071
  %671 = bitcast %union.anon.1* %670 to [4 x i32]*, !dbg !4072
  %672 = getelementptr inbounds [4 x i32], [4 x i32]* %671, i64 0, i64 2, !dbg !4067
  %673 = load i32, i32* %672, align 8, !dbg !4067
  %674 = bitcast %union.anon.6* %11 to %struct.in6_addr**, !dbg !4073
  %675 = load %struct.in6_addr*, %struct.in6_addr** %674, align 8, !dbg !4073
  %676 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %675, i32 0, i32 0, !dbg !4074
  %677 = bitcast %union.anon.1* %676 to [4 x i32]*, !dbg !4075
  %678 = getelementptr inbounds [4 x i32], [4 x i32]* %677, i64 0, i64 2, !dbg !4076
  %679 = load i32, i32* %678, align 4, !dbg !4076
  %680 = icmp eq i32 %673, %679, !dbg !4077
  br i1 %680, label %681, label %756, !dbg !4078

; <label>:681:                                    ; preds = %663
  %682 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !4079
  %683 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %682, i32 0, i32 4, !dbg !4080
  %684 = load %struct._interface*, %struct._interface** %683, align 8, !dbg !4080
  %685 = getelementptr inbounds %struct._interface, %struct._interface* %684, i32 0, i32 14, !dbg !4081
  %686 = load %struct._interface*, %struct._interface** %685, align 8, !dbg !4081
  %687 = getelementptr inbounds %struct._interface, %struct._interface* %686, i32 0, i32 3, !dbg !4082
  %688 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %687, i32 0, i32 0, !dbg !4083
  %689 = bitcast %union.anon.1* %688 to [4 x i32]*, !dbg !4084
  %690 = getelementptr inbounds [4 x i32], [4 x i32]* %689, i64 0, i64 3, !dbg !4079
  %691 = load i32, i32* %690, align 4, !dbg !4079
  %692 = bitcast %union.anon.6* %11 to %struct.in6_addr**, !dbg !4085
  %693 = load %struct.in6_addr*, %struct.in6_addr** %692, align 8, !dbg !4085
  %694 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %693, i32 0, i32 0, !dbg !4086
  %695 = bitcast %union.anon.1* %694 to [4 x i32]*, !dbg !4087
  %696 = getelementptr inbounds [4 x i32], [4 x i32]* %695, i64 0, i64 3, !dbg !4088
  %697 = load i32, i32* %696, align 4, !dbg !4088
  %698 = icmp eq i32 %691, %697, !dbg !4089
  br i1 %698, label %699, label %756, !dbg !4090

; <label>:699:                                    ; preds = %681
  %700 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !4092
  %701 = getelementptr inbounds %struct._interface, %struct._interface* %700, i32 0, i32 4, !dbg !4095
  %702 = load i32, i32* %701, align 8, !dbg !4095
  %703 = and i32 %702, 65, !dbg !4096
  %704 = icmp eq i32 %703, 65, !dbg !4097
  br i1 %704, label %705, label %730, !dbg !4098

; <label>:705:                                    ; preds = %699
  %706 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !4099
  %707 = getelementptr inbounds %struct._interface, %struct._interface* %706, i32 0, i32 12, !dbg !4101
  %708 = load i8, i8* %707, align 4, !dbg !4101
  %709 = trunc i8 %708 to i1, !dbg !4101
  br i1 %709, label %710, label %718, !dbg !4102

; <label>:710:                                    ; preds = %705
  %711 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !4103
  %712 = getelementptr inbounds %struct._interface, %struct._interface* %711, i32 0, i32 14, !dbg !4105
  %713 = load %struct._interface*, %struct._interface** %712, align 8, !dbg !4105
  %714 = getelementptr inbounds %struct._interface, %struct._interface* %713, i32 0, i32 4, !dbg !4106
  %715 = load i32, i32* %714, align 8, !dbg !4106
  %716 = and i32 %715, 65, !dbg !4107
  %717 = icmp eq i32 %716, 65, !dbg !4108
  br i1 %717, label %718, label %730, !dbg !4109

; <label>:718:                                    ; preds = %710, %705
  %719 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !4110
  %720 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %719, i32 0, i32 4, !dbg !4112
  %721 = load %struct._interface*, %struct._interface** %720, align 8, !dbg !4112
  %722 = call zeroext i1 @replace_link_local_address(%struct._interface* %721), !dbg !4113
  br i1 %722, label %723, label %730, !dbg !4114

; <label>:723:                                    ; preds = %718
  %724 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !4115
  %725 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %724, i32 0, i32 4, !dbg !4116
  %726 = load %struct._interface*, %struct._interface** %725, align 8, !dbg !4116
  %727 = getelementptr inbounds %struct._interface, %struct._interface* %726, i32 0, i32 3, !dbg !4117
  %728 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !4118
  %729 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %728, i32 0, i32 16, !dbg !4119
  call void @inet_ip6tosockaddr(%struct.in6_addr* %727, %struct.sockaddr_storage* %729), !dbg !4120
  br label %755, !dbg !4120

; <label>:730:                                    ; preds = %718, %710, %699
  %731 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !4121
  %732 = getelementptr inbounds %struct._interface, %struct._interface* %731, i32 0, i32 4, !dbg !4123
  %733 = load i32, i32* %732, align 8, !dbg !4123
  %734 = and i32 %733, 65, !dbg !4124
  %735 = icmp eq i32 %734, 65, !dbg !4125
  br i1 %735, label %736, label %754, !dbg !4126

; <label>:736:                                    ; preds = %730
  %737 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !4127
  %738 = getelementptr inbounds %struct._interface, %struct._interface* %737, i32 0, i32 12, !dbg !4129
  %739 = load i8, i8* %738, align 4, !dbg !4129
  %740 = trunc i8 %739 to i1, !dbg !4129
  br i1 %740, label %741, label %749, !dbg !4130

; <label>:741:                                    ; preds = %736
  %742 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !4131
  %743 = getelementptr inbounds %struct._interface, %struct._interface* %742, i32 0, i32 14, !dbg !4133
  %744 = load %struct._interface*, %struct._interface** %743, align 8, !dbg !4133
  %745 = getelementptr inbounds %struct._interface, %struct._interface* %744, i32 0, i32 4, !dbg !4134
  %746 = load i32, i32* %745, align 8, !dbg !4134
  %747 = and i32 %746, 65, !dbg !4135
  %748 = icmp eq i32 %747, 65, !dbg !4136
  br i1 %748, label %749, label %754, !dbg !4137

; <label>:749:                                    ; preds = %741, %736
  %750 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !4138
  call void @down_instance(%struct._vrrp_t* %750), !dbg !4140
  %751 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !4141
  %752 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %751, i32 0, i32 16, !dbg !4142
  %753 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %752, i32 0, i32 0, !dbg !4143
  store i16 0, i16* %753, align 8, !dbg !4144
  br label %754, !dbg !4145

; <label>:754:                                    ; preds = %749, %741, %730
  br label %755

; <label>:755:                                    ; preds = %754, %723
  br label %807, !dbg !4146

; <label>:756:                                    ; preds = %681, %663, %645, %627, %622, %618, %612, %604, %600, %594
  %757 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !4147
  %758 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !4149
  %759 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %758, i32 0, i32 0, !dbg !4150
  %760 = load i16, i16* %759, align 8, !dbg !4150
  %761 = zext i16 %760 to i32, !dbg !4149
  %762 = icmp eq i32 %761, 2, !dbg !4151
  br i1 %762, label %763, label %769, !dbg !4149

; <label>:763:                                    ; preds = %756
  %764 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !4152
  %765 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %764, i32 0, i32 4, !dbg !4154
  %766 = load %struct._interface*, %struct._interface** %765, align 8, !dbg !4154
  %767 = getelementptr inbounds %struct._interface, %struct._interface* %766, i32 0, i32 14, !dbg !4155
  %768 = load %struct._interface*, %struct._interface** %767, align 8, !dbg !4155
  br label %773, !dbg !4156

; <label>:769:                                    ; preds = %756
  %770 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !4157
  %771 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %770, i32 0, i32 4, !dbg !4159
  %772 = load %struct._interface*, %struct._interface** %771, align 8, !dbg !4159
  br label %773, !dbg !4160

; <label>:773:                                    ; preds = %769, %763
  %774 = phi %struct._interface* [ %768, %763 ], [ %772, %769 ], !dbg !4161
  %775 = icmp eq %struct._interface* %757, %774, !dbg !4163
  br i1 %775, label %776, label %806, !dbg !4164

; <label>:776:                                    ; preds = %773
  %777 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !4165
  %778 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %777, i32 0, i32 0, !dbg !4166
  %779 = load i16, i16* %778, align 8, !dbg !4166
  %780 = zext i16 %779 to i32, !dbg !4165
  %781 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %6, align 8, !dbg !4167
  %782 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %781, i32 0, i32 0, !dbg !4168
  %783 = load i8, i8* %782, align 4, !dbg !4168
  %784 = zext i8 %783 to i32, !dbg !4167
  %785 = icmp eq i32 %780, %784, !dbg !4169
  br i1 %785, label %786, label %806, !dbg !4170

; <label>:786:                                    ; preds = %776
  %787 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !4171
  %788 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %787, i32 0, i32 16, !dbg !4172
  %789 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %788, i32 0, i32 0, !dbg !4173
  %790 = load i16, i16* %789, align 8, !dbg !4173
  %791 = zext i16 %790 to i32, !dbg !4171
  %792 = icmp ne i32 %791, 0, !dbg !4174
  br i1 %792, label %793, label %806, !dbg !4175

; <label>:793:                                    ; preds = %786
  %794 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !4176
  %795 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %794, i32 0, i32 17, !dbg !4177
  %796 = load i8, i8* %795, align 8, !dbg !4177
  %797 = trunc i8 %796 to i1, !dbg !4177
  br i1 %797, label %798, label %801, !dbg !4178

; <label>:798:                                    ; preds = %793
  %799 = load i8, i8* %18, align 1, !dbg !4179
  %800 = trunc i8 %799 to i1, !dbg !4179
  br i1 %800, label %801, label %806, !dbg !4180

; <label>:801:                                    ; preds = %798, %793
  %802 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !4182
  call void @down_instance(%struct._vrrp_t* %802), !dbg !4184
  %803 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !4185
  %804 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %803, i32 0, i32 16, !dbg !4186
  %805 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %804, i32 0, i32 0, !dbg !4187
  store i16 0, i16* %805, align 8, !dbg !4188
  br label %806, !dbg !4189

; <label>:806:                                    ; preds = %801, %798, %786, %776, %773
  br label %807

; <label>:807:                                    ; preds = %806, %755
  br label %808, !dbg !4190

; <label>:808:                                    ; preds = %807
  %809 = load %struct._element*, %struct._element** %14, align 8, !dbg !4191
  %810 = getelementptr inbounds %struct._element, %struct._element* %809, i32 0, i32 0, !dbg !4193
  %811 = load %struct._element*, %struct._element** %810, align 8, !dbg !4193
  store %struct._element* %811, %struct._element** %14, align 8, !dbg !4194
  br label %556, !dbg !4195, !llvm.loop !4196

; <label>:812:                                    ; preds = %556
  br label %813, !dbg !4198

; <label>:813:                                    ; preds = %812, %520, %508, %505
  %814 = load i8, i8* %13, align 1, !dbg !4199
  %815 = trunc i8 %814 to i1, !dbg !4199
  br i1 %815, label %816, label %833, !dbg !4201

; <label>:816:                                    ; preds = %813
  %817 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %6, align 8, !dbg !4202
  %818 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %817, i32 0, i32 0, !dbg !4205
  %819 = load i8, i8* %818, align 4, !dbg !4205
  %820 = zext i8 %819 to i32, !dbg !4202
  %821 = icmp eq i32 %820, 2, !dbg !4206
  br i1 %821, label %822, label %826, !dbg !4207

; <label>:822:                                    ; preds = %816
  %823 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !4208
  %824 = getelementptr inbounds %struct._interface, %struct._interface* %823, i32 0, i32 2, !dbg !4209
  %825 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %824, i32 0, i32 0, !dbg !4210
  store i32 0, i32* %825, align 4, !dbg !4211
  br label %832, !dbg !4208

; <label>:826:                                    ; preds = %816
  %827 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !4212
  %828 = getelementptr inbounds %struct._interface, %struct._interface* %827, i32 0, i32 3, !dbg !4213
  %829 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %828, i32 0, i32 0, !dbg !4214
  %830 = bitcast %union.anon.1* %829 to [4 x i32]*, !dbg !4215
  %831 = getelementptr inbounds [4 x i32], [4 x i32]* %830, i64 0, i64 0, !dbg !4212
  store i32 0, i32* %831, align 8, !dbg !4216
  br label %832

; <label>:832:                                    ; preds = %826, %822
  br label %833, !dbg !4217

; <label>:833:                                    ; preds = %832, %813
  br label %834

; <label>:834:                                    ; preds = %833, %428
  br label %835, !dbg !4218

; <label>:835:                                    ; preds = %834, %119
  %836 = load i8, i8* %13, align 1, !dbg !4219
  %837 = trunc i8 %836 to i1, !dbg !4219
  br i1 %837, label %838, label %857, !dbg !4221

; <label>:838:                                    ; preds = %835
  %839 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !4222
  %840 = getelementptr inbounds %struct._interface, %struct._interface* %839, i32 0, i32 26, !dbg !4224
  %841 = load %struct._list*, %struct._list** %840, align 8, !dbg !4224
  %842 = icmp eq %struct._list* %841, null, !dbg !4225
  br i1 %842, label %857, label %843, !dbg !4226

; <label>:843:                                    ; preds = %838
  %844 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !4227
  %845 = getelementptr inbounds %struct._interface, %struct._interface* %844, i32 0, i32 26, !dbg !4229
  %846 = load %struct._list*, %struct._list** %845, align 8, !dbg !4229
  %847 = getelementptr inbounds %struct._list, %struct._list* %846, i32 0, i32 0, !dbg !4230
  %848 = load %struct._element*, %struct._element** %847, align 8, !dbg !4230
  %849 = icmp eq %struct._element* %848, null, !dbg !4231
  br i1 %849, label %850, label %908, !dbg !4232

; <label>:850:                                    ; preds = %843
  %851 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !4233
  %852 = getelementptr inbounds %struct._interface, %struct._interface* %851, i32 0, i32 26, !dbg !4235
  %853 = load %struct._list*, %struct._list** %852, align 8, !dbg !4235
  %854 = getelementptr inbounds %struct._list, %struct._list* %853, i32 0, i32 1, !dbg !4236
  %855 = load %struct._element*, %struct._element** %854, align 8, !dbg !4236
  %856 = icmp eq %struct._element* %855, null, !dbg !4237
  br i1 %856, label %857, label %908, !dbg !4238

; <label>:857:                                    ; preds = %850, %838, %835
  %858 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !4239
  %859 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %858, i32 0, i32 1, !dbg !4242
  %860 = load i16, i16* %859, align 4, !dbg !4242
  %861 = zext i16 %860 to i32, !dbg !4239
  %862 = icmp eq i32 %861, 21, !dbg !4243
  br i1 %862, label %863, label %870, !dbg !4244

; <label>:863:                                    ; preds = %857
  %864 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %6, align 8, !dbg !4245
  %865 = bitcast %union.anon.6* %11 to i8**, !dbg !4246
  %866 = load i8*, i8** %865, align 8, !dbg !4246
  %867 = bitcast i8* %866 to %struct.in_addr*, !dbg !4247
  %868 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !4248
  %869 = call %struct._vrrp_t* @address_is_ours(%struct.ifaddrmsg* %864, %struct.in_addr* %867, %struct._interface* %868), !dbg !4249
  store %struct._vrrp_t* %869, %struct._vrrp_t** %16, align 8, !dbg !4250
  br label %871, !dbg !4251

; <label>:870:                                    ; preds = %857
  store %struct._vrrp_t* null, %struct._vrrp_t** %16, align 8, !dbg !4252
  br label %871

; <label>:871:                                    ; preds = %870, %863
  %872 = call zeroext i1 @__test_bit(i32 10, i64* @debug), !dbg !4253
  br i1 %872, label %878, label %873, !dbg !4255

; <label>:873:                                    ; preds = %871
  %874 = call zeroext i1 @__test_bit(i32 7, i64* @debug), !dbg !4256
  br i1 %874, label %875, label %897, !dbg !4257

; <label>:875:                                    ; preds = %873
  %876 = load %struct._vrrp_t*, %struct._vrrp_t** %16, align 8, !dbg !4258
  %877 = icmp ne %struct._vrrp_t* %876, null, !dbg !4258
  br i1 %877, label %878, label %897, !dbg !4260

; <label>:878:                                    ; preds = %875, %871
  %879 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %6, align 8, !dbg !4262
  %880 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %879, i32 0, i32 0, !dbg !4264
  %881 = load i8, i8* %880, align 4, !dbg !4264
  %882 = zext i8 %881 to i32, !dbg !4262
  %883 = bitcast %union.anon.6* %11 to i8**, !dbg !4265
  %884 = load i8*, i8** %883, align 8, !dbg !4265
  %885 = getelementptr inbounds [46 x i8], [46 x i8]* %12, i32 0, i32 0, !dbg !4266
  %886 = call i8* @inet_ntop(i32 %882, i8* %884, i8* %885, i32 46) #6, !dbg !4267
  %887 = getelementptr inbounds [46 x i8], [46 x i8]* %12, i32 0, i32 0, !dbg !4268
  %888 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !4269
  %889 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %888, i32 0, i32 1, !dbg !4270
  %890 = load i16, i16* %889, align 4, !dbg !4270
  %891 = zext i16 %890 to i32, !dbg !4269
  %892 = icmp eq i32 %891, 20, !dbg !4271
  %893 = select i1 %892, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i32 0, i32 0), !dbg !4269
  %894 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !4272
  %895 = getelementptr inbounds %struct._interface, %struct._interface* %894, i32 0, i32 0, !dbg !4273
  %896 = getelementptr inbounds [16 x i8], [16 x i8]* %895, i32 0, i32 0, !dbg !4272
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.37, i32 0, i32 0), i8* %887, i8* %893, i8* %896), !dbg !4274
  br label %897, !dbg !4275

; <label>:897:                                    ; preds = %878, %875, %873
  %898 = load %struct._vrrp_t*, %struct._vrrp_t** %16, align 8, !dbg !4276
  %899 = icmp ne %struct._vrrp_t* %898, null, !dbg !4276
  br i1 %899, label %900, label %907, !dbg !4278

; <label>:900:                                    ; preds = %897
  %901 = load %struct._vrrp_t*, %struct._vrrp_t** %16, align 8, !dbg !4279
  %902 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %901, i32 0, i32 55, !dbg !4281
  %903 = load i32, i32* %902, align 8, !dbg !4281
  %904 = icmp eq i32 %903, 2, !dbg !4282
  br i1 %904, label %905, label %907, !dbg !4283

; <label>:905:                                    ; preds = %900
  %906 = load %struct._vrrp_t*, %struct._vrrp_t** %16, align 8, !dbg !4284
  call void @set_vrrp_backup(%struct._vrrp_t* %906), !dbg !4286
  br label %907, !dbg !4287

; <label>:907:                                    ; preds = %905, %900, %897
  br label %908, !dbg !4288

; <label>:908:                                    ; preds = %907, %850, %843
  %909 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !4289
  %910 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %909, i32 0, i32 1, !dbg !4291
  %911 = load i16, i16* %910, align 4, !dbg !4291
  %912 = zext i16 %911 to i32, !dbg !4289
  %913 = icmp eq i32 %912, 21, !dbg !4292
  br i1 %913, label %914, label %966, !dbg !4293

; <label>:914:                                    ; preds = %908
  %915 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !4294
  %916 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %915, i32 0, i32 1, !dbg !4297
  %917 = load %struct._list*, %struct._list** %916, align 8, !dbg !4297
  %918 = icmp ne %struct._list* %917, null, !dbg !4298
  br i1 %918, label %919, label %933, !dbg !4298

; <label>:919:                                    ; preds = %914
  %920 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !4299
  %921 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %920, i32 0, i32 1, !dbg !4301
  %922 = load %struct._list*, %struct._list** %921, align 8, !dbg !4301
  %923 = icmp ne %struct._list* %922, null, !dbg !4302
  br i1 %923, label %925, label %924, !dbg !4303

; <label>:924:                                    ; preds = %919
  br label %931, !dbg !4304

; <label>:925:                                    ; preds = %919
  %926 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !4306
  %927 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %926, i32 0, i32 1, !dbg !4308
  %928 = load %struct._list*, %struct._list** %927, align 8, !dbg !4308
  %929 = getelementptr inbounds %struct._list, %struct._list* %928, i32 0, i32 0, !dbg !4309
  %930 = load %struct._element*, %struct._element** %929, align 8, !dbg !4309
  br label %931, !dbg !4310

; <label>:931:                                    ; preds = %925, %924
  %932 = phi %struct._element* [ null, %924 ], [ %930, %925 ], !dbg !4311
  br label %934, !dbg !4313

; <label>:933:                                    ; preds = %914
  br label %934, !dbg !4314

; <label>:934:                                    ; preds = %933, %931
  %935 = phi %struct._element* [ %932, %931 ], [ null, %933 ], !dbg !4316
  store %struct._element* %935, %struct._element** %14, align 8, !dbg !4318
  br label %936, !dbg !4319

; <label>:936:                                    ; preds = %961, %934
  %937 = load %struct._element*, %struct._element** %14, align 8, !dbg !4320
  %938 = icmp ne %struct._element* %937, null, !dbg !4323
  br i1 %938, label %939, label %944, !dbg !4324

; <label>:939:                                    ; preds = %936
  %940 = load %struct._element*, %struct._element** %14, align 8, !dbg !4325
  %941 = getelementptr inbounds %struct._element, %struct._element* %940, i32 0, i32 2, !dbg !4327
  %942 = load i8*, i8** %941, align 8, !dbg !4327
  %943 = bitcast i8* %942 to %struct._ip_address*, !dbg !4328
  store %struct._ip_address* %943, %struct._ip_address** %9, align 8, !dbg !4329
  br label %944

; <label>:944:                                    ; preds = %939, %936
  %945 = phi i1 [ false, %936 ], [ true, %939 ]
  br i1 %945, label %946, label %965, !dbg !4330

; <label>:946:                                    ; preds = %944
  %947 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !4332
  %948 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %947, i32 0, i32 8, !dbg !4335
  %949 = load i8, i8* %948, align 4, !dbg !4335
  %950 = trunc i8 %949 to i1, !dbg !4335
  br i1 %950, label %960, label %951, !dbg !4336

; <label>:951:                                    ; preds = %946
  %952 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %6, align 8, !dbg !4337
  %953 = bitcast %union.anon.6* %11 to i8**, !dbg !4339
  %954 = load i8*, i8** %953, align 8, !dbg !4339
  %955 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !4340
  %956 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !4341
  %957 = call zeroext i1 @addr_is_equal(%struct.ifaddrmsg* %952, i8* %954, %struct._ip_address* %955, %struct._interface* %956), !dbg !4342
  br i1 %957, label %958, label %960, !dbg !4343

; <label>:958:                                    ; preds = %951
  %959 = load %struct._ip_address*, %struct._ip_address** %9, align 8, !dbg !4344
  call void @reinstate_static_address(%struct._ip_address* %959), !dbg !4346
  br label %965, !dbg !4347

; <label>:960:                                    ; preds = %951, %946
  br label %961, !dbg !4348

; <label>:961:                                    ; preds = %960
  %962 = load %struct._element*, %struct._element** %14, align 8, !dbg !4349
  %963 = getelementptr inbounds %struct._element, %struct._element* %962, i32 0, i32 0, !dbg !4351
  %964 = load %struct._element*, %struct._element** %963, align 8, !dbg !4351
  store %struct._element* %964, %struct._element** %14, align 8, !dbg !4352
  br label %936, !dbg !4353, !llvm.loop !4354

; <label>:965:                                    ; preds = %958, %944
  br label %966, !dbg !4356

; <label>:966:                                    ; preds = %965, %908
  br label %967, !dbg !4357

; <label>:967:                                    ; preds = %966, %104
  %968 = load i32, i32* @prog_type, align 4, !dbg !4358
  %969 = icmp eq i32 %968, 2, !dbg !4360
  br i1 %969, label %970, label %982, !dbg !4361

; <label>:970:                                    ; preds = %967
  %971 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %6, align 8, !dbg !4362
  %972 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %971, i32 0, i32 0, !dbg !4364
  %973 = load i8, i8* %972, align 4, !dbg !4364
  %974 = zext i8 %973 to i16, !dbg !4362
  %975 = bitcast %union.anon.6* %11 to i8**, !dbg !4365
  %976 = load i8*, i8** %975, align 8, !dbg !4365
  %977 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !4366
  %978 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %977, i32 0, i32 1, !dbg !4367
  %979 = load i16, i16* %978, align 4, !dbg !4367
  %980 = zext i16 %979 to i32, !dbg !4366
  %981 = icmp eq i32 %980, 20, !dbg !4368
  call void @update_checker_activity(i16 zeroext %974, i8* %976, i1 zeroext %981), !dbg !4369
  br label %982, !dbg !4370

; <label>:982:                                    ; preds = %970, %967
  store i32 0, i32* %3, align 4, !dbg !4371
  br label %983, !dbg !4371

; <label>:983:                                    ; preds = %982, %113, %100, %54, %37, %30
  %984 = load i32, i32* %3, align 4, !dbg !4372
  ret i32 %984, !dbg !4372
}

; Function Attrs: nounwind uwtable
define internal i32 @netlink_route_filter(%struct.sockaddr_nl*, %struct.nlmsghdr*) #0 !dbg !4373 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_nl*, align 8
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca %struct.rtmsg*, align 8
  %7 = alloca [23 x %struct.rtattr*], align 16
  %8 = alloca i64, align 8
  %9 = alloca %struct._vrrp_t*, align 8
  %10 = alloca %struct._ip_route*, align 8
  store %struct.sockaddr_nl* %0, %struct.sockaddr_nl** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr_nl** %4, metadata !4374, metadata !669), !dbg !4375
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.nlmsghdr** %5, metadata !4376, metadata !669), !dbg !4377
  call void @llvm.dbg.declare(metadata %struct.rtmsg** %6, metadata !4378, metadata !669), !dbg !4391
  call void @llvm.dbg.declare(metadata [23 x %struct.rtattr*]* %7, metadata !4392, metadata !669), !dbg !4396
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4397, metadata !669), !dbg !4398
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %9, metadata !4399, metadata !669), !dbg !4400
  call void @llvm.dbg.declare(metadata %struct._ip_route** %10, metadata !4401, metadata !669), !dbg !4492
  %11 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !4493
  %12 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %11, i32 0, i32 1, !dbg !4495
  %13 = load i16, i16* %12, align 4, !dbg !4495
  %14 = zext i16 %13 to i32, !dbg !4493
  %15 = icmp ne i32 %14, 24, !dbg !4496
  br i1 %15, label %16, label %23, !dbg !4497

; <label>:16:                                     ; preds = %2
  %17 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !4498
  %18 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %17, i32 0, i32 1, !dbg !4500
  %19 = load i16, i16* %18, align 4, !dbg !4500
  %20 = zext i16 %19 to i32, !dbg !4498
  %21 = icmp ne i32 %20, 25, !dbg !4501
  br i1 %21, label %22, label %23, !dbg !4502

; <label>:22:                                     ; preds = %16
  store i32 0, i32* %3, align 4, !dbg !4503
  br label %140, !dbg !4503

; <label>:23:                                     ; preds = %16, %2
  %24 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !4504
  %25 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %24, i32 0, i32 0, !dbg !4506
  %26 = load i32, i32* %25, align 4, !dbg !4506
  %27 = zext i32 %26 to i64, !dbg !4504
  %28 = icmp ult i64 %27, 28, !dbg !4507
  br i1 %28, label %29, label %30, !dbg !4508

; <label>:29:                                     ; preds = %23
  store i32 -1, i32* %3, align 4, !dbg !4509
  br label %140, !dbg !4509

; <label>:30:                                     ; preds = %23
  %31 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !4510
  %32 = bitcast %struct.nlmsghdr* %31 to i8*, !dbg !4511
  %33 = getelementptr inbounds i8, i8* %32, i64 16, !dbg !4512
  %34 = bitcast i8* %33 to %struct.rtmsg*, !dbg !4510
  store %struct.rtmsg* %34, %struct.rtmsg** %6, align 8, !dbg !4513
  %35 = load %struct.rtmsg*, %struct.rtmsg** %6, align 8, !dbg !4514
  %36 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %35, i32 0, i32 5, !dbg !4516
  %37 = load i8, i8* %36, align 1, !dbg !4516
  %38 = zext i8 %37 to i32, !dbg !4514
  %39 = icmp ne i32 %38, 112, !dbg !4517
  br i1 %39, label %40, label %41, !dbg !4518

; <label>:40:                                     ; preds = %30
  store i32 0, i32* %3, align 4, !dbg !4519
  br label %140, !dbg !4519

; <label>:41:                                     ; preds = %30
  %42 = load %struct.rtmsg*, %struct.rtmsg** %6, align 8, !dbg !4521
  %43 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %42, i32 0, i32 0, !dbg !4523
  %44 = load i8, i8* %43, align 4, !dbg !4523
  %45 = zext i8 %44 to i32, !dbg !4521
  %46 = icmp ne i32 %45, 2, !dbg !4524
  br i1 %46, label %47, label %54, !dbg !4525

; <label>:47:                                     ; preds = %41
  %48 = load %struct.rtmsg*, %struct.rtmsg** %6, align 8, !dbg !4526
  %49 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %48, i32 0, i32 0, !dbg !4528
  %50 = load i8, i8* %49, align 4, !dbg !4528
  %51 = zext i8 %50 to i32, !dbg !4526
  %52 = icmp ne i32 %51, 10, !dbg !4529
  br i1 %52, label %53, label %54, !dbg !4530

; <label>:53:                                     ; preds = %47
  store i32 0, i32* %3, align 4, !dbg !4531
  br label %140, !dbg !4531

; <label>:54:                                     ; preds = %47, %41
  %55 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !4532
  %56 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %55, i32 0, i32 0, !dbg !4533
  %57 = load i32, i32* %56, align 4, !dbg !4533
  %58 = zext i32 %57 to i64, !dbg !4532
  %59 = sub i64 %58, 28, !dbg !4534
  store i64 %59, i64* %8, align 8, !dbg !4535
  %60 = getelementptr inbounds [23 x %struct.rtattr*], [23 x %struct.rtattr*]* %7, i32 0, i32 0, !dbg !4536
  %61 = bitcast %struct.rtattr** %60 to i8*, !dbg !4536
  call void @llvm.memset.p0i8.i64(i8* %61, i8 0, i64 184, i32 16, i1 false), !dbg !4536
  %62 = getelementptr inbounds [23 x %struct.rtattr*], [23 x %struct.rtattr*]* %7, i32 0, i32 0, !dbg !4537
  %63 = load %struct.rtmsg*, %struct.rtmsg** %6, align 8, !dbg !4538
  %64 = bitcast %struct.rtmsg* %63 to i8*, !dbg !4539
  %65 = getelementptr inbounds i8, i8* %64, i64 12, !dbg !4540
  %66 = bitcast i8* %65 to %struct.rtattr*, !dbg !4541
  %67 = load i64, i64* %8, align 8, !dbg !4542
  call void @parse_rtattr(%struct.rtattr** %62, i32 22, %struct.rtattr* %66, i64 %67), !dbg !4543
  %68 = load %struct.rtmsg*, %struct.rtmsg** %6, align 8, !dbg !4544
  %69 = getelementptr inbounds [23 x %struct.rtattr*], [23 x %struct.rtattr*]* %7, i32 0, i32 0, !dbg !4546
  %70 = call %struct._ip_route* @route_is_ours(%struct.rtmsg* %68, %struct.rtattr** %69, %struct._vrrp_t** %9), !dbg !4547
  store %struct._ip_route* %70, %struct._ip_route** %10, align 8, !dbg !4548
  %71 = icmp ne %struct._ip_route* %70, null, !dbg !4548
  br i1 %71, label %73, label %72, !dbg !4549

; <label>:72:                                     ; preds = %54
  store i32 0, i32* %3, align 4, !dbg !4550
  br label %140, !dbg !4550

; <label>:73:                                     ; preds = %54
  %74 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !4551
  %75 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %74, i32 0, i32 1, !dbg !4552
  %76 = load i16, i16* %75, align 4, !dbg !4552
  %77 = zext i16 %76 to i32, !dbg !4551
  %78 = icmp eq i32 %77, 24, !dbg !4553
  %79 = load %struct._ip_route*, %struct._ip_route** %10, align 8, !dbg !4554
  %80 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %79, i32 0, i32 36, !dbg !4555
  %81 = zext i1 %78 to i8, !dbg !4556
  store i8 %81, i8* %80, align 8, !dbg !4556
  %82 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !4557
  %83 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %82, i32 0, i32 1, !dbg !4559
  %84 = load i16, i16* %83, align 4, !dbg !4559
  %85 = zext i16 %84 to i32, !dbg !4557
  %86 = icmp eq i32 %85, 24, !dbg !4560
  br i1 %86, label %87, label %126, !dbg !4561

; <label>:87:                                     ; preds = %73
  %88 = getelementptr inbounds [23 x %struct.rtattr*], [23 x %struct.rtattr*]* %7, i64 0, i64 4, !dbg !4562
  %89 = load %struct.rtattr*, %struct.rtattr** %88, align 16, !dbg !4562
  %90 = icmp ne %struct.rtattr* %89, null, !dbg !4562
  br i1 %90, label %91, label %124, !dbg !4565

; <label>:91:                                     ; preds = %87
  %92 = getelementptr inbounds [23 x %struct.rtattr*], [23 x %struct.rtattr*]* %7, i64 0, i64 4, !dbg !4566
  %93 = load %struct.rtattr*, %struct.rtattr** %92, align 16, !dbg !4566
  %94 = bitcast %struct.rtattr* %93 to i8*, !dbg !4568
  %95 = getelementptr inbounds i8, i8* %94, i64 4, !dbg !4569
  %96 = bitcast i8* %95 to i32*, !dbg !4570
  %97 = load i32, i32* %96, align 4, !dbg !4571
  %98 = load %struct._ip_route*, %struct._ip_route** %10, align 8, !dbg !4572
  %99 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %98, i32 0, i32 37, !dbg !4573
  store i32 %97, i32* %99, align 4, !dbg !4574
  %100 = load %struct._ip_route*, %struct._ip_route** %10, align 8, !dbg !4575
  %101 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %100, i32 0, i32 10, !dbg !4577
  %102 = load %struct._interface*, %struct._interface** %101, align 8, !dbg !4577
  %103 = icmp ne %struct._interface* %102, null, !dbg !4575
  br i1 %103, label %104, label %123, !dbg !4578

; <label>:104:                                    ; preds = %91
  %105 = load %struct._ip_route*, %struct._ip_route** %10, align 8, !dbg !4579
  %106 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %105, i32 0, i32 10, !dbg !4581
  %107 = load %struct._interface*, %struct._interface** %106, align 8, !dbg !4581
  %108 = getelementptr inbounds %struct._interface, %struct._interface* %107, i32 0, i32 1, !dbg !4582
  %109 = load i32, i32* %108, align 8, !dbg !4582
  %110 = load %struct._ip_route*, %struct._ip_route** %10, align 8, !dbg !4583
  %111 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %110, i32 0, i32 37, !dbg !4584
  %112 = load i32, i32* %111, align 4, !dbg !4584
  %113 = icmp ne i32 %109, %112, !dbg !4585
  br i1 %113, label %114, label %123, !dbg !4586

; <label>:114:                                    ; preds = %104
  %115 = load %struct._ip_route*, %struct._ip_route** %10, align 8, !dbg !4587
  %116 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %115, i32 0, i32 37, !dbg !4588
  %117 = load i32, i32* %116, align 4, !dbg !4588
  %118 = load %struct._ip_route*, %struct._ip_route** %10, align 8, !dbg !4589
  %119 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %118, i32 0, i32 10, !dbg !4590
  %120 = load %struct._interface*, %struct._interface** %119, align 8, !dbg !4590
  %121 = getelementptr inbounds %struct._interface, %struct._interface* %120, i32 0, i32 1, !dbg !4591
  %122 = load i32, i32* %121, align 8, !dbg !4591
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.40, i32 0, i32 0), i32 %117, i32 %122), !dbg !4592
  br label %123, !dbg !4592

; <label>:123:                                    ; preds = %114, %104, %91
  br label %125, !dbg !4593

; <label>:124:                                    ; preds = %87
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.41, i32 0, i32 0)), !dbg !4594
  br label %125

; <label>:125:                                    ; preds = %124, %123
  store i32 0, i32* %3, align 4, !dbg !4595
  br label %140, !dbg !4595

; <label>:126:                                    ; preds = %73
  %127 = load %struct._ip_route*, %struct._ip_route** %10, align 8, !dbg !4596
  %128 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %127, i32 0, i32 34, !dbg !4598
  %129 = load i8, i8* %128, align 4, !dbg !4598
  %130 = trunc i8 %129 to i1, !dbg !4598
  br i1 %130, label %131, label %132, !dbg !4599

; <label>:131:                                    ; preds = %126
  store i32 0, i32* %3, align 4, !dbg !4600
  br label %140, !dbg !4600

; <label>:132:                                    ; preds = %126
  %133 = load %struct._vrrp_t*, %struct._vrrp_t** %9, align 8, !dbg !4601
  %134 = icmp ne %struct._vrrp_t* %133, null, !dbg !4601
  br i1 %134, label %135, label %137, !dbg !4603

; <label>:135:                                    ; preds = %132
  %136 = load %struct._vrrp_t*, %struct._vrrp_t** %9, align 8, !dbg !4604
  call void @set_vrrp_backup(%struct._vrrp_t* %136), !dbg !4605
  br label %139, !dbg !4605

; <label>:137:                                    ; preds = %132
  %138 = load %struct._ip_route*, %struct._ip_route** %10, align 8, !dbg !4606
  call void @reinstate_static_route(%struct._ip_route* %138), !dbg !4607
  br label %139

; <label>:139:                                    ; preds = %137, %135
  store i32 0, i32* %3, align 4, !dbg !4608
  br label %140, !dbg !4608

; <label>:140:                                    ; preds = %139, %131, %125, %72, %53, %40, %29, %22
  %141 = load i32, i32* %3, align 4, !dbg !4609
  ret i32 %141, !dbg !4609
}

; Function Attrs: nounwind uwtable
define internal i32 @netlink_rule_filter(%struct.sockaddr_nl*, %struct.nlmsghdr*) #0 !dbg !4610 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_nl*, align 8
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca %struct.fib_rule_hdr*, align 8
  %7 = alloca [18 x %struct.rtattr*], align 16
  %8 = alloca i64, align 8
  %9 = alloca %struct._vrrp_t*, align 8
  %10 = alloca %struct._ip_rule*, align 8
  store %struct.sockaddr_nl* %0, %struct.sockaddr_nl** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.sockaddr_nl** %4, metadata !4611, metadata !669), !dbg !4612
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.nlmsghdr** %5, metadata !4613, metadata !669), !dbg !4614
  call void @llvm.dbg.declare(metadata %struct.fib_rule_hdr** %6, metadata !4615, metadata !669), !dbg !4628
  call void @llvm.dbg.declare(metadata [18 x %struct.rtattr*]* %7, metadata !4629, metadata !669), !dbg !4633
  call void @llvm.dbg.declare(metadata i64* %8, metadata !4634, metadata !669), !dbg !4635
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %9, metadata !4636, metadata !669), !dbg !4637
  call void @llvm.dbg.declare(metadata %struct._ip_rule** %10, metadata !4638, metadata !669), !dbg !4664
  %11 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !4665
  %12 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %11, i32 0, i32 1, !dbg !4667
  %13 = load i16, i16* %12, align 4, !dbg !4667
  %14 = zext i16 %13 to i32, !dbg !4665
  %15 = icmp ne i32 %14, 32, !dbg !4668
  br i1 %15, label %16, label %23, !dbg !4669

; <label>:16:                                     ; preds = %2
  %17 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !4670
  %18 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %17, i32 0, i32 1, !dbg !4672
  %19 = load i16, i16* %18, align 4, !dbg !4672
  %20 = zext i16 %19 to i32, !dbg !4670
  %21 = icmp ne i32 %20, 33, !dbg !4673
  br i1 %21, label %22, label %23, !dbg !4674

; <label>:22:                                     ; preds = %16
  store i32 0, i32* %3, align 4, !dbg !4675
  br label %89, !dbg !4675

; <label>:23:                                     ; preds = %16, %2
  %24 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !4676
  %25 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %24, i32 0, i32 0, !dbg !4678
  %26 = load i32, i32* %25, align 4, !dbg !4678
  %27 = zext i32 %26 to i64, !dbg !4676
  %28 = icmp ult i64 %27, 28, !dbg !4679
  br i1 %28, label %29, label %30, !dbg !4680

; <label>:29:                                     ; preds = %23
  store i32 -1, i32* %3, align 4, !dbg !4681
  br label %89, !dbg !4681

; <label>:30:                                     ; preds = %23
  %31 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !4682
  %32 = bitcast %struct.nlmsghdr* %31 to i8*, !dbg !4683
  %33 = getelementptr inbounds i8, i8* %32, i64 16, !dbg !4684
  %34 = bitcast i8* %33 to %struct.fib_rule_hdr*, !dbg !4682
  store %struct.fib_rule_hdr* %34, %struct.fib_rule_hdr** %6, align 8, !dbg !4685
  %35 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %6, align 8, !dbg !4686
  %36 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %35, i32 0, i32 0, !dbg !4688
  %37 = load i8, i8* %36, align 4, !dbg !4688
  %38 = zext i8 %37 to i32, !dbg !4686
  %39 = icmp ne i32 %38, 2, !dbg !4689
  br i1 %39, label %40, label %47, !dbg !4690

; <label>:40:                                     ; preds = %30
  %41 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %6, align 8, !dbg !4691
  %42 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %41, i32 0, i32 0, !dbg !4693
  %43 = load i8, i8* %42, align 4, !dbg !4693
  %44 = zext i8 %43 to i32, !dbg !4691
  %45 = icmp ne i32 %44, 10, !dbg !4694
  br i1 %45, label %46, label %47, !dbg !4695

; <label>:46:                                     ; preds = %40
  store i32 0, i32* %3, align 4, !dbg !4696
  br label %89, !dbg !4696

; <label>:47:                                     ; preds = %40, %30
  %48 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !4697
  %49 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %48, i32 0, i32 0, !dbg !4698
  %50 = load i32, i32* %49, align 4, !dbg !4698
  %51 = zext i32 %50 to i64, !dbg !4697
  %52 = sub i64 %51, 28, !dbg !4699
  store i64 %52, i64* %8, align 8, !dbg !4700
  %53 = getelementptr inbounds [18 x %struct.rtattr*], [18 x %struct.rtattr*]* %7, i32 0, i32 0, !dbg !4701
  %54 = bitcast %struct.rtattr** %53 to i8*, !dbg !4701
  call void @llvm.memset.p0i8.i64(i8* %54, i8 0, i64 144, i32 16, i1 false), !dbg !4701
  %55 = getelementptr inbounds [18 x %struct.rtattr*], [18 x %struct.rtattr*]* %7, i32 0, i32 0, !dbg !4702
  %56 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %6, align 8, !dbg !4703
  %57 = bitcast %struct.fib_rule_hdr* %56 to i8*, !dbg !4704
  %58 = getelementptr inbounds i8, i8* %57, i64 12, !dbg !4705
  %59 = bitcast i8* %58 to %struct.rtattr*, !dbg !4706
  %60 = load i64, i64* %8, align 8, !dbg !4707
  call void @parse_rtattr(%struct.rtattr** %55, i32 17, %struct.rtattr* %59, i64 %60), !dbg !4708
  %61 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8, !dbg !4709
  %62 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %61, i32 0, i32 1, !dbg !4711
  %63 = load i16, i16* %62, align 4, !dbg !4711
  %64 = zext i16 %63 to i32, !dbg !4709
  %65 = icmp ne i32 %64, 33, !dbg !4712
  br i1 %65, label %66, label %67, !dbg !4713

; <label>:66:                                     ; preds = %47
  store i32 0, i32* %3, align 4, !dbg !4714
  br label %89, !dbg !4714

; <label>:67:                                     ; preds = %47
  %68 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %6, align 8, !dbg !4715
  %69 = getelementptr inbounds [18 x %struct.rtattr*], [18 x %struct.rtattr*]* %7, i32 0, i32 0, !dbg !4717
  %70 = call %struct._ip_rule* @rule_is_ours(%struct.fib_rule_hdr* %68, %struct.rtattr** %69, %struct._vrrp_t** %9), !dbg !4718
  store %struct._ip_rule* %70, %struct._ip_rule** %10, align 8, !dbg !4719
  %71 = icmp ne %struct._ip_rule* %70, null, !dbg !4719
  br i1 %71, label %73, label %72, !dbg !4720

; <label>:72:                                     ; preds = %67
  store i32 0, i32* %3, align 4, !dbg !4721
  br label %89, !dbg !4721

; <label>:73:                                     ; preds = %67
  %74 = load %struct._ip_rule*, %struct._ip_rule** %10, align 8, !dbg !4722
  %75 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %74, i32 0, i32 20, !dbg !4723
  store i8 0, i8* %75, align 8, !dbg !4724
  %76 = load %struct._ip_rule*, %struct._ip_rule** %10, align 8, !dbg !4725
  %77 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %76, i32 0, i32 18, !dbg !4727
  %78 = load i8, i8* %77, align 8, !dbg !4727
  %79 = trunc i8 %78 to i1, !dbg !4727
  br i1 %79, label %80, label %81, !dbg !4728

; <label>:80:                                     ; preds = %73
  store i32 0, i32* %3, align 4, !dbg !4729
  br label %89, !dbg !4729

; <label>:81:                                     ; preds = %73
  %82 = load %struct._vrrp_t*, %struct._vrrp_t** %9, align 8, !dbg !4730
  %83 = icmp ne %struct._vrrp_t* %82, null, !dbg !4730
  br i1 %83, label %84, label %86, !dbg !4732

; <label>:84:                                     ; preds = %81
  %85 = load %struct._vrrp_t*, %struct._vrrp_t** %9, align 8, !dbg !4733
  call void @set_vrrp_backup(%struct._vrrp_t* %85), !dbg !4734
  br label %88, !dbg !4734

; <label>:86:                                     ; preds = %81
  %87 = load %struct._ip_rule*, %struct._ip_rule** %10, align 8, !dbg !4735
  call void @reinstate_static_rule(%struct._ip_rule* %87), !dbg !4736
  br label %88

; <label>:88:                                     ; preds = %86, %84
  store i32 0, i32* %3, align 4, !dbg !4737
  br label %89, !dbg !4737

; <label>:89:                                     ; preds = %88, %80, %72, %66, %46, %29, %22
  %90 = load i32, i32* %3, align 4, !dbg !4738
  ret i32 %90, !dbg !4738
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @__test_bit(i32, i64*) #8 !dbg !4739 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4744, metadata !669), !dbg !4745
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !4746, metadata !669), !dbg !4747
  %5 = load i32, i32* %3, align 4, !dbg !4748
  %6 = zext i32 %5 to i64, !dbg !4749
  %7 = udiv i64 %6, 64, !dbg !4750
  %8 = load i64*, i64** %4, align 8, !dbg !4751
  %9 = getelementptr inbounds i64, i64* %8, i64 %7, !dbg !4751
  %10 = load i64, i64* %9, align 8, !dbg !4751
  %11 = load i32, i32* %3, align 4, !dbg !4752
  %12 = zext i32 %11 to i64, !dbg !4753
  %13 = urem i64 %12, 64, !dbg !4754
  %14 = shl i64 1, %13, !dbg !4755
  %15 = and i64 %10, %14, !dbg !4756
  %16 = icmp ne i64 %15, 0, !dbg !4757
  %17 = xor i1 %16, true, !dbg !4757
  %18 = xor i1 %17, true, !dbg !4758
  ret i1 %18, !dbg !4759
}

declare void @cleanup_lost_interface(%struct._interface*) #4

declare %struct._thread* @thread_add_event(%struct._thread_master*, i32 (%struct._thread*)*, i8*, i32) #4

declare i32 @recreate_vmac_thread(%struct._thread*) #4

declare void @update_added_interface(%struct._interface*) #4

; Function Attrs: nounwind
declare i8* @inet_ntop(i32, i8*, i8*, i32) #5

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @inaddr_equal(i16 zeroext, i8*, i8*) #8 !dbg !4760 {
  %4 = alloca i1, align 1
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.in6_addr*, align 8
  %9 = alloca %struct.in6_addr*, align 8
  %10 = alloca %struct.in_addr*, align 8
  %11 = alloca %struct.in_addr*, align 8
  store i16 %0, i16* %5, align 2
  call void @llvm.dbg.declare(metadata i16* %5, metadata !4764, metadata !669), !dbg !4765
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4766, metadata !669), !dbg !4767
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4768, metadata !669), !dbg !4769
  %12 = load i16, i16* %5, align 2, !dbg !4770
  %13 = zext i16 %12 to i32, !dbg !4770
  %14 = icmp eq i32 %13, 10, !dbg !4772
  br i1 %14, label %15, label %26, !dbg !4773

; <label>:15:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.in6_addr** %8, metadata !4774, metadata !669), !dbg !4776
  %16 = load i8*, i8** %6, align 8, !dbg !4777
  %17 = bitcast i8* %16 to %struct.in6_addr*, !dbg !4778
  store %struct.in6_addr* %17, %struct.in6_addr** %8, align 8, !dbg !4776
  call void @llvm.dbg.declare(metadata %struct.in6_addr** %9, metadata !4779, metadata !669), !dbg !4780
  %18 = load i8*, i8** %7, align 8, !dbg !4781
  %19 = bitcast i8* %18 to %struct.in6_addr*, !dbg !4782
  store %struct.in6_addr* %19, %struct.in6_addr** %9, align 8, !dbg !4780
  %20 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8, !dbg !4783
  %21 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8, !dbg !4785
  %22 = call i32 @__ip6_addr_equal(%struct.in6_addr* %20, %struct.in6_addr* %21), !dbg !4786
  %23 = icmp ne i32 %22, 0, !dbg !4786
  br i1 %23, label %24, label %25, !dbg !4787

; <label>:24:                                     ; preds = %15
  store i1 true, i1* %4, align 1, !dbg !4788
  br label %46, !dbg !4788

; <label>:25:                                     ; preds = %15
  br label %45, !dbg !4789

; <label>:26:                                     ; preds = %3
  %27 = load i16, i16* %5, align 2, !dbg !4790
  %28 = zext i16 %27 to i32, !dbg !4790
  %29 = icmp eq i32 %28, 2, !dbg !4793
  br i1 %29, label %30, label %44, !dbg !4790

; <label>:30:                                     ; preds = %26
  call void @llvm.dbg.declare(metadata %struct.in_addr** %10, metadata !4794, metadata !669), !dbg !4796
  %31 = load i8*, i8** %6, align 8, !dbg !4797
  %32 = bitcast i8* %31 to %struct.in_addr*, !dbg !4798
  store %struct.in_addr* %32, %struct.in_addr** %10, align 8, !dbg !4796
  call void @llvm.dbg.declare(metadata %struct.in_addr** %11, metadata !4799, metadata !669), !dbg !4800
  %33 = load i8*, i8** %7, align 8, !dbg !4801
  %34 = bitcast i8* %33 to %struct.in_addr*, !dbg !4802
  store %struct.in_addr* %34, %struct.in_addr** %11, align 8, !dbg !4800
  %35 = load %struct.in_addr*, %struct.in_addr** %10, align 8, !dbg !4803
  %36 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %35, i32 0, i32 0, !dbg !4805
  %37 = load i32, i32* %36, align 4, !dbg !4805
  %38 = load %struct.in_addr*, %struct.in_addr** %11, align 8, !dbg !4806
  %39 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %38, i32 0, i32 0, !dbg !4807
  %40 = load i32, i32* %39, align 4, !dbg !4807
  %41 = icmp eq i32 %37, %40, !dbg !4808
  br i1 %41, label %42, label %43, !dbg !4809

; <label>:42:                                     ; preds = %30
  store i1 true, i1* %4, align 1, !dbg !4810
  br label %46, !dbg !4810

; <label>:43:                                     ; preds = %30
  br label %44, !dbg !4811

; <label>:44:                                     ; preds = %43, %26
  br label %45

; <label>:45:                                     ; preds = %44, %25
  store i1 false, i1* %4, align 1, !dbg !4812
  br label %46, !dbg !4812

; <label>:46:                                     ; preds = %45, %42, %24
  %47 = load i1, i1* %4, align 1, !dbg !4813
  ret i1 %47, !dbg !4813
}

declare void @inet_ip4tosockaddr(%struct.in_addr*, %struct.sockaddr_storage*) #4

declare void @inet_ip6tosockaddr(%struct.in6_addr*, %struct.sockaddr_storage*) #4

declare zeroext i1 @add_link_local_address(%struct._interface*, %struct.in6_addr*) #4

declare zeroext i1 @replace_link_local_address(%struct._interface*) #4

; Function Attrs: nounwind uwtable
define internal %struct._vrrp_t* @address_is_ours(%struct.ifaddrmsg*, %struct.in_addr*, %struct._interface*) #0 !dbg !4814 {
  %4 = alloca %struct._vrrp_t*, align 8
  %5 = alloca %struct.ifaddrmsg*, align 8
  %6 = alloca %struct.in_addr*, align 8
  %7 = alloca %struct._interface*, align 8
  %8 = alloca %struct._element*, align 8
  %9 = alloca %struct._element*, align 8
  %10 = alloca %struct._tracking_vrrp*, align 8
  %11 = alloca %struct._vrrp_t*, align 8
  %12 = alloca %struct._ip_address*, align 8
  store %struct.ifaddrmsg* %0, %struct.ifaddrmsg** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.ifaddrmsg** %5, metadata !4817, metadata !669), !dbg !4818
  store %struct.in_addr* %1, %struct.in_addr** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.in_addr** %6, metadata !4819, metadata !669), !dbg !4820
  store %struct._interface* %2, %struct._interface** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._interface** %7, metadata !4821, metadata !669), !dbg !4822
  call void @llvm.dbg.declare(metadata %struct._element** %8, metadata !4823, metadata !669), !dbg !4824
  call void @llvm.dbg.declare(metadata %struct._element** %9, metadata !4825, metadata !669), !dbg !4826
  call void @llvm.dbg.declare(metadata %struct._tracking_vrrp** %10, metadata !4827, metadata !669), !dbg !4828
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %11, metadata !4829, metadata !669), !dbg !4830
  call void @llvm.dbg.declare(metadata %struct._ip_address** %12, metadata !4831, metadata !669), !dbg !4832
  %13 = load %struct._interface*, %struct._interface** %7, align 8, !dbg !4833
  %14 = getelementptr inbounds %struct._interface, %struct._interface* %13, i32 0, i32 26, !dbg !4835
  %15 = load %struct._list*, %struct._list** %14, align 8, !dbg !4835
  %16 = icmp ne %struct._list* %15, null, !dbg !4836
  br i1 %16, label %17, label %31, !dbg !4836

; <label>:17:                                     ; preds = %3
  %18 = load %struct._interface*, %struct._interface** %7, align 8, !dbg !4837
  %19 = getelementptr inbounds %struct._interface, %struct._interface* %18, i32 0, i32 26, !dbg !4839
  %20 = load %struct._list*, %struct._list** %19, align 8, !dbg !4839
  %21 = icmp ne %struct._list* %20, null, !dbg !4840
  br i1 %21, label %23, label %22, !dbg !4841

; <label>:22:                                     ; preds = %17
  br label %29, !dbg !4842

; <label>:23:                                     ; preds = %17
  %24 = load %struct._interface*, %struct._interface** %7, align 8, !dbg !4844
  %25 = getelementptr inbounds %struct._interface, %struct._interface* %24, i32 0, i32 26, !dbg !4846
  %26 = load %struct._list*, %struct._list** %25, align 8, !dbg !4846
  %27 = getelementptr inbounds %struct._list, %struct._list* %26, i32 0, i32 0, !dbg !4847
  %28 = load %struct._element*, %struct._element** %27, align 8, !dbg !4847
  br label %29, !dbg !4848

; <label>:29:                                     ; preds = %23, %22
  %30 = phi %struct._element* [ null, %22 ], [ %28, %23 ], !dbg !4849
  br label %32, !dbg !4851

; <label>:31:                                     ; preds = %3
  br label %32, !dbg !4852

; <label>:32:                                     ; preds = %31, %29
  %33 = phi %struct._element* [ %30, %29 ], [ null, %31 ], !dbg !4854
  store %struct._element* %33, %struct._element** %8, align 8, !dbg !4856
  br label %34, !dbg !4857

; <label>:34:                                     ; preds = %173, %32
  %35 = load %struct._element*, %struct._element** %8, align 8, !dbg !4858
  %36 = icmp ne %struct._element* %35, null, !dbg !4861
  br i1 %36, label %37, label %42, !dbg !4862

; <label>:37:                                     ; preds = %34
  %38 = load %struct._element*, %struct._element** %8, align 8, !dbg !4863
  %39 = getelementptr inbounds %struct._element, %struct._element* %38, i32 0, i32 2, !dbg !4865
  %40 = load i8*, i8** %39, align 8, !dbg !4865
  %41 = bitcast i8* %40 to %struct._tracking_vrrp*, !dbg !4866
  store %struct._tracking_vrrp* %41, %struct._tracking_vrrp** %10, align 8, !dbg !4867
  br label %42

; <label>:42:                                     ; preds = %37, %34
  %43 = phi i1 [ false, %34 ], [ true, %37 ]
  br i1 %43, label %44, label %177, !dbg !4868

; <label>:44:                                     ; preds = %42
  %45 = load %struct._tracking_vrrp*, %struct._tracking_vrrp** %10, align 8, !dbg !4870
  %46 = getelementptr inbounds %struct._tracking_vrrp, %struct._tracking_vrrp* %45, i32 0, i32 1, !dbg !4872
  %47 = load %struct._vrrp_t*, %struct._vrrp_t** %46, align 8, !dbg !4872
  store %struct._vrrp_t* %47, %struct._vrrp_t** %11, align 8, !dbg !4873
  %48 = load %struct._vrrp_t*, %struct._vrrp_t** %11, align 8, !dbg !4874
  %49 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %48, i32 0, i32 55, !dbg !4876
  %50 = load i32, i32* %49, align 8, !dbg !4876
  %51 = icmp ne i32 %50, 2, !dbg !4877
  br i1 %51, label %52, label %53, !dbg !4878

; <label>:52:                                     ; preds = %44
  br label %173, !dbg !4879

; <label>:53:                                     ; preds = %44
  %54 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %5, align 8, !dbg !4880
  %55 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %54, i32 0, i32 0, !dbg !4882
  %56 = load i8, i8* %55, align 4, !dbg !4882
  %57 = zext i8 %56 to i32, !dbg !4880
  %58 = load %struct._vrrp_t*, %struct._vrrp_t** %11, align 8, !dbg !4883
  %59 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %58, i32 0, i32 0, !dbg !4884
  %60 = load i16, i16* %59, align 8, !dbg !4884
  %61 = zext i16 %60 to i32, !dbg !4883
  %62 = icmp eq i32 %57, %61, !dbg !4885
  br i1 %62, label %63, label %118, !dbg !4886

; <label>:63:                                     ; preds = %53
  %64 = load %struct._vrrp_t*, %struct._vrrp_t** %11, align 8, !dbg !4887
  %65 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %64, i32 0, i32 41, !dbg !4890
  %66 = load %struct._list*, %struct._list** %65, align 8, !dbg !4890
  %67 = icmp ne %struct._list* %66, null, !dbg !4891
  br i1 %67, label %68, label %82, !dbg !4891

; <label>:68:                                     ; preds = %63
  %69 = load %struct._vrrp_t*, %struct._vrrp_t** %11, align 8, !dbg !4892
  %70 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %69, i32 0, i32 41, !dbg !4894
  %71 = load %struct._list*, %struct._list** %70, align 8, !dbg !4894
  %72 = icmp ne %struct._list* %71, null, !dbg !4895
  br i1 %72, label %74, label %73, !dbg !4896

; <label>:73:                                     ; preds = %68
  br label %80, !dbg !4897

; <label>:74:                                     ; preds = %68
  %75 = load %struct._vrrp_t*, %struct._vrrp_t** %11, align 8, !dbg !4899
  %76 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %75, i32 0, i32 41, !dbg !4901
  %77 = load %struct._list*, %struct._list** %76, align 8, !dbg !4901
  %78 = getelementptr inbounds %struct._list, %struct._list* %77, i32 0, i32 0, !dbg !4902
  %79 = load %struct._element*, %struct._element** %78, align 8, !dbg !4902
  br label %80, !dbg !4903

; <label>:80:                                     ; preds = %74, %73
  %81 = phi %struct._element* [ null, %73 ], [ %79, %74 ], !dbg !4904
  br label %83, !dbg !4906

; <label>:82:                                     ; preds = %63
  br label %83, !dbg !4907

; <label>:83:                                     ; preds = %82, %80
  %84 = phi %struct._element* [ %81, %80 ], [ null, %82 ], !dbg !4909
  store %struct._element* %84, %struct._element** %9, align 8, !dbg !4911
  br label %85, !dbg !4912

; <label>:85:                                     ; preds = %113, %83
  %86 = load %struct._element*, %struct._element** %9, align 8, !dbg !4913
  %87 = icmp ne %struct._element* %86, null, !dbg !4916
  br i1 %87, label %88, label %93, !dbg !4917

; <label>:88:                                     ; preds = %85
  %89 = load %struct._element*, %struct._element** %9, align 8, !dbg !4918
  %90 = getelementptr inbounds %struct._element, %struct._element* %89, i32 0, i32 2, !dbg !4920
  %91 = load i8*, i8** %90, align 8, !dbg !4920
  %92 = bitcast i8* %91 to %struct._ip_address*, !dbg !4921
  store %struct._ip_address* %92, %struct._ip_address** %12, align 8, !dbg !4922
  br label %93

; <label>:93:                                     ; preds = %88, %85
  %94 = phi i1 [ false, %85 ], [ true, %88 ]
  br i1 %94, label %95, label %117, !dbg !4923

; <label>:95:                                     ; preds = %93
  %96 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %5, align 8, !dbg !4925
  %97 = load %struct.in_addr*, %struct.in_addr** %6, align 8, !dbg !4928
  %98 = bitcast %struct.in_addr* %97 to i8*, !dbg !4928
  %99 = load %struct._ip_address*, %struct._ip_address** %12, align 8, !dbg !4929
  %100 = load %struct._interface*, %struct._interface** %7, align 8, !dbg !4930
  %101 = call zeroext i1 @addr_is_equal(%struct.ifaddrmsg* %96, i8* %98, %struct._ip_address* %99, %struct._interface* %100), !dbg !4931
  br i1 %101, label %102, label %112, !dbg !4932

; <label>:102:                                    ; preds = %95
  %103 = load %struct._ip_address*, %struct._ip_address** %12, align 8, !dbg !4933
  %104 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %103, i32 0, i32 8, !dbg !4934
  %105 = load i8, i8* %104, align 4, !dbg !4934
  %106 = trunc i8 %105 to i1, !dbg !4934
  br i1 %106, label %107, label %108, !dbg !4933

; <label>:107:                                    ; preds = %102
  br label %110, !dbg !4935

; <label>:108:                                    ; preds = %102
  %109 = load %struct._vrrp_t*, %struct._vrrp_t** %11, align 8, !dbg !4937
  br label %110, !dbg !4939

; <label>:110:                                    ; preds = %108, %107
  %111 = phi %struct._vrrp_t* [ null, %107 ], [ %109, %108 ], !dbg !4940
  store %struct._vrrp_t* %111, %struct._vrrp_t** %4, align 8, !dbg !4942
  br label %178, !dbg !4942

; <label>:112:                                    ; preds = %95
  br label %113, !dbg !4943

; <label>:113:                                    ; preds = %112
  %114 = load %struct._element*, %struct._element** %9, align 8, !dbg !4944
  %115 = getelementptr inbounds %struct._element, %struct._element* %114, i32 0, i32 0, !dbg !4946
  %116 = load %struct._element*, %struct._element** %115, align 8, !dbg !4946
  store %struct._element* %116, %struct._element** %9, align 8, !dbg !4947
  br label %85, !dbg !4948, !llvm.loop !4949

; <label>:117:                                    ; preds = %93
  br label %118, !dbg !4951

; <label>:118:                                    ; preds = %117, %53
  %119 = load %struct._vrrp_t*, %struct._vrrp_t** %11, align 8, !dbg !4952
  %120 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %119, i32 0, i32 42, !dbg !4954
  %121 = load %struct._list*, %struct._list** %120, align 8, !dbg !4954
  %122 = icmp ne %struct._list* %121, null, !dbg !4955
  br i1 %122, label %123, label %137, !dbg !4955

; <label>:123:                                    ; preds = %118
  %124 = load %struct._vrrp_t*, %struct._vrrp_t** %11, align 8, !dbg !4956
  %125 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %124, i32 0, i32 42, !dbg !4958
  %126 = load %struct._list*, %struct._list** %125, align 8, !dbg !4958
  %127 = icmp ne %struct._list* %126, null, !dbg !4959
  br i1 %127, label %129, label %128, !dbg !4960

; <label>:128:                                    ; preds = %123
  br label %135, !dbg !4961

; <label>:129:                                    ; preds = %123
  %130 = load %struct._vrrp_t*, %struct._vrrp_t** %11, align 8, !dbg !4963
  %131 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %130, i32 0, i32 42, !dbg !4965
  %132 = load %struct._list*, %struct._list** %131, align 8, !dbg !4965
  %133 = getelementptr inbounds %struct._list, %struct._list* %132, i32 0, i32 0, !dbg !4966
  %134 = load %struct._element*, %struct._element** %133, align 8, !dbg !4966
  br label %135, !dbg !4967

; <label>:135:                                    ; preds = %129, %128
  %136 = phi %struct._element* [ null, %128 ], [ %134, %129 ], !dbg !4968
  br label %138, !dbg !4970

; <label>:137:                                    ; preds = %118
  br label %138, !dbg !4971

; <label>:138:                                    ; preds = %137, %135
  %139 = phi %struct._element* [ %136, %135 ], [ null, %137 ], !dbg !4973
  store %struct._element* %139, %struct._element** %9, align 8, !dbg !4975
  br label %140, !dbg !4976

; <label>:140:                                    ; preds = %168, %138
  %141 = load %struct._element*, %struct._element** %9, align 8, !dbg !4977
  %142 = icmp ne %struct._element* %141, null, !dbg !4980
  br i1 %142, label %143, label %148, !dbg !4981

; <label>:143:                                    ; preds = %140
  %144 = load %struct._element*, %struct._element** %9, align 8, !dbg !4982
  %145 = getelementptr inbounds %struct._element, %struct._element* %144, i32 0, i32 2, !dbg !4984
  %146 = load i8*, i8** %145, align 8, !dbg !4984
  %147 = bitcast i8* %146 to %struct._ip_address*, !dbg !4985
  store %struct._ip_address* %147, %struct._ip_address** %12, align 8, !dbg !4986
  br label %148

; <label>:148:                                    ; preds = %143, %140
  %149 = phi i1 [ false, %140 ], [ true, %143 ]
  br i1 %149, label %150, label %172, !dbg !4987

; <label>:150:                                    ; preds = %148
  %151 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %5, align 8, !dbg !4989
  %152 = load %struct.in_addr*, %struct.in_addr** %6, align 8, !dbg !4992
  %153 = bitcast %struct.in_addr* %152 to i8*, !dbg !4992
  %154 = load %struct._ip_address*, %struct._ip_address** %12, align 8, !dbg !4993
  %155 = load %struct._interface*, %struct._interface** %7, align 8, !dbg !4994
  %156 = call zeroext i1 @addr_is_equal(%struct.ifaddrmsg* %151, i8* %153, %struct._ip_address* %154, %struct._interface* %155), !dbg !4995
  br i1 %156, label %157, label %167, !dbg !4996

; <label>:157:                                    ; preds = %150
  %158 = load %struct._ip_address*, %struct._ip_address** %12, align 8, !dbg !4997
  %159 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %158, i32 0, i32 8, !dbg !4998
  %160 = load i8, i8* %159, align 4, !dbg !4998
  %161 = trunc i8 %160 to i1, !dbg !4998
  br i1 %161, label %162, label %163, !dbg !4997

; <label>:162:                                    ; preds = %157
  br label %165, !dbg !4999

; <label>:163:                                    ; preds = %157
  %164 = load %struct._vrrp_t*, %struct._vrrp_t** %11, align 8, !dbg !5001
  br label %165, !dbg !5003

; <label>:165:                                    ; preds = %163, %162
  %166 = phi %struct._vrrp_t* [ null, %162 ], [ %164, %163 ], !dbg !5004
  store %struct._vrrp_t* %166, %struct._vrrp_t** %4, align 8, !dbg !5006
  br label %178, !dbg !5006

; <label>:167:                                    ; preds = %150
  br label %168, !dbg !5007

; <label>:168:                                    ; preds = %167
  %169 = load %struct._element*, %struct._element** %9, align 8, !dbg !5008
  %170 = getelementptr inbounds %struct._element, %struct._element* %169, i32 0, i32 0, !dbg !5010
  %171 = load %struct._element*, %struct._element** %170, align 8, !dbg !5010
  store %struct._element* %171, %struct._element** %9, align 8, !dbg !5011
  br label %140, !dbg !5012, !llvm.loop !5013

; <label>:172:                                    ; preds = %148
  br label %173, !dbg !5015

; <label>:173:                                    ; preds = %172, %52
  %174 = load %struct._element*, %struct._element** %8, align 8, !dbg !5016
  %175 = getelementptr inbounds %struct._element, %struct._element* %174, i32 0, i32 0, !dbg !5018
  %176 = load %struct._element*, %struct._element** %175, align 8, !dbg !5018
  store %struct._element* %176, %struct._element** %8, align 8, !dbg !5019
  br label %34, !dbg !5020, !llvm.loop !5021

; <label>:177:                                    ; preds = %42
  store %struct._vrrp_t* null, %struct._vrrp_t** %4, align 8, !dbg !5023
  br label %178, !dbg !5023

; <label>:178:                                    ; preds = %177, %165, %110
  %179 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !5024
  ret %struct._vrrp_t* %179, !dbg !5024
}

; Function Attrs: nounwind uwtable
define internal void @set_vrrp_backup(%struct._vrrp_t*) #0 !dbg !5025 {
  %2 = alloca %struct._vrrp_t*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca %struct._element*, align 8
  store %struct._vrrp_t* %0, %struct._vrrp_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %2, metadata !5028, metadata !669), !dbg !5029
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !5030, metadata !669), !dbg !5031
  call void @llvm.dbg.declare(metadata %struct._element** %4, metadata !5032, metadata !669), !dbg !5033
  %5 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !5034
  %6 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %5, i32 0, i32 56, !dbg !5035
  store i32 1, i32* %6, align 4, !dbg !5036
  %7 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !5037
  call void @vrrp_state_leave_master(%struct._vrrp_t* %7, i1 zeroext true), !dbg !5038
  %8 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !5039
  %9 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %8, i32 0, i32 2, !dbg !5041
  %10 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %9, align 8, !dbg !5041
  %11 = icmp ne %struct._vrrp_sgroup* %10, null, !dbg !5039
  br i1 %11, label %12, label %100, !dbg !5042

; <label>:12:                                     ; preds = %1
  %13 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !5043
  %14 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %13, i32 0, i32 2, !dbg !5046
  %15 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %14, align 8, !dbg !5046
  %16 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %15, i32 0, i32 2, !dbg !5047
  %17 = load %struct._list*, %struct._list** %16, align 8, !dbg !5047
  %18 = icmp ne %struct._list* %17, null, !dbg !5048
  br i1 %18, label %19, label %37, !dbg !5048

; <label>:19:                                     ; preds = %12
  %20 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !5049
  %21 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %20, i32 0, i32 2, !dbg !5051
  %22 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %21, align 8, !dbg !5051
  %23 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %22, i32 0, i32 2, !dbg !5052
  %24 = load %struct._list*, %struct._list** %23, align 8, !dbg !5052
  %25 = icmp ne %struct._list* %24, null, !dbg !5053
  br i1 %25, label %27, label %26, !dbg !5054

; <label>:26:                                     ; preds = %19
  br label %35, !dbg !5055

; <label>:27:                                     ; preds = %19
  %28 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !5057
  %29 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %28, i32 0, i32 2, !dbg !5059
  %30 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %29, align 8, !dbg !5059
  %31 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %30, i32 0, i32 2, !dbg !5060
  %32 = load %struct._list*, %struct._list** %31, align 8, !dbg !5060
  %33 = getelementptr inbounds %struct._list, %struct._list* %32, i32 0, i32 0, !dbg !5061
  %34 = load %struct._element*, %struct._element** %33, align 8, !dbg !5061
  br label %35, !dbg !5062

; <label>:35:                                     ; preds = %27, %26
  %36 = phi %struct._element* [ null, %26 ], [ %34, %27 ], !dbg !5063
  br label %38, !dbg !5065

; <label>:37:                                     ; preds = %12
  br label %38, !dbg !5066

; <label>:38:                                     ; preds = %37, %35
  %39 = phi %struct._element* [ %36, %35 ], [ null, %37 ], !dbg !5068
  store %struct._element* %39, %struct._element** %4, align 8, !dbg !5070
  br label %40, !dbg !5071

; <label>:40:                                     ; preds = %91, %38
  %41 = load %struct._element*, %struct._element** %4, align 8, !dbg !5072
  %42 = icmp ne %struct._element* %41, null, !dbg !5075
  br i1 %42, label %43, label %48, !dbg !5076

; <label>:43:                                     ; preds = %40
  %44 = load %struct._element*, %struct._element** %4, align 8, !dbg !5077
  %45 = getelementptr inbounds %struct._element, %struct._element* %44, i32 0, i32 2, !dbg !5079
  %46 = load i8*, i8** %45, align 8, !dbg !5079
  %47 = bitcast i8* %46 to %struct._vrrp_t*, !dbg !5080
  store %struct._vrrp_t* %47, %struct._vrrp_t** %3, align 8, !dbg !5081
  br label %48

; <label>:48:                                     ; preds = %43, %40
  %49 = phi i1 [ false, %40 ], [ true, %43 ]
  br i1 %49, label %50, label %95, !dbg !5082

; <label>:50:                                     ; preds = %48
  %51 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !5084
  %52 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %51, i32 0, i32 55, !dbg !5087
  %53 = load i32, i32* %52, align 8, !dbg !5087
  %54 = icmp eq i32 %53, 2, !dbg !5088
  br i1 %54, label %55, label %90, !dbg !5089

; <label>:55:                                     ; preds = %50
  %56 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !5090
  %57 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %56, i32 0, i32 56, !dbg !5092
  store i32 1, i32* %57, align 4, !dbg !5093
  %58 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !5094
  call void @vrrp_state_leave_master(%struct._vrrp_t* %58, i1 zeroext true), !dbg !5095
  %59 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !5096
  %60 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %59, i32 0, i32 60, !dbg !5097
  %61 = load i32, i32* %60, align 4, !dbg !5097
  %62 = icmp eq i32 %61, 3, !dbg !5098
  br i1 %62, label %63, label %76, !dbg !5099

; <label>:63:                                     ; preds = %55
  %64 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !5100
  %65 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %64, i32 0, i32 38, !dbg !5102
  %66 = load i8, i8* %65, align 2, !dbg !5102
  %67 = zext i8 %66 to i32, !dbg !5103
  %68 = sub i32 256, %67, !dbg !5104
  %69 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !5105
  %70 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %69, i32 0, i32 48, !dbg !5106
  %71 = load i32, i32* %70, align 4, !dbg !5106
  %72 = udiv i32 %71, 10000, !dbg !5107
  %73 = mul i32 %68, %72, !dbg !5108
  %74 = mul i32 %73, 625, !dbg !5109
  %75 = udiv i32 %74, 16, !dbg !5110
  br label %84, !dbg !5111

; <label>:76:                                     ; preds = %55
  %77 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !5112
  %78 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %77, i32 0, i32 38, !dbg !5114
  %79 = load i8, i8* %78, align 2, !dbg !5114
  %80 = zext i8 %79 to i32, !dbg !5115
  %81 = sub i32 256, %80, !dbg !5116
  %82 = mul i32 %81, 1000000, !dbg !5117
  %83 = udiv i32 %82, 256, !dbg !5118
  br label %84, !dbg !5119

; <label>:84:                                     ; preds = %76, %63
  %85 = phi i32 [ %75, %63 ], [ %83, %76 ], !dbg !5120
  %86 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !5122
  %87 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %86, i32 0, i32 70, !dbg !5123
  store i32 %85, i32* %87, align 8, !dbg !5124
  %88 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !5125
  call void @vrrp_init_instance_sands(%struct._vrrp_t* %88), !dbg !5126
  %89 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !5127
  call void @vrrp_thread_requeue_read(%struct._vrrp_t* %89), !dbg !5128
  br label %90, !dbg !5129

; <label>:90:                                     ; preds = %84, %50
  br label %91, !dbg !5130

; <label>:91:                                     ; preds = %90
  %92 = load %struct._element*, %struct._element** %4, align 8, !dbg !5131
  %93 = getelementptr inbounds %struct._element, %struct._element* %92, i32 0, i32 0, !dbg !5133
  %94 = load %struct._element*, %struct._element** %93, align 8, !dbg !5133
  store %struct._element* %94, %struct._element** %4, align 8, !dbg !5134
  br label %40, !dbg !5135, !llvm.loop !5136

; <label>:95:                                     ; preds = %48
  %96 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !5138
  %97 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %96, i32 0, i32 2, !dbg !5139
  %98 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %97, align 8, !dbg !5139
  %99 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %98, i32 0, i32 5, !dbg !5140
  store i32 1, i32* %99, align 8, !dbg !5141
  br label %100, !dbg !5142

; <label>:100:                                    ; preds = %95, %1
  %101 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !5143
  %102 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %101, i32 0, i32 60, !dbg !5144
  %103 = load i32, i32* %102, align 4, !dbg !5144
  %104 = icmp eq i32 %103, 3, !dbg !5145
  br i1 %104, label %105, label %118, !dbg !5146

; <label>:105:                                    ; preds = %100
  %106 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !5147
  %107 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %106, i32 0, i32 38, !dbg !5149
  %108 = load i8, i8* %107, align 2, !dbg !5149
  %109 = zext i8 %108 to i32, !dbg !5150
  %110 = sub i32 256, %109, !dbg !5151
  %111 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !5152
  %112 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %111, i32 0, i32 48, !dbg !5153
  %113 = load i32, i32* %112, align 4, !dbg !5153
  %114 = udiv i32 %113, 10000, !dbg !5154
  %115 = mul i32 %110, %114, !dbg !5155
  %116 = mul i32 %115, 625, !dbg !5156
  %117 = udiv i32 %116, 16, !dbg !5157
  br label %126, !dbg !5158

; <label>:118:                                    ; preds = %100
  %119 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !5159
  %120 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %119, i32 0, i32 38, !dbg !5161
  %121 = load i8, i8* %120, align 2, !dbg !5161
  %122 = zext i8 %121 to i32, !dbg !5162
  %123 = sub i32 256, %122, !dbg !5163
  %124 = mul i32 %123, 1000000, !dbg !5164
  %125 = udiv i32 %124, 256, !dbg !5165
  br label %126, !dbg !5166

; <label>:126:                                    ; preds = %118, %105
  %127 = phi i32 [ %117, %105 ], [ %125, %118 ], !dbg !5167
  %128 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !5169
  %129 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %128, i32 0, i32 70, !dbg !5170
  store i32 %127, i32* %129, align 8, !dbg !5171
  %130 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !5172
  call void @vrrp_init_instance_sands(%struct._vrrp_t* %130), !dbg !5173
  %131 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !5174
  call void @vrrp_thread_requeue_read(%struct._vrrp_t* %131), !dbg !5175
  ret void, !dbg !5176
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @addr_is_equal(%struct.ifaddrmsg*, i8*, %struct._ip_address*, %struct._interface*) #8 !dbg !5177 {
  %5 = alloca i1, align 1
  %6 = alloca %struct.ifaddrmsg*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._ip_address*, align 8
  %9 = alloca %struct._interface*, align 8
  %10 = alloca %struct.in_addr*, align 8
  %11 = alloca %struct.in6_addr*, align 8
  store %struct.ifaddrmsg* %0, %struct.ifaddrmsg** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.ifaddrmsg** %6, metadata !5180, metadata !669), !dbg !5181
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !5182, metadata !669), !dbg !5183
  store %struct._ip_address* %2, %struct._ip_address** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._ip_address** %8, metadata !5184, metadata !669), !dbg !5185
  store %struct._interface* %3, %struct._interface** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._interface** %9, metadata !5186, metadata !669), !dbg !5187
  call void @llvm.dbg.declare(metadata %struct.in_addr** %10, metadata !5188, metadata !669), !dbg !5189
  call void @llvm.dbg.declare(metadata %struct.in6_addr** %11, metadata !5190, metadata !669), !dbg !5191
  %12 = load %struct._ip_address*, %struct._ip_address** %8, align 8, !dbg !5192
  %13 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %12, i32 0, i32 0, !dbg !5194
  %14 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %13, i32 0, i32 0, !dbg !5195
  %15 = load i8, i8* %14, align 8, !dbg !5195
  %16 = zext i8 %15 to i32, !dbg !5192
  %17 = load %struct.ifaddrmsg*, %struct.ifaddrmsg** %6, align 8, !dbg !5196
  %18 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %17, i32 0, i32 0, !dbg !5197
  %19 = load i8, i8* %18, align 4, !dbg !5197
  %20 = zext i8 %19 to i32, !dbg !5196
  %21 = icmp ne i32 %16, %20, !dbg !5198
  br i1 %21, label %22, label %23, !dbg !5199

; <label>:22:                                     ; preds = %4
  store i1 false, i1* %5, align 1, !dbg !5200
  br label %110, !dbg !5200

; <label>:23:                                     ; preds = %4
  %24 = load %struct._ip_address*, %struct._ip_address** %8, align 8, !dbg !5201
  %25 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %24, i32 0, i32 2, !dbg !5203
  %26 = load %struct._interface*, %struct._interface** %25, align 8, !dbg !5203
  %27 = load %struct._interface*, %struct._interface** %9, align 8, !dbg !5204
  %28 = icmp ne %struct._interface* %26, %27, !dbg !5205
  br i1 %28, label %29, label %30, !dbg !5206

; <label>:29:                                     ; preds = %23
  store i1 false, i1* %5, align 1, !dbg !5207
  br label %110, !dbg !5207

; <label>:30:                                     ; preds = %23
  %31 = load %struct._ip_address*, %struct._ip_address** %8, align 8, !dbg !5208
  %32 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %31, i32 0, i32 0, !dbg !5210
  %33 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %32, i32 0, i32 0, !dbg !5211
  %34 = load i8, i8* %33, align 8, !dbg !5211
  %35 = zext i8 %34 to i32, !dbg !5208
  %36 = icmp eq i32 %35, 2, !dbg !5212
  br i1 %36, label %37, label %50, !dbg !5213

; <label>:37:                                     ; preds = %30
  %38 = load i8*, i8** %7, align 8, !dbg !5214
  %39 = bitcast i8* %38 to %struct.in_addr*, !dbg !5216
  store %struct.in_addr* %39, %struct.in_addr** %10, align 8, !dbg !5217
  %40 = load %struct._ip_address*, %struct._ip_address** %8, align 8, !dbg !5218
  %41 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %40, i32 0, i32 1, !dbg !5219
  %42 = bitcast %union.anon.3* %41 to %struct.anon.4*, !dbg !5220
  %43 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %42, i32 0, i32 0, !dbg !5221
  %44 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %43, i32 0, i32 0, !dbg !5222
  %45 = load i32, i32* %44, align 8, !dbg !5222
  %46 = load %struct.in_addr*, %struct.in_addr** %10, align 8, !dbg !5223
  %47 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %46, i32 0, i32 0, !dbg !5224
  %48 = load i32, i32* %47, align 4, !dbg !5224
  %49 = icmp eq i32 %45, %48, !dbg !5225
  store i1 %49, i1* %5, align 1, !dbg !5226
  br label %110, !dbg !5226

; <label>:50:                                     ; preds = %30
  %51 = load i8*, i8** %7, align 8, !dbg !5227
  %52 = bitcast i8* %51 to %struct.in6_addr*, !dbg !5228
  store %struct.in6_addr* %52, %struct.in6_addr** %11, align 8, !dbg !5229
  %53 = load %struct._ip_address*, %struct._ip_address** %8, align 8, !dbg !5230
  %54 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %53, i32 0, i32 1, !dbg !5231
  %55 = bitcast %union.anon.3* %54 to %struct.in6_addr*, !dbg !5232
  %56 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %55, i32 0, i32 0, !dbg !5233
  %57 = bitcast %union.anon.1* %56 to [4 x i32]*, !dbg !5234
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %57, i64 0, i64 0, !dbg !5230
  %59 = load i32, i32* %58, align 8, !dbg !5230
  %60 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8, !dbg !5235
  %61 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %60, i32 0, i32 0, !dbg !5236
  %62 = bitcast %union.anon.1* %61 to [4 x i32]*, !dbg !5237
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %62, i64 0, i64 0, !dbg !5235
  %64 = load i32, i32* %63, align 4, !dbg !5235
  %65 = icmp eq i32 %59, %64, !dbg !5238
  br i1 %65, label %66, label %108, !dbg !5239

; <label>:66:                                     ; preds = %50
  %67 = load %struct._ip_address*, %struct._ip_address** %8, align 8, !dbg !5240
  %68 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %67, i32 0, i32 1, !dbg !5241
  %69 = bitcast %union.anon.3* %68 to %struct.in6_addr*, !dbg !5242
  %70 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %69, i32 0, i32 0, !dbg !5243
  %71 = bitcast %union.anon.1* %70 to [4 x i32]*, !dbg !5244
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %71, i64 0, i64 1, !dbg !5240
  %73 = load i32, i32* %72, align 4, !dbg !5240
  %74 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8, !dbg !5245
  %75 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %74, i32 0, i32 0, !dbg !5246
  %76 = bitcast %union.anon.1* %75 to [4 x i32]*, !dbg !5247
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %76, i64 0, i64 1, !dbg !5245
  %78 = load i32, i32* %77, align 4, !dbg !5245
  %79 = icmp eq i32 %73, %78, !dbg !5248
  br i1 %79, label %80, label %108, !dbg !5249

; <label>:80:                                     ; preds = %66
  %81 = load %struct._ip_address*, %struct._ip_address** %8, align 8, !dbg !5250
  %82 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %81, i32 0, i32 1, !dbg !5251
  %83 = bitcast %union.anon.3* %82 to %struct.in6_addr*, !dbg !5252
  %84 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %83, i32 0, i32 0, !dbg !5253
  %85 = bitcast %union.anon.1* %84 to [4 x i32]*, !dbg !5254
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %85, i64 0, i64 2, !dbg !5250
  %87 = load i32, i32* %86, align 8, !dbg !5250
  %88 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8, !dbg !5255
  %89 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %88, i32 0, i32 0, !dbg !5256
  %90 = bitcast %union.anon.1* %89 to [4 x i32]*, !dbg !5257
  %91 = getelementptr inbounds [4 x i32], [4 x i32]* %90, i64 0, i64 2, !dbg !5255
  %92 = load i32, i32* %91, align 4, !dbg !5255
  %93 = icmp eq i32 %87, %92, !dbg !5258
  br i1 %93, label %94, label %108, !dbg !5259

; <label>:94:                                     ; preds = %80
  %95 = load %struct._ip_address*, %struct._ip_address** %8, align 8, !dbg !5260
  %96 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %95, i32 0, i32 1, !dbg !5261
  %97 = bitcast %union.anon.3* %96 to %struct.in6_addr*, !dbg !5262
  %98 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %97, i32 0, i32 0, !dbg !5263
  %99 = bitcast %union.anon.1* %98 to [4 x i32]*, !dbg !5264
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %99, i64 0, i64 3, !dbg !5260
  %101 = load i32, i32* %100, align 4, !dbg !5260
  %102 = load %struct.in6_addr*, %struct.in6_addr** %11, align 8, !dbg !5265
  %103 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %102, i32 0, i32 0, !dbg !5266
  %104 = bitcast %union.anon.1* %103 to [4 x i32]*, !dbg !5267
  %105 = getelementptr inbounds [4 x i32], [4 x i32]* %104, i64 0, i64 3, !dbg !5265
  %106 = load i32, i32* %105, align 4, !dbg !5265
  %107 = icmp eq i32 %101, %106, !dbg !5268
  br label %108

; <label>:108:                                    ; preds = %94, %80, %66, %50
  %109 = phi i1 [ false, %80 ], [ false, %66 ], [ false, %50 ], [ %107, %94 ]
  store i1 %109, i1* %5, align 1, !dbg !5269
  br label %110, !dbg !5269

; <label>:110:                                    ; preds = %108, %37, %29, %22
  %111 = load i1, i1* %5, align 1, !dbg !5271
  ret i1 %111, !dbg !5271
}

declare void @reinstate_static_address(%struct._ip_address*) #4

declare void @update_checker_activity(i16 zeroext, i8*, i1 zeroext) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__ip6_addr_equal(%struct.in6_addr*, %struct.in6_addr*) #8 !dbg !5272 {
  %3 = alloca %struct.in6_addr*, align 8
  %4 = alloca %struct.in6_addr*, align 8
  store %struct.in6_addr* %0, %struct.in6_addr** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.in6_addr** %3, metadata !5277, metadata !669), !dbg !5278
  store %struct.in6_addr* %1, %struct.in6_addr** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.in6_addr** %4, metadata !5279, metadata !669), !dbg !5280
  %5 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8, !dbg !5281
  %6 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %5, i32 0, i32 0, !dbg !5282
  %7 = bitcast %union.anon.1* %6 to [4 x i32]*, !dbg !5283
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0, !dbg !5281
  %9 = load i32, i32* %8, align 4, !dbg !5281
  %10 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8, !dbg !5284
  %11 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %10, i32 0, i32 0, !dbg !5285
  %12 = bitcast %union.anon.1* %11 to [4 x i32]*, !dbg !5286
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0, !dbg !5284
  %14 = load i32, i32* %13, align 4, !dbg !5284
  %15 = xor i32 %9, %14, !dbg !5287
  %16 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8, !dbg !5288
  %17 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %16, i32 0, i32 0, !dbg !5289
  %18 = bitcast %union.anon.1* %17 to [4 x i32]*, !dbg !5290
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1, !dbg !5288
  %20 = load i32, i32* %19, align 4, !dbg !5288
  %21 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8, !dbg !5291
  %22 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %21, i32 0, i32 0, !dbg !5292
  %23 = bitcast %union.anon.1* %22 to [4 x i32]*, !dbg !5293
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 1, !dbg !5291
  %25 = load i32, i32* %24, align 4, !dbg !5291
  %26 = xor i32 %20, %25, !dbg !5294
  %27 = or i32 %15, %26, !dbg !5295
  %28 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8, !dbg !5296
  %29 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %28, i32 0, i32 0, !dbg !5297
  %30 = bitcast %union.anon.1* %29 to [4 x i32]*, !dbg !5298
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i64 0, i64 2, !dbg !5296
  %32 = load i32, i32* %31, align 4, !dbg !5296
  %33 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8, !dbg !5299
  %34 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %33, i32 0, i32 0, !dbg !5300
  %35 = bitcast %union.anon.1* %34 to [4 x i32]*, !dbg !5301
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i64 0, i64 2, !dbg !5299
  %37 = load i32, i32* %36, align 4, !dbg !5299
  %38 = xor i32 %32, %37, !dbg !5302
  %39 = or i32 %27, %38, !dbg !5303
  %40 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8, !dbg !5304
  %41 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %40, i32 0, i32 0, !dbg !5305
  %42 = bitcast %union.anon.1* %41 to [4 x i32]*, !dbg !5306
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i64 0, i64 3, !dbg !5304
  %44 = load i32, i32* %43, align 4, !dbg !5304
  %45 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8, !dbg !5307
  %46 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %45, i32 0, i32 0, !dbg !5308
  %47 = bitcast %union.anon.1* %46 to [4 x i32]*, !dbg !5309
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i64 0, i64 3, !dbg !5307
  %49 = load i32, i32* %48, align 4, !dbg !5307
  %50 = xor i32 %44, %49, !dbg !5310
  %51 = or i32 %39, %50, !dbg !5311
  %52 = icmp eq i32 %51, 0, !dbg !5312
  %53 = zext i1 %52 to i32, !dbg !5312
  ret i32 %53, !dbg !5313
}

declare void @vrrp_state_leave_master(%struct._vrrp_t*, i1 zeroext) #4

declare void @vrrp_init_instance_sands(%struct._vrrp_t*) #4

declare void @vrrp_thread_requeue_read(%struct._vrrp_t*) #4

; Function Attrs: nounwind uwtable
define internal %struct._ip_route* @route_is_ours(%struct.rtmsg*, %struct.rtattr**, %struct._vrrp_t**) #0 !dbg !5314 {
  %4 = alloca %struct._ip_route*, align 8
  %5 = alloca %struct.rtmsg*, align 8
  %6 = alloca %struct.rtattr**, align 8
  %7 = alloca %struct._vrrp_t**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca %struct._element*, align 8
  %14 = alloca %struct._element*, align 8
  %15 = alloca %struct._vrrp_t*, align 8
  %16 = alloca %struct._ip_route*, align 8
  store %struct.rtmsg* %0, %struct.rtmsg** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.rtmsg** %5, metadata !5318, metadata !669), !dbg !5319
  store %struct.rtattr** %1, %struct.rtattr*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.rtattr*** %6, metadata !5320, metadata !669), !dbg !5321
  store %struct._vrrp_t** %2, %struct._vrrp_t*** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_t*** %7, metadata !5322, metadata !669), !dbg !5323
  call void @llvm.dbg.declare(metadata i32* %8, metadata !5324, metadata !669), !dbg !5325
  call void @llvm.dbg.declare(metadata i32* %9, metadata !5326, metadata !669), !dbg !5327
  call void @llvm.dbg.declare(metadata i32* %10, metadata !5328, metadata !669), !dbg !5329
  %17 = load %struct.rtmsg*, %struct.rtmsg** %5, align 8, !dbg !5330
  %18 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %17, i32 0, i32 1, !dbg !5331
  %19 = load i8, i8* %18, align 1, !dbg !5331
  %20 = zext i8 %19 to i32, !dbg !5330
  store i32 %20, i32* %10, align 4, !dbg !5329
  call void @llvm.dbg.declare(metadata i32* %11, metadata !5332, metadata !669), !dbg !5333
  store i32 0, i32* %11, align 4, !dbg !5333
  call void @llvm.dbg.declare(metadata i8* %12, metadata !5334, metadata !669), !dbg !5335
  %21 = load %struct.rtmsg*, %struct.rtmsg** %5, align 8, !dbg !5336
  %22 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %21, i32 0, i32 3, !dbg !5337
  %23 = load i8, i8* %22, align 1, !dbg !5337
  store i8 %23, i8* %12, align 1, !dbg !5335
  call void @llvm.dbg.declare(metadata %struct._element** %13, metadata !5338, metadata !669), !dbg !5339
  call void @llvm.dbg.declare(metadata %struct._element** %14, metadata !5340, metadata !669), !dbg !5341
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %15, metadata !5342, metadata !669), !dbg !5343
  call void @llvm.dbg.declare(metadata %struct._ip_route** %16, metadata !5344, metadata !669), !dbg !5345
  %24 = load %struct._vrrp_t**, %struct._vrrp_t*** %7, align 8, !dbg !5346
  store %struct._vrrp_t* null, %struct._vrrp_t** %24, align 8, !dbg !5347
  %25 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !5348
  %26 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %25, i64 15, !dbg !5348
  %27 = load %struct.rtattr*, %struct.rtattr** %26, align 8, !dbg !5348
  %28 = icmp ne %struct.rtattr* %27, null, !dbg !5348
  br i1 %28, label %29, label %37, !dbg !5348

; <label>:29:                                     ; preds = %3
  %30 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !5349
  %31 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %30, i64 15, !dbg !5349
  %32 = load %struct.rtattr*, %struct.rtattr** %31, align 8, !dbg !5349
  %33 = bitcast %struct.rtattr* %32 to i8*, !dbg !5351
  %34 = getelementptr inbounds i8, i8* %33, i64 4, !dbg !5352
  %35 = bitcast i8* %34 to i32*, !dbg !5353
  %36 = load i32, i32* %35, align 4, !dbg !5354
  br label %42, !dbg !5355

; <label>:37:                                     ; preds = %3
  %38 = load %struct.rtmsg*, %struct.rtmsg** %5, align 8, !dbg !5356
  %39 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %38, i32 0, i32 4, !dbg !5358
  %40 = load i8, i8* %39, align 4, !dbg !5358
  %41 = zext i8 %40 to i32, !dbg !5356
  br label %42, !dbg !5359

; <label>:42:                                     ; preds = %37, %29
  %43 = phi i32 [ %36, %29 ], [ %41, %37 ], !dbg !5360
  store i32 %43, i32* %8, align 4, !dbg !5362
  %44 = load %struct.rtmsg*, %struct.rtmsg** %5, align 8, !dbg !5363
  %45 = getelementptr inbounds %struct.rtmsg, %struct.rtmsg* %44, i32 0, i32 0, !dbg !5364
  %46 = load i8, i8* %45, align 4, !dbg !5364
  %47 = zext i8 %46 to i32, !dbg !5363
  store i32 %47, i32* %9, align 4, !dbg !5365
  %48 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !5366
  %49 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %48, i64 6, !dbg !5366
  %50 = load %struct.rtattr*, %struct.rtattr** %49, align 8, !dbg !5366
  %51 = icmp ne %struct.rtattr* %50, null, !dbg !5366
  br i1 %51, label %52, label %60, !dbg !5368

; <label>:52:                                     ; preds = %42
  %53 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !5369
  %54 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %53, i64 6, !dbg !5369
  %55 = load %struct.rtattr*, %struct.rtattr** %54, align 8, !dbg !5369
  %56 = bitcast %struct.rtattr* %55 to i8*, !dbg !5370
  %57 = getelementptr inbounds i8, i8* %56, i64 4, !dbg !5371
  %58 = bitcast i8* %57 to i32*, !dbg !5372
  %59 = load i32, i32* %58, align 4, !dbg !5373
  store i32 %59, i32* %11, align 4, !dbg !5374
  br label %60, !dbg !5375

; <label>:60:                                     ; preds = %52, %42
  %61 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !5376
  %62 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %61, i32 0, i32 5, !dbg !5378
  %63 = load %struct._list*, %struct._list** %62, align 8, !dbg !5378
  %64 = icmp ne %struct._list* %63, null, !dbg !5379
  br i1 %64, label %65, label %79, !dbg !5379

; <label>:65:                                     ; preds = %60
  %66 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !5380
  %67 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %66, i32 0, i32 5, !dbg !5382
  %68 = load %struct._list*, %struct._list** %67, align 8, !dbg !5382
  %69 = icmp ne %struct._list* %68, null, !dbg !5383
  br i1 %69, label %71, label %70, !dbg !5384

; <label>:70:                                     ; preds = %65
  br label %77, !dbg !5385

; <label>:71:                                     ; preds = %65
  %72 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !5387
  %73 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %72, i32 0, i32 5, !dbg !5389
  %74 = load %struct._list*, %struct._list** %73, align 8, !dbg !5389
  %75 = getelementptr inbounds %struct._list, %struct._list* %74, i32 0, i32 0, !dbg !5390
  %76 = load %struct._element*, %struct._element** %75, align 8, !dbg !5390
  br label %77, !dbg !5391

; <label>:77:                                     ; preds = %71, %70
  %78 = phi %struct._element* [ null, %70 ], [ %76, %71 ], !dbg !5392
  br label %80, !dbg !5394

; <label>:79:                                     ; preds = %60
  br label %80, !dbg !5395

; <label>:80:                                     ; preds = %79, %77
  %81 = phi %struct._element* [ %78, %77 ], [ null, %79 ], !dbg !5397
  store %struct._element* %81, %struct._element** %13, align 8, !dbg !5399
  br label %82, !dbg !5400

; <label>:82:                                     ; preds = %228, %80
  %83 = load %struct._element*, %struct._element** %13, align 8, !dbg !5401
  %84 = icmp ne %struct._element* %83, null, !dbg !5404
  br i1 %84, label %85, label %90, !dbg !5405

; <label>:85:                                     ; preds = %82
  %86 = load %struct._element*, %struct._element** %13, align 8, !dbg !5406
  %87 = getelementptr inbounds %struct._element, %struct._element* %86, i32 0, i32 2, !dbg !5408
  %88 = load i8*, i8** %87, align 8, !dbg !5408
  %89 = bitcast i8* %88 to %struct._vrrp_t*, !dbg !5409
  store %struct._vrrp_t* %89, %struct._vrrp_t** %15, align 8, !dbg !5410
  br label %90

; <label>:90:                                     ; preds = %85, %82
  %91 = phi i1 [ false, %82 ], [ true, %85 ]
  br i1 %91, label %92, label %232, !dbg !5411

; <label>:92:                                     ; preds = %90
  %93 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !5413
  %94 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %93, i32 0, i32 45, !dbg !5416
  %95 = load %struct._list*, %struct._list** %94, align 8, !dbg !5416
  %96 = icmp ne %struct._list* %95, null, !dbg !5417
  br i1 %96, label %97, label %111, !dbg !5417

; <label>:97:                                     ; preds = %92
  %98 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !5418
  %99 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %98, i32 0, i32 45, !dbg !5420
  %100 = load %struct._list*, %struct._list** %99, align 8, !dbg !5420
  %101 = icmp ne %struct._list* %100, null, !dbg !5421
  br i1 %101, label %103, label %102, !dbg !5422

; <label>:102:                                    ; preds = %97
  br label %109, !dbg !5423

; <label>:103:                                    ; preds = %97
  %104 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !5425
  %105 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %104, i32 0, i32 45, !dbg !5427
  %106 = load %struct._list*, %struct._list** %105, align 8, !dbg !5427
  %107 = getelementptr inbounds %struct._list, %struct._list* %106, i32 0, i32 0, !dbg !5428
  %108 = load %struct._element*, %struct._element** %107, align 8, !dbg !5428
  br label %109, !dbg !5429

; <label>:109:                                    ; preds = %103, %102
  %110 = phi %struct._element* [ null, %102 ], [ %108, %103 ], !dbg !5430
  br label %112, !dbg !5432

; <label>:111:                                    ; preds = %92
  br label %112, !dbg !5433

; <label>:112:                                    ; preds = %111, %109
  %113 = phi %struct._element* [ %110, %109 ], [ null, %111 ], !dbg !5435
  store %struct._element* %113, %struct._element** %14, align 8, !dbg !5437
  br label %114, !dbg !5438

; <label>:114:                                    ; preds = %223, %112
  %115 = load %struct._element*, %struct._element** %14, align 8, !dbg !5439
  %116 = icmp ne %struct._element* %115, null, !dbg !5442
  br i1 %116, label %117, label %122, !dbg !5443

; <label>:117:                                    ; preds = %114
  %118 = load %struct._element*, %struct._element** %14, align 8, !dbg !5444
  %119 = getelementptr inbounds %struct._element, %struct._element* %118, i32 0, i32 2, !dbg !5446
  %120 = load i8*, i8** %119, align 8, !dbg !5446
  %121 = bitcast i8* %120 to %struct._ip_route*, !dbg !5447
  store %struct._ip_route* %121, %struct._ip_route** %16, align 8, !dbg !5448
  br label %122

; <label>:122:                                    ; preds = %117, %114
  %123 = phi i1 [ false, %114 ], [ true, %117 ]
  br i1 %123, label %124, label %227, !dbg !5449

; <label>:124:                                    ; preds = %122
  %125 = load i32, i32* %8, align 4, !dbg !5451
  %126 = load %struct._ip_route*, %struct._ip_route** %16, align 8, !dbg !5454
  %127 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %126, i32 0, i32 5, !dbg !5455
  %128 = load i32, i32* %127, align 4, !dbg !5455
  %129 = icmp ne i32 %125, %128, !dbg !5456
  br i1 %129, label %161, label %130, !dbg !5457

; <label>:130:                                    ; preds = %124
  %131 = load i32, i32* %9, align 4, !dbg !5458
  %132 = load %struct._ip_route*, %struct._ip_route** %16, align 8, !dbg !5459
  %133 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %132, i32 0, i32 3, !dbg !5460
  %134 = load i8, i8* %133, align 8, !dbg !5460
  %135 = zext i8 %134 to i32, !dbg !5459
  %136 = icmp ne i32 %131, %135, !dbg !5461
  br i1 %136, label %161, label %137, !dbg !5462

; <label>:137:                                    ; preds = %130
  %138 = load i32, i32* %10, align 4, !dbg !5463
  %139 = load %struct._ip_route*, %struct._ip_route** %16, align 8, !dbg !5464
  %140 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %139, i32 0, i32 0, !dbg !5465
  %141 = load %struct._ip_address*, %struct._ip_address** %140, align 8, !dbg !5465
  %142 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %141, i32 0, i32 0, !dbg !5466
  %143 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %142, i32 0, i32 1, !dbg !5467
  %144 = load i8, i8* %143, align 1, !dbg !5467
  %145 = zext i8 %144 to i32, !dbg !5464
  %146 = icmp ne i32 %138, %145, !dbg !5468
  br i1 %146, label %161, label %147, !dbg !5469

; <label>:147:                                    ; preds = %137
  %148 = load i32, i32* %11, align 4, !dbg !5470
  %149 = load %struct._ip_route*, %struct._ip_route** %16, align 8, !dbg !5471
  %150 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %149, i32 0, i32 8, !dbg !5472
  %151 = load i32, i32* %150, align 4, !dbg !5472
  %152 = icmp ne i32 %148, %151, !dbg !5473
  br i1 %152, label %161, label %153, !dbg !5474

; <label>:153:                                    ; preds = %147
  %154 = load i8, i8* %12, align 1, !dbg !5475
  %155 = zext i8 %154 to i32, !dbg !5475
  %156 = load %struct._ip_route*, %struct._ip_route** %16, align 8, !dbg !5476
  %157 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %156, i32 0, i32 4, !dbg !5477
  %158 = load i8, i8* %157, align 1, !dbg !5477
  %159 = zext i8 %158 to i32, !dbg !5476
  %160 = icmp ne i32 %155, %159, !dbg !5478
  br i1 %160, label %161, label %162, !dbg !5479

; <label>:161:                                    ; preds = %153, %147, %137, %130, %124
  br label %223, !dbg !5481

; <label>:162:                                    ; preds = %153
  %163 = load %struct._ip_route*, %struct._ip_route** %16, align 8, !dbg !5482
  %164 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %163, i32 0, i32 10, !dbg !5484
  %165 = load %struct._interface*, %struct._interface** %164, align 8, !dbg !5484
  %166 = icmp ne %struct._interface* %165, null, !dbg !5482
  br i1 %166, label %167, label %183, !dbg !5485

; <label>:167:                                    ; preds = %162
  %168 = load %struct._ip_route*, %struct._ip_route** %16, align 8, !dbg !5486
  %169 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %168, i32 0, i32 10, !dbg !5489
  %170 = load %struct._interface*, %struct._interface** %169, align 8, !dbg !5489
  %171 = getelementptr inbounds %struct._interface, %struct._interface* %170, i32 0, i32 1, !dbg !5490
  %172 = load i32, i32* %171, align 8, !dbg !5490
  %173 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !5491
  %174 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %173, i64 4, !dbg !5491
  %175 = load %struct.rtattr*, %struct.rtattr** %174, align 8, !dbg !5491
  %176 = bitcast %struct.rtattr* %175 to i8*, !dbg !5492
  %177 = getelementptr inbounds i8, i8* %176, i64 4, !dbg !5493
  %178 = bitcast i8* %177 to i32*, !dbg !5494
  %179 = load i32, i32* %178, align 4, !dbg !5495
  %180 = icmp ne i32 %172, %179, !dbg !5496
  br i1 %180, label %181, label %182, !dbg !5497

; <label>:181:                                    ; preds = %167
  br label %223, !dbg !5498

; <label>:182:                                    ; preds = %167
  br label %207, !dbg !5499

; <label>:183:                                    ; preds = %162
  %184 = load %struct._ip_route*, %struct._ip_route** %16, align 8, !dbg !5500
  %185 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %184, i32 0, i32 36, !dbg !5503
  %186 = load i8, i8* %185, align 8, !dbg !5503
  %187 = trunc i8 %186 to i1, !dbg !5503
  br i1 %187, label %188, label %206, !dbg !5504

; <label>:188:                                    ; preds = %183
  %189 = load %struct._ip_route*, %struct._ip_route** %16, align 8, !dbg !5505
  %190 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %189, i32 0, i32 37, !dbg !5507
  %191 = load i32, i32* %190, align 4, !dbg !5507
  %192 = icmp ne i32 %191, 0, !dbg !5505
  br i1 %192, label %193, label %206, !dbg !5508

; <label>:193:                                    ; preds = %188
  %194 = load %struct._ip_route*, %struct._ip_route** %16, align 8, !dbg !5509
  %195 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %194, i32 0, i32 37, !dbg !5511
  %196 = load i32, i32* %195, align 4, !dbg !5511
  %197 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !5512
  %198 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %197, i64 4, !dbg !5512
  %199 = load %struct.rtattr*, %struct.rtattr** %198, align 8, !dbg !5512
  %200 = bitcast %struct.rtattr* %199 to i8*, !dbg !5513
  %201 = getelementptr inbounds i8, i8* %200, i64 4, !dbg !5514
  %202 = bitcast i8* %201 to i32*, !dbg !5515
  %203 = load i32, i32* %202, align 4, !dbg !5516
  %204 = icmp ne i32 %196, %203, !dbg !5517
  br i1 %204, label %205, label %206, !dbg !5518

; <label>:205:                                    ; preds = %193
  br label %223, !dbg !5519

; <label>:206:                                    ; preds = %193, %188, %183
  br label %207

; <label>:207:                                    ; preds = %206, %182
  %208 = load i32, i32* %9, align 4, !dbg !5520
  %209 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !5522
  %210 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %209, i64 1, !dbg !5522
  %211 = load %struct.rtattr*, %struct.rtattr** %210, align 8, !dbg !5522
  %212 = bitcast %struct.rtattr* %211 to i8*, !dbg !5523
  %213 = getelementptr inbounds i8, i8* %212, i64 4, !dbg !5524
  %214 = load %struct._ip_route*, %struct._ip_route** %16, align 8, !dbg !5525
  %215 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %214, i32 0, i32 0, !dbg !5526
  %216 = load %struct._ip_address*, %struct._ip_address** %215, align 8, !dbg !5526
  %217 = call zeroext i1 @compare_addr(i32 %208, i8* %213, %struct._ip_address* %216), !dbg !5527
  br i1 %217, label %218, label %219, !dbg !5528

; <label>:218:                                    ; preds = %207
  br label %223, !dbg !5529

; <label>:219:                                    ; preds = %207
  %220 = load %struct._vrrp_t*, %struct._vrrp_t** %15, align 8, !dbg !5530
  %221 = load %struct._vrrp_t**, %struct._vrrp_t*** %7, align 8, !dbg !5531
  store %struct._vrrp_t* %220, %struct._vrrp_t** %221, align 8, !dbg !5532
  %222 = load %struct._ip_route*, %struct._ip_route** %16, align 8, !dbg !5533
  store %struct._ip_route* %222, %struct._ip_route** %4, align 8, !dbg !5534
  br label %315, !dbg !5534

; <label>:223:                                    ; preds = %218, %205, %181, %161
  %224 = load %struct._element*, %struct._element** %14, align 8, !dbg !5535
  %225 = getelementptr inbounds %struct._element, %struct._element* %224, i32 0, i32 0, !dbg !5537
  %226 = load %struct._element*, %struct._element** %225, align 8, !dbg !5537
  store %struct._element* %226, %struct._element** %14, align 8, !dbg !5538
  br label %114, !dbg !5539, !llvm.loop !5540

; <label>:227:                                    ; preds = %122
  br label %228, !dbg !5542

; <label>:228:                                    ; preds = %227
  %229 = load %struct._element*, %struct._element** %13, align 8, !dbg !5543
  %230 = getelementptr inbounds %struct._element, %struct._element* %229, i32 0, i32 0, !dbg !5545
  %231 = load %struct._element*, %struct._element** %230, align 8, !dbg !5545
  store %struct._element* %231, %struct._element** %13, align 8, !dbg !5546
  br label %82, !dbg !5547, !llvm.loop !5548

; <label>:232:                                    ; preds = %90
  %233 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !5550
  %234 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %233, i32 0, i32 2, !dbg !5552
  %235 = load %struct._list*, %struct._list** %234, align 8, !dbg !5552
  %236 = icmp ne %struct._list* %235, null, !dbg !5553
  br i1 %236, label %237, label %251, !dbg !5553

; <label>:237:                                    ; preds = %232
  %238 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !5554
  %239 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %238, i32 0, i32 2, !dbg !5556
  %240 = load %struct._list*, %struct._list** %239, align 8, !dbg !5556
  %241 = icmp ne %struct._list* %240, null, !dbg !5557
  br i1 %241, label %243, label %242, !dbg !5558

; <label>:242:                                    ; preds = %237
  br label %249, !dbg !5559

; <label>:243:                                    ; preds = %237
  %244 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !5561
  %245 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %244, i32 0, i32 2, !dbg !5563
  %246 = load %struct._list*, %struct._list** %245, align 8, !dbg !5563
  %247 = getelementptr inbounds %struct._list, %struct._list* %246, i32 0, i32 0, !dbg !5564
  %248 = load %struct._element*, %struct._element** %247, align 8, !dbg !5564
  br label %249, !dbg !5565

; <label>:249:                                    ; preds = %243, %242
  %250 = phi %struct._element* [ null, %242 ], [ %248, %243 ], !dbg !5566
  br label %252, !dbg !5568

; <label>:251:                                    ; preds = %232
  br label %252, !dbg !5569

; <label>:252:                                    ; preds = %251, %249
  %253 = phi %struct._element* [ %250, %249 ], [ null, %251 ], !dbg !5571
  store %struct._element* %253, %struct._element** %13, align 8, !dbg !5573
  br label %254, !dbg !5574

; <label>:254:                                    ; preds = %310, %252
  %255 = load %struct._element*, %struct._element** %13, align 8, !dbg !5575
  %256 = icmp ne %struct._element* %255, null, !dbg !5578
  br i1 %256, label %257, label %262, !dbg !5579

; <label>:257:                                    ; preds = %254
  %258 = load %struct._element*, %struct._element** %13, align 8, !dbg !5580
  %259 = getelementptr inbounds %struct._element, %struct._element* %258, i32 0, i32 2, !dbg !5582
  %260 = load i8*, i8** %259, align 8, !dbg !5582
  %261 = bitcast i8* %260 to %struct._ip_route*, !dbg !5583
  store %struct._ip_route* %261, %struct._ip_route** %16, align 8, !dbg !5584
  br label %262

; <label>:262:                                    ; preds = %257, %254
  %263 = phi i1 [ false, %254 ], [ true, %257 ]
  br i1 %263, label %264, label %314, !dbg !5585

; <label>:264:                                    ; preds = %262
  %265 = load i32, i32* %8, align 4, !dbg !5587
  %266 = load %struct._ip_route*, %struct._ip_route** %16, align 8, !dbg !5590
  %267 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %266, i32 0, i32 5, !dbg !5591
  %268 = load i32, i32* %267, align 4, !dbg !5591
  %269 = icmp ne i32 %265, %268, !dbg !5592
  br i1 %269, label %295, label %270, !dbg !5593

; <label>:270:                                    ; preds = %264
  %271 = load i32, i32* %9, align 4, !dbg !5594
  %272 = load %struct._ip_route*, %struct._ip_route** %16, align 8, !dbg !5595
  %273 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %272, i32 0, i32 3, !dbg !5596
  %274 = load i8, i8* %273, align 8, !dbg !5596
  %275 = zext i8 %274 to i32, !dbg !5595
  %276 = icmp ne i32 %271, %275, !dbg !5597
  br i1 %276, label %295, label %277, !dbg !5598

; <label>:277:                                    ; preds = %270
  %278 = load i32, i32* %10, align 4, !dbg !5599
  %279 = load %struct._ip_route*, %struct._ip_route** %16, align 8, !dbg !5600
  %280 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %279, i32 0, i32 0, !dbg !5601
  %281 = load %struct._ip_address*, %struct._ip_address** %280, align 8, !dbg !5601
  %282 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %281, i32 0, i32 0, !dbg !5602
  %283 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %282, i32 0, i32 1, !dbg !5603
  %284 = load i8, i8* %283, align 1, !dbg !5603
  %285 = zext i8 %284 to i32, !dbg !5600
  %286 = icmp ne i32 %278, %285, !dbg !5604
  br i1 %286, label %295, label %287, !dbg !5605

; <label>:287:                                    ; preds = %277
  %288 = load i8, i8* %12, align 1, !dbg !5606
  %289 = zext i8 %288 to i32, !dbg !5606
  %290 = load %struct._ip_route*, %struct._ip_route** %16, align 8, !dbg !5607
  %291 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %290, i32 0, i32 4, !dbg !5608
  %292 = load i8, i8* %291, align 1, !dbg !5608
  %293 = zext i8 %292 to i32, !dbg !5607
  %294 = icmp ne i32 %289, %293, !dbg !5609
  br i1 %294, label %295, label %296, !dbg !5610

; <label>:295:                                    ; preds = %287, %277, %270, %264
  br label %310, !dbg !5612

; <label>:296:                                    ; preds = %287
  %297 = load i32, i32* %9, align 4, !dbg !5613
  %298 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !5615
  %299 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %298, i64 1, !dbg !5615
  %300 = load %struct.rtattr*, %struct.rtattr** %299, align 8, !dbg !5615
  %301 = bitcast %struct.rtattr* %300 to i8*, !dbg !5616
  %302 = getelementptr inbounds i8, i8* %301, i64 4, !dbg !5617
  %303 = load %struct._ip_route*, %struct._ip_route** %16, align 8, !dbg !5618
  %304 = getelementptr inbounds %struct._ip_route, %struct._ip_route* %303, i32 0, i32 0, !dbg !5619
  %305 = load %struct._ip_address*, %struct._ip_address** %304, align 8, !dbg !5619
  %306 = call zeroext i1 @compare_addr(i32 %297, i8* %302, %struct._ip_address* %305), !dbg !5620
  br i1 %306, label %307, label %308, !dbg !5621

; <label>:307:                                    ; preds = %296
  br label %310, !dbg !5622

; <label>:308:                                    ; preds = %296
  %309 = load %struct._ip_route*, %struct._ip_route** %16, align 8, !dbg !5623
  store %struct._ip_route* %309, %struct._ip_route** %4, align 8, !dbg !5624
  br label %315, !dbg !5624

; <label>:310:                                    ; preds = %307, %295
  %311 = load %struct._element*, %struct._element** %13, align 8, !dbg !5625
  %312 = getelementptr inbounds %struct._element, %struct._element* %311, i32 0, i32 0, !dbg !5627
  %313 = load %struct._element*, %struct._element** %312, align 8, !dbg !5627
  store %struct._element* %313, %struct._element** %13, align 8, !dbg !5628
  br label %254, !dbg !5629, !llvm.loop !5630

; <label>:314:                                    ; preds = %262
  store %struct._ip_route* null, %struct._ip_route** %4, align 8, !dbg !5632
  br label %315, !dbg !5632

; <label>:315:                                    ; preds = %314, %308, %219
  %316 = load %struct._ip_route*, %struct._ip_route** %4, align 8, !dbg !5633
  ret %struct._ip_route* %316, !dbg !5633
}

declare void @reinstate_static_route(%struct._ip_route*) #4

; Function Attrs: nounwind uwtable
define internal zeroext i1 @compare_addr(i32, i8*, %struct._ip_address*) #0 !dbg !5634 {
  %4 = alloca i1, align 1
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct._ip_address*, align 8
  %8 = alloca %union.anon.8, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !5637, metadata !669), !dbg !5638
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !5639, metadata !669), !dbg !5640
  store %struct._ip_address* %2, %struct._ip_address** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._ip_address** %7, metadata !5641, metadata !669), !dbg !5642
  call void @llvm.dbg.declare(metadata %union.anon.8* %8, metadata !5643, metadata !669), !dbg !5648
  %9 = bitcast %union.anon.8* %8 to %struct.in_addr**, !dbg !5649
  %10 = load i8*, i8** %6, align 8, !dbg !5650
  %11 = bitcast i8* %10 to %struct.in_addr*, !dbg !5650
  store %struct.in_addr* %11, %struct.in_addr** %9, align 8, !dbg !5649
  %12 = load i32, i32* %5, align 4, !dbg !5651
  %13 = icmp eq i32 %12, 2, !dbg !5653
  br i1 %13, label %14, label %26, !dbg !5654

; <label>:14:                                     ; preds = %3
  %15 = bitcast %union.anon.8* %8 to %struct.in_addr**, !dbg !5655
  %16 = load %struct.in_addr*, %struct.in_addr** %15, align 8, !dbg !5655
  %17 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %16, i32 0, i32 0, !dbg !5656
  %18 = load i32, i32* %17, align 4, !dbg !5656
  %19 = load %struct._ip_address*, %struct._ip_address** %7, align 8, !dbg !5657
  %20 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %19, i32 0, i32 1, !dbg !5658
  %21 = bitcast %union.anon.3* %20 to %struct.anon.4*, !dbg !5659
  %22 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %21, i32 0, i32 0, !dbg !5660
  %23 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %22, i32 0, i32 0, !dbg !5661
  %24 = load i32, i32* %23, align 8, !dbg !5661
  %25 = icmp ne i32 %18, %24, !dbg !5662
  store i1 %25, i1* %4, align 1, !dbg !5663
  br label %88, !dbg !5663

; <label>:26:                                     ; preds = %3
  %27 = bitcast %union.anon.8* %8 to %struct.in6_addr**, !dbg !5664
  %28 = load %struct.in6_addr*, %struct.in6_addr** %27, align 8, !dbg !5664
  %29 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %28, i32 0, i32 0, !dbg !5665
  %30 = bitcast %union.anon.1* %29 to [4 x i32]*, !dbg !5666
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i64 0, i64 0, !dbg !5667
  %32 = load i32, i32* %31, align 4, !dbg !5667
  %33 = load %struct._ip_address*, %struct._ip_address** %7, align 8, !dbg !5668
  %34 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %33, i32 0, i32 1, !dbg !5669
  %35 = bitcast %union.anon.3* %34 to %struct.in6_addr*, !dbg !5670
  %36 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %35, i32 0, i32 0, !dbg !5671
  %37 = bitcast %union.anon.1* %36 to [4 x i32]*, !dbg !5672
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %37, i64 0, i64 0, !dbg !5668
  %39 = load i32, i32* %38, align 8, !dbg !5668
  %40 = icmp ne i32 %32, %39, !dbg !5673
  br i1 %40, label %86, label %41, !dbg !5674

; <label>:41:                                     ; preds = %26
  %42 = bitcast %union.anon.8* %8 to %struct.in6_addr**, !dbg !5675
  %43 = load %struct.in6_addr*, %struct.in6_addr** %42, align 8, !dbg !5675
  %44 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %43, i32 0, i32 0, !dbg !5676
  %45 = bitcast %union.anon.1* %44 to [4 x i32]*, !dbg !5677
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %45, i64 0, i64 1, !dbg !5678
  %47 = load i32, i32* %46, align 4, !dbg !5678
  %48 = load %struct._ip_address*, %struct._ip_address** %7, align 8, !dbg !5679
  %49 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %48, i32 0, i32 1, !dbg !5680
  %50 = bitcast %union.anon.3* %49 to %struct.in6_addr*, !dbg !5681
  %51 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %50, i32 0, i32 0, !dbg !5682
  %52 = bitcast %union.anon.1* %51 to [4 x i32]*, !dbg !5683
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %52, i64 0, i64 1, !dbg !5679
  %54 = load i32, i32* %53, align 4, !dbg !5679
  %55 = icmp ne i32 %47, %54, !dbg !5684
  br i1 %55, label %86, label %56, !dbg !5685

; <label>:56:                                     ; preds = %41
  %57 = bitcast %union.anon.8* %8 to %struct.in6_addr**, !dbg !5686
  %58 = load %struct.in6_addr*, %struct.in6_addr** %57, align 8, !dbg !5686
  %59 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %58, i32 0, i32 0, !dbg !5687
  %60 = bitcast %union.anon.1* %59 to [4 x i32]*, !dbg !5688
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i64 0, i64 2, !dbg !5689
  %62 = load i32, i32* %61, align 4, !dbg !5689
  %63 = load %struct._ip_address*, %struct._ip_address** %7, align 8, !dbg !5690
  %64 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %63, i32 0, i32 1, !dbg !5691
  %65 = bitcast %union.anon.3* %64 to %struct.in6_addr*, !dbg !5692
  %66 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %65, i32 0, i32 0, !dbg !5693
  %67 = bitcast %union.anon.1* %66 to [4 x i32]*, !dbg !5694
  %68 = getelementptr inbounds [4 x i32], [4 x i32]* %67, i64 0, i64 2, !dbg !5690
  %69 = load i32, i32* %68, align 8, !dbg !5690
  %70 = icmp ne i32 %62, %69, !dbg !5695
  br i1 %70, label %86, label %71, !dbg !5696

; <label>:71:                                     ; preds = %56
  %72 = bitcast %union.anon.8* %8 to %struct.in6_addr**, !dbg !5697
  %73 = load %struct.in6_addr*, %struct.in6_addr** %72, align 8, !dbg !5697
  %74 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %73, i32 0, i32 0, !dbg !5698
  %75 = bitcast %union.anon.1* %74 to [4 x i32]*, !dbg !5699
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %75, i64 0, i64 3, !dbg !5700
  %77 = load i32, i32* %76, align 4, !dbg !5700
  %78 = load %struct._ip_address*, %struct._ip_address** %7, align 8, !dbg !5701
  %79 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %78, i32 0, i32 1, !dbg !5702
  %80 = bitcast %union.anon.3* %79 to %struct.in6_addr*, !dbg !5703
  %81 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %80, i32 0, i32 0, !dbg !5704
  %82 = bitcast %union.anon.1* %81 to [4 x i32]*, !dbg !5705
  %83 = getelementptr inbounds [4 x i32], [4 x i32]* %82, i64 0, i64 3, !dbg !5701
  %84 = load i32, i32* %83, align 4, !dbg !5701
  %85 = icmp ne i32 %77, %84, !dbg !5706
  br label %86, !dbg !5707

; <label>:86:                                     ; preds = %71, %56, %41, %26
  %87 = phi i1 [ true, %56 ], [ true, %41 ], [ true, %26 ], [ %85, %71 ]
  store i1 %87, i1* %4, align 1, !dbg !5709
  br label %88, !dbg !5709

; <label>:88:                                     ; preds = %86, %14
  %89 = load i1, i1* %4, align 1, !dbg !5710
  ret i1 %89, !dbg !5710
}

; Function Attrs: nounwind uwtable
define internal %struct._ip_rule* @rule_is_ours(%struct.fib_rule_hdr*, %struct.rtattr**, %struct._vrrp_t**) #0 !dbg !5711 {
  %4 = alloca %struct._ip_rule*, align 8
  %5 = alloca %struct.fib_rule_hdr*, align 8
  %6 = alloca %struct.rtattr**, align 8
  %7 = alloca %struct._vrrp_t**, align 8
  %8 = alloca %struct._element*, align 8
  %9 = alloca %struct._element*, align 8
  %10 = alloca %struct._vrrp_t*, align 8
  %11 = alloca %struct._ip_rule*, align 8
  store %struct.fib_rule_hdr* %0, %struct.fib_rule_hdr** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.fib_rule_hdr** %5, metadata !5714, metadata !669), !dbg !5715
  store %struct.rtattr** %1, %struct.rtattr*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.rtattr*** %6, metadata !5716, metadata !669), !dbg !5717
  store %struct._vrrp_t** %2, %struct._vrrp_t*** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_t*** %7, metadata !5718, metadata !669), !dbg !5719
  call void @llvm.dbg.declare(metadata %struct._element** %8, metadata !5720, metadata !669), !dbg !5721
  call void @llvm.dbg.declare(metadata %struct._element** %9, metadata !5722, metadata !669), !dbg !5723
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %10, metadata !5724, metadata !669), !dbg !5725
  call void @llvm.dbg.declare(metadata %struct._ip_rule** %11, metadata !5726, metadata !669), !dbg !5727
  %12 = load %struct._vrrp_t**, %struct._vrrp_t*** %7, align 8, !dbg !5728
  store %struct._vrrp_t* null, %struct._vrrp_t** %12, align 8, !dbg !5729
  %13 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !5730
  %14 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %13, i32 0, i32 5, !dbg !5732
  %15 = load %struct._list*, %struct._list** %14, align 8, !dbg !5732
  %16 = icmp ne %struct._list* %15, null, !dbg !5733
  br i1 %16, label %17, label %31, !dbg !5733

; <label>:17:                                     ; preds = %3
  %18 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !5734
  %19 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %18, i32 0, i32 5, !dbg !5736
  %20 = load %struct._list*, %struct._list** %19, align 8, !dbg !5736
  %21 = icmp ne %struct._list* %20, null, !dbg !5737
  br i1 %21, label %23, label %22, !dbg !5738

; <label>:22:                                     ; preds = %17
  br label %29, !dbg !5739

; <label>:23:                                     ; preds = %17
  %24 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !5741
  %25 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %24, i32 0, i32 5, !dbg !5743
  %26 = load %struct._list*, %struct._list** %25, align 8, !dbg !5743
  %27 = getelementptr inbounds %struct._list, %struct._list* %26, i32 0, i32 0, !dbg !5744
  %28 = load %struct._element*, %struct._element** %27, align 8, !dbg !5744
  br label %29, !dbg !5745

; <label>:29:                                     ; preds = %23, %22
  %30 = phi %struct._element* [ null, %22 ], [ %28, %23 ], !dbg !5746
  br label %32, !dbg !5748

; <label>:31:                                     ; preds = %3
  br label %32, !dbg !5749

; <label>:32:                                     ; preds = %31, %29
  %33 = phi %struct._element* [ %30, %29 ], [ null, %31 ], !dbg !5751
  store %struct._element* %33, %struct._element** %8, align 8, !dbg !5753
  br label %34, !dbg !5754

; <label>:34:                                     ; preds = %91, %32
  %35 = load %struct._element*, %struct._element** %8, align 8, !dbg !5755
  %36 = icmp ne %struct._element* %35, null, !dbg !5758
  br i1 %36, label %37, label %42, !dbg !5759

; <label>:37:                                     ; preds = %34
  %38 = load %struct._element*, %struct._element** %8, align 8, !dbg !5760
  %39 = getelementptr inbounds %struct._element, %struct._element* %38, i32 0, i32 2, !dbg !5762
  %40 = load i8*, i8** %39, align 8, !dbg !5762
  %41 = bitcast i8* %40 to %struct._vrrp_t*, !dbg !5763
  store %struct._vrrp_t* %41, %struct._vrrp_t** %10, align 8, !dbg !5764
  br label %42

; <label>:42:                                     ; preds = %37, %34
  %43 = phi i1 [ false, %34 ], [ true, %37 ]
  br i1 %43, label %44, label %95, !dbg !5765

; <label>:44:                                     ; preds = %42
  %45 = load %struct._vrrp_t*, %struct._vrrp_t** %10, align 8, !dbg !5767
  %46 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %45, i32 0, i32 46, !dbg !5770
  %47 = load %struct._list*, %struct._list** %46, align 8, !dbg !5770
  %48 = icmp ne %struct._list* %47, null, !dbg !5771
  br i1 %48, label %49, label %63, !dbg !5771

; <label>:49:                                     ; preds = %44
  %50 = load %struct._vrrp_t*, %struct._vrrp_t** %10, align 8, !dbg !5772
  %51 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %50, i32 0, i32 46, !dbg !5774
  %52 = load %struct._list*, %struct._list** %51, align 8, !dbg !5774
  %53 = icmp ne %struct._list* %52, null, !dbg !5775
  br i1 %53, label %55, label %54, !dbg !5776

; <label>:54:                                     ; preds = %49
  br label %61, !dbg !5777

; <label>:55:                                     ; preds = %49
  %56 = load %struct._vrrp_t*, %struct._vrrp_t** %10, align 8, !dbg !5779
  %57 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %56, i32 0, i32 46, !dbg !5781
  %58 = load %struct._list*, %struct._list** %57, align 8, !dbg !5781
  %59 = getelementptr inbounds %struct._list, %struct._list* %58, i32 0, i32 0, !dbg !5782
  %60 = load %struct._element*, %struct._element** %59, align 8, !dbg !5782
  br label %61, !dbg !5783

; <label>:61:                                     ; preds = %55, %54
  %62 = phi %struct._element* [ null, %54 ], [ %60, %55 ], !dbg !5784
  br label %64, !dbg !5786

; <label>:63:                                     ; preds = %44
  br label %64, !dbg !5787

; <label>:64:                                     ; preds = %63, %61
  %65 = phi %struct._element* [ %62, %61 ], [ null, %63 ], !dbg !5789
  store %struct._element* %65, %struct._element** %9, align 8, !dbg !5791
  br label %66, !dbg !5792

; <label>:66:                                     ; preds = %86, %64
  %67 = load %struct._element*, %struct._element** %9, align 8, !dbg !5793
  %68 = icmp ne %struct._element* %67, null, !dbg !5796
  br i1 %68, label %69, label %74, !dbg !5797

; <label>:69:                                     ; preds = %66
  %70 = load %struct._element*, %struct._element** %9, align 8, !dbg !5798
  %71 = getelementptr inbounds %struct._element, %struct._element* %70, i32 0, i32 2, !dbg !5800
  %72 = load i8*, i8** %71, align 8, !dbg !5800
  %73 = bitcast i8* %72 to %struct._ip_rule*, !dbg !5801
  store %struct._ip_rule* %73, %struct._ip_rule** %11, align 8, !dbg !5802
  br label %74

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i1 [ false, %66 ], [ true, %69 ]
  br i1 %75, label %76, label %90, !dbg !5803

; <label>:76:                                     ; preds = %74
  %77 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %5, align 8, !dbg !5805
  %78 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !5808
  %79 = load %struct._ip_rule*, %struct._ip_rule** %11, align 8, !dbg !5809
  %80 = call zeroext i1 @compare_rule(%struct.fib_rule_hdr* %77, %struct.rtattr** %78, %struct._ip_rule* %79), !dbg !5810
  br i1 %80, label %81, label %85, !dbg !5811

; <label>:81:                                     ; preds = %76
  %82 = load %struct._vrrp_t*, %struct._vrrp_t** %10, align 8, !dbg !5812
  %83 = load %struct._vrrp_t**, %struct._vrrp_t*** %7, align 8, !dbg !5814
  store %struct._vrrp_t* %82, %struct._vrrp_t** %83, align 8, !dbg !5815
  %84 = load %struct._ip_rule*, %struct._ip_rule** %11, align 8, !dbg !5816
  store %struct._ip_rule* %84, %struct._ip_rule** %4, align 8, !dbg !5817
  br label %140, !dbg !5817

; <label>:85:                                     ; preds = %76
  br label %86, !dbg !5818

; <label>:86:                                     ; preds = %85
  %87 = load %struct._element*, %struct._element** %9, align 8, !dbg !5819
  %88 = getelementptr inbounds %struct._element, %struct._element* %87, i32 0, i32 0, !dbg !5821
  %89 = load %struct._element*, %struct._element** %88, align 8, !dbg !5821
  store %struct._element* %89, %struct._element** %9, align 8, !dbg !5822
  br label %66, !dbg !5823, !llvm.loop !5824

; <label>:90:                                     ; preds = %74
  br label %91, !dbg !5826

; <label>:91:                                     ; preds = %90
  %92 = load %struct._element*, %struct._element** %8, align 8, !dbg !5827
  %93 = getelementptr inbounds %struct._element, %struct._element* %92, i32 0, i32 0, !dbg !5829
  %94 = load %struct._element*, %struct._element** %93, align 8, !dbg !5829
  store %struct._element* %94, %struct._element** %8, align 8, !dbg !5830
  br label %34, !dbg !5831, !llvm.loop !5832

; <label>:95:                                     ; preds = %42
  %96 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !5834
  %97 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %96, i32 0, i32 3, !dbg !5836
  %98 = load %struct._list*, %struct._list** %97, align 8, !dbg !5836
  %99 = icmp ne %struct._list* %98, null, !dbg !5837
  br i1 %99, label %100, label %114, !dbg !5837

; <label>:100:                                    ; preds = %95
  %101 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !5838
  %102 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %101, i32 0, i32 3, !dbg !5840
  %103 = load %struct._list*, %struct._list** %102, align 8, !dbg !5840
  %104 = icmp ne %struct._list* %103, null, !dbg !5841
  br i1 %104, label %106, label %105, !dbg !5842

; <label>:105:                                    ; preds = %100
  br label %112, !dbg !5843

; <label>:106:                                    ; preds = %100
  %107 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !5845
  %108 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %107, i32 0, i32 3, !dbg !5847
  %109 = load %struct._list*, %struct._list** %108, align 8, !dbg !5847
  %110 = getelementptr inbounds %struct._list, %struct._list* %109, i32 0, i32 0, !dbg !5848
  %111 = load %struct._element*, %struct._element** %110, align 8, !dbg !5848
  br label %112, !dbg !5849

; <label>:112:                                    ; preds = %106, %105
  %113 = phi %struct._element* [ null, %105 ], [ %111, %106 ], !dbg !5850
  br label %115, !dbg !5852

; <label>:114:                                    ; preds = %95
  br label %115, !dbg !5853

; <label>:115:                                    ; preds = %114, %112
  %116 = phi %struct._element* [ %113, %112 ], [ null, %114 ], !dbg !5855
  store %struct._element* %116, %struct._element** %8, align 8, !dbg !5857
  br label %117, !dbg !5858

; <label>:117:                                    ; preds = %135, %115
  %118 = load %struct._element*, %struct._element** %8, align 8, !dbg !5859
  %119 = icmp ne %struct._element* %118, null, !dbg !5862
  br i1 %119, label %120, label %125, !dbg !5863

; <label>:120:                                    ; preds = %117
  %121 = load %struct._element*, %struct._element** %8, align 8, !dbg !5864
  %122 = getelementptr inbounds %struct._element, %struct._element* %121, i32 0, i32 2, !dbg !5866
  %123 = load i8*, i8** %122, align 8, !dbg !5866
  %124 = bitcast i8* %123 to %struct._ip_rule*, !dbg !5867
  store %struct._ip_rule* %124, %struct._ip_rule** %11, align 8, !dbg !5868
  br label %125

; <label>:125:                                    ; preds = %120, %117
  %126 = phi i1 [ false, %117 ], [ true, %120 ]
  br i1 %126, label %127, label %139, !dbg !5869

; <label>:127:                                    ; preds = %125
  %128 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %5, align 8, !dbg !5871
  %129 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !5874
  %130 = load %struct._ip_rule*, %struct._ip_rule** %11, align 8, !dbg !5875
  %131 = call zeroext i1 @compare_rule(%struct.fib_rule_hdr* %128, %struct.rtattr** %129, %struct._ip_rule* %130), !dbg !5876
  br i1 %131, label %132, label %134, !dbg !5877

; <label>:132:                                    ; preds = %127
  %133 = load %struct._ip_rule*, %struct._ip_rule** %11, align 8, !dbg !5878
  store %struct._ip_rule* %133, %struct._ip_rule** %4, align 8, !dbg !5879
  br label %140, !dbg !5879

; <label>:134:                                    ; preds = %127
  br label %135, !dbg !5880

; <label>:135:                                    ; preds = %134
  %136 = load %struct._element*, %struct._element** %8, align 8, !dbg !5881
  %137 = getelementptr inbounds %struct._element, %struct._element* %136, i32 0, i32 0, !dbg !5883
  %138 = load %struct._element*, %struct._element** %137, align 8, !dbg !5883
  store %struct._element* %138, %struct._element** %8, align 8, !dbg !5884
  br label %117, !dbg !5885, !llvm.loop !5886

; <label>:139:                                    ; preds = %125
  store %struct._ip_rule* null, %struct._ip_rule** %4, align 8, !dbg !5888
  br label %140, !dbg !5888

; <label>:140:                                    ; preds = %139, %132, %81
  %141 = load %struct._ip_rule*, %struct._ip_rule** %4, align 8, !dbg !5889
  ret %struct._ip_rule* %141, !dbg !5889
}

declare void @reinstate_static_rule(%struct._ip_rule*) #4

; Function Attrs: nounwind uwtable
define internal zeroext i1 @compare_rule(%struct.fib_rule_hdr*, %struct.rtattr**, %struct._ip_rule*) #0 !dbg !5890 {
  %4 = alloca i1, align 1
  %5 = alloca %struct.fib_rule_hdr*, align 8
  %6 = alloca %struct.rtattr**, align 8
  %7 = alloca %struct._ip_rule*, align 8
  %8 = alloca i64, align 8
  store %struct.fib_rule_hdr* %0, %struct.fib_rule_hdr** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.fib_rule_hdr** %5, metadata !5893, metadata !669), !dbg !5894
  store %struct.rtattr** %1, %struct.rtattr*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.rtattr*** %6, metadata !5895, metadata !669), !dbg !5896
  store %struct._ip_rule* %2, %struct._ip_rule** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._ip_rule** %7, metadata !5897, metadata !669), !dbg !5898
  %9 = load %struct._ip_rule*, %struct._ip_rule** %7, align 8, !dbg !5899
  %10 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %9, i32 0, i32 18, !dbg !5901
  %11 = load i8, i8* %10, align 8, !dbg !5901
  %12 = trunc i8 %11 to i1, !dbg !5901
  br i1 %12, label %13, label %14, !dbg !5902

; <label>:13:                                     ; preds = %3
  store i1 false, i1* %4, align 1, !dbg !5903
  br label %518, !dbg !5903

; <label>:14:                                     ; preds = %3
  %15 = load %struct._ip_rule*, %struct._ip_rule** %7, align 8, !dbg !5904
  %16 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %15, i32 0, i32 2, !dbg !5906
  %17 = load i32, i32* %16, align 8, !dbg !5906
  %18 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %5, align 8, !dbg !5907
  %19 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %18, i32 0, i32 0, !dbg !5908
  %20 = load i8, i8* %19, align 4, !dbg !5908
  %21 = zext i8 %20 to i32, !dbg !5907
  %22 = icmp ne i32 %17, %21, !dbg !5909
  br i1 %22, label %23, label %24, !dbg !5910

; <label>:23:                                     ; preds = %14
  store i1 false, i1* %4, align 1, !dbg !5911
  br label %518, !dbg !5911

; <label>:24:                                     ; preds = %14
  %25 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !5912
  %26 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %25, i64 6, !dbg !5912
  %27 = load %struct.rtattr*, %struct.rtattr** %26, align 8, !dbg !5912
  %28 = icmp ne %struct.rtattr* %27, null, !dbg !5912
  br i1 %28, label %29, label %41, !dbg !5914

; <label>:29:                                     ; preds = %24
  %30 = load %struct._ip_rule*, %struct._ip_rule** %7, align 8, !dbg !5915
  %31 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %30, i32 0, i32 5, !dbg !5916
  %32 = load i32, i32* %31, align 8, !dbg !5916
  %33 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !5917
  %34 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %33, i64 6, !dbg !5917
  %35 = load %struct.rtattr*, %struct.rtattr** %34, align 8, !dbg !5917
  %36 = bitcast %struct.rtattr* %35 to i8*, !dbg !5918
  %37 = getelementptr inbounds i8, i8* %36, i64 4, !dbg !5919
  %38 = bitcast i8* %37 to i32*, !dbg !5920
  %39 = load i32, i32* %38, align 4, !dbg !5921
  %40 = icmp ne i32 %32, %39, !dbg !5922
  br i1 %40, label %41, label %42, !dbg !5923

; <label>:41:                                     ; preds = %29, %24
  store i1 false, i1* %4, align 1, !dbg !5925
  br label %518, !dbg !5925

; <label>:42:                                     ; preds = %29
  %43 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %5, align 8, !dbg !5926
  %44 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %43, i32 0, i32 7, !dbg !5928
  %45 = load i8, i8* %44, align 1, !dbg !5928
  %46 = zext i8 %45 to i32, !dbg !5926
  %47 = load %struct._ip_rule*, %struct._ip_rule** %7, align 8, !dbg !5929
  %48 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %47, i32 0, i32 16, !dbg !5930
  %49 = load i8, i8* %48, align 8, !dbg !5930
  %50 = zext i8 %49 to i32, !dbg !5929
  %51 = icmp ne i32 %46, %50, !dbg !5931
  br i1 %51, label %52, label %53, !dbg !5932

; <label>:52:                                     ; preds = %42
  store i1 false, i1* %4, align 1, !dbg !5933
  br label %518, !dbg !5933

; <label>:53:                                     ; preds = %42
  %54 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %5, align 8, !dbg !5934
  %55 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %54, i32 0, i32 7, !dbg !5936
  %56 = load i8, i8* %55, align 1, !dbg !5936
  %57 = zext i8 %56 to i32, !dbg !5934
  %58 = icmp eq i32 %57, 2, !dbg !5937
  br i1 %58, label %59, label %77, !dbg !5938

; <label>:59:                                     ; preds = %53
  %60 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !5939
  %61 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %60, i64 4, !dbg !5939
  %62 = load %struct.rtattr*, %struct.rtattr** %61, align 8, !dbg !5939
  %63 = icmp ne %struct.rtattr* %62, null, !dbg !5939
  br i1 %63, label %64, label %76, !dbg !5940

; <label>:64:                                     ; preds = %59
  %65 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !5941
  %66 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %65, i64 4, !dbg !5941
  %67 = load %struct.rtattr*, %struct.rtattr** %66, align 8, !dbg !5941
  %68 = bitcast %struct.rtattr* %67 to i8*, !dbg !5942
  %69 = getelementptr inbounds i8, i8* %68, i64 4, !dbg !5943
  %70 = bitcast i8* %69 to i32*, !dbg !5944
  %71 = load i32, i32* %70, align 4, !dbg !5945
  %72 = load %struct._ip_rule*, %struct._ip_rule** %7, align 8, !dbg !5946
  %73 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %72, i32 0, i32 14, !dbg !5947
  %74 = load i32, i32* %73, align 8, !dbg !5947
  %75 = icmp ne i32 %71, %74, !dbg !5948
  br i1 %75, label %76, label %77, !dbg !5949

; <label>:76:                                     ; preds = %64, %59
  store i1 false, i1* %4, align 1, !dbg !5950
  br label %518, !dbg !5950

; <label>:77:                                     ; preds = %64, %53
  %78 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !5951
  %79 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %78, i64 15, !dbg !5951
  %80 = load %struct.rtattr*, %struct.rtattr** %79, align 8, !dbg !5951
  %81 = icmp ne %struct.rtattr* %80, null, !dbg !5951
  br i1 %81, label %82, label %95, !dbg !5953

; <label>:82:                                     ; preds = %77
  %83 = load %struct._ip_rule*, %struct._ip_rule** %7, align 8, !dbg !5954
  %84 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %83, i32 0, i32 15, !dbg !5956
  %85 = load i32, i32* %84, align 4, !dbg !5956
  %86 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !5957
  %87 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %86, i64 15, !dbg !5957
  %88 = load %struct.rtattr*, %struct.rtattr** %87, align 8, !dbg !5957
  %89 = bitcast %struct.rtattr* %88 to i8*, !dbg !5958
  %90 = getelementptr inbounds i8, i8* %89, i64 4, !dbg !5959
  %91 = bitcast i8* %90 to i32*, !dbg !5960
  %92 = load i32, i32* %91, align 4, !dbg !5961
  %93 = icmp ne i32 %85, %92, !dbg !5962
  br i1 %93, label %94, label %95, !dbg !5963

; <label>:94:                                     ; preds = %82
  store i1 false, i1* %4, align 1, !dbg !5964
  br label %518, !dbg !5964

; <label>:95:                                     ; preds = %82, %77
  %96 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !5965
  %97 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %96, i64 15, !dbg !5965
  %98 = load %struct.rtattr*, %struct.rtattr** %97, align 8, !dbg !5965
  %99 = icmp ne %struct.rtattr* %98, null, !dbg !5965
  br i1 %99, label %110, label %100, !dbg !5967

; <label>:100:                                    ; preds = %95
  %101 = load %struct._ip_rule*, %struct._ip_rule** %7, align 8, !dbg !5968
  %102 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %101, i32 0, i32 15, !dbg !5970
  %103 = load i32, i32* %102, align 4, !dbg !5970
  %104 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %5, align 8, !dbg !5971
  %105 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %104, i32 0, i32 4, !dbg !5972
  %106 = load i8, i8* %105, align 4, !dbg !5972
  %107 = zext i8 %106 to i32, !dbg !5971
  %108 = icmp ne i32 %103, %107, !dbg !5973
  br i1 %108, label %109, label %110, !dbg !5974

; <label>:109:                                    ; preds = %100
  store i1 false, i1* %4, align 1, !dbg !5975
  br label %518, !dbg !5975

; <label>:110:                                    ; preds = %100, %95
  %111 = load %struct._ip_rule*, %struct._ip_rule** %7, align 8, !dbg !5976
  %112 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %111, i32 0, i32 1, !dbg !5978
  %113 = load i8, i8* %112, align 4, !dbg !5978
  %114 = trunc i8 %113 to i1, !dbg !5978
  %115 = xor i1 %114, true, !dbg !5979
  %116 = zext i1 %115 to i32, !dbg !5979
  %117 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %5, align 8, !dbg !5980
  %118 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %117, i32 0, i32 8, !dbg !5981
  %119 = load i32, i32* %118, align 4, !dbg !5981
  %120 = and i32 %119, 2, !dbg !5982
  %121 = icmp ne i32 %120, 0, !dbg !5983
  %122 = xor i1 %121, true, !dbg !5983
  %123 = zext i1 %122 to i32, !dbg !5983
  %124 = icmp ne i32 %116, %123, !dbg !5984
  br i1 %124, label %125, label %126, !dbg !5985

; <label>:125:                                    ; preds = %110
  store i1 false, i1* %4, align 1, !dbg !5986
  br label %518, !dbg !5986

; <label>:126:                                    ; preds = %110
  %127 = load %struct._ip_rule*, %struct._ip_rule** %7, align 8, !dbg !5987
  %128 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %127, i32 0, i32 3, !dbg !5989
  %129 = load %struct._ip_address*, %struct._ip_address** %128, align 8, !dbg !5989
  %130 = icmp ne %struct._ip_address* %129, null, !dbg !5990
  %131 = xor i1 %130, true, !dbg !5990
  %132 = zext i1 %131 to i32, !dbg !5990
  %133 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !5991
  %134 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %133, i64 2, !dbg !5991
  %135 = load %struct.rtattr*, %struct.rtattr** %134, align 8, !dbg !5991
  %136 = icmp ne %struct.rtattr* %135, null, !dbg !5992
  %137 = xor i1 %136, true, !dbg !5992
  %138 = zext i1 %137 to i32, !dbg !5992
  %139 = icmp ne i32 %132, %138, !dbg !5993
  br i1 %139, label %140, label %141, !dbg !5994

; <label>:140:                                    ; preds = %126
  store i1 false, i1* %4, align 1, !dbg !5995
  br label %518, !dbg !5995

; <label>:141:                                    ; preds = %126
  %142 = load %struct._ip_rule*, %struct._ip_rule** %7, align 8, !dbg !5996
  %143 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %142, i32 0, i32 3, !dbg !5998
  %144 = load %struct._ip_address*, %struct._ip_address** %143, align 8, !dbg !5998
  %145 = icmp ne %struct._ip_address* %144, null, !dbg !5996
  br i1 %145, label %146, label %175, !dbg !5999

; <label>:146:                                    ; preds = %141
  %147 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %5, align 8, !dbg !6000
  %148 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %147, i32 0, i32 2, !dbg !6003
  %149 = load i8, i8* %148, align 2, !dbg !6003
  %150 = zext i8 %149 to i32, !dbg !6000
  %151 = load %struct._ip_rule*, %struct._ip_rule** %7, align 8, !dbg !6004
  %152 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %151, i32 0, i32 3, !dbg !6005
  %153 = load %struct._ip_address*, %struct._ip_address** %152, align 8, !dbg !6005
  %154 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %153, i32 0, i32 0, !dbg !6006
  %155 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %154, i32 0, i32 1, !dbg !6007
  %156 = load i8, i8* %155, align 1, !dbg !6007
  %157 = zext i8 %156 to i32, !dbg !6004
  %158 = icmp ne i32 %150, %157, !dbg !6008
  br i1 %158, label %159, label %160, !dbg !6009

; <label>:159:                                    ; preds = %146
  store i1 false, i1* %4, align 1, !dbg !6010
  br label %518, !dbg !6010

; <label>:160:                                    ; preds = %146
  %161 = load %struct._ip_rule*, %struct._ip_rule** %7, align 8, !dbg !6011
  %162 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %161, i32 0, i32 2, !dbg !6013
  %163 = load i32, i32* %162, align 8, !dbg !6013
  %164 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !6014
  %165 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %164, i64 2, !dbg !6014
  %166 = load %struct.rtattr*, %struct.rtattr** %165, align 8, !dbg !6014
  %167 = bitcast %struct.rtattr* %166 to i8*, !dbg !6015
  %168 = getelementptr inbounds i8, i8* %167, i64 4, !dbg !6016
  %169 = load %struct._ip_rule*, %struct._ip_rule** %7, align 8, !dbg !6017
  %170 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %169, i32 0, i32 3, !dbg !6018
  %171 = load %struct._ip_address*, %struct._ip_address** %170, align 8, !dbg !6018
  %172 = call zeroext i1 @compare_addr(i32 %163, i8* %168, %struct._ip_address* %171), !dbg !6019
  br i1 %172, label %173, label %174, !dbg !6020

; <label>:173:                                    ; preds = %160
  store i1 false, i1* %4, align 1, !dbg !6021
  br label %518, !dbg !6021

; <label>:174:                                    ; preds = %160
  br label %175, !dbg !6022

; <label>:175:                                    ; preds = %174, %141
  %176 = load %struct._ip_rule*, %struct._ip_rule** %7, align 8, !dbg !6023
  %177 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %176, i32 0, i32 4, !dbg !6025
  %178 = load %struct._ip_address*, %struct._ip_address** %177, align 8, !dbg !6025
  %179 = icmp ne %struct._ip_address* %178, null, !dbg !6026
  %180 = xor i1 %179, true, !dbg !6026
  %181 = zext i1 %180 to i32, !dbg !6026
  %182 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !6027
  %183 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %182, i64 1, !dbg !6027
  %184 = load %struct.rtattr*, %struct.rtattr** %183, align 8, !dbg !6027
  %185 = icmp ne %struct.rtattr* %184, null, !dbg !6028
  %186 = xor i1 %185, true, !dbg !6028
  %187 = zext i1 %186 to i32, !dbg !6028
  %188 = icmp ne i32 %181, %187, !dbg !6029
  br i1 %188, label %189, label %190, !dbg !6030

; <label>:189:                                    ; preds = %175
  store i1 false, i1* %4, align 1, !dbg !6031
  br label %518, !dbg !6031

; <label>:190:                                    ; preds = %175
  %191 = load %struct._ip_rule*, %struct._ip_rule** %7, align 8, !dbg !6032
  %192 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %191, i32 0, i32 4, !dbg !6034
  %193 = load %struct._ip_address*, %struct._ip_address** %192, align 8, !dbg !6034
  %194 = icmp ne %struct._ip_address* %193, null, !dbg !6032
  br i1 %194, label %195, label %224, !dbg !6035

; <label>:195:                                    ; preds = %190
  %196 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %5, align 8, !dbg !6036
  %197 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %196, i32 0, i32 1, !dbg !6039
  %198 = load i8, i8* %197, align 1, !dbg !6039
  %199 = zext i8 %198 to i32, !dbg !6036
  %200 = load %struct._ip_rule*, %struct._ip_rule** %7, align 8, !dbg !6040
  %201 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %200, i32 0, i32 4, !dbg !6041
  %202 = load %struct._ip_address*, %struct._ip_address** %201, align 8, !dbg !6041
  %203 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %202, i32 0, i32 0, !dbg !6042
  %204 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %203, i32 0, i32 1, !dbg !6043
  %205 = load i8, i8* %204, align 1, !dbg !6043
  %206 = zext i8 %205 to i32, !dbg !6040
  %207 = icmp ne i32 %199, %206, !dbg !6044
  br i1 %207, label %208, label %209, !dbg !6045

; <label>:208:                                    ; preds = %195
  store i1 false, i1* %4, align 1, !dbg !6046
  br label %518, !dbg !6046

; <label>:209:                                    ; preds = %195
  %210 = load %struct._ip_rule*, %struct._ip_rule** %7, align 8, !dbg !6047
  %211 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %210, i32 0, i32 2, !dbg !6049
  %212 = load i32, i32* %211, align 8, !dbg !6049
  %213 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !6050
  %214 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %213, i64 1, !dbg !6050
  %215 = load %struct.rtattr*, %struct.rtattr** %214, align 8, !dbg !6050
  %216 = bitcast %struct.rtattr* %215 to i8*, !dbg !6051
  %217 = getelementptr inbounds i8, i8* %216, i64 4, !dbg !6052
  %218 = load %struct._ip_rule*, %struct._ip_rule** %7, align 8, !dbg !6053
  %219 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %218, i32 0, i32 4, !dbg !6054
  %220 = load %struct._ip_address*, %struct._ip_address** %219, align 8, !dbg !6054
  %221 = call zeroext i1 @compare_addr(i32 %212, i8* %217, %struct._ip_address* %220), !dbg !6055
  br i1 %221, label %222, label %223, !dbg !6056

; <label>:222:                                    ; preds = %209
  store i1 false, i1* %4, align 1, !dbg !6057
  br label %518, !dbg !6057

; <label>:223:                                    ; preds = %209
  br label %224, !dbg !6058

; <label>:224:                                    ; preds = %223, %190
  %225 = load %struct._ip_rule*, %struct._ip_rule** %7, align 8, !dbg !6059
  %226 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %225, i32 0, i32 6, !dbg !6061
  %227 = load i8, i8* %226, align 4, !dbg !6061
  %228 = zext i8 %227 to i32, !dbg !6059
  %229 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %5, align 8, !dbg !6062
  %230 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %229, i32 0, i32 3, !dbg !6063
  %231 = load i8, i8* %230, align 1, !dbg !6063
  %232 = zext i8 %231 to i32, !dbg !6062
  %233 = icmp ne i32 %228, %232, !dbg !6064
  br i1 %233, label %234, label %235, !dbg !6065

; <label>:234:                                    ; preds = %224
  store i1 false, i1* %4, align 1, !dbg !6066
  br label %518, !dbg !6066

; <label>:235:                                    ; preds = %224
  %236 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !6067
  %237 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %236, i64 10, !dbg !6067
  %238 = load %struct.rtattr*, %struct.rtattr** %237, align 8, !dbg !6067
  %239 = icmp ne %struct.rtattr* %238, null, !dbg !6069
  %240 = xor i1 %239, true, !dbg !6069
  %241 = zext i1 %240 to i32, !dbg !6069
  %242 = load %struct._ip_rule*, %struct._ip_rule** %7, align 8, !dbg !6070
  %243 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %242, i32 0, i32 0, !dbg !6071
  %244 = load i32, i32* %243, align 8, !dbg !6071
  %245 = and i32 %244, 2, !dbg !6072
  %246 = icmp ne i32 %245, 0, !dbg !6073
  %247 = xor i1 %246, true, !dbg !6073
  %248 = zext i1 %247 to i32, !dbg !6073
  %249 = icmp ne i32 %241, %248, !dbg !6074
  br i1 %249, label %250, label %251, !dbg !6075

; <label>:250:                                    ; preds = %235
  store i1 false, i1* %4, align 1, !dbg !6076
  br label %518, !dbg !6076

; <label>:251:                                    ; preds = %235
  %252 = load %struct._ip_rule*, %struct._ip_rule** %7, align 8, !dbg !6077
  %253 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %252, i32 0, i32 0, !dbg !6079
  %254 = load i32, i32* %253, align 8, !dbg !6079
  %255 = and i32 %254, 2, !dbg !6080
  %256 = icmp ne i32 %255, 0, !dbg !6080
  br i1 %256, label %257, label %270, !dbg !6081

; <label>:257:                                    ; preds = %251
  %258 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !6082
  %259 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %258, i64 10, !dbg !6082
  %260 = load %struct.rtattr*, %struct.rtattr** %259, align 8, !dbg !6082
  %261 = bitcast %struct.rtattr* %260 to i8*, !dbg !6083
  %262 = getelementptr inbounds i8, i8* %261, i64 4, !dbg !6084
  %263 = bitcast i8* %262 to i32*, !dbg !6085
  %264 = load i32, i32* %263, align 4, !dbg !6086
  %265 = load %struct._ip_rule*, %struct._ip_rule** %7, align 8, !dbg !6087
  %266 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %265, i32 0, i32 7, !dbg !6088
  %267 = load i32, i32* %266, align 8, !dbg !6088
  %268 = icmp ne i32 %264, %267, !dbg !6089
  br i1 %268, label %269, label %270, !dbg !6090

; <label>:269:                                    ; preds = %257
  store i1 false, i1* %4, align 1, !dbg !6091
  br label %518, !dbg !6091

; <label>:270:                                    ; preds = %257, %251
  %271 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !6092
  %272 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %271, i64 16, !dbg !6092
  %273 = load %struct.rtattr*, %struct.rtattr** %272, align 8, !dbg !6092
  %274 = icmp ne %struct.rtattr* %273, null, !dbg !6092
  br i1 %274, label %282, label %275, !dbg !6094

; <label>:275:                                    ; preds = %270
  %276 = load %struct._ip_rule*, %struct._ip_rule** %7, align 8, !dbg !6095
  %277 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %276, i32 0, i32 0, !dbg !6097
  %278 = load i32, i32* %277, align 8, !dbg !6097
  %279 = and i32 %278, 4, !dbg !6098
  %280 = icmp ne i32 %279, 0, !dbg !6098
  br i1 %280, label %281, label %282, !dbg !6099

; <label>:281:                                    ; preds = %275
  store i1 false, i1* %4, align 1, !dbg !6100
  br label %518, !dbg !6100

; <label>:282:                                    ; preds = %275, %270
  %283 = load %struct._ip_rule*, %struct._ip_rule** %7, align 8, !dbg !6101
  %284 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %283, i32 0, i32 0, !dbg !6103
  %285 = load i32, i32* %284, align 8, !dbg !6103
  %286 = and i32 %285, 4, !dbg !6104
  %287 = icmp ne i32 %286, 0, !dbg !6104
  br i1 %287, label %288, label %302, !dbg !6105

; <label>:288:                                    ; preds = %282
  %289 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !6106
  %290 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %289, i64 16, !dbg !6106
  %291 = load %struct.rtattr*, %struct.rtattr** %290, align 8, !dbg !6106
  %292 = bitcast %struct.rtattr* %291 to i8*, !dbg !6109
  %293 = getelementptr inbounds i8, i8* %292, i64 4, !dbg !6110
  %294 = bitcast i8* %293 to i32*, !dbg !6111
  %295 = load i32, i32* %294, align 4, !dbg !6112
  %296 = load %struct._ip_rule*, %struct._ip_rule** %7, align 8, !dbg !6113
  %297 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %296, i32 0, i32 8, !dbg !6114
  %298 = load i32, i32* %297, align 4, !dbg !6114
  %299 = icmp ne i32 %295, %298, !dbg !6115
  br i1 %299, label %300, label %301, !dbg !6116

; <label>:300:                                    ; preds = %288
  store i1 false, i1* %4, align 1, !dbg !6117
  br label %518, !dbg !6117

; <label>:301:                                    ; preds = %288
  br label %319, !dbg !6118

; <label>:302:                                    ; preds = %282
  %303 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !6119
  %304 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %303, i64 16, !dbg !6119
  %305 = load %struct.rtattr*, %struct.rtattr** %304, align 8, !dbg !6119
  %306 = icmp ne %struct.rtattr* %305, null, !dbg !6119
  br i1 %306, label %307, label %318, !dbg !6121

; <label>:307:                                    ; preds = %302
  %308 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !6122
  %309 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %308, i64 16, !dbg !6122
  %310 = load %struct.rtattr*, %struct.rtattr** %309, align 8, !dbg !6122
  %311 = bitcast %struct.rtattr* %310 to i8*, !dbg !6125
  %312 = getelementptr inbounds i8, i8* %311, i64 4, !dbg !6126
  %313 = bitcast i8* %312 to i32*, !dbg !6127
  %314 = load i32, i32* %313, align 4, !dbg !6128
  %315 = icmp ne i32 %314, -1, !dbg !6129
  br i1 %315, label %316, label %317, !dbg !6130

; <label>:316:                                    ; preds = %307
  store i1 false, i1* %4, align 1, !dbg !6131
  br label %518, !dbg !6131

; <label>:317:                                    ; preds = %307
  br label %318, !dbg !6132

; <label>:318:                                    ; preds = %317, %302
  br label %319

; <label>:319:                                    ; preds = %318, %301
  %320 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !6133
  %321 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %320, i64 11, !dbg !6133
  %322 = load %struct.rtattr*, %struct.rtattr** %321, align 8, !dbg !6133
  %323 = icmp ne %struct.rtattr* %322, null, !dbg !6135
  %324 = xor i1 %323, true, !dbg !6135
  %325 = zext i1 %324 to i32, !dbg !6135
  %326 = load %struct._ip_rule*, %struct._ip_rule** %7, align 8, !dbg !6136
  %327 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %326, i32 0, i32 9, !dbg !6137
  %328 = load i32, i32* %327, align 8, !dbg !6137
  %329 = icmp ne i32 %328, 0, !dbg !6138
  %330 = xor i1 %329, true, !dbg !6138
  %331 = zext i1 %330 to i32, !dbg !6138
  %332 = icmp ne i32 %325, %331, !dbg !6139
  br i1 %332, label %333, label %334, !dbg !6140

; <label>:333:                                    ; preds = %319
  store i1 false, i1* %4, align 1, !dbg !6141
  br label %518, !dbg !6141

; <label>:334:                                    ; preds = %319
  %335 = load %struct._ip_rule*, %struct._ip_rule** %7, align 8, !dbg !6142
  %336 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %335, i32 0, i32 9, !dbg !6144
  %337 = load i32, i32* %336, align 8, !dbg !6144
  %338 = icmp ne i32 %337, 0, !dbg !6142
  br i1 %338, label %339, label %352, !dbg !6145

; <label>:339:                                    ; preds = %334
  %340 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !6146
  %341 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %340, i64 11, !dbg !6146
  %342 = load %struct.rtattr*, %struct.rtattr** %341, align 8, !dbg !6146
  %343 = bitcast %struct.rtattr* %342 to i8*, !dbg !6147
  %344 = getelementptr inbounds i8, i8* %343, i64 4, !dbg !6148
  %345 = bitcast i8* %344 to i32*, !dbg !6149
  %346 = load i32, i32* %345, align 4, !dbg !6150
  %347 = load %struct._ip_rule*, %struct._ip_rule** %7, align 8, !dbg !6151
  %348 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %347, i32 0, i32 9, !dbg !6152
  %349 = load i32, i32* %348, align 8, !dbg !6152
  %350 = icmp ne i32 %346, %349, !dbg !6153
  br i1 %350, label %351, label %352, !dbg !6154

; <label>:351:                                    ; preds = %339
  store i1 false, i1* %4, align 1, !dbg !6155
  br label %518, !dbg !6155

; <label>:352:                                    ; preds = %339, %334
  %353 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !6156
  %354 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %353, i64 14, !dbg !6156
  %355 = load %struct.rtattr*, %struct.rtattr** %354, align 8, !dbg !6156
  %356 = icmp ne %struct.rtattr* %355, null, !dbg !6156
  br i1 %356, label %364, label %357, !dbg !6158

; <label>:357:                                    ; preds = %352
  %358 = load %struct._ip_rule*, %struct._ip_rule** %7, align 8, !dbg !6159
  %359 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %358, i32 0, i32 10, !dbg !6162
  %360 = load i32, i32* %359, align 4, !dbg !6162
  %361 = icmp ne i32 %360, -1, !dbg !6163
  br i1 %361, label %362, label %363, !dbg !6164

; <label>:362:                                    ; preds = %357
  store i1 false, i1* %4, align 1, !dbg !6165
  br label %518, !dbg !6165

; <label>:363:                                    ; preds = %357
  br label %378, !dbg !6166

; <label>:364:                                    ; preds = %352
  %365 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !6167
  %366 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %365, i64 14, !dbg !6167
  %367 = load %struct.rtattr*, %struct.rtattr** %366, align 8, !dbg !6167
  %368 = bitcast %struct.rtattr* %367 to i8*, !dbg !6170
  %369 = getelementptr inbounds i8, i8* %368, i64 4, !dbg !6171
  %370 = bitcast i8* %369 to i32*, !dbg !6172
  %371 = load i32, i32* %370, align 4, !dbg !6173
  %372 = load %struct._ip_rule*, %struct._ip_rule** %7, align 8, !dbg !6174
  %373 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %372, i32 0, i32 10, !dbg !6175
  %374 = load i32, i32* %373, align 4, !dbg !6175
  %375 = icmp ne i32 %371, %374, !dbg !6176
  br i1 %375, label %376, label %377, !dbg !6173

; <label>:376:                                    ; preds = %364
  store i1 false, i1* %4, align 1, !dbg !6177
  br label %518, !dbg !6177

; <label>:377:                                    ; preds = %364
  br label %378

; <label>:378:                                    ; preds = %377, %363
  %379 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !6178
  %380 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %379, i64 13, !dbg !6178
  %381 = load %struct.rtattr*, %struct.rtattr** %380, align 8, !dbg !6178
  %382 = icmp ne %struct.rtattr* %381, null, !dbg !6180
  %383 = xor i1 %382, true, !dbg !6180
  %384 = zext i1 %383 to i32, !dbg !6180
  %385 = load %struct._ip_rule*, %struct._ip_rule** %7, align 8, !dbg !6181
  %386 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %385, i32 0, i32 0, !dbg !6182
  %387 = load i32, i32* %386, align 8, !dbg !6182
  %388 = and i32 %387, 8, !dbg !6183
  %389 = icmp ne i32 %388, 0, !dbg !6184
  %390 = xor i1 %389, true, !dbg !6184
  %391 = zext i1 %390 to i32, !dbg !6184
  %392 = icmp ne i32 %384, %391, !dbg !6185
  br i1 %392, label %393, label %394, !dbg !6186

; <label>:393:                                    ; preds = %378
  store i1 false, i1* %4, align 1, !dbg !6187
  br label %518, !dbg !6187

; <label>:394:                                    ; preds = %378
  %395 = load %struct._ip_rule*, %struct._ip_rule** %7, align 8, !dbg !6188
  %396 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %395, i32 0, i32 0, !dbg !6190
  %397 = load i32, i32* %396, align 8, !dbg !6190
  %398 = and i32 %397, 8, !dbg !6191
  %399 = icmp ne i32 %398, 0, !dbg !6191
  br i1 %399, label %400, label %413, !dbg !6192

; <label>:400:                                    ; preds = %394
  %401 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !6193
  %402 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %401, i64 13, !dbg !6193
  %403 = load %struct.rtattr*, %struct.rtattr** %402, align 8, !dbg !6193
  %404 = bitcast %struct.rtattr* %403 to i8*, !dbg !6194
  %405 = getelementptr inbounds i8, i8* %404, i64 4, !dbg !6195
  %406 = bitcast i8* %405 to i32*, !dbg !6196
  %407 = load i32, i32* %406, align 4, !dbg !6197
  %408 = load %struct._ip_rule*, %struct._ip_rule** %7, align 8, !dbg !6198
  %409 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %408, i32 0, i32 11, !dbg !6199
  %410 = load i32, i32* %409, align 8, !dbg !6199
  %411 = icmp ne i32 %407, %410, !dbg !6200
  br i1 %411, label %412, label %413, !dbg !6201

; <label>:412:                                    ; preds = %400
  store i1 false, i1* %4, align 1, !dbg !6202
  br label %518, !dbg !6202

; <label>:413:                                    ; preds = %400, %394
  %414 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !6203
  %415 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %414, i64 3, !dbg !6203
  %416 = load %struct.rtattr*, %struct.rtattr** %415, align 8, !dbg !6203
  %417 = icmp ne %struct.rtattr* %416, null, !dbg !6205
  %418 = xor i1 %417, true, !dbg !6205
  %419 = zext i1 %418 to i32, !dbg !6205
  %420 = load %struct._ip_rule*, %struct._ip_rule** %7, align 8, !dbg !6206
  %421 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %420, i32 0, i32 12, !dbg !6207
  %422 = load %struct._interface*, %struct._interface** %421, align 8, !dbg !6207
  %423 = icmp ne %struct._interface* %422, null, !dbg !6208
  %424 = xor i1 %423, true, !dbg !6208
  %425 = zext i1 %424 to i32, !dbg !6208
  %426 = icmp ne i32 %419, %425, !dbg !6209
  br i1 %426, label %427, label %428, !dbg !6210

; <label>:427:                                    ; preds = %413
  store i1 false, i1* %4, align 1, !dbg !6211
  br label %518, !dbg !6211

; <label>:428:                                    ; preds = %413
  %429 = load %struct._ip_rule*, %struct._ip_rule** %7, align 8, !dbg !6212
  %430 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %429, i32 0, i32 12, !dbg !6214
  %431 = load %struct._interface*, %struct._interface** %430, align 8, !dbg !6214
  %432 = icmp ne %struct._interface* %431, null, !dbg !6212
  br i1 %432, label %433, label %447, !dbg !6215

; <label>:433:                                    ; preds = %428
  %434 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !6216
  %435 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %434, i64 3, !dbg !6216
  %436 = load %struct.rtattr*, %struct.rtattr** %435, align 8, !dbg !6216
  %437 = bitcast %struct.rtattr* %436 to i8*, !dbg !6217
  %438 = getelementptr inbounds i8, i8* %437, i64 4, !dbg !6218
  %439 = load %struct._ip_rule*, %struct._ip_rule** %7, align 8, !dbg !6219
  %440 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %439, i32 0, i32 12, !dbg !6220
  %441 = load %struct._interface*, %struct._interface** %440, align 8, !dbg !6220
  %442 = getelementptr inbounds %struct._interface, %struct._interface* %441, i32 0, i32 0, !dbg !6221
  %443 = getelementptr inbounds [16 x i8], [16 x i8]* %442, i32 0, i32 0, !dbg !6219
  %444 = call i32 @strcmp(i8* %438, i8* %443) #9, !dbg !6222
  %445 = icmp ne i32 %444, 0, !dbg !6222
  br i1 %445, label %446, label %447, !dbg !6223

; <label>:446:                                    ; preds = %433
  store i1 false, i1* %4, align 1, !dbg !6224
  br label %518, !dbg !6224

; <label>:447:                                    ; preds = %433, %428
  %448 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !6225
  %449 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %448, i64 17, !dbg !6225
  %450 = load %struct.rtattr*, %struct.rtattr** %449, align 8, !dbg !6225
  %451 = icmp ne %struct.rtattr* %450, null, !dbg !6227
  %452 = xor i1 %451, true, !dbg !6227
  %453 = zext i1 %452 to i32, !dbg !6227
  %454 = load %struct._ip_rule*, %struct._ip_rule** %7, align 8, !dbg !6228
  %455 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %454, i32 0, i32 13, !dbg !6229
  %456 = load %struct._interface*, %struct._interface** %455, align 8, !dbg !6229
  %457 = icmp ne %struct._interface* %456, null, !dbg !6230
  %458 = xor i1 %457, true, !dbg !6230
  %459 = zext i1 %458 to i32, !dbg !6230
  %460 = icmp ne i32 %453, %459, !dbg !6231
  br i1 %460, label %461, label %462, !dbg !6232

; <label>:461:                                    ; preds = %447
  store i1 false, i1* %4, align 1, !dbg !6233
  br label %518, !dbg !6233

; <label>:462:                                    ; preds = %447
  %463 = load %struct._ip_rule*, %struct._ip_rule** %7, align 8, !dbg !6234
  %464 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %463, i32 0, i32 13, !dbg !6236
  %465 = load %struct._interface*, %struct._interface** %464, align 8, !dbg !6236
  %466 = icmp ne %struct._interface* %465, null, !dbg !6234
  br i1 %466, label %467, label %481, !dbg !6237

; <label>:467:                                    ; preds = %462
  %468 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !6238
  %469 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %468, i64 17, !dbg !6238
  %470 = load %struct.rtattr*, %struct.rtattr** %469, align 8, !dbg !6238
  %471 = bitcast %struct.rtattr* %470 to i8*, !dbg !6239
  %472 = getelementptr inbounds i8, i8* %471, i64 4, !dbg !6240
  %473 = load %struct._ip_rule*, %struct._ip_rule** %7, align 8, !dbg !6241
  %474 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %473, i32 0, i32 13, !dbg !6242
  %475 = load %struct._interface*, %struct._interface** %474, align 8, !dbg !6242
  %476 = getelementptr inbounds %struct._interface, %struct._interface* %475, i32 0, i32 0, !dbg !6243
  %477 = getelementptr inbounds [16 x i8], [16 x i8]* %476, i32 0, i32 0, !dbg !6241
  %478 = call i32 @strcmp(i8* %472, i8* %477) #9, !dbg !6244
  %479 = icmp ne i32 %478, 0, !dbg !6244
  br i1 %479, label %480, label %481, !dbg !6245

; <label>:480:                                    ; preds = %467
  store i1 false, i1* %4, align 1, !dbg !6246
  br label %518, !dbg !6246

; <label>:481:                                    ; preds = %467, %462
  call void @llvm.dbg.declare(metadata i64* %8, metadata !6247, metadata !669), !dbg !6248
  %482 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !6249
  %483 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %482, i64 12, !dbg !6249
  %484 = load %struct.rtattr*, %struct.rtattr** %483, align 8, !dbg !6249
  %485 = icmp ne %struct.rtattr* %484, null, !dbg !6251
  %486 = xor i1 %485, true, !dbg !6251
  %487 = zext i1 %486 to i32, !dbg !6251
  %488 = load %struct._ip_rule*, %struct._ip_rule** %7, align 8, !dbg !6252
  %489 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %488, i32 0, i32 17, !dbg !6253
  %490 = load i64, i64* %489, align 8, !dbg !6253
  %491 = icmp ne i64 %490, 0, !dbg !6254
  %492 = xor i1 %491, true, !dbg !6254
  %493 = zext i1 %492 to i32, !dbg !6254
  %494 = icmp ne i32 %487, %493, !dbg !6255
  br i1 %494, label %495, label %496, !dbg !6256

; <label>:495:                                    ; preds = %481
  store i1 false, i1* %4, align 1, !dbg !6257
  br label %518, !dbg !6257

; <label>:496:                                    ; preds = %481
  %497 = load %struct._ip_rule*, %struct._ip_rule** %7, align 8, !dbg !6258
  %498 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %497, i32 0, i32 17, !dbg !6260
  %499 = load i64, i64* %498, align 8, !dbg !6260
  %500 = icmp ne i64 %499, 0, !dbg !6258
  br i1 %500, label %501, label %517, !dbg !6261

; <label>:501:                                    ; preds = %496
  %502 = load %struct.rtattr**, %struct.rtattr*** %6, align 8, !dbg !6262
  %503 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %502, i64 12, !dbg !6262
  %504 = load %struct.rtattr*, %struct.rtattr** %503, align 8, !dbg !6262
  %505 = bitcast %struct.rtattr* %504 to i8*, !dbg !6264
  %506 = getelementptr inbounds i8, i8* %505, i64 4, !dbg !6265
  %507 = bitcast i8* %506 to i64*, !dbg !6266
  %508 = load i64, i64* %507, align 8, !dbg !6262
  %509 = call i64 @__bswap_64(i64 %508), !dbg !6262
  store i64 %509, i64* %8, align 8, !dbg !6267
  %510 = load i64, i64* %8, align 8, !dbg !6268
  %511 = load %struct._ip_rule*, %struct._ip_rule** %7, align 8, !dbg !6270
  %512 = getelementptr inbounds %struct._ip_rule, %struct._ip_rule* %511, i32 0, i32 17, !dbg !6271
  %513 = load i64, i64* %512, align 8, !dbg !6271
  %514 = icmp ne i64 %510, %513, !dbg !6272
  br i1 %514, label %515, label %516, !dbg !6273

; <label>:515:                                    ; preds = %501
  store i1 false, i1* %4, align 1, !dbg !6274
  br label %518, !dbg !6274

; <label>:516:                                    ; preds = %501
  br label %517, !dbg !6275

; <label>:517:                                    ; preds = %516, %496
  store i1 true, i1* %4, align 1, !dbg !6276
  br label %518, !dbg !6276

; <label>:518:                                    ; preds = %517, %515, %495, %480, %461, %446, %427, %412, %393, %376, %362, %351, %333, %316, %300, %281, %269, %250, %234, %222, %208, %189, %173, %159, %140, %125, %109, %94, %76, %52, %41, %23, %13
  %519 = load i1, i1* %4, align 1, !dbg !6277
  ret i1 %519, !dbg !6277
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @__bswap_64(i64) #8 !dbg !6278 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !6283, metadata !669), !dbg !6284
  %3 = load i64, i64* %2, align 8, !dbg !6285
  %4 = call i64 @llvm.bswap.i64(i64 %3), !dbg !6286
  ret i64 %4, !dbg !6287
}

; Function Attrs: nounwind readnone
declare i64 @llvm.bswap.i64(i64) #2

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) #5

declare i32 @nl_socket_set_buffer_size(%struct.nl_sock*, i32, i32) #4

declare void @thread_cancel(%struct._thread*) #4

declare void @nl_socket_free(%struct.nl_sock*) #4

declare %struct.nl_sock* @nl_socket_alloc() #4

declare i32 @nl_connect(%struct.nl_sock*, i32) #4

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare i32 @nl_socket_set_nonblocking(%struct.nl_sock*) #4

declare i32 @nl_socket_get_local_port(%struct.nl_sock*) #4

declare i32 @nl_socket_get_fd(%struct.nl_sock*) #4

declare i32 @fcntl(i32, i32, ...) #4

; Function Attrs: nounwind
declare i64 @time(i64*) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { argmemonly nounwind }
attributes #4 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!649, !650}
!llvm.ident = !{!651}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !379, globals: !457)
!1 = !DIFile(filename: "[inter]keepalived--core--keepalived_netlink.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!2 = !{!3, !24, !57, !65, !77, !96, !148, !153, !165, !188, !232, !239, !248, !258, !265, !270, !285, !298, !305, !311, !337, !359, !371}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 41, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../lib/scheduler.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23}
!6 = !DIEnumerator(name: "THREAD_READ", value: 0)
!7 = !DIEnumerator(name: "THREAD_WRITE", value: 1)
!8 = !DIEnumerator(name: "THREAD_TIMER", value: 2)
!9 = !DIEnumerator(name: "THREAD_TIMER_SHUTDOWN", value: 3)
!10 = !DIEnumerator(name: "THREAD_EVENT", value: 4)
!11 = !DIEnumerator(name: "THREAD_CHILD", value: 5)
!12 = !DIEnumerator(name: "THREAD_READY", value: 6)
!13 = !DIEnumerator(name: "THREAD_UNUSED", value: 7)
!14 = !DIEnumerator(name: "THREAD_WRITE_TIMEOUT", value: 8)
!15 = !DIEnumerator(name: "THREAD_READ_TIMEOUT", value: 9)
!16 = !DIEnumerator(name: "THREAD_CHILD_TIMEOUT", value: 10)
!17 = !DIEnumerator(name: "THREAD_TERMINATE_START", value: 11)
!18 = !DIEnumerator(name: "THREAD_TERMINATE", value: 12)
!19 = !DIEnumerator(name: "THREAD_READY_FD", value: 13)
!20 = !DIEnumerator(name: "THREAD_READ_ERROR", value: 14)
!21 = !DIEnumerator(name: "THREAD_WRITE_ERROR", value: 15)
!22 = !DIEnumerator(name: "THREAD_IF_UP", value: 16)
!23 = !DIEnumerator(name: "THREAD_IF_DOWN", value: 17)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rtnetlink_groups", file: !25, line: 592, size: 32, align: 32, elements: !26)
!25 = !DIFile(filename: "/usr/include/linux/rtnetlink.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!26 = !{!27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56}
!27 = !DIEnumerator(name: "RTNLGRP_NONE", value: 0)
!28 = !DIEnumerator(name: "RTNLGRP_LINK", value: 1)
!29 = !DIEnumerator(name: "RTNLGRP_NOTIFY", value: 2)
!30 = !DIEnumerator(name: "RTNLGRP_NEIGH", value: 3)
!31 = !DIEnumerator(name: "RTNLGRP_TC", value: 4)
!32 = !DIEnumerator(name: "RTNLGRP_IPV4_IFADDR", value: 5)
!33 = !DIEnumerator(name: "RTNLGRP_IPV4_MROUTE", value: 6)
!34 = !DIEnumerator(name: "RTNLGRP_IPV4_ROUTE", value: 7)
!35 = !DIEnumerator(name: "RTNLGRP_IPV4_RULE", value: 8)
!36 = !DIEnumerator(name: "RTNLGRP_IPV6_IFADDR", value: 9)
!37 = !DIEnumerator(name: "RTNLGRP_IPV6_MROUTE", value: 10)
!38 = !DIEnumerator(name: "RTNLGRP_IPV6_ROUTE", value: 11)
!39 = !DIEnumerator(name: "RTNLGRP_IPV6_IFINFO", value: 12)
!40 = !DIEnumerator(name: "RTNLGRP_DECnet_IFADDR", value: 13)
!41 = !DIEnumerator(name: "RTNLGRP_NOP2", value: 14)
!42 = !DIEnumerator(name: "RTNLGRP_DECnet_ROUTE", value: 15)
!43 = !DIEnumerator(name: "RTNLGRP_DECnet_RULE", value: 16)
!44 = !DIEnumerator(name: "RTNLGRP_NOP4", value: 17)
!45 = !DIEnumerator(name: "RTNLGRP_IPV6_PREFIX", value: 18)
!46 = !DIEnumerator(name: "RTNLGRP_IPV6_RULE", value: 19)
!47 = !DIEnumerator(name: "RTNLGRP_ND_USEROPT", value: 20)
!48 = !DIEnumerator(name: "RTNLGRP_PHONET_IFADDR", value: 21)
!49 = !DIEnumerator(name: "RTNLGRP_PHONET_ROUTE", value: 22)
!50 = !DIEnumerator(name: "RTNLGRP_DCB", value: 23)
!51 = !DIEnumerator(name: "RTNLGRP_IPV4_NETCONF", value: 24)
!52 = !DIEnumerator(name: "RTNLGRP_IPV6_NETCONF", value: 25)
!53 = !DIEnumerator(name: "RTNLGRP_MDB", value: 26)
!54 = !DIEnumerator(name: "RTNLGRP_MPLS_ROUTE", value: 27)
!55 = !DIEnumerator(name: "RTNLGRP_NSID", value: 28)
!56 = !DIEnumerator(name: "__RTNLGRP_MAX", value: 29)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "chksum_compatibility", file: !58, line: 173, size: 32, align: 32, elements: !59)
!58 = !DIFile(filename: "./../include/vrrp.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!59 = !{!60, !61, !62, !63, !64}
!60 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_NONE", value: 0)
!61 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_NEVER", value: 1)
!62 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_MIN_COMPAT", value: 2)
!63 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_CONFIG", value: 3)
!64 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_AUTO", value: 4)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !66, line: 119, size: 32, align: 32, elements: !67)
!66 = !DIFile(filename: "./../include/vrrp_track.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!67 = !{!68, !69, !70, !71, !72, !73, !74, !75, !76}
!68 = !DIEnumerator(name: "TRACK_VRRP", value: 1)
!69 = !DIEnumerator(name: "TRACK_IF", value: 2)
!70 = !DIEnumerator(name: "TRACK_SG", value: 4)
!71 = !DIEnumerator(name: "TRACK_ADDR", value: 4)
!72 = !DIEnumerator(name: "TRACK_ROUTE", value: 8)
!73 = !DIEnumerator(name: "TRACK_RULE", value: 16)
!74 = !DIEnumerator(name: "TRACK_SADDR", value: 32)
!75 = !DIEnumerator(name: "TRACK_SROUTE", value: 64)
!76 = !DIEnumerator(name: "TRACK_SRULE", value: 128)
!77 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !78, line: 42, size: 32, align: 32, elements: !79)
!78 = !DIFile(filename: "/usr/include/net/if.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!79 = !{!80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95}
!80 = !DIEnumerator(name: "IFF_UP", value: 1)
!81 = !DIEnumerator(name: "IFF_BROADCAST", value: 2)
!82 = !DIEnumerator(name: "IFF_DEBUG", value: 4)
!83 = !DIEnumerator(name: "IFF_LOOPBACK", value: 8)
!84 = !DIEnumerator(name: "IFF_POINTOPOINT", value: 16)
!85 = !DIEnumerator(name: "IFF_NOTRAILERS", value: 32)
!86 = !DIEnumerator(name: "IFF_RUNNING", value: 64)
!87 = !DIEnumerator(name: "IFF_NOARP", value: 128)
!88 = !DIEnumerator(name: "IFF_PROMISC", value: 256)
!89 = !DIEnumerator(name: "IFF_ALLMULTI", value: 512)
!90 = !DIEnumerator(name: "IFF_MASTER", value: 1024)
!91 = !DIEnumerator(name: "IFF_SLAVE", value: 2048)
!92 = !DIEnumerator(name: "IFF_MULTICAST", value: 4096)
!93 = !DIEnumerator(name: "IFF_PORTSEL", value: 8192)
!94 = !DIEnumerator(name: "IFF_AUTOMEDIA", value: 16384)
!95 = !DIEnumerator(name: "IFF_DYNAMIC", value: 32768)
!96 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !25, line: 23, size: 32, align: 32, elements: !97)
!97 = !{!98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147}
!98 = !DIEnumerator(name: "RTM_BASE", value: 16)
!99 = !DIEnumerator(name: "RTM_NEWLINK", value: 16)
!100 = !DIEnumerator(name: "RTM_DELLINK", value: 17)
!101 = !DIEnumerator(name: "RTM_GETLINK", value: 18)
!102 = !DIEnumerator(name: "RTM_SETLINK", value: 19)
!103 = !DIEnumerator(name: "RTM_NEWADDR", value: 20)
!104 = !DIEnumerator(name: "RTM_DELADDR", value: 21)
!105 = !DIEnumerator(name: "RTM_GETADDR", value: 22)
!106 = !DIEnumerator(name: "RTM_NEWROUTE", value: 24)
!107 = !DIEnumerator(name: "RTM_DELROUTE", value: 25)
!108 = !DIEnumerator(name: "RTM_GETROUTE", value: 26)
!109 = !DIEnumerator(name: "RTM_NEWNEIGH", value: 28)
!110 = !DIEnumerator(name: "RTM_DELNEIGH", value: 29)
!111 = !DIEnumerator(name: "RTM_GETNEIGH", value: 30)
!112 = !DIEnumerator(name: "RTM_NEWRULE", value: 32)
!113 = !DIEnumerator(name: "RTM_DELRULE", value: 33)
!114 = !DIEnumerator(name: "RTM_GETRULE", value: 34)
!115 = !DIEnumerator(name: "RTM_NEWQDISC", value: 36)
!116 = !DIEnumerator(name: "RTM_DELQDISC", value: 37)
!117 = !DIEnumerator(name: "RTM_GETQDISC", value: 38)
!118 = !DIEnumerator(name: "RTM_NEWTCLASS", value: 40)
!119 = !DIEnumerator(name: "RTM_DELTCLASS", value: 41)
!120 = !DIEnumerator(name: "RTM_GETTCLASS", value: 42)
!121 = !DIEnumerator(name: "RTM_NEWTFILTER", value: 44)
!122 = !DIEnumerator(name: "RTM_DELTFILTER", value: 45)
!123 = !DIEnumerator(name: "RTM_GETTFILTER", value: 46)
!124 = !DIEnumerator(name: "RTM_NEWACTION", value: 48)
!125 = !DIEnumerator(name: "RTM_DELACTION", value: 49)
!126 = !DIEnumerator(name: "RTM_GETACTION", value: 50)
!127 = !DIEnumerator(name: "RTM_NEWPREFIX", value: 52)
!128 = !DIEnumerator(name: "RTM_GETMULTICAST", value: 58)
!129 = !DIEnumerator(name: "RTM_GETANYCAST", value: 62)
!130 = !DIEnumerator(name: "RTM_NEWNEIGHTBL", value: 64)
!131 = !DIEnumerator(name: "RTM_GETNEIGHTBL", value: 66)
!132 = !DIEnumerator(name: "RTM_SETNEIGHTBL", value: 67)
!133 = !DIEnumerator(name: "RTM_NEWNDUSEROPT", value: 68)
!134 = !DIEnumerator(name: "RTM_NEWADDRLABEL", value: 72)
!135 = !DIEnumerator(name: "RTM_DELADDRLABEL", value: 73)
!136 = !DIEnumerator(name: "RTM_GETADDRLABEL", value: 74)
!137 = !DIEnumerator(name: "RTM_GETDCB", value: 78)
!138 = !DIEnumerator(name: "RTM_SETDCB", value: 79)
!139 = !DIEnumerator(name: "RTM_NEWNETCONF", value: 80)
!140 = !DIEnumerator(name: "RTM_GETNETCONF", value: 82)
!141 = !DIEnumerator(name: "RTM_NEWMDB", value: 84)
!142 = !DIEnumerator(name: "RTM_DELMDB", value: 85)
!143 = !DIEnumerator(name: "RTM_GETMDB", value: 86)
!144 = !DIEnumerator(name: "RTM_NEWNSID", value: 88)
!145 = !DIEnumerator(name: "RTM_DELNSID", value: 89)
!146 = !DIEnumerator(name: "RTM_GETNSID", value: 90)
!147 = !DIEnumerator(name: "__RTM_MAX", value: 91)
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 152, size: 32, align: 32, elements: !149)
!149 = !{!150, !151, !152}
!150 = !DIEnumerator(name: "PROG_TYPE_PARENT", value: 0)
!151 = !DIEnumerator(name: "PROG_TYPE_VRRP", value: 1)
!152 = !DIEnumerator(name: "PROG_TYPE_CHECKER", value: 2)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !154, line: 24, size: 32, align: 32, elements: !155)
!154 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!155 = !{!156, !157, !158, !159, !160, !161, !162, !163, !164}
!156 = !DIEnumerator(name: "SOCK_STREAM", value: 1)
!157 = !DIEnumerator(name: "SOCK_DGRAM", value: 2)
!158 = !DIEnumerator(name: "SOCK_RAW", value: 3)
!159 = !DIEnumerator(name: "SOCK_RDM", value: 4)
!160 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5)
!161 = !DIEnumerator(name: "SOCK_DCCP", value: 6)
!162 = !DIEnumerator(name: "SOCK_PACKET", value: 10)
!163 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288)
!164 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048)
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !166, line: 175, size: 32, align: 32, elements: !167)
!166 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!167 = !{!168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187}
!168 = !DIEnumerator(name: "MSG_OOB", value: 1)
!169 = !DIEnumerator(name: "MSG_PEEK", value: 2)
!170 = !DIEnumerator(name: "MSG_DONTROUTE", value: 4)
!171 = !DIEnumerator(name: "MSG_TRYHARD", value: 4)
!172 = !DIEnumerator(name: "MSG_CTRUNC", value: 8)
!173 = !DIEnumerator(name: "MSG_PROXY", value: 16)
!174 = !DIEnumerator(name: "MSG_TRUNC", value: 32)
!175 = !DIEnumerator(name: "MSG_DONTWAIT", value: 64)
!176 = !DIEnumerator(name: "MSG_EOR", value: 128)
!177 = !DIEnumerator(name: "MSG_WAITALL", value: 256)
!178 = !DIEnumerator(name: "MSG_FIN", value: 512)
!179 = !DIEnumerator(name: "MSG_SYN", value: 1024)
!180 = !DIEnumerator(name: "MSG_CONFIRM", value: 2048)
!181 = !DIEnumerator(name: "MSG_RST", value: 4096)
!182 = !DIEnumerator(name: "MSG_ERRQUEUE", value: 8192)
!183 = !DIEnumerator(name: "MSG_NOSIGNAL", value: 16384)
!184 = !DIEnumerator(name: "MSG_MORE", value: 32768)
!185 = !DIEnumerator(name: "MSG_WAITFORONE", value: 65536)
!186 = !DIEnumerator(name: "MSG_FASTOPEN", value: 536870912)
!187 = !DIEnumerator(name: "MSG_CMSG_CLOEXEC", value: 1073741824)
!188 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !189, line: 101, size: 32, align: 32, elements: !190)
!189 = !DIFile(filename: "/usr/include/linux/if_link.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!190 = !{!191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231}
!191 = !DIEnumerator(name: "IFLA_UNSPEC", value: 0)
!192 = !DIEnumerator(name: "IFLA_ADDRESS", value: 1)
!193 = !DIEnumerator(name: "IFLA_BROADCAST", value: 2)
!194 = !DIEnumerator(name: "IFLA_IFNAME", value: 3)
!195 = !DIEnumerator(name: "IFLA_MTU", value: 4)
!196 = !DIEnumerator(name: "IFLA_LINK", value: 5)
!197 = !DIEnumerator(name: "IFLA_QDISC", value: 6)
!198 = !DIEnumerator(name: "IFLA_STATS", value: 7)
!199 = !DIEnumerator(name: "IFLA_COST", value: 8)
!200 = !DIEnumerator(name: "IFLA_PRIORITY", value: 9)
!201 = !DIEnumerator(name: "IFLA_MASTER", value: 10)
!202 = !DIEnumerator(name: "IFLA_WIRELESS", value: 11)
!203 = !DIEnumerator(name: "IFLA_PROTINFO", value: 12)
!204 = !DIEnumerator(name: "IFLA_TXQLEN", value: 13)
!205 = !DIEnumerator(name: "IFLA_MAP", value: 14)
!206 = !DIEnumerator(name: "IFLA_WEIGHT", value: 15)
!207 = !DIEnumerator(name: "IFLA_OPERSTATE", value: 16)
!208 = !DIEnumerator(name: "IFLA_LINKMODE", value: 17)
!209 = !DIEnumerator(name: "IFLA_LINKINFO", value: 18)
!210 = !DIEnumerator(name: "IFLA_NET_NS_PID", value: 19)
!211 = !DIEnumerator(name: "IFLA_IFALIAS", value: 20)
!212 = !DIEnumerator(name: "IFLA_NUM_VF", value: 21)
!213 = !DIEnumerator(name: "IFLA_VFINFO_LIST", value: 22)
!214 = !DIEnumerator(name: "IFLA_STATS64", value: 23)
!215 = !DIEnumerator(name: "IFLA_VF_PORTS", value: 24)
!216 = !DIEnumerator(name: "IFLA_PORT_SELF", value: 25)
!217 = !DIEnumerator(name: "IFLA_AF_SPEC", value: 26)
!218 = !DIEnumerator(name: "IFLA_GROUP", value: 27)
!219 = !DIEnumerator(name: "IFLA_NET_NS_FD", value: 28)
!220 = !DIEnumerator(name: "IFLA_EXT_MASK", value: 29)
!221 = !DIEnumerator(name: "IFLA_PROMISCUITY", value: 30)
!222 = !DIEnumerator(name: "IFLA_NUM_TX_QUEUES", value: 31)
!223 = !DIEnumerator(name: "IFLA_NUM_RX_QUEUES", value: 32)
!224 = !DIEnumerator(name: "IFLA_CARRIER", value: 33)
!225 = !DIEnumerator(name: "IFLA_PHYS_PORT_ID", value: 34)
!226 = !DIEnumerator(name: "IFLA_CARRIER_CHANGES", value: 35)
!227 = !DIEnumerator(name: "IFLA_PHYS_SWITCH_ID", value: 36)
!228 = !DIEnumerator(name: "IFLA_LINK_NETNSID", value: 37)
!229 = !DIEnumerator(name: "IFLA_PHYS_PORT_NAME", value: 38)
!230 = !DIEnumerator(name: "IFLA_PROTO_DOWN", value: 39)
!231 = !DIEnumerator(name: "__IFLA_MAX", value: 40)
!232 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "if_lookup", file: !233, line: 142, size: 32, align: 32, elements: !234)
!233 = !DIFile(filename: "./../include/vrrp_if.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!234 = !{!235, !236, !237, !238}
!235 = !DIEnumerator(name: "IF_NO_CREATE", value: 0)
!236 = !DIEnumerator(name: "IF_CREATE_IF_DYNAMIC", value: 1)
!237 = !DIEnumerator(name: "IF_CREATE_ALWAYS", value: 2)
!238 = !DIEnumerator(name: "IF_CREATE_NETLINK", value: 3)
!239 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !189, line: 317, size: 32, align: 32, elements: !240)
!240 = !{!241, !242, !243, !244, !245, !246, !247}
!241 = !DIEnumerator(name: "IFLA_INFO_UNSPEC", value: 0)
!242 = !DIEnumerator(name: "IFLA_INFO_KIND", value: 1)
!243 = !DIEnumerator(name: "IFLA_INFO_DATA", value: 2)
!244 = !DIEnumerator(name: "IFLA_INFO_XSTATS", value: 3)
!245 = !DIEnumerator(name: "IFLA_INFO_SLAVE_KIND", value: 4)
!246 = !DIEnumerator(name: "IFLA_INFO_SLAVE_DATA", value: 5)
!247 = !DIEnumerator(name: "__IFLA_INFO_MAX", value: 6)
!248 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !189, line: 362, size: 32, align: 32, elements: !249)
!249 = !{!250, !251, !252, !253, !254, !255, !256, !257}
!250 = !DIEnumerator(name: "IFLA_MACVLAN_UNSPEC", value: 0)
!251 = !DIEnumerator(name: "IFLA_MACVLAN_MODE", value: 1)
!252 = !DIEnumerator(name: "IFLA_MACVLAN_FLAGS", value: 2)
!253 = !DIEnumerator(name: "IFLA_MACVLAN_MACADDR_MODE", value: 3)
!254 = !DIEnumerator(name: "IFLA_MACVLAN_MACADDR", value: 4)
!255 = !DIEnumerator(name: "IFLA_MACVLAN_MACADDR_DATA", value: 5)
!256 = !DIEnumerator(name: "IFLA_MACVLAN_MACADDR_COUNT", value: 6)
!257 = !DIEnumerator(name: "__IFLA_MACVLAN_MAX", value: 7)
!258 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "macvlan_mode", file: !189, line: 375, size: 32, align: 32, elements: !259)
!259 = !{!260, !261, !262, !263, !264}
!260 = !DIEnumerator(name: "MACVLAN_MODE_PRIVATE", value: 1)
!261 = !DIEnumerator(name: "MACVLAN_MODE_VEPA", value: 2)
!262 = !DIEnumerator(name: "MACVLAN_MODE_BRIDGE", value: 4)
!263 = !DIEnumerator(name: "MACVLAN_MODE_PASSTHRU", value: 8)
!264 = !DIEnumerator(name: "MACVLAN_MODE_SOURCE", value: 16)
!265 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !189, line: 393, size: 32, align: 32, elements: !266)
!266 = !{!267, !268, !269}
!267 = !DIEnumerator(name: "IFLA_VRF_UNSPEC", value: 0)
!268 = !DIEnumerator(name: "IFLA_VRF_TABLE", value: 1)
!269 = !DIEnumerator(name: "__IFLA_VRF_MAX", value: 2)
!270 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "global_bits", file: !271, line: 53, size: 32, align: 32, elements: !272)
!271 = !DIFile(filename: "../../lib/bitops.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!272 = !{!273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284}
!273 = !DIEnumerator(name: "LOG_CONSOLE_BIT", value: 0)
!274 = !DIEnumerator(name: "NO_SYSLOG_BIT", value: 1)
!275 = !DIEnumerator(name: "DONT_FORK_BIT", value: 2)
!276 = !DIEnumerator(name: "DUMP_CONF_BIT", value: 3)
!277 = !DIEnumerator(name: "DONT_RELEASE_VRRP_BIT", value: 4)
!278 = !DIEnumerator(name: "RELEASE_VIPS_BIT", value: 5)
!279 = !DIEnumerator(name: "DONT_RELEASE_IPVS_BIT", value: 6)
!280 = !DIEnumerator(name: "LOG_DETAIL_BIT", value: 7)
!281 = !DIEnumerator(name: "LOG_EXTRA_DETAIL_BIT", value: 8)
!282 = !DIEnumerator(name: "DONT_RESPAWN_BIT", value: 9)
!283 = !DIEnumerator(name: "LOG_ADDRESS_CHANGES", value: 10)
!284 = !DIEnumerator(name: "CONFIG_TEST_BIT", value: 11)
!285 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !286, line: 25, size: 32, align: 32, elements: !287)
!286 = !DIFile(filename: "/usr/include/linux/if_addr.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!287 = !{!288, !289, !290, !291, !292, !293, !294, !295, !296, !297}
!288 = !DIEnumerator(name: "IFA_UNSPEC", value: 0)
!289 = !DIEnumerator(name: "IFA_ADDRESS", value: 1)
!290 = !DIEnumerator(name: "IFA_LOCAL", value: 2)
!291 = !DIEnumerator(name: "IFA_LABEL", value: 3)
!292 = !DIEnumerator(name: "IFA_BROADCAST", value: 4)
!293 = !DIEnumerator(name: "IFA_ANYCAST", value: 5)
!294 = !DIEnumerator(name: "IFA_CACHEINFO", value: 6)
!295 = !DIEnumerator(name: "IFA_MULTICAST", value: 7)
!296 = !DIEnumerator(name: "IFA_FLAGS", value: 8)
!297 = !DIEnumerator(name: "__IFA_MAX", value: 9)
!298 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rt_scope_t", file: !25, line: 258, size: 32, align: 32, elements: !299)
!299 = !{!300, !301, !302, !303, !304}
!300 = !DIEnumerator(name: "RT_SCOPE_UNIVERSE", value: 0)
!301 = !DIEnumerator(name: "RT_SCOPE_SITE", value: 200)
!302 = !DIEnumerator(name: "RT_SCOPE_LINK", value: 253)
!303 = !DIEnumerator(name: "RT_SCOPE_HOST", value: 254)
!304 = !DIEnumerator(name: "RT_SCOPE_NOWHERE", value: 255)
!305 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vrrp_vmac_bits", file: !306, line: 40, size: 32, align: 32, elements: !307)
!306 = !DIFile(filename: "./../include/vrrp_vmac.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!307 = !{!308, !309, !310}
!308 = !DIEnumerator(name: "VRRP_VMAC_BIT", value: 0)
!309 = !DIEnumerator(name: "VRRP_VMAC_UP_BIT", value: 1)
!310 = !DIEnumerator(name: "VRRP_VMAC_XMITBASE_BIT", value: 2)
!311 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rtattr_type_t", file: !25, line: 290, size: 32, align: 32, elements: !312)
!312 = !{!313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336}
!313 = !DIEnumerator(name: "RTA_UNSPEC", value: 0)
!314 = !DIEnumerator(name: "RTA_DST", value: 1)
!315 = !DIEnumerator(name: "RTA_SRC", value: 2)
!316 = !DIEnumerator(name: "RTA_IIF", value: 3)
!317 = !DIEnumerator(name: "RTA_OIF", value: 4)
!318 = !DIEnumerator(name: "RTA_GATEWAY", value: 5)
!319 = !DIEnumerator(name: "RTA_PRIORITY", value: 6)
!320 = !DIEnumerator(name: "RTA_PREFSRC", value: 7)
!321 = !DIEnumerator(name: "RTA_METRICS", value: 8)
!322 = !DIEnumerator(name: "RTA_MULTIPATH", value: 9)
!323 = !DIEnumerator(name: "RTA_PROTOINFO", value: 10)
!324 = !DIEnumerator(name: "RTA_FLOW", value: 11)
!325 = !DIEnumerator(name: "RTA_CACHEINFO", value: 12)
!326 = !DIEnumerator(name: "RTA_SESSION", value: 13)
!327 = !DIEnumerator(name: "RTA_MP_ALGO", value: 14)
!328 = !DIEnumerator(name: "RTA_TABLE", value: 15)
!329 = !DIEnumerator(name: "RTA_MARK", value: 16)
!330 = !DIEnumerator(name: "RTA_MFC_STATS", value: 17)
!331 = !DIEnumerator(name: "RTA_VIA", value: 18)
!332 = !DIEnumerator(name: "RTA_NEWDST", value: 19)
!333 = !DIEnumerator(name: "RTA_PREF", value: 20)
!334 = !DIEnumerator(name: "RTA_ENCAP_TYPE", value: 21)
!335 = !DIEnumerator(name: "RTA_ENCAP", value: 22)
!336 = !DIEnumerator(name: "__RTA_MAX", value: 23)
!337 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !338, line: 32, size: 32, align: 32, elements: !339)
!338 = !DIFile(filename: "/usr/include/linux/fib_rules.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!339 = !{!340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358}
!340 = !DIEnumerator(name: "FRA_UNSPEC", value: 0)
!341 = !DIEnumerator(name: "FRA_DST", value: 1)
!342 = !DIEnumerator(name: "FRA_SRC", value: 2)
!343 = !DIEnumerator(name: "FRA_IIFNAME", value: 3)
!344 = !DIEnumerator(name: "FRA_GOTO", value: 4)
!345 = !DIEnumerator(name: "FRA_UNUSED2", value: 5)
!346 = !DIEnumerator(name: "FRA_PRIORITY", value: 6)
!347 = !DIEnumerator(name: "FRA_UNUSED3", value: 7)
!348 = !DIEnumerator(name: "FRA_UNUSED4", value: 8)
!349 = !DIEnumerator(name: "FRA_UNUSED5", value: 9)
!350 = !DIEnumerator(name: "FRA_FWMARK", value: 10)
!351 = !DIEnumerator(name: "FRA_FLOW", value: 11)
!352 = !DIEnumerator(name: "FRA_TUN_ID", value: 12)
!353 = !DIEnumerator(name: "FRA_SUPPRESS_IFGROUP", value: 13)
!354 = !DIEnumerator(name: "FRA_SUPPRESS_PREFIXLEN", value: 14)
!355 = !DIEnumerator(name: "FRA_TABLE", value: 15)
!356 = !DIEnumerator(name: "FRA_FWMASK", value: 16)
!357 = !DIEnumerator(name: "FRA_OIFNAME", value: 17)
!358 = !DIEnumerator(name: "__FRA_MAX", value: 18)
!359 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !338, line: 57, size: 32, align: 32, elements: !360)
!360 = !{!361, !362, !363, !364, !365, !366, !367, !368, !369, !370}
!361 = !DIEnumerator(name: "FR_ACT_UNSPEC", value: 0)
!362 = !DIEnumerator(name: "FR_ACT_TO_TBL", value: 1)
!363 = !DIEnumerator(name: "FR_ACT_GOTO", value: 2)
!364 = !DIEnumerator(name: "FR_ACT_NOP", value: 3)
!365 = !DIEnumerator(name: "FR_ACT_RES3", value: 4)
!366 = !DIEnumerator(name: "FR_ACT_RES4", value: 5)
!367 = !DIEnumerator(name: "FR_ACT_BLACKHOLE", value: 6)
!368 = !DIEnumerator(name: "FR_ACT_UNREACHABLE", value: 7)
!369 = !DIEnumerator(name: "FR_ACT_PROHIBIT", value: 8)
!370 = !DIEnumerator(name: "__FR_ACT_MAX", value: 9)
!371 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "iprule_param_mask", file: !372, line: 44, size: 32, align: 32, elements: !373)
!372 = !DIFile(filename: "./../include/vrrp_iprule.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!373 = !{!374, !375, !376, !377, !378}
!374 = !DIEnumerator(name: "IPRULE_BIT_PRIORITY", value: 1)
!375 = !DIEnumerator(name: "IPRULE_BIT_FWMARK", value: 2)
!376 = !DIEnumerator(name: "IPRULE_BIT_FWMASK", value: 4)
!377 = !DIEnumerator(name: "IPRULE_BIT_SUP_GROUP", value: 8)
!378 = !DIEnumerator(name: "IPRULE_BIT_UID_RANGE", value: 16)
!379 = !{!380, !386, !384, !388, !389, !392, !404, !407, !408, !413, !423, !424, !425, !447, !452, !455}
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64, align: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtattr", file: !25, line: 156, size: 32, align: 16, elements: !382)
!382 = !{!383, !385}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "rta_len", scope: !381, file: !25, line: 157, baseType: !384, size: 16, align: 16)
!384 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "rta_type", scope: !381, file: !25, line: 158, baseType: !384, size: 16, align: 16, offset: 16)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64, align: 64)
!387 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !390, line: 51, baseType: !391)
!390 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!391 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64, align: 64)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nlmsghdr", file: !394, line: 42, size: 128, align: 32, elements: !395)
!394 = !DIFile(filename: "/usr/include/linux/netlink.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!395 = !{!396, !399, !401, !402, !403}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "nlmsg_len", scope: !393, file: !394, line: 43, baseType: !397, size: 32, align: 32)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !398, line: 26, baseType: !391)
!398 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!399 = !DIDerivedType(tag: DW_TAG_member, name: "nlmsg_type", scope: !393, file: !394, line: 44, baseType: !400, size: 16, align: 16, offset: 32)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !398, line: 23, baseType: !384)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "nlmsg_flags", scope: !393, file: !394, line: 45, baseType: !400, size: 16, align: 16, offset: 48)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "nlmsg_seq", scope: !393, file: !394, line: 46, baseType: !397, size: 32, align: 32, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "nlmsg_pid", scope: !393, file: !394, line: 47, baseType: !397, size: 32, align: 32, offset: 96)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !405, line: 216, baseType: !406)
!405 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!406 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!407 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64, align: 64)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nlmsgerr", file: !394, line: 100, size: 160, align: 32, elements: !410)
!410 = !{!411, !412}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !409, file: !394, line: 101, baseType: !407, size: 32, align: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !409, file: !394, line: 102, baseType: !393, size: 128, align: 32, offset: 32)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64, align: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !166, line: 153, size: 128, align: 16, elements: !415)
!415 = !{!416, !419}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !414, file: !166, line: 155, baseType: !417, size: 16, align: 16)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !418, line: 28, baseType: !384)
!418 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!419 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !414, file: !166, line: 156, baseType: !420, size: 112, align: 8, offset: 16)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 112, align: 8, elements: !421)
!421 = !{!422}
!422 = !DISubrange(count: 14)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "ifindex_t", file: !233, line: 62, baseType: !389)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64, align: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64, align: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !427, line: 211, size: 128, align: 32, elements: !428)
!427 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!428 = !{!429}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !426, file: !427, line: 220, baseType: !430, size: 128, align: 32)
!430 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !426, file: !427, line: 213, size: 128, align: 32, elements: !431)
!431 = !{!432, !438, !443}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !430, file: !427, line: 215, baseType: !433, size: 128, align: 8)
!433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 128, align: 8, elements: !436)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !390, line: 48, baseType: !435)
!435 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!436 = !{!437}
!437 = !DISubrange(count: 16)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !430, file: !427, line: 217, baseType: !439, size: 128, align: 16)
!439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 128, align: 16, elements: !441)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !390, line: 49, baseType: !384)
!441 = !{!442}
!442 = !DISubrange(count: 8)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !430, file: !427, line: 218, baseType: !444, size: 128, align: 32)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, size: 128, align: 32, elements: !445)
!445 = !{!446}
!446 = !DISubrange(count: 4)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64, align: 64)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !427, line: 31, size: 32, align: 32, elements: !449)
!449 = !{!450}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !448, file: !427, line: 33, baseType: !451, size: 32, align: 32)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !427, line: 30, baseType: !389)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64, align: 64)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !454, line: 196, baseType: !407)
!454 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64, align: 64)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !390, line: 55, baseType: !406)
!457 = !{!458, !645, !646, !647, !648}
!458 = distinct !DIGlobalVariable(name: "nl_cmd", scope: !0, file: !459, line: 94, type: !460, isLocal: false, isDefinition: true, variable: %struct._nl_handle* @nl_cmd)
!459 = !DIFile(filename: "keepalived_netlink.c", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "nl_handle_t", file: !461, line: 50, baseType: !462)
!461 = !DIFile(filename: "./../include/keepalived_netlink.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_nl_handle", file: !461, line: 42, size: 256, align: 64, elements: !463)
!463 = !{!464, !468, !469, !470, !471}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "sk", scope: !462, file: !461, line: 44, baseType: !465, size: 64, align: 64)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64, align: 64)
!466 = !DICompositeType(tag: DW_TAG_structure_type, name: "nl_sock", file: !467, line: 26, flags: DIFlagFwdDecl)
!467 = !DIFile(filename: "/usr/include/libnl3/netlink/handlers.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!468 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !462, file: !461, line: 46, baseType: !407, size: 32, align: 32, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "nl_pid", scope: !462, file: !461, line: 47, baseType: !389, size: 32, align: 32, offset: 96)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !462, file: !461, line: 48, baseType: !397, size: 32, align: 32, offset: 128)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !462, file: !461, line: 49, baseType: !472, size: 64, align: 64, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64, align: 64)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_t", file: !4, line: 99, baseType: !474)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread", file: !4, line: 78, size: 768, align: 64, elements: !475)
!475 = !{!476, !477, !479, !610, !615, !616, !626, !638, !640}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !474, file: !4, line: 79, baseType: !406, size: 64, align: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !474, file: !4, line: 80, baseType: !478, size: 32, align: 32, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_type_t", file: !4, line: 63, baseType: !3)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !474, file: !4, line: 81, baseType: !480, size: 64, align: 64, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64, align: 64)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_master", file: !4, line: 112, size: 1280, align: 64, elements: !482)
!482 = !{!483, !495, !496, !497, !498, !506, !507, !508, !586, !587, !590, !601, !602, !603, !604, !605, !606, !607, !608}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !481, file: !4, line: 113, baseType: !484, size: 64, align: 64)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_root_t", file: !485, line: 109, baseType: !486)
!485 = !DIFile(filename: "../../lib/rbtree.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !485, line: 106, size: 64, align: 64, elements: !487)
!487 = !{!488}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !486, file: !485, line: 108, baseType: !489, size: 64, align: 64)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64, align: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !485, line: 97, size: 192, align: 64, elements: !491)
!491 = !{!492, !493, !494}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "rb_parent_color", scope: !490, file: !485, line: 99, baseType: !406, size: 64, align: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !490, file: !485, line: 102, baseType: !489, size: 64, align: 64, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !490, file: !485, line: 103, baseType: !489, size: 64, align: 64, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !481, file: !4, line: 114, baseType: !484, size: 64, align: 64, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !481, file: !4, line: 115, baseType: !484, size: 64, align: 64, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !481, file: !4, line: 116, baseType: !484, size: 64, align: 64, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !481, file: !4, line: 117, baseType: !499, size: 128, align: 64, offset: 256)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "list_head_t", file: !500, line: 62, baseType: !501)
!500 = !DIFile(filename: "../../lib/list_head.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !500, line: 60, size: 128, align: 64, elements: !502)
!502 = !{!503, !505}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !501, file: !500, line: 61, baseType: !504, size: 64, align: 64)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64, align: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !501, file: !500, line: 61, baseType: !504, size: 64, align: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !481, file: !4, line: 121, baseType: !499, size: 128, align: 64, offset: 384)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "unuse", scope: !481, file: !4, line: 122, baseType: !499, size: 128, align: 64, offset: 512)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "child_pid_index", scope: !481, file: !4, line: 124, baseType: !509, size: 64, align: 64, offset: 640)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !510, line: 31, baseType: !511)
!510 = !DIFile(filename: "../../lib/list.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64, align: 64)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_list", file: !510, line: 39, size: 320, align: 64, elements: !513)
!513 = !{!514, !521, !522, !523, !527}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !512, file: !510, line: 40, baseType: !515, size: 64, align: 64)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64, align: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !510, line: 33, size: 192, align: 64, elements: !517)
!517 = !{!518, !519, !520}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !516, file: !510, line: 34, baseType: !515, size: 64, align: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !516, file: !510, line: 35, baseType: !515, size: 64, align: 64, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !516, file: !510, line: 36, baseType: !388, size: 64, align: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !512, file: !510, line: 41, baseType: !515, size: 64, align: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !512, file: !510, line: 42, baseType: !391, size: 32, align: 32, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !512, file: !510, line: 43, baseType: !524, size: 64, align: 64, offset: 192)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64, align: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{null, !388}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !512, file: !510, line: 44, baseType: !528, size: 64, align: 64, offset: 256)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64, align: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{null, !531, !388}
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64, align: 64)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !533, line: 48, baseType: !534)
!533 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !535, line: 241, size: 1728, align: 64, elements: !536)
!535 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!536 = !{!537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !557, !558, !559, !560, !564, !565, !567, !571, !574, !576, !577, !578, !579, !580, !581, !582}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !534, file: !535, line: 242, baseType: !407, size: 32, align: 32)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !534, file: !535, line: 247, baseType: !386, size: 64, align: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !534, file: !535, line: 248, baseType: !386, size: 64, align: 64, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !534, file: !535, line: 249, baseType: !386, size: 64, align: 64, offset: 192)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !534, file: !535, line: 250, baseType: !386, size: 64, align: 64, offset: 256)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !534, file: !535, line: 251, baseType: !386, size: 64, align: 64, offset: 320)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !534, file: !535, line: 252, baseType: !386, size: 64, align: 64, offset: 384)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !534, file: !535, line: 253, baseType: !386, size: 64, align: 64, offset: 448)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !534, file: !535, line: 254, baseType: !386, size: 64, align: 64, offset: 512)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !534, file: !535, line: 256, baseType: !386, size: 64, align: 64, offset: 576)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !534, file: !535, line: 257, baseType: !386, size: 64, align: 64, offset: 640)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !534, file: !535, line: 258, baseType: !386, size: 64, align: 64, offset: 704)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !534, file: !535, line: 260, baseType: !550, size: 64, align: 64, offset: 768)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64, align: 64)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !535, line: 156, size: 192, align: 64, elements: !552)
!552 = !{!553, !554, !556}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !551, file: !535, line: 157, baseType: !550, size: 64, align: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !551, file: !535, line: 158, baseType: !555, size: 64, align: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64, align: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !551, file: !535, line: 162, baseType: !407, size: 32, align: 32, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !534, file: !535, line: 262, baseType: !555, size: 64, align: 64, offset: 832)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !534, file: !535, line: 264, baseType: !407, size: 32, align: 32, offset: 896)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !534, file: !535, line: 268, baseType: !407, size: 32, align: 32, offset: 928)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !534, file: !535, line: 270, baseType: !561, size: 64, align: 64, offset: 960)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !562, line: 131, baseType: !563)
!562 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!563 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !534, file: !535, line: 274, baseType: !384, size: 16, align: 16, offset: 1024)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !534, file: !535, line: 275, baseType: !566, size: 8, align: 8, offset: 1040)
!566 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !534, file: !535, line: 276, baseType: !568, size: 8, align: 8, offset: 1048)
!568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 8, align: 8, elements: !569)
!569 = !{!570}
!570 = !DISubrange(count: 1)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !534, file: !535, line: 280, baseType: !572, size: 64, align: 64, offset: 1088)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64, align: 64)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !535, line: 150, baseType: null)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !534, file: !535, line: 289, baseType: !575, size: 64, align: 64, offset: 1152)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !562, line: 132, baseType: !563)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !534, file: !535, line: 297, baseType: !388, size: 64, align: 64, offset: 1216)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !534, file: !535, line: 298, baseType: !388, size: 64, align: 64, offset: 1280)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !534, file: !535, line: 299, baseType: !388, size: 64, align: 64, offset: 1344)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !534, file: !535, line: 300, baseType: !388, size: 64, align: 64, offset: 1408)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !534, file: !535, line: 302, baseType: !404, size: 64, align: 64, offset: 1472)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !534, file: !535, line: 303, baseType: !407, size: 32, align: 32, offset: 1536)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !534, file: !535, line: 305, baseType: !583, size: 160, align: 8, offset: 1568)
!583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 160, align: 8, elements: !584)
!584 = !{!585}
!585 = !DISubrange(count: 20)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "io_events", scope: !481, file: !4, line: 127, baseType: !484, size: 64, align: 64, offset: 704)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_events", scope: !481, file: !4, line: 128, baseType: !588, size: 64, align: 64, offset: 768)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64, align: 64)
!589 = !DICompositeType(tag: DW_TAG_structure_type, name: "epoll_event", file: !4, line: 128, flags: DIFlagFwdDecl)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "current_event", scope: !481, file: !4, line: 129, baseType: !591, size: 64, align: 64, offset: 832)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64, align: 64)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_event_t", file: !4, line: 109, baseType: !593)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_event", file: !4, line: 102, size: 448, align: 64, elements: !594)
!594 = !{!595, !596, !597, !598, !599}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !593, file: !4, line: 103, baseType: !472, size: 64, align: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !593, file: !4, line: 104, baseType: !472, size: 64, align: 64, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !593, file: !4, line: 105, baseType: !406, size: 64, align: 64, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !593, file: !4, line: 106, baseType: !407, size: 32, align: 32, offset: 192)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !593, file: !4, line: 108, baseType: !600, size: 192, align: 64, offset: 256)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_node_t", file: !485, line: 104, baseType: !490)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_size", scope: !481, file: !4, line: 130, baseType: !391, size: 32, align: 32, offset: 896)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_count", scope: !481, file: !4, line: 131, baseType: !391, size: 32, align: 32, offset: 928)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_fd", scope: !481, file: !4, line: 132, baseType: !407, size: 32, align: 32, offset: 960)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "timer_fd", scope: !481, file: !4, line: 135, baseType: !407, size: 32, align: 32, offset: 992)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "timer_thread", scope: !481, file: !4, line: 136, baseType: !472, size: 64, align: 64, offset: 1024)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !481, file: !4, line: 146, baseType: !406, size: 64, align: 64, offset: 1088)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !481, file: !4, line: 147, baseType: !406, size: 64, align: 64, offset: 1152)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_timer_running", scope: !481, file: !4, line: 148, baseType: !609, size: 8, align: 8, offset: 1216)
!609 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !474, file: !4, line: 82, baseType: !611, size: 64, align: 64, offset: 192)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64, align: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!407, !614}
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64, align: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !474, file: !4, line: 83, baseType: !388, size: 64, align: 64, offset: 256)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "sands", scope: !474, file: !4, line: 84, baseType: !617, size: 128, align: 64, offset: 320)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "timeval_t", file: !618, line: 31, baseType: !619)
!618 = !DIFile(filename: "../../lib/timer.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !620, line: 30, size: 128, align: 64, elements: !621)
!620 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!621 = !{!622, !624}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !619, file: !620, line: 32, baseType: !623, size: 64, align: 64)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !562, line: 139, baseType: !563)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !619, file: !620, line: 33, baseType: !625, size: 64, align: 64, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !562, line: 141, baseType: !563)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !474, file: !4, line: 92, baseType: !627, size: 64, align: 32, offset: 448)
!627 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !474, file: !4, line: 85, size: 64, align: 32, elements: !628)
!628 = !{!629, !630, !631}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !627, file: !4, line: 86, baseType: !407, size: 32, align: 32)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !627, file: !4, line: 87, baseType: !407, size: 32, align: 32)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !627, file: !4, line: 91, baseType: !632, size: 64, align: 32)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !627, file: !4, line: 88, size: 64, align: 32, elements: !633)
!633 = !{!634, !637}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !632, file: !4, line: 89, baseType: !635, size: 32, align: 32)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !454, line: 98, baseType: !636)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !562, line: 133, baseType: !407)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !632, file: !4, line: 90, baseType: !407, size: 32, align: 32, offset: 32)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !474, file: !4, line: 93, baseType: !639, size: 64, align: 64, offset: 512)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64, align: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, scope: !474, file: !4, line: 95, baseType: !641, size: 192, align: 64, offset: 576)
!641 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !474, file: !4, line: 95, size: 192, align: 64, elements: !642)
!642 = !{!643, !644}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !641, file: !4, line: 96, baseType: !600, size: 192, align: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !641, file: !4, line: 97, baseType: !499, size: 128, align: 64)
!645 = distinct !DIGlobalVariable(name: "garp_delay", scope: !0, file: !233, line: 150, type: !509, isLocal: false, isDefinition: true, variable: %struct._list** @garp_delay)
!646 = distinct !DIGlobalVariable(name: "netlink_error_ignore", scope: !0, file: !459, line: 96, type: !407, isLocal: false, isDefinition: true, variable: i32* @netlink_error_ignore)
!647 = distinct !DIGlobalVariable(name: "nlmsg_buf_size", scope: !0, file: !459, line: 101, type: !407, isLocal: true, isDefinition: true, variable: i32* @nlmsg_buf_size)
!648 = distinct !DIGlobalVariable(name: "nl_kernel", scope: !0, file: !459, line: 100, type: !460, isLocal: true, isDefinition: true, variable: %struct._nl_handle* @nl_kernel)
!649 = !{i32 2, !"Dwarf Version", i32 4}
!650 = !{i32 2, !"Debug Info Version", i32 3}
!651 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!652 = distinct !DISubprogram(name: "netlink_set_recv_buf_size", scope: !459, file: !459, line: 451, type: !653, isLocal: false, isDefinition: true, scopeLine: 452, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!653 = !DISubroutineType(types: !654)
!654 = !{null}
!655 = !{}
!656 = !DILocation(line: 461, column: 19, scope: !652)
!657 = !DILocation(line: 461, column: 17, scope: !652)
!658 = !DILocation(line: 462, column: 6, scope: !659)
!659 = distinct !DILexicalBlock(scope: !652, file: !459, line: 462, column: 6)
!660 = !DILocation(line: 462, column: 21, scope: !659)
!661 = !DILocation(line: 462, column: 6, scope: !652)
!662 = !DILocation(line: 463, column: 18, scope: !659)
!663 = !DILocation(line: 463, column: 3, scope: !659)
!664 = !DILocation(line: 464, column: 1, scope: !652)
!665 = distinct !DISubprogram(name: "set_extra_netlink_monitoring", scope: !459, file: !459, line: 539, type: !666, isLocal: false, isDefinition: true, scopeLine: 540, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!666 = !DISubroutineType(types: !667)
!667 = !{null, !609, !609, !609, !609}
!668 = !DILocalVariable(name: "ipv4_routes", arg: 1, scope: !665, file: !459, line: 539, type: !609)
!669 = !DIExpression()
!670 = !DILocation(line: 539, column: 34, scope: !665)
!671 = !DILocalVariable(name: "ipv6_routes", arg: 2, scope: !665, file: !459, line: 539, type: !609)
!672 = !DILocation(line: 539, column: 52, scope: !665)
!673 = !DILocalVariable(name: "ipv4_rules", arg: 3, scope: !665, file: !459, line: 539, type: !609)
!674 = !DILocation(line: 539, column: 70, scope: !665)
!675 = !DILocalVariable(name: "ipv6_rules", arg: 4, scope: !665, file: !459, line: 539, type: !609)
!676 = !DILocation(line: 539, column: 87, scope: !665)
!677 = !DILocation(line: 541, column: 51, scope: !665)
!678 = !DILocation(line: 541, column: 2, scope: !665)
!679 = !DILocation(line: 542, column: 51, scope: !665)
!680 = !DILocation(line: 542, column: 2, scope: !665)
!681 = !DILocation(line: 543, column: 50, scope: !665)
!682 = !DILocation(line: 543, column: 2, scope: !665)
!683 = !DILocation(line: 544, column: 50, scope: !665)
!684 = !DILocation(line: 544, column: 2, scope: !665)
!685 = !DILocation(line: 545, column: 1, scope: !665)
!686 = distinct !DISubprogram(name: "kernel_netlink_set_membership", scope: !459, file: !459, line: 505, type: !687, isLocal: true, isDefinition: true, scopeLine: 506, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!687 = !DISubroutineType(types: !688)
!688 = !{null, !407, !609}
!689 = !DILocalVariable(name: "group", arg: 1, scope: !686, file: !459, line: 505, type: !407)
!690 = !DILocation(line: 505, column: 35, scope: !686)
!691 = !DILocalVariable(name: "add", arg: 2, scope: !686, file: !459, line: 505, type: !609)
!692 = !DILocation(line: 505, column: 46, scope: !686)
!693 = !DILocalVariable(name: "ret", scope: !694, file: !459, line: 512, type: !407)
!694 = distinct !DILexicalBlock(scope: !686, file: !459, line: 511, column: 2)
!695 = !DILocation(line: 512, column: 7, scope: !694)
!696 = !DILocation(line: 514, column: 7, scope: !697)
!697 = distinct !DILexicalBlock(scope: !694, file: !459, line: 514, column: 7)
!698 = !DILocation(line: 514, column: 7, scope: !694)
!699 = !DILocation(line: 515, column: 45, scope: !697)
!700 = !DILocation(line: 515, column: 49, scope: !697)
!701 = !DILocation(line: 515, column: 10, scope: !697)
!702 = !DILocation(line: 515, column: 8, scope: !697)
!703 = !DILocation(line: 515, column: 4, scope: !697)
!704 = !DILocation(line: 517, column: 46, scope: !697)
!705 = !DILocation(line: 517, column: 50, scope: !697)
!706 = !DILocation(line: 517, column: 10, scope: !697)
!707 = !DILocation(line: 517, column: 8, scope: !697)
!708 = !DILocation(line: 518, column: 7, scope: !709)
!709 = distinct !DILexicalBlock(scope: !694, file: !459, line: 518, column: 7)
!710 = !DILocation(line: 518, column: 7, scope: !694)
!711 = !DILocation(line: 519, column: 78, scope: !712)
!712 = distinct !DILexicalBlock(scope: !709, file: !459, line: 518, column: 12)
!713 = !DILocation(line: 519, column: 85, scope: !712)
!714 = !DILocation(line: 519, column: 4, scope: !712)
!715 = !DILocation(line: 520, column: 4, scope: !712)
!716 = !DILocation(line: 536, column: 1, scope: !686)
!717 = distinct !DISubprogram(name: "addattr_l", scope: !459, file: !459, line: 770, type: !718, isLocal: false, isDefinition: true, scopeLine: 771, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!718 = !DISubroutineType(types: !719)
!719 = !{!407, !392, !404, !384, !388, !404}
!720 = !DILocalVariable(name: "n", arg: 1, scope: !717, file: !459, line: 770, type: !392)
!721 = !DILocation(line: 770, column: 28, scope: !717)
!722 = !DILocalVariable(name: "maxlen", arg: 2, scope: !717, file: !459, line: 770, type: !404)
!723 = !DILocation(line: 770, column: 38, scope: !717)
!724 = !DILocalVariable(name: "type", arg: 3, scope: !717, file: !459, line: 770, type: !384)
!725 = !DILocation(line: 770, column: 61, scope: !717)
!726 = !DILocalVariable(name: "data", arg: 4, scope: !717, file: !459, line: 770, type: !388)
!727 = !DILocation(line: 770, column: 73, scope: !717)
!728 = !DILocalVariable(name: "alen", arg: 5, scope: !717, file: !459, line: 770, type: !404)
!729 = !DILocation(line: 770, column: 86, scope: !717)
!730 = !DILocalVariable(name: "len", scope: !717, file: !459, line: 772, type: !404)
!731 = !DILocation(line: 772, column: 9, scope: !717)
!732 = !DILocation(line: 772, column: 14, scope: !717)
!733 = !DILocation(line: 772, column: 62, scope: !717)
!734 = !DILocalVariable(name: "align_len", scope: !717, file: !459, line: 773, type: !404)
!735 = !DILocation(line: 773, column: 9, scope: !717)
!736 = !DILocation(line: 773, column: 20, scope: !717)
!737 = !DILocation(line: 773, column: 21, scope: !717)
!738 = !DILocation(line: 773, column: 25, scope: !717)
!739 = !DILocation(line: 773, column: 29, scope: !717)
!740 = !DILocalVariable(name: "rta", scope: !717, file: !459, line: 774, type: !380)
!741 = !DILocation(line: 774, column: 17, scope: !717)
!742 = !DILocation(line: 776, column: 6, scope: !743)
!743 = distinct !DILexicalBlock(scope: !717, file: !459, line: 776, column: 6)
!744 = !DILocation(line: 776, column: 9, scope: !743)
!745 = !DILocation(line: 776, column: 21, scope: !743)
!746 = !DILocation(line: 776, column: 19, scope: !743)
!747 = !DILocation(line: 776, column: 33, scope: !743)
!748 = !DILocation(line: 776, column: 31, scope: !743)
!749 = !DILocation(line: 776, column: 6, scope: !717)
!750 = !DILocation(line: 777, column: 3, scope: !743)
!751 = !DILocation(line: 779, column: 37, scope: !717)
!752 = !DILocation(line: 779, column: 28, scope: !717)
!753 = !DILocation(line: 779, column: 42, scope: !717)
!754 = !DILocation(line: 779, column: 45, scope: !717)
!755 = !DILocation(line: 779, column: 40, scope: !717)
!756 = !DILocation(line: 779, column: 8, scope: !717)
!757 = !DILocation(line: 779, column: 6, scope: !717)
!758 = !DILocation(line: 780, column: 18, scope: !717)
!759 = !DILocation(line: 780, column: 2, scope: !717)
!760 = !DILocation(line: 780, column: 7, scope: !717)
!761 = !DILocation(line: 780, column: 16, scope: !717)
!762 = !DILocation(line: 781, column: 33, scope: !717)
!763 = !DILocation(line: 781, column: 17, scope: !717)
!764 = !DILocation(line: 781, column: 2, scope: !717)
!765 = !DILocation(line: 781, column: 7, scope: !717)
!766 = !DILocation(line: 781, column: 15, scope: !717)
!767 = !DILocation(line: 782, column: 8, scope: !717)
!768 = !DILocation(line: 782, column: 18, scope: !717)
!769 = !DILocation(line: 782, column: 11, scope: !717)
!770 = !DILocation(line: 782, column: 23, scope: !717)
!771 = !DILocation(line: 782, column: 29, scope: !717)
!772 = !DILocation(line: 782, column: 2, scope: !717)
!773 = !DILocation(line: 783, column: 28, scope: !717)
!774 = !DILocation(line: 783, column: 18, scope: !717)
!775 = !DILocation(line: 783, column: 2, scope: !717)
!776 = !DILocation(line: 783, column: 5, scope: !717)
!777 = !DILocation(line: 783, column: 15, scope: !717)
!778 = !DILocation(line: 785, column: 2, scope: !717)
!779 = !DILocation(line: 786, column: 1, scope: !717)
!780 = distinct !DISubprogram(name: "addattr8", scope: !459, file: !459, line: 790, type: !781, isLocal: false, isDefinition: true, scopeLine: 791, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!781 = !DISubroutineType(types: !782)
!782 = !{!407, !392, !404, !384, !434}
!783 = !DILocalVariable(name: "n", arg: 1, scope: !780, file: !459, line: 790, type: !392)
!784 = !DILocation(line: 790, column: 27, scope: !780)
!785 = !DILocalVariable(name: "maxlen", arg: 2, scope: !780, file: !459, line: 790, type: !404)
!786 = !DILocation(line: 790, column: 37, scope: !780)
!787 = !DILocalVariable(name: "type", arg: 3, scope: !780, file: !459, line: 790, type: !384)
!788 = !DILocation(line: 790, column: 60, scope: !780)
!789 = !DILocalVariable(name: "data", arg: 4, scope: !780, file: !459, line: 790, type: !434)
!790 = !DILocation(line: 790, column: 74, scope: !780)
!791 = !DILocation(line: 792, column: 19, scope: !780)
!792 = !DILocation(line: 792, column: 22, scope: !780)
!793 = !DILocation(line: 792, column: 30, scope: !780)
!794 = !DILocation(line: 792, column: 9, scope: !780)
!795 = !DILocation(line: 792, column: 2, scope: !780)
!796 = distinct !DISubprogram(name: "addattr32", scope: !459, file: !459, line: 797, type: !797, isLocal: false, isDefinition: true, scopeLine: 798, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!797 = !DISubroutineType(types: !798)
!798 = !{!407, !392, !404, !384, !389}
!799 = !DILocalVariable(name: "n", arg: 1, scope: !796, file: !459, line: 797, type: !392)
!800 = !DILocation(line: 797, column: 28, scope: !796)
!801 = !DILocalVariable(name: "maxlen", arg: 2, scope: !796, file: !459, line: 797, type: !404)
!802 = !DILocation(line: 797, column: 38, scope: !796)
!803 = !DILocalVariable(name: "type", arg: 3, scope: !796, file: !459, line: 797, type: !384)
!804 = !DILocation(line: 797, column: 61, scope: !796)
!805 = !DILocalVariable(name: "data", arg: 4, scope: !796, file: !459, line: 797, type: !389)
!806 = !DILocation(line: 797, column: 76, scope: !796)
!807 = !DILocation(line: 799, column: 19, scope: !796)
!808 = !DILocation(line: 799, column: 22, scope: !796)
!809 = !DILocation(line: 799, column: 30, scope: !796)
!810 = !DILocation(line: 799, column: 36, scope: !796)
!811 = !DILocation(line: 799, column: 9, scope: !796)
!812 = !DILocation(line: 799, column: 2, scope: !796)
!813 = distinct !DISubprogram(name: "addattr64", scope: !459, file: !459, line: 804, type: !814, isLocal: false, isDefinition: true, scopeLine: 805, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!814 = !DISubroutineType(types: !815)
!815 = !{!407, !392, !404, !384, !456}
!816 = !DILocalVariable(name: "n", arg: 1, scope: !813, file: !459, line: 804, type: !392)
!817 = !DILocation(line: 804, column: 28, scope: !813)
!818 = !DILocalVariable(name: "maxlen", arg: 2, scope: !813, file: !459, line: 804, type: !404)
!819 = !DILocation(line: 804, column: 38, scope: !813)
!820 = !DILocalVariable(name: "type", arg: 3, scope: !813, file: !459, line: 804, type: !384)
!821 = !DILocation(line: 804, column: 61, scope: !813)
!822 = !DILocalVariable(name: "data", arg: 4, scope: !813, file: !459, line: 804, type: !456)
!823 = !DILocation(line: 804, column: 76, scope: !813)
!824 = !DILocation(line: 806, column: 19, scope: !813)
!825 = !DILocation(line: 806, column: 22, scope: !813)
!826 = !DILocation(line: 806, column: 30, scope: !813)
!827 = !DILocation(line: 806, column: 36, scope: !813)
!828 = !DILocation(line: 806, column: 9, scope: !813)
!829 = !DILocation(line: 806, column: 2, scope: !813)
!830 = distinct !DISubprogram(name: "addattr_l2", scope: !459, file: !459, line: 810, type: !831, isLocal: false, isDefinition: true, scopeLine: 811, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!831 = !DISubroutineType(types: !832)
!832 = !{!407, !392, !404, !384, !388, !404, !388, !404}
!833 = !DILocalVariable(name: "n", arg: 1, scope: !830, file: !459, line: 810, type: !392)
!834 = !DILocation(line: 810, column: 29, scope: !830)
!835 = !DILocalVariable(name: "maxlen", arg: 2, scope: !830, file: !459, line: 810, type: !404)
!836 = !DILocation(line: 810, column: 39, scope: !830)
!837 = !DILocalVariable(name: "type", arg: 3, scope: !830, file: !459, line: 810, type: !384)
!838 = !DILocation(line: 810, column: 62, scope: !830)
!839 = !DILocalVariable(name: "data", arg: 4, scope: !830, file: !459, line: 810, type: !388)
!840 = !DILocation(line: 810, column: 74, scope: !830)
!841 = !DILocalVariable(name: "alen", arg: 5, scope: !830, file: !459, line: 810, type: !404)
!842 = !DILocation(line: 810, column: 87, scope: !830)
!843 = !DILocalVariable(name: "data2", arg: 6, scope: !830, file: !459, line: 810, type: !388)
!844 = !DILocation(line: 810, column: 99, scope: !830)
!845 = !DILocalVariable(name: "alen2", arg: 7, scope: !830, file: !459, line: 810, type: !404)
!846 = !DILocation(line: 810, column: 113, scope: !830)
!847 = !DILocalVariable(name: "len", scope: !830, file: !459, line: 812, type: !404)
!848 = !DILocation(line: 812, column: 9, scope: !830)
!849 = !DILocation(line: 812, column: 14, scope: !830)
!850 = !DILocation(line: 812, column: 21, scope: !830)
!851 = !DILocation(line: 812, column: 19, scope: !830)
!852 = !DILocation(line: 812, column: 62, scope: !830)
!853 = !DILocalVariable(name: "align_len", scope: !830, file: !459, line: 813, type: !404)
!854 = !DILocation(line: 813, column: 9, scope: !830)
!855 = !DILocation(line: 813, column: 20, scope: !830)
!856 = !DILocation(line: 813, column: 21, scope: !830)
!857 = !DILocation(line: 813, column: 25, scope: !830)
!858 = !DILocation(line: 813, column: 29, scope: !830)
!859 = !DILocalVariable(name: "rta", scope: !830, file: !459, line: 814, type: !380)
!860 = !DILocation(line: 814, column: 17, scope: !830)
!861 = !DILocation(line: 816, column: 6, scope: !862)
!862 = distinct !DILexicalBlock(scope: !830, file: !459, line: 816, column: 6)
!863 = !DILocation(line: 816, column: 9, scope: !862)
!864 = !DILocation(line: 816, column: 21, scope: !862)
!865 = !DILocation(line: 816, column: 19, scope: !862)
!866 = !DILocation(line: 816, column: 33, scope: !862)
!867 = !DILocation(line: 816, column: 31, scope: !862)
!868 = !DILocation(line: 816, column: 6, scope: !830)
!869 = !DILocation(line: 817, column: 3, scope: !862)
!870 = !DILocation(line: 819, column: 37, scope: !830)
!871 = !DILocation(line: 819, column: 28, scope: !830)
!872 = !DILocation(line: 819, column: 42, scope: !830)
!873 = !DILocation(line: 819, column: 45, scope: !830)
!874 = !DILocation(line: 819, column: 40, scope: !830)
!875 = !DILocation(line: 819, column: 8, scope: !830)
!876 = !DILocation(line: 819, column: 6, scope: !830)
!877 = !DILocation(line: 820, column: 18, scope: !830)
!878 = !DILocation(line: 820, column: 2, scope: !830)
!879 = !DILocation(line: 820, column: 7, scope: !830)
!880 = !DILocation(line: 820, column: 16, scope: !830)
!881 = !DILocation(line: 821, column: 33, scope: !830)
!882 = !DILocation(line: 821, column: 17, scope: !830)
!883 = !DILocation(line: 821, column: 2, scope: !830)
!884 = !DILocation(line: 821, column: 7, scope: !830)
!885 = !DILocation(line: 821, column: 15, scope: !830)
!886 = !DILocation(line: 822, column: 8, scope: !830)
!887 = !DILocation(line: 822, column: 18, scope: !830)
!888 = !DILocation(line: 822, column: 11, scope: !830)
!889 = !DILocation(line: 822, column: 23, scope: !830)
!890 = !DILocation(line: 822, column: 29, scope: !830)
!891 = !DILocation(line: 822, column: 2, scope: !830)
!892 = !DILocation(line: 823, column: 8, scope: !830)
!893 = !DILocation(line: 823, column: 18, scope: !830)
!894 = !DILocation(line: 823, column: 11, scope: !830)
!895 = !DILocation(line: 823, column: 24, scope: !830)
!896 = !DILocation(line: 823, column: 22, scope: !830)
!897 = !DILocation(line: 823, column: 30, scope: !830)
!898 = !DILocation(line: 823, column: 37, scope: !830)
!899 = !DILocation(line: 823, column: 2, scope: !830)
!900 = !DILocation(line: 824, column: 28, scope: !830)
!901 = !DILocation(line: 824, column: 18, scope: !830)
!902 = !DILocation(line: 824, column: 2, scope: !830)
!903 = !DILocation(line: 824, column: 5, scope: !830)
!904 = !DILocation(line: 824, column: 15, scope: !830)
!905 = !DILocation(line: 826, column: 2, scope: !830)
!906 = !DILocation(line: 827, column: 1, scope: !830)
!907 = distinct !DISubprogram(name: "addraw_l", scope: !459, file: !459, line: 830, type: !908, isLocal: false, isDefinition: true, scopeLine: 831, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!908 = !DISubroutineType(types: !909)
!909 = !{!407, !392, !404, !910, !404}
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64, align: 64)
!911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!912 = !DILocalVariable(name: "n", arg: 1, scope: !907, file: !459, line: 830, type: !392)
!913 = !DILocation(line: 830, column: 27, scope: !907)
!914 = !DILocalVariable(name: "maxlen", arg: 2, scope: !907, file: !459, line: 830, type: !404)
!915 = !DILocation(line: 830, column: 37, scope: !907)
!916 = !DILocalVariable(name: "data", arg: 3, scope: !907, file: !459, line: 830, type: !910)
!917 = !DILocation(line: 830, column: 57, scope: !907)
!918 = !DILocalVariable(name: "len", arg: 4, scope: !907, file: !459, line: 830, type: !404)
!919 = !DILocation(line: 830, column: 70, scope: !907)
!920 = !DILocalVariable(name: "align_len", scope: !907, file: !459, line: 832, type: !404)
!921 = !DILocation(line: 832, column: 9, scope: !907)
!922 = !DILocation(line: 832, column: 20, scope: !907)
!923 = !DILocation(line: 832, column: 21, scope: !907)
!924 = !DILocation(line: 832, column: 25, scope: !907)
!925 = !DILocation(line: 832, column: 29, scope: !907)
!926 = !DILocation(line: 834, column: 6, scope: !927)
!927 = distinct !DILexicalBlock(scope: !907, file: !459, line: 834, column: 6)
!928 = !DILocation(line: 834, column: 9, scope: !927)
!929 = !DILocation(line: 834, column: 21, scope: !927)
!930 = !DILocation(line: 834, column: 19, scope: !927)
!931 = !DILocation(line: 834, column: 33, scope: !927)
!932 = !DILocation(line: 834, column: 31, scope: !927)
!933 = !DILocation(line: 834, column: 6, scope: !907)
!934 = !DILocation(line: 835, column: 3, scope: !927)
!935 = !DILocation(line: 837, column: 8, scope: !907)
!936 = !DILocation(line: 837, column: 10, scope: !907)
!937 = !DILocation(line: 837, column: 11, scope: !907)
!938 = !DILocation(line: 837, column: 21, scope: !907)
!939 = !DILocation(line: 837, column: 25, scope: !907)
!940 = !DILocation(line: 837, column: 29, scope: !907)
!941 = !DILocation(line: 837, column: 23, scope: !907)
!942 = !DILocation(line: 837, column: 2, scope: !907)
!943 = !DILocation(line: 838, column: 17, scope: !907)
!944 = !DILocation(line: 838, column: 19, scope: !907)
!945 = !DILocation(line: 838, column: 20, scope: !907)
!946 = !DILocation(line: 838, column: 30, scope: !907)
!947 = !DILocation(line: 838, column: 34, scope: !907)
!948 = !DILocation(line: 838, column: 38, scope: !907)
!949 = !DILocation(line: 838, column: 33, scope: !907)
!950 = !DILocation(line: 838, column: 31, scope: !907)
!951 = !DILocation(line: 838, column: 41, scope: !907)
!952 = !DILocation(line: 838, column: 53, scope: !907)
!953 = !DILocation(line: 838, column: 51, scope: !907)
!954 = !DILocation(line: 838, column: 2, scope: !907)
!955 = !DILocation(line: 839, column: 28, scope: !907)
!956 = !DILocation(line: 839, column: 18, scope: !907)
!957 = !DILocation(line: 839, column: 2, scope: !907)
!958 = !DILocation(line: 839, column: 5, scope: !907)
!959 = !DILocation(line: 839, column: 15, scope: !907)
!960 = !DILocation(line: 840, column: 2, scope: !907)
!961 = !DILocation(line: 841, column: 1, scope: !907)
!962 = distinct !DISubprogram(name: "rta_addattr_l", scope: !459, file: !459, line: 844, type: !963, isLocal: false, isDefinition: true, scopeLine: 846, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!963 = !DISubroutineType(types: !964)
!964 = !{!404, !380, !404, !384, !910, !404}
!965 = !DILocalVariable(name: "rta", arg: 1, scope: !962, file: !459, line: 844, type: !380)
!966 = !DILocation(line: 844, column: 30, scope: !962)
!967 = !DILocalVariable(name: "maxlen", arg: 2, scope: !962, file: !459, line: 844, type: !404)
!968 = !DILocation(line: 844, column: 42, scope: !962)
!969 = !DILocalVariable(name: "type", arg: 3, scope: !962, file: !459, line: 844, type: !384)
!970 = !DILocation(line: 844, column: 65, scope: !962)
!971 = !DILocalVariable(name: "data", arg: 4, scope: !962, file: !459, line: 845, type: !910)
!972 = !DILocation(line: 845, column: 17, scope: !962)
!973 = !DILocalVariable(name: "alen", arg: 5, scope: !962, file: !459, line: 845, type: !404)
!974 = !DILocation(line: 845, column: 30, scope: !962)
!975 = !DILocalVariable(name: "subrta", scope: !962, file: !459, line: 847, type: !380)
!976 = !DILocation(line: 847, column: 17, scope: !962)
!977 = !DILocalVariable(name: "len", scope: !962, file: !459, line: 848, type: !404)
!978 = !DILocation(line: 848, column: 9, scope: !962)
!979 = !DILocation(line: 848, column: 14, scope: !962)
!980 = !DILocation(line: 848, column: 62, scope: !962)
!981 = !DILocalVariable(name: "align_len", scope: !962, file: !459, line: 849, type: !404)
!982 = !DILocation(line: 849, column: 9, scope: !962)
!983 = !DILocation(line: 849, column: 20, scope: !962)
!984 = !DILocation(line: 849, column: 21, scope: !962)
!985 = !DILocation(line: 849, column: 25, scope: !962)
!986 = !DILocation(line: 849, column: 29, scope: !962)
!987 = !DILocation(line: 851, column: 6, scope: !988)
!988 = distinct !DILexicalBlock(scope: !962, file: !459, line: 851, column: 6)
!989 = !DILocation(line: 851, column: 11, scope: !988)
!990 = !DILocation(line: 851, column: 21, scope: !988)
!991 = !DILocation(line: 851, column: 19, scope: !988)
!992 = !DILocation(line: 851, column: 33, scope: !988)
!993 = !DILocation(line: 851, column: 31, scope: !988)
!994 = !DILocation(line: 851, column: 6, scope: !962)
!995 = !DILocation(line: 852, column: 3, scope: !988)
!996 = !DILocation(line: 854, column: 36, scope: !962)
!997 = !DILocation(line: 854, column: 29, scope: !962)
!998 = !DILocation(line: 854, column: 43, scope: !962)
!999 = !DILocation(line: 854, column: 48, scope: !962)
!1000 = !DILocation(line: 854, column: 41, scope: !962)
!1001 = !DILocation(line: 854, column: 11, scope: !962)
!1002 = !DILocation(line: 854, column: 9, scope: !962)
!1003 = !DILocation(line: 855, column: 21, scope: !962)
!1004 = !DILocation(line: 855, column: 2, scope: !962)
!1005 = !DILocation(line: 855, column: 10, scope: !962)
!1006 = !DILocation(line: 855, column: 19, scope: !962)
!1007 = !DILocation(line: 856, column: 36, scope: !962)
!1008 = !DILocation(line: 856, column: 20, scope: !962)
!1009 = !DILocation(line: 856, column: 2, scope: !962)
!1010 = !DILocation(line: 856, column: 10, scope: !962)
!1011 = !DILocation(line: 856, column: 18, scope: !962)
!1012 = !DILocation(line: 857, column: 8, scope: !962)
!1013 = !DILocation(line: 857, column: 18, scope: !962)
!1014 = !DILocation(line: 857, column: 11, scope: !962)
!1015 = !DILocation(line: 857, column: 26, scope: !962)
!1016 = !DILocation(line: 857, column: 32, scope: !962)
!1017 = !DILocation(line: 857, column: 2, scope: !962)
!1018 = !DILocation(line: 858, column: 34, scope: !962)
!1019 = !DILocation(line: 858, column: 39, scope: !962)
!1020 = !DILocation(line: 858, column: 49, scope: !962)
!1021 = !DILocation(line: 858, column: 47, scope: !962)
!1022 = !DILocation(line: 858, column: 17, scope: !962)
!1023 = !DILocation(line: 858, column: 2, scope: !962)
!1024 = !DILocation(line: 858, column: 7, scope: !962)
!1025 = !DILocation(line: 858, column: 15, scope: !962)
!1026 = !DILocation(line: 859, column: 9, scope: !962)
!1027 = !DILocation(line: 859, column: 2, scope: !962)
!1028 = !DILocation(line: 860, column: 1, scope: !962)
!1029 = distinct !DISubprogram(name: "rta_addattr_l2", scope: !459, file: !459, line: 863, type: !1030, isLocal: false, isDefinition: true, scopeLine: 866, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!404, !380, !404, !384, !910, !404, !910, !404}
!1032 = !DILocalVariable(name: "rta", arg: 1, scope: !1029, file: !459, line: 863, type: !380)
!1033 = !DILocation(line: 863, column: 31, scope: !1029)
!1034 = !DILocalVariable(name: "maxlen", arg: 2, scope: !1029, file: !459, line: 863, type: !404)
!1035 = !DILocation(line: 863, column: 43, scope: !1029)
!1036 = !DILocalVariable(name: "type", arg: 3, scope: !1029, file: !459, line: 863, type: !384)
!1037 = !DILocation(line: 863, column: 66, scope: !1029)
!1038 = !DILocalVariable(name: "data", arg: 4, scope: !1029, file: !459, line: 864, type: !910)
!1039 = !DILocation(line: 864, column: 17, scope: !1029)
!1040 = !DILocalVariable(name: "alen", arg: 5, scope: !1029, file: !459, line: 864, type: !404)
!1041 = !DILocation(line: 864, column: 30, scope: !1029)
!1042 = !DILocalVariable(name: "data2", arg: 6, scope: !1029, file: !459, line: 865, type: !910)
!1043 = !DILocation(line: 865, column: 17, scope: !1029)
!1044 = !DILocalVariable(name: "alen2", arg: 7, scope: !1029, file: !459, line: 865, type: !404)
!1045 = !DILocation(line: 865, column: 31, scope: !1029)
!1046 = !DILocalVariable(name: "subrta", scope: !1029, file: !459, line: 867, type: !380)
!1047 = !DILocation(line: 867, column: 17, scope: !1029)
!1048 = !DILocalVariable(name: "len", scope: !1029, file: !459, line: 868, type: !404)
!1049 = !DILocation(line: 868, column: 9, scope: !1029)
!1050 = !DILocation(line: 868, column: 14, scope: !1029)
!1051 = !DILocation(line: 868, column: 21, scope: !1029)
!1052 = !DILocation(line: 868, column: 19, scope: !1029)
!1053 = !DILocation(line: 868, column: 62, scope: !1029)
!1054 = !DILocalVariable(name: "align_len", scope: !1029, file: !459, line: 869, type: !404)
!1055 = !DILocation(line: 869, column: 9, scope: !1029)
!1056 = !DILocation(line: 869, column: 20, scope: !1029)
!1057 = !DILocation(line: 869, column: 21, scope: !1029)
!1058 = !DILocation(line: 869, column: 25, scope: !1029)
!1059 = !DILocation(line: 869, column: 29, scope: !1029)
!1060 = !DILocation(line: 871, column: 6, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1029, file: !459, line: 871, column: 6)
!1062 = !DILocation(line: 871, column: 11, scope: !1061)
!1063 = !DILocation(line: 871, column: 21, scope: !1061)
!1064 = !DILocation(line: 871, column: 19, scope: !1061)
!1065 = !DILocation(line: 871, column: 33, scope: !1061)
!1066 = !DILocation(line: 871, column: 31, scope: !1061)
!1067 = !DILocation(line: 871, column: 6, scope: !1029)
!1068 = !DILocation(line: 872, column: 3, scope: !1061)
!1069 = !DILocation(line: 874, column: 36, scope: !1029)
!1070 = !DILocation(line: 874, column: 29, scope: !1029)
!1071 = !DILocation(line: 874, column: 43, scope: !1029)
!1072 = !DILocation(line: 874, column: 48, scope: !1029)
!1073 = !DILocation(line: 874, column: 41, scope: !1029)
!1074 = !DILocation(line: 874, column: 11, scope: !1029)
!1075 = !DILocation(line: 874, column: 9, scope: !1029)
!1076 = !DILocation(line: 875, column: 21, scope: !1029)
!1077 = !DILocation(line: 875, column: 2, scope: !1029)
!1078 = !DILocation(line: 875, column: 10, scope: !1029)
!1079 = !DILocation(line: 875, column: 19, scope: !1029)
!1080 = !DILocation(line: 876, column: 36, scope: !1029)
!1081 = !DILocation(line: 876, column: 20, scope: !1029)
!1082 = !DILocation(line: 876, column: 2, scope: !1029)
!1083 = !DILocation(line: 876, column: 10, scope: !1029)
!1084 = !DILocation(line: 876, column: 18, scope: !1029)
!1085 = !DILocation(line: 877, column: 8, scope: !1029)
!1086 = !DILocation(line: 877, column: 18, scope: !1029)
!1087 = !DILocation(line: 877, column: 11, scope: !1029)
!1088 = !DILocation(line: 877, column: 26, scope: !1029)
!1089 = !DILocation(line: 877, column: 32, scope: !1029)
!1090 = !DILocation(line: 877, column: 2, scope: !1029)
!1091 = !DILocation(line: 878, column: 8, scope: !1029)
!1092 = !DILocation(line: 878, column: 18, scope: !1029)
!1093 = !DILocation(line: 878, column: 11, scope: !1029)
!1094 = !DILocation(line: 878, column: 27, scope: !1029)
!1095 = !DILocation(line: 878, column: 25, scope: !1029)
!1096 = !DILocation(line: 878, column: 33, scope: !1029)
!1097 = !DILocation(line: 878, column: 40, scope: !1029)
!1098 = !DILocation(line: 878, column: 2, scope: !1029)
!1099 = !DILocation(line: 879, column: 34, scope: !1029)
!1100 = !DILocation(line: 879, column: 39, scope: !1029)
!1101 = !DILocation(line: 879, column: 49, scope: !1029)
!1102 = !DILocation(line: 879, column: 47, scope: !1029)
!1103 = !DILocation(line: 879, column: 17, scope: !1029)
!1104 = !DILocation(line: 879, column: 2, scope: !1029)
!1105 = !DILocation(line: 879, column: 7, scope: !1029)
!1106 = !DILocation(line: 879, column: 15, scope: !1029)
!1107 = !DILocation(line: 880, column: 9, scope: !1029)
!1108 = !DILocation(line: 880, column: 2, scope: !1029)
!1109 = !DILocation(line: 881, column: 1, scope: !1029)
!1110 = distinct !DISubprogram(name: "rta_addattr64", scope: !459, file: !459, line: 884, type: !1111, isLocal: false, isDefinition: true, scopeLine: 885, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!404, !380, !404, !384, !456}
!1113 = !DILocalVariable(name: "rta", arg: 1, scope: !1110, file: !459, line: 884, type: !380)
!1114 = !DILocation(line: 884, column: 30, scope: !1110)
!1115 = !DILocalVariable(name: "maxlen", arg: 2, scope: !1110, file: !459, line: 884, type: !404)
!1116 = !DILocation(line: 884, column: 42, scope: !1110)
!1117 = !DILocalVariable(name: "type", arg: 3, scope: !1110, file: !459, line: 884, type: !384)
!1118 = !DILocation(line: 884, column: 65, scope: !1110)
!1119 = !DILocalVariable(name: "data", arg: 4, scope: !1110, file: !459, line: 884, type: !456)
!1120 = !DILocation(line: 884, column: 80, scope: !1110)
!1121 = !DILocation(line: 886, column: 23, scope: !1110)
!1122 = !DILocation(line: 886, column: 28, scope: !1110)
!1123 = !DILocation(line: 886, column: 36, scope: !1110)
!1124 = !DILocation(line: 886, column: 42, scope: !1110)
!1125 = !DILocation(line: 886, column: 9, scope: !1110)
!1126 = !DILocation(line: 886, column: 2, scope: !1110)
!1127 = distinct !DISubprogram(name: "rta_addattr32", scope: !459, file: !459, line: 890, type: !1128, isLocal: false, isDefinition: true, scopeLine: 891, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!404, !380, !404, !384, !389}
!1130 = !DILocalVariable(name: "rta", arg: 1, scope: !1127, file: !459, line: 890, type: !380)
!1131 = !DILocation(line: 890, column: 30, scope: !1127)
!1132 = !DILocalVariable(name: "maxlen", arg: 2, scope: !1127, file: !459, line: 890, type: !404)
!1133 = !DILocation(line: 890, column: 42, scope: !1127)
!1134 = !DILocalVariable(name: "type", arg: 3, scope: !1127, file: !459, line: 890, type: !384)
!1135 = !DILocation(line: 890, column: 65, scope: !1127)
!1136 = !DILocalVariable(name: "data", arg: 4, scope: !1127, file: !459, line: 890, type: !389)
!1137 = !DILocation(line: 890, column: 80, scope: !1127)
!1138 = !DILocalVariable(name: "subrta", scope: !1127, file: !459, line: 892, type: !380)
!1139 = !DILocation(line: 892, column: 17, scope: !1127)
!1140 = !DILocalVariable(name: "len", scope: !1127, file: !459, line: 893, type: !404)
!1141 = !DILocation(line: 893, column: 9, scope: !1127)
!1142 = !DILocalVariable(name: "align_len", scope: !1127, file: !459, line: 894, type: !404)
!1143 = !DILocation(line: 894, column: 9, scope: !1127)
!1144 = !DILocation(line: 894, column: 20, scope: !1127)
!1145 = !DILocation(line: 894, column: 21, scope: !1127)
!1146 = !DILocation(line: 894, column: 25, scope: !1127)
!1147 = !DILocation(line: 894, column: 29, scope: !1127)
!1148 = !DILocation(line: 896, column: 6, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1127, file: !459, line: 896, column: 6)
!1150 = !DILocation(line: 896, column: 11, scope: !1149)
!1151 = !DILocation(line: 896, column: 21, scope: !1149)
!1152 = !DILocation(line: 896, column: 19, scope: !1149)
!1153 = !DILocation(line: 896, column: 33, scope: !1149)
!1154 = !DILocation(line: 896, column: 31, scope: !1149)
!1155 = !DILocation(line: 896, column: 6, scope: !1127)
!1156 = !DILocation(line: 897, column: 3, scope: !1149)
!1157 = !DILocation(line: 899, column: 36, scope: !1127)
!1158 = !DILocation(line: 899, column: 29, scope: !1127)
!1159 = !DILocation(line: 899, column: 43, scope: !1127)
!1160 = !DILocation(line: 899, column: 48, scope: !1127)
!1161 = !DILocation(line: 899, column: 41, scope: !1127)
!1162 = !DILocation(line: 899, column: 11, scope: !1127)
!1163 = !DILocation(line: 899, column: 9, scope: !1127)
!1164 = !DILocation(line: 900, column: 21, scope: !1127)
!1165 = !DILocation(line: 900, column: 2, scope: !1127)
!1166 = !DILocation(line: 900, column: 10, scope: !1127)
!1167 = !DILocation(line: 900, column: 19, scope: !1127)
!1168 = !DILocation(line: 901, column: 36, scope: !1127)
!1169 = !DILocation(line: 901, column: 20, scope: !1127)
!1170 = !DILocation(line: 901, column: 2, scope: !1127)
!1171 = !DILocation(line: 901, column: 10, scope: !1127)
!1172 = !DILocation(line: 901, column: 18, scope: !1127)
!1173 = !DILocation(line: 902, column: 8, scope: !1127)
!1174 = !DILocation(line: 902, column: 18, scope: !1127)
!1175 = !DILocation(line: 902, column: 11, scope: !1127)
!1176 = !DILocation(line: 902, column: 2, scope: !1127)
!1177 = !DILocation(line: 903, column: 34, scope: !1127)
!1178 = !DILocation(line: 903, column: 39, scope: !1127)
!1179 = !DILocation(line: 903, column: 49, scope: !1127)
!1180 = !DILocation(line: 903, column: 47, scope: !1127)
!1181 = !DILocation(line: 903, column: 17, scope: !1127)
!1182 = !DILocation(line: 903, column: 2, scope: !1127)
!1183 = !DILocation(line: 903, column: 7, scope: !1127)
!1184 = !DILocation(line: 903, column: 15, scope: !1127)
!1185 = !DILocation(line: 904, column: 9, scope: !1127)
!1186 = !DILocation(line: 904, column: 2, scope: !1127)
!1187 = !DILocation(line: 905, column: 1, scope: !1127)
!1188 = distinct !DISubprogram(name: "rta_addattr16", scope: !459, file: !459, line: 908, type: !1189, isLocal: false, isDefinition: true, scopeLine: 909, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!404, !380, !404, !384, !440}
!1191 = !DILocalVariable(name: "rta", arg: 1, scope: !1188, file: !459, line: 908, type: !380)
!1192 = !DILocation(line: 908, column: 30, scope: !1188)
!1193 = !DILocalVariable(name: "maxlen", arg: 2, scope: !1188, file: !459, line: 908, type: !404)
!1194 = !DILocation(line: 908, column: 42, scope: !1188)
!1195 = !DILocalVariable(name: "type", arg: 3, scope: !1188, file: !459, line: 908, type: !384)
!1196 = !DILocation(line: 908, column: 65, scope: !1188)
!1197 = !DILocalVariable(name: "data", arg: 4, scope: !1188, file: !459, line: 908, type: !440)
!1198 = !DILocation(line: 908, column: 80, scope: !1188)
!1199 = !DILocation(line: 910, column: 23, scope: !1188)
!1200 = !DILocation(line: 910, column: 28, scope: !1188)
!1201 = !DILocation(line: 910, column: 36, scope: !1188)
!1202 = !DILocation(line: 910, column: 42, scope: !1188)
!1203 = !DILocation(line: 910, column: 9, scope: !1188)
!1204 = !DILocation(line: 910, column: 2, scope: !1188)
!1205 = distinct !DISubprogram(name: "rta_addattr8", scope: !459, file: !459, line: 914, type: !1206, isLocal: false, isDefinition: true, scopeLine: 915, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!404, !380, !404, !384, !434}
!1208 = !DILocalVariable(name: "rta", arg: 1, scope: !1205, file: !459, line: 914, type: !380)
!1209 = !DILocation(line: 914, column: 29, scope: !1205)
!1210 = !DILocalVariable(name: "maxlen", arg: 2, scope: !1205, file: !459, line: 914, type: !404)
!1211 = !DILocation(line: 914, column: 41, scope: !1205)
!1212 = !DILocalVariable(name: "type", arg: 3, scope: !1205, file: !459, line: 914, type: !384)
!1213 = !DILocation(line: 914, column: 64, scope: !1205)
!1214 = !DILocalVariable(name: "data", arg: 4, scope: !1205, file: !459, line: 914, type: !434)
!1215 = !DILocation(line: 914, column: 78, scope: !1205)
!1216 = !DILocation(line: 916, column: 23, scope: !1205)
!1217 = !DILocation(line: 916, column: 28, scope: !1205)
!1218 = !DILocation(line: 916, column: 36, scope: !1205)
!1219 = !DILocation(line: 916, column: 9, scope: !1205)
!1220 = !DILocation(line: 916, column: 2, scope: !1205)
!1221 = distinct !DISubprogram(name: "rta_nest", scope: !459, file: !459, line: 920, type: !1222, isLocal: false, isDefinition: true, scopeLine: 921, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!1222 = !DISubroutineType(types: !1223)
!1223 = !{!380, !380, !404, !384}
!1224 = !DILocalVariable(name: "rta", arg: 1, scope: !1221, file: !459, line: 920, type: !380)
!1225 = !DILocation(line: 920, column: 25, scope: !1221)
!1226 = !DILocalVariable(name: "maxlen", arg: 2, scope: !1221, file: !459, line: 920, type: !404)
!1227 = !DILocation(line: 920, column: 37, scope: !1221)
!1228 = !DILocalVariable(name: "type", arg: 3, scope: !1221, file: !459, line: 920, type: !384)
!1229 = !DILocation(line: 920, column: 60, scope: !1221)
!1230 = !DILocalVariable(name: "nest", scope: !1221, file: !459, line: 922, type: !380)
!1231 = !DILocation(line: 922, column: 17, scope: !1221)
!1232 = !DILocation(line: 922, column: 55, scope: !1221)
!1233 = !DILocation(line: 922, column: 45, scope: !1221)
!1234 = !DILocation(line: 922, column: 24, scope: !1221)
!1235 = !DILocation(line: 922, column: 30, scope: !1221)
!1236 = !DILocation(line: 922, column: 26, scope: !1221)
!1237 = !DILocation(line: 922, column: 28, scope: !1221)
!1238 = !DILocation(line: 922, column: 32, scope: !1221)
!1239 = !DILocation(line: 922, column: 61, scope: !1221)
!1240 = !DILocation(line: 922, column: 25, scope: !1221)
!1241 = !DILocation(line: 924, column: 16, scope: !1221)
!1242 = !DILocation(line: 924, column: 21, scope: !1221)
!1243 = !DILocation(line: 924, column: 29, scope: !1221)
!1244 = !DILocation(line: 924, column: 2, scope: !1221)
!1245 = !DILocation(line: 926, column: 9, scope: !1221)
!1246 = !DILocation(line: 926, column: 2, scope: !1221)
!1247 = distinct !DISubprogram(name: "rta_nest_end", scope: !459, file: !459, line: 930, type: !1248, isLocal: false, isDefinition: true, scopeLine: 931, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{!404, !380, !380}
!1250 = !DILocalVariable(name: "rta", arg: 1, scope: !1247, file: !459, line: 930, type: !380)
!1251 = !DILocation(line: 930, column: 29, scope: !1247)
!1252 = !DILocalVariable(name: "nest", arg: 2, scope: !1247, file: !459, line: 930, type: !380)
!1253 = !DILocation(line: 930, column: 49, scope: !1247)
!1254 = !DILocation(line: 932, column: 74, scope: !1247)
!1255 = !DILocation(line: 932, column: 64, scope: !1247)
!1256 = !DILocation(line: 932, column: 43, scope: !1247)
!1257 = !DILocation(line: 932, column: 49, scope: !1247)
!1258 = !DILocation(line: 932, column: 45, scope: !1247)
!1259 = !DILocation(line: 932, column: 47, scope: !1247)
!1260 = !DILocation(line: 932, column: 51, scope: !1247)
!1261 = !DILocation(line: 932, column: 80, scope: !1247)
!1262 = !DILocation(line: 932, column: 44, scope: !1247)
!1263 = !DILocation(line: 932, column: 35, scope: !1247)
!1264 = !DILocation(line: 932, column: 55, scope: !1247)
!1265 = !DILocation(line: 932, column: 18, scope: !1247)
!1266 = !DILocation(line: 932, column: 2, scope: !1247)
!1267 = !DILocation(line: 932, column: 8, scope: !1247)
!1268 = !DILocation(line: 932, column: 16, scope: !1247)
!1269 = !DILocation(line: 934, column: 9, scope: !1247)
!1270 = !DILocation(line: 934, column: 14, scope: !1247)
!1271 = !DILocation(line: 934, column: 2, scope: !1247)
!1272 = distinct !DISubprogram(name: "netlink_talk", scope: !459, file: !459, line: 1427, type: !1273, isLocal: false, isDefinition: true, scopeLine: 1428, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!1275, !1277, !392}
!1275 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !454, line: 109, baseType: !1276)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !562, line: 172, baseType: !563)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64, align: 64)
!1278 = !DILocalVariable(name: "nl", arg: 1, scope: !1272, file: !459, line: 1427, type: !1277)
!1279 = !DILocation(line: 1427, column: 27, scope: !1272)
!1280 = !DILocalVariable(name: "n", arg: 2, scope: !1272, file: !459, line: 1427, type: !392)
!1281 = !DILocation(line: 1427, column: 48, scope: !1272)
!1282 = !DILocalVariable(name: "status", scope: !1272, file: !459, line: 1429, type: !1275)
!1283 = !DILocation(line: 1429, column: 10, scope: !1272)
!1284 = !DILocalVariable(name: "snl", scope: !1272, file: !459, line: 1430, type: !1285)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_nl", file: !394, line: 35, size: 96, align: 32, elements: !1286)
!1286 = !{!1287, !1290, !1291, !1292}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "nl_family", scope: !1285, file: !394, line: 36, baseType: !1288, size: 16, align: 16)
!1288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_sa_family_t", file: !1289, line: 11, baseType: !384)
!1289 = !DIFile(filename: "/usr/include/linux/socket.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "nl_pad", scope: !1285, file: !394, line: 37, baseType: !384, size: 16, align: 16, offset: 16)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "nl_pid", scope: !1285, file: !394, line: 38, baseType: !397, size: 32, align: 32, offset: 32)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "nl_groups", scope: !1285, file: !394, line: 39, baseType: !397, size: 32, align: 32, offset: 64)
!1293 = !DILocation(line: 1430, column: 21, scope: !1272)
!1294 = !DILocalVariable(name: "iov", scope: !1272, file: !459, line: 1431, type: !1295)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1296, line: 43, size: 128, align: 64, elements: !1297)
!1296 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/uio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!1297 = !{!1298, !1299}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1295, file: !1296, line: 45, baseType: !388, size: 64, align: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1295, file: !1296, line: 46, baseType: !404, size: 64, align: 64, offset: 64)
!1300 = !DILocation(line: 1431, column: 15, scope: !1272)
!1301 = !DILocation(line: 1431, column: 21, scope: !1272)
!1302 = !DILocation(line: 1432, column: 15, scope: !1272)
!1303 = !DILocation(line: 1433, column: 14, scope: !1272)
!1304 = !DILocation(line: 1433, column: 17, scope: !1272)
!1305 = !DILocalVariable(name: "msg", scope: !1272, file: !459, line: 1435, type: !1306)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msghdr", file: !166, line: 228, size: 448, align: 64, elements: !1307)
!1307 = !{!1308, !1309, !1312, !1314, !1315, !1316, !1317}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "msg_name", scope: !1306, file: !166, line: 230, baseType: !388, size: 64, align: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "msg_namelen", scope: !1306, file: !166, line: 231, baseType: !1310, size: 32, align: 32, offset: 64)
!1310 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !166, line: 33, baseType: !1311)
!1311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !562, line: 189, baseType: !391)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iov", scope: !1306, file: !166, line: 233, baseType: !1313, size: 64, align: 64, offset: 128)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64, align: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "msg_iovlen", scope: !1306, file: !166, line: 234, baseType: !404, size: 64, align: 64, offset: 192)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "msg_control", scope: !1306, file: !166, line: 236, baseType: !388, size: 64, align: 64, offset: 256)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "msg_controllen", scope: !1306, file: !166, line: 237, baseType: !404, size: 64, align: 64, offset: 320)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "msg_flags", scope: !1306, file: !166, line: 242, baseType: !407, size: 32, align: 32, offset: 384)
!1318 = !DILocation(line: 1435, column: 16, scope: !1272)
!1319 = !DILocation(line: 1435, column: 22, scope: !1272)
!1320 = !DILocation(line: 1436, column: 15, scope: !1272)
!1321 = !DILocation(line: 1445, column: 2, scope: !1272)
!1322 = !DILocation(line: 1446, column: 6, scope: !1272)
!1323 = !DILocation(line: 1446, column: 16, scope: !1272)
!1324 = !DILocation(line: 1448, column: 19, scope: !1272)
!1325 = !DILocation(line: 1448, column: 23, scope: !1272)
!1326 = !DILocation(line: 1448, column: 17, scope: !1272)
!1327 = !DILocation(line: 1448, column: 2, scope: !1272)
!1328 = !DILocation(line: 1448, column: 5, scope: !1272)
!1329 = !DILocation(line: 1448, column: 15, scope: !1272)
!1330 = !DILocation(line: 1451, column: 2, scope: !1272)
!1331 = !DILocation(line: 1451, column: 5, scope: !1272)
!1332 = !DILocation(line: 1451, column: 17, scope: !1272)
!1333 = !DILocation(line: 1458, column: 19, scope: !1272)
!1334 = !DILocation(line: 1458, column: 23, scope: !1272)
!1335 = !DILocation(line: 1458, column: 11, scope: !1272)
!1336 = !DILocation(line: 1458, column: 9, scope: !1272)
!1337 = !DILocation(line: 1459, column: 6, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1272, file: !459, line: 1459, column: 6)
!1339 = !DILocation(line: 1459, column: 13, scope: !1338)
!1340 = !DILocation(line: 1459, column: 6, scope: !1272)
!1341 = !DILocation(line: 1460, column: 65, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1338, file: !459, line: 1459, column: 18)
!1343 = !DILocation(line: 1460, column: 69, scope: !1342)
!1344 = !DILocation(line: 1460, column: 73, scope: !1342)
!1345 = !DILocation(line: 1460, column: 76, scope: !1342)
!1346 = !DILocation(line: 1461, column: 20, scope: !1342)
!1347 = !DILocation(line: 1461, column: 19, scope: !1342)
!1348 = !DILocation(line: 1461, column: 10, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !1342, file: !459, discriminator: 1)
!1350 = !DILocation(line: 1460, column: 3, scope: !1342)
!1351 = !DILocation(line: 1462, column: 3, scope: !1342)
!1352 = !DILocation(line: 1465, column: 51, scope: !1272)
!1353 = !DILocation(line: 1465, column: 55, scope: !1272)
!1354 = !DILocation(line: 1465, column: 11, scope: !1272)
!1355 = !DILocation(line: 1465, column: 9, scope: !1272)
!1356 = !DILocation(line: 1482, column: 9, scope: !1272)
!1357 = !DILocation(line: 1482, column: 2, scope: !1272)
!1358 = !DILocation(line: 1483, column: 1, scope: !1272)
!1359 = distinct !DISubprogram(name: "netlink_parse_info", scope: !459, file: !459, line: 1273, type: !1360, isLocal: true, isDefinition: true, scopeLine: 1275, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!407, !1362, !1277, !392, !609}
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64, align: 64)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!407, !1365, !392}
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64, align: 64)
!1366 = !DILocalVariable(name: "filter", arg: 1, scope: !1359, file: !459, line: 1273, type: !1362)
!1367 = !DILocation(line: 1273, column: 26, scope: !1359)
!1368 = !DILocalVariable(name: "nl", arg: 2, scope: !1359, file: !459, line: 1274, type: !1277)
!1369 = !DILocation(line: 1274, column: 19, scope: !1359)
!1370 = !DILocalVariable(name: "n", arg: 3, scope: !1359, file: !459, line: 1274, type: !392)
!1371 = !DILocation(line: 1274, column: 40, scope: !1359)
!1372 = !DILocalVariable(name: "read_all", arg: 4, scope: !1359, file: !459, line: 1274, type: !609)
!1373 = !DILocation(line: 1274, column: 47, scope: !1359)
!1374 = !DILocalVariable(name: "status", scope: !1359, file: !459, line: 1276, type: !1275)
!1375 = !DILocation(line: 1276, column: 10, scope: !1359)
!1376 = !DILocalVariable(name: "ret", scope: !1359, file: !459, line: 1277, type: !407)
!1377 = !DILocation(line: 1277, column: 6, scope: !1359)
!1378 = !DILocalVariable(name: "error", scope: !1359, file: !459, line: 1278, type: !407)
!1379 = !DILocation(line: 1278, column: 6, scope: !1359)
!1380 = !DILocation(line: 1280, column: 2, scope: !1359)
!1381 = !DILocation(line: 1281, column: 12, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1359, file: !459, line: 1280, column: 14)
!1383 = !DILocation(line: 1281, column: 3, scope: !1382)
!1384 = !DILocalVariable(name: "buf", scope: !1382, file: !459, line: 1281, type: !1385)
!1385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, align: 8, elements: !1386)
!1386 = !{!1387}
!1387 = !DISubrange(count: -1)
!1388 = !DIExpression(DW_OP_deref)
!1389 = !DILocation(line: 1281, column: 8, scope: !1382)
!1390 = !DILocalVariable(name: "iov", scope: !1382, file: !459, line: 1282, type: !1295)
!1391 = !DILocation(line: 1282, column: 16, scope: !1382)
!1392 = !DILocation(line: 1282, column: 22, scope: !1382)
!1393 = !DILocalVariable(name: "snl", scope: !1382, file: !459, line: 1286, type: !1285)
!1394 = !DILocation(line: 1286, column: 22, scope: !1382)
!1395 = !DILocalVariable(name: "msg", scope: !1382, file: !459, line: 1287, type: !1306)
!1396 = !DILocation(line: 1287, column: 17, scope: !1382)
!1397 = !DILocation(line: 1287, column: 23, scope: !1382)
!1398 = !DILocation(line: 1288, column: 16, scope: !1382)
!1399 = !DILocalVariable(name: "h", scope: !1382, file: !459, line: 1296, type: !392)
!1400 = !DILocation(line: 1296, column: 20, scope: !1382)
!1401 = !DILocation(line: 1298, column: 20, scope: !1382)
!1402 = !DILocation(line: 1298, column: 24, scope: !1382)
!1403 = !DILocation(line: 1298, column: 12, scope: !1382)
!1404 = !DILocation(line: 1298, column: 10, scope: !1382)
!1405 = !DILocation(line: 1300, column: 7, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1382, file: !459, line: 1300, column: 7)
!1407 = !DILocation(line: 1300, column: 14, scope: !1406)
!1408 = !DILocation(line: 1300, column: 7, scope: !1382)
!1409 = !DILocation(line: 1301, column: 9, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !459, line: 1301, column: 7)
!1411 = distinct !DILexicalBlock(scope: !1406, file: !459, line: 1300, column: 19)
!1412 = !DILocation(line: 1301, column: 8, scope: !1410)
!1413 = !DILocation(line: 1301, column: 13, scope: !1410)
!1414 = !DILocation(line: 1301, column: 7, scope: !1411)
!1415 = !DILocation(line: 1302, column: 5, scope: !1410)
!1416 = distinct !{!1416, !1380}
!1417 = !DILocation(line: 1303, column: 9, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1411, file: !459, line: 1303, column: 7)
!1419 = !DILocation(line: 1303, column: 8, scope: !1418)
!1420 = !DILocation(line: 1303, column: 13, scope: !1418)
!1421 = !DILocation(line: 1303, column: 28, scope: !1418)
!1422 = !DILocation(line: 1303, column: 33, scope: !1423)
!1423 = !DILexicalBlockFile(scope: !1418, file: !459, discriminator: 1)
!1424 = !DILocation(line: 1303, column: 32, scope: !1423)
!1425 = !DILocation(line: 1303, column: 37, scope: !1423)
!1426 = !DILocation(line: 1303, column: 7, scope: !1423)
!1427 = !DILocation(line: 1304, column: 5, scope: !1418)
!1428 = !DILocation(line: 1305, column: 9, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1411, file: !459, line: 1305, column: 7)
!1430 = !DILocation(line: 1305, column: 8, scope: !1429)
!1431 = !DILocation(line: 1305, column: 13, scope: !1429)
!1432 = !DILocation(line: 1305, column: 7, scope: !1411)
!1433 = !DILocation(line: 1306, column: 81, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1429, file: !459, line: 1305, column: 25)
!1435 = !DILocation(line: 1306, column: 84, scope: !1434)
!1436 = !DILocation(line: 1306, column: 5, scope: !1434)
!1437 = !DILocation(line: 1307, column: 5, scope: !1434)
!1438 = !DILocation(line: 1308, column: 4, scope: !1434)
!1439 = !DILocation(line: 1310, column: 76, scope: !1429)
!1440 = !DILocation(line: 1310, column: 79, scope: !1429)
!1441 = !DILocation(line: 1310, column: 116, scope: !1429)
!1442 = !DILocation(line: 1310, column: 115, scope: !1429)
!1443 = !DILocation(line: 1310, column: 5, scope: !1444)
!1444 = !DILexicalBlockFile(scope: !1429, file: !459, discriminator: 1)
!1445 = !DILocation(line: 1311, column: 4, scope: !1411)
!1446 = !DILocation(line: 1314, column: 7, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1382, file: !459, line: 1314, column: 7)
!1448 = !DILocation(line: 1314, column: 14, scope: !1447)
!1449 = !DILocation(line: 1314, column: 7, scope: !1382)
!1450 = !DILocation(line: 1315, column: 4, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1447, file: !459, line: 1314, column: 20)
!1452 = !DILocation(line: 1316, column: 4, scope: !1451)
!1453 = !DILocation(line: 1319, column: 11, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1382, file: !459, line: 1319, column: 7)
!1455 = !DILocation(line: 1319, column: 7, scope: !1454)
!1456 = !DILocation(line: 1319, column: 23, scope: !1454)
!1457 = !DILocation(line: 1319, column: 7, scope: !1382)
!1458 = !DILocation(line: 1322, column: 15, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1454, file: !459, line: 1319, column: 38)
!1460 = !DILocation(line: 1320, column: 4, scope: !1459)
!1461 = !DILocation(line: 1323, column: 4, scope: !1459)
!1462 = !DILocation(line: 1326, column: 12, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1382, file: !459, line: 1326, column: 3)
!1464 = !DILocation(line: 1326, column: 10, scope: !1463)
!1465 = !DILocation(line: 1326, column: 8, scope: !1463)
!1466 = !DILocation(line: 1326, column: 44, scope: !1467)
!1467 = !DILexicalBlockFile(scope: !1468, file: !459, discriminator: 1)
!1468 = distinct !DILexicalBlock(scope: !1463, file: !459, line: 1326, column: 3)
!1469 = !DILocation(line: 1326, column: 38, scope: !1467)
!1470 = !DILocation(line: 1326, column: 70, scope: !1467)
!1471 = !DILocation(line: 1326, column: 36, scope: !1472)
!1472 = !DILexicalBlockFile(scope: !1468, file: !459, discriminator: 2)
!1473 = !DILocation(line: 1326, column: 39, scope: !1472)
!1474 = !DILocation(line: 1326, column: 73, scope: !1472)
!1475 = !DILocation(line: 1326, column: 49, scope: !1472)
!1476 = !DILocation(line: 1326, column: 76, scope: !1472)
!1477 = !DILocation(line: 1326, column: 36, scope: !1478)
!1478 = !DILexicalBlockFile(scope: !1468, file: !459, discriminator: 3)
!1479 = !DILocation(line: 1326, column: 39, scope: !1478)
!1480 = !DILocation(line: 1326, column: 79, scope: !1478)
!1481 = !DILocation(line: 1326, column: 44, scope: !1478)
!1482 = !DILocation(line: 1326, column: 49, scope: !1478)
!1483 = !DILocation(line: 1326, column: 3, scope: !1484)
!1484 = !DILexicalBlockFile(scope: !1463, file: !459, discriminator: 4)
!1485 = !DILocation(line: 1328, column: 8, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !459, line: 1328, column: 8)
!1487 = distinct !DILexicalBlock(scope: !1468, file: !459, line: 1326, column: 92)
!1488 = !DILocation(line: 1328, column: 11, scope: !1486)
!1489 = !DILocation(line: 1328, column: 22, scope: !1486)
!1490 = !DILocation(line: 1328, column: 8, scope: !1487)
!1491 = !DILocation(line: 1329, column: 12, scope: !1486)
!1492 = !DILocation(line: 1329, column: 5, scope: !1486)
!1493 = !DILocation(line: 1332, column: 8, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1487, file: !459, line: 1332, column: 8)
!1495 = !DILocation(line: 1332, column: 11, scope: !1494)
!1496 = !DILocation(line: 1332, column: 22, scope: !1494)
!1497 = !DILocation(line: 1332, column: 8, scope: !1487)
!1498 = !DILocalVariable(name: "err", scope: !1499, file: !459, line: 1333, type: !408)
!1499 = distinct !DILexicalBlock(scope: !1494, file: !459, line: 1332, column: 37)
!1500 = !DILocation(line: 1333, column: 22, scope: !1499)
!1501 = !DILocation(line: 1333, column: 47, scope: !1499)
!1502 = !DILocation(line: 1333, column: 57, scope: !1499)
!1503 = !DILocation(line: 1333, column: 49, scope: !1499)
!1504 = !DILocation(line: 1333, column: 28, scope: !1499)
!1505 = !DILocation(line: 1339, column: 9, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1499, file: !459, line: 1339, column: 9)
!1507 = !DILocation(line: 1339, column: 14, scope: !1506)
!1508 = !DILocation(line: 1339, column: 20, scope: !1506)
!1509 = !DILocation(line: 1339, column: 9, scope: !1499)
!1510 = !DILocation(line: 1340, column: 12, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !459, line: 1340, column: 10)
!1512 = distinct !DILexicalBlock(scope: !1506, file: !459, line: 1339, column: 26)
!1513 = !DILocation(line: 1340, column: 15, scope: !1511)
!1514 = !DILocation(line: 1340, column: 27, scope: !1511)
!1515 = !DILocation(line: 1340, column: 41, scope: !1511)
!1516 = !DILocation(line: 1340, column: 45, scope: !1517)
!1517 = !DILexicalBlockFile(scope: !1511, file: !459, discriminator: 1)
!1518 = !DILocation(line: 1340, column: 10, scope: !1517)
!1519 = !DILocation(line: 1341, column: 7, scope: !1511)
!1520 = !DILocation(line: 1342, column: 6, scope: !1512)
!1521 = !DILocation(line: 1345, column: 9, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1499, file: !459, line: 1345, column: 9)
!1523 = !DILocation(line: 1345, column: 12, scope: !1522)
!1524 = !DILocation(line: 1345, column: 22, scope: !1522)
!1525 = !DILocation(line: 1345, column: 9, scope: !1499)
!1526 = !DILocation(line: 1346, column: 6, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1522, file: !459, line: 1345, column: 63)
!1528 = !DILocation(line: 1348, column: 6, scope: !1527)
!1529 = !DILocation(line: 1351, column: 9, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1499, file: !459, line: 1351, column: 9)
!1531 = !DILocation(line: 1351, column: 11, scope: !1530)
!1532 = !DILocation(line: 1351, column: 15, scope: !1533)
!1533 = !DILexicalBlockFile(scope: !1530, file: !459, discriminator: 1)
!1534 = !DILocation(line: 1351, column: 20, scope: !1533)
!1535 = !DILocation(line: 1351, column: 26, scope: !1533)
!1536 = !DILocation(line: 1351, column: 37, scope: !1533)
!1537 = !DILocation(line: 1352, column: 11, scope: !1530)
!1538 = !DILocation(line: 1352, column: 14, scope: !1530)
!1539 = !DILocation(line: 1352, column: 25, scope: !1530)
!1540 = !DILocation(line: 1352, column: 41, scope: !1530)
!1541 = !DILocation(line: 1353, column: 11, scope: !1530)
!1542 = !DILocation(line: 1353, column: 14, scope: !1530)
!1543 = !DILocation(line: 1353, column: 25, scope: !1530)
!1544 = !DILocation(line: 1351, column: 9, scope: !1545)
!1545 = !DILexicalBlockFile(scope: !1499, file: !459, discriminator: 2)
!1546 = !DILocation(line: 1354, column: 6, scope: !1530)
!1547 = !DILocation(line: 1360, column: 9, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1499, file: !459, line: 1360, column: 9)
!1549 = !DILocation(line: 1360, column: 11, scope: !1548)
!1550 = !DILocation(line: 1360, column: 14, scope: !1551)
!1551 = !DILexicalBlockFile(scope: !1548, file: !459, discriminator: 1)
!1552 = !DILocation(line: 1360, column: 19, scope: !1551)
!1553 = !DILocation(line: 1360, column: 25, scope: !1551)
!1554 = !DILocation(line: 1360, column: 42, scope: !1551)
!1555 = !DILocation(line: 1361, column: 9, scope: !1548)
!1556 = !DILocation(line: 1361, column: 12, scope: !1548)
!1557 = !DILocation(line: 1361, column: 23, scope: !1548)
!1558 = !DILocation(line: 1360, column: 9, scope: !1545)
!1559 = !DILocation(line: 1362, column: 12, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !459, line: 1362, column: 10)
!1561 = distinct !DILexicalBlock(scope: !1548, file: !459, line: 1361, column: 38)
!1562 = !DILocation(line: 1362, column: 15, scope: !1560)
!1563 = !DILocation(line: 1362, column: 27, scope: !1560)
!1564 = !DILocation(line: 1362, column: 10, scope: !1561)
!1565 = !DILocation(line: 1363, column: 7, scope: !1560)
!1566 = !DILocation(line: 1364, column: 6, scope: !1561)
!1567 = !DILocation(line: 1367, column: 9, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1499, file: !459, line: 1367, column: 9)
!1569 = !DILocation(line: 1367, column: 34, scope: !1568)
!1570 = !DILocation(line: 1367, column: 39, scope: !1568)
!1571 = !DILocation(line: 1367, column: 33, scope: !1568)
!1572 = !DILocation(line: 1367, column: 30, scope: !1568)
!1573 = !DILocation(line: 1367, column: 9, scope: !1499)
!1574 = !DILocation(line: 1371, column: 23, scope: !1568)
!1575 = !DILocation(line: 1371, column: 28, scope: !1568)
!1576 = !DILocation(line: 1371, column: 22, scope: !1568)
!1577 = !DILocation(line: 1371, column: 13, scope: !1568)
!1578 = !DILocation(line: 1372, column: 13, scope: !1568)
!1579 = !DILocation(line: 1372, column: 18, scope: !1568)
!1580 = !DILocation(line: 1372, column: 22, scope: !1568)
!1581 = !DILocation(line: 1373, column: 13, scope: !1568)
!1582 = !DILocation(line: 1373, column: 18, scope: !1568)
!1583 = !DILocation(line: 1373, column: 22, scope: !1568)
!1584 = !DILocation(line: 1373, column: 33, scope: !1568)
!1585 = !DILocation(line: 1373, column: 38, scope: !1568)
!1586 = !DILocation(line: 1373, column: 42, scope: !1568)
!1587 = !DILocation(line: 1369, column: 6, scope: !1568)
!1588 = !DILocation(line: 1375, column: 5, scope: !1499)
!1589 = !DILocation(line: 1382, column: 8, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1487, file: !459, line: 1382, column: 8)
!1591 = !DILocation(line: 1382, column: 18, scope: !1590)
!1592 = !DILocation(line: 1382, column: 36, scope: !1590)
!1593 = !DILocation(line: 1384, column: 8, scope: !1590)
!1594 = !DILocation(line: 1384, column: 11, scope: !1590)
!1595 = !DILocation(line: 1384, column: 22, scope: !1590)
!1596 = !DILocation(line: 1384, column: 37, scope: !1590)
!1597 = !DILocation(line: 1385, column: 8, scope: !1590)
!1598 = !DILocation(line: 1385, column: 11, scope: !1590)
!1599 = !DILocation(line: 1385, column: 22, scope: !1590)
!1600 = !DILocation(line: 1385, column: 25, scope: !1601)
!1601 = !DILexicalBlockFile(scope: !1590, file: !459, discriminator: 1)
!1602 = !DILocation(line: 1385, column: 28, scope: !1601)
!1603 = !DILocation(line: 1385, column: 48, scope: !1601)
!1604 = !DILocation(line: 1385, column: 38, scope: !1601)
!1605 = !DILocation(line: 1382, column: 8, scope: !1606)
!1606 = !DILexicalBlockFile(scope: !1487, file: !459, discriminator: 1)
!1607 = !DILocation(line: 1387, column: 5, scope: !1590)
!1608 = !DILocation(line: 1390, column: 14, scope: !1487)
!1609 = !DILocation(line: 1390, column: 29, scope: !1487)
!1610 = !DILocation(line: 1390, column: 12, scope: !1487)
!1611 = !DILocation(line: 1390, column: 10, scope: !1487)
!1612 = !DILocation(line: 1391, column: 8, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1487, file: !459, line: 1391, column: 8)
!1614 = !DILocation(line: 1391, column: 14, scope: !1613)
!1615 = !DILocation(line: 1391, column: 8, scope: !1487)
!1616 = !DILocation(line: 1392, column: 5, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1613, file: !459, line: 1391, column: 19)
!1618 = !DILocation(line: 1393, column: 11, scope: !1617)
!1619 = !DILocation(line: 1393, column: 9, scope: !1617)
!1620 = !DILocation(line: 1394, column: 4, scope: !1617)
!1621 = !DILocation(line: 1396, column: 10, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1487, file: !459, line: 1396, column: 8)
!1623 = !DILocation(line: 1396, column: 13, scope: !1622)
!1624 = !DILocation(line: 1396, column: 25, scope: !1622)
!1625 = !DILocation(line: 1396, column: 39, scope: !1622)
!1626 = !DILocation(line: 1396, column: 43, scope: !1627)
!1627 = !DILexicalBlockFile(scope: !1622, file: !459, discriminator: 1)
!1628 = !DILocation(line: 1396, column: 8, scope: !1627)
!1629 = !DILocation(line: 1397, column: 12, scope: !1622)
!1630 = !DILocation(line: 1397, column: 5, scope: !1622)
!1631 = !DILocation(line: 1398, column: 3, scope: !1487)
!1632 = !DILocation(line: 1326, column: 69, scope: !1633)
!1633 = !DILexicalBlockFile(scope: !1468, file: !459, discriminator: 5)
!1634 = !DILocation(line: 1326, column: 72, scope: !1633)
!1635 = !DILocation(line: 1326, column: 82, scope: !1633)
!1636 = !DILocation(line: 1326, column: 86, scope: !1633)
!1637 = !DILocation(line: 1326, column: 90, scope: !1633)
!1638 = !DILocation(line: 1326, column: 74, scope: !1633)
!1639 = !DILocation(line: 1326, column: 71, scope: !1633)
!1640 = !DILocation(line: 1326, column: 124, scope: !1633)
!1641 = !DILocation(line: 1326, column: 104, scope: !1633)
!1642 = !DILocation(line: 1326, column: 67, scope: !1633)
!1643 = !DILocation(line: 1326, column: 3, scope: !1633)
!1644 = distinct !{!1644, !1645}
!1645 = !DILocation(line: 1326, column: 3, scope: !1382)
!1646 = !DILocation(line: 1401, column: 11, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1382, file: !459, line: 1401, column: 7)
!1648 = !DILocation(line: 1401, column: 21, scope: !1647)
!1649 = !DILocation(line: 1401, column: 7, scope: !1382)
!1650 = !DILocation(line: 1402, column: 4, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1647, file: !459, line: 1401, column: 33)
!1652 = !DILocation(line: 1403, column: 4, scope: !1651)
!1653 = !DILocation(line: 1405, column: 7, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1382, file: !459, line: 1405, column: 7)
!1655 = !DILocation(line: 1405, column: 7, scope: !1382)
!1656 = !DILocation(line: 1407, column: 11, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1654, file: !459, line: 1405, column: 15)
!1658 = !DILocation(line: 1406, column: 4, scope: !1657)
!1659 = !DILocation(line: 1408, column: 4, scope: !1657)
!1660 = !DILocation(line: 1410, column: 2, scope: !1359)
!1661 = !DILocation(line: 1410, column: 2, scope: !1662)
!1662 = !DILexicalBlockFile(scope: !1359, file: !459, discriminator: 1)
!1663 = !DILocation(line: 1280, column: 2, scope: !1662)
!1664 = !DILocation(line: 1412, column: 9, scope: !1359)
!1665 = !DILocation(line: 1412, column: 2, scope: !1359)
!1666 = !DILocation(line: 1413, column: 1, scope: !1359)
!1667 = distinct !DISubprogram(name: "netlink_talk_filter", scope: !459, file: !459, line: 1418, type: !1363, isLocal: true, isDefinition: true, scopeLine: 1419, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!1668 = !DILocalVariable(name: "snl", arg: 1, scope: !1667, file: !459, line: 1418, type: !1365)
!1669 = !DILocation(line: 1418, column: 65, scope: !1667)
!1670 = !DILocalVariable(name: "h", arg: 2, scope: !1667, file: !459, line: 1418, type: !392)
!1671 = !DILocation(line: 1418, column: 87, scope: !1667)
!1672 = !DILocation(line: 1420, column: 64, scope: !1667)
!1673 = !DILocation(line: 1420, column: 67, scope: !1667)
!1674 = !DILocation(line: 1420, column: 2, scope: !1667)
!1675 = !DILocation(line: 1422, column: 2, scope: !1667)
!1676 = distinct !DISubprogram(name: "process_if_status_change", scope: !459, file: !459, line: 1538, type: !1677, isLocal: false, isDefinition: true, scopeLine: 1539, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{null, !1679}
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64, align: 64)
!1680 = !DIDerivedType(tag: DW_TAG_typedef, name: "interface_t", file: !233, line: 111, baseType: !1681)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_interface", file: !233, line: 76, size: 1792, align: 64, elements: !1682)
!1682 = !{!1683, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1698, !1699, !1700, !1701, !1702, !1703, !1705, !1706, !1707, !1708, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "ifname", scope: !1681, file: !233, line: 77, baseType: !1684, size: 128, align: 8)
!1684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 128, align: 8, elements: !436)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !1681, file: !233, line: 78, baseType: !423, size: 32, align: 32, offset: 128)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !1681, file: !233, line: 79, baseType: !448, size: 32, align: 32, offset: 160)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !1681, file: !233, line: 80, baseType: !426, size: 128, align: 32, offset: 192)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "ifi_flags", scope: !1681, file: !233, line: 81, baseType: !391, size: 32, align: 32, offset: 320)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "linkbeat_use_polling", scope: !1681, file: !233, line: 82, baseType: !609, size: 8, align: 8, offset: 352)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !1681, file: !233, line: 83, baseType: !389, size: 32, align: 32, offset: 384)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "hw_type", scope: !1681, file: !233, line: 84, baseType: !384, size: 16, align: 16, offset: 416)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr", scope: !1681, file: !233, line: 85, baseType: !1693, size: 256, align: 8, offset: 432)
!1693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1694, size: 256, align: 8, elements: !1696)
!1694 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !454, line: 33, baseType: !1695)
!1695 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !562, line: 30, baseType: !435)
!1696 = !{!1697}
!1697 = !DISubrange(count: 32)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_bcast", scope: !1681, file: !233, line: 86, baseType: !1693, size: 256, align: 8, offset: 688)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_len", scope: !1681, file: !233, line: 87, baseType: !404, size: 64, align: 64, offset: 960)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "lb_type", scope: !1681, file: !233, line: 88, baseType: !407, size: 32, align: 32, offset: 1024)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "vmac", scope: !1681, file: !233, line: 90, baseType: !609, size: 8, align: 8, offset: 1056)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifindex", scope: !1681, file: !233, line: 91, baseType: !423, size: 32, align: 32, offset: 1088)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifp", scope: !1681, file: !233, line: 92, baseType: !1704, size: 64, align: 64, offset: 1152)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64, align: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifindex", scope: !1681, file: !233, line: 94, baseType: !423, size: 32, align: 32, offset: 1216)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifp", scope: !1681, file: !233, line: 96, baseType: !1704, size: 64, align: 64, offset: 1280)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master", scope: !1681, file: !233, line: 97, baseType: !609, size: 8, align: 8, offset: 1344)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "garp_delay", scope: !1681, file: !233, line: 100, baseType: !1709, size: 64, align: 64, offset: 1408)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64, align: 64)
!1710 = !DIDerivedType(tag: DW_TAG_typedef, name: "garp_delay_t", file: !233, line: 73, baseType: !1711)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_garp_delay", file: !233, line: 65, size: 704, align: 64, elements: !1712)
!1712 = !{!1713, !1714, !1715, !1716, !1717, !1718, !1719}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "garp_interval", scope: !1711, file: !233, line: 66, baseType: !617, size: 128, align: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "have_garp_interval", scope: !1711, file: !233, line: 67, baseType: !609, size: 8, align: 8, offset: 128)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "gna_interval", scope: !1711, file: !233, line: 68, baseType: !617, size: 128, align: 64, offset: 192)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "have_gna_interval", scope: !1711, file: !233, line: 69, baseType: !609, size: 8, align: 8, offset: 320)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "garp_next_time", scope: !1711, file: !233, line: 70, baseType: !617, size: 128, align: 64, offset: 384)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "gna_next_time", scope: !1711, file: !233, line: 71, baseType: !617, size: 128, align: 64, offset: 512)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "aggregation_group", scope: !1711, file: !233, line: 72, baseType: !407, size: 32, align: 32, offset: 640)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "gna_router", scope: !1681, file: !233, line: 101, baseType: !609, size: 8, align: 8, offset: 1472)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_config", scope: !1681, file: !233, line: 102, baseType: !407, size: 32, align: 32, offset: 1504)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_ignore_value", scope: !1681, file: !233, line: 103, baseType: !389, size: 32, align: 32, offset: 1536)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_filter_value", scope: !1681, file: !233, line: 104, baseType: !389, size: 32, align: 32, offset: 1568)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "reset_promote_secondaries", scope: !1681, file: !233, line: 105, baseType: !389, size: 32, align: 32, offset: 1600)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "rp_filter", scope: !1681, file: !233, line: 107, baseType: !391, size: 32, align: 32, offset: 1632)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "promote_secondaries_already_set", scope: !1681, file: !233, line: 109, baseType: !609, size: 8, align: 8, offset: 1664)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "tracking_vrrp", scope: !1681, file: !233, line: 110, baseType: !509, size: 64, align: 64, offset: 1728)
!1728 = !DILocalVariable(name: "ifp", arg: 1, scope: !1676, file: !459, line: 1538, type: !1679)
!1729 = !DILocation(line: 1538, column: 39, scope: !1676)
!1730 = !DILocalVariable(name: "vrrp", scope: !1676, file: !459, line: 1540, type: !1731)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64, align: 64)
!1732 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_t", file: !58, line: 310, baseType: !1733)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_t", file: !58, line: 183, size: 7040, align: 64, elements: !1734)
!1734 = !{!1735, !1736, !1737, !1785, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1825, !1826, !1827, !1828, !1829, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1901, !1908}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !1733, file: !58, line: 184, baseType: !417, size: 16, align: 16)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !1733, file: !58, line: 185, baseType: !386, size: 64, align: 64, offset: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1733, file: !58, line: 186, baseType: !1738, size: 64, align: 64, offset: 128)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64, align: 64)
!1739 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_sgroup_t", file: !58, line: 133, baseType: !1740)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_sgroup", file: !58, line: 109, size: 1024, align: 64, elements: !1741)
!1741 = !{!1742, !1743, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1779, !1780, !1781, !1782, !1783, !1784}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !1740, file: !58, line: 110, baseType: !386, size: 64, align: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !1740, file: !58, line: 111, baseType: !1744, size: 64, align: 64, offset: 64)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64, align: 64)
!1745 = !DIDerivedType(tag: DW_TAG_typedef, name: "vector_t", file: !1746, line: 34, baseType: !1747)
!1746 = !DIFile(filename: "../../lib/vector.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vector", file: !1746, line: 30, size: 128, align: 64, elements: !1748)
!1748 = !{!1749, !1750, !1751}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1747, file: !1746, line: 31, baseType: !391, size: 32, align: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !1747, file: !1746, line: 32, baseType: !391, size: 32, align: 32, offset: 32)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !1747, file: !1746, line: 33, baseType: !1752, size: 64, align: 64, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64, align: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp_instances", scope: !1740, file: !58, line: 112, baseType: !509, size: 64, align: 64, offset: 128)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "num_member_fault", scope: !1740, file: !58, line: 113, baseType: !391, size: 32, align: 32, offset: 192)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "num_member_init", scope: !1740, file: !58, line: 114, baseType: !391, size: 32, align: 32, offset: 224)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1740, file: !58, line: 115, baseType: !407, size: 32, align: 32, offset: 256)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "sgroup_tracking_weight", scope: !1740, file: !58, line: 116, baseType: !609, size: 8, align: 8, offset: 288)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "track_ifp", scope: !1740, file: !58, line: 119, baseType: !509, size: 64, align: 64, offset: 320)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "track_script", scope: !1740, file: !58, line: 120, baseType: !509, size: 64, align: 64, offset: 384)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "track_file", scope: !1740, file: !58, line: 121, baseType: !509, size: 64, align: 64, offset: 448)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "track_bfd", scope: !1740, file: !58, line: 122, baseType: !509, size: 64, align: 64, offset: 512)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "notify_exec", scope: !1740, file: !58, line: 125, baseType: !609, size: 8, align: 8, offset: 576)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "script_backup", scope: !1740, file: !58, line: 126, baseType: !1764, size: 64, align: 64, offset: 640)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64, align: 64)
!1765 = !DIDerivedType(tag: DW_TAG_typedef, name: "notify_script_t", file: !1766, line: 65, baseType: !1767)
!1766 = !DIFile(filename: "../../lib/notify.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_notify_script", file: !1766, line: 59, size: 192, align: 64, elements: !1768)
!1768 = !{!1769, !1771, !1772, !1773, !1776}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1767, file: !1766, line: 60, baseType: !1770, size: 64, align: 64)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64, align: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !1767, file: !1766, line: 61, baseType: !407, size: 32, align: 32, offset: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1767, file: !1766, line: 62, baseType: !407, size: 32, align: 32, offset: 96)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1767, file: !1766, line: 63, baseType: !1774, size: 32, align: 32, offset: 128)
!1774 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !454, line: 80, baseType: !1775)
!1775 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !562, line: 125, baseType: !391)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1767, file: !1766, line: 64, baseType: !1777, size: 32, align: 32, offset: 160)
!1777 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !454, line: 65, baseType: !1778)
!1778 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !562, line: 126, baseType: !391)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "script_master", scope: !1740, file: !58, line: 127, baseType: !1764, size: 64, align: 64, offset: 704)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "script_fault", scope: !1740, file: !58, line: 128, baseType: !1764, size: 64, align: 64, offset: 768)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "script_stop", scope: !1740, file: !58, line: 129, baseType: !1764, size: 64, align: 64, offset: 832)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "script", scope: !1740, file: !58, line: 130, baseType: !1764, size: 64, align: 64, offset: 896)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !1740, file: !58, line: 131, baseType: !407, size: 32, align: 32, offset: 960)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "last_email_state", scope: !1740, file: !58, line: 132, baseType: !407, size: 32, align: 32, offset: 992)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1733, file: !58, line: 187, baseType: !1786, size: 64, align: 64, offset: 192)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64, align: 64)
!1787 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_stats", file: !58, line: 169, baseType: !1788)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_stats", file: !58, line: 136, size: 768, align: 64, elements: !1789)
!1789 = !{!1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "advert_rcvd", scope: !1788, file: !58, line: 137, baseType: !456, size: 64, align: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "advert_sent", scope: !1788, file: !58, line: 138, baseType: !389, size: 32, align: 32, offset: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "become_master", scope: !1788, file: !58, line: 140, baseType: !389, size: 32, align: 32, offset: 96)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "release_master", scope: !1788, file: !58, line: 141, baseType: !389, size: 32, align: 32, offset: 128)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "packet_len_err", scope: !1788, file: !58, line: 143, baseType: !456, size: 64, align: 64, offset: 192)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "advert_interval_err", scope: !1788, file: !58, line: 144, baseType: !456, size: 64, align: 64, offset: 256)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "ip_ttl_err", scope: !1788, file: !58, line: 145, baseType: !456, size: 64, align: 64, offset: 320)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_type_rcvd", scope: !1788, file: !58, line: 146, baseType: !456, size: 64, align: 64, offset: 384)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "addr_list_err", scope: !1788, file: !58, line: 147, baseType: !456, size: 64, align: 64, offset: 448)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_authtype", scope: !1788, file: !58, line: 149, baseType: !389, size: 32, align: 32, offset: 512)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "authtype_mismatch", scope: !1788, file: !58, line: 151, baseType: !389, size: 32, align: 32, offset: 544)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "auth_failure", scope: !1788, file: !58, line: 152, baseType: !389, size: 32, align: 32, offset: 576)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "pri_zero_rcvd", scope: !1788, file: !58, line: 155, baseType: !456, size: 64, align: 64, offset: 640)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "pri_zero_sent", scope: !1788, file: !58, line: 156, baseType: !456, size: 64, align: 64, offset: 704)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "ifp", scope: !1733, file: !58, line: 188, baseType: !1679, size: 64, align: 64, offset: 256)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "dont_track_primary", scope: !1733, file: !58, line: 189, baseType: !609, size: 8, align: 8, offset: 320)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "linkbeat_use_polling", scope: !1733, file: !58, line: 190, baseType: !609, size: 8, align: 8, offset: 328)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "skip_check_adv_addr", scope: !1733, file: !58, line: 191, baseType: !609, size: 8, align: 8, offset: 336)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "strict_mode", scope: !1733, file: !58, line: 193, baseType: !391, size: 32, align: 32, offset: 352)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "vmac_flags", scope: !1733, file: !58, line: 195, baseType: !406, size: 64, align: 64, offset: 384)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "vmac_ifname", scope: !1733, file: !58, line: 196, baseType: !1684, size: 128, align: 8, offset: 448)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "track_ifp", scope: !1733, file: !58, line: 198, baseType: !509, size: 64, align: 64, offset: 576)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "track_script", scope: !1733, file: !58, line: 199, baseType: !509, size: 64, align: 64, offset: 640)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "track_file", scope: !1733, file: !58, line: 200, baseType: !509, size: 64, align: 64, offset: 704)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "num_script_if_fault", scope: !1733, file: !58, line: 204, baseType: !391, size: 32, align: 32, offset: 768)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "num_script_init", scope: !1733, file: !58, line: 205, baseType: !391, size: 32, align: 32, offset: 800)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !1733, file: !58, line: 206, baseType: !1817, size: 1024, align: 64, offset: 832)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !166, line: 166, size: 1024, align: 64, elements: !1818)
!1818 = !{!1819, !1820, !1824}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !1817, file: !166, line: 168, baseType: !417, size: 16, align: 16)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !1817, file: !166, line: 169, baseType: !1821, size: 944, align: 8, offset: 16)
!1821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 944, align: 8, elements: !1822)
!1822 = !{!1823}
!1823 = !DISubrange(count: 118)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !1817, file: !166, line: 170, baseType: !406, size: 64, align: 64, offset: 960)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "saddr_from_config", scope: !1733, file: !58, line: 207, baseType: !609, size: 8, align: 8, offset: 1856)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "track_saddr", scope: !1733, file: !58, line: 208, baseType: !609, size: 8, align: 8, offset: 1864)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_saddr", scope: !1733, file: !58, line: 209, baseType: !1817, size: 1024, align: 64, offset: 1920)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "unicast_peer", scope: !1733, file: !58, line: 210, baseType: !509, size: 64, align: 64, offset: 2944)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "unicast_chksum_compat", scope: !1733, file: !58, line: 212, baseType: !1830, size: 32, align: 32, offset: 3008)
!1830 = !DIDerivedType(tag: DW_TAG_typedef, name: "chksum_compatibility_t", file: !58, line: 179, baseType: !57)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "master_saddr", scope: !1733, file: !58, line: 214, baseType: !1817, size: 1024, align: 64, offset: 3072)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "master_priority", scope: !1733, file: !58, line: 215, baseType: !434, size: 8, align: 8, offset: 4096)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "last_transition", scope: !1733, file: !58, line: 216, baseType: !617, size: 128, align: 64, offset: 4160)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "garp_delay", scope: !1733, file: !58, line: 217, baseType: !391, size: 32, align: 32, offset: 4288)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh", scope: !1733, file: !58, line: 218, baseType: !617, size: 128, align: 64, offset: 4352)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh_timer", scope: !1733, file: !58, line: 219, baseType: !617, size: 128, align: 64, offset: 4480)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "garp_rep", scope: !1733, file: !58, line: 220, baseType: !391, size: 32, align: 32, offset: 4608)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh_rep", scope: !1733, file: !58, line: 221, baseType: !391, size: 32, align: 32, offset: 4640)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "garp_lower_prio_delay", scope: !1733, file: !58, line: 222, baseType: !391, size: 32, align: 32, offset: 4672)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "garp_pending", scope: !1733, file: !58, line: 223, baseType: !609, size: 8, align: 8, offset: 4704)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "gna_pending", scope: !1733, file: !58, line: 224, baseType: !609, size: 8, align: 8, offset: 4712)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "garp_lower_prio_rep", scope: !1733, file: !58, line: 225, baseType: !391, size: 32, align: 32, offset: 4736)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "lower_prio_no_advert", scope: !1733, file: !58, line: 226, baseType: !391, size: 32, align: 32, offset: 4768)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "higher_prio_send_advert", scope: !1733, file: !58, line: 227, baseType: !391, size: 32, align: 32, offset: 4800)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "vrid", scope: !1733, file: !58, line: 228, baseType: !434, size: 8, align: 8, offset: 4832)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "base_priority", scope: !1733, file: !58, line: 229, baseType: !434, size: 8, align: 8, offset: 4840)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "effective_priority", scope: !1733, file: !58, line: 230, baseType: !434, size: 8, align: 8, offset: 4848)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "total_priority", scope: !1733, file: !58, line: 231, baseType: !407, size: 32, align: 32, offset: 4864)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "vipset", scope: !1733, file: !58, line: 233, baseType: !609, size: 8, align: 8, offset: 4896)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "vip", scope: !1733, file: !58, line: 234, baseType: !509, size: 64, align: 64, offset: 4928)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "evip", scope: !1733, file: !58, line: 235, baseType: !509, size: 64, align: 64, offset: 4992)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "promote_secondaries", scope: !1733, file: !58, line: 239, baseType: !609, size: 8, align: 8, offset: 5056)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "evip_add_ipv6", scope: !1733, file: !58, line: 240, baseType: !609, size: 8, align: 8, offset: 5064)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "vroutes", scope: !1733, file: !58, line: 241, baseType: !509, size: 64, align: 64, offset: 5120)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "vrules", scope: !1733, file: !58, line: 242, baseType: !509, size: 64, align: 64, offset: 5184)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "adver_int", scope: !1733, file: !58, line: 243, baseType: !391, size: 32, align: 32, offset: 5248)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "master_adver_int", scope: !1733, file: !58, line: 244, baseType: !391, size: 32, align: 32, offset: 5280)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !1733, file: !58, line: 249, baseType: !391, size: 32, align: 32, offset: 5312)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_rx_buf_size", scope: !1733, file: !58, line: 252, baseType: !404, size: 64, align: 64, offset: 5376)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "iptable_rules_set", scope: !1733, file: !58, line: 254, baseType: !609, size: 8, align: 8, offset: 5440)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "nopreempt", scope: !1733, file: !58, line: 255, baseType: !609, size: 8, align: 8, offset: 5448)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_delay", scope: !1733, file: !58, line: 256, baseType: !406, size: 64, align: 64, offset: 5504)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_time", scope: !1733, file: !58, line: 260, baseType: !617, size: 128, align: 64, offset: 5568)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1733, file: !58, line: 261, baseType: !407, size: 32, align: 32, offset: 5696)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "wantstate", scope: !1733, file: !58, line: 265, baseType: !407, size: 32, align: 32, offset: 5728)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "reload_master", scope: !1733, file: !58, line: 266, baseType: !609, size: 8, align: 8, offset: 5760)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "sockets", scope: !1733, file: !58, line: 267, baseType: !1868, size: 64, align: 64, offset: 5824)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64, align: 64)
!1869 = !DIDerivedType(tag: DW_TAG_typedef, name: "sock_t", file: !1870, line: 50, baseType: !1871)
!1870 = !DIFile(filename: "./../include/vrrp_sock.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sock", file: !1870, line: 40, size: 1344, align: 64, elements: !1872)
!1872 = !{!1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !1871, file: !1870, line: 41, baseType: !417, size: 16, align: 16)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !1871, file: !1870, line: 42, baseType: !1817, size: 1024, align: 64, offset: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !1871, file: !1870, line: 43, baseType: !407, size: 32, align: 32, offset: 1088)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !1871, file: !1870, line: 44, baseType: !423, size: 32, align: 32, offset: 1120)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "unicast", scope: !1871, file: !1870, line: 45, baseType: !609, size: 8, align: 8, offset: 1152)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "fd_in", scope: !1871, file: !1870, line: 46, baseType: !407, size: 32, align: 32, offset: 1184)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "fd_out", scope: !1871, file: !1870, line: 47, baseType: !407, size: 32, align: 32, offset: 1216)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "rx_buf_size", scope: !1871, file: !1870, line: 48, baseType: !407, size: 32, align: 32, offset: 1248)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1871, file: !1870, line: 49, baseType: !472, size: 64, align: 64, offset: 1280)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !1733, file: !58, line: 269, baseType: !407, size: 32, align: 32, offset: 5888)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1733, file: !58, line: 271, baseType: !407, size: 32, align: 32, offset: 5920)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !1733, file: !58, line: 274, baseType: !407, size: 32, align: 32, offset: 5952)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "last_email_state", scope: !1733, file: !58, line: 275, baseType: !407, size: 32, align: 32, offset: 5984)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "notify_exec", scope: !1733, file: !58, line: 276, baseType: !609, size: 8, align: 8, offset: 6016)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "script_backup", scope: !1733, file: !58, line: 277, baseType: !1764, size: 64, align: 64, offset: 6080)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "script_master", scope: !1733, file: !58, line: 278, baseType: !1764, size: 64, align: 64, offset: 6144)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "script_fault", scope: !1733, file: !58, line: 279, baseType: !1764, size: 64, align: 64, offset: 6208)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "script_stop", scope: !1733, file: !58, line: 280, baseType: !1764, size: 64, align: 64, offset: 6272)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "script_master_rx_lower_pri", scope: !1733, file: !58, line: 281, baseType: !1764, size: 64, align: 64, offset: 6336)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "script", scope: !1733, file: !58, line: 282, baseType: !1764, size: 64, align: 64, offset: 6400)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "ms_down_timer", scope: !1733, file: !58, line: 285, baseType: !389, size: 32, align: 32, offset: 6464)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "sands", scope: !1733, file: !58, line: 286, baseType: !617, size: 128, align: 64, offset: 6528)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "send_buffer", scope: !1733, file: !58, line: 289, baseType: !386, size: 64, align: 64, offset: 6656)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "send_buffer_size", scope: !1733, file: !58, line: 290, baseType: !404, size: 64, align: 64, offset: 6720)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_csum", scope: !1733, file: !58, line: 291, baseType: !389, size: 32, align: 32, offset: 6784)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "auth_type", scope: !1733, file: !58, line: 295, baseType: !434, size: 8, align: 8, offset: 6816)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "auth_data", scope: !1733, file: !58, line: 296, baseType: !1900, size: 64, align: 8, offset: 6824)
!1900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 64, align: 8, elements: !441)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "ipsecah_counter", scope: !1733, file: !58, line: 299, baseType: !1902, size: 64, align: 32, offset: 6912)
!1902 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_counter_t", file: !1903, line: 58, baseType: !1904)
!1903 = !DIFile(filename: "./../include/vrrp_ipsecah.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_seq_counter", file: !1903, line: 55, size: 64, align: 32, elements: !1905)
!1905 = !{!1906, !1907}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "cycle", scope: !1904, file: !1903, line: 56, baseType: !609, size: 8, align: 8)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "seq_number", scope: !1904, file: !1903, line: 57, baseType: !389, size: 32, align: 32, offset: 32)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "ip_id", scope: !1733, file: !58, line: 309, baseType: !407, size: 32, align: 32, offset: 6976)
!1909 = !DILocation(line: 1540, column: 10, scope: !1676)
!1910 = !DILocalVariable(name: "e", scope: !1676, file: !459, line: 1541, type: !1911)
!1911 = !DIDerivedType(tag: DW_TAG_typedef, name: "element", file: !510, line: 30, baseType: !515)
!1912 = !DILocation(line: 1541, column: 10, scope: !1676)
!1913 = !DILocalVariable(name: "tvp", scope: !1676, file: !459, line: 1542, type: !1914)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64, align: 64)
!1915 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracking_vrrp_t", file: !66, line: 136, baseType: !1916)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_tracking_vrrp", file: !66, line: 132, size: 192, align: 64, elements: !1917)
!1917 = !{!1918, !1919, !1921}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1916, file: !66, line: 133, baseType: !407, size: 32, align: 32)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp", scope: !1916, file: !66, line: 134, baseType: !1920, size: 64, align: 64, offset: 64)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64, align: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1916, file: !66, line: 135, baseType: !1922, size: 32, align: 32, offset: 128)
!1922 = !DIDerivedType(tag: DW_TAG_typedef, name: "track_t", file: !66, line: 129, baseType: !65)
!1923 = !DILocation(line: 1542, column: 19, scope: !1676)
!1924 = !DILocalVariable(name: "now_up", scope: !1676, file: !459, line: 1543, type: !609)
!1925 = !DILocation(line: 1543, column: 6, scope: !1676)
!1926 = !DILocation(line: 1543, column: 18, scope: !1676)
!1927 = !DILocation(line: 1543, column: 23, scope: !1676)
!1928 = !DILocation(line: 1543, column: 34, scope: !1676)
!1929 = !DILocation(line: 1547, column: 15, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1676, file: !459, line: 1547, column: 2)
!1931 = !DILocation(line: 1547, column: 20, scope: !1930)
!1932 = !DILocation(line: 1547, column: 14, scope: !1930)
!1933 = !DILocation(line: 1547, column: 40, scope: !1934)
!1934 = !DILexicalBlockFile(scope: !1930, file: !459, discriminator: 1)
!1935 = !DILocation(line: 1547, column: 45, scope: !1934)
!1936 = !DILocation(line: 1547, column: 39, scope: !1934)
!1937 = !DILocation(line: 1547, column: 38, scope: !1934)
!1938 = !DILocation(line: 1547, column: 38, scope: !1939)
!1939 = !DILexicalBlockFile(scope: !1930, file: !459, discriminator: 2)
!1940 = !DILocation(line: 1547, column: 4, scope: !1941)
!1941 = !DILexicalBlockFile(scope: !1930, file: !459, discriminator: 3)
!1942 = !DILocation(line: 1547, column: 9, scope: !1941)
!1943 = !DILocation(line: 1547, column: 25, scope: !1941)
!1944 = !DILocation(line: 1547, column: 38, scope: !1941)
!1945 = !DILocation(line: 1547, column: 38, scope: !1946)
!1946 = !DILexicalBlockFile(scope: !1930, file: !459, discriminator: 4)
!1947 = !DILocation(line: 1547, column: 14, scope: !1946)
!1948 = !DILocation(line: 1547, column: 14, scope: !1949)
!1949 = !DILexicalBlockFile(scope: !1930, file: !459, discriminator: 5)
!1950 = !DILocation(line: 1547, column: 14, scope: !1951)
!1951 = !DILexicalBlockFile(scope: !1930, file: !459, discriminator: 6)
!1952 = !DILocation(line: 1547, column: 11, scope: !1951)
!1953 = !DILocation(line: 1547, column: 7, scope: !1951)
!1954 = !DILocation(line: 1547, column: 5, scope: !1955)
!1955 = !DILexicalBlockFile(scope: !1956, file: !459, discriminator: 7)
!1956 = distinct !DILexicalBlock(scope: !1930, file: !459, line: 1547, column: 2)
!1957 = !DILocation(line: 1547, column: 4, scope: !1955)
!1958 = !DILocation(line: 1547, column: 8, scope: !1955)
!1959 = !DILocation(line: 1547, column: 22, scope: !1960)
!1960 = !DILexicalBlockFile(scope: !1956, file: !459, discriminator: 8)
!1961 = !DILocation(line: 1547, column: 26, scope: !1960)
!1962 = !DILocation(line: 1547, column: 20, scope: !1960)
!1963 = !DILocation(line: 1547, column: 18, scope: !1960)
!1964 = !DILocation(line: 1547, column: 2, scope: !1965)
!1965 = !DILexicalBlockFile(scope: !1930, file: !459, discriminator: 9)
!1966 = !DILocation(line: 1548, column: 10, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1956, file: !459, line: 1547, column: 56)
!1968 = !DILocation(line: 1548, column: 15, scope: !1967)
!1969 = !DILocation(line: 1548, column: 8, scope: !1967)
!1970 = !DILocation(line: 1550, column: 7, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1967, file: !459, line: 1550, column: 7)
!1972 = !DILocation(line: 1550, column: 12, scope: !1971)
!1973 = !DILocation(line: 1550, column: 19, scope: !1971)
!1974 = !DILocation(line: 1550, column: 7, scope: !1967)
!1975 = !DILocation(line: 1552, column: 4, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1971, file: !459, line: 1550, column: 27)
!1977 = !DILocation(line: 1555, column: 7, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1967, file: !459, line: 1555, column: 7)
!1979 = !DILocation(line: 1555, column: 12, scope: !1978)
!1980 = !DILocation(line: 1555, column: 7, scope: !1967)
!1981 = !DILocation(line: 1556, column: 8, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !459, line: 1556, column: 8)
!1983 = distinct !DILexicalBlock(scope: !1978, file: !459, line: 1555, column: 20)
!1984 = !DILocation(line: 1556, column: 8, scope: !1983)
!1985 = !DILocation(line: 1557, column: 33, scope: !1982)
!1986 = !DILocation(line: 1557, column: 38, scope: !1982)
!1987 = !DILocation(line: 1557, column: 29, scope: !1982)
!1988 = !DILocation(line: 1557, column: 5, scope: !1982)
!1989 = !DILocation(line: 1557, column: 11, scope: !1982)
!1990 = !DILocation(line: 1557, column: 26, scope: !1982)
!1991 = !DILocation(line: 1559, column: 33, scope: !1982)
!1992 = !DILocation(line: 1559, column: 38, scope: !1982)
!1993 = !DILocation(line: 1559, column: 29, scope: !1982)
!1994 = !DILocation(line: 1559, column: 5, scope: !1982)
!1995 = !DILocation(line: 1559, column: 11, scope: !1982)
!1996 = !DILocation(line: 1559, column: 26, scope: !1982)
!1997 = !DILocation(line: 1560, column: 32, scope: !1983)
!1998 = !DILocation(line: 1560, column: 4, scope: !1983)
!1999 = !DILocation(line: 1562, column: 4, scope: !1983)
!2000 = !DILocation(line: 1566, column: 7, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1967, file: !459, line: 1566, column: 7)
!2002 = !DILocation(line: 1566, column: 7, scope: !1967)
!2003 = !DILocation(line: 1567, column: 20, scope: !2001)
!2004 = !DILocation(line: 1567, column: 4, scope: !2001)
!2005 = !DILocation(line: 1569, column: 18, scope: !2001)
!2006 = !DILocation(line: 1569, column: 4, scope: !2001)
!2007 = !DILocation(line: 1570, column: 2, scope: !1967)
!2008 = !DILocation(line: 1547, column: 45, scope: !2009)
!2009 = !DILexicalBlockFile(scope: !1956, file: !459, discriminator: 10)
!2010 = !DILocation(line: 1547, column: 49, scope: !2009)
!2011 = !DILocation(line: 1547, column: 42, scope: !2009)
!2012 = !DILocation(line: 1547, column: 2, scope: !2009)
!2013 = distinct !{!2013, !2014}
!2014 = !DILocation(line: 1547, column: 2, scope: !1676)
!2015 = !DILocation(line: 1571, column: 1, scope: !1676)
!2016 = distinct !DISubprogram(name: "netlink_interface_lookup", scope: !459, file: !459, line: 1787, type: !2017, isLocal: false, isDefinition: true, scopeLine: 1788, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!407, !386}
!2019 = !DILocalVariable(name: "name", arg: 1, scope: !2016, file: !459, line: 1787, type: !386)
!2020 = !DILocation(line: 1787, column: 32, scope: !2016)
!2021 = !DILocation(line: 1797, column: 54, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2016, file: !459, line: 1797, column: 6)
!2023 = !DILocation(line: 1797, column: 6, scope: !2022)
!2024 = !DILocation(line: 1797, column: 60, scope: !2022)
!2025 = !DILocation(line: 1797, column: 6, scope: !2016)
!2026 = !DILocation(line: 1798, column: 3, scope: !2022)
!2027 = !DILocation(line: 1800, column: 9, scope: !2016)
!2028 = !DILocation(line: 1800, column: 2, scope: !2016)
!2029 = !DILocation(line: 1801, column: 1, scope: !2016)
!2030 = distinct !DISubprogram(name: "netlink_request", scope: !459, file: !459, line: 1488, type: !2031, isLocal: true, isDefinition: true, scopeLine: 1495, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!407, !1277, !435, !440, !386}
!2033 = !DILocalVariable(name: "nl", arg: 1, scope: !2030, file: !459, line: 1488, type: !1277)
!2034 = !DILocation(line: 1488, column: 30, scope: !2030)
!2035 = !DILocalVariable(name: "family", arg: 2, scope: !2030, file: !459, line: 1489, type: !435)
!2036 = !DILocation(line: 1489, column: 17, scope: !2030)
!2037 = !DILocalVariable(name: "type", arg: 3, scope: !2030, file: !459, line: 1490, type: !440)
!2038 = !DILocation(line: 1490, column: 12, scope: !2030)
!2039 = !DILocalVariable(name: "name", arg: 4, scope: !2030, file: !459, line: 1494, type: !386)
!2040 = !DILocation(line: 1494, column: 12, scope: !2030)
!2041 = !DILocalVariable(name: "status", scope: !2030, file: !459, line: 1496, type: !1275)
!2042 = !DILocation(line: 1496, column: 10, scope: !2030)
!2043 = !DILocalVariable(name: "snl", scope: !2030, file: !459, line: 1497, type: !1285)
!2044 = !DILocation(line: 1497, column: 21, scope: !2030)
!2045 = !DILocalVariable(name: "req", scope: !2030, file: !459, line: 1502, type: !2046)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2030, file: !459, line: 1498, size: 768, align: 32, elements: !2047)
!2047 = !{!2048, !2049, !2058}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "nlh", scope: !2046, file: !459, line: 1499, baseType: !393, size: 128, align: 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !2046, file: !459, line: 1500, baseType: !2050, size: 128, align: 32, offset: 128)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ifinfomsg", file: !25, line: 474, size: 128, align: 32, elements: !2051)
!2051 = !{!2052, !2053, !2054, !2055, !2056, !2057}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "ifi_family", scope: !2050, file: !25, line: 475, baseType: !435, size: 8, align: 8)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "__ifi_pad", scope: !2050, file: !25, line: 476, baseType: !435, size: 8, align: 8, offset: 8)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "ifi_type", scope: !2050, file: !25, line: 477, baseType: !384, size: 16, align: 16, offset: 16)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "ifi_index", scope: !2050, file: !25, line: 478, baseType: !407, size: 32, align: 32, offset: 32)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "ifi_flags", scope: !2050, file: !25, line: 479, baseType: !391, size: 32, align: 32, offset: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "ifi_change", scope: !2050, file: !25, line: 480, baseType: !391, size: 32, align: 32, offset: 96)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2046, file: !459, line: 1501, baseType: !2059, size: 512, align: 8, offset: 256)
!2059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 512, align: 8, elements: !2060)
!2060 = !{!2061}
!2061 = !DISubrange(count: 64)
!2062 = !DILocation(line: 1502, column: 4, scope: !2030)
!2063 = !DILocation(line: 1505, column: 2, scope: !2030)
!2064 = !DILocation(line: 1506, column: 6, scope: !2030)
!2065 = !DILocation(line: 1506, column: 16, scope: !2030)
!2066 = !DILocation(line: 1508, column: 2, scope: !2030)
!2067 = !DILocation(line: 1509, column: 6, scope: !2030)
!2068 = !DILocation(line: 1509, column: 10, scope: !2030)
!2069 = !DILocation(line: 1509, column: 20, scope: !2030)
!2070 = !DILocation(line: 1510, column: 23, scope: !2030)
!2071 = !DILocation(line: 1510, column: 6, scope: !2030)
!2072 = !DILocation(line: 1510, column: 10, scope: !2030)
!2073 = !DILocation(line: 1510, column: 21, scope: !2030)
!2074 = !DILocation(line: 1511, column: 6, scope: !2030)
!2075 = !DILocation(line: 1511, column: 10, scope: !2030)
!2076 = !DILocation(line: 1511, column: 22, scope: !2030)
!2077 = !DILocation(line: 1512, column: 6, scope: !2030)
!2078 = !DILocation(line: 1512, column: 10, scope: !2030)
!2079 = !DILocation(line: 1512, column: 20, scope: !2030)
!2080 = !DILocation(line: 1513, column: 24, scope: !2030)
!2081 = !DILocation(line: 1513, column: 28, scope: !2030)
!2082 = !DILocation(line: 1513, column: 22, scope: !2030)
!2083 = !DILocation(line: 1513, column: 6, scope: !2030)
!2084 = !DILocation(line: 1513, column: 10, scope: !2030)
!2085 = !DILocation(line: 1513, column: 20, scope: !2030)
!2086 = !DILocation(line: 1514, column: 21, scope: !2030)
!2087 = !DILocation(line: 1514, column: 6, scope: !2030)
!2088 = !DILocation(line: 1514, column: 8, scope: !2030)
!2089 = !DILocation(line: 1514, column: 19, scope: !2030)
!2090 = !DILocation(line: 1517, column: 6, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2030, file: !459, line: 1517, column: 6)
!2092 = !DILocation(line: 1517, column: 6, scope: !2030)
!2093 = !DILocation(line: 1518, column: 18, scope: !2091)
!2094 = !DILocation(line: 1518, column: 48, scope: !2091)
!2095 = !DILocation(line: 1518, column: 61, scope: !2091)
!2096 = !DILocation(line: 1518, column: 54, scope: !2091)
!2097 = !DILocation(line: 1518, column: 67, scope: !2091)
!2098 = !DILocation(line: 1518, column: 3, scope: !2099)
!2099 = !DILexicalBlockFile(scope: !2091, file: !459, discriminator: 1)
!2100 = !DILocation(line: 1518, column: 3, scope: !2091)
!2101 = !DILocation(line: 1521, column: 7, scope: !2091)
!2102 = !DILocation(line: 1521, column: 11, scope: !2091)
!2103 = !DILocation(line: 1521, column: 23, scope: !2091)
!2104 = !DILocation(line: 1523, column: 17, scope: !2030)
!2105 = !DILocation(line: 1523, column: 2, scope: !2030)
!2106 = !DILocation(line: 1526, column: 18, scope: !2030)
!2107 = !DILocation(line: 1526, column: 22, scope: !2030)
!2108 = !DILocation(line: 1526, column: 26, scope: !2030)
!2109 = !DILocation(line: 1527, column: 9, scope: !2030)
!2110 = !DILocation(line: 1526, column: 11, scope: !2030)
!2111 = !DILocation(line: 1526, column: 9, scope: !2030)
!2112 = !DILocation(line: 1528, column: 6, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2030, file: !459, line: 1528, column: 6)
!2114 = !DILocation(line: 1528, column: 13, scope: !2113)
!2115 = !DILocation(line: 1528, column: 6, scope: !2030)
!2116 = !DILocation(line: 1530, column: 20, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2113, file: !459, line: 1528, column: 18)
!2118 = !DILocation(line: 1530, column: 19, scope: !2117)
!2119 = !DILocation(line: 1530, column: 10, scope: !2120)
!2120 = !DILexicalBlockFile(scope: !2117, file: !459, discriminator: 1)
!2121 = !DILocation(line: 1529, column: 3, scope: !2117)
!2122 = !DILocation(line: 1531, column: 3, scope: !2117)
!2123 = !DILocation(line: 1533, column: 2, scope: !2030)
!2124 = !DILocation(line: 1534, column: 1, scope: !2030)
!2125 = distinct !DISubprogram(name: "netlink_if_link_filter", scope: !459, file: !459, line: 1744, type: !1363, isLocal: true, isDefinition: true, scopeLine: 1745, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!2126 = !DILocalVariable(name: "snl", arg: 1, scope: !2125, file: !459, line: 1744, type: !1365)
!2127 = !DILocation(line: 1744, column: 68, scope: !2125)
!2128 = !DILocalVariable(name: "h", arg: 2, scope: !2125, file: !459, line: 1744, type: !392)
!2129 = !DILocation(line: 1744, column: 90, scope: !2125)
!2130 = !DILocalVariable(name: "ifi", scope: !2125, file: !459, line: 1746, type: !2131)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64, align: 64)
!2132 = !DILocation(line: 1746, column: 20, scope: !2125)
!2133 = !DILocalVariable(name: "tb", scope: !2125, file: !459, line: 1747, type: !2134)
!2134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 2560, align: 64, elements: !2135)
!2135 = !{!2136}
!2136 = !DISubrange(count: 40)
!2137 = !DILocation(line: 1747, column: 17, scope: !2125)
!2138 = !DILocalVariable(name: "ifp", scope: !2125, file: !459, line: 1748, type: !1679)
!2139 = !DILocation(line: 1748, column: 15, scope: !2125)
!2140 = !DILocalVariable(name: "len", scope: !2125, file: !459, line: 1749, type: !404)
!2141 = !DILocation(line: 1749, column: 9, scope: !2125)
!2142 = !DILocalVariable(name: "name", scope: !2125, file: !459, line: 1750, type: !386)
!2143 = !DILocation(line: 1750, column: 8, scope: !2125)
!2144 = !DILocation(line: 1752, column: 7, scope: !2125)
!2145 = !DILocation(line: 1752, column: 17, scope: !2125)
!2146 = !DILocation(line: 1752, column: 9, scope: !2125)
!2147 = !DILocation(line: 1752, column: 6, scope: !2125)
!2148 = !DILocation(line: 1754, column: 6, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2125, file: !459, line: 1754, column: 6)
!2150 = !DILocation(line: 1754, column: 9, scope: !2149)
!2151 = !DILocation(line: 1754, column: 20, scope: !2149)
!2152 = !DILocation(line: 1754, column: 6, scope: !2125)
!2153 = !DILocation(line: 1755, column: 3, scope: !2149)
!2154 = !DILocation(line: 1757, column: 6, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2125, file: !459, line: 1757, column: 6)
!2156 = !DILocation(line: 1757, column: 9, scope: !2155)
!2157 = !DILocation(line: 1757, column: 19, scope: !2155)
!2158 = !DILocation(line: 1757, column: 6, scope: !2125)
!2159 = !DILocation(line: 1758, column: 3, scope: !2155)
!2160 = !DILocation(line: 1759, column: 8, scope: !2125)
!2161 = !DILocation(line: 1759, column: 11, scope: !2125)
!2162 = !DILocation(line: 1759, column: 21, scope: !2125)
!2163 = !DILocation(line: 1759, column: 6, scope: !2125)
!2164 = !DILocation(line: 1762, column: 2, scope: !2125)
!2165 = !DILocation(line: 1763, column: 15, scope: !2125)
!2166 = !DILocation(line: 1763, column: 28, scope: !2125)
!2167 = !DILocation(line: 1763, column: 47, scope: !2125)
!2168 = !DILocation(line: 1763, column: 31, scope: !2125)
!2169 = !DILocation(line: 1763, column: 29, scope: !2125)
!2170 = !DILocation(line: 1763, column: 43, scope: !2125)
!2171 = !DILocation(line: 1763, column: 2, scope: !2125)
!2172 = !DILocation(line: 1765, column: 6, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2125, file: !459, line: 1765, column: 6)
!2174 = !DILocation(line: 1765, column: 22, scope: !2173)
!2175 = !DILocation(line: 1765, column: 6, scope: !2125)
!2176 = !DILocation(line: 1766, column: 3, scope: !2173)
!2177 = !DILocation(line: 1767, column: 17, scope: !2125)
!2178 = !DILocation(line: 1767, column: 27, scope: !2125)
!2179 = !DILocation(line: 1767, column: 20, scope: !2125)
!2180 = !DILocation(line: 1767, column: 7, scope: !2125)
!2181 = !DILocation(line: 1770, column: 25, scope: !2125)
!2182 = !DILocation(line: 1770, column: 8, scope: !2125)
!2183 = !DILocation(line: 1770, column: 6, scope: !2125)
!2184 = !DILocation(line: 1772, column: 6, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2125, file: !459, line: 1772, column: 6)
!2186 = !DILocation(line: 1772, column: 11, scope: !2185)
!2187 = !DILocation(line: 1772, column: 6, scope: !2125)
!2188 = !DILocation(line: 1773, column: 26, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2185, file: !459, line: 1772, column: 20)
!2190 = !DILocation(line: 1773, column: 31, scope: !2189)
!2191 = !DILocation(line: 1773, column: 36, scope: !2189)
!2192 = !DILocation(line: 1773, column: 3, scope: !2189)
!2193 = !DILocation(line: 1775, column: 3, scope: !2189)
!2194 = !DILocation(line: 1779, column: 32, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2125, file: !459, line: 1779, column: 6)
!2196 = !DILocation(line: 1779, column: 37, scope: !2195)
!2197 = !DILocation(line: 1779, column: 41, scope: !2195)
!2198 = !DILocation(line: 1779, column: 7, scope: !2195)
!2199 = !DILocation(line: 1779, column: 6, scope: !2125)
!2200 = !DILocation(line: 1780, column: 3, scope: !2195)
!2201 = !DILocation(line: 1782, column: 2, scope: !2125)
!2202 = !DILocation(line: 1783, column: 1, scope: !2125)
!2203 = distinct !DISubprogram(name: "kernel_netlink_poll", scope: !459, file: !459, line: 2126, type: !653, isLocal: false, isDefinition: true, scopeLine: 2127, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!2204 = !DILocation(line: 2128, column: 17, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2203, file: !459, line: 2128, column: 6)
!2206 = !DILocation(line: 2128, column: 7, scope: !2205)
!2207 = !DILocation(line: 2128, column: 6, scope: !2203)
!2208 = !DILocation(line: 2129, column: 3, scope: !2205)
!2209 = !DILocation(line: 2131, column: 2, scope: !2203)
!2210 = !DILocation(line: 2132, column: 1, scope: !2203)
!2211 = !DILocation(line: 2132, column: 1, scope: !2212)
!2212 = !DILexicalBlockFile(scope: !2203, file: !459, discriminator: 1)
!2213 = distinct !DISubprogram(name: "netlink_broadcast_filter", scope: !459, file: !459, line: 2074, type: !1363, isLocal: true, isDefinition: true, scopeLine: 2075, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!2214 = !DILocalVariable(name: "snl", arg: 1, scope: !2213, file: !459, line: 2074, type: !1365)
!2215 = !DILocation(line: 2074, column: 46, scope: !2213)
!2216 = !DILocalVariable(name: "h", arg: 2, scope: !2213, file: !459, line: 2074, type: !392)
!2217 = !DILocation(line: 2074, column: 68, scope: !2213)
!2218 = !DILocation(line: 2076, column: 10, scope: !2213)
!2219 = !DILocation(line: 2076, column: 13, scope: !2213)
!2220 = !DILocation(line: 2076, column: 2, scope: !2213)
!2221 = !DILocation(line: 2086, column: 7, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !459, line: 2086, column: 7)
!2223 = distinct !DILexicalBlock(scope: !2213, file: !459, line: 2076, column: 25)
!2224 = !DILocation(line: 2086, column: 17, scope: !2222)
!2225 = !DILocation(line: 2086, column: 7, scope: !2223)
!2226 = !DILocation(line: 2088, column: 31, scope: !2222)
!2227 = !DILocation(line: 2088, column: 36, scope: !2222)
!2228 = !DILocation(line: 2088, column: 11, scope: !2222)
!2229 = !DILocation(line: 2088, column: 4, scope: !2222)
!2230 = !DILocation(line: 2090, column: 3, scope: !2223)
!2231 = !DILocation(line: 2093, column: 36, scope: !2223)
!2232 = !DILocation(line: 2093, column: 41, scope: !2223)
!2233 = !DILocation(line: 2093, column: 10, scope: !2223)
!2234 = !DILocation(line: 2093, column: 3, scope: !2223)
!2235 = !DILocation(line: 2098, column: 31, scope: !2223)
!2236 = !DILocation(line: 2098, column: 36, scope: !2223)
!2237 = !DILocation(line: 2098, column: 10, scope: !2223)
!2238 = !DILocation(line: 2098, column: 3, scope: !2223)
!2239 = !DILocation(line: 2101, column: 30, scope: !2223)
!2240 = !DILocation(line: 2101, column: 35, scope: !2223)
!2241 = !DILocation(line: 2101, column: 10, scope: !2223)
!2242 = !DILocation(line: 2101, column: 3, scope: !2223)
!2243 = !DILocation(line: 2106, column: 10, scope: !2223)
!2244 = !DILocation(line: 2106, column: 13, scope: !2223)
!2245 = !DILocation(line: 2104, column: 3, scope: !2223)
!2246 = !DILocation(line: 2107, column: 3, scope: !2223)
!2247 = !DILocation(line: 2109, column: 2, scope: !2213)
!2248 = !DILocation(line: 2110, column: 1, scope: !2213)
!2249 = distinct !DISubprogram(name: "kernel_netlink_set_recv_bufs", scope: !459, file: !459, line: 2136, type: !653, isLocal: false, isDefinition: true, scopeLine: 2137, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!2250 = !DILocation(line: 2148, column: 6, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2249, file: !459, line: 2148, column: 6)
!2252 = !DILocation(line: 2148, column: 16, scope: !2251)
!2253 = !DILocation(line: 2148, column: 6, scope: !2249)
!2254 = !DILocation(line: 2149, column: 39, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2251, file: !459, line: 2148, column: 35)
!2256 = !DILocation(line: 2149, column: 52, scope: !2255)
!2257 = !DILocation(line: 2149, column: 83, scope: !2255)
!2258 = !DILocation(line: 2149, column: 96, scope: !2255)
!2259 = !DILocation(line: 2149, column: 3, scope: !2255)
!2260 = !DILocation(line: 2150, column: 36, scope: !2255)
!2261 = !DILocation(line: 2150, column: 49, scope: !2255)
!2262 = !DILocation(line: 2150, column: 76, scope: !2255)
!2263 = !DILocation(line: 2150, column: 89, scope: !2255)
!2264 = !DILocation(line: 2150, column: 3, scope: !2255)
!2265 = !DILocation(line: 2151, column: 2, scope: !2255)
!2266 = !DILocation(line: 2154, column: 6, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2249, file: !459, line: 2154, column: 6)
!2268 = !DILocation(line: 2154, column: 16, scope: !2267)
!2269 = !DILocation(line: 2154, column: 6, scope: !2249)
!2270 = !DILocation(line: 2155, column: 39, scope: !2267)
!2271 = !DILocation(line: 2155, column: 52, scope: !2267)
!2272 = !DILocation(line: 2155, column: 82, scope: !2267)
!2273 = !DILocation(line: 2155, column: 95, scope: !2267)
!2274 = !DILocation(line: 2155, column: 3, scope: !2267)
!2275 = !DILocation(line: 2158, column: 1, scope: !2249)
!2276 = distinct !DISubprogram(name: "netlink_set_rx_buf_size", scope: !459, file: !459, line: 468, type: !2277, isLocal: true, isDefinition: true, scopeLine: 469, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{!407, !1277, !391, !609}
!2279 = !DILocalVariable(name: "nl", arg: 1, scope: !2276, file: !459, line: 468, type: !1277)
!2280 = !DILocation(line: 468, column: 38, scope: !2276)
!2281 = !DILocalVariable(name: "rcvbuf_size", arg: 2, scope: !2276, file: !459, line: 468, type: !391)
!2282 = !DILocation(line: 468, column: 51, scope: !2276)
!2283 = !DILocalVariable(name: "force", arg: 3, scope: !2276, file: !459, line: 468, type: !609)
!2284 = !DILocation(line: 468, column: 68, scope: !2276)
!2285 = !DILocalVariable(name: "ret", scope: !2276, file: !459, line: 470, type: !407)
!2286 = !DILocation(line: 470, column: 6, scope: !2276)
!2287 = !DILocation(line: 472, column: 7, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2276, file: !459, line: 472, column: 6)
!2289 = !DILocation(line: 472, column: 6, scope: !2276)
!2290 = !DILocation(line: 473, column: 15, scope: !2288)
!2291 = !DILocation(line: 473, column: 3, scope: !2288)
!2292 = !DILocation(line: 475, column: 6, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2276, file: !459, line: 475, column: 6)
!2294 = !DILocation(line: 475, column: 6, scope: !2276)
!2295 = !DILocation(line: 476, column: 25, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !459, line: 476, column: 7)
!2297 = distinct !DILexicalBlock(scope: !2293, file: !459, line: 475, column: 13)
!2298 = !DILocation(line: 476, column: 29, scope: !2296)
!2299 = !DILocation(line: 476, column: 60, scope: !2296)
!2300 = !DILocation(line: 476, column: 14, scope: !2296)
!2301 = !DILocation(line: 476, column: 12, scope: !2296)
!2302 = !DILocation(line: 476, column: 96, scope: !2296)
!2303 = !DILocation(line: 476, column: 7, scope: !2297)
!2304 = !DILocation(line: 477, column: 79, scope: !2296)
!2305 = !DILocation(line: 477, column: 78, scope: !2296)
!2306 = !DILocation(line: 477, column: 4, scope: !2307)
!2307 = !DILexicalBlockFile(scope: !2296, file: !459, discriminator: 1)
!2308 = !DILocation(line: 477, column: 4, scope: !2296)
!2309 = !DILocation(line: 478, column: 2, scope: !2297)
!2310 = !DILocation(line: 484, column: 41, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2312, file: !459, line: 484, column: 8)
!2312 = distinct !DILexicalBlock(scope: !2313, file: !459, line: 483, column: 3)
!2313 = distinct !DILexicalBlock(scope: !2293, file: !459, line: 478, column: 9)
!2314 = !DILocation(line: 484, column: 45, scope: !2311)
!2315 = !DILocation(line: 484, column: 49, scope: !2311)
!2316 = !DILocation(line: 484, column: 15, scope: !2311)
!2317 = !DILocation(line: 484, column: 13, scope: !2311)
!2318 = !DILocation(line: 484, column: 8, scope: !2312)
!2319 = !DILocation(line: 485, column: 76, scope: !2311)
!2320 = !DILocation(line: 485, column: 5, scope: !2311)
!2321 = !DILocation(line: 500, column: 9, scope: !2276)
!2322 = !DILocation(line: 500, column: 2, scope: !2276)
!2323 = distinct !DISubprogram(name: "kernel_netlink_close_monitor", scope: !459, file: !459, line: 2161, type: !653, isLocal: false, isDefinition: true, scopeLine: 2162, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!2324 = !DILocation(line: 2163, column: 2, scope: !2323)
!2325 = !DILocation(line: 2164, column: 1, scope: !2323)
!2326 = distinct !DISubprogram(name: "netlink_close", scope: !459, file: !459, line: 733, type: !2327, isLocal: true, isDefinition: true, scopeLine: 734, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{null, !1277}
!2329 = !DILocalVariable(name: "nl", arg: 1, scope: !2326, file: !459, line: 733, type: !1277)
!2330 = !DILocation(line: 733, column: 28, scope: !2326)
!2331 = !DILocation(line: 735, column: 7, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2326, file: !459, line: 735, column: 6)
!2333 = !DILocation(line: 735, column: 6, scope: !2326)
!2334 = !DILocation(line: 736, column: 3, scope: !2332)
!2335 = !DILocation(line: 740, column: 6, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2326, file: !459, line: 740, column: 6)
!2337 = !DILocation(line: 740, column: 10, scope: !2336)
!2338 = !DILocation(line: 740, column: 6, scope: !2326)
!2339 = !DILocation(line: 741, column: 17, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2336, file: !459, line: 740, column: 18)
!2341 = !DILocation(line: 741, column: 21, scope: !2340)
!2342 = !DILocation(line: 741, column: 3, scope: !2340)
!2343 = !DILocation(line: 742, column: 3, scope: !2340)
!2344 = !DILocation(line: 742, column: 7, scope: !2340)
!2345 = !DILocation(line: 742, column: 14, scope: !2340)
!2346 = !DILocation(line: 743, column: 2, scope: !2340)
!2347 = !DILocation(line: 750, column: 7, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !459, line: 750, column: 7)
!2349 = distinct !DILexicalBlock(scope: !2326, file: !459, line: 749, column: 2)
!2350 = !DILocation(line: 750, column: 11, scope: !2348)
!2351 = !DILocation(line: 750, column: 7, scope: !2349)
!2352 = !DILocation(line: 751, column: 19, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2348, file: !459, line: 750, column: 15)
!2354 = !DILocation(line: 751, column: 23, scope: !2353)
!2355 = !DILocation(line: 751, column: 4, scope: !2353)
!2356 = !DILocation(line: 752, column: 4, scope: !2353)
!2357 = !DILocation(line: 752, column: 8, scope: !2353)
!2358 = !DILocation(line: 752, column: 11, scope: !2353)
!2359 = !DILocation(line: 753, column: 3, scope: !2353)
!2360 = !DILocation(line: 765, column: 2, scope: !2326)
!2361 = !DILocation(line: 765, column: 6, scope: !2326)
!2362 = !DILocation(line: 765, column: 9, scope: !2326)
!2363 = !DILocation(line: 766, column: 1, scope: !2326)
!2364 = !DILocation(line: 766, column: 1, scope: !2365)
!2365 = !DILexicalBlockFile(scope: !2326, file: !459, discriminator: 1)
!2366 = distinct !DISubprogram(name: "kernel_netlink_close_cmd", scope: !459, file: !459, line: 2167, type: !653, isLocal: false, isDefinition: true, scopeLine: 2168, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!2367 = !DILocation(line: 2169, column: 2, scope: !2366)
!2368 = !DILocation(line: 2170, column: 1, scope: !2366)
!2369 = distinct !DISubprogram(name: "kernel_netlink_close", scope: !459, file: !459, line: 2173, type: !653, isLocal: false, isDefinition: true, scopeLine: 2174, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!2370 = !DILocation(line: 2175, column: 2, scope: !2369)
!2371 = !DILocation(line: 2176, column: 2, scope: !2369)
!2372 = !DILocation(line: 2177, column: 1, scope: !2369)
!2373 = distinct !DISubprogram(name: "kernel_netlink_init", scope: !459, file: !459, line: 2180, type: !653, isLocal: false, isDefinition: true, scopeLine: 2181, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!2374 = !DILocation(line: 2192, column: 16, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2373, file: !459, line: 2192, column: 6)
!2376 = !DILocation(line: 2192, column: 19, scope: !2375)
!2377 = !DILocation(line: 2192, column: 6, scope: !2373)
!2378 = !DILocation(line: 2193, column: 38, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2375, file: !459, line: 2192, column: 24)
!2380 = !DILocation(line: 2193, column: 84, scope: !2379)
!2381 = !DILocation(line: 2193, column: 22, scope: !2379)
!2382 = !DILocation(line: 2193, column: 20, scope: !2379)
!2383 = !DILocation(line: 2194, column: 3, scope: !2379)
!2384 = !DILocation(line: 2207, column: 6, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2373, file: !459, line: 2207, column: 6)
!2386 = !DILocation(line: 2207, column: 16, scope: !2385)
!2387 = !DILocation(line: 2207, column: 6, scope: !2373)
!2388 = !DILocation(line: 2208, column: 30, scope: !2385)
!2389 = !DILocation(line: 2208, column: 43, scope: !2385)
!2390 = !DILocation(line: 2208, column: 74, scope: !2385)
!2391 = !DILocation(line: 2208, column: 87, scope: !2385)
!2392 = !DILocation(line: 2208, column: 3, scope: !2385)
!2393 = !DILocation(line: 2212, column: 6, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2373, file: !459, line: 2212, column: 6)
!2395 = !DILocation(line: 2212, column: 16, scope: !2394)
!2396 = !DILocation(line: 2212, column: 6, scope: !2373)
!2397 = !DILocation(line: 2213, column: 30, scope: !2394)
!2398 = !DILocation(line: 2213, column: 43, scope: !2394)
!2399 = !DILocation(line: 2213, column: 73, scope: !2394)
!2400 = !DILocation(line: 2213, column: 86, scope: !2394)
!2401 = !DILocation(line: 2213, column: 3, scope: !2394)
!2402 = !DILocation(line: 2218, column: 16, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2373, file: !459, line: 2218, column: 6)
!2404 = !DILocation(line: 2218, column: 19, scope: !2403)
!2405 = !DILocation(line: 2218, column: 6, scope: !2373)
!2406 = !DILocation(line: 2219, column: 3, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2403, file: !459, line: 2218, column: 24)
!2408 = !DILocation(line: 2220, column: 38, scope: !2407)
!2409 = !DILocation(line: 2220, column: 84, scope: !2407)
!2410 = !DILocation(line: 2220, column: 22, scope: !2407)
!2411 = !DILocation(line: 2220, column: 20, scope: !2407)
!2412 = !DILocation(line: 2222, column: 2, scope: !2407)
!2413 = !DILocation(line: 2223, column: 3, scope: !2403)
!2414 = !DILocation(line: 2234, column: 6, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2373, file: !459, line: 2234, column: 6)
!2416 = !DILocation(line: 2234, column: 16, scope: !2415)
!2417 = !DILocation(line: 2234, column: 6, scope: !2373)
!2418 = !DILocation(line: 2235, column: 27, scope: !2415)
!2419 = !DILocation(line: 2235, column: 40, scope: !2415)
!2420 = !DILocation(line: 2235, column: 67, scope: !2415)
!2421 = !DILocation(line: 2235, column: 80, scope: !2415)
!2422 = !DILocation(line: 2235, column: 3, scope: !2415)
!2423 = !DILocation(line: 2238, column: 6, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2373, file: !459, line: 2238, column: 6)
!2425 = !DILocation(line: 2238, column: 16, scope: !2424)
!2426 = !DILocation(line: 2238, column: 6, scope: !2373)
!2427 = !DILocation(line: 2239, column: 27, scope: !2424)
!2428 = !DILocation(line: 2239, column: 40, scope: !2424)
!2429 = !DILocation(line: 2239, column: 66, scope: !2424)
!2430 = !DILocation(line: 2239, column: 79, scope: !2424)
!2431 = !DILocation(line: 2239, column: 3, scope: !2424)
!2432 = !DILocation(line: 2242, column: 13, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2373, file: !459, line: 2242, column: 6)
!2434 = !DILocation(line: 2242, column: 16, scope: !2433)
!2435 = !DILocation(line: 2242, column: 6, scope: !2373)
!2436 = !DILocation(line: 2243, column: 3, scope: !2433)
!2437 = !DILocation(line: 2245, column: 3, scope: !2433)
!2438 = !DILocation(line: 2250, column: 6, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2373, file: !459, line: 2250, column: 6)
!2440 = !DILocation(line: 2250, column: 16, scope: !2439)
!2441 = !DILocation(line: 2250, column: 6, scope: !2373)
!2442 = !DILocation(line: 2252, column: 3, scope: !2439)
!2443 = !DILocation(line: 2255, column: 2, scope: !2373)
!2444 = !DILocation(line: 2258, column: 6, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2373, file: !459, line: 2258, column: 6)
!2446 = !DILocation(line: 2258, column: 16, scope: !2445)
!2447 = !DILocation(line: 2258, column: 6, scope: !2373)
!2448 = !DILocation(line: 2259, column: 3, scope: !2445)
!2449 = !DILocation(line: 2261, column: 1, scope: !2373)
!2450 = distinct !DISubprogram(name: "kernel_netlink", scope: !459, file: !459, line: 2113, type: !2451, isLocal: true, isDefinition: true, scopeLine: 2114, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!407, !472}
!2453 = !DILocalVariable(name: "thread", arg: 1, scope: !2450, file: !459, line: 2113, type: !472)
!2454 = !DILocation(line: 2113, column: 27, scope: !2450)
!2455 = !DILocalVariable(name: "nl", scope: !2450, file: !459, line: 2115, type: !1277)
!2456 = !DILocation(line: 2115, column: 15, scope: !2450)
!2457 = !DILocation(line: 2115, column: 22, scope: !2450)
!2458 = !DILocation(line: 2115, column: 31, scope: !2450)
!2459 = !DILocation(line: 2115, column: 20, scope: !2450)
!2460 = !DILocation(line: 2117, column: 6, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2450, file: !459, line: 2117, column: 6)
!2462 = !DILocation(line: 2117, column: 14, scope: !2461)
!2463 = !DILocation(line: 2117, column: 19, scope: !2461)
!2464 = !DILocation(line: 2117, column: 6, scope: !2450)
!2465 = !DILocation(line: 2118, column: 48, scope: !2461)
!2466 = !DILocation(line: 2118, column: 3, scope: !2461)
!2467 = !DILocation(line: 2119, column: 31, scope: !2450)
!2468 = !DILocation(line: 2119, column: 55, scope: !2450)
!2469 = !DILocation(line: 2119, column: 59, scope: !2450)
!2470 = !DILocation(line: 2119, column: 63, scope: !2450)
!2471 = !DILocation(line: 2119, column: 15, scope: !2450)
!2472 = !DILocation(line: 2119, column: 2, scope: !2450)
!2473 = !DILocation(line: 2119, column: 6, scope: !2450)
!2474 = !DILocation(line: 2119, column: 13, scope: !2450)
!2475 = !DILocation(line: 2121, column: 2, scope: !2450)
!2476 = distinct !DISubprogram(name: "netlink_socket", scope: !459, file: !459, line: 550, type: !2477, isLocal: true, isDefinition: true, scopeLine: 551, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!407, !1277, !391, !609, !407, !407, null}
!2479 = !DILocalVariable(name: "nl", arg: 1, scope: !2476, file: !459, line: 550, type: !1277)
!2480 = !DILocation(line: 550, column: 29, scope: !2476)
!2481 = !DILocalVariable(name: "rcvbuf_size", arg: 2, scope: !2476, file: !459, line: 550, type: !391)
!2482 = !DILocation(line: 550, column: 42, scope: !2476)
!2483 = !DILocalVariable(name: "force", arg: 3, scope: !2476, file: !459, line: 550, type: !609)
!2484 = !DILocation(line: 550, column: 59, scope: !2476)
!2485 = !DILocalVariable(name: "flags", arg: 4, scope: !2476, file: !459, line: 550, type: !407)
!2486 = !DILocation(line: 550, column: 70, scope: !2476)
!2487 = !DILocalVariable(name: "group", arg: 5, scope: !2476, file: !459, line: 550, type: !407)
!2488 = !DILocation(line: 550, column: 81, scope: !2476)
!2489 = !DILocalVariable(name: "ret", scope: !2476, file: !459, line: 552, type: !407)
!2490 = !DILocation(line: 552, column: 6, scope: !2476)
!2491 = !DILocalVariable(name: "gp", scope: !2476, file: !459, line: 553, type: !2492)
!2492 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !533, line: 79, baseType: !2493)
!2493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2494, line: 40, baseType: !2495)
!2494 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!2495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 553, baseType: !2496)
!2496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2497, size: 192, align: 64, elements: !569)
!2497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 553, size: 192, align: 64, elements: !2498)
!2498 = !{!2499, !2500, !2501, !2502}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2497, file: !1, line: 553, baseType: !391, size: 32, align: 32)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2497, file: !1, line: 553, baseType: !391, size: 32, align: 32, offset: 32)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2497, file: !1, line: 553, baseType: !388, size: 64, align: 64, offset: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2497, file: !1, line: 553, baseType: !388, size: 64, align: 64, offset: 128)
!2503 = !DILocation(line: 553, column: 10, scope: !2476)
!2504 = !DILocation(line: 555, column: 9, scope: !2476)
!2505 = !DILocation(line: 555, column: 2, scope: !2476)
!2506 = !DILocation(line: 563, column: 12, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2476, file: !459, line: 561, column: 2)
!2508 = !DILocation(line: 563, column: 3, scope: !2507)
!2509 = !DILocation(line: 563, column: 7, scope: !2507)
!2510 = !DILocation(line: 563, column: 10, scope: !2507)
!2511 = !DILocation(line: 564, column: 7, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2507, file: !459, line: 564, column: 7)
!2513 = !DILocation(line: 564, column: 11, scope: !2512)
!2514 = !DILocation(line: 564, column: 14, scope: !2512)
!2515 = !DILocation(line: 564, column: 7, scope: !2507)
!2516 = !DILocation(line: 565, column: 4, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2512, file: !459, line: 564, column: 22)
!2518 = !DILocation(line: 566, column: 4, scope: !2517)
!2519 = !DILocation(line: 569, column: 20, scope: !2507)
!2520 = !DILocation(line: 569, column: 24, scope: !2507)
!2521 = !DILocation(line: 569, column: 9, scope: !2507)
!2522 = !DILocation(line: 569, column: 7, scope: !2507)
!2523 = !DILocation(line: 570, column: 7, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2507, file: !459, line: 570, column: 7)
!2525 = !DILocation(line: 570, column: 11, scope: !2524)
!2526 = !DILocation(line: 570, column: 7, scope: !2507)
!2527 = !DILocation(line: 571, column: 71, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2524, file: !459, line: 570, column: 17)
!2529 = !DILocation(line: 571, column: 4, scope: !2528)
!2530 = !DILocation(line: 572, column: 4, scope: !2528)
!2531 = !DILocation(line: 578, column: 2, scope: !2507)
!2532 = !DILocation(line: 579, column: 3, scope: !2507)
!2533 = !DILocation(line: 579, column: 10, scope: !2534)
!2534 = !DILexicalBlockFile(scope: !2507, file: !459, discriminator: 1)
!2535 = !DILocation(line: 579, column: 16, scope: !2534)
!2536 = !DILocation(line: 579, column: 3, scope: !2534)
!2537 = !DILocation(line: 580, column: 8, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2539, file: !459, line: 580, column: 8)
!2539 = distinct !DILexicalBlock(scope: !2507, file: !459, line: 579, column: 22)
!2540 = !DILocation(line: 580, column: 14, scope: !2538)
!2541 = !DILocation(line: 580, column: 8, scope: !2539)
!2542 = !DILocation(line: 581, column: 4, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2538, file: !459, line: 580, column: 19)
!2544 = !DILocation(line: 582, column: 5, scope: !2543)
!2545 = !DILocation(line: 585, column: 40, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2539, file: !459, line: 585, column: 8)
!2547 = !DILocation(line: 585, column: 44, scope: !2546)
!2548 = !DILocation(line: 585, column: 48, scope: !2546)
!2549 = !DILocation(line: 585, column: 15, scope: !2546)
!2550 = !DILocation(line: 585, column: 13, scope: !2546)
!2551 = !DILocation(line: 585, column: 8, scope: !2539)
!2552 = !DILocation(line: 586, column: 79, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2546, file: !459, line: 585, column: 57)
!2554 = !DILocation(line: 586, column: 86, scope: !2553)
!2555 = !DILocation(line: 586, column: 5, scope: !2553)
!2556 = !DILocation(line: 587, column: 4, scope: !2553)
!2557 = !DILocation(line: 588, column: 5, scope: !2553)
!2558 = !DILocation(line: 591, column: 11, scope: !2539)
!2559 = !DILocation(line: 591, column: 11, scope: !2560)
!2560 = !DILexicalBlockFile(scope: !2539, file: !459, discriminator: 1)
!2561 = !DILocation(line: 591, column: 11, scope: !2562)
!2562 = !DILexicalBlockFile(scope: !2539, file: !459, discriminator: 2)
!2563 = !DILocation(line: 591, column: 11, scope: !2564)
!2564 = !DILexicalBlockFile(scope: !2539, file: !459, discriminator: 3)
!2565 = !DILocation(line: 591, column: 10, scope: !2564)
!2566 = !DILocation(line: 579, column: 3, scope: !2567)
!2567 = !DILexicalBlockFile(scope: !2507, file: !459, discriminator: 2)
!2568 = distinct !{!2568, !2532}
!2569 = !DILocation(line: 593, column: 2, scope: !2507)
!2570 = !DILocation(line: 595, column: 7, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2507, file: !459, line: 595, column: 7)
!2572 = !DILocation(line: 595, column: 13, scope: !2571)
!2573 = !DILocation(line: 595, column: 7, scope: !2507)
!2574 = !DILocation(line: 596, column: 41, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2576, file: !459, line: 596, column: 8)
!2576 = distinct !DILexicalBlock(scope: !2571, file: !459, line: 595, column: 29)
!2577 = !DILocation(line: 596, column: 45, scope: !2575)
!2578 = !DILocation(line: 596, column: 15, scope: !2575)
!2579 = !DILocation(line: 596, column: 13, scope: !2575)
!2580 = !DILocation(line: 596, column: 8, scope: !2576)
!2581 = !DILocation(line: 597, column: 84, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2575, file: !459, line: 596, column: 51)
!2583 = !DILocation(line: 597, column: 5, scope: !2582)
!2584 = !DILocation(line: 598, column: 5, scope: !2582)
!2585 = !DILocation(line: 600, column: 3, scope: !2576)
!2586 = !DILocation(line: 602, column: 41, scope: !2507)
!2587 = !DILocation(line: 602, column: 45, scope: !2507)
!2588 = !DILocation(line: 602, column: 16, scope: !2507)
!2589 = !DILocation(line: 602, column: 3, scope: !2507)
!2590 = !DILocation(line: 602, column: 7, scope: !2507)
!2591 = !DILocation(line: 602, column: 14, scope: !2507)
!2592 = !DILocation(line: 604, column: 29, scope: !2507)
!2593 = !DILocation(line: 604, column: 33, scope: !2507)
!2594 = !DILocation(line: 604, column: 12, scope: !2507)
!2595 = !DILocation(line: 604, column: 3, scope: !2507)
!2596 = !DILocation(line: 604, column: 7, scope: !2507)
!2597 = !DILocation(line: 604, column: 10, scope: !2507)
!2598 = !DILocation(line: 607, column: 9, scope: !2507)
!2599 = !DILocation(line: 607, column: 13, scope: !2507)
!2600 = !DILocation(line: 607, column: 31, scope: !2507)
!2601 = !DILocation(line: 607, column: 35, scope: !2507)
!2602 = !DILocation(line: 607, column: 25, scope: !2507)
!2603 = !DILocation(line: 607, column: 48, scope: !2507)
!2604 = !DILocation(line: 607, column: 3, scope: !2534)
!2605 = !DILocation(line: 721, column: 22, scope: !2476)
!2606 = !DILocation(line: 721, column: 12, scope: !2476)
!2607 = !DILocation(line: 721, column: 2, scope: !2476)
!2608 = !DILocation(line: 721, column: 6, scope: !2476)
!2609 = !DILocation(line: 721, column: 10, scope: !2476)
!2610 = !DILocation(line: 723, column: 6, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2476, file: !459, line: 723, column: 6)
!2612 = !DILocation(line: 723, column: 10, scope: !2611)
!2613 = !DILocation(line: 723, column: 13, scope: !2611)
!2614 = !DILocation(line: 723, column: 6, scope: !2476)
!2615 = !DILocation(line: 724, column: 3, scope: !2611)
!2616 = !DILocation(line: 726, column: 32, scope: !2476)
!2617 = !DILocation(line: 726, column: 36, scope: !2476)
!2618 = !DILocation(line: 726, column: 49, scope: !2476)
!2619 = !DILocation(line: 726, column: 8, scope: !2476)
!2620 = !DILocation(line: 726, column: 6, scope: !2476)
!2621 = !DILocation(line: 728, column: 9, scope: !2476)
!2622 = !DILocation(line: 728, column: 2, scope: !2476)
!2623 = !DILocation(line: 729, column: 1, scope: !2476)
!2624 = distinct !DISubprogram(name: "netlink_address_lookup", scope: !459, file: !459, line: 1806, type: !2625, isLocal: true, isDefinition: true, scopeLine: 1807, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{!407}
!2627 = !DILocalVariable(name: "status", scope: !2624, file: !459, line: 1808, type: !407)
!2628 = !DILocation(line: 1808, column: 6, scope: !2624)
!2629 = !DILocation(line: 1811, column: 6, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2624, file: !459, line: 1811, column: 6)
!2631 = !DILocation(line: 1811, column: 58, scope: !2630)
!2632 = !DILocation(line: 1811, column: 6, scope: !2624)
!2633 = !DILocation(line: 1812, column: 3, scope: !2630)
!2634 = !DILocation(line: 1814, column: 16, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2624, file: !459, line: 1814, column: 6)
!2636 = !DILocation(line: 1814, column: 14, scope: !2635)
!2637 = !DILocation(line: 1814, column: 6, scope: !2624)
!2638 = !DILocation(line: 1815, column: 10, scope: !2635)
!2639 = !DILocation(line: 1815, column: 3, scope: !2635)
!2640 = !DILocation(line: 1818, column: 6, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2624, file: !459, line: 1818, column: 6)
!2642 = !DILocation(line: 1818, column: 59, scope: !2641)
!2643 = !DILocation(line: 1818, column: 6, scope: !2624)
!2644 = !DILocation(line: 1819, column: 3, scope: !2641)
!2645 = !DILocation(line: 1821, column: 9, scope: !2624)
!2646 = !DILocation(line: 1821, column: 2, scope: !2624)
!2647 = !DILocation(line: 1822, column: 1, scope: !2624)
!2648 = distinct !DISubprogram(name: "kernel_netlink_read_interfaces", scope: !459, file: !459, line: 2265, type: !653, isLocal: false, isDefinition: true, scopeLine: 2266, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!2649 = !DILocalVariable(name: "ret", scope: !2648, file: !459, line: 2267, type: !407)
!2650 = !DILocation(line: 2267, column: 6, scope: !2648)
!2651 = !DILocation(line: 2270, column: 26, scope: !2648)
!2652 = !DILocation(line: 2270, column: 39, scope: !2648)
!2653 = !DILocation(line: 2270, column: 66, scope: !2648)
!2654 = !DILocation(line: 2270, column: 79, scope: !2648)
!2655 = !DILocation(line: 2270, column: 2, scope: !2648)
!2656 = !DILocation(line: 2275, column: 13, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2648, file: !459, line: 2275, column: 6)
!2658 = !DILocation(line: 2275, column: 16, scope: !2657)
!2659 = !DILocation(line: 2275, column: 6, scope: !2648)
!2660 = !DILocation(line: 2276, column: 10, scope: !2657)
!2661 = !DILocation(line: 2276, column: 3, scope: !2657)
!2662 = !DILocation(line: 2278, column: 2, scope: !2648)
!2663 = !DILocation(line: 2280, column: 13, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2648, file: !459, line: 2280, column: 6)
!2665 = !DILocation(line: 2280, column: 11, scope: !2664)
!2666 = !DILocation(line: 2280, column: 6, scope: !2648)
!2667 = !DILocation(line: 2281, column: 10, scope: !2664)
!2668 = !DILocation(line: 2281, column: 60, scope: !2664)
!2669 = !DILocation(line: 2281, column: 3, scope: !2664)
!2670 = !DILocation(line: 2283, column: 2, scope: !2648)
!2671 = !DILocation(line: 2284, column: 1, scope: !2648)
!2672 = distinct !DISubprogram(name: "parse_rtattr", scope: !459, file: !459, line: 944, type: !2673, isLocal: true, isDefinition: true, scopeLine: 945, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{null, !2675, !407, !380, !404}
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64, align: 64)
!2676 = !DILocalVariable(name: "tb", arg: 1, scope: !2672, file: !459, line: 944, type: !2675)
!2677 = !DILocation(line: 944, column: 30, scope: !2672)
!2678 = !DILocalVariable(name: "max", arg: 2, scope: !2672, file: !459, line: 944, type: !407)
!2679 = !DILocation(line: 944, column: 38, scope: !2672)
!2680 = !DILocalVariable(name: "rta", arg: 3, scope: !2672, file: !459, line: 944, type: !380)
!2681 = !DILocation(line: 944, column: 58, scope: !2672)
!2682 = !DILocalVariable(name: "len", arg: 4, scope: !2672, file: !459, line: 944, type: !404)
!2683 = !DILocation(line: 944, column: 70, scope: !2672)
!2684 = !DILocation(line: 946, column: 2, scope: !2672)
!2685 = !DILocation(line: 946, column: 8, scope: !2686)
!2686 = !DILexicalBlockFile(scope: !2672, file: !459, discriminator: 1)
!2687 = !DILocation(line: 946, column: 10, scope: !2686)
!2688 = !DILocation(line: 946, column: 40, scope: !2686)
!2689 = !DILocation(line: 946, column: 8, scope: !2690)
!2690 = !DILexicalBlockFile(scope: !2672, file: !459, discriminator: 2)
!2691 = !DILocation(line: 946, column: 11, scope: !2690)
!2692 = !DILocation(line: 946, column: 43, scope: !2690)
!2693 = !DILocation(line: 946, column: 19, scope: !2690)
!2694 = !DILocation(line: 946, column: 44, scope: !2690)
!2695 = !DILocation(line: 946, column: 8, scope: !2696)
!2696 = !DILexicalBlockFile(scope: !2672, file: !459, discriminator: 3)
!2697 = !DILocation(line: 946, column: 11, scope: !2696)
!2698 = !DILocation(line: 946, column: 47, scope: !2696)
!2699 = !DILocation(line: 946, column: 19, scope: !2696)
!2700 = !DILocation(line: 946, column: 2, scope: !2701)
!2701 = !DILexicalBlockFile(scope: !2672, file: !459, discriminator: 4)
!2702 = !DILocation(line: 947, column: 7, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2704, file: !459, line: 947, column: 7)
!2704 = distinct !DILexicalBlock(scope: !2672, file: !459, line: 946, column: 26)
!2705 = !DILocation(line: 947, column: 12, scope: !2703)
!2706 = !DILocation(line: 947, column: 24, scope: !2703)
!2707 = !DILocation(line: 947, column: 21, scope: !2703)
!2708 = !DILocation(line: 947, column: 7, scope: !2704)
!2709 = !DILocation(line: 948, column: 24, scope: !2703)
!2710 = !DILocation(line: 948, column: 7, scope: !2703)
!2711 = !DILocation(line: 948, column: 12, scope: !2703)
!2712 = !DILocation(line: 948, column: 4, scope: !2703)
!2713 = !DILocation(line: 948, column: 22, scope: !2703)
!2714 = !DILocation(line: 949, column: 8, scope: !2704)
!2715 = !DILocation(line: 949, column: 11, scope: !2704)
!2716 = !DILocation(line: 949, column: 16, scope: !2704)
!2717 = !DILocation(line: 949, column: 19, scope: !2704)
!2718 = !DILocation(line: 949, column: 23, scope: !2704)
!2719 = !DILocation(line: 949, column: 27, scope: !2704)
!2720 = !DILocation(line: 949, column: 13, scope: !2704)
!2721 = !DILocation(line: 949, column: 10, scope: !2704)
!2722 = !DILocation(line: 949, column: 59, scope: !2704)
!2723 = !DILocation(line: 949, column: 41, scope: !2704)
!2724 = !DILocation(line: 949, column: 7, scope: !2704)
!2725 = !DILocation(line: 946, column: 2, scope: !2726)
!2726 = !DILexicalBlockFile(scope: !2672, file: !459, discriminator: 5)
!2727 = distinct !{!2727, !2684}
!2728 = !DILocation(line: 951, column: 1, scope: !2672)
!2729 = distinct !DISubprogram(name: "update_interface_flags", scope: !459, file: !459, line: 1574, type: !2730, isLocal: true, isDefinition: true, scopeLine: 1575, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!2730 = !DISubroutineType(types: !2731)
!2731 = !{null, !1679, !391}
!2732 = !DILocalVariable(name: "ifp", arg: 1, scope: !2729, file: !459, line: 1574, type: !1679)
!2733 = !DILocation(line: 1574, column: 37, scope: !2729)
!2734 = !DILocalVariable(name: "ifi_flags", arg: 2, scope: !2729, file: !459, line: 1574, type: !391)
!2735 = !DILocation(line: 1574, column: 51, scope: !2729)
!2736 = !DILocalVariable(name: "was_up", scope: !2729, file: !459, line: 1576, type: !609)
!2737 = !DILocation(line: 1576, column: 6, scope: !2729)
!2738 = !DILocalVariable(name: "now_up", scope: !2729, file: !459, line: 1576, type: !609)
!2739 = !DILocation(line: 1576, column: 14, scope: !2729)
!2740 = !DILocation(line: 1578, column: 6, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2729, file: !459, line: 1578, column: 6)
!2742 = !DILocation(line: 1578, column: 19, scope: !2741)
!2743 = !DILocation(line: 1578, column: 24, scope: !2741)
!2744 = !DILocation(line: 1578, column: 16, scope: !2741)
!2745 = !DILocation(line: 1578, column: 6, scope: !2729)
!2746 = !DILocation(line: 1579, column: 3, scope: !2741)
!2747 = !DILocation(line: 1581, column: 7, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2729, file: !459, line: 1581, column: 6)
!2749 = !DILocation(line: 1581, column: 6, scope: !2729)
!2750 = !DILocation(line: 1582, column: 3, scope: !2748)
!2751 = !DILocation(line: 1585, column: 16, scope: !2729)
!2752 = !DILocation(line: 1585, column: 22, scope: !2729)
!2753 = !DILocation(line: 1585, column: 33, scope: !2729)
!2754 = !DILocation(line: 1585, column: 13, scope: !2729)
!2755 = !DILocation(line: 1585, column: 9, scope: !2729)
!2756 = !DILocation(line: 1586, column: 14, scope: !2729)
!2757 = !DILocation(line: 1586, column: 25, scope: !2729)
!2758 = !DILocation(line: 1586, column: 13, scope: !2729)
!2759 = !DILocation(line: 1586, column: 9, scope: !2729)
!2760 = !DILocation(line: 1588, column: 19, scope: !2729)
!2761 = !DILocation(line: 1588, column: 2, scope: !2729)
!2762 = !DILocation(line: 1588, column: 7, scope: !2729)
!2763 = !DILocation(line: 1588, column: 17, scope: !2729)
!2764 = !DILocation(line: 1590, column: 6, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2729, file: !459, line: 1590, column: 6)
!2766 = !DILocation(line: 1590, column: 16, scope: !2765)
!2767 = !DILocation(line: 1590, column: 13, scope: !2765)
!2768 = !DILocation(line: 1590, column: 6, scope: !2729)
!2769 = !DILocation(line: 1591, column: 3, scope: !2765)
!2770 = !DILocation(line: 1593, column: 6, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2729, file: !459, line: 1593, column: 6)
!2772 = !DILocation(line: 1593, column: 11, scope: !2771)
!2773 = !DILocation(line: 1593, column: 6, scope: !2729)
!2774 = !DILocation(line: 1594, column: 49, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2771, file: !459, line: 1593, column: 26)
!2776 = !DILocation(line: 1594, column: 54, scope: !2775)
!2777 = !DILocation(line: 1594, column: 62, scope: !2775)
!2778 = !DILocation(line: 1594, column: 3, scope: !2775)
!2779 = !DILocation(line: 1596, column: 28, scope: !2775)
!2780 = !DILocation(line: 1596, column: 3, scope: !2775)
!2781 = !DILocation(line: 1597, column: 2, scope: !2775)
!2782 = !DILocation(line: 1599, column: 7, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2729, file: !459, line: 1599, column: 6)
!2784 = !DILocation(line: 1599, column: 6, scope: !2729)
!2785 = !DILocation(line: 1600, column: 18, scope: !2783)
!2786 = !DILocation(line: 1600, column: 3, scope: !2783)
!2787 = !DILocation(line: 1602, column: 16, scope: !2783)
!2788 = !DILocation(line: 1602, column: 3, scope: !2783)
!2789 = !DILocation(line: 1603, column: 1, scope: !2729)
!2790 = distinct !DISubprogram(name: "netlink_if_link_populate", scope: !459, file: !459, line: 1664, type: !2791, isLocal: true, isDefinition: true, scopeLine: 1665, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!2791 = !DISubroutineType(types: !2792)
!2792 = !{!609, !1679, !2675, !2131}
!2793 = !DILocalVariable(name: "ifp", arg: 1, scope: !2790, file: !459, line: 1664, type: !1679)
!2794 = !DILocation(line: 1664, column: 39, scope: !2790)
!2795 = !DILocalVariable(name: "tb", arg: 2, scope: !2790, file: !459, line: 1664, type: !2675)
!2796 = !DILocation(line: 1664, column: 59, scope: !2790)
!2797 = !DILocalVariable(name: "ifi", arg: 3, scope: !2790, file: !459, line: 1664, type: !2131)
!2798 = !DILocation(line: 1664, column: 83, scope: !2790)
!2799 = !DILocalVariable(name: "name", scope: !2790, file: !459, line: 1666, type: !386)
!2800 = !DILocation(line: 1666, column: 8, scope: !2790)
!2801 = !DILocalVariable(name: "linkinfo", scope: !2790, file: !459, line: 1668, type: !2802)
!2802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 384, align: 64, elements: !2803)
!2803 = !{!2804}
!2804 = !DISubrange(count: 6)
!2805 = !DILocation(line: 1668, column: 17, scope: !2790)
!2806 = !DILocalVariable(name: "linkattr", scope: !2790, file: !459, line: 1669, type: !2807)
!2807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 448, align: 64, elements: !2808)
!2808 = !{!2809}
!2809 = !DISubrange(count: 7)
!2810 = !DILocation(line: 1669, column: 17, scope: !2790)
!2811 = !DILocalVariable(name: "vrf_attr", scope: !2790, file: !459, line: 1671, type: !2812)
!2812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 128, align: 64, elements: !2813)
!2813 = !{!2814}
!2814 = !DISubrange(count: 2)
!2815 = !DILocation(line: 1671, column: 17, scope: !2790)
!2816 = !DILocation(line: 1675, column: 16, scope: !2790)
!2817 = !DILocation(line: 1675, column: 26, scope: !2790)
!2818 = !DILocation(line: 1675, column: 19, scope: !2790)
!2819 = !DILocation(line: 1675, column: 7, scope: !2790)
!2820 = !DILocation(line: 1678, column: 9, scope: !2790)
!2821 = !DILocation(line: 1678, column: 14, scope: !2790)
!2822 = !DILocation(line: 1678, column: 2, scope: !2790)
!2823 = !DILocation(line: 1678, column: 22, scope: !2790)
!2824 = !DILocation(line: 1678, column: 35, scope: !2790)
!2825 = !DILocation(line: 1678, column: 28, scope: !2790)
!2826 = !DILocation(line: 1678, column: 2, scope: !2827)
!2827 = !DILexicalBlockFile(scope: !2790, file: !459, discriminator: 1)
!2828 = !DILocation(line: 1679, column: 28, scope: !2790)
!2829 = !DILocation(line: 1679, column: 33, scope: !2790)
!2830 = !DILocation(line: 1679, column: 2, scope: !2790)
!2831 = !DILocation(line: 1679, column: 7, scope: !2790)
!2832 = !DILocation(line: 1679, column: 15, scope: !2790)
!2833 = !DILocation(line: 1680, column: 25, scope: !2790)
!2834 = !DILocation(line: 1680, column: 35, scope: !2790)
!2835 = !DILocation(line: 1680, column: 28, scope: !2790)
!2836 = !DILocation(line: 1680, column: 14, scope: !2790)
!2837 = !DILocation(line: 1680, column: 13, scope: !2790)
!2838 = !DILocation(line: 1680, column: 2, scope: !2790)
!2839 = !DILocation(line: 1680, column: 7, scope: !2790)
!2840 = !DILocation(line: 1680, column: 11, scope: !2790)
!2841 = !DILocation(line: 1681, column: 17, scope: !2790)
!2842 = !DILocation(line: 1681, column: 22, scope: !2790)
!2843 = !DILocation(line: 1681, column: 2, scope: !2790)
!2844 = !DILocation(line: 1681, column: 7, scope: !2790)
!2845 = !DILocation(line: 1681, column: 15, scope: !2790)
!2846 = !DILocation(line: 1683, column: 18, scope: !2790)
!2847 = !DILocation(line: 1683, column: 2, scope: !2790)
!2848 = !DILocation(line: 1683, column: 7, scope: !2790)
!2849 = !DILocation(line: 1683, column: 16, scope: !2790)
!2850 = !DILocation(line: 1686, column: 29, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2790, file: !459, line: 1686, column: 6)
!2852 = !DILocation(line: 1686, column: 34, scope: !2851)
!2853 = !DILocation(line: 1686, column: 52, scope: !2851)
!2854 = !DILocation(line: 1686, column: 6, scope: !2851)
!2855 = !DILocation(line: 1686, column: 58, scope: !2851)
!2856 = !DILocation(line: 1686, column: 6, scope: !2790)
!2857 = !DILocation(line: 1687, column: 3, scope: !2851)
!2858 = !DILocation(line: 1688, column: 29, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2790, file: !459, line: 1688, column: 6)
!2860 = !DILocation(line: 1688, column: 34, scope: !2859)
!2861 = !DILocation(line: 1688, column: 54, scope: !2859)
!2862 = !DILocation(line: 1688, column: 6, scope: !2859)
!2863 = !DILocation(line: 1688, column: 60, scope: !2859)
!2864 = !DILocation(line: 1688, column: 6, scope: !2790)
!2865 = !DILocation(line: 1689, column: 3, scope: !2859)
!2866 = !DILocation(line: 1692, column: 6, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2790, file: !459, line: 1692, column: 6)
!2868 = !DILocation(line: 1692, column: 6, scope: !2790)
!2869 = !DILocation(line: 1693, column: 23, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2867, file: !459, line: 1692, column: 24)
!2871 = !DILocation(line: 1693, column: 47, scope: !2870)
!2872 = !DILocation(line: 1693, column: 3, scope: !2870)
!2873 = !DILocation(line: 1695, column: 7, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2870, file: !459, line: 1695, column: 7)
!2875 = !DILocation(line: 1695, column: 7, scope: !2870)
!2876 = !DILocation(line: 1697, column: 23, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2878, file: !459, line: 1697, column: 8)
!2878 = distinct !DILexicalBlock(scope: !2874, file: !459, line: 1695, column: 33)
!2879 = !DILocation(line: 1697, column: 33, scope: !2877)
!2880 = !DILocation(line: 1697, column: 26, scope: !2877)
!2881 = !DILocation(line: 1697, column: 9, scope: !2877)
!2882 = !DILocation(line: 1697, column: 8, scope: !2878)
!2883 = !DILocation(line: 1698, column: 25, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2877, file: !459, line: 1697, column: 71)
!2885 = !DILocation(line: 1698, column: 52, scope: !2884)
!2886 = !DILocation(line: 1698, column: 5, scope: !2884)
!2887 = !DILocation(line: 1700, column: 9, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2884, file: !459, line: 1700, column: 9)
!2889 = !DILocation(line: 1700, column: 37, scope: !2888)
!2890 = !DILocation(line: 1701, column: 9, scope: !2888)
!2891 = !DILocation(line: 1701, column: 23, scope: !2888)
!2892 = !DILocation(line: 1702, column: 20, scope: !2888)
!2893 = !DILocation(line: 1702, column: 30, scope: !2888)
!2894 = !DILocation(line: 1702, column: 23, scope: !2888)
!2895 = !DILocation(line: 1702, column: 10, scope: !2888)
!2896 = !DILocation(line: 1702, column: 9, scope: !2888)
!2897 = !DILocation(line: 1702, column: 58, scope: !2888)
!2898 = !DILocation(line: 1700, column: 9, scope: !2899)
!2899 = !DILexicalBlockFile(scope: !2884, file: !459, discriminator: 1)
!2900 = !DILocation(line: 1703, column: 38, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2888, file: !459, line: 1702, column: 83)
!2902 = !DILocation(line: 1703, column: 48, scope: !2901)
!2903 = !DILocation(line: 1703, column: 41, scope: !2901)
!2904 = !DILocation(line: 1703, column: 27, scope: !2901)
!2905 = !DILocation(line: 1703, column: 26, scope: !2901)
!2906 = !DILocation(line: 1703, column: 6, scope: !2901)
!2907 = !DILocation(line: 1703, column: 11, scope: !2901)
!2908 = !DILocation(line: 1703, column: 24, scope: !2901)
!2909 = !DILocation(line: 1704, column: 40, scope: !2901)
!2910 = !DILocation(line: 1704, column: 45, scope: !2901)
!2911 = !DILocation(line: 1704, column: 22, scope: !2901)
!2912 = !DILocation(line: 1704, column: 6, scope: !2901)
!2913 = !DILocation(line: 1704, column: 11, scope: !2901)
!2914 = !DILocation(line: 1704, column: 20, scope: !2901)
!2915 = !DILocation(line: 1705, column: 10, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2901, file: !459, line: 1705, column: 10)
!2917 = !DILocation(line: 1705, column: 15, scope: !2916)
!2918 = !DILocation(line: 1705, column: 10, scope: !2901)
!2919 = !DILocation(line: 1706, column: 7, scope: !2916)
!2920 = !DILocation(line: 1706, column: 12, scope: !2916)
!2921 = !DILocation(line: 1706, column: 25, scope: !2916)
!2922 = !DILocation(line: 1707, column: 6, scope: !2901)
!2923 = !DILocation(line: 1707, column: 11, scope: !2901)
!2924 = !DILocation(line: 1707, column: 16, scope: !2901)
!2925 = !DILocation(line: 1708, column: 5, scope: !2901)
!2926 = !DILocation(line: 1709, column: 4, scope: !2884)
!2927 = !DILocation(line: 1711, column: 28, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2877, file: !459, line: 1711, column: 13)
!2929 = !DILocation(line: 1711, column: 38, scope: !2928)
!2930 = !DILocation(line: 1711, column: 31, scope: !2928)
!2931 = !DILocation(line: 1711, column: 14, scope: !2928)
!2932 = !DILocation(line: 1711, column: 13, scope: !2877)
!2933 = !DILocation(line: 1712, column: 25, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2928, file: !459, line: 1711, column: 73)
!2935 = !DILocation(line: 1712, column: 48, scope: !2934)
!2936 = !DILocation(line: 1712, column: 5, scope: !2934)
!2937 = !DILocation(line: 1713, column: 9, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2934, file: !459, line: 1713, column: 9)
!2939 = !DILocation(line: 1713, column: 9, scope: !2934)
!2940 = !DILocation(line: 1714, column: 6, scope: !2938)
!2941 = !DILocation(line: 1714, column: 11, scope: !2938)
!2942 = !DILocation(line: 1714, column: 22, scope: !2938)
!2943 = !DILocation(line: 1715, column: 4, scope: !2934)
!2944 = !DILocation(line: 1717, column: 3, scope: !2878)
!2945 = !DILocation(line: 1718, column: 2, scope: !2870)
!2946 = !DILocation(line: 1723, column: 6, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2790, file: !459, line: 1723, column: 6)
!2948 = !DILocation(line: 1723, column: 6, scope: !2790)
!2949 = !DILocation(line: 1724, column: 40, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2947, file: !459, line: 1723, column: 22)
!2951 = !DILocation(line: 1724, column: 50, scope: !2950)
!2952 = !DILocation(line: 1724, column: 43, scope: !2950)
!2953 = !DILocation(line: 1724, column: 30, scope: !2950)
!2954 = !DILocation(line: 1724, column: 29, scope: !2950)
!2955 = !DILocation(line: 1724, column: 3, scope: !2950)
!2956 = !DILocation(line: 1724, column: 8, scope: !2950)
!2957 = !DILocation(line: 1724, column: 27, scope: !2950)
!2958 = !DILocation(line: 1725, column: 43, scope: !2950)
!2959 = !DILocation(line: 1725, column: 48, scope: !2950)
!2960 = !DILocation(line: 1725, column: 25, scope: !2950)
!2961 = !DILocation(line: 1725, column: 3, scope: !2950)
!2962 = !DILocation(line: 1725, column: 8, scope: !2950)
!2963 = !DILocation(line: 1725, column: 23, scope: !2950)
!2964 = !DILocation(line: 1726, column: 7, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2950, file: !459, line: 1726, column: 7)
!2966 = !DILocation(line: 1726, column: 12, scope: !2965)
!2967 = !DILocation(line: 1726, column: 7, scope: !2950)
!2968 = !DILocation(line: 1727, column: 9, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2970, file: !459, line: 1727, column: 8)
!2970 = distinct !DILexicalBlock(scope: !2965, file: !459, line: 1726, column: 28)
!2971 = !DILocation(line: 1727, column: 14, scope: !2969)
!2972 = !DILocation(line: 1727, column: 30, scope: !2969)
!2973 = !DILocation(line: 1727, column: 8, scope: !2970)
!2974 = !DILocation(line: 1728, column: 5, scope: !2969)
!2975 = !DILocation(line: 1728, column: 10, scope: !2969)
!2976 = !DILocation(line: 1728, column: 25, scope: !2969)
!2977 = !DILocation(line: 1729, column: 4, scope: !2970)
!2978 = !DILocation(line: 1729, column: 9, scope: !2970)
!2979 = !DILocation(line: 1729, column: 28, scope: !2970)
!2980 = !DILocation(line: 1730, column: 3, scope: !2970)
!2981 = !DILocation(line: 1731, column: 2, scope: !2950)
!2982 = !DILocation(line: 1734, column: 2, scope: !2790)
!2983 = !DILocation(line: 1734, column: 7, scope: !2790)
!2984 = !DILocation(line: 1734, column: 17, scope: !2790)
!2985 = !DILocation(line: 1737, column: 19, scope: !2790)
!2986 = !DILocation(line: 1737, column: 24, scope: !2790)
!2987 = !DILocation(line: 1737, column: 2, scope: !2790)
!2988 = !DILocation(line: 1737, column: 7, scope: !2790)
!2989 = !DILocation(line: 1737, column: 17, scope: !2790)
!2990 = !DILocation(line: 1739, column: 2, scope: !2790)
!2991 = !DILocation(line: 1740, column: 1, scope: !2790)
!2992 = distinct !DISubprogram(name: "netlink_if_get_ll_addr", scope: !459, file: !459, line: 1617, type: !2993, isLocal: true, isDefinition: true, scopeLine: 1619, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!407, !1679, !2675, !407, !386}
!2995 = !DILocalVariable(name: "ifp", arg: 1, scope: !2992, file: !459, line: 1617, type: !1679)
!2996 = !DILocation(line: 1617, column: 48, scope: !2992)
!2997 = !DILocalVariable(name: "tb", arg: 2, scope: !2992, file: !459, line: 1617, type: !2675)
!2998 = !DILocation(line: 1617, column: 68, scope: !2992)
!2999 = !DILocalVariable(name: "type", arg: 3, scope: !2992, file: !459, line: 1618, type: !407)
!3000 = !DILocation(line: 1618, column: 11, scope: !2992)
!3001 = !DILocalVariable(name: "name", arg: 4, scope: !2992, file: !459, line: 1618, type: !386)
!3002 = !DILocation(line: 1618, column: 23, scope: !2992)
!3003 = !DILocalVariable(name: "i", scope: !2992, file: !459, line: 1620, type: !404)
!3004 = !DILocation(line: 1620, column: 9, scope: !2992)
!3005 = !DILocation(line: 1622, column: 9, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !2992, file: !459, line: 1622, column: 6)
!3007 = !DILocation(line: 1622, column: 6, scope: !3006)
!3008 = !DILocation(line: 1622, column: 6, scope: !2992)
!3009 = !DILocalVariable(name: "hw_addr_len", scope: !3010, file: !459, line: 1623, type: !404)
!3010 = distinct !DILexicalBlock(scope: !3006, file: !459, line: 1622, column: 16)
!3011 = !DILocation(line: 1623, column: 10, scope: !3010)
!3012 = !DILocation(line: 1623, column: 26, scope: !3010)
!3013 = !DILocation(line: 1623, column: 23, scope: !3010)
!3014 = !DILocation(line: 1623, column: 24, scope: !3010)
!3015 = !DILocation(line: 1623, column: 35, scope: !3010)
!3016 = !DILocation(line: 1625, column: 7, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !3010, file: !459, line: 1625, column: 7)
!3018 = !DILocation(line: 1625, column: 19, scope: !3017)
!3019 = !DILocation(line: 1625, column: 7, scope: !3010)
!3020 = !DILocation(line: 1628, column: 24, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !3017, file: !459, line: 1625, column: 43)
!3022 = !DILocation(line: 1628, column: 9, scope: !3021)
!3023 = !DILocation(line: 1628, column: 31, scope: !3021)
!3024 = !DILocation(line: 1628, column: 37, scope: !3021)
!3025 = !DILocation(line: 1626, column: 4, scope: !3021)
!3026 = !DILocation(line: 1629, column: 4, scope: !3021)
!3027 = !DILocation(line: 1632, column: 11, scope: !3010)
!3028 = !DILocation(line: 1632, column: 3, scope: !3010)
!3029 = !DILocation(line: 1635, column: 23, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3010, file: !459, line: 1632, column: 17)
!3031 = !DILocation(line: 1635, column: 4, scope: !3030)
!3032 = !DILocation(line: 1635, column: 9, scope: !3030)
!3033 = !DILocation(line: 1635, column: 21, scope: !3030)
!3034 = !DILocation(line: 1636, column: 11, scope: !3030)
!3035 = !DILocation(line: 1636, column: 16, scope: !3030)
!3036 = !DILocation(line: 1636, column: 4, scope: !3030)
!3037 = !DILocation(line: 1636, column: 27, scope: !3030)
!3038 = !DILocation(line: 1636, column: 24, scope: !3030)
!3039 = !DILocation(line: 1636, column: 34, scope: !3030)
!3040 = !DILocation(line: 1636, column: 44, scope: !3030)
!3041 = !DILocation(line: 1641, column: 11, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3030, file: !459, line: 1641, column: 4)
!3043 = !DILocation(line: 1641, column: 9, scope: !3042)
!3044 = !DILocation(line: 1641, column: 16, scope: !3045)
!3045 = !DILexicalBlockFile(scope: !3046, file: !459, discriminator: 1)
!3046 = distinct !DILexicalBlock(scope: !3042, file: !459, line: 1641, column: 4)
!3047 = !DILocation(line: 1641, column: 20, scope: !3045)
!3048 = !DILocation(line: 1641, column: 18, scope: !3045)
!3049 = !DILocation(line: 1641, column: 4, scope: !3045)
!3050 = !DILocation(line: 1642, column: 22, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3046, file: !459, line: 1642, column: 9)
!3052 = !DILocation(line: 1642, column: 9, scope: !3051)
!3053 = !DILocation(line: 1642, column: 14, scope: !3051)
!3054 = !DILocation(line: 1642, column: 25, scope: !3051)
!3055 = !DILocation(line: 1642, column: 9, scope: !3046)
!3056 = !DILocation(line: 1643, column: 6, scope: !3051)
!3057 = !DILocation(line: 1642, column: 28, scope: !3058)
!3058 = !DILexicalBlockFile(scope: !3051, file: !459, discriminator: 1)
!3059 = !DILocation(line: 1641, column: 34, scope: !3060)
!3060 = !DILexicalBlockFile(scope: !3046, file: !459, discriminator: 2)
!3061 = !DILocation(line: 1641, column: 4, scope: !3060)
!3062 = distinct !{!3062, !3063}
!3063 = !DILocation(line: 1641, column: 4, scope: !3030)
!3064 = !DILocation(line: 1644, column: 8, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3030, file: !459, line: 1644, column: 8)
!3066 = !DILocation(line: 1644, column: 13, scope: !3065)
!3067 = !DILocation(line: 1644, column: 10, scope: !3065)
!3068 = !DILocation(line: 1644, column: 8, scope: !3030)
!3069 = !DILocation(line: 1645, column: 5, scope: !3065)
!3070 = !DILocation(line: 1645, column: 10, scope: !3065)
!3071 = !DILocation(line: 1645, column: 22, scope: !3065)
!3072 = !DILocation(line: 1647, column: 24, scope: !3065)
!3073 = !DILocation(line: 1647, column: 5, scope: !3065)
!3074 = !DILocation(line: 1647, column: 10, scope: !3065)
!3075 = !DILocation(line: 1647, column: 22, scope: !3065)
!3076 = !DILocation(line: 1648, column: 4, scope: !3030)
!3077 = !DILocation(line: 1651, column: 11, scope: !3030)
!3078 = !DILocation(line: 1651, column: 16, scope: !3030)
!3079 = !DILocation(line: 1651, column: 4, scope: !3030)
!3080 = !DILocation(line: 1651, column: 33, scope: !3030)
!3081 = !DILocation(line: 1651, column: 30, scope: !3030)
!3082 = !DILocation(line: 1651, column: 40, scope: !3030)
!3083 = !DILocation(line: 1652, column: 11, scope: !3030)
!3084 = !DILocation(line: 1653, column: 4, scope: !3030)
!3085 = !DILocation(line: 1656, column: 4, scope: !3030)
!3086 = !DILocation(line: 1658, column: 2, scope: !3010)
!3087 = !DILocation(line: 1660, column: 2, scope: !2992)
!3088 = !DILocation(line: 1661, column: 1, scope: !2992)
!3089 = distinct !DISubprogram(name: "parse_rtattr_nested", scope: !459, file: !459, line: 956, type: !3090, isLocal: true, isDefinition: true, scopeLine: 957, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{null, !2675, !407, !380}
!3092 = !DILocalVariable(name: "tb", arg: 1, scope: !3089, file: !459, line: 956, type: !2675)
!3093 = !DILocation(line: 956, column: 37, scope: !3089)
!3094 = !DILocalVariable(name: "max", arg: 2, scope: !3089, file: !459, line: 956, type: !407)
!3095 = !DILocation(line: 956, column: 45, scope: !3089)
!3096 = !DILocalVariable(name: "rta", arg: 3, scope: !3089, file: !459, line: 956, type: !380)
!3097 = !DILocation(line: 956, column: 65, scope: !3089)
!3098 = !DILocation(line: 958, column: 15, scope: !3089)
!3099 = !DILocation(line: 958, column: 19, scope: !3089)
!3100 = !DILocation(line: 958, column: 23, scope: !3089)
!3101 = !DILocation(line: 958, column: 33, scope: !3089)
!3102 = !DILocation(line: 958, column: 26, scope: !3089)
!3103 = !DILocation(line: 958, column: 38, scope: !3089)
!3104 = !DILocation(line: 958, column: 41, scope: !3089)
!3105 = !DILocation(line: 958, column: 39, scope: !3089)
!3106 = !DILocation(line: 958, column: 50, scope: !3089)
!3107 = !DILocation(line: 958, column: 2, scope: !3089)
!3108 = !DILocation(line: 959, column: 1, scope: !3089)
!3109 = distinct !DISubprogram(name: "get_mac_string", scope: !459, file: !459, line: 1605, type: !3110, isLocal: true, isDefinition: true, scopeLine: 1606, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!386, !407}
!3112 = !DILocalVariable(name: "type", arg: 1, scope: !3109, file: !459, line: 1605, type: !407)
!3113 = !DILocation(line: 1605, column: 33, scope: !3109)
!3114 = !DILocation(line: 1607, column: 10, scope: !3109)
!3115 = !DILocation(line: 1607, column: 2, scope: !3109)
!3116 = !DILocation(line: 1609, column: 3, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3109, file: !459, line: 1607, column: 16)
!3118 = !DILocation(line: 1611, column: 3, scope: !3117)
!3119 = !DILocation(line: 1613, column: 3, scope: !3117)
!3120 = !DILocation(line: 1615, column: 1, scope: !3109)
!3121 = distinct !DISubprogram(name: "netlink_link_filter", scope: !459, file: !459, line: 1827, type: !1363, isLocal: true, isDefinition: true, scopeLine: 1828, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!3122 = !DILocalVariable(name: "snl", arg: 1, scope: !3121, file: !459, line: 1827, type: !1365)
!3123 = !DILocation(line: 1827, column: 65, scope: !3121)
!3124 = !DILocalVariable(name: "h", arg: 2, scope: !3121, file: !459, line: 1827, type: !392)
!3125 = !DILocation(line: 1827, column: 87, scope: !3121)
!3126 = !DILocalVariable(name: "ifi", scope: !3121, file: !459, line: 1829, type: !2131)
!3127 = !DILocation(line: 1829, column: 20, scope: !3121)
!3128 = !DILocalVariable(name: "tb", scope: !3121, file: !459, line: 1830, type: !2134)
!3129 = !DILocation(line: 1830, column: 17, scope: !3121)
!3130 = !DILocalVariable(name: "ifp", scope: !3121, file: !459, line: 1831, type: !1679)
!3131 = !DILocation(line: 1831, column: 15, scope: !3121)
!3132 = !DILocalVariable(name: "len", scope: !3121, file: !459, line: 1832, type: !404)
!3133 = !DILocation(line: 1832, column: 9, scope: !3121)
!3134 = !DILocalVariable(name: "name", scope: !3121, file: !459, line: 1833, type: !386)
!3135 = !DILocation(line: 1833, column: 8, scope: !3121)
!3136 = !DILocation(line: 1835, column: 8, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3121, file: !459, line: 1835, column: 6)
!3138 = !DILocation(line: 1835, column: 11, scope: !3137)
!3139 = !DILocation(line: 1835, column: 22, scope: !3137)
!3140 = !DILocation(line: 1835, column: 36, scope: !3137)
!3141 = !DILocation(line: 1835, column: 39, scope: !3142)
!3142 = !DILexicalBlockFile(scope: !3137, file: !459, discriminator: 1)
!3143 = !DILocation(line: 1835, column: 42, scope: !3142)
!3144 = !DILocation(line: 1835, column: 53, scope: !3142)
!3145 = !DILocation(line: 1835, column: 6, scope: !3142)
!3146 = !DILocation(line: 1836, column: 3, scope: !3137)
!3147 = !DILocation(line: 1838, column: 6, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3121, file: !459, line: 1838, column: 6)
!3149 = !DILocation(line: 1838, column: 9, scope: !3148)
!3150 = !DILocation(line: 1838, column: 19, scope: !3148)
!3151 = !DILocation(line: 1838, column: 6, scope: !3121)
!3152 = !DILocation(line: 1839, column: 3, scope: !3148)
!3153 = !DILocation(line: 1840, column: 8, scope: !3121)
!3154 = !DILocation(line: 1840, column: 11, scope: !3121)
!3155 = !DILocation(line: 1840, column: 21, scope: !3121)
!3156 = !DILocation(line: 1840, column: 6, scope: !3121)
!3157 = !DILocation(line: 1843, column: 2, scope: !3121)
!3158 = !DILocation(line: 1844, column: 7, scope: !3121)
!3159 = !DILocation(line: 1844, column: 17, scope: !3121)
!3160 = !DILocation(line: 1844, column: 9, scope: !3121)
!3161 = !DILocation(line: 1844, column: 6, scope: !3121)
!3162 = !DILocation(line: 1845, column: 15, scope: !3121)
!3163 = !DILocation(line: 1845, column: 28, scope: !3121)
!3164 = !DILocation(line: 1845, column: 47, scope: !3121)
!3165 = !DILocation(line: 1845, column: 31, scope: !3121)
!3166 = !DILocation(line: 1845, column: 29, scope: !3121)
!3167 = !DILocation(line: 1845, column: 43, scope: !3121)
!3168 = !DILocation(line: 1845, column: 2, scope: !3121)
!3169 = !DILocation(line: 1846, column: 6, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3121, file: !459, line: 1846, column: 6)
!3171 = !DILocation(line: 1846, column: 22, scope: !3170)
!3172 = !DILocation(line: 1846, column: 6, scope: !3121)
!3173 = !DILocation(line: 1847, column: 3, scope: !3170)
!3174 = !DILocation(line: 1848, column: 16, scope: !3121)
!3175 = !DILocation(line: 1848, column: 26, scope: !3121)
!3176 = !DILocation(line: 1848, column: 19, scope: !3121)
!3177 = !DILocation(line: 1848, column: 7, scope: !3121)
!3178 = !DILocation(line: 1852, column: 7, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3121, file: !459, line: 1852, column: 6)
!3180 = !DILocation(line: 1852, column: 12, scope: !3179)
!3181 = !DILocation(line: 1852, column: 23, scope: !3179)
!3182 = !DILocation(line: 1852, column: 26, scope: !3183)
!3183 = !DILexicalBlockFile(scope: !3179, file: !459, discriminator: 1)
!3184 = !DILocation(line: 1852, column: 43, scope: !3183)
!3185 = !DILocation(line: 1852, column: 46, scope: !3186)
!3186 = !DILexicalBlockFile(scope: !3179, file: !459, discriminator: 2)
!3187 = !DILocation(line: 1852, column: 49, scope: !3186)
!3188 = !DILocation(line: 1852, column: 60, scope: !3186)
!3189 = !DILocation(line: 1852, column: 6, scope: !3186)
!3190 = !DILocation(line: 1853, column: 3, scope: !3179)
!3191 = !DILocation(line: 1860, column: 37, scope: !3121)
!3192 = !DILocation(line: 1860, column: 42, scope: !3121)
!3193 = !DILocation(line: 1860, column: 8, scope: !3121)
!3194 = !DILocation(line: 1860, column: 6, scope: !3121)
!3195 = !DILocation(line: 1862, column: 6, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3121, file: !459, line: 1862, column: 6)
!3197 = !DILocation(line: 1862, column: 6, scope: !3121)
!3198 = !DILocation(line: 1863, column: 7, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3200, file: !459, line: 1863, column: 7)
!3200 = distinct !DILexicalBlock(scope: !3196, file: !459, line: 1862, column: 11)
!3201 = !DILocation(line: 1863, column: 10, scope: !3199)
!3202 = !DILocation(line: 1863, column: 21, scope: !3199)
!3203 = !DILocation(line: 1863, column: 7, scope: !3200)
!3204 = !DILocation(line: 1864, column: 11, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3206, file: !459, line: 1864, column: 8)
!3206 = distinct !DILexicalBlock(scope: !3199, file: !459, line: 1863, column: 36)
!3207 = !DILocation(line: 1864, column: 16, scope: !3205)
!3208 = !DILocation(line: 1864, column: 31, scope: !3205)
!3209 = !DILocation(line: 1864, column: 8, scope: !3205)
!3210 = !DILocation(line: 1864, column: 13, scope: !3211)
!3211 = !DILexicalBlockFile(scope: !3205, file: !459, discriminator: 1)
!3212 = !DILocation(line: 1864, column: 18, scope: !3211)
!3213 = !DILocation(line: 1864, column: 34, scope: !3211)
!3214 = !DILocation(line: 1864, column: 39, scope: !3211)
!3215 = !DILocation(line: 1864, column: 8, scope: !3211)
!3216 = !DILocation(line: 1864, column: 12, scope: !3217)
!3217 = !DILexicalBlockFile(scope: !3205, file: !459, discriminator: 2)
!3218 = !DILocation(line: 1864, column: 17, scope: !3217)
!3219 = !DILocation(line: 1864, column: 33, scope: !3217)
!3220 = !DILocation(line: 1864, column: 38, scope: !3217)
!3221 = !DILocation(line: 1864, column: 11, scope: !3217)
!3222 = !DILocation(line: 1864, column: 14, scope: !3223)
!3223 = !DILexicalBlockFile(scope: !3205, file: !459, discriminator: 3)
!3224 = !DILocation(line: 1864, column: 8, scope: !3223)
!3225 = !DILocation(line: 1865, column: 50, scope: !3205)
!3226 = !DILocation(line: 1865, column: 55, scope: !3205)
!3227 = !DILocation(line: 1865, column: 5, scope: !3205)
!3228 = !DILocation(line: 1867, column: 8, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3206, file: !459, line: 1867, column: 8)
!3230 = !DILocation(line: 1867, column: 18, scope: !3229)
!3231 = !DILocation(line: 1867, column: 8, scope: !3206)
!3232 = !DILocation(line: 1868, column: 28, scope: !3229)
!3233 = !DILocation(line: 1868, column: 5, scope: !3229)
!3234 = !DILocation(line: 1870, column: 5, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3229, file: !459, line: 1869, column: 9)
!3236 = !DILocation(line: 1870, column: 10, scope: !3235)
!3237 = !DILocation(line: 1870, column: 20, scope: !3235)
!3238 = !DILocation(line: 1871, column: 5, scope: !3235)
!3239 = !DILocation(line: 1871, column: 10, scope: !3235)
!3240 = !DILocation(line: 1871, column: 18, scope: !3235)
!3241 = !DILocation(line: 1879, column: 11, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3206, file: !459, line: 1879, column: 8)
!3243 = !DILocation(line: 1879, column: 16, scope: !3242)
!3244 = !DILocation(line: 1879, column: 31, scope: !3242)
!3245 = !DILocation(line: 1879, column: 8, scope: !3242)
!3246 = !DILocation(line: 1879, column: 13, scope: !3247)
!3247 = !DILexicalBlockFile(scope: !3242, file: !459, discriminator: 1)
!3248 = !DILocation(line: 1879, column: 18, scope: !3247)
!3249 = !DILocation(line: 1879, column: 34, scope: !3247)
!3250 = !DILocation(line: 1879, column: 39, scope: !3247)
!3251 = !DILocation(line: 1879, column: 8, scope: !3247)
!3252 = !DILocation(line: 1879, column: 12, scope: !3253)
!3253 = !DILexicalBlockFile(scope: !3242, file: !459, discriminator: 2)
!3254 = !DILocation(line: 1879, column: 17, scope: !3253)
!3255 = !DILocation(line: 1879, column: 33, scope: !3253)
!3256 = !DILocation(line: 1879, column: 38, scope: !3253)
!3257 = !DILocation(line: 1879, column: 11, scope: !3253)
!3258 = !DILocation(line: 1879, column: 14, scope: !3259)
!3259 = !DILexicalBlockFile(scope: !3242, file: !459, discriminator: 3)
!3260 = !DILocation(line: 1879, column: 19, scope: !3259)
!3261 = !DILocation(line: 1879, column: 24, scope: !3259)
!3262 = !DILocation(line: 1879, column: 27, scope: !3263)
!3263 = !DILexicalBlockFile(scope: !3242, file: !459, discriminator: 4)
!3264 = !DILocation(line: 1879, column: 32, scope: !3263)
!3265 = !DILocation(line: 1879, column: 42, scope: !3263)
!3266 = !DILocation(line: 1879, column: 8, scope: !3263)
!3267 = !DILocation(line: 1880, column: 22, scope: !3242)
!3268 = !DILocation(line: 1880, column: 52, scope: !3242)
!3269 = !DILocation(line: 1880, column: 5, scope: !3242)
!3270 = !DILocation(line: 1882, column: 3, scope: !3206)
!3271 = !DILocation(line: 1882, column: 21, scope: !3272)
!3272 = !DILexicalBlockFile(scope: !3273, file: !459, discriminator: 1)
!3273 = distinct !DILexicalBlock(scope: !3199, file: !459, line: 1882, column: 14)
!3274 = !DILocation(line: 1882, column: 26, scope: !3272)
!3275 = !DILocation(line: 1882, column: 34, scope: !3272)
!3276 = !DILocation(line: 1882, column: 14, scope: !3272)
!3277 = !DILocation(line: 1884, column: 69, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3273, file: !459, line: 1882, column: 41)
!3279 = !DILocation(line: 1884, column: 74, scope: !3278)
!3280 = !DILocation(line: 1884, column: 82, scope: !3278)
!3281 = !DILocation(line: 1884, column: 4, scope: !3278)
!3282 = !DILocation(line: 1887, column: 8, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3278, file: !459, line: 1887, column: 8)
!3284 = !DILocation(line: 1887, column: 18, scope: !3283)
!3285 = !DILocation(line: 1887, column: 8, scope: !3278)
!3286 = !DILocation(line: 1888, column: 28, scope: !3283)
!3287 = !DILocation(line: 1888, column: 5, scope: !3283)
!3288 = !DILocation(line: 1890, column: 5, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3283, file: !459, line: 1889, column: 9)
!3290 = !DILocation(line: 1890, column: 10, scope: !3289)
!3291 = !DILocation(line: 1890, column: 20, scope: !3289)
!3292 = !DILocation(line: 1891, column: 5, scope: !3289)
!3293 = !DILocation(line: 1891, column: 10, scope: !3289)
!3294 = !DILocation(line: 1891, column: 18, scope: !3289)
!3295 = !DILocation(line: 1900, column: 11, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3278, file: !459, line: 1900, column: 8)
!3297 = !DILocation(line: 1900, column: 16, scope: !3296)
!3298 = !DILocation(line: 1900, column: 31, scope: !3296)
!3299 = !DILocation(line: 1900, column: 8, scope: !3296)
!3300 = !DILocation(line: 1900, column: 13, scope: !3301)
!3301 = !DILexicalBlockFile(scope: !3296, file: !459, discriminator: 1)
!3302 = !DILocation(line: 1900, column: 18, scope: !3301)
!3303 = !DILocation(line: 1900, column: 34, scope: !3301)
!3304 = !DILocation(line: 1900, column: 39, scope: !3301)
!3305 = !DILocation(line: 1900, column: 8, scope: !3301)
!3306 = !DILocation(line: 1900, column: 12, scope: !3307)
!3307 = !DILexicalBlockFile(scope: !3296, file: !459, discriminator: 2)
!3308 = !DILocation(line: 1900, column: 17, scope: !3307)
!3309 = !DILocation(line: 1900, column: 33, scope: !3307)
!3310 = !DILocation(line: 1900, column: 38, scope: !3307)
!3311 = !DILocation(line: 1900, column: 11, scope: !3307)
!3312 = !DILocation(line: 1900, column: 14, scope: !3313)
!3313 = !DILexicalBlockFile(scope: !3296, file: !459, discriminator: 3)
!3314 = !DILocation(line: 1900, column: 19, scope: !3313)
!3315 = !DILocation(line: 1900, column: 8, scope: !3313)
!3316 = !DILocation(line: 1904, column: 9, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3318, file: !459, line: 1904, column: 9)
!3318 = distinct !DILexicalBlock(scope: !3296, file: !459, line: 1900, column: 25)
!3319 = !DILocation(line: 1904, column: 14, scope: !3317)
!3320 = !DILocation(line: 1904, column: 24, scope: !3317)
!3321 = !DILocation(line: 1904, column: 9, scope: !3318)
!3322 = !DILocation(line: 1905, column: 23, scope: !3317)
!3323 = !DILocation(line: 1905, column: 53, scope: !3317)
!3324 = !DILocation(line: 1905, column: 6, scope: !3317)
!3325 = !DILocation(line: 1906, column: 4, scope: !3318)
!3326 = !DILocation(line: 1909, column: 9, scope: !3296)
!3327 = !DILocation(line: 1910, column: 3, scope: !3278)
!3328 = !DILocation(line: 1910, column: 14, scope: !3329)
!3329 = !DILexicalBlockFile(scope: !3330, file: !459, discriminator: 1)
!3330 = distinct !DILexicalBlock(scope: !3273, file: !459, line: 1910, column: 14)
!3331 = !DILocation(line: 1910, column: 19, scope: !3329)
!3332 = !DILocation(line: 1912, column: 4, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3330, file: !459, line: 1910, column: 41)
!3334 = !DILocation(line: 1914, column: 2, scope: !3200)
!3335 = !DILocation(line: 1916, column: 7, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3121, file: !459, line: 1916, column: 6)
!3337 = !DILocation(line: 1916, column: 6, scope: !3121)
!3338 = !DILocation(line: 1917, column: 7, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3340, file: !459, line: 1917, column: 7)
!3340 = distinct !DILexicalBlock(scope: !3336, file: !459, line: 1916, column: 12)
!3341 = !DILocation(line: 1917, column: 10, scope: !3339)
!3342 = !DILocation(line: 1917, column: 21, scope: !3339)
!3343 = !DILocation(line: 1917, column: 7, scope: !3340)
!3344 = !DILocation(line: 1918, column: 27, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3339, file: !459, line: 1917, column: 36)
!3346 = !DILocation(line: 1918, column: 10, scope: !3345)
!3347 = !DILocation(line: 1918, column: 8, scope: !3345)
!3348 = !DILocalVariable(name: "sav_garp_delay", scope: !3345, file: !459, line: 1923, type: !1709)
!3349 = !DILocation(line: 1923, column: 18, scope: !3345)
!3350 = !DILocation(line: 1923, column: 35, scope: !3345)
!3351 = !DILocation(line: 1923, column: 40, scope: !3345)
!3352 = !DILocalVariable(name: "sav_tracking_vrrp", scope: !3345, file: !459, line: 1924, type: !509)
!3353 = !DILocation(line: 1924, column: 9, scope: !3345)
!3354 = !DILocation(line: 1924, column: 29, scope: !3345)
!3355 = !DILocation(line: 1924, column: 34, scope: !3345)
!3356 = !DILocation(line: 1926, column: 11, scope: !3345)
!3357 = !DILocation(line: 1926, column: 4, scope: !3345)
!3358 = !DILocation(line: 1928, column: 22, scope: !3345)
!3359 = !DILocation(line: 1928, column: 4, scope: !3345)
!3360 = !DILocation(line: 1928, column: 9, scope: !3345)
!3361 = !DILocation(line: 1928, column: 20, scope: !3345)
!3362 = !DILocation(line: 1929, column: 25, scope: !3345)
!3363 = !DILocation(line: 1929, column: 4, scope: !3345)
!3364 = !DILocation(line: 1929, column: 9, scope: !3345)
!3365 = !DILocation(line: 1929, column: 23, scope: !3345)
!3366 = !DILocation(line: 1931, column: 34, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3345, file: !459, line: 1931, column: 8)
!3368 = !DILocation(line: 1931, column: 39, scope: !3367)
!3369 = !DILocation(line: 1931, column: 43, scope: !3367)
!3370 = !DILocation(line: 1931, column: 9, scope: !3367)
!3371 = !DILocation(line: 1931, column: 8, scope: !3345)
!3372 = !DILocation(line: 1932, column: 5, scope: !3367)
!3373 = !DILocation(line: 1934, column: 8, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3345, file: !459, line: 1934, column: 8)
!3375 = !DILocation(line: 1934, column: 8, scope: !3345)
!3376 = !DILocation(line: 1935, column: 48, scope: !3374)
!3377 = !DILocation(line: 1935, column: 53, scope: !3374)
!3378 = !DILocation(line: 1935, column: 5, scope: !3374)
!3379 = !DILocation(line: 1937, column: 27, scope: !3345)
!3380 = !DILocation(line: 1937, column: 4, scope: !3345)
!3381 = !DILocation(line: 1938, column: 3, scope: !3345)
!3382 = !DILocation(line: 1939, column: 8, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3384, file: !459, line: 1939, column: 8)
!3384 = distinct !DILexicalBlock(scope: !3339, file: !459, line: 1938, column: 10)
!3385 = !DILocation(line: 1939, column: 8, scope: !3384)
!3386 = !DILocation(line: 1940, column: 66, scope: !3383)
!3387 = !DILocation(line: 1940, column: 58, scope: !3383)
!3388 = !DILocation(line: 1940, column: 5, scope: !3383)
!3389 = !DILocation(line: 1941, column: 4, scope: !3384)
!3390 = !DILocation(line: 1943, column: 2, scope: !3340)
!3391 = !DILocation(line: 1946, column: 25, scope: !3121)
!3392 = !DILocation(line: 1946, column: 31, scope: !3121)
!3393 = !DILocation(line: 1946, column: 34, scope: !3121)
!3394 = !DILocation(line: 1946, column: 45, scope: !3121)
!3395 = !DILocation(line: 1946, column: 30, scope: !3121)
!3396 = !DILocation(line: 1946, column: 30, scope: !3397)
!3397 = !DILexicalBlockFile(scope: !3121, file: !459, discriminator: 1)
!3398 = !DILocation(line: 1946, column: 66, scope: !3399)
!3399 = !DILexicalBlockFile(scope: !3121, file: !459, discriminator: 2)
!3400 = !DILocation(line: 1946, column: 71, scope: !3399)
!3401 = !DILocation(line: 1946, column: 30, scope: !3399)
!3402 = !DILocation(line: 1946, column: 30, scope: !3403)
!3403 = !DILexicalBlockFile(scope: !3121, file: !459, discriminator: 3)
!3404 = !DILocation(line: 1946, column: 2, scope: !3403)
!3405 = !DILocation(line: 1948, column: 2, scope: !3121)
!3406 = !DILocation(line: 1949, column: 1, scope: !3121)
!3407 = distinct !DISubprogram(name: "netlink_if_address_filter", scope: !459, file: !459, line: 1000, type: !1363, isLocal: true, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!3408 = !DILocalVariable(name: "snl", arg: 1, scope: !3407, file: !459, line: 1000, type: !1365)
!3409 = !DILocation(line: 1000, column: 71, scope: !3407)
!3410 = !DILocalVariable(name: "h", arg: 2, scope: !3407, file: !459, line: 1000, type: !392)
!3411 = !DILocation(line: 1000, column: 93, scope: !3407)
!3412 = !DILocalVariable(name: "ifa", scope: !3407, file: !459, line: 1002, type: !3413)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64, align: 64)
!3414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ifaddrmsg", file: !286, line: 7, size: 64, align: 32, elements: !3415)
!3415 = !{!3416, !3418, !3419, !3420, !3421}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_family", scope: !3414, file: !286, line: 8, baseType: !3417, size: 8, align: 8)
!3417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !398, line: 20, baseType: !435)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_prefixlen", scope: !3414, file: !286, line: 9, baseType: !3417, size: 8, align: 8, offset: 8)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_flags", scope: !3414, file: !286, line: 10, baseType: !3417, size: 8, align: 8, offset: 16)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_scope", scope: !3414, file: !286, line: 11, baseType: !3417, size: 8, align: 8, offset: 24)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_index", scope: !3414, file: !286, line: 12, baseType: !397, size: 32, align: 32, offset: 32)
!3422 = !DILocation(line: 1002, column: 20, scope: !3407)
!3423 = !DILocalVariable(name: "tb", scope: !3407, file: !459, line: 1003, type: !3424)
!3424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 576, align: 64, elements: !3425)
!3425 = !{!3426}
!3426 = !DISubrange(count: 9)
!3427 = !DILocation(line: 1003, column: 17, scope: !3407)
!3428 = !DILocalVariable(name: "ifp", scope: !3407, file: !459, line: 1005, type: !1679)
!3429 = !DILocation(line: 1005, column: 15, scope: !3407)
!3430 = !DILocalVariable(name: "ipaddr", scope: !3407, file: !459, line: 1006, type: !3431)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64, align: 64)
!3432 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_address_t", file: !3433, line: 73, baseType: !3434)
!3433 = !DIFile(filename: "./../include/vrrp_ipaddress.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ip_address", file: !3433, line: 41, size: 704, align: 64, elements: !3435)
!3435 = !{!3436, !3437, !3446, !3447, !3448, !3449, !3450, !3451, !3456, !3457, !3466, !3467, !3468}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "ifa", scope: !3434, file: !3433, line: 42, baseType: !3414, size: 64, align: 32)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !3434, file: !3433, line: 50, baseType: !3438, size: 128, align: 32, offset: 64)
!3438 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3434, file: !3433, line: 44, size: 128, align: 32, elements: !3439)
!3439 = !{!3440, !3445}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "sin", scope: !3438, file: !3433, line: 48, baseType: !3441, size: 64, align: 32)
!3441 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3438, file: !3433, line: 45, size: 64, align: 32, elements: !3442)
!3442 = !{!3443, !3444}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !3441, file: !3433, line: 46, baseType: !448, size: 32, align: 32)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "sin_brd", scope: !3441, file: !3433, line: 47, baseType: !448, size: 32, align: 32, offset: 32)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !3438, file: !3433, line: 49, baseType: !426, size: 128, align: 32)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "ifp", scope: !3434, file: !3433, line: 52, baseType: !1679, size: 64, align: 64, offset: 192)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !3434, file: !3433, line: 53, baseType: !386, size: 64, align: 64, offset: 256)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3434, file: !3433, line: 55, baseType: !389, size: 32, align: 32, offset: 320)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "flagmask", scope: !3434, file: !3433, line: 56, baseType: !389, size: 32, align: 32, offset: 352)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "have_peer", scope: !3434, file: !3433, line: 61, baseType: !609, size: 8, align: 8, offset: 384)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !3434, file: !3433, line: 65, baseType: !3452, size: 128, align: 32, offset: 416)
!3452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3434, file: !3433, line: 62, size: 128, align: 32, elements: !3453)
!3453 = !{!3454, !3455}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !3452, file: !3433, line: 63, baseType: !448, size: 32, align: 32)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !3452, file: !3433, line: 64, baseType: !426, size: 128, align: 32)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "dont_track", scope: !3434, file: !3433, line: 66, baseType: !609, size: 8, align: 8, offset: 544)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "track_group", scope: !3434, file: !3433, line: 67, baseType: !3458, size: 64, align: 64, offset: 576)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64, align: 64)
!3459 = !DIDerivedType(tag: DW_TAG_typedef, name: "static_track_group_t", file: !3460, line: 39, baseType: !3461)
!3460 = !DIFile(filename: "./../include/vrrp_static_track.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_static_track_group", file: !3460, line: 35, size: 192, align: 64, elements: !3462)
!3462 = !{!3463, !3464, !3465}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !3461, file: !3460, line: 36, baseType: !386, size: 64, align: 64)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !3461, file: !3460, line: 37, baseType: !1744, size: 64, align: 64, offset: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp_instances", scope: !3461, file: !3460, line: 38, baseType: !509, size: 64, align: 64, offset: 128)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3434, file: !3433, line: 69, baseType: !609, size: 8, align: 8, offset: 640)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "iptable_rule_set", scope: !3434, file: !3433, line: 70, baseType: !609, size: 8, align: 8, offset: 648)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "garp_gna_pending", scope: !3434, file: !3433, line: 72, baseType: !609, size: 8, align: 8, offset: 656)
!3469 = !DILocation(line: 1006, column: 16, scope: !3407)
!3470 = !DILocalVariable(name: "len", scope: !3407, file: !459, line: 1008, type: !404)
!3471 = !DILocation(line: 1008, column: 9, scope: !3407)
!3472 = !DILocalVariable(name: "addr", scope: !3407, file: !459, line: 1013, type: !3473)
!3473 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3407, file: !459, line: 1009, size: 64, align: 64, elements: !3474)
!3474 = !{!3475, !3476, !3477}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3473, file: !459, line: 1010, baseType: !388, size: 64, align: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !3473, file: !459, line: 1011, baseType: !447, size: 64, align: 64)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "in6", scope: !3473, file: !459, line: 1012, baseType: !425, size: 64, align: 64)
!3478 = !DILocation(line: 1013, column: 4, scope: !3407)
!3479 = !DILocalVariable(name: "addr_str", scope: !3407, file: !459, line: 1015, type: !3480)
!3480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 368, align: 8, elements: !3481)
!3481 = !{!3482}
!3482 = !DISubrange(count: 46)
!3483 = !DILocation(line: 1015, column: 7, scope: !3407)
!3484 = !DILocalVariable(name: "addr_chg", scope: !3407, file: !459, line: 1016, type: !609)
!3485 = !DILocation(line: 1016, column: 6, scope: !3407)
!3486 = !DILocalVariable(name: "e", scope: !3407, file: !459, line: 1017, type: !1911)
!3487 = !DILocation(line: 1017, column: 10, scope: !3407)
!3488 = !DILocalVariable(name: "vrrp", scope: !3407, file: !459, line: 1018, type: !1731)
!3489 = !DILocation(line: 1018, column: 10, scope: !3407)
!3490 = !DILocalVariable(name: "address_vrrp", scope: !3407, file: !459, line: 1019, type: !1731)
!3491 = !DILocation(line: 1019, column: 10, scope: !3407)
!3492 = !DILocalVariable(name: "tvp", scope: !3407, file: !459, line: 1020, type: !1914)
!3493 = !DILocation(line: 1020, column: 19, scope: !3407)
!3494 = !DILocalVariable(name: "is_tracking_saddr", scope: !3407, file: !459, line: 1021, type: !609)
!3495 = !DILocation(line: 1021, column: 6, scope: !3407)
!3496 = !DILocation(line: 1024, column: 6, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3407, file: !459, line: 1024, column: 6)
!3498 = !DILocation(line: 1024, column: 9, scope: !3497)
!3499 = !DILocation(line: 1024, column: 20, scope: !3497)
!3500 = !DILocation(line: 1024, column: 34, scope: !3497)
!3501 = !DILocation(line: 1024, column: 37, scope: !3502)
!3502 = !DILexicalBlockFile(scope: !3497, file: !459, discriminator: 1)
!3503 = !DILocation(line: 1024, column: 40, scope: !3502)
!3504 = !DILocation(line: 1024, column: 51, scope: !3502)
!3505 = !DILocation(line: 1024, column: 6, scope: !3502)
!3506 = !DILocation(line: 1025, column: 3, scope: !3497)
!3507 = !DILocation(line: 1027, column: 6, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3407, file: !459, line: 1027, column: 6)
!3509 = !DILocation(line: 1027, column: 9, scope: !3508)
!3510 = !DILocation(line: 1027, column: 19, scope: !3508)
!3511 = !DILocation(line: 1027, column: 6, scope: !3407)
!3512 = !DILocation(line: 1028, column: 3, scope: !3508)
!3513 = !DILocation(line: 1030, column: 7, scope: !3407)
!3514 = !DILocation(line: 1030, column: 17, scope: !3407)
!3515 = !DILocation(line: 1030, column: 9, scope: !3407)
!3516 = !DILocation(line: 1030, column: 6, scope: !3407)
!3517 = !DILocation(line: 1033, column: 6, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3407, file: !459, line: 1033, column: 6)
!3519 = !DILocation(line: 1033, column: 11, scope: !3518)
!3520 = !DILocation(line: 1033, column: 22, scope: !3518)
!3521 = !DILocation(line: 1033, column: 32, scope: !3518)
!3522 = !DILocation(line: 1033, column: 35, scope: !3523)
!3523 = !DILexicalBlockFile(scope: !3518, file: !459, discriminator: 1)
!3524 = !DILocation(line: 1033, column: 40, scope: !3523)
!3525 = !DILocation(line: 1033, column: 51, scope: !3523)
!3526 = !DILocation(line: 1033, column: 6, scope: !3523)
!3527 = !DILocation(line: 1034, column: 3, scope: !3518)
!3528 = !DILocation(line: 1036, column: 8, scope: !3407)
!3529 = !DILocation(line: 1036, column: 11, scope: !3407)
!3530 = !DILocation(line: 1036, column: 21, scope: !3407)
!3531 = !DILocation(line: 1036, column: 6, scope: !3407)
!3532 = !DILocation(line: 1038, column: 2, scope: !3407)
!3533 = !DILocation(line: 1039, column: 15, scope: !3407)
!3534 = !DILocation(line: 1039, column: 27, scope: !3407)
!3535 = !DILocation(line: 1039, column: 46, scope: !3407)
!3536 = !DILocation(line: 1039, column: 30, scope: !3407)
!3537 = !DILocation(line: 1039, column: 28, scope: !3407)
!3538 = !DILocation(line: 1039, column: 41, scope: !3407)
!3539 = !DILocation(line: 1039, column: 2, scope: !3407)
!3540 = !DILocation(line: 1041, column: 6, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3407, file: !459, line: 1041, column: 6)
!3542 = !DILocation(line: 1041, column: 20, scope: !3541)
!3543 = !DILocation(line: 1041, column: 6, scope: !3407)
!3544 = !DILocation(line: 1042, column: 19, scope: !3541)
!3545 = !DILocation(line: 1042, column: 3, scope: !3541)
!3546 = !DILocation(line: 1042, column: 17, scope: !3541)
!3547 = !DILocation(line: 1043, column: 6, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3407, file: !459, line: 1043, column: 6)
!3549 = !DILocation(line: 1043, column: 22, scope: !3548)
!3550 = !DILocation(line: 1043, column: 6, scope: !3407)
!3551 = !DILocation(line: 1044, column: 21, scope: !3548)
!3552 = !DILocation(line: 1044, column: 3, scope: !3548)
!3553 = !DILocation(line: 1044, column: 19, scope: !3548)
!3554 = !DILocation(line: 1047, column: 15, scope: !3407)
!3555 = !DILocation(line: 1047, column: 30, scope: !3556)
!3556 = !DILexicalBlockFile(scope: !3407, file: !459, discriminator: 1)
!3557 = !DILocation(line: 1047, column: 40, scope: !3556)
!3558 = !DILocation(line: 1047, column: 33, scope: !3556)
!3559 = !DILocation(line: 1047, column: 15, scope: !3556)
!3560 = !DILocation(line: 1047, column: 15, scope: !3561)
!3561 = !DILexicalBlockFile(scope: !3407, file: !459, discriminator: 2)
!3562 = !DILocation(line: 1047, column: 15, scope: !3563)
!3563 = !DILexicalBlockFile(scope: !3407, file: !459, discriminator: 3)
!3564 = !DILocation(line: 1047, column: 7, scope: !3563)
!3565 = !DILocation(line: 1047, column: 12, scope: !3563)
!3566 = !DILocation(line: 1049, column: 11, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3407, file: !459, line: 1049, column: 6)
!3568 = !DILocation(line: 1049, column: 16, scope: !3567)
!3569 = !DILocation(line: 1049, column: 6, scope: !3407)
!3570 = !DILocation(line: 1050, column: 3, scope: !3567)
!3571 = !DILocation(line: 1054, column: 6, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3407, file: !459, line: 1054, column: 6)
!3573 = !DILocation(line: 1054, column: 16, scope: !3572)
!3574 = !DILocation(line: 1054, column: 34, scope: !3572)
!3575 = !DILocation(line: 1054, column: 37, scope: !3576)
!3576 = !DILexicalBlockFile(scope: !3572, file: !459, discriminator: 1)
!3577 = !DILocation(line: 1054, column: 6, scope: !3576)
!3578 = !DILocation(line: 1058, column: 27, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3572, file: !459, line: 1056, column: 2)
!3580 = !DILocation(line: 1058, column: 32, scope: !3579)
!3581 = !DILocation(line: 1058, column: 9, scope: !3579)
!3582 = !DILocation(line: 1058, column: 7, scope: !3579)
!3583 = !DILocation(line: 1059, column: 8, scope: !3584)
!3584 = distinct !DILexicalBlock(scope: !3579, file: !459, line: 1059, column: 7)
!3585 = !DILocation(line: 1059, column: 7, scope: !3579)
!3586 = !DILocation(line: 1060, column: 4, scope: !3584)
!3587 = !DILocation(line: 1068, column: 8, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3579, file: !459, line: 1068, column: 7)
!3589 = !DILocation(line: 1068, column: 13, scope: !3588)
!3590 = !DILocation(line: 1068, column: 18, scope: !3588)
!3591 = !DILocation(line: 1068, column: 21, scope: !3592)
!3592 = !DILexicalBlockFile(scope: !3588, file: !459, discriminator: 1)
!3593 = !DILocation(line: 1068, column: 26, scope: !3592)
!3594 = !DILocation(line: 1068, column: 37, scope: !3592)
!3595 = !DILocation(line: 1068, column: 7, scope: !3592)
!3596 = !DILocation(line: 1069, column: 8, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3598, file: !459, line: 1069, column: 8)
!3598 = distinct !DILexicalBlock(scope: !3588, file: !459, line: 1068, column: 49)
!3599 = !DILocation(line: 1069, column: 11, scope: !3597)
!3600 = !DILocation(line: 1069, column: 22, scope: !3597)
!3601 = !DILocation(line: 1069, column: 8, scope: !3598)
!3602 = !DILocation(line: 1072, column: 9, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3604, file: !459, line: 1072, column: 9)
!3604 = distinct !DILexicalBlock(scope: !3597, file: !459, line: 1069, column: 37)
!3605 = !DILocation(line: 1072, column: 14, scope: !3603)
!3606 = !DILocation(line: 1072, column: 25, scope: !3603)
!3607 = !DILocation(line: 1072, column: 9, scope: !3604)
!3608 = !DILocation(line: 1073, column: 11, scope: !3609)
!3609 = distinct !DILexicalBlock(scope: !3610, file: !459, line: 1073, column: 10)
!3610 = distinct !DILexicalBlock(scope: !3603, file: !459, line: 1072, column: 36)
!3611 = !DILocation(line: 1073, column: 16, scope: !3609)
!3612 = !DILocation(line: 1073, column: 25, scope: !3609)
!3613 = !DILocation(line: 1073, column: 10, scope: !3610)
!3614 = !DILocation(line: 1074, column: 7, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3609, file: !459, line: 1073, column: 33)
!3616 = !DILocation(line: 1074, column: 12, scope: !3615)
!3617 = !DILocation(line: 1074, column: 29, scope: !3615)
!3618 = !DILocation(line: 1074, column: 23, scope: !3615)
!3619 = !DILocation(line: 1075, column: 14, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !3615, file: !459, line: 1075, column: 11)
!3621 = !DILocation(line: 1075, column: 19, scope: !3620)
!3622 = !DILocation(line: 1075, column: 34, scope: !3620)
!3623 = !DILocation(line: 1075, column: 11, scope: !3620)
!3624 = !DILocation(line: 1075, column: 16, scope: !3625)
!3625 = !DILexicalBlockFile(scope: !3620, file: !459, discriminator: 1)
!3626 = !DILocation(line: 1075, column: 21, scope: !3625)
!3627 = !DILocation(line: 1075, column: 37, scope: !3625)
!3628 = !DILocation(line: 1075, column: 42, scope: !3625)
!3629 = !DILocation(line: 1075, column: 11, scope: !3625)
!3630 = !DILocation(line: 1075, column: 15, scope: !3631)
!3631 = !DILexicalBlockFile(scope: !3620, file: !459, discriminator: 2)
!3632 = !DILocation(line: 1075, column: 20, scope: !3631)
!3633 = !DILocation(line: 1075, column: 36, scope: !3631)
!3634 = !DILocation(line: 1075, column: 41, scope: !3631)
!3635 = !DILocation(line: 1075, column: 11, scope: !3631)
!3636 = !DILocation(line: 1076, column: 17, scope: !3620)
!3637 = !DILocation(line: 1076, column: 8, scope: !3620)
!3638 = !DILocation(line: 1077, column: 6, scope: !3615)
!3639 = !DILocation(line: 1078, column: 5, scope: !3610)
!3640 = !DILocation(line: 1080, column: 10, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3642, file: !459, line: 1080, column: 10)
!3642 = distinct !DILexicalBlock(scope: !3603, file: !459, line: 1078, column: 12)
!3643 = !DILocation(line: 1080, column: 15, scope: !3641)
!3644 = !DILocation(line: 1080, column: 25, scope: !3641)
!3645 = !DILocation(line: 1080, column: 10, scope: !3642)
!3646 = !DILocation(line: 1081, column: 12, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3648, file: !459, line: 1081, column: 11)
!3648 = distinct !DILexicalBlock(scope: !3641, file: !459, line: 1080, column: 43)
!3649 = !DILocation(line: 1081, column: 17, scope: !3647)
!3650 = !DILocation(line: 1081, column: 26, scope: !3647)
!3651 = !DILocation(line: 1081, column: 34, scope: !3647)
!3652 = !DILocation(line: 1081, column: 11, scope: !3648)
!3653 = !DILocation(line: 1082, column: 8, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3647, file: !459, line: 1081, column: 40)
!3655 = !DILocation(line: 1082, column: 13, scope: !3654)
!3656 = !DILocation(line: 1082, column: 31, scope: !3654)
!3657 = !DILocation(line: 1082, column: 25, scope: !3654)
!3658 = !DILocation(line: 1083, column: 15, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3654, file: !459, line: 1083, column: 12)
!3660 = !DILocation(line: 1083, column: 20, scope: !3659)
!3661 = !DILocation(line: 1083, column: 35, scope: !3659)
!3662 = !DILocation(line: 1083, column: 12, scope: !3659)
!3663 = !DILocation(line: 1083, column: 17, scope: !3664)
!3664 = !DILexicalBlockFile(scope: !3659, file: !459, discriminator: 1)
!3665 = !DILocation(line: 1083, column: 22, scope: !3664)
!3666 = !DILocation(line: 1083, column: 38, scope: !3664)
!3667 = !DILocation(line: 1083, column: 43, scope: !3664)
!3668 = !DILocation(line: 1083, column: 12, scope: !3664)
!3669 = !DILocation(line: 1083, column: 16, scope: !3670)
!3670 = !DILexicalBlockFile(scope: !3659, file: !459, discriminator: 2)
!3671 = !DILocation(line: 1083, column: 21, scope: !3670)
!3672 = !DILocation(line: 1083, column: 37, scope: !3670)
!3673 = !DILocation(line: 1083, column: 42, scope: !3670)
!3674 = !DILocation(line: 1083, column: 12, scope: !3670)
!3675 = !DILocation(line: 1084, column: 18, scope: !3659)
!3676 = !DILocation(line: 1084, column: 9, scope: !3659)
!3677 = !DILocation(line: 1085, column: 7, scope: !3654)
!3678 = !DILocation(line: 1094, column: 6, scope: !3648)
!3679 = !DILocation(line: 1097, column: 9, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3604, file: !459, line: 1097, column: 9)
!3681 = !DILocation(line: 1097, column: 9, scope: !3604)
!3682 = !DILocation(line: 1098, column: 10, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3684, file: !459, line: 1098, column: 10)
!3684 = distinct !DILexicalBlock(scope: !3680, file: !459, line: 1097, column: 19)
!3685 = !DILocation(line: 1098, column: 10, scope: !3684)
!3686 = !DILocation(line: 1099, column: 17, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3683, file: !459, line: 1098, column: 46)
!3688 = !DILocation(line: 1099, column: 22, scope: !3687)
!3689 = !DILocation(line: 1099, column: 39, scope: !3687)
!3690 = !DILocation(line: 1099, column: 45, scope: !3687)
!3691 = !DILocation(line: 1099, column: 7, scope: !3687)
!3692 = !DILocation(line: 1101, column: 15, scope: !3687)
!3693 = !DILocation(line: 1101, column: 25, scope: !3687)
!3694 = !DILocation(line: 1101, column: 30, scope: !3687)
!3695 = !DILocation(line: 1100, column: 7, scope: !3687)
!3696 = !DILocation(line: 1102, column: 6, scope: !3687)
!3697 = !DILocation(line: 1106, column: 18, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3684, file: !459, line: 1106, column: 6)
!3699 = !DILocation(line: 1106, column: 23, scope: !3698)
!3700 = !DILocation(line: 1106, column: 17, scope: !3698)
!3701 = !DILocation(line: 1106, column: 16, scope: !3698)
!3702 = !DILocation(line: 1106, column: 16, scope: !3703)
!3703 = !DILexicalBlockFile(scope: !3698, file: !459, discriminator: 1)
!3704 = !DILocation(line: 1106, column: 17, scope: !3705)
!3705 = !DILexicalBlockFile(scope: !3698, file: !459, discriminator: 2)
!3706 = !DILocation(line: 1106, column: 22, scope: !3705)
!3707 = !DILocation(line: 1106, column: 38, scope: !3705)
!3708 = !DILocation(line: 1106, column: 16, scope: !3705)
!3709 = !DILocation(line: 1106, column: 16, scope: !3710)
!3710 = !DILexicalBlockFile(scope: !3698, file: !459, discriminator: 3)
!3711 = !DILocation(line: 1106, column: 13, scope: !3710)
!3712 = !DILocation(line: 1106, column: 11, scope: !3710)
!3713 = !DILocation(line: 1106, column: 45, scope: !3714)
!3714 = !DILexicalBlockFile(scope: !3715, file: !459, discriminator: 4)
!3715 = distinct !DILexicalBlock(scope: !3698, file: !459, line: 1106, column: 6)
!3716 = !DILocation(line: 1106, column: 6, scope: !3714)
!3717 = !DILocation(line: 1107, column: 15, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3715, file: !459, line: 1106, column: 67)
!3719 = !DILocation(line: 1107, column: 19, scope: !3718)
!3720 = !DILocation(line: 1107, column: 13, scope: !3718)
!3721 = !DILocation(line: 1107, column: 11, scope: !3718)
!3722 = !DILocation(line: 1108, column: 14, scope: !3718)
!3723 = !DILocation(line: 1108, column: 19, scope: !3718)
!3724 = !DILocation(line: 1108, column: 12, scope: !3718)
!3725 = !DILocation(line: 1110, column: 25, scope: !3718)
!3726 = !DILocation(line: 1111, column: 11, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3718, file: !459, line: 1111, column: 11)
!3728 = !DILocation(line: 1111, column: 17, scope: !3727)
!3729 = !DILocation(line: 1111, column: 11, scope: !3718)
!3730 = !DILocation(line: 1112, column: 12, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3732, file: !459, line: 1112, column: 12)
!3732 = distinct !DILexicalBlock(scope: !3727, file: !459, line: 1111, column: 30)
!3733 = !DILocation(line: 1112, column: 18, scope: !3731)
!3734 = !DILocation(line: 1112, column: 28, scope: !3731)
!3735 = !DILocation(line: 1112, column: 33, scope: !3731)
!3736 = !DILocation(line: 1112, column: 25, scope: !3731)
!3737 = !DILocation(line: 1112, column: 12, scope: !3732)
!3738 = !DILocation(line: 1113, column: 42, scope: !3731)
!3739 = !DILocation(line: 1113, column: 47, scope: !3731)
!3740 = !DILocation(line: 1113, column: 60, scope: !3731)
!3741 = !DILocation(line: 1113, column: 66, scope: !3731)
!3742 = !DILocation(line: 1113, column: 59, scope: !3731)
!3743 = !DILocation(line: 1113, column: 78, scope: !3731)
!3744 = !DILocation(line: 1113, column: 29, scope: !3731)
!3745 = !DILocation(line: 1113, column: 27, scope: !3731)
!3746 = !DILocation(line: 1113, column: 9, scope: !3731)
!3747 = !DILocation(line: 1114, column: 7, scope: !3732)
!3748 = !DILocation(line: 1116, column: 11, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3718, file: !459, line: 1116, column: 11)
!3750 = !DILocation(line: 1116, column: 19, scope: !3749)
!3751 = !DILocation(line: 1116, column: 25, scope: !3749)
!3752 = !DILocation(line: 1116, column: 32, scope: !3749)
!3753 = !DILocation(line: 1116, column: 44, scope: !3754)
!3754 = !DILexicalBlockFile(scope: !3749, file: !459, discriminator: 1)
!3755 = !DILocation(line: 1116, column: 50, scope: !3754)
!3756 = !DILocation(line: 1116, column: 55, scope: !3754)
!3757 = !DILocation(line: 1116, column: 19, scope: !3754)
!3758 = !DILocation(line: 1116, column: 66, scope: !3759)
!3759 = !DILexicalBlockFile(scope: !3749, file: !459, discriminator: 2)
!3760 = !DILocation(line: 1116, column: 72, scope: !3759)
!3761 = !DILocation(line: 1116, column: 19, scope: !3759)
!3762 = !DILocation(line: 1116, column: 19, scope: !3763)
!3763 = !DILexicalBlockFile(scope: !3749, file: !459, discriminator: 3)
!3764 = !DILocation(line: 1116, column: 15, scope: !3763)
!3765 = !DILocation(line: 1116, column: 77, scope: !3763)
!3766 = !DILocation(line: 1117, column: 11, scope: !3749)
!3767 = !DILocation(line: 1117, column: 17, scope: !3749)
!3768 = !DILocation(line: 1117, column: 37, scope: !3749)
!3769 = !DILocation(line: 1118, column: 11, scope: !3749)
!3770 = !DILocation(line: 1118, column: 17, scope: !3749)
!3771 = !DILocation(line: 1118, column: 27, scope: !3749)
!3772 = !DILocation(line: 1118, column: 32, scope: !3749)
!3773 = !DILocation(line: 1118, column: 24, scope: !3749)
!3774 = !DILocation(line: 1118, column: 43, scope: !3749)
!3775 = !DILocation(line: 1119, column: 11, scope: !3749)
!3776 = !DILocation(line: 1119, column: 17, scope: !3749)
!3777 = !DILocation(line: 1119, column: 23, scope: !3749)
!3778 = !DILocation(line: 1119, column: 33, scope: !3749)
!3779 = !DILocation(line: 1119, column: 45, scope: !3749)
!3780 = !DILocation(line: 1120, column: 13, scope: !3749)
!3781 = !DILocation(line: 1120, column: 19, scope: !3749)
!3782 = !DILocation(line: 1120, column: 37, scope: !3749)
!3783 = !DILocation(line: 1120, column: 40, scope: !3754)
!3784 = !DILocation(line: 1116, column: 11, scope: !3785)
!3785 = !DILexicalBlockFile(scope: !3718, file: !459, discriminator: 4)
!3786 = !DILocation(line: 1122, column: 12, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3788, file: !459, line: 1122, column: 12)
!3788 = distinct !DILexicalBlock(scope: !3749, file: !459, line: 1120, column: 60)
!3789 = !DILocation(line: 1122, column: 17, scope: !3787)
!3790 = !DILocation(line: 1122, column: 28, scope: !3787)
!3791 = !DILocation(line: 1122, column: 12, scope: !3788)
!3792 = !DILocation(line: 1123, column: 33, scope: !3787)
!3793 = !DILocation(line: 1123, column: 38, scope: !3787)
!3794 = !DILocation(line: 1123, column: 44, scope: !3787)
!3795 = !DILocation(line: 1123, column: 9, scope: !3787)
!3796 = !DILocation(line: 1125, column: 33, scope: !3787)
!3797 = !DILocation(line: 1125, column: 39, scope: !3787)
!3798 = !DILocation(line: 1125, column: 45, scope: !3787)
!3799 = !DILocation(line: 1125, column: 9, scope: !3787)
!3800 = !DILocation(line: 1126, column: 24, scope: !3788)
!3801 = !DILocation(line: 1126, column: 8, scope: !3788)
!3802 = !DILocation(line: 1127, column: 7, scope: !3788)
!3803 = !DILocation(line: 1130, column: 16, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3749, file: !459, line: 1130, column: 16)
!3805 = !DILocation(line: 1130, column: 22, scope: !3804)
!3806 = !DILocation(line: 1130, column: 29, scope: !3804)
!3807 = !DILocation(line: 1130, column: 40, scope: !3804)
!3808 = !DILocation(line: 1131, column: 9, scope: !3804)
!3809 = !DILocation(line: 1131, column: 16, scope: !3804)
!3810 = !DILocation(line: 1131, column: 22, scope: !3804)
!3811 = !DILocation(line: 1131, column: 27, scope: !3804)
!3812 = !DILocation(line: 1131, column: 13, scope: !3804)
!3813 = !DILocation(line: 1131, column: 36, scope: !3804)
!3814 = !DILocation(line: 1132, column: 9, scope: !3804)
!3815 = !DILocation(line: 1132, column: 15, scope: !3804)
!3816 = !DILocation(line: 1132, column: 20, scope: !3804)
!3817 = !DILocation(line: 1132, column: 25, scope: !3804)
!3818 = !DILocation(line: 1133, column: 46, scope: !3804)
!3819 = !DILocation(line: 1133, column: 52, scope: !3804)
!3820 = !DILocation(line: 1133, column: 10, scope: !3804)
!3821 = !DILocation(line: 1133, column: 64, scope: !3804)
!3822 = !DILocation(line: 1134, column: 9, scope: !3804)
!3823 = !DILocation(line: 1134, column: 15, scope: !3804)
!3824 = !DILocation(line: 1134, column: 35, scope: !3804)
!3825 = !DILocation(line: 1135, column: 9, scope: !3804)
!3826 = !DILocation(line: 1135, column: 15, scope: !3804)
!3827 = !DILocation(line: 1135, column: 25, scope: !3804)
!3828 = !DILocation(line: 1135, column: 30, scope: !3804)
!3829 = !DILocation(line: 1135, column: 22, scope: !3804)
!3830 = !DILocation(line: 1135, column: 41, scope: !3804)
!3831 = !DILocation(line: 1136, column: 9, scope: !3804)
!3832 = !DILocation(line: 1136, column: 15, scope: !3804)
!3833 = !DILocation(line: 1136, column: 21, scope: !3804)
!3834 = !DILocation(line: 1136, column: 31, scope: !3804)
!3835 = !DILocation(line: 1136, column: 43, scope: !3804)
!3836 = !DILocation(line: 1137, column: 11, scope: !3804)
!3837 = !DILocation(line: 1137, column: 17, scope: !3804)
!3838 = !DILocation(line: 1137, column: 35, scope: !3804)
!3839 = !DILocation(line: 1137, column: 38, scope: !3840)
!3840 = !DILexicalBlockFile(scope: !3804, file: !459, discriminator: 1)
!3841 = !DILocation(line: 1130, column: 16, scope: !3754)
!3842 = !DILocation(line: 1138, column: 35, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3844, file: !459, line: 1138, column: 12)
!3844 = distinct !DILexicalBlock(scope: !3804, file: !459, line: 1137, column: 58)
!3845 = !DILocation(line: 1138, column: 41, scope: !3843)
!3846 = !DILocation(line: 1138, column: 51, scope: !3843)
!3847 = !DILocation(line: 1138, column: 12, scope: !3843)
!3848 = !DILocation(line: 1138, column: 12, scope: !3844)
!3849 = !DILocation(line: 1139, column: 33, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3843, file: !459, line: 1138, column: 57)
!3851 = !DILocation(line: 1139, column: 39, scope: !3850)
!3852 = !DILocation(line: 1139, column: 45, scope: !3850)
!3853 = !DILocation(line: 1139, column: 9, scope: !3850)
!3854 = !DILocation(line: 1140, column: 25, scope: !3850)
!3855 = !DILocation(line: 1140, column: 9, scope: !3850)
!3856 = !DILocation(line: 1141, column: 8, scope: !3850)
!3857 = !DILocation(line: 1142, column: 7, scope: !3844)
!3858 = !DILocation(line: 1144, column: 6, scope: !3718)
!3859 = !DILocation(line: 1106, column: 56, scope: !3860)
!3860 = !DILexicalBlockFile(scope: !3715, file: !459, discriminator: 5)
!3861 = !DILocation(line: 1106, column: 60, scope: !3860)
!3862 = !DILocation(line: 1106, column: 53, scope: !3860)
!3863 = !DILocation(line: 1106, column: 6, scope: !3860)
!3864 = distinct !{!3864, !3865}
!3865 = !DILocation(line: 1106, column: 6, scope: !3684)
!3866 = !DILocation(line: 1145, column: 5, scope: !3684)
!3867 = !DILocation(line: 1146, column: 4, scope: !3604)
!3868 = !DILocation(line: 1149, column: 9, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3870, file: !459, line: 1149, column: 9)
!3870 = distinct !DILexicalBlock(scope: !3597, file: !459, line: 1146, column: 11)
!3871 = !DILocation(line: 1149, column: 14, scope: !3869)
!3872 = !DILocation(line: 1149, column: 25, scope: !3869)
!3873 = !DILocation(line: 1149, column: 9, scope: !3870)
!3874 = !DILocation(line: 1150, column: 10, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3876, file: !459, line: 1150, column: 10)
!3876 = distinct !DILexicalBlock(scope: !3869, file: !459, line: 1149, column: 36)
!3877 = !DILocation(line: 1150, column: 15, scope: !3875)
!3878 = !DILocation(line: 1150, column: 24, scope: !3875)
!3879 = !DILocation(line: 1150, column: 39, scope: !3875)
!3880 = !DILocation(line: 1150, column: 43, scope: !3875)
!3881 = !DILocation(line: 1150, column: 31, scope: !3875)
!3882 = !DILocation(line: 1150, column: 10, scope: !3876)
!3883 = !DILocation(line: 1151, column: 16, scope: !3875)
!3884 = !DILocation(line: 1151, column: 7, scope: !3875)
!3885 = !DILocation(line: 1152, column: 5, scope: !3876)
!3886 = !DILocation(line: 1154, column: 10, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !3888, file: !459, line: 1154, column: 10)
!3888 = distinct !DILexicalBlock(scope: !3869, file: !459, line: 1153, column: 10)
!3889 = !DILocation(line: 1154, column: 15, scope: !3887)
!3890 = !DILocation(line: 1154, column: 24, scope: !3887)
!3891 = !DILocation(line: 1154, column: 32, scope: !3887)
!3892 = !DILocation(line: 1154, column: 45, scope: !3887)
!3893 = !DILocation(line: 1154, column: 50, scope: !3887)
!3894 = !DILocation(line: 1154, column: 58, scope: !3887)
!3895 = !DILocation(line: 1154, column: 40, scope: !3887)
!3896 = !DILocation(line: 1154, column: 37, scope: !3887)
!3897 = !DILocation(line: 1154, column: 63, scope: !3887)
!3898 = !DILocation(line: 1155, column: 10, scope: !3887)
!3899 = !DILocation(line: 1155, column: 15, scope: !3887)
!3900 = !DILocation(line: 1155, column: 24, scope: !3887)
!3901 = !DILocation(line: 1155, column: 32, scope: !3887)
!3902 = !DILocation(line: 1155, column: 45, scope: !3887)
!3903 = !DILocation(line: 1155, column: 50, scope: !3887)
!3904 = !DILocation(line: 1155, column: 58, scope: !3887)
!3905 = !DILocation(line: 1155, column: 40, scope: !3887)
!3906 = !DILocation(line: 1155, column: 37, scope: !3887)
!3907 = !DILocation(line: 1155, column: 63, scope: !3887)
!3908 = !DILocation(line: 1156, column: 10, scope: !3887)
!3909 = !DILocation(line: 1156, column: 15, scope: !3887)
!3910 = !DILocation(line: 1156, column: 24, scope: !3887)
!3911 = !DILocation(line: 1156, column: 32, scope: !3887)
!3912 = !DILocation(line: 1156, column: 45, scope: !3887)
!3913 = !DILocation(line: 1156, column: 50, scope: !3887)
!3914 = !DILocation(line: 1156, column: 58, scope: !3887)
!3915 = !DILocation(line: 1156, column: 40, scope: !3887)
!3916 = !DILocation(line: 1156, column: 37, scope: !3887)
!3917 = !DILocation(line: 1156, column: 63, scope: !3887)
!3918 = !DILocation(line: 1157, column: 10, scope: !3887)
!3919 = !DILocation(line: 1157, column: 15, scope: !3887)
!3920 = !DILocation(line: 1157, column: 24, scope: !3887)
!3921 = !DILocation(line: 1157, column: 32, scope: !3887)
!3922 = !DILocation(line: 1157, column: 45, scope: !3887)
!3923 = !DILocation(line: 1157, column: 50, scope: !3887)
!3924 = !DILocation(line: 1157, column: 58, scope: !3887)
!3925 = !DILocation(line: 1157, column: 40, scope: !3887)
!3926 = !DILocation(line: 1157, column: 37, scope: !3887)
!3927 = !DILocation(line: 1154, column: 10, scope: !3928)
!3928 = !DILexicalBlockFile(scope: !3888, file: !459, discriminator: 1)
!3929 = !DILocation(line: 1158, column: 16, scope: !3887)
!3930 = !DILocation(line: 1158, column: 7, scope: !3887)
!3931 = !DILocation(line: 1161, column: 9, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3870, file: !459, line: 1161, column: 9)
!3933 = !DILocation(line: 1161, column: 18, scope: !3932)
!3934 = !DILocation(line: 1161, column: 24, scope: !3935)
!3935 = !DILexicalBlockFile(scope: !3932, file: !459, discriminator: 1)
!3936 = !DILocation(line: 1161, column: 29, scope: !3935)
!3937 = !DILocation(line: 1161, column: 44, scope: !3935)
!3938 = !DILocation(line: 1161, column: 21, scope: !3935)
!3939 = !DILocation(line: 1161, column: 26, scope: !3940)
!3940 = !DILexicalBlockFile(scope: !3932, file: !459, discriminator: 2)
!3941 = !DILocation(line: 1161, column: 31, scope: !3940)
!3942 = !DILocation(line: 1161, column: 47, scope: !3940)
!3943 = !DILocation(line: 1161, column: 52, scope: !3940)
!3944 = !DILocation(line: 1161, column: 21, scope: !3940)
!3945 = !DILocation(line: 1161, column: 25, scope: !3946)
!3946 = !DILexicalBlockFile(scope: !3932, file: !459, discriminator: 3)
!3947 = !DILocation(line: 1161, column: 30, scope: !3946)
!3948 = !DILocation(line: 1161, column: 46, scope: !3946)
!3949 = !DILocation(line: 1161, column: 51, scope: !3946)
!3950 = !DILocation(line: 1161, column: 9, scope: !3946)
!3951 = !DILocation(line: 1162, column: 10, scope: !3952)
!3952 = distinct !DILexicalBlock(scope: !3953, file: !459, line: 1162, column: 10)
!3953 = distinct !DILexicalBlock(scope: !3932, file: !459, line: 1161, column: 25)
!3954 = !DILocation(line: 1162, column: 10, scope: !3953)
!3955 = !DILocation(line: 1163, column: 17, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3952, file: !459, line: 1162, column: 46)
!3957 = !DILocation(line: 1163, column: 22, scope: !3956)
!3958 = !DILocation(line: 1163, column: 39, scope: !3956)
!3959 = !DILocation(line: 1163, column: 45, scope: !3956)
!3960 = !DILocation(line: 1163, column: 7, scope: !3956)
!3961 = !DILocation(line: 1165, column: 15, scope: !3956)
!3962 = !DILocation(line: 1165, column: 25, scope: !3956)
!3963 = !DILocation(line: 1165, column: 30, scope: !3956)
!3964 = !DILocation(line: 1164, column: 7, scope: !3956)
!3965 = !DILocation(line: 1166, column: 6, scope: !3956)
!3966 = !DILocation(line: 1169, column: 18, scope: !3967)
!3967 = distinct !DILexicalBlock(scope: !3953, file: !459, line: 1169, column: 6)
!3968 = !DILocation(line: 1169, column: 23, scope: !3967)
!3969 = !DILocation(line: 1169, column: 17, scope: !3967)
!3970 = !DILocation(line: 1169, column: 16, scope: !3967)
!3971 = !DILocation(line: 1169, column: 16, scope: !3972)
!3972 = !DILexicalBlockFile(scope: !3967, file: !459, discriminator: 1)
!3973 = !DILocation(line: 1169, column: 17, scope: !3974)
!3974 = !DILexicalBlockFile(scope: !3967, file: !459, discriminator: 2)
!3975 = !DILocation(line: 1169, column: 22, scope: !3974)
!3976 = !DILocation(line: 1169, column: 38, scope: !3974)
!3977 = !DILocation(line: 1169, column: 16, scope: !3974)
!3978 = !DILocation(line: 1169, column: 16, scope: !3979)
!3979 = !DILexicalBlockFile(scope: !3967, file: !459, discriminator: 3)
!3980 = !DILocation(line: 1169, column: 13, scope: !3979)
!3981 = !DILocation(line: 1169, column: 11, scope: !3979)
!3982 = !DILocation(line: 1169, column: 45, scope: !3983)
!3983 = !DILexicalBlockFile(scope: !3984, file: !459, discriminator: 4)
!3984 = distinct !DILexicalBlock(scope: !3967, file: !459, line: 1169, column: 6)
!3985 = !DILocation(line: 1169, column: 6, scope: !3983)
!3986 = !DILocation(line: 1170, column: 15, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3984, file: !459, line: 1169, column: 67)
!3988 = !DILocation(line: 1170, column: 19, scope: !3987)
!3989 = !DILocation(line: 1170, column: 13, scope: !3987)
!3990 = !DILocation(line: 1170, column: 11, scope: !3987)
!3991 = !DILocation(line: 1171, column: 14, scope: !3987)
!3992 = !DILocation(line: 1171, column: 19, scope: !3987)
!3993 = !DILocation(line: 1171, column: 12, scope: !3987)
!3994 = !DILocation(line: 1173, column: 25, scope: !3987)
!3995 = !DILocation(line: 1174, column: 11, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3987, file: !459, line: 1174, column: 11)
!3997 = !DILocation(line: 1174, column: 17, scope: !3996)
!3998 = !DILocation(line: 1174, column: 11, scope: !3987)
!3999 = !DILocation(line: 1175, column: 12, scope: !4000)
!4000 = distinct !DILexicalBlock(scope: !4001, file: !459, line: 1175, column: 12)
!4001 = distinct !DILexicalBlock(scope: !3996, file: !459, line: 1174, column: 30)
!4002 = !DILocation(line: 1175, column: 18, scope: !4000)
!4003 = !DILocation(line: 1175, column: 28, scope: !4000)
!4004 = !DILocation(line: 1175, column: 33, scope: !4000)
!4005 = !DILocation(line: 1175, column: 25, scope: !4000)
!4006 = !DILocation(line: 1175, column: 12, scope: !4001)
!4007 = !DILocation(line: 1176, column: 42, scope: !4000)
!4008 = !DILocation(line: 1176, column: 47, scope: !4000)
!4009 = !DILocation(line: 1176, column: 60, scope: !4000)
!4010 = !DILocation(line: 1176, column: 66, scope: !4000)
!4011 = !DILocation(line: 1176, column: 59, scope: !4000)
!4012 = !DILocation(line: 1176, column: 78, scope: !4000)
!4013 = !DILocation(line: 1176, column: 29, scope: !4000)
!4014 = !DILocation(line: 1176, column: 27, scope: !4000)
!4015 = !DILocation(line: 1176, column: 9, scope: !4000)
!4016 = !DILocation(line: 1177, column: 7, scope: !4001)
!4017 = !DILocation(line: 1181, column: 11, scope: !4018)
!4018 = distinct !DILexicalBlock(scope: !3987, file: !459, line: 1181, column: 11)
!4019 = !DILocation(line: 1181, column: 16, scope: !4018)
!4020 = !DILocation(line: 1181, column: 27, scope: !4018)
!4021 = !DILocation(line: 1181, column: 38, scope: !4018)
!4022 = !DILocation(line: 1182, column: 38, scope: !4018)
!4023 = !DILocation(line: 1182, column: 44, scope: !4018)
!4024 = !DILocation(line: 1182, column: 11, scope: !4018)
!4025 = !DILocation(line: 1182, column: 56, scope: !4018)
!4026 = !DILocation(line: 1183, column: 11, scope: !4018)
!4027 = !DILocation(line: 1183, column: 18, scope: !4018)
!4028 = !DILocation(line: 1183, column: 24, scope: !4018)
!4029 = !DILocation(line: 1183, column: 29, scope: !4018)
!4030 = !DILocation(line: 1183, column: 15, scope: !4018)
!4031 = !DILocation(line: 1183, column: 38, scope: !4018)
!4032 = !DILocation(line: 1184, column: 11, scope: !4018)
!4033 = !DILocation(line: 1184, column: 16, scope: !4018)
!4034 = !DILocation(line: 1184, column: 26, scope: !4018)
!4035 = !DILocation(line: 1184, column: 43, scope: !4018)
!4036 = !DILocation(line: 1185, column: 48, scope: !4018)
!4037 = !DILocation(line: 1185, column: 54, scope: !4018)
!4038 = !DILocation(line: 1185, column: 12, scope: !4018)
!4039 = !DILocation(line: 1185, column: 66, scope: !4018)
!4040 = !DILocation(line: 1186, column: 12, scope: !4018)
!4041 = !DILocation(line: 1186, column: 18, scope: !4018)
!4042 = !DILocation(line: 1186, column: 36, scope: !4018)
!4043 = !DILocation(line: 1187, column: 11, scope: !4018)
!4044 = !DILocation(line: 1187, column: 17, scope: !4018)
!4045 = !DILocation(line: 1187, column: 22, scope: !4018)
!4046 = !DILocation(line: 1187, column: 32, scope: !4018)
!4047 = !DILocation(line: 1187, column: 41, scope: !4018)
!4048 = !DILocation(line: 1187, column: 49, scope: !4018)
!4049 = !DILocation(line: 1187, column: 62, scope: !4018)
!4050 = !DILocation(line: 1187, column: 67, scope: !4018)
!4051 = !DILocation(line: 1187, column: 75, scope: !4018)
!4052 = !DILocation(line: 1187, column: 57, scope: !4018)
!4053 = !DILocation(line: 1187, column: 54, scope: !4018)
!4054 = !DILocation(line: 1187, column: 80, scope: !4018)
!4055 = !DILocation(line: 1188, column: 11, scope: !4018)
!4056 = !DILocation(line: 1188, column: 17, scope: !4018)
!4057 = !DILocation(line: 1188, column: 22, scope: !4018)
!4058 = !DILocation(line: 1188, column: 32, scope: !4018)
!4059 = !DILocation(line: 1188, column: 41, scope: !4018)
!4060 = !DILocation(line: 1188, column: 49, scope: !4018)
!4061 = !DILocation(line: 1188, column: 62, scope: !4018)
!4062 = !DILocation(line: 1188, column: 67, scope: !4018)
!4063 = !DILocation(line: 1188, column: 75, scope: !4018)
!4064 = !DILocation(line: 1188, column: 57, scope: !4018)
!4065 = !DILocation(line: 1188, column: 54, scope: !4018)
!4066 = !DILocation(line: 1188, column: 80, scope: !4018)
!4067 = !DILocation(line: 1189, column: 11, scope: !4018)
!4068 = !DILocation(line: 1189, column: 17, scope: !4018)
!4069 = !DILocation(line: 1189, column: 22, scope: !4018)
!4070 = !DILocation(line: 1189, column: 32, scope: !4018)
!4071 = !DILocation(line: 1189, column: 41, scope: !4018)
!4072 = !DILocation(line: 1189, column: 49, scope: !4018)
!4073 = !DILocation(line: 1189, column: 62, scope: !4018)
!4074 = !DILocation(line: 1189, column: 67, scope: !4018)
!4075 = !DILocation(line: 1189, column: 75, scope: !4018)
!4076 = !DILocation(line: 1189, column: 57, scope: !4018)
!4077 = !DILocation(line: 1189, column: 54, scope: !4018)
!4078 = !DILocation(line: 1189, column: 80, scope: !4018)
!4079 = !DILocation(line: 1190, column: 11, scope: !4018)
!4080 = !DILocation(line: 1190, column: 17, scope: !4018)
!4081 = !DILocation(line: 1190, column: 22, scope: !4018)
!4082 = !DILocation(line: 1190, column: 32, scope: !4018)
!4083 = !DILocation(line: 1190, column: 41, scope: !4018)
!4084 = !DILocation(line: 1190, column: 49, scope: !4018)
!4085 = !DILocation(line: 1190, column: 62, scope: !4018)
!4086 = !DILocation(line: 1190, column: 67, scope: !4018)
!4087 = !DILocation(line: 1190, column: 75, scope: !4018)
!4088 = !DILocation(line: 1190, column: 57, scope: !4018)
!4089 = !DILocation(line: 1190, column: 54, scope: !4018)
!4090 = !DILocation(line: 1181, column: 11, scope: !4091)
!4091 = !DILexicalBlockFile(scope: !3987, file: !459, discriminator: 1)
!4092 = !DILocation(line: 1191, column: 18, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !4094, file: !459, line: 1191, column: 12)
!4094 = distinct !DILexicalBlock(scope: !4018, file: !459, line: 1190, column: 81)
!4095 = !DILocation(line: 1191, column: 24, scope: !4093)
!4096 = !DILocation(line: 1191, column: 35, scope: !4093)
!4097 = !DILocation(line: 1191, column: 14, scope: !4093)
!4098 = !DILocation(line: 1191, column: 15, scope: !4093)
!4099 = !DILocation(line: 1191, column: 21, scope: !4100)
!4100 = !DILexicalBlockFile(scope: !4093, file: !459, discriminator: 1)
!4101 = !DILocation(line: 1191, column: 27, scope: !4100)
!4102 = !DILocation(line: 1191, column: 32, scope: !4100)
!4103 = !DILocation(line: 1191, column: 41, scope: !4104)
!4104 = !DILexicalBlockFile(scope: !4093, file: !459, discriminator: 2)
!4105 = !DILocation(line: 1191, column: 47, scope: !4104)
!4106 = !DILocation(line: 1191, column: 58, scope: !4104)
!4107 = !DILocation(line: 1191, column: 69, scope: !4104)
!4108 = !DILocation(line: 1191, column: 14, scope: !4104)
!4109 = !DILocation(line: 1191, column: 17, scope: !4104)
!4110 = !DILocation(line: 1191, column: 47, scope: !4111)
!4111 = !DILexicalBlockFile(scope: !4093, file: !459, discriminator: 3)
!4112 = !DILocation(line: 1191, column: 53, scope: !4111)
!4113 = !DILocation(line: 1191, column: 20, scope: !4111)
!4114 = !DILocation(line: 1191, column: 12, scope: !4111)
!4115 = !DILocation(line: 1192, column: 29, scope: !4093)
!4116 = !DILocation(line: 1192, column: 35, scope: !4093)
!4117 = !DILocation(line: 1192, column: 40, scope: !4093)
!4118 = !DILocation(line: 1192, column: 52, scope: !4093)
!4119 = !DILocation(line: 1192, column: 58, scope: !4093)
!4120 = !DILocation(line: 1192, column: 9, scope: !4093)
!4121 = !DILocation(line: 1193, column: 23, scope: !4122)
!4122 = distinct !DILexicalBlock(scope: !4093, file: !459, line: 1193, column: 17)
!4123 = !DILocation(line: 1193, column: 29, scope: !4122)
!4124 = !DILocation(line: 1193, column: 40, scope: !4122)
!4125 = !DILocation(line: 1193, column: 19, scope: !4122)
!4126 = !DILocation(line: 1193, column: 20, scope: !4122)
!4127 = !DILocation(line: 1193, column: 26, scope: !4128)
!4128 = !DILexicalBlockFile(scope: !4122, file: !459, discriminator: 1)
!4129 = !DILocation(line: 1193, column: 32, scope: !4128)
!4130 = !DILocation(line: 1193, column: 37, scope: !4128)
!4131 = !DILocation(line: 1193, column: 46, scope: !4132)
!4132 = !DILexicalBlockFile(scope: !4122, file: !459, discriminator: 2)
!4133 = !DILocation(line: 1193, column: 52, scope: !4132)
!4134 = !DILocation(line: 1193, column: 63, scope: !4132)
!4135 = !DILocation(line: 1193, column: 74, scope: !4132)
!4136 = !DILocation(line: 1193, column: 19, scope: !4132)
!4137 = !DILocation(line: 1193, column: 17, scope: !4132)
!4138 = !DILocation(line: 1195, column: 23, scope: !4139)
!4139 = distinct !DILexicalBlock(scope: !4122, file: !459, line: 1193, column: 23)
!4140 = !DILocation(line: 1195, column: 9, scope: !4139)
!4141 = !DILocation(line: 1196, column: 9, scope: !4139)
!4142 = !DILocation(line: 1196, column: 15, scope: !4139)
!4143 = !DILocation(line: 1196, column: 21, scope: !4139)
!4144 = !DILocation(line: 1196, column: 31, scope: !4139)
!4145 = !DILocation(line: 1197, column: 8, scope: !4139)
!4146 = !DILocation(line: 1198, column: 7, scope: !4094)
!4147 = !DILocation(line: 1201, column: 16, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !4018, file: !459, line: 1201, column: 16)
!4149 = !DILocation(line: 1201, column: 24, scope: !4148)
!4150 = !DILocation(line: 1201, column: 30, scope: !4148)
!4151 = !DILocation(line: 1201, column: 37, scope: !4148)
!4152 = !DILocation(line: 1201, column: 49, scope: !4153)
!4153 = !DILexicalBlockFile(scope: !4148, file: !459, discriminator: 1)
!4154 = !DILocation(line: 1201, column: 55, scope: !4153)
!4155 = !DILocation(line: 1201, column: 60, scope: !4153)
!4156 = !DILocation(line: 1201, column: 24, scope: !4153)
!4157 = !DILocation(line: 1201, column: 71, scope: !4158)
!4158 = !DILexicalBlockFile(scope: !4148, file: !459, discriminator: 2)
!4159 = !DILocation(line: 1201, column: 77, scope: !4158)
!4160 = !DILocation(line: 1201, column: 24, scope: !4158)
!4161 = !DILocation(line: 1201, column: 24, scope: !4162)
!4162 = !DILexicalBlockFile(scope: !4148, file: !459, discriminator: 3)
!4163 = !DILocation(line: 1201, column: 20, scope: !4162)
!4164 = !DILocation(line: 1201, column: 82, scope: !4162)
!4165 = !DILocation(line: 1202, column: 9, scope: !4148)
!4166 = !DILocation(line: 1202, column: 15, scope: !4148)
!4167 = !DILocation(line: 1202, column: 25, scope: !4148)
!4168 = !DILocation(line: 1202, column: 30, scope: !4148)
!4169 = !DILocation(line: 1202, column: 22, scope: !4148)
!4170 = !DILocation(line: 1202, column: 41, scope: !4148)
!4171 = !DILocation(line: 1203, column: 9, scope: !4148)
!4172 = !DILocation(line: 1203, column: 15, scope: !4148)
!4173 = !DILocation(line: 1203, column: 21, scope: !4148)
!4174 = !DILocation(line: 1203, column: 31, scope: !4148)
!4175 = !DILocation(line: 1203, column: 43, scope: !4148)
!4176 = !DILocation(line: 1204, column: 11, scope: !4148)
!4177 = !DILocation(line: 1204, column: 17, scope: !4148)
!4178 = !DILocation(line: 1204, column: 35, scope: !4148)
!4179 = !DILocation(line: 1204, column: 38, scope: !4153)
!4180 = !DILocation(line: 1201, column: 16, scope: !4181)
!4181 = !DILexicalBlockFile(scope: !4018, file: !459, discriminator: 4)
!4182 = !DILocation(line: 1206, column: 22, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !4148, file: !459, line: 1204, column: 58)
!4184 = !DILocation(line: 1206, column: 8, scope: !4183)
!4185 = !DILocation(line: 1207, column: 8, scope: !4183)
!4186 = !DILocation(line: 1207, column: 14, scope: !4183)
!4187 = !DILocation(line: 1207, column: 20, scope: !4183)
!4188 = !DILocation(line: 1207, column: 30, scope: !4183)
!4189 = !DILocation(line: 1208, column: 7, scope: !4183)
!4190 = !DILocation(line: 1209, column: 6, scope: !3987)
!4191 = !DILocation(line: 1169, column: 56, scope: !4192)
!4192 = !DILexicalBlockFile(scope: !3984, file: !459, discriminator: 5)
!4193 = !DILocation(line: 1169, column: 60, scope: !4192)
!4194 = !DILocation(line: 1169, column: 53, scope: !4192)
!4195 = !DILocation(line: 1169, column: 6, scope: !4192)
!4196 = distinct !{!4196, !4197}
!4197 = !DILocation(line: 1169, column: 6, scope: !3953)
!4198 = !DILocation(line: 1210, column: 5, scope: !3953)
!4199 = !DILocation(line: 1212, column: 9, scope: !4200)
!4200 = distinct !DILexicalBlock(scope: !3870, file: !459, line: 1212, column: 9)
!4201 = !DILocation(line: 1212, column: 9, scope: !3870)
!4202 = !DILocation(line: 1214, column: 10, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !4204, file: !459, line: 1214, column: 10)
!4204 = distinct !DILexicalBlock(scope: !4200, file: !459, line: 1212, column: 19)
!4205 = !DILocation(line: 1214, column: 15, scope: !4203)
!4206 = !DILocation(line: 1214, column: 26, scope: !4203)
!4207 = !DILocation(line: 1214, column: 10, scope: !4204)
!4208 = !DILocation(line: 1215, column: 7, scope: !4203)
!4209 = !DILocation(line: 1215, column: 12, scope: !4203)
!4210 = !DILocation(line: 1215, column: 21, scope: !4203)
!4211 = !DILocation(line: 1215, column: 28, scope: !4203)
!4212 = !DILocation(line: 1217, column: 7, scope: !4203)
!4213 = !DILocation(line: 1217, column: 12, scope: !4203)
!4214 = !DILocation(line: 1217, column: 21, scope: !4203)
!4215 = !DILocation(line: 1217, column: 29, scope: !4203)
!4216 = !DILocation(line: 1217, column: 34, scope: !4203)
!4217 = !DILocation(line: 1218, column: 5, scope: !4204)
!4218 = !DILocation(line: 1220, column: 3, scope: !3598)
!4219 = !DILocation(line: 1222, column: 8, scope: !4220)
!4220 = distinct !DILexicalBlock(scope: !3579, file: !459, line: 1222, column: 7)
!4221 = !DILocation(line: 1222, column: 17, scope: !4220)
!4222 = !DILocation(line: 1222, column: 22, scope: !4223)
!4223 = !DILexicalBlockFile(scope: !4220, file: !459, discriminator: 1)
!4224 = !DILocation(line: 1222, column: 27, scope: !4223)
!4225 = !DILocation(line: 1222, column: 42, scope: !4223)
!4226 = !DILocation(line: 1222, column: 19, scope: !4223)
!4227 = !DILocation(line: 1222, column: 24, scope: !4228)
!4228 = !DILexicalBlockFile(scope: !4220, file: !459, discriminator: 2)
!4229 = !DILocation(line: 1222, column: 29, scope: !4228)
!4230 = !DILocation(line: 1222, column: 45, scope: !4228)
!4231 = !DILocation(line: 1222, column: 50, scope: !4228)
!4232 = !DILocation(line: 1222, column: 19, scope: !4228)
!4233 = !DILocation(line: 1222, column: 23, scope: !4234)
!4234 = !DILexicalBlockFile(scope: !4220, file: !459, discriminator: 3)
!4235 = !DILocation(line: 1222, column: 28, scope: !4234)
!4236 = !DILocation(line: 1222, column: 44, scope: !4234)
!4237 = !DILocation(line: 1222, column: 49, scope: !4234)
!4238 = !DILocation(line: 1222, column: 7, scope: !4234)
!4239 = !DILocation(line: 1223, column: 8, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4241, file: !459, line: 1223, column: 8)
!4241 = distinct !DILexicalBlock(scope: !4220, file: !459, line: 1222, column: 23)
!4242 = !DILocation(line: 1223, column: 11, scope: !4240)
!4243 = !DILocation(line: 1223, column: 22, scope: !4240)
!4244 = !DILocation(line: 1223, column: 8, scope: !4241)
!4245 = !DILocation(line: 1224, column: 36, scope: !4240)
!4246 = !DILocation(line: 1224, column: 46, scope: !4240)
!4247 = !DILocation(line: 1224, column: 41, scope: !4240)
!4248 = !DILocation(line: 1224, column: 52, scope: !4240)
!4249 = !DILocation(line: 1224, column: 20, scope: !4240)
!4250 = !DILocation(line: 1224, column: 18, scope: !4240)
!4251 = !DILocation(line: 1224, column: 5, scope: !4240)
!4252 = !DILocation(line: 1226, column: 18, scope: !4240)
!4253 = !DILocation(line: 1231, column: 8, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !4241, file: !459, line: 1231, column: 8)
!4255 = !DILocation(line: 1231, column: 48, scope: !4254)
!4256 = !DILocation(line: 1233, column: 9, scope: !4254)
!4257 = !DILocation(line: 1233, column: 44, scope: !4254)
!4258 = !DILocation(line: 1233, column: 47, scope: !4259)
!4259 = !DILexicalBlockFile(scope: !4254, file: !459, discriminator: 1)
!4260 = !DILocation(line: 1231, column: 8, scope: !4261)
!4261 = !DILexicalBlockFile(scope: !4241, file: !459, discriminator: 1)
!4262 = !DILocation(line: 1234, column: 15, scope: !4263)
!4263 = distinct !DILexicalBlock(scope: !4254, file: !459, line: 1233, column: 62)
!4264 = !DILocation(line: 1234, column: 20, scope: !4263)
!4265 = !DILocation(line: 1234, column: 37, scope: !4263)
!4266 = !DILocation(line: 1234, column: 43, scope: !4263)
!4267 = !DILocation(line: 1234, column: 5, scope: !4263)
!4268 = !DILocation(line: 1236, column: 13, scope: !4263)
!4269 = !DILocation(line: 1236, column: 23, scope: !4263)
!4270 = !DILocation(line: 1236, column: 26, scope: !4263)
!4271 = !DILocation(line: 1236, column: 37, scope: !4263)
!4272 = !DILocation(line: 1236, column: 82, scope: !4263)
!4273 = !DILocation(line: 1236, column: 87, scope: !4263)
!4274 = !DILocation(line: 1235, column: 5, scope: !4263)
!4275 = !DILocation(line: 1237, column: 4, scope: !4263)
!4276 = !DILocation(line: 1240, column: 8, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4241, file: !459, line: 1240, column: 8)
!4278 = !DILocation(line: 1240, column: 21, scope: !4277)
!4279 = !DILocation(line: 1240, column: 24, scope: !4280)
!4280 = !DILexicalBlockFile(scope: !4277, file: !459, discriminator: 1)
!4281 = !DILocation(line: 1240, column: 38, scope: !4280)
!4282 = !DILocation(line: 1240, column: 44, scope: !4280)
!4283 = !DILocation(line: 1240, column: 8, scope: !4280)
!4284 = !DILocation(line: 1241, column: 21, scope: !4285)
!4285 = distinct !DILexicalBlock(scope: !4277, file: !459, line: 1240, column: 50)
!4286 = !DILocation(line: 1241, column: 5, scope: !4285)
!4287 = !DILocation(line: 1242, column: 4, scope: !4285)
!4288 = !DILocation(line: 1243, column: 3, scope: !4241)
!4289 = !DILocation(line: 1245, column: 7, scope: !4290)
!4290 = distinct !DILexicalBlock(scope: !3579, file: !459, line: 1245, column: 7)
!4291 = !DILocation(line: 1245, column: 10, scope: !4290)
!4292 = !DILocation(line: 1245, column: 21, scope: !4290)
!4293 = !DILocation(line: 1245, column: 7, scope: !3579)
!4294 = !DILocation(line: 1247, column: 17, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4296, file: !459, line: 1247, column: 4)
!4296 = distinct !DILexicalBlock(scope: !4290, file: !459, line: 1245, column: 36)
!4297 = !DILocation(line: 1247, column: 28, scope: !4295)
!4298 = !DILocation(line: 1247, column: 16, scope: !4295)
!4299 = !DILocation(line: 1247, column: 51, scope: !4300)
!4300 = !DILexicalBlockFile(scope: !4295, file: !459, discriminator: 1)
!4301 = !DILocation(line: 1247, column: 62, scope: !4300)
!4302 = !DILocation(line: 1247, column: 50, scope: !4300)
!4303 = !DILocation(line: 1247, column: 49, scope: !4300)
!4304 = !DILocation(line: 1247, column: 49, scope: !4305)
!4305 = !DILexicalBlockFile(scope: !4295, file: !459, discriminator: 2)
!4306 = !DILocation(line: 1247, column: 6, scope: !4307)
!4307 = !DILexicalBlockFile(scope: !4295, file: !459, discriminator: 3)
!4308 = !DILocation(line: 1247, column: 17, scope: !4307)
!4309 = !DILocation(line: 1247, column: 36, scope: !4307)
!4310 = !DILocation(line: 1247, column: 49, scope: !4307)
!4311 = !DILocation(line: 1247, column: 49, scope: !4312)
!4312 = !DILexicalBlockFile(scope: !4295, file: !459, discriminator: 4)
!4313 = !DILocation(line: 1247, column: 16, scope: !4312)
!4314 = !DILocation(line: 1247, column: 16, scope: !4315)
!4315 = !DILexicalBlockFile(scope: !4295, file: !459, discriminator: 5)
!4316 = !DILocation(line: 1247, column: 16, scope: !4317)
!4317 = !DILexicalBlockFile(scope: !4295, file: !459, discriminator: 6)
!4318 = !DILocation(line: 1247, column: 13, scope: !4317)
!4319 = !DILocation(line: 1247, column: 9, scope: !4317)
!4320 = !DILocation(line: 1247, column: 7, scope: !4321)
!4321 = !DILexicalBlockFile(scope: !4322, file: !459, discriminator: 7)
!4322 = distinct !DILexicalBlock(scope: !4295, file: !459, line: 1247, column: 4)
!4323 = !DILocation(line: 1247, column: 6, scope: !4321)
!4324 = !DILocation(line: 1247, column: 10, scope: !4321)
!4325 = !DILocation(line: 1247, column: 27, scope: !4326)
!4326 = !DILexicalBlockFile(scope: !4322, file: !459, discriminator: 8)
!4327 = !DILocation(line: 1247, column: 31, scope: !4326)
!4328 = !DILocation(line: 1247, column: 25, scope: !4326)
!4329 = !DILocation(line: 1247, column: 23, scope: !4326)
!4330 = !DILocation(line: 1247, column: 4, scope: !4331)
!4331 = !DILexicalBlockFile(scope: !4295, file: !459, discriminator: 9)
!4332 = !DILocation(line: 1248, column: 10, scope: !4333)
!4333 = distinct !DILexicalBlock(scope: !4334, file: !459, line: 1248, column: 9)
!4334 = distinct !DILexicalBlock(scope: !4322, file: !459, line: 1247, column: 61)
!4335 = !DILocation(line: 1248, column: 18, scope: !4333)
!4336 = !DILocation(line: 1248, column: 29, scope: !4333)
!4337 = !DILocation(line: 1248, column: 46, scope: !4338)
!4338 = !DILexicalBlockFile(scope: !4333, file: !459, discriminator: 1)
!4339 = !DILocation(line: 1248, column: 56, scope: !4338)
!4340 = !DILocation(line: 1248, column: 62, scope: !4338)
!4341 = !DILocation(line: 1248, column: 70, scope: !4338)
!4342 = !DILocation(line: 1248, column: 32, scope: !4338)
!4343 = !DILocation(line: 1248, column: 9, scope: !4338)
!4344 = !DILocation(line: 1249, column: 31, scope: !4345)
!4345 = distinct !DILexicalBlock(scope: !4333, file: !459, line: 1248, column: 76)
!4346 = !DILocation(line: 1249, column: 6, scope: !4345)
!4347 = !DILocation(line: 1250, column: 6, scope: !4345)
!4348 = !DILocation(line: 1252, column: 4, scope: !4334)
!4349 = !DILocation(line: 1247, column: 50, scope: !4350)
!4350 = !DILexicalBlockFile(scope: !4322, file: !459, discriminator: 10)
!4351 = !DILocation(line: 1247, column: 54, scope: !4350)
!4352 = !DILocation(line: 1247, column: 47, scope: !4350)
!4353 = !DILocation(line: 1247, column: 4, scope: !4350)
!4354 = distinct !{!4354, !4355}
!4355 = !DILocation(line: 1247, column: 4, scope: !4296)
!4356 = !DILocation(line: 1253, column: 3, scope: !4296)
!4357 = !DILocation(line: 1254, column: 2, scope: !3579)
!4358 = !DILocation(line: 1259, column: 6, scope: !4359)
!4359 = distinct !DILexicalBlock(scope: !3407, file: !459, line: 1259, column: 6)
!4360 = !DILocation(line: 1259, column: 16, scope: !4359)
!4361 = !DILocation(line: 1259, column: 6, scope: !3407)
!4362 = !DILocation(line: 1263, column: 27, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !4359, file: !459, line: 1261, column: 2)
!4364 = !DILocation(line: 1263, column: 32, scope: !4363)
!4365 = !DILocation(line: 1263, column: 49, scope: !4363)
!4366 = !DILocation(line: 1264, column: 7, scope: !4363)
!4367 = !DILocation(line: 1264, column: 10, scope: !4363)
!4368 = !DILocation(line: 1264, column: 21, scope: !4363)
!4369 = !DILocation(line: 1263, column: 3, scope: !4363)
!4370 = !DILocation(line: 1265, column: 2, scope: !4363)
!4371 = !DILocation(line: 1268, column: 2, scope: !3407)
!4372 = !DILocation(line: 1269, column: 1, scope: !3407)
!4373 = distinct !DISubprogram(name: "netlink_route_filter", scope: !459, file: !459, line: 1953, type: !1363, isLocal: true, isDefinition: true, scopeLine: 1954, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!4374 = !DILocalVariable(name: "snl", arg: 1, scope: !4373, file: !459, line: 1953, type: !1365)
!4375 = !DILocation(line: 1953, column: 66, scope: !4373)
!4376 = !DILocalVariable(name: "h", arg: 2, scope: !4373, file: !459, line: 1953, type: !392)
!4377 = !DILocation(line: 1953, column: 88, scope: !4373)
!4378 = !DILocalVariable(name: "rt", scope: !4373, file: !459, line: 1955, type: !4379)
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64, align: 64)
!4380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtmsg", file: !25, line: 182, size: 96, align: 32, elements: !4381)
!4381 = !{!4382, !4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390}
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "rtm_family", scope: !4380, file: !25, line: 183, baseType: !435, size: 8, align: 8)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "rtm_dst_len", scope: !4380, file: !25, line: 184, baseType: !435, size: 8, align: 8, offset: 8)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "rtm_src_len", scope: !4380, file: !25, line: 185, baseType: !435, size: 8, align: 8, offset: 16)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "rtm_tos", scope: !4380, file: !25, line: 186, baseType: !435, size: 8, align: 8, offset: 24)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "rtm_table", scope: !4380, file: !25, line: 188, baseType: !435, size: 8, align: 8, offset: 32)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "rtm_protocol", scope: !4380, file: !25, line: 189, baseType: !435, size: 8, align: 8, offset: 40)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "rtm_scope", scope: !4380, file: !25, line: 190, baseType: !435, size: 8, align: 8, offset: 48)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "rtm_type", scope: !4380, file: !25, line: 191, baseType: !435, size: 8, align: 8, offset: 56)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "rtm_flags", scope: !4380, file: !25, line: 193, baseType: !391, size: 32, align: 32, offset: 64)
!4391 = !DILocation(line: 1955, column: 16, scope: !4373)
!4392 = !DILocalVariable(name: "tb", scope: !4373, file: !459, line: 1956, type: !4393)
!4393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 1472, align: 64, elements: !4394)
!4394 = !{!4395}
!4395 = !DISubrange(count: 23)
!4396 = !DILocation(line: 1956, column: 17, scope: !4373)
!4397 = !DILocalVariable(name: "len", scope: !4373, file: !459, line: 1957, type: !404)
!4398 = !DILocation(line: 1957, column: 9, scope: !4373)
!4399 = !DILocalVariable(name: "vrrp", scope: !4373, file: !459, line: 1958, type: !1731)
!4400 = !DILocation(line: 1958, column: 10, scope: !4373)
!4401 = !DILocalVariable(name: "route", scope: !4373, file: !459, line: 1959, type: !4402)
!4402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4403, size: 64, align: 64)
!4403 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_route_t", file: !4404, line: 239, baseType: !4405)
!4404 = !DIFile(filename: "./../include/vrrp_iproute.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!4405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ip_route", file: !4404, line: 182, size: 1664, align: 64, elements: !4406)
!4406 = !{!4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4486, !4487, !4488, !4489, !4490, !4491}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !4405, file: !4404, line: 183, baseType: !3431, size: 64, align: 64)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !4405, file: !4404, line: 184, baseType: !3431, size: 64, align: 64, offset: 64)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "pref_src", scope: !4405, file: !4404, line: 185, baseType: !3431, size: 64, align: 64, offset: 128)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !4405, file: !4404, line: 186, baseType: !434, size: 8, align: 8, offset: 192)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "tos", scope: !4405, file: !4404, line: 187, baseType: !434, size: 8, align: 8, offset: 200)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !4405, file: !4404, line: 188, baseType: !389, size: 32, align: 32, offset: 224)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !4405, file: !4404, line: 189, baseType: !434, size: 8, align: 8, offset: 256)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "scope", scope: !4405, file: !4404, line: 190, baseType: !434, size: 8, align: 8, offset: 264)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "metric", scope: !4405, file: !4404, line: 191, baseType: !389, size: 32, align: 32, offset: 288)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "via", scope: !4405, file: !4404, line: 192, baseType: !3431, size: 64, align: 64, offset: 320)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "oif", scope: !4405, file: !4404, line: 193, baseType: !1679, size: 64, align: 64, offset: 384)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4405, file: !4404, line: 194, baseType: !389, size: 32, align: 32, offset: 448)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !4405, file: !4404, line: 195, baseType: !389, size: 32, align: 32, offset: 480)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "quickack", scope: !4405, file: !4404, line: 197, baseType: !609, size: 8, align: 8, offset: 512)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4405, file: !4404, line: 202, baseType: !389, size: 32, align: 32, offset: 544)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !4405, file: !4404, line: 203, baseType: !389, size: 32, align: 32, offset: 576)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "hoplimit", scope: !4405, file: !4404, line: 204, baseType: !434, size: 8, align: 8, offset: 608)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "advmss", scope: !4405, file: !4404, line: 205, baseType: !389, size: 32, align: 32, offset: 640)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "rtt", scope: !4405, file: !4404, line: 209, baseType: !389, size: 32, align: 32, offset: 672)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "rttvar", scope: !4405, file: !4404, line: 210, baseType: !389, size: 32, align: 32, offset: 704)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "reordering", scope: !4405, file: !4404, line: 211, baseType: !389, size: 32, align: 32, offset: 736)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !4405, file: !4404, line: 212, baseType: !389, size: 32, align: 32, offset: 768)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "cwnd", scope: !4405, file: !4404, line: 213, baseType: !389, size: 32, align: 32, offset: 800)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "ssthresh", scope: !4405, file: !4404, line: 214, baseType: !389, size: 32, align: 32, offset: 832)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "rto_min", scope: !4405, file: !4404, line: 215, baseType: !389, size: 32, align: 32, offset: 864)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "initcwnd", scope: !4405, file: !4404, line: 216, baseType: !389, size: 32, align: 32, offset: 896)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "initrwnd", scope: !4405, file: !4404, line: 217, baseType: !389, size: 32, align: 32, offset: 928)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "congctl", scope: !4405, file: !4404, line: 219, baseType: !386, size: 64, align: 64, offset: 960)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "pref", scope: !4405, file: !4404, line: 222, baseType: !434, size: 8, align: 8, offset: 1024)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4405, file: !4404, line: 227, baseType: !434, size: 8, align: 8, offset: 1032)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "realms", scope: !4405, file: !4404, line: 229, baseType: !389, size: 32, align: 32, offset: 1056)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "encap", scope: !4405, file: !4404, line: 231, baseType: !4439, size: 320, align: 64, offset: 1088)
!4439 = !DIDerivedType(tag: DW_TAG_typedef, name: "encap_t", file: !4404, line: 116, baseType: !4440)
!4440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_encap", file: !4404, line: 103, size: 320, align: 64, elements: !4441)
!4441 = !{!4442, !4443, !4444}
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4440, file: !4404, line: 104, baseType: !440, size: 16, align: 16)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4440, file: !4404, line: 105, baseType: !389, size: 32, align: 32, offset: 32)
!4444 = !DIDerivedType(tag: DW_TAG_member, scope: !4440, file: !4404, line: 106, baseType: !4445, size: 256, align: 64, offset: 64)
!4445 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4440, file: !4404, line: 106, size: 256, align: 64, elements: !4446)
!4446 = !{!4447, !4461, !4471, !4476}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "mpls", scope: !4445, file: !4404, line: 108, baseType: !4448, size: 128, align: 64)
!4448 = !DIDerivedType(tag: DW_TAG_typedef, name: "encap_mpls_t", file: !4404, line: 76, baseType: !4449)
!4449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_encap_mpls", file: !4404, line: 73, size: 128, align: 64, elements: !4450)
!4450 = !{!4451, !4460}
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4449, file: !4404, line: 74, baseType: !4452, size: 64, align: 32)
!4452 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpls_labels", file: !4404, line: 71, baseType: !4453)
!4453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4454, size: 64, align: 32, elements: !2813)
!4454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mpls_label", file: !4455, line: 21, size: 32, align: 32, elements: !4456)
!4455 = !DIFile(filename: "/usr/include/linux/mpls.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!4456 = !{!4457}
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4454, file: !4455, line: 22, baseType: !4458, size: 32, align: 32)
!4458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !4459, line: 30, baseType: !397)
!4459 = !DIFile(filename: "/usr/include/linux/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "num_labels", scope: !4449, file: !4404, line: 75, baseType: !404, size: 64, align: 64, offset: 64)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4445, file: !4404, line: 110, baseType: !4462, size: 256, align: 64)
!4462 = !DIDerivedType(tag: DW_TAG_typedef, name: "encap_ip_t", file: !4404, line: 86, baseType: !4463)
!4463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_encap_ip", file: !4404, line: 79, size: 256, align: 64, elements: !4464)
!4464 = !{!4465, !4466, !4467, !4468, !4469, !4470}
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4463, file: !4404, line: 80, baseType: !456, size: 64, align: 64)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !4463, file: !4404, line: 81, baseType: !3431, size: 64, align: 64, offset: 64)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !4463, file: !4404, line: 82, baseType: !3431, size: 64, align: 64, offset: 128)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "tos", scope: !4463, file: !4404, line: 83, baseType: !434, size: 8, align: 8, offset: 192)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4463, file: !4404, line: 84, baseType: !440, size: 16, align: 16, offset: 208)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !4463, file: !4404, line: 85, baseType: !434, size: 8, align: 8, offset: 224)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "ila", scope: !4445, file: !4404, line: 112, baseType: !4472, size: 64, align: 64)
!4472 = !DIDerivedType(tag: DW_TAG_typedef, name: "encap_ila_t", file: !4404, line: 91, baseType: !4473)
!4473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_encap_ila", file: !4404, line: 89, size: 64, align: 64, elements: !4474)
!4474 = !{!4475}
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "locator", scope: !4473, file: !4404, line: 90, baseType: !456, size: 64, align: 64)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "ip6", scope: !4445, file: !4404, line: 114, baseType: !4477, size: 256, align: 64)
!4477 = !DIDerivedType(tag: DW_TAG_typedef, name: "encap_ip6_t", file: !4404, line: 101, baseType: !4478)
!4478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_encap_ip6", file: !4404, line: 94, size: 256, align: 64, elements: !4479)
!4479 = !{!4480, !4481, !4482, !4483, !4484, !4485}
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4478, file: !4404, line: 95, baseType: !456, size: 64, align: 64)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !4478, file: !4404, line: 96, baseType: !3431, size: 64, align: 64, offset: 64)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !4478, file: !4404, line: 97, baseType: !3431, size: 64, align: 64, offset: 128)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "tc", scope: !4478, file: !4404, line: 98, baseType: !434, size: 8, align: 8, offset: 192)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4478, file: !4404, line: 99, baseType: !440, size: 16, align: 16, offset: 208)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "hoplimit", scope: !4478, file: !4404, line: 100, baseType: !434, size: 8, align: 8, offset: 224)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "nhs", scope: !4405, file: !4404, line: 233, baseType: !509, size: 64, align: 64, offset: 1408)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4405, file: !4404, line: 234, baseType: !389, size: 32, align: 32, offset: 1472)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "dont_track", scope: !4405, file: !4404, line: 235, baseType: !609, size: 8, align: 8, offset: 1504)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "track_group", scope: !4405, file: !4404, line: 236, baseType: !3458, size: 64, align: 64, offset: 1536)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4405, file: !4404, line: 237, baseType: !609, size: 8, align: 8, offset: 1600)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "configured_ifindex", scope: !4405, file: !4404, line: 238, baseType: !389, size: 32, align: 32, offset: 1632)
!4492 = !DILocation(line: 1959, column: 14, scope: !4373)
!4493 = !DILocation(line: 1961, column: 6, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !4373, file: !459, line: 1961, column: 6)
!4495 = !DILocation(line: 1961, column: 9, scope: !4494)
!4496 = !DILocation(line: 1961, column: 20, scope: !4494)
!4497 = !DILocation(line: 1961, column: 35, scope: !4494)
!4498 = !DILocation(line: 1961, column: 38, scope: !4499)
!4499 = !DILexicalBlockFile(scope: !4494, file: !459, discriminator: 1)
!4500 = !DILocation(line: 1961, column: 41, scope: !4499)
!4501 = !DILocation(line: 1961, column: 52, scope: !4499)
!4502 = !DILocation(line: 1961, column: 6, scope: !4499)
!4503 = !DILocation(line: 1962, column: 3, scope: !4494)
!4504 = !DILocation(line: 1964, column: 6, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4373, file: !459, line: 1964, column: 6)
!4506 = !DILocation(line: 1964, column: 9, scope: !4505)
!4507 = !DILocation(line: 1964, column: 19, scope: !4505)
!4508 = !DILocation(line: 1964, column: 6, scope: !4373)
!4509 = !DILocation(line: 1965, column: 3, scope: !4505)
!4510 = !DILocation(line: 1967, column: 6, scope: !4373)
!4511 = !DILocation(line: 1967, column: 16, scope: !4373)
!4512 = !DILocation(line: 1967, column: 8, scope: !4373)
!4513 = !DILocation(line: 1967, column: 5, scope: !4373)
!4514 = !DILocation(line: 1969, column: 6, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4373, file: !459, line: 1969, column: 6)
!4516 = !DILocation(line: 1969, column: 10, scope: !4515)
!4517 = !DILocation(line: 1969, column: 23, scope: !4515)
!4518 = !DILocation(line: 1969, column: 6, scope: !4373)
!4519 = !DILocation(line: 1971, column: 3, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !4515, file: !459, line: 1969, column: 31)
!4521 = !DILocation(line: 1975, column: 6, scope: !4522)
!4522 = distinct !DILexicalBlock(scope: !4373, file: !459, line: 1975, column: 6)
!4523 = !DILocation(line: 1975, column: 10, scope: !4522)
!4524 = !DILocation(line: 1975, column: 21, scope: !4522)
!4525 = !DILocation(line: 1975, column: 31, scope: !4522)
!4526 = !DILocation(line: 1975, column: 34, scope: !4527)
!4527 = !DILexicalBlockFile(scope: !4522, file: !459, discriminator: 1)
!4528 = !DILocation(line: 1975, column: 38, scope: !4527)
!4529 = !DILocation(line: 1975, column: 49, scope: !4527)
!4530 = !DILocation(line: 1975, column: 6, scope: !4527)
!4531 = !DILocation(line: 1976, column: 3, scope: !4522)
!4532 = !DILocation(line: 1978, column: 8, scope: !4373)
!4533 = !DILocation(line: 1978, column: 11, scope: !4373)
!4534 = !DILocation(line: 1978, column: 21, scope: !4373)
!4535 = !DILocation(line: 1978, column: 6, scope: !4373)
!4536 = !DILocation(line: 1980, column: 2, scope: !4373)
!4537 = !DILocation(line: 1981, column: 15, scope: !4373)
!4538 = !DILocation(line: 1981, column: 27, scope: !4373)
!4539 = !DILocation(line: 1981, column: 46, scope: !4373)
!4540 = !DILocation(line: 1981, column: 30, scope: !4373)
!4541 = !DILocation(line: 1981, column: 28, scope: !4373)
!4542 = !DILocation(line: 1981, column: 40, scope: !4373)
!4543 = !DILocation(line: 1981, column: 2, scope: !4373)
!4544 = !DILocation(line: 1983, column: 30, scope: !4545)
!4545 = distinct !DILexicalBlock(scope: !4373, file: !459, line: 1983, column: 6)
!4546 = !DILocation(line: 1983, column: 34, scope: !4545)
!4547 = !DILocation(line: 1983, column: 16, scope: !4545)
!4548 = !DILocation(line: 1983, column: 14, scope: !4545)
!4549 = !DILocation(line: 1983, column: 6, scope: !4373)
!4550 = !DILocation(line: 1984, column: 3, scope: !4545)
!4551 = !DILocation(line: 1986, column: 16, scope: !4373)
!4552 = !DILocation(line: 1986, column: 19, scope: !4373)
!4553 = !DILocation(line: 1986, column: 30, scope: !4373)
!4554 = !DILocation(line: 1986, column: 2, scope: !4373)
!4555 = !DILocation(line: 1986, column: 9, scope: !4373)
!4556 = !DILocation(line: 1986, column: 13, scope: !4373)
!4557 = !DILocation(line: 1989, column: 6, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4373, file: !459, line: 1989, column: 6)
!4559 = !DILocation(line: 1989, column: 9, scope: !4558)
!4560 = !DILocation(line: 1989, column: 20, scope: !4558)
!4561 = !DILocation(line: 1989, column: 6, scope: !4373)
!4562 = !DILocation(line: 1992, column: 7, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4564, file: !459, line: 1992, column: 7)
!4564 = distinct !DILexicalBlock(scope: !4558, file: !459, line: 1989, column: 36)
!4565 = !DILocation(line: 1992, column: 7, scope: !4564)
!4566 = !DILocation(line: 1993, column: 43, scope: !4567)
!4567 = distinct !DILexicalBlock(scope: !4563, file: !459, line: 1992, column: 20)
!4568 = !DILocation(line: 1993, column: 53, scope: !4567)
!4569 = !DILocation(line: 1993, column: 46, scope: !4567)
!4570 = !DILocation(line: 1993, column: 33, scope: !4567)
!4571 = !DILocation(line: 1993, column: 32, scope: !4567)
!4572 = !DILocation(line: 1993, column: 4, scope: !4567)
!4573 = !DILocation(line: 1993, column: 11, scope: !4567)
!4574 = !DILocation(line: 1993, column: 30, scope: !4567)
!4575 = !DILocation(line: 1994, column: 8, scope: !4576)
!4576 = distinct !DILexicalBlock(scope: !4567, file: !459, line: 1994, column: 8)
!4577 = !DILocation(line: 1994, column: 15, scope: !4576)
!4578 = !DILocation(line: 1994, column: 19, scope: !4576)
!4579 = !DILocation(line: 1994, column: 22, scope: !4580)
!4580 = !DILexicalBlockFile(scope: !4576, file: !459, discriminator: 1)
!4581 = !DILocation(line: 1994, column: 29, scope: !4580)
!4582 = !DILocation(line: 1994, column: 34, scope: !4580)
!4583 = !DILocation(line: 1994, column: 45, scope: !4580)
!4584 = !DILocation(line: 1994, column: 52, scope: !4580)
!4585 = !DILocation(line: 1994, column: 42, scope: !4580)
!4586 = !DILocation(line: 1994, column: 8, scope: !4580)
!4587 = !DILocation(line: 1995, column: 69, scope: !4576)
!4588 = !DILocation(line: 1995, column: 76, scope: !4576)
!4589 = !DILocation(line: 1995, column: 96, scope: !4576)
!4590 = !DILocation(line: 1995, column: 103, scope: !4576)
!4591 = !DILocation(line: 1995, column: 108, scope: !4576)
!4592 = !DILocation(line: 1995, column: 5, scope: !4576)
!4593 = !DILocation(line: 1996, column: 3, scope: !4567)
!4594 = !DILocation(line: 1998, column: 4, scope: !4563)
!4595 = !DILocation(line: 2000, column: 3, scope: !4564)
!4596 = !DILocation(line: 2005, column: 6, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4373, file: !459, line: 2005, column: 6)
!4598 = !DILocation(line: 2005, column: 13, scope: !4597)
!4599 = !DILocation(line: 2005, column: 6, scope: !4373)
!4600 = !DILocation(line: 2006, column: 3, scope: !4597)
!4601 = !DILocation(line: 2008, column: 6, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4373, file: !459, line: 2008, column: 6)
!4603 = !DILocation(line: 2008, column: 6, scope: !4373)
!4604 = !DILocation(line: 2009, column: 19, scope: !4602)
!4605 = !DILocation(line: 2009, column: 3, scope: !4602)
!4606 = !DILocation(line: 2011, column: 26, scope: !4602)
!4607 = !DILocation(line: 2011, column: 3, scope: !4602)
!4608 = !DILocation(line: 2013, column: 2, scope: !4373)
!4609 = !DILocation(line: 2014, column: 1, scope: !4373)
!4610 = distinct !DISubprogram(name: "netlink_rule_filter", scope: !459, file: !459, line: 2017, type: !1363, isLocal: true, isDefinition: true, scopeLine: 2018, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!4611 = !DILocalVariable(name: "snl", arg: 1, scope: !4610, file: !459, line: 2017, type: !1365)
!4612 = !DILocation(line: 2017, column: 65, scope: !4610)
!4613 = !DILocalVariable(name: "h", arg: 2, scope: !4610, file: !459, line: 2017, type: !392)
!4614 = !DILocation(line: 2017, column: 87, scope: !4610)
!4615 = !DILocalVariable(name: "frh", scope: !4610, file: !459, line: 2019, type: !4616)
!4616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64, align: 64)
!4617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fib_rule_hdr", file: !338, line: 18, size: 96, align: 32, elements: !4618)
!4618 = !{!4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627}
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !4617, file: !338, line: 19, baseType: !3417, size: 8, align: 8)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "dst_len", scope: !4617, file: !338, line: 20, baseType: !3417, size: 8, align: 8, offset: 8)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "src_len", scope: !4617, file: !338, line: 21, baseType: !3417, size: 8, align: 8, offset: 16)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "tos", scope: !4617, file: !338, line: 22, baseType: !3417, size: 8, align: 8, offset: 24)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !4617, file: !338, line: 24, baseType: !3417, size: 8, align: 8, offset: 32)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "res1", scope: !4617, file: !338, line: 25, baseType: !3417, size: 8, align: 8, offset: 40)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "res2", scope: !4617, file: !338, line: 26, baseType: !3417, size: 8, align: 8, offset: 48)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4617, file: !338, line: 27, baseType: !3417, size: 8, align: 8, offset: 56)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4617, file: !338, line: 29, baseType: !397, size: 32, align: 32, offset: 64)
!4628 = !DILocation(line: 2019, column: 23, scope: !4610)
!4629 = !DILocalVariable(name: "tb", scope: !4610, file: !459, line: 2020, type: !4630)
!4630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 1152, align: 64, elements: !4631)
!4631 = !{!4632}
!4632 = !DISubrange(count: 18)
!4633 = !DILocation(line: 2020, column: 17, scope: !4610)
!4634 = !DILocalVariable(name: "len", scope: !4610, file: !459, line: 2021, type: !404)
!4635 = !DILocation(line: 2021, column: 9, scope: !4610)
!4636 = !DILocalVariable(name: "vrrp", scope: !4610, file: !459, line: 2022, type: !1731)
!4637 = !DILocation(line: 2022, column: 10, scope: !4610)
!4638 = !DILocalVariable(name: "ip_rule", scope: !4610, file: !459, line: 2023, type: !4639)
!4639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4640, size: 64, align: 64)
!4640 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_rule_t", file: !372, line: 113, baseType: !4641)
!4641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ip_rule", file: !372, line: 65, size: 1024, align: 64, elements: !4642)
!4642 = !{!4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4652, !4653, !4654, !4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663}
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4641, file: !372, line: 66, baseType: !389, size: 32, align: 32)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "invert", scope: !4641, file: !372, line: 67, baseType: !609, size: 8, align: 8, offset: 32)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !4641, file: !372, line: 68, baseType: !407, size: 32, align: 32, offset: 64)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "from_addr", scope: !4641, file: !372, line: 69, baseType: !3431, size: 64, align: 64, offset: 128)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "to_addr", scope: !4641, file: !372, line: 70, baseType: !3431, size: 64, align: 64, offset: 192)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !4641, file: !372, line: 71, baseType: !389, size: 32, align: 32, offset: 256)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "tos", scope: !4641, file: !372, line: 72, baseType: !434, size: 8, align: 8, offset: 288)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "fwmark", scope: !4641, file: !372, line: 73, baseType: !389, size: 32, align: 32, offset: 320)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "fwmask", scope: !4641, file: !372, line: 74, baseType: !389, size: 32, align: 32, offset: 352)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "realms", scope: !4641, file: !372, line: 75, baseType: !389, size: 32, align: 32, offset: 384)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_prefix_len", scope: !4641, file: !372, line: 77, baseType: !453, size: 32, align: 32, offset: 416)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_group", scope: !4641, file: !372, line: 80, baseType: !389, size: 32, align: 32, offset: 448)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "iif", scope: !4641, file: !372, line: 82, baseType: !1679, size: 64, align: 64, offset: 512)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "oif", scope: !4641, file: !372, line: 84, baseType: !1679, size: 64, align: 64, offset: 576)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "goto_target", scope: !4641, file: !372, line: 86, baseType: !389, size: 32, align: 32, offset: 640)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !4641, file: !372, line: 87, baseType: !389, size: 32, align: 32, offset: 672)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4641, file: !372, line: 88, baseType: !434, size: 8, align: 8, offset: 704)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "tunnel_id", scope: !4641, file: !372, line: 90, baseType: !456, size: 64, align: 64, offset: 768)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "dont_track", scope: !4641, file: !372, line: 110, baseType: !609, size: 8, align: 8, offset: 832)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "track_group", scope: !4641, file: !372, line: 111, baseType: !3458, size: 64, align: 64, offset: 896)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4641, file: !372, line: 112, baseType: !609, size: 8, align: 8, offset: 960)
!4664 = !DILocation(line: 2023, column: 13, scope: !4610)
!4665 = !DILocation(line: 2025, column: 6, scope: !4666)
!4666 = distinct !DILexicalBlock(scope: !4610, file: !459, line: 2025, column: 6)
!4667 = !DILocation(line: 2025, column: 9, scope: !4666)
!4668 = !DILocation(line: 2025, column: 20, scope: !4666)
!4669 = !DILocation(line: 2025, column: 34, scope: !4666)
!4670 = !DILocation(line: 2025, column: 37, scope: !4671)
!4671 = !DILexicalBlockFile(scope: !4666, file: !459, discriminator: 1)
!4672 = !DILocation(line: 2025, column: 40, scope: !4671)
!4673 = !DILocation(line: 2025, column: 51, scope: !4671)
!4674 = !DILocation(line: 2025, column: 6, scope: !4671)
!4675 = !DILocation(line: 2026, column: 3, scope: !4666)
!4676 = !DILocation(line: 2028, column: 6, scope: !4677)
!4677 = distinct !DILexicalBlock(scope: !4610, file: !459, line: 2028, column: 6)
!4678 = !DILocation(line: 2028, column: 9, scope: !4677)
!4679 = !DILocation(line: 2028, column: 19, scope: !4677)
!4680 = !DILocation(line: 2028, column: 6, scope: !4610)
!4681 = !DILocation(line: 2029, column: 3, scope: !4677)
!4682 = !DILocation(line: 2031, column: 7, scope: !4610)
!4683 = !DILocation(line: 2031, column: 17, scope: !4610)
!4684 = !DILocation(line: 2031, column: 9, scope: !4610)
!4685 = !DILocation(line: 2031, column: 6, scope: !4610)
!4686 = !DILocation(line: 2034, column: 6, scope: !4687)
!4687 = distinct !DILexicalBlock(scope: !4610, file: !459, line: 2034, column: 6)
!4688 = !DILocation(line: 2034, column: 11, scope: !4687)
!4689 = !DILocation(line: 2034, column: 18, scope: !4687)
!4690 = !DILocation(line: 2034, column: 28, scope: !4687)
!4691 = !DILocation(line: 2034, column: 31, scope: !4692)
!4692 = !DILexicalBlockFile(scope: !4687, file: !459, discriminator: 1)
!4693 = !DILocation(line: 2034, column: 36, scope: !4692)
!4694 = !DILocation(line: 2034, column: 43, scope: !4692)
!4695 = !DILocation(line: 2034, column: 6, scope: !4692)
!4696 = !DILocation(line: 2035, column: 3, scope: !4687)
!4697 = !DILocation(line: 2037, column: 8, scope: !4610)
!4698 = !DILocation(line: 2037, column: 11, scope: !4610)
!4699 = !DILocation(line: 2037, column: 21, scope: !4610)
!4700 = !DILocation(line: 2037, column: 6, scope: !4610)
!4701 = !DILocation(line: 2039, column: 2, scope: !4610)
!4702 = !DILocation(line: 2040, column: 15, scope: !4610)
!4703 = !DILocation(line: 2040, column: 27, scope: !4610)
!4704 = !DILocation(line: 2040, column: 46, scope: !4610)
!4705 = !DILocation(line: 2040, column: 30, scope: !4610)
!4706 = !DILocation(line: 2040, column: 28, scope: !4610)
!4707 = !DILocation(line: 2040, column: 41, scope: !4610)
!4708 = !DILocation(line: 2040, column: 2, scope: !4610)
!4709 = !DILocation(line: 2051, column: 6, scope: !4710)
!4710 = distinct !DILexicalBlock(scope: !4610, file: !459, line: 2051, column: 6)
!4711 = !DILocation(line: 2051, column: 9, scope: !4710)
!4712 = !DILocation(line: 2051, column: 20, scope: !4710)
!4713 = !DILocation(line: 2051, column: 6, scope: !4610)
!4714 = !DILocation(line: 2052, column: 3, scope: !4710)
!4715 = !DILocation(line: 2054, column: 31, scope: !4716)
!4716 = distinct !DILexicalBlock(scope: !4610, file: !459, line: 2054, column: 6)
!4717 = !DILocation(line: 2054, column: 36, scope: !4716)
!4718 = !DILocation(line: 2054, column: 18, scope: !4716)
!4719 = !DILocation(line: 2054, column: 16, scope: !4716)
!4720 = !DILocation(line: 2054, column: 6, scope: !4610)
!4721 = !DILocation(line: 2055, column: 3, scope: !4716)
!4722 = !DILocation(line: 2057, column: 2, scope: !4610)
!4723 = !DILocation(line: 2057, column: 11, scope: !4610)
!4724 = !DILocation(line: 2057, column: 15, scope: !4610)
!4725 = !DILocation(line: 2059, column: 6, scope: !4726)
!4726 = distinct !DILexicalBlock(scope: !4610, file: !459, line: 2059, column: 6)
!4727 = !DILocation(line: 2059, column: 15, scope: !4726)
!4728 = !DILocation(line: 2059, column: 6, scope: !4610)
!4729 = !DILocation(line: 2060, column: 3, scope: !4726)
!4730 = !DILocation(line: 2062, column: 6, scope: !4731)
!4731 = distinct !DILexicalBlock(scope: !4610, file: !459, line: 2062, column: 6)
!4732 = !DILocation(line: 2062, column: 6, scope: !4610)
!4733 = !DILocation(line: 2063, column: 19, scope: !4731)
!4734 = !DILocation(line: 2063, column: 3, scope: !4731)
!4735 = !DILocation(line: 2065, column: 25, scope: !4731)
!4736 = !DILocation(line: 2065, column: 3, scope: !4731)
!4737 = !DILocation(line: 2067, column: 2, scope: !4610)
!4738 = !DILocation(line: 2068, column: 1, scope: !4610)
!4739 = distinct !DISubprogram(name: "__test_bit", scope: !271, file: !271, line: 47, type: !4740, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!4740 = !DISubroutineType(types: !4741)
!4741 = !{!609, !391, !4742}
!4742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4743, size: 64, align: 64)
!4743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !406)
!4744 = !DILocalVariable(name: "idx", arg: 1, scope: !4739, file: !271, line: 47, type: !391)
!4745 = !DILocation(line: 47, column: 39, scope: !4739)
!4746 = !DILocalVariable(name: "bmap", arg: 2, scope: !4739, file: !271, line: 47, type: !4742)
!4747 = !DILocation(line: 47, column: 65, scope: !4739)
!4748 = !DILocation(line: 49, column: 19, scope: !4739)
!4749 = !DILocation(line: 49, column: 18, scope: !4739)
!4750 = !DILocation(line: 49, column: 24, scope: !4739)
!4751 = !DILocation(line: 49, column: 12, scope: !4739)
!4752 = !DILocation(line: 49, column: 68, scope: !4739)
!4753 = !DILocation(line: 49, column: 67, scope: !4739)
!4754 = !DILocation(line: 49, column: 73, scope: !4739)
!4755 = !DILocation(line: 49, column: 63, scope: !4739)
!4756 = !DILocation(line: 49, column: 56, scope: !4739)
!4757 = !DILocation(line: 49, column: 10, scope: !4739)
!4758 = !DILocation(line: 49, column: 9, scope: !4739)
!4759 = !DILocation(line: 49, column: 2, scope: !4739)
!4760 = distinct !DISubprogram(name: "inaddr_equal", scope: !4761, file: !4761, line: 96, type: !4762, isLocal: true, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!4761 = !DIFile(filename: "../../lib/utils.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!4762 = !DISubroutineType(types: !4763)
!4763 = !{!609, !417, !388, !388}
!4764 = !DILocalVariable(name: "family", arg: 1, scope: !4760, file: !4761, line: 96, type: !417)
!4765 = !DILocation(line: 96, column: 44, scope: !4760)
!4766 = !DILocalVariable(name: "addr1", arg: 2, scope: !4760, file: !4761, line: 96, type: !388)
!4767 = !DILocation(line: 96, column: 58, scope: !4760)
!4768 = !DILocalVariable(name: "addr2", arg: 3, scope: !4760, file: !4761, line: 96, type: !388)
!4769 = !DILocation(line: 96, column: 71, scope: !4760)
!4770 = !DILocation(line: 98, column: 6, scope: !4771)
!4771 = distinct !DILexicalBlock(scope: !4760, file: !4761, line: 98, column: 6)
!4772 = !DILocation(line: 98, column: 13, scope: !4771)
!4773 = !DILocation(line: 98, column: 6, scope: !4760)
!4774 = !DILocalVariable(name: "a1", scope: !4775, file: !4761, line: 99, type: !425)
!4775 = distinct !DILexicalBlock(scope: !4771, file: !4761, line: 98, column: 25)
!4776 = !DILocation(line: 99, column: 20, scope: !4775)
!4777 = !DILocation(line: 99, column: 45, scope: !4775)
!4778 = !DILocation(line: 99, column: 25, scope: !4775)
!4779 = !DILocalVariable(name: "a2", scope: !4775, file: !4761, line: 100, type: !425)
!4780 = !DILocation(line: 100, column: 20, scope: !4775)
!4781 = !DILocation(line: 100, column: 45, scope: !4775)
!4782 = !DILocation(line: 100, column: 25, scope: !4775)
!4783 = !DILocation(line: 102, column: 24, scope: !4784)
!4784 = distinct !DILexicalBlock(scope: !4775, file: !4761, line: 102, column: 7)
!4785 = !DILocation(line: 102, column: 28, scope: !4784)
!4786 = !DILocation(line: 102, column: 7, scope: !4784)
!4787 = !DILocation(line: 102, column: 7, scope: !4775)
!4788 = !DILocation(line: 103, column: 4, scope: !4784)
!4789 = !DILocation(line: 104, column: 2, scope: !4775)
!4790 = !DILocation(line: 104, column: 13, scope: !4791)
!4791 = !DILexicalBlockFile(scope: !4792, file: !4761, discriminator: 1)
!4792 = distinct !DILexicalBlock(scope: !4771, file: !4761, line: 104, column: 13)
!4793 = !DILocation(line: 104, column: 20, scope: !4791)
!4794 = !DILocalVariable(name: "a1", scope: !4795, file: !4761, line: 105, type: !447)
!4795 = distinct !DILexicalBlock(scope: !4792, file: !4761, line: 104, column: 31)
!4796 = !DILocation(line: 105, column: 19, scope: !4795)
!4797 = !DILocation(line: 105, column: 43, scope: !4795)
!4798 = !DILocation(line: 105, column: 24, scope: !4795)
!4799 = !DILocalVariable(name: "a2", scope: !4795, file: !4761, line: 106, type: !447)
!4800 = !DILocation(line: 106, column: 19, scope: !4795)
!4801 = !DILocation(line: 106, column: 43, scope: !4795)
!4802 = !DILocation(line: 106, column: 24, scope: !4795)
!4803 = !DILocation(line: 108, column: 7, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4795, file: !4761, line: 108, column: 7)
!4805 = !DILocation(line: 108, column: 11, scope: !4804)
!4806 = !DILocation(line: 108, column: 21, scope: !4804)
!4807 = !DILocation(line: 108, column: 25, scope: !4804)
!4808 = !DILocation(line: 108, column: 18, scope: !4804)
!4809 = !DILocation(line: 108, column: 7, scope: !4795)
!4810 = !DILocation(line: 109, column: 4, scope: !4804)
!4811 = !DILocation(line: 110, column: 2, scope: !4795)
!4812 = !DILocation(line: 112, column: 2, scope: !4760)
!4813 = !DILocation(line: 113, column: 1, scope: !4760)
!4814 = distinct !DISubprogram(name: "address_is_ours", scope: !459, file: !459, line: 155, type: !4815, isLocal: true, isDefinition: true, scopeLine: 156, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!4815 = !DISubroutineType(types: !4816)
!4816 = !{!1731, !3413, !447, !1679}
!4817 = !DILocalVariable(name: "ifa", arg: 1, scope: !4814, file: !459, line: 155, type: !3413)
!4818 = !DILocation(line: 155, column: 35, scope: !4814)
!4819 = !DILocalVariable(name: "addr", arg: 2, scope: !4814, file: !459, line: 155, type: !447)
!4820 = !DILocation(line: 155, column: 56, scope: !4814)
!4821 = !DILocalVariable(name: "ifp", arg: 3, scope: !4814, file: !459, line: 155, type: !1679)
!4822 = !DILocation(line: 155, column: 75, scope: !4814)
!4823 = !DILocalVariable(name: "e", scope: !4814, file: !459, line: 157, type: !1911)
!4824 = !DILocation(line: 157, column: 10, scope: !4814)
!4825 = !DILocalVariable(name: "e1", scope: !4814, file: !459, line: 157, type: !1911)
!4826 = !DILocation(line: 157, column: 13, scope: !4814)
!4827 = !DILocalVariable(name: "tvp", scope: !4814, file: !459, line: 158, type: !1914)
!4828 = !DILocation(line: 158, column: 19, scope: !4814)
!4829 = !DILocalVariable(name: "vrrp", scope: !4814, file: !459, line: 159, type: !1731)
!4830 = !DILocation(line: 159, column: 10, scope: !4814)
!4831 = !DILocalVariable(name: "vaddr", scope: !4814, file: !459, line: 160, type: !3431)
!4832 = !DILocation(line: 160, column: 16, scope: !4814)
!4833 = !DILocation(line: 162, column: 15, scope: !4834)
!4834 = distinct !DILexicalBlock(scope: !4814, file: !459, line: 162, column: 2)
!4835 = !DILocation(line: 162, column: 20, scope: !4834)
!4836 = !DILocation(line: 162, column: 14, scope: !4834)
!4837 = !DILocation(line: 162, column: 40, scope: !4838)
!4838 = !DILexicalBlockFile(scope: !4834, file: !459, discriminator: 1)
!4839 = !DILocation(line: 162, column: 45, scope: !4838)
!4840 = !DILocation(line: 162, column: 39, scope: !4838)
!4841 = !DILocation(line: 162, column: 38, scope: !4838)
!4842 = !DILocation(line: 162, column: 38, scope: !4843)
!4843 = !DILexicalBlockFile(scope: !4834, file: !459, discriminator: 2)
!4844 = !DILocation(line: 162, column: 4, scope: !4845)
!4845 = !DILexicalBlockFile(scope: !4834, file: !459, discriminator: 3)
!4846 = !DILocation(line: 162, column: 9, scope: !4845)
!4847 = !DILocation(line: 162, column: 25, scope: !4845)
!4848 = !DILocation(line: 162, column: 38, scope: !4845)
!4849 = !DILocation(line: 162, column: 38, scope: !4850)
!4850 = !DILexicalBlockFile(scope: !4834, file: !459, discriminator: 4)
!4851 = !DILocation(line: 162, column: 14, scope: !4850)
!4852 = !DILocation(line: 162, column: 14, scope: !4853)
!4853 = !DILexicalBlockFile(scope: !4834, file: !459, discriminator: 5)
!4854 = !DILocation(line: 162, column: 14, scope: !4855)
!4855 = !DILexicalBlockFile(scope: !4834, file: !459, discriminator: 6)
!4856 = !DILocation(line: 162, column: 11, scope: !4855)
!4857 = !DILocation(line: 162, column: 7, scope: !4855)
!4858 = !DILocation(line: 162, column: 5, scope: !4859)
!4859 = !DILexicalBlockFile(scope: !4860, file: !459, discriminator: 7)
!4860 = distinct !DILexicalBlock(scope: !4834, file: !459, line: 162, column: 2)
!4861 = !DILocation(line: 162, column: 4, scope: !4859)
!4862 = !DILocation(line: 162, column: 8, scope: !4859)
!4863 = !DILocation(line: 162, column: 22, scope: !4864)
!4864 = !DILexicalBlockFile(scope: !4860, file: !459, discriminator: 8)
!4865 = !DILocation(line: 162, column: 26, scope: !4864)
!4866 = !DILocation(line: 162, column: 20, scope: !4864)
!4867 = !DILocation(line: 162, column: 18, scope: !4864)
!4868 = !DILocation(line: 162, column: 2, scope: !4869)
!4869 = !DILexicalBlockFile(scope: !4834, file: !459, discriminator: 9)
!4870 = !DILocation(line: 163, column: 10, scope: !4871)
!4871 = distinct !DILexicalBlock(scope: !4860, file: !459, line: 162, column: 56)
!4872 = !DILocation(line: 163, column: 15, scope: !4871)
!4873 = !DILocation(line: 163, column: 8, scope: !4871)
!4874 = !DILocation(line: 166, column: 7, scope: !4875)
!4875 = distinct !DILexicalBlock(scope: !4871, file: !459, line: 166, column: 7)
!4876 = !DILocation(line: 166, column: 13, scope: !4875)
!4877 = !DILocation(line: 166, column: 19, scope: !4875)
!4878 = !DILocation(line: 166, column: 7, scope: !4871)
!4879 = !DILocation(line: 167, column: 4, scope: !4875)
!4880 = !DILocation(line: 169, column: 7, scope: !4881)
!4881 = distinct !DILexicalBlock(scope: !4871, file: !459, line: 169, column: 7)
!4882 = !DILocation(line: 169, column: 12, scope: !4881)
!4883 = !DILocation(line: 169, column: 26, scope: !4881)
!4884 = !DILocation(line: 169, column: 32, scope: !4881)
!4885 = !DILocation(line: 169, column: 23, scope: !4881)
!4886 = !DILocation(line: 169, column: 7, scope: !4871)
!4887 = !DILocation(line: 170, column: 18, scope: !4888)
!4888 = distinct !DILexicalBlock(scope: !4889, file: !459, line: 170, column: 4)
!4889 = distinct !DILexicalBlock(scope: !4881, file: !459, line: 169, column: 40)
!4890 = !DILocation(line: 170, column: 24, scope: !4888)
!4891 = !DILocation(line: 170, column: 17, scope: !4888)
!4892 = !DILocation(line: 170, column: 34, scope: !4893)
!4893 = !DILexicalBlockFile(scope: !4888, file: !459, discriminator: 1)
!4894 = !DILocation(line: 170, column: 40, scope: !4893)
!4895 = !DILocation(line: 170, column: 33, scope: !4893)
!4896 = !DILocation(line: 170, column: 32, scope: !4893)
!4897 = !DILocation(line: 170, column: 32, scope: !4898)
!4898 = !DILexicalBlockFile(scope: !4888, file: !459, discriminator: 2)
!4899 = !DILocation(line: 170, column: 6, scope: !4900)
!4900 = !DILexicalBlockFile(scope: !4888, file: !459, discriminator: 3)
!4901 = !DILocation(line: 170, column: 12, scope: !4900)
!4902 = !DILocation(line: 170, column: 18, scope: !4900)
!4903 = !DILocation(line: 170, column: 32, scope: !4900)
!4904 = !DILocation(line: 170, column: 32, scope: !4905)
!4905 = !DILexicalBlockFile(scope: !4888, file: !459, discriminator: 4)
!4906 = !DILocation(line: 170, column: 17, scope: !4905)
!4907 = !DILocation(line: 170, column: 17, scope: !4908)
!4908 = !DILexicalBlockFile(scope: !4888, file: !459, discriminator: 5)
!4909 = !DILocation(line: 170, column: 17, scope: !4910)
!4910 = !DILexicalBlockFile(scope: !4888, file: !459, discriminator: 6)
!4911 = !DILocation(line: 170, column: 14, scope: !4910)
!4912 = !DILocation(line: 170, column: 9, scope: !4910)
!4913 = !DILocation(line: 170, column: 7, scope: !4914)
!4914 = !DILexicalBlockFile(scope: !4915, file: !459, discriminator: 7)
!4915 = distinct !DILexicalBlock(scope: !4888, file: !459, line: 170, column: 4)
!4916 = !DILocation(line: 170, column: 6, scope: !4914)
!4917 = !DILocation(line: 170, column: 11, scope: !4914)
!4918 = !DILocation(line: 170, column: 27, scope: !4919)
!4919 = !DILexicalBlockFile(scope: !4915, file: !459, discriminator: 8)
!4920 = !DILocation(line: 170, column: 32, scope: !4919)
!4921 = !DILocation(line: 170, column: 25, scope: !4919)
!4922 = !DILocation(line: 170, column: 23, scope: !4919)
!4923 = !DILocation(line: 170, column: 4, scope: !4924)
!4924 = !DILexicalBlockFile(scope: !4888, file: !459, discriminator: 9)
!4925 = !DILocation(line: 171, column: 23, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4927, file: !459, line: 171, column: 9)
!4927 = distinct !DILexicalBlock(scope: !4915, file: !459, line: 170, column: 64)
!4928 = !DILocation(line: 171, column: 28, scope: !4926)
!4929 = !DILocation(line: 171, column: 34, scope: !4926)
!4930 = !DILocation(line: 171, column: 41, scope: !4926)
!4931 = !DILocation(line: 171, column: 9, scope: !4926)
!4932 = !DILocation(line: 171, column: 9, scope: !4927)
!4933 = !DILocation(line: 172, column: 13, scope: !4926)
!4934 = !DILocation(line: 172, column: 20, scope: !4926)
!4935 = !DILocation(line: 172, column: 13, scope: !4936)
!4936 = !DILexicalBlockFile(scope: !4926, file: !459, discriminator: 1)
!4937 = !DILocation(line: 172, column: 39, scope: !4938)
!4938 = !DILexicalBlockFile(scope: !4926, file: !459, discriminator: 2)
!4939 = !DILocation(line: 172, column: 13, scope: !4938)
!4940 = !DILocation(line: 172, column: 13, scope: !4941)
!4941 = !DILexicalBlockFile(scope: !4926, file: !459, discriminator: 3)
!4942 = !DILocation(line: 172, column: 6, scope: !4941)
!4943 = !DILocation(line: 173, column: 4, scope: !4927)
!4944 = !DILocation(line: 170, column: 52, scope: !4945)
!4945 = !DILexicalBlockFile(scope: !4915, file: !459, discriminator: 10)
!4946 = !DILocation(line: 170, column: 57, scope: !4945)
!4947 = !DILocation(line: 170, column: 49, scope: !4945)
!4948 = !DILocation(line: 170, column: 4, scope: !4945)
!4949 = distinct !{!4949, !4950}
!4950 = !DILocation(line: 170, column: 4, scope: !4889)
!4951 = !DILocation(line: 174, column: 3, scope: !4889)
!4952 = !DILocation(line: 176, column: 17, scope: !4953)
!4953 = distinct !DILexicalBlock(scope: !4871, file: !459, line: 176, column: 3)
!4954 = !DILocation(line: 176, column: 23, scope: !4953)
!4955 = !DILocation(line: 176, column: 16, scope: !4953)
!4956 = !DILocation(line: 176, column: 34, scope: !4957)
!4957 = !DILexicalBlockFile(scope: !4953, file: !459, discriminator: 1)
!4958 = !DILocation(line: 176, column: 40, scope: !4957)
!4959 = !DILocation(line: 176, column: 33, scope: !4957)
!4960 = !DILocation(line: 176, column: 32, scope: !4957)
!4961 = !DILocation(line: 176, column: 32, scope: !4962)
!4962 = !DILexicalBlockFile(scope: !4953, file: !459, discriminator: 2)
!4963 = !DILocation(line: 176, column: 5, scope: !4964)
!4964 = !DILexicalBlockFile(scope: !4953, file: !459, discriminator: 3)
!4965 = !DILocation(line: 176, column: 11, scope: !4964)
!4966 = !DILocation(line: 176, column: 18, scope: !4964)
!4967 = !DILocation(line: 176, column: 32, scope: !4964)
!4968 = !DILocation(line: 176, column: 32, scope: !4969)
!4969 = !DILexicalBlockFile(scope: !4953, file: !459, discriminator: 4)
!4970 = !DILocation(line: 176, column: 16, scope: !4969)
!4971 = !DILocation(line: 176, column: 16, scope: !4972)
!4972 = !DILexicalBlockFile(scope: !4953, file: !459, discriminator: 5)
!4973 = !DILocation(line: 176, column: 16, scope: !4974)
!4974 = !DILexicalBlockFile(scope: !4953, file: !459, discriminator: 6)
!4975 = !DILocation(line: 176, column: 13, scope: !4974)
!4976 = !DILocation(line: 176, column: 8, scope: !4974)
!4977 = !DILocation(line: 176, column: 6, scope: !4978)
!4978 = !DILexicalBlockFile(scope: !4979, file: !459, discriminator: 7)
!4979 = distinct !DILexicalBlock(scope: !4953, file: !459, line: 176, column: 3)
!4980 = !DILocation(line: 176, column: 5, scope: !4978)
!4981 = !DILocation(line: 176, column: 10, scope: !4978)
!4982 = !DILocation(line: 176, column: 26, scope: !4983)
!4983 = !DILexicalBlockFile(scope: !4979, file: !459, discriminator: 8)
!4984 = !DILocation(line: 176, column: 31, scope: !4983)
!4985 = !DILocation(line: 176, column: 24, scope: !4983)
!4986 = !DILocation(line: 176, column: 22, scope: !4983)
!4987 = !DILocation(line: 176, column: 3, scope: !4988)
!4988 = !DILexicalBlockFile(scope: !4953, file: !459, discriminator: 9)
!4989 = !DILocation(line: 177, column: 22, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4991, file: !459, line: 177, column: 8)
!4991 = distinct !DILexicalBlock(scope: !4979, file: !459, line: 176, column: 63)
!4992 = !DILocation(line: 177, column: 27, scope: !4990)
!4993 = !DILocation(line: 177, column: 33, scope: !4990)
!4994 = !DILocation(line: 177, column: 40, scope: !4990)
!4995 = !DILocation(line: 177, column: 8, scope: !4990)
!4996 = !DILocation(line: 177, column: 8, scope: !4991)
!4997 = !DILocation(line: 178, column: 12, scope: !4990)
!4998 = !DILocation(line: 178, column: 19, scope: !4990)
!4999 = !DILocation(line: 178, column: 12, scope: !5000)
!5000 = !DILexicalBlockFile(scope: !4990, file: !459, discriminator: 1)
!5001 = !DILocation(line: 178, column: 38, scope: !5002)
!5002 = !DILexicalBlockFile(scope: !4990, file: !459, discriminator: 2)
!5003 = !DILocation(line: 178, column: 12, scope: !5002)
!5004 = !DILocation(line: 178, column: 12, scope: !5005)
!5005 = !DILexicalBlockFile(scope: !4990, file: !459, discriminator: 3)
!5006 = !DILocation(line: 178, column: 5, scope: !5005)
!5007 = !DILocation(line: 179, column: 3, scope: !4991)
!5008 = !DILocation(line: 176, column: 51, scope: !5009)
!5009 = !DILexicalBlockFile(scope: !4979, file: !459, discriminator: 10)
!5010 = !DILocation(line: 176, column: 56, scope: !5009)
!5011 = !DILocation(line: 176, column: 48, scope: !5009)
!5012 = !DILocation(line: 176, column: 3, scope: !5009)
!5013 = distinct !{!5013, !5014}
!5014 = !DILocation(line: 176, column: 3, scope: !4871)
!5015 = !DILocation(line: 180, column: 2, scope: !4871)
!5016 = !DILocation(line: 162, column: 45, scope: !5017)
!5017 = !DILexicalBlockFile(scope: !4860, file: !459, discriminator: 10)
!5018 = !DILocation(line: 162, column: 49, scope: !5017)
!5019 = !DILocation(line: 162, column: 42, scope: !5017)
!5020 = !DILocation(line: 162, column: 2, scope: !5017)
!5021 = distinct !{!5021, !5022}
!5022 = !DILocation(line: 162, column: 2, scope: !4814)
!5023 = !DILocation(line: 182, column: 2, scope: !4814)
!5024 = !DILocation(line: 183, column: 1, scope: !4814)
!5025 = distinct !DISubprogram(name: "set_vrrp_backup", scope: !459, file: !459, line: 963, type: !5026, isLocal: true, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!5026 = !DISubroutineType(types: !5027)
!5027 = !{null, !1731}
!5028 = !DILocalVariable(name: "vrrp", arg: 1, scope: !5025, file: !459, line: 963, type: !1731)
!5029 = !DILocation(line: 963, column: 25, scope: !5025)
!5030 = !DILocalVariable(name: "sync_vrrp", scope: !5025, file: !459, line: 965, type: !1731)
!5031 = !DILocation(line: 965, column: 10, scope: !5025)
!5032 = !DILocalVariable(name: "e", scope: !5025, file: !459, line: 966, type: !1911)
!5033 = !DILocation(line: 966, column: 10, scope: !5025)
!5034 = !DILocation(line: 968, column: 2, scope: !5025)
!5035 = !DILocation(line: 968, column: 8, scope: !5025)
!5036 = !DILocation(line: 968, column: 18, scope: !5025)
!5037 = !DILocation(line: 969, column: 26, scope: !5025)
!5038 = !DILocation(line: 969, column: 2, scope: !5025)
!5039 = !DILocation(line: 970, column: 6, scope: !5040)
!5040 = distinct !DILexicalBlock(scope: !5025, file: !459, line: 970, column: 6)
!5041 = !DILocation(line: 970, column: 12, scope: !5040)
!5042 = !DILocation(line: 970, column: 6, scope: !5025)
!5043 = !DILocation(line: 971, column: 16, scope: !5044)
!5044 = distinct !DILexicalBlock(scope: !5045, file: !459, line: 971, column: 3)
!5045 = distinct !DILexicalBlock(scope: !5040, file: !459, line: 970, column: 18)
!5046 = !DILocation(line: 971, column: 22, scope: !5044)
!5047 = !DILocation(line: 971, column: 28, scope: !5044)
!5048 = !DILocation(line: 971, column: 15, scope: !5044)
!5049 = !DILocation(line: 971, column: 49, scope: !5050)
!5050 = !DILexicalBlockFile(scope: !5044, file: !459, discriminator: 1)
!5051 = !DILocation(line: 971, column: 55, scope: !5050)
!5052 = !DILocation(line: 971, column: 61, scope: !5050)
!5053 = !DILocation(line: 971, column: 48, scope: !5050)
!5054 = !DILocation(line: 971, column: 47, scope: !5050)
!5055 = !DILocation(line: 971, column: 47, scope: !5056)
!5056 = !DILexicalBlockFile(scope: !5044, file: !459, discriminator: 2)
!5057 = !DILocation(line: 971, column: 5, scope: !5058)
!5058 = !DILexicalBlockFile(scope: !5044, file: !459, discriminator: 3)
!5059 = !DILocation(line: 971, column: 11, scope: !5058)
!5060 = !DILocation(line: 971, column: 17, scope: !5058)
!5061 = !DILocation(line: 971, column: 34, scope: !5058)
!5062 = !DILocation(line: 971, column: 47, scope: !5058)
!5063 = !DILocation(line: 971, column: 47, scope: !5064)
!5064 = !DILexicalBlockFile(scope: !5044, file: !459, discriminator: 4)
!5065 = !DILocation(line: 971, column: 15, scope: !5064)
!5066 = !DILocation(line: 971, column: 15, scope: !5067)
!5067 = !DILexicalBlockFile(scope: !5044, file: !459, discriminator: 5)
!5068 = !DILocation(line: 971, column: 15, scope: !5069)
!5069 = !DILexicalBlockFile(scope: !5044, file: !459, discriminator: 6)
!5070 = !DILocation(line: 971, column: 12, scope: !5069)
!5071 = !DILocation(line: 971, column: 8, scope: !5069)
!5072 = !DILocation(line: 971, column: 6, scope: !5073)
!5073 = !DILexicalBlockFile(scope: !5074, file: !459, discriminator: 7)
!5074 = distinct !DILexicalBlock(scope: !5044, file: !459, line: 971, column: 3)
!5075 = !DILocation(line: 971, column: 5, scope: !5073)
!5076 = !DILocation(line: 971, column: 9, scope: !5073)
!5077 = !DILocation(line: 971, column: 29, scope: !5078)
!5078 = !DILexicalBlockFile(scope: !5074, file: !459, discriminator: 8)
!5079 = !DILocation(line: 971, column: 33, scope: !5078)
!5080 = !DILocation(line: 971, column: 27, scope: !5078)
!5081 = !DILocation(line: 971, column: 25, scope: !5078)
!5082 = !DILocation(line: 971, column: 3, scope: !5083)
!5083 = !DILexicalBlockFile(scope: !5044, file: !459, discriminator: 9)
!5084 = !DILocation(line: 972, column: 8, scope: !5085)
!5085 = distinct !DILexicalBlock(scope: !5086, file: !459, line: 972, column: 8)
!5086 = distinct !DILexicalBlock(scope: !5074, file: !459, line: 971, column: 63)
!5087 = !DILocation(line: 972, column: 19, scope: !5085)
!5088 = !DILocation(line: 972, column: 25, scope: !5085)
!5089 = !DILocation(line: 972, column: 8, scope: !5086)
!5090 = !DILocation(line: 973, column: 5, scope: !5091)
!5091 = distinct !DILexicalBlock(scope: !5085, file: !459, line: 972, column: 31)
!5092 = !DILocation(line: 973, column: 16, scope: !5091)
!5093 = !DILocation(line: 973, column: 26, scope: !5091)
!5094 = !DILocation(line: 974, column: 29, scope: !5091)
!5095 = !DILocation(line: 974, column: 5, scope: !5091)
!5096 = !DILocation(line: 977, column: 34, scope: !5091)
!5097 = !DILocation(line: 977, column: 46, scope: !5091)
!5098 = !DILocation(line: 977, column: 54, scope: !5091)
!5099 = !DILocation(line: 977, column: 33, scope: !5091)
!5100 = !DILocation(line: 977, column: 70, scope: !5101)
!5101 = !DILexicalBlockFile(scope: !5091, file: !459, discriminator: 1)
!5102 = !DILocation(line: 977, column: 82, scope: !5101)
!5103 = !DILocation(line: 977, column: 69, scope: !5101)
!5104 = !DILocation(line: 977, column: 68, scope: !5101)
!5105 = !DILocation(line: 977, column: 106, scope: !5101)
!5106 = !DILocation(line: 977, column: 118, scope: !5101)
!5107 = !DILocation(line: 977, column: 135, scope: !5101)
!5108 = !DILocation(line: 977, column: 102, scope: !5101)
!5109 = !DILocation(line: 977, column: 145, scope: !5101)
!5110 = !DILocation(line: 977, column: 153, scope: !5101)
!5111 = !DILocation(line: 977, column: 33, scope: !5101)
!5112 = !DILocation(line: 977, column: 170, scope: !5113)
!5113 = !DILexicalBlockFile(scope: !5091, file: !459, discriminator: 2)
!5114 = !DILocation(line: 977, column: 182, scope: !5113)
!5115 = !DILocation(line: 977, column: 169, scope: !5113)
!5116 = !DILocation(line: 977, column: 168, scope: !5113)
!5117 = !DILocation(line: 977, column: 202, scope: !5113)
!5118 = !DILocation(line: 977, column: 212, scope: !5113)
!5119 = !DILocation(line: 977, column: 33, scope: !5113)
!5120 = !DILocation(line: 977, column: 33, scope: !5121)
!5121 = !DILexicalBlockFile(scope: !5091, file: !459, discriminator: 3)
!5122 = !DILocation(line: 977, column: 5, scope: !5121)
!5123 = !DILocation(line: 977, column: 16, scope: !5121)
!5124 = !DILocation(line: 977, column: 30, scope: !5121)
!5125 = !DILocation(line: 978, column: 30, scope: !5091)
!5126 = !DILocation(line: 978, column: 5, scope: !5091)
!5127 = !DILocation(line: 979, column: 30, scope: !5091)
!5128 = !DILocation(line: 979, column: 5, scope: !5091)
!5129 = !DILocation(line: 980, column: 4, scope: !5091)
!5130 = !DILocation(line: 981, column: 3, scope: !5086)
!5131 = !DILocation(line: 971, column: 52, scope: !5132)
!5132 = !DILexicalBlockFile(scope: !5074, file: !459, discriminator: 10)
!5133 = !DILocation(line: 971, column: 56, scope: !5132)
!5134 = !DILocation(line: 971, column: 49, scope: !5132)
!5135 = !DILocation(line: 971, column: 3, scope: !5132)
!5136 = distinct !{!5136, !5137}
!5137 = !DILocation(line: 971, column: 3, scope: !5045)
!5138 = !DILocation(line: 982, column: 3, scope: !5045)
!5139 = !DILocation(line: 982, column: 9, scope: !5045)
!5140 = !DILocation(line: 982, column: 15, scope: !5045)
!5141 = !DILocation(line: 982, column: 21, scope: !5045)
!5142 = !DILocation(line: 983, column: 2, scope: !5045)
!5143 = !DILocation(line: 986, column: 26, scope: !5025)
!5144 = !DILocation(line: 986, column: 33, scope: !5025)
!5145 = !DILocation(line: 986, column: 41, scope: !5025)
!5146 = !DILocation(line: 986, column: 25, scope: !5025)
!5147 = !DILocation(line: 986, column: 57, scope: !5148)
!5148 = !DILexicalBlockFile(scope: !5025, file: !459, discriminator: 1)
!5149 = !DILocation(line: 986, column: 64, scope: !5148)
!5150 = !DILocation(line: 986, column: 56, scope: !5148)
!5151 = !DILocation(line: 986, column: 55, scope: !5148)
!5152 = !DILocation(line: 986, column: 88, scope: !5148)
!5153 = !DILocation(line: 986, column: 95, scope: !5148)
!5154 = !DILocation(line: 986, column: 112, scope: !5148)
!5155 = !DILocation(line: 986, column: 84, scope: !5148)
!5156 = !DILocation(line: 986, column: 122, scope: !5148)
!5157 = !DILocation(line: 986, column: 130, scope: !5148)
!5158 = !DILocation(line: 986, column: 25, scope: !5148)
!5159 = !DILocation(line: 986, column: 147, scope: !5160)
!5160 = !DILexicalBlockFile(scope: !5025, file: !459, discriminator: 2)
!5161 = !DILocation(line: 986, column: 154, scope: !5160)
!5162 = !DILocation(line: 986, column: 146, scope: !5160)
!5163 = !DILocation(line: 986, column: 145, scope: !5160)
!5164 = !DILocation(line: 986, column: 174, scope: !5160)
!5165 = !DILocation(line: 986, column: 184, scope: !5160)
!5166 = !DILocation(line: 986, column: 25, scope: !5160)
!5167 = !DILocation(line: 986, column: 25, scope: !5168)
!5168 = !DILexicalBlockFile(scope: !5025, file: !459, discriminator: 3)
!5169 = !DILocation(line: 986, column: 2, scope: !5168)
!5170 = !DILocation(line: 986, column: 8, scope: !5168)
!5171 = !DILocation(line: 986, column: 22, scope: !5168)
!5172 = !DILocation(line: 987, column: 27, scope: !5025)
!5173 = !DILocation(line: 987, column: 2, scope: !5025)
!5174 = !DILocation(line: 988, column: 27, scope: !5025)
!5175 = !DILocation(line: 988, column: 2, scope: !5025)
!5176 = !DILocation(line: 989, column: 1, scope: !5025)
!5177 = distinct !DISubprogram(name: "addr_is_equal", scope: !459, file: !459, line: 132, type: !5178, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!5178 = !DISubroutineType(types: !5179)
!5179 = !{!609, !3413, !388, !3431, !1679}
!5180 = !DILocalVariable(name: "ifa", arg: 1, scope: !5177, file: !459, line: 132, type: !3413)
!5181 = !DILocation(line: 132, column: 33, scope: !5177)
!5182 = !DILocalVariable(name: "addr", arg: 2, scope: !5177, file: !459, line: 132, type: !388)
!5183 = !DILocation(line: 132, column: 44, scope: !5177)
!5184 = !DILocalVariable(name: "vip_addr", arg: 3, scope: !5177, file: !459, line: 132, type: !3431)
!5185 = !DILocation(line: 132, column: 64, scope: !5177)
!5186 = !DILocalVariable(name: "ifp", arg: 4, scope: !5177, file: !459, line: 132, type: !1679)
!5187 = !DILocation(line: 132, column: 87, scope: !5177)
!5188 = !DILocalVariable(name: "sin_addr", scope: !5177, file: !459, line: 134, type: !447)
!5189 = !DILocation(line: 134, column: 18, scope: !5177)
!5190 = !DILocalVariable(name: "sin6_addr", scope: !5177, file: !459, line: 135, type: !425)
!5191 = !DILocation(line: 135, column: 19, scope: !5177)
!5192 = !DILocation(line: 137, column: 6, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !5177, file: !459, line: 137, column: 6)
!5194 = !DILocation(line: 137, column: 16, scope: !5193)
!5195 = !DILocation(line: 137, column: 20, scope: !5193)
!5196 = !DILocation(line: 137, column: 34, scope: !5193)
!5197 = !DILocation(line: 137, column: 39, scope: !5193)
!5198 = !DILocation(line: 137, column: 31, scope: !5193)
!5199 = !DILocation(line: 137, column: 6, scope: !5177)
!5200 = !DILocation(line: 138, column: 3, scope: !5193)
!5201 = !DILocation(line: 139, column: 6, scope: !5202)
!5202 = distinct !DILexicalBlock(scope: !5177, file: !459, line: 139, column: 6)
!5203 = !DILocation(line: 139, column: 16, scope: !5202)
!5204 = !DILocation(line: 139, column: 23, scope: !5202)
!5205 = !DILocation(line: 139, column: 20, scope: !5202)
!5206 = !DILocation(line: 139, column: 6, scope: !5177)
!5207 = !DILocation(line: 140, column: 3, scope: !5202)
!5208 = !DILocation(line: 141, column: 6, scope: !5209)
!5209 = distinct !DILexicalBlock(scope: !5177, file: !459, line: 141, column: 6)
!5210 = !DILocation(line: 141, column: 16, scope: !5209)
!5211 = !DILocation(line: 141, column: 20, scope: !5209)
!5212 = !DILocation(line: 141, column: 31, scope: !5209)
!5213 = !DILocation(line: 141, column: 6, scope: !5177)
!5214 = !DILocation(line: 142, column: 32, scope: !5215)
!5215 = distinct !DILexicalBlock(scope: !5209, file: !459, line: 141, column: 42)
!5216 = !DILocation(line: 142, column: 14, scope: !5215)
!5217 = !DILocation(line: 142, column: 12, scope: !5215)
!5218 = !DILocation(line: 143, column: 10, scope: !5215)
!5219 = !DILocation(line: 143, column: 20, scope: !5215)
!5220 = !DILocation(line: 143, column: 22, scope: !5215)
!5221 = !DILocation(line: 143, column: 26, scope: !5215)
!5222 = !DILocation(line: 143, column: 35, scope: !5215)
!5223 = !DILocation(line: 143, column: 45, scope: !5215)
!5224 = !DILocation(line: 143, column: 55, scope: !5215)
!5225 = !DILocation(line: 143, column: 42, scope: !5215)
!5226 = !DILocation(line: 143, column: 3, scope: !5215)
!5227 = !DILocation(line: 146, column: 32, scope: !5177)
!5228 = !DILocation(line: 146, column: 14, scope: !5177)
!5229 = !DILocation(line: 146, column: 12, scope: !5177)
!5230 = !DILocation(line: 147, column: 9, scope: !5177)
!5231 = !DILocation(line: 147, column: 19, scope: !5177)
!5232 = !DILocation(line: 147, column: 21, scope: !5177)
!5233 = !DILocation(line: 147, column: 30, scope: !5177)
!5234 = !DILocation(line: 147, column: 38, scope: !5177)
!5235 = !DILocation(line: 147, column: 46, scope: !5177)
!5236 = !DILocation(line: 147, column: 57, scope: !5177)
!5237 = !DILocation(line: 147, column: 65, scope: !5177)
!5238 = !DILocation(line: 147, column: 43, scope: !5177)
!5239 = !DILocation(line: 147, column: 70, scope: !5177)
!5240 = !DILocation(line: 148, column: 9, scope: !5177)
!5241 = !DILocation(line: 148, column: 19, scope: !5177)
!5242 = !DILocation(line: 148, column: 21, scope: !5177)
!5243 = !DILocation(line: 148, column: 30, scope: !5177)
!5244 = !DILocation(line: 148, column: 38, scope: !5177)
!5245 = !DILocation(line: 148, column: 46, scope: !5177)
!5246 = !DILocation(line: 148, column: 57, scope: !5177)
!5247 = !DILocation(line: 148, column: 65, scope: !5177)
!5248 = !DILocation(line: 148, column: 43, scope: !5177)
!5249 = !DILocation(line: 148, column: 70, scope: !5177)
!5250 = !DILocation(line: 149, column: 9, scope: !5177)
!5251 = !DILocation(line: 149, column: 19, scope: !5177)
!5252 = !DILocation(line: 149, column: 21, scope: !5177)
!5253 = !DILocation(line: 149, column: 30, scope: !5177)
!5254 = !DILocation(line: 149, column: 38, scope: !5177)
!5255 = !DILocation(line: 149, column: 46, scope: !5177)
!5256 = !DILocation(line: 149, column: 57, scope: !5177)
!5257 = !DILocation(line: 149, column: 65, scope: !5177)
!5258 = !DILocation(line: 149, column: 43, scope: !5177)
!5259 = !DILocation(line: 149, column: 70, scope: !5177)
!5260 = !DILocation(line: 150, column: 9, scope: !5177)
!5261 = !DILocation(line: 150, column: 19, scope: !5177)
!5262 = !DILocation(line: 150, column: 21, scope: !5177)
!5263 = !DILocation(line: 150, column: 30, scope: !5177)
!5264 = !DILocation(line: 150, column: 38, scope: !5177)
!5265 = !DILocation(line: 150, column: 46, scope: !5177)
!5266 = !DILocation(line: 150, column: 57, scope: !5177)
!5267 = !DILocation(line: 150, column: 65, scope: !5177)
!5268 = !DILocation(line: 150, column: 43, scope: !5177)
!5269 = !DILocation(line: 147, column: 2, scope: !5270)
!5270 = !DILexicalBlockFile(scope: !5177, file: !459, discriminator: 1)
!5271 = !DILocation(line: 151, column: 1, scope: !5177)
!5272 = distinct !DISubprogram(name: "__ip6_addr_equal", scope: !4761, file: !4761, line: 60, type: !5273, isLocal: true, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!5273 = !DISubroutineType(types: !5274)
!5274 = !{!407, !5275, !5275}
!5275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5276, size: 64, align: 64)
!5276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!5277 = !DILocalVariable(name: "a1", arg: 1, scope: !5272, file: !4761, line: 60, type: !5275)
!5278 = !DILocation(line: 60, column: 59, scope: !5272)
!5279 = !DILocalVariable(name: "a2", arg: 2, scope: !5272, file: !4761, line: 61, type: !5275)
!5280 = !DILocation(line: 61, column: 31, scope: !5272)
!5281 = !DILocation(line: 63, column: 12, scope: !5272)
!5282 = !DILocation(line: 63, column: 15, scope: !5272)
!5283 = !DILocation(line: 63, column: 23, scope: !5272)
!5284 = !DILocation(line: 63, column: 30, scope: !5272)
!5285 = !DILocation(line: 63, column: 34, scope: !5272)
!5286 = !DILocation(line: 63, column: 42, scope: !5272)
!5287 = !DILocation(line: 63, column: 28, scope: !5272)
!5288 = !DILocation(line: 64, column: 5, scope: !5272)
!5289 = !DILocation(line: 64, column: 8, scope: !5272)
!5290 = !DILocation(line: 64, column: 16, scope: !5272)
!5291 = !DILocation(line: 64, column: 23, scope: !5272)
!5292 = !DILocation(line: 64, column: 27, scope: !5272)
!5293 = !DILocation(line: 64, column: 35, scope: !5272)
!5294 = !DILocation(line: 64, column: 21, scope: !5272)
!5295 = !DILocation(line: 63, column: 48, scope: !5272)
!5296 = !DILocation(line: 65, column: 5, scope: !5272)
!5297 = !DILocation(line: 65, column: 8, scope: !5272)
!5298 = !DILocation(line: 65, column: 16, scope: !5272)
!5299 = !DILocation(line: 65, column: 23, scope: !5272)
!5300 = !DILocation(line: 65, column: 27, scope: !5272)
!5301 = !DILocation(line: 65, column: 35, scope: !5272)
!5302 = !DILocation(line: 65, column: 21, scope: !5272)
!5303 = !DILocation(line: 64, column: 41, scope: !5272)
!5304 = !DILocation(line: 66, column: 5, scope: !5272)
!5305 = !DILocation(line: 66, column: 8, scope: !5272)
!5306 = !DILocation(line: 66, column: 16, scope: !5272)
!5307 = !DILocation(line: 66, column: 23, scope: !5272)
!5308 = !DILocation(line: 66, column: 27, scope: !5272)
!5309 = !DILocation(line: 66, column: 35, scope: !5272)
!5310 = !DILocation(line: 66, column: 21, scope: !5272)
!5311 = !DILocation(line: 65, column: 41, scope: !5272)
!5312 = !DILocation(line: 66, column: 42, scope: !5272)
!5313 = !DILocation(line: 63, column: 2, scope: !5272)
!5314 = distinct !DISubprogram(name: "route_is_ours", scope: !459, file: !459, line: 204, type: !5315, isLocal: true, isDefinition: true, scopeLine: 205, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!5315 = !DISubroutineType(types: !5316)
!5316 = !{!4402, !4379, !2675, !5317}
!5317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64, align: 64)
!5318 = !DILocalVariable(name: "rt", arg: 1, scope: !5314, file: !459, line: 204, type: !4379)
!5319 = !DILocation(line: 204, column: 29, scope: !5314)
!5320 = !DILocalVariable(name: "tb", arg: 2, scope: !5314, file: !459, line: 204, type: !2675)
!5321 = !DILocation(line: 204, column: 48, scope: !5314)
!5322 = !DILocalVariable(name: "ret_vrrp", arg: 3, scope: !5314, file: !459, line: 204, type: !5317)
!5323 = !DILocation(line: 204, column: 73, scope: !5314)
!5324 = !DILocalVariable(name: "table", scope: !5314, file: !459, line: 206, type: !389)
!5325 = !DILocation(line: 206, column: 11, scope: !5314)
!5326 = !DILocalVariable(name: "family", scope: !5314, file: !459, line: 207, type: !407)
!5327 = !DILocation(line: 207, column: 6, scope: !5314)
!5328 = !DILocalVariable(name: "mask_len", scope: !5314, file: !459, line: 208, type: !407)
!5329 = !DILocation(line: 208, column: 6, scope: !5314)
!5330 = !DILocation(line: 208, column: 17, scope: !5314)
!5331 = !DILocation(line: 208, column: 21, scope: !5314)
!5332 = !DILocalVariable(name: "priority", scope: !5314, file: !459, line: 209, type: !389)
!5333 = !DILocation(line: 209, column: 11, scope: !5314)
!5334 = !DILocalVariable(name: "tos", scope: !5314, file: !459, line: 210, type: !434)
!5335 = !DILocation(line: 210, column: 10, scope: !5314)
!5336 = !DILocation(line: 210, column: 16, scope: !5314)
!5337 = !DILocation(line: 210, column: 20, scope: !5314)
!5338 = !DILocalVariable(name: "e", scope: !5314, file: !459, line: 211, type: !1911)
!5339 = !DILocation(line: 211, column: 10, scope: !5314)
!5340 = !DILocalVariable(name: "e1", scope: !5314, file: !459, line: 211, type: !1911)
!5341 = !DILocation(line: 211, column: 13, scope: !5314)
!5342 = !DILocalVariable(name: "vrrp", scope: !5314, file: !459, line: 212, type: !1731)
!5343 = !DILocation(line: 212, column: 10, scope: !5314)
!5344 = !DILocalVariable(name: "route", scope: !5314, file: !459, line: 213, type: !4402)
!5345 = !DILocation(line: 213, column: 14, scope: !5314)
!5346 = !DILocation(line: 215, column: 3, scope: !5314)
!5347 = !DILocation(line: 215, column: 12, scope: !5314)
!5348 = !DILocation(line: 217, column: 10, scope: !5314)
!5349 = !DILocation(line: 217, column: 38, scope: !5350)
!5350 = !DILexicalBlockFile(scope: !5314, file: !459, discriminator: 1)
!5351 = !DILocation(line: 217, column: 48, scope: !5350)
!5352 = !DILocation(line: 217, column: 41, scope: !5350)
!5353 = !DILocation(line: 217, column: 27, scope: !5350)
!5354 = !DILocation(line: 217, column: 26, scope: !5350)
!5355 = !DILocation(line: 217, column: 10, scope: !5350)
!5356 = !DILocation(line: 217, column: 64, scope: !5357)
!5357 = !DILexicalBlockFile(scope: !5314, file: !459, discriminator: 2)
!5358 = !DILocation(line: 217, column: 68, scope: !5357)
!5359 = !DILocation(line: 217, column: 10, scope: !5357)
!5360 = !DILocation(line: 217, column: 10, scope: !5361)
!5361 = !DILexicalBlockFile(scope: !5314, file: !459, discriminator: 3)
!5362 = !DILocation(line: 217, column: 8, scope: !5361)
!5363 = !DILocation(line: 218, column: 11, scope: !5314)
!5364 = !DILocation(line: 218, column: 15, scope: !5314)
!5365 = !DILocation(line: 218, column: 9, scope: !5314)
!5366 = !DILocation(line: 219, column: 6, scope: !5367)
!5367 = distinct !DILexicalBlock(scope: !5314, file: !459, line: 219, column: 6)
!5368 = !DILocation(line: 219, column: 6, scope: !5314)
!5369 = !DILocation(line: 220, column: 26, scope: !5367)
!5370 = !DILocation(line: 220, column: 36, scope: !5367)
!5371 = !DILocation(line: 220, column: 29, scope: !5367)
!5372 = !DILocation(line: 220, column: 15, scope: !5367)
!5373 = !DILocation(line: 220, column: 14, scope: !5367)
!5374 = !DILocation(line: 220, column: 12, scope: !5367)
!5375 = !DILocation(line: 220, column: 3, scope: !5367)
!5376 = !DILocation(line: 222, column: 15, scope: !5377)
!5377 = distinct !DILexicalBlock(scope: !5314, file: !459, line: 222, column: 2)
!5378 = !DILocation(line: 222, column: 26, scope: !5377)
!5379 = !DILocation(line: 222, column: 14, scope: !5377)
!5380 = !DILocation(line: 222, column: 37, scope: !5381)
!5381 = !DILexicalBlockFile(scope: !5377, file: !459, discriminator: 1)
!5382 = !DILocation(line: 222, column: 48, scope: !5381)
!5383 = !DILocation(line: 222, column: 36, scope: !5381)
!5384 = !DILocation(line: 222, column: 35, scope: !5381)
!5385 = !DILocation(line: 222, column: 35, scope: !5386)
!5386 = !DILexicalBlockFile(scope: !5377, file: !459, discriminator: 2)
!5387 = !DILocation(line: 222, column: 4, scope: !5388)
!5388 = !DILexicalBlockFile(scope: !5377, file: !459, discriminator: 3)
!5389 = !DILocation(line: 222, column: 15, scope: !5388)
!5390 = !DILocation(line: 222, column: 22, scope: !5388)
!5391 = !DILocation(line: 222, column: 35, scope: !5388)
!5392 = !DILocation(line: 222, column: 35, scope: !5393)
!5393 = !DILexicalBlockFile(scope: !5377, file: !459, discriminator: 4)
!5394 = !DILocation(line: 222, column: 14, scope: !5393)
!5395 = !DILocation(line: 222, column: 14, scope: !5396)
!5396 = !DILexicalBlockFile(scope: !5377, file: !459, discriminator: 5)
!5397 = !DILocation(line: 222, column: 14, scope: !5398)
!5398 = !DILexicalBlockFile(scope: !5377, file: !459, discriminator: 6)
!5399 = !DILocation(line: 222, column: 11, scope: !5398)
!5400 = !DILocation(line: 222, column: 7, scope: !5398)
!5401 = !DILocation(line: 222, column: 5, scope: !5402)
!5402 = !DILexicalBlockFile(scope: !5403, file: !459, discriminator: 7)
!5403 = distinct !DILexicalBlock(scope: !5377, file: !459, line: 222, column: 2)
!5404 = !DILocation(line: 222, column: 4, scope: !5402)
!5405 = !DILocation(line: 222, column: 8, scope: !5402)
!5406 = !DILocation(line: 222, column: 23, scope: !5407)
!5407 = !DILexicalBlockFile(scope: !5403, file: !459, discriminator: 8)
!5408 = !DILocation(line: 222, column: 27, scope: !5407)
!5409 = !DILocation(line: 222, column: 21, scope: !5407)
!5410 = !DILocation(line: 222, column: 19, scope: !5407)
!5411 = !DILocation(line: 222, column: 2, scope: !5412)
!5412 = !DILexicalBlockFile(scope: !5377, file: !459, discriminator: 9)
!5413 = !DILocation(line: 223, column: 17, scope: !5414)
!5414 = distinct !DILexicalBlock(scope: !5415, file: !459, line: 223, column: 3)
!5415 = distinct !DILexicalBlock(scope: !5403, file: !459, line: 222, column: 57)
!5416 = !DILocation(line: 223, column: 23, scope: !5414)
!5417 = !DILocation(line: 223, column: 16, scope: !5414)
!5418 = !DILocation(line: 223, column: 37, scope: !5419)
!5419 = !DILexicalBlockFile(scope: !5414, file: !459, discriminator: 1)
!5420 = !DILocation(line: 223, column: 43, scope: !5419)
!5421 = !DILocation(line: 223, column: 36, scope: !5419)
!5422 = !DILocation(line: 223, column: 35, scope: !5419)
!5423 = !DILocation(line: 223, column: 35, scope: !5424)
!5424 = !DILexicalBlockFile(scope: !5414, file: !459, discriminator: 2)
!5425 = !DILocation(line: 223, column: 5, scope: !5426)
!5426 = !DILexicalBlockFile(scope: !5414, file: !459, discriminator: 3)
!5427 = !DILocation(line: 223, column: 11, scope: !5426)
!5428 = !DILocation(line: 223, column: 21, scope: !5426)
!5429 = !DILocation(line: 223, column: 35, scope: !5426)
!5430 = !DILocation(line: 223, column: 35, scope: !5431)
!5431 = !DILexicalBlockFile(scope: !5414, file: !459, discriminator: 4)
!5432 = !DILocation(line: 223, column: 16, scope: !5431)
!5433 = !DILocation(line: 223, column: 16, scope: !5434)
!5434 = !DILexicalBlockFile(scope: !5414, file: !459, discriminator: 5)
!5435 = !DILocation(line: 223, column: 16, scope: !5436)
!5436 = !DILexicalBlockFile(scope: !5414, file: !459, discriminator: 6)
!5437 = !DILocation(line: 223, column: 13, scope: !5436)
!5438 = !DILocation(line: 223, column: 8, scope: !5436)
!5439 = !DILocation(line: 223, column: 6, scope: !5440)
!5440 = !DILexicalBlockFile(scope: !5441, file: !459, discriminator: 7)
!5441 = distinct !DILexicalBlock(scope: !5414, file: !459, line: 223, column: 3)
!5442 = !DILocation(line: 223, column: 5, scope: !5440)
!5443 = !DILocation(line: 223, column: 10, scope: !5440)
!5444 = !DILocation(line: 223, column: 26, scope: !5445)
!5445 = !DILexicalBlockFile(scope: !5441, file: !459, discriminator: 8)
!5446 = !DILocation(line: 223, column: 31, scope: !5445)
!5447 = !DILocation(line: 223, column: 24, scope: !5445)
!5448 = !DILocation(line: 223, column: 22, scope: !5445)
!5449 = !DILocation(line: 223, column: 3, scope: !5450)
!5450 = !DILexicalBlockFile(scope: !5414, file: !459, discriminator: 9)
!5451 = !DILocation(line: 224, column: 8, scope: !5452)
!5452 = distinct !DILexicalBlock(scope: !5453, file: !459, line: 224, column: 8)
!5453 = distinct !DILexicalBlock(scope: !5441, file: !459, line: 223, column: 63)
!5454 = !DILocation(line: 224, column: 17, scope: !5452)
!5455 = !DILocation(line: 224, column: 24, scope: !5452)
!5456 = !DILocation(line: 224, column: 14, scope: !5452)
!5457 = !DILocation(line: 224, column: 30, scope: !5452)
!5458 = !DILocation(line: 225, column: 8, scope: !5452)
!5459 = !DILocation(line: 225, column: 18, scope: !5452)
!5460 = !DILocation(line: 225, column: 25, scope: !5452)
!5461 = !DILocation(line: 225, column: 15, scope: !5452)
!5462 = !DILocation(line: 225, column: 32, scope: !5452)
!5463 = !DILocation(line: 226, column: 8, scope: !5452)
!5464 = !DILocation(line: 226, column: 20, scope: !5452)
!5465 = !DILocation(line: 226, column: 27, scope: !5452)
!5466 = !DILocation(line: 226, column: 32, scope: !5452)
!5467 = !DILocation(line: 226, column: 36, scope: !5452)
!5468 = !DILocation(line: 226, column: 17, scope: !5452)
!5469 = !DILocation(line: 226, column: 50, scope: !5452)
!5470 = !DILocation(line: 227, column: 8, scope: !5452)
!5471 = !DILocation(line: 227, column: 20, scope: !5452)
!5472 = !DILocation(line: 227, column: 27, scope: !5452)
!5473 = !DILocation(line: 227, column: 17, scope: !5452)
!5474 = !DILocation(line: 227, column: 34, scope: !5452)
!5475 = !DILocation(line: 228, column: 8, scope: !5452)
!5476 = !DILocation(line: 228, column: 15, scope: !5452)
!5477 = !DILocation(line: 228, column: 22, scope: !5452)
!5478 = !DILocation(line: 228, column: 12, scope: !5452)
!5479 = !DILocation(line: 224, column: 8, scope: !5480)
!5480 = !DILexicalBlockFile(scope: !5453, file: !459, discriminator: 1)
!5481 = !DILocation(line: 229, column: 5, scope: !5452)
!5482 = !DILocation(line: 231, column: 8, scope: !5483)
!5483 = distinct !DILexicalBlock(scope: !5453, file: !459, line: 231, column: 8)
!5484 = !DILocation(line: 231, column: 15, scope: !5483)
!5485 = !DILocation(line: 231, column: 8, scope: !5453)
!5486 = !DILocation(line: 232, column: 9, scope: !5487)
!5487 = distinct !DILexicalBlock(scope: !5488, file: !459, line: 232, column: 9)
!5488 = distinct !DILexicalBlock(scope: !5483, file: !459, line: 231, column: 20)
!5489 = !DILocation(line: 232, column: 16, scope: !5487)
!5490 = !DILocation(line: 232, column: 21, scope: !5487)
!5491 = !DILocation(line: 232, column: 44, scope: !5487)
!5492 = !DILocation(line: 232, column: 54, scope: !5487)
!5493 = !DILocation(line: 232, column: 47, scope: !5487)
!5494 = !DILocation(line: 232, column: 33, scope: !5487)
!5495 = !DILocation(line: 232, column: 32, scope: !5487)
!5496 = !DILocation(line: 232, column: 29, scope: !5487)
!5497 = !DILocation(line: 232, column: 9, scope: !5488)
!5498 = !DILocation(line: 233, column: 6, scope: !5487)
!5499 = !DILocation(line: 234, column: 4, scope: !5488)
!5500 = !DILocation(line: 235, column: 9, scope: !5501)
!5501 = distinct !DILexicalBlock(scope: !5502, file: !459, line: 235, column: 9)
!5502 = distinct !DILexicalBlock(scope: !5483, file: !459, line: 234, column: 11)
!5503 = !DILocation(line: 235, column: 16, scope: !5501)
!5504 = !DILocation(line: 235, column: 20, scope: !5501)
!5505 = !DILocation(line: 235, column: 23, scope: !5506)
!5506 = !DILexicalBlockFile(scope: !5501, file: !459, discriminator: 1)
!5507 = !DILocation(line: 235, column: 30, scope: !5506)
!5508 = !DILocation(line: 235, column: 49, scope: !5506)
!5509 = !DILocation(line: 235, column: 52, scope: !5510)
!5510 = !DILexicalBlockFile(scope: !5501, file: !459, discriminator: 2)
!5511 = !DILocation(line: 235, column: 59, scope: !5510)
!5512 = !DILocation(line: 235, column: 93, scope: !5510)
!5513 = !DILocation(line: 235, column: 103, scope: !5510)
!5514 = !DILocation(line: 235, column: 96, scope: !5510)
!5515 = !DILocation(line: 235, column: 82, scope: !5510)
!5516 = !DILocation(line: 235, column: 81, scope: !5510)
!5517 = !DILocation(line: 235, column: 78, scope: !5510)
!5518 = !DILocation(line: 235, column: 9, scope: !5510)
!5519 = !DILocation(line: 236, column: 6, scope: !5501)
!5520 = !DILocation(line: 239, column: 21, scope: !5521)
!5521 = distinct !DILexicalBlock(scope: !5453, file: !459, line: 239, column: 8)
!5522 = !DILocation(line: 239, column: 28, scope: !5521)
!5523 = !DILocation(line: 239, column: 38, scope: !5521)
!5524 = !DILocation(line: 239, column: 31, scope: !5521)
!5525 = !DILocation(line: 239, column: 51, scope: !5521)
!5526 = !DILocation(line: 239, column: 58, scope: !5521)
!5527 = !DILocation(line: 239, column: 8, scope: !5521)
!5528 = !DILocation(line: 239, column: 8, scope: !5453)
!5529 = !DILocation(line: 240, column: 5, scope: !5521)
!5530 = !DILocation(line: 242, column: 16, scope: !5453)
!5531 = !DILocation(line: 242, column: 5, scope: !5453)
!5532 = !DILocation(line: 242, column: 14, scope: !5453)
!5533 = !DILocation(line: 243, column: 11, scope: !5453)
!5534 = !DILocation(line: 243, column: 4, scope: !5453)
!5535 = !DILocation(line: 223, column: 51, scope: !5536)
!5536 = !DILexicalBlockFile(scope: !5441, file: !459, discriminator: 10)
!5537 = !DILocation(line: 223, column: 56, scope: !5536)
!5538 = !DILocation(line: 223, column: 48, scope: !5536)
!5539 = !DILocation(line: 223, column: 3, scope: !5536)
!5540 = distinct !{!5540, !5541}
!5541 = !DILocation(line: 223, column: 3, scope: !5415)
!5542 = !DILocation(line: 245, column: 2, scope: !5415)
!5543 = !DILocation(line: 222, column: 46, scope: !5544)
!5544 = !DILexicalBlockFile(scope: !5403, file: !459, discriminator: 10)
!5545 = !DILocation(line: 222, column: 50, scope: !5544)
!5546 = !DILocation(line: 222, column: 43, scope: !5544)
!5547 = !DILocation(line: 222, column: 2, scope: !5544)
!5548 = distinct !{!5548, !5549}
!5549 = !DILocation(line: 222, column: 2, scope: !5314)
!5550 = !DILocation(line: 248, column: 15, scope: !5551)
!5551 = distinct !DILexicalBlock(scope: !5314, file: !459, line: 248, column: 2)
!5552 = !DILocation(line: 248, column: 26, scope: !5551)
!5553 = !DILocation(line: 248, column: 14, scope: !5551)
!5554 = !DILocation(line: 248, column: 46, scope: !5555)
!5555 = !DILexicalBlockFile(scope: !5551, file: !459, discriminator: 1)
!5556 = !DILocation(line: 248, column: 57, scope: !5555)
!5557 = !DILocation(line: 248, column: 45, scope: !5555)
!5558 = !DILocation(line: 248, column: 44, scope: !5555)
!5559 = !DILocation(line: 248, column: 44, scope: !5560)
!5560 = !DILexicalBlockFile(scope: !5551, file: !459, discriminator: 2)
!5561 = !DILocation(line: 248, column: 4, scope: !5562)
!5562 = !DILexicalBlockFile(scope: !5551, file: !459, discriminator: 3)
!5563 = !DILocation(line: 248, column: 15, scope: !5562)
!5564 = !DILocation(line: 248, column: 31, scope: !5562)
!5565 = !DILocation(line: 248, column: 44, scope: !5562)
!5566 = !DILocation(line: 248, column: 44, scope: !5567)
!5567 = !DILexicalBlockFile(scope: !5551, file: !459, discriminator: 4)
!5568 = !DILocation(line: 248, column: 14, scope: !5567)
!5569 = !DILocation(line: 248, column: 14, scope: !5570)
!5570 = !DILexicalBlockFile(scope: !5551, file: !459, discriminator: 5)
!5571 = !DILocation(line: 248, column: 14, scope: !5572)
!5572 = !DILexicalBlockFile(scope: !5551, file: !459, discriminator: 6)
!5573 = !DILocation(line: 248, column: 11, scope: !5572)
!5574 = !DILocation(line: 248, column: 7, scope: !5572)
!5575 = !DILocation(line: 248, column: 5, scope: !5576)
!5576 = !DILexicalBlockFile(scope: !5577, file: !459, discriminator: 7)
!5577 = distinct !DILexicalBlock(scope: !5551, file: !459, line: 248, column: 2)
!5578 = !DILocation(line: 248, column: 4, scope: !5576)
!5579 = !DILocation(line: 248, column: 8, scope: !5576)
!5580 = !DILocation(line: 248, column: 24, scope: !5581)
!5581 = !DILexicalBlockFile(scope: !5577, file: !459, discriminator: 8)
!5582 = !DILocation(line: 248, column: 28, scope: !5581)
!5583 = !DILocation(line: 248, column: 22, scope: !5581)
!5584 = !DILocation(line: 248, column: 20, scope: !5581)
!5585 = !DILocation(line: 248, column: 2, scope: !5586)
!5586 = !DILexicalBlockFile(scope: !5551, file: !459, discriminator: 9)
!5587 = !DILocation(line: 249, column: 7, scope: !5588)
!5588 = distinct !DILexicalBlock(scope: !5589, file: !459, line: 249, column: 7)
!5589 = distinct !DILexicalBlock(scope: !5577, file: !459, line: 248, column: 58)
!5590 = !DILocation(line: 249, column: 16, scope: !5588)
!5591 = !DILocation(line: 249, column: 23, scope: !5588)
!5592 = !DILocation(line: 249, column: 13, scope: !5588)
!5593 = !DILocation(line: 249, column: 29, scope: !5588)
!5594 = !DILocation(line: 250, column: 7, scope: !5588)
!5595 = !DILocation(line: 250, column: 17, scope: !5588)
!5596 = !DILocation(line: 250, column: 24, scope: !5588)
!5597 = !DILocation(line: 250, column: 14, scope: !5588)
!5598 = !DILocation(line: 250, column: 31, scope: !5588)
!5599 = !DILocation(line: 251, column: 7, scope: !5588)
!5600 = !DILocation(line: 251, column: 19, scope: !5588)
!5601 = !DILocation(line: 251, column: 26, scope: !5588)
!5602 = !DILocation(line: 251, column: 31, scope: !5588)
!5603 = !DILocation(line: 251, column: 35, scope: !5588)
!5604 = !DILocation(line: 251, column: 16, scope: !5588)
!5605 = !DILocation(line: 251, column: 49, scope: !5588)
!5606 = !DILocation(line: 252, column: 7, scope: !5588)
!5607 = !DILocation(line: 252, column: 14, scope: !5588)
!5608 = !DILocation(line: 252, column: 21, scope: !5588)
!5609 = !DILocation(line: 252, column: 11, scope: !5588)
!5610 = !DILocation(line: 249, column: 7, scope: !5611)
!5611 = !DILexicalBlockFile(scope: !5589, file: !459, discriminator: 1)
!5612 = !DILocation(line: 253, column: 4, scope: !5588)
!5613 = !DILocation(line: 255, column: 20, scope: !5614)
!5614 = distinct !DILexicalBlock(scope: !5589, file: !459, line: 255, column: 7)
!5615 = !DILocation(line: 255, column: 27, scope: !5614)
!5616 = !DILocation(line: 255, column: 37, scope: !5614)
!5617 = !DILocation(line: 255, column: 30, scope: !5614)
!5618 = !DILocation(line: 255, column: 50, scope: !5614)
!5619 = !DILocation(line: 255, column: 57, scope: !5614)
!5620 = !DILocation(line: 255, column: 7, scope: !5614)
!5621 = !DILocation(line: 255, column: 7, scope: !5589)
!5622 = !DILocation(line: 256, column: 4, scope: !5614)
!5623 = !DILocation(line: 258, column: 10, scope: !5589)
!5624 = !DILocation(line: 258, column: 3, scope: !5589)
!5625 = !DILocation(line: 248, column: 47, scope: !5626)
!5626 = !DILexicalBlockFile(scope: !5577, file: !459, discriminator: 10)
!5627 = !DILocation(line: 248, column: 51, scope: !5626)
!5628 = !DILocation(line: 248, column: 44, scope: !5626)
!5629 = !DILocation(line: 248, column: 2, scope: !5626)
!5630 = distinct !{!5630, !5631}
!5631 = !DILocation(line: 248, column: 2, scope: !5314)
!5632 = !DILocation(line: 261, column: 2, scope: !5314)
!5633 = !DILocation(line: 262, column: 1, scope: !5314)
!5634 = distinct !DISubprogram(name: "compare_addr", scope: !459, file: !459, line: 187, type: !5635, isLocal: true, isDefinition: true, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!5635 = !DISubroutineType(types: !5636)
!5636 = !{!609, !407, !388, !3431}
!5637 = !DILocalVariable(name: "family", arg: 1, scope: !5634, file: !459, line: 187, type: !407)
!5638 = !DILocation(line: 187, column: 18, scope: !5634)
!5639 = !DILocalVariable(name: "addr1", arg: 2, scope: !5634, file: !459, line: 187, type: !388)
!5640 = !DILocation(line: 187, column: 32, scope: !5634)
!5641 = !DILocalVariable(name: "addr2", arg: 3, scope: !5634, file: !459, line: 187, type: !3431)
!5642 = !DILocation(line: 187, column: 53, scope: !5634)
!5643 = !DILocalVariable(name: "addr1_p", scope: !5634, file: !459, line: 192, type: !5644)
!5644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5634, file: !459, line: 189, size: 64, align: 64, elements: !5645)
!5645 = !{!5646, !5647}
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !5644, file: !459, line: 190, baseType: !447, size: 64, align: 64)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "in6", scope: !5644, file: !459, line: 191, baseType: !425, size: 64, align: 64)
!5648 = !DILocation(line: 192, column: 4, scope: !5634)
!5649 = !DILocation(line: 192, column: 14, scope: !5634)
!5650 = !DILocation(line: 192, column: 22, scope: !5634)
!5651 = !DILocation(line: 194, column: 6, scope: !5652)
!5652 = distinct !DILexicalBlock(scope: !5634, file: !459, line: 194, column: 6)
!5653 = !DILocation(line: 194, column: 13, scope: !5652)
!5654 = !DILocation(line: 194, column: 6, scope: !5634)
!5655 = !DILocation(line: 195, column: 18, scope: !5652)
!5656 = !DILocation(line: 195, column: 22, scope: !5652)
!5657 = !DILocation(line: 195, column: 32, scope: !5652)
!5658 = !DILocation(line: 195, column: 39, scope: !5652)
!5659 = !DILocation(line: 195, column: 41, scope: !5652)
!5660 = !DILocation(line: 195, column: 45, scope: !5652)
!5661 = !DILocation(line: 195, column: 54, scope: !5652)
!5662 = !DILocation(line: 195, column: 29, scope: !5652)
!5663 = !DILocation(line: 195, column: 3, scope: !5652)
!5664 = !DILocation(line: 197, column: 17, scope: !5634)
!5665 = !DILocation(line: 197, column: 21, scope: !5634)
!5666 = !DILocation(line: 197, column: 29, scope: !5634)
!5667 = !DILocation(line: 197, column: 9, scope: !5634)
!5668 = !DILocation(line: 197, column: 37, scope: !5634)
!5669 = !DILocation(line: 197, column: 44, scope: !5634)
!5670 = !DILocation(line: 197, column: 46, scope: !5634)
!5671 = !DILocation(line: 197, column: 56, scope: !5634)
!5672 = !DILocation(line: 197, column: 64, scope: !5634)
!5673 = !DILocation(line: 197, column: 34, scope: !5634)
!5674 = !DILocation(line: 197, column: 69, scope: !5634)
!5675 = !DILocation(line: 198, column: 17, scope: !5634)
!5676 = !DILocation(line: 198, column: 21, scope: !5634)
!5677 = !DILocation(line: 198, column: 29, scope: !5634)
!5678 = !DILocation(line: 198, column: 9, scope: !5634)
!5679 = !DILocation(line: 198, column: 37, scope: !5634)
!5680 = !DILocation(line: 198, column: 44, scope: !5634)
!5681 = !DILocation(line: 198, column: 46, scope: !5634)
!5682 = !DILocation(line: 198, column: 56, scope: !5634)
!5683 = !DILocation(line: 198, column: 64, scope: !5634)
!5684 = !DILocation(line: 198, column: 34, scope: !5634)
!5685 = !DILocation(line: 198, column: 69, scope: !5634)
!5686 = !DILocation(line: 199, column: 17, scope: !5634)
!5687 = !DILocation(line: 199, column: 21, scope: !5634)
!5688 = !DILocation(line: 199, column: 29, scope: !5634)
!5689 = !DILocation(line: 199, column: 9, scope: !5634)
!5690 = !DILocation(line: 199, column: 37, scope: !5634)
!5691 = !DILocation(line: 199, column: 44, scope: !5634)
!5692 = !DILocation(line: 199, column: 46, scope: !5634)
!5693 = !DILocation(line: 199, column: 56, scope: !5634)
!5694 = !DILocation(line: 199, column: 64, scope: !5634)
!5695 = !DILocation(line: 199, column: 34, scope: !5634)
!5696 = !DILocation(line: 199, column: 69, scope: !5634)
!5697 = !DILocation(line: 200, column: 17, scope: !5634)
!5698 = !DILocation(line: 200, column: 21, scope: !5634)
!5699 = !DILocation(line: 200, column: 29, scope: !5634)
!5700 = !DILocation(line: 200, column: 9, scope: !5634)
!5701 = !DILocation(line: 200, column: 37, scope: !5634)
!5702 = !DILocation(line: 200, column: 44, scope: !5634)
!5703 = !DILocation(line: 200, column: 46, scope: !5634)
!5704 = !DILocation(line: 200, column: 56, scope: !5634)
!5705 = !DILocation(line: 200, column: 64, scope: !5634)
!5706 = !DILocation(line: 200, column: 34, scope: !5634)
!5707 = !DILocation(line: 199, column: 69, scope: !5708)
!5708 = !DILexicalBlockFile(scope: !5634, file: !459, discriminator: 1)
!5709 = !DILocation(line: 197, column: 2, scope: !5708)
!5710 = !DILocation(line: 201, column: 1, scope: !5634)
!5711 = distinct !DISubprogram(name: "rule_is_ours", scope: !459, file: !459, line: 423, type: !5712, isLocal: true, isDefinition: true, scopeLine: 424, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!5712 = !DISubroutineType(types: !5713)
!5713 = !{!4639, !4616, !2675, !5317}
!5714 = !DILocalVariable(name: "frh", arg: 1, scope: !5711, file: !459, line: 423, type: !4616)
!5715 = !DILocation(line: 423, column: 35, scope: !5711)
!5716 = !DILocalVariable(name: "tb", arg: 2, scope: !5711, file: !459, line: 423, type: !2675)
!5717 = !DILocation(line: 423, column: 55, scope: !5711)
!5718 = !DILocalVariable(name: "ret_vrrp", arg: 3, scope: !5711, file: !459, line: 423, type: !5317)
!5719 = !DILocation(line: 423, column: 80, scope: !5711)
!5720 = !DILocalVariable(name: "e", scope: !5711, file: !459, line: 425, type: !1911)
!5721 = !DILocation(line: 425, column: 10, scope: !5711)
!5722 = !DILocalVariable(name: "e1", scope: !5711, file: !459, line: 425, type: !1911)
!5723 = !DILocation(line: 425, column: 13, scope: !5711)
!5724 = !DILocalVariable(name: "vrrp", scope: !5711, file: !459, line: 426, type: !1731)
!5725 = !DILocation(line: 426, column: 10, scope: !5711)
!5726 = !DILocalVariable(name: "rule", scope: !5711, file: !459, line: 427, type: !4639)
!5727 = !DILocation(line: 427, column: 13, scope: !5711)
!5728 = !DILocation(line: 429, column: 3, scope: !5711)
!5729 = !DILocation(line: 429, column: 12, scope: !5711)
!5730 = !DILocation(line: 431, column: 15, scope: !5731)
!5731 = distinct !DILexicalBlock(scope: !5711, file: !459, line: 431, column: 2)
!5732 = !DILocation(line: 431, column: 26, scope: !5731)
!5733 = !DILocation(line: 431, column: 14, scope: !5731)
!5734 = !DILocation(line: 431, column: 37, scope: !5735)
!5735 = !DILexicalBlockFile(scope: !5731, file: !459, discriminator: 1)
!5736 = !DILocation(line: 431, column: 48, scope: !5735)
!5737 = !DILocation(line: 431, column: 36, scope: !5735)
!5738 = !DILocation(line: 431, column: 35, scope: !5735)
!5739 = !DILocation(line: 431, column: 35, scope: !5740)
!5740 = !DILexicalBlockFile(scope: !5731, file: !459, discriminator: 2)
!5741 = !DILocation(line: 431, column: 4, scope: !5742)
!5742 = !DILexicalBlockFile(scope: !5731, file: !459, discriminator: 3)
!5743 = !DILocation(line: 431, column: 15, scope: !5742)
!5744 = !DILocation(line: 431, column: 22, scope: !5742)
!5745 = !DILocation(line: 431, column: 35, scope: !5742)
!5746 = !DILocation(line: 431, column: 35, scope: !5747)
!5747 = !DILexicalBlockFile(scope: !5731, file: !459, discriminator: 4)
!5748 = !DILocation(line: 431, column: 14, scope: !5747)
!5749 = !DILocation(line: 431, column: 14, scope: !5750)
!5750 = !DILexicalBlockFile(scope: !5731, file: !459, discriminator: 5)
!5751 = !DILocation(line: 431, column: 14, scope: !5752)
!5752 = !DILexicalBlockFile(scope: !5731, file: !459, discriminator: 6)
!5753 = !DILocation(line: 431, column: 11, scope: !5752)
!5754 = !DILocation(line: 431, column: 7, scope: !5752)
!5755 = !DILocation(line: 431, column: 5, scope: !5756)
!5756 = !DILexicalBlockFile(scope: !5757, file: !459, discriminator: 7)
!5757 = distinct !DILexicalBlock(scope: !5731, file: !459, line: 431, column: 2)
!5758 = !DILocation(line: 431, column: 4, scope: !5756)
!5759 = !DILocation(line: 431, column: 8, scope: !5756)
!5760 = !DILocation(line: 431, column: 23, scope: !5761)
!5761 = !DILexicalBlockFile(scope: !5757, file: !459, discriminator: 8)
!5762 = !DILocation(line: 431, column: 27, scope: !5761)
!5763 = !DILocation(line: 431, column: 21, scope: !5761)
!5764 = !DILocation(line: 431, column: 19, scope: !5761)
!5765 = !DILocation(line: 431, column: 2, scope: !5766)
!5766 = !DILexicalBlockFile(scope: !5731, file: !459, discriminator: 9)
!5767 = !DILocation(line: 432, column: 17, scope: !5768)
!5768 = distinct !DILexicalBlock(scope: !5769, file: !459, line: 432, column: 3)
!5769 = distinct !DILexicalBlock(scope: !5757, file: !459, line: 431, column: 57)
!5770 = !DILocation(line: 432, column: 23, scope: !5768)
!5771 = !DILocation(line: 432, column: 16, scope: !5768)
!5772 = !DILocation(line: 432, column: 36, scope: !5773)
!5773 = !DILexicalBlockFile(scope: !5768, file: !459, discriminator: 1)
!5774 = !DILocation(line: 432, column: 42, scope: !5773)
!5775 = !DILocation(line: 432, column: 35, scope: !5773)
!5776 = !DILocation(line: 432, column: 34, scope: !5773)
!5777 = !DILocation(line: 432, column: 34, scope: !5778)
!5778 = !DILexicalBlockFile(scope: !5768, file: !459, discriminator: 2)
!5779 = !DILocation(line: 432, column: 5, scope: !5780)
!5780 = !DILexicalBlockFile(scope: !5768, file: !459, discriminator: 3)
!5781 = !DILocation(line: 432, column: 11, scope: !5780)
!5782 = !DILocation(line: 432, column: 20, scope: !5780)
!5783 = !DILocation(line: 432, column: 34, scope: !5780)
!5784 = !DILocation(line: 432, column: 34, scope: !5785)
!5785 = !DILexicalBlockFile(scope: !5768, file: !459, discriminator: 4)
!5786 = !DILocation(line: 432, column: 16, scope: !5785)
!5787 = !DILocation(line: 432, column: 16, scope: !5788)
!5788 = !DILexicalBlockFile(scope: !5768, file: !459, discriminator: 5)
!5789 = !DILocation(line: 432, column: 16, scope: !5790)
!5790 = !DILexicalBlockFile(scope: !5768, file: !459, discriminator: 6)
!5791 = !DILocation(line: 432, column: 13, scope: !5790)
!5792 = !DILocation(line: 432, column: 8, scope: !5790)
!5793 = !DILocation(line: 432, column: 6, scope: !5794)
!5794 = !DILexicalBlockFile(scope: !5795, file: !459, discriminator: 7)
!5795 = distinct !DILexicalBlock(scope: !5768, file: !459, line: 432, column: 3)
!5796 = !DILocation(line: 432, column: 5, scope: !5794)
!5797 = !DILocation(line: 432, column: 10, scope: !5794)
!5798 = !DILocation(line: 432, column: 25, scope: !5799)
!5799 = !DILexicalBlockFile(scope: !5795, file: !459, discriminator: 8)
!5800 = !DILocation(line: 432, column: 30, scope: !5799)
!5801 = !DILocation(line: 432, column: 23, scope: !5799)
!5802 = !DILocation(line: 432, column: 21, scope: !5799)
!5803 = !DILocation(line: 432, column: 3, scope: !5804)
!5804 = !DILexicalBlockFile(scope: !5768, file: !459, discriminator: 9)
!5805 = !DILocation(line: 433, column: 21, scope: !5806)
!5806 = distinct !DILexicalBlock(scope: !5807, file: !459, line: 433, column: 8)
!5807 = distinct !DILexicalBlock(scope: !5795, file: !459, line: 432, column: 62)
!5808 = !DILocation(line: 433, column: 26, scope: !5806)
!5809 = !DILocation(line: 433, column: 30, scope: !5806)
!5810 = !DILocation(line: 433, column: 8, scope: !5806)
!5811 = !DILocation(line: 433, column: 8, scope: !5807)
!5812 = !DILocation(line: 434, column: 17, scope: !5813)
!5813 = distinct !DILexicalBlock(scope: !5806, file: !459, line: 433, column: 37)
!5814 = !DILocation(line: 434, column: 6, scope: !5813)
!5815 = !DILocation(line: 434, column: 15, scope: !5813)
!5816 = !DILocation(line: 435, column: 12, scope: !5813)
!5817 = !DILocation(line: 435, column: 5, scope: !5813)
!5818 = !DILocation(line: 437, column: 3, scope: !5807)
!5819 = !DILocation(line: 432, column: 50, scope: !5820)
!5820 = !DILexicalBlockFile(scope: !5795, file: !459, discriminator: 10)
!5821 = !DILocation(line: 432, column: 55, scope: !5820)
!5822 = !DILocation(line: 432, column: 47, scope: !5820)
!5823 = !DILocation(line: 432, column: 3, scope: !5820)
!5824 = distinct !{!5824, !5825}
!5825 = !DILocation(line: 432, column: 3, scope: !5769)
!5826 = !DILocation(line: 438, column: 2, scope: !5769)
!5827 = !DILocation(line: 431, column: 46, scope: !5828)
!5828 = !DILexicalBlockFile(scope: !5757, file: !459, discriminator: 10)
!5829 = !DILocation(line: 431, column: 50, scope: !5828)
!5830 = !DILocation(line: 431, column: 43, scope: !5828)
!5831 = !DILocation(line: 431, column: 2, scope: !5828)
!5832 = distinct !{!5832, !5833}
!5833 = !DILocation(line: 431, column: 2, scope: !5711)
!5834 = !DILocation(line: 440, column: 15, scope: !5835)
!5835 = distinct !DILexicalBlock(scope: !5711, file: !459, line: 440, column: 2)
!5836 = !DILocation(line: 440, column: 26, scope: !5835)
!5837 = !DILocation(line: 440, column: 14, scope: !5835)
!5838 = !DILocation(line: 440, column: 45, scope: !5839)
!5839 = !DILexicalBlockFile(scope: !5835, file: !459, discriminator: 1)
!5840 = !DILocation(line: 440, column: 56, scope: !5839)
!5841 = !DILocation(line: 440, column: 44, scope: !5839)
!5842 = !DILocation(line: 440, column: 43, scope: !5839)
!5843 = !DILocation(line: 440, column: 43, scope: !5844)
!5844 = !DILexicalBlockFile(scope: !5835, file: !459, discriminator: 2)
!5845 = !DILocation(line: 440, column: 4, scope: !5846)
!5846 = !DILexicalBlockFile(scope: !5835, file: !459, discriminator: 3)
!5847 = !DILocation(line: 440, column: 15, scope: !5846)
!5848 = !DILocation(line: 440, column: 30, scope: !5846)
!5849 = !DILocation(line: 440, column: 43, scope: !5846)
!5850 = !DILocation(line: 440, column: 43, scope: !5851)
!5851 = !DILexicalBlockFile(scope: !5835, file: !459, discriminator: 4)
!5852 = !DILocation(line: 440, column: 14, scope: !5851)
!5853 = !DILocation(line: 440, column: 14, scope: !5854)
!5854 = !DILexicalBlockFile(scope: !5835, file: !459, discriminator: 5)
!5855 = !DILocation(line: 440, column: 14, scope: !5856)
!5856 = !DILexicalBlockFile(scope: !5835, file: !459, discriminator: 6)
!5857 = !DILocation(line: 440, column: 11, scope: !5856)
!5858 = !DILocation(line: 440, column: 7, scope: !5856)
!5859 = !DILocation(line: 440, column: 5, scope: !5860)
!5860 = !DILexicalBlockFile(scope: !5861, file: !459, discriminator: 7)
!5861 = distinct !DILexicalBlock(scope: !5835, file: !459, line: 440, column: 2)
!5862 = !DILocation(line: 440, column: 4, scope: !5860)
!5863 = !DILocation(line: 440, column: 8, scope: !5860)
!5864 = !DILocation(line: 440, column: 23, scope: !5865)
!5865 = !DILexicalBlockFile(scope: !5861, file: !459, discriminator: 8)
!5866 = !DILocation(line: 440, column: 27, scope: !5865)
!5867 = !DILocation(line: 440, column: 21, scope: !5865)
!5868 = !DILocation(line: 440, column: 19, scope: !5865)
!5869 = !DILocation(line: 440, column: 2, scope: !5870)
!5870 = !DILexicalBlockFile(scope: !5835, file: !459, discriminator: 9)
!5871 = !DILocation(line: 441, column: 20, scope: !5872)
!5872 = distinct !DILexicalBlock(scope: !5873, file: !459, line: 441, column: 7)
!5873 = distinct !DILexicalBlock(scope: !5861, file: !459, line: 440, column: 57)
!5874 = !DILocation(line: 441, column: 25, scope: !5872)
!5875 = !DILocation(line: 441, column: 29, scope: !5872)
!5876 = !DILocation(line: 441, column: 7, scope: !5872)
!5877 = !DILocation(line: 441, column: 7, scope: !5873)
!5878 = !DILocation(line: 442, column: 11, scope: !5872)
!5879 = !DILocation(line: 442, column: 4, scope: !5872)
!5880 = !DILocation(line: 443, column: 2, scope: !5873)
!5881 = !DILocation(line: 440, column: 46, scope: !5882)
!5882 = !DILexicalBlockFile(scope: !5861, file: !459, discriminator: 10)
!5883 = !DILocation(line: 440, column: 50, scope: !5882)
!5884 = !DILocation(line: 440, column: 43, scope: !5882)
!5885 = !DILocation(line: 440, column: 2, scope: !5882)
!5886 = distinct !{!5886, !5887}
!5887 = !DILocation(line: 440, column: 2, scope: !5711)
!5888 = !DILocation(line: 445, column: 2, scope: !5711)
!5889 = !DILocation(line: 446, column: 1, scope: !5711)
!5890 = distinct !DISubprogram(name: "compare_rule", scope: !459, file: !459, line: 265, type: !5891, isLocal: true, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!5891 = !DISubroutineType(types: !5892)
!5892 = !{!609, !4616, !2675, !4639}
!5893 = !DILocalVariable(name: "frh", arg: 1, scope: !5890, file: !459, line: 265, type: !4616)
!5894 = !DILocation(line: 265, column: 35, scope: !5890)
!5895 = !DILocalVariable(name: "tb", arg: 2, scope: !5890, file: !459, line: 265, type: !2675)
!5896 = !DILocation(line: 265, column: 55, scope: !5890)
!5897 = !DILocalVariable(name: "rule", arg: 3, scope: !5890, file: !459, line: 265, type: !4639)
!5898 = !DILocation(line: 265, column: 82, scope: !5890)
!5899 = !DILocation(line: 267, column: 6, scope: !5900)
!5900 = distinct !DILexicalBlock(scope: !5890, file: !459, line: 267, column: 6)
!5901 = !DILocation(line: 267, column: 12, scope: !5900)
!5902 = !DILocation(line: 267, column: 6, scope: !5890)
!5903 = !DILocation(line: 268, column: 3, scope: !5900)
!5904 = !DILocation(line: 270, column: 6, scope: !5905)
!5905 = distinct !DILexicalBlock(scope: !5890, file: !459, line: 270, column: 6)
!5906 = !DILocation(line: 270, column: 12, scope: !5905)
!5907 = !DILocation(line: 270, column: 22, scope: !5905)
!5908 = !DILocation(line: 270, column: 27, scope: !5905)
!5909 = !DILocation(line: 270, column: 19, scope: !5905)
!5910 = !DILocation(line: 270, column: 6, scope: !5890)
!5911 = !DILocation(line: 271, column: 3, scope: !5905)
!5912 = !DILocation(line: 274, column: 7, scope: !5913)
!5913 = distinct !DILexicalBlock(scope: !5890, file: !459, line: 274, column: 6)
!5914 = !DILocation(line: 274, column: 24, scope: !5913)
!5915 = !DILocation(line: 275, column: 6, scope: !5913)
!5916 = !DILocation(line: 275, column: 12, scope: !5913)
!5917 = !DILocation(line: 275, column: 35, scope: !5913)
!5918 = !DILocation(line: 275, column: 45, scope: !5913)
!5919 = !DILocation(line: 275, column: 38, scope: !5913)
!5920 = !DILocation(line: 275, column: 25, scope: !5913)
!5921 = !DILocation(line: 275, column: 24, scope: !5913)
!5922 = !DILocation(line: 275, column: 21, scope: !5913)
!5923 = !DILocation(line: 274, column: 6, scope: !5924)
!5924 = !DILexicalBlockFile(scope: !5890, file: !459, discriminator: 1)
!5925 = !DILocation(line: 276, column: 3, scope: !5913)
!5926 = !DILocation(line: 278, column: 6, scope: !5927)
!5927 = distinct !DILexicalBlock(scope: !5890, file: !459, line: 278, column: 6)
!5928 = !DILocation(line: 278, column: 11, scope: !5927)
!5929 = !DILocation(line: 278, column: 21, scope: !5927)
!5930 = !DILocation(line: 278, column: 27, scope: !5927)
!5931 = !DILocation(line: 278, column: 18, scope: !5927)
!5932 = !DILocation(line: 278, column: 6, scope: !5890)
!5933 = !DILocation(line: 279, column: 3, scope: !5927)
!5934 = !DILocation(line: 281, column: 6, scope: !5935)
!5935 = distinct !DILexicalBlock(scope: !5890, file: !459, line: 281, column: 6)
!5936 = !DILocation(line: 281, column: 11, scope: !5935)
!5937 = !DILocation(line: 281, column: 18, scope: !5935)
!5938 = !DILocation(line: 281, column: 33, scope: !5935)
!5939 = !DILocation(line: 282, column: 8, scope: !5935)
!5940 = !DILocation(line: 282, column: 21, scope: !5935)
!5941 = !DILocation(line: 283, column: 19, scope: !5935)
!5942 = !DILocation(line: 283, column: 29, scope: !5935)
!5943 = !DILocation(line: 283, column: 22, scope: !5935)
!5944 = !DILocation(line: 283, column: 8, scope: !5935)
!5945 = !DILocation(line: 283, column: 7, scope: !5935)
!5946 = !DILocation(line: 283, column: 45, scope: !5935)
!5947 = !DILocation(line: 283, column: 51, scope: !5935)
!5948 = !DILocation(line: 283, column: 42, scope: !5935)
!5949 = !DILocation(line: 281, column: 6, scope: !5924)
!5950 = !DILocation(line: 284, column: 3, scope: !5935)
!5951 = !DILocation(line: 286, column: 6, scope: !5952)
!5952 = distinct !DILexicalBlock(scope: !5890, file: !459, line: 286, column: 6)
!5953 = !DILocation(line: 286, column: 20, scope: !5952)
!5954 = !DILocation(line: 286, column: 23, scope: !5955)
!5955 = !DILexicalBlockFile(scope: !5952, file: !459, discriminator: 1)
!5956 = !DILocation(line: 286, column: 29, scope: !5955)
!5957 = !DILocation(line: 286, column: 50, scope: !5955)
!5958 = !DILocation(line: 286, column: 60, scope: !5955)
!5959 = !DILocation(line: 286, column: 53, scope: !5955)
!5960 = !DILocation(line: 286, column: 39, scope: !5955)
!5961 = !DILocation(line: 286, column: 38, scope: !5955)
!5962 = !DILocation(line: 286, column: 35, scope: !5955)
!5963 = !DILocation(line: 286, column: 6, scope: !5955)
!5964 = !DILocation(line: 287, column: 3, scope: !5952)
!5965 = !DILocation(line: 288, column: 7, scope: !5966)
!5966 = distinct !DILexicalBlock(scope: !5890, file: !459, line: 288, column: 6)
!5967 = !DILocation(line: 288, column: 21, scope: !5966)
!5968 = !DILocation(line: 288, column: 24, scope: !5969)
!5969 = !DILexicalBlockFile(scope: !5966, file: !459, discriminator: 1)
!5970 = !DILocation(line: 288, column: 30, scope: !5969)
!5971 = !DILocation(line: 288, column: 39, scope: !5969)
!5972 = !DILocation(line: 288, column: 44, scope: !5969)
!5973 = !DILocation(line: 288, column: 36, scope: !5969)
!5974 = !DILocation(line: 288, column: 6, scope: !5969)
!5975 = !DILocation(line: 289, column: 3, scope: !5966)
!5976 = !DILocation(line: 291, column: 7, scope: !5977)
!5977 = distinct !DILexicalBlock(scope: !5890, file: !459, line: 291, column: 6)
!5978 = !DILocation(line: 291, column: 13, scope: !5977)
!5979 = !DILocation(line: 291, column: 6, scope: !5977)
!5980 = !DILocation(line: 291, column: 26, scope: !5977)
!5981 = !DILocation(line: 291, column: 31, scope: !5977)
!5982 = !DILocation(line: 291, column: 37, scope: !5977)
!5983 = !DILocation(line: 291, column: 23, scope: !5977)
!5984 = !DILocation(line: 291, column: 20, scope: !5977)
!5985 = !DILocation(line: 291, column: 6, scope: !5890)
!5986 = !DILocation(line: 292, column: 3, scope: !5977)
!5987 = !DILocation(line: 294, column: 7, scope: !5988)
!5988 = distinct !DILexicalBlock(scope: !5890, file: !459, line: 294, column: 6)
!5989 = !DILocation(line: 294, column: 13, scope: !5988)
!5990 = !DILocation(line: 294, column: 6, scope: !5988)
!5991 = !DILocation(line: 294, column: 27, scope: !5988)
!5992 = !DILocation(line: 294, column: 26, scope: !5988)
!5993 = !DILocation(line: 294, column: 23, scope: !5988)
!5994 = !DILocation(line: 294, column: 6, scope: !5890)
!5995 = !DILocation(line: 295, column: 3, scope: !5988)
!5996 = !DILocation(line: 296, column: 6, scope: !5997)
!5997 = distinct !DILexicalBlock(scope: !5890, file: !459, line: 296, column: 6)
!5998 = !DILocation(line: 296, column: 12, scope: !5997)
!5999 = !DILocation(line: 296, column: 6, scope: !5890)
!6000 = !DILocation(line: 297, column: 7, scope: !6001)
!6001 = distinct !DILexicalBlock(scope: !6002, file: !459, line: 297, column: 7)
!6002 = distinct !DILexicalBlock(scope: !5997, file: !459, line: 296, column: 23)
!6003 = !DILocation(line: 297, column: 12, scope: !6001)
!6004 = !DILocation(line: 297, column: 23, scope: !6001)
!6005 = !DILocation(line: 297, column: 29, scope: !6001)
!6006 = !DILocation(line: 297, column: 40, scope: !6001)
!6007 = !DILocation(line: 297, column: 44, scope: !6001)
!6008 = !DILocation(line: 297, column: 20, scope: !6001)
!6009 = !DILocation(line: 297, column: 7, scope: !6002)
!6010 = !DILocation(line: 298, column: 4, scope: !6001)
!6011 = !DILocation(line: 299, column: 20, scope: !6012)
!6012 = distinct !DILexicalBlock(scope: !6002, file: !459, line: 299, column: 7)
!6013 = !DILocation(line: 299, column: 26, scope: !6012)
!6014 = !DILocation(line: 299, column: 33, scope: !6012)
!6015 = !DILocation(line: 299, column: 43, scope: !6012)
!6016 = !DILocation(line: 299, column: 36, scope: !6012)
!6017 = !DILocation(line: 299, column: 56, scope: !6012)
!6018 = !DILocation(line: 299, column: 62, scope: !6012)
!6019 = !DILocation(line: 299, column: 7, scope: !6012)
!6020 = !DILocation(line: 299, column: 7, scope: !6002)
!6021 = !DILocation(line: 300, column: 4, scope: !6012)
!6022 = !DILocation(line: 301, column: 2, scope: !6002)
!6023 = !DILocation(line: 303, column: 7, scope: !6024)
!6024 = distinct !DILexicalBlock(scope: !5890, file: !459, line: 303, column: 6)
!6025 = !DILocation(line: 303, column: 13, scope: !6024)
!6026 = !DILocation(line: 303, column: 6, scope: !6024)
!6027 = !DILocation(line: 303, column: 25, scope: !6024)
!6028 = !DILocation(line: 303, column: 24, scope: !6024)
!6029 = !DILocation(line: 303, column: 21, scope: !6024)
!6030 = !DILocation(line: 303, column: 6, scope: !5890)
!6031 = !DILocation(line: 304, column: 3, scope: !6024)
!6032 = !DILocation(line: 305, column: 6, scope: !6033)
!6033 = distinct !DILexicalBlock(scope: !5890, file: !459, line: 305, column: 6)
!6034 = !DILocation(line: 305, column: 12, scope: !6033)
!6035 = !DILocation(line: 305, column: 6, scope: !5890)
!6036 = !DILocation(line: 306, column: 7, scope: !6037)
!6037 = distinct !DILexicalBlock(scope: !6038, file: !459, line: 306, column: 7)
!6038 = distinct !DILexicalBlock(scope: !6033, file: !459, line: 305, column: 21)
!6039 = !DILocation(line: 306, column: 12, scope: !6037)
!6040 = !DILocation(line: 306, column: 23, scope: !6037)
!6041 = !DILocation(line: 306, column: 29, scope: !6037)
!6042 = !DILocation(line: 306, column: 38, scope: !6037)
!6043 = !DILocation(line: 306, column: 42, scope: !6037)
!6044 = !DILocation(line: 306, column: 20, scope: !6037)
!6045 = !DILocation(line: 306, column: 7, scope: !6038)
!6046 = !DILocation(line: 307, column: 4, scope: !6037)
!6047 = !DILocation(line: 308, column: 20, scope: !6048)
!6048 = distinct !DILexicalBlock(scope: !6038, file: !459, line: 308, column: 7)
!6049 = !DILocation(line: 308, column: 26, scope: !6048)
!6050 = !DILocation(line: 308, column: 33, scope: !6048)
!6051 = !DILocation(line: 308, column: 43, scope: !6048)
!6052 = !DILocation(line: 308, column: 36, scope: !6048)
!6053 = !DILocation(line: 308, column: 56, scope: !6048)
!6054 = !DILocation(line: 308, column: 62, scope: !6048)
!6055 = !DILocation(line: 308, column: 7, scope: !6048)
!6056 = !DILocation(line: 308, column: 7, scope: !6038)
!6057 = !DILocation(line: 309, column: 4, scope: !6048)
!6058 = !DILocation(line: 310, column: 2, scope: !6038)
!6059 = !DILocation(line: 312, column: 6, scope: !6060)
!6060 = distinct !DILexicalBlock(scope: !5890, file: !459, line: 312, column: 6)
!6061 = !DILocation(line: 312, column: 12, scope: !6060)
!6062 = !DILocation(line: 312, column: 19, scope: !6060)
!6063 = !DILocation(line: 312, column: 24, scope: !6060)
!6064 = !DILocation(line: 312, column: 16, scope: !6060)
!6065 = !DILocation(line: 312, column: 6, scope: !5890)
!6066 = !DILocation(line: 313, column: 3, scope: !6060)
!6067 = !DILocation(line: 315, column: 7, scope: !6068)
!6068 = distinct !DILexicalBlock(scope: !5890, file: !459, line: 315, column: 6)
!6069 = !DILocation(line: 315, column: 6, scope: !6068)
!6070 = !DILocation(line: 315, column: 27, scope: !6068)
!6071 = !DILocation(line: 315, column: 33, scope: !6068)
!6072 = !DILocation(line: 315, column: 38, scope: !6068)
!6073 = !DILocation(line: 315, column: 25, scope: !6068)
!6074 = !DILocation(line: 315, column: 22, scope: !6068)
!6075 = !DILocation(line: 315, column: 6, scope: !5890)
!6076 = !DILocation(line: 316, column: 3, scope: !6068)
!6077 = !DILocation(line: 317, column: 6, scope: !6078)
!6078 = distinct !DILexicalBlock(scope: !5890, file: !459, line: 317, column: 6)
!6079 = !DILocation(line: 317, column: 12, scope: !6078)
!6080 = !DILocation(line: 317, column: 17, scope: !6078)
!6081 = !DILocation(line: 317, column: 37, scope: !6078)
!6082 = !DILocation(line: 318, column: 17, scope: !6078)
!6083 = !DILocation(line: 318, column: 27, scope: !6078)
!6084 = !DILocation(line: 318, column: 20, scope: !6078)
!6085 = !DILocation(line: 318, column: 7, scope: !6078)
!6086 = !DILocation(line: 318, column: 6, scope: !6078)
!6087 = !DILocation(line: 318, column: 45, scope: !6078)
!6088 = !DILocation(line: 318, column: 51, scope: !6078)
!6089 = !DILocation(line: 318, column: 42, scope: !6078)
!6090 = !DILocation(line: 317, column: 6, scope: !5924)
!6091 = !DILocation(line: 319, column: 3, scope: !6078)
!6092 = !DILocation(line: 321, column: 7, scope: !6093)
!6093 = distinct !DILexicalBlock(scope: !5890, file: !459, line: 321, column: 6)
!6094 = !DILocation(line: 321, column: 22, scope: !6093)
!6095 = !DILocation(line: 321, column: 26, scope: !6096)
!6096 = !DILexicalBlockFile(scope: !6093, file: !459, discriminator: 1)
!6097 = !DILocation(line: 321, column: 32, scope: !6096)
!6098 = !DILocation(line: 321, column: 37, scope: !6096)
!6099 = !DILocation(line: 321, column: 6, scope: !6096)
!6100 = !DILocation(line: 322, column: 3, scope: !6093)
!6101 = !DILocation(line: 323, column: 6, scope: !6102)
!6102 = distinct !DILexicalBlock(scope: !5890, file: !459, line: 323, column: 6)
!6103 = !DILocation(line: 323, column: 12, scope: !6102)
!6104 = !DILocation(line: 323, column: 17, scope: !6102)
!6105 = !DILocation(line: 323, column: 6, scope: !5890)
!6106 = !DILocation(line: 324, column: 18, scope: !6107)
!6107 = distinct !DILexicalBlock(scope: !6108, file: !459, line: 324, column: 7)
!6108 = distinct !DILexicalBlock(scope: !6102, file: !459, line: 323, column: 38)
!6109 = !DILocation(line: 324, column: 28, scope: !6107)
!6110 = !DILocation(line: 324, column: 21, scope: !6107)
!6111 = !DILocation(line: 324, column: 8, scope: !6107)
!6112 = !DILocation(line: 324, column: 7, scope: !6107)
!6113 = !DILocation(line: 324, column: 46, scope: !6107)
!6114 = !DILocation(line: 324, column: 52, scope: !6107)
!6115 = !DILocation(line: 324, column: 43, scope: !6107)
!6116 = !DILocation(line: 324, column: 7, scope: !6108)
!6117 = !DILocation(line: 325, column: 4, scope: !6107)
!6118 = !DILocation(line: 326, column: 2, scope: !6108)
!6119 = !DILocation(line: 327, column: 11, scope: !6120)
!6120 = distinct !DILexicalBlock(scope: !6102, file: !459, line: 327, column: 11)
!6121 = !DILocation(line: 327, column: 11, scope: !6102)
!6122 = !DILocation(line: 328, column: 19, scope: !6123)
!6123 = distinct !DILexicalBlock(scope: !6124, file: !459, line: 328, column: 7)
!6124 = distinct !DILexicalBlock(scope: !6120, file: !459, line: 327, column: 27)
!6125 = !DILocation(line: 328, column: 29, scope: !6123)
!6126 = !DILocation(line: 328, column: 22, scope: !6123)
!6127 = !DILocation(line: 328, column: 8, scope: !6123)
!6128 = !DILocation(line: 328, column: 7, scope: !6123)
!6129 = !DILocation(line: 328, column: 44, scope: !6123)
!6130 = !DILocation(line: 328, column: 7, scope: !6124)
!6131 = !DILocation(line: 329, column: 4, scope: !6123)
!6132 = !DILocation(line: 330, column: 2, scope: !6124)
!6133 = !DILocation(line: 332, column: 7, scope: !6134)
!6134 = distinct !DILexicalBlock(scope: !5890, file: !459, line: 332, column: 6)
!6135 = !DILocation(line: 332, column: 6, scope: !6134)
!6136 = !DILocation(line: 332, column: 24, scope: !6134)
!6137 = !DILocation(line: 332, column: 30, scope: !6134)
!6138 = !DILocation(line: 332, column: 23, scope: !6134)
!6139 = !DILocation(line: 332, column: 20, scope: !6134)
!6140 = !DILocation(line: 332, column: 6, scope: !5890)
!6141 = !DILocation(line: 333, column: 3, scope: !6134)
!6142 = !DILocation(line: 334, column: 6, scope: !6143)
!6143 = distinct !DILexicalBlock(scope: !5890, file: !459, line: 334, column: 6)
!6144 = !DILocation(line: 334, column: 12, scope: !6143)
!6145 = !DILocation(line: 334, column: 19, scope: !6143)
!6146 = !DILocation(line: 335, column: 17, scope: !6143)
!6147 = !DILocation(line: 335, column: 27, scope: !6143)
!6148 = !DILocation(line: 335, column: 20, scope: !6143)
!6149 = !DILocation(line: 335, column: 7, scope: !6143)
!6150 = !DILocation(line: 335, column: 6, scope: !6143)
!6151 = !DILocation(line: 335, column: 43, scope: !6143)
!6152 = !DILocation(line: 335, column: 49, scope: !6143)
!6153 = !DILocation(line: 335, column: 40, scope: !6143)
!6154 = !DILocation(line: 334, column: 6, scope: !5924)
!6155 = !DILocation(line: 336, column: 3, scope: !6143)
!6156 = !DILocation(line: 339, column: 7, scope: !6157)
!6157 = distinct !DILexicalBlock(scope: !5890, file: !459, line: 339, column: 6)
!6158 = !DILocation(line: 339, column: 6, scope: !5890)
!6159 = !DILocation(line: 340, column: 7, scope: !6160)
!6160 = distinct !DILexicalBlock(scope: !6161, file: !459, line: 340, column: 7)
!6161 = distinct !DILexicalBlock(scope: !6157, file: !459, line: 339, column: 35)
!6162 = !DILocation(line: 340, column: 13, scope: !6160)
!6163 = !DILocation(line: 340, column: 33, scope: !6160)
!6164 = !DILocation(line: 340, column: 7, scope: !6161)
!6165 = !DILocation(line: 341, column: 4, scope: !6160)
!6166 = !DILocation(line: 342, column: 2, scope: !6161)
!6167 = !DILocation(line: 342, column: 23, scope: !6168)
!6168 = !DILexicalBlockFile(scope: !6169, file: !459, discriminator: 1)
!6169 = distinct !DILexicalBlock(scope: !6157, file: !459, line: 342, column: 13)
!6170 = !DILocation(line: 342, column: 33, scope: !6168)
!6171 = !DILocation(line: 342, column: 26, scope: !6168)
!6172 = !DILocation(line: 342, column: 14, scope: !6168)
!6173 = !DILocation(line: 342, column: 13, scope: !6168)
!6174 = !DILocation(line: 342, column: 63, scope: !6168)
!6175 = !DILocation(line: 342, column: 69, scope: !6168)
!6176 = !DILocation(line: 342, column: 60, scope: !6168)
!6177 = !DILocation(line: 343, column: 3, scope: !6169)
!6178 = !DILocation(line: 347, column: 7, scope: !6179)
!6179 = distinct !DILexicalBlock(scope: !5890, file: !459, line: 347, column: 6)
!6180 = !DILocation(line: 347, column: 6, scope: !6179)
!6181 = !DILocation(line: 347, column: 37, scope: !6179)
!6182 = !DILocation(line: 347, column: 43, scope: !6179)
!6183 = !DILocation(line: 347, column: 48, scope: !6179)
!6184 = !DILocation(line: 347, column: 35, scope: !6179)
!6185 = !DILocation(line: 347, column: 32, scope: !6179)
!6186 = !DILocation(line: 347, column: 6, scope: !5890)
!6187 = !DILocation(line: 348, column: 3, scope: !6179)
!6188 = !DILocation(line: 349, column: 6, scope: !6189)
!6189 = distinct !DILexicalBlock(scope: !5890, file: !459, line: 349, column: 6)
!6190 = !DILocation(line: 349, column: 12, scope: !6189)
!6191 = !DILocation(line: 349, column: 17, scope: !6189)
!6192 = !DILocation(line: 349, column: 40, scope: !6189)
!6193 = !DILocation(line: 350, column: 17, scope: !6189)
!6194 = !DILocation(line: 350, column: 27, scope: !6189)
!6195 = !DILocation(line: 350, column: 20, scope: !6189)
!6196 = !DILocation(line: 350, column: 7, scope: !6189)
!6197 = !DILocation(line: 350, column: 6, scope: !6189)
!6198 = !DILocation(line: 350, column: 55, scope: !6189)
!6199 = !DILocation(line: 350, column: 61, scope: !6189)
!6200 = !DILocation(line: 350, column: 52, scope: !6189)
!6201 = !DILocation(line: 349, column: 6, scope: !5924)
!6202 = !DILocation(line: 351, column: 3, scope: !6189)
!6203 = !DILocation(line: 354, column: 7, scope: !6204)
!6204 = distinct !DILexicalBlock(scope: !5890, file: !459, line: 354, column: 6)
!6205 = !DILocation(line: 354, column: 6, scope: !6204)
!6206 = !DILocation(line: 354, column: 26, scope: !6204)
!6207 = !DILocation(line: 354, column: 32, scope: !6204)
!6208 = !DILocation(line: 354, column: 24, scope: !6204)
!6209 = !DILocation(line: 354, column: 21, scope: !6204)
!6210 = !DILocation(line: 354, column: 6, scope: !5890)
!6211 = !DILocation(line: 355, column: 3, scope: !6204)
!6212 = !DILocation(line: 356, column: 6, scope: !6213)
!6213 = distinct !DILexicalBlock(scope: !5890, file: !459, line: 356, column: 6)
!6214 = !DILocation(line: 356, column: 12, scope: !6213)
!6215 = !DILocation(line: 356, column: 16, scope: !6213)
!6216 = !DILocation(line: 357, column: 12, scope: !6213)
!6217 = !DILocation(line: 357, column: 22, scope: !6213)
!6218 = !DILocation(line: 357, column: 15, scope: !6213)
!6219 = !DILocation(line: 357, column: 38, scope: !6213)
!6220 = !DILocation(line: 357, column: 44, scope: !6213)
!6221 = !DILocation(line: 357, column: 49, scope: !6213)
!6222 = !DILocation(line: 357, column: 6, scope: !6213)
!6223 = !DILocation(line: 356, column: 6, scope: !5924)
!6224 = !DILocation(line: 358, column: 3, scope: !6213)
!6225 = !DILocation(line: 361, column: 7, scope: !6226)
!6226 = distinct !DILexicalBlock(scope: !5890, file: !459, line: 361, column: 6)
!6227 = !DILocation(line: 361, column: 6, scope: !6226)
!6228 = !DILocation(line: 361, column: 28, scope: !6226)
!6229 = !DILocation(line: 361, column: 34, scope: !6226)
!6230 = !DILocation(line: 361, column: 26, scope: !6226)
!6231 = !DILocation(line: 361, column: 23, scope: !6226)
!6232 = !DILocation(line: 361, column: 6, scope: !5890)
!6233 = !DILocation(line: 362, column: 3, scope: !6226)
!6234 = !DILocation(line: 363, column: 6, scope: !6235)
!6235 = distinct !DILexicalBlock(scope: !5890, file: !459, line: 363, column: 6)
!6236 = !DILocation(line: 363, column: 12, scope: !6235)
!6237 = !DILocation(line: 363, column: 16, scope: !6235)
!6238 = !DILocation(line: 364, column: 12, scope: !6235)
!6239 = !DILocation(line: 364, column: 22, scope: !6235)
!6240 = !DILocation(line: 364, column: 15, scope: !6235)
!6241 = !DILocation(line: 364, column: 39, scope: !6235)
!6242 = !DILocation(line: 364, column: 45, scope: !6235)
!6243 = !DILocation(line: 364, column: 50, scope: !6235)
!6244 = !DILocation(line: 364, column: 6, scope: !6235)
!6245 = !DILocation(line: 363, column: 6, scope: !5924)
!6246 = !DILocation(line: 365, column: 3, scope: !6235)
!6247 = !DILocalVariable(name: "tunnel_id", scope: !5890, file: !459, line: 369, type: !456)
!6248 = !DILocation(line: 369, column: 11, scope: !5890)
!6249 = !DILocation(line: 370, column: 7, scope: !6250)
!6250 = distinct !DILexicalBlock(scope: !5890, file: !459, line: 370, column: 6)
!6251 = !DILocation(line: 370, column: 6, scope: !6250)
!6252 = !DILocation(line: 370, column: 27, scope: !6250)
!6253 = !DILocation(line: 370, column: 33, scope: !6250)
!6254 = !DILocation(line: 370, column: 25, scope: !6250)
!6255 = !DILocation(line: 370, column: 22, scope: !6250)
!6256 = !DILocation(line: 370, column: 6, scope: !5890)
!6257 = !DILocation(line: 371, column: 3, scope: !6250)
!6258 = !DILocation(line: 372, column: 6, scope: !6259)
!6259 = distinct !DILexicalBlock(scope: !5890, file: !459, line: 372, column: 6)
!6260 = !DILocation(line: 372, column: 12, scope: !6259)
!6261 = !DILocation(line: 372, column: 6, scope: !5890)
!6262 = !DILocation(line: 373, column: 14, scope: !6263)
!6263 = distinct !DILexicalBlock(scope: !6259, file: !459, line: 372, column: 23)
!6264 = !DILocation(line: 373, column: 24, scope: !6263)
!6265 = !DILocation(line: 373, column: 17, scope: !6263)
!6266 = !DILocation(line: 373, column: 15, scope: !6263)
!6267 = !DILocation(line: 373, column: 13, scope: !6263)
!6268 = !DILocation(line: 374, column: 7, scope: !6269)
!6269 = distinct !DILexicalBlock(scope: !6263, file: !459, line: 374, column: 7)
!6270 = !DILocation(line: 374, column: 20, scope: !6269)
!6271 = !DILocation(line: 374, column: 26, scope: !6269)
!6272 = !DILocation(line: 374, column: 17, scope: !6269)
!6273 = !DILocation(line: 374, column: 7, scope: !6263)
!6274 = !DILocation(line: 375, column: 4, scope: !6269)
!6275 = !DILocation(line: 376, column: 2, scope: !6263)
!6276 = !DILocation(line: 419, column: 2, scope: !5890)
!6277 = !DILocation(line: 420, column: 1, scope: !5890)
!6278 = distinct !DISubprogram(name: "__bswap_64", scope: !6279, file: !6279, line: 109, type: !6280, isLocal: true, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !655)
!6279 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/byteswap.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--core--libcore.a")
!6280 = !DISubroutineType(types: !6281)
!6281 = !{!6282, !6282}
!6282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !562, line: 44, baseType: !406)
!6283 = !DILocalVariable(name: "__bsx", arg: 1, scope: !6278, file: !6279, line: 109, type: !6282)
!6284 = !DILocation(line: 109, column: 24, scope: !6278)
!6285 = !DILocation(line: 111, column: 29, scope: !6278)
!6286 = !DILocation(line: 111, column: 10, scope: !6278)
!6287 = !DILocation(line: 111, column: 3, scope: !6278)
