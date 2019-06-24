; ModuleID = './[inter]keepalived--check--check_tcp.o.i'
source_filename = "./[inter]keepalived--check--check_tcp.o.i"
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
%struct._conn_opts = type { %struct.sockaddr_storage, %struct.sockaddr_storage, [16 x i8], i32, i32 }
%struct._checker = type { void (i8*)*, void (%struct._IO_FILE*, i8*)*, i32 (%struct._thread*)*, i1 (i8*, i8*)*, %struct._virtual_server*, %struct._real_server*, i8*, i8, i8, i8, %struct._conn_opts*, i32, i64, i64, i32, i64, i32, i32, i64 }
%struct._virtual_server = type { i8*, %struct._virtual_server_group*, %struct.sockaddr_storage, i32, %struct._real_server*, i16, i16, i8, i32, [16 x i8], i32, i32, [16 x i8], i32, i32, i8*, i32, %struct._list*, i32, i8, i8, i8, i64, i64, i32, i64, %struct._notify_script*, %struct._notify_script*, i32, i32, i32, i8, i8 }
%struct._virtual_server_group = type { i8*, %struct._list*, %struct._list* }
%struct._real_server = type { %struct.sockaddr_storage, i32, i32, i32, i32, i32, i32, i32, %struct._notify_script*, %struct._notify_script*, i32, i64, i64, i32, i64, i32, i8, i32, i8, i8, i8* }

@.str = private unnamed_addr constant [10 x i8] c"TCP_CHECK\00", align 1
@garp_delay = common global %struct._list* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"   Keepalive method = TCP_CHECK\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"TCP connect fail to create socket. Rescheduling.\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"TCP socket bind failed. Rescheduling.\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"TCP connection to %s timeout.\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"TCP connection to %s failed.\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"TCP connection to %s success.\00", align 1
@global_data = external global %struct._data*, align 8
@.str.7 = private unnamed_addr constant [35 x i8] c"=> TCP CHECK succeed on service <=\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"Check on service %s failed after %d retries.\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Check on service %s failed.\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"=> TCP CHECK failed on service <=\00", align 1
@checkers_queue = external global %struct._list*, align 8

; Function Attrs: nounwind uwtable
define void @install_tcp_check_keyword() #0 !dbg !408 {
  call void @install_keyword(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), void (%struct._vector*)* @tcp_check_handler), !dbg !413
  call void @install_sublevel(), !dbg !414
  call void @install_checker_common_keywords(i1 zeroext true), !dbg !415
  call void @install_sublevel_end_handler(void ()* @tcp_check_end_handler), !dbg !416
  call void @install_sublevel_end(), !dbg !417
  ret void, !dbg !418
}

declare void @install_keyword(i8*, void (%struct._vector*)*) #1

; Function Attrs: nounwind uwtable
define internal void @tcp_check_handler(%struct._vector*) #0 !dbg !419 {
  %2 = alloca %struct._vector*, align 8
  store %struct._vector* %0, %struct._vector** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vector** %2, metadata !431, metadata !432), !dbg !433
  %3 = call i8* @zalloc(i64 280), !dbg !434
  %4 = bitcast i8* %3 to %struct._conn_opts*, !dbg !435
  %5 = call %struct._checker* @queue_checker(void (i8*)* @free_tcp_check, void (%struct._IO_FILE*, i8*)* @dump_tcp_check, i32 (%struct._thread*)* @tcp_connect_thread, i1 (i8*, i8*)* @tcp_check_compare, i8* null, %struct._conn_opts* %4), !dbg !436
  ret void, !dbg !437
}

declare void @install_sublevel() #1

declare void @install_checker_common_keywords(i1 zeroext) #1

declare void @install_sublevel_end_handler(void ()*) #1

; Function Attrs: nounwind uwtable
define internal void @tcp_check_end_handler() #0 !dbg !438 {
  %1 = load %struct._list*, %struct._list** @checkers_queue, align 8, !dbg !439
  %2 = getelementptr inbounds %struct._list, %struct._list* %1, i32 0, i32 1, !dbg !441
  %3 = load %struct._element*, %struct._element** %2, align 8, !dbg !441
  %4 = getelementptr inbounds %struct._element, %struct._element* %3, i32 0, i32 2, !dbg !442
  %5 = load i8*, i8** %4, align 8, !dbg !442
  %6 = bitcast i8* %5 to %struct._checker*, !dbg !443
  %7 = getelementptr inbounds %struct._checker, %struct._checker* %6, i32 0, i32 10, !dbg !444
  %8 = load %struct._conn_opts*, %struct._conn_opts** %7, align 8, !dbg !444
  %9 = call zeroext i1 @check_conn_opts(%struct._conn_opts* %8), !dbg !445
  br i1 %9, label %11, label %10, !dbg !446

; <label>:10:                                     ; preds = %0
  call void @dequeue_new_checker(), !dbg !447
  br label %11, !dbg !449

; <label>:11:                                     ; preds = %10, %0
  ret void, !dbg !450
}

declare void @install_sublevel_end() #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare %struct._checker* @queue_checker(void (i8*)*, void (%struct._IO_FILE*, i8*)*, i32 (%struct._thread*)*, i1 (i8*, i8*)*, i8*, %struct._conn_opts*) #1

; Function Attrs: nounwind uwtable
define internal void @free_tcp_check(i8*) #0 !dbg !451 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !452, metadata !432), !dbg !453
  %3 = load i8*, i8** %2, align 8, !dbg !454
  %4 = bitcast i8* %3 to %struct._checker*, !dbg !455
  %5 = getelementptr inbounds %struct._checker, %struct._checker* %4, i32 0, i32 10, !dbg !456
  %6 = load %struct._conn_opts*, %struct._conn_opts** %5, align 8, !dbg !456
  %7 = bitcast %struct._conn_opts* %6 to i8*, !dbg !457
  call void @free(i8* %7) #5, !dbg !458
  %8 = load i8*, i8** %2, align 8, !dbg !459
  %9 = bitcast i8* %8 to %struct._checker*, !dbg !460
  %10 = getelementptr inbounds %struct._checker, %struct._checker* %9, i32 0, i32 10, !dbg !461
  store %struct._conn_opts* null, %struct._conn_opts** %10, align 8, !dbg !462
  %11 = load i8*, i8** %2, align 8, !dbg !463
  call void @free(i8* %11) #5, !dbg !464
  store i8* null, i8** %2, align 8, !dbg !465
  ret void, !dbg !466
}

; Function Attrs: nounwind uwtable
define internal void @dump_tcp_check(%struct._IO_FILE*, i8*) #0 !dbg !467 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._checker*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %3, metadata !468, metadata !432), !dbg !469
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !470, metadata !432), !dbg !471
  call void @llvm.dbg.declare(metadata %struct._checker** %5, metadata !472, metadata !432), !dbg !473
  %6 = load i8*, i8** %4, align 8, !dbg !474
  %7 = bitcast i8* %6 to %struct._checker*, !dbg !474
  store %struct._checker* %7, %struct._checker** %5, align 8, !dbg !473
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !475
  call void (%struct._IO_FILE*, i8*, ...) @conf_write(%struct._IO_FILE* %8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0)), !dbg !476
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8, !dbg !477
  %10 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !478
  %11 = bitcast %struct._checker* %10 to i8*, !dbg !478
  call void @dump_checker_opts(%struct._IO_FILE* %9, i8* %11), !dbg !479
  ret void, !dbg !480
}

; Function Attrs: nounwind uwtable
define internal i32 @tcp_connect_thread(%struct._thread*) #0 !dbg !481 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._thread*, align 8
  %4 = alloca %struct._checker*, align 8
  %5 = alloca %struct._conn_opts*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct._thread* %0, %struct._thread** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %3, metadata !484, metadata !432), !dbg !485
  call void @llvm.dbg.declare(metadata %struct._checker** %4, metadata !486, metadata !432), !dbg !487
  %8 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !488
  %9 = getelementptr inbounds %struct._thread, %struct._thread* %8, i32 0, i32 4, !dbg !489
  %10 = load i8*, i8** %9, align 8, !dbg !489
  %11 = bitcast i8* %10 to %struct._checker*, !dbg !490
  store %struct._checker* %11, %struct._checker** %4, align 8, !dbg !487
  call void @llvm.dbg.declare(metadata %struct._conn_opts** %5, metadata !491, metadata !432), !dbg !492
  %12 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !493
  %13 = getelementptr inbounds %struct._checker, %struct._checker* %12, i32 0, i32 10, !dbg !494
  %14 = load %struct._conn_opts*, %struct._conn_opts** %13, align 8, !dbg !494
  store %struct._conn_opts* %14, %struct._conn_opts** %5, align 8, !dbg !492
  call void @llvm.dbg.declare(metadata i32* %6, metadata !495, metadata !432), !dbg !496
  call void @llvm.dbg.declare(metadata i32* %7, metadata !497, metadata !432), !dbg !498
  %15 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !499
  %16 = getelementptr inbounds %struct._checker, %struct._checker* %15, i32 0, i32 7, !dbg !501
  %17 = load i8, i8* %16, align 8, !dbg !501
  %18 = trunc i8 %17 to i1, !dbg !501
  br i1 %18, label %29, label %19, !dbg !502

; <label>:19:                                     ; preds = %1
  %20 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !503
  %21 = getelementptr inbounds %struct._thread, %struct._thread* %20, i32 0, i32 2, !dbg !505
  %22 = load %struct._thread_master*, %struct._thread_master** %21, align 8, !dbg !505
  %23 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !506
  %24 = bitcast %struct._checker* %23 to i8*, !dbg !506
  %25 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !507
  %26 = getelementptr inbounds %struct._checker, %struct._checker* %25, i32 0, i32 12, !dbg !508
  %27 = load i64, i64* %26, align 8, !dbg !508
  %28 = call %struct._thread* @thread_add_timer(%struct._thread_master* %22, i32 (%struct._thread*)* @tcp_connect_thread, i8* %24, i64 %27), !dbg !509
  store i32 0, i32* %2, align 4, !dbg !510
  br label %72, !dbg !510

; <label>:29:                                     ; preds = %1
  %30 = load %struct._conn_opts*, %struct._conn_opts** %5, align 8, !dbg !511
  %31 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %30, i32 0, i32 0, !dbg !513
  %32 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %31, i32 0, i32 0, !dbg !514
  %33 = load i16, i16* %32, align 8, !dbg !514
  %34 = zext i16 %33 to i32, !dbg !511
  %35 = call i32 @socket(i32 %34, i32 526337, i32 6) #5, !dbg !515
  store i32 %35, i32* %6, align 4, !dbg !516
  %36 = icmp eq i32 %35, -1, !dbg !517
  br i1 %36, label %37, label %47, !dbg !518

; <label>:37:                                     ; preds = %29
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i32 0, i32 0)), !dbg !519
  %38 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !521
  %39 = getelementptr inbounds %struct._thread, %struct._thread* %38, i32 0, i32 2, !dbg !522
  %40 = load %struct._thread_master*, %struct._thread_master** %39, align 8, !dbg !522
  %41 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !523
  %42 = bitcast %struct._checker* %41 to i8*, !dbg !523
  %43 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !524
  %44 = getelementptr inbounds %struct._checker, %struct._checker* %43, i32 0, i32 12, !dbg !525
  %45 = load i64, i64* %44, align 8, !dbg !525
  %46 = call %struct._thread* @thread_add_timer(%struct._thread_master* %40, i32 (%struct._thread*)* @tcp_connect_thread, i8* %42, i64 %45), !dbg !526
  store i32 0, i32* %2, align 4, !dbg !527
  br label %72, !dbg !527

; <label>:47:                                     ; preds = %29
  %48 = load i32, i32* %6, align 4, !dbg !528
  %49 = load %struct._conn_opts*, %struct._conn_opts** %5, align 8, !dbg !529
  %50 = call i32 @tcp_bind_connect(i32 %48, %struct._conn_opts* %49), !dbg !530
  store i32 %50, i32* %7, align 4, !dbg !531
  %51 = load i32, i32* %6, align 4, !dbg !532
  %52 = load i32, i32* %7, align 4, !dbg !534
  %53 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !535
  %54 = load %struct._conn_opts*, %struct._conn_opts** %5, align 8, !dbg !536
  %55 = getelementptr inbounds %struct._conn_opts, %struct._conn_opts* %54, i32 0, i32 3, !dbg !537
  %56 = load i32, i32* %55, align 8, !dbg !537
  %57 = zext i32 %56 to i64, !dbg !536
  %58 = call zeroext i1 @tcp_connection_state(i32 %51, i32 %52, %struct._thread* %53, i32 (%struct._thread*)* @tcp_check_thread, i64 %57), !dbg !538
  br i1 %58, label %59, label %71, !dbg !539

; <label>:59:                                     ; preds = %47
  %60 = load i32, i32* %6, align 4, !dbg !540
  %61 = call i32 @close(i32 %60), !dbg !542
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i32 0, i32 0)), !dbg !543
  %62 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !544
  %63 = getelementptr inbounds %struct._thread, %struct._thread* %62, i32 0, i32 2, !dbg !545
  %64 = load %struct._thread_master*, %struct._thread_master** %63, align 8, !dbg !545
  %65 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !546
  %66 = bitcast %struct._checker* %65 to i8*, !dbg !546
  %67 = load %struct._checker*, %struct._checker** %4, align 8, !dbg !547
  %68 = getelementptr inbounds %struct._checker, %struct._checker* %67, i32 0, i32 12, !dbg !548
  %69 = load i64, i64* %68, align 8, !dbg !548
  %70 = call %struct._thread* @thread_add_timer(%struct._thread_master* %64, i32 (%struct._thread*)* @tcp_connect_thread, i8* %66, i64 %69), !dbg !549
  br label %71, !dbg !550

; <label>:71:                                     ; preds = %59, %47
  store i32 0, i32* %2, align 4, !dbg !551
  br label %72, !dbg !551

; <label>:72:                                     ; preds = %71, %37, %19
  %73 = load i32, i32* %2, align 4, !dbg !552
  ret i32 %73, !dbg !552
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @tcp_check_compare(i8*, i8*) #0 !dbg !553 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !554, metadata !432), !dbg !555
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !556, metadata !432), !dbg !557
  %5 = load i8*, i8** %3, align 8, !dbg !558
  %6 = bitcast i8* %5 to %struct._checker*, !dbg !559
  %7 = getelementptr inbounds %struct._checker, %struct._checker* %6, i32 0, i32 10, !dbg !560
  %8 = load %struct._conn_opts*, %struct._conn_opts** %7, align 8, !dbg !560
  %9 = load i8*, i8** %4, align 8, !dbg !561
  %10 = bitcast i8* %9 to %struct._checker*, !dbg !562
  %11 = getelementptr inbounds %struct._checker, %struct._checker* %10, i32 0, i32 10, !dbg !563
  %12 = load %struct._conn_opts*, %struct._conn_opts** %11, align 8, !dbg !563
  %13 = call zeroext i1 @compare_conn_opts(%struct._conn_opts* %8, %struct._conn_opts* %12), !dbg !564
  ret i1 %13, !dbg !565
}

declare i8* @zalloc(i64) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

declare void @conf_write(%struct._IO_FILE*, i8*, ...) #1

declare void @dump_checker_opts(%struct._IO_FILE*, i8*) #1

declare %struct._thread* @thread_add_timer(%struct._thread_master*, i32 (%struct._thread*)*, i8*, i64) #1

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #3

declare void @log_message(i32, i8*, ...) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @tcp_bind_connect(i32, %struct._conn_opts*) #4 !dbg !566 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._conn_opts*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !569, metadata !432), !dbg !570
  store %struct._conn_opts* %1, %struct._conn_opts** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._conn_opts** %4, metadata !571, metadata !432), !dbg !572
  %5 = load i32, i32* %3, align 4, !dbg !573
  %6 = load %struct._conn_opts*, %struct._conn_opts** %4, align 8, !dbg !574
  %7 = call i32 @socket_bind_connect(i32 %5, %struct._conn_opts* %6), !dbg !575
  ret i32 %7, !dbg !576
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @tcp_connection_state(i32, i32, %struct._thread*, i32 (%struct._thread*)*, i64) #4 !dbg !577 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._thread*, align 8
  %9 = alloca i32 (%struct._thread*)*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !581, metadata !432), !dbg !582
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !583, metadata !432), !dbg !584
  store %struct._thread* %2, %struct._thread** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %8, metadata !585, metadata !432), !dbg !586
  store i32 (%struct._thread*)* %3, i32 (%struct._thread*)** %9, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct._thread*)** %9, metadata !587, metadata !432), !dbg !588
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !589, metadata !432), !dbg !590
  %11 = load i32, i32* %6, align 4, !dbg !591
  %12 = load i32, i32* %7, align 4, !dbg !592
  %13 = load %struct._thread*, %struct._thread** %8, align 8, !dbg !593
  %14 = load i32 (%struct._thread*)*, i32 (%struct._thread*)** %9, align 8, !dbg !594
  %15 = load i64, i64* %10, align 8, !dbg !595
  %16 = call zeroext i1 @socket_connection_state(i32 %11, i32 %12, %struct._thread* %13, i32 (%struct._thread*)* %14, i64 %15), !dbg !596
  ret i1 %16, !dbg !597
}

; Function Attrs: nounwind uwtable
define internal i32 @tcp_check_thread(%struct._thread*) #0 !dbg !598 {
  %2 = alloca %struct._thread*, align 8
  %3 = alloca %struct._checker*, align 8
  %4 = alloca i32, align 4
  store %struct._thread* %0, %struct._thread** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %2, metadata !599, metadata !432), !dbg !600
  call void @llvm.dbg.declare(metadata %struct._checker** %3, metadata !601, metadata !432), !dbg !602
  %5 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !603
  %6 = getelementptr inbounds %struct._thread, %struct._thread* %5, i32 0, i32 4, !dbg !604
  %7 = load i8*, i8** %6, align 8, !dbg !604
  %8 = bitcast i8* %7 to %struct._checker*, !dbg !605
  store %struct._checker* %8, %struct._checker** %3, align 8, !dbg !602
  call void @llvm.dbg.declare(metadata i32* %4, metadata !606, metadata !432), !dbg !607
  %9 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !608
  %10 = call i32 @tcp_socket_state(%struct._thread* %9, i32 (%struct._thread*)* @tcp_check_thread), !dbg !609
  store i32 %10, i32* %4, align 4, !dbg !610
  %11 = load i32, i32* %4, align 4, !dbg !611
  switch i32 %11, label %34 [
    i32 1, label %12
    i32 3, label %13
    i32 2, label %16
  ], !dbg !612

; <label>:12:                                     ; preds = %1
  br label %52, !dbg !613

; <label>:13:                                     ; preds = %1
  %14 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !615
  call void @thread_close_fd(%struct._thread* %14), !dbg !616
  %15 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !617
  call void @tcp_epilog(%struct._thread* %15, i1 zeroext true), !dbg !618
  br label %52, !dbg !619

; <label>:16:                                     ; preds = %1
  %17 = load %struct._checker*, %struct._checker** %3, align 8, !dbg !620
  %18 = getelementptr inbounds %struct._checker, %struct._checker* %17, i32 0, i32 8, !dbg !622
  %19 = load i8, i8* %18, align 1, !dbg !622
  %20 = trunc i8 %19 to i1, !dbg !622
  br i1 %20, label %21, label %32, !dbg !623

; <label>:21:                                     ; preds = %16
  %22 = load %struct._checker*, %struct._checker** %3, align 8, !dbg !624
  %23 = getelementptr inbounds %struct._checker, %struct._checker* %22, i32 0, i32 5, !dbg !625
  %24 = load %struct._real_server*, %struct._real_server** %23, align 8, !dbg !625
  %25 = getelementptr inbounds %struct._real_server, %struct._real_server* %24, i32 0, i32 0, !dbg !626
  %26 = load %struct._checker*, %struct._checker** %3, align 8, !dbg !627
  %27 = getelementptr inbounds %struct._checker, %struct._checker* %26, i32 0, i32 4, !dbg !628
  %28 = load %struct._virtual_server*, %struct._virtual_server** %27, align 8, !dbg !628
  %29 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %28, i32 0, i32 6, !dbg !629
  %30 = load i16, i16* %29, align 2, !dbg !629
  %31 = call i8* @inet_sockaddrtotrio(%struct.sockaddr_storage* %25, i16 zeroext %30), !dbg !630
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0), i8* %31), !dbg !631
  br label %32, !dbg !631

; <label>:32:                                     ; preds = %21, %16
  %33 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !632
  call void @tcp_epilog(%struct._thread* %33, i1 zeroext false), !dbg !633
  br label %52, !dbg !634

; <label>:34:                                     ; preds = %1
  %35 = load %struct._checker*, %struct._checker** %3, align 8, !dbg !635
  %36 = getelementptr inbounds %struct._checker, %struct._checker* %35, i32 0, i32 8, !dbg !637
  %37 = load i8, i8* %36, align 1, !dbg !637
  %38 = trunc i8 %37 to i1, !dbg !637
  br i1 %38, label %39, label %50, !dbg !638

; <label>:39:                                     ; preds = %34
  %40 = load %struct._checker*, %struct._checker** %3, align 8, !dbg !639
  %41 = getelementptr inbounds %struct._checker, %struct._checker* %40, i32 0, i32 5, !dbg !640
  %42 = load %struct._real_server*, %struct._real_server** %41, align 8, !dbg !640
  %43 = getelementptr inbounds %struct._real_server, %struct._real_server* %42, i32 0, i32 0, !dbg !641
  %44 = load %struct._checker*, %struct._checker** %3, align 8, !dbg !642
  %45 = getelementptr inbounds %struct._checker, %struct._checker* %44, i32 0, i32 4, !dbg !643
  %46 = load %struct._virtual_server*, %struct._virtual_server** %45, align 8, !dbg !643
  %47 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %46, i32 0, i32 6, !dbg !644
  %48 = load i16, i16* %47, align 2, !dbg !644
  %49 = call i8* @inet_sockaddrtotrio(%struct.sockaddr_storage* %43, i16 zeroext %48), !dbg !645
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0), i8* %49), !dbg !646
  br label %50, !dbg !646

; <label>:50:                                     ; preds = %39, %34
  %51 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !647
  call void @tcp_epilog(%struct._thread* %51, i1 zeroext false), !dbg !648
  br label %52, !dbg !649

; <label>:52:                                     ; preds = %50, %32, %13, %12
  ret i32 0, !dbg !650
}

declare i32 @close(i32) #1

declare i32 @socket_bind_connect(i32, %struct._conn_opts*) #1

declare zeroext i1 @socket_connection_state(i32, i32, %struct._thread*, i32 (%struct._thread*)*, i64) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @tcp_socket_state(%struct._thread*, i32 (%struct._thread*)*) #4 !dbg !651 {
  %3 = alloca %struct._thread*, align 8
  %4 = alloca i32 (%struct._thread*)*, align 8
  store %struct._thread* %0, %struct._thread** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %3, metadata !654, metadata !432), !dbg !655
  store i32 (%struct._thread*)* %1, i32 (%struct._thread*)** %4, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct._thread*)** %4, metadata !656, metadata !432), !dbg !657
  %5 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !658
  %6 = load i32 (%struct._thread*)*, i32 (%struct._thread*)** %4, align 8, !dbg !659
  %7 = call i32 @socket_state(%struct._thread* %5, i32 (%struct._thread*)* %6), !dbg !660
  ret i32 %7, !dbg !661
}

declare void @thread_close_fd(%struct._thread*) #1

; Function Attrs: nounwind uwtable
define internal void @tcp_epilog(%struct._thread*, i1 zeroext) #0 !dbg !662 {
  %3 = alloca %struct._thread*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct._checker*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct._thread* %0, %struct._thread** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %3, metadata !665, metadata !432), !dbg !666
  %9 = zext i1 %1 to i8
  store i8 %9, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !667, metadata !432), !dbg !668
  call void @llvm.dbg.declare(metadata %struct._checker** %5, metadata !669, metadata !432), !dbg !670
  call void @llvm.dbg.declare(metadata i64* %6, metadata !671, metadata !432), !dbg !672
  call void @llvm.dbg.declare(metadata i8* %7, metadata !673, metadata !432), !dbg !674
  call void @llvm.dbg.declare(metadata i8* %8, metadata !675, metadata !432), !dbg !676
  %10 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !677
  %11 = getelementptr inbounds %struct._thread, %struct._thread* %10, i32 0, i32 4, !dbg !678
  %12 = load i8*, i8** %11, align 8, !dbg !678
  %13 = bitcast i8* %12 to %struct._checker*, !dbg !679
  store %struct._checker* %13, %struct._checker** %5, align 8, !dbg !680
  %14 = load i8, i8* %4, align 1, !dbg !681
  %15 = trunc i8 %14 to i1, !dbg !681
  br i1 %15, label %24, label %16, !dbg !683

; <label>:16:                                     ; preds = %2
  %17 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !684
  %18 = getelementptr inbounds %struct._checker, %struct._checker* %17, i32 0, i32 16, !dbg !686
  %19 = load i32, i32* %18, align 8, !dbg !686
  %20 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !687
  %21 = getelementptr inbounds %struct._checker, %struct._checker* %20, i32 0, i32 14, !dbg !688
  %22 = load i32, i32* %21, align 8, !dbg !688
  %23 = icmp uge i32 %19, %22, !dbg !689
  br i1 %23, label %24, label %185, !dbg !690

; <label>:24:                                     ; preds = %16, %2
  %25 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !691
  %26 = getelementptr inbounds %struct._checker, %struct._checker* %25, i32 0, i32 12, !dbg !693
  %27 = load i64, i64* %26, align 8, !dbg !693
  store i64 %27, i64* %6, align 8, !dbg !694
  %28 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !695
  %29 = getelementptr inbounds %struct._checker, %struct._checker* %28, i32 0, i32 16, !dbg !696
  store i32 0, i32* %29, align 8, !dbg !697
  %30 = load i8, i8* %4, align 1, !dbg !698
  %31 = trunc i8 %30 to i1, !dbg !698
  br i1 %31, label %32, label %96, !dbg !700

; <label>:32:                                     ; preds = %24
  %33 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !701
  %34 = getelementptr inbounds %struct._checker, %struct._checker* %33, i32 0, i32 8, !dbg !703
  %35 = load i8, i8* %34, align 1, !dbg !703
  %36 = trunc i8 %35 to i1, !dbg !703
  br i1 %36, label %37, label %42, !dbg !704

; <label>:37:                                     ; preds = %32
  %38 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !705
  %39 = getelementptr inbounds %struct._checker, %struct._checker* %38, i32 0, i32 9, !dbg !707
  %40 = load i8, i8* %39, align 2, !dbg !707
  %41 = trunc i8 %40 to i1, !dbg !707
  br i1 %41, label %96, label %42, !dbg !708

; <label>:42:                                     ; preds = %37, %32
  %43 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !709
  %44 = getelementptr inbounds %struct._checker, %struct._checker* %43, i32 0, i32 5, !dbg !711
  %45 = load %struct._real_server*, %struct._real_server** %44, align 8, !dbg !711
  %46 = getelementptr inbounds %struct._real_server, %struct._real_server* %45, i32 0, i32 0, !dbg !712
  %47 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !713
  %48 = getelementptr inbounds %struct._checker, %struct._checker* %47, i32 0, i32 4, !dbg !714
  %49 = load %struct._virtual_server*, %struct._virtual_server** %48, align 8, !dbg !714
  %50 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %49, i32 0, i32 6, !dbg !715
  %51 = load i16, i16* %50, align 2, !dbg !715
  %52 = call i8* @inet_sockaddrtotrio(%struct.sockaddr_storage* %46, i16 zeroext %51), !dbg !716
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0), i8* %52), !dbg !717
  %53 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !718
  %54 = getelementptr inbounds %struct._checker, %struct._checker* %53, i32 0, i32 8, !dbg !719
  %55 = load i8, i8* %54, align 1, !dbg !719
  %56 = trunc i8 %55 to i1, !dbg !719
  %57 = zext i1 %56 to i8, !dbg !720
  store i8 %57, i8* %7, align 1, !dbg !720
  %58 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !721
  %59 = getelementptr inbounds %struct._checker, %struct._checker* %58, i32 0, i32 5, !dbg !722
  %60 = load %struct._real_server*, %struct._real_server** %59, align 8, !dbg !722
  %61 = getelementptr inbounds %struct._real_server, %struct._real_server* %60, i32 0, i32 16, !dbg !723
  %62 = load i8, i8* %61, align 4, !dbg !723
  %63 = trunc i8 %62 to i1, !dbg !723
  %64 = zext i1 %63 to i8, !dbg !724
  store i8 %64, i8* %8, align 1, !dbg !724
  %65 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !725
  call void @update_svr_checker_state(i1 zeroext true, %struct._checker* %65), !dbg !726
  %66 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !727
  %67 = getelementptr inbounds %struct._checker, %struct._checker* %66, i32 0, i32 5, !dbg !729
  %68 = load %struct._real_server*, %struct._real_server** %67, align 8, !dbg !729
  %69 = getelementptr inbounds %struct._real_server, %struct._real_server* %68, i32 0, i32 15, !dbg !730
  %70 = load i32, i32* %69, align 8, !dbg !730
  %71 = icmp ne i32 %70, 0, !dbg !727
  br i1 %71, label %72, label %95, !dbg !731

; <label>:72:                                     ; preds = %42
  %73 = load i8, i8* %7, align 1, !dbg !732
  %74 = trunc i8 %73 to i1, !dbg !732
  br i1 %74, label %95, label %75, !dbg !734

; <label>:75:                                     ; preds = %72
  %76 = load i8, i8* %8, align 1, !dbg !735
  %77 = trunc i8 %76 to i1, !dbg !735
  %78 = zext i1 %77 to i32, !dbg !735
  %79 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !736
  %80 = getelementptr inbounds %struct._checker, %struct._checker* %79, i32 0, i32 5, !dbg !737
  %81 = load %struct._real_server*, %struct._real_server** %80, align 8, !dbg !737
  %82 = getelementptr inbounds %struct._real_server, %struct._real_server* %81, i32 0, i32 16, !dbg !738
  %83 = load i8, i8* %82, align 4, !dbg !738
  %84 = trunc i8 %83 to i1, !dbg !738
  %85 = zext i1 %84 to i32, !dbg !736
  %86 = icmp ne i32 %78, %85, !dbg !739
  br i1 %86, label %92, label %87, !dbg !740

; <label>:87:                                     ; preds = %75
  %88 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !741
  %89 = getelementptr inbounds %struct._data, %struct._data* %88, i32 0, i32 66, !dbg !742
  %90 = load i8, i8* %89, align 2, !dbg !742
  %91 = trunc i8 %90 to i1, !dbg !742
  br i1 %91, label %95, label %92, !dbg !743

; <label>:92:                                     ; preds = %87, %75
  %93 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !745
  %94 = bitcast %struct._checker* %93 to i8*, !dbg !745
  call void @smtp_alert(i32 0, i8* %94, i8* null, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0)), !dbg !746
  br label %95, !dbg !746

; <label>:95:                                     ; preds = %92, %87, %72, %42
  br label %184, !dbg !747

; <label>:96:                                     ; preds = %37, %24
  %97 = load i8, i8* %4, align 1, !dbg !748
  %98 = trunc i8 %97 to i1, !dbg !748
  br i1 %98, label %183, label %99, !dbg !751

; <label>:99:                                     ; preds = %96
  %100 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !752
  %101 = getelementptr inbounds %struct._checker, %struct._checker* %100, i32 0, i32 8, !dbg !753
  %102 = load i8, i8* %101, align 1, !dbg !753
  %103 = trunc i8 %102 to i1, !dbg !753
  br i1 %103, label %109, label %104, !dbg !754

; <label>:104:                                    ; preds = %99
  %105 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !755
  %106 = getelementptr inbounds %struct._checker, %struct._checker* %105, i32 0, i32 9, !dbg !756
  %107 = load i8, i8* %106, align 2, !dbg !756
  %108 = trunc i8 %107 to i1, !dbg !756
  br i1 %108, label %183, label %109, !dbg !757

; <label>:109:                                    ; preds = %104, %99
  %110 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !758
  %111 = getelementptr inbounds %struct._checker, %struct._checker* %110, i32 0, i32 14, !dbg !761
  %112 = load i32, i32* %111, align 8, !dbg !761
  %113 = icmp ne i32 %112, 0, !dbg !758
  br i1 %113, label %114, label %128, !dbg !762

; <label>:114:                                    ; preds = %109
  %115 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !763
  %116 = getelementptr inbounds %struct._checker, %struct._checker* %115, i32 0, i32 5, !dbg !764
  %117 = load %struct._real_server*, %struct._real_server** %116, align 8, !dbg !764
  %118 = getelementptr inbounds %struct._real_server, %struct._real_server* %117, i32 0, i32 0, !dbg !765
  %119 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !766
  %120 = getelementptr inbounds %struct._checker, %struct._checker* %119, i32 0, i32 4, !dbg !767
  %121 = load %struct._virtual_server*, %struct._virtual_server** %120, align 8, !dbg !767
  %122 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %121, i32 0, i32 6, !dbg !768
  %123 = load i16, i16* %122, align 2, !dbg !768
  %124 = call i8* @inet_sockaddrtotrio(%struct.sockaddr_storage* %118, i16 zeroext %123), !dbg !769
  %125 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !770
  %126 = getelementptr inbounds %struct._checker, %struct._checker* %125, i32 0, i32 14, !dbg !771
  %127 = load i32, i32* %126, align 8, !dbg !771
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i32 0, i32 0), i8* %124, i32 %127), !dbg !772
  br label %139, !dbg !772

; <label>:128:                                    ; preds = %109
  %129 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !773
  %130 = getelementptr inbounds %struct._checker, %struct._checker* %129, i32 0, i32 5, !dbg !774
  %131 = load %struct._real_server*, %struct._real_server** %130, align 8, !dbg !774
  %132 = getelementptr inbounds %struct._real_server, %struct._real_server* %131, i32 0, i32 0, !dbg !775
  %133 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !776
  %134 = getelementptr inbounds %struct._checker, %struct._checker* %133, i32 0, i32 4, !dbg !777
  %135 = load %struct._virtual_server*, %struct._virtual_server** %134, align 8, !dbg !777
  %136 = getelementptr inbounds %struct._virtual_server, %struct._virtual_server* %135, i32 0, i32 6, !dbg !778
  %137 = load i16, i16* %136, align 2, !dbg !778
  %138 = call i8* @inet_sockaddrtotrio(%struct.sockaddr_storage* %132, i16 zeroext %137), !dbg !779
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0), i8* %138), !dbg !780
  br label %139

; <label>:139:                                    ; preds = %128, %114
  %140 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !781
  %141 = getelementptr inbounds %struct._checker, %struct._checker* %140, i32 0, i32 8, !dbg !782
  %142 = load i8, i8* %141, align 1, !dbg !782
  %143 = trunc i8 %142 to i1, !dbg !782
  %144 = zext i1 %143 to i8, !dbg !783
  store i8 %144, i8* %7, align 1, !dbg !783
  %145 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !784
  %146 = getelementptr inbounds %struct._checker, %struct._checker* %145, i32 0, i32 5, !dbg !785
  %147 = load %struct._real_server*, %struct._real_server** %146, align 8, !dbg !785
  %148 = getelementptr inbounds %struct._real_server, %struct._real_server* %147, i32 0, i32 16, !dbg !786
  %149 = load i8, i8* %148, align 4, !dbg !786
  %150 = trunc i8 %149 to i1, !dbg !786
  %151 = zext i1 %150 to i8, !dbg !787
  store i8 %151, i8* %8, align 1, !dbg !787
  %152 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !788
  call void @update_svr_checker_state(i1 zeroext false, %struct._checker* %152), !dbg !789
  %153 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !790
  %154 = getelementptr inbounds %struct._checker, %struct._checker* %153, i32 0, i32 5, !dbg !792
  %155 = load %struct._real_server*, %struct._real_server** %154, align 8, !dbg !792
  %156 = getelementptr inbounds %struct._real_server, %struct._real_server* %155, i32 0, i32 15, !dbg !793
  %157 = load i32, i32* %156, align 8, !dbg !793
  %158 = icmp ne i32 %157, 0, !dbg !790
  br i1 %158, label %159, label %182, !dbg !794

; <label>:159:                                    ; preds = %139
  %160 = load i8, i8* %7, align 1, !dbg !795
  %161 = trunc i8 %160 to i1, !dbg !795
  br i1 %161, label %162, label %182, !dbg !797

; <label>:162:                                    ; preds = %159
  %163 = load i8, i8* %8, align 1, !dbg !798
  %164 = trunc i8 %163 to i1, !dbg !798
  %165 = zext i1 %164 to i32, !dbg !798
  %166 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !799
  %167 = getelementptr inbounds %struct._checker, %struct._checker* %166, i32 0, i32 5, !dbg !800
  %168 = load %struct._real_server*, %struct._real_server** %167, align 8, !dbg !800
  %169 = getelementptr inbounds %struct._real_server, %struct._real_server* %168, i32 0, i32 16, !dbg !801
  %170 = load i8, i8* %169, align 4, !dbg !801
  %171 = trunc i8 %170 to i1, !dbg !801
  %172 = zext i1 %171 to i32, !dbg !799
  %173 = icmp ne i32 %165, %172, !dbg !802
  br i1 %173, label %179, label %174, !dbg !803

; <label>:174:                                    ; preds = %162
  %175 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !804
  %176 = getelementptr inbounds %struct._data, %struct._data* %175, i32 0, i32 66, !dbg !805
  %177 = load i8, i8* %176, align 2, !dbg !805
  %178 = trunc i8 %177 to i1, !dbg !805
  br i1 %178, label %182, label %179, !dbg !806

; <label>:179:                                    ; preds = %174, %162
  %180 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !808
  %181 = bitcast %struct._checker* %180 to i8*, !dbg !808
  call void @smtp_alert(i32 0, i8* %181, i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i32 0, i32 0)), !dbg !809
  br label %182, !dbg !809

; <label>:182:                                    ; preds = %179, %174, %159, %139
  br label %183, !dbg !810

; <label>:183:                                    ; preds = %182, %104, %96
  br label %184

; <label>:184:                                    ; preds = %183, %95
  br label %193, !dbg !811

; <label>:185:                                    ; preds = %16
  %186 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !812
  %187 = getelementptr inbounds %struct._checker, %struct._checker* %186, i32 0, i32 15, !dbg !814
  %188 = load i64, i64* %187, align 8, !dbg !814
  store i64 %188, i64* %6, align 8, !dbg !815
  %189 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !816
  %190 = getelementptr inbounds %struct._checker, %struct._checker* %189, i32 0, i32 16, !dbg !817
  %191 = load i32, i32* %190, align 8, !dbg !818
  %192 = add i32 %191, 1, !dbg !818
  store i32 %192, i32* %190, align 8, !dbg !818
  br label %193

; <label>:193:                                    ; preds = %185, %184
  %194 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !819
  %195 = getelementptr inbounds %struct._thread, %struct._thread* %194, i32 0, i32 2, !dbg !820
  %196 = load %struct._thread_master*, %struct._thread_master** %195, align 8, !dbg !820
  %197 = load %struct._checker*, %struct._checker** %5, align 8, !dbg !821
  %198 = bitcast %struct._checker* %197 to i8*, !dbg !821
  %199 = load i64, i64* %6, align 8, !dbg !822
  %200 = call %struct._thread* @thread_add_timer(%struct._thread_master* %196, i32 (%struct._thread*)* @tcp_connect_thread, i8* %198, i64 %199), !dbg !823
  ret void, !dbg !824
}

declare i8* @inet_sockaddrtotrio(%struct.sockaddr_storage*, i16 zeroext) #1

declare i32 @socket_state(%struct._thread*, i32 (%struct._thread*)*) #1

declare void @update_svr_checker_state(i1 zeroext, %struct._checker*) #1

declare void @smtp_alert(i32, i8*, i8*, i8*) #1

declare zeroext i1 @compare_conn_opts(%struct._conn_opts*, %struct._conn_opts*) #1

declare zeroext i1 @check_conn_opts(%struct._conn_opts*) #1

declare void @dequeue_new_checker() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!405, !406}
!llvm.ident = !{!407}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !80, globals: !402)
!1 = !DIFile(filename: "[inter]keepalived--check--check_tcp.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!2 = !{!3, !24, !36, !65, !72}
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
!80 = !{!81, !82, !109}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "conn_opts_t", file: !66, line: 50, baseType: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_conn_opts", file: !66, line: 42, size: 2240, align: 64, elements: !85)
!85 = !{!86, !101, !102, !106, !108}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !84, file: !66, line: 43, baseType: !87, size: 1024, align: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !88, line: 166, size: 1024, align: 64, elements: !89)
!88 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!89 = !{!90, !94, !99}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !87, file: !88, line: 168, baseType: !91, size: 16, align: 16)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !92, line: 28, baseType: !93)
!92 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!93 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !87, file: !88, line: 169, baseType: !95, size: 944, align: 8, offset: 16)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 944, align: 8, elements: !97)
!96 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!97 = !{!98}
!98 = !DISubrange(count: 118)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !87, file: !88, line: 170, baseType: !100, size: 64, align: 64, offset: 960)
!100 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "bindto", scope: !84, file: !66, line: 44, baseType: !87, size: 1024, align: 64, offset: 1024)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "bind_if", scope: !84, file: !66, line: 45, baseType: !103, size: 128, align: 8, offset: 2048)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 128, align: 8, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 16)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "connection_to", scope: !84, file: !66, line: 46, baseType: !107, size: 32, align: 32, offset: 2176)
!107 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "fwmark", scope: !84, file: !66, line: 48, baseType: !107, size: 32, align: 32, offset: 2208)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "checker_t", file: !111, line: 60, baseType: !112)
!111 = !DIFile(filename: "./../include/check_api.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_checker", file: !111, line: 40, size: 1024, align: 64, elements: !113)
!113 = !{!114, !118, !181, !295, !299, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "free_func", scope: !112, file: !111, line: 41, baseType: !115, size: 64, align: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{null, !81}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "dump_func", scope: !112, file: !111, line: 42, baseType: !119, size: 64, align: 64, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{null, !122, !81}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !124, line: 48, baseType: !125)
!124 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !126, line: 241, size: 1728, align: 64, elements: !127)
!126 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!127 = !{!128, !130, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !150, !151, !152, !153, !157, !158, !160, !164, !167, !169, !170, !171, !172, !173, !176, !177}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !125, file: !126, line: 242, baseType: !129, size: 32, align: 32)
!129 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !125, file: !126, line: 247, baseType: !131, size: 64, align: 64, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !125, file: !126, line: 248, baseType: !131, size: 64, align: 64, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !125, file: !126, line: 249, baseType: !131, size: 64, align: 64, offset: 192)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !125, file: !126, line: 250, baseType: !131, size: 64, align: 64, offset: 256)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !125, file: !126, line: 251, baseType: !131, size: 64, align: 64, offset: 320)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !125, file: !126, line: 252, baseType: !131, size: 64, align: 64, offset: 384)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !125, file: !126, line: 253, baseType: !131, size: 64, align: 64, offset: 448)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !125, file: !126, line: 254, baseType: !131, size: 64, align: 64, offset: 512)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !125, file: !126, line: 256, baseType: !131, size: 64, align: 64, offset: 576)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !125, file: !126, line: 257, baseType: !131, size: 64, align: 64, offset: 640)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !125, file: !126, line: 258, baseType: !131, size: 64, align: 64, offset: 704)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !125, file: !126, line: 260, baseType: !143, size: 64, align: 64, offset: 768)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !126, line: 156, size: 192, align: 64, elements: !145)
!145 = !{!146, !147, !149}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !144, file: !126, line: 157, baseType: !143, size: 64, align: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !144, file: !126, line: 158, baseType: !148, size: 64, align: 64, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !144, file: !126, line: 162, baseType: !129, size: 32, align: 32, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !125, file: !126, line: 262, baseType: !148, size: 64, align: 64, offset: 832)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !125, file: !126, line: 264, baseType: !129, size: 32, align: 32, offset: 896)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !125, file: !126, line: 268, baseType: !129, size: 32, align: 32, offset: 928)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !125, file: !126, line: 270, baseType: !154, size: 64, align: 64, offset: 960)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !155, line: 131, baseType: !156)
!155 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!156 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !125, file: !126, line: 274, baseType: !93, size: 16, align: 16, offset: 1024)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !125, file: !126, line: 275, baseType: !159, size: 8, align: 8, offset: 1040)
!159 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !125, file: !126, line: 276, baseType: !161, size: 8, align: 8, offset: 1048)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 8, align: 8, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 1)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !125, file: !126, line: 280, baseType: !165, size: 64, align: 64, offset: 1088)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !126, line: 150, baseType: null)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !125, file: !126, line: 289, baseType: !168, size: 64, align: 64, offset: 1152)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !155, line: 132, baseType: !156)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !125, file: !126, line: 297, baseType: !81, size: 64, align: 64, offset: 1216)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !125, file: !126, line: 298, baseType: !81, size: 64, align: 64, offset: 1280)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !125, file: !126, line: 299, baseType: !81, size: 64, align: 64, offset: 1344)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !125, file: !126, line: 300, baseType: !81, size: 64, align: 64, offset: 1408)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !125, file: !126, line: 302, baseType: !174, size: 64, align: 64, offset: 1472)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !175, line: 216, baseType: !100)
!175 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !125, file: !126, line: 303, baseType: !129, size: 32, align: 32, offset: 1536)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !125, file: !126, line: 305, baseType: !178, size: 160, align: 8, offset: 1568)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 160, align: 8, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 20)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "launch", scope: !112, file: !111, line: 43, baseType: !182, size: 64, align: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!129, !185}
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64, align: 64)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread", file: !4, line: 78, size: 768, align: 64, elements: !187)
!187 = !{!188, !189, !191, !263, !264, !265, !275, !288, !290}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !186, file: !4, line: 79, baseType: !100, size: 64, align: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !186, file: !4, line: 80, baseType: !190, size: 32, align: 32, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_type_t", file: !4, line: 63, baseType: !3)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !186, file: !4, line: 81, baseType: !192, size: 64, align: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_master", file: !4, line: 112, size: 1280, align: 64, elements: !194)
!194 = !{!195, !207, !208, !209, !210, !218, !219, !220, !237, !238, !241, !254, !255, !256, !257, !258, !259, !260, !261}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !193, file: !4, line: 113, baseType: !196, size: 64, align: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_root_t", file: !197, line: 109, baseType: !198)
!197 = !DIFile(filename: "../../lib/rbtree.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !197, line: 106, size: 64, align: 64, elements: !199)
!199 = !{!200}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !198, file: !197, line: 108, baseType: !201, size: 64, align: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !197, line: 97, size: 192, align: 64, elements: !203)
!203 = !{!204, !205, !206}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "rb_parent_color", scope: !202, file: !197, line: 99, baseType: !100, size: 64, align: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !202, file: !197, line: 102, baseType: !201, size: 64, align: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !202, file: !197, line: 103, baseType: !201, size: 64, align: 64, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !193, file: !4, line: 114, baseType: !196, size: 64, align: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !193, file: !4, line: 115, baseType: !196, size: 64, align: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !193, file: !4, line: 116, baseType: !196, size: 64, align: 64, offset: 192)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !193, file: !4, line: 117, baseType: !211, size: 128, align: 64, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "list_head_t", file: !212, line: 62, baseType: !213)
!212 = !DIFile(filename: "../../lib/list_head.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !212, line: 60, size: 128, align: 64, elements: !214)
!214 = !{!215, !217}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !213, file: !212, line: 61, baseType: !216, size: 64, align: 64)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !213, file: !212, line: 61, baseType: !216, size: 64, align: 64, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !193, file: !4, line: 121, baseType: !211, size: 128, align: 64, offset: 384)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "unuse", scope: !193, file: !4, line: 122, baseType: !211, size: 128, align: 64, offset: 512)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "child_pid_index", scope: !193, file: !4, line: 124, baseType: !221, size: 64, align: 64, offset: 640)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !222, line: 31, baseType: !223)
!222 = !DIFile(filename: "../../lib/list.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, align: 64)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_list", file: !222, line: 39, size: 320, align: 64, elements: !225)
!225 = !{!226, !233, !234, !235, !236}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !224, file: !222, line: 40, baseType: !227, size: 64, align: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64, align: 64)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !222, line: 33, size: 192, align: 64, elements: !229)
!229 = !{!230, !231, !232}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !228, file: !222, line: 34, baseType: !227, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !228, file: !222, line: 35, baseType: !227, size: 64, align: 64, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !228, file: !222, line: 36, baseType: !81, size: 64, align: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !224, file: !222, line: 41, baseType: !227, size: 64, align: 64, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !224, file: !222, line: 42, baseType: !107, size: 32, align: 32, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !224, file: !222, line: 43, baseType: !115, size: 64, align: 64, offset: 192)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !224, file: !222, line: 44, baseType: !119, size: 64, align: 64, offset: 256)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "io_events", scope: !193, file: !4, line: 127, baseType: !196, size: 64, align: 64, offset: 704)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_events", scope: !193, file: !4, line: 128, baseType: !239, size: 64, align: 64, offset: 768)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!240 = !DICompositeType(tag: DW_TAG_structure_type, name: "epoll_event", file: !4, line: 128, flags: DIFlagFwdDecl)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "current_event", scope: !193, file: !4, line: 129, baseType: !242, size: 64, align: 64, offset: 832)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_event_t", file: !4, line: 109, baseType: !244)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_event", file: !4, line: 102, size: 448, align: 64, elements: !245)
!245 = !{!246, !249, !250, !251, !252}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !244, file: !4, line: 103, baseType: !247, size: 64, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_t", file: !4, line: 99, baseType: !186)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !244, file: !4, line: 104, baseType: !247, size: 64, align: 64, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !244, file: !4, line: 105, baseType: !100, size: 64, align: 64, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !244, file: !4, line: 106, baseType: !129, size: 32, align: 32, offset: 192)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !244, file: !4, line: 108, baseType: !253, size: 192, align: 64, offset: 256)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_node_t", file: !197, line: 104, baseType: !202)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_size", scope: !193, file: !4, line: 130, baseType: !107, size: 32, align: 32, offset: 896)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_count", scope: !193, file: !4, line: 131, baseType: !107, size: 32, align: 32, offset: 928)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_fd", scope: !193, file: !4, line: 132, baseType: !129, size: 32, align: 32, offset: 960)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "timer_fd", scope: !193, file: !4, line: 135, baseType: !129, size: 32, align: 32, offset: 992)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "timer_thread", scope: !193, file: !4, line: 136, baseType: !247, size: 64, align: 64, offset: 1024)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !193, file: !4, line: 146, baseType: !100, size: 64, align: 64, offset: 1088)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !193, file: !4, line: 147, baseType: !100, size: 64, align: 64, offset: 1152)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_timer_running", scope: !193, file: !4, line: 148, baseType: !262, size: 8, align: 8, offset: 1216)
!262 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !186, file: !4, line: 82, baseType: !182, size: 64, align: 64, offset: 192)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !186, file: !4, line: 83, baseType: !81, size: 64, align: 64, offset: 256)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "sands", scope: !186, file: !4, line: 84, baseType: !266, size: 128, align: 64, offset: 320)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "timeval_t", file: !267, line: 31, baseType: !268)
!267 = !DIFile(filename: "../../lib/timer.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !269, line: 30, size: 128, align: 64, elements: !270)
!269 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!270 = !{!271, !273}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !268, file: !269, line: 32, baseType: !272, size: 64, align: 64)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !155, line: 139, baseType: !156)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !268, file: !269, line: 33, baseType: !274, size: 64, align: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !155, line: 141, baseType: !156)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !186, file: !4, line: 92, baseType: !276, size: 64, align: 32, offset: 448)
!276 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !186, file: !4, line: 85, size: 64, align: 32, elements: !277)
!277 = !{!278, !279, !280}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !276, file: !4, line: 86, baseType: !129, size: 32, align: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !276, file: !4, line: 87, baseType: !129, size: 32, align: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !276, file: !4, line: 91, baseType: !281, size: 64, align: 32)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !276, file: !4, line: 88, size: 64, align: 32, elements: !282)
!282 = !{!283, !287}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !281, file: !4, line: 89, baseType: !284, size: 32, align: 32)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !285, line: 263, baseType: !286)
!285 = !DIFile(filename: "/usr/include/unistd.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !155, line: 133, baseType: !129)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !281, file: !4, line: 90, baseType: !129, size: 32, align: 32, offset: 32)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !186, file: !4, line: 93, baseType: !289, size: 64, align: 64, offset: 512)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, scope: !186, file: !4, line: 95, baseType: !291, size: 192, align: 64, offset: 576)
!291 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !186, file: !4, line: 95, size: 192, align: 64, elements: !292)
!292 = !{!293, !294}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !291, file: !4, line: 96, baseType: !253, size: 192, align: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !291, file: !4, line: 97, baseType: !211, size: 128, align: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "compare", scope: !112, file: !111, line: 44, baseType: !296, size: 64, align: 64, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64, align: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!262, !81, !81}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "vs", scope: !112, file: !111, line: 45, baseType: !300, size: 64, align: 64, offset: 256)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "virtual_server_t", file: !302, line: 180, baseType: !303)
!302 = !DIFile(filename: "./../include/check_data.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_virtual_server", file: !302, line: 131, size: 2560, align: 64, elements: !304)
!304 = !{!305, !306, !314, !315, !318, !359, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "vsgname", scope: !303, file: !302, line: 132, baseType: !131, size: 64, align: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "vsg", scope: !303, file: !302, line: 133, baseType: !307, size: 64, align: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64, align: 64)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "virtual_server_group_t", file: !302, line: 128, baseType: !309)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_virtual_server_group", file: !302, line: 124, size: 192, align: 64, elements: !310)
!310 = !{!311, !312, !313}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !309, file: !302, line: 125, baseType: !131, size: 64, align: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "addr_range", scope: !309, file: !302, line: 126, baseType: !221, size: 64, align: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "vfwmark", scope: !309, file: !302, line: 127, baseType: !221, size: 64, align: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !303, file: !302, line: 134, baseType: !87, size: 1024, align: 64, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "vfwmark", scope: !303, file: !302, line: 135, baseType: !316, size: 32, align: 32, offset: 1152)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !317, line: 51, baseType: !107)
!317 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!318 = !DIDerivedType(tag: DW_TAG_member, name: "s_svr", scope: !303, file: !302, line: 136, baseType: !319, size: 64, align: 64, offset: 1216)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64, align: 64)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "real_server_t", file: !302, line: 102, baseType: !321)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_real_server", file: !302, line: 62, size: 1920, align: 64, elements: !322)
!322 = !{!323, !324, !325, !326, !327, !328, !329, !330, !331, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !321, file: !302, line: 63, baseType: !87, size: 1024, align: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !321, file: !302, line: 64, baseType: !129, size: 32, align: 32, offset: 1024)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "iweight", scope: !321, file: !302, line: 65, baseType: !129, size: 32, align: 32, offset: 1056)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "pweight", scope: !321, file: !302, line: 66, baseType: !129, size: 32, align: 32, offset: 1088)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "forwarding_method", scope: !321, file: !302, line: 68, baseType: !107, size: 32, align: 32, offset: 1120)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "u_threshold", scope: !321, file: !302, line: 69, baseType: !316, size: 32, align: 32, offset: 1152)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "l_threshold", scope: !321, file: !302, line: 70, baseType: !316, size: 32, align: 32, offset: 1184)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "inhibit", scope: !321, file: !302, line: 71, baseType: !129, size: 32, align: 32, offset: 1216)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "notify_up", scope: !321, file: !302, line: 74, baseType: !332, size: 64, align: 64, offset: 1280)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "notify_script_t", file: !334, line: 65, baseType: !335)
!334 = !DIFile(filename: "../../lib/notify.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_notify_script", file: !334, line: 59, size: 192, align: 64, elements: !336)
!336 = !{!337, !339, !340, !341, !344}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !335, file: !334, line: 60, baseType: !338, size: 64, align: 64)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !335, file: !334, line: 61, baseType: !129, size: 32, align: 32, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !335, file: !334, line: 62, baseType: !129, size: 32, align: 32, offset: 96)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !335, file: !334, line: 63, baseType: !342, size: 32, align: 32, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !285, line: 240, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !155, line: 125, baseType: !107)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !335, file: !334, line: 64, baseType: !345, size: 32, align: 32, offset: 160)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !285, line: 235, baseType: !346)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !155, line: 126, baseType: !107)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "notify_down", scope: !321, file: !302, line: 75, baseType: !332, size: 64, align: 64, offset: 1344)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !321, file: !302, line: 76, baseType: !129, size: 32, align: 32, offset: 1408)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "delay_loop", scope: !321, file: !302, line: 77, baseType: !100, size: 64, align: 64, offset: 1472)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "warmup", scope: !321, file: !302, line: 78, baseType: !100, size: 64, align: 64, offset: 1536)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "retry", scope: !321, file: !302, line: 79, baseType: !107, size: 32, align: 32, offset: 1600)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "delay_before_retry", scope: !321, file: !302, line: 80, baseType: !100, size: 64, align: 64, offset: 1664)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !321, file: !302, line: 81, baseType: !129, size: 32, align: 32, offset: 1728)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "alive", scope: !321, file: !302, line: 83, baseType: !262, size: 8, align: 8, offset: 1760)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "num_failed_checkers", scope: !321, file: !302, line: 84, baseType: !107, size: 32, align: 32, offset: 1792)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !321, file: !302, line: 85, baseType: !262, size: 8, align: 8, offset: 1824)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "reloaded", scope: !321, file: !302, line: 86, baseType: !262, size: 8, align: 8, offset: 1832)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "virtualhost", scope: !321, file: !302, line: 87, baseType: !131, size: 64, align: 64, offset: 1856)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "af", scope: !303, file: !302, line: 137, baseType: !360, size: 16, align: 16, offset: 1280)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !317, line: 49, baseType: !93)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "service_type", scope: !303, file: !302, line: 138, baseType: !360, size: 16, align: 16, offset: 1296)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "ha_suspend", scope: !303, file: !302, line: 139, baseType: !262, size: 8, align: 8, offset: 1312)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "ha_suspend_addr_count", scope: !303, file: !302, line: 140, baseType: !129, size: 32, align: 32, offset: 1344)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "sched", scope: !303, file: !302, line: 142, baseType: !103, size: 128, align: 8, offset: 1376)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !303, file: !302, line: 143, baseType: !316, size: 32, align: 32, offset: 1504)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "persistence_timeout", scope: !303, file: !302, line: 144, baseType: !316, size: 32, align: 32, offset: 1536)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "pe_name", scope: !303, file: !302, line: 146, baseType: !103, size: 128, align: 8, offset: 1568)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "forwarding_method", scope: !303, file: !302, line: 148, baseType: !107, size: 32, align: 32, offset: 1696)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "persistence_granularity", scope: !303, file: !302, line: 149, baseType: !316, size: 32, align: 32, offset: 1728)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "virtualhost", scope: !303, file: !302, line: 151, baseType: !131, size: 64, align: 64, offset: 1792)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !303, file: !302, line: 153, baseType: !129, size: 32, align: 32, offset: 1856)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "rs", scope: !303, file: !302, line: 154, baseType: !221, size: 64, align: 64, offset: 1920)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "alive", scope: !303, file: !302, line: 155, baseType: !129, size: 32, align: 32, offset: 1984)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !303, file: !302, line: 156, baseType: !262, size: 8, align: 8, offset: 2016)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "omega", scope: !303, file: !302, line: 157, baseType: !262, size: 8, align: 8, offset: 2024)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "inhibit", scope: !303, file: !302, line: 158, baseType: !262, size: 8, align: 8, offset: 2032)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "delay_loop", scope: !303, file: !302, line: 160, baseType: !100, size: 64, align: 64, offset: 2048)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "warmup", scope: !303, file: !302, line: 161, baseType: !100, size: 64, align: 64, offset: 2112)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "retry", scope: !303, file: !302, line: 162, baseType: !107, size: 32, align: 32, offset: 2176)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "delay_before_retry", scope: !303, file: !302, line: 163, baseType: !100, size: 64, align: 64, offset: 2240)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "notify_quorum_up", scope: !303, file: !302, line: 164, baseType: !332, size: 64, align: 64, offset: 2304)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "notify_quorum_down", scope: !303, file: !302, line: 165, baseType: !332, size: 64, align: 64, offset: 2368)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "quorum", scope: !303, file: !302, line: 166, baseType: !107, size: 32, align: 32, offset: 2432)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "hysteresis", scope: !303, file: !302, line: 167, baseType: !107, size: 32, align: 32, offset: 2464)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !303, file: !302, line: 168, baseType: !129, size: 32, align: 32, offset: 2496)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "quorum_state_up", scope: !303, file: !302, line: 169, baseType: !262, size: 8, align: 8, offset: 2528)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "reloaded", scope: !303, file: !302, line: 170, baseType: !262, size: 8, align: 8, offset: 2536)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "rs", scope: !112, file: !111, line: 46, baseType: !319, size: 64, align: 64, offset: 320)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !112, file: !111, line: 47, baseType: !81, size: 64, align: 64, offset: 384)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !112, file: !111, line: 48, baseType: !262, size: 8, align: 8, offset: 448)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "is_up", scope: !112, file: !111, line: 49, baseType: !262, size: 8, align: 8, offset: 456)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "has_run", scope: !112, file: !111, line: 50, baseType: !262, size: 8, align: 8, offset: 464)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "co", scope: !112, file: !111, line: 51, baseType: !82, size: 64, align: 64, offset: 512)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !112, file: !111, line: 52, baseType: !129, size: 32, align: 32, offset: 576)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "delay_loop", scope: !112, file: !111, line: 53, baseType: !100, size: 64, align: 64, offset: 640)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "warmup", scope: !112, file: !111, line: 54, baseType: !100, size: 64, align: 64, offset: 704)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "retry", scope: !112, file: !111, line: 55, baseType: !107, size: 32, align: 32, offset: 768)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "delay_before_retry", scope: !112, file: !111, line: 56, baseType: !100, size: 64, align: 64, offset: 832)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "retry_it", scope: !112, file: !111, line: 57, baseType: !107, size: 32, align: 32, offset: 896)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "default_retry", scope: !112, file: !111, line: 58, baseType: !107, size: 32, align: 32, offset: 928)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "default_delay_before_retry", scope: !112, file: !111, line: 59, baseType: !100, size: 64, align: 64, offset: 960)
!402 = !{!403}
!403 = distinct !DIGlobalVariable(name: "garp_delay", scope: !0, file: !404, line: 150, type: !221, isLocal: false, isDefinition: true, variable: %struct._list** @garp_delay)
!404 = !DIFile(filename: "./../include/vrrp_if.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!405 = !{i32 2, !"Dwarf Version", i32 4}
!406 = !{i32 2, !"Debug Info Version", i32 3}
!407 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!408 = distinct !DISubprogram(name: "install_tcp_check_keyword", scope: !409, file: !409, line: 86, type: !410, isLocal: false, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !412)
!409 = !DIFile(filename: "check_tcp.c", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!410 = !DISubroutineType(types: !411)
!411 = !{null}
!412 = !{}
!413 = !DILocation(line: 88, column: 2, scope: !408)
!414 = !DILocation(line: 89, column: 2, scope: !408)
!415 = !DILocation(line: 90, column: 2, scope: !408)
!416 = !DILocation(line: 91, column: 2, scope: !408)
!417 = !DILocation(line: 92, column: 2, scope: !408)
!418 = !DILocation(line: 93, column: 1, scope: !408)
!419 = distinct !DISubprogram(name: "tcp_check_handler", scope: !409, file: !409, line: 70, type: !420, isLocal: true, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !412)
!420 = !DISubroutineType(types: !421)
!421 = !{null, !422}
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64, align: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "vector_t", file: !424, line: 34, baseType: !425)
!424 = !DIFile(filename: "../../lib/vector.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--check--libcheck.a")
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vector", file: !424, line: 30, size: 128, align: 64, elements: !426)
!426 = !{!427, !428, !429}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !425, file: !424, line: 31, baseType: !107, size: 32, align: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !425, file: !424, line: 32, baseType: !107, size: 32, align: 32, offset: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !425, file: !424, line: 33, baseType: !430, size: 64, align: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!431 = !DILocalVariable(name: "strvec", arg: 1, scope: !419, file: !409, line: 70, type: !422)
!432 = !DIExpression()
!433 = !DILocation(line: 70, column: 53, scope: !419)
!434 = !DILocation(line: 74, column: 51, scope: !419)
!435 = !DILocation(line: 74, column: 34, scope: !419)
!436 = !DILocation(line: 73, column: 2, scope: !419)
!437 = !DILocation(line: 75, column: 1, scope: !419)
!438 = distinct !DISubprogram(name: "tcp_check_end_handler", scope: !409, file: !409, line: 78, type: !410, isLocal: true, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !412)
!439 = !DILocation(line: 80, column: 41, scope: !440)
!440 = distinct !DILexicalBlock(scope: !438, file: !409, line: 80, column: 6)
!441 = !DILocation(line: 80, column: 58, scope: !440)
!442 = !DILocation(line: 80, column: 64, scope: !440)
!443 = !DILocation(line: 80, column: 25, scope: !440)
!444 = !DILocation(line: 80, column: 73, scope: !440)
!445 = !DILocation(line: 80, column: 7, scope: !440)
!446 = !DILocation(line: 80, column: 6, scope: !438)
!447 = !DILocation(line: 81, column: 3, scope: !448)
!448 = distinct !DILexicalBlock(scope: !440, file: !409, line: 80, column: 79)
!449 = !DILocation(line: 82, column: 2, scope: !448)
!450 = !DILocation(line: 83, column: 1, scope: !438)
!451 = distinct !DISubprogram(name: "free_tcp_check", scope: !409, file: !409, line: 48, type: !116, isLocal: true, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !412)
!452 = !DILocalVariable(name: "data", arg: 1, scope: !451, file: !409, line: 48, type: !81)
!453 = !DILocation(line: 48, column: 22, scope: !451)
!454 = !DILocation(line: 50, column: 23, scope: !451)
!455 = !DILocation(line: 50, column: 10, scope: !451)
!456 = !DILocation(line: 50, column: 30, scope: !451)
!457 = !DILocation(line: 50, column: 8, scope: !451)
!458 = !DILocation(line: 50, column: 3, scope: !451)
!459 = !DILocation(line: 50, column: 52, scope: !451)
!460 = !DILocation(line: 50, column: 39, scope: !451)
!461 = !DILocation(line: 50, column: 59, scope: !451)
!462 = !DILocation(line: 50, column: 64, scope: !451)
!463 = !DILocation(line: 51, column: 8, scope: !451)
!464 = !DILocation(line: 51, column: 3, scope: !451)
!465 = !DILocation(line: 51, column: 22, scope: !451)
!466 = !DILocation(line: 52, column: 1, scope: !451)
!467 = distinct !DISubprogram(name: "dump_tcp_check", scope: !409, file: !409, line: 55, type: !120, isLocal: true, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !412)
!468 = !DILocalVariable(name: "fp", arg: 1, scope: !467, file: !409, line: 55, type: !122)
!469 = !DILocation(line: 55, column: 22, scope: !467)
!470 = !DILocalVariable(name: "data", arg: 2, scope: !467, file: !409, line: 55, type: !81)
!471 = !DILocation(line: 55, column: 32, scope: !467)
!472 = !DILocalVariable(name: "checker", scope: !467, file: !409, line: 57, type: !109)
!473 = !DILocation(line: 57, column: 13, scope: !467)
!474 = !DILocation(line: 57, column: 23, scope: !467)
!475 = !DILocation(line: 59, column: 13, scope: !467)
!476 = !DILocation(line: 59, column: 2, scope: !467)
!477 = !DILocation(line: 60, column: 20, scope: !467)
!478 = !DILocation(line: 60, column: 24, scope: !467)
!479 = !DILocation(line: 60, column: 2, scope: !467)
!480 = !DILocation(line: 61, column: 1, scope: !467)
!481 = distinct !DISubprogram(name: "tcp_connect_thread", scope: !409, file: !409, line: 183, type: !482, isLocal: true, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !412)
!482 = !DISubroutineType(types: !483)
!483 = !{!129, !247}
!484 = !DILocalVariable(name: "thread", arg: 1, scope: !481, file: !409, line: 183, type: !247)
!485 = !DILocation(line: 183, column: 31, scope: !481)
!486 = !DILocalVariable(name: "checker", scope: !481, file: !409, line: 185, type: !109)
!487 = !DILocation(line: 185, column: 13, scope: !481)
!488 = !DILocation(line: 185, column: 25, scope: !481)
!489 = !DILocation(line: 185, column: 34, scope: !481)
!490 = !DILocation(line: 185, column: 23, scope: !481)
!491 = !DILocalVariable(name: "co", scope: !481, file: !409, line: 186, type: !82)
!492 = !DILocation(line: 186, column: 15, scope: !481)
!493 = !DILocation(line: 186, column: 20, scope: !481)
!494 = !DILocation(line: 186, column: 29, scope: !481)
!495 = !DILocalVariable(name: "fd", scope: !481, file: !409, line: 187, type: !129)
!496 = !DILocation(line: 187, column: 6, scope: !481)
!497 = !DILocalVariable(name: "status", scope: !481, file: !409, line: 188, type: !129)
!498 = !DILocation(line: 188, column: 6, scope: !481)
!499 = !DILocation(line: 194, column: 7, scope: !500)
!500 = distinct !DILexicalBlock(scope: !481, file: !409, line: 194, column: 6)
!501 = !DILocation(line: 194, column: 16, scope: !500)
!502 = !DILocation(line: 194, column: 6, scope: !481)
!503 = !DILocation(line: 195, column: 20, scope: !504)
!504 = distinct !DILexicalBlock(scope: !500, file: !409, line: 194, column: 25)
!505 = !DILocation(line: 195, column: 28, scope: !504)
!506 = !DILocation(line: 195, column: 56, scope: !504)
!507 = !DILocation(line: 196, column: 6, scope: !504)
!508 = !DILocation(line: 196, column: 15, scope: !504)
!509 = !DILocation(line: 195, column: 3, scope: !504)
!510 = !DILocation(line: 197, column: 3, scope: !504)
!511 = !DILocation(line: 200, column: 19, scope: !512)
!512 = distinct !DILexicalBlock(scope: !481, file: !409, line: 200, column: 6)
!513 = !DILocation(line: 200, column: 23, scope: !512)
!514 = !DILocation(line: 200, column: 27, scope: !512)
!515 = !DILocation(line: 200, column: 12, scope: !512)
!516 = !DILocation(line: 200, column: 10, scope: !512)
!517 = !DILocation(line: 200, column: 95, scope: !512)
!518 = !DILocation(line: 200, column: 6, scope: !481)
!519 = !DILocation(line: 201, column: 3, scope: !520)
!520 = distinct !DILexicalBlock(scope: !512, file: !409, line: 200, column: 102)
!521 = !DILocation(line: 202, column: 20, scope: !520)
!522 = !DILocation(line: 202, column: 28, scope: !520)
!523 = !DILocation(line: 202, column: 56, scope: !520)
!524 = !DILocation(line: 203, column: 5, scope: !520)
!525 = !DILocation(line: 203, column: 14, scope: !520)
!526 = !DILocation(line: 202, column: 3, scope: !520)
!527 = !DILocation(line: 205, column: 3, scope: !520)
!528 = !DILocation(line: 218, column: 28, scope: !481)
!529 = !DILocation(line: 218, column: 32, scope: !481)
!530 = !DILocation(line: 218, column: 11, scope: !481)
!531 = !DILocation(line: 218, column: 9, scope: !481)
!532 = !DILocation(line: 221, column: 26, scope: !533)
!533 = distinct !DILexicalBlock(scope: !481, file: !409, line: 221, column: 5)
!534 = !DILocation(line: 221, column: 30, scope: !533)
!535 = !DILocation(line: 221, column: 38, scope: !533)
!536 = !DILocation(line: 222, column: 4, scope: !533)
!537 = !DILocation(line: 222, column: 8, scope: !533)
!538 = !DILocation(line: 221, column: 5, scope: !533)
!539 = !DILocation(line: 221, column: 5, scope: !481)
!540 = !DILocation(line: 223, column: 9, scope: !541)
!541 = distinct !DILexicalBlock(scope: !533, file: !409, line: 222, column: 24)
!542 = !DILocation(line: 223, column: 3, scope: !541)
!543 = !DILocation(line: 224, column: 3, scope: !541)
!544 = !DILocation(line: 225, column: 20, scope: !541)
!545 = !DILocation(line: 225, column: 28, scope: !541)
!546 = !DILocation(line: 225, column: 56, scope: !541)
!547 = !DILocation(line: 226, column: 5, scope: !541)
!548 = !DILocation(line: 226, column: 14, scope: !541)
!549 = !DILocation(line: 225, column: 3, scope: !541)
!550 = !DILocation(line: 227, column: 2, scope: !541)
!551 = !DILocation(line: 229, column: 2, scope: !481)
!552 = !DILocation(line: 230, column: 1, scope: !481)
!553 = distinct !DISubprogram(name: "tcp_check_compare", scope: !409, file: !409, line: 64, type: !297, isLocal: true, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !412)
!554 = !DILocalVariable(name: "a", arg: 1, scope: !553, file: !409, line: 64, type: !81)
!555 = !DILocation(line: 64, column: 25, scope: !553)
!556 = !DILocalVariable(name: "b", arg: 2, scope: !553, file: !409, line: 64, type: !81)
!557 = !DILocation(line: 64, column: 34, scope: !553)
!558 = !DILocation(line: 66, column: 42, scope: !553)
!559 = !DILocation(line: 66, column: 29, scope: !553)
!560 = !DILocation(line: 66, column: 46, scope: !553)
!561 = !DILocation(line: 66, column: 66, scope: !553)
!562 = !DILocation(line: 66, column: 53, scope: !553)
!563 = !DILocation(line: 66, column: 70, scope: !553)
!564 = !DILocation(line: 66, column: 9, scope: !553)
!565 = !DILocation(line: 66, column: 2, scope: !553)
!566 = distinct !DISubprogram(name: "tcp_bind_connect", scope: !66, file: !66, line: 74, type: !567, isLocal: true, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !412)
!567 = !DISubroutineType(types: !568)
!568 = !{!65, !129, !82}
!569 = !DILocalVariable(name: "fd", arg: 1, scope: !566, file: !66, line: 74, type: !129)
!570 = !DILocation(line: 74, column: 22, scope: !566)
!571 = !DILocalVariable(name: "co", arg: 2, scope: !566, file: !66, line: 74, type: !82)
!572 = !DILocation(line: 74, column: 39, scope: !566)
!573 = !DILocation(line: 76, column: 29, scope: !566)
!574 = !DILocation(line: 76, column: 33, scope: !566)
!575 = !DILocation(line: 76, column: 9, scope: !566)
!576 = !DILocation(line: 76, column: 2, scope: !566)
!577 = distinct !DISubprogram(name: "tcp_connection_state", scope: !66, file: !66, line: 94, type: !578, isLocal: true, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !412)
!578 = !DISubroutineType(types: !579)
!579 = !{!262, !129, !65, !247, !580, !100}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64, align: 64)
!581 = !DILocalVariable(name: "fd", arg: 1, scope: !577, file: !66, line: 94, type: !129)
!582 = !DILocation(line: 94, column: 26, scope: !577)
!583 = !DILocalVariable(name: "status", arg: 2, scope: !577, file: !66, line: 94, type: !65)
!584 = !DILocation(line: 94, column: 50, scope: !577)
!585 = !DILocalVariable(name: "thread", arg: 3, scope: !577, file: !66, line: 94, type: !247)
!586 = !DILocation(line: 94, column: 69, scope: !577)
!587 = !DILocalVariable(name: "func", arg: 4, scope: !577, file: !66, line: 95, type: !580)
!588 = !DILocation(line: 95, column: 14, scope: !577)
!589 = !DILocalVariable(name: "timeout", arg: 5, scope: !577, file: !66, line: 95, type: !100)
!590 = !DILocation(line: 95, column: 48, scope: !577)
!591 = !DILocation(line: 97, column: 33, scope: !577)
!592 = !DILocation(line: 97, column: 37, scope: !577)
!593 = !DILocation(line: 97, column: 45, scope: !577)
!594 = !DILocation(line: 97, column: 53, scope: !577)
!595 = !DILocation(line: 97, column: 59, scope: !577)
!596 = !DILocation(line: 97, column: 9, scope: !577)
!597 = !DILocation(line: 97, column: 2, scope: !577)
!598 = distinct !DISubprogram(name: "tcp_check_thread", scope: !409, file: !409, line: 148, type: !482, isLocal: true, isDefinition: true, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !412)
!599 = !DILocalVariable(name: "thread", arg: 1, scope: !598, file: !409, line: 148, type: !247)
!600 = !DILocation(line: 148, column: 29, scope: !598)
!601 = !DILocalVariable(name: "checker", scope: !598, file: !409, line: 150, type: !109)
!602 = !DILocation(line: 150, column: 13, scope: !598)
!603 = !DILocation(line: 150, column: 25, scope: !598)
!604 = !DILocation(line: 150, column: 34, scope: !598)
!605 = !DILocation(line: 150, column: 23, scope: !598)
!606 = !DILocalVariable(name: "status", scope: !598, file: !409, line: 151, type: !129)
!607 = !DILocation(line: 151, column: 6, scope: !598)
!608 = !DILocation(line: 153, column: 28, scope: !598)
!609 = !DILocation(line: 153, column: 11, scope: !598)
!610 = !DILocation(line: 153, column: 9, scope: !598)
!611 = !DILocation(line: 159, column: 9, scope: !598)
!612 = !DILocation(line: 159, column: 2, scope: !598)
!613 = !DILocation(line: 161, column: 3, scope: !614)
!614 = distinct !DILexicalBlock(scope: !598, file: !409, line: 159, column: 17)
!615 = !DILocation(line: 163, column: 19, scope: !614)
!616 = !DILocation(line: 163, column: 3, scope: !614)
!617 = !DILocation(line: 164, column: 14, scope: !614)
!618 = !DILocation(line: 164, column: 3, scope: !614)
!619 = !DILocation(line: 165, column: 3, scope: !614)
!620 = !DILocation(line: 167, column: 7, scope: !621)
!621 = distinct !DILexicalBlock(scope: !614, file: !409, line: 167, column: 7)
!622 = !DILocation(line: 167, column: 16, scope: !621)
!623 = !DILocation(line: 167, column: 7, scope: !614)
!624 = !DILocation(line: 169, column: 33, scope: !621)
!625 = !DILocation(line: 169, column: 43, scope: !621)
!626 = !DILocation(line: 169, column: 48, scope: !621)
!627 = !DILocation(line: 169, column: 56, scope: !621)
!628 = !DILocation(line: 169, column: 66, scope: !621)
!629 = !DILocation(line: 169, column: 71, scope: !621)
!630 = !DILocation(line: 169, column: 9, scope: !621)
!631 = !DILocation(line: 168, column: 4, scope: !621)
!632 = !DILocation(line: 170, column: 14, scope: !614)
!633 = !DILocation(line: 170, column: 3, scope: !614)
!634 = !DILocation(line: 171, column: 3, scope: !614)
!635 = !DILocation(line: 173, column: 7, scope: !636)
!636 = distinct !DILexicalBlock(scope: !614, file: !409, line: 173, column: 7)
!637 = !DILocation(line: 173, column: 16, scope: !636)
!638 = !DILocation(line: 173, column: 7, scope: !614)
!639 = !DILocation(line: 175, column: 33, scope: !636)
!640 = !DILocation(line: 175, column: 43, scope: !636)
!641 = !DILocation(line: 175, column: 48, scope: !636)
!642 = !DILocation(line: 175, column: 56, scope: !636)
!643 = !DILocation(line: 175, column: 66, scope: !636)
!644 = !DILocation(line: 175, column: 71, scope: !636)
!645 = !DILocation(line: 175, column: 9, scope: !636)
!646 = !DILocation(line: 174, column: 4, scope: !636)
!647 = !DILocation(line: 176, column: 14, scope: !614)
!648 = !DILocation(line: 176, column: 3, scope: !614)
!649 = !DILocation(line: 177, column: 2, scope: !614)
!650 = !DILocation(line: 179, column: 2, scope: !598)
!651 = distinct !DISubprogram(name: "tcp_socket_state", scope: !66, file: !66, line: 87, type: !652, isLocal: true, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !412)
!652 = !DISubroutineType(types: !653)
!653 = !{!65, !247, !580}
!654 = !DILocalVariable(name: "thread", arg: 1, scope: !651, file: !66, line: 87, type: !247)
!655 = !DILocation(line: 87, column: 29, scope: !651)
!656 = !DILocalVariable(name: "func", arg: 2, scope: !651, file: !66, line: 87, type: !580)
!657 = !DILocation(line: 87, column: 43, scope: !651)
!658 = !DILocation(line: 89, column: 22, scope: !651)
!659 = !DILocation(line: 89, column: 30, scope: !651)
!660 = !DILocation(line: 89, column: 9, scope: !651)
!661 = !DILocation(line: 89, column: 2, scope: !651)
!662 = distinct !DISubprogram(name: "tcp_epilog", scope: !409, file: !409, line: 96, type: !663, isLocal: true, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !412)
!663 = !DISubroutineType(types: !664)
!664 = !{null, !247, !262}
!665 = !DILocalVariable(name: "thread", arg: 1, scope: !662, file: !409, line: 96, type: !247)
!666 = !DILocation(line: 96, column: 23, scope: !662)
!667 = !DILocalVariable(name: "is_success", arg: 2, scope: !662, file: !409, line: 96, type: !262)
!668 = !DILocation(line: 96, column: 35, scope: !662)
!669 = !DILocalVariable(name: "checker", scope: !662, file: !409, line: 98, type: !109)
!670 = !DILocation(line: 98, column: 13, scope: !662)
!671 = !DILocalVariable(name: "delay", scope: !662, file: !409, line: 99, type: !100)
!672 = !DILocation(line: 99, column: 16, scope: !662)
!673 = !DILocalVariable(name: "checker_was_up", scope: !662, file: !409, line: 100, type: !262)
!674 = !DILocation(line: 100, column: 6, scope: !662)
!675 = !DILocalVariable(name: "rs_was_alive", scope: !662, file: !409, line: 101, type: !262)
!676 = !DILocation(line: 101, column: 6, scope: !662)
!677 = !DILocation(line: 103, column: 14, scope: !662)
!678 = !DILocation(line: 103, column: 23, scope: !662)
!679 = !DILocation(line: 103, column: 12, scope: !662)
!680 = !DILocation(line: 103, column: 10, scope: !662)
!681 = !DILocation(line: 105, column: 6, scope: !682)
!682 = distinct !DILexicalBlock(scope: !662, file: !409, line: 105, column: 6)
!683 = !DILocation(line: 105, column: 17, scope: !682)
!684 = !DILocation(line: 105, column: 20, scope: !685)
!685 = !DILexicalBlockFile(scope: !682, file: !409, discriminator: 1)
!686 = !DILocation(line: 105, column: 29, scope: !685)
!687 = !DILocation(line: 105, column: 41, scope: !685)
!688 = !DILocation(line: 105, column: 50, scope: !685)
!689 = !DILocation(line: 105, column: 38, scope: !685)
!690 = !DILocation(line: 105, column: 6, scope: !685)
!691 = !DILocation(line: 106, column: 11, scope: !692)
!692 = distinct !DILexicalBlock(scope: !682, file: !409, line: 105, column: 57)
!693 = !DILocation(line: 106, column: 20, scope: !692)
!694 = !DILocation(line: 106, column: 9, scope: !692)
!695 = !DILocation(line: 107, column: 3, scope: !692)
!696 = !DILocation(line: 107, column: 12, scope: !692)
!697 = !DILocation(line: 107, column: 21, scope: !692)
!698 = !DILocation(line: 109, column: 7, scope: !699)
!699 = distinct !DILexicalBlock(scope: !692, file: !409, line: 109, column: 7)
!700 = !DILocation(line: 109, column: 18, scope: !699)
!701 = !DILocation(line: 109, column: 23, scope: !702)
!702 = !DILexicalBlockFile(scope: !699, file: !409, discriminator: 1)
!703 = !DILocation(line: 109, column: 32, scope: !702)
!704 = !DILocation(line: 109, column: 38, scope: !702)
!705 = !DILocation(line: 109, column: 42, scope: !706)
!706 = !DILexicalBlockFile(scope: !699, file: !409, discriminator: 2)
!707 = !DILocation(line: 109, column: 51, scope: !706)
!708 = !DILocation(line: 109, column: 7, scope: !706)
!709 = !DILocation(line: 111, column: 33, scope: !710)
!710 = distinct !DILexicalBlock(scope: !699, file: !409, line: 109, column: 61)
!711 = !DILocation(line: 111, column: 43, scope: !710)
!712 = !DILocation(line: 111, column: 48, scope: !710)
!713 = !DILocation(line: 111, column: 56, scope: !710)
!714 = !DILocation(line: 111, column: 66, scope: !710)
!715 = !DILocation(line: 111, column: 71, scope: !710)
!716 = !DILocation(line: 111, column: 9, scope: !710)
!717 = !DILocation(line: 110, column: 4, scope: !710)
!718 = !DILocation(line: 112, column: 21, scope: !710)
!719 = !DILocation(line: 112, column: 30, scope: !710)
!720 = !DILocation(line: 112, column: 19, scope: !710)
!721 = !DILocation(line: 113, column: 19, scope: !710)
!722 = !DILocation(line: 113, column: 28, scope: !710)
!723 = !DILocation(line: 113, column: 32, scope: !710)
!724 = !DILocation(line: 113, column: 17, scope: !710)
!725 = !DILocation(line: 114, column: 32, scope: !710)
!726 = !DILocation(line: 114, column: 4, scope: !710)
!727 = !DILocation(line: 115, column: 8, scope: !728)
!728 = distinct !DILexicalBlock(scope: !710, file: !409, line: 115, column: 8)
!729 = !DILocation(line: 115, column: 17, scope: !728)
!730 = !DILocation(line: 115, column: 21, scope: !728)
!731 = !DILocation(line: 115, column: 32, scope: !728)
!732 = !DILocation(line: 115, column: 36, scope: !733)
!733 = !DILexicalBlockFile(scope: !728, file: !409, discriminator: 1)
!734 = !DILocation(line: 115, column: 51, scope: !733)
!735 = !DILocation(line: 116, column: 9, scope: !728)
!736 = !DILocation(line: 116, column: 25, scope: !728)
!737 = !DILocation(line: 116, column: 34, scope: !728)
!738 = !DILocation(line: 116, column: 38, scope: !728)
!739 = !DILocation(line: 116, column: 22, scope: !728)
!740 = !DILocation(line: 116, column: 44, scope: !728)
!741 = !DILocation(line: 116, column: 48, scope: !733)
!742 = !DILocation(line: 116, column: 61, scope: !733)
!743 = !DILocation(line: 115, column: 8, scope: !744)
!744 = !DILexicalBlockFile(scope: !710, file: !409, discriminator: 2)
!745 = !DILocation(line: 117, column: 29, scope: !728)
!746 = !DILocation(line: 117, column: 5, scope: !728)
!747 = !DILocation(line: 119, column: 3, scope: !710)
!748 = !DILocation(line: 119, column: 15, scope: !749)
!749 = !DILexicalBlockFile(scope: !750, file: !409, discriminator: 1)
!750 = distinct !DILexicalBlock(scope: !699, file: !409, line: 119, column: 14)
!751 = !DILocation(line: 119, column: 26, scope: !749)
!752 = !DILocation(line: 120, column: 8, scope: !750)
!753 = !DILocation(line: 120, column: 17, scope: !750)
!754 = !DILocation(line: 120, column: 23, scope: !750)
!755 = !DILocation(line: 120, column: 27, scope: !749)
!756 = !DILocation(line: 120, column: 36, scope: !749)
!757 = !DILocation(line: 119, column: 14, scope: !706)
!758 = !DILocation(line: 121, column: 8, scope: !759)
!759 = distinct !DILexicalBlock(scope: !760, file: !409, line: 121, column: 8)
!760 = distinct !DILexicalBlock(scope: !750, file: !409, line: 120, column: 46)
!761 = !DILocation(line: 121, column: 17, scope: !759)
!762 = !DILocation(line: 121, column: 8, scope: !760)
!763 = !DILocation(line: 124, column: 36, scope: !759)
!764 = !DILocation(line: 124, column: 46, scope: !759)
!765 = !DILocation(line: 124, column: 51, scope: !759)
!766 = !DILocation(line: 124, column: 59, scope: !759)
!767 = !DILocation(line: 124, column: 69, scope: !759)
!768 = !DILocation(line: 124, column: 74, scope: !759)
!769 = !DILocation(line: 124, column: 12, scope: !759)
!770 = !DILocation(line: 125, column: 11, scope: !759)
!771 = !DILocation(line: 125, column: 20, scope: !759)
!772 = !DILocation(line: 122, column: 5, scope: !759)
!773 = !DILocation(line: 129, column: 36, scope: !759)
!774 = !DILocation(line: 129, column: 46, scope: !759)
!775 = !DILocation(line: 129, column: 51, scope: !759)
!776 = !DILocation(line: 129, column: 59, scope: !759)
!777 = !DILocation(line: 129, column: 69, scope: !759)
!778 = !DILocation(line: 129, column: 74, scope: !759)
!779 = !DILocation(line: 129, column: 12, scope: !759)
!780 = !DILocation(line: 127, column: 5, scope: !759)
!781 = !DILocation(line: 130, column: 21, scope: !760)
!782 = !DILocation(line: 130, column: 30, scope: !760)
!783 = !DILocation(line: 130, column: 19, scope: !760)
!784 = !DILocation(line: 131, column: 19, scope: !760)
!785 = !DILocation(line: 131, column: 28, scope: !760)
!786 = !DILocation(line: 131, column: 32, scope: !760)
!787 = !DILocation(line: 131, column: 17, scope: !760)
!788 = !DILocation(line: 132, column: 34, scope: !760)
!789 = !DILocation(line: 132, column: 4, scope: !760)
!790 = !DILocation(line: 133, column: 8, scope: !791)
!791 = distinct !DILexicalBlock(scope: !760, file: !409, line: 133, column: 8)
!792 = !DILocation(line: 133, column: 17, scope: !791)
!793 = !DILocation(line: 133, column: 21, scope: !791)
!794 = !DILocation(line: 133, column: 32, scope: !791)
!795 = !DILocation(line: 133, column: 35, scope: !796)
!796 = !DILexicalBlockFile(scope: !791, file: !409, discriminator: 1)
!797 = !DILocation(line: 133, column: 50, scope: !796)
!798 = !DILocation(line: 134, column: 9, scope: !791)
!799 = !DILocation(line: 134, column: 25, scope: !791)
!800 = !DILocation(line: 134, column: 34, scope: !791)
!801 = !DILocation(line: 134, column: 38, scope: !791)
!802 = !DILocation(line: 134, column: 22, scope: !791)
!803 = !DILocation(line: 134, column: 44, scope: !791)
!804 = !DILocation(line: 134, column: 48, scope: !796)
!805 = !DILocation(line: 134, column: 61, scope: !796)
!806 = !DILocation(line: 133, column: 8, scope: !807)
!807 = !DILexicalBlockFile(scope: !760, file: !409, discriminator: 2)
!808 = !DILocation(line: 135, column: 29, scope: !791)
!809 = !DILocation(line: 135, column: 5, scope: !791)
!810 = !DILocation(line: 137, column: 3, scope: !760)
!811 = !DILocation(line: 138, column: 2, scope: !692)
!812 = !DILocation(line: 139, column: 11, scope: !813)
!813 = distinct !DILexicalBlock(scope: !682, file: !409, line: 138, column: 9)
!814 = !DILocation(line: 139, column: 20, scope: !813)
!815 = !DILocation(line: 139, column: 9, scope: !813)
!816 = !DILocation(line: 140, column: 5, scope: !813)
!817 = !DILocation(line: 140, column: 14, scope: !813)
!818 = !DILocation(line: 140, column: 3, scope: !813)
!819 = !DILocation(line: 144, column: 19, scope: !662)
!820 = !DILocation(line: 144, column: 27, scope: !662)
!821 = !DILocation(line: 144, column: 55, scope: !662)
!822 = !DILocation(line: 144, column: 64, scope: !662)
!823 = !DILocation(line: 144, column: 2, scope: !662)
!824 = !DILocation(line: 145, column: 1, scope: !662)
