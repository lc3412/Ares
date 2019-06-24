; ModuleID = './[inter]keepalived--check--check_smtp.o.i'
source_filename = "./[inter]keepalived--check--check_smtp.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._list = type { %struct._element*, %struct._element*, i32, void (i8*)*, void (%struct._IO_FILE*, i8*)* }
%struct._element = type { %struct._element*, %struct._element*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._conn_opts = type { %struct.sockaddr_storage, %struct.sockaddr_storage, [16 x i8], i32, i32 }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }
%struct._data = type { i8*, i8, i8*, i8, i8*, i8*, %struct.sockaddr_storage, i8*, i64, %struct._list*, i32, i8, i8, i32, i8*, %struct._interface*, i32, i32, i32, i32, %struct.lvs_syncd_config, i8, %struct.sockaddr_in, %struct.sockaddr_in6, i32, %struct.timeval, i32, i32, i32, i32, i32, i32, i8, i8, i32, [29 x i8], [29 x i8], i8, [32 x i8], [32 x i8], [32 x i8], i8, i8, i8, i8, i8, i8, i32, i64, i8, i8, i8, i32, i64, %struct._notify_fifo, %struct._notify_fifo, %struct._notify_fifo, i32, i8, i32, i8, i32, i8, i32, i8, i8, i8, i32, i64, i32 }
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
%struct.timeval = type { i64, i64 }
%struct._notify_fifo = type { i8*, i32, i8, %struct._notify_script* }
%struct._smtp_checker = type { i8*, i32, %struct._conn_opts*, [512 x i8], i64, i32 (%struct._thread*)*, i32, %struct._list* }
%struct._checker = type { void (i8*)*, void (%struct._IO_FILE*, i8*)*, i32 (%struct._thread*)*, i1 (i8*, i8*)*, %struct._virtual_server*, %struct._real_server*, i8*, i8, i8, i8, %struct._conn_opts*, i32, i64, i64, i32, i64, i32, i32, i64 }
%struct._virtual_server = type { i8*, %struct._virtual_server_group*, %struct.sockaddr_storage, i32, %struct._real_server*, i16, i16, i8, i32, [16 x i8], i32, i32, [16 x i8], i32, i32, i8*, i32, %struct._list*, i32, i8, i8, i8, i64, i64, i32, i64, %struct._notify_script*, %struct._notify_script*, i32, i32, i32, i8, i8 }
%struct._virtual_server_group = type { i8*, %struct._list*, %struct._list* }
%struct._real_server = type { %struct.sockaddr_storage, i32, i32, i32, i32, i32, i32, i32, %struct._notify_script*, %struct._notify_script*, i32, i64, i64, i32, i64, i32, i8, i32, i8, i8, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [11 x i8] c"SMTP_CHECK\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"helo_name\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@garp_delay = common global %struct._list* null, align 8
@default_co = internal global %struct._conn_opts* null, align 8
@checkers_queue = external global %struct._list*, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"   Keepalive method = SMTP_CHECK\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"   helo = %s\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"   Host list\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Remote SMTP server %s succeed on service.\00", align 1
@global_data = external global %struct._data*, align 8
@.str.7 = private unnamed_addr constant [31 x i8] c"=> CHECK succeed on service <=\00", align 1
@.str.8 = private unnamed_addr constant [61 x i8] c"SMTP_CHECK connection failed to create socket. Rescheduling.\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"SMTP_CHECK socket bind failed. Rescheduling.\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"Error connecting to server %s\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Connection timeout to server %s\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"Unknown connection error to server %s\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"SMTP_CHECK \00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"SMTP_CHECK Unknown error\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"=> CHECK failed on service : %s <=\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"=> CHECK failed on service <=\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"Bad greeting banner from server %s\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"HELO %s\0D\0A\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"Bad HELO response from server %s\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"QUIT\0D\0A\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"Unknown smtp engine state encountered\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"Read timeout from server %s\00", align 1
@.str.23 = private unnamed_addr constant [90 x i8] c"SMTP_CHECK Buffer overflow reading from server %s. Increase SMTP_BUFF_MAX in smtp_check.h\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"Read failure from server %s\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"Write timeout to server %s\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"Write failure to server %s\00", align 1
@sav_co = internal global %struct._conn_opts* null, align 8
@.str.27 = private unnamed_addr constant [76 x i8] c"The SMTP_CHECK host block is deprecated. Please define additional checkers.\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"smtpchecker.keepalived.org\00", align 1

; Function Attrs: nounwind uwtable
define void @install_smtp_check_keyword() #0 !dbg !446 {
  call void @install_keyword(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), void (%struct._vector*)* @smtp_check_handler), !dbg !450
  call void @install_sublevel(), !dbg !451
  call void @install_keyword(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), void (%struct._vector*)* @smtp_helo_name_handler), !dbg !452
  call void @install_checker_common_keywords(i1 zeroext true), !dbg !453
  call void @install_keyword(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), void (%struct._vector*)* @smtp_host_handler), !dbg !454
  call void @install_sublevel(), !dbg !455
  call void @install_checker_common_keywords(i1 zeroext true), !dbg !456
  call void @install_sublevel_end_handler(void ()* @smtp_host_end_handler), !dbg !457
  call void @install_sublevel_end(), !dbg !458
  call void @install_sublevel_end_handler(void ()* @smtp_check_end_handler), !dbg !459
  call void @install_sublevel_end(), !dbg !460
  ret void, !dbg !461
}

declare void @install_keyword(i8*, void (%struct._vector*)*) #1

; Function Attrs: nounwind uwtable
define internal void @smtp_check_handler(%struct._vector*) #0 !dbg !462 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._smtp_checker*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !474, metadata !475), !dbg !476
  call void @llvm.dbg.declare(metadata %struct._smtp_checker** %3, metadata !477, metadata !475), !dbg !478
  %4 = call i8* @zalloc(i64 568), !dbg !479
  %5 = bitcast i8* %4 to %struct._smtp_checker*, !dbg !480
  store %struct._smtp_checker* %5, %struct._smtp_checker** %3, align 8, !dbg !478
  %6 = call i8* @zalloc(i64 280), !dbg !481
  %7 = bitcast i8* %6 to %struct._conn_opts*, !dbg !482
  store %struct._conn_opts* %7, %struct._conn_opts** @default_co, align 8, !dbg !483
  %8 = load %struct._smtp_checker*, %struct._smtp_checker** %3, align 8, !dbg !484
  %9 = bitcast %struct._smtp_checker* %8 to i8*, !dbg !484
  %10 = load %struct._conn_opts*, %struct._conn_opts** @default_co, align 8, !dbg !485
  %11 = call %struct._checker* @queue_checker(void (i8*)* @free_smtp_check, void (%struct._IO_FILE*, i8*)* @dump_smtp_check, i32 (%struct._thread*)* @smtp_connect_thread, i1 (i8*, i8*)* @smtp_check_compare, i8* %9, %struct._conn_opts* %10), !dbg !486
  %12 = call i8* @zalloc(i64 280), !dbg !487
  %13 = bitcast i8* %12 to %struct._conn_opts*, !dbg !488
  %14 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !489
  %15 = getelementptr inbounds %struct._list, %struct._list* %14, i32 0, i32 1, !dbg !490
  %16 = load %struct._element*, %struct._element** %15, align 8, !dbg !490
  %17 = getelementptr inbounds %struct._element, %struct._element* %16, i32 0, i32 2, !dbg !491
  %18 = load i8*, i8** %17, align 8, !dbg !491
  %19 = bitcast i8* %18 to %struct._checker*, !dbg !492
  %20 = getelementptr inbounds %struct._checker, %struct._checker* %19, i32 0, i32 10, !dbg !493
  store %struct._conn_opts* %13, %struct._conn_opts** %20, align 8, !dbg !494
  %21 = call %struct._list* @alloc_list(void (i8*)* @smtp_free_host, void (%struct._IO_FILE*, i8*)* @dump_connection_opts), !dbg !495
  %22 = load %struct._smtp_checker*, %struct._smtp_checker** %3, align 8, !dbg !496
  %23 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %22, i32 0, i32 7, !dbg !497
  store %struct._list* %21, %struct._list** %23, align 8, !dbg !498
  ret void, !dbg !499
}

declare void @install_sublevel() #1

; Function Attrs: nounwind uwtable
define internal void @smtp_helo_name_handler(%struct._vector*) #0 !dbg !500 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._smtp_checker*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !501, metadata !475), !dbg !502
  call void @llvm.dbg.declare(metadata %struct._smtp_checker** %3, metadata !503, metadata !475), !dbg !504
  %4 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !505
  %5 = getelementptr inbounds %struct._list, %struct._list* %4, i32 0, i32 1, !dbg !506
  %6 = load %struct._element*, %struct._element** %5, align 8, !dbg !506
  %7 = getelementptr inbounds %struct._element, %struct._element* %6, i32 0, i32 2, !dbg !507
  %8 = load i8*, i8** %7, align 8, !dbg !507
  %9 = bitcast i8* %8 to %struct._checker*, !dbg !508
  %10 = getelementptr inbounds %struct._checker, %struct._checker* %9, i32 0, i32 6, !dbg !509
  %11 = load i8*, i8** %10, align 8, !dbg !509
  %12 = bitcast i8* %11 to %struct._smtp_checker*, !dbg !510
  store %struct._smtp_checker* %12, %struct._smtp_checker** %3, align 8, !dbg !504
  %13 = load %struct._smtp_checker*, %struct._smtp_checker** %3, align 8, !dbg !511
  %14 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %13, i32 0, i32 0, !dbg !513
  %15 = load i8*, i8** %14, align 8, !dbg !513
  %16 = icmp ne i8* %15, null, !dbg !511
  br i1 %16, label %17, label %23, !dbg !514

; <label>:17:                                     ; preds = %1
  %18 = load %struct._smtp_checker*, %struct._smtp_checker** %3, align 8, !dbg !515
  %19 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %18, i32 0, i32 0, !dbg !516
  %20 = load i8*, i8** %19, align 8, !dbg !516
  call void @free(i8* %20) #5, !dbg !517
  %21 = load %struct._smtp_checker*, %struct._smtp_checker** %3, align 8, !dbg !518
  %22 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %21, i32 0, i32 0, !dbg !519
  store i8* null, i8** %22, align 8, !dbg !520
  br label %23, !dbg !521

; <label>:23:                                     ; preds = %17, %1
  %24 = load %struct._vector*, %struct._vector** %2, align 8, !dbg !522
  %25 = call i8* @set_value(%struct._vector* %24), !dbg !523
  %26 = load %struct._smtp_checker*, %struct._smtp_checker** %3, align 8, !dbg !524
  %27 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %26, i32 0, i32 0, !dbg !525
  store i8* %25, i8** %27, align 8, !dbg !526
  ret void, !dbg !527
}

declare void @install_checker_common_keywords(i1 zeroext) #1

; Function Attrs: nounwind uwtable
define internal void @smtp_host_handler(%struct._vector*) #0 !dbg !528 {
  %2 = alloca %struct._vector*, align 8
  %3 = alloca %struct._checker*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !529, metadata !475), !dbg !530
  call void @llvm.dbg.declare(metadata %struct._checker** %3, metadata !531, metadata !475), !dbg !532
  %4 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !533
  %5 = getelementptr inbounds %struct._list, %struct._list* %4, i32 0, i32 1, !dbg !534
  %6 = load %struct._element*, %struct._element** %5, align 8, !dbg !534
  %7 = getelementptr inbounds %struct._element, %struct._element* %6, i32 0, i32 2, !dbg !535
  %8 = load i8*, i8** %7, align 8, !dbg !535
  %9 = bitcast i8* %8 to %struct._checker*, !dbg !536
  store %struct._checker* %9, %struct._checker** %3, align 8, !dbg !532
  %10 = load %struct._checker*, %struct._checker** %3, align 8, !dbg !537
  %11 = getelementptr inbounds %struct._checker, %struct._checker* %10, i32 0, i32 10, !dbg !538
  %12 = load %struct._conn_opts*, %struct._conn_opts** %11, align 8, !dbg !538
  store %struct._conn_opts* %12, %struct._conn_opts** @sav_co, align 8, !dbg !539
  %13 = call i8* @zalloc(i64 280), !dbg !540
  %14 = bitcast i8* %13 to %struct._conn_opts*, !dbg !541
  %15 = load %struct._checker*, %struct._checker** %3, align 8, !dbg !542
  %16 = getelementptr inbounds %struct._checker, %struct._checker* %15, i32 0, i32 10, !dbg !543
  store %struct._conn_opts* %14, %struct._conn_opts** %16, align 8, !dbg !544
  %17 = load %struct._checker*, %struct._checker** %3, align 8, !dbg !545
  %18 = getelementptr inbounds %struct._checker, %struct._checker* %17, i32 0, i32 10, !dbg !546
  %19 = load %struct._conn_opts*, %struct._conn_opts** %18, align 8, !dbg !546
  %20 = bitcast %struct._conn_opts* %19 to i8*, !dbg !547
  %21 = load %struct._conn_opts*, %struct._conn_opts** @default_co, align 8, !dbg !548
  %22 = bitcast %struct._conn_opts* %21 to i8*, !dbg !547
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %20, i8* %22, i64 280, i32 8, i1 false), !dbg !547
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.27, i32 0, i32 0)), !dbg !549
  ret void, !dbg !550
}

declare void @install_sublevel_end_handler(void ()*) #1

; Function Attrs: nounwind uwtable
define internal void @smtp_host_end_handler() #0 !dbg !551 {
  %1 = alloca %struct._checker*, align 8
  %2 = alloca %struct._smtp_checker*, align 8
  call void @llvm.dbg.declare(metadata %struct._checker** %1, metadata !552, metadata !475), !dbg !553
  %3 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !554
  %4 = getelementptr inbounds %struct._list, %struct._list* %3, i32 0, i32 1, !dbg !555
  %5 = load %struct._element*, %struct._element** %4, align 8, !dbg !555
  %6 = getelementptr inbounds %struct._element, %struct._element* %5, i32 0, i32 2, !dbg !556
  %7 = load i8*, i8** %6, align 8, !dbg !556
  %8 = bitcast i8* %7 to %struct._checker*, !dbg !557
  store %struct._checker* %8, %struct._checker** %1, align 8, !dbg !553
  call void @llvm.dbg.declare(metadata %struct._smtp_checker** %2, metadata !558, metadata !475), !dbg !559
  %9 = load %struct._checker*, %struct._checker** %1, align 8, !dbg !560
  %10 = getelementptr inbounds %struct._checker, %struct._checker* %9, i32 0, i32 6, !dbg !561
  %11 = load i8*, i8** %10, align 8, !dbg !561
  %12 = bitcast i8* %11 to %struct._smtp_checker*, !dbg !562
  store %struct._smtp_checker* %12, %struct._smtp_checker** %2, align 8, !dbg !559
  %13 = load %struct._checker*, %struct._checker** %1, align 8, !dbg !563
  %14 = getelementptr inbounds %struct._checker, %struct._checker* %13, i32 0, i32 10, !dbg !565
  %15 = load %struct._conn_opts*, %struct._conn_opts** %14, align 8, !dbg !565
  %16 = call zeroext i1 @check_conn_opts(%struct._conn_opts* %15), !dbg !566
  br i1 %16, label %24, label %17, !dbg !567

; <label>:17:                                     ; preds = %0
  %18 = load %struct._checker*, %struct._checker** %1, align 8, !dbg !568
  %19 = getelementptr inbounds %struct._checker, %struct._checker* %18, i32 0, i32 10, !dbg !569
  %20 = load %struct._conn_opts*, %struct._conn_opts** %19, align 8, !dbg !569
  %21 = bitcast %struct._conn_opts* %20 to i8*, !dbg !568
  call void @free(i8* %21) #5, !dbg !570
  %22 = load %struct._checker*, %struct._checker** %1, align 8, !dbg !571
  %23 = getelementptr inbounds %struct._checker, %struct._checker* %22, i32 0, i32 10, !dbg !572
  store %struct._conn_opts* null, %struct._conn_opts** %23, align 8, !dbg !573
  br label %32, !dbg !574

; <label>:24:                                     ; preds = %0
  %25 = load %struct._smtp_checker*, %struct._smtp_checker** %2, align 8, !dbg !575
  %26 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %25, i32 0, i32 7, !dbg !576
  %27 = load %struct._list*, %struct._list** %26, align 8, !dbg !576
  %28 = load %struct._checker*, %struct._checker** %1, align 8, !dbg !577
  %29 = getelementptr inbounds %struct._checker, %struct._checker* %28, i32 0, i32 10, !dbg !578
  %30 = load %struct._conn_opts*, %struct._conn_opts** %29, align 8, !dbg !578
  %31 = bitcast %struct._conn_opts* %30 to i8*, !dbg !577
  call void @list_add(%struct._list* %27, i8* %31), !dbg !579
  br label %32

; <label>:32:                                     ; preds = %24, %17
  %33 = load %struct._conn_opts*, %struct._conn_opts** @sav_co, align 8, !dbg !580
  %34 = load %struct._checker*, %struct._checker** %1, align 8, !dbg !581
  %35 = getelementptr inbounds %struct._checker, %struct._checker* %34, i32 0, i32 10, !dbg !582
  store %struct._conn_opts* %33, %struct._conn_opts** %35, align 8, !dbg !583
  ret void, !dbg !584
}

declare void @install_sublevel_end() #1

; Function Attrs: nounwind uwtable
define internal void @smtp_check_end_handler() #0 !dbg !585 {
  %1 = alloca %struct._smtp_checker*, align 8
  %2 = alloca %struct._conn_opts*, align 8
  %3 = alloca i16, align 2
  call void @llvm.dbg.declare(metadata %struct._smtp_checker** %1, metadata !586, metadata !475), !dbg !587
  %4 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !588
  %5 = getelementptr inbounds %struct._list, %struct._list* %4, i32 0, i32 1, !dbg !589
  %6 = load %struct._element*, %struct._element** %5, align 8, !dbg !589
  %7 = getelementptr inbounds %struct._element, %struct._element* %6, i32 0, i32 2, !dbg !590
  %8 = load i8*, i8** %7, align 8, !dbg !590
  %9 = bitcast i8* %8 to %struct._checker*, !dbg !591
  %10 = getelementptr inbounds %struct._checker, %struct._checker* %9, i32 0, i32 6, !dbg !592
  %11 = load i8*, i8** %10, align 8, !dbg !592
  %12 = bitcast i8* %11 to %struct._smtp_checker*, !dbg !593
  store %struct._smtp_checker* %12, %struct._smtp_checker** %1, align 8, !dbg !587
  call void @llvm.dbg.declare(metadata %struct._conn_opts** %2, metadata !594, metadata !475), !dbg !595
  %13 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !596
  %14 = getelementptr inbounds %struct._list, %struct._list* %13, i32 0, i32 1, !dbg !597
  %15 = load %struct._element*, %struct._element** %14, align 8, !dbg !597
  %16 = getelementptr inbounds %struct._element, %struct._element* %15, i32 0, i32 2, !dbg !598
  %17 = load i8*, i8** %16, align 8, !dbg !598
  %18 = bitcast i8* %17 to %struct._checker*, !dbg !599
  %19 = getelementptr inbounds %struct._checker, %struct._checker* %18, i32 0, i32 10, !dbg !600
  %20 = load %struct._conn_opts*, %struct._conn_opts** %19, align 8, !dbg !600
  store %struct._conn_opts* %20, %struct._conn_opts** %2, align 8, !dbg !595
  %21 = load %struct._smtp_checker*, %struct._smtp_checker** %1, align 8, !dbg !601
  %22 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %21, i32 0, i32 0, !dbg !603
  %23 = load i8*, i8** %22, align 8, !dbg !603
  %24 = icmp ne i8* %23, null, !dbg !601
  br i1 %24, label %33, label %25, !dbg !604

; <label>:25:                                     ; preds = %0
  %26 = call i8* @zalloc(i64 27), !dbg !605
  %27 = load %struct._smtp_checker*, %struct._smtp_checker** %1, align 8, !dbg !607
  %28 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %27, i32 0, i32 0, !dbg !608
  store i8* %26, i8** %28, align 8, !dbg !609
  %29 = load %struct._smtp_checker*, %struct._smtp_checker** %1, align 8, !dbg !610
  %30 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %29, i32 0, i32 0, !dbg !611
  %31 = load i8*, i8** %30, align 8, !dbg !611
  %32 = call i8* @strcpy(i8* %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i32 0, i32 0)) #5, !dbg !612
  br label %33, !dbg !613

; <label>:33:                                     ; preds = %25, %0
  %34 = load %struct._conn_opts*, %struct._conn_opts** %2, align 8, !dbg !614
  %35 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %34, i32 0, i32 0, !dbg !616
  %36 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %35, i32 0, i32 0, !dbg !617
  %37 = load i16, i16* %36, align 8, !dbg !617
  %38 = zext i16 %37 to i32, !dbg !614
  %39 = icmp ne i32 %38, 0, !dbg !618
  br i1 %39, label %94, label %40, !dbg !619

; <label>:40:                                     ; preds = %33
  %41 = load %struct._conn_opts*, %struct._conn_opts** %2, align 8, !dbg !620
  %42 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %41, i32 0, i32 0, !dbg !621
  %43 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %42, i32 0, i32 0, !dbg !622
  %44 = load i16, i16* %43, align 8, !dbg !622
  %45 = zext i16 %44 to i32, !dbg !620
  %46 = icmp eq i32 %45, 0, !dbg !623
  br i1 %46, label %47, label %55, !dbg !624

; <label>:47:                                     ; preds = %40
  %48 = load %struct._conn_opts*, %struct._conn_opts** %2, align 8, !dbg !625
  %49 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %48, i32 0, i32 0, !dbg !627
  %50 = bitcast %struct.sockaddr_storage* %49 to %struct.sockaddr_in*, !dbg !628
  %51 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %50, i32 0, i32 1, !dbg !628
  %52 = load i16, i16* %51, align 2, !dbg !628
  %53 = zext i16 %52 to i32, !dbg !629
  %54 = icmp ne i32 %53, 0, !dbg !629
  br i1 %54, label %94, label %55, !dbg !630

; <label>:55:                                     ; preds = %47, %40
  %56 = load %struct._conn_opts*, %struct._conn_opts** %2, align 8, !dbg !631
  %57 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %56, i32 0, i32 1, !dbg !632
  %58 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %57, i32 0, i32 0, !dbg !633
  %59 = load i16, i16* %58, align 8, !dbg !633
  %60 = zext i16 %59 to i32, !dbg !631
  %61 = icmp ne i32 %60, 0, !dbg !634
  br i1 %61, label %94, label %62, !dbg !635

; <label>:62:                                     ; preds = %55
  %63 = load %struct._conn_opts*, %struct._conn_opts** %2, align 8, !dbg !636
  %64 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %63, i32 0, i32 1, !dbg !637
  %65 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %64, i32 0, i32 0, !dbg !638
  %66 = load i16, i16* %65, align 8, !dbg !638
  %67 = zext i16 %66 to i32, !dbg !636
  %68 = icmp eq i32 %67, 0, !dbg !639
  br i1 %68, label %69, label %77, !dbg !640

; <label>:69:                                     ; preds = %62
  %70 = load %struct._conn_opts*, %struct._conn_opts** %2, align 8, !dbg !641
  %71 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %70, i32 0, i32 1, !dbg !642
  %72 = bitcast %struct.sockaddr_storage* %71 to %struct.sockaddr_in*, !dbg !643
  %73 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %72, i32 0, i32 1, !dbg !643
  %74 = load i16, i16* %73, align 2, !dbg !643
  %75 = zext i16 %74 to i32, !dbg !644
  %76 = icmp ne i32 %75, 0, !dbg !644
  br i1 %76, label %94, label %77, !dbg !645

; <label>:77:                                     ; preds = %69, %62
  %78 = load %struct._conn_opts*, %struct._conn_opts** %2, align 8, !dbg !646
  %79 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %78, i32 0, i32 2, !dbg !647
  %80 = getelementptr inbounds [16 x i8], [16 x i8]* %79, i64 0, i64 0, !dbg !646
  %81 = load i8, i8* %80, align 8, !dbg !646
  %82 = sext i8 %81 to i32, !dbg !646
  %83 = icmp ne i32 %82, 0, !dbg !646
  br i1 %83, label %94, label %84, !dbg !648

; <label>:84:                                     ; preds = %77
  %85 = load %struct._conn_opts*, %struct._conn_opts** %2, align 8, !dbg !649
  %86 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %85, i32 0, i32 4, !dbg !650
  %87 = load i32, i32* %86, align 4, !dbg !650
  %88 = icmp ne i32 %87, 0, !dbg !649
  br i1 %88, label %94, label %89, !dbg !651

; <label>:89:                                     ; preds = %84
  %90 = load %struct._conn_opts*, %struct._conn_opts** %2, align 8, !dbg !652
  %91 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %90, i32 0, i32 3, !dbg !653
  %92 = load i32, i32* %91, align 8, !dbg !653
  %93 = icmp ne i32 %92, 0, !dbg !652
  br i1 %93, label %94, label %152, !dbg !654

; <label>:94:                                     ; preds = %89, %84, %77, %69, %55, %47, %33
  %95 = load %struct._conn_opts*, %struct._conn_opts** %2, align 8, !dbg !656
  %96 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %95, i32 0, i32 0, !dbg !659
  %97 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %96, i32 0, i32 0, !dbg !660
  %98 = load i16, i16* %97, align 8, !dbg !660
  %99 = zext i16 %98 to i32, !dbg !656
  %100 = icmp eq i32 %99, 0, !dbg !661
  br i1 %100, label %101, label %131, !dbg !662

; <label>:101:                                    ; preds = %94
  %102 = load %struct._conn_opts*, %struct._conn_opts** %2, align 8, !dbg !663
  %103 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %102, i32 0, i32 0, !dbg !666
  %104 = bitcast %struct.sockaddr_storage* %103 to %struct.sockaddr_in*, !dbg !667
  %105 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %104, i32 0, i32 1, !dbg !667
  %106 = load i16, i16* %105, align 2, !dbg !667
  %107 = icmp ne i16 %106, 0, !dbg !668
  br i1 %107, label %108, label %123, !dbg !669

; <label>:108:                                    ; preds = %101
  call void @llvm.dbg.declare(metadata i16* %3, metadata !670, metadata !475), !dbg !672
  %109 = load %struct._conn_opts*, %struct._conn_opts** %2, align 8, !dbg !673
  %110 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %109, i32 0, i32 0, !dbg !674
  %111 = bitcast %struct.sockaddr_storage* %110 to %struct.sockaddr_in*, !dbg !675
  %112 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %111, i32 0, i32 1, !dbg !675
  %113 = load i16, i16* %112, align 2, !dbg !675
  store i16 %113, i16* %3, align 2, !dbg !672
  %114 = load %struct._conn_opts*, %struct._conn_opts** %2, align 8, !dbg !676
  %115 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %114, i32 0, i32 0, !dbg !677
  %116 = load %struct._conn_opts*, %struct._conn_opts** @default_co, align 8, !dbg !678
  %117 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %116, i32 0, i32 0, !dbg !679
  %118 = bitcast %struct.sockaddr_storage* %115 to i8*, !dbg !679
  %119 = bitcast %struct.sockaddr_storage* %117 to i8*, !dbg !679
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %118, i8* %119, i64 128, i32 8, i1 false), !dbg !679
  %120 = load %struct._conn_opts*, %struct._conn_opts** %2, align 8, !dbg !680
  %121 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %120, i32 0, i32 0, !dbg !681
  %122 = load i16, i16* %3, align 2, !dbg !682
  call void @checker_set_dst_port(%struct.sockaddr_storage* %121, i16 zeroext %122), !dbg !683
  br label %130, !dbg !684

; <label>:123:                                    ; preds = %101
  %124 = load %struct._conn_opts*, %struct._conn_opts** %2, align 8, !dbg !685
  %125 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %124, i32 0, i32 0, !dbg !686
  %126 = load %struct._conn_opts*, %struct._conn_opts** @default_co, align 8, !dbg !687
  %127 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %126, i32 0, i32 0, !dbg !688
  %128 = bitcast %struct.sockaddr_storage* %125 to i8*, !dbg !688
  %129 = bitcast %struct.sockaddr_storage* %127 to i8*, !dbg !688
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %128, i8* %129, i64 128, i32 8, i1 false), !dbg !688
  br label %130

; <label>:130:                                    ; preds = %123, %108
  br label %131, !dbg !689

; <label>:131:                                    ; preds = %130, %94
  %132 = load %struct._conn_opts*, %struct._conn_opts** %2, align 8, !dbg !690
  %133 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %132, i32 0, i32 3, !dbg !692
  %134 = load i32, i32* %133, align 8, !dbg !692
  %135 = icmp ne i32 %134, 0, !dbg !690
  br i1 %135, label %139, label %136, !dbg !693

; <label>:136:                                    ; preds = %131
  %137 = load %struct._conn_opts*, %struct._conn_opts** %2, align 8, !dbg !694
  %138 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %137, i32 0, i32 3, !dbg !695
  store i32 5000000, i32* %138, align 8, !dbg !696
  br label %139, !dbg !694

; <label>:139:                                    ; preds = %136, %131
  %140 = load %struct._conn_opts*, %struct._conn_opts** %2, align 8, !dbg !697
  %141 = call zeroext i1 @check_conn_opts(%struct._conn_opts* %140), !dbg !699
  br i1 %141, label %145, label %142, !dbg !700

; <label>:142:                                    ; preds = %139
  call void @dequeue_new_checker(), !dbg !701
  %143 = load %struct._conn_opts*, %struct._conn_opts** %2, align 8, !dbg !703
  %144 = bitcast %struct._conn_opts* %143 to i8*, !dbg !703
  call void @free(i8* %144) #5, !dbg !704
  store %struct._conn_opts* null, %struct._conn_opts** %2, align 8, !dbg !705
  br label %151, !dbg !706

; <label>:145:                                    ; preds = %139
  %146 = load %struct._smtp_checker*, %struct._smtp_checker** %1, align 8, !dbg !707
  %147 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %146, i32 0, i32 7, !dbg !708
  %148 = load %struct._list*, %struct._list** %147, align 8, !dbg !708
  %149 = load %struct._conn_opts*, %struct._conn_opts** %2, align 8, !dbg !709
  %150 = bitcast %struct._conn_opts* %149 to i8*, !dbg !709
  call void @list_add(%struct._list* %148, i8* %150), !dbg !710
  br label %151

; <label>:151:                                    ; preds = %145, %142
  br label %155, !dbg !711

; <label>:152:                                    ; preds = %89
  %153 = load %struct._conn_opts*, %struct._conn_opts** %2, align 8, !dbg !712
  %154 = bitcast %struct._conn_opts* %153 to i8*, !dbg !712
  call void @free(i8* %154) #5, !dbg !713
  store %struct._conn_opts* null, %struct._conn_opts** %2, align 8, !dbg !714
  br label %155

; <label>:155:                                    ; preds = %152, %151
  %156 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !715
  %157 = getelementptr inbounds %struct._list, %struct._list* %156, i32 0, i32 1, !dbg !716
  %158 = load %struct._element*, %struct._element** %157, align 8, !dbg !716
  %159 = getelementptr inbounds %struct._element, %struct._element* %158, i32 0, i32 2, !dbg !717
  %160 = load i8*, i8** %159, align 8, !dbg !717
  %161 = bitcast i8* %160 to %struct._checker*, !dbg !718
  %162 = getelementptr inbounds %struct._checker, %struct._checker* %161, i32 0, i32 10, !dbg !719
  store %struct._conn_opts* null, %struct._conn_opts** %162, align 8, !dbg !720
  %163 = load %struct._smtp_checker*, %struct._smtp_checker** %1, align 8, !dbg !721
  %164 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %163, i32 0, i32 7, !dbg !723
  %165 = load %struct._list*, %struct._list** %164, align 8, !dbg !723
  %166 = icmp eq %struct._list* %165, null, !dbg !724
  br i1 %166, label %181, label %167, !dbg !725

; <label>:167:                                    ; preds = %155
  %168 = load %struct._smtp_checker*, %struct._smtp_checker** %1, align 8, !dbg !726
  %169 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %168, i32 0, i32 7, !dbg !728
  %170 = load %struct._list*, %struct._list** %169, align 8, !dbg !728
  %171 = getelementptr inbounds %struct._list, %struct._list* %170, i32 0, i32 0, !dbg !729
  %172 = load %struct._element*, %struct._element** %171, align 8, !dbg !729
  %173 = icmp eq %struct._element* %172, null, !dbg !730
  br i1 %173, label %174, label %187, !dbg !731

; <label>:174:                                    ; preds = %167
  %175 = load %struct._smtp_checker*, %struct._smtp_checker** %1, align 8, !dbg !732
  %176 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %175, i32 0, i32 7, !dbg !734
  %177 = load %struct._list*, %struct._list** %176, align 8, !dbg !734
  %178 = getelementptr inbounds %struct._list, %struct._list* %177, i32 0, i32 1, !dbg !735
  %179 = load %struct._element*, %struct._element** %178, align 8, !dbg !735
  %180 = icmp eq %struct._element* %179, null, !dbg !736
  br i1 %180, label %181, label %187, !dbg !737

; <label>:181:                                    ; preds = %174, %155
  %182 = load %struct._smtp_checker*, %struct._smtp_checker** %1, align 8, !dbg !738
  %183 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %182, i32 0, i32 7, !dbg !740
  %184 = load %struct._list*, %struct._list** %183, align 8, !dbg !740
  %185 = load %struct._conn_opts*, %struct._conn_opts** @default_co, align 8, !dbg !741
  %186 = bitcast %struct._conn_opts* %185 to i8*, !dbg !741
  call void @list_add(%struct._list* %184, i8* %186), !dbg !742
  br label %190, !dbg !743

; <label>:187:                                    ; preds = %174, %167
  %188 = load %struct._conn_opts*, %struct._conn_opts** @default_co, align 8, !dbg !744
  %189 = bitcast %struct._conn_opts* %188 to i8*, !dbg !744
  call void @free(i8* %189) #5, !dbg !745
  store %struct._conn_opts* null, %struct._conn_opts** @default_co, align 8, !dbg !746
  br label %190

; <label>:190:                                    ; preds = %187, %181
  store %struct._conn_opts* null, %struct._conn_opts** @default_co, align 8, !dbg !747
  ret void, !dbg !748
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i8* @zalloc(i64) #1

declare %struct._checker* @queue_checker(void (i8*)*, void (%struct._IO_FILE*, i8*)*, i32 (%struct._thread*)*, i1 (i8*, i8*)*, i8*, %struct._conn_opts*) #1

; Function Attrs: nounwind uwtable
define internal void @free_smtp_check(i8*) #0 !dbg !749 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._smtp_checker*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !750, metadata !475), !dbg !751
  call void @llvm.dbg.declare(metadata %struct._smtp_checker** %3, metadata !752, metadata !475), !dbg !753
  %4 = load i8*, i8** %2, align 8, !dbg !754
  %5 = bitcast i8* %4 to %struct._checker*, !dbg !755
  %6 = getelementptr inbounds %struct._checker, %struct._checker* %5, i32 0, i32 6, !dbg !756
  %7 = load i8*, i8** %6, align 8, !dbg !756
  %8 = bitcast i8* %7 to %struct._smtp_checker*, !dbg !757
  store %struct._smtp_checker* %8, %struct._smtp_checker** %3, align 8, !dbg !753
  %9 = load %struct._smtp_checker*, %struct._smtp_checker** %3, align 8, !dbg !758
  %10 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %9, i32 0, i32 7, !dbg !759
  call void @free_list(%struct._list** %10), !dbg !760
  %11 = load %struct._smtp_checker*, %struct._smtp_checker** %3, align 8, !dbg !761
  %12 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %11, i32 0, i32 0, !dbg !762
  %13 = load i8*, i8** %12, align 8, !dbg !762
  call void @free(i8* %13) #5, !dbg !763
  %14 = load %struct._smtp_checker*, %struct._smtp_checker** %3, align 8, !dbg !764
  %15 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %14, i32 0, i32 0, !dbg !765
  store i8* null, i8** %15, align 8, !dbg !766
  %16 = load %struct._smtp_checker*, %struct._smtp_checker** %3, align 8, !dbg !767
  %17 = bitcast %struct._smtp_checker* %16 to i8*, !dbg !767
  call void @free(i8* %17) #5, !dbg !768
  store %struct._smtp_checker* null, %struct._smtp_checker** %3, align 8, !dbg !769
  %18 = load i8*, i8** %2, align 8, !dbg !770
  call void @free(i8* %18) #5, !dbg !771
  store i8* null, i8** %2, align 8, !dbg !772
  ret void, !dbg !773
}

; Function Attrs: nounwind uwtable
define internal void @dump_smtp_check(%struct._IO_FILE*, i8*) #0 !dbg !774 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._checker*, align 8
  %6 = alloca %struct._smtp_checker*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !775, metadata !475), !dbg !776
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !777, metadata !475), !dbg !778
  call void @llvm.dbg.declare(metadata %struct._checker** %5, metadata !779, metadata !475), !dbg !780
  %7 = load i8*, i8** %4, align 8, !dbg !781
  %8 = bitcast i8* %7 to %struct._checker*, !dbg !781
  store %struct._checker* %8, %struct._checker** %5, align 8, !dbg !780
  call void @llvm.dbg.declare(metadata %struct._smtp_checker** %6, metadata !782, metadata !475), !dbg !783
  %9 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !784
  %10 = getelementptr inbounds %struct._checker, %struct._checker* %9, i32 0, i32 6, !dbg !785
  %11 = load i8*, i8** %10, align 8, !dbg !785
  %12 = bitcast i8* %11 to %struct._smtp_checker*, !dbg !784
  store %struct._smtp_checker* %12, %struct._smtp_checker** %6, align 8, !dbg !783
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !786
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %13, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0)), !dbg !787
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !788
  %15 = load %struct._smtp_checker*, %struct._smtp_checker** %6, align 8, !dbg !789
  %16 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %15, i32 0, i32 0, !dbg !790
  %17 = load i8*, i8** %16, align 8, !dbg !790
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* %17), !dbg !791
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !792
  %19 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !793
  %20 = bitcast %struct._checker* %19 to i8*, !dbg !793
  call void @dump_checker_opts(%struct._IO_FILE* %18, i8* %20), !dbg !794
  %21 = load %struct._smtp_checker*, %struct._smtp_checker** %6, align 8, !dbg !795
  %22 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %21, i32 0, i32 7, !dbg !797
  %23 = load %struct._list*, %struct._list** %22, align 8, !dbg !797
  %24 = icmp ne %struct._list* %23, null, !dbg !795
  br i1 %24, label %25, label %31, !dbg !798

; <label>:25:                                     ; preds = %2
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !799
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)), !dbg !801
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !802
  %28 = load %struct._smtp_checker*, %struct._smtp_checker** %6, align 8, !dbg !803
  %29 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %28, i32 0, i32 7, !dbg !804
  %30 = load %struct._list*, %struct._list** %29, align 8, !dbg !804
  call void @dump_list(%struct._IO_FILE* %27, %struct._list* %30), !dbg !805
  br label %31, !dbg !806

; <label>:31:                                     ; preds = %25, %2
  ret void, !dbg !807
}

; Function Attrs: nounwind uwtable
define internal i32 @smtp_connect_thread(%struct._thread*) #0 !dbg !808 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._thread*, align 8
  %4 = alloca %struct._checker*, align 8
  %5 = alloca %struct._smtp_checker*, align 8
  %6 = alloca %struct._conn_opts*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store %struct._thread* %0, %struct._thread** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %3, metadata !809, metadata !475), !dbg !810
  call void @llvm.dbg.declare(metadata %struct._checker** %4, metadata !811, metadata !475), !dbg !812
  %11 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !813
  %12 = getelementptr inbounds %struct._thread, %struct._thread* %11, i32 0, i32 4, !dbg !814
  %13 = load i8*, i8** %12, align 8, !dbg !814
  %14 = bitcast i8* %13 to %struct._checker*, !dbg !815
  store %struct._checker* %14, %struct._checker** %4, align 8, !dbg !812
  call void @llvm.dbg.declare(metadata %struct._smtp_checker** %5, metadata !816, metadata !475), !dbg !817
  %15 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !818
  %16 = getelementptr inbounds %struct._checker, %struct._checker* %15, i32 0, i32 6, !dbg !819
  %17 = load i8*, i8** %16, align 8, !dbg !819
  %18 = bitcast i8* %17 to %struct._smtp_checker*, !dbg !820
  store %struct._smtp_checker* %18, %struct._smtp_checker** %5, align 8, !dbg !817
  call void @llvm.dbg.declare(metadata %struct._conn_opts** %6, metadata !821, metadata !475), !dbg !822
  call void @llvm.dbg.declare(metadata i32* %7, metadata !823, metadata !475), !dbg !824
  call void @llvm.dbg.declare(metadata i32* %8, metadata !825, metadata !475), !dbg !826
  call void @llvm.dbg.declare(metadata i8* %9, metadata !827, metadata !475), !dbg !828
  call void @llvm.dbg.declare(metadata i8* %10, metadata !829, metadata !475), !dbg !830
  %19 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !831
  %20 = getelementptr inbounds %struct._checker, %struct._checker* %19, i32 0, i32 7, !dbg !833
  %21 = load i8, i8* %20, align 8, !dbg !833
  %22 = trunc i8 %21 to i1, !dbg !833
  br i1 %22, label %33, label %23, !dbg !834

; <label>:23:                                     ; preds = %1
  %24 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !835
  %25 = getelementptr inbounds %struct._thread, %struct._thread* %24, i32 0, i32 2, !dbg !837
  %26 = load %struct._thread_master*, %struct._thread_master** %25, align 8, !dbg !837
  %27 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !838
  %28 = bitcast %struct._checker* %27 to i8*, !dbg !838
  %29 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !839
  %30 = getelementptr inbounds %struct._checker, %struct._checker* %29, i32 0, i32 12, !dbg !840
  %31 = load i64, i64* %30, align 8, !dbg !840
  %32 = call %struct._thread* @thread_add_timer(%struct._thread_master* %26, i32 (%struct._thread*)* @smtp_connect_thread, i8* %28, i64 %31), !dbg !841
  store i32 0, i32* %2, align 4, !dbg !842
  br label %177, !dbg !842

; <label>:33:                                     ; preds = %1
  %34 = load %struct._smtp_checker*, %struct._smtp_checker** %5, align 8, !dbg !843
  %35 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %34, i32 0, i32 7, !dbg !845
  %36 = load %struct._list*, %struct._list** %35, align 8, !dbg !845
  %37 = load %struct._smtp_checker*, %struct._smtp_checker** %5, align 8, !dbg !846
  %38 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %37, i32 0, i32 1, !dbg !847
  %39 = load i32, i32* %38, align 8, !dbg !847
  %40 = zext i32 %39 to i64, !dbg !846
  %41 = call i8* @list_element(%struct._list* %36, i64 %40), !dbg !848
  %42 = bitcast i8* %41 to %struct._conn_opts*, !dbg !848
  %43 = load %struct._smtp_checker*, %struct._smtp_checker** %5, align 8, !dbg !849
  %44 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %43, i32 0, i32 2, !dbg !850
  store %struct._conn_opts* %42, %struct._conn_opts** %44, align 8, !dbg !851
  %45 = icmp eq %struct._conn_opts* %42, null, !dbg !852
  br i1 %45, label %46, label %131, !dbg !853

; <label>:46:                                     ; preds = %33
  %47 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !854
  %48 = getelementptr inbounds %struct._checker, %struct._checker* %47, i32 0, i32 8, !dbg !857
  %49 = load i8, i8* %48, align 1, !dbg !857
  %50 = trunc i8 %49 to i1, !dbg !857
  br i1 %50, label %51, label %56, !dbg !858

; <label>:51:                                     ; preds = %46
  %52 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !859
  %53 = getelementptr inbounds %struct._checker, %struct._checker* %52, i32 0, i32 9, !dbg !861
  %54 = load i8, i8* %53, align 2, !dbg !861
  %55 = trunc i8 %54 to i1, !dbg !861
  br i1 %55, label %110, label %56, !dbg !862

; <label>:56:                                     ; preds = %51, %46
  %57 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !863
  %58 = getelementptr inbounds %struct._checker, %struct._checker* %57, i32 0, i32 5, !dbg !865
  %59 = load %struct._real_server*, %struct._real_server** %58, align 8, !dbg !865
  %60 = getelementptr inbounds %struct._real_server, %struct._real_server* %59, i32 0, i32 0, !dbg !866
  %61 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !867
  %62 = getelementptr inbounds %struct._checker, %struct._checker* %61, i32 0, i32 4, !dbg !868
  %63 = load %struct._virtual_server*, %struct._virtual_server** %62, align 8, !dbg !868
  %64 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %63, i32 0, i32 6, !dbg !869
  %65 = load i16, i16* %64, align 2, !dbg !869
  %66 = call i8* @inet_sockaddrtotrio(%struct.sockaddr_storage* %60, i16 zeroext %65), !dbg !870
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i32 0, i32 0), i8* %66), !dbg !871
  %67 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !872
  %68 = getelementptr inbounds %struct._checker, %struct._checker* %67, i32 0, i32 8, !dbg !873
  %69 = load i8, i8* %68, align 1, !dbg !873
  %70 = trunc i8 %69 to i1, !dbg !873
  %71 = zext i1 %70 to i8, !dbg !874
  store i8 %71, i8* %9, align 1, !dbg !874
  %72 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !875
  %73 = getelementptr inbounds %struct._checker, %struct._checker* %72, i32 0, i32 5, !dbg !876
  %74 = load %struct._real_server*, %struct._real_server** %73, align 8, !dbg !876
  %75 = getelementptr inbounds %struct._real_server, %struct._real_server* %74, i32 0, i32 16, !dbg !877
  %76 = load i8, i8* %75, align 4, !dbg !877
  %77 = trunc i8 %76 to i1, !dbg !877
  %78 = zext i1 %77 to i8, !dbg !878
  store i8 %78, i8* %10, align 1, !dbg !878
  %79 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !879
  call void @update_svr_checker_state(i1 zeroext true, %struct._checker* %79), !dbg !880
  %80 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !881
  %81 = getelementptr inbounds %struct._checker, %struct._checker* %80, i32 0, i32 5, !dbg !883
  %82 = load %struct._real_server*, %struct._real_server** %81, align 8, !dbg !883
  %83 = getelementptr inbounds %struct._real_server, %struct._real_server* %82, i32 0, i32 15, !dbg !884
  %84 = load i32, i32* %83, align 8, !dbg !884
  %85 = icmp ne i32 %84, 0, !dbg !881
  br i1 %85, label %86, label %109, !dbg !885

; <label>:86:                                     ; preds = %56
  %87 = load i8, i8* %9, align 1, !dbg !886
  %88 = trunc i8 %87 to i1, !dbg !886
  br i1 %88, label %109, label %89, !dbg !888

; <label>:89:                                     ; preds = %86
  %90 = load i8, i8* %10, align 1, !dbg !889
  %91 = trunc i8 %90 to i1, !dbg !889
  %92 = zext i1 %91 to i32, !dbg !889
  %93 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !890
  %94 = getelementptr inbounds %struct._checker, %struct._checker* %93, i32 0, i32 5, !dbg !891
  %95 = load %struct._real_server*, %struct._real_server** %94, align 8, !dbg !891
  %96 = getelementptr inbounds %struct._real_server, %struct._real_server* %95, i32 0, i32 16, !dbg !892
  %97 = load i8, i8* %96, align 4, !dbg !892
  %98 = trunc i8 %97 to i1, !dbg !892
  %99 = zext i1 %98 to i32, !dbg !890
  %100 = icmp ne i32 %92, %99, !dbg !893
  br i1 %100, label %106, label %101, !dbg !894

; <label>:101:                                    ; preds = %89
  %102 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !895
  %103 = getelementptr inbounds %struct._data, %struct._data* %102, i32 0, i32 66, !dbg !896
  %104 = load i8, i8* %103, align 2, !dbg !896
  %105 = trunc i8 %104 to i1, !dbg !896
  br i1 %105, label %109, label %106, !dbg !897

; <label>:106:                                    ; preds = %101, %89
  %107 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !899
  %108 = bitcast %struct._checker* %107 to i8*, !dbg !899
  call void @smtp_alert(i32 0, i8* %108, i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0)), !dbg !900
  br label %109, !dbg !900

; <label>:109:                                    ; preds = %106, %101, %86, %56
  br label %110, !dbg !901

; <label>:110:                                    ; preds = %109, %51
  %111 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !902
  %112 = getelementptr inbounds %struct._checker, %struct._checker* %111, i32 0, i32 16, !dbg !903
  store i32 0, i32* %112, align 8, !dbg !904
  %113 = load %struct._smtp_checker*, %struct._smtp_checker** %5, align 8, !dbg !905
  %114 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %113, i32 0, i32 1, !dbg !906
  store i32 0, i32* %114, align 8, !dbg !907
  %115 = load %struct._smtp_checker*, %struct._smtp_checker** %5, align 8, !dbg !908
  %116 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %115, i32 0, i32 7, !dbg !909
  %117 = load %struct._list*, %struct._list** %116, align 8, !dbg !909
  %118 = call i8* @list_element(%struct._list* %117, i64 0), !dbg !910
  %119 = bitcast i8* %118 to %struct._conn_opts*, !dbg !910
  %120 = load %struct._smtp_checker*, %struct._smtp_checker** %5, align 8, !dbg !911
  %121 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %120, i32 0, i32 2, !dbg !912
  store %struct._conn_opts* %119, %struct._conn_opts** %121, align 8, !dbg !913
  %122 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !914
  %123 = getelementptr inbounds %struct._thread, %struct._thread* %122, i32 0, i32 2, !dbg !915
  %124 = load %struct._thread_master*, %struct._thread_master** %123, align 8, !dbg !915
  %125 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !916
  %126 = bitcast %struct._checker* %125 to i8*, !dbg !916
  %127 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !917
  %128 = getelementptr inbounds %struct._checker, %struct._checker* %127, i32 0, i32 12, !dbg !918
  %129 = load i64, i64* %128, align 8, !dbg !918
  %130 = call %struct._thread* @thread_add_timer(%struct._thread_master* %124, i32 (%struct._thread*)* @smtp_connect_thread, i8* %126, i64 %129), !dbg !919
  store i32 0, i32* %2, align 4, !dbg !920
  br label %177, !dbg !920

; <label>:131:                                    ; preds = %33
  %132 = load %struct._smtp_checker*, %struct._smtp_checker** %5, align 8, !dbg !921
  %133 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %132, i32 0, i32 2, !dbg !922
  %134 = load %struct._conn_opts*, %struct._conn_opts** %133, align 8, !dbg !922
  store %struct._conn_opts* %134, %struct._conn_opts** %6, align 8, !dbg !923
  %135 = load %struct._conn_opts*, %struct._conn_opts** %6, align 8, !dbg !924
  %136 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %135, i32 0, i32 0, !dbg !926
  %137 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %136, i32 0, i32 0, !dbg !927
  %138 = load i16, i16* %137, align 8, !dbg !927
  %139 = zext i16 %138 to i32, !dbg !924
  %140 = call i32 @socket(i32 %139, i32 526337, i32 6) #5, !dbg !928
  store i32 %140, i32* %8, align 4, !dbg !929
  %141 = icmp eq i32 %140, -1, !dbg !930
  br i1 %141, label %142, label %152, !dbg !931

; <label>:142:                                    ; preds = %131
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.8, i32 0, i32 0)), !dbg !932
  %143 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !934
  %144 = getelementptr inbounds %struct._thread, %struct._thread* %143, i32 0, i32 2, !dbg !935
  %145 = load %struct._thread_master*, %struct._thread_master** %144, align 8, !dbg !935
  %146 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !936
  %147 = bitcast %struct._checker* %146 to i8*, !dbg !936
  %148 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !937
  %149 = getelementptr inbounds %struct._checker, %struct._checker* %148, i32 0, i32 12, !dbg !938
  %150 = load i64, i64* %149, align 8, !dbg !938
  %151 = call %struct._thread* @thread_add_timer(%struct._thread_master* %145, i32 (%struct._thread*)* @smtp_connect_thread, i8* %147, i64 %150), !dbg !939
  store i32 0, i32* %2, align 4, !dbg !940
  br label %177, !dbg !940

; <label>:152:                                    ; preds = %131
  %153 = load i32, i32* %8, align 4, !dbg !941
  %154 = load %struct._conn_opts*, %struct._conn_opts** %6, align 8, !dbg !942
  %155 = call i32 @tcp_bind_connect(i32 %153, %struct._conn_opts* %154), !dbg !943
  store i32 %155, i32* %7, align 4, !dbg !944
  %156 = load i32, i32* %8, align 4, !dbg !945
  %157 = load i32, i32* %7, align 4, !dbg !947
  %158 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !948
  %159 = load %struct._conn_opts*, %struct._conn_opts** %6, align 8, !dbg !949
  %160 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %159, i32 0, i32 3, !dbg !950
  %161 = load i32, i32* %160, align 8, !dbg !950
  %162 = zext i32 %161 to i64, !dbg !949
  %163 = call zeroext i1 @tcp_connection_state(i32 %156, i32 %157, %struct._thread* %158, i32 (%struct._thread*)* @smtp_check_thread, i64 %162), !dbg !951
  br i1 %163, label %164, label %176, !dbg !952

; <label>:164:                                    ; preds = %152
  %165 = load i32, i32* %8, align 4, !dbg !953
  %166 = call i32 @close(i32 %165), !dbg !955
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i32 0, i32 0)), !dbg !956
  %167 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !957
  %168 = getelementptr inbounds %struct._thread, %struct._thread* %167, i32 0, i32 2, !dbg !958
  %169 = load %struct._thread_master*, %struct._thread_master** %168, align 8, !dbg !958
  %170 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !959
  %171 = bitcast %struct._checker* %170 to i8*, !dbg !959
  %172 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !960
  %173 = getelementptr inbounds %struct._checker, %struct._checker* %172, i32 0, i32 12, !dbg !961
  %174 = load i64, i64* %173, align 8, !dbg !961
  %175 = call %struct._thread* @thread_add_timer(%struct._thread_master* %169, i32 (%struct._thread*)* @smtp_connect_thread, i8* %171, i64 %174), !dbg !962
  br label %176, !dbg !963

; <label>:176:                                    ; preds = %164, %152
  store i32 0, i32* %2, align 4, !dbg !964
  br label %177, !dbg !964

; <label>:177:                                    ; preds = %176, %142, %110, %23
  %178 = load i32, i32* %2, align 4, !dbg !965
  ret i32 %178, !dbg !965
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @smtp_check_compare(i8*, i8*) #0 !dbg !966 {
  %3 = alloca i1, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._smtp_checker*, align 8
  %7 = alloca %struct._smtp_checker*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct._conn_opts*, align 8
  %10 = alloca %struct._conn_opts*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !967, metadata !475), !dbg !968
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !969, metadata !475), !dbg !970
  call void @llvm.dbg.declare(metadata %struct._smtp_checker** %6, metadata !971, metadata !475), !dbg !972
  %11 = load i8*, i8** %4, align 8, !dbg !973
  %12 = bitcast i8* %11 to %struct._checker*, !dbg !974
  %13 = getelementptr inbounds %struct._checker, %struct._checker* %12, i32 0, i32 6, !dbg !975
  %14 = load i8*, i8** %13, align 8, !dbg !975
  %15 = bitcast i8* %14 to %struct._smtp_checker*, !dbg !976
  store %struct._smtp_checker* %15, %struct._smtp_checker** %6, align 8, !dbg !972
  call void @llvm.dbg.declare(metadata %struct._smtp_checker** %7, metadata !977, metadata !475), !dbg !978
  %16 = load i8*, i8** %5, align 8, !dbg !979
  %17 = bitcast i8* %16 to %struct._checker*, !dbg !980
  %18 = getelementptr inbounds %struct._checker, %struct._checker* %17, i32 0, i32 6, !dbg !981
  %19 = load i8*, i8** %18, align 8, !dbg !981
  %20 = bitcast i8* %19 to %struct._smtp_checker*, !dbg !982
  store %struct._smtp_checker* %20, %struct._smtp_checker** %7, align 8, !dbg !978
  call void @llvm.dbg.declare(metadata i64* %8, metadata !983, metadata !475), !dbg !984
  call void @llvm.dbg.declare(metadata %struct._conn_opts** %9, metadata !985, metadata !475), !dbg !986
  call void @llvm.dbg.declare(metadata %struct._conn_opts** %10, metadata !987, metadata !475), !dbg !988
  %21 = load %struct._smtp_checker*, %struct._smtp_checker** %6, align 8, !dbg !989
  %22 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %21, i32 0, i32 0, !dbg !991
  %23 = load i8*, i8** %22, align 8, !dbg !991
  %24 = load %struct._smtp_checker*, %struct._smtp_checker** %7, align 8, !dbg !992
  %25 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %24, i32 0, i32 0, !dbg !993
  %26 = load i8*, i8** %25, align 8, !dbg !993
  %27 = call i32 @strcmp(i8* %23, i8* %26) #9, !dbg !994
  %28 = icmp ne i32 %27, 0, !dbg !995
  br i1 %28, label %29, label %30, !dbg !996

; <label>:29:                                     ; preds = %2
  store i1 false, i1* %3, align 1, !dbg !997
  br label %86, !dbg !997

; <label>:30:                                     ; preds = %2
  %31 = load i8*, i8** %4, align 8, !dbg !998
  %32 = bitcast i8* %31 to %struct._checker*, !dbg !1000
  %33 = getelementptr inbounds %struct._checker, %struct._checker* %32, i32 0, i32 10, !dbg !1001
  %34 = load %struct._conn_opts*, %struct._conn_opts** %33, align 8, !dbg !1001
  %35 = load i8*, i8** %5, align 8, !dbg !1002
  %36 = bitcast i8* %35 to %struct._checker*, !dbg !1003
  %37 = getelementptr inbounds %struct._checker, %struct._checker* %36, i32 0, i32 10, !dbg !1004
  %38 = load %struct._conn_opts*, %struct._conn_opts** %37, align 8, !dbg !1004
  %39 = call zeroext i1 @compare_conn_opts(%struct._conn_opts* %34, %struct._conn_opts* %38), !dbg !1005
  br i1 %39, label %41, label %40, !dbg !1006

; <label>:40:                                     ; preds = %30
  store i1 false, i1* %3, align 1, !dbg !1007
  br label %86, !dbg !1007

; <label>:41:                                     ; preds = %30
  %42 = load %struct._smtp_checker*, %struct._smtp_checker** %6, align 8, !dbg !1008
  %43 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %42, i32 0, i32 7, !dbg !1010
  %44 = load %struct._list*, %struct._list** %43, align 8, !dbg !1010
  %45 = getelementptr inbounds %struct._list, %struct._list* %44, i32 0, i32 2, !dbg !1011
  %46 = load i32, i32* %45, align 8, !dbg !1011
  %47 = load %struct._smtp_checker*, %struct._smtp_checker** %7, align 8, !dbg !1012
  %48 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %47, i32 0, i32 7, !dbg !1013
  %49 = load %struct._list*, %struct._list** %48, align 8, !dbg !1013
  %50 = getelementptr inbounds %struct._list, %struct._list* %49, i32 0, i32 2, !dbg !1014
  %51 = load i32, i32* %50, align 8, !dbg !1014
  %52 = icmp ne i32 %46, %51, !dbg !1015
  br i1 %52, label %53, label %54, !dbg !1016

; <label>:53:                                     ; preds = %41
  store i1 false, i1* %3, align 1, !dbg !1017
  br label %86, !dbg !1017

; <label>:54:                                     ; preds = %41
  store i64 0, i64* %8, align 8, !dbg !1018
  br label %55, !dbg !1020

; <label>:55:                                     ; preds = %82, %54
  %56 = load i64, i64* %8, align 8, !dbg !1021
  %57 = load %struct._smtp_checker*, %struct._smtp_checker** %7, align 8, !dbg !1024
  %58 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %57, i32 0, i32 7, !dbg !1025
  %59 = load %struct._list*, %struct._list** %58, align 8, !dbg !1025
  %60 = getelementptr inbounds %struct._list, %struct._list* %59, i32 0, i32 2, !dbg !1026
  %61 = load i32, i32* %60, align 8, !dbg !1026
  %62 = zext i32 %61 to i64, !dbg !1027
  %63 = icmp ult i64 %56, %62, !dbg !1028
  br i1 %63, label %64, label %85, !dbg !1029

; <label>:64:                                     ; preds = %55
  %65 = load %struct._smtp_checker*, %struct._smtp_checker** %6, align 8, !dbg !1030
  %66 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %65, i32 0, i32 7, !dbg !1032
  %67 = load %struct._list*, %struct._list** %66, align 8, !dbg !1032
  %68 = load i64, i64* %8, align 8, !dbg !1033
  %69 = call i8* @list_element(%struct._list* %67, i64 %68), !dbg !1034
  %70 = bitcast i8* %69 to %struct._conn_opts*, !dbg !1035
  store %struct._conn_opts* %70, %struct._conn_opts** %9, align 8, !dbg !1036
  %71 = load %struct._smtp_checker*, %struct._smtp_checker** %7, align 8, !dbg !1037
  %72 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %71, i32 0, i32 7, !dbg !1038
  %73 = load %struct._list*, %struct._list** %72, align 8, !dbg !1038
  %74 = load i64, i64* %8, align 8, !dbg !1039
  %75 = call i8* @list_element(%struct._list* %73, i64 %74), !dbg !1040
  %76 = bitcast i8* %75 to %struct._conn_opts*, !dbg !1041
  store %struct._conn_opts* %76, %struct._conn_opts** %10, align 8, !dbg !1042
  %77 = load %struct._conn_opts*, %struct._conn_opts** %9, align 8, !dbg !1043
  %78 = load %struct._conn_opts*, %struct._conn_opts** %10, align 8, !dbg !1045
  %79 = call zeroext i1 @compare_conn_opts(%struct._conn_opts* %77, %struct._conn_opts* %78), !dbg !1046
  br i1 %79, label %81, label %80, !dbg !1047

; <label>:80:                                     ; preds = %64
  store i1 false, i1* %3, align 1, !dbg !1048
  br label %86, !dbg !1048

; <label>:81:                                     ; preds = %64
  br label %82, !dbg !1050

; <label>:82:                                     ; preds = %81
  %83 = load i64, i64* %8, align 8, !dbg !1051
  %84 = add i64 %83, 1, !dbg !1051
  store i64 %84, i64* %8, align 8, !dbg !1051
  br label %55, !dbg !1053, !llvm.loop !1054

; <label>:85:                                     ; preds = %55
  store i1 true, i1* %3, align 1, !dbg !1056
  br label %86, !dbg !1056

; <label>:86:                                     ; preds = %85, %80, %53, %40, %29
  %87 = load i1, i1* %3, align 1, !dbg !1057
  ret i1 %87, !dbg !1057
}

declare %struct._list* @alloc_list(void (i8*)*, void (%struct._IO_FILE*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @smtp_free_host(i8*) #0 !dbg !1058 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1059, metadata !475), !dbg !1060
  %3 = load i8*, i8** %2, align 8, !dbg !1061
  call void @free(i8* %3) #5, !dbg !1062
  store i8* null, i8** %2, align 8, !dbg !1063
  ret void, !dbg !1064
}

declare void @dump_connection_opts(%struct._IO_FILE*, i8*) #1

declare void @free_list(%struct._list**) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

declare void @conf_write(%struct._IO_FILE*, i8*, ...) #1

declare void @dump_checker_opts(%struct._IO_FILE*, i8*) #1

declare void @dump_list(%struct._IO_FILE*, %struct._list*) #1

declare %struct._thread* @thread_add_timer(%struct._thread_master*, i32 (%struct._thread*)*, i8*, i64) #1

declare i8* @list_element(%struct._list*, i64) #1

declare void @log_message(i32, i8*, ...) #1

declare i8* @inet_sockaddrtotrio(%struct.sockaddr_storage*, i16 zeroext) #1

declare void @update_svr_checker_state(i1 zeroext, %struct._checker*) #1

declare void @smtp_alert(i32, i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @tcp_bind_connect(i32, %struct._conn_opts*) #4 !dbg !1065 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._conn_opts*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1068, metadata !475), !dbg !1069
  store %struct._conn_opts* %1, %struct._conn_opts** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._conn_opts** %4, metadata !1070, metadata !475), !dbg !1071
  %5 = load i32, i32* %3, align 4, !dbg !1072
  %6 = load %struct._conn_opts*, %struct._conn_opts** %4, align 8, !dbg !1073
  %7 = call i32 @socket_bind_connect(i32 %5, %struct._conn_opts* %6), !dbg !1074
  ret i32 %7, !dbg !1075
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @tcp_connection_state(i32, i32, %struct._thread*, i32 (%struct._thread*)*, i64) #4 !dbg !1076 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._thread*, align 8
  %9 = alloca i32 (%struct._thread*)*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1079, metadata !475), !dbg !1080
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1081, metadata !475), !dbg !1082
  store %struct._thread* %2, %struct._thread** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %8, metadata !1083, metadata !475), !dbg !1084
  store i32 (%struct._thread*)* %3, i32 (%struct._thread*)** %9, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct._thread*)** %9, metadata !1085, metadata !475), !dbg !1086
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1087, metadata !475), !dbg !1088
  %11 = load i32, i32* %6, align 4, !dbg !1089
  %12 = load i32, i32* %7, align 4, !dbg !1090
  %13 = load %struct._thread*, %struct._thread** %8, align 8, !dbg !1091
  %14 = load i32 (%struct._thread*)*, i32 (%struct._thread*)** %9, align 8, !dbg !1092
  %15 = load i64, i64* %10, align 8, !dbg !1093
  %16 = call zeroext i1 @socket_connection_state(i32 %11, i32 %12, %struct._thread* %13, i32 (%struct._thread*)* %14, i64 %15), !dbg !1094
  ret i1 %16, !dbg !1095
}

; Function Attrs: nounwind uwtable
define internal i32 @smtp_check_thread(%struct._thread*) #0 !dbg !1096 {
  %2 = alloca %struct._thread*, align 8
  %3 = alloca %struct._checker*, align 8
  %4 = alloca %struct._smtp_checker*, align 8
  %5 = alloca %struct._conn_opts*, align 8
  %6 = alloca i32, align 4
  store %struct._thread* %0, %struct._thread** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %2, metadata !1097, metadata !475), !dbg !1098
  call void @llvm.dbg.declare(metadata %struct._checker** %3, metadata !1099, metadata !475), !dbg !1100
  %7 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1101
  %8 = getelementptr inbounds %struct._thread, %struct._thread* %7, i32 0, i32 4, !dbg !1102
  %9 = load i8*, i8** %8, align 8, !dbg !1102
  %10 = bitcast i8* %9 to %struct._checker*, !dbg !1103
  store %struct._checker* %10, %struct._checker** %3, align 8, !dbg !1100
  call void @llvm.dbg.declare(metadata %struct._smtp_checker** %4, metadata !1104, metadata !475), !dbg !1105
  %11 = load %struct._checker*, %struct._checker** %3, align 8, !dbg !1106
  %12 = getelementptr inbounds %struct._checker, %struct._checker* %11, i32 0, i32 6, !dbg !1107
  %13 = load i8*, i8** %12, align 8, !dbg !1107
  %14 = bitcast i8* %13 to %struct._smtp_checker*, !dbg !1108
  store %struct._smtp_checker* %14, %struct._smtp_checker** %4, align 8, !dbg !1105
  call void @llvm.dbg.declare(metadata %struct._conn_opts** %5, metadata !1109, metadata !475), !dbg !1110
  %15 = load %struct._smtp_checker*, %struct._smtp_checker** %4, align 8, !dbg !1111
  %16 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %15, i32 0, i32 2, !dbg !1112
  %17 = load %struct._conn_opts*, %struct._conn_opts** %16, align 8, !dbg !1112
  store %struct._conn_opts* %17, %struct._conn_opts** %5, align 8, !dbg !1110
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1113, metadata !475), !dbg !1114
  %18 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1115
  %19 = call i32 @tcp_socket_state(%struct._thread* %18, i32 (%struct._thread*)* @smtp_check_thread), !dbg !1116
  store i32 %19, i32* %6, align 4, !dbg !1117
  %20 = load i32, i32* %6, align 4, !dbg !1118
  switch i32 %20, label %38 [
    i32 0, label %21
    i32 2, label %27
    i32 3, label %33
  ], !dbg !1119

; <label>:21:                                     ; preds = %1
  %22 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1120
  %23 = load %struct._conn_opts*, %struct._conn_opts** %5, align 8, !dbg !1122
  %24 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %23, i32 0, i32 0, !dbg !1123
  %25 = call i8* @inet_sockaddrtopair(%struct.sockaddr_storage* %24), !dbg !1124
  %26 = call i32 (%struct._thread*, i32, i8*, ...) @smtp_final(%struct._thread* %22, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i32 0, i32 0), i8* %25), !dbg !1125
  br label %44, !dbg !1126

; <label>:27:                                     ; preds = %1
  %28 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1127
  %29 = load %struct._conn_opts*, %struct._conn_opts** %5, align 8, !dbg !1128
  %30 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %29, i32 0, i32 0, !dbg !1129
  %31 = call i8* @inet_sockaddrtopair(%struct.sockaddr_storage* %30), !dbg !1130
  %32 = call i32 (%struct._thread*, i32, i8*, ...) @smtp_final(%struct._thread* %28, i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i32 0, i32 0), i8* %31), !dbg !1131
  br label %44, !dbg !1132

; <label>:33:                                     ; preds = %1
  %34 = load %struct._smtp_checker*, %struct._smtp_checker** %4, align 8, !dbg !1133
  %35 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %34, i32 0, i32 6, !dbg !1134
  store i32 1, i32* %35, align 8, !dbg !1135
  %36 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1136
  %37 = call i32 @smtp_engine_thread(%struct._thread* %36), !dbg !1137
  br label %44, !dbg !1138

; <label>:38:                                     ; preds = %1
  %39 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1139
  %40 = load %struct._conn_opts*, %struct._conn_opts** %5, align 8, !dbg !1140
  %41 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %40, i32 0, i32 0, !dbg !1141
  %42 = call i8* @inet_sockaddrtopair(%struct.sockaddr_storage* %41), !dbg !1142
  %43 = call i32 (%struct._thread*, i32, i8*, ...) @smtp_final(%struct._thread* %39, i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i32 0, i32 0), i8* %42), !dbg !1143
  br label %44, !dbg !1144

; <label>:44:                                     ; preds = %38, %33, %27, %21
  ret i32 0, !dbg !1145
}

declare i32 @close(i32) #1

declare i32 @socket_bind_connect(i32, %struct._conn_opts*) #1

declare zeroext i1 @socket_connection_state(i32, i32, %struct._thread*, i32 (%struct._thread*)*, i64) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @tcp_socket_state(%struct._thread*, i32 (%struct._thread*)*) #4 !dbg !1146 {
  %3 = alloca %struct._thread*, align 8
  %4 = alloca i32 (%struct._thread*)*, align 8
  store %struct._thread* %0, %struct._thread** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %3, metadata !1149, metadata !475), !dbg !1150
  store i32 (%struct._thread*)* %1, i32 (%struct._thread*)** %4, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct._thread*)** %4, metadata !1151, metadata !475), !dbg !1152
  %5 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1153
  %6 = load i32 (%struct._thread*)*, i32 (%struct._thread*)** %4, align 8, !dbg !1154
  %7 = call i32 @socket_state(%struct._thread* %5, i32 (%struct._thread*)* %6), !dbg !1155
  ret i32 %7, !dbg !1156
}

; Function Attrs: nounwind uwtable
define internal i32 @smtp_final(%struct._thread*, i32, i8*, ...) #0 !dbg !1157 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._thread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct._checker*, align 8
  %9 = alloca %struct._smtp_checker*, align 8
  %10 = alloca [512 x i8], align 16
  %11 = alloca [542 x i8], align 16
  %12 = alloca [1 x %struct.__va_list_tag], align 16
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  store %struct._thread* %0, %struct._thread** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %5, metadata !1162, metadata !475), !dbg !1163
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1164, metadata !475), !dbg !1165
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1166, metadata !475), !dbg !1167
  call void @llvm.dbg.declare(metadata %struct._checker** %8, metadata !1168, metadata !475), !dbg !1169
  %15 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !1170
  %16 = getelementptr inbounds %struct._thread, %struct._thread* %15, i32 0, i32 4, !dbg !1171
  %17 = load i8*, i8** %16, align 8, !dbg !1171
  %18 = bitcast i8* %17 to %struct._checker*, !dbg !1172
  store %struct._checker* %18, %struct._checker** %8, align 8, !dbg !1169
  call void @llvm.dbg.declare(metadata %struct._smtp_checker** %9, metadata !1173, metadata !475), !dbg !1174
  %19 = load %struct._checker*, %struct._checker** %8, align 8, !dbg !1175
  %20 = getelementptr inbounds %struct._checker, %struct._checker* %19, i32 0, i32 6, !dbg !1176
  %21 = load i8*, i8** %20, align 8, !dbg !1176
  %22 = bitcast i8* %21 to %struct._smtp_checker*, !dbg !1177
  store %struct._smtp_checker* %22, %struct._smtp_checker** %9, align 8, !dbg !1174
  call void @llvm.dbg.declare(metadata [512 x i8]* %10, metadata !1178, metadata !475), !dbg !1179
  call void @llvm.dbg.declare(metadata [542 x i8]* %11, metadata !1180, metadata !475), !dbg !1184
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %12, metadata !1185, metadata !475), !dbg !1197
  call void @llvm.dbg.declare(metadata i8* %13, metadata !1198, metadata !475), !dbg !1199
  call void @llvm.dbg.declare(metadata i8* %14, metadata !1200, metadata !475), !dbg !1201
  %23 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !1202
  call void @thread_close_fd(%struct._thread* %23), !dbg !1203
  %24 = load %struct._checker*, %struct._checker** %8, align 8, !dbg !1204
  %25 = getelementptr inbounds %struct._checker, %struct._checker* %24, i32 0, i32 16, !dbg !1205
  %26 = load i32, i32* %25, align 8, !dbg !1206
  %27 = add i32 %26, 1, !dbg !1206
  store i32 %27, i32* %25, align 8, !dbg !1206
  %28 = load i32, i32* %6, align 4, !dbg !1207
  %29 = icmp ne i32 %28, 0, !dbg !1207
  br i1 %29, label %30, label %158, !dbg !1209

; <label>:30:                                     ; preds = %3
  %31 = load %struct._checker*, %struct._checker** %8, align 8, !dbg !1210
  %32 = getelementptr inbounds %struct._checker, %struct._checker* %31, i32 0, i32 8, !dbg !1213
  %33 = load i8, i8* %32, align 1, !dbg !1213
  %34 = trunc i8 %33 to i1, !dbg !1213
  br i1 %34, label %35, label %52, !dbg !1214

; <label>:35:                                     ; preds = %30
  %36 = load i8*, i8** %7, align 8, !dbg !1215
  %37 = icmp ne i8* %36, null, !dbg !1218
  br i1 %37, label %38, label %50, !dbg !1219

; <label>:38:                                     ; preds = %35
  %39 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i32 0, i32 0, !dbg !1220
  %40 = call i8* @strncpy(i8* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i64 511) #5, !dbg !1222
  %41 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i32 0, i32 0, !dbg !1223
  %42 = load i8*, i8** %7, align 8, !dbg !1224
  %43 = call i8* @strncat(i8* %41, i8* %42, i64 500) #5, !dbg !1225
  %44 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %12, i32 0, i32 0, !dbg !1226
  %45 = bitcast %struct.__va_list_tag* %44 to i8*, !dbg !1226
  call void @llvm.va_start(i8* %45), !dbg !1226
  %46 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i32 0, i32 0, !dbg !1227
  %47 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %12, i32 0, i32 0, !dbg !1228
  call void @vlog_message(i32 6, i8* %46, %struct.__va_list_tag* %47), !dbg !1229
  %48 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %12, i32 0, i32 0, !dbg !1230
  %49 = bitcast %struct.__va_list_tag* %48 to i8*, !dbg !1230
  call void @llvm.va_end(i8* %49), !dbg !1230
  br label %51, !dbg !1231

; <label>:50:                                     ; preds = %35
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i32 0, i32 0)), !dbg !1232
  br label %51

; <label>:51:                                     ; preds = %50, %38
  br label %52, !dbg !1234

; <label>:52:                                     ; preds = %51, %30
  %53 = load %struct._checker*, %struct._checker** %8, align 8, !dbg !1235
  %54 = getelementptr inbounds %struct._checker, %struct._checker* %53, i32 0, i32 16, !dbg !1237
  %55 = load i32, i32* %54, align 8, !dbg !1237
  %56 = load %struct._checker*, %struct._checker** %8, align 8, !dbg !1238
  %57 = getelementptr inbounds %struct._checker, %struct._checker* %56, i32 0, i32 14, !dbg !1239
  %58 = load i32, i32* %57, align 8, !dbg !1239
  %59 = icmp ult i32 %55, %58, !dbg !1240
  br i1 %59, label %60, label %70, !dbg !1241

; <label>:60:                                     ; preds = %52
  %61 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !1242
  %62 = getelementptr inbounds %struct._thread, %struct._thread* %61, i32 0, i32 2, !dbg !1244
  %63 = load %struct._thread_master*, %struct._thread_master** %62, align 8, !dbg !1244
  %64 = load %struct._checker*, %struct._checker** %8, align 8, !dbg !1245
  %65 = bitcast %struct._checker* %64 to i8*, !dbg !1245
  %66 = load %struct._checker*, %struct._checker** %8, align 8, !dbg !1246
  %67 = getelementptr inbounds %struct._checker, %struct._checker* %66, i32 0, i32 15, !dbg !1247
  %68 = load i64, i64* %67, align 8, !dbg !1247
  %69 = call %struct._thread* @thread_add_timer(%struct._thread_master* %63, i32 (%struct._thread*)* @smtp_connect_thread, i8* %65, i64 %68), !dbg !1248
  store i32 0, i32* %4, align 4, !dbg !1249
  br label %171, !dbg !1249

; <label>:70:                                     ; preds = %52
  %71 = load %struct._checker*, %struct._checker** %8, align 8, !dbg !1250
  %72 = getelementptr inbounds %struct._checker, %struct._checker* %71, i32 0, i32 8, !dbg !1252
  %73 = load i8, i8* %72, align 1, !dbg !1252
  %74 = trunc i8 %73 to i1, !dbg !1252
  br i1 %74, label %80, label %75, !dbg !1253

; <label>:75:                                     ; preds = %70
  %76 = load %struct._checker*, %struct._checker** %8, align 8, !dbg !1254
  %77 = getelementptr inbounds %struct._checker, %struct._checker* %76, i32 0, i32 9, !dbg !1256
  %78 = load i8, i8* %77, align 2, !dbg !1256
  %79 = trunc i8 %78 to i1, !dbg !1256
  br i1 %79, label %144, label %80, !dbg !1257

; <label>:80:                                     ; preds = %75, %70
  %81 = load %struct._checker*, %struct._checker** %8, align 8, !dbg !1258
  %82 = getelementptr inbounds %struct._checker, %struct._checker* %81, i32 0, i32 8, !dbg !1260
  %83 = load i8, i8* %82, align 1, !dbg !1260
  %84 = trunc i8 %83 to i1, !dbg !1260
  %85 = zext i1 %84 to i8, !dbg !1261
  store i8 %85, i8* %13, align 1, !dbg !1261
  %86 = load %struct._checker*, %struct._checker** %8, align 8, !dbg !1262
  %87 = getelementptr inbounds %struct._checker, %struct._checker* %86, i32 0, i32 5, !dbg !1263
  %88 = load %struct._real_server*, %struct._real_server** %87, align 8, !dbg !1263
  %89 = getelementptr inbounds %struct._real_server, %struct._real_server* %88, i32 0, i32 16, !dbg !1264
  %90 = load i8, i8* %89, align 4, !dbg !1264
  %91 = trunc i8 %90 to i1, !dbg !1264
  %92 = zext i1 %91 to i8, !dbg !1265
  store i8 %92, i8* %14, align 1, !dbg !1265
  %93 = load %struct._checker*, %struct._checker** %8, align 8, !dbg !1266
  call void @update_svr_checker_state(i1 zeroext false, %struct._checker* %93), !dbg !1267
  %94 = load %struct._checker*, %struct._checker** %8, align 8, !dbg !1268
  %95 = getelementptr inbounds %struct._checker, %struct._checker* %94, i32 0, i32 5, !dbg !1270
  %96 = load %struct._real_server*, %struct._real_server** %95, align 8, !dbg !1270
  %97 = getelementptr inbounds %struct._real_server, %struct._real_server* %96, i32 0, i32 15, !dbg !1271
  %98 = load i32, i32* %97, align 8, !dbg !1271
  %99 = icmp ne i32 %98, 0, !dbg !1268
  br i1 %99, label %100, label %143, !dbg !1272

; <label>:100:                                    ; preds = %80
  %101 = load i8, i8* %13, align 1, !dbg !1273
  %102 = trunc i8 %101 to i1, !dbg !1273
  br i1 %102, label %103, label %143, !dbg !1275

; <label>:103:                                    ; preds = %100
  %104 = load i8, i8* %14, align 1, !dbg !1276
  %105 = trunc i8 %104 to i1, !dbg !1276
  %106 = zext i1 %105 to i32, !dbg !1276
  %107 = load %struct._checker*, %struct._checker** %8, align 8, !dbg !1277
  %108 = getelementptr inbounds %struct._checker, %struct._checker* %107, i32 0, i32 5, !dbg !1278
  %109 = load %struct._real_server*, %struct._real_server** %108, align 8, !dbg !1278
  %110 = getelementptr inbounds %struct._real_server, %struct._real_server* %109, i32 0, i32 16, !dbg !1279
  %111 = load i8, i8* %110, align 4, !dbg !1279
  %112 = trunc i8 %111 to i1, !dbg !1279
  %113 = zext i1 %112 to i32, !dbg !1277
  %114 = icmp ne i32 %106, %113, !dbg !1280
  br i1 %114, label %120, label %115, !dbg !1281

; <label>:115:                                    ; preds = %103
  %116 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1282
  %117 = getelementptr inbounds %struct._data, %struct._data* %116, i32 0, i32 66, !dbg !1283
  %118 = load i8, i8* %117, align 2, !dbg !1283
  %119 = trunc i8 %118 to i1, !dbg !1283
  br i1 %119, label %143, label %120, !dbg !1284

; <label>:120:                                    ; preds = %115, %103
  %121 = load i8*, i8** %7, align 8, !dbg !1286
  %122 = icmp ne i8* %121, null, !dbg !1289
  br i1 %122, label %123, label %135, !dbg !1290

; <label>:123:                                    ; preds = %120
  %124 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i32 0, i32 0, !dbg !1291
  %125 = load i8*, i8** %7, align 8, !dbg !1293
  %126 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %124, i64 512, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i32 0, i32 0), i8* %125) #5, !dbg !1294
  %127 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %12, i32 0, i32 0, !dbg !1295
  %128 = bitcast %struct.__va_list_tag* %127 to i8*, !dbg !1295
  call void @llvm.va_start(i8* %128), !dbg !1295
  %129 = getelementptr inbounds [542 x i8], [542 x i8]* %11, i32 0, i32 0, !dbg !1296
  %130 = getelementptr inbounds [512 x i8], [512 x i8]* %10, i32 0, i32 0, !dbg !1297
  %131 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %12, i32 0, i32 0, !dbg !1298
  %132 = call i32 @vsnprintf(i8* %129, i64 542, i8* %130, %struct.__va_list_tag* %131) #5, !dbg !1299
  %133 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %12, i32 0, i32 0, !dbg !1300
  %134 = bitcast %struct.__va_list_tag* %133 to i8*, !dbg !1300
  call void @llvm.va_end(i8* %134), !dbg !1300
  br label %138, !dbg !1301

; <label>:135:                                    ; preds = %120
  %136 = getelementptr inbounds [542 x i8], [542 x i8]* %11, i32 0, i32 0, !dbg !1302
  %137 = call i8* @strncpy(i8* %136, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i32 0, i32 0), i64 542) #5, !dbg !1303
  br label %138

; <label>:138:                                    ; preds = %135, %123
  %139 = getelementptr inbounds [542 x i8], [542 x i8]* %11, i64 0, i64 541, !dbg !1304
  store i8 0, i8* %139, align 1, !dbg !1305
  %140 = load %struct._checker*, %struct._checker** %8, align 8, !dbg !1306
  %141 = bitcast %struct._checker* %140 to i8*, !dbg !1306
  %142 = getelementptr inbounds [542 x i8], [542 x i8]* %11, i32 0, i32 0, !dbg !1307
  call void @smtp_alert(i32 0, i8* %141, i8* null, i8* %142), !dbg !1308
  br label %143, !dbg !1309

; <label>:143:                                    ; preds = %138, %115, %100, %80
  br label %144, !dbg !1310

; <label>:144:                                    ; preds = %143, %75
  %145 = load %struct._checker*, %struct._checker** %8, align 8, !dbg !1311
  %146 = getelementptr inbounds %struct._checker, %struct._checker* %145, i32 0, i32 16, !dbg !1312
  store i32 0, i32* %146, align 8, !dbg !1313
  %147 = load %struct._smtp_checker*, %struct._smtp_checker** %9, align 8, !dbg !1314
  %148 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %147, i32 0, i32 1, !dbg !1315
  store i32 0, i32* %148, align 8, !dbg !1316
  %149 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !1317
  %150 = getelementptr inbounds %struct._thread, %struct._thread* %149, i32 0, i32 2, !dbg !1318
  %151 = load %struct._thread_master*, %struct._thread_master** %150, align 8, !dbg !1318
  %152 = load %struct._checker*, %struct._checker** %8, align 8, !dbg !1319
  %153 = bitcast %struct._checker* %152 to i8*, !dbg !1319
  %154 = load %struct._checker*, %struct._checker** %8, align 8, !dbg !1320
  %155 = getelementptr inbounds %struct._checker, %struct._checker* %154, i32 0, i32 12, !dbg !1321
  %156 = load i64, i64* %155, align 8, !dbg !1321
  %157 = call %struct._thread* @thread_add_timer(%struct._thread_master* %151, i32 (%struct._thread*)* @smtp_connect_thread, i8* %153, i64 %156), !dbg !1322
  store i32 0, i32* %4, align 4, !dbg !1323
  br label %171, !dbg !1323

; <label>:158:                                    ; preds = %3
  %159 = load %struct._checker*, %struct._checker** %8, align 8, !dbg !1324
  %160 = getelementptr inbounds %struct._checker, %struct._checker* %159, i32 0, i32 16, !dbg !1325
  store i32 0, i32* %160, align 8, !dbg !1326
  %161 = load %struct._smtp_checker*, %struct._smtp_checker** %9, align 8, !dbg !1327
  %162 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %161, i32 0, i32 1, !dbg !1328
  %163 = load i32, i32* %162, align 8, !dbg !1329
  %164 = add i32 %163, 1, !dbg !1329
  store i32 %164, i32* %162, align 8, !dbg !1329
  %165 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !1330
  %166 = getelementptr inbounds %struct._thread, %struct._thread* %165, i32 0, i32 2, !dbg !1331
  %167 = load %struct._thread_master*, %struct._thread_master** %166, align 8, !dbg !1331
  %168 = load %struct._checker*, %struct._checker** %8, align 8, !dbg !1332
  %169 = bitcast %struct._checker* %168 to i8*, !dbg !1332
  %170 = call %struct._thread* @thread_add_timer(%struct._thread_master* %167, i32 (%struct._thread*)* @smtp_connect_thread, i8* %169, i64 1), !dbg !1333
  store i32 0, i32* %4, align 4, !dbg !1334
  br label %171, !dbg !1334

; <label>:171:                                    ; preds = %158, %144, %60
  %172 = load i32, i32* %4, align 4, !dbg !1335
  ret i32 %172, !dbg !1335
}

declare i8* @inet_sockaddrtopair(%struct.sockaddr_storage*) #1

; Function Attrs: nounwind uwtable
define internal i32 @smtp_engine_thread(%struct._thread*) #0 !dbg !1336 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._thread*, align 8
  %4 = alloca %struct._checker*, align 8
  %5 = alloca %struct._smtp_checker*, align 8
  %6 = alloca %struct._conn_opts*, align 8
  store %struct._thread* %0, %struct._thread** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %3, metadata !1337, metadata !475), !dbg !1338
  call void @llvm.dbg.declare(metadata %struct._checker** %4, metadata !1339, metadata !475), !dbg !1340
  %7 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1341
  %8 = getelementptr inbounds %struct._thread, %struct._thread* %7, i32 0, i32 4, !dbg !1342
  %9 = load i8*, i8** %8, align 8, !dbg !1342
  %10 = bitcast i8* %9 to %struct._checker*, !dbg !1343
  store %struct._checker* %10, %struct._checker** %4, align 8, !dbg !1340
  call void @llvm.dbg.declare(metadata %struct._smtp_checker** %5, metadata !1344, metadata !475), !dbg !1345
  %11 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !1346
  %12 = getelementptr inbounds %struct._checker, %struct._checker* %11, i32 0, i32 6, !dbg !1347
  %13 = load i8*, i8** %12, align 8, !dbg !1347
  %14 = bitcast i8* %13 to %struct._smtp_checker*, !dbg !1348
  store %struct._smtp_checker* %14, %struct._smtp_checker** %5, align 8, !dbg !1345
  call void @llvm.dbg.declare(metadata %struct._conn_opts** %6, metadata !1349, metadata !475), !dbg !1350
  %15 = load %struct._smtp_checker*, %struct._smtp_checker** %5, align 8, !dbg !1351
  %16 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %15, i32 0, i32 2, !dbg !1352
  %17 = load %struct._conn_opts*, %struct._conn_opts** %16, align 8, !dbg !1352
  store %struct._conn_opts* %17, %struct._conn_opts** %6, align 8, !dbg !1350
  %18 = load %struct._smtp_checker*, %struct._smtp_checker** %5, align 8, !dbg !1353
  %19 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %18, i32 0, i32 6, !dbg !1354
  %20 = load i32, i32* %19, align 8, !dbg !1354
  switch i32 %20, label %77 [
    i32 1, label %21
    i32 2, label %25
    i32 3, label %47
    i32 4, label %51
    i32 5, label %70
    i32 6, label %74
  ], !dbg !1355

; <label>:21:                                     ; preds = %1
  %22 = load %struct._smtp_checker*, %struct._smtp_checker** %5, align 8, !dbg !1356
  %23 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %22, i32 0, i32 6, !dbg !1358
  store i32 2, i32* %23, align 8, !dbg !1359
  %24 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1360
  call void @smtp_get_line(%struct._thread* %24, i32 (%struct._thread*)* @smtp_engine_thread), !dbg !1361
  store i32 0, i32* %2, align 4, !dbg !1362
  br label %81, !dbg !1362

; <label>:25:                                     ; preds = %1
  %26 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1363
  %27 = call i32 @smtp_get_status(%struct._thread* %26), !dbg !1365
  %28 = icmp ne i32 %27, 220, !dbg !1366
  br i1 %28, label %29, label %35, !dbg !1367

; <label>:29:                                     ; preds = %25
  %30 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1368
  %31 = load %struct._conn_opts*, %struct._conn_opts** %6, align 8, !dbg !1370
  %32 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %31, i32 0, i32 0, !dbg !1371
  %33 = call i8* @inet_sockaddrtopair(%struct.sockaddr_storage* %32), !dbg !1372
  %34 = call i32 (%struct._thread*, i32, i8*, ...) @smtp_final(%struct._thread* %30, i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i32 0, i32 0), i8* %33), !dbg !1373
  br label %46, !dbg !1374

; <label>:35:                                     ; preds = %25
  %36 = load %struct._smtp_checker*, %struct._smtp_checker** %5, align 8, !dbg !1375
  %37 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %36, i32 0, i32 6, !dbg !1377
  store i32 3, i32* %37, align 8, !dbg !1378
  %38 = load %struct._smtp_checker*, %struct._smtp_checker** %5, align 8, !dbg !1379
  %39 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %38, i32 0, i32 3, !dbg !1380
  %40 = getelementptr inbounds [512 x i8], [512 x i8]* %39, i32 0, i32 0, !dbg !1379
  %41 = load %struct._smtp_checker*, %struct._smtp_checker** %5, align 8, !dbg !1381
  %42 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %41, i32 0, i32 0, !dbg !1382
  %43 = load i8*, i8** %42, align 8, !dbg !1382
  %44 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %40, i64 512, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* %43) #5, !dbg !1383
  %45 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1384
  call void @smtp_put_line(%struct._thread* %45, i32 (%struct._thread*)* @smtp_engine_thread), !dbg !1385
  br label %46

; <label>:46:                                     ; preds = %35, %29
  br label %80, !dbg !1386

; <label>:47:                                     ; preds = %1
  %48 = load %struct._smtp_checker*, %struct._smtp_checker** %5, align 8, !dbg !1387
  %49 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %48, i32 0, i32 6, !dbg !1388
  store i32 4, i32* %49, align 8, !dbg !1389
  %50 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1390
  call void @smtp_get_line(%struct._thread* %50, i32 (%struct._thread*)* @smtp_engine_thread), !dbg !1391
  br label %80, !dbg !1392

; <label>:51:                                     ; preds = %1
  %52 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1393
  %53 = call i32 @smtp_get_status(%struct._thread* %52), !dbg !1395
  %54 = icmp ne i32 %53, 250, !dbg !1396
  br i1 %54, label %55, label %61, !dbg !1397

; <label>:55:                                     ; preds = %51
  %56 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1398
  %57 = load %struct._conn_opts*, %struct._conn_opts** %6, align 8, !dbg !1400
  %58 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %57, i32 0, i32 0, !dbg !1401
  %59 = call i8* @inet_sockaddrtopair(%struct.sockaddr_storage* %58), !dbg !1402
  %60 = call i32 (%struct._thread*, i32, i8*, ...) @smtp_final(%struct._thread* %56, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i32 0, i32 0), i8* %59), !dbg !1403
  br label %69, !dbg !1404

; <label>:61:                                     ; preds = %51
  %62 = load %struct._smtp_checker*, %struct._smtp_checker** %5, align 8, !dbg !1405
  %63 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %62, i32 0, i32 6, !dbg !1407
  store i32 5, i32* %63, align 8, !dbg !1408
  %64 = load %struct._smtp_checker*, %struct._smtp_checker** %5, align 8, !dbg !1409
  %65 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %64, i32 0, i32 3, !dbg !1410
  %66 = getelementptr inbounds [512 x i8], [512 x i8]* %65, i32 0, i32 0, !dbg !1409
  %67 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %66, i64 512, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0)) #5, !dbg !1411
  %68 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1412
  call void @smtp_put_line(%struct._thread* %68, i32 (%struct._thread*)* @smtp_engine_thread), !dbg !1413
  br label %69

; <label>:69:                                     ; preds = %61, %55
  br label %80, !dbg !1414

; <label>:70:                                     ; preds = %1
  %71 = load %struct._smtp_checker*, %struct._smtp_checker** %5, align 8, !dbg !1415
  %72 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %71, i32 0, i32 6, !dbg !1416
  store i32 6, i32* %72, align 8, !dbg !1417
  %73 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1418
  call void @smtp_get_line(%struct._thread* %73, i32 (%struct._thread*)* @smtp_engine_thread), !dbg !1419
  br label %80, !dbg !1420

; <label>:74:                                     ; preds = %1
  %75 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1421
  %76 = call i32 (%struct._thread*, i32, i8*, ...) @smtp_final(%struct._thread* %75, i32 0, i8* null), !dbg !1422
  br label %80, !dbg !1423

; <label>:77:                                     ; preds = %1
  %78 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1424
  %79 = call i32 (%struct._thread*, i32, i8*, ...) @smtp_final(%struct._thread* %78, i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i32 0, i32 0)), !dbg !1425
  br label %80, !dbg !1426

; <label>:80:                                     ; preds = %77, %74, %70, %69, %47, %46
  store i32 0, i32* %2, align 4, !dbg !1427
  br label %81, !dbg !1427

; <label>:81:                                     ; preds = %80, %21
  %82 = load i32, i32* %2, align 4, !dbg !1428
  ret i32 %82, !dbg !1428
}

declare i32 @socket_state(%struct._thread*, i32 (%struct._thread*)*) #1

declare void @thread_close_fd(%struct._thread*) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare i8* @strncat(i8*, i8*, i64) #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @vlog_message(i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #3

; Function Attrs: nounwind
declare i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind uwtable
define internal void @smtp_get_line(%struct._thread*, i32 (%struct._thread*)*) #0 !dbg !1429 {
  %3 = alloca %struct._thread*, align 8
  %4 = alloca i32 (%struct._thread*)*, align 8
  %5 = alloca %struct._checker*, align 8
  %6 = alloca %struct._smtp_checker*, align 8
  %7 = alloca %struct._conn_opts*, align 8
  store %struct._thread* %0, %struct._thread** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %3, metadata !1432, metadata !475), !dbg !1433
  store i32 (%struct._thread*)* %1, i32 (%struct._thread*)** %4, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct._thread*)** %4, metadata !1434, metadata !475), !dbg !1435
  call void @llvm.dbg.declare(metadata %struct._checker** %5, metadata !1436, metadata !475), !dbg !1437
  %8 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1438
  %9 = getelementptr inbounds %struct._thread, %struct._thread* %8, i32 0, i32 4, !dbg !1439
  %10 = load i8*, i8** %9, align 8, !dbg !1439
  %11 = bitcast i8* %10 to %struct._checker*, !dbg !1440
  store %struct._checker* %11, %struct._checker** %5, align 8, !dbg !1437
  call void @llvm.dbg.declare(metadata %struct._smtp_checker** %6, metadata !1441, metadata !475), !dbg !1442
  %12 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !1443
  %13 = getelementptr inbounds %struct._checker, %struct._checker* %12, i32 0, i32 6, !dbg !1444
  %14 = load i8*, i8** %13, align 8, !dbg !1444
  %15 = bitcast i8* %14 to %struct._smtp_checker*, !dbg !1445
  store %struct._smtp_checker* %15, %struct._smtp_checker** %6, align 8, !dbg !1442
  call void @llvm.dbg.declare(metadata %struct._conn_opts** %7, metadata !1446, metadata !475), !dbg !1447
  %16 = load %struct._smtp_checker*, %struct._smtp_checker** %6, align 8, !dbg !1448
  %17 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %16, i32 0, i32 2, !dbg !1449
  %18 = load %struct._conn_opts*, %struct._conn_opts** %17, align 8, !dbg !1449
  store %struct._conn_opts* %18, %struct._conn_opts** %7, align 8, !dbg !1447
  %19 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1450
  call void @smtp_clear_buff(%struct._thread* %19), !dbg !1451
  %20 = load i32 (%struct._thread*)*, i32 (%struct._thread*)** %4, align 8, !dbg !1452
  %21 = load %struct._smtp_checker*, %struct._smtp_checker** %6, align 8, !dbg !1453
  %22 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %21, i32 0, i32 5, !dbg !1454
  store i32 (%struct._thread*)* %20, i32 (%struct._thread*)** %22, align 8, !dbg !1455
  %23 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1456
  %24 = getelementptr inbounds %struct._thread, %struct._thread* %23, i32 0, i32 2, !dbg !1457
  %25 = load %struct._thread_master*, %struct._thread_master** %24, align 8, !dbg !1457
  %26 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !1458
  %27 = bitcast %struct._checker* %26 to i8*, !dbg !1458
  %28 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1459
  %29 = getelementptr inbounds %struct._thread, %struct._thread* %28, i32 0, i32 6, !dbg !1460
  %30 = bitcast %union.anon* %29 to i32*, !dbg !1461
  %31 = load i32, i32* %30, align 8, !dbg !1461
  %32 = load %struct._conn_opts*, %struct._conn_opts** %7, align 8, !dbg !1462
  %33 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %32, i32 0, i32 3, !dbg !1463
  %34 = load i32, i32* %33, align 8, !dbg !1463
  %35 = zext i32 %34 to i64, !dbg !1462
  %36 = call %struct._thread* @thread_add_read(%struct._thread_master* %25, i32 (%struct._thread*)* @smtp_get_line_cb, i8* %27, i32 %31, i64 %35), !dbg !1464
  %37 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1465
  %38 = call i32 @thread_del_write(%struct._thread* %37), !dbg !1466
  ret void, !dbg !1467
}

; Function Attrs: nounwind uwtable
define internal i32 @smtp_get_status(%struct._thread*) #0 !dbg !1468 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._thread*, align 8
  %4 = alloca %struct._checker*, align 8
  %5 = alloca %struct._smtp_checker*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct._thread* %0, %struct._thread** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %3, metadata !1469, metadata !475), !dbg !1470
  call void @llvm.dbg.declare(metadata %struct._checker** %4, metadata !1471, metadata !475), !dbg !1472
  %9 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1473
  %10 = getelementptr inbounds %struct._thread, %struct._thread* %9, i32 0, i32 4, !dbg !1474
  %11 = load i8*, i8** %10, align 8, !dbg !1474
  %12 = bitcast i8* %11 to %struct._checker*, !dbg !1475
  store %struct._checker* %12, %struct._checker** %4, align 8, !dbg !1472
  call void @llvm.dbg.declare(metadata %struct._smtp_checker** %5, metadata !1476, metadata !475), !dbg !1477
  %13 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !1478
  %14 = getelementptr inbounds %struct._checker, %struct._checker* %13, i32 0, i32 6, !dbg !1479
  %15 = load i8*, i8** %14, align 8, !dbg !1479
  %16 = bitcast i8* %15 to %struct._smtp_checker*, !dbg !1480
  store %struct._smtp_checker* %16, %struct._smtp_checker** %5, align 8, !dbg !1477
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1481, metadata !475), !dbg !1482
  %17 = load %struct._smtp_checker*, %struct._smtp_checker** %5, align 8, !dbg !1483
  %18 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %17, i32 0, i32 3, !dbg !1484
  %19 = getelementptr inbounds [512 x i8], [512 x i8]* %18, i32 0, i32 0, !dbg !1483
  store i8* %19, i8** %6, align 8, !dbg !1482
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1485, metadata !475), !dbg !1486
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1487, metadata !475), !dbg !1488
  %20 = load i8*, i8** %6, align 8, !dbg !1489
  %21 = call i64 @strtoul(i8* %20, i8** %8, i32 10) #5, !dbg !1490
  %22 = trunc i64 %21 to i32, !dbg !1490
  store i32 %22, i32* %7, align 4, !dbg !1491
  %23 = load i8*, i8** %8, align 8, !dbg !1492
  %24 = load i8*, i8** %6, align 8, !dbg !1494
  %25 = ptrtoint i8* %23 to i64, !dbg !1495
  %26 = ptrtoint i8* %24 to i64, !dbg !1495
  %27 = sub i64 %25, %26, !dbg !1495
  %28 = icmp ne i64 %27, 3, !dbg !1496
  br i1 %28, label %39, label %29, !dbg !1497

; <label>:29:                                     ; preds = %1
  %30 = load i8*, i8** %8, align 8, !dbg !1498
  %31 = load i8, i8* %30, align 1, !dbg !1499
  %32 = sext i8 %31 to i32, !dbg !1499
  %33 = icmp ne i32 %32, 0, !dbg !1499
  br i1 %33, label %34, label %40, !dbg !1500

; <label>:34:                                     ; preds = %29
  %35 = load i8*, i8** %8, align 8, !dbg !1501
  %36 = load i8, i8* %35, align 1, !dbg !1503
  %37 = sext i8 %36 to i32, !dbg !1503
  %38 = icmp ne i32 %37, 32, !dbg !1504
  br i1 %38, label %39, label %40, !dbg !1505

; <label>:39:                                     ; preds = %34, %1
  store i32 -1, i32* %2, align 4, !dbg !1507
  br label %42, !dbg !1507

; <label>:40:                                     ; preds = %34, %29
  %41 = load i32, i32* %7, align 4, !dbg !1508
  store i32 %41, i32* %2, align 4, !dbg !1509
  br label %42, !dbg !1509

; <label>:42:                                     ; preds = %40, %39
  %43 = load i32, i32* %2, align 4, !dbg !1510
  ret i32 %43, !dbg !1510
}

; Function Attrs: nounwind uwtable
define internal void @smtp_put_line(%struct._thread*, i32 (%struct._thread*)*) #0 !dbg !1511 {
  %3 = alloca %struct._thread*, align 8
  %4 = alloca i32 (%struct._thread*)*, align 8
  %5 = alloca %struct._checker*, align 8
  %6 = alloca %struct._smtp_checker*, align 8
  %7 = alloca %struct._conn_opts*, align 8
  store %struct._thread* %0, %struct._thread** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %3, metadata !1512, metadata !475), !dbg !1513
  store i32 (%struct._thread*)* %1, i32 (%struct._thread*)** %4, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct._thread*)** %4, metadata !1514, metadata !475), !dbg !1515
  call void @llvm.dbg.declare(metadata %struct._checker** %5, metadata !1516, metadata !475), !dbg !1517
  %8 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1518
  %9 = getelementptr inbounds %struct._thread, %struct._thread* %8, i32 0, i32 4, !dbg !1519
  %10 = load i8*, i8** %9, align 8, !dbg !1519
  %11 = bitcast i8* %10 to %struct._checker*, !dbg !1520
  store %struct._checker* %11, %struct._checker** %5, align 8, !dbg !1517
  call void @llvm.dbg.declare(metadata %struct._smtp_checker** %6, metadata !1521, metadata !475), !dbg !1522
  %12 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !1523
  %13 = getelementptr inbounds %struct._checker, %struct._checker* %12, i32 0, i32 6, !dbg !1524
  %14 = load i8*, i8** %13, align 8, !dbg !1524
  %15 = bitcast i8* %14 to %struct._smtp_checker*, !dbg !1525
  store %struct._smtp_checker* %15, %struct._smtp_checker** %6, align 8, !dbg !1522
  call void @llvm.dbg.declare(metadata %struct._conn_opts** %7, metadata !1526, metadata !475), !dbg !1527
  %16 = load %struct._smtp_checker*, %struct._smtp_checker** %6, align 8, !dbg !1528
  %17 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %16, i32 0, i32 2, !dbg !1529
  %18 = load %struct._conn_opts*, %struct._conn_opts** %17, align 8, !dbg !1529
  store %struct._conn_opts* %18, %struct._conn_opts** %7, align 8, !dbg !1527
  %19 = load %struct._smtp_checker*, %struct._smtp_checker** %6, align 8, !dbg !1530
  %20 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %19, i32 0, i32 3, !dbg !1531
  %21 = getelementptr inbounds [512 x i8], [512 x i8]* %20, i64 0, i64 511, !dbg !1530
  store i8 0, i8* %21, align 1, !dbg !1532
  %22 = load %struct._smtp_checker*, %struct._smtp_checker** %6, align 8, !dbg !1533
  %23 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %22, i32 0, i32 3, !dbg !1534
  %24 = getelementptr inbounds [512 x i8], [512 x i8]* %23, i32 0, i32 0, !dbg !1533
  %25 = call i64 @strlen(i8* %24) #9, !dbg !1535
  %26 = load %struct._smtp_checker*, %struct._smtp_checker** %6, align 8, !dbg !1536
  %27 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %26, i32 0, i32 4, !dbg !1537
  store i64 %25, i64* %27, align 8, !dbg !1538
  %28 = load i32 (%struct._thread*)*, i32 (%struct._thread*)** %4, align 8, !dbg !1539
  %29 = load %struct._smtp_checker*, %struct._smtp_checker** %6, align 8, !dbg !1540
  %30 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %29, i32 0, i32 5, !dbg !1541
  store i32 (%struct._thread*)* %28, i32 (%struct._thread*)** %30, align 8, !dbg !1542
  %31 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1543
  %32 = getelementptr inbounds %struct._thread, %struct._thread* %31, i32 0, i32 2, !dbg !1544
  %33 = load %struct._thread_master*, %struct._thread_master** %32, align 8, !dbg !1544
  %34 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !1545
  %35 = bitcast %struct._checker* %34 to i8*, !dbg !1545
  %36 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1546
  %37 = getelementptr inbounds %struct._thread, %struct._thread* %36, i32 0, i32 6, !dbg !1547
  %38 = bitcast %union.anon* %37 to i32*, !dbg !1548
  %39 = load i32, i32* %38, align 8, !dbg !1548
  %40 = load %struct._conn_opts*, %struct._conn_opts** %7, align 8, !dbg !1549
  %41 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %40, i32 0, i32 3, !dbg !1550
  %42 = load i32, i32* %41, align 8, !dbg !1550
  %43 = zext i32 %42 to i64, !dbg !1549
  %44 = call %struct._thread* @thread_add_write(%struct._thread_master* %33, i32 (%struct._thread*)* @smtp_put_line_cb, i8* %35, i32 %39, i64 %43), !dbg !1551
  %45 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1552
  %46 = call i32 @thread_del_read(%struct._thread* %45), !dbg !1553
  ret void, !dbg !1554
}

; Function Attrs: nounwind uwtable
define internal void @smtp_clear_buff(%struct._thread*) #0 !dbg !1555 {
  %2 = alloca %struct._thread*, align 8
  %3 = alloca %struct._checker*, align 8
  %4 = alloca %struct._smtp_checker*, align 8
  store %struct._thread* %0, %struct._thread** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %2, metadata !1558, metadata !475), !dbg !1559
  call void @llvm.dbg.declare(metadata %struct._checker** %3, metadata !1560, metadata !475), !dbg !1561
  %5 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1562
  %6 = getelementptr inbounds %struct._thread, %struct._thread* %5, i32 0, i32 4, !dbg !1563
  %7 = load i8*, i8** %6, align 8, !dbg !1563
  %8 = bitcast i8* %7 to %struct._checker*, !dbg !1564
  store %struct._checker* %8, %struct._checker** %3, align 8, !dbg !1561
  call void @llvm.dbg.declare(metadata %struct._smtp_checker** %4, metadata !1565, metadata !475), !dbg !1566
  %9 = load %struct._checker*, %struct._checker** %3, align 8, !dbg !1567
  %10 = getelementptr inbounds %struct._checker, %struct._checker* %9, i32 0, i32 6, !dbg !1568
  %11 = load i8*, i8** %10, align 8, !dbg !1568
  %12 = bitcast i8* %11 to %struct._smtp_checker*, !dbg !1569
  store %struct._smtp_checker* %12, %struct._smtp_checker** %4, align 8, !dbg !1566
  %13 = load %struct._smtp_checker*, %struct._smtp_checker** %4, align 8, !dbg !1570
  %14 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %13, i32 0, i32 3, !dbg !1571
  %15 = getelementptr inbounds [512 x i8], [512 x i8]* %14, i32 0, i32 0, !dbg !1572
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 512, i32 8, i1 false), !dbg !1572
  %16 = load %struct._smtp_checker*, %struct._smtp_checker** %4, align 8, !dbg !1573
  %17 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %16, i32 0, i32 4, !dbg !1574
  store i64 0, i64* %17, align 8, !dbg !1575
  ret void, !dbg !1576
}

declare %struct._thread* @thread_add_read(%struct._thread_master*, i32 (%struct._thread*)*, i8*, i32, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @smtp_get_line_cb(%struct._thread*) #0 !dbg !1577 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._thread*, align 8
  %4 = alloca %struct._checker*, align 8
  %5 = alloca %struct._smtp_checker*, align 8
  %6 = alloca %struct._conn_opts*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct._thread* %0, %struct._thread** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %3, metadata !1578, metadata !475), !dbg !1579
  call void @llvm.dbg.declare(metadata %struct._checker** %4, metadata !1580, metadata !475), !dbg !1581
  %9 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1582
  %10 = getelementptr inbounds %struct._thread, %struct._thread* %9, i32 0, i32 4, !dbg !1583
  %11 = load i8*, i8** %10, align 8, !dbg !1583
  %12 = bitcast i8* %11 to %struct._checker*, !dbg !1584
  store %struct._checker* %12, %struct._checker** %4, align 8, !dbg !1581
  call void @llvm.dbg.declare(metadata %struct._smtp_checker** %5, metadata !1585, metadata !475), !dbg !1586
  %13 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !1587
  %14 = getelementptr inbounds %struct._checker, %struct._checker* %13, i32 0, i32 6, !dbg !1588
  %15 = load i8*, i8** %14, align 8, !dbg !1588
  %16 = bitcast i8* %15 to %struct._smtp_checker*, !dbg !1589
  store %struct._smtp_checker* %16, %struct._smtp_checker** %5, align 8, !dbg !1586
  call void @llvm.dbg.declare(metadata %struct._conn_opts** %6, metadata !1590, metadata !475), !dbg !1591
  %17 = load %struct._smtp_checker*, %struct._smtp_checker** %5, align 8, !dbg !1592
  %18 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %17, i32 0, i32 2, !dbg !1593
  %19 = load %struct._conn_opts*, %struct._conn_opts** %18, align 8, !dbg !1593
  store %struct._conn_opts* %19, %struct._conn_opts** %6, align 8, !dbg !1591
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1594, metadata !475), !dbg !1595
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1596, metadata !475), !dbg !1599
  %20 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1600
  %21 = getelementptr inbounds %struct._thread, %struct._thread* %20, i32 0, i32 1, !dbg !1602
  %22 = load i32, i32* %21, align 8, !dbg !1602
  %23 = icmp eq i32 %22, 9, !dbg !1603
  br i1 %23, label %24, label %30, !dbg !1604

; <label>:24:                                     ; preds = %1
  %25 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1605
  %26 = load %struct._conn_opts*, %struct._conn_opts** %6, align 8, !dbg !1607
  %27 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %26, i32 0, i32 0, !dbg !1608
  %28 = call i8* @inet_sockaddrtopair(%struct.sockaddr_storage* %27), !dbg !1609
  %29 = call i32 (%struct._thread*, i32, i8*, ...) @smtp_final(%struct._thread* %25, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i32 0, i32 0), i8* %28), !dbg !1610
  store i32 0, i32* %2, align 4, !dbg !1611
  br label %142, !dbg !1611

; <label>:30:                                     ; preds = %1
  %31 = load %struct._smtp_checker*, %struct._smtp_checker** %5, align 8, !dbg !1612
  %32 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %31, i32 0, i32 4, !dbg !1614
  %33 = load i64, i64* %32, align 8, !dbg !1614
  %34 = icmp ugt i64 %33, 512, !dbg !1615
  br i1 %34, label %35, label %40, !dbg !1616

; <label>:35:                                     ; preds = %30
  %36 = load %struct._conn_opts*, %struct._conn_opts** %6, align 8, !dbg !1617
  %37 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %36, i32 0, i32 0, !dbg !1619
  %38 = call i8* @inet_sockaddrtopair(%struct.sockaddr_storage* %37), !dbg !1620
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.23, i32 0, i32 0), i8* %38), !dbg !1621
  %39 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1622
  call void @smtp_clear_buff(%struct._thread* %39), !dbg !1623
  br label %40, !dbg !1624

; <label>:40:                                     ; preds = %35, %30
  %41 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1625
  %42 = getelementptr inbounds %struct._thread, %struct._thread* %41, i32 0, i32 6, !dbg !1626
  %43 = bitcast %union.anon* %42 to i32*, !dbg !1627
  %44 = load i32, i32* %43, align 8, !dbg !1627
  %45 = load %struct._smtp_checker*, %struct._smtp_checker** %5, align 8, !dbg !1628
  %46 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %45, i32 0, i32 3, !dbg !1629
  %47 = getelementptr inbounds [512 x i8], [512 x i8]* %46, i32 0, i32 0, !dbg !1628
  %48 = load %struct._smtp_checker*, %struct._smtp_checker** %5, align 8, !dbg !1630
  %49 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %48, i32 0, i32 4, !dbg !1631
  %50 = load i64, i64* %49, align 8, !dbg !1631
  %51 = getelementptr inbounds i8, i8* %47, i64 %50, !dbg !1632
  %52 = load %struct._smtp_checker*, %struct._smtp_checker** %5, align 8, !dbg !1633
  %53 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %52, i32 0, i32 4, !dbg !1634
  %54 = load i64, i64* %53, align 8, !dbg !1634
  %55 = sub i64 512, %54, !dbg !1635
  %56 = call i64 @read(i32 %44, i8* %51, i64 %55), !dbg !1636
  store i64 %56, i64* %8, align 8, !dbg !1637
  %57 = load i64, i64* %8, align 8, !dbg !1638
  %58 = icmp eq i64 %57, -1, !dbg !1640
  br i1 %58, label %59, label %82, !dbg !1641

; <label>:59:                                     ; preds = %40
  %60 = call i32* @__errno_location() #2, !dbg !1642
  %61 = load i32, i32* %60, align 4, !dbg !1644
  %62 = icmp eq i32 %61, 11, !dbg !1645
  br i1 %62, label %67, label %63, !dbg !1646

; <label>:63:                                     ; preds = %59
  %64 = call i32* @__errno_location() #2, !dbg !1647
  %65 = load i32, i32* %64, align 4, !dbg !1649
  %66 = icmp eq i32 %65, 4, !dbg !1650
  br i1 %66, label %67, label %82, !dbg !1651

; <label>:67:                                     ; preds = %63, %59
  %68 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1652
  %69 = getelementptr inbounds %struct._thread, %struct._thread* %68, i32 0, i32 2, !dbg !1654
  %70 = load %struct._thread_master*, %struct._thread_master** %69, align 8, !dbg !1654
  %71 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !1655
  %72 = bitcast %struct._checker* %71 to i8*, !dbg !1655
  %73 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1656
  %74 = getelementptr inbounds %struct._thread, %struct._thread* %73, i32 0, i32 6, !dbg !1657
  %75 = bitcast %union.anon* %74 to i32*, !dbg !1658
  %76 = load i32, i32* %75, align 8, !dbg !1658
  %77 = load %struct._conn_opts*, %struct._conn_opts** %6, align 8, !dbg !1659
  %78 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %77, i32 0, i32 3, !dbg !1660
  %79 = load i32, i32* %78, align 8, !dbg !1660
  %80 = zext i32 %79 to i64, !dbg !1659
  %81 = call %struct._thread* @thread_add_read(%struct._thread_master* %70, i32 (%struct._thread*)* @smtp_get_line_cb, i8* %72, i32 %76, i64 %80), !dbg !1661
  store i32 0, i32* %2, align 4, !dbg !1662
  br label %142, !dbg !1662

; <label>:82:                                     ; preds = %63, %40
  %83 = load i64, i64* %8, align 8, !dbg !1663
  %84 = icmp sgt i64 %83, 0, !dbg !1665
  br i1 %84, label %85, label %91, !dbg !1666

; <label>:85:                                     ; preds = %82
  %86 = load i64, i64* %8, align 8, !dbg !1667
  %87 = load %struct._smtp_checker*, %struct._smtp_checker** %5, align 8, !dbg !1668
  %88 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %87, i32 0, i32 4, !dbg !1669
  %89 = load i64, i64* %88, align 8, !dbg !1670
  %90 = add i64 %89, %86, !dbg !1670
  store i64 %90, i64* %88, align 8, !dbg !1670
  br label %91, !dbg !1668

; <label>:91:                                     ; preds = %85, %82
  br label %92

; <label>:92:                                     ; preds = %91
  store i32 0, i32* %7, align 4, !dbg !1671
  br label %93, !dbg !1673

; <label>:93:                                     ; preds = %115, %92
  %94 = load i32, i32* %7, align 4, !dbg !1674
  %95 = icmp ult i32 %94, 512, !dbg !1677
  br i1 %95, label %96, label %118, !dbg !1678

; <label>:96:                                     ; preds = %93
  %97 = load i32, i32* %7, align 4, !dbg !1679
  %98 = zext i32 %97 to i64, !dbg !1682
  %99 = load %struct._smtp_checker*, %struct._smtp_checker** %5, align 8, !dbg !1682
  %100 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %99, i32 0, i32 3, !dbg !1683
  %101 = getelementptr inbounds [512 x i8], [512 x i8]* %100, i64 0, i64 %98, !dbg !1682
  %102 = load i8, i8* %101, align 1, !dbg !1682
  %103 = sext i8 %102 to i32, !dbg !1682
  %104 = icmp eq i32 %103, 10, !dbg !1684
  br i1 %104, label %105, label %114, !dbg !1685

; <label>:105:                                    ; preds = %96
  %106 = load %struct._smtp_checker*, %struct._smtp_checker** %5, align 8, !dbg !1686
  %107 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %106, i32 0, i32 3, !dbg !1688
  %108 = getelementptr inbounds [512 x i8], [512 x i8]* %107, i64 0, i64 511, !dbg !1686
  store i8 0, i8* %108, align 1, !dbg !1689
  %109 = load %struct._smtp_checker*, %struct._smtp_checker** %5, align 8, !dbg !1690
  %110 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %109, i32 0, i32 5, !dbg !1691
  %111 = load i32 (%struct._thread*)*, i32 (%struct._thread*)** %110, align 8, !dbg !1691
  %112 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1692
  %113 = call i32 %111(%struct._thread* %112), !dbg !1693
  store i32 0, i32* %2, align 4, !dbg !1694
  br label %142, !dbg !1694

; <label>:114:                                    ; preds = %96
  br label %115, !dbg !1695

; <label>:115:                                    ; preds = %114
  %116 = load i32, i32* %7, align 4, !dbg !1696
  %117 = add i32 %116, 1, !dbg !1696
  store i32 %117, i32* %7, align 4, !dbg !1696
  br label %93, !dbg !1698, !llvm.loop !1699

; <label>:118:                                    ; preds = %93
  %119 = load i64, i64* %8, align 8, !dbg !1701
  %120 = icmp sle i64 %119, 0, !dbg !1703
  br i1 %120, label %121, label %127, !dbg !1704

; <label>:121:                                    ; preds = %118
  %122 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1705
  %123 = load %struct._conn_opts*, %struct._conn_opts** %6, align 8, !dbg !1707
  %124 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %123, i32 0, i32 0, !dbg !1708
  %125 = call i8* @inet_sockaddrtopair(%struct.sockaddr_storage* %124), !dbg !1709
  %126 = call i32 (%struct._thread*, i32, i8*, ...) @smtp_final(%struct._thread* %122, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i32 0, i32 0), i8* %125), !dbg !1710
  store i32 0, i32* %2, align 4, !dbg !1711
  br label %142, !dbg !1711

; <label>:127:                                    ; preds = %118
  %128 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1712
  %129 = getelementptr inbounds %struct._thread, %struct._thread* %128, i32 0, i32 2, !dbg !1713
  %130 = load %struct._thread_master*, %struct._thread_master** %129, align 8, !dbg !1713
  %131 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !1714
  %132 = bitcast %struct._checker* %131 to i8*, !dbg !1714
  %133 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1715
  %134 = getelementptr inbounds %struct._thread, %struct._thread* %133, i32 0, i32 6, !dbg !1716
  %135 = bitcast %union.anon* %134 to i32*, !dbg !1717
  %136 = load i32, i32* %135, align 8, !dbg !1717
  %137 = load %struct._conn_opts*, %struct._conn_opts** %6, align 8, !dbg !1718
  %138 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %137, i32 0, i32 3, !dbg !1719
  %139 = load i32, i32* %138, align 8, !dbg !1719
  %140 = zext i32 %139 to i64, !dbg !1718
  %141 = call %struct._thread* @thread_add_read(%struct._thread_master* %130, i32 (%struct._thread*)* @smtp_get_line_cb, i8* %132, i32 %136, i64 %140), !dbg !1720
  store i32 0, i32* %2, align 4, !dbg !1721
  br label %142, !dbg !1721

; <label>:142:                                    ; preds = %127, %121, %105, %67, %24
  %143 = load i32, i32* %2, align 4, !dbg !1722
  ret i32 %143, !dbg !1722
}

declare i32 @thread_del_write(%struct._thread*) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #6

declare i64 @read(i32, i8*, i64) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

; Function Attrs: nounwind
declare i64 @strtoul(i8*, i8**, i32) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #8

declare %struct._thread* @thread_add_write(%struct._thread_master*, i32 (%struct._thread*)*, i8*, i32, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @smtp_put_line_cb(%struct._thread*) #0 !dbg !1723 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._thread*, align 8
  %4 = alloca %struct._checker*, align 8
  %5 = alloca %struct._smtp_checker*, align 8
  %6 = alloca %struct._conn_opts*, align 8
  %7 = alloca i64, align 8
  store %struct._thread* %0, %struct._thread** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %3, metadata !1724, metadata !475), !dbg !1725
  call void @llvm.dbg.declare(metadata %struct._checker** %4, metadata !1726, metadata !475), !dbg !1727
  %8 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1728
  %9 = getelementptr inbounds %struct._thread, %struct._thread* %8, i32 0, i32 4, !dbg !1729
  %10 = load i8*, i8** %9, align 8, !dbg !1729
  %11 = bitcast i8* %10 to %struct._checker*, !dbg !1730
  store %struct._checker* %11, %struct._checker** %4, align 8, !dbg !1727
  call void @llvm.dbg.declare(metadata %struct._smtp_checker** %5, metadata !1731, metadata !475), !dbg !1732
  %12 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !1733
  %13 = getelementptr inbounds %struct._checker, %struct._checker* %12, i32 0, i32 6, !dbg !1734
  %14 = load i8*, i8** %13, align 8, !dbg !1734
  %15 = bitcast i8* %14 to %struct._smtp_checker*, !dbg !1735
  store %struct._smtp_checker* %15, %struct._smtp_checker** %5, align 8, !dbg !1732
  call void @llvm.dbg.declare(metadata %struct._conn_opts** %6, metadata !1736, metadata !475), !dbg !1737
  %16 = load %struct._smtp_checker*, %struct._smtp_checker** %5, align 8, !dbg !1738
  %17 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %16, i32 0, i32 2, !dbg !1739
  %18 = load %struct._conn_opts*, %struct._conn_opts** %17, align 8, !dbg !1739
  store %struct._conn_opts* %18, %struct._conn_opts** %6, align 8, !dbg !1737
  call void @llvm.dbg.declare(metadata i64* %7, metadata !1740, metadata !475), !dbg !1741
  %19 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1742
  %20 = getelementptr inbounds %struct._thread, %struct._thread* %19, i32 0, i32 1, !dbg !1744
  %21 = load i32, i32* %20, align 8, !dbg !1744
  %22 = icmp eq i32 %21, 8, !dbg !1745
  br i1 %22, label %23, label %29, !dbg !1746

; <label>:23:                                     ; preds = %1
  %24 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1747
  %25 = load %struct._conn_opts*, %struct._conn_opts** %6, align 8, !dbg !1749
  %26 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %25, i32 0, i32 0, !dbg !1750
  %27 = call i8* @inet_sockaddrtopair(%struct.sockaddr_storage* %26), !dbg !1751
  %28 = call i32 (%struct._thread*, i32, i8*, ...) @smtp_final(%struct._thread* %24, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i32 0, i32 0), i8* %27), !dbg !1752
  store i32 0, i32* %2, align 4, !dbg !1753
  br label %81, !dbg !1753

; <label>:29:                                     ; preds = %1
  %30 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1754
  %31 = getelementptr inbounds %struct._thread, %struct._thread* %30, i32 0, i32 6, !dbg !1755
  %32 = bitcast %union.anon* %31 to i32*, !dbg !1756
  %33 = load i32, i32* %32, align 8, !dbg !1756
  %34 = load %struct._smtp_checker*, %struct._smtp_checker** %5, align 8, !dbg !1757
  %35 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %34, i32 0, i32 3, !dbg !1758
  %36 = getelementptr inbounds [512 x i8], [512 x i8]* %35, i32 0, i32 0, !dbg !1757
  %37 = load %struct._smtp_checker*, %struct._smtp_checker** %5, align 8, !dbg !1759
  %38 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %37, i32 0, i32 4, !dbg !1760
  %39 = load i64, i64* %38, align 8, !dbg !1760
  %40 = call i64 @write(i32 %33, i8* %36, i64 %39), !dbg !1761
  store i64 %40, i64* %7, align 8, !dbg !1762
  %41 = load i64, i64* %7, align 8, !dbg !1763
  %42 = icmp eq i64 %41, -1, !dbg !1765
  br i1 %42, label %43, label %66, !dbg !1766

; <label>:43:                                     ; preds = %29
  %44 = call i32* @__errno_location() #2, !dbg !1767
  %45 = load i32, i32* %44, align 4, !dbg !1769
  %46 = icmp eq i32 %45, 11, !dbg !1770
  br i1 %46, label %51, label %47, !dbg !1771

; <label>:47:                                     ; preds = %43
  %48 = call i32* @__errno_location() #2, !dbg !1772
  %49 = load i32, i32* %48, align 4, !dbg !1774
  %50 = icmp eq i32 %49, 4, !dbg !1775
  br i1 %50, label %51, label %66, !dbg !1776

; <label>:51:                                     ; preds = %47, %43
  %52 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1777
  %53 = getelementptr inbounds %struct._thread, %struct._thread* %52, i32 0, i32 2, !dbg !1779
  %54 = load %struct._thread_master*, %struct._thread_master** %53, align 8, !dbg !1779
  %55 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !1780
  %56 = bitcast %struct._checker* %55 to i8*, !dbg !1780
  %57 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1781
  %58 = getelementptr inbounds %struct._thread, %struct._thread* %57, i32 0, i32 6, !dbg !1782
  %59 = bitcast %union.anon* %58 to i32*, !dbg !1783
  %60 = load i32, i32* %59, align 8, !dbg !1783
  %61 = load %struct._conn_opts*, %struct._conn_opts** %6, align 8, !dbg !1784
  %62 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %61, i32 0, i32 3, !dbg !1785
  %63 = load i32, i32* %62, align 8, !dbg !1785
  %64 = zext i32 %63 to i64, !dbg !1784
  %65 = call %struct._thread* @thread_add_write(%struct._thread_master* %54, i32 (%struct._thread*)* @smtp_put_line_cb, i8* %56, i32 %60, i64 %64), !dbg !1786
  store i32 0, i32* %2, align 4, !dbg !1787
  br label %81, !dbg !1787

; <label>:66:                                     ; preds = %47, %29
  %67 = load i64, i64* %7, align 8, !dbg !1788
  %68 = icmp sle i64 %67, 0, !dbg !1790
  br i1 %68, label %69, label %75, !dbg !1791

; <label>:69:                                     ; preds = %66
  %70 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1792
  %71 = load %struct._conn_opts*, %struct._conn_opts** %6, align 8, !dbg !1794
  %72 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %71, i32 0, i32 0, !dbg !1795
  %73 = call i8* @inet_sockaddrtopair(%struct.sockaddr_storage* %72), !dbg !1796
  %74 = call i32 (%struct._thread*, i32, i8*, ...) @smtp_final(%struct._thread* %70, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i32 0, i32 0), i8* %73), !dbg !1797
  store i32 0, i32* %2, align 4, !dbg !1798
  br label %81, !dbg !1798

; <label>:75:                                     ; preds = %66
  %76 = load %struct._smtp_checker*, %struct._smtp_checker** %5, align 8, !dbg !1799
  %77 = getelementptr inbounds %struct._smtp_checker, %struct._smtp_checker* %76, i32 0, i32 5, !dbg !1800
  %78 = load i32 (%struct._thread*)*, i32 (%struct._thread*)** %77, align 8, !dbg !1800
  %79 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1801
  %80 = call i32 %78(%struct._thread* %79), !dbg !1802
  store i32 0, i32* %2, align 4, !dbg !1803
  br label %81, !dbg !1803

; <label>:81:                                     ; preds = %75, %69, %51, %23
  %82 = load i32, i32* %2, align 4, !dbg !1804
  ret i32 %82, !dbg !1804
}

declare i32 @thread_del_read(%struct._thread*) #1

declare i64 @write(i32, i8*, i64) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #8

declare zeroext i1 @compare_conn_opts(%struct._conn_opts*, %struct._conn_opts*) #1

declare i8* @set_value(%struct._vector*) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

declare zeroext i1 @check_conn_opts(%struct._conn_opts*) #1

declare void @list_add(%struct._list*, i8*) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

declare void @checker_set_dst_port(%struct.sockaddr_storage*, i16 zeroext) #1

declare void @dequeue_new_checker() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!443, !444}
!llvm.ident = !{!445}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !80, globals: !437)
!1 = !DIFile(filename: "[inter]keepalived--check--check_smtp.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!2 = !{!3, !24, !31, !39, !51}
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
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "connect_result", file: !25, line: 34, size: 32, align: 32, elements: !26)
!25 = !DIFile(filename: "./../include/layer4.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!26 = !{!27, !28, !29, !30}
!27 = !DIEnumerator(name: "connect_error", value: 0)
!28 = !DIEnumerator(name: "connect_in_progress", value: 1)
!29 = !DIEnumerator(name: "connect_timeout", value: 2)
!30 = !DIEnumerator(name: "connect_success", value: 3)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !32, line: 57, size: 32, align: 32, elements: !33)
!32 = !DIFile(filename: "./../include/smtp.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!33 = !{!34, !35, !36, !37, !38}
!34 = !DIEnumerator(name: "SMTP_MSG_RS", value: 0)
!35 = !DIEnumerator(name: "SMTP_MSG_VS", value: 1)
!36 = !DIEnumerator(name: "SMTP_MSG_RS_SHUT", value: 2)
!37 = !DIEnumerator(name: "SMTP_MSG_VGROUP", value: 3)
!38 = !DIEnumerator(name: "SMTP_MSG_VRRP", value: 4)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !40, line: 24, size: 32, align: 32, elements: !41)
!40 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!41 = !{!42, !43, !44, !45, !46, !47, !48, !49, !50}
!42 = !DIEnumerator(name: "SOCK_STREAM", value: 1)
!43 = !DIEnumerator(name: "SOCK_DGRAM", value: 2)
!44 = !DIEnumerator(name: "SOCK_RAW", value: 3)
!45 = !DIEnumerator(name: "SOCK_RDM", value: 4)
!46 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5)
!47 = !DIEnumerator(name: "SOCK_DCCP", value: 6)
!48 = !DIEnumerator(name: "SOCK_PACKET", value: 10)
!49 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288)
!50 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !52, line: 40, size: 32, align: 32, elements: !53)
!52 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!53 = !{!54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79}
!54 = !DIEnumerator(name: "IPPROTO_IP", value: 0)
!55 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1)
!56 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2)
!57 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4)
!58 = !DIEnumerator(name: "IPPROTO_TCP", value: 6)
!59 = !DIEnumerator(name: "IPPROTO_EGP", value: 8)
!60 = !DIEnumerator(name: "IPPROTO_PUP", value: 12)
!61 = !DIEnumerator(name: "IPPROTO_UDP", value: 17)
!62 = !DIEnumerator(name: "IPPROTO_IDP", value: 22)
!63 = !DIEnumerator(name: "IPPROTO_TP", value: 29)
!64 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33)
!65 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41)
!66 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46)
!67 = !DIEnumerator(name: "IPPROTO_GRE", value: 47)
!68 = !DIEnumerator(name: "IPPROTO_ESP", value: 50)
!69 = !DIEnumerator(name: "IPPROTO_AH", value: 51)
!70 = !DIEnumerator(name: "IPPROTO_MTP", value: 92)
!71 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94)
!72 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98)
!73 = !DIEnumerator(name: "IPPROTO_PIM", value: 103)
!74 = !DIEnumerator(name: "IPPROTO_COMP", value: 108)
!75 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132)
!76 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136)
!77 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137)
!78 = !DIEnumerator(name: "IPPROTO_RAW", value: 255)
!79 = !DIEnumerator(name: "IPPROTO_MAX", value: 256)
!80 = !{!81, !92, !306, !178, !122, !87, !421}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "smtp_checker_t", file: !83, line: 62, baseType: !84)
!83 = !DIFile(filename: "./../include/check_smtp.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_smtp_checker", file: !83, line: 47, size: 4544, align: 64, elements: !85)
!85 = !{!86, !89, !91, !117, !121, !124, !304, !305}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "helo_name", scope: !84, file: !83, line: 49, baseType: !87, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64)
!88 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "host_ctr", scope: !84, file: !83, line: 50, baseType: !90, size: 32, align: 32, offset: 64)
!90 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "host_ptr", scope: !84, file: !83, line: 51, baseType: !92, size: 64, align: 64, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "conn_opts_t", file: !25, line: 50, baseType: !94)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_conn_opts", file: !25, line: 42, size: 2240, align: 64, elements: !95)
!95 = !{!96, !110, !111, !115, !116}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !94, file: !25, line: 43, baseType: !97, size: 1024, align: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !98, line: 166, size: 1024, align: 64, elements: !99)
!98 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!99 = !{!100, !104, !108}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !97, file: !98, line: 168, baseType: !101, size: 16, align: 16)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !102, line: 28, baseType: !103)
!102 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!103 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !97, file: !98, line: 169, baseType: !105, size: 944, align: 8, offset: 16)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 944, align: 8, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 118)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !97, file: !98, line: 170, baseType: !109, size: 64, align: 64, offset: 960)
!109 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "bindto", scope: !94, file: !25, line: 44, baseType: !97, size: 1024, align: 64, offset: 1024)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "bind_if", scope: !94, file: !25, line: 45, baseType: !112, size: 128, align: 8, offset: 2048)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 128, align: 8, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 16)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "connection_to", scope: !94, file: !25, line: 46, baseType: !90, size: 32, align: 32, offset: 2176)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "fwmark", scope: !94, file: !25, line: 48, baseType: !90, size: 32, align: 32, offset: 2208)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !84, file: !83, line: 54, baseType: !118, size: 4096, align: 8, offset: 192)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 4096, align: 8, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 512)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "buff_ctr", scope: !84, file: !83, line: 55, baseType: !122, size: 64, align: 64, offset: 4288)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !123, line: 216, baseType: !109)
!123 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!124 = !DIDerivedType(tag: DW_TAG_member, name: "buff_cb", scope: !84, file: !83, line: 56, baseType: !125, size: 64, align: 64, offset: 4352)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!128, !129}
!128 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_t", file: !4, line: 99, baseType: !131)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread", file: !4, line: 78, size: 768, align: 64, elements: !132)
!132 = !{!133, !134, !136, !268, !273, !274, !284, !297, !299}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !131, file: !4, line: 79, baseType: !109, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !131, file: !4, line: 80, baseType: !135, size: 32, align: 32, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_type_t", file: !4, line: 63, baseType: !3)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !131, file: !4, line: 81, baseType: !137, size: 64, align: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_master", file: !4, line: 112, size: 1280, align: 64, elements: !139)
!139 = !{!140, !152, !153, !154, !155, !163, !164, !165, !244, !245, !248, !259, !260, !261, !262, !263, !264, !265, !266}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !138, file: !4, line: 113, baseType: !141, size: 64, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_root_t", file: !142, line: 109, baseType: !143)
!142 = !DIFile(filename: "../../lib/rbtree.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !142, line: 106, size: 64, align: 64, elements: !144)
!144 = !{!145}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !143, file: !142, line: 108, baseType: !146, size: 64, align: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !142, line: 97, size: 192, align: 64, elements: !148)
!148 = !{!149, !150, !151}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "rb_parent_color", scope: !147, file: !142, line: 99, baseType: !109, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !147, file: !142, line: 102, baseType: !146, size: 64, align: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !147, file: !142, line: 103, baseType: !146, size: 64, align: 64, offset: 128)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !138, file: !4, line: 114, baseType: !141, size: 64, align: 64, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !138, file: !4, line: 115, baseType: !141, size: 64, align: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !138, file: !4, line: 116, baseType: !141, size: 64, align: 64, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !138, file: !4, line: 117, baseType: !156, size: 128, align: 64, offset: 256)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "list_head_t", file: !157, line: 62, baseType: !158)
!157 = !DIFile(filename: "../../lib/list_head.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !157, line: 60, size: 128, align: 64, elements: !159)
!159 = !{!160, !162}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !158, file: !157, line: 61, baseType: !161, size: 64, align: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64, align: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !158, file: !157, line: 61, baseType: !161, size: 64, align: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !138, file: !4, line: 121, baseType: !156, size: 128, align: 64, offset: 384)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "unuse", scope: !138, file: !4, line: 122, baseType: !156, size: 128, align: 64, offset: 512)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "child_pid_index", scope: !138, file: !4, line: 124, baseType: !166, size: 64, align: 64, offset: 640)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !167, line: 31, baseType: !168)
!167 = !DIFile(filename: "../../lib/list.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64, align: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_list", file: !167, line: 39, size: 320, align: 64, elements: !170)
!170 = !{!171, !179, !180, !181, !185}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !169, file: !167, line: 40, baseType: !172, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64, align: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !167, line: 33, size: 192, align: 64, elements: !174)
!174 = !{!175, !176, !177}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !173, file: !167, line: 34, baseType: !172, size: 64, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !173, file: !167, line: 35, baseType: !172, size: 64, align: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !173, file: !167, line: 36, baseType: !178, size: 64, align: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !169, file: !167, line: 41, baseType: !172, size: 64, align: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !169, file: !167, line: 42, baseType: !90, size: 32, align: 32, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !169, file: !167, line: 43, baseType: !182, size: 64, align: 64, offset: 192)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{null, !178}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !169, file: !167, line: 44, baseType: !186, size: 64, align: 64, offset: 256)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64, align: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{null, !189, !178}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !191, line: 48, baseType: !192)
!191 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !193, line: 241, size: 1728, align: 64, elements: !194)
!193 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!194 = !{!195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !215, !216, !217, !218, !222, !223, !225, !229, !232, !234, !235, !236, !237, !238, !239, !240}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !192, file: !193, line: 242, baseType: !128, size: 32, align: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !192, file: !193, line: 247, baseType: !87, size: 64, align: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !192, file: !193, line: 248, baseType: !87, size: 64, align: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !192, file: !193, line: 249, baseType: !87, size: 64, align: 64, offset: 192)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !192, file: !193, line: 250, baseType: !87, size: 64, align: 64, offset: 256)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !192, file: !193, line: 251, baseType: !87, size: 64, align: 64, offset: 320)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !192, file: !193, line: 252, baseType: !87, size: 64, align: 64, offset: 384)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !192, file: !193, line: 253, baseType: !87, size: 64, align: 64, offset: 448)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !192, file: !193, line: 254, baseType: !87, size: 64, align: 64, offset: 512)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !192, file: !193, line: 256, baseType: !87, size: 64, align: 64, offset: 576)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !192, file: !193, line: 257, baseType: !87, size: 64, align: 64, offset: 640)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !192, file: !193, line: 258, baseType: !87, size: 64, align: 64, offset: 704)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !192, file: !193, line: 260, baseType: !208, size: 64, align: 64, offset: 768)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !193, line: 156, size: 192, align: 64, elements: !210)
!210 = !{!211, !212, !214}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !209, file: !193, line: 157, baseType: !208, size: 64, align: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !209, file: !193, line: 158, baseType: !213, size: 64, align: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !209, file: !193, line: 162, baseType: !128, size: 32, align: 32, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !192, file: !193, line: 262, baseType: !213, size: 64, align: 64, offset: 832)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !192, file: !193, line: 264, baseType: !128, size: 32, align: 32, offset: 896)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !192, file: !193, line: 268, baseType: !128, size: 32, align: 32, offset: 928)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !192, file: !193, line: 270, baseType: !219, size: 64, align: 64, offset: 960)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !220, line: 131, baseType: !221)
!220 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!221 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !192, file: !193, line: 274, baseType: !103, size: 16, align: 16, offset: 1024)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !192, file: !193, line: 275, baseType: !224, size: 8, align: 8, offset: 1040)
!224 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !192, file: !193, line: 276, baseType: !226, size: 8, align: 8, offset: 1048)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 8, align: 8, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 1)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !192, file: !193, line: 280, baseType: !230, size: 64, align: 64, offset: 1088)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !193, line: 150, baseType: null)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !192, file: !193, line: 289, baseType: !233, size: 64, align: 64, offset: 1152)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !220, line: 132, baseType: !221)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !192, file: !193, line: 297, baseType: !178, size: 64, align: 64, offset: 1216)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !192, file: !193, line: 298, baseType: !178, size: 64, align: 64, offset: 1280)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !192, file: !193, line: 299, baseType: !178, size: 64, align: 64, offset: 1344)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !192, file: !193, line: 300, baseType: !178, size: 64, align: 64, offset: 1408)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !192, file: !193, line: 302, baseType: !122, size: 64, align: 64, offset: 1472)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !192, file: !193, line: 303, baseType: !128, size: 32, align: 32, offset: 1536)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !192, file: !193, line: 305, baseType: !241, size: 160, align: 8, offset: 1568)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 160, align: 8, elements: !242)
!242 = !{!243}
!243 = !DISubrange(count: 20)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "io_events", scope: !138, file: !4, line: 127, baseType: !141, size: 64, align: 64, offset: 704)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_events", scope: !138, file: !4, line: 128, baseType: !246, size: 64, align: 64, offset: 768)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64, align: 64)
!247 = !DICompositeType(tag: DW_TAG_structure_type, name: "epoll_event", file: !4, line: 128, flags: DIFlagFwdDecl)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "current_event", scope: !138, file: !4, line: 129, baseType: !249, size: 64, align: 64, offset: 832)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64, align: 64)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_event_t", file: !4, line: 109, baseType: !251)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_event", file: !4, line: 102, size: 448, align: 64, elements: !252)
!252 = !{!253, !254, !255, !256, !257}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !251, file: !4, line: 103, baseType: !129, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !251, file: !4, line: 104, baseType: !129, size: 64, align: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !251, file: !4, line: 105, baseType: !109, size: 64, align: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !251, file: !4, line: 106, baseType: !128, size: 32, align: 32, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !251, file: !4, line: 108, baseType: !258, size: 192, align: 64, offset: 256)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_node_t", file: !142, line: 104, baseType: !147)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_size", scope: !138, file: !4, line: 130, baseType: !90, size: 32, align: 32, offset: 896)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_count", scope: !138, file: !4, line: 131, baseType: !90, size: 32, align: 32, offset: 928)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_fd", scope: !138, file: !4, line: 132, baseType: !128, size: 32, align: 32, offset: 960)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "timer_fd", scope: !138, file: !4, line: 135, baseType: !128, size: 32, align: 32, offset: 992)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "timer_thread", scope: !138, file: !4, line: 136, baseType: !129, size: 64, align: 64, offset: 1024)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !138, file: !4, line: 146, baseType: !109, size: 64, align: 64, offset: 1088)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !138, file: !4, line: 147, baseType: !109, size: 64, align: 64, offset: 1152)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_timer_running", scope: !138, file: !4, line: 148, baseType: !267, size: 8, align: 8, offset: 1216)
!267 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !131, file: !4, line: 82, baseType: !269, size: 64, align: 64, offset: 192)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64, align: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!128, !272}
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !131, file: !4, line: 83, baseType: !178, size: 64, align: 64, offset: 256)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "sands", scope: !131, file: !4, line: 84, baseType: !275, size: 128, align: 64, offset: 320)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "timeval_t", file: !276, line: 31, baseType: !277)
!276 = !DIFile(filename: "../../lib/timer.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !278, line: 30, size: 128, align: 64, elements: !279)
!278 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!279 = !{!280, !282}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !277, file: !278, line: 32, baseType: !281, size: 64, align: 64)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !220, line: 139, baseType: !221)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !277, file: !278, line: 33, baseType: !283, size: 64, align: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !220, line: 141, baseType: !221)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !131, file: !4, line: 92, baseType: !285, size: 64, align: 32, offset: 448)
!285 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !131, file: !4, line: 85, size: 64, align: 32, elements: !286)
!286 = !{!287, !288, !289}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !285, file: !4, line: 86, baseType: !128, size: 32, align: 32)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !285, file: !4, line: 87, baseType: !128, size: 32, align: 32)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !285, file: !4, line: 91, baseType: !290, size: 64, align: 32)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !285, file: !4, line: 88, size: 64, align: 32, elements: !291)
!291 = !{!292, !296}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !290, file: !4, line: 89, baseType: !293, size: 32, align: 32)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !294, line: 263, baseType: !295)
!294 = !DIFile(filename: "/usr/include/unistd.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !220, line: 133, baseType: !128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !290, file: !4, line: 90, baseType: !128, size: 32, align: 32, offset: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !131, file: !4, line: 93, baseType: !298, size: 64, align: 64, offset: 512)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64, align: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, scope: !131, file: !4, line: 95, baseType: !300, size: 192, align: 64, offset: 576)
!300 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !131, file: !4, line: 95, size: 192, align: 64, elements: !301)
!301 = !{!302, !303}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !300, file: !4, line: 96, baseType: !258, size: 192, align: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !300, file: !4, line: 97, baseType: !156, size: 128, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !84, file: !83, line: 58, baseType: !128, size: 32, align: 32, offset: 4416)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !84, file: !83, line: 61, baseType: !166, size: 64, align: 64, offset: 4480)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "checker_t", file: !308, line: 60, baseType: !309)
!308 = !DIFile(filename: "./../include/check_api.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_checker", file: !308, line: 40, size: 1024, align: 64, elements: !310)
!310 = !{!311, !312, !313, !314, !318, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "free_func", scope: !309, file: !308, line: 41, baseType: !182, size: 64, align: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "dump_func", scope: !309, file: !308, line: 42, baseType: !186, size: 64, align: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "launch", scope: !309, file: !308, line: 43, baseType: !269, size: 64, align: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "compare", scope: !309, file: !308, line: 44, baseType: !315, size: 64, align: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64, align: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!267, !178, !178}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "vs", scope: !309, file: !308, line: 45, baseType: !319, size: 64, align: 64, offset: 256)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64, align: 64)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "virtual_server_t", file: !321, line: 180, baseType: !322)
!321 = !DIFile(filename: "./../include/check_data.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_virtual_server", file: !321, line: 131, size: 2560, align: 64, elements: !323)
!323 = !{!324, !325, !333, !334, !337, !378, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "vsgname", scope: !322, file: !321, line: 132, baseType: !87, size: 64, align: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "vsg", scope: !322, file: !321, line: 133, baseType: !326, size: 64, align: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64, align: 64)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "virtual_server_group_t", file: !321, line: 128, baseType: !328)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_virtual_server_group", file: !321, line: 124, size: 192, align: 64, elements: !329)
!329 = !{!330, !331, !332}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !328, file: !321, line: 125, baseType: !87, size: 64, align: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "addr_range", scope: !328, file: !321, line: 126, baseType: !166, size: 64, align: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "vfwmark", scope: !328, file: !321, line: 127, baseType: !166, size: 64, align: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !322, file: !321, line: 134, baseType: !97, size: 1024, align: 64, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "vfwmark", scope: !322, file: !321, line: 135, baseType: !335, size: 32, align: 32, offset: 1152)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !336, line: 51, baseType: !90)
!336 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!337 = !DIDerivedType(tag: DW_TAG_member, name: "s_svr", scope: !322, file: !321, line: 136, baseType: !338, size: 64, align: 64, offset: 1216)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64, align: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "real_server_t", file: !321, line: 102, baseType: !340)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_real_server", file: !321, line: 62, size: 1920, align: 64, elements: !341)
!341 = !{!342, !343, !344, !345, !346, !347, !348, !349, !350, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !340, file: !321, line: 63, baseType: !97, size: 1024, align: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !340, file: !321, line: 64, baseType: !128, size: 32, align: 32, offset: 1024)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "iweight", scope: !340, file: !321, line: 65, baseType: !128, size: 32, align: 32, offset: 1056)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "pweight", scope: !340, file: !321, line: 66, baseType: !128, size: 32, align: 32, offset: 1088)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "forwarding_method", scope: !340, file: !321, line: 68, baseType: !90, size: 32, align: 32, offset: 1120)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "u_threshold", scope: !340, file: !321, line: 69, baseType: !335, size: 32, align: 32, offset: 1152)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "l_threshold", scope: !340, file: !321, line: 70, baseType: !335, size: 32, align: 32, offset: 1184)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "inhibit", scope: !340, file: !321, line: 71, baseType: !128, size: 32, align: 32, offset: 1216)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "notify_up", scope: !340, file: !321, line: 74, baseType: !351, size: 64, align: 64, offset: 1280)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "notify_script_t", file: !353, line: 65, baseType: !354)
!353 = !DIFile(filename: "../../lib/notify.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_notify_script", file: !353, line: 59, size: 192, align: 64, elements: !355)
!355 = !{!356, !358, !359, !360, !363}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !354, file: !353, line: 60, baseType: !357, size: 64, align: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !354, file: !353, line: 61, baseType: !128, size: 32, align: 32, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !354, file: !353, line: 62, baseType: !128, size: 32, align: 32, offset: 96)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !354, file: !353, line: 63, baseType: !361, size: 32, align: 32, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !294, line: 240, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !220, line: 125, baseType: !90)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !354, file: !353, line: 64, baseType: !364, size: 32, align: 32, offset: 160)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !294, line: 235, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !220, line: 126, baseType: !90)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "notify_down", scope: !340, file: !321, line: 75, baseType: !351, size: 64, align: 64, offset: 1344)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !340, file: !321, line: 76, baseType: !128, size: 32, align: 32, offset: 1408)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "delay_loop", scope: !340, file: !321, line: 77, baseType: !109, size: 64, align: 64, offset: 1472)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "warmup", scope: !340, file: !321, line: 78, baseType: !109, size: 64, align: 64, offset: 1536)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "retry", scope: !340, file: !321, line: 79, baseType: !90, size: 32, align: 32, offset: 1600)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "delay_before_retry", scope: !340, file: !321, line: 80, baseType: !109, size: 64, align: 64, offset: 1664)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !340, file: !321, line: 81, baseType: !128, size: 32, align: 32, offset: 1728)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "alive", scope: !340, file: !321, line: 83, baseType: !267, size: 8, align: 8, offset: 1760)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "num_failed_checkers", scope: !340, file: !321, line: 84, baseType: !90, size: 32, align: 32, offset: 1792)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !340, file: !321, line: 85, baseType: !267, size: 8, align: 8, offset: 1824)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "reloaded", scope: !340, file: !321, line: 86, baseType: !267, size: 8, align: 8, offset: 1832)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "virtualhost", scope: !340, file: !321, line: 87, baseType: !87, size: 64, align: 64, offset: 1856)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "af", scope: !322, file: !321, line: 137, baseType: !379, size: 16, align: 16, offset: 1280)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !336, line: 49, baseType: !103)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "service_type", scope: !322, file: !321, line: 138, baseType: !379, size: 16, align: 16, offset: 1296)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "ha_suspend", scope: !322, file: !321, line: 139, baseType: !267, size: 8, align: 8, offset: 1312)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "ha_suspend_addr_count", scope: !322, file: !321, line: 140, baseType: !128, size: 32, align: 32, offset: 1344)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "sched", scope: !322, file: !321, line: 142, baseType: !112, size: 128, align: 8, offset: 1376)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !322, file: !321, line: 143, baseType: !335, size: 32, align: 32, offset: 1504)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "persistence_timeout", scope: !322, file: !321, line: 144, baseType: !335, size: 32, align: 32, offset: 1536)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "pe_name", scope: !322, file: !321, line: 146, baseType: !112, size: 128, align: 8, offset: 1568)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "forwarding_method", scope: !322, file: !321, line: 148, baseType: !90, size: 32, align: 32, offset: 1696)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "persistence_granularity", scope: !322, file: !321, line: 149, baseType: !335, size: 32, align: 32, offset: 1728)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "virtualhost", scope: !322, file: !321, line: 151, baseType: !87, size: 64, align: 64, offset: 1792)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !322, file: !321, line: 153, baseType: !128, size: 32, align: 32, offset: 1856)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "rs", scope: !322, file: !321, line: 154, baseType: !166, size: 64, align: 64, offset: 1920)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "alive", scope: !322, file: !321, line: 155, baseType: !128, size: 32, align: 32, offset: 1984)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !322, file: !321, line: 156, baseType: !267, size: 8, align: 8, offset: 2016)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "omega", scope: !322, file: !321, line: 157, baseType: !267, size: 8, align: 8, offset: 2024)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "inhibit", scope: !322, file: !321, line: 158, baseType: !267, size: 8, align: 8, offset: 2032)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "delay_loop", scope: !322, file: !321, line: 160, baseType: !109, size: 64, align: 64, offset: 2048)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "warmup", scope: !322, file: !321, line: 161, baseType: !109, size: 64, align: 64, offset: 2112)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "retry", scope: !322, file: !321, line: 162, baseType: !90, size: 32, align: 32, offset: 2176)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "delay_before_retry", scope: !322, file: !321, line: 163, baseType: !109, size: 64, align: 64, offset: 2240)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "notify_quorum_up", scope: !322, file: !321, line: 164, baseType: !351, size: 64, align: 64, offset: 2304)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "notify_quorum_down", scope: !322, file: !321, line: 165, baseType: !351, size: 64, align: 64, offset: 2368)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "quorum", scope: !322, file: !321, line: 166, baseType: !90, size: 32, align: 32, offset: 2432)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "hysteresis", scope: !322, file: !321, line: 167, baseType: !90, size: 32, align: 32, offset: 2464)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !322, file: !321, line: 168, baseType: !128, size: 32, align: 32, offset: 2496)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "quorum_state_up", scope: !322, file: !321, line: 169, baseType: !267, size: 8, align: 8, offset: 2528)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "reloaded", scope: !322, file: !321, line: 170, baseType: !267, size: 8, align: 8, offset: 2536)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "rs", scope: !309, file: !308, line: 46, baseType: !338, size: 64, align: 64, offset: 320)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !309, file: !308, line: 47, baseType: !178, size: 64, align: 64, offset: 384)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !309, file: !308, line: 48, baseType: !267, size: 8, align: 8, offset: 448)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "is_up", scope: !309, file: !308, line: 49, baseType: !267, size: 8, align: 8, offset: 456)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "has_run", scope: !309, file: !308, line: 50, baseType: !267, size: 8, align: 8, offset: 464)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "co", scope: !309, file: !308, line: 51, baseType: !92, size: 64, align: 64, offset: 512)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !309, file: !308, line: 52, baseType: !128, size: 32, align: 32, offset: 576)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "delay_loop", scope: !309, file: !308, line: 53, baseType: !109, size: 64, align: 64, offset: 640)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "warmup", scope: !309, file: !308, line: 54, baseType: !109, size: 64, align: 64, offset: 704)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "retry", scope: !309, file: !308, line: 55, baseType: !90, size: 32, align: 32, offset: 768)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "delay_before_retry", scope: !309, file: !308, line: 56, baseType: !109, size: 64, align: 64, offset: 832)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "retry_it", scope: !309, file: !308, line: 57, baseType: !90, size: 32, align: 32, offset: 896)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "default_retry", scope: !309, file: !308, line: 58, baseType: !90, size: 32, align: 32, offset: 928)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "default_delay_before_retry", scope: !309, file: !308, line: 59, baseType: !109, size: 64, align: 64, offset: 960)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64, align: 64)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !52, line: 239, size: 128, align: 32, elements: !423)
!423 = !{!424, !425, !427, !432}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !422, file: !52, line: 241, baseType: !101, size: 16, align: 16)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !422, file: !52, line: 242, baseType: !426, size: 16, align: 16, offset: 16)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !52, line: 119, baseType: !379)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !422, file: !52, line: 243, baseType: !428, size: 32, align: 32, offset: 32)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !52, line: 31, size: 32, align: 32, elements: !429)
!429 = !{!430}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !428, file: !52, line: 33, baseType: !431, size: 32, align: 32)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !52, line: 30, baseType: !335)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !422, file: !52, line: 246, baseType: !433, size: 64, align: 8, offset: 64)
!433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 64, align: 8, elements: !435)
!434 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!435 = !{!436}
!436 = !DISubrange(count: 8)
!437 = !{!438, !440, !442}
!438 = distinct !DIGlobalVariable(name: "garp_delay", scope: !0, file: !439, line: 150, type: !166, isLocal: false, isDefinition: true, variable: %struct._list** @garp_delay)
!439 = !DIFile(filename: "./../include/vrrp_if.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!440 = distinct !DIGlobalVariable(name: "default_co", scope: !0, file: !441, line: 45, type: !92, isLocal: true, isDefinition: true, variable: %struct._conn_opts** @default_co)
!441 = !DIFile(filename: "check_smtp.c", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!442 = distinct !DIGlobalVariable(name: "sav_co", scope: !0, file: !441, line: 46, type: !92, isLocal: true, isDefinition: true, variable: %struct._conn_opts** @sav_co)
!443 = !{i32 2, !"Dwarf Version", i32 4}
!444 = !{i32 2, !"Debug Info Version", i32 3}
!445 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!446 = distinct !DISubprogram(name: "install_smtp_check_keyword", scope: !441, file: !441, line: 243, type: !447, isLocal: false, isDefinition: true, scopeLine: 244, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !449)
!447 = !DISubroutineType(types: !448)
!448 = !{null}
!449 = !{}
!450 = !DILocation(line: 250, column: 2, scope: !446)
!451 = !DILocation(line: 251, column: 2, scope: !446)
!452 = !DILocation(line: 252, column: 2, scope: !446)
!453 = !DILocation(line: 254, column: 2, scope: !446)
!454 = !DILocation(line: 263, column: 2, scope: !446)
!455 = !DILocation(line: 264, column: 2, scope: !446)
!456 = !DILocation(line: 265, column: 2, scope: !446)
!457 = !DILocation(line: 266, column: 2, scope: !446)
!458 = !DILocation(line: 267, column: 2, scope: !446)
!459 = !DILocation(line: 269, column: 2, scope: !446)
!460 = !DILocation(line: 270, column: 2, scope: !446)
!461 = !DILocation(line: 271, column: 1, scope: !446)
!462 = distinct !DISubprogram(name: "smtp_check_handler", scope: !441, file: !441, line: 126, type: !463, isLocal: true, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !449)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !465}
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64, align: 64)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "vector_t", file: !467, line: 34, baseType: !468)
!467 = !DIFile(filename: "../../lib/vector.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vector", file: !467, line: 30, size: 128, align: 64, elements: !469)
!469 = !{!470, !471, !472}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !468, file: !467, line: 31, baseType: !90, size: 32, align: 32)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !468, file: !467, line: 32, baseType: !90, size: 32, align: 32, offset: 32)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !468, file: !467, line: 33, baseType: !473, size: 64, align: 64, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!474 = !DILocalVariable(name: "strvec", arg: 1, scope: !462, file: !441, line: 126, type: !465)
!475 = !DIExpression()
!476 = !DILocation(line: 126, column: 54, scope: !462)
!477 = !DILocalVariable(name: "smtp_checker", scope: !462, file: !441, line: 128, type: !81)
!478 = !DILocation(line: 128, column: 18, scope: !462)
!479 = !DILocation(line: 128, column: 52, scope: !462)
!480 = !DILocation(line: 128, column: 33, scope: !462)
!481 = !DILocation(line: 131, column: 30, scope: !462)
!482 = !DILocation(line: 131, column: 15, scope: !462)
!483 = !DILocation(line: 131, column: 13, scope: !462)
!484 = !DILocation(line: 135, column: 29, scope: !462)
!485 = !DILocation(line: 135, column: 43, scope: !462)
!486 = !DILocation(line: 134, column: 2, scope: !462)
!487 = !DILocation(line: 138, column: 65, scope: !462)
!488 = !DILocation(line: 138, column: 50, scope: !462)
!489 = !DILocation(line: 138, column: 16, scope: !462)
!490 = !DILocation(line: 138, column: 32, scope: !462)
!491 = !DILocation(line: 138, column: 38, scope: !462)
!492 = !DILocation(line: 138, column: 3, scope: !462)
!493 = !DILocation(line: 138, column: 45, scope: !462)
!494 = !DILocation(line: 138, column: 48, scope: !462)
!495 = !DILocation(line: 148, column: 23, scope: !462)
!496 = !DILocation(line: 148, column: 2, scope: !462)
!497 = !DILocation(line: 148, column: 16, scope: !462)
!498 = !DILocation(line: 148, column: 21, scope: !462)
!499 = !DILocation(line: 149, column: 1, scope: !462)
!500 = distinct !DISubprogram(name: "smtp_helo_name_handler", scope: !441, file: !441, line: 233, type: !463, isLocal: true, isDefinition: true, scopeLine: 234, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !449)
!501 = !DILocalVariable(name: "strvec", arg: 1, scope: !500, file: !441, line: 233, type: !465)
!502 = !DILocation(line: 233, column: 34, scope: !500)
!503 = !DILocalVariable(name: "smtp_checker", scope: !500, file: !441, line: 235, type: !81)
!504 = !DILocation(line: 235, column: 18, scope: !500)
!505 = !DILocation(line: 235, column: 52, scope: !500)
!506 = !DILocation(line: 235, column: 69, scope: !500)
!507 = !DILocation(line: 235, column: 75, scope: !500)
!508 = !DILocation(line: 235, column: 36, scope: !500)
!509 = !DILocation(line: 235, column: 84, scope: !500)
!510 = !DILocation(line: 235, column: 33, scope: !500)
!511 = !DILocation(line: 236, column: 6, scope: !512)
!512 = distinct !DILexicalBlock(scope: !500, file: !441, line: 236, column: 6)
!513 = !DILocation(line: 236, column: 20, scope: !512)
!514 = !DILocation(line: 236, column: 6, scope: !500)
!515 = !DILocation(line: 237, column: 9, scope: !512)
!516 = !DILocation(line: 237, column: 23, scope: !512)
!517 = !DILocation(line: 237, column: 4, scope: !512)
!518 = !DILocation(line: 237, column: 36, scope: !512)
!519 = !DILocation(line: 237, column: 50, scope: !512)
!520 = !DILocation(line: 237, column: 61, scope: !512)
!521 = !DILocation(line: 237, column: 3, scope: !512)
!522 = !DILocation(line: 238, column: 39, scope: !500)
!523 = !DILocation(line: 238, column: 29, scope: !500)
!524 = !DILocation(line: 238, column: 2, scope: !500)
!525 = !DILocation(line: 238, column: 16, scope: !500)
!526 = !DILocation(line: 238, column: 26, scope: !500)
!527 = !DILocation(line: 239, column: 1, scope: !500)
!528 = distinct !DISubprogram(name: "smtp_host_handler", scope: !441, file: !441, line: 205, type: !463, isLocal: true, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !449)
!529 = !DILocalVariable(name: "strvec", arg: 1, scope: !528, file: !441, line: 205, type: !465)
!530 = !DILocation(line: 205, column: 53, scope: !528)
!531 = !DILocalVariable(name: "checker", scope: !528, file: !441, line: 207, type: !306)
!532 = !DILocation(line: 207, column: 13, scope: !528)
!533 = !DILocation(line: 207, column: 26, scope: !528)
!534 = !DILocation(line: 207, column: 43, scope: !528)
!535 = !DILocation(line: 207, column: 49, scope: !528)
!536 = !DILocation(line: 207, column: 23, scope: !528)
!537 = !DILocation(line: 210, column: 11, scope: !528)
!538 = !DILocation(line: 210, column: 20, scope: !528)
!539 = !DILocation(line: 210, column: 9, scope: !528)
!540 = !DILocation(line: 211, column: 31, scope: !528)
!541 = !DILocation(line: 211, column: 16, scope: !528)
!542 = !DILocation(line: 211, column: 2, scope: !528)
!543 = !DILocation(line: 211, column: 11, scope: !528)
!544 = !DILocation(line: 211, column: 14, scope: !528)
!545 = !DILocation(line: 212, column: 9, scope: !528)
!546 = !DILocation(line: 212, column: 18, scope: !528)
!547 = !DILocation(line: 212, column: 2, scope: !528)
!548 = !DILocation(line: 212, column: 22, scope: !528)
!549 = !DILocation(line: 214, column: 2, scope: !528)
!550 = !DILocation(line: 215, column: 1, scope: !528)
!551 = distinct !DISubprogram(name: "smtp_host_end_handler", scope: !441, file: !441, line: 218, type: !447, isLocal: true, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !449)
!552 = !DILocalVariable(name: "checker", scope: !551, file: !441, line: 220, type: !306)
!553 = !DILocation(line: 220, column: 13, scope: !551)
!554 = !DILocation(line: 220, column: 26, scope: !551)
!555 = !DILocation(line: 220, column: 43, scope: !551)
!556 = !DILocation(line: 220, column: 49, scope: !551)
!557 = !DILocation(line: 220, column: 23, scope: !551)
!558 = !DILocalVariable(name: "smtp_checker", scope: !551, file: !441, line: 221, type: !81)
!559 = !DILocation(line: 221, column: 18, scope: !551)
!560 = !DILocation(line: 221, column: 51, scope: !551)
!561 = !DILocation(line: 221, column: 60, scope: !551)
!562 = !DILocation(line: 221, column: 33, scope: !551)
!563 = !DILocation(line: 223, column: 23, scope: !564)
!564 = distinct !DILexicalBlock(scope: !551, file: !441, line: 223, column: 6)
!565 = !DILocation(line: 223, column: 32, scope: !564)
!566 = !DILocation(line: 223, column: 7, scope: !564)
!567 = !DILocation(line: 223, column: 6, scope: !551)
!568 = !DILocation(line: 224, column: 9, scope: !564)
!569 = !DILocation(line: 224, column: 18, scope: !564)
!570 = !DILocation(line: 224, column: 4, scope: !564)
!571 = !DILocation(line: 224, column: 24, scope: !564)
!572 = !DILocation(line: 224, column: 33, scope: !564)
!573 = !DILocation(line: 224, column: 37, scope: !564)
!574 = !DILocation(line: 224, column: 3, scope: !564)
!575 = !DILocation(line: 226, column: 12, scope: !564)
!576 = !DILocation(line: 226, column: 26, scope: !564)
!577 = !DILocation(line: 226, column: 32, scope: !564)
!578 = !DILocation(line: 226, column: 41, scope: !564)
!579 = !DILocation(line: 226, column: 3, scope: !564)
!580 = !DILocation(line: 228, column: 16, scope: !551)
!581 = !DILocation(line: 228, column: 2, scope: !551)
!582 = !DILocation(line: 228, column: 11, scope: !551)
!583 = !DILocation(line: 228, column: 14, scope: !551)
!584 = !DILocation(line: 229, column: 1, scope: !551)
!585 = distinct !DISubprogram(name: "smtp_check_end_handler", scope: !441, file: !441, line: 152, type: !447, isLocal: true, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !449)
!586 = !DILocalVariable(name: "smtp_checker", scope: !585, file: !441, line: 154, type: !81)
!587 = !DILocation(line: 154, column: 18, scope: !585)
!588 = !DILocation(line: 154, column: 52, scope: !585)
!589 = !DILocation(line: 154, column: 69, scope: !585)
!590 = !DILocation(line: 154, column: 75, scope: !585)
!591 = !DILocation(line: 154, column: 36, scope: !585)
!592 = !DILocation(line: 154, column: 84, scope: !585)
!593 = !DILocation(line: 154, column: 33, scope: !585)
!594 = !DILocalVariable(name: "co", scope: !585, file: !441, line: 155, type: !92)
!595 = !DILocation(line: 155, column: 15, scope: !585)
!596 = !DILocation(line: 155, column: 38, scope: !585)
!597 = !DILocation(line: 155, column: 55, scope: !585)
!598 = !DILocation(line: 155, column: 61, scope: !585)
!599 = !DILocation(line: 155, column: 22, scope: !585)
!600 = !DILocation(line: 155, column: 70, scope: !585)
!601 = !DILocation(line: 157, column: 7, scope: !602)
!602 = distinct !DILexicalBlock(scope: !585, file: !441, line: 157, column: 6)
!603 = !DILocation(line: 157, column: 21, scope: !602)
!604 = !DILocation(line: 157, column: 6, scope: !585)
!605 = !DILocation(line: 158, column: 38, scope: !606)
!606 = distinct !DILexicalBlock(scope: !602, file: !441, line: 157, column: 32)
!607 = !DILocation(line: 158, column: 3, scope: !606)
!608 = !DILocation(line: 158, column: 17, scope: !606)
!609 = !DILocation(line: 158, column: 27, scope: !606)
!610 = !DILocation(line: 159, column: 10, scope: !606)
!611 = !DILocation(line: 159, column: 24, scope: !606)
!612 = !DILocation(line: 159, column: 3, scope: !606)
!613 = !DILocation(line: 160, column: 2, scope: !606)
!614 = !DILocation(line: 163, column: 6, scope: !615)
!615 = distinct !DILexicalBlock(scope: !585, file: !441, line: 163, column: 6)
!616 = !DILocation(line: 163, column: 10, scope: !615)
!617 = !DILocation(line: 163, column: 14, scope: !615)
!618 = !DILocation(line: 163, column: 24, scope: !615)
!619 = !DILocation(line: 163, column: 36, scope: !615)
!620 = !DILocation(line: 164, column: 7, scope: !615)
!621 = !DILocation(line: 164, column: 11, scope: !615)
!622 = !DILocation(line: 164, column: 15, scope: !615)
!623 = !DILocation(line: 164, column: 25, scope: !615)
!624 = !DILocation(line: 164, column: 37, scope: !615)
!625 = !DILocation(line: 164, column: 64, scope: !626)
!626 = !DILexicalBlockFile(scope: !615, file: !441, discriminator: 1)
!627 = !DILocation(line: 164, column: 68, scope: !626)
!628 = !DILocation(line: 164, column: 74, scope: !626)
!629 = !DILocation(line: 164, column: 40, scope: !626)
!630 = !DILocation(line: 164, column: 84, scope: !626)
!631 = !DILocation(line: 165, column: 6, scope: !615)
!632 = !DILocation(line: 165, column: 10, scope: !615)
!633 = !DILocation(line: 165, column: 17, scope: !615)
!634 = !DILocation(line: 165, column: 27, scope: !615)
!635 = !DILocation(line: 165, column: 39, scope: !615)
!636 = !DILocation(line: 166, column: 7, scope: !615)
!637 = !DILocation(line: 166, column: 11, scope: !615)
!638 = !DILocation(line: 166, column: 18, scope: !615)
!639 = !DILocation(line: 166, column: 28, scope: !615)
!640 = !DILocation(line: 166, column: 40, scope: !615)
!641 = !DILocation(line: 166, column: 67, scope: !626)
!642 = !DILocation(line: 166, column: 71, scope: !626)
!643 = !DILocation(line: 166, column: 80, scope: !626)
!644 = !DILocation(line: 166, column: 43, scope: !626)
!645 = !DILocation(line: 166, column: 90, scope: !626)
!646 = !DILocation(line: 167, column: 6, scope: !615)
!647 = !DILocation(line: 167, column: 10, scope: !615)
!648 = !DILocation(line: 167, column: 21, scope: !615)
!649 = !DILocation(line: 169, column: 6, scope: !615)
!650 = !DILocation(line: 169, column: 10, scope: !615)
!651 = !DILocation(line: 169, column: 17, scope: !615)
!652 = !DILocation(line: 171, column: 6, scope: !615)
!653 = !DILocation(line: 171, column: 10, scope: !615)
!654 = !DILocation(line: 163, column: 6, scope: !655)
!655 = !DILexicalBlockFile(scope: !585, file: !441, discriminator: 1)
!656 = !DILocation(line: 173, column: 7, scope: !657)
!657 = distinct !DILexicalBlock(scope: !658, file: !441, line: 173, column: 7)
!658 = distinct !DILexicalBlock(scope: !615, file: !441, line: 171, column: 25)
!659 = !DILocation(line: 173, column: 11, scope: !657)
!660 = !DILocation(line: 173, column: 15, scope: !657)
!661 = !DILocation(line: 173, column: 25, scope: !657)
!662 = !DILocation(line: 173, column: 7, scope: !658)
!663 = !DILocation(line: 174, column: 32, scope: !664)
!664 = distinct !DILexicalBlock(scope: !665, file: !441, line: 174, column: 8)
!665 = distinct !DILexicalBlock(scope: !657, file: !441, line: 173, column: 38)
!666 = !DILocation(line: 174, column: 36, scope: !664)
!667 = !DILocation(line: 174, column: 42, scope: !664)
!668 = !DILocation(line: 174, column: 8, scope: !664)
!669 = !DILocation(line: 174, column: 8, scope: !665)
!670 = !DILocalVariable(name: "saved_port", scope: !671, file: !441, line: 175, type: !379)
!671 = distinct !DILexicalBlock(scope: !664, file: !441, line: 174, column: 52)
!672 = !DILocation(line: 175, column: 14, scope: !671)
!673 = !DILocation(line: 175, column: 51, scope: !671)
!674 = !DILocation(line: 175, column: 55, scope: !671)
!675 = !DILocation(line: 175, column: 61, scope: !671)
!676 = !DILocation(line: 176, column: 5, scope: !671)
!677 = !DILocation(line: 176, column: 9, scope: !671)
!678 = !DILocation(line: 176, column: 15, scope: !671)
!679 = !DILocation(line: 176, column: 27, scope: !671)
!680 = !DILocation(line: 177, column: 27, scope: !671)
!681 = !DILocation(line: 177, column: 31, scope: !671)
!682 = !DILocation(line: 177, column: 36, scope: !671)
!683 = !DILocation(line: 177, column: 5, scope: !671)
!684 = !DILocation(line: 178, column: 4, scope: !671)
!685 = !DILocation(line: 180, column: 5, scope: !664)
!686 = !DILocation(line: 180, column: 9, scope: !664)
!687 = !DILocation(line: 180, column: 15, scope: !664)
!688 = !DILocation(line: 180, column: 27, scope: !664)
!689 = !DILocation(line: 181, column: 3, scope: !665)
!690 = !DILocation(line: 182, column: 8, scope: !691)
!691 = distinct !DILexicalBlock(scope: !658, file: !441, line: 182, column: 7)
!692 = !DILocation(line: 182, column: 12, scope: !691)
!693 = !DILocation(line: 182, column: 7, scope: !658)
!694 = !DILocation(line: 183, column: 4, scope: !691)
!695 = !DILocation(line: 183, column: 8, scope: !691)
!696 = !DILocation(line: 183, column: 22, scope: !691)
!697 = !DILocation(line: 185, column: 24, scope: !698)
!698 = distinct !DILexicalBlock(scope: !658, file: !441, line: 185, column: 7)
!699 = !DILocation(line: 185, column: 8, scope: !698)
!700 = !DILocation(line: 185, column: 7, scope: !658)
!701 = !DILocation(line: 186, column: 4, scope: !702)
!702 = distinct !DILexicalBlock(scope: !698, file: !441, line: 185, column: 29)
!703 = !DILocation(line: 187, column: 10, scope: !702)
!704 = !DILocation(line: 187, column: 5, scope: !702)
!705 = !DILocation(line: 187, column: 20, scope: !702)
!706 = !DILocation(line: 188, column: 3, scope: !702)
!707 = !DILocation(line: 189, column: 13, scope: !698)
!708 = !DILocation(line: 189, column: 27, scope: !698)
!709 = !DILocation(line: 189, column: 33, scope: !698)
!710 = !DILocation(line: 189, column: 4, scope: !698)
!711 = !DILocation(line: 190, column: 2, scope: !658)
!712 = !DILocation(line: 192, column: 9, scope: !615)
!713 = !DILocation(line: 192, column: 4, scope: !615)
!714 = !DILocation(line: 192, column: 19, scope: !615)
!715 = !DILocation(line: 193, column: 20, scope: !585)
!716 = !DILocation(line: 193, column: 37, scope: !585)
!717 = !DILocation(line: 193, column: 43, scope: !585)
!718 = !DILocation(line: 193, column: 4, scope: !585)
!719 = !DILocation(line: 193, column: 52, scope: !585)
!720 = !DILocation(line: 193, column: 56, scope: !585)
!721 = !DILocation(line: 196, column: 8, scope: !722)
!722 = distinct !DILexicalBlock(scope: !585, file: !441, line: 196, column: 6)
!723 = !DILocation(line: 196, column: 22, scope: !722)
!724 = !DILocation(line: 196, column: 28, scope: !722)
!725 = !DILocation(line: 196, column: 5, scope: !722)
!726 = !DILocation(line: 196, column: 10, scope: !727)
!727 = !DILexicalBlockFile(scope: !722, file: !441, discriminator: 1)
!728 = !DILocation(line: 196, column: 24, scope: !727)
!729 = !DILocation(line: 196, column: 31, scope: !727)
!730 = !DILocation(line: 196, column: 36, scope: !727)
!731 = !DILocation(line: 196, column: 5, scope: !727)
!732 = !DILocation(line: 196, column: 9, scope: !733)
!733 = !DILexicalBlockFile(scope: !722, file: !441, discriminator: 2)
!734 = !DILocation(line: 196, column: 23, scope: !733)
!735 = !DILocation(line: 196, column: 30, scope: !733)
!736 = !DILocation(line: 196, column: 35, scope: !733)
!737 = !DILocation(line: 196, column: 6, scope: !733)
!738 = !DILocation(line: 197, column: 12, scope: !739)
!739 = distinct !DILexicalBlock(scope: !722, file: !441, line: 196, column: 9)
!740 = !DILocation(line: 197, column: 26, scope: !739)
!741 = !DILocation(line: 197, column: 32, scope: !739)
!742 = !DILocation(line: 197, column: 3, scope: !739)
!743 = !DILocation(line: 198, column: 2, scope: !739)
!744 = !DILocation(line: 199, column: 9, scope: !722)
!745 = !DILocation(line: 199, column: 4, scope: !722)
!746 = !DILocation(line: 199, column: 35, scope: !722)
!747 = !DILocation(line: 200, column: 13, scope: !585)
!748 = !DILocation(line: 201, column: 1, scope: !585)
!749 = distinct !DISubprogram(name: "free_smtp_check", scope: !441, file: !441, line: 67, type: !183, isLocal: true, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !449)
!750 = !DILocalVariable(name: "data", arg: 1, scope: !749, file: !441, line: 67, type: !178)
!751 = !DILocation(line: 67, column: 23, scope: !749)
!752 = !DILocalVariable(name: "smtp_checker", scope: !749, file: !441, line: 69, type: !81)
!753 = !DILocation(line: 69, column: 18, scope: !749)
!754 = !DILocation(line: 69, column: 48, scope: !749)
!755 = !DILocation(line: 69, column: 35, scope: !749)
!756 = !DILocation(line: 69, column: 55, scope: !749)
!757 = !DILocation(line: 69, column: 33, scope: !749)
!758 = !DILocation(line: 70, column: 13, scope: !749)
!759 = !DILocation(line: 70, column: 27, scope: !749)
!760 = !DILocation(line: 70, column: 2, scope: !749)
!761 = !DILocation(line: 71, column: 8, scope: !749)
!762 = !DILocation(line: 71, column: 22, scope: !749)
!763 = !DILocation(line: 71, column: 3, scope: !749)
!764 = !DILocation(line: 71, column: 35, scope: !749)
!765 = !DILocation(line: 71, column: 49, scope: !749)
!766 = !DILocation(line: 71, column: 60, scope: !749)
!767 = !DILocation(line: 72, column: 8, scope: !749)
!768 = !DILocation(line: 72, column: 3, scope: !749)
!769 = !DILocation(line: 72, column: 38, scope: !749)
!770 = !DILocation(line: 73, column: 8, scope: !749)
!771 = !DILocation(line: 73, column: 3, scope: !749)
!772 = !DILocation(line: 73, column: 22, scope: !749)
!773 = !DILocation(line: 74, column: 1, scope: !749)
!774 = distinct !DISubprogram(name: "dump_smtp_check", scope: !441, file: !441, line: 81, type: !187, isLocal: true, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !449)
!775 = !DILocalVariable(name: "fp", arg: 1, scope: !774, file: !441, line: 81, type: !189)
!776 = !DILocation(line: 81, column: 23, scope: !774)
!777 = !DILocalVariable(name: "data", arg: 2, scope: !774, file: !441, line: 81, type: !178)
!778 = !DILocation(line: 81, column: 33, scope: !774)
!779 = !DILocalVariable(name: "checker", scope: !774, file: !441, line: 83, type: !306)
!780 = !DILocation(line: 83, column: 13, scope: !774)
!781 = !DILocation(line: 83, column: 23, scope: !774)
!782 = !DILocalVariable(name: "smtp_checker", scope: !774, file: !441, line: 84, type: !81)
!783 = !DILocation(line: 84, column: 18, scope: !774)
!784 = !DILocation(line: 84, column: 33, scope: !774)
!785 = !DILocation(line: 84, column: 42, scope: !774)
!786 = !DILocation(line: 86, column: 13, scope: !774)
!787 = !DILocation(line: 86, column: 2, scope: !774)
!788 = !DILocation(line: 87, column: 13, scope: !774)
!789 = !DILocation(line: 87, column: 33, scope: !774)
!790 = !DILocation(line: 87, column: 47, scope: !774)
!791 = !DILocation(line: 87, column: 2, scope: !774)
!792 = !DILocation(line: 88, column: 20, scope: !774)
!793 = !DILocation(line: 88, column: 24, scope: !774)
!794 = !DILocation(line: 88, column: 2, scope: !774)
!795 = !DILocation(line: 90, column: 6, scope: !796)
!796 = distinct !DILexicalBlock(scope: !774, file: !441, line: 90, column: 6)
!797 = !DILocation(line: 90, column: 20, scope: !796)
!798 = !DILocation(line: 90, column: 6, scope: !774)
!799 = !DILocation(line: 91, column: 14, scope: !800)
!800 = distinct !DILexicalBlock(scope: !796, file: !441, line: 90, column: 26)
!801 = !DILocation(line: 91, column: 3, scope: !800)
!802 = !DILocation(line: 92, column: 13, scope: !800)
!803 = !DILocation(line: 92, column: 17, scope: !800)
!804 = !DILocation(line: 92, column: 31, scope: !800)
!805 = !DILocation(line: 92, column: 3, scope: !800)
!806 = !DILocation(line: 93, column: 2, scope: !800)
!807 = !DILocation(line: 94, column: 1, scope: !774)
!808 = distinct !DISubprogram(name: "smtp_connect_thread", scope: !441, file: !441, line: 722, type: !126, isLocal: true, isDefinition: true, scopeLine: 723, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !449)
!809 = !DILocalVariable(name: "thread", arg: 1, scope: !808, file: !441, line: 722, type: !129)
!810 = !DILocation(line: 722, column: 31, scope: !808)
!811 = !DILocalVariable(name: "checker", scope: !808, file: !441, line: 724, type: !306)
!812 = !DILocation(line: 724, column: 13, scope: !808)
!813 = !DILocation(line: 724, column: 25, scope: !808)
!814 = !DILocation(line: 724, column: 34, scope: !808)
!815 = !DILocation(line: 724, column: 23, scope: !808)
!816 = !DILocalVariable(name: "smtp_checker", scope: !808, file: !441, line: 725, type: !81)
!817 = !DILocation(line: 725, column: 18, scope: !808)
!818 = !DILocation(line: 725, column: 35, scope: !808)
!819 = !DILocation(line: 725, column: 45, scope: !808)
!820 = !DILocation(line: 725, column: 33, scope: !808)
!821 = !DILocalVariable(name: "smtp_host", scope: !808, file: !441, line: 726, type: !92)
!822 = !DILocation(line: 726, column: 15, scope: !808)
!823 = !DILocalVariable(name: "status", scope: !808, file: !441, line: 727, type: !24)
!824 = !DILocation(line: 727, column: 22, scope: !808)
!825 = !DILocalVariable(name: "sd", scope: !808, file: !441, line: 728, type: !128)
!826 = !DILocation(line: 728, column: 6, scope: !808)
!827 = !DILocalVariable(name: "checker_was_up", scope: !808, file: !441, line: 729, type: !267)
!828 = !DILocation(line: 729, column: 6, scope: !808)
!829 = !DILocalVariable(name: "rs_was_alive", scope: !808, file: !441, line: 730, type: !267)
!830 = !DILocation(line: 730, column: 6, scope: !808)
!831 = !DILocation(line: 762, column: 7, scope: !832)
!832 = distinct !DILexicalBlock(scope: !808, file: !441, line: 762, column: 6)
!833 = !DILocation(line: 762, column: 16, scope: !832)
!834 = !DILocation(line: 762, column: 6, scope: !808)
!835 = !DILocation(line: 763, column: 20, scope: !836)
!836 = distinct !DILexicalBlock(scope: !832, file: !441, line: 762, column: 25)
!837 = !DILocation(line: 763, column: 28, scope: !836)
!838 = !DILocation(line: 763, column: 57, scope: !836)
!839 = !DILocation(line: 764, column: 6, scope: !836)
!840 = !DILocation(line: 764, column: 15, scope: !836)
!841 = !DILocation(line: 763, column: 3, scope: !836)
!842 = !DILocation(line: 765, column: 3, scope: !836)
!843 = !DILocation(line: 775, column: 45, scope: !844)
!844 = distinct !DILexicalBlock(scope: !808, file: !441, line: 775, column: 6)
!845 = !DILocation(line: 775, column: 59, scope: !844)
!846 = !DILocation(line: 775, column: 65, scope: !844)
!847 = !DILocation(line: 775, column: 79, scope: !844)
!848 = !DILocation(line: 775, column: 32, scope: !844)
!849 = !DILocation(line: 775, column: 7, scope: !844)
!850 = !DILocation(line: 775, column: 21, scope: !844)
!851 = !DILocation(line: 775, column: 30, scope: !844)
!852 = !DILocation(line: 775, column: 90, scope: !844)
!853 = !DILocation(line: 775, column: 6, scope: !808)
!854 = !DILocation(line: 776, column: 8, scope: !855)
!855 = distinct !DILexicalBlock(scope: !856, file: !441, line: 776, column: 7)
!856 = distinct !DILexicalBlock(scope: !844, file: !441, line: 775, column: 98)
!857 = !DILocation(line: 776, column: 17, scope: !855)
!858 = !DILocation(line: 776, column: 23, scope: !855)
!859 = !DILocation(line: 776, column: 27, scope: !860)
!860 = !DILexicalBlockFile(scope: !855, file: !441, discriminator: 1)
!861 = !DILocation(line: 776, column: 36, scope: !860)
!862 = !DILocation(line: 776, column: 7, scope: !860)
!863 = !DILocation(line: 778, column: 37, scope: !864)
!864 = distinct !DILexicalBlock(scope: !855, file: !441, line: 776, column: 45)
!865 = !DILocation(line: 778, column: 47, scope: !864)
!866 = !DILocation(line: 778, column: 52, scope: !864)
!867 = !DILocation(line: 778, column: 60, scope: !864)
!868 = !DILocation(line: 778, column: 70, scope: !864)
!869 = !DILocation(line: 778, column: 75, scope: !864)
!870 = !DILocation(line: 778, column: 13, scope: !864)
!871 = !DILocation(line: 777, column: 4, scope: !864)
!872 = !DILocation(line: 780, column: 21, scope: !864)
!873 = !DILocation(line: 780, column: 30, scope: !864)
!874 = !DILocation(line: 780, column: 19, scope: !864)
!875 = !DILocation(line: 781, column: 19, scope: !864)
!876 = !DILocation(line: 781, column: 28, scope: !864)
!877 = !DILocation(line: 781, column: 32, scope: !864)
!878 = !DILocation(line: 781, column: 17, scope: !864)
!879 = !DILocation(line: 782, column: 32, scope: !864)
!880 = !DILocation(line: 782, column: 4, scope: !864)
!881 = !DILocation(line: 783, column: 8, scope: !882)
!882 = distinct !DILexicalBlock(scope: !864, file: !441, line: 783, column: 8)
!883 = !DILocation(line: 783, column: 17, scope: !882)
!884 = !DILocation(line: 783, column: 21, scope: !882)
!885 = !DILocation(line: 783, column: 32, scope: !882)
!886 = !DILocation(line: 783, column: 36, scope: !887)
!887 = !DILexicalBlockFile(scope: !882, file: !441, discriminator: 1)
!888 = !DILocation(line: 783, column: 51, scope: !887)
!889 = !DILocation(line: 784, column: 9, scope: !882)
!890 = !DILocation(line: 784, column: 25, scope: !882)
!891 = !DILocation(line: 784, column: 34, scope: !882)
!892 = !DILocation(line: 784, column: 38, scope: !882)
!893 = !DILocation(line: 784, column: 22, scope: !882)
!894 = !DILocation(line: 784, column: 44, scope: !882)
!895 = !DILocation(line: 784, column: 48, scope: !887)
!896 = !DILocation(line: 784, column: 61, scope: !887)
!897 = !DILocation(line: 783, column: 8, scope: !898)
!898 = !DILexicalBlockFile(scope: !864, file: !441, discriminator: 2)
!899 = !DILocation(line: 785, column: 29, scope: !882)
!900 = !DILocation(line: 785, column: 5, scope: !882)
!901 = !DILocation(line: 787, column: 3, scope: !864)
!902 = !DILocation(line: 789, column: 3, scope: !856)
!903 = !DILocation(line: 789, column: 12, scope: !856)
!904 = !DILocation(line: 789, column: 21, scope: !856)
!905 = !DILocation(line: 790, column: 3, scope: !856)
!906 = !DILocation(line: 790, column: 17, scope: !856)
!907 = !DILocation(line: 790, column: 26, scope: !856)
!908 = !DILocation(line: 791, column: 41, scope: !856)
!909 = !DILocation(line: 791, column: 55, scope: !856)
!910 = !DILocation(line: 791, column: 28, scope: !856)
!911 = !DILocation(line: 791, column: 3, scope: !856)
!912 = !DILocation(line: 791, column: 17, scope: !856)
!913 = !DILocation(line: 791, column: 26, scope: !856)
!914 = !DILocation(line: 793, column: 20, scope: !856)
!915 = !DILocation(line: 793, column: 28, scope: !856)
!916 = !DILocation(line: 793, column: 57, scope: !856)
!917 = !DILocation(line: 793, column: 66, scope: !856)
!918 = !DILocation(line: 793, column: 75, scope: !856)
!919 = !DILocation(line: 793, column: 3, scope: !856)
!920 = !DILocation(line: 794, column: 3, scope: !856)
!921 = !DILocation(line: 797, column: 14, scope: !808)
!922 = !DILocation(line: 797, column: 28, scope: !808)
!923 = !DILocation(line: 797, column: 12, scope: !808)
!924 = !DILocation(line: 800, column: 19, scope: !925)
!925 = distinct !DILexicalBlock(scope: !808, file: !441, line: 800, column: 6)
!926 = !DILocation(line: 800, column: 30, scope: !925)
!927 = !DILocation(line: 800, column: 34, scope: !925)
!928 = !DILocation(line: 800, column: 12, scope: !925)
!929 = !DILocation(line: 800, column: 10, scope: !925)
!930 = !DILocation(line: 800, column: 102, scope: !925)
!931 = !DILocation(line: 800, column: 6, scope: !808)
!932 = !DILocation(line: 801, column: 3, scope: !933)
!933 = distinct !DILexicalBlock(scope: !925, file: !441, line: 800, column: 109)
!934 = !DILocation(line: 802, column: 20, scope: !933)
!935 = !DILocation(line: 802, column: 28, scope: !933)
!936 = !DILocation(line: 802, column: 57, scope: !933)
!937 = !DILocation(line: 803, column: 6, scope: !933)
!938 = !DILocation(line: 803, column: 15, scope: !933)
!939 = !DILocation(line: 802, column: 3, scope: !933)
!940 = !DILocation(line: 804, column: 3, scope: !933)
!941 = !DILocation(line: 817, column: 28, scope: !808)
!942 = !DILocation(line: 817, column: 32, scope: !808)
!943 = !DILocation(line: 817, column: 11, scope: !808)
!944 = !DILocation(line: 817, column: 9, scope: !808)
!945 = !DILocation(line: 820, column: 26, scope: !946)
!946 = distinct !DILexicalBlock(scope: !808, file: !441, line: 820, column: 5)
!947 = !DILocation(line: 820, column: 30, scope: !946)
!948 = !DILocation(line: 820, column: 38, scope: !946)
!949 = !DILocation(line: 820, column: 65, scope: !946)
!950 = !DILocation(line: 820, column: 76, scope: !946)
!951 = !DILocation(line: 820, column: 5, scope: !946)
!952 = !DILocation(line: 820, column: 5, scope: !808)
!953 = !DILocation(line: 821, column: 9, scope: !954)
!954 = distinct !DILexicalBlock(scope: !946, file: !441, line: 820, column: 92)
!955 = !DILocation(line: 821, column: 3, scope: !954)
!956 = !DILocation(line: 822, column: 3, scope: !954)
!957 = !DILocation(line: 823, column: 20, scope: !954)
!958 = !DILocation(line: 823, column: 28, scope: !954)
!959 = !DILocation(line: 823, column: 57, scope: !954)
!960 = !DILocation(line: 824, column: 4, scope: !954)
!961 = !DILocation(line: 824, column: 13, scope: !954)
!962 = !DILocation(line: 823, column: 3, scope: !954)
!963 = !DILocation(line: 825, column: 2, scope: !954)
!964 = !DILocation(line: 827, column: 2, scope: !808)
!965 = !DILocation(line: 828, column: 1, scope: !808)
!966 = distinct !DISubprogram(name: "smtp_check_compare", scope: !441, file: !441, line: 97, type: !316, isLocal: true, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !449)
!967 = !DILocalVariable(name: "a", arg: 1, scope: !966, file: !441, line: 97, type: !178)
!968 = !DILocation(line: 97, column: 26, scope: !966)
!969 = !DILocalVariable(name: "b", arg: 2, scope: !966, file: !441, line: 97, type: !178)
!970 = !DILocation(line: 97, column: 35, scope: !966)
!971 = !DILocalVariable(name: "old", scope: !966, file: !441, line: 99, type: !81)
!972 = !DILocation(line: 99, column: 18, scope: !966)
!973 = !DILocation(line: 99, column: 39, scope: !966)
!974 = !DILocation(line: 99, column: 26, scope: !966)
!975 = !DILocation(line: 99, column: 43, scope: !966)
!976 = !DILocation(line: 99, column: 24, scope: !966)
!977 = !DILocalVariable(name: "new", scope: !966, file: !441, line: 100, type: !81)
!978 = !DILocation(line: 100, column: 18, scope: !966)
!979 = !DILocation(line: 100, column: 39, scope: !966)
!980 = !DILocation(line: 100, column: 26, scope: !966)
!981 = !DILocation(line: 100, column: 43, scope: !966)
!982 = !DILocation(line: 100, column: 24, scope: !966)
!983 = !DILocalVariable(name: "n", scope: !966, file: !441, line: 101, type: !122)
!984 = !DILocation(line: 101, column: 9, scope: !966)
!985 = !DILocalVariable(name: "h1", scope: !966, file: !441, line: 102, type: !92)
!986 = !DILocation(line: 102, column: 15, scope: !966)
!987 = !DILocalVariable(name: "h2", scope: !966, file: !441, line: 102, type: !92)
!988 = !DILocation(line: 102, column: 20, scope: !966)
!989 = !DILocation(line: 104, column: 13, scope: !990)
!990 = distinct !DILexicalBlock(scope: !966, file: !441, line: 104, column: 6)
!991 = !DILocation(line: 104, column: 18, scope: !990)
!992 = !DILocation(line: 104, column: 29, scope: !990)
!993 = !DILocation(line: 104, column: 34, scope: !990)
!994 = !DILocation(line: 104, column: 6, scope: !990)
!995 = !DILocation(line: 104, column: 45, scope: !990)
!996 = !DILocation(line: 104, column: 6, scope: !966)
!997 = !DILocation(line: 105, column: 3, scope: !990)
!998 = !DILocation(line: 106, column: 40, scope: !999)
!999 = distinct !DILexicalBlock(scope: !966, file: !441, line: 106, column: 6)
!1000 = !DILocation(line: 106, column: 27, scope: !999)
!1001 = !DILocation(line: 106, column: 44, scope: !999)
!1002 = !DILocation(line: 106, column: 64, scope: !999)
!1003 = !DILocation(line: 106, column: 51, scope: !999)
!1004 = !DILocation(line: 106, column: 68, scope: !999)
!1005 = !DILocation(line: 106, column: 7, scope: !999)
!1006 = !DILocation(line: 106, column: 6, scope: !966)
!1007 = !DILocation(line: 107, column: 3, scope: !999)
!1008 = !DILocation(line: 108, column: 8, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !966, file: !441, line: 108, column: 6)
!1010 = !DILocation(line: 108, column: 13, scope: !1009)
!1011 = !DILocation(line: 108, column: 20, scope: !1009)
!1012 = !DILocation(line: 108, column: 32, scope: !1009)
!1013 = !DILocation(line: 108, column: 37, scope: !1009)
!1014 = !DILocation(line: 108, column: 44, scope: !1009)
!1015 = !DILocation(line: 108, column: 27, scope: !1009)
!1016 = !DILocation(line: 108, column: 6, scope: !966)
!1017 = !DILocation(line: 109, column: 3, scope: !1009)
!1018 = !DILocation(line: 110, column: 9, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !966, file: !441, line: 110, column: 2)
!1020 = !DILocation(line: 110, column: 7, scope: !1019)
!1021 = !DILocation(line: 110, column: 14, scope: !1022)
!1022 = !DILexicalBlockFile(scope: !1023, file: !441, discriminator: 1)
!1023 = distinct !DILexicalBlock(scope: !1019, file: !441, line: 110, column: 2)
!1024 = !DILocation(line: 110, column: 20, scope: !1022)
!1025 = !DILocation(line: 110, column: 25, scope: !1022)
!1026 = !DILocation(line: 110, column: 32, scope: !1022)
!1027 = !DILocation(line: 110, column: 18, scope: !1022)
!1028 = !DILocation(line: 110, column: 16, scope: !1022)
!1029 = !DILocation(line: 110, column: 2, scope: !1022)
!1030 = !DILocation(line: 111, column: 36, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1023, file: !441, line: 110, column: 45)
!1032 = !DILocation(line: 111, column: 41, scope: !1031)
!1033 = !DILocation(line: 111, column: 47, scope: !1031)
!1034 = !DILocation(line: 111, column: 23, scope: !1031)
!1035 = !DILocation(line: 111, column: 8, scope: !1031)
!1036 = !DILocation(line: 111, column: 6, scope: !1031)
!1037 = !DILocation(line: 112, column: 36, scope: !1031)
!1038 = !DILocation(line: 112, column: 41, scope: !1031)
!1039 = !DILocation(line: 112, column: 47, scope: !1031)
!1040 = !DILocation(line: 112, column: 23, scope: !1031)
!1041 = !DILocation(line: 112, column: 8, scope: !1031)
!1042 = !DILocation(line: 112, column: 6, scope: !1031)
!1043 = !DILocation(line: 113, column: 26, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1031, file: !441, line: 113, column: 7)
!1045 = !DILocation(line: 113, column: 30, scope: !1044)
!1046 = !DILocation(line: 113, column: 8, scope: !1044)
!1047 = !DILocation(line: 113, column: 7, scope: !1031)
!1048 = !DILocation(line: 114, column: 4, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1044, file: !441, line: 113, column: 35)
!1050 = !DILocation(line: 116, column: 2, scope: !1031)
!1051 = !DILocation(line: 110, column: 41, scope: !1052)
!1052 = !DILexicalBlockFile(scope: !1023, file: !441, discriminator: 2)
!1053 = !DILocation(line: 110, column: 2, scope: !1052)
!1054 = distinct !{!1054, !1055}
!1055 = !DILocation(line: 110, column: 2, scope: !966)
!1056 = !DILocation(line: 118, column: 2, scope: !966)
!1057 = !DILocation(line: 119, column: 1, scope: !966)
!1058 = distinct !DISubprogram(name: "smtp_free_host", scope: !441, file: !441, line: 58, type: !183, isLocal: true, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !449)
!1059 = !DILocalVariable(name: "data", arg: 1, scope: !1058, file: !441, line: 58, type: !178)
!1060 = !DILocation(line: 58, column: 22, scope: !1058)
!1061 = !DILocation(line: 60, column: 8, scope: !1058)
!1062 = !DILocation(line: 60, column: 3, scope: !1058)
!1063 = !DILocation(line: 60, column: 22, scope: !1058)
!1064 = !DILocation(line: 61, column: 1, scope: !1058)
!1065 = distinct !DISubprogram(name: "tcp_bind_connect", scope: !25, file: !25, line: 74, type: !1066, isLocal: true, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !449)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!24, !128, !92}
!1068 = !DILocalVariable(name: "fd", arg: 1, scope: !1065, file: !25, line: 74, type: !128)
!1069 = !DILocation(line: 74, column: 22, scope: !1065)
!1070 = !DILocalVariable(name: "co", arg: 2, scope: !1065, file: !25, line: 74, type: !92)
!1071 = !DILocation(line: 74, column: 39, scope: !1065)
!1072 = !DILocation(line: 76, column: 29, scope: !1065)
!1073 = !DILocation(line: 76, column: 33, scope: !1065)
!1074 = !DILocation(line: 76, column: 9, scope: !1065)
!1075 = !DILocation(line: 76, column: 2, scope: !1065)
!1076 = distinct !DISubprogram(name: "tcp_connection_state", scope: !25, file: !25, line: 94, type: !1077, isLocal: true, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !449)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{!267, !128, !24, !129, !125, !109}
!1079 = !DILocalVariable(name: "fd", arg: 1, scope: !1076, file: !25, line: 94, type: !128)
!1080 = !DILocation(line: 94, column: 26, scope: !1076)
!1081 = !DILocalVariable(name: "status", arg: 2, scope: !1076, file: !25, line: 94, type: !24)
!1082 = !DILocation(line: 94, column: 50, scope: !1076)
!1083 = !DILocalVariable(name: "thread", arg: 3, scope: !1076, file: !25, line: 94, type: !129)
!1084 = !DILocation(line: 94, column: 69, scope: !1076)
!1085 = !DILocalVariable(name: "func", arg: 4, scope: !1076, file: !25, line: 95, type: !125)
!1086 = !DILocation(line: 95, column: 14, scope: !1076)
!1087 = !DILocalVariable(name: "timeout", arg: 5, scope: !1076, file: !25, line: 95, type: !109)
!1088 = !DILocation(line: 95, column: 48, scope: !1076)
!1089 = !DILocation(line: 97, column: 33, scope: !1076)
!1090 = !DILocation(line: 97, column: 37, scope: !1076)
!1091 = !DILocation(line: 97, column: 45, scope: !1076)
!1092 = !DILocation(line: 97, column: 53, scope: !1076)
!1093 = !DILocation(line: 97, column: 59, scope: !1076)
!1094 = !DILocation(line: 97, column: 9, scope: !1076)
!1095 = !DILocation(line: 97, column: 2, scope: !1076)
!1096 = distinct !DISubprogram(name: "smtp_check_thread", scope: !441, file: !441, line: 673, type: !126, isLocal: true, isDefinition: true, scopeLine: 674, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !449)
!1097 = !DILocalVariable(name: "thread", arg: 1, scope: !1096, file: !441, line: 673, type: !129)
!1098 = !DILocation(line: 673, column: 29, scope: !1096)
!1099 = !DILocalVariable(name: "checker", scope: !1096, file: !441, line: 675, type: !306)
!1100 = !DILocation(line: 675, column: 13, scope: !1096)
!1101 = !DILocation(line: 675, column: 25, scope: !1096)
!1102 = !DILocation(line: 675, column: 34, scope: !1096)
!1103 = !DILocation(line: 675, column: 23, scope: !1096)
!1104 = !DILocalVariable(name: "smtp_checker", scope: !1096, file: !441, line: 676, type: !81)
!1105 = !DILocation(line: 676, column: 18, scope: !1096)
!1106 = !DILocation(line: 676, column: 35, scope: !1096)
!1107 = !DILocation(line: 676, column: 45, scope: !1096)
!1108 = !DILocation(line: 676, column: 33, scope: !1096)
!1109 = !DILocalVariable(name: "smtp_host", scope: !1096, file: !441, line: 677, type: !92)
!1110 = !DILocation(line: 677, column: 15, scope: !1096)
!1111 = !DILocation(line: 677, column: 27, scope: !1096)
!1112 = !DILocation(line: 677, column: 41, scope: !1096)
!1113 = !DILocalVariable(name: "status", scope: !1096, file: !441, line: 678, type: !128)
!1114 = !DILocation(line: 678, column: 6, scope: !1096)
!1115 = !DILocation(line: 680, column: 28, scope: !1096)
!1116 = !DILocation(line: 680, column: 11, scope: !1096)
!1117 = !DILocation(line: 680, column: 9, scope: !1096)
!1118 = !DILocation(line: 681, column: 10, scope: !1096)
!1119 = !DILocation(line: 681, column: 2, scope: !1096)
!1120 = !DILocation(line: 683, column: 15, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1096, file: !441, line: 681, column: 18)
!1122 = !DILocation(line: 684, column: 37, scope: !1121)
!1123 = !DILocation(line: 684, column: 49, scope: !1121)
!1124 = !DILocation(line: 684, column: 14, scope: !1121)
!1125 = !DILocation(line: 683, column: 4, scope: !1121)
!1126 = !DILocation(line: 685, column: 4, scope: !1121)
!1127 = !DILocation(line: 688, column: 15, scope: !1121)
!1128 = !DILocation(line: 689, column: 37, scope: !1121)
!1129 = !DILocation(line: 689, column: 49, scope: !1121)
!1130 = !DILocation(line: 689, column: 14, scope: !1121)
!1131 = !DILocation(line: 688, column: 4, scope: !1121)
!1132 = !DILocation(line: 690, column: 4, scope: !1121)
!1133 = !DILocation(line: 697, column: 4, scope: !1121)
!1134 = !DILocation(line: 697, column: 18, scope: !1121)
!1135 = !DILocation(line: 697, column: 24, scope: !1121)
!1136 = !DILocation(line: 698, column: 23, scope: !1121)
!1137 = !DILocation(line: 698, column: 4, scope: !1121)
!1138 = !DILocation(line: 699, column: 4, scope: !1121)
!1139 = !DILocation(line: 703, column: 15, scope: !1121)
!1140 = !DILocation(line: 704, column: 37, scope: !1121)
!1141 = !DILocation(line: 704, column: 49, scope: !1121)
!1142 = !DILocation(line: 704, column: 14, scope: !1121)
!1143 = !DILocation(line: 703, column: 4, scope: !1121)
!1144 = !DILocation(line: 705, column: 4, scope: !1121)
!1145 = !DILocation(line: 708, column: 2, scope: !1096)
!1146 = distinct !DISubprogram(name: "tcp_socket_state", scope: !25, file: !25, line: 87, type: !1147, isLocal: true, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !449)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!24, !129, !125}
!1149 = !DILocalVariable(name: "thread", arg: 1, scope: !1146, file: !25, line: 87, type: !129)
!1150 = !DILocation(line: 87, column: 29, scope: !1146)
!1151 = !DILocalVariable(name: "func", arg: 2, scope: !1146, file: !25, line: 87, type: !125)
!1152 = !DILocation(line: 87, column: 43, scope: !1146)
!1153 = !DILocation(line: 89, column: 22, scope: !1146)
!1154 = !DILocation(line: 89, column: 30, scope: !1146)
!1155 = !DILocation(line: 89, column: 9, scope: !1146)
!1156 = !DILocation(line: 89, column: 2, scope: !1146)
!1157 = distinct !DISubprogram(name: "smtp_final", scope: !441, file: !441, line: 279, type: !1158, isLocal: true, isDefinition: true, scopeLine: 280, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !449)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!128, !129, !128, !1160, null}
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64, align: 64)
!1161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!1162 = !DILocalVariable(name: "thread", arg: 1, scope: !1157, file: !441, line: 279, type: !129)
!1163 = !DILocation(line: 279, column: 22, scope: !1157)
!1164 = !DILocalVariable(name: "error", arg: 2, scope: !1157, file: !441, line: 279, type: !128)
!1165 = !DILocation(line: 279, column: 34, scope: !1157)
!1166 = !DILocalVariable(name: "format", arg: 3, scope: !1157, file: !441, line: 279, type: !1160)
!1167 = !DILocation(line: 279, column: 53, scope: !1157)
!1168 = !DILocalVariable(name: "checker", scope: !1157, file: !441, line: 281, type: !306)
!1169 = !DILocation(line: 281, column: 13, scope: !1157)
!1170 = !DILocation(line: 281, column: 25, scope: !1157)
!1171 = !DILocation(line: 281, column: 34, scope: !1157)
!1172 = !DILocation(line: 281, column: 23, scope: !1157)
!1173 = !DILocalVariable(name: "smtp_checker", scope: !1157, file: !441, line: 282, type: !81)
!1174 = !DILocation(line: 282, column: 18, scope: !1157)
!1175 = !DILocation(line: 282, column: 35, scope: !1157)
!1176 = !DILocation(line: 282, column: 45, scope: !1157)
!1177 = !DILocation(line: 282, column: 33, scope: !1157)
!1178 = !DILocalVariable(name: "error_buff", scope: !1157, file: !441, line: 283, type: !118)
!1179 = !DILocation(line: 283, column: 7, scope: !1157)
!1180 = !DILocalVariable(name: "smtp_buff", scope: !1157, file: !441, line: 284, type: !1181)
!1181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 4336, align: 8, elements: !1182)
!1182 = !{!1183}
!1183 = !DISubrange(count: 542)
!1184 = !DILocation(line: 284, column: 7, scope: !1157)
!1185 = !DILocalVariable(name: "varg_list", scope: !1157, file: !441, line: 285, type: !1186)
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !191, line: 79, baseType: !1187)
!1187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1188, line: 40, baseType: !1189)
!1188 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!1189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 285, baseType: !1190)
!1190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1191, size: 192, align: 64, elements: !227)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 285, size: 192, align: 64, elements: !1192)
!1192 = !{!1193, !1194, !1195, !1196}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1191, file: !1, line: 285, baseType: !90, size: 32, align: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1191, file: !1, line: 285, baseType: !90, size: 32, align: 32, offset: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1191, file: !1, line: 285, baseType: !178, size: 64, align: 64, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1191, file: !1, line: 285, baseType: !178, size: 64, align: 64, offset: 128)
!1197 = !DILocation(line: 285, column: 10, scope: !1157)
!1198 = !DILocalVariable(name: "checker_was_up", scope: !1157, file: !441, line: 286, type: !267)
!1199 = !DILocation(line: 286, column: 6, scope: !1157)
!1200 = !DILocalVariable(name: "rs_was_alive", scope: !1157, file: !441, line: 287, type: !267)
!1201 = !DILocation(line: 287, column: 6, scope: !1157)
!1202 = !DILocation(line: 290, column: 18, scope: !1157)
!1203 = !DILocation(line: 290, column: 2, scope: !1157)
!1204 = !DILocation(line: 293, column: 2, scope: !1157)
!1205 = !DILocation(line: 293, column: 11, scope: !1157)
!1206 = !DILocation(line: 293, column: 19, scope: !1157)
!1207 = !DILocation(line: 295, column: 6, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1157, file: !441, line: 295, column: 6)
!1209 = !DILocation(line: 295, column: 6, scope: !1157)
!1210 = !DILocation(line: 297, column: 7, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1212, file: !441, line: 297, column: 7)
!1212 = distinct !DILexicalBlock(scope: !1208, file: !441, line: 295, column: 13)
!1213 = !DILocation(line: 297, column: 16, scope: !1211)
!1214 = !DILocation(line: 297, column: 7, scope: !1212)
!1215 = !DILocation(line: 298, column: 8, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !441, line: 298, column: 8)
!1217 = distinct !DILexicalBlock(scope: !1211, file: !441, line: 297, column: 23)
!1218 = !DILocation(line: 298, column: 15, scope: !1216)
!1219 = !DILocation(line: 298, column: 8, scope: !1217)
!1220 = !DILocation(line: 300, column: 13, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1216, file: !441, line: 298, column: 23)
!1222 = !DILocation(line: 300, column: 5, scope: !1221)
!1223 = !DILocation(line: 301, column: 13, scope: !1221)
!1224 = !DILocation(line: 301, column: 25, scope: !1221)
!1225 = !DILocation(line: 301, column: 5, scope: !1221)
!1226 = !DILocation(line: 303, column: 4, scope: !1221)
!1227 = !DILocation(line: 304, column: 27, scope: !1221)
!1228 = !DILocation(line: 304, column: 39, scope: !1221)
!1229 = !DILocation(line: 304, column: 5, scope: !1221)
!1230 = !DILocation(line: 305, column: 4, scope: !1221)
!1231 = !DILocation(line: 306, column: 4, scope: !1221)
!1232 = !DILocation(line: 307, column: 5, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1216, file: !441, line: 306, column: 11)
!1234 = !DILocation(line: 309, column: 3, scope: !1217)
!1235 = !DILocation(line: 316, column: 7, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1212, file: !441, line: 316, column: 7)
!1237 = !DILocation(line: 316, column: 16, scope: !1236)
!1238 = !DILocation(line: 316, column: 27, scope: !1236)
!1239 = !DILocation(line: 316, column: 36, scope: !1236)
!1240 = !DILocation(line: 316, column: 25, scope: !1236)
!1241 = !DILocation(line: 316, column: 7, scope: !1212)
!1242 = !DILocation(line: 317, column: 21, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1236, file: !441, line: 316, column: 43)
!1244 = !DILocation(line: 317, column: 29, scope: !1243)
!1245 = !DILocation(line: 317, column: 58, scope: !1243)
!1246 = !DILocation(line: 318, column: 7, scope: !1243)
!1247 = !DILocation(line: 318, column: 16, scope: !1243)
!1248 = !DILocation(line: 317, column: 4, scope: !1243)
!1249 = !DILocation(line: 319, column: 4, scope: !1243)
!1250 = !DILocation(line: 328, column: 7, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1212, file: !441, line: 328, column: 7)
!1252 = !DILocation(line: 328, column: 16, scope: !1251)
!1253 = !DILocation(line: 328, column: 22, scope: !1251)
!1254 = !DILocation(line: 328, column: 26, scope: !1255)
!1255 = !DILexicalBlockFile(scope: !1251, file: !441, discriminator: 1)
!1256 = !DILocation(line: 328, column: 35, scope: !1255)
!1257 = !DILocation(line: 328, column: 7, scope: !1255)
!1258 = !DILocation(line: 329, column: 21, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1251, file: !441, line: 328, column: 44)
!1260 = !DILocation(line: 329, column: 30, scope: !1259)
!1261 = !DILocation(line: 329, column: 19, scope: !1259)
!1262 = !DILocation(line: 330, column: 19, scope: !1259)
!1263 = !DILocation(line: 330, column: 28, scope: !1259)
!1264 = !DILocation(line: 330, column: 32, scope: !1259)
!1265 = !DILocation(line: 330, column: 17, scope: !1259)
!1266 = !DILocation(line: 331, column: 34, scope: !1259)
!1267 = !DILocation(line: 331, column: 4, scope: !1259)
!1268 = !DILocation(line: 332, column: 8, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1259, file: !441, line: 332, column: 8)
!1270 = !DILocation(line: 332, column: 17, scope: !1269)
!1271 = !DILocation(line: 332, column: 21, scope: !1269)
!1272 = !DILocation(line: 332, column: 32, scope: !1269)
!1273 = !DILocation(line: 332, column: 35, scope: !1274)
!1274 = !DILexicalBlockFile(scope: !1269, file: !441, discriminator: 1)
!1275 = !DILocation(line: 332, column: 50, scope: !1274)
!1276 = !DILocation(line: 333, column: 9, scope: !1269)
!1277 = !DILocation(line: 333, column: 25, scope: !1269)
!1278 = !DILocation(line: 333, column: 34, scope: !1269)
!1279 = !DILocation(line: 333, column: 38, scope: !1269)
!1280 = !DILocation(line: 333, column: 22, scope: !1269)
!1281 = !DILocation(line: 333, column: 44, scope: !1269)
!1282 = !DILocation(line: 333, column: 48, scope: !1274)
!1283 = !DILocation(line: 333, column: 61, scope: !1274)
!1284 = !DILocation(line: 332, column: 8, scope: !1285)
!1285 = !DILexicalBlockFile(scope: !1259, file: !441, discriminator: 2)
!1286 = !DILocation(line: 334, column: 9, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !441, line: 334, column: 9)
!1288 = distinct !DILexicalBlock(scope: !1269, file: !441, line: 333, column: 81)
!1289 = !DILocation(line: 334, column: 16, scope: !1287)
!1290 = !DILocation(line: 334, column: 9, scope: !1288)
!1291 = !DILocation(line: 335, column: 15, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1287, file: !441, line: 334, column: 24)
!1293 = !DILocation(line: 335, column: 85, scope: !1292)
!1294 = !DILocation(line: 335, column: 6, scope: !1292)
!1295 = !DILocation(line: 336, column: 5, scope: !1292)
!1296 = !DILocation(line: 337, column: 16, scope: !1292)
!1297 = !DILocation(line: 337, column: 46, scope: !1292)
!1298 = !DILocation(line: 337, column: 58, scope: !1292)
!1299 = !DILocation(line: 337, column: 6, scope: !1292)
!1300 = !DILocation(line: 338, column: 5, scope: !1292)
!1301 = !DILocation(line: 339, column: 5, scope: !1292)
!1302 = !DILocation(line: 340, column: 14, scope: !1287)
!1303 = !DILocation(line: 340, column: 6, scope: !1287)
!1304 = !DILocation(line: 342, column: 5, scope: !1288)
!1305 = !DILocation(line: 342, column: 38, scope: !1288)
!1306 = !DILocation(line: 343, column: 29, scope: !1288)
!1307 = !DILocation(line: 343, column: 43, scope: !1288)
!1308 = !DILocation(line: 343, column: 5, scope: !1288)
!1309 = !DILocation(line: 344, column: 4, scope: !1288)
!1310 = !DILocation(line: 345, column: 3, scope: !1259)
!1311 = !DILocation(line: 348, column: 3, scope: !1212)
!1312 = !DILocation(line: 348, column: 12, scope: !1212)
!1313 = !DILocation(line: 348, column: 21, scope: !1212)
!1314 = !DILocation(line: 349, column: 3, scope: !1212)
!1315 = !DILocation(line: 349, column: 17, scope: !1212)
!1316 = !DILocation(line: 349, column: 26, scope: !1212)
!1317 = !DILocation(line: 352, column: 20, scope: !1212)
!1318 = !DILocation(line: 352, column: 28, scope: !1212)
!1319 = !DILocation(line: 352, column: 57, scope: !1212)
!1320 = !DILocation(line: 352, column: 66, scope: !1212)
!1321 = !DILocation(line: 352, column: 75, scope: !1212)
!1322 = !DILocation(line: 352, column: 3, scope: !1212)
!1323 = !DILocation(line: 354, column: 3, scope: !1212)
!1324 = !DILocation(line: 363, column: 2, scope: !1157)
!1325 = !DILocation(line: 363, column: 11, scope: !1157)
!1326 = !DILocation(line: 363, column: 20, scope: !1157)
!1327 = !DILocation(line: 364, column: 2, scope: !1157)
!1328 = !DILocation(line: 364, column: 16, scope: !1157)
!1329 = !DILocation(line: 364, column: 24, scope: !1157)
!1330 = !DILocation(line: 366, column: 19, scope: !1157)
!1331 = !DILocation(line: 366, column: 27, scope: !1157)
!1332 = !DILocation(line: 366, column: 56, scope: !1157)
!1333 = !DILocation(line: 366, column: 2, scope: !1157)
!1334 = !DILocation(line: 367, column: 2, scope: !1157)
!1335 = !DILocation(line: 368, column: 1, scope: !1157)
!1336 = distinct !DISubprogram(name: "smtp_engine_thread", scope: !441, file: !441, line: 591, type: !126, isLocal: true, isDefinition: true, scopeLine: 592, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !449)
!1337 = !DILocalVariable(name: "thread", arg: 1, scope: !1336, file: !441, line: 591, type: !129)
!1338 = !DILocation(line: 591, column: 30, scope: !1336)
!1339 = !DILocalVariable(name: "checker", scope: !1336, file: !441, line: 593, type: !306)
!1340 = !DILocation(line: 593, column: 13, scope: !1336)
!1341 = !DILocation(line: 593, column: 25, scope: !1336)
!1342 = !DILocation(line: 593, column: 34, scope: !1336)
!1343 = !DILocation(line: 593, column: 23, scope: !1336)
!1344 = !DILocalVariable(name: "smtp_checker", scope: !1336, file: !441, line: 594, type: !81)
!1345 = !DILocation(line: 594, column: 18, scope: !1336)
!1346 = !DILocation(line: 594, column: 35, scope: !1336)
!1347 = !DILocation(line: 594, column: 45, scope: !1336)
!1348 = !DILocation(line: 594, column: 33, scope: !1336)
!1349 = !DILocalVariable(name: "smtp_host", scope: !1336, file: !441, line: 595, type: !92)
!1350 = !DILocation(line: 595, column: 15, scope: !1336)
!1351 = !DILocation(line: 595, column: 27, scope: !1336)
!1352 = !DILocation(line: 595, column: 41, scope: !1336)
!1353 = !DILocation(line: 597, column: 10, scope: !1336)
!1354 = !DILocation(line: 597, column: 24, scope: !1336)
!1355 = !DILocation(line: 597, column: 2, scope: !1336)
!1356 = !DILocation(line: 606, column: 4, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1336, file: !441, line: 597, column: 31)
!1358 = !DILocation(line: 606, column: 18, scope: !1357)
!1359 = !DILocation(line: 606, column: 24, scope: !1357)
!1360 = !DILocation(line: 607, column: 18, scope: !1357)
!1361 = !DILocation(line: 607, column: 4, scope: !1357)
!1362 = !DILocation(line: 608, column: 4, scope: !1357)
!1363 = !DILocation(line: 614, column: 24, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !1357, file: !441, line: 614, column: 8)
!1365 = !DILocation(line: 614, column: 8, scope: !1364)
!1366 = !DILocation(line: 614, column: 32, scope: !1364)
!1367 = !DILocation(line: 614, column: 8, scope: !1357)
!1368 = !DILocation(line: 615, column: 16, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1364, file: !441, line: 614, column: 40)
!1370 = !DILocation(line: 616, column: 38, scope: !1369)
!1371 = !DILocation(line: 616, column: 50, scope: !1369)
!1372 = !DILocation(line: 616, column: 15, scope: !1369)
!1373 = !DILocation(line: 615, column: 5, scope: !1369)
!1374 = !DILocation(line: 617, column: 4, scope: !1369)
!1375 = !DILocation(line: 622, column: 5, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1364, file: !441, line: 617, column: 11)
!1377 = !DILocation(line: 622, column: 19, scope: !1376)
!1378 = !DILocation(line: 622, column: 25, scope: !1376)
!1379 = !DILocation(line: 623, column: 14, scope: !1376)
!1380 = !DILocation(line: 623, column: 28, scope: !1376)
!1381 = !DILocation(line: 624, column: 7, scope: !1376)
!1382 = !DILocation(line: 624, column: 21, scope: !1376)
!1383 = !DILocation(line: 623, column: 5, scope: !1376)
!1384 = !DILocation(line: 625, column: 19, scope: !1376)
!1385 = !DILocation(line: 625, column: 5, scope: !1376)
!1386 = !DILocation(line: 627, column: 4, scope: !1357)
!1387 = !DILocation(line: 631, column: 4, scope: !1357)
!1388 = !DILocation(line: 631, column: 18, scope: !1357)
!1389 = !DILocation(line: 631, column: 24, scope: !1357)
!1390 = !DILocation(line: 632, column: 18, scope: !1357)
!1391 = !DILocation(line: 632, column: 4, scope: !1357)
!1392 = !DILocation(line: 633, column: 4, scope: !1357)
!1393 = !DILocation(line: 638, column: 24, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1357, file: !441, line: 638, column: 8)
!1395 = !DILocation(line: 638, column: 8, scope: !1394)
!1396 = !DILocation(line: 638, column: 32, scope: !1394)
!1397 = !DILocation(line: 638, column: 8, scope: !1357)
!1398 = !DILocation(line: 639, column: 16, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1394, file: !441, line: 638, column: 40)
!1400 = !DILocation(line: 640, column: 38, scope: !1399)
!1401 = !DILocation(line: 640, column: 50, scope: !1399)
!1402 = !DILocation(line: 640, column: 15, scope: !1399)
!1403 = !DILocation(line: 639, column: 5, scope: !1399)
!1404 = !DILocation(line: 641, column: 4, scope: !1399)
!1405 = !DILocation(line: 642, column: 5, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1394, file: !441, line: 641, column: 11)
!1407 = !DILocation(line: 642, column: 19, scope: !1406)
!1408 = !DILocation(line: 642, column: 25, scope: !1406)
!1409 = !DILocation(line: 643, column: 14, scope: !1406)
!1410 = !DILocation(line: 643, column: 28, scope: !1406)
!1411 = !DILocation(line: 643, column: 5, scope: !1406)
!1412 = !DILocation(line: 644, column: 19, scope: !1406)
!1413 = !DILocation(line: 644, column: 5, scope: !1406)
!1414 = !DILocation(line: 646, column: 4, scope: !1357)
!1415 = !DILocation(line: 650, column: 4, scope: !1357)
!1416 = !DILocation(line: 650, column: 18, scope: !1357)
!1417 = !DILocation(line: 650, column: 24, scope: !1357)
!1418 = !DILocation(line: 651, column: 18, scope: !1357)
!1419 = !DILocation(line: 651, column: 4, scope: !1357)
!1420 = !DILocation(line: 652, column: 4, scope: !1357)
!1421 = !DILocation(line: 656, column: 15, scope: !1357)
!1422 = !DILocation(line: 656, column: 4, scope: !1357)
!1423 = !DILocation(line: 657, column: 4, scope: !1357)
!1424 = !DILocation(line: 661, column: 15, scope: !1357)
!1425 = !DILocation(line: 661, column: 4, scope: !1357)
!1426 = !DILocation(line: 662, column: 4, scope: !1357)
!1427 = !DILocation(line: 665, column: 2, scope: !1336)
!1428 = !DILocation(line: 666, column: 1, scope: !1336)
!1429 = distinct !DISubprogram(name: "smtp_get_line", scope: !441, file: !441, line: 468, type: !1430, isLocal: true, isDefinition: true, scopeLine: 469, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !449)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{null, !129, !125}
!1432 = !DILocalVariable(name: "thread", arg: 1, scope: !1429, file: !441, line: 468, type: !129)
!1433 = !DILocation(line: 468, column: 25, scope: !1429)
!1434 = !DILocalVariable(name: "callback", arg: 2, scope: !1429, file: !441, line: 468, type: !125)
!1435 = !DILocation(line: 468, column: 39, scope: !1429)
!1436 = !DILocalVariable(name: "checker", scope: !1429, file: !441, line: 470, type: !306)
!1437 = !DILocation(line: 470, column: 13, scope: !1429)
!1438 = !DILocation(line: 470, column: 25, scope: !1429)
!1439 = !DILocation(line: 470, column: 34, scope: !1429)
!1440 = !DILocation(line: 470, column: 23, scope: !1429)
!1441 = !DILocalVariable(name: "smtp_checker", scope: !1429, file: !441, line: 471, type: !81)
!1442 = !DILocation(line: 471, column: 18, scope: !1429)
!1443 = !DILocation(line: 471, column: 35, scope: !1429)
!1444 = !DILocation(line: 471, column: 45, scope: !1429)
!1445 = !DILocation(line: 471, column: 33, scope: !1429)
!1446 = !DILocalVariable(name: "smtp_host", scope: !1429, file: !441, line: 472, type: !92)
!1447 = !DILocation(line: 472, column: 15, scope: !1429)
!1448 = !DILocation(line: 472, column: 27, scope: !1429)
!1449 = !DILocation(line: 472, column: 41, scope: !1429)
!1450 = !DILocation(line: 475, column: 18, scope: !1429)
!1451 = !DILocation(line: 475, column: 2, scope: !1429)
!1452 = !DILocation(line: 478, column: 26, scope: !1429)
!1453 = !DILocation(line: 478, column: 2, scope: !1429)
!1454 = !DILocation(line: 478, column: 16, scope: !1429)
!1455 = !DILocation(line: 478, column: 24, scope: !1429)
!1456 = !DILocation(line: 481, column: 18, scope: !1429)
!1457 = !DILocation(line: 481, column: 26, scope: !1429)
!1458 = !DILocation(line: 481, column: 52, scope: !1429)
!1459 = !DILocation(line: 482, column: 3, scope: !1429)
!1460 = !DILocation(line: 482, column: 11, scope: !1429)
!1461 = !DILocation(line: 482, column: 13, scope: !1429)
!1462 = !DILocation(line: 482, column: 17, scope: !1429)
!1463 = !DILocation(line: 482, column: 28, scope: !1429)
!1464 = !DILocation(line: 481, column: 2, scope: !1429)
!1465 = !DILocation(line: 483, column: 19, scope: !1429)
!1466 = !DILocation(line: 483, column: 2, scope: !1429)
!1467 = !DILocation(line: 484, column: 2, scope: !1429)
!1468 = distinct !DISubprogram(name: "smtp_get_status", scope: !441, file: !441, line: 567, type: !126, isLocal: true, isDefinition: true, scopeLine: 568, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !449)
!1469 = !DILocalVariable(name: "thread", arg: 1, scope: !1468, file: !441, line: 567, type: !129)
!1470 = !DILocation(line: 567, column: 27, scope: !1468)
!1471 = !DILocalVariable(name: "checker", scope: !1468, file: !441, line: 569, type: !306)
!1472 = !DILocation(line: 569, column: 13, scope: !1468)
!1473 = !DILocation(line: 569, column: 25, scope: !1468)
!1474 = !DILocation(line: 569, column: 34, scope: !1468)
!1475 = !DILocation(line: 569, column: 23, scope: !1468)
!1476 = !DILocalVariable(name: "smtp_checker", scope: !1468, file: !441, line: 570, type: !81)
!1477 = !DILocation(line: 570, column: 18, scope: !1468)
!1478 = !DILocation(line: 570, column: 35, scope: !1468)
!1479 = !DILocation(line: 570, column: 45, scope: !1468)
!1480 = !DILocation(line: 570, column: 33, scope: !1468)
!1481 = !DILocalVariable(name: "buff", scope: !1468, file: !441, line: 571, type: !87)
!1482 = !DILocation(line: 571, column: 8, scope: !1468)
!1483 = !DILocation(line: 571, column: 15, scope: !1468)
!1484 = !DILocation(line: 571, column: 29, scope: !1468)
!1485 = !DILocalVariable(name: "status", scope: !1468, file: !441, line: 572, type: !128)
!1486 = !DILocation(line: 572, column: 6, scope: !1468)
!1487 = !DILocalVariable(name: "endptr", scope: !1468, file: !441, line: 573, type: !87)
!1488 = !DILocation(line: 573, column: 8, scope: !1468)
!1489 = !DILocation(line: 575, column: 19, scope: !1468)
!1490 = !DILocation(line: 575, column: 11, scope: !1468)
!1491 = !DILocation(line: 575, column: 9, scope: !1468)
!1492 = !DILocation(line: 576, column: 6, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1468, file: !441, line: 576, column: 6)
!1494 = !DILocation(line: 576, column: 15, scope: !1493)
!1495 = !DILocation(line: 576, column: 13, scope: !1493)
!1496 = !DILocation(line: 576, column: 20, scope: !1493)
!1497 = !DILocation(line: 576, column: 25, scope: !1493)
!1498 = !DILocation(line: 577, column: 8, scope: !1493)
!1499 = !DILocation(line: 577, column: 7, scope: !1493)
!1500 = !DILocation(line: 577, column: 15, scope: !1493)
!1501 = !DILocation(line: 577, column: 19, scope: !1502)
!1502 = !DILexicalBlockFile(scope: !1493, file: !441, discriminator: 1)
!1503 = !DILocation(line: 577, column: 18, scope: !1502)
!1504 = !DILocation(line: 577, column: 26, scope: !1502)
!1505 = !DILocation(line: 576, column: 6, scope: !1506)
!1506 = !DILexicalBlockFile(scope: !1468, file: !441, discriminator: 1)
!1507 = !DILocation(line: 578, column: 3, scope: !1493)
!1508 = !DILocation(line: 580, column: 9, scope: !1468)
!1509 = !DILocation(line: 580, column: 2, scope: !1468)
!1510 = !DILocation(line: 581, column: 1, scope: !1468)
!1511 = distinct !DISubprogram(name: "smtp_put_line", scope: !441, file: !441, line: 542, type: !1430, isLocal: true, isDefinition: true, scopeLine: 543, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !449)
!1512 = !DILocalVariable(name: "thread", arg: 1, scope: !1511, file: !441, line: 542, type: !129)
!1513 = !DILocation(line: 542, column: 25, scope: !1511)
!1514 = !DILocalVariable(name: "callback", arg: 2, scope: !1511, file: !441, line: 542, type: !125)
!1515 = !DILocation(line: 542, column: 39, scope: !1511)
!1516 = !DILocalVariable(name: "checker", scope: !1511, file: !441, line: 544, type: !306)
!1517 = !DILocation(line: 544, column: 13, scope: !1511)
!1518 = !DILocation(line: 544, column: 25, scope: !1511)
!1519 = !DILocation(line: 544, column: 34, scope: !1511)
!1520 = !DILocation(line: 544, column: 23, scope: !1511)
!1521 = !DILocalVariable(name: "smtp_checker", scope: !1511, file: !441, line: 545, type: !81)
!1522 = !DILocation(line: 545, column: 18, scope: !1511)
!1523 = !DILocation(line: 545, column: 35, scope: !1511)
!1524 = !DILocation(line: 545, column: 45, scope: !1511)
!1525 = !DILocation(line: 545, column: 33, scope: !1511)
!1526 = !DILocalVariable(name: "smtp_host", scope: !1511, file: !441, line: 546, type: !92)
!1527 = !DILocation(line: 546, column: 15, scope: !1511)
!1528 = !DILocation(line: 546, column: 27, scope: !1511)
!1529 = !DILocation(line: 546, column: 41, scope: !1511)
!1530 = !DILocation(line: 548, column: 2, scope: !1511)
!1531 = !DILocation(line: 548, column: 16, scope: !1511)
!1532 = !DILocation(line: 548, column: 31, scope: !1511)
!1533 = !DILocation(line: 549, column: 34, scope: !1511)
!1534 = !DILocation(line: 549, column: 48, scope: !1511)
!1535 = !DILocation(line: 549, column: 27, scope: !1511)
!1536 = !DILocation(line: 549, column: 2, scope: !1511)
!1537 = !DILocation(line: 549, column: 16, scope: !1511)
!1538 = !DILocation(line: 549, column: 25, scope: !1511)
!1539 = !DILocation(line: 552, column: 26, scope: !1511)
!1540 = !DILocation(line: 552, column: 2, scope: !1511)
!1541 = !DILocation(line: 552, column: 16, scope: !1511)
!1542 = !DILocation(line: 552, column: 24, scope: !1511)
!1543 = !DILocation(line: 555, column: 19, scope: !1511)
!1544 = !DILocation(line: 555, column: 27, scope: !1511)
!1545 = !DILocation(line: 555, column: 53, scope: !1511)
!1546 = !DILocation(line: 556, column: 5, scope: !1511)
!1547 = !DILocation(line: 556, column: 13, scope: !1511)
!1548 = !DILocation(line: 556, column: 15, scope: !1511)
!1549 = !DILocation(line: 556, column: 19, scope: !1511)
!1550 = !DILocation(line: 556, column: 30, scope: !1511)
!1551 = !DILocation(line: 555, column: 2, scope: !1511)
!1552 = !DILocation(line: 557, column: 18, scope: !1511)
!1553 = !DILocation(line: 557, column: 2, scope: !1511)
!1554 = !DILocation(line: 558, column: 2, scope: !1511)
!1555 = distinct !DISubprogram(name: "smtp_clear_buff", scope: !441, file: !441, line: 374, type: !1556, isLocal: true, isDefinition: true, scopeLine: 375, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !449)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{null, !129}
!1558 = !DILocalVariable(name: "thread", arg: 1, scope: !1555, file: !441, line: 374, type: !129)
!1559 = !DILocation(line: 374, column: 27, scope: !1555)
!1560 = !DILocalVariable(name: "checker", scope: !1555, file: !441, line: 376, type: !306)
!1561 = !DILocation(line: 376, column: 13, scope: !1555)
!1562 = !DILocation(line: 376, column: 25, scope: !1555)
!1563 = !DILocation(line: 376, column: 34, scope: !1555)
!1564 = !DILocation(line: 376, column: 23, scope: !1555)
!1565 = !DILocalVariable(name: "smtp_checker", scope: !1555, file: !441, line: 377, type: !81)
!1566 = !DILocation(line: 377, column: 18, scope: !1555)
!1567 = !DILocation(line: 377, column: 35, scope: !1555)
!1568 = !DILocation(line: 377, column: 45, scope: !1555)
!1569 = !DILocation(line: 377, column: 33, scope: !1555)
!1570 = !DILocation(line: 378, column: 9, scope: !1555)
!1571 = !DILocation(line: 378, column: 23, scope: !1555)
!1572 = !DILocation(line: 378, column: 2, scope: !1555)
!1573 = !DILocation(line: 379, column: 2, scope: !1555)
!1574 = !DILocation(line: 379, column: 16, scope: !1555)
!1575 = !DILocation(line: 379, column: 25, scope: !1555)
!1576 = !DILocation(line: 380, column: 1, scope: !1555)
!1577 = distinct !DISubprogram(name: "smtp_get_line_cb", scope: !441, file: !441, line: 389, type: !126, isLocal: true, isDefinition: true, scopeLine: 390, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !449)
!1578 = !DILocalVariable(name: "thread", arg: 1, scope: !1577, file: !441, line: 389, type: !129)
!1579 = !DILocation(line: 389, column: 28, scope: !1577)
!1580 = !DILocalVariable(name: "checker", scope: !1577, file: !441, line: 391, type: !306)
!1581 = !DILocation(line: 391, column: 13, scope: !1577)
!1582 = !DILocation(line: 391, column: 25, scope: !1577)
!1583 = !DILocation(line: 391, column: 34, scope: !1577)
!1584 = !DILocation(line: 391, column: 23, scope: !1577)
!1585 = !DILocalVariable(name: "smtp_checker", scope: !1577, file: !441, line: 392, type: !81)
!1586 = !DILocation(line: 392, column: 18, scope: !1577)
!1587 = !DILocation(line: 392, column: 35, scope: !1577)
!1588 = !DILocation(line: 392, column: 45, scope: !1577)
!1589 = !DILocation(line: 392, column: 33, scope: !1577)
!1590 = !DILocalVariable(name: "smtp_host", scope: !1577, file: !441, line: 393, type: !92)
!1591 = !DILocation(line: 393, column: 15, scope: !1577)
!1592 = !DILocation(line: 393, column: 27, scope: !1577)
!1593 = !DILocation(line: 393, column: 41, scope: !1577)
!1594 = !DILocalVariable(name: "x", scope: !1577, file: !441, line: 394, type: !90)
!1595 = !DILocation(line: 394, column: 11, scope: !1577)
!1596 = !DILocalVariable(name: "r", scope: !1577, file: !441, line: 395, type: !1597)
!1597 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !294, line: 223, baseType: !1598)
!1598 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !220, line: 172, baseType: !221)
!1599 = !DILocation(line: 395, column: 10, scope: !1577)
!1600 = !DILocation(line: 398, column: 6, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1577, file: !441, line: 398, column: 6)
!1602 = !DILocation(line: 398, column: 14, scope: !1601)
!1603 = !DILocation(line: 398, column: 19, scope: !1601)
!1604 = !DILocation(line: 398, column: 6, scope: !1577)
!1605 = !DILocation(line: 399, column: 14, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1601, file: !441, line: 398, column: 43)
!1607 = !DILocation(line: 400, column: 35, scope: !1606)
!1608 = !DILocation(line: 400, column: 47, scope: !1606)
!1609 = !DILocation(line: 400, column: 12, scope: !1606)
!1610 = !DILocation(line: 399, column: 3, scope: !1606)
!1611 = !DILocation(line: 401, column: 3, scope: !1606)
!1612 = !DILocation(line: 405, column: 6, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1577, file: !441, line: 405, column: 6)
!1614 = !DILocation(line: 405, column: 20, scope: !1613)
!1615 = !DILocation(line: 405, column: 29, scope: !1613)
!1616 = !DILocation(line: 405, column: 6, scope: !1577)
!1617 = !DILocation(line: 408, column: 35, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1613, file: !441, line: 405, column: 37)
!1619 = !DILocation(line: 408, column: 47, scope: !1618)
!1620 = !DILocation(line: 408, column: 12, scope: !1618)
!1621 = !DILocation(line: 406, column: 3, scope: !1618)
!1622 = !DILocation(line: 409, column: 19, scope: !1618)
!1623 = !DILocation(line: 409, column: 3, scope: !1618)
!1624 = !DILocation(line: 410, column: 2, scope: !1618)
!1625 = !DILocation(line: 413, column: 11, scope: !1577)
!1626 = !DILocation(line: 413, column: 19, scope: !1577)
!1627 = !DILocation(line: 413, column: 21, scope: !1577)
!1628 = !DILocation(line: 413, column: 25, scope: !1577)
!1629 = !DILocation(line: 413, column: 39, scope: !1577)
!1630 = !DILocation(line: 413, column: 46, scope: !1577)
!1631 = !DILocation(line: 413, column: 60, scope: !1577)
!1632 = !DILocation(line: 413, column: 44, scope: !1577)
!1633 = !DILocation(line: 414, column: 11, scope: !1577)
!1634 = !DILocation(line: 414, column: 25, scope: !1577)
!1635 = !DILocation(line: 414, column: 9, scope: !1577)
!1636 = !DILocation(line: 413, column: 6, scope: !1577)
!1637 = !DILocation(line: 413, column: 4, scope: !1577)
!1638 = !DILocation(line: 416, column: 6, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1577, file: !441, line: 416, column: 6)
!1640 = !DILocation(line: 416, column: 8, scope: !1639)
!1641 = !DILocation(line: 416, column: 14, scope: !1639)
!1642 = !DILocation(line: 416, column: 19, scope: !1643)
!1643 = !DILexicalBlockFile(scope: !1639, file: !441, discriminator: 1)
!1644 = !DILocation(line: 416, column: 18, scope: !1643)
!1645 = !DILocation(line: 416, column: 23, scope: !1643)
!1646 = !DILocation(line: 416, column: 33, scope: !1643)
!1647 = !DILocation(line: 416, column: 38, scope: !1648)
!1648 = !DILexicalBlockFile(scope: !1639, file: !441, discriminator: 2)
!1649 = !DILocation(line: 416, column: 37, scope: !1648)
!1650 = !DILocation(line: 416, column: 42, scope: !1648)
!1651 = !DILocation(line: 416, column: 6, scope: !1648)
!1652 = !DILocation(line: 417, column: 19, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1639, file: !441, line: 416, column: 53)
!1654 = !DILocation(line: 417, column: 27, scope: !1653)
!1655 = !DILocation(line: 417, column: 53, scope: !1653)
!1656 = !DILocation(line: 418, column: 5, scope: !1653)
!1657 = !DILocation(line: 418, column: 13, scope: !1653)
!1658 = !DILocation(line: 418, column: 15, scope: !1653)
!1659 = !DILocation(line: 418, column: 19, scope: !1653)
!1660 = !DILocation(line: 418, column: 30, scope: !1653)
!1661 = !DILocation(line: 417, column: 3, scope: !1653)
!1662 = !DILocation(line: 419, column: 3, scope: !1653)
!1663 = !DILocation(line: 420, column: 13, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1639, file: !441, line: 420, column: 13)
!1665 = !DILocation(line: 420, column: 15, scope: !1664)
!1666 = !DILocation(line: 420, column: 13, scope: !1639)
!1667 = !DILocation(line: 421, column: 37, scope: !1664)
!1668 = !DILocation(line: 421, column: 3, scope: !1664)
!1669 = !DILocation(line: 421, column: 17, scope: !1664)
!1670 = !DILocation(line: 421, column: 26, scope: !1664)
!1671 = !DILocation(line: 424, column: 9, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1577, file: !441, line: 424, column: 2)
!1673 = !DILocation(line: 424, column: 7, scope: !1672)
!1674 = !DILocation(line: 424, column: 14, scope: !1675)
!1675 = !DILexicalBlockFile(scope: !1676, file: !441, discriminator: 1)
!1676 = distinct !DILexicalBlock(scope: !1672, file: !441, line: 424, column: 2)
!1677 = !DILocation(line: 424, column: 16, scope: !1675)
!1678 = !DILocation(line: 424, column: 2, scope: !1675)
!1679 = !DILocation(line: 425, column: 26, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !441, line: 425, column: 7)
!1681 = distinct !DILexicalBlock(scope: !1676, file: !441, line: 424, column: 29)
!1682 = !DILocation(line: 425, column: 7, scope: !1680)
!1683 = !DILocation(line: 425, column: 21, scope: !1680)
!1684 = !DILocation(line: 425, column: 29, scope: !1680)
!1685 = !DILocation(line: 425, column: 7, scope: !1681)
!1686 = !DILocation(line: 426, column: 4, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1680, file: !441, line: 425, column: 38)
!1688 = !DILocation(line: 426, column: 18, scope: !1687)
!1689 = !DILocation(line: 426, column: 33, scope: !1687)
!1690 = !DILocation(line: 432, column: 5, scope: !1687)
!1691 = !DILocation(line: 432, column: 19, scope: !1687)
!1692 = !DILocation(line: 432, column: 28, scope: !1687)
!1693 = !DILocation(line: 432, column: 4, scope: !1687)
!1694 = !DILocation(line: 434, column: 4, scope: !1687)
!1695 = !DILocation(line: 436, column: 2, scope: !1681)
!1696 = !DILocation(line: 424, column: 25, scope: !1697)
!1697 = !DILexicalBlockFile(scope: !1676, file: !441, discriminator: 2)
!1698 = !DILocation(line: 424, column: 2, scope: !1697)
!1699 = distinct !{!1699, !1700}
!1700 = !DILocation(line: 424, column: 2, scope: !1577)
!1701 = !DILocation(line: 442, column: 6, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1577, file: !441, line: 442, column: 6)
!1703 = !DILocation(line: 442, column: 8, scope: !1702)
!1704 = !DILocation(line: 442, column: 6, scope: !1577)
!1705 = !DILocation(line: 443, column: 14, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1702, file: !441, line: 442, column: 14)
!1707 = !DILocation(line: 444, column: 36, scope: !1706)
!1708 = !DILocation(line: 444, column: 48, scope: !1706)
!1709 = !DILocation(line: 444, column: 13, scope: !1706)
!1710 = !DILocation(line: 443, column: 3, scope: !1706)
!1711 = !DILocation(line: 445, column: 3, scope: !1706)
!1712 = !DILocation(line: 453, column: 18, scope: !1577)
!1713 = !DILocation(line: 453, column: 26, scope: !1577)
!1714 = !DILocation(line: 453, column: 52, scope: !1577)
!1715 = !DILocation(line: 454, column: 4, scope: !1577)
!1716 = !DILocation(line: 454, column: 12, scope: !1577)
!1717 = !DILocation(line: 454, column: 14, scope: !1577)
!1718 = !DILocation(line: 454, column: 18, scope: !1577)
!1719 = !DILocation(line: 454, column: 29, scope: !1577)
!1720 = !DILocation(line: 453, column: 2, scope: !1577)
!1721 = !DILocation(line: 455, column: 2, scope: !1577)
!1722 = !DILocation(line: 456, column: 1, scope: !1577)
!1723 = distinct !DISubprogram(name: "smtp_put_line_cb", scope: !441, file: !441, line: 494, type: !126, isLocal: true, isDefinition: true, scopeLine: 495, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !449)
!1724 = !DILocalVariable(name: "thread", arg: 1, scope: !1723, file: !441, line: 494, type: !129)
!1725 = !DILocation(line: 494, column: 28, scope: !1723)
!1726 = !DILocalVariable(name: "checker", scope: !1723, file: !441, line: 496, type: !306)
!1727 = !DILocation(line: 496, column: 13, scope: !1723)
!1728 = !DILocation(line: 496, column: 25, scope: !1723)
!1729 = !DILocation(line: 496, column: 34, scope: !1723)
!1730 = !DILocation(line: 496, column: 23, scope: !1723)
!1731 = !DILocalVariable(name: "smtp_checker", scope: !1723, file: !441, line: 497, type: !81)
!1732 = !DILocation(line: 497, column: 18, scope: !1723)
!1733 = !DILocation(line: 497, column: 35, scope: !1723)
!1734 = !DILocation(line: 497, column: 45, scope: !1723)
!1735 = !DILocation(line: 497, column: 33, scope: !1723)
!1736 = !DILocalVariable(name: "smtp_host", scope: !1723, file: !441, line: 498, type: !92)
!1737 = !DILocation(line: 498, column: 15, scope: !1723)
!1738 = !DILocation(line: 498, column: 27, scope: !1723)
!1739 = !DILocation(line: 498, column: 41, scope: !1723)
!1740 = !DILocalVariable(name: "w", scope: !1723, file: !441, line: 499, type: !1597)
!1741 = !DILocation(line: 499, column: 10, scope: !1723)
!1742 = !DILocation(line: 503, column: 6, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1723, file: !441, line: 503, column: 6)
!1744 = !DILocation(line: 503, column: 14, scope: !1743)
!1745 = !DILocation(line: 503, column: 19, scope: !1743)
!1746 = !DILocation(line: 503, column: 6, scope: !1723)
!1747 = !DILocation(line: 504, column: 14, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1743, file: !441, line: 503, column: 44)
!1749 = !DILocation(line: 505, column: 36, scope: !1748)
!1750 = !DILocation(line: 505, column: 48, scope: !1748)
!1751 = !DILocation(line: 505, column: 13, scope: !1748)
!1752 = !DILocation(line: 504, column: 3, scope: !1748)
!1753 = !DILocation(line: 506, column: 3, scope: !1748)
!1754 = !DILocation(line: 510, column: 12, scope: !1723)
!1755 = !DILocation(line: 510, column: 20, scope: !1723)
!1756 = !DILocation(line: 510, column: 22, scope: !1723)
!1757 = !DILocation(line: 510, column: 26, scope: !1723)
!1758 = !DILocation(line: 510, column: 40, scope: !1723)
!1759 = !DILocation(line: 510, column: 46, scope: !1723)
!1760 = !DILocation(line: 510, column: 60, scope: !1723)
!1761 = !DILocation(line: 510, column: 6, scope: !1723)
!1762 = !DILocation(line: 510, column: 4, scope: !1723)
!1763 = !DILocation(line: 512, column: 6, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1723, file: !441, line: 512, column: 6)
!1765 = !DILocation(line: 512, column: 8, scope: !1764)
!1766 = !DILocation(line: 512, column: 14, scope: !1764)
!1767 = !DILocation(line: 512, column: 19, scope: !1768)
!1768 = !DILexicalBlockFile(scope: !1764, file: !441, discriminator: 1)
!1769 = !DILocation(line: 512, column: 18, scope: !1768)
!1770 = !DILocation(line: 512, column: 23, scope: !1768)
!1771 = !DILocation(line: 512, column: 33, scope: !1768)
!1772 = !DILocation(line: 512, column: 38, scope: !1773)
!1773 = !DILexicalBlockFile(scope: !1764, file: !441, discriminator: 2)
!1774 = !DILocation(line: 512, column: 37, scope: !1773)
!1775 = !DILocation(line: 512, column: 42, scope: !1773)
!1776 = !DILocation(line: 512, column: 6, scope: !1773)
!1777 = !DILocation(line: 513, column: 20, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1764, file: !441, line: 512, column: 53)
!1779 = !DILocation(line: 513, column: 28, scope: !1778)
!1780 = !DILocation(line: 513, column: 54, scope: !1778)
!1781 = !DILocation(line: 514, column: 6, scope: !1778)
!1782 = !DILocation(line: 514, column: 14, scope: !1778)
!1783 = !DILocation(line: 514, column: 16, scope: !1778)
!1784 = !DILocation(line: 514, column: 20, scope: !1778)
!1785 = !DILocation(line: 514, column: 31, scope: !1778)
!1786 = !DILocation(line: 513, column: 3, scope: !1778)
!1787 = !DILocation(line: 515, column: 3, scope: !1778)
!1788 = !DILocation(line: 526, column: 6, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1723, file: !441, line: 526, column: 6)
!1790 = !DILocation(line: 526, column: 8, scope: !1789)
!1791 = !DILocation(line: 526, column: 6, scope: !1723)
!1792 = !DILocation(line: 527, column: 14, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1789, file: !441, line: 526, column: 14)
!1794 = !DILocation(line: 528, column: 36, scope: !1793)
!1795 = !DILocation(line: 528, column: 48, scope: !1793)
!1796 = !DILocation(line: 528, column: 13, scope: !1793)
!1797 = !DILocation(line: 527, column: 3, scope: !1793)
!1798 = !DILocation(line: 529, column: 3, scope: !1793)
!1799 = !DILocation(line: 533, column: 3, scope: !1723)
!1800 = !DILocation(line: 533, column: 17, scope: !1723)
!1801 = !DILocation(line: 533, column: 26, scope: !1723)
!1802 = !DILocation(line: 533, column: 2, scope: !1723)
!1803 = !DILocation(line: 534, column: 2, scope: !1723)
!1804 = !DILocation(line: 535, column: 1, scope: !1723)
