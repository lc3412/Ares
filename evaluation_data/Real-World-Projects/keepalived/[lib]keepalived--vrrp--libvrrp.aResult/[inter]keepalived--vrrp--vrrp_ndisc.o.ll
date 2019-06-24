; ModuleID = './[inter]keepalived--vrrp--vrrp_ndisc.o.i'
source_filename = "./[inter]keepalived--vrrp--vrrp_ndisc.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct._list = type { %struct._element*, %struct._element*, i32, void (i8*)*, void (%struct._IO_FILE*, i8*)* }
%struct._element = type { %struct._element*, %struct._element*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._thread = type { i64, i32, %struct._thread_master*, i32 (%struct._thread*)*, i8*, %struct.timeval, %union.anon.3, %struct._thread_event*, %union.anon.5 }
%struct._thread_master = type { %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.list_head, %struct.list_head, %struct.list_head, %struct._list*, %struct.rb_root, %struct.epoll_event*, %struct._thread_event*, i32, i32, i32, i32, %struct._thread*, i64, i64, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rb_root = type { %struct.rb_node* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.epoll_event = type opaque
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { i32, i32 }
%struct._thread_event = type { %struct._thread*, %struct._thread*, i64, i32, %struct.rb_node }
%union.anon.5 = type { %struct.rb_node }
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
%struct.ether_header = type { [6 x i8], [6 x i8], i16 }
%struct.ip6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.nd_neighbor_advert = type { %struct.icmp6_hdr, %struct.in6_addr }
%struct.icmp6_hdr = type { i8, i8, i16, %union.anon.2 }
%union.anon.2 = type { [1 x i32] }
%struct.nd_opt_hdr = type { i8, i8 }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.in6_addr, %struct.in6_addr, i32, [3 x i8], i8 }
%struct.sockaddr_ll = type { i16, i16, i32, i16, i8, i8, [8 x i8] }
%union.__CONST_SOCKADDR_ARG = type { %struct.sockaddr* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct._vrrp_t = type { i16, i8*, %struct._vrrp_sgroup*, %struct._vrrp_stats*, %struct._interface*, i8, i8, i8, i32, i64, [16 x i8], %struct._list*, %struct._list*, %struct._list*, i32, i32, %struct.sockaddr_storage, i8, i8, %struct.sockaddr_storage, %struct._list*, i32, %struct.sockaddr_storage, i8, %struct.timeval, i32, %struct.timeval, %struct.timeval, i32, i32, i32, i8, i8, i32, i32, i32, i8, i8, i8, i32, i8, %struct._list*, %struct._list*, i8, i8, %struct._list*, %struct._list*, i32, i32, i32, i64, i8, i8, i64, %struct.timeval, i32, i32, i8, %struct._sock*, i32, i32, i32, i32, i8, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, i32, %struct.timeval, i8*, i64, i32, i8, [8 x i8], %struct._seq_counter, i32 }
%struct._vrrp_sgroup = type { i8*, %struct._vector*, %struct._list*, i32, i32, i32, i8, %struct._list*, %struct._list*, %struct._list*, %struct._list*, i8, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, i32, i32 }
%struct._vrrp_stats = type { i64, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, i64, i64 }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct._sock = type { i16, %struct.sockaddr_storage, i32, i32, i8, i32, i32, i32, %struct._thread* }
%struct._notify_script = type { i8**, i32, i32, i32, i32 }
%struct._seq_counter = type { i8, i32 }

@ndisc_buffer = internal global i8* null, align 8
@time_now = external global %struct.timeval, align 8
@ndisc_fd = internal global i32 -1, align 4
@.str = private unnamed_addr constant [44 x i8] c"Registering gratuitous NDISC shared channel\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Error while registering gratuitous NDISC shared channel\00", align 1
@garp_delay = common global %struct._list* null, align 8
@debug = external global i64, align 8
@.str.2 = private unnamed_addr constant [50 x i8] c"Sending unsolicited Neighbour Advert on %s for %s\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"VRRP: Error sending ndisc unsolicited neighbour advert on %s for %s\00", align 1
@garp_thread = external global %struct._thread*, align 8
@garp_next_time = external global %struct.timeval, align 8
@master = external global %struct._thread_master*, align 8

; Function Attrs: nounwind uwtable
define void @ndisc_send_unsolicited_na_immediate(%struct._interface*, %struct._ip_address*) #0 !dbg !281 {
  %3 = alloca %struct._interface*, align 8
  %4 = alloca %struct._ip_address*, align 8
  %5 = alloca %struct.ether_header*, align 8
  %6 = alloca %struct.ip6hdr*, align 8
  %7 = alloca %struct.nd_neighbor_advert*, align 8
  %8 = alloca %struct.icmp6_hdr*, align 8
  %9 = alloca %struct.nd_opt_hdr*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.timeval, align 8
  store %struct._interface* %0, %struct._interface** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._interface** %3, metadata !405, metadata !406), !dbg !407
  store %struct._ip_address* %1, %struct._ip_address** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._ip_address** %4, metadata !408, metadata !406), !dbg !409
  call void @llvm.dbg.declare(metadata %struct.ether_header** %5, metadata !410, metadata !406), !dbg !411
  %13 = load i8*, i8** @ndisc_buffer, align 8, !dbg !412
  %14 = bitcast i8* %13 to %struct.ether_header*, !dbg !413
  store %struct.ether_header* %14, %struct.ether_header** %5, align 8, !dbg !411
  call void @llvm.dbg.declare(metadata %struct.ip6hdr** %6, metadata !414, metadata !406), !dbg !415
  %15 = load %struct.ether_header*, %struct.ether_header** %5, align 8, !dbg !416
  %16 = bitcast %struct.ether_header* %15 to i8*, !dbg !417
  %17 = getelementptr inbounds i8, i8* %16, i64 14, !dbg !418
  %18 = bitcast i8* %17 to %struct.ip6hdr*, !dbg !419
  store %struct.ip6hdr* %18, %struct.ip6hdr** %6, align 8, !dbg !415
  call void @llvm.dbg.declare(metadata %struct.nd_neighbor_advert** %7, metadata !420, metadata !406), !dbg !421
  %19 = load %struct.ip6hdr*, %struct.ip6hdr** %6, align 8, !dbg !422
  %20 = bitcast %struct.ip6hdr* %19 to i8*, !dbg !423
  %21 = getelementptr inbounds i8, i8* %20, i64 40, !dbg !424
  %22 = bitcast i8* %21 to %struct.nd_neighbor_advert*, !dbg !425
  store %struct.nd_neighbor_advert* %22, %struct.nd_neighbor_advert** %7, align 8, !dbg !421
  call void @llvm.dbg.declare(metadata %struct.icmp6_hdr** %8, metadata !426, metadata !406), !dbg !428
  %23 = load %struct.nd_neighbor_advert*, %struct.nd_neighbor_advert** %7, align 8, !dbg !429
  %24 = getelementptr inbounds %struct.nd_neighbor_advert, %struct.nd_neighbor_advert* %23, i32 0, i32 0, !dbg !430
  store %struct.icmp6_hdr* %24, %struct.icmp6_hdr** %8, align 8, !dbg !428
  call void @llvm.dbg.declare(metadata %struct.nd_opt_hdr** %9, metadata !431, metadata !406), !dbg !432
  %25 = load %struct.nd_neighbor_advert*, %struct.nd_neighbor_advert** %7, align 8, !dbg !433
  %26 = bitcast %struct.nd_neighbor_advert* %25 to i8*, !dbg !434
  %27 = getelementptr inbounds i8, i8* %26, i64 24, !dbg !435
  %28 = bitcast i8* %27 to %struct.nd_opt_hdr*, !dbg !436
  store %struct.nd_opt_hdr* %28, %struct.nd_opt_hdr** %9, align 8, !dbg !432
  call void @llvm.dbg.declare(metadata i8** %10, metadata !437, metadata !406), !dbg !438
  %29 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %9, align 8, !dbg !439
  %30 = bitcast %struct.nd_opt_hdr* %29 to i8*, !dbg !440
  %31 = getelementptr inbounds i8, i8* %30, i64 2, !dbg !441
  store i8* %31, i8** %10, align 8, !dbg !438
  call void @llvm.dbg.declare(metadata i8** %11, metadata !442, metadata !406), !dbg !443
  %32 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !444
  %33 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %32, i32 0, i32 2, !dbg !445
  %34 = load %struct._interface*, %struct._interface** %33, align 8, !dbg !445
  %35 = getelementptr inbounds %struct._interface, %struct._interface* %34, i32 0, i32 8, !dbg !446
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %35, i32 0, i32 0, !dbg !447
  store i8* %36, i8** %11, align 8, !dbg !443
  %37 = load %struct.ether_header*, %struct.ether_header** %5, align 8, !dbg !448
  %38 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %37, i32 0, i32 0, !dbg !449
  %39 = getelementptr inbounds [6 x i8], [6 x i8]* %38, i32 0, i32 0, !dbg !450
  call void @llvm.memset.p0i8.i64(i8* %39, i8 0, i64 6, i32 1, i1 false), !dbg !450
  %40 = load %struct.ether_header*, %struct.ether_header** %5, align 8, !dbg !451
  %41 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %40, i32 0, i32 0, !dbg !452
  %42 = getelementptr inbounds [6 x i8], [6 x i8]* %41, i64 0, i64 1, !dbg !451
  store i8 51, i8* %42, align 1, !dbg !453
  %43 = load %struct.ether_header*, %struct.ether_header** %5, align 8, !dbg !454
  %44 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %43, i32 0, i32 0, !dbg !455
  %45 = getelementptr inbounds [6 x i8], [6 x i8]* %44, i64 0, i64 0, !dbg !454
  store i8 51, i8* %45, align 1, !dbg !456
  %46 = load %struct.ether_header*, %struct.ether_header** %5, align 8, !dbg !457
  %47 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %46, i32 0, i32 0, !dbg !458
  %48 = getelementptr inbounds [6 x i8], [6 x i8]* %47, i64 0, i64 5, !dbg !457
  store i8 1, i8* %48, align 1, !dbg !459
  %49 = load %struct.ether_header*, %struct.ether_header** %5, align 8, !dbg !460
  %50 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %49, i32 0, i32 1, !dbg !461
  %51 = getelementptr inbounds [6 x i8], [6 x i8]* %50, i32 0, i32 0, !dbg !462
  %52 = load i8*, i8** %11, align 8, !dbg !463
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %51, i8* %52, i64 6, i32 1, i1 false), !dbg !462
  %53 = call zeroext i16 @htons(i16 zeroext -31011) #1, !dbg !464
  %54 = load %struct.ether_header*, %struct.ether_header** %5, align 8, !dbg !465
  %55 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %54, i32 0, i32 2, !dbg !466
  store i16 %53, i16* %55, align 1, !dbg !467
  %56 = load %struct.ip6hdr*, %struct.ip6hdr** %6, align 8, !dbg !468
  %57 = bitcast %struct.ip6hdr* %56 to i8*, !dbg !469
  %58 = load i8, i8* %57, align 4, !dbg !470
  %59 = and i8 %58, 15, !dbg !470
  %60 = or i8 %59, 96, !dbg !470
  store i8 %60, i8* %57, align 4, !dbg !470
  %61 = call zeroext i16 @htons(i16 zeroext 32) #1, !dbg !471
  %62 = load %struct.ip6hdr*, %struct.ip6hdr** %6, align 8, !dbg !472
  %63 = getelementptr inbounds %struct.ip6hdr, %struct.ip6hdr* %62, i32 0, i32 2, !dbg !473
  store i16 %61, i16* %63, align 4, !dbg !474
  %64 = load %struct.ip6hdr*, %struct.ip6hdr** %6, align 8, !dbg !475
  %65 = getelementptr inbounds %struct.ip6hdr, %struct.ip6hdr* %64, i32 0, i32 3, !dbg !476
  store i8 58, i8* %65, align 2, !dbg !477
  %66 = load %struct.ip6hdr*, %struct.ip6hdr** %6, align 8, !dbg !478
  %67 = getelementptr inbounds %struct.ip6hdr, %struct.ip6hdr* %66, i32 0, i32 4, !dbg !479
  store i8 -1, i8* %67, align 1, !dbg !480
  %68 = load %struct.ip6hdr*, %struct.ip6hdr** %6, align 8, !dbg !481
  %69 = getelementptr inbounds %struct.ip6hdr, %struct.ip6hdr* %68, i32 0, i32 5, !dbg !482
  %70 = bitcast %struct.in6_addr* %69 to i8*, !dbg !483
  %71 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !484
  %72 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %71, i32 0, i32 1, !dbg !485
  %73 = bitcast %union.anon.0* %72 to %struct.in6_addr*, !dbg !486
  %74 = bitcast %struct.in6_addr* %73 to i8*, !dbg !483
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %70, i8* %74, i64 16, i32 4, i1 false), !dbg !483
  %75 = call zeroext i16 @htons(i16 zeroext -254) #1, !dbg !487
  %76 = load %struct.ip6hdr*, %struct.ip6hdr** %6, align 8, !dbg !488
  %77 = getelementptr inbounds %struct.ip6hdr, %struct.ip6hdr* %76, i32 0, i32 6, !dbg !489
  %78 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %77, i32 0, i32 0, !dbg !490
  %79 = bitcast %union.anon* %78 to [8 x i16]*, !dbg !491
  %80 = getelementptr inbounds [8 x i16], [8 x i16]* %79, i64 0, i64 0, !dbg !488
  store i16 %75, i16* %80, align 4, !dbg !492
  %81 = call zeroext i16 @htons(i16 zeroext 1) #1, !dbg !493
  %82 = load %struct.ip6hdr*, %struct.ip6hdr** %6, align 8, !dbg !494
  %83 = getelementptr inbounds %struct.ip6hdr, %struct.ip6hdr* %82, i32 0, i32 6, !dbg !495
  %84 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %83, i32 0, i32 0, !dbg !496
  %85 = bitcast %union.anon* %84 to [8 x i16]*, !dbg !497
  %86 = getelementptr inbounds [8 x i16], [8 x i16]* %85, i64 0, i64 7, !dbg !494
  store i16 %81, i16* %86, align 2, !dbg !498
  %87 = load %struct.nd_neighbor_advert*, %struct.nd_neighbor_advert** %7, align 8, !dbg !499
  %88 = getelementptr inbounds %struct.nd_neighbor_advert, %struct.nd_neighbor_advert* %87, i32 0, i32 0, !dbg !500
  %89 = getelementptr inbounds %struct.icmp6_hdr, %struct.icmp6_hdr* %88, i32 0, i32 0, !dbg !501
  store i8 -120, i8* %89, align 4, !dbg !502
  %90 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !503
  %91 = getelementptr inbounds %struct._interface, %struct._interface* %90, i32 0, i32 19, !dbg !505
  %92 = load i8, i8* %91, align 8, !dbg !505
  %93 = trunc i8 %92 to i1, !dbg !505
  br i1 %93, label %94, label %102, !dbg !506

; <label>:94:                                     ; preds = %2
  %95 = load %struct.nd_neighbor_advert*, %struct.nd_neighbor_advert** %7, align 8, !dbg !507
  %96 = getelementptr inbounds %struct.nd_neighbor_advert, %struct.nd_neighbor_advert* %95, i32 0, i32 0, !dbg !508
  %97 = getelementptr inbounds %struct.icmp6_hdr, %struct.icmp6_hdr* %96, i32 0, i32 3, !dbg !509
  %98 = bitcast %union.anon.2* %97 to [1 x i32]*, !dbg !510
  %99 = getelementptr inbounds [1 x i32], [1 x i32]* %98, i64 0, i64 0, !dbg !507
  %100 = load i32, i32* %99, align 4, !dbg !511
  %101 = or i32 %100, 128, !dbg !511
  store i32 %101, i32* %99, align 4, !dbg !511
  br label %102, !dbg !507

; <label>:102:                                    ; preds = %94, %2
  %103 = load %struct.nd_neighbor_advert*, %struct.nd_neighbor_advert** %7, align 8, !dbg !512
  %104 = getelementptr inbounds %struct.nd_neighbor_advert, %struct.nd_neighbor_advert* %103, i32 0, i32 0, !dbg !513
  %105 = getelementptr inbounds %struct.icmp6_hdr, %struct.icmp6_hdr* %104, i32 0, i32 3, !dbg !514
  %106 = bitcast %union.anon.2* %105 to [1 x i32]*, !dbg !515
  %107 = getelementptr inbounds [1 x i32], [1 x i32]* %106, i64 0, i64 0, !dbg !512
  %108 = load i32, i32* %107, align 4, !dbg !516
  %109 = or i32 %108, 32, !dbg !516
  store i32 %109, i32* %107, align 4, !dbg !516
  %110 = load %struct.nd_neighbor_advert*, %struct.nd_neighbor_advert** %7, align 8, !dbg !517
  %111 = getelementptr inbounds %struct.nd_neighbor_advert, %struct.nd_neighbor_advert* %110, i32 0, i32 1, !dbg !518
  %112 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !519
  %113 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %112, i32 0, i32 1, !dbg !520
  %114 = bitcast %union.anon.0* %113 to %struct.in6_addr*, !dbg !521
  %115 = bitcast %struct.in6_addr* %111 to i8*, !dbg !521
  %116 = bitcast %struct.in6_addr* %114 to i8*, !dbg !521
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %115, i8* %116, i64 16, i32 4, i1 false), !dbg !521
  %117 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %9, align 8, !dbg !522
  %118 = getelementptr inbounds %struct.nd_opt_hdr, %struct.nd_opt_hdr* %117, i32 0, i32 0, !dbg !523
  store i8 2, i8* %118, align 1, !dbg !524
  %119 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %9, align 8, !dbg !525
  %120 = getelementptr inbounds %struct.nd_opt_hdr, %struct.nd_opt_hdr* %119, i32 0, i32 1, !dbg !526
  store i8 1, i8* %120, align 1, !dbg !527
  %121 = load i8*, i8** %10, align 8, !dbg !528
  %122 = load i8*, i8** %11, align 8, !dbg !529
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %121, i8* %122, i64 6, i32 1, i1 false), !dbg !530
  %123 = load %struct.ip6hdr*, %struct.ip6hdr** %6, align 8, !dbg !531
  %124 = load %struct.icmp6_hdr*, %struct.icmp6_hdr** %8, align 8, !dbg !532
  %125 = call zeroext i16 @ndisc_icmp6_cksum(%struct.ip6hdr* %123, %struct.icmp6_hdr* %124, i32 32), !dbg !533
  %126 = load %struct.icmp6_hdr*, %struct.icmp6_hdr** %8, align 8, !dbg !534
  %127 = getelementptr inbounds %struct.icmp6_hdr, %struct.icmp6_hdr* %126, i32 0, i32 2, !dbg !535
  store i16 %125, i16* %127, align 2, !dbg !536
  %128 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !537
  call void @ndisc_send_na(%struct._ip_address* %128), !dbg !538
  %129 = load i8*, i8** @ndisc_buffer, align 8, !dbg !539
  call void @llvm.memset.p0i8.i64(i8* %129, i8 0, i64 86, i32 1, i1 false), !dbg !540
  %130 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !541
  %131 = getelementptr inbounds %struct._interface, %struct._interface* %130, i32 0, i32 18, !dbg !543
  %132 = load %struct._garp_delay*, %struct._garp_delay** %131, align 8, !dbg !543
  %133 = icmp ne %struct._garp_delay* %132, null, !dbg !541
  br i1 %133, label %134, label %163, !dbg !544

; <label>:134:                                    ; preds = %102
  %135 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !545
  %136 = getelementptr inbounds %struct._interface, %struct._interface* %135, i32 0, i32 18, !dbg !547
  %137 = load %struct._garp_delay*, %struct._garp_delay** %136, align 8, !dbg !547
  %138 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %137, i32 0, i32 3, !dbg !548
  %139 = load i8, i8* %138, align 8, !dbg !548
  %140 = trunc i8 %139 to i1, !dbg !548
  br i1 %140, label %141, label %163, !dbg !549

; <label>:141:                                    ; preds = %134
  %142 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !550
  %143 = getelementptr inbounds %struct._interface, %struct._interface* %142, i32 0, i32 18, !dbg !551
  %144 = load %struct._garp_delay*, %struct._garp_delay** %143, align 8, !dbg !551
  %145 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %144, i32 0, i32 5, !dbg !552
  %146 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !553
  %147 = getelementptr inbounds %struct._interface, %struct._interface* %146, i32 0, i32 18, !dbg !554
  %148 = load %struct._garp_delay*, %struct._garp_delay** %147, align 8, !dbg !554
  %149 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %148, i32 0, i32 2, !dbg !555
  %150 = bitcast %struct.timeval* %149 to { i64, i64 }*, !dbg !556
  %151 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %150, i32 0, i32 0, !dbg !556
  %152 = load i64, i64* %151, align 8, !dbg !556
  %153 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %150, i32 0, i32 1, !dbg !556
  %154 = load i64, i64* %153, align 8, !dbg !556
  %155 = call { i64, i64 } @timer_add_now(i64 %152, i64 %154), !dbg !556
  %156 = bitcast %struct.timeval* %12 to { i64, i64 }*, !dbg !556
  %157 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %156, i32 0, i32 0, !dbg !556
  %158 = extractvalue { i64, i64 } %155, 0, !dbg !556
  store i64 %158, i64* %157, align 8, !dbg !556
  %159 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %156, i32 0, i32 1, !dbg !556
  %160 = extractvalue { i64, i64 } %155, 1, !dbg !556
  store i64 %160, i64* %159, align 8, !dbg !556
  %161 = bitcast %struct.timeval* %145 to i8*, !dbg !556
  %162 = bitcast %struct.timeval* %12 to i8*, !dbg !556
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %161, i8* %162, i64 16, i32 8, i1 false), !dbg !557
  br label %163, !dbg !550

; <label>:163:                                    ; preds = %141, %134, %102
  ret void, !dbg !558
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind readnone
declare zeroext i16 @htons(i16 zeroext) #3

; Function Attrs: nounwind uwtable
define internal zeroext i16 @ndisc_icmp6_cksum(%struct.ip6hdr*, %struct.icmp6_hdr*, i32) #0 !dbg !559 {
  %4 = alloca %struct.ip6hdr*, align 8
  %5 = alloca %struct.icmp6_hdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i16*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %union.anon.6, align 4
  store %struct.ip6hdr* %0, %struct.ip6hdr** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.ip6hdr** %4, metadata !567, metadata !406), !dbg !568
  store %struct.icmp6_hdr* %1, %struct.icmp6_hdr** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.icmp6_hdr** %5, metadata !569, metadata !406), !dbg !570
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !571, metadata !406), !dbg !572
  call void @llvm.dbg.declare(metadata i64* %7, metadata !573, metadata !406), !dbg !574
  call void @llvm.dbg.declare(metadata i16** %8, metadata !575, metadata !406), !dbg !576
  call void @llvm.dbg.declare(metadata i32* %9, metadata !577, metadata !406), !dbg !578
  call void @llvm.dbg.declare(metadata %union.anon.6* %10, metadata !579, metadata !406), !dbg !593
  %11 = bitcast %union.anon.6* %10 to i8*, !dbg !594
  call void @llvm.memset.p0i8.i64(i8* %11, i8 0, i64 40, i32 4, i1 false), !dbg !594
  %12 = bitcast %union.anon.6* %10 to %struct.anon.7*, !dbg !595
  %13 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %12, i32 0, i32 0, !dbg !596
  %14 = bitcast %struct.in6_addr* %13 to i8*, !dbg !597
  %15 = load %struct.ip6hdr*, %struct.ip6hdr** %4, align 8, !dbg !598
  %16 = getelementptr inbounds %struct.ip6hdr, %struct.ip6hdr* %15, i32 0, i32 5, !dbg !599
  %17 = bitcast %struct.in6_addr* %16 to i8*, !dbg !597
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %17, i64 16, i32 4, i1 false), !dbg !597
  %18 = bitcast %union.anon.6* %10 to %struct.anon.7*, !dbg !600
  %19 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %18, i32 0, i32 1, !dbg !601
  %20 = bitcast %struct.in6_addr* %19 to i8*, !dbg !602
  %21 = load %struct.ip6hdr*, %struct.ip6hdr** %4, align 8, !dbg !603
  %22 = getelementptr inbounds %struct.ip6hdr, %struct.ip6hdr* %21, i32 0, i32 6, !dbg !604
  %23 = bitcast %struct.in6_addr* %22 to i8*, !dbg !602
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %23, i64 16, i32 4, i1 false), !dbg !602
  %24 = load i32, i32* %6, align 4, !dbg !605
  %25 = call i32 @htonl(i32 %24) #1, !dbg !606
  %26 = bitcast %union.anon.6* %10 to %struct.anon.7*, !dbg !607
  %27 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %26, i32 0, i32 2, !dbg !608
  store i32 %25, i32* %27, align 4, !dbg !609
  %28 = bitcast %union.anon.6* %10 to %struct.anon.7*, !dbg !610
  %29 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %28, i32 0, i32 4, !dbg !611
  store i8 58, i8* %29, align 1, !dbg !612
  store i32 0, i32* %9, align 4, !dbg !613
  store i64 0, i64* %7, align 8, !dbg !614
  br label %30, !dbg !616

; <label>:30:                                     ; preds = %41, %3
  %31 = load i64, i64* %7, align 8, !dbg !617
  %32 = icmp ult i64 %31, 20, !dbg !620
  br i1 %32, label %33, label %44, !dbg !621

; <label>:33:                                     ; preds = %30
  %34 = load i64, i64* %7, align 8, !dbg !622
  %35 = bitcast %union.anon.6* %10 to [20 x i16]*, !dbg !623
  %36 = getelementptr inbounds [20 x i16], [20 x i16]* %35, i64 0, i64 %34, !dbg !624
  %37 = load i16, i16* %36, align 2, !dbg !624
  %38 = zext i16 %37 to i32, !dbg !624
  %39 = load i32, i32* %9, align 4, !dbg !625
  %40 = add i32 %39, %38, !dbg !625
  store i32 %40, i32* %9, align 4, !dbg !625
  br label %41, !dbg !626

; <label>:41:                                     ; preds = %33
  %42 = load i64, i64* %7, align 8, !dbg !627
  %43 = add i64 %42, 1, !dbg !627
  store i64 %43, i64* %7, align 8, !dbg !627
  br label %30, !dbg !629, !llvm.loop !630

; <label>:44:                                     ; preds = %30
  %45 = load %struct.icmp6_hdr*, %struct.icmp6_hdr** %5, align 8, !dbg !632
  %46 = bitcast %struct.icmp6_hdr* %45 to i16*, !dbg !633
  store i16* %46, i16** %8, align 8, !dbg !634
  store i64 1, i64* %7, align 8, !dbg !635
  br label %47, !dbg !637

; <label>:47:                                     ; preds = %59, %44
  %48 = load i64, i64* %7, align 8, !dbg !638
  %49 = load i32, i32* %6, align 4, !dbg !641
  %50 = zext i32 %49 to i64, !dbg !641
  %51 = icmp ult i64 %48, %50, !dbg !642
  br i1 %51, label %52, label %62, !dbg !643

; <label>:52:                                     ; preds = %47
  %53 = load i16*, i16** %8, align 8, !dbg !644
  %54 = getelementptr inbounds i16, i16* %53, i32 1, !dbg !644
  store i16* %54, i16** %8, align 8, !dbg !644
  %55 = load i16, i16* %53, align 2, !dbg !645
  %56 = zext i16 %55 to i32, !dbg !645
  %57 = load i32, i32* %9, align 4, !dbg !646
  %58 = add i32 %57, %56, !dbg !646
  store i32 %58, i32* %9, align 4, !dbg !646
  br label %59, !dbg !647

; <label>:59:                                     ; preds = %52
  %60 = load i64, i64* %7, align 8, !dbg !648
  %61 = add i64 %60, 2, !dbg !648
  store i64 %61, i64* %7, align 8, !dbg !648
  br label %47, !dbg !650, !llvm.loop !651

; <label>:62:                                     ; preds = %47
  %63 = load i32, i32* %6, align 4, !dbg !653
  %64 = and i32 %63, 1, !dbg !655
  %65 = icmp ne i32 %64, 0, !dbg !655
  br i1 %65, label %66, label %77, !dbg !656

; <label>:66:                                     ; preds = %62
  %67 = load i16*, i16** %8, align 8, !dbg !657
  %68 = bitcast i16* %67 to i8*, !dbg !658
  %69 = load i8, i8* %68, align 1, !dbg !658
  %70 = zext i8 %69 to i32, !dbg !659
  %71 = shl i32 %70, 8, !dbg !660
  %72 = trunc i32 %71 to i16, !dbg !659
  %73 = call zeroext i16 @htons(i16 zeroext %72) #1, !dbg !661
  %74 = zext i16 %73 to i32, !dbg !661
  %75 = load i32, i32* %9, align 4, !dbg !662
  %76 = add i32 %75, %74, !dbg !662
  store i32 %76, i32* %9, align 4, !dbg !662
  br label %77, !dbg !663

; <label>:77:                                     ; preds = %66, %62
  br label %78, !dbg !664

; <label>:78:                                     ; preds = %81, %77
  %79 = load i32, i32* %9, align 4, !dbg !665
  %80 = icmp ugt i32 %79, 65535, !dbg !667
  br i1 %80, label %81, label %87, !dbg !668

; <label>:81:                                     ; preds = %78
  %82 = load i32, i32* %9, align 4, !dbg !669
  %83 = and i32 %82, 65535, !dbg !670
  %84 = load i32, i32* %9, align 4, !dbg !671
  %85 = lshr i32 %84, 16, !dbg !672
  %86 = add i32 %83, %85, !dbg !673
  store i32 %86, i32* %9, align 4, !dbg !674
  br label %78, !dbg !675, !llvm.loop !677

; <label>:87:                                     ; preds = %78
  %88 = load i32, i32* %9, align 4, !dbg !678
  %89 = xor i32 %88, -1, !dbg !679
  %90 = and i32 %89, 65535, !dbg !680
  %91 = trunc i32 %90 to i16, !dbg !679
  ret i16 %91, !dbg !681
}

; Function Attrs: nounwind uwtable
define internal void @ndisc_send_na(%struct._ip_address*) #0 !dbg !682 {
  %2 = alloca %struct._ip_address*, align 8
  %3 = alloca %struct.sockaddr_ll, align 4
  %4 = alloca i64, align 8
  %5 = alloca [46 x i8], align 16
  %6 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store %struct._ip_address* %0, %struct._ip_address** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._ip_address** %2, metadata !685, metadata !406), !dbg !686
  call void @llvm.dbg.declare(metadata %struct.sockaddr_ll* %3, metadata !687, metadata !406), !dbg !699
  call void @llvm.dbg.declare(metadata i64* %4, metadata !700, metadata !406), !dbg !704
  call void @llvm.dbg.declare(metadata [46 x i8]* %5, metadata !705, metadata !406), !dbg !709
  %7 = bitcast [46 x i8]* %5 to i8*, !dbg !709
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 46, i32 16, i1 false), !dbg !709
  %8 = bitcast %struct.sockaddr_ll* %3 to i8*, !dbg !710
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 20, i32 4, i1 false), !dbg !710
  %9 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %3, i32 0, i32 0, !dbg !711
  store i16 17, i16* %9, align 4, !dbg !712
  %10 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %3, i32 0, i32 6, !dbg !713
  %11 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i32 0, i32 0, !dbg !714
  %12 = load %struct._ip_address*, %struct._ip_address** %2, align 8, !dbg !715
  %13 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %12, i32 0, i32 2, !dbg !716
  %14 = load %struct._interface*, %struct._interface** %13, align 8, !dbg !716
  %15 = getelementptr inbounds %struct._interface, %struct._interface* %14, i32 0, i32 8, !dbg !717
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i32 0, i32 0, !dbg !714
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %16, i64 6, i32 2, i1 false), !dbg !714
  %17 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %3, i32 0, i32 5, !dbg !718
  store i8 6, i8* %17, align 1, !dbg !719
  %18 = load %struct._ip_address*, %struct._ip_address** %2, align 8, !dbg !720
  %19 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %18, i32 0, i32 2, !dbg !721
  %20 = load %struct._interface*, %struct._interface** %19, align 8, !dbg !721
  %21 = getelementptr inbounds %struct._interface, %struct._interface* %20, i32 0, i32 1, !dbg !722
  %22 = load i32, i32* %21, align 8, !dbg !722
  %23 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %3, i32 0, i32 2, !dbg !723
  store i32 %22, i32* %23, align 4, !dbg !724
  %24 = call zeroext i1 @__test_bit(i32 7, i64* @debug), !dbg !725
  br i1 %24, label %25, label %38, !dbg !727

; <label>:25:                                     ; preds = %1
  %26 = load %struct._ip_address*, %struct._ip_address** %2, align 8, !dbg !728
  %27 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %26, i32 0, i32 1, !dbg !730
  %28 = bitcast %union.anon.0* %27 to %struct.in6_addr*, !dbg !731
  %29 = bitcast %struct.in6_addr* %28 to i8*, !dbg !732
  %30 = getelementptr inbounds [46 x i8], [46 x i8]* %5, i32 0, i32 0, !dbg !733
  %31 = call i8* @inet_ntop(i32 10, i8* %29, i8* %30, i32 46) #7, !dbg !734
  %32 = load %struct._ip_address*, %struct._ip_address** %2, align 8, !dbg !735
  %33 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %32, i32 0, i32 2, !dbg !736
  %34 = load %struct._interface*, %struct._interface** %33, align 8, !dbg !736
  %35 = getelementptr inbounds %struct._interface, %struct._interface* %34, i32 0, i32 0, !dbg !737
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %35, i32 0, i32 0, !dbg !738
  %37 = getelementptr inbounds [46 x i8], [46 x i8]* %5, i32 0, i32 0, !dbg !739
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i32 0, i32 0), i8* %36, i8* %37), !dbg !740
  br label %38, !dbg !741

; <label>:38:                                     ; preds = %25, %1
  %39 = load i32, i32* @ndisc_fd, align 4, !dbg !742
  %40 = load i8*, i8** @ndisc_buffer, align 8, !dbg !743
  %41 = bitcast %union.__CONST_SOCKADDR_ARG* %6 to %struct.sockaddr**, !dbg !744
  %42 = bitcast %struct.sockaddr_ll* %3 to %struct.sockaddr*, !dbg !744
  store %struct.sockaddr* %42, %struct.sockaddr** %41, align 8, !dbg !744
  %43 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %6, i32 0, i32 0, !dbg !745
  %44 = load %struct.sockaddr*, %struct.sockaddr** %43, align 8, !dbg !745
  %45 = call i64 @sendto(i32 %39, i8* %40, i64 86, i32 0, %struct.sockaddr* %44, i32 20), !dbg !745
  store i64 %45, i64* %4, align 8, !dbg !746
  %46 = load i64, i64* %4, align 8, !dbg !747
  %47 = icmp slt i64 %46, 0, !dbg !749
  br i1 %47, label %48, label %66, !dbg !750

; <label>:48:                                     ; preds = %38
  %49 = getelementptr inbounds [46 x i8], [46 x i8]* %5, i64 0, i64 0, !dbg !751
  %50 = load i8, i8* %49, align 16, !dbg !751
  %51 = icmp ne i8 %50, 0, !dbg !751
  br i1 %51, label %59, label %52, !dbg !754

; <label>:52:                                     ; preds = %48
  %53 = load %struct._ip_address*, %struct._ip_address** %2, align 8, !dbg !755
  %54 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %53, i32 0, i32 1, !dbg !756
  %55 = bitcast %union.anon.0* %54 to %struct.in6_addr*, !dbg !757
  %56 = bitcast %struct.in6_addr* %55 to i8*, !dbg !758
  %57 = getelementptr inbounds [46 x i8], [46 x i8]* %5, i32 0, i32 0, !dbg !759
  %58 = call i8* @inet_ntop(i32 10, i8* %56, i8* %57, i32 46) #7, !dbg !760
  br label %59, !dbg !760

; <label>:59:                                     ; preds = %52, %48
  %60 = load %struct._ip_address*, %struct._ip_address** %2, align 8, !dbg !761
  %61 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %60, i32 0, i32 2, !dbg !762
  %62 = load %struct._interface*, %struct._interface** %61, align 8, !dbg !762
  %63 = getelementptr inbounds %struct._interface, %struct._interface* %62, i32 0, i32 0, !dbg !763
  %64 = getelementptr inbounds [16 x i8], [16 x i8]* %63, i32 0, i32 0, !dbg !764
  %65 = getelementptr inbounds [46 x i8], [46 x i8]* %5, i32 0, i32 0, !dbg !765
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i32 0, i32 0), i8* %64, i8* %65), !dbg !766
  br label %66, !dbg !767

; <label>:66:                                     ; preds = %59, %38
  ret void, !dbg !768
}

; Function Attrs: inlinehint nounwind uwtable
define internal { i64, i64 } @timer_add_now(i64, i64) #4 !dbg !769 {
  %3 = alloca %struct.timeval, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = bitcast %struct.timeval* %4 to { i64, i64 }*
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i32 0, i32 0
  store i64 %0, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i32 0, i32 1
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval* %4, metadata !772, metadata !406), !dbg !773
  br label %8, !dbg !774, !llvm.loop !775

; <label>:8:                                      ; preds = %2
  %9 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @time_now, i32 0, i32 0), align 8, !dbg !776
  %10 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0, !dbg !776
  %11 = load i64, i64* %10, align 8, !dbg !776
  %12 = add nsw i64 %9, %11, !dbg !779
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0, !dbg !776
  store i64 %12, i64* %13, align 8, !dbg !779
  %14 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @time_now, i32 0, i32 1), align 8, !dbg !776
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1, !dbg !776
  %16 = load i64, i64* %15, align 8, !dbg !776
  %17 = add nsw i64 %14, %16, !dbg !780
  %18 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1, !dbg !776
  store i64 %17, i64* %18, align 8, !dbg !780
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1, !dbg !776
  %20 = load i64, i64* %19, align 8, !dbg !776
  %21 = icmp sge i64 %20, 1000000, !dbg !780
  br i1 %21, label %22, label %29, !dbg !781

; <label>:22:                                     ; preds = %8
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0, !dbg !782
  %24 = load i64, i64* %23, align 8, !dbg !786
  %25 = add nsw i64 %24, 1, !dbg !786
  store i64 %25, i64* %23, align 8, !dbg !786
  %26 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1, !dbg !782
  %27 = load i64, i64* %26, align 8, !dbg !787
  %28 = sub nsw i64 %27, 1000000, !dbg !787
  store i64 %28, i64* %26, align 8, !dbg !787
  br label %29, !dbg !788

; <label>:29:                                     ; preds = %22, %8
  br label %30, !dbg !789

; <label>:30:                                     ; preds = %29
  %31 = bitcast %struct.timeval* %3 to i8*, !dbg !791
  %32 = bitcast %struct.timeval* %4 to i8*, !dbg !791
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 16, i32 8, i1 false), !dbg !791
  %33 = bitcast %struct.timeval* %3 to { i64, i64 }*, !dbg !792
  %34 = load { i64, i64 }, { i64, i64 }* %33, align 8, !dbg !792
  ret { i64, i64 } %34, !dbg !792
}

; Function Attrs: nounwind uwtable
define void @ndisc_send_unsolicited_na(%struct._vrrp_t*, %struct._ip_address*) #0 !dbg !793 {
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca %struct._ip_address*, align 8
  %5 = alloca %struct._interface*, align 8
  %6 = alloca %struct.timeval, align 8
  store %struct._vrrp_t* %0, %struct._vrrp_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !1052, metadata !406), !dbg !1053
  store %struct._ip_address* %1, %struct._ip_address** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._ip_address** %4, metadata !1054, metadata !406), !dbg !1055
  call void @llvm.dbg.declare(metadata %struct._interface** %5, metadata !1056, metadata !406), !dbg !1057
  %7 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !1058
  %8 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %7, i32 0, i32 2, !dbg !1059
  %9 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !1059
  %10 = getelementptr inbounds %struct._interface, %struct._interface* %9, i32 0, i32 14, !dbg !1060
  %11 = load %struct._interface*, %struct._interface** %10, align 8, !dbg !1060
  store %struct._interface* %11, %struct._interface** %5, align 8, !dbg !1057
  %12 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !1061
  %13 = getelementptr inbounds %struct._interface, %struct._interface* %12, i32 0, i32 4, !dbg !1063
  %14 = load i32, i32* %13, align 8, !dbg !1063
  %15 = and i32 %14, 128, !dbg !1064
  %16 = icmp ne i32 %15, 0, !dbg !1064
  br i1 %16, label %17, label %18, !dbg !1065

; <label>:17:                                     ; preds = %2
  br label %79, !dbg !1066

; <label>:18:                                     ; preds = %2
  %19 = call { i64, i64 } @set_time_now(), !dbg !1067
  %20 = bitcast %struct.timeval* %6 to { i64, i64 }*, !dbg !1067
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 0, !dbg !1067
  %22 = extractvalue { i64, i64 } %19, 0, !dbg !1067
  store i64 %22, i64* %21, align 8, !dbg !1067
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 1, !dbg !1067
  %24 = extractvalue { i64, i64 } %19, 1, !dbg !1067
  store i64 %24, i64* %23, align 8, !dbg !1067
  %25 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !1068
  %26 = getelementptr inbounds %struct._interface, %struct._interface* %25, i32 0, i32 18, !dbg !1070
  %27 = load %struct._garp_delay*, %struct._garp_delay** %26, align 8, !dbg !1070
  %28 = icmp ne %struct._garp_delay* %27, null, !dbg !1068
  br i1 %28, label %29, label %76, !dbg !1071

; <label>:29:                                     ; preds = %18
  %30 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !1072
  %31 = getelementptr inbounds %struct._interface, %struct._interface* %30, i32 0, i32 18, !dbg !1074
  %32 = load %struct._garp_delay*, %struct._garp_delay** %31, align 8, !dbg !1074
  %33 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %32, i32 0, i32 3, !dbg !1075
  %34 = load i8, i8* %33, align 8, !dbg !1075
  %35 = trunc i8 %34 to i1, !dbg !1075
  br i1 %35, label %36, label %76, !dbg !1076

; <label>:36:                                     ; preds = %29
  %37 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !1077
  %38 = getelementptr inbounds %struct._interface, %struct._interface* %37, i32 0, i32 18, !dbg !1079
  %39 = load %struct._garp_delay*, %struct._garp_delay** %38, align 8, !dbg !1079
  %40 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %39, i32 0, i32 5, !dbg !1080
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %40, i32 0, i32 0, !dbg !1081
  %42 = load i64, i64* %41, align 8, !dbg !1081
  %43 = icmp ne i64 %42, 0, !dbg !1077
  br i1 %43, label %44, label %76, !dbg !1082

; <label>:44:                                     ; preds = %36
  %45 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @time_now, i32 0, i32 0), align 8, !dbg !1083
  %46 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !1086
  %47 = getelementptr inbounds %struct._interface, %struct._interface* %46, i32 0, i32 18, !dbg !1087
  %48 = load %struct._garp_delay*, %struct._garp_delay** %47, align 8, !dbg !1087
  %49 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %48, i32 0, i32 5, !dbg !1088
  %50 = getelementptr inbounds %struct.timeval, %struct.timeval* %49, i32 0, i32 0, !dbg !1083
  %51 = load i64, i64* %50, align 8, !dbg !1083
  %52 = icmp eq i64 %45, %51, !dbg !1089
  br i1 %52, label %53, label %62, !dbg !1090

; <label>:53:                                     ; preds = %44
  %54 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @time_now, i32 0, i32 1), align 8, !dbg !1091
  %55 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !1093
  %56 = getelementptr inbounds %struct._interface, %struct._interface* %55, i32 0, i32 18, !dbg !1094
  %57 = load %struct._garp_delay*, %struct._garp_delay** %56, align 8, !dbg !1094
  %58 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %57, i32 0, i32 5, !dbg !1095
  %59 = getelementptr inbounds %struct.timeval, %struct.timeval* %58, i32 0, i32 1, !dbg !1091
  %60 = load i64, i64* %59, align 8, !dbg !1091
  %61 = icmp slt i64 %54, %60, !dbg !1096
  br i1 %61, label %71, label %75, !dbg !1093

; <label>:62:                                     ; preds = %44
  %63 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @time_now, i32 0, i32 0), align 8, !dbg !1097
  %64 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !1099
  %65 = getelementptr inbounds %struct._interface, %struct._interface* %64, i32 0, i32 18, !dbg !1100
  %66 = load %struct._garp_delay*, %struct._garp_delay** %65, align 8, !dbg !1100
  %67 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %66, i32 0, i32 5, !dbg !1101
  %68 = getelementptr inbounds %struct.timeval, %struct.timeval* %67, i32 0, i32 0, !dbg !1097
  %69 = load i64, i64* %68, align 8, !dbg !1097
  %70 = icmp slt i64 %63, %69, !dbg !1102
  br i1 %70, label %71, label %75, !dbg !1102

; <label>:71:                                     ; preds = %62, %53
  %72 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1103
  %73 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !1105
  %74 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !1106
  call void @queue_ndisc(%struct._vrrp_t* %72, %struct._interface* %73, %struct._ip_address* %74), !dbg !1107
  br label %79, !dbg !1108

; <label>:75:                                     ; preds = %62, %53
  br label %76, !dbg !1109

; <label>:76:                                     ; preds = %75, %36, %29, %18
  %77 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !1110
  %78 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !1111
  call void @ndisc_send_unsolicited_na_immediate(%struct._interface* %77, %struct._ip_address* %78), !dbg !1112
  br label %79, !dbg !1113

; <label>:79:                                     ; preds = %76, %71, %17
  ret void, !dbg !1114
}

declare { i64, i64 } @set_time_now() #5

; Function Attrs: nounwind uwtable
define internal void @queue_ndisc(%struct._vrrp_t*, %struct._interface*, %struct._ip_address*) #0 !dbg !1116 {
  %4 = alloca %struct._vrrp_t*, align 8
  %5 = alloca %struct._interface*, align 8
  %6 = alloca %struct._ip_address*, align 8
  %7 = alloca %struct.timeval, align 8
  store %struct._vrrp_t* %0, %struct._vrrp_t** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %4, metadata !1119, metadata !406), !dbg !1120
  store %struct._interface* %1, %struct._interface** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._interface** %5, metadata !1121, metadata !406), !dbg !1122
  store %struct._ip_address* %2, %struct._ip_address** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._ip_address** %6, metadata !1123, metadata !406), !dbg !1124
  call void @llvm.dbg.declare(metadata %struct.timeval* %7, metadata !1125, metadata !406), !dbg !1126
  %8 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !1127
  %9 = getelementptr inbounds %struct._interface, %struct._interface* %8, i32 0, i32 18, !dbg !1128
  %10 = load %struct._garp_delay*, %struct._garp_delay** %9, align 8, !dbg !1128
  %11 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %10, i32 0, i32 2, !dbg !1129
  %12 = bitcast %struct.timeval* %11 to { i64, i64 }*, !dbg !1130
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 0, !dbg !1130
  %14 = load i64, i64* %13, align 8, !dbg !1130
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1, !dbg !1130
  %16 = load i64, i64* %15, align 8, !dbg !1130
  %17 = call { i64, i64 } @timer_add_now(i64 %14, i64 %16), !dbg !1130
  %18 = bitcast %struct.timeval* %7 to { i64, i64 }*, !dbg !1130
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 0, !dbg !1130
  %20 = extractvalue { i64, i64 } %17, 0, !dbg !1130
  store i64 %20, i64* %19, align 8, !dbg !1130
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1, !dbg !1130
  %22 = extractvalue { i64, i64 } %17, 1, !dbg !1130
  store i64 %22, i64* %21, align 8, !dbg !1130
  %23 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !1131
  %24 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %23, i32 0, i32 32, !dbg !1132
  store i8 1, i8* %24, align 1, !dbg !1133
  %25 = load %struct._ip_address*, %struct._ip_address** %6, align 8, !dbg !1134
  %26 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %25, i32 0, i32 12, !dbg !1135
  store i8 1, i8* %26, align 2, !dbg !1136
  %27 = load %struct._thread*, %struct._thread** @garp_thread, align 8, !dbg !1137
  %28 = icmp ne %struct._thread* %27, null, !dbg !1137
  br i1 %28, label %29, label %44, !dbg !1139

; <label>:29:                                     ; preds = %3
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0, !dbg !1140
  %31 = load i64, i64* %30, align 8, !dbg !1140
  %32 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @garp_next_time, i32 0, i32 0), align 8, !dbg !1140
  %33 = icmp eq i64 %31, %32, !dbg !1142
  br i1 %33, label %34, label %39, !dbg !1143

; <label>:34:                                     ; preds = %29
  %35 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1, !dbg !1144
  %36 = load i64, i64* %35, align 8, !dbg !1144
  %37 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @garp_next_time, i32 0, i32 1), align 8, !dbg !1144
  %38 = icmp slt i64 %36, %37, !dbg !1146
  br i1 %38, label %44, label %63, !dbg !1147

; <label>:39:                                     ; preds = %29
  %40 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0, !dbg !1148
  %41 = load i64, i64* %40, align 8, !dbg !1148
  %42 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @garp_next_time, i32 0, i32 0), align 8, !dbg !1148
  %43 = icmp slt i64 %41, %42, !dbg !1150
  br i1 %43, label %44, label %63, !dbg !1151

; <label>:44:                                     ; preds = %39, %34, %3
  %45 = load %struct._thread*, %struct._thread** @garp_thread, align 8, !dbg !1152
  %46 = icmp ne %struct._thread* %45, null, !dbg !1152
  br i1 %46, label %47, label %49, !dbg !1155

; <label>:47:                                     ; preds = %44
  %48 = load %struct._thread*, %struct._thread** @garp_thread, align 8, !dbg !1156
  call void @thread_cancel(%struct._thread* %48), !dbg !1157
  br label %49, !dbg !1157

; <label>:49:                                     ; preds = %47, %44
  %50 = bitcast %struct.timeval* %7 to i8*, !dbg !1158
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.timeval* @garp_next_time to i8*), i8* %50, i64 16, i32 8, i1 false), !dbg !1158
  %51 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !1159
  %52 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !1160
  %53 = getelementptr inbounds %struct._interface, %struct._interface* %52, i32 0, i32 18, !dbg !1161
  %54 = load %struct._garp_delay*, %struct._garp_delay** %53, align 8, !dbg !1161
  %55 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %54, i32 0, i32 2, !dbg !1162
  %56 = bitcast %struct.timeval* %55 to { i64, i64 }*, !dbg !1163
  %57 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %56, i32 0, i32 0, !dbg !1163
  %58 = load i64, i64* %57, align 8, !dbg !1163
  %59 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %56, i32 0, i32 1, !dbg !1163
  %60 = load i64, i64* %59, align 8, !dbg !1163
  %61 = call i64 @timer_long(i64 %58, i64 %60), !dbg !1163
  %62 = call %struct._thread* @thread_add_timer(%struct._thread_master* %51, i32 (%struct._thread*)* @vrrp_arp_thread, i8* null, i64 %61), !dbg !1164
  store %struct._thread* %62, %struct._thread** @garp_thread, align 8, !dbg !1166
  br label %63, !dbg !1167

; <label>:63:                                     ; preds = %49, %39, %34
  ret void, !dbg !1168
}

; Function Attrs: nounwind uwtable
define void @ndisc_init() #0 !dbg !1169 {
  %1 = load i8*, i8** @ndisc_buffer, align 8, !dbg !1172
  %2 = icmp ne i8* %1, null, !dbg !1172
  br i1 %2, label %3, label %4, !dbg !1174

; <label>:3:                                      ; preds = %0
  br label %13, !dbg !1175

; <label>:4:                                      ; preds = %0
  %5 = call i8* @zalloc(i64 86), !dbg !1176
  store i8* %5, i8** @ndisc_buffer, align 8, !dbg !1177
  %6 = call zeroext i16 @htons(i16 zeroext -31011) #1, !dbg !1178
  %7 = zext i16 %6 to i32, !dbg !1178
  %8 = call i32 @socket(i32 17, i32 524291, i32 %7) #7, !dbg !1179
  store i32 %8, i32* @ndisc_fd, align 4, !dbg !1181
  %9 = load i32, i32* @ndisc_fd, align 4, !dbg !1182
  %10 = icmp sgt i32 %9, 0, !dbg !1184
  br i1 %10, label %11, label %12, !dbg !1185

; <label>:11:                                     ; preds = %4
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i32 0, i32 0)), !dbg !1186
  br label %13, !dbg !1186

; <label>:12:                                     ; preds = %4
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i32 0, i32 0)), !dbg !1187
  br label %13

; <label>:13:                                     ; preds = %3, %12, %11
  ret void, !dbg !1188
}

declare i8* @zalloc(i64) #5

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #6

declare void @log_message(i32, i8*, ...) #5

; Function Attrs: nounwind uwtable
define void @ndisc_close() #0 !dbg !1189 {
  %1 = load i8*, i8** @ndisc_buffer, align 8, !dbg !1190
  %2 = icmp ne i8* %1, null, !dbg !1190
  br i1 %2, label %4, label %3, !dbg !1192

; <label>:3:                                      ; preds = %0
  br label %8, !dbg !1193

; <label>:4:                                      ; preds = %0
  %5 = load i8*, i8** @ndisc_buffer, align 8, !dbg !1194
  call void @free(i8* %5) #7, !dbg !1195
  store i8* null, i8** @ndisc_buffer, align 8, !dbg !1196
  store i8* null, i8** @ndisc_buffer, align 8, !dbg !1197
  %6 = load i32, i32* @ndisc_fd, align 4, !dbg !1198
  %7 = call i32 @close(i32 %6), !dbg !1199
  store i32 -1, i32* @ndisc_fd, align 4, !dbg !1200
  br label %8, !dbg !1201

; <label>:8:                                      ; preds = %4, %3
  ret void, !dbg !1202
}

; Function Attrs: nounwind
declare void @free(i8*) #6

declare i32 @close(i32) #5

; Function Attrs: nounwind readnone
declare i32 @htonl(i32) #3

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @__test_bit(i32, i64*) #4 !dbg !1204 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1209, metadata !406), !dbg !1210
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !1211, metadata !406), !dbg !1212
  %5 = load i32, i32* %3, align 4, !dbg !1213
  %6 = zext i32 %5 to i64, !dbg !1214
  %7 = udiv i64 %6, 64, !dbg !1215
  %8 = load i64*, i64** %4, align 8, !dbg !1216
  %9 = getelementptr inbounds i64, i64* %8, i64 %7, !dbg !1216
  %10 = load i64, i64* %9, align 8, !dbg !1216
  %11 = load i32, i32* %3, align 4, !dbg !1217
  %12 = zext i32 %11 to i64, !dbg !1218
  %13 = urem i64 %12, 64, !dbg !1219
  %14 = shl i64 1, %13, !dbg !1220
  %15 = and i64 %10, %14, !dbg !1221
  %16 = icmp ne i64 %15, 0, !dbg !1222
  %17 = xor i1 %16, true, !dbg !1222
  %18 = xor i1 %17, true, !dbg !1223
  ret i1 %18, !dbg !1224
}

; Function Attrs: nounwind
declare i8* @inet_ntop(i32, i8*, i8*, i32) #6

declare i64 @sendto(i32, i8*, i64, i32, %struct.sockaddr*, i32) #5

declare void @thread_cancel(%struct._thread*) #5

declare %struct._thread* @thread_add_timer(%struct._thread_master*, i32 (%struct._thread*)*, i8*, i64) #5

declare i32 @vrrp_arp_thread(%struct._thread*) #5

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @timer_long(i64, i64) #4 !dbg !1225 {
  %3 = alloca %struct.timeval, align 8
  %4 = bitcast %struct.timeval* %3 to { i64, i64 }*
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  store i64 %0, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval* %3, metadata !1228, metadata !406), !dbg !1229
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0, !dbg !1230
  %8 = load i64, i64* %7, align 8, !dbg !1230
  %9 = mul i64 %8, 1000000, !dbg !1231
  %10 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1, !dbg !1232
  %11 = load i64, i64* %10, align 8, !dbg !1232
  %12 = add i64 %9, %11, !dbg !1233
  ret i64 %12, !dbg !1234
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!278, !279}
!llvm.ident = !{!280}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !88, globals: !195)
!1 = !DIFile(filename: "[inter]keepalived--vrrp--vrrp_ndisc.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!2 = !{!3, !13, !21, !42, !61, !73}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 99, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!5 = !{!6, !7, !8, !9, !10, !11, !12}
!6 = !DIEnumerator(name: "IPPROTO_HOPOPTS", value: 0)
!7 = !DIEnumerator(name: "IPPROTO_ROUTING", value: 43)
!8 = !DIEnumerator(name: "IPPROTO_FRAGMENT", value: 44)
!9 = !DIEnumerator(name: "IPPROTO_ICMPV6", value: 58)
!10 = !DIEnumerator(name: "IPPROTO_NONE", value: 59)
!11 = !DIEnumerator(name: "IPPROTO_DSTOPTS", value: 60)
!12 = !DIEnumerator(name: "IPPROTO_MH", value: 135)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "chksum_compatibility", file: !14, line: 173, size: 32, align: 32, elements: !15)
!14 = !DIFile(filename: "./../include/vrrp.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!15 = !{!16, !17, !18, !19, !20}
!16 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_NONE", value: 0)
!17 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_NEVER", value: 1)
!18 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_MIN_COMPAT", value: 2)
!19 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_CONFIG", value: 3)
!20 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_AUTO", value: 4)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !22, line: 41, size: 32, align: 32, elements: !23)
!22 = !DIFile(filename: "../../lib/scheduler.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!24 = !DIEnumerator(name: "THREAD_READ", value: 0)
!25 = !DIEnumerator(name: "THREAD_WRITE", value: 1)
!26 = !DIEnumerator(name: "THREAD_TIMER", value: 2)
!27 = !DIEnumerator(name: "THREAD_TIMER_SHUTDOWN", value: 3)
!28 = !DIEnumerator(name: "THREAD_EVENT", value: 4)
!29 = !DIEnumerator(name: "THREAD_CHILD", value: 5)
!30 = !DIEnumerator(name: "THREAD_READY", value: 6)
!31 = !DIEnumerator(name: "THREAD_UNUSED", value: 7)
!32 = !DIEnumerator(name: "THREAD_WRITE_TIMEOUT", value: 8)
!33 = !DIEnumerator(name: "THREAD_READ_TIMEOUT", value: 9)
!34 = !DIEnumerator(name: "THREAD_CHILD_TIMEOUT", value: 10)
!35 = !DIEnumerator(name: "THREAD_TERMINATE_START", value: 11)
!36 = !DIEnumerator(name: "THREAD_TERMINATE", value: 12)
!37 = !DIEnumerator(name: "THREAD_READY_FD", value: 13)
!38 = !DIEnumerator(name: "THREAD_READ_ERROR", value: 14)
!39 = !DIEnumerator(name: "THREAD_WRITE_ERROR", value: 15)
!40 = !DIEnumerator(name: "THREAD_IF_UP", value: 16)
!41 = !DIEnumerator(name: "THREAD_IF_DOWN", value: 17)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !43, line: 42, size: 32, align: 32, elements: !44)
!43 = !DIFile(filename: "/usr/include/net/if.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!44 = !{!45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60}
!45 = !DIEnumerator(name: "IFF_UP", value: 1)
!46 = !DIEnumerator(name: "IFF_BROADCAST", value: 2)
!47 = !DIEnumerator(name: "IFF_DEBUG", value: 4)
!48 = !DIEnumerator(name: "IFF_LOOPBACK", value: 8)
!49 = !DIEnumerator(name: "IFF_POINTOPOINT", value: 16)
!50 = !DIEnumerator(name: "IFF_NOTRAILERS", value: 32)
!51 = !DIEnumerator(name: "IFF_RUNNING", value: 64)
!52 = !DIEnumerator(name: "IFF_NOARP", value: 128)
!53 = !DIEnumerator(name: "IFF_PROMISC", value: 256)
!54 = !DIEnumerator(name: "IFF_ALLMULTI", value: 512)
!55 = !DIEnumerator(name: "IFF_MASTER", value: 1024)
!56 = !DIEnumerator(name: "IFF_SLAVE", value: 2048)
!57 = !DIEnumerator(name: "IFF_MULTICAST", value: 4096)
!58 = !DIEnumerator(name: "IFF_PORTSEL", value: 8192)
!59 = !DIEnumerator(name: "IFF_AUTOMEDIA", value: 16384)
!60 = !DIEnumerator(name: "IFF_DYNAMIC", value: 32768)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !62, line: 24, size: 32, align: 32, elements: !63)
!62 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!63 = !{!64, !65, !66, !67, !68, !69, !70, !71, !72}
!64 = !DIEnumerator(name: "SOCK_STREAM", value: 1)
!65 = !DIEnumerator(name: "SOCK_DGRAM", value: 2)
!66 = !DIEnumerator(name: "SOCK_RAW", value: 3)
!67 = !DIEnumerator(name: "SOCK_RDM", value: 4)
!68 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5)
!69 = !DIEnumerator(name: "SOCK_DCCP", value: 6)
!70 = !DIEnumerator(name: "SOCK_PACKET", value: 10)
!71 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288)
!72 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "global_bits", file: !74, line: 53, size: 32, align: 32, elements: !75)
!74 = !DIFile(filename: "../../lib/bitops.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!75 = !{!76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87}
!76 = !DIEnumerator(name: "LOG_CONSOLE_BIT", value: 0)
!77 = !DIEnumerator(name: "NO_SYSLOG_BIT", value: 1)
!78 = !DIEnumerator(name: "DONT_FORK_BIT", value: 2)
!79 = !DIEnumerator(name: "DUMP_CONF_BIT", value: 3)
!80 = !DIEnumerator(name: "DONT_RELEASE_VRRP_BIT", value: 4)
!81 = !DIEnumerator(name: "RELEASE_VIPS_BIT", value: 5)
!82 = !DIEnumerator(name: "DONT_RELEASE_IPVS_BIT", value: 6)
!83 = !DIEnumerator(name: "LOG_DETAIL_BIT", value: 7)
!84 = !DIEnumerator(name: "LOG_EXTRA_DETAIL_BIT", value: 8)
!85 = !DIEnumerator(name: "DONT_RESPAWN_BIT", value: 9)
!86 = !DIEnumerator(name: "LOG_ADDRESS_CHANGES", value: 10)
!87 = !DIEnumerator(name: "CONFIG_TEST_BIT", value: 11)
!88 = !{!89, !104, !146, !148, !172, !177, !179, !181, !182, !193, !194}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ether_header", file: !91, line: 38, size: 112, align: 8, elements: !92)
!91 = !DIFile(filename: "/usr/include/net/ethernet.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!92 = !{!93, !100, !101}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "ether_dhost", scope: !90, file: !91, line: 40, baseType: !94, size: 48, align: 8)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 48, align: 8, elements: !98)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int8_t", file: !96, line: 200, baseType: !97)
!96 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!97 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!98 = !{!99}
!99 = !DISubrange(count: 6)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "ether_shost", scope: !90, file: !91, line: 41, baseType: !94, size: 48, align: 8, offset: 48)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "ether_type", scope: !90, file: !91, line: 42, baseType: !102, size: 16, align: 16, offset: 96)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int16_t", file: !96, line: 201, baseType: !103)
!103 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6hdr", file: !106, line: 42, size: 320, align: 32, elements: !107)
!106 = !DIFile(filename: "./../include/vrrp_ndisc.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!107 = !{!108, !111, !112, !116, !120, !121, !122, !145}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !105, file: !106, line: 44, baseType: !109, size: 4, align: 8, flags: DIFlagBitField, extraData: i64 0)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !110, line: 20, baseType: !97)
!110 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!111 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !105, file: !106, line: 45, baseType: !109, size: 4, align: 8, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "flow_lbl", scope: !105, file: !106, line: 52, baseType: !113, size: 24, align: 8, offset: 8)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 24, align: 8, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 3)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "payload_len", scope: !105, file: !106, line: 54, baseType: !117, size: 16, align: 16, offset: 32)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !118, line: 28, baseType: !119)
!118 = !DIFile(filename: "/usr/include/linux/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !110, line: 23, baseType: !103)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "nexthdr", scope: !105, file: !106, line: 55, baseType: !109, size: 8, align: 8, offset: 48)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "hop_limit", scope: !105, file: !106, line: 56, baseType: !109, size: 8, align: 8, offset: 56)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !105, file: !106, line: 58, baseType: !123, size: 128, align: 32, offset: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !4, line: 211, size: 128, align: 32, elements: !124)
!124 = !{!125}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !123, file: !4, line: 220, baseType: !126, size: 128, align: 32)
!126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !123, file: !4, line: 213, size: 128, align: 32, elements: !127)
!127 = !{!128, !134, !139}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !126, file: !4, line: 215, baseType: !129, size: 128, align: 8)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 128, align: 8, elements: !132)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !131, line: 48, baseType: !97)
!131 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!132 = !{!133}
!133 = !DISubrange(count: 16)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !126, file: !4, line: 217, baseType: !135, size: 128, align: 16)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 128, align: 16, elements: !137)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !131, line: 49, baseType: !103)
!137 = !{!138}
!138 = !DISubrange(count: 8)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !126, file: !4, line: 218, baseType: !140, size: 128, align: 32)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 128, align: 32, elements: !143)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !131, line: 51, baseType: !142)
!142 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!143 = !{!144}
!144 = !DISubrange(count: 4)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "daddr", scope: !105, file: !106, line: 59, baseType: !123, size: 128, align: 32, offset: 192)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!147 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nd_neighbor_advert", file: !150, line: 152, size: 192, align: 32, elements: !151)
!150 = !DIFile(filename: "/usr/include/netinet/icmp6.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!151 = !{!152, !171}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nd_na_hdr", scope: !149, file: !150, line: 154, baseType: !153, size: 64, align: 32)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "icmp6_hdr", file: !150, line: 38, size: 64, align: 32, elements: !154)
!154 = !{!155, !156, !157, !158}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "icmp6_type", scope: !153, file: !150, line: 40, baseType: !130, size: 8, align: 8)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "icmp6_code", scope: !153, file: !150, line: 41, baseType: !130, size: 8, align: 8, offset: 8)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "icmp6_cksum", scope: !153, file: !150, line: 42, baseType: !136, size: 16, align: 16, offset: 16)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "icmp6_dataun", scope: !153, file: !150, line: 48, baseType: !159, size: 32, align: 32, offset: 32)
!159 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !153, file: !150, line: 43, size: 32, align: 32, elements: !160)
!160 = !{!161, !165, !169}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "icmp6_un_data32", scope: !159, file: !150, line: 45, baseType: !162, size: 32, align: 32)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 32, align: 32, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 1)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "icmp6_un_data16", scope: !159, file: !150, line: 46, baseType: !166, size: 32, align: 16)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 32, align: 16, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 2)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "icmp6_un_data8", scope: !159, file: !150, line: 47, baseType: !170, size: 32, align: 8)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 32, align: 8, elements: !143)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nd_na_target", scope: !149, file: !150, line: 155, baseType: !123, size: 128, align: 32, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64, align: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nd_opt_hdr", file: !150, line: 186, size: 16, align: 8, elements: !174)
!174 = !{!175, !176}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nd_opt_type", scope: !173, file: !150, line: 188, baseType: !130, size: 8, align: 8)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nd_opt_len", scope: !173, file: !150, line: 189, baseType: !130, size: 8, align: 8, offset: 8)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64, align: 64)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!181 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !184, line: 153, size: 128, align: 16, elements: !185)
!184 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!185 = !{!186, !189}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !183, file: !184, line: 155, baseType: !187, size: 16, align: 16)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !188, line: 28, baseType: !103)
!188 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!189 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !183, file: !184, line: 156, baseType: !190, size: 112, align: 8, offset: 16)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 112, align: 8, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 14)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!194 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!195 = !{!196, !275, !277}
!196 = distinct !DIGlobalVariable(name: "garp_delay", scope: !0, file: !197, line: 150, type: !198, isLocal: false, isDefinition: true, variable: %struct._list** @garp_delay)
!197 = !DIFile(filename: "./../include/vrrp_if.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !199, line: 31, baseType: !200)
!199 = !DIFile(filename: "../../lib/list.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_list", file: !199, line: 39, size: 320, align: 64, elements: !202)
!202 = !{!203, !210, !211, !212, !216}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !201, file: !199, line: 40, baseType: !204, size: 64, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !199, line: 33, size: 192, align: 64, elements: !206)
!206 = !{!207, !208, !209}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !205, file: !199, line: 34, baseType: !204, size: 64, align: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !205, file: !199, line: 35, baseType: !204, size: 64, align: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !205, file: !199, line: 36, baseType: !193, size: 64, align: 64, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !201, file: !199, line: 41, baseType: !204, size: 64, align: 64, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !201, file: !199, line: 42, baseType: !142, size: 32, align: 32, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !201, file: !199, line: 43, baseType: !213, size: 64, align: 64, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{null, !193}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !201, file: !199, line: 44, baseType: !217, size: 64, align: 64, offset: 256)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{null, !220, !193}
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !222, line: 48, baseType: !223)
!222 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !224, line: 241, size: 1728, align: 64, elements: !225)
!224 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!225 = !{!226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !246, !247, !248, !249, !253, !254, !256, !258, !261, !263, !264, !265, !266, !267, !270, !271}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !223, file: !224, line: 242, baseType: !181, size: 32, align: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !223, file: !224, line: 247, baseType: !146, size: 64, align: 64, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !223, file: !224, line: 248, baseType: !146, size: 64, align: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !223, file: !224, line: 249, baseType: !146, size: 64, align: 64, offset: 192)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !223, file: !224, line: 250, baseType: !146, size: 64, align: 64, offset: 256)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !223, file: !224, line: 251, baseType: !146, size: 64, align: 64, offset: 320)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !223, file: !224, line: 252, baseType: !146, size: 64, align: 64, offset: 384)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !223, file: !224, line: 253, baseType: !146, size: 64, align: 64, offset: 448)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !223, file: !224, line: 254, baseType: !146, size: 64, align: 64, offset: 512)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !223, file: !224, line: 256, baseType: !146, size: 64, align: 64, offset: 576)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !223, file: !224, line: 257, baseType: !146, size: 64, align: 64, offset: 640)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !223, file: !224, line: 258, baseType: !146, size: 64, align: 64, offset: 704)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !223, file: !224, line: 260, baseType: !239, size: 64, align: 64, offset: 768)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !224, line: 156, size: 192, align: 64, elements: !241)
!241 = !{!242, !243, !245}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !240, file: !224, line: 157, baseType: !239, size: 64, align: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !240, file: !224, line: 158, baseType: !244, size: 64, align: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !240, file: !224, line: 162, baseType: !181, size: 32, align: 32, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !223, file: !224, line: 262, baseType: !244, size: 64, align: 64, offset: 832)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !223, file: !224, line: 264, baseType: !181, size: 32, align: 32, offset: 896)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !223, file: !224, line: 268, baseType: !181, size: 32, align: 32, offset: 928)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !223, file: !224, line: 270, baseType: !250, size: 64, align: 64, offset: 960)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !251, line: 131, baseType: !252)
!251 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!252 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !223, file: !224, line: 274, baseType: !103, size: 16, align: 16, offset: 1024)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !223, file: !224, line: 275, baseType: !255, size: 8, align: 8, offset: 1040)
!255 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !223, file: !224, line: 276, baseType: !257, size: 8, align: 8, offset: 1048)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 8, align: 8, elements: !163)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !223, file: !224, line: 280, baseType: !259, size: 64, align: 64, offset: 1088)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !224, line: 150, baseType: null)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !223, file: !224, line: 289, baseType: !262, size: 64, align: 64, offset: 1152)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !251, line: 132, baseType: !252)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !223, file: !224, line: 297, baseType: !193, size: 64, align: 64, offset: 1216)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !223, file: !224, line: 298, baseType: !193, size: 64, align: 64, offset: 1280)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !223, file: !224, line: 299, baseType: !193, size: 64, align: 64, offset: 1344)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !223, file: !224, line: 300, baseType: !193, size: 64, align: 64, offset: 1408)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !223, file: !224, line: 302, baseType: !268, size: 64, align: 64, offset: 1472)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !269, line: 216, baseType: !194)
!269 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !223, file: !224, line: 303, baseType: !181, size: 32, align: 32, offset: 1536)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !223, file: !224, line: 305, baseType: !272, size: 160, align: 8, offset: 1568)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 160, align: 8, elements: !273)
!273 = !{!274}
!274 = !DISubrange(count: 20)
!275 = distinct !DIGlobalVariable(name: "ndisc_buffer", scope: !0, file: !276, line: 45, type: !146, isLocal: true, isDefinition: true, variable: i8** @ndisc_buffer)
!276 = !DIFile(filename: "vrrp_ndisc.c", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!277 = distinct !DIGlobalVariable(name: "ndisc_fd", scope: !0, file: !276, line: 46, type: !181, isLocal: true, isDefinition: true, variable: i32* @ndisc_fd)
!278 = !{i32 2, !"Dwarf Version", i32 4}
!279 = !{i32 2, !"Debug Info Version", i32 3}
!280 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!281 = distinct !DISubprogram(name: "ndisc_send_unsolicited_na_immediate", scope: !276, file: !276, line: 137, type: !282, isLocal: false, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !404)
!282 = !DISubroutineType(types: !283)
!283 = !{null, !284, !348}
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64, align: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "interface_t", file: !197, line: 111, baseType: !286)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_interface", file: !197, line: 76, size: 1792, align: 64, elements: !287)
!287 = !{!288, !290, !292, !297, !298, !299, !301, !302, !303, !309, !310, !311, !312, !313, !314, !316, !317, !318, !319, !340, !341, !342, !343, !344, !345, !346, !347}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "ifname", scope: !286, file: !197, line: 77, baseType: !289, size: 128, align: 8)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 128, align: 8, elements: !132)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !286, file: !197, line: 78, baseType: !291, size: 32, align: 32, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "ifindex_t", file: !197, line: 62, baseType: !141)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !286, file: !197, line: 79, baseType: !293, size: 32, align: 32, offset: 160)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !4, line: 31, size: 32, align: 32, elements: !294)
!294 = !{!295}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !293, file: !4, line: 33, baseType: !296, size: 32, align: 32)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !4, line: 30, baseType: !141)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !286, file: !197, line: 80, baseType: !123, size: 128, align: 32, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "ifi_flags", scope: !286, file: !197, line: 81, baseType: !142, size: 32, align: 32, offset: 320)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "linkbeat_use_polling", scope: !286, file: !197, line: 82, baseType: !300, size: 8, align: 8, offset: 352)
!300 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !286, file: !197, line: 83, baseType: !141, size: 32, align: 32, offset: 384)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "hw_type", scope: !286, file: !197, line: 84, baseType: !103, size: 16, align: 16, offset: 416)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr", scope: !286, file: !197, line: 85, baseType: !304, size: 256, align: 8, offset: 432)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 256, align: 8, elements: !307)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !96, line: 33, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !251, line: 30, baseType: !97)
!307 = !{!308}
!308 = !DISubrange(count: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_bcast", scope: !286, file: !197, line: 86, baseType: !304, size: 256, align: 8, offset: 688)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_len", scope: !286, file: !197, line: 87, baseType: !268, size: 64, align: 64, offset: 960)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "lb_type", scope: !286, file: !197, line: 88, baseType: !181, size: 32, align: 32, offset: 1024)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "vmac", scope: !286, file: !197, line: 90, baseType: !300, size: 8, align: 8, offset: 1056)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifindex", scope: !286, file: !197, line: 91, baseType: !291, size: 32, align: 32, offset: 1088)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifp", scope: !286, file: !197, line: 92, baseType: !315, size: 64, align: 64, offset: 1152)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifindex", scope: !286, file: !197, line: 94, baseType: !291, size: 32, align: 32, offset: 1216)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifp", scope: !286, file: !197, line: 96, baseType: !315, size: 64, align: 64, offset: 1280)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master", scope: !286, file: !197, line: 97, baseType: !300, size: 8, align: 8, offset: 1344)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "garp_delay", scope: !286, file: !197, line: 100, baseType: !320, size: 64, align: 64, offset: 1408)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64, align: 64)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "garp_delay_t", file: !197, line: 73, baseType: !322)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_garp_delay", file: !197, line: 65, size: 704, align: 64, elements: !323)
!323 = !{!324, !334, !335, !336, !337, !338, !339}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "garp_interval", scope: !322, file: !197, line: 66, baseType: !325, size: 128, align: 64)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "timeval_t", file: !326, line: 31, baseType: !327)
!326 = !DIFile(filename: "../../lib/timer.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !328, line: 30, size: 128, align: 64, elements: !329)
!328 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!329 = !{!330, !332}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !327, file: !328, line: 32, baseType: !331, size: 64, align: 64)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !251, line: 139, baseType: !252)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !327, file: !328, line: 33, baseType: !333, size: 64, align: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !251, line: 141, baseType: !252)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "have_garp_interval", scope: !322, file: !197, line: 67, baseType: !300, size: 8, align: 8, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "gna_interval", scope: !322, file: !197, line: 68, baseType: !325, size: 128, align: 64, offset: 192)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "have_gna_interval", scope: !322, file: !197, line: 69, baseType: !300, size: 8, align: 8, offset: 320)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "garp_next_time", scope: !322, file: !197, line: 70, baseType: !325, size: 128, align: 64, offset: 384)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "gna_next_time", scope: !322, file: !197, line: 71, baseType: !325, size: 128, align: 64, offset: 512)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "aggregation_group", scope: !322, file: !197, line: 72, baseType: !181, size: 32, align: 32, offset: 640)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "gna_router", scope: !286, file: !197, line: 101, baseType: !300, size: 8, align: 8, offset: 1472)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_config", scope: !286, file: !197, line: 102, baseType: !181, size: 32, align: 32, offset: 1504)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_ignore_value", scope: !286, file: !197, line: 103, baseType: !141, size: 32, align: 32, offset: 1536)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_filter_value", scope: !286, file: !197, line: 104, baseType: !141, size: 32, align: 32, offset: 1568)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "reset_promote_secondaries", scope: !286, file: !197, line: 105, baseType: !141, size: 32, align: 32, offset: 1600)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "rp_filter", scope: !286, file: !197, line: 107, baseType: !142, size: 32, align: 32, offset: 1632)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "promote_secondaries_already_set", scope: !286, file: !197, line: 109, baseType: !300, size: 8, align: 8, offset: 1664)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tracking_vrrp", scope: !286, file: !197, line: 110, baseType: !198, size: 64, align: 64, offset: 1728)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64, align: 64)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_address_t", file: !350, line: 73, baseType: !351)
!350 = !DIFile(filename: "./../include/vrrp_ipaddress.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ip_address", file: !350, line: 41, size: 704, align: 64, elements: !352)
!352 = !{!353, !363, !372, !373, !374, !375, !376, !377, !382, !383, !401, !402, !403}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "ifa", scope: !351, file: !350, line: 42, baseType: !354, size: 64, align: 32)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ifaddrmsg", file: !355, line: 7, size: 64, align: 32, elements: !356)
!355 = !DIFile(filename: "/usr/include/linux/if_addr.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!356 = !{!357, !358, !359, !360, !361}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_family", scope: !354, file: !355, line: 8, baseType: !109, size: 8, align: 8)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_prefixlen", scope: !354, file: !355, line: 9, baseType: !109, size: 8, align: 8, offset: 8)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_flags", scope: !354, file: !355, line: 10, baseType: !109, size: 8, align: 8, offset: 16)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_scope", scope: !354, file: !355, line: 11, baseType: !109, size: 8, align: 8, offset: 24)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_index", scope: !354, file: !355, line: 12, baseType: !362, size: 32, align: 32, offset: 32)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !110, line: 26, baseType: !142)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !351, file: !350, line: 50, baseType: !364, size: 128, align: 32, offset: 64)
!364 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !351, file: !350, line: 44, size: 128, align: 32, elements: !365)
!365 = !{!366, !371}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "sin", scope: !364, file: !350, line: 48, baseType: !367, size: 64, align: 32)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !364, file: !350, line: 45, size: 64, align: 32, elements: !368)
!368 = !{!369, !370}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !367, file: !350, line: 46, baseType: !293, size: 32, align: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "sin_brd", scope: !367, file: !350, line: 47, baseType: !293, size: 32, align: 32, offset: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !364, file: !350, line: 49, baseType: !123, size: 128, align: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "ifp", scope: !351, file: !350, line: 52, baseType: !284, size: 64, align: 64, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !351, file: !350, line: 53, baseType: !146, size: 64, align: 64, offset: 256)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !351, file: !350, line: 55, baseType: !141, size: 32, align: 32, offset: 320)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "flagmask", scope: !351, file: !350, line: 56, baseType: !141, size: 32, align: 32, offset: 352)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "have_peer", scope: !351, file: !350, line: 61, baseType: !300, size: 8, align: 8, offset: 384)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !351, file: !350, line: 65, baseType: !378, size: 128, align: 32, offset: 416)
!378 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !351, file: !350, line: 62, size: 128, align: 32, elements: !379)
!379 = !{!380, !381}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !378, file: !350, line: 63, baseType: !293, size: 32, align: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !378, file: !350, line: 64, baseType: !123, size: 128, align: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "dont_track", scope: !351, file: !350, line: 66, baseType: !300, size: 8, align: 8, offset: 544)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "track_group", scope: !351, file: !350, line: 67, baseType: !384, size: 64, align: 64, offset: 576)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64, align: 64)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "static_track_group_t", file: !386, line: 39, baseType: !387)
!386 = !DIFile(filename: "./../include/vrrp_static_track.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_static_track_group", file: !386, line: 35, size: 192, align: 64, elements: !388)
!388 = !{!389, !390, !400}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !387, file: !386, line: 36, baseType: !146, size: 64, align: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !387, file: !386, line: 37, baseType: !391, size: 64, align: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64, align: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "vector_t", file: !393, line: 34, baseType: !394)
!393 = !DIFile(filename: "../../lib/vector.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vector", file: !393, line: 30, size: 128, align: 64, elements: !395)
!395 = !{!396, !397, !398}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !394, file: !393, line: 31, baseType: !142, size: 32, align: 32)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !394, file: !393, line: 32, baseType: !142, size: 32, align: 32, offset: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !394, file: !393, line: 33, baseType: !399, size: 64, align: 64, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp_instances", scope: !387, file: !386, line: 38, baseType: !198, size: 64, align: 64, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !351, file: !350, line: 69, baseType: !300, size: 8, align: 8, offset: 640)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "iptable_rule_set", scope: !351, file: !350, line: 70, baseType: !300, size: 8, align: 8, offset: 648)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "garp_gna_pending", scope: !351, file: !350, line: 72, baseType: !300, size: 8, align: 8, offset: 656)
!404 = !{}
!405 = !DILocalVariable(name: "ifp", arg: 1, scope: !281, file: !276, line: 137, type: !284)
!406 = !DIExpression()
!407 = !DILocation(line: 137, column: 50, scope: !281)
!408 = !DILocalVariable(name: "ipaddress", arg: 2, scope: !281, file: !276, line: 137, type: !348)
!409 = !DILocation(line: 137, column: 69, scope: !281)
!410 = !DILocalVariable(name: "eth", scope: !281, file: !276, line: 139, type: !89)
!411 = !DILocation(line: 139, column: 23, scope: !281)
!412 = !DILocation(line: 139, column: 53, scope: !281)
!413 = !DILocation(line: 139, column: 29, scope: !281)
!414 = !DILocalVariable(name: "ip6h", scope: !281, file: !276, line: 140, type: !104)
!415 = !DILocation(line: 140, column: 17, scope: !281)
!416 = !DILocation(line: 140, column: 51, scope: !281)
!417 = !DILocation(line: 140, column: 43, scope: !281)
!418 = !DILocation(line: 140, column: 55, scope: !281)
!419 = !DILocation(line: 140, column: 24, scope: !281)
!420 = !DILocalVariable(name: "ndh", scope: !281, file: !276, line: 141, type: !148)
!421 = !DILocation(line: 141, column: 29, scope: !281)
!422 = !DILocation(line: 141, column: 73, scope: !281)
!423 = !DILocation(line: 141, column: 65, scope: !281)
!424 = !DILocation(line: 141, column: 78, scope: !281)
!425 = !DILocation(line: 141, column: 35, scope: !281)
!426 = !DILocalVariable(name: "icmp6h", scope: !281, file: !276, line: 142, type: !427)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!428 = !DILocation(line: 142, column: 20, scope: !281)
!429 = !DILocation(line: 142, column: 30, scope: !281)
!430 = !DILocation(line: 142, column: 35, scope: !281)
!431 = !DILocalVariable(name: "nd_opt_h", scope: !281, file: !276, line: 143, type: !172)
!432 = !DILocation(line: 143, column: 21, scope: !281)
!433 = !DILocation(line: 143, column: 63, scope: !281)
!434 = !DILocation(line: 143, column: 55, scope: !281)
!435 = !DILocation(line: 143, column: 67, scope: !281)
!436 = !DILocation(line: 143, column: 32, scope: !281)
!437 = !DILocalVariable(name: "nd_opt_lladdr", scope: !281, file: !276, line: 144, type: !146)
!438 = !DILocation(line: 144, column: 8, scope: !281)
!439 = !DILocation(line: 144, column: 42, scope: !281)
!440 = !DILocation(line: 144, column: 34, scope: !281)
!441 = !DILocation(line: 144, column: 51, scope: !281)
!442 = !DILocalVariable(name: "lladdr", scope: !281, file: !276, line: 145, type: !146)
!443 = !DILocation(line: 145, column: 8, scope: !281)
!444 = !DILocation(line: 145, column: 28, scope: !281)
!445 = !DILocation(line: 145, column: 39, scope: !281)
!446 = !DILocation(line: 145, column: 45, scope: !281)
!447 = !DILocation(line: 145, column: 26, scope: !281)
!448 = !DILocation(line: 151, column: 9, scope: !281)
!449 = !DILocation(line: 151, column: 14, scope: !281)
!450 = !DILocation(line: 151, column: 2, scope: !281)
!451 = !DILocation(line: 152, column: 24, scope: !281)
!452 = !DILocation(line: 152, column: 29, scope: !281)
!453 = !DILocation(line: 152, column: 44, scope: !281)
!454 = !DILocation(line: 152, column: 2, scope: !281)
!455 = !DILocation(line: 152, column: 7, scope: !281)
!456 = !DILocation(line: 152, column: 22, scope: !281)
!457 = !DILocation(line: 153, column: 2, scope: !281)
!458 = !DILocation(line: 153, column: 7, scope: !281)
!459 = !DILocation(line: 153, column: 22, scope: !281)
!460 = !DILocation(line: 154, column: 9, scope: !281)
!461 = !DILocation(line: 154, column: 14, scope: !281)
!462 = !DILocation(line: 154, column: 2, scope: !281)
!463 = !DILocation(line: 154, column: 27, scope: !281)
!464 = !DILocation(line: 155, column: 20, scope: !281)
!465 = !DILocation(line: 155, column: 2, scope: !281)
!466 = !DILocation(line: 155, column: 7, scope: !281)
!467 = !DILocation(line: 155, column: 18, scope: !281)
!468 = !DILocation(line: 158, column: 2, scope: !281)
!469 = !DILocation(line: 158, column: 8, scope: !281)
!470 = !DILocation(line: 158, column: 16, scope: !281)
!471 = !DILocation(line: 159, column: 22, scope: !281)
!472 = !DILocation(line: 159, column: 2, scope: !281)
!473 = !DILocation(line: 159, column: 8, scope: !281)
!474 = !DILocation(line: 159, column: 20, scope: !281)
!475 = !DILocation(line: 160, column: 2, scope: !281)
!476 = !DILocation(line: 160, column: 8, scope: !281)
!477 = !DILocation(line: 160, column: 16, scope: !281)
!478 = !DILocation(line: 161, column: 2, scope: !281)
!479 = !DILocation(line: 161, column: 8, scope: !281)
!480 = !DILocation(line: 161, column: 18, scope: !281)
!481 = !DILocation(line: 162, column: 10, scope: !281)
!482 = !DILocation(line: 162, column: 16, scope: !281)
!483 = !DILocation(line: 162, column: 2, scope: !281)
!484 = !DILocation(line: 162, column: 24, scope: !281)
!485 = !DILocation(line: 162, column: 35, scope: !281)
!486 = !DILocation(line: 162, column: 37, scope: !281)
!487 = !DILocation(line: 163, column: 28, scope: !281)
!488 = !DILocation(line: 163, column: 2, scope: !281)
!489 = !DILocation(line: 163, column: 8, scope: !281)
!490 = !DILocation(line: 163, column: 13, scope: !281)
!491 = !DILocation(line: 163, column: 21, scope: !281)
!492 = !DILocation(line: 163, column: 26, scope: !281)
!493 = !DILocation(line: 164, column: 28, scope: !281)
!494 = !DILocation(line: 164, column: 2, scope: !281)
!495 = !DILocation(line: 164, column: 8, scope: !281)
!496 = !DILocation(line: 164, column: 13, scope: !281)
!497 = !DILocation(line: 164, column: 21, scope: !281)
!498 = !DILocation(line: 164, column: 26, scope: !281)
!499 = !DILocation(line: 169, column: 2, scope: !281)
!500 = !DILocation(line: 169, column: 6, scope: !281)
!501 = !DILocation(line: 169, column: 16, scope: !281)
!502 = !DILocation(line: 169, column: 17, scope: !281)
!503 = !DILocation(line: 170, column: 6, scope: !504)
!504 = distinct !DILexicalBlock(scope: !281, file: !276, line: 170, column: 6)
!505 = !DILocation(line: 170, column: 11, scope: !504)
!506 = !DILocation(line: 170, column: 6, scope: !281)
!507 = !DILocation(line: 171, column: 3, scope: !504)
!508 = !DILocation(line: 171, column: 7, scope: !504)
!509 = !DILocation(line: 171, column: 17, scope: !504)
!510 = !DILocation(line: 171, column: 30, scope: !504)
!511 = !DILocation(line: 171, column: 28, scope: !504)
!512 = !DILocation(line: 178, column: 2, scope: !281)
!513 = !DILocation(line: 178, column: 6, scope: !281)
!514 = !DILocation(line: 178, column: 16, scope: !281)
!515 = !DILocation(line: 178, column: 29, scope: !281)
!516 = !DILocation(line: 178, column: 27, scope: !281)
!517 = !DILocation(line: 179, column: 2, scope: !281)
!518 = !DILocation(line: 179, column: 7, scope: !281)
!519 = !DILocation(line: 179, column: 22, scope: !281)
!520 = !DILocation(line: 179, column: 33, scope: !281)
!521 = !DILocation(line: 179, column: 35, scope: !281)
!522 = !DILocation(line: 182, column: 2, scope: !281)
!523 = !DILocation(line: 182, column: 12, scope: !281)
!524 = !DILocation(line: 182, column: 24, scope: !281)
!525 = !DILocation(line: 183, column: 2, scope: !281)
!526 = !DILocation(line: 183, column: 12, scope: !281)
!527 = !DILocation(line: 183, column: 23, scope: !281)
!528 = !DILocation(line: 184, column: 9, scope: !281)
!529 = !DILocation(line: 184, column: 24, scope: !281)
!530 = !DILocation(line: 184, column: 2, scope: !281)
!531 = !DILocation(line: 187, column: 42, scope: !281)
!532 = !DILocation(line: 187, column: 48, scope: !281)
!533 = !DILocation(line: 187, column: 24, scope: !281)
!534 = !DILocation(line: 187, column: 2, scope: !281)
!535 = !DILocation(line: 187, column: 10, scope: !281)
!536 = !DILocation(line: 187, column: 22, scope: !281)
!537 = !DILocation(line: 191, column: 16, scope: !281)
!538 = !DILocation(line: 191, column: 2, scope: !281)
!539 = !DILocation(line: 194, column: 9, scope: !281)
!540 = !DILocation(line: 194, column: 2, scope: !281)
!541 = !DILocation(line: 198, column: 6, scope: !542)
!542 = distinct !DILexicalBlock(scope: !281, file: !276, line: 198, column: 6)
!543 = !DILocation(line: 198, column: 11, scope: !542)
!544 = !DILocation(line: 198, column: 22, scope: !542)
!545 = !DILocation(line: 198, column: 25, scope: !546)
!546 = !DILexicalBlockFile(scope: !542, file: !276, discriminator: 1)
!547 = !DILocation(line: 198, column: 30, scope: !546)
!548 = !DILocation(line: 198, column: 42, scope: !546)
!549 = !DILocation(line: 198, column: 6, scope: !546)
!550 = !DILocation(line: 199, column: 3, scope: !542)
!551 = !DILocation(line: 199, column: 8, scope: !542)
!552 = !DILocation(line: 199, column: 20, scope: !542)
!553 = !DILocation(line: 199, column: 50, scope: !542)
!554 = !DILocation(line: 199, column: 55, scope: !542)
!555 = !DILocation(line: 199, column: 67, scope: !542)
!556 = !DILocation(line: 199, column: 36, scope: !542)
!557 = !DILocation(line: 199, column: 36, scope: !546)
!558 = !DILocation(line: 200, column: 1, scope: !281)
!559 = distinct !DISubprogram(name: "ndisc_icmp6_cksum", scope: !276, file: !276, line: 89, type: !560, isLocal: true, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !404)
!560 = !DISubroutineType(types: !561)
!561 = !{!562, !563, !565, !141}
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sum16", file: !118, line: 34, baseType: !119)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64, align: 64)
!564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64, align: 64)
!566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!567 = !DILocalVariable(name: "ip6", arg: 1, scope: !559, file: !276, line: 89, type: !563)
!568 = !DILocation(line: 89, column: 40, scope: !559)
!569 = !DILocalVariable(name: "icp", arg: 2, scope: !559, file: !276, line: 89, type: !565)
!570 = !DILocation(line: 89, column: 69, scope: !559)
!571 = !DILocalVariable(name: "len", arg: 3, scope: !559, file: !276, line: 89, type: !141)
!572 = !DILocation(line: 89, column: 83, scope: !559)
!573 = !DILocalVariable(name: "i", scope: !559, file: !276, line: 91, type: !268)
!574 = !DILocation(line: 91, column: 9, scope: !559)
!575 = !DILocalVariable(name: "sp", scope: !559, file: !276, line: 92, type: !177)
!576 = !DILocation(line: 92, column: 27, scope: !559)
!577 = !DILocalVariable(name: "sum", scope: !559, file: !276, line: 93, type: !141)
!578 = !DILocation(line: 93, column: 11, scope: !559)
!579 = !DILocalVariable(name: "phu", scope: !559, file: !276, line: 103, type: !580)
!580 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !559, file: !276, line: 94, size: 320, align: 32, elements: !581)
!581 = !{!582, !591}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "ph", scope: !580, file: !276, line: 101, baseType: !583, size: 320, align: 32)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !580, file: !276, line: 95, size: 320, align: 32, elements: !584)
!584 = !{!585, !586, !587, !588, !590}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "ph_src", scope: !583, file: !276, line: 96, baseType: !123, size: 128, align: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "ph_dst", scope: !583, file: !276, line: 97, baseType: !123, size: 128, align: 32, offset: 128)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "ph_len", scope: !583, file: !276, line: 98, baseType: !141, size: 32, align: 32, offset: 256)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "ph_zero", scope: !583, file: !276, line: 99, baseType: !589, size: 24, align: 8, offset: 288)
!589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 24, align: 8, elements: !114)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "ph_nxt", scope: !583, file: !276, line: 100, baseType: !130, size: 8, align: 8, offset: 312)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "pa", scope: !580, file: !276, line: 102, baseType: !592, size: 320, align: 16)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 320, align: 16, elements: !273)
!593 = !DILocation(line: 103, column: 4, scope: !559)
!594 = !DILocation(line: 106, column: 2, scope: !559)
!595 = !DILocation(line: 107, column: 14, scope: !559)
!596 = !DILocation(line: 107, column: 17, scope: !559)
!597 = !DILocation(line: 107, column: 2, scope: !559)
!598 = !DILocation(line: 107, column: 26, scope: !559)
!599 = !DILocation(line: 107, column: 31, scope: !559)
!600 = !DILocation(line: 108, column: 14, scope: !559)
!601 = !DILocation(line: 108, column: 17, scope: !559)
!602 = !DILocation(line: 108, column: 2, scope: !559)
!603 = !DILocation(line: 108, column: 26, scope: !559)
!604 = !DILocation(line: 108, column: 31, scope: !559)
!605 = !DILocation(line: 109, column: 24, scope: !559)
!606 = !DILocation(line: 109, column: 18, scope: !559)
!607 = !DILocation(line: 109, column: 6, scope: !559)
!608 = !DILocation(line: 109, column: 9, scope: !559)
!609 = !DILocation(line: 109, column: 16, scope: !559)
!610 = !DILocation(line: 110, column: 6, scope: !559)
!611 = !DILocation(line: 110, column: 9, scope: !559)
!612 = !DILocation(line: 110, column: 16, scope: !559)
!613 = !DILocation(line: 112, column: 6, scope: !559)
!614 = !DILocation(line: 113, column: 9, scope: !615)
!615 = distinct !DILexicalBlock(scope: !559, file: !276, line: 113, column: 2)
!616 = !DILocation(line: 113, column: 7, scope: !615)
!617 = !DILocation(line: 113, column: 14, scope: !618)
!618 = !DILexicalBlockFile(scope: !619, file: !276, discriminator: 1)
!619 = distinct !DILexicalBlock(scope: !615, file: !276, line: 113, column: 2)
!620 = !DILocation(line: 113, column: 16, scope: !618)
!621 = !DILocation(line: 113, column: 2, scope: !618)
!622 = !DILocation(line: 114, column: 17, scope: !619)
!623 = !DILocation(line: 114, column: 14, scope: !619)
!624 = !DILocation(line: 114, column: 10, scope: !619)
!625 = !DILocation(line: 114, column: 7, scope: !619)
!626 = !DILocation(line: 114, column: 3, scope: !619)
!627 = !DILocation(line: 113, column: 55, scope: !628)
!628 = !DILexicalBlockFile(scope: !619, file: !276, discriminator: 2)
!629 = !DILocation(line: 113, column: 2, scope: !628)
!630 = distinct !{!630, !631}
!631 = !DILocation(line: 113, column: 2, scope: !559)
!632 = !DILocation(line: 116, column: 25, scope: !559)
!633 = !DILocation(line: 116, column: 7, scope: !559)
!634 = !DILocation(line: 116, column: 5, scope: !559)
!635 = !DILocation(line: 118, column: 9, scope: !636)
!636 = distinct !DILexicalBlock(scope: !559, file: !276, line: 118, column: 2)
!637 = !DILocation(line: 118, column: 7, scope: !636)
!638 = !DILocation(line: 118, column: 14, scope: !639)
!639 = !DILexicalBlockFile(scope: !640, file: !276, discriminator: 1)
!640 = distinct !DILexicalBlock(scope: !636, file: !276, line: 118, column: 2)
!641 = !DILocation(line: 118, column: 18, scope: !639)
!642 = !DILocation(line: 118, column: 16, scope: !639)
!643 = !DILocation(line: 118, column: 2, scope: !639)
!644 = !DILocation(line: 119, column: 13, scope: !640)
!645 = !DILocation(line: 119, column: 10, scope: !640)
!646 = !DILocation(line: 119, column: 7, scope: !640)
!647 = !DILocation(line: 119, column: 3, scope: !640)
!648 = !DILocation(line: 118, column: 25, scope: !649)
!649 = !DILexicalBlockFile(scope: !640, file: !276, discriminator: 2)
!650 = !DILocation(line: 118, column: 2, scope: !649)
!651 = distinct !{!651, !652}
!652 = !DILocation(line: 118, column: 2, scope: !559)
!653 = !DILocation(line: 121, column: 6, scope: !654)
!654 = distinct !DILexicalBlock(scope: !559, file: !276, line: 121, column: 6)
!655 = !DILocation(line: 121, column: 10, scope: !654)
!656 = !DILocation(line: 121, column: 6, scope: !559)
!657 = !DILocation(line: 122, column: 35, scope: !654)
!658 = !DILocation(line: 122, column: 17, scope: !654)
!659 = !DILocation(line: 122, column: 16, scope: !654)
!660 = !DILocation(line: 122, column: 39, scope: !654)
!661 = !DILocation(line: 122, column: 10, scope: !654)
!662 = !DILocation(line: 122, column: 7, scope: !654)
!663 = !DILocation(line: 122, column: 3, scope: !654)
!664 = !DILocation(line: 124, column: 2, scope: !559)
!665 = !DILocation(line: 124, column: 9, scope: !666)
!666 = !DILexicalBlockFile(scope: !559, file: !276, discriminator: 1)
!667 = !DILocation(line: 124, column: 13, scope: !666)
!668 = !DILocation(line: 124, column: 2, scope: !666)
!669 = !DILocation(line: 125, column: 10, scope: !559)
!670 = !DILocation(line: 125, column: 14, scope: !559)
!671 = !DILocation(line: 125, column: 27, scope: !559)
!672 = !DILocation(line: 125, column: 31, scope: !559)
!673 = !DILocation(line: 125, column: 24, scope: !559)
!674 = !DILocation(line: 125, column: 7, scope: !559)
!675 = !DILocation(line: 124, column: 2, scope: !676)
!676 = !DILexicalBlockFile(scope: !559, file: !276, discriminator: 2)
!677 = distinct !{!677, !664}
!678 = !DILocation(line: 127, column: 10, scope: !559)
!679 = !DILocation(line: 127, column: 9, scope: !559)
!680 = !DILocation(line: 127, column: 14, scope: !559)
!681 = !DILocation(line: 127, column: 2, scope: !559)
!682 = distinct !DISubprogram(name: "ndisc_send_na", scope: !276, file: !276, line: 52, type: !683, isLocal: true, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !404)
!683 = !DISubroutineType(types: !684)
!684 = !{null, !348}
!685 = !DILocalVariable(name: "ipaddress", arg: 1, scope: !682, file: !276, line: 52, type: !348)
!686 = !DILocation(line: 52, column: 29, scope: !682)
!687 = !DILocalVariable(name: "sll", scope: !682, file: !276, line: 54, type: !688)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_ll", file: !689, line: 12, size: 160, align: 32, elements: !690)
!689 = !DIFile(filename: "/usr/include/linux/if_packet.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!690 = !{!691, !692, !693, !694, !695, !696, !697}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "sll_family", scope: !688, file: !689, line: 13, baseType: !103, size: 16, align: 16)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "sll_protocol", scope: !688, file: !689, line: 14, baseType: !117, size: 16, align: 16, offset: 16)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "sll_ifindex", scope: !688, file: !689, line: 15, baseType: !181, size: 32, align: 32, offset: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "sll_hatype", scope: !688, file: !689, line: 16, baseType: !103, size: 16, align: 16, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "sll_pkttype", scope: !688, file: !689, line: 17, baseType: !97, size: 8, align: 8, offset: 80)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "sll_halen", scope: !688, file: !689, line: 18, baseType: !97, size: 8, align: 8, offset: 88)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "sll_addr", scope: !688, file: !689, line: 19, baseType: !698, size: 64, align: 8, offset: 96)
!698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 64, align: 8, elements: !137)
!699 = !DILocation(line: 54, column: 21, scope: !682)
!700 = !DILocalVariable(name: "len", scope: !682, file: !276, line: 55, type: !701)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !702, line: 223, baseType: !703)
!702 = !DIFile(filename: "/usr/include/unistd.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !251, line: 172, baseType: !252)
!704 = !DILocation(line: 55, column: 10, scope: !682)
!705 = !DILocalVariable(name: "addr_str", scope: !682, file: !276, line: 56, type: !706)
!706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 368, align: 8, elements: !707)
!707 = !{!708}
!708 = !DISubrange(count: 46)
!709 = !DILocation(line: 56, column: 7, scope: !682)
!710 = !DILocation(line: 59, column: 2, scope: !682)
!711 = !DILocation(line: 60, column: 6, scope: !682)
!712 = !DILocation(line: 60, column: 17, scope: !682)
!713 = !DILocation(line: 61, column: 13, scope: !682)
!714 = !DILocation(line: 61, column: 2, scope: !682)
!715 = !DILocation(line: 61, column: 25, scope: !682)
!716 = !DILocation(line: 61, column: 36, scope: !682)
!717 = !DILocation(line: 61, column: 42, scope: !682)
!718 = !DILocation(line: 62, column: 6, scope: !682)
!719 = !DILocation(line: 62, column: 16, scope: !682)
!720 = !DILocation(line: 63, column: 27, scope: !682)
!721 = !DILocation(line: 63, column: 38, scope: !682)
!722 = !DILocation(line: 63, column: 44, scope: !682)
!723 = !DILocation(line: 63, column: 6, scope: !682)
!724 = !DILocation(line: 63, column: 18, scope: !682)
!725 = !DILocation(line: 65, column: 6, scope: !726)
!726 = distinct !DILexicalBlock(scope: !682, file: !276, line: 65, column: 6)
!727 = !DILocation(line: 65, column: 6, scope: !682)
!728 = !DILocation(line: 66, column: 23, scope: !729)
!729 = distinct !DILexicalBlock(scope: !726, file: !276, line: 65, column: 42)
!730 = !DILocation(line: 66, column: 34, scope: !729)
!731 = !DILocation(line: 66, column: 36, scope: !729)
!732 = !DILocation(line: 66, column: 22, scope: !729)
!733 = !DILocation(line: 66, column: 47, scope: !729)
!734 = !DILocation(line: 66, column: 3, scope: !729)
!735 = !DILocation(line: 68, column: 10, scope: !729)
!736 = !DILocation(line: 68, column: 21, scope: !729)
!737 = !DILocation(line: 68, column: 27, scope: !729)
!738 = !DILocation(line: 68, column: 8, scope: !729)
!739 = !DILocation(line: 68, column: 36, scope: !729)
!740 = !DILocation(line: 67, column: 3, scope: !729)
!741 = !DILocation(line: 70, column: 2, scope: !729)
!742 = !DILocation(line: 73, column: 15, scope: !682)
!743 = !DILocation(line: 73, column: 25, scope: !682)
!744 = !DILocation(line: 76, column: 8, scope: !682)
!745 = !DILocation(line: 73, column: 8, scope: !682)
!746 = !DILocation(line: 73, column: 6, scope: !682)
!747 = !DILocation(line: 77, column: 6, scope: !748)
!748 = distinct !DILexicalBlock(scope: !682, file: !276, line: 77, column: 6)
!749 = !DILocation(line: 77, column: 10, scope: !748)
!750 = !DILocation(line: 77, column: 6, scope: !682)
!751 = !DILocation(line: 78, column: 8, scope: !752)
!752 = distinct !DILexicalBlock(scope: !753, file: !276, line: 78, column: 7)
!753 = distinct !DILexicalBlock(scope: !748, file: !276, line: 77, column: 15)
!754 = !DILocation(line: 78, column: 7, scope: !753)
!755 = !DILocation(line: 79, column: 24, scope: !752)
!756 = !DILocation(line: 79, column: 35, scope: !752)
!757 = !DILocation(line: 79, column: 37, scope: !752)
!758 = !DILocation(line: 79, column: 23, scope: !752)
!759 = !DILocation(line: 79, column: 48, scope: !752)
!760 = !DILocation(line: 79, column: 4, scope: !752)
!761 = !DILocation(line: 81, column: 10, scope: !753)
!762 = !DILocation(line: 81, column: 21, scope: !753)
!763 = !DILocation(line: 81, column: 27, scope: !753)
!764 = !DILocation(line: 81, column: 8, scope: !753)
!765 = !DILocation(line: 81, column: 36, scope: !753)
!766 = !DILocation(line: 80, column: 3, scope: !753)
!767 = !DILocation(line: 82, column: 2, scope: !753)
!768 = !DILocation(line: 83, column: 1, scope: !682)
!769 = distinct !DISubprogram(name: "timer_add_now", scope: !326, file: !326, line: 66, type: !770, isLocal: true, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !404)
!770 = !DISubroutineType(types: !771)
!771 = !{!325, !325}
!772 = !DILocalVariable(name: "a", arg: 1, scope: !769, file: !326, line: 66, type: !325)
!773 = !DILocation(line: 66, column: 25, scope: !769)
!774 = !DILocation(line: 68, column: 1, scope: !769)
!775 = distinct !{!775, !774}
!776 = !DILocation(line: 68, column: 4, scope: !777)
!777 = !DILexicalBlockFile(scope: !778, file: !326, discriminator: 1)
!778 = distinct !DILexicalBlock(scope: !769, file: !326, line: 68, column: 4)
!779 = !DILocation(line: 68, column: 11, scope: !777)
!780 = !DILocation(line: 68, column: 12, scope: !777)
!781 = !DILocation(line: 68, column: 17, scope: !777)
!782 = !DILocation(line: 68, column: 4, scope: !783)
!783 = !DILexicalBlockFile(scope: !784, file: !326, discriminator: 2)
!784 = distinct !DILexicalBlock(scope: !785, file: !326, line: 68, column: 24)
!785 = distinct !DILexicalBlock(scope: !778, file: !326, line: 68, column: 17)
!786 = !DILocation(line: 68, column: 26, scope: !783)
!787 = !DILocation(line: 68, column: 12, scope: !783)
!788 = !DILocation(line: 68, column: 24, scope: !783)
!789 = !DILocation(line: 68, column: 26, scope: !790)
!790 = !DILexicalBlockFile(scope: !778, file: !326, discriminator: 3)
!791 = !DILocation(line: 70, column: 9, scope: !769)
!792 = !DILocation(line: 70, column: 2, scope: !769)
!793 = distinct !DISubprogram(name: "ndisc_send_unsolicited_na", scope: !276, file: !276, line: 222, type: !794, isLocal: false, isDefinition: true, scopeLine: 223, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !404)
!794 = !DISubroutineType(types: !795)
!795 = !{null, !796, !348}
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64, align: 64)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_t", file: !14, line: 310, baseType: !798)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_t", file: !14, line: 183, size: 7040, align: 64, elements: !799)
!799 = !{!800, !801, !802, !841, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !882, !883, !884, !885, !886, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1044, !1051}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !798, file: !14, line: 184, baseType: !187, size: 16, align: 16)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !798, file: !14, line: 185, baseType: !146, size: 64, align: 64, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !798, file: !14, line: 186, baseType: !803, size: 64, align: 64, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64, align: 64)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_sgroup_t", file: !14, line: 133, baseType: !805)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_sgroup", file: !14, line: 109, size: 1024, align: 64, elements: !806)
!806 = !{!807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !835, !836, !837, !838, !839, !840}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !805, file: !14, line: 110, baseType: !146, size: 64, align: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !805, file: !14, line: 111, baseType: !391, size: 64, align: 64, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp_instances", scope: !805, file: !14, line: 112, baseType: !198, size: 64, align: 64, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "num_member_fault", scope: !805, file: !14, line: 113, baseType: !142, size: 32, align: 32, offset: 192)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "num_member_init", scope: !805, file: !14, line: 114, baseType: !142, size: 32, align: 32, offset: 224)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !805, file: !14, line: 115, baseType: !181, size: 32, align: 32, offset: 256)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "sgroup_tracking_weight", scope: !805, file: !14, line: 116, baseType: !300, size: 8, align: 8, offset: 288)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "track_ifp", scope: !805, file: !14, line: 119, baseType: !198, size: 64, align: 64, offset: 320)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "track_script", scope: !805, file: !14, line: 120, baseType: !198, size: 64, align: 64, offset: 384)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "track_file", scope: !805, file: !14, line: 121, baseType: !198, size: 64, align: 64, offset: 448)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "track_bfd", scope: !805, file: !14, line: 122, baseType: !198, size: 64, align: 64, offset: 512)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "notify_exec", scope: !805, file: !14, line: 125, baseType: !300, size: 8, align: 8, offset: 576)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "script_backup", scope: !805, file: !14, line: 126, baseType: !820, size: 64, align: 64, offset: 640)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64, align: 64)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "notify_script_t", file: !822, line: 65, baseType: !823)
!822 = !DIFile(filename: "../../lib/notify.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_notify_script", file: !822, line: 59, size: 192, align: 64, elements: !824)
!824 = !{!825, !827, !828, !829, !832}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !823, file: !822, line: 60, baseType: !826, size: 64, align: 64)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !823, file: !822, line: 61, baseType: !181, size: 32, align: 32, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !823, file: !822, line: 62, baseType: !181, size: 32, align: 32, offset: 96)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !823, file: !822, line: 63, baseType: !830, size: 32, align: 32, offset: 128)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !702, line: 240, baseType: !831)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !251, line: 125, baseType: !142)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !823, file: !822, line: 64, baseType: !833, size: 32, align: 32, offset: 160)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !702, line: 235, baseType: !834)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !251, line: 126, baseType: !142)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "script_master", scope: !805, file: !14, line: 127, baseType: !820, size: 64, align: 64, offset: 704)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "script_fault", scope: !805, file: !14, line: 128, baseType: !820, size: 64, align: 64, offset: 768)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "script_stop", scope: !805, file: !14, line: 129, baseType: !820, size: 64, align: 64, offset: 832)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "script", scope: !805, file: !14, line: 130, baseType: !820, size: 64, align: 64, offset: 896)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !805, file: !14, line: 131, baseType: !181, size: 32, align: 32, offset: 960)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "last_email_state", scope: !805, file: !14, line: 132, baseType: !181, size: 32, align: 32, offset: 992)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !798, file: !14, line: 187, baseType: !842, size: 64, align: 64, offset: 192)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64, align: 64)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_stats", file: !14, line: 169, baseType: !844)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_stats", file: !14, line: 136, size: 768, align: 64, elements: !845)
!845 = !{!846, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "advert_rcvd", scope: !844, file: !14, line: 137, baseType: !847, size: 64, align: 64)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !131, line: 55, baseType: !194)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "advert_sent", scope: !844, file: !14, line: 138, baseType: !141, size: 32, align: 32, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "become_master", scope: !844, file: !14, line: 140, baseType: !141, size: 32, align: 32, offset: 96)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "release_master", scope: !844, file: !14, line: 141, baseType: !141, size: 32, align: 32, offset: 128)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "packet_len_err", scope: !844, file: !14, line: 143, baseType: !847, size: 64, align: 64, offset: 192)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "advert_interval_err", scope: !844, file: !14, line: 144, baseType: !847, size: 64, align: 64, offset: 256)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "ip_ttl_err", scope: !844, file: !14, line: 145, baseType: !847, size: 64, align: 64, offset: 320)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_type_rcvd", scope: !844, file: !14, line: 146, baseType: !847, size: 64, align: 64, offset: 384)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "addr_list_err", scope: !844, file: !14, line: 147, baseType: !847, size: 64, align: 64, offset: 448)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_authtype", scope: !844, file: !14, line: 149, baseType: !141, size: 32, align: 32, offset: 512)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "authtype_mismatch", scope: !844, file: !14, line: 151, baseType: !141, size: 32, align: 32, offset: 544)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "auth_failure", scope: !844, file: !14, line: 152, baseType: !141, size: 32, align: 32, offset: 576)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "pri_zero_rcvd", scope: !844, file: !14, line: 155, baseType: !847, size: 64, align: 64, offset: 640)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "pri_zero_sent", scope: !844, file: !14, line: 156, baseType: !847, size: 64, align: 64, offset: 704)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "ifp", scope: !798, file: !14, line: 188, baseType: !284, size: 64, align: 64, offset: 256)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "dont_track_primary", scope: !798, file: !14, line: 189, baseType: !300, size: 8, align: 8, offset: 320)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "linkbeat_use_polling", scope: !798, file: !14, line: 190, baseType: !300, size: 8, align: 8, offset: 328)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "skip_check_adv_addr", scope: !798, file: !14, line: 191, baseType: !300, size: 8, align: 8, offset: 336)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "strict_mode", scope: !798, file: !14, line: 193, baseType: !142, size: 32, align: 32, offset: 352)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "vmac_flags", scope: !798, file: !14, line: 195, baseType: !194, size: 64, align: 64, offset: 384)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "vmac_ifname", scope: !798, file: !14, line: 196, baseType: !289, size: 128, align: 8, offset: 448)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "track_ifp", scope: !798, file: !14, line: 198, baseType: !198, size: 64, align: 64, offset: 576)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "track_script", scope: !798, file: !14, line: 199, baseType: !198, size: 64, align: 64, offset: 640)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "track_file", scope: !798, file: !14, line: 200, baseType: !198, size: 64, align: 64, offset: 704)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "num_script_if_fault", scope: !798, file: !14, line: 204, baseType: !142, size: 32, align: 32, offset: 768)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "num_script_init", scope: !798, file: !14, line: 205, baseType: !142, size: 32, align: 32, offset: 800)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !798, file: !14, line: 206, baseType: !874, size: 1024, align: 64, offset: 832)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !184, line: 166, size: 1024, align: 64, elements: !875)
!875 = !{!876, !877, !881}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !874, file: !184, line: 168, baseType: !187, size: 16, align: 16)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !874, file: !184, line: 169, baseType: !878, size: 944, align: 8, offset: 16)
!878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 944, align: 8, elements: !879)
!879 = !{!880}
!880 = !DISubrange(count: 118)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !874, file: !184, line: 170, baseType: !194, size: 64, align: 64, offset: 960)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "saddr_from_config", scope: !798, file: !14, line: 207, baseType: !300, size: 8, align: 8, offset: 1856)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "track_saddr", scope: !798, file: !14, line: 208, baseType: !300, size: 8, align: 8, offset: 1864)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_saddr", scope: !798, file: !14, line: 209, baseType: !874, size: 1024, align: 64, offset: 1920)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "unicast_peer", scope: !798, file: !14, line: 210, baseType: !198, size: 64, align: 64, offset: 2944)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "unicast_chksum_compat", scope: !798, file: !14, line: 212, baseType: !887, size: 32, align: 32, offset: 3008)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "chksum_compatibility_t", file: !14, line: 179, baseType: !13)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "master_saddr", scope: !798, file: !14, line: 214, baseType: !874, size: 1024, align: 64, offset: 3072)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "master_priority", scope: !798, file: !14, line: 215, baseType: !130, size: 8, align: 8, offset: 4096)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "last_transition", scope: !798, file: !14, line: 216, baseType: !325, size: 128, align: 64, offset: 4160)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "garp_delay", scope: !798, file: !14, line: 217, baseType: !142, size: 32, align: 32, offset: 4288)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh", scope: !798, file: !14, line: 218, baseType: !325, size: 128, align: 64, offset: 4352)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh_timer", scope: !798, file: !14, line: 219, baseType: !325, size: 128, align: 64, offset: 4480)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "garp_rep", scope: !798, file: !14, line: 220, baseType: !142, size: 32, align: 32, offset: 4608)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh_rep", scope: !798, file: !14, line: 221, baseType: !142, size: 32, align: 32, offset: 4640)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "garp_lower_prio_delay", scope: !798, file: !14, line: 222, baseType: !142, size: 32, align: 32, offset: 4672)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "garp_pending", scope: !798, file: !14, line: 223, baseType: !300, size: 8, align: 8, offset: 4704)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "gna_pending", scope: !798, file: !14, line: 224, baseType: !300, size: 8, align: 8, offset: 4712)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "garp_lower_prio_rep", scope: !798, file: !14, line: 225, baseType: !142, size: 32, align: 32, offset: 4736)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "lower_prio_no_advert", scope: !798, file: !14, line: 226, baseType: !142, size: 32, align: 32, offset: 4768)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "higher_prio_send_advert", scope: !798, file: !14, line: 227, baseType: !142, size: 32, align: 32, offset: 4800)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "vrid", scope: !798, file: !14, line: 228, baseType: !130, size: 8, align: 8, offset: 4832)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "base_priority", scope: !798, file: !14, line: 229, baseType: !130, size: 8, align: 8, offset: 4840)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "effective_priority", scope: !798, file: !14, line: 230, baseType: !130, size: 8, align: 8, offset: 4848)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "total_priority", scope: !798, file: !14, line: 231, baseType: !181, size: 32, align: 32, offset: 4864)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "vipset", scope: !798, file: !14, line: 233, baseType: !300, size: 8, align: 8, offset: 4896)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "vip", scope: !798, file: !14, line: 234, baseType: !198, size: 64, align: 64, offset: 4928)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "evip", scope: !798, file: !14, line: 235, baseType: !198, size: 64, align: 64, offset: 4992)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "promote_secondaries", scope: !798, file: !14, line: 239, baseType: !300, size: 8, align: 8, offset: 5056)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "evip_add_ipv6", scope: !798, file: !14, line: 240, baseType: !300, size: 8, align: 8, offset: 5064)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "vroutes", scope: !798, file: !14, line: 241, baseType: !198, size: 64, align: 64, offset: 5120)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "vrules", scope: !798, file: !14, line: 242, baseType: !198, size: 64, align: 64, offset: 5184)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "adver_int", scope: !798, file: !14, line: 243, baseType: !142, size: 32, align: 32, offset: 5248)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "master_adver_int", scope: !798, file: !14, line: 244, baseType: !142, size: 32, align: 32, offset: 5280)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !798, file: !14, line: 249, baseType: !142, size: 32, align: 32, offset: 5312)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_rx_buf_size", scope: !798, file: !14, line: 252, baseType: !268, size: 64, align: 64, offset: 5376)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "iptable_rules_set", scope: !798, file: !14, line: 254, baseType: !300, size: 8, align: 8, offset: 5440)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "nopreempt", scope: !798, file: !14, line: 255, baseType: !300, size: 8, align: 8, offset: 5448)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_delay", scope: !798, file: !14, line: 256, baseType: !194, size: 64, align: 64, offset: 5504)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_time", scope: !798, file: !14, line: 260, baseType: !325, size: 128, align: 64, offset: 5568)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !798, file: !14, line: 261, baseType: !181, size: 32, align: 32, offset: 5696)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "wantstate", scope: !798, file: !14, line: 265, baseType: !181, size: 32, align: 32, offset: 5728)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "reload_master", scope: !798, file: !14, line: 266, baseType: !300, size: 8, align: 8, offset: 5760)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "sockets", scope: !798, file: !14, line: 267, baseType: !925, size: 64, align: 64, offset: 5824)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64, align: 64)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "sock_t", file: !927, line: 50, baseType: !928)
!927 = !DIFile(filename: "./../include/vrrp_sock.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sock", file: !927, line: 40, size: 1344, align: 64, elements: !929)
!929 = !{!930, !931, !932, !933, !934, !935, !936, !937, !938}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !928, file: !927, line: 41, baseType: !187, size: 16, align: 16)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !928, file: !927, line: 42, baseType: !874, size: 1024, align: 64, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !928, file: !927, line: 43, baseType: !181, size: 32, align: 32, offset: 1088)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !928, file: !927, line: 44, baseType: !291, size: 32, align: 32, offset: 1120)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "unicast", scope: !928, file: !927, line: 45, baseType: !300, size: 8, align: 8, offset: 1152)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "fd_in", scope: !928, file: !927, line: 46, baseType: !181, size: 32, align: 32, offset: 1184)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "fd_out", scope: !928, file: !927, line: 47, baseType: !181, size: 32, align: 32, offset: 1216)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "rx_buf_size", scope: !928, file: !927, line: 48, baseType: !181, size: 32, align: 32, offset: 1248)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !928, file: !927, line: 49, baseType: !939, size: 64, align: 64, offset: 1280)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64, align: 64)
!940 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_t", file: !22, line: 99, baseType: !941)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread", file: !22, line: 78, size: 768, align: 64, elements: !942)
!942 = !{!943, !944, !946, !999, !1004, !1005, !1006, !1018, !1020}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !941, file: !22, line: 79, baseType: !194, size: 64, align: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !941, file: !22, line: 80, baseType: !945, size: 32, align: 32, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_type_t", file: !22, line: 63, baseType: !21)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !941, file: !22, line: 81, baseType: !947, size: 64, align: 64, offset: 128)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64, align: 64)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_master", file: !22, line: 112, size: 1280, align: 64, elements: !949)
!949 = !{!950, !962, !963, !964, !965, !973, !974, !975, !976, !977, !980, !991, !992, !993, !994, !995, !996, !997, !998}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !948, file: !22, line: 113, baseType: !951, size: 64, align: 64)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_root_t", file: !952, line: 109, baseType: !953)
!952 = !DIFile(filename: "../../lib/rbtree.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !952, line: 106, size: 64, align: 64, elements: !954)
!954 = !{!955}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !953, file: !952, line: 108, baseType: !956, size: 64, align: 64)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64, align: 64)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !952, line: 97, size: 192, align: 64, elements: !958)
!958 = !{!959, !960, !961}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "rb_parent_color", scope: !957, file: !952, line: 99, baseType: !194, size: 64, align: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !957, file: !952, line: 102, baseType: !956, size: 64, align: 64, offset: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !957, file: !952, line: 103, baseType: !956, size: 64, align: 64, offset: 128)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !948, file: !22, line: 114, baseType: !951, size: 64, align: 64, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !948, file: !22, line: 115, baseType: !951, size: 64, align: 64, offset: 128)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !948, file: !22, line: 116, baseType: !951, size: 64, align: 64, offset: 192)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !948, file: !22, line: 117, baseType: !966, size: 128, align: 64, offset: 256)
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "list_head_t", file: !967, line: 62, baseType: !968)
!967 = !DIFile(filename: "../../lib/list_head.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !967, line: 60, size: 128, align: 64, elements: !969)
!969 = !{!970, !972}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !968, file: !967, line: 61, baseType: !971, size: 64, align: 64)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64, align: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !968, file: !967, line: 61, baseType: !971, size: 64, align: 64, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !948, file: !22, line: 121, baseType: !966, size: 128, align: 64, offset: 384)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "unuse", scope: !948, file: !22, line: 122, baseType: !966, size: 128, align: 64, offset: 512)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "child_pid_index", scope: !948, file: !22, line: 124, baseType: !198, size: 64, align: 64, offset: 640)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "io_events", scope: !948, file: !22, line: 127, baseType: !951, size: 64, align: 64, offset: 704)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_events", scope: !948, file: !22, line: 128, baseType: !978, size: 64, align: 64, offset: 768)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64, align: 64)
!979 = !DICompositeType(tag: DW_TAG_structure_type, name: "epoll_event", file: !22, line: 128, flags: DIFlagFwdDecl)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "current_event", scope: !948, file: !22, line: 129, baseType: !981, size: 64, align: 64, offset: 832)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64, align: 64)
!982 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_event_t", file: !22, line: 109, baseType: !983)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_event", file: !22, line: 102, size: 448, align: 64, elements: !984)
!984 = !{!985, !986, !987, !988, !989}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !983, file: !22, line: 103, baseType: !939, size: 64, align: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !983, file: !22, line: 104, baseType: !939, size: 64, align: 64, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !983, file: !22, line: 105, baseType: !194, size: 64, align: 64, offset: 128)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !983, file: !22, line: 106, baseType: !181, size: 32, align: 32, offset: 192)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !983, file: !22, line: 108, baseType: !990, size: 192, align: 64, offset: 256)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_node_t", file: !952, line: 104, baseType: !957)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_size", scope: !948, file: !22, line: 130, baseType: !142, size: 32, align: 32, offset: 896)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_count", scope: !948, file: !22, line: 131, baseType: !142, size: 32, align: 32, offset: 928)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_fd", scope: !948, file: !22, line: 132, baseType: !181, size: 32, align: 32, offset: 960)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "timer_fd", scope: !948, file: !22, line: 135, baseType: !181, size: 32, align: 32, offset: 992)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "timer_thread", scope: !948, file: !22, line: 136, baseType: !939, size: 64, align: 64, offset: 1024)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !948, file: !22, line: 146, baseType: !194, size: 64, align: 64, offset: 1088)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !948, file: !22, line: 147, baseType: !194, size: 64, align: 64, offset: 1152)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_timer_running", scope: !948, file: !22, line: 148, baseType: !300, size: 8, align: 8, offset: 1216)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !941, file: !22, line: 82, baseType: !1000, size: 64, align: 64, offset: 192)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64, align: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!181, !1003}
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64, align: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !941, file: !22, line: 83, baseType: !193, size: 64, align: 64, offset: 256)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "sands", scope: !941, file: !22, line: 84, baseType: !325, size: 128, align: 64, offset: 320)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !941, file: !22, line: 92, baseType: !1007, size: 64, align: 32, offset: 448)
!1007 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !941, file: !22, line: 85, size: 64, align: 32, elements: !1008)
!1008 = !{!1009, !1010, !1011}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1007, file: !22, line: 86, baseType: !181, size: 32, align: 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1007, file: !22, line: 87, baseType: !181, size: 32, align: 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !1007, file: !22, line: 91, baseType: !1012, size: 64, align: 32)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1007, file: !22, line: 88, size: 64, align: 32, elements: !1013)
!1013 = !{!1014, !1017}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1012, file: !22, line: 89, baseType: !1015, size: 32, align: 32)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !702, line: 263, baseType: !1016)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !251, line: 133, baseType: !181)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1012, file: !22, line: 90, baseType: !181, size: 32, align: 32, offset: 32)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !941, file: !22, line: 93, baseType: !1019, size: 64, align: 64, offset: 512)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64, align: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, scope: !941, file: !22, line: 95, baseType: !1021, size: 192, align: 64, offset: 576)
!1021 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !941, file: !22, line: 95, size: 192, align: 64, elements: !1022)
!1022 = !{!1023, !1024}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !1021, file: !22, line: 96, baseType: !990, size: 192, align: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1021, file: !22, line: 97, baseType: !966, size: 128, align: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !798, file: !14, line: 269, baseType: !181, size: 32, align: 32, offset: 5888)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !798, file: !14, line: 271, baseType: !181, size: 32, align: 32, offset: 5920)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !798, file: !14, line: 274, baseType: !181, size: 32, align: 32, offset: 5952)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "last_email_state", scope: !798, file: !14, line: 275, baseType: !181, size: 32, align: 32, offset: 5984)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "notify_exec", scope: !798, file: !14, line: 276, baseType: !300, size: 8, align: 8, offset: 6016)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "script_backup", scope: !798, file: !14, line: 277, baseType: !820, size: 64, align: 64, offset: 6080)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "script_master", scope: !798, file: !14, line: 278, baseType: !820, size: 64, align: 64, offset: 6144)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "script_fault", scope: !798, file: !14, line: 279, baseType: !820, size: 64, align: 64, offset: 6208)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "script_stop", scope: !798, file: !14, line: 280, baseType: !820, size: 64, align: 64, offset: 6272)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "script_master_rx_lower_pri", scope: !798, file: !14, line: 281, baseType: !820, size: 64, align: 64, offset: 6336)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "script", scope: !798, file: !14, line: 282, baseType: !820, size: 64, align: 64, offset: 6400)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "ms_down_timer", scope: !798, file: !14, line: 285, baseType: !141, size: 32, align: 32, offset: 6464)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "sands", scope: !798, file: !14, line: 286, baseType: !325, size: 128, align: 64, offset: 6528)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "send_buffer", scope: !798, file: !14, line: 289, baseType: !146, size: 64, align: 64, offset: 6656)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "send_buffer_size", scope: !798, file: !14, line: 290, baseType: !268, size: 64, align: 64, offset: 6720)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_csum", scope: !798, file: !14, line: 291, baseType: !141, size: 32, align: 32, offset: 6784)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "auth_type", scope: !798, file: !14, line: 295, baseType: !130, size: 8, align: 8, offset: 6816)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "auth_data", scope: !798, file: !14, line: 296, baseType: !1043, size: 64, align: 8, offset: 6824)
!1043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 64, align: 8, elements: !137)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "ipsecah_counter", scope: !798, file: !14, line: 299, baseType: !1045, size: 64, align: 32, offset: 6912)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_counter_t", file: !1046, line: 58, baseType: !1047)
!1046 = !DIFile(filename: "./../include/vrrp_ipsecah.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_seq_counter", file: !1046, line: 55, size: 64, align: 32, elements: !1048)
!1048 = !{!1049, !1050}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "cycle", scope: !1047, file: !1046, line: 56, baseType: !300, size: 8, align: 8)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "seq_number", scope: !1047, file: !1046, line: 57, baseType: !141, size: 32, align: 32, offset: 32)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "ip_id", scope: !798, file: !14, line: 309, baseType: !181, size: 32, align: 32, offset: 6976)
!1052 = !DILocalVariable(name: "vrrp", arg: 1, scope: !793, file: !276, line: 222, type: !796)
!1053 = !DILocation(line: 222, column: 35, scope: !793)
!1054 = !DILocalVariable(name: "ipaddress", arg: 2, scope: !793, file: !276, line: 222, type: !348)
!1055 = !DILocation(line: 222, column: 55, scope: !793)
!1056 = !DILocalVariable(name: "ifp", scope: !793, file: !276, line: 224, type: !284)
!1057 = !DILocation(line: 224, column: 15, scope: !793)
!1058 = !DILocation(line: 224, column: 23, scope: !793)
!1059 = !DILocation(line: 224, column: 34, scope: !793)
!1060 = !DILocation(line: 224, column: 40, scope: !793)
!1061 = !DILocation(line: 227, column: 13, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !793, file: !276, line: 227, column: 13)
!1063 = !DILocation(line: 227, column: 18, scope: !1062)
!1064 = !DILocation(line: 227, column: 28, scope: !1062)
!1065 = !DILocation(line: 227, column: 13, scope: !793)
!1066 = !DILocation(line: 228, column: 17, scope: !1062)
!1067 = !DILocation(line: 230, column: 2, scope: !793)
!1068 = !DILocation(line: 233, column: 6, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !793, file: !276, line: 233, column: 6)
!1070 = !DILocation(line: 233, column: 11, scope: !1069)
!1071 = !DILocation(line: 233, column: 22, scope: !1069)
!1072 = !DILocation(line: 233, column: 25, scope: !1073)
!1073 = !DILexicalBlockFile(scope: !1069, file: !276, discriminator: 1)
!1074 = !DILocation(line: 233, column: 30, scope: !1073)
!1075 = !DILocation(line: 233, column: 42, scope: !1073)
!1076 = !DILocation(line: 233, column: 60, scope: !1073)
!1077 = !DILocation(line: 233, column: 63, scope: !1078)
!1078 = !DILexicalBlockFile(scope: !1069, file: !276, discriminator: 2)
!1079 = !DILocation(line: 233, column: 68, scope: !1078)
!1080 = !DILocation(line: 233, column: 80, scope: !1078)
!1081 = !DILocation(line: 233, column: 94, scope: !1078)
!1082 = !DILocation(line: 233, column: 6, scope: !1078)
!1083 = !DILocation(line: 234, column: 9, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !276, line: 234, column: 6)
!1085 = distinct !DILexicalBlock(scope: !1069, file: !276, line: 233, column: 102)
!1086 = !DILocation(line: 234, column: 7, scope: !1084)
!1087 = !DILocation(line: 234, column: 12, scope: !1084)
!1088 = !DILocation(line: 234, column: 24, scope: !1084)
!1089 = !DILocation(line: 234, column: 16, scope: !1084)
!1090 = !DILocation(line: 234, column: 6, scope: !1085)
!1091 = !DILocation(line: 234, column: 9, scope: !1092)
!1092 = !DILexicalBlockFile(scope: !1084, file: !276, discriminator: 1)
!1093 = !DILocation(line: 234, column: 7, scope: !1092)
!1094 = !DILocation(line: 234, column: 12, scope: !1092)
!1095 = !DILocation(line: 234, column: 24, scope: !1092)
!1096 = !DILocation(line: 234, column: 6, scope: !1092)
!1097 = !DILocation(line: 234, column: 9, scope: !1098)
!1098 = !DILexicalBlockFile(scope: !1084, file: !276, discriminator: 2)
!1099 = !DILocation(line: 234, column: 7, scope: !1098)
!1100 = !DILocation(line: 234, column: 12, scope: !1098)
!1101 = !DILocation(line: 234, column: 24, scope: !1098)
!1102 = !DILocation(line: 234, column: 6, scope: !1098)
!1103 = !DILocation(line: 235, column: 16, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1084, file: !276, line: 234, column: 63)
!1105 = !DILocation(line: 235, column: 22, scope: !1104)
!1106 = !DILocation(line: 235, column: 27, scope: !1104)
!1107 = !DILocation(line: 235, column: 4, scope: !1104)
!1108 = !DILocation(line: 236, column: 4, scope: !1104)
!1109 = !DILocation(line: 238, column: 2, scope: !1085)
!1110 = !DILocation(line: 240, column: 38, scope: !793)
!1111 = !DILocation(line: 240, column: 43, scope: !793)
!1112 = !DILocation(line: 240, column: 2, scope: !793)
!1113 = !DILocation(line: 241, column: 1, scope: !793)
!1114 = !DILocation(line: 241, column: 1, scope: !1115)
!1115 = !DILexicalBlockFile(scope: !793, file: !276, discriminator: 1)
!1116 = distinct !DISubprogram(name: "queue_ndisc", scope: !276, file: !276, line: 203, type: !1117, isLocal: true, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !404)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{null, !796, !284, !348}
!1119 = !DILocalVariable(name: "vrrp", arg: 1, scope: !1116, file: !276, line: 203, type: !796)
!1120 = !DILocation(line: 203, column: 21, scope: !1116)
!1121 = !DILocalVariable(name: "ifp", arg: 2, scope: !1116, file: !276, line: 203, type: !284)
!1122 = !DILocation(line: 203, column: 40, scope: !1116)
!1123 = !DILocalVariable(name: "ipaddress", arg: 3, scope: !1116, file: !276, line: 203, type: !348)
!1124 = !DILocation(line: 203, column: 59, scope: !1116)
!1125 = !DILocalVariable(name: "next_time", scope: !1116, file: !276, line: 205, type: !325)
!1126 = !DILocation(line: 205, column: 12, scope: !1116)
!1127 = !DILocation(line: 205, column: 38, scope: !1116)
!1128 = !DILocation(line: 205, column: 43, scope: !1116)
!1129 = !DILocation(line: 205, column: 55, scope: !1116)
!1130 = !DILocation(line: 205, column: 24, scope: !1116)
!1131 = !DILocation(line: 207, column: 2, scope: !1116)
!1132 = !DILocation(line: 207, column: 8, scope: !1116)
!1133 = !DILocation(line: 207, column: 20, scope: !1116)
!1134 = !DILocation(line: 208, column: 2, scope: !1116)
!1135 = !DILocation(line: 208, column: 13, scope: !1116)
!1136 = !DILocation(line: 208, column: 30, scope: !1116)
!1137 = !DILocation(line: 211, column: 7, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1116, file: !276, line: 211, column: 6)
!1139 = !DILocation(line: 211, column: 19, scope: !1138)
!1140 = !DILocation(line: 211, column: 24, scope: !1141)
!1141 = !DILexicalBlockFile(scope: !1138, file: !276, discriminator: 1)
!1142 = !DILocation(line: 211, column: 31, scope: !1141)
!1143 = !DILocation(line: 211, column: 6, scope: !1141)
!1144 = !DILocation(line: 211, column: 24, scope: !1145)
!1145 = !DILexicalBlockFile(scope: !1138, file: !276, discriminator: 2)
!1146 = !DILocation(line: 211, column: 21, scope: !1145)
!1147 = !DILocation(line: 211, column: 22, scope: !1145)
!1148 = !DILocation(line: 211, column: 24, scope: !1149)
!1149 = !DILexicalBlockFile(scope: !1138, file: !276, discriminator: 3)
!1150 = !DILocation(line: 211, column: 21, scope: !1149)
!1151 = !DILocation(line: 211, column: 6, scope: !1149)
!1152 = !DILocation(line: 212, column: 7, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !276, line: 212, column: 7)
!1154 = distinct !DILexicalBlock(scope: !1138, file: !276, line: 211, column: 63)
!1155 = !DILocation(line: 212, column: 7, scope: !1154)
!1156 = !DILocation(line: 213, column: 18, scope: !1153)
!1157 = !DILocation(line: 213, column: 4, scope: !1153)
!1158 = !DILocation(line: 215, column: 20, scope: !1154)
!1159 = !DILocation(line: 217, column: 34, scope: !1154)
!1160 = !DILocation(line: 217, column: 75, scope: !1154)
!1161 = !DILocation(line: 217, column: 80, scope: !1154)
!1162 = !DILocation(line: 217, column: 92, scope: !1154)
!1163 = !DILocation(line: 217, column: 64, scope: !1154)
!1164 = !DILocation(line: 217, column: 17, scope: !1165)
!1165 = !DILexicalBlockFile(scope: !1154, file: !276, discriminator: 1)
!1166 = !DILocation(line: 217, column: 15, scope: !1154)
!1167 = !DILocation(line: 218, column: 2, scope: !1154)
!1168 = !DILocation(line: 219, column: 1, scope: !1116)
!1169 = distinct !DISubprogram(name: "ndisc_init", scope: !276, file: !276, line: 247, type: !1170, isLocal: false, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !404)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{null}
!1172 = !DILocation(line: 249, column: 6, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1169, file: !276, line: 249, column: 6)
!1174 = !DILocation(line: 249, column: 6, scope: !1169)
!1175 = !DILocation(line: 250, column: 3, scope: !1173)
!1176 = !DILocation(line: 253, column: 27, scope: !1169)
!1177 = !DILocation(line: 253, column: 15, scope: !1169)
!1178 = !DILocation(line: 257, column: 55, scope: !1169)
!1179 = !DILocation(line: 257, column: 13, scope: !1180)
!1180 = !DILexicalBlockFile(scope: !1169, file: !276, discriminator: 1)
!1181 = !DILocation(line: 257, column: 11, scope: !1169)
!1182 = !DILocation(line: 262, column: 6, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1169, file: !276, line: 262, column: 6)
!1184 = !DILocation(line: 262, column: 15, scope: !1183)
!1185 = !DILocation(line: 262, column: 6, scope: !1169)
!1186 = !DILocation(line: 263, column: 3, scope: !1183)
!1187 = !DILocation(line: 265, column: 3, scope: !1183)
!1188 = !DILocation(line: 266, column: 1, scope: !1169)
!1189 = distinct !DISubprogram(name: "ndisc_close", scope: !276, file: !276, line: 269, type: !1170, isLocal: false, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !404)
!1190 = !DILocation(line: 271, column: 7, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1189, file: !276, line: 271, column: 6)
!1192 = !DILocation(line: 271, column: 6, scope: !1189)
!1193 = !DILocation(line: 272, column: 3, scope: !1191)
!1194 = !DILocation(line: 274, column: 8, scope: !1189)
!1195 = !DILocation(line: 274, column: 3, scope: !1189)
!1196 = !DILocation(line: 274, column: 38, scope: !1189)
!1197 = !DILocation(line: 275, column: 15, scope: !1189)
!1198 = !DILocation(line: 276, column: 8, scope: !1189)
!1199 = !DILocation(line: 276, column: 2, scope: !1189)
!1200 = !DILocation(line: 277, column: 11, scope: !1189)
!1201 = !DILocation(line: 278, column: 1, scope: !1189)
!1202 = !DILocation(line: 278, column: 1, scope: !1203)
!1203 = !DILexicalBlockFile(scope: !1189, file: !276, discriminator: 1)
!1204 = distinct !DISubprogram(name: "__test_bit", scope: !74, file: !74, line: 47, type: !1205, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !404)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!300, !142, !1207}
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64, align: 64)
!1208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!1209 = !DILocalVariable(name: "idx", arg: 1, scope: !1204, file: !74, line: 47, type: !142)
!1210 = !DILocation(line: 47, column: 39, scope: !1204)
!1211 = !DILocalVariable(name: "bmap", arg: 2, scope: !1204, file: !74, line: 47, type: !1207)
!1212 = !DILocation(line: 47, column: 65, scope: !1204)
!1213 = !DILocation(line: 49, column: 19, scope: !1204)
!1214 = !DILocation(line: 49, column: 18, scope: !1204)
!1215 = !DILocation(line: 49, column: 24, scope: !1204)
!1216 = !DILocation(line: 49, column: 12, scope: !1204)
!1217 = !DILocation(line: 49, column: 68, scope: !1204)
!1218 = !DILocation(line: 49, column: 67, scope: !1204)
!1219 = !DILocation(line: 49, column: 73, scope: !1204)
!1220 = !DILocation(line: 49, column: 63, scope: !1204)
!1221 = !DILocation(line: 49, column: 56, scope: !1204)
!1222 = !DILocation(line: 49, column: 10, scope: !1204)
!1223 = !DILocation(line: 49, column: 9, scope: !1204)
!1224 = !DILocation(line: 49, column: 2, scope: !1204)
!1225 = distinct !DISubprogram(name: "timer_long", scope: !326, file: !326, line: 75, type: !1226, isLocal: true, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !404)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!194, !325}
!1228 = !DILocalVariable(name: "a", arg: 1, scope: !1225, file: !326, line: 75, type: !325)
!1229 = !DILocation(line: 75, column: 22, scope: !1225)
!1230 = !DILocation(line: 77, column: 26, scope: !1225)
!1231 = !DILocation(line: 77, column: 33, scope: !1225)
!1232 = !DILocation(line: 77, column: 63, scope: !1225)
!1233 = !DILocation(line: 77, column: 44, scope: !1225)
!1234 = !DILocation(line: 77, column: 2, scope: !1225)
