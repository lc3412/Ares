; ModuleID = './[inter]keepalived--check--check_dns.o.i'
source_filename = "./[inter]keepalived--check--check_dns.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._dns_type = type { i16, i8* }
%struct._list = type { %struct._element*, %struct._element*, i32, void (i8*)*, void (%struct._IO_FILE*, i8*)* }
%struct._element = type { %struct._element*, %struct._element*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.timeval = type { i64, i64 }
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
%struct._thread = type { i64, i32, %struct._thread_master*, {}*, i8*, %struct.timeval, %union.anon, %struct._thread_event*, %union.anon.0 }
%struct._thread_master = type { %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.list_head, %struct.list_head, %struct.list_head, %struct._list*, %struct.rb_root, %struct.epoll_event*, %struct._thread_event*, i32, i32, i32, i32, %struct._thread*, i64, i64, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rb_root = type { %struct.rb_node* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.epoll_event = type opaque
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32 }
%struct._thread_event = type { %struct._thread*, %struct._thread*, i64, i32, %struct.rb_node }
%union.anon.0 = type { %struct.rb_node }
%struct._notify_script = type { i8**, i32, i32, i32, i32 }
%struct._seq_counter = type { i8, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct._notify_fifo = type { i8*, i32, i8, %struct._notify_script* }
%struct._checker = type { void (i8*)*, void (%struct._IO_FILE*, i8*)*, i32 (%struct._thread*)*, i1 (i8*, i8*)*, %struct._virtual_server*, %struct._real_server*, i8*, i8, i8, i8, %struct._conn_opts*, i32, i64, i64, i32, i64, i32, i32, i64 }
%struct._virtual_server = type { i8*, %struct._virtual_server_group*, %struct.sockaddr_storage, i32, %struct._real_server*, i16, i16, i8, i32, [16 x i8], i32, i32, [16 x i8], i32, i32, i8*, i32, %struct._list*, i32, i8, i8, i8, i64, i64, i32, i64, %struct._notify_script*, %struct._notify_script*, i32, i32, i32, i8, i8 }
%struct._virtual_server_group = type { i8*, %struct._list*, %struct._list* }
%struct._real_server = type { %struct.sockaddr_storage, i32, i32, i32, i32, i32, i32, i32, %struct._notify_script*, %struct._notify_script*, i32, i64, i64, i32, i64, i32, i8, i32, i8, i8, i8* }
%struct._conn_opts = type { %struct.sockaddr_storage, %struct.sockaddr_storage, [16 x i8], i32, i32 }
%struct._dns_check = type { i16, i8*, [768 x i8], i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._dns_header = type { i16, i16, i16, i16, i16, i16 }

@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"NS\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"CNAME\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"SOA\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"MX\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"TXT\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"AAAA\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"RRSIG\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"DNSKEY\00", align 1
@DNS_TYPE = constant [10 x %struct._dns_type] [%struct._dns_type { i16 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0) }, %struct._dns_type { i16 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0) }, %struct._dns_type { i16 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0) }, %struct._dns_type { i16 6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0) }, %struct._dns_type { i16 15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0) }, %struct._dns_type { i16 16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0) }, %struct._dns_type { i16 28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0) }, %struct._dns_type { i16 46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0) }, %struct._dns_type { i16 48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0) }, %struct._dns_type zeroinitializer], align 16
@.str.9 = private unnamed_addr constant [10 x i8] c"DNS_CHECK\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@garp_delay = common global %struct._list* null, align 8
@.str.12 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"   Keepalive method = DNS_CHECK\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"   Type = %s\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"   Name = %s\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"failed to create socket. Rescheduling.\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"UDP socket bind failed. Rescheduling.\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"DNS_CHECK (%s) %s\00", align 1
@time_now = external global %struct.timeval, align 8
@.str.20 = private unnamed_addr constant [24 x i8] c"failed to write socket.\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"failed to write all of the datagram.\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"write timeout to socket.\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c" after %d retries\00", align 1
@global_data = external global %struct._data*, align 8
@.str.24 = private unnamed_addr constant [35 x i8] c"=> DNS_CHECK: failed on service <=\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"=> DNS_CHECK: succeed on service <=\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"read timeout from socket\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"failed to read socket. %s\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"read error occurred. (rcode = %d)\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"connection error.\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"connection failure.\00", align 1
@checkers_queue = external global %struct._list*, align 8
@.str.31 = private unnamed_addr constant [46 x i8] c"Unknown DNS check type %s - defaulting to SOA\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"[blank]\00", align 1

; Function Attrs: nounwind uwtable
define void @install_dns_check_keyword() #0 !dbg !463 {
  call void @install_keyword(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), void (%struct._vector*)* @dns_check_handler), !dbg !467
  call void @install_sublevel(), !dbg !468
  call void @install_checker_common_keywords(i1 zeroext true), !dbg !469
  call void @install_keyword(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), void (%struct._vector*)* @dns_type_handler), !dbg !470
  call void @install_keyword(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), void (%struct._vector*)* @dns_name_handler), !dbg !471
  call void @install_sublevel_end_handler(void ()* @dns_check_end), !dbg !472
  call void @install_sublevel_end(), !dbg !473
  ret void, !dbg !474
}

declare void @install_keyword(i8*, void (%struct._vector*)*) #1

; Function Attrs: nounwind uwtable
define internal void @dns_check_handler(%struct._vector*) #0 !dbg !475 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._checker*, align 8
  %4 = alloca %struct._dns_check*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !487, metadata !488), !dbg !489
  call void @llvm.dbg.declare(metadata %struct._checker** %3, metadata !490, metadata !488), !dbg !491
  call void @llvm.dbg.declare(metadata %struct._dns_check** %4, metadata !492, metadata !488), !dbg !493
  %5 = call i8* @zalloc(i64 792), !dbg !494
  %6 = bitcast i8* %5 to %struct._dns_check*, !dbg !495
  store %struct._dns_check* %6, %struct._dns_check** %4, align 8, !dbg !493
  %7 = load %struct._dns_check*, %struct._dns_check** %4, align 8, !dbg !496
  %8 = getelementptr inbounds %struct._dns_check, %struct._dns_check* %7, i32 0, i32 0, !dbg !497
  store i16 6, i16* %8, align 8, !dbg !498
  %9 = load %struct._dns_check*, %struct._dns_check** %4, align 8, !dbg !499
  %10 = getelementptr inbounds %struct._dns_check, %struct._dns_check* %9, i32 0, i32 1, !dbg !500
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i8** %10, align 8, !dbg !501
  %11 = load %struct._dns_check*, %struct._dns_check** %4, align 8, !dbg !502
  %12 = bitcast %struct._dns_check* %11 to i8*, !dbg !502
  %13 = call i8* @zalloc(i64 280), !dbg !503
  %14 = bitcast i8* %13 to %struct._conn_opts*, !dbg !504
  %15 = call %struct._checker* @queue_checker(void (i8*)* @dns_free, void (%struct._IO_FILE*, i8*)* @dns_dump, i32 (%struct._thread*)* @dns_connect_thread, i1 (i8*, i8*)* @dns_check_compare, i8* %12, %struct._conn_opts* %14), !dbg !505
  store %struct._checker* %15, %struct._checker** %3, align 8, !dbg !506
  %16 = load %struct._checker*, %struct._checker** %3, align 8, !dbg !507
  %17 = getelementptr inbounds %struct._checker, %struct._checker* %16, i32 0, i32 17, !dbg !508
  store i32 3, i32* %17, align 4, !dbg !509
  %18 = load %struct._checker*, %struct._checker** %3, align 8, !dbg !510
  %19 = getelementptr inbounds %struct._checker, %struct._checker* %18, i32 0, i32 18, !dbg !511
  store i64 0, i64* %19, align 8, !dbg !512
  ret void, !dbg !513
}

declare void @install_sublevel() #1

declare void @install_checker_common_keywords(i1 zeroext) #1

; Function Attrs: nounwind uwtable
define internal void @dns_type_handler(%struct._vector*) #0 !dbg !514 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca i16, align 2
  %4 = alloca %struct._dns_check*, align 8
  %5 = alloca i8*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !515, metadata !488), !dbg !516
  call void @llvm.dbg.declare(metadata i16* %3, metadata !517, metadata !488), !dbg !518
  call void @llvm.dbg.declare(metadata %struct._dns_check** %4, metadata !519, metadata !488), !dbg !520
  %6 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !521
  %7 = getelementptr inbounds %struct._list, %struct._list* %6, i32 0, i32 1, !dbg !522
  %8 = load %struct._element*, %struct._element** %7, align 8, !dbg !522
  %9 = getelementptr inbounds %struct._element, %struct._element* %8, i32 0, i32 2, !dbg !523
  %10 = load i8*, i8** %9, align 8, !dbg !523
  %11 = bitcast i8* %10 to %struct._checker*, !dbg !524
  %12 = getelementptr inbounds %struct._checker, %struct._checker* %11, i32 0, i32 6, !dbg !525
  %13 = load i8*, i8** %12, align 8, !dbg !525
  %14 = bitcast i8* %13 to %struct._dns_check*, !dbg !526
  store %struct._dns_check* %14, %struct._dns_check** %4, align 8, !dbg !520
  call void @llvm.dbg.declare(metadata i8** %5, metadata !527, metadata !488), !dbg !528
  %15 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !529
  %16 = call i8* @set_value(%struct._vector* %15), !dbg !530
  store i8* %16, i8** %5, align 8, !dbg !528
  %17 = load i8*, i8** %5, align 8, !dbg !531
  %18 = call zeroext i16 @dns_type_lookup(i8* %17), !dbg !532
  store i16 %18, i16* %3, align 2, !dbg !533
  %19 = load i16, i16* %3, align 2, !dbg !534
  %20 = icmp ne i16 %19, 0, !dbg !534
  br i1 %20, label %32, label %21, !dbg !536

; <label>:21:                                     ; preds = %1
  %22 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !537
  %23 = getelementptr inbounds %struct._vector, %struct._vector* %22, i32 0, i32 1, !dbg !538
  %24 = load i32, i32* %23, align 4, !dbg !538
  %25 = icmp ult i32 %24, 2, !dbg !539
  br i1 %25, label %26, label %27, !dbg !540

; <label>:26:                                     ; preds = %21
  br label %30, !dbg !541

; <label>:27:                                     ; preds = %21
  %28 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !543
  %29 = call i8* @strvec_slot(%struct._vector* %28, i64 1), !dbg !545
  br label %30, !dbg !546

; <label>:30:                                     ; preds = %27, %26
  %31 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), %26 ], [ %29, %27 ], !dbg !547
  call void (i32, i8*, ...) @report_config_error(i32 11, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.31, i32 0, i32 0), i8* %31), !dbg !549
  br label %36, !dbg !549

; <label>:32:                                     ; preds = %1
  %33 = load i16, i16* %3, align 2, !dbg !550
  %34 = load %struct._dns_check*, %struct._dns_check** %4, align 8, !dbg !551
  %35 = getelementptr inbounds %struct._dns_check, %struct._dns_check* %34, i32 0, i32 0, !dbg !552
  store i16 %33, i16* %35, align 8, !dbg !553
  br label %36

; <label>:36:                                     ; preds = %32, %30
  %37 = load i8*, i8** %5, align 8, !dbg !554
  call void @free(i8* %37) #4, !dbg !555
  store i8* null, i8** %5, align 8, !dbg !556
  ret void, !dbg !557
}

; Function Attrs: nounwind uwtable
define internal void @dns_name_handler(%struct._vector*) #0 !dbg !558 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._dns_check*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !559, metadata !488), !dbg !560
  call void @llvm.dbg.declare(metadata %struct._dns_check** %3, metadata !561, metadata !488), !dbg !562
  %4 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !563
  %5 = getelementptr inbounds %struct._list, %struct._list* %4, i32 0, i32 1, !dbg !564
  %6 = load %struct._element*, %struct._element** %5, align 8, !dbg !564
  %7 = getelementptr inbounds %struct._element, %struct._element* %6, i32 0, i32 2, !dbg !565
  %8 = load i8*, i8** %7, align 8, !dbg !565
  %9 = bitcast i8* %8 to %struct._checker*, !dbg !566
  %10 = getelementptr inbounds %struct._checker, %struct._checker* %9, i32 0, i32 6, !dbg !567
  %11 = load i8*, i8** %10, align 8, !dbg !567
  %12 = bitcast i8* %11 to %struct._dns_check*, !dbg !568
  store %struct._dns_check* %12, %struct._dns_check** %3, align 8, !dbg !562
  %13 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !569
  %14 = call i8* @set_value(%struct._vector* %13), !dbg !570
  %15 = load %struct._dns_check*, %struct._dns_check** %3, align 8, !dbg !571
  %16 = getelementptr inbounds %struct._dns_check, %struct._dns_check* %15, i32 0, i32 1, !dbg !572
  store i8* %14, i8** %16, align 8, !dbg !573
  ret void, !dbg !574
}

declare void @install_sublevel_end_handler(void ()*) #1

; Function Attrs: nounwind uwtable
define internal void @dns_check_end() #0 !dbg !575 {
  %1 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !576
  %2 = getelementptr inbounds %struct._list, %struct._list* %1, i32 0, i32 1, !dbg !578
  %3 = load %struct._element*, %struct._element** %2, align 8, !dbg !578
  %4 = getelementptr inbounds %struct._element, %struct._element* %3, i32 0, i32 2, !dbg !579
  %5 = load i8*, i8** %4, align 8, !dbg !579
  %6 = bitcast i8* %5 to %struct._checker*, !dbg !580
  %7 = getelementptr inbounds %struct._checker, %struct._checker* %6, i32 0, i32 10, !dbg !581
  %8 = load %struct._conn_opts*, %struct._conn_opts** %7, align 8, !dbg !581
  %9 = call zeroext i1 @check_conn_opts(%struct._conn_opts* %8), !dbg !582
  br i1 %9, label %11, label %10, !dbg !583

; <label>:10:                                     ; preds = %0
  call void @dequeue_new_checker(), !dbg !584
  br label %11, !dbg !586

; <label>:11:                                     ; preds = %10, %0
  ret void, !dbg !587
}

declare void @install_sublevel_end() #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i8* @zalloc(i64) #1

declare %struct._checker* @queue_checker(void (i8*)*, void (%struct._IO_FILE*, i8*)*, i32 (%struct._thread*)*, i1 (i8*, i8*)*, i8*, %struct._conn_opts*) #1

; Function Attrs: nounwind uwtable
define internal void @dns_free(i8*) #0 !dbg !588 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._checker*, align 8
  %4 = alloca %struct._dns_check*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !589, metadata !488), !dbg !590
  call void @llvm.dbg.declare(metadata %struct._checker** %3, metadata !591, metadata !488), !dbg !592
  %5 = load i8*, i8** %2, align 8, !dbg !593
  %6 = bitcast i8* %5 to %struct._checker*, !dbg !593
  store %struct._checker* %6, %struct._checker** %3, align 8, !dbg !592
  call void @llvm.dbg.declare(metadata %struct._dns_check** %4, metadata !594, metadata !488), !dbg !595
  %7 = load %struct._checker*, %struct._checker** %3, align 8, !dbg !596
  %8 = getelementptr inbounds %struct._checker, %struct._checker* %7, i32 0, i32 6, !dbg !597
  %9 = load i8*, i8** %8, align 8, !dbg !597
  %10 = bitcast i8* %9 to %struct._dns_check*, !dbg !596
  store %struct._dns_check* %10, %struct._dns_check** %4, align 8, !dbg !595
  %11 = load %struct._dns_check*, %struct._dns_check** %4, align 8, !dbg !598
  %12 = getelementptr inbounds %struct._dns_check, %struct._dns_check* %11, i32 0, i32 1, !dbg !599
  %13 = load i8*, i8** %12, align 8, !dbg !599
  call void @free(i8* %13) #4, !dbg !600
  %14 = load %struct._dns_check*, %struct._dns_check** %4, align 8, !dbg !601
  %15 = getelementptr inbounds %struct._dns_check, %struct._dns_check* %14, i32 0, i32 1, !dbg !602
  store i8* null, i8** %15, align 8, !dbg !603
  %16 = load i8*, i8** %2, align 8, !dbg !604
  %17 = bitcast i8* %16 to %struct._checker*, !dbg !605
  %18 = getelementptr inbounds %struct._checker, %struct._checker* %17, i32 0, i32 10, !dbg !606
  %19 = load %struct._conn_opts*, %struct._conn_opts** %18, align 8, !dbg !606
  %20 = bitcast %struct._conn_opts* %19 to i8*, !dbg !607
  call void @free(i8* %20) #4, !dbg !608
  %21 = load i8*, i8** %2, align 8, !dbg !609
  %22 = bitcast i8* %21 to %struct._checker*, !dbg !610
  %23 = getelementptr inbounds %struct._checker, %struct._checker* %22, i32 0, i32 10, !dbg !611
  store %struct._conn_opts* null, %struct._conn_opts** %23, align 8, !dbg !612
  %24 = load i8*, i8** %2, align 8, !dbg !613
  %25 = bitcast i8* %24 to %struct._checker*, !dbg !614
  %26 = getelementptr inbounds %struct._checker, %struct._checker* %25, i32 0, i32 6, !dbg !615
  %27 = load i8*, i8** %26, align 8, !dbg !615
  call void @free(i8* %27) #4, !dbg !616
  %28 = load i8*, i8** %2, align 8, !dbg !617
  %29 = bitcast i8* %28 to %struct._checker*, !dbg !618
  %30 = getelementptr inbounds %struct._checker, %struct._checker* %29, i32 0, i32 6, !dbg !619
  store i8* null, i8** %30, align 8, !dbg !620
  %31 = load i8*, i8** %2, align 8, !dbg !621
  call void @free(i8* %31) #4, !dbg !622
  store i8* null, i8** %2, align 8, !dbg !623
  ret void, !dbg !624
}

; Function Attrs: nounwind uwtable
define internal void @dns_dump(%struct._IO_FILE*, i8*) #0 !dbg !625 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._checker*, align 8
  %6 = alloca %struct._dns_check*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !626, metadata !488), !dbg !627
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !628, metadata !488), !dbg !629
  call void @llvm.dbg.declare(metadata %struct._checker** %5, metadata !630, metadata !488), !dbg !631
  %7 = load i8*, i8** %4, align 8, !dbg !632
  %8 = bitcast i8* %7 to %struct._checker*, !dbg !632
  store %struct._checker* %8, %struct._checker** %5, align 8, !dbg !631
  call void @llvm.dbg.declare(metadata %struct._dns_check** %6, metadata !633, metadata !488), !dbg !634
  %9 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !635
  %10 = getelementptr inbounds %struct._checker, %struct._checker* %9, i32 0, i32 6, !dbg !636
  %11 = load i8*, i8** %10, align 8, !dbg !636
  %12 = bitcast i8* %11 to %struct._dns_check*, !dbg !635
  store %struct._dns_check* %12, %struct._dns_check** %6, align 8, !dbg !634
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !637
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.13, i32 0, i32 0)), !dbg !638
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !639
  %15 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !640
  %16 = bitcast %struct._checker* %15 to i8*, !dbg !640
  call void @dump_checker_opts(%struct._IO_FILE* %14, i8* %16), !dbg !641
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !642
  %18 = load %struct._dns_check*, %struct._dns_check** %6, align 8, !dbg !643
  %19 = getelementptr inbounds %struct._dns_check, %struct._dns_check* %18, i32 0, i32 0, !dbg !644
  %20 = load i16, i16* %19, align 8, !dbg !644
  %21 = call i8* @dns_type_name(i16 zeroext %20), !dbg !645
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i8* %21), !dbg !646
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !648
  %23 = load %struct._dns_check*, %struct._dns_check** %6, align 8, !dbg !649
  %24 = getelementptr inbounds %struct._dns_check, %struct._dns_check* %23, i32 0, i32 1, !dbg !650
  %25 = load i8*, i8** %24, align 8, !dbg !650
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8* %25), !dbg !651
  ret void, !dbg !652
}

; Function Attrs: nounwind uwtable
define internal i32 @dns_connect_thread(%struct._thread*) #0 !dbg !653 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._thread*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct._checker*, align 8
  %7 = alloca %struct._conn_opts*, align 8
  store %struct._thread* %0, %struct._thread** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %3, metadata !656, metadata !488), !dbg !657
  call void @llvm.dbg.declare(metadata i32* %4, metadata !658, metadata !488), !dbg !659
  call void @llvm.dbg.declare(metadata i32* %5, metadata !660, metadata !488), !dbg !661
  call void @llvm.dbg.declare(metadata %struct._checker** %6, metadata !662, metadata !488), !dbg !663
  %8 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !664
  %9 = getelementptr inbounds %struct._thread, %struct._thread* %8, i32 0, i32 4, !dbg !665
  %10 = load i8*, i8** %9, align 8, !dbg !665
  %11 = bitcast i8* %10 to %struct._checker*, !dbg !666
  store %struct._checker* %11, %struct._checker** %6, align 8, !dbg !663
  call void @llvm.dbg.declare(metadata %struct._conn_opts** %7, metadata !667, metadata !488), !dbg !668
  %12 = load %struct._checker*, %struct._checker** %6, align 8, !dbg !669
  %13 = getelementptr inbounds %struct._checker, %struct._checker* %12, i32 0, i32 10, !dbg !670
  %14 = load %struct._conn_opts*, %struct._conn_opts** %13, align 8, !dbg !670
  store %struct._conn_opts* %14, %struct._conn_opts** %7, align 8, !dbg !668
  %15 = load %struct._checker*, %struct._checker** %6, align 8, !dbg !671
  %16 = getelementptr inbounds %struct._checker, %struct._checker* %15, i32 0, i32 7, !dbg !673
  %17 = load i8, i8* %16, align 8, !dbg !673
  %18 = trunc i8 %17 to i1, !dbg !673
  br i1 %18, label %29, label %19, !dbg !674

; <label>:19:                                     ; preds = %1
  %20 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !675
  %21 = getelementptr inbounds %struct._thread, %struct._thread* %20, i32 0, i32 2, !dbg !677
  %22 = load %struct._thread_master*, %struct._thread_master** %21, align 8, !dbg !677
  %23 = load %struct._checker*, %struct._checker** %6, align 8, !dbg !678
  %24 = bitcast %struct._checker* %23 to i8*, !dbg !678
  %25 = load %struct._checker*, %struct._checker** %6, align 8, !dbg !679
  %26 = getelementptr inbounds %struct._checker, %struct._checker* %25, i32 0, i32 12, !dbg !680
  %27 = load i64, i64* %26, align 8, !dbg !680
  %28 = call %struct._thread* @thread_add_timer(%struct._thread_master* %22, i32 (%struct._thread*)* @dns_connect_thread, i8* %24, i64 %27), !dbg !681
  store i32 0, i32* %2, align 4, !dbg !682
  br label %85, !dbg !682

; <label>:29:                                     ; preds = %1
  %30 = load %struct._conn_opts*, %struct._conn_opts** %7, align 8, !dbg !683
  %31 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %30, i32 0, i32 0, !dbg !685
  %32 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %31, i32 0, i32 0, !dbg !686
  %33 = load i16, i16* %32, align 8, !dbg !686
  %34 = zext i16 %33 to i32, !dbg !683
  %35 = call i32 @socket(i32 %34, i32 526338, i32 17) #4, !dbg !687
  store i32 %35, i32* %4, align 4, !dbg !688
  %36 = icmp eq i32 %35, -1, !dbg !689
  br i1 %36, label %37, label %48, !dbg !690

; <label>:37:                                     ; preds = %29
  %38 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !691
  call void (%struct._thread*, i32, i8*, ...) @dns_log_message(%struct._thread* %38, i32 6, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i32 0, i32 0)), !dbg !693
  %39 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !694
  %40 = getelementptr inbounds %struct._thread, %struct._thread* %39, i32 0, i32 2, !dbg !695
  %41 = load %struct._thread_master*, %struct._thread_master** %40, align 8, !dbg !695
  %42 = load %struct._checker*, %struct._checker** %6, align 8, !dbg !696
  %43 = bitcast %struct._checker* %42 to i8*, !dbg !696
  %44 = load %struct._checker*, %struct._checker** %6, align 8, !dbg !697
  %45 = getelementptr inbounds %struct._checker, %struct._checker* %44, i32 0, i32 12, !dbg !698
  %46 = load i64, i64* %45, align 8, !dbg !698
  %47 = call %struct._thread* @thread_add_timer(%struct._thread_master* %41, i32 (%struct._thread*)* @dns_connect_thread, i8* %43, i64 %46), !dbg !699
  store i32 0, i32* %2, align 4, !dbg !700
  br label %85, !dbg !700

; <label>:48:                                     ; preds = %29
  %49 = load i32, i32* %4, align 4, !dbg !701
  %50 = load %struct._conn_opts*, %struct._conn_opts** %7, align 8, !dbg !702
  %51 = call i32 @socket_bind_connect(i32 %49, %struct._conn_opts* %50), !dbg !703
  store i32 %51, i32* %5, align 4, !dbg !704
  %52 = load i32, i32* %5, align 4, !dbg !705
  %53 = icmp eq i32 %52, 3, !dbg !707
  br i1 %53, label %54, label %62, !dbg !708

; <label>:54:                                     ; preds = %48
  %55 = load i32, i32* %4, align 4, !dbg !709
  %56 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !711
  %57 = getelementptr inbounds %struct._thread, %struct._thread* %56, i32 0, i32 6, !dbg !712
  %58 = bitcast %union.anon* %57 to i32*, !dbg !713
  store i32 %55, i32* %58, align 8, !dbg !714
  %59 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !715
  %60 = call i32 @dns_make_query(%struct._thread* %59), !dbg !716
  %61 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !717
  call void @dns_send(%struct._thread* %61), !dbg !718
  store i32 0, i32* %2, align 4, !dbg !719
  br label %85, !dbg !719

; <label>:62:                                     ; preds = %48
  %63 = load i32, i32* %4, align 4, !dbg !720
  %64 = load i32, i32* %5, align 4, !dbg !722
  %65 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !723
  %66 = load %struct._conn_opts*, %struct._conn_opts** %7, align 8, !dbg !724
  %67 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %66, i32 0, i32 3, !dbg !725
  %68 = load i32, i32* %67, align 8, !dbg !725
  %69 = zext i32 %68 to i64, !dbg !724
  %70 = call zeroext i1 @socket_connection_state(i32 %63, i32 %64, %struct._thread* %65, i32 (%struct._thread*)* @dns_check_thread, i64 %69), !dbg !726
  br i1 %70, label %71, label %84, !dbg !727

; <label>:71:                                     ; preds = %62
  %72 = load i32, i32* %4, align 4, !dbg !728
  %73 = call i32 @close(i32 %72), !dbg !730
  %74 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !731
  call void (%struct._thread*, i32, i8*, ...) @dns_log_message(%struct._thread* %74, i32 6, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0)), !dbg !732
  %75 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !733
  %76 = getelementptr inbounds %struct._thread, %struct._thread* %75, i32 0, i32 2, !dbg !734
  %77 = load %struct._thread_master*, %struct._thread_master** %76, align 8, !dbg !734
  %78 = load %struct._checker*, %struct._checker** %6, align 8, !dbg !735
  %79 = bitcast %struct._checker* %78 to i8*, !dbg !735
  %80 = load %struct._checker*, %struct._checker** %6, align 8, !dbg !736
  %81 = getelementptr inbounds %struct._checker, %struct._checker* %80, i32 0, i32 12, !dbg !737
  %82 = load i64, i64* %81, align 8, !dbg !737
  %83 = call %struct._thread* @thread_add_timer(%struct._thread_master* %77, i32 (%struct._thread*)* @dns_connect_thread, i8* %79, i64 %82), !dbg !738
  br label %84, !dbg !739

; <label>:84:                                     ; preds = %71, %62
  store i32 0, i32* %2, align 4, !dbg !740
  br label %85, !dbg !740

; <label>:85:                                     ; preds = %84, %54, %37, %19
  %86 = load i32, i32* %2, align 4, !dbg !741
  ret i32 %86, !dbg !741
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @dns_check_compare(i8*, i8*) #0 !dbg !742 {
  %3 = alloca i1, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._dns_check*, align 8
  %7 = alloca %struct._dns_check*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !743, metadata !488), !dbg !744
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !745, metadata !488), !dbg !746
  call void @llvm.dbg.declare(metadata %struct._dns_check** %6, metadata !747, metadata !488), !dbg !748
  %8 = load i8*, i8** %4, align 8, !dbg !749
  %9 = bitcast i8* %8 to %struct._checker*, !dbg !750
  %10 = getelementptr inbounds %struct._checker, %struct._checker* %9, i32 0, i32 6, !dbg !751
  %11 = load i8*, i8** %10, align 8, !dbg !751
  %12 = bitcast i8* %11 to %struct._dns_check*, !dbg !752
  store %struct._dns_check* %12, %struct._dns_check** %6, align 8, !dbg !748
  call void @llvm.dbg.declare(metadata %struct._dns_check** %7, metadata !753, metadata !488), !dbg !754
  %13 = load i8*, i8** %5, align 8, !dbg !755
  %14 = bitcast i8* %13 to %struct._checker*, !dbg !756
  %15 = getelementptr inbounds %struct._checker, %struct._checker* %14, i32 0, i32 6, !dbg !757
  %16 = load i8*, i8** %15, align 8, !dbg !757
  %17 = bitcast i8* %16 to %struct._dns_check*, !dbg !758
  store %struct._dns_check* %17, %struct._dns_check** %7, align 8, !dbg !754
  %18 = load i8*, i8** %4, align 8, !dbg !759
  %19 = bitcast i8* %18 to %struct._checker*, !dbg !761
  %20 = getelementptr inbounds %struct._checker, %struct._checker* %19, i32 0, i32 10, !dbg !762
  %21 = load %struct._conn_opts*, %struct._conn_opts** %20, align 8, !dbg !762
  %22 = load i8*, i8** %5, align 8, !dbg !763
  %23 = bitcast i8* %22 to %struct._checker*, !dbg !764
  %24 = getelementptr inbounds %struct._checker, %struct._checker* %23, i32 0, i32 10, !dbg !765
  %25 = load %struct._conn_opts*, %struct._conn_opts** %24, align 8, !dbg !765
  %26 = call zeroext i1 @compare_conn_opts(%struct._conn_opts* %21, %struct._conn_opts* %25), !dbg !766
  br i1 %26, label %28, label %27, !dbg !767

; <label>:27:                                     ; preds = %2
  store i1 false, i1* %3, align 1, !dbg !768
  br label %50, !dbg !768

; <label>:28:                                     ; preds = %2
  %29 = load %struct._dns_check*, %struct._dns_check** %6, align 8, !dbg !769
  %30 = getelementptr inbounds %struct._dns_check, %struct._dns_check* %29, i32 0, i32 0, !dbg !771
  %31 = load i16, i16* %30, align 8, !dbg !771
  %32 = zext i16 %31 to i32, !dbg !769
  %33 = load %struct._dns_check*, %struct._dns_check** %7, align 8, !dbg !772
  %34 = getelementptr inbounds %struct._dns_check, %struct._dns_check* %33, i32 0, i32 0, !dbg !773
  %35 = load i16, i16* %34, align 8, !dbg !773
  %36 = zext i16 %35 to i32, !dbg !772
  %37 = icmp ne i32 %32, %36, !dbg !774
  br i1 %37, label %38, label %39, !dbg !775

; <label>:38:                                     ; preds = %28
  store i1 false, i1* %3, align 1, !dbg !776
  br label %50, !dbg !776

; <label>:39:                                     ; preds = %28
  %40 = load %struct._dns_check*, %struct._dns_check** %6, align 8, !dbg !777
  %41 = getelementptr inbounds %struct._dns_check, %struct._dns_check* %40, i32 0, i32 1, !dbg !779
  %42 = load i8*, i8** %41, align 8, !dbg !779
  %43 = load %struct._dns_check*, %struct._dns_check** %7, align 8, !dbg !780
  %44 = getelementptr inbounds %struct._dns_check, %struct._dns_check* %43, i32 0, i32 1, !dbg !781
  %45 = load i8*, i8** %44, align 8, !dbg !781
  %46 = call i32 @strcmp(i8* %42, i8* %45) #9, !dbg !782
  %47 = icmp ne i32 %46, 0, !dbg !783
  br i1 %47, label %48, label %49, !dbg !784

; <label>:48:                                     ; preds = %39
  store i1 false, i1* %3, align 1, !dbg !785
  br label %50, !dbg !785

; <label>:49:                                     ; preds = %39
  store i1 true, i1* %3, align 1, !dbg !786
  br label %50, !dbg !786

; <label>:50:                                     ; preds = %49, %48, %38, %27
  %51 = load i1, i1* %3, align 1, !dbg !787
  ret i1 %51, !dbg !787
}

; Function Attrs: nounwind
declare void @free(i8*) #3

declare void @conf_write(%struct._IO_FILE*, i8*, ...) #1

declare void @dump_checker_opts(%struct._IO_FILE*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i8* @dns_type_name(i16 zeroext) #0 !dbg !788 {
  %2 = alloca i8*, align 8
  %3 = alloca i16, align 2
  %4 = alloca %struct._dns_type*, align 8
  store i16 %0, i16* %3, align 2
  call void @llvm.dbg.declare(metadata i16* %3, metadata !793, metadata !488), !dbg !794
  call void @llvm.dbg.declare(metadata %struct._dns_type** %4, metadata !795, metadata !488), !dbg !797
  store %struct._dns_type* getelementptr inbounds ([10 x %struct._dns_type], [10 x %struct._dns_type]* @DNS_TYPE, i32 0, i32 0), %struct._dns_type** %4, align 8, !dbg !798
  br label %5, !dbg !800

; <label>:5:                                      ; preds = %23, %1
  %6 = load %struct._dns_type*, %struct._dns_type** %4, align 8, !dbg !801
  %7 = getelementptr inbounds %struct._dns_type, %struct._dns_type* %6, i32 0, i32 0, !dbg !804
  %8 = load i16, i16* %7, align 8, !dbg !804
  %9 = icmp ne i16 %8, 0, !dbg !805
  br i1 %9, label %10, label %26, !dbg !805

; <label>:10:                                     ; preds = %5
  %11 = load i16, i16* %3, align 2, !dbg !806
  %12 = zext i16 %11 to i32, !dbg !806
  %13 = load %struct._dns_type*, %struct._dns_type** %4, align 8, !dbg !809
  %14 = getelementptr inbounds %struct._dns_type, %struct._dns_type* %13, i32 0, i32 0, !dbg !810
  %15 = load i16, i16* %14, align 8, !dbg !810
  %16 = zext i16 %15 to i32, !dbg !809
  %17 = icmp eq i32 %12, %16, !dbg !811
  br i1 %17, label %18, label %22, !dbg !812

; <label>:18:                                     ; preds = %10
  %19 = load %struct._dns_type*, %struct._dns_type** %4, align 8, !dbg !813
  %20 = getelementptr inbounds %struct._dns_type, %struct._dns_type* %19, i32 0, i32 1, !dbg !815
  %21 = load i8*, i8** %20, align 8, !dbg !815
  store i8* %21, i8** %2, align 8, !dbg !816
  br label %27, !dbg !816

; <label>:22:                                     ; preds = %10
  br label %23, !dbg !817

; <label>:23:                                     ; preds = %22
  %24 = load %struct._dns_type*, %struct._dns_type** %4, align 8, !dbg !818
  %25 = getelementptr inbounds %struct._dns_type, %struct._dns_type* %24, i32 1, !dbg !818
  store %struct._dns_type* %25, %struct._dns_type** %4, align 8, !dbg !818
  br label %5, !dbg !820, !llvm.loop !821

; <label>:26:                                     ; preds = %5
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8** %2, align 8, !dbg !823
  br label %27, !dbg !823

; <label>:27:                                     ; preds = %26, %18
  %28 = load i8*, i8** %2, align 8, !dbg !824
  ret i8* %28, !dbg !824
}

declare %struct._thread* @thread_add_timer(%struct._thread_master*, i32 (%struct._thread*)*, i8*, i64) #1

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #3

; Function Attrs: nounwind uwtable
define internal void @dns_log_message(%struct._thread*, i32, i8*, ...) #0 !dbg !825 {
  %4 = alloca %struct._thread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [255 x i8], align 16
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  %9 = alloca %struct._checker*, align 8
  store %struct._thread* %0, %struct._thread** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %4, metadata !828, metadata !488), !dbg !829
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !830, metadata !488), !dbg !831
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !832, metadata !488), !dbg !833
  call void @llvm.dbg.declare(metadata [255 x i8]* %7, metadata !834, metadata !488), !dbg !838
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %8, metadata !839, metadata !488), !dbg !851
  call void @llvm.dbg.declare(metadata %struct._checker** %9, metadata !852, metadata !488), !dbg !853
  %10 = load %struct._thread*, %struct._thread** %4, align 8, !dbg !854
  %11 = getelementptr inbounds %struct._thread, %struct._thread* %10, i32 0, i32 4, !dbg !855
  %12 = load i8*, i8** %11, align 8, !dbg !855
  %13 = bitcast i8* %12 to %struct._checker*, !dbg !856
  store %struct._checker* %13, %struct._checker** %9, align 8, !dbg !853
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i32 0, i32 0, !dbg !857
  %15 = bitcast %struct.__va_list_tag* %14 to i8*, !dbg !857
  call void @llvm.va_start(i8* %15), !dbg !857
  %16 = getelementptr inbounds [255 x i8], [255 x i8]* %7, i32 0, i32 0, !dbg !858
  %17 = load i8*, i8** %6, align 8, !dbg !859
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i32 0, i32 0, !dbg !860
  %19 = call i32 @vsnprintf(i8* %16, i64 255, i8* %17, %struct.__va_list_tag* %18) #4, !dbg !861
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i32 0, i32 0, !dbg !862
  %21 = bitcast %struct.__va_list_tag* %20 to i8*, !dbg !862
  call void @llvm.va_end(i8* %21), !dbg !862
  %22 = load i32, i32* %5, align 4, !dbg !863
  %23 = load %struct._checker*, %struct._checker** %9, align 8, !dbg !864
  %24 = getelementptr inbounds %struct._checker, %struct._checker* %23, i32 0, i32 5, !dbg !865
  %25 = load %struct._real_server*, %struct._real_server** %24, align 8, !dbg !865
  %26 = getelementptr inbounds %struct._real_server, %struct._real_server* %25, i32 0, i32 0, !dbg !866
  %27 = load %struct._checker*, %struct._checker** %9, align 8, !dbg !867
  %28 = getelementptr inbounds %struct._checker, %struct._checker* %27, i32 0, i32 4, !dbg !868
  %29 = load %struct._virtual_server*, %struct._virtual_server** %28, align 8, !dbg !868
  %30 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %29, i32 0, i32 6, !dbg !869
  %31 = load i16, i16* %30, align 2, !dbg !869
  %32 = call i8* @inet_sockaddrtotrio(%struct.sockaddr_storage* %26, i16 zeroext %31), !dbg !870
  %33 = getelementptr inbounds [255 x i8], [255 x i8]* %7, i32 0, i32 0, !dbg !871
  call void (i32, i8*, ...) @log_message(i32 %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i32 0, i32 0), i8* %32, i8* %33), !dbg !872
  ret void, !dbg !874
}

declare i32 @socket_bind_connect(i32, %struct._conn_opts*) #1

; Function Attrs: nounwind uwtable
define internal i32 @dns_make_query(%struct._thread*) #0 !dbg !875 {
  %2 = alloca %struct._thread*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct._checker*, align 8
  %9 = alloca %struct._dns_check*, align 8
  %10 = alloca %struct._dns_header*, align 8
  store %struct._thread* %0, %struct._thread** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %2, metadata !876, metadata !488), !dbg !877
  call void @llvm.dbg.declare(metadata i16* %3, metadata !878, metadata !488), !dbg !879
  store i16 0, i16* %3, align 2, !dbg !879
  call void @llvm.dbg.declare(metadata i8** %4, metadata !880, metadata !488), !dbg !881
  call void @llvm.dbg.declare(metadata i8** %5, metadata !882, metadata !488), !dbg !883
  call void @llvm.dbg.declare(metadata i8** %6, metadata !884, metadata !488), !dbg !885
  call void @llvm.dbg.declare(metadata i64* %7, metadata !886, metadata !488), !dbg !887
  call void @llvm.dbg.declare(metadata %struct._checker** %8, metadata !888, metadata !488), !dbg !889
  %11 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !890
  %12 = getelementptr inbounds %struct._thread, %struct._thread* %11, i32 0, i32 4, !dbg !891
  %13 = load i8*, i8** %12, align 8, !dbg !891
  %14 = bitcast i8* %13 to %struct._checker*, !dbg !892
  store %struct._checker* %14, %struct._checker** %8, align 8, !dbg !889
  call void @llvm.dbg.declare(metadata %struct._dns_check** %9, metadata !893, metadata !488), !dbg !894
  %15 = load %struct._checker*, %struct._checker** %8, align 8, !dbg !895
  %16 = getelementptr inbounds %struct._checker, %struct._checker* %15, i32 0, i32 6, !dbg !896
  %17 = load i8*, i8** %16, align 8, !dbg !896
  %18 = bitcast i8* %17 to %struct._dns_check*, !dbg !897
  store %struct._dns_check* %18, %struct._dns_check** %9, align 8, !dbg !894
  call void @llvm.dbg.declare(metadata %struct._dns_header** %10, metadata !898, metadata !488), !dbg !899
  %19 = load %struct._dns_check*, %struct._dns_check** %9, align 8, !dbg !900
  %20 = getelementptr inbounds %struct._dns_check, %struct._dns_check* %19, i32 0, i32 2, !dbg !901
  %21 = getelementptr inbounds [768 x i8], [768 x i8]* %20, i32 0, i32 0, !dbg !900
  %22 = bitcast i8* %21 to %struct._dns_header*, !dbg !902
  store %struct._dns_header* %22, %struct._dns_header** %10, align 8, !dbg !899
  %23 = load i16, i16* %3, align 2, !dbg !903
  %24 = zext i16 %23 to i32, !dbg !903
  %25 = or i32 %24, 256, !dbg !903
  %26 = trunc i32 %25 to i16, !dbg !903
  store i16 %26, i16* %3, align 2, !dbg !903
  %27 = call i64 @random() #4, !dbg !904
  %28 = trunc i64 %27 to i16, !dbg !904
  %29 = call zeroext i16 @htons(i16 zeroext %28) #2, !dbg !905
  %30 = load %struct._dns_header*, %struct._dns_header** %10, align 8, !dbg !907
  %31 = getelementptr inbounds %struct._dns_header, %struct._dns_header* %30, i32 0, i32 0, !dbg !908
  store i16 %29, i16* %31, align 2, !dbg !909
  %32 = load i16, i16* %3, align 2, !dbg !910
  %33 = call zeroext i16 @htons(i16 zeroext %32) #2, !dbg !911
  %34 = load %struct._dns_header*, %struct._dns_header** %10, align 8, !dbg !912
  %35 = getelementptr inbounds %struct._dns_header, %struct._dns_header* %34, i32 0, i32 1, !dbg !913
  store i16 %33, i16* %35, align 2, !dbg !914
  %36 = call zeroext i16 @htons(i16 zeroext 1) #2, !dbg !915
  %37 = load %struct._dns_header*, %struct._dns_header** %10, align 8, !dbg !916
  %38 = getelementptr inbounds %struct._dns_header, %struct._dns_header* %37, i32 0, i32 2, !dbg !917
  store i16 %36, i16* %38, align 2, !dbg !918
  %39 = call zeroext i16 @htons(i16 zeroext 0) #2, !dbg !919
  %40 = load %struct._dns_header*, %struct._dns_header** %10, align 8, !dbg !920
  %41 = getelementptr inbounds %struct._dns_header, %struct._dns_header* %40, i32 0, i32 3, !dbg !921
  store i16 %39, i16* %41, align 2, !dbg !922
  %42 = call zeroext i16 @htons(i16 zeroext 0) #2, !dbg !923
  %43 = load %struct._dns_header*, %struct._dns_header** %10, align 8, !dbg !924
  %44 = getelementptr inbounds %struct._dns_header, %struct._dns_header* %43, i32 0, i32 4, !dbg !925
  store i16 %42, i16* %44, align 2, !dbg !926
  %45 = call zeroext i16 @htons(i16 zeroext 0) #2, !dbg !927
  %46 = load %struct._dns_header*, %struct._dns_header** %10, align 8, !dbg !928
  %47 = getelementptr inbounds %struct._dns_header, %struct._dns_header* %46, i32 0, i32 5, !dbg !929
  store i16 %45, i16* %47, align 2, !dbg !930
  %48 = load %struct._dns_header*, %struct._dns_header** %10, align 8, !dbg !931
  %49 = getelementptr inbounds %struct._dns_header, %struct._dns_header* %48, i64 1, !dbg !932
  %50 = bitcast %struct._dns_header* %49 to i8*, !dbg !933
  store i8* %50, i8** %4, align 8, !dbg !934
  %51 = load %struct._dns_check*, %struct._dns_check** %9, align 8, !dbg !935
  %52 = getelementptr inbounds %struct._dns_check, %struct._dns_check* %51, i32 0, i32 1, !dbg !937
  %53 = load i8*, i8** %52, align 8, !dbg !937
  store i8* %53, i8** %5, align 8, !dbg !938
  br label %54, !dbg !939

; <label>:54:                                     ; preds = %93, %1
  %55 = load i8*, i8** %5, align 8, !dbg !940
  %56 = load i8, i8* %55, align 1, !dbg !943
  %57 = icmp ne i8 %56, 0, !dbg !944
  br i1 %57, label %58, label %95, !dbg !944

; <label>:58:                                     ; preds = %54
  %59 = load i8*, i8** %5, align 8, !dbg !945
  %60 = call i8* @strchr(i8* %59, i32 46) #9, !dbg !948
  store i8* %60, i8** %6, align 8, !dbg !949
  %61 = icmp ne i8* %60, null, !dbg !949
  br i1 %61, label %67, label %62, !dbg !950

; <label>:62:                                     ; preds = %58
  %63 = load i8*, i8** %5, align 8, !dbg !951
  %64 = load i8*, i8** %5, align 8, !dbg !953
  %65 = call i64 @strlen(i8* %64) #9, !dbg !954
  %66 = getelementptr inbounds i8, i8* %63, i64 %65, !dbg !955
  store i8* %66, i8** %6, align 8, !dbg !956
  br label %67, !dbg !957

; <label>:67:                                     ; preds = %62, %58
  %68 = load i8*, i8** %6, align 8, !dbg !958
  %69 = load i8*, i8** %5, align 8, !dbg !959
  %70 = ptrtoint i8* %68 to i64, !dbg !960
  %71 = ptrtoint i8* %69 to i64, !dbg !960
  %72 = sub i64 %70, %71, !dbg !960
  store i64 %72, i64* %7, align 8, !dbg !961
  %73 = load i64, i64* %7, align 8, !dbg !962
  %74 = trunc i64 %73 to i8, !dbg !963
  %75 = load i8*, i8** %4, align 8, !dbg !964
  %76 = getelementptr inbounds i8, i8* %75, i32 1, !dbg !964
  store i8* %76, i8** %4, align 8, !dbg !964
  store i8 %74, i8* %75, align 1, !dbg !965
  %77 = load i8*, i8** %4, align 8, !dbg !966
  %78 = load i8*, i8** %5, align 8, !dbg !967
  %79 = load i64, i64* %7, align 8, !dbg !968
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %77, i8* %78, i64 %79, i32 1, i1 false), !dbg !969
  %80 = load i64, i64* %7, align 8, !dbg !970
  %81 = load i8*, i8** %4, align 8, !dbg !971
  %82 = getelementptr inbounds i8, i8* %81, i64 %80, !dbg !971
  store i8* %82, i8** %4, align 8, !dbg !971
  br label %83, !dbg !972

; <label>:83:                                     ; preds = %67
  %84 = load i8*, i8** %6, align 8, !dbg !973
  %85 = load i8, i8* %84, align 1, !dbg !975
  %86 = sext i8 %85 to i32, !dbg !975
  %87 = icmp ne i32 %86, 0, !dbg !975
  br i1 %87, label %88, label %91, !dbg !975

; <label>:88:                                     ; preds = %83
  %89 = load i8*, i8** %6, align 8, !dbg !976
  %90 = getelementptr inbounds i8, i8* %89, i32 1, !dbg !976
  store i8* %90, i8** %6, align 8, !dbg !976
  br label %93, !dbg !978

; <label>:91:                                     ; preds = %83
  %92 = load i8*, i8** %6, align 8, !dbg !979
  br label %93, !dbg !981

; <label>:93:                                     ; preds = %91, %88
  %94 = phi i8* [ %90, %88 ], [ %92, %91 ], !dbg !982
  store i8* %94, i8** %5, align 8, !dbg !984
  br label %54, !dbg !985, !llvm.loop !986

; <label>:95:                                     ; preds = %54
  %96 = load %struct._dns_check*, %struct._dns_check** %9, align 8, !dbg !988
  %97 = getelementptr inbounds %struct._dns_check, %struct._dns_check* %96, i32 0, i32 1, !dbg !989
  %98 = load i8*, i8** %97, align 8, !dbg !989
  %99 = call i64 @strlen(i8* %98) #9, !dbg !990
  store i64 %99, i64* %7, align 8, !dbg !991
  %100 = load i64, i64* %7, align 8, !dbg !992
  %101 = icmp ne i64 %100, 0, !dbg !992
  br i1 %101, label %102, label %115, !dbg !994

; <label>:102:                                    ; preds = %95
  %103 = load i64, i64* %7, align 8, !dbg !995
  %104 = add i64 %103, -1, !dbg !995
  store i64 %104, i64* %7, align 8, !dbg !995
  %105 = load %struct._dns_check*, %struct._dns_check** %9, align 8, !dbg !997
  %106 = getelementptr inbounds %struct._dns_check, %struct._dns_check* %105, i32 0, i32 1, !dbg !998
  %107 = load i8*, i8** %106, align 8, !dbg !998
  %108 = getelementptr inbounds i8, i8* %107, i64 %104, !dbg !997
  %109 = load i8, i8* %108, align 1, !dbg !997
  %110 = sext i8 %109 to i32, !dbg !997
  %111 = icmp ne i32 %110, 46, !dbg !999
  br i1 %111, label %112, label %115, !dbg !1000

; <label>:112:                                    ; preds = %102
  %113 = load i8*, i8** %4, align 8, !dbg !1001
  %114 = getelementptr inbounds i8, i8* %113, i32 1, !dbg !1001
  store i8* %114, i8** %4, align 8, !dbg !1001
  store i8 0, i8* %113, align 1, !dbg !1003
  br label %115, !dbg !1004

; <label>:115:                                    ; preds = %112, %102, %95
  br label %116, !dbg !1005, !llvm.loop !1006

; <label>:116:                                    ; preds = %115
  %117 = load %struct._dns_check*, %struct._dns_check** %9, align 8, !dbg !1007
  %118 = getelementptr inbounds %struct._dns_check, %struct._dns_check* %117, i32 0, i32 0, !dbg !1010
  %119 = load i16, i16* %118, align 8, !dbg !1010
  %120 = call zeroext i16 @htons(i16 zeroext %119) #2, !dbg !1011
  %121 = load i8*, i8** %4, align 8, !dbg !1012
  %122 = bitcast i8* %121 to i16*, !dbg !1013
  store i16 %120, i16* %122, align 2, !dbg !1014
  %123 = load i8*, i8** %4, align 8, !dbg !1015
  %124 = getelementptr inbounds i8, i8* %123, i64 2, !dbg !1016
  store i8* %124, i8** %4, align 8, !dbg !1017
  br label %125, !dbg !1018

; <label>:125:                                    ; preds = %116
  br label %126, !dbg !1019, !llvm.loop !1020

; <label>:126:                                    ; preds = %125
  %127 = call zeroext i16 @htons(i16 zeroext 1) #2, !dbg !1021
  %128 = load i8*, i8** %4, align 8, !dbg !1024
  %129 = bitcast i8* %128 to i16*, !dbg !1025
  store i16 %127, i16* %129, align 2, !dbg !1026
  %130 = load i8*, i8** %4, align 8, !dbg !1027
  %131 = getelementptr inbounds i8, i8* %130, i64 2, !dbg !1028
  store i8* %131, i8** %4, align 8, !dbg !1029
  br label %132, !dbg !1030

; <label>:132:                                    ; preds = %126
  %133 = load i8*, i8** %4, align 8, !dbg !1031
  %134 = load %struct._dns_header*, %struct._dns_header** %10, align 8, !dbg !1032
  %135 = bitcast %struct._dns_header* %134 to i8*, !dbg !1033
  %136 = ptrtoint i8* %133 to i64, !dbg !1034
  %137 = ptrtoint i8* %135 to i64, !dbg !1034
  %138 = sub i64 %136, %137, !dbg !1034
  %139 = load %struct._dns_check*, %struct._dns_check** %9, align 8, !dbg !1035
  %140 = getelementptr inbounds %struct._dns_check, %struct._dns_check* %139, i32 0, i32 3, !dbg !1036
  store i64 %138, i64* %140, align 8, !dbg !1037
  ret i32 0, !dbg !1038
}

; Function Attrs: nounwind uwtable
define internal void @dns_send(%struct._thread*) #0 !dbg !1039 {
  %2 = alloca %struct._thread*, align 8
  %3 = alloca %struct._checker*, align 8
  %4 = alloca %struct._dns_check*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct._thread* %0, %struct._thread** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %2, metadata !1042, metadata !488), !dbg !1043
  call void @llvm.dbg.declare(metadata %struct._checker** %3, metadata !1044, metadata !488), !dbg !1045
  %7 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1046
  %8 = getelementptr inbounds %struct._thread, %struct._thread* %7, i32 0, i32 4, !dbg !1047
  %9 = load i8*, i8** %8, align 8, !dbg !1047
  %10 = bitcast i8* %9 to %struct._checker*, !dbg !1048
  store %struct._checker* %10, %struct._checker** %3, align 8, !dbg !1045
  call void @llvm.dbg.declare(metadata %struct._dns_check** %4, metadata !1049, metadata !488), !dbg !1050
  %11 = load %struct._checker*, %struct._checker** %3, align 8, !dbg !1051
  %12 = getelementptr inbounds %struct._checker, %struct._checker* %11, i32 0, i32 6, !dbg !1052
  %13 = load i8*, i8** %12, align 8, !dbg !1052
  %14 = bitcast i8* %13 to %struct._dns_check*, !dbg !1053
  store %struct._dns_check* %14, %struct._dns_check** %4, align 8, !dbg !1050
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1054, metadata !488), !dbg !1055
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1056, metadata !488), !dbg !1057
  %15 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1058
  %16 = getelementptr inbounds %struct._thread, %struct._thread* %15, i32 0, i32 5, !dbg !1059
  %17 = bitcast %struct.timeval* %16 to { i64, i64 }*, !dbg !1060
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %17, i32 0, i32 0, !dbg !1060
  %19 = load i64, i64* %18, align 8, !dbg !1060
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %17, i32 0, i32 1, !dbg !1060
  %21 = load i64, i64* %20, align 8, !dbg !1060
  %22 = call i64 @timer_long(i64 %19, i64 %21), !dbg !1060
  %23 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.timeval* @time_now to { i64, i64 }*), i32 0, i32 0), align 8, !dbg !1061
  %24 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.timeval* @time_now to { i64, i64 }*), i32 0, i32 1), align 8, !dbg !1061
  %25 = call i64 @timer_long(i64 %23, i64 %24), !dbg !1062
  %26 = sub i64 %22, %25, !dbg !1064
  store i64 %26, i64* %5, align 8, !dbg !1065
  %27 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1066
  %28 = getelementptr inbounds %struct._thread, %struct._thread* %27, i32 0, i32 6, !dbg !1067
  %29 = bitcast %union.anon* %28 to i32*, !dbg !1068
  %30 = load i32, i32* %29, align 8, !dbg !1068
  %31 = load %struct._dns_check*, %struct._dns_check** %4, align 8, !dbg !1069
  %32 = getelementptr inbounds %struct._dns_check, %struct._dns_check* %31, i32 0, i32 2, !dbg !1070
  %33 = getelementptr inbounds [768 x i8], [768 x i8]* %32, i32 0, i32 0, !dbg !1069
  %34 = load %struct._dns_check*, %struct._dns_check** %4, align 8, !dbg !1071
  %35 = getelementptr inbounds %struct._dns_check, %struct._dns_check* %34, i32 0, i32 3, !dbg !1072
  %36 = load i64, i64* %35, align 8, !dbg !1072
  %37 = call i64 @send(i32 %30, i8* %33, i64 %36, i32 0), !dbg !1073
  store i64 %37, i64* %6, align 8, !dbg !1074
  %38 = load i64, i64* %6, align 8, !dbg !1075
  %39 = icmp eq i64 %38, -1, !dbg !1077
  br i1 %39, label %40, label %67, !dbg !1078

; <label>:40:                                     ; preds = %1
  %41 = call i32* @__errno_location() #2, !dbg !1079
  %42 = load i32, i32* %41, align 4, !dbg !1082
  %43 = icmp eq i32 %42, 11, !dbg !1083
  br i1 %43, label %52, label %44, !dbg !1084

; <label>:44:                                     ; preds = %40
  %45 = call i32* @__errno_location() #2, !dbg !1085
  %46 = load i32, i32* %45, align 4, !dbg !1087
  %47 = icmp eq i32 %46, 11, !dbg !1088
  br i1 %47, label %52, label %48, !dbg !1089

; <label>:48:                                     ; preds = %44
  %49 = call i32* @__errno_location() #2, !dbg !1090
  %50 = load i32, i32* %49, align 4, !dbg !1092
  %51 = icmp eq i32 %50, 4, !dbg !1093
  br i1 %51, label %52, label %64, !dbg !1094

; <label>:52:                                     ; preds = %48, %44, %40
  %53 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1095
  %54 = getelementptr inbounds %struct._thread, %struct._thread* %53, i32 0, i32 2, !dbg !1097
  %55 = load %struct._thread_master*, %struct._thread_master** %54, align 8, !dbg !1097
  %56 = load %struct._checker*, %struct._checker** %3, align 8, !dbg !1098
  %57 = bitcast %struct._checker* %56 to i8*, !dbg !1098
  %58 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1099
  %59 = getelementptr inbounds %struct._thread, %struct._thread* %58, i32 0, i32 6, !dbg !1100
  %60 = bitcast %union.anon* %59 to i32*, !dbg !1101
  %61 = load i32, i32* %60, align 8, !dbg !1101
  %62 = load i64, i64* %5, align 8, !dbg !1102
  %63 = call %struct._thread* @thread_add_write(%struct._thread_master* %55, i32 (%struct._thread*)* @dns_send_thread, i8* %57, i32 %61, i64 %62), !dbg !1103
  br label %88, !dbg !1104

; <label>:64:                                     ; preds = %48
  %65 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1105
  %66 = call i32 (%struct._thread*, i32, i8*, ...) @dns_final(%struct._thread* %65, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i32 0, i32 0)), !dbg !1106
  br label %88, !dbg !1107

; <label>:67:                                     ; preds = %1
  %68 = load i64, i64* %6, align 8, !dbg !1108
  %69 = load %struct._dns_check*, %struct._dns_check** %4, align 8, !dbg !1110
  %70 = getelementptr inbounds %struct._dns_check, %struct._dns_check* %69, i32 0, i32 3, !dbg !1111
  %71 = load i64, i64* %70, align 8, !dbg !1111
  %72 = icmp ne i64 %68, %71, !dbg !1112
  br i1 %72, label %73, label %76, !dbg !1113

; <label>:73:                                     ; preds = %67
  %74 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1114
  %75 = call i32 (%struct._thread*, i32, i8*, ...) @dns_final(%struct._thread* %74, i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i32 0, i32 0)), !dbg !1116
  br label %88, !dbg !1117

; <label>:76:                                     ; preds = %67
  %77 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1118
  %78 = getelementptr inbounds %struct._thread, %struct._thread* %77, i32 0, i32 2, !dbg !1119
  %79 = load %struct._thread_master*, %struct._thread_master** %78, align 8, !dbg !1119
  %80 = load %struct._checker*, %struct._checker** %3, align 8, !dbg !1120
  %81 = bitcast %struct._checker* %80 to i8*, !dbg !1120
  %82 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1121
  %83 = getelementptr inbounds %struct._thread, %struct._thread* %82, i32 0, i32 6, !dbg !1122
  %84 = bitcast %union.anon* %83 to i32*, !dbg !1123
  %85 = load i32, i32* %84, align 8, !dbg !1123
  %86 = load i64, i64* %5, align 8, !dbg !1124
  %87 = call %struct._thread* @thread_add_read(%struct._thread_master* %79, i32 (%struct._thread*)* @dns_recv_thread, i8* %81, i32 %85, i64 %86), !dbg !1125
  br label %88, !dbg !1126

; <label>:88:                                     ; preds = %76, %73, %64, %52
  ret void, !dbg !1127
}

declare zeroext i1 @socket_connection_state(i32, i32, %struct._thread*, i32 (%struct._thread*)*, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @dns_check_thread(%struct._thread*) #0 !dbg !1128 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._thread*, align 8
  %4 = alloca i32, align 4
  store %struct._thread* %0, %struct._thread** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %3, metadata !1129, metadata !488), !dbg !1130
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1131, metadata !488), !dbg !1132
  %5 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1133
  %6 = getelementptr inbounds %struct._thread, %struct._thread* %5, i32 0, i32 1, !dbg !1135
  %7 = load i32, i32* %6, align 8, !dbg !1135
  %8 = icmp eq i32 %7, 8, !dbg !1136
  br i1 %8, label %9, label %12, !dbg !1137

; <label>:9:                                      ; preds = %1
  %10 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1138
  %11 = call i32 (%struct._thread*, i32, i8*, ...) @dns_final(%struct._thread* %10, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i32 0, i32 0)), !dbg !1140
  store i32 0, i32* %2, align 4, !dbg !1141
  br label %29, !dbg !1141

; <label>:12:                                     ; preds = %1
  %13 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1142
  %14 = call i32 @socket_state(%struct._thread* %13, i32 (%struct._thread*)* @dns_check_thread), !dbg !1143
  store i32 %14, i32* %4, align 4, !dbg !1144
  %15 = load i32, i32* %4, align 4, !dbg !1145
  switch i32 %15, label %28 [
    i32 0, label %16
    i32 2, label %19
    i32 3, label %22
  ], !dbg !1146

; <label>:16:                                     ; preds = %12
  %17 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1147
  %18 = call i32 (%struct._thread*, i32, i8*, ...) @dns_final(%struct._thread* %17, i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0)), !dbg !1149
  br label %28, !dbg !1150

; <label>:19:                                     ; preds = %12
  %20 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1151
  %21 = call i32 (%struct._thread*, i32, i8*, ...) @dns_final(%struct._thread* %20, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0)), !dbg !1152
  br label %28, !dbg !1153

; <label>:22:                                     ; preds = %12
  %23 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1154
  %24 = call i32 @dns_make_query(%struct._thread* %23), !dbg !1155
  %25 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1156
  call void @dns_send(%struct._thread* %25), !dbg !1157
  %26 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1158
  %27 = call i32 @thread_del_write(%struct._thread* %26), !dbg !1159
  br label %28, !dbg !1160

; <label>:28:                                     ; preds = %12, %22, %19, %16
  store i32 0, i32* %2, align 4, !dbg !1161
  br label %29, !dbg !1161

; <label>:29:                                     ; preds = %28, %9
  %30 = load i32, i32* %2, align 4, !dbg !1162
  ret i32 %30, !dbg !1162
}

declare i32 @close(i32) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

; Function Attrs: nounwind
declare i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare void @log_message(i32, i8*, ...) #1

declare i8* @inet_sockaddrtotrio(%struct.sockaddr_storage*, i16 zeroext) #1

; Function Attrs: nounwind readnone
declare zeroext i16 @htons(i16 zeroext) #5

; Function Attrs: nounwind
declare i64 @random() #3

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #6

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @timer_long(i64, i64) #8 !dbg !1163 {
  %3 = alloca %struct.timeval, align 8
  %4 = bitcast %struct.timeval* %3 to { i64, i64 }*
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  store i64 %0, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval* %3, metadata !1166, metadata !488), !dbg !1167
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0, !dbg !1168
  %8 = load i64, i64* %7, align 8, !dbg !1168
  %9 = mul i64 %8, 1000000, !dbg !1169
  %10 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1, !dbg !1170
  %11 = load i64, i64* %10, align 8, !dbg !1170
  %12 = add i64 %9, %11, !dbg !1171
  ret i64 %12, !dbg !1172
}

declare i64 @send(i32, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

declare %struct._thread* @thread_add_write(%struct._thread_master*, i32 (%struct._thread*)*, i8*, i32, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @dns_send_thread(%struct._thread*) #0 !dbg !1173 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._thread*, align 8
  store %struct._thread* %0, %struct._thread** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %3, metadata !1174, metadata !488), !dbg !1175
  %4 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1176
  %5 = getelementptr inbounds %struct._thread, %struct._thread* %4, i32 0, i32 1, !dbg !1178
  %6 = load i32, i32* %5, align 8, !dbg !1178
  %7 = icmp eq i32 %6, 8, !dbg !1179
  br i1 %7, label %8, label %11, !dbg !1180

; <label>:8:                                      ; preds = %1
  %9 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1181
  %10 = call i32 (%struct._thread*, i32, i8*, ...) @dns_final(%struct._thread* %9, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i32 0, i32 0)), !dbg !1183
  store i32 0, i32* %2, align 4, !dbg !1184
  br label %13, !dbg !1184

; <label>:11:                                     ; preds = %1
  %12 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1185
  call void @dns_send(%struct._thread* %12), !dbg !1186
  store i32 0, i32* %2, align 4, !dbg !1187
  br label %13, !dbg !1187

; <label>:13:                                     ; preds = %11, %8
  %14 = load i32, i32* %2, align 4, !dbg !1188
  ret i32 %14, !dbg !1188
}

; Function Attrs: nounwind uwtable
define internal i32 @dns_final(%struct._thread*, i32, i8*, ...) #0 !dbg !1189 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._thread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [255 x i8], align 16
  %9 = alloca [1 x %struct.__va_list_tag], align 16
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca %struct._checker*, align 8
  store %struct._thread* %0, %struct._thread** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %5, metadata !1192, metadata !488), !dbg !1193
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1194, metadata !488), !dbg !1195
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1196, metadata !488), !dbg !1197
  call void @llvm.dbg.declare(metadata [255 x i8]* %8, metadata !1198, metadata !488), !dbg !1199
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %9, metadata !1200, metadata !488), !dbg !1201
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1202, metadata !488), !dbg !1203
  call void @llvm.dbg.declare(metadata i8* %11, metadata !1204, metadata !488), !dbg !1205
  call void @llvm.dbg.declare(metadata i8* %12, metadata !1206, metadata !488), !dbg !1207
  call void @llvm.dbg.declare(metadata %struct._checker** %13, metadata !1208, metadata !488), !dbg !1209
  %14 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !1210
  %15 = getelementptr inbounds %struct._thread, %struct._thread* %14, i32 0, i32 4, !dbg !1211
  %16 = load i8*, i8** %15, align 8, !dbg !1211
  %17 = bitcast i8* %16 to %struct._checker*, !dbg !1212
  store %struct._checker* %17, %struct._checker** %13, align 8, !dbg !1209
  %18 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !1213
  call void @thread_close_fd(%struct._thread* %18), !dbg !1214
  %19 = load i32, i32* %6, align 4, !dbg !1215
  %20 = icmp ne i32 %19, 0, !dbg !1215
  br i1 %20, label %21, label %134, !dbg !1217

; <label>:21:                                     ; preds = %3
  %22 = load %struct._checker*, %struct._checker** %13, align 8, !dbg !1218
  %23 = getelementptr inbounds %struct._checker, %struct._checker* %22, i32 0, i32 8, !dbg !1221
  %24 = load i8, i8* %23, align 1, !dbg !1221
  %25 = trunc i8 %24 to i1, !dbg !1221
  br i1 %25, label %31, label %26, !dbg !1222

; <label>:26:                                     ; preds = %21
  %27 = load %struct._checker*, %struct._checker** %13, align 8, !dbg !1223
  %28 = getelementptr inbounds %struct._checker, %struct._checker* %27, i32 0, i32 9, !dbg !1225
  %29 = load i8, i8* %28, align 2, !dbg !1225
  %30 = trunc i8 %29 to i1, !dbg !1225
  br i1 %30, label %133, label %31, !dbg !1226

; <label>:31:                                     ; preds = %26, %21
  %32 = load %struct._checker*, %struct._checker** %13, align 8, !dbg !1227
  %33 = getelementptr inbounds %struct._checker, %struct._checker* %32, i32 0, i32 16, !dbg !1230
  %34 = load i32, i32* %33, align 8, !dbg !1230
  %35 = load %struct._checker*, %struct._checker** %13, align 8, !dbg !1231
  %36 = getelementptr inbounds %struct._checker, %struct._checker* %35, i32 0, i32 14, !dbg !1232
  %37 = load i32, i32* %36, align 8, !dbg !1232
  %38 = icmp ult i32 %34, %37, !dbg !1233
  br i1 %38, label %39, label %53, !dbg !1234

; <label>:39:                                     ; preds = %31
  %40 = load %struct._checker*, %struct._checker** %13, align 8, !dbg !1235
  %41 = getelementptr inbounds %struct._checker, %struct._checker* %40, i32 0, i32 16, !dbg !1237
  %42 = load i32, i32* %41, align 8, !dbg !1238
  %43 = add i32 %42, 1, !dbg !1238
  store i32 %43, i32* %41, align 8, !dbg !1238
  %44 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !1239
  %45 = getelementptr inbounds %struct._thread, %struct._thread* %44, i32 0, i32 2, !dbg !1240
  %46 = load %struct._thread_master*, %struct._thread_master** %45, align 8, !dbg !1240
  %47 = load %struct._checker*, %struct._checker** %13, align 8, !dbg !1241
  %48 = bitcast %struct._checker* %47 to i8*, !dbg !1241
  %49 = load %struct._checker*, %struct._checker** %13, align 8, !dbg !1242
  %50 = getelementptr inbounds %struct._checker, %struct._checker* %49, i32 0, i32 15, !dbg !1243
  %51 = load i64, i64* %50, align 8, !dbg !1243
  %52 = call %struct._thread* @thread_add_timer(%struct._thread_master* %46, i32 (%struct._thread*)* @dns_connect_thread, i8* %48, i64 %51), !dbg !1244
  store i32 0, i32* %4, align 4, !dbg !1245
  br label %201, !dbg !1245

; <label>:53:                                     ; preds = %31
  %54 = load i8*, i8** %7, align 8, !dbg !1246
  %55 = icmp ne i8* %54, null, !dbg !1246
  br i1 %55, label %56, label %89, !dbg !1248

; <label>:56:                                     ; preds = %53
  %57 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i32 0, i32 0, !dbg !1249
  %58 = bitcast %struct.__va_list_tag* %57 to i8*, !dbg !1249
  call void @llvm.va_start(i8* %58), !dbg !1249
  %59 = getelementptr inbounds [255 x i8], [255 x i8]* %8, i32 0, i32 0, !dbg !1251
  %60 = load i8*, i8** %7, align 8, !dbg !1252
  %61 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i32 0, i32 0, !dbg !1253
  %62 = call i32 @vsnprintf(i8* %59, i64 255, i8* %60, %struct.__va_list_tag* %61) #4, !dbg !1254
  store i32 %62, i32* %10, align 4, !dbg !1255
  %63 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i32 0, i32 0, !dbg !1256
  %64 = bitcast %struct.__va_list_tag* %63 to i8*, !dbg !1256
  call void @llvm.va_end(i8* %64), !dbg !1256
  %65 = load %struct._checker*, %struct._checker** %13, align 8, !dbg !1257
  %66 = getelementptr inbounds %struct._checker, %struct._checker* %65, i32 0, i32 9, !dbg !1259
  %67 = load i8, i8* %66, align 2, !dbg !1259
  %68 = trunc i8 %67 to i1, !dbg !1259
  br i1 %68, label %69, label %86, !dbg !1260

; <label>:69:                                     ; preds = %56
  %70 = load %struct._checker*, %struct._checker** %13, align 8, !dbg !1261
  %71 = getelementptr inbounds %struct._checker, %struct._checker* %70, i32 0, i32 14, !dbg !1263
  %72 = load i32, i32* %71, align 8, !dbg !1263
  %73 = icmp ne i32 %72, 0, !dbg !1261
  br i1 %73, label %74, label %86, !dbg !1264

; <label>:74:                                     ; preds = %69
  %75 = getelementptr inbounds [255 x i8], [255 x i8]* %8, i32 0, i32 0, !dbg !1265
  %76 = load i32, i32* %10, align 4, !dbg !1266
  %77 = sext i32 %76 to i64, !dbg !1267
  %78 = getelementptr inbounds i8, i8* %75, i64 %77, !dbg !1267
  %79 = load i32, i32* %10, align 4, !dbg !1268
  %80 = sext i32 %79 to i64, !dbg !1268
  %81 = sub i64 255, %80, !dbg !1269
  %82 = load %struct._checker*, %struct._checker** %13, align 8, !dbg !1270
  %83 = getelementptr inbounds %struct._checker, %struct._checker* %82, i32 0, i32 14, !dbg !1271
  %84 = load i32, i32* %83, align 8, !dbg !1271
  %85 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %78, i64 %81, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i32 0, i32 0), i32 %84) #4, !dbg !1272
  br label %86, !dbg !1272

; <label>:86:                                     ; preds = %74, %69, %56
  %87 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !1273
  %88 = getelementptr inbounds [255 x i8], [255 x i8]* %8, i32 0, i32 0, !dbg !1274
  call void (%struct._thread*, i32, i8*, ...) @dns_log_message(%struct._thread* %87, i32 6, i8* %88), !dbg !1275
  br label %89, !dbg !1276

; <label>:89:                                     ; preds = %86, %53
  %90 = load %struct._checker*, %struct._checker** %13, align 8, !dbg !1277
  %91 = getelementptr inbounds %struct._checker, %struct._checker* %90, i32 0, i32 8, !dbg !1278
  %92 = load i8, i8* %91, align 1, !dbg !1278
  %93 = trunc i8 %92 to i1, !dbg !1278
  %94 = zext i1 %93 to i8, !dbg !1279
  store i8 %94, i8* %11, align 1, !dbg !1279
  %95 = load %struct._checker*, %struct._checker** %13, align 8, !dbg !1280
  %96 = getelementptr inbounds %struct._checker, %struct._checker* %95, i32 0, i32 5, !dbg !1281
  %97 = load %struct._real_server*, %struct._real_server** %96, align 8, !dbg !1281
  %98 = getelementptr inbounds %struct._real_server, %struct._real_server* %97, i32 0, i32 16, !dbg !1282
  %99 = load i8, i8* %98, align 4, !dbg !1282
  %100 = trunc i8 %99 to i1, !dbg !1282
  %101 = zext i1 %100 to i8, !dbg !1283
  store i8 %101, i8* %12, align 1, !dbg !1283
  %102 = load %struct._checker*, %struct._checker** %13, align 8, !dbg !1284
  call void @update_svr_checker_state(i1 zeroext false, %struct._checker* %102), !dbg !1285
  %103 = load i8, i8* %11, align 1, !dbg !1286
  %104 = trunc i8 %103 to i1, !dbg !1286
  br i1 %104, label %105, label %132, !dbg !1288

; <label>:105:                                    ; preds = %89
  %106 = load %struct._checker*, %struct._checker** %13, align 8, !dbg !1289
  %107 = getelementptr inbounds %struct._checker, %struct._checker* %106, i32 0, i32 5, !dbg !1291
  %108 = load %struct._real_server*, %struct._real_server** %107, align 8, !dbg !1291
  %109 = getelementptr inbounds %struct._real_server, %struct._real_server* %108, i32 0, i32 15, !dbg !1292
  %110 = load i32, i32* %109, align 8, !dbg !1292
  %111 = icmp ne i32 %110, 0, !dbg !1289
  br i1 %111, label %112, label %132, !dbg !1293

; <label>:112:                                    ; preds = %105
  %113 = load i8, i8* %12, align 1, !dbg !1294
  %114 = trunc i8 %113 to i1, !dbg !1294
  %115 = zext i1 %114 to i32, !dbg !1294
  %116 = load %struct._checker*, %struct._checker** %13, align 8, !dbg !1295
  %117 = getelementptr inbounds %struct._checker, %struct._checker* %116, i32 0, i32 5, !dbg !1296
  %118 = load %struct._real_server*, %struct._real_server** %117, align 8, !dbg !1296
  %119 = getelementptr inbounds %struct._real_server, %struct._real_server* %118, i32 0, i32 16, !dbg !1297
  %120 = load i8, i8* %119, align 4, !dbg !1297
  %121 = trunc i8 %120 to i1, !dbg !1297
  %122 = zext i1 %121 to i32, !dbg !1295
  %123 = icmp ne i32 %115, %122, !dbg !1298
  br i1 %123, label %129, label %124, !dbg !1299

; <label>:124:                                    ; preds = %112
  %125 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1300
  %126 = getelementptr inbounds %struct._data, %struct._data* %125, i32 0, i32 66, !dbg !1301
  %127 = load i8, i8* %126, align 2, !dbg !1301
  %128 = trunc i8 %127 to i1, !dbg !1301
  br i1 %128, label %132, label %129, !dbg !1302

; <label>:129:                                    ; preds = %124, %112
  %130 = load %struct._checker*, %struct._checker** %13, align 8, !dbg !1304
  %131 = bitcast %struct._checker* %130 to i8*, !dbg !1304
  call void @smtp_alert(i32 0, i8* %131, i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i32 0, i32 0)), !dbg !1305
  br label %132, !dbg !1305

; <label>:132:                                    ; preds = %129, %124, %105, %89
  br label %133, !dbg !1306

; <label>:133:                                    ; preds = %132, %26
  br label %189, !dbg !1307

; <label>:134:                                    ; preds = %3
  %135 = load %struct._checker*, %struct._checker** %13, align 8, !dbg !1308
  %136 = getelementptr inbounds %struct._checker, %struct._checker* %135, i32 0, i32 8, !dbg !1311
  %137 = load i8, i8* %136, align 1, !dbg !1311
  %138 = trunc i8 %137 to i1, !dbg !1311
  br i1 %138, label %139, label %144, !dbg !1312

; <label>:139:                                    ; preds = %134
  %140 = load %struct._checker*, %struct._checker** %13, align 8, !dbg !1313
  %141 = getelementptr inbounds %struct._checker, %struct._checker* %140, i32 0, i32 9, !dbg !1315
  %142 = load i8, i8* %141, align 2, !dbg !1315
  %143 = trunc i8 %142 to i1, !dbg !1315
  br i1 %143, label %188, label %144, !dbg !1316

; <label>:144:                                    ; preds = %139, %134
  %145 = load %struct._checker*, %struct._checker** %13, align 8, !dbg !1317
  %146 = getelementptr inbounds %struct._checker, %struct._checker* %145, i32 0, i32 8, !dbg !1319
  %147 = load i8, i8* %146, align 1, !dbg !1319
  %148 = trunc i8 %147 to i1, !dbg !1319
  %149 = zext i1 %148 to i8, !dbg !1320
  store i8 %149, i8* %11, align 1, !dbg !1320
  %150 = load %struct._checker*, %struct._checker** %13, align 8, !dbg !1321
  %151 = getelementptr inbounds %struct._checker, %struct._checker* %150, i32 0, i32 5, !dbg !1322
  %152 = load %struct._real_server*, %struct._real_server** %151, align 8, !dbg !1322
  %153 = getelementptr inbounds %struct._real_server, %struct._real_server* %152, i32 0, i32 16, !dbg !1323
  %154 = load i8, i8* %153, align 4, !dbg !1323
  %155 = trunc i8 %154 to i1, !dbg !1323
  %156 = zext i1 %155 to i8, !dbg !1324
  store i8 %156, i8* %12, align 1, !dbg !1324
  %157 = load %struct._checker*, %struct._checker** %13, align 8, !dbg !1325
  call void @update_svr_checker_state(i1 zeroext true, %struct._checker* %157), !dbg !1326
  %158 = load i8, i8* %11, align 1, !dbg !1327
  %159 = trunc i8 %158 to i1, !dbg !1327
  br i1 %159, label %187, label %160, !dbg !1329

; <label>:160:                                    ; preds = %144
  %161 = load %struct._checker*, %struct._checker** %13, align 8, !dbg !1330
  %162 = getelementptr inbounds %struct._checker, %struct._checker* %161, i32 0, i32 5, !dbg !1332
  %163 = load %struct._real_server*, %struct._real_server** %162, align 8, !dbg !1332
  %164 = getelementptr inbounds %struct._real_server, %struct._real_server* %163, i32 0, i32 15, !dbg !1333
  %165 = load i32, i32* %164, align 8, !dbg !1333
  %166 = icmp ne i32 %165, 0, !dbg !1330
  br i1 %166, label %167, label %187, !dbg !1334

; <label>:167:                                    ; preds = %160
  %168 = load i8, i8* %12, align 1, !dbg !1335
  %169 = trunc i8 %168 to i1, !dbg !1335
  %170 = zext i1 %169 to i32, !dbg !1335
  %171 = load %struct._checker*, %struct._checker** %13, align 8, !dbg !1336
  %172 = getelementptr inbounds %struct._checker, %struct._checker* %171, i32 0, i32 5, !dbg !1337
  %173 = load %struct._real_server*, %struct._real_server** %172, align 8, !dbg !1337
  %174 = getelementptr inbounds %struct._real_server, %struct._real_server* %173, i32 0, i32 16, !dbg !1338
  %175 = load i8, i8* %174, align 4, !dbg !1338
  %176 = trunc i8 %175 to i1, !dbg !1338
  %177 = zext i1 %176 to i32, !dbg !1336
  %178 = icmp ne i32 %170, %177, !dbg !1339
  br i1 %178, label %184, label %179, !dbg !1340

; <label>:179:                                    ; preds = %167
  %180 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1341
  %181 = getelementptr inbounds %struct._data, %struct._data* %180, i32 0, i32 66, !dbg !1342
  %182 = load i8, i8* %181, align 2, !dbg !1342
  %183 = trunc i8 %182 to i1, !dbg !1342
  br i1 %183, label %187, label %184, !dbg !1343

; <label>:184:                                    ; preds = %179, %167
  %185 = load %struct._checker*, %struct._checker** %13, align 8, !dbg !1345
  %186 = bitcast %struct._checker* %185 to i8*, !dbg !1345
  call void @smtp_alert(i32 0, i8* %186, i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.25, i32 0, i32 0)), !dbg !1346
  br label %187, !dbg !1346

; <label>:187:                                    ; preds = %184, %179, %160, %144
  br label %188, !dbg !1347

; <label>:188:                                    ; preds = %187, %139
  br label %189

; <label>:189:                                    ; preds = %188, %133
  %190 = load %struct._checker*, %struct._checker** %13, align 8, !dbg !1348
  %191 = getelementptr inbounds %struct._checker, %struct._checker* %190, i32 0, i32 16, !dbg !1349
  store i32 0, i32* %191, align 8, !dbg !1350
  %192 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !1351
  %193 = getelementptr inbounds %struct._thread, %struct._thread* %192, i32 0, i32 2, !dbg !1352
  %194 = load %struct._thread_master*, %struct._thread_master** %193, align 8, !dbg !1352
  %195 = load %struct._checker*, %struct._checker** %13, align 8, !dbg !1353
  %196 = bitcast %struct._checker* %195 to i8*, !dbg !1353
  %197 = load %struct._checker*, %struct._checker** %13, align 8, !dbg !1354
  %198 = getelementptr inbounds %struct._checker, %struct._checker* %197, i32 0, i32 12, !dbg !1355
  %199 = load i64, i64* %198, align 8, !dbg !1355
  %200 = call %struct._thread* @thread_add_timer(%struct._thread_master* %194, i32 (%struct._thread*)* @dns_connect_thread, i8* %196, i64 %199), !dbg !1356
  store i32 0, i32* %4, align 4, !dbg !1357
  br label %201, !dbg !1357

; <label>:201:                                    ; preds = %189, %39
  %202 = load i32, i32* %4, align 4, !dbg !1358
  ret i32 %202, !dbg !1358
}

declare %struct._thread* @thread_add_read(%struct._thread_master*, i32 (%struct._thread*)*, i8*, i32, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @dns_recv_thread(%struct._thread*) #0 !dbg !1359 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._thread*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [768 x i8], align 16
  %7 = alloca %struct._dns_header*, align 8
  %8 = alloca %struct._dns_header*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct._checker*, align 8
  %12 = alloca %struct._dns_check*, align 8
  store %struct._thread* %0, %struct._thread** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %3, metadata !1360, metadata !488), !dbg !1361
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1362, metadata !488), !dbg !1363
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1364, metadata !488), !dbg !1365
  call void @llvm.dbg.declare(metadata [768 x i8]* %6, metadata !1366, metadata !488), !dbg !1368
  call void @llvm.dbg.declare(metadata %struct._dns_header** %7, metadata !1369, metadata !488), !dbg !1370
  call void @llvm.dbg.declare(metadata %struct._dns_header** %8, metadata !1371, metadata !488), !dbg !1372
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1373, metadata !488), !dbg !1374
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1375, metadata !488), !dbg !1376
  call void @llvm.dbg.declare(metadata %struct._checker** %11, metadata !1377, metadata !488), !dbg !1378
  %13 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1379
  %14 = getelementptr inbounds %struct._thread, %struct._thread* %13, i32 0, i32 4, !dbg !1380
  %15 = load i8*, i8** %14, align 8, !dbg !1380
  %16 = bitcast i8* %15 to %struct._checker*, !dbg !1381
  store %struct._checker* %16, %struct._checker** %11, align 8, !dbg !1378
  call void @llvm.dbg.declare(metadata %struct._dns_check** %12, metadata !1382, metadata !488), !dbg !1383
  %17 = load %struct._checker*, %struct._checker** %11, align 8, !dbg !1384
  %18 = getelementptr inbounds %struct._checker, %struct._checker* %17, i32 0, i32 6, !dbg !1385
  %19 = load i8*, i8** %18, align 8, !dbg !1385
  %20 = bitcast i8* %19 to %struct._dns_check*, !dbg !1386
  store %struct._dns_check* %20, %struct._dns_check** %12, align 8, !dbg !1383
  %21 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1387
  %22 = getelementptr inbounds %struct._thread, %struct._thread* %21, i32 0, i32 1, !dbg !1389
  %23 = load i32, i32* %22, align 8, !dbg !1389
  %24 = icmp eq i32 %23, 9, !dbg !1390
  br i1 %24, label %25, label %28, !dbg !1391

; <label>:25:                                     ; preds = %1
  %26 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1392
  %27 = call i32 (%struct._thread*, i32, i8*, ...) @dns_final(%struct._thread* %26, i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i32 0, i32 0)), !dbg !1394
  store i32 0, i32* %2, align 4, !dbg !1395
  br label %156, !dbg !1395

; <label>:28:                                     ; preds = %1
  %29 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1396
  %30 = getelementptr inbounds %struct._thread, %struct._thread* %29, i32 0, i32 5, !dbg !1397
  %31 = bitcast %struct.timeval* %30 to { i64, i64 }*, !dbg !1398
  %32 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %31, i32 0, i32 0, !dbg !1398
  %33 = load i64, i64* %32, align 8, !dbg !1398
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %31, i32 0, i32 1, !dbg !1398
  %35 = load i64, i64* %34, align 8, !dbg !1398
  %36 = call i64 @timer_long(i64 %33, i64 %35), !dbg !1398
  %37 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.timeval* @time_now to { i64, i64 }*), i32 0, i32 0), align 8, !dbg !1399
  %38 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.timeval* @time_now to { i64, i64 }*), i32 0, i32 1), align 8, !dbg !1399
  %39 = call i64 @timer_long(i64 %37, i64 %38), !dbg !1400
  %40 = sub i64 %36, %39, !dbg !1402
  store i64 %40, i64* %4, align 8, !dbg !1403
  %41 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1404
  %42 = getelementptr inbounds %struct._thread, %struct._thread* %41, i32 0, i32 6, !dbg !1405
  %43 = bitcast %union.anon* %42 to i32*, !dbg !1406
  %44 = load i32, i32* %43, align 8, !dbg !1406
  %45 = getelementptr inbounds [768 x i8], [768 x i8]* %6, i32 0, i32 0, !dbg !1407
  %46 = call i64 @recv(i32 %44, i8* %45, i64 768, i32 0), !dbg !1408
  store i64 %46, i64* %5, align 8, !dbg !1409
  %47 = load i64, i64* %5, align 8, !dbg !1410
  %48 = icmp eq i64 %47, -1, !dbg !1412
  br i1 %48, label %49, label %79, !dbg !1413

; <label>:49:                                     ; preds = %28
  %50 = call i32* @__errno_location() #2, !dbg !1414
  %51 = load i32, i32* %50, align 4, !dbg !1417
  %52 = icmp eq i32 %51, 11, !dbg !1418
  br i1 %52, label %61, label %53, !dbg !1419

; <label>:53:                                     ; preds = %49
  %54 = call i32* @__errno_location() #2, !dbg !1420
  %55 = load i32, i32* %54, align 4, !dbg !1422
  %56 = icmp eq i32 %55, 11, !dbg !1423
  br i1 %56, label %61, label %57, !dbg !1424

; <label>:57:                                     ; preds = %53
  %58 = call i32* @__errno_location() #2, !dbg !1425
  %59 = load i32, i32* %58, align 4, !dbg !1427
  %60 = icmp eq i32 %59, 4, !dbg !1428
  br i1 %60, label %61, label %73, !dbg !1429

; <label>:61:                                     ; preds = %57, %53, %49
  %62 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1430
  %63 = getelementptr inbounds %struct._thread, %struct._thread* %62, i32 0, i32 2, !dbg !1432
  %64 = load %struct._thread_master*, %struct._thread_master** %63, align 8, !dbg !1432
  %65 = load %struct._checker*, %struct._checker** %11, align 8, !dbg !1433
  %66 = bitcast %struct._checker* %65 to i8*, !dbg !1433
  %67 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1434
  %68 = getelementptr inbounds %struct._thread, %struct._thread* %67, i32 0, i32 6, !dbg !1435
  %69 = bitcast %union.anon* %68 to i32*, !dbg !1436
  %70 = load i32, i32* %69, align 8, !dbg !1436
  %71 = load i64, i64* %4, align 8, !dbg !1437
  %72 = call %struct._thread* @thread_add_read(%struct._thread_master* %64, i32 (%struct._thread*)* @dns_recv_thread, i8* %66, i32 %70, i64 %71), !dbg !1438
  store i32 0, i32* %2, align 4, !dbg !1439
  br label %156, !dbg !1439

; <label>:73:                                     ; preds = %57
  %74 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1440
  %75 = call i32* @__errno_location() #2, !dbg !1441
  %76 = load i32, i32* %75, align 4, !dbg !1442
  %77 = call i8* @strerror(i32 %76) #4, !dbg !1443
  %78 = call i32 (%struct._thread*, i32, i8*, ...) @dns_final(%struct._thread* %74, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i32 0, i32 0), i8* %77), !dbg !1445
  store i32 0, i32* %2, align 4, !dbg !1447
  br label %156, !dbg !1447

; <label>:79:                                     ; preds = %28
  %80 = load i64, i64* %5, align 8, !dbg !1448
  %81 = icmp slt i64 %80, 8, !dbg !1450
  br i1 %81, label %82, label %94, !dbg !1451

; <label>:82:                                     ; preds = %79
  %83 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1452
  %84 = getelementptr inbounds %struct._thread, %struct._thread* %83, i32 0, i32 2, !dbg !1454
  %85 = load %struct._thread_master*, %struct._thread_master** %84, align 8, !dbg !1454
  %86 = load %struct._checker*, %struct._checker** %11, align 8, !dbg !1455
  %87 = bitcast %struct._checker* %86 to i8*, !dbg !1455
  %88 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1456
  %89 = getelementptr inbounds %struct._thread, %struct._thread* %88, i32 0, i32 6, !dbg !1457
  %90 = bitcast %union.anon* %89 to i32*, !dbg !1458
  %91 = load i32, i32* %90, align 8, !dbg !1458
  %92 = load i64, i64* %4, align 8, !dbg !1459
  %93 = call %struct._thread* @thread_add_read(%struct._thread_master* %85, i32 (%struct._thread*)* @dns_recv_thread, i8* %87, i32 %91, i64 %92), !dbg !1460
  store i32 0, i32* %2, align 4, !dbg !1461
  br label %156, !dbg !1461

; <label>:94:                                     ; preds = %79
  %95 = load %struct._dns_check*, %struct._dns_check** %12, align 8, !dbg !1462
  %96 = getelementptr inbounds %struct._dns_check, %struct._dns_check* %95, i32 0, i32 2, !dbg !1463
  %97 = getelementptr inbounds [768 x i8], [768 x i8]* %96, i32 0, i32 0, !dbg !1462
  %98 = bitcast i8* %97 to %struct._dns_header*, !dbg !1464
  store %struct._dns_header* %98, %struct._dns_header** %7, align 8, !dbg !1465
  %99 = getelementptr inbounds [768 x i8], [768 x i8]* %6, i32 0, i32 0, !dbg !1466
  %100 = bitcast i8* %99 to %struct._dns_header*, !dbg !1467
  store %struct._dns_header* %100, %struct._dns_header** %8, align 8, !dbg !1468
  %101 = load %struct._dns_header*, %struct._dns_header** %7, align 8, !dbg !1469
  %102 = getelementptr inbounds %struct._dns_header, %struct._dns_header* %101, i32 0, i32 0, !dbg !1471
  %103 = load i16, i16* %102, align 2, !dbg !1471
  %104 = zext i16 %103 to i32, !dbg !1469
  %105 = load %struct._dns_header*, %struct._dns_header** %8, align 8, !dbg !1472
  %106 = getelementptr inbounds %struct._dns_header, %struct._dns_header* %105, i32 0, i32 0, !dbg !1473
  %107 = load i16, i16* %106, align 2, !dbg !1473
  %108 = zext i16 %107 to i32, !dbg !1472
  %109 = icmp ne i32 %104, %108, !dbg !1474
  br i1 %109, label %110, label %122, !dbg !1475

; <label>:110:                                    ; preds = %94
  %111 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1476
  %112 = getelementptr inbounds %struct._thread, %struct._thread* %111, i32 0, i32 2, !dbg !1478
  %113 = load %struct._thread_master*, %struct._thread_master** %112, align 8, !dbg !1478
  %114 = load %struct._checker*, %struct._checker** %11, align 8, !dbg !1479
  %115 = bitcast %struct._checker* %114 to i8*, !dbg !1479
  %116 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1480
  %117 = getelementptr inbounds %struct._thread, %struct._thread* %116, i32 0, i32 6, !dbg !1481
  %118 = bitcast %union.anon* %117 to i32*, !dbg !1482
  %119 = load i32, i32* %118, align 8, !dbg !1482
  %120 = load i64, i64* %4, align 8, !dbg !1483
  %121 = call %struct._thread* @thread_add_read(%struct._thread_master* %113, i32 (%struct._thread*)* @dns_recv_thread, i8* %115, i32 %119, i64 %120), !dbg !1484
  store i32 0, i32* %2, align 4, !dbg !1485
  br label %156, !dbg !1485

; <label>:122:                                    ; preds = %94
  %123 = load %struct._dns_header*, %struct._dns_header** %8, align 8, !dbg !1486
  %124 = getelementptr inbounds %struct._dns_header, %struct._dns_header* %123, i32 0, i32 1, !dbg !1487
  %125 = load i16, i16* %124, align 2, !dbg !1487
  %126 = call zeroext i16 @ntohs(i16 zeroext %125) #2, !dbg !1488
  %127 = zext i16 %126 to i32, !dbg !1488
  store i32 %127, i32* %9, align 4, !dbg !1489
  %128 = load i32, i32* %9, align 4, !dbg !1490
  %129 = ashr i32 %128, 15, !dbg !1492
  %130 = and i32 %129, 1, !dbg !1493
  %131 = icmp ne i32 %130, 0, !dbg !1493
  br i1 %131, label %144, label %132, !dbg !1494

; <label>:132:                                    ; preds = %122
  %133 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1495
  %134 = getelementptr inbounds %struct._thread, %struct._thread* %133, i32 0, i32 2, !dbg !1497
  %135 = load %struct._thread_master*, %struct._thread_master** %134, align 8, !dbg !1497
  %136 = load %struct._checker*, %struct._checker** %11, align 8, !dbg !1498
  %137 = bitcast %struct._checker* %136 to i8*, !dbg !1498
  %138 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1499
  %139 = getelementptr inbounds %struct._thread, %struct._thread* %138, i32 0, i32 6, !dbg !1500
  %140 = bitcast %union.anon* %139 to i32*, !dbg !1501
  %141 = load i32, i32* %140, align 8, !dbg !1501
  %142 = load i64, i64* %4, align 8, !dbg !1502
  %143 = call %struct._thread* @thread_add_read(%struct._thread_master* %135, i32 (%struct._thread*)* @dns_recv_thread, i8* %137, i32 %141, i64 %142), !dbg !1503
  store i32 0, i32* %2, align 4, !dbg !1504
  br label %156, !dbg !1504

; <label>:144:                                    ; preds = %122
  %145 = load i32, i32* %9, align 4, !dbg !1505
  %146 = ashr i32 %145, 0, !dbg !1507
  %147 = and i32 %146, 15, !dbg !1508
  store i32 %147, i32* %10, align 4, !dbg !1509
  %148 = icmp ne i32 %147, 0, !dbg !1510
  br i1 %148, label %149, label %153, !dbg !1511

; <label>:149:                                    ; preds = %144
  %150 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1512
  %151 = load i32, i32* %10, align 4, !dbg !1514
  %152 = call i32 (%struct._thread*, i32, i8*, ...) @dns_final(%struct._thread* %150, i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.28, i32 0, i32 0), i32 %151), !dbg !1515
  store i32 0, i32* %2, align 4, !dbg !1516
  br label %156, !dbg !1516

; <label>:153:                                    ; preds = %144
  %154 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1517
  %155 = call i32 (%struct._thread*, i32, i8*, ...) @dns_final(%struct._thread* %154, i32 0, i8* null), !dbg !1518
  store i32 0, i32* %2, align 4, !dbg !1519
  br label %156, !dbg !1519

; <label>:156:                                    ; preds = %153, %149, %132, %110, %82, %73, %61, %25
  %157 = load i32, i32* %2, align 4, !dbg !1520
  ret i32 %157, !dbg !1520
}

declare void @thread_close_fd(%struct._thread*) #1

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #3

declare void @update_svr_checker_state(i1 zeroext, %struct._checker*) #1

declare void @smtp_alert(i32, i8*, i8*, i8*) #1

declare i64 @recv(i32, i8*, i64, i32) #1

; Function Attrs: nounwind
declare i8* @strerror(i32) #3

; Function Attrs: nounwind readnone
declare zeroext i16 @ntohs(i16 zeroext) #5

declare i32 @socket_state(%struct._thread*, i32 (%struct._thread*)*) #1

declare i32 @thread_del_write(%struct._thread*) #1

declare zeroext i1 @compare_conn_opts(%struct._conn_opts*, %struct._conn_opts*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #6

declare i8* @set_value(%struct._vector*) #1

; Function Attrs: nounwind uwtable
define internal zeroext i16 @dns_type_lookup(i8*) #0 !dbg !1521 {
  %2 = alloca i16, align 2
  %3 = alloca i8*, align 8
  %4 = alloca %struct._dns_type*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1524, metadata !488), !dbg !1525
  call void @llvm.dbg.declare(metadata %struct._dns_type** %4, metadata !1526, metadata !488), !dbg !1527
  store %struct._dns_type* getelementptr inbounds ([10 x %struct._dns_type], [10 x %struct._dns_type]* @DNS_TYPE, i32 0, i32 0), %struct._dns_type** %4, align 8, !dbg !1528
  br label %5, !dbg !1530

; <label>:5:                                      ; preds = %22, %1
  %6 = load %struct._dns_type*, %struct._dns_type** %4, align 8, !dbg !1531
  %7 = getelementptr inbounds %struct._dns_type, %struct._dns_type* %6, i32 0, i32 0, !dbg !1534
  %8 = load i16, i16* %7, align 8, !dbg !1534
  %9 = icmp ne i16 %8, 0, !dbg !1535
  br i1 %9, label %10, label %25, !dbg !1535

; <label>:10:                                     ; preds = %5
  %11 = load i8*, i8** %3, align 8, !dbg !1536
  %12 = load %struct._dns_type*, %struct._dns_type** %4, align 8, !dbg !1539
  %13 = getelementptr inbounds %struct._dns_type, %struct._dns_type* %12, i32 0, i32 1, !dbg !1540
  %14 = load i8*, i8** %13, align 8, !dbg !1540
  %15 = call i32 @strcasecmp(i8* %11, i8* %14) #9, !dbg !1541
  %16 = icmp ne i32 %15, 0, !dbg !1541
  br i1 %16, label %21, label %17, !dbg !1542

; <label>:17:                                     ; preds = %10
  %18 = load %struct._dns_type*, %struct._dns_type** %4, align 8, !dbg !1543
  %19 = getelementptr inbounds %struct._dns_type, %struct._dns_type* %18, i32 0, i32 0, !dbg !1545
  %20 = load i16, i16* %19, align 8, !dbg !1545
  store i16 %20, i16* %2, align 2, !dbg !1546
  br label %26, !dbg !1546

; <label>:21:                                     ; preds = %10
  br label %22, !dbg !1547

; <label>:22:                                     ; preds = %21
  %23 = load %struct._dns_type*, %struct._dns_type** %4, align 8, !dbg !1548
  %24 = getelementptr inbounds %struct._dns_type, %struct._dns_type* %23, i32 1, !dbg !1548
  store %struct._dns_type* %24, %struct._dns_type** %4, align 8, !dbg !1548
  br label %5, !dbg !1550, !llvm.loop !1551

; <label>:25:                                     ; preds = %5
  store i16 0, i16* %2, align 2, !dbg !1553
  br label %26, !dbg !1553

; <label>:26:                                     ; preds = %25, %17
  %27 = load i16, i16* %2, align 2, !dbg !1554
  ret i16 %27, !dbg !1554
}

declare void @report_config_error(i32, i8*, ...) #1

declare i8* @strvec_slot(%struct._vector*, i64) #1

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8*, i8*) #6

declare zeroext i1 @check_conn_opts(%struct._conn_opts*) #1

declare void @dequeue_new_checker() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!460, !461}
!llvm.ident = !{!462}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !96, globals: !446)
!1 = !DIFile(filename: "[inter]keepalived--check--check_dns.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!2 = !{!3, !24, !36, !65, !72, !80}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 41, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../lib/scheduler.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
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
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !25, line: 24, size: 32, align: 32, elements: !26)
!25 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!26 = !{!27, !28, !29, !30, !31, !32, !33, !34, !35}
!27 = !DIEnumerator(name: "SOCK_STREAM", value: 1)
!28 = !DIEnumerator(name: "SOCK_DGRAM", value: 2)
!29 = !DIEnumerator(name: "SOCK_RAW", value: 3)
!30 = !DIEnumerator(name: "SOCK_RDM", value: 4)
!31 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5)
!32 = !DIEnumerator(name: "SOCK_DCCP", value: 6)
!33 = !DIEnumerator(name: "SOCK_PACKET", value: 10)
!34 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288)
!35 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !37, line: 40, size: 32, align: 32, elements: !38)
!37 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64}
!39 = !DIEnumerator(name: "IPPROTO_IP", value: 0)
!40 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1)
!41 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2)
!42 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4)
!43 = !DIEnumerator(name: "IPPROTO_TCP", value: 6)
!44 = !DIEnumerator(name: "IPPROTO_EGP", value: 8)
!45 = !DIEnumerator(name: "IPPROTO_PUP", value: 12)
!46 = !DIEnumerator(name: "IPPROTO_UDP", value: 17)
!47 = !DIEnumerator(name: "IPPROTO_IDP", value: 22)
!48 = !DIEnumerator(name: "IPPROTO_TP", value: 29)
!49 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33)
!50 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41)
!51 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46)
!52 = !DIEnumerator(name: "IPPROTO_GRE", value: 47)
!53 = !DIEnumerator(name: "IPPROTO_ESP", value: 50)
!54 = !DIEnumerator(name: "IPPROTO_AH", value: 51)
!55 = !DIEnumerator(name: "IPPROTO_MTP", value: 92)
!56 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94)
!57 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98)
!58 = !DIEnumerator(name: "IPPROTO_PIM", value: 103)
!59 = !DIEnumerator(name: "IPPROTO_COMP", value: 108)
!60 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132)
!61 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136)
!62 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137)
!63 = !DIEnumerator(name: "IPPROTO_RAW", value: 255)
!64 = !DIEnumerator(name: "IPPROTO_MAX", value: 256)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "connect_result", file: !66, line: 34, size: 32, align: 32, elements: !67)
!66 = !DIFile(filename: "./../include/layer4.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!67 = !{!68, !69, !70, !71}
!68 = !DIEnumerator(name: "connect_error", value: 0)
!69 = !DIEnumerator(name: "connect_in_progress", value: 1)
!70 = !DIEnumerator(name: "connect_timeout", value: 2)
!71 = !DIEnumerator(name: "connect_success", value: 3)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !73, line: 57, size: 32, align: 32, elements: !74)
!73 = !DIFile(filename: "./../include/smtp.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!74 = !{!75, !76, !77, !78, !79}
!75 = !DIEnumerator(name: "SMTP_MSG_RS", value: 0)
!76 = !DIEnumerator(name: "SMTP_MSG_VS", value: 1)
!77 = !DIEnumerator(name: "SMTP_MSG_RS_SHUT", value: 2)
!78 = !DIEnumerator(name: "SMTP_MSG_VGROUP", value: 3)
!79 = !DIEnumerator(name: "SMTP_MSG_VRRP", value: 4)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !81, line: 44, size: 32, align: 32, elements: !82)
!81 = !DIFile(filename: "../../lib/parser.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!82 = !{!83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95}
!83 = !DIEnumerator(name: "CONFIG_OK", value: 0)
!84 = !DIEnumerator(name: "CONFIG_FILE_NOT_FOUND", value: 1)
!85 = !DIEnumerator(name: "CONFIG_BAD_IF", value: 2)
!86 = !DIEnumerator(name: "CONFIG_FATAL", value: 3)
!87 = !DIEnumerator(name: "CONFIG_MULTIPLE_FILES", value: 4)
!88 = !DIEnumerator(name: "CONFIG_UNKNOWN_KEYWORD", value: 5)
!89 = !DIEnumerator(name: "CONFIG_UNEXPECTED_BOB", value: 6)
!90 = !DIEnumerator(name: "CONFIG_MISSING_BOB", value: 7)
!91 = !DIEnumerator(name: "CONFIG_UNMATCHED_QUOTE", value: 8)
!92 = !DIEnumerator(name: "CONFIG_MISSING_PARAMETER", value: 9)
!93 = !DIEnumerator(name: "CONFIG_INVALID_NUMBER", value: 10)
!94 = !DIEnumerator(name: "CONFIG_GENERAL_ERROR", value: 11)
!95 = !DIEnumerator(name: "CONFIG_SECURITY_ERROR", value: 12)
!96 = !{!97, !119, !143, !152, !432, !442, !116, !111, !443, !444, !118, !107}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_check_t", file: !99, line: 93, baseType: !100)
!99 = !DIFile(filename: "./../include/check_dns.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dns_check", file: !99, line: 88, size: 6336, align: 64, elements: !101)
!101 = !{!102, !106, !109, !115}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !100, file: !99, line: 89, baseType: !103, size: 16, align: 16)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !104, line: 49, baseType: !105)
!104 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!105 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !100, file: !99, line: 90, baseType: !107, size: 64, align: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!108 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "sbuf", scope: !100, file: !99, line: 91, baseType: !110, size: 6144, align: 8, offset: 128)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 6144, align: 8, elements: !113)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !104, line: 48, baseType: !112)
!112 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!113 = !{!114}
!114 = !DISubrange(count: 768)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "slen", scope: !100, file: !99, line: 92, baseType: !116, size: 64, align: 64, offset: 6272)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !117, line: 216, baseType: !118)
!117 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!118 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "conn_opts_t", file: !66, line: 50, baseType: !121)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_conn_opts", file: !66, line: 42, size: 2240, align: 64, elements: !122)
!122 = !{!123, !135, !136, !140, !142}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !121, file: !66, line: 43, baseType: !124, size: 1024, align: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !125, line: 166, size: 1024, align: 64, elements: !126)
!125 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!126 = !{!127, !130, !134}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !124, file: !125, line: 168, baseType: !128, size: 16, align: 16)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !129, line: 28, baseType: !105)
!129 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!130 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !124, file: !125, line: 169, baseType: !131, size: 944, align: 8, offset: 16)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 944, align: 8, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: 118)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !124, file: !125, line: 170, baseType: !118, size: 64, align: 64, offset: 960)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "bindto", scope: !121, file: !66, line: 44, baseType: !124, size: 1024, align: 64, offset: 1024)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "bind_if", scope: !121, file: !66, line: 45, baseType: !137, size: 128, align: 8, offset: 2048)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 128, align: 8, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 16)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "connection_to", scope: !121, file: !66, line: 46, baseType: !141, size: 32, align: 32, offset: 2176)
!141 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "fwmark", scope: !121, file: !66, line: 48, baseType: !141, size: 32, align: 32, offset: 2208)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "checker_t", file: !145, line: 60, baseType: !146)
!145 = !DIFile(filename: "./../include/check_api.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_checker", file: !145, line: 40, size: 1024, align: 64, elements: !147)
!147 = !{!148, !153, !213, !327, !331, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "free_func", scope: !146, file: !145, line: 41, baseType: !149, size: 64, align: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{null, !152}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "dump_func", scope: !146, file: !145, line: 42, baseType: !154, size: 64, align: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64, align: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{null, !157, !152}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64, align: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !159, line: 48, baseType: !160)
!159 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !161, line: 241, size: 1728, align: 64, elements: !162)
!161 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!162 = !{!163, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !184, !185, !186, !187, !191, !192, !194, !198, !201, !203, !204, !205, !206, !207, !208, !209}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !160, file: !161, line: 242, baseType: !164, size: 32, align: 32)
!164 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !160, file: !161, line: 247, baseType: !107, size: 64, align: 64, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !160, file: !161, line: 248, baseType: !107, size: 64, align: 64, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !160, file: !161, line: 249, baseType: !107, size: 64, align: 64, offset: 192)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !160, file: !161, line: 250, baseType: !107, size: 64, align: 64, offset: 256)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !160, file: !161, line: 251, baseType: !107, size: 64, align: 64, offset: 320)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !160, file: !161, line: 252, baseType: !107, size: 64, align: 64, offset: 384)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !160, file: !161, line: 253, baseType: !107, size: 64, align: 64, offset: 448)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !160, file: !161, line: 254, baseType: !107, size: 64, align: 64, offset: 512)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !160, file: !161, line: 256, baseType: !107, size: 64, align: 64, offset: 576)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !160, file: !161, line: 257, baseType: !107, size: 64, align: 64, offset: 640)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !160, file: !161, line: 258, baseType: !107, size: 64, align: 64, offset: 704)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !160, file: !161, line: 260, baseType: !177, size: 64, align: 64, offset: 768)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !161, line: 156, size: 192, align: 64, elements: !179)
!179 = !{!180, !181, !183}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !178, file: !161, line: 157, baseType: !177, size: 64, align: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !178, file: !161, line: 158, baseType: !182, size: 64, align: 64, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64, align: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !178, file: !161, line: 162, baseType: !164, size: 32, align: 32, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !160, file: !161, line: 262, baseType: !182, size: 64, align: 64, offset: 832)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !160, file: !161, line: 264, baseType: !164, size: 32, align: 32, offset: 896)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !160, file: !161, line: 268, baseType: !164, size: 32, align: 32, offset: 928)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !160, file: !161, line: 270, baseType: !188, size: 64, align: 64, offset: 960)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !189, line: 131, baseType: !190)
!189 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!190 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !160, file: !161, line: 274, baseType: !105, size: 16, align: 16, offset: 1024)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !160, file: !161, line: 275, baseType: !193, size: 8, align: 8, offset: 1040)
!193 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !160, file: !161, line: 276, baseType: !195, size: 8, align: 8, offset: 1048)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 8, align: 8, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 1)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !160, file: !161, line: 280, baseType: !199, size: 64, align: 64, offset: 1088)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64, align: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !161, line: 150, baseType: null)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !160, file: !161, line: 289, baseType: !202, size: 64, align: 64, offset: 1152)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !189, line: 132, baseType: !190)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !160, file: !161, line: 297, baseType: !152, size: 64, align: 64, offset: 1216)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !160, file: !161, line: 298, baseType: !152, size: 64, align: 64, offset: 1280)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !160, file: !161, line: 299, baseType: !152, size: 64, align: 64, offset: 1344)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !160, file: !161, line: 300, baseType: !152, size: 64, align: 64, offset: 1408)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !160, file: !161, line: 302, baseType: !116, size: 64, align: 64, offset: 1472)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !160, file: !161, line: 303, baseType: !164, size: 32, align: 32, offset: 1536)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !160, file: !161, line: 305, baseType: !210, size: 160, align: 8, offset: 1568)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 160, align: 8, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 20)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "launch", scope: !146, file: !145, line: 43, baseType: !214, size: 64, align: 64, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64, align: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!164, !217}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread", file: !4, line: 78, size: 768, align: 64, elements: !219)
!219 = !{!220, !221, !223, !295, !296, !297, !307, !320, !322}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !218, file: !4, line: 79, baseType: !118, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !218, file: !4, line: 80, baseType: !222, size: 32, align: 32, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_type_t", file: !4, line: 63, baseType: !3)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !218, file: !4, line: 81, baseType: !224, size: 64, align: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64, align: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_master", file: !4, line: 112, size: 1280, align: 64, elements: !226)
!226 = !{!227, !239, !240, !241, !242, !250, !251, !252, !269, !270, !273, !286, !287, !288, !289, !290, !291, !292, !293}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !225, file: !4, line: 113, baseType: !228, size: 64, align: 64)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_root_t", file: !229, line: 109, baseType: !230)
!229 = !DIFile(filename: "../../lib/rbtree.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !229, line: 106, size: 64, align: 64, elements: !231)
!231 = !{!232}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !230, file: !229, line: 108, baseType: !233, size: 64, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, align: 64)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !229, line: 97, size: 192, align: 64, elements: !235)
!235 = !{!236, !237, !238}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "rb_parent_color", scope: !234, file: !229, line: 99, baseType: !118, size: 64, align: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !234, file: !229, line: 102, baseType: !233, size: 64, align: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !234, file: !229, line: 103, baseType: !233, size: 64, align: 64, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !225, file: !4, line: 114, baseType: !228, size: 64, align: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !225, file: !4, line: 115, baseType: !228, size: 64, align: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !225, file: !4, line: 116, baseType: !228, size: 64, align: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !225, file: !4, line: 117, baseType: !243, size: 128, align: 64, offset: 256)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "list_head_t", file: !244, line: 62, baseType: !245)
!244 = !DIFile(filename: "../../lib/list_head.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !244, line: 60, size: 128, align: 64, elements: !246)
!246 = !{!247, !249}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !245, file: !244, line: 61, baseType: !248, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64, align: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !245, file: !244, line: 61, baseType: !248, size: 64, align: 64, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !225, file: !4, line: 121, baseType: !243, size: 128, align: 64, offset: 384)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "unuse", scope: !225, file: !4, line: 122, baseType: !243, size: 128, align: 64, offset: 512)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "child_pid_index", scope: !225, file: !4, line: 124, baseType: !253, size: 64, align: 64, offset: 640)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !254, line: 31, baseType: !255)
!254 = !DIFile(filename: "../../lib/list.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64, align: 64)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_list", file: !254, line: 39, size: 320, align: 64, elements: !257)
!257 = !{!258, !265, !266, !267, !268}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !256, file: !254, line: 40, baseType: !259, size: 64, align: 64)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !254, line: 33, size: 192, align: 64, elements: !261)
!261 = !{!262, !263, !264}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !260, file: !254, line: 34, baseType: !259, size: 64, align: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !260, file: !254, line: 35, baseType: !259, size: 64, align: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !260, file: !254, line: 36, baseType: !152, size: 64, align: 64, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !256, file: !254, line: 41, baseType: !259, size: 64, align: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !256, file: !254, line: 42, baseType: !141, size: 32, align: 32, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !256, file: !254, line: 43, baseType: !149, size: 64, align: 64, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !256, file: !254, line: 44, baseType: !154, size: 64, align: 64, offset: 256)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "io_events", scope: !225, file: !4, line: 127, baseType: !228, size: 64, align: 64, offset: 704)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_events", scope: !225, file: !4, line: 128, baseType: !271, size: 64, align: 64, offset: 768)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64, align: 64)
!272 = !DICompositeType(tag: DW_TAG_structure_type, name: "epoll_event", file: !4, line: 128, flags: DIFlagFwdDecl)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "current_event", scope: !225, file: !4, line: 129, baseType: !274, size: 64, align: 64, offset: 832)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64, align: 64)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_event_t", file: !4, line: 109, baseType: !276)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_event", file: !4, line: 102, size: 448, align: 64, elements: !277)
!277 = !{!278, !281, !282, !283, !284}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !276, file: !4, line: 103, baseType: !279, size: 64, align: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_t", file: !4, line: 99, baseType: !218)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !276, file: !4, line: 104, baseType: !279, size: 64, align: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !276, file: !4, line: 105, baseType: !118, size: 64, align: 64, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !276, file: !4, line: 106, baseType: !164, size: 32, align: 32, offset: 192)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !276, file: !4, line: 108, baseType: !285, size: 192, align: 64, offset: 256)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_node_t", file: !229, line: 104, baseType: !234)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_size", scope: !225, file: !4, line: 130, baseType: !141, size: 32, align: 32, offset: 896)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_count", scope: !225, file: !4, line: 131, baseType: !141, size: 32, align: 32, offset: 928)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_fd", scope: !225, file: !4, line: 132, baseType: !164, size: 32, align: 32, offset: 960)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "timer_fd", scope: !225, file: !4, line: 135, baseType: !164, size: 32, align: 32, offset: 992)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "timer_thread", scope: !225, file: !4, line: 136, baseType: !279, size: 64, align: 64, offset: 1024)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !225, file: !4, line: 146, baseType: !118, size: 64, align: 64, offset: 1088)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !225, file: !4, line: 147, baseType: !118, size: 64, align: 64, offset: 1152)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_timer_running", scope: !225, file: !4, line: 148, baseType: !294, size: 8, align: 8, offset: 1216)
!294 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !218, file: !4, line: 82, baseType: !214, size: 64, align: 64, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !218, file: !4, line: 83, baseType: !152, size: 64, align: 64, offset: 256)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "sands", scope: !218, file: !4, line: 84, baseType: !298, size: 128, align: 64, offset: 320)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "timeval_t", file: !299, line: 31, baseType: !300)
!299 = !DIFile(filename: "../../lib/timer.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !301, line: 30, size: 128, align: 64, elements: !302)
!301 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!302 = !{!303, !305}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !300, file: !301, line: 32, baseType: !304, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !189, line: 139, baseType: !190)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !300, file: !301, line: 33, baseType: !306, size: 64, align: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !189, line: 141, baseType: !190)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !218, file: !4, line: 92, baseType: !308, size: 64, align: 32, offset: 448)
!308 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !218, file: !4, line: 85, size: 64, align: 32, elements: !309)
!309 = !{!310, !311, !312}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !308, file: !4, line: 86, baseType: !164, size: 32, align: 32)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !308, file: !4, line: 87, baseType: !164, size: 32, align: 32)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !308, file: !4, line: 91, baseType: !313, size: 64, align: 32)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !308, file: !4, line: 88, size: 64, align: 32, elements: !314)
!314 = !{!315, !319}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !313, file: !4, line: 89, baseType: !316, size: 32, align: 32)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !317, line: 263, baseType: !318)
!317 = !DIFile(filename: "/usr/include/unistd.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !189, line: 133, baseType: !164)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !313, file: !4, line: 90, baseType: !164, size: 32, align: 32, offset: 32)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !218, file: !4, line: 93, baseType: !321, size: 64, align: 64, offset: 512)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, align: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, scope: !218, file: !4, line: 95, baseType: !323, size: 192, align: 64, offset: 576)
!323 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !218, file: !4, line: 95, size: 192, align: 64, elements: !324)
!324 = !{!325, !326}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !323, file: !4, line: 96, baseType: !285, size: 192, align: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !323, file: !4, line: 97, baseType: !243, size: 128, align: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "compare", scope: !146, file: !145, line: 44, baseType: !328, size: 64, align: 64, offset: 192)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64, align: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!294, !152, !152}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "vs", scope: !146, file: !145, line: 45, baseType: !332, size: 64, align: 64, offset: 256)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "virtual_server_t", file: !334, line: 180, baseType: !335)
!334 = !DIFile(filename: "./../include/check_data.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_virtual_server", file: !334, line: 131, size: 2560, align: 64, elements: !336)
!336 = !{!337, !338, !346, !347, !349, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "vsgname", scope: !335, file: !334, line: 132, baseType: !107, size: 64, align: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "vsg", scope: !335, file: !334, line: 133, baseType: !339, size: 64, align: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64, align: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "virtual_server_group_t", file: !334, line: 128, baseType: !341)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_virtual_server_group", file: !334, line: 124, size: 192, align: 64, elements: !342)
!342 = !{!343, !344, !345}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !341, file: !334, line: 125, baseType: !107, size: 64, align: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "addr_range", scope: !341, file: !334, line: 126, baseType: !253, size: 64, align: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "vfwmark", scope: !341, file: !334, line: 127, baseType: !253, size: 64, align: 64, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !335, file: !334, line: 134, baseType: !124, size: 1024, align: 64, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "vfwmark", scope: !335, file: !334, line: 135, baseType: !348, size: 32, align: 32, offset: 1152)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !104, line: 51, baseType: !141)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "s_svr", scope: !335, file: !334, line: 136, baseType: !350, size: 64, align: 64, offset: 1216)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, align: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "real_server_t", file: !334, line: 102, baseType: !352)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_real_server", file: !334, line: 62, size: 1920, align: 64, elements: !353)
!353 = !{!354, !355, !356, !357, !358, !359, !360, !361, !362, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !352, file: !334, line: 63, baseType: !124, size: 1024, align: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !352, file: !334, line: 64, baseType: !164, size: 32, align: 32, offset: 1024)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "iweight", scope: !352, file: !334, line: 65, baseType: !164, size: 32, align: 32, offset: 1056)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "pweight", scope: !352, file: !334, line: 66, baseType: !164, size: 32, align: 32, offset: 1088)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "forwarding_method", scope: !352, file: !334, line: 68, baseType: !141, size: 32, align: 32, offset: 1120)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "u_threshold", scope: !352, file: !334, line: 69, baseType: !348, size: 32, align: 32, offset: 1152)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "l_threshold", scope: !352, file: !334, line: 70, baseType: !348, size: 32, align: 32, offset: 1184)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "inhibit", scope: !352, file: !334, line: 71, baseType: !164, size: 32, align: 32, offset: 1216)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "notify_up", scope: !352, file: !334, line: 74, baseType: !363, size: 64, align: 64, offset: 1280)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64, align: 64)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "notify_script_t", file: !365, line: 65, baseType: !366)
!365 = !DIFile(filename: "../../lib/notify.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_notify_script", file: !365, line: 59, size: 192, align: 64, elements: !367)
!367 = !{!368, !370, !371, !372, !375}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !366, file: !365, line: 60, baseType: !369, size: 64, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, align: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !366, file: !365, line: 61, baseType: !164, size: 32, align: 32, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !366, file: !365, line: 62, baseType: !164, size: 32, align: 32, offset: 96)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !366, file: !365, line: 63, baseType: !373, size: 32, align: 32, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !317, line: 240, baseType: !374)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !189, line: 125, baseType: !141)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !366, file: !365, line: 64, baseType: !376, size: 32, align: 32, offset: 160)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !317, line: 235, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !189, line: 126, baseType: !141)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "notify_down", scope: !352, file: !334, line: 75, baseType: !363, size: 64, align: 64, offset: 1344)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !352, file: !334, line: 76, baseType: !164, size: 32, align: 32, offset: 1408)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "delay_loop", scope: !352, file: !334, line: 77, baseType: !118, size: 64, align: 64, offset: 1472)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "warmup", scope: !352, file: !334, line: 78, baseType: !118, size: 64, align: 64, offset: 1536)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "retry", scope: !352, file: !334, line: 79, baseType: !141, size: 32, align: 32, offset: 1600)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "delay_before_retry", scope: !352, file: !334, line: 80, baseType: !118, size: 64, align: 64, offset: 1664)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !352, file: !334, line: 81, baseType: !164, size: 32, align: 32, offset: 1728)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "alive", scope: !352, file: !334, line: 83, baseType: !294, size: 8, align: 8, offset: 1760)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "num_failed_checkers", scope: !352, file: !334, line: 84, baseType: !141, size: 32, align: 32, offset: 1792)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !352, file: !334, line: 85, baseType: !294, size: 8, align: 8, offset: 1824)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "reloaded", scope: !352, file: !334, line: 86, baseType: !294, size: 8, align: 8, offset: 1832)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "virtualhost", scope: !352, file: !334, line: 87, baseType: !107, size: 64, align: 64, offset: 1856)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "af", scope: !335, file: !334, line: 137, baseType: !103, size: 16, align: 16, offset: 1280)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "service_type", scope: !335, file: !334, line: 138, baseType: !103, size: 16, align: 16, offset: 1296)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "ha_suspend", scope: !335, file: !334, line: 139, baseType: !294, size: 8, align: 8, offset: 1312)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "ha_suspend_addr_count", scope: !335, file: !334, line: 140, baseType: !164, size: 32, align: 32, offset: 1344)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "sched", scope: !335, file: !334, line: 142, baseType: !137, size: 128, align: 8, offset: 1376)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !335, file: !334, line: 143, baseType: !348, size: 32, align: 32, offset: 1504)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "persistence_timeout", scope: !335, file: !334, line: 144, baseType: !348, size: 32, align: 32, offset: 1536)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "pe_name", scope: !335, file: !334, line: 146, baseType: !137, size: 128, align: 8, offset: 1568)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "forwarding_method", scope: !335, file: !334, line: 148, baseType: !141, size: 32, align: 32, offset: 1696)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "persistence_granularity", scope: !335, file: !334, line: 149, baseType: !348, size: 32, align: 32, offset: 1728)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "virtualhost", scope: !335, file: !334, line: 151, baseType: !107, size: 64, align: 64, offset: 1792)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !335, file: !334, line: 153, baseType: !164, size: 32, align: 32, offset: 1856)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "rs", scope: !335, file: !334, line: 154, baseType: !253, size: 64, align: 64, offset: 1920)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "alive", scope: !335, file: !334, line: 155, baseType: !164, size: 32, align: 32, offset: 1984)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !335, file: !334, line: 156, baseType: !294, size: 8, align: 8, offset: 2016)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "omega", scope: !335, file: !334, line: 157, baseType: !294, size: 8, align: 8, offset: 2024)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "inhibit", scope: !335, file: !334, line: 158, baseType: !294, size: 8, align: 8, offset: 2032)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "delay_loop", scope: !335, file: !334, line: 160, baseType: !118, size: 64, align: 64, offset: 2048)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "warmup", scope: !335, file: !334, line: 161, baseType: !118, size: 64, align: 64, offset: 2112)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "retry", scope: !335, file: !334, line: 162, baseType: !141, size: 32, align: 32, offset: 2176)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "delay_before_retry", scope: !335, file: !334, line: 163, baseType: !118, size: 64, align: 64, offset: 2240)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "notify_quorum_up", scope: !335, file: !334, line: 164, baseType: !363, size: 64, align: 64, offset: 2304)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "notify_quorum_down", scope: !335, file: !334, line: 165, baseType: !363, size: 64, align: 64, offset: 2368)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "quorum", scope: !335, file: !334, line: 166, baseType: !141, size: 32, align: 32, offset: 2432)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "hysteresis", scope: !335, file: !334, line: 167, baseType: !141, size: 32, align: 32, offset: 2464)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !335, file: !334, line: 168, baseType: !164, size: 32, align: 32, offset: 2496)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "quorum_state_up", scope: !335, file: !334, line: 169, baseType: !294, size: 8, align: 8, offset: 2528)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "reloaded", scope: !335, file: !334, line: 170, baseType: !294, size: 8, align: 8, offset: 2536)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "rs", scope: !146, file: !145, line: 46, baseType: !350, size: 64, align: 64, offset: 320)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !146, file: !145, line: 47, baseType: !152, size: 64, align: 64, offset: 384)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !146, file: !145, line: 48, baseType: !294, size: 8, align: 8, offset: 448)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "is_up", scope: !146, file: !145, line: 49, baseType: !294, size: 8, align: 8, offset: 456)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "has_run", scope: !146, file: !145, line: 50, baseType: !294, size: 8, align: 8, offset: 464)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "co", scope: !146, file: !145, line: 51, baseType: !119, size: 64, align: 64, offset: 512)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !146, file: !145, line: 52, baseType: !164, size: 32, align: 32, offset: 576)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "delay_loop", scope: !146, file: !145, line: 53, baseType: !118, size: 64, align: 64, offset: 640)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "warmup", scope: !146, file: !145, line: 54, baseType: !118, size: 64, align: 64, offset: 704)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "retry", scope: !146, file: !145, line: 55, baseType: !141, size: 32, align: 32, offset: 768)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "delay_before_retry", scope: !146, file: !145, line: 56, baseType: !118, size: 64, align: 64, offset: 832)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "retry_it", scope: !146, file: !145, line: 57, baseType: !141, size: 32, align: 32, offset: 896)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "default_retry", scope: !146, file: !145, line: 58, baseType: !141, size: 32, align: 32, offset: 928)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "default_delay_before_retry", scope: !146, file: !145, line: 59, baseType: !118, size: 64, align: 64, offset: 960)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64, align: 64)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_header_t", file: !99, line: 86, baseType: !434)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dns_header", file: !99, line: 79, size: 96, align: 16, elements: !435)
!435 = !{!436, !437, !438, !439, !440, !441}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !434, file: !99, line: 80, baseType: !103, size: 16, align: 16)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !434, file: !99, line: 81, baseType: !103, size: 16, align: 16, offset: 16)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "qdcount", scope: !434, file: !99, line: 82, baseType: !103, size: 16, align: 16, offset: 32)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "ancount", scope: !434, file: !99, line: 83, baseType: !103, size: 16, align: 16, offset: 48)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "nscount", scope: !434, file: !99, line: 84, baseType: !103, size: 16, align: 16, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "arcount", scope: !434, file: !99, line: 85, baseType: !103, size: 16, align: 16, offset: 80)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !317, line: 223, baseType: !445)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !189, line: 172, baseType: !190)
!446 = !{!447, !458}
!447 = distinct !DIGlobalVariable(name: "DNS_TYPE", scope: !0, file: !448, line: 52, type: !449, isLocal: false, isDefinition: true, variable: [10 x %struct._dns_type]* @DNS_TYPE)
!448 = !DIFile(filename: "check_dns.c", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !450, size: 1280, align: 64, elements: !456)
!450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_type_t", file: !99, line: 75, baseType: !452)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_dns_type", file: !99, line: 72, size: 128, align: 64, elements: !453)
!453 = !{!454, !455}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !452, file: !99, line: 73, baseType: !103, size: 16, align: 16)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !452, file: !99, line: 74, baseType: !107, size: 64, align: 64, offset: 64)
!456 = !{!457}
!457 = !DISubrange(count: 10)
!458 = distinct !DIGlobalVariable(name: "garp_delay", scope: !0, file: !459, line: 150, type: !253, isLocal: false, isDefinition: true, variable: %struct._list** @garp_delay)
!459 = !DIFile(filename: "./../include/vrrp_if.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!460 = !{i32 2, !"Dwarf Version", i32 4}
!461 = !{i32 2, !"Debug Info Version", i32 3}
!462 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!463 = distinct !DISubprogram(name: "install_dns_check_keyword", scope: !448, file: !448, line: 513, type: !464, isLocal: false, isDefinition: true, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !466)
!464 = !DISubroutineType(types: !465)
!465 = !{null}
!466 = !{}
!467 = !DILocation(line: 515, column: 2, scope: !463)
!468 = !DILocation(line: 516, column: 2, scope: !463)
!469 = !DILocation(line: 517, column: 2, scope: !463)
!470 = !DILocation(line: 518, column: 2, scope: !463)
!471 = !DILocation(line: 519, column: 2, scope: !463)
!472 = !DILocation(line: 520, column: 2, scope: !463)
!473 = !DILocation(line: 521, column: 2, scope: !463)
!474 = !DILocation(line: 522, column: 1, scope: !463)
!475 = distinct !DISubprogram(name: "dns_check_handler", scope: !448, file: !448, line: 466, type: !476, isLocal: true, isDefinition: true, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !466)
!476 = !DISubroutineType(types: !477)
!477 = !{null, !478}
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64, align: 64)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "vector_t", file: !480, line: 34, baseType: !481)
!480 = !DIFile(filename: "../../lib/vector.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vector", file: !480, line: 30, size: 128, align: 64, elements: !482)
!482 = !{!483, !484, !485}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !481, file: !480, line: 31, baseType: !141, size: 32, align: 32)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !481, file: !480, line: 32, baseType: !141, size: 32, align: 32, offset: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !481, file: !480, line: 33, baseType: !486, size: 64, align: 64, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64, align: 64)
!487 = !DILocalVariable(name: "strvec", arg: 1, scope: !475, file: !448, line: 466, type: !478)
!488 = !DIExpression()
!489 = !DILocation(line: 466, column: 54, scope: !475)
!490 = !DILocalVariable(name: "checker", scope: !475, file: !448, line: 468, type: !143)
!491 = !DILocation(line: 468, column: 13, scope: !475)
!492 = !DILocalVariable(name: "dns_check", scope: !475, file: !448, line: 470, type: !97)
!493 = !DILocation(line: 470, column: 15, scope: !475)
!494 = !DILocation(line: 470, column: 44, scope: !475)
!495 = !DILocation(line: 470, column: 27, scope: !475)
!496 = !DILocation(line: 471, column: 2, scope: !475)
!497 = !DILocation(line: 471, column: 13, scope: !475)
!498 = !DILocation(line: 471, column: 18, scope: !475)
!499 = !DILocation(line: 472, column: 2, scope: !475)
!500 = !DILocation(line: 472, column: 13, scope: !475)
!501 = !DILocation(line: 472, column: 18, scope: !475)
!502 = !DILocation(line: 474, column: 24, scope: !475)
!503 = !DILocation(line: 474, column: 53, scope: !475)
!504 = !DILocation(line: 474, column: 36, scope: !475)
!505 = !DILocation(line: 473, column: 12, scope: !475)
!506 = !DILocation(line: 473, column: 10, scope: !475)
!507 = !DILocation(line: 477, column: 2, scope: !475)
!508 = !DILocation(line: 477, column: 11, scope: !475)
!509 = !DILocation(line: 477, column: 25, scope: !475)
!510 = !DILocation(line: 478, column: 2, scope: !475)
!511 = !DILocation(line: 478, column: 11, scope: !475)
!512 = !DILocation(line: 478, column: 38, scope: !475)
!513 = !DILocation(line: 479, column: 1, scope: !475)
!514 = distinct !DISubprogram(name: "dns_type_handler", scope: !448, file: !448, line: 482, type: !476, isLocal: true, isDefinition: true, scopeLine: 483, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !466)
!515 = !DILocalVariable(name: "strvec", arg: 1, scope: !514, file: !448, line: 482, type: !478)
!516 = !DILocation(line: 482, column: 29, scope: !514)
!517 = !DILocalVariable(name: "dns_type", scope: !514, file: !448, line: 484, type: !103)
!518 = !DILocation(line: 484, column: 11, scope: !514)
!519 = !DILocalVariable(name: "dns_check", scope: !514, file: !448, line: 485, type: !97)
!520 = !DILocation(line: 485, column: 15, scope: !514)
!521 = !DILocation(line: 485, column: 46, scope: !514)
!522 = !DILocation(line: 485, column: 63, scope: !514)
!523 = !DILocation(line: 485, column: 69, scope: !514)
!524 = !DILocation(line: 485, column: 30, scope: !514)
!525 = !DILocation(line: 485, column: 78, scope: !514)
!526 = !DILocation(line: 485, column: 27, scope: !514)
!527 = !DILocalVariable(name: "type_str", scope: !514, file: !448, line: 486, type: !107)
!528 = !DILocation(line: 486, column: 8, scope: !514)
!529 = !DILocation(line: 486, column: 30, scope: !514)
!530 = !DILocation(line: 486, column: 20, scope: !514)
!531 = !DILocation(line: 488, column: 29, scope: !514)
!532 = !DILocation(line: 488, column: 13, scope: !514)
!533 = !DILocation(line: 488, column: 11, scope: !514)
!534 = !DILocation(line: 489, column: 7, scope: !535)
!535 = distinct !DILexicalBlock(scope: !514, file: !448, line: 489, column: 6)
!536 = !DILocation(line: 489, column: 6, scope: !514)
!537 = !DILocation(line: 490, column: 96, scope: !535)
!538 = !DILocation(line: 490, column: 105, scope: !535)
!539 = !DILocation(line: 490, column: 116, scope: !535)
!540 = !DILocation(line: 490, column: 94, scope: !535)
!541 = !DILocation(line: 490, column: 94, scope: !542)
!542 = !DILexicalBlockFile(scope: !535, file: !448, discriminator: 1)
!543 = !DILocation(line: 490, column: 154, scope: !544)
!544 = !DILexicalBlockFile(scope: !535, file: !448, discriminator: 2)
!545 = !DILocation(line: 490, column: 142, scope: !544)
!546 = !DILocation(line: 490, column: 94, scope: !544)
!547 = !DILocation(line: 490, column: 94, scope: !548)
!548 = !DILexicalBlockFile(scope: !535, file: !448, discriminator: 3)
!549 = !DILocation(line: 490, column: 3, scope: !548)
!550 = !DILocation(line: 492, column: 21, scope: !535)
!551 = !DILocation(line: 492, column: 3, scope: !535)
!552 = !DILocation(line: 492, column: 14, scope: !535)
!553 = !DILocation(line: 492, column: 19, scope: !535)
!554 = !DILocation(line: 494, column: 8, scope: !514)
!555 = !DILocation(line: 494, column: 3, scope: !514)
!556 = !DILocation(line: 494, column: 30, scope: !514)
!557 = !DILocation(line: 495, column: 1, scope: !514)
!558 = distinct !DISubprogram(name: "dns_name_handler", scope: !448, file: !448, line: 498, type: !476, isLocal: true, isDefinition: true, scopeLine: 499, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !466)
!559 = !DILocalVariable(name: "strvec", arg: 1, scope: !558, file: !448, line: 498, type: !478)
!560 = !DILocation(line: 498, column: 29, scope: !558)
!561 = !DILocalVariable(name: "dns_check", scope: !558, file: !448, line: 500, type: !97)
!562 = !DILocation(line: 500, column: 15, scope: !558)
!563 = !DILocation(line: 500, column: 46, scope: !558)
!564 = !DILocation(line: 500, column: 63, scope: !558)
!565 = !DILocation(line: 500, column: 69, scope: !558)
!566 = !DILocation(line: 500, column: 30, scope: !558)
!567 = !DILocation(line: 500, column: 78, scope: !558)
!568 = !DILocation(line: 500, column: 27, scope: !558)
!569 = !DILocation(line: 501, column: 31, scope: !558)
!570 = !DILocation(line: 501, column: 21, scope: !558)
!571 = !DILocation(line: 501, column: 2, scope: !558)
!572 = !DILocation(line: 501, column: 13, scope: !558)
!573 = !DILocation(line: 501, column: 18, scope: !558)
!574 = !DILocation(line: 502, column: 1, scope: !558)
!575 = distinct !DISubprogram(name: "dns_check_end", scope: !448, file: !448, line: 505, type: !464, isLocal: true, isDefinition: true, scopeLine: 506, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !466)
!576 = !DILocation(line: 507, column: 41, scope: !577)
!577 = distinct !DILexicalBlock(scope: !575, file: !448, line: 507, column: 6)
!578 = !DILocation(line: 507, column: 58, scope: !577)
!579 = !DILocation(line: 507, column: 64, scope: !577)
!580 = !DILocation(line: 507, column: 25, scope: !577)
!581 = !DILocation(line: 507, column: 73, scope: !577)
!582 = !DILocation(line: 507, column: 7, scope: !577)
!583 = !DILocation(line: 507, column: 6, scope: !575)
!584 = !DILocation(line: 508, column: 3, scope: !585)
!585 = distinct !DILexicalBlock(scope: !577, file: !448, line: 507, column: 79)
!586 = !DILocation(line: 509, column: 2, scope: !585)
!587 = !DILocation(line: 510, column: 1, scope: !575)
!588 = distinct !DISubprogram(name: "dns_free", scope: !448, file: !448, line: 426, type: !150, isLocal: true, isDefinition: true, scopeLine: 427, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !466)
!589 = !DILocalVariable(name: "data", arg: 1, scope: !588, file: !448, line: 426, type: !152)
!590 = !DILocation(line: 426, column: 16, scope: !588)
!591 = !DILocalVariable(name: "checker", scope: !588, file: !448, line: 428, type: !143)
!592 = !DILocation(line: 428, column: 13, scope: !588)
!593 = !DILocation(line: 428, column: 23, scope: !588)
!594 = !DILocalVariable(name: "dns_check", scope: !588, file: !448, line: 429, type: !97)
!595 = !DILocation(line: 429, column: 15, scope: !588)
!596 = !DILocation(line: 429, column: 27, scope: !588)
!597 = !DILocation(line: 429, column: 36, scope: !588)
!598 = !DILocation(line: 431, column: 8, scope: !588)
!599 = !DILocation(line: 431, column: 19, scope: !588)
!600 = !DILocation(line: 431, column: 3, scope: !588)
!601 = !DILocation(line: 431, column: 27, scope: !588)
!602 = !DILocation(line: 431, column: 38, scope: !588)
!603 = !DILocation(line: 431, column: 44, scope: !588)
!604 = !DILocation(line: 432, column: 23, scope: !588)
!605 = !DILocation(line: 432, column: 10, scope: !588)
!606 = !DILocation(line: 432, column: 30, scope: !588)
!607 = !DILocation(line: 432, column: 8, scope: !588)
!608 = !DILocation(line: 432, column: 3, scope: !588)
!609 = !DILocation(line: 432, column: 52, scope: !588)
!610 = !DILocation(line: 432, column: 39, scope: !588)
!611 = !DILocation(line: 432, column: 59, scope: !588)
!612 = !DILocation(line: 432, column: 64, scope: !588)
!613 = !DILocation(line: 433, column: 23, scope: !588)
!614 = !DILocation(line: 433, column: 10, scope: !588)
!615 = !DILocation(line: 433, column: 30, scope: !588)
!616 = !DILocation(line: 433, column: 3, scope: !588)
!617 = !DILocation(line: 433, column: 54, scope: !588)
!618 = !DILocation(line: 433, column: 41, scope: !588)
!619 = !DILocation(line: 433, column: 61, scope: !588)
!620 = !DILocation(line: 433, column: 68, scope: !588)
!621 = !DILocation(line: 434, column: 8, scope: !588)
!622 = !DILocation(line: 434, column: 3, scope: !588)
!623 = !DILocation(line: 434, column: 22, scope: !588)
!624 = !DILocation(line: 435, column: 1, scope: !588)
!625 = distinct !DISubprogram(name: "dns_dump", scope: !448, file: !448, line: 438, type: !155, isLocal: true, isDefinition: true, scopeLine: 439, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !466)
!626 = !DILocalVariable(name: "fp", arg: 1, scope: !625, file: !448, line: 438, type: !157)
!627 = !DILocation(line: 438, column: 16, scope: !625)
!628 = !DILocalVariable(name: "data", arg: 2, scope: !625, file: !448, line: 438, type: !152)
!629 = !DILocation(line: 438, column: 26, scope: !625)
!630 = !DILocalVariable(name: "checker", scope: !625, file: !448, line: 440, type: !143)
!631 = !DILocation(line: 440, column: 13, scope: !625)
!632 = !DILocation(line: 440, column: 23, scope: !625)
!633 = !DILocalVariable(name: "dns_check", scope: !625, file: !448, line: 441, type: !97)
!634 = !DILocation(line: 441, column: 15, scope: !625)
!635 = !DILocation(line: 441, column: 27, scope: !625)
!636 = !DILocation(line: 441, column: 36, scope: !625)
!637 = !DILocation(line: 443, column: 13, scope: !625)
!638 = !DILocation(line: 443, column: 2, scope: !625)
!639 = !DILocation(line: 444, column: 20, scope: !625)
!640 = !DILocation(line: 444, column: 24, scope: !625)
!641 = !DILocation(line: 444, column: 2, scope: !625)
!642 = !DILocation(line: 445, column: 13, scope: !625)
!643 = !DILocation(line: 445, column: 47, scope: !625)
!644 = !DILocation(line: 445, column: 58, scope: !625)
!645 = !DILocation(line: 445, column: 33, scope: !625)
!646 = !DILocation(line: 445, column: 2, scope: !647)
!647 = !DILexicalBlockFile(scope: !625, file: !448, discriminator: 1)
!648 = !DILocation(line: 446, column: 13, scope: !625)
!649 = !DILocation(line: 446, column: 33, scope: !625)
!650 = !DILocation(line: 446, column: 44, scope: !625)
!651 = !DILocation(line: 446, column: 2, scope: !625)
!652 = !DILocation(line: 447, column: 1, scope: !625)
!653 = distinct !DISubprogram(name: "dns_connect_thread", scope: !448, file: !448, line: 368, type: !654, isLocal: true, isDefinition: true, scopeLine: 369, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !466)
!654 = !DISubroutineType(types: !655)
!655 = !{!164, !279}
!656 = !DILocalVariable(name: "thread", arg: 1, scope: !653, file: !448, line: 368, type: !279)
!657 = !DILocation(line: 368, column: 31, scope: !653)
!658 = !DILocalVariable(name: "fd", scope: !653, file: !448, line: 370, type: !164)
!659 = !DILocation(line: 370, column: 6, scope: !653)
!660 = !DILocalVariable(name: "status", scope: !653, file: !448, line: 370, type: !164)
!661 = !DILocation(line: 370, column: 10, scope: !653)
!662 = !DILocalVariable(name: "checker", scope: !653, file: !448, line: 372, type: !143)
!663 = !DILocation(line: 372, column: 13, scope: !653)
!664 = !DILocation(line: 372, column: 25, scope: !653)
!665 = !DILocation(line: 372, column: 34, scope: !653)
!666 = !DILocation(line: 372, column: 23, scope: !653)
!667 = !DILocalVariable(name: "co", scope: !653, file: !448, line: 373, type: !119)
!668 = !DILocation(line: 373, column: 15, scope: !653)
!669 = !DILocation(line: 373, column: 20, scope: !653)
!670 = !DILocation(line: 373, column: 29, scope: !653)
!671 = !DILocation(line: 375, column: 7, scope: !672)
!672 = distinct !DILexicalBlock(scope: !653, file: !448, line: 375, column: 6)
!673 = !DILocation(line: 375, column: 16, scope: !672)
!674 = !DILocation(line: 375, column: 6, scope: !653)
!675 = !DILocation(line: 376, column: 20, scope: !676)
!676 = distinct !DILexicalBlock(scope: !672, file: !448, line: 375, column: 25)
!677 = !DILocation(line: 376, column: 28, scope: !676)
!678 = !DILocation(line: 376, column: 56, scope: !676)
!679 = !DILocation(line: 377, column: 6, scope: !676)
!680 = !DILocation(line: 377, column: 15, scope: !676)
!681 = !DILocation(line: 376, column: 3, scope: !676)
!682 = !DILocation(line: 378, column: 3, scope: !676)
!683 = !DILocation(line: 381, column: 19, scope: !684)
!684 = distinct !DILexicalBlock(scope: !653, file: !448, line: 381, column: 6)
!685 = !DILocation(line: 381, column: 23, scope: !684)
!686 = !DILocation(line: 381, column: 27, scope: !684)
!687 = !DILocation(line: 381, column: 12, scope: !684)
!688 = !DILocation(line: 381, column: 10, scope: !684)
!689 = !DILocation(line: 381, column: 94, scope: !684)
!690 = !DILocation(line: 381, column: 6, scope: !653)
!691 = !DILocation(line: 382, column: 19, scope: !692)
!692 = distinct !DILexicalBlock(scope: !684, file: !448, line: 381, column: 101)
!693 = !DILocation(line: 382, column: 3, scope: !692)
!694 = !DILocation(line: 384, column: 20, scope: !692)
!695 = !DILocation(line: 384, column: 28, scope: !692)
!696 = !DILocation(line: 384, column: 56, scope: !692)
!697 = !DILocation(line: 385, column: 6, scope: !692)
!698 = !DILocation(line: 385, column: 15, scope: !692)
!699 = !DILocation(line: 384, column: 3, scope: !692)
!700 = !DILocation(line: 386, column: 3, scope: !692)
!701 = !DILocation(line: 403, column: 31, scope: !653)
!702 = !DILocation(line: 403, column: 35, scope: !653)
!703 = !DILocation(line: 403, column: 11, scope: !653)
!704 = !DILocation(line: 403, column: 9, scope: !653)
!705 = !DILocation(line: 405, column: 6, scope: !706)
!706 = distinct !DILexicalBlock(scope: !653, file: !448, line: 405, column: 6)
!707 = !DILocation(line: 405, column: 13, scope: !706)
!708 = !DILocation(line: 405, column: 6, scope: !653)
!709 = !DILocation(line: 406, column: 18, scope: !710)
!710 = distinct !DILexicalBlock(scope: !706, file: !448, line: 405, column: 33)
!711 = !DILocation(line: 406, column: 3, scope: !710)
!712 = !DILocation(line: 406, column: 11, scope: !710)
!713 = !DILocation(line: 406, column: 13, scope: !710)
!714 = !DILocation(line: 406, column: 16, scope: !710)
!715 = !DILocation(line: 407, column: 18, scope: !710)
!716 = !DILocation(line: 407, column: 3, scope: !710)
!717 = !DILocation(line: 408, column: 12, scope: !710)
!718 = !DILocation(line: 408, column: 3, scope: !710)
!719 = !DILocation(line: 410, column: 3, scope: !710)
!720 = !DILocation(line: 414, column: 30, scope: !721)
!721 = distinct !DILexicalBlock(scope: !653, file: !448, line: 414, column: 6)
!722 = !DILocation(line: 414, column: 34, scope: !721)
!723 = !DILocation(line: 414, column: 42, scope: !721)
!724 = !DILocation(line: 414, column: 68, scope: !721)
!725 = !DILocation(line: 414, column: 72, scope: !721)
!726 = !DILocation(line: 414, column: 6, scope: !721)
!727 = !DILocation(line: 414, column: 6, scope: !653)
!728 = !DILocation(line: 415, column: 9, scope: !729)
!729 = distinct !DILexicalBlock(scope: !721, file: !448, line: 414, column: 88)
!730 = !DILocation(line: 415, column: 3, scope: !729)
!731 = !DILocation(line: 416, column: 19, scope: !729)
!732 = !DILocation(line: 416, column: 3, scope: !729)
!733 = !DILocation(line: 418, column: 20, scope: !729)
!734 = !DILocation(line: 418, column: 28, scope: !729)
!735 = !DILocation(line: 418, column: 56, scope: !729)
!736 = !DILocation(line: 419, column: 6, scope: !729)
!737 = !DILocation(line: 419, column: 15, scope: !729)
!738 = !DILocation(line: 418, column: 3, scope: !729)
!739 = !DILocation(line: 420, column: 2, scope: !729)
!740 = !DILocation(line: 422, column: 2, scope: !653)
!741 = !DILocation(line: 423, column: 1, scope: !653)
!742 = distinct !DISubprogram(name: "dns_check_compare", scope: !448, file: !448, line: 450, type: !329, isLocal: true, isDefinition: true, scopeLine: 451, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !466)
!743 = !DILocalVariable(name: "a", arg: 1, scope: !742, file: !448, line: 450, type: !152)
!744 = !DILocation(line: 450, column: 25, scope: !742)
!745 = !DILocalVariable(name: "b", arg: 2, scope: !742, file: !448, line: 450, type: !152)
!746 = !DILocation(line: 450, column: 34, scope: !742)
!747 = !DILocalVariable(name: "old", scope: !742, file: !448, line: 452, type: !97)
!748 = !DILocation(line: 452, column: 15, scope: !742)
!749 = !DILocation(line: 452, column: 36, scope: !742)
!750 = !DILocation(line: 452, column: 23, scope: !742)
!751 = !DILocation(line: 452, column: 40, scope: !742)
!752 = !DILocation(line: 452, column: 21, scope: !742)
!753 = !DILocalVariable(name: "new", scope: !742, file: !448, line: 453, type: !97)
!754 = !DILocation(line: 453, column: 15, scope: !742)
!755 = !DILocation(line: 453, column: 36, scope: !742)
!756 = !DILocation(line: 453, column: 23, scope: !742)
!757 = !DILocation(line: 453, column: 40, scope: !742)
!758 = !DILocation(line: 453, column: 21, scope: !742)
!759 = !DILocation(line: 455, column: 40, scope: !760)
!760 = distinct !DILexicalBlock(scope: !742, file: !448, line: 455, column: 6)
!761 = !DILocation(line: 455, column: 27, scope: !760)
!762 = !DILocation(line: 455, column: 44, scope: !760)
!763 = !DILocation(line: 455, column: 64, scope: !760)
!764 = !DILocation(line: 455, column: 51, scope: !760)
!765 = !DILocation(line: 455, column: 68, scope: !760)
!766 = !DILocation(line: 455, column: 7, scope: !760)
!767 = !DILocation(line: 455, column: 6, scope: !742)
!768 = !DILocation(line: 456, column: 3, scope: !760)
!769 = !DILocation(line: 457, column: 6, scope: !770)
!770 = distinct !DILexicalBlock(scope: !742, file: !448, line: 457, column: 6)
!771 = !DILocation(line: 457, column: 11, scope: !770)
!772 = !DILocation(line: 457, column: 19, scope: !770)
!773 = !DILocation(line: 457, column: 24, scope: !770)
!774 = !DILocation(line: 457, column: 16, scope: !770)
!775 = !DILocation(line: 457, column: 6, scope: !742)
!776 = !DILocation(line: 458, column: 3, scope: !770)
!777 = !DILocation(line: 459, column: 13, scope: !778)
!778 = distinct !DILexicalBlock(scope: !742, file: !448, line: 459, column: 6)
!779 = !DILocation(line: 459, column: 18, scope: !778)
!780 = !DILocation(line: 459, column: 24, scope: !778)
!781 = !DILocation(line: 459, column: 29, scope: !778)
!782 = !DILocation(line: 459, column: 6, scope: !778)
!783 = !DILocation(line: 459, column: 35, scope: !778)
!784 = !DILocation(line: 459, column: 6, scope: !742)
!785 = !DILocation(line: 460, column: 3, scope: !778)
!786 = !DILocation(line: 462, column: 2, scope: !742)
!787 = !DILocation(line: 463, column: 1, scope: !742)
!788 = distinct !DISubprogram(name: "dns_type_name", scope: !448, file: !448, line: 82, type: !789, isLocal: true, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !466)
!789 = !DISubroutineType(types: !790)
!790 = !{!791, !103}
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64, align: 64)
!792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!793 = !DILocalVariable(name: "type", arg: 1, scope: !788, file: !448, line: 82, type: !103)
!794 = !DILocation(line: 82, column: 24, scope: !788)
!795 = !DILocalVariable(name: "t", scope: !788, file: !448, line: 84, type: !796)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64, align: 64)
!797 = !DILocation(line: 84, column: 20, scope: !788)
!798 = !DILocation(line: 86, column: 9, scope: !799)
!799 = distinct !DILexicalBlock(scope: !788, file: !448, line: 86, column: 2)
!800 = !DILocation(line: 86, column: 7, scope: !799)
!801 = !DILocation(line: 86, column: 21, scope: !802)
!802 = !DILexicalBlockFile(scope: !803, file: !448, discriminator: 1)
!803 = distinct !DILexicalBlock(scope: !799, file: !448, line: 86, column: 2)
!804 = !DILocation(line: 86, column: 24, scope: !802)
!805 = !DILocation(line: 86, column: 2, scope: !802)
!806 = !DILocation(line: 87, column: 7, scope: !807)
!807 = distinct !DILexicalBlock(scope: !808, file: !448, line: 87, column: 7)
!808 = distinct !DILexicalBlock(scope: !803, file: !448, line: 86, column: 35)
!809 = !DILocation(line: 87, column: 15, scope: !807)
!810 = !DILocation(line: 87, column: 18, scope: !807)
!811 = !DILocation(line: 87, column: 12, scope: !807)
!812 = !DILocation(line: 87, column: 7, scope: !808)
!813 = !DILocation(line: 88, column: 11, scope: !814)
!814 = distinct !DILexicalBlock(scope: !807, file: !448, line: 87, column: 24)
!815 = !DILocation(line: 88, column: 14, scope: !814)
!816 = !DILocation(line: 88, column: 4, scope: !814)
!817 = !DILocation(line: 90, column: 2, scope: !808)
!818 = !DILocation(line: 86, column: 31, scope: !819)
!819 = !DILexicalBlockFile(scope: !803, file: !448, discriminator: 2)
!820 = !DILocation(line: 86, column: 2, scope: !819)
!821 = distinct !{!821, !822}
!822 = !DILocation(line: 86, column: 2, scope: !788)
!823 = !DILocation(line: 91, column: 2, scope: !788)
!824 = !DILocation(line: 92, column: 1, scope: !788)
!825 = distinct !DISubprogram(name: "dns_log_message", scope: !448, file: !448, line: 95, type: !826, isLocal: true, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !466)
!826 = !DISubroutineType(types: !827)
!827 = !{null, !279, !164, !791, null}
!828 = !DILocalVariable(name: "thread", arg: 1, scope: !825, file: !448, line: 95, type: !279)
!829 = !DILocation(line: 95, column: 28, scope: !825)
!830 = !DILocalVariable(name: "level", arg: 2, scope: !825, file: !448, line: 95, type: !164)
!831 = !DILocation(line: 95, column: 40, scope: !825)
!832 = !DILocalVariable(name: "fmt", arg: 3, scope: !825, file: !448, line: 95, type: !791)
!833 = !DILocation(line: 95, column: 59, scope: !825)
!834 = !DILocalVariable(name: "buf", scope: !825, file: !448, line: 97, type: !835)
!835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 2040, align: 8, elements: !836)
!836 = !{!837}
!837 = !DISubrange(count: 255)
!838 = !DILocation(line: 97, column: 7, scope: !825)
!839 = !DILocalVariable(name: "args", scope: !825, file: !448, line: 98, type: !840)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !159, line: 79, baseType: !841)
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !842, line: 40, baseType: !843)
!842 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 98, baseType: !844)
!844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !845, size: 192, align: 64, elements: !196)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 98, size: 192, align: 64, elements: !846)
!846 = !{!847, !848, !849, !850}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !845, file: !1, line: 98, baseType: !141, size: 32, align: 32)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !845, file: !1, line: 98, baseType: !141, size: 32, align: 32, offset: 32)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !845, file: !1, line: 98, baseType: !152, size: 64, align: 64, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !845, file: !1, line: 98, baseType: !152, size: 64, align: 64, offset: 128)
!851 = !DILocation(line: 98, column: 10, scope: !825)
!852 = !DILocalVariable(name: "checker", scope: !825, file: !448, line: 100, type: !143)
!853 = !DILocation(line: 100, column: 13, scope: !825)
!854 = !DILocation(line: 100, column: 25, scope: !825)
!855 = !DILocation(line: 100, column: 34, scope: !825)
!856 = !DILocation(line: 100, column: 23, scope: !825)
!857 = !DILocation(line: 102, column: 1, scope: !825)
!858 = !DILocation(line: 103, column: 12, scope: !825)
!859 = !DILocation(line: 103, column: 31, scope: !825)
!860 = !DILocation(line: 103, column: 36, scope: !825)
!861 = !DILocation(line: 103, column: 2, scope: !825)
!862 = !DILocation(line: 104, column: 1, scope: !825)
!863 = !DILocation(line: 106, column: 14, scope: !825)
!864 = !DILocation(line: 106, column: 67, scope: !825)
!865 = !DILocation(line: 106, column: 77, scope: !825)
!866 = !DILocation(line: 106, column: 82, scope: !825)
!867 = !DILocation(line: 106, column: 90, scope: !825)
!868 = !DILocation(line: 106, column: 100, scope: !825)
!869 = !DILocation(line: 106, column: 105, scope: !825)
!870 = !DILocation(line: 106, column: 43, scope: !825)
!871 = !DILocation(line: 106, column: 121, scope: !825)
!872 = !DILocation(line: 106, column: 2, scope: !873)
!873 = !DILexicalBlockFile(scope: !825, file: !448, discriminator: 1)
!874 = !DILocation(line: 107, column: 1, scope: !825)
!875 = distinct !DISubprogram(name: "dns_make_query", scope: !448, file: !448, line: 243, type: !654, isLocal: true, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !466)
!876 = !DILocalVariable(name: "thread", arg: 1, scope: !875, file: !448, line: 243, type: !279)
!877 = !DILocation(line: 243, column: 27, scope: !875)
!878 = !DILocalVariable(name: "flags", scope: !875, file: !448, line: 245, type: !103)
!879 = !DILocation(line: 245, column: 11, scope: !875)
!880 = !DILocalVariable(name: "p", scope: !875, file: !448, line: 246, type: !442)
!881 = !DILocation(line: 246, column: 11, scope: !875)
!882 = !DILocalVariable(name: "s", scope: !875, file: !448, line: 247, type: !107)
!883 = !DILocation(line: 247, column: 8, scope: !875)
!884 = !DILocalVariable(name: "e", scope: !875, file: !448, line: 247, type: !107)
!885 = !DILocation(line: 247, column: 12, scope: !875)
!886 = !DILocalVariable(name: "n", scope: !875, file: !448, line: 248, type: !116)
!887 = !DILocation(line: 248, column: 9, scope: !875)
!888 = !DILocalVariable(name: "checker", scope: !875, file: !448, line: 249, type: !143)
!889 = !DILocation(line: 249, column: 13, scope: !875)
!890 = !DILocation(line: 249, column: 25, scope: !875)
!891 = !DILocation(line: 249, column: 34, scope: !875)
!892 = !DILocation(line: 249, column: 23, scope: !875)
!893 = !DILocalVariable(name: "dns_check", scope: !875, file: !448, line: 250, type: !97)
!894 = !DILocation(line: 250, column: 15, scope: !875)
!895 = !DILocation(line: 250, column: 29, scope: !875)
!896 = !DILocation(line: 250, column: 39, scope: !875)
!897 = !DILocation(line: 250, column: 27, scope: !875)
!898 = !DILocalVariable(name: "header", scope: !875, file: !448, line: 251, type: !432)
!899 = !DILocation(line: 251, column: 16, scope: !875)
!900 = !DILocation(line: 251, column: 42, scope: !875)
!901 = !DILocation(line: 251, column: 53, scope: !875)
!902 = !DILocation(line: 251, column: 25, scope: !875)
!903 = !DILocation(line: 253, column: 9, scope: !875)
!904 = !DILocation(line: 255, column: 21, scope: !875)
!905 = !DILocation(line: 255, column: 15, scope: !906)
!906 = !DILexicalBlockFile(scope: !875, file: !448, discriminator: 1)
!907 = !DILocation(line: 255, column: 2, scope: !875)
!908 = !DILocation(line: 255, column: 10, scope: !875)
!909 = !DILocation(line: 255, column: 13, scope: !875)
!910 = !DILocation(line: 256, column: 24, scope: !875)
!911 = !DILocation(line: 256, column: 18, scope: !875)
!912 = !DILocation(line: 256, column: 2, scope: !875)
!913 = !DILocation(line: 256, column: 10, scope: !875)
!914 = !DILocation(line: 256, column: 16, scope: !875)
!915 = !DILocation(line: 257, column: 20, scope: !875)
!916 = !DILocation(line: 257, column: 2, scope: !875)
!917 = !DILocation(line: 257, column: 10, scope: !875)
!918 = !DILocation(line: 257, column: 18, scope: !875)
!919 = !DILocation(line: 258, column: 20, scope: !875)
!920 = !DILocation(line: 258, column: 2, scope: !875)
!921 = !DILocation(line: 258, column: 10, scope: !875)
!922 = !DILocation(line: 258, column: 18, scope: !875)
!923 = !DILocation(line: 259, column: 20, scope: !875)
!924 = !DILocation(line: 259, column: 2, scope: !875)
!925 = !DILocation(line: 259, column: 10, scope: !875)
!926 = !DILocation(line: 259, column: 18, scope: !875)
!927 = !DILocation(line: 260, column: 20, scope: !875)
!928 = !DILocation(line: 260, column: 2, scope: !875)
!929 = !DILocation(line: 260, column: 10, scope: !875)
!930 = !DILocation(line: 260, column: 18, scope: !875)
!931 = !DILocation(line: 262, column: 19, scope: !875)
!932 = !DILocation(line: 262, column: 26, scope: !875)
!933 = !DILocation(line: 262, column: 6, scope: !875)
!934 = !DILocation(line: 262, column: 4, scope: !875)
!935 = !DILocation(line: 265, column: 11, scope: !936)
!936 = distinct !DILexicalBlock(scope: !875, file: !448, line: 265, column: 2)
!937 = !DILocation(line: 265, column: 22, scope: !936)
!938 = !DILocation(line: 265, column: 9, scope: !936)
!939 = !DILocation(line: 265, column: 7, scope: !936)
!940 = !DILocation(line: 265, column: 29, scope: !941)
!941 = !DILexicalBlockFile(scope: !942, file: !448, discriminator: 1)
!942 = distinct !DILexicalBlock(scope: !936, file: !448, line: 265, column: 2)
!943 = !DILocation(line: 265, column: 28, scope: !941)
!944 = !DILocation(line: 265, column: 2, scope: !941)
!945 = !DILocation(line: 266, column: 20, scope: !946)
!946 = distinct !DILexicalBlock(scope: !947, file: !448, line: 266, column: 7)
!947 = distinct !DILexicalBlock(scope: !942, file: !448, line: 265, column: 50)
!948 = !DILocation(line: 266, column: 13, scope: !946)
!949 = !DILocation(line: 266, column: 11, scope: !946)
!950 = !DILocation(line: 266, column: 7, scope: !947)
!951 = !DILocation(line: 267, column: 8, scope: !952)
!952 = distinct !DILexicalBlock(scope: !946, file: !448, line: 266, column: 30)
!953 = !DILocation(line: 267, column: 19, scope: !952)
!954 = !DILocation(line: 267, column: 12, scope: !952)
!955 = !DILocation(line: 267, column: 10, scope: !952)
!956 = !DILocation(line: 267, column: 6, scope: !952)
!957 = !DILocation(line: 268, column: 3, scope: !952)
!958 = !DILocation(line: 269, column: 16, scope: !947)
!959 = !DILocation(line: 269, column: 20, scope: !947)
!960 = !DILocation(line: 269, column: 18, scope: !947)
!961 = !DILocation(line: 269, column: 5, scope: !947)
!962 = !DILocation(line: 270, column: 21, scope: !947)
!963 = !DILocation(line: 270, column: 12, scope: !947)
!964 = !DILocation(line: 270, column: 6, scope: !947)
!965 = !DILocation(line: 270, column: 10, scope: !947)
!966 = !DILocation(line: 271, column: 10, scope: !947)
!967 = !DILocation(line: 271, column: 13, scope: !947)
!968 = !DILocation(line: 271, column: 16, scope: !947)
!969 = !DILocation(line: 271, column: 3, scope: !947)
!970 = !DILocation(line: 272, column: 8, scope: !947)
!971 = !DILocation(line: 272, column: 5, scope: !947)
!972 = !DILocation(line: 273, column: 2, scope: !947)
!973 = !DILocation(line: 265, column: 37, scope: !974)
!974 = !DILexicalBlockFile(scope: !942, file: !448, discriminator: 2)
!975 = !DILocation(line: 265, column: 36, scope: !974)
!976 = !DILocation(line: 265, column: 41, scope: !977)
!977 = !DILexicalBlockFile(scope: !942, file: !448, discriminator: 3)
!978 = !DILocation(line: 265, column: 36, scope: !977)
!979 = !DILocation(line: 265, column: 47, scope: !980)
!980 = !DILexicalBlockFile(scope: !942, file: !448, discriminator: 4)
!981 = !DILocation(line: 265, column: 36, scope: !980)
!982 = !DILocation(line: 265, column: 36, scope: !983)
!983 = !DILexicalBlockFile(scope: !942, file: !448, discriminator: 5)
!984 = !DILocation(line: 265, column: 34, scope: !983)
!985 = !DILocation(line: 265, column: 2, scope: !983)
!986 = distinct !{!986, !987}
!987 = !DILocation(line: 265, column: 2, scope: !875)
!988 = !DILocation(line: 274, column: 13, scope: !875)
!989 = !DILocation(line: 274, column: 24, scope: !875)
!990 = !DILocation(line: 274, column: 6, scope: !875)
!991 = !DILocation(line: 274, column: 4, scope: !875)
!992 = !DILocation(line: 275, column: 6, scope: !993)
!993 = distinct !DILexicalBlock(scope: !875, file: !448, line: 275, column: 6)
!994 = !DILocation(line: 275, column: 8, scope: !993)
!995 = !DILocation(line: 275, column: 27, scope: !996)
!996 = !DILexicalBlockFile(scope: !993, file: !448, discriminator: 1)
!997 = !DILocation(line: 275, column: 11, scope: !996)
!998 = !DILocation(line: 275, column: 22, scope: !996)
!999 = !DILocation(line: 275, column: 32, scope: !996)
!1000 = !DILocation(line: 275, column: 6, scope: !996)
!1001 = !DILocation(line: 276, column: 6, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !993, file: !448, line: 275, column: 40)
!1003 = !DILocation(line: 276, column: 10, scope: !1002)
!1004 = !DILocation(line: 277, column: 2, scope: !1002)
!1005 = !DILocation(line: 279, column: 2, scope: !875)
!1006 = distinct !{!1006, !1005}
!1007 = !DILocation(line: 279, column: 33, scope: !1008)
!1008 = !DILexicalBlockFile(scope: !1009, file: !448, discriminator: 1)
!1009 = distinct !DILexicalBlock(scope: !875, file: !448, line: 279, column: 5)
!1010 = !DILocation(line: 279, column: 44, scope: !1008)
!1011 = !DILocation(line: 279, column: 27, scope: !1008)
!1012 = !DILocation(line: 279, column: 22, scope: !1008)
!1013 = !DILocation(line: 279, column: 7, scope: !1008)
!1014 = !DILocation(line: 279, column: 25, scope: !1008)
!1015 = !DILocation(line: 279, column: 70, scope: !1008)
!1016 = !DILocation(line: 279, column: 73, scope: !1008)
!1017 = !DILocation(line: 279, column: 55, scope: !1008)
!1018 = !DILocation(line: 279, column: 78, scope: !1008)
!1019 = !DILocation(line: 280, column: 2, scope: !875)
!1020 = distinct !{!1020, !1019}
!1021 = !DILocation(line: 280, column: 27, scope: !1022)
!1022 = !DILexicalBlockFile(scope: !1023, file: !448, discriminator: 1)
!1023 = distinct !DILexicalBlock(scope: !875, file: !448, line: 280, column: 5)
!1024 = !DILocation(line: 280, column: 22, scope: !1022)
!1025 = !DILocation(line: 280, column: 7, scope: !1022)
!1026 = !DILocation(line: 280, column: 25, scope: !1022)
!1027 = !DILocation(line: 280, column: 56, scope: !1022)
!1028 = !DILocation(line: 280, column: 59, scope: !1022)
!1029 = !DILocation(line: 280, column: 41, scope: !1022)
!1030 = !DILocation(line: 280, column: 64, scope: !1022)
!1031 = !DILocation(line: 282, column: 29, scope: !875)
!1032 = !DILocation(line: 282, column: 44, scope: !875)
!1033 = !DILocation(line: 282, column: 33, scope: !875)
!1034 = !DILocation(line: 282, column: 31, scope: !875)
!1035 = !DILocation(line: 282, column: 2, scope: !875)
!1036 = !DILocation(line: 282, column: 13, scope: !875)
!1037 = !DILocation(line: 282, column: 18, scope: !875)
!1038 = !DILocation(line: 284, column: 2, scope: !875)
!1039 = distinct !DISubprogram(name: "dns_send", scope: !448, file: !448, line: 288, type: !1040, isLocal: true, isDefinition: true, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !466)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{null, !279}
!1042 = !DILocalVariable(name: "thread", arg: 1, scope: !1039, file: !448, line: 288, type: !279)
!1043 = !DILocation(line: 288, column: 20, scope: !1039)
!1044 = !DILocalVariable(name: "checker", scope: !1039, file: !448, line: 290, type: !143)
!1045 = !DILocation(line: 290, column: 13, scope: !1039)
!1046 = !DILocation(line: 290, column: 25, scope: !1039)
!1047 = !DILocation(line: 290, column: 34, scope: !1039)
!1048 = !DILocation(line: 290, column: 23, scope: !1039)
!1049 = !DILocalVariable(name: "dns_check", scope: !1039, file: !448, line: 291, type: !97)
!1050 = !DILocation(line: 291, column: 15, scope: !1039)
!1051 = !DILocation(line: 291, column: 29, scope: !1039)
!1052 = !DILocation(line: 291, column: 39, scope: !1039)
!1053 = !DILocation(line: 291, column: 27, scope: !1039)
!1054 = !DILocalVariable(name: "timeout", scope: !1039, file: !448, line: 292, type: !118)
!1055 = !DILocation(line: 292, column: 16, scope: !1039)
!1056 = !DILocalVariable(name: "ret", scope: !1039, file: !448, line: 293, type: !444)
!1057 = !DILocation(line: 293, column: 10, scope: !1039)
!1058 = !DILocation(line: 295, column: 23, scope: !1039)
!1059 = !DILocation(line: 295, column: 31, scope: !1039)
!1060 = !DILocation(line: 295, column: 12, scope: !1039)
!1061 = !DILocation(line: 295, column: 40, scope: !1039)
!1062 = !DILocation(line: 295, column: 40, scope: !1063)
!1063 = !DILexicalBlockFile(scope: !1039, file: !448, discriminator: 1)
!1064 = !DILocation(line: 295, column: 38, scope: !1039)
!1065 = !DILocation(line: 295, column: 10, scope: !1039)
!1066 = !DILocation(line: 297, column: 13, scope: !1039)
!1067 = !DILocation(line: 297, column: 21, scope: !1039)
!1068 = !DILocation(line: 297, column: 23, scope: !1039)
!1069 = !DILocation(line: 297, column: 27, scope: !1039)
!1070 = !DILocation(line: 297, column: 38, scope: !1039)
!1071 = !DILocation(line: 297, column: 44, scope: !1039)
!1072 = !DILocation(line: 297, column: 55, scope: !1039)
!1073 = !DILocation(line: 297, column: 8, scope: !1039)
!1074 = !DILocation(line: 297, column: 6, scope: !1039)
!1075 = !DILocation(line: 298, column: 6, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1039, file: !448, line: 298, column: 6)
!1077 = !DILocation(line: 298, column: 10, scope: !1076)
!1078 = !DILocation(line: 298, column: 6, scope: !1039)
!1079 = !DILocation(line: 299, column: 8, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1081, file: !448, line: 299, column: 6)
!1081 = distinct !DILexicalBlock(scope: !1076, file: !448, line: 298, column: 17)
!1082 = !DILocation(line: 299, column: 7, scope: !1080)
!1083 = !DILocation(line: 299, column: 12, scope: !1080)
!1084 = !DILocation(line: 299, column: 22, scope: !1080)
!1085 = !DILocation(line: 299, column: 27, scope: !1086)
!1086 = !DILexicalBlockFile(scope: !1080, file: !448, discriminator: 1)
!1087 = !DILocation(line: 299, column: 26, scope: !1086)
!1088 = !DILocation(line: 299, column: 31, scope: !1086)
!1089 = !DILocation(line: 299, column: 46, scope: !1086)
!1090 = !DILocation(line: 299, column: 51, scope: !1091)
!1091 = !DILexicalBlockFile(scope: !1080, file: !448, discriminator: 2)
!1092 = !DILocation(line: 299, column: 50, scope: !1091)
!1093 = !DILocation(line: 299, column: 55, scope: !1091)
!1094 = !DILocation(line: 299, column: 6, scope: !1091)
!1095 = !DILocation(line: 300, column: 21, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1080, file: !448, line: 299, column: 65)
!1097 = !DILocation(line: 300, column: 29, scope: !1096)
!1098 = !DILocation(line: 301, column: 7, scope: !1096)
!1099 = !DILocation(line: 301, column: 16, scope: !1096)
!1100 = !DILocation(line: 301, column: 24, scope: !1096)
!1101 = !DILocation(line: 301, column: 26, scope: !1096)
!1102 = !DILocation(line: 301, column: 30, scope: !1096)
!1103 = !DILocation(line: 300, column: 4, scope: !1096)
!1104 = !DILocation(line: 302, column: 4, scope: !1096)
!1105 = !DILocation(line: 304, column: 13, scope: !1081)
!1106 = !DILocation(line: 304, column: 3, scope: !1081)
!1107 = !DILocation(line: 305, column: 3, scope: !1081)
!1108 = !DILocation(line: 308, column: 6, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1039, file: !448, line: 308, column: 6)
!1110 = !DILocation(line: 308, column: 23, scope: !1109)
!1111 = !DILocation(line: 308, column: 34, scope: !1109)
!1112 = !DILocation(line: 308, column: 10, scope: !1109)
!1113 = !DILocation(line: 308, column: 6, scope: !1039)
!1114 = !DILocation(line: 309, column: 13, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1109, file: !448, line: 308, column: 40)
!1116 = !DILocation(line: 309, column: 3, scope: !1115)
!1117 = !DILocation(line: 310, column: 3, scope: !1115)
!1118 = !DILocation(line: 313, column: 18, scope: !1039)
!1119 = !DILocation(line: 313, column: 26, scope: !1039)
!1120 = !DILocation(line: 313, column: 51, scope: !1039)
!1121 = !DILocation(line: 313, column: 60, scope: !1039)
!1122 = !DILocation(line: 313, column: 68, scope: !1039)
!1123 = !DILocation(line: 313, column: 70, scope: !1039)
!1124 = !DILocation(line: 313, column: 74, scope: !1039)
!1125 = !DILocation(line: 313, column: 2, scope: !1039)
!1126 = !DILocation(line: 315, column: 2, scope: !1039)
!1127 = !DILocation(line: 316, column: 1, scope: !1039)
!1128 = distinct !DISubprogram(name: "dns_check_thread", scope: !448, file: !448, line: 332, type: !654, isLocal: true, isDefinition: true, scopeLine: 333, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !466)
!1129 = !DILocalVariable(name: "thread", arg: 1, scope: !1128, file: !448, line: 332, type: !279)
!1130 = !DILocation(line: 332, column: 29, scope: !1128)
!1131 = !DILocalVariable(name: "status", scope: !1128, file: !448, line: 334, type: !164)
!1132 = !DILocation(line: 334, column: 6, scope: !1128)
!1133 = !DILocation(line: 336, column: 6, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1128, file: !448, line: 336, column: 6)
!1135 = !DILocation(line: 336, column: 14, scope: !1134)
!1136 = !DILocation(line: 336, column: 19, scope: !1134)
!1137 = !DILocation(line: 336, column: 6, scope: !1128)
!1138 = !DILocation(line: 337, column: 13, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1134, file: !448, line: 336, column: 44)
!1140 = !DILocation(line: 337, column: 3, scope: !1139)
!1141 = !DILocation(line: 338, column: 3, scope: !1139)
!1142 = !DILocation(line: 341, column: 24, scope: !1128)
!1143 = !DILocation(line: 341, column: 11, scope: !1128)
!1144 = !DILocation(line: 341, column: 9, scope: !1128)
!1145 = !DILocation(line: 347, column: 10, scope: !1128)
!1146 = !DILocation(line: 347, column: 2, scope: !1128)
!1147 = !DILocation(line: 349, column: 13, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1128, file: !448, line: 347, column: 18)
!1149 = !DILocation(line: 349, column: 3, scope: !1148)
!1150 = !DILocation(line: 350, column: 3, scope: !1148)
!1151 = !DILocation(line: 352, column: 13, scope: !1148)
!1152 = !DILocation(line: 352, column: 3, scope: !1148)
!1153 = !DILocation(line: 353, column: 3, scope: !1148)
!1154 = !DILocation(line: 355, column: 18, scope: !1148)
!1155 = !DILocation(line: 355, column: 3, scope: !1148)
!1156 = !DILocation(line: 356, column: 12, scope: !1148)
!1157 = !DILocation(line: 356, column: 3, scope: !1148)
!1158 = !DILocation(line: 360, column: 20, scope: !1148)
!1159 = !DILocation(line: 360, column: 3, scope: !1148)
!1160 = !DILocation(line: 361, column: 3, scope: !1148)
!1161 = !DILocation(line: 364, column: 2, scope: !1128)
!1162 = !DILocation(line: 365, column: 1, scope: !1128)
!1163 = distinct !DISubprogram(name: "timer_long", scope: !299, file: !299, line: 75, type: !1164, isLocal: true, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !466)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!118, !298}
!1166 = !DILocalVariable(name: "a", arg: 1, scope: !1163, file: !299, line: 75, type: !298)
!1167 = !DILocation(line: 75, column: 22, scope: !1163)
!1168 = !DILocation(line: 77, column: 26, scope: !1163)
!1169 = !DILocation(line: 77, column: 33, scope: !1163)
!1170 = !DILocation(line: 77, column: 63, scope: !1163)
!1171 = !DILocation(line: 77, column: 44, scope: !1163)
!1172 = !DILocation(line: 77, column: 2, scope: !1163)
!1173 = distinct !DISubprogram(name: "dns_send_thread", scope: !448, file: !448, line: 319, type: !654, isLocal: true, isDefinition: true, scopeLine: 320, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !466)
!1174 = !DILocalVariable(name: "thread", arg: 1, scope: !1173, file: !448, line: 319, type: !279)
!1175 = !DILocation(line: 319, column: 28, scope: !1173)
!1176 = !DILocation(line: 321, column: 6, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1173, file: !448, line: 321, column: 6)
!1178 = !DILocation(line: 321, column: 14, scope: !1177)
!1179 = !DILocation(line: 321, column: 19, scope: !1177)
!1180 = !DILocation(line: 321, column: 6, scope: !1173)
!1181 = !DILocation(line: 322, column: 13, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1177, file: !448, line: 321, column: 44)
!1183 = !DILocation(line: 322, column: 3, scope: !1182)
!1184 = !DILocation(line: 323, column: 3, scope: !1182)
!1185 = !DILocation(line: 326, column: 11, scope: !1173)
!1186 = !DILocation(line: 326, column: 2, scope: !1173)
!1187 = !DILocation(line: 328, column: 2, scope: !1173)
!1188 = !DILocation(line: 329, column: 1, scope: !1173)
!1189 = distinct !DISubprogram(name: "dns_final", scope: !448, file: !448, line: 110, type: !1190, isLocal: true, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !466)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!164, !279, !164, !791, null}
!1192 = !DILocalVariable(name: "thread", arg: 1, scope: !1189, file: !448, line: 110, type: !279)
!1193 = !DILocation(line: 110, column: 22, scope: !1189)
!1194 = !DILocalVariable(name: "error", arg: 2, scope: !1189, file: !448, line: 110, type: !164)
!1195 = !DILocation(line: 110, column: 34, scope: !1189)
!1196 = !DILocalVariable(name: "fmt", arg: 3, scope: !1189, file: !448, line: 110, type: !791)
!1197 = !DILocation(line: 110, column: 53, scope: !1189)
!1198 = !DILocalVariable(name: "buf", scope: !1189, file: !448, line: 112, type: !835)
!1199 = !DILocation(line: 112, column: 7, scope: !1189)
!1200 = !DILocalVariable(name: "args", scope: !1189, file: !448, line: 113, type: !840)
!1201 = !DILocation(line: 113, column: 10, scope: !1189)
!1202 = !DILocalVariable(name: "len", scope: !1189, file: !448, line: 114, type: !164)
!1203 = !DILocation(line: 114, column: 6, scope: !1189)
!1204 = !DILocalVariable(name: "checker_was_up", scope: !1189, file: !448, line: 115, type: !294)
!1205 = !DILocation(line: 115, column: 6, scope: !1189)
!1206 = !DILocalVariable(name: "rs_was_alive", scope: !1189, file: !448, line: 116, type: !294)
!1207 = !DILocation(line: 116, column: 6, scope: !1189)
!1208 = !DILocalVariable(name: "checker", scope: !1189, file: !448, line: 118, type: !143)
!1209 = !DILocation(line: 118, column: 13, scope: !1189)
!1210 = !DILocation(line: 118, column: 25, scope: !1189)
!1211 = !DILocation(line: 118, column: 34, scope: !1189)
!1212 = !DILocation(line: 118, column: 23, scope: !1189)
!1213 = !DILocation(line: 123, column: 18, scope: !1189)
!1214 = !DILocation(line: 123, column: 2, scope: !1189)
!1215 = !DILocation(line: 125, column: 6, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1189, file: !448, line: 125, column: 6)
!1217 = !DILocation(line: 125, column: 6, scope: !1189)
!1218 = !DILocation(line: 126, column: 7, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !448, line: 126, column: 7)
!1220 = distinct !DILexicalBlock(scope: !1216, file: !448, line: 125, column: 13)
!1221 = !DILocation(line: 126, column: 16, scope: !1219)
!1222 = !DILocation(line: 126, column: 22, scope: !1219)
!1223 = !DILocation(line: 126, column: 26, scope: !1224)
!1224 = !DILexicalBlockFile(scope: !1219, file: !448, discriminator: 1)
!1225 = !DILocation(line: 126, column: 35, scope: !1224)
!1226 = !DILocation(line: 126, column: 7, scope: !1224)
!1227 = !DILocation(line: 127, column: 8, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !448, line: 127, column: 8)
!1229 = distinct !DILexicalBlock(scope: !1219, file: !448, line: 126, column: 44)
!1230 = !DILocation(line: 127, column: 17, scope: !1228)
!1231 = !DILocation(line: 127, column: 28, scope: !1228)
!1232 = !DILocation(line: 127, column: 37, scope: !1228)
!1233 = !DILocation(line: 127, column: 26, scope: !1228)
!1234 = !DILocation(line: 127, column: 8, scope: !1229)
!1235 = !DILocation(line: 128, column: 5, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1228, file: !448, line: 127, column: 44)
!1237 = !DILocation(line: 128, column: 14, scope: !1236)
!1238 = !DILocation(line: 128, column: 22, scope: !1236)
!1239 = !DILocation(line: 129, column: 22, scope: !1236)
!1240 = !DILocation(line: 129, column: 30, scope: !1236)
!1241 = !DILocation(line: 130, column: 28, scope: !1236)
!1242 = !DILocation(line: 131, column: 8, scope: !1236)
!1243 = !DILocation(line: 131, column: 17, scope: !1236)
!1244 = !DILocation(line: 129, column: 5, scope: !1236)
!1245 = !DILocation(line: 132, column: 5, scope: !1236)
!1246 = !DILocation(line: 134, column: 8, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1229, file: !448, line: 134, column: 8)
!1248 = !DILocation(line: 134, column: 8, scope: !1229)
!1249 = !DILocation(line: 135, column: 4, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1247, file: !448, line: 134, column: 13)
!1251 = !DILocation(line: 136, column: 21, scope: !1250)
!1252 = !DILocation(line: 136, column: 40, scope: !1250)
!1253 = !DILocation(line: 136, column: 45, scope: !1250)
!1254 = !DILocation(line: 136, column: 11, scope: !1250)
!1255 = !DILocation(line: 136, column: 9, scope: !1250)
!1256 = !DILocation(line: 137, column: 4, scope: !1250)
!1257 = !DILocation(line: 138, column: 9, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1250, file: !448, line: 138, column: 9)
!1259 = !DILocation(line: 138, column: 18, scope: !1258)
!1260 = !DILocation(line: 138, column: 26, scope: !1258)
!1261 = !DILocation(line: 138, column: 29, scope: !1262)
!1262 = !DILexicalBlockFile(scope: !1258, file: !448, discriminator: 1)
!1263 = !DILocation(line: 138, column: 38, scope: !1262)
!1264 = !DILocation(line: 138, column: 9, scope: !1262)
!1265 = !DILocation(line: 139, column: 15, scope: !1258)
!1266 = !DILocation(line: 139, column: 21, scope: !1258)
!1267 = !DILocation(line: 139, column: 19, scope: !1258)
!1268 = !DILocation(line: 139, column: 40, scope: !1258)
!1269 = !DILocation(line: 139, column: 38, scope: !1258)
!1270 = !DILocation(line: 139, column: 66, scope: !1258)
!1271 = !DILocation(line: 139, column: 75, scope: !1258)
!1272 = !DILocation(line: 139, column: 6, scope: !1258)
!1273 = !DILocation(line: 140, column: 21, scope: !1250)
!1274 = !DILocation(line: 140, column: 38, scope: !1250)
!1275 = !DILocation(line: 140, column: 5, scope: !1250)
!1276 = !DILocation(line: 141, column: 4, scope: !1250)
!1277 = !DILocation(line: 142, column: 21, scope: !1229)
!1278 = !DILocation(line: 142, column: 30, scope: !1229)
!1279 = !DILocation(line: 142, column: 19, scope: !1229)
!1280 = !DILocation(line: 143, column: 19, scope: !1229)
!1281 = !DILocation(line: 143, column: 28, scope: !1229)
!1282 = !DILocation(line: 143, column: 32, scope: !1229)
!1283 = !DILocation(line: 143, column: 17, scope: !1229)
!1284 = !DILocation(line: 144, column: 34, scope: !1229)
!1285 = !DILocation(line: 144, column: 4, scope: !1229)
!1286 = !DILocation(line: 145, column: 8, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1229, file: !448, line: 145, column: 8)
!1288 = !DILocation(line: 145, column: 23, scope: !1287)
!1289 = !DILocation(line: 145, column: 26, scope: !1290)
!1290 = !DILexicalBlockFile(scope: !1287, file: !448, discriminator: 1)
!1291 = !DILocation(line: 145, column: 35, scope: !1290)
!1292 = !DILocation(line: 145, column: 39, scope: !1290)
!1293 = !DILocation(line: 145, column: 50, scope: !1290)
!1294 = !DILocation(line: 146, column: 9, scope: !1287)
!1295 = !DILocation(line: 146, column: 25, scope: !1287)
!1296 = !DILocation(line: 146, column: 34, scope: !1287)
!1297 = !DILocation(line: 146, column: 38, scope: !1287)
!1298 = !DILocation(line: 146, column: 22, scope: !1287)
!1299 = !DILocation(line: 146, column: 44, scope: !1287)
!1300 = !DILocation(line: 146, column: 48, scope: !1290)
!1301 = !DILocation(line: 146, column: 61, scope: !1290)
!1302 = !DILocation(line: 145, column: 8, scope: !1303)
!1303 = !DILexicalBlockFile(scope: !1229, file: !448, discriminator: 2)
!1304 = !DILocation(line: 147, column: 29, scope: !1287)
!1305 = !DILocation(line: 147, column: 5, scope: !1287)
!1306 = !DILocation(line: 149, column: 3, scope: !1229)
!1307 = !DILocation(line: 150, column: 2, scope: !1220)
!1308 = !DILocation(line: 151, column: 8, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !448, line: 151, column: 7)
!1310 = distinct !DILexicalBlock(scope: !1216, file: !448, line: 150, column: 9)
!1311 = !DILocation(line: 151, column: 17, scope: !1309)
!1312 = !DILocation(line: 151, column: 23, scope: !1309)
!1313 = !DILocation(line: 151, column: 27, scope: !1314)
!1314 = !DILexicalBlockFile(scope: !1309, file: !448, discriminator: 1)
!1315 = !DILocation(line: 151, column: 36, scope: !1314)
!1316 = !DILocation(line: 151, column: 7, scope: !1314)
!1317 = !DILocation(line: 152, column: 21, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1309, file: !448, line: 151, column: 45)
!1319 = !DILocation(line: 152, column: 30, scope: !1318)
!1320 = !DILocation(line: 152, column: 19, scope: !1318)
!1321 = !DILocation(line: 153, column: 19, scope: !1318)
!1322 = !DILocation(line: 153, column: 28, scope: !1318)
!1323 = !DILocation(line: 153, column: 32, scope: !1318)
!1324 = !DILocation(line: 153, column: 17, scope: !1318)
!1325 = !DILocation(line: 154, column: 32, scope: !1318)
!1326 = !DILocation(line: 154, column: 4, scope: !1318)
!1327 = !DILocation(line: 155, column: 9, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1318, file: !448, line: 155, column: 8)
!1329 = !DILocation(line: 155, column: 24, scope: !1328)
!1330 = !DILocation(line: 155, column: 27, scope: !1331)
!1331 = !DILexicalBlockFile(scope: !1328, file: !448, discriminator: 1)
!1332 = !DILocation(line: 155, column: 36, scope: !1331)
!1333 = !DILocation(line: 155, column: 40, scope: !1331)
!1334 = !DILocation(line: 155, column: 51, scope: !1331)
!1335 = !DILocation(line: 156, column: 9, scope: !1328)
!1336 = !DILocation(line: 156, column: 25, scope: !1328)
!1337 = !DILocation(line: 156, column: 34, scope: !1328)
!1338 = !DILocation(line: 156, column: 38, scope: !1328)
!1339 = !DILocation(line: 156, column: 22, scope: !1328)
!1340 = !DILocation(line: 156, column: 44, scope: !1328)
!1341 = !DILocation(line: 156, column: 48, scope: !1331)
!1342 = !DILocation(line: 156, column: 61, scope: !1331)
!1343 = !DILocation(line: 155, column: 8, scope: !1344)
!1344 = !DILexicalBlockFile(scope: !1318, file: !448, discriminator: 2)
!1345 = !DILocation(line: 157, column: 29, scope: !1328)
!1346 = !DILocation(line: 157, column: 5, scope: !1328)
!1347 = !DILocation(line: 159, column: 3, scope: !1318)
!1348 = !DILocation(line: 162, column: 2, scope: !1189)
!1349 = !DILocation(line: 162, column: 11, scope: !1189)
!1350 = !DILocation(line: 162, column: 20, scope: !1189)
!1351 = !DILocation(line: 163, column: 19, scope: !1189)
!1352 = !DILocation(line: 163, column: 27, scope: !1189)
!1353 = !DILocation(line: 163, column: 55, scope: !1189)
!1354 = !DILocation(line: 164, column: 5, scope: !1189)
!1355 = !DILocation(line: 164, column: 14, scope: !1189)
!1356 = !DILocation(line: 163, column: 2, scope: !1189)
!1357 = !DILocation(line: 166, column: 2, scope: !1189)
!1358 = !DILocation(line: 167, column: 1, scope: !1189)
!1359 = distinct !DISubprogram(name: "dns_recv_thread", scope: !448, file: !448, line: 170, type: !654, isLocal: true, isDefinition: true, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !466)
!1360 = !DILocalVariable(name: "thread", arg: 1, scope: !1359, file: !448, line: 170, type: !279)
!1361 = !DILocation(line: 170, column: 28, scope: !1359)
!1362 = !DILocalVariable(name: "timeout", scope: !1359, file: !448, line: 172, type: !118)
!1363 = !DILocation(line: 172, column: 16, scope: !1359)
!1364 = !DILocalVariable(name: "ret", scope: !1359, file: !448, line: 173, type: !444)
!1365 = !DILocation(line: 173, column: 10, scope: !1359)
!1366 = !DILocalVariable(name: "rbuf", scope: !1359, file: !448, line: 174, type: !1367)
!1367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 6144, align: 8, elements: !113)
!1368 = !DILocation(line: 174, column: 7, scope: !1359)
!1369 = !DILocalVariable(name: "s_header", scope: !1359, file: !448, line: 175, type: !432)
!1370 = !DILocation(line: 175, column: 16, scope: !1359)
!1371 = !DILocalVariable(name: "r_header", scope: !1359, file: !448, line: 175, type: !432)
!1372 = !DILocation(line: 175, column: 27, scope: !1359)
!1373 = !DILocalVariable(name: "flags", scope: !1359, file: !448, line: 176, type: !164)
!1374 = !DILocation(line: 176, column: 6, scope: !1359)
!1375 = !DILocalVariable(name: "rcode", scope: !1359, file: !448, line: 176, type: !164)
!1376 = !DILocation(line: 176, column: 13, scope: !1359)
!1377 = !DILocalVariable(name: "checker", scope: !1359, file: !448, line: 178, type: !143)
!1378 = !DILocation(line: 178, column: 13, scope: !1359)
!1379 = !DILocation(line: 178, column: 25, scope: !1359)
!1380 = !DILocation(line: 178, column: 34, scope: !1359)
!1381 = !DILocation(line: 178, column: 23, scope: !1359)
!1382 = !DILocalVariable(name: "dns_check", scope: !1359, file: !448, line: 179, type: !97)
!1383 = !DILocation(line: 179, column: 15, scope: !1359)
!1384 = !DILocation(line: 179, column: 29, scope: !1359)
!1385 = !DILocation(line: 179, column: 39, scope: !1359)
!1386 = !DILocation(line: 179, column: 27, scope: !1359)
!1387 = !DILocation(line: 181, column: 6, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1359, file: !448, line: 181, column: 6)
!1389 = !DILocation(line: 181, column: 14, scope: !1388)
!1390 = !DILocation(line: 181, column: 19, scope: !1388)
!1391 = !DILocation(line: 181, column: 6, scope: !1359)
!1392 = !DILocation(line: 182, column: 13, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1388, file: !448, line: 181, column: 43)
!1394 = !DILocation(line: 182, column: 3, scope: !1393)
!1395 = !DILocation(line: 183, column: 3, scope: !1393)
!1396 = !DILocation(line: 186, column: 23, scope: !1359)
!1397 = !DILocation(line: 186, column: 31, scope: !1359)
!1398 = !DILocation(line: 186, column: 12, scope: !1359)
!1399 = !DILocation(line: 186, column: 40, scope: !1359)
!1400 = !DILocation(line: 186, column: 40, scope: !1401)
!1401 = !DILexicalBlockFile(scope: !1359, file: !448, discriminator: 1)
!1402 = !DILocation(line: 186, column: 38, scope: !1359)
!1403 = !DILocation(line: 186, column: 10, scope: !1359)
!1404 = !DILocation(line: 188, column: 13, scope: !1359)
!1405 = !DILocation(line: 188, column: 21, scope: !1359)
!1406 = !DILocation(line: 188, column: 23, scope: !1359)
!1407 = !DILocation(line: 188, column: 27, scope: !1359)
!1408 = !DILocation(line: 188, column: 8, scope: !1359)
!1409 = !DILocation(line: 188, column: 6, scope: !1359)
!1410 = !DILocation(line: 189, column: 6, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1359, file: !448, line: 189, column: 6)
!1412 = !DILocation(line: 189, column: 10, scope: !1411)
!1413 = !DILocation(line: 189, column: 6, scope: !1359)
!1414 = !DILocation(line: 190, column: 8, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !448, line: 190, column: 6)
!1416 = distinct !DILexicalBlock(scope: !1411, file: !448, line: 189, column: 17)
!1417 = !DILocation(line: 190, column: 7, scope: !1415)
!1418 = !DILocation(line: 190, column: 12, scope: !1415)
!1419 = !DILocation(line: 190, column: 22, scope: !1415)
!1420 = !DILocation(line: 190, column: 27, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !1415, file: !448, discriminator: 1)
!1422 = !DILocation(line: 190, column: 26, scope: !1421)
!1423 = !DILocation(line: 190, column: 31, scope: !1421)
!1424 = !DILocation(line: 190, column: 46, scope: !1421)
!1425 = !DILocation(line: 190, column: 51, scope: !1426)
!1426 = !DILexicalBlockFile(scope: !1415, file: !448, discriminator: 2)
!1427 = !DILocation(line: 190, column: 50, scope: !1426)
!1428 = !DILocation(line: 190, column: 55, scope: !1426)
!1429 = !DILocation(line: 190, column: 6, scope: !1426)
!1430 = !DILocation(line: 191, column: 20, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1415, file: !448, line: 190, column: 65)
!1432 = !DILocation(line: 191, column: 28, scope: !1431)
!1433 = !DILocation(line: 192, column: 6, scope: !1431)
!1434 = !DILocation(line: 192, column: 15, scope: !1431)
!1435 = !DILocation(line: 192, column: 23, scope: !1431)
!1436 = !DILocation(line: 192, column: 25, scope: !1431)
!1437 = !DILocation(line: 192, column: 29, scope: !1431)
!1438 = !DILocation(line: 191, column: 4, scope: !1431)
!1439 = !DILocation(line: 193, column: 4, scope: !1431)
!1440 = !DILocation(line: 195, column: 13, scope: !1416)
!1441 = !DILocation(line: 195, column: 63, scope: !1416)
!1442 = !DILocation(line: 195, column: 62, scope: !1416)
!1443 = !DILocation(line: 195, column: 53, scope: !1444)
!1444 = !DILexicalBlockFile(scope: !1416, file: !448, discriminator: 1)
!1445 = !DILocation(line: 195, column: 3, scope: !1446)
!1446 = !DILexicalBlockFile(scope: !1416, file: !448, discriminator: 2)
!1447 = !DILocation(line: 196, column: 3, scope: !1416)
!1448 = !DILocation(line: 199, column: 6, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1359, file: !448, line: 199, column: 6)
!1450 = !DILocation(line: 199, column: 10, scope: !1449)
!1451 = !DILocation(line: 199, column: 6, scope: !1359)
!1452 = !DILocation(line: 201, column: 19, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1449, file: !448, line: 199, column: 41)
!1454 = !DILocation(line: 201, column: 27, scope: !1453)
!1455 = !DILocation(line: 201, column: 52, scope: !1453)
!1456 = !DILocation(line: 202, column: 5, scope: !1453)
!1457 = !DILocation(line: 202, column: 13, scope: !1453)
!1458 = !DILocation(line: 202, column: 15, scope: !1453)
!1459 = !DILocation(line: 202, column: 19, scope: !1453)
!1460 = !DILocation(line: 201, column: 3, scope: !1453)
!1461 = !DILocation(line: 203, column: 3, scope: !1453)
!1462 = !DILocation(line: 206, column: 30, scope: !1359)
!1463 = !DILocation(line: 206, column: 41, scope: !1359)
!1464 = !DILocation(line: 206, column: 13, scope: !1359)
!1465 = !DILocation(line: 206, column: 11, scope: !1359)
!1466 = !DILocation(line: 207, column: 30, scope: !1359)
!1467 = !DILocation(line: 207, column: 13, scope: !1359)
!1468 = !DILocation(line: 207, column: 11, scope: !1359)
!1469 = !DILocation(line: 209, column: 6, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1359, file: !448, line: 209, column: 6)
!1471 = !DILocation(line: 209, column: 16, scope: !1470)
!1472 = !DILocation(line: 209, column: 22, scope: !1470)
!1473 = !DILocation(line: 209, column: 32, scope: !1470)
!1474 = !DILocation(line: 209, column: 19, scope: !1470)
!1475 = !DILocation(line: 209, column: 6, scope: !1359)
!1476 = !DILocation(line: 212, column: 19, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1470, file: !448, line: 209, column: 36)
!1478 = !DILocation(line: 212, column: 27, scope: !1477)
!1479 = !DILocation(line: 212, column: 52, scope: !1477)
!1480 = !DILocation(line: 213, column: 5, scope: !1477)
!1481 = !DILocation(line: 213, column: 13, scope: !1477)
!1482 = !DILocation(line: 213, column: 15, scope: !1477)
!1483 = !DILocation(line: 213, column: 19, scope: !1477)
!1484 = !DILocation(line: 212, column: 3, scope: !1477)
!1485 = !DILocation(line: 214, column: 3, scope: !1477)
!1486 = !DILocation(line: 217, column: 16, scope: !1359)
!1487 = !DILocation(line: 217, column: 26, scope: !1359)
!1488 = !DILocation(line: 217, column: 10, scope: !1359)
!1489 = !DILocation(line: 217, column: 8, scope: !1359)
!1490 = !DILocation(line: 219, column: 9, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1359, file: !448, line: 219, column: 6)
!1492 = !DILocation(line: 219, column: 15, scope: !1491)
!1493 = !DILocation(line: 219, column: 22, scope: !1491)
!1494 = !DILocation(line: 219, column: 6, scope: !1359)
!1495 = !DILocation(line: 221, column: 19, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1491, file: !448, line: 219, column: 33)
!1497 = !DILocation(line: 221, column: 27, scope: !1496)
!1498 = !DILocation(line: 221, column: 52, scope: !1496)
!1499 = !DILocation(line: 222, column: 5, scope: !1496)
!1500 = !DILocation(line: 222, column: 13, scope: !1496)
!1501 = !DILocation(line: 222, column: 15, scope: !1496)
!1502 = !DILocation(line: 222, column: 19, scope: !1496)
!1503 = !DILocation(line: 221, column: 3, scope: !1496)
!1504 = !DILocation(line: 223, column: 3, scope: !1496)
!1505 = !DILocation(line: 226, column: 17, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1359, file: !448, line: 226, column: 6)
!1507 = !DILocation(line: 226, column: 23, scope: !1506)
!1508 = !DILocation(line: 226, column: 29, scope: !1506)
!1509 = !DILocation(line: 226, column: 13, scope: !1506)
!1510 = !DILocation(line: 226, column: 40, scope: !1506)
!1511 = !DILocation(line: 226, column: 6, scope: !1359)
!1512 = !DILocation(line: 227, column: 13, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1506, file: !448, line: 226, column: 46)
!1514 = !DILocation(line: 227, column: 61, scope: !1513)
!1515 = !DILocation(line: 227, column: 3, scope: !1513)
!1516 = !DILocation(line: 228, column: 3, scope: !1513)
!1517 = !DILocation(line: 232, column: 12, scope: !1359)
!1518 = !DILocation(line: 232, column: 2, scope: !1359)
!1519 = !DILocation(line: 234, column: 2, scope: !1359)
!1520 = !DILocation(line: 235, column: 1, scope: !1359)
!1521 = distinct !DISubprogram(name: "dns_type_lookup", scope: !448, file: !448, line: 69, type: !1522, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !466)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!103, !791}
!1524 = !DILocalVariable(name: "label", arg: 1, scope: !1521, file: !448, line: 69, type: !791)
!1525 = !DILocation(line: 69, column: 29, scope: !1521)
!1526 = !DILocalVariable(name: "t", scope: !1521, file: !448, line: 71, type: !796)
!1527 = !DILocation(line: 71, column: 20, scope: !1521)
!1528 = !DILocation(line: 73, column: 9, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1521, file: !448, line: 73, column: 2)
!1530 = !DILocation(line: 73, column: 7, scope: !1529)
!1531 = !DILocation(line: 73, column: 21, scope: !1532)
!1532 = !DILexicalBlockFile(scope: !1533, file: !448, discriminator: 1)
!1533 = distinct !DILexicalBlock(scope: !1529, file: !448, line: 73, column: 2)
!1534 = !DILocation(line: 73, column: 24, scope: !1532)
!1535 = !DILocation(line: 73, column: 2, scope: !1532)
!1536 = !DILocation(line: 74, column: 19, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !448, line: 74, column: 7)
!1538 = distinct !DILexicalBlock(scope: !1533, file: !448, line: 73, column: 35)
!1539 = !DILocation(line: 74, column: 26, scope: !1537)
!1540 = !DILocation(line: 74, column: 29, scope: !1537)
!1541 = !DILocation(line: 74, column: 8, scope: !1537)
!1542 = !DILocation(line: 74, column: 7, scope: !1538)
!1543 = !DILocation(line: 75, column: 11, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1537, file: !448, line: 74, column: 37)
!1545 = !DILocation(line: 75, column: 14, scope: !1544)
!1546 = !DILocation(line: 75, column: 4, scope: !1544)
!1547 = !DILocation(line: 77, column: 2, scope: !1538)
!1548 = !DILocation(line: 73, column: 31, scope: !1549)
!1549 = !DILexicalBlockFile(scope: !1533, file: !448, discriminator: 2)
!1550 = !DILocation(line: 73, column: 2, scope: !1549)
!1551 = distinct !{!1551, !1552}
!1552 = !DILocation(line: 73, column: 2, scope: !1521)
!1553 = !DILocation(line: 78, column: 2, scope: !1521)
!1554 = !DILocation(line: 79, column: 1, scope: !1521)
