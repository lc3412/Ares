; ModuleID = './[inter]lib--scheduler.o.i'
source_filename = "./[inter]lib--scheduler.o.i"
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
%struct.epoll_event = type <{ i32, %union.epoll_data }>
%union.epoll_data = type { i8* }
%struct._thread_event = type { %struct._thread*, %struct._thread*, i64, i32, %struct.rb_node }
%struct._thread = type { i64, i32, %struct._thread_master*, i32 (%struct._thread*)*, i8*, %struct.timeval, %union.anon, %struct._thread_event*, %union.anon.0 }
%struct.timeval = type { i64, i64 }
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32 }
%union.anon.0 = type { %struct.rb_node }
%union.anon.1 = type { i32 }
%union.anon.2 = type { i32 }
%union.anon.3 = type { i32 }
%union.anon.4 = type { i32 }
%struct.utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%union.anon.5 = type { i32 }
%struct.itimerspec = type { %struct.timespec, %struct.timespec }
%struct.timespec = type { i64, i64 }

@master = global %struct._thread_master* null, align 8
@child_finder_name = internal global i8* (i32)* null, align 8
@child_finder_destroy = internal global void ()* null, align 8
@child_adder = internal global void (%struct._thread*)* null, align 8
@child_finder = internal global %struct._thread* (i32)* null, align 8
@child_remover = internal global void (%struct._thread*)* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Using optimised child finder\00", align 1
@sav_argc = internal global i32 0, align 4
@sav_argv = internal global i8** null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%s'%s'\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Command line\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"pid %d\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"%s exited with permanent error %s. Terminating\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"CONFIG\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"FATAL\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"%s exited with status %d\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"%s exited due to segmentation fault (SIGSEGV).\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"  %s\00", align 1
@.str.12 = private unnamed_addr constant [68 x i8] c"Please report a bug at https://github.com/acassen/keepalived/issues\00", align 1
@.str.13 = private unnamed_addr constant [65 x i8] c"and include this log from when keepalived started, a description\00", align 1
@.str.14 = private unnamed_addr constant [82 x i8] c"of what happened before the crash, your configuration file and the details below.\00", align 1
@.str.15 = private unnamed_addr constant [72 x i8] c"Also provide the output of keepalived -v, what Linux distro and version\00", align 1
@.str.16 = private unnamed_addr constant [78 x i8] c"you are running on, and whether keepalived is being run in a container or VM.\00", align 1
@.str.17 = private unnamed_addr constant [85 x i8] c"A failure to provide all this information may mean the crash cannot be investigated.\00", align 1
@.str.18 = private unnamed_addr constant [78 x i8] c"If you are able to provide a stack backtrace with gdb that would really help.\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"  Source version %s %s%s\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"2.0.7\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c", git commit \00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"v2.0.7-77-g3e3b4e7\00", align 1
@.str.23 = private unnamed_addr constant [47 x i8] c"  Built with kernel headers for Linux %d.%d.%d\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"  Running on %s %s %s\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"configure options\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"Config options\00", align 1
@.str.27 = private unnamed_addr constant [67 x i8] c" LIBIPSET_DYNAMIC LVS VRRP VRRP_AUTH OLD_CHKSUM_COMPAT FIB_ROUTING\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"System options\00", align 1
@.str.29 = private unnamed_addr constant [500 x i8] c" PIPE2 SIGNALFD INOTIFY_INIT1 VSYSLOG EPOLL_CREATE1 IPV4_DEVCONF LIBNL3 RTA_ENCAP RTA_NEWDST RTA_PREF FRA_SUPPRESS_PREFIXLEN FRA_SUPPRESS_IFGROUP FRA_TUN_ID RTAX_CC_ALGO RTAX_QUICKACK RTEXT_FILTER_SKIP_STATS RTA_VIA FRA_OIFNAME IFA_FLAGS IP_MULTICAST_ALL LWTUNNEL_ENCAP_MPLS LWTUNNEL_ENCAP_ILA LIBIPTC LIBIPVS_NETLINK IPVS_DEST_ATTR_ADDR_FAMILY IPVS_SYNCD_ATTRIBUTES IPVS_64BIT_STATS VRRP_VMAC SOCK_NONBLOCK SOCK_CLOEXEC O_PATH GLOB_BRACE INET6_ADDR_GEN_MODE VRF SO_MARK SCHED_RT SCHED_RESET_ON_FORK\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"%s exited due to signal %d\00", align 1
@.str.31 = private unnamed_addr constant [46 x i8] c"scheduler: Error creating EPOLL instance (%m)\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"scheduler: Cant create timerfd (%m)\00", align 1
@.str.33 = private unnamed_addr constant [52 x i8] c"scheduler: Cant allocate read event for fd [%d](%m)\00", align 1
@.str.34 = private unnamed_addr constant [74 x i8] c"scheduler: There is already read event %p (read %p) registered on fd [%d]\00", align 1
@.str.35 = private unnamed_addr constant [52 x i8] c"scheduler: Cant register read event for fd [%d](%m)\00", align 1
@time_now = external global %struct.timeval, align 8
@.str.36 = private unnamed_addr constant [53 x i8] c"scheduler: Cant allocate write event for fd [%d](%m)\00", align 1
@.str.37 = private unnamed_addr constant [62 x i8] c"scheduler: There is already write event registered on fd [%d]\00", align 1
@.str.38 = private unnamed_addr constant [53 x i8] c"scheduler: Cant register write event for fd [%d](%m)\00", align 1
@shutting_down = internal global i8 0, align 1
@prog_type = common global i32 0, align 4
@child_finder_list_size = internal global i64 0, align 8
@.str.39 = private unnamed_addr constant [12 x i8] c"%*s%s: %.*s\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"%*s%.*s\00", align 1
@.str.41 = private unnamed_addr constant [47 x i8] c"scheduler: Error reading on timerfd fd:%d (%m)\00", align 1
@.str.42 = private unnamed_addr constant [59 x i8] c"scheduler: Error performing control on EPOLL instance (%m)\00", align 1
@.str.43 = private unnamed_addr constant [53 x i8] c"scheduler: Error performing DEL op no event linked?!\00", align 1
@.str.44 = private unnamed_addr constant [50 x i8] c"scheduler: Error performing DEL op for fd:%d (%m)\00", align 1
@.str.45 = private unnamed_addr constant [32 x i8] c"scheduler: epoll_wait error: %s\00", align 1
@.str.46 = private unnamed_addr constant [53 x i8] c"scheduler: No read thread bound on fd:%d (fl:0x%.4X)\00", align 1
@.str.47 = private unnamed_addr constant [54 x i8] c"scheduler: No write thread bound on fd:%d (fl:0x%.4X)\00", align 1
@.str.48 = private unnamed_addr constant [28 x i8] c"Received EPOLLHUP for fd %d\00", align 1
@.str.49 = private unnamed_addr constant [28 x i8] c"Received EPOLLERR for fd %d\00", align 1

; Function Attrs: nounwind uwtable
define void @set_child_finder_name(i8* (i32)*) #0 !dbg !293 {
  %2 = alloca i8* (i32)*, align 8
  store i8* (i32)* %0, i8* (i32)** %2, align 8
  call void @llvm.dbg.declare(metadata i8* (i32)** %2, metadata !297, metadata !298), !dbg !299
  %3 = load i8* (i32)*, i8* (i32)** %2, align 8, !dbg !300
  store i8* (i32)* %3, i8* (i32)** @child_finder_name, align 8, !dbg !301
  ret void, !dbg !302
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define void @set_child_finder(void (%struct._thread*)*, %struct._thread* (i32)*, void (%struct._thread*)*, i1 (i64)*, void ()*, i64) #0 !dbg !303 {
  %7 = alloca void (%struct._thread*)*, align 8
  %8 = alloca %struct._thread* (i32)*, align 8
  %9 = alloca void (%struct._thread*)*, align 8
  %10 = alloca i1 (i64)*, align 8
  %11 = alloca void ()*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  store void (%struct._thread*)* %0, void (%struct._thread*)** %7, align 8
  call void @llvm.dbg.declare(metadata void (%struct._thread*)** %7, metadata !309, metadata !298), !dbg !310
  store %struct._thread* (i32)* %1, %struct._thread* (i32)** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._thread* (i32)** %8, metadata !311, metadata !298), !dbg !312
  store void (%struct._thread*)* %2, void (%struct._thread*)** %9, align 8
  call void @llvm.dbg.declare(metadata void (%struct._thread*)** %9, metadata !313, metadata !298), !dbg !314
  store i1 (i64)* %3, i1 (i64)** %10, align 8
  call void @llvm.dbg.declare(metadata i1 (i64)** %10, metadata !315, metadata !298), !dbg !316
  store void ()* %4, void ()** %11, align 8
  call void @llvm.dbg.declare(metadata void ()** %11, metadata !317, metadata !298), !dbg !318
  store i64 %5, i64* %12, align 8
  call void @llvm.dbg.declare(metadata i64* %12, metadata !319, metadata !298), !dbg !320
  call void @llvm.dbg.declare(metadata i8* %13, metadata !321, metadata !298), !dbg !322
  store i8 0, i8* %13, align 1, !dbg !322
  %14 = load void ()*, void ()** @child_finder_destroy, align 8, !dbg !323
  %15 = icmp ne void ()* %14, null, !dbg !323
  br i1 %15, label %16, label %18, !dbg !325

; <label>:16:                                     ; preds = %6
  %17 = load void ()*, void ()** @child_finder_destroy, align 8, !dbg !326
  call void %17(), !dbg !326
  br label %18, !dbg !326

; <label>:18:                                     ; preds = %16, %6
  %19 = load void (%struct._thread*)*, void (%struct._thread*)** %7, align 8, !dbg !327
  %20 = icmp eq void (%struct._thread*)* %19, inttoptr (i64 1 to void (%struct._thread*)*), !dbg !329
  br i1 %20, label %21, label %26, !dbg !330

; <label>:21:                                     ; preds = %18
  %22 = load i64, i64* %12, align 8, !dbg !331
  %23 = call zeroext i1 @default_child_finder_init(i64 %22), !dbg !334
  br i1 %23, label %24, label %25, !dbg !335

; <label>:24:                                     ; preds = %21
  store void (%struct._thread*)* @default_child_adder, void (%struct._thread*)** @child_adder, align 8, !dbg !336
  store %struct._thread* (i32)* @default_child_finder, %struct._thread* (i32)** @child_finder, align 8, !dbg !338
  store void (%struct._thread*)* @default_child_remover, void (%struct._thread*)** @child_remover, align 8, !dbg !339
  store void ()* @default_child_finder_destroy, void ()** @child_finder_destroy, align 8, !dbg !340
  store i8 1, i8* %13, align 1, !dbg !341
  br label %25, !dbg !342

; <label>:25:                                     ; preds = %24, %21
  br label %42, !dbg !343

; <label>:26:                                     ; preds = %18
  %27 = load void (%struct._thread*)*, void (%struct._thread*)** @child_adder, align 8, !dbg !344
  %28 = icmp ne void (%struct._thread*)* %27, null, !dbg !344
  br i1 %28, label %29, label %41, !dbg !347

; <label>:29:                                     ; preds = %26
  %30 = load i1 (i64)*, i1 (i64)** %10, align 8, !dbg !348
  %31 = icmp ne i1 (i64)* %30, null, !dbg !348
  br i1 %31, label %32, label %41, !dbg !350

; <label>:32:                                     ; preds = %29
  %33 = load i1 (i64)*, i1 (i64)** %10, align 8, !dbg !351
  %34 = load i64, i64* %12, align 8, !dbg !353
  %35 = call zeroext i1 %33(i64 %34), !dbg !351
  br i1 %35, label %36, label %41, !dbg !354

; <label>:36:                                     ; preds = %32
  %37 = load void (%struct._thread*)*, void (%struct._thread*)** %7, align 8, !dbg !355
  store void (%struct._thread*)* %37, void (%struct._thread*)** @child_adder, align 8, !dbg !357
  %38 = load %struct._thread* (i32)*, %struct._thread* (i32)** %8, align 8, !dbg !358
  store %struct._thread* (i32)* %38, %struct._thread* (i32)** @child_finder, align 8, !dbg !359
  %39 = load void (%struct._thread*)*, void (%struct._thread*)** %9, align 8, !dbg !360
  store void (%struct._thread*)* %39, void (%struct._thread*)** @child_remover, align 8, !dbg !361
  %40 = load void ()*, void ()** %11, align 8, !dbg !362
  store void ()* %40, void ()** @child_finder_destroy, align 8, !dbg !363
  store i8 1, i8* %13, align 1, !dbg !364
  br label %41, !dbg !365

; <label>:41:                                     ; preds = %36, %32, %29, %26
  br label %42

; <label>:42:                                     ; preds = %41, %25
  %43 = load i8, i8* %13, align 1, !dbg !366
  %44 = trunc i8 %43 to i1, !dbg !366
  br i1 %44, label %45, label %46, !dbg !368

; <label>:45:                                     ; preds = %42
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0)), !dbg !369
  br label %47, !dbg !369

; <label>:46:                                     ; preds = %42
  store void (%struct._thread*)* null, void (%struct._thread*)** @child_adder, align 8, !dbg !370
  store %struct._thread* (i32)* null, %struct._thread* (i32)** @child_finder, align 8, !dbg !372
  store void (%struct._thread*)* null, void (%struct._thread*)** @child_remover, align 8, !dbg !373
  store void ()* null, void ()** @child_finder_destroy, align 8, !dbg !374
  br label %47

; <label>:47:                                     ; preds = %46, %45
  ret void, !dbg !375
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @default_child_finder_init(i64) #0 !dbg !376 {
  %2 = alloca i1, align 1
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !377, metadata !298), !dbg !378
  store i64 1, i64* @child_finder_list_size, align 8, !dbg !379
  %4 = load i64, i64* %3, align 8, !dbg !380
  %5 = icmp ult i64 %4, 32, !dbg !382
  br i1 %5, label %6, label %7, !dbg !383

; <label>:6:                                      ; preds = %1
  store i1 false, i1* %2, align 1, !dbg !384
  br label %25, !dbg !384

; <label>:7:                                      ; preds = %1
  br label %8, !dbg !385

; <label>:8:                                      ; preds = %17, %7
  %9 = load i64, i64* %3, align 8, !dbg !386
  %10 = udiv i64 %9, 2, !dbg !386
  store i64 %10, i64* %3, align 8, !dbg !386
  %11 = icmp ugt i64 %10, 1, !dbg !388
  br i1 %11, label %12, label %15, !dbg !389

; <label>:12:                                     ; preds = %8
  %13 = load i64, i64* @child_finder_list_size, align 8, !dbg !390
  %14 = icmp ult i64 %13, 256, !dbg !392
  br label %15

; <label>:15:                                     ; preds = %12, %8
  %16 = phi i1 [ false, %8 ], [ %14, %12 ]
  br i1 %16, label %17, label %20, !dbg !393

; <label>:17:                                     ; preds = %15
  %18 = load i64, i64* @child_finder_list_size, align 8, !dbg !395
  %19 = shl i64 %18, 1, !dbg !395
  store i64 %19, i64* @child_finder_list_size, align 8, !dbg !395
  br label %8, !dbg !396, !llvm.loop !398

; <label>:20:                                     ; preds = %15
  %21 = load i64, i64* @child_finder_list_size, align 8, !dbg !399
  %22 = call %struct._list* @alloc_mlist(void (i8*)* null, void (%struct._IO_FILE*, i8*)* null, i64 %21), !dbg !400
  %23 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !401
  %24 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %23, i32 0, i32 7, !dbg !402
  store %struct._list* %22, %struct._list** %24, align 8, !dbg !403
  store i1 true, i1* %2, align 1, !dbg !404
  br label %25, !dbg !404

; <label>:25:                                     ; preds = %20, %6
  %26 = load i1, i1* %2, align 1, !dbg !405
  ret i1 %26, !dbg !405
}

; Function Attrs: nounwind uwtable
define internal void @default_child_adder(%struct._thread*) #0 !dbg !406 {
  %2 = alloca %struct._thread*, align 8
  store %struct._thread* %0, %struct._thread** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %2, metadata !407, metadata !298), !dbg !408
  %3 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !409
  %4 = getelementptr inbounds %struct._thread, %struct._thread* %3, i32 0, i32 6, !dbg !410
  %5 = bitcast %union.anon* %4 to %struct.anon*, !dbg !411
  %6 = getelementptr inbounds %struct.anon, %struct.anon* %5, i32 0, i32 0, !dbg !412
  %7 = load i32, i32* %6, align 8, !dbg !412
  %8 = call i64 @get_pid_hash(i32 %7), !dbg !413
  %9 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !414
  %10 = getelementptr inbounds %struct._thread, %struct._thread* %9, i32 0, i32 2, !dbg !415
  %11 = load %struct._thread_master*, %struct._thread_master** %10, align 8, !dbg !415
  %12 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %11, i32 0, i32 7, !dbg !416
  %13 = load %struct._list*, %struct._list** %12, align 8, !dbg !416
  %14 = getelementptr inbounds %struct._list, %struct._list* %13, i64 %8, !dbg !414
  %15 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !417
  %16 = bitcast %struct._thread* %15 to i8*, !dbg !417
  call void @list_add(%struct._list* %14, i8* %16), !dbg !418
  ret void, !dbg !420
}

; Function Attrs: nounwind uwtable
define internal %struct._thread* @default_child_finder(i32) #0 !dbg !421 {
  %2 = alloca %struct._thread*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._thread*, align 8
  %5 = alloca %struct._element*, align 8
  %6 = alloca %struct._list*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !422, metadata !298), !dbg !423
  call void @llvm.dbg.declare(metadata %struct._thread** %4, metadata !424, metadata !298), !dbg !425
  call void @llvm.dbg.declare(metadata %struct._element** %5, metadata !426, metadata !298), !dbg !428
  call void @llvm.dbg.declare(metadata %struct._list** %6, metadata !429, metadata !298), !dbg !430
  %7 = load i32, i32* %3, align 4, !dbg !431
  %8 = call i64 @get_pid_hash(i32 %7), !dbg !432
  %9 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !433
  %10 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %9, i32 0, i32 7, !dbg !434
  %11 = load %struct._list*, %struct._list** %10, align 8, !dbg !434
  %12 = getelementptr inbounds %struct._list, %struct._list* %11, i64 %8, !dbg !433
  store %struct._list* %12, %struct._list** %6, align 8, !dbg !430
  %13 = load %struct._list*, %struct._list** %6, align 8, !dbg !435
  %14 = icmp eq %struct._list* %13, null, !dbg !437
  br i1 %14, label %25, label %15, !dbg !438

; <label>:15:                                     ; preds = %1
  %16 = load %struct._list*, %struct._list** %6, align 8, !dbg !439
  %17 = getelementptr inbounds %struct._list, %struct._list* %16, i32 0, i32 0, !dbg !441
  %18 = load %struct._element*, %struct._element** %17, align 8, !dbg !441
  %19 = icmp eq %struct._element* %18, null, !dbg !442
  br i1 %19, label %20, label %26, !dbg !443

; <label>:20:                                     ; preds = %15
  %21 = load %struct._list*, %struct._list** %6, align 8, !dbg !444
  %22 = getelementptr inbounds %struct._list, %struct._list* %21, i32 0, i32 1, !dbg !446
  %23 = load %struct._element*, %struct._element** %22, align 8, !dbg !446
  %24 = icmp eq %struct._element* %23, null, !dbg !447
  br i1 %24, label %25, label %26, !dbg !448

; <label>:25:                                     ; preds = %20, %1
  store %struct._thread* null, %struct._thread** %2, align 8, !dbg !449
  br label %68, !dbg !449

; <label>:26:                                     ; preds = %20, %15
  %27 = load %struct._list*, %struct._list** %6, align 8, !dbg !450
  %28 = icmp ne %struct._list* %27, null, !dbg !452
  br i1 %28, label %29, label %39, !dbg !452

; <label>:29:                                     ; preds = %26
  %30 = load %struct._list*, %struct._list** %6, align 8, !dbg !453
  %31 = icmp ne %struct._list* %30, null, !dbg !455
  br i1 %31, label %33, label %32, !dbg !456

; <label>:32:                                     ; preds = %29
  br label %37, !dbg !457

; <label>:33:                                     ; preds = %29
  %34 = load %struct._list*, %struct._list** %6, align 8, !dbg !459
  %35 = getelementptr inbounds %struct._list, %struct._list* %34, i32 0, i32 0, !dbg !461
  %36 = load %struct._element*, %struct._element** %35, align 8, !dbg !461
  br label %37, !dbg !462

; <label>:37:                                     ; preds = %33, %32
  %38 = phi %struct._element* [ null, %32 ], [ %36, %33 ], !dbg !463
  br label %40, !dbg !465

; <label>:39:                                     ; preds = %26
  br label %40, !dbg !466

; <label>:40:                                     ; preds = %39, %37
  %41 = phi %struct._element* [ %38, %37 ], [ null, %39 ], !dbg !468
  store %struct._element* %41, %struct._element** %5, align 8, !dbg !470
  br label %42, !dbg !471

; <label>:42:                                     ; preds = %63, %40
  %43 = load %struct._element*, %struct._element** %5, align 8, !dbg !472
  %44 = icmp ne %struct._element* %43, null, !dbg !475
  br i1 %44, label %45, label %50, !dbg !476

; <label>:45:                                     ; preds = %42
  %46 = load %struct._element*, %struct._element** %5, align 8, !dbg !477
  %47 = getelementptr inbounds %struct._element, %struct._element* %46, i32 0, i32 2, !dbg !479
  %48 = load i8*, i8** %47, align 8, !dbg !479
  %49 = bitcast i8* %48 to %struct._thread*, !dbg !480
  store %struct._thread* %49, %struct._thread** %4, align 8, !dbg !481
  br label %50

; <label>:50:                                     ; preds = %45, %42
  %51 = phi i1 [ false, %42 ], [ true, %45 ]
  br i1 %51, label %52, label %67, !dbg !482

; <label>:52:                                     ; preds = %50
  %53 = load %struct._thread*, %struct._thread** %4, align 8, !dbg !484
  %54 = getelementptr inbounds %struct._thread, %struct._thread* %53, i32 0, i32 6, !dbg !487
  %55 = bitcast %union.anon* %54 to %struct.anon*, !dbg !488
  %56 = getelementptr inbounds %struct.anon, %struct.anon* %55, i32 0, i32 0, !dbg !489
  %57 = load i32, i32* %56, align 8, !dbg !489
  %58 = load i32, i32* %3, align 4, !dbg !490
  %59 = icmp eq i32 %57, %58, !dbg !491
  br i1 %59, label %60, label %62, !dbg !492

; <label>:60:                                     ; preds = %52
  %61 = load %struct._thread*, %struct._thread** %4, align 8, !dbg !493
  store %struct._thread* %61, %struct._thread** %2, align 8, !dbg !494
  br label %68, !dbg !494

; <label>:62:                                     ; preds = %52
  br label %63, !dbg !495

; <label>:63:                                     ; preds = %62
  %64 = load %struct._element*, %struct._element** %5, align 8, !dbg !496
  %65 = getelementptr inbounds %struct._element, %struct._element* %64, i32 0, i32 0, !dbg !498
  %66 = load %struct._element*, %struct._element** %65, align 8, !dbg !498
  store %struct._element* %66, %struct._element** %5, align 8, !dbg !499
  br label %42, !dbg !500, !llvm.loop !501

; <label>:67:                                     ; preds = %50
  store %struct._thread* null, %struct._thread** %2, align 8, !dbg !503
  br label %68, !dbg !503

; <label>:68:                                     ; preds = %67, %60, %25
  %69 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !504
  ret %struct._thread* %69, !dbg !504
}

; Function Attrs: nounwind uwtable
define internal void @default_child_remover(%struct._thread*) #0 !dbg !505 {
  %2 = alloca %struct._thread*, align 8
  store %struct._thread* %0, %struct._thread** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %2, metadata !506, metadata !298), !dbg !507
  %3 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !508
  %4 = getelementptr inbounds %struct._thread, %struct._thread* %3, i32 0, i32 6, !dbg !509
  %5 = bitcast %union.anon* %4 to %struct.anon*, !dbg !510
  %6 = getelementptr inbounds %struct.anon, %struct.anon* %5, i32 0, i32 0, !dbg !511
  %7 = load i32, i32* %6, align 8, !dbg !511
  %8 = call i64 @get_pid_hash(i32 %7), !dbg !512
  %9 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !513
  %10 = getelementptr inbounds %struct._thread, %struct._thread* %9, i32 0, i32 2, !dbg !514
  %11 = load %struct._thread_master*, %struct._thread_master** %10, align 8, !dbg !514
  %12 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %11, i32 0, i32 7, !dbg !515
  %13 = load %struct._list*, %struct._list** %12, align 8, !dbg !515
  %14 = getelementptr inbounds %struct._list, %struct._list* %13, i64 %8, !dbg !513
  %15 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !516
  %16 = bitcast %struct._thread* %15 to i8*, !dbg !516
  call void @list_del(%struct._list* %14, i8* %16), !dbg !517
  ret void, !dbg !519
}

; Function Attrs: nounwind uwtable
define internal void @default_child_finder_destroy() #0 !dbg !520 {
  %1 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !521
  %2 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %1, i32 0, i32 7, !dbg !523
  %3 = load %struct._list*, %struct._list** %2, align 8, !dbg !523
  %4 = icmp ne %struct._list* %3, null, !dbg !521
  br i1 %4, label %5, label %12, !dbg !524

; <label>:5:                                      ; preds = %0
  %6 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !525
  %7 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %6, i32 0, i32 7, !dbg !527
  %8 = load %struct._list*, %struct._list** %7, align 8, !dbg !527
  %9 = load i64, i64* @child_finder_list_size, align 8, !dbg !528
  call void @free_mlist(%struct._list* %8, i64 %9), !dbg !529
  %10 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !530
  %11 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %10, i32 0, i32 7, !dbg !531
  store %struct._list* null, %struct._list** %11, align 8, !dbg !532
  br label %12, !dbg !533

; <label>:12:                                     ; preds = %5, %0
  ret void, !dbg !534
}

declare void @log_message(i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @set_child_remover(void (%struct._thread*)*) #0 !dbg !535 {
  %2 = alloca void (%struct._thread*)*, align 8
  store void (%struct._thread*)* %0, void (%struct._thread*)** %2, align 8
  call void @llvm.dbg.declare(metadata void (%struct._thread*)** %2, metadata !538, metadata !298), !dbg !539
  %3 = load void (%struct._thread*)*, void (%struct._thread*)** %2, align 8, !dbg !540
  store void (%struct._thread*)* %3, void (%struct._thread*)** @child_remover, align 8, !dbg !541
  ret void, !dbg !542
}

; Function Attrs: nounwind uwtable
define void @destroy_child_finder() #0 !dbg !543 {
  call void @set_child_finder(void (%struct._thread*)* null, %struct._thread* (i32)* null, void (%struct._thread*)* null, i1 (i64)* null, void ()* null, i64 0), !dbg !544
  ret void, !dbg !545
}

; Function Attrs: nounwind uwtable
define void @save_cmd_line_options(i32, i8**) #0 !dbg !546 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !549, metadata !298), !dbg !550
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !551, metadata !298), !dbg !552
  %5 = load i32, i32* %3, align 4, !dbg !553
  store i32 %5, i32* @sav_argc, align 4, !dbg !554
  %6 = load i8**, i8*** %4, align 8, !dbg !555
  store i8** %6, i8*** @sav_argv, align 8, !dbg !556
  ret void, !dbg !557
}

; Function Attrs: nounwind uwtable
define void @log_command_line(i32) #0 !dbg !558 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !561, metadata !298), !dbg !562
  call void @llvm.dbg.declare(metadata i64* %3, metadata !563, metadata !298), !dbg !564
  store i64 0, i64* %3, align 8, !dbg !564
  call void @llvm.dbg.declare(metadata i8** %4, metadata !565, metadata !298), !dbg !566
  call void @llvm.dbg.declare(metadata i8** %5, metadata !567, metadata !298), !dbg !568
  call void @llvm.dbg.declare(metadata i32* %6, metadata !569, metadata !298), !dbg !570
  %7 = load i8**, i8*** @sav_argv, align 8, !dbg !571
  %8 = icmp ne i8** %7, null, !dbg !571
  br i1 %8, label %10, label %9, !dbg !573

; <label>:9:                                      ; preds = %1
  br label %57, !dbg !574

; <label>:10:                                     ; preds = %1
  store i32 0, i32* %6, align 4, !dbg !575
  br label %11, !dbg !577

; <label>:11:                                     ; preds = %25, %10
  %12 = load i32, i32* %6, align 4, !dbg !578
  %13 = load i32, i32* @sav_argc, align 4, !dbg !581
  %14 = icmp slt i32 %12, %13, !dbg !582
  br i1 %14, label %15, label %28, !dbg !583

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %6, align 4, !dbg !584
  %17 = sext i32 %16 to i64, !dbg !585
  %18 = load i8**, i8*** @sav_argv, align 8, !dbg !585
  %19 = getelementptr inbounds i8*, i8** %18, i64 %17, !dbg !585
  %20 = load i8*, i8** %19, align 8, !dbg !585
  %21 = call i64 @strlen(i8* %20) #8, !dbg !586
  %22 = add i64 %21, 3, !dbg !587
  %23 = load i64, i64* %3, align 8, !dbg !588
  %24 = add i64 %23, %22, !dbg !588
  store i64 %24, i64* %3, align 8, !dbg !588
  br label %25, !dbg !589

; <label>:25:                                     ; preds = %15
  %26 = load i32, i32* %6, align 4, !dbg !590
  %27 = add nsw i32 %26, 1, !dbg !590
  store i32 %27, i32* %6, align 4, !dbg !590
  br label %11, !dbg !592, !llvm.loop !593

; <label>:28:                                     ; preds = %11
  %29 = load i64, i64* %3, align 8, !dbg !595
  %30 = call i8* @zalloc(i64 %29), !dbg !596
  store i8* %30, i8** %4, align 8, !dbg !597
  store i32 0, i32* %6, align 4, !dbg !598
  %31 = load i8*, i8** %4, align 8, !dbg !600
  store i8* %31, i8** %5, align 8, !dbg !601
  br label %32, !dbg !602

; <label>:32:                                     ; preds = %50, %28
  %33 = load i32, i32* %6, align 4, !dbg !603
  %34 = load i32, i32* @sav_argc, align 4, !dbg !606
  %35 = icmp slt i32 %33, %34, !dbg !607
  br i1 %35, label %36, label %53, !dbg !608

; <label>:36:                                     ; preds = %32
  %37 = load i8*, i8** %5, align 8, !dbg !609
  %38 = load i32, i32* %6, align 4, !dbg !610
  %39 = icmp ne i32 %38, 0, !dbg !610
  %40 = select i1 %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), !dbg !610
  %41 = load i32, i32* %6, align 4, !dbg !611
  %42 = sext i32 %41 to i64, !dbg !612
  %43 = load i8**, i8*** @sav_argv, align 8, !dbg !612
  %44 = getelementptr inbounds i8*, i8** %43, i64 %42, !dbg !612
  %45 = load i8*, i8** %44, align 8, !dbg !612
  %46 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* %40, i8* %45) #9, !dbg !613
  %47 = load i8*, i8** %5, align 8, !dbg !614
  %48 = sext i32 %46 to i64, !dbg !614
  %49 = getelementptr inbounds i8, i8* %47, i64 %48, !dbg !614
  store i8* %49, i8** %5, align 8, !dbg !614
  br label %50, !dbg !615

; <label>:50:                                     ; preds = %36
  %51 = load i32, i32* %6, align 4, !dbg !616
  %52 = add nsw i32 %51, 1, !dbg !616
  store i32 %52, i32* %6, align 4, !dbg !616
  br label %32, !dbg !618, !llvm.loop !619

; <label>:53:                                     ; preds = %32
  %54 = load i8*, i8** %4, align 8, !dbg !621
  %55 = load i32, i32* %2, align 4, !dbg !622
  call void @log_options(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* %54, i32 %55), !dbg !623
  %56 = load i8*, i8** %4, align 8, !dbg !624
  call void @free(i8* %56) #9, !dbg !625
  store i8* null, i8** %4, align 8, !dbg !626
  br label %57, !dbg !627

; <label>:57:                                     ; preds = %53, %9
  ret void, !dbg !628
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i8* @zalloc(i64) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

; Function Attrs: nounwind uwtable
define internal void @log_options(i8*, i8*, i32) #0 !dbg !630 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !633, metadata !298), !dbg !634
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !635, metadata !298), !dbg !636
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !637, metadata !298), !dbg !638
  call void @llvm.dbg.declare(metadata i8** %7, metadata !639, metadata !298), !dbg !640
  %11 = load i8*, i8** %5, align 8, !dbg !641
  store i8* %11, i8** %7, align 8, !dbg !640
  call void @llvm.dbg.declare(metadata i64* %8, metadata !642, metadata !298), !dbg !643
  %12 = load i8*, i8** %4, align 8, !dbg !644
  %13 = call i64 @strlen(i8* %12) #8, !dbg !645
  store i64 %13, i64* %8, align 8, !dbg !643
  call void @llvm.dbg.declare(metadata i8** %9, metadata !646, metadata !298), !dbg !647
  call void @llvm.dbg.declare(metadata i8* %10, metadata !648, metadata !298), !dbg !649
  store i8 1, i8* %10, align 1, !dbg !649
  br label %14, !dbg !650

; <label>:14:                                     ; preds = %58, %3
  %15 = load i8*, i8** %7, align 8, !dbg !651
  %16 = load i8, i8* %15, align 1, !dbg !653
  %17 = icmp ne i8 %16, 0, !dbg !654
  br i1 %17, label %18, label %60, !dbg !654

; <label>:18:                                     ; preds = %14
  br label %19, !dbg !655

; <label>:19:                                     ; preds = %24, %18
  %20 = load i8*, i8** %7, align 8, !dbg !657
  %21 = load i8, i8* %20, align 1, !dbg !659
  %22 = sext i8 %21 to i32, !dbg !659
  %23 = icmp eq i32 %22, 32, !dbg !660
  br i1 %23, label %24, label %27, !dbg !661

; <label>:24:                                     ; preds = %19
  %25 = load i8*, i8** %7, align 8, !dbg !662
  %26 = getelementptr inbounds i8, i8* %25, i32 1, !dbg !662
  store i8* %26, i8** %7, align 8, !dbg !662
  br label %19, !dbg !663, !llvm.loop !665

; <label>:27:                                     ; preds = %19
  %28 = load i8*, i8** %7, align 8, !dbg !666
  %29 = load i64, i64* %8, align 8, !dbg !667
  %30 = sub i64 100, %29, !dbg !668
  %31 = call i8* @get_end(i8* %28, i64 %30), !dbg !669
  store i8* %31, i8** %9, align 8, !dbg !670
  %32 = load i8, i8* %10, align 1, !dbg !671
  %33 = trunc i8 %32 to i1, !dbg !671
  br i1 %33, label %34, label %44, !dbg !673

; <label>:34:                                     ; preds = %27
  %35 = load i32, i32* %6, align 4, !dbg !674
  %36 = load i8*, i8** %4, align 8, !dbg !676
  %37 = load i8*, i8** %9, align 8, !dbg !677
  %38 = load i8*, i8** %7, align 8, !dbg !678
  %39 = ptrtoint i8* %37 to i64, !dbg !679
  %40 = ptrtoint i8* %38 to i64, !dbg !679
  %41 = sub i64 %39, %40, !dbg !679
  %42 = trunc i64 %41 to i32, !dbg !680
  %43 = load i8*, i8** %7, align 8, !dbg !681
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0), i32 %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8* %36, i32 %42, i8* %43), !dbg !682
  store i8 0, i8* %10, align 1, !dbg !683
  br label %58, !dbg !684

; <label>:44:                                     ; preds = %27
  %45 = load i32, i32* %6, align 4, !dbg !685
  %46 = zext i32 %45 to i64, !dbg !685
  %47 = load i64, i64* %8, align 8, !dbg !686
  %48 = add i64 %46, %47, !dbg !687
  %49 = add i64 %48, 2, !dbg !688
  %50 = trunc i64 %49 to i32, !dbg !689
  %51 = load i8*, i8** %9, align 8, !dbg !690
  %52 = load i8*, i8** %7, align 8, !dbg !691
  %53 = ptrtoint i8* %51 to i64, !dbg !692
  %54 = ptrtoint i8* %52 to i64, !dbg !692
  %55 = sub i64 %53, %54, !dbg !692
  %56 = trunc i64 %55 to i32, !dbg !693
  %57 = load i8*, i8** %7, align 8, !dbg !694
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i32 %50, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i32 %56, i8* %57), !dbg !695
  br label %58

; <label>:58:                                     ; preds = %44, %34
  %59 = load i8*, i8** %9, align 8, !dbg !696
  store i8* %59, i8** %7, align 8, !dbg !697
  br label %14, !dbg !698, !llvm.loop !700

; <label>:60:                                     ; preds = %14
  ret void, !dbg !701
}

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define zeroext i1 @report_child_status(i32, i32, i8*) #0 !dbg !702 {
  %4 = alloca i1, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [12 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca %union.anon.1, align 4
  %12 = alloca %union.anon.2, align 4
  %13 = alloca %union.anon.3, align 4
  %14 = alloca %union.anon.4, align 4
  %15 = alloca %struct.utsname, align 1
  %16 = alloca %union.anon.5, align 4
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !705, metadata !298), !dbg !706
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !707, metadata !298), !dbg !708
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !709, metadata !298), !dbg !710
  call void @llvm.dbg.declare(metadata i8** %8, metadata !711, metadata !298), !dbg !712
  store i8* null, i8** %8, align 8, !dbg !712
  call void @llvm.dbg.declare(metadata [12 x i8]* %9, metadata !713, metadata !298), !dbg !717
  call void @llvm.dbg.declare(metadata i32* %10, metadata !718, metadata !298), !dbg !719
  %17 = load i8*, i8** %7, align 8, !dbg !720
  %18 = icmp ne i8* %17, null, !dbg !720
  br i1 %18, label %19, label %21, !dbg !722

; <label>:19:                                     ; preds = %3
  %20 = load i8*, i8** %7, align 8, !dbg !723
  store i8* %20, i8** %8, align 8, !dbg !724
  br label %29, !dbg !725

; <label>:21:                                     ; preds = %3
  %22 = load i8* (i32)*, i8* (i32)** @child_finder_name, align 8, !dbg !726
  %23 = icmp ne i8* (i32)* %22, null, !dbg !726
  br i1 %23, label %24, label %28, !dbg !728

; <label>:24:                                     ; preds = %21
  %25 = load i8* (i32)*, i8* (i32)** @child_finder_name, align 8, !dbg !729
  %26 = load i32, i32* %6, align 4, !dbg !730
  %27 = call i8* %25(i32 %26), !dbg !729
  store i8* %27, i8** %8, align 8, !dbg !731
  br label %28, !dbg !732

; <label>:28:                                     ; preds = %24, %21
  br label %29

; <label>:29:                                     ; preds = %28, %19
  %30 = load i8*, i8** %8, align 8, !dbg !733
  %31 = icmp ne i8* %30, null, !dbg !733
  br i1 %31, label %37, label %32, !dbg !735

; <label>:32:                                     ; preds = %29
  %33 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i32 0, i32 0, !dbg !736
  %34 = load i32, i32* %6, align 4, !dbg !738
  %35 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %33, i64 12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i32 %34) #9, !dbg !739
  %36 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i32 0, i32 0, !dbg !740
  store i8* %36, i8** %8, align 8, !dbg !741
  br label %37, !dbg !742

; <label>:37:                                     ; preds = %32, %29
  %38 = bitcast %union.anon.1* %11 to i32*, !dbg !743
  %39 = load i32, i32* %5, align 4, !dbg !745
  store i32 %39, i32* %38, align 4, !dbg !743
  %40 = bitcast %union.anon.1* %11 to i32*, !dbg !746
  %41 = load i32, i32* %40, align 4, !dbg !746
  %42 = and i32 %41, 127, !dbg !747
  %43 = icmp eq i32 %42, 0, !dbg !743
  br i1 %43, label %44, label %68, !dbg !748

; <label>:44:                                     ; preds = %37
  %45 = bitcast %union.anon.2* %12 to i32*, !dbg !749
  %46 = load i32, i32* %5, align 4, !dbg !751
  store i32 %46, i32* %45, align 4, !dbg !749
  %47 = bitcast %union.anon.2* %12 to i32*, !dbg !752
  %48 = load i32, i32* %47, align 4, !dbg !752
  %49 = and i32 %48, 65280, !dbg !753
  %50 = ashr i32 %49, 8, !dbg !754
  store i32 %50, i32* %10, align 4, !dbg !755
  %51 = load i32, i32* %10, align 4, !dbg !756
  %52 = icmp eq i32 %51, 2, !dbg !758
  br i1 %52, label %56, label %53, !dbg !759

; <label>:53:                                     ; preds = %44
  %54 = load i32, i32* %10, align 4, !dbg !760
  %55 = icmp eq i32 %54, 3, !dbg !761
  br i1 %55, label %56, label %61, !dbg !762

; <label>:56:                                     ; preds = %53, %44
  %57 = load i8*, i8** %8, align 8, !dbg !764
  %58 = load i32, i32* %10, align 4, !dbg !766
  %59 = icmp eq i32 %58, 3, !dbg !767
  %60 = select i1 %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), !dbg !766
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i32 0, i32 0), i8* %57, i8* %60), !dbg !768
  store i1 true, i1* %4, align 1, !dbg !769
  br label %105, !dbg !769

; <label>:61:                                     ; preds = %53
  %62 = load i32, i32* %10, align 4, !dbg !770
  %63 = icmp ne i32 %62, 0, !dbg !772
  br i1 %63, label %64, label %67, !dbg !773

; <label>:64:                                     ; preds = %61
  %65 = load i8*, i8** %8, align 8, !dbg !774
  %66 = load i32, i32* %10, align 4, !dbg !775
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0), i8* %65, i32 %66), !dbg !776
  br label %67, !dbg !776

; <label>:67:                                     ; preds = %64, %61
  br label %104, !dbg !777

; <label>:68:                                     ; preds = %37
  %69 = bitcast %union.anon.3* %13 to i32*, !dbg !778
  %70 = load i32, i32* %5, align 4, !dbg !781
  store i32 %70, i32* %69, align 4, !dbg !778
  %71 = bitcast %union.anon.3* %13 to i32*, !dbg !782
  %72 = load i32, i32* %71, align 4, !dbg !782
  %73 = and i32 %72, 127, !dbg !783
  %74 = add nsw i32 %73, 1, !dbg !778
  %75 = trunc i32 %74 to i8, !dbg !784
  %76 = sext i8 %75 to i32, !dbg !784
  %77 = ashr i32 %76, 1, !dbg !785
  %78 = icmp sgt i32 %77, 0, !dbg !786
  br i1 %78, label %79, label %103, !dbg !781

; <label>:79:                                     ; preds = %68
  %80 = bitcast %union.anon.4* %14 to i32*, !dbg !787
  %81 = load i32, i32* %5, align 4, !dbg !790
  store i32 %81, i32* %80, align 4, !dbg !787
  %82 = bitcast %union.anon.4* %14 to i32*, !dbg !791
  %83 = load i32, i32* %82, align 4, !dbg !791
  %84 = and i32 %83, 127, !dbg !792
  %85 = icmp eq i32 %84, 11, !dbg !793
  br i1 %85, label %86, label %95, !dbg !794

; <label>:86:                                     ; preds = %79
  call void @llvm.dbg.declare(metadata %struct.utsname* %15, metadata !795, metadata !298), !dbg !809
  %87 = load i8*, i8** %8, align 8, !dbg !810
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.10, i32 0, i32 0), i8* %87), !dbg !811
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.12, i32 0, i32 0)), !dbg !812
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.13, i32 0, i32 0)), !dbg !813
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.14, i32 0, i32 0)), !dbg !814
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.15, i32 0, i32 0)), !dbg !815
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.16, i32 0, i32 0)), !dbg !816
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.17, i32 0, i32 0)), !dbg !817
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.18, i32 0, i32 0)), !dbg !818
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0)), !dbg !819
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.23, i32 0, i32 0), i32 4, i32 4, i32 170), !dbg !820
  %88 = call i32 @uname(%struct.utsname* %15) #9, !dbg !821
  %89 = getelementptr inbounds %struct.utsname, %struct.utsname* %15, i32 0, i32 0, !dbg !822
  %90 = getelementptr inbounds [65 x i8], [65 x i8]* %89, i32 0, i32 0, !dbg !823
  %91 = getelementptr inbounds %struct.utsname, %struct.utsname* %15, i32 0, i32 2, !dbg !824
  %92 = getelementptr inbounds [65 x i8], [65 x i8]* %91, i32 0, i32 0, !dbg !825
  %93 = getelementptr inbounds %struct.utsname, %struct.utsname* %15, i32 0, i32 3, !dbg !826
  %94 = getelementptr inbounds [65 x i8], [65 x i8]* %93, i32 0, i32 0, !dbg !827
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i32 0, i32 0), i8* %90, i8* %92, i8* %94), !dbg !828
  call void @log_command_line(i32 2), !dbg !829
  call void @log_options(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i32 2), !dbg !830
  call void @log_options(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.27, i32 0, i32 0), i32 2), !dbg !831
  call void @log_options(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([500 x i8], [500 x i8]* @.str.29, i32 0, i32 0), i32 2), !dbg !832
  br label %102, !dbg !833

; <label>:95:                                     ; preds = %79
  %96 = load i8*, i8** %8, align 8, !dbg !834
  %97 = bitcast %union.anon.5* %16 to i32*, !dbg !835
  %98 = load i32, i32* %5, align 4, !dbg !836
  store i32 %98, i32* %97, align 4, !dbg !835
  %99 = bitcast %union.anon.5* %16 to i32*, !dbg !837
  %100 = load i32, i32* %99, align 4, !dbg !837
  %101 = and i32 %100, 127, !dbg !838
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.30, i32 0, i32 0), i8* %96, i32 %101), !dbg !839
  br label %102

; <label>:102:                                    ; preds = %95, %86
  br label %103, !dbg !840

; <label>:103:                                    ; preds = %102, %68
  br label %104

; <label>:104:                                    ; preds = %103, %67
  store i1 false, i1* %4, align 1, !dbg !841
  br label %105, !dbg !841

; <label>:105:                                    ; preds = %104, %56
  %106 = load i1, i1* %4, align 1, !dbg !842
  ret i1 %106, !dbg !842
}

; Function Attrs: nounwind
declare i32 @snprintf(i8*, i64, i8*, ...) #4

; Function Attrs: nounwind
declare i32 @uname(%struct.utsname*) #4

; Function Attrs: nounwind uwtable
define %struct._thread_master* @thread_make_master() #0 !dbg !843 {
  %1 = alloca %struct._thread_master*, align 8
  %2 = alloca %struct._thread_master*, align 8
  %3 = alloca %struct.rb_root, align 8
  %4 = alloca %struct.rb_root, align 8
  %5 = alloca %struct.rb_root, align 8
  %6 = alloca %struct.rb_root, align 8
  %7 = alloca %struct.rb_root, align 8
  call void @llvm.dbg.declare(metadata %struct._thread_master** %2, metadata !846, metadata !298), !dbg !847
  %8 = call i8* @zalloc(i64 160), !dbg !848
  %9 = bitcast i8* %8 to %struct._thread_master*, !dbg !849
  store %struct._thread_master* %9, %struct._thread_master** %2, align 8, !dbg !850
  %10 = call i32 @epoll_create1(i32 524288) #9, !dbg !851
  %11 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !852
  %12 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %11, i32 0, i32 13, !dbg !853
  store i32 %10, i32* %12, align 8, !dbg !854
  %13 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !855
  %14 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %13, i32 0, i32 13, !dbg !857
  %15 = load i32, i32* %14, align 8, !dbg !857
  %16 = icmp slt i32 %15, 0, !dbg !858
  br i1 %16, label %17, label %20, !dbg !859

; <label>:17:                                     ; preds = %0
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.31, i32 0, i32 0)), !dbg !860
  %18 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !862
  %19 = bitcast %struct._thread_master* %18 to i8*, !dbg !862
  call void @free(i8* %19) #9, !dbg !863
  store %struct._thread_master* null, %struct._thread_master** %2, align 8, !dbg !864
  store %struct._thread_master* null, %struct._thread_master** %1, align 8, !dbg !865
  br label %102, !dbg !865

; <label>:20:                                     ; preds = %0
  %21 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !866
  %22 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %21, i32 0, i32 0, !dbg !867
  %23 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %3, i32 0, i32 0, !dbg !868
  store %struct.rb_node* null, %struct.rb_node** %23, align 8, !dbg !868
  %24 = bitcast %struct.rb_root* %22 to i8*, !dbg !869
  %25 = bitcast %struct.rb_root* %3 to i8*, !dbg !869
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 8, i32 8, i1 false), !dbg !869
  %26 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !870
  %27 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %26, i32 0, i32 1, !dbg !871
  %28 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %4, i32 0, i32 0, !dbg !872
  store %struct.rb_node* null, %struct.rb_node** %28, align 8, !dbg !872
  %29 = bitcast %struct.rb_root* %27 to i8*, !dbg !873
  %30 = bitcast %struct.rb_root* %4 to i8*, !dbg !873
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %29, i8* %30, i64 8, i32 8, i1 false), !dbg !873
  %31 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !874
  %32 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %31, i32 0, i32 2, !dbg !875
  %33 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %5, i32 0, i32 0, !dbg !876
  store %struct.rb_node* null, %struct.rb_node** %33, align 8, !dbg !876
  %34 = bitcast %struct.rb_root* %32 to i8*, !dbg !877
  %35 = bitcast %struct.rb_root* %5 to i8*, !dbg !877
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 8, i32 8, i1 false), !dbg !877
  %36 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !878
  %37 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %36, i32 0, i32 3, !dbg !879
  %38 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %6, i32 0, i32 0, !dbg !880
  store %struct.rb_node* null, %struct.rb_node** %38, align 8, !dbg !880
  %39 = bitcast %struct.rb_root* %37 to i8*, !dbg !881
  %40 = bitcast %struct.rb_root* %6 to i8*, !dbg !881
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 8, i32 8, i1 false), !dbg !881
  %41 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !882
  %42 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %41, i32 0, i32 8, !dbg !883
  %43 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %7, i32 0, i32 0, !dbg !884
  store %struct.rb_node* null, %struct.rb_node** %43, align 8, !dbg !884
  %44 = bitcast %struct.rb_root* %42 to i8*, !dbg !885
  %45 = bitcast %struct.rb_root* %7 to i8*, !dbg !885
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 8, i32 8, i1 false), !dbg !885
  br label %46, !dbg !886, !llvm.loop !887

; <label>:46:                                     ; preds = %20
  %47 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !888
  %48 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %47, i32 0, i32 4, !dbg !891
  %49 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !892
  %50 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %49, i32 0, i32 4, !dbg !893
  %51 = getelementptr inbounds %struct.list_head, %struct.list_head* %50, i32 0, i32 0, !dbg !894
  store %struct.list_head* %48, %struct.list_head** %51, align 8, !dbg !895
  %52 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !896
  %53 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %52, i32 0, i32 4, !dbg !897
  %54 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !898
  %55 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %54, i32 0, i32 4, !dbg !899
  %56 = getelementptr inbounds %struct.list_head, %struct.list_head* %55, i32 0, i32 1, !dbg !900
  store %struct.list_head* %53, %struct.list_head** %56, align 8, !dbg !901
  br label %57, !dbg !902

; <label>:57:                                     ; preds = %46
  br label %58, !dbg !903, !llvm.loop !904

; <label>:58:                                     ; preds = %57
  %59 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !905
  %60 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %59, i32 0, i32 5, !dbg !908
  %61 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !909
  %62 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %61, i32 0, i32 5, !dbg !910
  %63 = getelementptr inbounds %struct.list_head, %struct.list_head* %62, i32 0, i32 0, !dbg !911
  store %struct.list_head* %60, %struct.list_head** %63, align 8, !dbg !912
  %64 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !913
  %65 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %64, i32 0, i32 5, !dbg !914
  %66 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !915
  %67 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %66, i32 0, i32 5, !dbg !916
  %68 = getelementptr inbounds %struct.list_head, %struct.list_head* %67, i32 0, i32 1, !dbg !917
  store %struct.list_head* %65, %struct.list_head** %68, align 8, !dbg !918
  br label %69, !dbg !919

; <label>:69:                                     ; preds = %58
  br label %70, !dbg !920, !llvm.loop !921

; <label>:70:                                     ; preds = %69
  %71 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !922
  %72 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %71, i32 0, i32 6, !dbg !925
  %73 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !926
  %74 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %73, i32 0, i32 6, !dbg !927
  %75 = getelementptr inbounds %struct.list_head, %struct.list_head* %74, i32 0, i32 0, !dbg !928
  store %struct.list_head* %72, %struct.list_head** %75, align 8, !dbg !929
  %76 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !930
  %77 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %76, i32 0, i32 6, !dbg !931
  %78 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !932
  %79 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %78, i32 0, i32 6, !dbg !933
  %80 = getelementptr inbounds %struct.list_head, %struct.list_head* %79, i32 0, i32 1, !dbg !934
  store %struct.list_head* %77, %struct.list_head** %80, align 8, !dbg !935
  br label %81, !dbg !936

; <label>:81:                                     ; preds = %70
  %82 = call i32 @timerfd_create(i32 1, i32 526336) #9, !dbg !937
  %83 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !938
  %84 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %83, i32 0, i32 14, !dbg !939
  store i32 %82, i32* %84, align 4, !dbg !940
  %85 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !941
  %86 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %85, i32 0, i32 14, !dbg !943
  %87 = load i32, i32* %86, align 4, !dbg !943
  %88 = icmp slt i32 %87, 0, !dbg !944
  br i1 %88, label %89, label %92, !dbg !945

; <label>:89:                                     ; preds = %81
  call void (i32, i8*, ...) @log_message(i32 3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0)), !dbg !946
  %90 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !948
  %91 = bitcast %struct._thread_master* %90 to i8*, !dbg !948
  call void @free(i8* %91) #9, !dbg !949
  store %struct._thread_master* null, %struct._thread_master** %2, align 8, !dbg !950
  store %struct._thread_master* null, %struct._thread_master** %1, align 8, !dbg !951
  br label %102, !dbg !951

; <label>:92:                                     ; preds = %81
  call void @signal_handler_init(), !dbg !952
  %93 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !953
  %94 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !954
  %95 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %94, i32 0, i32 14, !dbg !955
  %96 = load i32, i32* %95, align 4, !dbg !955
  %97 = call %struct._thread* @thread_add_read(%struct._thread_master* %93, i32 (%struct._thread*)* @thread_timerfd_handler, i8* null, i32 %96, i64 -1), !dbg !956
  %98 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !957
  %99 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %98, i32 0, i32 15, !dbg !958
  store %struct._thread* %97, %struct._thread** %99, align 8, !dbg !959
  %100 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !960
  call void @add_signal_read_thread(%struct._thread_master* %100), !dbg !961
  %101 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !962
  store %struct._thread_master* %101, %struct._thread_master** %1, align 8, !dbg !963
  br label %102, !dbg !963

; <label>:102:                                    ; preds = %92, %89, %17
  %103 = load %struct._thread_master*, %struct._thread_master** %1, align 8, !dbg !964
  ret %struct._thread_master* %103, !dbg !964
}

; Function Attrs: nounwind
declare i32 @epoll_create1(i32) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind
declare i32 @timerfd_create(i32, i32) #4

declare void @signal_handler_init() #2

; Function Attrs: nounwind uwtable
define %struct._thread* @thread_add_read(%struct._thread_master*, i32 (%struct._thread*)*, i8*, i32, i64) #0 !dbg !965 {
  %6 = alloca %struct._thread*, align 8
  %7 = alloca %struct._thread_master*, align 8
  %8 = alloca i32 (%struct._thread*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct._thread_event*, align 8
  %13 = alloca %struct._thread*, align 8
  %14 = alloca %struct.timeval, align 8
  %15 = alloca %struct.timeval, align 8
  %16 = alloca %struct.rb_node**, align 8
  %17 = alloca %struct.rb_node*, align 8
  %18 = alloca %struct._thread*, align 8
  %19 = alloca %struct.rb_node*, align 8
  %20 = alloca %struct._thread*, align 8
  %21 = alloca i32, align 4
  store %struct._thread_master* %0, %struct._thread_master** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._thread_master** %7, metadata !971, metadata !298), !dbg !972
  store i32 (%struct._thread*)* %1, i32 (%struct._thread*)** %8, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct._thread*)** %8, metadata !973, metadata !298), !dbg !974
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !975, metadata !298), !dbg !976
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !977, metadata !298), !dbg !978
  store i64 %4, i64* %11, align 8
  call void @llvm.dbg.declare(metadata i64* %11, metadata !979, metadata !298), !dbg !980
  call void @llvm.dbg.declare(metadata %struct._thread_event** %12, metadata !981, metadata !298), !dbg !982
  call void @llvm.dbg.declare(metadata %struct._thread** %13, metadata !983, metadata !298), !dbg !984
  %22 = load %struct._thread_master*, %struct._thread_master** %7, align 8, !dbg !985
  %23 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %22, i32 0, i32 10, !dbg !987
  %24 = load %struct._thread_event*, %struct._thread_event** %23, align 8, !dbg !987
  %25 = icmp ne %struct._thread_event* %24, null, !dbg !985
  br i1 %25, label %26, label %38, !dbg !988

; <label>:26:                                     ; preds = %5
  %27 = load %struct._thread_master*, %struct._thread_master** %7, align 8, !dbg !989
  %28 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %27, i32 0, i32 10, !dbg !991
  %29 = load %struct._thread_event*, %struct._thread_event** %28, align 8, !dbg !991
  %30 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %29, i32 0, i32 3, !dbg !992
  %31 = load i32, i32* %30, align 8, !dbg !992
  %32 = load i32, i32* %10, align 4, !dbg !993
  %33 = icmp eq i32 %31, %32, !dbg !994
  br i1 %33, label %34, label %38, !dbg !995

; <label>:34:                                     ; preds = %26
  %35 = load %struct._thread_master*, %struct._thread_master** %7, align 8, !dbg !996
  %36 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %35, i32 0, i32 10, !dbg !997
  %37 = load %struct._thread_event*, %struct._thread_event** %36, align 8, !dbg !997
  store %struct._thread_event* %37, %struct._thread_event** %12, align 8, !dbg !998
  br label %42, !dbg !999

; <label>:38:                                     ; preds = %26, %5
  %39 = load %struct._thread_master*, %struct._thread_master** %7, align 8, !dbg !1000
  %40 = load i32, i32* %10, align 4, !dbg !1001
  %41 = call %struct._thread_event* @thread_event_get(%struct._thread_master* %39, i32 %40), !dbg !1002
  store %struct._thread_event* %41, %struct._thread_event** %12, align 8, !dbg !1003
  br label %42

; <label>:42:                                     ; preds = %38, %34
  %43 = load %struct._thread_event*, %struct._thread_event** %12, align 8, !dbg !1004
  %44 = icmp ne %struct._thread_event* %43, null, !dbg !1004
  br i1 %44, label %53, label %45, !dbg !1006

; <label>:45:                                     ; preds = %42
  %46 = load %struct._thread_master*, %struct._thread_master** %7, align 8, !dbg !1007
  %47 = load i32, i32* %10, align 4, !dbg !1010
  %48 = call %struct._thread_event* @thread_event_new(%struct._thread_master* %46, i32 %47), !dbg !1011
  store %struct._thread_event* %48, %struct._thread_event** %12, align 8, !dbg !1012
  %49 = icmp ne %struct._thread_event* %48, null, !dbg !1012
  br i1 %49, label %52, label %50, !dbg !1013

; <label>:50:                                     ; preds = %45
  %51 = load i32, i32* %10, align 4, !dbg !1014
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.33, i32 0, i32 0), i32 %51), !dbg !1016
  store %struct._thread* null, %struct._thread** %6, align 8, !dbg !1017
  br label %191, !dbg !1017

; <label>:52:                                     ; preds = %45
  br label %69, !dbg !1018

; <label>:53:                                     ; preds = %42
  %54 = load %struct._thread_event*, %struct._thread_event** %12, align 8, !dbg !1019
  %55 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %54, i32 0, i32 2, !dbg !1021
  %56 = call zeroext i1 @__test_bit(i32 0, i64* %55), !dbg !1022
  br i1 %56, label %57, label %68, !dbg !1023

; <label>:57:                                     ; preds = %53
  %58 = load %struct._thread_event*, %struct._thread_event** %12, align 8, !dbg !1024
  %59 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %58, i32 0, i32 0, !dbg !1026
  %60 = load %struct._thread*, %struct._thread** %59, align 8, !dbg !1026
  %61 = icmp ne %struct._thread* %60, null, !dbg !1024
  br i1 %61, label %62, label %68, !dbg !1027

; <label>:62:                                     ; preds = %57
  %63 = load %struct._thread_event*, %struct._thread_event** %12, align 8, !dbg !1028
  %64 = load %struct._thread_event*, %struct._thread_event** %12, align 8, !dbg !1030
  %65 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %64, i32 0, i32 0, !dbg !1031
  %66 = load %struct._thread*, %struct._thread** %65, align 8, !dbg !1031
  %67 = load i32, i32* %10, align 4, !dbg !1032
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.34, i32 0, i32 0), %struct._thread_event* %63, %struct._thread* %66, i32 %67), !dbg !1033
  store %struct._thread* null, %struct._thread** %6, align 8, !dbg !1034
  br label %191, !dbg !1034

; <label>:68:                                     ; preds = %57, %53
  br label %69

; <label>:69:                                     ; preds = %68, %52
  %70 = load %struct._thread_master*, %struct._thread_master** %7, align 8, !dbg !1035
  %71 = call %struct._thread* @thread_new(%struct._thread_master* %70), !dbg !1036
  store %struct._thread* %71, %struct._thread** %13, align 8, !dbg !1037
  %72 = load %struct._thread*, %struct._thread** %13, align 8, !dbg !1038
  %73 = getelementptr inbounds %struct._thread, %struct._thread* %72, i32 0, i32 1, !dbg !1039
  store i32 0, i32* %73, align 8, !dbg !1040
  %74 = load %struct._thread_master*, %struct._thread_master** %7, align 8, !dbg !1041
  %75 = load %struct._thread*, %struct._thread** %13, align 8, !dbg !1042
  %76 = getelementptr inbounds %struct._thread, %struct._thread* %75, i32 0, i32 2, !dbg !1043
  store %struct._thread_master* %74, %struct._thread_master** %76, align 8, !dbg !1044
  %77 = load i32 (%struct._thread*)*, i32 (%struct._thread*)** %8, align 8, !dbg !1045
  %78 = load %struct._thread*, %struct._thread** %13, align 8, !dbg !1046
  %79 = getelementptr inbounds %struct._thread, %struct._thread* %78, i32 0, i32 3, !dbg !1047
  store i32 (%struct._thread*)* %77, i32 (%struct._thread*)** %79, align 8, !dbg !1048
  %80 = load i8*, i8** %9, align 8, !dbg !1049
  %81 = load %struct._thread*, %struct._thread** %13, align 8, !dbg !1050
  %82 = getelementptr inbounds %struct._thread, %struct._thread* %81, i32 0, i32 4, !dbg !1051
  store i8* %80, i8** %82, align 8, !dbg !1052
  %83 = load i32, i32* %10, align 4, !dbg !1053
  %84 = load %struct._thread*, %struct._thread** %13, align 8, !dbg !1054
  %85 = getelementptr inbounds %struct._thread, %struct._thread* %84, i32 0, i32 6, !dbg !1055
  %86 = bitcast %union.anon* %85 to i32*, !dbg !1056
  store i32 %83, i32* %86, align 8, !dbg !1057
  %87 = load %struct._thread_event*, %struct._thread_event** %12, align 8, !dbg !1058
  %88 = load %struct._thread*, %struct._thread** %13, align 8, !dbg !1059
  %89 = getelementptr inbounds %struct._thread, %struct._thread* %88, i32 0, i32 7, !dbg !1060
  store %struct._thread_event* %87, %struct._thread_event** %89, align 8, !dbg !1061
  %90 = load %struct._thread_event*, %struct._thread_event** %12, align 8, !dbg !1062
  %91 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %90, i32 0, i32 2, !dbg !1063
  call void @__set_bit(i32 0, i64* %91), !dbg !1064
  %92 = load %struct._thread*, %struct._thread** %13, align 8, !dbg !1065
  %93 = load %struct._thread_event*, %struct._thread_event** %12, align 8, !dbg !1066
  %94 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %93, i32 0, i32 0, !dbg !1067
  store %struct._thread* %92, %struct._thread** %94, align 8, !dbg !1068
  %95 = load %struct._thread_event*, %struct._thread_event** %12, align 8, !dbg !1069
  %96 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %95, i32 0, i32 2, !dbg !1071
  %97 = call zeroext i1 @__test_bit(i32 3, i64* %96), !dbg !1072
  br i1 %97, label %109, label %98, !dbg !1073

; <label>:98:                                     ; preds = %69
  %99 = load %struct._thread*, %struct._thread** %13, align 8, !dbg !1074
  %100 = call i32 @thread_event_set(%struct._thread* %99), !dbg !1077
  %101 = icmp slt i32 %100, 0, !dbg !1078
  br i1 %101, label %102, label %106, !dbg !1079

; <label>:102:                                    ; preds = %98
  %103 = load i32, i32* %10, align 4, !dbg !1080
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.35, i32 0, i32 0), i32 %103), !dbg !1082
  %104 = load %struct._thread_master*, %struct._thread_master** %7, align 8, !dbg !1083
  %105 = load %struct._thread*, %struct._thread** %13, align 8, !dbg !1084
  call void @thread_add_unuse(%struct._thread_master* %104, %struct._thread* %105), !dbg !1085
  store %struct._thread* null, %struct._thread** %6, align 8, !dbg !1086
  br label %191, !dbg !1086

; <label>:106:                                    ; preds = %98
  %107 = load %struct._thread_event*, %struct._thread_event** %12, align 8, !dbg !1087
  %108 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %107, i32 0, i32 2, !dbg !1088
  call void @__set_bit(i32 3, i64* %108), !dbg !1089
  br label %109, !dbg !1090

; <label>:109:                                    ; preds = %106, %69
  %110 = load i64, i64* %11, align 8, !dbg !1091
  %111 = icmp eq i64 %110, -1, !dbg !1093
  br i1 %111, label %112, label %116, !dbg !1094

; <label>:112:                                    ; preds = %109
  %113 = load %struct._thread*, %struct._thread** %13, align 8, !dbg !1095
  %114 = getelementptr inbounds %struct._thread, %struct._thread* %113, i32 0, i32 5, !dbg !1096
  %115 = getelementptr inbounds %struct.timeval, %struct.timeval* %114, i32 0, i32 0, !dbg !1097
  store i64 -9223372036854775808, i64* %115, align 8, !dbg !1098
  br label %136, !dbg !1095

; <label>:116:                                    ; preds = %109
  %117 = call { i64, i64 } @set_time_now(), !dbg !1099
  %118 = bitcast %struct.timeval* %14 to { i64, i64 }*, !dbg !1099
  %119 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %118, i32 0, i32 0, !dbg !1099
  %120 = extractvalue { i64, i64 } %117, 0, !dbg !1099
  store i64 %120, i64* %119, align 8, !dbg !1099
  %121 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %118, i32 0, i32 1, !dbg !1099
  %122 = extractvalue { i64, i64 } %117, 1, !dbg !1099
  store i64 %122, i64* %121, align 8, !dbg !1099
  %123 = load %struct._thread*, %struct._thread** %13, align 8, !dbg !1101
  %124 = getelementptr inbounds %struct._thread, %struct._thread* %123, i32 0, i32 5, !dbg !1102
  %125 = load i64, i64* %11, align 8, !dbg !1103
  %126 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.timeval* @time_now to { i64, i64 }*), i32 0, i32 0), align 8, !dbg !1104
  %127 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.timeval* @time_now to { i64, i64 }*), i32 0, i32 1), align 8, !dbg !1104
  %128 = call { i64, i64 } @timer_add_long(i64 %126, i64 %127, i64 %125), !dbg !1104
  %129 = bitcast %struct.timeval* %15 to { i64, i64 }*, !dbg !1104
  %130 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %129, i32 0, i32 0, !dbg !1104
  %131 = extractvalue { i64, i64 } %128, 0, !dbg !1104
  store i64 %131, i64* %130, align 8, !dbg !1104
  %132 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %129, i32 0, i32 1, !dbg !1104
  %133 = extractvalue { i64, i64 } %128, 1, !dbg !1104
  store i64 %133, i64* %132, align 8, !dbg !1104
  %134 = bitcast %struct.timeval* %124 to i8*, !dbg !1104
  %135 = bitcast %struct.timeval* %15 to i8*, !dbg !1104
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %134, i8* %135, i64 16, i32 8, i1 false), !dbg !1105
  br label %136

; <label>:136:                                    ; preds = %116, %112
  call void @llvm.dbg.declare(metadata %struct.rb_node*** %16, metadata !1107, metadata !298), !dbg !1111
  %137 = load %struct._thread_master*, %struct._thread_master** %7, align 8, !dbg !1112
  %138 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %137, i32 0, i32 0, !dbg !1113
  %139 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %138, i32 0, i32 0, !dbg !1114
  store %struct.rb_node** %139, %struct.rb_node*** %16, align 8, !dbg !1111
  call void @llvm.dbg.declare(metadata %struct.rb_node** %17, metadata !1115, metadata !298), !dbg !1116
  store %struct.rb_node* null, %struct.rb_node** %17, align 8, !dbg !1116
  call void @llvm.dbg.declare(metadata %struct._thread** %18, metadata !1117, metadata !298), !dbg !1118
  br label %140, !dbg !1112

; <label>:140:                                    ; preds = %178, %136
  %141 = load %struct.rb_node**, %struct.rb_node*** %16, align 8, !dbg !1119
  %142 = load %struct.rb_node*, %struct.rb_node** %141, align 8, !dbg !1121
  %143 = icmp ne %struct.rb_node* %142, null, !dbg !1122
  br i1 %143, label %144, label %179, !dbg !1122

; <label>:144:                                    ; preds = %140
  %145 = load %struct.rb_node**, %struct.rb_node*** %16, align 8, !dbg !1123
  %146 = load %struct.rb_node*, %struct.rb_node** %145, align 8, !dbg !1126
  %147 = icmp ne %struct.rb_node* %146, null, !dbg !1127
  br i1 %147, label %148, label %156, !dbg !1127

; <label>:148:                                    ; preds = %144
  call void @llvm.dbg.declare(metadata %struct.rb_node** %19, metadata !1128, metadata !298), !dbg !1132
  %149 = load %struct.rb_node**, %struct.rb_node*** %16, align 8, !dbg !1133
  %150 = load %struct.rb_node*, %struct.rb_node** %149, align 8, !dbg !1135
  store %struct.rb_node* %150, %struct.rb_node** %19, align 8, !dbg !1136
  %151 = load %struct.rb_node*, %struct.rb_node** %19, align 8, !dbg !1137
  %152 = bitcast %struct.rb_node* %151 to i8*, !dbg !1138
  %153 = getelementptr inbounds i8, i8* %152, i64 -72, !dbg !1139
  %154 = bitcast i8* %153 to %struct._thread*, !dbg !1140
  store %struct._thread* %154, %struct._thread** %20, align 8, !dbg !1141
  %155 = load %struct._thread*, %struct._thread** %20, align 8, !dbg !1142
  br label %157, !dbg !1143

; <label>:156:                                    ; preds = %144
  br label %157, !dbg !1144

; <label>:157:                                    ; preds = %156, %148
  %158 = phi %struct._thread* [ %155, %148 ], [ null, %156 ], !dbg !1146
  store %struct._thread* %158, %struct._thread** %18, align 8, !dbg !1148
  call void @llvm.dbg.declare(metadata i32* %21, metadata !1149, metadata !298), !dbg !1150
  %159 = load %struct._thread*, %struct._thread** %13, align 8, !dbg !1151
  %160 = load %struct._thread*, %struct._thread** %18, align 8, !dbg !1152
  %161 = call i32 @thread_timer_cmp(%struct._thread* %159, %struct._thread* %160), !dbg !1153
  store i32 %161, i32* %21, align 4, !dbg !1154
  %162 = load %struct.rb_node**, %struct.rb_node*** %16, align 8, !dbg !1155
  %163 = load %struct.rb_node*, %struct.rb_node** %162, align 8, !dbg !1156
  store %struct.rb_node* %163, %struct.rb_node** %17, align 8, !dbg !1157
  %164 = load i32, i32* %21, align 4, !dbg !1158
  %165 = icmp sle i32 %164, 0, !dbg !1159
  br i1 %165, label %166, label %170, !dbg !1158

; <label>:166:                                    ; preds = %157
  %167 = load %struct.rb_node**, %struct.rb_node*** %16, align 8, !dbg !1160
  %168 = load %struct.rb_node*, %struct.rb_node** %167, align 8, !dbg !1163
  %169 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %168, i32 0, i32 2, !dbg !1164
  store %struct.rb_node** %169, %struct.rb_node*** %16, align 8, !dbg !1165
  br label %178, !dbg !1166

; <label>:170:                                    ; preds = %157
  %171 = load i32, i32* %21, align 4, !dbg !1167
  %172 = icmp sgt i32 %171, 0, !dbg !1170
  br i1 %172, label %173, label %177, !dbg !1167

; <label>:173:                                    ; preds = %170
  %174 = load %struct.rb_node**, %struct.rb_node*** %16, align 8, !dbg !1171
  %175 = load %struct.rb_node*, %struct.rb_node** %174, align 8, !dbg !1173
  %176 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %175, i32 0, i32 1, !dbg !1174
  store %struct.rb_node** %176, %struct.rb_node*** %16, align 8, !dbg !1175
  br label %177, !dbg !1176

; <label>:177:                                    ; preds = %173, %170
  br label %178

; <label>:178:                                    ; preds = %177, %166
  br label %140, !dbg !1177, !llvm.loop !1179

; <label>:179:                                    ; preds = %140
  %180 = load %struct._thread*, %struct._thread** %13, align 8, !dbg !1180
  %181 = getelementptr inbounds %struct._thread, %struct._thread* %180, i32 0, i32 8, !dbg !1182
  %182 = bitcast %union.anon.0* %181 to %struct.rb_node*, !dbg !1182
  %183 = load %struct.rb_node*, %struct.rb_node** %17, align 8, !dbg !1183
  %184 = load %struct.rb_node**, %struct.rb_node*** %16, align 8, !dbg !1184
  call void @rb_link_node(%struct.rb_node* %182, %struct.rb_node* %183, %struct.rb_node** %184), !dbg !1185
  %185 = load %struct._thread*, %struct._thread** %13, align 8, !dbg !1186
  %186 = getelementptr inbounds %struct._thread, %struct._thread* %185, i32 0, i32 8, !dbg !1187
  %187 = bitcast %union.anon.0* %186 to %struct.rb_node*, !dbg !1187
  %188 = load %struct._thread_master*, %struct._thread_master** %7, align 8, !dbg !1188
  %189 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %188, i32 0, i32 0, !dbg !1189
  call void @rb_insert_color(%struct.rb_node* %187, %struct.rb_root* %189), !dbg !1190
  %190 = load %struct._thread*, %struct._thread** %13, align 8, !dbg !1192
  store %struct._thread* %190, %struct._thread** %6, align 8, !dbg !1193
  br label %191, !dbg !1193

; <label>:191:                                    ; preds = %179, %102, %62, %50
  %192 = load %struct._thread*, %struct._thread** %6, align 8, !dbg !1194
  ret %struct._thread* %192, !dbg !1194
}

; Function Attrs: nounwind uwtable
define internal i32 @thread_timerfd_handler(%struct._thread*) #0 !dbg !1195 {
  %2 = alloca %struct._thread*, align 8
  %3 = alloca %struct._thread_master*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct._thread* %0, %struct._thread** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %2, metadata !1196, metadata !298), !dbg !1197
  call void @llvm.dbg.declare(metadata %struct._thread_master** %3, metadata !1198, metadata !298), !dbg !1199
  %6 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !1200
  %7 = getelementptr inbounds %struct._thread, %struct._thread* %6, i32 0, i32 2, !dbg !1201
  %8 = load %struct._thread_master*, %struct._thread_master** %7, align 8, !dbg !1201
  store %struct._thread_master* %8, %struct._thread_master** %3, align 8, !dbg !1199
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1202, metadata !298), !dbg !1203
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1204, metadata !298), !dbg !1208
  %9 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !1209
  %10 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %9, i32 0, i32 14, !dbg !1210
  %11 = load i32, i32* %10, align 4, !dbg !1210
  %12 = bitcast i64* %4 to i8*, !dbg !1211
  %13 = call i64 @read(i32 %11, i8* %12, i64 8), !dbg !1212
  store i64 %13, i64* %5, align 8, !dbg !1213
  %14 = load i64, i64* %5, align 8, !dbg !1214
  %15 = icmp slt i64 %14, 0, !dbg !1216
  br i1 %15, label %16, label %20, !dbg !1217

; <label>:16:                                     ; preds = %1
  %17 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !1218
  %18 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %17, i32 0, i32 14, !dbg !1219
  %19 = load i32, i32* %18, align 4, !dbg !1219
  call void (i32, i8*, ...) @log_message(i32 3, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.41, i32 0, i32 0), i32 %19), !dbg !1220
  br label %20, !dbg !1220

; <label>:20:                                     ; preds = %16, %1
  %21 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !1221
  %22 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !1222
  %23 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %22, i32 0, i32 0, !dbg !1223
  %24 = call i32 @thread_rb_move_ready(%struct._thread_master* %21, %struct.rb_root* %23, i32 9), !dbg !1224
  %25 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !1225
  %26 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !1226
  %27 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %26, i32 0, i32 1, !dbg !1227
  %28 = call i32 @thread_rb_move_ready(%struct._thread_master* %25, %struct.rb_root* %27, i32 8), !dbg !1228
  %29 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !1229
  %30 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !1230
  %31 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %30, i32 0, i32 2, !dbg !1231
  %32 = call i32 @thread_rb_move_ready(%struct._thread_master* %29, %struct.rb_root* %31, i32 6), !dbg !1232
  %33 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !1233
  %34 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !1234
  %35 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %34, i32 0, i32 3, !dbg !1235
  %36 = call i32 @thread_rb_move_ready(%struct._thread_master* %33, %struct.rb_root* %35, i32 10), !dbg !1236
  %37 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !1237
  %38 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !1238
  %39 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %38, i32 0, i32 14, !dbg !1239
  %40 = load i32, i32* %39, align 4, !dbg !1239
  %41 = call %struct._thread* @thread_add_read(%struct._thread_master* %37, i32 (%struct._thread*)* @thread_timerfd_handler, i8* null, i32 %40, i64 -1), !dbg !1240
  %42 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !1241
  %43 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %42, i32 0, i32 15, !dbg !1242
  store %struct._thread* %41, %struct._thread** %43, align 8, !dbg !1243
  ret i32 0, !dbg !1244
}

declare void @add_signal_read_thread(%struct._thread_master*) #2

; Function Attrs: nounwind uwtable
define void @thread_cleanup_master(%struct._thread_master*) #0 !dbg !1245 {
  %2 = alloca %struct._thread_master*, align 8
  store %struct._thread_master* %0, %struct._thread_master** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread_master** %2, metadata !1248, metadata !298), !dbg !1249
  %3 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !1250
  %4 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !1251
  %5 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %4, i32 0, i32 0, !dbg !1252
  call void @thread_destroy_rb(%struct._thread_master* %3, %struct.rb_root* %5), !dbg !1253
  %6 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !1254
  %7 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !1255
  %8 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %7, i32 0, i32 1, !dbg !1256
  call void @thread_destroy_rb(%struct._thread_master* %6, %struct.rb_root* %8), !dbg !1257
  %9 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !1258
  %10 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !1259
  %11 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %10, i32 0, i32 2, !dbg !1260
  call void @thread_destroy_rb(%struct._thread_master* %9, %struct.rb_root* %11), !dbg !1261
  %12 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !1262
  %13 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !1263
  %14 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %13, i32 0, i32 3, !dbg !1264
  call void @thread_destroy_rb(%struct._thread_master* %12, %struct.rb_root* %14), !dbg !1265
  %15 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !1266
  %16 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !1267
  %17 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %16, i32 0, i32 4, !dbg !1268
  call void @thread_destroy_list(%struct._thread_master* %15, %struct.list_head* %17), !dbg !1269
  %18 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !1270
  %19 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !1271
  %20 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %19, i32 0, i32 5, !dbg !1272
  call void @thread_destroy_list(%struct._thread_master* %18, %struct.list_head* %20), !dbg !1273
  call void @destroy_child_finder(), !dbg !1274
  %21 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !1275
  call void @thread_clean_unuse(%struct._thread_master* %21), !dbg !1276
  %22 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !1277
  %23 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %22, i32 0, i32 9, !dbg !1278
  %24 = load %struct.epoll_event*, %struct.epoll_event** %23, align 8, !dbg !1278
  %25 = bitcast %struct.epoll_event* %24 to i8*, !dbg !1277
  call void @free(i8* %25) #9, !dbg !1279
  %26 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !1280
  %27 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %26, i32 0, i32 9, !dbg !1281
  store %struct.epoll_event* null, %struct.epoll_event** %27, align 8, !dbg !1282
  %28 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !1283
  %29 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %28, i32 0, i32 11, !dbg !1284
  store i32 0, i32* %29, align 8, !dbg !1285
  %30 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !1286
  %31 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %30, i32 0, i32 12, !dbg !1287
  store i32 0, i32* %31, align 4, !dbg !1288
  %32 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !1289
  %33 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %32, i32 0, i32 15, !dbg !1290
  store %struct._thread* null, %struct._thread** %33, align 8, !dbg !1291
  ret void, !dbg !1292
}

; Function Attrs: nounwind uwtable
define internal void @thread_destroy_rb(%struct._thread_master*, %struct.rb_root*) #0 !dbg !1293 {
  %3 = alloca %struct._thread_master*, align 8
  %4 = alloca %struct.rb_root*, align 8
  %5 = alloca %struct._thread*, align 8
  %6 = alloca %struct._thread*, align 8
  %7 = alloca %struct.rb_node*, align 8
  %8 = alloca %struct._thread*, align 8
  %9 = alloca %struct.rb_node*, align 8
  %10 = alloca %struct._thread*, align 8
  store %struct._thread_master* %0, %struct._thread_master** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._thread_master** %3, metadata !1297, metadata !298), !dbg !1298
  store %struct.rb_root* %1, %struct.rb_root** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_root** %4, metadata !1299, metadata !298), !dbg !1300
  call void @llvm.dbg.declare(metadata %struct._thread** %5, metadata !1301, metadata !298), !dbg !1302
  call void @llvm.dbg.declare(metadata %struct._thread** %6, metadata !1303, metadata !298), !dbg !1304
  %11 = load %struct.rb_root*, %struct.rb_root** %4, align 8, !dbg !1305
  %12 = call %struct.rb_node* @rb_first(%struct.rb_root* %11), !dbg !1307
  %13 = icmp ne %struct.rb_node* %12, null, !dbg !1307
  br i1 %13, label %14, label %22, !dbg !1308

; <label>:14:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.rb_node** %7, metadata !1309, metadata !298), !dbg !1311
  %15 = load %struct.rb_root*, %struct.rb_root** %4, align 8, !dbg !1312
  %16 = call %struct.rb_node* @rb_first(%struct.rb_root* %15), !dbg !1314
  store %struct.rb_node* %16, %struct.rb_node** %7, align 8, !dbg !1315
  %17 = load %struct.rb_node*, %struct.rb_node** %7, align 8, !dbg !1316
  %18 = bitcast %struct.rb_node* %17 to i8*, !dbg !1317
  %19 = getelementptr inbounds i8, i8* %18, i64 -72, !dbg !1318
  %20 = bitcast i8* %19 to %struct._thread*, !dbg !1319
  store %struct._thread* %20, %struct._thread** %8, align 8, !dbg !1320
  %21 = load %struct._thread*, %struct._thread** %8, align 8, !dbg !1321
  br label %23, !dbg !1322

; <label>:22:                                     ; preds = %2
  br label %23, !dbg !1323

; <label>:23:                                     ; preds = %22, %14
  %24 = phi %struct._thread* [ %21, %14 ], [ null, %22 ], !dbg !1325
  store %struct._thread* %24, %struct._thread** %5, align 8, !dbg !1327
  br label %25, !dbg !1328

; <label>:25:                                     ; preds = %73, %23
  %26 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !1329
  %27 = icmp ne %struct._thread* %26, null, !dbg !1329
  br i1 %27, label %28, label %47, !dbg !1332

; <label>:28:                                     ; preds = %25
  %29 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !1333
  %30 = getelementptr inbounds %struct._thread, %struct._thread* %29, i32 0, i32 8, !dbg !1335
  %31 = bitcast %union.anon.0* %30 to %struct.rb_node*, !dbg !1335
  %32 = call %struct.rb_node* @rb_next(%struct.rb_node* %31), !dbg !1336
  %33 = icmp ne %struct.rb_node* %32, null, !dbg !1336
  br i1 %33, label %34, label %44, !dbg !1337

; <label>:34:                                     ; preds = %28
  call void @llvm.dbg.declare(metadata %struct.rb_node** %9, metadata !1338, metadata !298), !dbg !1340
  %35 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !1341
  %36 = getelementptr inbounds %struct._thread, %struct._thread* %35, i32 0, i32 8, !dbg !1343
  %37 = bitcast %union.anon.0* %36 to %struct.rb_node*, !dbg !1343
  %38 = call %struct.rb_node* @rb_next(%struct.rb_node* %37), !dbg !1344
  store %struct.rb_node* %38, %struct.rb_node** %9, align 8, !dbg !1345
  %39 = load %struct.rb_node*, %struct.rb_node** %9, align 8, !dbg !1346
  %40 = bitcast %struct.rb_node* %39 to i8*, !dbg !1347
  %41 = getelementptr inbounds i8, i8* %40, i64 -72, !dbg !1348
  %42 = bitcast i8* %41 to %struct._thread*, !dbg !1349
  store %struct._thread* %42, %struct._thread** %10, align 8, !dbg !1350
  %43 = load %struct._thread*, %struct._thread** %10, align 8, !dbg !1351
  br label %45, !dbg !1352

; <label>:44:                                     ; preds = %28
  br label %45, !dbg !1353

; <label>:45:                                     ; preds = %44, %34
  %46 = phi %struct._thread* [ %43, %34 ], [ null, %44 ], !dbg !1355
  store %struct._thread* %46, %struct._thread** %6, align 8, !dbg !1357
  br label %47

; <label>:47:                                     ; preds = %45, %25
  %48 = phi i1 [ false, %25 ], [ true, %45 ]
  br i1 %48, label %49, label %75, !dbg !1358

; <label>:49:                                     ; preds = %47
  %50 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !1360
  %51 = getelementptr inbounds %struct._thread, %struct._thread* %50, i32 0, i32 8, !dbg !1362
  %52 = bitcast %union.anon.0* %51 to %struct.rb_node*, !dbg !1362
  %53 = load %struct.rb_root*, %struct.rb_root** %4, align 8, !dbg !1363
  call void @rb_erase(%struct.rb_node* %52, %struct.rb_root* %53), !dbg !1364
  %54 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !1365
  %55 = getelementptr inbounds %struct._thread, %struct._thread* %54, i32 0, i32 1, !dbg !1367
  %56 = load i32, i32* %55, align 8, !dbg !1367
  %57 = icmp eq i32 %56, 0, !dbg !1368
  br i1 %57, label %58, label %61, !dbg !1369

; <label>:58:                                     ; preds = %49
  %59 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !1370
  %60 = call i32 @thread_del_read(%struct._thread* %59), !dbg !1371
  br label %70, !dbg !1371

; <label>:61:                                     ; preds = %49
  %62 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !1372
  %63 = getelementptr inbounds %struct._thread, %struct._thread* %62, i32 0, i32 1, !dbg !1374
  %64 = load i32, i32* %63, align 8, !dbg !1374
  %65 = icmp eq i32 %64, 1, !dbg !1375
  br i1 %65, label %66, label %69, !dbg !1376

; <label>:66:                                     ; preds = %61
  %67 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !1377
  %68 = call i32 @thread_del_write(%struct._thread* %67), !dbg !1378
  br label %69, !dbg !1378

; <label>:69:                                     ; preds = %66, %61
  br label %70

; <label>:70:                                     ; preds = %69, %58
  %71 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !1379
  %72 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !1380
  call void @thread_add_unuse(%struct._thread_master* %71, %struct._thread* %72), !dbg !1381
  br label %73, !dbg !1382

; <label>:73:                                     ; preds = %70
  %74 = load %struct._thread*, %struct._thread** %6, align 8, !dbg !1383
  store %struct._thread* %74, %struct._thread** %5, align 8, !dbg !1385
  br label %25, !dbg !1386, !llvm.loop !1387

; <label>:75:                                     ; preds = %47
  ret void, !dbg !1389
}

; Function Attrs: nounwind uwtable
define internal void @thread_destroy_list(%struct._thread_master*, %struct.list_head*) #0 !dbg !1390 {
  %3 = alloca %struct._thread_master*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct._thread*, align 8
  %6 = alloca %struct._thread*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct._thread*, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca %struct._thread*, align 8
  %11 = alloca %struct.list_head*, align 8
  %12 = alloca %struct._thread*, align 8
  store %struct._thread_master* %0, %struct._thread_master** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._thread_master** %3, metadata !1394, metadata !298), !dbg !1395
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %4, metadata !1396, metadata !298), !dbg !1397
  call void @llvm.dbg.declare(metadata %struct._thread** %5, metadata !1398, metadata !298), !dbg !1399
  call void @llvm.dbg.declare(metadata %struct._thread** %6, metadata !1400, metadata !298), !dbg !1401
  call void @llvm.dbg.declare(metadata %struct.list_head** %7, metadata !1402, metadata !298), !dbg !1407
  %13 = load %struct.list_head*, %struct.list_head** %4, align 8, !dbg !1408
  %14 = getelementptr inbounds %struct.list_head, %struct.list_head* %13, i32 0, i32 0, !dbg !1409
  %15 = load %struct.list_head*, %struct.list_head** %14, align 8, !dbg !1409
  store %struct.list_head* %15, %struct.list_head** %7, align 8, !dbg !1407
  %16 = load %struct.list_head*, %struct.list_head** %7, align 8, !dbg !1410
  %17 = bitcast %struct.list_head* %16 to i8*, !dbg !1411
  %18 = getelementptr inbounds i8, i8* %17, i64 -72, !dbg !1412
  %19 = bitcast i8* %18 to %struct._thread*, !dbg !1413
  store %struct._thread* %19, %struct._thread** %8, align 8, !dbg !1414
  %20 = load %struct._thread*, %struct._thread** %8, align 8, !dbg !1415
  store %struct._thread* %20, %struct._thread** %5, align 8, !dbg !1416
  call void @llvm.dbg.declare(metadata %struct.list_head** %9, metadata !1417, metadata !298), !dbg !1419
  %21 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !1420
  %22 = getelementptr inbounds %struct._thread, %struct._thread* %21, i32 0, i32 8, !dbg !1421
  %23 = bitcast %union.anon.0* %22 to %struct.list_head*, !dbg !1421
  %24 = getelementptr inbounds %struct.list_head, %struct.list_head* %23, i32 0, i32 0, !dbg !1422
  %25 = load %struct.list_head*, %struct.list_head** %24, align 8, !dbg !1422
  store %struct.list_head* %25, %struct.list_head** %9, align 8, !dbg !1419
  %26 = load %struct.list_head*, %struct.list_head** %9, align 8, !dbg !1423
  %27 = bitcast %struct.list_head* %26 to i8*, !dbg !1424
  %28 = getelementptr inbounds i8, i8* %27, i64 -72, !dbg !1425
  %29 = bitcast i8* %28 to %struct._thread*, !dbg !1426
  store %struct._thread* %29, %struct._thread** %10, align 8, !dbg !1427
  %30 = load %struct._thread*, %struct._thread** %10, align 8, !dbg !1428
  store %struct._thread* %30, %struct._thread** %6, align 8, !dbg !1429
  br label %31, !dbg !1430

; <label>:31:                                     ; preds = %53, %2
  %32 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !1431
  %33 = getelementptr inbounds %struct._thread, %struct._thread* %32, i32 0, i32 8, !dbg !1434
  %34 = bitcast %union.anon.0* %33 to %struct.list_head*, !dbg !1434
  %35 = load %struct.list_head*, %struct.list_head** %4, align 8, !dbg !1435
  %36 = icmp ne %struct.list_head* %34, %35, !dbg !1436
  br i1 %36, label %37, label %65, !dbg !1437

; <label>:37:                                     ; preds = %31
  %38 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !1438
  %39 = getelementptr inbounds %struct._thread, %struct._thread* %38, i32 0, i32 7, !dbg !1441
  %40 = load %struct._thread_event*, %struct._thread_event** %39, align 8, !dbg !1441
  %41 = icmp ne %struct._thread_event* %40, null, !dbg !1438
  br i1 %41, label %42, label %47, !dbg !1442

; <label>:42:                                     ; preds = %37
  %43 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !1443
  %44 = call i32 @thread_del_read(%struct._thread* %43), !dbg !1445
  %45 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !1446
  %46 = call i32 @thread_del_write(%struct._thread* %45), !dbg !1447
  br label %47, !dbg !1448

; <label>:47:                                     ; preds = %42, %37
  %48 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !1449
  %49 = getelementptr inbounds %struct._thread, %struct._thread* %48, i32 0, i32 8, !dbg !1450
  %50 = bitcast %union.anon.0* %49 to %struct.list_head*, !dbg !1450
  call void @list_head_del(%struct.list_head* %50), !dbg !1451
  %51 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !1452
  %52 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !1453
  call void @thread_add_unuse(%struct._thread_master* %51, %struct._thread* %52), !dbg !1454
  br label %53, !dbg !1455

; <label>:53:                                     ; preds = %47
  %54 = load %struct._thread*, %struct._thread** %6, align 8, !dbg !1456
  store %struct._thread* %54, %struct._thread** %5, align 8, !dbg !1458
  call void @llvm.dbg.declare(metadata %struct.list_head** %11, metadata !1459, metadata !298), !dbg !1461
  %55 = load %struct._thread*, %struct._thread** %6, align 8, !dbg !1462
  %56 = getelementptr inbounds %struct._thread, %struct._thread* %55, i32 0, i32 8, !dbg !1463
  %57 = bitcast %union.anon.0* %56 to %struct.list_head*, !dbg !1463
  %58 = getelementptr inbounds %struct.list_head, %struct.list_head* %57, i32 0, i32 0, !dbg !1464
  %59 = load %struct.list_head*, %struct.list_head** %58, align 8, !dbg !1464
  store %struct.list_head* %59, %struct.list_head** %11, align 8, !dbg !1465
  %60 = load %struct.list_head*, %struct.list_head** %11, align 8, !dbg !1466
  %61 = bitcast %struct.list_head* %60 to i8*, !dbg !1467
  %62 = getelementptr inbounds i8, i8* %61, i64 -72, !dbg !1468
  %63 = bitcast i8* %62 to %struct._thread*, !dbg !1469
  store %struct._thread* %63, %struct._thread** %12, align 8, !dbg !1470
  %64 = load %struct._thread*, %struct._thread** %12, align 8, !dbg !1471
  store %struct._thread* %64, %struct._thread** %6, align 8, !dbg !1472
  br label %31, !dbg !1473, !llvm.loop !1474

; <label>:65:                                     ; preds = %31
  ret void, !dbg !1476
}

; Function Attrs: nounwind uwtable
define internal void @thread_clean_unuse(%struct._thread_master*) #0 !dbg !1477 {
  %2 = alloca %struct._thread_master*, align 8
  %3 = alloca %struct._thread*, align 8
  %4 = alloca %struct._thread*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca %struct._thread*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca %struct._thread*, align 8
  %10 = alloca %struct.list_head*, align 8
  %11 = alloca %struct._thread*, align 8
  store %struct._thread_master* %0, %struct._thread_master** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread_master** %2, metadata !1478, metadata !298), !dbg !1479
  call void @llvm.dbg.declare(metadata %struct._thread** %3, metadata !1480, metadata !298), !dbg !1481
  call void @llvm.dbg.declare(metadata %struct._thread** %4, metadata !1482, metadata !298), !dbg !1483
  call void @llvm.dbg.declare(metadata %struct.list_head** %5, metadata !1484, metadata !298), !dbg !1485
  %12 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !1486
  %13 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %12, i32 0, i32 6, !dbg !1487
  store %struct.list_head* %13, %struct.list_head** %5, align 8, !dbg !1485
  call void @llvm.dbg.declare(metadata %struct.list_head** %6, metadata !1488, metadata !298), !dbg !1491
  %14 = load %struct.list_head*, %struct.list_head** %5, align 8, !dbg !1492
  %15 = getelementptr inbounds %struct.list_head, %struct.list_head* %14, i32 0, i32 0, !dbg !1493
  %16 = load %struct.list_head*, %struct.list_head** %15, align 8, !dbg !1493
  store %struct.list_head* %16, %struct.list_head** %6, align 8, !dbg !1491
  %17 = load %struct.list_head*, %struct.list_head** %6, align 8, !dbg !1494
  %18 = bitcast %struct.list_head* %17 to i8*, !dbg !1495
  %19 = getelementptr inbounds i8, i8* %18, i64 -72, !dbg !1496
  %20 = bitcast i8* %19 to %struct._thread*, !dbg !1497
  store %struct._thread* %20, %struct._thread** %7, align 8, !dbg !1498
  %21 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !1499
  store %struct._thread* %21, %struct._thread** %3, align 8, !dbg !1500
  call void @llvm.dbg.declare(metadata %struct.list_head** %8, metadata !1501, metadata !298), !dbg !1503
  %22 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1504
  %23 = getelementptr inbounds %struct._thread, %struct._thread* %22, i32 0, i32 8, !dbg !1505
  %24 = bitcast %union.anon.0* %23 to %struct.list_head*, !dbg !1505
  %25 = getelementptr inbounds %struct.list_head, %struct.list_head* %24, i32 0, i32 0, !dbg !1506
  %26 = load %struct.list_head*, %struct.list_head** %25, align 8, !dbg !1506
  store %struct.list_head* %26, %struct.list_head** %8, align 8, !dbg !1503
  %27 = load %struct.list_head*, %struct.list_head** %8, align 8, !dbg !1507
  %28 = bitcast %struct.list_head* %27 to i8*, !dbg !1508
  %29 = getelementptr inbounds i8, i8* %28, i64 -72, !dbg !1509
  %30 = bitcast i8* %29 to %struct._thread*, !dbg !1510
  store %struct._thread* %30, %struct._thread** %9, align 8, !dbg !1511
  %31 = load %struct._thread*, %struct._thread** %9, align 8, !dbg !1512
  store %struct._thread* %31, %struct._thread** %4, align 8, !dbg !1513
  br label %32, !dbg !1514

; <label>:32:                                     ; preds = %48, %1
  %33 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1515
  %34 = getelementptr inbounds %struct._thread, %struct._thread* %33, i32 0, i32 8, !dbg !1518
  %35 = bitcast %union.anon.0* %34 to %struct.list_head*, !dbg !1518
  %36 = load %struct.list_head*, %struct.list_head** %5, align 8, !dbg !1519
  %37 = icmp ne %struct.list_head* %35, %36, !dbg !1520
  br i1 %37, label %38, label %60, !dbg !1521

; <label>:38:                                     ; preds = %32
  %39 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1522
  %40 = getelementptr inbounds %struct._thread, %struct._thread* %39, i32 0, i32 8, !dbg !1524
  %41 = bitcast %union.anon.0* %40 to %struct.list_head*, !dbg !1524
  call void @list_head_del(%struct.list_head* %41), !dbg !1525
  %42 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1526
  %43 = bitcast %struct._thread* %42 to i8*, !dbg !1526
  call void @free(i8* %43) #9, !dbg !1527
  store %struct._thread* null, %struct._thread** %3, align 8, !dbg !1528
  %44 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !1529
  %45 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %44, i32 0, i32 16, !dbg !1530
  %46 = load i64, i64* %45, align 8, !dbg !1531
  %47 = add i64 %46, -1, !dbg !1531
  store i64 %47, i64* %45, align 8, !dbg !1531
  br label %48, !dbg !1532

; <label>:48:                                     ; preds = %38
  %49 = load %struct._thread*, %struct._thread** %4, align 8, !dbg !1533
  store %struct._thread* %49, %struct._thread** %3, align 8, !dbg !1535
  call void @llvm.dbg.declare(metadata %struct.list_head** %10, metadata !1536, metadata !298), !dbg !1538
  %50 = load %struct._thread*, %struct._thread** %4, align 8, !dbg !1539
  %51 = getelementptr inbounds %struct._thread, %struct._thread* %50, i32 0, i32 8, !dbg !1540
  %52 = bitcast %union.anon.0* %51 to %struct.list_head*, !dbg !1540
  %53 = getelementptr inbounds %struct.list_head, %struct.list_head* %52, i32 0, i32 0, !dbg !1541
  %54 = load %struct.list_head*, %struct.list_head** %53, align 8, !dbg !1541
  store %struct.list_head* %54, %struct.list_head** %10, align 8, !dbg !1542
  %55 = load %struct.list_head*, %struct.list_head** %10, align 8, !dbg !1543
  %56 = bitcast %struct.list_head* %55 to i8*, !dbg !1544
  %57 = getelementptr inbounds i8, i8* %56, i64 -72, !dbg !1545
  %58 = bitcast i8* %57 to %struct._thread*, !dbg !1546
  store %struct._thread* %58, %struct._thread** %11, align 8, !dbg !1547
  %59 = load %struct._thread*, %struct._thread** %11, align 8, !dbg !1548
  store %struct._thread* %59, %struct._thread** %4, align 8, !dbg !1549
  br label %32, !dbg !1550, !llvm.loop !1551

; <label>:60:                                     ; preds = %32
  br label %61, !dbg !1553, !llvm.loop !1554

; <label>:61:                                     ; preds = %60
  %62 = load %struct.list_head*, %struct.list_head** %5, align 8, !dbg !1555
  %63 = load %struct.list_head*, %struct.list_head** %5, align 8, !dbg !1558
  %64 = getelementptr inbounds %struct.list_head, %struct.list_head* %63, i32 0, i32 0, !dbg !1559
  store %struct.list_head* %62, %struct.list_head** %64, align 8, !dbg !1560
  %65 = load %struct.list_head*, %struct.list_head** %5, align 8, !dbg !1561
  %66 = load %struct.list_head*, %struct.list_head** %5, align 8, !dbg !1562
  %67 = getelementptr inbounds %struct.list_head, %struct.list_head* %66, i32 0, i32 1, !dbg !1563
  store %struct.list_head* %65, %struct.list_head** %67, align 8, !dbg !1564
  br label %68, !dbg !1565

; <label>:68:                                     ; preds = %61
  ret void, !dbg !1566
}

; Function Attrs: nounwind uwtable
define void @thread_destroy_master(%struct._thread_master*) #0 !dbg !1567 {
  %2 = alloca %struct._thread_master*, align 8
  store %struct._thread_master* %0, %struct._thread_master** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread_master** %2, metadata !1568, metadata !298), !dbg !1569
  %3 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !1570
  %4 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %3, i32 0, i32 13, !dbg !1572
  %5 = load i32, i32* %4, align 8, !dbg !1572
  %6 = icmp ne i32 %5, -1, !dbg !1573
  br i1 %6, label %7, label %14, !dbg !1574

; <label>:7:                                      ; preds = %1
  %8 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !1575
  %9 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %8, i32 0, i32 13, !dbg !1577
  %10 = load i32, i32* %9, align 8, !dbg !1577
  %11 = call i32 @close(i32 %10), !dbg !1578
  %12 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !1579
  %13 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %12, i32 0, i32 13, !dbg !1580
  store i32 -1, i32* %13, align 8, !dbg !1581
  br label %14, !dbg !1582

; <label>:14:                                     ; preds = %7, %1
  %15 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !1583
  %16 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %15, i32 0, i32 14, !dbg !1585
  %17 = load i32, i32* %16, align 4, !dbg !1585
  %18 = icmp ne i32 %17, -1, !dbg !1586
  br i1 %18, label %19, label %24, !dbg !1587

; <label>:19:                                     ; preds = %14
  %20 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !1588
  %21 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %20, i32 0, i32 14, !dbg !1589
  %22 = load i32, i32* %21, align 4, !dbg !1589
  %23 = call i32 @close(i32 %22), !dbg !1590
  br label %24, !dbg !1590

; <label>:24:                                     ; preds = %19, %14
  %25 = call i32 @signal_rfd(), !dbg !1591
  %26 = icmp ne i32 %25, -1, !dbg !1593
  br i1 %26, label %27, label %28, !dbg !1594

; <label>:27:                                     ; preds = %24
  call void @signal_handler_destroy(), !dbg !1595
  br label %28, !dbg !1595

; <label>:28:                                     ; preds = %27, %24
  %29 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !1596
  call void @thread_cleanup_master(%struct._thread_master* %29), !dbg !1597
  %30 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !1598
  %31 = bitcast %struct._thread_master* %30 to i8*, !dbg !1598
  call void @free(i8* %31) #9, !dbg !1599
  store %struct._thread_master* null, %struct._thread_master** %2, align 8, !dbg !1600
  ret void, !dbg !1601
}

declare i32 @close(i32) #2

declare i32 @signal_rfd() #2

declare void @signal_handler_destroy() #2

; Function Attrs: nounwind uwtable
define internal %struct._thread_event* @thread_event_get(%struct._thread_master*, i32) #0 !dbg !1602 {
  %3 = alloca %struct._thread_master*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._thread_event, align 8
  %6 = alloca %struct.rb_node*, align 8
  %7 = alloca %struct._thread_event*, align 8
  %8 = alloca %struct._thread_event*, align 8
  %9 = alloca %struct.rb_node*, align 8
  %10 = alloca %struct._thread_event*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct._thread_event*, align 8
  store %struct._thread_master* %0, %struct._thread_master** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._thread_master** %3, metadata !1605, metadata !298), !dbg !1606
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1607, metadata !298), !dbg !1608
  call void @llvm.dbg.declare(metadata %struct._thread_event* %5, metadata !1609, metadata !298), !dbg !1610
  %13 = bitcast %struct._thread_event* %5 to i8*, !dbg !1610
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 56, i32 8, i1 false), !dbg !1610
  %14 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %5, i32 0, i32 3, !dbg !1611
  %15 = load i32, i32* %4, align 4, !dbg !1612
  store i32 %15, i32* %14, align 8, !dbg !1611
  call void @llvm.dbg.declare(metadata %struct.rb_node** %6, metadata !1613, metadata !298), !dbg !1615
  %16 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !1616
  %17 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %16, i32 0, i32 8, !dbg !1617
  %18 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %17, i32 0, i32 0, !dbg !1618
  %19 = load %struct.rb_node*, %struct.rb_node** %18, align 8, !dbg !1618
  store %struct.rb_node* %19, %struct.rb_node** %6, align 8, !dbg !1615
  call void @llvm.dbg.declare(metadata %struct._thread_event** %7, metadata !1619, metadata !298), !dbg !1620
  store %struct._thread_event* null, %struct._thread_event** %7, align 8, !dbg !1620
  call void @llvm.dbg.declare(metadata %struct._thread_event** %8, metadata !1621, metadata !298), !dbg !1622
  br label %20, !dbg !1623

; <label>:20:                                     ; preds = %54, %2
  %21 = load %struct.rb_node*, %struct.rb_node** %6, align 8, !dbg !1624
  %22 = icmp ne %struct.rb_node* %21, null, !dbg !1626
  br i1 %22, label %23, label %55, !dbg !1626

; <label>:23:                                     ; preds = %20
  %24 = load %struct.rb_node*, %struct.rb_node** %6, align 8, !dbg !1627
  %25 = icmp ne %struct.rb_node* %24, null, !dbg !1630
  br i1 %25, label %26, label %33, !dbg !1630

; <label>:26:                                     ; preds = %23
  call void @llvm.dbg.declare(metadata %struct.rb_node** %9, metadata !1631, metadata !298), !dbg !1633
  %27 = load %struct.rb_node*, %struct.rb_node** %6, align 8, !dbg !1634
  store %struct.rb_node* %27, %struct.rb_node** %9, align 8, !dbg !1636
  %28 = load %struct.rb_node*, %struct.rb_node** %9, align 8, !dbg !1637
  %29 = bitcast %struct.rb_node* %28 to i8*, !dbg !1638
  %30 = getelementptr inbounds i8, i8* %29, i64 -32, !dbg !1639
  %31 = bitcast i8* %30 to %struct._thread_event*, !dbg !1640
  store %struct._thread_event* %31, %struct._thread_event** %10, align 8, !dbg !1641
  %32 = load %struct._thread_event*, %struct._thread_event** %10, align 8, !dbg !1642
  br label %34, !dbg !1643

; <label>:33:                                     ; preds = %23
  br label %34, !dbg !1644

; <label>:34:                                     ; preds = %33, %26
  %35 = phi %struct._thread_event* [ %32, %26 ], [ null, %33 ], !dbg !1646
  store %struct._thread_event* %35, %struct._thread_event** %8, align 8, !dbg !1648
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1649, metadata !298), !dbg !1650
  %36 = load %struct._thread_event*, %struct._thread_event** %8, align 8, !dbg !1651
  %37 = call i32 @thread_event_cmp(%struct._thread_event* %5, %struct._thread_event* %36), !dbg !1652
  store i32 %37, i32* %11, align 4, !dbg !1653
  %38 = load i32, i32* %11, align 4, !dbg !1654
  %39 = icmp slt i32 %38, 0, !dbg !1655
  br i1 %39, label %40, label %44, !dbg !1654

; <label>:40:                                     ; preds = %34
  %41 = load %struct.rb_node*, %struct.rb_node** %6, align 8, !dbg !1656
  %42 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %41, i32 0, i32 2, !dbg !1659
  %43 = load %struct.rb_node*, %struct.rb_node** %42, align 8, !dbg !1659
  store %struct.rb_node* %43, %struct.rb_node** %6, align 8, !dbg !1660
  br label %54, !dbg !1661

; <label>:44:                                     ; preds = %34
  %45 = load i32, i32* %11, align 4, !dbg !1662
  %46 = icmp sgt i32 %45, 0, !dbg !1665
  br i1 %46, label %47, label %51, !dbg !1662

; <label>:47:                                     ; preds = %44
  %48 = load %struct.rb_node*, %struct.rb_node** %6, align 8, !dbg !1666
  %49 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %48, i32 0, i32 1, !dbg !1668
  %50 = load %struct.rb_node*, %struct.rb_node** %49, align 8, !dbg !1668
  store %struct.rb_node* %50, %struct.rb_node** %6, align 8, !dbg !1669
  br label %53, !dbg !1670

; <label>:51:                                     ; preds = %44
  %52 = load %struct._thread_event*, %struct._thread_event** %8, align 8, !dbg !1671
  store %struct._thread_event* %52, %struct._thread_event** %7, align 8, !dbg !1674
  br label %55, !dbg !1675

; <label>:53:                                     ; preds = %47
  br label %54

; <label>:54:                                     ; preds = %53, %40
  br label %20, !dbg !1676, !llvm.loop !1678

; <label>:55:                                     ; preds = %51, %20
  %56 = load %struct._thread_event*, %struct._thread_event** %7, align 8, !dbg !1679
  store %struct._thread_event* %56, %struct._thread_event** %12, align 8, !dbg !1681
  %57 = load %struct._thread_event*, %struct._thread_event** %12, align 8, !dbg !1682
  ret %struct._thread_event* %57, !dbg !1683
}

; Function Attrs: nounwind uwtable
define internal %struct._thread_event* @thread_event_new(%struct._thread_master*, i32) #0 !dbg !1684 {
  %3 = alloca %struct._thread_event*, align 8
  %4 = alloca %struct._thread_master*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._thread_event*, align 8
  %7 = alloca %struct.rb_node**, align 8
  %8 = alloca %struct.rb_node*, align 8
  %9 = alloca %struct._thread_event*, align 8
  %10 = alloca %struct.rb_node*, align 8
  %11 = alloca %struct._thread_event*, align 8
  %12 = alloca i32, align 4
  store %struct._thread_master* %0, %struct._thread_master** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._thread_master** %4, metadata !1685, metadata !298), !dbg !1686
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1687, metadata !298), !dbg !1688
  call void @llvm.dbg.declare(metadata %struct._thread_event** %6, metadata !1689, metadata !298), !dbg !1690
  %13 = call i8* @zalloc(i64 56), !dbg !1691
  %14 = bitcast i8* %13 to %struct._thread_event*, !dbg !1692
  store %struct._thread_event* %14, %struct._thread_event** %6, align 8, !dbg !1693
  %15 = load %struct._thread_event*, %struct._thread_event** %6, align 8, !dbg !1694
  %16 = icmp ne %struct._thread_event* %15, null, !dbg !1694
  br i1 %16, label %18, label %17, !dbg !1696

; <label>:17:                                     ; preds = %2
  store %struct._thread_event* null, %struct._thread_event** %3, align 8, !dbg !1697
  br label %81, !dbg !1697

; <label>:18:                                     ; preds = %2
  %19 = load %struct._thread_master*, %struct._thread_master** %4, align 8, !dbg !1698
  %20 = call i32 @thread_events_resize(%struct._thread_master* %19, i32 1), !dbg !1700
  %21 = icmp slt i32 %20, 0, !dbg !1701
  br i1 %21, label %22, label %25, !dbg !1702

; <label>:22:                                     ; preds = %18
  %23 = load %struct._thread_event*, %struct._thread_event** %6, align 8, !dbg !1703
  %24 = bitcast %struct._thread_event* %23 to i8*, !dbg !1703
  call void @free(i8* %24) #9, !dbg !1705
  store %struct._thread_event* null, %struct._thread_event** %6, align 8, !dbg !1706
  store %struct._thread_event* null, %struct._thread_event** %3, align 8, !dbg !1707
  br label %81, !dbg !1707

; <label>:25:                                     ; preds = %18
  %26 = load i32, i32* %5, align 4, !dbg !1708
  %27 = load %struct._thread_event*, %struct._thread_event** %6, align 8, !dbg !1709
  %28 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %27, i32 0, i32 3, !dbg !1710
  store i32 %26, i32* %28, align 8, !dbg !1711
  call void @llvm.dbg.declare(metadata %struct.rb_node*** %7, metadata !1712, metadata !298), !dbg !1714
  %29 = load %struct._thread_master*, %struct._thread_master** %4, align 8, !dbg !1715
  %30 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %29, i32 0, i32 8, !dbg !1716
  %31 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %30, i32 0, i32 0, !dbg !1717
  store %struct.rb_node** %31, %struct.rb_node*** %7, align 8, !dbg !1714
  call void @llvm.dbg.declare(metadata %struct.rb_node** %8, metadata !1718, metadata !298), !dbg !1719
  store %struct.rb_node* null, %struct.rb_node** %8, align 8, !dbg !1719
  call void @llvm.dbg.declare(metadata %struct._thread_event** %9, metadata !1720, metadata !298), !dbg !1714
  br label %32, !dbg !1721

; <label>:32:                                     ; preds = %70, %25
  %33 = load %struct.rb_node**, %struct.rb_node*** %7, align 8, !dbg !1722
  %34 = load %struct.rb_node*, %struct.rb_node** %33, align 8, !dbg !1724
  %35 = icmp ne %struct.rb_node* %34, null, !dbg !1725
  br i1 %35, label %36, label %71, !dbg !1725

; <label>:36:                                     ; preds = %32
  %37 = load %struct.rb_node**, %struct.rb_node*** %7, align 8, !dbg !1726
  %38 = load %struct.rb_node*, %struct.rb_node** %37, align 8, !dbg !1729
  %39 = icmp ne %struct.rb_node* %38, null, !dbg !1730
  br i1 %39, label %40, label %48, !dbg !1730

; <label>:40:                                     ; preds = %36
  call void @llvm.dbg.declare(metadata %struct.rb_node** %10, metadata !1731, metadata !298), !dbg !1733
  %41 = load %struct.rb_node**, %struct.rb_node*** %7, align 8, !dbg !1734
  %42 = load %struct.rb_node*, %struct.rb_node** %41, align 8, !dbg !1736
  store %struct.rb_node* %42, %struct.rb_node** %10, align 8, !dbg !1737
  %43 = load %struct.rb_node*, %struct.rb_node** %10, align 8, !dbg !1738
  %44 = bitcast %struct.rb_node* %43 to i8*, !dbg !1739
  %45 = getelementptr inbounds i8, i8* %44, i64 -32, !dbg !1740
  %46 = bitcast i8* %45 to %struct._thread_event*, !dbg !1741
  store %struct._thread_event* %46, %struct._thread_event** %11, align 8, !dbg !1742
  %47 = load %struct._thread_event*, %struct._thread_event** %11, align 8, !dbg !1743
  br label %49, !dbg !1744

; <label>:48:                                     ; preds = %36
  br label %49, !dbg !1745

; <label>:49:                                     ; preds = %48, %40
  %50 = phi %struct._thread_event* [ %47, %40 ], [ null, %48 ], !dbg !1747
  store %struct._thread_event* %50, %struct._thread_event** %9, align 8, !dbg !1749
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1750, metadata !298), !dbg !1751
  %51 = load %struct._thread_event*, %struct._thread_event** %6, align 8, !dbg !1752
  %52 = load %struct._thread_event*, %struct._thread_event** %9, align 8, !dbg !1753
  %53 = call i32 @thread_event_cmp(%struct._thread_event* %51, %struct._thread_event* %52), !dbg !1754
  store i32 %53, i32* %12, align 4, !dbg !1755
  %54 = load %struct.rb_node**, %struct.rb_node*** %7, align 8, !dbg !1756
  %55 = load %struct.rb_node*, %struct.rb_node** %54, align 8, !dbg !1757
  store %struct.rb_node* %55, %struct.rb_node** %8, align 8, !dbg !1758
  %56 = load i32, i32* %12, align 4, !dbg !1759
  %57 = icmp sle i32 %56, 0, !dbg !1760
  br i1 %57, label %58, label %62, !dbg !1759

; <label>:58:                                     ; preds = %49
  %59 = load %struct.rb_node**, %struct.rb_node*** %7, align 8, !dbg !1761
  %60 = load %struct.rb_node*, %struct.rb_node** %59, align 8, !dbg !1764
  %61 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %60, i32 0, i32 2, !dbg !1765
  store %struct.rb_node** %61, %struct.rb_node*** %7, align 8, !dbg !1766
  br label %70, !dbg !1767

; <label>:62:                                     ; preds = %49
  %63 = load i32, i32* %12, align 4, !dbg !1768
  %64 = icmp sgt i32 %63, 0, !dbg !1771
  br i1 %64, label %65, label %69, !dbg !1768

; <label>:65:                                     ; preds = %62
  %66 = load %struct.rb_node**, %struct.rb_node*** %7, align 8, !dbg !1772
  %67 = load %struct.rb_node*, %struct.rb_node** %66, align 8, !dbg !1774
  %68 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %67, i32 0, i32 1, !dbg !1775
  store %struct.rb_node** %68, %struct.rb_node*** %7, align 8, !dbg !1776
  br label %69, !dbg !1777

; <label>:69:                                     ; preds = %65, %62
  br label %70

; <label>:70:                                     ; preds = %69, %58
  br label %32, !dbg !1778, !llvm.loop !1780

; <label>:71:                                     ; preds = %32
  %72 = load %struct._thread_event*, %struct._thread_event** %6, align 8, !dbg !1781
  %73 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %72, i32 0, i32 4, !dbg !1783
  %74 = load %struct.rb_node*, %struct.rb_node** %8, align 8, !dbg !1784
  %75 = load %struct.rb_node**, %struct.rb_node*** %7, align 8, !dbg !1785
  call void @rb_link_node(%struct.rb_node* %73, %struct.rb_node* %74, %struct.rb_node** %75), !dbg !1786
  %76 = load %struct._thread_event*, %struct._thread_event** %6, align 8, !dbg !1787
  %77 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %76, i32 0, i32 4, !dbg !1788
  %78 = load %struct._thread_master*, %struct._thread_master** %4, align 8, !dbg !1789
  %79 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %78, i32 0, i32 8, !dbg !1790
  call void @rb_insert_color(%struct.rb_node* %77, %struct.rb_root* %79), !dbg !1791
  %80 = load %struct._thread_event*, %struct._thread_event** %6, align 8, !dbg !1793
  store %struct._thread_event* %80, %struct._thread_event** %3, align 8, !dbg !1794
  br label %81, !dbg !1794

; <label>:81:                                     ; preds = %71, %22, %17
  %82 = load %struct._thread_event*, %struct._thread_event** %3, align 8, !dbg !1795
  ret %struct._thread_event* %82, !dbg !1795
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i1 @__test_bit(i32, i64*) #6 !dbg !1796 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1802, metadata !298), !dbg !1803
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !1804, metadata !298), !dbg !1805
  %5 = load i32, i32* %3, align 4, !dbg !1806
  %6 = zext i32 %5 to i64, !dbg !1807
  %7 = udiv i64 %6, 64, !dbg !1808
  %8 = load i64*, i64** %4, align 8, !dbg !1809
  %9 = getelementptr inbounds i64, i64* %8, i64 %7, !dbg !1809
  %10 = load i64, i64* %9, align 8, !dbg !1809
  %11 = load i32, i32* %3, align 4, !dbg !1810
  %12 = zext i32 %11 to i64, !dbg !1811
  %13 = urem i64 %12, 64, !dbg !1812
  %14 = shl i64 1, %13, !dbg !1813
  %15 = and i64 %10, %14, !dbg !1814
  %16 = icmp ne i64 %15, 0, !dbg !1815
  %17 = xor i1 %16, true, !dbg !1815
  %18 = xor i1 %17, true, !dbg !1816
  ret i1 %18, !dbg !1817
}

; Function Attrs: nounwind uwtable
define internal %struct._thread* @thread_new(%struct._thread_master*) #0 !dbg !1818 {
  %2 = alloca %struct._thread_master*, align 8
  %3 = alloca %struct._thread*, align 8
  store %struct._thread_master* %0, %struct._thread_master** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread_master** %2, metadata !1821, metadata !298), !dbg !1822
  call void @llvm.dbg.declare(metadata %struct._thread** %3, metadata !1823, metadata !298), !dbg !1824
  %4 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !1825
  %5 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %4, i32 0, i32 6, !dbg !1826
  %6 = call %struct._thread* @thread_trim_head(%struct.list_head* %5), !dbg !1827
  store %struct._thread* %6, %struct._thread** %3, align 8, !dbg !1828
  %7 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1829
  %8 = icmp ne %struct._thread* %7, null, !dbg !1829
  br i1 %8, label %16, label %9, !dbg !1831

; <label>:9:                                      ; preds = %1
  %10 = call i8* @zalloc(i64 96), !dbg !1832
  %11 = bitcast i8* %10 to %struct._thread*, !dbg !1834
  store %struct._thread* %11, %struct._thread** %3, align 8, !dbg !1835
  %12 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !1836
  %13 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %12, i32 0, i32 16, !dbg !1837
  %14 = load i64, i64* %13, align 8, !dbg !1838
  %15 = add i64 %14, 1, !dbg !1838
  store i64 %15, i64* %13, align 8, !dbg !1838
  br label %16, !dbg !1839

; <label>:16:                                     ; preds = %9, %1
  br label %17, !dbg !1840, !llvm.loop !1841

; <label>:17:                                     ; preds = %16
  %18 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1842
  %19 = getelementptr inbounds %struct._thread, %struct._thread* %18, i32 0, i32 8, !dbg !1845
  %20 = bitcast %union.anon.0* %19 to %struct.list_head*, !dbg !1845
  %21 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1846
  %22 = getelementptr inbounds %struct._thread, %struct._thread* %21, i32 0, i32 8, !dbg !1847
  %23 = bitcast %union.anon.0* %22 to %struct.list_head*, !dbg !1847
  %24 = getelementptr inbounds %struct.list_head, %struct.list_head* %23, i32 0, i32 0, !dbg !1848
  store %struct.list_head* %20, %struct.list_head** %24, align 8, !dbg !1849
  %25 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1850
  %26 = getelementptr inbounds %struct._thread, %struct._thread* %25, i32 0, i32 8, !dbg !1851
  %27 = bitcast %union.anon.0* %26 to %struct.list_head*, !dbg !1851
  %28 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1852
  %29 = getelementptr inbounds %struct._thread, %struct._thread* %28, i32 0, i32 8, !dbg !1853
  %30 = bitcast %union.anon.0* %29 to %struct.list_head*, !dbg !1853
  %31 = getelementptr inbounds %struct.list_head, %struct.list_head* %30, i32 0, i32 1, !dbg !1854
  store %struct.list_head* %27, %struct.list_head** %31, align 8, !dbg !1855
  br label %32, !dbg !1856

; <label>:32:                                     ; preds = %17
  %33 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !1857
  %34 = call i64 @thread_get_id(%struct._thread_master* %33), !dbg !1858
  %35 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1859
  %36 = getelementptr inbounds %struct._thread, %struct._thread* %35, i32 0, i32 0, !dbg !1860
  store i64 %34, i64* %36, align 8, !dbg !1861
  %37 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1862
  ret %struct._thread* %37, !dbg !1863
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @__set_bit(i32, i64*) #6 !dbg !1864 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1868, metadata !298), !dbg !1869
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !1870, metadata !298), !dbg !1871
  %5 = load i32, i32* %3, align 4, !dbg !1872
  %6 = zext i32 %5 to i64, !dbg !1873
  %7 = urem i64 %6, 64, !dbg !1874
  %8 = shl i64 1, %7, !dbg !1875
  %9 = load i32, i32* %3, align 4, !dbg !1876
  %10 = zext i32 %9 to i64, !dbg !1877
  %11 = udiv i64 %10, 64, !dbg !1878
  %12 = load i64*, i64** %4, align 8, !dbg !1879
  %13 = getelementptr inbounds i64, i64* %12, i64 %11, !dbg !1879
  %14 = load i64, i64* %13, align 8, !dbg !1880
  %15 = or i64 %14, %8, !dbg !1880
  store i64 %15, i64* %13, align 8, !dbg !1880
  ret void, !dbg !1881
}

; Function Attrs: nounwind uwtable
define internal i32 @thread_event_set(%struct._thread*) #0 !dbg !1882 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._thread*, align 8
  %4 = alloca %struct._thread_event*, align 8
  %5 = alloca %struct._thread_master*, align 8
  %6 = alloca %struct.epoll_event, align 1
  %7 = alloca i32, align 4
  store %struct._thread* %0, %struct._thread** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %3, metadata !1883, metadata !298), !dbg !1884
  call void @llvm.dbg.declare(metadata %struct._thread_event** %4, metadata !1885, metadata !298), !dbg !1886
  %8 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1887
  %9 = getelementptr inbounds %struct._thread, %struct._thread* %8, i32 0, i32 7, !dbg !1888
  %10 = load %struct._thread_event*, %struct._thread_event** %9, align 8, !dbg !1888
  store %struct._thread_event* %10, %struct._thread_event** %4, align 8, !dbg !1886
  call void @llvm.dbg.declare(metadata %struct._thread_master** %5, metadata !1889, metadata !298), !dbg !1890
  %11 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !1891
  %12 = getelementptr inbounds %struct._thread, %struct._thread* %11, i32 0, i32 2, !dbg !1892
  %13 = load %struct._thread_master*, %struct._thread_master** %12, align 8, !dbg !1892
  store %struct._thread_master* %13, %struct._thread_master** %5, align 8, !dbg !1890
  call void @llvm.dbg.declare(metadata %struct.epoll_event* %6, metadata !1893, metadata !298), !dbg !1894
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1895, metadata !298), !dbg !1896
  %14 = bitcast %struct.epoll_event* %6 to i8*, !dbg !1897
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 12, i32 1, i1 false), !dbg !1897
  %15 = load %struct._thread_event*, %struct._thread_event** %4, align 8, !dbg !1898
  %16 = bitcast %struct._thread_event* %15 to i8*, !dbg !1898
  %17 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %6, i32 0, i32 1, !dbg !1899
  %18 = bitcast %union.epoll_data* %17 to i8**, !dbg !1900
  store i8* %16, i8** %18, align 1, !dbg !1901
  %19 = load %struct._thread_event*, %struct._thread_event** %4, align 8, !dbg !1902
  %20 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %19, i32 0, i32 2, !dbg !1904
  %21 = call zeroext i1 @__test_bit(i32 0, i64* %20), !dbg !1905
  br i1 %21, label %22, label %26, !dbg !1906

; <label>:22:                                     ; preds = %1
  %23 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %6, i32 0, i32 0, !dbg !1907
  %24 = load i32, i32* %23, align 1, !dbg !1908
  %25 = or i32 %24, 1, !dbg !1908
  store i32 %25, i32* %23, align 1, !dbg !1908
  br label %26, !dbg !1909

; <label>:26:                                     ; preds = %22, %1
  %27 = load %struct._thread_event*, %struct._thread_event** %4, align 8, !dbg !1910
  %28 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %27, i32 0, i32 2, !dbg !1912
  %29 = call zeroext i1 @__test_bit(i32 1, i64* %28), !dbg !1913
  br i1 %29, label %30, label %34, !dbg !1914

; <label>:30:                                     ; preds = %26
  %31 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %6, i32 0, i32 0, !dbg !1915
  %32 = load i32, i32* %31, align 1, !dbg !1916
  %33 = or i32 %32, 4, !dbg !1916
  store i32 %33, i32* %31, align 1, !dbg !1916
  br label %34, !dbg !1917

; <label>:34:                                     ; preds = %30, %26
  %35 = load %struct._thread_event*, %struct._thread_event** %4, align 8, !dbg !1918
  %36 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %35, i32 0, i32 2, !dbg !1920
  %37 = call zeroext i1 @__test_bit(i32 2, i64* %36), !dbg !1921
  br i1 %37, label %38, label %39, !dbg !1922

; <label>:38:                                     ; preds = %34
  store i32 3, i32* %7, align 4, !dbg !1923
  br label %40, !dbg !1924

; <label>:39:                                     ; preds = %34
  store i32 1, i32* %7, align 4, !dbg !1925
  br label %40

; <label>:40:                                     ; preds = %39, %38
  %41 = load %struct._thread_master*, %struct._thread_master** %5, align 8, !dbg !1926
  %42 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %41, i32 0, i32 13, !dbg !1928
  %43 = load i32, i32* %42, align 8, !dbg !1928
  %44 = load i32, i32* %7, align 4, !dbg !1929
  %45 = load %struct._thread_event*, %struct._thread_event** %4, align 8, !dbg !1930
  %46 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %45, i32 0, i32 3, !dbg !1931
  %47 = load i32, i32* %46, align 8, !dbg !1931
  %48 = call i32 @epoll_ctl(i32 %43, i32 %44, i32 %47, %struct.epoll_event* %6) #9, !dbg !1932
  %49 = icmp slt i32 %48, 0, !dbg !1933
  br i1 %49, label %50, label %51, !dbg !1934

; <label>:50:                                     ; preds = %40
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.42, i32 0, i32 0)), !dbg !1935
  store i32 -1, i32* %2, align 4, !dbg !1937
  br label %54, !dbg !1937

; <label>:51:                                     ; preds = %40
  %52 = load %struct._thread_event*, %struct._thread_event** %4, align 8, !dbg !1938
  %53 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %52, i32 0, i32 2, !dbg !1939
  call void @__set_bit(i32 2, i64* %53), !dbg !1940
  store i32 0, i32* %2, align 4, !dbg !1941
  br label %54, !dbg !1941

; <label>:54:                                     ; preds = %51, %50
  %55 = load i32, i32* %2, align 4, !dbg !1942
  ret i32 %55, !dbg !1942
}

; Function Attrs: nounwind uwtable
define internal void @thread_add_unuse(%struct._thread_master*, %struct._thread*) #0 !dbg !1943 {
  %3 = alloca %struct._thread_master*, align 8
  %4 = alloca %struct._thread*, align 8
  store %struct._thread_master* %0, %struct._thread_master** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._thread_master** %3, metadata !1946, metadata !298), !dbg !1947
  store %struct._thread* %1, %struct._thread** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %4, metadata !1948, metadata !298), !dbg !1949
  %5 = load %struct._thread*, %struct._thread** %4, align 8, !dbg !1950
  %6 = getelementptr inbounds %struct._thread, %struct._thread* %5, i32 0, i32 1, !dbg !1951
  store i32 7, i32* %6, align 8, !dbg !1952
  %7 = load %struct._thread*, %struct._thread** %4, align 8, !dbg !1953
  %8 = getelementptr inbounds %struct._thread, %struct._thread* %7, i32 0, i32 7, !dbg !1954
  store %struct._thread_event* null, %struct._thread_event** %8, align 8, !dbg !1955
  br label %9, !dbg !1956, !llvm.loop !1957

; <label>:9:                                      ; preds = %2
  %10 = load %struct._thread*, %struct._thread** %4, align 8, !dbg !1958
  %11 = getelementptr inbounds %struct._thread, %struct._thread* %10, i32 0, i32 8, !dbg !1961
  %12 = bitcast %union.anon.0* %11 to %struct.list_head*, !dbg !1961
  %13 = load %struct._thread*, %struct._thread** %4, align 8, !dbg !1962
  %14 = getelementptr inbounds %struct._thread, %struct._thread* %13, i32 0, i32 8, !dbg !1963
  %15 = bitcast %union.anon.0* %14 to %struct.list_head*, !dbg !1963
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %15, i32 0, i32 0, !dbg !1964
  store %struct.list_head* %12, %struct.list_head** %16, align 8, !dbg !1965
  %17 = load %struct._thread*, %struct._thread** %4, align 8, !dbg !1966
  %18 = getelementptr inbounds %struct._thread, %struct._thread* %17, i32 0, i32 8, !dbg !1967
  %19 = bitcast %union.anon.0* %18 to %struct.list_head*, !dbg !1967
  %20 = load %struct._thread*, %struct._thread** %4, align 8, !dbg !1968
  %21 = getelementptr inbounds %struct._thread, %struct._thread* %20, i32 0, i32 8, !dbg !1969
  %22 = bitcast %union.anon.0* %21 to %struct.list_head*, !dbg !1969
  %23 = getelementptr inbounds %struct.list_head, %struct.list_head* %22, i32 0, i32 1, !dbg !1970
  store %struct.list_head* %19, %struct.list_head** %23, align 8, !dbg !1971
  br label %24, !dbg !1972

; <label>:24:                                     ; preds = %9
  %25 = load %struct._thread*, %struct._thread** %4, align 8, !dbg !1973
  %26 = getelementptr inbounds %struct._thread, %struct._thread* %25, i32 0, i32 8, !dbg !1974
  %27 = bitcast %union.anon.0* %26 to %struct.list_head*, !dbg !1974
  %28 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !1975
  %29 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %28, i32 0, i32 6, !dbg !1976
  call void @list_add_tail(%struct.list_head* %27, %struct.list_head* %29), !dbg !1977
  ret void, !dbg !1978
}

declare { i64, i64 } @set_time_now() #2

declare { i64, i64 } @timer_add_long(i64, i64, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @thread_timer_cmp(%struct._thread*, %struct._thread*) #0 !dbg !1979 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._thread*, align 8
  %5 = alloca %struct._thread*, align 8
  store %struct._thread* %0, %struct._thread** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %4, metadata !1982, metadata !298), !dbg !1983
  store %struct._thread* %1, %struct._thread** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %5, metadata !1984, metadata !298), !dbg !1985
  %6 = load %struct._thread*, %struct._thread** %4, align 8, !dbg !1986
  %7 = getelementptr inbounds %struct._thread, %struct._thread* %6, i32 0, i32 5, !dbg !1988
  %8 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0, !dbg !1989
  %9 = load i64, i64* %8, align 8, !dbg !1989
  %10 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !1990
  %11 = getelementptr inbounds %struct._thread, %struct._thread* %10, i32 0, i32 5, !dbg !1991
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 0, !dbg !1992
  %13 = load i64, i64* %12, align 8, !dbg !1992
  %14 = icmp ne i64 %9, %13, !dbg !1993
  br i1 %14, label %21, label %15, !dbg !1994

; <label>:15:                                     ; preds = %2
  %16 = load %struct._thread*, %struct._thread** %4, align 8, !dbg !1995
  %17 = getelementptr inbounds %struct._thread, %struct._thread* %16, i32 0, i32 5, !dbg !1996
  %18 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0, !dbg !1997
  %19 = load i64, i64* %18, align 8, !dbg !1997
  %20 = icmp eq i64 %19, -9223372036854775808, !dbg !1998
  br i1 %20, label %21, label %53, !dbg !1999

; <label>:21:                                     ; preds = %15, %2
  %22 = load %struct._thread*, %struct._thread** %4, align 8, !dbg !2001
  %23 = getelementptr inbounds %struct._thread, %struct._thread* %22, i32 0, i32 5, !dbg !2004
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %23, i32 0, i32 0, !dbg !2005
  %25 = load i64, i64* %24, align 8, !dbg !2005
  %26 = icmp eq i64 %25, -9223372036854775808, !dbg !2006
  br i1 %26, label %27, label %35, !dbg !2007

; <label>:27:                                     ; preds = %21
  %28 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !2008
  %29 = getelementptr inbounds %struct._thread, %struct._thread* %28, i32 0, i32 5, !dbg !2011
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %29, i32 0, i32 0, !dbg !2012
  %31 = load i64, i64* %30, align 8, !dbg !2012
  %32 = icmp eq i64 %31, -9223372036854775808, !dbg !2013
  br i1 %32, label %33, label %34, !dbg !2014

; <label>:33:                                     ; preds = %27
  store i32 0, i32* %3, align 4, !dbg !2015
  br label %64, !dbg !2015

; <label>:34:                                     ; preds = %27
  store i32 1, i32* %3, align 4, !dbg !2016
  br label %64, !dbg !2016

; <label>:35:                                     ; preds = %21
  %36 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !2017
  %37 = getelementptr inbounds %struct._thread, %struct._thread* %36, i32 0, i32 5, !dbg !2019
  %38 = getelementptr inbounds %struct.timeval, %struct.timeval* %37, i32 0, i32 0, !dbg !2020
  %39 = load i64, i64* %38, align 8, !dbg !2020
  %40 = icmp eq i64 %39, -9223372036854775808, !dbg !2021
  br i1 %40, label %41, label %42, !dbg !2022

; <label>:41:                                     ; preds = %35
  store i32 -1, i32* %3, align 4, !dbg !2023
  br label %64, !dbg !2023

; <label>:42:                                     ; preds = %35
  %43 = load %struct._thread*, %struct._thread** %4, align 8, !dbg !2024
  %44 = getelementptr inbounds %struct._thread, %struct._thread* %43, i32 0, i32 5, !dbg !2025
  %45 = getelementptr inbounds %struct.timeval, %struct.timeval* %44, i32 0, i32 0, !dbg !2026
  %46 = load i64, i64* %45, align 8, !dbg !2026
  %47 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !2027
  %48 = getelementptr inbounds %struct._thread, %struct._thread* %47, i32 0, i32 5, !dbg !2028
  %49 = getelementptr inbounds %struct.timeval, %struct.timeval* %48, i32 0, i32 0, !dbg !2029
  %50 = load i64, i64* %49, align 8, !dbg !2029
  %51 = sub nsw i64 %46, %50, !dbg !2030
  %52 = trunc i64 %51 to i32, !dbg !2024
  store i32 %52, i32* %3, align 4, !dbg !2031
  br label %64, !dbg !2031

; <label>:53:                                     ; preds = %15
  %54 = load %struct._thread*, %struct._thread** %4, align 8, !dbg !2032
  %55 = getelementptr inbounds %struct._thread, %struct._thread* %54, i32 0, i32 5, !dbg !2033
  %56 = getelementptr inbounds %struct.timeval, %struct.timeval* %55, i32 0, i32 1, !dbg !2034
  %57 = load i64, i64* %56, align 8, !dbg !2034
  %58 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !2035
  %59 = getelementptr inbounds %struct._thread, %struct._thread* %58, i32 0, i32 5, !dbg !2036
  %60 = getelementptr inbounds %struct.timeval, %struct.timeval* %59, i32 0, i32 1, !dbg !2037
  %61 = load i64, i64* %60, align 8, !dbg !2037
  %62 = sub nsw i64 %57, %61, !dbg !2038
  %63 = trunc i64 %62 to i32, !dbg !2032
  store i32 %63, i32* %3, align 4, !dbg !2039
  br label %64, !dbg !2039

; <label>:64:                                     ; preds = %53, %42, %41, %34, %33
  %65 = load i32, i32* %3, align 4, !dbg !2040
  ret i32 %65, !dbg !2040
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @rb_link_node(%struct.rb_node*, %struct.rb_node*, %struct.rb_node**) #6 !dbg !2041 {
  %4 = alloca %struct.rb_node*, align 8
  %5 = alloca %struct.rb_node*, align 8
  %6 = alloca %struct.rb_node**, align 8
  store %struct.rb_node* %0, %struct.rb_node** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %4, metadata !2045, metadata !298), !dbg !2046
  store %struct.rb_node* %1, %struct.rb_node** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node** %5, metadata !2047, metadata !298), !dbg !2048
  store %struct.rb_node** %2, %struct.rb_node*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_node*** %6, metadata !2049, metadata !298), !dbg !2050
  %7 = load %struct.rb_node*, %struct.rb_node** %5, align 8, !dbg !2051
  %8 = ptrtoint %struct.rb_node* %7 to i64, !dbg !2052
  %9 = load %struct.rb_node*, %struct.rb_node** %4, align 8, !dbg !2053
  %10 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %9, i32 0, i32 0, !dbg !2054
  store i64 %8, i64* %10, align 8, !dbg !2055
  %11 = load %struct.rb_node*, %struct.rb_node** %4, align 8, !dbg !2056
  %12 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %11, i32 0, i32 1, !dbg !2057
  store %struct.rb_node* null, %struct.rb_node** %12, align 8, !dbg !2058
  %13 = load %struct.rb_node*, %struct.rb_node** %4, align 8, !dbg !2059
  %14 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %13, i32 0, i32 2, !dbg !2060
  store %struct.rb_node* null, %struct.rb_node** %14, align 8, !dbg !2061
  %15 = load %struct.rb_node*, %struct.rb_node** %4, align 8, !dbg !2062
  %16 = load %struct.rb_node**, %struct.rb_node*** %6, align 8, !dbg !2063
  store %struct.rb_node* %15, %struct.rb_node** %16, align 8, !dbg !2064
  ret void, !dbg !2065
}

declare void @rb_insert_color(%struct.rb_node*, %struct.rb_root*) #2

; Function Attrs: nounwind uwtable
define i32 @thread_del_read(%struct._thread*) #0 !dbg !2066 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._thread*, align 8
  store %struct._thread* %0, %struct._thread** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %3, metadata !2067, metadata !298), !dbg !2068
  %4 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !2069
  %5 = icmp ne %struct._thread* %4, null, !dbg !2069
  br i1 %5, label %6, label %11, !dbg !2071

; <label>:6:                                      ; preds = %1
  %7 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !2072
  %8 = getelementptr inbounds %struct._thread, %struct._thread* %7, i32 0, i32 7, !dbg !2074
  %9 = load %struct._thread_event*, %struct._thread_event** %8, align 8, !dbg !2074
  %10 = icmp ne %struct._thread_event* %9, null, !dbg !2072
  br i1 %10, label %12, label %11, !dbg !2075

; <label>:11:                                     ; preds = %6, %1
  store i32 -1, i32* %2, align 4, !dbg !2076
  br label %18, !dbg !2076

; <label>:12:                                     ; preds = %6
  %13 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !2077
  %14 = call i32 @thread_event_del(%struct._thread* %13, i32 3), !dbg !2079
  %15 = icmp slt i32 %14, 0, !dbg !2080
  br i1 %15, label %16, label %17, !dbg !2081

; <label>:16:                                     ; preds = %12
  store i32 -1, i32* %2, align 4, !dbg !2082
  br label %18, !dbg !2082

; <label>:17:                                     ; preds = %12
  store i32 0, i32* %2, align 4, !dbg !2083
  br label %18, !dbg !2083

; <label>:18:                                     ; preds = %17, %16, %11
  %19 = load i32, i32* %2, align 4, !dbg !2084
  ret i32 %19, !dbg !2084
}

; Function Attrs: nounwind uwtable
define internal i32 @thread_event_del(%struct._thread*, i32) #0 !dbg !2085 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._thread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._thread_event*, align 8
  store %struct._thread* %0, %struct._thread** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %4, metadata !2088, metadata !298), !dbg !2089
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2090, metadata !298), !dbg !2091
  call void @llvm.dbg.declare(metadata %struct._thread_event** %6, metadata !2092, metadata !298), !dbg !2093
  %7 = load %struct._thread*, %struct._thread** %4, align 8, !dbg !2094
  %8 = getelementptr inbounds %struct._thread, %struct._thread* %7, i32 0, i32 7, !dbg !2095
  %9 = load %struct._thread_event*, %struct._thread_event** %8, align 8, !dbg !2095
  store %struct._thread_event* %9, %struct._thread_event** %6, align 8, !dbg !2093
  %10 = load i32, i32* %5, align 4, !dbg !2096
  %11 = load %struct._thread_event*, %struct._thread_event** %6, align 8, !dbg !2098
  %12 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %11, i32 0, i32 2, !dbg !2099
  %13 = call zeroext i1 @__test_bit(i32 %10, i64* %12), !dbg !2100
  br i1 %13, label %15, label %14, !dbg !2101

; <label>:14:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !2102
  br label %55, !dbg !2102

; <label>:15:                                     ; preds = %2
  %16 = load i32, i32* %5, align 4, !dbg !2103
  %17 = icmp eq i32 %16, 3, !dbg !2105
  br i1 %17, label %18, label %30, !dbg !2106

; <label>:18:                                     ; preds = %15
  %19 = load %struct._thread_event*, %struct._thread_event** %6, align 8, !dbg !2107
  %20 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %19, i32 0, i32 2, !dbg !2109
  call void @__clear_bit(i32 0, i64* %20), !dbg !2110
  %21 = load %struct._thread_event*, %struct._thread_event** %6, align 8, !dbg !2111
  %22 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %21, i32 0, i32 2, !dbg !2113
  %23 = call zeroext i1 @__test_bit(i32 4, i64* %22), !dbg !2114
  br i1 %23, label %27, label %24, !dbg !2115

; <label>:24:                                     ; preds = %18
  %25 = load %struct._thread*, %struct._thread** %4, align 8, !dbg !2116
  %26 = call i32 @thread_event_cancel(%struct._thread* %25), !dbg !2117
  store i32 %26, i32* %3, align 4, !dbg !2118
  br label %55, !dbg !2118

; <label>:27:                                     ; preds = %18
  %28 = load %struct._thread_event*, %struct._thread_event** %6, align 8, !dbg !2119
  %29 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %28, i32 0, i32 0, !dbg !2120
  store %struct._thread* null, %struct._thread** %29, align 8, !dbg !2121
  br label %46, !dbg !2122

; <label>:30:                                     ; preds = %15
  %31 = load i32, i32* %5, align 4, !dbg !2123
  %32 = icmp eq i32 %31, 4, !dbg !2125
  br i1 %32, label %33, label %45, !dbg !2126

; <label>:33:                                     ; preds = %30
  %34 = load %struct._thread_event*, %struct._thread_event** %6, align 8, !dbg !2127
  %35 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %34, i32 0, i32 2, !dbg !2129
  call void @__clear_bit(i32 1, i64* %35), !dbg !2130
  %36 = load %struct._thread_event*, %struct._thread_event** %6, align 8, !dbg !2131
  %37 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %36, i32 0, i32 2, !dbg !2133
  %38 = call zeroext i1 @__test_bit(i32 3, i64* %37), !dbg !2134
  br i1 %38, label %42, label %39, !dbg !2135

; <label>:39:                                     ; preds = %33
  %40 = load %struct._thread*, %struct._thread** %4, align 8, !dbg !2136
  %41 = call i32 @thread_event_cancel(%struct._thread* %40), !dbg !2137
  store i32 %41, i32* %3, align 4, !dbg !2138
  br label %55, !dbg !2138

; <label>:42:                                     ; preds = %33
  %43 = load %struct._thread_event*, %struct._thread_event** %6, align 8, !dbg !2139
  %44 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %43, i32 0, i32 1, !dbg !2140
  store %struct._thread* null, %struct._thread** %44, align 8, !dbg !2141
  br label %45, !dbg !2142

; <label>:45:                                     ; preds = %42, %30
  br label %46

; <label>:46:                                     ; preds = %45, %27
  %47 = load %struct._thread*, %struct._thread** %4, align 8, !dbg !2143
  %48 = call i32 @thread_event_set(%struct._thread* %47), !dbg !2145
  %49 = icmp slt i32 %48, 0, !dbg !2146
  br i1 %49, label %50, label %51, !dbg !2147

; <label>:50:                                     ; preds = %46
  store i32 -1, i32* %3, align 4, !dbg !2148
  br label %55, !dbg !2148

; <label>:51:                                     ; preds = %46
  %52 = load i32, i32* %5, align 4, !dbg !2149
  %53 = load %struct._thread_event*, %struct._thread_event** %6, align 8, !dbg !2150
  %54 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %53, i32 0, i32 2, !dbg !2151
  call void @__clear_bit(i32 %52, i64* %54), !dbg !2152
  store i32 0, i32* %3, align 4, !dbg !2153
  br label %55, !dbg !2153

; <label>:55:                                     ; preds = %51, %50, %39, %24, %14
  %56 = load i32, i32* %3, align 4, !dbg !2154
  ret i32 %56, !dbg !2154
}

; Function Attrs: nounwind uwtable
define void @thread_requeue_read(%struct._thread_master*, i32, i64) #0 !dbg !2155 {
  %4 = alloca %struct._thread_master*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = alloca %struct.timeval, align 8
  store %struct._thread_master* %0, %struct._thread_master** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._thread_master** %4, metadata !2158, metadata !298), !dbg !2159
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2160, metadata !298), !dbg !2161
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !2162, metadata !298), !dbg !2163
  %9 = call { i64, i64 } @set_time_now(), !dbg !2164
  %10 = bitcast %struct.timeval* %7 to { i64, i64 }*, !dbg !2164
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 0, !dbg !2164
  %12 = extractvalue { i64, i64 } %9, 0, !dbg !2164
  store i64 %12, i64* %11, align 8, !dbg !2164
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 1, !dbg !2164
  %14 = extractvalue { i64, i64 } %9, 1, !dbg !2164
  store i64 %14, i64* %13, align 8, !dbg !2164
  %15 = load %struct._thread_master*, %struct._thread_master** %4, align 8, !dbg !2165
  %16 = load i32, i32* %5, align 4, !dbg !2166
  %17 = load i64, i64* %6, align 8, !dbg !2167
  %18 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.timeval* @time_now to { i64, i64 }*), i32 0, i32 0), align 8, !dbg !2168
  %19 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.timeval* @time_now to { i64, i64 }*), i32 0, i32 1), align 8, !dbg !2168
  %20 = call { i64, i64 } @timer_add_long(i64 %18, i64 %19, i64 %17), !dbg !2168
  %21 = bitcast %struct.timeval* %8 to { i64, i64 }*, !dbg !2168
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 0, !dbg !2168
  %23 = extractvalue { i64, i64 } %20, 0, !dbg !2168
  store i64 %23, i64* %22, align 8, !dbg !2168
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 1, !dbg !2168
  %25 = extractvalue { i64, i64 } %20, 1, !dbg !2168
  store i64 %25, i64* %24, align 8, !dbg !2168
  %26 = bitcast %struct.timeval* %8 to { i64, i64 }*, !dbg !2169
  %27 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %26, i32 0, i32 0, !dbg !2169
  %28 = load i64, i64* %27, align 8, !dbg !2169
  %29 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %26, i32 0, i32 1, !dbg !2169
  %30 = load i64, i64* %29, align 8, !dbg !2169
  call void @thread_read_requeue(%struct._thread_master* %15, i32 %16, i64 %28, i64 %30), !dbg !2170
  ret void, !dbg !2172
}

; Function Attrs: nounwind uwtable
define internal void @thread_read_requeue(%struct._thread_master*, i32, i64, i64) #0 !dbg !2173 {
  %5 = alloca %struct.timeval, align 8
  %6 = alloca %struct._thread_master*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._thread*, align 8
  %9 = alloca %struct._thread*, align 8
  %10 = alloca %struct._thread*, align 8
  %11 = alloca %struct.rb_node*, align 8
  %12 = alloca %struct.rb_node*, align 8
  %13 = alloca %struct._thread_event*, align 8
  %14 = alloca %struct.rb_node*, align 8
  %15 = alloca %struct._thread*, align 8
  %16 = alloca %struct.rb_node*, align 8
  %17 = alloca %struct._thread*, align 8
  %18 = alloca %struct.rb_node**, align 8
  %19 = alloca %struct.rb_node*, align 8
  %20 = alloca %struct._thread*, align 8
  %21 = alloca %struct.rb_node*, align 8
  %22 = alloca %struct._thread*, align 8
  %23 = alloca i32, align 4
  %24 = bitcast %struct.timeval* %5 to { i64, i64 }*
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %24, i32 0, i32 0
  store i64 %2, i64* %25, align 8
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %24, i32 0, i32 1
  store i64 %3, i64* %26, align 8
  store %struct._thread_master* %0, %struct._thread_master** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._thread_master** %6, metadata !2176, metadata !298), !dbg !2177
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !2178, metadata !298), !dbg !2179
  call void @llvm.dbg.declare(metadata %struct.timeval* %5, metadata !2180, metadata !298), !dbg !2181
  call void @llvm.dbg.declare(metadata %struct._thread** %8, metadata !2182, metadata !298), !dbg !2183
  call void @llvm.dbg.declare(metadata %struct._thread** %9, metadata !2184, metadata !298), !dbg !2185
  call void @llvm.dbg.declare(metadata %struct._thread** %10, metadata !2186, metadata !298), !dbg !2187
  call void @llvm.dbg.declare(metadata %struct.rb_node** %11, metadata !2188, metadata !298), !dbg !2189
  call void @llvm.dbg.declare(metadata %struct.rb_node** %12, metadata !2190, metadata !298), !dbg !2191
  call void @llvm.dbg.declare(metadata %struct._thread_event** %13, metadata !2192, metadata !298), !dbg !2193
  %27 = load %struct._thread_master*, %struct._thread_master** %6, align 8, !dbg !2194
  %28 = load i32, i32* %7, align 4, !dbg !2195
  %29 = call %struct._thread_event* @thread_event_get(%struct._thread_master* %27, i32 %28), !dbg !2196
  store %struct._thread_event* %29, %struct._thread_event** %13, align 8, !dbg !2197
  %30 = load %struct._thread_event*, %struct._thread_event** %13, align 8, !dbg !2198
  %31 = icmp ne %struct._thread_event* %30, null, !dbg !2198
  br i1 %31, label %32, label %37, !dbg !2200

; <label>:32:                                     ; preds = %4
  %33 = load %struct._thread_event*, %struct._thread_event** %13, align 8, !dbg !2201
  %34 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %33, i32 0, i32 0, !dbg !2203
  %35 = load %struct._thread*, %struct._thread** %34, align 8, !dbg !2203
  %36 = icmp ne %struct._thread* %35, null, !dbg !2201
  br i1 %36, label %38, label %37, !dbg !2204

; <label>:37:                                     ; preds = %32, %4
  br label %204, !dbg !2205

; <label>:38:                                     ; preds = %32
  %39 = load %struct._thread_event*, %struct._thread_event** %13, align 8, !dbg !2206
  %40 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %39, i32 0, i32 0, !dbg !2207
  %41 = load %struct._thread*, %struct._thread** %40, align 8, !dbg !2207
  store %struct._thread* %41, %struct._thread** %8, align 8, !dbg !2208
  %42 = load %struct._thread*, %struct._thread** %8, align 8, !dbg !2209
  %43 = getelementptr inbounds %struct._thread, %struct._thread* %42, i32 0, i32 5, !dbg !2210
  %44 = bitcast %struct.timeval* %43 to i8*, !dbg !2211
  %45 = bitcast %struct.timeval* %5 to i8*, !dbg !2211
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %44, i8* %45, i64 16, i32 8, i1 false), !dbg !2211
  %46 = load %struct._thread*, %struct._thread** %8, align 8, !dbg !2212
  %47 = getelementptr inbounds %struct._thread, %struct._thread* %46, i32 0, i32 8, !dbg !2213
  %48 = bitcast %union.anon.0* %47 to %struct.rb_node*, !dbg !2213
  %49 = call %struct.rb_node* @rb_prev(%struct.rb_node* %48), !dbg !2214
  store %struct.rb_node* %49, %struct.rb_node** %11, align 8, !dbg !2215
  %50 = load %struct._thread*, %struct._thread** %8, align 8, !dbg !2216
  %51 = getelementptr inbounds %struct._thread, %struct._thread* %50, i32 0, i32 8, !dbg !2217
  %52 = bitcast %union.anon.0* %51 to %struct.rb_node*, !dbg !2217
  %53 = call %struct.rb_node* @rb_next(%struct.rb_node* %52), !dbg !2218
  store %struct.rb_node* %53, %struct.rb_node** %12, align 8, !dbg !2219
  %54 = load %struct.rb_node*, %struct.rb_node** %11, align 8, !dbg !2220
  %55 = icmp ne %struct.rb_node* %54, null, !dbg !2220
  br i1 %55, label %60, label %56, !dbg !2222

; <label>:56:                                     ; preds = %38
  %57 = load %struct.rb_node*, %struct.rb_node** %12, align 8, !dbg !2223
  %58 = icmp ne %struct.rb_node* %57, null, !dbg !2223
  br i1 %58, label %60, label %59, !dbg !2225

; <label>:59:                                     ; preds = %56
  br label %204, !dbg !2226

; <label>:60:                                     ; preds = %56, %38
  %61 = load %struct.rb_node*, %struct.rb_node** %11, align 8, !dbg !2227
  %62 = icmp ne %struct.rb_node* %61, null, !dbg !2228
  br i1 %62, label %63, label %70, !dbg !2228

; <label>:63:                                     ; preds = %60
  call void @llvm.dbg.declare(metadata %struct.rb_node** %14, metadata !2229, metadata !298), !dbg !2231
  %64 = load %struct.rb_node*, %struct.rb_node** %11, align 8, !dbg !2232
  store %struct.rb_node* %64, %struct.rb_node** %14, align 8, !dbg !2234
  %65 = load %struct.rb_node*, %struct.rb_node** %14, align 8, !dbg !2235
  %66 = bitcast %struct.rb_node* %65 to i8*, !dbg !2236
  %67 = getelementptr inbounds i8, i8* %66, i64 -72, !dbg !2237
  %68 = bitcast i8* %67 to %struct._thread*, !dbg !2238
  store %struct._thread* %68, %struct._thread** %15, align 8, !dbg !2239
  %69 = load %struct._thread*, %struct._thread** %15, align 8, !dbg !2240
  br label %71, !dbg !2241

; <label>:70:                                     ; preds = %60
  br label %71, !dbg !2242

; <label>:71:                                     ; preds = %70, %63
  %72 = phi %struct._thread* [ %69, %63 ], [ null, %70 ], !dbg !2244
  store %struct._thread* %72, %struct._thread** %9, align 8, !dbg !2246
  %73 = load %struct.rb_node*, %struct.rb_node** %12, align 8, !dbg !2247
  %74 = icmp ne %struct.rb_node* %73, null, !dbg !2248
  br i1 %74, label %75, label %82, !dbg !2248

; <label>:75:                                     ; preds = %71
  call void @llvm.dbg.declare(metadata %struct.rb_node** %16, metadata !2249, metadata !298), !dbg !2251
  %76 = load %struct.rb_node*, %struct.rb_node** %12, align 8, !dbg !2252
  store %struct.rb_node* %76, %struct.rb_node** %16, align 8, !dbg !2254
  %77 = load %struct.rb_node*, %struct.rb_node** %16, align 8, !dbg !2255
  %78 = bitcast %struct.rb_node* %77 to i8*, !dbg !2256
  %79 = getelementptr inbounds i8, i8* %78, i64 -72, !dbg !2257
  %80 = bitcast i8* %79 to %struct._thread*, !dbg !2258
  store %struct._thread* %80, %struct._thread** %17, align 8, !dbg !2259
  %81 = load %struct._thread*, %struct._thread** %17, align 8, !dbg !2260
  br label %83, !dbg !2261

; <label>:82:                                     ; preds = %71
  br label %83, !dbg !2262

; <label>:83:                                     ; preds = %82, %75
  %84 = phi %struct._thread* [ %81, %75 ], [ null, %82 ], !dbg !2263
  store %struct._thread* %84, %struct._thread** %10, align 8, !dbg !2264
  %85 = load %struct._thread*, %struct._thread** %9, align 8, !dbg !2265
  %86 = icmp ne %struct._thread* %85, null, !dbg !2265
  br i1 %86, label %87, label %111, !dbg !2267

; <label>:87:                                     ; preds = %83
  %88 = load %struct._thread*, %struct._thread** %9, align 8, !dbg !2268
  %89 = getelementptr inbounds %struct._thread, %struct._thread* %88, i32 0, i32 5, !dbg !2270
  %90 = getelementptr inbounds %struct.timeval, %struct.timeval* %89, i32 0, i32 0, !dbg !2271
  %91 = load i64, i64* %90, align 8, !dbg !2271
  %92 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0, !dbg !2271
  %93 = load i64, i64* %92, align 8, !dbg !2271
  %94 = icmp eq i64 %91, %93, !dbg !2272
  br i1 %94, label %95, label %103, !dbg !2273

; <label>:95:                                     ; preds = %87
  %96 = load %struct._thread*, %struct._thread** %9, align 8, !dbg !2274
  %97 = getelementptr inbounds %struct._thread, %struct._thread* %96, i32 0, i32 5, !dbg !2276
  %98 = getelementptr inbounds %struct.timeval, %struct.timeval* %97, i32 0, i32 1, !dbg !2277
  %99 = load i64, i64* %98, align 8, !dbg !2277
  %100 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1, !dbg !2277
  %101 = load i64, i64* %100, align 8, !dbg !2277
  %102 = icmp sle i64 %99, %101, !dbg !2278
  br i1 %102, label %111, label %139, !dbg !2274

; <label>:103:                                    ; preds = %87
  %104 = load %struct._thread*, %struct._thread** %9, align 8, !dbg !2279
  %105 = getelementptr inbounds %struct._thread, %struct._thread* %104, i32 0, i32 5, !dbg !2281
  %106 = getelementptr inbounds %struct.timeval, %struct.timeval* %105, i32 0, i32 0, !dbg !2282
  %107 = load i64, i64* %106, align 8, !dbg !2282
  %108 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0, !dbg !2282
  %109 = load i64, i64* %108, align 8, !dbg !2282
  %110 = icmp sle i64 %107, %109, !dbg !2283
  br i1 %110, label %111, label %139, !dbg !2284

; <label>:111:                                    ; preds = %103, %95, %83
  %112 = load %struct._thread*, %struct._thread** %10, align 8, !dbg !2285
  %113 = icmp ne %struct._thread* %112, null, !dbg !2285
  br i1 %113, label %114, label %138, !dbg !2286

; <label>:114:                                    ; preds = %111
  %115 = load %struct._thread*, %struct._thread** %10, align 8, !dbg !2287
  %116 = getelementptr inbounds %struct._thread, %struct._thread* %115, i32 0, i32 5, !dbg !2288
  %117 = getelementptr inbounds %struct.timeval, %struct.timeval* %116, i32 0, i32 0, !dbg !2289
  %118 = load i64, i64* %117, align 8, !dbg !2289
  %119 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0, !dbg !2289
  %120 = load i64, i64* %119, align 8, !dbg !2289
  %121 = icmp eq i64 %118, %120, !dbg !2290
  br i1 %121, label %122, label %130, !dbg !2291

; <label>:122:                                    ; preds = %114
  %123 = load %struct._thread*, %struct._thread** %10, align 8, !dbg !2293
  %124 = getelementptr inbounds %struct._thread, %struct._thread* %123, i32 0, i32 5, !dbg !2294
  %125 = getelementptr inbounds %struct.timeval, %struct.timeval* %124, i32 0, i32 1, !dbg !2295
  %126 = load i64, i64* %125, align 8, !dbg !2295
  %127 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1, !dbg !2295
  %128 = load i64, i64* %127, align 8, !dbg !2295
  %129 = icmp sge i64 %126, %128, !dbg !2296
  br i1 %129, label %138, label %139, !dbg !2293

; <label>:130:                                    ; preds = %114
  %131 = load %struct._thread*, %struct._thread** %10, align 8, !dbg !2297
  %132 = getelementptr inbounds %struct._thread, %struct._thread* %131, i32 0, i32 5, !dbg !2298
  %133 = getelementptr inbounds %struct.timeval, %struct.timeval* %132, i32 0, i32 0, !dbg !2299
  %134 = load i64, i64* %133, align 8, !dbg !2299
  %135 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0, !dbg !2299
  %136 = load i64, i64* %135, align 8, !dbg !2299
  %137 = icmp sge i64 %134, %136, !dbg !2300
  br i1 %137, label %138, label %139, !dbg !2301

; <label>:138:                                    ; preds = %130, %122, %111
  br label %204, !dbg !2303

; <label>:139:                                    ; preds = %130, %122, %103, %95
  %140 = load %struct._thread*, %struct._thread** %8, align 8, !dbg !2304
  %141 = getelementptr inbounds %struct._thread, %struct._thread* %140, i32 0, i32 8, !dbg !2305
  %142 = bitcast %union.anon.0* %141 to %struct.rb_node*, !dbg !2305
  %143 = load %struct._thread*, %struct._thread** %8, align 8, !dbg !2306
  %144 = getelementptr inbounds %struct._thread, %struct._thread* %143, i32 0, i32 2, !dbg !2307
  %145 = load %struct._thread_master*, %struct._thread_master** %144, align 8, !dbg !2307
  %146 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %145, i32 0, i32 0, !dbg !2308
  call void @rb_erase(%struct.rb_node* %142, %struct.rb_root* %146), !dbg !2309
  call void @llvm.dbg.declare(metadata %struct.rb_node*** %18, metadata !2310, metadata !298), !dbg !2312
  %147 = load %struct._thread*, %struct._thread** %8, align 8, !dbg !2313
  %148 = getelementptr inbounds %struct._thread, %struct._thread* %147, i32 0, i32 2, !dbg !2314
  %149 = load %struct._thread_master*, %struct._thread_master** %148, align 8, !dbg !2314
  %150 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %149, i32 0, i32 0, !dbg !2315
  %151 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %150, i32 0, i32 0, !dbg !2316
  store %struct.rb_node** %151, %struct.rb_node*** %18, align 8, !dbg !2312
  call void @llvm.dbg.declare(metadata %struct.rb_node** %19, metadata !2317, metadata !298), !dbg !2318
  store %struct.rb_node* null, %struct.rb_node** %19, align 8, !dbg !2318
  call void @llvm.dbg.declare(metadata %struct._thread** %20, metadata !2319, metadata !298), !dbg !2320
  br label %152, !dbg !2313

; <label>:152:                                    ; preds = %190, %139
  %153 = load %struct.rb_node**, %struct.rb_node*** %18, align 8, !dbg !2321
  %154 = load %struct.rb_node*, %struct.rb_node** %153, align 8, !dbg !2323
  %155 = icmp ne %struct.rb_node* %154, null, !dbg !2324
  br i1 %155, label %156, label %191, !dbg !2324

; <label>:156:                                    ; preds = %152
  %157 = load %struct.rb_node**, %struct.rb_node*** %18, align 8, !dbg !2325
  %158 = load %struct.rb_node*, %struct.rb_node** %157, align 8, !dbg !2328
  %159 = icmp ne %struct.rb_node* %158, null, !dbg !2329
  br i1 %159, label %160, label %168, !dbg !2329

; <label>:160:                                    ; preds = %156
  call void @llvm.dbg.declare(metadata %struct.rb_node** %21, metadata !2330, metadata !298), !dbg !2332
  %161 = load %struct.rb_node**, %struct.rb_node*** %18, align 8, !dbg !2333
  %162 = load %struct.rb_node*, %struct.rb_node** %161, align 8, !dbg !2335
  store %struct.rb_node* %162, %struct.rb_node** %21, align 8, !dbg !2336
  %163 = load %struct.rb_node*, %struct.rb_node** %21, align 8, !dbg !2337
  %164 = bitcast %struct.rb_node* %163 to i8*, !dbg !2338
  %165 = getelementptr inbounds i8, i8* %164, i64 -72, !dbg !2339
  %166 = bitcast i8* %165 to %struct._thread*, !dbg !2340
  store %struct._thread* %166, %struct._thread** %22, align 8, !dbg !2341
  %167 = load %struct._thread*, %struct._thread** %22, align 8, !dbg !2342
  br label %169, !dbg !2343

; <label>:168:                                    ; preds = %156
  br label %169, !dbg !2344

; <label>:169:                                    ; preds = %168, %160
  %170 = phi %struct._thread* [ %167, %160 ], [ null, %168 ], !dbg !2346
  store %struct._thread* %170, %struct._thread** %20, align 8, !dbg !2348
  call void @llvm.dbg.declare(metadata i32* %23, metadata !2349, metadata !298), !dbg !2350
  %171 = load %struct._thread*, %struct._thread** %8, align 8, !dbg !2351
  %172 = load %struct._thread*, %struct._thread** %20, align 8, !dbg !2352
  %173 = call i32 @thread_timer_cmp(%struct._thread* %171, %struct._thread* %172), !dbg !2353
  store i32 %173, i32* %23, align 4, !dbg !2354
  %174 = load %struct.rb_node**, %struct.rb_node*** %18, align 8, !dbg !2355
  %175 = load %struct.rb_node*, %struct.rb_node** %174, align 8, !dbg !2356
  store %struct.rb_node* %175, %struct.rb_node** %19, align 8, !dbg !2357
  %176 = load i32, i32* %23, align 4, !dbg !2358
  %177 = icmp sle i32 %176, 0, !dbg !2359
  br i1 %177, label %178, label %182, !dbg !2358

; <label>:178:                                    ; preds = %169
  %179 = load %struct.rb_node**, %struct.rb_node*** %18, align 8, !dbg !2360
  %180 = load %struct.rb_node*, %struct.rb_node** %179, align 8, !dbg !2363
  %181 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %180, i32 0, i32 2, !dbg !2364
  store %struct.rb_node** %181, %struct.rb_node*** %18, align 8, !dbg !2365
  br label %190, !dbg !2366

; <label>:182:                                    ; preds = %169
  %183 = load i32, i32* %23, align 4, !dbg !2367
  %184 = icmp sgt i32 %183, 0, !dbg !2370
  br i1 %184, label %185, label %189, !dbg !2367

; <label>:185:                                    ; preds = %182
  %186 = load %struct.rb_node**, %struct.rb_node*** %18, align 8, !dbg !2371
  %187 = load %struct.rb_node*, %struct.rb_node** %186, align 8, !dbg !2373
  %188 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %187, i32 0, i32 1, !dbg !2374
  store %struct.rb_node** %188, %struct.rb_node*** %18, align 8, !dbg !2375
  br label %189, !dbg !2376

; <label>:189:                                    ; preds = %185, %182
  br label %190

; <label>:190:                                    ; preds = %189, %178
  br label %152, !dbg !2377, !llvm.loop !2379

; <label>:191:                                    ; preds = %152
  %192 = load %struct._thread*, %struct._thread** %8, align 8, !dbg !2380
  %193 = getelementptr inbounds %struct._thread, %struct._thread* %192, i32 0, i32 8, !dbg !2382
  %194 = bitcast %union.anon.0* %193 to %struct.rb_node*, !dbg !2382
  %195 = load %struct.rb_node*, %struct.rb_node** %19, align 8, !dbg !2383
  %196 = load %struct.rb_node**, %struct.rb_node*** %18, align 8, !dbg !2384
  call void @rb_link_node(%struct.rb_node* %194, %struct.rb_node* %195, %struct.rb_node** %196), !dbg !2385
  %197 = load %struct._thread*, %struct._thread** %8, align 8, !dbg !2386
  %198 = getelementptr inbounds %struct._thread, %struct._thread* %197, i32 0, i32 8, !dbg !2387
  %199 = bitcast %union.anon.0* %198 to %struct.rb_node*, !dbg !2387
  %200 = load %struct._thread*, %struct._thread** %8, align 8, !dbg !2388
  %201 = getelementptr inbounds %struct._thread, %struct._thread* %200, i32 0, i32 2, !dbg !2389
  %202 = load %struct._thread_master*, %struct._thread_master** %201, align 8, !dbg !2389
  %203 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %202, i32 0, i32 0, !dbg !2390
  call void @rb_insert_color(%struct.rb_node* %199, %struct.rb_root* %203), !dbg !2391
  br label %204, !dbg !2393

; <label>:204:                                    ; preds = %191, %138, %59, %37
  ret void, !dbg !2394
}

; Function Attrs: nounwind uwtable
define %struct._thread* @thread_add_write(%struct._thread_master*, i32 (%struct._thread*)*, i8*, i32, i64) #0 !dbg !2396 {
  %6 = alloca %struct._thread*, align 8
  %7 = alloca %struct._thread_master*, align 8
  %8 = alloca i32 (%struct._thread*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct._thread_event*, align 8
  %13 = alloca %struct._thread*, align 8
  %14 = alloca %struct.timeval, align 8
  %15 = alloca %struct.timeval, align 8
  %16 = alloca %struct.rb_node**, align 8
  %17 = alloca %struct.rb_node*, align 8
  %18 = alloca %struct._thread*, align 8
  %19 = alloca %struct.rb_node*, align 8
  %20 = alloca %struct._thread*, align 8
  %21 = alloca i32, align 4
  store %struct._thread_master* %0, %struct._thread_master** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._thread_master** %7, metadata !2397, metadata !298), !dbg !2398
  store i32 (%struct._thread*)* %1, i32 (%struct._thread*)** %8, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct._thread*)** %8, metadata !2399, metadata !298), !dbg !2400
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2401, metadata !298), !dbg !2402
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2403, metadata !298), !dbg !2404
  store i64 %4, i64* %11, align 8
  call void @llvm.dbg.declare(metadata i64* %11, metadata !2405, metadata !298), !dbg !2406
  call void @llvm.dbg.declare(metadata %struct._thread_event** %12, metadata !2407, metadata !298), !dbg !2408
  call void @llvm.dbg.declare(metadata %struct._thread** %13, metadata !2409, metadata !298), !dbg !2410
  %22 = load %struct._thread_master*, %struct._thread_master** %7, align 8, !dbg !2411
  %23 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %22, i32 0, i32 10, !dbg !2413
  %24 = load %struct._thread_event*, %struct._thread_event** %23, align 8, !dbg !2413
  %25 = icmp ne %struct._thread_event* %24, null, !dbg !2411
  br i1 %25, label %26, label %38, !dbg !2414

; <label>:26:                                     ; preds = %5
  %27 = load %struct._thread_master*, %struct._thread_master** %7, align 8, !dbg !2415
  %28 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %27, i32 0, i32 10, !dbg !2417
  %29 = load %struct._thread_event*, %struct._thread_event** %28, align 8, !dbg !2417
  %30 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %29, i32 0, i32 3, !dbg !2418
  %31 = load i32, i32* %30, align 8, !dbg !2418
  %32 = load i32, i32* %10, align 4, !dbg !2419
  %33 = icmp eq i32 %31, %32, !dbg !2420
  br i1 %33, label %34, label %38, !dbg !2421

; <label>:34:                                     ; preds = %26
  %35 = load %struct._thread_master*, %struct._thread_master** %7, align 8, !dbg !2422
  %36 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %35, i32 0, i32 10, !dbg !2423
  %37 = load %struct._thread_event*, %struct._thread_event** %36, align 8, !dbg !2423
  store %struct._thread_event* %37, %struct._thread_event** %12, align 8, !dbg !2424
  br label %42, !dbg !2425

; <label>:38:                                     ; preds = %26, %5
  %39 = load %struct._thread_master*, %struct._thread_master** %7, align 8, !dbg !2426
  %40 = load i32, i32* %10, align 4, !dbg !2427
  %41 = call %struct._thread_event* @thread_event_get(%struct._thread_master* %39, i32 %40), !dbg !2428
  store %struct._thread_event* %41, %struct._thread_event** %12, align 8, !dbg !2429
  br label %42

; <label>:42:                                     ; preds = %38, %34
  %43 = load %struct._thread_event*, %struct._thread_event** %12, align 8, !dbg !2430
  %44 = icmp ne %struct._thread_event* %43, null, !dbg !2430
  br i1 %44, label %53, label %45, !dbg !2432

; <label>:45:                                     ; preds = %42
  %46 = load %struct._thread_master*, %struct._thread_master** %7, align 8, !dbg !2433
  %47 = load i32, i32* %10, align 4, !dbg !2436
  %48 = call %struct._thread_event* @thread_event_new(%struct._thread_master* %46, i32 %47), !dbg !2437
  store %struct._thread_event* %48, %struct._thread_event** %12, align 8, !dbg !2438
  %49 = icmp ne %struct._thread_event* %48, null, !dbg !2438
  br i1 %49, label %52, label %50, !dbg !2439

; <label>:50:                                     ; preds = %45
  %51 = load i32, i32* %10, align 4, !dbg !2440
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.36, i32 0, i32 0), i32 %51), !dbg !2442
  store %struct._thread* null, %struct._thread** %6, align 8, !dbg !2443
  br label %187, !dbg !2443

; <label>:52:                                     ; preds = %45
  br label %65, !dbg !2444

; <label>:53:                                     ; preds = %42
  %54 = load %struct._thread_event*, %struct._thread_event** %12, align 8, !dbg !2445
  %55 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %54, i32 0, i32 2, !dbg !2447
  %56 = call zeroext i1 @__test_bit(i32 1, i64* %55), !dbg !2448
  br i1 %56, label %57, label %64, !dbg !2449

; <label>:57:                                     ; preds = %53
  %58 = load %struct._thread_event*, %struct._thread_event** %12, align 8, !dbg !2450
  %59 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %58, i32 0, i32 1, !dbg !2452
  %60 = load %struct._thread*, %struct._thread** %59, align 8, !dbg !2452
  %61 = icmp ne %struct._thread* %60, null, !dbg !2450
  br i1 %61, label %62, label %64, !dbg !2453

; <label>:62:                                     ; preds = %57
  %63 = load i32, i32* %10, align 4, !dbg !2454
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.37, i32 0, i32 0), i32 %63), !dbg !2456
  store %struct._thread* null, %struct._thread** %6, align 8, !dbg !2457
  br label %187, !dbg !2457

; <label>:64:                                     ; preds = %57, %53
  br label %65

; <label>:65:                                     ; preds = %64, %52
  %66 = load %struct._thread_master*, %struct._thread_master** %7, align 8, !dbg !2458
  %67 = call %struct._thread* @thread_new(%struct._thread_master* %66), !dbg !2459
  store %struct._thread* %67, %struct._thread** %13, align 8, !dbg !2460
  %68 = load %struct._thread*, %struct._thread** %13, align 8, !dbg !2461
  %69 = getelementptr inbounds %struct._thread, %struct._thread* %68, i32 0, i32 1, !dbg !2462
  store i32 1, i32* %69, align 8, !dbg !2463
  %70 = load %struct._thread_master*, %struct._thread_master** %7, align 8, !dbg !2464
  %71 = load %struct._thread*, %struct._thread** %13, align 8, !dbg !2465
  %72 = getelementptr inbounds %struct._thread, %struct._thread* %71, i32 0, i32 2, !dbg !2466
  store %struct._thread_master* %70, %struct._thread_master** %72, align 8, !dbg !2467
  %73 = load i32 (%struct._thread*)*, i32 (%struct._thread*)** %8, align 8, !dbg !2468
  %74 = load %struct._thread*, %struct._thread** %13, align 8, !dbg !2469
  %75 = getelementptr inbounds %struct._thread, %struct._thread* %74, i32 0, i32 3, !dbg !2470
  store i32 (%struct._thread*)* %73, i32 (%struct._thread*)** %75, align 8, !dbg !2471
  %76 = load i8*, i8** %9, align 8, !dbg !2472
  %77 = load %struct._thread*, %struct._thread** %13, align 8, !dbg !2473
  %78 = getelementptr inbounds %struct._thread, %struct._thread* %77, i32 0, i32 4, !dbg !2474
  store i8* %76, i8** %78, align 8, !dbg !2475
  %79 = load i32, i32* %10, align 4, !dbg !2476
  %80 = load %struct._thread*, %struct._thread** %13, align 8, !dbg !2477
  %81 = getelementptr inbounds %struct._thread, %struct._thread* %80, i32 0, i32 6, !dbg !2478
  %82 = bitcast %union.anon* %81 to i32*, !dbg !2479
  store i32 %79, i32* %82, align 8, !dbg !2480
  %83 = load %struct._thread_event*, %struct._thread_event** %12, align 8, !dbg !2481
  %84 = load %struct._thread*, %struct._thread** %13, align 8, !dbg !2482
  %85 = getelementptr inbounds %struct._thread, %struct._thread* %84, i32 0, i32 7, !dbg !2483
  store %struct._thread_event* %83, %struct._thread_event** %85, align 8, !dbg !2484
  %86 = load %struct._thread_event*, %struct._thread_event** %12, align 8, !dbg !2485
  %87 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %86, i32 0, i32 2, !dbg !2486
  call void @__set_bit(i32 1, i64* %87), !dbg !2487
  %88 = load %struct._thread*, %struct._thread** %13, align 8, !dbg !2488
  %89 = load %struct._thread_event*, %struct._thread_event** %12, align 8, !dbg !2489
  %90 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %89, i32 0, i32 1, !dbg !2490
  store %struct._thread* %88, %struct._thread** %90, align 8, !dbg !2491
  %91 = load %struct._thread_event*, %struct._thread_event** %12, align 8, !dbg !2492
  %92 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %91, i32 0, i32 2, !dbg !2494
  %93 = call zeroext i1 @__test_bit(i32 4, i64* %92), !dbg !2495
  br i1 %93, label %105, label %94, !dbg !2496

; <label>:94:                                     ; preds = %65
  %95 = load %struct._thread*, %struct._thread** %13, align 8, !dbg !2497
  %96 = call i32 @thread_event_set(%struct._thread* %95), !dbg !2500
  %97 = icmp slt i32 %96, 0, !dbg !2501
  br i1 %97, label %98, label %102, !dbg !2502

; <label>:98:                                     ; preds = %94
  %99 = load i32, i32* %10, align 4, !dbg !2503
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.38, i32 0, i32 0), i32 %99), !dbg !2505
  %100 = load %struct._thread_master*, %struct._thread_master** %7, align 8, !dbg !2506
  %101 = load %struct._thread*, %struct._thread** %13, align 8, !dbg !2507
  call void @thread_add_unuse(%struct._thread_master* %100, %struct._thread* %101), !dbg !2508
  store %struct._thread* null, %struct._thread** %6, align 8, !dbg !2509
  br label %187, !dbg !2509

; <label>:102:                                    ; preds = %94
  %103 = load %struct._thread_event*, %struct._thread_event** %12, align 8, !dbg !2510
  %104 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %103, i32 0, i32 2, !dbg !2511
  call void @__set_bit(i32 4, i64* %104), !dbg !2512
  br label %105, !dbg !2513

; <label>:105:                                    ; preds = %102, %65
  %106 = load i64, i64* %11, align 8, !dbg !2514
  %107 = icmp eq i64 %106, -1, !dbg !2516
  br i1 %107, label %108, label %112, !dbg !2517

; <label>:108:                                    ; preds = %105
  %109 = load %struct._thread*, %struct._thread** %13, align 8, !dbg !2518
  %110 = getelementptr inbounds %struct._thread, %struct._thread* %109, i32 0, i32 5, !dbg !2519
  %111 = getelementptr inbounds %struct.timeval, %struct.timeval* %110, i32 0, i32 0, !dbg !2520
  store i64 -9223372036854775808, i64* %111, align 8, !dbg !2521
  br label %132, !dbg !2518

; <label>:112:                                    ; preds = %105
  %113 = call { i64, i64 } @set_time_now(), !dbg !2522
  %114 = bitcast %struct.timeval* %14 to { i64, i64 }*, !dbg !2522
  %115 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %114, i32 0, i32 0, !dbg !2522
  %116 = extractvalue { i64, i64 } %113, 0, !dbg !2522
  store i64 %116, i64* %115, align 8, !dbg !2522
  %117 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %114, i32 0, i32 1, !dbg !2522
  %118 = extractvalue { i64, i64 } %113, 1, !dbg !2522
  store i64 %118, i64* %117, align 8, !dbg !2522
  %119 = load %struct._thread*, %struct._thread** %13, align 8, !dbg !2524
  %120 = getelementptr inbounds %struct._thread, %struct._thread* %119, i32 0, i32 5, !dbg !2525
  %121 = load i64, i64* %11, align 8, !dbg !2526
  %122 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.timeval* @time_now to { i64, i64 }*), i32 0, i32 0), align 8, !dbg !2527
  %123 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.timeval* @time_now to { i64, i64 }*), i32 0, i32 1), align 8, !dbg !2527
  %124 = call { i64, i64 } @timer_add_long(i64 %122, i64 %123, i64 %121), !dbg !2527
  %125 = bitcast %struct.timeval* %15 to { i64, i64 }*, !dbg !2527
  %126 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %125, i32 0, i32 0, !dbg !2527
  %127 = extractvalue { i64, i64 } %124, 0, !dbg !2527
  store i64 %127, i64* %126, align 8, !dbg !2527
  %128 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %125, i32 0, i32 1, !dbg !2527
  %129 = extractvalue { i64, i64 } %124, 1, !dbg !2527
  store i64 %129, i64* %128, align 8, !dbg !2527
  %130 = bitcast %struct.timeval* %120 to i8*, !dbg !2527
  %131 = bitcast %struct.timeval* %15 to i8*, !dbg !2527
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %130, i8* %131, i64 16, i32 8, i1 false), !dbg !2528
  br label %132

; <label>:132:                                    ; preds = %112, %108
  call void @llvm.dbg.declare(metadata %struct.rb_node*** %16, metadata !2530, metadata !298), !dbg !2532
  %133 = load %struct._thread_master*, %struct._thread_master** %7, align 8, !dbg !2533
  %134 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %133, i32 0, i32 1, !dbg !2534
  %135 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %134, i32 0, i32 0, !dbg !2535
  store %struct.rb_node** %135, %struct.rb_node*** %16, align 8, !dbg !2532
  call void @llvm.dbg.declare(metadata %struct.rb_node** %17, metadata !2536, metadata !298), !dbg !2537
  store %struct.rb_node* null, %struct.rb_node** %17, align 8, !dbg !2537
  call void @llvm.dbg.declare(metadata %struct._thread** %18, metadata !2538, metadata !298), !dbg !2539
  br label %136, !dbg !2533

; <label>:136:                                    ; preds = %174, %132
  %137 = load %struct.rb_node**, %struct.rb_node*** %16, align 8, !dbg !2540
  %138 = load %struct.rb_node*, %struct.rb_node** %137, align 8, !dbg !2542
  %139 = icmp ne %struct.rb_node* %138, null, !dbg !2543
  br i1 %139, label %140, label %175, !dbg !2543

; <label>:140:                                    ; preds = %136
  %141 = load %struct.rb_node**, %struct.rb_node*** %16, align 8, !dbg !2544
  %142 = load %struct.rb_node*, %struct.rb_node** %141, align 8, !dbg !2547
  %143 = icmp ne %struct.rb_node* %142, null, !dbg !2548
  br i1 %143, label %144, label %152, !dbg !2548

; <label>:144:                                    ; preds = %140
  call void @llvm.dbg.declare(metadata %struct.rb_node** %19, metadata !2549, metadata !298), !dbg !2551
  %145 = load %struct.rb_node**, %struct.rb_node*** %16, align 8, !dbg !2552
  %146 = load %struct.rb_node*, %struct.rb_node** %145, align 8, !dbg !2554
  store %struct.rb_node* %146, %struct.rb_node** %19, align 8, !dbg !2555
  %147 = load %struct.rb_node*, %struct.rb_node** %19, align 8, !dbg !2556
  %148 = bitcast %struct.rb_node* %147 to i8*, !dbg !2557
  %149 = getelementptr inbounds i8, i8* %148, i64 -72, !dbg !2558
  %150 = bitcast i8* %149 to %struct._thread*, !dbg !2559
  store %struct._thread* %150, %struct._thread** %20, align 8, !dbg !2560
  %151 = load %struct._thread*, %struct._thread** %20, align 8, !dbg !2561
  br label %153, !dbg !2562

; <label>:152:                                    ; preds = %140
  br label %153, !dbg !2563

; <label>:153:                                    ; preds = %152, %144
  %154 = phi %struct._thread* [ %151, %144 ], [ null, %152 ], !dbg !2565
  store %struct._thread* %154, %struct._thread** %18, align 8, !dbg !2567
  call void @llvm.dbg.declare(metadata i32* %21, metadata !2568, metadata !298), !dbg !2569
  %155 = load %struct._thread*, %struct._thread** %13, align 8, !dbg !2570
  %156 = load %struct._thread*, %struct._thread** %18, align 8, !dbg !2571
  %157 = call i32 @thread_timer_cmp(%struct._thread* %155, %struct._thread* %156), !dbg !2572
  store i32 %157, i32* %21, align 4, !dbg !2573
  %158 = load %struct.rb_node**, %struct.rb_node*** %16, align 8, !dbg !2574
  %159 = load %struct.rb_node*, %struct.rb_node** %158, align 8, !dbg !2575
  store %struct.rb_node* %159, %struct.rb_node** %17, align 8, !dbg !2576
  %160 = load i32, i32* %21, align 4, !dbg !2577
  %161 = icmp sle i32 %160, 0, !dbg !2578
  br i1 %161, label %162, label %166, !dbg !2577

; <label>:162:                                    ; preds = %153
  %163 = load %struct.rb_node**, %struct.rb_node*** %16, align 8, !dbg !2579
  %164 = load %struct.rb_node*, %struct.rb_node** %163, align 8, !dbg !2582
  %165 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %164, i32 0, i32 2, !dbg !2583
  store %struct.rb_node** %165, %struct.rb_node*** %16, align 8, !dbg !2584
  br label %174, !dbg !2585

; <label>:166:                                    ; preds = %153
  %167 = load i32, i32* %21, align 4, !dbg !2586
  %168 = icmp sgt i32 %167, 0, !dbg !2589
  br i1 %168, label %169, label %173, !dbg !2586

; <label>:169:                                    ; preds = %166
  %170 = load %struct.rb_node**, %struct.rb_node*** %16, align 8, !dbg !2590
  %171 = load %struct.rb_node*, %struct.rb_node** %170, align 8, !dbg !2592
  %172 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %171, i32 0, i32 1, !dbg !2593
  store %struct.rb_node** %172, %struct.rb_node*** %16, align 8, !dbg !2594
  br label %173, !dbg !2595

; <label>:173:                                    ; preds = %169, %166
  br label %174

; <label>:174:                                    ; preds = %173, %162
  br label %136, !dbg !2596, !llvm.loop !2598

; <label>:175:                                    ; preds = %136
  %176 = load %struct._thread*, %struct._thread** %13, align 8, !dbg !2599
  %177 = getelementptr inbounds %struct._thread, %struct._thread* %176, i32 0, i32 8, !dbg !2601
  %178 = bitcast %union.anon.0* %177 to %struct.rb_node*, !dbg !2601
  %179 = load %struct.rb_node*, %struct.rb_node** %17, align 8, !dbg !2602
  %180 = load %struct.rb_node**, %struct.rb_node*** %16, align 8, !dbg !2603
  call void @rb_link_node(%struct.rb_node* %178, %struct.rb_node* %179, %struct.rb_node** %180), !dbg !2604
  %181 = load %struct._thread*, %struct._thread** %13, align 8, !dbg !2605
  %182 = getelementptr inbounds %struct._thread, %struct._thread* %181, i32 0, i32 8, !dbg !2606
  %183 = bitcast %union.anon.0* %182 to %struct.rb_node*, !dbg !2606
  %184 = load %struct._thread_master*, %struct._thread_master** %7, align 8, !dbg !2607
  %185 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %184, i32 0, i32 1, !dbg !2608
  call void @rb_insert_color(%struct.rb_node* %183, %struct.rb_root* %185), !dbg !2609
  %186 = load %struct._thread*, %struct._thread** %13, align 8, !dbg !2611
  store %struct._thread* %186, %struct._thread** %6, align 8, !dbg !2612
  br label %187, !dbg !2612

; <label>:187:                                    ; preds = %175, %98, %62, %50
  %188 = load %struct._thread*, %struct._thread** %6, align 8, !dbg !2613
  ret %struct._thread* %188, !dbg !2613
}

; Function Attrs: nounwind uwtable
define i32 @thread_del_write(%struct._thread*) #0 !dbg !2614 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._thread*, align 8
  store %struct._thread* %0, %struct._thread** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %3, metadata !2615, metadata !298), !dbg !2616
  %4 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !2617
  %5 = icmp ne %struct._thread* %4, null, !dbg !2617
  br i1 %5, label %6, label %11, !dbg !2619

; <label>:6:                                      ; preds = %1
  %7 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !2620
  %8 = getelementptr inbounds %struct._thread, %struct._thread* %7, i32 0, i32 7, !dbg !2622
  %9 = load %struct._thread_event*, %struct._thread_event** %8, align 8, !dbg !2622
  %10 = icmp ne %struct._thread_event* %9, null, !dbg !2620
  br i1 %10, label %12, label %11, !dbg !2623

; <label>:11:                                     ; preds = %6, %1
  store i32 -1, i32* %2, align 4, !dbg !2624
  br label %18, !dbg !2624

; <label>:12:                                     ; preds = %6
  %13 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !2625
  %14 = call i32 @thread_event_del(%struct._thread* %13, i32 4), !dbg !2627
  %15 = icmp slt i32 %14, 0, !dbg !2628
  br i1 %15, label %16, label %17, !dbg !2629

; <label>:16:                                     ; preds = %12
  store i32 -1, i32* %2, align 4, !dbg !2630
  br label %18, !dbg !2630

; <label>:17:                                     ; preds = %12
  store i32 0, i32* %2, align 4, !dbg !2631
  br label %18, !dbg !2631

; <label>:18:                                     ; preds = %17, %16, %11
  %19 = load i32, i32* %2, align 4, !dbg !2632
  ret i32 %19, !dbg !2632
}

; Function Attrs: nounwind uwtable
define void @thread_close_fd(%struct._thread*) #0 !dbg !2633 {
  %2 = alloca %struct._thread*, align 8
  store %struct._thread* %0, %struct._thread** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %2, metadata !2634, metadata !298), !dbg !2635
  %3 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !2636
  %4 = getelementptr inbounds %struct._thread, %struct._thread* %3, i32 0, i32 6, !dbg !2638
  %5 = bitcast %union.anon* %4 to i32*, !dbg !2639
  %6 = load i32, i32* %5, align 8, !dbg !2639
  %7 = icmp eq i32 %6, -1, !dbg !2640
  br i1 %7, label %8, label %9, !dbg !2641

; <label>:8:                                      ; preds = %1
  br label %26, !dbg !2642

; <label>:9:                                      ; preds = %1
  %10 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !2643
  %11 = getelementptr inbounds %struct._thread, %struct._thread* %10, i32 0, i32 7, !dbg !2645
  %12 = load %struct._thread_event*, %struct._thread_event** %11, align 8, !dbg !2645
  %13 = icmp ne %struct._thread_event* %12, null, !dbg !2643
  br i1 %13, label %14, label %17, !dbg !2646

; <label>:14:                                     ; preds = %9
  %15 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !2647
  %16 = call i32 @thread_event_cancel(%struct._thread* %15), !dbg !2648
  br label %17, !dbg !2648

; <label>:17:                                     ; preds = %14, %9
  %18 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !2649
  %19 = getelementptr inbounds %struct._thread, %struct._thread* %18, i32 0, i32 6, !dbg !2650
  %20 = bitcast %union.anon* %19 to i32*, !dbg !2651
  %21 = load i32, i32* %20, align 8, !dbg !2651
  %22 = call i32 @close(i32 %21), !dbg !2652
  %23 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !2653
  %24 = getelementptr inbounds %struct._thread, %struct._thread* %23, i32 0, i32 6, !dbg !2654
  %25 = bitcast %union.anon* %24 to i32*, !dbg !2655
  store i32 -1, i32* %25, align 8, !dbg !2656
  br label %26, !dbg !2657

; <label>:26:                                     ; preds = %17, %8
  ret void, !dbg !2658
}

; Function Attrs: nounwind uwtable
define internal i32 @thread_event_cancel(%struct._thread*) #0 !dbg !2660 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._thread*, align 8
  %4 = alloca %struct._thread_event*, align 8
  %5 = alloca %struct._thread_master*, align 8
  store %struct._thread* %0, %struct._thread** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %3, metadata !2661, metadata !298), !dbg !2662
  call void @llvm.dbg.declare(metadata %struct._thread_event** %4, metadata !2663, metadata !298), !dbg !2664
  %6 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !2665
  %7 = getelementptr inbounds %struct._thread, %struct._thread* %6, i32 0, i32 7, !dbg !2666
  %8 = load %struct._thread_event*, %struct._thread_event** %7, align 8, !dbg !2666
  store %struct._thread_event* %8, %struct._thread_event** %4, align 8, !dbg !2664
  call void @llvm.dbg.declare(metadata %struct._thread_master** %5, metadata !2667, metadata !298), !dbg !2668
  %9 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !2669
  %10 = getelementptr inbounds %struct._thread, %struct._thread* %9, i32 0, i32 2, !dbg !2670
  %11 = load %struct._thread_master*, %struct._thread_master** %10, align 8, !dbg !2670
  store %struct._thread_master* %11, %struct._thread_master** %5, align 8, !dbg !2668
  %12 = load %struct._thread_event*, %struct._thread_event** %4, align 8, !dbg !2671
  %13 = icmp ne %struct._thread_event* %12, null, !dbg !2671
  br i1 %13, label %15, label %14, !dbg !2673

; <label>:14:                                     ; preds = %1
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.43, i32 0, i32 0)), !dbg !2674
  store i32 -1, i32* %2, align 4, !dbg !2676
  br label %53, !dbg !2676

; <label>:15:                                     ; preds = %1
  %16 = load %struct._thread_master*, %struct._thread_master** %5, align 8, !dbg !2677
  %17 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %16, i32 0, i32 13, !dbg !2679
  %18 = load i32, i32* %17, align 8, !dbg !2679
  %19 = icmp ne i32 %18, -1, !dbg !2680
  br i1 %19, label %20, label %33, !dbg !2681

; <label>:20:                                     ; preds = %15
  %21 = load %struct._thread_master*, %struct._thread_master** %5, align 8, !dbg !2682
  %22 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %21, i32 0, i32 13, !dbg !2684
  %23 = load i32, i32* %22, align 8, !dbg !2684
  %24 = load %struct._thread_event*, %struct._thread_event** %4, align 8, !dbg !2685
  %25 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %24, i32 0, i32 3, !dbg !2686
  %26 = load i32, i32* %25, align 8, !dbg !2686
  %27 = call i32 @epoll_ctl(i32 %23, i32 2, i32 %26, %struct.epoll_event* null) #9, !dbg !2687
  %28 = icmp slt i32 %27, 0, !dbg !2688
  br i1 %28, label %29, label %33, !dbg !2689

; <label>:29:                                     ; preds = %20
  %30 = load %struct._thread_event*, %struct._thread_event** %4, align 8, !dbg !2690
  %31 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %30, i32 0, i32 3, !dbg !2692
  %32 = load i32, i32* %31, align 8, !dbg !2692
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.44, i32 0, i32 0), i32 %32), !dbg !2693
  store i32 -1, i32* %2, align 4, !dbg !2694
  br label %53, !dbg !2694

; <label>:33:                                     ; preds = %20, %15
  %34 = load %struct._thread_event*, %struct._thread_event** %4, align 8, !dbg !2695
  %35 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %34, i32 0, i32 4, !dbg !2696
  %36 = load %struct._thread_master*, %struct._thread_master** %5, align 8, !dbg !2697
  %37 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %36, i32 0, i32 8, !dbg !2698
  call void @rb_erase(%struct.rb_node* %35, %struct.rb_root* %37), !dbg !2699
  %38 = load %struct._thread_event*, %struct._thread_event** %4, align 8, !dbg !2700
  %39 = load %struct._thread_master*, %struct._thread_master** %5, align 8, !dbg !2702
  %40 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %39, i32 0, i32 10, !dbg !2703
  %41 = load %struct._thread_event*, %struct._thread_event** %40, align 8, !dbg !2703
  %42 = icmp eq %struct._thread_event* %38, %41, !dbg !2704
  br i1 %42, label %43, label %46, !dbg !2705

; <label>:43:                                     ; preds = %33
  %44 = load %struct._thread_master*, %struct._thread_master** %5, align 8, !dbg !2706
  %45 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %44, i32 0, i32 10, !dbg !2707
  store %struct._thread_event* null, %struct._thread_event** %45, align 8, !dbg !2708
  br label %46, !dbg !2706

; <label>:46:                                     ; preds = %43, %33
  %47 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !2709
  %48 = getelementptr inbounds %struct._thread, %struct._thread* %47, i32 0, i32 7, !dbg !2710
  %49 = load %struct._thread_event*, %struct._thread_event** %48, align 8, !dbg !2710
  %50 = bitcast %struct._thread_event* %49 to i8*, !dbg !2709
  call void @free(i8* %50) #9, !dbg !2711
  %51 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !2712
  %52 = getelementptr inbounds %struct._thread, %struct._thread* %51, i32 0, i32 7, !dbg !2713
  store %struct._thread_event* null, %struct._thread_event** %52, align 8, !dbg !2714
  store i32 0, i32* %2, align 4, !dbg !2715
  br label %53, !dbg !2715

; <label>:53:                                     ; preds = %46, %29, %14
  %54 = load i32, i32* %2, align 4, !dbg !2716
  ret i32 %54, !dbg !2716
}

; Function Attrs: nounwind uwtable
define %struct._thread* @thread_add_timer(%struct._thread_master*, i32 (%struct._thread*)*, i8*, i64) #0 !dbg !2717 {
  %5 = alloca %struct._thread_master*, align 8
  %6 = alloca i32 (%struct._thread*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct._thread*, align 8
  %10 = alloca %struct.timeval, align 8
  %11 = alloca %struct.timeval, align 8
  %12 = alloca %struct.rb_node**, align 8
  %13 = alloca %struct.rb_node*, align 8
  %14 = alloca %struct._thread*, align 8
  %15 = alloca %struct.rb_node*, align 8
  %16 = alloca %struct._thread*, align 8
  %17 = alloca i32, align 4
  store %struct._thread_master* %0, %struct._thread_master** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._thread_master** %5, metadata !2720, metadata !298), !dbg !2721
  store i32 (%struct._thread*)* %1, i32 (%struct._thread*)** %6, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct._thread*)** %6, metadata !2722, metadata !298), !dbg !2723
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2724, metadata !298), !dbg !2725
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2726, metadata !298), !dbg !2727
  call void @llvm.dbg.declare(metadata %struct._thread** %9, metadata !2728, metadata !298), !dbg !2729
  %18 = load %struct._thread_master*, %struct._thread_master** %5, align 8, !dbg !2730
  %19 = call %struct._thread* @thread_new(%struct._thread_master* %18), !dbg !2731
  store %struct._thread* %19, %struct._thread** %9, align 8, !dbg !2732
  %20 = load %struct._thread*, %struct._thread** %9, align 8, !dbg !2733
  %21 = getelementptr inbounds %struct._thread, %struct._thread* %20, i32 0, i32 1, !dbg !2734
  store i32 2, i32* %21, align 8, !dbg !2735
  %22 = load %struct._thread_master*, %struct._thread_master** %5, align 8, !dbg !2736
  %23 = load %struct._thread*, %struct._thread** %9, align 8, !dbg !2737
  %24 = getelementptr inbounds %struct._thread, %struct._thread* %23, i32 0, i32 2, !dbg !2738
  store %struct._thread_master* %22, %struct._thread_master** %24, align 8, !dbg !2739
  %25 = load i32 (%struct._thread*)*, i32 (%struct._thread*)** %6, align 8, !dbg !2740
  %26 = load %struct._thread*, %struct._thread** %9, align 8, !dbg !2741
  %27 = getelementptr inbounds %struct._thread, %struct._thread* %26, i32 0, i32 3, !dbg !2742
  store i32 (%struct._thread*)* %25, i32 (%struct._thread*)** %27, align 8, !dbg !2743
  %28 = load i8*, i8** %7, align 8, !dbg !2744
  %29 = load %struct._thread*, %struct._thread** %9, align 8, !dbg !2745
  %30 = getelementptr inbounds %struct._thread, %struct._thread* %29, i32 0, i32 4, !dbg !2746
  store i8* %28, i8** %30, align 8, !dbg !2747
  %31 = load i64, i64* %8, align 8, !dbg !2748
  %32 = icmp eq i64 %31, -1, !dbg !2750
  br i1 %32, label %33, label %37, !dbg !2751

; <label>:33:                                     ; preds = %4
  %34 = load %struct._thread*, %struct._thread** %9, align 8, !dbg !2752
  %35 = getelementptr inbounds %struct._thread, %struct._thread* %34, i32 0, i32 5, !dbg !2753
  %36 = getelementptr inbounds %struct.timeval, %struct.timeval* %35, i32 0, i32 0, !dbg !2754
  store i64 -9223372036854775808, i64* %36, align 8, !dbg !2755
  br label %57, !dbg !2752

; <label>:37:                                     ; preds = %4
  %38 = call { i64, i64 } @set_time_now(), !dbg !2756
  %39 = bitcast %struct.timeval* %10 to { i64, i64 }*, !dbg !2756
  %40 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %39, i32 0, i32 0, !dbg !2756
  %41 = extractvalue { i64, i64 } %38, 0, !dbg !2756
  store i64 %41, i64* %40, align 8, !dbg !2756
  %42 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %39, i32 0, i32 1, !dbg !2756
  %43 = extractvalue { i64, i64 } %38, 1, !dbg !2756
  store i64 %43, i64* %42, align 8, !dbg !2756
  %44 = load %struct._thread*, %struct._thread** %9, align 8, !dbg !2758
  %45 = getelementptr inbounds %struct._thread, %struct._thread* %44, i32 0, i32 5, !dbg !2759
  %46 = load i64, i64* %8, align 8, !dbg !2760
  %47 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.timeval* @time_now to { i64, i64 }*), i32 0, i32 0), align 8, !dbg !2761
  %48 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.timeval* @time_now to { i64, i64 }*), i32 0, i32 1), align 8, !dbg !2761
  %49 = call { i64, i64 } @timer_add_long(i64 %47, i64 %48, i64 %46), !dbg !2761
  %50 = bitcast %struct.timeval* %11 to { i64, i64 }*, !dbg !2761
  %51 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %50, i32 0, i32 0, !dbg !2761
  %52 = extractvalue { i64, i64 } %49, 0, !dbg !2761
  store i64 %52, i64* %51, align 8, !dbg !2761
  %53 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %50, i32 0, i32 1, !dbg !2761
  %54 = extractvalue { i64, i64 } %49, 1, !dbg !2761
  store i64 %54, i64* %53, align 8, !dbg !2761
  %55 = bitcast %struct.timeval* %45 to i8*, !dbg !2761
  %56 = bitcast %struct.timeval* %11 to i8*, !dbg !2761
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* %56, i64 16, i32 8, i1 false), !dbg !2762
  br label %57

; <label>:57:                                     ; preds = %37, %33
  call void @llvm.dbg.declare(metadata %struct.rb_node*** %12, metadata !2764, metadata !298), !dbg !2766
  %58 = load %struct._thread_master*, %struct._thread_master** %5, align 8, !dbg !2767
  %59 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %58, i32 0, i32 2, !dbg !2768
  %60 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %59, i32 0, i32 0, !dbg !2769
  store %struct.rb_node** %60, %struct.rb_node*** %12, align 8, !dbg !2766
  call void @llvm.dbg.declare(metadata %struct.rb_node** %13, metadata !2770, metadata !298), !dbg !2771
  store %struct.rb_node* null, %struct.rb_node** %13, align 8, !dbg !2771
  call void @llvm.dbg.declare(metadata %struct._thread** %14, metadata !2772, metadata !298), !dbg !2773
  br label %61, !dbg !2767

; <label>:61:                                     ; preds = %99, %57
  %62 = load %struct.rb_node**, %struct.rb_node*** %12, align 8, !dbg !2774
  %63 = load %struct.rb_node*, %struct.rb_node** %62, align 8, !dbg !2776
  %64 = icmp ne %struct.rb_node* %63, null, !dbg !2777
  br i1 %64, label %65, label %100, !dbg !2777

; <label>:65:                                     ; preds = %61
  %66 = load %struct.rb_node**, %struct.rb_node*** %12, align 8, !dbg !2778
  %67 = load %struct.rb_node*, %struct.rb_node** %66, align 8, !dbg !2781
  %68 = icmp ne %struct.rb_node* %67, null, !dbg !2782
  br i1 %68, label %69, label %77, !dbg !2782

; <label>:69:                                     ; preds = %65
  call void @llvm.dbg.declare(metadata %struct.rb_node** %15, metadata !2783, metadata !298), !dbg !2785
  %70 = load %struct.rb_node**, %struct.rb_node*** %12, align 8, !dbg !2786
  %71 = load %struct.rb_node*, %struct.rb_node** %70, align 8, !dbg !2788
  store %struct.rb_node* %71, %struct.rb_node** %15, align 8, !dbg !2789
  %72 = load %struct.rb_node*, %struct.rb_node** %15, align 8, !dbg !2790
  %73 = bitcast %struct.rb_node* %72 to i8*, !dbg !2791
  %74 = getelementptr inbounds i8, i8* %73, i64 -72, !dbg !2792
  %75 = bitcast i8* %74 to %struct._thread*, !dbg !2793
  store %struct._thread* %75, %struct._thread** %16, align 8, !dbg !2794
  %76 = load %struct._thread*, %struct._thread** %16, align 8, !dbg !2795
  br label %78, !dbg !2796

; <label>:77:                                     ; preds = %65
  br label %78, !dbg !2797

; <label>:78:                                     ; preds = %77, %69
  %79 = phi %struct._thread* [ %76, %69 ], [ null, %77 ], !dbg !2799
  store %struct._thread* %79, %struct._thread** %14, align 8, !dbg !2801
  call void @llvm.dbg.declare(metadata i32* %17, metadata !2802, metadata !298), !dbg !2803
  %80 = load %struct._thread*, %struct._thread** %9, align 8, !dbg !2804
  %81 = load %struct._thread*, %struct._thread** %14, align 8, !dbg !2805
  %82 = call i32 @thread_timer_cmp(%struct._thread* %80, %struct._thread* %81), !dbg !2806
  store i32 %82, i32* %17, align 4, !dbg !2807
  %83 = load %struct.rb_node**, %struct.rb_node*** %12, align 8, !dbg !2808
  %84 = load %struct.rb_node*, %struct.rb_node** %83, align 8, !dbg !2809
  store %struct.rb_node* %84, %struct.rb_node** %13, align 8, !dbg !2810
  %85 = load i32, i32* %17, align 4, !dbg !2811
  %86 = icmp sle i32 %85, 0, !dbg !2812
  br i1 %86, label %87, label %91, !dbg !2811

; <label>:87:                                     ; preds = %78
  %88 = load %struct.rb_node**, %struct.rb_node*** %12, align 8, !dbg !2813
  %89 = load %struct.rb_node*, %struct.rb_node** %88, align 8, !dbg !2816
  %90 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %89, i32 0, i32 2, !dbg !2817
  store %struct.rb_node** %90, %struct.rb_node*** %12, align 8, !dbg !2818
  br label %99, !dbg !2819

; <label>:91:                                     ; preds = %78
  %92 = load i32, i32* %17, align 4, !dbg !2820
  %93 = icmp sgt i32 %92, 0, !dbg !2823
  br i1 %93, label %94, label %98, !dbg !2820

; <label>:94:                                     ; preds = %91
  %95 = load %struct.rb_node**, %struct.rb_node*** %12, align 8, !dbg !2824
  %96 = load %struct.rb_node*, %struct.rb_node** %95, align 8, !dbg !2826
  %97 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %96, i32 0, i32 1, !dbg !2827
  store %struct.rb_node** %97, %struct.rb_node*** %12, align 8, !dbg !2828
  br label %98, !dbg !2829

; <label>:98:                                     ; preds = %94, %91
  br label %99

; <label>:99:                                     ; preds = %98, %87
  br label %61, !dbg !2830, !llvm.loop !2832

; <label>:100:                                    ; preds = %61
  %101 = load %struct._thread*, %struct._thread** %9, align 8, !dbg !2833
  %102 = getelementptr inbounds %struct._thread, %struct._thread* %101, i32 0, i32 8, !dbg !2835
  %103 = bitcast %union.anon.0* %102 to %struct.rb_node*, !dbg !2835
  %104 = load %struct.rb_node*, %struct.rb_node** %13, align 8, !dbg !2836
  %105 = load %struct.rb_node**, %struct.rb_node*** %12, align 8, !dbg !2837
  call void @rb_link_node(%struct.rb_node* %103, %struct.rb_node* %104, %struct.rb_node** %105), !dbg !2838
  %106 = load %struct._thread*, %struct._thread** %9, align 8, !dbg !2839
  %107 = getelementptr inbounds %struct._thread, %struct._thread* %106, i32 0, i32 8, !dbg !2840
  %108 = bitcast %union.anon.0* %107 to %struct.rb_node*, !dbg !2840
  %109 = load %struct._thread_master*, %struct._thread_master** %5, align 8, !dbg !2841
  %110 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %109, i32 0, i32 2, !dbg !2842
  call void @rb_insert_color(%struct.rb_node* %108, %struct.rb_root* %110), !dbg !2843
  %111 = load %struct._thread*, %struct._thread** %9, align 8, !dbg !2845
  ret %struct._thread* %111, !dbg !2846
}

; Function Attrs: nounwind uwtable
define void @timer_thread_update_timeout(%struct._thread*, i64) #0 !dbg !2847 {
  %3 = alloca %struct._thread*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.timeval, align 8
  %6 = alloca %struct._thread*, align 8
  %7 = alloca %struct._thread*, align 8
  %8 = alloca %struct.rb_node*, align 8
  %9 = alloca %struct.rb_node*, align 8
  %10 = alloca %struct.timeval, align 8
  %11 = alloca %struct.timeval, align 8
  %12 = alloca %struct.rb_node*, align 8
  %13 = alloca %struct._thread*, align 8
  %14 = alloca %struct.rb_node*, align 8
  %15 = alloca %struct._thread*, align 8
  %16 = alloca %struct.rb_node**, align 8
  %17 = alloca %struct.rb_node*, align 8
  %18 = alloca %struct._thread*, align 8
  %19 = alloca %struct.rb_node*, align 8
  %20 = alloca %struct._thread*, align 8
  %21 = alloca i32, align 4
  store %struct._thread* %0, %struct._thread** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %3, metadata !2850, metadata !298), !dbg !2851
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !2852, metadata !298), !dbg !2853
  call void @llvm.dbg.declare(metadata %struct.timeval* %5, metadata !2854, metadata !298), !dbg !2855
  call void @llvm.dbg.declare(metadata %struct._thread** %6, metadata !2856, metadata !298), !dbg !2857
  call void @llvm.dbg.declare(metadata %struct._thread** %7, metadata !2858, metadata !298), !dbg !2859
  call void @llvm.dbg.declare(metadata %struct.rb_node** %8, metadata !2860, metadata !298), !dbg !2861
  call void @llvm.dbg.declare(metadata %struct.rb_node** %9, metadata !2862, metadata !298), !dbg !2863
  %22 = call { i64, i64 } @set_time_now(), !dbg !2864
  %23 = bitcast %struct.timeval* %10 to { i64, i64 }*, !dbg !2864
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %23, i32 0, i32 0, !dbg !2864
  %25 = extractvalue { i64, i64 } %22, 0, !dbg !2864
  store i64 %25, i64* %24, align 8, !dbg !2864
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %23, i32 0, i32 1, !dbg !2864
  %27 = extractvalue { i64, i64 } %22, 1, !dbg !2864
  store i64 %27, i64* %26, align 8, !dbg !2864
  %28 = load i64, i64* %4, align 8, !dbg !2865
  %29 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.timeval* @time_now to { i64, i64 }*), i32 0, i32 0), align 8, !dbg !2866
  %30 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.timeval* @time_now to { i64, i64 }*), i32 0, i32 1), align 8, !dbg !2866
  %31 = call { i64, i64 } @timer_add_long(i64 %29, i64 %30, i64 %28), !dbg !2866
  %32 = bitcast %struct.timeval* %11 to { i64, i64 }*, !dbg !2866
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 0, !dbg !2866
  %34 = extractvalue { i64, i64 } %31, 0, !dbg !2866
  store i64 %34, i64* %33, align 8, !dbg !2866
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 1, !dbg !2866
  %36 = extractvalue { i64, i64 } %31, 1, !dbg !2866
  store i64 %36, i64* %35, align 8, !dbg !2866
  %37 = bitcast %struct.timeval* %5 to i8*, !dbg !2866
  %38 = bitcast %struct.timeval* %11 to i8*, !dbg !2866
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %38, i64 16, i32 8, i1 false), !dbg !2867
  %39 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !2869
  %40 = getelementptr inbounds %struct._thread, %struct._thread* %39, i32 0, i32 5, !dbg !2871
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %40, i32 0, i32 0, !dbg !2872
  %42 = load i64, i64* %41, align 8, !dbg !2872
  %43 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0, !dbg !2872
  %44 = load i64, i64* %43, align 8, !dbg !2872
  %45 = icmp eq i64 %42, %44, !dbg !2873
  br i1 %45, label %46, label %54, !dbg !2874

; <label>:46:                                     ; preds = %2
  %47 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !2875
  %48 = getelementptr inbounds %struct._thread, %struct._thread* %47, i32 0, i32 5, !dbg !2877
  %49 = getelementptr inbounds %struct.timeval, %struct.timeval* %48, i32 0, i32 1, !dbg !2878
  %50 = load i64, i64* %49, align 8, !dbg !2878
  %51 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1, !dbg !2878
  %52 = load i64, i64* %51, align 8, !dbg !2878
  %53 = icmp eq i64 %50, %52, !dbg !2879
  br i1 %53, label %62, label %63, !dbg !2875

; <label>:54:                                     ; preds = %2
  %55 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !2880
  %56 = getelementptr inbounds %struct._thread, %struct._thread* %55, i32 0, i32 5, !dbg !2882
  %57 = getelementptr inbounds %struct.timeval, %struct.timeval* %56, i32 0, i32 0, !dbg !2883
  %58 = load i64, i64* %57, align 8, !dbg !2883
  %59 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0, !dbg !2883
  %60 = load i64, i64* %59, align 8, !dbg !2883
  %61 = icmp eq i64 %58, %60, !dbg !2884
  br i1 %61, label %62, label %63, !dbg !2884

; <label>:62:                                     ; preds = %54, %46
  br label %226, !dbg !2885

; <label>:63:                                     ; preds = %54, %46
  %64 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !2886
  %65 = getelementptr inbounds %struct._thread, %struct._thread* %64, i32 0, i32 5, !dbg !2887
  %66 = bitcast %struct.timeval* %65 to i8*, !dbg !2888
  %67 = bitcast %struct.timeval* %5 to i8*, !dbg !2888
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %67, i64 16, i32 8, i1 false), !dbg !2888
  %68 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !2889
  %69 = getelementptr inbounds %struct._thread, %struct._thread* %68, i32 0, i32 8, !dbg !2890
  %70 = bitcast %union.anon.0* %69 to %struct.rb_node*, !dbg !2890
  %71 = call %struct.rb_node* @rb_prev(%struct.rb_node* %70), !dbg !2891
  store %struct.rb_node* %71, %struct.rb_node** %8, align 8, !dbg !2892
  %72 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !2893
  %73 = getelementptr inbounds %struct._thread, %struct._thread* %72, i32 0, i32 8, !dbg !2894
  %74 = bitcast %union.anon.0* %73 to %struct.rb_node*, !dbg !2894
  %75 = call %struct.rb_node* @rb_next(%struct.rb_node* %74), !dbg !2895
  store %struct.rb_node* %75, %struct.rb_node** %9, align 8, !dbg !2896
  %76 = load %struct.rb_node*, %struct.rb_node** %8, align 8, !dbg !2897
  %77 = icmp ne %struct.rb_node* %76, null, !dbg !2897
  br i1 %77, label %82, label %78, !dbg !2899

; <label>:78:                                     ; preds = %63
  %79 = load %struct.rb_node*, %struct.rb_node** %9, align 8, !dbg !2900
  %80 = icmp ne %struct.rb_node* %79, null, !dbg !2900
  br i1 %80, label %82, label %81, !dbg !2902

; <label>:81:                                     ; preds = %78
  br label %226, !dbg !2903

; <label>:82:                                     ; preds = %78, %63
  %83 = load %struct.rb_node*, %struct.rb_node** %8, align 8, !dbg !2904
  %84 = icmp ne %struct.rb_node* %83, null, !dbg !2905
  br i1 %84, label %85, label %92, !dbg !2905

; <label>:85:                                     ; preds = %82
  call void @llvm.dbg.declare(metadata %struct.rb_node** %12, metadata !2906, metadata !298), !dbg !2908
  %86 = load %struct.rb_node*, %struct.rb_node** %8, align 8, !dbg !2909
  store %struct.rb_node* %86, %struct.rb_node** %12, align 8, !dbg !2911
  %87 = load %struct.rb_node*, %struct.rb_node** %12, align 8, !dbg !2912
  %88 = bitcast %struct.rb_node* %87 to i8*, !dbg !2913
  %89 = getelementptr inbounds i8, i8* %88, i64 -72, !dbg !2914
  %90 = bitcast i8* %89 to %struct._thread*, !dbg !2915
  store %struct._thread* %90, %struct._thread** %13, align 8, !dbg !2916
  %91 = load %struct._thread*, %struct._thread** %13, align 8, !dbg !2917
  br label %93, !dbg !2918

; <label>:92:                                     ; preds = %82
  br label %93, !dbg !2919

; <label>:93:                                     ; preds = %92, %85
  %94 = phi %struct._thread* [ %91, %85 ], [ null, %92 ], !dbg !2921
  store %struct._thread* %94, %struct._thread** %6, align 8, !dbg !2923
  %95 = load %struct.rb_node*, %struct.rb_node** %9, align 8, !dbg !2924
  %96 = icmp ne %struct.rb_node* %95, null, !dbg !2925
  br i1 %96, label %97, label %104, !dbg !2925

; <label>:97:                                     ; preds = %93
  call void @llvm.dbg.declare(metadata %struct.rb_node** %14, metadata !2926, metadata !298), !dbg !2928
  %98 = load %struct.rb_node*, %struct.rb_node** %9, align 8, !dbg !2929
  store %struct.rb_node* %98, %struct.rb_node** %14, align 8, !dbg !2931
  %99 = load %struct.rb_node*, %struct.rb_node** %14, align 8, !dbg !2932
  %100 = bitcast %struct.rb_node* %99 to i8*, !dbg !2933
  %101 = getelementptr inbounds i8, i8* %100, i64 -72, !dbg !2934
  %102 = bitcast i8* %101 to %struct._thread*, !dbg !2935
  store %struct._thread* %102, %struct._thread** %15, align 8, !dbg !2936
  %103 = load %struct._thread*, %struct._thread** %15, align 8, !dbg !2937
  br label %105, !dbg !2938

; <label>:104:                                    ; preds = %93
  br label %105, !dbg !2939

; <label>:105:                                    ; preds = %104, %97
  %106 = phi %struct._thread* [ %103, %97 ], [ null, %104 ], !dbg !2940
  store %struct._thread* %106, %struct._thread** %7, align 8, !dbg !2941
  %107 = load %struct._thread*, %struct._thread** %6, align 8, !dbg !2942
  %108 = icmp ne %struct._thread* %107, null, !dbg !2942
  br i1 %108, label %109, label %133, !dbg !2944

; <label>:109:                                    ; preds = %105
  %110 = load %struct._thread*, %struct._thread** %6, align 8, !dbg !2945
  %111 = getelementptr inbounds %struct._thread, %struct._thread* %110, i32 0, i32 5, !dbg !2947
  %112 = getelementptr inbounds %struct.timeval, %struct.timeval* %111, i32 0, i32 0, !dbg !2948
  %113 = load i64, i64* %112, align 8, !dbg !2948
  %114 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0, !dbg !2948
  %115 = load i64, i64* %114, align 8, !dbg !2948
  %116 = icmp eq i64 %113, %115, !dbg !2949
  br i1 %116, label %117, label %125, !dbg !2950

; <label>:117:                                    ; preds = %109
  %118 = load %struct._thread*, %struct._thread** %6, align 8, !dbg !2951
  %119 = getelementptr inbounds %struct._thread, %struct._thread* %118, i32 0, i32 5, !dbg !2953
  %120 = getelementptr inbounds %struct.timeval, %struct.timeval* %119, i32 0, i32 1, !dbg !2954
  %121 = load i64, i64* %120, align 8, !dbg !2954
  %122 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1, !dbg !2954
  %123 = load i64, i64* %122, align 8, !dbg !2954
  %124 = icmp sle i64 %121, %123, !dbg !2955
  br i1 %124, label %133, label %161, !dbg !2951

; <label>:125:                                    ; preds = %109
  %126 = load %struct._thread*, %struct._thread** %6, align 8, !dbg !2956
  %127 = getelementptr inbounds %struct._thread, %struct._thread* %126, i32 0, i32 5, !dbg !2958
  %128 = getelementptr inbounds %struct.timeval, %struct.timeval* %127, i32 0, i32 0, !dbg !2959
  %129 = load i64, i64* %128, align 8, !dbg !2959
  %130 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0, !dbg !2959
  %131 = load i64, i64* %130, align 8, !dbg !2959
  %132 = icmp sle i64 %129, %131, !dbg !2960
  br i1 %132, label %133, label %161, !dbg !2961

; <label>:133:                                    ; preds = %125, %117, %105
  %134 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !2962
  %135 = icmp ne %struct._thread* %134, null, !dbg !2962
  br i1 %135, label %136, label %160, !dbg !2963

; <label>:136:                                    ; preds = %133
  %137 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !2964
  %138 = getelementptr inbounds %struct._thread, %struct._thread* %137, i32 0, i32 5, !dbg !2965
  %139 = getelementptr inbounds %struct.timeval, %struct.timeval* %138, i32 0, i32 0, !dbg !2966
  %140 = load i64, i64* %139, align 8, !dbg !2966
  %141 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0, !dbg !2966
  %142 = load i64, i64* %141, align 8, !dbg !2966
  %143 = icmp eq i64 %140, %142, !dbg !2967
  br i1 %143, label %144, label %152, !dbg !2968

; <label>:144:                                    ; preds = %136
  %145 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !2970
  %146 = getelementptr inbounds %struct._thread, %struct._thread* %145, i32 0, i32 5, !dbg !2971
  %147 = getelementptr inbounds %struct.timeval, %struct.timeval* %146, i32 0, i32 1, !dbg !2972
  %148 = load i64, i64* %147, align 8, !dbg !2972
  %149 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1, !dbg !2972
  %150 = load i64, i64* %149, align 8, !dbg !2972
  %151 = icmp sge i64 %148, %150, !dbg !2973
  br i1 %151, label %160, label %161, !dbg !2970

; <label>:152:                                    ; preds = %136
  %153 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !2974
  %154 = getelementptr inbounds %struct._thread, %struct._thread* %153, i32 0, i32 5, !dbg !2975
  %155 = getelementptr inbounds %struct.timeval, %struct.timeval* %154, i32 0, i32 0, !dbg !2976
  %156 = load i64, i64* %155, align 8, !dbg !2976
  %157 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0, !dbg !2976
  %158 = load i64, i64* %157, align 8, !dbg !2976
  %159 = icmp sge i64 %156, %158, !dbg !2977
  br i1 %159, label %160, label %161, !dbg !2978

; <label>:160:                                    ; preds = %152, %144, %133
  br label %226, !dbg !2980

; <label>:161:                                    ; preds = %152, %144, %125, %117
  %162 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !2981
  %163 = getelementptr inbounds %struct._thread, %struct._thread* %162, i32 0, i32 8, !dbg !2982
  %164 = bitcast %union.anon.0* %163 to %struct.rb_node*, !dbg !2982
  %165 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !2983
  %166 = getelementptr inbounds %struct._thread, %struct._thread* %165, i32 0, i32 2, !dbg !2984
  %167 = load %struct._thread_master*, %struct._thread_master** %166, align 8, !dbg !2984
  %168 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %167, i32 0, i32 2, !dbg !2985
  call void @rb_erase(%struct.rb_node* %164, %struct.rb_root* %168), !dbg !2986
  call void @llvm.dbg.declare(metadata %struct.rb_node*** %16, metadata !2987, metadata !298), !dbg !2989
  %169 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !2990
  %170 = getelementptr inbounds %struct._thread, %struct._thread* %169, i32 0, i32 2, !dbg !2991
  %171 = load %struct._thread_master*, %struct._thread_master** %170, align 8, !dbg !2991
  %172 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %171, i32 0, i32 2, !dbg !2992
  %173 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %172, i32 0, i32 0, !dbg !2993
  store %struct.rb_node** %173, %struct.rb_node*** %16, align 8, !dbg !2989
  call void @llvm.dbg.declare(metadata %struct.rb_node** %17, metadata !2994, metadata !298), !dbg !2995
  store %struct.rb_node* null, %struct.rb_node** %17, align 8, !dbg !2995
  call void @llvm.dbg.declare(metadata %struct._thread** %18, metadata !2996, metadata !298), !dbg !2997
  br label %174, !dbg !2990

; <label>:174:                                    ; preds = %212, %161
  %175 = load %struct.rb_node**, %struct.rb_node*** %16, align 8, !dbg !2998
  %176 = load %struct.rb_node*, %struct.rb_node** %175, align 8, !dbg !3000
  %177 = icmp ne %struct.rb_node* %176, null, !dbg !3001
  br i1 %177, label %178, label %213, !dbg !3001

; <label>:178:                                    ; preds = %174
  %179 = load %struct.rb_node**, %struct.rb_node*** %16, align 8, !dbg !3002
  %180 = load %struct.rb_node*, %struct.rb_node** %179, align 8, !dbg !3005
  %181 = icmp ne %struct.rb_node* %180, null, !dbg !3006
  br i1 %181, label %182, label %190, !dbg !3006

; <label>:182:                                    ; preds = %178
  call void @llvm.dbg.declare(metadata %struct.rb_node** %19, metadata !3007, metadata !298), !dbg !3009
  %183 = load %struct.rb_node**, %struct.rb_node*** %16, align 8, !dbg !3010
  %184 = load %struct.rb_node*, %struct.rb_node** %183, align 8, !dbg !3012
  store %struct.rb_node* %184, %struct.rb_node** %19, align 8, !dbg !3013
  %185 = load %struct.rb_node*, %struct.rb_node** %19, align 8, !dbg !3014
  %186 = bitcast %struct.rb_node* %185 to i8*, !dbg !3015
  %187 = getelementptr inbounds i8, i8* %186, i64 -72, !dbg !3016
  %188 = bitcast i8* %187 to %struct._thread*, !dbg !3017
  store %struct._thread* %188, %struct._thread** %20, align 8, !dbg !3018
  %189 = load %struct._thread*, %struct._thread** %20, align 8, !dbg !3019
  br label %191, !dbg !3020

; <label>:190:                                    ; preds = %178
  br label %191, !dbg !3021

; <label>:191:                                    ; preds = %190, %182
  %192 = phi %struct._thread* [ %189, %182 ], [ null, %190 ], !dbg !3023
  store %struct._thread* %192, %struct._thread** %18, align 8, !dbg !3025
  call void @llvm.dbg.declare(metadata i32* %21, metadata !3026, metadata !298), !dbg !3027
  %193 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !3028
  %194 = load %struct._thread*, %struct._thread** %18, align 8, !dbg !3029
  %195 = call i32 @thread_timer_cmp(%struct._thread* %193, %struct._thread* %194), !dbg !3030
  store i32 %195, i32* %21, align 4, !dbg !3031
  %196 = load %struct.rb_node**, %struct.rb_node*** %16, align 8, !dbg !3032
  %197 = load %struct.rb_node*, %struct.rb_node** %196, align 8, !dbg !3033
  store %struct.rb_node* %197, %struct.rb_node** %17, align 8, !dbg !3034
  %198 = load i32, i32* %21, align 4, !dbg !3035
  %199 = icmp sle i32 %198, 0, !dbg !3036
  br i1 %199, label %200, label %204, !dbg !3035

; <label>:200:                                    ; preds = %191
  %201 = load %struct.rb_node**, %struct.rb_node*** %16, align 8, !dbg !3037
  %202 = load %struct.rb_node*, %struct.rb_node** %201, align 8, !dbg !3040
  %203 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %202, i32 0, i32 2, !dbg !3041
  store %struct.rb_node** %203, %struct.rb_node*** %16, align 8, !dbg !3042
  br label %212, !dbg !3043

; <label>:204:                                    ; preds = %191
  %205 = load i32, i32* %21, align 4, !dbg !3044
  %206 = icmp sgt i32 %205, 0, !dbg !3047
  br i1 %206, label %207, label %211, !dbg !3044

; <label>:207:                                    ; preds = %204
  %208 = load %struct.rb_node**, %struct.rb_node*** %16, align 8, !dbg !3048
  %209 = load %struct.rb_node*, %struct.rb_node** %208, align 8, !dbg !3050
  %210 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %209, i32 0, i32 1, !dbg !3051
  store %struct.rb_node** %210, %struct.rb_node*** %16, align 8, !dbg !3052
  br label %211, !dbg !3053

; <label>:211:                                    ; preds = %207, %204
  br label %212

; <label>:212:                                    ; preds = %211, %200
  br label %174, !dbg !3054, !llvm.loop !3056

; <label>:213:                                    ; preds = %174
  %214 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !3057
  %215 = getelementptr inbounds %struct._thread, %struct._thread* %214, i32 0, i32 8, !dbg !3059
  %216 = bitcast %union.anon.0* %215 to %struct.rb_node*, !dbg !3059
  %217 = load %struct.rb_node*, %struct.rb_node** %17, align 8, !dbg !3060
  %218 = load %struct.rb_node**, %struct.rb_node*** %16, align 8, !dbg !3061
  call void @rb_link_node(%struct.rb_node* %216, %struct.rb_node* %217, %struct.rb_node** %218), !dbg !3062
  %219 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !3063
  %220 = getelementptr inbounds %struct._thread, %struct._thread* %219, i32 0, i32 8, !dbg !3064
  %221 = bitcast %union.anon.0* %220 to %struct.rb_node*, !dbg !3064
  %222 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !3065
  %223 = getelementptr inbounds %struct._thread, %struct._thread* %222, i32 0, i32 2, !dbg !3066
  %224 = load %struct._thread_master*, %struct._thread_master** %223, align 8, !dbg !3066
  %225 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %224, i32 0, i32 2, !dbg !3067
  call void @rb_insert_color(%struct.rb_node* %221, %struct.rb_root* %225), !dbg !3068
  br label %226, !dbg !3070

; <label>:226:                                    ; preds = %213, %160, %81, %62
  ret void, !dbg !3071
}

declare %struct.rb_node* @rb_prev(%struct.rb_node*) #2

declare %struct.rb_node* @rb_next(%struct.rb_node*) #2

declare void @rb_erase(%struct.rb_node*, %struct.rb_root*) #2

; Function Attrs: nounwind uwtable
define %struct._thread* @thread_add_timer_shutdown(%struct._thread_master*, i32 (%struct._thread*)*, i8*, i64) #0 !dbg !3072 {
  %5 = alloca %struct._thread_master*, align 8
  %6 = alloca i32 (%struct._thread*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct._thread*, align 8
  store %struct._thread_master* %0, %struct._thread_master** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._thread_master** %5, metadata !3073, metadata !298), !dbg !3074
  store i32 (%struct._thread*)* %1, i32 (%struct._thread*)** %6, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct._thread*)** %6, metadata !3075, metadata !298), !dbg !3076
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3077, metadata !298), !dbg !3078
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3079, metadata !298), !dbg !3080
  call void @llvm.dbg.declare(metadata %struct._thread** %9, metadata !3081, metadata !298), !dbg !3082
  %10 = load %struct._thread_master*, %struct._thread_master** %5, align 8, !dbg !3083
  %11 = load i32 (%struct._thread*)*, i32 (%struct._thread*)** %6, align 8, !dbg !3084
  %12 = load i8*, i8** %7, align 8, !dbg !3085
  %13 = load i64, i64* %8, align 8, !dbg !3086
  %14 = call %struct._thread* @thread_add_timer(%struct._thread_master* %10, i32 (%struct._thread*)* %11, i8* %12, i64 %13), !dbg !3087
  store %struct._thread* %14, %struct._thread** %9, align 8, !dbg !3082
  %15 = load %struct._thread*, %struct._thread** %9, align 8, !dbg !3088
  %16 = getelementptr inbounds %struct._thread, %struct._thread* %15, i32 0, i32 1, !dbg !3089
  store i32 3, i32* %16, align 8, !dbg !3090
  %17 = load %struct._thread*, %struct._thread** %9, align 8, !dbg !3091
  ret %struct._thread* %17, !dbg !3092
}

; Function Attrs: nounwind uwtable
define %struct._thread* @thread_add_child(%struct._thread_master*, i32 (%struct._thread*)*, i8*, i32, i64) #0 !dbg !3093 {
  %6 = alloca %struct._thread_master*, align 8
  %7 = alloca i32 (%struct._thread*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct._thread*, align 8
  %12 = alloca %struct.timeval, align 8
  %13 = alloca %struct.timeval, align 8
  %14 = alloca %struct.rb_node**, align 8
  %15 = alloca %struct.rb_node*, align 8
  %16 = alloca %struct._thread*, align 8
  %17 = alloca %struct.rb_node*, align 8
  %18 = alloca %struct._thread*, align 8
  %19 = alloca i32, align 4
  store %struct._thread_master* %0, %struct._thread_master** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._thread_master** %6, metadata !3096, metadata !298), !dbg !3097
  store i32 (%struct._thread*)* %1, i32 (%struct._thread*)** %7, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct._thread*)** %7, metadata !3098, metadata !298), !dbg !3099
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3100, metadata !298), !dbg !3101
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !3102, metadata !298), !dbg !3103
  store i64 %4, i64* %10, align 8
  call void @llvm.dbg.declare(metadata i64* %10, metadata !3104, metadata !298), !dbg !3105
  call void @llvm.dbg.declare(metadata %struct._thread** %11, metadata !3106, metadata !298), !dbg !3107
  %20 = load %struct._thread_master*, %struct._thread_master** %6, align 8, !dbg !3108
  %21 = call %struct._thread* @thread_new(%struct._thread_master* %20), !dbg !3109
  store %struct._thread* %21, %struct._thread** %11, align 8, !dbg !3110
  %22 = load %struct._thread*, %struct._thread** %11, align 8, !dbg !3111
  %23 = getelementptr inbounds %struct._thread, %struct._thread* %22, i32 0, i32 1, !dbg !3112
  store i32 5, i32* %23, align 8, !dbg !3113
  %24 = load %struct._thread_master*, %struct._thread_master** %6, align 8, !dbg !3114
  %25 = load %struct._thread*, %struct._thread** %11, align 8, !dbg !3115
  %26 = getelementptr inbounds %struct._thread, %struct._thread* %25, i32 0, i32 2, !dbg !3116
  store %struct._thread_master* %24, %struct._thread_master** %26, align 8, !dbg !3117
  %27 = load i32 (%struct._thread*)*, i32 (%struct._thread*)** %7, align 8, !dbg !3118
  %28 = load %struct._thread*, %struct._thread** %11, align 8, !dbg !3119
  %29 = getelementptr inbounds %struct._thread, %struct._thread* %28, i32 0, i32 3, !dbg !3120
  store i32 (%struct._thread*)* %27, i32 (%struct._thread*)** %29, align 8, !dbg !3121
  %30 = load i8*, i8** %8, align 8, !dbg !3122
  %31 = load %struct._thread*, %struct._thread** %11, align 8, !dbg !3123
  %32 = getelementptr inbounds %struct._thread, %struct._thread* %31, i32 0, i32 4, !dbg !3124
  store i8* %30, i8** %32, align 8, !dbg !3125
  %33 = load i32, i32* %9, align 4, !dbg !3126
  %34 = load %struct._thread*, %struct._thread** %11, align 8, !dbg !3127
  %35 = getelementptr inbounds %struct._thread, %struct._thread* %34, i32 0, i32 6, !dbg !3128
  %36 = bitcast %union.anon* %35 to %struct.anon*, !dbg !3129
  %37 = getelementptr inbounds %struct.anon, %struct.anon* %36, i32 0, i32 0, !dbg !3130
  store i32 %33, i32* %37, align 8, !dbg !3131
  %38 = load %struct._thread*, %struct._thread** %11, align 8, !dbg !3132
  %39 = getelementptr inbounds %struct._thread, %struct._thread* %38, i32 0, i32 6, !dbg !3133
  %40 = bitcast %union.anon* %39 to %struct.anon*, !dbg !3134
  %41 = getelementptr inbounds %struct.anon, %struct.anon* %40, i32 0, i32 1, !dbg !3135
  store i32 0, i32* %41, align 4, !dbg !3136
  %42 = load i64, i64* %10, align 8, !dbg !3137
  %43 = icmp eq i64 %42, -1, !dbg !3139
  br i1 %43, label %44, label %48, !dbg !3140

; <label>:44:                                     ; preds = %5
  %45 = load %struct._thread*, %struct._thread** %11, align 8, !dbg !3141
  %46 = getelementptr inbounds %struct._thread, %struct._thread* %45, i32 0, i32 5, !dbg !3142
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %46, i32 0, i32 0, !dbg !3143
  store i64 -9223372036854775808, i64* %47, align 8, !dbg !3144
  br label %68, !dbg !3141

; <label>:48:                                     ; preds = %5
  %49 = call { i64, i64 } @set_time_now(), !dbg !3145
  %50 = bitcast %struct.timeval* %12 to { i64, i64 }*, !dbg !3145
  %51 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %50, i32 0, i32 0, !dbg !3145
  %52 = extractvalue { i64, i64 } %49, 0, !dbg !3145
  store i64 %52, i64* %51, align 8, !dbg !3145
  %53 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %50, i32 0, i32 1, !dbg !3145
  %54 = extractvalue { i64, i64 } %49, 1, !dbg !3145
  store i64 %54, i64* %53, align 8, !dbg !3145
  %55 = load %struct._thread*, %struct._thread** %11, align 8, !dbg !3147
  %56 = getelementptr inbounds %struct._thread, %struct._thread* %55, i32 0, i32 5, !dbg !3148
  %57 = load i64, i64* %10, align 8, !dbg !3149
  %58 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.timeval* @time_now to { i64, i64 }*), i32 0, i32 0), align 8, !dbg !3150
  %59 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.timeval* @time_now to { i64, i64 }*), i32 0, i32 1), align 8, !dbg !3150
  %60 = call { i64, i64 } @timer_add_long(i64 %58, i64 %59, i64 %57), !dbg !3150
  %61 = bitcast %struct.timeval* %13 to { i64, i64 }*, !dbg !3150
  %62 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %61, i32 0, i32 0, !dbg !3150
  %63 = extractvalue { i64, i64 } %60, 0, !dbg !3150
  store i64 %63, i64* %62, align 8, !dbg !3150
  %64 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %61, i32 0, i32 1, !dbg !3150
  %65 = extractvalue { i64, i64 } %60, 1, !dbg !3150
  store i64 %65, i64* %64, align 8, !dbg !3150
  %66 = bitcast %struct.timeval* %56 to i8*, !dbg !3150
  %67 = bitcast %struct.timeval* %13 to i8*, !dbg !3150
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %66, i8* %67, i64 16, i32 8, i1 false), !dbg !3151
  br label %68

; <label>:68:                                     ; preds = %48, %44
  call void @llvm.dbg.declare(metadata %struct.rb_node*** %14, metadata !3153, metadata !298), !dbg !3155
  %69 = load %struct._thread_master*, %struct._thread_master** %6, align 8, !dbg !3156
  %70 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %69, i32 0, i32 3, !dbg !3157
  %71 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %70, i32 0, i32 0, !dbg !3158
  store %struct.rb_node** %71, %struct.rb_node*** %14, align 8, !dbg !3155
  call void @llvm.dbg.declare(metadata %struct.rb_node** %15, metadata !3159, metadata !298), !dbg !3160
  store %struct.rb_node* null, %struct.rb_node** %15, align 8, !dbg !3160
  call void @llvm.dbg.declare(metadata %struct._thread** %16, metadata !3161, metadata !298), !dbg !3162
  br label %72, !dbg !3156

; <label>:72:                                     ; preds = %110, %68
  %73 = load %struct.rb_node**, %struct.rb_node*** %14, align 8, !dbg !3163
  %74 = load %struct.rb_node*, %struct.rb_node** %73, align 8, !dbg !3165
  %75 = icmp ne %struct.rb_node* %74, null, !dbg !3166
  br i1 %75, label %76, label %111, !dbg !3166

; <label>:76:                                     ; preds = %72
  %77 = load %struct.rb_node**, %struct.rb_node*** %14, align 8, !dbg !3167
  %78 = load %struct.rb_node*, %struct.rb_node** %77, align 8, !dbg !3170
  %79 = icmp ne %struct.rb_node* %78, null, !dbg !3171
  br i1 %79, label %80, label %88, !dbg !3171

; <label>:80:                                     ; preds = %76
  call void @llvm.dbg.declare(metadata %struct.rb_node** %17, metadata !3172, metadata !298), !dbg !3174
  %81 = load %struct.rb_node**, %struct.rb_node*** %14, align 8, !dbg !3175
  %82 = load %struct.rb_node*, %struct.rb_node** %81, align 8, !dbg !3177
  store %struct.rb_node* %82, %struct.rb_node** %17, align 8, !dbg !3178
  %83 = load %struct.rb_node*, %struct.rb_node** %17, align 8, !dbg !3179
  %84 = bitcast %struct.rb_node* %83 to i8*, !dbg !3180
  %85 = getelementptr inbounds i8, i8* %84, i64 -72, !dbg !3181
  %86 = bitcast i8* %85 to %struct._thread*, !dbg !3182
  store %struct._thread* %86, %struct._thread** %18, align 8, !dbg !3183
  %87 = load %struct._thread*, %struct._thread** %18, align 8, !dbg !3184
  br label %89, !dbg !3185

; <label>:88:                                     ; preds = %76
  br label %89, !dbg !3186

; <label>:89:                                     ; preds = %88, %80
  %90 = phi %struct._thread* [ %87, %80 ], [ null, %88 ], !dbg !3188
  store %struct._thread* %90, %struct._thread** %16, align 8, !dbg !3190
  call void @llvm.dbg.declare(metadata i32* %19, metadata !3191, metadata !298), !dbg !3192
  %91 = load %struct._thread*, %struct._thread** %11, align 8, !dbg !3193
  %92 = load %struct._thread*, %struct._thread** %16, align 8, !dbg !3194
  %93 = call i32 @thread_timer_cmp(%struct._thread* %91, %struct._thread* %92), !dbg !3195
  store i32 %93, i32* %19, align 4, !dbg !3196
  %94 = load %struct.rb_node**, %struct.rb_node*** %14, align 8, !dbg !3197
  %95 = load %struct.rb_node*, %struct.rb_node** %94, align 8, !dbg !3198
  store %struct.rb_node* %95, %struct.rb_node** %15, align 8, !dbg !3199
  %96 = load i32, i32* %19, align 4, !dbg !3200
  %97 = icmp sle i32 %96, 0, !dbg !3201
  br i1 %97, label %98, label %102, !dbg !3200

; <label>:98:                                     ; preds = %89
  %99 = load %struct.rb_node**, %struct.rb_node*** %14, align 8, !dbg !3202
  %100 = load %struct.rb_node*, %struct.rb_node** %99, align 8, !dbg !3205
  %101 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %100, i32 0, i32 2, !dbg !3206
  store %struct.rb_node** %101, %struct.rb_node*** %14, align 8, !dbg !3207
  br label %110, !dbg !3208

; <label>:102:                                    ; preds = %89
  %103 = load i32, i32* %19, align 4, !dbg !3209
  %104 = icmp sgt i32 %103, 0, !dbg !3212
  br i1 %104, label %105, label %109, !dbg !3209

; <label>:105:                                    ; preds = %102
  %106 = load %struct.rb_node**, %struct.rb_node*** %14, align 8, !dbg !3213
  %107 = load %struct.rb_node*, %struct.rb_node** %106, align 8, !dbg !3215
  %108 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %107, i32 0, i32 1, !dbg !3216
  store %struct.rb_node** %108, %struct.rb_node*** %14, align 8, !dbg !3217
  br label %109, !dbg !3218

; <label>:109:                                    ; preds = %105, %102
  br label %110

; <label>:110:                                    ; preds = %109, %98
  br label %72, !dbg !3219, !llvm.loop !3221

; <label>:111:                                    ; preds = %72
  %112 = load %struct._thread*, %struct._thread** %11, align 8, !dbg !3222
  %113 = getelementptr inbounds %struct._thread, %struct._thread* %112, i32 0, i32 8, !dbg !3224
  %114 = bitcast %union.anon.0* %113 to %struct.rb_node*, !dbg !3224
  %115 = load %struct.rb_node*, %struct.rb_node** %15, align 8, !dbg !3225
  %116 = load %struct.rb_node**, %struct.rb_node*** %14, align 8, !dbg !3226
  call void @rb_link_node(%struct.rb_node* %114, %struct.rb_node* %115, %struct.rb_node** %116), !dbg !3227
  %117 = load %struct._thread*, %struct._thread** %11, align 8, !dbg !3228
  %118 = getelementptr inbounds %struct._thread, %struct._thread* %117, i32 0, i32 8, !dbg !3229
  %119 = bitcast %union.anon.0* %118 to %struct.rb_node*, !dbg !3229
  %120 = load %struct._thread_master*, %struct._thread_master** %6, align 8, !dbg !3230
  %121 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %120, i32 0, i32 3, !dbg !3231
  call void @rb_insert_color(%struct.rb_node* %119, %struct.rb_root* %121), !dbg !3232
  %122 = load void (%struct._thread*)*, void (%struct._thread*)** @child_adder, align 8, !dbg !3234
  %123 = icmp ne void (%struct._thread*)* %122, null, !dbg !3234
  br i1 %123, label %124, label %127, !dbg !3236

; <label>:124:                                    ; preds = %111
  %125 = load void (%struct._thread*)*, void (%struct._thread*)** @child_adder, align 8, !dbg !3237
  %126 = load %struct._thread*, %struct._thread** %11, align 8, !dbg !3238
  call void %125(%struct._thread* %126), !dbg !3237
  br label %127, !dbg !3237

; <label>:127:                                    ; preds = %124, %111
  %128 = load %struct._thread*, %struct._thread** %11, align 8, !dbg !3239
  ret %struct._thread* %128, !dbg !3240
}

; Function Attrs: nounwind uwtable
define void @thread_children_reschedule(%struct._thread_master*, i32 (%struct._thread*)*, i64) #0 !dbg !3241 {
  %4 = alloca %struct._thread_master*, align 8
  %5 = alloca i32 (%struct._thread*)*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct._thread*, align 8
  %8 = alloca %struct.timeval, align 8
  %9 = alloca %struct.rb_node*, align 8
  %10 = alloca %struct._thread*, align 8
  %11 = alloca %struct.timeval, align 8
  %12 = alloca %struct.rb_node*, align 8
  %13 = alloca %struct._thread*, align 8
  store %struct._thread_master* %0, %struct._thread_master** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._thread_master** %4, metadata !3244, metadata !298), !dbg !3245
  store i32 (%struct._thread*)* %1, i32 (%struct._thread*)** %5, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct._thread*)** %5, metadata !3246, metadata !298), !dbg !3247
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !3248, metadata !298), !dbg !3249
  call void @llvm.dbg.declare(metadata %struct._thread** %7, metadata !3250, metadata !298), !dbg !3251
  %14 = call { i64, i64 } @set_time_now(), !dbg !3252
  %15 = bitcast %struct.timeval* %8 to { i64, i64 }*, !dbg !3252
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 0, !dbg !3252
  %17 = extractvalue { i64, i64 } %14, 0, !dbg !3252
  store i64 %17, i64* %16, align 8, !dbg !3252
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %15, i32 0, i32 1, !dbg !3252
  %19 = extractvalue { i64, i64 } %14, 1, !dbg !3252
  store i64 %19, i64* %18, align 8, !dbg !3252
  %20 = load %struct._thread_master*, %struct._thread_master** %4, align 8, !dbg !3253
  %21 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %20, i32 0, i32 3, !dbg !3255
  %22 = call %struct.rb_node* @rb_first(%struct.rb_root* %21), !dbg !3256
  %23 = icmp ne %struct.rb_node* %22, null, !dbg !3256
  br i1 %23, label %24, label %33, !dbg !3257

; <label>:24:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.rb_node** %9, metadata !3258, metadata !298), !dbg !3260
  %25 = load %struct._thread_master*, %struct._thread_master** %4, align 8, !dbg !3261
  %26 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %25, i32 0, i32 3, !dbg !3263
  %27 = call %struct.rb_node* @rb_first(%struct.rb_root* %26), !dbg !3264
  store %struct.rb_node* %27, %struct.rb_node** %9, align 8, !dbg !3265
  %28 = load %struct.rb_node*, %struct.rb_node** %9, align 8, !dbg !3266
  %29 = bitcast %struct.rb_node* %28 to i8*, !dbg !3267
  %30 = getelementptr inbounds i8, i8* %29, i64 -72, !dbg !3268
  %31 = bitcast i8* %30 to %struct._thread*, !dbg !3269
  store %struct._thread* %31, %struct._thread** %10, align 8, !dbg !3270
  %32 = load %struct._thread*, %struct._thread** %10, align 8, !dbg !3271
  br label %34, !dbg !3272

; <label>:33:                                     ; preds = %3
  br label %34, !dbg !3273

; <label>:34:                                     ; preds = %33, %24
  %35 = phi %struct._thread* [ %32, %24 ], [ null, %33 ], !dbg !3275
  store %struct._thread* %35, %struct._thread** %7, align 8, !dbg !3277
  br label %36, !dbg !3278

; <label>:36:                                     ; preds = %73, %34
  %37 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !3279
  %38 = icmp ne %struct._thread* %37, null, !dbg !3282
  br i1 %38, label %39, label %75, !dbg !3282

; <label>:39:                                     ; preds = %36
  %40 = load i32 (%struct._thread*)*, i32 (%struct._thread*)** %5, align 8, !dbg !3283
  %41 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !3285
  %42 = getelementptr inbounds %struct._thread, %struct._thread* %41, i32 0, i32 3, !dbg !3286
  store i32 (%struct._thread*)* %40, i32 (%struct._thread*)** %42, align 8, !dbg !3287
  %43 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !3288
  %44 = getelementptr inbounds %struct._thread, %struct._thread* %43, i32 0, i32 5, !dbg !3289
  %45 = load i64, i64* %6, align 8, !dbg !3290
  %46 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.timeval* @time_now to { i64, i64 }*), i32 0, i32 0), align 8, !dbg !3291
  %47 = load i64, i64* getelementptr inbounds ({ i64, i64 }, { i64, i64 }* bitcast (%struct.timeval* @time_now to { i64, i64 }*), i32 0, i32 1), align 8, !dbg !3291
  %48 = call { i64, i64 } @timer_add_long(i64 %46, i64 %47, i64 %45), !dbg !3291
  %49 = bitcast %struct.timeval* %11 to { i64, i64 }*, !dbg !3291
  %50 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %49, i32 0, i32 0, !dbg !3291
  %51 = extractvalue { i64, i64 } %48, 0, !dbg !3291
  store i64 %51, i64* %50, align 8, !dbg !3291
  %52 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %49, i32 0, i32 1, !dbg !3291
  %53 = extractvalue { i64, i64 } %48, 1, !dbg !3291
  store i64 %53, i64* %52, align 8, !dbg !3291
  %54 = bitcast %struct.timeval* %44 to i8*, !dbg !3291
  %55 = bitcast %struct.timeval* %11 to i8*, !dbg !3291
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %54, i8* %55, i64 16, i32 8, i1 false), !dbg !3292
  br label %56, !dbg !3294

; <label>:56:                                     ; preds = %39
  %57 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !3295
  %58 = getelementptr inbounds %struct._thread, %struct._thread* %57, i32 0, i32 8, !dbg !3297
  %59 = bitcast %union.anon.0* %58 to %struct.rb_node*, !dbg !3297
  %60 = call %struct.rb_node* @rb_next(%struct.rb_node* %59), !dbg !3298
  %61 = icmp ne %struct.rb_node* %60, null, !dbg !3298
  br i1 %61, label %62, label %72, !dbg !3299

; <label>:62:                                     ; preds = %56
  call void @llvm.dbg.declare(metadata %struct.rb_node** %12, metadata !3300, metadata !298), !dbg !3302
  %63 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !3303
  %64 = getelementptr inbounds %struct._thread, %struct._thread* %63, i32 0, i32 8, !dbg !3305
  %65 = bitcast %union.anon.0* %64 to %struct.rb_node*, !dbg !3305
  %66 = call %struct.rb_node* @rb_next(%struct.rb_node* %65), !dbg !3306
  store %struct.rb_node* %66, %struct.rb_node** %12, align 8, !dbg !3307
  %67 = load %struct.rb_node*, %struct.rb_node** %12, align 8, !dbg !3308
  %68 = bitcast %struct.rb_node* %67 to i8*, !dbg !3309
  %69 = getelementptr inbounds i8, i8* %68, i64 -72, !dbg !3310
  %70 = bitcast i8* %69 to %struct._thread*, !dbg !3311
  store %struct._thread* %70, %struct._thread** %13, align 8, !dbg !3312
  %71 = load %struct._thread*, %struct._thread** %13, align 8, !dbg !3313
  br label %73, !dbg !3314

; <label>:72:                                     ; preds = %56
  br label %73, !dbg !3315

; <label>:73:                                     ; preds = %72, %62
  %74 = phi %struct._thread* [ %71, %62 ], [ null, %72 ], !dbg !3317
  store %struct._thread* %74, %struct._thread** %7, align 8, !dbg !3319
  br label %36, !dbg !3320, !llvm.loop !3321

; <label>:75:                                     ; preds = %36
  ret void, !dbg !3323
}

declare %struct.rb_node* @rb_first(%struct.rb_root*) #2

; Function Attrs: nounwind uwtable
define %struct._thread* @thread_add_event(%struct._thread_master*, i32 (%struct._thread*)*, i8*, i32) #0 !dbg !3324 {
  %5 = alloca %struct._thread_master*, align 8
  %6 = alloca i32 (%struct._thread*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct._thread*, align 8
  store %struct._thread_master* %0, %struct._thread_master** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._thread_master** %5, metadata !3327, metadata !298), !dbg !3328
  store i32 (%struct._thread*)* %1, i32 (%struct._thread*)** %6, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct._thread*)** %6, metadata !3329, metadata !298), !dbg !3330
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3331, metadata !298), !dbg !3332
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3333, metadata !298), !dbg !3334
  call void @llvm.dbg.declare(metadata %struct._thread** %9, metadata !3335, metadata !298), !dbg !3336
  %10 = load %struct._thread_master*, %struct._thread_master** %5, align 8, !dbg !3337
  %11 = call %struct._thread* @thread_new(%struct._thread_master* %10), !dbg !3338
  store %struct._thread* %11, %struct._thread** %9, align 8, !dbg !3339
  %12 = load %struct._thread*, %struct._thread** %9, align 8, !dbg !3340
  %13 = getelementptr inbounds %struct._thread, %struct._thread* %12, i32 0, i32 1, !dbg !3341
  store i32 4, i32* %13, align 8, !dbg !3342
  %14 = load %struct._thread_master*, %struct._thread_master** %5, align 8, !dbg !3343
  %15 = load %struct._thread*, %struct._thread** %9, align 8, !dbg !3344
  %16 = getelementptr inbounds %struct._thread, %struct._thread* %15, i32 0, i32 2, !dbg !3345
  store %struct._thread_master* %14, %struct._thread_master** %16, align 8, !dbg !3346
  %17 = load i32 (%struct._thread*)*, i32 (%struct._thread*)** %6, align 8, !dbg !3347
  %18 = load %struct._thread*, %struct._thread** %9, align 8, !dbg !3348
  %19 = getelementptr inbounds %struct._thread, %struct._thread* %18, i32 0, i32 3, !dbg !3349
  store i32 (%struct._thread*)* %17, i32 (%struct._thread*)** %19, align 8, !dbg !3350
  %20 = load i8*, i8** %7, align 8, !dbg !3351
  %21 = load %struct._thread*, %struct._thread** %9, align 8, !dbg !3352
  %22 = getelementptr inbounds %struct._thread, %struct._thread* %21, i32 0, i32 4, !dbg !3353
  store i8* %20, i8** %22, align 8, !dbg !3354
  %23 = load i32, i32* %8, align 4, !dbg !3355
  %24 = load %struct._thread*, %struct._thread** %9, align 8, !dbg !3356
  %25 = getelementptr inbounds %struct._thread, %struct._thread* %24, i32 0, i32 6, !dbg !3357
  %26 = bitcast %union.anon* %25 to i32*, !dbg !3358
  store i32 %23, i32* %26, align 8, !dbg !3359
  br label %27, !dbg !3360, !llvm.loop !3361

; <label>:27:                                     ; preds = %4
  %28 = load %struct._thread*, %struct._thread** %9, align 8, !dbg !3362
  %29 = getelementptr inbounds %struct._thread, %struct._thread* %28, i32 0, i32 8, !dbg !3365
  %30 = bitcast %union.anon.0* %29 to %struct.list_head*, !dbg !3365
  %31 = load %struct._thread*, %struct._thread** %9, align 8, !dbg !3366
  %32 = getelementptr inbounds %struct._thread, %struct._thread* %31, i32 0, i32 8, !dbg !3367
  %33 = bitcast %union.anon.0* %32 to %struct.list_head*, !dbg !3367
  %34 = getelementptr inbounds %struct.list_head, %struct.list_head* %33, i32 0, i32 0, !dbg !3368
  store %struct.list_head* %30, %struct.list_head** %34, align 8, !dbg !3369
  %35 = load %struct._thread*, %struct._thread** %9, align 8, !dbg !3370
  %36 = getelementptr inbounds %struct._thread, %struct._thread* %35, i32 0, i32 8, !dbg !3371
  %37 = bitcast %union.anon.0* %36 to %struct.list_head*, !dbg !3371
  %38 = load %struct._thread*, %struct._thread** %9, align 8, !dbg !3372
  %39 = getelementptr inbounds %struct._thread, %struct._thread* %38, i32 0, i32 8, !dbg !3373
  %40 = bitcast %union.anon.0* %39 to %struct.list_head*, !dbg !3373
  %41 = getelementptr inbounds %struct.list_head, %struct.list_head* %40, i32 0, i32 1, !dbg !3374
  store %struct.list_head* %37, %struct.list_head** %41, align 8, !dbg !3375
  br label %42, !dbg !3376

; <label>:42:                                     ; preds = %27
  %43 = load %struct._thread*, %struct._thread** %9, align 8, !dbg !3377
  %44 = getelementptr inbounds %struct._thread, %struct._thread* %43, i32 0, i32 8, !dbg !3378
  %45 = bitcast %union.anon.0* %44 to %struct.list_head*, !dbg !3378
  %46 = load %struct._thread_master*, %struct._thread_master** %5, align 8, !dbg !3379
  %47 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %46, i32 0, i32 4, !dbg !3380
  call void @list_add_tail(%struct.list_head* %45, %struct.list_head* %47), !dbg !3381
  %48 = load %struct._thread*, %struct._thread** %9, align 8, !dbg !3382
  ret %struct._thread* %48, !dbg !3383
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @list_add_tail(%struct.list_head*, %struct.list_head*) #6 !dbg !3384 {
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca %struct.list_head*, align 8
  store %struct.list_head* %0, %struct.list_head** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %3, metadata !3387, metadata !298), !dbg !3388
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %4, metadata !3389, metadata !298), !dbg !3390
  %5 = load %struct.list_head*, %struct.list_head** %3, align 8, !dbg !3391
  %6 = load %struct.list_head*, %struct.list_head** %4, align 8, !dbg !3392
  %7 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 1, !dbg !3393
  %8 = load %struct.list_head*, %struct.list_head** %7, align 8, !dbg !3393
  %9 = load %struct.list_head*, %struct.list_head** %4, align 8, !dbg !3394
  call void @__list_add(%struct.list_head* %5, %struct.list_head* %8, %struct.list_head* %9), !dbg !3395
  ret void, !dbg !3396
}

; Function Attrs: nounwind uwtable
define %struct._thread* @thread_add_terminate_event(%struct._thread_master*) #0 !dbg !3397 {
  %2 = alloca %struct._thread_master*, align 8
  store %struct._thread_master* %0, %struct._thread_master** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread_master** %2, metadata !3398, metadata !298), !dbg !3399
  %3 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !3400
  %4 = call %struct._thread* @thread_add_generic_terminate_event(%struct._thread_master* %3, i32 12, i32 (%struct._thread*)* null), !dbg !3401
  ret %struct._thread* %4, !dbg !3402
}

; Function Attrs: nounwind uwtable
define internal %struct._thread* @thread_add_generic_terminate_event(%struct._thread_master*, i32, i32 (%struct._thread*)*) #0 !dbg !3403 {
  %4 = alloca %struct._thread_master*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32 (%struct._thread*)*, align 8
  %7 = alloca %struct._thread*, align 8
  store %struct._thread_master* %0, %struct._thread_master** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._thread_master** %4, metadata !3406, metadata !298), !dbg !3407
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3408, metadata !298), !dbg !3409
  store i32 (%struct._thread*)* %2, i32 (%struct._thread*)** %6, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct._thread*)** %6, metadata !3410, metadata !298), !dbg !3411
  call void @llvm.dbg.declare(metadata %struct._thread** %7, metadata !3412, metadata !298), !dbg !3413
  %8 = load %struct._thread_master*, %struct._thread_master** %4, align 8, !dbg !3414
  %9 = call %struct._thread* @thread_new(%struct._thread_master* %8), !dbg !3415
  store %struct._thread* %9, %struct._thread** %7, align 8, !dbg !3416
  %10 = load i32, i32* %5, align 4, !dbg !3417
  %11 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !3418
  %12 = getelementptr inbounds %struct._thread, %struct._thread* %11, i32 0, i32 1, !dbg !3419
  store i32 %10, i32* %12, align 8, !dbg !3420
  %13 = load %struct._thread_master*, %struct._thread_master** %4, align 8, !dbg !3421
  %14 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !3422
  %15 = getelementptr inbounds %struct._thread, %struct._thread* %14, i32 0, i32 2, !dbg !3423
  store %struct._thread_master* %13, %struct._thread_master** %15, align 8, !dbg !3424
  %16 = load i32 (%struct._thread*)*, i32 (%struct._thread*)** %6, align 8, !dbg !3425
  %17 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !3426
  %18 = getelementptr inbounds %struct._thread, %struct._thread* %17, i32 0, i32 3, !dbg !3427
  store i32 (%struct._thread*)* %16, i32 (%struct._thread*)** %18, align 8, !dbg !3428
  %19 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !3429
  %20 = getelementptr inbounds %struct._thread, %struct._thread* %19, i32 0, i32 4, !dbg !3430
  store i8* null, i8** %20, align 8, !dbg !3431
  %21 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !3432
  %22 = getelementptr inbounds %struct._thread, %struct._thread* %21, i32 0, i32 6, !dbg !3433
  %23 = bitcast %union.anon* %22 to i32*, !dbg !3434
  store i32 0, i32* %23, align 8, !dbg !3435
  br label %24, !dbg !3436, !llvm.loop !3437

; <label>:24:                                     ; preds = %3
  %25 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !3438
  %26 = getelementptr inbounds %struct._thread, %struct._thread* %25, i32 0, i32 8, !dbg !3441
  %27 = bitcast %union.anon.0* %26 to %struct.list_head*, !dbg !3441
  %28 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !3442
  %29 = getelementptr inbounds %struct._thread, %struct._thread* %28, i32 0, i32 8, !dbg !3443
  %30 = bitcast %union.anon.0* %29 to %struct.list_head*, !dbg !3443
  %31 = getelementptr inbounds %struct.list_head, %struct.list_head* %30, i32 0, i32 0, !dbg !3444
  store %struct.list_head* %27, %struct.list_head** %31, align 8, !dbg !3445
  %32 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !3446
  %33 = getelementptr inbounds %struct._thread, %struct._thread* %32, i32 0, i32 8, !dbg !3447
  %34 = bitcast %union.anon.0* %33 to %struct.list_head*, !dbg !3447
  %35 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !3448
  %36 = getelementptr inbounds %struct._thread, %struct._thread* %35, i32 0, i32 8, !dbg !3449
  %37 = bitcast %union.anon.0* %36 to %struct.list_head*, !dbg !3449
  %38 = getelementptr inbounds %struct.list_head, %struct.list_head* %37, i32 0, i32 1, !dbg !3450
  store %struct.list_head* %34, %struct.list_head** %38, align 8, !dbg !3451
  br label %39, !dbg !3452

; <label>:39:                                     ; preds = %24
  %40 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !3453
  %41 = getelementptr inbounds %struct._thread, %struct._thread* %40, i32 0, i32 8, !dbg !3454
  %42 = bitcast %union.anon.0* %41 to %struct.list_head*, !dbg !3454
  %43 = load %struct._thread_master*, %struct._thread_master** %4, align 8, !dbg !3455
  %44 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %43, i32 0, i32 4, !dbg !3456
  call void @list_add_tail(%struct.list_head* %42, %struct.list_head* %44), !dbg !3457
  %45 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !3458
  ret %struct._thread* %45, !dbg !3459
}

; Function Attrs: nounwind uwtable
define %struct._thread* @thread_add_start_terminate_event(%struct._thread_master*, i32 (%struct._thread*)*) #0 !dbg !3460 {
  %3 = alloca %struct._thread_master*, align 8
  %4 = alloca i32 (%struct._thread*)*, align 8
  store %struct._thread_master* %0, %struct._thread_master** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._thread_master** %3, metadata !3463, metadata !298), !dbg !3464
  store i32 (%struct._thread*)* %1, i32 (%struct._thread*)** %4, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct._thread*)** %4, metadata !3465, metadata !298), !dbg !3466
  %5 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !3467
  %6 = load i32 (%struct._thread*)*, i32 (%struct._thread*)** %4, align 8, !dbg !3468
  %7 = call %struct._thread* @thread_add_generic_terminate_event(%struct._thread_master* %5, i32 11, i32 (%struct._thread*)* %6), !dbg !3469
  ret %struct._thread* %7, !dbg !3470
}

; Function Attrs: nounwind uwtable
define void @thread_cancel(%struct._thread*) #0 !dbg !3471 {
  %2 = alloca %struct._thread*, align 8
  %3 = alloca %struct._thread_master*, align 8
  store %struct._thread* %0, %struct._thread** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %2, metadata !3472, metadata !298), !dbg !3473
  call void @llvm.dbg.declare(metadata %struct._thread_master** %3, metadata !3474, metadata !298), !dbg !3475
  %4 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !3476
  %5 = icmp ne %struct._thread* %4, null, !dbg !3476
  br i1 %5, label %7, label %6, !dbg !3478

; <label>:6:                                      ; preds = %1
  br label %69, !dbg !3479

; <label>:7:                                      ; preds = %1
  %8 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !3480
  %9 = getelementptr inbounds %struct._thread, %struct._thread* %8, i32 0, i32 2, !dbg !3481
  %10 = load %struct._thread_master*, %struct._thread_master** %9, align 8, !dbg !3481
  store %struct._thread_master* %10, %struct._thread_master** %3, align 8, !dbg !3482
  %11 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !3483
  %12 = getelementptr inbounds %struct._thread, %struct._thread* %11, i32 0, i32 1, !dbg !3484
  %13 = load i32, i32* %12, align 8, !dbg !3484
  switch i32 %13, label %65 [
    i32 0, label %14
    i32 1, label %22
    i32 2, label %30
    i32 5, label %36
    i32 13, label %42
    i32 9, label %42
    i32 8, label %42
    i32 4, label %61
    i32 6, label %61
    i32 10, label %61
  ], !dbg !3485

; <label>:14:                                     ; preds = %7
  %15 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !3486
  %16 = call i32 @thread_event_del(%struct._thread* %15, i32 3), !dbg !3488
  %17 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !3489
  %18 = getelementptr inbounds %struct._thread, %struct._thread* %17, i32 0, i32 8, !dbg !3490
  %19 = bitcast %union.anon.0* %18 to %struct.rb_node*, !dbg !3490
  %20 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !3491
  %21 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %20, i32 0, i32 0, !dbg !3492
  call void @rb_erase(%struct.rb_node* %19, %struct.rb_root* %21), !dbg !3493
  br label %66, !dbg !3494

; <label>:22:                                     ; preds = %7
  %23 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !3495
  %24 = call i32 @thread_event_del(%struct._thread* %23, i32 4), !dbg !3496
  %25 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !3497
  %26 = getelementptr inbounds %struct._thread, %struct._thread* %25, i32 0, i32 8, !dbg !3498
  %27 = bitcast %union.anon.0* %26 to %struct.rb_node*, !dbg !3498
  %28 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !3499
  %29 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %28, i32 0, i32 1, !dbg !3500
  call void @rb_erase(%struct.rb_node* %27, %struct.rb_root* %29), !dbg !3501
  br label %66, !dbg !3502

; <label>:30:                                     ; preds = %7
  %31 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !3503
  %32 = getelementptr inbounds %struct._thread, %struct._thread* %31, i32 0, i32 8, !dbg !3504
  %33 = bitcast %union.anon.0* %32 to %struct.rb_node*, !dbg !3504
  %34 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !3505
  %35 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %34, i32 0, i32 2, !dbg !3506
  call void @rb_erase(%struct.rb_node* %33, %struct.rb_root* %35), !dbg !3507
  br label %66, !dbg !3508

; <label>:36:                                     ; preds = %7
  %37 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !3509
  %38 = getelementptr inbounds %struct._thread, %struct._thread* %37, i32 0, i32 8, !dbg !3510
  %39 = bitcast %union.anon.0* %38 to %struct.rb_node*, !dbg !3510
  %40 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !3511
  %41 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %40, i32 0, i32 3, !dbg !3512
  call void @rb_erase(%struct.rb_node* %39, %struct.rb_root* %41), !dbg !3513
  br label %66, !dbg !3514

; <label>:42:                                     ; preds = %7, %7, %7
  %43 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !3515
  %44 = getelementptr inbounds %struct._thread, %struct._thread* %43, i32 0, i32 7, !dbg !3517
  %45 = load %struct._thread_event*, %struct._thread_event** %44, align 8, !dbg !3517
  %46 = icmp ne %struct._thread_event* %45, null, !dbg !3515
  br i1 %46, label %47, label %60, !dbg !3518

; <label>:47:                                     ; preds = %42
  %48 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !3519
  %49 = getelementptr inbounds %struct._thread, %struct._thread* %48, i32 0, i32 7, !dbg !3521
  %50 = load %struct._thread_event*, %struct._thread_event** %49, align 8, !dbg !3521
  %51 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %50, i32 0, i32 4, !dbg !3522
  %52 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !3523
  %53 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %52, i32 0, i32 8, !dbg !3524
  call void @rb_erase(%struct.rb_node* %51, %struct.rb_root* %53), !dbg !3525
  %54 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !3526
  %55 = getelementptr inbounds %struct._thread, %struct._thread* %54, i32 0, i32 7, !dbg !3527
  %56 = load %struct._thread_event*, %struct._thread_event** %55, align 8, !dbg !3527
  %57 = bitcast %struct._thread_event* %56 to i8*, !dbg !3526
  call void @free(i8* %57) #9, !dbg !3528
  %58 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !3529
  %59 = getelementptr inbounds %struct._thread, %struct._thread* %58, i32 0, i32 7, !dbg !3530
  store %struct._thread_event* null, %struct._thread_event** %59, align 8, !dbg !3531
  br label %60, !dbg !3532

; <label>:60:                                     ; preds = %47, %42
  br label %61, !dbg !3533

; <label>:61:                                     ; preds = %7, %7, %7, %60
  %62 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !3535
  %63 = getelementptr inbounds %struct._thread, %struct._thread* %62, i32 0, i32 8, !dbg !3536
  %64 = bitcast %union.anon.0* %63 to %struct.list_head*, !dbg !3536
  call void @list_head_del(%struct.list_head* %64), !dbg !3537
  br label %66, !dbg !3538

; <label>:65:                                     ; preds = %7
  br label %66, !dbg !3539

; <label>:66:                                     ; preds = %65, %61, %36, %30, %22, %14
  %67 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !3540
  %68 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !3541
  call void @thread_add_unuse(%struct._thread_master* %67, %struct._thread* %68), !dbg !3542
  br label %69, !dbg !3543

; <label>:69:                                     ; preds = %66, %6
  ret void, !dbg !3544
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @list_head_del(%struct.list_head*) #6 !dbg !3546 {
  %2 = alloca %struct.list_head*, align 8
  store %struct.list_head* %0, %struct.list_head** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %2, metadata !3549, metadata !298), !dbg !3550
  %3 = load %struct.list_head*, %struct.list_head** %2, align 8, !dbg !3551
  %4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !3552
  %5 = load %struct.list_head*, %struct.list_head** %4, align 8, !dbg !3552
  %6 = load %struct.list_head*, %struct.list_head** %2, align 8, !dbg !3553
  %7 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !3554
  %8 = load %struct.list_head*, %struct.list_head** %7, align 8, !dbg !3554
  call void @__list_del(%struct.list_head* %5, %struct.list_head* %8), !dbg !3555
  %9 = load %struct.list_head*, %struct.list_head** %2, align 8, !dbg !3556
  %10 = getelementptr inbounds %struct.list_head, %struct.list_head* %9, i32 0, i32 0, !dbg !3557
  store %struct.list_head* inttoptr (i64 1048832 to %struct.list_head*), %struct.list_head** %10, align 8, !dbg !3558
  %11 = load %struct.list_head*, %struct.list_head** %2, align 8, !dbg !3559
  %12 = getelementptr inbounds %struct.list_head, %struct.list_head* %11, i32 0, i32 1, !dbg !3560
  store %struct.list_head* inttoptr (i64 2097664 to %struct.list_head*), %struct.list_head** %12, align 8, !dbg !3561
  ret void, !dbg !3562
}

; Function Attrs: nounwind uwtable
define void @thread_cancel_read(%struct._thread_master*, i32) #0 !dbg !3563 {
  %3 = alloca %struct._thread_master*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._thread*, align 8
  %6 = alloca %struct._thread*, align 8
  %7 = alloca %struct.rb_node*, align 8
  %8 = alloca %struct._thread*, align 8
  %9 = alloca %struct.rb_node*, align 8
  %10 = alloca %struct._thread*, align 8
  store %struct._thread_master* %0, %struct._thread_master** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._thread_master** %3, metadata !3566, metadata !298), !dbg !3567
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3568, metadata !298), !dbg !3569
  call void @llvm.dbg.declare(metadata %struct._thread** %5, metadata !3570, metadata !298), !dbg !3571
  call void @llvm.dbg.declare(metadata %struct._thread** %6, metadata !3572, metadata !298), !dbg !3573
  %11 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !3574
  %12 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %11, i32 0, i32 0, !dbg !3576
  %13 = call %struct.rb_node* @rb_first(%struct.rb_root* %12), !dbg !3577
  %14 = icmp ne %struct.rb_node* %13, null, !dbg !3577
  br i1 %14, label %15, label %24, !dbg !3578

; <label>:15:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata %struct.rb_node** %7, metadata !3579, metadata !298), !dbg !3581
  %16 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !3582
  %17 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %16, i32 0, i32 0, !dbg !3584
  %18 = call %struct.rb_node* @rb_first(%struct.rb_root* %17), !dbg !3585
  store %struct.rb_node* %18, %struct.rb_node** %7, align 8, !dbg !3586
  %19 = load %struct.rb_node*, %struct.rb_node** %7, align 8, !dbg !3587
  %20 = bitcast %struct.rb_node* %19 to i8*, !dbg !3588
  %21 = getelementptr inbounds i8, i8* %20, i64 -72, !dbg !3589
  %22 = bitcast i8* %21 to %struct._thread*, !dbg !3590
  store %struct._thread* %22, %struct._thread** %8, align 8, !dbg !3591
  %23 = load %struct._thread*, %struct._thread** %8, align 8, !dbg !3592
  br label %25, !dbg !3593

; <label>:24:                                     ; preds = %2
  br label %25, !dbg !3594

; <label>:25:                                     ; preds = %24, %15
  %26 = phi %struct._thread* [ %23, %15 ], [ null, %24 ], !dbg !3596
  store %struct._thread* %26, %struct._thread** %5, align 8, !dbg !3598
  br label %27, !dbg !3599

; <label>:27:                                     ; preds = %74, %25
  %28 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !3600
  %29 = icmp ne %struct._thread* %28, null, !dbg !3600
  br i1 %29, label %30, label %49, !dbg !3603

; <label>:30:                                     ; preds = %27
  %31 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !3604
  %32 = getelementptr inbounds %struct._thread, %struct._thread* %31, i32 0, i32 8, !dbg !3606
  %33 = bitcast %union.anon.0* %32 to %struct.rb_node*, !dbg !3606
  %34 = call %struct.rb_node* @rb_next(%struct.rb_node* %33), !dbg !3607
  %35 = icmp ne %struct.rb_node* %34, null, !dbg !3607
  br i1 %35, label %36, label %46, !dbg !3608

; <label>:36:                                     ; preds = %30
  call void @llvm.dbg.declare(metadata %struct.rb_node** %9, metadata !3609, metadata !298), !dbg !3611
  %37 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !3612
  %38 = getelementptr inbounds %struct._thread, %struct._thread* %37, i32 0, i32 8, !dbg !3614
  %39 = bitcast %union.anon.0* %38 to %struct.rb_node*, !dbg !3614
  %40 = call %struct.rb_node* @rb_next(%struct.rb_node* %39), !dbg !3615
  store %struct.rb_node* %40, %struct.rb_node** %9, align 8, !dbg !3616
  %41 = load %struct.rb_node*, %struct.rb_node** %9, align 8, !dbg !3617
  %42 = bitcast %struct.rb_node* %41 to i8*, !dbg !3618
  %43 = getelementptr inbounds i8, i8* %42, i64 -72, !dbg !3619
  %44 = bitcast i8* %43 to %struct._thread*, !dbg !3620
  store %struct._thread* %44, %struct._thread** %10, align 8, !dbg !3621
  %45 = load %struct._thread*, %struct._thread** %10, align 8, !dbg !3622
  br label %47, !dbg !3623

; <label>:46:                                     ; preds = %30
  br label %47, !dbg !3624

; <label>:47:                                     ; preds = %46, %36
  %48 = phi %struct._thread* [ %45, %36 ], [ null, %46 ], !dbg !3626
  store %struct._thread* %48, %struct._thread** %6, align 8, !dbg !3628
  br label %49

; <label>:49:                                     ; preds = %47, %27
  %50 = phi i1 [ false, %27 ], [ true, %47 ]
  br i1 %50, label %51, label %76, !dbg !3629

; <label>:51:                                     ; preds = %49
  %52 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !3631
  %53 = getelementptr inbounds %struct._thread, %struct._thread* %52, i32 0, i32 6, !dbg !3634
  %54 = bitcast %union.anon* %53 to i32*, !dbg !3635
  %55 = load i32, i32* %54, align 8, !dbg !3635
  %56 = load i32, i32* %4, align 4, !dbg !3636
  %57 = icmp eq i32 %55, %56, !dbg !3637
  br i1 %57, label %58, label %73, !dbg !3638

; <label>:58:                                     ; preds = %51
  %59 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !3639
  %60 = getelementptr inbounds %struct._thread, %struct._thread* %59, i32 0, i32 7, !dbg !3642
  %61 = load %struct._thread_event*, %struct._thread_event** %60, align 8, !dbg !3642
  %62 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %61, i32 0, i32 1, !dbg !3643
  %63 = load %struct._thread*, %struct._thread** %62, align 8, !dbg !3643
  %64 = icmp ne %struct._thread* %63, null, !dbg !3639
  br i1 %64, label %65, label %71, !dbg !3644

; <label>:65:                                     ; preds = %58
  %66 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !3645
  %67 = getelementptr inbounds %struct._thread, %struct._thread* %66, i32 0, i32 7, !dbg !3646
  %68 = load %struct._thread_event*, %struct._thread_event** %67, align 8, !dbg !3646
  %69 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %68, i32 0, i32 1, !dbg !3647
  %70 = load %struct._thread*, %struct._thread** %69, align 8, !dbg !3647
  call void @thread_cancel(%struct._thread* %70), !dbg !3648
  br label %71, !dbg !3648

; <label>:71:                                     ; preds = %65, %58
  %72 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !3649
  call void @thread_cancel(%struct._thread* %72), !dbg !3650
  br label %76, !dbg !3651

; <label>:73:                                     ; preds = %51
  br label %74, !dbg !3652

; <label>:74:                                     ; preds = %73
  %75 = load %struct._thread*, %struct._thread** %6, align 8, !dbg !3653
  store %struct._thread* %75, %struct._thread** %5, align 8, !dbg !3655
  br label %27, !dbg !3656, !llvm.loop !3657

; <label>:76:                                     ; preds = %71, %49
  ret void, !dbg !3659
}

; Function Attrs: nounwind uwtable
define void @process_threads(%struct._thread_master*) #0 !dbg !3660 {
  %2 = alloca %struct._thread_master*, align 8
  %3 = alloca %struct._thread*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca i32, align 4
  store %struct._thread_master* %0, %struct._thread_master** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread_master** %2, metadata !3661, metadata !298), !dbg !3662
  call void @llvm.dbg.declare(metadata %struct._thread** %3, metadata !3663, metadata !298), !dbg !3664
  call void @llvm.dbg.declare(metadata %struct.list_head** %4, metadata !3665, metadata !298), !dbg !3666
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3667, metadata !298), !dbg !3668
  br label %6, !dbg !3669

; <label>:6:                                      ; preds = %97, %1
  %7 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !3670
  %8 = call %struct.list_head* @thread_fetch_next_queue(%struct._thread_master* %7), !dbg !3672
  store %struct.list_head* %8, %struct.list_head** %4, align 8, !dbg !3673
  %9 = icmp ne %struct.list_head* %8, null, !dbg !3674
  br i1 %9, label %10, label %98, !dbg !3674

; <label>:10:                                     ; preds = %6
  %11 = load %struct.list_head*, %struct.list_head** %4, align 8, !dbg !3675
  %12 = call %struct._thread* @thread_trim_head(%struct.list_head* %11), !dbg !3677
  store %struct._thread* %12, %struct._thread** %3, align 8, !dbg !3678
  %13 = load i8, i8* @shutting_down, align 1, !dbg !3679
  %14 = trunc i8 %13 to i1, !dbg !3679
  br i1 %14, label %15, label %46, !dbg !3681

; <label>:15:                                     ; preds = %10
  %16 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !3682
  %17 = getelementptr inbounds %struct._thread, %struct._thread* %16, i32 0, i32 1, !dbg !3683
  %18 = load i32, i32* %17, align 8, !dbg !3683
  %19 = icmp eq i32 %18, 13, !dbg !3684
  br i1 %19, label %20, label %26, !dbg !3685

; <label>:20:                                     ; preds = %15
  %21 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !3686
  %22 = getelementptr inbounds %struct._thread, %struct._thread* %21, i32 0, i32 5, !dbg !3688
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 0, !dbg !3689
  %24 = load i64, i64* %23, align 8, !dbg !3689
  %25 = icmp eq i64 %24, -9223372036854775808, !dbg !3690
  br i1 %25, label %46, label %26, !dbg !3691

; <label>:26:                                     ; preds = %20, %15
  %27 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !3692
  %28 = getelementptr inbounds %struct._thread, %struct._thread* %27, i32 0, i32 1, !dbg !3693
  %29 = load i32, i32* %28, align 8, !dbg !3693
  %30 = icmp eq i32 %29, 5, !dbg !3694
  br i1 %30, label %46, label %31, !dbg !3695

; <label>:31:                                     ; preds = %26
  %32 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !3696
  %33 = getelementptr inbounds %struct._thread, %struct._thread* %32, i32 0, i32 1, !dbg !3697
  %34 = load i32, i32* %33, align 8, !dbg !3697
  %35 = icmp eq i32 %34, 10, !dbg !3698
  br i1 %35, label %46, label %36, !dbg !3699

; <label>:36:                                     ; preds = %31
  %37 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !3700
  %38 = getelementptr inbounds %struct._thread, %struct._thread* %37, i32 0, i32 1, !dbg !3701
  %39 = load i32, i32* %38, align 8, !dbg !3701
  %40 = icmp eq i32 %39, 3, !dbg !3702
  br i1 %40, label %46, label %41, !dbg !3703

; <label>:41:                                     ; preds = %36
  %42 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !3704
  %43 = getelementptr inbounds %struct._thread, %struct._thread* %42, i32 0, i32 1, !dbg !3705
  %44 = load i32, i32* %43, align 8, !dbg !3705
  %45 = icmp eq i32 %44, 12, !dbg !3706
  br i1 %45, label %46, label %60, !dbg !3707

; <label>:46:                                     ; preds = %41, %36, %31, %26, %20, %10
  %47 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !3709
  %48 = getelementptr inbounds %struct._thread, %struct._thread* %47, i32 0, i32 3, !dbg !3712
  %49 = load i32 (%struct._thread*)*, i32 (%struct._thread*)** %48, align 8, !dbg !3712
  %50 = icmp ne i32 (%struct._thread*)* %49, null, !dbg !3709
  br i1 %50, label %51, label %53, !dbg !3713

; <label>:51:                                     ; preds = %46
  %52 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !3714
  call void @thread_call(%struct._thread* %52), !dbg !3715
  br label %53, !dbg !3715

; <label>:53:                                     ; preds = %51, %46
  %54 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !3716
  %55 = getelementptr inbounds %struct._thread, %struct._thread* %54, i32 0, i32 1, !dbg !3718
  %56 = load i32, i32* %55, align 8, !dbg !3718
  %57 = icmp eq i32 %56, 11, !dbg !3719
  br i1 %57, label %58, label %59, !dbg !3720

; <label>:58:                                     ; preds = %53
  store i8 1, i8* @shutting_down, align 1, !dbg !3721
  br label %59, !dbg !3722

; <label>:59:                                     ; preds = %58, %53
  br label %60, !dbg !3723

; <label>:60:                                     ; preds = %59, %41
  %61 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !3724
  %62 = getelementptr inbounds %struct._thread, %struct._thread* %61, i32 0, i32 1, !dbg !3725
  %63 = load i32, i32* %62, align 8, !dbg !3725
  %64 = icmp eq i32 %63, 13, !dbg !3726
  br i1 %64, label %65, label %69, !dbg !3727

; <label>:65:                                     ; preds = %60
  %66 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !3728
  %67 = getelementptr inbounds %struct._thread, %struct._thread* %66, i32 0, i32 7, !dbg !3729
  %68 = load %struct._thread_event*, %struct._thread_event** %67, align 8, !dbg !3729
  br label %70, !dbg !3730

; <label>:69:                                     ; preds = %60
  br label %70, !dbg !3731

; <label>:70:                                     ; preds = %69, %65
  %71 = phi %struct._thread_event* [ %68, %65 ], [ null, %69 ], !dbg !3733
  %72 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !3735
  %73 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %72, i32 0, i32 10, !dbg !3736
  store %struct._thread_event* %71, %struct._thread_event** %73, align 8, !dbg !3737
  %74 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !3738
  %75 = getelementptr inbounds %struct._thread, %struct._thread* %74, i32 0, i32 1, !dbg !3739
  %76 = load i32, i32* %75, align 8, !dbg !3739
  store i32 %76, i32* %5, align 4, !dbg !3740
  %77 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !3741
  %78 = load %struct._thread*, %struct._thread** %3, align 8, !dbg !3742
  call void @thread_add_unuse(%struct._thread_master* %77, %struct._thread* %78), !dbg !3743
  %79 = load i8, i8* @shutting_down, align 1, !dbg !3744
  %80 = trunc i8 %79 to i1, !dbg !3744
  br i1 %80, label %81, label %93, !dbg !3746

; <label>:81:                                     ; preds = %70
  %82 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !3747
  %83 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %82, i32 0, i32 18, !dbg !3749
  %84 = load i8, i8* %83, align 8, !dbg !3749
  %85 = trunc i8 %84 to i1, !dbg !3749
  br i1 %85, label %93, label %86, !dbg !3750

; <label>:86:                                     ; preds = %81
  %87 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !3751
  %88 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %87, i32 0, i32 3, !dbg !3753
  %89 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %88, i32 0, i32 0, !dbg !3754
  %90 = load %struct.rb_node*, %struct.rb_node** %89, align 8, !dbg !3754
  %91 = icmp ne %struct.rb_node* %90, null, !dbg !3751
  br i1 %91, label %93, label %92, !dbg !3755

; <label>:92:                                     ; preds = %86
  br label %98, !dbg !3756

; <label>:93:                                     ; preds = %86, %81, %70
  %94 = load i32, i32* %5, align 4, !dbg !3757
  %95 = icmp eq i32 %94, 12, !dbg !3759
  br i1 %95, label %96, label %97, !dbg !3760

; <label>:96:                                     ; preds = %93
  br label %98, !dbg !3761

; <label>:97:                                     ; preds = %93
  br label %6, !dbg !3762, !llvm.loop !3764

; <label>:98:                                     ; preds = %96, %92, %6
  ret void, !dbg !3765
}

; Function Attrs: nounwind uwtable
define internal %struct.list_head* @thread_fetch_next_queue(%struct._thread_master*) #0 !dbg !3766 {
  %2 = alloca %struct.list_head*, align 8
  %3 = alloca %struct._thread_master*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.epoll_event*, align 8
  %9 = alloca %struct._thread_event*, align 8
  %10 = alloca %struct.timeval, align 8
  store %struct._thread_master* %0, %struct._thread_master** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._thread_master** %3, metadata !3769, metadata !298), !dbg !3770
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3771, metadata !298), !dbg !3772
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3773, metadata !298), !dbg !3774
  store i32 0, i32* %5, align 4, !dbg !3774
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3775, metadata !298), !dbg !3776
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3777, metadata !298), !dbg !3778
  %11 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !3779
  %12 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %11, i32 0, i32 4, !dbg !3781
  %13 = getelementptr inbounds %struct.list_head, %struct.list_head* %12, i32 0, i32 0, !dbg !3782
  %14 = load %struct.list_head*, %struct.list_head** %13, align 8, !dbg !3782
  %15 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !3783
  %16 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %15, i32 0, i32 4, !dbg !3784
  %17 = icmp ne %struct.list_head* %14, %16, !dbg !3785
  br i1 %17, label %18, label %21, !dbg !3786

; <label>:18:                                     ; preds = %1
  %19 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !3787
  %20 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %19, i32 0, i32 4, !dbg !3788
  store %struct.list_head* %20, %struct.list_head** %2, align 8, !dbg !3789
  br label %225, !dbg !3789

; <label>:21:                                     ; preds = %1
  %22 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !3790
  %23 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %22, i32 0, i32 5, !dbg !3792
  %24 = getelementptr inbounds %struct.list_head, %struct.list_head* %23, i32 0, i32 0, !dbg !3793
  %25 = load %struct.list_head*, %struct.list_head** %24, align 8, !dbg !3793
  %26 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !3794
  %27 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %26, i32 0, i32 5, !dbg !3795
  %28 = icmp ne %struct.list_head* %25, %27, !dbg !3796
  br i1 %28, label %29, label %32, !dbg !3797

; <label>:29:                                     ; preds = %21
  %30 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !3798
  %31 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %30, i32 0, i32 5, !dbg !3799
  store %struct.list_head* %31, %struct.list_head** %2, align 8, !dbg !3800
  br label %225, !dbg !3800

; <label>:32:                                     ; preds = %21
  br label %33, !dbg !3801, !llvm.loop !3802

; <label>:33:                                     ; preds = %224, %32
  %34 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !3803
  call void @thread_set_timer(%struct._thread_master* %34), !dbg !3805
  %35 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !3806
  %36 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %35, i32 0, i32 13, !dbg !3807
  %37 = load i32, i32* %36, align 8, !dbg !3807
  %38 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !3808
  %39 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %38, i32 0, i32 9, !dbg !3809
  %40 = load %struct.epoll_event*, %struct.epoll_event** %39, align 8, !dbg !3809
  %41 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !3810
  %42 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %41, i32 0, i32 12, !dbg !3811
  %43 = load i32, i32* %42, align 4, !dbg !3811
  %44 = call i32 @epoll_wait(i32 %37, %struct.epoll_event* %40, i32 %43, i32 -1), !dbg !3812
  store i32 %44, i32* %6, align 4, !dbg !3813
  %45 = call i32* @__errno_location() #1, !dbg !3814
  %46 = load i32, i32* %45, align 4, !dbg !3815
  store i32 %46, i32* %4, align 4, !dbg !3816
  %47 = load i32, i32* %6, align 4, !dbg !3817
  %48 = icmp slt i32 %47, 0, !dbg !3819
  br i1 %48, label %49, label %73, !dbg !3820

; <label>:49:                                     ; preds = %33
  %50 = load i32, i32* %4, align 4, !dbg !3821
  %51 = icmp eq i32 %50, 4, !dbg !3824
  br i1 %51, label %52, label %53, !dbg !3825

; <label>:52:                                     ; preds = %49
  br label %224, !dbg !3826

; <label>:53:                                     ; preds = %49
  %54 = load i32, i32* %4, align 4, !dbg !3827
  %55 = load i32, i32* %5, align 4, !dbg !3829
  %56 = icmp ne i32 %54, %55, !dbg !3830
  br i1 %56, label %57, label %61, !dbg !3831

; <label>:57:                                     ; preds = %53
  %58 = load i32, i32* %4, align 4, !dbg !3832
  %59 = call i8* @strerror(i32 %58) #9, !dbg !3834
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.45, i32 0, i32 0), i8* %59), !dbg !3835
  %60 = load i32, i32* %4, align 4, !dbg !3837
  store i32 %60, i32* %5, align 4, !dbg !3838
  br label %61, !dbg !3839

; <label>:61:                                     ; preds = %57, %53
  %62 = load i32, i32* %4, align 4, !dbg !3840
  %63 = icmp eq i32 %62, 9, !dbg !3842
  br i1 %63, label %70, label %64, !dbg !3843

; <label>:64:                                     ; preds = %61
  %65 = load i32, i32* %4, align 4, !dbg !3844
  %66 = icmp eq i32 %65, 14, !dbg !3846
  br i1 %66, label %70, label %67, !dbg !3847

; <label>:67:                                     ; preds = %64
  %68 = load i32, i32* %4, align 4, !dbg !3848
  %69 = icmp eq i32 %68, 22, !dbg !3850
  br i1 %69, label %70, label %72, !dbg !3851

; <label>:70:                                     ; preds = %67, %64, %61
  %71 = call i32 @sleep(i32 1), !dbg !3852
  br label %72, !dbg !3852

; <label>:72:                                     ; preds = %70, %67
  br label %224, !dbg !3853

; <label>:73:                                     ; preds = %33
  store i32 0, i32* %7, align 4, !dbg !3854
  br label %74, !dbg !3856

; <label>:74:                                     ; preds = %203, %73
  %75 = load i32, i32* %7, align 4, !dbg !3857
  %76 = load i32, i32* %6, align 4, !dbg !3860
  %77 = icmp slt i32 %75, %76, !dbg !3861
  br i1 %77, label %78, label %206, !dbg !3862

; <label>:78:                                     ; preds = %74
  call void @llvm.dbg.declare(metadata %struct.epoll_event** %8, metadata !3863, metadata !298), !dbg !3865
  call void @llvm.dbg.declare(metadata %struct._thread_event** %9, metadata !3866, metadata !298), !dbg !3867
  %79 = load i32, i32* %7, align 4, !dbg !3868
  %80 = sext i32 %79 to i64, !dbg !3869
  %81 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !3869
  %82 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %81, i32 0, i32 9, !dbg !3870
  %83 = load %struct.epoll_event*, %struct.epoll_event** %82, align 8, !dbg !3870
  %84 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %83, i64 %80, !dbg !3869
  store %struct.epoll_event* %84, %struct.epoll_event** %8, align 8, !dbg !3871
  %85 = load %struct.epoll_event*, %struct.epoll_event** %8, align 8, !dbg !3872
  %86 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %85, i32 0, i32 1, !dbg !3873
  %87 = bitcast %union.epoll_data* %86 to i8**, !dbg !3874
  %88 = load i8*, i8** %87, align 1, !dbg !3874
  %89 = bitcast i8* %88 to %struct._thread_event*, !dbg !3872
  store %struct._thread_event* %89, %struct._thread_event** %9, align 8, !dbg !3875
  %90 = load %struct.epoll_event*, %struct.epoll_event** %8, align 8, !dbg !3876
  %91 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %90, i32 0, i32 0, !dbg !3878
  %92 = load i32, i32* %91, align 1, !dbg !3878
  %93 = and i32 %92, 8216, !dbg !3879
  %94 = icmp ne i32 %93, 0, !dbg !3879
  br i1 %94, label %95, label %126, !dbg !3880

; <label>:95:                                     ; preds = %78
  %96 = load %struct._thread_event*, %struct._thread_event** %9, align 8, !dbg !3881
  %97 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %96, i32 0, i32 0, !dbg !3884
  %98 = load %struct._thread*, %struct._thread** %97, align 8, !dbg !3884
  %99 = icmp ne %struct._thread* %98, null, !dbg !3881
  br i1 %99, label %100, label %110, !dbg !3885

; <label>:100:                                    ; preds = %95
  %101 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !3886
  %102 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !3888
  %103 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %102, i32 0, i32 0, !dbg !3889
  %104 = load %struct._thread_event*, %struct._thread_event** %9, align 8, !dbg !3890
  %105 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %104, i32 0, i32 0, !dbg !3891
  %106 = load %struct._thread*, %struct._thread** %105, align 8, !dbg !3891
  %107 = call i32 @thread_move_ready(%struct._thread_master* %101, %struct.rb_root* %103, %struct._thread* %106, i32 14), !dbg !3892
  %108 = load %struct._thread_event*, %struct._thread_event** %9, align 8, !dbg !3893
  %109 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %108, i32 0, i32 0, !dbg !3894
  store %struct._thread* null, %struct._thread** %109, align 8, !dbg !3895
  br label %110, !dbg !3896

; <label>:110:                                    ; preds = %100, %95
  %111 = load %struct._thread_event*, %struct._thread_event** %9, align 8, !dbg !3897
  %112 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %111, i32 0, i32 1, !dbg !3899
  %113 = load %struct._thread*, %struct._thread** %112, align 8, !dbg !3899
  %114 = icmp ne %struct._thread* %113, null, !dbg !3897
  br i1 %114, label %115, label %125, !dbg !3900

; <label>:115:                                    ; preds = %110
  %116 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !3901
  %117 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !3903
  %118 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %117, i32 0, i32 1, !dbg !3904
  %119 = load %struct._thread_event*, %struct._thread_event** %9, align 8, !dbg !3905
  %120 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %119, i32 0, i32 1, !dbg !3906
  %121 = load %struct._thread*, %struct._thread** %120, align 8, !dbg !3906
  %122 = call i32 @thread_move_ready(%struct._thread_master* %116, %struct.rb_root* %118, %struct._thread* %121, i32 15), !dbg !3907
  %123 = load %struct._thread_event*, %struct._thread_event** %9, align 8, !dbg !3908
  %124 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %123, i32 0, i32 1, !dbg !3909
  store %struct._thread* null, %struct._thread** %124, align 8, !dbg !3910
  br label %125, !dbg !3911

; <label>:125:                                    ; preds = %115, %110
  br label %203, !dbg !3912

; <label>:126:                                    ; preds = %78
  %127 = load %struct.epoll_event*, %struct.epoll_event** %8, align 8, !dbg !3913
  %128 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %127, i32 0, i32 0, !dbg !3915
  %129 = load i32, i32* %128, align 1, !dbg !3915
  %130 = and i32 %129, 1, !dbg !3916
  %131 = icmp ne i32 %130, 0, !dbg !3916
  br i1 %131, label %132, label %154, !dbg !3917

; <label>:132:                                    ; preds = %126
  %133 = load %struct._thread_event*, %struct._thread_event** %9, align 8, !dbg !3918
  %134 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %133, i32 0, i32 0, !dbg !3921
  %135 = load %struct._thread*, %struct._thread** %134, align 8, !dbg !3921
  %136 = icmp ne %struct._thread* %135, null, !dbg !3918
  br i1 %136, label %144, label %137, !dbg !3922

; <label>:137:                                    ; preds = %132
  %138 = load %struct._thread_event*, %struct._thread_event** %9, align 8, !dbg !3923
  %139 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %138, i32 0, i32 3, !dbg !3925
  %140 = load i32, i32* %139, align 8, !dbg !3925
  %141 = load %struct.epoll_event*, %struct.epoll_event** %8, align 8, !dbg !3926
  %142 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %141, i32 0, i32 0, !dbg !3927
  %143 = load i32, i32* %142, align 1, !dbg !3927
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.46, i32 0, i32 0), i32 %140, i32 %143), !dbg !3928
  br label %144, !dbg !3929

; <label>:144:                                    ; preds = %137, %132
  %145 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !3930
  %146 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !3931
  %147 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %146, i32 0, i32 0, !dbg !3932
  %148 = load %struct._thread_event*, %struct._thread_event** %9, align 8, !dbg !3933
  %149 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %148, i32 0, i32 0, !dbg !3934
  %150 = load %struct._thread*, %struct._thread** %149, align 8, !dbg !3934
  %151 = call i32 @thread_move_ready(%struct._thread_master* %145, %struct.rb_root* %147, %struct._thread* %150, i32 13), !dbg !3935
  %152 = load %struct._thread_event*, %struct._thread_event** %9, align 8, !dbg !3936
  %153 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %152, i32 0, i32 0, !dbg !3937
  store %struct._thread* null, %struct._thread** %153, align 8, !dbg !3938
  br label %154, !dbg !3939

; <label>:154:                                    ; preds = %144, %126
  %155 = load %struct.epoll_event*, %struct.epoll_event** %8, align 8, !dbg !3940
  %156 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %155, i32 0, i32 0, !dbg !3942
  %157 = load i32, i32* %156, align 1, !dbg !3942
  %158 = and i32 %157, 4, !dbg !3943
  %159 = icmp ne i32 %158, 0, !dbg !3943
  br i1 %159, label %160, label %182, !dbg !3944

; <label>:160:                                    ; preds = %154
  %161 = load %struct._thread_event*, %struct._thread_event** %9, align 8, !dbg !3945
  %162 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %161, i32 0, i32 1, !dbg !3948
  %163 = load %struct._thread*, %struct._thread** %162, align 8, !dbg !3948
  %164 = icmp ne %struct._thread* %163, null, !dbg !3945
  br i1 %164, label %172, label %165, !dbg !3949

; <label>:165:                                    ; preds = %160
  %166 = load %struct._thread_event*, %struct._thread_event** %9, align 8, !dbg !3950
  %167 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %166, i32 0, i32 3, !dbg !3952
  %168 = load i32, i32* %167, align 8, !dbg !3952
  %169 = load %struct.epoll_event*, %struct.epoll_event** %8, align 8, !dbg !3953
  %170 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %169, i32 0, i32 0, !dbg !3954
  %171 = load i32, i32* %170, align 1, !dbg !3954
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.47, i32 0, i32 0), i32 %168, i32 %171), !dbg !3955
  br label %172, !dbg !3956

; <label>:172:                                    ; preds = %165, %160
  %173 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !3957
  %174 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !3958
  %175 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %174, i32 0, i32 1, !dbg !3959
  %176 = load %struct._thread_event*, %struct._thread_event** %9, align 8, !dbg !3960
  %177 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %176, i32 0, i32 1, !dbg !3961
  %178 = load %struct._thread*, %struct._thread** %177, align 8, !dbg !3961
  %179 = call i32 @thread_move_ready(%struct._thread_master* %173, %struct.rb_root* %175, %struct._thread* %178, i32 13), !dbg !3962
  %180 = load %struct._thread_event*, %struct._thread_event** %9, align 8, !dbg !3963
  %181 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %180, i32 0, i32 1, !dbg !3964
  store %struct._thread* null, %struct._thread** %181, align 8, !dbg !3965
  br label %182, !dbg !3966

; <label>:182:                                    ; preds = %172, %154
  %183 = load %struct.epoll_event*, %struct.epoll_event** %8, align 8, !dbg !3967
  %184 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %183, i32 0, i32 0, !dbg !3969
  %185 = load i32, i32* %184, align 1, !dbg !3969
  %186 = and i32 %185, 16, !dbg !3970
  %187 = icmp ne i32 %186, 0, !dbg !3970
  br i1 %187, label %188, label %192, !dbg !3971

; <label>:188:                                    ; preds = %182
  %189 = load %struct._thread_event*, %struct._thread_event** %9, align 8, !dbg !3972
  %190 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %189, i32 0, i32 3, !dbg !3974
  %191 = load i32, i32* %190, align 8, !dbg !3974
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.48, i32 0, i32 0), i32 %191), !dbg !3975
  br label %192, !dbg !3976

; <label>:192:                                    ; preds = %188, %182
  %193 = load %struct.epoll_event*, %struct.epoll_event** %8, align 8, !dbg !3977
  %194 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %193, i32 0, i32 0, !dbg !3979
  %195 = load i32, i32* %194, align 1, !dbg !3979
  %196 = and i32 %195, 8, !dbg !3980
  %197 = icmp ne i32 %196, 0, !dbg !3980
  br i1 %197, label %198, label %202, !dbg !3981

; <label>:198:                                    ; preds = %192
  %199 = load %struct._thread_event*, %struct._thread_event** %9, align 8, !dbg !3982
  %200 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %199, i32 0, i32 3, !dbg !3984
  %201 = load i32, i32* %200, align 8, !dbg !3984
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.49, i32 0, i32 0), i32 %201), !dbg !3985
  br label %202, !dbg !3986

; <label>:202:                                    ; preds = %198, %192
  br label %203, !dbg !3987

; <label>:203:                                    ; preds = %202, %125
  %204 = load i32, i32* %7, align 4, !dbg !3988
  %205 = add nsw i32 %204, 1, !dbg !3988
  store i32 %205, i32* %7, align 4, !dbg !3988
  br label %74, !dbg !3990, !llvm.loop !3991

; <label>:206:                                    ; preds = %74
  %207 = call { i64, i64 } @set_time_now(), !dbg !3993
  %208 = bitcast %struct.timeval* %10 to { i64, i64 }*, !dbg !3993
  %209 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %208, i32 0, i32 0, !dbg !3993
  %210 = extractvalue { i64, i64 } %207, 0, !dbg !3993
  store i64 %210, i64* %209, align 8, !dbg !3993
  %211 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %208, i32 0, i32 1, !dbg !3993
  %212 = extractvalue { i64, i64 } %207, 1, !dbg !3993
  store i64 %212, i64* %211, align 8, !dbg !3993
  %213 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !3994
  %214 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %213, i32 0, i32 5, !dbg !3996
  %215 = getelementptr inbounds %struct.list_head, %struct.list_head* %214, i32 0, i32 0, !dbg !3997
  %216 = load %struct.list_head*, %struct.list_head** %215, align 8, !dbg !3997
  %217 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !3998
  %218 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %217, i32 0, i32 5, !dbg !3999
  %219 = icmp ne %struct.list_head* %216, %218, !dbg !4000
  br i1 %219, label %220, label %223, !dbg !4001

; <label>:220:                                    ; preds = %206
  %221 = load %struct._thread_master*, %struct._thread_master** %3, align 8, !dbg !4002
  %222 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %221, i32 0, i32 5, !dbg !4003
  store %struct.list_head* %222, %struct.list_head** %2, align 8, !dbg !4004
  br label %225, !dbg !4004

; <label>:223:                                    ; preds = %206
  br label %224, !dbg !4005

; <label>:224:                                    ; preds = %223, %72, %52
  br i1 true, label %33, label %225, !dbg !4006, !llvm.loop !3802

; <label>:225:                                    ; preds = %18, %29, %220, %224
  %226 = load %struct.list_head*, %struct.list_head** %2, align 8, !dbg !4008
  ret %struct.list_head* %226, !dbg !4008
}

; Function Attrs: nounwind uwtable
define internal %struct._thread* @thread_trim_head(%struct.list_head*) #0 !dbg !4009 {
  %2 = alloca %struct._thread*, align 8
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca %struct._thread*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct._thread*, align 8
  store %struct.list_head* %0, %struct.list_head** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %3, metadata !4012, metadata !298), !dbg !4013
  call void @llvm.dbg.declare(metadata %struct._thread** %4, metadata !4014, metadata !298), !dbg !4015
  %7 = load %struct.list_head*, %struct.list_head** %3, align 8, !dbg !4016
  %8 = call i32 @list_empty(%struct.list_head* %7), !dbg !4018
  %9 = icmp ne i32 %8, 0, !dbg !4018
  br i1 %9, label %10, label %11, !dbg !4019

; <label>:10:                                     ; preds = %1
  store %struct._thread* null, %struct._thread** %2, align 8, !dbg !4020
  br label %24, !dbg !4020

; <label>:11:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata %struct.list_head** %5, metadata !4021, metadata !298), !dbg !4023
  %12 = load %struct.list_head*, %struct.list_head** %3, align 8, !dbg !4024
  %13 = getelementptr inbounds %struct.list_head, %struct.list_head* %12, i32 0, i32 0, !dbg !4025
  %14 = load %struct.list_head*, %struct.list_head** %13, align 8, !dbg !4025
  store %struct.list_head* %14, %struct.list_head** %5, align 8, !dbg !4023
  %15 = load %struct.list_head*, %struct.list_head** %5, align 8, !dbg !4026
  %16 = bitcast %struct.list_head* %15 to i8*, !dbg !4027
  %17 = getelementptr inbounds i8, i8* %16, i64 -72, !dbg !4028
  %18 = bitcast i8* %17 to %struct._thread*, !dbg !4029
  store %struct._thread* %18, %struct._thread** %6, align 8, !dbg !4030
  %19 = load %struct._thread*, %struct._thread** %6, align 8, !dbg !4031
  store %struct._thread* %19, %struct._thread** %4, align 8, !dbg !4032
  %20 = load %struct._thread*, %struct._thread** %4, align 8, !dbg !4033
  %21 = getelementptr inbounds %struct._thread, %struct._thread* %20, i32 0, i32 8, !dbg !4034
  %22 = bitcast %union.anon.0* %21 to %struct.list_head*, !dbg !4034
  call void @list_del_init(%struct.list_head* %22), !dbg !4035
  %23 = load %struct._thread*, %struct._thread** %4, align 8, !dbg !4036
  store %struct._thread* %23, %struct._thread** %2, align 8, !dbg !4037
  br label %24, !dbg !4037

; <label>:24:                                     ; preds = %11, %10
  %25 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !4038
  ret %struct._thread* %25, !dbg !4038
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @thread_call(%struct._thread*) #6 !dbg !4039 {
  %2 = alloca %struct._thread*, align 8
  store %struct._thread* %0, %struct._thread** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %2, metadata !4040, metadata !298), !dbg !4041
  %3 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !4042
  %4 = getelementptr inbounds %struct._thread, %struct._thread* %3, i32 0, i32 3, !dbg !4043
  %5 = load i32 (%struct._thread*)*, i32 (%struct._thread*)** %4, align 8, !dbg !4043
  %6 = load %struct._thread*, %struct._thread** %2, align 8, !dbg !4044
  %7 = call i32 %5(%struct._thread* %6), !dbg !4045
  ret void, !dbg !4046
}

; Function Attrs: nounwind uwtable
define void @thread_child_handler(i8*, i32) #0 !dbg !4047 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4050, metadata !298), !dbg !4051
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4052, metadata !298), !dbg !4053
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4054, metadata !298), !dbg !4055
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4056, metadata !298), !dbg !4057
  br label %7, !dbg !4058

; <label>:7:                                      ; preds = %19, %2
  %8 = call i32 @waitpid(i32 -1, i32* %6, i32 1), !dbg !4059
  store i32 %8, i32* %5, align 4, !dbg !4061
  %9 = icmp ne i32 %8, 0, !dbg !4062
  br i1 %9, label %10, label %22, !dbg !4062

; <label>:10:                                     ; preds = %7
  %11 = load i32, i32* %5, align 4, !dbg !4063
  %12 = icmp eq i32 %11, -1, !dbg !4066
  br i1 %12, label %13, label %19, !dbg !4067

; <label>:13:                                     ; preds = %10
  %14 = call i32* @__errno_location() #1, !dbg !4068
  %15 = load i32, i32* %14, align 4, !dbg !4071
  %16 = icmp eq i32 %15, 10, !dbg !4072
  br i1 %16, label %17, label %18, !dbg !4073

; <label>:17:                                     ; preds = %13
  br label %22, !dbg !4074

; <label>:18:                                     ; preds = %13
  br label %19, !dbg !4075

; <label>:19:                                     ; preds = %18, %10
  %20 = load i32, i32* %5, align 4, !dbg !4076
  %21 = load i32, i32* %6, align 4, !dbg !4077
  call void @process_child_termination(i32 %20, i32 %21), !dbg !4078
  br label %7, !dbg !4079, !llvm.loop !4081

; <label>:22:                                     ; preds = %17, %7
  ret void, !dbg !4082
}

declare i32 @waitpid(i32, i32*, i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

; Function Attrs: nounwind uwtable
define internal void @process_child_termination(i32, i32) #0 !dbg !4083 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct._thread_master*, align 8
  %6 = alloca %struct._thread*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.rb_node*, align 8
  %9 = alloca %struct._thread*, align 8
  %10 = alloca %struct.rb_node*, align 8
  %11 = alloca %struct._thread*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4086, metadata !298), !dbg !4087
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !4088, metadata !298), !dbg !4089
  call void @llvm.dbg.declare(metadata %struct._thread_master** %5, metadata !4090, metadata !298), !dbg !4091
  %12 = load %struct._thread_master*, %struct._thread_master** @master, align 8, !dbg !4092
  store %struct._thread_master* %12, %struct._thread_master** %5, align 8, !dbg !4091
  call void @llvm.dbg.declare(metadata %struct._thread** %6, metadata !4093, metadata !298), !dbg !4094
  call void @llvm.dbg.declare(metadata i8* %7, metadata !4095, metadata !298), !dbg !4096
  store i8 0, i8* %7, align 1, !dbg !4096
  %13 = load i32, i32* @prog_type, align 4, !dbg !4097
  %14 = icmp eq i32 %13, 0, !dbg !4099
  br i1 %14, label %15, label %20, !dbg !4100

; <label>:15:                                     ; preds = %2
  %16 = load i32, i32* %4, align 4, !dbg !4101
  %17 = load i32, i32* %3, align 4, !dbg !4102
  %18 = call zeroext i1 @report_child_status(i32 %16, i32 %17, i8* null), !dbg !4103
  %19 = zext i1 %18 to i8, !dbg !4104
  store i8 %19, i8* %7, align 1, !dbg !4104
  br label %20, !dbg !4105

; <label>:20:                                     ; preds = %15, %2
  %21 = load %struct._thread* (i32)*, %struct._thread* (i32)** @child_finder, align 8, !dbg !4106
  %22 = icmp ne %struct._thread* (i32)* %21, null, !dbg !4106
  br i1 %22, label %23, label %27, !dbg !4108

; <label>:23:                                     ; preds = %20
  %24 = load %struct._thread* (i32)*, %struct._thread* (i32)** @child_finder, align 8, !dbg !4109
  %25 = load i32, i32* %3, align 4, !dbg !4110
  %26 = call %struct._thread* %24(i32 %25), !dbg !4109
  store %struct._thread* %26, %struct._thread** %6, align 8, !dbg !4111
  br label %77, !dbg !4112

; <label>:27:                                     ; preds = %20
  %28 = load %struct._thread_master*, %struct._thread_master** %5, align 8, !dbg !4113
  %29 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %28, i32 0, i32 3, !dbg !4116
  %30 = call %struct.rb_node* @rb_first(%struct.rb_root* %29), !dbg !4117
  %31 = icmp ne %struct.rb_node* %30, null, !dbg !4117
  br i1 %31, label %32, label %41, !dbg !4118

; <label>:32:                                     ; preds = %27
  call void @llvm.dbg.declare(metadata %struct.rb_node** %8, metadata !4119, metadata !298), !dbg !4121
  %33 = load %struct._thread_master*, %struct._thread_master** %5, align 8, !dbg !4122
  %34 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %33, i32 0, i32 3, !dbg !4124
  %35 = call %struct.rb_node* @rb_first(%struct.rb_root* %34), !dbg !4125
  store %struct.rb_node* %35, %struct.rb_node** %8, align 8, !dbg !4126
  %36 = load %struct.rb_node*, %struct.rb_node** %8, align 8, !dbg !4127
  %37 = bitcast %struct.rb_node* %36 to i8*, !dbg !4128
  %38 = getelementptr inbounds i8, i8* %37, i64 -72, !dbg !4129
  %39 = bitcast i8* %38 to %struct._thread*, !dbg !4130
  store %struct._thread* %39, %struct._thread** %9, align 8, !dbg !4131
  %40 = load %struct._thread*, %struct._thread** %9, align 8, !dbg !4132
  br label %42, !dbg !4133

; <label>:41:                                     ; preds = %27
  br label %42, !dbg !4134

; <label>:42:                                     ; preds = %41, %32
  %43 = phi %struct._thread* [ %40, %32 ], [ null, %41 ], !dbg !4136
  store %struct._thread* %43, %struct._thread** %6, align 8, !dbg !4138
  br label %44, !dbg !4139

; <label>:44:                                     ; preds = %74, %42
  %45 = load %struct._thread*, %struct._thread** %6, align 8, !dbg !4140
  %46 = icmp ne %struct._thread* %45, null, !dbg !4143
  br i1 %46, label %47, label %76, !dbg !4143

; <label>:47:                                     ; preds = %44
  %48 = load i32, i32* %3, align 4, !dbg !4144
  %49 = load %struct._thread*, %struct._thread** %6, align 8, !dbg !4147
  %50 = getelementptr inbounds %struct._thread, %struct._thread* %49, i32 0, i32 6, !dbg !4148
  %51 = bitcast %union.anon* %50 to %struct.anon*, !dbg !4149
  %52 = getelementptr inbounds %struct.anon, %struct.anon* %51, i32 0, i32 0, !dbg !4150
  %53 = load i32, i32* %52, align 8, !dbg !4150
  %54 = icmp eq i32 %48, %53, !dbg !4151
  br i1 %54, label %55, label %56, !dbg !4152

; <label>:55:                                     ; preds = %47
  br label %76, !dbg !4153

; <label>:56:                                     ; preds = %47
  br label %57, !dbg !4154

; <label>:57:                                     ; preds = %56
  %58 = load %struct._thread*, %struct._thread** %6, align 8, !dbg !4155
  %59 = getelementptr inbounds %struct._thread, %struct._thread* %58, i32 0, i32 8, !dbg !4157
  %60 = bitcast %union.anon.0* %59 to %struct.rb_node*, !dbg !4157
  %61 = call %struct.rb_node* @rb_next(%struct.rb_node* %60), !dbg !4158
  %62 = icmp ne %struct.rb_node* %61, null, !dbg !4158
  br i1 %62, label %63, label %73, !dbg !4159

; <label>:63:                                     ; preds = %57
  call void @llvm.dbg.declare(metadata %struct.rb_node** %10, metadata !4160, metadata !298), !dbg !4162
  %64 = load %struct._thread*, %struct._thread** %6, align 8, !dbg !4163
  %65 = getelementptr inbounds %struct._thread, %struct._thread* %64, i32 0, i32 8, !dbg !4165
  %66 = bitcast %union.anon.0* %65 to %struct.rb_node*, !dbg !4165
  %67 = call %struct.rb_node* @rb_next(%struct.rb_node* %66), !dbg !4166
  store %struct.rb_node* %67, %struct.rb_node** %10, align 8, !dbg !4167
  %68 = load %struct.rb_node*, %struct.rb_node** %10, align 8, !dbg !4168
  %69 = bitcast %struct.rb_node* %68 to i8*, !dbg !4169
  %70 = getelementptr inbounds i8, i8* %69, i64 -72, !dbg !4170
  %71 = bitcast i8* %70 to %struct._thread*, !dbg !4171
  store %struct._thread* %71, %struct._thread** %11, align 8, !dbg !4172
  %72 = load %struct._thread*, %struct._thread** %11, align 8, !dbg !4173
  br label %74, !dbg !4174

; <label>:73:                                     ; preds = %57
  br label %74, !dbg !4175

; <label>:74:                                     ; preds = %73, %63
  %75 = phi %struct._thread* [ %72, %63 ], [ null, %73 ], !dbg !4177
  store %struct._thread* %75, %struct._thread** %6, align 8, !dbg !4179
  br label %44, !dbg !4180, !llvm.loop !4181

; <label>:76:                                     ; preds = %55, %44
  br label %77

; <label>:77:                                     ; preds = %76, %23
  %78 = load %struct._thread*, %struct._thread** %6, align 8, !dbg !4183
  %79 = icmp ne %struct._thread* %78, null, !dbg !4183
  br i1 %79, label %81, label %80, !dbg !4185

; <label>:80:                                     ; preds = %77
  br label %111, !dbg !4186

; <label>:81:                                     ; preds = %77
  %82 = load i32, i32* %4, align 4, !dbg !4187
  %83 = load %struct._thread*, %struct._thread** %6, align 8, !dbg !4188
  %84 = getelementptr inbounds %struct._thread, %struct._thread* %83, i32 0, i32 6, !dbg !4189
  %85 = bitcast %union.anon* %84 to %struct.anon*, !dbg !4190
  %86 = getelementptr inbounds %struct.anon, %struct.anon* %85, i32 0, i32 1, !dbg !4191
  store i32 %82, i32* %86, align 4, !dbg !4192
  %87 = load void (%struct._thread*)*, void (%struct._thread*)** @child_remover, align 8, !dbg !4193
  %88 = icmp ne void (%struct._thread*)* %87, null, !dbg !4193
  br i1 %88, label %89, label %92, !dbg !4195

; <label>:89:                                     ; preds = %81
  %90 = load void (%struct._thread*)*, void (%struct._thread*)** @child_remover, align 8, !dbg !4196
  %91 = load %struct._thread*, %struct._thread** %6, align 8, !dbg !4197
  call void %90(%struct._thread* %91), !dbg !4196
  br label %92, !dbg !4196

; <label>:92:                                     ; preds = %89, %81
  %93 = load i8, i8* %7, align 1, !dbg !4198
  %94 = trunc i8 %93 to i1, !dbg !4198
  br i1 %94, label %95, label %105, !dbg !4200

; <label>:95:                                     ; preds = %92
  %96 = load %struct._thread*, %struct._thread** %6, align 8, !dbg !4201
  %97 = getelementptr inbounds %struct._thread, %struct._thread* %96, i32 0, i32 8, !dbg !4203
  %98 = bitcast %union.anon.0* %97 to %struct.rb_node*, !dbg !4203
  %99 = load %struct._thread_master*, %struct._thread_master** %5, align 8, !dbg !4204
  %100 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %99, i32 0, i32 3, !dbg !4205
  call void @rb_erase(%struct.rb_node* %98, %struct.rb_root* %100), !dbg !4206
  %101 = load %struct._thread_master*, %struct._thread_master** %5, align 8, !dbg !4207
  %102 = load %struct._thread*, %struct._thread** %6, align 8, !dbg !4208
  call void @thread_add_unuse(%struct._thread_master* %101, %struct._thread* %102), !dbg !4209
  %103 = load %struct._thread_master*, %struct._thread_master** %5, align 8, !dbg !4210
  %104 = call %struct._thread* @thread_add_terminate_event(%struct._thread_master* %103), !dbg !4211
  br label %111, !dbg !4212

; <label>:105:                                    ; preds = %92
  %106 = load %struct._thread_master*, %struct._thread_master** %5, align 8, !dbg !4213
  %107 = load %struct._thread_master*, %struct._thread_master** %5, align 8, !dbg !4214
  %108 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %107, i32 0, i32 3, !dbg !4215
  %109 = load %struct._thread*, %struct._thread** %6, align 8, !dbg !4216
  %110 = call i32 @thread_move_ready(%struct._thread_master* %106, %struct.rb_root* %108, %struct._thread* %109, i32 5), !dbg !4217
  br label %111

; <label>:111:                                    ; preds = %80, %105, %95
  ret void, !dbg !4218
}

; Function Attrs: nounwind uwtable
define void @thread_add_base_threads(%struct._thread_master*) #0 !dbg !4219 {
  %2 = alloca %struct._thread_master*, align 8
  store %struct._thread_master* %0, %struct._thread_master** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread_master** %2, metadata !4220, metadata !298), !dbg !4221
  %3 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !4222
  %4 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !4223
  %5 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %4, i32 0, i32 14, !dbg !4224
  %6 = load i32, i32* %5, align 4, !dbg !4224
  %7 = call %struct._thread* @thread_add_read(%struct._thread_master* %3, i32 (%struct._thread*)* @thread_timerfd_handler, i8* null, i32 %6, i64 -1), !dbg !4225
  %8 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !4226
  %9 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %8, i32 0, i32 15, !dbg !4227
  store %struct._thread* %7, %struct._thread** %9, align 8, !dbg !4228
  %10 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !4229
  call void @add_signal_read_thread(%struct._thread_master* %10), !dbg !4230
  ret void, !dbg !4231
}

; Function Attrs: nounwind uwtable
define void @launch_thread_scheduler(%struct._thread_master*) #0 !dbg !4232 {
  %2 = alloca %struct._thread_master*, align 8
  store %struct._thread_master* %0, %struct._thread_master** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread_master** %2, metadata !4233, metadata !298), !dbg !4234
  %3 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !4235
  %4 = bitcast %struct._thread_master* %3 to i8*, !dbg !4235
  call void @signal_set(i32 17, void (i8*, i32)* @thread_child_handler, i8* %4), !dbg !4236
  %5 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !4237
  call void @process_threads(%struct._thread_master* %5), !dbg !4238
  ret void, !dbg !4239
}

declare void @signal_set(i32, void (i8*, i32)*, i8*) #2

declare %struct._list* @alloc_mlist(void (i8*)*, void (%struct._IO_FILE*, i8*)*, i64) #2

declare void @list_add(%struct._list*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i64 @get_pid_hash(i32) #0 !dbg !4240 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !4243, metadata !298), !dbg !4244
  %3 = load i32, i32* %2, align 4, !dbg !4245
  %4 = zext i32 %3 to i64, !dbg !4246
  %5 = load i64, i64* @child_finder_list_size, align 8, !dbg !4247
  %6 = urem i64 %4, %5, !dbg !4248
  ret i64 %6, !dbg !4249
}

declare void @list_del(%struct._list*, i8*) #2

declare void @free_mlist(%struct._list*, i64) #2

; Function Attrs: nounwind uwtable
define internal i8* @get_end(i8*, i64) #0 !dbg !4250 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4253, metadata !298), !dbg !4254
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4255, metadata !298), !dbg !4256
  call void @llvm.dbg.declare(metadata i64* %6, metadata !4257, metadata !298), !dbg !4258
  %8 = load i8*, i8** %4, align 8, !dbg !4259
  %9 = call i64 @strlen(i8* %8) #8, !dbg !4260
  store i64 %9, i64* %6, align 8, !dbg !4258
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4261, metadata !298), !dbg !4262
  %10 = load i64, i64* %6, align 8, !dbg !4263
  %11 = load i64, i64* %5, align 8, !dbg !4265
  %12 = icmp ule i64 %10, %11, !dbg !4266
  br i1 %12, label %13, label %17, !dbg !4267

; <label>:13:                                     ; preds = %2
  %14 = load i8*, i8** %4, align 8, !dbg !4268
  %15 = load i64, i64* %6, align 8, !dbg !4269
  %16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !4270
  store i8* %16, i8** %3, align 8, !dbg !4271
  br label %51, !dbg !4271

; <label>:17:                                     ; preds = %2
  %18 = load i8*, i8** %4, align 8, !dbg !4272
  %19 = load i64, i64* %5, align 8, !dbg !4273
  %20 = getelementptr inbounds i8, i8* %18, i64 %19, !dbg !4274
  store i8* %20, i8** %7, align 8, !dbg !4275
  %21 = load i8*, i8** %7, align 8, !dbg !4276
  %22 = load i8, i8* %21, align 1, !dbg !4278
  %23 = sext i8 %22 to i32, !dbg !4278
  %24 = icmp eq i32 %23, 32, !dbg !4279
  br i1 %24, label %25, label %27, !dbg !4280

; <label>:25:                                     ; preds = %17
  %26 = load i8*, i8** %7, align 8, !dbg !4281
  store i8* %26, i8** %3, align 8, !dbg !4282
  br label %51, !dbg !4282

; <label>:27:                                     ; preds = %17
  br label %28, !dbg !4283

; <label>:28:                                     ; preds = %40, %27
  %29 = load i8*, i8** %7, align 8, !dbg !4284
  %30 = load i8*, i8** %4, align 8, !dbg !4286
  %31 = icmp ugt i8* %29, %30, !dbg !4287
  br i1 %31, label %32, label %38, !dbg !4288

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %7, align 8, !dbg !4289
  %34 = getelementptr inbounds i8, i8* %33, i32 -1, !dbg !4289
  store i8* %34, i8** %7, align 8, !dbg !4289
  %35 = load i8, i8* %34, align 1, !dbg !4291
  %36 = sext i8 %35 to i32, !dbg !4291
  %37 = icmp ne i32 %36, 32, !dbg !4292
  br label %38

; <label>:38:                                     ; preds = %32, %28
  %39 = phi i1 [ false, %28 ], [ %37, %32 ]
  br i1 %39, label %40, label %41, !dbg !4293

; <label>:40:                                     ; preds = %38
  br label %28, !dbg !4295, !llvm.loop !4297

; <label>:41:                                     ; preds = %38
  %42 = load i8*, i8** %7, align 8, !dbg !4298
  %43 = load i8*, i8** %4, align 8, !dbg !4300
  %44 = icmp ugt i8* %42, %43, !dbg !4301
  br i1 %44, label %45, label %47, !dbg !4302

; <label>:45:                                     ; preds = %41
  %46 = load i8*, i8** %7, align 8, !dbg !4303
  store i8* %46, i8** %3, align 8, !dbg !4304
  br label %51, !dbg !4304

; <label>:47:                                     ; preds = %41
  %48 = load i8*, i8** %4, align 8, !dbg !4305
  %49 = load i64, i64* %5, align 8, !dbg !4306
  %50 = getelementptr inbounds i8, i8* %48, i64 %49, !dbg !4307
  store i8* %50, i8** %3, align 8, !dbg !4308
  br label %51, !dbg !4308

; <label>:51:                                     ; preds = %47, %45, %25, %13
  %52 = load i8*, i8** %3, align 8, !dbg !4309
  ret i8* %52, !dbg !4309
}

declare i64 @read(i32, i8*, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @thread_rb_move_ready(%struct._thread_master*, %struct.rb_root*, i32) #0 !dbg !4310 {
  %4 = alloca %struct._thread_master*, align 8
  %5 = alloca %struct.rb_root*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._thread*, align 8
  %8 = alloca %struct._thread*, align 8
  %9 = alloca %struct.rb_node*, align 8
  %10 = alloca %struct._thread*, align 8
  %11 = alloca %struct.rb_node*, align 8
  %12 = alloca %struct._thread*, align 8
  store %struct._thread_master* %0, %struct._thread_master** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._thread_master** %4, metadata !4313, metadata !298), !dbg !4314
  store %struct.rb_root* %1, %struct.rb_root** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_root** %5, metadata !4315, metadata !298), !dbg !4316
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4317, metadata !298), !dbg !4318
  call void @llvm.dbg.declare(metadata %struct._thread** %7, metadata !4319, metadata !298), !dbg !4320
  call void @llvm.dbg.declare(metadata %struct._thread** %8, metadata !4321, metadata !298), !dbg !4322
  %13 = load %struct.rb_root*, %struct.rb_root** %5, align 8, !dbg !4323
  %14 = call %struct.rb_node* @rb_first(%struct.rb_root* %13), !dbg !4325
  %15 = icmp ne %struct.rb_node* %14, null, !dbg !4325
  br i1 %15, label %16, label %24, !dbg !4326

; <label>:16:                                     ; preds = %3
  call void @llvm.dbg.declare(metadata %struct.rb_node** %9, metadata !4327, metadata !298), !dbg !4329
  %17 = load %struct.rb_root*, %struct.rb_root** %5, align 8, !dbg !4330
  %18 = call %struct.rb_node* @rb_first(%struct.rb_root* %17), !dbg !4332
  store %struct.rb_node* %18, %struct.rb_node** %9, align 8, !dbg !4333
  %19 = load %struct.rb_node*, %struct.rb_node** %9, align 8, !dbg !4334
  %20 = bitcast %struct.rb_node* %19 to i8*, !dbg !4335
  %21 = getelementptr inbounds i8, i8* %20, i64 -72, !dbg !4336
  %22 = bitcast i8* %21 to %struct._thread*, !dbg !4337
  store %struct._thread* %22, %struct._thread** %10, align 8, !dbg !4338
  %23 = load %struct._thread*, %struct._thread** %10, align 8, !dbg !4339
  br label %25, !dbg !4340

; <label>:24:                                     ; preds = %3
  br label %25, !dbg !4341

; <label>:25:                                     ; preds = %24, %16
  %26 = phi %struct._thread* [ %23, %16 ], [ null, %24 ], !dbg !4343
  store %struct._thread* %26, %struct._thread** %7, align 8, !dbg !4345
  br label %27, !dbg !4346

; <label>:27:                                     ; preds = %102, %25
  %28 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !4347
  %29 = icmp ne %struct._thread* %28, null, !dbg !4347
  br i1 %29, label %30, label %49, !dbg !4350

; <label>:30:                                     ; preds = %27
  %31 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !4351
  %32 = getelementptr inbounds %struct._thread, %struct._thread* %31, i32 0, i32 8, !dbg !4353
  %33 = bitcast %union.anon.0* %32 to %struct.rb_node*, !dbg !4353
  %34 = call %struct.rb_node* @rb_next(%struct.rb_node* %33), !dbg !4354
  %35 = icmp ne %struct.rb_node* %34, null, !dbg !4354
  br i1 %35, label %36, label %46, !dbg !4355

; <label>:36:                                     ; preds = %30
  call void @llvm.dbg.declare(metadata %struct.rb_node** %11, metadata !4356, metadata !298), !dbg !4358
  %37 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !4359
  %38 = getelementptr inbounds %struct._thread, %struct._thread* %37, i32 0, i32 8, !dbg !4361
  %39 = bitcast %union.anon.0* %38 to %struct.rb_node*, !dbg !4361
  %40 = call %struct.rb_node* @rb_next(%struct.rb_node* %39), !dbg !4362
  store %struct.rb_node* %40, %struct.rb_node** %11, align 8, !dbg !4363
  %41 = load %struct.rb_node*, %struct.rb_node** %11, align 8, !dbg !4364
  %42 = bitcast %struct.rb_node* %41 to i8*, !dbg !4365
  %43 = getelementptr inbounds i8, i8* %42, i64 -72, !dbg !4366
  %44 = bitcast i8* %43 to %struct._thread*, !dbg !4367
  store %struct._thread* %44, %struct._thread** %12, align 8, !dbg !4368
  %45 = load %struct._thread*, %struct._thread** %12, align 8, !dbg !4369
  br label %47, !dbg !4370

; <label>:46:                                     ; preds = %30
  br label %47, !dbg !4371

; <label>:47:                                     ; preds = %46, %36
  %48 = phi %struct._thread* [ %45, %36 ], [ null, %46 ], !dbg !4373
  store %struct._thread* %48, %struct._thread** %8, align 8, !dbg !4375
  br label %49

; <label>:49:                                     ; preds = %47, %27
  %50 = phi i1 [ false, %27 ], [ true, %47 ]
  br i1 %50, label %51, label %104, !dbg !4376

; <label>:51:                                     ; preds = %49
  %52 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !4378
  %53 = getelementptr inbounds %struct._thread, %struct._thread* %52, i32 0, i32 5, !dbg !4381
  %54 = getelementptr inbounds %struct.timeval, %struct.timeval* %53, i32 0, i32 0, !dbg !4382
  %55 = load i64, i64* %54, align 8, !dbg !4382
  %56 = icmp eq i64 %55, -9223372036854775808, !dbg !4383
  br i1 %56, label %78, label %57, !dbg !4384

; <label>:57:                                     ; preds = %51
  %58 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @time_now, i32 0, i32 0), align 8, !dbg !4385
  %59 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !4387
  %60 = getelementptr inbounds %struct._thread, %struct._thread* %59, i32 0, i32 5, !dbg !4388
  %61 = getelementptr inbounds %struct.timeval, %struct.timeval* %60, i32 0, i32 0, !dbg !4385
  %62 = load i64, i64* %61, align 8, !dbg !4385
  %63 = icmp eq i64 %58, %62, !dbg !4389
  br i1 %63, label %64, label %71, !dbg !4390

; <label>:64:                                     ; preds = %57
  %65 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @time_now, i32 0, i32 1), align 8, !dbg !4391
  %66 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !4393
  %67 = getelementptr inbounds %struct._thread, %struct._thread* %66, i32 0, i32 5, !dbg !4394
  %68 = getelementptr inbounds %struct.timeval, %struct.timeval* %67, i32 0, i32 1, !dbg !4391
  %69 = load i64, i64* %68, align 8, !dbg !4391
  %70 = icmp slt i64 %65, %69, !dbg !4395
  br i1 %70, label %78, label %79, !dbg !4393

; <label>:71:                                     ; preds = %57
  %72 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @time_now, i32 0, i32 0), align 8, !dbg !4396
  %73 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !4398
  %74 = getelementptr inbounds %struct._thread, %struct._thread* %73, i32 0, i32 5, !dbg !4399
  %75 = getelementptr inbounds %struct.timeval, %struct.timeval* %74, i32 0, i32 0, !dbg !4396
  %76 = load i64, i64* %75, align 8, !dbg !4396
  %77 = icmp slt i64 %72, %76, !dbg !4400
  br i1 %77, label %78, label %79, !dbg !4401

; <label>:78:                                     ; preds = %71, %64, %51
  br label %104, !dbg !4402

; <label>:79:                                     ; preds = %71, %64
  %80 = load i32, i32* %6, align 4, !dbg !4403
  %81 = icmp eq i32 %80, 9, !dbg !4405
  br i1 %81, label %82, label %87, !dbg !4406

; <label>:82:                                     ; preds = %79
  %83 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !4407
  %84 = getelementptr inbounds %struct._thread, %struct._thread* %83, i32 0, i32 7, !dbg !4408
  %85 = load %struct._thread_event*, %struct._thread_event** %84, align 8, !dbg !4408
  %86 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %85, i32 0, i32 0, !dbg !4409
  store %struct._thread* null, %struct._thread** %86, align 8, !dbg !4410
  br label %96, !dbg !4407

; <label>:87:                                     ; preds = %79
  %88 = load i32, i32* %6, align 4, !dbg !4411
  %89 = icmp eq i32 %88, 8, !dbg !4413
  br i1 %89, label %90, label %95, !dbg !4414

; <label>:90:                                     ; preds = %87
  %91 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !4415
  %92 = getelementptr inbounds %struct._thread, %struct._thread* %91, i32 0, i32 7, !dbg !4416
  %93 = load %struct._thread_event*, %struct._thread_event** %92, align 8, !dbg !4416
  %94 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %93, i32 0, i32 1, !dbg !4417
  store %struct._thread* null, %struct._thread** %94, align 8, !dbg !4418
  br label %95, !dbg !4415

; <label>:95:                                     ; preds = %90, %87
  br label %96

; <label>:96:                                     ; preds = %95, %82
  %97 = load %struct._thread_master*, %struct._thread_master** %4, align 8, !dbg !4419
  %98 = load %struct.rb_root*, %struct.rb_root** %5, align 8, !dbg !4420
  %99 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !4421
  %100 = load i32, i32* %6, align 4, !dbg !4422
  %101 = call i32 @thread_move_ready(%struct._thread_master* %97, %struct.rb_root* %98, %struct._thread* %99, i32 %100), !dbg !4423
  br label %102, !dbg !4424

; <label>:102:                                    ; preds = %96
  %103 = load %struct._thread*, %struct._thread** %8, align 8, !dbg !4425
  store %struct._thread* %103, %struct._thread** %7, align 8, !dbg !4427
  br label %27, !dbg !4428, !llvm.loop !4429

; <label>:104:                                    ; preds = %78, %49
  ret i32 0, !dbg !4431
}

; Function Attrs: nounwind uwtable
define internal i32 @thread_move_ready(%struct._thread_master*, %struct.rb_root*, %struct._thread*, i32) #0 !dbg !4432 {
  %5 = alloca %struct._thread_master*, align 8
  %6 = alloca %struct.rb_root*, align 8
  %7 = alloca %struct._thread*, align 8
  %8 = alloca i32, align 4
  store %struct._thread_master* %0, %struct._thread_master** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._thread_master** %5, metadata !4435, metadata !298), !dbg !4436
  store %struct.rb_root* %1, %struct.rb_root** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_root** %6, metadata !4437, metadata !298), !dbg !4438
  store %struct._thread* %2, %struct._thread** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._thread** %7, metadata !4439, metadata !298), !dbg !4440
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !4441, metadata !298), !dbg !4442
  %9 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !4443
  %10 = getelementptr inbounds %struct._thread, %struct._thread* %9, i32 0, i32 8, !dbg !4444
  %11 = bitcast %union.anon.0* %10 to %struct.rb_node*, !dbg !4444
  %12 = load %struct.rb_root*, %struct.rb_root** %6, align 8, !dbg !4445
  call void @rb_erase(%struct.rb_node* %11, %struct.rb_root* %12), !dbg !4446
  br label %13, !dbg !4447, !llvm.loop !4448

; <label>:13:                                     ; preds = %4
  %14 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !4449
  %15 = getelementptr inbounds %struct._thread, %struct._thread* %14, i32 0, i32 8, !dbg !4452
  %16 = bitcast %union.anon.0* %15 to %struct.list_head*, !dbg !4452
  %17 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !4453
  %18 = getelementptr inbounds %struct._thread, %struct._thread* %17, i32 0, i32 8, !dbg !4454
  %19 = bitcast %union.anon.0* %18 to %struct.list_head*, !dbg !4454
  %20 = getelementptr inbounds %struct.list_head, %struct.list_head* %19, i32 0, i32 0, !dbg !4455
  store %struct.list_head* %16, %struct.list_head** %20, align 8, !dbg !4456
  %21 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !4457
  %22 = getelementptr inbounds %struct._thread, %struct._thread* %21, i32 0, i32 8, !dbg !4458
  %23 = bitcast %union.anon.0* %22 to %struct.list_head*, !dbg !4458
  %24 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !4459
  %25 = getelementptr inbounds %struct._thread, %struct._thread* %24, i32 0, i32 8, !dbg !4460
  %26 = bitcast %union.anon.0* %25 to %struct.list_head*, !dbg !4460
  %27 = getelementptr inbounds %struct.list_head, %struct.list_head* %26, i32 0, i32 1, !dbg !4461
  store %struct.list_head* %23, %struct.list_head** %27, align 8, !dbg !4462
  br label %28, !dbg !4463

; <label>:28:                                     ; preds = %13
  %29 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !4464
  %30 = getelementptr inbounds %struct._thread, %struct._thread* %29, i32 0, i32 8, !dbg !4465
  %31 = bitcast %union.anon.0* %30 to %struct.list_head*, !dbg !4465
  %32 = load %struct._thread_master*, %struct._thread_master** %5, align 8, !dbg !4466
  %33 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %32, i32 0, i32 5, !dbg !4467
  call void @list_add_tail(%struct.list_head* %31, %struct.list_head* %33), !dbg !4468
  %34 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !4469
  %35 = getelementptr inbounds %struct._thread, %struct._thread* %34, i32 0, i32 1, !dbg !4471
  %36 = load i32, i32* %35, align 8, !dbg !4471
  %37 = icmp ne i32 %36, 3, !dbg !4472
  br i1 %37, label %38, label %42, !dbg !4473

; <label>:38:                                     ; preds = %28
  %39 = load i32, i32* %8, align 4, !dbg !4474
  %40 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !4475
  %41 = getelementptr inbounds %struct._thread, %struct._thread* %40, i32 0, i32 1, !dbg !4476
  store i32 %39, i32* %41, align 8, !dbg !4477
  br label %42, !dbg !4475

; <label>:42:                                     ; preds = %38, %28
  ret i32 0, !dbg !4478
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @thread_event_cmp(%struct._thread_event*, %struct._thread_event*) #6 !dbg !4479 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._thread_event*, align 8
  %5 = alloca %struct._thread_event*, align 8
  store %struct._thread_event* %0, %struct._thread_event** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._thread_event** %4, metadata !4484, metadata !298), !dbg !4485
  store %struct._thread_event* %1, %struct._thread_event** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._thread_event** %5, metadata !4486, metadata !298), !dbg !4487
  %6 = load %struct._thread_event*, %struct._thread_event** %4, align 8, !dbg !4488
  %7 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %6, i32 0, i32 3, !dbg !4490
  %8 = load i32, i32* %7, align 8, !dbg !4490
  %9 = load %struct._thread_event*, %struct._thread_event** %5, align 8, !dbg !4491
  %10 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %9, i32 0, i32 3, !dbg !4492
  %11 = load i32, i32* %10, align 8, !dbg !4492
  %12 = icmp slt i32 %8, %11, !dbg !4493
  br i1 %12, label %13, label %14, !dbg !4494

; <label>:13:                                     ; preds = %2
  store i32 -1, i32* %3, align 4, !dbg !4495
  br label %24, !dbg !4495

; <label>:14:                                     ; preds = %2
  %15 = load %struct._thread_event*, %struct._thread_event** %4, align 8, !dbg !4496
  %16 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %15, i32 0, i32 3, !dbg !4498
  %17 = load i32, i32* %16, align 8, !dbg !4498
  %18 = load %struct._thread_event*, %struct._thread_event** %5, align 8, !dbg !4499
  %19 = getelementptr inbounds %struct._thread_event, %struct._thread_event* %18, i32 0, i32 3, !dbg !4500
  %20 = load i32, i32* %19, align 8, !dbg !4500
  %21 = icmp sgt i32 %17, %20, !dbg !4501
  br i1 %21, label %22, label %23, !dbg !4502

; <label>:22:                                     ; preds = %14
  store i32 1, i32* %3, align 4, !dbg !4503
  br label %24, !dbg !4503

; <label>:23:                                     ; preds = %14
  store i32 0, i32* %3, align 4, !dbg !4504
  br label %24, !dbg !4504

; <label>:24:                                     ; preds = %23, %22, %13
  %25 = load i32, i32* %3, align 4, !dbg !4505
  ret i32 %25, !dbg !4505
}

; Function Attrs: nounwind uwtable
define internal i32 @thread_events_resize(%struct._thread_master*, i32) #0 !dbg !4506 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._thread_master*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._thread_master* %0, %struct._thread_master** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._thread_master** %4, metadata !4509, metadata !298), !dbg !4510
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !4511, metadata !298), !dbg !4512
  call void @llvm.dbg.declare(metadata i32* %6, metadata !4513, metadata !298), !dbg !4514
  %7 = load i32, i32* %5, align 4, !dbg !4515
  %8 = load %struct._thread_master*, %struct._thread_master** %4, align 8, !dbg !4516
  %9 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %8, i32 0, i32 12, !dbg !4517
  %10 = load i32, i32* %9, align 4, !dbg !4518
  %11 = add i32 %10, %7, !dbg !4518
  store i32 %11, i32* %9, align 4, !dbg !4518
  %12 = load %struct._thread_master*, %struct._thread_master** %4, align 8, !dbg !4519
  %13 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %12, i32 0, i32 12, !dbg !4521
  %14 = load i32, i32* %13, align 4, !dbg !4521
  %15 = load %struct._thread_master*, %struct._thread_master** %4, align 8, !dbg !4522
  %16 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %15, i32 0, i32 11, !dbg !4523
  %17 = load i32, i32* %16, align 8, !dbg !4523
  %18 = icmp ult i32 %14, %17, !dbg !4524
  br i1 %18, label %19, label %20, !dbg !4525

; <label>:19:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !4526
  br label %58, !dbg !4526

; <label>:20:                                     ; preds = %2
  %21 = load %struct._thread_master*, %struct._thread_master** %4, align 8, !dbg !4527
  %22 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %21, i32 0, i32 12, !dbg !4528
  %23 = load i32, i32* %22, align 4, !dbg !4528
  %24 = udiv i32 %23, 64, !dbg !4529
  %25 = add i32 %24, 1, !dbg !4530
  store i32 %25, i32* %6, align 4, !dbg !4531
  %26 = load i32, i32* %6, align 4, !dbg !4532
  %27 = mul i32 %26, 64, !dbg !4532
  store i32 %27, i32* %6, align 4, !dbg !4532
  %28 = load %struct._thread_master*, %struct._thread_master** %4, align 8, !dbg !4533
  %29 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %28, i32 0, i32 9, !dbg !4535
  %30 = load %struct.epoll_event*, %struct.epoll_event** %29, align 8, !dbg !4535
  %31 = icmp ne %struct.epoll_event* %30, null, !dbg !4533
  br i1 %31, label %32, label %39, !dbg !4536

; <label>:32:                                     ; preds = %20
  %33 = load %struct._thread_master*, %struct._thread_master** %4, align 8, !dbg !4537
  %34 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %33, i32 0, i32 9, !dbg !4538
  %35 = load %struct.epoll_event*, %struct.epoll_event** %34, align 8, !dbg !4538
  %36 = bitcast %struct.epoll_event* %35 to i8*, !dbg !4537
  call void @free(i8* %36) #9, !dbg !4539
  %37 = load %struct._thread_master*, %struct._thread_master** %4, align 8, !dbg !4540
  %38 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %37, i32 0, i32 9, !dbg !4541
  store %struct.epoll_event* null, %struct.epoll_event** %38, align 8, !dbg !4542
  br label %39, !dbg !4543

; <label>:39:                                     ; preds = %32, %20
  %40 = load i32, i32* %6, align 4, !dbg !4544
  %41 = zext i32 %40 to i64, !dbg !4544
  %42 = mul i64 %41, 12, !dbg !4545
  %43 = call i8* @zalloc(i64 %42), !dbg !4546
  %44 = bitcast i8* %43 to %struct.epoll_event*, !dbg !4547
  %45 = load %struct._thread_master*, %struct._thread_master** %4, align 8, !dbg !4548
  %46 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %45, i32 0, i32 9, !dbg !4549
  store %struct.epoll_event* %44, %struct.epoll_event** %46, align 8, !dbg !4550
  %47 = load %struct._thread_master*, %struct._thread_master** %4, align 8, !dbg !4551
  %48 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %47, i32 0, i32 9, !dbg !4553
  %49 = load %struct.epoll_event*, %struct.epoll_event** %48, align 8, !dbg !4553
  %50 = icmp ne %struct.epoll_event* %49, null, !dbg !4551
  br i1 %50, label %54, label %51, !dbg !4554

; <label>:51:                                     ; preds = %39
  %52 = load %struct._thread_master*, %struct._thread_master** %4, align 8, !dbg !4555
  %53 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %52, i32 0, i32 11, !dbg !4557
  store i32 0, i32* %53, align 8, !dbg !4558
  store i32 -1, i32* %3, align 4, !dbg !4559
  br label %58, !dbg !4559

; <label>:54:                                     ; preds = %39
  %55 = load i32, i32* %6, align 4, !dbg !4560
  %56 = load %struct._thread_master*, %struct._thread_master** %4, align 8, !dbg !4561
  %57 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %56, i32 0, i32 11, !dbg !4562
  store i32 %55, i32* %57, align 8, !dbg !4563
  store i32 0, i32* %3, align 4, !dbg !4564
  br label %58, !dbg !4564

; <label>:58:                                     ; preds = %54, %51, %19
  %59 = load i32, i32* %3, align 4, !dbg !4565
  ret i32 %59, !dbg !4565
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @thread_get_id(%struct._thread_master*) #6 !dbg !4566 {
  %2 = alloca %struct._thread_master*, align 8
  store %struct._thread_master* %0, %struct._thread_master** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread_master** %2, metadata !4569, metadata !298), !dbg !4570
  %3 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !4571
  %4 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %3, i32 0, i32 17, !dbg !4572
  %5 = load i64, i64* %4, align 8, !dbg !4573
  %6 = add i64 %5, 1, !dbg !4573
  store i64 %6, i64* %4, align 8, !dbg !4573
  ret i64 %5, !dbg !4574
}

; Function Attrs: nounwind
declare i32 @epoll_ctl(i32, i32, i32, %struct.epoll_event*) #4

; Function Attrs: inlinehint nounwind uwtable
define internal void @__clear_bit(i32, i64*) #6 !dbg !4575 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !4576, metadata !298), !dbg !4577
  store i64* %1, i64** %4, align 8
  call void @llvm.dbg.declare(metadata i64** %4, metadata !4578, metadata !298), !dbg !4579
  %5 = load i32, i32* %3, align 4, !dbg !4580
  %6 = zext i32 %5 to i64, !dbg !4581
  %7 = urem i64 %6, 64, !dbg !4582
  %8 = shl i64 1, %7, !dbg !4583
  %9 = xor i64 %8, -1, !dbg !4584
  %10 = load i32, i32* %3, align 4, !dbg !4585
  %11 = zext i32 %10 to i64, !dbg !4586
  %12 = udiv i64 %11, 64, !dbg !4587
  %13 = load i64*, i64** %4, align 8, !dbg !4588
  %14 = getelementptr inbounds i64, i64* %13, i64 %12, !dbg !4588
  %15 = load i64, i64* %14, align 8, !dbg !4589
  %16 = and i64 %15, %9, !dbg !4589
  store i64 %16, i64* %14, align 8, !dbg !4589
  ret void, !dbg !4590
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @__list_add(%struct.list_head*, %struct.list_head*, %struct.list_head*) #6 !dbg !4591 {
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.list_head*, align 8
  store %struct.list_head* %0, %struct.list_head** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %4, metadata !4594, metadata !298), !dbg !4595
  store %struct.list_head* %1, %struct.list_head** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %5, metadata !4596, metadata !298), !dbg !4597
  store %struct.list_head* %2, %struct.list_head** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %6, metadata !4598, metadata !298), !dbg !4599
  %7 = load %struct.list_head*, %struct.list_head** %4, align 8, !dbg !4600
  %8 = load %struct.list_head*, %struct.list_head** %6, align 8, !dbg !4601
  %9 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !4602
  store %struct.list_head* %7, %struct.list_head** %9, align 8, !dbg !4603
  %10 = load %struct.list_head*, %struct.list_head** %6, align 8, !dbg !4604
  %11 = load %struct.list_head*, %struct.list_head** %4, align 8, !dbg !4605
  %12 = getelementptr inbounds %struct.list_head, %struct.list_head* %11, i32 0, i32 0, !dbg !4606
  store %struct.list_head* %10, %struct.list_head** %12, align 8, !dbg !4607
  %13 = load %struct.list_head*, %struct.list_head** %5, align 8, !dbg !4608
  %14 = load %struct.list_head*, %struct.list_head** %4, align 8, !dbg !4609
  %15 = getelementptr inbounds %struct.list_head, %struct.list_head* %14, i32 0, i32 1, !dbg !4610
  store %struct.list_head* %13, %struct.list_head** %15, align 8, !dbg !4611
  %16 = load %struct.list_head*, %struct.list_head** %4, align 8, !dbg !4612
  %17 = load %struct.list_head*, %struct.list_head** %5, align 8, !dbg !4613
  %18 = getelementptr inbounds %struct.list_head, %struct.list_head* %17, i32 0, i32 0, !dbg !4614
  store %struct.list_head* %16, %struct.list_head** %18, align 8, !dbg !4615
  ret void, !dbg !4616
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @__list_del(%struct.list_head*, %struct.list_head*) #6 !dbg !4617 {
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca %struct.list_head*, align 8
  store %struct.list_head* %0, %struct.list_head** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %3, metadata !4618, metadata !298), !dbg !4619
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %4, metadata !4620, metadata !298), !dbg !4621
  %5 = load %struct.list_head*, %struct.list_head** %3, align 8, !dbg !4622
  %6 = load %struct.list_head*, %struct.list_head** %4, align 8, !dbg !4623
  %7 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 1, !dbg !4624
  store %struct.list_head* %5, %struct.list_head** %7, align 8, !dbg !4625
  %8 = load %struct.list_head*, %struct.list_head** %4, align 8, !dbg !4626
  %9 = load %struct.list_head*, %struct.list_head** %3, align 8, !dbg !4627
  %10 = getelementptr inbounds %struct.list_head, %struct.list_head* %9, i32 0, i32 0, !dbg !4628
  store %struct.list_head* %8, %struct.list_head** %10, align 8, !dbg !4629
  ret void, !dbg !4630
}

; Function Attrs: nounwind uwtable
define internal void @thread_set_timer(%struct._thread_master*) #0 !dbg !4631 {
  %2 = alloca %struct._thread_master*, align 8
  %3 = alloca %struct.timeval, align 8
  %4 = alloca %struct.itimerspec, align 8
  %5 = alloca %struct.timeval, align 8
  store %struct._thread_master* %0, %struct._thread_master** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._thread_master** %2, metadata !4632, metadata !298), !dbg !4633
  call void @llvm.dbg.declare(metadata %struct.timeval* %3, metadata !4634, metadata !298), !dbg !4635
  call void @llvm.dbg.declare(metadata %struct.itimerspec* %4, metadata !4636, metadata !298), !dbg !4647
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1, !dbg !4648
  store i64 0, i64* %6, align 8, !dbg !4649
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0, !dbg !4648
  store i64 0, i64* %7, align 8, !dbg !4650
  %8 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !4651
  %9 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %8, i32 0, i32 2, !dbg !4652
  call void @thread_update_timer(%struct.rb_root* %9, %struct.timeval* %3), !dbg !4653
  %10 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !4654
  %11 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %10, i32 0, i32 1, !dbg !4655
  call void @thread_update_timer(%struct.rb_root* %11, %struct.timeval* %3), !dbg !4656
  %12 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !4657
  %13 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %12, i32 0, i32 0, !dbg !4658
  call void @thread_update_timer(%struct.rb_root* %13, %struct.timeval* %3), !dbg !4659
  %14 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !4660
  %15 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %14, i32 0, i32 3, !dbg !4661
  call void @thread_update_timer(%struct.rb_root* %15, %struct.timeval* %3), !dbg !4662
  %16 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0, !dbg !4663
  %17 = load i64, i64* %16, align 8, !dbg !4663
  %18 = icmp ne i64 %17, 0, !dbg !4665
  br i1 %18, label %23, label %19, !dbg !4666

; <label>:19:                                     ; preds = %1
  %20 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1, !dbg !4667
  %21 = load i64, i64* %20, align 8, !dbg !4667
  %22 = icmp ne i64 %21, 0, !dbg !4669
  br i1 %22, label %23, label %60, !dbg !4670

; <label>:23:                                     ; preds = %19, %1
  %24 = call { i64, i64 } @set_time_now(), !dbg !4671
  %25 = bitcast %struct.timeval* %5 to { i64, i64 }*, !dbg !4671
  %26 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %25, i32 0, i32 0, !dbg !4671
  %27 = extractvalue { i64, i64 } %24, 0, !dbg !4671
  store i64 %27, i64* %26, align 8, !dbg !4671
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %25, i32 0, i32 1, !dbg !4671
  %29 = extractvalue { i64, i64 } %24, 1, !dbg !4671
  store i64 %29, i64* %28, align 8, !dbg !4671
  br label %30, !dbg !4673, !llvm.loop !4674

; <label>:30:                                     ; preds = %23
  %31 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0, !dbg !4675
  %32 = load i64, i64* %31, align 8, !dbg !4675
  %33 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @time_now, i32 0, i32 0), align 8, !dbg !4675
  %34 = sub nsw i64 %32, %33, !dbg !4678
  %35 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0, !dbg !4675
  store i64 %34, i64* %35, align 8, !dbg !4678
  %36 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1, !dbg !4675
  %37 = load i64, i64* %36, align 8, !dbg !4675
  %38 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @time_now, i32 0, i32 1), align 8, !dbg !4675
  %39 = sub nsw i64 %37, %38, !dbg !4679
  %40 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1, !dbg !4675
  store i64 %39, i64* %40, align 8, !dbg !4679
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1, !dbg !4675
  %42 = load i64, i64* %41, align 8, !dbg !4675
  %43 = icmp slt i64 %42, 0, !dbg !4679
  br i1 %43, label %44, label %51, !dbg !4680

; <label>:44:                                     ; preds = %30
  %45 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0, !dbg !4681
  %46 = load i64, i64* %45, align 8, !dbg !4685
  %47 = add nsw i64 %46, -1, !dbg !4685
  store i64 %47, i64* %45, align 8, !dbg !4685
  %48 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1, !dbg !4681
  %49 = load i64, i64* %48, align 8, !dbg !4686
  %50 = add nsw i64 %49, 1000000, !dbg !4686
  store i64 %50, i64* %48, align 8, !dbg !4686
  br label %51, !dbg !4687

; <label>:51:                                     ; preds = %44, %30
  br label %52, !dbg !4688

; <label>:52:                                     ; preds = %51
  %53 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0, !dbg !4690
  %54 = load i64, i64* %53, align 8, !dbg !4690
  %55 = icmp slt i64 %54, 0, !dbg !4692
  br i1 %55, label %56, label %59, !dbg !4693

; <label>:56:                                     ; preds = %52
  %57 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1, !dbg !4694
  store i64 0, i64* %57, align 8, !dbg !4696
  %58 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0, !dbg !4694
  store i64 0, i64* %58, align 8, !dbg !4697
  br label %59, !dbg !4698

; <label>:59:                                     ; preds = %56, %52
  br label %63, !dbg !4699

; <label>:60:                                     ; preds = %19
  %61 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0, !dbg !4700
  store i64 9223372036854775807, i64* %61, align 8, !dbg !4702
  %62 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1, !dbg !4703
  store i64 0, i64* %62, align 8, !dbg !4704
  br label %63

; <label>:63:                                     ; preds = %60, %59
  %64 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0, !dbg !4705
  %65 = load i64, i64* %64, align 8, !dbg !4705
  %66 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %4, i32 0, i32 1, !dbg !4706
  %67 = getelementptr inbounds %struct.timespec, %struct.timespec* %66, i32 0, i32 0, !dbg !4707
  store i64 %65, i64* %67, align 8, !dbg !4708
  %68 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0, !dbg !4709
  %69 = load i64, i64* %68, align 8, !dbg !4709
  %70 = icmp ne i64 %69, 0, !dbg !4711
  br i1 %70, label %78, label %71, !dbg !4712

; <label>:71:                                     ; preds = %63
  %72 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1, !dbg !4713
  %73 = load i64, i64* %72, align 8, !dbg !4713
  %74 = icmp ne i64 %73, 0, !dbg !4715
  br i1 %74, label %78, label %75, !dbg !4716

; <label>:75:                                     ; preds = %71
  %76 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %4, i32 0, i32 1, !dbg !4717
  %77 = getelementptr inbounds %struct.timespec, %struct.timespec* %76, i32 0, i32 1, !dbg !4719
  store i64 1, i64* %77, align 8, !dbg !4720
  br label %84, !dbg !4721

; <label>:78:                                     ; preds = %71, %63
  %79 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1, !dbg !4722
  %80 = load i64, i64* %79, align 8, !dbg !4722
  %81 = mul nsw i64 %80, 1000, !dbg !4723
  %82 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %4, i32 0, i32 1, !dbg !4724
  %83 = getelementptr inbounds %struct.timespec, %struct.timespec* %82, i32 0, i32 1, !dbg !4725
  store i64 %81, i64* %83, align 8, !dbg !4726
  br label %84

; <label>:84:                                     ; preds = %78, %75
  %85 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %4, i32 0, i32 0, !dbg !4727
  %86 = getelementptr inbounds %struct.timespec, %struct.timespec* %85, i32 0, i32 1, !dbg !4728
  store i64 0, i64* %86, align 8, !dbg !4729
  %87 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %4, i32 0, i32 0, !dbg !4730
  %88 = getelementptr inbounds %struct.timespec, %struct.timespec* %87, i32 0, i32 0, !dbg !4731
  store i64 0, i64* %88, align 8, !dbg !4732
  %89 = load %struct._thread_master*, %struct._thread_master** %2, align 8, !dbg !4733
  %90 = getelementptr inbounds %struct._thread_master, %struct._thread_master* %89, i32 0, i32 14, !dbg !4734
  %91 = load i32, i32* %90, align 4, !dbg !4734
  %92 = call i32 @timerfd_settime(i32 %91, i32 0, %struct.itimerspec* %4, %struct.itimerspec* null) #9, !dbg !4735
  ret void, !dbg !4736
}

declare i32 @epoll_wait(i32, %struct.epoll_event*, i32, i32) #2

; Function Attrs: nounwind
declare i8* @strerror(i32) #4

declare i32 @sleep(i32) #2

; Function Attrs: nounwind uwtable
define internal void @thread_update_timer(%struct.rb_root*, %struct.timeval*) #0 !dbg !4737 {
  %3 = alloca %struct.rb_root*, align 8
  %4 = alloca %struct.timeval*, align 8
  %5 = alloca %struct._thread*, align 8
  %6 = alloca %struct.rb_node*, align 8
  %7 = alloca %struct._thread*, align 8
  store %struct.rb_root* %0, %struct.rb_root** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.rb_root** %3, metadata !4741, metadata !298), !dbg !4742
  store %struct.timeval* %1, %struct.timeval** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval** %4, metadata !4743, metadata !298), !dbg !4744
  call void @llvm.dbg.declare(metadata %struct._thread** %5, metadata !4745, metadata !298), !dbg !4746
  %8 = load %struct.rb_root*, %struct.rb_root** %3, align 8, !dbg !4747
  %9 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %8, i32 0, i32 0, !dbg !4749
  %10 = load %struct.rb_node*, %struct.rb_node** %9, align 8, !dbg !4749
  %11 = icmp ne %struct.rb_node* %10, null, !dbg !4747
  br i1 %11, label %13, label %12, !dbg !4750

; <label>:12:                                     ; preds = %2
  br label %81, !dbg !4751

; <label>:13:                                     ; preds = %2
  %14 = load %struct.rb_root*, %struct.rb_root** %3, align 8, !dbg !4752
  %15 = call %struct.rb_node* @rb_first(%struct.rb_root* %14), !dbg !4753
  %16 = icmp ne %struct.rb_node* %15, null, !dbg !4753
  br i1 %16, label %17, label %25, !dbg !4754

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.declare(metadata %struct.rb_node** %6, metadata !4755, metadata !298), !dbg !4757
  %18 = load %struct.rb_root*, %struct.rb_root** %3, align 8, !dbg !4758
  %19 = call %struct.rb_node* @rb_first(%struct.rb_root* %18), !dbg !4760
  store %struct.rb_node* %19, %struct.rb_node** %6, align 8, !dbg !4761
  %20 = load %struct.rb_node*, %struct.rb_node** %6, align 8, !dbg !4762
  %21 = bitcast %struct.rb_node* %20 to i8*, !dbg !4763
  %22 = getelementptr inbounds i8, i8* %21, i64 -72, !dbg !4764
  %23 = bitcast i8* %22 to %struct._thread*, !dbg !4765
  store %struct._thread* %23, %struct._thread** %7, align 8, !dbg !4766
  %24 = load %struct._thread*, %struct._thread** %7, align 8, !dbg !4767
  br label %26, !dbg !4768

; <label>:25:                                     ; preds = %13
  br label %26, !dbg !4769

; <label>:26:                                     ; preds = %25, %17
  %27 = phi %struct._thread* [ %24, %17 ], [ null, %25 ], !dbg !4771
  store %struct._thread* %27, %struct._thread** %5, align 8, !dbg !4773
  %28 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !4774
  %29 = icmp ne %struct._thread* %28, null, !dbg !4774
  br i1 %29, label %31, label %30, !dbg !4776

; <label>:30:                                     ; preds = %26
  br label %81, !dbg !4777

; <label>:31:                                     ; preds = %26
  %32 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !4778
  %33 = getelementptr inbounds %struct._thread, %struct._thread* %32, i32 0, i32 5, !dbg !4780
  %34 = getelementptr inbounds %struct.timeval, %struct.timeval* %33, i32 0, i32 0, !dbg !4781
  %35 = load i64, i64* %34, align 8, !dbg !4781
  %36 = icmp eq i64 %35, -9223372036854775808, !dbg !4782
  br i1 %36, label %37, label %38, !dbg !4783

; <label>:37:                                     ; preds = %31
  br label %81, !dbg !4784

; <label>:38:                                     ; preds = %31
  %39 = load %struct.timeval*, %struct.timeval** %4, align 8, !dbg !4785
  %40 = getelementptr inbounds %struct.timeval, %struct.timeval* %39, i32 0, i32 0, !dbg !4787
  %41 = load i64, i64* %40, align 8, !dbg !4787
  %42 = icmp ne i64 %41, 0, !dbg !4788
  br i1 %42, label %48, label %43, !dbg !4789

; <label>:43:                                     ; preds = %38
  %44 = load %struct.timeval*, %struct.timeval** %4, align 8, !dbg !4790
  %45 = getelementptr inbounds %struct.timeval, %struct.timeval* %44, i32 0, i32 1, !dbg !4792
  %46 = load i64, i64* %45, align 8, !dbg !4792
  %47 = icmp ne i64 %46, 0, !dbg !4793
  br i1 %47, label %48, label %75, !dbg !4794

; <label>:48:                                     ; preds = %43, %38
  %49 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !4795
  %50 = getelementptr inbounds %struct._thread, %struct._thread* %49, i32 0, i32 5, !dbg !4796
  %51 = getelementptr inbounds %struct.timeval, %struct.timeval* %50, i32 0, i32 0, !dbg !4797
  %52 = load i64, i64* %51, align 8, !dbg !4797
  %53 = load %struct.timeval*, %struct.timeval** %4, align 8, !dbg !4798
  %54 = getelementptr inbounds %struct.timeval, %struct.timeval* %53, i32 0, i32 0, !dbg !4797
  %55 = load i64, i64* %54, align 8, !dbg !4797
  %56 = icmp eq i64 %52, %55, !dbg !4799
  br i1 %56, label %57, label %66, !dbg !4800

; <label>:57:                                     ; preds = %48
  %58 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !4801
  %59 = getelementptr inbounds %struct._thread, %struct._thread* %58, i32 0, i32 5, !dbg !4802
  %60 = getelementptr inbounds %struct.timeval, %struct.timeval* %59, i32 0, i32 1, !dbg !4803
  %61 = load i64, i64* %60, align 8, !dbg !4803
  %62 = load %struct.timeval*, %struct.timeval** %4, align 8, !dbg !4804
  %63 = getelementptr inbounds %struct.timeval, %struct.timeval* %62, i32 0, i32 1, !dbg !4803
  %64 = load i64, i64* %63, align 8, !dbg !4803
  %65 = icmp sle i64 %61, %64, !dbg !4804
  br i1 %65, label %75, label %81, !dbg !4801

; <label>:66:                                     ; preds = %48
  %67 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !4805
  %68 = getelementptr inbounds %struct._thread, %struct._thread* %67, i32 0, i32 5, !dbg !4807
  %69 = getelementptr inbounds %struct.timeval, %struct.timeval* %68, i32 0, i32 0, !dbg !4808
  %70 = load i64, i64* %69, align 8, !dbg !4808
  %71 = load %struct.timeval*, %struct.timeval** %4, align 8, !dbg !4809
  %72 = getelementptr inbounds %struct.timeval, %struct.timeval* %71, i32 0, i32 0, !dbg !4808
  %73 = load i64, i64* %72, align 8, !dbg !4808
  %74 = icmp sle i64 %70, %73, !dbg !4809
  br i1 %74, label %75, label %81, !dbg !4810

; <label>:75:                                     ; preds = %66, %57, %43
  %76 = load %struct.timeval*, %struct.timeval** %4, align 8, !dbg !4811
  %77 = load %struct._thread*, %struct._thread** %5, align 8, !dbg !4812
  %78 = getelementptr inbounds %struct._thread, %struct._thread* %77, i32 0, i32 5, !dbg !4813
  %79 = bitcast %struct.timeval* %76 to i8*, !dbg !4813
  %80 = bitcast %struct.timeval* %78 to i8*, !dbg !4813
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %79, i8* %80, i64 16, i32 8, i1 false), !dbg !4813
  br label %81, !dbg !4814

; <label>:81:                                     ; preds = %12, %30, %37, %75, %66, %57
  ret void, !dbg !4815
}

; Function Attrs: nounwind
declare i32 @timerfd_settime(i32, i32, %struct.itimerspec*, %struct.itimerspec*) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @list_empty(%struct.list_head*) #6 !dbg !4816 {
  %2 = alloca %struct.list_head*, align 8
  store %struct.list_head* %0, %struct.list_head** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %2, metadata !4821, metadata !298), !dbg !4822
  %3 = load %struct.list_head*, %struct.list_head** %2, align 8, !dbg !4823
  %4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !4824
  %5 = load %struct.list_head*, %struct.list_head** %4, align 8, !dbg !4824
  %6 = load %struct.list_head*, %struct.list_head** %2, align 8, !dbg !4825
  %7 = icmp eq %struct.list_head* %5, %6, !dbg !4826
  %8 = zext i1 %7 to i32, !dbg !4826
  ret i32 %8, !dbg !4827
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @list_del_init(%struct.list_head*) #6 !dbg !4828 {
  %2 = alloca %struct.list_head*, align 8
  store %struct.list_head* %0, %struct.list_head** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %2, metadata !4829, metadata !298), !dbg !4830
  %3 = load %struct.list_head*, %struct.list_head** %2, align 8, !dbg !4831
  %4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !4832
  %5 = load %struct.list_head*, %struct.list_head** %4, align 8, !dbg !4832
  %6 = load %struct.list_head*, %struct.list_head** %2, align 8, !dbg !4833
  %7 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !4834
  %8 = load %struct.list_head*, %struct.list_head** %7, align 8, !dbg !4834
  call void @__list_del(%struct.list_head* %5, %struct.list_head* %8), !dbg !4835
  br label %9, !dbg !4836, !llvm.loop !4837

; <label>:9:                                      ; preds = %1
  %10 = load %struct.list_head*, %struct.list_head** %2, align 8, !dbg !4838
  %11 = load %struct.list_head*, %struct.list_head** %2, align 8, !dbg !4841
  %12 = getelementptr inbounds %struct.list_head, %struct.list_head* %11, i32 0, i32 0, !dbg !4842
  store %struct.list_head* %10, %struct.list_head** %12, align 8, !dbg !4843
  %13 = load %struct.list_head*, %struct.list_head** %2, align 8, !dbg !4844
  %14 = load %struct.list_head*, %struct.list_head** %2, align 8, !dbg !4845
  %15 = getelementptr inbounds %struct.list_head, %struct.list_head* %14, i32 0, i32 1, !dbg !4846
  store %struct.list_head* %13, %struct.list_head** %15, align 8, !dbg !4847
  br label %16, !dbg !4848

; <label>:16:                                     ; preds = %9
  ret void, !dbg !4849
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!290, !291}
!llvm.ident = !{!292}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !62, globals: !261)
!1 = !DIFile(filename: "[inter]lib--scheduler.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!2 = !{!3, !24, !28, !33, !40, !45}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 41, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "scheduler.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
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
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !25, line: 23, size: 32, align: 32, elements: !26)
!25 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/epoll.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!26 = !{!27}
!27 = !DIEnumerator(name: "EPOLL_CLOEXEC", value: 524288)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !29, line: 23, size: 32, align: 32, elements: !30)
!29 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/timerfd.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!30 = !{!31, !32}
!31 = !DIEnumerator(name: "TFD_CLOEXEC", value: 524288)
!32 = !DIEnumerator(name: "TFD_NONBLOCK", value: 2048)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thread_flags", file: !4, line: 66, size: 32, align: 32, elements: !34)
!34 = !{!35, !36, !37, !38, !39}
!35 = !DIEnumerator(name: "THREAD_FL_READ_BIT", value: 0)
!36 = !DIEnumerator(name: "THREAD_FL_WRITE_BIT", value: 1)
!37 = !DIEnumerator(name: "THREAD_FL_EPOLL_BIT", value: 2)
!38 = !DIEnumerator(name: "THREAD_FL_EPOLL_READ_BIT", value: 3)
!39 = !DIEnumerator(name: "THREAD_FL_EPOLL_WRITE_BIT", value: 4)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 152, size: 32, align: 32, elements: !41)
!41 = !{!42, !43, !44}
!42 = !DIEnumerator(name: "PROG_TYPE_PARENT", value: 0)
!43 = !DIEnumerator(name: "PROG_TYPE_VRRP", value: 1)
!44 = !DIEnumerator(name: "PROG_TYPE_CHECKER", value: 2)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "EPOLL_EVENTS", file: !46, line: 40, size: 32, align: 32, elements: !47)
!46 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/epoll.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!47 = !{!48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61}
!48 = !DIEnumerator(name: "EPOLLIN", value: 1)
!49 = !DIEnumerator(name: "EPOLLPRI", value: 2)
!50 = !DIEnumerator(name: "EPOLLOUT", value: 4)
!51 = !DIEnumerator(name: "EPOLLRDNORM", value: 64)
!52 = !DIEnumerator(name: "EPOLLRDBAND", value: 128)
!53 = !DIEnumerator(name: "EPOLLWRNORM", value: 256)
!54 = !DIEnumerator(name: "EPOLLWRBAND", value: 512)
!55 = !DIEnumerator(name: "EPOLLMSG", value: 1024)
!56 = !DIEnumerator(name: "EPOLLERR", value: 8)
!57 = !DIEnumerator(name: "EPOLLHUP", value: 16)
!58 = !DIEnumerator(name: "EPOLLRDHUP", value: 8192)
!59 = !DIEnumerator(name: "EPOLLWAKEUP", value: 536870912)
!60 = !DIEnumerator(name: "EPOLLONESHOT", value: 1073741824)
!61 = !DIEnumerator(name: "EPOLLET", value: -2147483648)
!62 = !{!63, !64, !65, !202, !128, !110, !126, !197, !79}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!64 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_master_t", file: !4, line: 149, baseType: !67)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_master", file: !4, line: 112, size: 1280, align: 64, elements: !68)
!68 = !{!69, !82, !83, !84, !85, !93, !94, !95, !179, !180, !196, !252, !253, !254, !255, !256, !257, !258, !259}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !67, file: !4, line: 113, baseType: !70, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_root_t", file: !71, line: 109, baseType: !72)
!71 = !DIFile(filename: "rbtree.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !71, line: 106, size: 64, align: 64, elements: !73)
!73 = !{!74}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !72, file: !71, line: 108, baseType: !75, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !71, line: 97, size: 192, align: 64, elements: !77)
!77 = !{!78, !80, !81}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "rb_parent_color", scope: !76, file: !71, line: 99, baseType: !79, size: 64, align: 64)
!79 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !76, file: !71, line: 102, baseType: !75, size: 64, align: 64, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !76, file: !71, line: 103, baseType: !75, size: 64, align: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !67, file: !4, line: 114, baseType: !70, size: 64, align: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !67, file: !4, line: 115, baseType: !70, size: 64, align: 64, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !67, file: !4, line: 116, baseType: !70, size: 64, align: 64, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !67, file: !4, line: 117, baseType: !86, size: 128, align: 64, offset: 256)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "list_head_t", file: !87, line: 62, baseType: !88)
!87 = !DIFile(filename: "list_head.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !87, line: 60, size: 128, align: 64, elements: !89)
!89 = !{!90, !92}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !88, file: !87, line: 61, baseType: !91, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !88, file: !87, line: 61, baseType: !91, size: 64, align: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !67, file: !4, line: 121, baseType: !86, size: 128, align: 64, offset: 384)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "unuse", scope: !67, file: !4, line: 122, baseType: !86, size: 128, align: 64, offset: 512)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "child_pid_index", scope: !67, file: !4, line: 124, baseType: !96, size: 64, align: 64, offset: 640)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !97, line: 31, baseType: !98)
!97 = !DIFile(filename: "list.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_list", file: !97, line: 39, size: 320, align: 64, elements: !100)
!100 = !{!101, !108, !109, !111, !115}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !99, file: !97, line: 40, baseType: !102, size: 64, align: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !97, line: 33, size: 192, align: 64, elements: !104)
!104 = !{!105, !106, !107}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !103, file: !97, line: 34, baseType: !102, size: 64, align: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !103, file: !97, line: 35, baseType: !102, size: 64, align: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !103, file: !97, line: 36, baseType: !63, size: 64, align: 64, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !99, file: !97, line: 41, baseType: !102, size: 64, align: 64, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !99, file: !97, line: 42, baseType: !110, size: 32, align: 32, offset: 128)
!110 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !99, file: !97, line: 43, baseType: !112, size: 64, align: 64, offset: 192)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !63}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !99, file: !97, line: 44, baseType: !116, size: 64, align: 64, offset: 256)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, align: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{null, !119, !63}
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !121, line: 48, baseType: !122)
!121 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !123, line: 241, size: 1728, align: 64, elements: !124)
!123 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!124 = !{!125, !127, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !148, !149, !150, !151, !155, !157, !158, !162, !165, !167, !168, !169, !170, !171, !174, !175}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !122, file: !123, line: 242, baseType: !126, size: 32, align: 32)
!126 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !122, file: !123, line: 247, baseType: !128, size: 64, align: 64, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64, align: 64)
!129 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !122, file: !123, line: 248, baseType: !128, size: 64, align: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !122, file: !123, line: 249, baseType: !128, size: 64, align: 64, offset: 192)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !122, file: !123, line: 250, baseType: !128, size: 64, align: 64, offset: 256)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !122, file: !123, line: 251, baseType: !128, size: 64, align: 64, offset: 320)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !122, file: !123, line: 252, baseType: !128, size: 64, align: 64, offset: 384)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !122, file: !123, line: 253, baseType: !128, size: 64, align: 64, offset: 448)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !122, file: !123, line: 254, baseType: !128, size: 64, align: 64, offset: 512)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !122, file: !123, line: 256, baseType: !128, size: 64, align: 64, offset: 576)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !122, file: !123, line: 257, baseType: !128, size: 64, align: 64, offset: 640)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !122, file: !123, line: 258, baseType: !128, size: 64, align: 64, offset: 704)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !122, file: !123, line: 260, baseType: !141, size: 64, align: 64, offset: 768)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !123, line: 156, size: 192, align: 64, elements: !143)
!143 = !{!144, !145, !147}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !142, file: !123, line: 157, baseType: !141, size: 64, align: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !142, file: !123, line: 158, baseType: !146, size: 64, align: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !142, file: !123, line: 162, baseType: !126, size: 32, align: 32, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !122, file: !123, line: 262, baseType: !146, size: 64, align: 64, offset: 832)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !122, file: !123, line: 264, baseType: !126, size: 32, align: 32, offset: 896)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !122, file: !123, line: 268, baseType: !126, size: 32, align: 32, offset: 928)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !122, file: !123, line: 270, baseType: !152, size: 64, align: 64, offset: 960)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !153, line: 131, baseType: !154)
!153 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!154 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !122, file: !123, line: 274, baseType: !156, size: 16, align: 16, offset: 1024)
!156 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !122, file: !123, line: 275, baseType: !64, size: 8, align: 8, offset: 1040)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !122, file: !123, line: 276, baseType: !159, size: 8, align: 8, offset: 1048)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 8, align: 8, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 1)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !122, file: !123, line: 280, baseType: !163, size: 64, align: 64, offset: 1088)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64, align: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !123, line: 150, baseType: null)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !122, file: !123, line: 289, baseType: !166, size: 64, align: 64, offset: 1152)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !153, line: 132, baseType: !154)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !122, file: !123, line: 297, baseType: !63, size: 64, align: 64, offset: 1216)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !122, file: !123, line: 298, baseType: !63, size: 64, align: 64, offset: 1280)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !122, file: !123, line: 299, baseType: !63, size: 64, align: 64, offset: 1344)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !122, file: !123, line: 300, baseType: !63, size: 64, align: 64, offset: 1408)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !122, file: !123, line: 302, baseType: !172, size: 64, align: 64, offset: 1472)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !173, line: 216, baseType: !79)
!173 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !122, file: !123, line: 303, baseType: !126, size: 32, align: 32, offset: 1536)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !122, file: !123, line: 305, baseType: !176, size: 160, align: 8, offset: 1568)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 160, align: 8, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 20)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "io_events", scope: !67, file: !4, line: 127, baseType: !70, size: 64, align: 64, offset: 704)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_events", scope: !67, file: !4, line: 128, baseType: !181, size: 64, align: 64, offset: 768)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, align: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "epoll_event", file: !46, line: 87, size: 96, align: 8, elements: !183)
!183 = !{!184, !187}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !182, file: !46, line: 89, baseType: !185, size: 32, align: 32)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !186, line: 51, baseType: !110)
!186 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!187 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !182, file: !46, line: 90, baseType: !188, size: 64, align: 64, offset: 32)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "epoll_data_t", file: !46, line: 85, baseType: !189)
!189 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "epoll_data", file: !46, line: 79, size: 64, align: 64, elements: !190)
!190 = !{!191, !192, !193, !194}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !189, file: !46, line: 81, baseType: !63, size: 64, align: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !189, file: !46, line: 82, baseType: !126, size: 32, align: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "u32", scope: !189, file: !46, line: 83, baseType: !185, size: 32, align: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "u64", scope: !189, file: !46, line: 84, baseType: !195, size: 64, align: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !186, line: 55, baseType: !79)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "current_event", scope: !67, file: !4, line: 129, baseType: !197, size: 64, align: 64, offset: 832)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_event_t", file: !4, line: 109, baseType: !199)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread_event", file: !4, line: 102, size: 448, align: 64, elements: !200)
!200 = !{!201, !248, !249, !250, !251}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !199, file: !4, line: 103, baseType: !202, size: 64, align: 64)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_t", file: !4, line: 99, baseType: !204)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_thread", file: !4, line: 78, size: 768, align: 64, elements: !205)
!205 = !{!206, !207, !209, !211, !216, !217, !227, !240, !242}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !204, file: !4, line: 79, baseType: !79, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !204, file: !4, line: 80, baseType: !208, size: 32, align: 32, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "thread_type_t", file: !4, line: 63, baseType: !3)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !204, file: !4, line: 81, baseType: !210, size: 64, align: 64, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !204, file: !4, line: 82, baseType: !212, size: 64, align: 64, offset: 192)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!126, !215}
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !204, file: !4, line: 83, baseType: !63, size: 64, align: 64, offset: 256)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "sands", scope: !204, file: !4, line: 84, baseType: !218, size: 128, align: 64, offset: 320)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "timeval_t", file: !219, line: 31, baseType: !220)
!219 = !DIFile(filename: "timer.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !221, line: 30, size: 128, align: 64, elements: !222)
!221 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!222 = !{!223, !225}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !220, file: !221, line: 32, baseType: !224, size: 64, align: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !153, line: 139, baseType: !154)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !220, file: !221, line: 33, baseType: !226, size: 64, align: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !153, line: 141, baseType: !154)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !204, file: !4, line: 92, baseType: !228, size: 64, align: 32, offset: 448)
!228 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !204, file: !4, line: 85, size: 64, align: 32, elements: !229)
!229 = !{!230, !231, !232}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !228, file: !4, line: 86, baseType: !126, size: 32, align: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !228, file: !4, line: 87, baseType: !126, size: 32, align: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !228, file: !4, line: 91, baseType: !233, size: 64, align: 32)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !228, file: !4, line: 88, size: 64, align: 32, elements: !234)
!234 = !{!235, !239}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !233, file: !4, line: 89, baseType: !236, size: 32, align: 32)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !237, line: 61, baseType: !238)
!237 = !DIFile(filename: "/usr/include/signal.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !153, line: 133, baseType: !126)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !233, file: !4, line: 90, baseType: !126, size: 32, align: 32, offset: 32)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !204, file: !4, line: 93, baseType: !241, size: 64, align: 64, offset: 512)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, scope: !204, file: !4, line: 95, baseType: !243, size: 192, align: 64, offset: 576)
!243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !204, file: !4, line: 95, size: 192, align: 64, elements: !244)
!244 = !{!245, !247}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !243, file: !4, line: 96, baseType: !246, size: 192, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "rb_node_t", file: !71, line: 104, baseType: !76)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !243, file: !4, line: 97, baseType: !86, size: 128, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !199, file: !4, line: 104, baseType: !202, size: 64, align: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !199, file: !4, line: 105, baseType: !79, size: 64, align: 64, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !199, file: !4, line: 106, baseType: !126, size: 32, align: 32, offset: 192)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !199, file: !4, line: 108, baseType: !246, size: 192, align: 64, offset: 256)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_size", scope: !67, file: !4, line: 130, baseType: !110, size: 32, align: 32, offset: 896)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_count", scope: !67, file: !4, line: 131, baseType: !110, size: 32, align: 32, offset: 928)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_fd", scope: !67, file: !4, line: 132, baseType: !126, size: 32, align: 32, offset: 960)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "timer_fd", scope: !67, file: !4, line: 135, baseType: !126, size: 32, align: 32, offset: 992)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "timer_thread", scope: !67, file: !4, line: 136, baseType: !202, size: 64, align: 64, offset: 1024)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !67, file: !4, line: 146, baseType: !79, size: 64, align: 64, offset: 1088)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !67, file: !4, line: 147, baseType: !79, size: 64, align: 64, offset: 1152)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_timer_running", scope: !67, file: !4, line: 148, baseType: !260, size: 8, align: 8, offset: 1216)
!260 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!261 = !{!262, !264, !266, !267, !268, !270, !276, !280, !284, !285, !289}
!262 = distinct !DIGlobalVariable(name: "master", scope: !0, file: !263, line: 71, type: !65, isLocal: false, isDefinition: true, variable: %struct._thread_master** @master)
!263 = !DIFile(filename: "scheduler.c", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!264 = distinct !DIGlobalVariable(name: "prog_type", scope: !0, file: !263, line: 73, type: !265, isLocal: false, isDefinition: true, variable: i32* @prog_type)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "prog_type_t", file: !4, line: 163, baseType: !40)
!266 = distinct !DIGlobalVariable(name: "shutting_down", scope: !0, file: !263, line: 80, type: !260, isLocal: true, isDefinition: true, variable: i8* @shutting_down)
!267 = distinct !DIGlobalVariable(name: "sav_argc", scope: !0, file: !263, line: 81, type: !126, isLocal: true, isDefinition: true, variable: i32* @sav_argc)
!268 = distinct !DIGlobalVariable(name: "sav_argv", scope: !0, file: !263, line: 82, type: !269, isLocal: true, isDefinition: true, variable: i8*** @sav_argv)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!270 = distinct !DIGlobalVariable(name: "child_finder_name", scope: !0, file: !263, line: 95, type: !271, isLocal: true, isDefinition: true, variable: i8* (i32)** @child_finder_name)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64, align: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!274, !236}
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64, align: 64)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!276 = distinct !DIGlobalVariable(name: "child_adder", scope: !0, file: !263, line: 98, type: !277, isLocal: true, isDefinition: true, variable: void (%struct._thread*)** @child_adder)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64, align: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{null, !202}
!280 = distinct !DIGlobalVariable(name: "child_finder", scope: !0, file: !263, line: 99, type: !281, isLocal: true, isDefinition: true, variable: %struct._thread* (i32)** @child_finder)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64, align: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!202, !236}
!284 = distinct !DIGlobalVariable(name: "child_remover", scope: !0, file: !263, line: 100, type: !277, isLocal: true, isDefinition: true, variable: void (%struct._thread*)** @child_remover)
!285 = distinct !DIGlobalVariable(name: "child_finder_destroy", scope: !0, file: !263, line: 101, type: !286, isLocal: true, isDefinition: true, variable: void ()** @child_finder_destroy)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64, align: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{null}
!289 = distinct !DIGlobalVariable(name: "child_finder_list_size", scope: !0, file: !263, line: 102, type: !172, isLocal: true, isDefinition: true, variable: i64* @child_finder_list_size)
!290 = !{i32 2, !"Dwarf Version", i32 4}
!291 = !{i32 2, !"Debug Info Version", i32 3}
!292 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!293 = distinct !DISubprogram(name: "set_child_finder_name", scope: !263, file: !263, line: 394, type: !294, isLocal: false, isDefinition: true, scopeLine: 395, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!294 = !DISubroutineType(types: !295)
!295 = !{null, !271}
!296 = !{}
!297 = !DILocalVariable(name: "func", arg: 1, scope: !293, file: !263, line: 394, type: !271)
!298 = !DIExpression()
!299 = !DILocation(line: 394, column: 38, scope: !293)
!300 = !DILocation(line: 396, column: 22, scope: !293)
!301 = !DILocation(line: 396, column: 20, scope: !293)
!302 = !DILocation(line: 397, column: 1, scope: !293)
!303 = distinct !DISubprogram(name: "set_child_finder", scope: !263, file: !263, line: 400, type: !304, isLocal: false, isDefinition: true, scopeLine: 406, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!304 = !DISubroutineType(types: !305)
!305 = !{null, !277, !281, !277, !306, !286, !172}
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!260, !172}
!309 = !DILocalVariable(name: "adder_func", arg: 1, scope: !303, file: !263, line: 400, type: !277)
!310 = !DILocation(line: 400, column: 25, scope: !303)
!311 = !DILocalVariable(name: "finder_func", arg: 2, scope: !303, file: !263, line: 401, type: !281)
!312 = !DILocation(line: 401, column: 16, scope: !303)
!313 = !DILocalVariable(name: "remover_func", arg: 3, scope: !303, file: !263, line: 402, type: !277)
!314 = !DILocation(line: 402, column: 11, scope: !303)
!315 = !DILocalVariable(name: "init_func", arg: 4, scope: !303, file: !263, line: 403, type: !306)
!316 = !DILocation(line: 403, column: 10, scope: !303)
!317 = !DILocalVariable(name: "destroy_func", arg: 5, scope: !303, file: !263, line: 404, type: !286)
!318 = !DILocation(line: 404, column: 11, scope: !303)
!319 = !DILocalVariable(name: "num_entries", arg: 6, scope: !303, file: !263, line: 405, type: !172)
!320 = !DILocation(line: 405, column: 11, scope: !303)
!321 = !DILocalVariable(name: "using_child_finder", scope: !303, file: !263, line: 407, type: !260)
!322 = !DILocation(line: 407, column: 6, scope: !303)
!323 = !DILocation(line: 409, column: 6, scope: !324)
!324 = distinct !DILexicalBlock(scope: !303, file: !263, line: 409, column: 6)
!325 = !DILocation(line: 409, column: 6, scope: !303)
!326 = !DILocation(line: 410, column: 3, scope: !324)
!327 = !DILocation(line: 412, column: 6, scope: !328)
!328 = distinct !DILexicalBlock(scope: !303, file: !263, line: 412, column: 6)
!329 = !DILocation(line: 412, column: 17, scope: !328)
!330 = !DILocation(line: 412, column: 6, scope: !303)
!331 = !DILocation(line: 413, column: 33, scope: !332)
!332 = distinct !DILexicalBlock(scope: !333, file: !263, line: 413, column: 7)
!333 = distinct !DILexicalBlock(scope: !328, file: !263, line: 412, column: 33)
!334 = !DILocation(line: 413, column: 7, scope: !332)
!335 = !DILocation(line: 413, column: 7, scope: !333)
!336 = !DILocation(line: 414, column: 16, scope: !337)
!337 = distinct !DILexicalBlock(scope: !332, file: !263, line: 413, column: 47)
!338 = !DILocation(line: 415, column: 17, scope: !337)
!339 = !DILocation(line: 416, column: 18, scope: !337)
!340 = !DILocation(line: 417, column: 25, scope: !337)
!341 = !DILocation(line: 419, column: 23, scope: !337)
!342 = !DILocation(line: 420, column: 3, scope: !337)
!343 = !DILocation(line: 421, column: 2, scope: !333)
!344 = !DILocation(line: 421, column: 13, scope: !345)
!345 = !DILexicalBlockFile(scope: !346, file: !263, discriminator: 1)
!346 = distinct !DILexicalBlock(scope: !328, file: !263, line: 421, column: 13)
!347 = !DILocation(line: 421, column: 25, scope: !345)
!348 = !DILocation(line: 421, column: 28, scope: !349)
!349 = !DILexicalBlockFile(scope: !346, file: !263, discriminator: 2)
!350 = !DILocation(line: 421, column: 38, scope: !349)
!351 = !DILocation(line: 421, column: 41, scope: !352)
!352 = !DILexicalBlockFile(scope: !346, file: !263, discriminator: 3)
!353 = !DILocation(line: 421, column: 51, scope: !352)
!354 = !DILocation(line: 421, column: 13, scope: !352)
!355 = !DILocation(line: 422, column: 17, scope: !356)
!356 = distinct !DILexicalBlock(scope: !346, file: !263, line: 421, column: 65)
!357 = !DILocation(line: 422, column: 15, scope: !356)
!358 = !DILocation(line: 423, column: 18, scope: !356)
!359 = !DILocation(line: 423, column: 16, scope: !356)
!360 = !DILocation(line: 424, column: 19, scope: !356)
!361 = !DILocation(line: 424, column: 17, scope: !356)
!362 = !DILocation(line: 425, column: 26, scope: !356)
!363 = !DILocation(line: 425, column: 24, scope: !356)
!364 = !DILocation(line: 427, column: 22, scope: !356)
!365 = !DILocation(line: 428, column: 2, scope: !356)
!366 = !DILocation(line: 430, column: 6, scope: !367)
!367 = distinct !DILexicalBlock(scope: !303, file: !263, line: 430, column: 6)
!368 = !DILocation(line: 430, column: 6, scope: !303)
!369 = !DILocation(line: 431, column: 3, scope: !367)
!370 = !DILocation(line: 433, column: 15, scope: !371)
!371 = distinct !DILexicalBlock(scope: !367, file: !263, line: 432, column: 7)
!372 = !DILocation(line: 434, column: 16, scope: !371)
!373 = !DILocation(line: 435, column: 17, scope: !371)
!374 = !DILocation(line: 436, column: 24, scope: !371)
!375 = !DILocation(line: 438, column: 1, scope: !303)
!376 = distinct !DISubprogram(name: "default_child_finder_init", scope: !263, file: !263, line: 367, type: !307, isLocal: true, isDefinition: true, scopeLine: 368, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!377 = !DILocalVariable(name: "num_entries", arg: 1, scope: !376, file: !263, line: 367, type: !172)
!378 = !DILocation(line: 367, column: 34, scope: !376)
!379 = !DILocation(line: 369, column: 25, scope: !376)
!380 = !DILocation(line: 371, column: 6, scope: !381)
!381 = distinct !DILexicalBlock(scope: !376, file: !263, line: 371, column: 6)
!382 = !DILocation(line: 371, column: 18, scope: !381)
!383 = !DILocation(line: 371, column: 6, scope: !376)
!384 = !DILocation(line: 372, column: 3, scope: !381)
!385 = !DILocation(line: 376, column: 2, scope: !376)
!386 = !DILocation(line: 376, column: 22, scope: !387)
!387 = !DILexicalBlockFile(scope: !376, file: !263, discriminator: 1)
!388 = !DILocation(line: 376, column: 28, scope: !387)
!389 = !DILocation(line: 376, column: 32, scope: !387)
!390 = !DILocation(line: 376, column: 35, scope: !391)
!391 = !DILexicalBlockFile(scope: !376, file: !263, discriminator: 2)
!392 = !DILocation(line: 376, column: 58, scope: !391)
!393 = !DILocation(line: 376, column: 2, scope: !394)
!394 = !DILexicalBlockFile(scope: !376, file: !263, discriminator: 3)
!395 = !DILocation(line: 377, column: 26, scope: !376)
!396 = !DILocation(line: 376, column: 2, scope: !397)
!397 = !DILexicalBlockFile(scope: !376, file: !263, discriminator: 4)
!398 = distinct !{!398, !385}
!399 = !DILocation(line: 379, column: 51, scope: !376)
!400 = !DILocation(line: 379, column: 28, scope: !376)
!401 = !DILocation(line: 379, column: 2, scope: !376)
!402 = !DILocation(line: 379, column: 10, scope: !376)
!403 = !DILocation(line: 379, column: 26, scope: !376)
!404 = !DILocation(line: 381, column: 2, scope: !376)
!405 = !DILocation(line: 382, column: 1, scope: !376)
!406 = distinct !DISubprogram(name: "default_child_adder", scope: !263, file: !263, line: 337, type: !278, isLocal: true, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!407 = !DILocalVariable(name: "thread", arg: 1, scope: !406, file: !263, line: 337, type: !202)
!408 = !DILocation(line: 337, column: 31, scope: !406)
!409 = !DILocation(line: 339, column: 57, scope: !406)
!410 = !DILocation(line: 339, column: 65, scope: !406)
!411 = !DILocation(line: 339, column: 67, scope: !406)
!412 = !DILocation(line: 339, column: 69, scope: !406)
!413 = !DILocation(line: 339, column: 44, scope: !406)
!414 = !DILocation(line: 339, column: 12, scope: !406)
!415 = !DILocation(line: 339, column: 20, scope: !406)
!416 = !DILocation(line: 339, column: 28, scope: !406)
!417 = !DILocation(line: 339, column: 76, scope: !406)
!418 = !DILocation(line: 339, column: 2, scope: !419)
!419 = !DILexicalBlockFile(scope: !406, file: !263, discriminator: 1)
!420 = !DILocation(line: 340, column: 1, scope: !406)
!421 = distinct !DISubprogram(name: "default_child_finder", scope: !263, file: !263, line: 343, type: !282, isLocal: true, isDefinition: true, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!422 = !DILocalVariable(name: "pid", arg: 1, scope: !421, file: !263, line: 343, type: !236)
!423 = !DILocation(line: 343, column: 28, scope: !421)
!424 = !DILocalVariable(name: "thread", scope: !421, file: !263, line: 345, type: !202)
!425 = !DILocation(line: 345, column: 12, scope: !421)
!426 = !DILocalVariable(name: "e", scope: !421, file: !263, line: 346, type: !427)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "element", file: !97, line: 30, baseType: !102)
!428 = !DILocation(line: 346, column: 10, scope: !421)
!429 = !DILocalVariable(name: "l", scope: !421, file: !263, line: 347, type: !96)
!430 = !DILocation(line: 347, column: 7, scope: !421)
!431 = !DILocation(line: 347, column: 49, scope: !421)
!432 = !DILocation(line: 347, column: 36, scope: !421)
!433 = !DILocation(line: 347, column: 12, scope: !421)
!434 = !DILocation(line: 347, column: 20, scope: !421)
!435 = !DILocation(line: 349, column: 8, scope: !436)
!436 = distinct !DILexicalBlock(scope: !421, file: !263, line: 349, column: 6)
!437 = !DILocation(line: 349, column: 11, scope: !436)
!438 = !DILocation(line: 349, column: 5, scope: !436)
!439 = !DILocation(line: 349, column: 10, scope: !440)
!440 = !DILexicalBlockFile(scope: !436, file: !263, discriminator: 1)
!441 = !DILocation(line: 349, column: 14, scope: !440)
!442 = !DILocation(line: 349, column: 19, scope: !440)
!443 = !DILocation(line: 349, column: 5, scope: !440)
!444 = !DILocation(line: 349, column: 9, scope: !445)
!445 = !DILexicalBlockFile(scope: !436, file: !263, discriminator: 2)
!446 = !DILocation(line: 349, column: 13, scope: !445)
!447 = !DILocation(line: 349, column: 18, scope: !445)
!448 = !DILocation(line: 349, column: 6, scope: !445)
!449 = !DILocation(line: 350, column: 3, scope: !436)
!450 = !DILocation(line: 352, column: 15, scope: !451)
!451 = distinct !DILexicalBlock(scope: !421, file: !263, line: 352, column: 2)
!452 = !DILocation(line: 352, column: 14, scope: !451)
!453 = !DILocation(line: 352, column: 23, scope: !454)
!454 = !DILexicalBlockFile(scope: !451, file: !263, discriminator: 1)
!455 = !DILocation(line: 352, column: 22, scope: !454)
!456 = !DILocation(line: 352, column: 21, scope: !454)
!457 = !DILocation(line: 352, column: 21, scope: !458)
!458 = !DILexicalBlockFile(scope: !451, file: !263, discriminator: 2)
!459 = !DILocation(line: 352, column: 4, scope: !460)
!460 = !DILexicalBlockFile(scope: !451, file: !263, discriminator: 3)
!461 = !DILocation(line: 352, column: 8, scope: !460)
!462 = !DILocation(line: 352, column: 21, scope: !460)
!463 = !DILocation(line: 352, column: 21, scope: !464)
!464 = !DILexicalBlockFile(scope: !451, file: !263, discriminator: 4)
!465 = !DILocation(line: 352, column: 14, scope: !464)
!466 = !DILocation(line: 352, column: 14, scope: !467)
!467 = !DILexicalBlockFile(scope: !451, file: !263, discriminator: 5)
!468 = !DILocation(line: 352, column: 14, scope: !469)
!469 = !DILexicalBlockFile(scope: !451, file: !263, discriminator: 6)
!470 = !DILocation(line: 352, column: 11, scope: !469)
!471 = !DILocation(line: 352, column: 7, scope: !469)
!472 = !DILocation(line: 352, column: 5, scope: !473)
!473 = !DILexicalBlockFile(scope: !474, file: !263, discriminator: 7)
!474 = distinct !DILexicalBlock(scope: !451, file: !263, line: 352, column: 2)
!475 = !DILocation(line: 352, column: 4, scope: !473)
!476 = !DILocation(line: 352, column: 8, scope: !473)
!477 = !DILocation(line: 352, column: 25, scope: !478)
!478 = !DILexicalBlockFile(scope: !474, file: !263, discriminator: 8)
!479 = !DILocation(line: 352, column: 29, scope: !478)
!480 = !DILocation(line: 352, column: 23, scope: !478)
!481 = !DILocation(line: 352, column: 21, scope: !478)
!482 = !DILocation(line: 352, column: 2, scope: !483)
!483 = !DILexicalBlockFile(scope: !451, file: !263, discriminator: 9)
!484 = !DILocation(line: 353, column: 7, scope: !485)
!485 = distinct !DILexicalBlock(scope: !486, file: !263, line: 353, column: 7)
!486 = distinct !DILexicalBlock(scope: !474, file: !263, line: 352, column: 59)
!487 = !DILocation(line: 353, column: 15, scope: !485)
!488 = !DILocation(line: 353, column: 17, scope: !485)
!489 = !DILocation(line: 353, column: 19, scope: !485)
!490 = !DILocation(line: 353, column: 26, scope: !485)
!491 = !DILocation(line: 353, column: 23, scope: !485)
!492 = !DILocation(line: 353, column: 7, scope: !486)
!493 = !DILocation(line: 354, column: 11, scope: !485)
!494 = !DILocation(line: 354, column: 4, scope: !485)
!495 = !DILocation(line: 355, column: 2, scope: !486)
!496 = !DILocation(line: 352, column: 48, scope: !497)
!497 = !DILexicalBlockFile(scope: !474, file: !263, discriminator: 10)
!498 = !DILocation(line: 352, column: 52, scope: !497)
!499 = !DILocation(line: 352, column: 45, scope: !497)
!500 = !DILocation(line: 352, column: 2, scope: !497)
!501 = distinct !{!501, !502}
!502 = !DILocation(line: 352, column: 2, scope: !421)
!503 = !DILocation(line: 357, column: 2, scope: !421)
!504 = !DILocation(line: 358, column: 1, scope: !421)
!505 = distinct !DISubprogram(name: "default_child_remover", scope: !263, file: !263, line: 361, type: !278, isLocal: true, isDefinition: true, scopeLine: 362, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!506 = !DILocalVariable(name: "thread", arg: 1, scope: !505, file: !263, line: 361, type: !202)
!507 = !DILocation(line: 361, column: 33, scope: !505)
!508 = !DILocation(line: 363, column: 57, scope: !505)
!509 = !DILocation(line: 363, column: 65, scope: !505)
!510 = !DILocation(line: 363, column: 67, scope: !505)
!511 = !DILocation(line: 363, column: 69, scope: !505)
!512 = !DILocation(line: 363, column: 44, scope: !505)
!513 = !DILocation(line: 363, column: 12, scope: !505)
!514 = !DILocation(line: 363, column: 20, scope: !505)
!515 = !DILocation(line: 363, column: 28, scope: !505)
!516 = !DILocation(line: 363, column: 76, scope: !505)
!517 = !DILocation(line: 363, column: 2, scope: !518)
!518 = !DILexicalBlockFile(scope: !505, file: !263, discriminator: 1)
!519 = !DILocation(line: 364, column: 1, scope: !505)
!520 = distinct !DISubprogram(name: "default_child_finder_destroy", scope: !263, file: !263, line: 385, type: !287, isLocal: true, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!521 = !DILocation(line: 387, column: 6, scope: !522)
!522 = distinct !DILexicalBlock(scope: !520, file: !263, line: 387, column: 6)
!523 = !DILocation(line: 387, column: 14, scope: !522)
!524 = !DILocation(line: 387, column: 6, scope: !520)
!525 = !DILocation(line: 388, column: 14, scope: !526)
!526 = distinct !DILexicalBlock(scope: !522, file: !263, line: 387, column: 31)
!527 = !DILocation(line: 388, column: 22, scope: !526)
!528 = !DILocation(line: 388, column: 39, scope: !526)
!529 = !DILocation(line: 388, column: 3, scope: !526)
!530 = !DILocation(line: 389, column: 3, scope: !526)
!531 = !DILocation(line: 389, column: 11, scope: !526)
!532 = !DILocation(line: 389, column: 27, scope: !526)
!533 = !DILocation(line: 390, column: 2, scope: !526)
!534 = !DILocation(line: 391, column: 1, scope: !520)
!535 = distinct !DISubprogram(name: "set_child_remover", scope: !263, file: !263, line: 441, type: !536, isLocal: false, isDefinition: true, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!536 = !DISubroutineType(types: !537)
!537 = !{null, !277}
!538 = !DILocalVariable(name: "remover_func", arg: 1, scope: !535, file: !263, line: 441, type: !277)
!539 = !DILocation(line: 441, column: 26, scope: !535)
!540 = !DILocation(line: 443, column: 18, scope: !535)
!541 = !DILocation(line: 443, column: 16, scope: !535)
!542 = !DILocation(line: 444, column: 1, scope: !535)
!543 = distinct !DISubprogram(name: "destroy_child_finder", scope: !263, file: !263, line: 447, type: !287, isLocal: false, isDefinition: true, scopeLine: 448, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!544 = !DILocation(line: 449, column: 2, scope: !543)
!545 = !DILocation(line: 450, column: 1, scope: !543)
!546 = distinct !DISubprogram(name: "save_cmd_line_options", scope: !263, file: !263, line: 453, type: !547, isLocal: false, isDefinition: true, scopeLine: 454, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!547 = !DISubroutineType(types: !548)
!548 = !{null, !126, !269}
!549 = !DILocalVariable(name: "argc", arg: 1, scope: !546, file: !263, line: 453, type: !126)
!550 = !DILocation(line: 453, column: 27, scope: !546)
!551 = !DILocalVariable(name: "argv", arg: 2, scope: !546, file: !263, line: 453, type: !269)
!552 = !DILocation(line: 453, column: 40, scope: !546)
!553 = !DILocation(line: 455, column: 13, scope: !546)
!554 = !DILocation(line: 455, column: 11, scope: !546)
!555 = !DILocation(line: 456, column: 13, scope: !546)
!556 = !DILocation(line: 456, column: 11, scope: !546)
!557 = !DILocation(line: 457, column: 1, scope: !546)
!558 = distinct !DISubprogram(name: "log_command_line", scope: !263, file: !263, line: 505, type: !559, isLocal: false, isDefinition: true, scopeLine: 506, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!559 = !DISubroutineType(types: !560)
!560 = !{null, !110}
!561 = !DILocalVariable(name: "indent", arg: 1, scope: !558, file: !263, line: 505, type: !110)
!562 = !DILocation(line: 505, column: 27, scope: !558)
!563 = !DILocalVariable(name: "len", scope: !558, file: !263, line: 507, type: !172)
!564 = !DILocation(line: 507, column: 9, scope: !558)
!565 = !DILocalVariable(name: "log_str", scope: !558, file: !263, line: 508, type: !128)
!566 = !DILocation(line: 508, column: 8, scope: !558)
!567 = !DILocalVariable(name: "p", scope: !558, file: !263, line: 509, type: !128)
!568 = !DILocation(line: 509, column: 8, scope: !558)
!569 = !DILocalVariable(name: "i", scope: !558, file: !263, line: 510, type: !126)
!570 = !DILocation(line: 510, column: 6, scope: !558)
!571 = !DILocation(line: 512, column: 7, scope: !572)
!572 = distinct !DILexicalBlock(scope: !558, file: !263, line: 512, column: 6)
!573 = !DILocation(line: 512, column: 6, scope: !558)
!574 = !DILocation(line: 513, column: 3, scope: !572)
!575 = !DILocation(line: 515, column: 9, scope: !576)
!576 = distinct !DILexicalBlock(scope: !558, file: !263, line: 515, column: 2)
!577 = !DILocation(line: 515, column: 7, scope: !576)
!578 = !DILocation(line: 515, column: 14, scope: !579)
!579 = !DILexicalBlockFile(scope: !580, file: !263, discriminator: 1)
!580 = distinct !DILexicalBlock(scope: !576, file: !263, line: 515, column: 2)
!581 = !DILocation(line: 515, column: 18, scope: !579)
!582 = !DILocation(line: 515, column: 16, scope: !579)
!583 = !DILocation(line: 515, column: 2, scope: !579)
!584 = !DILocation(line: 516, column: 26, scope: !580)
!585 = !DILocation(line: 516, column: 17, scope: !580)
!586 = !DILocation(line: 516, column: 10, scope: !580)
!587 = !DILocation(line: 516, column: 30, scope: !580)
!588 = !DILocation(line: 516, column: 7, scope: !580)
!589 = !DILocation(line: 516, column: 3, scope: !580)
!590 = !DILocation(line: 515, column: 29, scope: !591)
!591 = !DILexicalBlockFile(scope: !580, file: !263, discriminator: 2)
!592 = !DILocation(line: 515, column: 2, scope: !591)
!593 = distinct !{!593, !594}
!594 = !DILocation(line: 515, column: 2, scope: !558)
!595 = !DILocation(line: 518, column: 20, scope: !558)
!596 = !DILocation(line: 518, column: 13, scope: !558)
!597 = !DILocation(line: 518, column: 10, scope: !558)
!598 = !DILocation(line: 520, column: 9, scope: !599)
!599 = distinct !DILexicalBlock(scope: !558, file: !263, line: 520, column: 2)
!600 = !DILocation(line: 520, column: 18, scope: !599)
!601 = !DILocation(line: 520, column: 16, scope: !599)
!602 = !DILocation(line: 520, column: 7, scope: !599)
!603 = !DILocation(line: 520, column: 27, scope: !604)
!604 = !DILexicalBlockFile(scope: !605, file: !263, discriminator: 1)
!605 = distinct !DILexicalBlock(scope: !599, file: !263, line: 520, column: 2)
!606 = !DILocation(line: 520, column: 31, scope: !604)
!607 = !DILocation(line: 520, column: 29, scope: !604)
!608 = !DILocation(line: 520, column: 2, scope: !604)
!609 = !DILocation(line: 521, column: 16, scope: !605)
!610 = !DILocation(line: 521, column: 29, scope: !605)
!611 = !DILocation(line: 521, column: 52, scope: !605)
!612 = !DILocation(line: 521, column: 43, scope: !605)
!613 = !DILocation(line: 521, column: 8, scope: !605)
!614 = !DILocation(line: 521, column: 5, scope: !605)
!615 = !DILocation(line: 521, column: 3, scope: !605)
!616 = !DILocation(line: 520, column: 42, scope: !617)
!617 = !DILexicalBlockFile(scope: !605, file: !263, discriminator: 2)
!618 = !DILocation(line: 520, column: 2, scope: !617)
!619 = distinct !{!619, !620}
!620 = !DILocation(line: 520, column: 2, scope: !558)
!621 = !DILocation(line: 523, column: 30, scope: !558)
!622 = !DILocation(line: 523, column: 39, scope: !558)
!623 = !DILocation(line: 523, column: 2, scope: !558)
!624 = !DILocation(line: 525, column: 8, scope: !558)
!625 = !DILocation(line: 525, column: 3, scope: !558)
!626 = !DILocation(line: 525, column: 28, scope: !558)
!627 = !DILocation(line: 526, column: 1, scope: !558)
!628 = !DILocation(line: 526, column: 1, scope: !629)
!629 = !DILexicalBlockFile(scope: !558, file: !263, discriminator: 1)
!630 = distinct !DISubprogram(name: "log_options", scope: !263, file: !263, line: 481, type: !631, isLocal: true, isDefinition: true, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!631 = !DISubroutineType(types: !632)
!632 = !{null, !274, !274, !110}
!633 = !DILocalVariable(name: "option", arg: 1, scope: !630, file: !263, line: 481, type: !274)
!634 = !DILocation(line: 481, column: 25, scope: !630)
!635 = !DILocalVariable(name: "option_str", arg: 2, scope: !630, file: !263, line: 481, type: !274)
!636 = !DILocation(line: 481, column: 45, scope: !630)
!637 = !DILocalVariable(name: "indent", arg: 3, scope: !630, file: !263, line: 481, type: !110)
!638 = !DILocation(line: 481, column: 66, scope: !630)
!639 = !DILocalVariable(name: "p", scope: !630, file: !263, line: 483, type: !274)
!640 = !DILocation(line: 483, column: 14, scope: !630)
!641 = !DILocation(line: 483, column: 18, scope: !630)
!642 = !DILocalVariable(name: "opt_len", scope: !630, file: !263, line: 484, type: !172)
!643 = !DILocation(line: 484, column: 9, scope: !630)
!644 = !DILocation(line: 484, column: 26, scope: !630)
!645 = !DILocation(line: 484, column: 19, scope: !630)
!646 = !DILocalVariable(name: "end", scope: !630, file: !263, line: 485, type: !274)
!647 = !DILocation(line: 485, column: 14, scope: !630)
!648 = !DILocalVariable(name: "first_line", scope: !630, file: !263, line: 486, type: !260)
!649 = !DILocation(line: 486, column: 6, scope: !630)
!650 = !DILocation(line: 488, column: 2, scope: !630)
!651 = !DILocation(line: 488, column: 10, scope: !652)
!652 = !DILexicalBlockFile(scope: !630, file: !263, discriminator: 1)
!653 = !DILocation(line: 488, column: 9, scope: !652)
!654 = !DILocation(line: 488, column: 2, scope: !652)
!655 = !DILocation(line: 490, column: 3, scope: !656)
!656 = distinct !DILexicalBlock(scope: !630, file: !263, line: 488, column: 13)
!657 = !DILocation(line: 490, column: 11, scope: !658)
!658 = !DILexicalBlockFile(scope: !656, file: !263, discriminator: 1)
!659 = !DILocation(line: 490, column: 10, scope: !658)
!660 = !DILocation(line: 490, column: 13, scope: !658)
!661 = !DILocation(line: 490, column: 3, scope: !658)
!662 = !DILocation(line: 491, column: 5, scope: !656)
!663 = !DILocation(line: 490, column: 3, scope: !664)
!664 = !DILexicalBlockFile(scope: !656, file: !263, discriminator: 2)
!665 = distinct !{!665, !655}
!666 = !DILocation(line: 493, column: 17, scope: !656)
!667 = !DILocation(line: 493, column: 26, scope: !656)
!668 = !DILocation(line: 493, column: 24, scope: !656)
!669 = !DILocation(line: 493, column: 9, scope: !656)
!670 = !DILocation(line: 493, column: 7, scope: !656)
!671 = !DILocation(line: 494, column: 7, scope: !672)
!672 = distinct !DILexicalBlock(scope: !656, file: !263, line: 494, column: 7)
!673 = !DILocation(line: 494, column: 7, scope: !656)
!674 = !DILocation(line: 495, column: 40, scope: !675)
!675 = distinct !DILexicalBlock(scope: !672, file: !263, line: 494, column: 19)
!676 = !DILocation(line: 495, column: 52, scope: !675)
!677 = !DILocation(line: 495, column: 66, scope: !675)
!678 = !DILocation(line: 495, column: 72, scope: !675)
!679 = !DILocation(line: 495, column: 70, scope: !675)
!680 = !DILocation(line: 495, column: 60, scope: !675)
!681 = !DILocation(line: 495, column: 76, scope: !675)
!682 = !DILocation(line: 495, column: 4, scope: !675)
!683 = !DILocation(line: 496, column: 15, scope: !675)
!684 = !DILocation(line: 497, column: 3, scope: !675)
!685 = !DILocation(line: 499, column: 42, scope: !672)
!686 = !DILocation(line: 499, column: 51, scope: !672)
!687 = !DILocation(line: 499, column: 49, scope: !672)
!688 = !DILocation(line: 499, column: 59, scope: !672)
!689 = !DILocation(line: 499, column: 36, scope: !672)
!690 = !DILocation(line: 499, column: 75, scope: !672)
!691 = !DILocation(line: 499, column: 81, scope: !672)
!692 = !DILocation(line: 499, column: 79, scope: !672)
!693 = !DILocation(line: 499, column: 69, scope: !672)
!694 = !DILocation(line: 499, column: 85, scope: !672)
!695 = !DILocation(line: 499, column: 4, scope: !672)
!696 = !DILocation(line: 500, column: 7, scope: !656)
!697 = !DILocation(line: 500, column: 5, scope: !656)
!698 = !DILocation(line: 488, column: 2, scope: !699)
!699 = !DILexicalBlockFile(scope: !630, file: !263, discriminator: 2)
!700 = distinct !{!700, !650}
!701 = !DILocation(line: 502, column: 1, scope: !630)
!702 = distinct !DISubprogram(name: "report_child_status", scope: !263, file: !263, line: 530, type: !703, isLocal: false, isDefinition: true, scopeLine: 531, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!703 = !DISubroutineType(types: !704)
!704 = !{!260, !126, !236, !274}
!705 = !DILocalVariable(name: "status", arg: 1, scope: !702, file: !263, line: 530, type: !126)
!706 = !DILocation(line: 530, column: 25, scope: !702)
!707 = !DILocalVariable(name: "pid", arg: 2, scope: !702, file: !263, line: 530, type: !236)
!708 = !DILocation(line: 530, column: 39, scope: !702)
!709 = !DILocalVariable(name: "prog_name", arg: 3, scope: !702, file: !263, line: 530, type: !274)
!710 = !DILocation(line: 530, column: 56, scope: !702)
!711 = !DILocalVariable(name: "prog_id", scope: !702, file: !263, line: 532, type: !274)
!712 = !DILocation(line: 532, column: 14, scope: !702)
!713 = !DILocalVariable(name: "pid_buf", scope: !702, file: !263, line: 533, type: !714)
!714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 96, align: 8, elements: !715)
!715 = !{!716}
!716 = !DISubrange(count: 12)
!717 = !DILocation(line: 533, column: 7, scope: !702)
!718 = !DILocalVariable(name: "exit_status", scope: !702, file: !263, line: 534, type: !126)
!719 = !DILocation(line: 534, column: 6, scope: !702)
!720 = !DILocation(line: 536, column: 6, scope: !721)
!721 = distinct !DILexicalBlock(scope: !702, file: !263, line: 536, column: 6)
!722 = !DILocation(line: 536, column: 6, scope: !702)
!723 = !DILocation(line: 537, column: 13, scope: !721)
!724 = !DILocation(line: 537, column: 11, scope: !721)
!725 = !DILocation(line: 537, column: 3, scope: !721)
!726 = !DILocation(line: 538, column: 11, scope: !727)
!727 = distinct !DILexicalBlock(scope: !721, file: !263, line: 538, column: 11)
!728 = !DILocation(line: 538, column: 11, scope: !721)
!729 = !DILocation(line: 539, column: 13, scope: !727)
!730 = !DILocation(line: 539, column: 31, scope: !727)
!731 = !DILocation(line: 539, column: 11, scope: !727)
!732 = !DILocation(line: 539, column: 3, scope: !727)
!733 = !DILocation(line: 541, column: 7, scope: !734)
!734 = distinct !DILexicalBlock(scope: !702, file: !263, line: 541, column: 6)
!735 = !DILocation(line: 541, column: 6, scope: !702)
!736 = !DILocation(line: 542, column: 12, scope: !737)
!737 = distinct !DILexicalBlock(scope: !734, file: !263, line: 541, column: 16)
!738 = !DILocation(line: 542, column: 48, scope: !737)
!739 = !DILocation(line: 542, column: 3, scope: !737)
!740 = !DILocation(line: 543, column: 13, scope: !737)
!741 = !DILocation(line: 543, column: 11, scope: !737)
!742 = !DILocation(line: 544, column: 2, scope: !737)
!743 = !DILocation(line: 546, column: 25, scope: !744)
!744 = distinct !DILexicalBlock(scope: !702, file: !263, line: 546, column: 5)
!745 = !DILocation(line: 546, column: 5, scope: !744)
!746 = !DILocation(line: 546, column: 10, scope: !744)
!747 = !DILocation(line: 546, column: 17, scope: !744)
!748 = !DILocation(line: 546, column: 5, scope: !702)
!749 = !DILocation(line: 547, column: 36, scope: !750)
!750 = distinct !DILexicalBlock(scope: !744, file: !263, line: 546, column: 24)
!751 = !DILocation(line: 547, column: 16, scope: !750)
!752 = !DILocation(line: 547, column: 21, scope: !750)
!753 = !DILocation(line: 547, column: 28, scope: !750)
!754 = !DILocation(line: 547, column: 38, scope: !750)
!755 = !DILocation(line: 547, column: 15, scope: !750)
!756 = !DILocation(line: 550, column: 7, scope: !757)
!757 = distinct !DILexicalBlock(scope: !750, file: !263, line: 550, column: 7)
!758 = !DILocation(line: 550, column: 19, scope: !757)
!759 = !DILocation(line: 550, column: 25, scope: !757)
!760 = !DILocation(line: 551, column: 7, scope: !757)
!761 = !DILocation(line: 551, column: 19, scope: !757)
!762 = !DILocation(line: 550, column: 7, scope: !763)
!763 = !DILexicalBlockFile(scope: !750, file: !263, discriminator: 1)
!764 = !DILocation(line: 552, column: 75, scope: !765)
!765 = distinct !DILexicalBlock(scope: !757, file: !263, line: 551, column: 26)
!766 = !DILocation(line: 552, column: 84, scope: !765)
!767 = !DILocation(line: 552, column: 96, scope: !765)
!768 = !DILocation(line: 552, column: 4, scope: !765)
!769 = !DILocation(line: 553, column: 4, scope: !765)
!770 = !DILocation(line: 556, column: 7, scope: !771)
!771 = distinct !DILexicalBlock(scope: !750, file: !263, line: 556, column: 7)
!772 = !DILocation(line: 556, column: 19, scope: !771)
!773 = !DILocation(line: 556, column: 7, scope: !750)
!774 = !DILocation(line: 557, column: 53, scope: !771)
!775 = !DILocation(line: 557, column: 62, scope: !771)
!776 = !DILocation(line: 557, column: 4, scope: !771)
!777 = !DILocation(line: 558, column: 2, scope: !750)
!778 = !DILocation(line: 558, column: 32, scope: !779)
!779 = !DILexicalBlockFile(scope: !780, file: !263, discriminator: 1)
!780 = distinct !DILexicalBlock(scope: !744, file: !263, line: 558, column: 12)
!781 = !DILocation(line: 558, column: 12, scope: !779)
!782 = !DILocation(line: 558, column: 17, scope: !779)
!783 = !DILocation(line: 558, column: 24, scope: !779)
!784 = !DILocation(line: 558, column: 14, scope: !779)
!785 = !DILocation(line: 558, column: 37, scope: !779)
!786 = !DILocation(line: 558, column: 43, scope: !779)
!787 = !DILocation(line: 559, column: 26, scope: !788)
!788 = distinct !DILexicalBlock(scope: !789, file: !263, line: 559, column: 6)
!789 = distinct !DILexicalBlock(scope: !780, file: !263, line: 558, column: 33)
!790 = !DILocation(line: 559, column: 6, scope: !788)
!791 = !DILocation(line: 559, column: 11, scope: !788)
!792 = !DILocation(line: 559, column: 18, scope: !788)
!793 = !DILocation(line: 559, column: 23, scope: !788)
!794 = !DILocation(line: 559, column: 6, scope: !789)
!795 = !DILocalVariable(name: "uname_buf", scope: !796, file: !263, line: 560, type: !797)
!796 = distinct !DILexicalBlock(scope: !788, file: !263, line: 559, column: 35)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "utsname", file: !798, line: 48, size: 3120, align: 8, elements: !799)
!798 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/utsname.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!799 = !{!800, !804, !805, !806, !807, !808}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "sysname", scope: !797, file: !798, line: 51, baseType: !801, size: 520, align: 8)
!801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 520, align: 8, elements: !802)
!802 = !{!803}
!803 = !DISubrange(count: 65)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !797, file: !798, line: 54, baseType: !801, size: 520, align: 8, offset: 520)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !797, file: !798, line: 57, baseType: !801, size: 520, align: 8, offset: 1040)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !797, file: !798, line: 59, baseType: !801, size: 520, align: 8, offset: 1560)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !797, file: !798, line: 62, baseType: !801, size: 520, align: 8, offset: 2080)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "domainname", scope: !797, file: !798, line: 67, baseType: !801, size: 520, align: 8, offset: 2600)
!809 = !DILocation(line: 560, column: 19, scope: !796)
!810 = !DILocation(line: 562, column: 75, scope: !796)
!811 = !DILocation(line: 562, column: 4, scope: !796)
!812 = !DILocation(line: 563, column: 4, scope: !796)
!813 = !DILocation(line: 564, column: 4, scope: !796)
!814 = !DILocation(line: 565, column: 4, scope: !796)
!815 = !DILocation(line: 566, column: 4, scope: !796)
!816 = !DILocation(line: 567, column: 4, scope: !796)
!817 = !DILocation(line: 568, column: 4, scope: !796)
!818 = !DILocation(line: 569, column: 4, scope: !796)
!819 = !DILocation(line: 570, column: 4, scope: !796)
!820 = !DILocation(line: 577, column: 4, scope: !796)
!821 = !DILocation(line: 581, column: 4, scope: !796)
!822 = !DILocation(line: 582, column: 60, scope: !796)
!823 = !DILocation(line: 582, column: 50, scope: !796)
!824 = !DILocation(line: 582, column: 79, scope: !796)
!825 = !DILocation(line: 582, column: 69, scope: !796)
!826 = !DILocation(line: 582, column: 98, scope: !796)
!827 = !DILocation(line: 582, column: 88, scope: !796)
!828 = !DILocation(line: 582, column: 4, scope: !796)
!829 = !DILocation(line: 583, column: 4, scope: !796)
!830 = !DILocation(line: 584, column: 4, scope: !796)
!831 = !DILocation(line: 585, column: 4, scope: !796)
!832 = !DILocation(line: 586, column: 4, scope: !796)
!833 = !DILocation(line: 590, column: 3, scope: !796)
!834 = !DILocation(line: 592, column: 55, scope: !788)
!835 = !DILocation(line: 592, column: 84, scope: !788)
!836 = !DILocation(line: 592, column: 64, scope: !788)
!837 = !DILocation(line: 592, column: 69, scope: !788)
!838 = !DILocation(line: 592, column: 76, scope: !788)
!839 = !DILocation(line: 592, column: 4, scope: !788)
!840 = !DILocation(line: 593, column: 2, scope: !789)
!841 = !DILocation(line: 595, column: 2, scope: !702)
!842 = !DILocation(line: 596, column: 1, scope: !702)
!843 = distinct !DISubprogram(name: "thread_make_master", scope: !263, file: !263, line: 748, type: !844, isLocal: false, isDefinition: true, scopeLine: 749, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!844 = !DISubroutineType(types: !845)
!845 = !{!65}
!846 = !DILocalVariable(name: "new", scope: !843, file: !263, line: 750, type: !65)
!847 = !DILocation(line: 750, column: 19, scope: !843)
!848 = !DILocation(line: 752, column: 29, scope: !843)
!849 = !DILocation(line: 752, column: 8, scope: !843)
!850 = !DILocation(line: 752, column: 6, scope: !843)
!851 = !DILocation(line: 755, column: 18, scope: !843)
!852 = !DILocation(line: 755, column: 2, scope: !843)
!853 = !DILocation(line: 755, column: 7, scope: !843)
!854 = !DILocation(line: 755, column: 16, scope: !843)
!855 = !DILocation(line: 759, column: 6, scope: !856)
!856 = distinct !DILexicalBlock(scope: !843, file: !263, line: 759, column: 6)
!857 = !DILocation(line: 759, column: 11, scope: !856)
!858 = !DILocation(line: 759, column: 20, scope: !856)
!859 = !DILocation(line: 759, column: 6, scope: !843)
!860 = !DILocation(line: 760, column: 3, scope: !861)
!861 = distinct !DILexicalBlock(scope: !856, file: !263, line: 759, column: 25)
!862 = !DILocation(line: 761, column: 9, scope: !861)
!863 = !DILocation(line: 761, column: 4, scope: !861)
!864 = !DILocation(line: 761, column: 21, scope: !861)
!865 = !DILocation(line: 762, column: 3, scope: !861)
!866 = !DILocation(line: 770, column: 2, scope: !843)
!867 = !DILocation(line: 770, column: 7, scope: !843)
!868 = !DILocation(line: 770, column: 31, scope: !843)
!869 = !DILocation(line: 770, column: 14, scope: !843)
!870 = !DILocation(line: 771, column: 2, scope: !843)
!871 = !DILocation(line: 771, column: 7, scope: !843)
!872 = !DILocation(line: 771, column: 32, scope: !843)
!873 = !DILocation(line: 771, column: 15, scope: !843)
!874 = !DILocation(line: 772, column: 2, scope: !843)
!875 = !DILocation(line: 772, column: 7, scope: !843)
!876 = !DILocation(line: 772, column: 32, scope: !843)
!877 = !DILocation(line: 772, column: 15, scope: !843)
!878 = !DILocation(line: 773, column: 2, scope: !843)
!879 = !DILocation(line: 773, column: 7, scope: !843)
!880 = !DILocation(line: 773, column: 32, scope: !843)
!881 = !DILocation(line: 773, column: 15, scope: !843)
!882 = !DILocation(line: 774, column: 2, scope: !843)
!883 = !DILocation(line: 774, column: 7, scope: !843)
!884 = !DILocation(line: 774, column: 36, scope: !843)
!885 = !DILocation(line: 774, column: 19, scope: !843)
!886 = !DILocation(line: 775, column: 2, scope: !843)
!887 = distinct !{!887, !886}
!888 = !DILocation(line: 775, column: 31, scope: !889)
!889 = !DILexicalBlockFile(scope: !890, file: !263, discriminator: 1)
!890 = distinct !DILexicalBlock(scope: !843, file: !263, line: 775, column: 5)
!891 = !DILocation(line: 775, column: 36, scope: !889)
!892 = !DILocation(line: 775, column: 9, scope: !889)
!893 = !DILocation(line: 775, column: 14, scope: !889)
!894 = !DILocation(line: 775, column: 22, scope: !889)
!895 = !DILocation(line: 775, column: 27, scope: !889)
!896 = !DILocation(line: 775, column: 68, scope: !889)
!897 = !DILocation(line: 775, column: 73, scope: !889)
!898 = !DILocation(line: 775, column: 46, scope: !889)
!899 = !DILocation(line: 775, column: 51, scope: !889)
!900 = !DILocation(line: 775, column: 59, scope: !889)
!901 = !DILocation(line: 775, column: 64, scope: !889)
!902 = !DILocation(line: 775, column: 81, scope: !889)
!903 = !DILocation(line: 779, column: 2, scope: !843)
!904 = distinct !{!904, !903}
!905 = !DILocation(line: 779, column: 31, scope: !906)
!906 = !DILexicalBlockFile(scope: !907, file: !263, discriminator: 1)
!907 = distinct !DILexicalBlock(scope: !843, file: !263, line: 779, column: 5)
!908 = !DILocation(line: 779, column: 36, scope: !906)
!909 = !DILocation(line: 779, column: 9, scope: !906)
!910 = !DILocation(line: 779, column: 14, scope: !906)
!911 = !DILocation(line: 779, column: 22, scope: !906)
!912 = !DILocation(line: 779, column: 27, scope: !906)
!913 = !DILocation(line: 779, column: 68, scope: !906)
!914 = !DILocation(line: 779, column: 73, scope: !906)
!915 = !DILocation(line: 779, column: 46, scope: !906)
!916 = !DILocation(line: 779, column: 51, scope: !906)
!917 = !DILocation(line: 779, column: 59, scope: !906)
!918 = !DILocation(line: 779, column: 64, scope: !906)
!919 = !DILocation(line: 779, column: 81, scope: !906)
!920 = !DILocation(line: 780, column: 2, scope: !843)
!921 = distinct !{!921, !920}
!922 = !DILocation(line: 780, column: 31, scope: !923)
!923 = !DILexicalBlockFile(scope: !924, file: !263, discriminator: 1)
!924 = distinct !DILexicalBlock(scope: !843, file: !263, line: 780, column: 5)
!925 = !DILocation(line: 780, column: 36, scope: !923)
!926 = !DILocation(line: 780, column: 9, scope: !923)
!927 = !DILocation(line: 780, column: 14, scope: !923)
!928 = !DILocation(line: 780, column: 22, scope: !923)
!929 = !DILocation(line: 780, column: 27, scope: !923)
!930 = !DILocation(line: 780, column: 68, scope: !923)
!931 = !DILocation(line: 780, column: 73, scope: !923)
!932 = !DILocation(line: 780, column: 46, scope: !923)
!933 = !DILocation(line: 780, column: 51, scope: !923)
!934 = !DILocation(line: 780, column: 59, scope: !923)
!935 = !DILocation(line: 780, column: 64, scope: !923)
!936 = !DILocation(line: 780, column: 81, scope: !923)
!937 = !DILocation(line: 783, column: 18, scope: !843)
!938 = !DILocation(line: 783, column: 2, scope: !843)
!939 = !DILocation(line: 783, column: 7, scope: !843)
!940 = !DILocation(line: 783, column: 16, scope: !843)
!941 = !DILocation(line: 790, column: 6, scope: !942)
!942 = distinct !DILexicalBlock(scope: !843, file: !263, line: 790, column: 6)
!943 = !DILocation(line: 790, column: 11, scope: !942)
!944 = !DILocation(line: 790, column: 20, scope: !942)
!945 = !DILocation(line: 790, column: 6, scope: !843)
!946 = !DILocation(line: 791, column: 3, scope: !947)
!947 = distinct !DILexicalBlock(scope: !942, file: !263, line: 790, column: 25)
!948 = !DILocation(line: 792, column: 9, scope: !947)
!949 = !DILocation(line: 792, column: 4, scope: !947)
!950 = !DILocation(line: 792, column: 21, scope: !947)
!951 = !DILocation(line: 793, column: 3, scope: !947)
!952 = !DILocation(line: 804, column: 2, scope: !843)
!953 = !DILocation(line: 806, column: 38, scope: !843)
!954 = !DILocation(line: 806, column: 72, scope: !843)
!955 = !DILocation(line: 806, column: 77, scope: !843)
!956 = !DILocation(line: 806, column: 22, scope: !843)
!957 = !DILocation(line: 806, column: 2, scope: !843)
!958 = !DILocation(line: 806, column: 7, scope: !843)
!959 = !DILocation(line: 806, column: 20, scope: !843)
!960 = !DILocation(line: 808, column: 25, scope: !843)
!961 = !DILocation(line: 808, column: 2, scope: !843)
!962 = !DILocation(line: 810, column: 9, scope: !843)
!963 = !DILocation(line: 810, column: 2, scope: !843)
!964 = !DILocation(line: 811, column: 1, scope: !843)
!965 = distinct !DISubprogram(name: "thread_add_read", scope: !263, file: !263, line: 1064, type: !966, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!966 = !DISubroutineType(types: !967)
!967 = !{!202, !65, !968, !63, !126, !79}
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64, align: 64)
!969 = !DISubroutineType(types: !970)
!970 = !{!126, !202}
!971 = !DILocalVariable(name: "m", arg: 1, scope: !965, file: !263, line: 1064, type: !65)
!972 = !DILocation(line: 1064, column: 34, scope: !965)
!973 = !DILocalVariable(name: "func", arg: 2, scope: !965, file: !263, line: 1064, type: !968)
!974 = !DILocation(line: 1064, column: 43, scope: !965)
!975 = !DILocalVariable(name: "arg", arg: 3, scope: !965, file: !263, line: 1064, type: !63)
!976 = !DILocation(line: 1064, column: 69, scope: !965)
!977 = !DILocalVariable(name: "fd", arg: 4, scope: !965, file: !263, line: 1064, type: !126)
!978 = !DILocation(line: 1064, column: 78, scope: !965)
!979 = !DILocalVariable(name: "timer", arg: 5, scope: !965, file: !263, line: 1064, type: !79)
!980 = !DILocation(line: 1064, column: 96, scope: !965)
!981 = !DILocalVariable(name: "event", scope: !965, file: !263, line: 1066, type: !197)
!982 = !DILocation(line: 1066, column: 18, scope: !965)
!983 = !DILocalVariable(name: "thread", scope: !965, file: !263, line: 1067, type: !202)
!984 = !DILocation(line: 1067, column: 12, scope: !965)
!985 = !DILocation(line: 1072, column: 6, scope: !986)
!986 = distinct !DILexicalBlock(scope: !965, file: !263, line: 1072, column: 6)
!987 = !DILocation(line: 1072, column: 9, scope: !986)
!988 = !DILocation(line: 1072, column: 23, scope: !986)
!989 = !DILocation(line: 1072, column: 26, scope: !990)
!990 = !DILexicalBlockFile(scope: !986, file: !263, discriminator: 1)
!991 = !DILocation(line: 1072, column: 29, scope: !990)
!992 = !DILocation(line: 1072, column: 44, scope: !990)
!993 = !DILocation(line: 1072, column: 50, scope: !990)
!994 = !DILocation(line: 1072, column: 47, scope: !990)
!995 = !DILocation(line: 1072, column: 6, scope: !990)
!996 = !DILocation(line: 1073, column: 11, scope: !986)
!997 = !DILocation(line: 1073, column: 14, scope: !986)
!998 = !DILocation(line: 1073, column: 9, scope: !986)
!999 = !DILocation(line: 1073, column: 3, scope: !986)
!1000 = !DILocation(line: 1075, column: 28, scope: !986)
!1001 = !DILocation(line: 1075, column: 31, scope: !986)
!1002 = !DILocation(line: 1075, column: 11, scope: !986)
!1003 = !DILocation(line: 1075, column: 9, scope: !986)
!1004 = !DILocation(line: 1077, column: 7, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !965, file: !263, line: 1077, column: 6)
!1006 = !DILocation(line: 1077, column: 6, scope: !965)
!1007 = !DILocation(line: 1078, column: 34, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !263, line: 1078, column: 7)
!1009 = distinct !DILexicalBlock(scope: !1005, file: !263, line: 1077, column: 14)
!1010 = !DILocation(line: 1078, column: 37, scope: !1008)
!1011 = !DILocation(line: 1078, column: 17, scope: !1008)
!1012 = !DILocation(line: 1078, column: 15, scope: !1008)
!1013 = !DILocation(line: 1078, column: 7, scope: !1009)
!1014 = !DILocation(line: 1079, column: 80, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1008, file: !263, line: 1078, column: 43)
!1016 = !DILocation(line: 1079, column: 4, scope: !1015)
!1017 = !DILocation(line: 1080, column: 4, scope: !1015)
!1018 = !DILocation(line: 1082, column: 2, scope: !1009)
!1019 = !DILocation(line: 1083, column: 43, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1005, file: !263, line: 1083, column: 11)
!1021 = !DILocation(line: 1083, column: 50, scope: !1020)
!1022 = !DILocation(line: 1083, column: 11, scope: !1020)
!1023 = !DILocation(line: 1083, column: 57, scope: !1020)
!1024 = !DILocation(line: 1083, column: 60, scope: !1025)
!1025 = !DILexicalBlockFile(scope: !1020, file: !263, discriminator: 1)
!1026 = !DILocation(line: 1083, column: 67, scope: !1025)
!1027 = !DILocation(line: 1083, column: 11, scope: !1025)
!1028 = !DILocation(line: 1084, column: 101, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1020, file: !263, line: 1083, column: 73)
!1030 = !DILocation(line: 1084, column: 108, scope: !1029)
!1031 = !DILocation(line: 1084, column: 115, scope: !1029)
!1032 = !DILocation(line: 1084, column: 121, scope: !1029)
!1033 = !DILocation(line: 1084, column: 3, scope: !1029)
!1034 = !DILocation(line: 1085, column: 3, scope: !1029)
!1035 = !DILocation(line: 1088, column: 22, scope: !965)
!1036 = !DILocation(line: 1088, column: 11, scope: !965)
!1037 = !DILocation(line: 1088, column: 9, scope: !965)
!1038 = !DILocation(line: 1089, column: 2, scope: !965)
!1039 = !DILocation(line: 1089, column: 10, scope: !965)
!1040 = !DILocation(line: 1089, column: 15, scope: !965)
!1041 = !DILocation(line: 1090, column: 19, scope: !965)
!1042 = !DILocation(line: 1090, column: 2, scope: !965)
!1043 = !DILocation(line: 1090, column: 10, scope: !965)
!1044 = !DILocation(line: 1090, column: 17, scope: !965)
!1045 = !DILocation(line: 1091, column: 17, scope: !965)
!1046 = !DILocation(line: 1091, column: 2, scope: !965)
!1047 = !DILocation(line: 1091, column: 10, scope: !965)
!1048 = !DILocation(line: 1091, column: 15, scope: !965)
!1049 = !DILocation(line: 1092, column: 16, scope: !965)
!1050 = !DILocation(line: 1092, column: 2, scope: !965)
!1051 = !DILocation(line: 1092, column: 10, scope: !965)
!1052 = !DILocation(line: 1092, column: 14, scope: !965)
!1053 = !DILocation(line: 1093, column: 17, scope: !965)
!1054 = !DILocation(line: 1093, column: 2, scope: !965)
!1055 = !DILocation(line: 1093, column: 10, scope: !965)
!1056 = !DILocation(line: 1093, column: 12, scope: !965)
!1057 = !DILocation(line: 1093, column: 15, scope: !965)
!1058 = !DILocation(line: 1094, column: 18, scope: !965)
!1059 = !DILocation(line: 1094, column: 2, scope: !965)
!1060 = !DILocation(line: 1094, column: 10, scope: !965)
!1061 = !DILocation(line: 1094, column: 16, scope: !965)
!1062 = !DILocation(line: 1097, column: 33, scope: !965)
!1063 = !DILocation(line: 1097, column: 40, scope: !965)
!1064 = !DILocation(line: 1097, column: 2, scope: !965)
!1065 = !DILocation(line: 1098, column: 16, scope: !965)
!1066 = !DILocation(line: 1098, column: 2, scope: !965)
!1067 = !DILocation(line: 1098, column: 9, scope: !965)
!1068 = !DILocation(line: 1098, column: 14, scope: !965)
!1069 = !DILocation(line: 1099, column: 45, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !965, file: !263, line: 1099, column: 6)
!1071 = !DILocation(line: 1099, column: 52, scope: !1070)
!1072 = !DILocation(line: 1099, column: 7, scope: !1070)
!1073 = !DILocation(line: 1099, column: 6, scope: !965)
!1074 = !DILocation(line: 1100, column: 24, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !263, line: 1100, column: 7)
!1076 = distinct !DILexicalBlock(scope: !1070, file: !263, line: 1099, column: 60)
!1077 = !DILocation(line: 1100, column: 7, scope: !1075)
!1078 = !DILocation(line: 1100, column: 32, scope: !1075)
!1079 = !DILocation(line: 1100, column: 7, scope: !1076)
!1080 = !DILocation(line: 1101, column: 80, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1075, file: !263, line: 1100, column: 37)
!1082 = !DILocation(line: 1101, column: 4, scope: !1081)
!1083 = !DILocation(line: 1102, column: 21, scope: !1081)
!1084 = !DILocation(line: 1102, column: 24, scope: !1081)
!1085 = !DILocation(line: 1102, column: 4, scope: !1081)
!1086 = !DILocation(line: 1103, column: 4, scope: !1081)
!1087 = !DILocation(line: 1105, column: 40, scope: !1076)
!1088 = !DILocation(line: 1105, column: 47, scope: !1076)
!1089 = !DILocation(line: 1105, column: 3, scope: !1076)
!1090 = !DILocation(line: 1106, column: 2, scope: !1076)
!1091 = !DILocation(line: 1109, column: 6, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !965, file: !263, line: 1109, column: 6)
!1093 = !DILocation(line: 1109, column: 12, scope: !1092)
!1094 = !DILocation(line: 1109, column: 6, scope: !965)
!1095 = !DILocation(line: 1110, column: 3, scope: !1092)
!1096 = !DILocation(line: 1110, column: 11, scope: !1092)
!1097 = !DILocation(line: 1110, column: 17, scope: !1092)
!1098 = !DILocation(line: 1110, column: 24, scope: !1092)
!1099 = !DILocation(line: 1112, column: 3, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1092, file: !263, line: 1111, column: 7)
!1101 = !DILocation(line: 1113, column: 3, scope: !1100)
!1102 = !DILocation(line: 1113, column: 11, scope: !1100)
!1103 = !DILocation(line: 1113, column: 44, scope: !1100)
!1104 = !DILocation(line: 1113, column: 19, scope: !1100)
!1105 = !DILocation(line: 1113, column: 19, scope: !1106)
!1106 = !DILexicalBlockFile(scope: !1100, file: !263, discriminator: 1)
!1107 = !DILocalVariable(name: "__n", scope: !1108, file: !263, line: 1117, type: !1109)
!1108 = distinct !DILexicalBlock(scope: !965, file: !263, line: 1117, column: 3)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64, align: 64)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, align: 64)
!1111 = !DILocation(line: 1117, column: 17, scope: !1108)
!1112 = !DILocation(line: 1117, column: 26, scope: !1108)
!1113 = !DILocation(line: 1117, column: 29, scope: !1108)
!1114 = !DILocation(line: 1117, column: 36, scope: !1108)
!1115 = !DILocalVariable(name: "__parent", scope: !1108, file: !263, line: 1117, type: !1110)
!1116 = !DILocation(line: 1117, column: 46, scope: !1108)
!1117 = !DILocalVariable(name: "__data", scope: !1108, file: !263, line: 1117, type: !202)
!1118 = !DILocation(line: 1117, column: 18, scope: !1108)
!1119 = !DILocation(line: 1117, column: 34, scope: !1120)
!1120 = !DILexicalBlockFile(scope: !1108, file: !263, discriminator: 1)
!1121 = !DILocation(line: 1117, column: 33, scope: !1120)
!1122 = !DILocation(line: 1117, column: 26, scope: !1120)
!1123 = !DILocation(line: 1117, column: 52, scope: !1124)
!1124 = !DILexicalBlockFile(scope: !1125, file: !263, discriminator: 2)
!1125 = distinct !DILexicalBlock(scope: !1108, file: !263, line: 1117, column: 39)
!1126 = !DILocation(line: 1117, column: 51, scope: !1124)
!1127 = !DILocation(line: 1117, column: 50, scope: !1124)
!1128 = !DILocalVariable(name: "__mptr", scope: !1129, file: !263, line: 1117, type: !1130)
!1129 = distinct !DILexicalBlock(scope: !1125, file: !263, line: 1117, column: 60)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64, align: 64)
!1131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!1132 = !DILocation(line: 1117, column: 105, scope: !1129)
!1133 = !DILocation(line: 1117, column: 116, scope: !1134)
!1134 = !DILexicalBlockFile(scope: !1129, file: !263, discriminator: 3)
!1135 = !DILocation(line: 1117, column: 115, scope: !1134)
!1136 = !DILocation(line: 1117, column: 105, scope: !1134)
!1137 = !DILocation(line: 1117, column: 151, scope: !1134)
!1138 = !DILocation(line: 1117, column: 143, scope: !1134)
!1139 = !DILocation(line: 1117, column: 158, scope: !1134)
!1140 = !DILocation(line: 1117, column: 122, scope: !1134)
!1141 = !DILocation(line: 1117, column: 62, scope: !1134)
!1142 = !DILocation(line: 1117, column: 3, scope: !1134)
!1143 = !DILocation(line: 1117, column: 50, scope: !1134)
!1144 = !DILocation(line: 1117, column: 50, scope: !1145)
!1145 = !DILexicalBlockFile(scope: !1125, file: !263, discriminator: 4)
!1146 = !DILocation(line: 1117, column: 50, scope: !1147)
!1147 = !DILexicalBlockFile(scope: !1125, file: !263, discriminator: 5)
!1148 = !DILocation(line: 1117, column: 48, scope: !1147)
!1149 = !DILocalVariable(name: "__cmp", scope: !1125, file: !263, line: 1117, type: !126)
!1150 = !DILocation(line: 1117, column: 7, scope: !1125)
!1151 = !DILocation(line: 1117, column: 32, scope: !1147)
!1152 = !DILocation(line: 1117, column: 40, scope: !1147)
!1153 = !DILocation(line: 1117, column: 15, scope: !1147)
!1154 = !DILocation(line: 1117, column: 7, scope: !1147)
!1155 = !DILocation(line: 1117, column: 61, scope: !1147)
!1156 = !DILocation(line: 1117, column: 60, scope: !1147)
!1157 = !DILocation(line: 1117, column: 58, scope: !1147)
!1158 = !DILocation(line: 1117, column: 70, scope: !1147)
!1159 = !DILocation(line: 1117, column: 76, scope: !1147)
!1160 = !DILocation(line: 1117, column: 92, scope: !1161)
!1161 = !DILexicalBlockFile(scope: !1162, file: !263, discriminator: 6)
!1162 = distinct !DILexicalBlock(scope: !1125, file: !263, line: 1117, column: 70)
!1163 = !DILocation(line: 1117, column: 91, scope: !1161)
!1164 = !DILocation(line: 1117, column: 98, scope: !1161)
!1165 = !DILocation(line: 1117, column: 86, scope: !1161)
!1166 = !DILocation(line: 1117, column: 82, scope: !1161)
!1167 = !DILocation(line: 1117, column: 117, scope: !1168)
!1168 = !DILexicalBlockFile(scope: !1169, file: !263, discriminator: 7)
!1169 = distinct !DILexicalBlock(scope: !1162, file: !263, line: 1117, column: 117)
!1170 = !DILocation(line: 1117, column: 123, scope: !1168)
!1171 = !DILocation(line: 1117, column: 138, scope: !1172)
!1172 = !DILexicalBlockFile(scope: !1169, file: !263, discriminator: 8)
!1173 = !DILocation(line: 1117, column: 137, scope: !1172)
!1174 = !DILocation(line: 1117, column: 144, scope: !1172)
!1175 = !DILocation(line: 1117, column: 132, scope: !1172)
!1176 = !DILocation(line: 1117, column: 128, scope: !1172)
!1177 = !DILocation(line: 1117, column: 26, scope: !1178)
!1178 = !DILexicalBlockFile(scope: !1108, file: !263, discriminator: 9)
!1179 = distinct !{!1179, !1112}
!1180 = !DILocation(line: 1117, column: 173, scope: !1181)
!1181 = !DILexicalBlockFile(scope: !1108, file: !263, discriminator: 10)
!1182 = !DILocation(line: 1117, column: 182, scope: !1181)
!1183 = !DILocation(line: 1117, column: 186, scope: !1181)
!1184 = !DILocation(line: 1117, column: 196, scope: !1181)
!1185 = !DILocation(line: 1117, column: 157, scope: !1181)
!1186 = !DILocation(line: 1117, column: 221, scope: !1181)
!1187 = !DILocation(line: 1117, column: 230, scope: !1181)
!1188 = !DILocation(line: 1117, column: 235, scope: !1181)
!1189 = !DILocation(line: 1117, column: 238, scope: !1181)
!1190 = !DILocation(line: 1117, column: 202, scope: !1191)
!1191 = !DILexicalBlockFile(scope: !1181, file: !263, discriminator: 11)
!1192 = !DILocation(line: 1119, column: 9, scope: !965)
!1193 = !DILocation(line: 1119, column: 2, scope: !965)
!1194 = !DILocation(line: 1120, column: 1, scope: !965)
!1195 = distinct !DISubprogram(name: "thread_timerfd_handler", scope: !263, file: !263, line: 308, type: !969, isLocal: true, isDefinition: true, scopeLine: 309, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!1196 = !DILocalVariable(name: "thread", arg: 1, scope: !1195, file: !263, line: 308, type: !202)
!1197 = !DILocation(line: 308, column: 34, scope: !1195)
!1198 = !DILocalVariable(name: "m", scope: !1195, file: !263, line: 310, type: !65)
!1199 = !DILocation(line: 310, column: 19, scope: !1195)
!1200 = !DILocation(line: 310, column: 23, scope: !1195)
!1201 = !DILocation(line: 310, column: 31, scope: !1195)
!1202 = !DILocalVariable(name: "expired", scope: !1195, file: !263, line: 311, type: !195)
!1203 = !DILocation(line: 311, column: 11, scope: !1195)
!1204 = !DILocalVariable(name: "len", scope: !1195, file: !263, line: 312, type: !1205)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !1206, line: 109, baseType: !1207)
!1206 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !153, line: 172, baseType: !154)
!1208 = !DILocation(line: 312, column: 10, scope: !1195)
!1209 = !DILocation(line: 314, column: 13, scope: !1195)
!1210 = !DILocation(line: 314, column: 16, scope: !1195)
!1211 = !DILocation(line: 314, column: 26, scope: !1195)
!1212 = !DILocation(line: 314, column: 8, scope: !1195)
!1213 = !DILocation(line: 314, column: 6, scope: !1195)
!1214 = !DILocation(line: 315, column: 6, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1195, file: !263, line: 315, column: 6)
!1216 = !DILocation(line: 315, column: 10, scope: !1215)
!1217 = !DILocation(line: 315, column: 6, scope: !1195)
!1218 = !DILocation(line: 316, column: 73, scope: !1215)
!1219 = !DILocation(line: 316, column: 76, scope: !1215)
!1220 = !DILocation(line: 316, column: 3, scope: !1215)
!1221 = !DILocation(line: 319, column: 23, scope: !1195)
!1222 = !DILocation(line: 319, column: 27, scope: !1195)
!1223 = !DILocation(line: 319, column: 30, scope: !1195)
!1224 = !DILocation(line: 319, column: 2, scope: !1195)
!1225 = !DILocation(line: 320, column: 23, scope: !1195)
!1226 = !DILocation(line: 320, column: 27, scope: !1195)
!1227 = !DILocation(line: 320, column: 30, scope: !1195)
!1228 = !DILocation(line: 320, column: 2, scope: !1195)
!1229 = !DILocation(line: 321, column: 23, scope: !1195)
!1230 = !DILocation(line: 321, column: 27, scope: !1195)
!1231 = !DILocation(line: 321, column: 30, scope: !1195)
!1232 = !DILocation(line: 321, column: 2, scope: !1195)
!1233 = !DILocation(line: 322, column: 23, scope: !1195)
!1234 = !DILocation(line: 322, column: 27, scope: !1195)
!1235 = !DILocation(line: 322, column: 30, scope: !1195)
!1236 = !DILocation(line: 322, column: 2, scope: !1195)
!1237 = !DILocation(line: 325, column: 36, scope: !1195)
!1238 = !DILocation(line: 325, column: 68, scope: !1195)
!1239 = !DILocation(line: 325, column: 71, scope: !1195)
!1240 = !DILocation(line: 325, column: 20, scope: !1195)
!1241 = !DILocation(line: 325, column: 2, scope: !1195)
!1242 = !DILocation(line: 325, column: 5, scope: !1195)
!1243 = !DILocation(line: 325, column: 18, scope: !1195)
!1244 = !DILocation(line: 327, column: 2, scope: !1195)
!1245 = distinct !DISubprogram(name: "thread_cleanup_master", scope: !263, file: !263, line: 972, type: !1246, isLocal: false, isDefinition: true, scopeLine: 973, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{null, !65}
!1248 = !DILocalVariable(name: "m", arg: 1, scope: !1245, file: !263, line: 972, type: !65)
!1249 = !DILocation(line: 972, column: 41, scope: !1245)
!1250 = !DILocation(line: 975, column: 20, scope: !1245)
!1251 = !DILocation(line: 975, column: 24, scope: !1245)
!1252 = !DILocation(line: 975, column: 27, scope: !1245)
!1253 = !DILocation(line: 975, column: 2, scope: !1245)
!1254 = !DILocation(line: 976, column: 20, scope: !1245)
!1255 = !DILocation(line: 976, column: 24, scope: !1245)
!1256 = !DILocation(line: 976, column: 27, scope: !1245)
!1257 = !DILocation(line: 976, column: 2, scope: !1245)
!1258 = !DILocation(line: 977, column: 20, scope: !1245)
!1259 = !DILocation(line: 977, column: 24, scope: !1245)
!1260 = !DILocation(line: 977, column: 27, scope: !1245)
!1261 = !DILocation(line: 977, column: 2, scope: !1245)
!1262 = !DILocation(line: 978, column: 20, scope: !1245)
!1263 = !DILocation(line: 978, column: 24, scope: !1245)
!1264 = !DILocation(line: 978, column: 27, scope: !1245)
!1265 = !DILocation(line: 978, column: 2, scope: !1245)
!1266 = !DILocation(line: 979, column: 22, scope: !1245)
!1267 = !DILocation(line: 979, column: 26, scope: !1245)
!1268 = !DILocation(line: 979, column: 29, scope: !1245)
!1269 = !DILocation(line: 979, column: 2, scope: !1245)
!1270 = !DILocation(line: 983, column: 22, scope: !1245)
!1271 = !DILocation(line: 983, column: 26, scope: !1245)
!1272 = !DILocation(line: 983, column: 29, scope: !1245)
!1273 = !DILocation(line: 983, column: 2, scope: !1245)
!1274 = !DILocation(line: 985, column: 2, scope: !1245)
!1275 = !DILocation(line: 988, column: 21, scope: !1245)
!1276 = !DILocation(line: 988, column: 2, scope: !1245)
!1277 = !DILocation(line: 990, column: 8, scope: !1245)
!1278 = !DILocation(line: 990, column: 11, scope: !1245)
!1279 = !DILocation(line: 990, column: 3, scope: !1245)
!1280 = !DILocation(line: 990, column: 27, scope: !1245)
!1281 = !DILocation(line: 990, column: 30, scope: !1245)
!1282 = !DILocation(line: 990, column: 44, scope: !1245)
!1283 = !DILocation(line: 991, column: 2, scope: !1245)
!1284 = !DILocation(line: 991, column: 5, scope: !1245)
!1285 = !DILocation(line: 991, column: 16, scope: !1245)
!1286 = !DILocation(line: 992, column: 2, scope: !1245)
!1287 = !DILocation(line: 992, column: 5, scope: !1245)
!1288 = !DILocation(line: 992, column: 17, scope: !1245)
!1289 = !DILocation(line: 994, column: 2, scope: !1245)
!1290 = !DILocation(line: 994, column: 5, scope: !1245)
!1291 = !DILocation(line: 994, column: 18, scope: !1245)
!1292 = !DILocation(line: 1001, column: 1, scope: !1245)
!1293 = distinct !DISubprogram(name: "thread_destroy_rb", scope: !263, file: !263, line: 953, type: !1294, isLocal: true, isDefinition: true, scopeLine: 954, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{null, !65, !1296}
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!1297 = !DILocalVariable(name: "m", arg: 1, scope: !1293, file: !263, line: 953, type: !65)
!1298 = !DILocation(line: 953, column: 36, scope: !1293)
!1299 = !DILocalVariable(name: "root", arg: 2, scope: !1293, file: !263, line: 953, type: !1296)
!1300 = !DILocation(line: 953, column: 50, scope: !1293)
!1301 = !DILocalVariable(name: "thread", scope: !1293, file: !263, line: 955, type: !202)
!1302 = !DILocation(line: 955, column: 12, scope: !1293)
!1303 = !DILocalVariable(name: "thread_tmp", scope: !1293, file: !263, line: 955, type: !202)
!1304 = !DILocation(line: 955, column: 21, scope: !1293)
!1305 = !DILocation(line: 957, column: 26, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1293, file: !263, line: 957, column: 2)
!1307 = !DILocation(line: 957, column: 17, scope: !1306)
!1308 = !DILocation(line: 957, column: 16, scope: !1306)
!1309 = !DILocalVariable(name: "__mptr", scope: !1310, file: !263, line: 957, type: !1130)
!1310 = distinct !DILexicalBlock(scope: !1306, file: !263, line: 957, column: 36)
!1311 = !DILocation(line: 957, column: 81, scope: !1310)
!1312 = !DILocation(line: 957, column: 100, scope: !1313)
!1313 = !DILexicalBlockFile(scope: !1310, file: !263, discriminator: 1)
!1314 = !DILocation(line: 957, column: 91, scope: !1313)
!1315 = !DILocation(line: 957, column: 81, scope: !1313)
!1316 = !DILocation(line: 957, column: 137, scope: !1313)
!1317 = !DILocation(line: 957, column: 129, scope: !1313)
!1318 = !DILocation(line: 957, column: 144, scope: !1313)
!1319 = !DILocation(line: 957, column: 108, scope: !1313)
!1320 = !DILocation(line: 957, column: 38, scope: !1313)
!1321 = !DILocation(line: 957, column: 3, scope: !1313)
!1322 = !DILocation(line: 957, column: 16, scope: !1313)
!1323 = !DILocation(line: 957, column: 16, scope: !1324)
!1324 = !DILexicalBlockFile(scope: !1306, file: !263, discriminator: 2)
!1325 = !DILocation(line: 957, column: 16, scope: !1326)
!1326 = !DILexicalBlockFile(scope: !1306, file: !263, discriminator: 3)
!1327 = !DILocation(line: 957, column: 14, scope: !1326)
!1328 = !DILocation(line: 957, column: 7, scope: !1326)
!1329 = !DILocation(line: 957, column: 3, scope: !1330)
!1330 = !DILexicalBlockFile(scope: !1331, file: !263, discriminator: 4)
!1331 = distinct !DILexicalBlock(scope: !1306, file: !263, line: 957, column: 2)
!1332 = !DILocation(line: 957, column: 10, scope: !1330)
!1333 = !DILocation(line: 957, column: 37, scope: !1334)
!1334 = !DILexicalBlockFile(scope: !1331, file: !263, discriminator: 5)
!1335 = !DILocation(line: 957, column: 45, scope: !1334)
!1336 = !DILocation(line: 957, column: 28, scope: !1334)
!1337 = !DILocation(line: 957, column: 27, scope: !1334)
!1338 = !DILocalVariable(name: "__mptr", scope: !1339, file: !263, line: 957, type: !1130)
!1339 = distinct !DILexicalBlock(scope: !1331, file: !263, line: 957, column: 52)
!1340 = !DILocation(line: 957, column: 101, scope: !1339)
!1341 = !DILocation(line: 957, column: 120, scope: !1342)
!1342 = !DILexicalBlockFile(scope: !1339, file: !263, discriminator: 6)
!1343 = !DILocation(line: 957, column: 128, scope: !1342)
!1344 = !DILocation(line: 957, column: 111, scope: !1342)
!1345 = !DILocation(line: 957, column: 101, scope: !1342)
!1346 = !DILocation(line: 957, column: 166, scope: !1342)
!1347 = !DILocation(line: 957, column: 158, scope: !1342)
!1348 = !DILocation(line: 957, column: 173, scope: !1342)
!1349 = !DILocation(line: 957, column: 133, scope: !1342)
!1350 = !DILocation(line: 957, column: 54, scope: !1342)
!1351 = !DILocation(line: 957, column: 3, scope: !1342)
!1352 = !DILocation(line: 957, column: 27, scope: !1342)
!1353 = !DILocation(line: 957, column: 27, scope: !1354)
!1354 = !DILexicalBlockFile(scope: !1331, file: !263, discriminator: 7)
!1355 = !DILocation(line: 957, column: 27, scope: !1356)
!1356 = !DILexicalBlockFile(scope: !1331, file: !263, discriminator: 8)
!1357 = !DILocation(line: 957, column: 25, scope: !1356)
!1358 = !DILocation(line: 957, column: 2, scope: !1359)
!1359 = !DILexicalBlockFile(scope: !1306, file: !263, discriminator: 9)
!1360 = !DILocation(line: 958, column: 13, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1331, file: !263, line: 957, column: 28)
!1362 = !DILocation(line: 958, column: 21, scope: !1361)
!1363 = !DILocation(line: 958, column: 24, scope: !1361)
!1364 = !DILocation(line: 958, column: 3, scope: !1361)
!1365 = !DILocation(line: 961, column: 7, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1361, file: !263, line: 961, column: 7)
!1367 = !DILocation(line: 961, column: 15, scope: !1366)
!1368 = !DILocation(line: 961, column: 20, scope: !1366)
!1369 = !DILocation(line: 961, column: 7, scope: !1361)
!1370 = !DILocation(line: 962, column: 20, scope: !1366)
!1371 = !DILocation(line: 962, column: 4, scope: !1366)
!1372 = !DILocation(line: 963, column: 12, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1366, file: !263, line: 963, column: 12)
!1374 = !DILocation(line: 963, column: 20, scope: !1373)
!1375 = !DILocation(line: 963, column: 25, scope: !1373)
!1376 = !DILocation(line: 963, column: 12, scope: !1366)
!1377 = !DILocation(line: 964, column: 21, scope: !1373)
!1378 = !DILocation(line: 964, column: 4, scope: !1373)
!1379 = !DILocation(line: 966, column: 20, scope: !1361)
!1380 = !DILocation(line: 966, column: 23, scope: !1361)
!1381 = !DILocation(line: 966, column: 3, scope: !1361)
!1382 = !DILocation(line: 967, column: 2, scope: !1361)
!1383 = !DILocation(line: 957, column: 16, scope: !1384)
!1384 = !DILexicalBlockFile(scope: !1331, file: !263, discriminator: 10)
!1385 = !DILocation(line: 957, column: 14, scope: !1384)
!1386 = !DILocation(line: 957, column: 2, scope: !1384)
!1387 = distinct !{!1387, !1388}
!1388 = !DILocation(line: 957, column: 2, scope: !1293)
!1389 = !DILocation(line: 968, column: 1, scope: !1293)
!1390 = distinct !DISubprogram(name: "thread_destroy_list", scope: !263, file: !263, line: 938, type: !1391, isLocal: true, isDefinition: true, scopeLine: 939, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{null, !65, !1393}
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!1394 = !DILocalVariable(name: "m", arg: 1, scope: !1390, file: !263, line: 938, type: !65)
!1395 = !DILocation(line: 938, column: 38, scope: !1390)
!1396 = !DILocalVariable(name: "l", arg: 2, scope: !1390, file: !263, line: 938, type: !1393)
!1397 = !DILocation(line: 938, column: 54, scope: !1390)
!1398 = !DILocalVariable(name: "thread", scope: !1390, file: !263, line: 940, type: !202)
!1399 = !DILocation(line: 940, column: 12, scope: !1390)
!1400 = !DILocalVariable(name: "thread_tmp", scope: !1390, file: !263, line: 940, type: !202)
!1401 = !DILocation(line: 940, column: 21, scope: !1390)
!1402 = !DILocalVariable(name: "__mptr", scope: !1403, file: !263, line: 942, type: !1405)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !263, line: 942, column: 17)
!1404 = distinct !DILexicalBlock(scope: !1390, file: !263, line: 942, column: 2)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64, align: 64)
!1406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!1407 = !DILocation(line: 942, column: 65, scope: !1403)
!1408 = !DILocation(line: 942, column: 76, scope: !1403)
!1409 = !DILocation(line: 942, column: 80, scope: !1403)
!1410 = !DILocation(line: 942, column: 116, scope: !1403)
!1411 = !DILocation(line: 942, column: 108, scope: !1403)
!1412 = !DILocation(line: 942, column: 123, scope: !1403)
!1413 = !DILocation(line: 942, column: 87, scope: !1403)
!1414 = !DILocation(line: 942, column: 19, scope: !1403)
!1415 = !DILocation(line: 942, column: 3, scope: !1403)
!1416 = !DILocation(line: 942, column: 14, scope: !1404)
!1417 = !DILocalVariable(name: "__mptr", scope: !1418, file: !263, line: 942, type: !1405)
!1418 = distinct !DILexicalBlock(scope: !1404, file: !263, line: 942, column: 21)
!1419 = !DILocation(line: 942, column: 69, scope: !1418)
!1420 = !DILocation(line: 942, column: 79, scope: !1418)
!1421 = !DILocation(line: 942, column: 87, scope: !1418)
!1422 = !DILocation(line: 942, column: 92, scope: !1418)
!1423 = !DILocation(line: 942, column: 128, scope: !1418)
!1424 = !DILocation(line: 942, column: 120, scope: !1418)
!1425 = !DILocation(line: 942, column: 135, scope: !1418)
!1426 = !DILocation(line: 942, column: 99, scope: !1418)
!1427 = !DILocation(line: 942, column: 23, scope: !1418)
!1428 = !DILocation(line: 942, column: 3, scope: !1418)
!1429 = !DILocation(line: 942, column: 18, scope: !1404)
!1430 = !DILocation(line: 942, column: 7, scope: !1404)
!1431 = !DILocation(line: 942, column: 8, scope: !1432)
!1432 = !DILexicalBlockFile(scope: !1433, file: !263, discriminator: 1)
!1433 = distinct !DILexicalBlock(scope: !1404, file: !263, line: 942, column: 2)
!1434 = !DILocation(line: 942, column: 16, scope: !1432)
!1435 = !DILocation(line: 942, column: 25, scope: !1432)
!1436 = !DILocation(line: 942, column: 21, scope: !1432)
!1437 = !DILocation(line: 942, column: 2, scope: !1432)
!1438 = !DILocation(line: 943, column: 7, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !263, line: 943, column: 7)
!1440 = distinct !DILexicalBlock(scope: !1433, file: !263, line: 942, column: 7)
!1441 = !DILocation(line: 943, column: 15, scope: !1439)
!1442 = !DILocation(line: 943, column: 7, scope: !1440)
!1443 = !DILocation(line: 944, column: 20, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1439, file: !263, line: 943, column: 22)
!1445 = !DILocation(line: 944, column: 4, scope: !1444)
!1446 = !DILocation(line: 945, column: 21, scope: !1444)
!1447 = !DILocation(line: 945, column: 4, scope: !1444)
!1448 = !DILocation(line: 946, column: 3, scope: !1444)
!1449 = !DILocation(line: 947, column: 18, scope: !1440)
!1450 = !DILocation(line: 947, column: 26, scope: !1440)
!1451 = !DILocation(line: 947, column: 3, scope: !1440)
!1452 = !DILocation(line: 948, column: 20, scope: !1440)
!1453 = !DILocation(line: 948, column: 23, scope: !1440)
!1454 = !DILocation(line: 948, column: 3, scope: !1440)
!1455 = !DILocation(line: 949, column: 2, scope: !1440)
!1456 = !DILocation(line: 942, column: 38, scope: !1457)
!1457 = !DILexicalBlockFile(scope: !1433, file: !263, discriminator: 2)
!1458 = !DILocation(line: 942, column: 36, scope: !1457)
!1459 = !DILocalVariable(name: "__mptr", scope: !1460, file: !263, line: 942, type: !1405)
!1460 = distinct !DILexicalBlock(scope: !1433, file: !263, line: 942, column: 64)
!1461 = !DILocation(line: 942, column: 116, scope: !1460)
!1462 = !DILocation(line: 942, column: 126, scope: !1457)
!1463 = !DILocation(line: 942, column: 138, scope: !1457)
!1464 = !DILocation(line: 942, column: 143, scope: !1457)
!1465 = !DILocation(line: 942, column: 116, scope: !1457)
!1466 = !DILocation(line: 942, column: 183, scope: !1457)
!1467 = !DILocation(line: 942, column: 175, scope: !1457)
!1468 = !DILocation(line: 942, column: 190, scope: !1457)
!1469 = !DILocation(line: 942, column: 150, scope: !1457)
!1470 = !DILocation(line: 942, column: 66, scope: !1457)
!1471 = !DILocation(line: 942, column: 3, scope: !1457)
!1472 = !DILocation(line: 942, column: 61, scope: !1457)
!1473 = !DILocation(line: 942, column: 2, scope: !1457)
!1474 = distinct !{!1474, !1475}
!1475 = !DILocation(line: 942, column: 2, scope: !1390)
!1476 = !DILocation(line: 950, column: 1, scope: !1390)
!1477 = distinct !DISubprogram(name: "thread_clean_unuse", scope: !263, file: !263, line: 909, type: !1246, isLocal: true, isDefinition: true, scopeLine: 910, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!1478 = !DILocalVariable(name: "m", arg: 1, scope: !1477, file: !263, line: 909, type: !65)
!1479 = !DILocation(line: 909, column: 38, scope: !1477)
!1480 = !DILocalVariable(name: "thread", scope: !1477, file: !263, line: 911, type: !202)
!1481 = !DILocation(line: 911, column: 12, scope: !1477)
!1482 = !DILocalVariable(name: "thread_tmp", scope: !1477, file: !263, line: 911, type: !202)
!1483 = !DILocation(line: 911, column: 21, scope: !1477)
!1484 = !DILocalVariable(name: "l", scope: !1477, file: !263, line: 912, type: !1393)
!1485 = !DILocation(line: 912, column: 15, scope: !1477)
!1486 = !DILocation(line: 912, column: 20, scope: !1477)
!1487 = !DILocation(line: 912, column: 23, scope: !1477)
!1488 = !DILocalVariable(name: "__mptr", scope: !1489, file: !263, line: 914, type: !1405)
!1489 = distinct !DILexicalBlock(scope: !1490, file: !263, line: 914, column: 17)
!1490 = distinct !DILexicalBlock(scope: !1477, file: !263, line: 914, column: 2)
!1491 = !DILocation(line: 914, column: 65, scope: !1489)
!1492 = !DILocation(line: 914, column: 76, scope: !1489)
!1493 = !DILocation(line: 914, column: 80, scope: !1489)
!1494 = !DILocation(line: 914, column: 116, scope: !1489)
!1495 = !DILocation(line: 914, column: 108, scope: !1489)
!1496 = !DILocation(line: 914, column: 123, scope: !1489)
!1497 = !DILocation(line: 914, column: 87, scope: !1489)
!1498 = !DILocation(line: 914, column: 19, scope: !1489)
!1499 = !DILocation(line: 914, column: 3, scope: !1489)
!1500 = !DILocation(line: 914, column: 14, scope: !1490)
!1501 = !DILocalVariable(name: "__mptr", scope: !1502, file: !263, line: 914, type: !1405)
!1502 = distinct !DILexicalBlock(scope: !1490, file: !263, line: 914, column: 21)
!1503 = !DILocation(line: 914, column: 69, scope: !1502)
!1504 = !DILocation(line: 914, column: 79, scope: !1502)
!1505 = !DILocation(line: 914, column: 87, scope: !1502)
!1506 = !DILocation(line: 914, column: 92, scope: !1502)
!1507 = !DILocation(line: 914, column: 128, scope: !1502)
!1508 = !DILocation(line: 914, column: 120, scope: !1502)
!1509 = !DILocation(line: 914, column: 135, scope: !1502)
!1510 = !DILocation(line: 914, column: 99, scope: !1502)
!1511 = !DILocation(line: 914, column: 23, scope: !1502)
!1512 = !DILocation(line: 914, column: 3, scope: !1502)
!1513 = !DILocation(line: 914, column: 18, scope: !1490)
!1514 = !DILocation(line: 914, column: 7, scope: !1490)
!1515 = !DILocation(line: 914, column: 8, scope: !1516)
!1516 = !DILexicalBlockFile(scope: !1517, file: !263, discriminator: 1)
!1517 = distinct !DILexicalBlock(scope: !1490, file: !263, line: 914, column: 2)
!1518 = !DILocation(line: 914, column: 16, scope: !1516)
!1519 = !DILocation(line: 914, column: 25, scope: !1516)
!1520 = !DILocation(line: 914, column: 21, scope: !1516)
!1521 = !DILocation(line: 914, column: 2, scope: !1516)
!1522 = !DILocation(line: 915, column: 18, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1517, file: !263, line: 914, column: 7)
!1524 = !DILocation(line: 915, column: 26, scope: !1523)
!1525 = !DILocation(line: 915, column: 3, scope: !1523)
!1526 = !DILocation(line: 918, column: 9, scope: !1523)
!1527 = !DILocation(line: 918, column: 4, scope: !1523)
!1528 = !DILocation(line: 918, column: 27, scope: !1523)
!1529 = !DILocation(line: 919, column: 3, scope: !1523)
!1530 = !DILocation(line: 919, column: 6, scope: !1523)
!1531 = !DILocation(line: 919, column: 11, scope: !1523)
!1532 = !DILocation(line: 920, column: 2, scope: !1523)
!1533 = !DILocation(line: 914, column: 38, scope: !1534)
!1534 = !DILexicalBlockFile(scope: !1517, file: !263, discriminator: 2)
!1535 = !DILocation(line: 914, column: 36, scope: !1534)
!1536 = !DILocalVariable(name: "__mptr", scope: !1537, file: !263, line: 914, type: !1405)
!1537 = distinct !DILexicalBlock(scope: !1517, file: !263, line: 914, column: 64)
!1538 = !DILocation(line: 914, column: 116, scope: !1537)
!1539 = !DILocation(line: 914, column: 126, scope: !1534)
!1540 = !DILocation(line: 914, column: 138, scope: !1534)
!1541 = !DILocation(line: 914, column: 143, scope: !1534)
!1542 = !DILocation(line: 914, column: 116, scope: !1534)
!1543 = !DILocation(line: 914, column: 183, scope: !1534)
!1544 = !DILocation(line: 914, column: 175, scope: !1534)
!1545 = !DILocation(line: 914, column: 190, scope: !1534)
!1546 = !DILocation(line: 914, column: 150, scope: !1534)
!1547 = !DILocation(line: 914, column: 66, scope: !1534)
!1548 = !DILocation(line: 914, column: 3, scope: !1534)
!1549 = !DILocation(line: 914, column: 61, scope: !1534)
!1550 = !DILocation(line: 914, column: 2, scope: !1534)
!1551 = distinct !{!1551, !1552}
!1552 = !DILocation(line: 914, column: 2, scope: !1477)
!1553 = !DILocation(line: 922, column: 2, scope: !1477)
!1554 = distinct !{!1554, !1553}
!1555 = !DILocation(line: 922, column: 20, scope: !1556)
!1556 = !DILexicalBlockFile(scope: !1557, file: !263, discriminator: 1)
!1557 = distinct !DILexicalBlock(scope: !1477, file: !263, line: 922, column: 5)
!1558 = !DILocation(line: 922, column: 8, scope: !1556)
!1559 = !DILocation(line: 922, column: 12, scope: !1556)
!1560 = !DILocation(line: 922, column: 17, scope: !1556)
!1561 = !DILocation(line: 922, column: 37, scope: !1556)
!1562 = !DILocation(line: 922, column: 25, scope: !1556)
!1563 = !DILocation(line: 922, column: 29, scope: !1556)
!1564 = !DILocation(line: 922, column: 34, scope: !1556)
!1565 = !DILocation(line: 922, column: 41, scope: !1556)
!1566 = !DILocation(line: 923, column: 1, scope: !1477)
!1567 = distinct !DISubprogram(name: "thread_destroy_master", scope: !263, file: !263, line: 1005, type: !1246, isLocal: false, isDefinition: true, scopeLine: 1006, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!1568 = !DILocalVariable(name: "m", arg: 1, scope: !1567, file: !263, line: 1005, type: !65)
!1569 = !DILocation(line: 1005, column: 41, scope: !1567)
!1570 = !DILocation(line: 1007, column: 6, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1567, file: !263, line: 1007, column: 6)
!1572 = !DILocation(line: 1007, column: 9, scope: !1571)
!1573 = !DILocation(line: 1007, column: 18, scope: !1571)
!1574 = !DILocation(line: 1007, column: 6, scope: !1567)
!1575 = !DILocation(line: 1008, column: 9, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1571, file: !263, line: 1007, column: 25)
!1577 = !DILocation(line: 1008, column: 12, scope: !1576)
!1578 = !DILocation(line: 1008, column: 3, scope: !1576)
!1579 = !DILocation(line: 1009, column: 3, scope: !1576)
!1580 = !DILocation(line: 1009, column: 6, scope: !1576)
!1581 = !DILocation(line: 1009, column: 15, scope: !1576)
!1582 = !DILocation(line: 1010, column: 2, scope: !1576)
!1583 = !DILocation(line: 1012, column: 6, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1567, file: !263, line: 1012, column: 6)
!1585 = !DILocation(line: 1012, column: 9, scope: !1584)
!1586 = !DILocation(line: 1012, column: 18, scope: !1584)
!1587 = !DILocation(line: 1012, column: 6, scope: !1567)
!1588 = !DILocation(line: 1013, column: 9, scope: !1584)
!1589 = !DILocation(line: 1013, column: 12, scope: !1584)
!1590 = !DILocation(line: 1013, column: 3, scope: !1584)
!1591 = !DILocation(line: 1015, column: 6, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1567, file: !263, line: 1015, column: 6)
!1593 = !DILocation(line: 1015, column: 19, scope: !1592)
!1594 = !DILocation(line: 1015, column: 6, scope: !1567)
!1595 = !DILocation(line: 1016, column: 3, scope: !1592)
!1596 = !DILocation(line: 1018, column: 24, scope: !1567)
!1597 = !DILocation(line: 1018, column: 2, scope: !1567)
!1598 = !DILocation(line: 1020, column: 8, scope: !1567)
!1599 = !DILocation(line: 1020, column: 3, scope: !1567)
!1600 = !DILocation(line: 1020, column: 16, scope: !1567)
!1601 = !DILocation(line: 1021, column: 1, scope: !1567)
!1602 = distinct !DISubprogram(name: "thread_event_get", scope: !263, file: !263, line: 656, type: !1603, isLocal: true, isDefinition: true, scopeLine: 657, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!197, !65, !126}
!1605 = !DILocalVariable(name: "m", arg: 1, scope: !1602, file: !263, line: 656, type: !65)
!1606 = !DILocation(line: 656, column: 35, scope: !1602)
!1607 = !DILocalVariable(name: "fd", arg: 2, scope: !1602, file: !263, line: 656, type: !126)
!1608 = !DILocation(line: 656, column: 42, scope: !1602)
!1609 = !DILocalVariable(name: "event", scope: !1602, file: !263, line: 658, type: !198)
!1610 = !DILocation(line: 658, column: 17, scope: !1602)
!1611 = !DILocation(line: 658, column: 25, scope: !1602)
!1612 = !DILocation(line: 658, column: 33, scope: !1602)
!1613 = !DILocalVariable(name: "__n", scope: !1614, file: !263, line: 660, type: !1110)
!1614 = distinct !DILexicalBlock(scope: !1602, file: !263, line: 660, column: 10)
!1615 = !DILocation(line: 660, column: 23, scope: !1614)
!1616 = !DILocation(line: 660, column: 31, scope: !1614)
!1617 = !DILocation(line: 660, column: 34, scope: !1614)
!1618 = !DILocation(line: 660, column: 46, scope: !1614)
!1619 = !DILocalVariable(name: "__ret", scope: !1614, file: !263, line: 660, type: !197)
!1620 = !DILocation(line: 660, column: 70, scope: !1614)
!1621 = !DILocalVariable(name: "__data", scope: !1614, file: !263, line: 660, type: !197)
!1622 = !DILocation(line: 660, column: 10, scope: !1614)
!1623 = !DILocation(line: 660, column: 18, scope: !1614)
!1624 = !DILocation(line: 660, column: 25, scope: !1625)
!1625 = !DILexicalBlockFile(scope: !1614, file: !263, discriminator: 1)
!1626 = !DILocation(line: 660, column: 18, scope: !1625)
!1627 = !DILocation(line: 660, column: 42, scope: !1628)
!1628 = !DILexicalBlockFile(scope: !1629, file: !263, discriminator: 2)
!1629 = distinct !DILexicalBlock(scope: !1614, file: !263, line: 660, column: 30)
!1630 = !DILocation(line: 660, column: 41, scope: !1628)
!1631 = !DILocalVariable(name: "__mptr", scope: !1632, file: !263, line: 660, type: !1130)
!1632 = distinct !DILexicalBlock(scope: !1629, file: !263, line: 660, column: 50)
!1633 = !DILocation(line: 660, column: 95, scope: !1632)
!1634 = !DILocation(line: 660, column: 105, scope: !1635)
!1635 = !DILexicalBlockFile(scope: !1632, file: !263, discriminator: 3)
!1636 = !DILocation(line: 660, column: 95, scope: !1635)
!1637 = !DILocation(line: 660, column: 140, scope: !1635)
!1638 = !DILocation(line: 660, column: 132, scope: !1635)
!1639 = !DILocation(line: 660, column: 147, scope: !1635)
!1640 = !DILocation(line: 660, column: 111, scope: !1635)
!1641 = !DILocation(line: 660, column: 52, scope: !1635)
!1642 = !DILocation(line: 660, column: 10, scope: !1635)
!1643 = !DILocation(line: 660, column: 41, scope: !1635)
!1644 = !DILocation(line: 660, column: 41, scope: !1645)
!1645 = !DILexicalBlockFile(scope: !1629, file: !263, discriminator: 4)
!1646 = !DILocation(line: 660, column: 41, scope: !1647)
!1647 = !DILexicalBlockFile(scope: !1629, file: !263, discriminator: 5)
!1648 = !DILocation(line: 660, column: 39, scope: !1647)
!1649 = !DILocalVariable(name: "__cmp", scope: !1629, file: !263, line: 660, type: !126)
!1650 = !DILocation(line: 660, column: 14, scope: !1629)
!1651 = !DILocation(line: 660, column: 47, scope: !1647)
!1652 = !DILocation(line: 660, column: 22, scope: !1647)
!1653 = !DILocation(line: 660, column: 14, scope: !1647)
!1654 = !DILocation(line: 660, column: 60, scope: !1647)
!1655 = !DILocation(line: 660, column: 66, scope: !1647)
!1656 = !DILocation(line: 660, column: 77, scope: !1657)
!1657 = !DILexicalBlockFile(scope: !1658, file: !263, discriminator: 6)
!1658 = distinct !DILexicalBlock(scope: !1629, file: !263, line: 660, column: 60)
!1659 = !DILocation(line: 660, column: 82, scope: !1657)
!1660 = !DILocation(line: 660, column: 75, scope: !1657)
!1661 = !DILocation(line: 660, column: 71, scope: !1657)
!1662 = !DILocation(line: 660, column: 100, scope: !1663)
!1663 = !DILexicalBlockFile(scope: !1664, file: !263, discriminator: 7)
!1664 = distinct !DILexicalBlock(scope: !1658, file: !263, line: 660, column: 100)
!1665 = !DILocation(line: 660, column: 106, scope: !1663)
!1666 = !DILocation(line: 660, column: 117, scope: !1667)
!1667 = !DILexicalBlockFile(scope: !1664, file: !263, discriminator: 8)
!1668 = !DILocation(line: 660, column: 122, scope: !1667)
!1669 = !DILocation(line: 660, column: 115, scope: !1667)
!1670 = !DILocation(line: 660, column: 111, scope: !1667)
!1671 = !DILocation(line: 660, column: 147, scope: !1672)
!1672 = !DILexicalBlockFile(scope: !1673, file: !263, discriminator: 9)
!1673 = distinct !DILexicalBlock(scope: !1664, file: !263, line: 660, column: 137)
!1674 = !DILocation(line: 660, column: 145, scope: !1672)
!1675 = !DILocation(line: 660, column: 155, scope: !1672)
!1676 = !DILocation(line: 660, column: 18, scope: !1677)
!1677 = !DILexicalBlockFile(scope: !1614, file: !263, discriminator: 10)
!1678 = distinct !{!1678, !1623}
!1679 = !DILocation(line: 660, column: 166, scope: !1680)
!1680 = !DILexicalBlockFile(scope: !1614, file: !263, discriminator: 11)
!1681 = !DILocation(line: 660, column: 18, scope: !1680)
!1682 = !DILocation(line: 660, column: 173, scope: !1680)
!1683 = !DILocation(line: 660, column: 2, scope: !1680)
!1684 = distinct !DISubprogram(name: "thread_event_new", scope: !263, file: !263, line: 635, type: !1603, isLocal: true, isDefinition: true, scopeLine: 636, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!1685 = !DILocalVariable(name: "m", arg: 1, scope: !1684, file: !263, line: 635, type: !65)
!1686 = !DILocation(line: 635, column: 35, scope: !1684)
!1687 = !DILocalVariable(name: "fd", arg: 2, scope: !1684, file: !263, line: 635, type: !126)
!1688 = !DILocation(line: 635, column: 42, scope: !1684)
!1689 = !DILocalVariable(name: "event", scope: !1684, file: !263, line: 637, type: !197)
!1690 = !DILocation(line: 637, column: 18, scope: !1684)
!1691 = !DILocation(line: 639, column: 30, scope: !1684)
!1692 = !DILocation(line: 639, column: 10, scope: !1684)
!1693 = !DILocation(line: 639, column: 8, scope: !1684)
!1694 = !DILocation(line: 640, column: 7, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1684, file: !263, line: 640, column: 6)
!1696 = !DILocation(line: 640, column: 6, scope: !1684)
!1697 = !DILocation(line: 641, column: 3, scope: !1695)
!1698 = !DILocation(line: 643, column: 27, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1684, file: !263, line: 643, column: 6)
!1700 = !DILocation(line: 643, column: 6, scope: !1699)
!1701 = !DILocation(line: 643, column: 33, scope: !1699)
!1702 = !DILocation(line: 643, column: 6, scope: !1684)
!1703 = !DILocation(line: 644, column: 9, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1699, file: !263, line: 643, column: 38)
!1705 = !DILocation(line: 644, column: 4, scope: !1704)
!1706 = !DILocation(line: 644, column: 25, scope: !1704)
!1707 = !DILocation(line: 645, column: 3, scope: !1704)
!1708 = !DILocation(line: 648, column: 14, scope: !1684)
!1709 = !DILocation(line: 648, column: 2, scope: !1684)
!1710 = !DILocation(line: 648, column: 9, scope: !1684)
!1711 = !DILocation(line: 648, column: 12, scope: !1684)
!1712 = !DILocalVariable(name: "__n", scope: !1713, file: !263, line: 650, type: !1109)
!1713 = distinct !DILexicalBlock(scope: !1684, file: !263, line: 650, column: 3)
!1714 = !DILocation(line: 650, column: 17, scope: !1713)
!1715 = !DILocation(line: 650, column: 26, scope: !1713)
!1716 = !DILocation(line: 650, column: 29, scope: !1713)
!1717 = !DILocation(line: 650, column: 41, scope: !1713)
!1718 = !DILocalVariable(name: "__parent", scope: !1713, file: !263, line: 650, type: !1110)
!1719 = !DILocation(line: 650, column: 51, scope: !1713)
!1720 = !DILocalVariable(name: "__data", scope: !1713, file: !263, line: 650, type: !197)
!1721 = !DILocation(line: 650, column: 25, scope: !1713)
!1722 = !DILocation(line: 650, column: 33, scope: !1723)
!1723 = !DILexicalBlockFile(scope: !1713, file: !263, discriminator: 1)
!1724 = !DILocation(line: 650, column: 32, scope: !1723)
!1725 = !DILocation(line: 650, column: 25, scope: !1723)
!1726 = !DILocation(line: 650, column: 51, scope: !1727)
!1727 = !DILexicalBlockFile(scope: !1728, file: !263, discriminator: 2)
!1728 = distinct !DILexicalBlock(scope: !1713, file: !263, line: 650, column: 38)
!1729 = !DILocation(line: 650, column: 50, scope: !1727)
!1730 = !DILocation(line: 650, column: 49, scope: !1727)
!1731 = !DILocalVariable(name: "__mptr", scope: !1732, file: !263, line: 650, type: !1130)
!1732 = distinct !DILexicalBlock(scope: !1728, file: !263, line: 650, column: 59)
!1733 = !DILocation(line: 650, column: 103, scope: !1732)
!1734 = !DILocation(line: 650, column: 114, scope: !1735)
!1735 = !DILexicalBlockFile(scope: !1732, file: !263, discriminator: 3)
!1736 = !DILocation(line: 650, column: 113, scope: !1735)
!1737 = !DILocation(line: 650, column: 103, scope: !1735)
!1738 = !DILocation(line: 650, column: 148, scope: !1735)
!1739 = !DILocation(line: 650, column: 140, scope: !1735)
!1740 = !DILocation(line: 650, column: 155, scope: !1735)
!1741 = !DILocation(line: 650, column: 120, scope: !1735)
!1742 = !DILocation(line: 650, column: 61, scope: !1735)
!1743 = !DILocation(line: 650, column: 3, scope: !1735)
!1744 = !DILocation(line: 650, column: 49, scope: !1735)
!1745 = !DILocation(line: 650, column: 49, scope: !1746)
!1746 = !DILexicalBlockFile(scope: !1728, file: !263, discriminator: 4)
!1747 = !DILocation(line: 650, column: 49, scope: !1748)
!1748 = !DILexicalBlockFile(scope: !1728, file: !263, discriminator: 5)
!1749 = !DILocation(line: 650, column: 47, scope: !1748)
!1750 = !DILocalVariable(name: "__cmp", scope: !1728, file: !263, line: 650, type: !126)
!1751 = !DILocation(line: 650, column: 7, scope: !1728)
!1752 = !DILocation(line: 650, column: 32, scope: !1748)
!1753 = !DILocation(line: 650, column: 39, scope: !1748)
!1754 = !DILocation(line: 650, column: 15, scope: !1748)
!1755 = !DILocation(line: 650, column: 7, scope: !1748)
!1756 = !DILocation(line: 650, column: 60, scope: !1748)
!1757 = !DILocation(line: 650, column: 59, scope: !1748)
!1758 = !DILocation(line: 650, column: 57, scope: !1748)
!1759 = !DILocation(line: 650, column: 69, scope: !1748)
!1760 = !DILocation(line: 650, column: 75, scope: !1748)
!1761 = !DILocation(line: 650, column: 91, scope: !1762)
!1762 = !DILexicalBlockFile(scope: !1763, file: !263, discriminator: 6)
!1763 = distinct !DILexicalBlock(scope: !1728, file: !263, line: 650, column: 69)
!1764 = !DILocation(line: 650, column: 90, scope: !1762)
!1765 = !DILocation(line: 650, column: 97, scope: !1762)
!1766 = !DILocation(line: 650, column: 85, scope: !1762)
!1767 = !DILocation(line: 650, column: 81, scope: !1762)
!1768 = !DILocation(line: 650, column: 116, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !1770, file: !263, discriminator: 7)
!1770 = distinct !DILexicalBlock(scope: !1763, file: !263, line: 650, column: 116)
!1771 = !DILocation(line: 650, column: 122, scope: !1769)
!1772 = !DILocation(line: 650, column: 137, scope: !1773)
!1773 = !DILexicalBlockFile(scope: !1770, file: !263, discriminator: 8)
!1774 = !DILocation(line: 650, column: 136, scope: !1773)
!1775 = !DILocation(line: 650, column: 143, scope: !1773)
!1776 = !DILocation(line: 650, column: 131, scope: !1773)
!1777 = !DILocation(line: 650, column: 127, scope: !1773)
!1778 = !DILocation(line: 650, column: 25, scope: !1779)
!1779 = !DILexicalBlockFile(scope: !1713, file: !263, discriminator: 9)
!1780 = distinct !{!1780, !1721}
!1781 = !DILocation(line: 650, column: 172, scope: !1782)
!1782 = !DILexicalBlockFile(scope: !1713, file: !263, discriminator: 10)
!1783 = !DILocation(line: 650, column: 180, scope: !1782)
!1784 = !DILocation(line: 650, column: 184, scope: !1782)
!1785 = !DILocation(line: 650, column: 194, scope: !1782)
!1786 = !DILocation(line: 650, column: 156, scope: !1782)
!1787 = !DILocation(line: 650, column: 219, scope: !1782)
!1788 = !DILocation(line: 650, column: 227, scope: !1782)
!1789 = !DILocation(line: 650, column: 232, scope: !1782)
!1790 = !DILocation(line: 650, column: 235, scope: !1782)
!1791 = !DILocation(line: 650, column: 200, scope: !1792)
!1792 = !DILexicalBlockFile(scope: !1782, file: !263, discriminator: 11)
!1793 = !DILocation(line: 652, column: 9, scope: !1684)
!1794 = !DILocation(line: 652, column: 2, scope: !1684)
!1795 = !DILocation(line: 653, column: 1, scope: !1684)
!1796 = distinct !DISubprogram(name: "__test_bit", scope: !1797, file: !1797, line: 47, type: !1798, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!1797 = !DIFile(filename: "bitops.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!260, !110, !1800}
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64, align: 64)
!1801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!1802 = !DILocalVariable(name: "idx", arg: 1, scope: !1796, file: !1797, line: 47, type: !110)
!1803 = !DILocation(line: 47, column: 39, scope: !1796)
!1804 = !DILocalVariable(name: "bmap", arg: 2, scope: !1796, file: !1797, line: 47, type: !1800)
!1805 = !DILocation(line: 47, column: 65, scope: !1796)
!1806 = !DILocation(line: 49, column: 19, scope: !1796)
!1807 = !DILocation(line: 49, column: 18, scope: !1796)
!1808 = !DILocation(line: 49, column: 24, scope: !1796)
!1809 = !DILocation(line: 49, column: 12, scope: !1796)
!1810 = !DILocation(line: 49, column: 68, scope: !1796)
!1811 = !DILocation(line: 49, column: 67, scope: !1796)
!1812 = !DILocation(line: 49, column: 73, scope: !1796)
!1813 = !DILocation(line: 49, column: 63, scope: !1796)
!1814 = !DILocation(line: 49, column: 56, scope: !1796)
!1815 = !DILocation(line: 49, column: 10, scope: !1796)
!1816 = !DILocation(line: 49, column: 9, scope: !1796)
!1817 = !DILocation(line: 49, column: 2, scope: !1796)
!1818 = distinct !DISubprogram(name: "thread_new", scope: !263, file: !263, line: 1046, type: !1819, isLocal: true, isDefinition: true, scopeLine: 1047, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!202, !65}
!1821 = !DILocalVariable(name: "m", arg: 1, scope: !1818, file: !263, line: 1046, type: !65)
!1822 = !DILocation(line: 1046, column: 29, scope: !1818)
!1823 = !DILocalVariable(name: "new", scope: !1818, file: !263, line: 1048, type: !202)
!1824 = !DILocation(line: 1048, column: 12, scope: !1818)
!1825 = !DILocation(line: 1051, column: 26, scope: !1818)
!1826 = !DILocation(line: 1051, column: 29, scope: !1818)
!1827 = !DILocation(line: 1051, column: 8, scope: !1818)
!1828 = !DILocation(line: 1051, column: 6, scope: !1818)
!1829 = !DILocation(line: 1052, column: 7, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1818, file: !263, line: 1052, column: 6)
!1831 = !DILocation(line: 1052, column: 6, scope: !1818)
!1832 = !DILocation(line: 1053, column: 22, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1830, file: !263, line: 1052, column: 12)
!1834 = !DILocation(line: 1053, column: 9, scope: !1833)
!1835 = !DILocation(line: 1053, column: 7, scope: !1833)
!1836 = !DILocation(line: 1054, column: 3, scope: !1833)
!1837 = !DILocation(line: 1054, column: 6, scope: !1833)
!1838 = !DILocation(line: 1054, column: 11, scope: !1833)
!1839 = !DILocation(line: 1055, column: 2, scope: !1833)
!1840 = !DILocation(line: 1057, column: 2, scope: !1818)
!1841 = distinct !{!1841, !1840}
!1842 = !DILocation(line: 1057, column: 30, scope: !1843)
!1843 = !DILexicalBlockFile(scope: !1844, file: !263, discriminator: 1)
!1844 = distinct !DILexicalBlock(scope: !1818, file: !263, line: 1057, column: 5)
!1845 = !DILocation(line: 1057, column: 35, scope: !1843)
!1846 = !DILocation(line: 1057, column: 9, scope: !1843)
!1847 = !DILocation(line: 1057, column: 14, scope: !1843)
!1848 = !DILocation(line: 1057, column: 21, scope: !1843)
!1849 = !DILocation(line: 1057, column: 26, scope: !1843)
!1850 = !DILocation(line: 1057, column: 65, scope: !1843)
!1851 = !DILocation(line: 1057, column: 70, scope: !1843)
!1852 = !DILocation(line: 1057, column: 44, scope: !1843)
!1853 = !DILocation(line: 1057, column: 49, scope: !1843)
!1854 = !DILocation(line: 1057, column: 56, scope: !1843)
!1855 = !DILocation(line: 1057, column: 61, scope: !1843)
!1856 = !DILocation(line: 1057, column: 77, scope: !1843)
!1857 = !DILocation(line: 1058, column: 26, scope: !1818)
!1858 = !DILocation(line: 1058, column: 12, scope: !1818)
!1859 = !DILocation(line: 1058, column: 2, scope: !1818)
!1860 = !DILocation(line: 1058, column: 7, scope: !1818)
!1861 = !DILocation(line: 1058, column: 10, scope: !1818)
!1862 = !DILocation(line: 1059, column: 9, scope: !1818)
!1863 = !DILocation(line: 1059, column: 2, scope: !1818)
!1864 = distinct !DISubprogram(name: "__set_bit", scope: !1797, file: !1797, line: 37, type: !1865, isLocal: true, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{null, !110, !1867}
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!1868 = !DILocalVariable(name: "idx", arg: 1, scope: !1864, file: !1797, line: 37, type: !110)
!1869 = !DILocation(line: 37, column: 39, scope: !1864)
!1870 = !DILocalVariable(name: "bmap", arg: 2, scope: !1864, file: !1797, line: 37, type: !1867)
!1871 = !DILocation(line: 37, column: 59, scope: !1864)
!1872 = !DILocation(line: 39, column: 59, scope: !1864)
!1873 = !DILocation(line: 39, column: 58, scope: !1864)
!1874 = !DILocation(line: 39, column: 64, scope: !1864)
!1875 = !DILocation(line: 39, column: 54, scope: !1864)
!1876 = !DILocation(line: 39, column: 9, scope: !1864)
!1877 = !DILocation(line: 39, column: 8, scope: !1864)
!1878 = !DILocation(line: 39, column: 14, scope: !1864)
!1879 = !DILocation(line: 39, column: 2, scope: !1864)
!1880 = !DILocation(line: 39, column: 46, scope: !1864)
!1881 = !DILocation(line: 40, column: 1, scope: !1864)
!1882 = distinct !DISubprogram(name: "thread_event_set", scope: !263, file: !263, line: 664, type: !969, isLocal: true, isDefinition: true, scopeLine: 665, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!1883 = !DILocalVariable(name: "thread", arg: 1, scope: !1882, file: !263, line: 664, type: !202)
!1884 = !DILocation(line: 664, column: 28, scope: !1882)
!1885 = !DILocalVariable(name: "event", scope: !1882, file: !263, line: 666, type: !197)
!1886 = !DILocation(line: 666, column: 18, scope: !1882)
!1887 = !DILocation(line: 666, column: 26, scope: !1882)
!1888 = !DILocation(line: 666, column: 34, scope: !1882)
!1889 = !DILocalVariable(name: "m", scope: !1882, file: !263, line: 667, type: !65)
!1890 = !DILocation(line: 667, column: 19, scope: !1882)
!1891 = !DILocation(line: 667, column: 23, scope: !1882)
!1892 = !DILocation(line: 667, column: 31, scope: !1882)
!1893 = !DILocalVariable(name: "ev", scope: !1882, file: !263, line: 668, type: !182)
!1894 = !DILocation(line: 668, column: 21, scope: !1882)
!1895 = !DILocalVariable(name: "op", scope: !1882, file: !263, line: 669, type: !126)
!1896 = !DILocation(line: 669, column: 6, scope: !1882)
!1897 = !DILocation(line: 671, column: 2, scope: !1882)
!1898 = !DILocation(line: 672, column: 16, scope: !1882)
!1899 = !DILocation(line: 672, column: 5, scope: !1882)
!1900 = !DILocation(line: 672, column: 10, scope: !1882)
!1901 = !DILocation(line: 672, column: 14, scope: !1882)
!1902 = !DILocation(line: 673, column: 38, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1882, file: !263, line: 673, column: 6)
!1904 = !DILocation(line: 673, column: 45, scope: !1903)
!1905 = !DILocation(line: 673, column: 6, scope: !1903)
!1906 = !DILocation(line: 673, column: 6, scope: !1882)
!1907 = !DILocation(line: 674, column: 6, scope: !1903)
!1908 = !DILocation(line: 674, column: 13, scope: !1903)
!1909 = !DILocation(line: 674, column: 3, scope: !1903)
!1910 = !DILocation(line: 676, column: 39, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1882, file: !263, line: 676, column: 6)
!1912 = !DILocation(line: 676, column: 46, scope: !1911)
!1913 = !DILocation(line: 676, column: 6, scope: !1911)
!1914 = !DILocation(line: 676, column: 6, scope: !1882)
!1915 = !DILocation(line: 677, column: 6, scope: !1911)
!1916 = !DILocation(line: 677, column: 13, scope: !1911)
!1917 = !DILocation(line: 677, column: 3, scope: !1911)
!1918 = !DILocation(line: 679, column: 39, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1882, file: !263, line: 679, column: 6)
!1920 = !DILocation(line: 679, column: 46, scope: !1919)
!1921 = !DILocation(line: 679, column: 6, scope: !1919)
!1922 = !DILocation(line: 679, column: 6, scope: !1882)
!1923 = !DILocation(line: 680, column: 6, scope: !1919)
!1924 = !DILocation(line: 680, column: 3, scope: !1919)
!1925 = !DILocation(line: 682, column: 6, scope: !1919)
!1926 = !DILocation(line: 684, column: 16, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1882, file: !263, line: 684, column: 6)
!1928 = !DILocation(line: 684, column: 19, scope: !1927)
!1929 = !DILocation(line: 684, column: 29, scope: !1927)
!1930 = !DILocation(line: 684, column: 33, scope: !1927)
!1931 = !DILocation(line: 684, column: 40, scope: !1927)
!1932 = !DILocation(line: 684, column: 6, scope: !1927)
!1933 = !DILocation(line: 684, column: 49, scope: !1927)
!1934 = !DILocation(line: 684, column: 6, scope: !1882)
!1935 = !DILocation(line: 685, column: 3, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1927, file: !263, line: 684, column: 54)
!1937 = !DILocation(line: 686, column: 3, scope: !1936)
!1938 = !DILocation(line: 689, column: 34, scope: !1882)
!1939 = !DILocation(line: 689, column: 41, scope: !1882)
!1940 = !DILocation(line: 689, column: 2, scope: !1882)
!1941 = !DILocation(line: 690, column: 2, scope: !1882)
!1942 = !DILocation(line: 691, column: 1, scope: !1882)
!1943 = distinct !DISubprogram(name: "thread_add_unuse", scope: !263, file: !263, line: 927, type: !1944, isLocal: true, isDefinition: true, scopeLine: 928, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{null, !65, !202}
!1946 = !DILocalVariable(name: "m", arg: 1, scope: !1943, file: !263, line: 927, type: !65)
!1947 = !DILocation(line: 927, column: 35, scope: !1943)
!1948 = !DILocalVariable(name: "thread", arg: 2, scope: !1943, file: !263, line: 927, type: !202)
!1949 = !DILocation(line: 927, column: 48, scope: !1943)
!1950 = !DILocation(line: 930, column: 2, scope: !1943)
!1951 = !DILocation(line: 930, column: 10, scope: !1943)
!1952 = !DILocation(line: 930, column: 15, scope: !1943)
!1953 = !DILocation(line: 931, column: 2, scope: !1943)
!1954 = !DILocation(line: 931, column: 10, scope: !1943)
!1955 = !DILocation(line: 931, column: 16, scope: !1943)
!1956 = !DILocation(line: 932, column: 2, scope: !1943)
!1957 = distinct !{!1957, !1956}
!1958 = !DILocation(line: 932, column: 33, scope: !1959)
!1959 = !DILexicalBlockFile(scope: !1960, file: !263, discriminator: 1)
!1960 = distinct !DILexicalBlock(scope: !1943, file: !263, line: 932, column: 5)
!1961 = !DILocation(line: 932, column: 41, scope: !1959)
!1962 = !DILocation(line: 932, column: 9, scope: !1959)
!1963 = !DILocation(line: 932, column: 17, scope: !1959)
!1964 = !DILocation(line: 932, column: 24, scope: !1959)
!1965 = !DILocation(line: 932, column: 29, scope: !1959)
!1966 = !DILocation(line: 932, column: 74, scope: !1959)
!1967 = !DILocation(line: 932, column: 82, scope: !1959)
!1968 = !DILocation(line: 932, column: 50, scope: !1959)
!1969 = !DILocation(line: 932, column: 58, scope: !1959)
!1970 = !DILocation(line: 932, column: 65, scope: !1959)
!1971 = !DILocation(line: 932, column: 70, scope: !1959)
!1972 = !DILocation(line: 932, column: 89, scope: !1959)
!1973 = !DILocation(line: 933, column: 17, scope: !1943)
!1974 = !DILocation(line: 933, column: 25, scope: !1943)
!1975 = !DILocation(line: 933, column: 32, scope: !1943)
!1976 = !DILocation(line: 933, column: 35, scope: !1943)
!1977 = !DILocation(line: 933, column: 2, scope: !1943)
!1978 = !DILocation(line: 934, column: 1, scope: !1943)
!1979 = distinct !DISubprogram(name: "thread_timer_cmp", scope: !263, file: !263, line: 891, type: !1980, isLocal: true, isDefinition: true, scopeLine: 892, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!126, !202, !202}
!1982 = !DILocalVariable(name: "t1", arg: 1, scope: !1979, file: !263, line: 891, type: !202)
!1983 = !DILocation(line: 891, column: 28, scope: !1979)
!1984 = !DILocalVariable(name: "t2", arg: 2, scope: !1979, file: !263, line: 891, type: !202)
!1985 = !DILocation(line: 891, column: 42, scope: !1979)
!1986 = !DILocation(line: 893, column: 6, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1979, file: !263, line: 893, column: 6)
!1988 = !DILocation(line: 893, column: 10, scope: !1987)
!1989 = !DILocation(line: 893, column: 16, scope: !1987)
!1990 = !DILocation(line: 893, column: 26, scope: !1987)
!1991 = !DILocation(line: 893, column: 30, scope: !1987)
!1992 = !DILocation(line: 893, column: 36, scope: !1987)
!1993 = !DILocation(line: 893, column: 23, scope: !1987)
!1994 = !DILocation(line: 893, column: 43, scope: !1987)
!1995 = !DILocation(line: 894, column: 6, scope: !1987)
!1996 = !DILocation(line: 894, column: 10, scope: !1987)
!1997 = !DILocation(line: 894, column: 16, scope: !1987)
!1998 = !DILocation(line: 894, column: 23, scope: !1987)
!1999 = !DILocation(line: 893, column: 6, scope: !2000)
!2000 = !DILexicalBlockFile(scope: !1979, file: !263, discriminator: 1)
!2001 = !DILocation(line: 895, column: 7, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !263, line: 895, column: 7)
!2003 = distinct !DILexicalBlock(scope: !1987, file: !263, line: 894, column: 41)
!2004 = !DILocation(line: 895, column: 11, scope: !2002)
!2005 = !DILocation(line: 895, column: 17, scope: !2002)
!2006 = !DILocation(line: 895, column: 24, scope: !2002)
!2007 = !DILocation(line: 895, column: 7, scope: !2003)
!2008 = !DILocation(line: 896, column: 8, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2010, file: !263, line: 896, column: 8)
!2010 = distinct !DILexicalBlock(scope: !2002, file: !263, line: 895, column: 42)
!2011 = !DILocation(line: 896, column: 12, scope: !2009)
!2012 = !DILocation(line: 896, column: 18, scope: !2009)
!2013 = !DILocation(line: 896, column: 25, scope: !2009)
!2014 = !DILocation(line: 896, column: 8, scope: !2010)
!2015 = !DILocation(line: 897, column: 5, scope: !2009)
!2016 = !DILocation(line: 898, column: 4, scope: !2010)
!2017 = !DILocation(line: 900, column: 7, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2003, file: !263, line: 900, column: 7)
!2019 = !DILocation(line: 900, column: 11, scope: !2018)
!2020 = !DILocation(line: 900, column: 17, scope: !2018)
!2021 = !DILocation(line: 900, column: 24, scope: !2018)
!2022 = !DILocation(line: 900, column: 7, scope: !2003)
!2023 = !DILocation(line: 901, column: 4, scope: !2018)
!2024 = !DILocation(line: 902, column: 10, scope: !2003)
!2025 = !DILocation(line: 902, column: 14, scope: !2003)
!2026 = !DILocation(line: 902, column: 20, scope: !2003)
!2027 = !DILocation(line: 902, column: 29, scope: !2003)
!2028 = !DILocation(line: 902, column: 33, scope: !2003)
!2029 = !DILocation(line: 902, column: 39, scope: !2003)
!2030 = !DILocation(line: 902, column: 27, scope: !2003)
!2031 = !DILocation(line: 902, column: 3, scope: !2003)
!2032 = !DILocation(line: 904, column: 9, scope: !1979)
!2033 = !DILocation(line: 904, column: 13, scope: !1979)
!2034 = !DILocation(line: 904, column: 19, scope: !1979)
!2035 = !DILocation(line: 904, column: 29, scope: !1979)
!2036 = !DILocation(line: 904, column: 33, scope: !1979)
!2037 = !DILocation(line: 904, column: 39, scope: !1979)
!2038 = !DILocation(line: 904, column: 27, scope: !1979)
!2039 = !DILocation(line: 904, column: 2, scope: !1979)
!2040 = !DILocation(line: 905, column: 1, scope: !1979)
!2041 = distinct !DISubprogram(name: "rb_link_node", scope: !71, file: !71, line: 159, type: !2042, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{null, !75, !75, !2044}
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!2045 = !DILocalVariable(name: "node", arg: 1, scope: !2041, file: !71, line: 159, type: !75)
!2046 = !DILocation(line: 159, column: 50, scope: !2041)
!2047 = !DILocalVariable(name: "parent", arg: 2, scope: !2041, file: !71, line: 159, type: !75)
!2048 = !DILocation(line: 159, column: 73, scope: !2041)
!2049 = !DILocalVariable(name: "rb_link", arg: 3, scope: !2041, file: !71, line: 160, type: !2044)
!2050 = !DILocation(line: 160, column: 23, scope: !2041)
!2051 = !DILocation(line: 162, column: 42, scope: !2041)
!2052 = !DILocation(line: 162, column: 26, scope: !2041)
!2053 = !DILocation(line: 162, column: 2, scope: !2041)
!2054 = !DILocation(line: 162, column: 8, scope: !2041)
!2055 = !DILocation(line: 162, column: 24, scope: !2041)
!2056 = !DILocation(line: 163, column: 18, scope: !2041)
!2057 = !DILocation(line: 163, column: 24, scope: !2041)
!2058 = !DILocation(line: 163, column: 33, scope: !2041)
!2059 = !DILocation(line: 163, column: 2, scope: !2041)
!2060 = !DILocation(line: 163, column: 8, scope: !2041)
!2061 = !DILocation(line: 163, column: 16, scope: !2041)
!2062 = !DILocation(line: 165, column: 13, scope: !2041)
!2063 = !DILocation(line: 165, column: 3, scope: !2041)
!2064 = !DILocation(line: 165, column: 11, scope: !2041)
!2065 = !DILocation(line: 166, column: 1, scope: !2041)
!2066 = distinct !DISubprogram(name: "thread_del_read", scope: !263, file: !263, line: 1123, type: !969, isLocal: false, isDefinition: true, scopeLine: 1124, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!2067 = !DILocalVariable(name: "thread", arg: 1, scope: !2066, file: !263, line: 1123, type: !202)
!2068 = !DILocation(line: 1123, column: 27, scope: !2066)
!2069 = !DILocation(line: 1125, column: 7, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2066, file: !263, line: 1125, column: 6)
!2071 = !DILocation(line: 1125, column: 14, scope: !2070)
!2072 = !DILocation(line: 1125, column: 18, scope: !2073)
!2073 = !DILexicalBlockFile(scope: !2070, file: !263, discriminator: 1)
!2074 = !DILocation(line: 1125, column: 26, scope: !2073)
!2075 = !DILocation(line: 1125, column: 6, scope: !2073)
!2076 = !DILocation(line: 1126, column: 3, scope: !2070)
!2077 = !DILocation(line: 1128, column: 23, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2066, file: !263, line: 1128, column: 6)
!2079 = !DILocation(line: 1128, column: 6, scope: !2078)
!2080 = !DILocation(line: 1128, column: 57, scope: !2078)
!2081 = !DILocation(line: 1128, column: 6, scope: !2066)
!2082 = !DILocation(line: 1129, column: 3, scope: !2078)
!2083 = !DILocation(line: 1131, column: 2, scope: !2066)
!2084 = !DILocation(line: 1132, column: 1, scope: !2066)
!2085 = distinct !DISubprogram(name: "thread_event_del", scope: !263, file: !263, line: 717, type: !2086, isLocal: true, isDefinition: true, scopeLine: 718, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!126, !202, !110}
!2088 = !DILocalVariable(name: "thread", arg: 1, scope: !2085, file: !263, line: 717, type: !202)
!2089 = !DILocation(line: 717, column: 28, scope: !2085)
!2090 = !DILocalVariable(name: "flag", arg: 2, scope: !2085, file: !263, line: 717, type: !110)
!2091 = !DILocation(line: 717, column: 45, scope: !2085)
!2092 = !DILocalVariable(name: "event", scope: !2085, file: !263, line: 719, type: !197)
!2093 = !DILocation(line: 719, column: 18, scope: !2085)
!2094 = !DILocation(line: 719, column: 26, scope: !2085)
!2095 = !DILocation(line: 719, column: 34, scope: !2085)
!2096 = !DILocation(line: 721, column: 18, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2085, file: !263, line: 721, column: 6)
!2098 = !DILocation(line: 721, column: 25, scope: !2097)
!2099 = !DILocation(line: 721, column: 32, scope: !2097)
!2100 = !DILocation(line: 721, column: 7, scope: !2097)
!2101 = !DILocation(line: 721, column: 6, scope: !2085)
!2102 = !DILocation(line: 722, column: 3, scope: !2097)
!2103 = !DILocation(line: 724, column: 6, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2085, file: !263, line: 724, column: 6)
!2105 = !DILocation(line: 724, column: 11, scope: !2104)
!2106 = !DILocation(line: 724, column: 6, scope: !2085)
!2107 = !DILocation(line: 725, column: 36, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2104, file: !263, line: 724, column: 40)
!2109 = !DILocation(line: 725, column: 43, scope: !2108)
!2110 = !DILocation(line: 725, column: 3, scope: !2108)
!2111 = !DILocation(line: 726, column: 47, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2108, file: !263, line: 726, column: 7)
!2113 = !DILocation(line: 726, column: 54, scope: !2112)
!2114 = !DILocation(line: 726, column: 8, scope: !2112)
!2115 = !DILocation(line: 726, column: 7, scope: !2108)
!2116 = !DILocation(line: 727, column: 31, scope: !2112)
!2117 = !DILocation(line: 727, column: 11, scope: !2112)
!2118 = !DILocation(line: 727, column: 4, scope: !2112)
!2119 = !DILocation(line: 729, column: 3, scope: !2108)
!2120 = !DILocation(line: 729, column: 10, scope: !2108)
!2121 = !DILocation(line: 729, column: 15, scope: !2108)
!2122 = !DILocation(line: 730, column: 2, scope: !2108)
!2123 = !DILocation(line: 731, column: 11, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2104, file: !263, line: 731, column: 11)
!2125 = !DILocation(line: 731, column: 16, scope: !2124)
!2126 = !DILocation(line: 731, column: 11, scope: !2104)
!2127 = !DILocation(line: 732, column: 37, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2124, file: !263, line: 731, column: 46)
!2129 = !DILocation(line: 732, column: 44, scope: !2128)
!2130 = !DILocation(line: 732, column: 3, scope: !2128)
!2131 = !DILocation(line: 733, column: 46, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2128, file: !263, line: 733, column: 7)
!2133 = !DILocation(line: 733, column: 53, scope: !2132)
!2134 = !DILocation(line: 733, column: 8, scope: !2132)
!2135 = !DILocation(line: 733, column: 7, scope: !2128)
!2136 = !DILocation(line: 734, column: 31, scope: !2132)
!2137 = !DILocation(line: 734, column: 11, scope: !2132)
!2138 = !DILocation(line: 734, column: 4, scope: !2132)
!2139 = !DILocation(line: 736, column: 3, scope: !2128)
!2140 = !DILocation(line: 736, column: 10, scope: !2128)
!2141 = !DILocation(line: 736, column: 16, scope: !2128)
!2142 = !DILocation(line: 737, column: 2, scope: !2128)
!2143 = !DILocation(line: 739, column: 23, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2085, file: !263, line: 739, column: 6)
!2145 = !DILocation(line: 739, column: 6, scope: !2144)
!2146 = !DILocation(line: 739, column: 31, scope: !2144)
!2147 = !DILocation(line: 739, column: 6, scope: !2085)
!2148 = !DILocation(line: 740, column: 3, scope: !2144)
!2149 = !DILocation(line: 742, column: 14, scope: !2085)
!2150 = !DILocation(line: 742, column: 21, scope: !2085)
!2151 = !DILocation(line: 742, column: 28, scope: !2085)
!2152 = !DILocation(line: 742, column: 2, scope: !2085)
!2153 = !DILocation(line: 743, column: 2, scope: !2085)
!2154 = !DILocation(line: 744, column: 1, scope: !2085)
!2155 = distinct !DISubprogram(name: "thread_requeue_read", scope: !263, file: !263, line: 1182, type: !2156, isLocal: false, isDefinition: true, scopeLine: 1183, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{null, !65, !126, !79}
!2158 = !DILocalVariable(name: "m", arg: 1, scope: !2155, file: !263, line: 1182, type: !65)
!2159 = !DILocation(line: 1182, column: 38, scope: !2155)
!2160 = !DILocalVariable(name: "fd", arg: 2, scope: !2155, file: !263, line: 1182, type: !126)
!2161 = !DILocation(line: 1182, column: 45, scope: !2155)
!2162 = !DILocalVariable(name: "timer", arg: 3, scope: !2155, file: !263, line: 1182, type: !79)
!2163 = !DILocation(line: 1182, column: 63, scope: !2155)
!2164 = !DILocation(line: 1184, column: 2, scope: !2155)
!2165 = !DILocation(line: 1186, column: 22, scope: !2155)
!2166 = !DILocation(line: 1186, column: 25, scope: !2155)
!2167 = !DILocation(line: 1186, column: 54, scope: !2155)
!2168 = !DILocation(line: 1186, column: 29, scope: !2155)
!2169 = !DILocation(line: 1186, column: 2, scope: !2155)
!2170 = !DILocation(line: 1186, column: 2, scope: !2171)
!2171 = !DILexicalBlockFile(scope: !2155, file: !263, discriminator: 1)
!2172 = !DILocation(line: 1187, column: 1, scope: !2155)
!2173 = distinct !DISubprogram(name: "thread_read_requeue", scope: !263, file: !263, line: 1147, type: !2174, isLocal: true, isDefinition: true, scopeLine: 1148, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{null, !65, !126, !218}
!2176 = !DILocalVariable(name: "m", arg: 1, scope: !2173, file: !263, line: 1147, type: !65)
!2177 = !DILocation(line: 1147, column: 38, scope: !2173)
!2178 = !DILocalVariable(name: "fd", arg: 2, scope: !2173, file: !263, line: 1147, type: !126)
!2179 = !DILocation(line: 1147, column: 45, scope: !2173)
!2180 = !DILocalVariable(name: "new_sands", arg: 3, scope: !2173, file: !263, line: 1147, type: !218)
!2181 = !DILocation(line: 1147, column: 59, scope: !2173)
!2182 = !DILocalVariable(name: "thread", scope: !2173, file: !263, line: 1149, type: !202)
!2183 = !DILocation(line: 1149, column: 12, scope: !2173)
!2184 = !DILocalVariable(name: "prev", scope: !2173, file: !263, line: 1150, type: !202)
!2185 = !DILocation(line: 1150, column: 12, scope: !2173)
!2186 = !DILocalVariable(name: "next", scope: !2173, file: !263, line: 1150, type: !202)
!2187 = !DILocation(line: 1150, column: 19, scope: !2173)
!2188 = !DILocalVariable(name: "prev_node", scope: !2173, file: !263, line: 1151, type: !1110)
!2189 = !DILocation(line: 1151, column: 13, scope: !2173)
!2190 = !DILocalVariable(name: "next_node", scope: !2173, file: !263, line: 1151, type: !1110)
!2191 = !DILocation(line: 1151, column: 25, scope: !2173)
!2192 = !DILocalVariable(name: "event", scope: !2173, file: !263, line: 1152, type: !197)
!2193 = !DILocation(line: 1152, column: 18, scope: !2173)
!2194 = !DILocation(line: 1154, column: 27, scope: !2173)
!2195 = !DILocation(line: 1154, column: 30, scope: !2173)
!2196 = !DILocation(line: 1154, column: 10, scope: !2173)
!2197 = !DILocation(line: 1154, column: 8, scope: !2173)
!2198 = !DILocation(line: 1155, column: 7, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2173, file: !263, line: 1155, column: 6)
!2200 = !DILocation(line: 1155, column: 13, scope: !2199)
!2201 = !DILocation(line: 1155, column: 17, scope: !2202)
!2202 = !DILexicalBlockFile(scope: !2199, file: !263, discriminator: 1)
!2203 = !DILocation(line: 1155, column: 24, scope: !2202)
!2204 = !DILocation(line: 1155, column: 6, scope: !2202)
!2205 = !DILocation(line: 1156, column: 3, scope: !2199)
!2206 = !DILocation(line: 1158, column: 11, scope: !2173)
!2207 = !DILocation(line: 1158, column: 18, scope: !2173)
!2208 = !DILocation(line: 1158, column: 9, scope: !2173)
!2209 = !DILocation(line: 1160, column: 2, scope: !2173)
!2210 = !DILocation(line: 1160, column: 10, scope: !2173)
!2211 = !DILocation(line: 1160, column: 18, scope: !2173)
!2212 = !DILocation(line: 1162, column: 23, scope: !2173)
!2213 = !DILocation(line: 1162, column: 31, scope: !2173)
!2214 = !DILocation(line: 1162, column: 14, scope: !2173)
!2215 = !DILocation(line: 1162, column: 12, scope: !2173)
!2216 = !DILocation(line: 1163, column: 23, scope: !2173)
!2217 = !DILocation(line: 1163, column: 31, scope: !2173)
!2218 = !DILocation(line: 1163, column: 14, scope: !2173)
!2219 = !DILocation(line: 1163, column: 12, scope: !2173)
!2220 = !DILocation(line: 1165, column: 7, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2173, file: !263, line: 1165, column: 6)
!2222 = !DILocation(line: 1165, column: 17, scope: !2221)
!2223 = !DILocation(line: 1165, column: 21, scope: !2224)
!2224 = !DILexicalBlockFile(scope: !2221, file: !263, discriminator: 1)
!2225 = !DILocation(line: 1165, column: 6, scope: !2224)
!2226 = !DILocation(line: 1166, column: 3, scope: !2221)
!2227 = !DILocation(line: 1168, column: 10, scope: !2173)
!2228 = !DILocation(line: 1168, column: 9, scope: !2173)
!2229 = !DILocalVariable(name: "__mptr", scope: !2230, file: !263, line: 1168, type: !1130)
!2230 = distinct !DILexicalBlock(scope: !2173, file: !263, line: 1168, column: 24)
!2231 = !DILocation(line: 1168, column: 62, scope: !2230)
!2232 = !DILocation(line: 1168, column: 72, scope: !2233)
!2233 = !DILexicalBlockFile(scope: !2230, file: !263, discriminator: 1)
!2234 = !DILocation(line: 1168, column: 62, scope: !2233)
!2235 = !DILocation(line: 1168, column: 106, scope: !2233)
!2236 = !DILocation(line: 1168, column: 98, scope: !2233)
!2237 = !DILocation(line: 1168, column: 113, scope: !2233)
!2238 = !DILocation(line: 1168, column: 84, scope: !2233)
!2239 = !DILocation(line: 1168, column: 26, scope: !2233)
!2240 = !DILocation(line: 1168, column: 10, scope: !2233)
!2241 = !DILocation(line: 1168, column: 9, scope: !2233)
!2242 = !DILocation(line: 1168, column: 9, scope: !2243)
!2243 = !DILexicalBlockFile(scope: !2173, file: !263, discriminator: 2)
!2244 = !DILocation(line: 1168, column: 9, scope: !2245)
!2245 = !DILexicalBlockFile(scope: !2173, file: !263, discriminator: 3)
!2246 = !DILocation(line: 1168, column: 7, scope: !2245)
!2247 = !DILocation(line: 1169, column: 10, scope: !2173)
!2248 = !DILocation(line: 1169, column: 9, scope: !2173)
!2249 = !DILocalVariable(name: "__mptr", scope: !2250, file: !263, line: 1169, type: !1130)
!2250 = distinct !DILexicalBlock(scope: !2173, file: !263, line: 1169, column: 24)
!2251 = !DILocation(line: 1169, column: 62, scope: !2250)
!2252 = !DILocation(line: 1169, column: 72, scope: !2253)
!2253 = !DILexicalBlockFile(scope: !2250, file: !263, discriminator: 1)
!2254 = !DILocation(line: 1169, column: 62, scope: !2253)
!2255 = !DILocation(line: 1169, column: 106, scope: !2253)
!2256 = !DILocation(line: 1169, column: 98, scope: !2253)
!2257 = !DILocation(line: 1169, column: 113, scope: !2253)
!2258 = !DILocation(line: 1169, column: 84, scope: !2253)
!2259 = !DILocation(line: 1169, column: 26, scope: !2253)
!2260 = !DILocation(line: 1169, column: 10, scope: !2253)
!2261 = !DILocation(line: 1169, column: 9, scope: !2253)
!2262 = !DILocation(line: 1169, column: 9, scope: !2243)
!2263 = !DILocation(line: 1169, column: 9, scope: !2245)
!2264 = !DILocation(line: 1169, column: 7, scope: !2245)
!2265 = !DILocation(line: 1172, column: 8, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2173, file: !263, line: 1172, column: 6)
!2267 = !DILocation(line: 1172, column: 13, scope: !2266)
!2268 = !DILocation(line: 1172, column: 16, scope: !2269)
!2269 = !DILexicalBlockFile(scope: !2266, file: !263, discriminator: 1)
!2270 = !DILocation(line: 1172, column: 22, scope: !2269)
!2271 = !DILocation(line: 1172, column: 18, scope: !2269)
!2272 = !DILocation(line: 1172, column: 25, scope: !2269)
!2273 = !DILocation(line: 1172, column: 55, scope: !2269)
!2274 = !DILocation(line: 1172, column: 16, scope: !2275)
!2275 = !DILexicalBlockFile(scope: !2266, file: !263, discriminator: 2)
!2276 = !DILocation(line: 1172, column: 22, scope: !2275)
!2277 = !DILocation(line: 1172, column: 18, scope: !2275)
!2278 = !DILocation(line: 1172, column: 15, scope: !2275)
!2279 = !DILocation(line: 1172, column: 16, scope: !2280)
!2280 = !DILexicalBlockFile(scope: !2266, file: !263, discriminator: 3)
!2281 = !DILocation(line: 1172, column: 22, scope: !2280)
!2282 = !DILocation(line: 1172, column: 18, scope: !2280)
!2283 = !DILocation(line: 1172, column: 15, scope: !2280)
!2284 = !DILocation(line: 1172, column: 55, scope: !2280)
!2285 = !DILocation(line: 1173, column: 8, scope: !2266)
!2286 = !DILocation(line: 1173, column: 13, scope: !2266)
!2287 = !DILocation(line: 1173, column: 16, scope: !2269)
!2288 = !DILocation(line: 1173, column: 22, scope: !2269)
!2289 = !DILocation(line: 1173, column: 18, scope: !2269)
!2290 = !DILocation(line: 1173, column: 25, scope: !2269)
!2291 = !DILocation(line: 1172, column: 6, scope: !2292)
!2292 = !DILexicalBlockFile(scope: !2173, file: !263, discriminator: 4)
!2293 = !DILocation(line: 1173, column: 16, scope: !2275)
!2294 = !DILocation(line: 1173, column: 22, scope: !2275)
!2295 = !DILocation(line: 1173, column: 18, scope: !2275)
!2296 = !DILocation(line: 1173, column: 15, scope: !2275)
!2297 = !DILocation(line: 1173, column: 16, scope: !2280)
!2298 = !DILocation(line: 1173, column: 22, scope: !2280)
!2299 = !DILocation(line: 1173, column: 18, scope: !2280)
!2300 = !DILocation(line: 1173, column: 15, scope: !2280)
!2301 = !DILocation(line: 1172, column: 6, scope: !2302)
!2302 = !DILexicalBlockFile(scope: !2173, file: !263, discriminator: 5)
!2303 = !DILocation(line: 1174, column: 3, scope: !2266)
!2304 = !DILocation(line: 1177, column: 12, scope: !2173)
!2305 = !DILocation(line: 1177, column: 20, scope: !2173)
!2306 = !DILocation(line: 1177, column: 24, scope: !2173)
!2307 = !DILocation(line: 1177, column: 32, scope: !2173)
!2308 = !DILocation(line: 1177, column: 40, scope: !2173)
!2309 = !DILocation(line: 1177, column: 2, scope: !2173)
!2310 = !DILocalVariable(name: "__n", scope: !2311, file: !263, line: 1178, type: !1109)
!2311 = distinct !DILexicalBlock(scope: !2173, file: !263, line: 1178, column: 3)
!2312 = !DILocation(line: 1178, column: 17, scope: !2311)
!2313 = !DILocation(line: 1178, column: 26, scope: !2311)
!2314 = !DILocation(line: 1178, column: 34, scope: !2311)
!2315 = !DILocation(line: 1178, column: 42, scope: !2311)
!2316 = !DILocation(line: 1178, column: 49, scope: !2311)
!2317 = !DILocalVariable(name: "__parent", scope: !2311, file: !263, line: 1178, type: !1110)
!2318 = !DILocation(line: 1178, column: 59, scope: !2311)
!2319 = !DILocalVariable(name: "__data", scope: !2311, file: !263, line: 1178, type: !202)
!2320 = !DILocation(line: 1178, column: 18, scope: !2311)
!2321 = !DILocation(line: 1178, column: 34, scope: !2322)
!2322 = !DILexicalBlockFile(scope: !2311, file: !263, discriminator: 1)
!2323 = !DILocation(line: 1178, column: 33, scope: !2322)
!2324 = !DILocation(line: 1178, column: 26, scope: !2322)
!2325 = !DILocation(line: 1178, column: 52, scope: !2326)
!2326 = !DILexicalBlockFile(scope: !2327, file: !263, discriminator: 2)
!2327 = distinct !DILexicalBlock(scope: !2311, file: !263, line: 1178, column: 39)
!2328 = !DILocation(line: 1178, column: 51, scope: !2326)
!2329 = !DILocation(line: 1178, column: 50, scope: !2326)
!2330 = !DILocalVariable(name: "__mptr", scope: !2331, file: !263, line: 1178, type: !1130)
!2331 = distinct !DILexicalBlock(scope: !2327, file: !263, line: 1178, column: 60)
!2332 = !DILocation(line: 1178, column: 105, scope: !2331)
!2333 = !DILocation(line: 1178, column: 116, scope: !2334)
!2334 = !DILexicalBlockFile(scope: !2331, file: !263, discriminator: 3)
!2335 = !DILocation(line: 1178, column: 115, scope: !2334)
!2336 = !DILocation(line: 1178, column: 105, scope: !2334)
!2337 = !DILocation(line: 1178, column: 151, scope: !2334)
!2338 = !DILocation(line: 1178, column: 143, scope: !2334)
!2339 = !DILocation(line: 1178, column: 158, scope: !2334)
!2340 = !DILocation(line: 1178, column: 122, scope: !2334)
!2341 = !DILocation(line: 1178, column: 62, scope: !2334)
!2342 = !DILocation(line: 1178, column: 3, scope: !2334)
!2343 = !DILocation(line: 1178, column: 50, scope: !2334)
!2344 = !DILocation(line: 1178, column: 50, scope: !2345)
!2345 = !DILexicalBlockFile(scope: !2327, file: !263, discriminator: 4)
!2346 = !DILocation(line: 1178, column: 50, scope: !2347)
!2347 = !DILexicalBlockFile(scope: !2327, file: !263, discriminator: 5)
!2348 = !DILocation(line: 1178, column: 48, scope: !2347)
!2349 = !DILocalVariable(name: "__cmp", scope: !2327, file: !263, line: 1178, type: !126)
!2350 = !DILocation(line: 1178, column: 7, scope: !2327)
!2351 = !DILocation(line: 1178, column: 32, scope: !2347)
!2352 = !DILocation(line: 1178, column: 40, scope: !2347)
!2353 = !DILocation(line: 1178, column: 15, scope: !2347)
!2354 = !DILocation(line: 1178, column: 7, scope: !2347)
!2355 = !DILocation(line: 1178, column: 61, scope: !2347)
!2356 = !DILocation(line: 1178, column: 60, scope: !2347)
!2357 = !DILocation(line: 1178, column: 58, scope: !2347)
!2358 = !DILocation(line: 1178, column: 70, scope: !2347)
!2359 = !DILocation(line: 1178, column: 76, scope: !2347)
!2360 = !DILocation(line: 1178, column: 92, scope: !2361)
!2361 = !DILexicalBlockFile(scope: !2362, file: !263, discriminator: 6)
!2362 = distinct !DILexicalBlock(scope: !2327, file: !263, line: 1178, column: 70)
!2363 = !DILocation(line: 1178, column: 91, scope: !2361)
!2364 = !DILocation(line: 1178, column: 98, scope: !2361)
!2365 = !DILocation(line: 1178, column: 86, scope: !2361)
!2366 = !DILocation(line: 1178, column: 82, scope: !2361)
!2367 = !DILocation(line: 1178, column: 117, scope: !2368)
!2368 = !DILexicalBlockFile(scope: !2369, file: !263, discriminator: 7)
!2369 = distinct !DILexicalBlock(scope: !2362, file: !263, line: 1178, column: 117)
!2370 = !DILocation(line: 1178, column: 123, scope: !2368)
!2371 = !DILocation(line: 1178, column: 138, scope: !2372)
!2372 = !DILexicalBlockFile(scope: !2369, file: !263, discriminator: 8)
!2373 = !DILocation(line: 1178, column: 137, scope: !2372)
!2374 = !DILocation(line: 1178, column: 144, scope: !2372)
!2375 = !DILocation(line: 1178, column: 132, scope: !2372)
!2376 = !DILocation(line: 1178, column: 128, scope: !2372)
!2377 = !DILocation(line: 1178, column: 26, scope: !2378)
!2378 = !DILexicalBlockFile(scope: !2311, file: !263, discriminator: 9)
!2379 = distinct !{!2379, !2313}
!2380 = !DILocation(line: 1178, column: 173, scope: !2381)
!2381 = !DILexicalBlockFile(scope: !2311, file: !263, discriminator: 10)
!2382 = !DILocation(line: 1178, column: 182, scope: !2381)
!2383 = !DILocation(line: 1178, column: 186, scope: !2381)
!2384 = !DILocation(line: 1178, column: 196, scope: !2381)
!2385 = !DILocation(line: 1178, column: 157, scope: !2381)
!2386 = !DILocation(line: 1178, column: 221, scope: !2381)
!2387 = !DILocation(line: 1178, column: 230, scope: !2381)
!2388 = !DILocation(line: 1178, column: 235, scope: !2381)
!2389 = !DILocation(line: 1178, column: 243, scope: !2381)
!2390 = !DILocation(line: 1178, column: 251, scope: !2381)
!2391 = !DILocation(line: 1178, column: 202, scope: !2392)
!2392 = !DILexicalBlockFile(scope: !2381, file: !263, discriminator: 11)
!2393 = !DILocation(line: 1179, column: 1, scope: !2173)
!2394 = !DILocation(line: 1179, column: 1, scope: !2395)
!2395 = !DILexicalBlockFile(scope: !2173, file: !263, discriminator: 1)
!2396 = distinct !DISubprogram(name: "thread_add_write", scope: !263, file: !263, line: 1191, type: !966, isLocal: false, isDefinition: true, scopeLine: 1192, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!2397 = !DILocalVariable(name: "m", arg: 1, scope: !2396, file: !263, line: 1191, type: !65)
!2398 = !DILocation(line: 1191, column: 35, scope: !2396)
!2399 = !DILocalVariable(name: "func", arg: 2, scope: !2396, file: !263, line: 1191, type: !968)
!2400 = !DILocation(line: 1191, column: 44, scope: !2396)
!2401 = !DILocalVariable(name: "arg", arg: 3, scope: !2396, file: !263, line: 1191, type: !63)
!2402 = !DILocation(line: 1191, column: 70, scope: !2396)
!2403 = !DILocalVariable(name: "fd", arg: 4, scope: !2396, file: !263, line: 1191, type: !126)
!2404 = !DILocation(line: 1191, column: 79, scope: !2396)
!2405 = !DILocalVariable(name: "timer", arg: 5, scope: !2396, file: !263, line: 1191, type: !79)
!2406 = !DILocation(line: 1191, column: 97, scope: !2396)
!2407 = !DILocalVariable(name: "event", scope: !2396, file: !263, line: 1193, type: !197)
!2408 = !DILocation(line: 1193, column: 18, scope: !2396)
!2409 = !DILocalVariable(name: "thread", scope: !2396, file: !263, line: 1194, type: !202)
!2410 = !DILocation(line: 1194, column: 12, scope: !2396)
!2411 = !DILocation(line: 1199, column: 6, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2396, file: !263, line: 1199, column: 6)
!2413 = !DILocation(line: 1199, column: 9, scope: !2412)
!2414 = !DILocation(line: 1199, column: 23, scope: !2412)
!2415 = !DILocation(line: 1199, column: 26, scope: !2416)
!2416 = !DILexicalBlockFile(scope: !2412, file: !263, discriminator: 1)
!2417 = !DILocation(line: 1199, column: 29, scope: !2416)
!2418 = !DILocation(line: 1199, column: 44, scope: !2416)
!2419 = !DILocation(line: 1199, column: 50, scope: !2416)
!2420 = !DILocation(line: 1199, column: 47, scope: !2416)
!2421 = !DILocation(line: 1199, column: 6, scope: !2416)
!2422 = !DILocation(line: 1200, column: 11, scope: !2412)
!2423 = !DILocation(line: 1200, column: 14, scope: !2412)
!2424 = !DILocation(line: 1200, column: 9, scope: !2412)
!2425 = !DILocation(line: 1200, column: 3, scope: !2412)
!2426 = !DILocation(line: 1202, column: 28, scope: !2412)
!2427 = !DILocation(line: 1202, column: 31, scope: !2412)
!2428 = !DILocation(line: 1202, column: 11, scope: !2412)
!2429 = !DILocation(line: 1202, column: 9, scope: !2412)
!2430 = !DILocation(line: 1204, column: 7, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2396, file: !263, line: 1204, column: 6)
!2432 = !DILocation(line: 1204, column: 6, scope: !2396)
!2433 = !DILocation(line: 1205, column: 34, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2435, file: !263, line: 1205, column: 7)
!2435 = distinct !DILexicalBlock(scope: !2431, file: !263, line: 1204, column: 14)
!2436 = !DILocation(line: 1205, column: 37, scope: !2434)
!2437 = !DILocation(line: 1205, column: 17, scope: !2434)
!2438 = !DILocation(line: 1205, column: 15, scope: !2434)
!2439 = !DILocation(line: 1205, column: 7, scope: !2435)
!2440 = !DILocation(line: 1206, column: 81, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2434, file: !263, line: 1205, column: 43)
!2442 = !DILocation(line: 1206, column: 4, scope: !2441)
!2443 = !DILocation(line: 1207, column: 4, scope: !2441)
!2444 = !DILocation(line: 1209, column: 2, scope: !2435)
!2445 = !DILocation(line: 1210, column: 44, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2431, file: !263, line: 1210, column: 11)
!2447 = !DILocation(line: 1210, column: 51, scope: !2446)
!2448 = !DILocation(line: 1210, column: 11, scope: !2446)
!2449 = !DILocation(line: 1210, column: 58, scope: !2446)
!2450 = !DILocation(line: 1210, column: 61, scope: !2451)
!2451 = !DILexicalBlockFile(scope: !2446, file: !263, discriminator: 1)
!2452 = !DILocation(line: 1210, column: 68, scope: !2451)
!2453 = !DILocation(line: 1210, column: 11, scope: !2451)
!2454 = !DILocation(line: 1211, column: 89, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2446, file: !263, line: 1210, column: 75)
!2456 = !DILocation(line: 1211, column: 3, scope: !2455)
!2457 = !DILocation(line: 1212, column: 3, scope: !2455)
!2458 = !DILocation(line: 1215, column: 22, scope: !2396)
!2459 = !DILocation(line: 1215, column: 11, scope: !2396)
!2460 = !DILocation(line: 1215, column: 9, scope: !2396)
!2461 = !DILocation(line: 1216, column: 2, scope: !2396)
!2462 = !DILocation(line: 1216, column: 10, scope: !2396)
!2463 = !DILocation(line: 1216, column: 15, scope: !2396)
!2464 = !DILocation(line: 1217, column: 19, scope: !2396)
!2465 = !DILocation(line: 1217, column: 2, scope: !2396)
!2466 = !DILocation(line: 1217, column: 10, scope: !2396)
!2467 = !DILocation(line: 1217, column: 17, scope: !2396)
!2468 = !DILocation(line: 1218, column: 17, scope: !2396)
!2469 = !DILocation(line: 1218, column: 2, scope: !2396)
!2470 = !DILocation(line: 1218, column: 10, scope: !2396)
!2471 = !DILocation(line: 1218, column: 15, scope: !2396)
!2472 = !DILocation(line: 1219, column: 16, scope: !2396)
!2473 = !DILocation(line: 1219, column: 2, scope: !2396)
!2474 = !DILocation(line: 1219, column: 10, scope: !2396)
!2475 = !DILocation(line: 1219, column: 14, scope: !2396)
!2476 = !DILocation(line: 1220, column: 17, scope: !2396)
!2477 = !DILocation(line: 1220, column: 2, scope: !2396)
!2478 = !DILocation(line: 1220, column: 10, scope: !2396)
!2479 = !DILocation(line: 1220, column: 12, scope: !2396)
!2480 = !DILocation(line: 1220, column: 15, scope: !2396)
!2481 = !DILocation(line: 1221, column: 18, scope: !2396)
!2482 = !DILocation(line: 1221, column: 2, scope: !2396)
!2483 = !DILocation(line: 1221, column: 10, scope: !2396)
!2484 = !DILocation(line: 1221, column: 16, scope: !2396)
!2485 = !DILocation(line: 1224, column: 34, scope: !2396)
!2486 = !DILocation(line: 1224, column: 41, scope: !2396)
!2487 = !DILocation(line: 1224, column: 2, scope: !2396)
!2488 = !DILocation(line: 1225, column: 17, scope: !2396)
!2489 = !DILocation(line: 1225, column: 2, scope: !2396)
!2490 = !DILocation(line: 1225, column: 9, scope: !2396)
!2491 = !DILocation(line: 1225, column: 15, scope: !2396)
!2492 = !DILocation(line: 1226, column: 46, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2396, file: !263, line: 1226, column: 6)
!2494 = !DILocation(line: 1226, column: 53, scope: !2493)
!2495 = !DILocation(line: 1226, column: 7, scope: !2493)
!2496 = !DILocation(line: 1226, column: 6, scope: !2396)
!2497 = !DILocation(line: 1227, column: 24, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2499, file: !263, line: 1227, column: 7)
!2499 = distinct !DILexicalBlock(scope: !2493, file: !263, line: 1226, column: 61)
!2500 = !DILocation(line: 1227, column: 7, scope: !2498)
!2501 = !DILocation(line: 1227, column: 32, scope: !2498)
!2502 = !DILocation(line: 1227, column: 7, scope: !2499)
!2503 = !DILocation(line: 1228, column: 82, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2498, file: !263, line: 1227, column: 37)
!2505 = !DILocation(line: 1228, column: 4, scope: !2504)
!2506 = !DILocation(line: 1229, column: 21, scope: !2504)
!2507 = !DILocation(line: 1229, column: 24, scope: !2504)
!2508 = !DILocation(line: 1229, column: 4, scope: !2504)
!2509 = !DILocation(line: 1230, column: 4, scope: !2504)
!2510 = !DILocation(line: 1232, column: 41, scope: !2499)
!2511 = !DILocation(line: 1232, column: 48, scope: !2499)
!2512 = !DILocation(line: 1232, column: 3, scope: !2499)
!2513 = !DILocation(line: 1233, column: 2, scope: !2499)
!2514 = !DILocation(line: 1236, column: 6, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2396, file: !263, line: 1236, column: 6)
!2516 = !DILocation(line: 1236, column: 12, scope: !2515)
!2517 = !DILocation(line: 1236, column: 6, scope: !2396)
!2518 = !DILocation(line: 1237, column: 3, scope: !2515)
!2519 = !DILocation(line: 1237, column: 11, scope: !2515)
!2520 = !DILocation(line: 1237, column: 17, scope: !2515)
!2521 = !DILocation(line: 1237, column: 24, scope: !2515)
!2522 = !DILocation(line: 1239, column: 3, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2515, file: !263, line: 1238, column: 7)
!2524 = !DILocation(line: 1240, column: 3, scope: !2523)
!2525 = !DILocation(line: 1240, column: 11, scope: !2523)
!2526 = !DILocation(line: 1240, column: 44, scope: !2523)
!2527 = !DILocation(line: 1240, column: 19, scope: !2523)
!2528 = !DILocation(line: 1240, column: 19, scope: !2529)
!2529 = !DILexicalBlockFile(scope: !2523, file: !263, discriminator: 1)
!2530 = !DILocalVariable(name: "__n", scope: !2531, file: !263, line: 1244, type: !1109)
!2531 = distinct !DILexicalBlock(scope: !2396, file: !263, line: 1244, column: 3)
!2532 = !DILocation(line: 1244, column: 17, scope: !2531)
!2533 = !DILocation(line: 1244, column: 26, scope: !2531)
!2534 = !DILocation(line: 1244, column: 29, scope: !2531)
!2535 = !DILocation(line: 1244, column: 37, scope: !2531)
!2536 = !DILocalVariable(name: "__parent", scope: !2531, file: !263, line: 1244, type: !1110)
!2537 = !DILocation(line: 1244, column: 47, scope: !2531)
!2538 = !DILocalVariable(name: "__data", scope: !2531, file: !263, line: 1244, type: !202)
!2539 = !DILocation(line: 1244, column: 18, scope: !2531)
!2540 = !DILocation(line: 1244, column: 34, scope: !2541)
!2541 = !DILexicalBlockFile(scope: !2531, file: !263, discriminator: 1)
!2542 = !DILocation(line: 1244, column: 33, scope: !2541)
!2543 = !DILocation(line: 1244, column: 26, scope: !2541)
!2544 = !DILocation(line: 1244, column: 52, scope: !2545)
!2545 = !DILexicalBlockFile(scope: !2546, file: !263, discriminator: 2)
!2546 = distinct !DILexicalBlock(scope: !2531, file: !263, line: 1244, column: 39)
!2547 = !DILocation(line: 1244, column: 51, scope: !2545)
!2548 = !DILocation(line: 1244, column: 50, scope: !2545)
!2549 = !DILocalVariable(name: "__mptr", scope: !2550, file: !263, line: 1244, type: !1130)
!2550 = distinct !DILexicalBlock(scope: !2546, file: !263, line: 1244, column: 60)
!2551 = !DILocation(line: 1244, column: 105, scope: !2550)
!2552 = !DILocation(line: 1244, column: 116, scope: !2553)
!2553 = !DILexicalBlockFile(scope: !2550, file: !263, discriminator: 3)
!2554 = !DILocation(line: 1244, column: 115, scope: !2553)
!2555 = !DILocation(line: 1244, column: 105, scope: !2553)
!2556 = !DILocation(line: 1244, column: 151, scope: !2553)
!2557 = !DILocation(line: 1244, column: 143, scope: !2553)
!2558 = !DILocation(line: 1244, column: 158, scope: !2553)
!2559 = !DILocation(line: 1244, column: 122, scope: !2553)
!2560 = !DILocation(line: 1244, column: 62, scope: !2553)
!2561 = !DILocation(line: 1244, column: 3, scope: !2553)
!2562 = !DILocation(line: 1244, column: 50, scope: !2553)
!2563 = !DILocation(line: 1244, column: 50, scope: !2564)
!2564 = !DILexicalBlockFile(scope: !2546, file: !263, discriminator: 4)
!2565 = !DILocation(line: 1244, column: 50, scope: !2566)
!2566 = !DILexicalBlockFile(scope: !2546, file: !263, discriminator: 5)
!2567 = !DILocation(line: 1244, column: 48, scope: !2566)
!2568 = !DILocalVariable(name: "__cmp", scope: !2546, file: !263, line: 1244, type: !126)
!2569 = !DILocation(line: 1244, column: 7, scope: !2546)
!2570 = !DILocation(line: 1244, column: 32, scope: !2566)
!2571 = !DILocation(line: 1244, column: 40, scope: !2566)
!2572 = !DILocation(line: 1244, column: 15, scope: !2566)
!2573 = !DILocation(line: 1244, column: 7, scope: !2566)
!2574 = !DILocation(line: 1244, column: 61, scope: !2566)
!2575 = !DILocation(line: 1244, column: 60, scope: !2566)
!2576 = !DILocation(line: 1244, column: 58, scope: !2566)
!2577 = !DILocation(line: 1244, column: 70, scope: !2566)
!2578 = !DILocation(line: 1244, column: 76, scope: !2566)
!2579 = !DILocation(line: 1244, column: 92, scope: !2580)
!2580 = !DILexicalBlockFile(scope: !2581, file: !263, discriminator: 6)
!2581 = distinct !DILexicalBlock(scope: !2546, file: !263, line: 1244, column: 70)
!2582 = !DILocation(line: 1244, column: 91, scope: !2580)
!2583 = !DILocation(line: 1244, column: 98, scope: !2580)
!2584 = !DILocation(line: 1244, column: 86, scope: !2580)
!2585 = !DILocation(line: 1244, column: 82, scope: !2580)
!2586 = !DILocation(line: 1244, column: 117, scope: !2587)
!2587 = !DILexicalBlockFile(scope: !2588, file: !263, discriminator: 7)
!2588 = distinct !DILexicalBlock(scope: !2581, file: !263, line: 1244, column: 117)
!2589 = !DILocation(line: 1244, column: 123, scope: !2587)
!2590 = !DILocation(line: 1244, column: 138, scope: !2591)
!2591 = !DILexicalBlockFile(scope: !2588, file: !263, discriminator: 8)
!2592 = !DILocation(line: 1244, column: 137, scope: !2591)
!2593 = !DILocation(line: 1244, column: 144, scope: !2591)
!2594 = !DILocation(line: 1244, column: 132, scope: !2591)
!2595 = !DILocation(line: 1244, column: 128, scope: !2591)
!2596 = !DILocation(line: 1244, column: 26, scope: !2597)
!2597 = !DILexicalBlockFile(scope: !2531, file: !263, discriminator: 9)
!2598 = distinct !{!2598, !2533}
!2599 = !DILocation(line: 1244, column: 173, scope: !2600)
!2600 = !DILexicalBlockFile(scope: !2531, file: !263, discriminator: 10)
!2601 = !DILocation(line: 1244, column: 182, scope: !2600)
!2602 = !DILocation(line: 1244, column: 186, scope: !2600)
!2603 = !DILocation(line: 1244, column: 196, scope: !2600)
!2604 = !DILocation(line: 1244, column: 157, scope: !2600)
!2605 = !DILocation(line: 1244, column: 221, scope: !2600)
!2606 = !DILocation(line: 1244, column: 230, scope: !2600)
!2607 = !DILocation(line: 1244, column: 235, scope: !2600)
!2608 = !DILocation(line: 1244, column: 238, scope: !2600)
!2609 = !DILocation(line: 1244, column: 202, scope: !2610)
!2610 = !DILexicalBlockFile(scope: !2600, file: !263, discriminator: 11)
!2611 = !DILocation(line: 1246, column: 9, scope: !2396)
!2612 = !DILocation(line: 1246, column: 2, scope: !2396)
!2613 = !DILocation(line: 1247, column: 1, scope: !2396)
!2614 = distinct !DISubprogram(name: "thread_del_write", scope: !263, file: !263, line: 1250, type: !969, isLocal: false, isDefinition: true, scopeLine: 1251, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!2615 = !DILocalVariable(name: "thread", arg: 1, scope: !2614, file: !263, line: 1250, type: !202)
!2616 = !DILocation(line: 1250, column: 28, scope: !2614)
!2617 = !DILocation(line: 1252, column: 7, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2614, file: !263, line: 1252, column: 6)
!2619 = !DILocation(line: 1252, column: 14, scope: !2618)
!2620 = !DILocation(line: 1252, column: 18, scope: !2621)
!2621 = !DILexicalBlockFile(scope: !2618, file: !263, discriminator: 1)
!2622 = !DILocation(line: 1252, column: 26, scope: !2621)
!2623 = !DILocation(line: 1252, column: 6, scope: !2621)
!2624 = !DILocation(line: 1253, column: 3, scope: !2618)
!2625 = !DILocation(line: 1255, column: 23, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2614, file: !263, line: 1255, column: 6)
!2627 = !DILocation(line: 1255, column: 6, scope: !2626)
!2628 = !DILocation(line: 1255, column: 58, scope: !2626)
!2629 = !DILocation(line: 1255, column: 6, scope: !2614)
!2630 = !DILocation(line: 1256, column: 3, scope: !2626)
!2631 = !DILocation(line: 1258, column: 2, scope: !2614)
!2632 = !DILocation(line: 1259, column: 1, scope: !2614)
!2633 = distinct !DISubprogram(name: "thread_close_fd", scope: !263, file: !263, line: 1262, type: !278, isLocal: false, isDefinition: true, scopeLine: 1263, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!2634 = !DILocalVariable(name: "thread", arg: 1, scope: !2633, file: !263, line: 1262, type: !202)
!2635 = !DILocation(line: 1262, column: 27, scope: !2633)
!2636 = !DILocation(line: 1264, column: 6, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2633, file: !263, line: 1264, column: 6)
!2638 = !DILocation(line: 1264, column: 14, scope: !2637)
!2639 = !DILocation(line: 1264, column: 16, scope: !2637)
!2640 = !DILocation(line: 1264, column: 19, scope: !2637)
!2641 = !DILocation(line: 1264, column: 6, scope: !2633)
!2642 = !DILocation(line: 1265, column: 3, scope: !2637)
!2643 = !DILocation(line: 1267, column: 6, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2633, file: !263, line: 1267, column: 6)
!2645 = !DILocation(line: 1267, column: 14, scope: !2644)
!2646 = !DILocation(line: 1267, column: 6, scope: !2633)
!2647 = !DILocation(line: 1268, column: 23, scope: !2644)
!2648 = !DILocation(line: 1268, column: 3, scope: !2644)
!2649 = !DILocation(line: 1270, column: 8, scope: !2633)
!2650 = !DILocation(line: 1270, column: 16, scope: !2633)
!2651 = !DILocation(line: 1270, column: 18, scope: !2633)
!2652 = !DILocation(line: 1270, column: 2, scope: !2633)
!2653 = !DILocation(line: 1271, column: 2, scope: !2633)
!2654 = !DILocation(line: 1271, column: 10, scope: !2633)
!2655 = !DILocation(line: 1271, column: 12, scope: !2633)
!2656 = !DILocation(line: 1271, column: 15, scope: !2633)
!2657 = !DILocation(line: 1272, column: 1, scope: !2633)
!2658 = !DILocation(line: 1272, column: 1, scope: !2659)
!2659 = !DILexicalBlockFile(scope: !2633, file: !263, discriminator: 1)
!2660 = distinct !DISubprogram(name: "thread_event_cancel", scope: !263, file: !263, line: 694, type: !969, isLocal: true, isDefinition: true, scopeLine: 695, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!2661 = !DILocalVariable(name: "thread", arg: 1, scope: !2660, file: !263, line: 694, type: !202)
!2662 = !DILocation(line: 694, column: 31, scope: !2660)
!2663 = !DILocalVariable(name: "event", scope: !2660, file: !263, line: 696, type: !197)
!2664 = !DILocation(line: 696, column: 18, scope: !2660)
!2665 = !DILocation(line: 696, column: 26, scope: !2660)
!2666 = !DILocation(line: 696, column: 34, scope: !2660)
!2667 = !DILocalVariable(name: "m", scope: !2660, file: !263, line: 697, type: !65)
!2668 = !DILocation(line: 697, column: 19, scope: !2660)
!2669 = !DILocation(line: 697, column: 23, scope: !2660)
!2670 = !DILocation(line: 697, column: 31, scope: !2660)
!2671 = !DILocation(line: 699, column: 7, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2660, file: !263, line: 699, column: 6)
!2673 = !DILocation(line: 699, column: 6, scope: !2660)
!2674 = !DILocation(line: 700, column: 3, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2672, file: !263, line: 699, column: 14)
!2676 = !DILocation(line: 701, column: 3, scope: !2675)
!2677 = !DILocation(line: 704, column: 6, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2660, file: !263, line: 704, column: 6)
!2679 = !DILocation(line: 704, column: 9, scope: !2678)
!2680 = !DILocation(line: 704, column: 18, scope: !2678)
!2681 = !DILocation(line: 704, column: 24, scope: !2678)
!2682 = !DILocation(line: 704, column: 37, scope: !2683)
!2683 = !DILexicalBlockFile(scope: !2678, file: !263, discriminator: 1)
!2684 = !DILocation(line: 704, column: 40, scope: !2683)
!2685 = !DILocation(line: 704, column: 64, scope: !2683)
!2686 = !DILocation(line: 704, column: 71, scope: !2683)
!2687 = !DILocation(line: 704, column: 27, scope: !2683)
!2688 = !DILocation(line: 704, column: 81, scope: !2683)
!2689 = !DILocation(line: 704, column: 6, scope: !2683)
!2690 = !DILocation(line: 705, column: 77, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2678, file: !263, line: 704, column: 86)
!2692 = !DILocation(line: 705, column: 84, scope: !2691)
!2693 = !DILocation(line: 705, column: 3, scope: !2691)
!2694 = !DILocation(line: 706, column: 3, scope: !2691)
!2695 = !DILocation(line: 709, column: 12, scope: !2660)
!2696 = !DILocation(line: 709, column: 19, scope: !2660)
!2697 = !DILocation(line: 709, column: 23, scope: !2660)
!2698 = !DILocation(line: 709, column: 26, scope: !2660)
!2699 = !DILocation(line: 709, column: 2, scope: !2660)
!2700 = !DILocation(line: 710, column: 6, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2660, file: !263, line: 710, column: 6)
!2702 = !DILocation(line: 710, column: 15, scope: !2701)
!2703 = !DILocation(line: 710, column: 18, scope: !2701)
!2704 = !DILocation(line: 710, column: 12, scope: !2701)
!2705 = !DILocation(line: 710, column: 6, scope: !2660)
!2706 = !DILocation(line: 711, column: 3, scope: !2701)
!2707 = !DILocation(line: 711, column: 6, scope: !2701)
!2708 = !DILocation(line: 711, column: 20, scope: !2701)
!2709 = !DILocation(line: 712, column: 8, scope: !2660)
!2710 = !DILocation(line: 712, column: 16, scope: !2660)
!2711 = !DILocation(line: 712, column: 3, scope: !2660)
!2712 = !DILocation(line: 712, column: 25, scope: !2660)
!2713 = !DILocation(line: 712, column: 33, scope: !2660)
!2714 = !DILocation(line: 712, column: 40, scope: !2660)
!2715 = !DILocation(line: 713, column: 2, scope: !2660)
!2716 = !DILocation(line: 714, column: 1, scope: !2660)
!2717 = distinct !DISubprogram(name: "thread_add_timer", scope: !263, file: !263, line: 1276, type: !2718, isLocal: false, isDefinition: true, scopeLine: 1277, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!202, !65, !968, !63, !79}
!2720 = !DILocalVariable(name: "m", arg: 1, scope: !2717, file: !263, line: 1276, type: !65)
!2721 = !DILocation(line: 1276, column: 35, scope: !2717)
!2722 = !DILocalVariable(name: "func", arg: 2, scope: !2717, file: !263, line: 1276, type: !968)
!2723 = !DILocation(line: 1276, column: 44, scope: !2717)
!2724 = !DILocalVariable(name: "arg", arg: 3, scope: !2717, file: !263, line: 1276, type: !63)
!2725 = !DILocation(line: 1276, column: 70, scope: !2717)
!2726 = !DILocalVariable(name: "timer", arg: 4, scope: !2717, file: !263, line: 1276, type: !79)
!2727 = !DILocation(line: 1276, column: 89, scope: !2717)
!2728 = !DILocalVariable(name: "thread", scope: !2717, file: !263, line: 1278, type: !202)
!2729 = !DILocation(line: 1278, column: 12, scope: !2717)
!2730 = !DILocation(line: 1282, column: 22, scope: !2717)
!2731 = !DILocation(line: 1282, column: 11, scope: !2717)
!2732 = !DILocation(line: 1282, column: 9, scope: !2717)
!2733 = !DILocation(line: 1283, column: 2, scope: !2717)
!2734 = !DILocation(line: 1283, column: 10, scope: !2717)
!2735 = !DILocation(line: 1283, column: 15, scope: !2717)
!2736 = !DILocation(line: 1284, column: 19, scope: !2717)
!2737 = !DILocation(line: 1284, column: 2, scope: !2717)
!2738 = !DILocation(line: 1284, column: 10, scope: !2717)
!2739 = !DILocation(line: 1284, column: 17, scope: !2717)
!2740 = !DILocation(line: 1285, column: 17, scope: !2717)
!2741 = !DILocation(line: 1285, column: 2, scope: !2717)
!2742 = !DILocation(line: 1285, column: 10, scope: !2717)
!2743 = !DILocation(line: 1285, column: 15, scope: !2717)
!2744 = !DILocation(line: 1286, column: 16, scope: !2717)
!2745 = !DILocation(line: 1286, column: 2, scope: !2717)
!2746 = !DILocation(line: 1286, column: 10, scope: !2717)
!2747 = !DILocation(line: 1286, column: 14, scope: !2717)
!2748 = !DILocation(line: 1289, column: 6, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2717, file: !263, line: 1289, column: 6)
!2750 = !DILocation(line: 1289, column: 12, scope: !2749)
!2751 = !DILocation(line: 1289, column: 6, scope: !2717)
!2752 = !DILocation(line: 1290, column: 3, scope: !2749)
!2753 = !DILocation(line: 1290, column: 11, scope: !2749)
!2754 = !DILocation(line: 1290, column: 17, scope: !2749)
!2755 = !DILocation(line: 1290, column: 24, scope: !2749)
!2756 = !DILocation(line: 1292, column: 3, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2749, file: !263, line: 1291, column: 7)
!2758 = !DILocation(line: 1293, column: 3, scope: !2757)
!2759 = !DILocation(line: 1293, column: 11, scope: !2757)
!2760 = !DILocation(line: 1293, column: 44, scope: !2757)
!2761 = !DILocation(line: 1293, column: 19, scope: !2757)
!2762 = !DILocation(line: 1293, column: 19, scope: !2763)
!2763 = !DILexicalBlockFile(scope: !2757, file: !263, discriminator: 1)
!2764 = !DILocalVariable(name: "__n", scope: !2765, file: !263, line: 1297, type: !1109)
!2765 = distinct !DILexicalBlock(scope: !2717, file: !263, line: 1297, column: 3)
!2766 = !DILocation(line: 1297, column: 17, scope: !2765)
!2767 = !DILocation(line: 1297, column: 26, scope: !2765)
!2768 = !DILocation(line: 1297, column: 29, scope: !2765)
!2769 = !DILocation(line: 1297, column: 37, scope: !2765)
!2770 = !DILocalVariable(name: "__parent", scope: !2765, file: !263, line: 1297, type: !1110)
!2771 = !DILocation(line: 1297, column: 47, scope: !2765)
!2772 = !DILocalVariable(name: "__data", scope: !2765, file: !263, line: 1297, type: !202)
!2773 = !DILocation(line: 1297, column: 18, scope: !2765)
!2774 = !DILocation(line: 1297, column: 34, scope: !2775)
!2775 = !DILexicalBlockFile(scope: !2765, file: !263, discriminator: 1)
!2776 = !DILocation(line: 1297, column: 33, scope: !2775)
!2777 = !DILocation(line: 1297, column: 26, scope: !2775)
!2778 = !DILocation(line: 1297, column: 52, scope: !2779)
!2779 = !DILexicalBlockFile(scope: !2780, file: !263, discriminator: 2)
!2780 = distinct !DILexicalBlock(scope: !2765, file: !263, line: 1297, column: 39)
!2781 = !DILocation(line: 1297, column: 51, scope: !2779)
!2782 = !DILocation(line: 1297, column: 50, scope: !2779)
!2783 = !DILocalVariable(name: "__mptr", scope: !2784, file: !263, line: 1297, type: !1130)
!2784 = distinct !DILexicalBlock(scope: !2780, file: !263, line: 1297, column: 60)
!2785 = !DILocation(line: 1297, column: 105, scope: !2784)
!2786 = !DILocation(line: 1297, column: 116, scope: !2787)
!2787 = !DILexicalBlockFile(scope: !2784, file: !263, discriminator: 3)
!2788 = !DILocation(line: 1297, column: 115, scope: !2787)
!2789 = !DILocation(line: 1297, column: 105, scope: !2787)
!2790 = !DILocation(line: 1297, column: 151, scope: !2787)
!2791 = !DILocation(line: 1297, column: 143, scope: !2787)
!2792 = !DILocation(line: 1297, column: 158, scope: !2787)
!2793 = !DILocation(line: 1297, column: 122, scope: !2787)
!2794 = !DILocation(line: 1297, column: 62, scope: !2787)
!2795 = !DILocation(line: 1297, column: 3, scope: !2787)
!2796 = !DILocation(line: 1297, column: 50, scope: !2787)
!2797 = !DILocation(line: 1297, column: 50, scope: !2798)
!2798 = !DILexicalBlockFile(scope: !2780, file: !263, discriminator: 4)
!2799 = !DILocation(line: 1297, column: 50, scope: !2800)
!2800 = !DILexicalBlockFile(scope: !2780, file: !263, discriminator: 5)
!2801 = !DILocation(line: 1297, column: 48, scope: !2800)
!2802 = !DILocalVariable(name: "__cmp", scope: !2780, file: !263, line: 1297, type: !126)
!2803 = !DILocation(line: 1297, column: 7, scope: !2780)
!2804 = !DILocation(line: 1297, column: 32, scope: !2800)
!2805 = !DILocation(line: 1297, column: 40, scope: !2800)
!2806 = !DILocation(line: 1297, column: 15, scope: !2800)
!2807 = !DILocation(line: 1297, column: 7, scope: !2800)
!2808 = !DILocation(line: 1297, column: 61, scope: !2800)
!2809 = !DILocation(line: 1297, column: 60, scope: !2800)
!2810 = !DILocation(line: 1297, column: 58, scope: !2800)
!2811 = !DILocation(line: 1297, column: 70, scope: !2800)
!2812 = !DILocation(line: 1297, column: 76, scope: !2800)
!2813 = !DILocation(line: 1297, column: 92, scope: !2814)
!2814 = !DILexicalBlockFile(scope: !2815, file: !263, discriminator: 6)
!2815 = distinct !DILexicalBlock(scope: !2780, file: !263, line: 1297, column: 70)
!2816 = !DILocation(line: 1297, column: 91, scope: !2814)
!2817 = !DILocation(line: 1297, column: 98, scope: !2814)
!2818 = !DILocation(line: 1297, column: 86, scope: !2814)
!2819 = !DILocation(line: 1297, column: 82, scope: !2814)
!2820 = !DILocation(line: 1297, column: 117, scope: !2821)
!2821 = !DILexicalBlockFile(scope: !2822, file: !263, discriminator: 7)
!2822 = distinct !DILexicalBlock(scope: !2815, file: !263, line: 1297, column: 117)
!2823 = !DILocation(line: 1297, column: 123, scope: !2821)
!2824 = !DILocation(line: 1297, column: 138, scope: !2825)
!2825 = !DILexicalBlockFile(scope: !2822, file: !263, discriminator: 8)
!2826 = !DILocation(line: 1297, column: 137, scope: !2825)
!2827 = !DILocation(line: 1297, column: 144, scope: !2825)
!2828 = !DILocation(line: 1297, column: 132, scope: !2825)
!2829 = !DILocation(line: 1297, column: 128, scope: !2825)
!2830 = !DILocation(line: 1297, column: 26, scope: !2831)
!2831 = !DILexicalBlockFile(scope: !2765, file: !263, discriminator: 9)
!2832 = distinct !{!2832, !2767}
!2833 = !DILocation(line: 1297, column: 173, scope: !2834)
!2834 = !DILexicalBlockFile(scope: !2765, file: !263, discriminator: 10)
!2835 = !DILocation(line: 1297, column: 182, scope: !2834)
!2836 = !DILocation(line: 1297, column: 186, scope: !2834)
!2837 = !DILocation(line: 1297, column: 196, scope: !2834)
!2838 = !DILocation(line: 1297, column: 157, scope: !2834)
!2839 = !DILocation(line: 1297, column: 221, scope: !2834)
!2840 = !DILocation(line: 1297, column: 230, scope: !2834)
!2841 = !DILocation(line: 1297, column: 235, scope: !2834)
!2842 = !DILocation(line: 1297, column: 238, scope: !2834)
!2843 = !DILocation(line: 1297, column: 202, scope: !2844)
!2844 = !DILexicalBlockFile(scope: !2834, file: !263, discriminator: 11)
!2845 = !DILocation(line: 1299, column: 9, scope: !2717)
!2846 = !DILocation(line: 1299, column: 2, scope: !2717)
!2847 = distinct !DISubprogram(name: "timer_thread_update_timeout", scope: !263, file: !263, line: 1303, type: !2848, isLocal: false, isDefinition: true, scopeLine: 1304, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{null, !202, !79}
!2850 = !DILocalVariable(name: "thread", arg: 1, scope: !2847, file: !263, line: 1303, type: !202)
!2851 = !DILocation(line: 1303, column: 39, scope: !2847)
!2852 = !DILocalVariable(name: "timer", arg: 2, scope: !2847, file: !263, line: 1303, type: !79)
!2853 = !DILocation(line: 1303, column: 61, scope: !2847)
!2854 = !DILocalVariable(name: "sands", scope: !2847, file: !263, line: 1305, type: !218)
!2855 = !DILocation(line: 1305, column: 12, scope: !2847)
!2856 = !DILocalVariable(name: "prev", scope: !2847, file: !263, line: 1306, type: !202)
!2857 = !DILocation(line: 1306, column: 12, scope: !2847)
!2858 = !DILocalVariable(name: "next", scope: !2847, file: !263, line: 1306, type: !202)
!2859 = !DILocation(line: 1306, column: 19, scope: !2847)
!2860 = !DILocalVariable(name: "prev_node", scope: !2847, file: !263, line: 1307, type: !1110)
!2861 = !DILocation(line: 1307, column: 13, scope: !2847)
!2862 = !DILocalVariable(name: "next_node", scope: !2847, file: !263, line: 1307, type: !1110)
!2863 = !DILocation(line: 1307, column: 25, scope: !2847)
!2864 = !DILocation(line: 1309, column: 2, scope: !2847)
!2865 = !DILocation(line: 1310, column: 35, scope: !2847)
!2866 = !DILocation(line: 1310, column: 10, scope: !2847)
!2867 = !DILocation(line: 1310, column: 10, scope: !2868)
!2868 = !DILexicalBlockFile(scope: !2847, file: !263, discriminator: 1)
!2869 = !DILocation(line: 1312, column: 6, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2847, file: !263, line: 1312, column: 5)
!2871 = !DILocation(line: 1312, column: 14, scope: !2870)
!2872 = !DILocation(line: 1312, column: 8, scope: !2870)
!2873 = !DILocation(line: 1312, column: 15, scope: !2870)
!2874 = !DILocation(line: 1312, column: 5, scope: !2847)
!2875 = !DILocation(line: 1312, column: 6, scope: !2876)
!2876 = !DILexicalBlockFile(scope: !2870, file: !263, discriminator: 1)
!2877 = !DILocation(line: 1312, column: 14, scope: !2876)
!2878 = !DILocation(line: 1312, column: 8, scope: !2876)
!2879 = !DILocation(line: 1312, column: 5, scope: !2876)
!2880 = !DILocation(line: 1312, column: 6, scope: !2881)
!2881 = !DILexicalBlockFile(scope: !2870, file: !263, discriminator: 2)
!2882 = !DILocation(line: 1312, column: 14, scope: !2881)
!2883 = !DILocation(line: 1312, column: 8, scope: !2881)
!2884 = !DILocation(line: 1312, column: 5, scope: !2881)
!2885 = !DILocation(line: 1313, column: 3, scope: !2870)
!2886 = !DILocation(line: 1315, column: 2, scope: !2847)
!2887 = !DILocation(line: 1315, column: 10, scope: !2847)
!2888 = !DILocation(line: 1315, column: 18, scope: !2847)
!2889 = !DILocation(line: 1317, column: 23, scope: !2847)
!2890 = !DILocation(line: 1317, column: 31, scope: !2847)
!2891 = !DILocation(line: 1317, column: 14, scope: !2847)
!2892 = !DILocation(line: 1317, column: 12, scope: !2847)
!2893 = !DILocation(line: 1318, column: 23, scope: !2847)
!2894 = !DILocation(line: 1318, column: 31, scope: !2847)
!2895 = !DILocation(line: 1318, column: 14, scope: !2847)
!2896 = !DILocation(line: 1318, column: 12, scope: !2847)
!2897 = !DILocation(line: 1320, column: 7, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2847, file: !263, line: 1320, column: 6)
!2899 = !DILocation(line: 1320, column: 17, scope: !2898)
!2900 = !DILocation(line: 1320, column: 21, scope: !2901)
!2901 = !DILexicalBlockFile(scope: !2898, file: !263, discriminator: 1)
!2902 = !DILocation(line: 1320, column: 6, scope: !2901)
!2903 = !DILocation(line: 1321, column: 3, scope: !2898)
!2904 = !DILocation(line: 1323, column: 10, scope: !2847)
!2905 = !DILocation(line: 1323, column: 9, scope: !2847)
!2906 = !DILocalVariable(name: "__mptr", scope: !2907, file: !263, line: 1323, type: !1130)
!2907 = distinct !DILexicalBlock(scope: !2847, file: !263, line: 1323, column: 24)
!2908 = !DILocation(line: 1323, column: 62, scope: !2907)
!2909 = !DILocation(line: 1323, column: 72, scope: !2910)
!2910 = !DILexicalBlockFile(scope: !2907, file: !263, discriminator: 1)
!2911 = !DILocation(line: 1323, column: 62, scope: !2910)
!2912 = !DILocation(line: 1323, column: 106, scope: !2910)
!2913 = !DILocation(line: 1323, column: 98, scope: !2910)
!2914 = !DILocation(line: 1323, column: 113, scope: !2910)
!2915 = !DILocation(line: 1323, column: 84, scope: !2910)
!2916 = !DILocation(line: 1323, column: 26, scope: !2910)
!2917 = !DILocation(line: 1323, column: 10, scope: !2910)
!2918 = !DILocation(line: 1323, column: 9, scope: !2910)
!2919 = !DILocation(line: 1323, column: 9, scope: !2920)
!2920 = !DILexicalBlockFile(scope: !2847, file: !263, discriminator: 2)
!2921 = !DILocation(line: 1323, column: 9, scope: !2922)
!2922 = !DILexicalBlockFile(scope: !2847, file: !263, discriminator: 3)
!2923 = !DILocation(line: 1323, column: 7, scope: !2922)
!2924 = !DILocation(line: 1324, column: 10, scope: !2847)
!2925 = !DILocation(line: 1324, column: 9, scope: !2847)
!2926 = !DILocalVariable(name: "__mptr", scope: !2927, file: !263, line: 1324, type: !1130)
!2927 = distinct !DILexicalBlock(scope: !2847, file: !263, line: 1324, column: 24)
!2928 = !DILocation(line: 1324, column: 62, scope: !2927)
!2929 = !DILocation(line: 1324, column: 72, scope: !2930)
!2930 = !DILexicalBlockFile(scope: !2927, file: !263, discriminator: 1)
!2931 = !DILocation(line: 1324, column: 62, scope: !2930)
!2932 = !DILocation(line: 1324, column: 106, scope: !2930)
!2933 = !DILocation(line: 1324, column: 98, scope: !2930)
!2934 = !DILocation(line: 1324, column: 113, scope: !2930)
!2935 = !DILocation(line: 1324, column: 84, scope: !2930)
!2936 = !DILocation(line: 1324, column: 26, scope: !2930)
!2937 = !DILocation(line: 1324, column: 10, scope: !2930)
!2938 = !DILocation(line: 1324, column: 9, scope: !2930)
!2939 = !DILocation(line: 1324, column: 9, scope: !2920)
!2940 = !DILocation(line: 1324, column: 9, scope: !2922)
!2941 = !DILocation(line: 1324, column: 7, scope: !2922)
!2942 = !DILocation(line: 1327, column: 8, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2847, file: !263, line: 1327, column: 6)
!2944 = !DILocation(line: 1327, column: 13, scope: !2943)
!2945 = !DILocation(line: 1327, column: 16, scope: !2946)
!2946 = !DILexicalBlockFile(scope: !2943, file: !263, discriminator: 1)
!2947 = !DILocation(line: 1327, column: 22, scope: !2946)
!2948 = !DILocation(line: 1327, column: 18, scope: !2946)
!2949 = !DILocation(line: 1327, column: 25, scope: !2946)
!2950 = !DILocation(line: 1327, column: 51, scope: !2946)
!2951 = !DILocation(line: 1327, column: 16, scope: !2952)
!2952 = !DILexicalBlockFile(scope: !2943, file: !263, discriminator: 2)
!2953 = !DILocation(line: 1327, column: 22, scope: !2952)
!2954 = !DILocation(line: 1327, column: 18, scope: !2952)
!2955 = !DILocation(line: 1327, column: 15, scope: !2952)
!2956 = !DILocation(line: 1327, column: 16, scope: !2957)
!2957 = !DILexicalBlockFile(scope: !2943, file: !263, discriminator: 3)
!2958 = !DILocation(line: 1327, column: 22, scope: !2957)
!2959 = !DILocation(line: 1327, column: 18, scope: !2957)
!2960 = !DILocation(line: 1327, column: 15, scope: !2957)
!2961 = !DILocation(line: 1327, column: 51, scope: !2957)
!2962 = !DILocation(line: 1328, column: 8, scope: !2943)
!2963 = !DILocation(line: 1328, column: 13, scope: !2943)
!2964 = !DILocation(line: 1328, column: 16, scope: !2946)
!2965 = !DILocation(line: 1328, column: 22, scope: !2946)
!2966 = !DILocation(line: 1328, column: 18, scope: !2946)
!2967 = !DILocation(line: 1328, column: 25, scope: !2946)
!2968 = !DILocation(line: 1327, column: 6, scope: !2969)
!2969 = !DILexicalBlockFile(scope: !2847, file: !263, discriminator: 4)
!2970 = !DILocation(line: 1328, column: 16, scope: !2952)
!2971 = !DILocation(line: 1328, column: 22, scope: !2952)
!2972 = !DILocation(line: 1328, column: 18, scope: !2952)
!2973 = !DILocation(line: 1328, column: 15, scope: !2952)
!2974 = !DILocation(line: 1328, column: 16, scope: !2957)
!2975 = !DILocation(line: 1328, column: 22, scope: !2957)
!2976 = !DILocation(line: 1328, column: 18, scope: !2957)
!2977 = !DILocation(line: 1328, column: 15, scope: !2957)
!2978 = !DILocation(line: 1327, column: 6, scope: !2979)
!2979 = !DILexicalBlockFile(scope: !2847, file: !263, discriminator: 5)
!2980 = !DILocation(line: 1329, column: 3, scope: !2943)
!2981 = !DILocation(line: 1332, column: 12, scope: !2847)
!2982 = !DILocation(line: 1332, column: 20, scope: !2847)
!2983 = !DILocation(line: 1332, column: 24, scope: !2847)
!2984 = !DILocation(line: 1332, column: 32, scope: !2847)
!2985 = !DILocation(line: 1332, column: 40, scope: !2847)
!2986 = !DILocation(line: 1332, column: 2, scope: !2847)
!2987 = !DILocalVariable(name: "__n", scope: !2988, file: !263, line: 1333, type: !1109)
!2988 = distinct !DILexicalBlock(scope: !2847, file: !263, line: 1333, column: 3)
!2989 = !DILocation(line: 1333, column: 17, scope: !2988)
!2990 = !DILocation(line: 1333, column: 26, scope: !2988)
!2991 = !DILocation(line: 1333, column: 34, scope: !2988)
!2992 = !DILocation(line: 1333, column: 42, scope: !2988)
!2993 = !DILocation(line: 1333, column: 50, scope: !2988)
!2994 = !DILocalVariable(name: "__parent", scope: !2988, file: !263, line: 1333, type: !1110)
!2995 = !DILocation(line: 1333, column: 60, scope: !2988)
!2996 = !DILocalVariable(name: "__data", scope: !2988, file: !263, line: 1333, type: !202)
!2997 = !DILocation(line: 1333, column: 18, scope: !2988)
!2998 = !DILocation(line: 1333, column: 34, scope: !2999)
!2999 = !DILexicalBlockFile(scope: !2988, file: !263, discriminator: 1)
!3000 = !DILocation(line: 1333, column: 33, scope: !2999)
!3001 = !DILocation(line: 1333, column: 26, scope: !2999)
!3002 = !DILocation(line: 1333, column: 52, scope: !3003)
!3003 = !DILexicalBlockFile(scope: !3004, file: !263, discriminator: 2)
!3004 = distinct !DILexicalBlock(scope: !2988, file: !263, line: 1333, column: 39)
!3005 = !DILocation(line: 1333, column: 51, scope: !3003)
!3006 = !DILocation(line: 1333, column: 50, scope: !3003)
!3007 = !DILocalVariable(name: "__mptr", scope: !3008, file: !263, line: 1333, type: !1130)
!3008 = distinct !DILexicalBlock(scope: !3004, file: !263, line: 1333, column: 60)
!3009 = !DILocation(line: 1333, column: 105, scope: !3008)
!3010 = !DILocation(line: 1333, column: 116, scope: !3011)
!3011 = !DILexicalBlockFile(scope: !3008, file: !263, discriminator: 3)
!3012 = !DILocation(line: 1333, column: 115, scope: !3011)
!3013 = !DILocation(line: 1333, column: 105, scope: !3011)
!3014 = !DILocation(line: 1333, column: 151, scope: !3011)
!3015 = !DILocation(line: 1333, column: 143, scope: !3011)
!3016 = !DILocation(line: 1333, column: 158, scope: !3011)
!3017 = !DILocation(line: 1333, column: 122, scope: !3011)
!3018 = !DILocation(line: 1333, column: 62, scope: !3011)
!3019 = !DILocation(line: 1333, column: 3, scope: !3011)
!3020 = !DILocation(line: 1333, column: 50, scope: !3011)
!3021 = !DILocation(line: 1333, column: 50, scope: !3022)
!3022 = !DILexicalBlockFile(scope: !3004, file: !263, discriminator: 4)
!3023 = !DILocation(line: 1333, column: 50, scope: !3024)
!3024 = !DILexicalBlockFile(scope: !3004, file: !263, discriminator: 5)
!3025 = !DILocation(line: 1333, column: 48, scope: !3024)
!3026 = !DILocalVariable(name: "__cmp", scope: !3004, file: !263, line: 1333, type: !126)
!3027 = !DILocation(line: 1333, column: 7, scope: !3004)
!3028 = !DILocation(line: 1333, column: 32, scope: !3024)
!3029 = !DILocation(line: 1333, column: 40, scope: !3024)
!3030 = !DILocation(line: 1333, column: 15, scope: !3024)
!3031 = !DILocation(line: 1333, column: 7, scope: !3024)
!3032 = !DILocation(line: 1333, column: 61, scope: !3024)
!3033 = !DILocation(line: 1333, column: 60, scope: !3024)
!3034 = !DILocation(line: 1333, column: 58, scope: !3024)
!3035 = !DILocation(line: 1333, column: 70, scope: !3024)
!3036 = !DILocation(line: 1333, column: 76, scope: !3024)
!3037 = !DILocation(line: 1333, column: 92, scope: !3038)
!3038 = !DILexicalBlockFile(scope: !3039, file: !263, discriminator: 6)
!3039 = distinct !DILexicalBlock(scope: !3004, file: !263, line: 1333, column: 70)
!3040 = !DILocation(line: 1333, column: 91, scope: !3038)
!3041 = !DILocation(line: 1333, column: 98, scope: !3038)
!3042 = !DILocation(line: 1333, column: 86, scope: !3038)
!3043 = !DILocation(line: 1333, column: 82, scope: !3038)
!3044 = !DILocation(line: 1333, column: 117, scope: !3045)
!3045 = !DILexicalBlockFile(scope: !3046, file: !263, discriminator: 7)
!3046 = distinct !DILexicalBlock(scope: !3039, file: !263, line: 1333, column: 117)
!3047 = !DILocation(line: 1333, column: 123, scope: !3045)
!3048 = !DILocation(line: 1333, column: 138, scope: !3049)
!3049 = !DILexicalBlockFile(scope: !3046, file: !263, discriminator: 8)
!3050 = !DILocation(line: 1333, column: 137, scope: !3049)
!3051 = !DILocation(line: 1333, column: 144, scope: !3049)
!3052 = !DILocation(line: 1333, column: 132, scope: !3049)
!3053 = !DILocation(line: 1333, column: 128, scope: !3049)
!3054 = !DILocation(line: 1333, column: 26, scope: !3055)
!3055 = !DILexicalBlockFile(scope: !2988, file: !263, discriminator: 9)
!3056 = distinct !{!3056, !2990}
!3057 = !DILocation(line: 1333, column: 173, scope: !3058)
!3058 = !DILexicalBlockFile(scope: !2988, file: !263, discriminator: 10)
!3059 = !DILocation(line: 1333, column: 182, scope: !3058)
!3060 = !DILocation(line: 1333, column: 186, scope: !3058)
!3061 = !DILocation(line: 1333, column: 196, scope: !3058)
!3062 = !DILocation(line: 1333, column: 157, scope: !3058)
!3063 = !DILocation(line: 1333, column: 221, scope: !3058)
!3064 = !DILocation(line: 1333, column: 230, scope: !3058)
!3065 = !DILocation(line: 1333, column: 235, scope: !3058)
!3066 = !DILocation(line: 1333, column: 243, scope: !3058)
!3067 = !DILocation(line: 1333, column: 251, scope: !3058)
!3068 = !DILocation(line: 1333, column: 202, scope: !3069)
!3069 = !DILexicalBlockFile(scope: !3058, file: !263, discriminator: 11)
!3070 = !DILocation(line: 1334, column: 1, scope: !2847)
!3071 = !DILocation(line: 1334, column: 1, scope: !2868)
!3072 = distinct !DISubprogram(name: "thread_add_timer_shutdown", scope: !263, file: !263, line: 1337, type: !2718, isLocal: false, isDefinition: true, scopeLine: 1338, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!3073 = !DILocalVariable(name: "m", arg: 1, scope: !3072, file: !263, line: 1337, type: !65)
!3074 = !DILocation(line: 1337, column: 44, scope: !3072)
!3075 = !DILocalVariable(name: "func", arg: 2, scope: !3072, file: !263, line: 1337, type: !968)
!3076 = !DILocation(line: 1337, column: 52, scope: !3072)
!3077 = !DILocalVariable(name: "arg", arg: 3, scope: !3072, file: !263, line: 1337, type: !63)
!3078 = !DILocation(line: 1337, column: 77, scope: !3072)
!3079 = !DILocalVariable(name: "timer", arg: 4, scope: !3072, file: !263, line: 1337, type: !79)
!3080 = !DILocation(line: 1337, column: 96, scope: !3072)
!3081 = !DILocalVariable(name: "thread", scope: !3072, file: !263, line: 1339, type: !202)
!3082 = !DILocation(line: 1339, column: 12, scope: !3072)
!3083 = !DILocation(line: 1339, column: 38, scope: !3072)
!3084 = !DILocation(line: 1339, column: 41, scope: !3072)
!3085 = !DILocation(line: 1339, column: 47, scope: !3072)
!3086 = !DILocation(line: 1339, column: 52, scope: !3072)
!3087 = !DILocation(line: 1339, column: 21, scope: !3072)
!3088 = !DILocation(line: 1341, column: 2, scope: !3072)
!3089 = !DILocation(line: 1341, column: 10, scope: !3072)
!3090 = !DILocation(line: 1341, column: 15, scope: !3072)
!3091 = !DILocation(line: 1343, column: 9, scope: !3072)
!3092 = !DILocation(line: 1343, column: 2, scope: !3072)
!3093 = distinct !DISubprogram(name: "thread_add_child", scope: !263, file: !263, line: 1348, type: !3094, isLocal: false, isDefinition: true, scopeLine: 1349, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!202, !65, !968, !63, !236, !79}
!3096 = !DILocalVariable(name: "m", arg: 1, scope: !3093, file: !263, line: 1348, type: !65)
!3097 = !DILocation(line: 1348, column: 36, scope: !3093)
!3098 = !DILocalVariable(name: "func", arg: 2, scope: !3093, file: !263, line: 1348, type: !968)
!3099 = !DILocation(line: 1348, column: 45, scope: !3093)
!3100 = !DILocalVariable(name: "arg", arg: 3, scope: !3093, file: !263, line: 1348, type: !63)
!3101 = !DILocation(line: 1348, column: 72, scope: !3093)
!3102 = !DILocalVariable(name: "pid", arg: 4, scope: !3093, file: !263, line: 1348, type: !236)
!3103 = !DILocation(line: 1348, column: 83, scope: !3093)
!3104 = !DILocalVariable(name: "timer", arg: 5, scope: !3093, file: !263, line: 1348, type: !79)
!3105 = !DILocation(line: 1348, column: 102, scope: !3093)
!3106 = !DILocalVariable(name: "thread", scope: !3093, file: !263, line: 1350, type: !202)
!3107 = !DILocation(line: 1350, column: 12, scope: !3093)
!3108 = !DILocation(line: 1354, column: 22, scope: !3093)
!3109 = !DILocation(line: 1354, column: 11, scope: !3093)
!3110 = !DILocation(line: 1354, column: 9, scope: !3093)
!3111 = !DILocation(line: 1355, column: 2, scope: !3093)
!3112 = !DILocation(line: 1355, column: 10, scope: !3093)
!3113 = !DILocation(line: 1355, column: 15, scope: !3093)
!3114 = !DILocation(line: 1356, column: 19, scope: !3093)
!3115 = !DILocation(line: 1356, column: 2, scope: !3093)
!3116 = !DILocation(line: 1356, column: 10, scope: !3093)
!3117 = !DILocation(line: 1356, column: 17, scope: !3093)
!3118 = !DILocation(line: 1357, column: 17, scope: !3093)
!3119 = !DILocation(line: 1357, column: 2, scope: !3093)
!3120 = !DILocation(line: 1357, column: 10, scope: !3093)
!3121 = !DILocation(line: 1357, column: 15, scope: !3093)
!3122 = !DILocation(line: 1358, column: 16, scope: !3093)
!3123 = !DILocation(line: 1358, column: 2, scope: !3093)
!3124 = !DILocation(line: 1358, column: 10, scope: !3093)
!3125 = !DILocation(line: 1358, column: 14, scope: !3093)
!3126 = !DILocation(line: 1359, column: 20, scope: !3093)
!3127 = !DILocation(line: 1359, column: 2, scope: !3093)
!3128 = !DILocation(line: 1359, column: 10, scope: !3093)
!3129 = !DILocation(line: 1359, column: 12, scope: !3093)
!3130 = !DILocation(line: 1359, column: 14, scope: !3093)
!3131 = !DILocation(line: 1359, column: 18, scope: !3093)
!3132 = !DILocation(line: 1360, column: 2, scope: !3093)
!3133 = !DILocation(line: 1360, column: 10, scope: !3093)
!3134 = !DILocation(line: 1360, column: 12, scope: !3093)
!3135 = !DILocation(line: 1360, column: 14, scope: !3093)
!3136 = !DILocation(line: 1360, column: 21, scope: !3093)
!3137 = !DILocation(line: 1363, column: 6, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3093, file: !263, line: 1363, column: 6)
!3139 = !DILocation(line: 1363, column: 12, scope: !3138)
!3140 = !DILocation(line: 1363, column: 6, scope: !3093)
!3141 = !DILocation(line: 1364, column: 3, scope: !3138)
!3142 = !DILocation(line: 1364, column: 11, scope: !3138)
!3143 = !DILocation(line: 1364, column: 17, scope: !3138)
!3144 = !DILocation(line: 1364, column: 24, scope: !3138)
!3145 = !DILocation(line: 1366, column: 3, scope: !3146)
!3146 = distinct !DILexicalBlock(scope: !3138, file: !263, line: 1365, column: 7)
!3147 = !DILocation(line: 1367, column: 3, scope: !3146)
!3148 = !DILocation(line: 1367, column: 11, scope: !3146)
!3149 = !DILocation(line: 1367, column: 44, scope: !3146)
!3150 = !DILocation(line: 1367, column: 19, scope: !3146)
!3151 = !DILocation(line: 1367, column: 19, scope: !3152)
!3152 = !DILexicalBlockFile(scope: !3146, file: !263, discriminator: 1)
!3153 = !DILocalVariable(name: "__n", scope: !3154, file: !263, line: 1372, type: !1109)
!3154 = distinct !DILexicalBlock(scope: !3093, file: !263, line: 1372, column: 3)
!3155 = !DILocation(line: 1372, column: 17, scope: !3154)
!3156 = !DILocation(line: 1372, column: 26, scope: !3154)
!3157 = !DILocation(line: 1372, column: 29, scope: !3154)
!3158 = !DILocation(line: 1372, column: 37, scope: !3154)
!3159 = !DILocalVariable(name: "__parent", scope: !3154, file: !263, line: 1372, type: !1110)
!3160 = !DILocation(line: 1372, column: 47, scope: !3154)
!3161 = !DILocalVariable(name: "__data", scope: !3154, file: !263, line: 1372, type: !202)
!3162 = !DILocation(line: 1372, column: 18, scope: !3154)
!3163 = !DILocation(line: 1372, column: 34, scope: !3164)
!3164 = !DILexicalBlockFile(scope: !3154, file: !263, discriminator: 1)
!3165 = !DILocation(line: 1372, column: 33, scope: !3164)
!3166 = !DILocation(line: 1372, column: 26, scope: !3164)
!3167 = !DILocation(line: 1372, column: 52, scope: !3168)
!3168 = !DILexicalBlockFile(scope: !3169, file: !263, discriminator: 2)
!3169 = distinct !DILexicalBlock(scope: !3154, file: !263, line: 1372, column: 39)
!3170 = !DILocation(line: 1372, column: 51, scope: !3168)
!3171 = !DILocation(line: 1372, column: 50, scope: !3168)
!3172 = !DILocalVariable(name: "__mptr", scope: !3173, file: !263, line: 1372, type: !1130)
!3173 = distinct !DILexicalBlock(scope: !3169, file: !263, line: 1372, column: 60)
!3174 = !DILocation(line: 1372, column: 105, scope: !3173)
!3175 = !DILocation(line: 1372, column: 116, scope: !3176)
!3176 = !DILexicalBlockFile(scope: !3173, file: !263, discriminator: 3)
!3177 = !DILocation(line: 1372, column: 115, scope: !3176)
!3178 = !DILocation(line: 1372, column: 105, scope: !3176)
!3179 = !DILocation(line: 1372, column: 151, scope: !3176)
!3180 = !DILocation(line: 1372, column: 143, scope: !3176)
!3181 = !DILocation(line: 1372, column: 158, scope: !3176)
!3182 = !DILocation(line: 1372, column: 122, scope: !3176)
!3183 = !DILocation(line: 1372, column: 62, scope: !3176)
!3184 = !DILocation(line: 1372, column: 3, scope: !3176)
!3185 = !DILocation(line: 1372, column: 50, scope: !3176)
!3186 = !DILocation(line: 1372, column: 50, scope: !3187)
!3187 = !DILexicalBlockFile(scope: !3169, file: !263, discriminator: 4)
!3188 = !DILocation(line: 1372, column: 50, scope: !3189)
!3189 = !DILexicalBlockFile(scope: !3169, file: !263, discriminator: 5)
!3190 = !DILocation(line: 1372, column: 48, scope: !3189)
!3191 = !DILocalVariable(name: "__cmp", scope: !3169, file: !263, line: 1372, type: !126)
!3192 = !DILocation(line: 1372, column: 7, scope: !3169)
!3193 = !DILocation(line: 1372, column: 32, scope: !3189)
!3194 = !DILocation(line: 1372, column: 40, scope: !3189)
!3195 = !DILocation(line: 1372, column: 15, scope: !3189)
!3196 = !DILocation(line: 1372, column: 7, scope: !3189)
!3197 = !DILocation(line: 1372, column: 61, scope: !3189)
!3198 = !DILocation(line: 1372, column: 60, scope: !3189)
!3199 = !DILocation(line: 1372, column: 58, scope: !3189)
!3200 = !DILocation(line: 1372, column: 70, scope: !3189)
!3201 = !DILocation(line: 1372, column: 76, scope: !3189)
!3202 = !DILocation(line: 1372, column: 92, scope: !3203)
!3203 = !DILexicalBlockFile(scope: !3204, file: !263, discriminator: 6)
!3204 = distinct !DILexicalBlock(scope: !3169, file: !263, line: 1372, column: 70)
!3205 = !DILocation(line: 1372, column: 91, scope: !3203)
!3206 = !DILocation(line: 1372, column: 98, scope: !3203)
!3207 = !DILocation(line: 1372, column: 86, scope: !3203)
!3208 = !DILocation(line: 1372, column: 82, scope: !3203)
!3209 = !DILocation(line: 1372, column: 117, scope: !3210)
!3210 = !DILexicalBlockFile(scope: !3211, file: !263, discriminator: 7)
!3211 = distinct !DILexicalBlock(scope: !3204, file: !263, line: 1372, column: 117)
!3212 = !DILocation(line: 1372, column: 123, scope: !3210)
!3213 = !DILocation(line: 1372, column: 138, scope: !3214)
!3214 = !DILexicalBlockFile(scope: !3211, file: !263, discriminator: 8)
!3215 = !DILocation(line: 1372, column: 137, scope: !3214)
!3216 = !DILocation(line: 1372, column: 144, scope: !3214)
!3217 = !DILocation(line: 1372, column: 132, scope: !3214)
!3218 = !DILocation(line: 1372, column: 128, scope: !3214)
!3219 = !DILocation(line: 1372, column: 26, scope: !3220)
!3220 = !DILexicalBlockFile(scope: !3154, file: !263, discriminator: 9)
!3221 = distinct !{!3221, !3156}
!3222 = !DILocation(line: 1372, column: 173, scope: !3223)
!3223 = !DILexicalBlockFile(scope: !3154, file: !263, discriminator: 10)
!3224 = !DILocation(line: 1372, column: 182, scope: !3223)
!3225 = !DILocation(line: 1372, column: 186, scope: !3223)
!3226 = !DILocation(line: 1372, column: 196, scope: !3223)
!3227 = !DILocation(line: 1372, column: 157, scope: !3223)
!3228 = !DILocation(line: 1372, column: 221, scope: !3223)
!3229 = !DILocation(line: 1372, column: 230, scope: !3223)
!3230 = !DILocation(line: 1372, column: 235, scope: !3223)
!3231 = !DILocation(line: 1372, column: 238, scope: !3223)
!3232 = !DILocation(line: 1372, column: 202, scope: !3233)
!3233 = !DILexicalBlockFile(scope: !3223, file: !263, discriminator: 11)
!3234 = !DILocation(line: 1375, column: 6, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3093, file: !263, line: 1375, column: 6)
!3236 = !DILocation(line: 1375, column: 6, scope: !3093)
!3237 = !DILocation(line: 1376, column: 3, scope: !3235)
!3238 = !DILocation(line: 1376, column: 15, scope: !3235)
!3239 = !DILocation(line: 1378, column: 9, scope: !3093)
!3240 = !DILocation(line: 1378, column: 2, scope: !3093)
!3241 = distinct !DISubprogram(name: "thread_children_reschedule", scope: !263, file: !263, line: 1382, type: !3242, isLocal: false, isDefinition: true, scopeLine: 1383, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{null, !65, !968, !79}
!3244 = !DILocalVariable(name: "m", arg: 1, scope: !3241, file: !263, line: 1382, type: !65)
!3245 = !DILocation(line: 1382, column: 45, scope: !3241)
!3246 = !DILocalVariable(name: "func", arg: 2, scope: !3241, file: !263, line: 1382, type: !968)
!3247 = !DILocation(line: 1382, column: 54, scope: !3241)
!3248 = !DILocalVariable(name: "timer", arg: 3, scope: !3241, file: !263, line: 1382, type: !79)
!3249 = !DILocation(line: 1382, column: 87, scope: !3241)
!3250 = !DILocalVariable(name: "thread", scope: !3241, file: !263, line: 1384, type: !202)
!3251 = !DILocation(line: 1384, column: 12, scope: !3241)
!3252 = !DILocation(line: 1387, column: 2, scope: !3241)
!3253 = !DILocation(line: 1388, column: 27, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3241, file: !263, line: 1388, column: 2)
!3255 = !DILocation(line: 1388, column: 30, scope: !3254)
!3256 = !DILocation(line: 1388, column: 17, scope: !3254)
!3257 = !DILocation(line: 1388, column: 16, scope: !3254)
!3258 = !DILocalVariable(name: "__mptr", scope: !3259, file: !263, line: 1388, type: !1130)
!3259 = distinct !DILexicalBlock(scope: !3254, file: !263, line: 1388, column: 41)
!3260 = !DILocation(line: 1388, column: 86, scope: !3259)
!3261 = !DILocation(line: 1388, column: 106, scope: !3262)
!3262 = !DILexicalBlockFile(scope: !3259, file: !263, discriminator: 1)
!3263 = !DILocation(line: 1388, column: 109, scope: !3262)
!3264 = !DILocation(line: 1388, column: 96, scope: !3262)
!3265 = !DILocation(line: 1388, column: 86, scope: !3262)
!3266 = !DILocation(line: 1388, column: 147, scope: !3262)
!3267 = !DILocation(line: 1388, column: 139, scope: !3262)
!3268 = !DILocation(line: 1388, column: 154, scope: !3262)
!3269 = !DILocation(line: 1388, column: 118, scope: !3262)
!3270 = !DILocation(line: 1388, column: 43, scope: !3262)
!3271 = !DILocation(line: 1388, column: 3, scope: !3262)
!3272 = !DILocation(line: 1388, column: 16, scope: !3262)
!3273 = !DILocation(line: 1388, column: 16, scope: !3274)
!3274 = !DILexicalBlockFile(scope: !3254, file: !263, discriminator: 2)
!3275 = !DILocation(line: 1388, column: 16, scope: !3276)
!3276 = !DILexicalBlockFile(scope: !3254, file: !263, discriminator: 3)
!3277 = !DILocation(line: 1388, column: 14, scope: !3276)
!3278 = !DILocation(line: 1388, column: 7, scope: !3276)
!3279 = !DILocation(line: 1388, column: 3, scope: !3280)
!3280 = !DILexicalBlockFile(scope: !3281, file: !263, discriminator: 4)
!3281 = distinct !DILexicalBlock(scope: !3254, file: !263, line: 1388, column: 2)
!3282 = !DILocation(line: 1388, column: 2, scope: !3280)
!3283 = !DILocation(line: 1389, column: 18, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3281, file: !263, line: 1388, column: 3)
!3285 = !DILocation(line: 1389, column: 3, scope: !3284)
!3286 = !DILocation(line: 1389, column: 11, scope: !3284)
!3287 = !DILocation(line: 1389, column: 16, scope: !3284)
!3288 = !DILocation(line: 1390, column: 3, scope: !3284)
!3289 = !DILocation(line: 1390, column: 11, scope: !3284)
!3290 = !DILocation(line: 1390, column: 44, scope: !3284)
!3291 = !DILocation(line: 1390, column: 19, scope: !3284)
!3292 = !DILocation(line: 1390, column: 19, scope: !3293)
!3293 = !DILexicalBlockFile(scope: !3284, file: !263, discriminator: 1)
!3294 = !DILocation(line: 1391, column: 2, scope: !3284)
!3295 = !DILocation(line: 1388, column: 30, scope: !3296)
!3296 = !DILexicalBlockFile(scope: !3281, file: !263, discriminator: 5)
!3297 = !DILocation(line: 1388, column: 38, scope: !3296)
!3298 = !DILocation(line: 1388, column: 21, scope: !3296)
!3299 = !DILocation(line: 1388, column: 20, scope: !3296)
!3300 = !DILocalVariable(name: "__mptr", scope: !3301, file: !263, line: 1388, type: !1130)
!3301 = distinct !DILexicalBlock(scope: !3281, file: !263, line: 1388, column: 45)
!3302 = !DILocation(line: 1388, column: 90, scope: !3301)
!3303 = !DILocation(line: 1388, column: 109, scope: !3304)
!3304 = !DILexicalBlockFile(scope: !3301, file: !263, discriminator: 6)
!3305 = !DILocation(line: 1388, column: 117, scope: !3304)
!3306 = !DILocation(line: 1388, column: 100, scope: !3304)
!3307 = !DILocation(line: 1388, column: 90, scope: !3304)
!3308 = !DILocation(line: 1388, column: 151, scope: !3304)
!3309 = !DILocation(line: 1388, column: 143, scope: !3304)
!3310 = !DILocation(line: 1388, column: 158, scope: !3304)
!3311 = !DILocation(line: 1388, column: 122, scope: !3304)
!3312 = !DILocation(line: 1388, column: 47, scope: !3304)
!3313 = !DILocation(line: 1388, column: 3, scope: !3304)
!3314 = !DILocation(line: 1388, column: 20, scope: !3304)
!3315 = !DILocation(line: 1388, column: 20, scope: !3316)
!3316 = !DILexicalBlockFile(scope: !3281, file: !263, discriminator: 7)
!3317 = !DILocation(line: 1388, column: 20, scope: !3318)
!3318 = !DILexicalBlockFile(scope: !3281, file: !263, discriminator: 8)
!3319 = !DILocation(line: 1388, column: 18, scope: !3318)
!3320 = !DILocation(line: 1388, column: 2, scope: !3318)
!3321 = distinct !{!3321, !3322}
!3322 = !DILocation(line: 1388, column: 2, scope: !3241)
!3323 = !DILocation(line: 1392, column: 1, scope: !3241)
!3324 = distinct !DISubprogram(name: "thread_add_event", scope: !263, file: !263, line: 1396, type: !3325, isLocal: false, isDefinition: true, scopeLine: 1397, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!202, !65, !968, !63, !126}
!3327 = !DILocalVariable(name: "m", arg: 1, scope: !3324, file: !263, line: 1396, type: !65)
!3328 = !DILocation(line: 1396, column: 36, scope: !3324)
!3329 = !DILocalVariable(name: "func", arg: 2, scope: !3324, file: !263, line: 1396, type: !968)
!3330 = !DILocation(line: 1396, column: 45, scope: !3324)
!3331 = !DILocalVariable(name: "arg", arg: 3, scope: !3324, file: !263, line: 1396, type: !63)
!3332 = !DILocation(line: 1396, column: 71, scope: !3324)
!3333 = !DILocalVariable(name: "val", arg: 4, scope: !3324, file: !263, line: 1396, type: !126)
!3334 = !DILocation(line: 1396, column: 80, scope: !3324)
!3335 = !DILocalVariable(name: "thread", scope: !3324, file: !263, line: 1398, type: !202)
!3336 = !DILocation(line: 1398, column: 12, scope: !3324)
!3337 = !DILocation(line: 1402, column: 22, scope: !3324)
!3338 = !DILocation(line: 1402, column: 11, scope: !3324)
!3339 = !DILocation(line: 1402, column: 9, scope: !3324)
!3340 = !DILocation(line: 1403, column: 2, scope: !3324)
!3341 = !DILocation(line: 1403, column: 10, scope: !3324)
!3342 = !DILocation(line: 1403, column: 15, scope: !3324)
!3343 = !DILocation(line: 1404, column: 19, scope: !3324)
!3344 = !DILocation(line: 1404, column: 2, scope: !3324)
!3345 = !DILocation(line: 1404, column: 10, scope: !3324)
!3346 = !DILocation(line: 1404, column: 17, scope: !3324)
!3347 = !DILocation(line: 1405, column: 17, scope: !3324)
!3348 = !DILocation(line: 1405, column: 2, scope: !3324)
!3349 = !DILocation(line: 1405, column: 10, scope: !3324)
!3350 = !DILocation(line: 1405, column: 15, scope: !3324)
!3351 = !DILocation(line: 1406, column: 16, scope: !3324)
!3352 = !DILocation(line: 1406, column: 2, scope: !3324)
!3353 = !DILocation(line: 1406, column: 10, scope: !3324)
!3354 = !DILocation(line: 1406, column: 14, scope: !3324)
!3355 = !DILocation(line: 1407, column: 18, scope: !3324)
!3356 = !DILocation(line: 1407, column: 2, scope: !3324)
!3357 = !DILocation(line: 1407, column: 10, scope: !3324)
!3358 = !DILocation(line: 1407, column: 12, scope: !3324)
!3359 = !DILocation(line: 1407, column: 16, scope: !3324)
!3360 = !DILocation(line: 1408, column: 2, scope: !3324)
!3361 = distinct !{!3361, !3360}
!3362 = !DILocation(line: 1408, column: 33, scope: !3363)
!3363 = !DILexicalBlockFile(scope: !3364, file: !263, discriminator: 1)
!3364 = distinct !DILexicalBlock(scope: !3324, file: !263, line: 1408, column: 5)
!3365 = !DILocation(line: 1408, column: 41, scope: !3363)
!3366 = !DILocation(line: 1408, column: 9, scope: !3363)
!3367 = !DILocation(line: 1408, column: 17, scope: !3363)
!3368 = !DILocation(line: 1408, column: 24, scope: !3363)
!3369 = !DILocation(line: 1408, column: 29, scope: !3363)
!3370 = !DILocation(line: 1408, column: 74, scope: !3363)
!3371 = !DILocation(line: 1408, column: 82, scope: !3363)
!3372 = !DILocation(line: 1408, column: 50, scope: !3363)
!3373 = !DILocation(line: 1408, column: 58, scope: !3363)
!3374 = !DILocation(line: 1408, column: 65, scope: !3363)
!3375 = !DILocation(line: 1408, column: 70, scope: !3363)
!3376 = !DILocation(line: 1408, column: 89, scope: !3363)
!3377 = !DILocation(line: 1409, column: 17, scope: !3324)
!3378 = !DILocation(line: 1409, column: 25, scope: !3324)
!3379 = !DILocation(line: 1409, column: 32, scope: !3324)
!3380 = !DILocation(line: 1409, column: 35, scope: !3324)
!3381 = !DILocation(line: 1409, column: 2, scope: !3324)
!3382 = !DILocation(line: 1411, column: 9, scope: !3324)
!3383 = !DILocation(line: 1411, column: 2, scope: !3324)
!3384 = distinct !DISubprogram(name: "list_add_tail", scope: !87, file: !87, line: 112, type: !3385, isLocal: true, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!3385 = !DISubroutineType(types: !3386)
!3386 = !{null, !91, !91}
!3387 = !DILocalVariable(name: "new", arg: 1, scope: !3384, file: !87, line: 112, type: !91)
!3388 = !DILocation(line: 112, column: 52, scope: !3384)
!3389 = !DILocalVariable(name: "head", arg: 2, scope: !3384, file: !87, line: 112, type: !91)
!3390 = !DILocation(line: 112, column: 75, scope: !3384)
!3391 = !DILocation(line: 114, column: 13, scope: !3384)
!3392 = !DILocation(line: 114, column: 18, scope: !3384)
!3393 = !DILocation(line: 114, column: 24, scope: !3384)
!3394 = !DILocation(line: 114, column: 30, scope: !3384)
!3395 = !DILocation(line: 114, column: 2, scope: !3384)
!3396 = !DILocation(line: 115, column: 1, scope: !3384)
!3397 = distinct !DISubprogram(name: "thread_add_terminate_event", scope: !263, file: !263, line: 1435, type: !1819, isLocal: false, isDefinition: true, scopeLine: 1436, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!3398 = !DILocalVariable(name: "m", arg: 1, scope: !3397, file: !263, line: 1435, type: !65)
!3399 = !DILocation(line: 1435, column: 45, scope: !3397)
!3400 = !DILocation(line: 1437, column: 44, scope: !3397)
!3401 = !DILocation(line: 1437, column: 9, scope: !3397)
!3402 = !DILocation(line: 1437, column: 2, scope: !3397)
!3403 = distinct !DISubprogram(name: "thread_add_generic_terminate_event", scope: !263, file: !263, line: 1416, type: !3404, isLocal: true, isDefinition: true, scopeLine: 1417, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{!202, !65, !208, !968}
!3406 = !DILocalVariable(name: "m", arg: 1, scope: !3403, file: !263, line: 1416, type: !65)
!3407 = !DILocation(line: 1416, column: 54, scope: !3403)
!3408 = !DILocalVariable(name: "type", arg: 2, scope: !3403, file: !263, line: 1416, type: !208)
!3409 = !DILocation(line: 1416, column: 71, scope: !3403)
!3410 = !DILocalVariable(name: "func", arg: 3, scope: !3403, file: !263, line: 1416, type: !968)
!3411 = !DILocation(line: 1416, column: 83, scope: !3403)
!3412 = !DILocalVariable(name: "thread", scope: !3403, file: !263, line: 1418, type: !202)
!3413 = !DILocation(line: 1418, column: 12, scope: !3403)
!3414 = !DILocation(line: 1422, column: 22, scope: !3403)
!3415 = !DILocation(line: 1422, column: 11, scope: !3403)
!3416 = !DILocation(line: 1422, column: 9, scope: !3403)
!3417 = !DILocation(line: 1423, column: 17, scope: !3403)
!3418 = !DILocation(line: 1423, column: 2, scope: !3403)
!3419 = !DILocation(line: 1423, column: 10, scope: !3403)
!3420 = !DILocation(line: 1423, column: 15, scope: !3403)
!3421 = !DILocation(line: 1424, column: 19, scope: !3403)
!3422 = !DILocation(line: 1424, column: 2, scope: !3403)
!3423 = !DILocation(line: 1424, column: 10, scope: !3403)
!3424 = !DILocation(line: 1424, column: 17, scope: !3403)
!3425 = !DILocation(line: 1425, column: 17, scope: !3403)
!3426 = !DILocation(line: 1425, column: 2, scope: !3403)
!3427 = !DILocation(line: 1425, column: 10, scope: !3403)
!3428 = !DILocation(line: 1425, column: 15, scope: !3403)
!3429 = !DILocation(line: 1426, column: 2, scope: !3403)
!3430 = !DILocation(line: 1426, column: 10, scope: !3403)
!3431 = !DILocation(line: 1426, column: 14, scope: !3403)
!3432 = !DILocation(line: 1427, column: 2, scope: !3403)
!3433 = !DILocation(line: 1427, column: 10, scope: !3403)
!3434 = !DILocation(line: 1427, column: 12, scope: !3403)
!3435 = !DILocation(line: 1427, column: 16, scope: !3403)
!3436 = !DILocation(line: 1428, column: 2, scope: !3403)
!3437 = distinct !{!3437, !3436}
!3438 = !DILocation(line: 1428, column: 33, scope: !3439)
!3439 = !DILexicalBlockFile(scope: !3440, file: !263, discriminator: 1)
!3440 = distinct !DILexicalBlock(scope: !3403, file: !263, line: 1428, column: 5)
!3441 = !DILocation(line: 1428, column: 41, scope: !3439)
!3442 = !DILocation(line: 1428, column: 9, scope: !3439)
!3443 = !DILocation(line: 1428, column: 17, scope: !3439)
!3444 = !DILocation(line: 1428, column: 24, scope: !3439)
!3445 = !DILocation(line: 1428, column: 29, scope: !3439)
!3446 = !DILocation(line: 1428, column: 74, scope: !3439)
!3447 = !DILocation(line: 1428, column: 82, scope: !3439)
!3448 = !DILocation(line: 1428, column: 50, scope: !3439)
!3449 = !DILocation(line: 1428, column: 58, scope: !3439)
!3450 = !DILocation(line: 1428, column: 65, scope: !3439)
!3451 = !DILocation(line: 1428, column: 70, scope: !3439)
!3452 = !DILocation(line: 1428, column: 89, scope: !3439)
!3453 = !DILocation(line: 1429, column: 17, scope: !3403)
!3454 = !DILocation(line: 1429, column: 25, scope: !3403)
!3455 = !DILocation(line: 1429, column: 32, scope: !3403)
!3456 = !DILocation(line: 1429, column: 35, scope: !3403)
!3457 = !DILocation(line: 1429, column: 2, scope: !3403)
!3458 = !DILocation(line: 1431, column: 9, scope: !3403)
!3459 = !DILocation(line: 1431, column: 2, scope: !3403)
!3460 = distinct !DISubprogram(name: "thread_add_start_terminate_event", scope: !263, file: !263, line: 1441, type: !3461, isLocal: false, isDefinition: true, scopeLine: 1442, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!202, !65, !968}
!3463 = !DILocalVariable(name: "m", arg: 1, scope: !3460, file: !263, line: 1441, type: !65)
!3464 = !DILocation(line: 1441, column: 51, scope: !3460)
!3465 = !DILocalVariable(name: "func", arg: 2, scope: !3460, file: !263, line: 1441, type: !968)
!3466 = !DILocation(line: 1441, column: 59, scope: !3460)
!3467 = !DILocation(line: 1443, column: 44, scope: !3460)
!3468 = !DILocation(line: 1443, column: 71, scope: !3460)
!3469 = !DILocation(line: 1443, column: 9, scope: !3460)
!3470 = !DILocation(line: 1443, column: 2, scope: !3460)
!3471 = distinct !DISubprogram(name: "thread_cancel", scope: !263, file: !263, line: 1476, type: !278, isLocal: false, isDefinition: true, scopeLine: 1477, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!3472 = !DILocalVariable(name: "thread", arg: 1, scope: !3471, file: !263, line: 1476, type: !202)
!3473 = !DILocation(line: 1476, column: 25, scope: !3471)
!3474 = !DILocalVariable(name: "m", scope: !3471, file: !263, line: 1478, type: !65)
!3475 = !DILocation(line: 1478, column: 19, scope: !3471)
!3476 = !DILocation(line: 1480, column: 7, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3471, file: !263, line: 1480, column: 6)
!3478 = !DILocation(line: 1480, column: 6, scope: !3471)
!3479 = !DILocation(line: 1481, column: 3, scope: !3477)
!3480 = !DILocation(line: 1483, column: 6, scope: !3471)
!3481 = !DILocation(line: 1483, column: 14, scope: !3471)
!3482 = !DILocation(line: 1483, column: 4, scope: !3471)
!3483 = !DILocation(line: 1485, column: 10, scope: !3471)
!3484 = !DILocation(line: 1485, column: 18, scope: !3471)
!3485 = !DILocation(line: 1485, column: 2, scope: !3471)
!3486 = !DILocation(line: 1487, column: 20, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3471, file: !263, line: 1485, column: 24)
!3488 = !DILocation(line: 1487, column: 3, scope: !3487)
!3489 = !DILocation(line: 1488, column: 13, scope: !3487)
!3490 = !DILocation(line: 1488, column: 21, scope: !3487)
!3491 = !DILocation(line: 1488, column: 25, scope: !3487)
!3492 = !DILocation(line: 1488, column: 28, scope: !3487)
!3493 = !DILocation(line: 1488, column: 3, scope: !3487)
!3494 = !DILocation(line: 1489, column: 3, scope: !3487)
!3495 = !DILocation(line: 1491, column: 20, scope: !3487)
!3496 = !DILocation(line: 1491, column: 3, scope: !3487)
!3497 = !DILocation(line: 1492, column: 13, scope: !3487)
!3498 = !DILocation(line: 1492, column: 21, scope: !3487)
!3499 = !DILocation(line: 1492, column: 25, scope: !3487)
!3500 = !DILocation(line: 1492, column: 28, scope: !3487)
!3501 = !DILocation(line: 1492, column: 3, scope: !3487)
!3502 = !DILocation(line: 1493, column: 3, scope: !3487)
!3503 = !DILocation(line: 1495, column: 13, scope: !3487)
!3504 = !DILocation(line: 1495, column: 21, scope: !3487)
!3505 = !DILocation(line: 1495, column: 25, scope: !3487)
!3506 = !DILocation(line: 1495, column: 28, scope: !3487)
!3507 = !DILocation(line: 1495, column: 3, scope: !3487)
!3508 = !DILocation(line: 1496, column: 3, scope: !3487)
!3509 = !DILocation(line: 1502, column: 13, scope: !3487)
!3510 = !DILocation(line: 1502, column: 21, scope: !3487)
!3511 = !DILocation(line: 1502, column: 25, scope: !3487)
!3512 = !DILocation(line: 1502, column: 28, scope: !3487)
!3513 = !DILocation(line: 1502, column: 3, scope: !3487)
!3514 = !DILocation(line: 1503, column: 3, scope: !3487)
!3515 = !DILocation(line: 1507, column: 7, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3487, file: !263, line: 1507, column: 7)
!3517 = !DILocation(line: 1507, column: 15, scope: !3516)
!3518 = !DILocation(line: 1507, column: 7, scope: !3487)
!3519 = !DILocation(line: 1508, column: 14, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3516, file: !263, line: 1507, column: 22)
!3521 = !DILocation(line: 1508, column: 22, scope: !3520)
!3522 = !DILocation(line: 1508, column: 29, scope: !3520)
!3523 = !DILocation(line: 1508, column: 33, scope: !3520)
!3524 = !DILocation(line: 1508, column: 36, scope: !3520)
!3525 = !DILocation(line: 1508, column: 4, scope: !3520)
!3526 = !DILocation(line: 1509, column: 10, scope: !3520)
!3527 = !DILocation(line: 1509, column: 18, scope: !3520)
!3528 = !DILocation(line: 1509, column: 5, scope: !3520)
!3529 = !DILocation(line: 1509, column: 27, scope: !3520)
!3530 = !DILocation(line: 1509, column: 35, scope: !3520)
!3531 = !DILocation(line: 1509, column: 42, scope: !3520)
!3532 = !DILocation(line: 1510, column: 3, scope: !3520)
!3533 = !DILocation(line: 1507, column: 15, scope: !3534)
!3534 = !DILexicalBlockFile(scope: !3516, file: !263, discriminator: 1)
!3535 = !DILocation(line: 1518, column: 18, scope: !3487)
!3536 = !DILocation(line: 1518, column: 26, scope: !3487)
!3537 = !DILocation(line: 1518, column: 3, scope: !3487)
!3538 = !DILocation(line: 1519, column: 3, scope: !3487)
!3539 = !DILocation(line: 1521, column: 3, scope: !3487)
!3540 = !DILocation(line: 1524, column: 19, scope: !3471)
!3541 = !DILocation(line: 1524, column: 22, scope: !3471)
!3542 = !DILocation(line: 1524, column: 2, scope: !3471)
!3543 = !DILocation(line: 1525, column: 1, scope: !3471)
!3544 = !DILocation(line: 1525, column: 1, scope: !3545)
!3545 = !DILexicalBlockFile(scope: !3471, file: !263, discriminator: 1)
!3546 = distinct !DISubprogram(name: "list_head_del", scope: !87, file: !87, line: 136, type: !3547, isLocal: true, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!3547 = !DISubroutineType(types: !3548)
!3548 = !{null, !91}
!3549 = !DILocalVariable(name: "entry", arg: 1, scope: !3546, file: !87, line: 136, type: !91)
!3550 = !DILocation(line: 136, column: 52, scope: !3546)
!3551 = !DILocation(line: 138, column: 13, scope: !3546)
!3552 = !DILocation(line: 138, column: 20, scope: !3546)
!3553 = !DILocation(line: 138, column: 26, scope: !3546)
!3554 = !DILocation(line: 138, column: 33, scope: !3546)
!3555 = !DILocation(line: 138, column: 2, scope: !3546)
!3556 = !DILocation(line: 139, column: 2, scope: !3546)
!3557 = !DILocation(line: 139, column: 9, scope: !3546)
!3558 = !DILocation(line: 139, column: 14, scope: !3546)
!3559 = !DILocation(line: 140, column: 2, scope: !3546)
!3560 = !DILocation(line: 140, column: 9, scope: !3546)
!3561 = !DILocation(line: 140, column: 14, scope: !3546)
!3562 = !DILocation(line: 141, column: 1, scope: !3546)
!3563 = distinct !DISubprogram(name: "thread_cancel_read", scope: !263, file: !263, line: 1528, type: !3564, isLocal: false, isDefinition: true, scopeLine: 1529, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{null, !65, !126}
!3566 = !DILocalVariable(name: "m", arg: 1, scope: !3563, file: !263, line: 1528, type: !65)
!3567 = !DILocation(line: 1528, column: 37, scope: !3563)
!3568 = !DILocalVariable(name: "fd", arg: 2, scope: !3563, file: !263, line: 1528, type: !126)
!3569 = !DILocation(line: 1528, column: 44, scope: !3563)
!3570 = !DILocalVariable(name: "thread", scope: !3563, file: !263, line: 1530, type: !202)
!3571 = !DILocation(line: 1530, column: 12, scope: !3563)
!3572 = !DILocalVariable(name: "thread_tmp", scope: !3563, file: !263, line: 1530, type: !202)
!3573 = !DILocation(line: 1530, column: 21, scope: !3563)
!3574 = !DILocation(line: 1532, column: 27, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3563, file: !263, line: 1532, column: 2)
!3576 = !DILocation(line: 1532, column: 30, scope: !3575)
!3577 = !DILocation(line: 1532, column: 17, scope: !3575)
!3578 = !DILocation(line: 1532, column: 16, scope: !3575)
!3579 = !DILocalVariable(name: "__mptr", scope: !3580, file: !263, line: 1532, type: !1130)
!3580 = distinct !DILexicalBlock(scope: !3575, file: !263, line: 1532, column: 40)
!3581 = !DILocation(line: 1532, column: 85, scope: !3580)
!3582 = !DILocation(line: 1532, column: 105, scope: !3583)
!3583 = !DILexicalBlockFile(scope: !3580, file: !263, discriminator: 1)
!3584 = !DILocation(line: 1532, column: 108, scope: !3583)
!3585 = !DILocation(line: 1532, column: 95, scope: !3583)
!3586 = !DILocation(line: 1532, column: 85, scope: !3583)
!3587 = !DILocation(line: 1532, column: 145, scope: !3583)
!3588 = !DILocation(line: 1532, column: 137, scope: !3583)
!3589 = !DILocation(line: 1532, column: 152, scope: !3583)
!3590 = !DILocation(line: 1532, column: 116, scope: !3583)
!3591 = !DILocation(line: 1532, column: 42, scope: !3583)
!3592 = !DILocation(line: 1532, column: 3, scope: !3583)
!3593 = !DILocation(line: 1532, column: 16, scope: !3583)
!3594 = !DILocation(line: 1532, column: 16, scope: !3595)
!3595 = !DILexicalBlockFile(scope: !3575, file: !263, discriminator: 2)
!3596 = !DILocation(line: 1532, column: 16, scope: !3597)
!3597 = !DILexicalBlockFile(scope: !3575, file: !263, discriminator: 3)
!3598 = !DILocation(line: 1532, column: 14, scope: !3597)
!3599 = !DILocation(line: 1532, column: 7, scope: !3597)
!3600 = !DILocation(line: 1532, column: 3, scope: !3601)
!3601 = !DILexicalBlockFile(scope: !3602, file: !263, discriminator: 4)
!3602 = distinct !DILexicalBlock(scope: !3575, file: !263, line: 1532, column: 2)
!3603 = !DILocation(line: 1532, column: 10, scope: !3601)
!3604 = !DILocation(line: 1532, column: 37, scope: !3605)
!3605 = !DILexicalBlockFile(scope: !3602, file: !263, discriminator: 5)
!3606 = !DILocation(line: 1532, column: 45, scope: !3605)
!3607 = !DILocation(line: 1532, column: 28, scope: !3605)
!3608 = !DILocation(line: 1532, column: 27, scope: !3605)
!3609 = !DILocalVariable(name: "__mptr", scope: !3610, file: !263, line: 1532, type: !1130)
!3610 = distinct !DILexicalBlock(scope: !3602, file: !263, line: 1532, column: 52)
!3611 = !DILocation(line: 1532, column: 101, scope: !3610)
!3612 = !DILocation(line: 1532, column: 120, scope: !3613)
!3613 = !DILexicalBlockFile(scope: !3610, file: !263, discriminator: 6)
!3614 = !DILocation(line: 1532, column: 128, scope: !3613)
!3615 = !DILocation(line: 1532, column: 111, scope: !3613)
!3616 = !DILocation(line: 1532, column: 101, scope: !3613)
!3617 = !DILocation(line: 1532, column: 166, scope: !3613)
!3618 = !DILocation(line: 1532, column: 158, scope: !3613)
!3619 = !DILocation(line: 1532, column: 173, scope: !3613)
!3620 = !DILocation(line: 1532, column: 133, scope: !3613)
!3621 = !DILocation(line: 1532, column: 54, scope: !3613)
!3622 = !DILocation(line: 1532, column: 3, scope: !3613)
!3623 = !DILocation(line: 1532, column: 27, scope: !3613)
!3624 = !DILocation(line: 1532, column: 27, scope: !3625)
!3625 = !DILexicalBlockFile(scope: !3602, file: !263, discriminator: 7)
!3626 = !DILocation(line: 1532, column: 27, scope: !3627)
!3627 = !DILexicalBlockFile(scope: !3602, file: !263, discriminator: 8)
!3628 = !DILocation(line: 1532, column: 25, scope: !3627)
!3629 = !DILocation(line: 1532, column: 2, scope: !3630)
!3630 = !DILexicalBlockFile(scope: !3575, file: !263, discriminator: 9)
!3631 = !DILocation(line: 1533, column: 7, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3633, file: !263, line: 1533, column: 7)
!3633 = distinct !DILexicalBlock(scope: !3602, file: !263, line: 1532, column: 28)
!3634 = !DILocation(line: 1533, column: 15, scope: !3632)
!3635 = !DILocation(line: 1533, column: 17, scope: !3632)
!3636 = !DILocation(line: 1533, column: 23, scope: !3632)
!3637 = !DILocation(line: 1533, column: 20, scope: !3632)
!3638 = !DILocation(line: 1533, column: 7, scope: !3633)
!3639 = !DILocation(line: 1534, column: 8, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3641, file: !263, line: 1534, column: 8)
!3641 = distinct !DILexicalBlock(scope: !3632, file: !263, line: 1533, column: 27)
!3642 = !DILocation(line: 1534, column: 16, scope: !3640)
!3643 = !DILocation(line: 1534, column: 23, scope: !3640)
!3644 = !DILocation(line: 1534, column: 8, scope: !3641)
!3645 = !DILocation(line: 1535, column: 19, scope: !3640)
!3646 = !DILocation(line: 1535, column: 27, scope: !3640)
!3647 = !DILocation(line: 1535, column: 34, scope: !3640)
!3648 = !DILocation(line: 1535, column: 5, scope: !3640)
!3649 = !DILocation(line: 1536, column: 18, scope: !3641)
!3650 = !DILocation(line: 1536, column: 4, scope: !3641)
!3651 = !DILocation(line: 1537, column: 4, scope: !3641)
!3652 = !DILocation(line: 1539, column: 2, scope: !3633)
!3653 = !DILocation(line: 1532, column: 16, scope: !3654)
!3654 = !DILexicalBlockFile(scope: !3602, file: !263, discriminator: 10)
!3655 = !DILocation(line: 1532, column: 14, scope: !3654)
!3656 = !DILocation(line: 1532, column: 2, scope: !3654)
!3657 = distinct !{!3657, !3658}
!3658 = !DILocation(line: 1532, column: 2, scope: !3563)
!3659 = !DILocation(line: 1540, column: 1, scope: !3563)
!3660 = distinct !DISubprogram(name: "process_threads", scope: !263, file: !263, line: 1798, type: !1246, isLocal: false, isDefinition: true, scopeLine: 1799, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!3661 = !DILocalVariable(name: "m", arg: 1, scope: !3660, file: !263, line: 1798, type: !65)
!3662 = !DILocation(line: 1798, column: 34, scope: !3660)
!3663 = !DILocalVariable(name: "thread", scope: !3660, file: !263, line: 1800, type: !202)
!3664 = !DILocation(line: 1800, column: 12, scope: !3660)
!3665 = !DILocalVariable(name: "thread_list", scope: !3660, file: !263, line: 1801, type: !1393)
!3666 = !DILocation(line: 1801, column: 15, scope: !3660)
!3667 = !DILocalVariable(name: "thread_type", scope: !3660, file: !263, line: 1802, type: !126)
!3668 = !DILocation(line: 1802, column: 6, scope: !3660)
!3669 = !DILocation(line: 1808, column: 2, scope: !3660)
!3670 = !DILocation(line: 1808, column: 48, scope: !3671)
!3671 = !DILexicalBlockFile(scope: !3660, file: !263, discriminator: 1)
!3672 = !DILocation(line: 1808, column: 24, scope: !3671)
!3673 = !DILocation(line: 1808, column: 22, scope: !3671)
!3674 = !DILocation(line: 1808, column: 2, scope: !3671)
!3675 = !DILocation(line: 1824, column: 29, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3660, file: !263, line: 1808, column: 53)
!3677 = !DILocation(line: 1824, column: 12, scope: !3676)
!3678 = !DILocation(line: 1824, column: 10, scope: !3676)
!3679 = !DILocation(line: 1826, column: 8, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3676, file: !263, line: 1826, column: 7)
!3681 = !DILocation(line: 1826, column: 22, scope: !3680)
!3682 = !DILocation(line: 1828, column: 2, scope: !3680)
!3683 = !DILocation(line: 1828, column: 10, scope: !3680)
!3684 = !DILocation(line: 1828, column: 15, scope: !3680)
!3685 = !DILocation(line: 1828, column: 34, scope: !3680)
!3686 = !DILocation(line: 1828, column: 37, scope: !3687)
!3687 = !DILexicalBlockFile(scope: !3680, file: !263, discriminator: 1)
!3688 = !DILocation(line: 1828, column: 45, scope: !3687)
!3689 = !DILocation(line: 1828, column: 51, scope: !3687)
!3690 = !DILocation(line: 1828, column: 58, scope: !3687)
!3691 = !DILocation(line: 1828, column: 76, scope: !3687)
!3692 = !DILocation(line: 1829, column: 7, scope: !3680)
!3693 = !DILocation(line: 1829, column: 15, scope: !3680)
!3694 = !DILocation(line: 1829, column: 20, scope: !3680)
!3695 = !DILocation(line: 1829, column: 36, scope: !3680)
!3696 = !DILocation(line: 1830, column: 7, scope: !3680)
!3697 = !DILocation(line: 1830, column: 15, scope: !3680)
!3698 = !DILocation(line: 1830, column: 20, scope: !3680)
!3699 = !DILocation(line: 1830, column: 44, scope: !3680)
!3700 = !DILocation(line: 1831, column: 7, scope: !3680)
!3701 = !DILocation(line: 1831, column: 15, scope: !3680)
!3702 = !DILocation(line: 1831, column: 20, scope: !3680)
!3703 = !DILocation(line: 1831, column: 45, scope: !3680)
!3704 = !DILocation(line: 1832, column: 7, scope: !3680)
!3705 = !DILocation(line: 1832, column: 15, scope: !3680)
!3706 = !DILocation(line: 1832, column: 20, scope: !3680)
!3707 = !DILocation(line: 1826, column: 7, scope: !3708)
!3708 = !DILexicalBlockFile(scope: !3676, file: !263, discriminator: 1)
!3709 = !DILocation(line: 1833, column: 8, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3711, file: !263, line: 1833, column: 8)
!3711 = distinct !DILexicalBlock(scope: !3680, file: !263, line: 1832, column: 41)
!3712 = !DILocation(line: 1833, column: 16, scope: !3710)
!3713 = !DILocation(line: 1833, column: 8, scope: !3711)
!3714 = !DILocation(line: 1834, column: 17, scope: !3710)
!3715 = !DILocation(line: 1834, column: 5, scope: !3710)
!3716 = !DILocation(line: 1836, column: 8, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3711, file: !263, line: 1836, column: 8)
!3718 = !DILocation(line: 1836, column: 16, scope: !3717)
!3719 = !DILocation(line: 1836, column: 21, scope: !3717)
!3720 = !DILocation(line: 1836, column: 8, scope: !3711)
!3721 = !DILocation(line: 1837, column: 19, scope: !3717)
!3722 = !DILocation(line: 1837, column: 5, scope: !3717)
!3723 = !DILocation(line: 1838, column: 3, scope: !3711)
!3724 = !DILocation(line: 1840, column: 23, scope: !3676)
!3725 = !DILocation(line: 1840, column: 31, scope: !3676)
!3726 = !DILocation(line: 1840, column: 36, scope: !3676)
!3727 = !DILocation(line: 1840, column: 22, scope: !3676)
!3728 = !DILocation(line: 1840, column: 58, scope: !3708)
!3729 = !DILocation(line: 1840, column: 66, scope: !3708)
!3730 = !DILocation(line: 1840, column: 22, scope: !3708)
!3731 = !DILocation(line: 1840, column: 22, scope: !3732)
!3732 = !DILexicalBlockFile(scope: !3676, file: !263, discriminator: 2)
!3733 = !DILocation(line: 1840, column: 22, scope: !3734)
!3734 = !DILexicalBlockFile(scope: !3676, file: !263, discriminator: 3)
!3735 = !DILocation(line: 1840, column: 3, scope: !3734)
!3736 = !DILocation(line: 1840, column: 6, scope: !3734)
!3737 = !DILocation(line: 1840, column: 20, scope: !3734)
!3738 = !DILocation(line: 1841, column: 17, scope: !3676)
!3739 = !DILocation(line: 1841, column: 25, scope: !3676)
!3740 = !DILocation(line: 1841, column: 15, scope: !3676)
!3741 = !DILocation(line: 1842, column: 20, scope: !3676)
!3742 = !DILocation(line: 1842, column: 28, scope: !3676)
!3743 = !DILocation(line: 1842, column: 3, scope: !3676)
!3744 = !DILocation(line: 1846, column: 7, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3676, file: !263, line: 1846, column: 7)
!3746 = !DILocation(line: 1846, column: 21, scope: !3745)
!3747 = !DILocation(line: 1846, column: 25, scope: !3748)
!3748 = !DILexicalBlockFile(scope: !3745, file: !263, discriminator: 1)
!3749 = !DILocation(line: 1846, column: 28, scope: !3748)
!3750 = !DILocation(line: 1846, column: 51, scope: !3748)
!3751 = !DILocation(line: 1846, column: 55, scope: !3752)
!3752 = !DILexicalBlockFile(scope: !3745, file: !263, discriminator: 2)
!3753 = !DILocation(line: 1846, column: 58, scope: !3752)
!3754 = !DILocation(line: 1846, column: 64, scope: !3752)
!3755 = !DILocation(line: 1846, column: 7, scope: !3752)
!3756 = !DILocation(line: 1847, column: 4, scope: !3745)
!3757 = !DILocation(line: 1850, column: 7, scope: !3758)
!3758 = distinct !DILexicalBlock(scope: !3676, file: !263, line: 1850, column: 7)
!3759 = !DILocation(line: 1850, column: 19, scope: !3758)
!3760 = !DILocation(line: 1850, column: 7, scope: !3676)
!3761 = !DILocation(line: 1851, column: 4, scope: !3758)
!3762 = !DILocation(line: 1808, column: 2, scope: !3763)
!3763 = !DILexicalBlockFile(scope: !3660, file: !263, discriminator: 2)
!3764 = distinct !{!3764, !3669}
!3765 = !DILocation(line: 1853, column: 1, scope: !3660)
!3766 = distinct !DISubprogram(name: "thread_fetch_next_queue", scope: !263, file: !263, line: 1654, type: !3767, isLocal: true, isDefinition: true, scopeLine: 1655, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!1393, !65}
!3769 = !DILocalVariable(name: "m", arg: 1, scope: !3766, file: !263, line: 1654, type: !65)
!3770 = !DILocation(line: 1654, column: 42, scope: !3766)
!3771 = !DILocalVariable(name: "sav_errno", scope: !3766, file: !263, line: 1656, type: !126)
!3772 = !DILocation(line: 1656, column: 6, scope: !3766)
!3773 = !DILocalVariable(name: "last_epoll_errno", scope: !3766, file: !263, line: 1657, type: !126)
!3774 = !DILocation(line: 1657, column: 6, scope: !3766)
!3775 = !DILocalVariable(name: "ret", scope: !3766, file: !263, line: 1658, type: !126)
!3776 = !DILocation(line: 1658, column: 6, scope: !3766)
!3777 = !DILocalVariable(name: "i", scope: !3766, file: !263, line: 1659, type: !126)
!3778 = !DILocation(line: 1659, column: 6, scope: !3766)
!3779 = !DILocation(line: 1664, column: 6, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3766, file: !263, line: 1664, column: 6)
!3781 = !DILocation(line: 1664, column: 9, scope: !3780)
!3782 = !DILocation(line: 1664, column: 15, scope: !3780)
!3783 = !DILocation(line: 1664, column: 24, scope: !3780)
!3784 = !DILocation(line: 1664, column: 27, scope: !3780)
!3785 = !DILocation(line: 1664, column: 20, scope: !3780)
!3786 = !DILocation(line: 1664, column: 6, scope: !3766)
!3787 = !DILocation(line: 1665, column: 11, scope: !3780)
!3788 = !DILocation(line: 1665, column: 14, scope: !3780)
!3789 = !DILocation(line: 1665, column: 3, scope: !3780)
!3790 = !DILocation(line: 1668, column: 6, scope: !3791)
!3791 = distinct !DILexicalBlock(scope: !3766, file: !263, line: 1668, column: 6)
!3792 = !DILocation(line: 1668, column: 9, scope: !3791)
!3793 = !DILocation(line: 1668, column: 15, scope: !3791)
!3794 = !DILocation(line: 1668, column: 24, scope: !3791)
!3795 = !DILocation(line: 1668, column: 27, scope: !3791)
!3796 = !DILocation(line: 1668, column: 20, scope: !3791)
!3797 = !DILocation(line: 1668, column: 6, scope: !3766)
!3798 = !DILocation(line: 1669, column: 11, scope: !3791)
!3799 = !DILocation(line: 1669, column: 14, scope: !3791)
!3800 = !DILocation(line: 1669, column: 3, scope: !3791)
!3801 = !DILocation(line: 1671, column: 2, scope: !3766)
!3802 = distinct !{!3802, !3801}
!3803 = !DILocation(line: 1678, column: 20, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3766, file: !263, line: 1671, column: 5)
!3805 = !DILocation(line: 1678, column: 3, scope: !3804)
!3806 = !DILocation(line: 1691, column: 20, scope: !3804)
!3807 = !DILocation(line: 1691, column: 23, scope: !3804)
!3808 = !DILocation(line: 1691, column: 33, scope: !3804)
!3809 = !DILocation(line: 1691, column: 36, scope: !3804)
!3810 = !DILocation(line: 1691, column: 50, scope: !3804)
!3811 = !DILocation(line: 1691, column: 53, scope: !3804)
!3812 = !DILocation(line: 1691, column: 9, scope: !3804)
!3813 = !DILocation(line: 1691, column: 7, scope: !3804)
!3814 = !DILocation(line: 1692, column: 16, scope: !3804)
!3815 = !DILocation(line: 1692, column: 15, scope: !3804)
!3816 = !DILocation(line: 1692, column: 13, scope: !3804)
!3817 = !DILocation(line: 1703, column: 7, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3804, file: !263, line: 1703, column: 7)
!3819 = !DILocation(line: 1703, column: 11, scope: !3818)
!3820 = !DILocation(line: 1703, column: 7, scope: !3804)
!3821 = !DILocation(line: 1704, column: 8, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3823, file: !263, line: 1704, column: 8)
!3823 = distinct !DILexicalBlock(scope: !3818, file: !263, line: 1703, column: 16)
!3824 = !DILocation(line: 1704, column: 18, scope: !3822)
!3825 = !DILocation(line: 1704, column: 8, scope: !3823)
!3826 = !DILocation(line: 1705, column: 5, scope: !3822)
!3827 = !DILocation(line: 1708, column: 8, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !3823, file: !263, line: 1708, column: 8)
!3829 = !DILocation(line: 1708, column: 21, scope: !3828)
!3830 = !DILocation(line: 1708, column: 18, scope: !3828)
!3831 = !DILocation(line: 1708, column: 8, scope: !3823)
!3832 = !DILocation(line: 1710, column: 70, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3828, file: !263, line: 1708, column: 39)
!3834 = !DILocation(line: 1710, column: 61, scope: !3833)
!3835 = !DILocation(line: 1710, column: 5, scope: !3836)
!3836 = !DILexicalBlockFile(scope: !3833, file: !263, discriminator: 1)
!3837 = !DILocation(line: 1711, column: 24, scope: !3833)
!3838 = !DILocation(line: 1711, column: 22, scope: !3833)
!3839 = !DILocation(line: 1712, column: 4, scope: !3833)
!3840 = !DILocation(line: 1715, column: 8, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3823, file: !263, line: 1715, column: 8)
!3842 = !DILocation(line: 1715, column: 18, scope: !3841)
!3843 = !DILocation(line: 1715, column: 26, scope: !3841)
!3844 = !DILocation(line: 1715, column: 29, scope: !3845)
!3845 = !DILexicalBlockFile(scope: !3841, file: !263, discriminator: 1)
!3846 = !DILocation(line: 1715, column: 39, scope: !3845)
!3847 = !DILocation(line: 1715, column: 49, scope: !3845)
!3848 = !DILocation(line: 1715, column: 52, scope: !3849)
!3849 = !DILexicalBlockFile(scope: !3841, file: !263, discriminator: 2)
!3850 = !DILocation(line: 1715, column: 62, scope: !3849)
!3851 = !DILocation(line: 1715, column: 8, scope: !3849)
!3852 = !DILocation(line: 1716, column: 5, scope: !3841)
!3853 = !DILocation(line: 1718, column: 4, scope: !3823)
!3854 = !DILocation(line: 1722, column: 10, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3804, file: !263, line: 1722, column: 3)
!3856 = !DILocation(line: 1722, column: 8, scope: !3855)
!3857 = !DILocation(line: 1722, column: 15, scope: !3858)
!3858 = !DILexicalBlockFile(scope: !3859, file: !263, discriminator: 1)
!3859 = distinct !DILexicalBlock(scope: !3855, file: !263, line: 1722, column: 3)
!3860 = !DILocation(line: 1722, column: 19, scope: !3858)
!3861 = !DILocation(line: 1722, column: 17, scope: !3858)
!3862 = !DILocation(line: 1722, column: 3, scope: !3858)
!3863 = !DILocalVariable(name: "ep_ev", scope: !3864, file: !263, line: 1723, type: !181)
!3864 = distinct !DILexicalBlock(scope: !3859, file: !263, line: 1722, column: 29)
!3865 = !DILocation(line: 1723, column: 24, scope: !3864)
!3866 = !DILocalVariable(name: "ev", scope: !3864, file: !263, line: 1724, type: !197)
!3867 = !DILocation(line: 1724, column: 20, scope: !3864)
!3868 = !DILocation(line: 1726, column: 29, scope: !3864)
!3869 = !DILocation(line: 1726, column: 13, scope: !3864)
!3870 = !DILocation(line: 1726, column: 16, scope: !3864)
!3871 = !DILocation(line: 1726, column: 10, scope: !3864)
!3872 = !DILocation(line: 1727, column: 9, scope: !3864)
!3873 = !DILocation(line: 1727, column: 16, scope: !3864)
!3874 = !DILocation(line: 1727, column: 21, scope: !3864)
!3875 = !DILocation(line: 1727, column: 7, scope: !3864)
!3876 = !DILocation(line: 1731, column: 8, scope: !3877)
!3877 = distinct !DILexicalBlock(scope: !3864, file: !263, line: 1731, column: 8)
!3878 = !DILocation(line: 1731, column: 15, scope: !3877)
!3879 = !DILocation(line: 1731, column: 22, scope: !3877)
!3880 = !DILocation(line: 1731, column: 8, scope: !3864)
!3881 = !DILocation(line: 1732, column: 9, scope: !3882)
!3882 = distinct !DILexicalBlock(scope: !3883, file: !263, line: 1732, column: 9)
!3883 = distinct !DILexicalBlock(scope: !3877, file: !263, line: 1731, column: 59)
!3884 = !DILocation(line: 1732, column: 13, scope: !3882)
!3885 = !DILocation(line: 1732, column: 9, scope: !3883)
!3886 = !DILocation(line: 1733, column: 24, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !3882, file: !263, line: 1732, column: 19)
!3888 = !DILocation(line: 1733, column: 28, scope: !3887)
!3889 = !DILocation(line: 1733, column: 31, scope: !3887)
!3890 = !DILocation(line: 1733, column: 37, scope: !3887)
!3891 = !DILocation(line: 1733, column: 41, scope: !3887)
!3892 = !DILocation(line: 1733, column: 6, scope: !3887)
!3893 = !DILocation(line: 1734, column: 6, scope: !3887)
!3894 = !DILocation(line: 1734, column: 10, scope: !3887)
!3895 = !DILocation(line: 1734, column: 15, scope: !3887)
!3896 = !DILocation(line: 1735, column: 5, scope: !3887)
!3897 = !DILocation(line: 1737, column: 9, scope: !3898)
!3898 = distinct !DILexicalBlock(scope: !3883, file: !263, line: 1737, column: 9)
!3899 = !DILocation(line: 1737, column: 13, scope: !3898)
!3900 = !DILocation(line: 1737, column: 9, scope: !3883)
!3901 = !DILocation(line: 1738, column: 24, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3898, file: !263, line: 1737, column: 20)
!3903 = !DILocation(line: 1738, column: 28, scope: !3902)
!3904 = !DILocation(line: 1738, column: 31, scope: !3902)
!3905 = !DILocation(line: 1738, column: 38, scope: !3902)
!3906 = !DILocation(line: 1738, column: 42, scope: !3902)
!3907 = !DILocation(line: 1738, column: 6, scope: !3902)
!3908 = !DILocation(line: 1739, column: 6, scope: !3902)
!3909 = !DILocation(line: 1739, column: 10, scope: !3902)
!3910 = !DILocation(line: 1739, column: 16, scope: !3902)
!3911 = !DILocation(line: 1740, column: 5, scope: !3902)
!3912 = !DILocation(line: 1742, column: 5, scope: !3883)
!3913 = !DILocation(line: 1746, column: 8, scope: !3914)
!3914 = distinct !DILexicalBlock(scope: !3864, file: !263, line: 1746, column: 8)
!3915 = !DILocation(line: 1746, column: 15, scope: !3914)
!3916 = !DILocation(line: 1746, column: 22, scope: !3914)
!3917 = !DILocation(line: 1746, column: 8, scope: !3864)
!3918 = !DILocation(line: 1747, column: 10, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3920, file: !263, line: 1747, column: 9)
!3920 = distinct !DILexicalBlock(scope: !3914, file: !263, line: 1746, column: 32)
!3921 = !DILocation(line: 1747, column: 14, scope: !3919)
!3922 = !DILocation(line: 1747, column: 9, scope: !3920)
!3923 = !DILocation(line: 1749, column: 15, scope: !3924)
!3924 = distinct !DILexicalBlock(scope: !3919, file: !263, line: 1747, column: 20)
!3925 = !DILocation(line: 1749, column: 19, scope: !3924)
!3926 = !DILocation(line: 1749, column: 23, scope: !3924)
!3927 = !DILocation(line: 1749, column: 30, scope: !3924)
!3928 = !DILocation(line: 1748, column: 6, scope: !3924)
!3929 = !DILocation(line: 1751, column: 5, scope: !3924)
!3930 = !DILocation(line: 1752, column: 23, scope: !3920)
!3931 = !DILocation(line: 1752, column: 27, scope: !3920)
!3932 = !DILocation(line: 1752, column: 30, scope: !3920)
!3933 = !DILocation(line: 1752, column: 36, scope: !3920)
!3934 = !DILocation(line: 1752, column: 40, scope: !3920)
!3935 = !DILocation(line: 1752, column: 5, scope: !3920)
!3936 = !DILocation(line: 1753, column: 5, scope: !3920)
!3937 = !DILocation(line: 1753, column: 9, scope: !3920)
!3938 = !DILocation(line: 1753, column: 14, scope: !3920)
!3939 = !DILocation(line: 1754, column: 4, scope: !3920)
!3940 = !DILocation(line: 1757, column: 8, scope: !3941)
!3941 = distinct !DILexicalBlock(scope: !3864, file: !263, line: 1757, column: 8)
!3942 = !DILocation(line: 1757, column: 15, scope: !3941)
!3943 = !DILocation(line: 1757, column: 22, scope: !3941)
!3944 = !DILocation(line: 1757, column: 8, scope: !3864)
!3945 = !DILocation(line: 1758, column: 10, scope: !3946)
!3946 = distinct !DILexicalBlock(scope: !3947, file: !263, line: 1758, column: 9)
!3947 = distinct !DILexicalBlock(scope: !3941, file: !263, line: 1757, column: 33)
!3948 = !DILocation(line: 1758, column: 14, scope: !3946)
!3949 = !DILocation(line: 1758, column: 9, scope: !3947)
!3950 = !DILocation(line: 1760, column: 15, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3946, file: !263, line: 1758, column: 21)
!3952 = !DILocation(line: 1760, column: 19, scope: !3951)
!3953 = !DILocation(line: 1760, column: 23, scope: !3951)
!3954 = !DILocation(line: 1760, column: 30, scope: !3951)
!3955 = !DILocation(line: 1759, column: 6, scope: !3951)
!3956 = !DILocation(line: 1762, column: 5, scope: !3951)
!3957 = !DILocation(line: 1763, column: 23, scope: !3947)
!3958 = !DILocation(line: 1763, column: 27, scope: !3947)
!3959 = !DILocation(line: 1763, column: 30, scope: !3947)
!3960 = !DILocation(line: 1763, column: 37, scope: !3947)
!3961 = !DILocation(line: 1763, column: 41, scope: !3947)
!3962 = !DILocation(line: 1763, column: 5, scope: !3947)
!3963 = !DILocation(line: 1764, column: 5, scope: !3947)
!3964 = !DILocation(line: 1764, column: 9, scope: !3947)
!3965 = !DILocation(line: 1764, column: 15, scope: !3947)
!3966 = !DILocation(line: 1765, column: 4, scope: !3947)
!3967 = !DILocation(line: 1767, column: 8, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !3864, file: !263, line: 1767, column: 8)
!3969 = !DILocation(line: 1767, column: 15, scope: !3968)
!3970 = !DILocation(line: 1767, column: 22, scope: !3968)
!3971 = !DILocation(line: 1767, column: 8, scope: !3864)
!3972 = !DILocation(line: 1768, column: 57, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3968, file: !263, line: 1767, column: 33)
!3974 = !DILocation(line: 1768, column: 61, scope: !3973)
!3975 = !DILocation(line: 1768, column: 5, scope: !3973)
!3976 = !DILocation(line: 1769, column: 4, scope: !3973)
!3977 = !DILocation(line: 1771, column: 8, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3864, file: !263, line: 1771, column: 8)
!3979 = !DILocation(line: 1771, column: 15, scope: !3978)
!3980 = !DILocation(line: 1771, column: 22, scope: !3978)
!3981 = !DILocation(line: 1771, column: 8, scope: !3864)
!3982 = !DILocation(line: 1772, column: 57, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !3978, file: !263, line: 1771, column: 33)
!3984 = !DILocation(line: 1772, column: 61, scope: !3983)
!3985 = !DILocation(line: 1772, column: 5, scope: !3983)
!3986 = !DILocation(line: 1773, column: 4, scope: !3983)
!3987 = !DILocation(line: 1774, column: 3, scope: !3864)
!3988 = !DILocation(line: 1722, column: 25, scope: !3989)
!3989 = !DILexicalBlockFile(scope: !3859, file: !263, discriminator: 2)
!3990 = !DILocation(line: 1722, column: 3, scope: !3989)
!3991 = distinct !{!3991, !3992}
!3992 = !DILocation(line: 1722, column: 3, scope: !3804)
!3993 = !DILocation(line: 1777, column: 3, scope: !3804)
!3994 = !DILocation(line: 1780, column: 7, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3804, file: !263, line: 1780, column: 7)
!3996 = !DILocation(line: 1780, column: 10, scope: !3995)
!3997 = !DILocation(line: 1780, column: 16, scope: !3995)
!3998 = !DILocation(line: 1780, column: 25, scope: !3995)
!3999 = !DILocation(line: 1780, column: 28, scope: !3995)
!4000 = !DILocation(line: 1780, column: 21, scope: !3995)
!4001 = !DILocation(line: 1780, column: 7, scope: !3804)
!4002 = !DILocation(line: 1781, column: 12, scope: !3995)
!4003 = !DILocation(line: 1781, column: 15, scope: !3995)
!4004 = !DILocation(line: 1781, column: 4, scope: !3995)
!4005 = !DILocation(line: 1782, column: 2, scope: !3804)
!4006 = !DILocation(line: 1782, column: 2, scope: !4007)
!4007 = !DILexicalBlockFile(scope: !3804, file: !263, discriminator: 1)
!4008 = !DILocation(line: 1783, column: 1, scope: !3766)
!4009 = distinct !DISubprogram(name: "thread_trim_head", scope: !263, file: !263, line: 1025, type: !4010, isLocal: true, isDefinition: true, scopeLine: 1026, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!4010 = !DISubroutineType(types: !4011)
!4011 = !{!202, !1393}
!4012 = !DILocalVariable(name: "l", arg: 1, scope: !4009, file: !263, line: 1025, type: !1393)
!4013 = !DILocation(line: 1025, column: 31, scope: !4009)
!4014 = !DILocalVariable(name: "thread", scope: !4009, file: !263, line: 1027, type: !202)
!4015 = !DILocation(line: 1027, column: 12, scope: !4009)
!4016 = !DILocation(line: 1029, column: 17, scope: !4017)
!4017 = distinct !DILexicalBlock(scope: !4009, file: !263, line: 1029, column: 6)
!4018 = !DILocation(line: 1029, column: 6, scope: !4017)
!4019 = !DILocation(line: 1029, column: 6, scope: !4009)
!4020 = !DILocation(line: 1030, column: 3, scope: !4017)
!4021 = !DILocalVariable(name: "__mptr", scope: !4022, file: !263, line: 1032, type: !1405)
!4022 = distinct !DILexicalBlock(scope: !4009, file: !263, line: 1032, column: 12)
!4023 = !DILocation(line: 1032, column: 53, scope: !4022)
!4024 = !DILocation(line: 1032, column: 64, scope: !4022)
!4025 = !DILocation(line: 1032, column: 68, scope: !4022)
!4026 = !DILocation(line: 1032, column: 97, scope: !4022)
!4027 = !DILocation(line: 1032, column: 89, scope: !4022)
!4028 = !DILocation(line: 1032, column: 104, scope: !4022)
!4029 = !DILocation(line: 1032, column: 75, scope: !4022)
!4030 = !DILocation(line: 1032, column: 14, scope: !4022)
!4031 = !DILocation(line: 1032, column: 12, scope: !4022)
!4032 = !DILocation(line: 1032, column: 9, scope: !4009)
!4033 = !DILocation(line: 1033, column: 17, scope: !4009)
!4034 = !DILocation(line: 1033, column: 25, scope: !4009)
!4035 = !DILocation(line: 1033, column: 2, scope: !4009)
!4036 = !DILocation(line: 1034, column: 9, scope: !4009)
!4037 = !DILocation(line: 1034, column: 2, scope: !4009)
!4038 = !DILocation(line: 1035, column: 1, scope: !4009)
!4039 = distinct !DISubprogram(name: "thread_call", scope: !263, file: !263, line: 1787, type: !278, isLocal: true, isDefinition: true, scopeLine: 1788, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!4040 = !DILocalVariable(name: "thread", arg: 1, scope: !4039, file: !263, line: 1787, type: !202)
!4041 = !DILocation(line: 1787, column: 24, scope: !4039)
!4042 = !DILocation(line: 1794, column: 4, scope: !4039)
!4043 = !DILocation(line: 1794, column: 12, scope: !4039)
!4044 = !DILocation(line: 1794, column: 19, scope: !4039)
!4045 = !DILocation(line: 1794, column: 2, scope: !4039)
!4046 = !DILocation(line: 1795, column: 1, scope: !4039)
!4047 = distinct !DISubprogram(name: "thread_child_handler", scope: !263, file: !263, line: 1902, type: !4048, isLocal: false, isDefinition: true, scopeLine: 1903, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!4048 = !DISubroutineType(types: !4049)
!4049 = !{null, !63, !126}
!4050 = !DILocalVariable(name: "v", arg: 1, scope: !4047, file: !263, line: 1902, type: !63)
!4051 = !DILocation(line: 1902, column: 52, scope: !4047)
!4052 = !DILocalVariable(name: "unused", arg: 2, scope: !4047, file: !263, line: 1902, type: !126)
!4053 = !DILocation(line: 1902, column: 83, scope: !4047)
!4054 = !DILocalVariable(name: "pid", scope: !4047, file: !263, line: 1904, type: !236)
!4055 = !DILocation(line: 1904, column: 8, scope: !4047)
!4056 = !DILocalVariable(name: "status", scope: !4047, file: !263, line: 1905, type: !126)
!4057 = !DILocation(line: 1905, column: 6, scope: !4047)
!4058 = !DILocation(line: 1907, column: 2, scope: !4047)
!4059 = !DILocation(line: 1907, column: 16, scope: !4060)
!4060 = !DILexicalBlockFile(scope: !4047, file: !263, discriminator: 1)
!4061 = !DILocation(line: 1907, column: 14, scope: !4060)
!4062 = !DILocation(line: 1907, column: 2, scope: !4060)
!4063 = !DILocation(line: 1908, column: 7, scope: !4064)
!4064 = distinct !DILexicalBlock(scope: !4065, file: !263, line: 1908, column: 7)
!4065 = distinct !DILexicalBlock(scope: !4047, file: !263, line: 1907, column: 47)
!4066 = !DILocation(line: 1908, column: 11, scope: !4064)
!4067 = !DILocation(line: 1908, column: 7, scope: !4065)
!4068 = !DILocation(line: 1909, column: 9, scope: !4069)
!4069 = distinct !DILexicalBlock(scope: !4070, file: !263, line: 1909, column: 7)
!4070 = distinct !DILexicalBlock(scope: !4064, file: !263, line: 1908, column: 18)
!4071 = !DILocation(line: 1909, column: 8, scope: !4069)
!4072 = !DILocation(line: 1909, column: 13, scope: !4069)
!4073 = !DILocation(line: 1909, column: 7, scope: !4070)
!4074 = !DILocation(line: 1910, column: 5, scope: !4069)
!4075 = !DILocation(line: 1913, column: 3, scope: !4070)
!4076 = !DILocation(line: 1914, column: 29, scope: !4065)
!4077 = !DILocation(line: 1914, column: 34, scope: !4065)
!4078 = !DILocation(line: 1914, column: 3, scope: !4065)
!4079 = !DILocation(line: 1907, column: 2, scope: !4080)
!4080 = !DILexicalBlockFile(scope: !4047, file: !263, discriminator: 2)
!4081 = distinct !{!4081, !4058}
!4082 = !DILocation(line: 1916, column: 1, scope: !4047)
!4083 = distinct !DISubprogram(name: "process_child_termination", scope: !263, file: !263, line: 1856, type: !4084, isLocal: true, isDefinition: true, scopeLine: 1857, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{null, !236, !126}
!4086 = !DILocalVariable(name: "pid", arg: 1, scope: !4083, file: !263, line: 1856, type: !236)
!4087 = !DILocation(line: 1856, column: 33, scope: !4083)
!4088 = !DILocalVariable(name: "status", arg: 2, scope: !4083, file: !263, line: 1856, type: !126)
!4089 = !DILocation(line: 1856, column: 42, scope: !4083)
!4090 = !DILocalVariable(name: "m", scope: !4083, file: !263, line: 1858, type: !65)
!4091 = !DILocation(line: 1858, column: 20, scope: !4083)
!4092 = !DILocation(line: 1858, column: 24, scope: !4083)
!4093 = !DILocalVariable(name: "thread", scope: !4083, file: !263, line: 1859, type: !202)
!4094 = !DILocation(line: 1859, column: 12, scope: !4083)
!4095 = !DILocalVariable(name: "permanent_vrrp_checker_error", scope: !4083, file: !263, line: 1860, type: !260)
!4096 = !DILocation(line: 1860, column: 6, scope: !4083)
!4097 = !DILocation(line: 1863, column: 6, scope: !4098)
!4098 = distinct !DILexicalBlock(scope: !4083, file: !263, line: 1863, column: 6)
!4099 = !DILocation(line: 1863, column: 16, scope: !4098)
!4100 = !DILocation(line: 1863, column: 6, scope: !4083)
!4101 = !DILocation(line: 1864, column: 54, scope: !4098)
!4102 = !DILocation(line: 1864, column: 62, scope: !4098)
!4103 = !DILocation(line: 1864, column: 34, scope: !4098)
!4104 = !DILocation(line: 1864, column: 32, scope: !4098)
!4105 = !DILocation(line: 1864, column: 3, scope: !4098)
!4106 = !DILocation(line: 1867, column: 6, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4083, file: !263, line: 1867, column: 6)
!4108 = !DILocation(line: 1867, column: 6, scope: !4083)
!4109 = !DILocation(line: 1868, column: 12, scope: !4107)
!4110 = !DILocation(line: 1868, column: 25, scope: !4107)
!4111 = !DILocation(line: 1868, column: 10, scope: !4107)
!4112 = !DILocation(line: 1868, column: 3, scope: !4107)
!4113 = !DILocation(line: 1870, column: 28, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4115, file: !263, line: 1870, column: 3)
!4115 = distinct !DILexicalBlock(scope: !4107, file: !263, line: 1869, column: 7)
!4116 = !DILocation(line: 1870, column: 31, scope: !4114)
!4117 = !DILocation(line: 1870, column: 18, scope: !4114)
!4118 = !DILocation(line: 1870, column: 17, scope: !4114)
!4119 = !DILocalVariable(name: "__mptr", scope: !4120, file: !263, line: 1870, type: !1130)
!4120 = distinct !DILexicalBlock(scope: !4114, file: !263, line: 1870, column: 42)
!4121 = !DILocation(line: 1870, column: 87, scope: !4120)
!4122 = !DILocation(line: 1870, column: 107, scope: !4123)
!4123 = !DILexicalBlockFile(scope: !4120, file: !263, discriminator: 1)
!4124 = !DILocation(line: 1870, column: 110, scope: !4123)
!4125 = !DILocation(line: 1870, column: 97, scope: !4123)
!4126 = !DILocation(line: 1870, column: 87, scope: !4123)
!4127 = !DILocation(line: 1870, column: 148, scope: !4123)
!4128 = !DILocation(line: 1870, column: 140, scope: !4123)
!4129 = !DILocation(line: 1870, column: 155, scope: !4123)
!4130 = !DILocation(line: 1870, column: 119, scope: !4123)
!4131 = !DILocation(line: 1870, column: 44, scope: !4123)
!4132 = !DILocation(line: 1870, column: 4, scope: !4123)
!4133 = !DILocation(line: 1870, column: 17, scope: !4123)
!4134 = !DILocation(line: 1870, column: 17, scope: !4135)
!4135 = !DILexicalBlockFile(scope: !4114, file: !263, discriminator: 2)
!4136 = !DILocation(line: 1870, column: 17, scope: !4137)
!4137 = !DILexicalBlockFile(scope: !4114, file: !263, discriminator: 3)
!4138 = !DILocation(line: 1870, column: 15, scope: !4137)
!4139 = !DILocation(line: 1870, column: 8, scope: !4137)
!4140 = !DILocation(line: 1870, column: 4, scope: !4141)
!4141 = !DILexicalBlockFile(scope: !4142, file: !263, discriminator: 4)
!4142 = distinct !DILexicalBlock(scope: !4114, file: !263, line: 1870, column: 3)
!4143 = !DILocation(line: 1870, column: 3, scope: !4141)
!4144 = !DILocation(line: 1871, column: 8, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4146, file: !263, line: 1871, column: 8)
!4146 = distinct !DILexicalBlock(scope: !4142, file: !263, line: 1870, column: 4)
!4147 = !DILocation(line: 1871, column: 15, scope: !4145)
!4148 = !DILocation(line: 1871, column: 23, scope: !4145)
!4149 = !DILocation(line: 1871, column: 25, scope: !4145)
!4150 = !DILocation(line: 1871, column: 27, scope: !4145)
!4151 = !DILocation(line: 1871, column: 12, scope: !4145)
!4152 = !DILocation(line: 1871, column: 8, scope: !4146)
!4153 = !DILocation(line: 1872, column: 5, scope: !4145)
!4154 = !DILocation(line: 1873, column: 3, scope: !4146)
!4155 = !DILocation(line: 1870, column: 31, scope: !4156)
!4156 = !DILexicalBlockFile(scope: !4142, file: !263, discriminator: 5)
!4157 = !DILocation(line: 1870, column: 39, scope: !4156)
!4158 = !DILocation(line: 1870, column: 22, scope: !4156)
!4159 = !DILocation(line: 1870, column: 21, scope: !4156)
!4160 = !DILocalVariable(name: "__mptr", scope: !4161, file: !263, line: 1870, type: !1130)
!4161 = distinct !DILexicalBlock(scope: !4142, file: !263, line: 1870, column: 46)
!4162 = !DILocation(line: 1870, column: 91, scope: !4161)
!4163 = !DILocation(line: 1870, column: 110, scope: !4164)
!4164 = !DILexicalBlockFile(scope: !4161, file: !263, discriminator: 6)
!4165 = !DILocation(line: 1870, column: 118, scope: !4164)
!4166 = !DILocation(line: 1870, column: 101, scope: !4164)
!4167 = !DILocation(line: 1870, column: 91, scope: !4164)
!4168 = !DILocation(line: 1870, column: 152, scope: !4164)
!4169 = !DILocation(line: 1870, column: 144, scope: !4164)
!4170 = !DILocation(line: 1870, column: 159, scope: !4164)
!4171 = !DILocation(line: 1870, column: 123, scope: !4164)
!4172 = !DILocation(line: 1870, column: 48, scope: !4164)
!4173 = !DILocation(line: 1870, column: 4, scope: !4164)
!4174 = !DILocation(line: 1870, column: 21, scope: !4164)
!4175 = !DILocation(line: 1870, column: 21, scope: !4176)
!4176 = !DILexicalBlockFile(scope: !4142, file: !263, discriminator: 7)
!4177 = !DILocation(line: 1870, column: 21, scope: !4178)
!4178 = !DILexicalBlockFile(scope: !4142, file: !263, discriminator: 8)
!4179 = !DILocation(line: 1870, column: 19, scope: !4178)
!4180 = !DILocation(line: 1870, column: 3, scope: !4178)
!4181 = distinct !{!4181, !4182}
!4182 = !DILocation(line: 1870, column: 3, scope: !4115)
!4183 = !DILocation(line: 1881, column: 7, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4083, file: !263, line: 1881, column: 6)
!4185 = !DILocation(line: 1881, column: 6, scope: !4083)
!4186 = !DILocation(line: 1882, column: 3, scope: !4184)
!4187 = !DILocation(line: 1884, column: 23, scope: !4083)
!4188 = !DILocation(line: 1884, column: 2, scope: !4083)
!4189 = !DILocation(line: 1884, column: 10, scope: !4083)
!4190 = !DILocation(line: 1884, column: 12, scope: !4083)
!4191 = !DILocation(line: 1884, column: 14, scope: !4083)
!4192 = !DILocation(line: 1884, column: 21, scope: !4083)
!4193 = !DILocation(line: 1885, column: 6, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4083, file: !263, line: 1885, column: 6)
!4195 = !DILocation(line: 1885, column: 6, scope: !4083)
!4196 = !DILocation(line: 1886, column: 3, scope: !4194)
!4197 = !DILocation(line: 1886, column: 17, scope: !4194)
!4198 = !DILocation(line: 1888, column: 6, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4083, file: !263, line: 1888, column: 6)
!4200 = !DILocation(line: 1888, column: 6, scope: !4083)
!4201 = !DILocation(line: 1891, column: 13, scope: !4202)
!4202 = distinct !DILexicalBlock(scope: !4199, file: !263, line: 1889, column: 2)
!4203 = !DILocation(line: 1891, column: 21, scope: !4202)
!4204 = !DILocation(line: 1891, column: 25, scope: !4202)
!4205 = !DILocation(line: 1891, column: 28, scope: !4202)
!4206 = !DILocation(line: 1891, column: 3, scope: !4202)
!4207 = !DILocation(line: 1892, column: 20, scope: !4202)
!4208 = !DILocation(line: 1892, column: 23, scope: !4202)
!4209 = !DILocation(line: 1892, column: 3, scope: !4202)
!4210 = !DILocation(line: 1894, column: 30, scope: !4202)
!4211 = !DILocation(line: 1894, column: 3, scope: !4202)
!4212 = !DILocation(line: 1895, column: 2, scope: !4202)
!4213 = !DILocation(line: 1897, column: 21, scope: !4199)
!4214 = !DILocation(line: 1897, column: 25, scope: !4199)
!4215 = !DILocation(line: 1897, column: 28, scope: !4199)
!4216 = !DILocation(line: 1897, column: 35, scope: !4199)
!4217 = !DILocation(line: 1897, column: 3, scope: !4199)
!4218 = !DILocation(line: 1898, column: 1, scope: !4083)
!4219 = distinct !DISubprogram(name: "thread_add_base_threads", scope: !263, file: !263, line: 1919, type: !1246, isLocal: false, isDefinition: true, scopeLine: 1920, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!4220 = !DILocalVariable(name: "m", arg: 1, scope: !4219, file: !263, line: 1919, type: !65)
!4221 = !DILocation(line: 1919, column: 42, scope: !4219)
!4222 = !DILocation(line: 1921, column: 36, scope: !4219)
!4223 = !DILocation(line: 1921, column: 68, scope: !4219)
!4224 = !DILocation(line: 1921, column: 71, scope: !4219)
!4225 = !DILocation(line: 1921, column: 20, scope: !4219)
!4226 = !DILocation(line: 1921, column: 2, scope: !4219)
!4227 = !DILocation(line: 1921, column: 5, scope: !4219)
!4228 = !DILocation(line: 1921, column: 18, scope: !4219)
!4229 = !DILocation(line: 1922, column: 25, scope: !4219)
!4230 = !DILocation(line: 1922, column: 2, scope: !4219)
!4231 = !DILocation(line: 1926, column: 1, scope: !4219)
!4232 = distinct !DISubprogram(name: "launch_thread_scheduler", scope: !263, file: !263, line: 1930, type: !1246, isLocal: false, isDefinition: true, scopeLine: 1931, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!4233 = !DILocalVariable(name: "m", arg: 1, scope: !4232, file: !263, line: 1930, type: !65)
!4234 = !DILocation(line: 1930, column: 42, scope: !4232)
!4235 = !DILocation(line: 1933, column: 43, scope: !4232)
!4236 = !DILocation(line: 1933, column: 2, scope: !4232)
!4237 = !DILocation(line: 1935, column: 18, scope: !4232)
!4238 = !DILocation(line: 1935, column: 2, scope: !4232)
!4239 = !DILocation(line: 1936, column: 1, scope: !4232)
!4240 = distinct !DISubprogram(name: "get_pid_hash", scope: !263, file: !263, line: 331, type: !4241, isLocal: true, isDefinition: true, scopeLine: 332, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{!172, !236}
!4243 = !DILocalVariable(name: "pid", arg: 1, scope: !4240, file: !263, line: 331, type: !236)
!4244 = !DILocation(line: 331, column: 20, scope: !4240)
!4245 = !DILocation(line: 333, column: 19, scope: !4240)
!4246 = !DILocation(line: 333, column: 9, scope: !4240)
!4247 = !DILocation(line: 333, column: 25, scope: !4240)
!4248 = !DILocation(line: 333, column: 23, scope: !4240)
!4249 = !DILocation(line: 333, column: 2, scope: !4240)
!4250 = distinct !DISubprogram(name: "get_end", scope: !263, file: !263, line: 461, type: !4251, isLocal: true, isDefinition: true, scopeLine: 462, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!4251 = !DISubroutineType(types: !4252)
!4252 = !{!274, !274, !172}
!4253 = !DILocalVariable(name: "str", arg: 1, scope: !4250, file: !263, line: 461, type: !274)
!4254 = !DILocation(line: 461, column: 21, scope: !4250)
!4255 = !DILocalVariable(name: "max_len", arg: 2, scope: !4250, file: !263, line: 461, type: !172)
!4256 = !DILocation(line: 461, column: 33, scope: !4250)
!4257 = !DILocalVariable(name: "len", scope: !4250, file: !263, line: 463, type: !172)
!4258 = !DILocation(line: 463, column: 9, scope: !4250)
!4259 = !DILocation(line: 463, column: 22, scope: !4250)
!4260 = !DILocation(line: 463, column: 15, scope: !4250)
!4261 = !DILocalVariable(name: "end", scope: !4250, file: !263, line: 464, type: !274)
!4262 = !DILocation(line: 464, column: 14, scope: !4250)
!4263 = !DILocation(line: 466, column: 6, scope: !4264)
!4264 = distinct !DILexicalBlock(scope: !4250, file: !263, line: 466, column: 6)
!4265 = !DILocation(line: 466, column: 13, scope: !4264)
!4266 = !DILocation(line: 466, column: 10, scope: !4264)
!4267 = !DILocation(line: 466, column: 6, scope: !4250)
!4268 = !DILocation(line: 467, column: 10, scope: !4264)
!4269 = !DILocation(line: 467, column: 16, scope: !4264)
!4270 = !DILocation(line: 467, column: 14, scope: !4264)
!4271 = !DILocation(line: 467, column: 3, scope: !4264)
!4272 = !DILocation(line: 469, column: 8, scope: !4250)
!4273 = !DILocation(line: 469, column: 14, scope: !4250)
!4274 = !DILocation(line: 469, column: 12, scope: !4250)
!4275 = !DILocation(line: 469, column: 6, scope: !4250)
!4276 = !DILocation(line: 470, column: 7, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4250, file: !263, line: 470, column: 6)
!4278 = !DILocation(line: 470, column: 6, scope: !4277)
!4279 = !DILocation(line: 470, column: 11, scope: !4277)
!4280 = !DILocation(line: 470, column: 6, scope: !4250)
!4281 = !DILocation(line: 471, column: 10, scope: !4277)
!4282 = !DILocation(line: 471, column: 3, scope: !4277)
!4283 = !DILocation(line: 473, column: 2, scope: !4250)
!4284 = !DILocation(line: 473, column: 9, scope: !4285)
!4285 = !DILexicalBlockFile(scope: !4250, file: !263, discriminator: 1)
!4286 = !DILocation(line: 473, column: 15, scope: !4285)
!4287 = !DILocation(line: 473, column: 13, scope: !4285)
!4288 = !DILocation(line: 473, column: 19, scope: !4285)
!4289 = !DILocation(line: 473, column: 23, scope: !4290)
!4290 = !DILexicalBlockFile(scope: !4250, file: !263, discriminator: 2)
!4291 = !DILocation(line: 473, column: 22, scope: !4290)
!4292 = !DILocation(line: 473, column: 29, scope: !4290)
!4293 = !DILocation(line: 473, column: 2, scope: !4294)
!4294 = !DILexicalBlockFile(scope: !4250, file: !263, discriminator: 3)
!4295 = !DILocation(line: 473, column: 2, scope: !4296)
!4296 = !DILexicalBlockFile(scope: !4250, file: !263, discriminator: 4)
!4297 = distinct !{!4297, !4283}
!4298 = !DILocation(line: 474, column: 6, scope: !4299)
!4299 = distinct !DILexicalBlock(scope: !4250, file: !263, line: 474, column: 6)
!4300 = !DILocation(line: 474, column: 12, scope: !4299)
!4301 = !DILocation(line: 474, column: 10, scope: !4299)
!4302 = !DILocation(line: 474, column: 6, scope: !4250)
!4303 = !DILocation(line: 475, column: 10, scope: !4299)
!4304 = !DILocation(line: 475, column: 3, scope: !4299)
!4305 = !DILocation(line: 477, column: 9, scope: !4250)
!4306 = !DILocation(line: 477, column: 15, scope: !4250)
!4307 = !DILocation(line: 477, column: 13, scope: !4250)
!4308 = !DILocation(line: 477, column: 2, scope: !4250)
!4309 = !DILocation(line: 478, column: 1, scope: !4250)
!4310 = distinct !DISubprogram(name: "thread_rb_move_ready", scope: !263, file: !263, line: 216, type: !4311, isLocal: true, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!4311 = !DISubroutineType(types: !4312)
!4312 = !{!126, !65, !1296, !126}
!4313 = !DILocalVariable(name: "m", arg: 1, scope: !4310, file: !263, line: 216, type: !65)
!4314 = !DILocation(line: 216, column: 39, scope: !4310)
!4315 = !DILocalVariable(name: "root", arg: 2, scope: !4310, file: !263, line: 216, type: !1296)
!4316 = !DILocation(line: 216, column: 53, scope: !4310)
!4317 = !DILocalVariable(name: "type", arg: 3, scope: !4310, file: !263, line: 216, type: !126)
!4318 = !DILocation(line: 216, column: 63, scope: !4310)
!4319 = !DILocalVariable(name: "thread", scope: !4310, file: !263, line: 218, type: !202)
!4320 = !DILocation(line: 218, column: 12, scope: !4310)
!4321 = !DILocalVariable(name: "thread_tmp", scope: !4310, file: !263, line: 218, type: !202)
!4322 = !DILocation(line: 218, column: 21, scope: !4310)
!4323 = !DILocation(line: 220, column: 26, scope: !4324)
!4324 = distinct !DILexicalBlock(scope: !4310, file: !263, line: 220, column: 2)
!4325 = !DILocation(line: 220, column: 17, scope: !4324)
!4326 = !DILocation(line: 220, column: 16, scope: !4324)
!4327 = !DILocalVariable(name: "__mptr", scope: !4328, file: !263, line: 220, type: !1130)
!4328 = distinct !DILexicalBlock(scope: !4324, file: !263, line: 220, column: 36)
!4329 = !DILocation(line: 220, column: 81, scope: !4328)
!4330 = !DILocation(line: 220, column: 100, scope: !4331)
!4331 = !DILexicalBlockFile(scope: !4328, file: !263, discriminator: 1)
!4332 = !DILocation(line: 220, column: 91, scope: !4331)
!4333 = !DILocation(line: 220, column: 81, scope: !4331)
!4334 = !DILocation(line: 220, column: 137, scope: !4331)
!4335 = !DILocation(line: 220, column: 129, scope: !4331)
!4336 = !DILocation(line: 220, column: 144, scope: !4331)
!4337 = !DILocation(line: 220, column: 108, scope: !4331)
!4338 = !DILocation(line: 220, column: 38, scope: !4331)
!4339 = !DILocation(line: 220, column: 3, scope: !4331)
!4340 = !DILocation(line: 220, column: 16, scope: !4331)
!4341 = !DILocation(line: 220, column: 16, scope: !4342)
!4342 = !DILexicalBlockFile(scope: !4324, file: !263, discriminator: 2)
!4343 = !DILocation(line: 220, column: 16, scope: !4344)
!4344 = !DILexicalBlockFile(scope: !4324, file: !263, discriminator: 3)
!4345 = !DILocation(line: 220, column: 14, scope: !4344)
!4346 = !DILocation(line: 220, column: 7, scope: !4344)
!4347 = !DILocation(line: 220, column: 3, scope: !4348)
!4348 = !DILexicalBlockFile(scope: !4349, file: !263, discriminator: 4)
!4349 = distinct !DILexicalBlock(scope: !4324, file: !263, line: 220, column: 2)
!4350 = !DILocation(line: 220, column: 10, scope: !4348)
!4351 = !DILocation(line: 220, column: 37, scope: !4352)
!4352 = !DILexicalBlockFile(scope: !4349, file: !263, discriminator: 5)
!4353 = !DILocation(line: 220, column: 45, scope: !4352)
!4354 = !DILocation(line: 220, column: 28, scope: !4352)
!4355 = !DILocation(line: 220, column: 27, scope: !4352)
!4356 = !DILocalVariable(name: "__mptr", scope: !4357, file: !263, line: 220, type: !1130)
!4357 = distinct !DILexicalBlock(scope: !4349, file: !263, line: 220, column: 52)
!4358 = !DILocation(line: 220, column: 101, scope: !4357)
!4359 = !DILocation(line: 220, column: 120, scope: !4360)
!4360 = !DILexicalBlockFile(scope: !4357, file: !263, discriminator: 6)
!4361 = !DILocation(line: 220, column: 128, scope: !4360)
!4362 = !DILocation(line: 220, column: 111, scope: !4360)
!4363 = !DILocation(line: 220, column: 101, scope: !4360)
!4364 = !DILocation(line: 220, column: 166, scope: !4360)
!4365 = !DILocation(line: 220, column: 158, scope: !4360)
!4366 = !DILocation(line: 220, column: 173, scope: !4360)
!4367 = !DILocation(line: 220, column: 133, scope: !4360)
!4368 = !DILocation(line: 220, column: 54, scope: !4360)
!4369 = !DILocation(line: 220, column: 3, scope: !4360)
!4370 = !DILocation(line: 220, column: 27, scope: !4360)
!4371 = !DILocation(line: 220, column: 27, scope: !4372)
!4372 = !DILexicalBlockFile(scope: !4349, file: !263, discriminator: 7)
!4373 = !DILocation(line: 220, column: 27, scope: !4374)
!4374 = !DILexicalBlockFile(scope: !4349, file: !263, discriminator: 8)
!4375 = !DILocation(line: 220, column: 25, scope: !4374)
!4376 = !DILocation(line: 220, column: 2, scope: !4377)
!4377 = !DILexicalBlockFile(scope: !4324, file: !263, discriminator: 9)
!4378 = !DILocation(line: 221, column: 7, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4380, file: !263, line: 221, column: 7)
!4380 = distinct !DILexicalBlock(scope: !4349, file: !263, line: 220, column: 28)
!4381 = !DILocation(line: 221, column: 15, scope: !4379)
!4382 = !DILocation(line: 221, column: 21, scope: !4379)
!4383 = !DILocation(line: 221, column: 28, scope: !4379)
!4384 = !DILocation(line: 221, column: 45, scope: !4379)
!4385 = !DILocation(line: 221, column: 51, scope: !4386)
!4386 = !DILexicalBlockFile(scope: !4379, file: !263, discriminator: 1)
!4387 = !DILocation(line: 221, column: 49, scope: !4386)
!4388 = !DILocation(line: 221, column: 57, scope: !4386)
!4389 = !DILocation(line: 221, column: 58, scope: !4386)
!4390 = !DILocation(line: 221, column: 7, scope: !4386)
!4391 = !DILocation(line: 221, column: 51, scope: !4392)
!4392 = !DILexicalBlockFile(scope: !4379, file: !263, discriminator: 2)
!4393 = !DILocation(line: 221, column: 49, scope: !4392)
!4394 = !DILocation(line: 221, column: 57, scope: !4392)
!4395 = !DILocation(line: 221, column: 48, scope: !4392)
!4396 = !DILocation(line: 221, column: 51, scope: !4397)
!4397 = !DILexicalBlockFile(scope: !4379, file: !263, discriminator: 3)
!4398 = !DILocation(line: 221, column: 49, scope: !4397)
!4399 = !DILocation(line: 221, column: 57, scope: !4397)
!4400 = !DILocation(line: 221, column: 48, scope: !4397)
!4401 = !DILocation(line: 221, column: 7, scope: !4397)
!4402 = !DILocation(line: 222, column: 4, scope: !4379)
!4403 = !DILocation(line: 224, column: 7, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !4380, file: !263, line: 224, column: 7)
!4405 = !DILocation(line: 224, column: 12, scope: !4404)
!4406 = !DILocation(line: 224, column: 7, scope: !4380)
!4407 = !DILocation(line: 225, column: 4, scope: !4404)
!4408 = !DILocation(line: 225, column: 12, scope: !4404)
!4409 = !DILocation(line: 225, column: 19, scope: !4404)
!4410 = !DILocation(line: 225, column: 24, scope: !4404)
!4411 = !DILocation(line: 226, column: 12, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4404, file: !263, line: 226, column: 12)
!4413 = !DILocation(line: 226, column: 17, scope: !4412)
!4414 = !DILocation(line: 226, column: 12, scope: !4404)
!4415 = !DILocation(line: 227, column: 4, scope: !4412)
!4416 = !DILocation(line: 227, column: 12, scope: !4412)
!4417 = !DILocation(line: 227, column: 19, scope: !4412)
!4418 = !DILocation(line: 227, column: 25, scope: !4412)
!4419 = !DILocation(line: 228, column: 21, scope: !4380)
!4420 = !DILocation(line: 228, column: 24, scope: !4380)
!4421 = !DILocation(line: 228, column: 30, scope: !4380)
!4422 = !DILocation(line: 228, column: 38, scope: !4380)
!4423 = !DILocation(line: 228, column: 3, scope: !4380)
!4424 = !DILocation(line: 229, column: 2, scope: !4380)
!4425 = !DILocation(line: 220, column: 16, scope: !4426)
!4426 = !DILexicalBlockFile(scope: !4349, file: !263, discriminator: 10)
!4427 = !DILocation(line: 220, column: 14, scope: !4426)
!4428 = !DILocation(line: 220, column: 2, scope: !4426)
!4429 = distinct !{!4429, !4430}
!4430 = !DILocation(line: 220, column: 2, scope: !4310)
!4431 = !DILocation(line: 231, column: 2, scope: !4310)
!4432 = distinct !DISubprogram(name: "thread_move_ready", scope: !263, file: !263, line: 204, type: !4433, isLocal: true, isDefinition: true, scopeLine: 205, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!4433 = !DISubroutineType(types: !4434)
!4434 = !{!126, !65, !1296, !202, !126}
!4435 = !DILocalVariable(name: "m", arg: 1, scope: !4432, file: !263, line: 204, type: !65)
!4436 = !DILocation(line: 204, column: 36, scope: !4432)
!4437 = !DILocalVariable(name: "root", arg: 2, scope: !4432, file: !263, line: 204, type: !1296)
!4438 = !DILocation(line: 204, column: 50, scope: !4432)
!4439 = !DILocalVariable(name: "thread", arg: 3, scope: !4432, file: !263, line: 204, type: !202)
!4440 = !DILocation(line: 204, column: 66, scope: !4432)
!4441 = !DILocalVariable(name: "type", arg: 4, scope: !4432, file: !263, line: 204, type: !126)
!4442 = !DILocation(line: 204, column: 78, scope: !4432)
!4443 = !DILocation(line: 206, column: 12, scope: !4432)
!4444 = !DILocation(line: 206, column: 20, scope: !4432)
!4445 = !DILocation(line: 206, column: 23, scope: !4432)
!4446 = !DILocation(line: 206, column: 2, scope: !4432)
!4447 = !DILocation(line: 207, column: 2, scope: !4432)
!4448 = distinct !{!4448, !4447}
!4449 = !DILocation(line: 207, column: 33, scope: !4450)
!4450 = !DILexicalBlockFile(scope: !4451, file: !263, discriminator: 1)
!4451 = distinct !DILexicalBlock(scope: !4432, file: !263, line: 207, column: 5)
!4452 = !DILocation(line: 207, column: 41, scope: !4450)
!4453 = !DILocation(line: 207, column: 9, scope: !4450)
!4454 = !DILocation(line: 207, column: 17, scope: !4450)
!4455 = !DILocation(line: 207, column: 24, scope: !4450)
!4456 = !DILocation(line: 207, column: 29, scope: !4450)
!4457 = !DILocation(line: 207, column: 74, scope: !4450)
!4458 = !DILocation(line: 207, column: 82, scope: !4450)
!4459 = !DILocation(line: 207, column: 50, scope: !4450)
!4460 = !DILocation(line: 207, column: 58, scope: !4450)
!4461 = !DILocation(line: 207, column: 65, scope: !4450)
!4462 = !DILocation(line: 207, column: 70, scope: !4450)
!4463 = !DILocation(line: 207, column: 89, scope: !4450)
!4464 = !DILocation(line: 208, column: 17, scope: !4432)
!4465 = !DILocation(line: 208, column: 25, scope: !4432)
!4466 = !DILocation(line: 208, column: 32, scope: !4432)
!4467 = !DILocation(line: 208, column: 35, scope: !4432)
!4468 = !DILocation(line: 208, column: 2, scope: !4432)
!4469 = !DILocation(line: 209, column: 6, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4432, file: !263, line: 209, column: 6)
!4471 = !DILocation(line: 209, column: 14, scope: !4470)
!4472 = !DILocation(line: 209, column: 19, scope: !4470)
!4473 = !DILocation(line: 209, column: 6, scope: !4432)
!4474 = !DILocation(line: 210, column: 18, scope: !4470)
!4475 = !DILocation(line: 210, column: 3, scope: !4470)
!4476 = !DILocation(line: 210, column: 11, scope: !4470)
!4477 = !DILocation(line: 210, column: 16, scope: !4470)
!4478 = !DILocation(line: 211, column: 2, scope: !4432)
!4479 = distinct !DISubprogram(name: "thread_event_cmp", scope: !263, file: !263, line: 625, type: !4480, isLocal: true, isDefinition: true, scopeLine: 626, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!4480 = !DISubroutineType(types: !4481)
!4481 = !{!126, !4482, !4482}
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64, align: 64)
!4483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!4484 = !DILocalVariable(name: "event1", arg: 1, scope: !4479, file: !263, line: 625, type: !4482)
!4485 = !DILocation(line: 625, column: 40, scope: !4479)
!4486 = !DILocalVariable(name: "event2", arg: 2, scope: !4479, file: !263, line: 625, type: !4482)
!4487 = !DILocation(line: 625, column: 70, scope: !4479)
!4488 = !DILocation(line: 627, column: 6, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !4479, file: !263, line: 627, column: 6)
!4490 = !DILocation(line: 627, column: 14, scope: !4489)
!4491 = !DILocation(line: 627, column: 19, scope: !4489)
!4492 = !DILocation(line: 627, column: 27, scope: !4489)
!4493 = !DILocation(line: 627, column: 17, scope: !4489)
!4494 = !DILocation(line: 627, column: 6, scope: !4479)
!4495 = !DILocation(line: 628, column: 3, scope: !4489)
!4496 = !DILocation(line: 629, column: 6, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4479, file: !263, line: 629, column: 6)
!4498 = !DILocation(line: 629, column: 14, scope: !4497)
!4499 = !DILocation(line: 629, column: 19, scope: !4497)
!4500 = !DILocation(line: 629, column: 27, scope: !4497)
!4501 = !DILocation(line: 629, column: 17, scope: !4497)
!4502 = !DILocation(line: 629, column: 6, scope: !4479)
!4503 = !DILocation(line: 630, column: 3, scope: !4497)
!4504 = !DILocation(line: 631, column: 2, scope: !4479)
!4505 = !DILocation(line: 632, column: 1, scope: !4479)
!4506 = distinct !DISubprogram(name: "thread_events_resize", scope: !263, file: !263, line: 601, type: !4507, isLocal: true, isDefinition: true, scopeLine: 602, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!4507 = !DISubroutineType(types: !4508)
!4508 = !{!126, !65, !126}
!4509 = !DILocalVariable(name: "m", arg: 1, scope: !4506, file: !263, line: 601, type: !65)
!4510 = !DILocation(line: 601, column: 39, scope: !4506)
!4511 = !DILocalVariable(name: "delta", arg: 2, scope: !4506, file: !263, line: 601, type: !126)
!4512 = !DILocation(line: 601, column: 46, scope: !4506)
!4513 = !DILocalVariable(name: "new_size", scope: !4506, file: !263, line: 603, type: !110)
!4514 = !DILocation(line: 603, column: 15, scope: !4506)
!4515 = !DILocation(line: 605, column: 20, scope: !4506)
!4516 = !DILocation(line: 605, column: 2, scope: !4506)
!4517 = !DILocation(line: 605, column: 5, scope: !4506)
!4518 = !DILocation(line: 605, column: 17, scope: !4506)
!4519 = !DILocation(line: 606, column: 6, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !4506, file: !263, line: 606, column: 6)
!4521 = !DILocation(line: 606, column: 9, scope: !4520)
!4522 = !DILocation(line: 606, column: 23, scope: !4520)
!4523 = !DILocation(line: 606, column: 26, scope: !4520)
!4524 = !DILocation(line: 606, column: 21, scope: !4520)
!4525 = !DILocation(line: 606, column: 6, scope: !4506)
!4526 = !DILocation(line: 607, column: 3, scope: !4520)
!4527 = !DILocation(line: 609, column: 15, scope: !4506)
!4528 = !DILocation(line: 609, column: 18, scope: !4506)
!4529 = !DILocation(line: 609, column: 30, scope: !4506)
!4530 = !DILocation(line: 609, column: 36, scope: !4506)
!4531 = !DILocation(line: 609, column: 11, scope: !4506)
!4532 = !DILocation(line: 610, column: 11, scope: !4506)
!4533 = !DILocation(line: 612, column: 6, scope: !4534)
!4534 = distinct !DILexicalBlock(scope: !4506, file: !263, line: 612, column: 6)
!4535 = !DILocation(line: 612, column: 9, scope: !4534)
!4536 = !DILocation(line: 612, column: 6, scope: !4506)
!4537 = !DILocation(line: 613, column: 9, scope: !4534)
!4538 = !DILocation(line: 613, column: 12, scope: !4534)
!4539 = !DILocation(line: 613, column: 4, scope: !4534)
!4540 = !DILocation(line: 613, column: 28, scope: !4534)
!4541 = !DILocation(line: 613, column: 31, scope: !4534)
!4542 = !DILocation(line: 613, column: 45, scope: !4534)
!4543 = !DILocation(line: 613, column: 3, scope: !4534)
!4544 = !DILocation(line: 614, column: 28, scope: !4506)
!4545 = !DILocation(line: 614, column: 37, scope: !4506)
!4546 = !DILocation(line: 614, column: 21, scope: !4506)
!4547 = !DILocation(line: 614, column: 20, scope: !4506)
!4548 = !DILocation(line: 614, column: 2, scope: !4506)
!4549 = !DILocation(line: 614, column: 5, scope: !4506)
!4550 = !DILocation(line: 614, column: 18, scope: !4506)
!4551 = !DILocation(line: 615, column: 7, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4506, file: !263, line: 615, column: 6)
!4553 = !DILocation(line: 615, column: 10, scope: !4552)
!4554 = !DILocation(line: 615, column: 6, scope: !4506)
!4555 = !DILocation(line: 616, column: 3, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4552, file: !263, line: 615, column: 24)
!4557 = !DILocation(line: 616, column: 6, scope: !4556)
!4558 = !DILocation(line: 616, column: 17, scope: !4556)
!4559 = !DILocation(line: 617, column: 3, scope: !4556)
!4560 = !DILocation(line: 620, column: 18, scope: !4506)
!4561 = !DILocation(line: 620, column: 2, scope: !4506)
!4562 = !DILocation(line: 620, column: 5, scope: !4506)
!4563 = !DILocation(line: 620, column: 16, scope: !4506)
!4564 = !DILocation(line: 621, column: 2, scope: !4506)
!4565 = !DILocation(line: 622, column: 1, scope: !4506)
!4566 = distinct !DISubprogram(name: "thread_get_id", scope: !263, file: !263, line: 1039, type: !4567, isLocal: true, isDefinition: true, scopeLine: 1040, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!4567 = !DISubroutineType(types: !4568)
!4568 = !{!79, !65}
!4569 = !DILocalVariable(name: "m", arg: 1, scope: !4566, file: !263, line: 1039, type: !65)
!4570 = !DILocation(line: 1039, column: 32, scope: !4566)
!4571 = !DILocation(line: 1041, column: 9, scope: !4566)
!4572 = !DILocation(line: 1041, column: 12, scope: !4566)
!4573 = !DILocation(line: 1041, column: 14, scope: !4566)
!4574 = !DILocation(line: 1041, column: 2, scope: !4566)
!4575 = distinct !DISubprogram(name: "__clear_bit", scope: !1797, file: !1797, line: 42, type: !1865, isLocal: true, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!4576 = !DILocalVariable(name: "idx", arg: 1, scope: !4575, file: !1797, line: 42, type: !110)
!4577 = !DILocation(line: 42, column: 41, scope: !4575)
!4578 = !DILocalVariable(name: "bmap", arg: 2, scope: !4575, file: !1797, line: 42, type: !1867)
!4579 = !DILocation(line: 42, column: 61, scope: !4575)
!4580 = !DILocation(line: 44, column: 60, scope: !4575)
!4581 = !DILocation(line: 44, column: 59, scope: !4575)
!4582 = !DILocation(line: 44, column: 65, scope: !4575)
!4583 = !DILocation(line: 44, column: 55, scope: !4575)
!4584 = !DILocation(line: 44, column: 49, scope: !4575)
!4585 = !DILocation(line: 44, column: 9, scope: !4575)
!4586 = !DILocation(line: 44, column: 8, scope: !4575)
!4587 = !DILocation(line: 44, column: 14, scope: !4575)
!4588 = !DILocation(line: 44, column: 2, scope: !4575)
!4589 = !DILocation(line: 44, column: 46, scope: !4575)
!4590 = !DILocation(line: 45, column: 1, scope: !4575)
!4591 = distinct !DISubprogram(name: "__list_add", scope: !87, file: !87, line: 80, type: !4592, isLocal: true, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!4592 = !DISubroutineType(types: !4593)
!4593 = !{null, !91, !91, !91}
!4594 = !DILocalVariable(name: "new", arg: 1, scope: !4591, file: !87, line: 80, type: !91)
!4595 = !DILocation(line: 80, column: 49, scope: !4591)
!4596 = !DILocalVariable(name: "prev", arg: 2, scope: !4591, file: !87, line: 81, type: !91)
!4597 = !DILocation(line: 81, column: 28, scope: !4591)
!4598 = !DILocalVariable(name: "next", arg: 3, scope: !4591, file: !87, line: 82, type: !91)
!4599 = !DILocation(line: 82, column: 28, scope: !4591)
!4600 = !DILocation(line: 84, column: 15, scope: !4591)
!4601 = !DILocation(line: 84, column: 2, scope: !4591)
!4602 = !DILocation(line: 84, column: 8, scope: !4591)
!4603 = !DILocation(line: 84, column: 13, scope: !4591)
!4604 = !DILocation(line: 85, column: 14, scope: !4591)
!4605 = !DILocation(line: 85, column: 2, scope: !4591)
!4606 = !DILocation(line: 85, column: 7, scope: !4591)
!4607 = !DILocation(line: 85, column: 12, scope: !4591)
!4608 = !DILocation(line: 86, column: 14, scope: !4591)
!4609 = !DILocation(line: 86, column: 2, scope: !4591)
!4610 = !DILocation(line: 86, column: 7, scope: !4591)
!4611 = !DILocation(line: 86, column: 12, scope: !4591)
!4612 = !DILocation(line: 87, column: 15, scope: !4591)
!4613 = !DILocation(line: 87, column: 2, scope: !4591)
!4614 = !DILocation(line: 87, column: 8, scope: !4591)
!4615 = !DILocation(line: 87, column: 13, scope: !4591)
!4616 = !DILocation(line: 88, column: 1, scope: !4591)
!4617 = distinct !DISubprogram(name: "__list_del", scope: !87, file: !87, line: 124, type: !3385, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!4618 = !DILocalVariable(name: "prev", arg: 1, scope: !4617, file: !87, line: 124, type: !91)
!4619 = !DILocation(line: 124, column: 50, scope: !4617)
!4620 = !DILocalVariable(name: "next", arg: 2, scope: !4617, file: !87, line: 124, type: !91)
!4621 = !DILocation(line: 124, column: 75, scope: !4617)
!4622 = !DILocation(line: 126, column: 15, scope: !4617)
!4623 = !DILocation(line: 126, column: 2, scope: !4617)
!4624 = !DILocation(line: 126, column: 8, scope: !4617)
!4625 = !DILocation(line: 126, column: 13, scope: !4617)
!4626 = !DILocation(line: 127, column: 15, scope: !4617)
!4627 = !DILocation(line: 127, column: 2, scope: !4617)
!4628 = !DILocation(line: 127, column: 8, scope: !4617)
!4629 = !DILocation(line: 127, column: 13, scope: !4617)
!4630 = !DILocation(line: 128, column: 1, scope: !4617)
!4631 = distinct !DISubprogram(name: "thread_set_timer", scope: !263, file: !263, line: 257, type: !1246, isLocal: true, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!4632 = !DILocalVariable(name: "m", arg: 1, scope: !4631, file: !263, line: 257, type: !65)
!4633 = !DILocation(line: 257, column: 35, scope: !4631)
!4634 = !DILocalVariable(name: "timer_wait", scope: !4631, file: !263, line: 259, type: !218)
!4635 = !DILocation(line: 259, column: 12, scope: !4631)
!4636 = !DILocalVariable(name: "its", scope: !4631, file: !263, line: 260, type: !4637)
!4637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "itimerspec", file: !4638, line: 161, size: 256, align: 64, elements: !4639)
!4638 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/keepalived/[lib]lib--liblib.a")
!4639 = !{!4640, !4646}
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "it_interval", scope: !4637, file: !4638, line: 163, baseType: !4641, size: 128, align: 64)
!4641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !4638, line: 120, size: 128, align: 64, elements: !4642)
!4642 = !{!4643, !4644}
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4641, file: !4638, line: 122, baseType: !224, size: 64, align: 64)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4641, file: !4638, line: 123, baseType: !4645, size: 64, align: 64, offset: 64)
!4645 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !153, line: 175, baseType: !154)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "it_value", scope: !4637, file: !4638, line: 164, baseType: !4641, size: 128, align: 64, offset: 128)
!4647 = !DILocation(line: 260, column: 20, scope: !4631)
!4648 = !DILocation(line: 263, column: 4, scope: !4631)
!4649 = !DILocation(line: 263, column: 12, scope: !4631)
!4650 = !DILocation(line: 263, column: 11, scope: !4631)
!4651 = !DILocation(line: 264, column: 23, scope: !4631)
!4652 = !DILocation(line: 264, column: 26, scope: !4631)
!4653 = !DILocation(line: 264, column: 2, scope: !4631)
!4654 = !DILocation(line: 265, column: 23, scope: !4631)
!4655 = !DILocation(line: 265, column: 26, scope: !4631)
!4656 = !DILocation(line: 265, column: 2, scope: !4631)
!4657 = !DILocation(line: 266, column: 23, scope: !4631)
!4658 = !DILocation(line: 266, column: 26, scope: !4631)
!4659 = !DILocation(line: 266, column: 2, scope: !4631)
!4660 = !DILocation(line: 267, column: 23, scope: !4631)
!4661 = !DILocation(line: 267, column: 26, scope: !4631)
!4662 = !DILocation(line: 267, column: 2, scope: !4631)
!4663 = !DILocation(line: 269, column: 8, scope: !4664)
!4664 = distinct !DILexicalBlock(scope: !4631, file: !263, line: 269, column: 5)
!4665 = !DILocation(line: 269, column: 6, scope: !4664)
!4666 = !DILocation(line: 269, column: 15, scope: !4664)
!4667 = !DILocation(line: 269, column: 8, scope: !4668)
!4668 = !DILexicalBlockFile(scope: !4664, file: !263, discriminator: 1)
!4669 = !DILocation(line: 269, column: 18, scope: !4668)
!4670 = !DILocation(line: 269, column: 5, scope: !4668)
!4671 = !DILocation(line: 271, column: 3, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4664, file: !263, line: 269, column: 30)
!4673 = !DILocation(line: 274, column: 2, scope: !4672)
!4674 = distinct !{!4674, !4673}
!4675 = !DILocation(line: 274, column: 5, scope: !4676)
!4676 = !DILexicalBlockFile(scope: !4677, file: !263, discriminator: 1)
!4677 = distinct !DILexicalBlock(scope: !4672, file: !263, line: 274, column: 5)
!4678 = !DILocation(line: 274, column: 12, scope: !4676)
!4679 = !DILocation(line: 274, column: 13, scope: !4676)
!4680 = !DILocation(line: 274, column: 18, scope: !4676)
!4681 = !DILocation(line: 274, column: 5, scope: !4682)
!4682 = !DILexicalBlockFile(scope: !4683, file: !263, discriminator: 2)
!4683 = distinct !DILexicalBlock(scope: !4684, file: !263, line: 274, column: 18)
!4684 = distinct !DILexicalBlock(scope: !4677, file: !263, line: 274, column: 18)
!4685 = !DILocation(line: 274, column: 20, scope: !4682)
!4686 = !DILocation(line: 274, column: 13, scope: !4682)
!4687 = !DILocation(line: 274, column: 25, scope: !4682)
!4688 = !DILocation(line: 274, column: 27, scope: !4689)
!4689 = !DILexicalBlockFile(scope: !4677, file: !263, discriminator: 3)
!4690 = !DILocation(line: 276, column: 18, scope: !4691)
!4691 = distinct !DILexicalBlock(scope: !4672, file: !263, line: 276, column: 7)
!4692 = !DILocation(line: 276, column: 25, scope: !4691)
!4693 = !DILocation(line: 276, column: 7, scope: !4672)
!4694 = !DILocation(line: 278, column: 6, scope: !4695)
!4695 = distinct !DILexicalBlock(scope: !4691, file: !263, line: 276, column: 30)
!4696 = !DILocation(line: 278, column: 14, scope: !4695)
!4697 = !DILocation(line: 278, column: 13, scope: !4695)
!4698 = !DILocation(line: 279, column: 3, scope: !4695)
!4699 = !DILocation(line: 280, column: 2, scope: !4672)
!4700 = !DILocation(line: 282, column: 14, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4664, file: !263, line: 280, column: 9)
!4702 = !DILocation(line: 282, column: 21, scope: !4701)
!4703 = !DILocation(line: 283, column: 14, scope: !4701)
!4704 = !DILocation(line: 283, column: 22, scope: !4701)
!4705 = !DILocation(line: 286, column: 35, scope: !4631)
!4706 = !DILocation(line: 286, column: 6, scope: !4631)
!4707 = !DILocation(line: 286, column: 15, scope: !4631)
!4708 = !DILocation(line: 286, column: 22, scope: !4631)
!4709 = !DILocation(line: 287, column: 9, scope: !4710)
!4710 = distinct !DILexicalBlock(scope: !4631, file: !263, line: 287, column: 6)
!4711 = !DILocation(line: 287, column: 7, scope: !4710)
!4712 = !DILocation(line: 287, column: 16, scope: !4710)
!4713 = !DILocation(line: 287, column: 9, scope: !4714)
!4714 = !DILexicalBlockFile(scope: !4710, file: !263, discriminator: 1)
!4715 = !DILocation(line: 287, column: 19, scope: !4714)
!4716 = !DILocation(line: 287, column: 6, scope: !4714)
!4717 = !DILocation(line: 291, column: 7, scope: !4718)
!4718 = distinct !DILexicalBlock(scope: !4710, file: !263, line: 287, column: 31)
!4719 = !DILocation(line: 291, column: 16, scope: !4718)
!4720 = !DILocation(line: 291, column: 24, scope: !4718)
!4721 = !DILocation(line: 292, column: 2, scope: !4718)
!4722 = !DILocation(line: 294, column: 37, scope: !4710)
!4723 = !DILocation(line: 294, column: 45, scope: !4710)
!4724 = !DILocation(line: 294, column: 7, scope: !4710)
!4725 = !DILocation(line: 294, column: 16, scope: !4710)
!4726 = !DILocation(line: 294, column: 24, scope: !4710)
!4727 = !DILocation(line: 297, column: 31, scope: !4631)
!4728 = !DILocation(line: 297, column: 43, scope: !4631)
!4729 = !DILocation(line: 297, column: 51, scope: !4631)
!4730 = !DILocation(line: 297, column: 6, scope: !4631)
!4731 = !DILocation(line: 297, column: 18, scope: !4631)
!4732 = !DILocation(line: 297, column: 25, scope: !4631)
!4733 = !DILocation(line: 299, column: 18, scope: !4631)
!4734 = !DILocation(line: 299, column: 21, scope: !4631)
!4735 = !DILocation(line: 299, column: 2, scope: !4631)
!4736 = !DILocation(line: 305, column: 1, scope: !4631)
!4737 = distinct !DISubprogram(name: "thread_update_timer", scope: !263, file: !263, line: 236, type: !4738, isLocal: true, isDefinition: true, scopeLine: 237, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!4738 = !DISubroutineType(types: !4739)
!4739 = !{null, !1296, !4740}
!4740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!4741 = !DILocalVariable(name: "root", arg: 1, scope: !4737, file: !263, line: 236, type: !1296)
!4742 = !DILocation(line: 236, column: 32, scope: !4737)
!4743 = !DILocalVariable(name: "timer_min", arg: 2, scope: !4737, file: !263, line: 236, type: !4740)
!4744 = !DILocation(line: 236, column: 49, scope: !4737)
!4745 = !DILocalVariable(name: "first", scope: !4737, file: !263, line: 238, type: !202)
!4746 = !DILocation(line: 238, column: 12, scope: !4737)
!4747 = !DILocation(line: 240, column: 7, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !4737, file: !263, line: 240, column: 6)
!4749 = !DILocation(line: 240, column: 13, scope: !4748)
!4750 = !DILocation(line: 240, column: 6, scope: !4737)
!4751 = !DILocation(line: 241, column: 3, scope: !4748)
!4752 = !DILocation(line: 243, column: 20, scope: !4737)
!4753 = !DILocation(line: 243, column: 11, scope: !4737)
!4754 = !DILocation(line: 243, column: 10, scope: !4737)
!4755 = !DILocalVariable(name: "__mptr", scope: !4756, file: !263, line: 243, type: !1130)
!4756 = distinct !DILexicalBlock(scope: !4737, file: !263, line: 243, column: 30)
!4757 = !DILocation(line: 243, column: 68, scope: !4756)
!4758 = !DILocation(line: 243, column: 87, scope: !4759)
!4759 = !DILexicalBlockFile(scope: !4756, file: !263, discriminator: 1)
!4760 = !DILocation(line: 243, column: 78, scope: !4759)
!4761 = !DILocation(line: 243, column: 68, scope: !4759)
!4762 = !DILocation(line: 243, column: 117, scope: !4759)
!4763 = !DILocation(line: 243, column: 109, scope: !4759)
!4764 = !DILocation(line: 243, column: 124, scope: !4759)
!4765 = !DILocation(line: 243, column: 95, scope: !4759)
!4766 = !DILocation(line: 243, column: 32, scope: !4759)
!4767 = !DILocation(line: 243, column: 11, scope: !4759)
!4768 = !DILocation(line: 243, column: 10, scope: !4759)
!4769 = !DILocation(line: 243, column: 10, scope: !4770)
!4770 = !DILexicalBlockFile(scope: !4737, file: !263, discriminator: 2)
!4771 = !DILocation(line: 243, column: 10, scope: !4772)
!4772 = !DILexicalBlockFile(scope: !4737, file: !263, discriminator: 3)
!4773 = !DILocation(line: 243, column: 8, scope: !4772)
!4774 = !DILocation(line: 244, column: 7, scope: !4775)
!4775 = distinct !DILexicalBlock(scope: !4737, file: !263, line: 244, column: 6)
!4776 = !DILocation(line: 244, column: 6, scope: !4737)
!4777 = !DILocation(line: 245, column: 3, scope: !4775)
!4778 = !DILocation(line: 247, column: 6, scope: !4779)
!4779 = distinct !DILexicalBlock(scope: !4737, file: !263, line: 247, column: 6)
!4780 = !DILocation(line: 247, column: 13, scope: !4779)
!4781 = !DILocation(line: 247, column: 19, scope: !4779)
!4782 = !DILocation(line: 247, column: 26, scope: !4779)
!4783 = !DILocation(line: 247, column: 6, scope: !4737)
!4784 = !DILocation(line: 248, column: 3, scope: !4779)
!4785 = !DILocation(line: 250, column: 6, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4737, file: !263, line: 250, column: 6)
!4787 = !DILocation(line: 250, column: 9, scope: !4786)
!4788 = !DILocation(line: 250, column: 7, scope: !4786)
!4789 = !DILocation(line: 250, column: 16, scope: !4786)
!4790 = !DILocation(line: 250, column: 6, scope: !4791)
!4791 = !DILexicalBlockFile(scope: !4786, file: !263, discriminator: 1)
!4792 = !DILocation(line: 250, column: 9, scope: !4791)
!4793 = !DILocation(line: 250, column: 19, scope: !4791)
!4794 = !DILocation(line: 250, column: 28, scope: !4791)
!4795 = !DILocation(line: 251, column: 6, scope: !4786)
!4796 = !DILocation(line: 251, column: 13, scope: !4786)
!4797 = !DILocation(line: 251, column: 8, scope: !4786)
!4798 = !DILocation(line: 251, column: 5, scope: !4786)
!4799 = !DILocation(line: 251, column: 15, scope: !4786)
!4800 = !DILocation(line: 250, column: 6, scope: !4770)
!4801 = !DILocation(line: 251, column: 6, scope: !4791)
!4802 = !DILocation(line: 251, column: 13, scope: !4791)
!4803 = !DILocation(line: 251, column: 8, scope: !4791)
!4804 = !DILocation(line: 251, column: 5, scope: !4791)
!4805 = !DILocation(line: 251, column: 6, scope: !4806)
!4806 = !DILexicalBlockFile(scope: !4786, file: !263, discriminator: 2)
!4807 = !DILocation(line: 251, column: 13, scope: !4806)
!4808 = !DILocation(line: 251, column: 8, scope: !4806)
!4809 = !DILocation(line: 251, column: 5, scope: !4806)
!4810 = !DILocation(line: 250, column: 6, scope: !4772)
!4811 = !DILocation(line: 252, column: 4, scope: !4786)
!4812 = !DILocation(line: 252, column: 16, scope: !4786)
!4813 = !DILocation(line: 252, column: 23, scope: !4786)
!4814 = !DILocation(line: 252, column: 3, scope: !4786)
!4815 = !DILocation(line: 253, column: 1, scope: !4737)
!4816 = distinct !DISubprogram(name: "list_empty", scope: !87, file: !87, line: 202, type: !4817, isLocal: true, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!4817 = !DISubroutineType(types: !4818)
!4818 = !{!126, !4819}
!4819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4820, size: 64, align: 64)
!4820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!4821 = !DILocalVariable(name: "head", arg: 1, scope: !4816, file: !87, line: 202, type: !4819)
!4822 = !DILocation(line: 202, column: 54, scope: !4816)
!4823 = !DILocation(line: 204, column: 9, scope: !4816)
!4824 = !DILocation(line: 204, column: 15, scope: !4816)
!4825 = !DILocation(line: 204, column: 23, scope: !4816)
!4826 = !DILocation(line: 204, column: 20, scope: !4816)
!4827 = !DILocation(line: 204, column: 2, scope: !4816)
!4828 = distinct !DISubprogram(name: "list_del_init", scope: !87, file: !87, line: 147, type: !3547, isLocal: true, isDefinition: true, scopeLine: 148, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !296)
!4829 = !DILocalVariable(name: "entry", arg: 1, scope: !4828, file: !87, line: 147, type: !91)
!4830 = !DILocation(line: 147, column: 52, scope: !4828)
!4831 = !DILocation(line: 149, column: 13, scope: !4828)
!4832 = !DILocation(line: 149, column: 20, scope: !4828)
!4833 = !DILocation(line: 149, column: 26, scope: !4828)
!4834 = !DILocation(line: 149, column: 33, scope: !4828)
!4835 = !DILocation(line: 149, column: 2, scope: !4828)
!4836 = !DILocation(line: 150, column: 2, scope: !4828)
!4837 = distinct !{!4837, !4836}
!4838 = !DILocation(line: 150, column: 24, scope: !4839)
!4839 = !DILexicalBlockFile(scope: !4840, file: !87, discriminator: 1)
!4840 = distinct !DILexicalBlock(scope: !4828, file: !87, line: 150, column: 5)
!4841 = !DILocation(line: 150, column: 8, scope: !4839)
!4842 = !DILocation(line: 150, column: 16, scope: !4839)
!4843 = !DILocation(line: 150, column: 21, scope: !4839)
!4844 = !DILocation(line: 150, column: 49, scope: !4839)
!4845 = !DILocation(line: 150, column: 33, scope: !4839)
!4846 = !DILocation(line: 150, column: 41, scope: !4839)
!4847 = !DILocation(line: 150, column: 46, scope: !4839)
!4848 = !DILocation(line: 150, column: 57, scope: !4839)
!4849 = !DILocation(line: 151, column: 1, scope: !4828)
