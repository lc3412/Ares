; ModuleID = './[inter]keepalived--vrrp--vrrp_if_config.o.i'
source_filename = "./[inter]keepalived--vrrp--vrrp_if_config.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._list = type { %struct._element*, %struct._element*, i32, void (i8*)*, void (%struct._IO_FILE*, i8*)* }
%struct._element = type { %struct._element*, %struct._element*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._nl_handle = type { %struct.nl_sock*, i32, i32, i32, %struct._thread* }
%struct.nl_sock = type opaque
%struct._thread = type { i64, i32, %struct._thread_master*, i32 (%struct._thread*)*, i8*, %struct.timeval, %union.anon.0, %struct._thread_event*, %union.anon.2 }
%struct._thread_master = type { %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.rb_root, %struct.list_head, %struct.list_head, %struct.list_head, %struct._list*, %struct.rb_root, %struct.epoll_event*, %struct._thread_event*, i32, i32, i32, i32, %struct._thread*, i64, i64, i8 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.rb_root = type { %struct.rb_node* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.epoll_event = type opaque
%struct.timeval = type { i64, i64 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i32, i32 }
%struct._thread_event = type { %struct._thread*, %struct._thread*, i64, i32, %struct.rb_node }
%union.anon.2 = type { %struct.rb_node }
%struct.nlattr = type { i16, i16 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct._interface = type { [16 x i8], i32, %struct.in_addr, %struct.in6_addr, i32, i8, i32, i16, [32 x i8], [32 x i8], i64, i32, i8, i32, %struct._interface*, i32, %struct._interface*, i8, %struct._garp_delay*, i8, i32, i32, i32, i32, i32, i8, %struct._list* }
%struct.in_addr = type { i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct._garp_delay = type { %struct.timeval, i8, %struct.timeval, i8, %struct.timeval, %struct.timeval, i32 }
%struct.rtnl_link = type opaque
%struct.anon = type { %struct.nlmsghdr, %struct.ifinfomsg, [64 x i8] }
%struct.ifinfomsg = type { i8, i8, i16, i32, i32, i32 }

@all_rp_filter = internal global i32 -1, align 4
@.str = private unnamed_addr constant [14 x i8] c"net/ipv4/conf\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"rp_filter\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"NOTICE: resetting sysctl net.ipv4.conf.all.rp_filter to %d\00", align 1
@default_rp_filter = internal global i32 -1, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"NOTICE: resetting sysctl net.ipv4.conf.default.rp_filter to %d\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"net/ipv6/conf\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"disable_ipv6\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"forwarding\00", align 1
@garp_delay = common global %struct._list* null, align 8
@.str.9 = private unnamed_addr constant [30 x i8] c"Unable to open netlink socket\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"/proc/sys/\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"Unable to read sysctl net.ipv4.conf.all.rp_filter\00", align 1
@.str.13 = private unnamed_addr constant [69 x i8] c"NOTICE: setting sysctl net.ipv4.conf.default.rp_filter from %d to %d\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"Unable to read rp_filter for %s\00", align 1
@.str.15 = private unnamed_addr constant [64 x i8] c"NOTICE: setting sysctl net.ipv4.conf.all.rp_filter from %d to 0\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"Unable to set parameters for %s\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"Unable to reset parameters for %s\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"reset interface flags on %s failed\00", align 1
@nl_cmd = external global %struct._nl_handle, align 8

; Function Attrs: nounwind uwtable
define %struct.nlattr* @nest_start(%struct.nlmsghdr*, i16 zeroext) #0 !dbg !234 {
  %3 = alloca %struct.nlmsghdr*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.nlattr*, align 8
  store %struct.nlmsghdr* %0, %struct.nlmsghdr** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.nlmsghdr** %3, metadata !255, metadata !256), !dbg !257
  store i16 %1, i16* %4, align 2
  call void @llvm.dbg.declare(metadata i16* %4, metadata !258, metadata !256), !dbg !259
  call void @llvm.dbg.declare(metadata %struct.nlattr** %5, metadata !260, metadata !256), !dbg !261
  %6 = load %struct.nlmsghdr*, %struct.nlmsghdr** %3, align 8, !dbg !262
  %7 = bitcast %struct.nlmsghdr* %6 to i8*, !dbg !263
  %8 = load %struct.nlmsghdr*, %struct.nlmsghdr** %3, align 8, !dbg !264
  %9 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %8, i32 0, i32 0, !dbg !265
  %10 = load i32, i32* %9, align 4, !dbg !265
  %11 = zext i32 %10 to i64, !dbg !266
  %12 = getelementptr i8, i8* %7, i64 %11, !dbg !266
  %13 = bitcast i8* %12 to %struct.nlattr*, !dbg !267
  store %struct.nlattr* %13, %struct.nlattr** %5, align 8, !dbg !261
  %14 = load i16, i16* %4, align 2, !dbg !268
  %15 = load %struct.nlattr*, %struct.nlattr** %5, align 8, !dbg !269
  %16 = getelementptr inbounds %struct.nlattr, %struct.nlattr* %15, i32 0, i32 1, !dbg !270
  store i16 %14, i16* %16, align 2, !dbg !271
  %17 = load %struct.nlmsghdr*, %struct.nlmsghdr** %3, align 8, !dbg !272
  %18 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %17, i32 0, i32 0, !dbg !273
  %19 = load i32, i32* %18, align 4, !dbg !274
  %20 = zext i32 %19 to i64, !dbg !274
  %21 = add i64 %20, 4, !dbg !274
  %22 = trunc i64 %21 to i32, !dbg !274
  store i32 %22, i32* %18, align 4, !dbg !274
  %23 = load %struct.nlattr*, %struct.nlattr** %5, align 8, !dbg !275
  ret %struct.nlattr* %23, !dbg !276
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i64 @nest_end(%struct.nlattr*, %struct.nlattr*) #0 !dbg !277 {
  %3 = alloca %struct.nlattr*, align 8
  %4 = alloca %struct.nlattr*, align 8
  store %struct.nlattr* %0, %struct.nlattr** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.nlattr** %3, metadata !280, metadata !256), !dbg !281
  store %struct.nlattr* %1, %struct.nlattr** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.nlattr** %4, metadata !282, metadata !256), !dbg !283
  %5 = load %struct.nlattr*, %struct.nlattr** %3, align 8, !dbg !284
  %6 = bitcast %struct.nlattr* %5 to i8*, !dbg !285
  %7 = load %struct.nlattr*, %struct.nlattr** %4, align 8, !dbg !286
  %8 = bitcast %struct.nlattr* %7 to i8*, !dbg !287
  %9 = ptrtoint i8* %6 to i64, !dbg !288
  %10 = ptrtoint i8* %8 to i64, !dbg !288
  %11 = sub i64 %9, %10, !dbg !288
  %12 = trunc i64 %11 to i16, !dbg !289
  %13 = load %struct.nlattr*, %struct.nlattr** %4, align 8, !dbg !290
  %14 = getelementptr inbounds %struct.nlattr, %struct.nlattr* %13, i32 0, i32 0, !dbg !291
  store i16 %12, i16* %14, align 2, !dbg !292
  %15 = load %struct.nlattr*, %struct.nlattr** %4, align 8, !dbg !293
  %16 = getelementptr inbounds %struct.nlattr, %struct.nlattr* %15, i32 0, i32 0, !dbg !294
  %17 = load i16, i16* %16, align 2, !dbg !294
  %18 = zext i16 %17 to i64, !dbg !293
  ret i64 %18, !dbg !295
}

; Function Attrs: nounwind uwtable
define void @set_promote_secondaries(%struct._interface*) #0 !dbg !296 {
  %2 = alloca %struct._interface*, align 8
  store %struct._interface* %0, %struct._interface** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._interface** %2, metadata !387, metadata !256), !dbg !388
  %3 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !389
  %4 = getelementptr inbounds %struct._interface, %struct._interface* %3, i32 0, i32 25, !dbg !391
  %5 = load i8, i8* %4, align 8, !dbg !391
  %6 = trunc i8 %5 to i1, !dbg !391
  br i1 %6, label %7, label %8, !dbg !392

; <label>:7:                                      ; preds = %1
  br label %17, !dbg !393

; <label>:8:                                      ; preds = %1
  %9 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !394
  %10 = getelementptr inbounds %struct._interface, %struct._interface* %9, i32 0, i32 23, !dbg !396
  %11 = load i32, i32* %10, align 8, !dbg !397
  %12 = add i32 %11, 1, !dbg !397
  store i32 %12, i32* %10, align 8, !dbg !397
  %13 = icmp ne i32 %11, 0, !dbg !397
  br i1 %13, label %14, label %15, !dbg !398

; <label>:14:                                     ; preds = %8
  br label %17, !dbg !399

; <label>:15:                                     ; preds = %8
  %16 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !400
  call void @set_promote_secondaries_devconf(%struct._interface* %16), !dbg !402
  br label %17, !dbg !403

; <label>:17:                                     ; preds = %15, %14, %7
  ret void, !dbg !404
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @set_promote_secondaries_devconf(%struct._interface*) #2 !dbg !405 {
  %2 = alloca %struct._interface*, align 8
  %3 = alloca %struct.nl_sock*, align 8
  %4 = alloca %struct.rtnl_link*, align 8
  %5 = alloca %struct.rtnl_link*, align 8
  %6 = alloca i32, align 4
  store %struct._interface* %0, %struct._interface** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._interface** %2, metadata !406, metadata !256), !dbg !407
  call void @llvm.dbg.declare(metadata %struct.nl_sock** %3, metadata !408, metadata !256), !dbg !412
  call void @llvm.dbg.declare(metadata %struct.rtnl_link** %4, metadata !413, metadata !256), !dbg !417
  store %struct.rtnl_link* null, %struct.rtnl_link** %4, align 8, !dbg !417
  call void @llvm.dbg.declare(metadata %struct.rtnl_link** %5, metadata !418, metadata !256), !dbg !419
  store %struct.rtnl_link* null, %struct.rtnl_link** %5, align 8, !dbg !419
  call void @llvm.dbg.declare(metadata i32* %6, metadata !420, metadata !256), !dbg !421
  %7 = call %struct.nl_sock* @nl_socket_alloc(), !dbg !422
  store %struct.nl_sock* %7, %struct.nl_sock** %3, align 8, !dbg !424
  %8 = icmp ne %struct.nl_sock* %7, null, !dbg !424
  br i1 %8, label %10, label %9, !dbg !425

; <label>:9:                                      ; preds = %1
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0)), !dbg !426
  br label %31, !dbg !428

; <label>:10:                                     ; preds = %1
  %11 = load %struct.nl_sock*, %struct.nl_sock** %3, align 8, !dbg !429
  %12 = call i32 @nl_connect(%struct.nl_sock* %11, i32 0), !dbg !431
  %13 = icmp slt i32 %12, 0, !dbg !432
  br i1 %13, label %14, label %16, !dbg !433

; <label>:14:                                     ; preds = %10
  %15 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !434
  br label %16, !dbg !434

; <label>:16:                                     ; preds = %14, %10
  br label %17, !dbg !435

; <label>:17:                                     ; preds = %16
  br label %18, !dbg !436

; <label>:18:                                     ; preds = %17
  %19 = load %struct.rtnl_link*, %struct.rtnl_link** %4, align 8, !dbg !438
  %20 = icmp ne %struct.rtnl_link* %19, null, !dbg !438
  br i1 %20, label %21, label %23, !dbg !440

; <label>:21:                                     ; preds = %18
  %22 = load %struct.rtnl_link*, %struct.rtnl_link** %4, align 8, !dbg !441
  call void @rtnl_link_put(%struct.rtnl_link* %22), !dbg !442
  br label %23, !dbg !442

; <label>:23:                                     ; preds = %21, %18
  %24 = load %struct.rtnl_link*, %struct.rtnl_link** %5, align 8, !dbg !443
  %25 = icmp ne %struct.rtnl_link* %24, null, !dbg !443
  br i1 %25, label %26, label %28, !dbg !445

; <label>:26:                                     ; preds = %23
  %27 = load %struct.rtnl_link*, %struct.rtnl_link** %5, align 8, !dbg !446
  call void @rtnl_link_put(%struct.rtnl_link* %27), !dbg !447
  br label %28, !dbg !447

; <label>:28:                                     ; preds = %26, %23
  br label %29, !dbg !448

; <label>:29:                                     ; preds = %28
  %30 = load %struct.nl_sock*, %struct.nl_sock** %3, align 8, !dbg !450
  call void @nl_socket_free(%struct.nl_sock* %30), !dbg !451
  br label %31, !dbg !452

; <label>:31:                                     ; preds = %29, %9
  ret void, !dbg !453
}

; Function Attrs: nounwind uwtable
define void @reset_promote_secondaries(%struct._interface*) #0 !dbg !454 {
  %2 = alloca %struct._interface*, align 8
  store %struct._interface* %0, %struct._interface** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._interface** %2, metadata !455, metadata !256), !dbg !456
  %3 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !457
  %4 = getelementptr inbounds %struct._interface, %struct._interface* %3, i32 0, i32 23, !dbg !459
  %5 = load i32, i32* %4, align 8, !dbg !459
  %6 = icmp ne i32 %5, 0, !dbg !457
  br i1 %6, label %7, label %13, !dbg !460

; <label>:7:                                      ; preds = %1
  %8 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !461
  %9 = getelementptr inbounds %struct._interface, %struct._interface* %8, i32 0, i32 23, !dbg !462
  %10 = load i32, i32* %9, align 8, !dbg !463
  %11 = add i32 %10, -1, !dbg !463
  store i32 %11, i32* %9, align 8, !dbg !463
  %12 = icmp ne i32 %11, 0, !dbg !463
  br i1 %12, label %13, label %14, !dbg !464

; <label>:13:                                     ; preds = %7, %1
  br label %16, !dbg !466

; <label>:14:                                     ; preds = %7
  %15 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !467
  call void @reset_promote_secondaries_devconf(%struct._interface* %15), !dbg !469
  br label %16, !dbg !470

; <label>:16:                                     ; preds = %14, %13
  ret void, !dbg !471
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @reset_promote_secondaries_devconf(%struct._interface*) #2 !dbg !472 {
  %2 = alloca %struct._interface*, align 8
  %3 = alloca %struct.nl_sock*, align 8
  %4 = alloca %struct.rtnl_link*, align 8
  %5 = alloca %struct.rtnl_link*, align 8
  store %struct._interface* %0, %struct._interface** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._interface** %2, metadata !473, metadata !256), !dbg !474
  call void @llvm.dbg.declare(metadata %struct.nl_sock** %3, metadata !475, metadata !256), !dbg !476
  call void @llvm.dbg.declare(metadata %struct.rtnl_link** %4, metadata !477, metadata !256), !dbg !478
  store %struct.rtnl_link* null, %struct.rtnl_link** %4, align 8, !dbg !478
  call void @llvm.dbg.declare(metadata %struct.rtnl_link** %5, metadata !479, metadata !256), !dbg !480
  store %struct.rtnl_link* null, %struct.rtnl_link** %5, align 8, !dbg !480
  %6 = call %struct.nl_sock* @nl_socket_alloc(), !dbg !481
  store %struct.nl_sock* %6, %struct.nl_sock** %3, align 8, !dbg !483
  %7 = icmp ne %struct.nl_sock* %6, null, !dbg !483
  br i1 %7, label %9, label %8, !dbg !484

; <label>:8:                                      ; preds = %1
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0)), !dbg !485
  br label %29, !dbg !487

; <label>:9:                                      ; preds = %1
  %10 = load %struct.nl_sock*, %struct.nl_sock** %3, align 8, !dbg !488
  %11 = call i32 @nl_connect(%struct.nl_sock* %10, i32 0), !dbg !490
  %12 = icmp slt i32 %11, 0, !dbg !491
  br i1 %12, label %13, label %15, !dbg !492

; <label>:13:                                     ; preds = %9
  %14 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !493
  br label %15, !dbg !493

; <label>:15:                                     ; preds = %13, %9
  br label %16, !dbg !494

; <label>:16:                                     ; preds = %15
  %17 = load %struct.rtnl_link*, %struct.rtnl_link** %4, align 8, !dbg !495
  %18 = icmp ne %struct.rtnl_link* %17, null, !dbg !495
  br i1 %18, label %19, label %21, !dbg !497

; <label>:19:                                     ; preds = %16
  %20 = load %struct.rtnl_link*, %struct.rtnl_link** %4, align 8, !dbg !498
  call void @rtnl_link_put(%struct.rtnl_link* %20), !dbg !499
  br label %21, !dbg !499

; <label>:21:                                     ; preds = %19, %16
  %22 = load %struct.rtnl_link*, %struct.rtnl_link** %5, align 8, !dbg !500
  %23 = icmp ne %struct.rtnl_link* %22, null, !dbg !500
  br i1 %23, label %24, label %26, !dbg !502

; <label>:24:                                     ; preds = %21
  %25 = load %struct.rtnl_link*, %struct.rtnl_link** %5, align 8, !dbg !503
  call void @rtnl_link_put(%struct.rtnl_link* %25), !dbg !504
  br label %26, !dbg !504

; <label>:26:                                     ; preds = %24, %21
  br label %27, !dbg !505

; <label>:27:                                     ; preds = %26
  %28 = load %struct.nl_sock*, %struct.nl_sock** %3, align 8, !dbg !507
  call void @nl_socket_free(%struct.nl_sock* %28), !dbg !508
  br label %29, !dbg !509

; <label>:29:                                     ; preds = %27, %8
  ret void, !dbg !510
}

; Function Attrs: nounwind uwtable
define void @restore_rp_filter() #0 !dbg !511 {
  %1 = alloca %struct._list*, align 8
  %2 = alloca %struct._element*, align 8
  %3 = alloca %struct._interface*, align 8
  %4 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct._list** %1, metadata !514, metadata !256), !dbg !515
  call void @llvm.dbg.declare(metadata %struct._element** %2, metadata !516, metadata !256), !dbg !518
  call void @llvm.dbg.declare(metadata %struct._interface** %3, metadata !519, metadata !256), !dbg !520
  call void @llvm.dbg.declare(metadata i32* %4, metadata !521, metadata !256), !dbg !522
  %5 = load i32, i32* @all_rp_filter, align 4, !dbg !523
  %6 = icmp eq i32 %5, -1, !dbg !525
  br i1 %6, label %7, label %8, !dbg !526

; <label>:7:                                      ; preds = %0
  br label %91, !dbg !527

; <label>:8:                                      ; preds = %0
  %9 = call i32 @get_sysctl(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0)), !dbg !528
  store i32 %9, i32* %4, align 4, !dbg !529
  %10 = load i32, i32* %4, align 4, !dbg !530
  %11 = icmp eq i32 %10, 0, !dbg !532
  br i1 %11, label %12, label %16, !dbg !533

; <label>:12:                                     ; preds = %8
  %13 = load i32, i32* @all_rp_filter, align 4, !dbg !534
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i32 0, i32 0), i32 %13), !dbg !536
  %14 = load i32, i32* @all_rp_filter, align 4, !dbg !537
  %15 = call i32 @set_sysctl(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 %14), !dbg !538
  br label %16, !dbg !539

; <label>:16:                                     ; preds = %12, %8
  %17 = load i32, i32* @default_rp_filter, align 4, !dbg !540
  %18 = icmp ne i32 %17, -1, !dbg !542
  br i1 %18, label %19, label %29, !dbg !543

; <label>:19:                                     ; preds = %16
  %20 = call i32 @get_sysctl(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0)), !dbg !544
  store i32 %20, i32* %4, align 4, !dbg !546
  %21 = load i32, i32* %4, align 4, !dbg !547
  %22 = load i32, i32* @all_rp_filter, align 4, !dbg !549
  %23 = icmp eq i32 %21, %22, !dbg !550
  br i1 %23, label %24, label %28, !dbg !551

; <label>:24:                                     ; preds = %19
  %25 = load i32, i32* @default_rp_filter, align 4, !dbg !552
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i32 0, i32 0), i32 %25), !dbg !554
  %26 = load i32, i32* @default_rp_filter, align 4, !dbg !555
  %27 = call i32 @set_sysctl(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 %26), !dbg !556
  br label %28, !dbg !557

; <label>:28:                                     ; preds = %24, %19
  store i32 -1, i32* @default_rp_filter, align 4, !dbg !558
  br label %29, !dbg !559

; <label>:29:                                     ; preds = %28, %16
  %30 = call %struct._list* @get_if_list(), !dbg !560
  store %struct._list* %30, %struct._list** %1, align 8, !dbg !561
  %31 = load %struct._list*, %struct._list** %1, align 8, !dbg !562
  %32 = icmp eq %struct._list* %31, null, !dbg !564
  br i1 %32, label %90, label %33, !dbg !565

; <label>:33:                                     ; preds = %29
  %34 = load %struct._list*, %struct._list** %1, align 8, !dbg !566
  %35 = getelementptr inbounds %struct._list, %struct._list* %34, i32 0, i32 0, !dbg !568
  %36 = load %struct._element*, %struct._element** %35, align 8, !dbg !568
  %37 = icmp eq %struct._element* %36, null, !dbg !569
  br i1 %37, label %38, label %43, !dbg !570

; <label>:38:                                     ; preds = %33
  %39 = load %struct._list*, %struct._list** %1, align 8, !dbg !571
  %40 = getelementptr inbounds %struct._list, %struct._list* %39, i32 0, i32 1, !dbg !573
  %41 = load %struct._element*, %struct._element** %40, align 8, !dbg !573
  %42 = icmp eq %struct._element* %41, null, !dbg !574
  br i1 %42, label %90, label %43, !dbg !575

; <label>:43:                                     ; preds = %38, %33
  %44 = load %struct._list*, %struct._list** %1, align 8, !dbg !576
  %45 = icmp ne %struct._list* %44, null, !dbg !579
  br i1 %45, label %47, label %46, !dbg !580

; <label>:46:                                     ; preds = %43
  br label %51, !dbg !581

; <label>:47:                                     ; preds = %43
  %48 = load %struct._list*, %struct._list** %1, align 8, !dbg !583
  %49 = getelementptr inbounds %struct._list, %struct._list* %48, i32 0, i32 0, !dbg !585
  %50 = load %struct._element*, %struct._element** %49, align 8, !dbg !585
  br label %51, !dbg !586

; <label>:51:                                     ; preds = %47, %46
  %52 = phi %struct._element* [ null, %46 ], [ %50, %47 ], !dbg !587
  store %struct._element* %52, %struct._element** %2, align 8, !dbg !589
  br label %53, !dbg !590

; <label>:53:                                     ; preds = %85, %51
  %54 = load %struct._element*, %struct._element** %2, align 8, !dbg !591
  %55 = icmp ne %struct._element* %54, null, !dbg !594
  br i1 %55, label %56, label %89, !dbg !594

; <label>:56:                                     ; preds = %53
  %57 = load %struct._element*, %struct._element** %2, align 8, !dbg !595
  %58 = getelementptr inbounds %struct._element, %struct._element* %57, i32 0, i32 2, !dbg !597
  %59 = load i8*, i8** %58, align 8, !dbg !597
  %60 = bitcast i8* %59 to %struct._interface*, !dbg !598
  store %struct._interface* %60, %struct._interface** %3, align 8, !dbg !599
  %61 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !600
  %62 = getelementptr inbounds %struct._interface, %struct._interface* %61, i32 0, i32 24, !dbg !602
  %63 = load i32, i32* %62, align 4, !dbg !602
  %64 = icmp ne i32 %63, -1, !dbg !603
  br i1 %64, label %65, label %84, !dbg !604

; <label>:65:                                     ; preds = %56
  %66 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !605
  %67 = getelementptr inbounds %struct._interface, %struct._interface* %66, i32 0, i32 0, !dbg !607
  %68 = getelementptr inbounds [16 x i8], [16 x i8]* %67, i32 0, i32 0, !dbg !605
  %69 = call i32 @get_sysctl(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %68, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0)), !dbg !608
  store i32 %69, i32* %4, align 4, !dbg !609
  %70 = load i32, i32* %4, align 4, !dbg !610
  %71 = load i32, i32* @all_rp_filter, align 4, !dbg !612
  %72 = icmp eq i32 %70, %71, !dbg !613
  br i1 %72, label %73, label %83, !dbg !614

; <label>:73:                                     ; preds = %65
  %74 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !615
  %75 = getelementptr inbounds %struct._interface, %struct._interface* %74, i32 0, i32 0, !dbg !617
  %76 = getelementptr inbounds [16 x i8], [16 x i8]* %75, i32 0, i32 0, !dbg !615
  %77 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !618
  %78 = getelementptr inbounds %struct._interface, %struct._interface* %77, i32 0, i32 24, !dbg !619
  %79 = load i32, i32* %78, align 4, !dbg !619
  %80 = call i32 @set_sysctl(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 %79), !dbg !620
  %81 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !621
  %82 = getelementptr inbounds %struct._interface, %struct._interface* %81, i32 0, i32 24, !dbg !622
  store i32 -1, i32* %82, align 4, !dbg !623
  br label %83, !dbg !624

; <label>:83:                                     ; preds = %73, %65
  br label %84, !dbg !625

; <label>:84:                                     ; preds = %83, %56
  br label %85, !dbg !626

; <label>:85:                                     ; preds = %84
  %86 = load %struct._element*, %struct._element** %2, align 8, !dbg !627
  %87 = getelementptr inbounds %struct._element, %struct._element* %86, i32 0, i32 0, !dbg !629
  %88 = load %struct._element*, %struct._element** %87, align 8, !dbg !629
  store %struct._element* %88, %struct._element** %2, align 8, !dbg !630
  br label %53, !dbg !631, !llvm.loop !632

; <label>:89:                                     ; preds = %53
  br label %90, !dbg !634

; <label>:90:                                     ; preds = %89, %38, %29
  store i32 -1, i32* @all_rp_filter, align 4, !dbg !635
  br label %91, !dbg !636

; <label>:91:                                     ; preds = %90, %7
  ret void, !dbg !637
}

; Function Attrs: nounwind uwtable
define internal i32 @get_sysctl(i8*, i8*, i8*) #0 !dbg !639 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [1 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !644, metadata !256), !dbg !645
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !646, metadata !256), !dbg !647
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !648, metadata !256), !dbg !649
  call void @llvm.dbg.declare(metadata i8** %8, metadata !650, metadata !256), !dbg !651
  call void @llvm.dbg.declare(metadata [1 x i8]* %9, metadata !652, metadata !256), !dbg !653
  call void @llvm.dbg.declare(metadata i32* %10, metadata !654, metadata !256), !dbg !655
  call void @llvm.dbg.declare(metadata i64* %11, metadata !656, metadata !256), !dbg !659
  %12 = call i8* @zalloc(i64 4096), !dbg !660
  store i8* %12, i8** %8, align 8, !dbg !661
  %13 = load i8*, i8** %8, align 8, !dbg !662
  %14 = load i8*, i8** %5, align 8, !dbg !663
  %15 = load i8*, i8** %6, align 8, !dbg !664
  %16 = load i8*, i8** %7, align 8, !dbg !665
  call void @make_sysctl_filename(i8* %13, i8* %14, i8* %15, i8* %16), !dbg !666
  %17 = load i8*, i8** %8, align 8, !dbg !667
  %18 = call i32 (i8*, i32, ...) @open(i8* %17, i32 0), !dbg !668
  store i32 %18, i32* %10, align 4, !dbg !669
  %19 = load i8*, i8** %8, align 8, !dbg !670
  call void @free(i8* %19) #6, !dbg !671
  store i8* null, i8** %8, align 8, !dbg !672
  %20 = load i32, i32* %10, align 4, !dbg !673
  %21 = icmp slt i32 %20, 0, !dbg !675
  br i1 %21, label %22, label %23, !dbg !676

; <label>:22:                                     ; preds = %3
  store i32 -1, i32* %4, align 4, !dbg !677
  br label %37, !dbg !677

; <label>:23:                                     ; preds = %3
  %24 = load i32, i32* %10, align 4, !dbg !678
  %25 = bitcast [1 x i8]* %9 to i8*, !dbg !679
  %26 = call i64 @read(i32 %24, i8* %25, i64 1), !dbg !680
  store i64 %26, i64* %11, align 8, !dbg !681
  %27 = load i32, i32* %10, align 4, !dbg !682
  %28 = call i32 @close(i32 %27), !dbg !683
  %29 = load i64, i64* %11, align 8, !dbg !684
  %30 = icmp sle i64 %29, 0, !dbg !686
  br i1 %30, label %31, label %32, !dbg !687

; <label>:31:                                     ; preds = %23
  store i32 -1, i32* %4, align 4, !dbg !688
  br label %37, !dbg !688

; <label>:32:                                     ; preds = %23
  %33 = getelementptr inbounds [1 x i8], [1 x i8]* %9, i64 0, i64 0, !dbg !689
  %34 = load i8, i8* %33, align 1, !dbg !689
  %35 = sext i8 %34 to i32, !dbg !690
  %36 = sub i32 %35, 48, !dbg !691
  store i32 %36, i32* %4, align 4, !dbg !692
  br label %37, !dbg !692

; <label>:37:                                     ; preds = %32, %31, %22
  %38 = load i32, i32* %4, align 4, !dbg !693
  ret i32 %38, !dbg !693
}

declare void @log_message(i32, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal i32 @set_sysctl(i8*, i8*, i8*, i32) #0 !dbg !694 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca [1 x i8], align 1
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !697, metadata !256), !dbg !698
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !699, metadata !256), !dbg !700
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !701, metadata !256), !dbg !702
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !703, metadata !256), !dbg !704
  call void @llvm.dbg.declare(metadata i8** %10, metadata !705, metadata !256), !dbg !706
  call void @llvm.dbg.declare(metadata [1 x i8]* %11, metadata !707, metadata !256), !dbg !708
  call void @llvm.dbg.declare(metadata i32* %12, metadata !709, metadata !256), !dbg !710
  call void @llvm.dbg.declare(metadata i64* %13, metadata !711, metadata !256), !dbg !712
  %14 = call i8* @zalloc(i64 4096), !dbg !713
  store i8* %14, i8** %10, align 8, !dbg !714
  %15 = load i8*, i8** %10, align 8, !dbg !715
  %16 = load i8*, i8** %6, align 8, !dbg !716
  %17 = load i8*, i8** %7, align 8, !dbg !717
  %18 = load i8*, i8** %8, align 8, !dbg !718
  call void @make_sysctl_filename(i8* %15, i8* %16, i8* %17, i8* %18), !dbg !719
  %19 = load i8*, i8** %10, align 8, !dbg !720
  %20 = call i32 (i8*, i32, ...) @open(i8* %19, i32 1), !dbg !721
  store i32 %20, i32* %12, align 4, !dbg !722
  %21 = load i8*, i8** %10, align 8, !dbg !723
  call void @free(i8* %21) #6, !dbg !724
  store i8* null, i8** %10, align 8, !dbg !725
  %22 = load i32, i32* %12, align 4, !dbg !726
  %23 = icmp slt i32 %22, 0, !dbg !728
  br i1 %23, label %24, label %25, !dbg !729

; <label>:24:                                     ; preds = %4
  store i32 -1, i32* %5, align 4, !dbg !730
  br label %39, !dbg !730

; <label>:25:                                     ; preds = %4
  %26 = load i32, i32* %9, align 4, !dbg !731
  %27 = add i32 48, %26, !dbg !732
  %28 = trunc i32 %27 to i8, !dbg !733
  %29 = getelementptr inbounds [1 x i8], [1 x i8]* %11, i64 0, i64 0, !dbg !734
  store i8 %28, i8* %29, align 1, !dbg !735
  %30 = load i32, i32* %12, align 4, !dbg !736
  %31 = bitcast [1 x i8]* %11 to i8*, !dbg !737
  %32 = call i64 @write(i32 %30, i8* %31, i64 1), !dbg !738
  store i64 %32, i64* %13, align 8, !dbg !739
  %33 = load i32, i32* %12, align 4, !dbg !740
  %34 = call i32 @close(i32 %33), !dbg !741
  %35 = load i64, i64* %13, align 8, !dbg !742
  %36 = icmp ne i64 %35, 1, !dbg !744
  br i1 %36, label %37, label %38, !dbg !745

; <label>:37:                                     ; preds = %25
  store i32 -1, i32* %5, align 4, !dbg !746
  br label %39, !dbg !746

; <label>:38:                                     ; preds = %25
  store i32 0, i32* %5, align 4, !dbg !747
  br label %39, !dbg !747

; <label>:39:                                     ; preds = %38, %37, %24
  %40 = load i32, i32* %5, align 4, !dbg !748
  ret i32 %40, !dbg !748
}

declare %struct._list* @get_if_list() #3

; Function Attrs: nounwind uwtable
define void @set_interface_parameters(%struct._interface*, %struct._interface*) #0 !dbg !749 {
  %3 = alloca %struct._interface*, align 8
  %4 = alloca %struct._interface*, align 8
  store %struct._interface* %0, %struct._interface** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._interface** %3, metadata !754, metadata !256), !dbg !755
  store %struct._interface* %1, %struct._interface** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._interface** %4, metadata !756, metadata !256), !dbg !757
  %5 = load i32, i32* @all_rp_filter, align 4, !dbg !758
  %6 = icmp eq i32 %5, -1, !dbg !760
  br i1 %6, label %7, label %8, !dbg !761

; <label>:7:                                      ; preds = %2
  call void @clear_rp_filter(), !dbg !762
  br label %8, !dbg !762

; <label>:8:                                      ; preds = %7, %2
  %9 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !763
  %10 = load %struct._interface*, %struct._interface** %4, align 8, !dbg !765
  call void @set_interface_parameters_devconf(%struct._interface* %9, %struct._interface* %10), !dbg !766
  ret void, !dbg !767
}

; Function Attrs: nounwind uwtable
define internal void @clear_rp_filter() #0 !dbg !768 {
  %1 = alloca %struct._list*, align 8
  %2 = alloca %struct._element*, align 8
  %3 = alloca %struct._interface*, align 8
  %4 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct._list** %1, metadata !769, metadata !256), !dbg !770
  call void @llvm.dbg.declare(metadata %struct._element** %2, metadata !771, metadata !256), !dbg !772
  call void @llvm.dbg.declare(metadata %struct._interface** %3, metadata !773, metadata !256), !dbg !774
  call void @llvm.dbg.declare(metadata i32* %4, metadata !775, metadata !256), !dbg !776
  %5 = call i32 @get_sysctl(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0)), !dbg !777
  store i32 %5, i32* %4, align 4, !dbg !778
  %6 = load i32, i32* %4, align 4, !dbg !779
  %7 = icmp eq i32 %6, -1, !dbg !781
  br i1 %7, label %8, label %9, !dbg !782

; <label>:8:                                      ; preds = %0
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.12, i32 0, i32 0)), !dbg !783
  br label %89, !dbg !785

; <label>:9:                                      ; preds = %0
  %10 = load i32, i32* %4, align 4, !dbg !786
  %11 = icmp eq i32 %10, 0, !dbg !788
  br i1 %11, label %12, label %13, !dbg !789

; <label>:12:                                     ; preds = %9
  br label %89, !dbg !790

; <label>:13:                                     ; preds = %9
  %14 = load i32, i32* %4, align 4, !dbg !791
  store i32 %14, i32* @all_rp_filter, align 4, !dbg !792
  %15 = call i32 @get_sysctl(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0)), !dbg !793
  store i32 %15, i32* %4, align 4, !dbg !794
  %16 = load i32, i32* %4, align 4, !dbg !795
  %17 = load i32, i32* @all_rp_filter, align 4, !dbg !797
  %18 = icmp ult i32 %16, %17, !dbg !798
  br i1 %18, label %19, label %25, !dbg !799

; <label>:19:                                     ; preds = %13
  %20 = load i32, i32* %4, align 4, !dbg !800
  %21 = load i32, i32* @all_rp_filter, align 4, !dbg !802
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.13, i32 0, i32 0), i32 %20, i32 %21), !dbg !803
  %22 = load i32, i32* @all_rp_filter, align 4, !dbg !804
  %23 = call i32 @set_sysctl(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 %22), !dbg !805
  %24 = load i32, i32* %4, align 4, !dbg !806
  store i32 %24, i32* @default_rp_filter, align 4, !dbg !807
  br label %25, !dbg !808

; <label>:25:                                     ; preds = %19, %13
  call void @kernel_netlink_poll(), !dbg !809
  %26 = call %struct._list* @get_if_list(), !dbg !810
  store %struct._list* %26, %struct._list** %1, align 8, !dbg !811
  %27 = load %struct._list*, %struct._list** %1, align 8, !dbg !812
  %28 = icmp eq %struct._list* %27, null, !dbg !814
  br i1 %28, label %86, label %29, !dbg !815

; <label>:29:                                     ; preds = %25
  %30 = load %struct._list*, %struct._list** %1, align 8, !dbg !816
  %31 = getelementptr inbounds %struct._list, %struct._list* %30, i32 0, i32 0, !dbg !818
  %32 = load %struct._element*, %struct._element** %31, align 8, !dbg !818
  %33 = icmp eq %struct._element* %32, null, !dbg !819
  br i1 %33, label %34, label %39, !dbg !820

; <label>:34:                                     ; preds = %29
  %35 = load %struct._list*, %struct._list** %1, align 8, !dbg !821
  %36 = getelementptr inbounds %struct._list, %struct._list* %35, i32 0, i32 1, !dbg !823
  %37 = load %struct._element*, %struct._element** %36, align 8, !dbg !823
  %38 = icmp eq %struct._element* %37, null, !dbg !824
  br i1 %38, label %86, label %39, !dbg !825

; <label>:39:                                     ; preds = %34, %29
  %40 = load %struct._list*, %struct._list** %1, align 8, !dbg !826
  %41 = icmp ne %struct._list* %40, null, !dbg !829
  br i1 %41, label %43, label %42, !dbg !830

; <label>:42:                                     ; preds = %39
  br label %47, !dbg !831

; <label>:43:                                     ; preds = %39
  %44 = load %struct._list*, %struct._list** %1, align 8, !dbg !833
  %45 = getelementptr inbounds %struct._list, %struct._list* %44, i32 0, i32 0, !dbg !835
  %46 = load %struct._element*, %struct._element** %45, align 8, !dbg !835
  br label %47, !dbg !836

; <label>:47:                                     ; preds = %43, %42
  %48 = phi %struct._element* [ null, %42 ], [ %46, %43 ], !dbg !837
  store %struct._element* %48, %struct._element** %2, align 8, !dbg !839
  br label %49, !dbg !840

; <label>:49:                                     ; preds = %81, %47
  %50 = load %struct._element*, %struct._element** %2, align 8, !dbg !841
  %51 = icmp ne %struct._element* %50, null, !dbg !844
  br i1 %51, label %52, label %85, !dbg !844

; <label>:52:                                     ; preds = %49
  %53 = load %struct._element*, %struct._element** %2, align 8, !dbg !845
  %54 = getelementptr inbounds %struct._element, %struct._element* %53, i32 0, i32 2, !dbg !847
  %55 = load i8*, i8** %54, align 8, !dbg !847
  %56 = bitcast i8* %55 to %struct._interface*, !dbg !848
  store %struct._interface* %56, %struct._interface** %3, align 8, !dbg !849
  %57 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !850
  %58 = getelementptr inbounds %struct._interface, %struct._interface* %57, i32 0, i32 0, !dbg !852
  %59 = getelementptr inbounds [16 x i8], [16 x i8]* %58, i32 0, i32 0, !dbg !850
  %60 = call i32 @get_sysctl(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0)), !dbg !853
  store i32 %60, i32* %4, align 4, !dbg !854
  %61 = icmp eq i32 %60, -1, !dbg !855
  br i1 %61, label %62, label %66, !dbg !856

; <label>:62:                                     ; preds = %52
  %63 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !857
  %64 = getelementptr inbounds %struct._interface, %struct._interface* %63, i32 0, i32 0, !dbg !858
  %65 = getelementptr inbounds [16 x i8], [16 x i8]* %64, i32 0, i32 0, !dbg !857
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i32 0, i32 0), i8* %65), !dbg !859
  br label %80, !dbg !859

; <label>:66:                                     ; preds = %52
  %67 = load i32, i32* %4, align 4, !dbg !860
  %68 = load i32, i32* @all_rp_filter, align 4, !dbg !862
  %69 = icmp ult i32 %67, %68, !dbg !863
  br i1 %69, label %70, label %79, !dbg !864

; <label>:70:                                     ; preds = %66
  %71 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !865
  %72 = getelementptr inbounds %struct._interface, %struct._interface* %71, i32 0, i32 0, !dbg !867
  %73 = getelementptr inbounds [16 x i8], [16 x i8]* %72, i32 0, i32 0, !dbg !865
  %74 = load i32, i32* @all_rp_filter, align 4, !dbg !868
  %75 = call i32 @set_sysctl(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 %74), !dbg !869
  %76 = load i32, i32* %4, align 4, !dbg !870
  %77 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !871
  %78 = getelementptr inbounds %struct._interface, %struct._interface* %77, i32 0, i32 24, !dbg !872
  store i32 %76, i32* %78, align 4, !dbg !873
  br label %79, !dbg !874

; <label>:79:                                     ; preds = %70, %66
  br label %80

; <label>:80:                                     ; preds = %79, %62
  br label %81, !dbg !875

; <label>:81:                                     ; preds = %80
  %82 = load %struct._element*, %struct._element** %2, align 8, !dbg !876
  %83 = getelementptr inbounds %struct._element, %struct._element* %82, i32 0, i32 0, !dbg !878
  %84 = load %struct._element*, %struct._element** %83, align 8, !dbg !878
  store %struct._element* %84, %struct._element** %2, align 8, !dbg !879
  br label %49, !dbg !880, !llvm.loop !881

; <label>:85:                                     ; preds = %49
  br label %86, !dbg !883

; <label>:86:                                     ; preds = %85, %34, %25
  %87 = load i32, i32* @all_rp_filter, align 4, !dbg !884
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.15, i32 0, i32 0), i32 %87), !dbg !885
  %88 = call i32 @set_sysctl(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 0), !dbg !886
  br label %89, !dbg !887

; <label>:89:                                     ; preds = %86, %12, %8
  ret void, !dbg !888
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @set_interface_parameters_devconf(%struct._interface*, %struct._interface*) #2 !dbg !890 {
  %3 = alloca %struct._interface*, align 8
  %4 = alloca %struct._interface*, align 8
  store %struct._interface* %0, %struct._interface** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._interface** %3, metadata !891, metadata !256), !dbg !892
  store %struct._interface* %1, %struct._interface** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._interface** %4, metadata !893, metadata !256), !dbg !894
  %5 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !895
  %6 = load %struct._interface*, %struct._interface** %4, align 8, !dbg !897
  %7 = call i32 @netlink_set_interface_parameters(%struct._interface* %5, %struct._interface* %6), !dbg !898
  %8 = icmp ne i32 %7, 0, !dbg !898
  br i1 %8, label %9, label %13, !dbg !899

; <label>:9:                                      ; preds = %2
  %10 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !900
  %11 = getelementptr inbounds %struct._interface, %struct._interface* %10, i32 0, i32 0, !dbg !901
  %12 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i32 0, i32 0, !dbg !900
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i32 0, i32 0), i8* %12), !dbg !902
  br label %13, !dbg !902

; <label>:13:                                     ; preds = %9, %2
  ret void, !dbg !903
}

; Function Attrs: nounwind uwtable
define void @reset_interface_parameters(%struct._interface*) #0 !dbg !904 {
  %2 = alloca %struct._interface*, align 8
  store %struct._interface* %0, %struct._interface** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._interface** %2, metadata !905, metadata !256), !dbg !906
  %3 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !907
  call void @reset_interface_parameters_devconf(%struct._interface* %3), !dbg !909
  ret void, !dbg !910
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @reset_interface_parameters_devconf(%struct._interface*) #2 !dbg !911 {
  %2 = alloca %struct._interface*, align 8
  store %struct._interface* %0, %struct._interface** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._interface** %2, metadata !912, metadata !256), !dbg !913
  %3 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !914
  %4 = getelementptr inbounds %struct._interface, %struct._interface* %3, i32 0, i32 20, !dbg !916
  %5 = load i32, i32* %4, align 4, !dbg !916
  %6 = icmp ne i32 %5, 0, !dbg !914
  br i1 %6, label %7, label %22, !dbg !917

; <label>:7:                                      ; preds = %1
  %8 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !918
  %9 = getelementptr inbounds %struct._interface, %struct._interface* %8, i32 0, i32 20, !dbg !920
  %10 = load i32, i32* %9, align 4, !dbg !921
  %11 = add nsw i32 %10, -1, !dbg !921
  store i32 %11, i32* %9, align 4, !dbg !921
  %12 = icmp eq i32 %11, 0, !dbg !922
  br i1 %12, label %13, label %22, !dbg !923

; <label>:13:                                     ; preds = %7
  %14 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !924
  %15 = call i32 @netlink_reset_interface_parameters(%struct._interface* %14), !dbg !927
  %16 = icmp ne i32 %15, 0, !dbg !927
  br i1 %16, label %17, label %21, !dbg !928

; <label>:17:                                     ; preds = %13
  %18 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !929
  %19 = getelementptr inbounds %struct._interface, %struct._interface* %18, i32 0, i32 0, !dbg !930
  %20 = getelementptr inbounds [16 x i8], [16 x i8]* %19, i32 0, i32 0, !dbg !929
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i32 0, i32 0), i8* %20), !dbg !931
  br label %21, !dbg !931

; <label>:21:                                     ; preds = %17, %13
  br label %22, !dbg !932

; <label>:22:                                     ; preds = %21, %7, %1
  ret void, !dbg !933
}

; Function Attrs: nounwind uwtable
define void @link_set_ipv6(%struct._interface*, i1 zeroext) #0 !dbg !934 {
  %3 = alloca %struct._interface*, align 8
  %4 = alloca i8, align 1
  store %struct._interface* %0, %struct._interface** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._interface** %3, metadata !937, metadata !256), !dbg !938
  %5 = zext i1 %1 to i8
  store i8 %5, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !939, metadata !256), !dbg !940
  %6 = load %struct._interface*, %struct._interface** %3, align 8, !dbg !941
  %7 = getelementptr inbounds %struct._interface, %struct._interface* %6, i32 0, i32 0, !dbg !942
  %8 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i32 0, i32 0, !dbg !941
  %9 = load i8, i8* %4, align 1, !dbg !943
  %10 = trunc i8 %9 to i1, !dbg !943
  %11 = select i1 %10, i32 0, i32 1, !dbg !943
  %12 = call i32 @set_sysctl(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i32 %11), !dbg !944
  ret void, !dbg !945
}

; Function Attrs: nounwind uwtable
define zeroext i1 @get_ipv6_forwarding(%struct._interface*) #0 !dbg !946 {
  %2 = alloca %struct._interface*, align 8
  store %struct._interface* %0, %struct._interface** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._interface** %2, metadata !949, metadata !256), !dbg !950
  %3 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !951
  %4 = getelementptr inbounds %struct._interface, %struct._interface* %3, i32 0, i32 0, !dbg !952
  %5 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i32 0, i32 0, !dbg !951
  %6 = call i32 @get_sysctl(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0)), !dbg !953
  %7 = icmp ne i32 %6, 0, !dbg !954
  %8 = xor i1 %7, true, !dbg !954
  %9 = xor i1 %8, true, !dbg !955
  ret i1 %9, !dbg !956
}

declare %struct.nl_sock* @nl_socket_alloc() #3

declare i32 @nl_connect(%struct.nl_sock*, i32) #3

declare i32 @assert(...) #3

declare void @rtnl_link_put(%struct.rtnl_link*) #3

declare void @nl_socket_free(%struct.nl_sock*) #3

declare i8* @zalloc(i64) #3

; Function Attrs: nounwind uwtable
define internal void @make_sysctl_filename(i8*, i8*, i8*, i8*) #0 !dbg !957 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !960, metadata !256), !dbg !961
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !962, metadata !256), !dbg !963
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !964, metadata !256), !dbg !965
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !966, metadata !256), !dbg !967
  %9 = load i8*, i8** %5, align 8, !dbg !968
  %10 = call i8* @strcpy(i8* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0)) #6, !dbg !969
  %11 = load i8*, i8** %5, align 8, !dbg !970
  %12 = load i8*, i8** %6, align 8, !dbg !971
  %13 = call i8* @strcat(i8* %11, i8* %12) #6, !dbg !972
  %14 = load i8*, i8** %5, align 8, !dbg !973
  %15 = call i8* @strcat(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #6, !dbg !974
  %16 = load i8*, i8** %5, align 8, !dbg !975
  %17 = load i8*, i8** %7, align 8, !dbg !976
  %18 = call i8* @strcat(i8* %16, i8* %17) #6, !dbg !977
  %19 = load i8*, i8** %5, align 8, !dbg !978
  %20 = call i8* @strcat(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)) #6, !dbg !979
  %21 = load i8*, i8** %5, align 8, !dbg !980
  %22 = load i8*, i8** %8, align 8, !dbg !981
  %23 = call i8* @strcat(i8* %21, i8* %22) #6, !dbg !982
  ret void, !dbg !983
}

declare i32 @open(i8*, i32, ...) #3

; Function Attrs: nounwind
declare void @free(i8*) #4

declare i64 @read(i32, i8*, i64) #3

declare i32 @close(i32) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #4

declare i64 @write(i32, i8*, i64) #3

declare void @kernel_netlink_poll() #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @netlink_set_interface_parameters(%struct._interface*, %struct._interface*) #2 !dbg !984 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._interface*, align 8
  %5 = alloca %struct._interface*, align 8
  %6 = alloca %struct.nl_sock*, align 8
  %7 = alloca %struct.rtnl_link*, align 8
  %8 = alloca %struct.rtnl_link*, align 8
  %9 = alloca i32, align 4
  store %struct._interface* %0, %struct._interface** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._interface** %4, metadata !987, metadata !256), !dbg !988
  store %struct._interface* %1, %struct._interface** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._interface** %5, metadata !989, metadata !256), !dbg !990
  call void @llvm.dbg.declare(metadata %struct.nl_sock** %6, metadata !991, metadata !256), !dbg !992
  call void @llvm.dbg.declare(metadata %struct.rtnl_link** %7, metadata !993, metadata !256), !dbg !994
  store %struct.rtnl_link* null, %struct.rtnl_link** %7, align 8, !dbg !994
  call void @llvm.dbg.declare(metadata %struct.rtnl_link** %8, metadata !995, metadata !256), !dbg !996
  store %struct.rtnl_link* null, %struct.rtnl_link** %8, align 8, !dbg !996
  call void @llvm.dbg.declare(metadata i32* %9, metadata !997, metadata !256), !dbg !998
  store i32 0, i32* %9, align 4, !dbg !998
  %10 = call %struct.nl_sock* @nl_socket_alloc(), !dbg !999
  store %struct.nl_sock* %10, %struct.nl_sock** %6, align 8, !dbg !1001
  %11 = icmp ne %struct.nl_sock* %10, null, !dbg !1001
  br i1 %11, label %13, label %12, !dbg !1002

; <label>:12:                                     ; preds = %2
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0)), !dbg !1003
  store i32 -1, i32* %3, align 4, !dbg !1005
  br label %34, !dbg !1005

; <label>:13:                                     ; preds = %2
  %14 = load %struct.nl_sock*, %struct.nl_sock** %6, align 8, !dbg !1006
  %15 = call i32 @nl_connect(%struct.nl_sock* %14, i32 0), !dbg !1008
  %16 = icmp slt i32 %15, 0, !dbg !1009
  br i1 %16, label %17, label %19, !dbg !1010

; <label>:17:                                     ; preds = %13
  %18 = call i32 (i32, ...) bitcast (i32 (...)* @assert to i32 (i32, ...)*)(i32 0), !dbg !1011
  br label %19, !dbg !1011

; <label>:19:                                     ; preds = %17, %13
  br label %20, !dbg !1012

; <label>:20:                                     ; preds = %19
  store i32 -1, i32* %9, align 4, !dbg !1013
  %21 = load %struct.rtnl_link*, %struct.rtnl_link** %7, align 8, !dbg !1014
  %22 = icmp ne %struct.rtnl_link* %21, null, !dbg !1014
  br i1 %22, label %23, label %25, !dbg !1016

; <label>:23:                                     ; preds = %20
  %24 = load %struct.rtnl_link*, %struct.rtnl_link** %7, align 8, !dbg !1017
  call void @rtnl_link_put(%struct.rtnl_link* %24), !dbg !1018
  br label %25, !dbg !1018

; <label>:25:                                     ; preds = %23, %20
  %26 = load %struct.rtnl_link*, %struct.rtnl_link** %8, align 8, !dbg !1019
  %27 = icmp ne %struct.rtnl_link* %26, null, !dbg !1019
  br i1 %27, label %28, label %30, !dbg !1021

; <label>:28:                                     ; preds = %25
  %29 = load %struct.rtnl_link*, %struct.rtnl_link** %8, align 8, !dbg !1022
  call void @rtnl_link_put(%struct.rtnl_link* %29), !dbg !1023
  br label %30, !dbg !1023

; <label>:30:                                     ; preds = %28, %25
  br label %31, !dbg !1024

; <label>:31:                                     ; preds = %30
  %32 = load %struct.nl_sock*, %struct.nl_sock** %6, align 8, !dbg !1026
  call void @nl_socket_free(%struct.nl_sock* %32), !dbg !1027
  %33 = load i32, i32* %9, align 4, !dbg !1028
  store i32 %33, i32* %3, align 4, !dbg !1029
  br label %34, !dbg !1029

; <label>:34:                                     ; preds = %31, %12
  %35 = load i32, i32* %3, align 4, !dbg !1030
  ret i32 %35, !dbg !1030
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @netlink_reset_interface_parameters(%struct._interface*) #2 !dbg !1031 {
  %2 = alloca %struct._interface*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct._interface* %0, %struct._interface** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._interface** %2, metadata !1034, metadata !256), !dbg !1035
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1036, metadata !256), !dbg !1037
  store i32 0, i32* %3, align 4, !dbg !1037
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1038, metadata !256), !dbg !1039
  store i32 0, i32* %4, align 4, !dbg !1039
  %5 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !1040
  %6 = getelementptr inbounds %struct._interface, %struct._interface* %5, i32 0, i32 21, !dbg !1042
  %7 = load i32, i32* %6, align 8, !dbg !1042
  %8 = icmp ne i32 %7, 0, !dbg !1040
  br i1 %8, label %9, label %12, !dbg !1043

; <label>:9:                                      ; preds = %1
  %10 = load i32, i32* %4, align 4, !dbg !1044
  %11 = or i32 %10, 524288, !dbg !1044
  store i32 %11, i32* %4, align 4, !dbg !1044
  br label %12, !dbg !1045

; <label>:12:                                     ; preds = %9, %1
  %13 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !1046
  %14 = getelementptr inbounds %struct._interface, %struct._interface* %13, i32 0, i32 22, !dbg !1048
  %15 = load i32, i32* %14, align 4, !dbg !1048
  %16 = icmp ne i32 %15, 0, !dbg !1046
  br i1 %16, label %17, label %20, !dbg !1049

; <label>:17:                                     ; preds = %12
  %18 = load i32, i32* %4, align 4, !dbg !1050
  %19 = or i32 %18, 8192, !dbg !1050
  store i32 %19, i32* %4, align 4, !dbg !1050
  br label %20, !dbg !1051

; <label>:20:                                     ; preds = %17, %12
  %21 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !1052
  %22 = getelementptr inbounds %struct._interface, %struct._interface* %21, i32 0, i32 1, !dbg !1054
  %23 = load i32, i32* %22, align 8, !dbg !1054
  %24 = load i32, i32* %4, align 4, !dbg !1055
  %25 = call i32 @netlink_set_interface_flags(i32 %23, i32 %24, i32 532480), !dbg !1056
  store i32 %25, i32* %3, align 4, !dbg !1057
  %26 = icmp ne i32 %25, 0, !dbg !1057
  br i1 %26, label %27, label %31, !dbg !1058

; <label>:27:                                     ; preds = %20
  %28 = load %struct._interface*, %struct._interface** %2, align 8, !dbg !1059
  %29 = getelementptr inbounds %struct._interface, %struct._interface* %28, i32 0, i32 0, !dbg !1061
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %29, i32 0, i32 0, !dbg !1059
  call void (i32, i8*, ...) @log_message(i32 6, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i32 0, i32 0), i8* %30), !dbg !1062
  br label %31, !dbg !1063

; <label>:31:                                     ; preds = %27, %20
  %32 = load i32, i32* %3, align 4, !dbg !1064
  ret i32 %32, !dbg !1065
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @netlink_set_interface_flags(i32, i32, i32) #2 !dbg !1066 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.anon, align 4
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca %struct.nlattr*, align 8
  %11 = alloca %struct.nlattr*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1069, metadata !256), !dbg !1070
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1071, metadata !256), !dbg !1072
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1073, metadata !256), !dbg !1074
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1075, metadata !256), !dbg !1076
  store i32 0, i32* %7, align 4, !dbg !1076
  call void @llvm.dbg.declare(metadata %struct.anon* %8, metadata !1077, metadata !256), !dbg !1094
  call void @llvm.dbg.declare(metadata %struct.nlattr** %9, metadata !1095, metadata !256), !dbg !1096
  call void @llvm.dbg.declare(metadata %struct.nlattr** %10, metadata !1097, metadata !256), !dbg !1098
  call void @llvm.dbg.declare(metadata %struct.nlattr** %11, metadata !1099, metadata !256), !dbg !1100
  %12 = bitcast %struct.anon* %8 to i8*, !dbg !1101
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 96, i32 4, i1 false), !dbg !1101
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0, !dbg !1102
  %14 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %13, i32 0, i32 0, !dbg !1103
  store i32 32, i32* %14, align 4, !dbg !1104
  %15 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0, !dbg !1105
  %16 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %15, i32 0, i32 2, !dbg !1106
  store i16 1, i16* %16, align 2, !dbg !1107
  %17 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0, !dbg !1108
  %18 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %17, i32 0, i32 1, !dbg !1109
  store i16 16, i16* %18, align 4, !dbg !1110
  %19 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 1, !dbg !1111
  %20 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %19, i32 0, i32 0, !dbg !1112
  store i8 0, i8* %20, align 4, !dbg !1113
  %21 = load i32, i32* %4, align 4, !dbg !1114
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 1, !dbg !1115
  %23 = getelementptr inbounds %struct.ifinfomsg, %struct.ifinfomsg* %22, i32 0, i32 3, !dbg !1116
  store i32 %21, i32* %23, align 4, !dbg !1117
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0, !dbg !1118
  %25 = call %struct.nlattr* @nest_start(%struct.nlmsghdr* %24, i16 zeroext 26), !dbg !1119
  store %struct.nlattr* %25, %struct.nlattr** %9, align 8, !dbg !1120
  %26 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0, !dbg !1121
  %27 = call %struct.nlattr* @nest_start(%struct.nlmsghdr* %26, i16 zeroext 2), !dbg !1122
  store %struct.nlattr* %27, %struct.nlattr** %10, align 8, !dbg !1123
  %28 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0, !dbg !1124
  %29 = call %struct.nlattr* @nest_start(%struct.nlmsghdr* %28, i16 zeroext 1), !dbg !1125
  store %struct.nlattr* %29, %struct.nlattr** %11, align 8, !dbg !1126
  %30 = load i32, i32* %6, align 4, !dbg !1127
  %31 = and i32 %30, 8192, !dbg !1129
  %32 = icmp ne i32 %31, 0, !dbg !1129
  br i1 %32, label %33, label %39, !dbg !1130

; <label>:33:                                     ; preds = %3
  %34 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0, !dbg !1131
  %35 = load i32, i32* %5, align 4, !dbg !1132
  %36 = ashr i32 %35, 13, !dbg !1133
  %37 = and i32 %36, 1, !dbg !1134
  %38 = call i32 @addattr32(%struct.nlmsghdr* %34, i64 96, i16 zeroext 13, i32 %37), !dbg !1135
  br label %39, !dbg !1135

; <label>:39:                                     ; preds = %33, %3
  %40 = load i32, i32* %6, align 4, !dbg !1136
  %41 = and i32 %40, 524288, !dbg !1138
  %42 = icmp ne i32 %41, 0, !dbg !1138
  br i1 %42, label %43, label %49, !dbg !1139

; <label>:43:                                     ; preds = %39
  %44 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0, !dbg !1140
  %45 = load i32, i32* %5, align 4, !dbg !1141
  %46 = ashr i32 %45, 19, !dbg !1142
  %47 = and i32 %46, 1, !dbg !1143
  %48 = call i32 @addattr32(%struct.nlmsghdr* %44, i64 96, i16 zeroext 19, i32 %47), !dbg !1144
  br label %49, !dbg !1144

; <label>:49:                                     ; preds = %43, %39
  %50 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0, !dbg !1145
  %51 = bitcast %struct.nlmsghdr* %50 to i8*, !dbg !1146
  %52 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0, !dbg !1147
  %53 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %52, i32 0, i32 0, !dbg !1148
  %54 = load i32, i32* %53, align 4, !dbg !1148
  %55 = zext i32 %54 to i64, !dbg !1149
  %56 = getelementptr i8, i8* %51, i64 %55, !dbg !1149
  %57 = bitcast i8* %56 to %struct.nlattr*, !dbg !1150
  %58 = load %struct.nlattr*, %struct.nlattr** %11, align 8, !dbg !1151
  %59 = call i64 @nest_end(%struct.nlattr* %57, %struct.nlattr* %58), !dbg !1152
  %60 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0, !dbg !1153
  %61 = bitcast %struct.nlmsghdr* %60 to i8*, !dbg !1154
  %62 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0, !dbg !1155
  %63 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %62, i32 0, i32 0, !dbg !1156
  %64 = load i32, i32* %63, align 4, !dbg !1156
  %65 = zext i32 %64 to i64, !dbg !1157
  %66 = getelementptr i8, i8* %61, i64 %65, !dbg !1157
  %67 = bitcast i8* %66 to %struct.nlattr*, !dbg !1158
  %68 = load %struct.nlattr*, %struct.nlattr** %10, align 8, !dbg !1159
  %69 = call i64 @nest_end(%struct.nlattr* %67, %struct.nlattr* %68), !dbg !1160
  %70 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0, !dbg !1161
  %71 = bitcast %struct.nlmsghdr* %70 to i8*, !dbg !1162
  %72 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0, !dbg !1163
  %73 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %72, i32 0, i32 0, !dbg !1164
  %74 = load i32, i32* %73, align 4, !dbg !1164
  %75 = zext i32 %74 to i64, !dbg !1165
  %76 = getelementptr i8, i8* %71, i64 %75, !dbg !1165
  %77 = bitcast i8* %76 to %struct.nlattr*, !dbg !1166
  %78 = load %struct.nlattr*, %struct.nlattr** %9, align 8, !dbg !1167
  %79 = call i64 @nest_end(%struct.nlattr* %77, %struct.nlattr* %78), !dbg !1168
  %80 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0, !dbg !1169
  %81 = call i64 @netlink_talk(%struct._nl_handle* @nl_cmd, %struct.nlmsghdr* %80), !dbg !1171
  %82 = icmp slt i64 %81, 0, !dbg !1172
  br i1 %82, label %83, label %84, !dbg !1173

; <label>:83:                                     ; preds = %49
  store i32 1, i32* %7, align 4, !dbg !1174
  br label %84, !dbg !1175

; <label>:84:                                     ; preds = %83, %49
  %85 = load i32, i32* %7, align 4, !dbg !1176
  ret i32 %85, !dbg !1177
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

declare i32 @addattr32(%struct.nlmsghdr*, i64, i16 zeroext, i32) #3

declare i64 @netlink_talk(%struct._nl_handle*, %struct.nlmsghdr*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!231, !232}
!llvm.ident = !{!233}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !138, globals: !144)
!1 = !DIFile(filename: "[inter]keepalived--vrrp--vrrp_if_config.o.i", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!2 = !{!3, !36, !89, !133}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 137, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/linux/ip.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35}
!6 = !DIEnumerator(name: "IPV4_DEVCONF_FORWARDING", value: 1)
!7 = !DIEnumerator(name: "IPV4_DEVCONF_MC_FORWARDING", value: 2)
!8 = !DIEnumerator(name: "IPV4_DEVCONF_PROXY_ARP", value: 3)
!9 = !DIEnumerator(name: "IPV4_DEVCONF_ACCEPT_REDIRECTS", value: 4)
!10 = !DIEnumerator(name: "IPV4_DEVCONF_SECURE_REDIRECTS", value: 5)
!11 = !DIEnumerator(name: "IPV4_DEVCONF_SEND_REDIRECTS", value: 6)
!12 = !DIEnumerator(name: "IPV4_DEVCONF_SHARED_MEDIA", value: 7)
!13 = !DIEnumerator(name: "IPV4_DEVCONF_RP_FILTER", value: 8)
!14 = !DIEnumerator(name: "IPV4_DEVCONF_ACCEPT_SOURCE_ROUTE", value: 9)
!15 = !DIEnumerator(name: "IPV4_DEVCONF_BOOTP_RELAY", value: 10)
!16 = !DIEnumerator(name: "IPV4_DEVCONF_LOG_MARTIANS", value: 11)
!17 = !DIEnumerator(name: "IPV4_DEVCONF_TAG", value: 12)
!18 = !DIEnumerator(name: "IPV4_DEVCONF_ARPFILTER", value: 13)
!19 = !DIEnumerator(name: "IPV4_DEVCONF_MEDIUM_ID", value: 14)
!20 = !DIEnumerator(name: "IPV4_DEVCONF_NOXFRM", value: 15)
!21 = !DIEnumerator(name: "IPV4_DEVCONF_NOPOLICY", value: 16)
!22 = !DIEnumerator(name: "IPV4_DEVCONF_FORCE_IGMP_VERSION", value: 17)
!23 = !DIEnumerator(name: "IPV4_DEVCONF_ARP_ANNOUNCE", value: 18)
!24 = !DIEnumerator(name: "IPV4_DEVCONF_ARP_IGNORE", value: 19)
!25 = !DIEnumerator(name: "IPV4_DEVCONF_PROMOTE_SECONDARIES", value: 20)
!26 = !DIEnumerator(name: "IPV4_DEVCONF_ARP_ACCEPT", value: 21)
!27 = !DIEnumerator(name: "IPV4_DEVCONF_ARP_NOTIFY", value: 22)
!28 = !DIEnumerator(name: "IPV4_DEVCONF_ACCEPT_LOCAL", value: 23)
!29 = !DIEnumerator(name: "IPV4_DEVCONF_SRC_VMARK", value: 24)
!30 = !DIEnumerator(name: "IPV4_DEVCONF_PROXY_ARP_PVLAN", value: 25)
!31 = !DIEnumerator(name: "IPV4_DEVCONF_ROUTE_LOCALNET", value: 26)
!32 = !DIEnumerator(name: "IPV4_DEVCONF_IGMPV2_UNSOLICITED_REPORT_INTERVAL", value: 27)
!33 = !DIEnumerator(name: "IPV4_DEVCONF_IGMPV3_UNSOLICITED_REPORT_INTERVAL", value: 28)
!34 = !DIEnumerator(name: "IPV4_DEVCONF_IGNORE_ROUTES_WITH_LINKDOWN", value: 29)
!35 = !DIEnumerator(name: "__IPV4_DEVCONF_MAX", value: 30)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !37, line: 23, size: 32, align: 32, elements: !38)
!37 = !DIFile(filename: "/usr/include/linux/rtnetlink.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88}
!39 = !DIEnumerator(name: "RTM_BASE", value: 16)
!40 = !DIEnumerator(name: "RTM_NEWLINK", value: 16)
!41 = !DIEnumerator(name: "RTM_DELLINK", value: 17)
!42 = !DIEnumerator(name: "RTM_GETLINK", value: 18)
!43 = !DIEnumerator(name: "RTM_SETLINK", value: 19)
!44 = !DIEnumerator(name: "RTM_NEWADDR", value: 20)
!45 = !DIEnumerator(name: "RTM_DELADDR", value: 21)
!46 = !DIEnumerator(name: "RTM_GETADDR", value: 22)
!47 = !DIEnumerator(name: "RTM_NEWROUTE", value: 24)
!48 = !DIEnumerator(name: "RTM_DELROUTE", value: 25)
!49 = !DIEnumerator(name: "RTM_GETROUTE", value: 26)
!50 = !DIEnumerator(name: "RTM_NEWNEIGH", value: 28)
!51 = !DIEnumerator(name: "RTM_DELNEIGH", value: 29)
!52 = !DIEnumerator(name: "RTM_GETNEIGH", value: 30)
!53 = !DIEnumerator(name: "RTM_NEWRULE", value: 32)
!54 = !DIEnumerator(name: "RTM_DELRULE", value: 33)
!55 = !DIEnumerator(name: "RTM_GETRULE", value: 34)
!56 = !DIEnumerator(name: "RTM_NEWQDISC", value: 36)
!57 = !DIEnumerator(name: "RTM_DELQDISC", value: 37)
!58 = !DIEnumerator(name: "RTM_GETQDISC", value: 38)
!59 = !DIEnumerator(name: "RTM_NEWTCLASS", value: 40)
!60 = !DIEnumerator(name: "RTM_DELTCLASS", value: 41)
!61 = !DIEnumerator(name: "RTM_GETTCLASS", value: 42)
!62 = !DIEnumerator(name: "RTM_NEWTFILTER", value: 44)
!63 = !DIEnumerator(name: "RTM_DELTFILTER", value: 45)
!64 = !DIEnumerator(name: "RTM_GETTFILTER", value: 46)
!65 = !DIEnumerator(name: "RTM_NEWACTION", value: 48)
!66 = !DIEnumerator(name: "RTM_DELACTION", value: 49)
!67 = !DIEnumerator(name: "RTM_GETACTION", value: 50)
!68 = !DIEnumerator(name: "RTM_NEWPREFIX", value: 52)
!69 = !DIEnumerator(name: "RTM_GETMULTICAST", value: 58)
!70 = !DIEnumerator(name: "RTM_GETANYCAST", value: 62)
!71 = !DIEnumerator(name: "RTM_NEWNEIGHTBL", value: 64)
!72 = !DIEnumerator(name: "RTM_GETNEIGHTBL", value: 66)
!73 = !DIEnumerator(name: "RTM_SETNEIGHTBL", value: 67)
!74 = !DIEnumerator(name: "RTM_NEWNDUSEROPT", value: 68)
!75 = !DIEnumerator(name: "RTM_NEWADDRLABEL", value: 72)
!76 = !DIEnumerator(name: "RTM_DELADDRLABEL", value: 73)
!77 = !DIEnumerator(name: "RTM_GETADDRLABEL", value: 74)
!78 = !DIEnumerator(name: "RTM_GETDCB", value: 78)
!79 = !DIEnumerator(name: "RTM_SETDCB", value: 79)
!80 = !DIEnumerator(name: "RTM_NEWNETCONF", value: 80)
!81 = !DIEnumerator(name: "RTM_GETNETCONF", value: 82)
!82 = !DIEnumerator(name: "RTM_NEWMDB", value: 84)
!83 = !DIEnumerator(name: "RTM_DELMDB", value: 85)
!84 = !DIEnumerator(name: "RTM_GETMDB", value: 86)
!85 = !DIEnumerator(name: "RTM_NEWNSID", value: 88)
!86 = !DIEnumerator(name: "RTM_DELNSID", value: 89)
!87 = !DIEnumerator(name: "RTM_GETNSID", value: 90)
!88 = !DIEnumerator(name: "__RTM_MAX", value: 91)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !90, line: 101, size: 32, align: 32, elements: !91)
!90 = !DIFile(filename: "/usr/include/linux/if_link.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!91 = !{!92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132}
!92 = !DIEnumerator(name: "IFLA_UNSPEC", value: 0)
!93 = !DIEnumerator(name: "IFLA_ADDRESS", value: 1)
!94 = !DIEnumerator(name: "IFLA_BROADCAST", value: 2)
!95 = !DIEnumerator(name: "IFLA_IFNAME", value: 3)
!96 = !DIEnumerator(name: "IFLA_MTU", value: 4)
!97 = !DIEnumerator(name: "IFLA_LINK", value: 5)
!98 = !DIEnumerator(name: "IFLA_QDISC", value: 6)
!99 = !DIEnumerator(name: "IFLA_STATS", value: 7)
!100 = !DIEnumerator(name: "IFLA_COST", value: 8)
!101 = !DIEnumerator(name: "IFLA_PRIORITY", value: 9)
!102 = !DIEnumerator(name: "IFLA_MASTER", value: 10)
!103 = !DIEnumerator(name: "IFLA_WIRELESS", value: 11)
!104 = !DIEnumerator(name: "IFLA_PROTINFO", value: 12)
!105 = !DIEnumerator(name: "IFLA_TXQLEN", value: 13)
!106 = !DIEnumerator(name: "IFLA_MAP", value: 14)
!107 = !DIEnumerator(name: "IFLA_WEIGHT", value: 15)
!108 = !DIEnumerator(name: "IFLA_OPERSTATE", value: 16)
!109 = !DIEnumerator(name: "IFLA_LINKMODE", value: 17)
!110 = !DIEnumerator(name: "IFLA_LINKINFO", value: 18)
!111 = !DIEnumerator(name: "IFLA_NET_NS_PID", value: 19)
!112 = !DIEnumerator(name: "IFLA_IFALIAS", value: 20)
!113 = !DIEnumerator(name: "IFLA_NUM_VF", value: 21)
!114 = !DIEnumerator(name: "IFLA_VFINFO_LIST", value: 22)
!115 = !DIEnumerator(name: "IFLA_STATS64", value: 23)
!116 = !DIEnumerator(name: "IFLA_VF_PORTS", value: 24)
!117 = !DIEnumerator(name: "IFLA_PORT_SELF", value: 25)
!118 = !DIEnumerator(name: "IFLA_AF_SPEC", value: 26)
!119 = !DIEnumerator(name: "IFLA_GROUP", value: 27)
!120 = !DIEnumerator(name: "IFLA_NET_NS_FD", value: 28)
!121 = !DIEnumerator(name: "IFLA_EXT_MASK", value: 29)
!122 = !DIEnumerator(name: "IFLA_PROMISCUITY", value: 30)
!123 = !DIEnumerator(name: "IFLA_NUM_TX_QUEUES", value: 31)
!124 = !DIEnumerator(name: "IFLA_NUM_RX_QUEUES", value: 32)
!125 = !DIEnumerator(name: "IFLA_CARRIER", value: 33)
!126 = !DIEnumerator(name: "IFLA_PHYS_PORT_ID", value: 34)
!127 = !DIEnumerator(name: "IFLA_CARRIER_CHANGES", value: 35)
!128 = !DIEnumerator(name: "IFLA_PHYS_SWITCH_ID", value: 36)
!129 = !DIEnumerator(name: "IFLA_LINK_NETNSID", value: 37)
!130 = !DIEnumerator(name: "IFLA_PHYS_PORT_NAME", value: 38)
!131 = !DIEnumerator(name: "IFLA_PROTO_DOWN", value: 39)
!132 = !DIEnumerator(name: "__IFLA_MAX", value: 40)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !90, line: 162, size: 32, align: 32, elements: !134)
!134 = !{!135, !136, !137}
!135 = !DIEnumerator(name: "IFLA_INET_UNSPEC", value: 0)
!136 = !DIEnumerator(name: "IFLA_INET_CONF", value: 1)
!137 = !DIEnumerator(name: "__IFLA_INET_MAX", value: 2)
!138 = !{!139, !140, !141, !142, !143}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!140 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!141 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!142 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!143 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!144 = !{!145, !228, !230}
!145 = distinct !DIGlobalVariable(name: "garp_delay", scope: !0, file: !146, line: 150, type: !147, isLocal: false, isDefinition: true, variable: %struct._list** @garp_delay)
!146 = !DIFile(filename: "./../include/vrrp_if.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "list", file: !148, line: 31, baseType: !149)
!148 = !DIFile(filename: "../../lib/list.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_list", file: !148, line: 39, size: 320, align: 64, elements: !151)
!151 = !{!152, !159, !160, !161, !165}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !150, file: !148, line: 40, baseType: !153, size: 64, align: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64, align: 64)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_element", file: !148, line: 33, size: 192, align: 64, elements: !155)
!155 = !{!156, !157, !158}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !154, file: !148, line: 34, baseType: !153, size: 64, align: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !154, file: !148, line: 35, baseType: !153, size: 64, align: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !154, file: !148, line: 36, baseType: !139, size: 64, align: 64, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !150, file: !148, line: 41, baseType: !153, size: 64, align: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !150, file: !148, line: 42, baseType: !141, size: 32, align: 32, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !150, file: !148, line: 43, baseType: !162, size: 64, align: 64, offset: 192)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{null, !139}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "dump", scope: !150, file: !148, line: 44, baseType: !166, size: 64, align: 64, offset: 256)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{null, !169, !139}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64, align: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !171, line: 48, baseType: !172)
!171 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !173, line: 241, size: 1728, align: 64, elements: !174)
!173 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!174 = !{!175, !176, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !196, !197, !198, !199, !203, !204, !206, !210, !213, !215, !216, !217, !218, !219, !223, !224}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !172, file: !173, line: 242, baseType: !143, size: 32, align: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !172, file: !173, line: 247, baseType: !177, size: 64, align: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !172, file: !173, line: 248, baseType: !177, size: 64, align: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !172, file: !173, line: 249, baseType: !177, size: 64, align: 64, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !172, file: !173, line: 250, baseType: !177, size: 64, align: 64, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !172, file: !173, line: 251, baseType: !177, size: 64, align: 64, offset: 320)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !172, file: !173, line: 252, baseType: !177, size: 64, align: 64, offset: 384)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !172, file: !173, line: 253, baseType: !177, size: 64, align: 64, offset: 448)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !172, file: !173, line: 254, baseType: !177, size: 64, align: 64, offset: 512)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !172, file: !173, line: 256, baseType: !177, size: 64, align: 64, offset: 576)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !172, file: !173, line: 257, baseType: !177, size: 64, align: 64, offset: 640)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !172, file: !173, line: 258, baseType: !177, size: 64, align: 64, offset: 704)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !172, file: !173, line: 260, baseType: !189, size: 64, align: 64, offset: 768)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !173, line: 156, size: 192, align: 64, elements: !191)
!191 = !{!192, !193, !195}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !190, file: !173, line: 157, baseType: !189, size: 64, align: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !190, file: !173, line: 158, baseType: !194, size: 64, align: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !190, file: !173, line: 162, baseType: !143, size: 32, align: 32, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !172, file: !173, line: 262, baseType: !194, size: 64, align: 64, offset: 832)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !172, file: !173, line: 264, baseType: !143, size: 32, align: 32, offset: 896)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !172, file: !173, line: 268, baseType: !143, size: 32, align: 32, offset: 928)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !172, file: !173, line: 270, baseType: !200, size: 64, align: 64, offset: 960)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !201, line: 131, baseType: !202)
!201 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!202 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !172, file: !173, line: 274, baseType: !140, size: 16, align: 16, offset: 1024)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !172, file: !173, line: 275, baseType: !205, size: 8, align: 8, offset: 1040)
!205 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !172, file: !173, line: 276, baseType: !207, size: 8, align: 8, offset: 1048)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 8, align: 8, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: 1)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !172, file: !173, line: 280, baseType: !211, size: 64, align: 64, offset: 1088)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64, align: 64)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !173, line: 150, baseType: null)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !172, file: !173, line: 289, baseType: !214, size: 64, align: 64, offset: 1152)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !201, line: 132, baseType: !202)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !172, file: !173, line: 297, baseType: !139, size: 64, align: 64, offset: 1216)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !172, file: !173, line: 298, baseType: !139, size: 64, align: 64, offset: 1280)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !172, file: !173, line: 299, baseType: !139, size: 64, align: 64, offset: 1344)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !172, file: !173, line: 300, baseType: !139, size: 64, align: 64, offset: 1408)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !172, file: !173, line: 302, baseType: !220, size: 64, align: 64, offset: 1472)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !221, line: 216, baseType: !222)
!221 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!222 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !172, file: !173, line: 303, baseType: !143, size: 32, align: 32, offset: 1536)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !172, file: !173, line: 305, baseType: !225, size: 160, align: 8, offset: 1568)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 160, align: 8, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 20)
!228 = distinct !DIGlobalVariable(name: "all_rp_filter", scope: !0, file: !229, line: 77, type: !141, isLocal: true, isDefinition: true, variable: i32* @all_rp_filter)
!229 = !DIFile(filename: "vrrp_if_config.c", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!230 = distinct !DIGlobalVariable(name: "default_rp_filter", scope: !0, file: !229, line: 78, type: !141, isLocal: true, isDefinition: true, variable: i32* @default_rp_filter)
!231 = !{i32 2, !"Dwarf Version", i32 4}
!232 = !{i32 2, !"Debug Info Version", i32 3}
!233 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!234 = distinct !DISubprogram(name: "nest_start", scope: !229, file: !229, line: 184, type: !235, isLocal: false, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !254)
!235 = !DISubroutineType(types: !236)
!236 = !{!237, !245, !140}
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, align: 64)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nlattr", file: !239, line: 165, size: 32, align: 16, elements: !240)
!239 = !DIFile(filename: "/usr/include/linux/netlink.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!240 = !{!241, !244}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "nla_len", scope: !238, file: !239, line: 166, baseType: !242, size: 16, align: 16)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !243, line: 23, baseType: !140)
!243 = !DIFile(filename: "/usr/include/asm-generic/int-ll64.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!244 = !DIDerivedType(tag: DW_TAG_member, name: "nla_type", scope: !238, file: !239, line: 167, baseType: !242, size: 16, align: 16, offset: 16)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, align: 64)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nlmsghdr", file: !239, line: 42, size: 128, align: 32, elements: !247)
!247 = !{!248, !250, !251, !252, !253}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "nlmsg_len", scope: !246, file: !239, line: 43, baseType: !249, size: 32, align: 32)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !243, line: 26, baseType: !141)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "nlmsg_type", scope: !246, file: !239, line: 44, baseType: !242, size: 16, align: 16, offset: 32)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "nlmsg_flags", scope: !246, file: !239, line: 45, baseType: !242, size: 16, align: 16, offset: 48)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "nlmsg_seq", scope: !246, file: !239, line: 46, baseType: !249, size: 32, align: 32, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "nlmsg_pid", scope: !246, file: !239, line: 47, baseType: !249, size: 32, align: 32, offset: 96)
!254 = !{}
!255 = !DILocalVariable(name: "nlh", arg: 1, scope: !234, file: !229, line: 184, type: !245)
!256 = !DIExpression()
!257 = !DILocation(line: 184, column: 29, scope: !234)
!258 = !DILocalVariable(name: "type", arg: 2, scope: !234, file: !229, line: 184, type: !140)
!259 = !DILocation(line: 184, column: 49, scope: !234)
!260 = !DILocalVariable(name: "nest", scope: !234, file: !229, line: 186, type: !237)
!261 = !DILocation(line: 186, column: 17, scope: !234)
!262 = !DILocation(line: 186, column: 34, scope: !234)
!263 = !DILocation(line: 186, column: 25, scope: !234)
!264 = !DILocation(line: 186, column: 42, scope: !234)
!265 = !DILocation(line: 186, column: 48, scope: !234)
!266 = !DILocation(line: 186, column: 39, scope: !234)
!267 = !DILocation(line: 186, column: 24, scope: !234)
!268 = !DILocation(line: 188, column: 19, scope: !234)
!269 = !DILocation(line: 188, column: 2, scope: !234)
!270 = !DILocation(line: 188, column: 8, scope: !234)
!271 = !DILocation(line: 188, column: 17, scope: !234)
!272 = !DILocation(line: 189, column: 2, scope: !234)
!273 = !DILocation(line: 189, column: 7, scope: !234)
!274 = !DILocation(line: 189, column: 17, scope: !234)
!275 = !DILocation(line: 191, column: 9, scope: !234)
!276 = !DILocation(line: 191, column: 2, scope: !234)
!277 = distinct !DISubprogram(name: "nest_end", scope: !229, file: !229, line: 195, type: !278, isLocal: false, isDefinition: true, scopeLine: 196, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !254)
!278 = !DISubroutineType(types: !279)
!279 = !{!220, !237, !237}
!280 = !DILocalVariable(name: "nla", arg: 1, scope: !277, file: !229, line: 195, type: !237)
!281 = !DILocation(line: 195, column: 25, scope: !277)
!282 = !DILocalVariable(name: "nest", arg: 2, scope: !277, file: !229, line: 195, type: !237)
!283 = !DILocation(line: 195, column: 45, scope: !277)
!284 = !DILocation(line: 197, column: 43, scope: !277)
!285 = !DILocation(line: 197, column: 35, scope: !277)
!286 = !DILocation(line: 197, column: 57, scope: !277)
!287 = !DILocation(line: 197, column: 49, scope: !277)
!288 = !DILocation(line: 197, column: 47, scope: !277)
!289 = !DILocation(line: 197, column: 18, scope: !277)
!290 = !DILocation(line: 197, column: 2, scope: !277)
!291 = !DILocation(line: 197, column: 8, scope: !277)
!292 = !DILocation(line: 197, column: 16, scope: !277)
!293 = !DILocation(line: 199, column: 9, scope: !277)
!294 = !DILocation(line: 199, column: 15, scope: !277)
!295 = !DILocation(line: 199, column: 2, scope: !277)
!296 = distinct !DISubprogram(name: "set_promote_secondaries", scope: !229, file: !229, line: 479, type: !297, isLocal: false, isDefinition: true, scopeLine: 480, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !254)
!297 = !DISubroutineType(types: !298)
!298 = !{null, !299}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "interface_t", file: !146, line: 111, baseType: !301)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_interface", file: !146, line: 76, size: 1792, align: 64, elements: !302)
!302 = !{!303, !307, !311, !317, !336, !337, !339, !340, !341, !348, !349, !350, !351, !352, !353, !355, !356, !357, !358, !379, !380, !381, !382, !383, !384, !385, !386}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "ifname", scope: !301, file: !146, line: 77, baseType: !304, size: 128, align: 8)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 128, align: 8, elements: !305)
!305 = !{!306}
!306 = !DISubrange(count: 16)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "ifindex", scope: !301, file: !146, line: 78, baseType: !308, size: 32, align: 32, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "ifindex_t", file: !146, line: 62, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !310, line: 51, baseType: !141)
!310 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!311 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !301, file: !146, line: 79, baseType: !312, size: 32, align: 32, offset: 160)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !313, line: 31, size: 32, align: 32, elements: !314)
!313 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!314 = !{!315}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !312, file: !313, line: 33, baseType: !316, size: 32, align: 32)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !313, line: 30, baseType: !309)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !301, file: !146, line: 80, baseType: !318, size: 128, align: 32, offset: 192)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !313, line: 211, size: 128, align: 32, elements: !319)
!319 = !{!320}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !318, file: !313, line: 220, baseType: !321, size: 128, align: 32)
!321 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !318, file: !313, line: 213, size: 128, align: 32, elements: !322)
!322 = !{!323, !327, !332}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !321, file: !313, line: 215, baseType: !324, size: 128, align: 8)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 128, align: 8, elements: !305)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !310, line: 48, baseType: !326)
!326 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !321, file: !313, line: 217, baseType: !328, size: 128, align: 16)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 128, align: 16, elements: !330)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !310, line: 49, baseType: !140)
!330 = !{!331}
!331 = !DISubrange(count: 8)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !321, file: !313, line: 218, baseType: !333, size: 128, align: 32)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 128, align: 32, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 4)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "ifi_flags", scope: !301, file: !146, line: 81, baseType: !141, size: 32, align: 32, offset: 320)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "linkbeat_use_polling", scope: !301, file: !146, line: 82, baseType: !338, size: 8, align: 8, offset: 352)
!338 = !DIBasicType(name: "_Bool", size: 8, align: 8, encoding: DW_ATE_boolean)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !301, file: !146, line: 83, baseType: !309, size: 32, align: 32, offset: 384)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "hw_type", scope: !301, file: !146, line: 84, baseType: !140, size: 16, align: 16, offset: 416)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr", scope: !301, file: !146, line: 85, baseType: !342, size: 256, align: 8, offset: 432)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 256, align: 8, elements: !346)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !344, line: 33, baseType: !345)
!344 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u_char", file: !201, line: 30, baseType: !326)
!346 = !{!347}
!347 = !DISubrange(count: 32)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_bcast", scope: !301, file: !146, line: 86, baseType: !342, size: 256, align: 8, offset: 688)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "hw_addr_len", scope: !301, file: !146, line: 87, baseType: !220, size: 64, align: 64, offset: 960)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "lb_type", scope: !301, file: !146, line: 88, baseType: !143, size: 32, align: 32, offset: 1024)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "vmac", scope: !301, file: !146, line: 90, baseType: !338, size: 8, align: 8, offset: 1056)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifindex", scope: !301, file: !146, line: 91, baseType: !308, size: 32, align: 32, offset: 1088)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "base_ifp", scope: !301, file: !146, line: 92, baseType: !354, size: 64, align: 64, offset: 1152)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifindex", scope: !301, file: !146, line: 94, baseType: !308, size: 32, align: 32, offset: 1216)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master_ifp", scope: !301, file: !146, line: 96, baseType: !354, size: 64, align: 64, offset: 1280)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "vrf_master", scope: !301, file: !146, line: 97, baseType: !338, size: 8, align: 8, offset: 1344)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "garp_delay", scope: !301, file: !146, line: 100, baseType: !359, size: 64, align: 64, offset: 1408)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "garp_delay_t", file: !146, line: 73, baseType: !361)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_garp_delay", file: !146, line: 65, size: 704, align: 64, elements: !362)
!362 = !{!363, !373, !374, !375, !376, !377, !378}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "garp_interval", scope: !361, file: !146, line: 66, baseType: !364, size: 128, align: 64)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "timeval_t", file: !365, line: 31, baseType: !366)
!365 = !DIFile(filename: "../../lib/timer.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !367, line: 30, size: 128, align: 64, elements: !368)
!367 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/time.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!368 = !{!369, !371}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !366, file: !367, line: 32, baseType: !370, size: 64, align: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !201, line: 139, baseType: !202)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !366, file: !367, line: 33, baseType: !372, size: 64, align: 64, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !201, line: 141, baseType: !202)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "have_garp_interval", scope: !361, file: !146, line: 67, baseType: !338, size: 8, align: 8, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "gna_interval", scope: !361, file: !146, line: 68, baseType: !364, size: 128, align: 64, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "have_gna_interval", scope: !361, file: !146, line: 69, baseType: !338, size: 8, align: 8, offset: 320)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "garp_next_time", scope: !361, file: !146, line: 70, baseType: !364, size: 128, align: 64, offset: 384)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "gna_next_time", scope: !361, file: !146, line: 71, baseType: !364, size: 128, align: 64, offset: 512)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "aggregation_group", scope: !361, file: !146, line: 72, baseType: !143, size: 32, align: 32, offset: 640)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "gna_router", scope: !301, file: !146, line: 101, baseType: !338, size: 8, align: 8, offset: 1472)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_config", scope: !301, file: !146, line: 102, baseType: !143, size: 32, align: 32, offset: 1504)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_ignore_value", scope: !301, file: !146, line: 103, baseType: !309, size: 32, align: 32, offset: 1536)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "reset_arp_filter_value", scope: !301, file: !146, line: 104, baseType: !309, size: 32, align: 32, offset: 1568)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "reset_promote_secondaries", scope: !301, file: !146, line: 105, baseType: !309, size: 32, align: 32, offset: 1600)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "rp_filter", scope: !301, file: !146, line: 107, baseType: !141, size: 32, align: 32, offset: 1632)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "promote_secondaries_already_set", scope: !301, file: !146, line: 109, baseType: !338, size: 8, align: 8, offset: 1664)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "tracking_vrrp", scope: !301, file: !146, line: 110, baseType: !147, size: 64, align: 64, offset: 1728)
!387 = !DILocalVariable(name: "ifp", arg: 1, scope: !296, file: !229, line: 479, type: !299)
!388 = !DILocation(line: 479, column: 38, scope: !296)
!389 = !DILocation(line: 481, column: 6, scope: !390)
!390 = distinct !DILexicalBlock(scope: !296, file: !229, line: 481, column: 6)
!391 = !DILocation(line: 481, column: 11, scope: !390)
!392 = !DILocation(line: 481, column: 6, scope: !296)
!393 = !DILocation(line: 482, column: 3, scope: !390)
!394 = !DILocation(line: 484, column: 6, scope: !395)
!395 = distinct !DILexicalBlock(scope: !296, file: !229, line: 484, column: 6)
!396 = !DILocation(line: 484, column: 11, scope: !395)
!397 = !DILocation(line: 484, column: 36, scope: !395)
!398 = !DILocation(line: 484, column: 6, scope: !296)
!399 = !DILocation(line: 485, column: 3, scope: !395)
!400 = !DILocation(line: 492, column: 35, scope: !401)
!401 = distinct !DILexicalBlock(scope: !296, file: !229, line: 491, column: 2)
!402 = !DILocation(line: 492, column: 3, scope: !401)
!403 = !DILocation(line: 493, column: 3, scope: !401)
!404 = !DILocation(line: 500, column: 1, scope: !296)
!405 = distinct !DISubprogram(name: "set_promote_secondaries_devconf", scope: !229, file: !229, line: 88, type: !297, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !254)
!406 = !DILocalVariable(name: "ifp", arg: 1, scope: !405, file: !229, line: 88, type: !299)
!407 = !DILocation(line: 88, column: 46, scope: !405)
!408 = !DILocalVariable(name: "sk", scope: !405, file: !229, line: 90, type: !409)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64, align: 64)
!410 = !DICompositeType(tag: DW_TAG_structure_type, name: "nl_sock", file: !411, line: 44, flags: DIFlagFwdDecl)
!411 = !DIFile(filename: "./../include/keepalived_netlink.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!412 = !DILocation(line: 90, column: 18, scope: !405)
!413 = !DILocalVariable(name: "link", scope: !405, file: !229, line: 91, type: !414)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64, align: 64)
!415 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtnl_link", file: !416, line: 32, flags: DIFlagFwdDecl)
!416 = !DIFile(filename: "/usr/include/libnl3/netlink/route/link.h", directory: "/home/lichi/Desktop/keepalived/[lib]keepalived--vrrp--libvrrp.a")
!417 = !DILocation(line: 91, column: 20, scope: !405)
!418 = !DILocalVariable(name: "new_state", scope: !405, file: !229, line: 92, type: !414)
!419 = !DILocation(line: 92, column: 20, scope: !405)
!420 = !DILocalVariable(name: "prom_secs", scope: !405, file: !229, line: 93, type: !309)
!421 = !DILocation(line: 93, column: 11, scope: !405)
!422 = !DILocation(line: 95, column: 13, scope: !423)
!423 = distinct !DILexicalBlock(scope: !405, file: !229, line: 95, column: 6)
!424 = !DILocation(line: 95, column: 11, scope: !423)
!425 = !DILocation(line: 95, column: 6, scope: !405)
!426 = !DILocation(line: 96, column: 3, scope: !427)
!427 = distinct !DILexicalBlock(scope: !423, file: !229, line: 95, column: 33)
!428 = !DILocation(line: 97, column: 3, scope: !427)
!429 = !DILocation(line: 100, column: 17, scope: !430)
!430 = distinct !DILexicalBlock(scope: !405, file: !229, line: 100, column: 6)
!431 = !DILocation(line: 100, column: 6, scope: !430)
!432 = !DILocation(line: 100, column: 35, scope: !430)
!433 = !DILocation(line: 100, column: 6, scope: !405)
!434 = !DILocation(line: 101, column: 1, scope: !430)
!435 = !DILocation(line: 102, column: 3, scope: !405)
!436 = !DILocation(line: 102, column: 3, scope: !437)
!437 = !DILexicalBlockFile(scope: !405, file: !229, discriminator: 1)
!438 = !DILocation(line: 128, column: 6, scope: !439)
!439 = distinct !DILexicalBlock(scope: !405, file: !229, line: 128, column: 6)
!440 = !DILocation(line: 128, column: 6, scope: !405)
!441 = !DILocation(line: 129, column: 17, scope: !439)
!442 = !DILocation(line: 129, column: 3, scope: !439)
!443 = !DILocation(line: 130, column: 6, scope: !444)
!444 = distinct !DILexicalBlock(scope: !405, file: !229, line: 130, column: 6)
!445 = !DILocation(line: 130, column: 6, scope: !405)
!446 = !DILocation(line: 131, column: 17, scope: !444)
!447 = !DILocation(line: 131, column: 3, scope: !444)
!448 = !DILocation(line: 130, column: 6, scope: !449)
!449 = !DILexicalBlockFile(scope: !444, file: !229, discriminator: 1)
!450 = !DILocation(line: 134, column: 17, scope: !405)
!451 = !DILocation(line: 134, column: 2, scope: !405)
!452 = !DILocation(line: 136, column: 2, scope: !405)
!453 = !DILocation(line: 137, column: 1, scope: !405)
!454 = distinct !DISubprogram(name: "reset_promote_secondaries", scope: !229, file: !229, line: 503, type: !297, isLocal: false, isDefinition: true, scopeLine: 504, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !254)
!455 = !DILocalVariable(name: "ifp", arg: 1, scope: !454, file: !229, line: 503, type: !299)
!456 = !DILocation(line: 503, column: 40, scope: !454)
!457 = !DILocation(line: 505, column: 7, scope: !458)
!458 = distinct !DILexicalBlock(scope: !454, file: !229, line: 505, column: 6)
!459 = !DILocation(line: 505, column: 12, scope: !458)
!460 = !DILocation(line: 505, column: 38, scope: !458)
!461 = !DILocation(line: 506, column: 8, scope: !458)
!462 = !DILocation(line: 506, column: 13, scope: !458)
!463 = !DILocation(line: 506, column: 6, scope: !458)
!464 = !DILocation(line: 505, column: 6, scope: !465)
!465 = !DILexicalBlockFile(scope: !454, file: !229, discriminator: 1)
!466 = !DILocation(line: 507, column: 3, scope: !458)
!467 = !DILocation(line: 514, column: 37, scope: !468)
!468 = distinct !DILexicalBlock(scope: !454, file: !229, line: 513, column: 2)
!469 = !DILocation(line: 514, column: 3, scope: !468)
!470 = !DILocation(line: 515, column: 3, scope: !468)
!471 = !DILocation(line: 522, column: 1, scope: !454)
!472 = distinct !DISubprogram(name: "reset_promote_secondaries_devconf", scope: !229, file: !229, line: 140, type: !297, isLocal: true, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !254)
!473 = !DILocalVariable(name: "ifp", arg: 1, scope: !472, file: !229, line: 140, type: !299)
!474 = !DILocation(line: 140, column: 48, scope: !472)
!475 = !DILocalVariable(name: "sk", scope: !472, file: !229, line: 142, type: !409)
!476 = !DILocation(line: 142, column: 18, scope: !472)
!477 = !DILocalVariable(name: "link", scope: !472, file: !229, line: 143, type: !414)
!478 = !DILocation(line: 143, column: 20, scope: !472)
!479 = !DILocalVariable(name: "new_state", scope: !472, file: !229, line: 144, type: !414)
!480 = !DILocation(line: 144, column: 20, scope: !472)
!481 = !DILocation(line: 146, column: 13, scope: !482)
!482 = distinct !DILexicalBlock(scope: !472, file: !229, line: 146, column: 6)
!483 = !DILocation(line: 146, column: 11, scope: !482)
!484 = !DILocation(line: 146, column: 6, scope: !472)
!485 = !DILocation(line: 147, column: 3, scope: !486)
!486 = distinct !DILexicalBlock(scope: !482, file: !229, line: 146, column: 33)
!487 = !DILocation(line: 148, column: 3, scope: !486)
!488 = !DILocation(line: 151, column: 17, scope: !489)
!489 = distinct !DILexicalBlock(scope: !472, file: !229, line: 151, column: 6)
!490 = !DILocation(line: 151, column: 6, scope: !489)
!491 = !DILocation(line: 151, column: 35, scope: !489)
!492 = !DILocation(line: 151, column: 6, scope: !472)
!493 = !DILocation(line: 152, column: 1, scope: !489)
!494 = !DILocation(line: 153, column: 3, scope: !472)
!495 = !DILocation(line: 169, column: 6, scope: !496)
!496 = distinct !DILexicalBlock(scope: !472, file: !229, line: 169, column: 6)
!497 = !DILocation(line: 169, column: 6, scope: !472)
!498 = !DILocation(line: 170, column: 17, scope: !496)
!499 = !DILocation(line: 170, column: 3, scope: !496)
!500 = !DILocation(line: 171, column: 6, scope: !501)
!501 = distinct !DILexicalBlock(scope: !472, file: !229, line: 171, column: 6)
!502 = !DILocation(line: 171, column: 6, scope: !472)
!503 = !DILocation(line: 172, column: 17, scope: !501)
!504 = !DILocation(line: 172, column: 3, scope: !501)
!505 = !DILocation(line: 171, column: 6, scope: !506)
!506 = !DILexicalBlockFile(scope: !501, file: !229, discriminator: 1)
!507 = !DILocation(line: 175, column: 17, scope: !472)
!508 = !DILocation(line: 175, column: 2, scope: !472)
!509 = !DILocation(line: 177, column: 2, scope: !472)
!510 = !DILocation(line: 178, column: 1, scope: !472)
!511 = distinct !DISubprogram(name: "restore_rp_filter", scope: !229, file: !229, line: 589, type: !512, isLocal: false, isDefinition: true, scopeLine: 590, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !254)
!512 = !DISubroutineType(types: !513)
!513 = !{null}
!514 = !DILocalVariable(name: "ifs", scope: !511, file: !229, line: 591, type: !147)
!515 = !DILocation(line: 591, column: 7, scope: !511)
!516 = !DILocalVariable(name: "e", scope: !511, file: !229, line: 592, type: !517)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "element", file: !148, line: 30, baseType: !153)
!518 = !DILocation(line: 592, column: 10, scope: !511)
!519 = !DILocalVariable(name: "ifp", scope: !511, file: !229, line: 593, type: !299)
!520 = !DILocation(line: 593, column: 15, scope: !511)
!521 = !DILocalVariable(name: "rp_filter", scope: !511, file: !229, line: 594, type: !141)
!522 = !DILocation(line: 594, column: 11, scope: !511)
!523 = !DILocation(line: 598, column: 6, scope: !524)
!524 = distinct !DILexicalBlock(scope: !511, file: !229, line: 598, column: 6)
!525 = !DILocation(line: 598, column: 20, scope: !524)
!526 = !DILocation(line: 598, column: 6, scope: !511)
!527 = !DILocation(line: 599, column: 3, scope: !524)
!528 = !DILocation(line: 601, column: 14, scope: !511)
!529 = !DILocation(line: 601, column: 12, scope: !511)
!530 = !DILocation(line: 602, column: 6, scope: !531)
!531 = distinct !DILexicalBlock(scope: !511, file: !229, line: 602, column: 6)
!532 = !DILocation(line: 602, column: 16, scope: !531)
!533 = !DILocation(line: 602, column: 6, scope: !511)
!534 = !DILocation(line: 603, column: 86, scope: !535)
!535 = distinct !DILexicalBlock(scope: !531, file: !229, line: 602, column: 22)
!536 = !DILocation(line: 603, column: 3, scope: !535)
!537 = !DILocation(line: 604, column: 51, scope: !535)
!538 = !DILocation(line: 604, column: 3, scope: !535)
!539 = !DILocation(line: 605, column: 2, scope: !535)
!540 = !DILocation(line: 607, column: 6, scope: !541)
!541 = distinct !DILexicalBlock(scope: !511, file: !229, line: 607, column: 6)
!542 = !DILocation(line: 607, column: 24, scope: !541)
!543 = !DILocation(line: 607, column: 6, scope: !511)
!544 = !DILocation(line: 608, column: 15, scope: !545)
!545 = distinct !DILexicalBlock(scope: !541, file: !229, line: 607, column: 36)
!546 = !DILocation(line: 608, column: 13, scope: !545)
!547 = !DILocation(line: 609, column: 7, scope: !548)
!548 = distinct !DILexicalBlock(scope: !545, file: !229, line: 609, column: 7)
!549 = !DILocation(line: 609, column: 20, scope: !548)
!550 = !DILocation(line: 609, column: 17, scope: !548)
!551 = !DILocation(line: 609, column: 7, scope: !545)
!552 = !DILocation(line: 610, column: 91, scope: !553)
!553 = distinct !DILexicalBlock(scope: !548, file: !229, line: 609, column: 35)
!554 = !DILocation(line: 610, column: 4, scope: !553)
!555 = !DILocation(line: 611, column: 56, scope: !553)
!556 = !DILocation(line: 611, column: 4, scope: !553)
!557 = !DILocation(line: 612, column: 3, scope: !553)
!558 = !DILocation(line: 613, column: 21, scope: !545)
!559 = !DILocation(line: 614, column: 2, scope: !545)
!560 = !DILocation(line: 616, column: 8, scope: !511)
!561 = !DILocation(line: 616, column: 6, scope: !511)
!562 = !DILocation(line: 617, column: 9, scope: !563)
!563 = distinct !DILexicalBlock(scope: !511, file: !229, line: 617, column: 6)
!564 = !DILocation(line: 617, column: 14, scope: !563)
!565 = !DILocation(line: 617, column: 6, scope: !563)
!566 = !DILocation(line: 617, column: 11, scope: !567)
!567 = !DILexicalBlockFile(scope: !563, file: !229, discriminator: 1)
!568 = !DILocation(line: 617, column: 17, scope: !567)
!569 = !DILocation(line: 617, column: 22, scope: !567)
!570 = !DILocation(line: 617, column: 6, scope: !567)
!571 = !DILocation(line: 617, column: 10, scope: !572)
!572 = !DILexicalBlockFile(scope: !563, file: !229, discriminator: 2)
!573 = !DILocation(line: 617, column: 16, scope: !572)
!574 = !DILocation(line: 617, column: 21, scope: !572)
!575 = !DILocation(line: 617, column: 6, scope: !572)
!576 = !DILocation(line: 618, column: 15, scope: !577)
!577 = distinct !DILexicalBlock(scope: !578, file: !229, line: 618, column: 3)
!578 = distinct !DILexicalBlock(scope: !563, file: !229, line: 617, column: 10)
!579 = !DILocation(line: 618, column: 14, scope: !577)
!580 = !DILocation(line: 618, column: 13, scope: !577)
!581 = !DILocation(line: 618, column: 13, scope: !582)
!582 = !DILexicalBlockFile(scope: !577, file: !229, discriminator: 1)
!583 = !DILocation(line: 618, column: 14, scope: !584)
!584 = !DILexicalBlockFile(scope: !577, file: !229, discriminator: 2)
!585 = !DILocation(line: 618, column: 20, scope: !584)
!586 = !DILocation(line: 618, column: 13, scope: !584)
!587 = !DILocation(line: 618, column: 13, scope: !588)
!588 = !DILexicalBlockFile(scope: !577, file: !229, discriminator: 3)
!589 = !DILocation(line: 618, column: 10, scope: !588)
!590 = !DILocation(line: 618, column: 8, scope: !588)
!591 = !DILocation(line: 618, column: 27, scope: !592)
!592 = !DILexicalBlockFile(scope: !593, file: !229, discriminator: 4)
!593 = distinct !DILexicalBlock(scope: !577, file: !229, line: 618, column: 3)
!594 = !DILocation(line: 618, column: 3, scope: !592)
!595 = !DILocation(line: 619, column: 12, scope: !596)
!596 = distinct !DILexicalBlock(scope: !593, file: !229, line: 618, column: 49)
!597 = !DILocation(line: 619, column: 16, scope: !596)
!598 = !DILocation(line: 619, column: 10, scope: !596)
!599 = !DILocation(line: 619, column: 8, scope: !596)
!600 = !DILocation(line: 621, column: 8, scope: !601)
!601 = distinct !DILexicalBlock(scope: !596, file: !229, line: 621, column: 8)
!602 = !DILocation(line: 621, column: 13, scope: !601)
!603 = !DILocation(line: 621, column: 23, scope: !601)
!604 = !DILocation(line: 621, column: 8, scope: !596)
!605 = !DILocation(line: 622, column: 45, scope: !606)
!606 = distinct !DILexicalBlock(scope: !601, file: !229, line: 621, column: 35)
!607 = !DILocation(line: 622, column: 50, scope: !606)
!608 = !DILocation(line: 622, column: 17, scope: !606)
!609 = !DILocation(line: 622, column: 15, scope: !606)
!610 = !DILocation(line: 623, column: 9, scope: !611)
!611 = distinct !DILexicalBlock(scope: !606, file: !229, line: 623, column: 9)
!612 = !DILocation(line: 623, column: 22, scope: !611)
!613 = !DILocation(line: 623, column: 19, scope: !611)
!614 = !DILocation(line: 623, column: 9, scope: !606)
!615 = !DILocation(line: 624, column: 34, scope: !616)
!616 = distinct !DILexicalBlock(scope: !611, file: !229, line: 623, column: 37)
!617 = !DILocation(line: 624, column: 39, scope: !616)
!618 = !DILocation(line: 624, column: 60, scope: !616)
!619 = !DILocation(line: 624, column: 65, scope: !616)
!620 = !DILocation(line: 624, column: 6, scope: !616)
!621 = !DILocation(line: 625, column: 6, scope: !616)
!622 = !DILocation(line: 625, column: 11, scope: !616)
!623 = !DILocation(line: 625, column: 21, scope: !616)
!624 = !DILocation(line: 626, column: 5, scope: !616)
!625 = !DILocation(line: 627, column: 4, scope: !606)
!626 = !DILocation(line: 628, column: 3, scope: !596)
!627 = !DILocation(line: 618, column: 38, scope: !628)
!628 = !DILexicalBlockFile(scope: !593, file: !229, discriminator: 5)
!629 = !DILocation(line: 618, column: 42, scope: !628)
!630 = !DILocation(line: 618, column: 35, scope: !628)
!631 = !DILocation(line: 618, column: 3, scope: !628)
!632 = distinct !{!632, !633}
!633 = !DILocation(line: 618, column: 3, scope: !578)
!634 = !DILocation(line: 629, column: 2, scope: !578)
!635 = !DILocation(line: 631, column: 16, scope: !511)
!636 = !DILocation(line: 632, column: 1, scope: !511)
!637 = !DILocation(line: 632, column: 1, scope: !638)
!638 = !DILexicalBlockFile(scope: !511, file: !229, discriminator: 1)
!639 = distinct !DISubprogram(name: "get_sysctl", scope: !229, file: !229, line: 396, type: !640, isLocal: true, isDefinition: true, scopeLine: 397, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !254)
!640 = !DISubroutineType(types: !641)
!641 = !{!141, !642, !642, !642}
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64, align: 64)
!643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!644 = !DILocalVariable(name: "prefix", arg: 1, scope: !639, file: !229, line: 396, type: !642)
!645 = !DILocation(line: 396, column: 24, scope: !639)
!646 = !DILocalVariable(name: "iface", arg: 2, scope: !639, file: !229, line: 396, type: !642)
!647 = !DILocation(line: 396, column: 44, scope: !639)
!648 = !DILocalVariable(name: "parameter", arg: 3, scope: !639, file: !229, line: 396, type: !642)
!649 = !DILocation(line: 396, column: 63, scope: !639)
!650 = !DILocalVariable(name: "filename", scope: !639, file: !229, line: 398, type: !177)
!651 = !DILocation(line: 398, column: 8, scope: !639)
!652 = !DILocalVariable(name: "buf", scope: !639, file: !229, line: 399, type: !207)
!653 = !DILocation(line: 399, column: 7, scope: !639)
!654 = !DILocalVariable(name: "fd", scope: !639, file: !229, line: 400, type: !143)
!655 = !DILocation(line: 400, column: 6, scope: !639)
!656 = !DILocalVariable(name: "len", scope: !639, file: !229, line: 401, type: !657)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !344, line: 109, baseType: !658)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !201, line: 172, baseType: !202)
!659 = !DILocation(line: 401, column: 10, scope: !639)
!660 = !DILocation(line: 404, column: 14, scope: !639)
!661 = !DILocation(line: 404, column: 11, scope: !639)
!662 = !DILocation(line: 405, column: 23, scope: !639)
!663 = !DILocation(line: 405, column: 33, scope: !639)
!664 = !DILocation(line: 405, column: 41, scope: !639)
!665 = !DILocation(line: 405, column: 48, scope: !639)
!666 = !DILocation(line: 405, column: 2, scope: !639)
!667 = !DILocation(line: 407, column: 12, scope: !639)
!668 = !DILocation(line: 407, column: 7, scope: !639)
!669 = !DILocation(line: 407, column: 5, scope: !639)
!670 = !DILocation(line: 408, column: 8, scope: !639)
!671 = !DILocation(line: 408, column: 3, scope: !639)
!672 = !DILocation(line: 408, column: 30, scope: !639)
!673 = !DILocation(line: 409, column: 6, scope: !674)
!674 = distinct !DILexicalBlock(scope: !639, file: !229, line: 409, column: 6)
!675 = !DILocation(line: 409, column: 9, scope: !674)
!676 = !DILocation(line: 409, column: 6, scope: !639)
!677 = !DILocation(line: 410, column: 3, scope: !674)
!678 = !DILocation(line: 412, column: 13, scope: !639)
!679 = !DILocation(line: 412, column: 17, scope: !639)
!680 = !DILocation(line: 412, column: 8, scope: !639)
!681 = !DILocation(line: 412, column: 6, scope: !639)
!682 = !DILocation(line: 413, column: 8, scope: !639)
!683 = !DILocation(line: 413, column: 2, scope: !639)
!684 = !DILocation(line: 416, column: 6, scope: !685)
!685 = distinct !DILexicalBlock(scope: !639, file: !229, line: 416, column: 6)
!686 = !DILocation(line: 416, column: 10, scope: !685)
!687 = !DILocation(line: 416, column: 6, scope: !639)
!688 = !DILocation(line: 417, column: 3, scope: !685)
!689 = !DILocation(line: 420, column: 19, scope: !639)
!690 = !DILocation(line: 420, column: 9, scope: !639)
!691 = !DILocation(line: 420, column: 26, scope: !639)
!692 = !DILocation(line: 420, column: 2, scope: !639)
!693 = !DILocation(line: 421, column: 1, scope: !639)
!694 = distinct !DISubprogram(name: "set_sysctl", scope: !229, file: !229, line: 367, type: !695, isLocal: true, isDefinition: true, scopeLine: 368, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !254)
!695 = !DISubroutineType(types: !696)
!696 = !{!143, !642, !642, !642, !141}
!697 = !DILocalVariable(name: "prefix", arg: 1, scope: !694, file: !229, line: 367, type: !642)
!698 = !DILocation(line: 367, column: 24, scope: !694)
!699 = !DILocalVariable(name: "iface", arg: 2, scope: !694, file: !229, line: 367, type: !642)
!700 = !DILocation(line: 367, column: 44, scope: !694)
!701 = !DILocalVariable(name: "parameter", arg: 3, scope: !694, file: !229, line: 367, type: !642)
!702 = !DILocation(line: 367, column: 63, scope: !694)
!703 = !DILocalVariable(name: "value", arg: 4, scope: !694, file: !229, line: 367, type: !141)
!704 = !DILocation(line: 367, column: 83, scope: !694)
!705 = !DILocalVariable(name: "filename", scope: !694, file: !229, line: 369, type: !177)
!706 = !DILocation(line: 369, column: 8, scope: !694)
!707 = !DILocalVariable(name: "buf", scope: !694, file: !229, line: 370, type: !207)
!708 = !DILocation(line: 370, column: 7, scope: !694)
!709 = !DILocalVariable(name: "fd", scope: !694, file: !229, line: 371, type: !143)
!710 = !DILocation(line: 371, column: 6, scope: !694)
!711 = !DILocalVariable(name: "len", scope: !694, file: !229, line: 372, type: !657)
!712 = !DILocation(line: 372, column: 10, scope: !694)
!713 = !DILocation(line: 375, column: 14, scope: !694)
!714 = !DILocation(line: 375, column: 11, scope: !694)
!715 = !DILocation(line: 376, column: 23, scope: !694)
!716 = !DILocation(line: 376, column: 33, scope: !694)
!717 = !DILocation(line: 376, column: 41, scope: !694)
!718 = !DILocation(line: 376, column: 48, scope: !694)
!719 = !DILocation(line: 376, column: 2, scope: !694)
!720 = !DILocation(line: 378, column: 12, scope: !694)
!721 = !DILocation(line: 378, column: 7, scope: !694)
!722 = !DILocation(line: 378, column: 5, scope: !694)
!723 = !DILocation(line: 379, column: 8, scope: !694)
!724 = !DILocation(line: 379, column: 3, scope: !694)
!725 = !DILocation(line: 379, column: 30, scope: !694)
!726 = !DILocation(line: 380, column: 6, scope: !727)
!727 = distinct !DILexicalBlock(scope: !694, file: !229, line: 380, column: 6)
!728 = !DILocation(line: 380, column: 9, scope: !727)
!729 = !DILocation(line: 380, column: 6, scope: !694)
!730 = !DILocation(line: 381, column: 3, scope: !727)
!731 = !DILocation(line: 384, column: 24, scope: !694)
!732 = !DILocation(line: 384, column: 22, scope: !694)
!733 = !DILocation(line: 384, column: 11, scope: !694)
!734 = !DILocation(line: 384, column: 2, scope: !694)
!735 = !DILocation(line: 384, column: 9, scope: !694)
!736 = !DILocation(line: 385, column: 14, scope: !694)
!737 = !DILocation(line: 385, column: 18, scope: !694)
!738 = !DILocation(line: 385, column: 8, scope: !694)
!739 = !DILocation(line: 385, column: 6, scope: !694)
!740 = !DILocation(line: 386, column: 8, scope: !694)
!741 = !DILocation(line: 386, column: 2, scope: !694)
!742 = !DILocation(line: 388, column: 6, scope: !743)
!743 = distinct !DILexicalBlock(scope: !694, file: !229, line: 388, column: 6)
!744 = !DILocation(line: 388, column: 10, scope: !743)
!745 = !DILocation(line: 388, column: 6, scope: !694)
!746 = !DILocation(line: 389, column: 3, scope: !743)
!747 = !DILocation(line: 392, column: 2, scope: !694)
!748 = !DILocation(line: 393, column: 1, scope: !694)
!749 = distinct !DISubprogram(name: "set_interface_parameters", scope: !229, file: !229, line: 635, type: !750, isLocal: false, isDefinition: true, scopeLine: 636, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !254)
!750 = !DISubroutineType(types: !751)
!751 = !{null, !752, !299}
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64, align: 64)
!753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!754 = !DILocalVariable(name: "ifp", arg: 1, scope: !749, file: !229, line: 635, type: !752)
!755 = !DILocation(line: 635, column: 45, scope: !749)
!756 = !DILocalVariable(name: "base_ifp", arg: 2, scope: !749, file: !229, line: 635, type: !299)
!757 = !DILocation(line: 635, column: 63, scope: !749)
!758 = !DILocation(line: 637, column: 6, scope: !759)
!759 = distinct !DILexicalBlock(scope: !749, file: !229, line: 637, column: 6)
!760 = !DILocation(line: 637, column: 20, scope: !759)
!761 = !DILocation(line: 637, column: 6, scope: !749)
!762 = !DILocation(line: 638, column: 3, scope: !759)
!763 = !DILocation(line: 645, column: 36, scope: !764)
!764 = distinct !DILexicalBlock(scope: !749, file: !229, line: 644, column: 2)
!765 = !DILocation(line: 645, column: 41, scope: !764)
!766 = !DILocation(line: 645, column: 3, scope: !764)
!767 = !DILocation(line: 646, column: 3, scope: !764)
!768 = distinct !DISubprogram(name: "clear_rp_filter", scope: !229, file: !229, line: 540, type: !512, isLocal: true, isDefinition: true, scopeLine: 541, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !254)
!769 = !DILocalVariable(name: "ifs", scope: !768, file: !229, line: 542, type: !147)
!770 = !DILocation(line: 542, column: 7, scope: !768)
!771 = !DILocalVariable(name: "e", scope: !768, file: !229, line: 543, type: !517)
!772 = !DILocation(line: 543, column: 10, scope: !768)
!773 = !DILocalVariable(name: "ifp", scope: !768, file: !229, line: 544, type: !299)
!774 = !DILocation(line: 544, column: 15, scope: !768)
!775 = !DILocalVariable(name: "rp_filter", scope: !768, file: !229, line: 545, type: !141)
!776 = !DILocation(line: 545, column: 11, scope: !768)
!777 = !DILocation(line: 547, column: 14, scope: !768)
!778 = !DILocation(line: 547, column: 12, scope: !768)
!779 = !DILocation(line: 548, column: 6, scope: !780)
!780 = distinct !DILexicalBlock(scope: !768, file: !229, line: 548, column: 6)
!781 = !DILocation(line: 548, column: 16, scope: !780)
!782 = !DILocation(line: 548, column: 6, scope: !768)
!783 = !DILocation(line: 549, column: 3, scope: !784)
!784 = distinct !DILexicalBlock(scope: !780, file: !229, line: 548, column: 28)
!785 = !DILocation(line: 550, column: 3, scope: !784)
!786 = !DILocation(line: 553, column: 6, scope: !787)
!787 = distinct !DILexicalBlock(scope: !768, file: !229, line: 553, column: 6)
!788 = !DILocation(line: 553, column: 16, scope: !787)
!789 = !DILocation(line: 553, column: 6, scope: !768)
!790 = !DILocation(line: 554, column: 3, scope: !787)
!791 = !DILocation(line: 557, column: 18, scope: !768)
!792 = !DILocation(line: 557, column: 16, scope: !768)
!793 = !DILocation(line: 560, column: 14, scope: !768)
!794 = !DILocation(line: 560, column: 12, scope: !768)
!795 = !DILocation(line: 561, column: 6, scope: !796)
!796 = distinct !DILexicalBlock(scope: !768, file: !229, line: 561, column: 6)
!797 = !DILocation(line: 561, column: 18, scope: !796)
!798 = !DILocation(line: 561, column: 16, scope: !796)
!799 = !DILocation(line: 561, column: 6, scope: !768)
!800 = !DILocation(line: 562, column: 96, scope: !801)
!801 = distinct !DILexicalBlock(scope: !796, file: !229, line: 561, column: 33)
!802 = !DILocation(line: 562, column: 107, scope: !801)
!803 = !DILocation(line: 562, column: 3, scope: !801)
!804 = !DILocation(line: 563, column: 55, scope: !801)
!805 = !DILocation(line: 563, column: 3, scope: !801)
!806 = !DILocation(line: 564, column: 23, scope: !801)
!807 = !DILocation(line: 564, column: 21, scope: !801)
!808 = !DILocation(line: 565, column: 2, scope: !801)
!809 = !DILocation(line: 568, column: 2, scope: !768)
!810 = !DILocation(line: 569, column: 8, scope: !768)
!811 = !DILocation(line: 569, column: 6, scope: !768)
!812 = !DILocation(line: 570, column: 9, scope: !813)
!813 = distinct !DILexicalBlock(scope: !768, file: !229, line: 570, column: 6)
!814 = !DILocation(line: 570, column: 14, scope: !813)
!815 = !DILocation(line: 570, column: 6, scope: !813)
!816 = !DILocation(line: 570, column: 11, scope: !817)
!817 = !DILexicalBlockFile(scope: !813, file: !229, discriminator: 1)
!818 = !DILocation(line: 570, column: 17, scope: !817)
!819 = !DILocation(line: 570, column: 22, scope: !817)
!820 = !DILocation(line: 570, column: 6, scope: !817)
!821 = !DILocation(line: 570, column: 10, scope: !822)
!822 = !DILexicalBlockFile(scope: !813, file: !229, discriminator: 2)
!823 = !DILocation(line: 570, column: 16, scope: !822)
!824 = !DILocation(line: 570, column: 21, scope: !822)
!825 = !DILocation(line: 570, column: 6, scope: !822)
!826 = !DILocation(line: 571, column: 15, scope: !827)
!827 = distinct !DILexicalBlock(scope: !828, file: !229, line: 571, column: 3)
!828 = distinct !DILexicalBlock(scope: !813, file: !229, line: 570, column: 10)
!829 = !DILocation(line: 571, column: 14, scope: !827)
!830 = !DILocation(line: 571, column: 13, scope: !827)
!831 = !DILocation(line: 571, column: 13, scope: !832)
!832 = !DILexicalBlockFile(scope: !827, file: !229, discriminator: 1)
!833 = !DILocation(line: 571, column: 14, scope: !834)
!834 = !DILexicalBlockFile(scope: !827, file: !229, discriminator: 2)
!835 = !DILocation(line: 571, column: 20, scope: !834)
!836 = !DILocation(line: 571, column: 13, scope: !834)
!837 = !DILocation(line: 571, column: 13, scope: !838)
!838 = !DILexicalBlockFile(scope: !827, file: !229, discriminator: 3)
!839 = !DILocation(line: 571, column: 10, scope: !838)
!840 = !DILocation(line: 571, column: 8, scope: !838)
!841 = !DILocation(line: 571, column: 27, scope: !842)
!842 = !DILexicalBlockFile(scope: !843, file: !229, discriminator: 4)
!843 = distinct !DILexicalBlock(scope: !827, file: !229, line: 571, column: 3)
!844 = !DILocation(line: 571, column: 3, scope: !842)
!845 = !DILocation(line: 572, column: 12, scope: !846)
!846 = distinct !DILexicalBlock(scope: !843, file: !229, line: 571, column: 49)
!847 = !DILocation(line: 572, column: 16, scope: !846)
!848 = !DILocation(line: 572, column: 10, scope: !846)
!849 = !DILocation(line: 572, column: 8, scope: !846)
!850 = !DILocation(line: 574, column: 49, scope: !851)
!851 = distinct !DILexicalBlock(scope: !846, file: !229, line: 574, column: 8)
!852 = !DILocation(line: 574, column: 54, scope: !851)
!853 = !DILocation(line: 574, column: 21, scope: !851)
!854 = !DILocation(line: 574, column: 19, scope: !851)
!855 = !DILocation(line: 574, column: 76, scope: !851)
!856 = !DILocation(line: 574, column: 8, scope: !846)
!857 = !DILocation(line: 575, column: 61, scope: !851)
!858 = !DILocation(line: 575, column: 66, scope: !851)
!859 = !DILocation(line: 575, column: 5, scope: !851)
!860 = !DILocation(line: 576, column: 13, scope: !861)
!861 = distinct !DILexicalBlock(scope: !851, file: !229, line: 576, column: 13)
!862 = !DILocation(line: 576, column: 25, scope: !861)
!863 = !DILocation(line: 576, column: 23, scope: !861)
!864 = !DILocation(line: 576, column: 13, scope: !851)
!865 = !DILocation(line: 577, column: 33, scope: !866)
!866 = distinct !DILexicalBlock(scope: !861, file: !229, line: 576, column: 40)
!867 = !DILocation(line: 577, column: 38, scope: !866)
!868 = !DILocation(line: 577, column: 59, scope: !866)
!869 = !DILocation(line: 577, column: 5, scope: !866)
!870 = !DILocation(line: 578, column: 22, scope: !866)
!871 = !DILocation(line: 578, column: 5, scope: !866)
!872 = !DILocation(line: 578, column: 10, scope: !866)
!873 = !DILocation(line: 578, column: 20, scope: !866)
!874 = !DILocation(line: 579, column: 4, scope: !866)
!875 = !DILocation(line: 580, column: 3, scope: !846)
!876 = !DILocation(line: 571, column: 38, scope: !877)
!877 = !DILexicalBlockFile(scope: !843, file: !229, discriminator: 5)
!878 = !DILocation(line: 571, column: 42, scope: !877)
!879 = !DILocation(line: 571, column: 35, scope: !877)
!880 = !DILocation(line: 571, column: 3, scope: !877)
!881 = distinct !{!881, !882}
!882 = !DILocation(line: 571, column: 3, scope: !828)
!883 = !DILocation(line: 581, column: 2, scope: !828)
!884 = !DILocation(line: 584, column: 90, scope: !768)
!885 = !DILocation(line: 584, column: 2, scope: !768)
!886 = !DILocation(line: 585, column: 2, scope: !768)
!887 = !DILocation(line: 586, column: 1, scope: !768)
!888 = !DILocation(line: 586, column: 1, scope: !889)
!889 = !DILexicalBlockFile(scope: !768, file: !229, discriminator: 1)
!890 = distinct !DISubprogram(name: "set_interface_parameters_devconf", scope: !229, file: !229, line: 337, type: !750, isLocal: true, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !254)
!891 = !DILocalVariable(name: "ifp", arg: 1, scope: !890, file: !229, line: 337, type: !752)
!892 = !DILocation(line: 337, column: 53, scope: !890)
!893 = !DILocalVariable(name: "base_ifp", arg: 2, scope: !890, file: !229, line: 337, type: !299)
!894 = !DILocation(line: 337, column: 71, scope: !890)
!895 = !DILocation(line: 339, column: 39, scope: !896)
!896 = distinct !DILexicalBlock(scope: !890, file: !229, line: 339, column: 6)
!897 = !DILocation(line: 339, column: 44, scope: !896)
!898 = !DILocation(line: 339, column: 6, scope: !896)
!899 = !DILocation(line: 339, column: 6, scope: !890)
!900 = !DILocation(line: 340, column: 59, scope: !896)
!901 = !DILocation(line: 340, column: 64, scope: !896)
!902 = !DILocation(line: 340, column: 3, scope: !896)
!903 = !DILocation(line: 341, column: 1, scope: !890)
!904 = distinct !DISubprogram(name: "reset_interface_parameters", scope: !229, file: !229, line: 655, type: !297, isLocal: false, isDefinition: true, scopeLine: 656, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !254)
!905 = !DILocalVariable(name: "base_ifp", arg: 1, scope: !904, file: !229, line: 655, type: !299)
!906 = !DILocation(line: 655, column: 46, scope: !904)
!907 = !DILocation(line: 662, column: 38, scope: !908)
!908 = distinct !DILexicalBlock(scope: !904, file: !229, line: 661, column: 2)
!909 = !DILocation(line: 662, column: 3, scope: !908)
!910 = !DILocation(line: 663, column: 3, scope: !908)
!911 = distinct !DISubprogram(name: "reset_interface_parameters_devconf", scope: !229, file: !229, line: 344, type: !297, isLocal: true, isDefinition: true, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !254)
!912 = !DILocalVariable(name: "base_ifp", arg: 1, scope: !911, file: !229, line: 344, type: !299)
!913 = !DILocation(line: 344, column: 49, scope: !911)
!914 = !DILocation(line: 346, column: 6, scope: !915)
!915 = distinct !DILexicalBlock(scope: !911, file: !229, line: 346, column: 6)
!916 = !DILocation(line: 346, column: 16, scope: !915)
!917 = !DILocation(line: 346, column: 33, scope: !915)
!918 = !DILocation(line: 346, column: 38, scope: !919)
!919 = !DILexicalBlockFile(scope: !915, file: !229, discriminator: 1)
!920 = !DILocation(line: 346, column: 48, scope: !919)
!921 = !DILocation(line: 346, column: 36, scope: !919)
!922 = !DILocation(line: 346, column: 65, scope: !919)
!923 = !DILocation(line: 346, column: 6, scope: !919)
!924 = !DILocation(line: 347, column: 42, scope: !925)
!925 = distinct !DILexicalBlock(scope: !926, file: !229, line: 347, column: 7)
!926 = distinct !DILexicalBlock(scope: !915, file: !229, line: 346, column: 71)
!927 = !DILocation(line: 347, column: 7, scope: !925)
!928 = !DILocation(line: 347, column: 7, scope: !926)
!929 = !DILocation(line: 348, column: 62, scope: !925)
!930 = !DILocation(line: 348, column: 72, scope: !925)
!931 = !DILocation(line: 348, column: 4, scope: !925)
!932 = !DILocation(line: 349, column: 2, scope: !926)
!933 = !DILocation(line: 350, column: 1, scope: !911)
!934 = distinct !DISubprogram(name: "link_set_ipv6", scope: !229, file: !229, line: 674, type: !935, isLocal: false, isDefinition: true, scopeLine: 675, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !254)
!935 = !DISubroutineType(types: !936)
!936 = !{null, !752, !338}
!937 = !DILocalVariable(name: "ifp", arg: 1, scope: !934, file: !229, line: 674, type: !752)
!938 = !DILocation(line: 674, column: 39, scope: !934)
!939 = !DILocalVariable(name: "enable", arg: 2, scope: !934, file: !229, line: 674, type: !338)
!940 = !DILocation(line: 674, column: 48, scope: !934)
!941 = !DILocation(line: 677, column: 30, scope: !934)
!942 = !DILocation(line: 677, column: 35, scope: !934)
!943 = !DILocation(line: 677, column: 59, scope: !934)
!944 = !DILocation(line: 677, column: 2, scope: !934)
!945 = !DILocation(line: 678, column: 1, scope: !934)
!946 = distinct !DISubprogram(name: "get_ipv6_forwarding", scope: !229, file: !229, line: 681, type: !947, isLocal: false, isDefinition: true, scopeLine: 682, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !254)
!947 = !DISubroutineType(types: !948)
!948 = !{!338, !752}
!949 = !DILocalVariable(name: "ifp", arg: 1, scope: !946, file: !229, line: 681, type: !752)
!950 = !DILocation(line: 681, column: 44, scope: !946)
!951 = !DILocation(line: 683, column: 39, scope: !946)
!952 = !DILocation(line: 683, column: 44, scope: !946)
!953 = !DILocation(line: 683, column: 11, scope: !946)
!954 = !DILocation(line: 683, column: 10, scope: !946)
!955 = !DILocation(line: 683, column: 9, scope: !946)
!956 = !DILocation(line: 683, column: 2, scope: !946)
!957 = distinct !DISubprogram(name: "make_sysctl_filename", scope: !229, file: !229, line: 356, type: !958, isLocal: true, isDefinition: true, scopeLine: 357, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !254)
!958 = !DISubroutineType(types: !959)
!959 = !{null, !177, !642, !642, !642}
!960 = !DILocalVariable(name: "dest", arg: 1, scope: !957, file: !229, line: 356, type: !177)
!961 = !DILocation(line: 356, column: 28, scope: !957)
!962 = !DILocalVariable(name: "prefix", arg: 2, scope: !957, file: !229, line: 356, type: !642)
!963 = !DILocation(line: 356, column: 46, scope: !957)
!964 = !DILocalVariable(name: "iface", arg: 3, scope: !957, file: !229, line: 356, type: !642)
!965 = !DILocation(line: 356, column: 66, scope: !957)
!966 = !DILocalVariable(name: "parameter", arg: 4, scope: !957, file: !229, line: 356, type: !642)
!967 = !DILocation(line: 356, column: 85, scope: !957)
!968 = !DILocation(line: 358, column: 9, scope: !957)
!969 = !DILocation(line: 358, column: 2, scope: !957)
!970 = !DILocation(line: 359, column: 9, scope: !957)
!971 = !DILocation(line: 359, column: 15, scope: !957)
!972 = !DILocation(line: 359, column: 2, scope: !957)
!973 = !DILocation(line: 360, column: 9, scope: !957)
!974 = !DILocation(line: 360, column: 2, scope: !957)
!975 = !DILocation(line: 361, column: 9, scope: !957)
!976 = !DILocation(line: 361, column: 15, scope: !957)
!977 = !DILocation(line: 361, column: 2, scope: !957)
!978 = !DILocation(line: 362, column: 9, scope: !957)
!979 = !DILocation(line: 362, column: 2, scope: !957)
!980 = !DILocation(line: 363, column: 9, scope: !957)
!981 = !DILocation(line: 363, column: 15, scope: !957)
!982 = !DILocation(line: 363, column: 2, scope: !957)
!983 = !DILocation(line: 364, column: 1, scope: !957)
!984 = distinct !DISubprogram(name: "netlink_set_interface_parameters", scope: !229, file: !229, line: 242, type: !985, isLocal: true, isDefinition: true, scopeLine: 243, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !254)
!985 = !DISubroutineType(types: !986)
!986 = !{!143, !752, !299}
!987 = !DILocalVariable(name: "ifp", arg: 1, scope: !984, file: !229, line: 242, type: !752)
!988 = !DILocation(line: 242, column: 53, scope: !984)
!989 = !DILocalVariable(name: "base_ifp", arg: 2, scope: !984, file: !229, line: 242, type: !299)
!990 = !DILocation(line: 242, column: 71, scope: !984)
!991 = !DILocalVariable(name: "sk", scope: !984, file: !229, line: 244, type: !409)
!992 = !DILocation(line: 244, column: 18, scope: !984)
!993 = !DILocalVariable(name: "link", scope: !984, file: !229, line: 245, type: !414)
!994 = !DILocation(line: 245, column: 20, scope: !984)
!995 = !DILocalVariable(name: "new_state", scope: !984, file: !229, line: 246, type: !414)
!996 = !DILocation(line: 246, column: 20, scope: !984)
!997 = !DILocalVariable(name: "res", scope: !984, file: !229, line: 247, type: !143)
!998 = !DILocation(line: 247, column: 6, scope: !984)
!999 = !DILocation(line: 249, column: 13, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !984, file: !229, line: 249, column: 6)
!1001 = !DILocation(line: 249, column: 11, scope: !1000)
!1002 = !DILocation(line: 249, column: 6, scope: !984)
!1003 = !DILocation(line: 250, column: 3, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1000, file: !229, line: 249, column: 33)
!1005 = !DILocation(line: 251, column: 3, scope: !1004)
!1006 = !DILocation(line: 254, column: 17, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !984, file: !229, line: 254, column: 6)
!1008 = !DILocation(line: 254, column: 6, scope: !1007)
!1009 = !DILocation(line: 254, column: 35, scope: !1007)
!1010 = !DILocation(line: 254, column: 6, scope: !984)
!1011 = !DILocation(line: 255, column: 1, scope: !1007)
!1012 = !DILocation(line: 256, column: 3, scope: !984)
!1013 = !DILocation(line: 305, column: 6, scope: !984)
!1014 = !DILocation(line: 307, column: 6, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !984, file: !229, line: 307, column: 6)
!1016 = !DILocation(line: 307, column: 6, scope: !984)
!1017 = !DILocation(line: 308, column: 17, scope: !1015)
!1018 = !DILocation(line: 308, column: 3, scope: !1015)
!1019 = !DILocation(line: 309, column: 6, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !984, file: !229, line: 309, column: 6)
!1021 = !DILocation(line: 309, column: 6, scope: !984)
!1022 = !DILocation(line: 310, column: 17, scope: !1020)
!1023 = !DILocation(line: 310, column: 3, scope: !1020)
!1024 = !DILocation(line: 309, column: 6, scope: !1025)
!1025 = !DILexicalBlockFile(scope: !1020, file: !229, discriminator: 1)
!1026 = !DILocation(line: 313, column: 17, scope: !984)
!1027 = !DILocation(line: 313, column: 2, scope: !984)
!1028 = !DILocation(line: 315, column: 9, scope: !984)
!1029 = !DILocation(line: 315, column: 2, scope: !984)
!1030 = !DILocation(line: 316, column: 1, scope: !984)
!1031 = distinct !DISubprogram(name: "netlink_reset_interface_parameters", scope: !229, file: !229, line: 319, type: !1032, isLocal: true, isDefinition: true, scopeLine: 320, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !254)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!143, !752}
!1034 = !DILocalVariable(name: "ifp", arg: 1, scope: !1031, file: !229, line: 319, type: !752)
!1035 = !DILocation(line: 319, column: 55, scope: !1031)
!1036 = !DILocalVariable(name: "res", scope: !1031, file: !229, line: 321, type: !143)
!1037 = !DILocation(line: 321, column: 6, scope: !1031)
!1038 = !DILocalVariable(name: "val", scope: !1031, file: !229, line: 322, type: !143)
!1039 = !DILocation(line: 322, column: 6, scope: !1031)
!1040 = !DILocation(line: 325, column: 6, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1031, file: !229, line: 325, column: 6)
!1042 = !DILocation(line: 325, column: 11, scope: !1041)
!1043 = !DILocation(line: 325, column: 6, scope: !1031)
!1044 = !DILocation(line: 326, column: 7, scope: !1041)
!1045 = !DILocation(line: 326, column: 3, scope: !1041)
!1046 = !DILocation(line: 327, column: 6, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1031, file: !229, line: 327, column: 6)
!1048 = !DILocation(line: 327, column: 11, scope: !1047)
!1049 = !DILocation(line: 327, column: 6, scope: !1031)
!1050 = !DILocation(line: 328, column: 7, scope: !1047)
!1051 = !DILocation(line: 328, column: 3, scope: !1047)
!1052 = !DILocation(line: 329, column: 41, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1031, file: !229, line: 329, column: 6)
!1054 = !DILocation(line: 329, column: 46, scope: !1053)
!1055 = !DILocation(line: 329, column: 55, scope: !1053)
!1056 = !DILocation(line: 329, column: 13, scope: !1053)
!1057 = !DILocation(line: 329, column: 11, scope: !1053)
!1058 = !DILocation(line: 329, column: 6, scope: !1031)
!1059 = !DILocation(line: 330, column: 62, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1053, file: !229, line: 329, column: 126)
!1061 = !DILocation(line: 330, column: 67, scope: !1060)
!1062 = !DILocation(line: 330, column: 3, scope: !1060)
!1063 = !DILocation(line: 331, column: 2, scope: !1060)
!1064 = !DILocation(line: 333, column: 9, scope: !1031)
!1065 = !DILocation(line: 333, column: 2, scope: !1031)
!1066 = distinct !DISubprogram(name: "netlink_set_interface_flags", scope: !229, file: !229, line: 203, type: !1067, isLocal: true, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !254)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{!143, !143, !143, !143}
!1069 = !DILocalVariable(name: "ifindex", arg: 1, scope: !1066, file: !229, line: 203, type: !143)
!1070 = !DILocation(line: 203, column: 33, scope: !1066)
!1071 = !DILocalVariable(name: "flags", arg: 2, scope: !1066, file: !229, line: 203, type: !143)
!1072 = !DILocation(line: 203, column: 46, scope: !1066)
!1073 = !DILocalVariable(name: "change", arg: 3, scope: !1066, file: !229, line: 203, type: !143)
!1074 = !DILocation(line: 203, column: 57, scope: !1066)
!1075 = !DILocalVariable(name: "status", scope: !1066, file: !229, line: 205, type: !143)
!1076 = !DILocation(line: 205, column: 6, scope: !1066)
!1077 = !DILocalVariable(name: "req", scope: !1066, file: !229, line: 210, type: !1078)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1066, file: !229, line: 206, size: 768, align: 32, elements: !1079)
!1079 = !{!1080, !1081, !1090}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !1078, file: !229, line: 207, baseType: !246, size: 128, align: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "ifi", scope: !1078, file: !229, line: 208, baseType: !1082, size: 128, align: 32, offset: 128)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ifinfomsg", file: !37, line: 474, size: 128, align: 32, elements: !1083)
!1083 = !{!1084, !1085, !1086, !1087, !1088, !1089}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "ifi_family", scope: !1082, file: !37, line: 475, baseType: !326, size: 8, align: 8)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "__ifi_pad", scope: !1082, file: !37, line: 476, baseType: !326, size: 8, align: 8, offset: 8)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "ifi_type", scope: !1082, file: !37, line: 477, baseType: !140, size: 16, align: 16, offset: 16)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "ifi_index", scope: !1082, file: !37, line: 478, baseType: !143, size: 32, align: 32, offset: 32)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "ifi_flags", scope: !1082, file: !37, line: 479, baseType: !141, size: 32, align: 32, offset: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "ifi_change", scope: !1082, file: !37, line: 480, baseType: !141, size: 32, align: 32, offset: 96)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1078, file: !229, line: 209, baseType: !1091, size: 512, align: 8, offset: 256)
!1091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 512, align: 8, elements: !1092)
!1092 = !{!1093}
!1093 = !DISubrange(count: 64)
!1094 = !DILocation(line: 210, column: 4, scope: !1066)
!1095 = !DILocalVariable(name: "start", scope: !1066, file: !229, line: 211, type: !237)
!1096 = !DILocation(line: 211, column: 17, scope: !1066)
!1097 = !DILocalVariable(name: "inet_start", scope: !1066, file: !229, line: 212, type: !237)
!1098 = !DILocation(line: 212, column: 17, scope: !1066)
!1099 = !DILocalVariable(name: "conf_start", scope: !1066, file: !229, line: 213, type: !237)
!1100 = !DILocation(line: 213, column: 17, scope: !1066)
!1101 = !DILocation(line: 215, column: 2, scope: !1066)
!1102 = !DILocation(line: 217, column: 6, scope: !1066)
!1103 = !DILocation(line: 217, column: 8, scope: !1066)
!1104 = !DILocation(line: 217, column: 18, scope: !1066)
!1105 = !DILocation(line: 218, column: 6, scope: !1066)
!1106 = !DILocation(line: 218, column: 8, scope: !1066)
!1107 = !DILocation(line: 218, column: 20, scope: !1066)
!1108 = !DILocation(line: 219, column: 6, scope: !1066)
!1109 = !DILocation(line: 219, column: 8, scope: !1066)
!1110 = !DILocation(line: 219, column: 19, scope: !1066)
!1111 = !DILocation(line: 220, column: 6, scope: !1066)
!1112 = !DILocation(line: 220, column: 10, scope: !1066)
!1113 = !DILocation(line: 220, column: 21, scope: !1066)
!1114 = !DILocation(line: 221, column: 22, scope: !1066)
!1115 = !DILocation(line: 221, column: 6, scope: !1066)
!1116 = !DILocation(line: 221, column: 10, scope: !1066)
!1117 = !DILocation(line: 221, column: 20, scope: !1066)
!1118 = !DILocation(line: 223, column: 26, scope: !1066)
!1119 = !DILocation(line: 223, column: 10, scope: !1066)
!1120 = !DILocation(line: 223, column: 8, scope: !1066)
!1121 = !DILocation(line: 224, column: 31, scope: !1066)
!1122 = !DILocation(line: 224, column: 15, scope: !1066)
!1123 = !DILocation(line: 224, column: 13, scope: !1066)
!1124 = !DILocation(line: 225, column: 31, scope: !1066)
!1125 = !DILocation(line: 225, column: 15, scope: !1066)
!1126 = !DILocation(line: 225, column: 13, scope: !1066)
!1127 = !DILocation(line: 227, column: 6, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1066, file: !229, line: 227, column: 6)
!1129 = !DILocation(line: 227, column: 13, scope: !1128)
!1130 = !DILocation(line: 227, column: 6, scope: !1066)
!1131 = !DILocation(line: 228, column: 18, scope: !1128)
!1132 = !DILocation(line: 228, column: 58, scope: !1128)
!1133 = !DILocation(line: 228, column: 64, scope: !1128)
!1134 = !DILocation(line: 228, column: 92, scope: !1128)
!1135 = !DILocation(line: 228, column: 3, scope: !1128)
!1136 = !DILocation(line: 229, column: 6, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1066, file: !229, line: 229, column: 6)
!1138 = !DILocation(line: 229, column: 13, scope: !1137)
!1139 = !DILocation(line: 229, column: 6, scope: !1066)
!1140 = !DILocation(line: 230, column: 18, scope: !1137)
!1141 = !DILocation(line: 230, column: 59, scope: !1137)
!1142 = !DILocation(line: 230, column: 65, scope: !1137)
!1143 = !DILocation(line: 230, column: 94, scope: !1137)
!1144 = !DILocation(line: 230, column: 3, scope: !1137)
!1145 = !DILocation(line: 231, column: 26, scope: !1066)
!1146 = !DILocation(line: 231, column: 12, scope: !1066)
!1147 = !DILocation(line: 231, column: 37, scope: !1066)
!1148 = !DILocation(line: 231, column: 41, scope: !1066)
!1149 = !DILocation(line: 231, column: 29, scope: !1066)
!1150 = !DILocation(line: 231, column: 11, scope: !1066)
!1151 = !DILocation(line: 231, column: 53, scope: !1066)
!1152 = !DILocation(line: 231, column: 2, scope: !1066)
!1153 = !DILocation(line: 232, column: 26, scope: !1066)
!1154 = !DILocation(line: 232, column: 12, scope: !1066)
!1155 = !DILocation(line: 232, column: 37, scope: !1066)
!1156 = !DILocation(line: 232, column: 41, scope: !1066)
!1157 = !DILocation(line: 232, column: 29, scope: !1066)
!1158 = !DILocation(line: 232, column: 11, scope: !1066)
!1159 = !DILocation(line: 232, column: 53, scope: !1066)
!1160 = !DILocation(line: 232, column: 2, scope: !1066)
!1161 = !DILocation(line: 233, column: 26, scope: !1066)
!1162 = !DILocation(line: 233, column: 12, scope: !1066)
!1163 = !DILocation(line: 233, column: 37, scope: !1066)
!1164 = !DILocation(line: 233, column: 41, scope: !1066)
!1165 = !DILocation(line: 233, column: 29, scope: !1066)
!1166 = !DILocation(line: 233, column: 11, scope: !1066)
!1167 = !DILocation(line: 233, column: 53, scope: !1066)
!1168 = !DILocation(line: 233, column: 2, scope: !1066)
!1169 = !DILocation(line: 235, column: 33, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1066, file: !229, line: 235, column: 6)
!1171 = !DILocation(line: 235, column: 6, scope: !1170)
!1172 = !DILocation(line: 235, column: 36, scope: !1170)
!1173 = !DILocation(line: 235, column: 6, scope: !1066)
!1174 = !DILocation(line: 236, column: 10, scope: !1170)
!1175 = !DILocation(line: 236, column: 3, scope: !1170)
!1176 = !DILocation(line: 238, column: 9, scope: !1066)
!1177 = !DILocation(line: 238, column: 2, scope: !1066)
