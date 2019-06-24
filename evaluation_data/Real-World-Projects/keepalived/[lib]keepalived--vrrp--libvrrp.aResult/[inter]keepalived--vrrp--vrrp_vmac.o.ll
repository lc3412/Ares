; ModuleID = './[inter]keepalived--vrrp--vrrp_vmac.o.i'
source_filename = "./[inter]keepalived--vrrp--vrrp_vmac.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._nl_handle = type { %struct.nl_sock*, i32, i32, i32, %struct._thread* }
%struct.nl_sock = type opaque
%struct._thread = type { i64, i32, %struct._thread_master*, i32 (%struct._thread*)*, i8*, %struct.timeval, %union.anon.2, %struct._thread_event*, %union.anon.4 }
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
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { i32, i32 }
%struct._thread_event = type { %struct._thread*, %struct._thread*, i64, i32, %struct.rb_node }
%union.anon.4 = type { %struct.rb_node }
%struct._interface = type { [16 x i8], i32, %struct.in_addr, %struct.in6_addr, i32, i8, i32, i16, [32 x i8], [32 x i8], i64, i32, i8, i32, %struct._interface*, i32, %struct._interface*, i8, %struct._garp_delay*, i8, i32, i32, i32, i32, i32, i8, %struct._list* }
%struct.in_addr = type { i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct._garp_delay = type { %struct.timeval, i8, %struct.timeval, i8, %struct.timeval, %struct.timeval, i32 }
%struct._ip_address = type { %struct.ifaddrmsg, %union.anon.0, %struct._interface*, i8*, i32, i32, i8, %union.anon.1, i8, %struct._static_track_group*, i8, i8, i8 }
%struct.ifaddrmsg = type { i8, i8, i8, i8, i32 }
%union.anon.0 = type { %struct.in6_addr }
%union.anon.1 = type { %struct.in6_addr }
%struct._static_track_group = type { i8*, %struct._vector*, %struct._list* }
%struct._vector = type { i32, i32, i8** }
%struct._vrrp_t = type { i16, i8*, %struct._vrrp_sgroup*, %struct._vrrp_stats*, %struct._interface*, i8, i8, i8, i32, i64, [16 x i8], %struct._list*, %struct._list*, %struct._list*, i32, i32, %struct.sockaddr_storage, i8, i8, %struct.sockaddr_storage, %struct._list*, i32, %struct.sockaddr_storage, i8, %struct.timeval, i32, %struct.timeval, %struct.timeval, i32, i32, i32, i8, i8, i32, i32, i32, i8, i8, i8, i32, i8, %struct._list*, %struct._list*, i8, i8, %struct._list*, %struct._list*, i32, i32, i32, i64, i8, i8, i64, %struct.timeval, i32, i32, i8, %struct._sock*, i32, i32, i32, i32, i8, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, i32, %struct.timeval, i8*, i64, i32, i8, [8 x i8], %struct._seq_counter, i32 }
%struct._vrrp_sgroup = type { i8*, %struct._vector*, %struct._list*, i32, i32, i32, i8, %struct._list*, %struct._list*, %struct._list*, %struct._list*, i8, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, i32, i32 }
%struct._vrrp_stats = type { i64, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, i64, i64 }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct._sock = type { i16, %struct.sockaddr_storage, i32, i32, i8, i32, i32, i32, %struct._thread* }
%struct._notify_script = type { i8**, i32, i32, i32, i32 }
%struct._seq_counter = type { i8, i32 }
%struct.rtattr = type { i16, i16 }
%struct.anon.5 = type { %struct.nlmsghdr, %struct.ifinfomsg, [256 x i8] }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.ifinfomsg = type { i8, i8, i16, i32, i32, i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.anon.7 = type { %struct.nlmsghdr, %struct.ifinfomsg }
%struct.anon.6 = type { %struct.nlmsghdr, %struct.ifinfomsg, [256 x i8] }

@.str = private unnamed_addr constant [8 x i8] c"macvlan\00", align 1
@macvlan_ll_kind = constant i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), align 8
@ll_addr = global [6 x i8] c"\00\00^\00\01\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Adding link-local address to vmac failed\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Deleting link-local address from vmac failed\00", align 1
@.str.3 = private unnamed_addr constant [97 x i8] c"vmac: Removing old VMAC interface %s due to conflicting interface or MAC for vrrp_instance %s!!!\00", align 1
@nl_cmd = external global %struct._nl_handle, align 8
@.str.4 = private unnamed_addr constant [63 x i8] c"vmac: Error removing VMAC interface %s for vrrp_instance %s!!!\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"(%s): Unable to create VMAC interface %s\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"(%s): Success creating VMAC interface %s\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"vmac: Error setting ADDR_GEN_MODE to NONE\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"BUG - Attempting to remove non VMAC i/f %s\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"Unable to find base interface for vrrp instance %s\00", align 1
@.str.10 = private unnamed_addr constant [62 x i8] c"vmac: Success removing VMAC interface %s for vrrp_instance %s\00", align 1
@garp_delay = common global %struct._list* null, align 8

; Function Attrs: nounwind uwtable
define zeroext i1 @add_link_local_address(%struct._interface*, %struct.in6_addr*) #0 !dbg !350 {
  %3 = alloca i1, align 1
  %4 = alloca %struct._interface*, align 8
  %5 = alloca %struct.in6_addr*, align 8
  %6 = alloca %struct._ip_address, align 8
  store %struct._interface* %0, %struct._interface** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._interface** %4, metadata !412, metadata !413), !dbg !414
  store %struct.in6_addr* %1, %struct.in6_addr** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.in6_addr** %5, metadata !415, metadata !413), !dbg !416
  call void @llvm.dbg.declare(metadata %struct._ip_address* %6, metadata !417, metadata !413), !dbg !475
  %7 = bitcast %struct._ip_address* %6 to i8*, !dbg !476
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 88, i32 8, i1 false), !dbg !476
  %8 = load %struct._interface*, %struct._interface** %4, align 8, !dbg !477
  %9 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %6, i32 0, i32 2, !dbg !478
  store %struct._interface* %8, %struct._interface** %9, align 8, !dbg !479
  %10 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %6, i32 0, i32 1, !dbg !480
  %11 = bitcast %union.anon.0* %10 to %struct.in6_addr*, !dbg !481
  %12 = load %struct.in6_addr*, %struct.in6_addr** %5, align 8, !dbg !482
  %13 = bitcast %struct.in6_addr* %11 to i8*, !dbg !483
  %14 = bitcast %struct.in6_addr* %12 to i8*, !dbg !483
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 16, i32 4, i1 false), !dbg !483
  %15 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %6, i32 0, i32 0, !dbg !484
  %16 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %15, i32 0, i32 0, !dbg !485
  store i8 10, i8* %16, align 8, !dbg !486
  %17 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %6, i32 0, i32 0, !dbg !487
  %18 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %17, i32 0, i32 1, !dbg !488
  store i8 64, i8* %18, align 1, !dbg !489
  %19 = load %struct._interface*, %struct._interface** %4, align 8, !dbg !490
  %20 = getelementptr inbounds %struct._interface, %struct._interface* %19, i32 0, i32 1, !dbg !491
  %21 = load i32, i32* %20, align 8, !dbg !491
  %22 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %6, i32 0, i32 0, !dbg !492
  %23 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %22, i32 0, i32 4, !dbg !493
  store i32 %21, i32* %23, align 4, !dbg !494
  %24 = call i32 @netlink_ipaddress(%struct._ip_address* %6, i32 1), !dbg !495
  %25 = icmp ne i32 %24, 1, !dbg !497
  br i1 %25, label %26, label %32, !dbg !498

; <label>:26:                                     ; preds = %2
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i32 0, i32 0)), !dbg !499
  %27 = load %struct._interface*, %struct._interface** %4, align 8, !dbg !501
  %28 = getelementptr inbounds %struct._interface, %struct._interface* %27, i32 0, i32 3, !dbg !502
  %29 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %28, i32 0, i32 0, !dbg !503
  %30 = bitcast %union.anon* %29 to [4 x i32]*, !dbg !504
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i64 0, i64 0, !dbg !501
  store i32 0, i32* %31, align 8, !dbg !505
  store i1 false, i1* %3, align 1, !dbg !506
  br label %39, !dbg !506

; <label>:32:                                     ; preds = %2
  %33 = load %struct._interface*, %struct._interface** %4, align 8, !dbg !507
  %34 = getelementptr inbounds %struct._interface, %struct._interface* %33, i32 0, i32 3, !dbg !508
  %35 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %6, i32 0, i32 1, !dbg !509
  %36 = bitcast %union.anon.0* %35 to %struct.in6_addr*, !dbg !510
  %37 = bitcast %struct.in6_addr* %34 to i8*, !dbg !510
  %38 = bitcast %struct.in6_addr* %36 to i8*, !dbg !510
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 16, i32 8, i1 false), !dbg !510
  store i1 true, i1* %3, align 1, !dbg !511
  br label %39, !dbg !511

; <label>:39:                                     ; preds = %32, %26
  %40 = load i1, i1* %3, align 1, !dbg !512
  ret i1 %40, !dbg !512
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @netlink_ipaddress(%struct._ip_address*, i32) #3

declare void @log_message(i32, i8*, ...) #3

; Function Attrs: nounwind uwtable
define zeroext i1 @replace_link_local_address(%struct._interface*) #0 !dbg !513 {
  %2 = alloca i1, align 1
  %3 = alloca %struct._interface*, align 8
  %4 = alloca %struct._ip_address, align 8
  %5 = alloca %struct.in6_addr, align 4
  store %struct._interface* %0, %struct._interface** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._interface** %3, metadata !516, metadata !413), !dbg !517
  call void @llvm.dbg.declare(metadata %struct._ip_address* %4, metadata !518, metadata !413), !dbg !519
  call void @llvm.dbg.declare(metadata %struct.in6_addr* %5, metadata !520, metadata !413), !dbg !521
  %6 = bitcast %struct._ip_address* %4 to i8*, !dbg !522
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 88, i32 8, i1 false), !dbg !522
  %7 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !523
  %8 = getelementptr inbounds %struct._interface, %struct._interface* %7, i32 0, i32 14, !dbg !524
  %9 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !524
  %10 = getelementptr inbounds %struct._interface, %struct._interface* %9, i32 0, i32 8, !dbg !525
  %11 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i32 0, i32 0, !dbg !523
  call void @make_link_local_address(%struct.in6_addr* %5, i8* %11), !dbg !526
  %12 = bitcast %struct.in6_addr* %5 to i8*, !dbg !527
  %13 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !529
  %14 = getelementptr inbounds %struct._interface, %struct._interface* %13, i32 0, i32 3, !dbg !530
  %15 = bitcast %struct.in6_addr* %14 to i8*, !dbg !531
  %16 = call zeroext i1 @inaddr_equal(i16 zeroext 10, i8* %12, i8* %15), !dbg !532
  br i1 %16, label %17, label %18, !dbg !533

; <label>:17:                                     ; preds = %1
  store i1 true, i1* %2, align 1, !dbg !534
  br label %65, !dbg !534

; <label>:18:                                     ; preds = %1
  %19 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !535
  %20 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %4, i32 0, i32 2, !dbg !536
  store %struct._interface* %19, %struct._interface** %20, align 8, !dbg !537
  %21 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %4, i32 0, i32 1, !dbg !538
  %22 = bitcast %union.anon.0* %21 to %struct.in6_addr*, !dbg !539
  %23 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !540
  %24 = getelementptr inbounds %struct._interface, %struct._interface* %23, i32 0, i32 3, !dbg !541
  %25 = bitcast %struct.in6_addr* %22 to i8*, !dbg !541
  %26 = bitcast %struct.in6_addr* %24 to i8*, !dbg !541
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %25, i8* %26, i64 16, i32 8, i1 false), !dbg !541
  %27 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %4, i32 0, i32 0, !dbg !542
  %28 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %27, i32 0, i32 0, !dbg !543
  store i8 10, i8* %28, align 8, !dbg !544
  %29 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %4, i32 0, i32 0, !dbg !545
  %30 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %29, i32 0, i32 1, !dbg !546
  store i8 64, i8* %30, align 1, !dbg !547
  %31 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !548
  %32 = getelementptr inbounds %struct._interface, %struct._interface* %31, i32 0, i32 1, !dbg !549
  %33 = load i32, i32* %32, align 8, !dbg !549
  %34 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %4, i32 0, i32 0, !dbg !550
  %35 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %34, i32 0, i32 4, !dbg !551
  store i32 %33, i32* %35, align 4, !dbg !552
  %36 = call i32 @netlink_ipaddress(%struct._ip_address* %4, i32 0), !dbg !553
  %37 = icmp ne i32 %36, 1, !dbg !555
  br i1 %37, label %38, label %39, !dbg !556

; <label>:38:                                     ; preds = %18
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i32 0, i32 0)), !dbg !557
  br label %45, !dbg !557

; <label>:39:                                     ; preds = %18
  %40 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !558
  %41 = getelementptr inbounds %struct._interface, %struct._interface* %40, i32 0, i32 3, !dbg !559
  %42 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %41, i32 0, i32 0, !dbg !560
  %43 = bitcast %union.anon* %42 to [4 x i32]*, !dbg !561
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %43, i64 0, i64 0, !dbg !558
  store i32 0, i32* %44, align 8, !dbg !562
  br label %45

; <label>:45:                                     ; preds = %39, %38
  %46 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %4, i32 0, i32 1, !dbg !563
  %47 = bitcast %union.anon.0* %46 to %struct.in6_addr*, !dbg !564
  %48 = bitcast %struct.in6_addr* %47 to i8*, !dbg !565
  %49 = bitcast %struct.in6_addr* %5 to i8*, !dbg !565
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 16, i32 4, i1 false), !dbg !565
  %50 = call i32 @netlink_ipaddress(%struct._ip_address* %4, i32 1), !dbg !566
  %51 = icmp ne i32 %50, 1, !dbg !568
  br i1 %51, label %52, label %58, !dbg !569

; <label>:52:                                     ; preds = %45
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i32 0, i32 0)), !dbg !570
  %53 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !572
  %54 = getelementptr inbounds %struct._interface, %struct._interface* %53, i32 0, i32 3, !dbg !573
  %55 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %54, i32 0, i32 0, !dbg !574
  %56 = bitcast %union.anon* %55 to [4 x i32]*, !dbg !575
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i64 0, i64 0, !dbg !572
  store i32 0, i32* %57, align 8, !dbg !576
  store i1 false, i1* %2, align 1, !dbg !577
  br label %65, !dbg !577

; <label>:58:                                     ; preds = %45
  %59 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !578
  %60 = getelementptr inbounds %struct._interface, %struct._interface* %59, i32 0, i32 3, !dbg !579
  %61 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %4, i32 0, i32 1, !dbg !580
  %62 = bitcast %union.anon.0* %61 to %struct.in6_addr*, !dbg !581
  %63 = bitcast %struct.in6_addr* %60 to i8*, !dbg !581
  %64 = bitcast %struct.in6_addr* %62 to i8*, !dbg !581
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %64, i64 16, i32 8, i1 false), !dbg !581
  store i1 true, i1* %2, align 1, !dbg !582
  br label %65, !dbg !582

; <label>:65:                                     ; preds = %58, %52, %17
  %66 = load i1, i1* %2, align 1, !dbg !583
  ret i1 %66, !dbg !583
}

; Function Attrs: nounwind uwtable
define internal void @make_link_local_address(%struct.in6_addr*, i8*) #0 !dbg !584 {
  %3 = alloca %struct.in6_addr*, align 8
  %4 = alloca i8*, align 8
  store %struct.in6_addr* %0, %struct.in6_addr** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.in6_addr** %3, metadata !589, metadata !413), !dbg !590
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !591, metadata !413), !dbg !592
  %5 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8, !dbg !593
  %6 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %5, i32 0, i32 0, !dbg !594
  %7 = bitcast %union.anon* %6 to [16 x i8]*, !dbg !595
  %8 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0, !dbg !593
  store i8 -2, i8* %8, align 4, !dbg !596
  %9 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8, !dbg !597
  %10 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %9, i32 0, i32 0, !dbg !598
  %11 = bitcast %union.anon* %10 to [16 x i8]*, !dbg !599
  %12 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 1, !dbg !597
  store i8 -128, i8* %12, align 1, !dbg !600
  %13 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8, !dbg !601
  %14 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %13, i32 0, i32 0, !dbg !602
  %15 = bitcast %union.anon* %14 to [8 x i16]*, !dbg !603
  %16 = getelementptr inbounds [8 x i16], [8 x i16]* %15, i64 0, i64 1, !dbg !601
  store i16 0, i16* %16, align 2, !dbg !604
  %17 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8, !dbg !605
  %18 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %17, i32 0, i32 0, !dbg !606
  %19 = bitcast %union.anon* %18 to [4 x i32]*, !dbg !607
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 1, !dbg !605
  store i32 0, i32* %20, align 4, !dbg !608
  %21 = load i8*, i8** %4, align 8, !dbg !609
  %22 = getelementptr inbounds i8, i8* %21, i64 0, !dbg !609
  %23 = load i8, i8* %22, align 1, !dbg !609
  %24 = zext i8 %23 to i32, !dbg !609
  %25 = xor i32 %24, 2, !dbg !610
  %26 = trunc i32 %25 to i8, !dbg !609
  %27 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8, !dbg !611
  %28 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %27, i32 0, i32 0, !dbg !612
  %29 = bitcast %union.anon* %28 to [16 x i8]*, !dbg !613
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i64 0, i64 8, !dbg !611
  store i8 %26, i8* %30, align 4, !dbg !614
  %31 = load i8*, i8** %4, align 8, !dbg !615
  %32 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !615
  %33 = load i8, i8* %32, align 1, !dbg !615
  %34 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8, !dbg !616
  %35 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %34, i32 0, i32 0, !dbg !617
  %36 = bitcast %union.anon* %35 to [16 x i8]*, !dbg !618
  %37 = getelementptr inbounds [16 x i8], [16 x i8]* %36, i64 0, i64 9, !dbg !616
  store i8 %33, i8* %37, align 1, !dbg !619
  %38 = load i8*, i8** %4, align 8, !dbg !620
  %39 = getelementptr inbounds i8, i8* %38, i64 2, !dbg !620
  %40 = load i8, i8* %39, align 1, !dbg !620
  %41 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8, !dbg !621
  %42 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %41, i32 0, i32 0, !dbg !622
  %43 = bitcast %union.anon* %42 to [16 x i8]*, !dbg !623
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %43, i64 0, i64 10, !dbg !621
  store i8 %40, i8* %44, align 2, !dbg !624
  %45 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8, !dbg !625
  %46 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %45, i32 0, i32 0, !dbg !626
  %47 = bitcast %union.anon* %46 to [16 x i8]*, !dbg !627
  %48 = getelementptr inbounds [16 x i8], [16 x i8]* %47, i64 0, i64 11, !dbg !625
  store i8 -1, i8* %48, align 1, !dbg !628
  %49 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8, !dbg !629
  %50 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %49, i32 0, i32 0, !dbg !630
  %51 = bitcast %union.anon* %50 to [16 x i8]*, !dbg !631
  %52 = getelementptr inbounds [16 x i8], [16 x i8]* %51, i64 0, i64 12, !dbg !629
  store i8 -2, i8* %52, align 4, !dbg !632
  %53 = load i8*, i8** %4, align 8, !dbg !633
  %54 = getelementptr inbounds i8, i8* %53, i64 3, !dbg !633
  %55 = load i8, i8* %54, align 1, !dbg !633
  %56 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8, !dbg !634
  %57 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %56, i32 0, i32 0, !dbg !635
  %58 = bitcast %union.anon* %57 to [16 x i8]*, !dbg !636
  %59 = getelementptr inbounds [16 x i8], [16 x i8]* %58, i64 0, i64 13, !dbg !634
  store i8 %55, i8* %59, align 1, !dbg !637
  %60 = load i8*, i8** %4, align 8, !dbg !638
  %61 = getelementptr inbounds i8, i8* %60, i64 4, !dbg !638
  %62 = load i8, i8* %61, align 1, !dbg !638
  %63 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8, !dbg !639
  %64 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %63, i32 0, i32 0, !dbg !640
  %65 = bitcast %union.anon* %64 to [16 x i8]*, !dbg !641
  %66 = getelementptr inbounds [16 x i8], [16 x i8]* %65, i64 0, i64 14, !dbg !639
  store i8 %62, i8* %66, align 2, !dbg !642
  %67 = load i8*, i8** %4, align 8, !dbg !643
  %68 = getelementptr inbounds i8, i8* %67, i64 5, !dbg !643
  %69 = load i8, i8* %68, align 1, !dbg !643
  %70 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8, !dbg !644
  %71 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %70, i32 0, i32 0, !dbg !645
  %72 = bitcast %union.anon* %71 to [16 x i8]*, !dbg !646
  %73 = getelementptr inbounds [16 x i8], [16 x i8]* %72, i64 0, i64 15, !dbg !644
  store i8 %69, i8* %73, align 1, !dbg !647
  ret void, !dbg !648
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @inaddr_equal(i16 zeroext, i8*, i8*) #4 !dbg !649 {
  %4 = alloca i1, align 1
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.in6_addr*, align 8
  %9 = alloca %struct.in6_addr*, align 8
  %10 = alloca %struct.in_addr*, align 8
  %11 = alloca %struct.in_addr*, align 8
  store i16 %0, i16* %5, align 2
  call void @llvm.dbg.declare(metadata i16* %5, metadata !653, metadata !413), !dbg !654
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !655, metadata !413), !dbg !656
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !657, metadata !413), !dbg !658
  %12 = load i16, i16* %5, align 2, !dbg !659
  %13 = zext i16 %12 to i32, !dbg !659
  %14 = icmp eq i32 %13, 10, !dbg !661
  br i1 %14, label %15, label %26, !dbg !662

; <label>:15:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.in6_addr** %8, metadata !663, metadata !413), !dbg !665
  %16 = load i8*, i8** %6, align 8, !dbg !666
  %17 = bitcast i8* %16 to %struct.in6_addr*, !dbg !667
  store %struct.in6_addr* %17, %struct.in6_addr** %8, align 8, !dbg !665
  call void @llvm.dbg.declare(metadata %struct.in6_addr** %9, metadata !668, metadata !413), !dbg !669
  %18 = load i8*, i8** %7, align 8, !dbg !670
  %19 = bitcast i8* %18 to %struct.in6_addr*, !dbg !671
  store %struct.in6_addr* %19, %struct.in6_addr** %9, align 8, !dbg !669
  %20 = load %struct.in6_addr*, %struct.in6_addr** %8, align 8, !dbg !672
  %21 = load %struct.in6_addr*, %struct.in6_addr** %9, align 8, !dbg !674
  %22 = call i32 @__ip6_addr_equal(%struct.in6_addr* %20, %struct.in6_addr* %21), !dbg !675
  %23 = icmp ne i32 %22, 0, !dbg !675
  br i1 %23, label %24, label %25, !dbg !676

; <label>:24:                                     ; preds = %15
  store i1 true, i1* %4, align 1, !dbg !677
  br label %46, !dbg !677

; <label>:25:                                     ; preds = %15
  br label %45, !dbg !678

; <label>:26:                                     ; preds = %3
  %27 = load i16, i16* %5, align 2, !dbg !679
  %28 = zext i16 %27 to i32, !dbg !679
  %29 = icmp eq i32 %28, 2, !dbg !682
  br i1 %29, label %30, label %44, !dbg !679

; <label>:30:                                     ; preds = %26
  call void @llvm.dbg.declare(metadata %struct.in_addr** %10, metadata !683, metadata !413), !dbg !685
  %31 = load i8*, i8** %6, align 8, !dbg !686
  %32 = bitcast i8* %31 to %struct.in_addr*, !dbg !687
  store %struct.in_addr* %32, %struct.in_addr** %10, align 8, !dbg !685
  call void @llvm.dbg.declare(metadata %struct.in_addr** %11, metadata !688, metadata !413), !dbg !689
  %33 = load i8*, i8** %7, align 8, !dbg !690
  %34 = bitcast i8* %33 to %struct.in_addr*, !dbg !691
  store %struct.in_addr* %34, %struct.in_addr** %11, align 8, !dbg !689
  %35 = load %struct.in_addr*, %struct.in_addr** %10, align 8, !dbg !692
  %36 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %35, i32 0, i32 0, !dbg !694
  %37 = load i32, i32* %36, align 4, !dbg !694
  %38 = load %struct.in_addr*, %struct.in_addr** %11, align 8, !dbg !695
  %39 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %38, i32 0, i32 0, !dbg !696
  %40 = load i32, i32* %39, align 4, !dbg !696
  %41 = icmp eq i32 %37, %40, !dbg !697
  br i1 %41, label %42, label %43, !dbg !698

; <label>:42:                                     ; preds = %30
  store i1 true, i1* %4, align 1, !dbg !699
  br label %46, !dbg !699

; <label>:43:                                     ; preds = %30
  br label %44, !dbg !700

; <label>:44:                                     ; preds = %43, %26
  br label %45

; <label>:45:                                     ; preds = %44, %25
  store i1 false, i1* %4, align 1, !dbg !701
  br label %46, !dbg !701

; <label>:46:                                     ; preds = %45, %42, %24
  %47 = load i1, i1* %4, align 1, !dbg !702
  ret i1 %47, !dbg !702
}

; Function Attrs: nounwind uwtable
define zeroext i1 @netlink_link_add_vmac(%struct._vrrp_t*) #0 !dbg !703 {
  %2 = alloca i1, align 1
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca %struct.rtattr*, align 8
  %5 = alloca %struct.rtattr*, align 8
  %6 = alloca %struct._interface*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.anon.5, align 4
  %9 = alloca %struct.rtattr*, align 8
  %10 = alloca %struct._ip_address, align 8
  store %struct._vrrp_t* %0, %struct._vrrp_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !963, metadata !413), !dbg !964
  call void @llvm.dbg.declare(metadata %struct.rtattr** %4, metadata !965, metadata !413), !dbg !971
  call void @llvm.dbg.declare(metadata %struct.rtattr** %5, metadata !972, metadata !413), !dbg !973
  call void @llvm.dbg.declare(metadata %struct._interface** %6, metadata !974, metadata !413), !dbg !975
  call void @llvm.dbg.declare(metadata i8* %7, metadata !976, metadata !413), !dbg !977
  store i8 1, i8* %7, align 1, !dbg !977
  call void @llvm.dbg.declare(metadata %struct.anon.5* %8, metadata !978, metadata !413), !dbg !1004
  %11 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1005
  %12 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %11, i32 0, i32 4, !dbg !1007
  %13 = load %struct._interface*, %struct._interface** %12, align 8, !dbg !1007
  %14 = icmp ne %struct._interface* %13, null, !dbg !1005
  br i1 %14, label %15, label %24, !dbg !1008

; <label>:15:                                     ; preds = %1
  %16 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1009
  %17 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %16, i32 0, i32 9, !dbg !1011
  %18 = call zeroext i1 @__test_bit(i32 1, i64* %17), !dbg !1012
  br i1 %18, label %24, label %19, !dbg !1013

; <label>:19:                                     ; preds = %15
  %20 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1014
  %21 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %20, i32 0, i32 36, !dbg !1016
  %22 = load i8, i8* %21, align 4, !dbg !1016
  %23 = icmp ne i8 %22, 0, !dbg !1014
  br i1 %23, label %25, label %24, !dbg !1017

; <label>:24:                                     ; preds = %19, %15, %1
  store i1 false, i1* %2, align 1, !dbg !1018
  br label %477, !dbg !1018

; <label>:25:                                     ; preds = %19
  %26 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1019
  %27 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %26, i32 0, i32 0, !dbg !1021
  %28 = load i16, i16* %27, align 8, !dbg !1021
  %29 = zext i16 %28 to i32, !dbg !1019
  %30 = icmp eq i32 %29, 10, !dbg !1022
  br i1 %30, label %31, label %32, !dbg !1023

; <label>:31:                                     ; preds = %25
  store i8 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @ll_addr, i64 0, i64 4), align 1, !dbg !1024
  br label %33, !dbg !1025

; <label>:32:                                     ; preds = %25
  store i8 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @ll_addr, i64 0, i64 4), align 1, !dbg !1026
  br label %33

; <label>:33:                                     ; preds = %32, %31
  %34 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1027
  %35 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %34, i32 0, i32 36, !dbg !1028
  %36 = load i8, i8* %35, align 4, !dbg !1028
  store i8 %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @ll_addr, i64 0, i64 5), align 1, !dbg !1029
  %37 = bitcast %struct.anon.5* %8 to i8*, !dbg !1030
  call void @llvm.memset.p0i8.i64(i8* %37, i8 0, i64 288, i32 4, i1 false), !dbg !1030
  %38 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1031
  %39 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %38, i32 0, i32 10, !dbg !1033
  %40 = getelementptr inbounds [16 x i8], [16 x i8]* %39, i32 0, i32 0, !dbg !1031
  %41 = call %struct._interface* @if_get_by_ifname(i8* %40, i32 2), !dbg !1034
  store %struct._interface* %41, %struct._interface** %6, align 8, !dbg !1035
  %42 = icmp ne %struct._interface* %41, null, !dbg !1035
  br i1 %42, label %43, label %104, !dbg !1036

; <label>:43:                                     ; preds = %33
  %44 = load %struct._interface*, %struct._interface** %6, align 8, !dbg !1037
  %45 = getelementptr inbounds %struct._interface, %struct._interface* %44, i32 0, i32 1, !dbg !1038
  %46 = load i32, i32* %45, align 8, !dbg !1038
  %47 = icmp ne i32 %46, 0, !dbg !1037
  br i1 %47, label %48, label %104, !dbg !1039

; <label>:48:                                     ; preds = %43
  %49 = load %struct._interface*, %struct._interface** %6, align 8, !dbg !1041
  %50 = getelementptr inbounds %struct._interface, %struct._interface* %49, i32 0, i32 8, !dbg !1044
  %51 = getelementptr inbounds [32 x i8], [32 x i8]* %50, i32 0, i32 0, !dbg !1041
  %52 = call i32 @memcmp(i8* %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @ll_addr, i32 0, i32 0), i64 6) #6, !dbg !1045
  %53 = icmp ne i32 %52, 0, !dbg !1046
  br i1 %53, label %64, label %54, !dbg !1047

; <label>:54:                                     ; preds = %48
  %55 = load %struct._interface*, %struct._interface** %6, align 8, !dbg !1048
  %56 = getelementptr inbounds %struct._interface, %struct._interface* %55, i32 0, i32 13, !dbg !1049
  %57 = load i32, i32* %56, align 8, !dbg !1049
  %58 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1050
  %59 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %58, i32 0, i32 4, !dbg !1051
  %60 = load %struct._interface*, %struct._interface** %59, align 8, !dbg !1051
  %61 = getelementptr inbounds %struct._interface, %struct._interface* %60, i32 0, i32 1, !dbg !1052
  %62 = load i32, i32* %61, align 8, !dbg !1052
  %63 = icmp ne i32 %57, %62, !dbg !1053
  br i1 %63, label %64, label %102, !dbg !1054

; <label>:64:                                     ; preds = %54, %48
  %65 = load %struct._interface*, %struct._interface** %6, align 8, !dbg !1056
  %66 = getelementptr inbounds %struct._interface, %struct._interface* %65, i32 0, i32 12, !dbg !1059
  %67 = load i8, i8* %66, align 4, !dbg !1059
  %68 = trunc i8 %67 to i1, !dbg !1059
  br i1 %68, label %69, label %101, !dbg !1060

; <label>:69:                                     ; preds = %64
  %70 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1061
  %71 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %70, i32 0, i32 10, !dbg !1063
  %72 = getelementptr inbounds [16 x i8], [16 x i8]* %71, i32 0, i32 0, !dbg !1061
  %73 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1064
  %74 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %73, i32 0, i32 1, !dbg !1065
  %75 = load i8*, i8** %74, align 8, !dbg !1065
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.3, i32 0, i32 0), i8* %72, i8* %75), !dbg !1066
  %76 = bitcast %struct.anon.5* %8 to i8*, !dbg !1067
  call void @llvm.memset.p0i8.i64(i8* %76, i8 0, i64 288, i32 4, i1 false), !dbg !1067
  %77 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 0, !dbg !1068
  %78 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %77, i32 0, i32 0, !dbg !1069
  store i32 32, i32* %78, align 4, !dbg !1070
  %79 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 0, !dbg !1071
  %80 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %79, i32 0, i32 2, !dbg !1072
  store i16 1, i16* %80, align 2, !dbg !1073
  %81 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 0, !dbg !1074
  %82 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %81, i32 0, i32 1, !dbg !1075
  store i16 17, i16* %82, align 4, !dbg !1076
  %83 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 1, !dbg !1077
  %84 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %83, i32 0, i32 0, !dbg !1078
  store i8 2, i8* %84, align 4, !dbg !1079
  %85 = load %struct._interface*, %struct._interface** %6, align 8, !dbg !1080
  %86 = getelementptr inbounds %struct._interface, %struct._interface* %85, i32 0, i32 1, !dbg !1081
  %87 = load i32, i32* %86, align 8, !dbg !1081
  %88 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 1, !dbg !1082
  %89 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %88, i32 0, i32 3, !dbg !1083
  store i32 %87, i32* %89, align 4, !dbg !1084
  %90 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 0, !dbg !1085
  %91 = call i64 @netlink_talk(%struct._nl_handle* @nl_cmd, %struct.nlmsghdr* %90), !dbg !1087
  %92 = icmp slt i64 %91, 0, !dbg !1088
  br i1 %92, label %93, label %100, !dbg !1089

; <label>:93:                                     ; preds = %69
  %94 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1090
  %95 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %94, i32 0, i32 10, !dbg !1092
  %96 = getelementptr inbounds [16 x i8], [16 x i8]* %95, i32 0, i32 0, !dbg !1090
  %97 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1093
  %98 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %97, i32 0, i32 1, !dbg !1094
  %99 = load i8*, i8** %98, align 8, !dbg !1094
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i32 0, i32 0), i8* %96, i8* %99), !dbg !1095
  store i1 false, i1* %2, align 1, !dbg !1096
  br label %477, !dbg !1096

; <label>:100:                                    ; preds = %69
  br label %101, !dbg !1097

; <label>:101:                                    ; preds = %100, %64
  br label %103, !dbg !1098

; <label>:102:                                    ; preds = %54
  store i8 0, i8* %7, align 1, !dbg !1099
  br label %103

; <label>:103:                                    ; preds = %102, %101
  br label %104, !dbg !1100

; <label>:104:                                    ; preds = %103, %43, %33
  %105 = load i8, i8* %7, align 1, !dbg !1101
  %106 = trunc i8 %105 to i1, !dbg !1101
  br i1 %106, label %107, label %262, !dbg !1103

; <label>:107:                                    ; preds = %104
  %108 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1104
  %109 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %108, i32 0, i32 4, !dbg !1106
  %110 = load %struct._interface*, %struct._interface** %109, align 8, !dbg !1106
  %111 = getelementptr inbounds %struct._interface, %struct._interface* %110, i32 0, i32 14, !dbg !1107
  %112 = load %struct._interface*, %struct._interface** %111, align 8, !dbg !1107
  %113 = getelementptr inbounds %struct._interface, %struct._interface* %112, i32 0, i32 1, !dbg !1108
  %114 = load i32, i32* %113, align 8, !dbg !1108
  %115 = icmp ne i32 %114, 0, !dbg !1104
  br i1 %115, label %116, label %262, !dbg !1109

; <label>:116:                                    ; preds = %107
  %117 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 0, !dbg !1110
  %118 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %117, i32 0, i32 0, !dbg !1112
  store i32 32, i32* %118, align 4, !dbg !1113
  %119 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 0, !dbg !1114
  %120 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %119, i32 0, i32 2, !dbg !1115
  store i16 1537, i16* %120, align 2, !dbg !1116
  %121 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 0, !dbg !1117
  %122 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %121, i32 0, i32 1, !dbg !1118
  store i16 16, i16* %122, align 4, !dbg !1119
  %123 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 1, !dbg !1120
  %124 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %123, i32 0, i32 0, !dbg !1121
  store i8 2, i8* %124, align 4, !dbg !1122
  %125 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 0, !dbg !1123
  %126 = bitcast %struct.nlmsghdr* %125 to i8*, !dbg !1124
  %127 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 0, !dbg !1123
  %128 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %127, i32 0, i32 0, !dbg !1125
  %129 = load i32, i32* %128, align 4, !dbg !1125
  %130 = add i32 %129, 4, !dbg !1126
  %131 = sub i32 %130, 1, !dbg !1127
  %132 = and i32 %131, -4, !dbg !1128
  %133 = zext i32 %132 to i64, !dbg !1125
  %134 = getelementptr i8, i8* %126, i64 %133, !dbg !1125
  %135 = bitcast i8* %134 to %struct.rtattr*, !dbg !1129
  store %struct.rtattr* %135, %struct.rtattr** %4, align 8, !dbg !1130
  %136 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 0, !dbg !1131
  %137 = call i32 @addattr_l(%struct.nlmsghdr* %136, i64 288, i16 zeroext 18, i8* null, i64 0), !dbg !1132
  %138 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 0, !dbg !1133
  %139 = load i8*, i8** @macvlan_ll_kind, align 8, !dbg !1134
  %140 = load i8*, i8** @macvlan_ll_kind, align 8, !dbg !1135
  %141 = call i64 @strlen(i8* %140) #6, !dbg !1136
  %142 = call i32 @addattr_l(%struct.nlmsghdr* %138, i64 288, i16 zeroext 1, i8* %139, i64 %141), !dbg !1137
  %143 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 0, !dbg !1139
  %144 = bitcast %struct.nlmsghdr* %143 to i8*, !dbg !1140
  %145 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 0, !dbg !1139
  %146 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %145, i32 0, i32 0, !dbg !1141
  %147 = load i32, i32* %146, align 4, !dbg !1141
  %148 = add i32 %147, 4, !dbg !1142
  %149 = sub i32 %148, 1, !dbg !1143
  %150 = and i32 %149, -4, !dbg !1144
  %151 = zext i32 %150 to i64, !dbg !1141
  %152 = getelementptr i8, i8* %144, i64 %151, !dbg !1141
  %153 = bitcast i8* %152 to %struct.rtattr*, !dbg !1145
  store %struct.rtattr* %153, %struct.rtattr** %5, align 8, !dbg !1146
  %154 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 0, !dbg !1147
  %155 = call i32 @addattr_l(%struct.nlmsghdr* %154, i64 288, i16 zeroext 2, i8* null, i64 0), !dbg !1148
  %156 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 0, !dbg !1149
  %157 = call i32 @addattr32(%struct.nlmsghdr* %156, i64 288, i16 zeroext 1, i32 1), !dbg !1150
  %158 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 0, !dbg !1151
  %159 = bitcast %struct.nlmsghdr* %158 to i8*, !dbg !1152
  %160 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 0, !dbg !1151
  %161 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %160, i32 0, i32 0, !dbg !1153
  %162 = load i32, i32* %161, align 4, !dbg !1153
  %163 = add i32 %162, 4, !dbg !1154
  %164 = sub i32 %163, 1, !dbg !1155
  %165 = and i32 %164, -4, !dbg !1156
  %166 = zext i32 %165 to i64, !dbg !1153
  %167 = getelementptr i8, i8* %159, i64 %166, !dbg !1153
  %168 = load %struct.rtattr*, %struct.rtattr** %5, align 8, !dbg !1157
  %169 = bitcast %struct.rtattr* %168 to i8*, !dbg !1156
  %170 = ptrtoint i8* %167 to i64, !dbg !1158
  %171 = ptrtoint i8* %169 to i64, !dbg !1158
  %172 = sub i64 %170, %171, !dbg !1158
  %173 = trunc i64 %172 to i16, !dbg !1159
  %174 = load %struct.rtattr*, %struct.rtattr** %5, align 8, !dbg !1160
  %175 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %174, i32 0, i32 0, !dbg !1161
  store i16 %173, i16* %175, align 2, !dbg !1162
  %176 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 0, !dbg !1163
  %177 = bitcast %struct.nlmsghdr* %176 to i8*, !dbg !1164
  %178 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 0, !dbg !1163
  %179 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %178, i32 0, i32 0, !dbg !1165
  %180 = load i32, i32* %179, align 4, !dbg !1165
  %181 = add i32 %180, 4, !dbg !1166
  %182 = sub i32 %181, 1, !dbg !1167
  %183 = and i32 %182, -4, !dbg !1168
  %184 = zext i32 %183 to i64, !dbg !1165
  %185 = getelementptr i8, i8* %177, i64 %184, !dbg !1165
  %186 = load %struct.rtattr*, %struct.rtattr** %4, align 8, !dbg !1169
  %187 = bitcast %struct.rtattr* %186 to i8*, !dbg !1168
  %188 = ptrtoint i8* %185 to i64, !dbg !1170
  %189 = ptrtoint i8* %187 to i64, !dbg !1170
  %190 = sub i64 %188, %189, !dbg !1170
  %191 = trunc i64 %190 to i16, !dbg !1171
  %192 = load %struct.rtattr*, %struct.rtattr** %4, align 8, !dbg !1172
  %193 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %192, i32 0, i32 0, !dbg !1173
  store i16 %191, i16* %193, align 2, !dbg !1174
  %194 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 0, !dbg !1175
  %195 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1176
  %196 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %195, i32 0, i32 4, !dbg !1177
  %197 = load %struct._interface*, %struct._interface** %196, align 8, !dbg !1177
  %198 = getelementptr inbounds %struct._interface, %struct._interface* %197, i32 0, i32 14, !dbg !1178
  %199 = load %struct._interface*, %struct._interface** %198, align 8, !dbg !1178
  %200 = getelementptr inbounds %struct._interface, %struct._interface* %199, i32 0, i32 1, !dbg !1179
  %201 = load i32, i32* %200, align 8, !dbg !1179
  %202 = call i32 @addattr32(%struct.nlmsghdr* %194, i64 288, i16 zeroext 5, i32 %201), !dbg !1180
  %203 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 0, !dbg !1181
  %204 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1182
  %205 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %204, i32 0, i32 10, !dbg !1183
  %206 = getelementptr inbounds [16 x i8], [16 x i8]* %205, i32 0, i32 0, !dbg !1182
  %207 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1184
  %208 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %207, i32 0, i32 10, !dbg !1185
  %209 = getelementptr inbounds [16 x i8], [16 x i8]* %208, i32 0, i32 0, !dbg !1184
  %210 = call i64 @strlen(i8* %209) #6, !dbg !1186
  %211 = call i32 @addattr_l(%struct.nlmsghdr* %203, i64 288, i16 zeroext 3, i8* %206, i64 %210), !dbg !1187
  %212 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 0, !dbg !1188
  %213 = call i32 @addattr_l(%struct.nlmsghdr* %212, i64 288, i16 zeroext 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @ll_addr, i32 0, i32 0), i64 6), !dbg !1189
  %214 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1190
  %215 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %214, i32 0, i32 4, !dbg !1192
  %216 = load %struct._interface*, %struct._interface** %215, align 8, !dbg !1192
  %217 = getelementptr inbounds %struct._interface, %struct._interface* %216, i32 0, i32 14, !dbg !1193
  %218 = load %struct._interface*, %struct._interface** %217, align 8, !dbg !1193
  %219 = getelementptr inbounds %struct._interface, %struct._interface* %218, i32 0, i32 16, !dbg !1194
  %220 = load %struct._interface*, %struct._interface** %219, align 8, !dbg !1194
  %221 = icmp ne %struct._interface* %220, null, !dbg !1190
  br i1 %221, label %222, label %234, !dbg !1195

; <label>:222:                                    ; preds = %116
  %223 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 0, !dbg !1196
  %224 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1197
  %225 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %224, i32 0, i32 4, !dbg !1198
  %226 = load %struct._interface*, %struct._interface** %225, align 8, !dbg !1198
  %227 = getelementptr inbounds %struct._interface, %struct._interface* %226, i32 0, i32 14, !dbg !1199
  %228 = load %struct._interface*, %struct._interface** %227, align 8, !dbg !1199
  %229 = getelementptr inbounds %struct._interface, %struct._interface* %228, i32 0, i32 16, !dbg !1200
  %230 = load %struct._interface*, %struct._interface** %229, align 8, !dbg !1200
  %231 = getelementptr inbounds %struct._interface, %struct._interface* %230, i32 0, i32 1, !dbg !1201
  %232 = load i32, i32* %231, align 8, !dbg !1201
  %233 = call i32 @addattr32(%struct.nlmsghdr* %223, i64 288, i16 zeroext 10, i32 %232), !dbg !1202
  br label %234, !dbg !1202

; <label>:234:                                    ; preds = %222, %116
  %235 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 0, !dbg !1203
  %236 = call i64 @netlink_talk(%struct._nl_handle* @nl_cmd, %struct.nlmsghdr* %235), !dbg !1205
  %237 = icmp slt i64 %236, 0, !dbg !1206
  br i1 %237, label %238, label %245, !dbg !1207

; <label>:238:                                    ; preds = %234
  %239 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1208
  %240 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %239, i32 0, i32 1, !dbg !1210
  %241 = load i8*, i8** %240, align 8, !dbg !1210
  %242 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1211
  %243 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %242, i32 0, i32 10, !dbg !1212
  %244 = getelementptr inbounds [16 x i8], [16 x i8]* %243, i32 0, i32 0, !dbg !1211
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0), i8* %241, i8* %244), !dbg !1213
  store i1 false, i1* %2, align 1, !dbg !1214
  br label %477, !dbg !1214

; <label>:245:                                    ; preds = %234
  %246 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1215
  %247 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %246, i32 0, i32 1, !dbg !1216
  %248 = load i8*, i8** %247, align 8, !dbg !1216
  %249 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1217
  %250 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %249, i32 0, i32 10, !dbg !1218
  %251 = getelementptr inbounds [16 x i8], [16 x i8]* %250, i32 0, i32 0, !dbg !1217
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i32 0, i32 0), i8* %248, i8* %251), !dbg !1219
  %252 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1220
  %253 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %252, i32 0, i32 10, !dbg !1221
  %254 = getelementptr inbounds [16 x i8], [16 x i8]* %253, i32 0, i32 0, !dbg !1220
  %255 = call i32 @netlink_interface_lookup(i8* %254), !dbg !1222
  %256 = load %struct._interface*, %struct._interface** %6, align 8, !dbg !1223
  %257 = getelementptr inbounds %struct._interface, %struct._interface* %256, i32 0, i32 1, !dbg !1225
  %258 = load i32, i32* %257, align 8, !dbg !1225
  %259 = icmp ne i32 %258, 0, !dbg !1223
  br i1 %259, label %261, label %260, !dbg !1226

; <label>:260:                                    ; preds = %245
  store i1 false, i1* %2, align 1, !dbg !1227
  br label %477, !dbg !1227

; <label>:261:                                    ; preds = %245
  call void @kernel_netlink_poll(), !dbg !1228
  br label %262, !dbg !1229

; <label>:262:                                    ; preds = %261, %107, %104
  %263 = load %struct._interface*, %struct._interface** %6, align 8, !dbg !1230
  %264 = getelementptr inbounds %struct._interface, %struct._interface* %263, i32 0, i32 12, !dbg !1231
  store i8 1, i8* %264, align 4, !dbg !1232
  %265 = load %struct._interface*, %struct._interface** %6, align 8, !dbg !1233
  %266 = getelementptr inbounds %struct._interface, %struct._interface* %265, i32 0, i32 1, !dbg !1235
  %267 = load i32, i32* %266, align 8, !dbg !1235
  %268 = icmp ne i32 %267, 0, !dbg !1233
  br i1 %268, label %270, label %269, !dbg !1236

; <label>:269:                                    ; preds = %262
  store i1 false, i1* %2, align 1, !dbg !1237
  br label %477, !dbg !1237

; <label>:270:                                    ; preds = %262
  %271 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1238
  %272 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %271, i32 0, i32 0, !dbg !1240
  %273 = load i16, i16* %272, align 8, !dbg !1240
  %274 = zext i16 %273 to i32, !dbg !1238
  %275 = icmp eq i32 %274, 2, !dbg !1241
  br i1 %275, label %276, label %298, !dbg !1242

; <label>:276:                                    ; preds = %270
  %277 = load i8, i8* %7, align 1, !dbg !1243
  %278 = trunc i8 %277 to i1, !dbg !1243
  br i1 %278, label %279, label %284, !dbg !1246

; <label>:279:                                    ; preds = %276
  %280 = load %struct._interface*, %struct._interface** %6, align 8, !dbg !1247
  %281 = load %struct._interface*, %struct._interface** %6, align 8, !dbg !1248
  %282 = getelementptr inbounds %struct._interface, %struct._interface* %281, i32 0, i32 14, !dbg !1249
  %283 = load %struct._interface*, %struct._interface** %282, align 8, !dbg !1249
  call void @set_interface_parameters(%struct._interface* %280, %struct._interface* %283), !dbg !1250
  br label %284, !dbg !1250

; <label>:284:                                    ; preds = %279, %276
  %285 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1251
  %286 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %285, i32 0, i32 44, !dbg !1253
  %287 = load i8, i8* %286, align 1, !dbg !1253
  %288 = trunc i8 %287 to i1, !dbg !1253
  br i1 %288, label %291, label %289, !dbg !1254

; <label>:289:                                    ; preds = %284
  %290 = load %struct._interface*, %struct._interface** %6, align 8, !dbg !1255
  call void @link_set_ipv6(%struct._interface* %290, i1 zeroext false), !dbg !1256
  br label %297, !dbg !1256

; <label>:291:                                    ; preds = %284
  %292 = load i8, i8* %7, align 1, !dbg !1257
  %293 = trunc i8 %292 to i1, !dbg !1257
  br i1 %293, label %296, label %294, !dbg !1259

; <label>:294:                                    ; preds = %291
  %295 = load %struct._interface*, %struct._interface** %6, align 8, !dbg !1260
  call void @link_set_ipv6(%struct._interface* %295, i1 zeroext true), !dbg !1262
  br label %296, !dbg !1263

; <label>:296:                                    ; preds = %294, %291
  br label %297

; <label>:297:                                    ; preds = %296, %289
  br label %298, !dbg !1264

; <label>:298:                                    ; preds = %297, %270
  %299 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1265
  %300 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %299, i32 0, i32 0, !dbg !1267
  %301 = load i16, i16* %300, align 8, !dbg !1267
  %302 = zext i16 %301 to i32, !dbg !1265
  %303 = icmp eq i32 %302, 10, !dbg !1268
  br i1 %303, label %309, label %304, !dbg !1269

; <label>:304:                                    ; preds = %298
  %305 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1270
  %306 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %305, i32 0, i32 44, !dbg !1272
  %307 = load i8, i8* %306, align 1, !dbg !1272
  %308 = trunc i8 %307 to i1, !dbg !1272
  br i1 %308, label %309, label %472, !dbg !1273

; <label>:309:                                    ; preds = %304, %298
  %310 = load %struct._interface*, %struct._interface** %6, align 8, !dbg !1274
  call void @link_set_ipv6(%struct._interface* %310, i1 zeroext true), !dbg !1276
  %311 = bitcast %struct.anon.5* %8 to i8*, !dbg !1277
  call void @llvm.memset.p0i8.i64(i8* %311, i8 0, i64 288, i32 4, i1 false), !dbg !1277
  %312 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 0, !dbg !1278
  %313 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %312, i32 0, i32 0, !dbg !1279
  store i32 32, i32* %313, align 4, !dbg !1280
  %314 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 0, !dbg !1281
  %315 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %314, i32 0, i32 2, !dbg !1282
  store i16 1, i16* %315, align 2, !dbg !1283
  %316 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 0, !dbg !1284
  %317 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %316, i32 0, i32 1, !dbg !1285
  store i16 16, i16* %317, align 4, !dbg !1286
  %318 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 1, !dbg !1287
  %319 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %318, i32 0, i32 0, !dbg !1288
  store i8 0, i8* %319, align 4, !dbg !1289
  %320 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1290
  %321 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %320, i32 0, i32 4, !dbg !1291
  %322 = load %struct._interface*, %struct._interface** %321, align 8, !dbg !1291
  %323 = getelementptr inbounds %struct._interface, %struct._interface* %322, i32 0, i32 1, !dbg !1292
  %324 = load i32, i32* %323, align 8, !dbg !1292
  %325 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 1, !dbg !1293
  %326 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %325, i32 0, i32 3, !dbg !1294
  store i32 %324, i32* %326, align 4, !dbg !1295
  call void @llvm.dbg.declare(metadata %struct.rtattr** %9, metadata !1296, metadata !413), !dbg !1297
  %327 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 0, !dbg !1298
  %328 = bitcast %struct.nlmsghdr* %327 to i8*, !dbg !1299
  %329 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 0, !dbg !1298
  %330 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %329, i32 0, i32 0, !dbg !1300
  %331 = load i32, i32* %330, align 4, !dbg !1300
  %332 = add i32 %331, 4, !dbg !1301
  %333 = sub i32 %332, 1, !dbg !1302
  %334 = and i32 %333, -4, !dbg !1303
  %335 = zext i32 %334 to i64, !dbg !1300
  %336 = getelementptr i8, i8* %328, i64 %335, !dbg !1300
  %337 = bitcast i8* %336 to %struct.rtattr*, !dbg !1304
  store %struct.rtattr* %337, %struct.rtattr** %9, align 8, !dbg !1305
  %338 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 0, !dbg !1306
  %339 = call i32 @addattr_l(%struct.nlmsghdr* %338, i64 288, i16 zeroext 26, i8* null, i64 0), !dbg !1307
  %340 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 0, !dbg !1308
  %341 = bitcast %struct.nlmsghdr* %340 to i8*, !dbg !1309
  %342 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 0, !dbg !1308
  %343 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %342, i32 0, i32 0, !dbg !1310
  %344 = load i32, i32* %343, align 4, !dbg !1310
  %345 = add i32 %344, 4, !dbg !1311
  %346 = sub i32 %345, 1, !dbg !1312
  %347 = and i32 %346, -4, !dbg !1313
  %348 = zext i32 %347 to i64, !dbg !1310
  %349 = getelementptr i8, i8* %341, i64 %348, !dbg !1310
  %350 = bitcast i8* %349 to %struct.rtattr*, !dbg !1314
  store %struct.rtattr* %350, %struct.rtattr** %5, align 8, !dbg !1315
  %351 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 0, !dbg !1316
  %352 = call i32 @addattr_l(%struct.nlmsghdr* %351, i64 288, i16 zeroext 10, i8* null, i64 0), !dbg !1317
  %353 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 0, !dbg !1318
  %354 = call i32 @addattr8(%struct.nlmsghdr* %353, i64 288, i16 zeroext 8, i8 zeroext 1), !dbg !1319
  %355 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 0, !dbg !1320
  %356 = bitcast %struct.nlmsghdr* %355 to i8*, !dbg !1321
  %357 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 0, !dbg !1320
  %358 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %357, i32 0, i32 0, !dbg !1322
  %359 = load i32, i32* %358, align 4, !dbg !1322
  %360 = add i32 %359, 4, !dbg !1323
  %361 = sub i32 %360, 1, !dbg !1324
  %362 = and i32 %361, -4, !dbg !1325
  %363 = zext i32 %362 to i64, !dbg !1322
  %364 = getelementptr i8, i8* %356, i64 %363, !dbg !1322
  %365 = load %struct.rtattr*, %struct.rtattr** %5, align 8, !dbg !1326
  %366 = bitcast %struct.rtattr* %365 to i8*, !dbg !1325
  %367 = ptrtoint i8* %364 to i64, !dbg !1327
  %368 = ptrtoint i8* %366 to i64, !dbg !1327
  %369 = sub i64 %367, %368, !dbg !1327
  %370 = trunc i64 %369 to i16, !dbg !1328
  %371 = load %struct.rtattr*, %struct.rtattr** %5, align 8, !dbg !1329
  %372 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %371, i32 0, i32 0, !dbg !1330
  store i16 %370, i16* %372, align 2, !dbg !1331
  %373 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 0, !dbg !1332
  %374 = bitcast %struct.nlmsghdr* %373 to i8*, !dbg !1333
  %375 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 0, !dbg !1332
  %376 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %375, i32 0, i32 0, !dbg !1334
  %377 = load i32, i32* %376, align 4, !dbg !1334
  %378 = add i32 %377, 4, !dbg !1335
  %379 = sub i32 %378, 1, !dbg !1336
  %380 = and i32 %379, -4, !dbg !1337
  %381 = zext i32 %380 to i64, !dbg !1334
  %382 = getelementptr i8, i8* %374, i64 %381, !dbg !1334
  %383 = load %struct.rtattr*, %struct.rtattr** %9, align 8, !dbg !1338
  %384 = bitcast %struct.rtattr* %383 to i8*, !dbg !1337
  %385 = ptrtoint i8* %382 to i64, !dbg !1339
  %386 = ptrtoint i8* %384 to i64, !dbg !1339
  %387 = sub i64 %385, %386, !dbg !1339
  %388 = trunc i64 %387 to i16, !dbg !1340
  %389 = load %struct.rtattr*, %struct.rtattr** %9, align 8, !dbg !1341
  %390 = getelementptr inbounds %struct.rtattr, %struct.rtattr* %389, i32 0, i32 0, !dbg !1342
  store i16 %388, i16* %390, align 2, !dbg !1343
  %391 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %8, i32 0, i32 0, !dbg !1344
  %392 = call i64 @netlink_talk(%struct._nl_handle* @nl_cmd, %struct.nlmsghdr* %391), !dbg !1346
  %393 = icmp slt i64 %392, 0, !dbg !1347
  br i1 %393, label %394, label %395, !dbg !1348

; <label>:394:                                    ; preds = %309
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i32 0, i32 0)), !dbg !1349
  br label %395, !dbg !1349

; <label>:395:                                    ; preds = %394, %309
  %396 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1350
  %397 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %396, i32 0, i32 0, !dbg !1352
  %398 = load i16, i16* %397, align 8, !dbg !1352
  %399 = zext i16 %398 to i32, !dbg !1350
  %400 = icmp eq i32 %399, 10, !dbg !1353
  br i1 %400, label %401, label %471, !dbg !1354

; <label>:401:                                    ; preds = %395
  %402 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1355
  %403 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %402, i32 0, i32 9, !dbg !1356
  %404 = call zeroext i1 @__test_bit(i32 2, i64* %403), !dbg !1357
  br i1 %404, label %471, label %405, !dbg !1358

; <label>:405:                                    ; preds = %401
  call void @llvm.dbg.declare(metadata %struct._ip_address* %10, metadata !1360, metadata !413), !dbg !1362
  %406 = bitcast %struct._ip_address* %10 to i8*, !dbg !1363
  call void @llvm.memset.p0i8.i64(i8* %406, i8 0, i64 88, i32 8, i1 false), !dbg !1363
  %407 = load %struct._interface*, %struct._interface** %6, align 8, !dbg !1364
  %408 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %10, i32 0, i32 2, !dbg !1365
  store %struct._interface* %407, %struct._interface** %408, align 8, !dbg !1366
  %409 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1367
  %410 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %409, i32 0, i32 16, !dbg !1369
  %411 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %410, i32 0, i32 0, !dbg !1370
  %412 = load i16, i16* %411, align 8, !dbg !1370
  %413 = zext i16 %412 to i32, !dbg !1367
  %414 = icmp eq i32 %413, 10, !dbg !1371
  br i1 %414, label %415, label %424, !dbg !1372

; <label>:415:                                    ; preds = %405
  %416 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %10, i32 0, i32 1, !dbg !1373
  %417 = bitcast %union.anon.0* %416 to %struct.in6_addr*, !dbg !1374
  %418 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1375
  %419 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %418, i32 0, i32 16, !dbg !1376
  %420 = bitcast %struct.sockaddr_storage* %419 to %struct.sockaddr_in6*, !dbg !1377
  %421 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %420, i32 0, i32 3, !dbg !1377
  %422 = bitcast %struct.in6_addr* %417 to i8*, !dbg !1377
  %423 = bitcast %struct.in6_addr* %421 to i8*, !dbg !1377
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %422, i8* %423, i64 16, i32 8, i1 false), !dbg !1377
  br label %452, !dbg !1378

; <label>:424:                                    ; preds = %405
  %425 = load %struct._interface*, %struct._interface** %6, align 8, !dbg !1379
  %426 = getelementptr inbounds %struct._interface, %struct._interface* %425, i32 0, i32 14, !dbg !1381
  %427 = load %struct._interface*, %struct._interface** %426, align 8, !dbg !1381
  %428 = getelementptr inbounds %struct._interface, %struct._interface* %427, i32 0, i32 3, !dbg !1382
  %429 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %428, i32 0, i32 0, !dbg !1383
  %430 = bitcast %union.anon* %429 to [4 x i32]*, !dbg !1384
  %431 = getelementptr inbounds [4 x i32], [4 x i32]* %430, i64 0, i64 0, !dbg !1379
  %432 = load i32, i32* %431, align 8, !dbg !1379
  %433 = icmp ne i32 %432, 0, !dbg !1379
  br i1 %433, label %434, label %443, !dbg !1385

; <label>:434:                                    ; preds = %424
  %435 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %10, i32 0, i32 1, !dbg !1386
  %436 = bitcast %union.anon.0* %435 to %struct.in6_addr*, !dbg !1387
  %437 = load %struct._interface*, %struct._interface** %6, align 8, !dbg !1388
  %438 = getelementptr inbounds %struct._interface, %struct._interface* %437, i32 0, i32 14, !dbg !1389
  %439 = load %struct._interface*, %struct._interface** %438, align 8, !dbg !1389
  %440 = getelementptr inbounds %struct._interface, %struct._interface* %439, i32 0, i32 3, !dbg !1390
  %441 = bitcast %struct.in6_addr* %436 to i8*, !dbg !1390
  %442 = bitcast %struct.in6_addr* %440 to i8*, !dbg !1390
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %441, i8* %442, i64 16, i32 8, i1 false), !dbg !1390
  br label %451, !dbg !1391

; <label>:443:                                    ; preds = %424
  %444 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %10, i32 0, i32 1, !dbg !1392
  %445 = bitcast %union.anon.0* %444 to %struct.in6_addr*, !dbg !1393
  %446 = load %struct._interface*, %struct._interface** %6, align 8, !dbg !1394
  %447 = getelementptr inbounds %struct._interface, %struct._interface* %446, i32 0, i32 14, !dbg !1395
  %448 = load %struct._interface*, %struct._interface** %447, align 8, !dbg !1395
  %449 = getelementptr inbounds %struct._interface, %struct._interface* %448, i32 0, i32 8, !dbg !1396
  %450 = getelementptr inbounds [32 x i8], [32 x i8]* %449, i32 0, i32 0, !dbg !1394
  call void @make_link_local_address(%struct.in6_addr* %445, i8* %450), !dbg !1397
  br label %451

; <label>:451:                                    ; preds = %443, %434
  br label %452

; <label>:452:                                    ; preds = %451, %415
  %453 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %10, i32 0, i32 0, !dbg !1398
  %454 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %453, i32 0, i32 0, !dbg !1399
  store i8 10, i8* %454, align 8, !dbg !1400
  %455 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %10, i32 0, i32 0, !dbg !1401
  %456 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %455, i32 0, i32 1, !dbg !1402
  store i8 64, i8* %456, align 1, !dbg !1403
  %457 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1404
  %458 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %457, i32 0, i32 4, !dbg !1405
  %459 = load %struct._interface*, %struct._interface** %458, align 8, !dbg !1405
  %460 = getelementptr inbounds %struct._interface, %struct._interface* %459, i32 0, i32 1, !dbg !1406
  %461 = load i32, i32* %460, align 8, !dbg !1406
  %462 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %10, i32 0, i32 0, !dbg !1407
  %463 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %462, i32 0, i32 4, !dbg !1408
  store i32 %461, i32* %463, align 4, !dbg !1409
  %464 = call i32 @netlink_ipaddress(%struct._ip_address* %10, i32 1), !dbg !1410
  %465 = icmp ne i32 %464, 1, !dbg !1412
  br i1 %465, label %466, label %470, !dbg !1413

; <label>:466:                                    ; preds = %452
  %467 = load i8, i8* %7, align 1, !dbg !1414
  %468 = trunc i8 %467 to i1, !dbg !1414
  br i1 %468, label %469, label %470, !dbg !1416

; <label>:469:                                    ; preds = %466
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i32 0, i32 0)), !dbg !1417
  br label %470, !dbg !1417

; <label>:470:                                    ; preds = %469, %466, %452
  br label %471, !dbg !1418

; <label>:471:                                    ; preds = %470, %401, %395
  br label %472, !dbg !1419

; <label>:472:                                    ; preds = %471, %304
  %473 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1420
  %474 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %473, i32 0, i32 9, !dbg !1421
  call void @__set_bit(i32 1, i64* %474), !dbg !1422
  %475 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1423
  %476 = call i32 @netlink_link_up(%struct._vrrp_t* %475), !dbg !1424
  call void @kernel_netlink_poll(), !dbg !1425
  call void @kernel_netlink_poll(), !dbg !1426
  store i1 true, i1* %2, align 1, !dbg !1427
  br label %477, !dbg !1427

; <label>:477:                                    ; preds = %472, %269, %260, %238, %93, %24
  %478 = load i1, i1* %2, align 1, !dbg !1428
  ret i1 %478, !dbg !1428
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @__test_bit(i32, i64*) #4 !dbg !1429 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1435, metadata !413), !dbg !1436
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !1437, metadata !413), !dbg !1438
  %5 = load i32, i32* %3, align 4, !dbg !1439
  %6 = zext i32 %5 to i64, !dbg !1440
  %7 = udiv i64 %6, 64, !dbg !1441
  %8 = load i64*, i64** %4, align 8, !dbg !1442
  %9 = getelementptr inbounds i64, i64* %8, i64 %7, !dbg !1442
  %10 = load i64, i64* %9, align 8, !dbg !1442
  %11 = load i32, i32* %3, align 4, !dbg !1443
  %12 = zext i32 %11 to i64, !dbg !1444
  %13 = urem i64 %12, 64, !dbg !1445
  %14 = shl i64 1, %13, !dbg !1446
  %15 = and i64 %10, %14, !dbg !1447
  %16 = icmp ne i64 %15, 0, !dbg !1448
  %17 = xor i1 %16, true, !dbg !1448
  %18 = xor i1 %17, true, !dbg !1449
  ret i1 %18, !dbg !1450
}

declare %struct._interface* @if_get_by_ifname(i8*, i32) #3

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #5

declare i64 @netlink_talk(%struct._nl_handle*, %struct.nlmsghdr*) #3

declare i32 @addattr_l(%struct.nlmsghdr*, i64, i16 zeroext, i8*, i64) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare i32 @addattr32(%struct.nlmsghdr*, i64, i16 zeroext, i32) #3

declare i32 @netlink_interface_lookup(i8*) #3

declare void @kernel_netlink_poll() #3

declare void @set_interface_parameters(%struct._interface*, %struct._interface*) #3

declare void @link_set_ipv6(%struct._interface*, i1 zeroext) #3

declare i32 @addattr8(%struct.nlmsghdr*, i64, i16 zeroext, i8 zeroext) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @__set_bit(i32, i64*) #4 !dbg !1451 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1455, metadata !413), !dbg !1456
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !1457, metadata !413), !dbg !1458
  %5 = load i32, i32* %3, align 4, !dbg !1459
  %6 = zext i32 %5 to i64, !dbg !1460
  %7 = urem i64 %6, 64, !dbg !1461
  %8 = shl i64 1, %7, !dbg !1462
  %9 = load i32, i32* %3, align 4, !dbg !1463
  %10 = zext i32 %9 to i64, !dbg !1464
  %11 = udiv i64 %10, 64, !dbg !1465
  %12 = load i64*, i64** %4, align 8, !dbg !1466
  %13 = getelementptr inbounds i64, i64* %12, i64 %11, !dbg !1466
  %14 = load i64, i64* %13, align 8, !dbg !1467
  %15 = or i64 %14, %8, !dbg !1467
  store i64 %15, i64* %13, align 8, !dbg !1467
  ret void, !dbg !1468
}

; Function Attrs: nounwind uwtable
define internal i32 @netlink_link_up(%struct._vrrp_t*) #0 !dbg !1469 {
  %2 = alloca %struct._vrrp_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.anon.7, align 4
  store %struct._vrrp_t* %0, %struct._vrrp_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %2, metadata !1472, metadata !413), !dbg !1473
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1474, metadata !413), !dbg !1475
  store i32 1, i32* %3, align 4, !dbg !1475
  call void @llvm.dbg.declare(metadata %struct.anon.7* %4, metadata !1476, metadata !413), !dbg !1481
  %5 = bitcast %struct.anon.7* %4 to i8*, !dbg !1482
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 32, i32 4, i1 false), !dbg !1482
  %6 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %4, i32 0, i32 0, !dbg !1483
  %7 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %6, i32 0, i32 0, !dbg !1484
  store i32 32, i32* %7, align 4, !dbg !1485
  %8 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %4, i32 0, i32 0, !dbg !1486
  %9 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %8, i32 0, i32 2, !dbg !1487
  store i16 1, i16* %9, align 2, !dbg !1488
  %10 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %4, i32 0, i32 0, !dbg !1489
  %11 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %10, i32 0, i32 1, !dbg !1490
  store i16 16, i16* %11, align 4, !dbg !1491
  %12 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %4, i32 0, i32 1, !dbg !1492
  %13 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %12, i32 0, i32 0, !dbg !1493
  store i8 0, i8* %13, align 4, !dbg !1494
  %14 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1495
  %15 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %14, i32 0, i32 4, !dbg !1496
  %16 = load %struct._interface*, %struct._interface** %15, align 8, !dbg !1496
  %17 = getelementptr inbounds %struct._interface, %struct._interface* %16, i32 0, i32 1, !dbg !1497
  %18 = load i32, i32* %17, align 8, !dbg !1497
  %19 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %4, i32 0, i32 1, !dbg !1498
  %20 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %19, i32 0, i32 3, !dbg !1499
  store i32 %18, i32* %20, align 4, !dbg !1500
  %21 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %4, i32 0, i32 1, !dbg !1501
  %22 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %21, i32 0, i32 5, !dbg !1502
  %23 = load i32, i32* %22, align 4, !dbg !1503
  %24 = or i32 %23, 1, !dbg !1503
  store i32 %24, i32* %22, align 4, !dbg !1503
  %25 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %4, i32 0, i32 1, !dbg !1504
  %26 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %25, i32 0, i32 4, !dbg !1505
  %27 = load i32, i32* %26, align 4, !dbg !1506
  %28 = or i32 %27, 1, !dbg !1506
  store i32 %28, i32* %26, align 4, !dbg !1506
  %29 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %4, i32 0, i32 0, !dbg !1507
  %30 = call i64 @netlink_talk(%struct._nl_handle* @nl_cmd, %struct.nlmsghdr* %29), !dbg !1509
  %31 = icmp slt i64 %30, 0, !dbg !1510
  br i1 %31, label %32, label %33, !dbg !1511

; <label>:32:                                     ; preds = %1
  store i32 -1, i32* %3, align 4, !dbg !1512
  br label %33, !dbg !1513

; <label>:33:                                     ; preds = %32, %1
  %34 = load i32, i32* %3, align 4, !dbg !1514
  ret i32 %34, !dbg !1515
}

; Function Attrs: nounwind uwtable
define void @netlink_link_del_vmac(%struct._vrrp_t*) #0 !dbg !1516 {
  %2 = alloca %struct._vrrp_t*, align 8
  %3 = alloca %struct.anon.6, align 4
  store %struct._vrrp_t* %0, %struct._vrrp_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %2, metadata !1519, metadata !413), !dbg !1520
  call void @llvm.dbg.declare(metadata %struct.anon.6* %3, metadata !1521, metadata !413), !dbg !1527
  %4 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1528
  %5 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %4, i32 0, i32 4, !dbg !1530
  %6 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !1530
  %7 = icmp ne %struct._interface* %6, null, !dbg !1528
  br i1 %7, label %9, label %8, !dbg !1531

; <label>:8:                                      ; preds = %1
  br label %85, !dbg !1532

; <label>:9:                                      ; preds = %1
  %10 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1533
  %11 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %10, i32 0, i32 4, !dbg !1535
  %12 = load %struct._interface*, %struct._interface** %11, align 8, !dbg !1535
  %13 = getelementptr inbounds %struct._interface, %struct._interface* %12, i32 0, i32 12, !dbg !1536
  %14 = load i8, i8* %13, align 4, !dbg !1536
  %15 = trunc i8 %14 to i1, !dbg !1536
  br i1 %15, label %22, label %16, !dbg !1537

; <label>:16:                                     ; preds = %9
  %17 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1538
  %18 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %17, i32 0, i32 4, !dbg !1540
  %19 = load %struct._interface*, %struct._interface** %18, align 8, !dbg !1540
  %20 = getelementptr inbounds %struct._interface, %struct._interface* %19, i32 0, i32 0, !dbg !1541
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %20, i32 0, i32 0, !dbg !1538
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i32 0, i32 0), i8* %21), !dbg !1542
  br label %85, !dbg !1543

; <label>:22:                                     ; preds = %9
  %23 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1544
  %24 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %23, i32 0, i32 9, !dbg !1546
  %25 = call zeroext i1 @__test_bit(i32 1, i64* %24), !dbg !1547
  br i1 %25, label %27, label %26, !dbg !1548

; <label>:26:                                     ; preds = %22
  br label %85, !dbg !1549

; <label>:27:                                     ; preds = %22
  %28 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1550
  %29 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %28, i32 0, i32 0, !dbg !1552
  %30 = load i16, i16* %29, align 8, !dbg !1552
  %31 = zext i16 %30 to i32, !dbg !1550
  %32 = icmp eq i32 %31, 2, !dbg !1553
  br i1 %32, label %33, label %51, !dbg !1554

; <label>:33:                                     ; preds = %27
  %34 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1555
  %35 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %34, i32 0, i32 4, !dbg !1558
  %36 = load %struct._interface*, %struct._interface** %35, align 8, !dbg !1558
  %37 = getelementptr inbounds %struct._interface, %struct._interface* %36, i32 0, i32 14, !dbg !1559
  %38 = load %struct._interface*, %struct._interface** %37, align 8, !dbg !1559
  %39 = icmp ne %struct._interface* %38, null, !dbg !1555
  br i1 %39, label %40, label %46, !dbg !1560

; <label>:40:                                     ; preds = %33
  %41 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1561
  %42 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %41, i32 0, i32 4, !dbg !1562
  %43 = load %struct._interface*, %struct._interface** %42, align 8, !dbg !1562
  %44 = getelementptr inbounds %struct._interface, %struct._interface* %43, i32 0, i32 14, !dbg !1563
  %45 = load %struct._interface*, %struct._interface** %44, align 8, !dbg !1563
  call void @reset_interface_parameters(%struct._interface* %45), !dbg !1564
  br label %50, !dbg !1564

; <label>:46:                                     ; preds = %33
  %47 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1565
  %48 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %47, i32 0, i32 1, !dbg !1566
  %49 = load i8*, i8** %48, align 8, !dbg !1566
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i32 0, i32 0), i8* %49), !dbg !1567
  br label %50

; <label>:50:                                     ; preds = %46, %40
  br label %51, !dbg !1568

; <label>:51:                                     ; preds = %50, %27
  %52 = bitcast %struct.anon.6* %3 to i8*, !dbg !1569
  call void @llvm.memset.p0i8.i64(i8* %52, i8 0, i64 288, i32 4, i1 false), !dbg !1569
  %53 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3, i32 0, i32 0, !dbg !1570
  %54 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %53, i32 0, i32 0, !dbg !1571
  store i32 32, i32* %54, align 4, !dbg !1572
  %55 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3, i32 0, i32 0, !dbg !1573
  %56 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %55, i32 0, i32 2, !dbg !1574
  store i16 1, i16* %56, align 2, !dbg !1575
  %57 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3, i32 0, i32 0, !dbg !1576
  %58 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %57, i32 0, i32 1, !dbg !1577
  store i16 17, i16* %58, align 4, !dbg !1578
  %59 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3, i32 0, i32 1, !dbg !1579
  %60 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %59, i32 0, i32 0, !dbg !1580
  store i8 2, i8* %60, align 4, !dbg !1581
  %61 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1582
  %62 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %61, i32 0, i32 4, !dbg !1583
  %63 = load %struct._interface*, %struct._interface** %62, align 8, !dbg !1583
  %64 = getelementptr inbounds %struct._interface, %struct._interface* %63, i32 0, i32 1, !dbg !1584
  %65 = load i32, i32* %64, align 8, !dbg !1584
  %66 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3, i32 0, i32 1, !dbg !1585
  %67 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %66, i32 0, i32 3, !dbg !1586
  store i32 %65, i32* %67, align 4, !dbg !1587
  %68 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %3, i32 0, i32 0, !dbg !1588
  %69 = call i64 @netlink_talk(%struct._nl_handle* @nl_cmd, %struct.nlmsghdr* %68), !dbg !1590
  %70 = icmp slt i64 %69, 0, !dbg !1591
  br i1 %70, label %71, label %78, !dbg !1592

; <label>:71:                                     ; preds = %51
  %72 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1593
  %73 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %72, i32 0, i32 10, !dbg !1595
  %74 = getelementptr inbounds [16 x i8], [16 x i8]* %73, i32 0, i32 0, !dbg !1593
  %75 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1596
  %76 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %75, i32 0, i32 1, !dbg !1597
  %77 = load i8*, i8** %76, align 8, !dbg !1597
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i32 0, i32 0), i8* %74, i8* %77), !dbg !1598
  br label %85, !dbg !1599

; <label>:78:                                     ; preds = %51
  %79 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1600
  %80 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %79, i32 0, i32 10, !dbg !1601
  %81 = getelementptr inbounds [16 x i8], [16 x i8]* %80, i32 0, i32 0, !dbg !1600
  %82 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !1602
  %83 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %82, i32 0, i32 1, !dbg !1603
  %84 = load i8*, i8** %83, align 8, !dbg !1603
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i32 0, i32 0), i8* %81, i8* %84), !dbg !1604
  br label %85, !dbg !1605

; <label>:85:                                     ; preds = %78, %71, %26, %16, %8
  ret void, !dbg !1606
}

declare void @reset_interface_parameters(%struct._interface*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @__ip6_addr_equal(%struct.in6_addr*, %struct.in6_addr*) #4 !dbg !1607 {
  %3 = alloca %struct.in6_addr*, align 8
  %4 = alloca %struct.in6_addr*, align 8
  store %struct.in6_addr* %0, %struct.in6_addr** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.in6_addr** %3, metadata !1612, metadata !413), !dbg !1613
  store %struct.in6_addr* %1, %struct.in6_addr** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.in6_addr** %4, metadata !1614, metadata !413), !dbg !1615
  %5 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8, !dbg !1616
  %6 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %5, i32 0, i32 0, !dbg !1617
  %7 = bitcast %union.anon* %6 to [4 x i32]*, !dbg !1618
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0, !dbg !1616
  %9 = load i32, i32* %8, align 4, !dbg !1616
  %10 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8, !dbg !1619
  %11 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %10, i32 0, i32 0, !dbg !1620
  %12 = bitcast %union.anon* %11 to [4 x i32]*, !dbg !1621
  %13 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0, !dbg !1619
  %14 = load i32, i32* %13, align 4, !dbg !1619
  %15 = xor i32 %9, %14, !dbg !1622
  %16 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8, !dbg !1623
  %17 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %16, i32 0, i32 0, !dbg !1624
  %18 = bitcast %union.anon* %17 to [4 x i32]*, !dbg !1625
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 1, !dbg !1623
  %20 = load i32, i32* %19, align 4, !dbg !1623
  %21 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8, !dbg !1626
  %22 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %21, i32 0, i32 0, !dbg !1627
  %23 = bitcast %union.anon* %22 to [4 x i32]*, !dbg !1628
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 1, !dbg !1626
  %25 = load i32, i32* %24, align 4, !dbg !1626
  %26 = xor i32 %20, %25, !dbg !1629
  %27 = or i32 %15, %26, !dbg !1630
  %28 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8, !dbg !1631
  %29 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %28, i32 0, i32 0, !dbg !1632
  %30 = bitcast %union.anon* %29 to [4 x i32]*, !dbg !1633
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %30, i64 0, i64 2, !dbg !1631
  %32 = load i32, i32* %31, align 4, !dbg !1631
  %33 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8, !dbg !1634
  %34 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %33, i32 0, i32 0, !dbg !1635
  %35 = bitcast %union.anon* %34 to [4 x i32]*, !dbg !1636
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i64 0, i64 2, !dbg !1634
  %37 = load i32, i32* %36, align 4, !dbg !1634
  %38 = xor i32 %32, %37, !dbg !1637
  %39 = or i32 %27, %38, !dbg !1638
  %40 = load %struct.in6_addr*, %struct.in6_addr** %3, align 8, !dbg !1639
  %41 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %40, i32 0, i32 0, !dbg !1640
  %42 = bitcast %union.anon* %41 to [4 x i32]*, !dbg !1641
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %42, i64 0, i64 3, !dbg !1639
  %44 = load i32, i32* %43, align 4, !dbg !1639
  %45 = load %struct.in6_addr*, %struct.in6_addr** %4, align 8, !dbg !1642
  %46 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %45, i32 0, i32 0, !dbg !1643
  %47 = bitcast %union.anon* %46 to [4 x i32]*, !dbg !1644
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i64 0, i64 3, !dbg !1642
  %49 = load i32, i32* %48, align 4, !dbg !1642
  %50 = xor i32 %44, %49, !dbg !1645
  %51 = or i32 %39, %50, !dbg !1646
  %52 = icmp eq i32 %51, 0, !dbg !1647
  %53 = zext i1 %52 to i32, !dbg !1647
  ret i32 %53, !dbg !1648
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { argmemonly nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!347, !348}
!llvm.ident = !{!349}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !204, globals: !251)
!1 = !DIFile(filename: "[inter]keepalived--vrrp--vrrp_vmac.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!2 = !{!3, !11, !32, !38, !45, !98, !142, !151, !161, !168, !180, !185}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "chksum_compatibility", file: !4, line: 173, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "./../include/vrrp.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!5 = !{!6, !7, !8, !9, !10}
!6 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_NONE", value: 0)
!7 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_NEVER", value: 1)
!8 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_MIN_COMPAT", value: 2)
!9 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_CONFIG", value: 3)
!10 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_AUTO", value: 4)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 41, size: 32, align: 32, elements: !13)
!12 = !DIFile(filename: "../../lib/scheduler.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31}
!14 = !DIEnumerator(name: "THREAD_READ", value: 0)
!15 = !DIEnumerator(name: "THREAD_WRITE", value: 1)
!16 = !DIEnumerator(name: "THREAD_TIMER", value: 2)
!17 = !DIEnumerator(name: "THREAD_TIMER_SHUTDOWN", value: 3)
!18 = !DIEnumerator(name: "THREAD_EVENT", value: 4)
!19 = !DIEnumerator(name: "THREAD_CHILD", value: 5)
!20 = !DIEnumerator(name: "THREAD_READY", value: 6)
!21 = !DIEnumerator(name: "THREAD_UNUSED", value: 7)
!22 = !DIEnumerator(name: "THREAD_WRITE_TIMEOUT", value: 8)
!23 = !DIEnumerator(name: "THREAD_READ_TIMEOUT", value: 9)
!24 = !DIEnumerator(name: "THREAD_CHILD_TIMEOUT", value: 10)
!25 = !DIEnumerator(name: "THREAD_TERMINATE_START", value: 11)
!26 = !DIEnumerator(name: "THREAD_TERMINATE", value: 12)
!27 = !DIEnumerator(name: "THREAD_READY_FD", value: 13)
!28 = !DIEnumerator(name: "THREAD_READ_ERROR", value: 14)
!29 = !DIEnumerator(name: "THREAD_WRITE_ERROR", value: 15)
!30 = !DIEnumerator(name: "THREAD_IF_UP", value: 16)
!31 = !DIEnumerator(name: "THREAD_IF_DOWN", value: 17)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vrrp_vmac_bits", file: !33, line: 40, size: 32, align: 32, elements: !34)
!33 = !DIFile(filename: "./../include/vrrp_vmac.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!34 = !{!35, !36, !37}
!35 = !DIEnumerator(name: "VRRP_VMAC_BIT", value: 0)
!36 = !DIEnumerator(name: "VRRP_VMAC_UP_BIT", value: 1)
!37 = !DIEnumerator(name: "VRRP_VMAC_XMITBASE_BIT", value: 2)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "if_lookup", file: !39, line: 142, size: 32, align: 32, elements: !40)
!39 = !DIFile(filename: "./../include/vrrp_if.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!40 = !{!41, !42, !43, !44}
!41 = !DIEnumerator(name: "IF_NO_CREATE", value: 0)
!42 = !DIEnumerator(name: "IF_CREATE_IF_DYNAMIC", value: 1)
!43 = !DIEnumerator(name: "IF_CREATE_ALWAYS", value: 2)
!44 = !DIEnumerator(name: "IF_CREATE_NETLINK", value: 3)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !46, line: 23, size: 32, align: 32, elements: !47)
!46 = !DIFile(filename: "/usr/include/linux/rtnetlink.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!47 = !{!48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97}
!48 = !DIEnumerator(name: "RTM_BASE", value: 16)
!49 = !DIEnumerator(name: "RTM_NEWLINK", value: 16)
!50 = !DIEnumerator(name: "RTM_DELLINK", value: 17)
!51 = !DIEnumerator(name: "RTM_GETLINK", value: 18)
!52 = !DIEnumerator(name: "RTM_SETLINK", value: 19)
!53 = !DIEnumerator(name: "RTM_NEWADDR", value: 20)
!54 = !DIEnumerator(name: "RTM_DELADDR", value: 21)
!55 = !DIEnumerator(name: "RTM_GETADDR", value: 22)
!56 = !DIEnumerator(name: "RTM_NEWROUTE", value: 24)
!57 = !DIEnumerator(name: "RTM_DELROUTE", value: 25)
!58 = !DIEnumerator(name: "RTM_GETROUTE", value: 26)
!59 = !DIEnumerator(name: "RTM_NEWNEIGH", value: 28)
!60 = !DIEnumerator(name: "RTM_DELNEIGH", value: 29)
!61 = !DIEnumerator(name: "RTM_GETNEIGH", value: 30)
!62 = !DIEnumerator(name: "RTM_NEWRULE", value: 32)
!63 = !DIEnumerator(name: "RTM_DELRULE", value: 33)
!64 = !DIEnumerator(name: "RTM_GETRULE", value: 34)
!65 = !DIEnumerator(name: "RTM_NEWQDISC", value: 36)
!66 = !DIEnumerator(name: "RTM_DELQDISC", value: 37)
!67 = !DIEnumerator(name: "RTM_GETQDISC", value: 38)
!68 = !DIEnumerator(name: "RTM_NEWTCLASS", value: 40)
!69 = !DIEnumerator(name: "RTM_DELTCLASS", value: 41)
!70 = !DIEnumerator(name: "RTM_GETTCLASS", value: 42)
!71 = !DIEnumerator(name: "RTM_NEWTFILTER", value: 44)
!72 = !DIEnumerator(name: "RTM_DELTFILTER", value: 45)
!73 = !DIEnumerator(name: "RTM_GETTFILTER", value: 46)
!74 = !DIEnumerator(name: "RTM_NEWACTION", value: 48)
!75 = !DIEnumerator(name: "RTM_DELACTION", value: 49)
!76 = !DIEnumerator(name: "RTM_GETACTION", value: 50)
!77 = !DIEnumerator(name: "RTM_NEWPREFIX", value: 52)
!78 = !DIEnumerator(name: "RTM_GETMULTICAST", value: 58)
!79 = !DIEnumerator(name: "RTM_GETANYCAST", value: 62)
!80 = !DIEnumerator(name: "RTM_NEWNEIGHTBL", value: 64)
!81 = !DIEnumerator(name: "RTM_GETNEIGHTBL", value: 66)
!82 = !DIEnumerator(name: "RTM_SETNEIGHTBL", value: 67)
!83 = !DIEnumerator(name: "RTM_NEWNDUSEROPT", value: 68)
!84 = !DIEnumerator(name: "RTM_NEWADDRLABEL", value: 72)
!85 = !DIEnumerator(name: "RTM_DELADDRLABEL", value: 73)
!86 = !DIEnumerator(name: "RTM_GETADDRLABEL", value: 74)
!87 = !DIEnumerator(name: "RTM_GETDCB", value: 78)
!88 = !DIEnumerator(name: "RTM_SETDCB", value: 79)
!89 = !DIEnumerator(name: "RTM_NEWNETCONF", value: 80)
!90 = !DIEnumerator(name: "RTM_GETNETCONF", value: 82)
!91 = !DIEnumerator(name: "RTM_NEWMDB", value: 84)
!92 = !DIEnumerator(name: "RTM_DELMDB", value: 85)
!93 = !DIEnumerator(name: "RTM_GETMDB", value: 86)
!94 = !DIEnumerator(name: "RTM_NEWNSID", value: 88)
!95 = !DIEnumerator(name: "RTM_DELNSID", value: 89)
!96 = !DIEnumerator(name: "RTM_GETNSID", value: 90)
!97 = !DIEnumerator(name: "__RTM_MAX", value: 91)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !99, line: 101, size: 32, align: 32, elements: !100)
!99 = !DIFile(filename: "/usr/include/linux/if_link.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!100 = !{!101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141}
!101 = !DIEnumerator(name: "IFLA_UNSPEC", value: 0)
!102 = !DIEnumerator(name: "IFLA_ADDRESS", value: 1)
!103 = !DIEnumerator(name: "IFLA_BROADCAST", value: 2)
!104 = !DIEnumerator(name: "IFLA_IFNAME", value: 3)
!105 = !DIEnumerator(name: "IFLA_MTU", value: 4)
!106 = !DIEnumerator(name: "IFLA_LINK", value: 5)
!107 = !DIEnumerator(name: "IFLA_QDISC", value: 6)
!108 = !DIEnumerator(name: "IFLA_STATS", value: 7)
!109 = !DIEnumerator(name: "IFLA_COST", value: 8)
!110 = !DIEnumerator(name: "IFLA_PRIORITY", value: 9)
!111 = !DIEnumerator(name: "IFLA_MASTER", value: 10)
!112 = !DIEnumerator(name: "IFLA_WIRELESS", value: 11)
!113 = !DIEnumerator(name: "IFLA_PROTINFO", value: 12)
!114 = !DIEnumerator(name: "IFLA_TXQLEN", value: 13)
!115 = !DIEnumerator(name: "IFLA_MAP", value: 14)
!116 = !DIEnumerator(name: "IFLA_WEIGHT", value: 15)
!117 = !DIEnumerator(name: "IFLA_OPERSTATE", value: 16)
!118 = !DIEnumerator(name: "IFLA_LINKMODE", value: 17)
!119 = !DIEnumerator(name: "IFLA_LINKINFO", value: 18)
!120 = !DIEnumerator(name: "IFLA_NET_NS_PID", value: 19)
!121 = !DIEnumerator(name: "IFLA_IFALIAS", value: 20)
!122 = !DIEnumerator(name: "IFLA_NUM_VF", value: 21)
!123 = !DIEnumerator(name: "IFLA_VFINFO_LIST", value: 22)
!124 = !DIEnumerator(name: "IFLA_STATS64", value: 23)
!125 = !DIEnumerator(name: "IFLA_VF_PORTS", value: 24)
!126 = !DIEnumerator(name: "IFLA_PORT_SELF", value: 25)
!127 = !DIEnumerator(name: "IFLA_AF_SPEC", value: 26)
!128 = !DIEnumerator(name: "IFLA_GROUP", value: 27)
!129 = !DIEnumerator(name: "IFLA_NET_NS_FD", value: 28)
!130 = !DIEnumerator(name: "IFLA_EXT_MASK", value: 29)
!131 = !DIEnumerator(name: "IFLA_PROMISCUITY", value: 30)
!132 = !DIEnumerator(name: "IFLA_NUM_TX_QUEUES", value: 31)
!133 = !DIEnumerator(name: "IFLA_NUM_RX_QUEUES", value: 32)
!134 = !DIEnumerator(name: "IFLA_CARRIER", value: 33)
!135 = !DIEnumerator(name: "IFLA_PHYS_PORT_ID", value: 34)
!136 = !DIEnumerator(name: "IFLA_CARRIER_CHANGES", value: 35)
!137 = !DIEnumerator(name: "IFLA_PHYS_SWITCH_ID", value: 36)
!138 = !DIEnumerator(name: "IFLA_LINK_NETNSID", value: 37)
!139 = !DIEnumerator(name: "IFLA_PHYS_PORT_NAME", value: 38)
!140 = !DIEnumerator(name: "IFLA_PROTO_DOWN", value: 39)
!141 = !DIEnumerator(name: "__IFLA_MAX", value: 40)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !99, line: 317, size: 32, align: 32, elements: !143)
!143 = !{!144, !145, !146, !147, !148, !149, !150}
!144 = !DIEnumerator(name: "IFLA_INFO_UNSPEC", value: 0)
!145 = !DIEnumerator(name: "IFLA_INFO_KIND", value: 1)
!146 = !DIEnumerator(name: "IFLA_INFO_DATA", value: 2)
!147 = !DIEnumerator(name: "IFLA_INFO_XSTATS", value: 3)
!148 = !DIEnumerator(name: "IFLA_INFO_SLAVE_KIND", value: 4)
!149 = !DIEnumerator(name: "IFLA_INFO_SLAVE_DATA", value: 5)
!150 = !DIEnumerator(name: "__IFLA_INFO_MAX", value: 6)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !99, line: 362, size: 32, align: 32, elements: !152)
!152 = !{!153, !154, !155, !156, !157, !158, !159, !160}
!153 = !DIEnumerator(name: "IFLA_MACVLAN_UNSPEC", value: 0)
!154 = !DIEnumerator(name: "IFLA_MACVLAN_MODE", value: 1)
!155 = !DIEnumerator(name: "IFLA_MACVLAN_FLAGS", value: 2)
!156 = !DIEnumerator(name: "IFLA_MACVLAN_MACADDR_MODE", value: 3)
!157 = !DIEnumerator(name: "IFLA_MACVLAN_MACADDR", value: 4)
!158 = !DIEnumerator(name: "IFLA_MACVLAN_MACADDR_DATA", value: 5)
!159 = !DIEnumerator(name: "IFLA_MACVLAN_MACADDR_COUNT", value: 6)
!160 = !DIEnumerator(name: "__IFLA_MACVLAN_MAX", value: 7)
!161 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "macvlan_mode", file: !99, line: 375, size: 32, align: 32, elements: !162)
!162 = !{!163, !164, !165, !166, !167}
!163 = !DIEnumerator(name: "MACVLAN_MODE_PRIVATE", value: 1)
!164 = !DIEnumerator(name: "MACVLAN_MODE_VEPA", value: 2)
!165 = !DIEnumerator(name: "MACVLAN_MODE_BRIDGE", value: 4)
!166 = !DIEnumerator(name: "MACVLAN_MODE_PASSTHRU", value: 8)
!167 = !DIEnumerator(name: "MACVLAN_MODE_SOURCE", value: 16)
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !99, line: 200, size: 32, align: 32, elements: !169)
!169 = !{!170, !171, !172, !173, !174, !175, !176, !177, !178, !179}
!170 = !DIEnumerator(name: "IFLA_INET6_UNSPEC", value: 0)
!171 = !DIEnumerator(name: "IFLA_INET6_FLAGS", value: 1)
!172 = !DIEnumerator(name: "IFLA_INET6_CONF", value: 2)
!173 = !DIEnumerator(name: "IFLA_INET6_STATS", value: 3)
!174 = !DIEnumerator(name: "IFLA_INET6_MCAST", value: 4)
!175 = !DIEnumerator(name: "IFLA_INET6_CACHEINFO", value: 5)
!176 = !DIEnumerator(name: "IFLA_INET6_ICMP6STATS", value: 6)
!177 = !DIEnumerator(name: "IFLA_INET6_TOKEN", value: 7)
!178 = !DIEnumerator(name: "IFLA_INET6_ADDR_GEN_MODE", value: 8)
!179 = !DIEnumerator(name: "__IFLA_INET6_MAX", value: 9)
!180 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "in6_addr_gen_mode", file: !99, line: 215, size: 32, align: 32, elements: !181)
!181 = !{!182, !183, !184}
!182 = !DIEnumerator(name: "IN6_ADDR_GEN_MODE_EUI64", value: 0)
!183 = !DIEnumerator(name: "IN6_ADDR_GEN_MODE_NONE", value: 1)
!184 = !DIEnumerator(name: "IN6_ADDR_GEN_MODE_STABLE_PRIVACY", value: 2)
!185 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !186, line: 42, size: 32, align: 32, elements: !187)
!186 = !DIFile(filename: "/usr/include/net/if.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!187 = !{!188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203}
!188 = !DIEnumerator(name: "IFF_UP", value: 1)
!189 = !DIEnumerator(name: "IFF_BROADCAST", value: 2)
!190 = !DIEnumerator(name: "IFF_DEBUG", value: 4)
!191 = !DIEnumerator(name: "IFF_LOOPBACK", value: 8)
!192 = !DIEnumerator(name: "IFF_POINTOPOINT", value: 16)
!193 = !DIEnumerator(name: "IFF_NOTRAILERS", value: 32)
!194 = !DIEnumerator(name: "IFF_RUNNING", value: 64)
!195 = !DIEnumerator(name: "IFF_NOARP", value: 128)
!196 = !DIEnumerator(name: "IFF_PROMISC", value: 256)
!197 = !DIEnumerator(name: "IFF_ALLMULTI", value: 512)
!198 = !DIEnumerator(name: "IFF_MASTER", value: 1024)
!199 = !DIEnumerator(name: "IFF_SLAVE", value: 2048)
!200 = !DIEnumerator(name: "IFF_MULTICAST", value: 4096)
!201 = !DIEnumerator(name: "IFF_PORTSEL", value: 8192)
!202 = !DIEnumerator(name: "IFF_AUTOMEDIA", value: 16384)
!203 = !DIEnumerator(name: "IFF_DYNAMIC", value: 32768)
!204 = !{!205, !207, !208, !209, !210, !245, !246}
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!207 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!209 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !212, line: 254, size: 224, align: 32, elements: !213)
!212 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!213 = !{!214, !217, !221, !224, !244}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !211, file: !212, line: 256, baseType: !215, size: 16, align: 16)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !216, line: 28, baseType: !209)
!216 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!217 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !211, file: !212, line: 257, baseType: !218, size: 16, align: 16, offset: 16)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !212, line: 119, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !220, line: 49, baseType: !209)
!220 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!221 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !211, file: !212, line: 258, baseType: !222, size: 32, align: 32, offset: 32)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !220, line: 51, baseType: !223)
!223 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !211, file: !212, line: 259, baseType: !225, size: 128, align: 32, offset: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !212, line: 211, size: 128, align: 32, elements: !226)
!226 = !{!227}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !225, file: !212, line: 220, baseType: !228, size: 128, align: 32)
!228 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !225, file: !212, line: 213, size: 128, align: 32, elements: !229)
!229 = !{!230, !236, !240}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !228, file: !212, line: 215, baseType: !231, size: 128, align: 8)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 128, align: 8, elements: !234)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !220, line: 48, baseType: !233)
!233 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!234 = !{!235}
!235 = !DISubrange(count: 16)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !228, file: !212, line: 217, baseType: !237, size: 128, align: 16)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 128, align: 16, elements: !238)
!238 = !{!239}
!239 = !DISubrange(count: 8)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !228, file: !212, line: 218, baseType: !241, size: 128, align: 32)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 128, align: 32, elements: !242)
!242 = !{!243}
!243 = !DISubrange(count: 4)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !211, file: !212, line: 260, baseType: !222, size: 32, align: 32, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64, align: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !212, line: 31, size: 32, align: 32, elements: !248)
!248 = !{!249}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !247, file: !212, line: 33, baseType: !250, size: 32, align: 32)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !212, line: 30, baseType: !222)
!251 = !{!252, !258, !266}
!252 = distinct !DIGlobalVariable(name: "macvlan_ll_kind", scope: !0, file: !253, line: 41, type: !254, isLocal: false, isDefinition: true, variable: i8** @macvlan_ll_kind)
!253 = !DIFile(filename: "vrrp_vmac.c", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64, align: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!257 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!258 = distinct !DIGlobalVariable(name: "ll_addr", scope: !0, file: !253, line: 42, type: !259, isLocal: false, isDefinition: true, variable: [6 x i8]* @ll_addr)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 48, align: 8, elements: !264)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !261, line: 33, baseType: !262)
!261 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !263, line: 30, baseType: !233)
!263 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!264 = !{!265}
!265 = !DISubrange(count: 6)
!266 = distinct !DIGlobalVariable(name: "garp_delay", scope: !0, file: !39, line: 150, type: !267, isLocal: false, isDefinition: true, variable: %struct._list** @garp_delay)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !268, line: 31, baseType: !269)
!268 = !DIFile(filename: "../../lib/list.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64, align: 64)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_list", file: !268, line: 39, size: 320, align: 64, elements: !271)
!271 = !{!272, !279, !280, !281, !285}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !270, file: !268, line: 40, baseType: !273, size: 64, align: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64, align: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !268, line: 33, size: 192, align: 64, elements: !275)
!275 = !{!276, !277, !278}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !274, file: !268, line: 34, baseType: !273, size: 64, align: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !274, file: !268, line: 35, baseType: !273, size: 64, align: 64, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !274, file: !268, line: 36, baseType: !208, size: 64, align: 64, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !270, file: !268, line: 41, baseType: !273, size: 64, align: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !270, file: !268, line: 42, baseType: !223, size: 32, align: 32, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !270, file: !268, line: 43, baseType: !282, size: 64, align: 64, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64, align: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{null, !208}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !270, file: !268, line: 44, baseType: !286, size: 64, align: 64, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64, align: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !289, !208}
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !291, line: 48, baseType: !292)
!291 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !293, line: 241, size: 1728, align: 64, elements: !294)
!293 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!294 = !{!295, !296, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !316, !317, !318, !319, !322, !323, !325, !329, !332, !334, !335, !336, !337, !338, !342, !343}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !292, file: !293, line: 242, baseType: !207, size: 32, align: 32)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !292, file: !293, line: 247, baseType: !297, size: 64, align: 64, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64, align: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !292, file: !293, line: 248, baseType: !297, size: 64, align: 64, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !292, file: !293, line: 249, baseType: !297, size: 64, align: 64, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !292, file: !293, line: 250, baseType: !297, size: 64, align: 64, offset: 256)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !292, file: !293, line: 251, baseType: !297, size: 64, align: 64, offset: 320)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !292, file: !293, line: 252, baseType: !297, size: 64, align: 64, offset: 384)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !292, file: !293, line: 253, baseType: !297, size: 64, align: 64, offset: 448)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !292, file: !293, line: 254, baseType: !297, size: 64, align: 64, offset: 512)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !292, file: !293, line: 256, baseType: !297, size: 64, align: 64, offset: 576)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !292, file: !293, line: 257, baseType: !297, size: 64, align: 64, offset: 640)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !292, file: !293, line: 258, baseType: !297, size: 64, align: 64, offset: 704)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !292, file: !293, line: 260, baseType: !309, size: 64, align: 64, offset: 768)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64, align: 64)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !293, line: 156, size: 192, align: 64, elements: !311)
!311 = !{!312, !313, !315}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !310, file: !293, line: 157, baseType: !309, size: 64, align: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !310, file: !293, line: 158, baseType: !314, size: 64, align: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64, align: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !310, file: !293, line: 162, baseType: !207, size: 32, align: 32, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !292, file: !293, line: 262, baseType: !314, size: 64, align: 64, offset: 832)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !292, file: !293, line: 264, baseType: !207, size: 32, align: 32, offset: 896)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !292, file: !293, line: 268, baseType: !207, size: 32, align: 32, offset: 928)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !292, file: !293, line: 270, baseType: !320, size: 64, align: 64, offset: 960)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !263, line: 131, baseType: !321)
!321 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !292, file: !293, line: 274, baseType: !209, size: 16, align: 16, offset: 1024)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !292, file: !293, line: 275, baseType: !324, size: 8, align: 8, offset: 1040)
!324 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !292, file: !293, line: 276, baseType: !326, size: 8, align: 8, offset: 1048)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 8, align: 8, elements: !327)
!327 = !{!328}
!328 = !DISubrange(count: 1)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !292, file: !293, line: 280, baseType: !330, size: 64, align: 64, offset: 1088)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, align: 64)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !293, line: 150, baseType: null)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !292, file: !293, line: 289, baseType: !333, size: 64, align: 64, offset: 1152)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !263, line: 132, baseType: !321)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !292, file: !293, line: 297, baseType: !208, size: 64, align: 64, offset: 1216)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !292, file: !293, line: 298, baseType: !208, size: 64, align: 64, offset: 1280)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !292, file: !293, line: 299, baseType: !208, size: 64, align: 64, offset: 1344)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !292, file: !293, line: 300, baseType: !208, size: 64, align: 64, offset: 1408)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !292, file: !293, line: 302, baseType: !339, size: 64, align: 64, offset: 1472)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !340, line: 216, baseType: !341)
!340 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!341 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !292, file: !293, line: 303, baseType: !207, size: 32, align: 32, offset: 1536)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !292, file: !293, line: 305, baseType: !344, size: 160, align: 8, offset: 1568)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 160, align: 8, elements: !345)
!345 = !{!346}
!346 = !DISubrange(count: 20)
!347 = !{i32 2, !"Dwarf Version", i32 4}
!348 = !{i32 2, !"Debug Info Version", i32 3}
!349 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!350 = distinct !DISubprogram(name: "add_link_local_address", scope: !253, file: !253, line: 62, type: !351, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!351 = !DISubroutineType(types: !352)
!352 = !{!353, !354, !245}
!353 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64, align: 64)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "interface_t", file: !39, line: 111, baseType: !356)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_interface", file: !39, line: 76, size: 1792, align: 64, elements: !357)
!357 = !{!358, !360, !362, !363, !364, !365, !366, !367, !368, !372, !373, !374, !375, !376, !377, !379, !380, !381, !382, !403, !404, !405, !406, !407, !408, !409, !410}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "ifname", scope: !356, file: !39, line: 77, baseType: !359, size: 128, align: 8)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 128, align: 8, elements: !234)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !356, file: !39, line: 78, baseType: !361, size: 32, align: 32, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "ifindex_t", file: !39, line: 62, baseType: !222)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !356, file: !39, line: 79, baseType: !247, size: 32, align: 32, offset: 160)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !356, file: !39, line: 80, baseType: !225, size: 128, align: 32, offset: 192)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "ifi_flags", scope: !356, file: !39, line: 81, baseType: !223, size: 32, align: 32, offset: 320)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "linkbeat_use_polling", scope: !356, file: !39, line: 82, baseType: !353, size: 8, align: 8, offset: 352)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !356, file: !39, line: 83, baseType: !222, size: 32, align: 32, offset: 384)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "hw_type", scope: !356, file: !39, line: 84, baseType: !209, size: 16, align: 16, offset: 416)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr", scope: !356, file: !39, line: 85, baseType: !369, size: 256, align: 8, offset: 432)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 256, align: 8, elements: !370)
!370 = !{!371}
!371 = !DISubrange(count: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_bcast", scope: !356, file: !39, line: 86, baseType: !369, size: 256, align: 8, offset: 688)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_len", scope: !356, file: !39, line: 87, baseType: !339, size: 64, align: 64, offset: 960)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "lb_type", scope: !356, file: !39, line: 88, baseType: !207, size: 32, align: 32, offset: 1024)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "vmac", scope: !356, file: !39, line: 90, baseType: !353, size: 8, align: 8, offset: 1056)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifindex", scope: !356, file: !39, line: 91, baseType: !361, size: 32, align: 32, offset: 1088)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifp", scope: !356, file: !39, line: 92, baseType: !378, size: 64, align: 64, offset: 1152)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64, align: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifindex", scope: !356, file: !39, line: 94, baseType: !361, size: 32, align: 32, offset: 1216)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifp", scope: !356, file: !39, line: 96, baseType: !378, size: 64, align: 64, offset: 1280)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master", scope: !356, file: !39, line: 97, baseType: !353, size: 8, align: 8, offset: 1344)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "garp_delay", scope: !356, file: !39, line: 100, baseType: !383, size: 64, align: 64, offset: 1408)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64, align: 64)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "garp_delay_t", file: !39, line: 73, baseType: !385)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_garp_delay", file: !39, line: 65, size: 704, align: 64, elements: !386)
!386 = !{!387, !397, !398, !399, !400, !401, !402}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "garp_interval", scope: !385, file: !39, line: 66, baseType: !388, size: 128, align: 64)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "timeval_t", file: !389, line: 31, baseType: !390)
!389 = !DIFile(filename: "../../lib/timer.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !391, line: 30, size: 128, align: 64, elements: !392)
!391 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!392 = !{!393, !395}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !390, file: !391, line: 32, baseType: !394, size: 64, align: 64)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !263, line: 139, baseType: !321)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !390, file: !391, line: 33, baseType: !396, size: 64, align: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !263, line: 141, baseType: !321)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "have_garp_interval", scope: !385, file: !39, line: 67, baseType: !353, size: 8, align: 8, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "gna_interval", scope: !385, file: !39, line: 68, baseType: !388, size: 128, align: 64, offset: 192)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "have_gna_interval", scope: !385, file: !39, line: 69, baseType: !353, size: 8, align: 8, offset: 320)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "garp_next_time", scope: !385, file: !39, line: 70, baseType: !388, size: 128, align: 64, offset: 384)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "gna_next_time", scope: !385, file: !39, line: 71, baseType: !388, size: 128, align: 64, offset: 512)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "aggregation_group", scope: !385, file: !39, line: 72, baseType: !207, size: 32, align: 32, offset: 640)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "gna_router", scope: !356, file: !39, line: 101, baseType: !353, size: 8, align: 8, offset: 1472)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_config", scope: !356, file: !39, line: 102, baseType: !207, size: 32, align: 32, offset: 1504)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_ignore_value", scope: !356, file: !39, line: 103, baseType: !222, size: 32, align: 32, offset: 1536)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_filter_value", scope: !356, file: !39, line: 104, baseType: !222, size: 32, align: 32, offset: 1568)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "reset_promote_secondaries", scope: !356, file: !39, line: 105, baseType: !222, size: 32, align: 32, offset: 1600)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "rp_filter", scope: !356, file: !39, line: 107, baseType: !223, size: 32, align: 32, offset: 1632)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "promote_secondaries_already_set", scope: !356, file: !39, line: 109, baseType: !353, size: 8, align: 8, offset: 1664)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "tracking_vrrp", scope: !356, file: !39, line: 110, baseType: !267, size: 64, align: 64, offset: 1728)
!411 = !{}
!412 = !DILocalVariable(name: "ifp", arg: 1, scope: !350, file: !253, line: 62, type: !354)
!413 = !DIExpression()
!414 = !DILocation(line: 62, column: 37, scope: !350)
!415 = !DILocalVariable(name: "sin6_addr", arg: 2, scope: !350, file: !253, line: 62, type: !245)
!416 = !DILocation(line: 62, column: 59, scope: !350)
!417 = !DILocalVariable(name: "ipaddress", scope: !350, file: !253, line: 64, type: !418)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_address_t", file: !419, line: 73, baseType: !420)
!419 = !DIFile(filename: "./../include/vrrp_ipaddress.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ip_address", file: !419, line: 41, size: 704, align: 64, elements: !421)
!421 = !{!422, !434, !443, !444, !445, !446, !447, !448, !453, !454, !472, !473, !474}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "ifa", scope: !420, file: !419, line: 42, baseType: !423, size: 64, align: 32)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ifaddrmsg", file: !424, line: 7, size: 64, align: 32, elements: !425)
!424 = !DIFile(filename: "/usr/include/linux/if_addr.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!425 = !{!426, !429, !430, !431, !432}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_family", scope: !423, file: !424, line: 8, baseType: !427, size: 8, align: 8)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !428, line: 20, baseType: !233)
!428 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!429 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_prefixlen", scope: !423, file: !424, line: 9, baseType: !427, size: 8, align: 8, offset: 8)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_flags", scope: !423, file: !424, line: 10, baseType: !427, size: 8, align: 8, offset: 16)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_scope", scope: !423, file: !424, line: 11, baseType: !427, size: 8, align: 8, offset: 24)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_index", scope: !423, file: !424, line: 12, baseType: !433, size: 32, align: 32, offset: 32)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !428, line: 26, baseType: !223)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !420, file: !419, line: 50, baseType: !435, size: 128, align: 32, offset: 64)
!435 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !420, file: !419, line: 44, size: 128, align: 32, elements: !436)
!436 = !{!437, !442}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "sin", scope: !435, file: !419, line: 48, baseType: !438, size: 64, align: 32)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !435, file: !419, line: 45, size: 64, align: 32, elements: !439)
!439 = !{!440, !441}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !438, file: !419, line: 46, baseType: !247, size: 32, align: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "sin_brd", scope: !438, file: !419, line: 47, baseType: !247, size: 32, align: 32, offset: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !435, file: !419, line: 49, baseType: !225, size: 128, align: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "ifp", scope: !420, file: !419, line: 52, baseType: !354, size: 64, align: 64, offset: 192)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !420, file: !419, line: 53, baseType: !297, size: 64, align: 64, offset: 256)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !420, file: !419, line: 55, baseType: !222, size: 32, align: 32, offset: 320)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "flagmask", scope: !420, file: !419, line: 56, baseType: !222, size: 32, align: 32, offset: 352)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "have_peer", scope: !420, file: !419, line: 61, baseType: !353, size: 8, align: 8, offset: 384)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !420, file: !419, line: 65, baseType: !449, size: 128, align: 32, offset: 416)
!449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !420, file: !419, line: 62, size: 128, align: 32, elements: !450)
!450 = !{!451, !452}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !449, file: !419, line: 63, baseType: !247, size: 32, align: 32)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !449, file: !419, line: 64, baseType: !225, size: 128, align: 32)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "dont_track", scope: !420, file: !419, line: 66, baseType: !353, size: 8, align: 8, offset: 544)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "track_group", scope: !420, file: !419, line: 67, baseType: !455, size: 64, align: 64, offset: 576)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64, align: 64)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "static_track_group_t", file: !457, line: 39, baseType: !458)
!457 = !DIFile(filename: "./../include/vrrp_static_track.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_static_track_group", file: !457, line: 35, size: 192, align: 64, elements: !459)
!459 = !{!460, !461, !471}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !458, file: !457, line: 36, baseType: !297, size: 64, align: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !458, file: !457, line: 37, baseType: !462, size: 64, align: 64, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64, align: 64)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "vector_t", file: !464, line: 34, baseType: !465)
!464 = !DIFile(filename: "../../lib/vector.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vector", file: !464, line: 30, size: 128, align: 64, elements: !466)
!466 = !{!467, !468, !469}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !465, file: !464, line: 31, baseType: !223, size: 32, align: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !465, file: !464, line: 32, baseType: !223, size: 32, align: 32, offset: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !465, file: !464, line: 33, baseType: !470, size: 64, align: 64, offset: 64)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp_instances", scope: !458, file: !457, line: 38, baseType: !267, size: 64, align: 64, offset: 128)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !420, file: !419, line: 69, baseType: !353, size: 8, align: 8, offset: 640)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "iptable_rule_set", scope: !420, file: !419, line: 70, baseType: !353, size: 8, align: 8, offset: 648)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "garp_gna_pending", scope: !420, file: !419, line: 72, baseType: !353, size: 8, align: 8, offset: 656)
!475 = !DILocation(line: 64, column: 15, scope: !350)
!476 = !DILocation(line: 66, column: 2, scope: !350)
!477 = !DILocation(line: 69, column: 18, scope: !350)
!478 = !DILocation(line: 69, column: 12, scope: !350)
!479 = !DILocation(line: 69, column: 16, scope: !350)
!480 = !DILocation(line: 70, column: 12, scope: !350)
!481 = !DILocation(line: 70, column: 14, scope: !350)
!482 = !DILocation(line: 70, column: 27, scope: !350)
!483 = !DILocation(line: 70, column: 26, scope: !350)
!484 = !DILocation(line: 72, column: 12, scope: !350)
!485 = !DILocation(line: 72, column: 16, scope: !350)
!486 = !DILocation(line: 72, column: 27, scope: !350)
!487 = !DILocation(line: 73, column: 12, scope: !350)
!488 = !DILocation(line: 73, column: 16, scope: !350)
!489 = !DILocation(line: 73, column: 30, scope: !350)
!490 = !DILocation(line: 74, column: 28, scope: !350)
!491 = !DILocation(line: 74, column: 33, scope: !350)
!492 = !DILocation(line: 74, column: 12, scope: !350)
!493 = !DILocation(line: 74, column: 16, scope: !350)
!494 = !DILocation(line: 74, column: 26, scope: !350)
!495 = !DILocation(line: 76, column: 6, scope: !496)
!496 = distinct !DILexicalBlock(scope: !350, file: !253, line: 76, column: 6)
!497 = !DILocation(line: 76, column: 39, scope: !496)
!498 = !DILocation(line: 76, column: 6, scope: !350)
!499 = !DILocation(line: 77, column: 3, scope: !500)
!500 = distinct !DILexicalBlock(scope: !496, file: !253, line: 76, column: 45)
!501 = !DILocation(line: 78, column: 3, scope: !500)
!502 = !DILocation(line: 78, column: 8, scope: !500)
!503 = !DILocation(line: 78, column: 17, scope: !500)
!504 = !DILocation(line: 78, column: 25, scope: !500)
!505 = !DILocation(line: 78, column: 30, scope: !500)
!506 = !DILocation(line: 80, column: 3, scope: !500)
!507 = !DILocation(line: 84, column: 2, scope: !350)
!508 = !DILocation(line: 84, column: 7, scope: !350)
!509 = !DILocation(line: 84, column: 29, scope: !350)
!510 = !DILocation(line: 84, column: 31, scope: !350)
!511 = !DILocation(line: 86, column: 2, scope: !350)
!512 = !DILocation(line: 87, column: 1, scope: !350)
!513 = distinct !DISubprogram(name: "replace_link_local_address", scope: !253, file: !253, line: 90, type: !514, isLocal: false, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!514 = !DISubroutineType(types: !515)
!515 = !{!353, !354}
!516 = !DILocalVariable(name: "ifp", arg: 1, scope: !513, file: !253, line: 90, type: !354)
!517 = !DILocation(line: 90, column: 41, scope: !513)
!518 = !DILocalVariable(name: "ipaddress", scope: !513, file: !253, line: 92, type: !418)
!519 = !DILocation(line: 92, column: 15, scope: !513)
!520 = !DILocalVariable(name: "ipaddress_new", scope: !513, file: !253, line: 93, type: !225)
!521 = !DILocation(line: 93, column: 18, scope: !513)
!522 = !DILocation(line: 95, column: 2, scope: !513)
!523 = !DILocation(line: 98, column: 42, scope: !513)
!524 = !DILocation(line: 98, column: 47, scope: !513)
!525 = !DILocation(line: 98, column: 57, scope: !513)
!526 = !DILocation(line: 98, column: 2, scope: !513)
!527 = !DILocation(line: 101, column: 28, scope: !528)
!528 = distinct !DILexicalBlock(scope: !513, file: !253, line: 101, column: 6)
!529 = !DILocation(line: 101, column: 45, scope: !528)
!530 = !DILocation(line: 101, column: 50, scope: !528)
!531 = !DILocation(line: 101, column: 44, scope: !528)
!532 = !DILocation(line: 101, column: 6, scope: !528)
!533 = !DILocation(line: 101, column: 6, scope: !513)
!534 = !DILocation(line: 102, column: 3, scope: !528)
!535 = !DILocation(line: 105, column: 18, scope: !513)
!536 = !DILocation(line: 105, column: 12, scope: !513)
!537 = !DILocation(line: 105, column: 16, scope: !513)
!538 = !DILocation(line: 106, column: 12, scope: !513)
!539 = !DILocation(line: 106, column: 14, scope: !513)
!540 = !DILocation(line: 106, column: 26, scope: !513)
!541 = !DILocation(line: 106, column: 31, scope: !513)
!542 = !DILocation(line: 108, column: 12, scope: !513)
!543 = !DILocation(line: 108, column: 16, scope: !513)
!544 = !DILocation(line: 108, column: 27, scope: !513)
!545 = !DILocation(line: 109, column: 12, scope: !513)
!546 = !DILocation(line: 109, column: 16, scope: !513)
!547 = !DILocation(line: 109, column: 30, scope: !513)
!548 = !DILocation(line: 110, column: 28, scope: !513)
!549 = !DILocation(line: 110, column: 33, scope: !513)
!550 = !DILocation(line: 110, column: 12, scope: !513)
!551 = !DILocation(line: 110, column: 16, scope: !513)
!552 = !DILocation(line: 110, column: 26, scope: !513)
!553 = !DILocation(line: 112, column: 6, scope: !554)
!554 = distinct !DILexicalBlock(scope: !513, file: !253, line: 112, column: 6)
!555 = !DILocation(line: 112, column: 39, scope: !554)
!556 = !DILocation(line: 112, column: 6, scope: !513)
!557 = !DILocation(line: 113, column: 3, scope: !554)
!558 = !DILocation(line: 115, column: 3, scope: !554)
!559 = !DILocation(line: 115, column: 8, scope: !554)
!560 = !DILocation(line: 115, column: 17, scope: !554)
!561 = !DILocation(line: 115, column: 25, scope: !554)
!562 = !DILocation(line: 115, column: 30, scope: !554)
!563 = !DILocation(line: 117, column: 12, scope: !513)
!564 = !DILocation(line: 117, column: 14, scope: !513)
!565 = !DILocation(line: 117, column: 26, scope: !513)
!566 = !DILocation(line: 118, column: 6, scope: !567)
!567 = distinct !DILexicalBlock(scope: !513, file: !253, line: 118, column: 6)
!568 = !DILocation(line: 118, column: 39, scope: !567)
!569 = !DILocation(line: 118, column: 6, scope: !513)
!570 = !DILocation(line: 119, column: 3, scope: !571)
!571 = distinct !DILexicalBlock(scope: !567, file: !253, line: 118, column: 45)
!572 = !DILocation(line: 120, column: 3, scope: !571)
!573 = !DILocation(line: 120, column: 8, scope: !571)
!574 = !DILocation(line: 120, column: 17, scope: !571)
!575 = !DILocation(line: 120, column: 25, scope: !571)
!576 = !DILocation(line: 120, column: 30, scope: !571)
!577 = !DILocation(line: 122, column: 3, scope: !571)
!578 = !DILocation(line: 126, column: 2, scope: !513)
!579 = !DILocation(line: 126, column: 7, scope: !513)
!580 = !DILocation(line: 126, column: 29, scope: !513)
!581 = !DILocation(line: 126, column: 31, scope: !513)
!582 = !DILocation(line: 128, column: 2, scope: !513)
!583 = !DILocation(line: 129, column: 1, scope: !513)
!584 = distinct !DISubprogram(name: "make_link_local_address", scope: !253, file: !253, line: 45, type: !585, isLocal: true, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!585 = !DISubroutineType(types: !586)
!586 = !{null, !245, !587}
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64, align: 64)
!588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!589 = !DILocalVariable(name: "l3_addr", arg: 1, scope: !584, file: !253, line: 45, type: !245)
!590 = !DILocation(line: 45, column: 42, scope: !584)
!591 = !DILocalVariable(name: "ll_addr", arg: 2, scope: !584, file: !253, line: 45, type: !587)
!592 = !DILocation(line: 45, column: 65, scope: !584)
!593 = !DILocation(line: 47, column: 2, scope: !584)
!594 = !DILocation(line: 47, column: 10, scope: !584)
!595 = !DILocation(line: 47, column: 18, scope: !584)
!596 = !DILocation(line: 47, column: 21, scope: !584)
!597 = !DILocation(line: 48, column: 2, scope: !584)
!598 = !DILocation(line: 48, column: 10, scope: !584)
!599 = !DILocation(line: 48, column: 18, scope: !584)
!600 = !DILocation(line: 48, column: 21, scope: !584)
!601 = !DILocation(line: 49, column: 2, scope: !584)
!602 = !DILocation(line: 49, column: 10, scope: !584)
!603 = !DILocation(line: 49, column: 18, scope: !584)
!604 = !DILocation(line: 49, column: 23, scope: !584)
!605 = !DILocation(line: 50, column: 2, scope: !584)
!606 = !DILocation(line: 50, column: 10, scope: !584)
!607 = !DILocation(line: 50, column: 18, scope: !584)
!608 = !DILocation(line: 50, column: 23, scope: !584)
!609 = !DILocation(line: 51, column: 23, scope: !584)
!610 = !DILocation(line: 51, column: 34, scope: !584)
!611 = !DILocation(line: 51, column: 2, scope: !584)
!612 = !DILocation(line: 51, column: 10, scope: !584)
!613 = !DILocation(line: 51, column: 18, scope: !584)
!614 = !DILocation(line: 51, column: 21, scope: !584)
!615 = !DILocation(line: 52, column: 23, scope: !584)
!616 = !DILocation(line: 52, column: 2, scope: !584)
!617 = !DILocation(line: 52, column: 10, scope: !584)
!618 = !DILocation(line: 52, column: 18, scope: !584)
!619 = !DILocation(line: 52, column: 21, scope: !584)
!620 = !DILocation(line: 53, column: 24, scope: !584)
!621 = !DILocation(line: 53, column: 2, scope: !584)
!622 = !DILocation(line: 53, column: 10, scope: !584)
!623 = !DILocation(line: 53, column: 18, scope: !584)
!624 = !DILocation(line: 53, column: 22, scope: !584)
!625 = !DILocation(line: 54, column: 2, scope: !584)
!626 = !DILocation(line: 54, column: 10, scope: !584)
!627 = !DILocation(line: 54, column: 18, scope: !584)
!628 = !DILocation(line: 54, column: 22, scope: !584)
!629 = !DILocation(line: 55, column: 2, scope: !584)
!630 = !DILocation(line: 55, column: 10, scope: !584)
!631 = !DILocation(line: 55, column: 18, scope: !584)
!632 = !DILocation(line: 55, column: 22, scope: !584)
!633 = !DILocation(line: 56, column: 24, scope: !584)
!634 = !DILocation(line: 56, column: 2, scope: !584)
!635 = !DILocation(line: 56, column: 10, scope: !584)
!636 = !DILocation(line: 56, column: 18, scope: !584)
!637 = !DILocation(line: 56, column: 22, scope: !584)
!638 = !DILocation(line: 57, column: 24, scope: !584)
!639 = !DILocation(line: 57, column: 2, scope: !584)
!640 = !DILocation(line: 57, column: 10, scope: !584)
!641 = !DILocation(line: 57, column: 18, scope: !584)
!642 = !DILocation(line: 57, column: 22, scope: !584)
!643 = !DILocation(line: 58, column: 24, scope: !584)
!644 = !DILocation(line: 58, column: 2, scope: !584)
!645 = !DILocation(line: 58, column: 10, scope: !584)
!646 = !DILocation(line: 58, column: 18, scope: !584)
!647 = !DILocation(line: 58, column: 22, scope: !584)
!648 = !DILocation(line: 59, column: 1, scope: !584)
!649 = distinct !DISubprogram(name: "inaddr_equal", scope: !650, file: !650, line: 96, type: !651, isLocal: true, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!650 = !DIFile(filename: "../../lib/utils.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!651 = !DISubroutineType(types: !652)
!652 = !{!353, !215, !208, !208}
!653 = !DILocalVariable(name: "family", arg: 1, scope: !649, file: !650, line: 96, type: !215)
!654 = !DILocation(line: 96, column: 44, scope: !649)
!655 = !DILocalVariable(name: "addr1", arg: 2, scope: !649, file: !650, line: 96, type: !208)
!656 = !DILocation(line: 96, column: 58, scope: !649)
!657 = !DILocalVariable(name: "addr2", arg: 3, scope: !649, file: !650, line: 96, type: !208)
!658 = !DILocation(line: 96, column: 71, scope: !649)
!659 = !DILocation(line: 98, column: 6, scope: !660)
!660 = distinct !DILexicalBlock(scope: !649, file: !650, line: 98, column: 6)
!661 = !DILocation(line: 98, column: 13, scope: !660)
!662 = !DILocation(line: 98, column: 6, scope: !649)
!663 = !DILocalVariable(name: "a1", scope: !664, file: !650, line: 99, type: !245)
!664 = distinct !DILexicalBlock(scope: !660, file: !650, line: 98, column: 25)
!665 = !DILocation(line: 99, column: 20, scope: !664)
!666 = !DILocation(line: 99, column: 45, scope: !664)
!667 = !DILocation(line: 99, column: 25, scope: !664)
!668 = !DILocalVariable(name: "a2", scope: !664, file: !650, line: 100, type: !245)
!669 = !DILocation(line: 100, column: 20, scope: !664)
!670 = !DILocation(line: 100, column: 45, scope: !664)
!671 = !DILocation(line: 100, column: 25, scope: !664)
!672 = !DILocation(line: 102, column: 24, scope: !673)
!673 = distinct !DILexicalBlock(scope: !664, file: !650, line: 102, column: 7)
!674 = !DILocation(line: 102, column: 28, scope: !673)
!675 = !DILocation(line: 102, column: 7, scope: !673)
!676 = !DILocation(line: 102, column: 7, scope: !664)
!677 = !DILocation(line: 103, column: 4, scope: !673)
!678 = !DILocation(line: 104, column: 2, scope: !664)
!679 = !DILocation(line: 104, column: 13, scope: !680)
!680 = !DILexicalBlockFile(scope: !681, file: !650, discriminator: 1)
!681 = distinct !DILexicalBlock(scope: !660, file: !650, line: 104, column: 13)
!682 = !DILocation(line: 104, column: 20, scope: !680)
!683 = !DILocalVariable(name: "a1", scope: !684, file: !650, line: 105, type: !246)
!684 = distinct !DILexicalBlock(scope: !681, file: !650, line: 104, column: 31)
!685 = !DILocation(line: 105, column: 19, scope: !684)
!686 = !DILocation(line: 105, column: 43, scope: !684)
!687 = !DILocation(line: 105, column: 24, scope: !684)
!688 = !DILocalVariable(name: "a2", scope: !684, file: !650, line: 106, type: !246)
!689 = !DILocation(line: 106, column: 19, scope: !684)
!690 = !DILocation(line: 106, column: 43, scope: !684)
!691 = !DILocation(line: 106, column: 24, scope: !684)
!692 = !DILocation(line: 108, column: 7, scope: !693)
!693 = distinct !DILexicalBlock(scope: !684, file: !650, line: 108, column: 7)
!694 = !DILocation(line: 108, column: 11, scope: !693)
!695 = !DILocation(line: 108, column: 21, scope: !693)
!696 = !DILocation(line: 108, column: 25, scope: !693)
!697 = !DILocation(line: 108, column: 18, scope: !693)
!698 = !DILocation(line: 108, column: 7, scope: !684)
!699 = !DILocation(line: 109, column: 4, scope: !693)
!700 = !DILocation(line: 110, column: 2, scope: !684)
!701 = !DILocation(line: 112, column: 2, scope: !649)
!702 = !DILocation(line: 113, column: 1, scope: !649)
!703 = distinct !DISubprogram(name: "netlink_link_add_vmac", scope: !253, file: !253, line: 184, type: !704, isLocal: false, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!704 = !DISubroutineType(types: !705)
!705 = !{!353, !706}
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64, align: 64)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_t", file: !4, line: 310, baseType: !708)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_t", file: !4, line: 183, size: 7040, align: 64, elements: !709)
!709 = !{!710, !711, !712, !751, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !793, !794, !795, !796, !797, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !955, !962}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !708, file: !4, line: 184, baseType: !215, size: 16, align: 16)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !708, file: !4, line: 185, baseType: !297, size: 64, align: 64, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !708, file: !4, line: 186, baseType: !713, size: 64, align: 64, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64, align: 64)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_sgroup_t", file: !4, line: 133, baseType: !715)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_sgroup", file: !4, line: 109, size: 1024, align: 64, elements: !716)
!716 = !{!717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !745, !746, !747, !748, !749, !750}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !715, file: !4, line: 110, baseType: !297, size: 64, align: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !715, file: !4, line: 111, baseType: !462, size: 64, align: 64, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp_instances", scope: !715, file: !4, line: 112, baseType: !267, size: 64, align: 64, offset: 128)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "num_member_fault", scope: !715, file: !4, line: 113, baseType: !223, size: 32, align: 32, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "num_member_init", scope: !715, file: !4, line: 114, baseType: !223, size: 32, align: 32, offset: 224)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !715, file: !4, line: 115, baseType: !207, size: 32, align: 32, offset: 256)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "sgroup_tracking_weight", scope: !715, file: !4, line: 116, baseType: !353, size: 8, align: 8, offset: 288)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "track_ifp", scope: !715, file: !4, line: 119, baseType: !267, size: 64, align: 64, offset: 320)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "track_script", scope: !715, file: !4, line: 120, baseType: !267, size: 64, align: 64, offset: 384)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "track_file", scope: !715, file: !4, line: 121, baseType: !267, size: 64, align: 64, offset: 448)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "track_bfd", scope: !715, file: !4, line: 122, baseType: !267, size: 64, align: 64, offset: 512)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "notify_exec", scope: !715, file: !4, line: 125, baseType: !353, size: 8, align: 8, offset: 576)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "script_backup", scope: !715, file: !4, line: 126, baseType: !730, size: 64, align: 64, offset: 640)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64, align: 64)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "notify_script_t", file: !732, line: 65, baseType: !733)
!732 = !DIFile(filename: "../../lib/notify.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_notify_script", file: !732, line: 59, size: 192, align: 64, elements: !734)
!734 = !{!735, !737, !738, !739, !742}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !733, file: !732, line: 60, baseType: !736, size: 64, align: 64)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64, align: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !733, file: !732, line: 61, baseType: !207, size: 32, align: 32, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !733, file: !732, line: 62, baseType: !207, size: 32, align: 32, offset: 96)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !733, file: !732, line: 63, baseType: !740, size: 32, align: 32, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !261, line: 80, baseType: !741)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !263, line: 125, baseType: !223)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !733, file: !732, line: 64, baseType: !743, size: 32, align: 32, offset: 160)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !261, line: 65, baseType: !744)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !263, line: 126, baseType: !223)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "script_master", scope: !715, file: !4, line: 127, baseType: !730, size: 64, align: 64, offset: 704)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "script_fault", scope: !715, file: !4, line: 128, baseType: !730, size: 64, align: 64, offset: 768)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "script_stop", scope: !715, file: !4, line: 129, baseType: !730, size: 64, align: 64, offset: 832)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "script", scope: !715, file: !4, line: 130, baseType: !730, size: 64, align: 64, offset: 896)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !715, file: !4, line: 131, baseType: !207, size: 32, align: 32, offset: 960)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "last_email_state", scope: !715, file: !4, line: 132, baseType: !207, size: 32, align: 32, offset: 992)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !708, file: !4, line: 187, baseType: !752, size: 64, align: 64, offset: 192)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64, align: 64)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_stats", file: !4, line: 169, baseType: !754)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_stats", file: !4, line: 136, size: 768, align: 64, elements: !755)
!755 = !{!756, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "advert_rcvd", scope: !754, file: !4, line: 137, baseType: !757, size: 64, align: 64)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !220, line: 55, baseType: !341)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "advert_sent", scope: !754, file: !4, line: 138, baseType: !222, size: 32, align: 32, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "become_master", scope: !754, file: !4, line: 140, baseType: !222, size: 32, align: 32, offset: 96)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "release_master", scope: !754, file: !4, line: 141, baseType: !222, size: 32, align: 32, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "packet_len_err", scope: !754, file: !4, line: 143, baseType: !757, size: 64, align: 64, offset: 192)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "advert_interval_err", scope: !754, file: !4, line: 144, baseType: !757, size: 64, align: 64, offset: 256)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "ip_ttl_err", scope: !754, file: !4, line: 145, baseType: !757, size: 64, align: 64, offset: 320)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_type_rcvd", scope: !754, file: !4, line: 146, baseType: !757, size: 64, align: 64, offset: 384)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "addr_list_err", scope: !754, file: !4, line: 147, baseType: !757, size: 64, align: 64, offset: 448)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_authtype", scope: !754, file: !4, line: 149, baseType: !222, size: 32, align: 32, offset: 512)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "authtype_mismatch", scope: !754, file: !4, line: 151, baseType: !222, size: 32, align: 32, offset: 544)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "auth_failure", scope: !754, file: !4, line: 152, baseType: !222, size: 32, align: 32, offset: 576)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "pri_zero_rcvd", scope: !754, file: !4, line: 155, baseType: !757, size: 64, align: 64, offset: 640)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "pri_zero_sent", scope: !754, file: !4, line: 156, baseType: !757, size: 64, align: 64, offset: 704)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "ifp", scope: !708, file: !4, line: 188, baseType: !354, size: 64, align: 64, offset: 256)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "dont_track_primary", scope: !708, file: !4, line: 189, baseType: !353, size: 8, align: 8, offset: 320)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "linkbeat_use_polling", scope: !708, file: !4, line: 190, baseType: !353, size: 8, align: 8, offset: 328)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "skip_check_adv_addr", scope: !708, file: !4, line: 191, baseType: !353, size: 8, align: 8, offset: 336)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "strict_mode", scope: !708, file: !4, line: 193, baseType: !223, size: 32, align: 32, offset: 352)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "vmac_flags", scope: !708, file: !4, line: 195, baseType: !341, size: 64, align: 64, offset: 384)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "vmac_ifname", scope: !708, file: !4, line: 196, baseType: !359, size: 128, align: 8, offset: 448)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "track_ifp", scope: !708, file: !4, line: 198, baseType: !267, size: 64, align: 64, offset: 576)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "track_script", scope: !708, file: !4, line: 199, baseType: !267, size: 64, align: 64, offset: 640)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "track_file", scope: !708, file: !4, line: 200, baseType: !267, size: 64, align: 64, offset: 704)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "num_script_if_fault", scope: !708, file: !4, line: 204, baseType: !223, size: 32, align: 32, offset: 768)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "num_script_init", scope: !708, file: !4, line: 205, baseType: !223, size: 32, align: 32, offset: 800)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !708, file: !4, line: 206, baseType: !784, size: 1024, align: 64, offset: 832)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !785, line: 166, size: 1024, align: 64, elements: !786)
!785 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!786 = !{!787, !788, !792}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !784, file: !785, line: 168, baseType: !215, size: 16, align: 16)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !784, file: !785, line: 169, baseType: !789, size: 944, align: 8, offset: 16)
!789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 944, align: 8, elements: !790)
!790 = !{!791}
!791 = !DISubrange(count: 118)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !784, file: !785, line: 170, baseType: !341, size: 64, align: 64, offset: 960)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "saddr_from_config", scope: !708, file: !4, line: 207, baseType: !353, size: 8, align: 8, offset: 1856)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "track_saddr", scope: !708, file: !4, line: 208, baseType: !353, size: 8, align: 8, offset: 1864)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_saddr", scope: !708, file: !4, line: 209, baseType: !784, size: 1024, align: 64, offset: 1920)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "unicast_peer", scope: !708, file: !4, line: 210, baseType: !267, size: 64, align: 64, offset: 2944)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "unicast_chksum_compat", scope: !708, file: !4, line: 212, baseType: !798, size: 32, align: 32, offset: 3008)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "chksum_compatibility_t", file: !4, line: 179, baseType: !3)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "master_saddr", scope: !708, file: !4, line: 214, baseType: !784, size: 1024, align: 64, offset: 3072)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "master_priority", scope: !708, file: !4, line: 215, baseType: !232, size: 8, align: 8, offset: 4096)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "last_transition", scope: !708, file: !4, line: 216, baseType: !388, size: 128, align: 64, offset: 4160)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "garp_delay", scope: !708, file: !4, line: 217, baseType: !223, size: 32, align: 32, offset: 4288)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh", scope: !708, file: !4, line: 218, baseType: !388, size: 128, align: 64, offset: 4352)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh_timer", scope: !708, file: !4, line: 219, baseType: !388, size: 128, align: 64, offset: 4480)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "garp_rep", scope: !708, file: !4, line: 220, baseType: !223, size: 32, align: 32, offset: 4608)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh_rep", scope: !708, file: !4, line: 221, baseType: !223, size: 32, align: 32, offset: 4640)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "garp_lower_prio_delay", scope: !708, file: !4, line: 222, baseType: !223, size: 32, align: 32, offset: 4672)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "garp_pending", scope: !708, file: !4, line: 223, baseType: !353, size: 8, align: 8, offset: 4704)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "gna_pending", scope: !708, file: !4, line: 224, baseType: !353, size: 8, align: 8, offset: 4712)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "garp_lower_prio_rep", scope: !708, file: !4, line: 225, baseType: !223, size: 32, align: 32, offset: 4736)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "lower_prio_no_advert", scope: !708, file: !4, line: 226, baseType: !223, size: 32, align: 32, offset: 4768)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "higher_prio_send_advert", scope: !708, file: !4, line: 227, baseType: !223, size: 32, align: 32, offset: 4800)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "vrid", scope: !708, file: !4, line: 228, baseType: !232, size: 8, align: 8, offset: 4832)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "base_priority", scope: !708, file: !4, line: 229, baseType: !232, size: 8, align: 8, offset: 4840)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "effective_priority", scope: !708, file: !4, line: 230, baseType: !232, size: 8, align: 8, offset: 4848)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "total_priority", scope: !708, file: !4, line: 231, baseType: !207, size: 32, align: 32, offset: 4864)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "vipset", scope: !708, file: !4, line: 233, baseType: !353, size: 8, align: 8, offset: 4896)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "vip", scope: !708, file: !4, line: 234, baseType: !267, size: 64, align: 64, offset: 4928)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "evip", scope: !708, file: !4, line: 235, baseType: !267, size: 64, align: 64, offset: 4992)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "promote_secondaries", scope: !708, file: !4, line: 239, baseType: !353, size: 8, align: 8, offset: 5056)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "evip_add_ipv6", scope: !708, file: !4, line: 240, baseType: !353, size: 8, align: 8, offset: 5064)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "vroutes", scope: !708, file: !4, line: 241, baseType: !267, size: 64, align: 64, offset: 5120)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "vrules", scope: !708, file: !4, line: 242, baseType: !267, size: 64, align: 64, offset: 5184)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "adver_int", scope: !708, file: !4, line: 243, baseType: !223, size: 32, align: 32, offset: 5248)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "master_adver_int", scope: !708, file: !4, line: 244, baseType: !223, size: 32, align: 32, offset: 5280)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !708, file: !4, line: 249, baseType: !223, size: 32, align: 32, offset: 5312)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_rx_buf_size", scope: !708, file: !4, line: 252, baseType: !339, size: 64, align: 64, offset: 5376)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "iptable_rules_set", scope: !708, file: !4, line: 254, baseType: !353, size: 8, align: 8, offset: 5440)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "nopreempt", scope: !708, file: !4, line: 255, baseType: !353, size: 8, align: 8, offset: 5448)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_delay", scope: !708, file: !4, line: 256, baseType: !341, size: 64, align: 64, offset: 5504)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_time", scope: !708, file: !4, line: 260, baseType: !388, size: 128, align: 64, offset: 5568)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !708, file: !4, line: 261, baseType: !207, size: 32, align: 32, offset: 5696)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "wantstate", scope: !708, file: !4, line: 265, baseType: !207, size: 32, align: 32, offset: 5728)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "reload_master", scope: !708, file: !4, line: 266, baseType: !353, size: 8, align: 8, offset: 5760)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "sockets", scope: !708, file: !4, line: 267, baseType: !836, size: 64, align: 64, offset: 5824)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64, align: 64)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "sock_t", file: !838, line: 50, baseType: !839)
!838 = !DIFile(filename: "./../include/vrrp_sock.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sock", file: !838, line: 40, size: 1344, align: 64, elements: !840)
!840 = !{!841, !842, !843, !844, !845, !846, !847, !848, !849}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !839, file: !838, line: 41, baseType: !215, size: 16, align: 16)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !839, file: !838, line: 42, baseType: !784, size: 1024, align: 64, offset: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !839, file: !838, line: 43, baseType: !207, size: 32, align: 32, offset: 1088)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !839, file: !838, line: 44, baseType: !361, size: 32, align: 32, offset: 1120)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "unicast", scope: !839, file: !838, line: 45, baseType: !353, size: 8, align: 8, offset: 1152)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "fd_in", scope: !839, file: !838, line: 46, baseType: !207, size: 32, align: 32, offset: 1184)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "fd_out", scope: !839, file: !838, line: 47, baseType: !207, size: 32, align: 32, offset: 1216)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "rx_buf_size", scope: !839, file: !838, line: 48, baseType: !207, size: 32, align: 32, offset: 1248)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !839, file: !838, line: 49, baseType: !850, size: 64, align: 64, offset: 1280)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64, align: 64)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_t", file: !12, line: 99, baseType: !852)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread", file: !12, line: 78, size: 768, align: 64, elements: !853)
!853 = !{!854, !855, !857, !910, !915, !916, !917, !929, !931}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !852, file: !12, line: 79, baseType: !341, size: 64, align: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !852, file: !12, line: 80, baseType: !856, size: 32, align: 32, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_type_t", file: !12, line: 63, baseType: !11)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !852, file: !12, line: 81, baseType: !858, size: 64, align: 64, offset: 128)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64, align: 64)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_master", file: !12, line: 112, size: 1280, align: 64, elements: !860)
!860 = !{!861, !873, !874, !875, !876, !884, !885, !886, !887, !888, !891, !902, !903, !904, !905, !906, !907, !908, !909}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !859, file: !12, line: 113, baseType: !862, size: 64, align: 64)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_root_t", file: !863, line: 109, baseType: !864)
!863 = !DIFile(filename: "../../lib/rbtree.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !863, line: 106, size: 64, align: 64, elements: !865)
!865 = !{!866}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !864, file: !863, line: 108, baseType: !867, size: 64, align: 64)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64, align: 64)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !863, line: 97, size: 192, align: 64, elements: !869)
!869 = !{!870, !871, !872}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "rb_parent_color", scope: !868, file: !863, line: 99, baseType: !341, size: 64, align: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !868, file: !863, line: 102, baseType: !867, size: 64, align: 64, offset: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !868, file: !863, line: 103, baseType: !867, size: 64, align: 64, offset: 128)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !859, file: !12, line: 114, baseType: !862, size: 64, align: 64, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !859, file: !12, line: 115, baseType: !862, size: 64, align: 64, offset: 128)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !859, file: !12, line: 116, baseType: !862, size: 64, align: 64, offset: 192)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !859, file: !12, line: 117, baseType: !877, size: 128, align: 64, offset: 256)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "list_head_t", file: !878, line: 62, baseType: !879)
!878 = !DIFile(filename: "../../lib/list_head.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !878, line: 60, size: 128, align: 64, elements: !880)
!880 = !{!881, !883}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !879, file: !878, line: 61, baseType: !882, size: 64, align: 64)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64, align: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !879, file: !878, line: 61, baseType: !882, size: 64, align: 64, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !859, file: !12, line: 121, baseType: !877, size: 128, align: 64, offset: 384)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "unuse", scope: !859, file: !12, line: 122, baseType: !877, size: 128, align: 64, offset: 512)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "child_pid_index", scope: !859, file: !12, line: 124, baseType: !267, size: 64, align: 64, offset: 640)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "io_events", scope: !859, file: !12, line: 127, baseType: !862, size: 64, align: 64, offset: 704)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_events", scope: !859, file: !12, line: 128, baseType: !889, size: 64, align: 64, offset: 768)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64, align: 64)
!890 = !DICompositeType(tag: DW_TAG_structure_type, name: "epoll_event", file: !12, line: 128, flags: DIFlagFwdDecl)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "current_event", scope: !859, file: !12, line: 129, baseType: !892, size: 64, align: 64, offset: 832)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64, align: 64)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_event_t", file: !12, line: 109, baseType: !894)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_event", file: !12, line: 102, size: 448, align: 64, elements: !895)
!895 = !{!896, !897, !898, !899, !900}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !894, file: !12, line: 103, baseType: !850, size: 64, align: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !894, file: !12, line: 104, baseType: !850, size: 64, align: 64, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !894, file: !12, line: 105, baseType: !341, size: 64, align: 64, offset: 128)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !894, file: !12, line: 106, baseType: !207, size: 32, align: 32, offset: 192)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !894, file: !12, line: 108, baseType: !901, size: 192, align: 64, offset: 256)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_node_t", file: !863, line: 104, baseType: !868)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_size", scope: !859, file: !12, line: 130, baseType: !223, size: 32, align: 32, offset: 896)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_count", scope: !859, file: !12, line: 131, baseType: !223, size: 32, align: 32, offset: 928)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_fd", scope: !859, file: !12, line: 132, baseType: !207, size: 32, align: 32, offset: 960)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "timer_fd", scope: !859, file: !12, line: 135, baseType: !207, size: 32, align: 32, offset: 992)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "timer_thread", scope: !859, file: !12, line: 136, baseType: !850, size: 64, align: 64, offset: 1024)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !859, file: !12, line: 146, baseType: !341, size: 64, align: 64, offset: 1088)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !859, file: !12, line: 147, baseType: !341, size: 64, align: 64, offset: 1152)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_timer_running", scope: !859, file: !12, line: 148, baseType: !353, size: 8, align: 8, offset: 1216)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !852, file: !12, line: 82, baseType: !911, size: 64, align: 64, offset: 192)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64, align: 64)
!912 = !DISubroutineType(types: !913)
!913 = !{!207, !914}
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64, align: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !852, file: !12, line: 83, baseType: !208, size: 64, align: 64, offset: 256)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "sands", scope: !852, file: !12, line: 84, baseType: !388, size: 128, align: 64, offset: 320)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !852, file: !12, line: 92, baseType: !918, size: 64, align: 32, offset: 448)
!918 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !852, file: !12, line: 85, size: 64, align: 32, elements: !919)
!919 = !{!920, !921, !922}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !918, file: !12, line: 86, baseType: !207, size: 32, align: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !918, file: !12, line: 87, baseType: !207, size: 32, align: 32)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !918, file: !12, line: 91, baseType: !923, size: 64, align: 32)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !918, file: !12, line: 88, size: 64, align: 32, elements: !924)
!924 = !{!925, !928}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !923, file: !12, line: 89, baseType: !926, size: 32, align: 32)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !261, line: 98, baseType: !927)
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !263, line: 133, baseType: !207)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !923, file: !12, line: 90, baseType: !207, size: 32, align: 32, offset: 32)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !852, file: !12, line: 93, baseType: !930, size: 64, align: 64, offset: 512)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64, align: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, scope: !852, file: !12, line: 95, baseType: !932, size: 192, align: 64, offset: 576)
!932 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !852, file: !12, line: 95, size: 192, align: 64, elements: !933)
!933 = !{!934, !935}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !932, file: !12, line: 96, baseType: !901, size: 192, align: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !932, file: !12, line: 97, baseType: !877, size: 128, align: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !708, file: !4, line: 269, baseType: !207, size: 32, align: 32, offset: 5888)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !708, file: !4, line: 271, baseType: !207, size: 32, align: 32, offset: 5920)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !708, file: !4, line: 274, baseType: !207, size: 32, align: 32, offset: 5952)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "last_email_state", scope: !708, file: !4, line: 275, baseType: !207, size: 32, align: 32, offset: 5984)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "notify_exec", scope: !708, file: !4, line: 276, baseType: !353, size: 8, align: 8, offset: 6016)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "script_backup", scope: !708, file: !4, line: 277, baseType: !730, size: 64, align: 64, offset: 6080)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "script_master", scope: !708, file: !4, line: 278, baseType: !730, size: 64, align: 64, offset: 6144)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "script_fault", scope: !708, file: !4, line: 279, baseType: !730, size: 64, align: 64, offset: 6208)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "script_stop", scope: !708, file: !4, line: 280, baseType: !730, size: 64, align: 64, offset: 6272)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "script_master_rx_lower_pri", scope: !708, file: !4, line: 281, baseType: !730, size: 64, align: 64, offset: 6336)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "script", scope: !708, file: !4, line: 282, baseType: !730, size: 64, align: 64, offset: 6400)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "ms_down_timer", scope: !708, file: !4, line: 285, baseType: !222, size: 32, align: 32, offset: 6464)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "sands", scope: !708, file: !4, line: 286, baseType: !388, size: 128, align: 64, offset: 6528)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "send_buffer", scope: !708, file: !4, line: 289, baseType: !297, size: 64, align: 64, offset: 6656)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "send_buffer_size", scope: !708, file: !4, line: 290, baseType: !339, size: 64, align: 64, offset: 6720)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_csum", scope: !708, file: !4, line: 291, baseType: !222, size: 32, align: 32, offset: 6784)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "auth_type", scope: !708, file: !4, line: 295, baseType: !232, size: 8, align: 8, offset: 6816)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "auth_data", scope: !708, file: !4, line: 296, baseType: !954, size: 64, align: 8, offset: 6824)
!954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 64, align: 8, elements: !238)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "ipsecah_counter", scope: !708, file: !4, line: 299, baseType: !956, size: 64, align: 32, offset: 6912)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_counter_t", file: !957, line: 58, baseType: !958)
!957 = !DIFile(filename: "./../include/vrrp_ipsecah.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_seq_counter", file: !957, line: 55, size: 64, align: 32, elements: !959)
!959 = !{!960, !961}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "cycle", scope: !958, file: !957, line: 56, baseType: !353, size: 8, align: 8)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "seq_number", scope: !958, file: !957, line: 57, baseType: !222, size: 32, align: 32, offset: 32)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "ip_id", scope: !708, file: !4, line: 309, baseType: !207, size: 32, align: 32, offset: 6976)
!963 = !DILocalVariable(name: "vrrp", arg: 1, scope: !703, file: !253, line: 184, type: !706)
!964 = !DILocation(line: 184, column: 31, scope: !703)
!965 = !DILocalVariable(name: "linkinfo", scope: !703, file: !253, line: 186, type: !966)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64, align: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtattr", file: !46, line: 156, size: 32, align: 16, elements: !968)
!968 = !{!969, !970}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "rta_len", scope: !967, file: !46, line: 157, baseType: !209, size: 16, align: 16)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "rta_type", scope: !967, file: !46, line: 158, baseType: !209, size: 16, align: 16, offset: 16)
!971 = !DILocation(line: 186, column: 17, scope: !703)
!972 = !DILocalVariable(name: "data", scope: !703, file: !253, line: 187, type: !966)
!973 = !DILocation(line: 187, column: 17, scope: !703)
!974 = !DILocalVariable(name: "ifp", scope: !703, file: !253, line: 188, type: !354)
!975 = !DILocation(line: 188, column: 15, scope: !703)
!976 = !DILocalVariable(name: "create_interface", scope: !703, file: !253, line: 189, type: !353)
!977 = !DILocation(line: 189, column: 6, scope: !703)
!978 = !DILocalVariable(name: "req", scope: !703, file: !253, line: 194, type: !979)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !703, file: !253, line: 190, size: 2304, align: 32, elements: !980)
!980 = !{!981, !991, !1000}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !979, file: !253, line: 191, baseType: !982, size: 128, align: 32)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nlmsghdr", file: !983, line: 42, size: 128, align: 32, elements: !984)
!983 = !DIFile(filename: "/usr/include/linux/netlink.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!984 = !{!985, !986, !988, !989, !990}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "nlmsg_len", scope: !982, file: !983, line: 43, baseType: !433, size: 32, align: 32)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "nlmsg_type", scope: !982, file: !983, line: 44, baseType: !987, size: 16, align: 16, offset: 32)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !428, line: 23, baseType: !209)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "nlmsg_flags", scope: !982, file: !983, line: 45, baseType: !987, size: 16, align: 16, offset: 48)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "nlmsg_seq", scope: !982, file: !983, line: 46, baseType: !433, size: 32, align: 32, offset: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "nlmsg_pid", scope: !982, file: !983, line: 47, baseType: !433, size: 32, align: 32, offset: 96)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "ifi", scope: !979, file: !253, line: 192, baseType: !992, size: 128, align: 32, offset: 128)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ifinfomsg", file: !46, line: 474, size: 128, align: 32, elements: !993)
!993 = !{!994, !995, !996, !997, !998, !999}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "ifi_family", scope: !992, file: !46, line: 475, baseType: !233, size: 8, align: 8)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "__ifi_pad", scope: !992, file: !46, line: 476, baseType: !233, size: 8, align: 8, offset: 8)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "ifi_type", scope: !992, file: !46, line: 477, baseType: !209, size: 16, align: 16, offset: 16)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "ifi_index", scope: !992, file: !46, line: 478, baseType: !207, size: 32, align: 32, offset: 32)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "ifi_flags", scope: !992, file: !46, line: 479, baseType: !223, size: 32, align: 32, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "ifi_change", scope: !992, file: !46, line: 480, baseType: !223, size: 32, align: 32, offset: 96)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !979, file: !253, line: 193, baseType: !1001, size: 2048, align: 8, offset: 256)
!1001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 2048, align: 8, elements: !1002)
!1002 = !{!1003}
!1003 = !DISubrange(count: 256)
!1004 = !DILocation(line: 194, column: 4, scope: !703)
!1005 = !DILocation(line: 196, column: 7, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !703, file: !253, line: 196, column: 6)
!1007 = !DILocation(line: 196, column: 13, scope: !1006)
!1008 = !DILocation(line: 196, column: 17, scope: !1006)
!1009 = !DILocation(line: 196, column: 50, scope: !1010)
!1010 = !DILexicalBlockFile(scope: !1006, file: !253, discriminator: 1)
!1011 = !DILocation(line: 196, column: 56, scope: !1010)
!1012 = !DILocation(line: 196, column: 20, scope: !1010)
!1013 = !DILocation(line: 196, column: 68, scope: !1010)
!1014 = !DILocation(line: 196, column: 72, scope: !1015)
!1015 = !DILexicalBlockFile(scope: !1006, file: !253, discriminator: 2)
!1016 = !DILocation(line: 196, column: 78, scope: !1015)
!1017 = !DILocation(line: 196, column: 6, scope: !1015)
!1018 = !DILocation(line: 197, column: 3, scope: !1006)
!1019 = !DILocation(line: 199, column: 6, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !703, file: !253, line: 199, column: 6)
!1021 = !DILocation(line: 199, column: 12, scope: !1020)
!1022 = !DILocation(line: 199, column: 19, scope: !1020)
!1023 = !DILocation(line: 199, column: 6, scope: !703)
!1024 = !DILocation(line: 200, column: 22, scope: !1020)
!1025 = !DILocation(line: 200, column: 3, scope: !1020)
!1026 = !DILocation(line: 202, column: 22, scope: !1020)
!1027 = !DILocation(line: 204, column: 23, scope: !703)
!1028 = !DILocation(line: 204, column: 29, scope: !703)
!1029 = !DILocation(line: 204, column: 21, scope: !703)
!1030 = !DILocation(line: 206, column: 2, scope: !703)
!1031 = !DILocation(line: 212, column: 30, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !703, file: !253, line: 212, column: 6)
!1033 = !DILocation(line: 212, column: 36, scope: !1032)
!1034 = !DILocation(line: 212, column: 13, scope: !1032)
!1035 = !DILocation(line: 212, column: 11, scope: !1032)
!1036 = !DILocation(line: 212, column: 68, scope: !1032)
!1037 = !DILocation(line: 213, column: 7, scope: !1032)
!1038 = !DILocation(line: 213, column: 12, scope: !1032)
!1039 = !DILocation(line: 212, column: 6, scope: !1040)
!1040 = !DILexicalBlockFile(scope: !703, file: !253, discriminator: 1)
!1041 = !DILocation(line: 215, column: 30, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !253, line: 215, column: 7)
!1043 = distinct !DILexicalBlock(scope: !1032, file: !253, line: 213, column: 21)
!1044 = !DILocation(line: 215, column: 35, scope: !1042)
!1045 = !DILocation(line: 215, column: 8, scope: !1042)
!1046 = !DILocation(line: 215, column: 77, scope: !1042)
!1047 = !DILocation(line: 215, column: 82, scope: !1042)
!1048 = !DILocation(line: 216, column: 8, scope: !1042)
!1049 = !DILocation(line: 216, column: 13, scope: !1042)
!1050 = !DILocation(line: 216, column: 29, scope: !1042)
!1051 = !DILocation(line: 216, column: 35, scope: !1042)
!1052 = !DILocation(line: 216, column: 40, scope: !1042)
!1053 = !DILocation(line: 216, column: 26, scope: !1042)
!1054 = !DILocation(line: 215, column: 7, scope: !1055)
!1055 = !DILexicalBlockFile(scope: !1043, file: !253, discriminator: 1)
!1056 = !DILocation(line: 219, column: 8, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !253, line: 219, column: 8)
!1058 = distinct !DILexicalBlock(scope: !1042, file: !253, line: 216, column: 50)
!1059 = !DILocation(line: 219, column: 13, scope: !1057)
!1060 = !DILocation(line: 219, column: 8, scope: !1058)
!1061 = !DILocation(line: 223, column: 13, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1057, file: !253, line: 219, column: 19)
!1063 = !DILocation(line: 223, column: 19, scope: !1062)
!1064 = !DILocation(line: 223, column: 32, scope: !1062)
!1065 = !DILocation(line: 223, column: 38, scope: !1062)
!1066 = !DILocation(line: 221, column: 5, scope: !1062)
!1067 = !DILocation(line: 226, column: 5, scope: !1062)
!1068 = !DILocation(line: 227, column: 9, scope: !1062)
!1069 = !DILocation(line: 227, column: 11, scope: !1062)
!1070 = !DILocation(line: 227, column: 21, scope: !1062)
!1071 = !DILocation(line: 228, column: 9, scope: !1062)
!1072 = !DILocation(line: 228, column: 11, scope: !1062)
!1073 = !DILocation(line: 228, column: 23, scope: !1062)
!1074 = !DILocation(line: 229, column: 9, scope: !1062)
!1075 = !DILocation(line: 229, column: 11, scope: !1062)
!1076 = !DILocation(line: 229, column: 22, scope: !1062)
!1077 = !DILocation(line: 230, column: 9, scope: !1062)
!1078 = !DILocation(line: 230, column: 13, scope: !1062)
!1079 = !DILocation(line: 230, column: 24, scope: !1062)
!1080 = !DILocation(line: 231, column: 32, scope: !1062)
!1081 = !DILocation(line: 231, column: 38, scope: !1062)
!1082 = !DILocation(line: 231, column: 9, scope: !1062)
!1083 = !DILocation(line: 231, column: 13, scope: !1062)
!1084 = !DILocation(line: 231, column: 23, scope: !1062)
!1085 = !DILocation(line: 233, column: 36, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1062, file: !253, line: 233, column: 9)
!1087 = !DILocation(line: 233, column: 9, scope: !1086)
!1088 = !DILocation(line: 233, column: 39, scope: !1086)
!1089 = !DILocation(line: 233, column: 9, scope: !1062)
!1090 = !DILocation(line: 236, column: 14, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1086, file: !253, line: 233, column: 44)
!1092 = !DILocation(line: 236, column: 20, scope: !1091)
!1093 = !DILocation(line: 236, column: 33, scope: !1091)
!1094 = !DILocation(line: 236, column: 39, scope: !1091)
!1095 = !DILocation(line: 234, column: 6, scope: !1091)
!1096 = !DILocation(line: 237, column: 6, scope: !1091)
!1097 = !DILocation(line: 239, column: 4, scope: !1062)
!1098 = !DILocation(line: 240, column: 3, scope: !1058)
!1099 = !DILocation(line: 242, column: 21, scope: !1042)
!1100 = !DILocation(line: 243, column: 2, scope: !1043)
!1101 = !DILocation(line: 245, column: 6, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !703, file: !253, line: 245, column: 6)
!1103 = !DILocation(line: 245, column: 23, scope: !1102)
!1104 = !DILocation(line: 245, column: 26, scope: !1105)
!1105 = !DILexicalBlockFile(scope: !1102, file: !253, discriminator: 1)
!1106 = !DILocation(line: 245, column: 32, scope: !1105)
!1107 = !DILocation(line: 245, column: 37, scope: !1105)
!1108 = !DILocation(line: 245, column: 47, scope: !1105)
!1109 = !DILocation(line: 245, column: 6, scope: !1105)
!1110 = !DILocation(line: 247, column: 7, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1102, file: !253, line: 245, column: 56)
!1112 = !DILocation(line: 247, column: 9, scope: !1111)
!1113 = !DILocation(line: 247, column: 19, scope: !1111)
!1114 = !DILocation(line: 248, column: 7, scope: !1111)
!1115 = !DILocation(line: 248, column: 9, scope: !1111)
!1116 = !DILocation(line: 248, column: 21, scope: !1111)
!1117 = !DILocation(line: 249, column: 7, scope: !1111)
!1118 = !DILocation(line: 249, column: 9, scope: !1111)
!1119 = !DILocation(line: 249, column: 20, scope: !1111)
!1120 = !DILocation(line: 250, column: 7, scope: !1111)
!1121 = !DILocation(line: 250, column: 11, scope: !1111)
!1122 = !DILocation(line: 250, column: 22, scope: !1111)
!1123 = !DILocation(line: 253, column: 18, scope: !1111)
!1124 = !DILocation(line: 253, column: 15, scope: !1111)
!1125 = !DILocation(line: 253, column: 16, scope: !1111)
!1126 = !DILocation(line: 253, column: 26, scope: !1111)
!1127 = !DILocation(line: 253, column: 30, scope: !1111)
!1128 = !DILocation(line: 253, column: 34, scope: !1111)
!1129 = !DILocation(line: 253, column: 13, scope: !1111)
!1130 = !DILocation(line: 253, column: 12, scope: !1111)
!1131 = !DILocation(line: 254, column: 18, scope: !1111)
!1132 = !DILocation(line: 254, column: 3, scope: !1111)
!1133 = !DILocation(line: 255, column: 18, scope: !1111)
!1134 = !DILocation(line: 255, column: 58, scope: !1111)
!1135 = !DILocation(line: 255, column: 82, scope: !1111)
!1136 = !DILocation(line: 255, column: 75, scope: !1111)
!1137 = !DILocation(line: 255, column: 3, scope: !1138)
!1138 = !DILexicalBlockFile(scope: !1111, file: !253, discriminator: 1)
!1139 = !DILocation(line: 256, column: 14, scope: !1111)
!1140 = !DILocation(line: 256, column: 11, scope: !1111)
!1141 = !DILocation(line: 256, column: 12, scope: !1111)
!1142 = !DILocation(line: 256, column: 22, scope: !1111)
!1143 = !DILocation(line: 256, column: 26, scope: !1111)
!1144 = !DILocation(line: 256, column: 30, scope: !1111)
!1145 = !DILocation(line: 256, column: 9, scope: !1111)
!1146 = !DILocation(line: 256, column: 8, scope: !1111)
!1147 = !DILocation(line: 257, column: 18, scope: !1111)
!1148 = !DILocation(line: 257, column: 3, scope: !1111)
!1149 = !DILocation(line: 263, column: 18, scope: !1111)
!1150 = !DILocation(line: 263, column: 3, scope: !1111)
!1151 = !DILocation(line: 265, column: 48, scope: !1111)
!1152 = !DILocation(line: 265, column: 45, scope: !1111)
!1153 = !DILocation(line: 265, column: 46, scope: !1111)
!1154 = !DILocation(line: 265, column: 56, scope: !1111)
!1155 = !DILocation(line: 265, column: 60, scope: !1111)
!1156 = !DILocation(line: 265, column: 64, scope: !1111)
!1157 = !DILocation(line: 265, column: 72, scope: !1111)
!1158 = !DILocation(line: 265, column: 62, scope: !1111)
!1159 = !DILocation(line: 265, column: 19, scope: !1111)
!1160 = !DILocation(line: 265, column: 3, scope: !1111)
!1161 = !DILocation(line: 265, column: 9, scope: !1111)
!1162 = !DILocation(line: 265, column: 17, scope: !1111)
!1163 = !DILocation(line: 266, column: 52, scope: !1111)
!1164 = !DILocation(line: 266, column: 49, scope: !1111)
!1165 = !DILocation(line: 266, column: 50, scope: !1111)
!1166 = !DILocation(line: 266, column: 60, scope: !1111)
!1167 = !DILocation(line: 266, column: 64, scope: !1111)
!1168 = !DILocation(line: 266, column: 68, scope: !1111)
!1169 = !DILocation(line: 266, column: 76, scope: !1111)
!1170 = !DILocation(line: 266, column: 66, scope: !1111)
!1171 = !DILocation(line: 266, column: 23, scope: !1111)
!1172 = !DILocation(line: 266, column: 3, scope: !1111)
!1173 = !DILocation(line: 266, column: 13, scope: !1111)
!1174 = !DILocation(line: 266, column: 21, scope: !1111)
!1175 = !DILocation(line: 267, column: 18, scope: !1111)
!1176 = !DILocation(line: 267, column: 45, scope: !1111)
!1177 = !DILocation(line: 267, column: 51, scope: !1111)
!1178 = !DILocation(line: 267, column: 56, scope: !1111)
!1179 = !DILocation(line: 267, column: 66, scope: !1111)
!1180 = !DILocation(line: 267, column: 3, scope: !1111)
!1181 = !DILocation(line: 268, column: 18, scope: !1111)
!1182 = !DILocation(line: 268, column: 47, scope: !1111)
!1183 = !DILocation(line: 268, column: 53, scope: !1111)
!1184 = !DILocation(line: 268, column: 73, scope: !1111)
!1185 = !DILocation(line: 268, column: 79, scope: !1111)
!1186 = !DILocation(line: 268, column: 66, scope: !1111)
!1187 = !DILocation(line: 268, column: 3, scope: !1138)
!1188 = !DILocation(line: 269, column: 18, scope: !1111)
!1189 = !DILocation(line: 269, column: 3, scope: !1111)
!1190 = !DILocation(line: 274, column: 7, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1111, file: !253, line: 274, column: 7)
!1192 = !DILocation(line: 274, column: 13, scope: !1191)
!1193 = !DILocation(line: 274, column: 18, scope: !1191)
!1194 = !DILocation(line: 274, column: 28, scope: !1191)
!1195 = !DILocation(line: 274, column: 7, scope: !1111)
!1196 = !DILocation(line: 275, column: 19, scope: !1191)
!1197 = !DILocation(line: 275, column: 47, scope: !1191)
!1198 = !DILocation(line: 275, column: 53, scope: !1191)
!1199 = !DILocation(line: 275, column: 58, scope: !1191)
!1200 = !DILocation(line: 275, column: 68, scope: !1191)
!1201 = !DILocation(line: 275, column: 84, scope: !1191)
!1202 = !DILocation(line: 275, column: 4, scope: !1191)
!1203 = !DILocation(line: 278, column: 34, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1111, file: !253, line: 278, column: 7)
!1205 = !DILocation(line: 278, column: 7, scope: !1204)
!1206 = !DILocation(line: 278, column: 37, scope: !1204)
!1207 = !DILocation(line: 278, column: 7, scope: !1111)
!1208 = !DILocation(line: 280, column: 12, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1204, file: !253, line: 278, column: 42)
!1210 = !DILocation(line: 280, column: 18, scope: !1209)
!1211 = !DILocation(line: 280, column: 25, scope: !1209)
!1212 = !DILocation(line: 280, column: 31, scope: !1209)
!1213 = !DILocation(line: 279, column: 4, scope: !1209)
!1214 = !DILocation(line: 281, column: 4, scope: !1209)
!1215 = !DILocation(line: 285, column: 11, scope: !1111)
!1216 = !DILocation(line: 285, column: 17, scope: !1111)
!1217 = !DILocation(line: 285, column: 24, scope: !1111)
!1218 = !DILocation(line: 285, column: 30, scope: !1111)
!1219 = !DILocation(line: 284, column: 3, scope: !1111)
!1220 = !DILocation(line: 290, column: 28, scope: !1111)
!1221 = !DILocation(line: 290, column: 34, scope: !1111)
!1222 = !DILocation(line: 290, column: 3, scope: !1111)
!1223 = !DILocation(line: 291, column: 8, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1111, file: !253, line: 291, column: 7)
!1225 = !DILocation(line: 291, column: 13, scope: !1224)
!1226 = !DILocation(line: 291, column: 7, scope: !1111)
!1227 = !DILocation(line: 292, column: 4, scope: !1224)
!1228 = !DILocation(line: 297, column: 3, scope: !1111)
!1229 = !DILocation(line: 298, column: 2, scope: !1111)
!1230 = !DILocation(line: 300, column: 2, scope: !703)
!1231 = !DILocation(line: 300, column: 7, scope: !703)
!1232 = !DILocation(line: 300, column: 12, scope: !703)
!1233 = !DILocation(line: 302, column: 7, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !703, file: !253, line: 302, column: 6)
!1235 = !DILocation(line: 302, column: 12, scope: !1234)
!1236 = !DILocation(line: 302, column: 6, scope: !703)
!1237 = !DILocation(line: 303, column: 3, scope: !1234)
!1238 = !DILocation(line: 305, column: 6, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !703, file: !253, line: 305, column: 6)
!1240 = !DILocation(line: 305, column: 12, scope: !1239)
!1241 = !DILocation(line: 305, column: 19, scope: !1239)
!1242 = !DILocation(line: 305, column: 6, scope: !703)
!1243 = !DILocation(line: 307, column: 7, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1245, file: !253, line: 307, column: 7)
!1245 = distinct !DILexicalBlock(scope: !1239, file: !253, line: 305, column: 30)
!1246 = !DILocation(line: 307, column: 7, scope: !1245)
!1247 = !DILocation(line: 308, column: 29, scope: !1244)
!1248 = !DILocation(line: 308, column: 34, scope: !1244)
!1249 = !DILocation(line: 308, column: 39, scope: !1244)
!1250 = !DILocation(line: 308, column: 4, scope: !1244)
!1251 = !DILocation(line: 312, column: 8, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1245, file: !253, line: 312, column: 7)
!1253 = !DILocation(line: 312, column: 14, scope: !1252)
!1254 = !DILocation(line: 312, column: 7, scope: !1245)
!1255 = !DILocation(line: 313, column: 18, scope: !1252)
!1256 = !DILocation(line: 313, column: 4, scope: !1252)
!1257 = !DILocation(line: 314, column: 13, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1252, file: !253, line: 314, column: 12)
!1259 = !DILocation(line: 314, column: 12, scope: !1252)
!1260 = !DILocation(line: 316, column: 18, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1258, file: !253, line: 314, column: 31)
!1262 = !DILocation(line: 316, column: 4, scope: !1261)
!1263 = !DILocation(line: 317, column: 3, scope: !1261)
!1264 = !DILocation(line: 318, column: 2, scope: !1245)
!1265 = !DILocation(line: 320, column: 6, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !703, file: !253, line: 320, column: 6)
!1267 = !DILocation(line: 320, column: 12, scope: !1266)
!1268 = !DILocation(line: 320, column: 19, scope: !1266)
!1269 = !DILocation(line: 320, column: 30, scope: !1266)
!1270 = !DILocation(line: 320, column: 33, scope: !1271)
!1271 = !DILexicalBlockFile(scope: !1266, file: !253, discriminator: 1)
!1272 = !DILocation(line: 320, column: 39, scope: !1271)
!1273 = !DILocation(line: 320, column: 6, scope: !1271)
!1274 = !DILocation(line: 323, column: 17, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1266, file: !253, line: 320, column: 54)
!1276 = !DILocation(line: 323, column: 3, scope: !1275)
!1277 = !DILocation(line: 331, column: 3, scope: !1275)
!1278 = !DILocation(line: 332, column: 7, scope: !1275)
!1279 = !DILocation(line: 332, column: 9, scope: !1275)
!1280 = !DILocation(line: 332, column: 19, scope: !1275)
!1281 = !DILocation(line: 333, column: 7, scope: !1275)
!1282 = !DILocation(line: 333, column: 9, scope: !1275)
!1283 = !DILocation(line: 333, column: 21, scope: !1275)
!1284 = !DILocation(line: 334, column: 7, scope: !1275)
!1285 = !DILocation(line: 334, column: 9, scope: !1275)
!1286 = !DILocation(line: 334, column: 20, scope: !1275)
!1287 = !DILocation(line: 335, column: 7, scope: !1275)
!1288 = !DILocation(line: 335, column: 11, scope: !1275)
!1289 = !DILocation(line: 335, column: 22, scope: !1275)
!1290 = !DILocation(line: 336, column: 28, scope: !1275)
!1291 = !DILocation(line: 336, column: 34, scope: !1275)
!1292 = !DILocation(line: 336, column: 39, scope: !1275)
!1293 = !DILocation(line: 336, column: 7, scope: !1275)
!1294 = !DILocation(line: 336, column: 11, scope: !1275)
!1295 = !DILocation(line: 336, column: 21, scope: !1275)
!1296 = !DILocalVariable(name: "spec", scope: !1275, file: !253, line: 338, type: !966)
!1297 = !DILocation(line: 338, column: 18, scope: !1275)
!1298 = !DILocation(line: 340, column: 14, scope: !1275)
!1299 = !DILocation(line: 340, column: 11, scope: !1275)
!1300 = !DILocation(line: 340, column: 12, scope: !1275)
!1301 = !DILocation(line: 340, column: 22, scope: !1275)
!1302 = !DILocation(line: 340, column: 26, scope: !1275)
!1303 = !DILocation(line: 340, column: 30, scope: !1275)
!1304 = !DILocation(line: 340, column: 9, scope: !1275)
!1305 = !DILocation(line: 340, column: 8, scope: !1275)
!1306 = !DILocation(line: 341, column: 18, scope: !1275)
!1307 = !DILocation(line: 341, column: 3, scope: !1275)
!1308 = !DILocation(line: 342, column: 14, scope: !1275)
!1309 = !DILocation(line: 342, column: 11, scope: !1275)
!1310 = !DILocation(line: 342, column: 12, scope: !1275)
!1311 = !DILocation(line: 342, column: 22, scope: !1275)
!1312 = !DILocation(line: 342, column: 26, scope: !1275)
!1313 = !DILocation(line: 342, column: 30, scope: !1275)
!1314 = !DILocation(line: 342, column: 9, scope: !1275)
!1315 = !DILocation(line: 342, column: 8, scope: !1275)
!1316 = !DILocation(line: 343, column: 18, scope: !1275)
!1317 = !DILocation(line: 343, column: 3, scope: !1275)
!1318 = !DILocation(line: 344, column: 17, scope: !1275)
!1319 = !DILocation(line: 344, column: 3, scope: !1275)
!1320 = !DILocation(line: 345, column: 48, scope: !1275)
!1321 = !DILocation(line: 345, column: 45, scope: !1275)
!1322 = !DILocation(line: 345, column: 46, scope: !1275)
!1323 = !DILocation(line: 345, column: 56, scope: !1275)
!1324 = !DILocation(line: 345, column: 60, scope: !1275)
!1325 = !DILocation(line: 345, column: 64, scope: !1275)
!1326 = !DILocation(line: 345, column: 72, scope: !1275)
!1327 = !DILocation(line: 345, column: 62, scope: !1275)
!1328 = !DILocation(line: 345, column: 19, scope: !1275)
!1329 = !DILocation(line: 345, column: 3, scope: !1275)
!1330 = !DILocation(line: 345, column: 9, scope: !1275)
!1331 = !DILocation(line: 345, column: 17, scope: !1275)
!1332 = !DILocation(line: 346, column: 48, scope: !1275)
!1333 = !DILocation(line: 346, column: 45, scope: !1275)
!1334 = !DILocation(line: 346, column: 46, scope: !1275)
!1335 = !DILocation(line: 346, column: 56, scope: !1275)
!1336 = !DILocation(line: 346, column: 60, scope: !1275)
!1337 = !DILocation(line: 346, column: 64, scope: !1275)
!1338 = !DILocation(line: 346, column: 72, scope: !1275)
!1339 = !DILocation(line: 346, column: 62, scope: !1275)
!1340 = !DILocation(line: 346, column: 19, scope: !1275)
!1341 = !DILocation(line: 346, column: 3, scope: !1275)
!1342 = !DILocation(line: 346, column: 9, scope: !1275)
!1343 = !DILocation(line: 346, column: 17, scope: !1275)
!1344 = !DILocation(line: 348, column: 34, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1275, file: !253, line: 348, column: 7)
!1346 = !DILocation(line: 348, column: 7, scope: !1345)
!1347 = !DILocation(line: 348, column: 37, scope: !1345)
!1348 = !DILocation(line: 348, column: 7, scope: !1275)
!1349 = !DILocation(line: 349, column: 4, scope: !1345)
!1350 = !DILocation(line: 352, column: 7, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1275, file: !253, line: 352, column: 7)
!1352 = !DILocation(line: 352, column: 13, scope: !1351)
!1353 = !DILocation(line: 352, column: 20, scope: !1351)
!1354 = !DILocation(line: 352, column: 31, scope: !1351)
!1355 = !DILocation(line: 353, column: 44, scope: !1351)
!1356 = !DILocation(line: 353, column: 50, scope: !1351)
!1357 = !DILocation(line: 353, column: 8, scope: !1351)
!1358 = !DILocation(line: 352, column: 7, scope: !1359)
!1359 = !DILexicalBlockFile(scope: !1275, file: !253, discriminator: 1)
!1360 = !DILocalVariable(name: "ipaddress", scope: !1361, file: !253, line: 360, type: !418)
!1361 = distinct !DILexicalBlock(scope: !1351, file: !253, line: 353, column: 63)
!1362 = !DILocation(line: 360, column: 17, scope: !1361)
!1363 = !DILocation(line: 362, column: 4, scope: !1361)
!1364 = !DILocation(line: 364, column: 20, scope: !1361)
!1365 = !DILocation(line: 364, column: 14, scope: !1361)
!1366 = !DILocation(line: 364, column: 18, scope: !1361)
!1367 = !DILocation(line: 365, column: 8, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1361, file: !253, line: 365, column: 8)
!1369 = !DILocation(line: 365, column: 14, scope: !1368)
!1370 = !DILocation(line: 365, column: 20, scope: !1368)
!1371 = !DILocation(line: 365, column: 30, scope: !1368)
!1372 = !DILocation(line: 365, column: 8, scope: !1361)
!1373 = !DILocation(line: 366, column: 15, scope: !1368)
!1374 = !DILocation(line: 366, column: 17, scope: !1368)
!1375 = !DILocation(line: 366, column: 53, scope: !1368)
!1376 = !DILocation(line: 366, column: 59, scope: !1368)
!1377 = !DILocation(line: 366, column: 67, scope: !1368)
!1378 = !DILocation(line: 366, column: 5, scope: !1368)
!1379 = !DILocation(line: 367, column: 13, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1368, file: !253, line: 367, column: 13)
!1381 = !DILocation(line: 367, column: 18, scope: !1380)
!1382 = !DILocation(line: 367, column: 28, scope: !1380)
!1383 = !DILocation(line: 367, column: 37, scope: !1380)
!1384 = !DILocation(line: 367, column: 45, scope: !1380)
!1385 = !DILocation(line: 367, column: 13, scope: !1368)
!1386 = !DILocation(line: 368, column: 15, scope: !1380)
!1387 = !DILocation(line: 368, column: 17, scope: !1380)
!1388 = !DILocation(line: 368, column: 29, scope: !1380)
!1389 = !DILocation(line: 368, column: 34, scope: !1380)
!1390 = !DILocation(line: 368, column: 44, scope: !1380)
!1391 = !DILocation(line: 368, column: 5, scope: !1380)
!1392 = !DILocation(line: 370, column: 40, scope: !1380)
!1393 = !DILocation(line: 370, column: 42, scope: !1380)
!1394 = !DILocation(line: 370, column: 53, scope: !1380)
!1395 = !DILocation(line: 370, column: 58, scope: !1380)
!1396 = !DILocation(line: 370, column: 68, scope: !1380)
!1397 = !DILocation(line: 370, column: 5, scope: !1380)
!1398 = !DILocation(line: 371, column: 14, scope: !1361)
!1399 = !DILocation(line: 371, column: 18, scope: !1361)
!1400 = !DILocation(line: 371, column: 29, scope: !1361)
!1401 = !DILocation(line: 372, column: 14, scope: !1361)
!1402 = !DILocation(line: 372, column: 18, scope: !1361)
!1403 = !DILocation(line: 372, column: 32, scope: !1361)
!1404 = !DILocation(line: 373, column: 30, scope: !1361)
!1405 = !DILocation(line: 373, column: 36, scope: !1361)
!1406 = !DILocation(line: 373, column: 41, scope: !1361)
!1407 = !DILocation(line: 373, column: 14, scope: !1361)
!1408 = !DILocation(line: 373, column: 18, scope: !1361)
!1409 = !DILocation(line: 373, column: 28, scope: !1361)
!1410 = !DILocation(line: 375, column: 8, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1361, file: !253, line: 375, column: 8)
!1412 = !DILocation(line: 375, column: 41, scope: !1411)
!1413 = !DILocation(line: 375, column: 46, scope: !1411)
!1414 = !DILocation(line: 375, column: 49, scope: !1415)
!1415 = !DILexicalBlockFile(scope: !1411, file: !253, discriminator: 1)
!1416 = !DILocation(line: 375, column: 8, scope: !1415)
!1417 = !DILocation(line: 376, column: 5, scope: !1411)
!1418 = !DILocation(line: 377, column: 3, scope: !1361)
!1419 = !DILocation(line: 378, column: 2, scope: !1275)
!1420 = !DILocation(line: 381, column: 31, scope: !703)
!1421 = !DILocation(line: 381, column: 37, scope: !703)
!1422 = !DILocation(line: 381, column: 2, scope: !703)
!1423 = !DILocation(line: 382, column: 18, scope: !703)
!1424 = !DILocation(line: 382, column: 2, scope: !703)
!1425 = !DILocation(line: 383, column: 2, scope: !703)
!1426 = !DILocation(line: 412, column: 2, scope: !703)
!1427 = !DILocation(line: 414, column: 2, scope: !703)
!1428 = !DILocation(line: 415, column: 1, scope: !703)
!1429 = distinct !DISubprogram(name: "__test_bit", scope: !1430, file: !1430, line: 47, type: !1431, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!1430 = !DIFile(filename: "../../lib/bitops.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!353, !223, !1433}
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64, align: 64)
!1434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !341)
!1435 = !DILocalVariable(name: "idx", arg: 1, scope: !1429, file: !1430, line: 47, type: !223)
!1436 = !DILocation(line: 47, column: 39, scope: !1429)
!1437 = !DILocalVariable(name: "bmap", arg: 2, scope: !1429, file: !1430, line: 47, type: !1433)
!1438 = !DILocation(line: 47, column: 65, scope: !1429)
!1439 = !DILocation(line: 49, column: 19, scope: !1429)
!1440 = !DILocation(line: 49, column: 18, scope: !1429)
!1441 = !DILocation(line: 49, column: 24, scope: !1429)
!1442 = !DILocation(line: 49, column: 12, scope: !1429)
!1443 = !DILocation(line: 49, column: 68, scope: !1429)
!1444 = !DILocation(line: 49, column: 67, scope: !1429)
!1445 = !DILocation(line: 49, column: 73, scope: !1429)
!1446 = !DILocation(line: 49, column: 63, scope: !1429)
!1447 = !DILocation(line: 49, column: 56, scope: !1429)
!1448 = !DILocation(line: 49, column: 10, scope: !1429)
!1449 = !DILocation(line: 49, column: 9, scope: !1429)
!1450 = !DILocation(line: 49, column: 2, scope: !1429)
!1451 = distinct !DISubprogram(name: "__set_bit", scope: !1430, file: !1430, line: 37, type: !1452, isLocal: true, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{null, !223, !1454}
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64, align: 64)
!1455 = !DILocalVariable(name: "idx", arg: 1, scope: !1451, file: !1430, line: 37, type: !223)
!1456 = !DILocation(line: 37, column: 39, scope: !1451)
!1457 = !DILocalVariable(name: "bmap", arg: 2, scope: !1451, file: !1430, line: 37, type: !1454)
!1458 = !DILocation(line: 37, column: 59, scope: !1451)
!1459 = !DILocation(line: 39, column: 59, scope: !1451)
!1460 = !DILocation(line: 39, column: 58, scope: !1451)
!1461 = !DILocation(line: 39, column: 64, scope: !1451)
!1462 = !DILocation(line: 39, column: 54, scope: !1451)
!1463 = !DILocation(line: 39, column: 9, scope: !1451)
!1464 = !DILocation(line: 39, column: 8, scope: !1451)
!1465 = !DILocation(line: 39, column: 14, scope: !1451)
!1466 = !DILocation(line: 39, column: 2, scope: !1451)
!1467 = !DILocation(line: 39, column: 46, scope: !1451)
!1468 = !DILocation(line: 40, column: 1, scope: !1451)
!1469 = distinct !DISubprogram(name: "netlink_link_up", scope: !253, file: !253, line: 159, type: !1470, isLocal: true, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!207, !706}
!1472 = !DILocalVariable(name: "vrrp", arg: 1, scope: !1469, file: !253, line: 159, type: !706)
!1473 = !DILocation(line: 159, column: 25, scope: !1469)
!1474 = !DILocalVariable(name: "status", scope: !1469, file: !253, line: 161, type: !207)
!1475 = !DILocation(line: 161, column: 6, scope: !1469)
!1476 = !DILocalVariable(name: "req", scope: !1469, file: !253, line: 165, type: !1477)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1469, file: !253, line: 162, size: 256, align: 32, elements: !1478)
!1478 = !{!1479, !1480}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !1477, file: !253, line: 163, baseType: !982, size: 128, align: 32)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "ifi", scope: !1477, file: !253, line: 164, baseType: !992, size: 128, align: 32, offset: 128)
!1481 = !DILocation(line: 165, column: 4, scope: !1469)
!1482 = !DILocation(line: 167, column: 2, scope: !1469)
!1483 = !DILocation(line: 169, column: 6, scope: !1469)
!1484 = !DILocation(line: 169, column: 8, scope: !1469)
!1485 = !DILocation(line: 169, column: 18, scope: !1469)
!1486 = !DILocation(line: 170, column: 6, scope: !1469)
!1487 = !DILocation(line: 170, column: 8, scope: !1469)
!1488 = !DILocation(line: 170, column: 20, scope: !1469)
!1489 = !DILocation(line: 171, column: 6, scope: !1469)
!1490 = !DILocation(line: 171, column: 8, scope: !1469)
!1491 = !DILocation(line: 171, column: 19, scope: !1469)
!1492 = !DILocation(line: 172, column: 6, scope: !1469)
!1493 = !DILocation(line: 172, column: 10, scope: !1469)
!1494 = !DILocation(line: 172, column: 21, scope: !1469)
!1495 = !DILocation(line: 173, column: 29, scope: !1469)
!1496 = !DILocation(line: 173, column: 35, scope: !1469)
!1497 = !DILocation(line: 173, column: 41, scope: !1469)
!1498 = !DILocation(line: 173, column: 6, scope: !1469)
!1499 = !DILocation(line: 173, column: 10, scope: !1469)
!1500 = !DILocation(line: 173, column: 20, scope: !1469)
!1501 = !DILocation(line: 174, column: 6, scope: !1469)
!1502 = !DILocation(line: 174, column: 10, scope: !1469)
!1503 = !DILocation(line: 174, column: 21, scope: !1469)
!1504 = !DILocation(line: 175, column: 6, scope: !1469)
!1505 = !DILocation(line: 175, column: 10, scope: !1469)
!1506 = !DILocation(line: 175, column: 20, scope: !1469)
!1507 = !DILocation(line: 177, column: 33, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1469, file: !253, line: 177, column: 6)
!1509 = !DILocation(line: 177, column: 6, scope: !1508)
!1510 = !DILocation(line: 177, column: 36, scope: !1508)
!1511 = !DILocation(line: 177, column: 6, scope: !1469)
!1512 = !DILocation(line: 178, column: 10, scope: !1508)
!1513 = !DILocation(line: 178, column: 3, scope: !1508)
!1514 = !DILocation(line: 180, column: 9, scope: !1469)
!1515 = !DILocation(line: 180, column: 2, scope: !1469)
!1516 = distinct !DISubprogram(name: "netlink_link_del_vmac", scope: !253, file: !253, line: 418, type: !1517, isLocal: false, isDefinition: true, scopeLine: 419, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{null, !706}
!1519 = !DILocalVariable(name: "vrrp", arg: 1, scope: !1516, file: !253, line: 418, type: !706)
!1520 = !DILocation(line: 418, column: 31, scope: !1516)
!1521 = !DILocalVariable(name: "req", scope: !1516, file: !253, line: 424, type: !1522)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1516, file: !253, line: 420, size: 2304, align: 32, elements: !1523)
!1523 = !{!1524, !1525, !1526}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !1522, file: !253, line: 421, baseType: !982, size: 128, align: 32)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "ifi", scope: !1522, file: !253, line: 422, baseType: !992, size: 128, align: 32, offset: 128)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1522, file: !253, line: 423, baseType: !1001, size: 2048, align: 8, offset: 256)
!1527 = !DILocation(line: 424, column: 4, scope: !1516)
!1528 = !DILocation(line: 426, column: 7, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1516, file: !253, line: 426, column: 6)
!1530 = !DILocation(line: 426, column: 13, scope: !1529)
!1531 = !DILocation(line: 426, column: 6, scope: !1516)
!1532 = !DILocation(line: 427, column: 3, scope: !1529)
!1533 = !DILocation(line: 430, column: 7, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1516, file: !253, line: 430, column: 6)
!1535 = !DILocation(line: 430, column: 13, scope: !1534)
!1536 = !DILocation(line: 430, column: 18, scope: !1534)
!1537 = !DILocation(line: 430, column: 6, scope: !1516)
!1538 = !DILocation(line: 431, column: 70, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1534, file: !253, line: 430, column: 24)
!1540 = !DILocation(line: 431, column: 76, scope: !1539)
!1541 = !DILocation(line: 431, column: 81, scope: !1539)
!1542 = !DILocation(line: 431, column: 3, scope: !1539)
!1543 = !DILocation(line: 432, column: 3, scope: !1539)
!1544 = !DILocation(line: 436, column: 37, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1516, file: !253, line: 436, column: 6)
!1546 = !DILocation(line: 436, column: 43, scope: !1545)
!1547 = !DILocation(line: 436, column: 7, scope: !1545)
!1548 = !DILocation(line: 436, column: 6, scope: !1516)
!1549 = !DILocation(line: 437, column: 3, scope: !1545)
!1550 = !DILocation(line: 440, column: 6, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1516, file: !253, line: 440, column: 6)
!1552 = !DILocation(line: 440, column: 12, scope: !1551)
!1553 = !DILocation(line: 440, column: 19, scope: !1551)
!1554 = !DILocation(line: 440, column: 6, scope: !1516)
!1555 = !DILocation(line: 441, column: 7, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !253, line: 441, column: 7)
!1557 = distinct !DILexicalBlock(scope: !1551, file: !253, line: 440, column: 30)
!1558 = !DILocation(line: 441, column: 13, scope: !1556)
!1559 = !DILocation(line: 441, column: 18, scope: !1556)
!1560 = !DILocation(line: 441, column: 7, scope: !1557)
!1561 = !DILocation(line: 442, column: 31, scope: !1556)
!1562 = !DILocation(line: 442, column: 37, scope: !1556)
!1563 = !DILocation(line: 442, column: 42, scope: !1556)
!1564 = !DILocation(line: 442, column: 4, scope: !1556)
!1565 = !DILocation(line: 444, column: 79, scope: !1556)
!1566 = !DILocation(line: 444, column: 85, scope: !1556)
!1567 = !DILocation(line: 444, column: 4, scope: !1556)
!1568 = !DILocation(line: 445, column: 2, scope: !1557)
!1569 = !DILocation(line: 447, column: 2, scope: !1516)
!1570 = !DILocation(line: 449, column: 6, scope: !1516)
!1571 = !DILocation(line: 449, column: 8, scope: !1516)
!1572 = !DILocation(line: 449, column: 18, scope: !1516)
!1573 = !DILocation(line: 450, column: 6, scope: !1516)
!1574 = !DILocation(line: 450, column: 8, scope: !1516)
!1575 = !DILocation(line: 450, column: 20, scope: !1516)
!1576 = !DILocation(line: 451, column: 6, scope: !1516)
!1577 = !DILocation(line: 451, column: 8, scope: !1516)
!1578 = !DILocation(line: 451, column: 19, scope: !1516)
!1579 = !DILocation(line: 452, column: 6, scope: !1516)
!1580 = !DILocation(line: 452, column: 10, scope: !1516)
!1581 = !DILocation(line: 452, column: 21, scope: !1516)
!1582 = !DILocation(line: 453, column: 27, scope: !1516)
!1583 = !DILocation(line: 453, column: 33, scope: !1516)
!1584 = !DILocation(line: 453, column: 38, scope: !1516)
!1585 = !DILocation(line: 453, column: 6, scope: !1516)
!1586 = !DILocation(line: 453, column: 10, scope: !1516)
!1587 = !DILocation(line: 453, column: 20, scope: !1516)
!1588 = !DILocation(line: 455, column: 33, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1516, file: !253, line: 455, column: 6)
!1590 = !DILocation(line: 455, column: 6, scope: !1589)
!1591 = !DILocation(line: 455, column: 36, scope: !1589)
!1592 = !DILocation(line: 455, column: 6, scope: !1516)
!1593 = !DILocation(line: 457, column: 11, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1589, file: !253, line: 455, column: 41)
!1595 = !DILocation(line: 457, column: 17, scope: !1594)
!1596 = !DILocation(line: 457, column: 30, scope: !1594)
!1597 = !DILocation(line: 457, column: 36, scope: !1594)
!1598 = !DILocation(line: 456, column: 3, scope: !1594)
!1599 = !DILocation(line: 458, column: 3, scope: !1594)
!1600 = !DILocation(line: 462, column: 10, scope: !1516)
!1601 = !DILocation(line: 462, column: 16, scope: !1516)
!1602 = !DILocation(line: 462, column: 29, scope: !1516)
!1603 = !DILocation(line: 462, column: 35, scope: !1516)
!1604 = !DILocation(line: 461, column: 2, scope: !1516)
!1605 = !DILocation(line: 464, column: 2, scope: !1516)
!1606 = !DILocation(line: 465, column: 1, scope: !1516)
!1607 = distinct !DISubprogram(name: "__ip6_addr_equal", scope: !650, file: !650, line: 60, type: !1608, isLocal: true, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !411)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!207, !1610, !1610}
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64, align: 64)
!1611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!1612 = !DILocalVariable(name: "a1", arg: 1, scope: !1607, file: !650, line: 60, type: !1610)
!1613 = !DILocation(line: 60, column: 59, scope: !1607)
!1614 = !DILocalVariable(name: "a2", arg: 2, scope: !1607, file: !650, line: 61, type: !1610)
!1615 = !DILocation(line: 61, column: 31, scope: !1607)
!1616 = !DILocation(line: 63, column: 12, scope: !1607)
!1617 = !DILocation(line: 63, column: 15, scope: !1607)
!1618 = !DILocation(line: 63, column: 23, scope: !1607)
!1619 = !DILocation(line: 63, column: 30, scope: !1607)
!1620 = !DILocation(line: 63, column: 34, scope: !1607)
!1621 = !DILocation(line: 63, column: 42, scope: !1607)
!1622 = !DILocation(line: 63, column: 28, scope: !1607)
!1623 = !DILocation(line: 64, column: 5, scope: !1607)
!1624 = !DILocation(line: 64, column: 8, scope: !1607)
!1625 = !DILocation(line: 64, column: 16, scope: !1607)
!1626 = !DILocation(line: 64, column: 23, scope: !1607)
!1627 = !DILocation(line: 64, column: 27, scope: !1607)
!1628 = !DILocation(line: 64, column: 35, scope: !1607)
!1629 = !DILocation(line: 64, column: 21, scope: !1607)
!1630 = !DILocation(line: 63, column: 48, scope: !1607)
!1631 = !DILocation(line: 65, column: 5, scope: !1607)
!1632 = !DILocation(line: 65, column: 8, scope: !1607)
!1633 = !DILocation(line: 65, column: 16, scope: !1607)
!1634 = !DILocation(line: 65, column: 23, scope: !1607)
!1635 = !DILocation(line: 65, column: 27, scope: !1607)
!1636 = !DILocation(line: 65, column: 35, scope: !1607)
!1637 = !DILocation(line: 65, column: 21, scope: !1607)
!1638 = !DILocation(line: 64, column: 41, scope: !1607)
!1639 = !DILocation(line: 66, column: 5, scope: !1607)
!1640 = !DILocation(line: 66, column: 8, scope: !1607)
!1641 = !DILocation(line: 66, column: 16, scope: !1607)
!1642 = !DILocation(line: 66, column: 23, scope: !1607)
!1643 = !DILocation(line: 66, column: 27, scope: !1607)
!1644 = !DILocation(line: 66, column: 35, scope: !1607)
!1645 = !DILocation(line: 66, column: 21, scope: !1607)
!1646 = !DILocation(line: 65, column: 41, scope: !1607)
!1647 = !DILocation(line: 66, column: 42, scope: !1607)
!1648 = !DILocation(line: 63, column: 2, scope: !1607)
