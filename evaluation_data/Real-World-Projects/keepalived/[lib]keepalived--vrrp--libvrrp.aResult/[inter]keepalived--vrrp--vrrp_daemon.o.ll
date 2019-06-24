; ModuleID = './[inter]keepalived--vrrp--vrrp_daemon.o.i'
source_filename = "./[inter]keepalived--vrrp--vrrp_daemon.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct._thread = type { i64, i32, %struct._thread_master*, i32 (%struct._thread*)*, i8*, %struct.timeval, %union.anon, %struct._thread_event*, %union.anon.0 }
%struct.timeval = type { i64, i64 }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32 }
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
%struct.rusage = type { %struct.timeval, %struct.timeval, %union.anon.2, %union.anon.3, %union.anon.4, %union.anon.5, %union.anon.6, %union.anon.7, %union.anon.8, %union.anon.9, %union.anon.10, %union.anon.11, %union.anon.12, %union.anon.13, %union.anon.14, %union.anon.15 }
%union.anon.2 = type { i64 }
%union.anon.3 = type { i64 }
%union.anon.4 = type { i64 }
%union.anon.5 = type { i64 }
%union.anon.6 = type { i64 }
%union.anon.7 = type { i64 }
%union.anon.8 = type { i64 }
%union.anon.9 = type { i64 }
%union.anon.10 = type { i64 }
%union.anon.11 = type { i64 }
%union.anon.12 = type { i64 }
%union.anon.13 = type { i64 }
%union.anon.14 = type { i64 }
%union.anon.15 = type { i64 }
%struct.rlimit = type { i64, i64 }

@log_file_name = external global i8*, align 8
@.str = private unnamed_addr constant [35 x i8] c"VRRP child process: fork error(%s)\00", align 1
@vrrp_child = external global i32, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Starting VRRP child process, pid=%d\00", align 1
@master = external global %struct._thread_master*, align 8
@prog_type = external global i32, align 4
@global_data = external global %struct._data*, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"Keepalived_vrrp\00", align 1
@vrrp_syslog_ident = internal global i8* null, align 8
@debug = external global i64, align 8
@log_facility = external global i32, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"vrrp\00", align 1
@vrrp_pidfile = external global i8*, align 8
@.str.4 = private unnamed_addr constant [41 x i8] c"VRRP child process: cannot write pidfile\00", align 1
@reload = external global i8, align 1
@garp_delay = common global %struct._list* null, align 8
@non_existent_interface_specified = common global i8 0, align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"VRRP child process(%d) died: Respawning\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"VRRP child process(%d) died: Exiting\00", align 1
@vrrp_data = external global %struct._vrrp_data*, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"Reloading\00", align 1
@vrrp_initialised = external global i8, align 1
@old_vrrp_data = external global %struct._vrrp_data*, align 8
@old_global_data = external global %struct._data*, align 8
@two_phase_terminate = internal global i8 0, align 1
@.str.8 = private unnamed_addr constant [66 x i8] c"Backstop thread invoked: shutdown timer %srunning, child count %d\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"Printing VRRP data for process(%d) on signal\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"Printing VRRP stats for process(%d) on signal\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"WARNING - default interface %s doesn't exist\00", align 1
@conf_file = external global i8*, align 8
@.str.14 = private unnamed_addr constant [50 x i8] c"Non-existent interface specified in configuration\00", align 1
@netlink_error_ignore = external global i32, align 4
@have_ipv4_instance = external global i8, align 1
@have_ipv6_instance = external global i8, align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"Failed to get RLIMIT_NOFILE - errno %d (%m)\00", align 1
@.str.16 = private unnamed_addr constant [55 x i8] c"Failed to set file number limit to %ld - errno %d (%m)\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"Set maximum open files to %ld\00", align 1
@.str.18 = private unnamed_addr constant [60 x i8] c"Stopped - used %ld.%6.6ld user time, %ld.%6.6ld system time\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"Stopped\00", align 1

; Function Attrs: nounwind uwtable
define i32 @start_vrrp_child() #0 !dbg !295 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i32* %2, metadata !299, metadata !300), !dbg !301
  call void @llvm.dbg.declare(metadata i8** %3, metadata !302, metadata !300), !dbg !303
  %4 = load i8*, i8** @log_file_name, align 8, !dbg !304
  %5 = icmp ne i8* %4, null, !dbg !304
  br i1 %5, label %6, label %7, !dbg !306

; <label>:6:                                      ; preds = %0
  call void @flush_log_file(), !dbg !307
  br label %7, !dbg !307

; <label>:7:                                      ; preds = %6, %0
  %8 = call i32 @fork() #7, !dbg !308
  store i32 %8, i32* %2, align 4, !dbg !309
  %9 = load i32, i32* %2, align 4, !dbg !310
  %10 = icmp slt i32 %9, 0, !dbg !312
  br i1 %10, label %11, label %15, !dbg !313

; <label>:11:                                     ; preds = %7
  %12 = call i32* @__errno_location() #1, !dbg !314
  %13 = load i32, i32* %12, align 4, !dbg !316
  %14 = call i8* @strerror(i32 %13) #7, !dbg !317
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0), i8* %14), !dbg !319
  store i32 -1, i32* %1, align 4, !dbg !320
  br label %78, !dbg !320

; <label>:15:                                     ; preds = %7
  %16 = load i32, i32* %2, align 4, !dbg !321
  %17 = icmp ne i32 %16, 0, !dbg !321
  br i1 %17, label %18, label %24, !dbg !323

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* %2, align 4, !dbg !324
  store i32 %19, i32* @vrrp_child, align 4, !dbg !326
  %20 = load i32, i32* %2, align 4, !dbg !327
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0), i32 %20), !dbg !328
  %21 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !329
  %22 = load i32, i32* %2, align 4, !dbg !330
  %23 = call %struct._thread* @thread_add_child(%struct._thread_master* %21, i32 (%struct._thread*)* @vrrp_respawn_thread, i8* null, i32 %22, i64 -1), !dbg !331
  store i32 0, i32* %1, align 4, !dbg !332
  br label %78, !dbg !332

; <label>:24:                                     ; preds = %15
  br label %25

; <label>:25:                                     ; preds = %24
  %26 = call i32 (i32, ...) @prctl(i32 1, i32 15) #7, !dbg !333
  store i32 1, i32* @prog_type, align 4, !dbg !334
  call void @initialise_debug_options(), !dbg !335
  %27 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !336
  %28 = getelementptr inbounds %struct._data, %struct._data* %27, i32 0, i32 2, !dbg !338
  %29 = load i8*, i8** %28, align 8, !dbg !338
  %30 = icmp ne i8* %29, null, !dbg !336
  br i1 %30, label %36, label %31, !dbg !339

; <label>:31:                                     ; preds = %25
  %32 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !340
  %33 = getelementptr inbounds %struct._data, %struct._data* %32, i32 0, i32 0, !dbg !342
  %34 = load i8*, i8** %33, align 8, !dbg !342
  %35 = icmp ne i8* %34, null, !dbg !340
  br i1 %35, label %36, label %41, !dbg !343

; <label>:36:                                     ; preds = %31, %25
  %37 = call i8* @make_syslog_ident(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0)), !dbg !344
  store i8* %37, i8** @vrrp_syslog_ident, align 8, !dbg !345
  %38 = icmp ne i8* %37, null, !dbg !345
  br i1 %38, label %39, label %41, !dbg !346

; <label>:39:                                     ; preds = %36
  %40 = load i8*, i8** @vrrp_syslog_ident, align 8, !dbg !348
  store i8* %40, i8** %3, align 8, !dbg !349
  br label %42, !dbg !350

; <label>:41:                                     ; preds = %36, %31
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), i8** %3, align 8, !dbg !351
  br label %42

; <label>:42:                                     ; preds = %41, %39
  %43 = call zeroext i1 @__test_bit(i32 1, i64* @debug), !dbg !352
  br i1 %43, label %56, label %44, !dbg !354

; <label>:44:                                     ; preds = %42
  %45 = load i8*, i8** %3, align 8, !dbg !355
  %46 = call zeroext i1 @__test_bit(i32 0, i64* @debug), !dbg !356
  %47 = select i1 %46, i32 2, i32 0, !dbg !357
  %48 = or i32 1, %47, !dbg !358
  %49 = load i32, i32* @log_facility, align 4, !dbg !359
  %50 = icmp eq i32 %49, 24, !dbg !360
  br i1 %50, label %51, label %52, !dbg !361

; <label>:51:                                     ; preds = %44
  br label %54, !dbg !362

; <label>:52:                                     ; preds = %44
  %53 = load i32, i32* @log_facility, align 4, !dbg !364
  br label %54, !dbg !366

; <label>:54:                                     ; preds = %52, %51
  %55 = phi i32 [ 136, %51 ], [ %53, %52 ], !dbg !367
  call void @openlog(i8* %45, i32 %48, i32 %55), !dbg !369
  br label %56, !dbg !369

; <label>:56:                                     ; preds = %54, %42
  %57 = load i8*, i8** @log_file_name, align 8, !dbg !370
  %58 = icmp ne i8* %57, null, !dbg !370
  br i1 %58, label %59, label %67, !dbg !372

; <label>:59:                                     ; preds = %56
  %60 = load i8*, i8** @log_file_name, align 8, !dbg !373
  %61 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !374
  %62 = getelementptr inbounds %struct._data, %struct._data* %61, i32 0, i32 0, !dbg !375
  %63 = load i8*, i8** %62, align 8, !dbg !375
  %64 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !376
  %65 = getelementptr inbounds %struct._data, %struct._data* %64, i32 0, i32 2, !dbg !377
  %66 = load i8*, i8** %65, align 8, !dbg !377
  call void @open_log_file(i8* %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* %63, i8* %66), !dbg !378
  br label %67, !dbg !378

; <label>:67:                                     ; preds = %59, %56
  call void @free_parent_mallocs_startup(i1 zeroext true), !dbg !379
  call void @set_child_finder_name(i8* (i32)* null), !dbg !380
  call void @destroy_child_finder(), !dbg !381
  %68 = load i8*, i8** @vrrp_pidfile, align 8, !dbg !382
  %69 = call i32 @getpid() #7, !dbg !384
  %70 = call i32 @pidfile_write(i8* %68, i32 %69), !dbg !385
  %71 = icmp ne i32 %70, 0, !dbg !387
  br i1 %71, label %73, label %72, !dbg !388

; <label>:72:                                     ; preds = %67
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i32 0, i32 0)), !dbg !389
  call void @exit(i32 0) #8, !dbg !391
  unreachable, !dbg !391

; <label>:73:                                     ; preds = %67
  %74 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !392
  call void @thread_destroy_master(%struct._thread_master* %74), !dbg !393
  %75 = call %struct._thread_master* @thread_make_master(), !dbg !394
  store %struct._thread_master* %75, %struct._thread_master** @master, align 8, !dbg !395
  store i8 0, i8* @reload, align 1, !dbg !396
  call void @vrrp_signal_init(), !dbg !397
  call void @start_vrrp(), !dbg !398
  %76 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !399
  call void @launch_thread_scheduler(%struct._thread_master* %76), !dbg !400
  %77 = call i32 @vrrp_terminate_phase2(i32 0), !dbg !401
  call void @exit(i32 0) #8, !dbg !402
  unreachable, !dbg !402

; <label>:78:                                     ; preds = %18, %11
  %79 = load i32, i32* %1, align 4, !dbg !403
  ret i32 %79, !dbg !403
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @flush_log_file() #2

; Function Attrs: nounwind
declare i32 @fork() #3

declare void @log_message(i32, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @strerror(i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare %struct._thread* @thread_add_child(%struct._thread_master*, i32 (%struct._thread*)*, i8*, i32, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @vrrp_respawn_thread(%struct._thread*) #0 !dbg !404 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._thread*, align 8
  %4 = alloca i32, align 4
  store %struct._thread* %0, %struct._thread** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %3, metadata !407, metadata !300), !dbg !408
  call void @llvm.dbg.declare(metadata i32* %4, metadata !409, metadata !300), !dbg !410
  %5 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !411
  %6 = getelementptr inbounds %struct._thread, %struct._thread* %5, i32 0, i32 6, !dbg !412
  %7 = bitcast %union.anon* %6 to %struct.anon*, !dbg !413
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 0, !dbg !414
  %9 = load i32, i32* %8, align 8, !dbg !414
  store i32 %9, i32* %4, align 4, !dbg !415
  %10 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !416
  %11 = getelementptr inbounds %struct._thread, %struct._thread* %10, i32 0, i32 1, !dbg !418
  %12 = load i32, i32* %11, align 8, !dbg !418
  %13 = icmp eq i32 %12, 10, !dbg !419
  br i1 %13, label %14, label %18, !dbg !420

; <label>:14:                                     ; preds = %1
  %15 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !421
  %16 = load i32, i32* %4, align 4, !dbg !423
  %17 = call %struct._thread* @thread_add_child(%struct._thread_master* %15, i32 (%struct._thread*)* @vrrp_respawn_thread, i8* null, i32 %16, i64 -1), !dbg !424
  store i32 0, i32* %2, align 4, !dbg !425
  br label %27, !dbg !425

; <label>:18:                                     ; preds = %1
  %19 = call zeroext i1 @__test_bit(i32 9, i64* @debug), !dbg !426
  br i1 %19, label %23, label %20, !dbg !428

; <label>:20:                                     ; preds = %18
  %21 = load i32, i32* %4, align 4, !dbg !429
  call void (i32, i8*, ...) @log_message(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i32 0, i32 0), i32 %21), !dbg !431
  %22 = call i32 @start_vrrp_child(), !dbg !432
  br label %26, !dbg !433

; <label>:23:                                     ; preds = %18
  %24 = load i32, i32* %4, align 4, !dbg !434
  call void (i32, i8*, ...) @log_message(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i32 %24), !dbg !436
  store i32 0, i32* @vrrp_child, align 4, !dbg !437
  %25 = call i32 @raise(i32 15) #7, !dbg !438
  br label %26

; <label>:26:                                     ; preds = %23, %20
  store i32 0, i32* %2, align 4, !dbg !439
  br label %27, !dbg !439

; <label>:27:                                     ; preds = %26, %14
  %28 = load i32, i32* %2, align 4, !dbg !440
  ret i32 %28, !dbg !440
}

; Function Attrs: nounwind
declare i32 @prctl(i32, ...) #3

declare void @initialise_debug_options() #2

declare i8* @make_syslog_ident(i8*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @__test_bit(i32, i64*) #5 !dbg !441 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !446, metadata !300), !dbg !447
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !448, metadata !300), !dbg !449
  %5 = load i32, i32* %3, align 4, !dbg !450
  %6 = zext i32 %5 to i64, !dbg !451
  %7 = udiv i64 %6, 64, !dbg !452
  %8 = load i64*, i64** %4, align 8, !dbg !453
  %9 = getelementptr inbounds i64, i64* %8, i64 %7, !dbg !453
  %10 = load i64, i64* %9, align 8, !dbg !453
  %11 = load i32, i32* %3, align 4, !dbg !454
  %12 = zext i32 %11 to i64, !dbg !455
  %13 = urem i64 %12, 64, !dbg !456
  %14 = shl i64 1, %13, !dbg !457
  %15 = and i64 %10, %14, !dbg !458
  %16 = icmp ne i64 %15, 0, !dbg !459
  %17 = xor i1 %16, true, !dbg !459
  %18 = xor i1 %17, true, !dbg !460
  ret i1 %18, !dbg !461
}

declare void @openlog(i8*, i32, i32) #2

declare void @open_log_file(i8*, i8*, i8*, i8*) #2

declare void @free_parent_mallocs_startup(i1 zeroext) #2

declare void @set_child_finder_name(i8* (i32)*) #2

declare void @destroy_child_finder() #2

declare i32 @pidfile_write(i8*, i32) #2

; Function Attrs: nounwind
declare i32 @getpid() #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

declare void @thread_destroy_master(%struct._thread_master*) #2

declare %struct._thread_master* @thread_make_master() #2

; Function Attrs: nounwind uwtable
define internal void @vrrp_signal_init() #0 !dbg !462 {
  call void @signal_set(i32 1, void (i8*, i32)* @sigreload_vrrp, i8* null), !dbg !465
  call void @signal_set(i32 2, void (i8*, i32)* @sigend_vrrp, i8* null), !dbg !466
  call void @signal_set(i32 15, void (i8*, i32)* @sigend_vrrp, i8* null), !dbg !467
  call void @signal_set(i32 10, void (i8*, i32)* @sigusr1_vrrp, i8* null), !dbg !468
  call void @signal_set(i32 12, void (i8*, i32)* @sigusr2_vrrp, i8* null), !dbg !469
  call void @signal_ignore(i32 13), !dbg !470
  ret void, !dbg !471
}

; Function Attrs: nounwind uwtable
define internal void @start_vrrp() #0 !dbg !472 {
  %1 = alloca %struct.timeval, align 8
  call void @clear_summary_flags(), !dbg !473
  %2 = call zeroext i1 @__test_bit(i32 11, i64* @debug), !dbg !474
  br i1 %2, label %4, label %3, !dbg !476

; <label>:3:                                      ; preds = %0
  call void @kernel_netlink_init(), !dbg !477
  br label %4, !dbg !477

; <label>:4:                                      ; preds = %3, %0
  %5 = load i8, i8* @reload, align 1, !dbg !478
  %6 = trunc i8 %5 to i1, !dbg !478
  br i1 %6, label %7, label %9, !dbg !480

; <label>:7:                                      ; preds = %4
  %8 = call %struct._data* @alloc_global_data(), !dbg !481
  store %struct._data* %8, %struct._data** @global_data, align 8, !dbg !482
  br label %31, !dbg !483

; <label>:9:                                      ; preds = %4
  %10 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !484
  %11 = getelementptr inbounds %struct._data, %struct._data* %10, i32 0, i32 14, !dbg !486
  %12 = load i8*, i8** %11, align 8, !dbg !486
  %13 = icmp ne i8* %12, null, !dbg !484
  br i1 %13, label %14, label %30, !dbg !487

; <label>:14:                                     ; preds = %9
  %15 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !488
  %16 = getelementptr inbounds %struct._data, %struct._data* %15, i32 0, i32 14, !dbg !490
  %17 = load i8*, i8** %16, align 8, !dbg !490
  %18 = call %struct._interface* @if_get_by_ifname(i8* %17, i32 1), !dbg !491
  %19 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !492
  %20 = getelementptr inbounds %struct._data, %struct._data* %19, i32 0, i32 15, !dbg !493
  store %struct._interface* %18, %struct._interface** %20, align 8, !dbg !494
  %21 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !495
  %22 = getelementptr inbounds %struct._data, %struct._data* %21, i32 0, i32 15, !dbg !497
  %23 = load %struct._interface*, %struct._interface** %22, align 8, !dbg !497
  %24 = icmp ne %struct._interface* %23, null, !dbg !495
  br i1 %24, label %29, label %25, !dbg !498

; <label>:25:                                     ; preds = %14
  %26 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !499
  %27 = getelementptr inbounds %struct._data, %struct._data* %26, i32 0, i32 14, !dbg !500
  %28 = load i8*, i8** %27, align 8, !dbg !500
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i32 0, i32 0), i8* %28), !dbg !501
  br label %29, !dbg !501

; <label>:29:                                     ; preds = %25, %14
  br label %30, !dbg !502

; <label>:30:                                     ; preds = %29, %9
  br label %31

; <label>:31:                                     ; preds = %30, %7
  %32 = call %struct._vrrp_data* @alloc_vrrp_data(), !dbg !503
  store %struct._vrrp_data* %32, %struct._vrrp_data** @vrrp_data, align 8, !dbg !504
  %33 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !505
  %34 = icmp ne %struct._vrrp_data* %33, null, !dbg !505
  br i1 %34, label %36, label %35, !dbg !507

; <label>:35:                                     ; preds = %31
  call void @stop_vrrp(i32 2), !dbg !508
  br label %173, !dbg !510

; <label>:36:                                     ; preds = %31
  %37 = load i8*, i8** @conf_file, align 8, !dbg !511
  call void @init_data(i8* %37, %struct._vector* ()* @vrrp_init_keywords), !dbg !512
  %38 = load i8, i8* @non_existent_interface_specified, align 1, !dbg !513
  %39 = trunc i8 %38 to i1, !dbg !513
  br i1 %39, label %40, label %41, !dbg !515

; <label>:40:                                     ; preds = %36
  call void (i32, i8*, ...) @report_config_error(i32 2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.14, i32 0, i32 0)), !dbg !516
  call void @stop_vrrp(i32 3), !dbg !518
  br label %173, !dbg !519

; <label>:41:                                     ; preds = %36
  %42 = load i8, i8* @reload, align 1, !dbg !520
  %43 = trunc i8 %42 to i1, !dbg !520
  br i1 %43, label %44, label %46, !dbg !522

; <label>:44:                                     ; preds = %41
  %45 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !523
  call void @init_global_data(%struct._data* %45), !dbg !524
  br label %46, !dbg !524

; <label>:46:                                     ; preds = %44, %41
  %47 = call { i64, i64 } @set_time_now(), !dbg !525
  %48 = bitcast %struct.timeval* %1 to { i64, i64 }*, !dbg !525
  %49 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %48, i32 0, i32 0, !dbg !525
  %50 = extractvalue { i64, i64 } %47, 0, !dbg !525
  store i64 %50, i64* %49, align 8, !dbg !525
  %51 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %48, i32 0, i32 1, !dbg !525
  %52 = extractvalue { i64, i64 } %47, 1, !dbg !525
  store i64 %52, i64* %51, align 8, !dbg !525
  %53 = call zeroext i1 @__test_bit(i32 11, i64* @debug), !dbg !526
  br i1 %53, label %102, label %54, !dbg !528

; <label>:54:                                     ; preds = %46
  %55 = call zeroext i1 @vrrp_ipvs_needed(), !dbg !529
  br i1 %55, label %56, label %86, !dbg !532

; <label>:56:                                     ; preds = %54
  %57 = call i32 @ipvs_start(), !dbg !533
  %58 = icmp ne i32 %57, 1, !dbg !536
  br i1 %58, label %59, label %60, !dbg !537

; <label>:59:                                     ; preds = %56
  call void @stop_vrrp(i32 2), !dbg !538
  br label %173, !dbg !540

; <label>:60:                                     ; preds = %56
  %61 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !541
  %62 = getelementptr inbounds %struct._data, %struct._data* %61, i32 0, i32 16, !dbg !543
  %63 = load i32, i32* %62, align 8, !dbg !543
  %64 = icmp ne i32 %63, 0, !dbg !541
  br i1 %64, label %75, label %65, !dbg !544

; <label>:65:                                     ; preds = %60
  %66 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !545
  %67 = getelementptr inbounds %struct._data, %struct._data* %66, i32 0, i32 17, !dbg !546
  %68 = load i32, i32* %67, align 4, !dbg !546
  %69 = icmp ne i32 %68, 0, !dbg !545
  br i1 %69, label %75, label %70, !dbg !547

; <label>:70:                                     ; preds = %65
  %71 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !548
  %72 = getelementptr inbounds %struct._data, %struct._data* %71, i32 0, i32 18, !dbg !549
  %73 = load i32, i32* %72, align 8, !dbg !549
  %74 = icmp ne i32 %73, 0, !dbg !548
  br i1 %74, label %75, label %85, !dbg !550

; <label>:75:                                     ; preds = %70, %65, %60
  %76 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !552
  %77 = getelementptr inbounds %struct._data, %struct._data* %76, i32 0, i32 16, !dbg !553
  %78 = load i32, i32* %77, align 8, !dbg !553
  %79 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !554
  %80 = getelementptr inbounds %struct._data, %struct._data* %79, i32 0, i32 17, !dbg !555
  %81 = load i32, i32* %80, align 4, !dbg !555
  %82 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !556
  %83 = getelementptr inbounds %struct._data, %struct._data* %82, i32 0, i32 18, !dbg !557
  %84 = load i32, i32* %83, align 8, !dbg !557
  call void @ipvs_set_timeouts(i32 %78, i32 %81, i32 %84), !dbg !558
  br label %85, !dbg !558

; <label>:85:                                     ; preds = %75, %70
  call void @ipvs_syncd_cmd(i32 1164, %struct.lvs_syncd_config* null, i32 1, i1 zeroext true, i1 zeroext true), !dbg !559
  call void @ipvs_syncd_cmd(i32 1164, %struct.lvs_syncd_config* null, i32 2, i1 zeroext true, i1 zeroext true), !dbg !560
  br label %86, !dbg !561

; <label>:86:                                     ; preds = %85, %54
  %87 = load i8, i8* @reload, align 1, !dbg !562
  %88 = trunc i8 %87 to i1, !dbg !562
  br i1 %88, label %89, label %90, !dbg !564

; <label>:89:                                     ; preds = %86
  call void @kernel_netlink_set_recv_bufs(), !dbg !565
  call void @clear_diff_saddresses(), !dbg !567
  call void @clear_diff_srules(), !dbg !568
  call void @clear_diff_sroutes(), !dbg !569
  call void @clear_diff_script(), !dbg !570
  br label %101, !dbg !571

; <label>:90:                                     ; preds = %86
  %91 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !572
  %92 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %91, i32 0, i32 1, !dbg !574
  %93 = load %struct._list*, %struct._list** %92, align 8, !dbg !574
  %94 = call zeroext i1 @netlink_iplist(%struct._list* %93, i32 0, i1 zeroext false), !dbg !575
  %95 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !576
  %96 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %95, i32 0, i32 2, !dbg !577
  %97 = load %struct._list*, %struct._list** %96, align 8, !dbg !577
  call void @netlink_rtlist(%struct._list* %97, i32 0), !dbg !578
  store i32 2, i32* @netlink_error_ignore, align 4, !dbg !579
  %98 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !580
  %99 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %98, i32 0, i32 3, !dbg !581
  %100 = load %struct._list*, %struct._list** %99, align 8, !dbg !581
  call void @netlink_rulelist(%struct._list* %100, i32 0, i1 zeroext true), !dbg !582
  store i32 0, i32* @netlink_error_ignore, align 4, !dbg !583
  br label %101

; <label>:101:                                    ; preds = %90, %89
  br label %102, !dbg !584

; <label>:102:                                    ; preds = %101, %46
  %103 = call zeroext i1 @vrrp_complete_init(), !dbg !585
  br i1 %103, label %105, label %104, !dbg !587

; <label>:104:                                    ; preds = %102
  call void @stop_vrrp(i32 3), !dbg !588
  br label %173, !dbg !590

; <label>:105:                                    ; preds = %102
  %106 = call zeroext i1 @__test_bit(i32 11, i64* @debug), !dbg !591
  br i1 %106, label %107, label %108, !dbg !593

; <label>:107:                                    ; preds = %105
  br label %173, !dbg !594

; <label>:108:                                    ; preds = %105
  %109 = load i8, i8* @have_ipv4_instance, align 1, !dbg !595
  %110 = trunc i8 %109 to i1, !dbg !595
  br i1 %110, label %111, label %112, !dbg !597

; <label>:111:                                    ; preds = %108
  call void @gratuitous_arp_init(), !dbg !598
  br label %113, !dbg !598

; <label>:112:                                    ; preds = %108
  call void @gratuitous_arp_close(), !dbg !599
  br label %113

; <label>:113:                                    ; preds = %112, %111
  %114 = load i8, i8* @have_ipv6_instance, align 1, !dbg !600
  %115 = trunc i8 %114 to i1, !dbg !600
  br i1 %115, label %116, label %117, !dbg !602

; <label>:116:                                    ; preds = %113
  call void @ndisc_init(), !dbg !603
  br label %118, !dbg !603

; <label>:117:                                    ; preds = %113
  call void @ndisc_close(), !dbg !604
  br label %118

; <label>:118:                                    ; preds = %117, %116
  call void @iptables_init(), !dbg !605
  %119 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !606
  %120 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %119, i32 0, i32 10, !dbg !608
  %121 = load %struct._list*, %struct._list** %120, align 8, !dbg !608
  %122 = icmp ne %struct._list* %121, null, !dbg !606
  br i1 %122, label %123, label %127, !dbg !609

; <label>:123:                                    ; preds = %118
  %124 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !610
  %125 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %124, i32 0, i32 10, !dbg !611
  %126 = load %struct._list*, %struct._list** %125, align 8, !dbg !611
  call void @init_track_files(%struct._list* %126), !dbg !612
  br label %127, !dbg !612

; <label>:127:                                    ; preds = %123, %118
  %128 = load i8, i8* @reload, align 1, !dbg !613
  %129 = trunc i8 %128 to i1, !dbg !613
  br i1 %129, label %131, label %130, !dbg !615

; <label>:130:                                    ; preds = %127
  call void @iptables_cleanup(), !dbg !616
  br label %131, !dbg !616

; <label>:131:                                    ; preds = %130, %127
  %132 = load i8, i8* @reload, align 1, !dbg !617
  %133 = trunc i8 %132 to i1, !dbg !617
  call void @iptables_startup(i1 zeroext %133), !dbg !618
  %134 = load i8, i8* @reload, align 1, !dbg !619
  %135 = trunc i8 %134 to i1, !dbg !619
  br i1 %135, label %137, label %136, !dbg !621

; <label>:136:                                    ; preds = %131
  call void @vrrp_restore_interfaces_startup(), !dbg !622
  br label %137, !dbg !622

; <label>:137:                                    ; preds = %136, %131
  %138 = load i8, i8* @reload, align 1, !dbg !623
  %139 = trunc i8 %138 to i1, !dbg !623
  br i1 %139, label %140, label %141, !dbg !625

; <label>:140:                                    ; preds = %137
  call void @clear_diff_vrrp(), !dbg !626
  br label %141, !dbg !626

; <label>:141:                                    ; preds = %140, %137
  %142 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !627
  %143 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %142, i32 0, i32 1, !dbg !628
  %144 = load %struct._list*, %struct._list** %143, align 8, !dbg !628
  %145 = call zeroext i1 @netlink_iplist(%struct._list* %144, i32 1, i1 zeroext false), !dbg !629
  %146 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !630
  %147 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %146, i32 0, i32 2, !dbg !631
  %148 = load %struct._list*, %struct._list** %147, align 8, !dbg !631
  call void @netlink_rtlist(%struct._list* %148, i32 1), !dbg !632
  %149 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !633
  %150 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %149, i32 0, i32 3, !dbg !634
  %151 = load %struct._list*, %struct._list** %150, align 8, !dbg !634
  call void @netlink_rulelist(%struct._list* %151, i32 1, i1 zeroext false), !dbg !635
  %152 = call zeroext i1 @__test_bit(i32 3, i64* @debug), !dbg !636
  br i1 %152, label %153, label %154, !dbg !638

; <label>:153:                                    ; preds = %141
  call void @dump_data_vrrp(%struct._IO_FILE* null), !dbg !639
  br label %154, !dbg !639

; <label>:154:                                    ; preds = %153, %141
  %155 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !640
  %156 = call %struct._thread* @thread_add_event(%struct._thread_master* %155, i32 (%struct._thread*)* @vrrp_dispatcher_init, i8* null, i32 99), !dbg !641
  %157 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !642
  %158 = getelementptr inbounds %struct._data, %struct._data* %157, i32 0, i32 47, !dbg !643
  %159 = load i32, i32* %158, align 4, !dbg !643
  %160 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !644
  %161 = getelementptr inbounds %struct._data, %struct._data* %160, i32 0, i32 48, !dbg !645
  %162 = load i64, i64* %161, align 8, !dbg !645
  %163 = trunc i64 %162 to i32, !dbg !644
  %164 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !646
  %165 = getelementptr inbounds %struct._data, %struct._data* %164, i32 0, i32 45, !dbg !647
  %166 = load i8, i8* %165, align 1, !dbg !647
  %167 = sext i8 %166 to i32, !dbg !646
  %168 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !648
  %169 = getelementptr inbounds %struct._data, %struct._data* %168, i32 0, i32 46, !dbg !649
  %170 = load i8, i8* %169, align 8, !dbg !649
  %171 = trunc i8 %170 to i1, !dbg !649
  %172 = select i1 %171, i32 4096, i32 0, !dbg !648
  call void @set_process_priorities(i32 %159, i32 %163, i32 %167, i32 %172), !dbg !650
  call void @set_vrrp_max_fds(), !dbg !651
  br label %173, !dbg !652

; <label>:173:                                    ; preds = %154, %107, %104, %59, %40, %35
  ret void, !dbg !653
}

declare void @launch_thread_scheduler(%struct._thread_master*) #2

; Function Attrs: nounwind uwtable
define internal i32 @vrrp_terminate_phase2(i32) #0 !dbg !655 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.rusage, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !658, metadata !300), !dbg !659
  call void @llvm.dbg.declare(metadata %struct.rusage* %4, metadata !660, metadata !300), !dbg !736
  %5 = call zeroext i1 @__test_bit(i32 4, i64* @debug), !dbg !737
  br i1 %5, label %7, label %6, !dbg !739

; <label>:6:                                      ; preds = %1
  call void @shutdown_vrrp_instances(), !dbg !740
  br label %7, !dbg !740

; <label>:7:                                      ; preds = %6, %1
  %8 = call zeroext i1 @vrrp_ipvs_needed(), !dbg !741
  br i1 %8, label %9, label %10, !dbg !743

; <label>:9:                                      ; preds = %7
  call void @ipvs_stop(), !dbg !744
  br label %10, !dbg !746

; <label>:10:                                     ; preds = %9, %7
  call void @kernel_netlink_close_cmd(), !dbg !747
  %11 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !748
  call void @thread_destroy_master(%struct._thread_master* %11), !dbg !749
  store %struct._thread_master* null, %struct._thread_master** @master, align 8, !dbg !750
  call void @gratuitous_arp_close(), !dbg !751
  call void @ndisc_close(), !dbg !752
  %12 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !753
  %13 = getelementptr inbounds %struct._data, %struct._data* %12, i32 0, i32 55, !dbg !755
  %14 = getelementptr inbounds %struct._notify_fifo, %struct._notify_fifo* %13, i32 0, i32 1, !dbg !756
  %15 = load i32, i32* %14, align 8, !dbg !756
  %16 = icmp ne i32 %15, -1, !dbg !757
  br i1 %16, label %17, label %22, !dbg !758

; <label>:17:                                     ; preds = %10
  %18 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !759
  %19 = getelementptr inbounds %struct._data, %struct._data* %18, i32 0, i32 54, !dbg !760
  %20 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !761
  %21 = getelementptr inbounds %struct._data, %struct._data* %20, i32 0, i32 55, !dbg !762
  call void @notify_fifo_close(%struct._notify_fifo* %19, %struct._notify_fifo* %21), !dbg !763
  br label %22, !dbg !763

; <label>:22:                                     ; preds = %17, %10
  %23 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !764
  call void @free_global_data(%struct._data* %23), !dbg !765
  %24 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !766
  call void @free_vrrp_data(%struct._vrrp_data* %24), !dbg !767
  call void @free_vrrp_buffer(), !dbg !768
  call void @free_interface_queue(), !dbg !769
  call void @free_parent_mallocs_exit(), !dbg !770
  %25 = call zeroext i1 @__test_bit(i32 7, i64* @debug), !dbg !771
  br i1 %25, label %26, label %40, !dbg !773

; <label>:26:                                     ; preds = %22
  %27 = call i32 @getrusage(i32 0, %struct.rusage* %4) #7, !dbg !774
  %28 = getelementptr inbounds %struct.rusage, %struct.rusage* %4, i32 0, i32 0, !dbg !776
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %28, i32 0, i32 0, !dbg !777
  %30 = load i64, i64* %29, align 8, !dbg !777
  %31 = getelementptr inbounds %struct.rusage, %struct.rusage* %4, i32 0, i32 0, !dbg !778
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %31, i32 0, i32 1, !dbg !779
  %33 = load i64, i64* %32, align 8, !dbg !779
  %34 = getelementptr inbounds %struct.rusage, %struct.rusage* %4, i32 0, i32 1, !dbg !780
  %35 = getelementptr inbounds %struct.timeval, %struct.timeval* %34, i32 0, i32 0, !dbg !781
  %36 = load i64, i64* %35, align 8, !dbg !781
  %37 = getelementptr inbounds %struct.rusage, %struct.rusage* %4, i32 0, i32 1, !dbg !782
  %38 = getelementptr inbounds %struct.timeval, %struct.timeval* %37, i32 0, i32 1, !dbg !783
  %39 = load i64, i64* %38, align 8, !dbg !783
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.18, i32 0, i32 0), i64 %30, i64 %33, i64 %36, i64 %39), !dbg !784
  br label %41, !dbg !785

; <label>:40:                                     ; preds = %22
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0)), !dbg !786
  br label %41

; <label>:41:                                     ; preds = %40, %26
  %42 = load i8*, i8** @log_file_name, align 8, !dbg !787
  %43 = icmp ne i8* %42, null, !dbg !787
  br i1 %43, label %44, label %45, !dbg !789

; <label>:44:                                     ; preds = %41
  call void @close_log_file(), !dbg !790
  br label %45, !dbg !790

; <label>:45:                                     ; preds = %44, %41
  call void @closelog(), !dbg !791
  %46 = load i8*, i8** @vrrp_syslog_ident, align 8, !dbg !792
  %47 = icmp ne i8* %46, null, !dbg !792
  br i1 %47, label %48, label %50, !dbg !795

; <label>:48:                                     ; preds = %45
  %49 = load i8*, i8** @vrrp_syslog_ident, align 8, !dbg !796
  call void @free(i8* %49) #7, !dbg !799
  store i8* null, i8** @vrrp_syslog_ident, align 8, !dbg !800
  br label %50, !dbg !801

; <label>:50:                                     ; preds = %48, %45
  call void @close_std_fd(), !dbg !802
  %51 = load i8*, i8** @vrrp_pidfile, align 8, !dbg !803
  call void @pidfile_rm(i8* %51), !dbg !804
  %52 = load i32, i32* %3, align 4, !dbg !805
  call void @exit(i32 %52) #8, !dbg !806
  unreachable, !dbg !806
                                                  ; No predecessors!
  %54 = load i32, i32* %2, align 4, !dbg !807
  ret i32 %54, !dbg !807
}

; Function Attrs: nounwind uwtable
define void @vrrp_validate_config() #0 !dbg !808 {
  call void @start_vrrp(), !dbg !809
  ret void, !dbg !810
}

; Function Attrs: nounwind
declare i32 @raise(i32) #3

declare void @signal_set(i32, void (i8*, i32)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sigreload_vrrp(i8*, i32) #0 !dbg !811 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._element*, align 8
  %6 = alloca %struct._vrrp_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !814, metadata !300), !dbg !815
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !816, metadata !300), !dbg !817
  call void @llvm.dbg.declare(metadata %struct._element** %5, metadata !818, metadata !300), !dbg !820
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %6, metadata !821, metadata !300), !dbg !1083
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1084, metadata !300), !dbg !1085
  store i32 0, i32* %7, align 4, !dbg !1085
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1086, metadata !300), !dbg !1087
  %9 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1088
  %10 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %9, i32 0, i32 5, !dbg !1090
  %11 = load %struct._list*, %struct._list** %10, align 8, !dbg !1090
  %12 = icmp eq %struct._list* %11, null, !dbg !1091
  br i1 %12, label %104, label %13, !dbg !1092

; <label>:13:                                     ; preds = %2
  %14 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1093
  %15 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %14, i32 0, i32 5, !dbg !1095
  %16 = load %struct._list*, %struct._list** %15, align 8, !dbg !1095
  %17 = getelementptr inbounds %struct._list, %struct._list* %16, i32 0, i32 0, !dbg !1096
  %18 = load %struct._element*, %struct._element** %17, align 8, !dbg !1096
  %19 = icmp eq %struct._element* %18, null, !dbg !1097
  br i1 %19, label %20, label %27, !dbg !1098

; <label>:20:                                     ; preds = %13
  %21 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1099
  %22 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %21, i32 0, i32 5, !dbg !1101
  %23 = load %struct._list*, %struct._list** %22, align 8, !dbg !1101
  %24 = getelementptr inbounds %struct._list, %struct._list* %23, i32 0, i32 1, !dbg !1102
  %25 = load %struct._element*, %struct._element** %24, align 8, !dbg !1102
  %26 = icmp eq %struct._element* %25, null, !dbg !1103
  br i1 %26, label %104, label %27, !dbg !1104

; <label>:27:                                     ; preds = %20, %13
  %28 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1105
  %29 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %28, i32 0, i32 5, !dbg !1108
  %30 = load %struct._list*, %struct._list** %29, align 8, !dbg !1108
  %31 = icmp ne %struct._list* %30, null, !dbg !1109
  br i1 %31, label %33, label %32, !dbg !1110

; <label>:32:                                     ; preds = %27
  br label %39, !dbg !1111

; <label>:33:                                     ; preds = %27
  %34 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1113
  %35 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %34, i32 0, i32 5, !dbg !1115
  %36 = load %struct._list*, %struct._list** %35, align 8, !dbg !1115
  %37 = getelementptr inbounds %struct._list, %struct._list* %36, i32 0, i32 0, !dbg !1116
  %38 = load %struct._element*, %struct._element** %37, align 8, !dbg !1116
  br label %39, !dbg !1117

; <label>:39:                                     ; preds = %33, %32
  %40 = phi %struct._element* [ null, %32 ], [ %38, %33 ], !dbg !1118
  store %struct._element* %40, %struct._element** %5, align 8, !dbg !1120
  br label %41, !dbg !1121

; <label>:41:                                     ; preds = %57, %39
  %42 = load %struct._element*, %struct._element** %5, align 8, !dbg !1122
  %43 = icmp ne %struct._element* %42, null, !dbg !1125
  br i1 %43, label %44, label %61, !dbg !1125

; <label>:44:                                     ; preds = %41
  %45 = load %struct._element*, %struct._element** %5, align 8, !dbg !1126
  %46 = getelementptr inbounds %struct._element, %struct._element* %45, i32 0, i32 2, !dbg !1128
  %47 = load i8*, i8** %46, align 8, !dbg !1128
  %48 = bitcast i8* %47 to %struct._vrrp_t*, !dbg !1129
  store %struct._vrrp_t* %48, %struct._vrrp_t** %6, align 8, !dbg !1130
  %49 = load %struct._vrrp_t*, %struct._vrrp_t** %6, align 8, !dbg !1131
  %50 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %49, i32 0, i32 55, !dbg !1133
  %51 = load i32, i32* %50, align 8, !dbg !1133
  %52 = icmp eq i32 %51, 2, !dbg !1134
  br i1 %52, label %53, label %56, !dbg !1135

; <label>:53:                                     ; preds = %44
  %54 = load i32, i32* %7, align 4, !dbg !1136
  %55 = add nsw i32 %54, 1, !dbg !1136
  store i32 %55, i32* %7, align 4, !dbg !1136
  br label %56, !dbg !1137

; <label>:56:                                     ; preds = %53, %44
  br label %57, !dbg !1138

; <label>:57:                                     ; preds = %56
  %58 = load %struct._element*, %struct._element** %5, align 8, !dbg !1139
  %59 = getelementptr inbounds %struct._element, %struct._element* %58, i32 0, i32 0, !dbg !1141
  %60 = load %struct._element*, %struct._element** %59, align 8, !dbg !1141
  store %struct._element* %60, %struct._element** %5, align 8, !dbg !1142
  br label %41, !dbg !1143, !llvm.loop !1144

; <label>:61:                                     ; preds = %41
  %62 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1146
  %63 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %62, i32 0, i32 5, !dbg !1148
  %64 = load %struct._list*, %struct._list** %63, align 8, !dbg !1148
  %65 = icmp ne %struct._list* %64, null, !dbg !1149
  br i1 %65, label %67, label %66, !dbg !1150

; <label>:66:                                     ; preds = %61
  br label %73, !dbg !1151

; <label>:67:                                     ; preds = %61
  %68 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1153
  %69 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %68, i32 0, i32 5, !dbg !1155
  %70 = load %struct._list*, %struct._list** %69, align 8, !dbg !1155
  %71 = getelementptr inbounds %struct._list, %struct._list* %70, i32 0, i32 0, !dbg !1156
  %72 = load %struct._element*, %struct._element** %71, align 8, !dbg !1156
  br label %73, !dbg !1157

; <label>:73:                                     ; preds = %67, %66
  %74 = phi %struct._element* [ null, %66 ], [ %72, %67 ], !dbg !1158
  store %struct._element* %74, %struct._element** %5, align 8, !dbg !1160
  store i32 0, i32* %8, align 4, !dbg !1161
  br label %75, !dbg !1162

; <label>:75:                                     ; preds = %99, %73
  %76 = load %struct._element*, %struct._element** %5, align 8, !dbg !1163
  %77 = icmp ne %struct._element* %76, null, !dbg !1166
  br i1 %77, label %78, label %103, !dbg !1166

; <label>:78:                                     ; preds = %75
  %79 = load %struct._element*, %struct._element** %5, align 8, !dbg !1167
  %80 = getelementptr inbounds %struct._element, %struct._element* %79, i32 0, i32 2, !dbg !1169
  %81 = load i8*, i8** %80, align 8, !dbg !1169
  %82 = bitcast i8* %81 to %struct._vrrp_t*, !dbg !1170
  store %struct._vrrp_t* %82, %struct._vrrp_t** %6, align 8, !dbg !1171
  %83 = load %struct._vrrp_t*, %struct._vrrp_t** %6, align 8, !dbg !1172
  %84 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %83, i32 0, i32 55, !dbg !1174
  %85 = load i32, i32* %84, align 8, !dbg !1174
  %86 = icmp eq i32 %85, 2, !dbg !1175
  br i1 %86, label %87, label %98, !dbg !1176

; <label>:87:                                     ; preds = %78
  %88 = load i32, i32* %8, align 4, !dbg !1177
  %89 = add nsw i32 %88, 1, !dbg !1177
  store i32 %89, i32* %8, align 4, !dbg !1177
  %90 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !1179
  %91 = load %struct._vrrp_t*, %struct._vrrp_t** %6, align 8, !dbg !1180
  %92 = bitcast %struct._vrrp_t* %91 to i8*, !dbg !1180
  %93 = load i32, i32* %8, align 4, !dbg !1181
  %94 = load i32, i32* %7, align 4, !dbg !1182
  %95 = icmp eq i32 %93, %94, !dbg !1183
  %96 = zext i1 %95 to i32, !dbg !1183
  %97 = call %struct._thread* @thread_add_event(%struct._thread_master* %90, i32 (%struct._thread*)* @send_reload_advert_thread, i8* %92, i32 %96), !dbg !1184
  br label %98, !dbg !1185

; <label>:98:                                     ; preds = %87, %78
  br label %99, !dbg !1186

; <label>:99:                                     ; preds = %98
  %100 = load %struct._element*, %struct._element** %5, align 8, !dbg !1187
  %101 = getelementptr inbounds %struct._element, %struct._element* %100, i32 0, i32 0, !dbg !1189
  %102 = load %struct._element*, %struct._element** %101, align 8, !dbg !1189
  store %struct._element* %102, %struct._element** %5, align 8, !dbg !1190
  br label %75, !dbg !1191, !llvm.loop !1192

; <label>:103:                                    ; preds = %75
  br label %104, !dbg !1194

; <label>:104:                                    ; preds = %103, %20, %2
  %105 = load i32, i32* %7, align 4, !dbg !1195
  %106 = icmp eq i32 %105, 0, !dbg !1197
  br i1 %106, label %107, label %110, !dbg !1198

; <label>:107:                                    ; preds = %104
  %108 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !1199
  %109 = call %struct._thread* @thread_add_event(%struct._thread_master* %108, i32 (%struct._thread*)* @reload_vrrp_thread, i8* null, i32 0), !dbg !1200
  br label %110, !dbg !1200

; <label>:110:                                    ; preds = %107, %104
  ret void, !dbg !1201
}

; Function Attrs: nounwind uwtable
define internal void @sigend_vrrp(i8*, i32) #0 !dbg !1202 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1203, metadata !300), !dbg !1204
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1205, metadata !300), !dbg !1206
  %5 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !1207
  %6 = icmp ne %struct._thread_master* %5, null, !dbg !1207
  br i1 %6, label %7, label %10, !dbg !1209

; <label>:7:                                      ; preds = %2
  %8 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !1210
  %9 = call %struct._thread* @thread_add_start_terminate_event(%struct._thread_master* %8, i32 (%struct._thread*)* @start_vrrp_termination_thread), !dbg !1211
  br label %10, !dbg !1211

; <label>:10:                                     ; preds = %7, %2
  ret void, !dbg !1212
}

; Function Attrs: nounwind uwtable
define internal void @sigusr1_vrrp(i8*, i32) #0 !dbg !1213 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1214, metadata !300), !dbg !1215
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1216, metadata !300), !dbg !1217
  %5 = call i32 @getpid() #7, !dbg !1218
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i32 0, i32 0), i32 %5), !dbg !1219
  %6 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !1220
  %7 = call %struct._thread* @thread_add_event(%struct._thread_master* %6, i32 (%struct._thread*)* @print_vrrp_data, i8* null, i32 0), !dbg !1221
  ret void, !dbg !1222
}

; Function Attrs: nounwind uwtable
define internal void @sigusr2_vrrp(i8*, i32) #0 !dbg !1223 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1224, metadata !300), !dbg !1225
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1226, metadata !300), !dbg !1227
  %5 = call i32 @getpid() #7, !dbg !1228
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i32 0, i32 0), i32 %5), !dbg !1229
  %6 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !1230
  %7 = call %struct._thread* @thread_add_event(%struct._thread_master* %6, i32 (%struct._thread*)* @print_vrrp_stats, i8* null, i32 0), !dbg !1231
  ret void, !dbg !1232
}

declare void @signal_ignore(i32) #2

declare %struct._thread* @thread_add_event(%struct._thread_master*, i32 (%struct._thread*)*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @send_reload_advert_thread(%struct._thread*) #0 !dbg !1233 {
  %2 = alloca %struct._thread*, align 8
  %3 = alloca %struct._vrrp_t*, align 8
  store %struct._thread* %0, %struct._thread** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %2, metadata !1234, metadata !300), !dbg !1235
  call void @llvm.dbg.declare(metadata %struct._vrrp_t** %3, metadata !1236, metadata !300), !dbg !1237
  %4 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1238
  %5 = getelementptr inbounds %struct._thread, %struct._thread* %4, i32 0, i32 4, !dbg !1239
  %6 = load i8*, i8** %5, align 8, !dbg !1239
  %7 = bitcast i8* %6 to %struct._vrrp_t*, !dbg !1240
  store %struct._vrrp_t* %7, %struct._vrrp_t** %3, align 8, !dbg !1237
  %8 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1241
  %9 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %8, i32 0, i32 55, !dbg !1243
  %10 = load i32, i32* %9, align 8, !dbg !1243
  %11 = icmp eq i32 %10, 2, !dbg !1244
  br i1 %11, label %12, label %17, !dbg !1245

; <label>:12:                                     ; preds = %1
  %13 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1246
  %14 = load %struct._vrrp_t*, %struct._vrrp_t** %3, align 8, !dbg !1247
  %15 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %14, i32 0, i32 38, !dbg !1248
  %16 = load i8, i8* %15, align 2, !dbg !1248
  call void @vrrp_send_adv(%struct._vrrp_t* %13, i8 zeroext %16), !dbg !1249
  br label %17, !dbg !1249

; <label>:17:                                     ; preds = %12, %1
  %18 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1250
  %19 = getelementptr inbounds %struct._thread, %struct._thread* %18, i32 0, i32 6, !dbg !1252
  %20 = bitcast %union.anon* %19 to i32*, !dbg !1253
  %21 = load i32, i32* %20, align 8, !dbg !1253
  %22 = icmp ne i32 %21, 0, !dbg !1254
  br i1 %22, label %23, label %26, !dbg !1255

; <label>:23:                                     ; preds = %17
  %24 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !1256
  %25 = call %struct._thread* @thread_add_event(%struct._thread_master* %24, i32 (%struct._thread*)* @reload_vrrp_thread, i8* null, i32 0), !dbg !1257
  br label %26, !dbg !1257

; <label>:26:                                     ; preds = %23, %17
  ret i32 0, !dbg !1258
}

; Function Attrs: nounwind uwtable
define internal i32 @reload_vrrp_thread(%struct._thread*) #0 !dbg !1259 {
  %2 = alloca %struct._thread*, align 8
  store %struct._thread* %0, %struct._thread** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %2, metadata !1260, metadata !300), !dbg !1261
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0)), !dbg !1262
  call void @reset_process_priorities(), !dbg !1263
  store i8 1, i8* @reload, align 1, !dbg !1264
  %3 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !1265
  call void @script_killall(%struct._thread_master* %3, i32 15, i1 zeroext false), !dbg !1266
  %4 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1267
  %5 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %4, i32 0, i32 10, !dbg !1269
  %6 = load %struct._list*, %struct._list** %5, align 8, !dbg !1269
  %7 = icmp ne %struct._list* %6, null, !dbg !1267
  br i1 %7, label %8, label %9, !dbg !1270

; <label>:8:                                      ; preds = %1
  call void @stop_track_files(), !dbg !1271
  br label %9, !dbg !1271

; <label>:9:                                      ; preds = %8, %1
  store i8 0, i8* @vrrp_initialised, align 1, !dbg !1272
  %10 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1273
  call void @vrrp_dispatcher_release(%struct._vrrp_data* %10), !dbg !1274
  %11 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !1275
  call void @thread_cleanup_master(%struct._thread_master* %11), !dbg !1276
  %12 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !1277
  call void @thread_add_base_threads(%struct._thread_master* %12), !dbg !1278
  %13 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1279
  %14 = getelementptr inbounds %struct._data, %struct._data* %13, i32 0, i32 20, !dbg !1281
  %15 = getelementptr inbounds %struct.lvs_syncd_config, %struct.lvs_syncd_config* %14, i32 0, i32 0, !dbg !1282
  %16 = load i8*, i8** %15, align 8, !dbg !1282
  %17 = icmp ne i8* %16, null, !dbg !1279
  br i1 %17, label %18, label %29, !dbg !1283

; <label>:18:                                     ; preds = %9
  %19 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1284
  %20 = getelementptr inbounds %struct._data, %struct._data* %19, i32 0, i32 20, !dbg !1285
  %21 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1286
  %22 = getelementptr inbounds %struct._data, %struct._data* %21, i32 0, i32 20, !dbg !1287
  %23 = getelementptr inbounds %struct.lvs_syncd_config, %struct.lvs_syncd_config* %22, i32 0, i32 1, !dbg !1288
  %24 = load %struct._vrrp_t*, %struct._vrrp_t** %23, align 8, !dbg !1288
  %25 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %24, i32 0, i32 55, !dbg !1289
  %26 = load i32, i32* %25, align 8, !dbg !1289
  %27 = icmp eq i32 %26, 2, !dbg !1290
  %28 = select i1 %27, i32 1, i32 2, !dbg !1291
  call void @ipvs_syncd_cmd(i32 1164, %struct.lvs_syncd_config* %20, i32 %28, i1 zeroext true, i1 zeroext false), !dbg !1292
  br label %29, !dbg !1292

; <label>:29:                                     ; preds = %18, %9
  %30 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1293
  %31 = getelementptr inbounds %struct._data, %struct._data* %30, i32 0, i32 54, !dbg !1294
  %32 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1295
  %33 = getelementptr inbounds %struct._data, %struct._data* %32, i32 0, i32 55, !dbg !1296
  call void @notify_fifo_close(%struct._notify_fifo* %31, %struct._notify_fifo* %33), !dbg !1297
  %34 = call zeroext i1 @vrrp_ipvs_needed(), !dbg !1298
  br i1 %34, label %35, label %36, !dbg !1300

; <label>:35:                                     ; preds = %29
  call void @ipvs_stop(), !dbg !1301
  br label %36, !dbg !1303

; <label>:36:                                     ; preds = %35, %29
  %37 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1304
  store %struct._vrrp_data* %37, %struct._vrrp_data** @old_vrrp_data, align 8, !dbg !1305
  store %struct._vrrp_data* null, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1306
  %38 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1307
  store %struct._data* %38, %struct._data** @old_global_data, align 8, !dbg !1308
  store %struct._data* null, %struct._data** @global_data, align 8, !dbg !1309
  call void @reset_interface_queue(), !dbg !1310
  call void @reset_next_rule_priority(), !dbg !1311
  call void @start_vrrp(), !dbg !1312
  %39 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1313
  %40 = getelementptr inbounds %struct._data, %struct._data* %39, i32 0, i32 20, !dbg !1315
  %41 = getelementptr inbounds %struct.lvs_syncd_config, %struct.lvs_syncd_config* %40, i32 0, i32 0, !dbg !1316
  %42 = load i8*, i8** %41, align 8, !dbg !1316
  %43 = icmp ne i8* %42, null, !dbg !1313
  br i1 %43, label %44, label %55, !dbg !1317

; <label>:44:                                     ; preds = %36
  %45 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1318
  %46 = getelementptr inbounds %struct._data, %struct._data* %45, i32 0, i32 20, !dbg !1319
  %47 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1320
  %48 = getelementptr inbounds %struct._data, %struct._data* %47, i32 0, i32 20, !dbg !1321
  %49 = getelementptr inbounds %struct.lvs_syncd_config, %struct.lvs_syncd_config* %48, i32 0, i32 1, !dbg !1322
  %50 = load %struct._vrrp_t*, %struct._vrrp_t** %49, align 8, !dbg !1322
  %51 = getelementptr inbounds %struct._vrrp_t, %struct._vrrp_t* %50, i32 0, i32 55, !dbg !1323
  %52 = load i32, i32* %51, align 8, !dbg !1323
  %53 = icmp eq i32 %52, 2, !dbg !1324
  %54 = select i1 %53, i32 1, i32 2, !dbg !1325
  call void @ipvs_syncd_cmd(i32 1163, %struct.lvs_syncd_config* %46, i32 %54, i1 zeroext true, i1 zeroext false), !dbg !1326
  br label %55, !dbg !1326

; <label>:55:                                     ; preds = %44, %36
  %56 = load %struct._vrrp_data*, %struct._vrrp_data** @old_vrrp_data, align 8, !dbg !1327
  call void @free_vrrp_data(%struct._vrrp_data* %56), !dbg !1328
  %57 = load %struct._data*, %struct._data** @old_global_data, align 8, !dbg !1329
  call void @free_global_data(%struct._data* %57), !dbg !1330
  call void @free_old_interface_queue(), !dbg !1331
  store i8 0, i8* @reload, align 1, !dbg !1332
  ret i32 0, !dbg !1333
}

declare void @vrrp_send_adv(%struct._vrrp_t*, i8 zeroext) #2

declare void @reset_process_priorities() #2

declare void @script_killall(%struct._thread_master*, i32, i1 zeroext) #2

declare void @stop_track_files() #2

declare void @vrrp_dispatcher_release(%struct._vrrp_data*) #2

declare void @thread_cleanup_master(%struct._thread_master*) #2

declare void @thread_add_base_threads(%struct._thread_master*) #2

declare void @ipvs_syncd_cmd(i32, %struct.lvs_syncd_config*, i32, i1 zeroext, i1 zeroext) #2

declare void @notify_fifo_close(%struct._notify_fifo*, %struct._notify_fifo*) #2

; Function Attrs: nounwind uwtable
define internal zeroext i1 @vrrp_ipvs_needed() #0 !dbg !1334 {
  %1 = load %struct._data*, %struct._data** @global_data, align 8, !dbg !1337
  %2 = getelementptr inbounds %struct._data, %struct._data* %1, i32 0, i32 20, !dbg !1338
  %3 = getelementptr inbounds %struct.lvs_syncd_config, %struct.lvs_syncd_config* %2, i32 0, i32 0, !dbg !1339
  %4 = load i8*, i8** %3, align 8, !dbg !1339
  %5 = icmp ne i8* %4, null, !dbg !1340
  %6 = xor i1 %5, true, !dbg !1340
  %7 = xor i1 %6, true, !dbg !1341
  ret i1 %7, !dbg !1342
}

declare void @ipvs_stop() #2

declare void @reset_interface_queue() #2

declare void @reset_next_rule_priority() #2

declare void @free_vrrp_data(%struct._vrrp_data*) #2

declare void @free_global_data(%struct._data*) #2

declare void @free_old_interface_queue() #2

declare %struct._thread* @thread_add_start_terminate_event(%struct._thread_master*, i32 (%struct._thread*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @start_vrrp_termination_thread(%struct._thread*) #0 !dbg !1343 {
  %2 = alloca %struct._thread*, align 8
  store %struct._thread* %0, %struct._thread** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %2, metadata !1344, metadata !300), !dbg !1345
  store i8 1, i8* @two_phase_terminate, align 1, !dbg !1346
  call void @vrrp_terminate_phase1(i1 zeroext true), !dbg !1347
  ret i32 0, !dbg !1348
}

; Function Attrs: nounwind uwtable
define internal void @vrrp_terminate_phase1(i1 zeroext) #0 !dbg !1349 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %2, align 1
  call void @llvm.dbg.declare(metadata i8* %2, metadata !1352, metadata !300), !dbg !1353
  %4 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !1354
  %5 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %4, i32 0, i32 3, !dbg !1356
  %6 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %5, i32 0, i32 0, !dbg !1357
  %7 = load %struct.rb_node*, %struct.rb_node** %6, align 8, !dbg !1357
  %8 = icmp ne %struct.rb_node* %7, null, !dbg !1354
  br i1 %8, label %9, label %11, !dbg !1358

; <label>:9:                                      ; preds = %1
  %10 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !1359
  call void @script_killall(%struct._thread_master* %10, i32 15, i1 zeroext true), !dbg !1360
  br label %11, !dbg !1360

; <label>:11:                                     ; preds = %9, %1
  call void @kernel_netlink_close_monitor(), !dbg !1361
  %12 = call zeroext i1 @__test_bit(i32 4, i64* @debug), !dbg !1362
  br i1 %12, label %14, label %13, !dbg !1364

; <label>:13:                                     ; preds = %11
  call void @restore_vrrp_interfaces(), !dbg !1365
  br label %14, !dbg !1365

; <label>:14:                                     ; preds = %13, %11
  %15 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1366
  %16 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %15, i32 0, i32 10, !dbg !1368
  %17 = load %struct._list*, %struct._list** %16, align 8, !dbg !1368
  %18 = icmp ne %struct._list* %17, null, !dbg !1366
  br i1 %18, label %19, label %20, !dbg !1369

; <label>:19:                                     ; preds = %14
  call void @stop_track_files(), !dbg !1370
  br label %20, !dbg !1370

; <label>:20:                                     ; preds = %19, %14
  call void @iptables_fini(), !dbg !1371
  %21 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1372
  %22 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %21, i32 0, i32 3, !dbg !1373
  %23 = load %struct._list*, %struct._list** %22, align 8, !dbg !1373
  call void @netlink_rulelist(%struct._list* %23, i32 0, i1 zeroext false), !dbg !1374
  %24 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1375
  %25 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %24, i32 0, i32 2, !dbg !1376
  %26 = load %struct._list*, %struct._list** %25, align 8, !dbg !1376
  call void @netlink_rtlist(%struct._list* %26, i32 0), !dbg !1377
  %27 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1378
  %28 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %27, i32 0, i32 1, !dbg !1379
  %29 = load %struct._list*, %struct._list** %28, align 8, !dbg !1379
  %30 = call zeroext i1 @netlink_iplist(%struct._list* %29, i32 0, i1 zeroext false), !dbg !1380
  %31 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1381
  call void @vrrp_dispatcher_release(%struct._vrrp_data* %31), !dbg !1382
  call void @notify_shutdown(), !dbg !1383
  %32 = load i8, i8* %2, align 1, !dbg !1384
  %33 = trunc i8 %32 to i1, !dbg !1384
  br i1 %33, label %34, label %72, !dbg !1386

; <label>:34:                                     ; preds = %20
  %35 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1387
  %36 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %35, i32 0, i32 5, !dbg !1390
  %37 = load %struct._list*, %struct._list** %36, align 8, !dbg !1390
  %38 = icmp eq %struct._list* %37, null, !dbg !1391
  br i1 %38, label %58, label %39, !dbg !1392

; <label>:39:                                     ; preds = %34
  %40 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1393
  %41 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %40, i32 0, i32 5, !dbg !1395
  %42 = load %struct._list*, %struct._list** %41, align 8, !dbg !1395
  %43 = getelementptr inbounds %struct._list, %struct._list* %42, i32 0, i32 0, !dbg !1396
  %44 = load %struct._element*, %struct._element** %43, align 8, !dbg !1396
  %45 = icmp eq %struct._element* %44, null, !dbg !1397
  br i1 %45, label %46, label %53, !dbg !1398

; <label>:46:                                     ; preds = %39
  %47 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1399
  %48 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %47, i32 0, i32 5, !dbg !1401
  %49 = load %struct._list*, %struct._list** %48, align 8, !dbg !1401
  %50 = getelementptr inbounds %struct._list, %struct._list* %49, i32 0, i32 1, !dbg !1402
  %51 = load %struct._element*, %struct._element** %50, align 8, !dbg !1402
  %52 = icmp eq %struct._element* %51, null, !dbg !1403
  br i1 %52, label %58, label %53, !dbg !1404

; <label>:53:                                     ; preds = %46, %39
  %54 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !1405
  %55 = call %struct._thread* @thread_add_timer_shutdown(%struct._thread_master* %54, i32 (%struct._thread*)* @vrrp_shutdown_timer_thread, i8* null, i64 1000000), !dbg !1407
  %56 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !1408
  %57 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %56, i32 0, i32 18, !dbg !1409
  store i8 1, i8* %57, align 8, !dbg !1410
  br label %71, !dbg !1411

; <label>:58:                                     ; preds = %46, %34
  %59 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !1412
  %60 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %59, i32 0, i32 3, !dbg !1414
  %61 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %60, i32 0, i32 0, !dbg !1415
  %62 = load %struct.rb_node*, %struct.rb_node** %61, align 8, !dbg !1415
  %63 = icmp ne %struct.rb_node* %62, null, !dbg !1412
  br i1 %63, label %64, label %67, !dbg !1416

; <label>:64:                                     ; preds = %58
  %65 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !1417
  %66 = call %struct._thread* @thread_add_timer_shutdown(%struct._thread_master* %65, i32 (%struct._thread*)* @vrrp_shutdown_backstop_thread, i8* null, i64 1000000), !dbg !1419
  br label %70, !dbg !1420

; <label>:67:                                     ; preds = %58
  %68 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !1421
  %69 = call %struct._thread* @thread_add_terminate_event(%struct._thread_master* %68), !dbg !1422
  br label %70

; <label>:70:                                     ; preds = %67, %64
  br label %71

; <label>:71:                                     ; preds = %70, %53
  br label %72, !dbg !1423

; <label>:72:                                     ; preds = %71, %20
  ret void, !dbg !1424
}

declare void @kernel_netlink_close_monitor() #2

declare void @restore_vrrp_interfaces() #2

declare void @iptables_fini() #2

declare void @netlink_rulelist(%struct._list*, i32, i1 zeroext) #2

declare void @netlink_rtlist(%struct._list*, i32) #2

declare zeroext i1 @netlink_iplist(%struct._list*, i32, i1 zeroext) #2

declare void @notify_shutdown() #2

declare %struct._thread* @thread_add_timer_shutdown(%struct._thread_master*, i32 (%struct._thread*)*, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @vrrp_shutdown_timer_thread(%struct._thread*) #0 !dbg !1425 {
  %2 = alloca %struct._thread*, align 8
  store %struct._thread* %0, %struct._thread** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %2, metadata !1426, metadata !300), !dbg !1427
  %3 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1428
  %4 = getelementptr inbounds %struct._thread, %struct._thread* %3, i32 0, i32 2, !dbg !1429
  %5 = load %struct._thread_master*, %struct._thread_master** %4, align 8, !dbg !1429
  %6 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %5, i32 0, i32 18, !dbg !1430
  store i8 0, i8* %6, align 8, !dbg !1431
  %7 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1432
  %8 = getelementptr inbounds %struct._thread, %struct._thread* %7, i32 0, i32 2, !dbg !1434
  %9 = load %struct._thread_master*, %struct._thread_master** %8, align 8, !dbg !1434
  %10 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %9, i32 0, i32 3, !dbg !1435
  %11 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %10, i32 0, i32 0, !dbg !1436
  %12 = load %struct.rb_node*, %struct.rb_node** %11, align 8, !dbg !1436
  %13 = icmp ne %struct.rb_node* %12, null, !dbg !1432
  br i1 %13, label %14, label %19, !dbg !1437

; <label>:14:                                     ; preds = %1
  %15 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1438
  %16 = getelementptr inbounds %struct._thread, %struct._thread* %15, i32 0, i32 2, !dbg !1439
  %17 = load %struct._thread_master*, %struct._thread_master** %16, align 8, !dbg !1439
  %18 = call %struct._thread* @thread_add_timer_shutdown(%struct._thread_master* %17, i32 (%struct._thread*)* @vrrp_shutdown_backstop_thread, i8* null, i64 100000), !dbg !1440
  br label %24, !dbg !1440

; <label>:19:                                     ; preds = %1
  %20 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1441
  %21 = getelementptr inbounds %struct._thread, %struct._thread* %20, i32 0, i32 2, !dbg !1442
  %22 = load %struct._thread_master*, %struct._thread_master** %21, align 8, !dbg !1442
  %23 = call %struct._thread* @thread_add_terminate_event(%struct._thread_master* %22), !dbg !1443
  br label %24

; <label>:24:                                     ; preds = %19, %14
  ret i32 0, !dbg !1444
}

; Function Attrs: nounwind uwtable
define internal i32 @vrrp_shutdown_backstop_thread(%struct._thread*) #0 !dbg !1445 {
  %2 = alloca %struct._thread*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._thread*, align 8
  %5 = alloca %struct.rb_node*, align 8
  %6 = alloca %struct._thread*, align 8
  %7 = alloca %struct.rb_node*, align 8
  %8 = alloca %struct._thread*, align 8
  store %struct._thread* %0, %struct._thread** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %2, metadata !1446, metadata !300), !dbg !1447
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1448, metadata !300), !dbg !1449
  store i32 0, i32* %3, align 4, !dbg !1449
  call void @llvm.dbg.declare(metadata %struct._thread** %4, metadata !1450, metadata !300), !dbg !1451
  %9 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1452
  %10 = getelementptr inbounds %struct._thread, %struct._thread* %9, i32 0, i32 2, !dbg !1454
  %11 = load %struct._thread_master*, %struct._thread_master** %10, align 8, !dbg !1454
  %12 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %11, i32 0, i32 3, !dbg !1455
  %13 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %12, i32 0, i32 0, !dbg !1456
  %14 = load %struct.rb_node*, %struct.rb_node** %13, align 8, !dbg !1456
  %15 = icmp ne %struct.rb_node* %14, null, !dbg !1452
  br i1 %15, label %16, label %20, !dbg !1457

; <label>:16:                                     ; preds = %1
  %17 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1458
  %18 = getelementptr inbounds %struct._thread, %struct._thread* %17, i32 0, i32 2, !dbg !1459
  %19 = load %struct._thread_master*, %struct._thread_master** %18, align 8, !dbg !1459
  call void @script_killall(%struct._thread_master* %19, i32 9, i1 zeroext true), !dbg !1460
  br label %20, !dbg !1460

; <label>:20:                                     ; preds = %16, %1
  %21 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1461
  %22 = getelementptr inbounds %struct._thread, %struct._thread* %21, i32 0, i32 2, !dbg !1463
  %23 = load %struct._thread_master*, %struct._thread_master** %22, align 8, !dbg !1463
  %24 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %23, i32 0, i32 3, !dbg !1464
  %25 = call %struct.rb_node* @rb_first(%struct.rb_root* %24), !dbg !1465
  %26 = icmp ne %struct.rb_node* %25, null, !dbg !1465
  br i1 %26, label %27, label %38, !dbg !1466

; <label>:27:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata %struct.rb_node** %5, metadata !1467, metadata !300), !dbg !1471
  %28 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1472
  %29 = getelementptr inbounds %struct._thread, %struct._thread* %28, i32 0, i32 2, !dbg !1474
  %30 = load %struct._thread_master*, %struct._thread_master** %29, align 8, !dbg !1474
  %31 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %30, i32 0, i32 3, !dbg !1475
  %32 = call %struct.rb_node* @rb_first(%struct.rb_root* %31), !dbg !1476
  store %struct.rb_node* %32, %struct.rb_node** %5, align 8, !dbg !1477
  %33 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !1478
  %34 = bitcast %struct.rb_node* %33 to i8*, !dbg !1479
  %35 = getelementptr inbounds i8, i8* %34, i64 -72, !dbg !1480
  %36 = bitcast i8* %35 to %struct._thread*, !dbg !1481
  store %struct._thread* %36, %struct._thread** %6, align 8, !dbg !1482
  %37 = load %struct._thread*, %struct._thread** %6, align 8, !dbg !1483
  br label %39, !dbg !1484

; <label>:38:                                     ; preds = %20
  br label %39, !dbg !1485

; <label>:39:                                     ; preds = %38, %27
  %40 = phi %struct._thread* [ %37, %27 ], [ null, %38 ], !dbg !1487
  store %struct._thread* %40, %struct._thread** %4, align 8, !dbg !1489
  br label %41, !dbg !1490

; <label>:41:                                     ; preds = %64, %39
  %42 = load %struct._thread*, %struct._thread** %4, align 8, !dbg !1491
  %43 = icmp ne %struct._thread* %42, null, !dbg !1494
  br i1 %43, label %44, label %66, !dbg !1494

; <label>:44:                                     ; preds = %41
  %45 = load i32, i32* %3, align 4, !dbg !1495
  %46 = add nsw i32 %45, 1, !dbg !1495
  store i32 %46, i32* %3, align 4, !dbg !1495
  br label %47, !dbg !1496

; <label>:47:                                     ; preds = %44
  %48 = load %struct._thread*, %struct._thread** %4, align 8, !dbg !1497
  %49 = getelementptr inbounds %struct._thread, %struct._thread* %48, i32 0, i32 8, !dbg !1499
  %50 = bitcast %union.anon.0* %49 to %struct.rb_node*, !dbg !1499
  %51 = call %struct.rb_node* @rb_next(%struct.rb_node* %50), !dbg !1500
  %52 = icmp ne %struct.rb_node* %51, null, !dbg !1500
  br i1 %52, label %53, label %63, !dbg !1501

; <label>:53:                                     ; preds = %47
  call void @llvm.dbg.declare(metadata %struct.rb_node** %7, metadata !1502, metadata !300), !dbg !1504
  %54 = load %struct._thread*, %struct._thread** %4, align 8, !dbg !1505
  %55 = getelementptr inbounds %struct._thread, %struct._thread* %54, i32 0, i32 8, !dbg !1507
  %56 = bitcast %union.anon.0* %55 to %struct.rb_node*, !dbg !1507
  %57 = call %struct.rb_node* @rb_next(%struct.rb_node* %56), !dbg !1508
  store %struct.rb_node* %57, %struct.rb_node** %7, align 8, !dbg !1509
  %58 = load %struct.rb_node*, %struct.rb_node** %7, align 8, !dbg !1510
  %59 = bitcast %struct.rb_node* %58 to i8*, !dbg !1511
  %60 = getelementptr inbounds i8, i8* %59, i64 -72, !dbg !1512
  %61 = bitcast i8* %60 to %struct._thread*, !dbg !1513
  store %struct._thread* %61, %struct._thread** %8, align 8, !dbg !1514
  %62 = load %struct._thread*, %struct._thread** %8, align 8, !dbg !1515
  br label %64, !dbg !1516

; <label>:63:                                     ; preds = %47
  br label %64, !dbg !1517

; <label>:64:                                     ; preds = %63, %53
  %65 = phi %struct._thread* [ %62, %53 ], [ null, %63 ], !dbg !1519
  store %struct._thread* %65, %struct._thread** %4, align 8, !dbg !1521
  br label %41, !dbg !1522, !llvm.loop !1523

; <label>:66:                                     ; preds = %41
  %67 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1525
  %68 = getelementptr inbounds %struct._thread, %struct._thread* %67, i32 0, i32 2, !dbg !1526
  %69 = load %struct._thread_master*, %struct._thread_master** %68, align 8, !dbg !1526
  %70 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %69, i32 0, i32 18, !dbg !1527
  %71 = load i8, i8* %70, align 8, !dbg !1527
  %72 = trunc i8 %71 to i1, !dbg !1527
  %73 = select i1 %72, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), !dbg !1525
  %74 = load i32, i32* %3, align 4, !dbg !1528
  call void (i32, i8*, ...) @log_message(i32 3, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.8, i32 0, i32 0), i8* %73, i32 %74), !dbg !1529
  %75 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1530
  %76 = getelementptr inbounds %struct._thread, %struct._thread* %75, i32 0, i32 2, !dbg !1531
  %77 = load %struct._thread_master*, %struct._thread_master** %76, align 8, !dbg !1531
  %78 = call %struct._thread* @thread_add_terminate_event(%struct._thread_master* %77), !dbg !1532
  ret i32 0, !dbg !1533
}

declare %struct._thread* @thread_add_terminate_event(%struct._thread_master*) #2

declare %struct.rb_node* @rb_first(%struct.rb_root*) #2

declare %struct.rb_node* @rb_next(%struct.rb_node*) #2

; Function Attrs: nounwind uwtable
define internal i32 @print_vrrp_data(%struct._thread*) #0 !dbg !1534 {
  %2 = alloca %struct._thread*, align 8
  store %struct._thread* %0, %struct._thread** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %2, metadata !1535, metadata !300), !dbg !1536
  call void @vrrp_print_data(), !dbg !1537
  ret i32 0, !dbg !1538
}

declare void @vrrp_print_data() #2

; Function Attrs: nounwind uwtable
define internal i32 @print_vrrp_stats(%struct._thread*) #0 !dbg !1539 {
  %2 = alloca %struct._thread*, align 8
  store %struct._thread* %0, %struct._thread** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %2, metadata !1540, metadata !300), !dbg !1541
  call void @vrrp_print_stats(), !dbg !1542
  ret i32 0, !dbg !1543
}

declare void @vrrp_print_stats() #2

declare void @clear_summary_flags() #2

declare void @kernel_netlink_init() #2

declare %struct._data* @alloc_global_data() #2

declare %struct._interface* @if_get_by_ifname(i8*, i32) #2

declare %struct._vrrp_data* @alloc_vrrp_data() #2

; Function Attrs: nounwind uwtable
define internal void @stop_vrrp(i32) #0 !dbg !1544 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1547, metadata !300), !dbg !1548
  %3 = call zeroext i1 @__test_bit(i32 11, i64* @debug), !dbg !1549
  br i1 %3, label %4, label %5, !dbg !1551

; <label>:4:                                      ; preds = %1
  ret void, !dbg !1552

; <label>:5:                                      ; preds = %1
  call void @vrrp_terminate_phase1(i1 zeroext false), !dbg !1553
  %6 = load i32, i32* %2, align 4, !dbg !1554
  %7 = call i32 @vrrp_terminate_phase2(i32 %6), !dbg !1555
  %8 = load i32, i32* %2, align 4, !dbg !1556
  call void @exit(i32 %8) #8, !dbg !1557
  unreachable, !dbg !1557
}

declare void @init_data(i8*, %struct._vector* ()*) #2

declare %struct._vector* @vrrp_init_keywords() #2

declare void @report_config_error(i32, i8*, ...) #2

declare void @init_global_data(%struct._data*) #2

declare { i64, i64 } @set_time_now() #2

declare i32 @ipvs_start() #2

declare void @ipvs_set_timeouts(i32, i32, i32) #2

declare void @kernel_netlink_set_recv_bufs() #2

declare void @clear_diff_saddresses() #2

declare void @clear_diff_srules() #2

declare void @clear_diff_sroutes() #2

declare void @clear_diff_script() #2

declare zeroext i1 @vrrp_complete_init() #2

declare void @gratuitous_arp_init() #2

declare void @gratuitous_arp_close() #2

declare void @ndisc_init() #2

declare void @ndisc_close() #2

declare void @iptables_init() #2

declare void @init_track_files(%struct._list*) #2

declare void @iptables_cleanup() #2

declare void @iptables_startup(i1 zeroext) #2

declare void @vrrp_restore_interfaces_startup() #2

declare void @clear_diff_vrrp() #2

declare void @dump_data_vrrp(%struct._IO_FILE*) #2

declare i32 @vrrp_dispatcher_init(%struct._thread*) #2

declare void @set_process_priorities(i32, i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal void @set_vrrp_max_fds() #0 !dbg !1558 {
  %1 = alloca %struct.rlimit, align 8
  %2 = alloca %struct.rlimit, align 8
  call void @llvm.dbg.declare(metadata %struct.rlimit* %1, metadata !1559, metadata !300), !dbg !1566
  call void @llvm.dbg.declare(metadata %struct.rlimit* %2, metadata !1567, metadata !300), !dbg !1568
  %3 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1569
  %4 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %3, i32 0, i32 5, !dbg !1571
  %5 = load %struct._list*, %struct._list** %4, align 8, !dbg !1571
  %6 = icmp ne %struct._list* %5, null, !dbg !1569
  br i1 %6, label %8, label %7, !dbg !1572

; <label>:7:                                      ; preds = %0
  br label %45, !dbg !1573

; <label>:8:                                      ; preds = %0
  %9 = call i32 @getrlimit(i32 7, %struct.rlimit* %1) #7, !dbg !1574
  %10 = icmp eq i32 %9, -1, !dbg !1576
  br i1 %10, label %11, label %14, !dbg !1577

; <label>:11:                                     ; preds = %8
  %12 = call i32* @__errno_location() #1, !dbg !1578
  %13 = load i32, i32* %12, align 4, !dbg !1580
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i32 0, i32 0), i32 %13), !dbg !1581
  br label %45, !dbg !1583

; <label>:14:                                     ; preds = %8
  %15 = load %struct._vrrp_data*, %struct._vrrp_data** @vrrp_data, align 8, !dbg !1584
  %16 = getelementptr inbounds %struct._vrrp_data, %struct._vrrp_data* %15, i32 0, i32 5, !dbg !1585
  %17 = load %struct._list*, %struct._list** %16, align 8, !dbg !1585
  %18 = getelementptr inbounds %struct._list, %struct._list* %17, i32 0, i32 2, !dbg !1586
  %19 = load i32, i32* %18, align 8, !dbg !1586
  %20 = mul i32 %19, 2, !dbg !1587
  %21 = add i32 %20, 21, !dbg !1588
  %22 = add i32 %21, 20, !dbg !1589
  %23 = zext i32 %22 to i64, !dbg !1590
  %24 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %2, i32 0, i32 0, !dbg !1591
  store i64 %23, i64* %24, align 8, !dbg !1592
  %25 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %2, i32 0, i32 0, !dbg !1593
  %26 = load i64, i64* %25, align 8, !dbg !1593
  %27 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %1, i32 0, i32 0, !dbg !1595
  %28 = load i64, i64* %27, align 8, !dbg !1595
  %29 = icmp ule i64 %26, %28, !dbg !1596
  br i1 %29, label %30, label %31, !dbg !1597

; <label>:30:                                     ; preds = %14
  br label %45, !dbg !1598

; <label>:31:                                     ; preds = %14
  %32 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %2, i32 0, i32 0, !dbg !1599
  %33 = load i64, i64* %32, align 8, !dbg !1599
  %34 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %2, i32 0, i32 1, !dbg !1600
  store i64 %33, i64* %34, align 8, !dbg !1601
  %35 = call i32 @setrlimit(i32 7, %struct.rlimit* %2) #7, !dbg !1602
  %36 = icmp eq i32 %35, -1, !dbg !1604
  br i1 %36, label %37, label %42, !dbg !1605

; <label>:37:                                     ; preds = %31
  %38 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %2, i32 0, i32 0, !dbg !1606
  %39 = load i64, i64* %38, align 8, !dbg !1606
  %40 = call i32* @__errno_location() #1, !dbg !1608
  %41 = load i32, i32* %40, align 4, !dbg !1609
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.16, i32 0, i32 0), i64 %39, i32 %41), !dbg !1610
  br label %45, !dbg !1612

; <label>:42:                                     ; preds = %31
  %43 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %2, i32 0, i32 0, !dbg !1613
  %44 = load i64, i64* %43, align 8, !dbg !1613
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i32 0, i32 0), i64 %44), !dbg !1614
  call void @set_child_rlimit(i32 7, %struct.rlimit* %1), !dbg !1615
  br label %45, !dbg !1616

; <label>:45:                                     ; preds = %42, %37, %30, %11, %7
  ret void, !dbg !1617
}

; Function Attrs: nounwind
declare i32 @getrlimit(i32, %struct.rlimit*) #3

; Function Attrs: nounwind
declare i32 @setrlimit(i32, %struct.rlimit*) #3

declare void @set_child_rlimit(i32, %struct.rlimit*) #2

declare void @shutdown_vrrp_instances() #2

declare void @kernel_netlink_close_cmd() #2

declare void @free_vrrp_buffer() #2

declare void @free_interface_queue() #2

declare void @free_parent_mallocs_exit() #2

; Function Attrs: nounwind
declare i32 @getrusage(i32, %struct.rusage*) #3

declare void @close_log_file() #2

declare void @closelog() #2

; Function Attrs: nounwind
declare void @free(i8*) #3

declare void @close_std_fd() #2

declare void @pidfile_rm(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!292, !293}
!llvm.ident = !{!294}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !102, globals: !286)
!1 = !DIFile(filename: "[inter]keepalived--vrrp--vrrp_daemon.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!2 = !{!3, !9, !24, !44, !52, !59, !75, !97}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 152, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../lib/scheduler.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "PROG_TYPE_PARENT", value: 0)
!7 = !DIEnumerator(name: "PROG_TYPE_VRRP", value: 1)
!8 = !DIEnumerator(name: "PROG_TYPE_CHECKER", value: 2)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "global_bits", file: !10, line: 53, size: 32, align: 32, elements: !11)
!10 = !DIFile(filename: "../../lib/bitops.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23}
!12 = !DIEnumerator(name: "LOG_CONSOLE_BIT", value: 0)
!13 = !DIEnumerator(name: "NO_SYSLOG_BIT", value: 1)
!14 = !DIEnumerator(name: "DONT_FORK_BIT", value: 2)
!15 = !DIEnumerator(name: "DUMP_CONF_BIT", value: 3)
!16 = !DIEnumerator(name: "DONT_RELEASE_VRRP_BIT", value: 4)
!17 = !DIEnumerator(name: "RELEASE_VIPS_BIT", value: 5)
!18 = !DIEnumerator(name: "DONT_RELEASE_IPVS_BIT", value: 6)
!19 = !DIEnumerator(name: "LOG_DETAIL_BIT", value: 7)
!20 = !DIEnumerator(name: "LOG_EXTRA_DETAIL_BIT", value: 8)
!21 = !DIEnumerator(name: "DONT_RESPAWN_BIT", value: 9)
!22 = !DIEnumerator(name: "LOG_ADDRESS_CHANGES", value: 10)
!23 = !DIEnumerator(name: "CONFIG_TEST_BIT", value: 11)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 41, size: 32, align: 32, elements: !25)
!25 = !{!26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43}
!26 = !DIEnumerator(name: "THREAD_READ", value: 0)
!27 = !DIEnumerator(name: "THREAD_WRITE", value: 1)
!28 = !DIEnumerator(name: "THREAD_TIMER", value: 2)
!29 = !DIEnumerator(name: "THREAD_TIMER_SHUTDOWN", value: 3)
!30 = !DIEnumerator(name: "THREAD_EVENT", value: 4)
!31 = !DIEnumerator(name: "THREAD_CHILD", value: 5)
!32 = !DIEnumerator(name: "THREAD_READY", value: 6)
!33 = !DIEnumerator(name: "THREAD_UNUSED", value: 7)
!34 = !DIEnumerator(name: "THREAD_WRITE_TIMEOUT", value: 8)
!35 = !DIEnumerator(name: "THREAD_READ_TIMEOUT", value: 9)
!36 = !DIEnumerator(name: "THREAD_CHILD_TIMEOUT", value: 10)
!37 = !DIEnumerator(name: "THREAD_TERMINATE_START", value: 11)
!38 = !DIEnumerator(name: "THREAD_TERMINATE", value: 12)
!39 = !DIEnumerator(name: "THREAD_READY_FD", value: 13)
!40 = !DIEnumerator(name: "THREAD_READ_ERROR", value: 14)
!41 = !DIEnumerator(name: "THREAD_WRITE_ERROR", value: 15)
!42 = !DIEnumerator(name: "THREAD_IF_UP", value: 16)
!43 = !DIEnumerator(name: "THREAD_IF_DOWN", value: 17)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "chksum_compatibility", file: !45, line: 173, size: 32, align: 32, elements: !46)
!45 = !DIFile(filename: "./../include/vrrp.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!46 = !{!47, !48, !49, !50, !51}
!47 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_NONE", value: 0)
!48 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_NEVER", value: 1)
!49 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_MIN_COMPAT", value: 2)
!50 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_CONFIG", value: 3)
!51 = !DIEnumerator(name: "CHKSUM_COMPATIBILITY_AUTO", value: 4)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "if_lookup", file: !53, line: 142, size: 32, align: 32, elements: !54)
!53 = !DIFile(filename: "./../include/vrrp_if.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!54 = !{!55, !56, !57, !58}
!55 = !DIEnumerator(name: "IF_NO_CREATE", value: 0)
!56 = !DIEnumerator(name: "IF_CREATE_IF_DYNAMIC", value: 1)
!57 = !DIEnumerator(name: "IF_CREATE_ALWAYS", value: 2)
!58 = !DIEnumerator(name: "IF_CREATE_NETLINK", value: 3)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !60, line: 44, size: 32, align: 32, elements: !61)
!60 = !DIFile(filename: "../../lib/parser.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!61 = !{!62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74}
!62 = !DIEnumerator(name: "CONFIG_OK", value: 0)
!63 = !DIEnumerator(name: "CONFIG_FILE_NOT_FOUND", value: 1)
!64 = !DIEnumerator(name: "CONFIG_BAD_IF", value: 2)
!65 = !DIEnumerator(name: "CONFIG_FATAL", value: 3)
!66 = !DIEnumerator(name: "CONFIG_MULTIPLE_FILES", value: 4)
!67 = !DIEnumerator(name: "CONFIG_UNKNOWN_KEYWORD", value: 5)
!68 = !DIEnumerator(name: "CONFIG_UNEXPECTED_BOB", value: 6)
!69 = !DIEnumerator(name: "CONFIG_MISSING_BOB", value: 7)
!70 = !DIEnumerator(name: "CONFIG_UNMATCHED_QUOTE", value: 8)
!71 = !DIEnumerator(name: "CONFIG_MISSING_PARAMETER", value: 9)
!72 = !DIEnumerator(name: "CONFIG_INVALID_NUMBER", value: 10)
!73 = !DIEnumerator(name: "CONFIG_GENERAL_ERROR", value: 11)
!74 = !DIEnumerator(name: "CONFIG_SECURITY_ERROR", value: 12)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__rlimit_resource", file: !76, line: 31, size: 32, align: 32, elements: !77)
!76 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/resource.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!77 = !{!78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96}
!78 = !DIEnumerator(name: "RLIMIT_CPU", value: 0)
!79 = !DIEnumerator(name: "RLIMIT_FSIZE", value: 1)
!80 = !DIEnumerator(name: "RLIMIT_DATA", value: 2)
!81 = !DIEnumerator(name: "RLIMIT_STACK", value: 3)
!82 = !DIEnumerator(name: "RLIMIT_CORE", value: 4)
!83 = !DIEnumerator(name: "__RLIMIT_RSS", value: 5)
!84 = !DIEnumerator(name: "RLIMIT_NOFILE", value: 7)
!85 = !DIEnumerator(name: "__RLIMIT_OFILE", value: 7)
!86 = !DIEnumerator(name: "RLIMIT_AS", value: 9)
!87 = !DIEnumerator(name: "__RLIMIT_NPROC", value: 6)
!88 = !DIEnumerator(name: "__RLIMIT_MEMLOCK", value: 8)
!89 = !DIEnumerator(name: "__RLIMIT_LOCKS", value: 10)
!90 = !DIEnumerator(name: "__RLIMIT_SIGPENDING", value: 11)
!91 = !DIEnumerator(name: "__RLIMIT_MSGQUEUE", value: 12)
!92 = !DIEnumerator(name: "__RLIMIT_NICE", value: 13)
!93 = !DIEnumerator(name: "__RLIMIT_RTPRIO", value: 14)
!94 = !DIEnumerator(name: "__RLIMIT_RTTIME", value: 15)
!95 = !DIEnumerator(name: "__RLIMIT_NLIMITS", value: 16)
!96 = !DIEnumerator(name: "__RLIM_NLIMITS", value: 16)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__rusage_who", file: !76, line: 158, size: 32, align: 32, elements: !98)
!98 = !{!99, !100, !101}
!99 = !DIEnumerator(name: "RUSAGE_SELF", value: 0)
!100 = !DIEnumerator(name: "RUSAGE_CHILDREN", value: -1)
!101 = !DIEnumerator(name: "RUSAGE_THREAD", value: 1)
!102 = !{!103, !104, !174}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_t", file: !4, line: 99, baseType: !106)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread", file: !4, line: 78, size: 768, align: 64, elements: !107)
!107 = !{!108, !110, !112, !250, !255, !256, !266, !279, !281}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !106, file: !4, line: 79, baseType: !109, size: 64, align: 64)
!109 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !106, file: !4, line: 80, baseType: !111, size: 32, align: 32, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_type_t", file: !4, line: 63, baseType: !24)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !106, file: !4, line: 81, baseType: !113, size: 64, align: 64, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_master", file: !4, line: 112, size: 1280, align: 64, elements: !115)
!115 = !{!116, !128, !129, !130, !131, !139, !140, !141, !226, !227, !230, !241, !242, !243, !244, !245, !246, !247, !248}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !114, file: !4, line: 113, baseType: !117, size: 64, align: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_root_t", file: !118, line: 109, baseType: !119)
!118 = !DIFile(filename: "../../lib/rbtree.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !118, line: 106, size: 64, align: 64, elements: !120)
!120 = !{!121}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !119, file: !118, line: 108, baseType: !122, size: 64, align: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !118, line: 97, size: 192, align: 64, elements: !124)
!124 = !{!125, !126, !127}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "rb_parent_color", scope: !123, file: !118, line: 99, baseType: !109, size: 64, align: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !123, file: !118, line: 102, baseType: !122, size: 64, align: 64, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !123, file: !118, line: 103, baseType: !122, size: 64, align: 64, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !114, file: !4, line: 114, baseType: !117, size: 64, align: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !114, file: !4, line: 115, baseType: !117, size: 64, align: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !114, file: !4, line: 116, baseType: !117, size: 64, align: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !114, file: !4, line: 117, baseType: !132, size: 128, align: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "list_head_t", file: !133, line: 62, baseType: !134)
!133 = !DIFile(filename: "../../lib/list_head.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !133, line: 60, size: 128, align: 64, elements: !135)
!135 = !{!136, !138}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !134, file: !133, line: 61, baseType: !137, size: 64, align: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !134, file: !133, line: 61, baseType: !137, size: 64, align: 64, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !114, file: !4, line: 121, baseType: !132, size: 128, align: 64, offset: 384)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "unuse", scope: !114, file: !4, line: 122, baseType: !132, size: 128, align: 64, offset: 512)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "child_pid_index", scope: !114, file: !4, line: 124, baseType: !142, size: 64, align: 64, offset: 640)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !143, line: 31, baseType: !144)
!143 = !DIFile(filename: "../../lib/list.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_list", file: !143, line: 39, size: 320, align: 64, elements: !146)
!146 = !{!147, !154, !155, !157, !161}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !145, file: !143, line: 40, baseType: !148, size: 64, align: 64)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !143, line: 33, size: 192, align: 64, elements: !150)
!150 = !{!151, !152, !153}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !149, file: !143, line: 34, baseType: !148, size: 64, align: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !149, file: !143, line: 35, baseType: !148, size: 64, align: 64, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !149, file: !143, line: 36, baseType: !103, size: 64, align: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !145, file: !143, line: 41, baseType: !148, size: 64, align: 64, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !145, file: !143, line: 42, baseType: !156, size: 32, align: 32, offset: 128)
!156 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !145, file: !143, line: 43, baseType: !158, size: 64, align: 64, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!159 = !DISubroutineType(types: !160)
!160 = !{null, !103}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !145, file: !143, line: 44, baseType: !162, size: 64, align: 64, offset: 256)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{null, !165, !103}
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !167, line: 48, baseType: !168)
!167 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !169, line: 241, size: 1728, align: 64, elements: !170)
!169 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!170 = !{!171, !173, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !194, !195, !196, !197, !201, !203, !205, !209, !212, !214, !215, !216, !217, !218, !221, !222}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !168, file: !169, line: 242, baseType: !172, size: 32, align: 32)
!172 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !168, file: !169, line: 247, baseType: !174, size: 64, align: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!175 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !168, file: !169, line: 248, baseType: !174, size: 64, align: 64, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !168, file: !169, line: 249, baseType: !174, size: 64, align: 64, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !168, file: !169, line: 250, baseType: !174, size: 64, align: 64, offset: 256)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !168, file: !169, line: 251, baseType: !174, size: 64, align: 64, offset: 320)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !168, file: !169, line: 252, baseType: !174, size: 64, align: 64, offset: 384)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !168, file: !169, line: 253, baseType: !174, size: 64, align: 64, offset: 448)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !168, file: !169, line: 254, baseType: !174, size: 64, align: 64, offset: 512)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !168, file: !169, line: 256, baseType: !174, size: 64, align: 64, offset: 576)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !168, file: !169, line: 257, baseType: !174, size: 64, align: 64, offset: 640)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !168, file: !169, line: 258, baseType: !174, size: 64, align: 64, offset: 704)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !168, file: !169, line: 260, baseType: !187, size: 64, align: 64, offset: 768)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !169, line: 156, size: 192, align: 64, elements: !189)
!189 = !{!190, !191, !193}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !188, file: !169, line: 157, baseType: !187, size: 64, align: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !188, file: !169, line: 158, baseType: !192, size: 64, align: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64, align: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !188, file: !169, line: 162, baseType: !172, size: 32, align: 32, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !168, file: !169, line: 262, baseType: !192, size: 64, align: 64, offset: 832)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !168, file: !169, line: 264, baseType: !172, size: 32, align: 32, offset: 896)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !168, file: !169, line: 268, baseType: !172, size: 32, align: 32, offset: 928)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !168, file: !169, line: 270, baseType: !198, size: 64, align: 64, offset: 960)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !199, line: 131, baseType: !200)
!199 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!200 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !168, file: !169, line: 274, baseType: !202, size: 16, align: 16, offset: 1024)
!202 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !168, file: !169, line: 275, baseType: !204, size: 8, align: 8, offset: 1040)
!204 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !168, file: !169, line: 276, baseType: !206, size: 8, align: 8, offset: 1048)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 8, align: 8, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 1)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !168, file: !169, line: 280, baseType: !210, size: 64, align: 64, offset: 1088)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !169, line: 150, baseType: null)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !168, file: !169, line: 289, baseType: !213, size: 64, align: 64, offset: 1152)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !199, line: 132, baseType: !200)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !168, file: !169, line: 297, baseType: !103, size: 64, align: 64, offset: 1216)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !168, file: !169, line: 298, baseType: !103, size: 64, align: 64, offset: 1280)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !168, file: !169, line: 299, baseType: !103, size: 64, align: 64, offset: 1344)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !168, file: !169, line: 300, baseType: !103, size: 64, align: 64, offset: 1408)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !168, file: !169, line: 302, baseType: !219, size: 64, align: 64, offset: 1472)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !220, line: 216, baseType: !109)
!220 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !168, file: !169, line: 303, baseType: !172, size: 32, align: 32, offset: 1536)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !168, file: !169, line: 305, baseType: !223, size: 160, align: 8, offset: 1568)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 160, align: 8, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 20)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "io_events", scope: !114, file: !4, line: 127, baseType: !117, size: 64, align: 64, offset: 704)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_events", scope: !114, file: !4, line: 128, baseType: !228, size: 64, align: 64, offset: 768)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, align: 64)
!229 = !DICompositeType(tag: DW_TAG_structure_type, name: "epoll_event", file: !4, line: 128, flags: DIFlagFwdDecl)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "current_event", scope: !114, file: !4, line: 129, baseType: !231, size: 64, align: 64, offset: 832)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, align: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_event_t", file: !4, line: 109, baseType: !233)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_event", file: !4, line: 102, size: 448, align: 64, elements: !234)
!234 = !{!235, !236, !237, !238, !239}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !233, file: !4, line: 103, baseType: !104, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !233, file: !4, line: 104, baseType: !104, size: 64, align: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !233, file: !4, line: 105, baseType: !109, size: 64, align: 64, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !233, file: !4, line: 106, baseType: !172, size: 32, align: 32, offset: 192)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !233, file: !4, line: 108, baseType: !240, size: 192, align: 64, offset: 256)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_node_t", file: !118, line: 104, baseType: !123)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_size", scope: !114, file: !4, line: 130, baseType: !156, size: 32, align: 32, offset: 896)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_count", scope: !114, file: !4, line: 131, baseType: !156, size: 32, align: 32, offset: 928)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_fd", scope: !114, file: !4, line: 132, baseType: !172, size: 32, align: 32, offset: 960)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "timer_fd", scope: !114, file: !4, line: 135, baseType: !172, size: 32, align: 32, offset: 992)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "timer_thread", scope: !114, file: !4, line: 136, baseType: !104, size: 64, align: 64, offset: 1024)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !114, file: !4, line: 146, baseType: !109, size: 64, align: 64, offset: 1088)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !114, file: !4, line: 147, baseType: !109, size: 64, align: 64, offset: 1152)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_timer_running", scope: !114, file: !4, line: 148, baseType: !249, size: 8, align: 8, offset: 1216)
!249 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !106, file: !4, line: 82, baseType: !251, size: 64, align: 64, offset: 192)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64, align: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{!172, !254}
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, align: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !106, file: !4, line: 83, baseType: !103, size: 64, align: 64, offset: 256)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "sands", scope: !106, file: !4, line: 84, baseType: !257, size: 128, align: 64, offset: 320)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "timeval_t", file: !258, line: 31, baseType: !259)
!258 = !DIFile(filename: "../../lib/timer.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !260, line: 30, size: 128, align: 64, elements: !261)
!260 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!261 = !{!262, !264}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !259, file: !260, line: 32, baseType: !263, size: 64, align: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !199, line: 139, baseType: !200)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !259, file: !260, line: 33, baseType: !265, size: 64, align: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !199, line: 141, baseType: !200)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !106, file: !4, line: 92, baseType: !267, size: 64, align: 32, offset: 448)
!267 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !106, file: !4, line: 85, size: 64, align: 32, elements: !268)
!268 = !{!269, !270, !271}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !267, file: !4, line: 86, baseType: !172, size: 32, align: 32)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !267, file: !4, line: 87, baseType: !172, size: 32, align: 32)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !267, file: !4, line: 91, baseType: !272, size: 64, align: 32)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !267, file: !4, line: 88, size: 64, align: 32, elements: !273)
!273 = !{!274, !278}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !272, file: !4, line: 89, baseType: !275, size: 32, align: 32)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !276, line: 37, baseType: !277)
!276 = !DIFile(filename: "/usr/include/sched.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !199, line: 133, baseType: !172)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !272, file: !4, line: 90, baseType: !172, size: 32, align: 32, offset: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !106, file: !4, line: 93, baseType: !280, size: 64, align: 64, offset: 512)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, scope: !106, file: !4, line: 95, baseType: !282, size: 192, align: 64, offset: 576)
!282 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !106, file: !4, line: 95, size: 192, align: 64, elements: !283)
!283 = !{!284, !285}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !282, file: !4, line: 96, baseType: !240, size: 192, align: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !282, file: !4, line: 97, baseType: !132, size: 128, align: 64)
!286 = !{!287, !288, !290, !291}
!287 = distinct !DIGlobalVariable(name: "garp_delay", scope: !0, file: !53, line: 150, type: !142, isLocal: false, isDefinition: true, variable: %struct._list** @garp_delay)
!288 = distinct !DIGlobalVariable(name: "non_existent_interface_specified", scope: !0, file: !289, line: 86, type: !249, isLocal: false, isDefinition: true, variable: i8* @non_existent_interface_specified)
!289 = !DIFile(filename: "vrrp_daemon.c", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!290 = distinct !DIGlobalVariable(name: "vrrp_syslog_ident", scope: !0, file: !289, line: 102, type: !174, isLocal: true, isDefinition: true, variable: i8** @vrrp_syslog_ident)
!291 = distinct !DIGlobalVariable(name: "two_phase_terminate", scope: !0, file: !289, line: 104, type: !249, isLocal: true, isDefinition: true, variable: i8* @two_phase_terminate)
!292 = !{i32 2, !"Dwarf Version", i32 4}
!293 = !{i32 2, !"Debug Info Version", i32 3}
!294 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!295 = distinct !DISubprogram(name: "start_vrrp_child", scope: !289, file: !289, line: 859, type: !296, isLocal: false, isDefinition: true, scopeLine: 860, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !298)
!296 = !DISubroutineType(types: !297)
!297 = !{!172}
!298 = !{}
!299 = !DILocalVariable(name: "pid", scope: !295, file: !289, line: 862, type: !275)
!300 = !DIExpression()
!301 = !DILocation(line: 862, column: 8, scope: !295)
!302 = !DILocalVariable(name: "syslog_ident", scope: !295, file: !289, line: 863, type: !174)
!303 = !DILocation(line: 863, column: 8, scope: !295)
!304 = !DILocation(line: 866, column: 6, scope: !305)
!305 = distinct !DILexicalBlock(scope: !295, file: !289, line: 866, column: 6)
!306 = !DILocation(line: 866, column: 6, scope: !295)
!307 = !DILocation(line: 867, column: 3, scope: !305)
!308 = !DILocation(line: 869, column: 8, scope: !295)
!309 = !DILocation(line: 869, column: 6, scope: !295)
!310 = !DILocation(line: 871, column: 6, scope: !311)
!311 = distinct !DILexicalBlock(scope: !295, file: !289, line: 871, column: 6)
!312 = !DILocation(line: 871, column: 10, scope: !311)
!313 = !DILocation(line: 871, column: 6, scope: !295)
!314 = !DILocation(line: 873, column: 23, scope: !315)
!315 = distinct !DILexicalBlock(scope: !311, file: !289, line: 871, column: 15)
!316 = !DILocation(line: 873, column: 22, scope: !315)
!317 = !DILocation(line: 873, column: 13, scope: !318)
!318 = !DILexicalBlockFile(scope: !315, file: !289, discriminator: 1)
!319 = !DILocation(line: 872, column: 3, scope: !315)
!320 = !DILocation(line: 874, column: 3, scope: !315)
!321 = !DILocation(line: 875, column: 13, scope: !322)
!322 = distinct !DILexicalBlock(scope: !311, file: !289, line: 875, column: 13)
!323 = !DILocation(line: 875, column: 13, scope: !311)
!324 = !DILocation(line: 876, column: 16, scope: !325)
!325 = distinct !DILexicalBlock(scope: !322, file: !289, line: 875, column: 18)
!326 = !DILocation(line: 876, column: 14, scope: !325)
!327 = !DILocation(line: 878, column: 13, scope: !325)
!328 = !DILocation(line: 877, column: 3, scope: !325)
!329 = !DILocation(line: 881, column: 20, scope: !325)
!330 = !DILocation(line: 882, column: 6, scope: !325)
!331 = !DILocation(line: 881, column: 3, scope: !325)
!332 = !DILocation(line: 884, column: 3, scope: !325)
!333 = !DILocation(line: 887, column: 2, scope: !295)
!334 = !DILocation(line: 894, column: 12, scope: !295)
!335 = !DILocation(line: 896, column: 2, scope: !295)
!336 = !DILocation(line: 909, column: 7, scope: !337)
!337 = distinct !DILexicalBlock(scope: !295, file: !289, line: 909, column: 6)
!338 = !DILocation(line: 909, column: 20, scope: !337)
!339 = !DILocation(line: 911, column: 7, scope: !337)
!340 = !DILocation(line: 911, column: 10, scope: !341)
!341 = !DILexicalBlockFile(scope: !337, file: !289, discriminator: 1)
!342 = !DILocation(line: 911, column: 23, scope: !341)
!343 = !DILocation(line: 913, column: 15, scope: !337)
!344 = !DILocation(line: 914, column: 27, scope: !337)
!345 = !DILocation(line: 914, column: 25, scope: !337)
!346 = !DILocation(line: 909, column: 6, scope: !347)
!347 = !DILexicalBlockFile(scope: !295, file: !289, discriminator: 1)
!348 = !DILocation(line: 915, column: 19, scope: !337)
!349 = !DILocation(line: 915, column: 17, scope: !337)
!350 = !DILocation(line: 915, column: 4, scope: !337)
!351 = !DILocation(line: 917, column: 16, scope: !337)
!352 = !DILocation(line: 919, column: 7, scope: !353)
!353 = distinct !DILexicalBlock(scope: !295, file: !289, line: 919, column: 6)
!354 = !DILocation(line: 919, column: 6, scope: !295)
!355 = !DILocation(line: 920, column: 11, scope: !353)
!356 = !DILocation(line: 920, column: 36, scope: !353)
!357 = !DILocation(line: 920, column: 35, scope: !353)
!358 = !DILocation(line: 920, column: 32, scope: !353)
!359 = !DILocation(line: 921, column: 12, scope: !353)
!360 = !DILocation(line: 921, column: 24, scope: !353)
!361 = !DILocation(line: 921, column: 11, scope: !353)
!362 = !DILocation(line: 921, column: 11, scope: !363)
!363 = !DILexicalBlockFile(scope: !353, file: !289, discriminator: 1)
!364 = !DILocation(line: 921, column: 52, scope: !365)
!365 = !DILexicalBlockFile(scope: !353, file: !289, discriminator: 2)
!366 = !DILocation(line: 921, column: 11, scope: !365)
!367 = !DILocation(line: 921, column: 11, scope: !368)
!368 = !DILexicalBlockFile(scope: !353, file: !289, discriminator: 3)
!369 = !DILocation(line: 920, column: 3, scope: !363)
!370 = !DILocation(line: 923, column: 6, scope: !371)
!371 = distinct !DILexicalBlock(scope: !295, file: !289, line: 923, column: 6)
!372 = !DILocation(line: 923, column: 6, scope: !295)
!373 = !DILocation(line: 924, column: 17, scope: !371)
!374 = !DILocation(line: 927, column: 5, scope: !371)
!375 = !DILocation(line: 927, column: 18, scope: !371)
!376 = !DILocation(line: 931, column: 5, scope: !371)
!377 = !DILocation(line: 931, column: 18, scope: !371)
!378 = !DILocation(line: 924, column: 3, scope: !371)
!379 = !DILocation(line: 937, column: 2, scope: !295)
!380 = !DILocation(line: 940, column: 2, scope: !295)
!381 = !DILocation(line: 941, column: 2, scope: !295)
!382 = !DILocation(line: 944, column: 21, scope: !383)
!383 = distinct !DILexicalBlock(scope: !295, file: !289, line: 944, column: 6)
!384 = !DILocation(line: 944, column: 35, scope: !383)
!385 = !DILocation(line: 944, column: 7, scope: !386)
!386 = !DILexicalBlockFile(scope: !383, file: !289, discriminator: 1)
!387 = !DILocation(line: 944, column: 7, scope: !383)
!388 = !DILocation(line: 944, column: 6, scope: !295)
!389 = !DILocation(line: 946, column: 3, scope: !390)
!390 = distinct !DILexicalBlock(scope: !383, file: !289, line: 944, column: 46)
!391 = !DILocation(line: 947, column: 3, scope: !390)
!392 = !DILocation(line: 951, column: 24, scope: !295)
!393 = !DILocation(line: 951, column: 2, scope: !295)
!394 = !DILocation(line: 952, column: 11, scope: !295)
!395 = !DILocation(line: 952, column: 9, scope: !295)
!396 = !DILocation(line: 958, column: 10, scope: !295)
!397 = !DILocation(line: 962, column: 2, scope: !295)
!398 = !DILocation(line: 970, column: 2, scope: !295)
!399 = !DILocation(line: 985, column: 26, scope: !295)
!400 = !DILocation(line: 985, column: 2, scope: !295)
!401 = !DILocation(line: 992, column: 2, scope: !295)
!402 = !DILocation(line: 995, column: 2, scope: !295)
!403 = !DILocation(line: 996, column: 1, scope: !295)
!404 = distinct !DISubprogram(name: "vrrp_respawn_thread", scope: !289, file: !289, line: 790, type: !405, isLocal: true, isDefinition: true, scopeLine: 791, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !298)
!405 = !DISubroutineType(types: !406)
!406 = !{!172, !104}
!407 = !DILocalVariable(name: "thread", arg: 1, scope: !404, file: !289, line: 790, type: !104)
!408 = !DILocation(line: 790, column: 32, scope: !404)
!409 = !DILocalVariable(name: "pid", scope: !404, file: !289, line: 792, type: !275)
!410 = !DILocation(line: 792, column: 8, scope: !404)
!411 = !DILocation(line: 795, column: 10, scope: !404)
!412 = !DILocation(line: 795, column: 19, scope: !404)
!413 = !DILocation(line: 795, column: 21, scope: !404)
!414 = !DILocation(line: 795, column: 23, scope: !404)
!415 = !DILocation(line: 795, column: 6, scope: !404)
!416 = !DILocation(line: 798, column: 6, scope: !417)
!417 = distinct !DILexicalBlock(scope: !404, file: !289, line: 798, column: 6)
!418 = !DILocation(line: 798, column: 14, scope: !417)
!419 = !DILocation(line: 798, column: 19, scope: !417)
!420 = !DILocation(line: 798, column: 6, scope: !404)
!421 = !DILocation(line: 799, column: 20, scope: !422)
!422 = distinct !DILexicalBlock(scope: !417, file: !289, line: 798, column: 44)
!423 = !DILocation(line: 800, column: 6, scope: !422)
!424 = !DILocation(line: 799, column: 3, scope: !422)
!425 = !DILocation(line: 801, column: 3, scope: !422)
!426 = !DILocation(line: 805, column: 7, scope: !427)
!427 = distinct !DILexicalBlock(scope: !404, file: !289, line: 805, column: 6)
!428 = !DILocation(line: 805, column: 6, scope: !404)
!429 = !DILocation(line: 806, column: 68, scope: !430)
!430 = distinct !DILexicalBlock(scope: !427, file: !289, line: 805, column: 45)
!431 = !DILocation(line: 806, column: 3, scope: !430)
!432 = !DILocation(line: 807, column: 3, scope: !430)
!433 = !DILocation(line: 808, column: 2, scope: !430)
!434 = !DILocation(line: 809, column: 65, scope: !435)
!435 = distinct !DILexicalBlock(scope: !427, file: !289, line: 808, column: 9)
!436 = !DILocation(line: 809, column: 3, scope: !435)
!437 = !DILocation(line: 810, column: 14, scope: !435)
!438 = !DILocation(line: 811, column: 3, scope: !435)
!439 = !DILocation(line: 813, column: 2, scope: !404)
!440 = !DILocation(line: 814, column: 1, scope: !404)
!441 = distinct !DISubprogram(name: "__test_bit", scope: !10, file: !10, line: 47, type: !442, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !298)
!442 = !DISubroutineType(types: !443)
!443 = !{!249, !156, !444}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64, align: 64)
!445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!446 = !DILocalVariable(name: "idx", arg: 1, scope: !441, file: !10, line: 47, type: !156)
!447 = !DILocation(line: 47, column: 39, scope: !441)
!448 = !DILocalVariable(name: "bmap", arg: 2, scope: !441, file: !10, line: 47, type: !444)
!449 = !DILocation(line: 47, column: 65, scope: !441)
!450 = !DILocation(line: 49, column: 19, scope: !441)
!451 = !DILocation(line: 49, column: 18, scope: !441)
!452 = !DILocation(line: 49, column: 24, scope: !441)
!453 = !DILocation(line: 49, column: 12, scope: !441)
!454 = !DILocation(line: 49, column: 68, scope: !441)
!455 = !DILocation(line: 49, column: 67, scope: !441)
!456 = !DILocation(line: 49, column: 73, scope: !441)
!457 = !DILocation(line: 49, column: 63, scope: !441)
!458 = !DILocation(line: 49, column: 56, scope: !441)
!459 = !DILocation(line: 49, column: 10, scope: !441)
!460 = !DILocation(line: 49, column: 9, scope: !441)
!461 = !DILocation(line: 49, column: 2, scope: !441)
!462 = distinct !DISubprogram(name: "vrrp_signal_init", scope: !289, file: !289, line: 677, type: !463, isLocal: true, isDefinition: true, scopeLine: 678, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !298)
!463 = !DISubroutineType(types: !464)
!464 = !{null}
!465 = !DILocation(line: 679, column: 2, scope: !462)
!466 = !DILocation(line: 680, column: 2, scope: !462)
!467 = !DILocation(line: 681, column: 2, scope: !462)
!468 = !DILocation(line: 682, column: 2, scope: !462)
!469 = !DILocation(line: 683, column: 2, scope: !462)
!470 = !DILocation(line: 687, column: 2, scope: !462)
!471 = !DILocation(line: 688, column: 1, scope: !462)
!472 = distinct !DISubprogram(name: "start_vrrp", scope: !289, file: !289, line: 398, type: !463, isLocal: true, isDefinition: true, scopeLine: 399, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !298)
!473 = !DILocation(line: 401, column: 2, scope: !472)
!474 = !DILocation(line: 404, column: 7, scope: !475)
!475 = distinct !DILexicalBlock(scope: !472, file: !289, line: 404, column: 6)
!476 = !DILocation(line: 404, column: 6, scope: !472)
!477 = !DILocation(line: 405, column: 3, scope: !475)
!478 = !DILocation(line: 407, column: 6, scope: !479)
!479 = distinct !DILexicalBlock(scope: !472, file: !289, line: 407, column: 6)
!480 = !DILocation(line: 407, column: 6, scope: !472)
!481 = !DILocation(line: 408, column: 17, scope: !479)
!482 = !DILocation(line: 408, column: 15, scope: !479)
!483 = !DILocation(line: 408, column: 3, scope: !479)
!484 = !DILocation(line: 409, column: 11, scope: !485)
!485 = distinct !DILexicalBlock(scope: !479, file: !289, line: 409, column: 11)
!486 = !DILocation(line: 409, column: 24, scope: !485)
!487 = !DILocation(line: 409, column: 11, scope: !479)
!488 = !DILocation(line: 412, column: 47, scope: !489)
!489 = distinct !DILexicalBlock(scope: !485, file: !289, line: 409, column: 40)
!490 = !DILocation(line: 412, column: 60, scope: !489)
!491 = !DILocation(line: 412, column: 30, scope: !489)
!492 = !DILocation(line: 412, column: 3, scope: !489)
!493 = !DILocation(line: 412, column: 16, scope: !489)
!494 = !DILocation(line: 412, column: 28, scope: !489)
!495 = !DILocation(line: 413, column: 8, scope: !496)
!496 = distinct !DILexicalBlock(scope: !489, file: !289, line: 413, column: 7)
!497 = !DILocation(line: 413, column: 21, scope: !496)
!498 = !DILocation(line: 413, column: 7, scope: !489)
!499 = !DILocation(line: 414, column: 73, scope: !496)
!500 = !DILocation(line: 414, column: 86, scope: !496)
!501 = !DILocation(line: 414, column: 4, scope: !496)
!502 = !DILocation(line: 415, column: 2, scope: !489)
!503 = !DILocation(line: 418, column: 14, scope: !472)
!504 = !DILocation(line: 418, column: 12, scope: !472)
!505 = !DILocation(line: 419, column: 7, scope: !506)
!506 = distinct !DILexicalBlock(scope: !472, file: !289, line: 419, column: 6)
!507 = !DILocation(line: 419, column: 6, scope: !472)
!508 = !DILocation(line: 420, column: 3, scope: !509)
!509 = distinct !DILexicalBlock(scope: !506, file: !289, line: 419, column: 18)
!510 = !DILocation(line: 421, column: 3, scope: !509)
!511 = !DILocation(line: 424, column: 12, scope: !472)
!512 = !DILocation(line: 424, column: 2, scope: !472)
!513 = !DILocation(line: 426, column: 6, scope: !514)
!514 = distinct !DILexicalBlock(scope: !472, file: !289, line: 426, column: 6)
!515 = !DILocation(line: 426, column: 6, scope: !472)
!516 = !DILocation(line: 427, column: 3, scope: !517)
!517 = distinct !DILexicalBlock(scope: !514, file: !289, line: 426, column: 40)
!518 = !DILocation(line: 428, column: 3, scope: !517)
!519 = !DILocation(line: 429, column: 3, scope: !517)
!520 = !DILocation(line: 432, column: 6, scope: !521)
!521 = distinct !DILexicalBlock(scope: !472, file: !289, line: 432, column: 6)
!522 = !DILocation(line: 432, column: 6, scope: !472)
!523 = !DILocation(line: 433, column: 20, scope: !521)
!524 = !DILocation(line: 433, column: 3, scope: !521)
!525 = !DILocation(line: 436, column: 2, scope: !472)
!526 = !DILocation(line: 438, column: 7, scope: !527)
!527 = distinct !DILexicalBlock(scope: !472, file: !289, line: 438, column: 6)
!528 = !DILocation(line: 438, column: 6, scope: !472)
!529 = !DILocation(line: 459, column: 7, scope: !530)
!530 = distinct !DILexicalBlock(scope: !531, file: !289, line: 459, column: 7)
!531 = distinct !DILexicalBlock(scope: !527, file: !289, line: 438, column: 44)
!532 = !DILocation(line: 459, column: 7, scope: !531)
!533 = !DILocation(line: 461, column: 8, scope: !534)
!534 = distinct !DILexicalBlock(scope: !535, file: !289, line: 461, column: 8)
!535 = distinct !DILexicalBlock(scope: !530, file: !289, line: 459, column: 27)
!536 = !DILocation(line: 461, column: 21, scope: !534)
!537 = !DILocation(line: 461, column: 8, scope: !535)
!538 = !DILocation(line: 462, column: 5, scope: !539)
!539 = distinct !DILexicalBlock(scope: !534, file: !289, line: 461, column: 27)
!540 = !DILocation(line: 463, column: 5, scope: !539)
!541 = !DILocation(line: 467, column: 8, scope: !542)
!542 = distinct !DILexicalBlock(scope: !535, file: !289, line: 467, column: 8)
!543 = !DILocation(line: 467, column: 21, scope: !542)
!544 = !DILocation(line: 467, column: 37, scope: !542)
!545 = !DILocation(line: 468, column: 8, scope: !542)
!546 = !DILocation(line: 468, column: 21, scope: !542)
!547 = !DILocation(line: 468, column: 40, scope: !542)
!548 = !DILocation(line: 469, column: 8, scope: !542)
!549 = !DILocation(line: 469, column: 21, scope: !542)
!550 = !DILocation(line: 467, column: 8, scope: !551)
!551 = !DILexicalBlockFile(scope: !535, file: !289, discriminator: 1)
!552 = !DILocation(line: 470, column: 23, scope: !542)
!553 = !DILocation(line: 470, column: 36, scope: !542)
!554 = !DILocation(line: 470, column: 53, scope: !542)
!555 = !DILocation(line: 470, column: 66, scope: !542)
!556 = !DILocation(line: 470, column: 86, scope: !542)
!557 = !DILocation(line: 470, column: 99, scope: !542)
!558 = !DILocation(line: 470, column: 5, scope: !542)
!559 = !DILocation(line: 475, column: 4, scope: !535)
!560 = !DILocation(line: 476, column: 4, scope: !535)
!561 = !DILocation(line: 477, column: 3, scope: !535)
!562 = !DILocation(line: 480, column: 7, scope: !563)
!563 = distinct !DILexicalBlock(scope: !531, file: !289, line: 480, column: 7)
!564 = !DILocation(line: 480, column: 7, scope: !531)
!565 = !DILocation(line: 481, column: 4, scope: !566)
!566 = distinct !DILexicalBlock(scope: !563, file: !289, line: 480, column: 15)
!567 = !DILocation(line: 483, column: 4, scope: !566)
!568 = !DILocation(line: 485, column: 4, scope: !566)
!569 = !DILocation(line: 486, column: 4, scope: !566)
!570 = !DILocation(line: 488, column: 4, scope: !566)
!571 = !DILocation(line: 492, column: 3, scope: !566)
!572 = !DILocation(line: 495, column: 19, scope: !573)
!573 = distinct !DILexicalBlock(scope: !563, file: !289, line: 493, column: 8)
!574 = !DILocation(line: 495, column: 30, scope: !573)
!575 = !DILocation(line: 495, column: 4, scope: !573)
!576 = !DILocation(line: 497, column: 19, scope: !573)
!577 = !DILocation(line: 497, column: 30, scope: !573)
!578 = !DILocation(line: 497, column: 4, scope: !573)
!579 = !DILocation(line: 498, column: 25, scope: !573)
!580 = !DILocation(line: 499, column: 21, scope: !573)
!581 = !DILocation(line: 499, column: 32, scope: !573)
!582 = !DILocation(line: 499, column: 4, scope: !573)
!583 = !DILocation(line: 500, column: 25, scope: !573)
!584 = !DILocation(line: 509, column: 2, scope: !531)
!585 = !DILocation(line: 512, column: 7, scope: !586)
!586 = distinct !DILexicalBlock(scope: !472, file: !289, line: 512, column: 6)
!587 = !DILocation(line: 512, column: 6, scope: !472)
!588 = !DILocation(line: 513, column: 3, scope: !589)
!589 = distinct !DILexicalBlock(scope: !586, file: !289, line: 512, column: 29)
!590 = !DILocation(line: 514, column: 3, scope: !589)
!591 = !DILocation(line: 518, column: 6, scope: !592)
!592 = distinct !DILexicalBlock(scope: !472, file: !289, line: 518, column: 6)
!593 = !DILocation(line: 518, column: 6, scope: !472)
!594 = !DILocation(line: 519, column: 3, scope: !592)
!595 = !DILocation(line: 522, column: 6, scope: !596)
!596 = distinct !DILexicalBlock(scope: !472, file: !289, line: 522, column: 6)
!597 = !DILocation(line: 522, column: 6, scope: !472)
!598 = !DILocation(line: 523, column: 3, scope: !596)
!599 = !DILocation(line: 525, column: 3, scope: !596)
!600 = !DILocation(line: 526, column: 6, scope: !601)
!601 = distinct !DILexicalBlock(scope: !472, file: !289, line: 526, column: 6)
!602 = !DILocation(line: 526, column: 6, scope: !472)
!603 = !DILocation(line: 527, column: 3, scope: !601)
!604 = !DILocation(line: 529, column: 3, scope: !601)
!605 = !DILocation(line: 533, column: 2, scope: !472)
!606 = !DILocation(line: 536, column: 6, scope: !607)
!607 = distinct !DILexicalBlock(scope: !472, file: !289, line: 536, column: 6)
!608 = !DILocation(line: 536, column: 17, scope: !607)
!609 = !DILocation(line: 536, column: 6, scope: !472)
!610 = !DILocation(line: 537, column: 20, scope: !607)
!611 = !DILocation(line: 537, column: 31, scope: !607)
!612 = !DILocation(line: 537, column: 3, scope: !607)
!613 = !DILocation(line: 541, column: 7, scope: !614)
!614 = distinct !DILexicalBlock(scope: !472, file: !289, line: 541, column: 6)
!615 = !DILocation(line: 541, column: 6, scope: !472)
!616 = !DILocation(line: 542, column: 3, scope: !614)
!617 = !DILocation(line: 544, column: 19, scope: !472)
!618 = !DILocation(line: 544, column: 2, scope: !472)
!619 = !DILocation(line: 547, column: 7, scope: !620)
!620 = distinct !DILexicalBlock(scope: !472, file: !289, line: 547, column: 6)
!621 = !DILocation(line: 547, column: 6, scope: !472)
!622 = !DILocation(line: 548, column: 3, scope: !620)
!623 = !DILocation(line: 552, column: 6, scope: !624)
!624 = distinct !DILexicalBlock(scope: !472, file: !289, line: 552, column: 6)
!625 = !DILocation(line: 552, column: 6, scope: !472)
!626 = !DILocation(line: 553, column: 3, scope: !624)
!627 = !DILocation(line: 566, column: 17, scope: !472)
!628 = !DILocation(line: 566, column: 28, scope: !472)
!629 = !DILocation(line: 566, column: 2, scope: !472)
!630 = !DILocation(line: 568, column: 17, scope: !472)
!631 = !DILocation(line: 568, column: 28, scope: !472)
!632 = !DILocation(line: 568, column: 2, scope: !472)
!633 = !DILocation(line: 569, column: 19, scope: !472)
!634 = !DILocation(line: 569, column: 30, scope: !472)
!635 = !DILocation(line: 569, column: 2, scope: !472)
!636 = !DILocation(line: 573, column: 6, scope: !637)
!637 = distinct !DILexicalBlock(scope: !472, file: !289, line: 573, column: 6)
!638 = !DILocation(line: 573, column: 6, scope: !472)
!639 = !DILocation(line: 574, column: 3, scope: !637)
!640 = !DILocation(line: 577, column: 19, scope: !472)
!641 = !DILocation(line: 577, column: 2, scope: !472)
!642 = !DILocation(line: 583, column: 11, scope: !472)
!643 = !DILocation(line: 583, column: 24, scope: !472)
!644 = !DILocation(line: 585, column: 11, scope: !472)
!645 = !DILocation(line: 585, column: 24, scope: !472)
!646 = !DILocation(line: 588, column: 11, scope: !472)
!647 = !DILocation(line: 588, column: 24, scope: !472)
!648 = !DILocation(line: 588, column: 47, scope: !472)
!649 = !DILocation(line: 588, column: 60, scope: !472)
!650 = !DILocation(line: 581, column: 2, scope: !472)
!651 = !DILocation(line: 591, column: 2, scope: !472)
!652 = !DILocation(line: 592, column: 1, scope: !472)
!653 = !DILocation(line: 592, column: 1, scope: !654)
!654 = !DILexicalBlockFile(scope: !472, file: !289, discriminator: 1)
!655 = distinct !DISubprogram(name: "vrrp_terminate_phase2", scope: !289, file: !289, line: 171, type: !656, isLocal: true, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !298)
!656 = !DISubroutineType(types: !657)
!657 = !{!172, !172}
!658 = !DILocalVariable(name: "exit_status", arg: 1, scope: !655, file: !289, line: 171, type: !172)
!659 = !DILocation(line: 171, column: 27, scope: !655)
!660 = !DILocalVariable(name: "usage", scope: !655, file: !289, line: 173, type: !661)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rusage", file: !76, line: 187, size: 1152, align: 64, elements: !662)
!662 = !{!663, !664, !665, !671, !676, !681, !686, !691, !696, !701, !706, !711, !716, !721, !726, !731}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "ru_utime", scope: !661, file: !76, line: 190, baseType: !259, size: 128, align: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "ru_stime", scope: !661, file: !76, line: 192, baseType: !259, size: 128, align: 64, offset: 128)
!665 = !DIDerivedType(tag: DW_TAG_member, scope: !661, file: !76, line: 194, baseType: !666, size: 64, align: 64, offset: 256)
!666 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !661, file: !76, line: 194, size: 64, align: 64, elements: !667)
!667 = !{!668, !669}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "ru_maxrss", scope: !666, file: !76, line: 196, baseType: !200, size: 64, align: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_maxrss_word", scope: !666, file: !76, line: 197, baseType: !670, size: 64, align: 64)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !199, line: 175, baseType: !200)
!671 = !DIDerivedType(tag: DW_TAG_member, scope: !661, file: !76, line: 202, baseType: !672, size: 64, align: 64, offset: 320)
!672 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !661, file: !76, line: 202, size: 64, align: 64, elements: !673)
!673 = !{!674, !675}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "ru_ixrss", scope: !672, file: !76, line: 204, baseType: !200, size: 64, align: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_ixrss_word", scope: !672, file: !76, line: 205, baseType: !670, size: 64, align: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, scope: !661, file: !76, line: 208, baseType: !677, size: 64, align: 64, offset: 384)
!677 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !661, file: !76, line: 208, size: 64, align: 64, elements: !678)
!678 = !{!679, !680}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "ru_idrss", scope: !677, file: !76, line: 210, baseType: !200, size: 64, align: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_idrss_word", scope: !677, file: !76, line: 211, baseType: !670, size: 64, align: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, scope: !661, file: !76, line: 214, baseType: !682, size: 64, align: 64, offset: 448)
!682 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !661, file: !76, line: 214, size: 64, align: 64, elements: !683)
!683 = !{!684, !685}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "ru_isrss", scope: !682, file: !76, line: 216, baseType: !200, size: 64, align: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_isrss_word", scope: !682, file: !76, line: 217, baseType: !670, size: 64, align: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, scope: !661, file: !76, line: 221, baseType: !687, size: 64, align: 64, offset: 512)
!687 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !661, file: !76, line: 221, size: 64, align: 64, elements: !688)
!688 = !{!689, !690}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "ru_minflt", scope: !687, file: !76, line: 223, baseType: !200, size: 64, align: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_minflt_word", scope: !687, file: !76, line: 224, baseType: !670, size: 64, align: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, scope: !661, file: !76, line: 227, baseType: !692, size: 64, align: 64, offset: 576)
!692 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !661, file: !76, line: 227, size: 64, align: 64, elements: !693)
!693 = !{!694, !695}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "ru_majflt", scope: !692, file: !76, line: 229, baseType: !200, size: 64, align: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_majflt_word", scope: !692, file: !76, line: 230, baseType: !670, size: 64, align: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, scope: !661, file: !76, line: 233, baseType: !697, size: 64, align: 64, offset: 640)
!697 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !661, file: !76, line: 233, size: 64, align: 64, elements: !698)
!698 = !{!699, !700}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nswap", scope: !697, file: !76, line: 235, baseType: !200, size: 64, align: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_nswap_word", scope: !697, file: !76, line: 236, baseType: !670, size: 64, align: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, scope: !661, file: !76, line: 240, baseType: !702, size: 64, align: 64, offset: 704)
!702 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !661, file: !76, line: 240, size: 64, align: 64, elements: !703)
!703 = !{!704, !705}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "ru_inblock", scope: !702, file: !76, line: 242, baseType: !200, size: 64, align: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_inblock_word", scope: !702, file: !76, line: 243, baseType: !670, size: 64, align: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, scope: !661, file: !76, line: 246, baseType: !707, size: 64, align: 64, offset: 768)
!707 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !661, file: !76, line: 246, size: 64, align: 64, elements: !708)
!708 = !{!709, !710}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "ru_oublock", scope: !707, file: !76, line: 248, baseType: !200, size: 64, align: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_oublock_word", scope: !707, file: !76, line: 249, baseType: !670, size: 64, align: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, scope: !661, file: !76, line: 252, baseType: !712, size: 64, align: 64, offset: 832)
!712 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !661, file: !76, line: 252, size: 64, align: 64, elements: !713)
!713 = !{!714, !715}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "ru_msgsnd", scope: !712, file: !76, line: 254, baseType: !200, size: 64, align: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_msgsnd_word", scope: !712, file: !76, line: 255, baseType: !670, size: 64, align: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, scope: !661, file: !76, line: 258, baseType: !717, size: 64, align: 64, offset: 896)
!717 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !661, file: !76, line: 258, size: 64, align: 64, elements: !718)
!718 = !{!719, !720}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "ru_msgrcv", scope: !717, file: !76, line: 260, baseType: !200, size: 64, align: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_msgrcv_word", scope: !717, file: !76, line: 261, baseType: !670, size: 64, align: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, scope: !661, file: !76, line: 264, baseType: !722, size: 64, align: 64, offset: 960)
!722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !661, file: !76, line: 264, size: 64, align: 64, elements: !723)
!723 = !{!724, !725}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nsignals", scope: !722, file: !76, line: 266, baseType: !200, size: 64, align: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_nsignals_word", scope: !722, file: !76, line: 267, baseType: !670, size: 64, align: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, scope: !661, file: !76, line: 272, baseType: !727, size: 64, align: 64, offset: 1024)
!727 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !661, file: !76, line: 272, size: 64, align: 64, elements: !728)
!728 = !{!729, !730}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nvcsw", scope: !727, file: !76, line: 274, baseType: !200, size: 64, align: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_nvcsw_word", scope: !727, file: !76, line: 275, baseType: !670, size: 64, align: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, scope: !661, file: !76, line: 279, baseType: !732, size: 64, align: 64, offset: 1088)
!732 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !661, file: !76, line: 279, size: 64, align: 64, elements: !733)
!733 = !{!734, !735}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nivcsw", scope: !732, file: !76, line: 281, baseType: !200, size: 64, align: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "__ru_nivcsw_word", scope: !732, file: !76, line: 282, baseType: !670, size: 64, align: 64)
!736 = !DILocation(line: 173, column: 16, scope: !655)
!737 = !DILocation(line: 180, column: 7, scope: !738)
!738 = distinct !DILexicalBlock(scope: !655, file: !289, line: 180, column: 6)
!739 = !DILocation(line: 180, column: 6, scope: !655)
!740 = !DILocation(line: 181, column: 3, scope: !738)
!741 = !DILocation(line: 204, column: 6, scope: !742)
!742 = distinct !DILexicalBlock(scope: !655, file: !289, line: 204, column: 6)
!743 = !DILocation(line: 204, column: 6, scope: !655)
!744 = !DILocation(line: 206, column: 3, scope: !745)
!745 = distinct !DILexicalBlock(scope: !742, file: !289, line: 204, column: 26)
!746 = !DILocation(line: 207, column: 2, scope: !745)
!747 = !DILocation(line: 210, column: 2, scope: !655)
!748 = !DILocation(line: 211, column: 24, scope: !655)
!749 = !DILocation(line: 211, column: 2, scope: !655)
!750 = !DILocation(line: 212, column: 9, scope: !655)
!751 = !DILocation(line: 213, column: 2, scope: !655)
!752 = !DILocation(line: 214, column: 2, scope: !655)
!753 = !DILocation(line: 221, column: 6, scope: !754)
!754 = distinct !DILexicalBlock(scope: !655, file: !289, line: 221, column: 6)
!755 = !DILocation(line: 221, column: 19, scope: !754)
!756 = !DILocation(line: 221, column: 36, scope: !754)
!757 = !DILocation(line: 221, column: 39, scope: !754)
!758 = !DILocation(line: 221, column: 6, scope: !655)
!759 = !DILocation(line: 222, column: 22, scope: !754)
!760 = !DILocation(line: 222, column: 35, scope: !754)
!761 = !DILocation(line: 222, column: 49, scope: !754)
!762 = !DILocation(line: 222, column: 62, scope: !754)
!763 = !DILocation(line: 222, column: 3, scope: !754)
!764 = !DILocation(line: 224, column: 19, scope: !655)
!765 = !DILocation(line: 224, column: 2, scope: !655)
!766 = !DILocation(line: 225, column: 17, scope: !655)
!767 = !DILocation(line: 225, column: 2, scope: !655)
!768 = !DILocation(line: 226, column: 2, scope: !655)
!769 = !DILocation(line: 227, column: 2, scope: !655)
!770 = !DILocation(line: 228, column: 2, scope: !655)
!771 = !DILocation(line: 234, column: 6, scope: !772)
!772 = distinct !DILexicalBlock(scope: !655, file: !289, line: 234, column: 6)
!773 = !DILocation(line: 234, column: 6, scope: !655)
!774 = !DILocation(line: 235, column: 3, scope: !775)
!775 = distinct !DILexicalBlock(scope: !772, file: !289, line: 234, column: 42)
!776 = !DILocation(line: 236, column: 93, scope: !775)
!777 = !DILocation(line: 236, column: 102, scope: !775)
!778 = !DILocation(line: 236, column: 116, scope: !775)
!779 = !DILocation(line: 236, column: 125, scope: !775)
!780 = !DILocation(line: 236, column: 140, scope: !775)
!781 = !DILocation(line: 236, column: 149, scope: !775)
!782 = !DILocation(line: 236, column: 163, scope: !775)
!783 = !DILocation(line: 236, column: 172, scope: !775)
!784 = !DILocation(line: 236, column: 3, scope: !775)
!785 = !DILocation(line: 237, column: 2, scope: !775)
!786 = !DILocation(line: 239, column: 3, scope: !772)
!787 = !DILocation(line: 241, column: 6, scope: !788)
!788 = distinct !DILexicalBlock(scope: !655, file: !289, line: 241, column: 6)
!789 = !DILocation(line: 241, column: 6, scope: !655)
!790 = !DILocation(line: 242, column: 3, scope: !788)
!791 = !DILocation(line: 243, column: 2, scope: !655)
!792 = !DILocation(line: 246, column: 8, scope: !793)
!793 = distinct !DILexicalBlock(scope: !794, file: !289, line: 246, column: 8)
!794 = distinct !DILexicalBlock(scope: !655, file: !289, line: 246, column: 2)
!795 = !DILocation(line: 246, column: 8, scope: !794)
!796 = !DILocation(line: 246, column: 35, scope: !797)
!797 = !DILexicalBlockFile(scope: !798, file: !289, discriminator: 1)
!798 = distinct !DILexicalBlock(scope: !793, file: !289, line: 246, column: 27)
!799 = !DILocation(line: 246, column: 30, scope: !797)
!800 = !DILocation(line: 246, column: 75, scope: !797)
!801 = !DILocation(line: 246, column: 3, scope: !797)
!802 = !DILocation(line: 251, column: 2, scope: !655)
!803 = !DILocation(line: 254, column: 13, scope: !655)
!804 = !DILocation(line: 254, column: 2, scope: !655)
!805 = !DILocation(line: 256, column: 7, scope: !655)
!806 = !DILocation(line: 256, column: 2, scope: !655)
!807 = !DILocation(line: 257, column: 1, scope: !655)
!808 = distinct !DISubprogram(name: "vrrp_validate_config", scope: !289, file: !289, line: 999, type: !463, isLocal: false, isDefinition: true, scopeLine: 1000, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !298)
!809 = !DILocation(line: 1001, column: 2, scope: !808)
!810 = !DILocation(line: 1002, column: 1, scope: !808)
!811 = distinct !DISubprogram(name: "sigreload_vrrp", scope: !289, file: !289, line: 612, type: !812, isLocal: true, isDefinition: true, scopeLine: 613, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !298)
!812 = !DISubroutineType(types: !813)
!813 = !{null, !103, !172}
!814 = !DILocalVariable(name: "v", arg: 1, scope: !811, file: !289, line: 612, type: !103)
!815 = !DILocation(line: 612, column: 46, scope: !811)
!816 = !DILocalVariable(name: "sig", arg: 2, scope: !811, file: !289, line: 612, type: !172)
!817 = !DILocation(line: 612, column: 77, scope: !811)
!818 = !DILocalVariable(name: "e", scope: !811, file: !289, line: 614, type: !819)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "element", file: !143, line: 30, baseType: !148)
!820 = !DILocation(line: 614, column: 10, scope: !811)
!821 = !DILocalVariable(name: "vrrp", scope: !811, file: !289, line: 615, type: !822)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64, align: 64)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_t", file: !45, line: 310, baseType: !824)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_t", file: !45, line: 183, size: 7040, align: 64, elements: !825)
!825 = !{!826, !829, !830, !880, !902, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !999, !1000, !1001, !1002, !1003, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1075, !1082}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !824, file: !45, line: 184, baseType: !827, size: 16, align: 16)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !828, line: 28, baseType: !202)
!828 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!829 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !824, file: !45, line: 185, baseType: !174, size: 64, align: 64, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !824, file: !45, line: 186, baseType: !831, size: 64, align: 64, offset: 128)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64, align: 64)
!832 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_sgroup_t", file: !45, line: 133, baseType: !833)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_sgroup", file: !45, line: 109, size: 1024, align: 64, elements: !834)
!834 = !{!835, !836, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !874, !875, !876, !877, !878, !879}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "gname", scope: !833, file: !45, line: 110, baseType: !174, size: 64, align: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "iname", scope: !833, file: !45, line: 111, baseType: !837, size: 64, align: 64, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64, align: 64)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "vector_t", file: !839, line: 34, baseType: !840)
!839 = !DIFile(filename: "../../lib/vector.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vector", file: !839, line: 30, size: 128, align: 64, elements: !841)
!841 = !{!842, !843, !844}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !840, file: !839, line: 31, baseType: !156, size: 32, align: 32)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !840, file: !839, line: 32, baseType: !156, size: 32, align: 32, offset: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !840, file: !839, line: 33, baseType: !845, size: 64, align: 64, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "vrrp_instances", scope: !833, file: !45, line: 112, baseType: !142, size: 64, align: 64, offset: 128)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "num_member_fault", scope: !833, file: !45, line: 113, baseType: !156, size: 32, align: 32, offset: 192)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "num_member_init", scope: !833, file: !45, line: 114, baseType: !156, size: 32, align: 32, offset: 224)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !833, file: !45, line: 115, baseType: !172, size: 32, align: 32, offset: 256)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "sgroup_tracking_weight", scope: !833, file: !45, line: 116, baseType: !249, size: 8, align: 8, offset: 288)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "track_ifp", scope: !833, file: !45, line: 119, baseType: !142, size: 64, align: 64, offset: 320)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "track_script", scope: !833, file: !45, line: 120, baseType: !142, size: 64, align: 64, offset: 384)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "track_file", scope: !833, file: !45, line: 121, baseType: !142, size: 64, align: 64, offset: 448)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "track_bfd", scope: !833, file: !45, line: 122, baseType: !142, size: 64, align: 64, offset: 512)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "notify_exec", scope: !833, file: !45, line: 125, baseType: !249, size: 8, align: 8, offset: 576)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "script_backup", scope: !833, file: !45, line: 126, baseType: !857, size: 64, align: 64, offset: 640)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64, align: 64)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "notify_script_t", file: !859, line: 65, baseType: !860)
!859 = !DIFile(filename: "../../lib/notify.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_notify_script", file: !859, line: 59, size: 192, align: 64, elements: !861)
!861 = !{!862, !864, !865, !866, !870}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !860, file: !859, line: 60, baseType: !863, size: 64, align: 64)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64, align: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "num_args", scope: !860, file: !859, line: 61, baseType: !172, size: 32, align: 32, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !860, file: !859, line: 62, baseType: !172, size: 32, align: 32, offset: 96)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !860, file: !859, line: 63, baseType: !867, size: 32, align: 32, offset: 128)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !868, line: 67, baseType: !869)
!868 = !DIFile(filename: "/usr/include/signal.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !199, line: 125, baseType: !156)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !860, file: !859, line: 64, baseType: !871, size: 32, align: 32, offset: 160)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !872, line: 65, baseType: !873)
!872 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !199, line: 126, baseType: !156)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "script_master", scope: !833, file: !45, line: 127, baseType: !857, size: 64, align: 64, offset: 704)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "script_fault", scope: !833, file: !45, line: 128, baseType: !857, size: 64, align: 64, offset: 768)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "script_stop", scope: !833, file: !45, line: 129, baseType: !857, size: 64, align: 64, offset: 832)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "script", scope: !833, file: !45, line: 130, baseType: !857, size: 64, align: 64, offset: 896)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !833, file: !45, line: 131, baseType: !172, size: 32, align: 32, offset: 960)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "last_email_state", scope: !833, file: !45, line: 132, baseType: !172, size: 32, align: 32, offset: 992)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !824, file: !45, line: 187, baseType: !881, size: 64, align: 64, offset: 192)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64, align: 64)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "vrrp_stats", file: !45, line: 169, baseType: !883)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_vrrp_stats", file: !45, line: 136, size: 768, align: 64, elements: !884)
!884 = !{!885, !888, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "advert_rcvd", scope: !883, file: !45, line: 137, baseType: !886, size: 64, align: 64)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !887, line: 55, baseType: !109)
!887 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!888 = !DIDerivedType(tag: DW_TAG_member, name: "advert_sent", scope: !883, file: !45, line: 138, baseType: !889, size: 32, align: 32, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !887, line: 51, baseType: !156)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "become_master", scope: !883, file: !45, line: 140, baseType: !889, size: 32, align: 32, offset: 96)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "release_master", scope: !883, file: !45, line: 141, baseType: !889, size: 32, align: 32, offset: 128)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "packet_len_err", scope: !883, file: !45, line: 143, baseType: !886, size: 64, align: 64, offset: 192)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "advert_interval_err", scope: !883, file: !45, line: 144, baseType: !886, size: 64, align: 64, offset: 256)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "ip_ttl_err", scope: !883, file: !45, line: 145, baseType: !886, size: 64, align: 64, offset: 320)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_type_rcvd", scope: !883, file: !45, line: 146, baseType: !886, size: 64, align: 64, offset: 384)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "addr_list_err", scope: !883, file: !45, line: 147, baseType: !886, size: 64, align: 64, offset: 448)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "invalid_authtype", scope: !883, file: !45, line: 149, baseType: !889, size: 32, align: 32, offset: 512)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "authtype_mismatch", scope: !883, file: !45, line: 151, baseType: !889, size: 32, align: 32, offset: 544)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "auth_failure", scope: !883, file: !45, line: 152, baseType: !889, size: 32, align: 32, offset: 576)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "pri_zero_rcvd", scope: !883, file: !45, line: 155, baseType: !886, size: 64, align: 64, offset: 640)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "pri_zero_sent", scope: !883, file: !45, line: 156, baseType: !886, size: 64, align: 64, offset: 704)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "ifp", scope: !824, file: !45, line: 188, baseType: !903, size: 64, align: 64, offset: 256)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64, align: 64)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "interface_t", file: !53, line: 111, baseType: !905)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_interface", file: !53, line: 76, size: 1792, align: 64, elements: !906)
!906 = !{!907, !911, !913, !919, !938, !939, !940, !941, !942, !948, !949, !950, !951, !952, !953, !955, !956, !957, !958, !970, !971, !972, !973, !974, !975, !976, !977}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "ifname", scope: !905, file: !53, line: 77, baseType: !908, size: 128, align: 8)
!908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 128, align: 8, elements: !909)
!909 = !{!910}
!910 = !DISubrange(count: 16)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !905, file: !53, line: 78, baseType: !912, size: 32, align: 32, offset: 128)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "ifindex_t", file: !53, line: 62, baseType: !889)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !905, file: !53, line: 79, baseType: !914, size: 32, align: 32, offset: 160)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !915, line: 31, size: 32, align: 32, elements: !916)
!915 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!916 = !{!917}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !914, file: !915, line: 33, baseType: !918, size: 32, align: 32)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !915, line: 30, baseType: !889)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !905, file: !53, line: 80, baseType: !920, size: 128, align: 32, offset: 192)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !915, line: 211, size: 128, align: 32, elements: !921)
!921 = !{!922}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !920, file: !915, line: 220, baseType: !923, size: 128, align: 32)
!923 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !920, file: !915, line: 213, size: 128, align: 32, elements: !924)
!924 = !{!925, !929, !934}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !923, file: !915, line: 215, baseType: !926, size: 128, align: 8)
!926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !927, size: 128, align: 8, elements: !909)
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !887, line: 48, baseType: !928)
!928 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !923, file: !915, line: 217, baseType: !930, size: 128, align: 16)
!930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !931, size: 128, align: 16, elements: !932)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !887, line: 49, baseType: !202)
!932 = !{!933}
!933 = !DISubrange(count: 8)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !923, file: !915, line: 218, baseType: !935, size: 128, align: 32)
!935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !889, size: 128, align: 32, elements: !936)
!936 = !{!937}
!937 = !DISubrange(count: 4)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "ifi_flags", scope: !905, file: !53, line: 81, baseType: !156, size: 32, align: 32, offset: 320)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "linkbeat_use_polling", scope: !905, file: !53, line: 82, baseType: !249, size: 8, align: 8, offset: 352)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !905, file: !53, line: 83, baseType: !889, size: 32, align: 32, offset: 384)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "hw_type", scope: !905, file: !53, line: 84, baseType: !202, size: 16, align: 16, offset: 416)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr", scope: !905, file: !53, line: 85, baseType: !943, size: 256, align: 8, offset: 432)
!943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !944, size: 256, align: 8, elements: !946)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !872, line: 33, baseType: !945)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !199, line: 30, baseType: !928)
!946 = !{!947}
!947 = !DISubrange(count: 32)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_bcast", scope: !905, file: !53, line: 86, baseType: !943, size: 256, align: 8, offset: 688)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_len", scope: !905, file: !53, line: 87, baseType: !219, size: 64, align: 64, offset: 960)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "lb_type", scope: !905, file: !53, line: 88, baseType: !172, size: 32, align: 32, offset: 1024)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "vmac", scope: !905, file: !53, line: 90, baseType: !249, size: 8, align: 8, offset: 1056)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifindex", scope: !905, file: !53, line: 91, baseType: !912, size: 32, align: 32, offset: 1088)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifp", scope: !905, file: !53, line: 92, baseType: !954, size: 64, align: 64, offset: 1152)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64, align: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifindex", scope: !905, file: !53, line: 94, baseType: !912, size: 32, align: 32, offset: 1216)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifp", scope: !905, file: !53, line: 96, baseType: !954, size: 64, align: 64, offset: 1280)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master", scope: !905, file: !53, line: 97, baseType: !249, size: 8, align: 8, offset: 1344)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "garp_delay", scope: !905, file: !53, line: 100, baseType: !959, size: 64, align: 64, offset: 1408)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64, align: 64)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "garp_delay_t", file: !53, line: 73, baseType: !961)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_garp_delay", file: !53, line: 65, size: 704, align: 64, elements: !962)
!962 = !{!963, !964, !965, !966, !967, !968, !969}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "garp_interval", scope: !961, file: !53, line: 66, baseType: !257, size: 128, align: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "have_garp_interval", scope: !961, file: !53, line: 67, baseType: !249, size: 8, align: 8, offset: 128)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "gna_interval", scope: !961, file: !53, line: 68, baseType: !257, size: 128, align: 64, offset: 192)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "have_gna_interval", scope: !961, file: !53, line: 69, baseType: !249, size: 8, align: 8, offset: 320)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "garp_next_time", scope: !961, file: !53, line: 70, baseType: !257, size: 128, align: 64, offset: 384)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "gna_next_time", scope: !961, file: !53, line: 71, baseType: !257, size: 128, align: 64, offset: 512)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "aggregation_group", scope: !961, file: !53, line: 72, baseType: !172, size: 32, align: 32, offset: 640)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "gna_router", scope: !905, file: !53, line: 101, baseType: !249, size: 8, align: 8, offset: 1472)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_config", scope: !905, file: !53, line: 102, baseType: !172, size: 32, align: 32, offset: 1504)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_ignore_value", scope: !905, file: !53, line: 103, baseType: !889, size: 32, align: 32, offset: 1536)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_filter_value", scope: !905, file: !53, line: 104, baseType: !889, size: 32, align: 32, offset: 1568)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "reset_promote_secondaries", scope: !905, file: !53, line: 105, baseType: !889, size: 32, align: 32, offset: 1600)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "rp_filter", scope: !905, file: !53, line: 107, baseType: !156, size: 32, align: 32, offset: 1632)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "promote_secondaries_already_set", scope: !905, file: !53, line: 109, baseType: !249, size: 8, align: 8, offset: 1664)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "tracking_vrrp", scope: !905, file: !53, line: 110, baseType: !142, size: 64, align: 64, offset: 1728)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "dont_track_primary", scope: !824, file: !45, line: 189, baseType: !249, size: 8, align: 8, offset: 320)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "linkbeat_use_polling", scope: !824, file: !45, line: 190, baseType: !249, size: 8, align: 8, offset: 328)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "skip_check_adv_addr", scope: !824, file: !45, line: 191, baseType: !249, size: 8, align: 8, offset: 336)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "strict_mode", scope: !824, file: !45, line: 193, baseType: !156, size: 32, align: 32, offset: 352)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "vmac_flags", scope: !824, file: !45, line: 195, baseType: !109, size: 64, align: 64, offset: 384)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "vmac_ifname", scope: !824, file: !45, line: 196, baseType: !908, size: 128, align: 8, offset: 448)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "track_ifp", scope: !824, file: !45, line: 198, baseType: !142, size: 64, align: 64, offset: 576)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "track_script", scope: !824, file: !45, line: 199, baseType: !142, size: 64, align: 64, offset: 640)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "track_file", scope: !824, file: !45, line: 200, baseType: !142, size: 64, align: 64, offset: 704)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "num_script_if_fault", scope: !824, file: !45, line: 204, baseType: !156, size: 32, align: 32, offset: 768)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "num_script_init", scope: !824, file: !45, line: 205, baseType: !156, size: 32, align: 32, offset: 800)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !824, file: !45, line: 206, baseType: !990, size: 1024, align: 64, offset: 832)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !991, line: 166, size: 1024, align: 64, elements: !992)
!991 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!992 = !{!993, !994, !998}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !990, file: !991, line: 168, baseType: !827, size: 16, align: 16)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !990, file: !991, line: 169, baseType: !995, size: 944, align: 8, offset: 16)
!995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 944, align: 8, elements: !996)
!996 = !{!997}
!997 = !DISubrange(count: 118)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !990, file: !991, line: 170, baseType: !109, size: 64, align: 64, offset: 960)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "saddr_from_config", scope: !824, file: !45, line: 207, baseType: !249, size: 8, align: 8, offset: 1856)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "track_saddr", scope: !824, file: !45, line: 208, baseType: !249, size: 8, align: 8, offset: 1864)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_saddr", scope: !824, file: !45, line: 209, baseType: !990, size: 1024, align: 64, offset: 1920)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "unicast_peer", scope: !824, file: !45, line: 210, baseType: !142, size: 64, align: 64, offset: 2944)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "unicast_chksum_compat", scope: !824, file: !45, line: 212, baseType: !1004, size: 32, align: 32, offset: 3008)
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "chksum_compatibility_t", file: !45, line: 179, baseType: !44)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "master_saddr", scope: !824, file: !45, line: 214, baseType: !990, size: 1024, align: 64, offset: 3072)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "master_priority", scope: !824, file: !45, line: 215, baseType: !927, size: 8, align: 8, offset: 4096)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "last_transition", scope: !824, file: !45, line: 216, baseType: !257, size: 128, align: 64, offset: 4160)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "garp_delay", scope: !824, file: !45, line: 217, baseType: !156, size: 32, align: 32, offset: 4288)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh", scope: !824, file: !45, line: 218, baseType: !257, size: 128, align: 64, offset: 4352)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh_timer", scope: !824, file: !45, line: 219, baseType: !257, size: 128, align: 64, offset: 4480)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "garp_rep", scope: !824, file: !45, line: 220, baseType: !156, size: 32, align: 32, offset: 4608)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "garp_refresh_rep", scope: !824, file: !45, line: 221, baseType: !156, size: 32, align: 32, offset: 4640)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "garp_lower_prio_delay", scope: !824, file: !45, line: 222, baseType: !156, size: 32, align: 32, offset: 4672)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "garp_pending", scope: !824, file: !45, line: 223, baseType: !249, size: 8, align: 8, offset: 4704)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "gna_pending", scope: !824, file: !45, line: 224, baseType: !249, size: 8, align: 8, offset: 4712)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "garp_lower_prio_rep", scope: !824, file: !45, line: 225, baseType: !156, size: 32, align: 32, offset: 4736)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "lower_prio_no_advert", scope: !824, file: !45, line: 226, baseType: !156, size: 32, align: 32, offset: 4768)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "higher_prio_send_advert", scope: !824, file: !45, line: 227, baseType: !156, size: 32, align: 32, offset: 4800)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "vrid", scope: !824, file: !45, line: 228, baseType: !927, size: 8, align: 8, offset: 4832)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "base_priority", scope: !824, file: !45, line: 229, baseType: !927, size: 8, align: 8, offset: 4840)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "effective_priority", scope: !824, file: !45, line: 230, baseType: !927, size: 8, align: 8, offset: 4848)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "total_priority", scope: !824, file: !45, line: 231, baseType: !172, size: 32, align: 32, offset: 4864)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "vipset", scope: !824, file: !45, line: 233, baseType: !249, size: 8, align: 8, offset: 4896)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "vip", scope: !824, file: !45, line: 234, baseType: !142, size: 64, align: 64, offset: 4928)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "evip", scope: !824, file: !45, line: 235, baseType: !142, size: 64, align: 64, offset: 4992)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "promote_secondaries", scope: !824, file: !45, line: 239, baseType: !249, size: 8, align: 8, offset: 5056)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "evip_add_ipv6", scope: !824, file: !45, line: 240, baseType: !249, size: 8, align: 8, offset: 5064)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "vroutes", scope: !824, file: !45, line: 241, baseType: !142, size: 64, align: 64, offset: 5120)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "vrules", scope: !824, file: !45, line: 242, baseType: !142, size: 64, align: 64, offset: 5184)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "adver_int", scope: !824, file: !45, line: 243, baseType: !156, size: 32, align: 32, offset: 5248)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "master_adver_int", scope: !824, file: !45, line: 244, baseType: !156, size: 32, align: 32, offset: 5280)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !824, file: !45, line: 249, baseType: !156, size: 32, align: 32, offset: 5312)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_rx_buf_size", scope: !824, file: !45, line: 252, baseType: !219, size: 64, align: 64, offset: 5376)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "iptable_rules_set", scope: !824, file: !45, line: 254, baseType: !249, size: 8, align: 8, offset: 5440)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "nopreempt", scope: !824, file: !45, line: 255, baseType: !249, size: 8, align: 8, offset: 5448)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_delay", scope: !824, file: !45, line: 256, baseType: !109, size: 64, align: 64, offset: 5504)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_time", scope: !824, file: !45, line: 260, baseType: !257, size: 128, align: 64, offset: 5568)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !824, file: !45, line: 261, baseType: !172, size: 32, align: 32, offset: 5696)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "wantstate", scope: !824, file: !45, line: 265, baseType: !172, size: 32, align: 32, offset: 5728)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "reload_master", scope: !824, file: !45, line: 266, baseType: !249, size: 8, align: 8, offset: 5760)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "sockets", scope: !824, file: !45, line: 267, baseType: !1042, size: 64, align: 64, offset: 5824)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64, align: 64)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "sock_t", file: !1044, line: 50, baseType: !1045)
!1044 = !DIFile(filename: "./../include/vrrp_sock.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_sock", file: !1044, line: 40, size: 1344, align: 64, elements: !1046)
!1046 = !{!1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !1045, file: !1044, line: 41, baseType: !827, size: 16, align: 16)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !1045, file: !1044, line: 42, baseType: !990, size: 1024, align: 64, offset: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "proto", scope: !1045, file: !1044, line: 43, baseType: !172, size: 32, align: 32, offset: 1088)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !1045, file: !1044, line: 44, baseType: !912, size: 32, align: 32, offset: 1120)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "unicast", scope: !1045, file: !1044, line: 45, baseType: !249, size: 8, align: 8, offset: 1152)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "fd_in", scope: !1045, file: !1044, line: 46, baseType: !172, size: 32, align: 32, offset: 1184)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "fd_out", scope: !1045, file: !1044, line: 47, baseType: !172, size: 32, align: 32, offset: 1216)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "rx_buf_size", scope: !1045, file: !1044, line: 48, baseType: !172, size: 32, align: 32, offset: 1248)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1045, file: !1044, line: 49, baseType: !104, size: 64, align: 64, offset: 1280)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !824, file: !45, line: 269, baseType: !172, size: 32, align: 32, offset: 5888)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !824, file: !45, line: 271, baseType: !172, size: 32, align: 32, offset: 5920)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "smtp_alert", scope: !824, file: !45, line: 274, baseType: !172, size: 32, align: 32, offset: 5952)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "last_email_state", scope: !824, file: !45, line: 275, baseType: !172, size: 32, align: 32, offset: 5984)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "notify_exec", scope: !824, file: !45, line: 276, baseType: !249, size: 8, align: 8, offset: 6016)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "script_backup", scope: !824, file: !45, line: 277, baseType: !857, size: 64, align: 64, offset: 6080)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "script_master", scope: !824, file: !45, line: 278, baseType: !857, size: 64, align: 64, offset: 6144)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "script_fault", scope: !824, file: !45, line: 279, baseType: !857, size: 64, align: 64, offset: 6208)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "script_stop", scope: !824, file: !45, line: 280, baseType: !857, size: 64, align: 64, offset: 6272)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "script_master_rx_lower_pri", scope: !824, file: !45, line: 281, baseType: !857, size: 64, align: 64, offset: 6336)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "script", scope: !824, file: !45, line: 282, baseType: !857, size: 64, align: 64, offset: 6400)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "ms_down_timer", scope: !824, file: !45, line: 285, baseType: !889, size: 32, align: 32, offset: 6464)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "sands", scope: !824, file: !45, line: 286, baseType: !257, size: 128, align: 64, offset: 6528)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "send_buffer", scope: !824, file: !45, line: 289, baseType: !174, size: 64, align: 64, offset: 6656)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "send_buffer_size", scope: !824, file: !45, line: 290, baseType: !219, size: 64, align: 64, offset: 6720)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4_csum", scope: !824, file: !45, line: 291, baseType: !889, size: 32, align: 32, offset: 6784)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "auth_type", scope: !824, file: !45, line: 295, baseType: !927, size: 8, align: 8, offset: 6816)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "auth_data", scope: !824, file: !45, line: 296, baseType: !1074, size: 64, align: 8, offset: 6824)
!1074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !927, size: 64, align: 8, elements: !932)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "ipsecah_counter", scope: !824, file: !45, line: 299, baseType: !1076, size: 64, align: 32, offset: 6912)
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "seq_counter_t", file: !1077, line: 58, baseType: !1078)
!1077 = !DIFile(filename: "./../include/vrrp_ipsecah.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_seq_counter", file: !1077, line: 55, size: 64, align: 32, elements: !1079)
!1079 = !{!1080, !1081}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "cycle", scope: !1078, file: !1077, line: 56, baseType: !249, size: 8, align: 8)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "seq_number", scope: !1078, file: !1077, line: 57, baseType: !889, size: 32, align: 32, offset: 32)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "ip_id", scope: !824, file: !45, line: 309, baseType: !172, size: 32, align: 32, offset: 6976)
!1083 = !DILocation(line: 615, column: 10, scope: !811)
!1084 = !DILocalVariable(name: "num_master_inst", scope: !811, file: !289, line: 616, type: !172)
!1085 = !DILocation(line: 616, column: 6, scope: !811)
!1086 = !DILocalVariable(name: "i", scope: !811, file: !289, line: 617, type: !172)
!1087 = !DILocation(line: 617, column: 6, scope: !811)
!1088 = !DILocation(line: 621, column: 9, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !811, file: !289, line: 621, column: 6)
!1090 = !DILocation(line: 621, column: 20, scope: !1089)
!1091 = !DILocation(line: 621, column: 26, scope: !1089)
!1092 = !DILocation(line: 621, column: 6, scope: !1089)
!1093 = !DILocation(line: 621, column: 11, scope: !1094)
!1094 = !DILexicalBlockFile(scope: !1089, file: !289, discriminator: 1)
!1095 = !DILocation(line: 621, column: 22, scope: !1094)
!1096 = !DILocation(line: 621, column: 29, scope: !1094)
!1097 = !DILocation(line: 621, column: 34, scope: !1094)
!1098 = !DILocation(line: 621, column: 6, scope: !1094)
!1099 = !DILocation(line: 621, column: 10, scope: !1100)
!1100 = !DILexicalBlockFile(scope: !1089, file: !289, discriminator: 2)
!1101 = !DILocation(line: 621, column: 21, scope: !1100)
!1102 = !DILocation(line: 621, column: 28, scope: !1100)
!1103 = !DILocation(line: 621, column: 33, scope: !1100)
!1104 = !DILocation(line: 621, column: 6, scope: !1100)
!1105 = !DILocation(line: 622, column: 15, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !289, line: 622, column: 3)
!1107 = distinct !DILexicalBlock(scope: !1089, file: !289, line: 621, column: 10)
!1108 = !DILocation(line: 622, column: 26, scope: !1106)
!1109 = !DILocation(line: 622, column: 14, scope: !1106)
!1110 = !DILocation(line: 622, column: 13, scope: !1106)
!1111 = !DILocation(line: 622, column: 13, scope: !1112)
!1112 = !DILexicalBlockFile(scope: !1106, file: !289, discriminator: 1)
!1113 = !DILocation(line: 622, column: 14, scope: !1114)
!1114 = !DILexicalBlockFile(scope: !1106, file: !289, discriminator: 2)
!1115 = !DILocation(line: 622, column: 25, scope: !1114)
!1116 = !DILocation(line: 622, column: 32, scope: !1114)
!1117 = !DILocation(line: 622, column: 13, scope: !1114)
!1118 = !DILocation(line: 622, column: 13, scope: !1119)
!1119 = !DILexicalBlockFile(scope: !1106, file: !289, discriminator: 3)
!1120 = !DILocation(line: 622, column: 10, scope: !1119)
!1121 = !DILocation(line: 622, column: 8, scope: !1119)
!1122 = !DILocation(line: 622, column: 39, scope: !1123)
!1123 = !DILexicalBlockFile(scope: !1124, file: !289, discriminator: 4)
!1124 = distinct !DILexicalBlock(scope: !1106, file: !289, line: 622, column: 3)
!1125 = !DILocation(line: 622, column: 3, scope: !1123)
!1126 = !DILocation(line: 623, column: 13, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1124, file: !289, line: 622, column: 61)
!1128 = !DILocation(line: 623, column: 17, scope: !1127)
!1129 = !DILocation(line: 623, column: 11, scope: !1127)
!1130 = !DILocation(line: 623, column: 9, scope: !1127)
!1131 = !DILocation(line: 624, column: 8, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1127, file: !289, line: 624, column: 8)
!1133 = !DILocation(line: 624, column: 14, scope: !1132)
!1134 = !DILocation(line: 624, column: 20, scope: !1132)
!1135 = !DILocation(line: 624, column: 8, scope: !1127)
!1136 = !DILocation(line: 625, column: 20, scope: !1132)
!1137 = !DILocation(line: 625, column: 5, scope: !1132)
!1138 = !DILocation(line: 626, column: 3, scope: !1127)
!1139 = !DILocation(line: 622, column: 50, scope: !1140)
!1140 = !DILexicalBlockFile(scope: !1124, file: !289, discriminator: 5)
!1141 = !DILocation(line: 622, column: 54, scope: !1140)
!1142 = !DILocation(line: 622, column: 47, scope: !1140)
!1143 = !DILocation(line: 622, column: 3, scope: !1140)
!1144 = distinct !{!1144, !1145}
!1145 = !DILocation(line: 622, column: 3, scope: !1107)
!1146 = !DILocation(line: 628, column: 15, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1107, file: !289, line: 628, column: 3)
!1148 = !DILocation(line: 628, column: 26, scope: !1147)
!1149 = !DILocation(line: 628, column: 14, scope: !1147)
!1150 = !DILocation(line: 628, column: 13, scope: !1147)
!1151 = !DILocation(line: 628, column: 13, scope: !1152)
!1152 = !DILexicalBlockFile(scope: !1147, file: !289, discriminator: 1)
!1153 = !DILocation(line: 628, column: 14, scope: !1154)
!1154 = !DILexicalBlockFile(scope: !1147, file: !289, discriminator: 2)
!1155 = !DILocation(line: 628, column: 25, scope: !1154)
!1156 = !DILocation(line: 628, column: 32, scope: !1154)
!1157 = !DILocation(line: 628, column: 13, scope: !1154)
!1158 = !DILocation(line: 628, column: 13, scope: !1159)
!1159 = !DILexicalBlockFile(scope: !1147, file: !289, discriminator: 3)
!1160 = !DILocation(line: 628, column: 10, scope: !1159)
!1161 = !DILocation(line: 628, column: 41, scope: !1159)
!1162 = !DILocation(line: 628, column: 8, scope: !1159)
!1163 = !DILocation(line: 628, column: 46, scope: !1164)
!1164 = !DILexicalBlockFile(scope: !1165, file: !289, discriminator: 4)
!1165 = distinct !DILexicalBlock(scope: !1147, file: !289, line: 628, column: 3)
!1166 = !DILocation(line: 628, column: 3, scope: !1164)
!1167 = !DILocation(line: 629, column: 13, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1165, file: !289, line: 628, column: 68)
!1169 = !DILocation(line: 629, column: 17, scope: !1168)
!1170 = !DILocation(line: 629, column: 11, scope: !1168)
!1171 = !DILocation(line: 629, column: 9, scope: !1168)
!1172 = !DILocation(line: 630, column: 8, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1168, file: !289, line: 630, column: 8)
!1174 = !DILocation(line: 630, column: 14, scope: !1173)
!1175 = !DILocation(line: 630, column: 20, scope: !1173)
!1176 = !DILocation(line: 630, column: 8, scope: !1168)
!1177 = !DILocation(line: 631, column: 6, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !1173, file: !289, line: 630, column: 26)
!1179 = !DILocation(line: 632, column: 22, scope: !1178)
!1180 = !DILocation(line: 632, column: 57, scope: !1178)
!1181 = !DILocation(line: 632, column: 63, scope: !1178)
!1182 = !DILocation(line: 632, column: 68, scope: !1178)
!1183 = !DILocation(line: 632, column: 65, scope: !1178)
!1184 = !DILocation(line: 632, column: 5, scope: !1178)
!1185 = !DILocation(line: 633, column: 4, scope: !1178)
!1186 = !DILocation(line: 634, column: 3, scope: !1168)
!1187 = !DILocation(line: 628, column: 57, scope: !1188)
!1188 = !DILexicalBlockFile(scope: !1165, file: !289, discriminator: 5)
!1189 = !DILocation(line: 628, column: 61, scope: !1188)
!1190 = !DILocation(line: 628, column: 54, scope: !1188)
!1191 = !DILocation(line: 628, column: 3, scope: !1188)
!1192 = distinct !{!1192, !1193}
!1193 = !DILocation(line: 628, column: 3, scope: !1107)
!1194 = !DILocation(line: 635, column: 2, scope: !1107)
!1195 = !DILocation(line: 637, column: 6, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !811, file: !289, line: 637, column: 6)
!1197 = !DILocation(line: 637, column: 22, scope: !1196)
!1198 = !DILocation(line: 637, column: 6, scope: !811)
!1199 = !DILocation(line: 638, column: 20, scope: !1196)
!1200 = !DILocation(line: 638, column: 3, scope: !1196)
!1201 = !DILocation(line: 639, column: 1, scope: !811)
!1202 = distinct !DISubprogram(name: "sigend_vrrp", scope: !289, file: !289, line: 669, type: !812, isLocal: true, isDefinition: true, scopeLine: 670, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !298)
!1203 = !DILocalVariable(name: "v", arg: 1, scope: !1202, file: !289, line: 669, type: !103)
!1204 = !DILocation(line: 669, column: 43, scope: !1202)
!1205 = !DILocalVariable(name: "sig", arg: 2, scope: !1202, file: !289, line: 669, type: !172)
!1206 = !DILocation(line: 669, column: 74, scope: !1202)
!1207 = !DILocation(line: 671, column: 6, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1202, file: !289, line: 671, column: 6)
!1209 = !DILocation(line: 671, column: 6, scope: !1202)
!1210 = !DILocation(line: 672, column: 36, scope: !1208)
!1211 = !DILocation(line: 672, column: 3, scope: !1208)
!1212 = !DILocation(line: 673, column: 1, scope: !1202)
!1213 = distinct !DISubprogram(name: "sigusr1_vrrp", scope: !289, file: !289, line: 642, type: !812, isLocal: true, isDefinition: true, scopeLine: 643, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !298)
!1214 = !DILocalVariable(name: "v", arg: 1, scope: !1213, file: !289, line: 642, type: !103)
!1215 = !DILocation(line: 642, column: 44, scope: !1213)
!1216 = !DILocalVariable(name: "sig", arg: 2, scope: !1213, file: !289, line: 642, type: !172)
!1217 = !DILocation(line: 642, column: 75, scope: !1213)
!1218 = !DILocation(line: 645, column: 7, scope: !1213)
!1219 = !DILocation(line: 644, column: 2, scope: !1213)
!1220 = !DILocation(line: 646, column: 19, scope: !1213)
!1221 = !DILocation(line: 646, column: 2, scope: !1213)
!1222 = !DILocation(line: 647, column: 1, scope: !1213)
!1223 = distinct !DISubprogram(name: "sigusr2_vrrp", scope: !289, file: !289, line: 650, type: !812, isLocal: true, isDefinition: true, scopeLine: 651, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !298)
!1224 = !DILocalVariable(name: "v", arg: 1, scope: !1223, file: !289, line: 650, type: !103)
!1225 = !DILocation(line: 650, column: 44, scope: !1223)
!1226 = !DILocalVariable(name: "sig", arg: 2, scope: !1223, file: !289, line: 650, type: !172)
!1227 = !DILocation(line: 650, column: 75, scope: !1223)
!1228 = !DILocation(line: 653, column: 7, scope: !1223)
!1229 = !DILocation(line: 652, column: 2, scope: !1223)
!1230 = !DILocation(line: 654, column: 19, scope: !1223)
!1231 = !DILocation(line: 654, column: 2, scope: !1223)
!1232 = !DILocation(line: 655, column: 1, scope: !1223)
!1233 = distinct !DISubprogram(name: "send_reload_advert_thread", scope: !289, file: !289, line: 596, type: !405, isLocal: true, isDefinition: true, scopeLine: 597, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !298)
!1234 = !DILocalVariable(name: "thread", arg: 1, scope: !1233, file: !289, line: 596, type: !104)
!1235 = !DILocation(line: 596, column: 37, scope: !1233)
!1236 = !DILocalVariable(name: "vrrp", scope: !1233, file: !289, line: 598, type: !822)
!1237 = !DILocation(line: 598, column: 10, scope: !1233)
!1238 = !DILocation(line: 598, column: 19, scope: !1233)
!1239 = !DILocation(line: 598, column: 28, scope: !1233)
!1240 = !DILocation(line: 598, column: 17, scope: !1233)
!1241 = !DILocation(line: 600, column: 6, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1233, file: !289, line: 600, column: 6)
!1243 = !DILocation(line: 600, column: 12, scope: !1242)
!1244 = !DILocation(line: 600, column: 18, scope: !1242)
!1245 = !DILocation(line: 600, column: 6, scope: !1233)
!1246 = !DILocation(line: 601, column: 17, scope: !1242)
!1247 = !DILocation(line: 601, column: 23, scope: !1242)
!1248 = !DILocation(line: 601, column: 29, scope: !1242)
!1249 = !DILocation(line: 601, column: 3, scope: !1242)
!1250 = !DILocation(line: 605, column: 8, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1233, file: !289, line: 605, column: 6)
!1252 = !DILocation(line: 605, column: 17, scope: !1251)
!1253 = !DILocation(line: 605, column: 19, scope: !1251)
!1254 = !DILocation(line: 605, column: 6, scope: !1251)
!1255 = !DILocation(line: 605, column: 6, scope: !1233)
!1256 = !DILocation(line: 606, column: 20, scope: !1251)
!1257 = !DILocation(line: 606, column: 3, scope: !1251)
!1258 = !DILocation(line: 608, column: 2, scope: !1233)
!1259 = distinct !DISubprogram(name: "reload_vrrp_thread", scope: !289, file: !289, line: 692, type: !405, isLocal: true, isDefinition: true, scopeLine: 693, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !298)
!1260 = !DILocalVariable(name: "thread", arg: 1, scope: !1259, file: !289, line: 692, type: !104)
!1261 = !DILocation(line: 692, column: 55, scope: !1259)
!1262 = !DILocation(line: 694, column: 2, scope: !1259)
!1263 = !DILocation(line: 697, column: 2, scope: !1259)
!1264 = !DILocation(line: 700, column: 10, scope: !1259)
!1265 = !DILocation(line: 703, column: 17, scope: !1259)
!1266 = !DILocation(line: 703, column: 2, scope: !1259)
!1267 = !DILocation(line: 705, column: 6, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1259, file: !289, line: 705, column: 6)
!1269 = !DILocation(line: 705, column: 17, scope: !1268)
!1270 = !DILocation(line: 705, column: 6, scope: !1259)
!1271 = !DILocation(line: 706, column: 3, scope: !1268)
!1272 = !DILocation(line: 708, column: 19, scope: !1259)
!1273 = !DILocation(line: 711, column: 26, scope: !1259)
!1274 = !DILocation(line: 711, column: 2, scope: !1259)
!1275 = !DILocation(line: 712, column: 24, scope: !1259)
!1276 = !DILocation(line: 712, column: 2, scope: !1259)
!1277 = !DILocation(line: 713, column: 26, scope: !1259)
!1278 = !DILocation(line: 713, column: 2, scope: !1259)
!1279 = !DILocation(line: 716, column: 6, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1259, file: !289, line: 716, column: 6)
!1281 = !DILocation(line: 716, column: 19, scope: !1280)
!1282 = !DILocation(line: 716, column: 29, scope: !1280)
!1283 = !DILocation(line: 716, column: 6, scope: !1259)
!1284 = !DILocation(line: 717, column: 35, scope: !1280)
!1285 = !DILocation(line: 717, column: 48, scope: !1280)
!1286 = !DILocation(line: 718, column: 11, scope: !1280)
!1287 = !DILocation(line: 718, column: 24, scope: !1280)
!1288 = !DILocation(line: 718, column: 34, scope: !1280)
!1289 = !DILocation(line: 718, column: 40, scope: !1280)
!1290 = !DILocation(line: 718, column: 46, scope: !1280)
!1291 = !DILocation(line: 718, column: 10, scope: !1280)
!1292 = !DILocation(line: 717, column: 3, scope: !1280)
!1293 = !DILocation(line: 724, column: 21, scope: !1259)
!1294 = !DILocation(line: 724, column: 34, scope: !1259)
!1295 = !DILocation(line: 724, column: 48, scope: !1259)
!1296 = !DILocation(line: 724, column: 61, scope: !1259)
!1297 = !DILocation(line: 724, column: 2, scope: !1259)
!1298 = !DILocation(line: 727, column: 6, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1259, file: !289, line: 727, column: 6)
!1300 = !DILocation(line: 727, column: 6, scope: !1259)
!1301 = !DILocation(line: 729, column: 3, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1299, file: !289, line: 727, column: 26)
!1303 = !DILocation(line: 730, column: 2, scope: !1302)
!1304 = !DILocation(line: 734, column: 18, scope: !1259)
!1305 = !DILocation(line: 734, column: 16, scope: !1259)
!1306 = !DILocation(line: 735, column: 12, scope: !1259)
!1307 = !DILocation(line: 736, column: 20, scope: !1259)
!1308 = !DILocation(line: 736, column: 18, scope: !1259)
!1309 = !DILocation(line: 737, column: 14, scope: !1259)
!1310 = !DILocation(line: 738, column: 2, scope: !1259)
!1311 = !DILocation(line: 740, column: 2, scope: !1259)
!1312 = !DILocation(line: 744, column: 2, scope: !1259)
!1313 = !DILocation(line: 747, column: 6, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1259, file: !289, line: 747, column: 6)
!1315 = !DILocation(line: 747, column: 19, scope: !1314)
!1316 = !DILocation(line: 747, column: 29, scope: !1314)
!1317 = !DILocation(line: 747, column: 6, scope: !1259)
!1318 = !DILocation(line: 748, column: 36, scope: !1314)
!1319 = !DILocation(line: 748, column: 49, scope: !1314)
!1320 = !DILocation(line: 749, column: 12, scope: !1314)
!1321 = !DILocation(line: 749, column: 25, scope: !1314)
!1322 = !DILocation(line: 749, column: 35, scope: !1314)
!1323 = !DILocation(line: 749, column: 41, scope: !1314)
!1324 = !DILocation(line: 749, column: 47, scope: !1314)
!1325 = !DILocation(line: 749, column: 11, scope: !1314)
!1326 = !DILocation(line: 748, column: 3, scope: !1314)
!1327 = !DILocation(line: 755, column: 17, scope: !1259)
!1328 = !DILocation(line: 755, column: 2, scope: !1259)
!1329 = !DILocation(line: 756, column: 19, scope: !1259)
!1330 = !DILocation(line: 756, column: 2, scope: !1259)
!1331 = !DILocation(line: 758, column: 2, scope: !1259)
!1332 = !DILocation(line: 760, column: 10, scope: !1259)
!1333 = !DILocation(line: 762, column: 2, scope: !1259)
!1334 = distinct !DISubprogram(name: "vrrp_ipvs_needed", scope: !289, file: !289, line: 164, type: !1335, isLocal: true, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !298)
!1335 = !DISubroutineType(types: !1336)
!1336 = !{!249}
!1337 = !DILocation(line: 166, column: 12, scope: !1334)
!1338 = !DILocation(line: 166, column: 25, scope: !1334)
!1339 = !DILocation(line: 166, column: 35, scope: !1334)
!1340 = !DILocation(line: 166, column: 10, scope: !1334)
!1341 = !DILocation(line: 166, column: 9, scope: !1334)
!1342 = !DILocation(line: 166, column: 2, scope: !1334)
!1343 = distinct !DISubprogram(name: "start_vrrp_termination_thread", scope: !289, file: !289, line: 369, type: !405, isLocal: true, isDefinition: true, scopeLine: 370, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !298)
!1344 = !DILocalVariable(name: "thread", arg: 1, scope: !1343, file: !289, line: 369, type: !104)
!1345 = !DILocation(line: 369, column: 66, scope: !1343)
!1346 = !DILocation(line: 372, column: 22, scope: !1343)
!1347 = !DILocation(line: 374, column: 2, scope: !1343)
!1348 = !DILocation(line: 376, column: 2, scope: !1343)
!1349 = distinct !DISubprogram(name: "vrrp_terminate_phase1", scope: !289, file: !289, line: 295, type: !1350, isLocal: true, isDefinition: true, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !298)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{null, !249}
!1352 = !DILocalVariable(name: "schedule_next_thread", arg: 1, scope: !1349, file: !289, line: 295, type: !249)
!1353 = !DILocation(line: 295, column: 27, scope: !1349)
!1354 = !DILocation(line: 303, column: 6, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1349, file: !289, line: 303, column: 6)
!1356 = !DILocation(line: 303, column: 14, scope: !1355)
!1357 = !DILocation(line: 303, column: 20, scope: !1355)
!1358 = !DILocation(line: 303, column: 6, scope: !1349)
!1359 = !DILocation(line: 304, column: 18, scope: !1355)
!1360 = !DILocation(line: 304, column: 3, scope: !1355)
!1361 = !DILocation(line: 306, column: 2, scope: !1349)
!1362 = !DILocation(line: 316, column: 7, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1349, file: !289, line: 316, column: 6)
!1364 = !DILocation(line: 316, column: 6, scope: !1349)
!1365 = !DILocation(line: 317, column: 3, scope: !1363)
!1366 = !DILocation(line: 324, column: 6, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1349, file: !289, line: 324, column: 6)
!1368 = !DILocation(line: 324, column: 17, scope: !1367)
!1369 = !DILocation(line: 324, column: 6, scope: !1349)
!1370 = !DILocation(line: 325, column: 3, scope: !1367)
!1371 = !DILocation(line: 328, column: 2, scope: !1349)
!1372 = !DILocation(line: 333, column: 19, scope: !1349)
!1373 = !DILocation(line: 333, column: 30, scope: !1349)
!1374 = !DILocation(line: 333, column: 2, scope: !1349)
!1375 = !DILocation(line: 334, column: 17, scope: !1349)
!1376 = !DILocation(line: 334, column: 28, scope: !1349)
!1377 = !DILocation(line: 334, column: 2, scope: !1349)
!1378 = !DILocation(line: 336, column: 17, scope: !1349)
!1379 = !DILocation(line: 336, column: 28, scope: !1349)
!1380 = !DILocation(line: 336, column: 2, scope: !1349)
!1381 = !DILocation(line: 344, column: 26, scope: !1349)
!1382 = !DILocation(line: 344, column: 2, scope: !1349)
!1383 = !DILocation(line: 347, column: 2, scope: !1349)
!1384 = !DILocation(line: 349, column: 6, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1349, file: !289, line: 349, column: 6)
!1386 = !DILocation(line: 349, column: 6, scope: !1349)
!1387 = !DILocation(line: 350, column: 10, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !289, line: 350, column: 7)
!1389 = distinct !DILexicalBlock(scope: !1385, file: !289, line: 349, column: 28)
!1390 = !DILocation(line: 350, column: 21, scope: !1388)
!1391 = !DILocation(line: 350, column: 27, scope: !1388)
!1392 = !DILocation(line: 350, column: 7, scope: !1388)
!1393 = !DILocation(line: 350, column: 12, scope: !1394)
!1394 = !DILexicalBlockFile(scope: !1388, file: !289, discriminator: 1)
!1395 = !DILocation(line: 350, column: 23, scope: !1394)
!1396 = !DILocation(line: 350, column: 30, scope: !1394)
!1397 = !DILocation(line: 350, column: 35, scope: !1394)
!1398 = !DILocation(line: 350, column: 7, scope: !1394)
!1399 = !DILocation(line: 350, column: 11, scope: !1400)
!1400 = !DILexicalBlockFile(scope: !1388, file: !289, discriminator: 2)
!1401 = !DILocation(line: 350, column: 22, scope: !1400)
!1402 = !DILocation(line: 350, column: 29, scope: !1400)
!1403 = !DILocation(line: 350, column: 34, scope: !1400)
!1404 = !DILocation(line: 350, column: 7, scope: !1400)
!1405 = !DILocation(line: 355, column: 30, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1388, file: !289, line: 350, column: 11)
!1407 = !DILocation(line: 355, column: 4, scope: !1406)
!1408 = !DILocation(line: 356, column: 4, scope: !1406)
!1409 = !DILocation(line: 356, column: 12, scope: !1406)
!1410 = !DILocation(line: 356, column: 35, scope: !1406)
!1411 = !DILocation(line: 357, column: 3, scope: !1406)
!1412 = !DILocation(line: 358, column: 12, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1388, file: !289, line: 358, column: 12)
!1414 = !DILocation(line: 358, column: 20, scope: !1413)
!1415 = !DILocation(line: 358, column: 26, scope: !1413)
!1416 = !DILocation(line: 358, column: 12, scope: !1388)
!1417 = !DILocation(line: 360, column: 30, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1413, file: !289, line: 358, column: 35)
!1419 = !DILocation(line: 360, column: 4, scope: !1418)
!1420 = !DILocation(line: 361, column: 3, scope: !1418)
!1421 = !DILocation(line: 363, column: 31, scope: !1413)
!1422 = !DILocation(line: 363, column: 4, scope: !1413)
!1423 = !DILocation(line: 364, column: 2, scope: !1389)
!1424 = !DILocation(line: 365, column: 1, scope: !1349)
!1425 = distinct !DISubprogram(name: "vrrp_shutdown_timer_thread", scope: !289, file: !289, line: 281, type: !405, isLocal: true, isDefinition: true, scopeLine: 282, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !298)
!1426 = !DILocalVariable(name: "thread", arg: 1, scope: !1425, file: !289, line: 281, type: !104)
!1427 = !DILocation(line: 281, column: 38, scope: !1425)
!1428 = !DILocation(line: 283, column: 2, scope: !1425)
!1429 = !DILocation(line: 283, column: 10, scope: !1425)
!1430 = !DILocation(line: 283, column: 18, scope: !1425)
!1431 = !DILocation(line: 283, column: 41, scope: !1425)
!1432 = !DILocation(line: 285, column: 6, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1425, file: !289, line: 285, column: 6)
!1434 = !DILocation(line: 285, column: 14, scope: !1433)
!1435 = !DILocation(line: 285, column: 22, scope: !1433)
!1436 = !DILocation(line: 285, column: 28, scope: !1433)
!1437 = !DILocation(line: 285, column: 6, scope: !1425)
!1438 = !DILocation(line: 286, column: 29, scope: !1433)
!1439 = !DILocation(line: 286, column: 37, scope: !1433)
!1440 = !DILocation(line: 286, column: 3, scope: !1433)
!1441 = !DILocation(line: 288, column: 30, scope: !1433)
!1442 = !DILocation(line: 288, column: 38, scope: !1433)
!1443 = !DILocation(line: 288, column: 3, scope: !1433)
!1444 = !DILocation(line: 290, column: 2, scope: !1425)
!1445 = distinct !DISubprogram(name: "vrrp_shutdown_backstop_thread", scope: !289, file: !289, line: 260, type: !405, isLocal: true, isDefinition: true, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !298)
!1446 = !DILocalVariable(name: "thread", arg: 1, scope: !1445, file: !289, line: 260, type: !104)
!1447 = !DILocation(line: 260, column: 41, scope: !1445)
!1448 = !DILocalVariable(name: "count", scope: !1445, file: !289, line: 262, type: !172)
!1449 = !DILocation(line: 262, column: 6, scope: !1445)
!1450 = !DILocalVariable(name: "t", scope: !1445, file: !289, line: 263, type: !104)
!1451 = !DILocation(line: 263, column: 12, scope: !1445)
!1452 = !DILocation(line: 266, column: 6, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1445, file: !289, line: 266, column: 6)
!1454 = !DILocation(line: 266, column: 14, scope: !1453)
!1455 = !DILocation(line: 266, column: 22, scope: !1453)
!1456 = !DILocation(line: 266, column: 28, scope: !1453)
!1457 = !DILocation(line: 266, column: 6, scope: !1445)
!1458 = !DILocation(line: 267, column: 18, scope: !1453)
!1459 = !DILocation(line: 267, column: 26, scope: !1453)
!1460 = !DILocation(line: 267, column: 3, scope: !1453)
!1461 = !DILocation(line: 269, column: 22, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1445, file: !289, line: 269, column: 2)
!1463 = !DILocation(line: 269, column: 30, scope: !1462)
!1464 = !DILocation(line: 269, column: 38, scope: !1462)
!1465 = !DILocation(line: 269, column: 12, scope: !1462)
!1466 = !DILocation(line: 269, column: 11, scope: !1462)
!1467 = !DILocalVariable(name: "__mptr", scope: !1468, file: !289, line: 269, type: !1469)
!1468 = distinct !DILexicalBlock(scope: !1462, file: !289, line: 269, column: 49)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64, align: 64)
!1470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !240)
!1471 = !DILocation(line: 269, column: 89, scope: !1468)
!1472 = !DILocation(line: 269, column: 109, scope: !1473)
!1473 = !DILexicalBlockFile(scope: !1468, file: !289, discriminator: 1)
!1474 = !DILocation(line: 269, column: 117, scope: !1473)
!1475 = !DILocation(line: 269, column: 125, scope: !1473)
!1476 = !DILocation(line: 269, column: 99, scope: !1473)
!1477 = !DILocation(line: 269, column: 89, scope: !1473)
!1478 = !DILocation(line: 269, column: 158, scope: !1473)
!1479 = !DILocation(line: 269, column: 150, scope: !1473)
!1480 = !DILocation(line: 269, column: 165, scope: !1473)
!1481 = !DILocation(line: 269, column: 134, scope: !1473)
!1482 = !DILocation(line: 269, column: 51, scope: !1473)
!1483 = !DILocation(line: 269, column: 3, scope: !1473)
!1484 = !DILocation(line: 269, column: 11, scope: !1473)
!1485 = !DILocation(line: 269, column: 11, scope: !1486)
!1486 = !DILexicalBlockFile(scope: !1462, file: !289, discriminator: 2)
!1487 = !DILocation(line: 269, column: 11, scope: !1488)
!1488 = !DILexicalBlockFile(scope: !1462, file: !289, discriminator: 3)
!1489 = !DILocation(line: 269, column: 9, scope: !1488)
!1490 = !DILocation(line: 269, column: 7, scope: !1488)
!1491 = !DILocation(line: 269, column: 3, scope: !1492)
!1492 = !DILexicalBlockFile(scope: !1493, file: !289, discriminator: 4)
!1493 = distinct !DILexicalBlock(scope: !1462, file: !289, line: 269, column: 2)
!1494 = !DILocation(line: 269, column: 2, scope: !1492)
!1495 = !DILocation(line: 270, column: 8, scope: !1493)
!1496 = !DILocation(line: 270, column: 3, scope: !1493)
!1497 = !DILocation(line: 269, column: 20, scope: !1498)
!1498 = !DILexicalBlockFile(scope: !1493, file: !289, discriminator: 5)
!1499 = !DILocation(line: 269, column: 23, scope: !1498)
!1500 = !DILocation(line: 269, column: 11, scope: !1498)
!1501 = !DILocation(line: 269, column: 10, scope: !1498)
!1502 = !DILocalVariable(name: "__mptr", scope: !1503, file: !289, line: 269, type: !1469)
!1503 = distinct !DILexicalBlock(scope: !1493, file: !289, line: 269, column: 30)
!1504 = !DILocation(line: 269, column: 70, scope: !1503)
!1505 = !DILocation(line: 269, column: 89, scope: !1506)
!1506 = !DILexicalBlockFile(scope: !1503, file: !289, discriminator: 6)
!1507 = !DILocation(line: 269, column: 92, scope: !1506)
!1508 = !DILocation(line: 269, column: 80, scope: !1506)
!1509 = !DILocation(line: 269, column: 70, scope: !1506)
!1510 = !DILocation(line: 269, column: 121, scope: !1506)
!1511 = !DILocation(line: 269, column: 113, scope: !1506)
!1512 = !DILocation(line: 269, column: 128, scope: !1506)
!1513 = !DILocation(line: 269, column: 97, scope: !1506)
!1514 = !DILocation(line: 269, column: 32, scope: !1506)
!1515 = !DILocation(line: 269, column: 3, scope: !1506)
!1516 = !DILocation(line: 269, column: 10, scope: !1506)
!1517 = !DILocation(line: 269, column: 10, scope: !1518)
!1518 = !DILexicalBlockFile(scope: !1493, file: !289, discriminator: 7)
!1519 = !DILocation(line: 269, column: 10, scope: !1520)
!1520 = !DILexicalBlockFile(scope: !1493, file: !289, discriminator: 8)
!1521 = !DILocation(line: 269, column: 8, scope: !1520)
!1522 = !DILocation(line: 269, column: 2, scope: !1520)
!1523 = distinct !{!1523, !1524}
!1524 = !DILocation(line: 269, column: 2, scope: !1445)
!1525 = !DILocation(line: 273, column: 4, scope: !1445)
!1526 = !DILocation(line: 273, column: 12, scope: !1445)
!1527 = !DILocation(line: 273, column: 20, scope: !1445)
!1528 = !DILocation(line: 273, column: 58, scope: !1445)
!1529 = !DILocation(line: 272, column: 2, scope: !1445)
!1530 = !DILocation(line: 275, column: 29, scope: !1445)
!1531 = !DILocation(line: 275, column: 37, scope: !1445)
!1532 = !DILocation(line: 275, column: 2, scope: !1445)
!1533 = !DILocation(line: 277, column: 2, scope: !1445)
!1534 = distinct !DISubprogram(name: "print_vrrp_data", scope: !289, file: !289, line: 766, type: !405, isLocal: true, isDefinition: true, scopeLine: 767, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !298)
!1535 = !DILocalVariable(name: "thread", arg: 1, scope: !1534, file: !289, line: 766, type: !104)
!1536 = !DILocation(line: 766, column: 52, scope: !1534)
!1537 = !DILocation(line: 768, column: 2, scope: !1534)
!1538 = !DILocation(line: 769, column: 2, scope: !1534)
!1539 = distinct !DISubprogram(name: "print_vrrp_stats", scope: !289, file: !289, line: 773, type: !405, isLocal: true, isDefinition: true, scopeLine: 774, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !298)
!1540 = !DILocalVariable(name: "thread", arg: 1, scope: !1539, file: !289, line: 773, type: !104)
!1541 = !DILocation(line: 773, column: 53, scope: !1539)
!1542 = !DILocation(line: 775, column: 2, scope: !1539)
!1543 = !DILocation(line: 776, column: 2, scope: !1539)
!1544 = distinct !DISubprogram(name: "stop_vrrp", scope: !289, file: !289, line: 382, type: !1545, isLocal: true, isDefinition: true, scopeLine: 383, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !298)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{null, !172}
!1547 = !DILocalVariable(name: "status", arg: 1, scope: !1544, file: !289, line: 382, type: !172)
!1548 = !DILocation(line: 382, column: 15, scope: !1544)
!1549 = !DILocation(line: 384, column: 6, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1544, file: !289, line: 384, column: 6)
!1551 = !DILocation(line: 384, column: 6, scope: !1544)
!1552 = !DILocation(line: 385, column: 3, scope: !1550)
!1553 = !DILocation(line: 388, column: 2, scope: !1544)
!1554 = !DILocation(line: 390, column: 24, scope: !1544)
!1555 = !DILocation(line: 390, column: 2, scope: !1544)
!1556 = !DILocation(line: 393, column: 7, scope: !1544)
!1557 = !DILocation(line: 393, column: 2, scope: !1544)
!1558 = distinct !DISubprogram(name: "set_vrrp_max_fds", scope: !289, file: !289, line: 108, type: !463, isLocal: true, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !298)
!1559 = !DILocalVariable(name: "orig_rlim", scope: !1558, file: !289, line: 110, type: !1560)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !76, line: 139, size: 128, align: 64, elements: !1561)
!1561 = !{!1562, !1565}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1560, file: !76, line: 142, baseType: !1563, size: 64, align: 64)
!1563 = !DIDerivedType(tag: DW_TAG_typedef, name: "rlim_t", file: !76, line: 131, baseType: !1564)
!1564 = !DIDerivedType(tag: DW_TAG_typedef, name: "__rlim_t", file: !199, line: 136, baseType: !109)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1560, file: !76, line: 144, baseType: !1563, size: 64, align: 64, offset: 64)
!1566 = !DILocation(line: 110, column: 16, scope: !1558)
!1567 = !DILocalVariable(name: "rlim", scope: !1558, file: !289, line: 110, type: !1560)
!1568 = !DILocation(line: 110, column: 27, scope: !1558)
!1569 = !DILocation(line: 112, column: 7, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1558, file: !289, line: 112, column: 6)
!1571 = !DILocation(line: 112, column: 18, scope: !1570)
!1572 = !DILocation(line: 112, column: 6, scope: !1558)
!1573 = !DILocation(line: 113, column: 3, scope: !1570)
!1574 = !DILocation(line: 115, column: 6, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1558, file: !289, line: 115, column: 6)
!1576 = !DILocation(line: 115, column: 42, scope: !1575)
!1577 = !DILocation(line: 115, column: 6, scope: !1558)
!1578 = !DILocation(line: 116, column: 73, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1575, file: !289, line: 115, column: 49)
!1580 = !DILocation(line: 116, column: 72, scope: !1579)
!1581 = !DILocation(line: 116, column: 3, scope: !1582)
!1582 = !DILexicalBlockFile(scope: !1579, file: !289, discriminator: 1)
!1583 = !DILocation(line: 117, column: 3, scope: !1579)
!1584 = !DILocation(line: 145, column: 20, scope: !1558)
!1585 = !DILocation(line: 145, column: 31, scope: !1558)
!1586 = !DILocation(line: 145, column: 38, scope: !1558)
!1587 = !DILocation(line: 145, column: 45, scope: !1558)
!1588 = !DILocation(line: 145, column: 49, scope: !1558)
!1589 = !DILocation(line: 145, column: 54, scope: !1558)
!1590 = !DILocation(line: 145, column: 18, scope: !1558)
!1591 = !DILocation(line: 145, column: 7, scope: !1558)
!1592 = !DILocation(line: 145, column: 16, scope: !1558)
!1593 = !DILocation(line: 146, column: 11, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1558, file: !289, line: 146, column: 6)
!1595 = !DILocation(line: 146, column: 33, scope: !1594)
!1596 = !DILocation(line: 146, column: 20, scope: !1594)
!1597 = !DILocation(line: 146, column: 6, scope: !1558)
!1598 = !DILocation(line: 147, column: 3, scope: !1594)
!1599 = !DILocation(line: 149, column: 23, scope: !1558)
!1600 = !DILocation(line: 149, column: 7, scope: !1558)
!1601 = !DILocation(line: 149, column: 16, scope: !1558)
!1602 = !DILocation(line: 151, column: 6, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1558, file: !289, line: 151, column: 6)
!1604 = !DILocation(line: 151, column: 37, scope: !1603)
!1605 = !DILocation(line: 151, column: 6, scope: !1558)
!1606 = !DILocation(line: 152, column: 87, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1603, file: !289, line: 151, column: 44)
!1608 = !DILocation(line: 152, column: 99, scope: !1607)
!1609 = !DILocation(line: 152, column: 98, scope: !1607)
!1610 = !DILocation(line: 152, column: 3, scope: !1611)
!1611 = !DILexicalBlockFile(scope: !1607, file: !289, discriminator: 1)
!1612 = !DILocation(line: 153, column: 3, scope: !1607)
!1613 = !DILocation(line: 156, column: 61, scope: !1558)
!1614 = !DILocation(line: 156, column: 2, scope: !1558)
!1615 = !DILocation(line: 159, column: 2, scope: !1558)
!1616 = !DILocation(line: 160, column: 1, scope: !1558)
!1617 = !DILocation(line: 160, column: 1, scope: !1618)
!1618 = !DILexicalBlockFile(scope: !1558, file: !289, discriminator: 1)
