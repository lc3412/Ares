; ModuleID = './[inter]keepalived--vrrp--vrrp_arp.o.i'
source_filename = "./[inter]keepalived--vrrp--vrrp_arp.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct._list = type { %struct._element*, %struct._element*, i32, void (i8*)*, void (%struct._IO_FILE*, i8*)* }
%struct._element = type { %struct._element*, %struct._element*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._thread = type { i64, i32, %struct._thread_master*, i32 (%struct._thread*)*, i8*, %struct.timeval, %union.anon.2, %struct._thread_event*, %union.anon.4 }
%struct._thread_master = type { %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.list_head, %struct.list_head, %struct.list_head, %struct._list*, %struct.rb_root, %struct.epoll_event*, %struct._thread_event*, i32, i32, i32, i32, %struct._thread*, i64, i64, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rb_root = type { %struct.rb_node* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.epoll_event = type opaque
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
%struct.arphdr = type { i16, i16, i8, i8, i16 }
%struct.ipoib_hdr = type { i16, i16 }
%struct.ether_header = type { [6 x i8], [6 x i8], i16 }
%struct.anon = type { %struct.in_addr, %struct.in_addr }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%union.__CONST_SOCKADDR_ARG = type { %struct.sockaddr* }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.sockaddr_large_ll = type { i16, i16, i32, i16, i8, i8, [20 x i8] }
%struct._vrrp_t = type { i16, i8*, %struct._vrrp_sgroup*, %struct._vrrp_stats*, %struct._interface*, i8, i8, i8, i32, i64, [16 x i8], %struct._list*, %struct._list*, %struct._list*, i32, i32, %struct.sockaddr_storage, i8, i8, %struct.sockaddr_storage, %struct._list*, i32, %struct.sockaddr_storage, i8, %struct.timeval, i32, %struct.timeval, %struct.timeval, i32, i32, i32, i8, i8, i32, i32, i32, i8, i8, i8, i32, i8, %struct._list*, %struct._list*, i8, i8, %struct._list*, %struct._list*, i32, i32, i32, i64, i8, i8, i64, %struct.timeval, i32, i32, i8, %struct._sock*, i32, i32, i32, i32, i8, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, i32, %struct.timeval, i8*, i64, i32, i8, [8 x i8], %struct._seq_counter, i32 }
%struct._vrrp_sgroup = type { i8*, %struct._vector*, %struct._list*, i32, i32, i32, i8, %struct._list*, %struct._list*, %struct._list*, %struct._list*, i8, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, %struct._notify_script*, i32, i32 }
%struct._vrrp_stats = type { i64, i32, i32, i32, i64, i64, i64, i64, i64, i32, i32, i32, i64, i64 }
%struct._sock = type { i16, %struct.sockaddr_storage, i32, i32, i8, i32, i32, i32, %struct._thread* }
%struct._notify_script = type { i8**, i32, i32, i32, i32 }
%struct._seq_counter = type { i8, i32 }

@garp_buffer = internal global i8* null, align 8
@time_now = external global %struct.timeval, align 8
@garp_fd = internal global i32 -1, align 4
@.str = private unnamed_addr constant [42 x i8] c"Registering gratuitous ARP shared channel\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Error while registering gratuitous ARP shared channel\00", align 1
@garp_delay = common global %struct._list* null, align 8
@debug = external global i64, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"Sending gratuitous ARP on %s for %s\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Error sending gratuitous ARP on %s for %s\00", align 1
@garp_thread = external global %struct._thread*, align 8
@garp_next_time = external global %struct.timeval, align 8
@master = external global %struct._thread_master*, align 8

; Function Attrs: nounwind uwtable
define i64 @send_gratuitous_arp_immediate(%struct._interface*, %struct._ip_address*) #0 !dbg !229 {
  %3 = alloca i64, align 8
  %4 = alloca %struct._interface*, align 8
  %5 = alloca %struct._ip_address*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.arphdr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.ipoib_hdr*, align 8
  %12 = alloca %struct.ether_header*, align 8
  %13 = alloca %struct.timeval, align 8
  store %struct._interface* %0, %struct._interface** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._interface** %4, metadata !379, metadata !380), !dbg !381
  store %struct._ip_address* %1, %struct._ip_address** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._ip_address** %5, metadata !382, metadata !380), !dbg !383
  call void @llvm.dbg.declare(metadata i8** %6, metadata !384, metadata !380), !dbg !385
  %14 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !386
  %15 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %14, i32 0, i32 2, !dbg !387
  %16 = load %struct._interface*, %struct._interface** %15, align 8, !dbg !387
  %17 = getelementptr inbounds %struct._interface, %struct._interface* %16, i32 0, i32 8, !dbg !388
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i32 0, i32 0, !dbg !389
  store i8* %18, i8** %6, align 8, !dbg !385
  call void @llvm.dbg.declare(metadata %struct.arphdr** %7, metadata !390, metadata !380), !dbg !391
  call void @llvm.dbg.declare(metadata i8** %8, metadata !392, metadata !380), !dbg !393
  call void @llvm.dbg.declare(metadata i64* %9, metadata !394, metadata !380), !dbg !395
  call void @llvm.dbg.declare(metadata i64* %10, metadata !396, metadata !380), !dbg !397
  %19 = load %struct._interface*, %struct._interface** %4, align 8, !dbg !398
  %20 = getelementptr inbounds %struct._interface, %struct._interface* %19, i32 0, i32 10, !dbg !400
  %21 = load i64, i64* %20, align 8, !dbg !400
  %22 = icmp eq i64 %21, 0, !dbg !401
  br i1 %22, label %23, label %24, !dbg !402

; <label>:23:                                     ; preds = %2
  store i64 -1, i64* %3, align 8, !dbg !403
  br label %180, !dbg !403

; <label>:24:                                     ; preds = %2
  %25 = load %struct._interface*, %struct._interface** %4, align 8, !dbg !404
  %26 = getelementptr inbounds %struct._interface, %struct._interface* %25, i32 0, i32 7, !dbg !406
  %27 = load i16, i16* %26, align 4, !dbg !406
  %28 = zext i16 %27 to i32, !dbg !404
  %29 = icmp eq i32 %28, 32, !dbg !407
  br i1 %29, label %30, label %56, !dbg !408

; <label>:30:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata %struct.ipoib_hdr** %11, metadata !409, metadata !380), !dbg !411
  %31 = load i8*, i8** @garp_buffer, align 8, !dbg !412
  %32 = load %struct._interface*, %struct._interface** %4, align 8, !dbg !413
  %33 = getelementptr inbounds %struct._interface, %struct._interface* %32, i32 0, i32 9, !dbg !414
  %34 = getelementptr inbounds [32 x i8], [32 x i8]* %33, i32 0, i32 0, !dbg !415
  %35 = load %struct._interface*, %struct._interface** %4, align 8, !dbg !416
  %36 = getelementptr inbounds %struct._interface, %struct._interface* %35, i32 0, i32 10, !dbg !417
  %37 = load i64, i64* %36, align 8, !dbg !417
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %34, i64 %37, i32 1, i1 false), !dbg !415
  %38 = load i8*, i8** @garp_buffer, align 8, !dbg !418
  %39 = load %struct._interface*, %struct._interface** %4, align 8, !dbg !419
  %40 = getelementptr inbounds %struct._interface, %struct._interface* %39, i32 0, i32 10, !dbg !420
  %41 = load i64, i64* %40, align 8, !dbg !420
  %42 = getelementptr inbounds i8, i8* %38, i64 %41, !dbg !421
  %43 = bitcast i8* %42 to %struct.ipoib_hdr*, !dbg !422
  store %struct.ipoib_hdr* %43, %struct.ipoib_hdr** %11, align 8, !dbg !423
  %44 = call zeroext i16 @htons(i16 zeroext 2054) #1, !dbg !424
  %45 = load %struct.ipoib_hdr*, %struct.ipoib_hdr** %11, align 8, !dbg !425
  %46 = getelementptr inbounds %struct.ipoib_hdr, %struct.ipoib_hdr* %45, i32 0, i32 0, !dbg !426
  store i16 %44, i16* %46, align 2, !dbg !427
  %47 = load %struct.ipoib_hdr*, %struct.ipoib_hdr** %11, align 8, !dbg !428
  %48 = getelementptr inbounds %struct.ipoib_hdr, %struct.ipoib_hdr* %47, i32 0, i32 1, !dbg !429
  store i16 0, i16* %48, align 2, !dbg !430
  %49 = load i8*, i8** @garp_buffer, align 8, !dbg !431
  %50 = load %struct._interface*, %struct._interface** %4, align 8, !dbg !432
  %51 = getelementptr inbounds %struct._interface, %struct._interface* %50, i32 0, i32 10, !dbg !433
  %52 = load i64, i64* %51, align 8, !dbg !433
  %53 = getelementptr inbounds i8, i8* %49, i64 %52, !dbg !434
  %54 = getelementptr inbounds i8, i8* %53, i64 4, !dbg !435
  %55 = bitcast i8* %54 to %struct.arphdr*, !dbg !436
  store %struct.arphdr* %55, %struct.arphdr** %7, align 8, !dbg !437
  br label %72, !dbg !438

; <label>:56:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata %struct.ether_header** %12, metadata !439, metadata !380), !dbg !441
  %57 = load i8*, i8** @garp_buffer, align 8, !dbg !442
  %58 = bitcast i8* %57 to %struct.ether_header*, !dbg !443
  store %struct.ether_header* %58, %struct.ether_header** %12, align 8, !dbg !444
  %59 = load %struct.ether_header*, %struct.ether_header** %12, align 8, !dbg !445
  %60 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %59, i32 0, i32 0, !dbg !446
  %61 = getelementptr inbounds [6 x i8], [6 x i8]* %60, i32 0, i32 0, !dbg !447
  call void @llvm.memset.p0i8.i64(i8* %61, i8 -1, i64 6, i32 1, i1 false), !dbg !447
  %62 = load %struct.ether_header*, %struct.ether_header** %12, align 8, !dbg !448
  %63 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %62, i32 0, i32 1, !dbg !449
  %64 = getelementptr inbounds [6 x i8], [6 x i8]* %63, i32 0, i32 0, !dbg !450
  %65 = load i8*, i8** %6, align 8, !dbg !451
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %65, i64 6, i32 1, i1 false), !dbg !450
  %66 = call zeroext i16 @htons(i16 zeroext 2054) #1, !dbg !452
  %67 = load %struct.ether_header*, %struct.ether_header** %12, align 8, !dbg !453
  %68 = getelementptr inbounds %struct.ether_header, %struct.ether_header* %67, i32 0, i32 2, !dbg !454
  store i16 %66, i16* %68, align 1, !dbg !455
  %69 = load i8*, i8** @garp_buffer, align 8, !dbg !456
  %70 = getelementptr inbounds i8, i8* %69, i64 14, !dbg !457
  %71 = bitcast i8* %70 to %struct.arphdr*, !dbg !458
  store %struct.arphdr* %71, %struct.arphdr** %7, align 8, !dbg !459
  br label %72

; <label>:72:                                     ; preds = %56, %30
  %73 = load %struct._interface*, %struct._interface** %4, align 8, !dbg !460
  %74 = getelementptr inbounds %struct._interface, %struct._interface* %73, i32 0, i32 7, !dbg !461
  %75 = load i16, i16* %74, align 4, !dbg !461
  %76 = call zeroext i16 @htons(i16 zeroext %75) #1, !dbg !462
  %77 = load %struct.arphdr*, %struct.arphdr** %7, align 8, !dbg !463
  %78 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %77, i32 0, i32 0, !dbg !464
  store i16 %76, i16* %78, align 2, !dbg !465
  %79 = call zeroext i16 @htons(i16 zeroext 2048) #1, !dbg !466
  %80 = load %struct.arphdr*, %struct.arphdr** %7, align 8, !dbg !467
  %81 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %80, i32 0, i32 1, !dbg !468
  store i16 %79, i16* %81, align 2, !dbg !469
  %82 = load %struct._interface*, %struct._interface** %4, align 8, !dbg !470
  %83 = getelementptr inbounds %struct._interface, %struct._interface* %82, i32 0, i32 10, !dbg !471
  %84 = load i64, i64* %83, align 8, !dbg !471
  %85 = trunc i64 %84 to i8, !dbg !470
  %86 = load %struct.arphdr*, %struct.arphdr** %7, align 8, !dbg !472
  %87 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %86, i32 0, i32 2, !dbg !473
  store i8 %85, i8* %87, align 2, !dbg !474
  %88 = load %struct.arphdr*, %struct.arphdr** %7, align 8, !dbg !475
  %89 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %88, i32 0, i32 3, !dbg !476
  store i8 4, i8* %89, align 1, !dbg !477
  %90 = call zeroext i16 @htons(i16 zeroext 1) #1, !dbg !478
  %91 = load %struct.arphdr*, %struct.arphdr** %7, align 8, !dbg !479
  %92 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %91, i32 0, i32 4, !dbg !480
  store i16 %90, i16* %92, align 2, !dbg !481
  %93 = load %struct.arphdr*, %struct.arphdr** %7, align 8, !dbg !482
  %94 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %93, i64 1, !dbg !483
  %95 = bitcast %struct.arphdr* %94 to i8*, !dbg !484
  store i8* %95, i8** %8, align 8, !dbg !485
  %96 = load i8*, i8** %8, align 8, !dbg !486
  %97 = load i8*, i8** %6, align 8, !dbg !487
  %98 = load %struct._interface*, %struct._interface** %4, align 8, !dbg !488
  %99 = getelementptr inbounds %struct._interface, %struct._interface* %98, i32 0, i32 10, !dbg !489
  %100 = load i64, i64* %99, align 8, !dbg !489
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %96, i8* %97, i64 %100, i32 1, i1 false), !dbg !490
  %101 = load %struct._interface*, %struct._interface** %4, align 8, !dbg !491
  %102 = getelementptr inbounds %struct._interface, %struct._interface* %101, i32 0, i32 10, !dbg !492
  %103 = load i64, i64* %102, align 8, !dbg !492
  %104 = load i8*, i8** %8, align 8, !dbg !493
  %105 = getelementptr inbounds i8, i8* %104, i64 %103, !dbg !493
  store i8* %105, i8** %8, align 8, !dbg !493
  %106 = load i8*, i8** %8, align 8, !dbg !494
  %107 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !495
  %108 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %107, i32 0, i32 1, !dbg !496
  %109 = bitcast %union.anon.0* %108 to %struct.anon*, !dbg !497
  %110 = getelementptr inbounds %struct.anon, %struct.anon* %109, i32 0, i32 0, !dbg !498
  %111 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %110, i32 0, i32 0, !dbg !499
  %112 = bitcast i32* %111 to i8*, !dbg !500
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %106, i8* %112, i64 4, i32 1, i1 false), !dbg !500
  %113 = load i8*, i8** %8, align 8, !dbg !501
  %114 = getelementptr inbounds i8, i8* %113, i64 4, !dbg !501
  store i8* %114, i8** %8, align 8, !dbg !501
  %115 = load i8*, i8** %8, align 8, !dbg !502
  %116 = load %struct._interface*, %struct._interface** %4, align 8, !dbg !503
  %117 = getelementptr inbounds %struct._interface, %struct._interface* %116, i32 0, i32 9, !dbg !504
  %118 = getelementptr inbounds [32 x i8], [32 x i8]* %117, i32 0, i32 0, !dbg !505
  %119 = load %struct._interface*, %struct._interface** %4, align 8, !dbg !506
  %120 = getelementptr inbounds %struct._interface, %struct._interface* %119, i32 0, i32 10, !dbg !507
  %121 = load i64, i64* %120, align 8, !dbg !507
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %115, i8* %118, i64 %121, i32 1, i1 false), !dbg !505
  %122 = load %struct._interface*, %struct._interface** %4, align 8, !dbg !508
  %123 = getelementptr inbounds %struct._interface, %struct._interface* %122, i32 0, i32 10, !dbg !509
  %124 = load i64, i64* %123, align 8, !dbg !509
  %125 = load i8*, i8** %8, align 8, !dbg !510
  %126 = getelementptr inbounds i8, i8* %125, i64 %124, !dbg !510
  store i8* %126, i8** %8, align 8, !dbg !510
  %127 = load i8*, i8** %8, align 8, !dbg !511
  %128 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !512
  %129 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %128, i32 0, i32 1, !dbg !513
  %130 = bitcast %union.anon.0* %129 to %struct.anon*, !dbg !514
  %131 = getelementptr inbounds %struct.anon, %struct.anon* %130, i32 0, i32 0, !dbg !515
  %132 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %131, i32 0, i32 0, !dbg !516
  %133 = bitcast i32* %132 to i8*, !dbg !517
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %127, i8* %133, i64 4, i32 1, i1 false), !dbg !517
  %134 = load i8*, i8** %8, align 8, !dbg !518
  %135 = getelementptr inbounds i8, i8* %134, i64 4, !dbg !518
  store i8* %135, i8** %8, align 8, !dbg !518
  %136 = load i8*, i8** %8, align 8, !dbg !519
  %137 = load i8*, i8** @garp_buffer, align 8, !dbg !520
  %138 = ptrtoint i8* %136 to i64, !dbg !521
  %139 = ptrtoint i8* %137 to i64, !dbg !521
  %140 = sub i64 %138, %139, !dbg !521
  store i64 %140, i64* %10, align 8, !dbg !522
  %141 = load %struct._ip_address*, %struct._ip_address** %5, align 8, !dbg !523
  %142 = load i64, i64* %10, align 8, !dbg !524
  %143 = call i64 @send_arp(%struct._ip_address* %141, i64 %142), !dbg !525
  store i64 %143, i64* %9, align 8, !dbg !526
  %144 = load %struct._interface*, %struct._interface** %4, align 8, !dbg !527
  %145 = getelementptr inbounds %struct._interface, %struct._interface* %144, i32 0, i32 18, !dbg !529
  %146 = load %struct._garp_delay*, %struct._garp_delay** %145, align 8, !dbg !529
  %147 = icmp ne %struct._garp_delay* %146, null, !dbg !527
  br i1 %147, label %148, label %177, !dbg !530

; <label>:148:                                    ; preds = %72
  %149 = load %struct._interface*, %struct._interface** %4, align 8, !dbg !531
  %150 = getelementptr inbounds %struct._interface, %struct._interface* %149, i32 0, i32 18, !dbg !533
  %151 = load %struct._garp_delay*, %struct._garp_delay** %150, align 8, !dbg !533
  %152 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %151, i32 0, i32 1, !dbg !534
  %153 = load i8, i8* %152, align 8, !dbg !534
  %154 = trunc i8 %153 to i1, !dbg !534
  br i1 %154, label %155, label %177, !dbg !535

; <label>:155:                                    ; preds = %148
  %156 = load %struct._interface*, %struct._interface** %4, align 8, !dbg !536
  %157 = getelementptr inbounds %struct._interface, %struct._interface* %156, i32 0, i32 18, !dbg !537
  %158 = load %struct._garp_delay*, %struct._garp_delay** %157, align 8, !dbg !537
  %159 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %158, i32 0, i32 4, !dbg !538
  %160 = load %struct._interface*, %struct._interface** %4, align 8, !dbg !539
  %161 = getelementptr inbounds %struct._interface, %struct._interface* %160, i32 0, i32 18, !dbg !540
  %162 = load %struct._garp_delay*, %struct._garp_delay** %161, align 8, !dbg !540
  %163 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %162, i32 0, i32 0, !dbg !541
  %164 = bitcast %struct.timeval* %163 to { i64, i64 }*, !dbg !542
  %165 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %164, i32 0, i32 0, !dbg !542
  %166 = load i64, i64* %165, align 8, !dbg !542
  %167 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %164, i32 0, i32 1, !dbg !542
  %168 = load i64, i64* %167, align 8, !dbg !542
  %169 = call { i64, i64 } @timer_add_now(i64 %166, i64 %168), !dbg !542
  %170 = bitcast %struct.timeval* %13 to { i64, i64 }*, !dbg !542
  %171 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %170, i32 0, i32 0, !dbg !542
  %172 = extractvalue { i64, i64 } %169, 0, !dbg !542
  store i64 %172, i64* %171, align 8, !dbg !542
  %173 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %170, i32 0, i32 1, !dbg !542
  %174 = extractvalue { i64, i64 } %169, 1, !dbg !542
  store i64 %174, i64* %173, align 8, !dbg !542
  %175 = bitcast %struct.timeval* %159 to i8*, !dbg !542
  %176 = bitcast %struct.timeval* %13 to i8*, !dbg !542
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %175, i8* %176, i64 16, i32 8, i1 false), !dbg !543
  br label %177, !dbg !536

; <label>:177:                                    ; preds = %155, %148, %72
  %178 = load i8*, i8** @garp_buffer, align 8, !dbg !544
  call void @llvm.memset.p0i8.i64(i8* %178, i8 0, i64 80, i32 1, i1 false), !dbg !545
  %179 = load i64, i64* %9, align 8, !dbg !546
  store i64 %179, i64* %3, align 8, !dbg !547
  br label %180, !dbg !547

; <label>:180:                                    ; preds = %177, %23
  %181 = load i64, i64* %3, align 8, !dbg !548
  ret i64 %181, !dbg !548
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind readnone
declare zeroext i16 @htons(i16 zeroext) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal i64 @send_arp(%struct._ip_address*, i64) #0 !dbg !549 {
  %3 = alloca %struct._ip_address*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct._interface*, align 8
  %6 = alloca %struct.sockaddr_storage, align 8
  %7 = alloca i64, align 8
  %8 = alloca %union.__CONST_SOCKADDR_ARG, align 8
  store %struct._ip_address* %0, %struct._ip_address** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._ip_address** %3, metadata !552, metadata !380), !dbg !553
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !554, metadata !380), !dbg !555
  call void @llvm.dbg.declare(metadata %struct._interface** %5, metadata !556, metadata !380), !dbg !557
  %9 = load %struct._ip_address*, %struct._ip_address** %3, align 8, !dbg !558
  %10 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %9, i32 0, i32 2, !dbg !559
  %11 = load %struct._interface*, %struct._interface** %10, align 8, !dbg !559
  store %struct._interface* %11, %struct._interface** %5, align 8, !dbg !557
  call void @llvm.dbg.declare(metadata %struct.sockaddr_storage* %6, metadata !560, metadata !380), !dbg !569
  call void @llvm.dbg.declare(metadata i64* %7, metadata !570, metadata !380), !dbg !571
  %12 = bitcast %struct.sockaddr_storage* %6 to i8*, !dbg !572
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 128, i32 8, i1 false), !dbg !572
  %13 = bitcast %struct.sockaddr_storage* %6 to %struct.sockaddr_large_ll*, !dbg !573
  %14 = getelementptr inbounds %struct.sockaddr_large_ll, %struct.sockaddr_large_ll* %13, i32 0, i32 0, !dbg !573
  store i16 17, i16* %14, align 8, !dbg !574
  %15 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !575
  %16 = getelementptr inbounds %struct._interface, %struct._interface* %15, i32 0, i32 7, !dbg !576
  %17 = load i16, i16* %16, align 4, !dbg !576
  %18 = bitcast %struct.sockaddr_storage* %6 to %struct.sockaddr_large_ll*, !dbg !577
  %19 = getelementptr inbounds %struct.sockaddr_large_ll, %struct.sockaddr_large_ll* %18, i32 0, i32 3, !dbg !577
  store i16 %17, i16* %19, align 8, !dbg !578
  %20 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !579
  %21 = getelementptr inbounds %struct._interface, %struct._interface* %20, i32 0, i32 10, !dbg !580
  %22 = load i64, i64* %21, align 8, !dbg !580
  %23 = trunc i64 %22 to i8, !dbg !579
  %24 = bitcast %struct.sockaddr_storage* %6 to %struct.sockaddr_large_ll*, !dbg !581
  %25 = getelementptr inbounds %struct.sockaddr_large_ll, %struct.sockaddr_large_ll* %24, i32 0, i32 5, !dbg !581
  store i8 %23, i8* %25, align 1, !dbg !582
  %26 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !583
  %27 = getelementptr inbounds %struct._interface, %struct._interface* %26, i32 0, i32 1, !dbg !584
  %28 = load i32, i32* %27, align 8, !dbg !584
  %29 = bitcast %struct.sockaddr_storage* %6 to %struct.sockaddr_large_ll*, !dbg !585
  %30 = getelementptr inbounds %struct.sockaddr_large_ll, %struct.sockaddr_large_ll* %29, i32 0, i32 2, !dbg !585
  store i32 %28, i32* %30, align 4, !dbg !586
  %31 = bitcast %struct.sockaddr_storage* %6 to %struct.sockaddr_large_ll*, !dbg !587
  %32 = getelementptr inbounds %struct.sockaddr_large_ll, %struct.sockaddr_large_ll* %31, i32 0, i32 6, !dbg !587
  %33 = getelementptr inbounds [20 x i8], [20 x i8]* %32, i32 0, i32 0, !dbg !588
  %34 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !589
  %35 = getelementptr inbounds %struct._interface, %struct._interface* %34, i32 0, i32 9, !dbg !590
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %35, i32 0, i32 0, !dbg !588
  %37 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !591
  %38 = getelementptr inbounds %struct._interface, %struct._interface* %37, i32 0, i32 10, !dbg !592
  %39 = load i64, i64* %38, align 8, !dbg !592
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %36, i64 %39, i32 2, i1 false), !dbg !588
  %40 = call zeroext i1 @__test_bit(i32 7, i64* @debug), !dbg !593
  br i1 %40, label %41, label %52, !dbg !595

; <label>:41:                                     ; preds = %2
  %42 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !596
  %43 = getelementptr inbounds %struct._interface, %struct._interface* %42, i32 0, i32 0, !dbg !597
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %43, i32 0, i32 0, !dbg !596
  %45 = load %struct._ip_address*, %struct._ip_address** %3, align 8, !dbg !598
  %46 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %45, i32 0, i32 1, !dbg !599
  %47 = bitcast %union.anon.0* %46 to %struct.anon*, !dbg !600
  %48 = getelementptr inbounds %struct.anon, %struct.anon* %47, i32 0, i32 0, !dbg !601
  %49 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %48, i32 0, i32 0, !dbg !602
  %50 = load i32, i32* %49, align 8, !dbg !602
  %51 = call i8* @inet_ntop2(i32 %50), !dbg !603
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i32 0, i32 0), i8* %44, i8* %51), !dbg !604
  br label %52, !dbg !604

; <label>:52:                                     ; preds = %41, %2
  %53 = load i32, i32* @garp_fd, align 4, !dbg !605
  %54 = load i8*, i8** @garp_buffer, align 8, !dbg !606
  %55 = load i64, i64* %4, align 8, !dbg !607
  %56 = bitcast %union.__CONST_SOCKADDR_ARG* %8 to %struct.sockaddr**, !dbg !608
  %57 = bitcast %struct.sockaddr_storage* %6 to %struct.sockaddr*, !dbg !608
  store %struct.sockaddr* %57, %struct.sockaddr** %56, align 8, !dbg !608
  %58 = getelementptr inbounds %union.__CONST_SOCKADDR_ARG, %union.__CONST_SOCKADDR_ARG* %8, i32 0, i32 0, !dbg !609
  %59 = load %struct.sockaddr*, %struct.sockaddr** %58, align 8, !dbg !609
  %60 = call i64 @sendto(i32 %53, i8* %54, i64 %55, i32 0, %struct.sockaddr* %59, i32 128), !dbg !609
  store i64 %60, i64* %7, align 8, !dbg !610
  %61 = load i64, i64* %7, align 8, !dbg !611
  %62 = icmp slt i64 %61, 0, !dbg !613
  br i1 %62, label %63, label %76, !dbg !614

; <label>:63:                                     ; preds = %52
  %64 = load %struct._ip_address*, %struct._ip_address** %3, align 8, !dbg !615
  %65 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %64, i32 0, i32 2, !dbg !616
  %66 = load %struct._interface*, %struct._interface** %65, align 8, !dbg !616
  %67 = getelementptr inbounds %struct._interface, %struct._interface* %66, i32 0, i32 0, !dbg !617
  %68 = getelementptr inbounds [16 x i8], [16 x i8]* %67, i32 0, i32 0, !dbg !618
  %69 = load %struct._ip_address*, %struct._ip_address** %3, align 8, !dbg !619
  %70 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %69, i32 0, i32 1, !dbg !620
  %71 = bitcast %union.anon.0* %70 to %struct.anon*, !dbg !621
  %72 = getelementptr inbounds %struct.anon, %struct.anon* %71, i32 0, i32 0, !dbg !622
  %73 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %72, i32 0, i32 0, !dbg !623
  %74 = load i32, i32* %73, align 8, !dbg !623
  %75 = call i8* @inet_ntop2(i32 %74), !dbg !624
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0), i8* %68, i8* %75), !dbg !625
  br label %76, !dbg !625

; <label>:76:                                     ; preds = %63, %52
  %77 = load i64, i64* %7, align 8, !dbg !626
  ret i64 %77, !dbg !627
}

; Function Attrs: inlinehint nounwind uwtable
define internal { i64, i64 } @timer_add_now(i64, i64) #4 !dbg !628 {
  %3 = alloca %struct.timeval, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = bitcast %struct.timeval* %4 to { i64, i64 }*
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i32 0, i32 0
  store i64 %0, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i32 0, i32 1
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval* %4, metadata !631, metadata !380), !dbg !632
  br label %8, !dbg !633, !llvm.loop !634

; <label>:8:                                      ; preds = %2
  %9 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @time_now, i32 0, i32 0), align 8, !dbg !635
  %10 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0, !dbg !635
  %11 = load i64, i64* %10, align 8, !dbg !635
  %12 = add nsw i64 %9, %11, !dbg !638
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0, !dbg !635
  store i64 %12, i64* %13, align 8, !dbg !638
  %14 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @time_now, i32 0, i32 1), align 8, !dbg !635
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1, !dbg !635
  %16 = load i64, i64* %15, align 8, !dbg !635
  %17 = add nsw i64 %14, %16, !dbg !639
  %18 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1, !dbg !635
  store i64 %17, i64* %18, align 8, !dbg !639
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1, !dbg !635
  %20 = load i64, i64* %19, align 8, !dbg !635
  %21 = icmp sge i64 %20, 1000000, !dbg !639
  br i1 %21, label %22, label %29, !dbg !640

; <label>:22:                                     ; preds = %8
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0, !dbg !641
  %24 = load i64, i64* %23, align 8, !dbg !645
  %25 = add nsw i64 %24, 1, !dbg !645
  store i64 %25, i64* %23, align 8, !dbg !645
  %26 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1, !dbg !641
  %27 = load i64, i64* %26, align 8, !dbg !646
  %28 = sub nsw i64 %27, 1000000, !dbg !646
  store i64 %28, i64* %26, align 8, !dbg !646
  br label %29, !dbg !647

; <label>:29:                                     ; preds = %22, %8
  br label %30, !dbg !648

; <label>:30:                                     ; preds = %29
  %31 = bitcast %struct.timeval* %3 to i8*, !dbg !650
  %32 = bitcast %struct.timeval* %4 to i8*, !dbg !650
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 16, i32 8, i1 false), !dbg !650
  %33 = bitcast %struct.timeval* %3 to { i64, i64 }*, !dbg !651
  %34 = load { i64, i64 }, { i64, i64 }* %33, align 8, !dbg !651
  ret { i64, i64 } %34, !dbg !651
}

; Function Attrs: nounwind uwtable
define void @send_gratuitous_arp(%struct._vrrp_t*, %struct._ip_address*) #0 !dbg !652 {
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca %struct._ip_address*, align 8
  %5 = alloca %struct._interface*, align 8
  %6 = alloca %struct.timeval, align 8
  store %struct._vrrp_t* %0, %struct._vrrp_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !903, metadata !380), !dbg !904
  store %struct._ip_address* %1, %struct._ip_address** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._ip_address** %4, metadata !905, metadata !380), !dbg !906
  call void @llvm.dbg.declare(metadata %struct._interface** %5, metadata !907, metadata !380), !dbg !908
  %7 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !909
  %8 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %7, i32 0, i32 2, !dbg !910
  %9 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !910
  %10 = getelementptr inbounds %struct._interface, %struct._interface* %9, i32 0, i32 14, !dbg !911
  %11 = load %struct._interface*, %struct._interface** %10, align 8, !dbg !911
  store %struct._interface* %11, %struct._interface** %5, align 8, !dbg !908
  %12 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !912
  %13 = getelementptr inbounds %struct._interface, %struct._interface* %12, i32 0, i32 4, !dbg !914
  %14 = load i32, i32* %13, align 8, !dbg !914
  %15 = and i32 %14, 128, !dbg !915
  %16 = icmp ne i32 %15, 0, !dbg !915
  br i1 %16, label %17, label %18, !dbg !916

; <label>:17:                                     ; preds = %2
  br label %80, !dbg !917

; <label>:18:                                     ; preds = %2
  %19 = call { i64, i64 } @set_time_now(), !dbg !918
  %20 = bitcast %struct.timeval* %6 to { i64, i64 }*, !dbg !918
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 0, !dbg !918
  %22 = extractvalue { i64, i64 } %19, 0, !dbg !918
  store i64 %22, i64* %21, align 8, !dbg !918
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 1, !dbg !918
  %24 = extractvalue { i64, i64 } %19, 1, !dbg !918
  store i64 %24, i64* %23, align 8, !dbg !918
  %25 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !919
  %26 = getelementptr inbounds %struct._interface, %struct._interface* %25, i32 0, i32 18, !dbg !921
  %27 = load %struct._garp_delay*, %struct._garp_delay** %26, align 8, !dbg !921
  %28 = icmp ne %struct._garp_delay* %27, null, !dbg !919
  br i1 %28, label %29, label %76, !dbg !922

; <label>:29:                                     ; preds = %18
  %30 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !923
  %31 = getelementptr inbounds %struct._interface, %struct._interface* %30, i32 0, i32 18, !dbg !924
  %32 = load %struct._garp_delay*, %struct._garp_delay** %31, align 8, !dbg !924
  %33 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %32, i32 0, i32 1, !dbg !925
  %34 = load i8, i8* %33, align 8, !dbg !925
  %35 = trunc i8 %34 to i1, !dbg !925
  br i1 %35, label %36, label %76, !dbg !926

; <label>:36:                                     ; preds = %29
  %37 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !927
  %38 = getelementptr inbounds %struct._interface, %struct._interface* %37, i32 0, i32 18, !dbg !928
  %39 = load %struct._garp_delay*, %struct._garp_delay** %38, align 8, !dbg !928
  %40 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %39, i32 0, i32 4, !dbg !929
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %40, i32 0, i32 0, !dbg !930
  %42 = load i64, i64* %41, align 8, !dbg !930
  %43 = icmp ne i64 %42, 0, !dbg !927
  br i1 %43, label %44, label %76, !dbg !931

; <label>:44:                                     ; preds = %36
  %45 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @time_now, i32 0, i32 0), align 8, !dbg !933
  %46 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !936
  %47 = getelementptr inbounds %struct._interface, %struct._interface* %46, i32 0, i32 18, !dbg !937
  %48 = load %struct._garp_delay*, %struct._garp_delay** %47, align 8, !dbg !937
  %49 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %48, i32 0, i32 4, !dbg !938
  %50 = getelementptr inbounds %struct.timeval, %struct.timeval* %49, i32 0, i32 0, !dbg !933
  %51 = load i64, i64* %50, align 8, !dbg !933
  %52 = icmp eq i64 %45, %51, !dbg !939
  br i1 %52, label %53, label %62, !dbg !940

; <label>:53:                                     ; preds = %44
  %54 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @time_now, i32 0, i32 1), align 8, !dbg !941
  %55 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !943
  %56 = getelementptr inbounds %struct._interface, %struct._interface* %55, i32 0, i32 18, !dbg !944
  %57 = load %struct._garp_delay*, %struct._garp_delay** %56, align 8, !dbg !944
  %58 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %57, i32 0, i32 4, !dbg !945
  %59 = getelementptr inbounds %struct.timeval, %struct.timeval* %58, i32 0, i32 1, !dbg !941
  %60 = load i64, i64* %59, align 8, !dbg !941
  %61 = icmp slt i64 %54, %60, !dbg !946
  br i1 %61, label %71, label %75, !dbg !943

; <label>:62:                                     ; preds = %44
  %63 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @time_now, i32 0, i32 0), align 8, !dbg !947
  %64 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !949
  %65 = getelementptr inbounds %struct._interface, %struct._interface* %64, i32 0, i32 18, !dbg !950
  %66 = load %struct._garp_delay*, %struct._garp_delay** %65, align 8, !dbg !950
  %67 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %66, i32 0, i32 4, !dbg !951
  %68 = getelementptr inbounds %struct.timeval, %struct.timeval* %67, i32 0, i32 0, !dbg !947
  %69 = load i64, i64* %68, align 8, !dbg !947
  %70 = icmp slt i64 %63, %69, !dbg !952
  br i1 %70, label %71, label %75, !dbg !952

; <label>:71:                                     ; preds = %62, %53
  %72 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !953
  %73 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !955
  %74 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !956
  call void @queue_garp(%struct._vrrp_t* %72, %struct._interface* %73, %struct._ip_address* %74), !dbg !957
  br label %80, !dbg !958

; <label>:75:                                     ; preds = %62, %53
  br label %76, !dbg !959

; <label>:76:                                     ; preds = %75, %36, %29, %18
  %77 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !960
  %78 = load %struct._ip_address*, %struct._ip_address** %4, align 8, !dbg !961
  %79 = call i64 @send_gratuitous_arp_immediate(%struct._interface* %77, %struct._ip_address* %78), !dbg !962
  br label %80, !dbg !963

; <label>:80:                                     ; preds = %76, %71, %17
  ret void, !dbg !964
}

declare { i64, i64 } @set_time_now() #5

; Function Attrs: nounwind uwtable
define internal void @queue_garp(%struct._vrrp_t*, %struct._interface*, %struct._ip_address*) #0 !dbg !965 {
  %4 = alloca %struct._vrrp_t*, align 8
  %5 = alloca %struct._interface*, align 8
  %6 = alloca %struct._ip_address*, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = alloca %struct.timeval, align 8
  store %struct._vrrp_t* %0, %struct._vrrp_t** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %4, metadata !968, metadata !380), !dbg !969
  store %struct._interface* %1, %struct._interface** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._interface** %5, metadata !970, metadata !380), !dbg !971
  store %struct._ip_address* %2, %struct._ip_address** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._ip_address** %6, metadata !972, metadata !380), !dbg !973
  call void @llvm.dbg.declare(metadata %struct.timeval* %7, metadata !974, metadata !380), !dbg !975
  %9 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !976
  %10 = getelementptr inbounds %struct._interface, %struct._interface* %9, i32 0, i32 18, !dbg !977
  %11 = load %struct._garp_delay*, %struct._garp_delay** %10, align 8, !dbg !977
  %12 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %11, i32 0, i32 0, !dbg !978
  %13 = bitcast %struct.timeval* %12 to { i64, i64 }*, !dbg !979
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i32 0, i32 0, !dbg !979
  %15 = load i64, i64* %14, align 8, !dbg !979
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i32 0, i32 1, !dbg !979
  %17 = load i64, i64* %16, align 8, !dbg !979
  %18 = call { i64, i64 } @timer_add_now(i64 %15, i64 %17), !dbg !979
  %19 = bitcast %struct.timeval* %7 to { i64, i64 }*, !dbg !979
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 0, !dbg !979
  %21 = extractvalue { i64, i64 } %18, 0, !dbg !979
  store i64 %21, i64* %20, align 8, !dbg !979
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 1, !dbg !979
  %23 = extractvalue { i64, i64 } %18, 1, !dbg !979
  store i64 %23, i64* %22, align 8, !dbg !979
  %24 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !980
  %25 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %24, i32 0, i32 31, !dbg !981
  store i8 1, i8* %25, align 4, !dbg !982
  %26 = load %struct._ip_address*, %struct._ip_address** %6, align 8, !dbg !983
  %27 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %26, i32 0, i32 12, !dbg !984
  store i8 1, i8* %27, align 2, !dbg !985
  %28 = load %struct._thread*, %struct._thread** @garp_thread, align 8, !dbg !986
  %29 = icmp ne %struct._thread* %28, null, !dbg !986
  br i1 %29, label %30, label %45, !dbg !988

; <label>:30:                                     ; preds = %3
  %31 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0, !dbg !989
  %32 = load i64, i64* %31, align 8, !dbg !989
  %33 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @garp_next_time, i32 0, i32 0), align 8, !dbg !989
  %34 = icmp eq i64 %32, %33, !dbg !991
  br i1 %34, label %35, label %40, !dbg !992

; <label>:35:                                     ; preds = %30
  %36 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1, !dbg !993
  %37 = load i64, i64* %36, align 8, !dbg !993
  %38 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @garp_next_time, i32 0, i32 1), align 8, !dbg !993
  %39 = icmp slt i64 %37, %38, !dbg !995
  br i1 %39, label %45, label %68, !dbg !996

; <label>:40:                                     ; preds = %30
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0, !dbg !997
  %42 = load i64, i64* %41, align 8, !dbg !997
  %43 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @garp_next_time, i32 0, i32 0), align 8, !dbg !997
  %44 = icmp slt i64 %42, %43, !dbg !999
  br i1 %44, label %45, label %68, !dbg !1000

; <label>:45:                                     ; preds = %40, %35, %3
  %46 = load %struct._thread*, %struct._thread** @garp_thread, align 8, !dbg !1001
  %47 = icmp ne %struct._thread* %46, null, !dbg !1001
  br i1 %47, label %48, label %50, !dbg !1004

; <label>:48:                                     ; preds = %45
  %49 = load %struct._thread*, %struct._thread** @garp_thread, align 8, !dbg !1005
  call void @thread_cancel(%struct._thread* %49), !dbg !1006
  br label %50, !dbg !1006

; <label>:50:                                     ; preds = %48, %45
  %51 = bitcast %struct.timeval* %7 to i8*, !dbg !1007
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.timeval* @garp_next_time to i8*), i8* %51, i64 16, i32 8, i1 false), !dbg !1007
  %52 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !1008
  %53 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.timeval* @garp_next_time to { i64, i64 }*), i32 0, i32 0), align 8, !dbg !1009
  %54 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.timeval* @garp_next_time to { i64, i64 }*), i32 0, i32 1), align 8, !dbg !1009
  %55 = call { i64, i64 } @timer_sub_now(i64 %53, i64 %54), !dbg !1009
  %56 = bitcast %struct.timeval* %8 to { i64, i64 }*, !dbg !1009
  %57 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %56, i32 0, i32 0, !dbg !1009
  %58 = extractvalue { i64, i64 } %55, 0, !dbg !1009
  store i64 %58, i64* %57, align 8, !dbg !1009
  %59 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %56, i32 0, i32 1, !dbg !1009
  %60 = extractvalue { i64, i64 } %55, 1, !dbg !1009
  store i64 %60, i64* %59, align 8, !dbg !1009
  %61 = bitcast %struct.timeval* %8 to { i64, i64 }*, !dbg !1010
  %62 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %61, i32 0, i32 0, !dbg !1010
  %63 = load i64, i64* %62, align 8, !dbg !1010
  %64 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %61, i32 0, i32 1, !dbg !1010
  %65 = load i64, i64* %64, align 8, !dbg !1010
  %66 = call i64 @timer_long(i64 %63, i64 %65), !dbg !1011
  %67 = call %struct._thread* @thread_add_timer(%struct._thread_master* %52, i32 (%struct._thread*)* @vrrp_arp_thread, i8* null, i64 %66), !dbg !1013
  store %struct._thread* %67, %struct._thread** @garp_thread, align 8, !dbg !1015
  br label %68, !dbg !1016

; <label>:68:                                     ; preds = %50, %40, %35
  ret void, !dbg !1017
}

; Function Attrs: nounwind uwtable
define void @gratuitous_arp_init() #0 !dbg !1018 {
  %1 = load i8*, i8** @garp_buffer, align 8, !dbg !1021
  %2 = icmp ne i8* %1, null, !dbg !1021
  br i1 %2, label %3, label %4, !dbg !1023

; <label>:3:                                      ; preds = %0
  br label %13, !dbg !1024

; <label>:4:                                      ; preds = %0
  %5 = call i8* @zalloc(i64 80), !dbg !1025
  store i8* %5, i8** @garp_buffer, align 8, !dbg !1026
  %6 = call zeroext i16 @htons(i16 zeroext -32715) #1, !dbg !1027
  %7 = zext i16 %6 to i32, !dbg !1027
  %8 = call i32 @socket(i32 17, i32 524291, i32 %7) #7, !dbg !1028
  store i32 %8, i32* @garp_fd, align 4, !dbg !1030
  %9 = load i32, i32* @garp_fd, align 4, !dbg !1031
  %10 = icmp sgt i32 %9, 0, !dbg !1033
  br i1 %10, label %11, label %12, !dbg !1034

; <label>:11:                                     ; preds = %4
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0)), !dbg !1035
  br label %13, !dbg !1035

; <label>:12:                                     ; preds = %4
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0)), !dbg !1036
  br label %13, !dbg !1038

; <label>:13:                                     ; preds = %3, %12, %11
  ret void, !dbg !1039
}

declare i8* @zalloc(i64) #5

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #6

declare void @log_message(i32, i8*, ...) #5

; Function Attrs: nounwind uwtable
define void @gratuitous_arp_close() #0 !dbg !1040 {
  %1 = load i8*, i8** @garp_buffer, align 8, !dbg !1041
  %2 = icmp ne i8* %1, null, !dbg !1041
  br i1 %2, label %4, label %3, !dbg !1043

; <label>:3:                                      ; preds = %0
  br label %8, !dbg !1044

; <label>:4:                                      ; preds = %0
  %5 = load i8*, i8** @garp_buffer, align 8, !dbg !1045
  call void @free(i8* %5) #7, !dbg !1046
  store i8* null, i8** @garp_buffer, align 8, !dbg !1047
  store i8* null, i8** @garp_buffer, align 8, !dbg !1048
  %6 = load i32, i32* @garp_fd, align 4, !dbg !1049
  %7 = call i32 @close(i32 %6), !dbg !1050
  store i32 -1, i32* @garp_fd, align 4, !dbg !1051
  br label %8, !dbg !1052

; <label>:8:                                      ; preds = %4, %3
  ret void, !dbg !1053
}

; Function Attrs: nounwind
declare void @free(i8*) #6

declare i32 @close(i32) #5

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @__test_bit(i32, i64*) #4 !dbg !1055 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1060, metadata !380), !dbg !1061
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !1062, metadata !380), !dbg !1063
  %5 = load i32, i32* %3, align 4, !dbg !1064
  %6 = zext i32 %5 to i64, !dbg !1065
  %7 = udiv i64 %6, 64, !dbg !1066
  %8 = load i64*, i64** %4, align 8, !dbg !1067
  %9 = getelementptr inbounds i64, i64* %8, i64 %7, !dbg !1067
  %10 = load i64, i64* %9, align 8, !dbg !1067
  %11 = load i32, i32* %3, align 4, !dbg !1068
  %12 = zext i32 %11 to i64, !dbg !1069
  %13 = urem i64 %12, 64, !dbg !1070
  %14 = shl i64 1, %13, !dbg !1071
  %15 = and i64 %10, %14, !dbg !1072
  %16 = icmp ne i64 %15, 0, !dbg !1073
  %17 = xor i1 %16, true, !dbg !1073
  %18 = xor i1 %17, true, !dbg !1074
  ret i1 %18, !dbg !1075
}

declare i8* @inet_ntop2(i32) #5

declare i64 @sendto(i32, i8*, i64, i32, %struct.sockaddr*, i32) #5

declare void @thread_cancel(%struct._thread*) #5

declare %struct._thread* @thread_add_timer(%struct._thread_master*, i32 (%struct._thread*)*, i8*, i64) #5

declare i32 @vrrp_arp_thread(%struct._thread*) #5

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @timer_long(i64, i64) #4 !dbg !1076 {
  %3 = alloca %struct.timeval, align 8
  %4 = bitcast %struct.timeval* %3 to { i64, i64 }*
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  store i64 %0, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval* %3, metadata !1079, metadata !380), !dbg !1080
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0, !dbg !1081
  %8 = load i64, i64* %7, align 8, !dbg !1081
  %9 = mul i64 %8, 1000000, !dbg !1082
  %10 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1, !dbg !1083
  %11 = load i64, i64* %10, align 8, !dbg !1083
  %12 = add i64 %9, %11, !dbg !1084
  ret i64 %12, !dbg !1085
}

; Function Attrs: inlinehint nounwind uwtable
define internal { i64, i64 } @timer_sub_now(i64, i64) #4 !dbg !1086 {
  %3 = alloca %struct.timeval, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = bitcast %struct.timeval* %4 to { i64, i64 }*
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i32 0, i32 0
  store i64 %0, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i32 0, i32 1
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval* %4, metadata !1087, metadata !380), !dbg !1088
  br label %8, !dbg !1089, !llvm.loop !1090

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0, !dbg !1091
  %10 = load i64, i64* %9, align 8, !dbg !1091
  %11 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @time_now, i32 0, i32 0), align 8, !dbg !1091
  %12 = sub nsw i64 %10, %11, !dbg !1094
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0, !dbg !1091
  store i64 %12, i64* %13, align 8, !dbg !1094
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1, !dbg !1091
  %15 = load i64, i64* %14, align 8, !dbg !1091
  %16 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @time_now, i32 0, i32 1), align 8, !dbg !1091
  %17 = sub nsw i64 %15, %16, !dbg !1095
  %18 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1, !dbg !1091
  store i64 %17, i64* %18, align 8, !dbg !1095
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1, !dbg !1091
  %20 = load i64, i64* %19, align 8, !dbg !1091
  %21 = icmp slt i64 %20, 0, !dbg !1095
  br i1 %21, label %22, label %29, !dbg !1096

; <label>:22:                                     ; preds = %8
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0, !dbg !1097
  %24 = load i64, i64* %23, align 8, !dbg !1101
  %25 = add nsw i64 %24, -1, !dbg !1101
  store i64 %25, i64* %23, align 8, !dbg !1101
  %26 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1, !dbg !1097
  %27 = load i64, i64* %26, align 8, !dbg !1102
  %28 = add nsw i64 %27, 1000000, !dbg !1102
  store i64 %28, i64* %26, align 8, !dbg !1102
  br label %29, !dbg !1103

; <label>:29:                                     ; preds = %22, %8
  br label %30, !dbg !1104

; <label>:30:                                     ; preds = %29
  %31 = bitcast %struct.timeval* %3 to i8*, !dbg !1106
  %32 = bitcast %struct.timeval* %4 to i8*, !dbg !1106
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 16, i32 8, i1 false), !dbg !1106
  %33 = bitcast %struct.timeval* %3 to { i64, i64 }*, !dbg !1107
  %34 = load { i64, i64 }, { i64, i64 }* %33, align 8, !dbg !1107
  ret { i64, i64 } %34, !dbg !1107
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
!llvm.module.flags = !{!226, !227}
!llvm.ident = !{!228}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !78, globals: !143)
!1 = !DIFile(filename: "[inter]keepalived--vrrp--vrrp_arp.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!2 = !{!3, !11, !32, !51, !63}
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
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 42, size: 32, align: 32, elements: !34)
!33 = !DIFile(filename: "/usr/include/net/if.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!34 = !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!35 = !DIEnumerator(name: "IFF_UP", value: 1)
!36 = !DIEnumerator(name: "IFF_BROADCAST", value: 2)
!37 = !DIEnumerator(name: "IFF_DEBUG", value: 4)
!38 = !DIEnumerator(name: "IFF_LOOPBACK", value: 8)
!39 = !DIEnumerator(name: "IFF_POINTOPOINT", value: 16)
!40 = !DIEnumerator(name: "IFF_NOTRAILERS", value: 32)
!41 = !DIEnumerator(name: "IFF_RUNNING", value: 64)
!42 = !DIEnumerator(name: "IFF_NOARP", value: 128)
!43 = !DIEnumerator(name: "IFF_PROMISC", value: 256)
!44 = !DIEnumerator(name: "IFF_ALLMULTI", value: 512)
!45 = !DIEnumerator(name: "IFF_MASTER", value: 1024)
!46 = !DIEnumerator(name: "IFF_SLAVE", value: 2048)
!47 = !DIEnumerator(name: "IFF_MULTICAST", value: 4096)
!48 = !DIEnumerator(name: "IFF_PORTSEL", value: 8192)
!49 = !DIEnumerator(name: "IFF_AUTOMEDIA", value: 16384)
!50 = !DIEnumerator(name: "IFF_DYNAMIC", value: 32768)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !52, line: 24, size: 32, align: 32, elements: !53)
!52 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!53 = !{!54, !55, !56, !57, !58, !59, !60, !61, !62}
!54 = !DIEnumerator(name: "SOCK_STREAM", value: 1)
!55 = !DIEnumerator(name: "SOCK_DGRAM", value: 2)
!56 = !DIEnumerator(name: "SOCK_RAW", value: 3)
!57 = !DIEnumerator(name: "SOCK_RDM", value: 4)
!58 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5)
!59 = !DIEnumerator(name: "SOCK_DCCP", value: 6)
!60 = !DIEnumerator(name: "SOCK_PACKET", value: 10)
!61 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288)
!62 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "global_bits", file: !64, line: 53, size: 32, align: 32, elements: !65)
!64 = !DIFile(filename: "../../lib/bitops.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!65 = !{!66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77}
!66 = !DIEnumerator(name: "LOG_CONSOLE_BIT", value: 0)
!67 = !DIEnumerator(name: "NO_SYSLOG_BIT", value: 1)
!68 = !DIEnumerator(name: "DONT_FORK_BIT", value: 2)
!69 = !DIEnumerator(name: "DUMP_CONF_BIT", value: 3)
!70 = !DIEnumerator(name: "DONT_RELEASE_VRRP_BIT", value: 4)
!71 = !DIEnumerator(name: "RELEASE_VIPS_BIT", value: 5)
!72 = !DIEnumerator(name: "DONT_RELEASE_IPVS_BIT", value: 6)
!73 = !DIEnumerator(name: "LOG_DETAIL_BIT", value: 7)
!74 = !DIEnumerator(name: "LOG_EXTRA_DETAIL_BIT", value: 8)
!75 = !DIEnumerator(name: "DONT_RESPAWN_BIT", value: 9)
!76 = !DIEnumerator(name: "LOG_ADDRESS_CHANGES", value: 10)
!77 = !DIEnumerator(name: "CONFIG_TEST_BIT", value: 11)
!78 = !{!79, !81, !90, !100, !111, !122, !130, !141, !142}
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ipoib_hdr", file: !83, line: 49, size: 32, align: 16, elements: !84)
!83 = !DIFile(filename: "./../include/vrrp_arp.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!84 = !{!85, !89}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !82, file: !83, line: 50, baseType: !86, size: 16, align: 16)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int16_t", file: !87, line: 201, baseType: !88)
!87 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!88 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !82, file: !83, line: 51, baseType: !86, size: 16, align: 16, offset: 16)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arphdr", file: !92, line: 54, size: 64, align: 16, elements: !93)
!92 = !DIFile(filename: "/usr/include/net/if_arp.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!93 = !{!94, !95, !96, !98, !99}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "ar_hrd", scope: !91, file: !92, line: 56, baseType: !88, size: 16, align: 16)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "ar_pro", scope: !91, file: !92, line: 57, baseType: !88, size: 16, align: 16, offset: 16)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "ar_hln", scope: !91, file: !92, line: 58, baseType: !97, size: 8, align: 8, offset: 32)
!97 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "ar_pln", scope: !91, file: !92, line: 59, baseType: !97, size: 8, align: 8, offset: 40)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "ar_op", scope: !91, file: !92, line: 60, baseType: !88, size: 16, align: 16, offset: 48)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ether_header", file: !102, line: 38, size: 112, align: 8, elements: !103)
!102 = !DIFile(filename: "/usr/include/net/ethernet.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!103 = !{!104, !109, !110}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "ether_dhost", scope: !101, file: !102, line: 40, baseType: !105, size: 48, align: 8)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !106, size: 48, align: 8, elements: !107)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int8_t", file: !87, line: 200, baseType: !97)
!107 = !{!108}
!108 = !DISubrange(count: 6)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "ether_shost", scope: !101, file: !102, line: 41, baseType: !105, size: 48, align: 8, offset: 48)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "ether_type", scope: !101, file: !102, line: 42, baseType: !86, size: 16, align: 16, offset: 96)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_large_ll", file: !113, line: 57, size: 256, align: 32, elements: !114)
!113 = !DIFile(filename: "vrrp_arp.c", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!114 = !{!115, !116, !121, !123, !124, !125, !126}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "sll_family", scope: !112, file: !113, line: 58, baseType: !88, size: 16, align: 16)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "sll_protocol", scope: !112, file: !113, line: 59, baseType: !117, size: 16, align: 16, offset: 16)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !118, line: 28, baseType: !119)
!118 = !DIFile(filename: "/usr/include/linux/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !120, line: 23, baseType: !88)
!120 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!121 = !DIDerivedType(tag: DW_TAG_member, name: "sll_ifindex", scope: !112, file: !113, line: 60, baseType: !122, size: 32, align: 32, offset: 32)
!122 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "sll_hatype", scope: !112, file: !113, line: 61, baseType: !88, size: 16, align: 16, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "sll_pkttype", scope: !112, file: !113, line: 62, baseType: !97, size: 8, align: 8, offset: 80)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "sll_halen", scope: !112, file: !113, line: 63, baseType: !97, size: 8, align: 8, offset: 88)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "sll_addr", scope: !112, file: !113, line: 64, baseType: !127, size: 160, align: 8, offset: 96)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 160, align: 8, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 20)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !132, line: 153, size: 128, align: 16, elements: !133)
!132 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!133 = !{!134, !137}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !131, file: !132, line: 155, baseType: !135, size: 16, align: 16)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !136, line: 28, baseType: !88)
!136 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!137 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !131, file: !132, line: 156, baseType: !138, size: 112, align: 8, offset: 16)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 112, align: 8, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 14)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!142 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!143 = !{!144, !224, !225}
!144 = distinct !DIGlobalVariable(name: "garp_delay", scope: !0, file: !145, line: 150, type: !146, isLocal: false, isDefinition: true, variable: %struct._list** @garp_delay)
!145 = !DIFile(filename: "./../include/vrrp_if.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !147, line: 31, baseType: !148)
!147 = !DIFile(filename: "../../lib/list.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_list", file: !147, line: 39, size: 320, align: 64, elements: !150)
!150 = !{!151, !158, !159, !161, !165}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !149, file: !147, line: 40, baseType: !152, size: 64, align: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !147, line: 33, size: 192, align: 64, elements: !154)
!154 = !{!155, !156, !157}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !153, file: !147, line: 34, baseType: !152, size: 64, align: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !153, file: !147, line: 35, baseType: !152, size: 64, align: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !153, file: !147, line: 36, baseType: !141, size: 64, align: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !149, file: !147, line: 41, baseType: !152, size: 64, align: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !149, file: !147, line: 42, baseType: !160, size: 32, align: 32, offset: 128)
!160 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !149, file: !147, line: 43, baseType: !162, size: 64, align: 64, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{null, !141}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !149, file: !147, line: 44, baseType: !166, size: 64, align: 64, offset: 256)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{null, !169, !141}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64, align: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !171, line: 48, baseType: !172)
!171 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !173, line: 241, size: 1728, align: 64, elements: !174)
!173 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!174 = !{!175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !195, !196, !197, !198, !202, !203, !205, !209, !212, !214, !215, !216, !217, !218, !221, !222}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !172, file: !173, line: 242, baseType: !122, size: 32, align: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !172, file: !173, line: 247, baseType: !79, size: 64, align: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !172, file: !173, line: 248, baseType: !79, size: 64, align: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !172, file: !173, line: 249, baseType: !79, size: 64, align: 64, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !172, file: !173, line: 250, baseType: !79, size: 64, align: 64, offset: 256)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !172, file: !173, line: 251, baseType: !79, size: 64, align: 64, offset: 320)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !172, file: !173, line: 252, baseType: !79, size: 64, align: 64, offset: 384)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !172, file: !173, line: 253, baseType: !79, size: 64, align: 64, offset: 448)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !172, file: !173, line: 254, baseType: !79, size: 64, align: 64, offset: 512)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !172, file: !173, line: 256, baseType: !79, size: 64, align: 64, offset: 576)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !172, file: !173, line: 257, baseType: !79, size: 64, align: 64, offset: 640)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !172, file: !173, line: 258, baseType: !79, size: 64, align: 64, offset: 704)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !172, file: !173, line: 260, baseType: !188, size: 64, align: 64, offset: 768)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, align: 64)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !173, line: 156, size: 192, align: 64, elements: !190)
!190 = !{!191, !192, !194}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !189, file: !173, line: 157, baseType: !188, size: 64, align: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !189, file: !173, line: 158, baseType: !193, size: 64, align: 64, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !189, file: !173, line: 162, baseType: !122, size: 32, align: 32, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !172, file: !173, line: 262, baseType: !193, size: 64, align: 64, offset: 832)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !172, file: !173, line: 264, baseType: !122, size: 32, align: 32, offset: 896)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !172, file: !173, line: 268, baseType: !122, size: 32, align: 32, offset: 928)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !172, file: !173, line: 270, baseType: !199, size: 64, align: 64, offset: 960)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !200, line: 131, baseType: !201)
!200 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!201 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !172, file: !173, line: 274, baseType: !88, size: 16, align: 16, offset: 1024)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !172, file: !173, line: 275, baseType: !204, size: 8, align: 8, offset: 1040)
!204 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !172, file: !173, line: 276, baseType: !206, size: 8, align: 8, offset: 1048)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 8, align: 8, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 1)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !172, file: !173, line: 280, baseType: !210, size: 64, align: 64, offset: 1088)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !173, line: 150, baseType: null)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !172, file: !173, line: 289, baseType: !213, size: 64, align: 64, offset: 1152)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !200, line: 132, baseType: !201)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !172, file: !173, line: 297, baseType: !141, size: 64, align: 64, offset: 1216)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !172, file: !173, line: 298, baseType: !141, size: 64, align: 64, offset: 1280)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !172, file: !173, line: 299, baseType: !141, size: 64, align: 64, offset: 1344)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !172, file: !173, line: 300, baseType: !141, size: 64, align: 64, offset: 1408)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !172, file: !173, line: 302, baseType: !219, size: 64, align: 64, offset: 1472)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !220, line: 216, baseType: !142)
!220 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !172, file: !173, line: 303, baseType: !122, size: 32, align: 32, offset: 1536)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !172, file: !173, line: 305, baseType: !223, size: 160, align: 8, offset: 1568)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 160, align: 8, elements: !128)
!224 = distinct !DIGlobalVariable(name: "garp_buffer", scope: !0, file: !113, line: 68, type: !79, isLocal: true, isDefinition: true, variable: i8** @garp_buffer)
!225 = distinct !DIGlobalVariable(name: "garp_fd", scope: !0, file: !113, line: 69, type: !122, isLocal: true, isDefinition: true, variable: i32* @garp_fd)
!226 = !{i32 2, !"Dwarf Version", i32 4}
!227 = !{i32 2, !"Debug Info Version", i32 3}
!228 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!229 = distinct !DISubprogram(name: "send_gratuitous_arp_immediate", scope: !113, file: !113, line: 102, type: !230, isLocal: false, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!230 = !DISubroutineType(types: !231)
!231 = !{!232, !235, !321}
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !233, line: 223, baseType: !234)
!233 = !DIFile(filename: "/usr/include/unistd.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !200, line: 172, baseType: !201)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "interface_t", file: !145, line: 111, baseType: !237)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_interface", file: !145, line: 76, size: 1792, align: 64, elements: !238)
!238 = !{!239, !243, !247, !253, !271, !272, !274, !275, !276, !282, !283, !284, !285, !286, !287, !289, !290, !291, !292, !313, !314, !315, !316, !317, !318, !319, !320}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "ifname", scope: !237, file: !145, line: 77, baseType: !240, size: 128, align: 8)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 128, align: 8, elements: !241)
!241 = !{!242}
!242 = !DISubrange(count: 16)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !237, file: !145, line: 78, baseType: !244, size: 32, align: 32, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "ifindex_t", file: !145, line: 62, baseType: !245)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !246, line: 51, baseType: !160)
!246 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!247 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !237, file: !145, line: 79, baseType: !248, size: 32, align: 32, offset: 160)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !249, line: 31, size: 32, align: 32, elements: !250)
!249 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!250 = !{!251}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !248, file: !249, line: 33, baseType: !252, size: 32, align: 32)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !249, line: 30, baseType: !245)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !237, file: !145, line: 80, baseType: !254, size: 128, align: 32, offset: 192)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !249, line: 211, size: 128, align: 32, elements: !255)
!255 = !{!256}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !254, file: !249, line: 220, baseType: !257, size: 128, align: 32)
!257 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !254, file: !249, line: 213, size: 128, align: 32, elements: !258)
!258 = !{!259, !262, !267}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !257, file: !249, line: 215, baseType: !260, size: 128, align: 8)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 128, align: 8, elements: !241)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !246, line: 48, baseType: !97)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !257, file: !249, line: 217, baseType: !263, size: 128, align: 16)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 128, align: 16, elements: !265)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !246, line: 49, baseType: !88)
!265 = !{!266}
!266 = !DISubrange(count: 8)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !257, file: !249, line: 218, baseType: !268, size: 128, align: 32)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 128, align: 32, elements: !269)
!269 = !{!270}
!270 = !DISubrange(count: 4)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "ifi_flags", scope: !237, file: !145, line: 81, baseType: !160, size: 32, align: 32, offset: 320)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "linkbeat_use_polling", scope: !237, file: !145, line: 82, baseType: !273, size: 8, align: 8, offset: 352)
!273 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !237, file: !145, line: 83, baseType: !245, size: 32, align: 32, offset: 384)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "hw_type", scope: !237, file: !145, line: 84, baseType: !88, size: 16, align: 16, offset: 416)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr", scope: !237, file: !145, line: 85, baseType: !277, size: 256, align: 8, offset: 432)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 256, align: 8, elements: !280)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !87, line: 33, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !200, line: 30, baseType: !97)
!280 = !{!281}
!281 = !DISubrange(count: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_bcast", scope: !237, file: !145, line: 86, baseType: !277, size: 256, align: 8, offset: 688)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_len", scope: !237, file: !145, line: 87, baseType: !219, size: 64, align: 64, offset: 960)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "lb_type", scope: !237, file: !145, line: 88, baseType: !122, size: 32, align: 32, offset: 1024)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "vmac", scope: !237, file: !145, line: 90, baseType: !273, size: 8, align: 8, offset: 1056)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifindex", scope: !237, file: !145, line: 91, baseType: !244, size: 32, align: 32, offset: 1088)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifp", scope: !237, file: !145, line: 92, baseType: !288, size: 64, align: 64, offset: 1152)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64, align: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifindex", scope: !237, file: !145, line: 94, baseType: !244, size: 32, align: 32, offset: 1216)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifp", scope: !237, file: !145, line: 96, baseType: !288, size: 64, align: 64, offset: 1280)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master", scope: !237, file: !145, line: 97, baseType: !273, size: 8, align: 8, offset: 1344)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "garp_delay", scope: !237, file: !145, line: 100, baseType: !293, size: 64, align: 64, offset: 1408)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64, align: 64)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "garp_delay_t", file: !145, line: 73, baseType: !295)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_garp_delay", file: !145, line: 65, size: 704, align: 64, elements: !296)
!296 = !{!297, !307, !308, !309, !310, !311, !312}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "garp_interval", scope: !295, file: !145, line: 66, baseType: !298, size: 128, align: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "timeval_t", file: !299, line: 31, baseType: !300)
!299 = !DIFile(filename: "../../lib/timer.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !301, line: 30, size: 128, align: 64, elements: !302)
!301 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!302 = !{!303, !305}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !300, file: !301, line: 32, baseType: !304, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !200, line: 139, baseType: !201)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !300, file: !301, line: 33, baseType: !306, size: 64, align: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !200, line: 141, baseType: !201)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "have_garp_interval", scope: !295, file: !145, line: 67, baseType: !273, size: 8, align: 8, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "gna_interval", scope: !295, file: !145, line: 68, baseType: !298, size: 128, align: 64, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "have_gna_interval", scope: !295, file: !145, line: 69, baseType: !273, size: 8, align: 8, offset: 320)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "garp_next_time", scope: !295, file: !145, line: 70, baseType: !298, size: 128, align: 64, offset: 384)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "gna_next_time", scope: !295, file: !145, line: 71, baseType: !298, size: 128, align: 64, offset: 512)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "aggregation_group", scope: !295, file: !145, line: 72, baseType: !122, size: 32, align: 32, offset: 640)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "gna_router", scope: !237, file: !145, line: 101, baseType: !273, size: 8, align: 8, offset: 1472)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_config", scope: !237, file: !145, line: 102, baseType: !122, size: 32, align: 32, offset: 1504)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_ignore_value", scope: !237, file: !145, line: 103, baseType: !245, size: 32, align: 32, offset: 1536)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_filter_value", scope: !237, file: !145, line: 104, baseType: !245, size: 32, align: 32, offset: 1568)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "reset_promote_secondaries", scope: !237, file: !145, line: 105, baseType: !245, size: 32, align: 32, offset: 1600)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "rp_filter", scope: !237, file: !145, line: 107, baseType: !160, size: 32, align: 32, offset: 1632)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "promote_secondaries_already_set", scope: !237, file: !145, line: 109, baseType: !273, size: 8, align: 8, offset: 1664)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tracking_vrrp", scope: !237, file: !145, line: 110, baseType: !146, size: 64, align: 64, offset: 1728)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64, align: 64)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_address_t", file: !323, line: 73, baseType: !324)
!323 = !DIFile(filename: "./../include/vrrp_ipaddress.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ip_address", file: !323, line: 41, size: 704, align: 64, elements: !325)
!325 = !{!326, !337, !346, !347, !348, !349, !350, !351, !356, !357, !375, !376, !377}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "ifa", scope: !324, file: !323, line: 42, baseType: !327, size: 64, align: 32)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ifaddrmsg", file: !328, line: 7, size: 64, align: 32, elements: !329)
!328 = !DIFile(filename: "/usr/include/linux/if_addr.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!329 = !{!330, !332, !333, !334, !335}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_family", scope: !327, file: !328, line: 8, baseType: !331, size: 8, align: 8)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !120, line: 20, baseType: !97)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_prefixlen", scope: !327, file: !328, line: 9, baseType: !331, size: 8, align: 8, offset: 8)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_flags", scope: !327, file: !328, line: 10, baseType: !331, size: 8, align: 8, offset: 16)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_scope", scope: !327, file: !328, line: 11, baseType: !331, size: 8, align: 8, offset: 24)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_index", scope: !327, file: !328, line: 12, baseType: !336, size: 32, align: 32, offset: 32)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !120, line: 26, baseType: !160)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !324, file: !323, line: 50, baseType: !338, size: 128, align: 32, offset: 64)
!338 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !324, file: !323, line: 44, size: 128, align: 32, elements: !339)
!339 = !{!340, !345}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "sin", scope: !338, file: !323, line: 48, baseType: !341, size: 64, align: 32)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !338, file: !323, line: 45, size: 64, align: 32, elements: !342)
!342 = !{!343, !344}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !341, file: !323, line: 46, baseType: !248, size: 32, align: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "sin_brd", scope: !341, file: !323, line: 47, baseType: !248, size: 32, align: 32, offset: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !338, file: !323, line: 49, baseType: !254, size: 128, align: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "ifp", scope: !324, file: !323, line: 52, baseType: !235, size: 64, align: 64, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !324, file: !323, line: 53, baseType: !79, size: 64, align: 64, offset: 256)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !324, file: !323, line: 55, baseType: !245, size: 32, align: 32, offset: 320)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "flagmask", scope: !324, file: !323, line: 56, baseType: !245, size: 32, align: 32, offset: 352)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "have_peer", scope: !324, file: !323, line: 61, baseType: !273, size: 8, align: 8, offset: 384)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !324, file: !323, line: 65, baseType: !352, size: 128, align: 32, offset: 416)
!352 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !324, file: !323, line: 62, size: 128, align: 32, elements: !353)
!353 = !{!354, !355}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !352, file: !323, line: 63, baseType: !248, size: 32, align: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !352, file: !323, line: 64, baseType: !254, size: 128, align: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "dont_track", scope: !324, file: !323, line: 66, baseType: !273, size: 8, align: 8, offset: 544)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "track_group", scope: !324, file: !323, line: 67, baseType: !358, size: 64, align: 64, offset: 576)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "static_track_group_t", file: !360, line: 39, baseType: !361)
!360 = !DIFile(filename: "./../include/vrrp_static_track.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_static_track_group", file: !360, line: 35, size: 192, align: 64, elements: !362)
!362 = !{!363, !364, !374}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !361, file: !360, line: 36, baseType: !79, size: 64, align: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !361, file: !360, line: 37, baseType: !365, size: 64, align: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64, align: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "vector_t", file: !367, line: 34, baseType: !368)
!367 = !DIFile(filename: "../../lib/vector.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vector", file: !367, line: 30, size: 128, align: 64, elements: !369)
!369 = !{!370, !371, !372}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !368, file: !367, line: 31, baseType: !160, size: 32, align: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !368, file: !367, line: 32, baseType: !160, size: 32, align: 32, offset: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !368, file: !367, line: 33, baseType: !373, size: 64, align: 64, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp_instances", scope: !361, file: !360, line: 38, baseType: !146, size: 64, align: 64, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !324, file: !323, line: 69, baseType: !273, size: 8, align: 8, offset: 640)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "iptable_rule_set", scope: !324, file: !323, line: 70, baseType: !273, size: 8, align: 8, offset: 648)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "garp_gna_pending", scope: !324, file: !323, line: 72, baseType: !273, size: 8, align: 8, offset: 656)
!378 = !{}
!379 = !DILocalVariable(name: "ifp", arg: 1, scope: !229, file: !113, line: 102, type: !235)
!380 = !DIExpression()
!381 = !DILocation(line: 102, column: 52, scope: !229)
!382 = !DILocalVariable(name: "ipaddress", arg: 2, scope: !229, file: !113, line: 102, type: !321)
!383 = !DILocation(line: 102, column: 71, scope: !229)
!384 = !DILocalVariable(name: "hwaddr", scope: !229, file: !113, line: 104, type: !79)
!385 = !DILocation(line: 104, column: 8, scope: !229)
!386 = !DILocation(line: 104, column: 28, scope: !229)
!387 = !DILocation(line: 104, column: 39, scope: !229)
!388 = !DILocation(line: 104, column: 45, scope: !229)
!389 = !DILocation(line: 104, column: 26, scope: !229)
!390 = !DILocalVariable(name: "arph", scope: !229, file: !113, line: 105, type: !90)
!391 = !DILocation(line: 105, column: 17, scope: !229)
!392 = !DILocalVariable(name: "arp_ptr", scope: !229, file: !113, line: 106, type: !79)
!393 = !DILocation(line: 106, column: 8, scope: !229)
!394 = !DILocalVariable(name: "len", scope: !229, file: !113, line: 107, type: !232)
!395 = !DILocation(line: 107, column: 10, scope: !229)
!396 = !DILocalVariable(name: "pack_len", scope: !229, file: !113, line: 107, type: !232)
!397 = !DILocation(line: 107, column: 15, scope: !229)
!398 = !DILocation(line: 109, column: 6, scope: !399)
!399 = distinct !DILexicalBlock(scope: !229, file: !113, line: 109, column: 6)
!400 = !DILocation(line: 109, column: 11, scope: !399)
!401 = !DILocation(line: 109, column: 23, scope: !399)
!402 = !DILocation(line: 109, column: 6, scope: !229)
!403 = !DILocation(line: 110, column: 3, scope: !399)
!404 = !DILocation(line: 113, column: 6, scope: !405)
!405 = distinct !DILexicalBlock(scope: !229, file: !113, line: 113, column: 6)
!406 = !DILocation(line: 113, column: 11, scope: !405)
!407 = !DILocation(line: 113, column: 19, scope: !405)
!408 = !DILocation(line: 113, column: 6, scope: !229)
!409 = !DILocalVariable(name: "ipoib", scope: !410, file: !113, line: 114, type: !81)
!410 = distinct !DILexicalBlock(scope: !405, file: !113, line: 113, column: 40)
!411 = !DILocation(line: 114, column: 21, scope: !410)
!412 = !DILocation(line: 117, column: 10, scope: !410)
!413 = !DILocation(line: 117, column: 23, scope: !410)
!414 = !DILocation(line: 117, column: 28, scope: !410)
!415 = !DILocation(line: 117, column: 3, scope: !410)
!416 = !DILocation(line: 117, column: 43, scope: !410)
!417 = !DILocation(line: 117, column: 48, scope: !410)
!418 = !DILocation(line: 118, column: 33, scope: !410)
!419 = !DILocation(line: 118, column: 47, scope: !410)
!420 = !DILocation(line: 118, column: 52, scope: !410)
!421 = !DILocation(line: 118, column: 45, scope: !410)
!422 = !DILocation(line: 118, column: 11, scope: !410)
!423 = !DILocation(line: 118, column: 9, scope: !410)
!424 = !DILocation(line: 119, column: 18, scope: !410)
!425 = !DILocation(line: 119, column: 3, scope: !410)
!426 = !DILocation(line: 119, column: 10, scope: !410)
!427 = !DILocation(line: 119, column: 16, scope: !410)
!428 = !DILocation(line: 120, column: 3, scope: !410)
!429 = !DILocation(line: 120, column: 10, scope: !410)
!430 = !DILocation(line: 120, column: 19, scope: !410)
!431 = !DILocation(line: 121, column: 29, scope: !410)
!432 = !DILocation(line: 121, column: 43, scope: !410)
!433 = !DILocation(line: 121, column: 48, scope: !410)
!434 = !DILocation(line: 121, column: 41, scope: !410)
!435 = !DILocation(line: 121, column: 60, scope: !410)
!436 = !DILocation(line: 121, column: 10, scope: !410)
!437 = !DILocation(line: 121, column: 8, scope: !410)
!438 = !DILocation(line: 123, column: 2, scope: !410)
!439 = !DILocalVariable(name: "eth", scope: !440, file: !113, line: 124, type: !100)
!440 = distinct !DILexicalBlock(scope: !405, file: !113, line: 123, column: 9)
!441 = !DILocation(line: 124, column: 24, scope: !440)
!442 = !DILocation(line: 126, column: 33, scope: !440)
!443 = !DILocation(line: 126, column: 9, scope: !440)
!444 = !DILocation(line: 126, column: 7, scope: !440)
!445 = !DILocation(line: 127, column: 10, scope: !440)
!446 = !DILocation(line: 127, column: 15, scope: !440)
!447 = !DILocation(line: 127, column: 3, scope: !440)
!448 = !DILocation(line: 128, column: 10, scope: !440)
!449 = !DILocation(line: 128, column: 15, scope: !440)
!450 = !DILocation(line: 128, column: 3, scope: !440)
!451 = !DILocation(line: 128, column: 28, scope: !440)
!452 = !DILocation(line: 129, column: 21, scope: !440)
!453 = !DILocation(line: 129, column: 3, scope: !440)
!454 = !DILocation(line: 129, column: 8, scope: !440)
!455 = !DILocation(line: 129, column: 19, scope: !440)
!456 = !DILocation(line: 130, column: 29, scope: !440)
!457 = !DILocation(line: 130, column: 41, scope: !440)
!458 = !DILocation(line: 130, column: 10, scope: !440)
!459 = !DILocation(line: 130, column: 8, scope: !440)
!460 = !DILocation(line: 134, column: 23, scope: !229)
!461 = !DILocation(line: 134, column: 28, scope: !229)
!462 = !DILocation(line: 134, column: 17, scope: !229)
!463 = !DILocation(line: 134, column: 2, scope: !229)
!464 = !DILocation(line: 134, column: 8, scope: !229)
!465 = !DILocation(line: 134, column: 15, scope: !229)
!466 = !DILocation(line: 135, column: 17, scope: !229)
!467 = !DILocation(line: 135, column: 2, scope: !229)
!468 = !DILocation(line: 135, column: 8, scope: !229)
!469 = !DILocation(line: 135, column: 15, scope: !229)
!470 = !DILocation(line: 136, column: 17, scope: !229)
!471 = !DILocation(line: 136, column: 22, scope: !229)
!472 = !DILocation(line: 136, column: 2, scope: !229)
!473 = !DILocation(line: 136, column: 8, scope: !229)
!474 = !DILocation(line: 136, column: 15, scope: !229)
!475 = !DILocation(line: 137, column: 2, scope: !229)
!476 = !DILocation(line: 137, column: 8, scope: !229)
!477 = !DILocation(line: 137, column: 15, scope: !229)
!478 = !DILocation(line: 138, column: 16, scope: !229)
!479 = !DILocation(line: 138, column: 2, scope: !229)
!480 = !DILocation(line: 138, column: 8, scope: !229)
!481 = !DILocation(line: 138, column: 14, scope: !229)
!482 = !DILocation(line: 139, column: 22, scope: !229)
!483 = !DILocation(line: 139, column: 27, scope: !229)
!484 = !DILocation(line: 139, column: 12, scope: !229)
!485 = !DILocation(line: 139, column: 10, scope: !229)
!486 = !DILocation(line: 140, column: 9, scope: !229)
!487 = !DILocation(line: 140, column: 18, scope: !229)
!488 = !DILocation(line: 140, column: 26, scope: !229)
!489 = !DILocation(line: 140, column: 31, scope: !229)
!490 = !DILocation(line: 140, column: 2, scope: !229)
!491 = !DILocation(line: 141, column: 13, scope: !229)
!492 = !DILocation(line: 141, column: 18, scope: !229)
!493 = !DILocation(line: 141, column: 10, scope: !229)
!494 = !DILocation(line: 142, column: 9, scope: !229)
!495 = !DILocation(line: 142, column: 19, scope: !229)
!496 = !DILocation(line: 142, column: 30, scope: !229)
!497 = !DILocation(line: 142, column: 32, scope: !229)
!498 = !DILocation(line: 142, column: 36, scope: !229)
!499 = !DILocation(line: 142, column: 45, scope: !229)
!500 = !DILocation(line: 142, column: 2, scope: !229)
!501 = !DILocation(line: 144, column: 10, scope: !229)
!502 = !DILocation(line: 145, column: 9, scope: !229)
!503 = !DILocation(line: 145, column: 18, scope: !229)
!504 = !DILocation(line: 145, column: 23, scope: !229)
!505 = !DILocation(line: 145, column: 2, scope: !229)
!506 = !DILocation(line: 145, column: 38, scope: !229)
!507 = !DILocation(line: 145, column: 43, scope: !229)
!508 = !DILocation(line: 146, column: 13, scope: !229)
!509 = !DILocation(line: 146, column: 18, scope: !229)
!510 = !DILocation(line: 146, column: 10, scope: !229)
!511 = !DILocation(line: 147, column: 9, scope: !229)
!512 = !DILocation(line: 147, column: 19, scope: !229)
!513 = !DILocation(line: 147, column: 30, scope: !229)
!514 = !DILocation(line: 147, column: 32, scope: !229)
!515 = !DILocation(line: 147, column: 36, scope: !229)
!516 = !DILocation(line: 147, column: 45, scope: !229)
!517 = !DILocation(line: 147, column: 2, scope: !229)
!518 = !DILocation(line: 149, column: 10, scope: !229)
!519 = !DILocation(line: 151, column: 13, scope: !229)
!520 = !DILocation(line: 151, column: 23, scope: !229)
!521 = !DILocation(line: 151, column: 21, scope: !229)
!522 = !DILocation(line: 151, column: 11, scope: !229)
!523 = !DILocation(line: 152, column: 17, scope: !229)
!524 = !DILocation(line: 152, column: 28, scope: !229)
!525 = !DILocation(line: 152, column: 8, scope: !229)
!526 = !DILocation(line: 152, column: 6, scope: !229)
!527 = !DILocation(line: 155, column: 6, scope: !528)
!528 = distinct !DILexicalBlock(scope: !229, file: !113, line: 155, column: 6)
!529 = !DILocation(line: 155, column: 11, scope: !528)
!530 = !DILocation(line: 155, column: 22, scope: !528)
!531 = !DILocation(line: 155, column: 25, scope: !532)
!532 = !DILexicalBlockFile(scope: !528, file: !113, discriminator: 1)
!533 = !DILocation(line: 155, column: 30, scope: !532)
!534 = !DILocation(line: 155, column: 42, scope: !532)
!535 = !DILocation(line: 155, column: 6, scope: !532)
!536 = !DILocation(line: 156, column: 3, scope: !528)
!537 = !DILocation(line: 156, column: 8, scope: !528)
!538 = !DILocation(line: 156, column: 20, scope: !528)
!539 = !DILocation(line: 156, column: 51, scope: !528)
!540 = !DILocation(line: 156, column: 56, scope: !528)
!541 = !DILocation(line: 156, column: 68, scope: !528)
!542 = !DILocation(line: 156, column: 37, scope: !528)
!543 = !DILocation(line: 156, column: 37, scope: !532)
!544 = !DILocation(line: 159, column: 9, scope: !229)
!545 = !DILocation(line: 159, column: 2, scope: !229)
!546 = !DILocation(line: 161, column: 9, scope: !229)
!547 = !DILocation(line: 161, column: 2, scope: !229)
!548 = !DILocation(line: 162, column: 1, scope: !229)
!549 = distinct !DISubprogram(name: "send_arp", scope: !113, file: !113, line: 72, type: !550, isLocal: true, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!550 = !DISubroutineType(types: !551)
!551 = !{!232, !321, !232}
!552 = !DILocalVariable(name: "ipaddress", arg: 1, scope: !549, file: !113, line: 72, type: !321)
!553 = !DILocation(line: 72, column: 39, scope: !549)
!554 = !DILocalVariable(name: "pack_len", arg: 2, scope: !549, file: !113, line: 72, type: !232)
!555 = !DILocation(line: 72, column: 58, scope: !549)
!556 = !DILocalVariable(name: "ifp", scope: !549, file: !113, line: 74, type: !235)
!557 = !DILocation(line: 74, column: 15, scope: !549)
!558 = !DILocation(line: 74, column: 21, scope: !549)
!559 = !DILocation(line: 74, column: 32, scope: !549)
!560 = !DILocalVariable(name: "sll", scope: !549, file: !113, line: 75, type: !561)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !132, line: 166, size: 1024, align: 64, elements: !562)
!562 = !{!563, !564, !568}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !561, file: !132, line: 168, baseType: !135, size: 16, align: 16)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !561, file: !132, line: 169, baseType: !565, size: 944, align: 8, offset: 16)
!565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 944, align: 8, elements: !566)
!566 = !{!567}
!567 = !DISubrange(count: 118)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !561, file: !132, line: 170, baseType: !142, size: 64, align: 64, offset: 960)
!569 = !DILocation(line: 75, column: 26, scope: !549)
!570 = !DILocalVariable(name: "len", scope: !549, file: !113, line: 76, type: !232)
!571 = !DILocation(line: 76, column: 10, scope: !549)
!572 = !DILocation(line: 79, column: 2, scope: !549)
!573 = !DILocation(line: 80, column: 38, scope: !549)
!574 = !DILocation(line: 80, column: 49, scope: !549)
!575 = !DILocation(line: 81, column: 51, scope: !549)
!576 = !DILocation(line: 81, column: 56, scope: !549)
!577 = !DILocation(line: 81, column: 38, scope: !549)
!578 = !DILocation(line: 81, column: 49, scope: !549)
!579 = !DILocation(line: 82, column: 50, scope: !549)
!580 = !DILocation(line: 82, column: 55, scope: !549)
!581 = !DILocation(line: 82, column: 38, scope: !549)
!582 = !DILocation(line: 82, column: 48, scope: !549)
!583 = !DILocation(line: 83, column: 58, scope: !549)
!584 = !DILocation(line: 83, column: 63, scope: !549)
!585 = !DILocation(line: 83, column: 38, scope: !549)
!586 = !DILocation(line: 83, column: 50, scope: !549)
!587 = !DILocation(line: 84, column: 45, scope: !549)
!588 = !DILocation(line: 84, column: 2, scope: !549)
!589 = !DILocation(line: 85, column: 9, scope: !549)
!590 = !DILocation(line: 85, column: 14, scope: !549)
!591 = !DILocation(line: 85, column: 29, scope: !549)
!592 = !DILocation(line: 85, column: 34, scope: !549)
!593 = !DILocation(line: 87, column: 6, scope: !594)
!594 = distinct !DILexicalBlock(scope: !549, file: !113, line: 87, column: 6)
!595 = !DILocation(line: 87, column: 6, scope: !549)
!596 = !DILocation(line: 89, column: 8, scope: !594)
!597 = !DILocation(line: 89, column: 13, scope: !594)
!598 = !DILocation(line: 90, column: 19, scope: !594)
!599 = !DILocation(line: 90, column: 30, scope: !594)
!600 = !DILocation(line: 90, column: 32, scope: !594)
!601 = !DILocation(line: 90, column: 36, scope: !594)
!602 = !DILocation(line: 90, column: 45, scope: !594)
!603 = !DILocation(line: 90, column: 8, scope: !594)
!604 = !DILocation(line: 88, column: 3, scope: !594)
!605 = !DILocation(line: 93, column: 15, scope: !549)
!606 = !DILocation(line: 93, column: 24, scope: !549)
!607 = !DILocation(line: 93, column: 37, scope: !549)
!608 = !DILocation(line: 94, column: 8, scope: !549)
!609 = !DILocation(line: 93, column: 8, scope: !549)
!610 = !DILocation(line: 93, column: 6, scope: !549)
!611 = !DILocation(line: 95, column: 6, scope: !612)
!612 = distinct !DILexicalBlock(scope: !549, file: !113, line: 95, column: 6)
!613 = !DILocation(line: 95, column: 10, scope: !612)
!614 = !DILocation(line: 95, column: 6, scope: !549)
!615 = !DILocation(line: 97, column: 10, scope: !612)
!616 = !DILocation(line: 97, column: 21, scope: !612)
!617 = !DILocation(line: 97, column: 27, scope: !612)
!618 = !DILocation(line: 97, column: 8, scope: !612)
!619 = !DILocation(line: 97, column: 47, scope: !612)
!620 = !DILocation(line: 97, column: 58, scope: !612)
!621 = !DILocation(line: 97, column: 60, scope: !612)
!622 = !DILocation(line: 97, column: 64, scope: !612)
!623 = !DILocation(line: 97, column: 73, scope: !612)
!624 = !DILocation(line: 97, column: 36, scope: !612)
!625 = !DILocation(line: 96, column: 3, scope: !612)
!626 = !DILocation(line: 98, column: 9, scope: !549)
!627 = !DILocation(line: 98, column: 2, scope: !549)
!628 = distinct !DISubprogram(name: "timer_add_now", scope: !299, file: !299, line: 66, type: !629, isLocal: true, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!629 = !DISubroutineType(types: !630)
!630 = !{!298, !298}
!631 = !DILocalVariable(name: "a", arg: 1, scope: !628, file: !299, line: 66, type: !298)
!632 = !DILocation(line: 66, column: 25, scope: !628)
!633 = !DILocation(line: 68, column: 1, scope: !628)
!634 = distinct !{!634, !633}
!635 = !DILocation(line: 68, column: 4, scope: !636)
!636 = !DILexicalBlockFile(scope: !637, file: !299, discriminator: 1)
!637 = distinct !DILexicalBlock(scope: !628, file: !299, line: 68, column: 4)
!638 = !DILocation(line: 68, column: 11, scope: !636)
!639 = !DILocation(line: 68, column: 12, scope: !636)
!640 = !DILocation(line: 68, column: 17, scope: !636)
!641 = !DILocation(line: 68, column: 4, scope: !642)
!642 = !DILexicalBlockFile(scope: !643, file: !299, discriminator: 2)
!643 = distinct !DILexicalBlock(scope: !644, file: !299, line: 68, column: 24)
!644 = distinct !DILexicalBlock(scope: !637, file: !299, line: 68, column: 17)
!645 = !DILocation(line: 68, column: 26, scope: !642)
!646 = !DILocation(line: 68, column: 12, scope: !642)
!647 = !DILocation(line: 68, column: 24, scope: !642)
!648 = !DILocation(line: 68, column: 26, scope: !649)
!649 = !DILexicalBlockFile(scope: !637, file: !299, discriminator: 3)
!650 = !DILocation(line: 70, column: 9, scope: !628)
!651 = !DILocation(line: 70, column: 2, scope: !628)
!652 = distinct !DISubprogram(name: "send_gratuitous_arp", scope: !113, file: !113, line: 182, type: !653, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!653 = !DISubroutineType(types: !654)
!654 = !{null, !655, !321}
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64, align: 64)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_t", file: !4, line: 310, baseType: !657)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_t", file: !4, line: 183, size: 7040, align: 64, elements: !658)
!658 = !{!659, !660, !661, !700, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !895, !902}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !657, file: !4, line: 184, baseType: !135, size: 16, align: 16)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !657, file: !4, line: 185, baseType: !79, size: 64, align: 64, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !657, file: !4, line: 186, baseType: !662, size: 64, align: 64, offset: 128)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64, align: 64)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_sgroup_t", file: !4, line: 133, baseType: !664)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_sgroup", file: !4, line: 109, size: 1024, align: 64, elements: !665)
!665 = !{!666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !694, !695, !696, !697, !698, !699}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !664, file: !4, line: 110, baseType: !79, size: 64, align: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !664, file: !4, line: 111, baseType: !365, size: 64, align: 64, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp_instances", scope: !664, file: !4, line: 112, baseType: !146, size: 64, align: 64, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "num_member_fault", scope: !664, file: !4, line: 113, baseType: !160, size: 32, align: 32, offset: 192)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "num_member_init", scope: !664, file: !4, line: 114, baseType: !160, size: 32, align: 32, offset: 224)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !664, file: !4, line: 115, baseType: !122, size: 32, align: 32, offset: 256)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "sgroup_tracking_weight", scope: !664, file: !4, line: 116, baseType: !273, size: 8, align: 8, offset: 288)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "track_ifp", scope: !664, file: !4, line: 119, baseType: !146, size: 64, align: 64, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "track_script", scope: !664, file: !4, line: 120, baseType: !146, size: 64, align: 64, offset: 384)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "track_file", scope: !664, file: !4, line: 121, baseType: !146, size: 64, align: 64, offset: 448)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "track_bfd", scope: !664, file: !4, line: 122, baseType: !146, size: 64, align: 64, offset: 512)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "notify_exec", scope: !664, file: !4, line: 125, baseType: !273, size: 8, align: 8, offset: 576)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "script_backup", scope: !664, file: !4, line: 126, baseType: !679, size: 64, align: 64, offset: 640)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64, align: 64)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "notify_script_t", file: !681, line: 65, baseType: !682)
!681 = !DIFile(filename: "../../lib/notify.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_notify_script", file: !681, line: 59, size: 192, align: 64, elements: !683)
!683 = !{!684, !686, !687, !688, !691}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !682, file: !681, line: 60, baseType: !685, size: 64, align: 64)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !682, file: !681, line: 61, baseType: !122, size: 32, align: 32, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !682, file: !681, line: 62, baseType: !122, size: 32, align: 32, offset: 96)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !682, file: !681, line: 63, baseType: !689, size: 32, align: 32, offset: 128)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !233, line: 240, baseType: !690)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !200, line: 125, baseType: !160)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !682, file: !681, line: 64, baseType: !692, size: 32, align: 32, offset: 160)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !233, line: 235, baseType: !693)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !200, line: 126, baseType: !160)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "script_master", scope: !664, file: !4, line: 127, baseType: !679, size: 64, align: 64, offset: 704)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "script_fault", scope: !664, file: !4, line: 128, baseType: !679, size: 64, align: 64, offset: 768)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "script_stop", scope: !664, file: !4, line: 129, baseType: !679, size: 64, align: 64, offset: 832)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "script", scope: !664, file: !4, line: 130, baseType: !679, size: 64, align: 64, offset: 896)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !664, file: !4, line: 131, baseType: !122, size: 32, align: 32, offset: 960)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "last_email_state", scope: !664, file: !4, line: 132, baseType: !122, size: 32, align: 32, offset: 992)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !657, file: !4, line: 187, baseType: !701, size: 64, align: 64, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64, align: 64)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_stats", file: !4, line: 169, baseType: !703)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_stats", file: !4, line: 136, size: 768, align: 64, elements: !704)
!704 = !{!705, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "advert_rcvd", scope: !703, file: !4, line: 137, baseType: !706, size: 64, align: 64)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !246, line: 55, baseType: !142)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "advert_sent", scope: !703, file: !4, line: 138, baseType: !245, size: 32, align: 32, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "become_master", scope: !703, file: !4, line: 140, baseType: !245, size: 32, align: 32, offset: 96)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "release_master", scope: !703, file: !4, line: 141, baseType: !245, size: 32, align: 32, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "packet_len_err", scope: !703, file: !4, line: 143, baseType: !706, size: 64, align: 64, offset: 192)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "advert_interval_err", scope: !703, file: !4, line: 144, baseType: !706, size: 64, align: 64, offset: 256)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "ip_ttl_err", scope: !703, file: !4, line: 145, baseType: !706, size: 64, align: 64, offset: 320)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_type_rcvd", scope: !703, file: !4, line: 146, baseType: !706, size: 64, align: 64, offset: 384)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "addr_list_err", scope: !703, file: !4, line: 147, baseType: !706, size: 64, align: 64, offset: 448)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_authtype", scope: !703, file: !4, line: 149, baseType: !245, size: 32, align: 32, offset: 512)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "authtype_mismatch", scope: !703, file: !4, line: 151, baseType: !245, size: 32, align: 32, offset: 544)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "auth_failure", scope: !703, file: !4, line: 152, baseType: !245, size: 32, align: 32, offset: 576)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "pri_zero_rcvd", scope: !703, file: !4, line: 155, baseType: !706, size: 64, align: 64, offset: 640)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "pri_zero_sent", scope: !703, file: !4, line: 156, baseType: !706, size: 64, align: 64, offset: 704)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "ifp", scope: !657, file: !4, line: 188, baseType: !235, size: 64, align: 64, offset: 256)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "dont_track_primary", scope: !657, file: !4, line: 189, baseType: !273, size: 8, align: 8, offset: 320)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "linkbeat_use_polling", scope: !657, file: !4, line: 190, baseType: !273, size: 8, align: 8, offset: 328)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "skip_check_adv_addr", scope: !657, file: !4, line: 191, baseType: !273, size: 8, align: 8, offset: 336)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "strict_mode", scope: !657, file: !4, line: 193, baseType: !160, size: 32, align: 32, offset: 352)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "vmac_flags", scope: !657, file: !4, line: 195, baseType: !142, size: 64, align: 64, offset: 384)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "vmac_ifname", scope: !657, file: !4, line: 196, baseType: !240, size: 128, align: 8, offset: 448)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "track_ifp", scope: !657, file: !4, line: 198, baseType: !146, size: 64, align: 64, offset: 576)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "track_script", scope: !657, file: !4, line: 199, baseType: !146, size: 64, align: 64, offset: 640)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "track_file", scope: !657, file: !4, line: 200, baseType: !146, size: 64, align: 64, offset: 704)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "num_script_if_fault", scope: !657, file: !4, line: 204, baseType: !160, size: 32, align: 32, offset: 768)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "num_script_init", scope: !657, file: !4, line: 205, baseType: !160, size: 32, align: 32, offset: 800)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !657, file: !4, line: 206, baseType: !561, size: 1024, align: 64, offset: 832)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "saddr_from_config", scope: !657, file: !4, line: 207, baseType: !273, size: 8, align: 8, offset: 1856)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "track_saddr", scope: !657, file: !4, line: 208, baseType: !273, size: 8, align: 8, offset: 1864)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_saddr", scope: !657, file: !4, line: 209, baseType: !561, size: 1024, align: 64, offset: 1920)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "unicast_peer", scope: !657, file: !4, line: 210, baseType: !146, size: 64, align: 64, offset: 2944)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "unicast_chksum_compat", scope: !657, file: !4, line: 212, baseType: !738, size: 32, align: 32, offset: 3008)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "chksum_compatibility_t", file: !4, line: 179, baseType: !3)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "master_saddr", scope: !657, file: !4, line: 214, baseType: !561, size: 1024, align: 64, offset: 3072)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "master_priority", scope: !657, file: !4, line: 215, baseType: !261, size: 8, align: 8, offset: 4096)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "last_transition", scope: !657, file: !4, line: 216, baseType: !298, size: 128, align: 64, offset: 4160)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "garp_delay", scope: !657, file: !4, line: 217, baseType: !160, size: 32, align: 32, offset: 4288)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh", scope: !657, file: !4, line: 218, baseType: !298, size: 128, align: 64, offset: 4352)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh_timer", scope: !657, file: !4, line: 219, baseType: !298, size: 128, align: 64, offset: 4480)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "garp_rep", scope: !657, file: !4, line: 220, baseType: !160, size: 32, align: 32, offset: 4608)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh_rep", scope: !657, file: !4, line: 221, baseType: !160, size: 32, align: 32, offset: 4640)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "garp_lower_prio_delay", scope: !657, file: !4, line: 222, baseType: !160, size: 32, align: 32, offset: 4672)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "garp_pending", scope: !657, file: !4, line: 223, baseType: !273, size: 8, align: 8, offset: 4704)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "gna_pending", scope: !657, file: !4, line: 224, baseType: !273, size: 8, align: 8, offset: 4712)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "garp_lower_prio_rep", scope: !657, file: !4, line: 225, baseType: !160, size: 32, align: 32, offset: 4736)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "lower_prio_no_advert", scope: !657, file: !4, line: 226, baseType: !160, size: 32, align: 32, offset: 4768)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "higher_prio_send_advert", scope: !657, file: !4, line: 227, baseType: !160, size: 32, align: 32, offset: 4800)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "vrid", scope: !657, file: !4, line: 228, baseType: !261, size: 8, align: 8, offset: 4832)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "base_priority", scope: !657, file: !4, line: 229, baseType: !261, size: 8, align: 8, offset: 4840)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "effective_priority", scope: !657, file: !4, line: 230, baseType: !261, size: 8, align: 8, offset: 4848)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "total_priority", scope: !657, file: !4, line: 231, baseType: !122, size: 32, align: 32, offset: 4864)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "vipset", scope: !657, file: !4, line: 233, baseType: !273, size: 8, align: 8, offset: 4896)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "vip", scope: !657, file: !4, line: 234, baseType: !146, size: 64, align: 64, offset: 4928)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "evip", scope: !657, file: !4, line: 235, baseType: !146, size: 64, align: 64, offset: 4992)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "promote_secondaries", scope: !657, file: !4, line: 239, baseType: !273, size: 8, align: 8, offset: 5056)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "evip_add_ipv6", scope: !657, file: !4, line: 240, baseType: !273, size: 8, align: 8, offset: 5064)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "vroutes", scope: !657, file: !4, line: 241, baseType: !146, size: 64, align: 64, offset: 5120)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "vrules", scope: !657, file: !4, line: 242, baseType: !146, size: 64, align: 64, offset: 5184)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "adver_int", scope: !657, file: !4, line: 243, baseType: !160, size: 32, align: 32, offset: 5248)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "master_adver_int", scope: !657, file: !4, line: 244, baseType: !160, size: 32, align: 32, offset: 5280)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !657, file: !4, line: 249, baseType: !160, size: 32, align: 32, offset: 5312)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_rx_buf_size", scope: !657, file: !4, line: 252, baseType: !219, size: 64, align: 64, offset: 5376)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "iptable_rules_set", scope: !657, file: !4, line: 254, baseType: !273, size: 8, align: 8, offset: 5440)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "nopreempt", scope: !657, file: !4, line: 255, baseType: !273, size: 8, align: 8, offset: 5448)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_delay", scope: !657, file: !4, line: 256, baseType: !142, size: 64, align: 64, offset: 5504)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_time", scope: !657, file: !4, line: 260, baseType: !298, size: 128, align: 64, offset: 5568)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !657, file: !4, line: 261, baseType: !122, size: 32, align: 32, offset: 5696)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "wantstate", scope: !657, file: !4, line: 265, baseType: !122, size: 32, align: 32, offset: 5728)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "reload_master", scope: !657, file: !4, line: 266, baseType: !273, size: 8, align: 8, offset: 5760)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "sockets", scope: !657, file: !4, line: 267, baseType: !776, size: 64, align: 64, offset: 5824)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64, align: 64)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "sock_t", file: !778, line: 50, baseType: !779)
!778 = !DIFile(filename: "./../include/vrrp_sock.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sock", file: !778, line: 40, size: 1344, align: 64, elements: !780)
!780 = !{!781, !782, !783, !784, !785, !786, !787, !788, !789}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !779, file: !778, line: 41, baseType: !135, size: 16, align: 16)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !779, file: !778, line: 42, baseType: !561, size: 1024, align: 64, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !779, file: !778, line: 43, baseType: !122, size: 32, align: 32, offset: 1088)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !779, file: !778, line: 44, baseType: !244, size: 32, align: 32, offset: 1120)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "unicast", scope: !779, file: !778, line: 45, baseType: !273, size: 8, align: 8, offset: 1152)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "fd_in", scope: !779, file: !778, line: 46, baseType: !122, size: 32, align: 32, offset: 1184)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "fd_out", scope: !779, file: !778, line: 47, baseType: !122, size: 32, align: 32, offset: 1216)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "rx_buf_size", scope: !779, file: !778, line: 48, baseType: !122, size: 32, align: 32, offset: 1248)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !779, file: !778, line: 49, baseType: !790, size: 64, align: 64, offset: 1280)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64, align: 64)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_t", file: !12, line: 99, baseType: !792)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread", file: !12, line: 78, size: 768, align: 64, elements: !793)
!793 = !{!794, !795, !797, !850, !855, !856, !857, !869, !871}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !792, file: !12, line: 79, baseType: !142, size: 64, align: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !792, file: !12, line: 80, baseType: !796, size: 32, align: 32, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_type_t", file: !12, line: 63, baseType: !11)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !792, file: !12, line: 81, baseType: !798, size: 64, align: 64, offset: 128)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64, align: 64)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_master", file: !12, line: 112, size: 1280, align: 64, elements: !800)
!800 = !{!801, !813, !814, !815, !816, !824, !825, !826, !827, !828, !831, !842, !843, !844, !845, !846, !847, !848, !849}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !799, file: !12, line: 113, baseType: !802, size: 64, align: 64)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_root_t", file: !803, line: 109, baseType: !804)
!803 = !DIFile(filename: "../../lib/rbtree.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !803, line: 106, size: 64, align: 64, elements: !805)
!805 = !{!806}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !804, file: !803, line: 108, baseType: !807, size: 64, align: 64)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64, align: 64)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !803, line: 97, size: 192, align: 64, elements: !809)
!809 = !{!810, !811, !812}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "rb_parent_color", scope: !808, file: !803, line: 99, baseType: !142, size: 64, align: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !808, file: !803, line: 102, baseType: !807, size: 64, align: 64, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !808, file: !803, line: 103, baseType: !807, size: 64, align: 64, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !799, file: !12, line: 114, baseType: !802, size: 64, align: 64, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !799, file: !12, line: 115, baseType: !802, size: 64, align: 64, offset: 128)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !799, file: !12, line: 116, baseType: !802, size: 64, align: 64, offset: 192)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !799, file: !12, line: 117, baseType: !817, size: 128, align: 64, offset: 256)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "list_head_t", file: !818, line: 62, baseType: !819)
!818 = !DIFile(filename: "../../lib/list_head.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !818, line: 60, size: 128, align: 64, elements: !820)
!820 = !{!821, !823}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !819, file: !818, line: 61, baseType: !822, size: 64, align: 64)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64, align: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !819, file: !818, line: 61, baseType: !822, size: 64, align: 64, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !799, file: !12, line: 121, baseType: !817, size: 128, align: 64, offset: 384)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "unuse", scope: !799, file: !12, line: 122, baseType: !817, size: 128, align: 64, offset: 512)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "child_pid_index", scope: !799, file: !12, line: 124, baseType: !146, size: 64, align: 64, offset: 640)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "io_events", scope: !799, file: !12, line: 127, baseType: !802, size: 64, align: 64, offset: 704)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_events", scope: !799, file: !12, line: 128, baseType: !829, size: 64, align: 64, offset: 768)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64, align: 64)
!830 = !DICompositeType(tag: DW_TAG_structure_type, name: "epoll_event", file: !12, line: 128, flags: DIFlagFwdDecl)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "current_event", scope: !799, file: !12, line: 129, baseType: !832, size: 64, align: 64, offset: 832)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64, align: 64)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_event_t", file: !12, line: 109, baseType: !834)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_event", file: !12, line: 102, size: 448, align: 64, elements: !835)
!835 = !{!836, !837, !838, !839, !840}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !834, file: !12, line: 103, baseType: !790, size: 64, align: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !834, file: !12, line: 104, baseType: !790, size: 64, align: 64, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !834, file: !12, line: 105, baseType: !142, size: 64, align: 64, offset: 128)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !834, file: !12, line: 106, baseType: !122, size: 32, align: 32, offset: 192)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !834, file: !12, line: 108, baseType: !841, size: 192, align: 64, offset: 256)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_node_t", file: !803, line: 104, baseType: !808)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_size", scope: !799, file: !12, line: 130, baseType: !160, size: 32, align: 32, offset: 896)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_count", scope: !799, file: !12, line: 131, baseType: !160, size: 32, align: 32, offset: 928)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_fd", scope: !799, file: !12, line: 132, baseType: !122, size: 32, align: 32, offset: 960)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "timer_fd", scope: !799, file: !12, line: 135, baseType: !122, size: 32, align: 32, offset: 992)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "timer_thread", scope: !799, file: !12, line: 136, baseType: !790, size: 64, align: 64, offset: 1024)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !799, file: !12, line: 146, baseType: !142, size: 64, align: 64, offset: 1088)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !799, file: !12, line: 147, baseType: !142, size: 64, align: 64, offset: 1152)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_timer_running", scope: !799, file: !12, line: 148, baseType: !273, size: 8, align: 8, offset: 1216)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !792, file: !12, line: 82, baseType: !851, size: 64, align: 64, offset: 192)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64, align: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{!122, !854}
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64, align: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !792, file: !12, line: 83, baseType: !141, size: 64, align: 64, offset: 256)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "sands", scope: !792, file: !12, line: 84, baseType: !298, size: 128, align: 64, offset: 320)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !792, file: !12, line: 92, baseType: !858, size: 64, align: 32, offset: 448)
!858 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !792, file: !12, line: 85, size: 64, align: 32, elements: !859)
!859 = !{!860, !861, !862}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !858, file: !12, line: 86, baseType: !122, size: 32, align: 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !858, file: !12, line: 87, baseType: !122, size: 32, align: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !858, file: !12, line: 91, baseType: !863, size: 64, align: 32)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !858, file: !12, line: 88, size: 64, align: 32, elements: !864)
!864 = !{!865, !868}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !863, file: !12, line: 89, baseType: !866, size: 32, align: 32)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !233, line: 263, baseType: !867)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !200, line: 133, baseType: !122)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !863, file: !12, line: 90, baseType: !122, size: 32, align: 32, offset: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !792, file: !12, line: 93, baseType: !870, size: 64, align: 64, offset: 512)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64, align: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, scope: !792, file: !12, line: 95, baseType: !872, size: 192, align: 64, offset: 576)
!872 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !792, file: !12, line: 95, size: 192, align: 64, elements: !873)
!873 = !{!874, !875}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !872, file: !12, line: 96, baseType: !841, size: 192, align: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !872, file: !12, line: 97, baseType: !817, size: 128, align: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !657, file: !4, line: 269, baseType: !122, size: 32, align: 32, offset: 5888)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !657, file: !4, line: 271, baseType: !122, size: 32, align: 32, offset: 5920)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !657, file: !4, line: 274, baseType: !122, size: 32, align: 32, offset: 5952)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "last_email_state", scope: !657, file: !4, line: 275, baseType: !122, size: 32, align: 32, offset: 5984)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "notify_exec", scope: !657, file: !4, line: 276, baseType: !273, size: 8, align: 8, offset: 6016)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "script_backup", scope: !657, file: !4, line: 277, baseType: !679, size: 64, align: 64, offset: 6080)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "script_master", scope: !657, file: !4, line: 278, baseType: !679, size: 64, align: 64, offset: 6144)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "script_fault", scope: !657, file: !4, line: 279, baseType: !679, size: 64, align: 64, offset: 6208)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "script_stop", scope: !657, file: !4, line: 280, baseType: !679, size: 64, align: 64, offset: 6272)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "script_master_rx_lower_pri", scope: !657, file: !4, line: 281, baseType: !679, size: 64, align: 64, offset: 6336)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "script", scope: !657, file: !4, line: 282, baseType: !679, size: 64, align: 64, offset: 6400)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "ms_down_timer", scope: !657, file: !4, line: 285, baseType: !245, size: 32, align: 32, offset: 6464)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "sands", scope: !657, file: !4, line: 286, baseType: !298, size: 128, align: 64, offset: 6528)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "send_buffer", scope: !657, file: !4, line: 289, baseType: !79, size: 64, align: 64, offset: 6656)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "send_buffer_size", scope: !657, file: !4, line: 290, baseType: !219, size: 64, align: 64, offset: 6720)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_csum", scope: !657, file: !4, line: 291, baseType: !245, size: 32, align: 32, offset: 6784)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "auth_type", scope: !657, file: !4, line: 295, baseType: !261, size: 8, align: 8, offset: 6816)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "auth_data", scope: !657, file: !4, line: 296, baseType: !894, size: 64, align: 8, offset: 6824)
!894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 64, align: 8, elements: !265)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "ipsecah_counter", scope: !657, file: !4, line: 299, baseType: !896, size: 64, align: 32, offset: 6912)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_counter_t", file: !897, line: 58, baseType: !898)
!897 = !DIFile(filename: "./../include/vrrp_ipsecah.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_seq_counter", file: !897, line: 55, size: 64, align: 32, elements: !899)
!899 = !{!900, !901}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "cycle", scope: !898, file: !897, line: 56, baseType: !273, size: 8, align: 8)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "seq_number", scope: !898, file: !897, line: 57, baseType: !245, size: 32, align: 32, offset: 32)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "ip_id", scope: !657, file: !4, line: 309, baseType: !122, size: 32, align: 32, offset: 6976)
!903 = !DILocalVariable(name: "vrrp", arg: 1, scope: !652, file: !113, line: 182, type: !655)
!904 = !DILocation(line: 182, column: 34, scope: !652)
!905 = !DILocalVariable(name: "ipaddress", arg: 2, scope: !652, file: !113, line: 182, type: !321)
!906 = !DILocation(line: 182, column: 54, scope: !652)
!907 = !DILocalVariable(name: "ifp", scope: !652, file: !113, line: 184, type: !235)
!908 = !DILocation(line: 184, column: 15, scope: !652)
!909 = !DILocation(line: 184, column: 23, scope: !652)
!910 = !DILocation(line: 184, column: 34, scope: !652)
!911 = !DILocation(line: 184, column: 40, scope: !652)
!912 = !DILocation(line: 187, column: 6, scope: !913)
!913 = distinct !DILexicalBlock(scope: !652, file: !113, line: 187, column: 6)
!914 = !DILocation(line: 187, column: 11, scope: !913)
!915 = !DILocation(line: 187, column: 21, scope: !913)
!916 = !DILocation(line: 187, column: 6, scope: !652)
!917 = !DILocation(line: 188, column: 3, scope: !913)
!918 = !DILocation(line: 190, column: 2, scope: !652)
!919 = !DILocation(line: 193, column: 6, scope: !920)
!920 = distinct !DILexicalBlock(scope: !652, file: !113, line: 193, column: 6)
!921 = !DILocation(line: 193, column: 11, scope: !920)
!922 = !DILocation(line: 193, column: 22, scope: !920)
!923 = !DILocation(line: 194, column: 6, scope: !920)
!924 = !DILocation(line: 194, column: 11, scope: !920)
!925 = !DILocation(line: 194, column: 23, scope: !920)
!926 = !DILocation(line: 194, column: 42, scope: !920)
!927 = !DILocation(line: 195, column: 6, scope: !920)
!928 = !DILocation(line: 195, column: 11, scope: !920)
!929 = !DILocation(line: 195, column: 23, scope: !920)
!930 = !DILocation(line: 195, column: 38, scope: !920)
!931 = !DILocation(line: 193, column: 6, scope: !932)
!932 = !DILexicalBlockFile(scope: !652, file: !113, discriminator: 1)
!933 = !DILocation(line: 196, column: 9, scope: !934)
!934 = distinct !DILexicalBlock(scope: !935, file: !113, line: 196, column: 6)
!935 = distinct !DILexicalBlock(scope: !920, file: !113, line: 195, column: 46)
!936 = !DILocation(line: 196, column: 7, scope: !934)
!937 = !DILocation(line: 196, column: 12, scope: !934)
!938 = !DILocation(line: 196, column: 24, scope: !934)
!939 = !DILocation(line: 196, column: 16, scope: !934)
!940 = !DILocation(line: 196, column: 6, scope: !935)
!941 = !DILocation(line: 196, column: 9, scope: !942)
!942 = !DILexicalBlockFile(scope: !934, file: !113, discriminator: 1)
!943 = !DILocation(line: 196, column: 7, scope: !942)
!944 = !DILocation(line: 196, column: 12, scope: !942)
!945 = !DILocation(line: 196, column: 24, scope: !942)
!946 = !DILocation(line: 196, column: 6, scope: !942)
!947 = !DILocation(line: 196, column: 9, scope: !948)
!948 = !DILexicalBlockFile(scope: !934, file: !113, discriminator: 2)
!949 = !DILocation(line: 196, column: 7, scope: !948)
!950 = !DILocation(line: 196, column: 12, scope: !948)
!951 = !DILocation(line: 196, column: 24, scope: !948)
!952 = !DILocation(line: 196, column: 6, scope: !948)
!953 = !DILocation(line: 197, column: 15, scope: !954)
!954 = distinct !DILexicalBlock(scope: !934, file: !113, line: 196, column: 64)
!955 = !DILocation(line: 197, column: 21, scope: !954)
!956 = !DILocation(line: 197, column: 26, scope: !954)
!957 = !DILocation(line: 197, column: 4, scope: !954)
!958 = !DILocation(line: 198, column: 4, scope: !954)
!959 = !DILocation(line: 200, column: 2, scope: !935)
!960 = !DILocation(line: 202, column: 32, scope: !652)
!961 = !DILocation(line: 202, column: 37, scope: !652)
!962 = !DILocation(line: 202, column: 2, scope: !652)
!963 = !DILocation(line: 203, column: 1, scope: !652)
!964 = !DILocation(line: 203, column: 1, scope: !932)
!965 = distinct !DISubprogram(name: "queue_garp", scope: !113, file: !113, line: 164, type: !966, isLocal: true, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!966 = !DISubroutineType(types: !967)
!967 = !{null, !655, !235, !321}
!968 = !DILocalVariable(name: "vrrp", arg: 1, scope: !965, file: !113, line: 164, type: !655)
!969 = !DILocation(line: 164, column: 32, scope: !965)
!970 = !DILocalVariable(name: "ifp", arg: 2, scope: !965, file: !113, line: 164, type: !235)
!971 = !DILocation(line: 164, column: 51, scope: !965)
!972 = !DILocalVariable(name: "ipaddress", arg: 3, scope: !965, file: !113, line: 164, type: !321)
!973 = !DILocation(line: 164, column: 70, scope: !965)
!974 = !DILocalVariable(name: "next_time", scope: !965, file: !113, line: 166, type: !298)
!975 = !DILocation(line: 166, column: 12, scope: !965)
!976 = !DILocation(line: 166, column: 38, scope: !965)
!977 = !DILocation(line: 166, column: 43, scope: !965)
!978 = !DILocation(line: 166, column: 55, scope: !965)
!979 = !DILocation(line: 166, column: 24, scope: !965)
!980 = !DILocation(line: 168, column: 2, scope: !965)
!981 = !DILocation(line: 168, column: 8, scope: !965)
!982 = !DILocation(line: 168, column: 21, scope: !965)
!983 = !DILocation(line: 169, column: 2, scope: !965)
!984 = !DILocation(line: 169, column: 13, scope: !965)
!985 = !DILocation(line: 169, column: 30, scope: !965)
!986 = !DILocation(line: 172, column: 7, scope: !987)
!987 = distinct !DILexicalBlock(scope: !965, file: !113, line: 172, column: 6)
!988 = !DILocation(line: 172, column: 19, scope: !987)
!989 = !DILocation(line: 172, column: 24, scope: !990)
!990 = !DILexicalBlockFile(scope: !987, file: !113, discriminator: 1)
!991 = !DILocation(line: 172, column: 31, scope: !990)
!992 = !DILocation(line: 172, column: 6, scope: !990)
!993 = !DILocation(line: 172, column: 24, scope: !994)
!994 = !DILexicalBlockFile(scope: !987, file: !113, discriminator: 2)
!995 = !DILocation(line: 172, column: 21, scope: !994)
!996 = !DILocation(line: 172, column: 22, scope: !994)
!997 = !DILocation(line: 172, column: 24, scope: !998)
!998 = !DILexicalBlockFile(scope: !987, file: !113, discriminator: 3)
!999 = !DILocation(line: 172, column: 21, scope: !998)
!1000 = !DILocation(line: 172, column: 6, scope: !998)
!1001 = !DILocation(line: 173, column: 7, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !113, line: 173, column: 7)
!1003 = distinct !DILexicalBlock(scope: !987, file: !113, line: 172, column: 63)
!1004 = !DILocation(line: 173, column: 7, scope: !1003)
!1005 = !DILocation(line: 174, column: 18, scope: !1002)
!1006 = !DILocation(line: 174, column: 4, scope: !1002)
!1007 = !DILocation(line: 176, column: 20, scope: !1003)
!1008 = !DILocation(line: 178, column: 34, scope: !1003)
!1009 = !DILocation(line: 178, column: 75, scope: !1003)
!1010 = !DILocation(line: 178, column: 64, scope: !1003)
!1011 = !DILocation(line: 178, column: 64, scope: !1012)
!1012 = !DILexicalBlockFile(scope: !1003, file: !113, discriminator: 1)
!1013 = !DILocation(line: 178, column: 17, scope: !1014)
!1014 = !DILexicalBlockFile(scope: !1003, file: !113, discriminator: 2)
!1015 = !DILocation(line: 178, column: 15, scope: !1003)
!1016 = !DILocation(line: 179, column: 2, scope: !1003)
!1017 = !DILocation(line: 180, column: 1, scope: !965)
!1018 = distinct !DISubprogram(name: "gratuitous_arp_init", scope: !113, file: !113, line: 208, type: !1019, isLocal: false, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{null}
!1021 = !DILocation(line: 210, column: 6, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1018, file: !113, line: 210, column: 6)
!1023 = !DILocation(line: 210, column: 6, scope: !1018)
!1024 = !DILocation(line: 211, column: 3, scope: !1022)
!1025 = !DILocation(line: 214, column: 25, scope: !1018)
!1026 = !DILocation(line: 214, column: 14, scope: !1018)
!1027 = !DILocation(line: 217, column: 54, scope: !1018)
!1028 = !DILocation(line: 217, column: 12, scope: !1029)
!1029 = !DILexicalBlockFile(scope: !1018, file: !113, discriminator: 1)
!1030 = !DILocation(line: 217, column: 10, scope: !1018)
!1031 = !DILocation(line: 219, column: 6, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1018, file: !113, line: 219, column: 6)
!1033 = !DILocation(line: 219, column: 14, scope: !1032)
!1034 = !DILocation(line: 219, column: 6, scope: !1018)
!1035 = !DILocation(line: 220, column: 3, scope: !1032)
!1036 = !DILocation(line: 222, column: 3, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1032, file: !113, line: 221, column: 7)
!1038 = !DILocation(line: 223, column: 3, scope: !1037)
!1039 = !DILocation(line: 230, column: 1, scope: !1018)
!1040 = distinct !DISubprogram(name: "gratuitous_arp_close", scope: !113, file: !113, line: 231, type: !1019, isLocal: false, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!1041 = !DILocation(line: 233, column: 7, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1040, file: !113, line: 233, column: 6)
!1043 = !DILocation(line: 233, column: 6, scope: !1040)
!1044 = !DILocation(line: 234, column: 3, scope: !1042)
!1045 = !DILocation(line: 236, column: 8, scope: !1040)
!1046 = !DILocation(line: 236, column: 3, scope: !1040)
!1047 = !DILocation(line: 236, column: 36, scope: !1040)
!1048 = !DILocation(line: 237, column: 14, scope: !1040)
!1049 = !DILocation(line: 238, column: 8, scope: !1040)
!1050 = !DILocation(line: 238, column: 2, scope: !1040)
!1051 = !DILocation(line: 239, column: 10, scope: !1040)
!1052 = !DILocation(line: 240, column: 1, scope: !1040)
!1053 = !DILocation(line: 240, column: 1, scope: !1054)
!1054 = !DILexicalBlockFile(scope: !1040, file: !113, discriminator: 1)
!1055 = distinct !DISubprogram(name: "__test_bit", scope: !64, file: !64, line: 47, type: !1056, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!1056 = !DISubroutineType(types: !1057)
!1057 = !{!273, !160, !1058}
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64, align: 64)
!1059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!1060 = !DILocalVariable(name: "idx", arg: 1, scope: !1055, file: !64, line: 47, type: !160)
!1061 = !DILocation(line: 47, column: 39, scope: !1055)
!1062 = !DILocalVariable(name: "bmap", arg: 2, scope: !1055, file: !64, line: 47, type: !1058)
!1063 = !DILocation(line: 47, column: 65, scope: !1055)
!1064 = !DILocation(line: 49, column: 19, scope: !1055)
!1065 = !DILocation(line: 49, column: 18, scope: !1055)
!1066 = !DILocation(line: 49, column: 24, scope: !1055)
!1067 = !DILocation(line: 49, column: 12, scope: !1055)
!1068 = !DILocation(line: 49, column: 68, scope: !1055)
!1069 = !DILocation(line: 49, column: 67, scope: !1055)
!1070 = !DILocation(line: 49, column: 73, scope: !1055)
!1071 = !DILocation(line: 49, column: 63, scope: !1055)
!1072 = !DILocation(line: 49, column: 56, scope: !1055)
!1073 = !DILocation(line: 49, column: 10, scope: !1055)
!1074 = !DILocation(line: 49, column: 9, scope: !1055)
!1075 = !DILocation(line: 49, column: 2, scope: !1055)
!1076 = distinct !DISubprogram(name: "timer_long", scope: !299, file: !299, line: 75, type: !1077, isLocal: true, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!142, !298}
!1079 = !DILocalVariable(name: "a", arg: 1, scope: !1076, file: !299, line: 75, type: !298)
!1080 = !DILocation(line: 75, column: 22, scope: !1076)
!1081 = !DILocation(line: 77, column: 26, scope: !1076)
!1082 = !DILocation(line: 77, column: 33, scope: !1076)
!1083 = !DILocation(line: 77, column: 63, scope: !1076)
!1084 = !DILocation(line: 77, column: 44, scope: !1076)
!1085 = !DILocation(line: 77, column: 2, scope: !1076)
!1086 = distinct !DISubprogram(name: "timer_sub_now", scope: !299, file: !299, line: 57, type: !629, isLocal: true, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !378)
!1087 = !DILocalVariable(name: "a", arg: 1, scope: !1086, file: !299, line: 57, type: !298)
!1088 = !DILocation(line: 57, column: 25, scope: !1086)
!1089 = !DILocation(line: 59, column: 1, scope: !1086)
!1090 = distinct !{!1090, !1089}
!1091 = !DILocation(line: 59, column: 4, scope: !1092)
!1092 = !DILexicalBlockFile(scope: !1093, file: !299, discriminator: 1)
!1093 = distinct !DILexicalBlock(scope: !1086, file: !299, line: 59, column: 4)
!1094 = !DILocation(line: 59, column: 11, scope: !1092)
!1095 = !DILocation(line: 59, column: 12, scope: !1092)
!1096 = !DILocation(line: 59, column: 17, scope: !1092)
!1097 = !DILocation(line: 59, column: 4, scope: !1098)
!1098 = !DILexicalBlockFile(scope: !1099, file: !299, discriminator: 2)
!1099 = distinct !DILexicalBlock(scope: !1100, file: !299, line: 59, column: 17)
!1100 = distinct !DILexicalBlock(scope: !1093, file: !299, line: 59, column: 17)
!1101 = !DILocation(line: 59, column: 19, scope: !1098)
!1102 = !DILocation(line: 59, column: 12, scope: !1098)
!1103 = !DILocation(line: 59, column: 24, scope: !1098)
!1104 = !DILocation(line: 59, column: 26, scope: !1105)
!1105 = !DILexicalBlockFile(scope: !1093, file: !299, discriminator: 3)
!1106 = !DILocation(line: 61, column: 9, scope: !1086)
!1107 = !DILocation(line: 61, column: 2, scope: !1086)
