; ModuleID = './[inter]keepalived--vrrp--vrrp_scheduler.o.i'
source_filename = "./[inter]keepalived--vrrp--vrrp_scheduler.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct._thread_master = type { %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.list_head, %struct.list_head, %struct.list_head, %struct._list*, %struct.rb_root, %struct.epoll_event*, %struct._thread_event*, i32, i32, i32, i32, %struct._thread*, i64, i64, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct._list = type { %struct._element*, %struct._element*, i32, void (i8*)*, void (%struct._IO_FILE*, i8*)* }
%struct._element = type { %struct._element*, %struct._element*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.rb_root = type { %struct.rb_node* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.epoll_event = type opaque
%struct._thread_event = type { %struct._thread*, %struct._thread*, i64, i32, %struct.rb_node }
%struct._thread = type { i64, i32, %struct._thread_master*, i32 (%struct._thread*)*, i8*, %struct.timeval, %union.anon.0, %struct._thread_event*, %union.anon.1 }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { i32, i32 }
%union.anon.1 = type { %struct.rb_node }
%struct._vrrp_data = type { %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list*, %struct._list* }
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
%struct._notify_script = type { i8**, i32, i32, i32, i32 }
%struct._seq_counter = type { i8, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct._notify_fifo = type { i8*, i32, i8, %struct._notify_script* }
%struct.anon.13 = type { void (%struct._vrrp_t*)* }
%struct._ip_address = type { %struct.ifaddrmsg, %union.anon.2, %struct._interface*, i8*, i32, i32, i8, %union.anon.4, i8, %struct._static_track_group*, i8, i8, i8 }
%struct.ifaddrmsg = type { i8, i8, i8, i8, i32 }
%union.anon.2 = type { %struct.in6_addr }
%union.anon.4 = type { %struct.in6_addr }
%struct._static_track_group = type { i8*, %struct._vector*, %struct._list* }
%struct._vrrp_script = type { i8*, %struct._notify_script, i64, i64, i32, i32, i32, i32, %struct._list*, i32, i32, i32, i8 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.7 = type { i32 }
%union.anon.8 = type { i32 }
%union.anon.9 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i32 }
%struct._vrrphdr = type { i8, i8, i8, i8, %union.anon.14, i16 }
%union.anon.14 = type { %struct.anon.16 }
%struct.anon.16 = type { i16 }
%union.__SOCKADDR_ARG = type { %struct.sockaddr* }
%struct.sockaddr = type { i16, [14 x i8] }

@time_now = external global %struct.timeval, align 8
@master = external global %struct._thread_master*, align 8
@vrrp_data = external global %struct._vrrp_data*, align 8
@debug = external global i64, align 8
@vrrp_initialised = common global i8 0, align 1
@vrrp_arp_thread.next_time = private unnamed_addr constant %struct.timeval { i64 2147483647, i64 0 }, align 8
@garp_next_time = common global %struct.timeval zeroinitializer, align 8
@garp_thread = common global %struct._thread* null, align 8
@garp_delay = common global %struct._list* null, align 8
@global_data = external global %struct._data*, align 8
@.str = private unnamed_addr constant [34 x i8] c"(%s) Entering BACKUP STATE (init)\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"(%s) Entering FAULT STATE (init)\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Track script %s is %s, expect idle - skipping run\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"already running\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"being timed out\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Child (PID %d) failed to terminate after kill\00", align 1
@.str.6 = private unnamed_addr constant [66 x i8] c"kill -%d of process %s(%d) with new state %d failed with errno %d\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"Child thread pid %d timeout with unknown script state %d\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Script `%s` now returning %d\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"succeeded\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"exited with status\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"timed_out\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"due to signal\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"VRRP_Script(%s) %s\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"VRRP_Script(%s) %s (%s %d)\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"(%s) Receive advertisement timeout\00", align 1
@VRRP_TSM = internal global [4 x [4 x %struct.anon.13]] [[4 x %struct.anon.13] zeroinitializer, [4 x %struct.anon.13] [%struct.anon.13 zeroinitializer, %struct.anon.13 zeroinitializer, %struct.anon.13 { void (%struct._vrrp_t*)* @vrrp_sync_master }, %struct.anon.13 zeroinitializer], [4 x %struct.anon.13] [%struct.anon.13 zeroinitializer, %struct.anon.13 { void (%struct._vrrp_t*)* @vrrp_sync_backup }, %struct.anon.13 { void (%struct._vrrp_t*)* @vrrp_sync_master }, %struct.anon.13 zeroinitializer], [4 x %struct.anon.13] [%struct.anon.13 zeroinitializer, %struct.anon.13 zeroinitializer, %struct.anon.13 { void (%struct._vrrp_t*)* @vrrp_sync_master }, %struct.anon.13 zeroinitializer]], align 16
@vrrp_buffer = external global i8*, align 8
@vrrp_buffer_len = external global i64, align 8
@.str.17 = private unnamed_addr constant [38 x i8] c"(%s) In dispatcher_read with state %d\00", align 1

; Function Attrs: nounwind uwtable
define void @vrrp_init_instance_sands(%struct._vrrp_t*) #0 !dbg !570 {
  %2 = alloca %struct._vrrp_t*, align 8
  %3 = alloca %struct.timeval, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = alloca %struct.timeval, align 8
  store %struct._vrrp_t* %0, %struct._vrrp_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %2, metadata !571, metadata !572), !dbg !573
  %6 = call { i64, i64 } @set_time_now(), !dbg !574
  %7 = bitcast %struct.timeval* %3 to { i64, i64 }*, !dbg !574
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 0, !dbg !574
  %9 = extractvalue { i64, i64 } %6, 0, !dbg !574
  store i64 %9, i64* %8, align 8, !dbg !574
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 1, !dbg !574
  %11 = extractvalue { i64, i64 } %6, 1, !dbg !574
  store i64 %11, i64* %10, align 8, !dbg !574
  %12 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !575
  %13 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %12, i32 0, i32 55, !dbg !577
  %14 = load i32, i32* %13, align 8, !dbg !577
  %15 = icmp eq i32 %14, 2, !dbg !578
  br i1 %15, label %16, label %43, !dbg !579

; <label>:16:                                     ; preds = %1
  %17 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !580
  %18 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %17, i32 0, i32 57, !dbg !583
  %19 = load i8, i8* %18, align 8, !dbg !583
  %20 = trunc i8 %19 to i1, !dbg !583
  br i1 %20, label %21, label %25, !dbg !584

; <label>:21:                                     ; preds = %16
  %22 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !585
  %23 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %22, i32 0, i32 71, !dbg !586
  %24 = bitcast %struct.timeval* %23 to i8*, !dbg !587
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* bitcast (%struct.timeval* @time_now to i8*), i64 16, i32 8, i1 false), !dbg !587
  br label %42, !dbg !585

; <label>:25:                                     ; preds = %16
  %26 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !588
  %27 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %26, i32 0, i32 71, !dbg !589
  %28 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !590
  %29 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %28, i32 0, i32 47, !dbg !591
  %30 = load i32, i32* %29, align 8, !dbg !591
  %31 = zext i32 %30 to i64, !dbg !590
  %32 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.timeval* @time_now to { i64, i64 }*), i32 0, i32 0), align 8, !dbg !592
  %33 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.timeval* @time_now to { i64, i64 }*), i32 0, i32 1), align 8, !dbg !592
  %34 = call { i64, i64 } @timer_add_long(i64 %32, i64 %33, i64 %31), !dbg !592
  %35 = bitcast %struct.timeval* %4 to { i64, i64 }*, !dbg !592
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %35, i32 0, i32 0, !dbg !592
  %37 = extractvalue { i64, i64 } %34, 0, !dbg !592
  store i64 %37, i64* %36, align 8, !dbg !592
  %38 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %35, i32 0, i32 1, !dbg !592
  %39 = extractvalue { i64, i64 } %34, 1, !dbg !592
  store i64 %39, i64* %38, align 8, !dbg !592
  %40 = bitcast %struct.timeval* %27 to i8*, !dbg !592
  %41 = bitcast %struct.timeval* %4 to i8*, !dbg !592
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %40, i8* %41, i64 16, i32 8, i1 false), !dbg !593
  br label %42

; <label>:42:                                     ; preds = %25, %21
  br label %81, !dbg !595

; <label>:43:                                     ; preds = %1
  %44 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !596
  %45 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %44, i32 0, i32 55, !dbg !598
  %46 = load i32, i32* %45, align 8, !dbg !598
  %47 = icmp eq i32 %46, 1, !dbg !599
  br i1 %47, label %48, label %65, !dbg !600

; <label>:48:                                     ; preds = %43
  %49 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !601
  %50 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %49, i32 0, i32 71, !dbg !603
  %51 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !604
  %52 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %51, i32 0, i32 70, !dbg !605
  %53 = load i32, i32* %52, align 8, !dbg !605
  %54 = zext i32 %53 to i64, !dbg !604
  %55 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.timeval* @time_now to { i64, i64 }*), i32 0, i32 0), align 8, !dbg !606
  %56 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.timeval* @time_now to { i64, i64 }*), i32 0, i32 1), align 8, !dbg !606
  %57 = call { i64, i64 } @timer_add_long(i64 %55, i64 %56, i64 %54), !dbg !606
  %58 = bitcast %struct.timeval* %5 to { i64, i64 }*, !dbg !606
  %59 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %58, i32 0, i32 0, !dbg !606
  %60 = extractvalue { i64, i64 } %57, 0, !dbg !606
  store i64 %60, i64* %59, align 8, !dbg !606
  %61 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %58, i32 0, i32 1, !dbg !606
  %62 = extractvalue { i64, i64 } %57, 1, !dbg !606
  store i64 %62, i64* %61, align 8, !dbg !606
  %63 = bitcast %struct.timeval* %50 to i8*, !dbg !606
  %64 = bitcast %struct.timeval* %5 to i8*, !dbg !606
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %64, i64 16, i32 8, i1 false), !dbg !607
  br label %80, !dbg !609

; <label>:65:                                     ; preds = %43
  %66 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !610
  %67 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %66, i32 0, i32 55, !dbg !612
  %68 = load i32, i32* %67, align 8, !dbg !612
  %69 = icmp eq i32 %68, 3, !dbg !613
  br i1 %69, label %75, label %70, !dbg !614

; <label>:70:                                     ; preds = %65
  %71 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !615
  %72 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %71, i32 0, i32 55, !dbg !617
  %73 = load i32, i32* %72, align 8, !dbg !617
  %74 = icmp eq i32 %73, 0, !dbg !618
  br i1 %74, label %75, label %79, !dbg !619

; <label>:75:                                     ; preds = %70, %65
  %76 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !620
  %77 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %76, i32 0, i32 71, !dbg !621
  %78 = getelementptr inbounds %struct.timeval, %struct.timeval* %77, i32 0, i32 0, !dbg !622
  store i64 -9223372036854775808, i64* %78, align 8, !dbg !623
  br label %79, !dbg !620

; <label>:79:                                     ; preds = %75, %70
  br label %80

; <label>:80:                                     ; preds = %79, %48
  br label %81

; <label>:81:                                     ; preds = %80, %42
  ret void, !dbg !624
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare { i64, i64 } @set_time_now() #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

declare { i64, i64 } @timer_add_long(i64, i64, i64) #2

; Function Attrs: nounwind uwtable
define void @vrrp_thread_requeue_read(%struct._vrrp_t*) #0 !dbg !625 {
  %2 = alloca %struct._vrrp_t*, align 8
  store %struct._vrrp_t* %0, %struct._vrrp_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %2, metadata !626, metadata !572), !dbg !627
  %3 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !628
  %4 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !629
  %5 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %4, i32 0, i32 58, !dbg !630
  %6 = load %struct._sock*, %struct._sock** %5, align 8, !dbg !630
  %7 = getelementptr inbounds %struct._sock, %struct._sock* %6, i32 0, i32 5, !dbg !631
  %8 = load i32, i32* %7, align 4, !dbg !631
  %9 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !632
  %10 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %9, i32 0, i32 58, !dbg !633
  %11 = load %struct._sock*, %struct._sock** %10, align 8, !dbg !633
  %12 = getelementptr inbounds %struct._sock, %struct._sock* %11, i32 0, i32 5, !dbg !634
  %13 = load i32, i32* %12, align 4, !dbg !634
  %14 = call i64 @vrrp_timer_fd(i32 %13), !dbg !635
  call void @thread_requeue_read(%struct._thread_master* %3, i32 %8, i64 %14), !dbg !636
  ret void, !dbg !638
}

declare void @thread_requeue_read(%struct._thread_master*, i32, i64) #2

; Function Attrs: nounwind uwtable
define internal i64 @vrrp_timer_fd(i32) #0 !dbg !639 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.timeval, align 8
  %5 = alloca %struct.timeval, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !643, metadata !572), !dbg !644
  call void @llvm.dbg.declare(metadata %struct.timeval* %4, metadata !645, metadata !572), !dbg !646
  %6 = load i32, i32* %3, align 4, !dbg !647
  %7 = call { i64, i64 } @vrrp_compute_timer(i32 %6), !dbg !648
  %8 = bitcast %struct.timeval* %5 to { i64, i64 }*, !dbg !648
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 0, !dbg !648
  %10 = extractvalue { i64, i64 } %7, 0, !dbg !648
  store i64 %10, i64* %9, align 8, !dbg !648
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 1, !dbg !648
  %12 = extractvalue { i64, i64 } %7, 1, !dbg !648
  store i64 %12, i64* %11, align 8, !dbg !648
  %13 = bitcast %struct.timeval* %4 to i8*, !dbg !648
  %14 = bitcast %struct.timeval* %5 to i8*, !dbg !648
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 16, i32 8, i1 false), !dbg !649
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0, !dbg !651
  %16 = load i64, i64* %15, align 8, !dbg !651
  %17 = icmp eq i64 %16, -9223372036854775808, !dbg !653
  br i1 %17, label %18, label %19, !dbg !654

; <label>:18:                                     ; preds = %1
  store i64 -1, i64* %2, align 8, !dbg !655
  br label %65, !dbg !655

; <label>:19:                                     ; preds = %1
  %20 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0, !dbg !656
  %21 = load i64, i64* %20, align 8, !dbg !656
  %22 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @time_now, i32 0, i32 0), align 8, !dbg !656
  %23 = icmp eq i64 %21, %22, !dbg !658
  br i1 %23, label %24, label %29, !dbg !659

; <label>:24:                                     ; preds = %19
  %25 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1, !dbg !660
  %26 = load i64, i64* %25, align 8, !dbg !660
  %27 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @time_now, i32 0, i32 1), align 8, !dbg !660
  %28 = icmp slt i64 %26, %27, !dbg !662
  br i1 %28, label %34, label %35, !dbg !663

; <label>:29:                                     ; preds = %19
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0, !dbg !664
  %31 = load i64, i64* %30, align 8, !dbg !664
  %32 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @time_now, i32 0, i32 0), align 8, !dbg !664
  %33 = icmp slt i64 %31, %32, !dbg !666
  br i1 %33, label %34, label %35, !dbg !666

; <label>:34:                                     ; preds = %29, %24
  store i64 1000, i64* %2, align 8, !dbg !667
  br label %65, !dbg !667

; <label>:35:                                     ; preds = %29, %24
  br label %36, !dbg !668, !llvm.loop !669

; <label>:36:                                     ; preds = %35
  %37 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0, !dbg !670
  %38 = load i64, i64* %37, align 8, !dbg !670
  %39 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @time_now, i32 0, i32 0), align 8, !dbg !670
  %40 = sub nsw i64 %38, %39, !dbg !673
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0, !dbg !670
  store i64 %40, i64* %41, align 8, !dbg !673
  %42 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1, !dbg !670
  %43 = load i64, i64* %42, align 8, !dbg !670
  %44 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @time_now, i32 0, i32 1), align 8, !dbg !670
  %45 = sub nsw i64 %43, %44, !dbg !674
  %46 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1, !dbg !670
  store i64 %45, i64* %46, align 8, !dbg !674
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1, !dbg !670
  %48 = load i64, i64* %47, align 8, !dbg !670
  %49 = icmp slt i64 %48, 0, !dbg !674
  br i1 %49, label %50, label %57, !dbg !675

; <label>:50:                                     ; preds = %36
  %51 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0, !dbg !676
  %52 = load i64, i64* %51, align 8, !dbg !680
  %53 = add nsw i64 %52, -1, !dbg !680
  store i64 %53, i64* %51, align 8, !dbg !680
  %54 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1, !dbg !676
  %55 = load i64, i64* %54, align 8, !dbg !681
  %56 = add nsw i64 %55, 1000000, !dbg !681
  store i64 %56, i64* %54, align 8, !dbg !681
  br label %57, !dbg !682

; <label>:57:                                     ; preds = %50, %36
  br label %58, !dbg !683

; <label>:58:                                     ; preds = %57
  %59 = bitcast %struct.timeval* %4 to { i64, i64 }*, !dbg !685
  %60 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %59, i32 0, i32 0, !dbg !685
  %61 = load i64, i64* %60, align 8, !dbg !685
  %62 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %59, i32 0, i32 1, !dbg !685
  %63 = load i64, i64* %62, align 8, !dbg !685
  %64 = call i64 @timer_long(i64 %61, i64 %63), !dbg !685
  store i64 %64, i64* %2, align 8, !dbg !686
  br label %65, !dbg !686

; <label>:65:                                     ; preds = %58, %34, %18
  %66 = load i64, i64* %2, align 8, !dbg !687
  ret i64 %66, !dbg !687
}

; Function Attrs: nounwind uwtable
define void @vrrp_thread_requeue_read_relative(%struct._vrrp_t*, i32) #0 !dbg !688 {
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.timeval, align 8
  store %struct._vrrp_t* %0, %struct._vrrp_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !691, metadata !572), !dbg !692
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !693, metadata !572), !dbg !694
  %6 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !695
  %7 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %6, i32 0, i32 71, !dbg !696
  %8 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !697
  %9 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %8, i32 0, i32 71, !dbg !698
  %10 = load i32, i32* %4, align 4, !dbg !699
  %11 = zext i32 %10 to i64, !dbg !699
  %12 = bitcast %struct.timeval* %9 to { i64, i64 }*, !dbg !700
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 0, !dbg !700
  %14 = load i64, i64* %13, align 8, !dbg !700
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1, !dbg !700
  %16 = load i64, i64* %15, align 8, !dbg !700
  %17 = call { i64, i64 } @timer_sub_long(i64 %14, i64 %16, i64 %11), !dbg !700
  %18 = bitcast %struct.timeval* %5 to { i64, i64 }*, !dbg !700
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 0, !dbg !700
  %20 = extractvalue { i64, i64 } %17, 0, !dbg !700
  store i64 %20, i64* %19, align 8, !dbg !700
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1, !dbg !700
  %22 = extractvalue { i64, i64 } %17, 1, !dbg !700
  store i64 %22, i64* %21, align 8, !dbg !700
  %23 = bitcast %struct.timeval* %7 to i8*, !dbg !700
  %24 = bitcast %struct.timeval* %5 to i8*, !dbg !700
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %23, i8* %24, i64 16, i32 8, i1 false), !dbg !701
  %25 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !703
  %26 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %25, i32 0, i32 71, !dbg !705
  %27 = getelementptr inbounds %struct.timeval, %struct.timeval* %26, i32 0, i32 0, !dbg !706
  %28 = load i64, i64* %27, align 8, !dbg !706
  %29 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @time_now, i32 0, i32 0), align 8, !dbg !706
  %30 = icmp eq i64 %28, %29, !dbg !707
  br i1 %30, label %31, label %38, !dbg !708

; <label>:31:                                     ; preds = %2
  %32 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !709
  %33 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %32, i32 0, i32 71, !dbg !711
  %34 = getelementptr inbounds %struct.timeval, %struct.timeval* %33, i32 0, i32 1, !dbg !712
  %35 = load i64, i64* %34, align 8, !dbg !712
  %36 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @time_now, i32 0, i32 1), align 8, !dbg !712
  %37 = icmp slt i64 %35, %36, !dbg !713
  br i1 %37, label %45, label %49, !dbg !709

; <label>:38:                                     ; preds = %2
  %39 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !714
  %40 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %39, i32 0, i32 71, !dbg !716
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %40, i32 0, i32 0, !dbg !717
  %42 = load i64, i64* %41, align 8, !dbg !717
  %43 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @time_now, i32 0, i32 0), align 8, !dbg !717
  %44 = icmp slt i64 %42, %43, !dbg !718
  br i1 %44, label %45, label %49, !dbg !718

; <label>:45:                                     ; preds = %38, %31
  %46 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !719
  %47 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %46, i32 0, i32 71, !dbg !720
  %48 = bitcast %struct.timeval* %47 to i8*, !dbg !721
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* bitcast (%struct.timeval* @time_now to i8*), i64 16, i32 8, i1 false), !dbg !721
  br label %49, !dbg !719

; <label>:49:                                     ; preds = %45, %38, %31
  %50 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !722
  call void @vrrp_thread_requeue_read(%struct._vrrp_t* %50), !dbg !723
  ret void, !dbg !724
}

declare { i64, i64 } @timer_sub_long(i64, i64, i64) #2

; Function Attrs: nounwind uwtable
define void @vrrp_thread_add_read(%struct._vrrp_t*) #0 !dbg !725 {
  %2 = alloca %struct._vrrp_t*, align 8
  store %struct._vrrp_t* %0, %struct._vrrp_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %2, metadata !726, metadata !572), !dbg !727
  %3 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !728
  %4 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !729
  %5 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %4, i32 0, i32 58, !dbg !730
  %6 = load %struct._sock*, %struct._sock** %5, align 8, !dbg !730
  %7 = bitcast %struct._sock* %6 to i8*, !dbg !729
  %8 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !731
  %9 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %8, i32 0, i32 58, !dbg !732
  %10 = load %struct._sock*, %struct._sock** %9, align 8, !dbg !732
  %11 = getelementptr inbounds %struct._sock, %struct._sock* %10, i32 0, i32 5, !dbg !733
  %12 = load i32, i32* %11, align 4, !dbg !733
  %13 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !734
  %14 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %13, i32 0, i32 58, !dbg !735
  %15 = load %struct._sock*, %struct._sock** %14, align 8, !dbg !735
  %16 = getelementptr inbounds %struct._sock, %struct._sock* %15, i32 0, i32 5, !dbg !736
  %17 = load i32, i32* %16, align 4, !dbg !736
  %18 = call i64 @vrrp_timer_fd(i32 %17), !dbg !737
  %19 = call %struct._thread* @thread_add_read(%struct._thread_master* %3, i32 (%struct._thread*)* @vrrp_read_dispatcher_thread, i8* %7, i32 %12, i64 %18), !dbg !738
  %20 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !739
  %21 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %20, i32 0, i32 58, !dbg !740
  %22 = load %struct._sock*, %struct._sock** %21, align 8, !dbg !740
  %23 = getelementptr inbounds %struct._sock, %struct._sock* %22, i32 0, i32 8, !dbg !741
  store %struct._thread* %19, %struct._thread** %23, align 8, !dbg !742
  ret void, !dbg !743
}

declare %struct._thread* @thread_add_read(%struct._thread_master*, i32 (%struct._thread*)*, i8*, i32, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @vrrp_read_dispatcher_thread(%struct._thread*) #0 !dbg !744 {
  %2 = alloca %struct._thread*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct._sock*, align 8
  %5 = alloca i32, align 4
  store %struct._thread* %0, %struct._thread** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %2, metadata !745, metadata !572), !dbg !746
  call void @llvm.dbg.declare(metadata i64* %3, metadata !747, metadata !572), !dbg !748
  call void @llvm.dbg.declare(metadata %struct._sock** %4, metadata !749, metadata !572), !dbg !750
  call void @llvm.dbg.declare(metadata i32* %5, metadata !751, metadata !572), !dbg !752
  %6 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !753
  %7 = getelementptr inbounds %struct._thread, %struct._thread* %6, i32 0, i32 4, !dbg !754
  %8 = load i8*, i8** %7, align 8, !dbg !754
  %9 = bitcast i8* %8 to %struct._sock*, !dbg !755
  store %struct._sock* %9, %struct._sock** %4, align 8, !dbg !756
  %10 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !757
  %11 = getelementptr inbounds %struct._thread, %struct._thread* %10, i32 0, i32 1, !dbg !759
  %12 = load i32, i32* %11, align 8, !dbg !759
  %13 = icmp eq i32 %12, 9, !dbg !760
  br i1 %13, label %19, label %14, !dbg !761

; <label>:14:                                     ; preds = %1
  %15 = load %struct._sock*, %struct._sock** %4, align 8, !dbg !762
  %16 = getelementptr inbounds %struct._sock, %struct._sock* %15, i32 0, i32 5, !dbg !764
  %17 = load i32, i32* %16, align 4, !dbg !764
  %18 = icmp eq i32 %17, -1, !dbg !765
  br i1 %18, label %19, label %24, !dbg !766

; <label>:19:                                     ; preds = %14, %1
  %20 = load %struct._sock*, %struct._sock** %4, align 8, !dbg !767
  %21 = getelementptr inbounds %struct._sock, %struct._sock* %20, i32 0, i32 5, !dbg !768
  %22 = load i32, i32* %21, align 4, !dbg !768
  %23 = call i32 @vrrp_dispatcher_read_timeout(i32 %22), !dbg !769
  store i32 %23, i32* %5, align 4, !dbg !770
  br label %27, !dbg !771

; <label>:24:                                     ; preds = %14
  %25 = load %struct._sock*, %struct._sock** %4, align 8, !dbg !772
  %26 = call i32 @vrrp_dispatcher_read(%struct._sock* %25), !dbg !773
  store i32 %26, i32* %5, align 4, !dbg !774
  br label %27

; <label>:27:                                     ; preds = %24, %19
  %28 = load i32, i32* %5, align 4, !dbg !775
  %29 = call i64 @vrrp_timer_fd(i32 %28), !dbg !776
  store i64 %29, i64* %3, align 8, !dbg !777
  %30 = load i32, i32* %5, align 4, !dbg !778
  %31 = icmp ne i32 %30, -1, !dbg !780
  br i1 %31, label %32, label %43, !dbg !781

; <label>:32:                                     ; preds = %27
  %33 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !782
  %34 = getelementptr inbounds %struct._thread, %struct._thread* %33, i32 0, i32 2, !dbg !783
  %35 = load %struct._thread_master*, %struct._thread_master** %34, align 8, !dbg !783
  %36 = load %struct._sock*, %struct._sock** %4, align 8, !dbg !784
  %37 = bitcast %struct._sock* %36 to i8*, !dbg !784
  %38 = load i32, i32* %5, align 4, !dbg !785
  %39 = load i64, i64* %3, align 8, !dbg !786
  %40 = call %struct._thread* @thread_add_read(%struct._thread_master* %35, i32 (%struct._thread*)* @vrrp_read_dispatcher_thread, i8* %37, i32 %38, i64 %39), !dbg !787
  %41 = load %struct._sock*, %struct._sock** %4, align 8, !dbg !788
  %42 = getelementptr inbounds %struct._sock, %struct._sock* %41, i32 0, i32 8, !dbg !789
  store %struct._thread* %40, %struct._thread** %42, align 8, !dbg !790
  br label %43, !dbg !788

; <label>:43:                                     ; preds = %32, %27
  ret i32 0, !dbg !791
}

; Function Attrs: nounwind uwtable
define i32 @vrrp_dispatcher_init(%struct._thread*) #0 !dbg !792 {
  %2 = alloca %struct._thread*, align 8
  store %struct._thread* %0, %struct._thread** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %2, metadata !793, metadata !572), !dbg !794
  %3 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !795
  %4 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %3, i32 0, i32 8, !dbg !796
  %5 = load %struct._list*, %struct._list** %4, align 8, !dbg !796
  call void @vrrp_create_sockpool(%struct._list* %5), !dbg !797
  %6 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !798
  %7 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %6, i32 0, i32 8, !dbg !799
  %8 = load %struct._list*, %struct._list** %7, align 8, !dbg !799
  call void @vrrp_open_sockpool(%struct._list* %8), !dbg !800
  %9 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !801
  %10 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %9, i32 0, i32 8, !dbg !802
  %11 = load %struct._list*, %struct._list** %10, align 8, !dbg !802
  call void @vrrp_set_fds(%struct._list* %11), !dbg !803
  %12 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !804
  %13 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %12, i32 0, i32 8, !dbg !805
  %14 = load %struct._list*, %struct._list** %13, align 8, !dbg !805
  call void @vrrp_register_workers(%struct._list* %14), !dbg !806
  %15 = call zeroext i1 @__test_bit(i32 7, i64* @debug), !dbg !807
  br i1 %15, label %16, label %20, !dbg !809

; <label>:16:                                     ; preds = %1
  %17 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !810
  %18 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %17, i32 0, i32 8, !dbg !811
  %19 = load %struct._list*, %struct._list** %18, align 8, !dbg !811
  call void @dump_list(%struct._IO_FILE* null, %struct._list* %19), !dbg !812
  br label %20, !dbg !812

; <label>:20:                                     ; preds = %16, %1
  store i8 1, i8* @vrrp_initialised, align 1, !dbg !813
  ret i32 1, !dbg !814
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_create_sockpool(%struct._list*) #0 !dbg !815 {
  %2 = alloca %struct._list*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca %struct._element*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct._sock*, align 8
  store %struct._list* %0, %struct._list** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._list** %2, metadata !818, metadata !572), !dbg !819
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !820, metadata !572), !dbg !821
  call void @llvm.dbg.declare(metadata %struct._element** %4, metadata !822, metadata !572), !dbg !824
  call void @llvm.dbg.declare(metadata i32* %5, metadata !825, metadata !572), !dbg !826
  call void @llvm.dbg.declare(metadata i32* %6, metadata !827, metadata !572), !dbg !828
  call void @llvm.dbg.declare(metadata i8* %7, metadata !829, metadata !572), !dbg !830
  call void @llvm.dbg.declare(metadata %struct._sock** %8, metadata !831, metadata !572), !dbg !832
  %9 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !833
  %10 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %9, i32 0, i32 5, !dbg !835
  %11 = load %struct._list*, %struct._list** %10, align 8, !dbg !835
  %12 = icmp ne %struct._list* %11, null, !dbg !836
  br i1 %12, label %13, label %27, !dbg !836

; <label>:13:                                     ; preds = %1
  %14 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !837
  %15 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %14, i32 0, i32 5, !dbg !839
  %16 = load %struct._list*, %struct._list** %15, align 8, !dbg !839
  %17 = icmp ne %struct._list* %16, null, !dbg !840
  br i1 %17, label %19, label %18, !dbg !841

; <label>:18:                                     ; preds = %13
  br label %25, !dbg !842

; <label>:19:                                     ; preds = %13
  %20 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !844
  %21 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %20, i32 0, i32 5, !dbg !846
  %22 = load %struct._list*, %struct._list** %21, align 8, !dbg !846
  %23 = getelementptr inbounds %struct._list, %struct._list* %22, i32 0, i32 0, !dbg !847
  %24 = load %struct._element*, %struct._element** %23, align 8, !dbg !847
  br label %25, !dbg !848

; <label>:25:                                     ; preds = %19, %18
  %26 = phi %struct._element* [ null, %18 ], [ %24, %19 ], !dbg !849
  br label %28, !dbg !851

; <label>:27:                                     ; preds = %1
  br label %28, !dbg !852

; <label>:28:                                     ; preds = %27, %25
  %29 = phi %struct._element* [ %26, %25 ], [ null, %27 ], !dbg !854
  store %struct._element* %29, %struct._element** %4, align 8, !dbg !856
  br label %30, !dbg !857

; <label>:30:                                     ; preds = %187, %28
  %31 = load %struct._element*, %struct._element** %4, align 8, !dbg !858
  %32 = icmp ne %struct._element* %31, null, !dbg !861
  br i1 %32, label %33, label %38, !dbg !862

; <label>:33:                                     ; preds = %30
  %34 = load %struct._element*, %struct._element** %4, align 8, !dbg !863
  %35 = getelementptr inbounds %struct._element, %struct._element* %34, i32 0, i32 2, !dbg !865
  %36 = load i8*, i8** %35, align 8, !dbg !865
  %37 = bitcast i8* %36 to %struct._vrrp_t*, !dbg !866
  store %struct._vrrp_t* %37, %struct._vrrp_t** %3, align 8, !dbg !867
  br label %38

; <label>:38:                                     ; preds = %33, %30
  %39 = phi i1 [ false, %30 ], [ true, %33 ]
  br i1 %39, label %40, label %191, !dbg !868

; <label>:40:                                     ; preds = %38
  %41 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !870
  %42 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %41, i32 0, i32 9, !dbg !872
  %43 = call zeroext i1 @__test_bit(i32 2, i64* %42), !dbg !873
  br i1 %43, label %44, label %52, !dbg !874

; <label>:44:                                     ; preds = %40
  %45 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !875
  %46 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %45, i32 0, i32 4, !dbg !877
  %47 = load %struct._interface*, %struct._interface** %46, align 8, !dbg !877
  %48 = getelementptr inbounds %struct._interface, %struct._interface* %47, i32 0, i32 14, !dbg !878
  %49 = load %struct._interface*, %struct._interface** %48, align 8, !dbg !878
  %50 = getelementptr inbounds %struct._interface, %struct._interface* %49, i32 0, i32 1, !dbg !879
  %51 = load i32, i32* %50, align 8, !dbg !879
  br label %58, !dbg !880

; <label>:52:                                     ; preds = %40
  %53 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !881
  %54 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %53, i32 0, i32 4, !dbg !882
  %55 = load %struct._interface*, %struct._interface** %54, align 8, !dbg !882
  %56 = getelementptr inbounds %struct._interface, %struct._interface* %55, i32 0, i32 1, !dbg !883
  %57 = load i32, i32* %56, align 8, !dbg !883
  br label %58, !dbg !884

; <label>:58:                                     ; preds = %52, %44
  %59 = phi i32 [ %51, %44 ], [ %57, %52 ], !dbg !886
  store i32 %59, i32* %5, align 4, !dbg !888
  %60 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !889
  %61 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %60, i32 0, i32 20, !dbg !890
  %62 = load %struct._list*, %struct._list** %61, align 8, !dbg !890
  %63 = icmp eq %struct._list* %62, null, !dbg !891
  br i1 %63, label %80, label %64, !dbg !892

; <label>:64:                                     ; preds = %58
  %65 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !893
  %66 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %65, i32 0, i32 20, !dbg !894
  %67 = load %struct._list*, %struct._list** %66, align 8, !dbg !894
  %68 = getelementptr inbounds %struct._list, %struct._list* %67, i32 0, i32 0, !dbg !895
  %69 = load %struct._element*, %struct._element** %68, align 8, !dbg !895
  %70 = icmp eq %struct._element* %69, null, !dbg !896
  br i1 %70, label %71, label %78, !dbg !897

; <label>:71:                                     ; preds = %64
  %72 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !898
  %73 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %72, i32 0, i32 20, !dbg !899
  %74 = load %struct._list*, %struct._list** %73, align 8, !dbg !899
  %75 = getelementptr inbounds %struct._list, %struct._list* %74, i32 0, i32 1, !dbg !900
  %76 = load %struct._element*, %struct._element** %75, align 8, !dbg !900
  %77 = icmp eq %struct._element* %76, null, !dbg !901
  br label %78

; <label>:78:                                     ; preds = %71, %64
  %79 = phi i1 [ false, %64 ], [ %77, %71 ]
  br label %80, !dbg !902

; <label>:80:                                     ; preds = %78, %58
  %81 = phi i1 [ true, %58 ], [ %79, %78 ]
  %82 = xor i1 %81, true, !dbg !903
  %83 = zext i1 %82 to i8, !dbg !905
  store i8 %83, i8* %7, align 1, !dbg !905
  %84 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !906
  %85 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %84, i32 0, i32 75, !dbg !908
  %86 = load i8, i8* %85, align 4, !dbg !908
  %87 = zext i8 %86 to i32, !dbg !906
  %88 = icmp eq i32 %87, 2, !dbg !909
  br i1 %88, label %89, label %90, !dbg !910

; <label>:89:                                     ; preds = %80
  store i32 51, i32* %6, align 4, !dbg !911
  br label %91, !dbg !912

; <label>:90:                                     ; preds = %80
  store i32 112, i32* %6, align 4, !dbg !913
  br label %91

; <label>:91:                                     ; preds = %90, %89
  %92 = load %struct._list*, %struct._list** %2, align 8, !dbg !914
  %93 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !916
  %94 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %93, i32 0, i32 0, !dbg !917
  %95 = load i16, i16* %94, align 8, !dbg !917
  %96 = load i32, i32* %6, align 4, !dbg !918
  %97 = load i32, i32* %5, align 4, !dbg !919
  %98 = load i8, i8* %7, align 1, !dbg !920
  %99 = trunc i8 %98 to i1, !dbg !920
  %100 = call %struct._sock* @already_exist_sock(%struct._list* %92, i16 zeroext %95, i32 %96, i32 %97, i1 zeroext %99), !dbg !921
  store %struct._sock* %100, %struct._sock** %8, align 8, !dbg !922
  %101 = icmp ne %struct._sock* %100, null, !dbg !922
  br i1 %101, label %112, label %102, !dbg !923

; <label>:102:                                    ; preds = %91
  %103 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !924
  %104 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %103, i32 0, i32 0, !dbg !925
  %105 = load i16, i16* %104, align 8, !dbg !925
  %106 = load %struct._list*, %struct._list** %2, align 8, !dbg !926
  %107 = load i32, i32* %6, align 4, !dbg !927
  %108 = load i32, i32* %5, align 4, !dbg !928
  %109 = load i8, i8* %7, align 1, !dbg !929
  %110 = trunc i8 %109 to i1, !dbg !929
  %111 = call %struct._sock* @alloc_sock(i16 zeroext %105, %struct._list* %106, i32 %107, i32 %108, i1 zeroext %110), !dbg !930
  store %struct._sock* %111, %struct._sock** %8, align 8, !dbg !931
  br label %112, !dbg !932

; <label>:112:                                    ; preds = %102, %91
  %113 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !933
  %114 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %113, i32 0, i32 50, !dbg !935
  %115 = load i64, i64* %114, align 8, !dbg !935
  %116 = icmp ne i64 %115, 0, !dbg !933
  br i1 %116, label %117, label %127, !dbg !936

; <label>:117:                                    ; preds = %112
  %118 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !937
  %119 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %118, i32 0, i32 50, !dbg !938
  %120 = load i64, i64* %119, align 8, !dbg !938
  %121 = load %struct._sock*, %struct._sock** %8, align 8, !dbg !939
  %122 = getelementptr inbounds %struct._sock, %struct._sock* %121, i32 0, i32 7, !dbg !940
  %123 = load i32, i32* %122, align 4, !dbg !941
  %124 = sext i32 %123 to i64, !dbg !941
  %125 = add i64 %124, %120, !dbg !941
  %126 = trunc i64 %125 to i32, !dbg !941
  store i32 %126, i32* %122, align 4, !dbg !941
  br label %186, !dbg !939

; <label>:127:                                    ; preds = %112
  %128 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !942
  %129 = getelementptr inbounds %struct._data, %struct._data* %128, i32 0, i32 67, !dbg !944
  %130 = load i32, i32* %129, align 8, !dbg !944
  %131 = and i32 %130, 4, !dbg !945
  %132 = icmp ne i32 %131, 0, !dbg !945
  br i1 %132, label %133, label %143, !dbg !946

; <label>:133:                                    ; preds = %127
  %134 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !947
  %135 = getelementptr inbounds %struct._data, %struct._data* %134, i32 0, i32 68, !dbg !948
  %136 = load i64, i64* %135, align 8, !dbg !948
  %137 = load %struct._sock*, %struct._sock** %8, align 8, !dbg !949
  %138 = getelementptr inbounds %struct._sock, %struct._sock* %137, i32 0, i32 7, !dbg !950
  %139 = load i32, i32* %138, align 4, !dbg !951
  %140 = sext i32 %139 to i64, !dbg !951
  %141 = add i64 %140, %136, !dbg !951
  %142 = trunc i64 %141 to i32, !dbg !951
  store i32 %142, i32* %138, align 4, !dbg !951
  br label %185, !dbg !949

; <label>:143:                                    ; preds = %127
  %144 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !952
  %145 = getelementptr inbounds %struct._data, %struct._data* %144, i32 0, i32 67, !dbg !954
  %146 = load i32, i32* %145, align 8, !dbg !954
  %147 = and i32 %146, 2, !dbg !955
  %148 = icmp ne i32 %147, 0, !dbg !955
  br i1 %148, label %149, label %163, !dbg !956

; <label>:149:                                    ; preds = %143
  %150 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !957
  %151 = getelementptr inbounds %struct._data, %struct._data* %150, i32 0, i32 69, !dbg !958
  %152 = load i32, i32* %151, align 8, !dbg !958
  %153 = sext i32 %152 to i64, !dbg !957
  %154 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !959
  %155 = call i64 @vrrp_adv_len(%struct._vrrp_t* %154), !dbg !960
  %156 = mul i64 %153, %155, !dbg !961
  %157 = load %struct._sock*, %struct._sock** %8, align 8, !dbg !962
  %158 = getelementptr inbounds %struct._sock, %struct._sock* %157, i32 0, i32 7, !dbg !963
  %159 = load i32, i32* %158, align 4, !dbg !964
  %160 = sext i32 %159 to i64, !dbg !964
  %161 = add i64 %160, %156, !dbg !964
  %162 = trunc i64 %161 to i32, !dbg !964
  store i32 %162, i32* %158, align 4, !dbg !964
  br label %184, !dbg !962

; <label>:163:                                    ; preds = %143
  %164 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !965
  %165 = getelementptr inbounds %struct._data, %struct._data* %164, i32 0, i32 67, !dbg !967
  %166 = load i32, i32* %165, align 8, !dbg !967
  %167 = and i32 %166, 1, !dbg !968
  %168 = icmp ne i32 %167, 0, !dbg !968
  br i1 %168, label %169, label %183, !dbg !969

; <label>:169:                                    ; preds = %163
  %170 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !970
  %171 = getelementptr inbounds %struct._data, %struct._data* %170, i32 0, i32 69, !dbg !971
  %172 = load i32, i32* %171, align 8, !dbg !971
  %173 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !972
  %174 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %173, i32 0, i32 4, !dbg !973
  %175 = load %struct._interface*, %struct._interface** %174, align 8, !dbg !973
  %176 = getelementptr inbounds %struct._interface, %struct._interface* %175, i32 0, i32 6, !dbg !974
  %177 = load i32, i32* %176, align 8, !dbg !974
  %178 = mul i32 %172, %177, !dbg !975
  %179 = load %struct._sock*, %struct._sock** %8, align 8, !dbg !976
  %180 = getelementptr inbounds %struct._sock, %struct._sock* %179, i32 0, i32 7, !dbg !977
  %181 = load i32, i32* %180, align 4, !dbg !978
  %182 = add i32 %181, %178, !dbg !978
  store i32 %182, i32* %180, align 4, !dbg !978
  br label %183, !dbg !976

; <label>:183:                                    ; preds = %169, %163
  br label %184

; <label>:184:                                    ; preds = %183, %149
  br label %185

; <label>:185:                                    ; preds = %184, %133
  br label %186

; <label>:186:                                    ; preds = %185, %117
  br label %187, !dbg !979

; <label>:187:                                    ; preds = %186
  %188 = load %struct._element*, %struct._element** %4, align 8, !dbg !980
  %189 = getelementptr inbounds %struct._element, %struct._element* %188, i32 0, i32 0, !dbg !982
  %190 = load %struct._element*, %struct._element** %189, align 8, !dbg !982
  store %struct._element* %190, %struct._element** %4, align 8, !dbg !983
  br label %30, !dbg !984, !llvm.loop !985

; <label>:191:                                    ; preds = %38
  ret void, !dbg !987
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_open_sockpool(%struct._list*) #0 !dbg !988 {
  %2 = alloca %struct._list*, align 8
  %3 = alloca %struct._sock*, align 8
  %4 = alloca %struct._element*, align 8
  %5 = alloca %struct._interface*, align 8
  store %struct._list* %0, %struct._list** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._list** %2, metadata !989, metadata !572), !dbg !990
  call void @llvm.dbg.declare(metadata %struct._sock** %3, metadata !991, metadata !572), !dbg !992
  call void @llvm.dbg.declare(metadata %struct._element** %4, metadata !993, metadata !572), !dbg !994
  call void @llvm.dbg.declare(metadata %struct._interface** %5, metadata !995, metadata !572), !dbg !996
  %6 = load %struct._list*, %struct._list** %2, align 8, !dbg !997
  %7 = icmp ne %struct._list* %6, null, !dbg !999
  br i1 %7, label %8, label %18, !dbg !999

; <label>:8:                                      ; preds = %1
  %9 = load %struct._list*, %struct._list** %2, align 8, !dbg !1000
  %10 = icmp ne %struct._list* %9, null, !dbg !1002
  br i1 %10, label %12, label %11, !dbg !1003

; <label>:11:                                     ; preds = %8
  br label %16, !dbg !1004

; <label>:12:                                     ; preds = %8
  %13 = load %struct._list*, %struct._list** %2, align 8, !dbg !1006
  %14 = getelementptr inbounds %struct._list, %struct._list* %13, i32 0, i32 0, !dbg !1008
  %15 = load %struct._element*, %struct._element** %14, align 8, !dbg !1008
  br label %16, !dbg !1009

; <label>:16:                                     ; preds = %12, %11
  %17 = phi %struct._element* [ null, %11 ], [ %15, %12 ], !dbg !1010
  br label %19, !dbg !1012

; <label>:18:                                     ; preds = %1
  br label %19, !dbg !1013

; <label>:19:                                     ; preds = %18, %16
  %20 = phi %struct._element* [ %17, %16 ], [ null, %18 ], !dbg !1015
  store %struct._element* %20, %struct._element** %4, align 8, !dbg !1017
  br label %21, !dbg !1018

; <label>:21:                                     ; preds = %86, %19
  %22 = load %struct._element*, %struct._element** %4, align 8, !dbg !1019
  %23 = icmp ne %struct._element* %22, null, !dbg !1022
  br i1 %23, label %24, label %29, !dbg !1023

; <label>:24:                                     ; preds = %21
  %25 = load %struct._element*, %struct._element** %4, align 8, !dbg !1024
  %26 = getelementptr inbounds %struct._element, %struct._element* %25, i32 0, i32 2, !dbg !1026
  %27 = load i8*, i8** %26, align 8, !dbg !1026
  %28 = bitcast i8* %27 to %struct._sock*, !dbg !1027
  store %struct._sock* %28, %struct._sock** %3, align 8, !dbg !1028
  br label %29

; <label>:29:                                     ; preds = %24, %21
  %30 = phi i1 [ false, %21 ], [ true, %24 ]
  br i1 %30, label %31, label %90, !dbg !1029

; <label>:31:                                     ; preds = %29
  %32 = load %struct._sock*, %struct._sock** %3, align 8, !dbg !1031
  %33 = getelementptr inbounds %struct._sock, %struct._sock* %32, i32 0, i32 3, !dbg !1034
  %34 = load i32, i32* %33, align 4, !dbg !1034
  %35 = icmp ne i32 %34, 0, !dbg !1031
  br i1 %35, label %41, label %36, !dbg !1035

; <label>:36:                                     ; preds = %31
  %37 = load %struct._sock*, %struct._sock** %3, align 8, !dbg !1036
  %38 = getelementptr inbounds %struct._sock, %struct._sock* %37, i32 0, i32 6, !dbg !1038
  store i32 -1, i32* %38, align 8, !dbg !1039
  %39 = load %struct._sock*, %struct._sock** %3, align 8, !dbg !1040
  %40 = getelementptr inbounds %struct._sock, %struct._sock* %39, i32 0, i32 5, !dbg !1041
  store i32 -1, i32* %40, align 4, !dbg !1042
  br label %86, !dbg !1043

; <label>:41:                                     ; preds = %31
  %42 = load %struct._sock*, %struct._sock** %3, align 8, !dbg !1044
  %43 = getelementptr inbounds %struct._sock, %struct._sock* %42, i32 0, i32 3, !dbg !1045
  %44 = load i32, i32* %43, align 4, !dbg !1045
  %45 = call %struct._interface* @if_get_by_ifindex(i32 %44), !dbg !1046
  store %struct._interface* %45, %struct._interface** %5, align 8, !dbg !1047
  %46 = load %struct._sock*, %struct._sock** %3, align 8, !dbg !1048
  %47 = getelementptr inbounds %struct._sock, %struct._sock* %46, i32 0, i32 0, !dbg !1049
  %48 = load i16, i16* %47, align 8, !dbg !1049
  %49 = load %struct._sock*, %struct._sock** %3, align 8, !dbg !1050
  %50 = getelementptr inbounds %struct._sock, %struct._sock* %49, i32 0, i32 2, !dbg !1051
  %51 = load i32, i32* %50, align 8, !dbg !1051
  %52 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !1052
  %53 = load %struct._sock*, %struct._sock** %3, align 8, !dbg !1053
  %54 = getelementptr inbounds %struct._sock, %struct._sock* %53, i32 0, i32 4, !dbg !1054
  %55 = load i8, i8* %54, align 8, !dbg !1054
  %56 = trunc i8 %55 to i1, !dbg !1054
  %57 = load %struct._sock*, %struct._sock** %3, align 8, !dbg !1055
  %58 = getelementptr inbounds %struct._sock, %struct._sock* %57, i32 0, i32 7, !dbg !1056
  %59 = load i32, i32* %58, align 4, !dbg !1056
  %60 = call i32 @open_vrrp_read_socket(i16 zeroext %48, i32 %51, %struct._interface* %52, i1 zeroext %56, i32 %59), !dbg !1057
  %61 = load %struct._sock*, %struct._sock** %3, align 8, !dbg !1058
  %62 = getelementptr inbounds %struct._sock, %struct._sock* %61, i32 0, i32 5, !dbg !1059
  store i32 %60, i32* %62, align 4, !dbg !1060
  %63 = load %struct._sock*, %struct._sock** %3, align 8, !dbg !1061
  %64 = getelementptr inbounds %struct._sock, %struct._sock* %63, i32 0, i32 5, !dbg !1063
  %65 = load i32, i32* %64, align 4, !dbg !1063
  %66 = icmp eq i32 %65, -1, !dbg !1064
  br i1 %66, label %67, label %70, !dbg !1065

; <label>:67:                                     ; preds = %41
  %68 = load %struct._sock*, %struct._sock** %3, align 8, !dbg !1066
  %69 = getelementptr inbounds %struct._sock, %struct._sock* %68, i32 0, i32 6, !dbg !1067
  store i32 -1, i32* %69, align 8, !dbg !1068
  br label %85, !dbg !1066

; <label>:70:                                     ; preds = %41
  %71 = load %struct._sock*, %struct._sock** %3, align 8, !dbg !1069
  %72 = getelementptr inbounds %struct._sock, %struct._sock* %71, i32 0, i32 0, !dbg !1070
  %73 = load i16, i16* %72, align 8, !dbg !1070
  %74 = load %struct._sock*, %struct._sock** %3, align 8, !dbg !1071
  %75 = getelementptr inbounds %struct._sock, %struct._sock* %74, i32 0, i32 2, !dbg !1072
  %76 = load i32, i32* %75, align 8, !dbg !1072
  %77 = load %struct._interface*, %struct._interface** %5, align 8, !dbg !1073
  %78 = load %struct._sock*, %struct._sock** %3, align 8, !dbg !1074
  %79 = getelementptr inbounds %struct._sock, %struct._sock* %78, i32 0, i32 4, !dbg !1075
  %80 = load i8, i8* %79, align 8, !dbg !1075
  %81 = trunc i8 %80 to i1, !dbg !1075
  %82 = call i32 @open_vrrp_send_socket(i16 zeroext %73, i32 %76, %struct._interface* %77, i1 zeroext %81), !dbg !1076
  %83 = load %struct._sock*, %struct._sock** %3, align 8, !dbg !1077
  %84 = getelementptr inbounds %struct._sock, %struct._sock* %83, i32 0, i32 6, !dbg !1078
  store i32 %82, i32* %84, align 8, !dbg !1079
  br label %85

; <label>:85:                                     ; preds = %70, %67
  br label %86, !dbg !1080

; <label>:86:                                     ; preds = %85, %36
  %87 = load %struct._element*, %struct._element** %4, align 8, !dbg !1081
  %88 = getelementptr inbounds %struct._element, %struct._element* %87, i32 0, i32 0, !dbg !1083
  %89 = load %struct._element*, %struct._element** %88, align 8, !dbg !1083
  store %struct._element* %89, %struct._element** %4, align 8, !dbg !1084
  br label %21, !dbg !1085, !llvm.loop !1086

; <label>:90:                                     ; preds = %29
  ret void, !dbg !1088
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_set_fds(%struct._list*) #0 !dbg !1089 {
  %2 = alloca %struct._list*, align 8
  %3 = alloca %struct._sock*, align 8
  %4 = alloca %struct._vrrp_t*, align 8
  %5 = alloca %struct._list*, align 8
  %6 = alloca %struct._element*, align 8
  %7 = alloca %struct._element*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store %struct._list* %0, %struct._list** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._list** %2, metadata !1090, metadata !572), !dbg !1091
  call void @llvm.dbg.declare(metadata %struct._sock** %3, metadata !1092, metadata !572), !dbg !1093
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %4, metadata !1094, metadata !572), !dbg !1095
  call void @llvm.dbg.declare(metadata %struct._list** %5, metadata !1096, metadata !572), !dbg !1097
  %11 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1098
  %12 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %11, i32 0, i32 5, !dbg !1099
  %13 = load %struct._list*, %struct._list** %12, align 8, !dbg !1099
  store %struct._list* %13, %struct._list** %5, align 8, !dbg !1097
  call void @llvm.dbg.declare(metadata %struct._element** %6, metadata !1100, metadata !572), !dbg !1101
  call void @llvm.dbg.declare(metadata %struct._element** %7, metadata !1102, metadata !572), !dbg !1103
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1104, metadata !572), !dbg !1105
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1106, metadata !572), !dbg !1107
  call void @llvm.dbg.declare(metadata i8* %10, metadata !1108, metadata !572), !dbg !1109
  %14 = load %struct._list*, %struct._list** %2, align 8, !dbg !1110
  %15 = icmp ne %struct._list* %14, null, !dbg !1112
  br i1 %15, label %17, label %16, !dbg !1113

; <label>:16:                                     ; preds = %1
  br label %21, !dbg !1114

; <label>:17:                                     ; preds = %1
  %18 = load %struct._list*, %struct._list** %2, align 8, !dbg !1116
  %19 = getelementptr inbounds %struct._list, %struct._list* %18, i32 0, i32 0, !dbg !1118
  %20 = load %struct._element*, %struct._element** %19, align 8, !dbg !1118
  br label %21, !dbg !1119

; <label>:21:                                     ; preds = %17, %16
  %22 = phi %struct._element* [ null, %16 ], [ %20, %17 ], !dbg !1120
  store %struct._element* %22, %struct._element** %6, align 8, !dbg !1122
  br label %23, !dbg !1123

; <label>:23:                                     ; preds = %142, %21
  %24 = load %struct._element*, %struct._element** %6, align 8, !dbg !1124
  %25 = icmp ne %struct._element* %24, null, !dbg !1127
  br i1 %25, label %26, label %146, !dbg !1127

; <label>:26:                                     ; preds = %23
  %27 = load %struct._element*, %struct._element** %6, align 8, !dbg !1128
  %28 = getelementptr inbounds %struct._element, %struct._element* %27, i32 0, i32 2, !dbg !1130
  %29 = load i8*, i8** %28, align 8, !dbg !1130
  %30 = bitcast i8* %29 to %struct._sock*, !dbg !1131
  store %struct._sock* %30, %struct._sock** %3, align 8, !dbg !1132
  %31 = load %struct._list*, %struct._list** %5, align 8, !dbg !1133
  %32 = icmp ne %struct._list* %31, null, !dbg !1135
  br i1 %32, label %34, label %33, !dbg !1136

; <label>:33:                                     ; preds = %26
  br label %38, !dbg !1137

; <label>:34:                                     ; preds = %26
  %35 = load %struct._list*, %struct._list** %5, align 8, !dbg !1139
  %36 = getelementptr inbounds %struct._list, %struct._list* %35, i32 0, i32 0, !dbg !1141
  %37 = load %struct._element*, %struct._element** %36, align 8, !dbg !1141
  br label %38, !dbg !1142

; <label>:38:                                     ; preds = %34, %33
  %39 = phi %struct._element* [ null, %33 ], [ %37, %34 ], !dbg !1143
  store %struct._element* %39, %struct._element** %7, align 8, !dbg !1145
  br label %40, !dbg !1146

; <label>:40:                                     ; preds = %137, %38
  %41 = load %struct._element*, %struct._element** %7, align 8, !dbg !1147
  %42 = icmp ne %struct._element* %41, null, !dbg !1150
  br i1 %42, label %43, label %141, !dbg !1150

; <label>:43:                                     ; preds = %40
  %44 = load %struct._element*, %struct._element** %7, align 8, !dbg !1151
  %45 = getelementptr inbounds %struct._element, %struct._element* %44, i32 0, i32 2, !dbg !1153
  %46 = load i8*, i8** %45, align 8, !dbg !1153
  %47 = bitcast i8* %46 to %struct._vrrp_t*, !dbg !1154
  store %struct._vrrp_t* %47, %struct._vrrp_t** %4, align 8, !dbg !1155
  %48 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !1156
  %49 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %48, i32 0, i32 9, !dbg !1157
  %50 = call zeroext i1 @__test_bit(i32 2, i64* %49), !dbg !1158
  br i1 %50, label %51, label %59, !dbg !1159

; <label>:51:                                     ; preds = %43
  %52 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !1160
  %53 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %52, i32 0, i32 4, !dbg !1162
  %54 = load %struct._interface*, %struct._interface** %53, align 8, !dbg !1162
  %55 = getelementptr inbounds %struct._interface, %struct._interface* %54, i32 0, i32 14, !dbg !1163
  %56 = load %struct._interface*, %struct._interface** %55, align 8, !dbg !1163
  %57 = getelementptr inbounds %struct._interface, %struct._interface* %56, i32 0, i32 1, !dbg !1164
  %58 = load i32, i32* %57, align 8, !dbg !1164
  br label %65, !dbg !1165

; <label>:59:                                     ; preds = %43
  %60 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !1166
  %61 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %60, i32 0, i32 4, !dbg !1167
  %62 = load %struct._interface*, %struct._interface** %61, align 8, !dbg !1167
  %63 = getelementptr inbounds %struct._interface, %struct._interface* %62, i32 0, i32 1, !dbg !1168
  %64 = load i32, i32* %63, align 8, !dbg !1168
  br label %65, !dbg !1169

; <label>:65:                                     ; preds = %59, %51
  %66 = phi i32 [ %58, %51 ], [ %64, %59 ], !dbg !1171
  store i32 %66, i32* %9, align 4, !dbg !1173
  %67 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !1174
  %68 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %67, i32 0, i32 20, !dbg !1175
  %69 = load %struct._list*, %struct._list** %68, align 8, !dbg !1175
  %70 = icmp eq %struct._list* %69, null, !dbg !1176
  br i1 %70, label %87, label %71, !dbg !1177

; <label>:71:                                     ; preds = %65
  %72 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !1178
  %73 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %72, i32 0, i32 20, !dbg !1179
  %74 = load %struct._list*, %struct._list** %73, align 8, !dbg !1179
  %75 = getelementptr inbounds %struct._list, %struct._list* %74, i32 0, i32 0, !dbg !1180
  %76 = load %struct._element*, %struct._element** %75, align 8, !dbg !1180
  %77 = icmp eq %struct._element* %76, null, !dbg !1181
  br i1 %77, label %78, label %85, !dbg !1182

; <label>:78:                                     ; preds = %71
  %79 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !1183
  %80 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %79, i32 0, i32 20, !dbg !1184
  %81 = load %struct._list*, %struct._list** %80, align 8, !dbg !1184
  %82 = getelementptr inbounds %struct._list, %struct._list* %81, i32 0, i32 1, !dbg !1185
  %83 = load %struct._element*, %struct._element** %82, align 8, !dbg !1185
  %84 = icmp eq %struct._element* %83, null, !dbg !1186
  br label %85

; <label>:85:                                     ; preds = %78, %71
  %86 = phi i1 [ false, %71 ], [ %84, %78 ]
  br label %87, !dbg !1187

; <label>:87:                                     ; preds = %85, %65
  %88 = phi i1 [ true, %65 ], [ %86, %85 ]
  %89 = xor i1 %88, true, !dbg !1188
  %90 = zext i1 %89 to i8, !dbg !1190
  store i8 %90, i8* %10, align 1, !dbg !1190
  %91 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !1191
  %92 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %91, i32 0, i32 75, !dbg !1193
  %93 = load i8, i8* %92, align 4, !dbg !1193
  %94 = zext i8 %93 to i32, !dbg !1191
  %95 = icmp eq i32 %94, 2, !dbg !1194
  br i1 %95, label %96, label %97, !dbg !1195

; <label>:96:                                     ; preds = %87
  store i32 51, i32* %8, align 4, !dbg !1196
  br label %98, !dbg !1197

; <label>:97:                                     ; preds = %87
  store i32 112, i32* %8, align 4, !dbg !1198
  br label %98

; <label>:98:                                     ; preds = %97, %96
  %99 = load %struct._sock*, %struct._sock** %3, align 8, !dbg !1199
  %100 = getelementptr inbounds %struct._sock, %struct._sock* %99, i32 0, i32 3, !dbg !1201
  %101 = load i32, i32* %100, align 4, !dbg !1201
  %102 = load i32, i32* %9, align 4, !dbg !1202
  %103 = icmp eq i32 %101, %102, !dbg !1203
  br i1 %103, label %104, label %136, !dbg !1204

; <label>:104:                                    ; preds = %98
  %105 = load %struct._sock*, %struct._sock** %3, align 8, !dbg !1205
  %106 = getelementptr inbounds %struct._sock, %struct._sock* %105, i32 0, i32 0, !dbg !1206
  %107 = load i16, i16* %106, align 8, !dbg !1206
  %108 = zext i16 %107 to i32, !dbg !1205
  %109 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !1207
  %110 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %109, i32 0, i32 0, !dbg !1208
  %111 = load i16, i16* %110, align 8, !dbg !1208
  %112 = zext i16 %111 to i32, !dbg !1207
  %113 = icmp eq i32 %108, %112, !dbg !1209
  br i1 %113, label %114, label %136, !dbg !1210

; <label>:114:                                    ; preds = %104
  %115 = load %struct._sock*, %struct._sock** %3, align 8, !dbg !1211
  %116 = getelementptr inbounds %struct._sock, %struct._sock* %115, i32 0, i32 2, !dbg !1212
  %117 = load i32, i32* %116, align 8, !dbg !1212
  %118 = load i32, i32* %8, align 4, !dbg !1213
  %119 = icmp eq i32 %117, %118, !dbg !1214
  br i1 %119, label %120, label %136, !dbg !1215

; <label>:120:                                    ; preds = %114
  %121 = load %struct._sock*, %struct._sock** %3, align 8, !dbg !1216
  %122 = getelementptr inbounds %struct._sock, %struct._sock* %121, i32 0, i32 4, !dbg !1217
  %123 = load i8, i8* %122, align 8, !dbg !1217
  %124 = trunc i8 %123 to i1, !dbg !1217
  %125 = zext i1 %124 to i32, !dbg !1216
  %126 = load i8, i8* %10, align 1, !dbg !1218
  %127 = trunc i8 %126 to i1, !dbg !1218
  %128 = zext i1 %127 to i32, !dbg !1218
  %129 = icmp eq i32 %125, %128, !dbg !1219
  br i1 %129, label %130, label %136, !dbg !1220

; <label>:130:                                    ; preds = %120
  %131 = load %struct._sock*, %struct._sock** %3, align 8, !dbg !1221
  %132 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !1223
  %133 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %132, i32 0, i32 58, !dbg !1224
  store %struct._sock* %131, %struct._sock** %133, align 8, !dbg !1225
  %134 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !1226
  call void @alloc_vrrp_fd_bucket(%struct._vrrp_t* %134), !dbg !1227
  %135 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !1228
  call void @alloc_vrrp_bucket(%struct._vrrp_t* %135), !dbg !1229
  br label %136, !dbg !1230

; <label>:136:                                    ; preds = %130, %120, %114, %104, %98
  br label %137, !dbg !1231

; <label>:137:                                    ; preds = %136
  %138 = load %struct._element*, %struct._element** %7, align 8, !dbg !1232
  %139 = getelementptr inbounds %struct._element, %struct._element* %138, i32 0, i32 0, !dbg !1234
  %140 = load %struct._element*, %struct._element** %139, align 8, !dbg !1234
  store %struct._element* %140, %struct._element** %7, align 8, !dbg !1235
  br label %40, !dbg !1236, !llvm.loop !1237

; <label>:141:                                    ; preds = %40
  br label %142, !dbg !1239

; <label>:142:                                    ; preds = %141
  %143 = load %struct._element*, %struct._element** %6, align 8, !dbg !1240
  %144 = getelementptr inbounds %struct._element, %struct._element* %143, i32 0, i32 0, !dbg !1242
  %145 = load %struct._element*, %struct._element** %144, align 8, !dbg !1242
  store %struct._element* %145, %struct._element** %6, align 8, !dbg !1243
  br label %23, !dbg !1244, !llvm.loop !1245

; <label>:146:                                    ; preds = %23
  ret void, !dbg !1247
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_register_workers(%struct._list*) #0 !dbg !1248 {
  %2 = alloca %struct._list*, align 8
  %3 = alloca %struct._sock*, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct._element*, align 8
  store %struct._list* %0, %struct._list** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._list** %2, metadata !1249, metadata !572), !dbg !1250
  call void @llvm.dbg.declare(metadata %struct._sock** %3, metadata !1251, metadata !572), !dbg !1252
  call void @llvm.dbg.declare(metadata %struct.timeval* %4, metadata !1253, metadata !572), !dbg !1254
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1255, metadata !572), !dbg !1256
  store i64 0, i64* %5, align 8, !dbg !1256
  call void @llvm.dbg.declare(metadata %struct._element** %6, metadata !1257, metadata !572), !dbg !1258
  %7 = bitcast %struct.timeval* %4 to i8*, !dbg !1259
  call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 16, i32 8, i1 false), !dbg !1259
  %8 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1260
  %9 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %8, i32 0, i32 5, !dbg !1261
  %10 = load %struct._list*, %struct._list** %9, align 8, !dbg !1261
  call void @vrrp_init_state(%struct._list* %10), !dbg !1262
  %11 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1263
  %12 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %11, i32 0, i32 5, !dbg !1264
  %13 = load %struct._list*, %struct._list** %12, align 8, !dbg !1264
  call void @vrrp_init_sands(%struct._list* %13), !dbg !1265
  %14 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1266
  %15 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %14, i32 0, i32 9, !dbg !1268
  %16 = load %struct._list*, %struct._list** %15, align 8, !dbg !1268
  %17 = icmp eq %struct._list* %16, null, !dbg !1269
  br i1 %17, label %36, label %18, !dbg !1270

; <label>:18:                                     ; preds = %1
  %19 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1271
  %20 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %19, i32 0, i32 9, !dbg !1273
  %21 = load %struct._list*, %struct._list** %20, align 8, !dbg !1273
  %22 = getelementptr inbounds %struct._list, %struct._list* %21, i32 0, i32 0, !dbg !1274
  %23 = load %struct._element*, %struct._element** %22, align 8, !dbg !1274
  %24 = icmp eq %struct._element* %23, null, !dbg !1275
  br i1 %24, label %25, label %32, !dbg !1276

; <label>:25:                                     ; preds = %18
  %26 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1277
  %27 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %26, i32 0, i32 9, !dbg !1279
  %28 = load %struct._list*, %struct._list** %27, align 8, !dbg !1279
  %29 = getelementptr inbounds %struct._list, %struct._list* %28, i32 0, i32 1, !dbg !1280
  %30 = load %struct._element*, %struct._element** %29, align 8, !dbg !1280
  %31 = icmp eq %struct._element* %30, null, !dbg !1281
  br i1 %31, label %36, label %32, !dbg !1282

; <label>:32:                                     ; preds = %25, %18
  %33 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1283
  %34 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %33, i32 0, i32 9, !dbg !1285
  %35 = load %struct._list*, %struct._list** %34, align 8, !dbg !1285
  call void @vrrp_init_script(%struct._list* %35), !dbg !1286
  br label %36, !dbg !1287

; <label>:36:                                     ; preds = %32, %25, %1
  %37 = load %struct._list*, %struct._list** %2, align 8, !dbg !1288
  %38 = icmp ne %struct._list* %37, null, !dbg !1290
  br i1 %38, label %40, label %39, !dbg !1291

; <label>:39:                                     ; preds = %36
  br label %44, !dbg !1292

; <label>:40:                                     ; preds = %36
  %41 = load %struct._list*, %struct._list** %2, align 8, !dbg !1294
  %42 = getelementptr inbounds %struct._list, %struct._list* %41, i32 0, i32 0, !dbg !1296
  %43 = load %struct._element*, %struct._element** %42, align 8, !dbg !1296
  br label %44, !dbg !1297

; <label>:44:                                     ; preds = %40, %39
  %45 = phi %struct._element* [ null, %39 ], [ %43, %40 ], !dbg !1298
  store %struct._element* %45, %struct._element** %6, align 8, !dbg !1300
  br label %46, !dbg !1301

; <label>:46:                                     ; preds = %74, %44
  %47 = load %struct._element*, %struct._element** %6, align 8, !dbg !1302
  %48 = icmp ne %struct._element* %47, null, !dbg !1305
  br i1 %48, label %49, label %78, !dbg !1305

; <label>:49:                                     ; preds = %46
  %50 = load %struct._element*, %struct._element** %6, align 8, !dbg !1306
  %51 = getelementptr inbounds %struct._element, %struct._element* %50, i32 0, i32 2, !dbg !1308
  %52 = load i8*, i8** %51, align 8, !dbg !1308
  %53 = bitcast i8* %52 to %struct._sock*, !dbg !1309
  store %struct._sock* %53, %struct._sock** %3, align 8, !dbg !1310
  %54 = load %struct._sock*, %struct._sock** %3, align 8, !dbg !1311
  %55 = getelementptr inbounds %struct._sock, %struct._sock* %54, i32 0, i32 5, !dbg !1312
  %56 = load i32, i32* %55, align 4, !dbg !1312
  %57 = call i64 @vrrp_timer_fd(i32 %56), !dbg !1313
  store i64 %57, i64* %5, align 8, !dbg !1314
  %58 = load %struct._sock*, %struct._sock** %3, align 8, !dbg !1315
  %59 = getelementptr inbounds %struct._sock, %struct._sock* %58, i32 0, i32 5, !dbg !1317
  %60 = load i32, i32* %59, align 4, !dbg !1317
  %61 = icmp ne i32 %60, -1, !dbg !1318
  br i1 %61, label %62, label %73, !dbg !1319

; <label>:62:                                     ; preds = %49
  %63 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !1320
  %64 = load %struct._sock*, %struct._sock** %3, align 8, !dbg !1321
  %65 = bitcast %struct._sock* %64 to i8*, !dbg !1321
  %66 = load %struct._sock*, %struct._sock** %3, align 8, !dbg !1322
  %67 = getelementptr inbounds %struct._sock, %struct._sock* %66, i32 0, i32 5, !dbg !1323
  %68 = load i32, i32* %67, align 4, !dbg !1323
  %69 = load i64, i64* %5, align 8, !dbg !1324
  %70 = call %struct._thread* @thread_add_read(%struct._thread_master* %63, i32 (%struct._thread*)* @vrrp_read_dispatcher_thread, i8* %65, i32 %68, i64 %69), !dbg !1325
  %71 = load %struct._sock*, %struct._sock** %3, align 8, !dbg !1326
  %72 = getelementptr inbounds %struct._sock, %struct._sock* %71, i32 0, i32 8, !dbg !1327
  store %struct._thread* %70, %struct._thread** %72, align 8, !dbg !1328
  br label %73, !dbg !1326

; <label>:73:                                     ; preds = %62, %49
  br label %74, !dbg !1329

; <label>:74:                                     ; preds = %73
  %75 = load %struct._element*, %struct._element** %6, align 8, !dbg !1330
  %76 = getelementptr inbounds %struct._element, %struct._element* %75, i32 0, i32 0, !dbg !1332
  %77 = load %struct._element*, %struct._element** %76, align 8, !dbg !1332
  store %struct._element* %77, %struct._element** %6, align 8, !dbg !1333
  br label %46, !dbg !1334, !llvm.loop !1335

; <label>:78:                                     ; preds = %46
  ret void, !dbg !1337
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @__test_bit(i32, i64*) #4 !dbg !1338 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1343, metadata !572), !dbg !1344
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !1345, metadata !572), !dbg !1346
  %5 = load i32, i32* %3, align 4, !dbg !1347
  %6 = zext i32 %5 to i64, !dbg !1348
  %7 = udiv i64 %6, 64, !dbg !1349
  %8 = load i64*, i64** %4, align 8, !dbg !1350
  %9 = getelementptr inbounds i64, i64* %8, i64 %7, !dbg !1350
  %10 = load i64, i64* %9, align 8, !dbg !1350
  %11 = load i32, i32* %3, align 4, !dbg !1351
  %12 = zext i32 %11 to i64, !dbg !1352
  %13 = urem i64 %12, 64, !dbg !1353
  %14 = shl i64 1, %13, !dbg !1354
  %15 = and i64 %10, %14, !dbg !1355
  %16 = icmp ne i64 %15, 0, !dbg !1356
  %17 = xor i1 %16, true, !dbg !1356
  %18 = xor i1 %17, true, !dbg !1357
  ret i1 %18, !dbg !1358
}

declare void @dump_list(%struct._IO_FILE*, %struct._list*) #2

; Function Attrs: nounwind uwtable
define void @vrrp_dispatcher_release(%struct._vrrp_data*) #0 !dbg !1359 {
  %2 = alloca %struct._vrrp_data*, align 8
  store %struct._vrrp_data* %0, %struct._vrrp_data** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_data** %2, metadata !1378, metadata !572), !dbg !1379
  %3 = load %struct._vrrp_data*, %struct._vrrp_data** %2, align 8, !dbg !1380
  %4 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %3, i32 0, i32 8, !dbg !1381
  call void @free_list(%struct._list** %4), !dbg !1382
  ret void, !dbg !1383
}

declare void @free_list(%struct._list**) #2

; Function Attrs: nounwind uwtable
define i32 @vrrp_gratuitous_arp_thread(%struct._thread*) #0 !dbg !1384 {
  %2 = alloca %struct._thread*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  store %struct._thread* %0, %struct._thread** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %2, metadata !1385, metadata !572), !dbg !1386
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !1387, metadata !572), !dbg !1388
  %4 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1389
  %5 = getelementptr inbounds %struct._thread, %struct._thread* %4, i32 0, i32 4, !dbg !1390
  %6 = load i8*, i8** %5, align 8, !dbg !1390
  %7 = bitcast i8* %6 to %struct._vrrp_t*, !dbg !1391
  store %struct._vrrp_t* %7, %struct._vrrp_t** %3, align 8, !dbg !1388
  %8 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1392
  %9 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1393
  %10 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %9, i32 0, i32 28, !dbg !1394
  %11 = load i32, i32* %10, align 8, !dbg !1394
  call void @vrrp_send_link_update(%struct._vrrp_t* %8, i32 %11), !dbg !1395
  ret i32 0, !dbg !1396
}

declare void @vrrp_send_link_update(%struct._vrrp_t*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @vrrp_lower_prio_gratuitous_arp_thread(%struct._thread*) #0 !dbg !1397 {
  %2 = alloca %struct._thread*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  store %struct._thread* %0, %struct._thread** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %2, metadata !1398, metadata !572), !dbg !1399
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !1400, metadata !572), !dbg !1401
  %4 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1402
  %5 = getelementptr inbounds %struct._thread, %struct._thread* %4, i32 0, i32 4, !dbg !1403
  %6 = load i8*, i8** %5, align 8, !dbg !1403
  %7 = bitcast i8* %6 to %struct._vrrp_t*, !dbg !1404
  store %struct._vrrp_t* %7, %struct._vrrp_t** %3, align 8, !dbg !1401
  %8 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1405
  %9 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1406
  %10 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %9, i32 0, i32 33, !dbg !1407
  %11 = load i32, i32* %10, align 8, !dbg !1407
  call void @vrrp_send_link_update(%struct._vrrp_t* %8, i32 %11), !dbg !1408
  ret i32 0, !dbg !1409
}

; Function Attrs: nounwind uwtable
define void @try_up_instance(%struct._vrrp_t*, i1 zeroext) #0 !dbg !1410 {
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct._vrrp_t* %0, %struct._vrrp_t** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !1413, metadata !572), !dbg !1414
  %6 = zext i1 %1 to i8
  store i8 %6, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1415, metadata !572), !dbg !1416
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1417, metadata !572), !dbg !1418
  %7 = load i8, i8* %4, align 1, !dbg !1419
  %8 = trunc i8 %7 to i1, !dbg !1419
  br i1 %8, label %9, label %16, !dbg !1421

; <label>:9:                                      ; preds = %2
  %10 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1422
  %11 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %10, i32 0, i32 14, !dbg !1425
  %12 = load i32, i32* %11, align 8, !dbg !1425
  %13 = icmp ne i32 %12, 0, !dbg !1422
  br i1 %13, label %14, label %15, !dbg !1426

; <label>:14:                                     ; preds = %9
  br label %206, !dbg !1427

; <label>:15:                                     ; preds = %9
  br label %29, !dbg !1428

; <label>:16:                                     ; preds = %2
  %17 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1429
  %18 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %17, i32 0, i32 14, !dbg !1431
  %19 = load i32, i32* %18, align 8, !dbg !1432
  %20 = add i32 %19, -1, !dbg !1432
  store i32 %20, i32* %18, align 8, !dbg !1432
  %21 = icmp ne i32 %20, 0, !dbg !1432
  br i1 %21, label %27, label %22, !dbg !1433

; <label>:22:                                     ; preds = %16
  %23 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1434
  %24 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %23, i32 0, i32 15, !dbg !1436
  %25 = load i32, i32* %24, align 4, !dbg !1436
  %26 = icmp ne i32 %25, 0, !dbg !1434
  br i1 %26, label %27, label %28, !dbg !1437

; <label>:27:                                     ; preds = %22, %16
  br label %206, !dbg !1438

; <label>:28:                                     ; preds = %22
  br label %29

; <label>:29:                                     ; preds = %28, %15
  %30 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1439
  %31 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %30, i32 0, i32 56, !dbg !1441
  %32 = load i32, i32* %31, align 4, !dbg !1441
  %33 = icmp eq i32 %32, 2, !dbg !1442
  br i1 %33, label %34, label %43, !dbg !1443

; <label>:34:                                     ; preds = %29
  %35 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1444
  %36 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %35, i32 0, i32 37, !dbg !1446
  %37 = load i8, i8* %36, align 1, !dbg !1446
  %38 = zext i8 %37 to i32, !dbg !1444
  %39 = icmp eq i32 %38, 255, !dbg !1447
  br i1 %39, label %40, label %43, !dbg !1448

; <label>:40:                                     ; preds = %34
  %41 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1449
  %42 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %41, i32 0, i32 56, !dbg !1451
  store i32 2, i32* %42, align 4, !dbg !1452
  br label %46, !dbg !1453

; <label>:43:                                     ; preds = %34, %29
  %44 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1454
  %45 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %44, i32 0, i32 56, !dbg !1456
  store i32 1, i32* %45, align 4, !dbg !1457
  br label %46

; <label>:46:                                     ; preds = %43, %40
  %47 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1458
  %48 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %47, i32 0, i32 47, !dbg !1459
  %49 = load i32, i32* %48, align 8, !dbg !1459
  %50 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1460
  %51 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %50, i32 0, i32 48, !dbg !1461
  store i32 %49, i32* %51, align 4, !dbg !1462
  %52 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1463
  %53 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %52, i32 0, i32 56, !dbg !1465
  %54 = load i32, i32* %53, align 4, !dbg !1465
  %55 = icmp eq i32 %54, 2, !dbg !1466
  br i1 %55, label %56, label %96, !dbg !1467

; <label>:56:                                     ; preds = %46
  %57 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1468
  %58 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %57, i32 0, i32 37, !dbg !1470
  %59 = load i8, i8* %58, align 1, !dbg !1470
  %60 = zext i8 %59 to i32, !dbg !1468
  %61 = icmp eq i32 %60, 255, !dbg !1471
  br i1 %61, label %62, label %96, !dbg !1472

; <label>:62:                                     ; preds = %56
  %63 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1473
  %64 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %63, i32 0, i32 48, !dbg !1474
  %65 = load i32, i32* %64, align 4, !dbg !1474
  %66 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1475
  %67 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %66, i32 0, i32 60, !dbg !1476
  %68 = load i32, i32* %67, align 4, !dbg !1476
  %69 = icmp eq i32 %68, 3, !dbg !1477
  br i1 %69, label %70, label %83, !dbg !1478

; <label>:70:                                     ; preds = %62
  %71 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1479
  %72 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %71, i32 0, i32 38, !dbg !1480
  %73 = load i8, i8* %72, align 2, !dbg !1480
  %74 = zext i8 %73 to i32, !dbg !1481
  %75 = sub i32 256, %74, !dbg !1482
  %76 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1483
  %77 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %76, i32 0, i32 48, !dbg !1484
  %78 = load i32, i32* %77, align 4, !dbg !1484
  %79 = udiv i32 %78, 10000, !dbg !1485
  %80 = mul i32 %75, %79, !dbg !1486
  %81 = mul i32 %80, 625, !dbg !1487
  %82 = udiv i32 %81, 16, !dbg !1488
  br label %91, !dbg !1489

; <label>:83:                                     ; preds = %62
  %84 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1490
  %85 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %84, i32 0, i32 38, !dbg !1492
  %86 = load i8, i8* %85, align 2, !dbg !1492
  %87 = zext i8 %86 to i32, !dbg !1493
  %88 = sub i32 256, %87, !dbg !1494
  %89 = mul i32 %88, 1000000, !dbg !1495
  %90 = udiv i32 %89, 256, !dbg !1496
  br label %91, !dbg !1497

; <label>:91:                                     ; preds = %83, %70
  %92 = phi i32 [ %82, %70 ], [ %90, %83 ], !dbg !1498
  %93 = add i32 %65, %92, !dbg !1500
  %94 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1501
  %95 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %94, i32 0, i32 70, !dbg !1502
  store i32 %93, i32* %95, align 8, !dbg !1503
  br label %131, !dbg !1501

; <label>:96:                                     ; preds = %56, %46
  %97 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1504
  %98 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %97, i32 0, i32 48, !dbg !1505
  %99 = load i32, i32* %98, align 4, !dbg !1505
  %100 = mul i32 3, %99, !dbg !1506
  %101 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1507
  %102 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %101, i32 0, i32 60, !dbg !1508
  %103 = load i32, i32* %102, align 4, !dbg !1508
  %104 = icmp eq i32 %103, 3, !dbg !1509
  br i1 %104, label %105, label %118, !dbg !1510

; <label>:105:                                    ; preds = %96
  %106 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1511
  %107 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %106, i32 0, i32 38, !dbg !1512
  %108 = load i8, i8* %107, align 2, !dbg !1512
  %109 = zext i8 %108 to i32, !dbg !1513
  %110 = sub i32 256, %109, !dbg !1514
  %111 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1515
  %112 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %111, i32 0, i32 48, !dbg !1516
  %113 = load i32, i32* %112, align 4, !dbg !1516
  %114 = udiv i32 %113, 10000, !dbg !1517
  %115 = mul i32 %110, %114, !dbg !1518
  %116 = mul i32 %115, 625, !dbg !1519
  %117 = udiv i32 %116, 16, !dbg !1520
  br label %126, !dbg !1521

; <label>:118:                                    ; preds = %96
  %119 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1522
  %120 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %119, i32 0, i32 38, !dbg !1523
  %121 = load i8, i8* %120, align 2, !dbg !1523
  %122 = zext i8 %121 to i32, !dbg !1524
  %123 = sub i32 256, %122, !dbg !1525
  %124 = mul i32 %123, 1000000, !dbg !1526
  %125 = udiv i32 %124, 256, !dbg !1527
  br label %126, !dbg !1528

; <label>:126:                                    ; preds = %118, %105
  %127 = phi i32 [ %117, %105 ], [ %125, %118 ], !dbg !1529
  %128 = add i32 %100, %127, !dbg !1530
  %129 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1531
  %130 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %129, i32 0, i32 70, !dbg !1532
  store i32 %128, i32* %130, align 8, !dbg !1533
  br label %131

; <label>:131:                                    ; preds = %126, %91
  %132 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1534
  %133 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %132, i32 0, i32 2, !dbg !1536
  %134 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %133, align 8, !dbg !1536
  %135 = icmp ne %struct._vrrp_sgroup* %134, null, !dbg !1534
  br i1 %135, label %136, label %166, !dbg !1537

; <label>:136:                                    ; preds = %131
  %137 = load i8, i8* %4, align 1, !dbg !1538
  %138 = trunc i8 %137 to i1, !dbg !1538
  br i1 %138, label %139, label %148, !dbg !1541

; <label>:139:                                    ; preds = %136
  %140 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1542
  %141 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %140, i32 0, i32 2, !dbg !1545
  %142 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %141, align 8, !dbg !1545
  %143 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %142, i32 0, i32 3, !dbg !1546
  %144 = load i32, i32* %143, align 8, !dbg !1546
  %145 = icmp ne i32 %144, 0, !dbg !1542
  br i1 %145, label %146, label %147, !dbg !1547

; <label>:146:                                    ; preds = %139
  br label %206, !dbg !1548

; <label>:147:                                    ; preds = %139
  br label %165, !dbg !1549

; <label>:148:                                    ; preds = %136
  %149 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1550
  %150 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %149, i32 0, i32 2, !dbg !1552
  %151 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %150, align 8, !dbg !1552
  %152 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %151, i32 0, i32 3, !dbg !1553
  %153 = load i32, i32* %152, align 8, !dbg !1554
  %154 = add i32 %153, -1, !dbg !1554
  store i32 %154, i32* %152, align 8, !dbg !1554
  %155 = icmp ne i32 %154, 0, !dbg !1554
  br i1 %155, label %163, label %156, !dbg !1555

; <label>:156:                                    ; preds = %148
  %157 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1556
  %158 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %157, i32 0, i32 2, !dbg !1558
  %159 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %158, align 8, !dbg !1558
  %160 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %159, i32 0, i32 4, !dbg !1559
  %161 = load i32, i32* %160, align 4, !dbg !1559
  %162 = icmp ne i32 %161, 0, !dbg !1556
  br i1 %162, label %163, label %164, !dbg !1560

; <label>:163:                                    ; preds = %156, %148
  br label %206, !dbg !1561

; <label>:164:                                    ; preds = %156
  br label %165

; <label>:165:                                    ; preds = %164, %147
  br label %166, !dbg !1562

; <label>:166:                                    ; preds = %165, %131
  %167 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1563
  %168 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %167, i32 0, i32 56, !dbg !1564
  %169 = load i32, i32* %168, align 4, !dbg !1564
  store i32 %169, i32* %5, align 4, !dbg !1565
  %170 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1566
  %171 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %170, i32 0, i32 2, !dbg !1568
  %172 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %171, align 8, !dbg !1568
  %173 = icmp ne %struct._vrrp_sgroup* %172, null, !dbg !1566
  br i1 %173, label %174, label %185, !dbg !1569

; <label>:174:                                    ; preds = %166
  %175 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1570
  %176 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %175, i32 0, i32 56, !dbg !1572
  %177 = load i32, i32* %176, align 4, !dbg !1572
  %178 = icmp eq i32 %177, 2, !dbg !1573
  br i1 %178, label %179, label %185, !dbg !1574

; <label>:179:                                    ; preds = %174
  %180 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1575
  %181 = call zeroext i1 @vrrp_sync_can_goto_master(%struct._vrrp_t* %180), !dbg !1577
  br i1 %181, label %185, label %182, !dbg !1578

; <label>:182:                                    ; preds = %179
  %183 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1579
  %184 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %183, i32 0, i32 56, !dbg !1580
  store i32 1, i32* %184, align 4, !dbg !1581
  br label %185, !dbg !1579

; <label>:185:                                    ; preds = %182, %179, %174, %166
  %186 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1582
  call void @vrrp_state_leave_fault(%struct._vrrp_t* %186), !dbg !1583
  %187 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1584
  call void @vrrp_init_instance_sands(%struct._vrrp_t* %187), !dbg !1585
  %188 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1586
  call void @vrrp_thread_requeue_read(%struct._vrrp_t* %188), !dbg !1587
  %189 = load i32, i32* %5, align 4, !dbg !1588
  %190 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1589
  %191 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %190, i32 0, i32 56, !dbg !1590
  store i32 %189, i32* %191, align 4, !dbg !1591
  %192 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1592
  %193 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %192, i32 0, i32 2, !dbg !1594
  %194 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %193, align 8, !dbg !1594
  %195 = icmp ne %struct._vrrp_sgroup* %194, null, !dbg !1592
  br i1 %195, label %196, label %206, !dbg !1595

; <label>:196:                                    ; preds = %185
  %197 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1596
  %198 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %197, i32 0, i32 55, !dbg !1599
  %199 = load i32, i32* %198, align 8, !dbg !1599
  %200 = icmp eq i32 %199, 2, !dbg !1600
  br i1 %200, label %201, label %203, !dbg !1601

; <label>:201:                                    ; preds = %196
  %202 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1602
  call void @vrrp_sync_master(%struct._vrrp_t* %202), !dbg !1603
  br label %205, !dbg !1603

; <label>:203:                                    ; preds = %196
  %204 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1604
  call void @vrrp_sync_backup(%struct._vrrp_t* %204), !dbg !1605
  br label %205

; <label>:205:                                    ; preds = %203, %201
  br label %206, !dbg !1606

; <label>:206:                                    ; preds = %14, %27, %146, %163, %205, %185
  ret void, !dbg !1607
}

declare zeroext i1 @vrrp_sync_can_goto_master(%struct._vrrp_t*) #2

declare void @vrrp_state_leave_fault(%struct._vrrp_t*) #2

declare void @vrrp_sync_master(%struct._vrrp_t*) #2

declare void @vrrp_sync_backup(%struct._vrrp_t*) #2

; Function Attrs: nounwind uwtable
define i32 @vrrp_arp_thread(%struct._thread*) #0 !dbg !49 {
  %2 = alloca %struct._thread*, align 8
  %3 = alloca %struct._element*, align 8
  %4 = alloca %struct._element*, align 8
  %5 = alloca %struct._list*, align 8
  %6 = alloca %struct._ip_address*, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = alloca %struct._interface*, align 8
  %9 = alloca %struct._vrrp_t*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.timeval, align 8
  %12 = alloca %struct.timeval, align 8
  store %struct._thread* %0, %struct._thread** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %2, metadata !1608, metadata !572), !dbg !1609
  call void @llvm.dbg.declare(metadata %struct._element** %3, metadata !1610, metadata !572), !dbg !1611
  call void @llvm.dbg.declare(metadata %struct._element** %4, metadata !1612, metadata !572), !dbg !1613
  call void @llvm.dbg.declare(metadata %struct._list** %5, metadata !1614, metadata !572), !dbg !1615
  call void @llvm.dbg.declare(metadata %struct._ip_address** %6, metadata !1616, metadata !572), !dbg !1666
  call void @llvm.dbg.declare(metadata %struct.timeval* %7, metadata !1667, metadata !572), !dbg !1668
  %13 = bitcast %struct.timeval* %7 to i8*, !dbg !1668
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* bitcast (%struct.timeval* @vrrp_arp_thread.next_time to i8*), i64 16, i32 8, i1 false), !dbg !1668
  call void @llvm.dbg.declare(metadata %struct._interface** %8, metadata !1669, metadata !572), !dbg !1670
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %9, metadata !1671, metadata !572), !dbg !1672
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1673, metadata !572), !dbg !1674
  %14 = call { i64, i64 } @set_time_now(), !dbg !1675
  %15 = bitcast %struct.timeval* %11 to { i64, i64 }*, !dbg !1675
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 0, !dbg !1675
  %17 = extractvalue { i64, i64 } %14, 0, !dbg !1675
  store i64 %17, i64* %16, align 8, !dbg !1675
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 1, !dbg !1675
  %19 = extractvalue { i64, i64 } %14, 1, !dbg !1675
  store i64 %19, i64* %18, align 8, !dbg !1675
  %20 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1676
  %21 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %20, i32 0, i32 5, !dbg !1678
  %22 = load %struct._list*, %struct._list** %21, align 8, !dbg !1678
  %23 = icmp ne %struct._list* %22, null, !dbg !1679
  br i1 %23, label %25, label %24, !dbg !1680

; <label>:24:                                     ; preds = %1
  br label %31, !dbg !1681

; <label>:25:                                     ; preds = %1
  %26 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1683
  %27 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %26, i32 0, i32 5, !dbg !1685
  %28 = load %struct._list*, %struct._list** %27, align 8, !dbg !1685
  %29 = getelementptr inbounds %struct._list, %struct._list* %28, i32 0, i32 0, !dbg !1686
  %30 = load %struct._element*, %struct._element** %29, align 8, !dbg !1686
  br label %31, !dbg !1687

; <label>:31:                                     ; preds = %25, %24
  %32 = phi %struct._element* [ null, %24 ], [ %30, %25 ], !dbg !1688
  store %struct._element* %32, %struct._element** %3, align 8, !dbg !1690
  br label %33, !dbg !1691

; <label>:33:                                     ; preds = %304, %31
  %34 = load %struct._element*, %struct._element** %3, align 8, !dbg !1692
  %35 = icmp ne %struct._element* %34, null, !dbg !1695
  br i1 %35, label %36, label %308, !dbg !1695

; <label>:36:                                     ; preds = %33
  %37 = load %struct._element*, %struct._element** %3, align 8, !dbg !1696
  %38 = getelementptr inbounds %struct._element, %struct._element* %37, i32 0, i32 2, !dbg !1698
  %39 = load i8*, i8** %38, align 8, !dbg !1698
  %40 = bitcast i8* %39 to %struct._vrrp_t*, !dbg !1699
  store %struct._vrrp_t* %40, %struct._vrrp_t** %9, align 8, !dbg !1700
  %41 = load %struct._vrrp_t*, %struct._vrrp_t** %9, align 8, !dbg !1701
  %42 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %41, i32 0, i32 31, !dbg !1703
  %43 = load i8, i8* %42, align 4, !dbg !1703
  %44 = trunc i8 %43 to i1, !dbg !1703
  br i1 %44, label %51, label %45, !dbg !1704

; <label>:45:                                     ; preds = %36
  %46 = load %struct._vrrp_t*, %struct._vrrp_t** %9, align 8, !dbg !1705
  %47 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %46, i32 0, i32 32, !dbg !1707
  %48 = load i8, i8* %47, align 1, !dbg !1707
  %49 = trunc i8 %48 to i1, !dbg !1707
  br i1 %49, label %51, label %50, !dbg !1708

; <label>:50:                                     ; preds = %45
  br label %304, !dbg !1709

; <label>:51:                                     ; preds = %45, %36
  %52 = load %struct._vrrp_t*, %struct._vrrp_t** %9, align 8, !dbg !1710
  %53 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %52, i32 0, i32 31, !dbg !1711
  store i8 0, i8* %53, align 4, !dbg !1712
  %54 = load %struct._vrrp_t*, %struct._vrrp_t** %9, align 8, !dbg !1713
  %55 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %54, i32 0, i32 32, !dbg !1714
  store i8 0, i8* %55, align 1, !dbg !1715
  %56 = load %struct._vrrp_t*, %struct._vrrp_t** %9, align 8, !dbg !1716
  %57 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %56, i32 0, i32 55, !dbg !1718
  %58 = load i32, i32* %57, align 8, !dbg !1718
  %59 = icmp ne i32 %58, 2, !dbg !1719
  br i1 %59, label %65, label %60, !dbg !1720

; <label>:60:                                     ; preds = %51
  %61 = load %struct._vrrp_t*, %struct._vrrp_t** %9, align 8, !dbg !1721
  %62 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %61, i32 0, i32 40, !dbg !1722
  %63 = load i8, i8* %62, align 4, !dbg !1722
  %64 = trunc i8 %63 to i1, !dbg !1722
  br i1 %64, label %66, label %65, !dbg !1723

; <label>:65:                                     ; preds = %60, %51
  br label %304, !dbg !1725

; <label>:66:                                     ; preds = %60
  store i32 0, i32* %10, align 4, !dbg !1726
  br label %67, !dbg !1728

; <label>:67:                                     ; preds = %300, %66
  %68 = load i32, i32* %10, align 4, !dbg !1729
  %69 = icmp ule i32 %68, 1, !dbg !1732
  br i1 %69, label %70, label %303, !dbg !1733

; <label>:70:                                     ; preds = %67
  %71 = load i32, i32* %10, align 4, !dbg !1734
  %72 = icmp eq i32 %71, 0, !dbg !1736
  br i1 %72, label %73, label %77, !dbg !1737

; <label>:73:                                     ; preds = %70
  %74 = load %struct._vrrp_t*, %struct._vrrp_t** %9, align 8, !dbg !1738
  %75 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %74, i32 0, i32 41, !dbg !1740
  %76 = load %struct._list*, %struct._list** %75, align 8, !dbg !1740
  br label %81, !dbg !1741

; <label>:77:                                     ; preds = %70
  %78 = load %struct._vrrp_t*, %struct._vrrp_t** %9, align 8, !dbg !1742
  %79 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %78, i32 0, i32 42, !dbg !1744
  %80 = load %struct._list*, %struct._list** %79, align 8, !dbg !1744
  br label %81, !dbg !1745

; <label>:81:                                     ; preds = %77, %73
  %82 = phi %struct._list* [ %76, %73 ], [ %80, %77 ], !dbg !1746
  store %struct._list* %82, %struct._list** %5, align 8, !dbg !1748
  %83 = load %struct._list*, %struct._list** %5, align 8, !dbg !1749
  %84 = icmp eq %struct._list* %83, null, !dbg !1751
  br i1 %84, label %299, label %85, !dbg !1752

; <label>:85:                                     ; preds = %81
  %86 = load %struct._list*, %struct._list** %5, align 8, !dbg !1753
  %87 = getelementptr inbounds %struct._list, %struct._list* %86, i32 0, i32 0, !dbg !1755
  %88 = load %struct._element*, %struct._element** %87, align 8, !dbg !1755
  %89 = icmp eq %struct._element* %88, null, !dbg !1756
  br i1 %89, label %90, label %95, !dbg !1757

; <label>:90:                                     ; preds = %85
  %91 = load %struct._list*, %struct._list** %5, align 8, !dbg !1758
  %92 = getelementptr inbounds %struct._list, %struct._list* %91, i32 0, i32 1, !dbg !1760
  %93 = load %struct._element*, %struct._element** %92, align 8, !dbg !1760
  %94 = icmp eq %struct._element* %93, null, !dbg !1761
  br i1 %94, label %299, label %95, !dbg !1762

; <label>:95:                                     ; preds = %90, %85
  %96 = load %struct._list*, %struct._list** %5, align 8, !dbg !1763
  %97 = icmp ne %struct._list* %96, null, !dbg !1766
  br i1 %97, label %99, label %98, !dbg !1767

; <label>:98:                                     ; preds = %95
  br label %103, !dbg !1768

; <label>:99:                                     ; preds = %95
  %100 = load %struct._list*, %struct._list** %5, align 8, !dbg !1770
  %101 = getelementptr inbounds %struct._list, %struct._list* %100, i32 0, i32 0, !dbg !1772
  %102 = load %struct._element*, %struct._element** %101, align 8, !dbg !1772
  br label %103, !dbg !1773

; <label>:103:                                    ; preds = %99, %98
  %104 = phi %struct._element* [ null, %98 ], [ %102, %99 ], !dbg !1774
  store %struct._element* %104, %struct._element** %4, align 8, !dbg !1776
  br label %105, !dbg !1777

; <label>:105:                                    ; preds = %294, %103
  %106 = load %struct._element*, %struct._element** %4, align 8, !dbg !1778
  %107 = icmp ne %struct._element* %106, null, !dbg !1781
  br i1 %107, label %108, label %298, !dbg !1781

; <label>:108:                                    ; preds = %105
  %109 = load %struct._element*, %struct._element** %4, align 8, !dbg !1782
  %110 = getelementptr inbounds %struct._element, %struct._element* %109, i32 0, i32 2, !dbg !1784
  %111 = load i8*, i8** %110, align 8, !dbg !1784
  %112 = bitcast i8* %111 to %struct._ip_address*, !dbg !1785
  store %struct._ip_address* %112, %struct._ip_address** %6, align 8, !dbg !1786
  %113 = load %struct._ip_address*, %struct._ip_address** %6, align 8, !dbg !1787
  %114 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %113, i32 0, i32 12, !dbg !1789
  %115 = load i8, i8* %114, align 2, !dbg !1789
  %116 = trunc i8 %115 to i1, !dbg !1789
  br i1 %116, label %118, label %117, !dbg !1790

; <label>:117:                                    ; preds = %108
  br label %294, !dbg !1791

; <label>:118:                                    ; preds = %108
  %119 = load %struct._ip_address*, %struct._ip_address** %6, align 8, !dbg !1792
  %120 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %119, i32 0, i32 10, !dbg !1794
  %121 = load i8, i8* %120, align 8, !dbg !1794
  %122 = trunc i8 %121 to i1, !dbg !1794
  br i1 %122, label %126, label %123, !dbg !1795

; <label>:123:                                    ; preds = %118
  %124 = load %struct._ip_address*, %struct._ip_address** %6, align 8, !dbg !1796
  %125 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %124, i32 0, i32 12, !dbg !1798
  store i8 0, i8* %125, align 2, !dbg !1799
  br label %294, !dbg !1800

; <label>:126:                                    ; preds = %118
  %127 = load %struct._ip_address*, %struct._ip_address** %6, align 8, !dbg !1801
  %128 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %127, i32 0, i32 2, !dbg !1802
  %129 = load %struct._interface*, %struct._interface** %128, align 8, !dbg !1802
  %130 = getelementptr inbounds %struct._interface, %struct._interface* %129, i32 0, i32 14, !dbg !1803
  %131 = load %struct._interface*, %struct._interface** %130, align 8, !dbg !1803
  store %struct._interface* %131, %struct._interface** %8, align 8, !dbg !1804
  %132 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !1805
  %133 = getelementptr inbounds %struct._interface, %struct._interface* %132, i32 0, i32 18, !dbg !1807
  %134 = load %struct._garp_delay*, %struct._garp_delay** %133, align 8, !dbg !1807
  %135 = icmp ne %struct._garp_delay* %134, null, !dbg !1805
  br i1 %135, label %139, label %136, !dbg !1808

; <label>:136:                                    ; preds = %126
  %137 = load %struct._ip_address*, %struct._ip_address** %6, align 8, !dbg !1809
  %138 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %137, i32 0, i32 12, !dbg !1811
  store i8 0, i8* %138, align 2, !dbg !1812
  br label %294, !dbg !1813

; <label>:139:                                    ; preds = %126
  %140 = load %struct._ip_address*, %struct._ip_address** %6, align 8, !dbg !1814
  %141 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %140, i32 0, i32 0, !dbg !1816
  %142 = getelementptr inbounds %struct.ifaddrmsg, %struct.ifaddrmsg* %141, i32 0, i32 0, !dbg !1817
  %143 = load i8, i8* %142, align 8, !dbg !1817
  %144 = zext i8 %143 to i32, !dbg !1818
  %145 = icmp eq i32 %144, 10, !dbg !1819
  br i1 %145, label %220, label %146, !dbg !1820

; <label>:146:                                    ; preds = %139
  %147 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @time_now, i32 0, i32 0), align 8, !dbg !1821
  %148 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !1824
  %149 = getelementptr inbounds %struct._interface, %struct._interface* %148, i32 0, i32 18, !dbg !1825
  %150 = load %struct._garp_delay*, %struct._garp_delay** %149, align 8, !dbg !1825
  %151 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %150, i32 0, i32 4, !dbg !1826
  %152 = getelementptr inbounds %struct.timeval, %struct.timeval* %151, i32 0, i32 0, !dbg !1821
  %153 = load i64, i64* %152, align 8, !dbg !1821
  %154 = icmp eq i64 %147, %153, !dbg !1827
  br i1 %154, label %155, label %164, !dbg !1828

; <label>:155:                                    ; preds = %146
  %156 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @time_now, i32 0, i32 1), align 8, !dbg !1829
  %157 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !1831
  %158 = getelementptr inbounds %struct._interface, %struct._interface* %157, i32 0, i32 18, !dbg !1832
  %159 = load %struct._garp_delay*, %struct._garp_delay** %158, align 8, !dbg !1832
  %160 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %159, i32 0, i32 4, !dbg !1833
  %161 = getelementptr inbounds %struct.timeval, %struct.timeval* %160, i32 0, i32 1, !dbg !1829
  %162 = load i64, i64* %161, align 8, !dbg !1829
  %163 = icmp sge i64 %156, %162, !dbg !1834
  br i1 %163, label %173, label %179, !dbg !1831

; <label>:164:                                    ; preds = %146
  %165 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @time_now, i32 0, i32 0), align 8, !dbg !1835
  %166 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !1837
  %167 = getelementptr inbounds %struct._interface, %struct._interface* %166, i32 0, i32 18, !dbg !1838
  %168 = load %struct._garp_delay*, %struct._garp_delay** %167, align 8, !dbg !1838
  %169 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %168, i32 0, i32 4, !dbg !1839
  %170 = getelementptr inbounds %struct.timeval, %struct.timeval* %169, i32 0, i32 0, !dbg !1835
  %171 = load i64, i64* %170, align 8, !dbg !1835
  %172 = icmp sge i64 %165, %171, !dbg !1840
  br i1 %172, label %173, label %179, !dbg !1840

; <label>:173:                                    ; preds = %164, %155
  %174 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !1841
  %175 = load %struct._ip_address*, %struct._ip_address** %6, align 8, !dbg !1843
  %176 = call i64 @send_gratuitous_arp_immediate(%struct._interface* %174, %struct._ip_address* %175), !dbg !1844
  %177 = load %struct._ip_address*, %struct._ip_address** %6, align 8, !dbg !1845
  %178 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %177, i32 0, i32 12, !dbg !1846
  store i8 0, i8* %178, align 2, !dbg !1847
  br label %219, !dbg !1848

; <label>:179:                                    ; preds = %164, %155
  %180 = load %struct._vrrp_t*, %struct._vrrp_t** %9, align 8, !dbg !1849
  %181 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %180, i32 0, i32 31, !dbg !1851
  store i8 1, i8* %181, align 4, !dbg !1852
  %182 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !1853
  %183 = getelementptr inbounds %struct._interface, %struct._interface* %182, i32 0, i32 18, !dbg !1855
  %184 = load %struct._garp_delay*, %struct._garp_delay** %183, align 8, !dbg !1855
  %185 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %184, i32 0, i32 4, !dbg !1856
  %186 = getelementptr inbounds %struct.timeval, %struct.timeval* %185, i32 0, i32 0, !dbg !1857
  %187 = load i64, i64* %186, align 8, !dbg !1857
  %188 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0, !dbg !1857
  %189 = load i64, i64* %188, align 8, !dbg !1857
  %190 = icmp eq i64 %187, %189, !dbg !1858
  br i1 %190, label %191, label %201, !dbg !1859

; <label>:191:                                    ; preds = %179
  %192 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !1860
  %193 = getelementptr inbounds %struct._interface, %struct._interface* %192, i32 0, i32 18, !dbg !1862
  %194 = load %struct._garp_delay*, %struct._garp_delay** %193, align 8, !dbg !1862
  %195 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %194, i32 0, i32 4, !dbg !1863
  %196 = getelementptr inbounds %struct.timeval, %struct.timeval* %195, i32 0, i32 1, !dbg !1864
  %197 = load i64, i64* %196, align 8, !dbg !1864
  %198 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1, !dbg !1864
  %199 = load i64, i64* %198, align 8, !dbg !1864
  %200 = icmp slt i64 %197, %199, !dbg !1865
  br i1 %200, label %211, label %218, !dbg !1860

; <label>:201:                                    ; preds = %179
  %202 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !1866
  %203 = getelementptr inbounds %struct._interface, %struct._interface* %202, i32 0, i32 18, !dbg !1868
  %204 = load %struct._garp_delay*, %struct._garp_delay** %203, align 8, !dbg !1868
  %205 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %204, i32 0, i32 4, !dbg !1869
  %206 = getelementptr inbounds %struct.timeval, %struct.timeval* %205, i32 0, i32 0, !dbg !1870
  %207 = load i64, i64* %206, align 8, !dbg !1870
  %208 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0, !dbg !1870
  %209 = load i64, i64* %208, align 8, !dbg !1870
  %210 = icmp slt i64 %207, %209, !dbg !1871
  br i1 %210, label %211, label %218, !dbg !1871

; <label>:211:                                    ; preds = %201, %191
  %212 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !1872
  %213 = getelementptr inbounds %struct._interface, %struct._interface* %212, i32 0, i32 18, !dbg !1873
  %214 = load %struct._garp_delay*, %struct._garp_delay** %213, align 8, !dbg !1873
  %215 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %214, i32 0, i32 4, !dbg !1874
  %216 = bitcast %struct.timeval* %7 to i8*, !dbg !1874
  %217 = bitcast %struct.timeval* %215 to i8*, !dbg !1874
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %216, i8* %217, i64 16, i32 8, i1 false), !dbg !1874
  br label %218, !dbg !1875

; <label>:218:                                    ; preds = %211, %201, %191
  br label %219

; <label>:219:                                    ; preds = %218, %173
  br label %293, !dbg !1876

; <label>:220:                                    ; preds = %139
  %221 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @time_now, i32 0, i32 0), align 8, !dbg !1877
  %222 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !1880
  %223 = getelementptr inbounds %struct._interface, %struct._interface* %222, i32 0, i32 18, !dbg !1881
  %224 = load %struct._garp_delay*, %struct._garp_delay** %223, align 8, !dbg !1881
  %225 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %224, i32 0, i32 5, !dbg !1882
  %226 = getelementptr inbounds %struct.timeval, %struct.timeval* %225, i32 0, i32 0, !dbg !1877
  %227 = load i64, i64* %226, align 8, !dbg !1877
  %228 = icmp eq i64 %221, %227, !dbg !1883
  br i1 %228, label %229, label %238, !dbg !1884

; <label>:229:                                    ; preds = %220
  %230 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @time_now, i32 0, i32 1), align 8, !dbg !1885
  %231 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !1887
  %232 = getelementptr inbounds %struct._interface, %struct._interface* %231, i32 0, i32 18, !dbg !1888
  %233 = load %struct._garp_delay*, %struct._garp_delay** %232, align 8, !dbg !1888
  %234 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %233, i32 0, i32 5, !dbg !1889
  %235 = getelementptr inbounds %struct.timeval, %struct.timeval* %234, i32 0, i32 1, !dbg !1885
  %236 = load i64, i64* %235, align 8, !dbg !1885
  %237 = icmp sge i64 %230, %236, !dbg !1890
  br i1 %237, label %247, label %252, !dbg !1887

; <label>:238:                                    ; preds = %220
  %239 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @time_now, i32 0, i32 0), align 8, !dbg !1891
  %240 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !1893
  %241 = getelementptr inbounds %struct._interface, %struct._interface* %240, i32 0, i32 18, !dbg !1894
  %242 = load %struct._garp_delay*, %struct._garp_delay** %241, align 8, !dbg !1894
  %243 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %242, i32 0, i32 5, !dbg !1895
  %244 = getelementptr inbounds %struct.timeval, %struct.timeval* %243, i32 0, i32 0, !dbg !1891
  %245 = load i64, i64* %244, align 8, !dbg !1891
  %246 = icmp sge i64 %239, %245, !dbg !1896
  br i1 %246, label %247, label %252, !dbg !1896

; <label>:247:                                    ; preds = %238, %229
  %248 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !1897
  %249 = load %struct._ip_address*, %struct._ip_address** %6, align 8, !dbg !1899
  call void @ndisc_send_unsolicited_na_immediate(%struct._interface* %248, %struct._ip_address* %249), !dbg !1900
  %250 = load %struct._ip_address*, %struct._ip_address** %6, align 8, !dbg !1901
  %251 = getelementptr inbounds %struct._ip_address, %struct._ip_address* %250, i32 0, i32 12, !dbg !1902
  store i8 0, i8* %251, align 2, !dbg !1903
  br label %292, !dbg !1904

; <label>:252:                                    ; preds = %238, %229
  %253 = load %struct._vrrp_t*, %struct._vrrp_t** %9, align 8, !dbg !1905
  %254 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %253, i32 0, i32 32, !dbg !1907
  store i8 1, i8* %254, align 1, !dbg !1908
  %255 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !1909
  %256 = getelementptr inbounds %struct._interface, %struct._interface* %255, i32 0, i32 18, !dbg !1911
  %257 = load %struct._garp_delay*, %struct._garp_delay** %256, align 8, !dbg !1911
  %258 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %257, i32 0, i32 5, !dbg !1912
  %259 = getelementptr inbounds %struct.timeval, %struct.timeval* %258, i32 0, i32 0, !dbg !1913
  %260 = load i64, i64* %259, align 8, !dbg !1913
  %261 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0, !dbg !1913
  %262 = load i64, i64* %261, align 8, !dbg !1913
  %263 = icmp eq i64 %260, %262, !dbg !1914
  br i1 %263, label %264, label %274, !dbg !1915

; <label>:264:                                    ; preds = %252
  %265 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !1916
  %266 = getelementptr inbounds %struct._interface, %struct._interface* %265, i32 0, i32 18, !dbg !1918
  %267 = load %struct._garp_delay*, %struct._garp_delay** %266, align 8, !dbg !1918
  %268 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %267, i32 0, i32 5, !dbg !1919
  %269 = getelementptr inbounds %struct.timeval, %struct.timeval* %268, i32 0, i32 1, !dbg !1920
  %270 = load i64, i64* %269, align 8, !dbg !1920
  %271 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1, !dbg !1920
  %272 = load i64, i64* %271, align 8, !dbg !1920
  %273 = icmp slt i64 %270, %272, !dbg !1921
  br i1 %273, label %284, label %291, !dbg !1916

; <label>:274:                                    ; preds = %252
  %275 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !1922
  %276 = getelementptr inbounds %struct._interface, %struct._interface* %275, i32 0, i32 18, !dbg !1924
  %277 = load %struct._garp_delay*, %struct._garp_delay** %276, align 8, !dbg !1924
  %278 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %277, i32 0, i32 5, !dbg !1925
  %279 = getelementptr inbounds %struct.timeval, %struct.timeval* %278, i32 0, i32 0, !dbg !1926
  %280 = load i64, i64* %279, align 8, !dbg !1926
  %281 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0, !dbg !1926
  %282 = load i64, i64* %281, align 8, !dbg !1926
  %283 = icmp slt i64 %280, %282, !dbg !1927
  br i1 %283, label %284, label %291, !dbg !1927

; <label>:284:                                    ; preds = %274, %264
  %285 = load %struct._interface*, %struct._interface** %8, align 8, !dbg !1928
  %286 = getelementptr inbounds %struct._interface, %struct._interface* %285, i32 0, i32 18, !dbg !1929
  %287 = load %struct._garp_delay*, %struct._garp_delay** %286, align 8, !dbg !1929
  %288 = getelementptr inbounds %struct._garp_delay, %struct._garp_delay* %287, i32 0, i32 5, !dbg !1930
  %289 = bitcast %struct.timeval* %7 to i8*, !dbg !1930
  %290 = bitcast %struct.timeval* %288 to i8*, !dbg !1930
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %289, i8* %290, i64 16, i32 8, i1 false), !dbg !1930
  br label %291, !dbg !1931

; <label>:291:                                    ; preds = %284, %274, %264
  br label %292

; <label>:292:                                    ; preds = %291, %247
  br label %293

; <label>:293:                                    ; preds = %292, %219
  br label %294, !dbg !1932

; <label>:294:                                    ; preds = %293, %136, %123, %117
  %295 = load %struct._element*, %struct._element** %4, align 8, !dbg !1933
  %296 = getelementptr inbounds %struct._element, %struct._element* %295, i32 0, i32 0, !dbg !1935
  %297 = load %struct._element*, %struct._element** %296, align 8, !dbg !1935
  store %struct._element* %297, %struct._element** %4, align 8, !dbg !1936
  br label %105, !dbg !1937, !llvm.loop !1938

; <label>:298:                                    ; preds = %105
  br label %299, !dbg !1940

; <label>:299:                                    ; preds = %298, %90, %81
  br label %300, !dbg !1941

; <label>:300:                                    ; preds = %299
  %301 = load i32, i32* %10, align 4, !dbg !1942
  %302 = add i32 %301, 1, !dbg !1942
  store i32 %302, i32* %10, align 4, !dbg !1942
  br label %67, !dbg !1944, !llvm.loop !1945

; <label>:303:                                    ; preds = %67
  br label %304, !dbg !1947

; <label>:304:                                    ; preds = %303, %65, %50
  %305 = load %struct._element*, %struct._element** %3, align 8, !dbg !1948
  %306 = getelementptr inbounds %struct._element, %struct._element* %305, i32 0, i32 0, !dbg !1950
  %307 = load %struct._element*, %struct._element** %306, align 8, !dbg !1950
  store %struct._element* %307, %struct._element** %3, align 8, !dbg !1951
  br label %33, !dbg !1952, !llvm.loop !1953

; <label>:308:                                    ; preds = %33
  %309 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0, !dbg !1955
  %310 = load i64, i64* %309, align 8, !dbg !1955
  %311 = icmp ne i64 %310, 2147483647, !dbg !1957
  br i1 %311, label %312, label %335, !dbg !1958

; <label>:312:                                    ; preds = %308
  %313 = bitcast %struct.timeval* %7 to i8*, !dbg !1959
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.timeval* @garp_next_time to i8*), i8* %313, i64 16, i32 8, i1 false), !dbg !1959
  %314 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1961
  %315 = getelementptr inbounds %struct._thread, %struct._thread* %314, i32 0, i32 2, !dbg !1962
  %316 = load %struct._thread_master*, %struct._thread_master** %315, align 8, !dbg !1962
  %317 = bitcast %struct.timeval* %7 to { i64, i64 }*, !dbg !1963
  %318 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %317, i32 0, i32 0, !dbg !1963
  %319 = load i64, i64* %318, align 8, !dbg !1963
  %320 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %317, i32 0, i32 1, !dbg !1963
  %321 = load i64, i64* %320, align 8, !dbg !1963
  %322 = call { i64, i64 } @timer_sub_now(i64 %319, i64 %321), !dbg !1963
  %323 = bitcast %struct.timeval* %12 to { i64, i64 }*, !dbg !1963
  %324 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %323, i32 0, i32 0, !dbg !1963
  %325 = extractvalue { i64, i64 } %322, 0, !dbg !1963
  store i64 %325, i64* %324, align 8, !dbg !1963
  %326 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %323, i32 0, i32 1, !dbg !1963
  %327 = extractvalue { i64, i64 } %322, 1, !dbg !1963
  store i64 %327, i64* %326, align 8, !dbg !1963
  %328 = bitcast %struct.timeval* %12 to { i64, i64 }*, !dbg !1964
  %329 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %328, i32 0, i32 0, !dbg !1964
  %330 = load i64, i64* %329, align 8, !dbg !1964
  %331 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %328, i32 0, i32 1, !dbg !1964
  %332 = load i64, i64* %331, align 8, !dbg !1964
  %333 = call i64 @timer_long(i64 %330, i64 %332), !dbg !1965
  %334 = call %struct._thread* @thread_add_timer(%struct._thread_master* %316, i32 (%struct._thread*)* @vrrp_arp_thread, i8* null, i64 %333), !dbg !1967
  store %struct._thread* %334, %struct._thread** @garp_thread, align 8, !dbg !1968
  br label %336, !dbg !1969

; <label>:335:                                    ; preds = %308
  store %struct._thread* null, %struct._thread** @garp_thread, align 8, !dbg !1970
  br label %336

; <label>:336:                                    ; preds = %335, %312
  ret i32 0, !dbg !1971
}

declare i64 @send_gratuitous_arp_immediate(%struct._interface*, %struct._ip_address*) #2

declare void @ndisc_send_unsolicited_na_immediate(%struct._interface*, %struct._ip_address*) #2

declare %struct._thread* @thread_add_timer(%struct._thread_master*, i32 (%struct._thread*)*, i8*, i64) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @timer_long(i64, i64) #4 !dbg !1972 {
  %3 = alloca %struct.timeval, align 8
  %4 = bitcast %struct.timeval* %3 to { i64, i64 }*
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  store i64 %0, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval* %3, metadata !1975, metadata !572), !dbg !1976
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0, !dbg !1977
  %8 = load i64, i64* %7, align 8, !dbg !1977
  %9 = mul i64 %8, 1000000, !dbg !1978
  %10 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1, !dbg !1979
  %11 = load i64, i64* %10, align 8, !dbg !1979
  %12 = add i64 %9, %11, !dbg !1980
  ret i64 %12, !dbg !1981
}

; Function Attrs: inlinehint nounwind uwtable
define internal { i64, i64 } @timer_sub_now(i64, i64) #4 !dbg !1982 {
  %3 = alloca %struct.timeval, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = bitcast %struct.timeval* %4 to { i64, i64 }*
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i32 0, i32 0
  store i64 %0, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %5, i32 0, i32 1
  store i64 %1, i64* %7, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval* %4, metadata !1985, metadata !572), !dbg !1986
  br label %8, !dbg !1987, !llvm.loop !1988

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0, !dbg !1989
  %10 = load i64, i64* %9, align 8, !dbg !1989
  %11 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @time_now, i32 0, i32 0), align 8, !dbg !1989
  %12 = sub nsw i64 %10, %11, !dbg !1992
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0, !dbg !1989
  store i64 %12, i64* %13, align 8, !dbg !1992
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1, !dbg !1989
  %15 = load i64, i64* %14, align 8, !dbg !1989
  %16 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @time_now, i32 0, i32 1), align 8, !dbg !1989
  %17 = sub nsw i64 %15, %16, !dbg !1993
  %18 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1, !dbg !1989
  store i64 %17, i64* %18, align 8, !dbg !1993
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1, !dbg !1989
  %20 = load i64, i64* %19, align 8, !dbg !1989
  %21 = icmp slt i64 %20, 0, !dbg !1993
  br i1 %21, label %22, label %29, !dbg !1994

; <label>:22:                                     ; preds = %8
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0, !dbg !1995
  %24 = load i64, i64* %23, align 8, !dbg !1999
  %25 = add nsw i64 %24, -1, !dbg !1999
  store i64 %25, i64* %23, align 8, !dbg !1999
  %26 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1, !dbg !1995
  %27 = load i64, i64* %26, align 8, !dbg !2000
  %28 = add nsw i64 %27, 1000000, !dbg !2000
  store i64 %28, i64* %26, align 8, !dbg !2000
  br label %29, !dbg !2001

; <label>:29:                                     ; preds = %22, %8
  br label %30, !dbg !2002

; <label>:30:                                     ; preds = %29
  %31 = bitcast %struct.timeval* %3 to i8*, !dbg !2004
  %32 = bitcast %struct.timeval* %4 to i8*, !dbg !2004
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %32, i64 16, i32 8, i1 false), !dbg !2004
  %33 = bitcast %struct.timeval* %3 to { i64, i64 }*, !dbg !2005
  %34 = load { i64, i64 }, { i64, i64 }* %33, align 8, !dbg !2005
  ret { i64, i64 } %34, !dbg !2005
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @vrrp_compute_timer(i32) #0 !dbg !2006 {
  %2 = alloca %struct.timeval, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._vrrp_t*, align 8
  %5 = alloca %struct._element*, align 8
  %6 = alloca %struct._list*, align 8
  %7 = alloca %struct.timeval, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !2009, metadata !572), !dbg !2010
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %4, metadata !2011, metadata !572), !dbg !2012
  call void @llvm.dbg.declare(metadata %struct._element** %5, metadata !2013, metadata !572), !dbg !2014
  call void @llvm.dbg.declare(metadata %struct._list** %6, metadata !2015, metadata !572), !dbg !2016
  %8 = load i32, i32* %3, align 4, !dbg !2017
  %9 = srem i32 %8, 1024, !dbg !2018
  %10 = sext i32 %9 to i64, !dbg !2019
  %11 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !2019
  %12 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %11, i32 0, i32 7, !dbg !2020
  %13 = load %struct._list*, %struct._list** %12, align 8, !dbg !2020
  %14 = getelementptr inbounds %struct._list, %struct._list* %13, i64 %10, !dbg !2019
  store %struct._list* %14, %struct._list** %6, align 8, !dbg !2016
  call void @llvm.dbg.declare(metadata %struct.timeval* %7, metadata !2021, metadata !572), !dbg !2022
  %15 = load %struct._list*, %struct._list** %6, align 8, !dbg !2023
  %16 = getelementptr inbounds %struct._list, %struct._list* %15, i32 0, i32 2, !dbg !2025
  %17 = load i32, i32* %16, align 8, !dbg !2025
  %18 = icmp eq i32 %17, 1, !dbg !2026
  br i1 %18, label %19, label %36, !dbg !2027

; <label>:19:                                     ; preds = %1
  %20 = load %struct._list*, %struct._list** %6, align 8, !dbg !2028
  %21 = icmp ne %struct._list* %20, null, !dbg !2030
  br i1 %21, label %23, label %22, !dbg !2031

; <label>:22:                                     ; preds = %19
  br label %27, !dbg !2032

; <label>:23:                                     ; preds = %19
  %24 = load %struct._list*, %struct._list** %6, align 8, !dbg !2034
  %25 = getelementptr inbounds %struct._list, %struct._list* %24, i32 0, i32 0, !dbg !2036
  %26 = load %struct._element*, %struct._element** %25, align 8, !dbg !2036
  br label %27, !dbg !2037

; <label>:27:                                     ; preds = %23, %22
  %28 = phi %struct._element* [ null, %22 ], [ %26, %23 ], !dbg !2038
  %29 = getelementptr inbounds %struct._element, %struct._element* %28, i32 0, i32 2, !dbg !2040
  %30 = load i8*, i8** %29, align 8, !dbg !2040
  %31 = bitcast i8* %30 to %struct._vrrp_t*, !dbg !2041
  store %struct._vrrp_t* %31, %struct._vrrp_t** %4, align 8, !dbg !2042
  %32 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !2043
  %33 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %32, i32 0, i32 71, !dbg !2044
  %34 = bitcast %struct.timeval* %2 to i8*, !dbg !2044
  %35 = bitcast %struct.timeval* %33 to i8*, !dbg !2044
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 16, i32 8, i1 false), !dbg !2044
  br label %109, !dbg !2045

; <label>:36:                                     ; preds = %1
  %37 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1, !dbg !2046
  store i64 0, i64* %37, align 8, !dbg !2047
  %38 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0, !dbg !2046
  store i64 0, i64* %38, align 8, !dbg !2048
  %39 = load %struct._list*, %struct._list** %6, align 8, !dbg !2049
  %40 = icmp ne %struct._list* %39, null, !dbg !2051
  br i1 %40, label %42, label %41, !dbg !2052

; <label>:41:                                     ; preds = %36
  br label %46, !dbg !2053

; <label>:42:                                     ; preds = %36
  %43 = load %struct._list*, %struct._list** %6, align 8, !dbg !2055
  %44 = getelementptr inbounds %struct._list, %struct._list* %43, i32 0, i32 0, !dbg !2057
  %45 = load %struct._element*, %struct._element** %44, align 8, !dbg !2057
  br label %46, !dbg !2058

; <label>:46:                                     ; preds = %42, %41
  %47 = phi %struct._element* [ null, %41 ], [ %45, %42 ], !dbg !2059
  store %struct._element* %47, %struct._element** %5, align 8, !dbg !2061
  br label %48, !dbg !2062

; <label>:48:                                     ; preds = %102, %46
  %49 = load %struct._element*, %struct._element** %5, align 8, !dbg !2063
  %50 = icmp ne %struct._element* %49, null, !dbg !2066
  br i1 %50, label %51, label %106, !dbg !2066

; <label>:51:                                     ; preds = %48
  %52 = load %struct._element*, %struct._element** %5, align 8, !dbg !2067
  %53 = getelementptr inbounds %struct._element, %struct._element* %52, i32 0, i32 2, !dbg !2069
  %54 = load i8*, i8** %53, align 8, !dbg !2069
  %55 = bitcast i8* %54 to %struct._vrrp_t*, !dbg !2070
  store %struct._vrrp_t* %55, %struct._vrrp_t** %4, align 8, !dbg !2071
  %56 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !2072
  %57 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %56, i32 0, i32 58, !dbg !2074
  %58 = load %struct._sock*, %struct._sock** %57, align 8, !dbg !2074
  %59 = getelementptr inbounds %struct._sock, %struct._sock* %58, i32 0, i32 5, !dbg !2075
  %60 = load i32, i32* %59, align 4, !dbg !2075
  %61 = load i32, i32* %3, align 4, !dbg !2076
  %62 = icmp ne i32 %60, %61, !dbg !2077
  br i1 %62, label %63, label %64, !dbg !2078

; <label>:63:                                     ; preds = %51
  br label %102, !dbg !2079

; <label>:64:                                     ; preds = %51
  %65 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0, !dbg !2080
  %66 = load i64, i64* %65, align 8, !dbg !2080
  %67 = icmp ne i64 %66, 0, !dbg !2082
  br i1 %67, label %72, label %68, !dbg !2083

; <label>:68:                                     ; preds = %64
  %69 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1, !dbg !2084
  %70 = load i64, i64* %69, align 8, !dbg !2084
  %71 = icmp ne i64 %70, 0, !dbg !2086
  br i1 %71, label %72, label %96, !dbg !2087

; <label>:72:                                     ; preds = %68, %64
  %73 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !2088
  %74 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %73, i32 0, i32 71, !dbg !2089
  %75 = getelementptr inbounds %struct.timeval, %struct.timeval* %74, i32 0, i32 0, !dbg !2090
  %76 = load i64, i64* %75, align 8, !dbg !2090
  %77 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0, !dbg !2090
  %78 = load i64, i64* %77, align 8, !dbg !2090
  %79 = icmp eq i64 %76, %78, !dbg !2091
  br i1 %79, label %80, label %88, !dbg !2092

; <label>:80:                                     ; preds = %72
  %81 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !2094
  %82 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %81, i32 0, i32 71, !dbg !2095
  %83 = getelementptr inbounds %struct.timeval, %struct.timeval* %82, i32 0, i32 1, !dbg !2096
  %84 = load i64, i64* %83, align 8, !dbg !2096
  %85 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1, !dbg !2096
  %86 = load i64, i64* %85, align 8, !dbg !2096
  %87 = icmp slt i64 %84, %86, !dbg !2097
  br i1 %87, label %96, label %101, !dbg !2094

; <label>:88:                                     ; preds = %72
  %89 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !2098
  %90 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %89, i32 0, i32 71, !dbg !2100
  %91 = getelementptr inbounds %struct.timeval, %struct.timeval* %90, i32 0, i32 0, !dbg !2101
  %92 = load i64, i64* %91, align 8, !dbg !2101
  %93 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0, !dbg !2101
  %94 = load i64, i64* %93, align 8, !dbg !2101
  %95 = icmp slt i64 %92, %94, !dbg !2102
  br i1 %95, label %96, label %101, !dbg !2103

; <label>:96:                                     ; preds = %88, %80, %68
  %97 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !2105
  %98 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %97, i32 0, i32 71, !dbg !2106
  %99 = bitcast %struct.timeval* %7 to i8*, !dbg !2106
  %100 = bitcast %struct.timeval* %98 to i8*, !dbg !2106
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %99, i8* %100, i64 16, i32 8, i1 false), !dbg !2106
  br label %101, !dbg !2107

; <label>:101:                                    ; preds = %96, %88, %80
  br label %102, !dbg !2108

; <label>:102:                                    ; preds = %101, %63
  %103 = load %struct._element*, %struct._element** %5, align 8, !dbg !2109
  %104 = getelementptr inbounds %struct._element, %struct._element* %103, i32 0, i32 0, !dbg !2111
  %105 = load %struct._element*, %struct._element** %104, align 8, !dbg !2111
  store %struct._element* %105, %struct._element** %5, align 8, !dbg !2112
  br label %48, !dbg !2113, !llvm.loop !2114

; <label>:106:                                    ; preds = %48
  %107 = bitcast %struct.timeval* %2 to i8*, !dbg !2116
  %108 = bitcast %struct.timeval* %7 to i8*, !dbg !2116
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %107, i8* %108, i64 16, i32 8, i1 false), !dbg !2116
  br label %109, !dbg !2117

; <label>:109:                                    ; preds = %106, %27
  %110 = bitcast %struct.timeval* %2 to { i64, i64 }*, !dbg !2118
  %111 = load { i64, i64 }, { i64, i64 }* %110, align 8, !dbg !2118
  ret { i64, i64 } %111, !dbg !2118
}

; Function Attrs: nounwind uwtable
define internal %struct._sock* @already_exist_sock(%struct._list*, i16 zeroext, i32, i32, i1 zeroext) #0 !dbg !2119 {
  %6 = alloca %struct._sock*, align 8
  %7 = alloca %struct._list*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca %struct._sock*, align 8
  %13 = alloca %struct._element*, align 8
  store %struct._list* %0, %struct._list** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._list** %7, metadata !2122, metadata !572), !dbg !2123
  store i16 %1, i16* %8, align 2
  call void @llvm.dbg.declare(metadata i16* %8, metadata !2124, metadata !572), !dbg !2125
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2126, metadata !572), !dbg !2127
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2128, metadata !572), !dbg !2129
  %14 = zext i1 %4 to i8
  store i8 %14, i8* %11, align 1
  call void @llvm.dbg.declare(metadata i8* %11, metadata !2130, metadata !572), !dbg !2131
  call void @llvm.dbg.declare(metadata %struct._sock** %12, metadata !2132, metadata !572), !dbg !2133
  call void @llvm.dbg.declare(metadata %struct._element** %13, metadata !2134, metadata !572), !dbg !2135
  %15 = load %struct._list*, %struct._list** %7, align 8, !dbg !2136
  %16 = icmp ne %struct._list* %15, null, !dbg !2138
  br i1 %16, label %17, label %27, !dbg !2138

; <label>:17:                                     ; preds = %5
  %18 = load %struct._list*, %struct._list** %7, align 8, !dbg !2139
  %19 = icmp ne %struct._list* %18, null, !dbg !2141
  br i1 %19, label %21, label %20, !dbg !2142

; <label>:20:                                     ; preds = %17
  br label %25, !dbg !2143

; <label>:21:                                     ; preds = %17
  %22 = load %struct._list*, %struct._list** %7, align 8, !dbg !2145
  %23 = getelementptr inbounds %struct._list, %struct._list* %22, i32 0, i32 0, !dbg !2147
  %24 = load %struct._element*, %struct._element** %23, align 8, !dbg !2147
  br label %25, !dbg !2148

; <label>:25:                                     ; preds = %21, %20
  %26 = phi %struct._element* [ null, %20 ], [ %24, %21 ], !dbg !2149
  br label %28, !dbg !2151

; <label>:27:                                     ; preds = %5
  br label %28, !dbg !2152

; <label>:28:                                     ; preds = %27, %25
  %29 = phi %struct._element* [ %26, %25 ], [ null, %27 ], !dbg !2154
  store %struct._element* %29, %struct._element** %13, align 8, !dbg !2156
  br label %30, !dbg !2157

; <label>:30:                                     ; preds = %73, %28
  %31 = load %struct._element*, %struct._element** %13, align 8, !dbg !2158
  %32 = icmp ne %struct._element* %31, null, !dbg !2161
  br i1 %32, label %33, label %38, !dbg !2162

; <label>:33:                                     ; preds = %30
  %34 = load %struct._element*, %struct._element** %13, align 8, !dbg !2163
  %35 = getelementptr inbounds %struct._element, %struct._element* %34, i32 0, i32 2, !dbg !2165
  %36 = load i8*, i8** %35, align 8, !dbg !2165
  %37 = bitcast i8* %36 to %struct._sock*, !dbg !2166
  store %struct._sock* %37, %struct._sock** %12, align 8, !dbg !2167
  br label %38

; <label>:38:                                     ; preds = %33, %30
  %39 = phi i1 [ false, %30 ], [ true, %33 ]
  br i1 %39, label %40, label %77, !dbg !2168

; <label>:40:                                     ; preds = %38
  %41 = load %struct._sock*, %struct._sock** %12, align 8, !dbg !2170
  %42 = getelementptr inbounds %struct._sock, %struct._sock* %41, i32 0, i32 0, !dbg !2173
  %43 = load i16, i16* %42, align 8, !dbg !2173
  %44 = zext i16 %43 to i32, !dbg !2170
  %45 = load i16, i16* %8, align 2, !dbg !2174
  %46 = zext i16 %45 to i32, !dbg !2174
  %47 = icmp eq i32 %44, %46, !dbg !2175
  br i1 %47, label %48, label %72, !dbg !2176

; <label>:48:                                     ; preds = %40
  %49 = load %struct._sock*, %struct._sock** %12, align 8, !dbg !2177
  %50 = getelementptr inbounds %struct._sock, %struct._sock* %49, i32 0, i32 2, !dbg !2178
  %51 = load i32, i32* %50, align 8, !dbg !2178
  %52 = load i32, i32* %9, align 4, !dbg !2179
  %53 = icmp eq i32 %51, %52, !dbg !2180
  br i1 %53, label %54, label %72, !dbg !2181

; <label>:54:                                     ; preds = %48
  %55 = load %struct._sock*, %struct._sock** %12, align 8, !dbg !2182
  %56 = getelementptr inbounds %struct._sock, %struct._sock* %55, i32 0, i32 3, !dbg !2183
  %57 = load i32, i32* %56, align 4, !dbg !2183
  %58 = load i32, i32* %10, align 4, !dbg !2184
  %59 = icmp eq i32 %57, %58, !dbg !2185
  br i1 %59, label %60, label %72, !dbg !2186

; <label>:60:                                     ; preds = %54
  %61 = load %struct._sock*, %struct._sock** %12, align 8, !dbg !2187
  %62 = getelementptr inbounds %struct._sock, %struct._sock* %61, i32 0, i32 4, !dbg !2188
  %63 = load i8, i8* %62, align 8, !dbg !2188
  %64 = trunc i8 %63 to i1, !dbg !2188
  %65 = zext i1 %64 to i32, !dbg !2187
  %66 = load i8, i8* %11, align 1, !dbg !2189
  %67 = trunc i8 %66 to i1, !dbg !2189
  %68 = zext i1 %67 to i32, !dbg !2189
  %69 = icmp eq i32 %65, %68, !dbg !2190
  br i1 %69, label %70, label %72, !dbg !2191

; <label>:70:                                     ; preds = %60
  %71 = load %struct._sock*, %struct._sock** %12, align 8, !dbg !2193
  store %struct._sock* %71, %struct._sock** %6, align 8, !dbg !2194
  br label %78, !dbg !2194

; <label>:72:                                     ; preds = %60, %54, %48, %40
  br label %73, !dbg !2195

; <label>:73:                                     ; preds = %72
  %74 = load %struct._element*, %struct._element** %13, align 8, !dbg !2196
  %75 = getelementptr inbounds %struct._element, %struct._element* %74, i32 0, i32 0, !dbg !2198
  %76 = load %struct._element*, %struct._element** %75, align 8, !dbg !2198
  store %struct._element* %76, %struct._element** %13, align 8, !dbg !2199
  br label %30, !dbg !2200, !llvm.loop !2201

; <label>:77:                                     ; preds = %38
  store %struct._sock* null, %struct._sock** %6, align 8, !dbg !2203
  br label %78, !dbg !2203

; <label>:78:                                     ; preds = %77, %70
  %79 = load %struct._sock*, %struct._sock** %6, align 8, !dbg !2204
  ret %struct._sock* %79, !dbg !2204
}

; Function Attrs: nounwind uwtable
define internal %struct._sock* @alloc_sock(i16 zeroext, %struct._list*, i32, i32, i1 zeroext) #0 !dbg !2205 {
  %6 = alloca i16, align 2
  %7 = alloca %struct._list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca %struct._sock*, align 8
  store i16 %0, i16* %6, align 2
  call void @llvm.dbg.declare(metadata i16* %6, metadata !2208, metadata !572), !dbg !2209
  store %struct._list* %1, %struct._list** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._list** %7, metadata !2210, metadata !572), !dbg !2211
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2212, metadata !572), !dbg !2213
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2214, metadata !572), !dbg !2215
  %12 = zext i1 %4 to i8
  store i8 %12, i8* %10, align 1
  call void @llvm.dbg.declare(metadata i8* %10, metadata !2216, metadata !572), !dbg !2217
  call void @llvm.dbg.declare(metadata %struct._sock** %11, metadata !2218, metadata !572), !dbg !2219
  %13 = call i8* @zalloc(i64 168), !dbg !2220
  %14 = bitcast i8* %13 to %struct._sock*, !dbg !2221
  store %struct._sock* %14, %struct._sock** %11, align 8, !dbg !2222
  %15 = load i16, i16* %6, align 2, !dbg !2223
  %16 = load %struct._sock*, %struct._sock** %11, align 8, !dbg !2224
  %17 = getelementptr inbounds %struct._sock, %struct._sock* %16, i32 0, i32 0, !dbg !2225
  store i16 %15, i16* %17, align 8, !dbg !2226
  %18 = load i32, i32* %8, align 4, !dbg !2227
  %19 = load %struct._sock*, %struct._sock** %11, align 8, !dbg !2228
  %20 = getelementptr inbounds %struct._sock, %struct._sock* %19, i32 0, i32 2, !dbg !2229
  store i32 %18, i32* %20, align 8, !dbg !2230
  %21 = load i32, i32* %9, align 4, !dbg !2231
  %22 = load %struct._sock*, %struct._sock** %11, align 8, !dbg !2232
  %23 = getelementptr inbounds %struct._sock, %struct._sock* %22, i32 0, i32 3, !dbg !2233
  store i32 %21, i32* %23, align 4, !dbg !2234
  %24 = load i8, i8* %10, align 1, !dbg !2235
  %25 = trunc i8 %24 to i1, !dbg !2235
  %26 = load %struct._sock*, %struct._sock** %11, align 8, !dbg !2236
  %27 = getelementptr inbounds %struct._sock, %struct._sock* %26, i32 0, i32 4, !dbg !2237
  %28 = zext i1 %25 to i8, !dbg !2238
  store i8 %28, i8* %27, align 8, !dbg !2238
  %29 = load %struct._list*, %struct._list** %7, align 8, !dbg !2239
  %30 = load %struct._sock*, %struct._sock** %11, align 8, !dbg !2240
  %31 = bitcast %struct._sock* %30 to i8*, !dbg !2240
  call void @list_add(%struct._list* %29, i8* %31), !dbg !2241
  %32 = load %struct._sock*, %struct._sock** %11, align 8, !dbg !2242
  ret %struct._sock* %32, !dbg !2243
}

declare i64 @vrrp_adv_len(%struct._vrrp_t*) #2

declare i8* @zalloc(i64) #2

declare void @list_add(%struct._list*, i8*) #2

declare %struct._interface* @if_get_by_ifindex(i32) #2

declare i32 @open_vrrp_read_socket(i16 zeroext, i32, %struct._interface*, i1 zeroext, i32) #2

declare i32 @open_vrrp_send_socket(i16 zeroext, i32, %struct._interface*, i1 zeroext) #2

declare void @alloc_vrrp_fd_bucket(%struct._vrrp_t*) #2

declare void @alloc_vrrp_bucket(%struct._vrrp_t*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define internal void @vrrp_init_state(%struct._list*) #0 !dbg !2244 {
  %2 = alloca %struct._list*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca %struct._vrrp_sgroup*, align 8
  %5 = alloca %struct._element*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca %struct.timeval, align 8
  %9 = alloca %struct.timeval, align 8
  store %struct._list* %0, %struct._list** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._list** %2, metadata !2245, metadata !572), !dbg !2246
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !2247, metadata !572), !dbg !2248
  call void @llvm.dbg.declare(metadata %struct._vrrp_sgroup** %4, metadata !2249, metadata !572), !dbg !2250
  call void @llvm.dbg.declare(metadata %struct._element** %5, metadata !2251, metadata !572), !dbg !2252
  call void @llvm.dbg.declare(metadata i8* %6, metadata !2253, metadata !572), !dbg !2254
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2255, metadata !572), !dbg !2256
  %10 = call { i64, i64 } @set_time_now(), !dbg !2257
  %11 = bitcast %struct.timeval* %8 to { i64, i64 }*, !dbg !2257
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0, !dbg !2257
  %13 = extractvalue { i64, i64 } %10, 0, !dbg !2257
  store i64 %13, i64* %12, align 8, !dbg !2257
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1, !dbg !2257
  %15 = extractvalue { i64, i64 } %10, 1, !dbg !2257
  store i64 %15, i64* %14, align 8, !dbg !2257
  %16 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !2258
  %17 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %16, i32 0, i32 4, !dbg !2260
  %18 = load %struct._list*, %struct._list** %17, align 8, !dbg !2260
  %19 = icmp ne %struct._list* %18, null, !dbg !2261
  br i1 %19, label %21, label %20, !dbg !2262

; <label>:20:                                     ; preds = %1
  br label %27, !dbg !2263

; <label>:21:                                     ; preds = %1
  %22 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !2265
  %23 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %22, i32 0, i32 4, !dbg !2267
  %24 = load %struct._list*, %struct._list** %23, align 8, !dbg !2267
  %25 = getelementptr inbounds %struct._list, %struct._list* %24, i32 0, i32 0, !dbg !2268
  %26 = load %struct._element*, %struct._element** %25, align 8, !dbg !2268
  br label %27, !dbg !2269

; <label>:27:                                     ; preds = %21, %20
  %28 = phi %struct._element* [ null, %20 ], [ %26, %21 ], !dbg !2270
  store %struct._element* %28, %struct._element** %5, align 8, !dbg !2272
  br label %29, !dbg !2273

; <label>:29:                                     ; preds = %44, %27
  %30 = load %struct._element*, %struct._element** %5, align 8, !dbg !2274
  %31 = icmp ne %struct._element* %30, null, !dbg !2277
  br i1 %31, label %32, label %48, !dbg !2277

; <label>:32:                                     ; preds = %29
  %33 = load %struct._element*, %struct._element** %5, align 8, !dbg !2278
  %34 = getelementptr inbounds %struct._element, %struct._element* %33, i32 0, i32 2, !dbg !2280
  %35 = load i8*, i8** %34, align 8, !dbg !2280
  %36 = bitcast i8* %35 to %struct._vrrp_sgroup*, !dbg !2281
  store %struct._vrrp_sgroup* %36, %struct._vrrp_sgroup** %4, align 8, !dbg !2282
  %37 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %4, align 8, !dbg !2283
  %38 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %37, i32 0, i32 5, !dbg !2285
  %39 = load i32, i32* %38, align 8, !dbg !2285
  %40 = icmp eq i32 %39, 3, !dbg !2286
  br i1 %40, label %41, label %43, !dbg !2287

; <label>:41:                                     ; preds = %32
  %42 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %4, align 8, !dbg !2288
  call void @send_group_notifies(%struct._vrrp_sgroup* %42), !dbg !2289
  br label %43, !dbg !2289

; <label>:43:                                     ; preds = %41, %32
  br label %44, !dbg !2290

; <label>:44:                                     ; preds = %43
  %45 = load %struct._element*, %struct._element** %5, align 8, !dbg !2291
  %46 = getelementptr inbounds %struct._element, %struct._element* %45, i32 0, i32 0, !dbg !2293
  %47 = load %struct._element*, %struct._element** %46, align 8, !dbg !2293
  store %struct._element* %47, %struct._element** %5, align 8, !dbg !2294
  br label %29, !dbg !2295, !llvm.loop !2296

; <label>:48:                                     ; preds = %29
  %49 = load %struct._list*, %struct._list** %2, align 8, !dbg !2298
  %50 = icmp ne %struct._list* %49, null, !dbg !2300
  br i1 %50, label %52, label %51, !dbg !2301

; <label>:51:                                     ; preds = %48
  br label %56, !dbg !2302

; <label>:52:                                     ; preds = %48
  %53 = load %struct._list*, %struct._list** %2, align 8, !dbg !2304
  %54 = getelementptr inbounds %struct._list, %struct._list* %53, i32 0, i32 0, !dbg !2306
  %55 = load %struct._element*, %struct._element** %54, align 8, !dbg !2306
  br label %56, !dbg !2307

; <label>:56:                                     ; preds = %52, %51
  %57 = phi %struct._element* [ null, %51 ], [ %55, %52 ], !dbg !2308
  store %struct._element* %57, %struct._element** %5, align 8, !dbg !2310
  br label %58, !dbg !2311

; <label>:58:                                     ; preds = %299, %56
  %59 = load %struct._element*, %struct._element** %5, align 8, !dbg !2312
  %60 = icmp ne %struct._element* %59, null, !dbg !2315
  br i1 %60, label %61, label %303, !dbg !2315

; <label>:61:                                     ; preds = %58
  %62 = load %struct._element*, %struct._element** %5, align 8, !dbg !2316
  %63 = getelementptr inbounds %struct._element, %struct._element* %62, i32 0, i32 2, !dbg !2318
  %64 = load i8*, i8** %63, align 8, !dbg !2318
  %65 = bitcast i8* %64 to %struct._vrrp_t*, !dbg !2319
  store %struct._vrrp_t* %65, %struct._vrrp_t** %3, align 8, !dbg !2320
  %66 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2321
  %67 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %66, i32 0, i32 55, !dbg !2323
  %68 = load i32, i32* %67, align 8, !dbg !2323
  %69 = icmp eq i32 %68, 3, !dbg !2324
  br i1 %69, label %70, label %73, !dbg !2325

; <label>:70:                                     ; preds = %61
  %71 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2326
  %72 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %71, i32 0, i32 56, !dbg !2327
  store i32 3, i32* %72, align 4, !dbg !2328
  br label %73, !dbg !2326

; <label>:73:                                     ; preds = %70, %61
  %74 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2329
  %75 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %74, i32 0, i32 2, !dbg !2330
  %76 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %75, align 8, !dbg !2330
  %77 = icmp ne %struct._vrrp_sgroup* %76, null, !dbg !2329
  br i1 %77, label %78, label %84, !dbg !2329

; <label>:78:                                     ; preds = %73
  %79 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2331
  %80 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %79, i32 0, i32 2, !dbg !2333
  %81 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %80, align 8, !dbg !2333
  %82 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %81, i32 0, i32 5, !dbg !2334
  %83 = load i32, i32* %82, align 8, !dbg !2334
  br label %88, !dbg !2335

; <label>:84:                                     ; preds = %73
  %85 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2336
  %86 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %85, i32 0, i32 56, !dbg !2338
  %87 = load i32, i32* %86, align 4, !dbg !2338
  br label %88, !dbg !2339

; <label>:88:                                     ; preds = %84, %78
  %89 = phi i32 [ %83, %78 ], [ %87, %84 ], !dbg !2340
  store i32 %89, i32* %7, align 4, !dbg !2342
  %90 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2343
  %91 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %90, i32 0, i32 14, !dbg !2344
  %92 = load i32, i32* %91, align 8, !dbg !2344
  %93 = icmp ne i32 %92, 0, !dbg !2345
  %94 = xor i1 %93, true, !dbg !2345
  %95 = zext i1 %94 to i8, !dbg !2346
  store i8 %95, i8* %6, align 1, !dbg !2346
  %96 = load i8, i8* %6, align 1, !dbg !2347
  %97 = trunc i8 %96 to i1, !dbg !2347
  br i1 %97, label %98, label %166, !dbg !2349

; <label>:98:                                     ; preds = %88
  %99 = load i32, i32* %7, align 4, !dbg !2350
  %100 = icmp eq i32 %99, 2, !dbg !2351
  br i1 %100, label %101, label %166, !dbg !2352

; <label>:101:                                    ; preds = %98
  %102 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2353
  %103 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %102, i32 0, i32 15, !dbg !2354
  %104 = load i32, i32* %103, align 4, !dbg !2354
  %105 = icmp ne i32 %104, 0, !dbg !2353
  br i1 %105, label %166, label %106, !dbg !2355

; <label>:106:                                    ; preds = %101
  %107 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2356
  %108 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %107, i32 0, i32 2, !dbg !2358
  %109 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %108, align 8, !dbg !2358
  %110 = icmp ne %struct._vrrp_sgroup* %109, null, !dbg !2356
  br i1 %110, label %111, label %118, !dbg !2359

; <label>:111:                                    ; preds = %106
  %112 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2360
  %113 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %112, i32 0, i32 2, !dbg !2362
  %114 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %113, align 8, !dbg !2362
  %115 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %114, i32 0, i32 4, !dbg !2363
  %116 = load i32, i32* %115, align 4, !dbg !2363
  %117 = icmp ne i32 %116, 0, !dbg !2360
  br i1 %117, label %166, label %118, !dbg !2364

; <label>:118:                                    ; preds = %111, %106
  %119 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2365
  %120 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %119, i32 0, i32 37, !dbg !2366
  %121 = load i8, i8* %120, align 1, !dbg !2366
  %122 = zext i8 %121 to i32, !dbg !2365
  %123 = icmp eq i32 %122, 255, !dbg !2367
  br i1 %123, label %129, label %124, !dbg !2368

; <label>:124:                                    ; preds = %118
  %125 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2369
  %126 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %125, i32 0, i32 57, !dbg !2370
  %127 = load i8, i8* %126, align 8, !dbg !2370
  %128 = trunc i8 %127 to i1, !dbg !2370
  br i1 %128, label %129, label %166, !dbg !2371

; <label>:129:                                    ; preds = %124, %118
  %130 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2372
  %131 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %130, i32 0, i32 56, !dbg !2373
  %132 = load i32, i32* %131, align 4, !dbg !2373
  %133 = icmp eq i32 %132, 2, !dbg !2374
  br i1 %133, label %134, label %166, !dbg !2375

; <label>:134:                                    ; preds = %129
  %135 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2376
  %136 = getelementptr inbounds %struct._data, %struct._data* %135, i32 0, i32 20, !dbg !2379
  %137 = getelementptr inbounds %struct.lvs_syncd_config, %struct.lvs_syncd_config* %136, i32 0, i32 0, !dbg !2380
  %138 = load i8*, i8** %137, align 8, !dbg !2380
  %139 = icmp ne i8* %138, null, !dbg !2376
  br i1 %139, label %140, label %155, !dbg !2381

; <label>:140:                                    ; preds = %134
  %141 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2382
  %142 = getelementptr inbounds %struct._data, %struct._data* %141, i32 0, i32 20, !dbg !2383
  %143 = getelementptr inbounds %struct.lvs_syncd_config, %struct.lvs_syncd_config* %142, i32 0, i32 1, !dbg !2384
  %144 = load %struct._vrrp_t*, %struct._vrrp_t** %143, align 8, !dbg !2384
  %145 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2385
  %146 = icmp eq %struct._vrrp_t* %144, %145, !dbg !2386
  br i1 %146, label %147, label %155, !dbg !2387

; <label>:147:                                    ; preds = %140
  %148 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2389
  %149 = getelementptr inbounds %struct._data, %struct._data* %148, i32 0, i32 20, !dbg !2390
  %150 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2391
  %151 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %150, i32 0, i32 55, !dbg !2392
  %152 = load i32, i32* %151, align 8, !dbg !2392
  %153 = icmp eq i32 %152, 2, !dbg !2393
  %154 = select i1 %153, i32 1, i32 2, !dbg !2391
  call void @ipvs_syncd_cmd(i32 1163, %struct.lvs_syncd_config* %149, i32 %154, i1 zeroext false, i1 zeroext false), !dbg !2394
  br label %155, !dbg !2394

; <label>:155:                                    ; preds = %147, %140, %134
  %156 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2395
  %157 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %156, i32 0, i32 57, !dbg !2397
  %158 = load i8, i8* %157, align 8, !dbg !2397
  %159 = trunc i8 %158 to i1, !dbg !2397
  br i1 %159, label %165, label %160, !dbg !2398

; <label>:160:                                    ; preds = %155
  %161 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2399
  %162 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %161, i32 0, i32 55, !dbg !2401
  store i32 1, i32* %162, align 8, !dbg !2402
  %163 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2403
  %164 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %163, i32 0, i32 70, !dbg !2404
  store i32 1, i32* %164, align 8, !dbg !2405
  br label %165, !dbg !2406

; <label>:165:                                    ; preds = %160, %155
  br label %298, !dbg !2407

; <label>:166:                                    ; preds = %129, %124, %111, %101, %98, %88
  %167 = load i32, i32* %7, align 4, !dbg !2408
  %168 = icmp eq i32 %167, 1, !dbg !2411
  br i1 %168, label %169, label %195, !dbg !2412

; <label>:169:                                    ; preds = %166
  %170 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2413
  %171 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %170, i32 0, i32 56, !dbg !2415
  %172 = load i32, i32* %171, align 4, !dbg !2415
  %173 = icmp eq i32 %172, 2, !dbg !2416
  br i1 %173, label %174, label %195, !dbg !2417

; <label>:174:                                    ; preds = %169
  %175 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2418
  %176 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %175, i32 0, i32 48, !dbg !2419
  %177 = load i32, i32* %176, align 4, !dbg !2419
  %178 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2420
  %179 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %178, i32 0, i32 60, !dbg !2421
  %180 = load i32, i32* %179, align 4, !dbg !2421
  %181 = icmp eq i32 %180, 3, !dbg !2422
  br i1 %181, label %182, label %189, !dbg !2423

; <label>:182:                                    ; preds = %174
  %183 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2424
  %184 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %183, i32 0, i32 48, !dbg !2425
  %185 = load i32, i32* %184, align 4, !dbg !2425
  %186 = udiv i32 %185, 10000, !dbg !2426
  %187 = mul i32 %186, 625, !dbg !2427
  %188 = udiv i32 %187, 16, !dbg !2428
  br label %190, !dbg !2429

; <label>:189:                                    ; preds = %174
  br label %190, !dbg !2430

; <label>:190:                                    ; preds = %189, %182
  %191 = phi i32 [ %188, %182 ], [ 3906, %189 ], !dbg !2432
  %192 = add i32 %177, %191, !dbg !2434
  %193 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2435
  %194 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %193, i32 0, i32 70, !dbg !2436
  store i32 %192, i32* %194, align 8, !dbg !2437
  br label %230, !dbg !2435

; <label>:195:                                    ; preds = %169, %166
  %196 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2438
  %197 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %196, i32 0, i32 48, !dbg !2439
  %198 = load i32, i32* %197, align 4, !dbg !2439
  %199 = mul i32 3, %198, !dbg !2440
  %200 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2441
  %201 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %200, i32 0, i32 60, !dbg !2442
  %202 = load i32, i32* %201, align 4, !dbg !2442
  %203 = icmp eq i32 %202, 3, !dbg !2443
  br i1 %203, label %204, label %217, !dbg !2444

; <label>:204:                                    ; preds = %195
  %205 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2445
  %206 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %205, i32 0, i32 38, !dbg !2446
  %207 = load i8, i8* %206, align 2, !dbg !2446
  %208 = zext i8 %207 to i32, !dbg !2447
  %209 = sub i32 256, %208, !dbg !2448
  %210 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2449
  %211 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %210, i32 0, i32 48, !dbg !2450
  %212 = load i32, i32* %211, align 4, !dbg !2450
  %213 = udiv i32 %212, 10000, !dbg !2451
  %214 = mul i32 %209, %213, !dbg !2452
  %215 = mul i32 %214, 625, !dbg !2453
  %216 = udiv i32 %215, 16, !dbg !2454
  br label %225, !dbg !2455

; <label>:217:                                    ; preds = %195
  %218 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2456
  %219 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %218, i32 0, i32 38, !dbg !2457
  %220 = load i8, i8* %219, align 2, !dbg !2457
  %221 = zext i8 %220 to i32, !dbg !2458
  %222 = sub i32 256, %221, !dbg !2459
  %223 = mul i32 %222, 1000000, !dbg !2460
  %224 = udiv i32 %223, 256, !dbg !2461
  br label %225, !dbg !2462

; <label>:225:                                    ; preds = %217, %204
  %226 = phi i32 [ %216, %204 ], [ %224, %217 ], !dbg !2463
  %227 = add i32 %199, %226, !dbg !2464
  %228 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2465
  %229 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %228, i32 0, i32 70, !dbg !2466
  store i32 %227, i32* %229, align 8, !dbg !2467
  br label %230

; <label>:230:                                    ; preds = %225, %190
  %231 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2468
  %232 = getelementptr inbounds %struct._data, %struct._data* %231, i32 0, i32 20, !dbg !2470
  %233 = getelementptr inbounds %struct.lvs_syncd_config, %struct.lvs_syncd_config* %232, i32 0, i32 0, !dbg !2471
  %234 = load i8*, i8** %233, align 8, !dbg !2471
  %235 = icmp ne i8* %234, null, !dbg !2468
  br i1 %235, label %236, label %246, !dbg !2472

; <label>:236:                                    ; preds = %230
  %237 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2473
  %238 = getelementptr inbounds %struct._data, %struct._data* %237, i32 0, i32 20, !dbg !2474
  %239 = getelementptr inbounds %struct.lvs_syncd_config, %struct.lvs_syncd_config* %238, i32 0, i32 1, !dbg !2475
  %240 = load %struct._vrrp_t*, %struct._vrrp_t** %239, align 8, !dbg !2475
  %241 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2476
  %242 = icmp eq %struct._vrrp_t* %240, %241, !dbg !2477
  br i1 %242, label %243, label %246, !dbg !2478

; <label>:243:                                    ; preds = %236
  %244 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !2480
  %245 = getelementptr inbounds %struct._data, %struct._data* %244, i32 0, i32 20, !dbg !2481
  call void @ipvs_syncd_cmd(i32 1163, %struct.lvs_syncd_config* %245, i32 2, i1 zeroext false, i1 zeroext false), !dbg !2482
  br label %246, !dbg !2482

; <label>:246:                                    ; preds = %243, %236, %230
  %247 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2483
  call void @vrrp_restore_interface(%struct._vrrp_t* %247, i1 zeroext false, i1 zeroext false), !dbg !2484
  %248 = load i8, i8* %6, align 1, !dbg !2485
  %249 = trunc i8 %248 to i1, !dbg !2485
  br i1 %249, label %250, label %287, !dbg !2487

; <label>:250:                                    ; preds = %246
  %251 = load i32, i32* %7, align 4, !dbg !2488
  %252 = icmp ne i32 %251, 3, !dbg !2490
  br i1 %252, label %253, label %287, !dbg !2491

; <label>:253:                                    ; preds = %250
  %254 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2492
  %255 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %254, i32 0, i32 15, !dbg !2494
  %256 = load i32, i32* %255, align 4, !dbg !2494
  %257 = icmp ne i32 %256, 0, !dbg !2492
  br i1 %257, label %287, label %258, !dbg !2495

; <label>:258:                                    ; preds = %253
  %259 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2496
  %260 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %259, i32 0, i32 2, !dbg !2498
  %261 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %260, align 8, !dbg !2498
  %262 = icmp ne %struct._vrrp_sgroup* %261, null, !dbg !2496
  br i1 %262, label %263, label %270, !dbg !2499

; <label>:263:                                    ; preds = %258
  %264 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2500
  %265 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %264, i32 0, i32 2, !dbg !2502
  %266 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %265, align 8, !dbg !2502
  %267 = getelementptr inbounds %struct._vrrp_sgroup, %struct._vrrp_sgroup* %266, i32 0, i32 4, !dbg !2503
  %268 = load i32, i32* %267, align 4, !dbg !2503
  %269 = icmp ne i32 %268, 0, !dbg !2500
  br i1 %269, label %287, label %270, !dbg !2504

; <label>:270:                                    ; preds = %263, %258
  %271 = load i8, i8* %6, align 1, !dbg !2505
  %272 = trunc i8 %271 to i1, !dbg !2505
  br i1 %272, label %273, label %279, !dbg !2508

; <label>:273:                                    ; preds = %270
  %274 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2509
  %275 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %274, i32 0, i32 55, !dbg !2511
  store i32 1, i32* %275, align 8, !dbg !2512
  %276 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2513
  %277 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %276, i32 0, i32 1, !dbg !2514
  %278 = load i8*, i8** %277, align 8, !dbg !2514
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0), i8* %278), !dbg !2515
  br label %285, !dbg !2516

; <label>:279:                                    ; preds = %270
  %280 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2517
  %281 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %280, i32 0, i32 55, !dbg !2519
  store i32 3, i32* %281, align 8, !dbg !2520
  %282 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2521
  %283 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %282, i32 0, i32 1, !dbg !2522
  %284 = load i8*, i8** %283, align 8, !dbg !2522
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0), i8* %284), !dbg !2523
  br label %285

; <label>:285:                                    ; preds = %279, %273
  %286 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2524
  call void @send_instance_notifies(%struct._vrrp_t* %286), !dbg !2525
  br label %287, !dbg !2526

; <label>:287:                                    ; preds = %285, %263, %253, %250, %246
  %288 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2527
  %289 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %288, i32 0, i32 24, !dbg !2528
  %290 = call { i64, i64 } @timer_now(), !dbg !2529
  %291 = bitcast %struct.timeval* %9 to { i64, i64 }*, !dbg !2529
  %292 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %291, i32 0, i32 0, !dbg !2529
  %293 = extractvalue { i64, i64 } %290, 0, !dbg !2529
  store i64 %293, i64* %292, align 8, !dbg !2529
  %294 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %291, i32 0, i32 1, !dbg !2529
  %295 = extractvalue { i64, i64 } %290, 1, !dbg !2529
  store i64 %295, i64* %294, align 8, !dbg !2529
  %296 = bitcast %struct.timeval* %289 to i8*, !dbg !2529
  %297 = bitcast %struct.timeval* %9 to i8*, !dbg !2529
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %296, i8* %297, i64 16, i32 8, i1 false), !dbg !2530
  br label %298

; <label>:298:                                    ; preds = %287, %165
  br label %299, !dbg !2531

; <label>:299:                                    ; preds = %298
  %300 = load %struct._element*, %struct._element** %5, align 8, !dbg !2532
  %301 = getelementptr inbounds %struct._element, %struct._element* %300, i32 0, i32 0, !dbg !2534
  %302 = load %struct._element*, %struct._element** %301, align 8, !dbg !2534
  store %struct._element* %302, %struct._element** %5, align 8, !dbg !2535
  br label %58, !dbg !2536, !llvm.loop !2537

; <label>:303:                                    ; preds = %58
  ret void, !dbg !2539
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_init_sands(%struct._list*) #0 !dbg !2540 {
  %2 = alloca %struct._list*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca %struct._element*, align 8
  store %struct._list* %0, %struct._list** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._list** %2, metadata !2541, metadata !572), !dbg !2542
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !2543, metadata !572), !dbg !2544
  call void @llvm.dbg.declare(metadata %struct._element** %4, metadata !2545, metadata !572), !dbg !2546
  %5 = load %struct._list*, %struct._list** %2, align 8, !dbg !2547
  %6 = icmp ne %struct._list* %5, null, !dbg !2549
  br i1 %6, label %8, label %7, !dbg !2550

; <label>:7:                                      ; preds = %1
  br label %12, !dbg !2551

; <label>:8:                                      ; preds = %1
  %9 = load %struct._list*, %struct._list** %2, align 8, !dbg !2553
  %10 = getelementptr inbounds %struct._list, %struct._list* %9, i32 0, i32 0, !dbg !2555
  %11 = load %struct._element*, %struct._element** %10, align 8, !dbg !2555
  br label %12, !dbg !2556

; <label>:12:                                     ; preds = %8, %7
  %13 = phi %struct._element* [ null, %7 ], [ %11, %8 ], !dbg !2557
  store %struct._element* %13, %struct._element** %4, align 8, !dbg !2559
  br label %14, !dbg !2560

; <label>:14:                                     ; preds = %25, %12
  %15 = load %struct._element*, %struct._element** %4, align 8, !dbg !2561
  %16 = icmp ne %struct._element* %15, null, !dbg !2564
  br i1 %16, label %17, label %29, !dbg !2564

; <label>:17:                                     ; preds = %14
  %18 = load %struct._element*, %struct._element** %4, align 8, !dbg !2565
  %19 = getelementptr inbounds %struct._element, %struct._element* %18, i32 0, i32 2, !dbg !2567
  %20 = load i8*, i8** %19, align 8, !dbg !2567
  %21 = bitcast i8* %20 to %struct._vrrp_t*, !dbg !2568
  store %struct._vrrp_t* %21, %struct._vrrp_t** %3, align 8, !dbg !2569
  %22 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2570
  call void @vrrp_init_instance_sands(%struct._vrrp_t* %22), !dbg !2571
  %23 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !2572
  %24 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %23, i32 0, i32 57, !dbg !2573
  store i8 0, i8* %24, align 8, !dbg !2574
  br label %25, !dbg !2575

; <label>:25:                                     ; preds = %17
  %26 = load %struct._element*, %struct._element** %4, align 8, !dbg !2576
  %27 = getelementptr inbounds %struct._element, %struct._element* %26, i32 0, i32 0, !dbg !2578
  %28 = load %struct._element*, %struct._element** %27, align 8, !dbg !2578
  store %struct._element* %28, %struct._element** %4, align 8, !dbg !2579
  br label %14, !dbg !2580, !llvm.loop !2581

; <label>:29:                                     ; preds = %14
  ret void, !dbg !2583
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_init_script(%struct._list*) #0 !dbg !2584 {
  %2 = alloca %struct._list*, align 8
  %3 = alloca %struct._vrrp_script*, align 8
  %4 = alloca %struct._element*, align 8
  store %struct._list* %0, %struct._list** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._list** %2, metadata !2585, metadata !572), !dbg !2586
  call void @llvm.dbg.declare(metadata %struct._vrrp_script** %3, metadata !2587, metadata !572), !dbg !2608
  call void @llvm.dbg.declare(metadata %struct._element** %4, metadata !2609, metadata !572), !dbg !2610
  %5 = load %struct._list*, %struct._list** %2, align 8, !dbg !2611
  %6 = icmp ne %struct._list* %5, null, !dbg !2613
  br i1 %6, label %8, label %7, !dbg !2614

; <label>:7:                                      ; preds = %1
  br label %12, !dbg !2615

; <label>:8:                                      ; preds = %1
  %9 = load %struct._list*, %struct._list** %2, align 8, !dbg !2617
  %10 = getelementptr inbounds %struct._list, %struct._list* %9, i32 0, i32 0, !dbg !2619
  %11 = load %struct._element*, %struct._element** %10, align 8, !dbg !2619
  br label %12, !dbg !2620

; <label>:12:                                     ; preds = %8, %7
  %13 = phi %struct._element* [ null, %7 ], [ %11, %8 ], !dbg !2621
  store %struct._element* %13, %struct._element** %4, align 8, !dbg !2623
  br label %14, !dbg !2624

; <label>:14:                                     ; preds = %51, %12
  %15 = load %struct._element*, %struct._element** %4, align 8, !dbg !2625
  %16 = icmp ne %struct._element* %15, null, !dbg !2628
  br i1 %16, label %17, label %55, !dbg !2628

; <label>:17:                                     ; preds = %14
  %18 = load %struct._element*, %struct._element** %4, align 8, !dbg !2629
  %19 = getelementptr inbounds %struct._element, %struct._element* %18, i32 0, i32 2, !dbg !2631
  %20 = load i8*, i8** %19, align 8, !dbg !2631
  %21 = bitcast i8* %20 to %struct._vrrp_script*, !dbg !2632
  store %struct._vrrp_script* %21, %struct._vrrp_script** %3, align 8, !dbg !2633
  %22 = load %struct._vrrp_script*, %struct._vrrp_script** %3, align 8, !dbg !2634
  %23 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %22, i32 0, i32 11, !dbg !2636
  %24 = load i32, i32* %23, align 8, !dbg !2636
  %25 = icmp eq i32 %24, 1, !dbg !2637
  br i1 %25, label %26, label %33, !dbg !2638

; <label>:26:                                     ; preds = %17
  %27 = load %struct._vrrp_script*, %struct._vrrp_script** %3, align 8, !dbg !2639
  %28 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %27, i32 0, i32 6, !dbg !2640
  %29 = load i32, i32* %28, align 8, !dbg !2640
  %30 = sub nsw i32 %29, 1, !dbg !2641
  %31 = load %struct._vrrp_script*, %struct._vrrp_script** %3, align 8, !dbg !2642
  %32 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %31, i32 0, i32 5, !dbg !2643
  store i32 %30, i32* %32, align 4, !dbg !2644
  br label %42, !dbg !2642

; <label>:33:                                     ; preds = %17
  %34 = load %struct._vrrp_script*, %struct._vrrp_script** %3, align 8, !dbg !2645
  %35 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %34, i32 0, i32 11, !dbg !2647
  %36 = load i32, i32* %35, align 8, !dbg !2647
  %37 = icmp eq i32 %36, 2, !dbg !2648
  br i1 %37, label %38, label %41, !dbg !2649

; <label>:38:                                     ; preds = %33
  %39 = load %struct._vrrp_script*, %struct._vrrp_script** %3, align 8, !dbg !2650
  %40 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %39, i32 0, i32 5, !dbg !2651
  store i32 0, i32* %40, align 4, !dbg !2652
  br label %41, !dbg !2650

; <label>:41:                                     ; preds = %38, %33
  br label %42

; <label>:42:                                     ; preds = %41, %26
  %43 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !2653
  %44 = load %struct._vrrp_script*, %struct._vrrp_script** %3, align 8, !dbg !2654
  %45 = bitcast %struct._vrrp_script* %44 to i8*, !dbg !2654
  %46 = load %struct._vrrp_script*, %struct._vrrp_script** %3, align 8, !dbg !2655
  %47 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %46, i32 0, i32 2, !dbg !2656
  %48 = load i64, i64* %47, align 8, !dbg !2656
  %49 = trunc i64 %48 to i32, !dbg !2657
  %50 = call %struct._thread* @thread_add_event(%struct._thread_master* %43, i32 (%struct._thread*)* @vrrp_script_thread, i8* %45, i32 %49), !dbg !2658
  br label %51, !dbg !2659

; <label>:51:                                     ; preds = %42
  %52 = load %struct._element*, %struct._element** %4, align 8, !dbg !2660
  %53 = getelementptr inbounds %struct._element, %struct._element* %52, i32 0, i32 0, !dbg !2662
  %54 = load %struct._element*, %struct._element** %53, align 8, !dbg !2662
  store %struct._element* %54, %struct._element** %4, align 8, !dbg !2663
  br label %14, !dbg !2664, !llvm.loop !2665

; <label>:55:                                     ; preds = %14
  %56 = load %struct._list*, %struct._list** %2, align 8, !dbg !2667
  %57 = getelementptr inbounds %struct._list, %struct._list* %56, i32 0, i32 2, !dbg !2669
  %58 = load i32, i32* %57, align 8, !dbg !2669
  %59 = icmp ne i32 %58, 0, !dbg !2670
  br i1 %59, label %60, label %65, !dbg !2671

; <label>:60:                                     ; preds = %55
  %61 = load %struct._list*, %struct._list** %2, align 8, !dbg !2672
  %62 = getelementptr inbounds %struct._list, %struct._list* %61, i32 0, i32 2, !dbg !2673
  %63 = load i32, i32* %62, align 8, !dbg !2673
  %64 = zext i32 %63 to i64, !dbg !2674
  call void @set_child_finder(void (%struct._thread*)* inttoptr (i64 1 to void (%struct._thread*)*), %struct._thread* (i32)* null, void (%struct._thread*)* null, i1 (i64)* null, void ()* null, i64 %64), !dbg !2675
  br label %65, !dbg !2675

; <label>:65:                                     ; preds = %60, %55
  ret void, !dbg !2676
}

declare void @send_group_notifies(%struct._vrrp_sgroup*) #2

declare void @ipvs_syncd_cmd(i32, %struct.lvs_syncd_config*, i32, i1 zeroext, i1 zeroext) #2

declare void @vrrp_restore_interface(%struct._vrrp_t*, i1 zeroext, i1 zeroext) #2

declare void @log_message(i32, i8*, ...) #2

declare void @send_instance_notifies(%struct._vrrp_t*) #2

declare { i64, i64 } @timer_now() #2

declare %struct._thread* @thread_add_event(%struct._thread_master*, i32 (%struct._thread*)*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @vrrp_script_thread(%struct._thread*) #0 !dbg !2677 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._thread*, align 8
  %4 = alloca %struct._vrrp_script*, align 8
  %5 = alloca i32, align 4
  store %struct._thread* %0, %struct._thread** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %3, metadata !2678, metadata !572), !dbg !2679
  call void @llvm.dbg.declare(metadata %struct._vrrp_script** %4, metadata !2680, metadata !572), !dbg !2681
  %6 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !2682
  %7 = getelementptr inbounds %struct._thread, %struct._thread* %6, i32 0, i32 4, !dbg !2683
  %8 = load i8*, i8** %7, align 8, !dbg !2683
  %9 = bitcast i8* %8 to %struct._vrrp_script*, !dbg !2684
  store %struct._vrrp_script* %9, %struct._vrrp_script** %4, align 8, !dbg !2681
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2685, metadata !572), !dbg !2686
  %10 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !2687
  %11 = getelementptr inbounds %struct._thread, %struct._thread* %10, i32 0, i32 2, !dbg !2688
  %12 = load %struct._thread_master*, %struct._thread_master** %11, align 8, !dbg !2688
  %13 = load %struct._vrrp_script*, %struct._vrrp_script** %4, align 8, !dbg !2689
  %14 = bitcast %struct._vrrp_script* %13 to i8*, !dbg !2689
  %15 = load %struct._vrrp_script*, %struct._vrrp_script** %4, align 8, !dbg !2690
  %16 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %15, i32 0, i32 2, !dbg !2691
  %17 = load i64, i64* %16, align 8, !dbg !2691
  %18 = call %struct._thread* @thread_add_timer(%struct._thread_master* %12, i32 (%struct._thread*)* @vrrp_script_thread, i8* %14, i64 %17), !dbg !2692
  %19 = load %struct._vrrp_script*, %struct._vrrp_script** %4, align 8, !dbg !2693
  %20 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %19, i32 0, i32 10, !dbg !2695
  %21 = load i32, i32* %20, align 4, !dbg !2695
  %22 = icmp ne i32 %21, 0, !dbg !2696
  br i1 %22, label %23, label %32, !dbg !2697

; <label>:23:                                     ; preds = %1
  %24 = load %struct._vrrp_script*, %struct._vrrp_script** %4, align 8, !dbg !2698
  %25 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %24, i32 0, i32 0, !dbg !2700
  %26 = load i8*, i8** %25, align 8, !dbg !2700
  %27 = load %struct._vrrp_script*, %struct._vrrp_script** %4, align 8, !dbg !2701
  %28 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %27, i32 0, i32 10, !dbg !2702
  %29 = load i32, i32* %28, align 4, !dbg !2702
  %30 = icmp eq i32 %29, 1, !dbg !2703
  %31 = select i1 %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), !dbg !2701
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i32 0, i32 0), i8* %26, i8* %31), !dbg !2704
  store i32 0, i32* %2, align 4, !dbg !2705
  br label %62, !dbg !2705

; <label>:32:                                     ; preds = %1
  %33 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !2706
  %34 = getelementptr inbounds %struct._thread, %struct._thread* %33, i32 0, i32 2, !dbg !2707
  %35 = load %struct._thread_master*, %struct._thread_master** %34, align 8, !dbg !2707
  %36 = load %struct._vrrp_script*, %struct._vrrp_script** %4, align 8, !dbg !2708
  %37 = bitcast %struct._vrrp_script* %36 to i8*, !dbg !2708
  %38 = load %struct._vrrp_script*, %struct._vrrp_script** %4, align 8, !dbg !2709
  %39 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %38, i32 0, i32 3, !dbg !2710
  %40 = load i64, i64* %39, align 8, !dbg !2710
  %41 = icmp ne i64 %40, 0, !dbg !2711
  br i1 %41, label %42, label %46, !dbg !2711

; <label>:42:                                     ; preds = %32
  %43 = load %struct._vrrp_script*, %struct._vrrp_script** %4, align 8, !dbg !2712
  %44 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %43, i32 0, i32 3, !dbg !2714
  %45 = load i64, i64* %44, align 8, !dbg !2714
  br label %50, !dbg !2715

; <label>:46:                                     ; preds = %32
  %47 = load %struct._vrrp_script*, %struct._vrrp_script** %4, align 8, !dbg !2716
  %48 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %47, i32 0, i32 2, !dbg !2718
  %49 = load i64, i64* %48, align 8, !dbg !2718
  br label %50, !dbg !2719

; <label>:50:                                     ; preds = %46, %42
  %51 = phi i64 [ %45, %42 ], [ %49, %46 ], !dbg !2720
  %52 = load %struct._vrrp_script*, %struct._vrrp_script** %4, align 8, !dbg !2722
  %53 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %52, i32 0, i32 1, !dbg !2723
  %54 = call i32 @system_call_script(%struct._thread_master* %35, i32 (%struct._thread*)* @vrrp_script_child_thread, i8* %37, i64 %51, %struct._notify_script* %53), !dbg !2724
  store i32 %54, i32* %5, align 4, !dbg !2725
  %55 = load i32, i32* %5, align 4, !dbg !2726
  %56 = icmp ne i32 %55, 0, !dbg !2726
  br i1 %56, label %60, label %57, !dbg !2728

; <label>:57:                                     ; preds = %50
  %58 = load %struct._vrrp_script*, %struct._vrrp_script** %4, align 8, !dbg !2729
  %59 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %58, i32 0, i32 10, !dbg !2730
  store i32 1, i32* %59, align 4, !dbg !2731
  br label %60, !dbg !2729

; <label>:60:                                     ; preds = %57, %50
  %61 = load i32, i32* %5, align 4, !dbg !2732
  store i32 %61, i32* %2, align 4, !dbg !2733
  br label %62, !dbg !2733

; <label>:62:                                     ; preds = %60, %23
  %63 = load i32, i32* %2, align 4, !dbg !2734
  ret i32 %63, !dbg !2734
}

declare void @set_child_finder(void (%struct._thread*)*, %struct._thread* (i32)*, void (%struct._thread*)*, i1 (i64)*, void ()*, i64) #2

declare i32 @system_call_script(%struct._thread_master*, i32 (%struct._thread*)*, i8*, i64, %struct._notify_script*) #2

; Function Attrs: nounwind uwtable
define internal i32 @vrrp_script_child_thread(%struct._thread*) #0 !dbg !2735 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._thread*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct._vrrp_script*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %union.anon.5, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.anon.6, align 4
  %16 = alloca %union.anon.7, align 4
  %17 = alloca %union.anon.8, align 4
  %18 = alloca %union.anon.9, align 4
  %19 = alloca %union.anon.10, align 4
  %20 = alloca %union.anon.11, align 4
  %21 = alloca %union.anon.12, align 4
  store %struct._thread* %0, %struct._thread** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %3, metadata !2736, metadata !572), !dbg !2737
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2738, metadata !572), !dbg !2739
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2740, metadata !572), !dbg !2741
  call void @llvm.dbg.declare(metadata %struct._vrrp_script** %6, metadata !2742, metadata !572), !dbg !2743
  %22 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !2744
  %23 = getelementptr inbounds %struct._thread, %struct._thread* %22, i32 0, i32 4, !dbg !2745
  %24 = load i8*, i8** %23, align 8, !dbg !2745
  %25 = bitcast i8* %24 to %struct._vrrp_script*, !dbg !2746
  store %struct._vrrp_script* %25, %struct._vrrp_script** %6, align 8, !dbg !2743
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2747, metadata !572), !dbg !2748
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2749, metadata !572), !dbg !2750
  store i32 0, i32* %8, align 4, !dbg !2750
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2751, metadata !572), !dbg !2752
  store i8* null, i8** %9, align 8, !dbg !2752
  call void @llvm.dbg.declare(metadata i8* %10, metadata !2753, metadata !572), !dbg !2754
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2755, metadata !572), !dbg !2756
  store i8* null, i8** %11, align 8, !dbg !2756
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2757, metadata !572), !dbg !2758
  %26 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !2759
  %27 = getelementptr inbounds %struct._thread, %struct._thread* %26, i32 0, i32 1, !dbg !2761
  %28 = load i32, i32* %27, align 8, !dbg !2761
  %29 = icmp eq i32 %28, 10, !dbg !2762
  br i1 %29, label %30, label %110, !dbg !2763

; <label>:30:                                     ; preds = %1
  %31 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !2764
  %32 = getelementptr inbounds %struct._thread, %struct._thread* %31, i32 0, i32 6, !dbg !2766
  %33 = bitcast %union.anon.0* %32 to %struct.anon*, !dbg !2767
  %34 = getelementptr inbounds %struct.anon, %struct.anon* %33, i32 0, i32 0, !dbg !2768
  %35 = load i32, i32* %34, align 8, !dbg !2768
  store i32 %35, i32* %5, align 4, !dbg !2769
  %36 = load %struct._vrrp_script*, %struct._vrrp_script** %6, align 8, !dbg !2770
  %37 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %36, i32 0, i32 10, !dbg !2772
  %38 = load i32, i32* %37, align 4, !dbg !2772
  %39 = icmp eq i32 %38, 1, !dbg !2773
  br i1 %39, label %40, label %43, !dbg !2774

; <label>:40:                                     ; preds = %30
  %41 = load %struct._vrrp_script*, %struct._vrrp_script** %6, align 8, !dbg !2775
  %42 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %41, i32 0, i32 10, !dbg !2777
  store i32 2, i32* %42, align 4, !dbg !2778
  store i32 15, i32* %7, align 4, !dbg !2779
  store i32 2, i32* %8, align 4, !dbg !2780
  br label %60, !dbg !2781

; <label>:43:                                     ; preds = %30
  %44 = load %struct._vrrp_script*, %struct._vrrp_script** %6, align 8, !dbg !2782
  %45 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %44, i32 0, i32 10, !dbg !2785
  %46 = load i32, i32* %45, align 4, !dbg !2785
  %47 = icmp eq i32 %46, 2, !dbg !2786
  br i1 %47, label %48, label %51, !dbg !2782

; <label>:48:                                     ; preds = %43
  %49 = load %struct._vrrp_script*, %struct._vrrp_script** %6, align 8, !dbg !2787
  %50 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %49, i32 0, i32 10, !dbg !2789
  store i32 3, i32* %50, align 4, !dbg !2790
  store i32 9, i32* %7, align 4, !dbg !2791
  store i32 2, i32* %8, align 4, !dbg !2792
  br label %59, !dbg !2793

; <label>:51:                                     ; preds = %43
  %52 = load %struct._vrrp_script*, %struct._vrrp_script** %6, align 8, !dbg !2794
  %53 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %52, i32 0, i32 10, !dbg !2797
  %54 = load i32, i32* %53, align 4, !dbg !2797
  %55 = icmp eq i32 %54, 3, !dbg !2798
  br i1 %55, label %56, label %58, !dbg !2794

; <label>:56:                                     ; preds = %51
  %57 = load i32, i32* %5, align 4, !dbg !2799
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i32 0, i32 0), i32 %57), !dbg !2801
  store i32 9, i32* %7, align 4, !dbg !2802
  store i32 10, i32* %8, align 4, !dbg !2803
  br label %58, !dbg !2804

; <label>:58:                                     ; preds = %56, %51
  br label %59

; <label>:59:                                     ; preds = %58, %48
  br label %60

; <label>:60:                                     ; preds = %59, %40
  %61 = load i32, i32* %8, align 4, !dbg !2805
  %62 = icmp ne i32 %61, 0, !dbg !2805
  br i1 %62, label %63, label %84, !dbg !2807

; <label>:63:                                     ; preds = %60
  %64 = load i32, i32* %5, align 4, !dbg !2808
  %65 = sub nsw i32 0, %64, !dbg !2811
  %66 = load i32, i32* %7, align 4, !dbg !2812
  %67 = call i32 @kill(i32 %65, i32 %66) #7, !dbg !2813
  %68 = icmp ne i32 %67, 0, !dbg !2813
  br i1 %68, label %83, label %69, !dbg !2814

; <label>:69:                                     ; preds = %63
  %70 = load i32, i32* %7, align 4, !dbg !2815
  %71 = load %struct._vrrp_script*, %struct._vrrp_script** %6, align 8, !dbg !2817
  %72 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %71, i32 0, i32 1, !dbg !2818
  %73 = getelementptr inbounds %struct._notify_script, %struct._notify_script* %72, i32 0, i32 0, !dbg !2819
  %74 = load i8**, i8*** %73, align 8, !dbg !2819
  %75 = getelementptr inbounds i8*, i8** %74, i64 0, !dbg !2817
  %76 = load i8*, i8** %75, align 8, !dbg !2817
  %77 = load i32, i32* %5, align 4, !dbg !2820
  %78 = load %struct._vrrp_script*, %struct._vrrp_script** %6, align 8, !dbg !2821
  %79 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %78, i32 0, i32 10, !dbg !2822
  %80 = load i32, i32* %79, align 4, !dbg !2822
  %81 = call i32* @__errno_location() #1, !dbg !2823
  %82 = load i32, i32* %81, align 4, !dbg !2824
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i32 0, i32 0), i32 %70, i8* %76, i32 %77, i32 %80, i32 %82), !dbg !2825
  store i32 1000, i32* %8, align 4, !dbg !2827
  br label %83, !dbg !2828

; <label>:83:                                     ; preds = %69, %63
  br label %95, !dbg !2829

; <label>:84:                                     ; preds = %60
  %85 = load %struct._vrrp_script*, %struct._vrrp_script** %6, align 8, !dbg !2830
  %86 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %85, i32 0, i32 10, !dbg !2833
  %87 = load i32, i32* %86, align 4, !dbg !2833
  %88 = icmp ne i32 %87, 0, !dbg !2834
  br i1 %88, label %89, label %94, !dbg !2830

; <label>:89:                                     ; preds = %84
  %90 = load i32, i32* %5, align 4, !dbg !2835
  %91 = load %struct._vrrp_script*, %struct._vrrp_script** %6, align 8, !dbg !2837
  %92 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %91, i32 0, i32 10, !dbg !2838
  %93 = load i32, i32* %92, align 4, !dbg !2838
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i32 0, i32 0), i32 %90, i32 %93), !dbg !2839
  store i32 10, i32* %8, align 4, !dbg !2840
  br label %94, !dbg !2841

; <label>:94:                                     ; preds = %89, %84
  br label %95

; <label>:95:                                     ; preds = %94, %83
  %96 = load i32, i32* %8, align 4, !dbg !2842
  %97 = icmp ne i32 %96, 0, !dbg !2842
  br i1 %97, label %98, label %109, !dbg !2844

; <label>:98:                                     ; preds = %95
  %99 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !2845
  %100 = getelementptr inbounds %struct._thread, %struct._thread* %99, i32 0, i32 2, !dbg !2846
  %101 = load %struct._thread_master*, %struct._thread_master** %100, align 8, !dbg !2846
  %102 = load %struct._vrrp_script*, %struct._vrrp_script** %6, align 8, !dbg !2847
  %103 = bitcast %struct._vrrp_script* %102 to i8*, !dbg !2847
  %104 = load i32, i32* %5, align 4, !dbg !2848
  %105 = load i32, i32* %8, align 4, !dbg !2849
  %106 = mul i32 %105, 1000000, !dbg !2850
  %107 = zext i32 %106 to i64, !dbg !2849
  %108 = call %struct._thread* @thread_add_child(%struct._thread_master* %101, i32 (%struct._thread*)* @vrrp_script_child_thread, i8* %103, i32 %104, i64 %107), !dbg !2851
  br label %109, !dbg !2851

; <label>:109:                                    ; preds = %98, %95
  store i32 0, i32* %2, align 4, !dbg !2852
  br label %334, !dbg !2852

; <label>:110:                                    ; preds = %1
  %111 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !2853
  %112 = getelementptr inbounds %struct._thread, %struct._thread* %111, i32 0, i32 6, !dbg !2854
  %113 = bitcast %union.anon.0* %112 to %struct.anon*, !dbg !2855
  %114 = getelementptr inbounds %struct.anon, %struct.anon* %113, i32 0, i32 1, !dbg !2856
  %115 = load i32, i32* %114, align 4, !dbg !2856
  store i32 %115, i32* %4, align 4, !dbg !2857
  %116 = bitcast %union.anon.5* %13 to i32*, !dbg !2858
  %117 = load i32, i32* %4, align 4, !dbg !2860
  store i32 %117, i32* %116, align 4, !dbg !2858
  %118 = bitcast %union.anon.5* %13 to i32*, !dbg !2861
  %119 = load i32, i32* %118, align 4, !dbg !2861
  %120 = and i32 %119, 127, !dbg !2862
  %121 = icmp eq i32 %120, 0, !dbg !2858
  br i1 %121, label %122, label %149, !dbg !2863

; <label>:122:                                    ; preds = %110
  call void @llvm.dbg.declare(metadata i32* %14, metadata !2864, metadata !572), !dbg !2866
  %123 = bitcast %union.anon.6* %15 to i32*, !dbg !2867
  %124 = load i32, i32* %4, align 4, !dbg !2868
  store i32 %124, i32* %123, align 4, !dbg !2867
  %125 = bitcast %union.anon.6* %15 to i32*, !dbg !2869
  %126 = load i32, i32* %125, align 4, !dbg !2869
  %127 = and i32 %126, 65280, !dbg !2870
  %128 = ashr i32 %127, 8, !dbg !2871
  store i32 %128, i32* %14, align 4, !dbg !2866
  %129 = load i32, i32* %14, align 4, !dbg !2872
  %130 = load %struct._vrrp_script*, %struct._vrrp_script** %6, align 8, !dbg !2874
  %131 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %130, i32 0, i32 9, !dbg !2875
  %132 = load i32, i32* %131, align 8, !dbg !2875
  %133 = icmp ne i32 %129, %132, !dbg !2876
  br i1 %133, label %134, label %139, !dbg !2877

; <label>:134:                                    ; preds = %122
  %135 = load %struct._vrrp_script*, %struct._vrrp_script** %6, align 8, !dbg !2878
  %136 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %135, i32 0, i32 0, !dbg !2879
  %137 = load i8*, i8** %136, align 8, !dbg !2879
  %138 = load i32, i32* %14, align 4, !dbg !2880
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0), i8* %137, i32 %138), !dbg !2881
  br label %139, !dbg !2881

; <label>:139:                                    ; preds = %134, %122
  %140 = load i32, i32* %14, align 4, !dbg !2882
  %141 = icmp eq i32 %140, 0, !dbg !2884
  br i1 %141, label %142, label %143, !dbg !2885

; <label>:142:                                    ; preds = %139
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8** %9, align 8, !dbg !2886
  store i8 1, i8* %10, align 1, !dbg !2888
  br label %145, !dbg !2889

; <label>:143:                                    ; preds = %139
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8** %9, align 8, !dbg !2890
  store i8 0, i8* %10, align 1, !dbg !2892
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0), i8** %11, align 8, !dbg !2893
  %144 = load i32, i32* %14, align 4, !dbg !2894
  store i32 %144, i32* %12, align 4, !dbg !2895
  br label %145

; <label>:145:                                    ; preds = %143, %142
  %146 = load i32, i32* %14, align 4, !dbg !2896
  %147 = load %struct._vrrp_script*, %struct._vrrp_script** %6, align 8, !dbg !2897
  %148 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %147, i32 0, i32 9, !dbg !2898
  store i32 %146, i32* %148, align 8, !dbg !2899
  br label %221, !dbg !2900

; <label>:149:                                    ; preds = %110
  %150 = bitcast %union.anon.7* %16 to i32*, !dbg !2901
  %151 = load i32, i32* %4, align 4, !dbg !2903
  store i32 %151, i32* %150, align 4, !dbg !2901
  %152 = bitcast %union.anon.7* %16 to i32*, !dbg !2904
  %153 = load i32, i32* %152, align 4, !dbg !2904
  %154 = and i32 %153, 127, !dbg !2905
  %155 = add nsw i32 %154, 1, !dbg !2901
  %156 = trunc i32 %155 to i8, !dbg !2906
  %157 = sext i8 %156 to i32, !dbg !2906
  %158 = ashr i32 %157, 1, !dbg !2907
  %159 = icmp sgt i32 %158, 0, !dbg !2908
  br i1 %159, label %160, label %220, !dbg !2909

; <label>:160:                                    ; preds = %149
  %161 = load %struct._vrrp_script*, %struct._vrrp_script** %6, align 8, !dbg !2910
  %162 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %161, i32 0, i32 10, !dbg !2913
  %163 = load i32, i32* %162, align 4, !dbg !2913
  %164 = icmp eq i32 %163, 2, !dbg !2914
  br i1 %164, label %165, label %181, !dbg !2915

; <label>:165:                                    ; preds = %160
  %166 = bitcast %union.anon.8* %17 to i32*, !dbg !2916
  %167 = load i32, i32* %4, align 4, !dbg !2918
  store i32 %167, i32* %166, align 4, !dbg !2916
  %168 = bitcast %union.anon.8* %17 to i32*, !dbg !2919
  %169 = load i32, i32* %168, align 4, !dbg !2919
  %170 = and i32 %169, 127, !dbg !2920
  %171 = icmp eq i32 %170, 15, !dbg !2921
  br i1 %171, label %172, label %181, !dbg !2922

; <label>:172:                                    ; preds = %165
  %173 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !2923
  %174 = getelementptr inbounds %struct._thread, %struct._thread* %173, i32 0, i32 6, !dbg !2925
  %175 = bitcast %union.anon.0* %174 to %struct.anon*, !dbg !2926
  %176 = getelementptr inbounds %struct.anon, %struct.anon* %175, i32 0, i32 0, !dbg !2927
  %177 = load i32, i32* %176, align 8, !dbg !2927
  store i32 %177, i32* %5, align 4, !dbg !2928
  %178 = load i32, i32* %5, align 4, !dbg !2929
  %179 = sub nsw i32 0, %178, !dbg !2930
  %180 = call i32 @kill(i32 %179, i32 9) #7, !dbg !2931
  br label %181, !dbg !2932

; <label>:181:                                    ; preds = %172, %165, %160
  %182 = load %struct._vrrp_script*, %struct._vrrp_script** %6, align 8, !dbg !2933
  %183 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %182, i32 0, i32 10, !dbg !2935
  %184 = load i32, i32* %183, align 4, !dbg !2935
  %185 = icmp eq i32 %184, 2, !dbg !2936
  br i1 %185, label %186, label %193, !dbg !2937

; <label>:186:                                    ; preds = %181
  %187 = bitcast %union.anon.9* %18 to i32*, !dbg !2938
  %188 = load i32, i32* %4, align 4, !dbg !2940
  store i32 %188, i32* %187, align 4, !dbg !2938
  %189 = bitcast %union.anon.9* %18 to i32*, !dbg !2941
  %190 = load i32, i32* %189, align 4, !dbg !2941
  %191 = and i32 %190, 127, !dbg !2942
  %192 = icmp eq i32 %191, 15, !dbg !2943
  br i1 %192, label %212, label %193, !dbg !2944

; <label>:193:                                    ; preds = %186, %181
  %194 = load %struct._vrrp_script*, %struct._vrrp_script** %6, align 8, !dbg !2945
  %195 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %194, i32 0, i32 10, !dbg !2946
  %196 = load i32, i32* %195, align 4, !dbg !2946
  %197 = icmp eq i32 %196, 3, !dbg !2947
  br i1 %197, label %198, label %213, !dbg !2948

; <label>:198:                                    ; preds = %193
  %199 = bitcast %union.anon.10* %19 to i32*, !dbg !2949
  %200 = load i32, i32* %4, align 4, !dbg !2950
  store i32 %200, i32* %199, align 4, !dbg !2949
  %201 = bitcast %union.anon.10* %19 to i32*, !dbg !2951
  %202 = load i32, i32* %201, align 4, !dbg !2951
  %203 = and i32 %202, 127, !dbg !2952
  %204 = icmp eq i32 %203, 9, !dbg !2953
  br i1 %204, label %212, label %205, !dbg !2954

; <label>:205:                                    ; preds = %198
  %206 = bitcast %union.anon.11* %20 to i32*, !dbg !2955
  %207 = load i32, i32* %4, align 4, !dbg !2957
  store i32 %207, i32* %206, align 4, !dbg !2955
  %208 = bitcast %union.anon.11* %20 to i32*, !dbg !2958
  %209 = load i32, i32* %208, align 4, !dbg !2958
  %210 = and i32 %209, 127, !dbg !2959
  %211 = icmp eq i32 %210, 15, !dbg !2960
  br i1 %211, label %212, label %213, !dbg !2961

; <label>:212:                                    ; preds = %205, %198, %186
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8** %9, align 8, !dbg !2963
  br label %219, !dbg !2964

; <label>:213:                                    ; preds = %205, %193
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8** %9, align 8, !dbg !2965
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i8** %11, align 8, !dbg !2967
  %214 = bitcast %union.anon.12* %21 to i32*, !dbg !2968
  %215 = load i32, i32* %4, align 4, !dbg !2969
  store i32 %215, i32* %214, align 4, !dbg !2968
  %216 = bitcast %union.anon.12* %21 to i32*, !dbg !2970
  %217 = load i32, i32* %216, align 4, !dbg !2970
  %218 = and i32 %217, 127, !dbg !2971
  store i32 %218, i32* %12, align 4, !dbg !2972
  br label %219

; <label>:219:                                    ; preds = %213, %212
  store i8 0, i8* %10, align 1, !dbg !2973
  br label %220, !dbg !2974

; <label>:220:                                    ; preds = %219, %149
  br label %221

; <label>:221:                                    ; preds = %220, %145
  %222 = load i8*, i8** %9, align 8, !dbg !2975
  %223 = icmp ne i8* %222, null, !dbg !2975
  br i1 %223, label %224, label %329, !dbg !2977

; <label>:224:                                    ; preds = %221
  %225 = load i8, i8* %10, align 1, !dbg !2978
  %226 = trunc i8 %225 to i1, !dbg !2978
  br i1 %226, label %227, label %281, !dbg !2981

; <label>:227:                                    ; preds = %224
  %228 = load %struct._vrrp_script*, %struct._vrrp_script** %6, align 8, !dbg !2982
  %229 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %228, i32 0, i32 5, !dbg !2985
  %230 = load i32, i32* %229, align 4, !dbg !2985
  %231 = load %struct._vrrp_script*, %struct._vrrp_script** %6, align 8, !dbg !2986
  %232 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %231, i32 0, i32 6, !dbg !2987
  %233 = load i32, i32* %232, align 8, !dbg !2987
  %234 = sub nsw i32 %233, 1, !dbg !2988
  %235 = icmp slt i32 %230, %234, !dbg !2989
  br i1 %235, label %236, label %241, !dbg !2990

; <label>:236:                                    ; preds = %227
  %237 = load %struct._vrrp_script*, %struct._vrrp_script** %6, align 8, !dbg !2991
  %238 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %237, i32 0, i32 5, !dbg !2993
  %239 = load i32, i32* %238, align 4, !dbg !2994
  %240 = add nsw i32 %239, 1, !dbg !2994
  store i32 %240, i32* %238, align 4, !dbg !2994
  br label %280, !dbg !2995

; <label>:241:                                    ; preds = %227
  %242 = load %struct._vrrp_script*, %struct._vrrp_script** %6, align 8, !dbg !2996
  %243 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %242, i32 0, i32 5, !dbg !2999
  %244 = load i32, i32* %243, align 4, !dbg !2999
  %245 = load %struct._vrrp_script*, %struct._vrrp_script** %6, align 8, !dbg !3000
  %246 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %245, i32 0, i32 6, !dbg !3001
  %247 = load i32, i32* %246, align 8, !dbg !3001
  %248 = load %struct._vrrp_script*, %struct._vrrp_script** %6, align 8, !dbg !3002
  %249 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %248, i32 0, i32 7, !dbg !3003
  %250 = load i32, i32* %249, align 4, !dbg !3003
  %251 = add nsw i32 %247, %250, !dbg !3004
  %252 = sub nsw i32 %251, 1, !dbg !3005
  %253 = icmp ne i32 %244, %252, !dbg !3006
  br i1 %253, label %254, label %279, !dbg !2996

; <label>:254:                                    ; preds = %241
  %255 = load %struct._vrrp_script*, %struct._vrrp_script** %6, align 8, !dbg !3007
  %256 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %255, i32 0, i32 5, !dbg !3010
  %257 = load i32, i32* %256, align 4, !dbg !3010
  %258 = load %struct._vrrp_script*, %struct._vrrp_script** %6, align 8, !dbg !3011
  %259 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %258, i32 0, i32 6, !dbg !3012
  %260 = load i32, i32* %259, align 8, !dbg !3012
  %261 = icmp slt i32 %257, %260, !dbg !3013
  br i1 %261, label %262, label %268, !dbg !3014

; <label>:262:                                    ; preds = %254
  %263 = load %struct._vrrp_script*, %struct._vrrp_script** %6, align 8, !dbg !3015
  %264 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %263, i32 0, i32 0, !dbg !3017
  %265 = load i8*, i8** %264, align 8, !dbg !3017
  %266 = load i8*, i8** %9, align 8, !dbg !3018
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), i8* %265, i8* %266), !dbg !3019
  %267 = load %struct._vrrp_script*, %struct._vrrp_script** %6, align 8, !dbg !3020
  call void @update_script_priorities(%struct._vrrp_script* %267, i1 zeroext true), !dbg !3021
  br label %268, !dbg !3022

; <label>:268:                                    ; preds = %262, %254
  %269 = load %struct._vrrp_script*, %struct._vrrp_script** %6, align 8, !dbg !3023
  %270 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %269, i32 0, i32 6, !dbg !3024
  %271 = load i32, i32* %270, align 8, !dbg !3024
  %272 = load %struct._vrrp_script*, %struct._vrrp_script** %6, align 8, !dbg !3025
  %273 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %272, i32 0, i32 7, !dbg !3026
  %274 = load i32, i32* %273, align 4, !dbg !3026
  %275 = add nsw i32 %271, %274, !dbg !3027
  %276 = sub nsw i32 %275, 1, !dbg !3028
  %277 = load %struct._vrrp_script*, %struct._vrrp_script** %6, align 8, !dbg !3029
  %278 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %277, i32 0, i32 5, !dbg !3030
  store i32 %276, i32* %278, align 4, !dbg !3031
  br label %279, !dbg !3032

; <label>:279:                                    ; preds = %268, %241
  br label %280

; <label>:280:                                    ; preds = %279, %236
  br label %328, !dbg !3033

; <label>:281:                                    ; preds = %224
  %282 = load %struct._vrrp_script*, %struct._vrrp_script** %6, align 8, !dbg !3034
  %283 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %282, i32 0, i32 5, !dbg !3037
  %284 = load i32, i32* %283, align 4, !dbg !3037
  %285 = load %struct._vrrp_script*, %struct._vrrp_script** %6, align 8, !dbg !3038
  %286 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %285, i32 0, i32 6, !dbg !3039
  %287 = load i32, i32* %286, align 8, !dbg !3039
  %288 = icmp sgt i32 %284, %287, !dbg !3040
  br i1 %288, label %289, label %294, !dbg !3041

; <label>:289:                                    ; preds = %281
  %290 = load %struct._vrrp_script*, %struct._vrrp_script** %6, align 8, !dbg !3042
  %291 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %290, i32 0, i32 5, !dbg !3044
  %292 = load i32, i32* %291, align 4, !dbg !3045
  %293 = add nsw i32 %292, -1, !dbg !3045
  store i32 %293, i32* %291, align 4, !dbg !3045
  br label %327, !dbg !3046

; <label>:294:                                    ; preds = %281
  %295 = load %struct._vrrp_script*, %struct._vrrp_script** %6, align 8, !dbg !3047
  %296 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %295, i32 0, i32 5, !dbg !3050
  %297 = load i32, i32* %296, align 4, !dbg !3050
  %298 = load %struct._vrrp_script*, %struct._vrrp_script** %6, align 8, !dbg !3051
  %299 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %298, i32 0, i32 6, !dbg !3052
  %300 = load i32, i32* %299, align 8, !dbg !3052
  %301 = icmp eq i32 %297, %300, !dbg !3053
  br i1 %301, label %307, label %302, !dbg !3054

; <label>:302:                                    ; preds = %294
  %303 = load %struct._vrrp_script*, %struct._vrrp_script** %6, align 8, !dbg !3055
  %304 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %303, i32 0, i32 11, !dbg !3056
  %305 = load i32, i32* %304, align 8, !dbg !3056
  %306 = icmp eq i32 %305, 1, !dbg !3057
  br i1 %306, label %307, label %324, !dbg !3058

; <label>:307:                                    ; preds = %302, %294
  %308 = load i8*, i8** %11, align 8, !dbg !3060
  %309 = icmp ne i8* %308, null, !dbg !3060
  br i1 %309, label %310, label %317, !dbg !3063

; <label>:310:                                    ; preds = %307
  %311 = load %struct._vrrp_script*, %struct._vrrp_script** %6, align 8, !dbg !3064
  %312 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %311, i32 0, i32 0, !dbg !3065
  %313 = load i8*, i8** %312, align 8, !dbg !3065
  %314 = load i8*, i8** %9, align 8, !dbg !3066
  %315 = load i8*, i8** %11, align 8, !dbg !3067
  %316 = load i32, i32* %12, align 4, !dbg !3068
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i32 0, i32 0), i8* %313, i8* %314, i8* %315, i32 %316), !dbg !3069
  br label %322, !dbg !3069

; <label>:317:                                    ; preds = %307
  %318 = load %struct._vrrp_script*, %struct._vrrp_script** %6, align 8, !dbg !3070
  %319 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %318, i32 0, i32 0, !dbg !3071
  %320 = load i8*, i8** %319, align 8, !dbg !3071
  %321 = load i8*, i8** %9, align 8, !dbg !3072
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0), i8* %320, i8* %321), !dbg !3073
  br label %322

; <label>:322:                                    ; preds = %317, %310
  %323 = load %struct._vrrp_script*, %struct._vrrp_script** %6, align 8, !dbg !3074
  call void @update_script_priorities(%struct._vrrp_script* %323, i1 zeroext false), !dbg !3075
  br label %324, !dbg !3076

; <label>:324:                                    ; preds = %322, %302
  %325 = load %struct._vrrp_script*, %struct._vrrp_script** %6, align 8, !dbg !3077
  %326 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %325, i32 0, i32 5, !dbg !3078
  store i32 0, i32* %326, align 4, !dbg !3079
  br label %327

; <label>:327:                                    ; preds = %324, %289
  br label %328

; <label>:328:                                    ; preds = %327, %280
  br label %329, !dbg !3080

; <label>:329:                                    ; preds = %328, %221
  %330 = load %struct._vrrp_script*, %struct._vrrp_script** %6, align 8, !dbg !3081
  %331 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %330, i32 0, i32 10, !dbg !3082
  store i32 0, i32* %331, align 4, !dbg !3083
  %332 = load %struct._vrrp_script*, %struct._vrrp_script** %6, align 8, !dbg !3084
  %333 = getelementptr inbounds %struct._vrrp_script, %struct._vrrp_script* %332, i32 0, i32 11, !dbg !3085
  store i32 0, i32* %333, align 8, !dbg !3086
  store i32 0, i32* %2, align 4, !dbg !3087
  br label %334, !dbg !3087

; <label>:334:                                    ; preds = %329, %109
  %335 = load i32, i32* %2, align 4, !dbg !3088
  ret i32 %335, !dbg !3088
}

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #5

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

declare %struct._thread* @thread_add_child(%struct._thread_master*, i32 (%struct._thread*)*, i8*, i32, i64) #2

declare void @update_script_priorities(%struct._vrrp_script*, i1 zeroext) #2

; Function Attrs: nounwind uwtable
define internal i32 @vrrp_dispatcher_read_timeout(i32) #0 !dbg !3089 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._vrrp_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._element*, align 8
  %6 = alloca %struct._list*, align 8
  %7 = alloca %struct.timeval, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !3092, metadata !572), !dbg !3093
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !3094, metadata !572), !dbg !3095
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3096, metadata !572), !dbg !3097
  call void @llvm.dbg.declare(metadata %struct._element** %5, metadata !3098, metadata !572), !dbg !3099
  call void @llvm.dbg.declare(metadata %struct._list** %6, metadata !3100, metadata !572), !dbg !3101
  %8 = load i32, i32* %2, align 4, !dbg !3102
  %9 = srem i32 %8, 1024, !dbg !3103
  %10 = sext i32 %9 to i64, !dbg !3104
  %11 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !3104
  %12 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %11, i32 0, i32 7, !dbg !3105
  %13 = load %struct._list*, %struct._list** %12, align 8, !dbg !3105
  %14 = getelementptr inbounds %struct._list, %struct._list* %13, i64 %10, !dbg !3104
  store %struct._list* %14, %struct._list** %6, align 8, !dbg !3101
  %15 = call { i64, i64 } @set_time_now(), !dbg !3106
  %16 = bitcast %struct.timeval* %7 to { i64, i64 }*, !dbg !3106
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %16, i32 0, i32 0, !dbg !3106
  %18 = extractvalue { i64, i64 } %15, 0, !dbg !3106
  store i64 %18, i64* %17, align 8, !dbg !3106
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %16, i32 0, i32 1, !dbg !3106
  %20 = extractvalue { i64, i64 } %15, 1, !dbg !3106
  store i64 %20, i64* %19, align 8, !dbg !3106
  %21 = load %struct._list*, %struct._list** %6, align 8, !dbg !3107
  %22 = icmp ne %struct._list* %21, null, !dbg !3109
  br i1 %22, label %24, label %23, !dbg !3110

; <label>:23:                                     ; preds = %1
  br label %28, !dbg !3111

; <label>:24:                                     ; preds = %1
  %25 = load %struct._list*, %struct._list** %6, align 8, !dbg !3113
  %26 = getelementptr inbounds %struct._list, %struct._list* %25, i32 0, i32 0, !dbg !3115
  %27 = load %struct._element*, %struct._element** %26, align 8, !dbg !3115
  br label %28, !dbg !3116

; <label>:28:                                     ; preds = %24, %23
  %29 = phi %struct._element* [ null, %23 ], [ %27, %24 ], !dbg !3117
  store %struct._element* %29, %struct._element** %5, align 8, !dbg !3119
  br label %30, !dbg !3120

; <label>:30:                                     ; preds = %125, %28
  %31 = load %struct._element*, %struct._element** %5, align 8, !dbg !3121
  %32 = icmp ne %struct._element* %31, null, !dbg !3124
  br i1 %32, label %33, label %129, !dbg !3124

; <label>:33:                                     ; preds = %30
  %34 = load %struct._element*, %struct._element** %5, align 8, !dbg !3125
  %35 = getelementptr inbounds %struct._element, %struct._element* %34, i32 0, i32 2, !dbg !3127
  %36 = load i8*, i8** %35, align 8, !dbg !3127
  %37 = bitcast i8* %36 to %struct._vrrp_t*, !dbg !3128
  store %struct._vrrp_t* %37, %struct._vrrp_t** %3, align 8, !dbg !3129
  %38 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !3130
  %39 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %38, i32 0, i32 58, !dbg !3132
  %40 = load %struct._sock*, %struct._sock** %39, align 8, !dbg !3132
  %41 = getelementptr inbounds %struct._sock, %struct._sock* %40, i32 0, i32 5, !dbg !3133
  %42 = load i32, i32* %41, align 4, !dbg !3133
  %43 = load i32, i32* %2, align 4, !dbg !3134
  %44 = icmp ne i32 %42, %43, !dbg !3135
  br i1 %44, label %45, label %46, !dbg !3136

; <label>:45:                                     ; preds = %33
  br label %125, !dbg !3137

; <label>:46:                                     ; preds = %33
  %47 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !3138
  %48 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %47, i32 0, i32 71, !dbg !3140
  %49 = getelementptr inbounds %struct.timeval, %struct.timeval* %48, i32 0, i32 0, !dbg !3141
  %50 = load i64, i64* %49, align 8, !dbg !3141
  %51 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @time_now, i32 0, i32 0), align 8, !dbg !3141
  %52 = icmp eq i64 %50, %51, !dbg !3142
  br i1 %52, label %53, label %60, !dbg !3143

; <label>:53:                                     ; preds = %46
  %54 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !3144
  %55 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %54, i32 0, i32 71, !dbg !3146
  %56 = getelementptr inbounds %struct.timeval, %struct.timeval* %55, i32 0, i32 1, !dbg !3147
  %57 = load i64, i64* %56, align 8, !dbg !3147
  %58 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @time_now, i32 0, i32 1), align 8, !dbg !3147
  %59 = icmp sgt i64 %57, %58, !dbg !3148
  br i1 %59, label %67, label %68, !dbg !3144

; <label>:60:                                     ; preds = %46
  %61 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !3149
  %62 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %61, i32 0, i32 71, !dbg !3151
  %63 = getelementptr inbounds %struct.timeval, %struct.timeval* %62, i32 0, i32 0, !dbg !3152
  %64 = load i64, i64* %63, align 8, !dbg !3152
  %65 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @time_now, i32 0, i32 0), align 8, !dbg !3152
  %66 = icmp sgt i64 %64, %65, !dbg !3153
  br i1 %66, label %67, label %68, !dbg !3153

; <label>:67:                                     ; preds = %60, %53
  br label %125, !dbg !3154

; <label>:68:                                     ; preds = %60, %53
  %69 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !3155
  %70 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %69, i32 0, i32 55, !dbg !3156
  %71 = load i32, i32* %70, align 8, !dbg !3156
  store i32 %71, i32* %4, align 4, !dbg !3157
  %72 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !3158
  %73 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %72, i32 0, i32 55, !dbg !3160
  %74 = load i32, i32* %73, align 8, !dbg !3160
  %75 = icmp eq i32 %74, 1, !dbg !3161
  br i1 %75, label %76, label %84, !dbg !3162

; <label>:76:                                     ; preds = %68
  %77 = call zeroext i1 @__test_bit(i32 7, i64* @debug), !dbg !3163
  br i1 %77, label %78, label %82, !dbg !3166

; <label>:78:                                     ; preds = %76
  %79 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !3167
  %80 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %79, i32 0, i32 1, !dbg !3168
  %81 = load i8*, i8** %80, align 8, !dbg !3168
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i32 0, i32 0), i8* %81), !dbg !3169
  br label %82, !dbg !3169

; <label>:82:                                     ; preds = %78, %76
  %83 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !3170
  call void @vrrp_goto_master(%struct._vrrp_t* %83), !dbg !3171
  br label %92, !dbg !3172

; <label>:84:                                     ; preds = %68
  %85 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !3173
  %86 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %85, i32 0, i32 55, !dbg !3175
  %87 = load i32, i32* %86, align 8, !dbg !3175
  %88 = icmp eq i32 %87, 2, !dbg !3176
  br i1 %88, label %89, label %91, !dbg !3177

; <label>:89:                                     ; preds = %84
  %90 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !3178
  call void @vrrp_master(%struct._vrrp_t* %90), !dbg !3179
  br label %91, !dbg !3179

; <label>:91:                                     ; preds = %89, %84
  br label %92

; <label>:92:                                     ; preds = %91, %82
  br label %93, !dbg !3180, !llvm.loop !3181

; <label>:93:                                     ; preds = %92
  %94 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !3182
  %95 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %94, i32 0, i32 2, !dbg !3186
  %96 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %95, align 8, !dbg !3186
  %97 = icmp ne %struct._vrrp_sgroup* %96, null, !dbg !3187
  br i1 %97, label %98, label %122, !dbg !3188

; <label>:98:                                     ; preds = %93
  %99 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !3189
  %100 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %99, i32 0, i32 55, !dbg !3191
  %101 = load i32, i32* %100, align 8, !dbg !3191
  %102 = sext i32 %101 to i64, !dbg !3192
  %103 = load i32, i32* %4, align 4, !dbg !3193
  %104 = sext i32 %103 to i64, !dbg !3192
  %105 = getelementptr inbounds [4 x [4 x %struct.anon.13]], [4 x [4 x %struct.anon.13]]* @VRRP_TSM, i64 0, i64 %104, !dbg !3192
  %106 = getelementptr inbounds [4 x %struct.anon.13], [4 x %struct.anon.13]* %105, i64 0, i64 %102, !dbg !3192
  %107 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %106, i32 0, i32 0, !dbg !3194
  %108 = load void (%struct._vrrp_t*)*, void (%struct._vrrp_t*)** %107, align 8, !dbg !3194
  %109 = icmp ne void (%struct._vrrp_t*)* %108, null, !dbg !3195
  br i1 %109, label %110, label %122, !dbg !3196

; <label>:110:                                    ; preds = %98
  %111 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !3197
  %112 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %111, i32 0, i32 55, !dbg !3199
  %113 = load i32, i32* %112, align 8, !dbg !3199
  %114 = sext i32 %113 to i64, !dbg !3200
  %115 = load i32, i32* %4, align 4, !dbg !3201
  %116 = sext i32 %115 to i64, !dbg !3200
  %117 = getelementptr inbounds [4 x [4 x %struct.anon.13]], [4 x [4 x %struct.anon.13]]* @VRRP_TSM, i64 0, i64 %116, !dbg !3200
  %118 = getelementptr inbounds [4 x %struct.anon.13], [4 x %struct.anon.13]* %117, i64 0, i64 %114, !dbg !3200
  %119 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %118, i32 0, i32 0, !dbg !3202
  %120 = load void (%struct._vrrp_t*)*, void (%struct._vrrp_t*)** %119, align 8, !dbg !3202
  %121 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !3203
  call void %120(%struct._vrrp_t* %121), !dbg !3204
  br label %122, !dbg !3204

; <label>:122:                                    ; preds = %110, %98, %93
  br label %123, !dbg !3205

; <label>:123:                                    ; preds = %122
  %124 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !3207
  call void @vrrp_init_instance_sands(%struct._vrrp_t* %124), !dbg !3208
  br label %125, !dbg !3209

; <label>:125:                                    ; preds = %123, %67, %45
  %126 = load %struct._element*, %struct._element** %5, align 8, !dbg !3210
  %127 = getelementptr inbounds %struct._element, %struct._element* %126, i32 0, i32 0, !dbg !3212
  %128 = load %struct._element*, %struct._element** %127, align 8, !dbg !3212
  store %struct._element* %128, %struct._element** %5, align 8, !dbg !3213
  br label %30, !dbg !3214, !llvm.loop !3215

; <label>:129:                                    ; preds = %30
  %130 = load i32, i32* %2, align 4, !dbg !3217
  ret i32 %130, !dbg !3218
}

; Function Attrs: nounwind uwtable
define internal i32 @vrrp_dispatcher_read(%struct._sock*) #0 !dbg !3219 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._sock*, align 8
  %4 = alloca %struct._vrrp_t*, align 8
  %5 = alloca %struct._vrrphdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_storage, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.__SOCKADDR_ARG, align 8
  store %struct._sock* %0, %struct._sock** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._sock** %3, metadata !3222, metadata !572), !dbg !3223
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %4, metadata !3224, metadata !572), !dbg !3225
  call void @llvm.dbg.declare(metadata %struct._vrrphdr** %5, metadata !3226, metadata !572), !dbg !3248
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3249, metadata !572), !dbg !3252
  store i64 0, i64* %6, align 8, !dbg !3252
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3253, metadata !572), !dbg !3254
  store i32 0, i32* %7, align 4, !dbg !3254
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3255, metadata !572), !dbg !3256
  store i32 0, i32* %8, align 4, !dbg !3256
  call void @llvm.dbg.declare(metadata %struct.sockaddr_storage* %9, metadata !3257, metadata !572), !dbg !3258
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3259, metadata !572), !dbg !3262
  store i32 128, i32* %10, align 4, !dbg !3262
  %12 = load i8*, i8** @vrrp_buffer, align 8, !dbg !3263
  %13 = load i64, i64* @vrrp_buffer_len, align 8, !dbg !3264
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 %13, i32 1, i1 false), !dbg !3265
  %14 = load %struct._sock*, %struct._sock** %3, align 8, !dbg !3266
  %15 = getelementptr inbounds %struct._sock, %struct._sock* %14, i32 0, i32 5, !dbg !3267
  %16 = load i32, i32* %15, align 4, !dbg !3267
  %17 = load i8*, i8** @vrrp_buffer, align 8, !dbg !3268
  %18 = load i64, i64* @vrrp_buffer_len, align 8, !dbg !3269
  %19 = bitcast %union.__SOCKADDR_ARG* %11 to %struct.sockaddr**, !dbg !3270
  %20 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr*, !dbg !3270
  store %struct.sockaddr* %20, %struct.sockaddr** %19, align 8, !dbg !3270
  %21 = getelementptr inbounds %union.__SOCKADDR_ARG, %union.__SOCKADDR_ARG* %11, i32 0, i32 0, !dbg !3271
  %22 = load %struct.sockaddr*, %struct.sockaddr** %21, align 8, !dbg !3271
  %23 = call i64 @recvfrom(i32 %16, i8* %17, i64 %18, i32 0, %struct.sockaddr* %22, i32* %10), !dbg !3271
  store i64 %23, i64* %6, align 8, !dbg !3272
  %24 = load %struct._sock*, %struct._sock** %3, align 8, !dbg !3273
  %25 = getelementptr inbounds %struct._sock, %struct._sock* %24, i32 0, i32 0, !dbg !3274
  %26 = load i16, i16* %25, align 8, !dbg !3274
  %27 = load i8*, i8** @vrrp_buffer, align 8, !dbg !3275
  %28 = call %struct._vrrphdr* @vrrp_get_header(i16 zeroext %26, i8* %27, i32* %8), !dbg !3276
  store %struct._vrrphdr* %28, %struct._vrrphdr** %5, align 8, !dbg !3277
  %29 = load %struct._vrrphdr*, %struct._vrrphdr** %5, align 8, !dbg !3278
  %30 = getelementptr inbounds %struct._vrrphdr, %struct._vrrphdr* %29, i32 0, i32 1, !dbg !3279
  %31 = load i8, i8* %30, align 1, !dbg !3279
  %32 = zext i8 %31 to i32, !dbg !3278
  %33 = load %struct._sock*, %struct._sock** %3, align 8, !dbg !3280
  %34 = getelementptr inbounds %struct._sock, %struct._sock* %33, i32 0, i32 5, !dbg !3281
  %35 = load i32, i32* %34, align 4, !dbg !3281
  %36 = call %struct._vrrp_t* @vrrp_index_lookup(i32 %32, i32 %35), !dbg !3282
  store %struct._vrrp_t* %36, %struct._vrrp_t** %4, align 8, !dbg !3283
  %37 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !3284
  %38 = icmp ne %struct._vrrp_t* %37, null, !dbg !3284
  br i1 %38, label %43, label %39, !dbg !3286

; <label>:39:                                     ; preds = %1
  %40 = load %struct._sock*, %struct._sock** %3, align 8, !dbg !3287
  %41 = getelementptr inbounds %struct._sock, %struct._sock* %40, i32 0, i32 5, !dbg !3288
  %42 = load i32, i32* %41, align 4, !dbg !3288
  store i32 %42, i32* %2, align 4, !dbg !3289
  br label %137, !dbg !3289

; <label>:43:                                     ; preds = %1
  %44 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !3290
  %45 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %44, i32 0, i32 55, !dbg !3292
  %46 = load i32, i32* %45, align 8, !dbg !3292
  %47 = icmp eq i32 %46, 3, !dbg !3293
  br i1 %47, label %53, label %48, !dbg !3294

; <label>:48:                                     ; preds = %43
  %49 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !3295
  %50 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %49, i32 0, i32 55, !dbg !3296
  %51 = load i32, i32* %50, align 8, !dbg !3296
  %52 = icmp eq i32 %51, 0, !dbg !3297
  br i1 %52, label %53, label %57, !dbg !3298

; <label>:53:                                     ; preds = %48, %43
  %54 = load %struct._sock*, %struct._sock** %3, align 8, !dbg !3300
  %55 = getelementptr inbounds %struct._sock, %struct._sock* %54, i32 0, i32 5, !dbg !3302
  %56 = load i32, i32* %55, align 4, !dbg !3302
  store i32 %56, i32* %2, align 4, !dbg !3303
  br label %137, !dbg !3303

; <label>:57:                                     ; preds = %48
  %58 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !3304
  %59 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %58, i32 0, i32 19, !dbg !3305
  %60 = bitcast %struct.sockaddr_storage* %59 to i8*, !dbg !3306
  %61 = bitcast %struct.sockaddr_storage* %9 to i8*, !dbg !3306
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* %61, i64 128, i32 8, i1 false), !dbg !3306
  %62 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !3307
  %63 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %62, i32 0, i32 55, !dbg !3308
  %64 = load i32, i32* %63, align 8, !dbg !3308
  store i32 %64, i32* %7, align 4, !dbg !3309
  %65 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !3310
  %66 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %65, i32 0, i32 55, !dbg !3312
  %67 = load i32, i32* %66, align 8, !dbg !3312
  %68 = icmp eq i32 %67, 1, !dbg !3313
  br i1 %68, label %69, label %73, !dbg !3314

; <label>:69:                                     ; preds = %57
  %70 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !3315
  %71 = load i8*, i8** @vrrp_buffer, align 8, !dbg !3316
  %72 = load i64, i64* %6, align 8, !dbg !3317
  call void @vrrp_backup(%struct._vrrp_t* %70, i8* %71, i64 %72), !dbg !3318
  br label %90, !dbg !3318

; <label>:73:                                     ; preds = %57
  %74 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !3319
  %75 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %74, i32 0, i32 55, !dbg !3321
  %76 = load i32, i32* %75, align 8, !dbg !3321
  %77 = icmp eq i32 %76, 2, !dbg !3322
  br i1 %77, label %78, label %82, !dbg !3323

; <label>:78:                                     ; preds = %73
  %79 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !3324
  %80 = load i8*, i8** @vrrp_buffer, align 8, !dbg !3325
  %81 = load i64, i64* %6, align 8, !dbg !3326
  call void @vrrp_leave_master(%struct._vrrp_t* %79, i8* %80, i64 %81), !dbg !3327
  br label %89, !dbg !3327

; <label>:82:                                     ; preds = %73
  %83 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !3328
  %84 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %83, i32 0, i32 1, !dbg !3329
  %85 = load i8*, i8** %84, align 8, !dbg !3329
  %86 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !3330
  %87 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %86, i32 0, i32 55, !dbg !3331
  %88 = load i32, i32* %87, align 8, !dbg !3331
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.17, i32 0, i32 0), i8* %85, i32 %88), !dbg !3332
  br label %89

; <label>:89:                                     ; preds = %82, %78
  br label %90

; <label>:90:                                     ; preds = %89, %69
  br label %91, !dbg !3333, !llvm.loop !3334

; <label>:91:                                     ; preds = %90
  %92 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !3335
  %93 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %92, i32 0, i32 2, !dbg !3339
  %94 = load %struct._vrrp_sgroup*, %struct._vrrp_sgroup** %93, align 8, !dbg !3339
  %95 = icmp ne %struct._vrrp_sgroup* %94, null, !dbg !3340
  br i1 %95, label %96, label %120, !dbg !3341

; <label>:96:                                     ; preds = %91
  %97 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !3342
  %98 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %97, i32 0, i32 55, !dbg !3344
  %99 = load i32, i32* %98, align 8, !dbg !3344
  %100 = sext i32 %99 to i64, !dbg !3345
  %101 = load i32, i32* %7, align 4, !dbg !3346
  %102 = sext i32 %101 to i64, !dbg !3345
  %103 = getelementptr inbounds [4 x [4 x %struct.anon.13]], [4 x [4 x %struct.anon.13]]* @VRRP_TSM, i64 0, i64 %102, !dbg !3345
  %104 = getelementptr inbounds [4 x %struct.anon.13], [4 x %struct.anon.13]* %103, i64 0, i64 %100, !dbg !3345
  %105 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %104, i32 0, i32 0, !dbg !3347
  %106 = load void (%struct._vrrp_t*)*, void (%struct._vrrp_t*)** %105, align 8, !dbg !3347
  %107 = icmp ne void (%struct._vrrp_t*)* %106, null, !dbg !3348
  br i1 %107, label %108, label %120, !dbg !3349

; <label>:108:                                    ; preds = %96
  %109 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !3350
  %110 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %109, i32 0, i32 55, !dbg !3352
  %111 = load i32, i32* %110, align 8, !dbg !3352
  %112 = sext i32 %111 to i64, !dbg !3353
  %113 = load i32, i32* %7, align 4, !dbg !3354
  %114 = sext i32 %113 to i64, !dbg !3353
  %115 = getelementptr inbounds [4 x [4 x %struct.anon.13]], [4 x [4 x %struct.anon.13]]* @VRRP_TSM, i64 0, i64 %114, !dbg !3353
  %116 = getelementptr inbounds [4 x %struct.anon.13], [4 x %struct.anon.13]* %115, i64 0, i64 %112, !dbg !3353
  %117 = getelementptr inbounds %struct.anon.13, %struct.anon.13* %116, i32 0, i32 0, !dbg !3355
  %118 = load void (%struct._vrrp_t*)*, void (%struct._vrrp_t*)** %117, align 8, !dbg !3355
  %119 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !3356
  call void %118(%struct._vrrp_t* %119), !dbg !3357
  br label %120, !dbg !3357

; <label>:120:                                    ; preds = %108, %96, %91
  br label %121, !dbg !3358

; <label>:121:                                    ; preds = %120
  %122 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !3360
  %123 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %122, i32 0, i32 55, !dbg !3362
  %124 = load i32, i32* %123, align 8, !dbg !3362
  %125 = icmp ne i32 %124, 2, !dbg !3363
  br i1 %125, label %131, label %126, !dbg !3364

; <label>:126:                                    ; preds = %121
  %127 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !3365
  %128 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %127, i32 0, i32 34, !dbg !3367
  %129 = load i32, i32* %128, align 4, !dbg !3367
  %130 = icmp ne i32 %129, 0, !dbg !3365
  br i1 %130, label %133, label %131, !dbg !3368

; <label>:131:                                    ; preds = %126, %121
  %132 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !3369
  call void @vrrp_init_instance_sands(%struct._vrrp_t* %132), !dbg !3370
  br label %133, !dbg !3370

; <label>:133:                                    ; preds = %131, %126
  %134 = load %struct._sock*, %struct._sock** %3, align 8, !dbg !3371
  %135 = getelementptr inbounds %struct._sock, %struct._sock* %134, i32 0, i32 5, !dbg !3372
  %136 = load i32, i32* %135, align 4, !dbg !3372
  store i32 %136, i32* %2, align 4, !dbg !3373
  br label %137, !dbg !3373

; <label>:137:                                    ; preds = %133, %53, %39
  %138 = load i32, i32* %2, align 4, !dbg !3374
  ret i32 %138, !dbg !3374
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_goto_master(%struct._vrrp_t*) #0 !dbg !3375 {
  %2 = alloca %struct._vrrp_t*, align 8
  store %struct._vrrp_t* %0, %struct._vrrp_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %2, metadata !3376, metadata !572), !dbg !3377
  %3 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !3378
  %4 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %3, i32 0, i32 56, !dbg !3379
  store i32 2, i32* %4, align 4, !dbg !3380
  %5 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !3381
  call void @vrrp_state_goto_master(%struct._vrrp_t* %5), !dbg !3382
  ret void, !dbg !3383
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_master(%struct._vrrp_t*) #0 !dbg !3384 {
  %2 = alloca %struct._vrrp_t*, align 8
  store %struct._vrrp_t* %0, %struct._vrrp_t** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %2, metadata !3385, metadata !572), !dbg !3386
  %3 = load %struct._vrrp_t*, %struct._vrrp_t** %2, align 8, !dbg !3387
  call void @vrrp_state_master_tx(%struct._vrrp_t* %3), !dbg !3388
  ret void, !dbg !3389
}

declare void @vrrp_state_goto_master(%struct._vrrp_t*) #2

declare void @vrrp_state_master_tx(%struct._vrrp_t*) #2

declare i64 @recvfrom(i32, i8*, i64, i32, %struct.sockaddr*, i32*) #2

declare %struct._vrrphdr* @vrrp_get_header(i16 zeroext, i8*, i32*) #2

declare %struct._vrrp_t* @vrrp_index_lookup(i32, i32) #2

; Function Attrs: nounwind uwtable
define internal void @vrrp_backup(%struct._vrrp_t*, i8*, i64) #0 !dbg !3390 {
  %4 = alloca %struct._vrrp_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct._vrrp_t* %0, %struct._vrrp_t** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %4, metadata !3393, metadata !572), !dbg !3394
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3395, metadata !572), !dbg !3396
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3397, metadata !572), !dbg !3398
  %7 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !3399
  %8 = load i8*, i8** %5, align 8, !dbg !3400
  %9 = load i64, i64* %6, align 8, !dbg !3401
  call void @vrrp_state_backup(%struct._vrrp_t* %7, i8* %8, i64 %9), !dbg !3402
  ret void, !dbg !3403
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_leave_master(%struct._vrrp_t*, i8*, i64) #0 !dbg !3404 {
  %4 = alloca %struct._vrrp_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct._vrrp_t* %0, %struct._vrrp_t** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %4, metadata !3405, metadata !572), !dbg !3406
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3407, metadata !572), !dbg !3408
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3409, metadata !572), !dbg !3410
  %7 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !3411
  %8 = load i8*, i8** %5, align 8, !dbg !3413
  %9 = load i64, i64* %6, align 8, !dbg !3414
  %10 = call zeroext i1 @vrrp_state_master_rx(%struct._vrrp_t* %7, i8* %8, i64 %9), !dbg !3415
  br i1 %10, label %11, label %13, !dbg !3416

; <label>:11:                                     ; preds = %3
  %12 = load %struct._vrrp_t*, %struct._vrrp_t** %4, align 8, !dbg !3417
  call void @vrrp_state_leave_master(%struct._vrrp_t* %12, i1 zeroext false), !dbg !3418
  br label %13, !dbg !3418

; <label>:13:                                     ; preds = %11, %3
  ret void, !dbg !3419
}

declare void @vrrp_state_backup(%struct._vrrp_t*, i8*, i64) #2

declare zeroext i1 @vrrp_state_master_rx(%struct._vrrp_t*, i8*, i64) #2

declare void @vrrp_state_leave_master(%struct._vrrp_t*, i1 zeroext) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!567, !568}
!llvm.ident = !{!569}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !286, globals: !324)
!1 = !DIFile(filename: "[inter]keepalived--vrrp--vrrp_scheduler.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!2 = !{!3, !11, !32, !47, !239, !245, !274, !281}
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
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "global_bits", file: !33, line: 53, size: 32, align: 32, elements: !34)
!33 = !DIFile(filename: "../../lib/bitops.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!34 = !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!35 = !DIEnumerator(name: "LOG_CONSOLE_BIT", value: 0)
!36 = !DIEnumerator(name: "NO_SYSLOG_BIT", value: 1)
!37 = !DIEnumerator(name: "DONT_FORK_BIT", value: 2)
!38 = !DIEnumerator(name: "DUMP_CONF_BIT", value: 3)
!39 = !DIEnumerator(name: "DONT_RELEASE_VRRP_BIT", value: 4)
!40 = !DIEnumerator(name: "RELEASE_VIPS_BIT", value: 5)
!41 = !DIEnumerator(name: "DONT_RELEASE_IPVS_BIT", value: 6)
!42 = !DIEnumerator(name: "LOG_DETAIL_BIT", value: 7)
!43 = !DIEnumerator(name: "LOG_EXTRA_DETAIL_BIT", value: 8)
!44 = !DIEnumerator(name: "DONT_RESPAWN_BIT", value: 9)
!45 = !DIEnumerator(name: "LOG_ADDRESS_CHANGES", value: 10)
!46 = !DIEnumerator(name: "CONFIG_TEST_BIT", value: 11)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !49, file: !48, line: 1146, size: 32, align: 32, elements: !236)
!48 = !DIFile(filename: "vrrp_scheduler.c", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!49 = distinct !DISubprogram(name: "vrrp_arp_thread", scope: !48, file: !48, line: 1136, type: !50, isLocal: false, isDefinition: true, scopeLine: 1137, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !235)
!50 = !DISubroutineType(types: !51)
!51 = !{!52, !53}
!52 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_t", file: !12, line: 99, baseType: !55)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread", file: !12, line: 78, size: 768, align: 64, elements: !56)
!56 = !{!57, !59, !61, !199, !204, !205, !215, !228, !230}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !55, file: !12, line: 79, baseType: !58, size: 64, align: 64)
!58 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !55, file: !12, line: 80, baseType: !60, size: 32, align: 32, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_type_t", file: !12, line: 63, baseType: !11)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !55, file: !12, line: 81, baseType: !62, size: 64, align: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_master", file: !12, line: 112, size: 1280, align: 64, elements: !64)
!64 = !{!65, !77, !78, !79, !80, !88, !89, !90, !175, !176, !179, !190, !191, !192, !193, !194, !195, !196, !197}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !63, file: !12, line: 113, baseType: !66, size: 64, align: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_root_t", file: !67, line: 109, baseType: !68)
!67 = !DIFile(filename: "../../lib/rbtree.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !67, line: 106, size: 64, align: 64, elements: !69)
!69 = !{!70}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !68, file: !67, line: 108, baseType: !71, size: 64, align: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !67, line: 97, size: 192, align: 64, elements: !73)
!73 = !{!74, !75, !76}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "rb_parent_color", scope: !72, file: !67, line: 99, baseType: !58, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !72, file: !67, line: 102, baseType: !71, size: 64, align: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !72, file: !67, line: 103, baseType: !71, size: 64, align: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !63, file: !12, line: 114, baseType: !66, size: 64, align: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !63, file: !12, line: 115, baseType: !66, size: 64, align: 64, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !63, file: !12, line: 116, baseType: !66, size: 64, align: 64, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !63, file: !12, line: 117, baseType: !81, size: 128, align: 64, offset: 256)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "list_head_t", file: !82, line: 62, baseType: !83)
!82 = !DIFile(filename: "../../lib/list_head.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !82, line: 60, size: 128, align: 64, elements: !84)
!84 = !{!85, !87}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !83, file: !82, line: 61, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !83, file: !82, line: 61, baseType: !86, size: 64, align: 64, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !63, file: !12, line: 121, baseType: !81, size: 128, align: 64, offset: 384)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "unuse", scope: !63, file: !12, line: 122, baseType: !81, size: 128, align: 64, offset: 512)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "child_pid_index", scope: !63, file: !12, line: 124, baseType: !91, size: 64, align: 64, offset: 640)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !92, line: 31, baseType: !93)
!92 = !DIFile(filename: "../../lib/list.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_list", file: !92, line: 39, size: 320, align: 64, elements: !95)
!95 = !{!96, !104, !105, !107, !111}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !94, file: !92, line: 40, baseType: !97, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !92, line: 33, size: 192, align: 64, elements: !99)
!99 = !{!100, !101, !102}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !98, file: !92, line: 34, baseType: !97, size: 64, align: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !98, file: !92, line: 35, baseType: !97, size: 64, align: 64, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !98, file: !92, line: 36, baseType: !103, size: 64, align: 64, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !94, file: !92, line: 41, baseType: !97, size: 64, align: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !94, file: !92, line: 42, baseType: !106, size: 32, align: 32, offset: 128)
!106 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !94, file: !92, line: 43, baseType: !108, size: 64, align: 64, offset: 192)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!109 = !DISubroutineType(types: !110)
!110 = !{null, !103}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !94, file: !92, line: 44, baseType: !112, size: 64, align: 64, offset: 256)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !115, !103}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !117, line: 48, baseType: !118)
!117 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !119, line: 241, size: 1728, align: 64, elements: !120)
!119 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!120 = !{!121, !122, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !143, !144, !145, !146, !150, !152, !154, !158, !161, !163, !164, !165, !166, !167, !170, !171}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !118, file: !119, line: 242, baseType: !52, size: 32, align: 32)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !118, file: !119, line: 247, baseType: !123, size: 64, align: 64, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !118, file: !119, line: 248, baseType: !123, size: 64, align: 64, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !118, file: !119, line: 249, baseType: !123, size: 64, align: 64, offset: 192)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !118, file: !119, line: 250, baseType: !123, size: 64, align: 64, offset: 256)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !118, file: !119, line: 251, baseType: !123, size: 64, align: 64, offset: 320)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !118, file: !119, line: 252, baseType: !123, size: 64, align: 64, offset: 384)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !118, file: !119, line: 253, baseType: !123, size: 64, align: 64, offset: 448)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !118, file: !119, line: 254, baseType: !123, size: 64, align: 64, offset: 512)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !118, file: !119, line: 256, baseType: !123, size: 64, align: 64, offset: 576)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !118, file: !119, line: 257, baseType: !123, size: 64, align: 64, offset: 640)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !118, file: !119, line: 258, baseType: !123, size: 64, align: 64, offset: 704)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !118, file: !119, line: 260, baseType: !136, size: 64, align: 64, offset: 768)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !119, line: 156, size: 192, align: 64, elements: !138)
!138 = !{!139, !140, !142}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !137, file: !119, line: 157, baseType: !136, size: 64, align: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !137, file: !119, line: 158, baseType: !141, size: 64, align: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !137, file: !119, line: 162, baseType: !52, size: 32, align: 32, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !118, file: !119, line: 262, baseType: !141, size: 64, align: 64, offset: 832)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !118, file: !119, line: 264, baseType: !52, size: 32, align: 32, offset: 896)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !118, file: !119, line: 268, baseType: !52, size: 32, align: 32, offset: 928)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !118, file: !119, line: 270, baseType: !147, size: 64, align: 64, offset: 960)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !148, line: 131, baseType: !149)
!148 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!149 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !118, file: !119, line: 274, baseType: !151, size: 16, align: 16, offset: 1024)
!151 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !118, file: !119, line: 275, baseType: !153, size: 8, align: 8, offset: 1040)
!153 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !118, file: !119, line: 276, baseType: !155, size: 8, align: 8, offset: 1048)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 8, align: 8, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 1)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !118, file: !119, line: 280, baseType: !159, size: 64, align: 64, offset: 1088)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64, align: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !119, line: 150, baseType: null)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !118, file: !119, line: 289, baseType: !162, size: 64, align: 64, offset: 1152)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !148, line: 132, baseType: !149)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !118, file: !119, line: 297, baseType: !103, size: 64, align: 64, offset: 1216)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !118, file: !119, line: 298, baseType: !103, size: 64, align: 64, offset: 1280)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !118, file: !119, line: 299, baseType: !103, size: 64, align: 64, offset: 1344)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !118, file: !119, line: 300, baseType: !103, size: 64, align: 64, offset: 1408)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !118, file: !119, line: 302, baseType: !168, size: 64, align: 64, offset: 1472)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !169, line: 216, baseType: !58)
!169 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !118, file: !119, line: 303, baseType: !52, size: 32, align: 32, offset: 1536)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !118, file: !119, line: 305, baseType: !172, size: 160, align: 8, offset: 1568)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 160, align: 8, elements: !173)
!173 = !{!174}
!174 = !DISubrange(count: 20)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "io_events", scope: !63, file: !12, line: 127, baseType: !66, size: 64, align: 64, offset: 704)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_events", scope: !63, file: !12, line: 128, baseType: !177, size: 64, align: 64, offset: 768)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DICompositeType(tag: DW_TAG_structure_type, name: "epoll_event", file: !12, line: 128, flags: DIFlagFwdDecl)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "current_event", scope: !63, file: !12, line: 129, baseType: !180, size: 64, align: 64, offset: 832)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64, align: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_event_t", file: !12, line: 109, baseType: !182)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_event", file: !12, line: 102, size: 448, align: 64, elements: !183)
!183 = !{!184, !185, !186, !187, !188}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !182, file: !12, line: 103, baseType: !53, size: 64, align: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !182, file: !12, line: 104, baseType: !53, size: 64, align: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !182, file: !12, line: 105, baseType: !58, size: 64, align: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !182, file: !12, line: 106, baseType: !52, size: 32, align: 32, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !182, file: !12, line: 108, baseType: !189, size: 192, align: 64, offset: 256)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_node_t", file: !67, line: 104, baseType: !72)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_size", scope: !63, file: !12, line: 130, baseType: !106, size: 32, align: 32, offset: 896)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_count", scope: !63, file: !12, line: 131, baseType: !106, size: 32, align: 32, offset: 928)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_fd", scope: !63, file: !12, line: 132, baseType: !52, size: 32, align: 32, offset: 960)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "timer_fd", scope: !63, file: !12, line: 135, baseType: !52, size: 32, align: 32, offset: 992)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "timer_thread", scope: !63, file: !12, line: 136, baseType: !53, size: 64, align: 64, offset: 1024)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !63, file: !12, line: 146, baseType: !58, size: 64, align: 64, offset: 1088)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !63, file: !12, line: 147, baseType: !58, size: 64, align: 64, offset: 1152)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_timer_running", scope: !63, file: !12, line: 148, baseType: !198, size: 8, align: 8, offset: 1216)
!198 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !55, file: !12, line: 82, baseType: !200, size: 64, align: 64, offset: 192)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{!52, !203}
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !55, file: !12, line: 83, baseType: !103, size: 64, align: 64, offset: 256)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "sands", scope: !55, file: !12, line: 84, baseType: !206, size: 128, align: 64, offset: 320)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "timeval_t", file: !207, line: 31, baseType: !208)
!207 = !DIFile(filename: "../../lib/timer.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !209, line: 30, size: 128, align: 64, elements: !210)
!209 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!210 = !{!211, !213}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !208, file: !209, line: 32, baseType: !212, size: 64, align: 64)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !148, line: 139, baseType: !149)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !208, file: !209, line: 33, baseType: !214, size: 64, align: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !148, line: 141, baseType: !149)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !55, file: !12, line: 92, baseType: !216, size: 64, align: 32, offset: 448)
!216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !55, file: !12, line: 85, size: 64, align: 32, elements: !217)
!217 = !{!218, !219, !220}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !216, file: !12, line: 86, baseType: !52, size: 32, align: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !216, file: !12, line: 87, baseType: !52, size: 32, align: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !216, file: !12, line: 91, baseType: !221, size: 64, align: 32)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !216, file: !12, line: 88, size: 64, align: 32, elements: !222)
!222 = !{!223, !227}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !221, file: !12, line: 89, baseType: !224, size: 32, align: 32)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !225, line: 98, baseType: !226)
!225 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !148, line: 133, baseType: !52)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !221, file: !12, line: 90, baseType: !52, size: 32, align: 32, offset: 32)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !55, file: !12, line: 93, baseType: !229, size: 64, align: 64, offset: 512)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, align: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, scope: !55, file: !12, line: 95, baseType: !231, size: 192, align: 64, offset: 576)
!231 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !55, file: !12, line: 95, size: 192, align: 64, elements: !232)
!232 = !{!233, !234}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !231, file: !12, line: 96, baseType: !189, size: 192, align: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !231, file: !12, line: 97, baseType: !81, size: 128, align: 64)
!235 = !{}
!236 = !{!237, !238}
!237 = !DIEnumerator(name: "VIP", value: 0)
!238 = !DIEnumerator(name: "EVIP", value: 1)
!239 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vrrp_vmac_bits", file: !240, line: 40, size: 32, align: 32, elements: !241)
!240 = !DIFile(filename: "./../include/vrrp_vmac.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!241 = !{!242, !243, !244}
!242 = !DIEnumerator(name: "VRRP_VMAC_BIT", value: 0)
!243 = !DIEnumerator(name: "VRRP_VMAC_UP_BIT", value: 1)
!244 = !DIEnumerator(name: "VRRP_VMAC_XMITBASE_BIT", value: 2)
!245 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !246, line: 40, size: 32, align: 32, elements: !247)
!246 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!247 = !{!248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273}
!248 = !DIEnumerator(name: "IPPROTO_IP", value: 0)
!249 = !DIEnumerator(name: "IPPROTO_ICMP", value: 1)
!250 = !DIEnumerator(name: "IPPROTO_IGMP", value: 2)
!251 = !DIEnumerator(name: "IPPROTO_IPIP", value: 4)
!252 = !DIEnumerator(name: "IPPROTO_TCP", value: 6)
!253 = !DIEnumerator(name: "IPPROTO_EGP", value: 8)
!254 = !DIEnumerator(name: "IPPROTO_PUP", value: 12)
!255 = !DIEnumerator(name: "IPPROTO_UDP", value: 17)
!256 = !DIEnumerator(name: "IPPROTO_IDP", value: 22)
!257 = !DIEnumerator(name: "IPPROTO_TP", value: 29)
!258 = !DIEnumerator(name: "IPPROTO_DCCP", value: 33)
!259 = !DIEnumerator(name: "IPPROTO_IPV6", value: 41)
!260 = !DIEnumerator(name: "IPPROTO_RSVP", value: 46)
!261 = !DIEnumerator(name: "IPPROTO_GRE", value: 47)
!262 = !DIEnumerator(name: "IPPROTO_ESP", value: 50)
!263 = !DIEnumerator(name: "IPPROTO_AH", value: 51)
!264 = !DIEnumerator(name: "IPPROTO_MTP", value: 92)
!265 = !DIEnumerator(name: "IPPROTO_BEETPH", value: 94)
!266 = !DIEnumerator(name: "IPPROTO_ENCAP", value: 98)
!267 = !DIEnumerator(name: "IPPROTO_PIM", value: 103)
!268 = !DIEnumerator(name: "IPPROTO_COMP", value: 108)
!269 = !DIEnumerator(name: "IPPROTO_SCTP", value: 132)
!270 = !DIEnumerator(name: "IPPROTO_UDPLITE", value: 136)
!271 = !DIEnumerator(name: "IPPROTO_MPLS", value: 137)
!272 = !DIEnumerator(name: "IPPROTO_RAW", value: 255)
!273 = !DIEnumerator(name: "IPPROTO_MAX", value: 256)
!274 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !275, line: 45, size: 32, align: 32, elements: !276)
!275 = !DIFile(filename: "../../lib/notify.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!276 = !{!277, !278, !279, !280}
!277 = !DIEnumerator(name: "SCRIPT_STATE_IDLE", value: 0)
!278 = !DIEnumerator(name: "SCRIPT_STATE_RUNNING", value: 1)
!279 = !DIEnumerator(name: "SCRIPT_STATE_REQUESTING_TERMINATION", value: 2)
!280 = !DIEnumerator(name: "SCRIPT_STATE_FORCING_TERMINATION", value: 3)
!281 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !275, line: 52, size: 32, align: 32, elements: !282)
!282 = !{!283, !284, !285}
!283 = !DIEnumerator(name: "SCRIPT_INIT_STATE_DONE", value: 0)
!284 = !DIEnumerator(name: "SCRIPT_INIT_STATE_INIT", value: 1)
!285 = !DIEnumerator(name: "SCRIPT_INIT_STATE_FAILED", value: 2)
!286 = !{!103, !287, !52, !153, !316, !58}
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64, align: 64)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "sock_t", file: !289, line: 50, baseType: !290)
!289 = !DIFile(filename: "./../include/vrrp_sock.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sock", file: !289, line: 40, size: 1344, align: 64, elements: !291)
!291 = !{!292, !295, !305, !306, !311, !312, !313, !314, !315}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !290, file: !289, line: 41, baseType: !293, size: 16, align: 16)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !294, line: 28, baseType: !151)
!294 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!295 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !290, file: !289, line: 42, baseType: !296, size: 1024, align: 64, offset: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !297, line: 166, size: 1024, align: 64, elements: !298)
!297 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!298 = !{!299, !300, !304}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !296, file: !297, line: 168, baseType: !293, size: 16, align: 16)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !296, file: !297, line: 169, baseType: !301, size: 944, align: 8, offset: 16)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 944, align: 8, elements: !302)
!302 = !{!303}
!303 = !DISubrange(count: 118)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !296, file: !297, line: 170, baseType: !58, size: 64, align: 64, offset: 960)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !290, file: !289, line: 43, baseType: !52, size: 32, align: 32, offset: 1088)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !290, file: !289, line: 44, baseType: !307, size: 32, align: 32, offset: 1120)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "ifindex_t", file: !308, line: 62, baseType: !309)
!308 = !DIFile(filename: "./../include/vrrp_if.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !310, line: 51, baseType: !106)
!310 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!311 = !DIDerivedType(tag: DW_TAG_member, name: "unicast", scope: !290, file: !289, line: 45, baseType: !198, size: 8, align: 8, offset: 1152)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "fd_in", scope: !290, file: !289, line: 46, baseType: !52, size: 32, align: 32, offset: 1184)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "fd_out", scope: !290, file: !289, line: 47, baseType: !52, size: 32, align: 32, offset: 1216)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "rx_buf_size", scope: !290, file: !289, line: 48, baseType: !52, size: 32, align: 32, offset: 1248)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !290, file: !289, line: 49, baseType: !53, size: 64, align: 64, offset: 1280)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64, align: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !297, line: 153, size: 128, align: 16, elements: !318)
!318 = !{!319, !320}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !317, file: !297, line: 155, baseType: !293, size: 16, align: 16)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !317, file: !297, line: 156, baseType: !321, size: 112, align: 8, offset: 16)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 112, align: 8, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 14)
!324 = !{!325, !326, !327, !328, !329}
!325 = distinct !DIGlobalVariable(name: "garp_delay", scope: !0, file: !308, line: 150, type: !91, isLocal: false, isDefinition: true, variable: %struct._list** @garp_delay)
!326 = distinct !DIGlobalVariable(name: "garp_next_time", scope: !0, file: !48, line: 67, type: !206, isLocal: false, isDefinition: true, variable: %struct.timeval* @garp_next_time)
!327 = distinct !DIGlobalVariable(name: "garp_thread", scope: !0, file: !48, line: 68, type: !53, isLocal: false, isDefinition: true, variable: %struct._thread** @garp_thread)
!328 = distinct !DIGlobalVariable(name: "vrrp_initialised", scope: !0, file: !48, line: 69, type: !198, isLocal: false, isDefinition: true, variable: i8* @vrrp_initialised)
!329 = distinct !DIGlobalVariable(name: "VRRP_TSM", scope: !0, file: !48, line: 154, type: !330, isLocal: true, isDefinition: true, variable: [4 x [4 x %struct.anon.13]]* @VRRP_TSM)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 1024, align: 64, elements: !566)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !48, line: 152, size: 64, align: 64, elements: !332)
!332 = !{!333}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !331, file: !48, line: 153, baseType: !334, size: 64, align: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64, align: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !337}
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_t", file: !4, line: 310, baseType: !339)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_t", file: !4, line: 183, size: 7040, align: 64, elements: !340)
!340 = !{!341, !342, !343, !390, !410, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !558, !565}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !339, file: !4, line: 184, baseType: !293, size: 16, align: 16)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !339, file: !4, line: 185, baseType: !123, size: 64, align: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !339, file: !4, line: 186, baseType: !344, size: 64, align: 64, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64, align: 64)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_sgroup_t", file: !4, line: 133, baseType: !346)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_sgroup", file: !4, line: 109, size: 1024, align: 64, elements: !347)
!347 = !{!348, !349, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !384, !385, !386, !387, !388, !389}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !346, file: !4, line: 110, baseType: !123, size: 64, align: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !346, file: !4, line: 111, baseType: !350, size: 64, align: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, align: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "vector_t", file: !352, line: 34, baseType: !353)
!352 = !DIFile(filename: "../../lib/vector.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vector", file: !352, line: 30, size: 128, align: 64, elements: !354)
!354 = !{!355, !356, !357}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !353, file: !352, line: 31, baseType: !106, size: 32, align: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !353, file: !352, line: 32, baseType: !106, size: 32, align: 32, offset: 32)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !353, file: !352, line: 33, baseType: !358, size: 64, align: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp_instances", scope: !346, file: !4, line: 112, baseType: !91, size: 64, align: 64, offset: 128)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "num_member_fault", scope: !346, file: !4, line: 113, baseType: !106, size: 32, align: 32, offset: 192)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "num_member_init", scope: !346, file: !4, line: 114, baseType: !106, size: 32, align: 32, offset: 224)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !346, file: !4, line: 115, baseType: !52, size: 32, align: 32, offset: 256)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "sgroup_tracking_weight", scope: !346, file: !4, line: 116, baseType: !198, size: 8, align: 8, offset: 288)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "track_ifp", scope: !346, file: !4, line: 119, baseType: !91, size: 64, align: 64, offset: 320)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "track_script", scope: !346, file: !4, line: 120, baseType: !91, size: 64, align: 64, offset: 384)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "track_file", scope: !346, file: !4, line: 121, baseType: !91, size: 64, align: 64, offset: 448)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "track_bfd", scope: !346, file: !4, line: 122, baseType: !91, size: 64, align: 64, offset: 512)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "notify_exec", scope: !346, file: !4, line: 125, baseType: !198, size: 8, align: 8, offset: 576)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "script_backup", scope: !346, file: !4, line: 126, baseType: !370, size: 64, align: 64, offset: 640)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64, align: 64)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "notify_script_t", file: !275, line: 65, baseType: !372)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_notify_script", file: !275, line: 59, size: 192, align: 64, elements: !373)
!373 = !{!374, !376, !377, !378, !381}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !372, file: !275, line: 60, baseType: !375, size: 64, align: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !372, file: !275, line: 61, baseType: !52, size: 32, align: 32, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !372, file: !275, line: 62, baseType: !52, size: 32, align: 32, offset: 96)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !372, file: !275, line: 63, baseType: !379, size: 32, align: 32, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !225, line: 80, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !148, line: 125, baseType: !106)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !372, file: !275, line: 64, baseType: !382, size: 32, align: 32, offset: 160)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !225, line: 65, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !148, line: 126, baseType: !106)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "script_master", scope: !346, file: !4, line: 127, baseType: !370, size: 64, align: 64, offset: 704)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "script_fault", scope: !346, file: !4, line: 128, baseType: !370, size: 64, align: 64, offset: 768)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "script_stop", scope: !346, file: !4, line: 129, baseType: !370, size: 64, align: 64, offset: 832)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "script", scope: !346, file: !4, line: 130, baseType: !370, size: 64, align: 64, offset: 896)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !346, file: !4, line: 131, baseType: !52, size: 32, align: 32, offset: 960)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "last_email_state", scope: !346, file: !4, line: 132, baseType: !52, size: 32, align: 32, offset: 992)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !339, file: !4, line: 187, baseType: !391, size: 64, align: 64, offset: 192)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64, align: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_stats", file: !4, line: 169, baseType: !393)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_stats", file: !4, line: 136, size: 768, align: 64, elements: !394)
!394 = !{!395, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "advert_rcvd", scope: !393, file: !4, line: 137, baseType: !396, size: 64, align: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !310, line: 55, baseType: !58)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "advert_sent", scope: !393, file: !4, line: 138, baseType: !309, size: 32, align: 32, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "become_master", scope: !393, file: !4, line: 140, baseType: !309, size: 32, align: 32, offset: 96)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "release_master", scope: !393, file: !4, line: 141, baseType: !309, size: 32, align: 32, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "packet_len_err", scope: !393, file: !4, line: 143, baseType: !396, size: 64, align: 64, offset: 192)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "advert_interval_err", scope: !393, file: !4, line: 144, baseType: !396, size: 64, align: 64, offset: 256)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "ip_ttl_err", scope: !393, file: !4, line: 145, baseType: !396, size: 64, align: 64, offset: 320)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_type_rcvd", scope: !393, file: !4, line: 146, baseType: !396, size: 64, align: 64, offset: 384)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "addr_list_err", scope: !393, file: !4, line: 147, baseType: !396, size: 64, align: 64, offset: 448)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_authtype", scope: !393, file: !4, line: 149, baseType: !309, size: 32, align: 32, offset: 512)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "authtype_mismatch", scope: !393, file: !4, line: 151, baseType: !309, size: 32, align: 32, offset: 544)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "auth_failure", scope: !393, file: !4, line: 152, baseType: !309, size: 32, align: 32, offset: 576)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "pri_zero_rcvd", scope: !393, file: !4, line: 155, baseType: !396, size: 64, align: 64, offset: 640)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "pri_zero_sent", scope: !393, file: !4, line: 156, baseType: !396, size: 64, align: 64, offset: 704)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "ifp", scope: !339, file: !4, line: 188, baseType: !411, size: 64, align: 64, offset: 256)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64, align: 64)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "interface_t", file: !308, line: 111, baseType: !413)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_interface", file: !308, line: 76, size: 1792, align: 64, elements: !414)
!414 = !{!415, !419, !420, !425, !444, !445, !446, !447, !448, !454, !455, !456, !457, !458, !459, !461, !462, !463, !464, !476, !477, !478, !479, !480, !481, !482, !483}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "ifname", scope: !413, file: !308, line: 77, baseType: !416, size: 128, align: 8)
!416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 128, align: 8, elements: !417)
!417 = !{!418}
!418 = !DISubrange(count: 16)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !413, file: !308, line: 78, baseType: !307, size: 32, align: 32, offset: 128)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !413, file: !308, line: 79, baseType: !421, size: 32, align: 32, offset: 160)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !246, line: 31, size: 32, align: 32, elements: !422)
!422 = !{!423}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !421, file: !246, line: 33, baseType: !424, size: 32, align: 32)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !246, line: 30, baseType: !309)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !413, file: !308, line: 80, baseType: !426, size: 128, align: 32, offset: 192)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !246, line: 211, size: 128, align: 32, elements: !427)
!427 = !{!428}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !426, file: !246, line: 220, baseType: !429, size: 128, align: 32)
!429 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !426, file: !246, line: 213, size: 128, align: 32, elements: !430)
!430 = !{!431, !435, !440}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !429, file: !246, line: 215, baseType: !432, size: 128, align: 8)
!432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 128, align: 8, elements: !417)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !310, line: 48, baseType: !434)
!434 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !429, file: !246, line: 217, baseType: !436, size: 128, align: 16)
!436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 128, align: 16, elements: !438)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !310, line: 49, baseType: !151)
!438 = !{!439}
!439 = !DISubrange(count: 8)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !429, file: !246, line: 218, baseType: !441, size: 128, align: 32)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 128, align: 32, elements: !442)
!442 = !{!443}
!443 = !DISubrange(count: 4)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "ifi_flags", scope: !413, file: !308, line: 81, baseType: !106, size: 32, align: 32, offset: 320)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "linkbeat_use_polling", scope: !413, file: !308, line: 82, baseType: !198, size: 8, align: 8, offset: 352)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !413, file: !308, line: 83, baseType: !309, size: 32, align: 32, offset: 384)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "hw_type", scope: !413, file: !308, line: 84, baseType: !151, size: 16, align: 16, offset: 416)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr", scope: !413, file: !308, line: 85, baseType: !449, size: 256, align: 8, offset: 432)
!449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !450, size: 256, align: 8, elements: !452)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !225, line: 33, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !148, line: 30, baseType: !434)
!452 = !{!453}
!453 = !DISubrange(count: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_bcast", scope: !413, file: !308, line: 86, baseType: !449, size: 256, align: 8, offset: 688)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_len", scope: !413, file: !308, line: 87, baseType: !168, size: 64, align: 64, offset: 960)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "lb_type", scope: !413, file: !308, line: 88, baseType: !52, size: 32, align: 32, offset: 1024)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "vmac", scope: !413, file: !308, line: 90, baseType: !198, size: 8, align: 8, offset: 1056)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifindex", scope: !413, file: !308, line: 91, baseType: !307, size: 32, align: 32, offset: 1088)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifp", scope: !413, file: !308, line: 92, baseType: !460, size: 64, align: 64, offset: 1152)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64, align: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifindex", scope: !413, file: !308, line: 94, baseType: !307, size: 32, align: 32, offset: 1216)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifp", scope: !413, file: !308, line: 96, baseType: !460, size: 64, align: 64, offset: 1280)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master", scope: !413, file: !308, line: 97, baseType: !198, size: 8, align: 8, offset: 1344)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "garp_delay", scope: !413, file: !308, line: 100, baseType: !465, size: 64, align: 64, offset: 1408)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64, align: 64)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "garp_delay_t", file: !308, line: 73, baseType: !467)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_garp_delay", file: !308, line: 65, size: 704, align: 64, elements: !468)
!468 = !{!469, !470, !471, !472, !473, !474, !475}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "garp_interval", scope: !467, file: !308, line: 66, baseType: !206, size: 128, align: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "have_garp_interval", scope: !467, file: !308, line: 67, baseType: !198, size: 8, align: 8, offset: 128)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "gna_interval", scope: !467, file: !308, line: 68, baseType: !206, size: 128, align: 64, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "have_gna_interval", scope: !467, file: !308, line: 69, baseType: !198, size: 8, align: 8, offset: 320)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "garp_next_time", scope: !467, file: !308, line: 70, baseType: !206, size: 128, align: 64, offset: 384)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "gna_next_time", scope: !467, file: !308, line: 71, baseType: !206, size: 128, align: 64, offset: 512)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "aggregation_group", scope: !467, file: !308, line: 72, baseType: !52, size: 32, align: 32, offset: 640)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "gna_router", scope: !413, file: !308, line: 101, baseType: !198, size: 8, align: 8, offset: 1472)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_config", scope: !413, file: !308, line: 102, baseType: !52, size: 32, align: 32, offset: 1504)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_ignore_value", scope: !413, file: !308, line: 103, baseType: !309, size: 32, align: 32, offset: 1536)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_filter_value", scope: !413, file: !308, line: 104, baseType: !309, size: 32, align: 32, offset: 1568)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "reset_promote_secondaries", scope: !413, file: !308, line: 105, baseType: !309, size: 32, align: 32, offset: 1600)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "rp_filter", scope: !413, file: !308, line: 107, baseType: !106, size: 32, align: 32, offset: 1632)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "promote_secondaries_already_set", scope: !413, file: !308, line: 109, baseType: !198, size: 8, align: 8, offset: 1664)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "tracking_vrrp", scope: !413, file: !308, line: 110, baseType: !91, size: 64, align: 64, offset: 1728)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "dont_track_primary", scope: !339, file: !4, line: 189, baseType: !198, size: 8, align: 8, offset: 320)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "linkbeat_use_polling", scope: !339, file: !4, line: 190, baseType: !198, size: 8, align: 8, offset: 328)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "skip_check_adv_addr", scope: !339, file: !4, line: 191, baseType: !198, size: 8, align: 8, offset: 336)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "strict_mode", scope: !339, file: !4, line: 193, baseType: !106, size: 32, align: 32, offset: 352)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "vmac_flags", scope: !339, file: !4, line: 195, baseType: !58, size: 64, align: 64, offset: 384)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "vmac_ifname", scope: !339, file: !4, line: 196, baseType: !416, size: 128, align: 8, offset: 448)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "track_ifp", scope: !339, file: !4, line: 198, baseType: !91, size: 64, align: 64, offset: 576)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "track_script", scope: !339, file: !4, line: 199, baseType: !91, size: 64, align: 64, offset: 640)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "track_file", scope: !339, file: !4, line: 200, baseType: !91, size: 64, align: 64, offset: 704)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "num_script_if_fault", scope: !339, file: !4, line: 204, baseType: !106, size: 32, align: 32, offset: 768)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "num_script_init", scope: !339, file: !4, line: 205, baseType: !106, size: 32, align: 32, offset: 800)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !339, file: !4, line: 206, baseType: !296, size: 1024, align: 64, offset: 832)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "saddr_from_config", scope: !339, file: !4, line: 207, baseType: !198, size: 8, align: 8, offset: 1856)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "track_saddr", scope: !339, file: !4, line: 208, baseType: !198, size: 8, align: 8, offset: 1864)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_saddr", scope: !339, file: !4, line: 209, baseType: !296, size: 1024, align: 64, offset: 1920)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "unicast_peer", scope: !339, file: !4, line: 210, baseType: !91, size: 64, align: 64, offset: 2944)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "unicast_chksum_compat", scope: !339, file: !4, line: 212, baseType: !501, size: 32, align: 32, offset: 3008)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "chksum_compatibility_t", file: !4, line: 179, baseType: !3)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "master_saddr", scope: !339, file: !4, line: 214, baseType: !296, size: 1024, align: 64, offset: 3072)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "master_priority", scope: !339, file: !4, line: 215, baseType: !433, size: 8, align: 8, offset: 4096)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "last_transition", scope: !339, file: !4, line: 216, baseType: !206, size: 128, align: 64, offset: 4160)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "garp_delay", scope: !339, file: !4, line: 217, baseType: !106, size: 32, align: 32, offset: 4288)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh", scope: !339, file: !4, line: 218, baseType: !206, size: 128, align: 64, offset: 4352)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh_timer", scope: !339, file: !4, line: 219, baseType: !206, size: 128, align: 64, offset: 4480)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "garp_rep", scope: !339, file: !4, line: 220, baseType: !106, size: 32, align: 32, offset: 4608)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh_rep", scope: !339, file: !4, line: 221, baseType: !106, size: 32, align: 32, offset: 4640)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "garp_lower_prio_delay", scope: !339, file: !4, line: 222, baseType: !106, size: 32, align: 32, offset: 4672)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "garp_pending", scope: !339, file: !4, line: 223, baseType: !198, size: 8, align: 8, offset: 4704)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "gna_pending", scope: !339, file: !4, line: 224, baseType: !198, size: 8, align: 8, offset: 4712)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "garp_lower_prio_rep", scope: !339, file: !4, line: 225, baseType: !106, size: 32, align: 32, offset: 4736)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "lower_prio_no_advert", scope: !339, file: !4, line: 226, baseType: !106, size: 32, align: 32, offset: 4768)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "higher_prio_send_advert", scope: !339, file: !4, line: 227, baseType: !106, size: 32, align: 32, offset: 4800)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "vrid", scope: !339, file: !4, line: 228, baseType: !433, size: 8, align: 8, offset: 4832)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "base_priority", scope: !339, file: !4, line: 229, baseType: !433, size: 8, align: 8, offset: 4840)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "effective_priority", scope: !339, file: !4, line: 230, baseType: !433, size: 8, align: 8, offset: 4848)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "total_priority", scope: !339, file: !4, line: 231, baseType: !52, size: 32, align: 32, offset: 4864)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "vipset", scope: !339, file: !4, line: 233, baseType: !198, size: 8, align: 8, offset: 4896)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "vip", scope: !339, file: !4, line: 234, baseType: !91, size: 64, align: 64, offset: 4928)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "evip", scope: !339, file: !4, line: 235, baseType: !91, size: 64, align: 64, offset: 4992)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "promote_secondaries", scope: !339, file: !4, line: 239, baseType: !198, size: 8, align: 8, offset: 5056)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "evip_add_ipv6", scope: !339, file: !4, line: 240, baseType: !198, size: 8, align: 8, offset: 5064)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "vroutes", scope: !339, file: !4, line: 241, baseType: !91, size: 64, align: 64, offset: 5120)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "vrules", scope: !339, file: !4, line: 242, baseType: !91, size: 64, align: 64, offset: 5184)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "adver_int", scope: !339, file: !4, line: 243, baseType: !106, size: 32, align: 32, offset: 5248)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "master_adver_int", scope: !339, file: !4, line: 244, baseType: !106, size: 32, align: 32, offset: 5280)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !339, file: !4, line: 249, baseType: !106, size: 32, align: 32, offset: 5312)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_rx_buf_size", scope: !339, file: !4, line: 252, baseType: !168, size: 64, align: 64, offset: 5376)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "iptable_rules_set", scope: !339, file: !4, line: 254, baseType: !198, size: 8, align: 8, offset: 5440)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "nopreempt", scope: !339, file: !4, line: 255, baseType: !198, size: 8, align: 8, offset: 5448)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_delay", scope: !339, file: !4, line: 256, baseType: !58, size: 64, align: 64, offset: 5504)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_time", scope: !339, file: !4, line: 260, baseType: !206, size: 128, align: 64, offset: 5568)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !339, file: !4, line: 261, baseType: !52, size: 32, align: 32, offset: 5696)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "wantstate", scope: !339, file: !4, line: 265, baseType: !52, size: 32, align: 32, offset: 5728)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "reload_master", scope: !339, file: !4, line: 266, baseType: !198, size: 8, align: 8, offset: 5760)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "sockets", scope: !339, file: !4, line: 267, baseType: !287, size: 64, align: 64, offset: 5824)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !339, file: !4, line: 269, baseType: !52, size: 32, align: 32, offset: 5888)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !339, file: !4, line: 271, baseType: !52, size: 32, align: 32, offset: 5920)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !339, file: !4, line: 274, baseType: !52, size: 32, align: 32, offset: 5952)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "last_email_state", scope: !339, file: !4, line: 275, baseType: !52, size: 32, align: 32, offset: 5984)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "notify_exec", scope: !339, file: !4, line: 276, baseType: !198, size: 8, align: 8, offset: 6016)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "script_backup", scope: !339, file: !4, line: 277, baseType: !370, size: 64, align: 64, offset: 6080)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "script_master", scope: !339, file: !4, line: 278, baseType: !370, size: 64, align: 64, offset: 6144)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "script_fault", scope: !339, file: !4, line: 279, baseType: !370, size: 64, align: 64, offset: 6208)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "script_stop", scope: !339, file: !4, line: 280, baseType: !370, size: 64, align: 64, offset: 6272)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "script_master_rx_lower_pri", scope: !339, file: !4, line: 281, baseType: !370, size: 64, align: 64, offset: 6336)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "script", scope: !339, file: !4, line: 282, baseType: !370, size: 64, align: 64, offset: 6400)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "ms_down_timer", scope: !339, file: !4, line: 285, baseType: !309, size: 32, align: 32, offset: 6464)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "sands", scope: !339, file: !4, line: 286, baseType: !206, size: 128, align: 64, offset: 6528)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "send_buffer", scope: !339, file: !4, line: 289, baseType: !123, size: 64, align: 64, offset: 6656)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "send_buffer_size", scope: !339, file: !4, line: 290, baseType: !168, size: 64, align: 64, offset: 6720)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_csum", scope: !339, file: !4, line: 291, baseType: !309, size: 32, align: 32, offset: 6784)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "auth_type", scope: !339, file: !4, line: 295, baseType: !433, size: 8, align: 8, offset: 6816)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "auth_data", scope: !339, file: !4, line: 296, baseType: !557, size: 64, align: 8, offset: 6824)
!557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 64, align: 8, elements: !438)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "ipsecah_counter", scope: !339, file: !4, line: 299, baseType: !559, size: 64, align: 32, offset: 6912)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_counter_t", file: !560, line: 58, baseType: !561)
!560 = !DIFile(filename: "./../include/vrrp_ipsecah.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_seq_counter", file: !560, line: 55, size: 64, align: 32, elements: !562)
!562 = !{!563, !564}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "cycle", scope: !561, file: !560, line: 56, baseType: !198, size: 8, align: 8)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "seq_number", scope: !561, file: !560, line: 57, baseType: !309, size: 32, align: 32, offset: 32)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "ip_id", scope: !339, file: !4, line: 309, baseType: !52, size: 32, align: 32, offset: 6976)
!566 = !{!443, !443}
!567 = !{i32 2, !"Dwarf Version", i32 4}
!568 = !{i32 2, !"Debug Info Version", i32 3}
!569 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!570 = distinct !DISubprogram(name: "vrrp_init_instance_sands", scope: !48, file: !48, line: 272, type: !335, isLocal: false, isDefinition: true, scopeLine: 273, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !235)
!571 = !DILocalVariable(name: "vrrp", arg: 1, scope: !570, file: !48, line: 272, type: !337)
!572 = !DIExpression()
!573 = !DILocation(line: 272, column: 35, scope: !570)
!574 = !DILocation(line: 274, column: 2, scope: !570)
!575 = !DILocation(line: 276, column: 6, scope: !576)
!576 = distinct !DILexicalBlock(scope: !570, file: !48, line: 276, column: 6)
!577 = !DILocation(line: 276, column: 12, scope: !576)
!578 = !DILocation(line: 276, column: 18, scope: !576)
!579 = !DILocation(line: 276, column: 6, scope: !570)
!580 = !DILocation(line: 277, column: 7, scope: !581)
!581 = distinct !DILexicalBlock(scope: !582, file: !48, line: 277, column: 7)
!582 = distinct !DILexicalBlock(scope: !576, file: !48, line: 276, column: 24)
!583 = !DILocation(line: 277, column: 13, scope: !581)
!584 = !DILocation(line: 277, column: 7, scope: !582)
!585 = !DILocation(line: 278, column: 4, scope: !581)
!586 = !DILocation(line: 278, column: 10, scope: !581)
!587 = !DILocation(line: 278, column: 18, scope: !581)
!588 = !DILocation(line: 280, column: 4, scope: !581)
!589 = !DILocation(line: 280, column: 10, scope: !581)
!590 = !DILocation(line: 280, column: 43, scope: !581)
!591 = !DILocation(line: 280, column: 49, scope: !581)
!592 = !DILocation(line: 280, column: 18, scope: !581)
!593 = !DILocation(line: 280, column: 18, scope: !594)
!594 = !DILexicalBlockFile(scope: !581, file: !48, discriminator: 1)
!595 = !DILocation(line: 281, column: 2, scope: !582)
!596 = !DILocation(line: 282, column: 11, scope: !597)
!597 = distinct !DILexicalBlock(scope: !576, file: !48, line: 282, column: 11)
!598 = !DILocation(line: 282, column: 17, scope: !597)
!599 = !DILocation(line: 282, column: 23, scope: !597)
!600 = !DILocation(line: 282, column: 11, scope: !576)
!601 = !DILocation(line: 288, column: 3, scope: !602)
!602 = distinct !DILexicalBlock(scope: !597, file: !48, line: 282, column: 29)
!603 = !DILocation(line: 288, column: 9, scope: !602)
!604 = !DILocation(line: 288, column: 42, scope: !602)
!605 = !DILocation(line: 288, column: 48, scope: !602)
!606 = !DILocation(line: 288, column: 17, scope: !602)
!607 = !DILocation(line: 288, column: 17, scope: !608)
!608 = !DILexicalBlockFile(scope: !602, file: !48, discriminator: 1)
!609 = !DILocation(line: 289, column: 2, scope: !602)
!610 = !DILocation(line: 290, column: 11, scope: !611)
!611 = distinct !DILexicalBlock(scope: !597, file: !48, line: 290, column: 11)
!612 = !DILocation(line: 290, column: 17, scope: !611)
!613 = !DILocation(line: 290, column: 23, scope: !611)
!614 = !DILocation(line: 290, column: 28, scope: !611)
!615 = !DILocation(line: 290, column: 31, scope: !616)
!616 = !DILexicalBlockFile(scope: !611, file: !48, discriminator: 1)
!617 = !DILocation(line: 290, column: 37, scope: !616)
!618 = !DILocation(line: 290, column: 43, scope: !616)
!619 = !DILocation(line: 290, column: 11, scope: !616)
!620 = !DILocation(line: 291, column: 3, scope: !611)
!621 = !DILocation(line: 291, column: 9, scope: !611)
!622 = !DILocation(line: 291, column: 15, scope: !611)
!623 = !DILocation(line: 291, column: 22, scope: !611)
!624 = !DILocation(line: 292, column: 1, scope: !570)
!625 = distinct !DISubprogram(name: "vrrp_thread_requeue_read", scope: !48, file: !48, line: 380, type: !335, isLocal: false, isDefinition: true, scopeLine: 381, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !235)
!626 = !DILocalVariable(name: "vrrp", arg: 1, scope: !625, file: !48, line: 380, type: !337)
!627 = !DILocation(line: 380, column: 34, scope: !625)
!628 = !DILocation(line: 382, column: 22, scope: !625)
!629 = !DILocation(line: 382, column: 30, scope: !625)
!630 = !DILocation(line: 382, column: 36, scope: !625)
!631 = !DILocation(line: 382, column: 45, scope: !625)
!632 = !DILocation(line: 382, column: 66, scope: !625)
!633 = !DILocation(line: 382, column: 72, scope: !625)
!634 = !DILocation(line: 382, column: 81, scope: !625)
!635 = !DILocation(line: 382, column: 52, scope: !625)
!636 = !DILocation(line: 382, column: 2, scope: !637)
!637 = !DILexicalBlockFile(scope: !625, file: !48, discriminator: 1)
!638 = !DILocation(line: 383, column: 1, scope: !625)
!639 = distinct !DISubprogram(name: "vrrp_timer_fd", scope: !48, file: !48, line: 362, type: !640, isLocal: true, isDefinition: true, scopeLine: 363, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !235)
!640 = !DISubroutineType(types: !641)
!641 = !{!58, !642}
!642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!643 = !DILocalVariable(name: "fd", arg: 1, scope: !639, file: !48, line: 362, type: !642)
!644 = !DILocation(line: 362, column: 25, scope: !639)
!645 = !DILocalVariable(name: "timer", scope: !639, file: !48, line: 364, type: !206)
!646 = !DILocation(line: 364, column: 12, scope: !639)
!647 = !DILocation(line: 366, column: 29, scope: !639)
!648 = !DILocation(line: 366, column: 10, scope: !639)
!649 = !DILocation(line: 366, column: 10, scope: !650)
!650 = !DILexicalBlockFile(scope: !639, file: !48, discriminator: 1)
!651 = !DILocation(line: 370, column: 12, scope: !652)
!652 = distinct !DILexicalBlock(scope: !639, file: !48, line: 370, column: 6)
!653 = !DILocation(line: 370, column: 19, scope: !652)
!654 = !DILocation(line: 370, column: 6, scope: !639)
!655 = !DILocation(line: 371, column: 3, scope: !652)
!656 = !DILocation(line: 372, column: 8, scope: !657)
!657 = distinct !DILexicalBlock(scope: !639, file: !48, line: 372, column: 5)
!658 = !DILocation(line: 372, column: 15, scope: !657)
!659 = !DILocation(line: 372, column: 5, scope: !639)
!660 = !DILocation(line: 372, column: 8, scope: !661)
!661 = !DILexicalBlockFile(scope: !657, file: !48, discriminator: 1)
!662 = !DILocation(line: 372, column: 5, scope: !661)
!663 = !DILocation(line: 372, column: 6, scope: !661)
!664 = !DILocation(line: 372, column: 8, scope: !665)
!665 = !DILexicalBlockFile(scope: !657, file: !48, discriminator: 2)
!666 = !DILocation(line: 372, column: 5, scope: !665)
!667 = !DILocation(line: 373, column: 3, scope: !657)
!668 = !DILocation(line: 375, column: 1, scope: !639)
!669 = distinct !{!669, !668}
!670 = !DILocation(line: 375, column: 4, scope: !671)
!671 = !DILexicalBlockFile(scope: !672, file: !48, discriminator: 1)
!672 = distinct !DILexicalBlock(scope: !639, file: !48, line: 375, column: 4)
!673 = !DILocation(line: 375, column: 11, scope: !671)
!674 = !DILocation(line: 375, column: 12, scope: !671)
!675 = !DILocation(line: 375, column: 17, scope: !671)
!676 = !DILocation(line: 375, column: 4, scope: !677)
!677 = !DILexicalBlockFile(scope: !678, file: !48, discriminator: 2)
!678 = distinct !DILexicalBlock(scope: !679, file: !48, line: 375, column: 17)
!679 = distinct !DILexicalBlock(scope: !672, file: !48, line: 375, column: 17)
!680 = !DILocation(line: 375, column: 19, scope: !677)
!681 = !DILocation(line: 375, column: 12, scope: !677)
!682 = !DILocation(line: 375, column: 24, scope: !677)
!683 = !DILocation(line: 375, column: 26, scope: !684)
!684 = !DILexicalBlockFile(scope: !672, file: !48, discriminator: 3)
!685 = !DILocation(line: 376, column: 9, scope: !639)
!686 = !DILocation(line: 376, column: 2, scope: !639)
!687 = !DILocation(line: 377, column: 1, scope: !639)
!688 = distinct !DISubprogram(name: "vrrp_thread_requeue_read_relative", scope: !48, file: !48, line: 386, type: !689, isLocal: false, isDefinition: true, scopeLine: 387, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !235)
!689 = !DISubroutineType(types: !690)
!690 = !{null, !337, !309}
!691 = !DILocalVariable(name: "vrrp", arg: 1, scope: !688, file: !48, line: 386, type: !337)
!692 = !DILocation(line: 386, column: 43, scope: !688)
!693 = !DILocalVariable(name: "timer", arg: 2, scope: !688, file: !48, line: 386, type: !309)
!694 = !DILocation(line: 386, column: 58, scope: !688)
!695 = !DILocation(line: 388, column: 2, scope: !688)
!696 = !DILocation(line: 388, column: 8, scope: !688)
!697 = !DILocation(line: 388, column: 31, scope: !688)
!698 = !DILocation(line: 388, column: 37, scope: !688)
!699 = !DILocation(line: 388, column: 44, scope: !688)
!700 = !DILocation(line: 388, column: 16, scope: !688)
!701 = !DILocation(line: 388, column: 16, scope: !702)
!702 = !DILexicalBlockFile(scope: !688, file: !48, discriminator: 1)
!703 = !DILocation(line: 389, column: 6, scope: !704)
!704 = distinct !DILexicalBlock(scope: !688, file: !48, line: 389, column: 5)
!705 = !DILocation(line: 389, column: 12, scope: !704)
!706 = !DILocation(line: 389, column: 8, scope: !704)
!707 = !DILocation(line: 389, column: 15, scope: !704)
!708 = !DILocation(line: 389, column: 5, scope: !688)
!709 = !DILocation(line: 389, column: 6, scope: !710)
!710 = !DILexicalBlockFile(scope: !704, file: !48, discriminator: 1)
!711 = !DILocation(line: 389, column: 12, scope: !710)
!712 = !DILocation(line: 389, column: 8, scope: !710)
!713 = !DILocation(line: 389, column: 5, scope: !710)
!714 = !DILocation(line: 389, column: 6, scope: !715)
!715 = !DILexicalBlockFile(scope: !704, file: !48, discriminator: 2)
!716 = !DILocation(line: 389, column: 12, scope: !715)
!717 = !DILocation(line: 389, column: 8, scope: !715)
!718 = !DILocation(line: 389, column: 5, scope: !715)
!719 = !DILocation(line: 390, column: 3, scope: !704)
!720 = !DILocation(line: 390, column: 9, scope: !704)
!721 = !DILocation(line: 390, column: 17, scope: !704)
!722 = !DILocation(line: 392, column: 27, scope: !688)
!723 = !DILocation(line: 392, column: 2, scope: !688)
!724 = !DILocation(line: 393, column: 1, scope: !688)
!725 = distinct !DISubprogram(name: "vrrp_thread_add_read", scope: !48, file: !48, line: 468, type: !335, isLocal: false, isDefinition: true, scopeLine: 469, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !235)
!726 = !DILocalVariable(name: "vrrp", arg: 1, scope: !725, file: !48, line: 468, type: !337)
!727 = !DILocation(line: 468, column: 30, scope: !725)
!728 = !DILocation(line: 470, column: 42, scope: !725)
!729 = !DILocation(line: 471, column: 7, scope: !725)
!730 = !DILocation(line: 471, column: 13, scope: !725)
!731 = !DILocation(line: 471, column: 22, scope: !725)
!732 = !DILocation(line: 471, column: 28, scope: !725)
!733 = !DILocation(line: 471, column: 37, scope: !725)
!734 = !DILocation(line: 471, column: 58, scope: !725)
!735 = !DILocation(line: 471, column: 64, scope: !725)
!736 = !DILocation(line: 471, column: 73, scope: !725)
!737 = !DILocation(line: 471, column: 44, scope: !725)
!738 = !DILocation(line: 470, column: 26, scope: !725)
!739 = !DILocation(line: 470, column: 2, scope: !725)
!740 = !DILocation(line: 470, column: 8, scope: !725)
!741 = !DILocation(line: 470, column: 17, scope: !725)
!742 = !DILocation(line: 470, column: 24, scope: !725)
!743 = !DILocation(line: 472, column: 1, scope: !725)
!744 = distinct !DISubprogram(name: "vrrp_read_dispatcher_thread", scope: !48, file: !48, line: 955, type: !50, isLocal: true, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !235)
!745 = !DILocalVariable(name: "thread", arg: 1, scope: !744, file: !48, line: 955, type: !53)
!746 = !DILocation(line: 955, column: 40, scope: !744)
!747 = !DILocalVariable(name: "vrrp_timer", scope: !744, file: !48, line: 957, type: !58)
!748 = !DILocation(line: 957, column: 16, scope: !744)
!749 = !DILocalVariable(name: "sock", scope: !744, file: !48, line: 958, type: !287)
!750 = !DILocation(line: 958, column: 10, scope: !744)
!751 = !DILocalVariable(name: "fd", scope: !744, file: !48, line: 959, type: !52)
!752 = !DILocation(line: 959, column: 6, scope: !744)
!753 = !DILocation(line: 962, column: 11, scope: !744)
!754 = !DILocation(line: 962, column: 20, scope: !744)
!755 = !DILocation(line: 962, column: 9, scope: !744)
!756 = !DILocation(line: 962, column: 7, scope: !744)
!757 = !DILocation(line: 965, column: 6, scope: !758)
!758 = distinct !DILexicalBlock(scope: !744, file: !48, line: 965, column: 6)
!759 = !DILocation(line: 965, column: 14, scope: !758)
!760 = !DILocation(line: 965, column: 19, scope: !758)
!761 = !DILocation(line: 965, column: 42, scope: !758)
!762 = !DILocation(line: 965, column: 45, scope: !763)
!763 = !DILexicalBlockFile(scope: !758, file: !48, discriminator: 1)
!764 = !DILocation(line: 965, column: 51, scope: !763)
!765 = !DILocation(line: 965, column: 57, scope: !763)
!766 = !DILocation(line: 965, column: 6, scope: !763)
!767 = !DILocation(line: 966, column: 37, scope: !758)
!768 = !DILocation(line: 966, column: 43, scope: !758)
!769 = !DILocation(line: 966, column: 8, scope: !758)
!770 = !DILocation(line: 966, column: 6, scope: !758)
!771 = !DILocation(line: 966, column: 3, scope: !758)
!772 = !DILocation(line: 968, column: 29, scope: !758)
!773 = !DILocation(line: 968, column: 8, scope: !758)
!774 = !DILocation(line: 968, column: 6, scope: !758)
!775 = !DILocation(line: 971, column: 29, scope: !744)
!776 = !DILocation(line: 971, column: 15, scope: !744)
!777 = !DILocation(line: 971, column: 13, scope: !744)
!778 = !DILocation(line: 972, column: 6, scope: !779)
!779 = distinct !DILexicalBlock(scope: !744, file: !48, line: 972, column: 6)
!780 = !DILocation(line: 972, column: 9, scope: !779)
!781 = !DILocation(line: 972, column: 6, scope: !744)
!782 = !DILocation(line: 973, column: 34, scope: !779)
!783 = !DILocation(line: 973, column: 42, scope: !779)
!784 = !DILocation(line: 974, column: 13, scope: !779)
!785 = !DILocation(line: 974, column: 19, scope: !779)
!786 = !DILocation(line: 974, column: 23, scope: !779)
!787 = !DILocation(line: 973, column: 18, scope: !779)
!788 = !DILocation(line: 973, column: 3, scope: !779)
!789 = !DILocation(line: 973, column: 9, scope: !779)
!790 = !DILocation(line: 973, column: 16, scope: !779)
!791 = !DILocation(line: 976, column: 2, scope: !744)
!792 = distinct !DISubprogram(name: "vrrp_dispatcher_init", scope: !48, file: !48, line: 629, type: !50, isLocal: false, isDefinition: true, scopeLine: 630, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !235)
!793 = !DILocalVariable(name: "thread", arg: 1, scope: !792, file: !48, line: 629, type: !53)
!794 = !DILocation(line: 629, column: 57, scope: !792)
!795 = !DILocation(line: 631, column: 23, scope: !792)
!796 = !DILocation(line: 631, column: 34, scope: !792)
!797 = !DILocation(line: 631, column: 2, scope: !792)
!798 = !DILocation(line: 634, column: 21, scope: !792)
!799 = !DILocation(line: 634, column: 32, scope: !792)
!800 = !DILocation(line: 634, column: 2, scope: !792)
!801 = !DILocation(line: 637, column: 15, scope: !792)
!802 = !DILocation(line: 637, column: 26, scope: !792)
!803 = !DILocation(line: 637, column: 2, scope: !792)
!804 = !DILocation(line: 641, column: 24, scope: !792)
!805 = !DILocation(line: 641, column: 35, scope: !792)
!806 = !DILocation(line: 641, column: 2, scope: !792)
!807 = !DILocation(line: 644, column: 6, scope: !808)
!808 = distinct !DILexicalBlock(scope: !792, file: !48, line: 644, column: 6)
!809 = !DILocation(line: 644, column: 6, scope: !792)
!810 = !DILocation(line: 645, column: 18, scope: !808)
!811 = !DILocation(line: 645, column: 29, scope: !808)
!812 = !DILocation(line: 645, column: 3, scope: !808)
!813 = !DILocation(line: 647, column: 19, scope: !792)
!814 = !DILocation(line: 649, column: 2, scope: !792)
!815 = distinct !DISubprogram(name: "vrrp_create_sockpool", scope: !48, file: !48, line: 509, type: !816, isLocal: true, isDefinition: true, scopeLine: 510, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !235)
!816 = !DISubroutineType(types: !817)
!817 = !{null, !91}
!818 = !DILocalVariable(name: "l", arg: 1, scope: !815, file: !48, line: 509, type: !91)
!819 = !DILocation(line: 509, column: 27, scope: !815)
!820 = !DILocalVariable(name: "vrrp", scope: !815, file: !48, line: 511, type: !337)
!821 = !DILocation(line: 511, column: 10, scope: !815)
!822 = !DILocalVariable(name: "e", scope: !815, file: !48, line: 512, type: !823)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "element", file: !92, line: 30, baseType: !97)
!824 = !DILocation(line: 512, column: 10, scope: !815)
!825 = !DILocalVariable(name: "ifindex", scope: !815, file: !48, line: 513, type: !307)
!826 = !DILocation(line: 513, column: 12, scope: !815)
!827 = !DILocalVariable(name: "proto", scope: !815, file: !48, line: 514, type: !52)
!828 = !DILocation(line: 514, column: 6, scope: !815)
!829 = !DILocalVariable(name: "unicast", scope: !815, file: !48, line: 515, type: !198)
!830 = !DILocation(line: 515, column: 6, scope: !815)
!831 = !DILocalVariable(name: "sock", scope: !815, file: !48, line: 516, type: !287)
!832 = !DILocation(line: 516, column: 10, scope: !815)
!833 = !DILocation(line: 518, column: 15, scope: !834)
!834 = distinct !DILexicalBlock(scope: !815, file: !48, line: 518, column: 2)
!835 = !DILocation(line: 518, column: 26, scope: !834)
!836 = !DILocation(line: 518, column: 14, scope: !834)
!837 = !DILocation(line: 518, column: 37, scope: !838)
!838 = !DILexicalBlockFile(scope: !834, file: !48, discriminator: 1)
!839 = !DILocation(line: 518, column: 48, scope: !838)
!840 = !DILocation(line: 518, column: 36, scope: !838)
!841 = !DILocation(line: 518, column: 35, scope: !838)
!842 = !DILocation(line: 518, column: 35, scope: !843)
!843 = !DILexicalBlockFile(scope: !834, file: !48, discriminator: 2)
!844 = !DILocation(line: 518, column: 4, scope: !845)
!845 = !DILexicalBlockFile(scope: !834, file: !48, discriminator: 3)
!846 = !DILocation(line: 518, column: 15, scope: !845)
!847 = !DILocation(line: 518, column: 22, scope: !845)
!848 = !DILocation(line: 518, column: 35, scope: !845)
!849 = !DILocation(line: 518, column: 35, scope: !850)
!850 = !DILexicalBlockFile(scope: !834, file: !48, discriminator: 4)
!851 = !DILocation(line: 518, column: 14, scope: !850)
!852 = !DILocation(line: 518, column: 14, scope: !853)
!853 = !DILexicalBlockFile(scope: !834, file: !48, discriminator: 5)
!854 = !DILocation(line: 518, column: 14, scope: !855)
!855 = !DILexicalBlockFile(scope: !834, file: !48, discriminator: 6)
!856 = !DILocation(line: 518, column: 11, scope: !855)
!857 = !DILocation(line: 518, column: 7, scope: !855)
!858 = !DILocation(line: 518, column: 5, scope: !859)
!859 = !DILexicalBlockFile(scope: !860, file: !48, discriminator: 7)
!860 = distinct !DILexicalBlock(scope: !834, file: !48, line: 518, column: 2)
!861 = !DILocation(line: 518, column: 4, scope: !859)
!862 = !DILocation(line: 518, column: 8, scope: !859)
!863 = !DILocation(line: 518, column: 23, scope: !864)
!864 = !DILexicalBlockFile(scope: !860, file: !48, discriminator: 8)
!865 = !DILocation(line: 518, column: 27, scope: !864)
!866 = !DILocation(line: 518, column: 21, scope: !864)
!867 = !DILocation(line: 518, column: 19, scope: !864)
!868 = !DILocation(line: 518, column: 2, scope: !869)
!869 = !DILexicalBlockFile(scope: !834, file: !48, discriminator: 9)
!870 = !DILocation(line: 521, column: 43, scope: !871)
!871 = distinct !DILexicalBlock(scope: !860, file: !48, line: 518, column: 57)
!872 = !DILocation(line: 521, column: 49, scope: !871)
!873 = !DILocation(line: 521, column: 7, scope: !871)
!874 = !DILocation(line: 521, column: 6, scope: !871)
!875 = !DILocation(line: 521, column: 66, scope: !876)
!876 = !DILexicalBlockFile(scope: !871, file: !48, discriminator: 1)
!877 = !DILocation(line: 521, column: 72, scope: !876)
!878 = !DILocation(line: 521, column: 78, scope: !876)
!879 = !DILocation(line: 521, column: 88, scope: !876)
!880 = !DILocation(line: 521, column: 6, scope: !876)
!881 = !DILocation(line: 523, column: 17, scope: !871)
!882 = !DILocation(line: 523, column: 23, scope: !871)
!883 = !DILocation(line: 523, column: 29, scope: !871)
!884 = !DILocation(line: 521, column: 6, scope: !885)
!885 = !DILexicalBlockFile(scope: !871, file: !48, discriminator: 2)
!886 = !DILocation(line: 521, column: 6, scope: !887)
!887 = !DILexicalBlockFile(scope: !871, file: !48, discriminator: 3)
!888 = !DILocation(line: 519, column: 11, scope: !871)
!889 = !DILocation(line: 524, column: 16, scope: !871)
!890 = !DILocation(line: 524, column: 22, scope: !871)
!891 = !DILocation(line: 524, column: 36, scope: !871)
!892 = !DILocation(line: 524, column: 13, scope: !871)
!893 = !DILocation(line: 524, column: 18, scope: !876)
!894 = !DILocation(line: 524, column: 24, scope: !876)
!895 = !DILocation(line: 524, column: 39, scope: !876)
!896 = !DILocation(line: 524, column: 44, scope: !876)
!897 = !DILocation(line: 524, column: 13, scope: !876)
!898 = !DILocation(line: 524, column: 17, scope: !885)
!899 = !DILocation(line: 524, column: 23, scope: !885)
!900 = !DILocation(line: 524, column: 38, scope: !885)
!901 = !DILocation(line: 524, column: 43, scope: !885)
!902 = !DILocation(line: 524, column: 13, scope: !887)
!903 = !DILocation(line: 524, column: 13, scope: !904)
!904 = !DILexicalBlockFile(scope: !871, file: !48, discriminator: 4)
!905 = !DILocation(line: 524, column: 11, scope: !904)
!906 = !DILocation(line: 526, column: 7, scope: !907)
!907 = distinct !DILexicalBlock(scope: !871, file: !48, line: 526, column: 7)
!908 = !DILocation(line: 526, column: 13, scope: !907)
!909 = !DILocation(line: 526, column: 23, scope: !907)
!910 = !DILocation(line: 526, column: 7, scope: !871)
!911 = !DILocation(line: 527, column: 10, scope: !907)
!912 = !DILocation(line: 527, column: 4, scope: !907)
!913 = !DILocation(line: 530, column: 10, scope: !907)
!914 = !DILocation(line: 533, column: 35, scope: !915)
!915 = distinct !DILexicalBlock(scope: !871, file: !48, line: 533, column: 7)
!916 = !DILocation(line: 533, column: 38, scope: !915)
!917 = !DILocation(line: 533, column: 44, scope: !915)
!918 = !DILocation(line: 533, column: 52, scope: !915)
!919 = !DILocation(line: 533, column: 59, scope: !915)
!920 = !DILocation(line: 533, column: 68, scope: !915)
!921 = !DILocation(line: 533, column: 16, scope: !915)
!922 = !DILocation(line: 533, column: 14, scope: !915)
!923 = !DILocation(line: 533, column: 7, scope: !871)
!924 = !DILocation(line: 534, column: 22, scope: !915)
!925 = !DILocation(line: 534, column: 28, scope: !915)
!926 = !DILocation(line: 534, column: 36, scope: !915)
!927 = !DILocation(line: 534, column: 39, scope: !915)
!928 = !DILocation(line: 534, column: 46, scope: !915)
!929 = !DILocation(line: 534, column: 55, scope: !915)
!930 = !DILocation(line: 534, column: 11, scope: !915)
!931 = !DILocation(line: 534, column: 9, scope: !915)
!932 = !DILocation(line: 534, column: 4, scope: !915)
!933 = !DILocation(line: 536, column: 7, scope: !934)
!934 = distinct !DILexicalBlock(scope: !871, file: !48, line: 536, column: 7)
!935 = !DILocation(line: 536, column: 13, scope: !934)
!936 = !DILocation(line: 536, column: 7, scope: !871)
!937 = !DILocation(line: 537, column: 25, scope: !934)
!938 = !DILocation(line: 537, column: 31, scope: !934)
!939 = !DILocation(line: 537, column: 4, scope: !934)
!940 = !DILocation(line: 537, column: 10, scope: !934)
!941 = !DILocation(line: 537, column: 22, scope: !934)
!942 = !DILocation(line: 538, column: 12, scope: !943)
!943 = distinct !DILexicalBlock(scope: !934, file: !48, line: 538, column: 12)
!944 = !DILocation(line: 538, column: 25, scope: !943)
!945 = !DILocation(line: 538, column: 45, scope: !943)
!946 = !DILocation(line: 538, column: 12, scope: !934)
!947 = !DILocation(line: 539, column: 25, scope: !943)
!948 = !DILocation(line: 539, column: 38, scope: !943)
!949 = !DILocation(line: 539, column: 4, scope: !943)
!950 = !DILocation(line: 539, column: 10, scope: !943)
!951 = !DILocation(line: 539, column: 22, scope: !943)
!952 = !DILocation(line: 540, column: 12, scope: !953)
!953 = distinct !DILexicalBlock(scope: !943, file: !48, line: 540, column: 12)
!954 = !DILocation(line: 540, column: 25, scope: !953)
!955 = !DILocation(line: 540, column: 45, scope: !953)
!956 = !DILocation(line: 540, column: 12, scope: !943)
!957 = !DILocation(line: 541, column: 25, scope: !953)
!958 = !DILocation(line: 541, column: 38, scope: !953)
!959 = !DILocation(line: 541, column: 76, scope: !953)
!960 = !DILocation(line: 541, column: 63, scope: !953)
!961 = !DILocation(line: 541, column: 61, scope: !953)
!962 = !DILocation(line: 541, column: 4, scope: !953)
!963 = !DILocation(line: 541, column: 10, scope: !953)
!964 = !DILocation(line: 541, column: 22, scope: !953)
!965 = !DILocation(line: 542, column: 12, scope: !966)
!966 = distinct !DILexicalBlock(scope: !953, file: !48, line: 542, column: 12)
!967 = !DILocation(line: 542, column: 25, scope: !966)
!968 = !DILocation(line: 542, column: 45, scope: !966)
!969 = !DILocation(line: 542, column: 12, scope: !953)
!970 = !DILocation(line: 543, column: 25, scope: !966)
!971 = !DILocation(line: 543, column: 38, scope: !966)
!972 = !DILocation(line: 543, column: 63, scope: !966)
!973 = !DILocation(line: 543, column: 69, scope: !966)
!974 = !DILocation(line: 543, column: 74, scope: !966)
!975 = !DILocation(line: 543, column: 61, scope: !966)
!976 = !DILocation(line: 543, column: 4, scope: !966)
!977 = !DILocation(line: 543, column: 10, scope: !966)
!978 = !DILocation(line: 543, column: 22, scope: !966)
!979 = !DILocation(line: 544, column: 2, scope: !871)
!980 = !DILocation(line: 518, column: 46, scope: !981)
!981 = !DILexicalBlockFile(scope: !860, file: !48, discriminator: 10)
!982 = !DILocation(line: 518, column: 50, scope: !981)
!983 = !DILocation(line: 518, column: 43, scope: !981)
!984 = !DILocation(line: 518, column: 2, scope: !981)
!985 = distinct !{!985, !986}
!986 = !DILocation(line: 518, column: 2, scope: !815)
!987 = !DILocation(line: 545, column: 1, scope: !815)
!988 = distinct !DISubprogram(name: "vrrp_open_sockpool", scope: !48, file: !48, line: 548, type: !816, isLocal: true, isDefinition: true, scopeLine: 549, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !235)
!989 = !DILocalVariable(name: "l", arg: 1, scope: !988, file: !48, line: 548, type: !91)
!990 = !DILocation(line: 548, column: 25, scope: !988)
!991 = !DILocalVariable(name: "sock", scope: !988, file: !48, line: 550, type: !287)
!992 = !DILocation(line: 550, column: 10, scope: !988)
!993 = !DILocalVariable(name: "e", scope: !988, file: !48, line: 551, type: !823)
!994 = !DILocation(line: 551, column: 10, scope: !988)
!995 = !DILocalVariable(name: "ifp", scope: !988, file: !48, line: 552, type: !411)
!996 = !DILocation(line: 552, column: 15, scope: !988)
!997 = !DILocation(line: 554, column: 15, scope: !998)
!998 = distinct !DILexicalBlock(scope: !988, file: !48, line: 554, column: 2)
!999 = !DILocation(line: 554, column: 14, scope: !998)
!1000 = !DILocation(line: 554, column: 23, scope: !1001)
!1001 = !DILexicalBlockFile(scope: !998, file: !48, discriminator: 1)
!1002 = !DILocation(line: 554, column: 22, scope: !1001)
!1003 = !DILocation(line: 554, column: 21, scope: !1001)
!1004 = !DILocation(line: 554, column: 21, scope: !1005)
!1005 = !DILexicalBlockFile(scope: !998, file: !48, discriminator: 2)
!1006 = !DILocation(line: 554, column: 4, scope: !1007)
!1007 = !DILexicalBlockFile(scope: !998, file: !48, discriminator: 3)
!1008 = !DILocation(line: 554, column: 8, scope: !1007)
!1009 = !DILocation(line: 554, column: 21, scope: !1007)
!1010 = !DILocation(line: 554, column: 21, scope: !1011)
!1011 = !DILexicalBlockFile(scope: !998, file: !48, discriminator: 4)
!1012 = !DILocation(line: 554, column: 14, scope: !1011)
!1013 = !DILocation(line: 554, column: 14, scope: !1014)
!1014 = !DILexicalBlockFile(scope: !998, file: !48, discriminator: 5)
!1015 = !DILocation(line: 554, column: 14, scope: !1016)
!1016 = !DILexicalBlockFile(scope: !998, file: !48, discriminator: 6)
!1017 = !DILocation(line: 554, column: 11, scope: !1016)
!1018 = !DILocation(line: 554, column: 7, scope: !1016)
!1019 = !DILocation(line: 554, column: 5, scope: !1020)
!1020 = !DILexicalBlockFile(scope: !1021, file: !48, discriminator: 7)
!1021 = distinct !DILexicalBlock(scope: !998, file: !48, line: 554, column: 2)
!1022 = !DILocation(line: 554, column: 4, scope: !1020)
!1023 = !DILocation(line: 554, column: 8, scope: !1020)
!1024 = !DILocation(line: 554, column: 23, scope: !1025)
!1025 = !DILexicalBlockFile(scope: !1021, file: !48, discriminator: 8)
!1026 = !DILocation(line: 554, column: 27, scope: !1025)
!1027 = !DILocation(line: 554, column: 21, scope: !1025)
!1028 = !DILocation(line: 554, column: 19, scope: !1025)
!1029 = !DILocation(line: 554, column: 2, scope: !1030)
!1030 = !DILexicalBlockFile(scope: !998, file: !48, discriminator: 9)
!1031 = !DILocation(line: 555, column: 8, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !48, line: 555, column: 7)
!1033 = distinct !DILexicalBlock(scope: !1021, file: !48, line: 554, column: 57)
!1034 = !DILocation(line: 555, column: 14, scope: !1032)
!1035 = !DILocation(line: 555, column: 7, scope: !1033)
!1036 = !DILocation(line: 556, column: 18, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1032, file: !48, line: 555, column: 23)
!1038 = !DILocation(line: 556, column: 24, scope: !1037)
!1039 = !DILocation(line: 556, column: 31, scope: !1037)
!1040 = !DILocation(line: 556, column: 4, scope: !1037)
!1041 = !DILocation(line: 556, column: 10, scope: !1037)
!1042 = !DILocation(line: 556, column: 16, scope: !1037)
!1043 = !DILocation(line: 557, column: 4, scope: !1037)
!1044 = !DILocation(line: 559, column: 27, scope: !1033)
!1045 = !DILocation(line: 559, column: 33, scope: !1033)
!1046 = !DILocation(line: 559, column: 9, scope: !1033)
!1047 = !DILocation(line: 559, column: 7, scope: !1033)
!1048 = !DILocation(line: 560, column: 39, scope: !1033)
!1049 = !DILocation(line: 560, column: 45, scope: !1033)
!1050 = !DILocation(line: 560, column: 53, scope: !1033)
!1051 = !DILocation(line: 560, column: 59, scope: !1033)
!1052 = !DILocation(line: 561, column: 13, scope: !1033)
!1053 = !DILocation(line: 561, column: 18, scope: !1033)
!1054 = !DILocation(line: 561, column: 24, scope: !1033)
!1055 = !DILocation(line: 561, column: 33, scope: !1033)
!1056 = !DILocation(line: 561, column: 39, scope: !1033)
!1057 = !DILocation(line: 560, column: 17, scope: !1033)
!1058 = !DILocation(line: 560, column: 3, scope: !1033)
!1059 = !DILocation(line: 560, column: 9, scope: !1033)
!1060 = !DILocation(line: 560, column: 15, scope: !1033)
!1061 = !DILocation(line: 562, column: 7, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1033, file: !48, line: 562, column: 7)
!1063 = !DILocation(line: 562, column: 13, scope: !1062)
!1064 = !DILocation(line: 562, column: 19, scope: !1062)
!1065 = !DILocation(line: 562, column: 7, scope: !1033)
!1066 = !DILocation(line: 563, column: 4, scope: !1062)
!1067 = !DILocation(line: 563, column: 10, scope: !1062)
!1068 = !DILocation(line: 563, column: 17, scope: !1062)
!1069 = !DILocation(line: 565, column: 41, scope: !1062)
!1070 = !DILocation(line: 565, column: 47, scope: !1062)
!1071 = !DILocation(line: 565, column: 55, scope: !1062)
!1072 = !DILocation(line: 565, column: 61, scope: !1062)
!1073 = !DILocation(line: 566, column: 13, scope: !1062)
!1074 = !DILocation(line: 566, column: 18, scope: !1062)
!1075 = !DILocation(line: 566, column: 24, scope: !1062)
!1076 = !DILocation(line: 565, column: 19, scope: !1062)
!1077 = !DILocation(line: 565, column: 4, scope: !1062)
!1078 = !DILocation(line: 565, column: 10, scope: !1062)
!1079 = !DILocation(line: 565, column: 17, scope: !1062)
!1080 = !DILocation(line: 567, column: 2, scope: !1033)
!1081 = !DILocation(line: 554, column: 46, scope: !1082)
!1082 = !DILexicalBlockFile(scope: !1021, file: !48, discriminator: 10)
!1083 = !DILocation(line: 554, column: 50, scope: !1082)
!1084 = !DILocation(line: 554, column: 43, scope: !1082)
!1085 = !DILocation(line: 554, column: 2, scope: !1082)
!1086 = distinct !{!1086, !1087}
!1087 = !DILocation(line: 554, column: 2, scope: !988)
!1088 = !DILocation(line: 568, column: 1, scope: !988)
!1089 = distinct !DISubprogram(name: "vrrp_set_fds", scope: !48, file: !48, line: 571, type: !816, isLocal: true, isDefinition: true, scopeLine: 572, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !235)
!1090 = !DILocalVariable(name: "l", arg: 1, scope: !1089, file: !48, line: 571, type: !91)
!1091 = !DILocation(line: 571, column: 19, scope: !1089)
!1092 = !DILocalVariable(name: "sock", scope: !1089, file: !48, line: 573, type: !287)
!1093 = !DILocation(line: 573, column: 10, scope: !1089)
!1094 = !DILocalVariable(name: "vrrp", scope: !1089, file: !48, line: 574, type: !337)
!1095 = !DILocation(line: 574, column: 10, scope: !1089)
!1096 = !DILocalVariable(name: "p", scope: !1089, file: !48, line: 575, type: !91)
!1097 = !DILocation(line: 575, column: 7, scope: !1089)
!1098 = !DILocation(line: 575, column: 11, scope: !1089)
!1099 = !DILocation(line: 575, column: 22, scope: !1089)
!1100 = !DILocalVariable(name: "e_sock", scope: !1089, file: !48, line: 576, type: !823)
!1101 = !DILocation(line: 576, column: 10, scope: !1089)
!1102 = !DILocalVariable(name: "e_vrrp", scope: !1089, file: !48, line: 577, type: !823)
!1103 = !DILocation(line: 577, column: 10, scope: !1089)
!1104 = !DILocalVariable(name: "proto", scope: !1089, file: !48, line: 578, type: !52)
!1105 = !DILocation(line: 578, column: 6, scope: !1089)
!1106 = !DILocalVariable(name: "ifindex", scope: !1089, file: !48, line: 579, type: !307)
!1107 = !DILocation(line: 579, column: 12, scope: !1089)
!1108 = !DILocalVariable(name: "unicast", scope: !1089, file: !48, line: 580, type: !198)
!1109 = !DILocation(line: 580, column: 6, scope: !1089)
!1110 = !DILocation(line: 582, column: 19, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1089, file: !48, line: 582, column: 2)
!1112 = !DILocation(line: 582, column: 18, scope: !1111)
!1113 = !DILocation(line: 582, column: 17, scope: !1111)
!1114 = !DILocation(line: 582, column: 17, scope: !1115)
!1115 = !DILexicalBlockFile(scope: !1111, file: !48, discriminator: 1)
!1116 = !DILocation(line: 582, column: 18, scope: !1117)
!1117 = !DILexicalBlockFile(scope: !1111, file: !48, discriminator: 2)
!1118 = !DILocation(line: 582, column: 22, scope: !1117)
!1119 = !DILocation(line: 582, column: 17, scope: !1117)
!1120 = !DILocation(line: 582, column: 17, scope: !1121)
!1121 = !DILexicalBlockFile(scope: !1111, file: !48, discriminator: 3)
!1122 = !DILocation(line: 582, column: 14, scope: !1121)
!1123 = !DILocation(line: 582, column: 7, scope: !1121)
!1124 = !DILocation(line: 582, column: 29, scope: !1125)
!1125 = !DILexicalBlockFile(scope: !1126, file: !48, discriminator: 4)
!1126 = distinct !DILexicalBlock(scope: !1111, file: !48, line: 582, column: 2)
!1127 = !DILocation(line: 582, column: 2, scope: !1125)
!1128 = !DILocation(line: 583, column: 12, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1126, file: !48, line: 582, column: 66)
!1130 = !DILocation(line: 583, column: 21, scope: !1129)
!1131 = !DILocation(line: 583, column: 10, scope: !1129)
!1132 = !DILocation(line: 583, column: 8, scope: !1129)
!1133 = !DILocation(line: 584, column: 20, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1129, file: !48, line: 584, column: 3)
!1135 = !DILocation(line: 584, column: 19, scope: !1134)
!1136 = !DILocation(line: 584, column: 18, scope: !1134)
!1137 = !DILocation(line: 584, column: 18, scope: !1138)
!1138 = !DILexicalBlockFile(scope: !1134, file: !48, discriminator: 1)
!1139 = !DILocation(line: 584, column: 19, scope: !1140)
!1140 = !DILexicalBlockFile(scope: !1134, file: !48, discriminator: 2)
!1141 = !DILocation(line: 584, column: 23, scope: !1140)
!1142 = !DILocation(line: 584, column: 18, scope: !1140)
!1143 = !DILocation(line: 584, column: 18, scope: !1144)
!1144 = !DILexicalBlockFile(scope: !1134, file: !48, discriminator: 3)
!1145 = !DILocation(line: 584, column: 15, scope: !1144)
!1146 = !DILocation(line: 584, column: 8, scope: !1144)
!1147 = !DILocation(line: 584, column: 30, scope: !1148)
!1148 = !DILexicalBlockFile(scope: !1149, file: !48, discriminator: 4)
!1149 = distinct !DILexicalBlock(scope: !1134, file: !48, line: 584, column: 3)
!1150 = !DILocation(line: 584, column: 3, scope: !1148)
!1151 = !DILocation(line: 585, column: 13, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1149, file: !48, line: 584, column: 67)
!1153 = !DILocation(line: 585, column: 22, scope: !1152)
!1154 = !DILocation(line: 585, column: 11, scope: !1152)
!1155 = !DILocation(line: 585, column: 9, scope: !1152)
!1156 = !DILocation(line: 588, column: 44, scope: !1152)
!1157 = !DILocation(line: 588, column: 50, scope: !1152)
!1158 = !DILocation(line: 588, column: 8, scope: !1152)
!1159 = !DILocation(line: 588, column: 7, scope: !1152)
!1160 = !DILocation(line: 588, column: 67, scope: !1161)
!1161 = !DILexicalBlockFile(scope: !1152, file: !48, discriminator: 1)
!1162 = !DILocation(line: 588, column: 73, scope: !1161)
!1163 = !DILocation(line: 588, column: 79, scope: !1161)
!1164 = !DILocation(line: 588, column: 89, scope: !1161)
!1165 = !DILocation(line: 588, column: 7, scope: !1161)
!1166 = !DILocation(line: 590, column: 18, scope: !1152)
!1167 = !DILocation(line: 590, column: 24, scope: !1152)
!1168 = !DILocation(line: 590, column: 30, scope: !1152)
!1169 = !DILocation(line: 588, column: 7, scope: !1170)
!1170 = !DILexicalBlockFile(scope: !1152, file: !48, discriminator: 2)
!1171 = !DILocation(line: 588, column: 7, scope: !1172)
!1172 = !DILexicalBlockFile(scope: !1152, file: !48, discriminator: 3)
!1173 = !DILocation(line: 586, column: 12, scope: !1152)
!1174 = !DILocation(line: 591, column: 17, scope: !1152)
!1175 = !DILocation(line: 591, column: 23, scope: !1152)
!1176 = !DILocation(line: 591, column: 37, scope: !1152)
!1177 = !DILocation(line: 591, column: 14, scope: !1152)
!1178 = !DILocation(line: 591, column: 19, scope: !1161)
!1179 = !DILocation(line: 591, column: 25, scope: !1161)
!1180 = !DILocation(line: 591, column: 40, scope: !1161)
!1181 = !DILocation(line: 591, column: 45, scope: !1161)
!1182 = !DILocation(line: 591, column: 14, scope: !1161)
!1183 = !DILocation(line: 591, column: 18, scope: !1170)
!1184 = !DILocation(line: 591, column: 24, scope: !1170)
!1185 = !DILocation(line: 591, column: 39, scope: !1170)
!1186 = !DILocation(line: 591, column: 44, scope: !1170)
!1187 = !DILocation(line: 591, column: 14, scope: !1172)
!1188 = !DILocation(line: 591, column: 14, scope: !1189)
!1189 = !DILexicalBlockFile(scope: !1152, file: !48, discriminator: 4)
!1190 = !DILocation(line: 591, column: 12, scope: !1189)
!1191 = !DILocation(line: 593, column: 8, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1152, file: !48, line: 593, column: 8)
!1193 = !DILocation(line: 593, column: 14, scope: !1192)
!1194 = !DILocation(line: 593, column: 24, scope: !1192)
!1195 = !DILocation(line: 593, column: 8, scope: !1152)
!1196 = !DILocation(line: 594, column: 11, scope: !1192)
!1197 = !DILocation(line: 594, column: 5, scope: !1192)
!1198 = !DILocation(line: 597, column: 11, scope: !1192)
!1199 = !DILocation(line: 599, column: 9, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1152, file: !48, line: 599, column: 8)
!1201 = !DILocation(line: 599, column: 15, scope: !1200)
!1202 = !DILocation(line: 599, column: 26, scope: !1200)
!1203 = !DILocation(line: 599, column: 23, scope: !1200)
!1204 = !DILocation(line: 599, column: 35, scope: !1200)
!1205 = !DILocation(line: 600, column: 9, scope: !1200)
!1206 = !DILocation(line: 600, column: 15, scope: !1200)
!1207 = !DILocation(line: 600, column: 25, scope: !1200)
!1208 = !DILocation(line: 600, column: 31, scope: !1200)
!1209 = !DILocation(line: 600, column: 22, scope: !1200)
!1210 = !DILocation(line: 600, column: 39, scope: !1200)
!1211 = !DILocation(line: 601, column: 9, scope: !1200)
!1212 = !DILocation(line: 601, column: 15, scope: !1200)
!1213 = !DILocation(line: 601, column: 24, scope: !1200)
!1214 = !DILocation(line: 601, column: 21, scope: !1200)
!1215 = !DILocation(line: 601, column: 31, scope: !1200)
!1216 = !DILocation(line: 602, column: 9, scope: !1200)
!1217 = !DILocation(line: 602, column: 15, scope: !1200)
!1218 = !DILocation(line: 602, column: 26, scope: !1200)
!1219 = !DILocation(line: 602, column: 23, scope: !1200)
!1220 = !DILocation(line: 599, column: 8, scope: !1161)
!1221 = !DILocation(line: 603, column: 21, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1200, file: !48, line: 602, column: 36)
!1223 = !DILocation(line: 603, column: 5, scope: !1222)
!1224 = !DILocation(line: 603, column: 11, scope: !1222)
!1225 = !DILocation(line: 603, column: 19, scope: !1222)
!1226 = !DILocation(line: 606, column: 26, scope: !1222)
!1227 = !DILocation(line: 606, column: 5, scope: !1222)
!1228 = !DILocation(line: 607, column: 23, scope: !1222)
!1229 = !DILocation(line: 607, column: 5, scope: !1222)
!1230 = !DILocation(line: 608, column: 4, scope: !1222)
!1231 = !DILocation(line: 609, column: 3, scope: !1152)
!1232 = !DILocation(line: 584, column: 51, scope: !1233)
!1233 = !DILexicalBlockFile(scope: !1149, file: !48, discriminator: 5)
!1234 = !DILocation(line: 584, column: 60, scope: !1233)
!1235 = !DILocation(line: 584, column: 48, scope: !1233)
!1236 = !DILocation(line: 584, column: 3, scope: !1233)
!1237 = distinct !{!1237, !1238}
!1238 = !DILocation(line: 584, column: 3, scope: !1129)
!1239 = !DILocation(line: 610, column: 2, scope: !1129)
!1240 = !DILocation(line: 582, column: 50, scope: !1241)
!1241 = !DILexicalBlockFile(scope: !1126, file: !48, discriminator: 5)
!1242 = !DILocation(line: 582, column: 59, scope: !1241)
!1243 = !DILocation(line: 582, column: 47, scope: !1241)
!1244 = !DILocation(line: 582, column: 2, scope: !1241)
!1245 = distinct !{!1245, !1246}
!1246 = !DILocation(line: 582, column: 2, scope: !1089)
!1247 = !DILocation(line: 611, column: 1, scope: !1089)
!1248 = distinct !DISubprogram(name: "vrrp_register_workers", scope: !48, file: !48, line: 424, type: !816, isLocal: true, isDefinition: true, scopeLine: 425, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !235)
!1249 = !DILocalVariable(name: "l", arg: 1, scope: !1248, file: !48, line: 424, type: !91)
!1250 = !DILocation(line: 424, column: 28, scope: !1248)
!1251 = !DILocalVariable(name: "sock", scope: !1248, file: !48, line: 426, type: !287)
!1252 = !DILocation(line: 426, column: 10, scope: !1248)
!1253 = !DILocalVariable(name: "timer", scope: !1248, file: !48, line: 427, type: !206)
!1254 = !DILocation(line: 427, column: 12, scope: !1248)
!1255 = !DILocalVariable(name: "vrrp_timer", scope: !1248, file: !48, line: 428, type: !58)
!1256 = !DILocation(line: 428, column: 16, scope: !1248)
!1257 = !DILocalVariable(name: "e", scope: !1248, file: !48, line: 429, type: !823)
!1258 = !DILocation(line: 429, column: 10, scope: !1248)
!1259 = !DILocation(line: 432, column: 2, scope: !1248)
!1260 = !DILocation(line: 435, column: 18, scope: !1248)
!1261 = !DILocation(line: 435, column: 29, scope: !1248)
!1262 = !DILocation(line: 435, column: 2, scope: !1248)
!1263 = !DILocation(line: 438, column: 18, scope: !1248)
!1264 = !DILocation(line: 438, column: 29, scope: !1248)
!1265 = !DILocation(line: 438, column: 2, scope: !1248)
!1266 = !DILocation(line: 441, column: 9, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1248, file: !48, line: 441, column: 6)
!1268 = !DILocation(line: 441, column: 20, scope: !1267)
!1269 = !DILocation(line: 441, column: 33, scope: !1267)
!1270 = !DILocation(line: 441, column: 6, scope: !1267)
!1271 = !DILocation(line: 441, column: 11, scope: !1272)
!1272 = !DILexicalBlockFile(scope: !1267, file: !48, discriminator: 1)
!1273 = !DILocation(line: 441, column: 22, scope: !1272)
!1274 = !DILocation(line: 441, column: 36, scope: !1272)
!1275 = !DILocation(line: 441, column: 41, scope: !1272)
!1276 = !DILocation(line: 441, column: 6, scope: !1272)
!1277 = !DILocation(line: 441, column: 10, scope: !1278)
!1278 = !DILexicalBlockFile(scope: !1267, file: !48, discriminator: 2)
!1279 = !DILocation(line: 441, column: 21, scope: !1278)
!1280 = !DILocation(line: 441, column: 35, scope: !1278)
!1281 = !DILocation(line: 441, column: 40, scope: !1278)
!1282 = !DILocation(line: 441, column: 6, scope: !1278)
!1283 = !DILocation(line: 442, column: 20, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1267, file: !48, line: 441, column: 10)
!1285 = !DILocation(line: 442, column: 31, scope: !1284)
!1286 = !DILocation(line: 442, column: 3, scope: !1284)
!1287 = !DILocation(line: 443, column: 2, scope: !1284)
!1288 = !DILocation(line: 455, column: 14, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1248, file: !48, line: 455, column: 2)
!1290 = !DILocation(line: 455, column: 13, scope: !1289)
!1291 = !DILocation(line: 455, column: 12, scope: !1289)
!1292 = !DILocation(line: 455, column: 12, scope: !1293)
!1293 = !DILexicalBlockFile(scope: !1289, file: !48, discriminator: 1)
!1294 = !DILocation(line: 455, column: 13, scope: !1295)
!1295 = !DILexicalBlockFile(scope: !1289, file: !48, discriminator: 2)
!1296 = !DILocation(line: 455, column: 17, scope: !1295)
!1297 = !DILocation(line: 455, column: 12, scope: !1295)
!1298 = !DILocation(line: 455, column: 12, scope: !1299)
!1299 = !DILexicalBlockFile(scope: !1289, file: !48, discriminator: 3)
!1300 = !DILocation(line: 455, column: 9, scope: !1299)
!1301 = !DILocation(line: 455, column: 7, scope: !1299)
!1302 = !DILocation(line: 455, column: 24, scope: !1303)
!1303 = !DILexicalBlockFile(scope: !1304, file: !48, discriminator: 4)
!1304 = distinct !DILexicalBlock(scope: !1289, file: !48, line: 455, column: 2)
!1305 = !DILocation(line: 455, column: 2, scope: !1303)
!1306 = !DILocation(line: 456, column: 12, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1304, file: !48, line: 455, column: 46)
!1308 = !DILocation(line: 456, column: 16, scope: !1307)
!1309 = !DILocation(line: 456, column: 10, scope: !1307)
!1310 = !DILocation(line: 456, column: 8, scope: !1307)
!1311 = !DILocation(line: 458, column: 30, scope: !1307)
!1312 = !DILocation(line: 458, column: 36, scope: !1307)
!1313 = !DILocation(line: 458, column: 16, scope: !1307)
!1314 = !DILocation(line: 458, column: 14, scope: !1307)
!1315 = !DILocation(line: 461, column: 7, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1307, file: !48, line: 461, column: 7)
!1317 = !DILocation(line: 461, column: 13, scope: !1316)
!1318 = !DILocation(line: 461, column: 19, scope: !1316)
!1319 = !DILocation(line: 461, column: 7, scope: !1307)
!1320 = !DILocation(line: 462, column: 35, scope: !1316)
!1321 = !DILocation(line: 463, column: 14, scope: !1316)
!1322 = !DILocation(line: 463, column: 20, scope: !1316)
!1323 = !DILocation(line: 463, column: 26, scope: !1316)
!1324 = !DILocation(line: 463, column: 33, scope: !1316)
!1325 = !DILocation(line: 462, column: 19, scope: !1316)
!1326 = !DILocation(line: 462, column: 4, scope: !1316)
!1327 = !DILocation(line: 462, column: 10, scope: !1316)
!1328 = !DILocation(line: 462, column: 17, scope: !1316)
!1329 = !DILocation(line: 464, column: 2, scope: !1307)
!1330 = !DILocation(line: 455, column: 35, scope: !1331)
!1331 = !DILexicalBlockFile(scope: !1304, file: !48, discriminator: 5)
!1332 = !DILocation(line: 455, column: 39, scope: !1331)
!1333 = !DILocation(line: 455, column: 32, scope: !1331)
!1334 = !DILocation(line: 455, column: 2, scope: !1331)
!1335 = distinct !{!1335, !1336}
!1336 = !DILocation(line: 455, column: 2, scope: !1248)
!1337 = !DILocation(line: 465, column: 1, scope: !1248)
!1338 = distinct !DISubprogram(name: "__test_bit", scope: !33, file: !33, line: 47, type: !1339, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !235)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!198, !106, !1341}
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64, align: 64)
!1342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!1343 = !DILocalVariable(name: "idx", arg: 1, scope: !1338, file: !33, line: 47, type: !106)
!1344 = !DILocation(line: 47, column: 39, scope: !1338)
!1345 = !DILocalVariable(name: "bmap", arg: 2, scope: !1338, file: !33, line: 47, type: !1341)
!1346 = !DILocation(line: 47, column: 65, scope: !1338)
!1347 = !DILocation(line: 49, column: 19, scope: !1338)
!1348 = !DILocation(line: 49, column: 18, scope: !1338)
!1349 = !DILocation(line: 49, column: 24, scope: !1338)
!1350 = !DILocation(line: 49, column: 12, scope: !1338)
!1351 = !DILocation(line: 49, column: 68, scope: !1338)
!1352 = !DILocation(line: 49, column: 67, scope: !1338)
!1353 = !DILocation(line: 49, column: 73, scope: !1338)
!1354 = !DILocation(line: 49, column: 63, scope: !1338)
!1355 = !DILocation(line: 49, column: 56, scope: !1338)
!1356 = !DILocation(line: 49, column: 10, scope: !1338)
!1357 = !DILocation(line: 49, column: 9, scope: !1338)
!1358 = !DILocation(line: 49, column: 2, scope: !1338)
!1359 = distinct !DISubprogram(name: "vrrp_dispatcher_release", scope: !48, file: !48, line: 653, type: !1360, isLocal: false, isDefinition: true, scopeLine: 654, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !235)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{null, !1362}
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64, align: 64)
!1363 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_data_t", file: !1364, line: 52, baseType: !1365)
!1364 = !DIFile(filename: "./../include/vrrp_data.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_data", file: !1364, line: 35, size: 704, align: 64, elements: !1366)
!1366 = !{!1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "static_track_groups", scope: !1365, file: !1364, line: 36, baseType: !91, size: 64, align: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "static_addresses", scope: !1365, file: !1364, line: 37, baseType: !91, size: 64, align: 64, offset: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "static_routes", scope: !1365, file: !1364, line: 39, baseType: !91, size: 64, align: 64, offset: 128)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "static_rules", scope: !1365, file: !1364, line: 40, baseType: !91, size: 64, align: 64, offset: 192)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp_sync_group", scope: !1365, file: !1364, line: 42, baseType: !91, size: 64, align: 64, offset: 256)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp", scope: !1365, file: !1364, line: 43, baseType: !91, size: 64, align: 64, offset: 320)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp_index", scope: !1365, file: !1364, line: 44, baseType: !91, size: 64, align: 64, offset: 384)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp_index_fd", scope: !1365, file: !1364, line: 45, baseType: !91, size: 64, align: 64, offset: 448)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp_socket_pool", scope: !1365, file: !1364, line: 46, baseType: !91, size: 64, align: 64, offset: 512)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp_script", scope: !1365, file: !1364, line: 47, baseType: !91, size: 64, align: 64, offset: 576)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp_track_files", scope: !1365, file: !1364, line: 48, baseType: !91, size: 64, align: 64, offset: 640)
!1378 = !DILocalVariable(name: "data", arg: 1, scope: !1359, file: !48, line: 653, type: !1362)
!1379 = !DILocation(line: 653, column: 38, scope: !1359)
!1380 = !DILocation(line: 655, column: 13, scope: !1359)
!1381 = !DILocation(line: 655, column: 19, scope: !1359)
!1382 = !DILocation(line: 655, column: 2, scope: !1359)
!1383 = !DILocation(line: 659, column: 1, scope: !1359)
!1384 = distinct !DISubprogram(name: "vrrp_gratuitous_arp_thread", scope: !48, file: !48, line: 685, type: !50, isLocal: false, isDefinition: true, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !235)
!1385 = !DILocalVariable(name: "thread", arg: 1, scope: !1384, file: !48, line: 685, type: !53)
!1386 = !DILocation(line: 685, column: 39, scope: !1384)
!1387 = !DILocalVariable(name: "vrrp", scope: !1384, file: !48, line: 687, type: !337)
!1388 = !DILocation(line: 687, column: 10, scope: !1384)
!1389 = !DILocation(line: 687, column: 19, scope: !1384)
!1390 = !DILocation(line: 687, column: 28, scope: !1384)
!1391 = !DILocation(line: 687, column: 17, scope: !1384)
!1392 = !DILocation(line: 690, column: 24, scope: !1384)
!1393 = !DILocation(line: 690, column: 30, scope: !1384)
!1394 = !DILocation(line: 690, column: 36, scope: !1384)
!1395 = !DILocation(line: 690, column: 2, scope: !1384)
!1396 = !DILocation(line: 692, column: 2, scope: !1384)
!1397 = distinct !DISubprogram(name: "vrrp_lower_prio_gratuitous_arp_thread", scope: !48, file: !48, line: 697, type: !50, isLocal: false, isDefinition: true, scopeLine: 698, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !235)
!1398 = !DILocalVariable(name: "thread", arg: 1, scope: !1397, file: !48, line: 697, type: !53)
!1399 = !DILocation(line: 697, column: 50, scope: !1397)
!1400 = !DILocalVariable(name: "vrrp", scope: !1397, file: !48, line: 699, type: !337)
!1401 = !DILocation(line: 699, column: 10, scope: !1397)
!1402 = !DILocation(line: 699, column: 19, scope: !1397)
!1403 = !DILocation(line: 699, column: 28, scope: !1397)
!1404 = !DILocation(line: 699, column: 17, scope: !1397)
!1405 = !DILocation(line: 702, column: 24, scope: !1397)
!1406 = !DILocation(line: 702, column: 30, scope: !1397)
!1407 = !DILocation(line: 702, column: 36, scope: !1397)
!1408 = !DILocation(line: 702, column: 2, scope: !1397)
!1409 = !DILocation(line: 704, column: 2, scope: !1397)
!1410 = distinct !DISubprogram(name: "try_up_instance", scope: !48, file: !48, line: 715, type: !1411, isLocal: false, isDefinition: true, scopeLine: 716, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !235)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{null, !337, !198}
!1413 = !DILocalVariable(name: "vrrp", arg: 1, scope: !1410, file: !48, line: 715, type: !337)
!1414 = !DILocation(line: 715, column: 25, scope: !1410)
!1415 = !DILocalVariable(name: "leaving_init", arg: 2, scope: !1410, file: !48, line: 715, type: !198)
!1416 = !DILocation(line: 715, column: 35, scope: !1410)
!1417 = !DILocalVariable(name: "wantstate", scope: !1410, file: !48, line: 717, type: !52)
!1418 = !DILocation(line: 717, column: 6, scope: !1410)
!1419 = !DILocation(line: 719, column: 6, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1410, file: !48, line: 719, column: 6)
!1421 = !DILocation(line: 719, column: 6, scope: !1410)
!1422 = !DILocation(line: 720, column: 7, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !48, line: 720, column: 7)
!1424 = distinct !DILexicalBlock(scope: !1420, file: !48, line: 719, column: 20)
!1425 = !DILocation(line: 720, column: 13, scope: !1423)
!1426 = !DILocation(line: 720, column: 7, scope: !1424)
!1427 = !DILocation(line: 721, column: 4, scope: !1423)
!1428 = !DILocation(line: 722, column: 2, scope: !1424)
!1429 = !DILocation(line: 723, column: 13, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1420, file: !48, line: 723, column: 11)
!1431 = !DILocation(line: 723, column: 19, scope: !1430)
!1432 = !DILocation(line: 723, column: 11, scope: !1430)
!1433 = !DILocation(line: 723, column: 39, scope: !1430)
!1434 = !DILocation(line: 723, column: 42, scope: !1435)
!1435 = !DILexicalBlockFile(scope: !1430, file: !48, discriminator: 1)
!1436 = !DILocation(line: 723, column: 48, scope: !1435)
!1437 = !DILocation(line: 723, column: 11, scope: !1435)
!1438 = !DILocation(line: 724, column: 3, scope: !1430)
!1439 = !DILocation(line: 726, column: 6, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1410, file: !48, line: 726, column: 6)
!1441 = !DILocation(line: 726, column: 12, scope: !1440)
!1442 = !DILocation(line: 726, column: 22, scope: !1440)
!1443 = !DILocation(line: 726, column: 27, scope: !1440)
!1444 = !DILocation(line: 726, column: 30, scope: !1445)
!1445 = !DILexicalBlockFile(scope: !1440, file: !48, discriminator: 1)
!1446 = !DILocation(line: 726, column: 36, scope: !1445)
!1447 = !DILocation(line: 726, column: 50, scope: !1445)
!1448 = !DILocation(line: 726, column: 6, scope: !1445)
!1449 = !DILocation(line: 727, column: 3, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1440, file: !48, line: 726, column: 58)
!1451 = !DILocation(line: 727, column: 9, scope: !1450)
!1452 = !DILocation(line: 727, column: 19, scope: !1450)
!1453 = !DILocation(line: 731, column: 2, scope: !1450)
!1454 = !DILocation(line: 732, column: 3, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1440, file: !48, line: 731, column: 9)
!1456 = !DILocation(line: 732, column: 9, scope: !1455)
!1457 = !DILocation(line: 732, column: 19, scope: !1455)
!1458 = !DILocation(line: 738, column: 27, scope: !1410)
!1459 = !DILocation(line: 738, column: 33, scope: !1410)
!1460 = !DILocation(line: 738, column: 2, scope: !1410)
!1461 = !DILocation(line: 738, column: 8, scope: !1410)
!1462 = !DILocation(line: 738, column: 25, scope: !1410)
!1463 = !DILocation(line: 739, column: 6, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1410, file: !48, line: 739, column: 6)
!1465 = !DILocation(line: 739, column: 12, scope: !1464)
!1466 = !DILocation(line: 739, column: 22, scope: !1464)
!1467 = !DILocation(line: 739, column: 27, scope: !1464)
!1468 = !DILocation(line: 739, column: 30, scope: !1469)
!1469 = !DILexicalBlockFile(scope: !1464, file: !48, discriminator: 1)
!1470 = !DILocation(line: 739, column: 36, scope: !1469)
!1471 = !DILocation(line: 739, column: 50, scope: !1469)
!1472 = !DILocation(line: 739, column: 6, scope: !1469)
!1473 = !DILocation(line: 740, column: 25, scope: !1464)
!1474 = !DILocation(line: 740, column: 31, scope: !1464)
!1475 = !DILocation(line: 740, column: 52, scope: !1464)
!1476 = !DILocation(line: 740, column: 59, scope: !1464)
!1477 = !DILocation(line: 740, column: 67, scope: !1464)
!1478 = !DILocation(line: 740, column: 51, scope: !1464)
!1479 = !DILocation(line: 740, column: 83, scope: !1469)
!1480 = !DILocation(line: 740, column: 90, scope: !1469)
!1481 = !DILocation(line: 740, column: 82, scope: !1469)
!1482 = !DILocation(line: 740, column: 81, scope: !1469)
!1483 = !DILocation(line: 740, column: 114, scope: !1469)
!1484 = !DILocation(line: 740, column: 121, scope: !1469)
!1485 = !DILocation(line: 740, column: 138, scope: !1469)
!1486 = !DILocation(line: 740, column: 110, scope: !1469)
!1487 = !DILocation(line: 740, column: 148, scope: !1469)
!1488 = !DILocation(line: 740, column: 156, scope: !1469)
!1489 = !DILocation(line: 740, column: 51, scope: !1469)
!1490 = !DILocation(line: 740, column: 173, scope: !1491)
!1491 = !DILexicalBlockFile(scope: !1464, file: !48, discriminator: 2)
!1492 = !DILocation(line: 740, column: 180, scope: !1491)
!1493 = !DILocation(line: 740, column: 172, scope: !1491)
!1494 = !DILocation(line: 740, column: 171, scope: !1491)
!1495 = !DILocation(line: 740, column: 200, scope: !1491)
!1496 = !DILocation(line: 740, column: 210, scope: !1491)
!1497 = !DILocation(line: 740, column: 51, scope: !1491)
!1498 = !DILocation(line: 740, column: 51, scope: !1499)
!1499 = !DILexicalBlockFile(scope: !1464, file: !48, discriminator: 3)
!1500 = !DILocation(line: 740, column: 48, scope: !1499)
!1501 = !DILocation(line: 740, column: 3, scope: !1499)
!1502 = !DILocation(line: 740, column: 9, scope: !1499)
!1503 = !DILocation(line: 740, column: 23, scope: !1499)
!1504 = !DILocation(line: 742, column: 29, scope: !1464)
!1505 = !DILocation(line: 742, column: 35, scope: !1464)
!1506 = !DILocation(line: 742, column: 27, scope: !1464)
!1507 = !DILocation(line: 742, column: 56, scope: !1464)
!1508 = !DILocation(line: 742, column: 63, scope: !1464)
!1509 = !DILocation(line: 742, column: 71, scope: !1464)
!1510 = !DILocation(line: 742, column: 55, scope: !1464)
!1511 = !DILocation(line: 742, column: 87, scope: !1469)
!1512 = !DILocation(line: 742, column: 94, scope: !1469)
!1513 = !DILocation(line: 742, column: 86, scope: !1469)
!1514 = !DILocation(line: 742, column: 85, scope: !1469)
!1515 = !DILocation(line: 742, column: 118, scope: !1469)
!1516 = !DILocation(line: 742, column: 125, scope: !1469)
!1517 = !DILocation(line: 742, column: 142, scope: !1469)
!1518 = !DILocation(line: 742, column: 114, scope: !1469)
!1519 = !DILocation(line: 742, column: 152, scope: !1469)
!1520 = !DILocation(line: 742, column: 160, scope: !1469)
!1521 = !DILocation(line: 742, column: 55, scope: !1469)
!1522 = !DILocation(line: 742, column: 177, scope: !1491)
!1523 = !DILocation(line: 742, column: 184, scope: !1491)
!1524 = !DILocation(line: 742, column: 176, scope: !1491)
!1525 = !DILocation(line: 742, column: 175, scope: !1491)
!1526 = !DILocation(line: 742, column: 204, scope: !1491)
!1527 = !DILocation(line: 742, column: 214, scope: !1491)
!1528 = !DILocation(line: 742, column: 55, scope: !1491)
!1529 = !DILocation(line: 742, column: 55, scope: !1499)
!1530 = !DILocation(line: 742, column: 52, scope: !1499)
!1531 = !DILocation(line: 742, column: 3, scope: !1499)
!1532 = !DILocation(line: 742, column: 9, scope: !1499)
!1533 = !DILocation(line: 742, column: 23, scope: !1499)
!1534 = !DILocation(line: 744, column: 6, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1410, file: !48, line: 744, column: 6)
!1536 = !DILocation(line: 744, column: 12, scope: !1535)
!1537 = !DILocation(line: 744, column: 6, scope: !1410)
!1538 = !DILocation(line: 745, column: 7, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !48, line: 745, column: 7)
!1540 = distinct !DILexicalBlock(scope: !1535, file: !48, line: 744, column: 18)
!1541 = !DILocation(line: 745, column: 7, scope: !1540)
!1542 = !DILocation(line: 746, column: 8, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !48, line: 746, column: 8)
!1544 = distinct !DILexicalBlock(scope: !1539, file: !48, line: 745, column: 21)
!1545 = !DILocation(line: 746, column: 14, scope: !1543)
!1546 = !DILocation(line: 746, column: 20, scope: !1543)
!1547 = !DILocation(line: 746, column: 8, scope: !1544)
!1548 = !DILocation(line: 747, column: 5, scope: !1543)
!1549 = !DILocation(line: 748, column: 3, scope: !1544)
!1550 = !DILocation(line: 749, column: 14, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1539, file: !48, line: 749, column: 12)
!1552 = !DILocation(line: 749, column: 20, scope: !1551)
!1553 = !DILocation(line: 749, column: 26, scope: !1551)
!1554 = !DILocation(line: 749, column: 12, scope: !1551)
!1555 = !DILocation(line: 749, column: 43, scope: !1551)
!1556 = !DILocation(line: 749, column: 46, scope: !1557)
!1557 = !DILexicalBlockFile(scope: !1551, file: !48, discriminator: 1)
!1558 = !DILocation(line: 749, column: 52, scope: !1557)
!1559 = !DILocation(line: 749, column: 58, scope: !1557)
!1560 = !DILocation(line: 749, column: 12, scope: !1557)
!1561 = !DILocation(line: 750, column: 4, scope: !1551)
!1562 = !DILocation(line: 751, column: 2, scope: !1540)
!1563 = !DILocation(line: 754, column: 14, scope: !1410)
!1564 = !DILocation(line: 754, column: 20, scope: !1410)
!1565 = !DILocation(line: 754, column: 12, scope: !1410)
!1566 = !DILocation(line: 755, column: 6, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1410, file: !48, line: 755, column: 6)
!1568 = !DILocation(line: 755, column: 12, scope: !1567)
!1569 = !DILocation(line: 755, column: 17, scope: !1567)
!1570 = !DILocation(line: 755, column: 20, scope: !1571)
!1571 = !DILexicalBlockFile(scope: !1567, file: !48, discriminator: 1)
!1572 = !DILocation(line: 755, column: 26, scope: !1571)
!1573 = !DILocation(line: 755, column: 36, scope: !1571)
!1574 = !DILocation(line: 755, column: 41, scope: !1571)
!1575 = !DILocation(line: 755, column: 71, scope: !1576)
!1576 = !DILexicalBlockFile(scope: !1567, file: !48, discriminator: 2)
!1577 = !DILocation(line: 755, column: 45, scope: !1576)
!1578 = !DILocation(line: 755, column: 6, scope: !1576)
!1579 = !DILocation(line: 756, column: 3, scope: !1567)
!1580 = !DILocation(line: 756, column: 9, scope: !1567)
!1581 = !DILocation(line: 756, column: 19, scope: !1567)
!1582 = !DILocation(line: 759, column: 25, scope: !1410)
!1583 = !DILocation(line: 759, column: 2, scope: !1410)
!1584 = !DILocation(line: 761, column: 27, scope: !1410)
!1585 = !DILocation(line: 761, column: 2, scope: !1410)
!1586 = !DILocation(line: 762, column: 27, scope: !1410)
!1587 = !DILocation(line: 762, column: 2, scope: !1410)
!1588 = !DILocation(line: 764, column: 20, scope: !1410)
!1589 = !DILocation(line: 764, column: 2, scope: !1410)
!1590 = !DILocation(line: 764, column: 8, scope: !1410)
!1591 = !DILocation(line: 764, column: 18, scope: !1410)
!1592 = !DILocation(line: 766, column: 6, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1410, file: !48, line: 766, column: 6)
!1594 = !DILocation(line: 766, column: 12, scope: !1593)
!1595 = !DILocation(line: 766, column: 6, scope: !1410)
!1596 = !DILocation(line: 767, column: 7, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !48, line: 767, column: 7)
!1598 = distinct !DILexicalBlock(scope: !1593, file: !48, line: 766, column: 18)
!1599 = !DILocation(line: 767, column: 13, scope: !1597)
!1600 = !DILocation(line: 767, column: 19, scope: !1597)
!1601 = !DILocation(line: 767, column: 7, scope: !1598)
!1602 = !DILocation(line: 768, column: 21, scope: !1597)
!1603 = !DILocation(line: 768, column: 4, scope: !1597)
!1604 = !DILocation(line: 770, column: 21, scope: !1597)
!1605 = !DILocation(line: 770, column: 4, scope: !1597)
!1606 = !DILocation(line: 771, column: 2, scope: !1598)
!1607 = !DILocation(line: 772, column: 1, scope: !1410)
!1608 = !DILocalVariable(name: "thread", arg: 1, scope: !49, file: !48, line: 1136, type: !53)
!1609 = !DILocation(line: 1136, column: 27, scope: !49)
!1610 = !DILocalVariable(name: "e", scope: !49, file: !48, line: 1138, type: !823)
!1611 = !DILocation(line: 1138, column: 10, scope: !49)
!1612 = !DILocalVariable(name: "a", scope: !49, file: !48, line: 1138, type: !823)
!1613 = !DILocation(line: 1138, column: 13, scope: !49)
!1614 = !DILocalVariable(name: "l", scope: !49, file: !48, line: 1139, type: !91)
!1615 = !DILocation(line: 1139, column: 7, scope: !49)
!1616 = !DILocalVariable(name: "ipaddress", scope: !49, file: !48, line: 1140, type: !1617)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64, align: 64)
!1618 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_address_t", file: !1619, line: 73, baseType: !1620)
!1619 = !DIFile(filename: "./../include/vrrp_ipaddress.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ip_address", file: !1619, line: 41, size: 704, align: 64, elements: !1621)
!1621 = !{!1622, !1634, !1643, !1644, !1645, !1646, !1647, !1648, !1653, !1654, !1663, !1664, !1665}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "ifa", scope: !1620, file: !1619, line: 42, baseType: !1623, size: 64, align: 32)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ifaddrmsg", file: !1624, line: 7, size: 64, align: 32, elements: !1625)
!1624 = !DIFile(filename: "/usr/include/linux/if_addr.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!1625 = !{!1626, !1629, !1630, !1631, !1632}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_family", scope: !1623, file: !1624, line: 8, baseType: !1627, size: 8, align: 8)
!1627 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !1628, line: 20, baseType: !434)
!1628 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_prefixlen", scope: !1623, file: !1624, line: 9, baseType: !1627, size: 8, align: 8, offset: 8)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_flags", scope: !1623, file: !1624, line: 10, baseType: !1627, size: 8, align: 8, offset: 16)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_scope", scope: !1623, file: !1624, line: 11, baseType: !1627, size: 8, align: 8, offset: 24)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "ifa_index", scope: !1623, file: !1624, line: 12, baseType: !1633, size: 32, align: 32, offset: 32)
!1633 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !1628, line: 26, baseType: !106)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !1620, file: !1619, line: 50, baseType: !1635, size: 128, align: 32, offset: 64)
!1635 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1620, file: !1619, line: 44, size: 128, align: 32, elements: !1636)
!1636 = !{!1637, !1642}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "sin", scope: !1635, file: !1619, line: 48, baseType: !1638, size: 64, align: 32)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1635, file: !1619, line: 45, size: 64, align: 32, elements: !1639)
!1639 = !{!1640, !1641}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !1638, file: !1619, line: 46, baseType: !421, size: 32, align: 32)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "sin_brd", scope: !1638, file: !1619, line: 47, baseType: !421, size: 32, align: 32, offset: 32)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !1635, file: !1619, line: 49, baseType: !426, size: 128, align: 32)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "ifp", scope: !1620, file: !1619, line: 52, baseType: !411, size: 64, align: 64, offset: 192)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !1620, file: !1619, line: 53, baseType: !123, size: 64, align: 64, offset: 256)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1620, file: !1619, line: 55, baseType: !309, size: 32, align: 32, offset: 320)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flagmask", scope: !1620, file: !1619, line: 56, baseType: !309, size: 32, align: 32, offset: 352)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "have_peer", scope: !1620, file: !1619, line: 61, baseType: !198, size: 8, align: 8, offset: 384)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !1620, file: !1619, line: 65, baseType: !1649, size: 128, align: 32, offset: 416)
!1649 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1620, file: !1619, line: 62, size: 128, align: 32, elements: !1650)
!1650 = !{!1651, !1652}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !1649, file: !1619, line: 63, baseType: !421, size: 32, align: 32)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !1649, file: !1619, line: 64, baseType: !426, size: 128, align: 32)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "dont_track", scope: !1620, file: !1619, line: 66, baseType: !198, size: 8, align: 8, offset: 544)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "track_group", scope: !1620, file: !1619, line: 67, baseType: !1655, size: 64, align: 64, offset: 576)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64, align: 64)
!1656 = !DIDerivedType(tag: DW_TAG_typedef, name: "static_track_group_t", file: !1657, line: 39, baseType: !1658)
!1657 = !DIFile(filename: "./../include/vrrp_static_track.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_static_track_group", file: !1657, line: 35, size: 192, align: 64, elements: !1659)
!1659 = !{!1660, !1661, !1662}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !1658, file: !1657, line: 36, baseType: !123, size: 64, align: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !1658, file: !1657, line: 37, baseType: !350, size: 64, align: 64, offset: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp_instances", scope: !1658, file: !1657, line: 38, baseType: !91, size: 64, align: 64, offset: 128)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1620, file: !1619, line: 69, baseType: !198, size: 8, align: 8, offset: 640)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "iptable_rule_set", scope: !1620, file: !1619, line: 70, baseType: !198, size: 8, align: 8, offset: 648)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "garp_gna_pending", scope: !1620, file: !1619, line: 72, baseType: !198, size: 8, align: 8, offset: 656)
!1666 = !DILocation(line: 1140, column: 16, scope: !49)
!1667 = !DILocalVariable(name: "next_time", scope: !49, file: !48, line: 1141, type: !206)
!1668 = !DILocation(line: 1141, column: 12, scope: !49)
!1669 = !DILocalVariable(name: "ifp", scope: !49, file: !48, line: 1144, type: !411)
!1670 = !DILocation(line: 1144, column: 15, scope: !49)
!1671 = !DILocalVariable(name: "vrrp", scope: !49, file: !48, line: 1145, type: !337)
!1672 = !DILocation(line: 1145, column: 10, scope: !49)
!1673 = !DILocalVariable(name: "i", scope: !49, file: !48, line: 1149, type: !47)
!1674 = !DILocation(line: 1149, column: 4, scope: !49)
!1675 = !DILocation(line: 1151, column: 2, scope: !49)
!1676 = !DILocation(line: 1153, column: 14, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !49, file: !48, line: 1153, column: 2)
!1678 = !DILocation(line: 1153, column: 25, scope: !1677)
!1679 = !DILocation(line: 1153, column: 13, scope: !1677)
!1680 = !DILocation(line: 1153, column: 12, scope: !1677)
!1681 = !DILocation(line: 1153, column: 12, scope: !1682)
!1682 = !DILexicalBlockFile(scope: !1677, file: !48, discriminator: 1)
!1683 = !DILocation(line: 1153, column: 13, scope: !1684)
!1684 = !DILexicalBlockFile(scope: !1677, file: !48, discriminator: 2)
!1685 = !DILocation(line: 1153, column: 24, scope: !1684)
!1686 = !DILocation(line: 1153, column: 31, scope: !1684)
!1687 = !DILocation(line: 1153, column: 12, scope: !1684)
!1688 = !DILocation(line: 1153, column: 12, scope: !1689)
!1689 = !DILexicalBlockFile(scope: !1677, file: !48, discriminator: 3)
!1690 = !DILocation(line: 1153, column: 9, scope: !1689)
!1691 = !DILocation(line: 1153, column: 7, scope: !1689)
!1692 = !DILocation(line: 1153, column: 38, scope: !1693)
!1693 = !DILexicalBlockFile(scope: !1694, file: !48, discriminator: 4)
!1694 = distinct !DILexicalBlock(scope: !1677, file: !48, line: 1153, column: 2)
!1695 = !DILocation(line: 1153, column: 2, scope: !1693)
!1696 = !DILocation(line: 1154, column: 12, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1694, file: !48, line: 1153, column: 60)
!1698 = !DILocation(line: 1154, column: 16, scope: !1697)
!1699 = !DILocation(line: 1154, column: 10, scope: !1697)
!1700 = !DILocation(line: 1154, column: 8, scope: !1697)
!1701 = !DILocation(line: 1156, column: 8, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1697, file: !48, line: 1156, column: 7)
!1703 = !DILocation(line: 1156, column: 14, scope: !1702)
!1704 = !DILocation(line: 1156, column: 27, scope: !1702)
!1705 = !DILocation(line: 1156, column: 31, scope: !1706)
!1706 = !DILexicalBlockFile(scope: !1702, file: !48, discriminator: 1)
!1707 = !DILocation(line: 1156, column: 37, scope: !1706)
!1708 = !DILocation(line: 1156, column: 7, scope: !1706)
!1709 = !DILocation(line: 1157, column: 4, scope: !1702)
!1710 = !DILocation(line: 1159, column: 3, scope: !1697)
!1711 = !DILocation(line: 1159, column: 9, scope: !1697)
!1712 = !DILocation(line: 1159, column: 22, scope: !1697)
!1713 = !DILocation(line: 1160, column: 3, scope: !1697)
!1714 = !DILocation(line: 1160, column: 9, scope: !1697)
!1715 = !DILocation(line: 1160, column: 21, scope: !1697)
!1716 = !DILocation(line: 1162, column: 7, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1697, file: !48, line: 1162, column: 7)
!1718 = !DILocation(line: 1162, column: 13, scope: !1717)
!1719 = !DILocation(line: 1162, column: 19, scope: !1717)
!1720 = !DILocation(line: 1162, column: 24, scope: !1717)
!1721 = !DILocation(line: 1163, column: 8, scope: !1717)
!1722 = !DILocation(line: 1163, column: 14, scope: !1717)
!1723 = !DILocation(line: 1162, column: 7, scope: !1724)
!1724 = !DILexicalBlockFile(scope: !1697, file: !48, discriminator: 1)
!1725 = !DILocation(line: 1164, column: 4, scope: !1717)
!1726 = !DILocation(line: 1166, column: 10, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1697, file: !48, line: 1166, column: 3)
!1728 = !DILocation(line: 1166, column: 8, scope: !1727)
!1729 = !DILocation(line: 1166, column: 17, scope: !1730)
!1730 = !DILexicalBlockFile(scope: !1731, file: !48, discriminator: 1)
!1731 = distinct !DILexicalBlock(scope: !1727, file: !48, line: 1166, column: 3)
!1732 = !DILocation(line: 1166, column: 19, scope: !1730)
!1733 = !DILocation(line: 1166, column: 3, scope: !1730)
!1734 = !DILocation(line: 1167, column: 9, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1731, file: !48, line: 1166, column: 33)
!1736 = !DILocation(line: 1167, column: 11, scope: !1735)
!1737 = !DILocation(line: 1167, column: 8, scope: !1735)
!1738 = !DILocation(line: 1167, column: 21, scope: !1739)
!1739 = !DILexicalBlockFile(scope: !1735, file: !48, discriminator: 1)
!1740 = !DILocation(line: 1167, column: 27, scope: !1739)
!1741 = !DILocation(line: 1167, column: 8, scope: !1739)
!1742 = !DILocation(line: 1167, column: 33, scope: !1743)
!1743 = !DILexicalBlockFile(scope: !1735, file: !48, discriminator: 2)
!1744 = !DILocation(line: 1167, column: 39, scope: !1743)
!1745 = !DILocation(line: 1167, column: 8, scope: !1743)
!1746 = !DILocation(line: 1167, column: 8, scope: !1747)
!1747 = !DILexicalBlockFile(scope: !1735, file: !48, discriminator: 3)
!1748 = !DILocation(line: 1167, column: 6, scope: !1747)
!1749 = !DILocation(line: 1169, column: 11, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1735, file: !48, line: 1169, column: 8)
!1751 = !DILocation(line: 1169, column: 14, scope: !1750)
!1752 = !DILocation(line: 1169, column: 8, scope: !1750)
!1753 = !DILocation(line: 1169, column: 13, scope: !1754)
!1754 = !DILexicalBlockFile(scope: !1750, file: !48, discriminator: 1)
!1755 = !DILocation(line: 1169, column: 17, scope: !1754)
!1756 = !DILocation(line: 1169, column: 22, scope: !1754)
!1757 = !DILocation(line: 1169, column: 8, scope: !1754)
!1758 = !DILocation(line: 1169, column: 12, scope: !1759)
!1759 = !DILexicalBlockFile(scope: !1750, file: !48, discriminator: 2)
!1760 = !DILocation(line: 1169, column: 16, scope: !1759)
!1761 = !DILocation(line: 1169, column: 21, scope: !1759)
!1762 = !DILocation(line: 1169, column: 8, scope: !1759)
!1763 = !DILocation(line: 1170, column: 17, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !48, line: 1170, column: 5)
!1765 = distinct !DILexicalBlock(scope: !1750, file: !48, line: 1169, column: 12)
!1766 = !DILocation(line: 1170, column: 16, scope: !1764)
!1767 = !DILocation(line: 1170, column: 15, scope: !1764)
!1768 = !DILocation(line: 1170, column: 15, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !1764, file: !48, discriminator: 1)
!1770 = !DILocation(line: 1170, column: 16, scope: !1771)
!1771 = !DILexicalBlockFile(scope: !1764, file: !48, discriminator: 2)
!1772 = !DILocation(line: 1170, column: 20, scope: !1771)
!1773 = !DILocation(line: 1170, column: 15, scope: !1771)
!1774 = !DILocation(line: 1170, column: 15, scope: !1775)
!1775 = !DILexicalBlockFile(scope: !1764, file: !48, discriminator: 3)
!1776 = !DILocation(line: 1170, column: 12, scope: !1775)
!1777 = !DILocation(line: 1170, column: 10, scope: !1775)
!1778 = !DILocation(line: 1170, column: 27, scope: !1779)
!1779 = !DILexicalBlockFile(scope: !1780, file: !48, discriminator: 4)
!1780 = distinct !DILexicalBlock(scope: !1764, file: !48, line: 1170, column: 5)
!1781 = !DILocation(line: 1170, column: 5, scope: !1779)
!1782 = !DILocation(line: 1171, column: 20, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1780, file: !48, line: 1170, column: 49)
!1784 = !DILocation(line: 1171, column: 24, scope: !1783)
!1785 = !DILocation(line: 1171, column: 18, scope: !1783)
!1786 = !DILocation(line: 1171, column: 16, scope: !1783)
!1787 = !DILocation(line: 1172, column: 11, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1783, file: !48, line: 1172, column: 10)
!1789 = !DILocation(line: 1172, column: 22, scope: !1788)
!1790 = !DILocation(line: 1172, column: 10, scope: !1783)
!1791 = !DILocation(line: 1173, column: 7, scope: !1788)
!1792 = !DILocation(line: 1174, column: 11, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1783, file: !48, line: 1174, column: 10)
!1794 = !DILocation(line: 1174, column: 22, scope: !1793)
!1795 = !DILocation(line: 1174, column: 10, scope: !1783)
!1796 = !DILocation(line: 1175, column: 7, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1793, file: !48, line: 1174, column: 27)
!1798 = !DILocation(line: 1175, column: 18, scope: !1797)
!1799 = !DILocation(line: 1175, column: 35, scope: !1797)
!1800 = !DILocation(line: 1176, column: 7, scope: !1797)
!1801 = !DILocation(line: 1179, column: 14, scope: !1783)
!1802 = !DILocation(line: 1179, column: 25, scope: !1783)
!1803 = !DILocation(line: 1179, column: 31, scope: !1783)
!1804 = !DILocation(line: 1179, column: 10, scope: !1783)
!1805 = !DILocation(line: 1182, column: 11, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1783, file: !48, line: 1182, column: 10)
!1807 = !DILocation(line: 1182, column: 16, scope: !1806)
!1808 = !DILocation(line: 1182, column: 10, scope: !1783)
!1809 = !DILocation(line: 1183, column: 7, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1806, file: !48, line: 1182, column: 28)
!1811 = !DILocation(line: 1183, column: 18, scope: !1810)
!1812 = !DILocation(line: 1183, column: 35, scope: !1810)
!1813 = !DILocation(line: 1184, column: 7, scope: !1810)
!1814 = !DILocation(line: 1187, column: 13, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1783, file: !48, line: 1187, column: 10)
!1816 = !DILocation(line: 1187, column: 25, scope: !1815)
!1817 = !DILocation(line: 1187, column: 29, scope: !1815)
!1818 = !DILocation(line: 1187, column: 12, scope: !1815)
!1819 = !DILocation(line: 1187, column: 40, scope: !1815)
!1820 = !DILocation(line: 1187, column: 10, scope: !1783)
!1821 = !DILocation(line: 1188, column: 13, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !48, line: 1188, column: 10)
!1823 = distinct !DILexicalBlock(scope: !1815, file: !48, line: 1187, column: 13)
!1824 = !DILocation(line: 1188, column: 11, scope: !1822)
!1825 = !DILocation(line: 1188, column: 16, scope: !1822)
!1826 = !DILocation(line: 1188, column: 28, scope: !1822)
!1827 = !DILocation(line: 1188, column: 20, scope: !1822)
!1828 = !DILocation(line: 1188, column: 10, scope: !1823)
!1829 = !DILocation(line: 1188, column: 13, scope: !1830)
!1830 = !DILexicalBlockFile(scope: !1822, file: !48, discriminator: 1)
!1831 = !DILocation(line: 1188, column: 11, scope: !1830)
!1832 = !DILocation(line: 1188, column: 16, scope: !1830)
!1833 = !DILocation(line: 1188, column: 28, scope: !1830)
!1834 = !DILocation(line: 1188, column: 10, scope: !1830)
!1835 = !DILocation(line: 1188, column: 13, scope: !1836)
!1836 = !DILexicalBlockFile(scope: !1822, file: !48, discriminator: 2)
!1837 = !DILocation(line: 1188, column: 11, scope: !1836)
!1838 = !DILocation(line: 1188, column: 16, scope: !1836)
!1839 = !DILocation(line: 1188, column: 28, scope: !1836)
!1840 = !DILocation(line: 1188, column: 10, scope: !1836)
!1841 = !DILocation(line: 1189, column: 38, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1822, file: !48, line: 1188, column: 69)
!1843 = !DILocation(line: 1189, column: 43, scope: !1842)
!1844 = !DILocation(line: 1189, column: 8, scope: !1842)
!1845 = !DILocation(line: 1190, column: 8, scope: !1842)
!1846 = !DILocation(line: 1190, column: 19, scope: !1842)
!1847 = !DILocation(line: 1190, column: 36, scope: !1842)
!1848 = !DILocation(line: 1191, column: 7, scope: !1842)
!1849 = !DILocation(line: 1193, column: 8, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1822, file: !48, line: 1192, column: 12)
!1851 = !DILocation(line: 1193, column: 14, scope: !1850)
!1852 = !DILocation(line: 1193, column: 27, scope: !1850)
!1853 = !DILocation(line: 1194, column: 12, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1850, file: !48, line: 1194, column: 11)
!1855 = !DILocation(line: 1194, column: 17, scope: !1854)
!1856 = !DILocation(line: 1194, column: 29, scope: !1854)
!1857 = !DILocation(line: 1194, column: 14, scope: !1854)
!1858 = !DILocation(line: 1194, column: 21, scope: !1854)
!1859 = !DILocation(line: 1194, column: 11, scope: !1850)
!1860 = !DILocation(line: 1194, column: 12, scope: !1861)
!1861 = !DILexicalBlockFile(scope: !1854, file: !48, discriminator: 1)
!1862 = !DILocation(line: 1194, column: 17, scope: !1861)
!1863 = !DILocation(line: 1194, column: 29, scope: !1861)
!1864 = !DILocation(line: 1194, column: 14, scope: !1861)
!1865 = !DILocation(line: 1194, column: 11, scope: !1861)
!1866 = !DILocation(line: 1194, column: 12, scope: !1867)
!1867 = !DILexicalBlockFile(scope: !1854, file: !48, discriminator: 2)
!1868 = !DILocation(line: 1194, column: 17, scope: !1867)
!1869 = !DILocation(line: 1194, column: 29, scope: !1867)
!1870 = !DILocation(line: 1194, column: 14, scope: !1867)
!1871 = !DILocation(line: 1194, column: 11, scope: !1867)
!1872 = !DILocation(line: 1195, column: 21, scope: !1854)
!1873 = !DILocation(line: 1195, column: 26, scope: !1854)
!1874 = !DILocation(line: 1195, column: 38, scope: !1854)
!1875 = !DILocation(line: 1195, column: 9, scope: !1854)
!1876 = !DILocation(line: 1197, column: 6, scope: !1823)
!1877 = !DILocation(line: 1199, column: 13, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !48, line: 1199, column: 10)
!1879 = distinct !DILexicalBlock(scope: !1815, file: !48, line: 1198, column: 11)
!1880 = !DILocation(line: 1199, column: 11, scope: !1878)
!1881 = !DILocation(line: 1199, column: 16, scope: !1878)
!1882 = !DILocation(line: 1199, column: 28, scope: !1878)
!1883 = !DILocation(line: 1199, column: 20, scope: !1878)
!1884 = !DILocation(line: 1199, column: 10, scope: !1879)
!1885 = !DILocation(line: 1199, column: 13, scope: !1886)
!1886 = !DILexicalBlockFile(scope: !1878, file: !48, discriminator: 1)
!1887 = !DILocation(line: 1199, column: 11, scope: !1886)
!1888 = !DILocation(line: 1199, column: 16, scope: !1886)
!1889 = !DILocation(line: 1199, column: 28, scope: !1886)
!1890 = !DILocation(line: 1199, column: 10, scope: !1886)
!1891 = !DILocation(line: 1199, column: 13, scope: !1892)
!1892 = !DILexicalBlockFile(scope: !1878, file: !48, discriminator: 2)
!1893 = !DILocation(line: 1199, column: 11, scope: !1892)
!1894 = !DILocation(line: 1199, column: 16, scope: !1892)
!1895 = !DILocation(line: 1199, column: 28, scope: !1892)
!1896 = !DILocation(line: 1199, column: 10, scope: !1892)
!1897 = !DILocation(line: 1200, column: 44, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1878, file: !48, line: 1199, column: 68)
!1899 = !DILocation(line: 1200, column: 49, scope: !1898)
!1900 = !DILocation(line: 1200, column: 8, scope: !1898)
!1901 = !DILocation(line: 1201, column: 8, scope: !1898)
!1902 = !DILocation(line: 1201, column: 19, scope: !1898)
!1903 = !DILocation(line: 1201, column: 36, scope: !1898)
!1904 = !DILocation(line: 1202, column: 7, scope: !1898)
!1905 = !DILocation(line: 1204, column: 8, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1878, file: !48, line: 1203, column: 12)
!1907 = !DILocation(line: 1204, column: 14, scope: !1906)
!1908 = !DILocation(line: 1204, column: 26, scope: !1906)
!1909 = !DILocation(line: 1205, column: 12, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1906, file: !48, line: 1205, column: 11)
!1911 = !DILocation(line: 1205, column: 17, scope: !1910)
!1912 = !DILocation(line: 1205, column: 29, scope: !1910)
!1913 = !DILocation(line: 1205, column: 14, scope: !1910)
!1914 = !DILocation(line: 1205, column: 21, scope: !1910)
!1915 = !DILocation(line: 1205, column: 11, scope: !1906)
!1916 = !DILocation(line: 1205, column: 12, scope: !1917)
!1917 = !DILexicalBlockFile(scope: !1910, file: !48, discriminator: 1)
!1918 = !DILocation(line: 1205, column: 17, scope: !1917)
!1919 = !DILocation(line: 1205, column: 29, scope: !1917)
!1920 = !DILocation(line: 1205, column: 14, scope: !1917)
!1921 = !DILocation(line: 1205, column: 11, scope: !1917)
!1922 = !DILocation(line: 1205, column: 12, scope: !1923)
!1923 = !DILexicalBlockFile(scope: !1910, file: !48, discriminator: 2)
!1924 = !DILocation(line: 1205, column: 17, scope: !1923)
!1925 = !DILocation(line: 1205, column: 29, scope: !1923)
!1926 = !DILocation(line: 1205, column: 14, scope: !1923)
!1927 = !DILocation(line: 1205, column: 11, scope: !1923)
!1928 = !DILocation(line: 1206, column: 21, scope: !1910)
!1929 = !DILocation(line: 1206, column: 26, scope: !1910)
!1930 = !DILocation(line: 1206, column: 38, scope: !1910)
!1931 = !DILocation(line: 1206, column: 9, scope: !1910)
!1932 = !DILocation(line: 1209, column: 5, scope: !1783)
!1933 = !DILocation(line: 1170, column: 38, scope: !1934)
!1934 = !DILexicalBlockFile(scope: !1780, file: !48, discriminator: 5)
!1935 = !DILocation(line: 1170, column: 42, scope: !1934)
!1936 = !DILocation(line: 1170, column: 35, scope: !1934)
!1937 = !DILocation(line: 1170, column: 5, scope: !1934)
!1938 = distinct !{!1938, !1939}
!1939 = !DILocation(line: 1170, column: 5, scope: !1765)
!1940 = !DILocation(line: 1210, column: 4, scope: !1765)
!1941 = !DILocation(line: 1211, column: 3, scope: !1735)
!1942 = !DILocation(line: 1166, column: 29, scope: !1943)
!1943 = !DILexicalBlockFile(scope: !1731, file: !48, discriminator: 2)
!1944 = !DILocation(line: 1166, column: 3, scope: !1943)
!1945 = distinct !{!1945, !1946}
!1946 = !DILocation(line: 1166, column: 3, scope: !1697)
!1947 = !DILocation(line: 1212, column: 2, scope: !1697)
!1948 = !DILocation(line: 1153, column: 49, scope: !1949)
!1949 = !DILexicalBlockFile(scope: !1694, file: !48, discriminator: 5)
!1950 = !DILocation(line: 1153, column: 53, scope: !1949)
!1951 = !DILocation(line: 1153, column: 46, scope: !1949)
!1952 = !DILocation(line: 1153, column: 2, scope: !1949)
!1953 = distinct !{!1953, !1954}
!1954 = !DILocation(line: 1153, column: 2, scope: !49)
!1955 = !DILocation(line: 1214, column: 16, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !49, file: !48, line: 1214, column: 6)
!1957 = !DILocation(line: 1214, column: 23, scope: !1956)
!1958 = !DILocation(line: 1214, column: 6, scope: !49)
!1959 = !DILocation(line: 1216, column: 20, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1956, file: !48, line: 1214, column: 38)
!1961 = !DILocation(line: 1218, column: 34, scope: !1960)
!1962 = !DILocation(line: 1218, column: 42, scope: !1960)
!1963 = !DILocation(line: 1219, column: 19, scope: !1960)
!1964 = !DILocation(line: 1219, column: 8, scope: !1960)
!1965 = !DILocation(line: 1219, column: 8, scope: !1966)
!1966 = !DILexicalBlockFile(scope: !1960, file: !48, discriminator: 1)
!1967 = !DILocation(line: 1218, column: 17, scope: !1960)
!1968 = !DILocation(line: 1218, column: 15, scope: !1960)
!1969 = !DILocation(line: 1220, column: 2, scope: !1960)
!1970 = !DILocation(line: 1222, column: 15, scope: !1956)
!1971 = !DILocation(line: 1224, column: 2, scope: !49)
!1972 = distinct !DISubprogram(name: "timer_long", scope: !207, file: !207, line: 75, type: !1973, isLocal: true, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !235)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!58, !206}
!1975 = !DILocalVariable(name: "a", arg: 1, scope: !1972, file: !207, line: 75, type: !206)
!1976 = !DILocation(line: 75, column: 22, scope: !1972)
!1977 = !DILocation(line: 77, column: 26, scope: !1972)
!1978 = !DILocation(line: 77, column: 33, scope: !1972)
!1979 = !DILocation(line: 77, column: 63, scope: !1972)
!1980 = !DILocation(line: 77, column: 44, scope: !1972)
!1981 = !DILocation(line: 77, column: 2, scope: !1972)
!1982 = distinct !DISubprogram(name: "timer_sub_now", scope: !207, file: !207, line: 57, type: !1983, isLocal: true, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !235)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!206, !206}
!1985 = !DILocalVariable(name: "a", arg: 1, scope: !1982, file: !207, line: 57, type: !206)
!1986 = !DILocation(line: 57, column: 25, scope: !1982)
!1987 = !DILocation(line: 59, column: 1, scope: !1982)
!1988 = distinct !{!1988, !1987}
!1989 = !DILocation(line: 59, column: 4, scope: !1990)
!1990 = !DILexicalBlockFile(scope: !1991, file: !207, discriminator: 1)
!1991 = distinct !DILexicalBlock(scope: !1982, file: !207, line: 59, column: 4)
!1992 = !DILocation(line: 59, column: 11, scope: !1990)
!1993 = !DILocation(line: 59, column: 12, scope: !1990)
!1994 = !DILocation(line: 59, column: 17, scope: !1990)
!1995 = !DILocation(line: 59, column: 4, scope: !1996)
!1996 = !DILexicalBlockFile(scope: !1997, file: !207, discriminator: 2)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !207, line: 59, column: 17)
!1998 = distinct !DILexicalBlock(scope: !1991, file: !207, line: 59, column: 17)
!1999 = !DILocation(line: 59, column: 19, scope: !1996)
!2000 = !DILocation(line: 59, column: 12, scope: !1996)
!2001 = !DILocation(line: 59, column: 24, scope: !1996)
!2002 = !DILocation(line: 59, column: 26, scope: !2003)
!2003 = !DILexicalBlockFile(scope: !1991, file: !207, discriminator: 3)
!2004 = !DILocation(line: 61, column: 9, scope: !1982)
!2005 = !DILocation(line: 61, column: 2, scope: !1982)
!2006 = distinct !DISubprogram(name: "vrrp_compute_timer", scope: !48, file: !48, line: 331, type: !2007, isLocal: true, isDefinition: true, scopeLine: 332, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !235)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{!206, !642}
!2009 = !DILocalVariable(name: "fd", arg: 1, scope: !2006, file: !48, line: 331, type: !642)
!2010 = !DILocation(line: 331, column: 30, scope: !2006)
!2011 = !DILocalVariable(name: "vrrp", scope: !2006, file: !48, line: 333, type: !337)
!2012 = !DILocation(line: 333, column: 10, scope: !2006)
!2013 = !DILocalVariable(name: "e", scope: !2006, file: !48, line: 334, type: !823)
!2014 = !DILocation(line: 334, column: 10, scope: !2006)
!2015 = !DILocalVariable(name: "l", scope: !2006, file: !48, line: 335, type: !91)
!2016 = !DILocation(line: 335, column: 7, scope: !2006)
!2017 = !DILocation(line: 335, column: 38, scope: !2006)
!2018 = !DILocation(line: 335, column: 41, scope: !2006)
!2019 = !DILocation(line: 335, column: 12, scope: !2006)
!2020 = !DILocation(line: 335, column: 23, scope: !2006)
!2021 = !DILocalVariable(name: "timer", scope: !2006, file: !48, line: 336, type: !206)
!2022 = !DILocation(line: 336, column: 12, scope: !2006)
!2023 = !DILocation(line: 342, column: 8, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2006, file: !48, line: 342, column: 6)
!2025 = !DILocation(line: 342, column: 12, scope: !2024)
!2026 = !DILocation(line: 342, column: 19, scope: !2024)
!2027 = !DILocation(line: 342, column: 6, scope: !2006)
!2028 = !DILocation(line: 343, column: 15, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2024, file: !48, line: 342, column: 25)
!2030 = !DILocation(line: 343, column: 14, scope: !2029)
!2031 = !DILocation(line: 343, column: 13, scope: !2029)
!2032 = !DILocation(line: 343, column: 13, scope: !2033)
!2033 = !DILexicalBlockFile(scope: !2029, file: !48, discriminator: 1)
!2034 = !DILocation(line: 343, column: 12, scope: !2035)
!2035 = !DILexicalBlockFile(scope: !2029, file: !48, discriminator: 2)
!2036 = !DILocation(line: 343, column: 16, scope: !2035)
!2037 = !DILocation(line: 343, column: 13, scope: !2035)
!2038 = !DILocation(line: 343, column: 13, scope: !2039)
!2039 = !DILexicalBlockFile(scope: !2029, file: !48, discriminator: 3)
!2040 = !DILocation(line: 343, column: 24, scope: !2039)
!2041 = !DILocation(line: 343, column: 10, scope: !2039)
!2042 = !DILocation(line: 343, column: 8, scope: !2039)
!2043 = !DILocation(line: 344, column: 10, scope: !2029)
!2044 = !DILocation(line: 344, column: 16, scope: !2029)
!2045 = !DILocation(line: 344, column: 3, scope: !2029)
!2046 = !DILocation(line: 348, column: 4, scope: !2006)
!2047 = !DILocation(line: 348, column: 12, scope: !2006)
!2048 = !DILocation(line: 348, column: 11, scope: !2006)
!2049 = !DILocation(line: 349, column: 14, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2006, file: !48, line: 349, column: 2)
!2051 = !DILocation(line: 349, column: 13, scope: !2050)
!2052 = !DILocation(line: 349, column: 12, scope: !2050)
!2053 = !DILocation(line: 349, column: 12, scope: !2054)
!2054 = !DILexicalBlockFile(scope: !2050, file: !48, discriminator: 1)
!2055 = !DILocation(line: 349, column: 13, scope: !2056)
!2056 = !DILexicalBlockFile(scope: !2050, file: !48, discriminator: 2)
!2057 = !DILocation(line: 349, column: 17, scope: !2056)
!2058 = !DILocation(line: 349, column: 12, scope: !2056)
!2059 = !DILocation(line: 349, column: 12, scope: !2060)
!2060 = !DILexicalBlockFile(scope: !2050, file: !48, discriminator: 3)
!2061 = !DILocation(line: 349, column: 9, scope: !2060)
!2062 = !DILocation(line: 349, column: 7, scope: !2060)
!2063 = !DILocation(line: 349, column: 24, scope: !2064)
!2064 = !DILexicalBlockFile(scope: !2065, file: !48, discriminator: 4)
!2065 = distinct !DILexicalBlock(scope: !2050, file: !48, line: 349, column: 2)
!2066 = !DILocation(line: 349, column: 2, scope: !2064)
!2067 = !DILocation(line: 350, column: 12, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2065, file: !48, line: 349, column: 46)
!2069 = !DILocation(line: 350, column: 16, scope: !2068)
!2070 = !DILocation(line: 350, column: 10, scope: !2068)
!2071 = !DILocation(line: 350, column: 8, scope: !2068)
!2072 = !DILocation(line: 351, column: 7, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2068, file: !48, line: 351, column: 7)
!2074 = !DILocation(line: 351, column: 13, scope: !2073)
!2075 = !DILocation(line: 351, column: 22, scope: !2073)
!2076 = !DILocation(line: 351, column: 31, scope: !2073)
!2077 = !DILocation(line: 351, column: 28, scope: !2073)
!2078 = !DILocation(line: 351, column: 7, scope: !2068)
!2079 = !DILocation(line: 352, column: 4, scope: !2073)
!2080 = !DILocation(line: 353, column: 10, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2068, file: !48, line: 353, column: 7)
!2082 = !DILocation(line: 353, column: 8, scope: !2081)
!2083 = !DILocation(line: 353, column: 17, scope: !2081)
!2084 = !DILocation(line: 353, column: 10, scope: !2085)
!2085 = !DILexicalBlockFile(scope: !2081, file: !48, discriminator: 1)
!2086 = !DILocation(line: 353, column: 20, scope: !2085)
!2087 = !DILocation(line: 353, column: 26, scope: !2085)
!2088 = !DILocation(line: 354, column: 7, scope: !2081)
!2089 = !DILocation(line: 354, column: 13, scope: !2081)
!2090 = !DILocation(line: 354, column: 9, scope: !2081)
!2091 = !DILocation(line: 354, column: 16, scope: !2081)
!2092 = !DILocation(line: 353, column: 7, scope: !2093)
!2093 = !DILexicalBlockFile(scope: !2068, file: !48, discriminator: 2)
!2094 = !DILocation(line: 354, column: 7, scope: !2085)
!2095 = !DILocation(line: 354, column: 13, scope: !2085)
!2096 = !DILocation(line: 354, column: 9, scope: !2085)
!2097 = !DILocation(line: 354, column: 6, scope: !2085)
!2098 = !DILocation(line: 354, column: 7, scope: !2099)
!2099 = !DILexicalBlockFile(scope: !2081, file: !48, discriminator: 2)
!2100 = !DILocation(line: 354, column: 13, scope: !2099)
!2101 = !DILocation(line: 354, column: 9, scope: !2099)
!2102 = !DILocation(line: 354, column: 6, scope: !2099)
!2103 = !DILocation(line: 353, column: 7, scope: !2104)
!2104 = !DILexicalBlockFile(scope: !2068, file: !48, discriminator: 3)
!2105 = !DILocation(line: 355, column: 12, scope: !2081)
!2106 = !DILocation(line: 355, column: 18, scope: !2081)
!2107 = !DILocation(line: 355, column: 4, scope: !2081)
!2108 = !DILocation(line: 356, column: 2, scope: !2068)
!2109 = !DILocation(line: 349, column: 35, scope: !2110)
!2110 = !DILexicalBlockFile(scope: !2065, file: !48, discriminator: 5)
!2111 = !DILocation(line: 349, column: 39, scope: !2110)
!2112 = !DILocation(line: 349, column: 32, scope: !2110)
!2113 = !DILocation(line: 349, column: 2, scope: !2110)
!2114 = distinct !{!2114, !2115}
!2115 = !DILocation(line: 349, column: 2, scope: !2006)
!2116 = !DILocation(line: 358, column: 9, scope: !2006)
!2117 = !DILocation(line: 358, column: 2, scope: !2006)
!2118 = !DILocation(line: 359, column: 1, scope: !2006)
!2119 = distinct !DISubprogram(name: "already_exist_sock", scope: !48, file: !48, line: 476, type: !2120, isLocal: true, isDefinition: true, scopeLine: 477, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !235)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!287, !91, !293, !52, !307, !198}
!2122 = !DILocalVariable(name: "l", arg: 1, scope: !2119, file: !48, line: 476, type: !91)
!2123 = !DILocation(line: 476, column: 25, scope: !2119)
!2124 = !DILocalVariable(name: "family", arg: 2, scope: !2119, file: !48, line: 476, type: !293)
!2125 = !DILocation(line: 476, column: 40, scope: !2119)
!2126 = !DILocalVariable(name: "proto", arg: 3, scope: !2119, file: !48, line: 476, type: !52)
!2127 = !DILocation(line: 476, column: 52, scope: !2119)
!2128 = !DILocalVariable(name: "ifindex", arg: 4, scope: !2119, file: !48, line: 476, type: !307)
!2129 = !DILocation(line: 476, column: 69, scope: !2119)
!2130 = !DILocalVariable(name: "unicast", arg: 5, scope: !2119, file: !48, line: 476, type: !198)
!2131 = !DILocation(line: 476, column: 82, scope: !2119)
!2132 = !DILocalVariable(name: "sock", scope: !2119, file: !48, line: 478, type: !287)
!2133 = !DILocation(line: 478, column: 10, scope: !2119)
!2134 = !DILocalVariable(name: "e", scope: !2119, file: !48, line: 479, type: !823)
!2135 = !DILocation(line: 479, column: 10, scope: !2119)
!2136 = !DILocation(line: 481, column: 15, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2119, file: !48, line: 481, column: 2)
!2138 = !DILocation(line: 481, column: 14, scope: !2137)
!2139 = !DILocation(line: 481, column: 23, scope: !2140)
!2140 = !DILexicalBlockFile(scope: !2137, file: !48, discriminator: 1)
!2141 = !DILocation(line: 481, column: 22, scope: !2140)
!2142 = !DILocation(line: 481, column: 21, scope: !2140)
!2143 = !DILocation(line: 481, column: 21, scope: !2144)
!2144 = !DILexicalBlockFile(scope: !2137, file: !48, discriminator: 2)
!2145 = !DILocation(line: 481, column: 4, scope: !2146)
!2146 = !DILexicalBlockFile(scope: !2137, file: !48, discriminator: 3)
!2147 = !DILocation(line: 481, column: 8, scope: !2146)
!2148 = !DILocation(line: 481, column: 21, scope: !2146)
!2149 = !DILocation(line: 481, column: 21, scope: !2150)
!2150 = !DILexicalBlockFile(scope: !2137, file: !48, discriminator: 4)
!2151 = !DILocation(line: 481, column: 14, scope: !2150)
!2152 = !DILocation(line: 481, column: 14, scope: !2153)
!2153 = !DILexicalBlockFile(scope: !2137, file: !48, discriminator: 5)
!2154 = !DILocation(line: 481, column: 14, scope: !2155)
!2155 = !DILexicalBlockFile(scope: !2137, file: !48, discriminator: 6)
!2156 = !DILocation(line: 481, column: 11, scope: !2155)
!2157 = !DILocation(line: 481, column: 7, scope: !2155)
!2158 = !DILocation(line: 481, column: 5, scope: !2159)
!2159 = !DILexicalBlockFile(scope: !2160, file: !48, discriminator: 7)
!2160 = distinct !DILexicalBlock(scope: !2137, file: !48, line: 481, column: 2)
!2161 = !DILocation(line: 481, column: 4, scope: !2159)
!2162 = !DILocation(line: 481, column: 8, scope: !2159)
!2163 = !DILocation(line: 481, column: 23, scope: !2164)
!2164 = !DILexicalBlockFile(scope: !2160, file: !48, discriminator: 8)
!2165 = !DILocation(line: 481, column: 27, scope: !2164)
!2166 = !DILocation(line: 481, column: 21, scope: !2164)
!2167 = !DILocation(line: 481, column: 19, scope: !2164)
!2168 = !DILocation(line: 481, column: 2, scope: !2169)
!2169 = !DILexicalBlockFile(scope: !2137, file: !48, discriminator: 9)
!2170 = !DILocation(line: 482, column: 8, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !48, line: 482, column: 7)
!2172 = distinct !DILexicalBlock(scope: !2160, file: !48, line: 481, column: 57)
!2173 = !DILocation(line: 482, column: 14, scope: !2171)
!2174 = !DILocation(line: 482, column: 24, scope: !2171)
!2175 = !DILocation(line: 482, column: 21, scope: !2171)
!2176 = !DILocation(line: 482, column: 32, scope: !2171)
!2177 = !DILocation(line: 483, column: 8, scope: !2171)
!2178 = !DILocation(line: 483, column: 14, scope: !2171)
!2179 = !DILocation(line: 483, column: 23, scope: !2171)
!2180 = !DILocation(line: 483, column: 20, scope: !2171)
!2181 = !DILocation(line: 483, column: 30, scope: !2171)
!2182 = !DILocation(line: 484, column: 8, scope: !2171)
!2183 = !DILocation(line: 484, column: 14, scope: !2171)
!2184 = !DILocation(line: 484, column: 25, scope: !2171)
!2185 = !DILocation(line: 484, column: 22, scope: !2171)
!2186 = !DILocation(line: 484, column: 34, scope: !2171)
!2187 = !DILocation(line: 485, column: 8, scope: !2171)
!2188 = !DILocation(line: 485, column: 14, scope: !2171)
!2189 = !DILocation(line: 485, column: 25, scope: !2171)
!2190 = !DILocation(line: 485, column: 22, scope: !2171)
!2191 = !DILocation(line: 482, column: 7, scope: !2192)
!2192 = !DILexicalBlockFile(scope: !2172, file: !48, discriminator: 1)
!2193 = !DILocation(line: 486, column: 11, scope: !2171)
!2194 = !DILocation(line: 486, column: 4, scope: !2171)
!2195 = !DILocation(line: 487, column: 2, scope: !2172)
!2196 = !DILocation(line: 481, column: 46, scope: !2197)
!2197 = !DILexicalBlockFile(scope: !2160, file: !48, discriminator: 10)
!2198 = !DILocation(line: 481, column: 50, scope: !2197)
!2199 = !DILocation(line: 481, column: 43, scope: !2197)
!2200 = !DILocation(line: 481, column: 2, scope: !2197)
!2201 = distinct !{!2201, !2202}
!2202 = !DILocation(line: 481, column: 2, scope: !2119)
!2203 = !DILocation(line: 489, column: 2, scope: !2119)
!2204 = !DILocation(line: 490, column: 1, scope: !2119)
!2205 = distinct !DISubprogram(name: "alloc_sock", scope: !48, file: !48, line: 493, type: !2206, isLocal: true, isDefinition: true, scopeLine: 494, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !235)
!2206 = !DISubroutineType(types: !2207)
!2207 = !{!287, !293, !91, !52, !307, !198}
!2208 = !DILocalVariable(name: "family", arg: 1, scope: !2205, file: !48, line: 493, type: !293)
!2209 = !DILocation(line: 493, column: 24, scope: !2205)
!2210 = !DILocalVariable(name: "l", arg: 2, scope: !2205, file: !48, line: 493, type: !91)
!2211 = !DILocation(line: 493, column: 37, scope: !2205)
!2212 = !DILocalVariable(name: "proto", arg: 3, scope: !2205, file: !48, line: 493, type: !52)
!2213 = !DILocation(line: 493, column: 44, scope: !2205)
!2214 = !DILocalVariable(name: "ifindex", arg: 4, scope: !2205, file: !48, line: 493, type: !307)
!2215 = !DILocation(line: 493, column: 61, scope: !2205)
!2216 = !DILocalVariable(name: "unicast", arg: 5, scope: !2205, file: !48, line: 493, type: !198)
!2217 = !DILocation(line: 493, column: 74, scope: !2205)
!2218 = !DILocalVariable(name: "new", scope: !2205, file: !48, line: 495, type: !287)
!2219 = !DILocation(line: 495, column: 10, scope: !2205)
!2220 = !DILocation(line: 497, column: 19, scope: !2205)
!2221 = !DILocation(line: 497, column: 8, scope: !2205)
!2222 = !DILocation(line: 497, column: 6, scope: !2205)
!2223 = !DILocation(line: 498, column: 16, scope: !2205)
!2224 = !DILocation(line: 498, column: 2, scope: !2205)
!2225 = !DILocation(line: 498, column: 7, scope: !2205)
!2226 = !DILocation(line: 498, column: 14, scope: !2205)
!2227 = !DILocation(line: 499, column: 15, scope: !2205)
!2228 = !DILocation(line: 499, column: 2, scope: !2205)
!2229 = !DILocation(line: 499, column: 7, scope: !2205)
!2230 = !DILocation(line: 499, column: 13, scope: !2205)
!2231 = !DILocation(line: 500, column: 17, scope: !2205)
!2232 = !DILocation(line: 500, column: 2, scope: !2205)
!2233 = !DILocation(line: 500, column: 7, scope: !2205)
!2234 = !DILocation(line: 500, column: 15, scope: !2205)
!2235 = !DILocation(line: 501, column: 17, scope: !2205)
!2236 = !DILocation(line: 501, column: 2, scope: !2205)
!2237 = !DILocation(line: 501, column: 7, scope: !2205)
!2238 = !DILocation(line: 501, column: 15, scope: !2205)
!2239 = !DILocation(line: 503, column: 11, scope: !2205)
!2240 = !DILocation(line: 503, column: 14, scope: !2205)
!2241 = !DILocation(line: 503, column: 2, scope: !2205)
!2242 = !DILocation(line: 505, column: 9, scope: !2205)
!2243 = !DILocation(line: 505, column: 2, scope: !2205)
!2244 = distinct !DISubprogram(name: "vrrp_init_state", scope: !48, file: !48, line: 168, type: !816, isLocal: true, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !235)
!2245 = !DILocalVariable(name: "l", arg: 1, scope: !2244, file: !48, line: 168, type: !91)
!2246 = !DILocation(line: 168, column: 22, scope: !2244)
!2247 = !DILocalVariable(name: "vrrp", scope: !2244, file: !48, line: 170, type: !337)
!2248 = !DILocation(line: 170, column: 10, scope: !2244)
!2249 = !DILocalVariable(name: "vgroup", scope: !2244, file: !48, line: 171, type: !344)
!2250 = !DILocation(line: 171, column: 17, scope: !2244)
!2251 = !DILocalVariable(name: "e", scope: !2244, file: !48, line: 172, type: !823)
!2252 = !DILocation(line: 172, column: 10, scope: !2244)
!2253 = !DILocalVariable(name: "is_up", scope: !2244, file: !48, line: 173, type: !198)
!2254 = !DILocation(line: 173, column: 6, scope: !2244)
!2255 = !DILocalVariable(name: "new_state", scope: !2244, file: !48, line: 174, type: !52)
!2256 = !DILocation(line: 174, column: 6, scope: !2244)
!2257 = !DILocation(line: 177, column: 2, scope: !2244)
!2258 = !DILocation(line: 180, column: 14, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2244, file: !48, line: 180, column: 2)
!2260 = !DILocation(line: 180, column: 25, scope: !2259)
!2261 = !DILocation(line: 180, column: 13, scope: !2259)
!2262 = !DILocation(line: 180, column: 12, scope: !2259)
!2263 = !DILocation(line: 180, column: 12, scope: !2264)
!2264 = !DILexicalBlockFile(scope: !2259, file: !48, discriminator: 1)
!2265 = !DILocation(line: 180, column: 13, scope: !2266)
!2266 = !DILexicalBlockFile(scope: !2259, file: !48, discriminator: 2)
!2267 = !DILocation(line: 180, column: 24, scope: !2266)
!2268 = !DILocation(line: 180, column: 42, scope: !2266)
!2269 = !DILocation(line: 180, column: 12, scope: !2266)
!2270 = !DILocation(line: 180, column: 12, scope: !2271)
!2271 = !DILexicalBlockFile(scope: !2259, file: !48, discriminator: 3)
!2272 = !DILocation(line: 180, column: 9, scope: !2271)
!2273 = !DILocation(line: 180, column: 7, scope: !2271)
!2274 = !DILocation(line: 180, column: 49, scope: !2275)
!2275 = !DILexicalBlockFile(scope: !2276, file: !48, discriminator: 4)
!2276 = distinct !DILexicalBlock(scope: !2259, file: !48, line: 180, column: 2)
!2277 = !DILocation(line: 180, column: 2, scope: !2275)
!2278 = !DILocation(line: 182, column: 14, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2276, file: !48, line: 180, column: 71)
!2280 = !DILocation(line: 182, column: 18, scope: !2279)
!2281 = !DILocation(line: 182, column: 12, scope: !2279)
!2282 = !DILocation(line: 182, column: 10, scope: !2279)
!2283 = !DILocation(line: 184, column: 7, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2279, file: !48, line: 184, column: 7)
!2285 = !DILocation(line: 184, column: 15, scope: !2284)
!2286 = !DILocation(line: 184, column: 21, scope: !2284)
!2287 = !DILocation(line: 184, column: 7, scope: !2279)
!2288 = !DILocation(line: 185, column: 24, scope: !2284)
!2289 = !DILocation(line: 185, column: 4, scope: !2284)
!2290 = !DILocation(line: 186, column: 2, scope: !2279)
!2291 = !DILocation(line: 180, column: 60, scope: !2292)
!2292 = !DILexicalBlockFile(scope: !2276, file: !48, discriminator: 5)
!2293 = !DILocation(line: 180, column: 64, scope: !2292)
!2294 = !DILocation(line: 180, column: 57, scope: !2292)
!2295 = !DILocation(line: 180, column: 2, scope: !2292)
!2296 = distinct !{!2296, !2297}
!2297 = !DILocation(line: 180, column: 2, scope: !2244)
!2298 = !DILocation(line: 188, column: 14, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2244, file: !48, line: 188, column: 2)
!2300 = !DILocation(line: 188, column: 13, scope: !2299)
!2301 = !DILocation(line: 188, column: 12, scope: !2299)
!2302 = !DILocation(line: 188, column: 12, scope: !2303)
!2303 = !DILexicalBlockFile(scope: !2299, file: !48, discriminator: 1)
!2304 = !DILocation(line: 188, column: 13, scope: !2305)
!2305 = !DILexicalBlockFile(scope: !2299, file: !48, discriminator: 2)
!2306 = !DILocation(line: 188, column: 17, scope: !2305)
!2307 = !DILocation(line: 188, column: 12, scope: !2305)
!2308 = !DILocation(line: 188, column: 12, scope: !2309)
!2309 = !DILexicalBlockFile(scope: !2299, file: !48, discriminator: 3)
!2310 = !DILocation(line: 188, column: 9, scope: !2309)
!2311 = !DILocation(line: 188, column: 7, scope: !2309)
!2312 = !DILocation(line: 188, column: 24, scope: !2313)
!2313 = !DILexicalBlockFile(scope: !2314, file: !48, discriminator: 4)
!2314 = distinct !DILexicalBlock(scope: !2299, file: !48, line: 188, column: 2)
!2315 = !DILocation(line: 188, column: 2, scope: !2313)
!2316 = !DILocation(line: 189, column: 12, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2314, file: !48, line: 188, column: 46)
!2318 = !DILocation(line: 189, column: 16, scope: !2317)
!2319 = !DILocation(line: 189, column: 10, scope: !2317)
!2320 = !DILocation(line: 189, column: 8, scope: !2317)
!2321 = !DILocation(line: 192, column: 7, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2317, file: !48, line: 192, column: 7)
!2323 = !DILocation(line: 192, column: 13, scope: !2322)
!2324 = !DILocation(line: 192, column: 19, scope: !2322)
!2325 = !DILocation(line: 192, column: 7, scope: !2317)
!2326 = !DILocation(line: 193, column: 4, scope: !2322)
!2327 = !DILocation(line: 193, column: 10, scope: !2322)
!2328 = !DILocation(line: 193, column: 20, scope: !2322)
!2329 = !DILocation(line: 195, column: 15, scope: !2317)
!2330 = !DILocation(line: 195, column: 21, scope: !2317)
!2331 = !DILocation(line: 195, column: 28, scope: !2332)
!2332 = !DILexicalBlockFile(scope: !2317, file: !48, discriminator: 1)
!2333 = !DILocation(line: 195, column: 34, scope: !2332)
!2334 = !DILocation(line: 195, column: 40, scope: !2332)
!2335 = !DILocation(line: 195, column: 15, scope: !2332)
!2336 = !DILocation(line: 195, column: 48, scope: !2337)
!2337 = !DILexicalBlockFile(scope: !2317, file: !48, discriminator: 2)
!2338 = !DILocation(line: 195, column: 54, scope: !2337)
!2339 = !DILocation(line: 195, column: 15, scope: !2337)
!2340 = !DILocation(line: 195, column: 15, scope: !2341)
!2341 = !DILexicalBlockFile(scope: !2317, file: !48, discriminator: 3)
!2342 = !DILocation(line: 195, column: 13, scope: !2341)
!2343 = !DILocation(line: 197, column: 14, scope: !2317)
!2344 = !DILocation(line: 197, column: 21, scope: !2317)
!2345 = !DILocation(line: 197, column: 12, scope: !2317)
!2346 = !DILocation(line: 197, column: 9, scope: !2317)
!2347 = !DILocation(line: 199, column: 7, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2317, file: !48, line: 199, column: 7)
!2349 = !DILocation(line: 199, column: 13, scope: !2348)
!2350 = !DILocation(line: 200, column: 7, scope: !2348)
!2351 = !DILocation(line: 200, column: 17, scope: !2348)
!2352 = !DILocation(line: 200, column: 22, scope: !2348)
!2353 = !DILocation(line: 201, column: 8, scope: !2348)
!2354 = !DILocation(line: 201, column: 14, scope: !2348)
!2355 = !DILocation(line: 201, column: 30, scope: !2348)
!2356 = !DILocation(line: 201, column: 35, scope: !2357)
!2357 = !DILexicalBlockFile(scope: !2348, file: !48, discriminator: 1)
!2358 = !DILocation(line: 201, column: 41, scope: !2357)
!2359 = !DILocation(line: 201, column: 46, scope: !2357)
!2360 = !DILocation(line: 201, column: 50, scope: !2361)
!2361 = !DILexicalBlockFile(scope: !2348, file: !48, discriminator: 2)
!2362 = !DILocation(line: 201, column: 56, scope: !2361)
!2363 = !DILocation(line: 201, column: 62, scope: !2361)
!2364 = !DILocation(line: 201, column: 79, scope: !2361)
!2365 = !DILocation(line: 202, column: 8, scope: !2348)
!2366 = !DILocation(line: 202, column: 14, scope: !2348)
!2367 = !DILocation(line: 202, column: 28, scope: !2348)
!2368 = !DILocation(line: 202, column: 35, scope: !2348)
!2369 = !DILocation(line: 203, column: 8, scope: !2348)
!2370 = !DILocation(line: 203, column: 14, scope: !2348)
!2371 = !DILocation(line: 203, column: 29, scope: !2348)
!2372 = !DILocation(line: 204, column: 7, scope: !2348)
!2373 = !DILocation(line: 204, column: 13, scope: !2348)
!2374 = !DILocation(line: 204, column: 23, scope: !2348)
!2375 = !DILocation(line: 199, column: 7, scope: !2332)
!2376 = !DILocation(line: 207, column: 8, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !48, line: 207, column: 8)
!2378 = distinct !DILexicalBlock(scope: !2348, file: !48, line: 204, column: 29)
!2379 = !DILocation(line: 207, column: 21, scope: !2377)
!2380 = !DILocation(line: 207, column: 31, scope: !2377)
!2381 = !DILocation(line: 207, column: 38, scope: !2377)
!2382 = !DILocation(line: 208, column: 8, scope: !2377)
!2383 = !DILocation(line: 208, column: 21, scope: !2377)
!2384 = !DILocation(line: 208, column: 31, scope: !2377)
!2385 = !DILocation(line: 208, column: 39, scope: !2377)
!2386 = !DILocation(line: 208, column: 36, scope: !2377)
!2387 = !DILocation(line: 207, column: 8, scope: !2388)
!2388 = !DILexicalBlockFile(scope: !2378, file: !48, discriminator: 1)
!2389 = !DILocation(line: 210, column: 14, scope: !2377)
!2390 = !DILocation(line: 210, column: 27, scope: !2377)
!2391 = !DILocation(line: 211, column: 13, scope: !2377)
!2392 = !DILocation(line: 211, column: 19, scope: !2377)
!2393 = !DILocation(line: 211, column: 25, scope: !2377)
!2394 = !DILocation(line: 209, column: 5, scope: !2377)
!2395 = !DILocation(line: 215, column: 9, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2378, file: !48, line: 215, column: 8)
!2397 = !DILocation(line: 215, column: 15, scope: !2396)
!2398 = !DILocation(line: 215, column: 8, scope: !2378)
!2399 = !DILocation(line: 222, column: 5, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2396, file: !48, line: 215, column: 30)
!2401 = !DILocation(line: 222, column: 11, scope: !2400)
!2402 = !DILocation(line: 222, column: 17, scope: !2400)
!2403 = !DILocation(line: 223, column: 5, scope: !2400)
!2404 = !DILocation(line: 223, column: 11, scope: !2400)
!2405 = !DILocation(line: 223, column: 25, scope: !2400)
!2406 = !DILocation(line: 224, column: 4, scope: !2400)
!2407 = !DILocation(line: 228, column: 3, scope: !2378)
!2408 = !DILocation(line: 229, column: 8, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !48, line: 229, column: 8)
!2410 = distinct !DILexicalBlock(scope: !2348, file: !48, line: 228, column: 10)
!2411 = !DILocation(line: 229, column: 18, scope: !2409)
!2412 = !DILocation(line: 229, column: 23, scope: !2409)
!2413 = !DILocation(line: 229, column: 26, scope: !2414)
!2414 = !DILexicalBlockFile(scope: !2409, file: !48, discriminator: 1)
!2415 = !DILocation(line: 229, column: 32, scope: !2414)
!2416 = !DILocation(line: 229, column: 42, scope: !2414)
!2417 = !DILocation(line: 229, column: 8, scope: !2414)
!2418 = !DILocation(line: 230, column: 27, scope: !2409)
!2419 = !DILocation(line: 230, column: 33, scope: !2409)
!2420 = !DILocation(line: 230, column: 54, scope: !2409)
!2421 = !DILocation(line: 230, column: 61, scope: !2409)
!2422 = !DILocation(line: 230, column: 69, scope: !2409)
!2423 = !DILocation(line: 230, column: 53, scope: !2409)
!2424 = !DILocation(line: 230, column: 80, scope: !2414)
!2425 = !DILocation(line: 230, column: 87, scope: !2414)
!2426 = !DILocation(line: 230, column: 104, scope: !2414)
!2427 = !DILocation(line: 230, column: 114, scope: !2414)
!2428 = !DILocation(line: 230, column: 122, scope: !2414)
!2429 = !DILocation(line: 230, column: 53, scope: !2414)
!2430 = !DILocation(line: 230, column: 53, scope: !2431)
!2431 = !DILexicalBlockFile(scope: !2409, file: !48, discriminator: 2)
!2432 = !DILocation(line: 230, column: 53, scope: !2433)
!2433 = !DILexicalBlockFile(scope: !2409, file: !48, discriminator: 3)
!2434 = !DILocation(line: 230, column: 50, scope: !2433)
!2435 = !DILocation(line: 230, column: 5, scope: !2433)
!2436 = !DILocation(line: 230, column: 11, scope: !2433)
!2437 = !DILocation(line: 230, column: 25, scope: !2433)
!2438 = !DILocation(line: 232, column: 31, scope: !2409)
!2439 = !DILocation(line: 232, column: 37, scope: !2409)
!2440 = !DILocation(line: 232, column: 29, scope: !2409)
!2441 = !DILocation(line: 232, column: 58, scope: !2409)
!2442 = !DILocation(line: 232, column: 65, scope: !2409)
!2443 = !DILocation(line: 232, column: 73, scope: !2409)
!2444 = !DILocation(line: 232, column: 57, scope: !2409)
!2445 = !DILocation(line: 232, column: 89, scope: !2414)
!2446 = !DILocation(line: 232, column: 96, scope: !2414)
!2447 = !DILocation(line: 232, column: 88, scope: !2414)
!2448 = !DILocation(line: 232, column: 87, scope: !2414)
!2449 = !DILocation(line: 232, column: 120, scope: !2414)
!2450 = !DILocation(line: 232, column: 127, scope: !2414)
!2451 = !DILocation(line: 232, column: 144, scope: !2414)
!2452 = !DILocation(line: 232, column: 116, scope: !2414)
!2453 = !DILocation(line: 232, column: 154, scope: !2414)
!2454 = !DILocation(line: 232, column: 162, scope: !2414)
!2455 = !DILocation(line: 232, column: 57, scope: !2414)
!2456 = !DILocation(line: 232, column: 179, scope: !2431)
!2457 = !DILocation(line: 232, column: 186, scope: !2431)
!2458 = !DILocation(line: 232, column: 178, scope: !2431)
!2459 = !DILocation(line: 232, column: 177, scope: !2431)
!2460 = !DILocation(line: 232, column: 206, scope: !2431)
!2461 = !DILocation(line: 232, column: 216, scope: !2431)
!2462 = !DILocation(line: 232, column: 57, scope: !2431)
!2463 = !DILocation(line: 232, column: 57, scope: !2433)
!2464 = !DILocation(line: 232, column: 54, scope: !2433)
!2465 = !DILocation(line: 232, column: 5, scope: !2433)
!2466 = !DILocation(line: 232, column: 11, scope: !2433)
!2467 = !DILocation(line: 232, column: 25, scope: !2433)
!2468 = !DILocation(line: 240, column: 8, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2410, file: !48, line: 240, column: 8)
!2470 = !DILocation(line: 240, column: 21, scope: !2469)
!2471 = !DILocation(line: 240, column: 31, scope: !2469)
!2472 = !DILocation(line: 240, column: 38, scope: !2469)
!2473 = !DILocation(line: 241, column: 8, scope: !2469)
!2474 = !DILocation(line: 241, column: 21, scope: !2469)
!2475 = !DILocation(line: 241, column: 31, scope: !2469)
!2476 = !DILocation(line: 241, column: 39, scope: !2469)
!2477 = !DILocation(line: 241, column: 36, scope: !2469)
!2478 = !DILocation(line: 240, column: 8, scope: !2479)
!2479 = !DILexicalBlockFile(scope: !2410, file: !48, discriminator: 1)
!2480 = !DILocation(line: 243, column: 14, scope: !2469)
!2481 = !DILocation(line: 243, column: 27, scope: !2469)
!2482 = !DILocation(line: 242, column: 5, scope: !2469)
!2483 = !DILocation(line: 250, column: 27, scope: !2410)
!2484 = !DILocation(line: 250, column: 4, scope: !2410)
!2485 = !DILocation(line: 251, column: 8, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2410, file: !48, line: 251, column: 8)
!2487 = !DILocation(line: 251, column: 14, scope: !2486)
!2488 = !DILocation(line: 251, column: 17, scope: !2489)
!2489 = !DILexicalBlockFile(scope: !2486, file: !48, discriminator: 1)
!2490 = !DILocation(line: 251, column: 27, scope: !2489)
!2491 = !DILocation(line: 251, column: 32, scope: !2489)
!2492 = !DILocation(line: 251, column: 36, scope: !2493)
!2493 = !DILexicalBlockFile(scope: !2486, file: !48, discriminator: 2)
!2494 = !DILocation(line: 251, column: 42, scope: !2493)
!2495 = !DILocation(line: 251, column: 58, scope: !2493)
!2496 = !DILocation(line: 251, column: 63, scope: !2497)
!2497 = !DILexicalBlockFile(scope: !2486, file: !48, discriminator: 3)
!2498 = !DILocation(line: 251, column: 69, scope: !2497)
!2499 = !DILocation(line: 251, column: 74, scope: !2497)
!2500 = !DILocation(line: 251, column: 78, scope: !2501)
!2501 = !DILexicalBlockFile(scope: !2486, file: !48, discriminator: 4)
!2502 = !DILocation(line: 251, column: 84, scope: !2501)
!2503 = !DILocation(line: 251, column: 90, scope: !2501)
!2504 = !DILocation(line: 251, column: 8, scope: !2501)
!2505 = !DILocation(line: 252, column: 9, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2507, file: !48, line: 252, column: 9)
!2507 = distinct !DILexicalBlock(scope: !2486, file: !48, line: 251, column: 108)
!2508 = !DILocation(line: 252, column: 9, scope: !2507)
!2509 = !DILocation(line: 253, column: 6, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2506, file: !48, line: 252, column: 16)
!2511 = !DILocation(line: 253, column: 12, scope: !2510)
!2512 = !DILocation(line: 253, column: 18, scope: !2510)
!2513 = !DILocation(line: 254, column: 64, scope: !2510)
!2514 = !DILocation(line: 254, column: 70, scope: !2510)
!2515 = !DILocation(line: 254, column: 6, scope: !2510)
!2516 = !DILocation(line: 255, column: 5, scope: !2510)
!2517 = !DILocation(line: 257, column: 6, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !2506, file: !48, line: 256, column: 10)
!2519 = !DILocation(line: 257, column: 12, scope: !2518)
!2520 = !DILocation(line: 257, column: 18, scope: !2518)
!2521 = !DILocation(line: 258, column: 63, scope: !2518)
!2522 = !DILocation(line: 258, column: 69, scope: !2518)
!2523 = !DILocation(line: 258, column: 6, scope: !2518)
!2524 = !DILocation(line: 260, column: 28, scope: !2507)
!2525 = !DILocation(line: 260, column: 5, scope: !2507)
!2526 = !DILocation(line: 261, column: 4, scope: !2507)
!2527 = !DILocation(line: 262, column: 4, scope: !2410)
!2528 = !DILocation(line: 262, column: 10, scope: !2410)
!2529 = !DILocation(line: 262, column: 28, scope: !2410)
!2530 = !DILocation(line: 262, column: 28, scope: !2479)
!2531 = !DILocation(line: 267, column: 2, scope: !2317)
!2532 = !DILocation(line: 188, column: 35, scope: !2533)
!2533 = !DILexicalBlockFile(scope: !2314, file: !48, discriminator: 5)
!2534 = !DILocation(line: 188, column: 39, scope: !2533)
!2535 = !DILocation(line: 188, column: 32, scope: !2533)
!2536 = !DILocation(line: 188, column: 2, scope: !2533)
!2537 = distinct !{!2537, !2538}
!2538 = !DILocation(line: 188, column: 2, scope: !2244)
!2539 = !DILocation(line: 268, column: 1, scope: !2244)
!2540 = distinct !DISubprogram(name: "vrrp_init_sands", scope: !48, file: !48, line: 295, type: !816, isLocal: true, isDefinition: true, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !235)
!2541 = !DILocalVariable(name: "l", arg: 1, scope: !2540, file: !48, line: 295, type: !91)
!2542 = !DILocation(line: 295, column: 22, scope: !2540)
!2543 = !DILocalVariable(name: "vrrp", scope: !2540, file: !48, line: 297, type: !337)
!2544 = !DILocation(line: 297, column: 10, scope: !2540)
!2545 = !DILocalVariable(name: "e", scope: !2540, file: !48, line: 298, type: !823)
!2546 = !DILocation(line: 298, column: 10, scope: !2540)
!2547 = !DILocation(line: 300, column: 14, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2540, file: !48, line: 300, column: 2)
!2549 = !DILocation(line: 300, column: 13, scope: !2548)
!2550 = !DILocation(line: 300, column: 12, scope: !2548)
!2551 = !DILocation(line: 300, column: 12, scope: !2552)
!2552 = !DILexicalBlockFile(scope: !2548, file: !48, discriminator: 1)
!2553 = !DILocation(line: 300, column: 13, scope: !2554)
!2554 = !DILexicalBlockFile(scope: !2548, file: !48, discriminator: 2)
!2555 = !DILocation(line: 300, column: 17, scope: !2554)
!2556 = !DILocation(line: 300, column: 12, scope: !2554)
!2557 = !DILocation(line: 300, column: 12, scope: !2558)
!2558 = !DILexicalBlockFile(scope: !2548, file: !48, discriminator: 3)
!2559 = !DILocation(line: 300, column: 9, scope: !2558)
!2560 = !DILocation(line: 300, column: 7, scope: !2558)
!2561 = !DILocation(line: 300, column: 24, scope: !2562)
!2562 = !DILexicalBlockFile(scope: !2563, file: !48, discriminator: 4)
!2563 = distinct !DILexicalBlock(scope: !2548, file: !48, line: 300, column: 2)
!2564 = !DILocation(line: 300, column: 2, scope: !2562)
!2565 = !DILocation(line: 301, column: 12, scope: !2566)
!2566 = distinct !DILexicalBlock(scope: !2563, file: !48, line: 300, column: 46)
!2567 = !DILocation(line: 301, column: 16, scope: !2566)
!2568 = !DILocation(line: 301, column: 10, scope: !2566)
!2569 = !DILocation(line: 301, column: 8, scope: !2566)
!2570 = !DILocation(line: 303, column: 28, scope: !2566)
!2571 = !DILocation(line: 303, column: 3, scope: !2566)
!2572 = !DILocation(line: 304, column: 3, scope: !2566)
!2573 = !DILocation(line: 304, column: 9, scope: !2566)
!2574 = !DILocation(line: 304, column: 23, scope: !2566)
!2575 = !DILocation(line: 305, column: 2, scope: !2566)
!2576 = !DILocation(line: 300, column: 35, scope: !2577)
!2577 = !DILexicalBlockFile(scope: !2563, file: !48, discriminator: 5)
!2578 = !DILocation(line: 300, column: 39, scope: !2577)
!2579 = !DILocation(line: 300, column: 32, scope: !2577)
!2580 = !DILocation(line: 300, column: 2, scope: !2577)
!2581 = distinct !{!2581, !2582}
!2582 = !DILocation(line: 300, column: 2, scope: !2540)
!2583 = !DILocation(line: 306, column: 1, scope: !2540)
!2584 = distinct !DISubprogram(name: "vrrp_init_script", scope: !48, file: !48, line: 309, type: !816, isLocal: true, isDefinition: true, scopeLine: 310, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !235)
!2585 = !DILocalVariable(name: "l", arg: 1, scope: !2584, file: !48, line: 309, type: !91)
!2586 = !DILocation(line: 309, column: 23, scope: !2584)
!2587 = !DILocalVariable(name: "vscript", scope: !2584, file: !48, line: 311, type: !2588)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64, align: 64)
!2589 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_script_t", file: !2590, line: 74, baseType: !2591)
!2590 = !DIFile(filename: "./../include/vrrp_track.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_script", file: !2590, line: 60, size: 704, align: 64, elements: !2592)
!2592 = !{!2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2605, !2607}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "sname", scope: !2591, file: !2590, line: 61, baseType: !123, size: 64, align: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "script", scope: !2591, file: !2590, line: 62, baseType: !371, size: 192, align: 64, offset: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2591, file: !2590, line: 63, baseType: !58, size: 64, align: 64, offset: 256)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2591, file: !2590, line: 64, baseType: !58, size: 64, align: 64, offset: 320)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2591, file: !2590, line: 65, baseType: !52, size: 32, align: 32, offset: 384)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !2591, file: !2590, line: 66, baseType: !52, size: 32, align: 32, offset: 416)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "rise", scope: !2591, file: !2590, line: 67, baseType: !52, size: 32, align: 32, offset: 448)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "fall", scope: !2591, file: !2590, line: 68, baseType: !52, size: 32, align: 32, offset: 480)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "tracking_vrrp", scope: !2591, file: !2590, line: 69, baseType: !91, size: 64, align: 64, offset: 512)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2591, file: !2590, line: 70, baseType: !52, size: 32, align: 32, offset: 576)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2591, file: !2590, line: 71, baseType: !2604, size: 32, align: 32, offset: 608)
!2604 = !DIDerivedType(tag: DW_TAG_typedef, name: "script_state_t", file: !275, line: 50, baseType: !274)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "init_state", scope: !2591, file: !2590, line: 72, baseType: !2606, size: 32, align: 32, offset: 640)
!2606 = !DIDerivedType(tag: DW_TAG_typedef, name: "script_init_state_t", file: !275, line: 56, baseType: !281)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "insecure", scope: !2591, file: !2590, line: 73, baseType: !198, size: 8, align: 8, offset: 672)
!2608 = !DILocation(line: 311, column: 17, scope: !2584)
!2609 = !DILocalVariable(name: "e", scope: !2584, file: !48, line: 312, type: !823)
!2610 = !DILocation(line: 312, column: 10, scope: !2584)
!2611 = !DILocation(line: 314, column: 14, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2584, file: !48, line: 314, column: 2)
!2613 = !DILocation(line: 314, column: 13, scope: !2612)
!2614 = !DILocation(line: 314, column: 12, scope: !2612)
!2615 = !DILocation(line: 314, column: 12, scope: !2616)
!2616 = !DILexicalBlockFile(scope: !2612, file: !48, discriminator: 1)
!2617 = !DILocation(line: 314, column: 13, scope: !2618)
!2618 = !DILexicalBlockFile(scope: !2612, file: !48, discriminator: 2)
!2619 = !DILocation(line: 314, column: 17, scope: !2618)
!2620 = !DILocation(line: 314, column: 12, scope: !2618)
!2621 = !DILocation(line: 314, column: 12, scope: !2622)
!2622 = !DILexicalBlockFile(scope: !2612, file: !48, discriminator: 3)
!2623 = !DILocation(line: 314, column: 9, scope: !2622)
!2624 = !DILocation(line: 314, column: 7, scope: !2622)
!2625 = !DILocation(line: 314, column: 24, scope: !2626)
!2626 = !DILexicalBlockFile(scope: !2627, file: !48, discriminator: 4)
!2627 = distinct !DILexicalBlock(scope: !2612, file: !48, line: 314, column: 2)
!2628 = !DILocation(line: 314, column: 2, scope: !2626)
!2629 = !DILocation(line: 315, column: 15, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2627, file: !48, line: 314, column: 46)
!2631 = !DILocation(line: 315, column: 19, scope: !2630)
!2632 = !DILocation(line: 315, column: 13, scope: !2630)
!2633 = !DILocation(line: 315, column: 11, scope: !2630)
!2634 = !DILocation(line: 316, column: 7, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2630, file: !48, line: 316, column: 7)
!2636 = !DILocation(line: 316, column: 16, scope: !2635)
!2637 = !DILocation(line: 316, column: 27, scope: !2635)
!2638 = !DILocation(line: 316, column: 7, scope: !2630)
!2639 = !DILocation(line: 317, column: 22, scope: !2635)
!2640 = !DILocation(line: 317, column: 31, scope: !2635)
!2641 = !DILocation(line: 317, column: 36, scope: !2635)
!2642 = !DILocation(line: 317, column: 4, scope: !2635)
!2643 = !DILocation(line: 317, column: 13, scope: !2635)
!2644 = !DILocation(line: 317, column: 20, scope: !2635)
!2645 = !DILocation(line: 318, column: 12, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2635, file: !48, line: 318, column: 12)
!2647 = !DILocation(line: 318, column: 21, scope: !2646)
!2648 = !DILocation(line: 318, column: 32, scope: !2646)
!2649 = !DILocation(line: 318, column: 12, scope: !2635)
!2650 = !DILocation(line: 319, column: 4, scope: !2646)
!2651 = !DILocation(line: 319, column: 13, scope: !2646)
!2652 = !DILocation(line: 319, column: 20, scope: !2646)
!2653 = !DILocation(line: 321, column: 20, scope: !2630)
!2654 = !DILocation(line: 321, column: 48, scope: !2630)
!2655 = !DILocation(line: 321, column: 62, scope: !2630)
!2656 = !DILocation(line: 321, column: 71, scope: !2630)
!2657 = !DILocation(line: 321, column: 57, scope: !2630)
!2658 = !DILocation(line: 321, column: 3, scope: !2630)
!2659 = !DILocation(line: 322, column: 2, scope: !2630)
!2660 = !DILocation(line: 314, column: 35, scope: !2661)
!2661 = !DILexicalBlockFile(scope: !2627, file: !48, discriminator: 5)
!2662 = !DILocation(line: 314, column: 39, scope: !2661)
!2663 = !DILocation(line: 314, column: 32, scope: !2661)
!2664 = !DILocation(line: 314, column: 2, scope: !2661)
!2665 = distinct !{!2665, !2666}
!2666 = !DILocation(line: 314, column: 2, scope: !2584)
!2667 = !DILocation(line: 324, column: 8, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2584, file: !48, line: 324, column: 6)
!2669 = !DILocation(line: 324, column: 12, scope: !2668)
!2670 = !DILocation(line: 324, column: 6, scope: !2668)
!2671 = !DILocation(line: 324, column: 6, scope: !2584)
!2672 = !DILocation(line: 325, column: 67, scope: !2668)
!2673 = !DILocation(line: 325, column: 71, scope: !2668)
!2674 = !DILocation(line: 325, column: 65, scope: !2668)
!2675 = !DILocation(line: 325, column: 3, scope: !2668)
!2676 = !DILocation(line: 327, column: 1, scope: !2584)
!2677 = distinct !DISubprogram(name: "vrrp_script_thread", scope: !48, file: !48, line: 980, type: !50, isLocal: true, isDefinition: true, scopeLine: 981, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !235)
!2678 = !DILocalVariable(name: "thread", arg: 1, scope: !2677, file: !48, line: 980, type: !53)
!2679 = !DILocation(line: 980, column: 31, scope: !2677)
!2680 = !DILocalVariable(name: "vscript", scope: !2677, file: !48, line: 982, type: !2588)
!2681 = !DILocation(line: 982, column: 17, scope: !2677)
!2682 = !DILocation(line: 982, column: 29, scope: !2677)
!2683 = !DILocation(line: 982, column: 38, scope: !2677)
!2684 = !DILocation(line: 982, column: 27, scope: !2677)
!2685 = !DILocalVariable(name: "ret", scope: !2677, file: !48, line: 983, type: !52)
!2686 = !DILocation(line: 983, column: 6, scope: !2677)
!2687 = !DILocation(line: 986, column: 19, scope: !2677)
!2688 = !DILocation(line: 986, column: 27, scope: !2677)
!2689 = !DILocation(line: 986, column: 55, scope: !2677)
!2690 = !DILocation(line: 987, column: 5, scope: !2677)
!2691 = !DILocation(line: 987, column: 14, scope: !2677)
!2692 = !DILocation(line: 986, column: 2, scope: !2677)
!2693 = !DILocation(line: 989, column: 6, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2677, file: !48, line: 989, column: 6)
!2695 = !DILocation(line: 989, column: 15, scope: !2694)
!2696 = !DILocation(line: 989, column: 21, scope: !2694)
!2697 = !DILocation(line: 989, column: 6, scope: !2677)
!2698 = !DILocation(line: 992, column: 8, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2694, file: !48, line: 989, column: 43)
!2700 = !DILocation(line: 992, column: 17, scope: !2699)
!2701 = !DILocation(line: 992, column: 24, scope: !2699)
!2702 = !DILocation(line: 992, column: 33, scope: !2699)
!2703 = !DILocation(line: 992, column: 39, scope: !2699)
!2704 = !DILocation(line: 991, column: 3, scope: !2699)
!2705 = !DILocation(line: 994, column: 3, scope: !2699)
!2706 = !DILocation(line: 998, column: 27, scope: !2677)
!2707 = !DILocation(line: 998, column: 35, scope: !2677)
!2708 = !DILocation(line: 999, column: 7, scope: !2677)
!2709 = !DILocation(line: 999, column: 17, scope: !2677)
!2710 = !DILocation(line: 999, column: 26, scope: !2677)
!2711 = !DILocation(line: 999, column: 16, scope: !2677)
!2712 = !DILocation(line: 999, column: 37, scope: !2713)
!2713 = !DILexicalBlockFile(scope: !2677, file: !48, discriminator: 1)
!2714 = !DILocation(line: 999, column: 46, scope: !2713)
!2715 = !DILocation(line: 999, column: 16, scope: !2713)
!2716 = !DILocation(line: 999, column: 56, scope: !2717)
!2717 = !DILexicalBlockFile(scope: !2677, file: !48, discriminator: 2)
!2718 = !DILocation(line: 999, column: 65, scope: !2717)
!2719 = !DILocation(line: 999, column: 16, scope: !2717)
!2720 = !DILocation(line: 999, column: 16, scope: !2721)
!2721 = !DILexicalBlockFile(scope: !2677, file: !48, discriminator: 3)
!2722 = !DILocation(line: 1000, column: 8, scope: !2677)
!2723 = !DILocation(line: 1000, column: 17, scope: !2677)
!2724 = !DILocation(line: 998, column: 8, scope: !2713)
!2725 = !DILocation(line: 998, column: 6, scope: !2713)
!2726 = !DILocation(line: 1001, column: 7, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2677, file: !48, line: 1001, column: 6)
!2728 = !DILocation(line: 1001, column: 6, scope: !2677)
!2729 = !DILocation(line: 1002, column: 3, scope: !2727)
!2730 = !DILocation(line: 1002, column: 12, scope: !2727)
!2731 = !DILocation(line: 1002, column: 18, scope: !2727)
!2732 = !DILocation(line: 1004, column: 9, scope: !2677)
!2733 = !DILocation(line: 1004, column: 2, scope: !2677)
!2734 = !DILocation(line: 1005, column: 1, scope: !2677)
!2735 = distinct !DISubprogram(name: "vrrp_script_child_thread", scope: !48, file: !48, line: 1008, type: !50, isLocal: true, isDefinition: true, scopeLine: 1009, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !235)
!2736 = !DILocalVariable(name: "thread", arg: 1, scope: !2735, file: !48, line: 1008, type: !53)
!2737 = !DILocation(line: 1008, column: 37, scope: !2735)
!2738 = !DILocalVariable(name: "wait_status", scope: !2735, file: !48, line: 1010, type: !52)
!2739 = !DILocation(line: 1010, column: 6, scope: !2735)
!2740 = !DILocalVariable(name: "pid", scope: !2735, file: !48, line: 1011, type: !224)
!2741 = !DILocation(line: 1011, column: 8, scope: !2735)
!2742 = !DILocalVariable(name: "vscript", scope: !2735, file: !48, line: 1012, type: !2588)
!2743 = !DILocation(line: 1012, column: 17, scope: !2735)
!2744 = !DILocation(line: 1012, column: 29, scope: !2735)
!2745 = !DILocation(line: 1012, column: 38, scope: !2735)
!2746 = !DILocation(line: 1012, column: 27, scope: !2735)
!2747 = !DILocalVariable(name: "sig_num", scope: !2735, file: !48, line: 1013, type: !52)
!2748 = !DILocation(line: 1013, column: 6, scope: !2735)
!2749 = !DILocalVariable(name: "timeout", scope: !2735, file: !48, line: 1014, type: !106)
!2750 = !DILocation(line: 1014, column: 11, scope: !2735)
!2751 = !DILocalVariable(name: "script_exit_type", scope: !2735, file: !48, line: 1015, type: !123)
!2752 = !DILocation(line: 1015, column: 8, scope: !2735)
!2753 = !DILocalVariable(name: "script_success", scope: !2735, file: !48, line: 1016, type: !198)
!2754 = !DILocation(line: 1016, column: 6, scope: !2735)
!2755 = !DILocalVariable(name: "reason", scope: !2735, file: !48, line: 1017, type: !123)
!2756 = !DILocation(line: 1017, column: 8, scope: !2735)
!2757 = !DILocalVariable(name: "reason_code", scope: !2735, file: !48, line: 1018, type: !52)
!2758 = !DILocation(line: 1018, column: 6, scope: !2735)
!2759 = !DILocation(line: 1020, column: 6, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2735, file: !48, line: 1020, column: 6)
!2761 = !DILocation(line: 1020, column: 14, scope: !2760)
!2762 = !DILocation(line: 1020, column: 19, scope: !2760)
!2763 = !DILocation(line: 1020, column: 6, scope: !2735)
!2764 = !DILocation(line: 1021, column: 11, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2760, file: !48, line: 1020, column: 44)
!2766 = !DILocation(line: 1021, column: 20, scope: !2765)
!2767 = !DILocation(line: 1021, column: 22, scope: !2765)
!2768 = !DILocation(line: 1021, column: 24, scope: !2765)
!2769 = !DILocation(line: 1021, column: 7, scope: !2765)
!2770 = !DILocation(line: 1023, column: 7, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2765, file: !48, line: 1023, column: 7)
!2772 = !DILocation(line: 1023, column: 16, scope: !2771)
!2773 = !DILocation(line: 1023, column: 22, scope: !2771)
!2774 = !DILocation(line: 1023, column: 7, scope: !2765)
!2775 = !DILocation(line: 1024, column: 4, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2771, file: !48, line: 1023, column: 47)
!2777 = !DILocation(line: 1024, column: 13, scope: !2776)
!2778 = !DILocation(line: 1024, column: 19, scope: !2776)
!2779 = !DILocation(line: 1025, column: 12, scope: !2776)
!2780 = !DILocation(line: 1026, column: 12, scope: !2776)
!2781 = !DILocation(line: 1027, column: 3, scope: !2776)
!2782 = !DILocation(line: 1027, column: 14, scope: !2783)
!2783 = !DILexicalBlockFile(scope: !2784, file: !48, discriminator: 1)
!2784 = distinct !DILexicalBlock(scope: !2771, file: !48, line: 1027, column: 14)
!2785 = !DILocation(line: 1027, column: 23, scope: !2783)
!2786 = !DILocation(line: 1027, column: 29, scope: !2783)
!2787 = !DILocation(line: 1028, column: 4, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2784, file: !48, line: 1027, column: 69)
!2789 = !DILocation(line: 1028, column: 13, scope: !2788)
!2790 = !DILocation(line: 1028, column: 19, scope: !2788)
!2791 = !DILocation(line: 1029, column: 12, scope: !2788)
!2792 = !DILocation(line: 1030, column: 12, scope: !2788)
!2793 = !DILocation(line: 1031, column: 3, scope: !2788)
!2794 = !DILocation(line: 1031, column: 14, scope: !2795)
!2795 = !DILexicalBlockFile(scope: !2796, file: !48, discriminator: 1)
!2796 = distinct !DILexicalBlock(scope: !2784, file: !48, line: 1031, column: 14)
!2797 = !DILocation(line: 1031, column: 23, scope: !2795)
!2798 = !DILocation(line: 1031, column: 29, scope: !2795)
!2799 = !DILocation(line: 1032, column: 74, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2796, file: !48, line: 1031, column: 66)
!2801 = !DILocation(line: 1032, column: 4, scope: !2800)
!2802 = !DILocation(line: 1033, column: 12, scope: !2800)
!2803 = !DILocation(line: 1034, column: 12, scope: !2800)
!2804 = !DILocation(line: 1035, column: 3, scope: !2800)
!2805 = !DILocation(line: 1038, column: 7, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2765, file: !48, line: 1038, column: 7)
!2807 = !DILocation(line: 1038, column: 7, scope: !2765)
!2808 = !DILocation(line: 1041, column: 15, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2810, file: !48, line: 1041, column: 8)
!2810 = distinct !DILexicalBlock(scope: !2806, file: !48, line: 1038, column: 16)
!2811 = !DILocation(line: 1041, column: 14, scope: !2809)
!2812 = !DILocation(line: 1041, column: 20, scope: !2809)
!2813 = !DILocation(line: 1041, column: 9, scope: !2809)
!2814 = !DILocation(line: 1041, column: 8, scope: !2810)
!2815 = !DILocation(line: 1042, column: 95, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2809, file: !48, line: 1041, column: 30)
!2817 = !DILocation(line: 1042, column: 104, scope: !2816)
!2818 = !DILocation(line: 1042, column: 113, scope: !2816)
!2819 = !DILocation(line: 1042, column: 120, scope: !2816)
!2820 = !DILocation(line: 1042, column: 129, scope: !2816)
!2821 = !DILocation(line: 1042, column: 134, scope: !2816)
!2822 = !DILocation(line: 1042, column: 143, scope: !2816)
!2823 = !DILocation(line: 1042, column: 152, scope: !2816)
!2824 = !DILocation(line: 1042, column: 151, scope: !2816)
!2825 = !DILocation(line: 1042, column: 5, scope: !2826)
!2826 = !DILexicalBlockFile(scope: !2816, file: !48, discriminator: 1)
!2827 = !DILocation(line: 1043, column: 13, scope: !2816)
!2828 = !DILocation(line: 1044, column: 4, scope: !2816)
!2829 = !DILocation(line: 1045, column: 3, scope: !2810)
!2830 = !DILocation(line: 1045, column: 14, scope: !2831)
!2831 = !DILexicalBlockFile(scope: !2832, file: !48, discriminator: 1)
!2832 = distinct !DILexicalBlock(scope: !2806, file: !48, line: 1045, column: 14)
!2833 = !DILocation(line: 1045, column: 23, scope: !2831)
!2834 = !DILocation(line: 1045, column: 29, scope: !2831)
!2835 = !DILocation(line: 1046, column: 85, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2832, file: !48, line: 1045, column: 51)
!2837 = !DILocation(line: 1046, column: 90, scope: !2836)
!2838 = !DILocation(line: 1046, column: 99, scope: !2836)
!2839 = !DILocation(line: 1046, column: 4, scope: !2836)
!2840 = !DILocation(line: 1047, column: 12, scope: !2836)
!2841 = !DILocation(line: 1048, column: 3, scope: !2836)
!2842 = !DILocation(line: 1050, column: 7, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2765, file: !48, line: 1050, column: 7)
!2844 = !DILocation(line: 1050, column: 7, scope: !2765)
!2845 = !DILocation(line: 1051, column: 21, scope: !2843)
!2846 = !DILocation(line: 1051, column: 29, scope: !2843)
!2847 = !DILocation(line: 1051, column: 63, scope: !2843)
!2848 = !DILocation(line: 1051, column: 72, scope: !2843)
!2849 = !DILocation(line: 1051, column: 77, scope: !2843)
!2850 = !DILocation(line: 1051, column: 85, scope: !2843)
!2851 = !DILocation(line: 1051, column: 4, scope: !2843)
!2852 = !DILocation(line: 1053, column: 3, scope: !2765)
!2853 = !DILocation(line: 1056, column: 18, scope: !2735)
!2854 = !DILocation(line: 1056, column: 27, scope: !2735)
!2855 = !DILocation(line: 1056, column: 29, scope: !2735)
!2856 = !DILocation(line: 1056, column: 31, scope: !2735)
!2857 = !DILocation(line: 1056, column: 14, scope: !2735)
!2858 = !DILocation(line: 1058, column: 25, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2735, file: !48, line: 1058, column: 5)
!2860 = !DILocation(line: 1058, column: 5, scope: !2859)
!2861 = !DILocation(line: 1058, column: 10, scope: !2859)
!2862 = !DILocation(line: 1058, column: 17, scope: !2859)
!2863 = !DILocation(line: 1058, column: 5, scope: !2735)
!2864 = !DILocalVariable(name: "status", scope: !2865, file: !48, line: 1059, type: !52)
!2865 = distinct !DILexicalBlock(scope: !2859, file: !48, line: 1058, column: 29)
!2866 = !DILocation(line: 1059, column: 7, scope: !2865)
!2867 = !DILocation(line: 1059, column: 35, scope: !2865)
!2868 = !DILocation(line: 1059, column: 15, scope: !2865)
!2869 = !DILocation(line: 1059, column: 20, scope: !2865)
!2870 = !DILocation(line: 1059, column: 27, scope: !2865)
!2871 = !DILocation(line: 1059, column: 37, scope: !2865)
!2872 = !DILocation(line: 1062, column: 7, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2865, file: !48, line: 1062, column: 7)
!2874 = !DILocation(line: 1062, column: 17, scope: !2873)
!2875 = !DILocation(line: 1062, column: 26, scope: !2873)
!2876 = !DILocation(line: 1062, column: 14, scope: !2873)
!2877 = !DILocation(line: 1062, column: 7, scope: !2865)
!2878 = !DILocation(line: 1063, column: 57, scope: !2873)
!2879 = !DILocation(line: 1063, column: 66, scope: !2873)
!2880 = !DILocation(line: 1063, column: 73, scope: !2873)
!2881 = !DILocation(line: 1063, column: 4, scope: !2873)
!2882 = !DILocation(line: 1065, column: 7, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2865, file: !48, line: 1065, column: 7)
!2884 = !DILocation(line: 1065, column: 14, scope: !2883)
!2885 = !DILocation(line: 1065, column: 7, scope: !2865)
!2886 = !DILocation(line: 1067, column: 21, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2883, file: !48, line: 1065, column: 20)
!2888 = !DILocation(line: 1068, column: 19, scope: !2887)
!2889 = !DILocation(line: 1069, column: 3, scope: !2887)
!2890 = !DILocation(line: 1071, column: 21, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2883, file: !48, line: 1069, column: 10)
!2892 = !DILocation(line: 1072, column: 19, scope: !2891)
!2893 = !DILocation(line: 1073, column: 11, scope: !2891)
!2894 = !DILocation(line: 1074, column: 18, scope: !2891)
!2895 = !DILocation(line: 1074, column: 16, scope: !2891)
!2896 = !DILocation(line: 1077, column: 26, scope: !2865)
!2897 = !DILocation(line: 1077, column: 3, scope: !2865)
!2898 = !DILocation(line: 1077, column: 12, scope: !2865)
!2899 = !DILocation(line: 1077, column: 24, scope: !2865)
!2900 = !DILocation(line: 1078, column: 2, scope: !2865)
!2901 = !DILocation(line: 1079, column: 30, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2859, file: !48, line: 1079, column: 10)
!2903 = !DILocation(line: 1079, column: 10, scope: !2902)
!2904 = !DILocation(line: 1079, column: 15, scope: !2902)
!2905 = !DILocation(line: 1079, column: 22, scope: !2902)
!2906 = !DILocation(line: 1079, column: 12, scope: !2902)
!2907 = !DILocation(line: 1079, column: 35, scope: !2902)
!2908 = !DILocation(line: 1079, column: 41, scope: !2902)
!2909 = !DILocation(line: 1079, column: 10, scope: !2859)
!2910 = !DILocation(line: 1080, column: 7, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2912, file: !48, line: 1080, column: 7)
!2912 = distinct !DILexicalBlock(scope: !2902, file: !48, line: 1079, column: 36)
!2913 = !DILocation(line: 1080, column: 16, scope: !2911)
!2914 = !DILocation(line: 1080, column: 22, scope: !2911)
!2915 = !DILocation(line: 1080, column: 61, scope: !2911)
!2916 = !DILocation(line: 1080, column: 83, scope: !2917)
!2917 = !DILexicalBlockFile(scope: !2911, file: !48, discriminator: 1)
!2918 = !DILocation(line: 1080, column: 63, scope: !2917)
!2919 = !DILocation(line: 1080, column: 68, scope: !2917)
!2920 = !DILocation(line: 1080, column: 75, scope: !2917)
!2921 = !DILocation(line: 1080, column: 85, scope: !2917)
!2922 = !DILocation(line: 1080, column: 7, scope: !2917)
!2923 = !DILocation(line: 1084, column: 12, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2911, file: !48, line: 1080, column: 97)
!2925 = !DILocation(line: 1084, column: 21, scope: !2924)
!2926 = !DILocation(line: 1084, column: 23, scope: !2924)
!2927 = !DILocation(line: 1084, column: 25, scope: !2924)
!2928 = !DILocation(line: 1084, column: 8, scope: !2924)
!2929 = !DILocation(line: 1085, column: 10, scope: !2924)
!2930 = !DILocation(line: 1085, column: 9, scope: !2924)
!2931 = !DILocation(line: 1085, column: 4, scope: !2924)
!2932 = !DILocation(line: 1086, column: 3, scope: !2924)
!2933 = !DILocation(line: 1089, column: 8, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2912, file: !48, line: 1089, column: 7)
!2935 = !DILocation(line: 1089, column: 17, scope: !2934)
!2936 = !DILocation(line: 1089, column: 23, scope: !2934)
!2937 = !DILocation(line: 1089, column: 62, scope: !2934)
!2938 = !DILocation(line: 1089, column: 84, scope: !2939)
!2939 = !DILexicalBlockFile(scope: !2934, file: !48, discriminator: 1)
!2940 = !DILocation(line: 1089, column: 64, scope: !2939)
!2941 = !DILocation(line: 1089, column: 69, scope: !2939)
!2942 = !DILocation(line: 1089, column: 76, scope: !2939)
!2943 = !DILocation(line: 1089, column: 86, scope: !2939)
!2944 = !DILocation(line: 1089, column: 98, scope: !2939)
!2945 = !DILocation(line: 1090, column: 8, scope: !2934)
!2946 = !DILocation(line: 1090, column: 17, scope: !2934)
!2947 = !DILocation(line: 1090, column: 23, scope: !2934)
!2948 = !DILocation(line: 1090, column: 59, scope: !2934)
!2949 = !DILocation(line: 1090, column: 82, scope: !2939)
!2950 = !DILocation(line: 1090, column: 62, scope: !2939)
!2951 = !DILocation(line: 1090, column: 67, scope: !2939)
!2952 = !DILocation(line: 1090, column: 74, scope: !2939)
!2953 = !DILocation(line: 1090, column: 84, scope: !2939)
!2954 = !DILocation(line: 1090, column: 95, scope: !2939)
!2955 = !DILocation(line: 1090, column: 118, scope: !2956)
!2956 = !DILexicalBlockFile(scope: !2934, file: !48, discriminator: 2)
!2957 = !DILocation(line: 1090, column: 98, scope: !2956)
!2958 = !DILocation(line: 1090, column: 103, scope: !2956)
!2959 = !DILocation(line: 1090, column: 110, scope: !2956)
!2960 = !DILocation(line: 1090, column: 120, scope: !2956)
!2961 = !DILocation(line: 1089, column: 7, scope: !2962)
!2962 = !DILexicalBlockFile(scope: !2912, file: !48, discriminator: 2)
!2963 = !DILocation(line: 1091, column: 21, scope: !2934)
!2964 = !DILocation(line: 1091, column: 4, scope: !2934)
!2965 = !DILocation(line: 1093, column: 21, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2934, file: !48, line: 1092, column: 8)
!2967 = !DILocation(line: 1094, column: 11, scope: !2966)
!2968 = !DILocation(line: 1095, column: 37, scope: !2966)
!2969 = !DILocation(line: 1095, column: 17, scope: !2966)
!2970 = !DILocation(line: 1095, column: 22, scope: !2966)
!2971 = !DILocation(line: 1095, column: 29, scope: !2966)
!2972 = !DILocation(line: 1095, column: 16, scope: !2966)
!2973 = !DILocation(line: 1097, column: 18, scope: !2912)
!2974 = !DILocation(line: 1098, column: 2, scope: !2912)
!2975 = !DILocation(line: 1100, column: 6, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2735, file: !48, line: 1100, column: 6)
!2977 = !DILocation(line: 1100, column: 6, scope: !2735)
!2978 = !DILocation(line: 1101, column: 7, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2980, file: !48, line: 1101, column: 7)
!2980 = distinct !DILexicalBlock(scope: !2976, file: !48, line: 1100, column: 24)
!2981 = !DILocation(line: 1101, column: 7, scope: !2980)
!2982 = !DILocation(line: 1102, column: 8, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2984, file: !48, line: 1102, column: 8)
!2984 = distinct !DILexicalBlock(scope: !2979, file: !48, line: 1101, column: 23)
!2985 = !DILocation(line: 1102, column: 17, scope: !2983)
!2986 = !DILocation(line: 1102, column: 26, scope: !2983)
!2987 = !DILocation(line: 1102, column: 35, scope: !2983)
!2988 = !DILocation(line: 1102, column: 40, scope: !2983)
!2989 = !DILocation(line: 1102, column: 24, scope: !2983)
!2990 = !DILocation(line: 1102, column: 8, scope: !2984)
!2991 = !DILocation(line: 1103, column: 5, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2983, file: !48, line: 1102, column: 45)
!2993 = !DILocation(line: 1103, column: 14, scope: !2992)
!2994 = !DILocation(line: 1103, column: 20, scope: !2992)
!2995 = !DILocation(line: 1104, column: 4, scope: !2992)
!2996 = !DILocation(line: 1104, column: 15, scope: !2997)
!2997 = !DILexicalBlockFile(scope: !2998, file: !48, discriminator: 1)
!2998 = distinct !DILexicalBlock(scope: !2983, file: !48, line: 1104, column: 15)
!2999 = !DILocation(line: 1104, column: 24, scope: !2997)
!3000 = !DILocation(line: 1104, column: 34, scope: !2997)
!3001 = !DILocation(line: 1104, column: 43, scope: !2997)
!3002 = !DILocation(line: 1104, column: 50, scope: !2997)
!3003 = !DILocation(line: 1104, column: 59, scope: !2997)
!3004 = !DILocation(line: 1104, column: 48, scope: !2997)
!3005 = !DILocation(line: 1104, column: 64, scope: !2997)
!3006 = !DILocation(line: 1104, column: 31, scope: !2997)
!3007 = !DILocation(line: 1105, column: 9, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !3009, file: !48, line: 1105, column: 9)
!3009 = distinct !DILexicalBlock(scope: !2998, file: !48, line: 1104, column: 69)
!3010 = !DILocation(line: 1105, column: 18, scope: !3008)
!3011 = !DILocation(line: 1105, column: 27, scope: !3008)
!3012 = !DILocation(line: 1105, column: 36, scope: !3008)
!3013 = !DILocation(line: 1105, column: 25, scope: !3008)
!3014 = !DILocation(line: 1105, column: 9, scope: !3009)
!3015 = !DILocation(line: 1106, column: 49, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !3008, file: !48, line: 1105, column: 42)
!3017 = !DILocation(line: 1106, column: 58, scope: !3016)
!3018 = !DILocation(line: 1106, column: 65, scope: !3016)
!3019 = !DILocation(line: 1106, column: 6, scope: !3016)
!3020 = !DILocation(line: 1107, column: 31, scope: !3016)
!3021 = !DILocation(line: 1107, column: 6, scope: !3016)
!3022 = !DILocation(line: 1108, column: 5, scope: !3016)
!3023 = !DILocation(line: 1109, column: 23, scope: !3009)
!3024 = !DILocation(line: 1109, column: 32, scope: !3009)
!3025 = !DILocation(line: 1109, column: 39, scope: !3009)
!3026 = !DILocation(line: 1109, column: 48, scope: !3009)
!3027 = !DILocation(line: 1109, column: 37, scope: !3009)
!3028 = !DILocation(line: 1109, column: 53, scope: !3009)
!3029 = !DILocation(line: 1109, column: 5, scope: !3009)
!3030 = !DILocation(line: 1109, column: 14, scope: !3009)
!3031 = !DILocation(line: 1109, column: 21, scope: !3009)
!3032 = !DILocation(line: 1110, column: 4, scope: !3009)
!3033 = !DILocation(line: 1111, column: 3, scope: !2984)
!3034 = !DILocation(line: 1112, column: 8, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3036, file: !48, line: 1112, column: 8)
!3036 = distinct !DILexicalBlock(scope: !2979, file: !48, line: 1111, column: 10)
!3037 = !DILocation(line: 1112, column: 17, scope: !3035)
!3038 = !DILocation(line: 1112, column: 26, scope: !3035)
!3039 = !DILocation(line: 1112, column: 35, scope: !3035)
!3040 = !DILocation(line: 1112, column: 24, scope: !3035)
!3041 = !DILocation(line: 1112, column: 8, scope: !3036)
!3042 = !DILocation(line: 1113, column: 5, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !3035, file: !48, line: 1112, column: 41)
!3044 = !DILocation(line: 1113, column: 14, scope: !3043)
!3045 = !DILocation(line: 1113, column: 20, scope: !3043)
!3046 = !DILocation(line: 1114, column: 4, scope: !3043)
!3047 = !DILocation(line: 1115, column: 9, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3049, file: !48, line: 1115, column: 9)
!3049 = distinct !DILexicalBlock(scope: !3035, file: !48, line: 1114, column: 11)
!3050 = !DILocation(line: 1115, column: 18, scope: !3048)
!3051 = !DILocation(line: 1115, column: 28, scope: !3048)
!3052 = !DILocation(line: 1115, column: 37, scope: !3048)
!3053 = !DILocation(line: 1115, column: 25, scope: !3048)
!3054 = !DILocation(line: 1115, column: 42, scope: !3048)
!3055 = !DILocation(line: 1116, column: 9, scope: !3048)
!3056 = !DILocation(line: 1116, column: 18, scope: !3048)
!3057 = !DILocation(line: 1116, column: 29, scope: !3048)
!3058 = !DILocation(line: 1115, column: 9, scope: !3059)
!3059 = !DILexicalBlockFile(scope: !3049, file: !48, discriminator: 1)
!3060 = !DILocation(line: 1117, column: 10, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3062, file: !48, line: 1117, column: 10)
!3062 = distinct !DILexicalBlock(scope: !3048, file: !48, line: 1116, column: 56)
!3063 = !DILocation(line: 1117, column: 10, scope: !3062)
!3064 = !DILocation(line: 1118, column: 58, scope: !3061)
!3065 = !DILocation(line: 1118, column: 67, scope: !3061)
!3066 = !DILocation(line: 1118, column: 74, scope: !3061)
!3067 = !DILocation(line: 1118, column: 92, scope: !3061)
!3068 = !DILocation(line: 1118, column: 100, scope: !3061)
!3069 = !DILocation(line: 1118, column: 7, scope: !3061)
!3070 = !DILocation(line: 1120, column: 50, scope: !3061)
!3071 = !DILocation(line: 1120, column: 59, scope: !3061)
!3072 = !DILocation(line: 1120, column: 66, scope: !3061)
!3073 = !DILocation(line: 1120, column: 7, scope: !3061)
!3074 = !DILocation(line: 1121, column: 31, scope: !3062)
!3075 = !DILocation(line: 1121, column: 6, scope: !3062)
!3076 = !DILocation(line: 1122, column: 5, scope: !3062)
!3077 = !DILocation(line: 1123, column: 5, scope: !3049)
!3078 = !DILocation(line: 1123, column: 14, scope: !3049)
!3079 = !DILocation(line: 1123, column: 21, scope: !3049)
!3080 = !DILocation(line: 1126, column: 2, scope: !2980)
!3081 = !DILocation(line: 1128, column: 2, scope: !2735)
!3082 = !DILocation(line: 1128, column: 11, scope: !2735)
!3083 = !DILocation(line: 1128, column: 17, scope: !2735)
!3084 = !DILocation(line: 1129, column: 2, scope: !2735)
!3085 = !DILocation(line: 1129, column: 11, scope: !2735)
!3086 = !DILocation(line: 1129, column: 22, scope: !2735)
!3087 = !DILocation(line: 1131, column: 2, scope: !2735)
!3088 = !DILocation(line: 1132, column: 1, scope: !2735)
!3089 = distinct !DISubprogram(name: "vrrp_dispatcher_read_timeout", scope: !48, file: !48, line: 851, type: !3090, isLocal: true, isDefinition: true, scopeLine: 852, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !235)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!52, !52}
!3092 = !DILocalVariable(name: "fd", arg: 1, scope: !3089, file: !48, line: 851, type: !52)
!3093 = !DILocation(line: 851, column: 34, scope: !3089)
!3094 = !DILocalVariable(name: "vrrp", scope: !3089, file: !48, line: 853, type: !337)
!3095 = !DILocation(line: 853, column: 10, scope: !3089)
!3096 = !DILocalVariable(name: "prev_state", scope: !3089, file: !48, line: 854, type: !52)
!3097 = !DILocation(line: 854, column: 6, scope: !3089)
!3098 = !DILocalVariable(name: "e", scope: !3089, file: !48, line: 855, type: !823)
!3099 = !DILocation(line: 855, column: 10, scope: !3089)
!3100 = !DILocalVariable(name: "l", scope: !3089, file: !48, line: 856, type: !91)
!3101 = !DILocation(line: 856, column: 7, scope: !3089)
!3102 = !DILocation(line: 856, column: 38, scope: !3089)
!3103 = !DILocation(line: 856, column: 41, scope: !3089)
!3104 = !DILocation(line: 856, column: 12, scope: !3089)
!3105 = !DILocation(line: 856, column: 23, scope: !3089)
!3106 = !DILocation(line: 858, column: 2, scope: !3089)
!3107 = !DILocation(line: 861, column: 14, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3089, file: !48, line: 861, column: 2)
!3109 = !DILocation(line: 861, column: 13, scope: !3108)
!3110 = !DILocation(line: 861, column: 12, scope: !3108)
!3111 = !DILocation(line: 861, column: 12, scope: !3112)
!3112 = !DILexicalBlockFile(scope: !3108, file: !48, discriminator: 1)
!3113 = !DILocation(line: 861, column: 13, scope: !3114)
!3114 = !DILexicalBlockFile(scope: !3108, file: !48, discriminator: 2)
!3115 = !DILocation(line: 861, column: 17, scope: !3114)
!3116 = !DILocation(line: 861, column: 12, scope: !3114)
!3117 = !DILocation(line: 861, column: 12, scope: !3118)
!3118 = !DILexicalBlockFile(scope: !3108, file: !48, discriminator: 3)
!3119 = !DILocation(line: 861, column: 9, scope: !3118)
!3120 = !DILocation(line: 861, column: 7, scope: !3118)
!3121 = !DILocation(line: 861, column: 24, scope: !3122)
!3122 = !DILexicalBlockFile(scope: !3123, file: !48, discriminator: 4)
!3123 = distinct !DILexicalBlock(scope: !3108, file: !48, line: 861, column: 2)
!3124 = !DILocation(line: 861, column: 2, scope: !3122)
!3125 = !DILocation(line: 862, column: 12, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3123, file: !48, line: 861, column: 46)
!3127 = !DILocation(line: 862, column: 16, scope: !3126)
!3128 = !DILocation(line: 862, column: 10, scope: !3126)
!3129 = !DILocation(line: 862, column: 8, scope: !3126)
!3130 = !DILocation(line: 863, column: 7, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3126, file: !48, line: 863, column: 7)
!3132 = !DILocation(line: 863, column: 13, scope: !3131)
!3133 = !DILocation(line: 863, column: 22, scope: !3131)
!3134 = !DILocation(line: 863, column: 31, scope: !3131)
!3135 = !DILocation(line: 863, column: 28, scope: !3131)
!3136 = !DILocation(line: 863, column: 7, scope: !3126)
!3137 = !DILocation(line: 864, column: 4, scope: !3131)
!3138 = !DILocation(line: 866, column: 7, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3126, file: !48, line: 866, column: 6)
!3140 = !DILocation(line: 866, column: 13, scope: !3139)
!3141 = !DILocation(line: 866, column: 9, scope: !3139)
!3142 = !DILocation(line: 866, column: 16, scope: !3139)
!3143 = !DILocation(line: 866, column: 6, scope: !3126)
!3144 = !DILocation(line: 866, column: 7, scope: !3145)
!3145 = !DILexicalBlockFile(scope: !3139, file: !48, discriminator: 1)
!3146 = !DILocation(line: 866, column: 13, scope: !3145)
!3147 = !DILocation(line: 866, column: 9, scope: !3145)
!3148 = !DILocation(line: 866, column: 6, scope: !3145)
!3149 = !DILocation(line: 866, column: 7, scope: !3150)
!3150 = !DILexicalBlockFile(scope: !3139, file: !48, discriminator: 2)
!3151 = !DILocation(line: 866, column: 13, scope: !3150)
!3152 = !DILocation(line: 866, column: 9, scope: !3150)
!3153 = !DILocation(line: 866, column: 6, scope: !3150)
!3154 = !DILocation(line: 867, column: 4, scope: !3139)
!3155 = !DILocation(line: 869, column: 16, scope: !3126)
!3156 = !DILocation(line: 869, column: 22, scope: !3126)
!3157 = !DILocation(line: 869, column: 14, scope: !3126)
!3158 = !DILocation(line: 871, column: 7, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3126, file: !48, line: 871, column: 7)
!3160 = !DILocation(line: 871, column: 13, scope: !3159)
!3161 = !DILocation(line: 871, column: 19, scope: !3159)
!3162 = !DILocation(line: 871, column: 7, scope: !3126)
!3163 = !DILocation(line: 872, column: 8, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3165, file: !48, line: 872, column: 8)
!3165 = distinct !DILexicalBlock(scope: !3159, file: !48, line: 871, column: 25)
!3166 = !DILocation(line: 872, column: 8, scope: !3165)
!3167 = !DILocation(line: 873, column: 64, scope: !3164)
!3168 = !DILocation(line: 873, column: 70, scope: !3164)
!3169 = !DILocation(line: 873, column: 5, scope: !3164)
!3170 = !DILocation(line: 874, column: 21, scope: !3165)
!3171 = !DILocation(line: 874, column: 4, scope: !3165)
!3172 = !DILocation(line: 875, column: 3, scope: !3165)
!3173 = !DILocation(line: 876, column: 12, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3159, file: !48, line: 876, column: 12)
!3175 = !DILocation(line: 876, column: 18, scope: !3174)
!3176 = !DILocation(line: 876, column: 24, scope: !3174)
!3177 = !DILocation(line: 876, column: 12, scope: !3159)
!3178 = !DILocation(line: 877, column: 16, scope: !3174)
!3179 = !DILocation(line: 877, column: 4, scope: !3174)
!3180 = !DILocation(line: 885, column: 3, scope: !3126)
!3181 = distinct !{!3181, !3180}
!3182 = !DILocation(line: 885, column: 13, scope: !3183)
!3183 = !DILexicalBlockFile(scope: !3184, file: !48, discriminator: 1)
!3184 = distinct !DILexicalBlock(scope: !3185, file: !48, line: 885, column: 12)
!3185 = distinct !DILexicalBlock(scope: !3126, file: !48, line: 885, column: 6)
!3186 = !DILocation(line: 885, column: 20, scope: !3183)
!3187 = !DILocation(line: 885, column: 12, scope: !3183)
!3188 = !DILocation(line: 885, column: 25, scope: !3183)
!3189 = !DILocation(line: 885, column: 53, scope: !3190)
!3190 = !DILexicalBlockFile(scope: !3184, file: !48, discriminator: 2)
!3191 = !DILocation(line: 885, column: 60, scope: !3190)
!3192 = !DILocation(line: 885, column: 31, scope: !3190)
!3193 = !DILocation(line: 885, column: 40, scope: !3190)
!3194 = !DILocation(line: 885, column: 67, scope: !3190)
!3195 = !DILocation(line: 885, column: 28, scope: !3190)
!3196 = !DILocation(line: 885, column: 12, scope: !3190)
!3197 = !DILocation(line: 885, column: 103, scope: !3198)
!3198 = !DILexicalBlockFile(scope: !3184, file: !48, discriminator: 3)
!3199 = !DILocation(line: 885, column: 110, scope: !3198)
!3200 = !DILocation(line: 885, column: 81, scope: !3198)
!3201 = !DILocation(line: 885, column: 90, scope: !3198)
!3202 = !DILocation(line: 885, column: 117, scope: !3198)
!3203 = !DILocation(line: 885, column: 128, scope: !3198)
!3204 = !DILocation(line: 885, column: 78, scope: !3198)
!3205 = !DILocation(line: 885, column: 135, scope: !3206)
!3206 = !DILexicalBlockFile(scope: !3185, file: !48, discriminator: 4)
!3207 = !DILocation(line: 887, column: 28, scope: !3126)
!3208 = !DILocation(line: 887, column: 3, scope: !3126)
!3209 = !DILocation(line: 888, column: 2, scope: !3126)
!3210 = !DILocation(line: 861, column: 35, scope: !3211)
!3211 = !DILexicalBlockFile(scope: !3123, file: !48, discriminator: 5)
!3212 = !DILocation(line: 861, column: 39, scope: !3211)
!3213 = !DILocation(line: 861, column: 32, scope: !3211)
!3214 = !DILocation(line: 861, column: 2, scope: !3211)
!3215 = distinct !{!3215, !3216}
!3216 = !DILocation(line: 861, column: 2, scope: !3089)
!3217 = !DILocation(line: 890, column: 9, scope: !3089)
!3218 = !DILocation(line: 890, column: 2, scope: !3089)
!3219 = distinct !DISubprogram(name: "vrrp_dispatcher_read", scope: !48, file: !48, line: 895, type: !3220, isLocal: true, isDefinition: true, scopeLine: 896, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !235)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!52, !287}
!3222 = !DILocalVariable(name: "sock", arg: 1, scope: !3219, file: !48, line: 895, type: !287)
!3223 = !DILocation(line: 895, column: 31, scope: !3219)
!3224 = !DILocalVariable(name: "vrrp", scope: !3219, file: !48, line: 897, type: !337)
!3225 = !DILocation(line: 897, column: 10, scope: !3219)
!3226 = !DILocalVariable(name: "hd", scope: !3219, file: !48, line: 898, type: !3227)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64, align: 64)
!3228 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrphdr_t", file: !4, line: 72, baseType: !3229)
!3229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrphdr", file: !4, line: 55, size: 64, align: 16, elements: !3230)
!3230 = !{!3231, !3232, !3233, !3234, !3235, !3247}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "vers_type", scope: !3229, file: !4, line: 56, baseType: !433, size: 8, align: 8)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "vrid", scope: !3229, file: !4, line: 57, baseType: !433, size: 8, align: 8, offset: 8)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !3229, file: !4, line: 58, baseType: !433, size: 8, align: 8, offset: 16)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "naddr", scope: !3229, file: !4, line: 59, baseType: !433, size: 8, align: 8, offset: 24)
!3235 = !DIDerivedType(tag: DW_TAG_member, scope: !3229, file: !4, line: 60, baseType: !3236, size: 16, align: 16, offset: 32)
!3236 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3229, file: !4, line: 60, size: 16, align: 16, elements: !3237)
!3237 = !{!3238, !3243}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "v2", scope: !3236, file: !4, line: 64, baseType: !3239, size: 16, align: 8)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3236, file: !4, line: 61, size: 16, align: 8, elements: !3240)
!3240 = !{!3241, !3242}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "auth_type", scope: !3239, file: !4, line: 62, baseType: !433, size: 8, align: 8)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "adver_int", scope: !3239, file: !4, line: 63, baseType: !433, size: 8, align: 8, offset: 8)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "v3", scope: !3236, file: !4, line: 67, baseType: !3244, size: 16, align: 16)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3236, file: !4, line: 65, size: 16, align: 16, elements: !3245)
!3245 = !{!3246}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "adver_int", scope: !3244, file: !4, line: 66, baseType: !437, size: 16, align: 16)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "chksum", scope: !3229, file: !4, line: 69, baseType: !437, size: 16, align: 16, offset: 48)
!3248 = !DILocation(line: 898, column: 13, scope: !3219)
!3249 = !DILocalVariable(name: "len", scope: !3219, file: !48, line: 899, type: !3250)
!3250 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !225, line: 109, baseType: !3251)
!3251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !148, line: 172, baseType: !149)
!3252 = !DILocation(line: 899, column: 10, scope: !3219)
!3253 = !DILocalVariable(name: "prev_state", scope: !3219, file: !48, line: 900, type: !52)
!3254 = !DILocation(line: 900, column: 6, scope: !3219)
!3255 = !DILocalVariable(name: "proto", scope: !3219, file: !48, line: 901, type: !106)
!3256 = !DILocation(line: 901, column: 11, scope: !3219)
!3257 = !DILocalVariable(name: "src_addr", scope: !3219, file: !48, line: 902, type: !296)
!3258 = !DILocation(line: 902, column: 26, scope: !3219)
!3259 = !DILocalVariable(name: "src_addr_len", scope: !3219, file: !48, line: 903, type: !3260)
!3260 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !297, line: 33, baseType: !3261)
!3261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !148, line: 189, baseType: !106)
!3262 = !DILocation(line: 903, column: 12, scope: !3219)
!3263 = !DILocation(line: 906, column: 9, scope: !3219)
!3264 = !DILocation(line: 906, column: 25, scope: !3219)
!3265 = !DILocation(line: 906, column: 2, scope: !3219)
!3266 = !DILocation(line: 909, column: 17, scope: !3219)
!3267 = !DILocation(line: 909, column: 23, scope: !3219)
!3268 = !DILocation(line: 909, column: 30, scope: !3219)
!3269 = !DILocation(line: 909, column: 43, scope: !3219)
!3270 = !DILocation(line: 910, column: 10, scope: !3219)
!3271 = !DILocation(line: 909, column: 8, scope: !3219)
!3272 = !DILocation(line: 909, column: 6, scope: !3219)
!3273 = !DILocation(line: 911, column: 23, scope: !3219)
!3274 = !DILocation(line: 911, column: 29, scope: !3219)
!3275 = !DILocation(line: 911, column: 37, scope: !3219)
!3276 = !DILocation(line: 911, column: 7, scope: !3219)
!3277 = !DILocation(line: 911, column: 5, scope: !3219)
!3278 = !DILocation(line: 914, column: 27, scope: !3219)
!3279 = !DILocation(line: 914, column: 31, scope: !3219)
!3280 = !DILocation(line: 914, column: 37, scope: !3219)
!3281 = !DILocation(line: 914, column: 43, scope: !3219)
!3282 = !DILocation(line: 914, column: 9, scope: !3219)
!3283 = !DILocation(line: 914, column: 7, scope: !3219)
!3284 = !DILocation(line: 917, column: 7, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3219, file: !48, line: 917, column: 6)
!3286 = !DILocation(line: 917, column: 6, scope: !3219)
!3287 = !DILocation(line: 918, column: 10, scope: !3285)
!3288 = !DILocation(line: 918, column: 16, scope: !3285)
!3289 = !DILocation(line: 918, column: 3, scope: !3285)
!3290 = !DILocation(line: 920, column: 6, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3219, file: !48, line: 920, column: 6)
!3292 = !DILocation(line: 920, column: 12, scope: !3291)
!3293 = !DILocation(line: 920, column: 18, scope: !3291)
!3294 = !DILocation(line: 920, column: 23, scope: !3291)
!3295 = !DILocation(line: 921, column: 6, scope: !3291)
!3296 = !DILocation(line: 921, column: 12, scope: !3291)
!3297 = !DILocation(line: 921, column: 18, scope: !3291)
!3298 = !DILocation(line: 920, column: 6, scope: !3299)
!3299 = !DILexicalBlockFile(scope: !3219, file: !48, discriminator: 1)
!3300 = !DILocation(line: 924, column: 10, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3291, file: !48, line: 921, column: 24)
!3302 = !DILocation(line: 924, column: 16, scope: !3301)
!3303 = !DILocation(line: 924, column: 3, scope: !3301)
!3304 = !DILocation(line: 927, column: 2, scope: !3219)
!3305 = !DILocation(line: 927, column: 8, scope: !3219)
!3306 = !DILocation(line: 927, column: 20, scope: !3219)
!3307 = !DILocation(line: 929, column: 15, scope: !3219)
!3308 = !DILocation(line: 929, column: 21, scope: !3219)
!3309 = !DILocation(line: 929, column: 13, scope: !3219)
!3310 = !DILocation(line: 931, column: 6, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3219, file: !48, line: 931, column: 6)
!3312 = !DILocation(line: 931, column: 12, scope: !3311)
!3313 = !DILocation(line: 931, column: 18, scope: !3311)
!3314 = !DILocation(line: 931, column: 6, scope: !3219)
!3315 = !DILocation(line: 932, column: 15, scope: !3311)
!3316 = !DILocation(line: 932, column: 21, scope: !3311)
!3317 = !DILocation(line: 932, column: 34, scope: !3311)
!3318 = !DILocation(line: 932, column: 3, scope: !3311)
!3319 = !DILocation(line: 933, column: 11, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3311, file: !48, line: 933, column: 11)
!3321 = !DILocation(line: 933, column: 17, scope: !3320)
!3322 = !DILocation(line: 933, column: 23, scope: !3320)
!3323 = !DILocation(line: 933, column: 11, scope: !3311)
!3324 = !DILocation(line: 934, column: 21, scope: !3320)
!3325 = !DILocation(line: 934, column: 27, scope: !3320)
!3326 = !DILocation(line: 934, column: 40, scope: !3320)
!3327 = !DILocation(line: 934, column: 3, scope: !3320)
!3328 = !DILocation(line: 936, column: 65, scope: !3320)
!3329 = !DILocation(line: 936, column: 71, scope: !3320)
!3330 = !DILocation(line: 936, column: 78, scope: !3320)
!3331 = !DILocation(line: 936, column: 84, scope: !3320)
!3332 = !DILocation(line: 936, column: 3, scope: !3320)
!3333 = !DILocation(line: 944, column: 2, scope: !3219)
!3334 = distinct !{!3334, !3333}
!3335 = !DILocation(line: 944, column: 12, scope: !3336)
!3336 = !DILexicalBlockFile(scope: !3337, file: !48, discriminator: 1)
!3337 = distinct !DILexicalBlock(scope: !3338, file: !48, line: 944, column: 11)
!3338 = distinct !DILexicalBlock(scope: !3219, file: !48, line: 944, column: 5)
!3339 = !DILocation(line: 944, column: 19, scope: !3336)
!3340 = !DILocation(line: 944, column: 11, scope: !3336)
!3341 = !DILocation(line: 944, column: 24, scope: !3336)
!3342 = !DILocation(line: 944, column: 52, scope: !3343)
!3343 = !DILexicalBlockFile(scope: !3337, file: !48, discriminator: 2)
!3344 = !DILocation(line: 944, column: 59, scope: !3343)
!3345 = !DILocation(line: 944, column: 30, scope: !3343)
!3346 = !DILocation(line: 944, column: 39, scope: !3343)
!3347 = !DILocation(line: 944, column: 66, scope: !3343)
!3348 = !DILocation(line: 944, column: 27, scope: !3343)
!3349 = !DILocation(line: 944, column: 11, scope: !3343)
!3350 = !DILocation(line: 944, column: 102, scope: !3351)
!3351 = !DILexicalBlockFile(scope: !3337, file: !48, discriminator: 3)
!3352 = !DILocation(line: 944, column: 109, scope: !3351)
!3353 = !DILocation(line: 944, column: 80, scope: !3351)
!3354 = !DILocation(line: 944, column: 89, scope: !3351)
!3355 = !DILocation(line: 944, column: 116, scope: !3351)
!3356 = !DILocation(line: 944, column: 127, scope: !3351)
!3357 = !DILocation(line: 944, column: 77, scope: !3351)
!3358 = !DILocation(line: 944, column: 134, scope: !3359)
!3359 = !DILexicalBlockFile(scope: !3338, file: !48, discriminator: 4)
!3360 = !DILocation(line: 947, column: 6, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3219, file: !48, line: 947, column: 6)
!3362 = !DILocation(line: 947, column: 12, scope: !3361)
!3363 = !DILocation(line: 947, column: 18, scope: !3361)
!3364 = !DILocation(line: 947, column: 23, scope: !3361)
!3365 = !DILocation(line: 947, column: 27, scope: !3366)
!3366 = !DILexicalBlockFile(scope: !3361, file: !48, discriminator: 1)
!3367 = !DILocation(line: 947, column: 33, scope: !3366)
!3368 = !DILocation(line: 947, column: 6, scope: !3366)
!3369 = !DILocation(line: 948, column: 28, scope: !3361)
!3370 = !DILocation(line: 948, column: 3, scope: !3361)
!3371 = !DILocation(line: 950, column: 9, scope: !3219)
!3372 = !DILocation(line: 950, column: 15, scope: !3219)
!3373 = !DILocation(line: 950, column: 2, scope: !3219)
!3374 = !DILocation(line: 951, column: 1, scope: !3219)
!3375 = distinct !DISubprogram(name: "vrrp_goto_master", scope: !48, file: !48, line: 676, type: !335, isLocal: true, isDefinition: true, scopeLine: 677, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !235)
!3376 = !DILocalVariable(name: "vrrp", arg: 1, scope: !3375, file: !48, line: 676, type: !337)
!3377 = !DILocation(line: 676, column: 27, scope: !3375)
!3378 = !DILocation(line: 679, column: 2, scope: !3375)
!3379 = !DILocation(line: 679, column: 8, scope: !3375)
!3380 = !DILocation(line: 679, column: 18, scope: !3375)
!3381 = !DILocation(line: 680, column: 25, scope: !3375)
!3382 = !DILocation(line: 680, column: 2, scope: !3375)
!3383 = !DILocation(line: 681, column: 1, scope: !3375)
!3384 = distinct !DISubprogram(name: "vrrp_master", scope: !48, file: !48, line: 708, type: !335, isLocal: true, isDefinition: true, scopeLine: 709, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !235)
!3385 = !DILocalVariable(name: "vrrp", arg: 1, scope: !3384, file: !48, line: 708, type: !337)
!3386 = !DILocation(line: 708, column: 22, scope: !3384)
!3387 = !DILocation(line: 711, column: 23, scope: !3384)
!3388 = !DILocation(line: 711, column: 2, scope: !3384)
!3389 = !DILocation(line: 712, column: 1, scope: !3384)
!3390 = distinct !DISubprogram(name: "vrrp_backup", scope: !48, file: !48, line: 662, type: !3391, isLocal: true, isDefinition: true, scopeLine: 663, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !235)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{null, !337, !123, !3250}
!3393 = !DILocalVariable(name: "vrrp", arg: 1, scope: !3390, file: !48, line: 662, type: !337)
!3394 = !DILocation(line: 662, column: 22, scope: !3390)
!3395 = !DILocalVariable(name: "buffer", arg: 2, scope: !3390, file: !48, line: 662, type: !123)
!3396 = !DILocation(line: 662, column: 34, scope: !3390)
!3397 = !DILocalVariable(name: "len", arg: 3, scope: !3390, file: !48, line: 662, type: !3250)
!3398 = !DILocation(line: 662, column: 50, scope: !3390)
!3399 = !DILocation(line: 664, column: 20, scope: !3390)
!3400 = !DILocation(line: 664, column: 26, scope: !3390)
!3401 = !DILocation(line: 664, column: 34, scope: !3390)
!3402 = !DILocation(line: 664, column: 2, scope: !3390)
!3403 = !DILocation(line: 665, column: 1, scope: !3390)
!3404 = distinct !DISubprogram(name: "vrrp_leave_master", scope: !48, file: !48, line: 669, type: !3391, isLocal: true, isDefinition: true, scopeLine: 670, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !235)
!3405 = !DILocalVariable(name: "vrrp", arg: 1, scope: !3404, file: !48, line: 669, type: !337)
!3406 = !DILocation(line: 669, column: 28, scope: !3404)
!3407 = !DILocalVariable(name: "buffer", arg: 2, scope: !3404, file: !48, line: 669, type: !123)
!3408 = !DILocation(line: 669, column: 40, scope: !3404)
!3409 = !DILocalVariable(name: "len", arg: 3, scope: !3404, file: !48, line: 669, type: !3250)
!3410 = !DILocation(line: 669, column: 56, scope: !3404)
!3411 = !DILocation(line: 671, column: 27, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3404, file: !48, line: 671, column: 6)
!3413 = !DILocation(line: 671, column: 33, scope: !3412)
!3414 = !DILocation(line: 671, column: 41, scope: !3412)
!3415 = !DILocation(line: 671, column: 6, scope: !3412)
!3416 = !DILocation(line: 671, column: 6, scope: !3404)
!3417 = !DILocation(line: 672, column: 27, scope: !3412)
!3418 = !DILocation(line: 672, column: 3, scope: !3412)
!3419 = !DILocation(line: 673, column: 1, scope: !3404)
