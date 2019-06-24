; ModuleID = './line59-network.o.i'
source_filename = "./line59-network.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct._GIOChannel = type { i32, %struct._GIOFuncs*, i8*, %struct._GIConv*, %struct._GIConv*, i8*, i32, i64, %struct._GString*, %struct._GString*, %struct._GString*, [6 x i8], i8, i8*, i8* }
%struct._GIOFuncs = type { i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i64, i32, %struct._GError**)*, i32 (%struct._GIOChannel*, %struct._GError**)*, %struct._GSource* (%struct._GIOChannel*, i32)*, void (%struct._GIOChannel*)*, i32 (%struct._GIOChannel*, i32, %struct._GError**)*, i32 (%struct._GIOChannel*)* }
%struct._GError = type { i32, i32, i8* }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GSourcePrivate = type opaque
%struct._GIConv = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._IPADDR = type { i16, %struct.in6_addr }
%union.sockaddr_union = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.sockaddr_un = type { i16, [108 x i8] }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.sockaddr*, i8*, %struct.addrinfo* }
%struct.servent = type { i8*, i8**, i32, i8* }

@ip4_any = global { i16, [2 x i8], { { [16 x i8] } } } { i16 2, [2 x i8] undef, { { [16 x i8] } } zeroinitializer }, align 4
@.str = private unnamed_addr constant [46 x i8] c"net_connect_ip(): ip->family != my_ip->family\00", align 1
@__func__.net_disconnect = private unnamed_addr constant [15 x i8] c"net_disconnect\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"handle != NULL\00", align 1
@__func__.net_listen = private unnamed_addr constant [11 x i8] c"net_listen\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"port != NULL\00", align 1
@__func__.net_accept = private unnamed_addr constant [11 x i8] c"net_accept\00", align 1
@__func__.net_receive = private unnamed_addr constant [12 x i8] c"net_receive\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"buf != NULL\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__func__.net_transmit = private unnamed_addr constant [13 x i8] c"net_transmit\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@__func__.net_getsockname = private unnamed_addr constant [16 x i8] c"net_getsockname\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"addr != NULL\00", align 1
@__func__.net_gethostbyname = private unnamed_addr constant [18 x i8] c"net_gethostbyname\00", align 1
@__func__.net_gethostbyaddr = private unnamed_addr constant [18 x i8] c"net_gethostbyaddr\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"ip != NULL\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@__func__.net_gethosterror = private unnamed_addr constant [17 x i8] c"net_gethosterror\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"error != 0\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@in6addr_any = external constant %struct.in6_addr, align 4

; Function Attrs: nounwind uwtable
define %struct._GIOChannel* @g_io_channel_new(i32) #0 !dbg !158 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._GIOChannel*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !342, metadata !343), !dbg !344
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %3, metadata !345, metadata !343), !dbg !346
  %4 = load i32, i32* %2, align 4, !dbg !347
  %5 = call %struct._GIOChannel* @g_io_channel_unix_new(i32 %4), !dbg !348
  store %struct._GIOChannel* %5, %struct._GIOChannel** %3, align 8, !dbg !349
  %6 = load %struct._GIOChannel*, %struct._GIOChannel** %3, align 8, !dbg !350
  %7 = call i32 @g_io_channel_set_encoding(%struct._GIOChannel* %6, i8* null, %struct._GError** null), !dbg !351
  %8 = load %struct._GIOChannel*, %struct._GIOChannel** %3, align 8, !dbg !352
  call void @g_io_channel_set_buffered(%struct._GIOChannel* %8, i32 0), !dbg !353
  %9 = load %struct._GIOChannel*, %struct._GIOChannel** %3, align 8, !dbg !354
  ret %struct._GIOChannel* %9, !dbg !355
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._GIOChannel* @g_io_channel_unix_new(i32) #2

declare i32 @g_io_channel_set_encoding(%struct._GIOChannel*, i8*, %struct._GError**) #2

declare void @g_io_channel_set_buffered(%struct._GIOChannel*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @g_io_channel_write_block(%struct._GIOChannel*, i8*, i32) #0 !dbg !356 {
  %4 = alloca %struct._GIOChannel*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct._GIOChannel* %0, %struct._GIOChannel** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %4, metadata !359, metadata !343), !dbg !360
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !361, metadata !343), !dbg !362
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !363, metadata !343), !dbg !364
  call void @llvm.dbg.declare(metadata i64* %7, metadata !365, metadata !343), !dbg !366
  call void @llvm.dbg.declare(metadata i32* %8, metadata !367, metadata !343), !dbg !368
  call void @llvm.dbg.declare(metadata i32* %9, metadata !369, metadata !343), !dbg !370
  store i32 0, i32* %8, align 4, !dbg !371
  br label %10, !dbg !372, !llvm.loop !373

; <label>:10:                                     ; preds = %33, %3
  %11 = load %struct._GIOChannel*, %struct._GIOChannel** %4, align 8, !dbg !374
  %12 = load i8*, i8** %5, align 8, !dbg !376
  %13 = load i32, i32* %8, align 4, !dbg !377
  %14 = sext i32 %13 to i64, !dbg !378
  %15 = getelementptr inbounds i8, i8* %12, i64 %14, !dbg !378
  %16 = load i32, i32* %6, align 4, !dbg !379
  %17 = load i32, i32* %8, align 4, !dbg !380
  %18 = sub nsw i32 %16, %17, !dbg !381
  %19 = sext i32 %18 to i64, !dbg !379
  %20 = call i32 @g_io_channel_write_chars(%struct._GIOChannel* %11, i8* %15, i64 %19, i64* %7, %struct._GError** null), !dbg !382
  store i32 %20, i32* %9, align 4, !dbg !383
  %21 = load i64, i64* %7, align 8, !dbg !384
  %22 = load i32, i32* %8, align 4, !dbg !385
  %23 = sext i32 %22 to i64, !dbg !385
  %24 = add i64 %23, %21, !dbg !385
  %25 = trunc i64 %24 to i32, !dbg !385
  store i32 %25, i32* %8, align 4, !dbg !385
  br label %26, !dbg !386

; <label>:26:                                     ; preds = %10
  %27 = load i32, i32* %8, align 4, !dbg !387
  %28 = load i32, i32* %6, align 4, !dbg !389
  %29 = icmp slt i32 %27, %28, !dbg !390
  br i1 %29, label %30, label %33, !dbg !391

; <label>:30:                                     ; preds = %26
  %31 = load i32, i32* %9, align 4, !dbg !392
  %32 = icmp ne i32 %31, 0, !dbg !394
  br label %33

; <label>:33:                                     ; preds = %30, %26
  %34 = phi i1 [ false, %26 ], [ %32, %30 ]
  br i1 %34, label %10, label %35, !dbg !395, !llvm.loop !373

; <label>:35:                                     ; preds = %33
  %36 = load i32, i32* %8, align 4, !dbg !397
  %37 = load i32, i32* %6, align 4, !dbg !398
  %38 = icmp slt i32 %36, %37, !dbg !399
  %39 = select i1 %38, i32 -1, i32 0, !dbg !397
  ret i32 %39, !dbg !400
}

declare i32 @g_io_channel_write_chars(%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**) #2

; Function Attrs: nounwind uwtable
define i32 @g_io_channel_read_block(%struct._GIOChannel*, i8*, i32) #0 !dbg !401 {
  %4 = alloca %struct._GIOChannel*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct._GIOChannel* %0, %struct._GIOChannel** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %4, metadata !402, metadata !343), !dbg !403
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !404, metadata !343), !dbg !405
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !406, metadata !343), !dbg !407
  call void @llvm.dbg.declare(metadata i64* %7, metadata !408, metadata !343), !dbg !413
  call void @llvm.dbg.declare(metadata i64* %8, metadata !414, metadata !343), !dbg !415
  call void @llvm.dbg.declare(metadata i32* %9, metadata !416, metadata !343), !dbg !417
  call void @llvm.dbg.declare(metadata i32* %10, metadata !418, metadata !343), !dbg !419
  %11 = call i64 @time(i64* null) #7, !dbg !420
  %12 = add nsw i64 %11, 2, !dbg !421
  store i64 %12, i64* %7, align 8, !dbg !422
  store i32 0, i32* %9, align 4, !dbg !423
  br label %13, !dbg !424, !llvm.loop !425

; <label>:13:                                     ; preds = %43, %3
  %14 = load %struct._GIOChannel*, %struct._GIOChannel** %4, align 8, !dbg !426
  %15 = load i8*, i8** %5, align 8, !dbg !428
  %16 = load i32, i32* %9, align 4, !dbg !429
  %17 = sext i32 %16 to i64, !dbg !430
  %18 = getelementptr inbounds i8, i8* %15, i64 %17, !dbg !430
  %19 = load i32, i32* %6, align 4, !dbg !431
  %20 = load i32, i32* %9, align 4, !dbg !432
  %21 = sub nsw i32 %19, %20, !dbg !433
  %22 = sext i32 %21 to i64, !dbg !431
  %23 = call i32 @g_io_channel_read_chars(%struct._GIOChannel* %14, i8* %18, i64 %22, i64* %8, %struct._GError** null), !dbg !434
  store i32 %23, i32* %10, align 4, !dbg !435
  %24 = load i64, i64* %8, align 8, !dbg !436
  %25 = load i32, i32* %9, align 4, !dbg !437
  %26 = sext i32 %25 to i64, !dbg !437
  %27 = add i64 %26, %24, !dbg !437
  %28 = trunc i64 %27 to i32, !dbg !437
  store i32 %28, i32* %9, align 4, !dbg !437
  br label %29, !dbg !438

; <label>:29:                                     ; preds = %13
  %30 = load i32, i32* %9, align 4, !dbg !439
  %31 = load i32, i32* %6, align 4, !dbg !441
  %32 = icmp slt i32 %30, %31, !dbg !442
  br i1 %32, label %33, label %43, !dbg !443

; <label>:33:                                     ; preds = %29
  %34 = call i64 @time(i64* null) #7, !dbg !444
  %35 = load i64, i64* %7, align 8, !dbg !446
  %36 = icmp slt i64 %34, %35, !dbg !447
  br i1 %36, label %37, label %43, !dbg !448

; <label>:37:                                     ; preds = %33
  %38 = load i32, i32* %10, align 4, !dbg !449
  %39 = icmp ne i32 %38, 0, !dbg !450
  br i1 %39, label %40, label %43, !dbg !451

; <label>:40:                                     ; preds = %37
  %41 = load i32, i32* %10, align 4, !dbg !452
  %42 = icmp ne i32 %41, 2, !dbg !453
  br label %43

; <label>:43:                                     ; preds = %40, %37, %33, %29
  %44 = phi i1 [ false, %37 ], [ false, %33 ], [ false, %29 ], [ %42, %40 ]
  br i1 %44, label %13, label %45, !dbg !454, !llvm.loop !425

; <label>:45:                                     ; preds = %43
  %46 = load i32, i32* %9, align 4, !dbg !456
  %47 = load i32, i32* %6, align 4, !dbg !457
  %48 = icmp slt i32 %46, %47, !dbg !458
  %49 = select i1 %48, i32 -1, i32 0, !dbg !456
  ret i32 %49, !dbg !459
}

; Function Attrs: nounwind
declare i64 @time(i64*) #3

declare i32 @g_io_channel_read_chars(%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**) #2

; Function Attrs: nounwind uwtable
define i32 @net_ip_compare(%struct._IPADDR*, %struct._IPADDR*) #0 !dbg !460 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._IPADDR*, align 8
  %5 = alloca %struct._IPADDR*, align 8
  store %struct._IPADDR* %0, %struct._IPADDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IPADDR** %4, metadata !464, metadata !343), !dbg !465
  store %struct._IPADDR* %1, %struct._IPADDR** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IPADDR** %5, metadata !466, metadata !343), !dbg !467
  %6 = load %struct._IPADDR*, %struct._IPADDR** %4, align 8, !dbg !468
  %7 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %6, i32 0, i32 0, !dbg !470
  %8 = load i16, i16* %7, align 4, !dbg !470
  %9 = zext i16 %8 to i32, !dbg !468
  %10 = load %struct._IPADDR*, %struct._IPADDR** %5, align 8, !dbg !471
  %11 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %10, i32 0, i32 0, !dbg !472
  %12 = load i16, i16* %11, align 4, !dbg !472
  %13 = zext i16 %12 to i32, !dbg !471
  %14 = icmp ne i32 %9, %13, !dbg !473
  br i1 %14, label %15, label %16, !dbg !474

; <label>:15:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !475
  br label %42, !dbg !475

; <label>:16:                                     ; preds = %2
  %17 = load %struct._IPADDR*, %struct._IPADDR** %4, align 8, !dbg !476
  %18 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %17, i32 0, i32 0, !dbg !478
  %19 = load i16, i16* %18, align 4, !dbg !478
  %20 = zext i16 %19 to i32, !dbg !476
  %21 = icmp eq i32 %20, 10, !dbg !479
  br i1 %21, label %22, label %32, !dbg !480

; <label>:22:                                     ; preds = %16
  %23 = load %struct._IPADDR*, %struct._IPADDR** %4, align 8, !dbg !481
  %24 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %23, i32 0, i32 1, !dbg !482
  %25 = bitcast %struct.in6_addr* %24 to i8*, !dbg !483
  %26 = load %struct._IPADDR*, %struct._IPADDR** %5, align 8, !dbg !484
  %27 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %26, i32 0, i32 1, !dbg !485
  %28 = bitcast %struct.in6_addr* %27 to i8*, !dbg !486
  %29 = call i32 @memcmp(i8* %25, i8* %28, i64 16) #8, !dbg !487
  %30 = icmp eq i32 %29, 0, !dbg !488
  %31 = zext i1 %30 to i32, !dbg !488
  store i32 %31, i32* %3, align 4, !dbg !489
  br label %42, !dbg !489

; <label>:32:                                     ; preds = %16
  %33 = load %struct._IPADDR*, %struct._IPADDR** %4, align 8, !dbg !490
  %34 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %33, i32 0, i32 1, !dbg !491
  %35 = bitcast %struct.in6_addr* %34 to i8*, !dbg !492
  %36 = load %struct._IPADDR*, %struct._IPADDR** %5, align 8, !dbg !493
  %37 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %36, i32 0, i32 1, !dbg !494
  %38 = bitcast %struct.in6_addr* %37 to i8*, !dbg !495
  %39 = call i32 @memcmp(i8* %35, i8* %38, i64 4) #8, !dbg !496
  %40 = icmp eq i32 %39, 0, !dbg !497
  %41 = zext i1 %40 to i32, !dbg !497
  store i32 %41, i32* %3, align 4, !dbg !498
  br label %42, !dbg !498

; <label>:42:                                     ; preds = %32, %22, %15
  %43 = load i32, i32* %3, align 4, !dbg !499
  ret i32 %43, !dbg !499
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #4

; Function Attrs: nounwind uwtable
define void @sin_get_ip(%union.sockaddr_union*, %struct._IPADDR*) #0 !dbg !500 {
  %3 = alloca %union.sockaddr_union*, align 8
  %4 = alloca %struct._IPADDR*, align 8
  store %union.sockaddr_union* %0, %union.sockaddr_union** %3, align 8
  call void @llvm.dbg.declare(metadata %union.sockaddr_union** %3, metadata !505, metadata !343), !dbg !506
  store %struct._IPADDR* %1, %struct._IPADDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IPADDR** %4, metadata !507, metadata !343), !dbg !508
  %5 = load %union.sockaddr_union*, %union.sockaddr_union** %3, align 8, !dbg !509
  %6 = bitcast %union.sockaddr_union* %5 to %struct.sockaddr_in*, !dbg !510
  %7 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0, !dbg !511
  %8 = load i16, i16* %7, align 4, !dbg !511
  %9 = load %struct._IPADDR*, %struct._IPADDR** %4, align 8, !dbg !512
  %10 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %9, i32 0, i32 0, !dbg !513
  store i16 %8, i16* %10, align 4, !dbg !514
  %11 = load %struct._IPADDR*, %struct._IPADDR** %4, align 8, !dbg !515
  %12 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %11, i32 0, i32 0, !dbg !517
  %13 = load i16, i16* %12, align 4, !dbg !517
  %14 = zext i16 %13 to i32, !dbg !515
  %15 = icmp eq i32 %14, 10, !dbg !518
  br i1 %15, label %16, label %24, !dbg !519

; <label>:16:                                     ; preds = %2
  %17 = load %struct._IPADDR*, %struct._IPADDR** %4, align 8, !dbg !520
  %18 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %17, i32 0, i32 1, !dbg !521
  %19 = bitcast %struct.in6_addr* %18 to i8*, !dbg !522
  %20 = load %union.sockaddr_union*, %union.sockaddr_union** %3, align 8, !dbg !523
  %21 = bitcast %union.sockaddr_union* %20 to %struct.sockaddr_in6*, !dbg !524
  %22 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %21, i32 0, i32 3, !dbg !525
  %23 = bitcast %struct.in6_addr* %22 to i8*, !dbg !522
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %23, i64 16, i32 4, i1 false), !dbg !522
  br label %32, !dbg !522

; <label>:24:                                     ; preds = %2
  %25 = load %struct._IPADDR*, %struct._IPADDR** %4, align 8, !dbg !526
  %26 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %25, i32 0, i32 1, !dbg !527
  %27 = bitcast %struct.in6_addr* %26 to i8*, !dbg !528
  %28 = load %union.sockaddr_union*, %union.sockaddr_union** %3, align 8, !dbg !529
  %29 = bitcast %union.sockaddr_union* %28 to %struct.sockaddr_in*, !dbg !530
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %29, i32 0, i32 2, !dbg !531
  %31 = bitcast %struct.in_addr* %30 to i8*, !dbg !528
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %31, i64 4, i32 4, i1 false), !dbg !528
  br label %32

; <label>:32:                                     ; preds = %24, %16
  ret void, !dbg !532
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

; Function Attrs: nounwind uwtable
define i32 @net_connect_ip_handle(%struct._IPADDR*, i32, %struct._IPADDR*) #0 !dbg !533 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IPADDR*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._IPADDR*, align 8
  %8 = alloca %union.sockaddr_union, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct._IPADDR* %0, %struct._IPADDR** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IPADDR** %5, metadata !538, metadata !343), !dbg !539
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !540, metadata !343), !dbg !541
  store %struct._IPADDR* %2, %struct._IPADDR** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IPADDR** %7, metadata !542, metadata !343), !dbg !543
  call void @llvm.dbg.declare(metadata %union.sockaddr_union* %8, metadata !544, metadata !343), !dbg !545
  call void @llvm.dbg.declare(metadata i32* %9, metadata !546, metadata !343), !dbg !547
  call void @llvm.dbg.declare(metadata i32* %10, metadata !548, metadata !343), !dbg !549
  call void @llvm.dbg.declare(metadata i32* %11, metadata !550, metadata !343), !dbg !551
  store i32 1, i32* %11, align 4, !dbg !551
  %14 = load %struct._IPADDR*, %struct._IPADDR** %7, align 8, !dbg !552
  %15 = icmp ne %struct._IPADDR* %14, null, !dbg !554
  br i1 %15, label %16, label %27, !dbg !555

; <label>:16:                                     ; preds = %3
  %17 = load %struct._IPADDR*, %struct._IPADDR** %5, align 8, !dbg !556
  %18 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %17, i32 0, i32 0, !dbg !558
  %19 = load i16, i16* %18, align 4, !dbg !558
  %20 = zext i16 %19 to i32, !dbg !556
  %21 = load %struct._IPADDR*, %struct._IPADDR** %7, align 8, !dbg !559
  %22 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %21, i32 0, i32 0, !dbg !560
  %23 = load i16, i16* %22, align 4, !dbg !560
  %24 = zext i16 %23 to i32, !dbg !559
  %25 = icmp ne i32 %20, %24, !dbg !561
  br i1 %25, label %26, label %27, !dbg !562

; <label>:26:                                     ; preds = %16
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i32 0, i32 0)), !dbg !563
  store %struct._IPADDR* null, %struct._IPADDR** %7, align 8, !dbg !565
  br label %27, !dbg !566

; <label>:27:                                     ; preds = %26, %16, %3
  %28 = bitcast %union.sockaddr_union* %8 to i8*, !dbg !567
  call void @llvm.memset.p0i8.i64(i8* %28, i8 0, i64 28, i32 4, i1 false), !dbg !567
  %29 = load %struct._IPADDR*, %struct._IPADDR** %5, align 8, !dbg !568
  %30 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %29, i32 0, i32 0, !dbg !569
  %31 = load i16, i16* %30, align 4, !dbg !569
  %32 = bitcast %union.sockaddr_union* %8 to %struct.sockaddr_in*, !dbg !570
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %32, i32 0, i32 0, !dbg !571
  store i16 %31, i16* %33, align 4, !dbg !572
  %34 = load %struct._IPADDR*, %struct._IPADDR** %5, align 8, !dbg !573
  %35 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %34, i32 0, i32 0, !dbg !574
  %36 = load i16, i16* %35, align 4, !dbg !574
  %37 = zext i16 %36 to i32, !dbg !573
  %38 = call i32 @socket(i32 %37, i32 1, i32 0) #7, !dbg !575
  store i32 %38, i32* %9, align 4, !dbg !576
  %39 = load i32, i32* %9, align 4, !dbg !577
  %40 = icmp eq i32 %39, -1, !dbg !579
  br i1 %40, label %41, label %42, !dbg !580

; <label>:41:                                     ; preds = %27
  store i32 -1, i32* %4, align 4, !dbg !581
  br label %102, !dbg !581

; <label>:42:                                     ; preds = %27
  %43 = load i32, i32* %9, align 4, !dbg !582
  %44 = call i32 (i32, i32, ...) @fcntl(i32 %43, i32 4, i32 2048), !dbg !583
  %45 = load i32, i32* %9, align 4, !dbg !584
  %46 = bitcast i32* %11 to i8*, !dbg !585
  %47 = call i32 @setsockopt(i32 %45, i32 1, i32 2, i8* %46, i32 4) #7, !dbg !586
  %48 = load i32, i32* %9, align 4, !dbg !587
  %49 = bitcast i32* %11 to i8*, !dbg !588
  %50 = call i32 @setsockopt(i32 %48, i32 1, i32 9, i8* %49, i32 4) #7, !dbg !589
  %51 = load %struct._IPADDR*, %struct._IPADDR** %7, align 8, !dbg !590
  %52 = icmp ne %struct._IPADDR* %51, null, !dbg !592
  br i1 %52, label %53, label %74, !dbg !593

; <label>:53:                                     ; preds = %42
  %54 = load %struct._IPADDR*, %struct._IPADDR** %7, align 8, !dbg !594
  call void @sin_set_ip(%union.sockaddr_union* %8, %struct._IPADDR* %54), !dbg !596
  %55 = load i32, i32* %9, align 4, !dbg !597
  %56 = bitcast %union.sockaddr_union* %8 to %struct.sockaddr*, !dbg !599
  %57 = bitcast %union.sockaddr_union* %8 to %struct.sockaddr*, !dbg !600
  %58 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %57, i32 0, i32 0, !dbg !601
  %59 = load i16, i16* %58, align 4, !dbg !601
  %60 = zext i16 %59 to i32, !dbg !602
  %61 = icmp eq i32 %60, 10, !dbg !603
  %62 = select i1 %61, i64 28, i64 16, !dbg !602
  %63 = trunc i64 %62 to i32, !dbg !604
  %64 = call i32 @bind(i32 %55, %struct.sockaddr* %56, i32 %63) #7, !dbg !605
  %65 = icmp slt i32 %64, 0, !dbg !606
  br i1 %65, label %66, label %73, !dbg !607

; <label>:66:                                     ; preds = %53
  call void @llvm.dbg.declare(metadata i32* %12, metadata !608, metadata !343), !dbg !610
  %67 = call i32* @__errno_location() #1, !dbg !611
  %68 = load i32, i32* %67, align 4, !dbg !612
  store i32 %68, i32* %12, align 4, !dbg !610
  %69 = load i32, i32* %9, align 4, !dbg !613
  %70 = call i32 @close(i32 %69), !dbg !614
  %71 = load i32, i32* %12, align 4, !dbg !615
  %72 = call i32* @__errno_location() #1, !dbg !616
  store i32 %71, i32* %72, align 4, !dbg !617
  store i32 -1, i32* %4, align 4, !dbg !618
  br label %102, !dbg !618

; <label>:73:                                     ; preds = %53
  br label %74, !dbg !619

; <label>:74:                                     ; preds = %73, %42
  %75 = load %struct._IPADDR*, %struct._IPADDR** %5, align 8, !dbg !620
  call void @sin_set_ip(%union.sockaddr_union* %8, %struct._IPADDR* %75), !dbg !621
  %76 = load i32, i32* %6, align 4, !dbg !622
  call void @sin_set_port(%union.sockaddr_union* %8, i32 %76), !dbg !623
  %77 = load i32, i32* %9, align 4, !dbg !624
  %78 = bitcast %union.sockaddr_union* %8 to %struct.sockaddr*, !dbg !625
  %79 = bitcast %union.sockaddr_union* %8 to %struct.sockaddr*, !dbg !626
  %80 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %79, i32 0, i32 0, !dbg !627
  %81 = load i16, i16* %80, align 4, !dbg !627
  %82 = zext i16 %81 to i32, !dbg !628
  %83 = icmp eq i32 %82, 10, !dbg !629
  %84 = select i1 %83, i64 28, i64 16, !dbg !628
  %85 = trunc i64 %84 to i32, !dbg !630
  %86 = call i32 @connect(i32 %77, %struct.sockaddr* %78, i32 %85), !dbg !631
  store i32 %86, i32* %10, align 4, !dbg !632
  %87 = load i32, i32* %10, align 4, !dbg !633
  %88 = icmp slt i32 %87, 0, !dbg !635
  br i1 %88, label %89, label %100, !dbg !636

; <label>:89:                                     ; preds = %74
  %90 = call i32* @__errno_location() #1, !dbg !637
  %91 = load i32, i32* %90, align 4, !dbg !639
  %92 = icmp ne i32 %91, 115, !dbg !640
  br i1 %92, label %93, label %100, !dbg !641

; <label>:93:                                     ; preds = %89
  call void @llvm.dbg.declare(metadata i32* %13, metadata !642, metadata !343), !dbg !644
  %94 = call i32* @__errno_location() #1, !dbg !645
  %95 = load i32, i32* %94, align 4, !dbg !646
  store i32 %95, i32* %13, align 4, !dbg !644
  %96 = load i32, i32* %9, align 4, !dbg !647
  %97 = call i32 @close(i32 %96), !dbg !648
  %98 = load i32, i32* %13, align 4, !dbg !649
  %99 = call i32* @__errno_location() #1, !dbg !650
  store i32 %98, i32* %99, align 4, !dbg !651
  store i32 -1, i32* %4, align 4, !dbg !652
  br label %102, !dbg !652

; <label>:100:                                    ; preds = %89, %74
  %101 = load i32, i32* %9, align 4, !dbg !653
  store i32 %101, i32* %4, align 4, !dbg !654
  br label %102, !dbg !654

; <label>:102:                                    ; preds = %100, %93, %66, %41
  %103 = load i32, i32* %4, align 4, !dbg !655
  ret i32 %103, !dbg !655
}

declare void @g_log(i8*, i32, i8*, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

; Function Attrs: nounwind
declare i32 @socket(i32, i32, i32) #3

declare i32 @fcntl(i32, i32, ...) #2

; Function Attrs: nounwind
declare i32 @setsockopt(i32, i32, i32, i8*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @sin_set_ip(%union.sockaddr_union*, %struct._IPADDR*) #0 !dbg !656 {
  %3 = alloca %union.sockaddr_union*, align 8
  %4 = alloca %struct._IPADDR*, align 8
  store %union.sockaddr_union* %0, %union.sockaddr_union** %3, align 8
  call void @llvm.dbg.declare(metadata %union.sockaddr_union** %3, metadata !659, metadata !343), !dbg !660
  store %struct._IPADDR* %1, %struct._IPADDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IPADDR** %4, metadata !661, metadata !343), !dbg !662
  %5 = load %struct._IPADDR*, %struct._IPADDR** %4, align 8, !dbg !663
  %6 = icmp eq %struct._IPADDR* %5, null, !dbg !665
  br i1 %6, label %7, label %15, !dbg !666

; <label>:7:                                      ; preds = %2
  %8 = load %union.sockaddr_union*, %union.sockaddr_union** %3, align 8, !dbg !667
  %9 = bitcast %union.sockaddr_union* %8 to %struct.sockaddr_in6*, !dbg !669
  %10 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 0, !dbg !670
  store i16 10, i16* %10, align 4, !dbg !671
  %11 = load %union.sockaddr_union*, %union.sockaddr_union** %3, align 8, !dbg !672
  %12 = bitcast %union.sockaddr_union* %11 to %struct.sockaddr_in6*, !dbg !673
  %13 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %12, i32 0, i32 3, !dbg !674
  %14 = bitcast %struct.in6_addr* %13 to i8*, !dbg !675
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* bitcast (%struct.in6_addr* @in6addr_any to i8*), i64 16, i32 4, i1 false), !dbg !675
  br label %43, !dbg !676

; <label>:15:                                     ; preds = %2
  %16 = load %struct._IPADDR*, %struct._IPADDR** %4, align 8, !dbg !677
  %17 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %16, i32 0, i32 0, !dbg !678
  %18 = load i16, i16* %17, align 4, !dbg !678
  %19 = load %union.sockaddr_union*, %union.sockaddr_union** %3, align 8, !dbg !679
  %20 = bitcast %union.sockaddr_union* %19 to %struct.sockaddr_in*, !dbg !680
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %20, i32 0, i32 0, !dbg !681
  store i16 %18, i16* %21, align 4, !dbg !682
  %22 = load %struct._IPADDR*, %struct._IPADDR** %4, align 8, !dbg !683
  %23 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %22, i32 0, i32 0, !dbg !685
  %24 = load i16, i16* %23, align 4, !dbg !685
  %25 = zext i16 %24 to i32, !dbg !683
  %26 = icmp eq i32 %25, 10, !dbg !686
  br i1 %26, label %27, label %35, !dbg !687

; <label>:27:                                     ; preds = %15
  %28 = load %union.sockaddr_union*, %union.sockaddr_union** %3, align 8, !dbg !688
  %29 = bitcast %union.sockaddr_union* %28 to %struct.sockaddr_in6*, !dbg !689
  %30 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %29, i32 0, i32 3, !dbg !690
  %31 = bitcast %struct.in6_addr* %30 to i8*, !dbg !691
  %32 = load %struct._IPADDR*, %struct._IPADDR** %4, align 8, !dbg !692
  %33 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %32, i32 0, i32 1, !dbg !693
  %34 = bitcast %struct.in6_addr* %33 to i8*, !dbg !691
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %34, i64 16, i32 4, i1 false), !dbg !691
  br label %43, !dbg !691

; <label>:35:                                     ; preds = %15
  %36 = load %union.sockaddr_union*, %union.sockaddr_union** %3, align 8, !dbg !694
  %37 = bitcast %union.sockaddr_union* %36 to %struct.sockaddr_in*, !dbg !695
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %37, i32 0, i32 2, !dbg !696
  %39 = bitcast %struct.in_addr* %38 to i8*, !dbg !697
  %40 = load %struct._IPADDR*, %struct._IPADDR** %4, align 8, !dbg !698
  %41 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %40, i32 0, i32 1, !dbg !699
  %42 = bitcast %struct.in6_addr* %41 to i8*, !dbg !697
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %42, i64 4, i32 4, i1 false), !dbg !697
  br label %43

; <label>:43:                                     ; preds = %7, %35, %27
  ret void, !dbg !700
}

; Function Attrs: nounwind
declare i32 @bind(i32, %struct.sockaddr*, i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

declare i32 @close(i32) #2

; Function Attrs: nounwind uwtable
define internal void @sin_set_port(%union.sockaddr_union*, i32) #0 !dbg !701 {
  %3 = alloca %union.sockaddr_union*, align 8
  %4 = alloca i32, align 4
  store %union.sockaddr_union* %0, %union.sockaddr_union** %3, align 8
  call void @llvm.dbg.declare(metadata %union.sockaddr_union** %3, metadata !704, metadata !343), !dbg !705
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !706, metadata !343), !dbg !707
  %5 = load %union.sockaddr_union*, %union.sockaddr_union** %3, align 8, !dbg !708
  %6 = bitcast %union.sockaddr_union* %5 to %struct.sockaddr_in*, !dbg !710
  %7 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0, !dbg !711
  %8 = load i16, i16* %7, align 4, !dbg !711
  %9 = zext i16 %8 to i32, !dbg !708
  %10 = icmp eq i32 %9, 10, !dbg !712
  br i1 %10, label %11, label %18, !dbg !713

; <label>:11:                                     ; preds = %2
  %12 = load i32, i32* %4, align 4, !dbg !714
  %13 = trunc i32 %12 to i16, !dbg !715
  %14 = call zeroext i16 @htons(i16 zeroext %13) #1, !dbg !716
  %15 = load %union.sockaddr_union*, %union.sockaddr_union** %3, align 8, !dbg !717
  %16 = bitcast %union.sockaddr_union* %15 to %struct.sockaddr_in6*, !dbg !718
  %17 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %16, i32 0, i32 1, !dbg !719
  store i16 %14, i16* %17, align 2, !dbg !720
  br label %25, !dbg !717

; <label>:18:                                     ; preds = %2
  %19 = load i32, i32* %4, align 4, !dbg !721
  %20 = trunc i32 %19 to i16, !dbg !722
  %21 = call zeroext i16 @htons(i16 zeroext %20) #1, !dbg !723
  %22 = load %union.sockaddr_union*, %union.sockaddr_union** %3, align 8, !dbg !724
  %23 = bitcast %union.sockaddr_union* %22 to %struct.sockaddr_in*, !dbg !725
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %23, i32 0, i32 1, !dbg !726
  store i16 %21, i16* %24, align 2, !dbg !727
  br label %25

; <label>:25:                                     ; preds = %18, %11
  ret void, !dbg !728
}

declare i32 @connect(i32, %struct.sockaddr*, i32) #2

; Function Attrs: nounwind uwtable
define %struct._GIOChannel* @net_connect_ip(%struct._IPADDR*, i32, %struct._IPADDR*) #0 !dbg !729 {
  %4 = alloca %struct._GIOChannel*, align 8
  %5 = alloca %struct._IPADDR*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._IPADDR*, align 8
  %8 = alloca i32, align 4
  store %struct._IPADDR* %0, %struct._IPADDR** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IPADDR** %5, metadata !732, metadata !343), !dbg !733
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !734, metadata !343), !dbg !735
  store %struct._IPADDR* %2, %struct._IPADDR** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IPADDR** %7, metadata !736, metadata !343), !dbg !737
  call void @llvm.dbg.declare(metadata i32* %8, metadata !738, metadata !343), !dbg !739
  store i32 -1, i32* %8, align 4, !dbg !739
  %9 = load %struct._IPADDR*, %struct._IPADDR** %5, align 8, !dbg !740
  %10 = load i32, i32* %6, align 4, !dbg !741
  %11 = load %struct._IPADDR*, %struct._IPADDR** %7, align 8, !dbg !742
  %12 = call i32 @net_connect_ip_handle(%struct._IPADDR* %9, i32 %10, %struct._IPADDR* %11), !dbg !743
  store i32 %12, i32* %8, align 4, !dbg !744
  %13 = load i32, i32* %8, align 4, !dbg !745
  %14 = icmp eq i32 %13, -1, !dbg !747
  br i1 %14, label %15, label %16, !dbg !748

; <label>:15:                                     ; preds = %3
  store %struct._GIOChannel* null, %struct._GIOChannel** %4, align 8, !dbg !749
  br label %19, !dbg !749

; <label>:16:                                     ; preds = %3
  %17 = load i32, i32* %8, align 4, !dbg !750
  %18 = call %struct._GIOChannel* @g_io_channel_new(i32 %17), !dbg !751
  store %struct._GIOChannel* %18, %struct._GIOChannel** %4, align 8, !dbg !752
  br label %19, !dbg !752

; <label>:19:                                     ; preds = %16, %15
  %20 = load %struct._GIOChannel*, %struct._GIOChannel** %4, align 8, !dbg !753
  ret %struct._GIOChannel* %20, !dbg !753
}

; Function Attrs: nounwind uwtable
define %struct._GIOChannel* @net_connect_unix(i8*) #0 !dbg !754 {
  %2 = alloca %struct._GIOChannel*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sockaddr_un, align 2
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !757, metadata !343), !dbg !758
  call void @llvm.dbg.declare(metadata %struct.sockaddr_un* %4, metadata !759, metadata !343), !dbg !768
  call void @llvm.dbg.declare(metadata i32* %5, metadata !769, metadata !343), !dbg !770
  call void @llvm.dbg.declare(metadata i32* %6, metadata !771, metadata !343), !dbg !772
  %8 = call i32 @socket(i32 1, i32 1, i32 0) #7, !dbg !773
  store i32 %8, i32* %5, align 4, !dbg !774
  %9 = load i32, i32* %5, align 4, !dbg !775
  %10 = icmp eq i32 %9, -1, !dbg !777
  br i1 %10, label %11, label %12, !dbg !778

; <label>:11:                                     ; preds = %1
  store %struct._GIOChannel* null, %struct._GIOChannel** %2, align 8, !dbg !779
  br label %42, !dbg !779

; <label>:12:                                     ; preds = %1
  %13 = load i32, i32* %5, align 4, !dbg !780
  %14 = call i32 (i32, i32, ...) @fcntl(i32 %13, i32 4, i32 2048), !dbg !781
  %15 = bitcast %struct.sockaddr_un* %4 to i8*, !dbg !782
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 110, i32 2, i1 false), !dbg !782
  %16 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %4, i32 0, i32 0, !dbg !783
  store i16 1, i16* %16, align 2, !dbg !784
  %17 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %4, i32 0, i32 1, !dbg !785
  %18 = getelementptr inbounds [108 x i8], [108 x i8]* %17, i32 0, i32 0, !dbg !786
  %19 = load i8*, i8** %3, align 8, !dbg !787
  %20 = call i8* @strncpy(i8* %18, i8* %19, i64 107) #7, !dbg !788
  %21 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %4, i32 0, i32 1, !dbg !789
  %22 = getelementptr inbounds [108 x i8], [108 x i8]* %21, i64 0, i64 107, !dbg !790
  store i8 0, i8* %22, align 1, !dbg !791
  %23 = load i32, i32* %5, align 4, !dbg !792
  %24 = bitcast %struct.sockaddr_un* %4 to %struct.sockaddr*, !dbg !793
  %25 = call i32 @connect(i32 %23, %struct.sockaddr* %24, i32 110), !dbg !794
  store i32 %25, i32* %6, align 4, !dbg !795
  %26 = load i32, i32* %6, align 4, !dbg !796
  %27 = icmp slt i32 %26, 0, !dbg !798
  br i1 %27, label %28, label %39, !dbg !799

; <label>:28:                                     ; preds = %12
  %29 = call i32* @__errno_location() #1, !dbg !800
  %30 = load i32, i32* %29, align 4, !dbg !802
  %31 = icmp ne i32 %30, 115, !dbg !803
  br i1 %31, label %32, label %39, !dbg !804

; <label>:32:                                     ; preds = %28
  call void @llvm.dbg.declare(metadata i32* %7, metadata !805, metadata !343), !dbg !807
  %33 = call i32* @__errno_location() #1, !dbg !808
  %34 = load i32, i32* %33, align 4, !dbg !809
  store i32 %34, i32* %7, align 4, !dbg !807
  %35 = load i32, i32* %5, align 4, !dbg !810
  %36 = call i32 @close(i32 %35), !dbg !811
  %37 = load i32, i32* %7, align 4, !dbg !812
  %38 = call i32* @__errno_location() #1, !dbg !813
  store i32 %37, i32* %38, align 4, !dbg !814
  store %struct._GIOChannel* null, %struct._GIOChannel** %2, align 8, !dbg !815
  br label %42, !dbg !815

; <label>:39:                                     ; preds = %28, %12
  %40 = load i32, i32* %5, align 4, !dbg !816
  %41 = call %struct._GIOChannel* @g_io_channel_new(i32 %40), !dbg !817
  store %struct._GIOChannel* %41, %struct._GIOChannel** %2, align 8, !dbg !818
  br label %42, !dbg !818

; <label>:42:                                     ; preds = %39, %32, %11
  %43 = load %struct._GIOChannel*, %struct._GIOChannel** %2, align 8, !dbg !819
  ret %struct._GIOChannel* %43, !dbg !819
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define void @net_disconnect(%struct._GIOChannel*) #0 !dbg !820 {
  %2 = alloca %struct._GIOChannel*, align 8
  store %struct._GIOChannel* %0, %struct._GIOChannel** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %2, metadata !821, metadata !343), !dbg !822
  br label %3, !dbg !823, !llvm.loop !824

; <label>:3:                                      ; preds = %1
  %4 = load %struct._GIOChannel*, %struct._GIOChannel** %2, align 8, !dbg !825
  %5 = icmp ne %struct._GIOChannel* %4, null, !dbg !829
  br i1 %5, label %6, label %7, !dbg !825

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !830

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.net_disconnect, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)), !dbg !833
  br label %13, !dbg !836

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !837

; <label>:9:                                      ; preds = %8
  %10 = load %struct._GIOChannel*, %struct._GIOChannel** %2, align 8, !dbg !839
  %11 = call i32 @g_io_channel_shutdown(%struct._GIOChannel* %10, i32 1, %struct._GError** null), !dbg !840
  %12 = load %struct._GIOChannel*, %struct._GIOChannel** %2, align 8, !dbg !841
  call void @g_io_channel_unref(%struct._GIOChannel* %12), !dbg !842
  br label %13, !dbg !843

; <label>:13:                                     ; preds = %9, %7
  ret void, !dbg !844
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare i32 @g_io_channel_shutdown(%struct._GIOChannel*, i32, %struct._GError**) #2

declare void @g_io_channel_unref(%struct._GIOChannel*) #2

; Function Attrs: nounwind uwtable
define %struct._GIOChannel* @net_listen(%struct._IPADDR*, i32*) #0 !dbg !846 {
  %3 = alloca %struct._GIOChannel*, align 8
  %4 = alloca %struct._IPADDR*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %union.sockaddr_union, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct._IPADDR* %0, %struct._IPADDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IPADDR** %4, metadata !850, metadata !343), !dbg !851
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !852, metadata !343), !dbg !853
  call void @llvm.dbg.declare(metadata %union.sockaddr_union* %6, metadata !854, metadata !343), !dbg !855
  call void @llvm.dbg.declare(metadata i32* %7, metadata !856, metadata !343), !dbg !857
  call void @llvm.dbg.declare(metadata i32* %8, metadata !858, metadata !343), !dbg !859
  call void @llvm.dbg.declare(metadata i32* %9, metadata !860, metadata !343), !dbg !861
  store i32 1, i32* %9, align 4, !dbg !861
  call void @llvm.dbg.declare(metadata i32* %10, metadata !862, metadata !343), !dbg !866
  br label %11, !dbg !867, !llvm.loop !868

; <label>:11:                                     ; preds = %2
  %12 = load i32*, i32** %5, align 8, !dbg !869
  %13 = icmp ne i32* %12, null, !dbg !873
  br i1 %13, label %14, label %15, !dbg !869

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !874

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.net_listen, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)), !dbg !877
  store %struct._GIOChannel* null, %struct._GIOChannel** %3, align 8, !dbg !880
  br label %96, !dbg !880

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !881

; <label>:17:                                     ; preds = %16
  %18 = bitcast %union.sockaddr_union* %6 to i8*, !dbg !883
  call void @llvm.memset.p0i8.i64(i8* %18, i8 0, i64 28, i32 4, i1 false), !dbg !883
  %19 = load %struct._IPADDR*, %struct._IPADDR** %4, align 8, !dbg !884
  call void @sin_set_ip(%union.sockaddr_union* %6, %struct._IPADDR* %19), !dbg !885
  %20 = load i32*, i32** %5, align 8, !dbg !886
  %21 = load i32, i32* %20, align 4, !dbg !887
  call void @sin_set_port(%union.sockaddr_union* %6, i32 %21), !dbg !888
  %22 = bitcast %union.sockaddr_union* %6 to %struct.sockaddr_in*, !dbg !889
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %22, i32 0, i32 0, !dbg !890
  %24 = load i16, i16* %23, align 4, !dbg !890
  %25 = zext i16 %24 to i32, !dbg !891
  %26 = call i32 @socket(i32 %25, i32 1, i32 0) #7, !dbg !892
  store i32 %26, i32* %8, align 4, !dbg !893
  %27 = load i32, i32* %8, align 4, !dbg !894
  %28 = icmp eq i32 %27, -1, !dbg !896
  br i1 %28, label %29, label %44, !dbg !897

; <label>:29:                                     ; preds = %17
  %30 = call i32* @__errno_location() #1, !dbg !898
  %31 = load i32, i32* %30, align 4, !dbg !900
  %32 = icmp eq i32 %31, 22, !dbg !901
  br i1 %32, label %37, label %33, !dbg !902

; <label>:33:                                     ; preds = %29
  %34 = call i32* @__errno_location() #1, !dbg !903
  %35 = load i32, i32* %34, align 4, !dbg !905
  %36 = icmp eq i32 %35, 97, !dbg !906
  br i1 %36, label %37, label %44, !dbg !907

; <label>:37:                                     ; preds = %33, %29
  %38 = bitcast %union.sockaddr_union* %6 to %struct.sockaddr_in*, !dbg !908
  %39 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %38, i32 0, i32 0, !dbg !910
  store i16 2, i16* %39, align 4, !dbg !911
  %40 = bitcast %union.sockaddr_union* %6 to %struct.sockaddr_in*, !dbg !912
  %41 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %40, i32 0, i32 2, !dbg !913
  %42 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %41, i32 0, i32 0, !dbg !914
  store i32 0, i32* %42, align 4, !dbg !915
  %43 = call i32 @socket(i32 2, i32 1, i32 0) #7, !dbg !916
  store i32 %43, i32* %8, align 4, !dbg !917
  br label %44, !dbg !918

; <label>:44:                                     ; preds = %37, %33, %17
  %45 = load i32, i32* %8, align 4, !dbg !919
  %46 = icmp eq i32 %45, -1, !dbg !921
  br i1 %46, label %47, label %48, !dbg !922

; <label>:47:                                     ; preds = %44
  store %struct._GIOChannel* null, %struct._GIOChannel** %3, align 8, !dbg !923
  br label %96, !dbg !923

; <label>:48:                                     ; preds = %44
  %49 = load i32, i32* %8, align 4, !dbg !924
  %50 = call i32 (i32, i32, ...) @fcntl(i32 %49, i32 4, i32 2048), !dbg !925
  %51 = load i32, i32* %8, align 4, !dbg !926
  %52 = bitcast i32* %9 to i8*, !dbg !927
  %53 = call i32 @setsockopt(i32 %51, i32 1, i32 2, i8* %52, i32 4) #7, !dbg !928
  %54 = load i32, i32* %8, align 4, !dbg !929
  %55 = bitcast i32* %9 to i8*, !dbg !930
  %56 = call i32 @setsockopt(i32 %54, i32 1, i32 9, i8* %55, i32 4) #7, !dbg !931
  %57 = load i32, i32* %8, align 4, !dbg !932
  %58 = bitcast %union.sockaddr_union* %6 to %struct.sockaddr*, !dbg !933
  %59 = bitcast %union.sockaddr_union* %6 to %struct.sockaddr*, !dbg !934
  %60 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %59, i32 0, i32 0, !dbg !935
  %61 = load i16, i16* %60, align 4, !dbg !935
  %62 = zext i16 %61 to i32, !dbg !936
  %63 = icmp eq i32 %62, 10, !dbg !937
  %64 = select i1 %63, i64 28, i64 16, !dbg !936
  %65 = trunc i64 %64 to i32, !dbg !938
  %66 = call i32 @bind(i32 %57, %struct.sockaddr* %58, i32 %65) #7, !dbg !939
  store i32 %66, i32* %7, align 4, !dbg !940
  %67 = load i32, i32* %7, align 4, !dbg !941
  %68 = icmp sge i32 %67, 0, !dbg !943
  br i1 %68, label %69, label %93, !dbg !944

; <label>:69:                                     ; preds = %48
  %70 = bitcast %union.sockaddr_union* %6 to %struct.sockaddr*, !dbg !945
  %71 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %70, i32 0, i32 0, !dbg !947
  %72 = load i16, i16* %71, align 4, !dbg !947
  %73 = zext i16 %72 to i32, !dbg !948
  %74 = icmp eq i32 %73, 10, !dbg !949
  %75 = select i1 %74, i64 28, i64 16, !dbg !948
  %76 = trunc i64 %75 to i32, !dbg !950
  store i32 %76, i32* %10, align 4, !dbg !951
  %77 = load i32, i32* %8, align 4, !dbg !952
  %78 = bitcast %union.sockaddr_union* %6 to %struct.sockaddr*, !dbg !953
  %79 = call i32 @getsockname(i32 %77, %struct.sockaddr* %78, i32* %10) #7, !dbg !954
  store i32 %79, i32* %7, align 4, !dbg !955
  %80 = load i32, i32* %7, align 4, !dbg !956
  %81 = icmp sge i32 %80, 0, !dbg !958
  br i1 %81, label %82, label %92, !dbg !959

; <label>:82:                                     ; preds = %69
  %83 = call i32 @sin_get_port(%union.sockaddr_union* %6), !dbg !960
  %84 = load i32*, i32** %5, align 8, !dbg !962
  store i32 %83, i32* %84, align 4, !dbg !963
  %85 = load i32, i32* %8, align 4, !dbg !964
  %86 = call i32 @listen(i32 %85, i32 1) #7, !dbg !966
  %87 = icmp sge i32 %86, 0, !dbg !967
  br i1 %87, label %88, label %91, !dbg !968

; <label>:88:                                     ; preds = %82
  %89 = load i32, i32* %8, align 4, !dbg !969
  %90 = call %struct._GIOChannel* @g_io_channel_new(i32 %89), !dbg !970
  store %struct._GIOChannel* %90, %struct._GIOChannel** %3, align 8, !dbg !971
  br label %96, !dbg !971

; <label>:91:                                     ; preds = %82
  br label %92, !dbg !972

; <label>:92:                                     ; preds = %91, %69
  br label %93, !dbg !973

; <label>:93:                                     ; preds = %92, %48
  %94 = load i32, i32* %8, align 4, !dbg !974
  %95 = call i32 @close(i32 %94), !dbg !975
  store %struct._GIOChannel* null, %struct._GIOChannel** %3, align 8, !dbg !976
  br label %96, !dbg !976

; <label>:96:                                     ; preds = %93, %88, %47, %15
  %97 = load %struct._GIOChannel*, %struct._GIOChannel** %3, align 8, !dbg !977
  ret %struct._GIOChannel* %97, !dbg !977
}

; Function Attrs: nounwind
declare i32 @getsockname(i32, %struct.sockaddr*, i32*) #3

; Function Attrs: nounwind uwtable
define internal i32 @sin_get_port(%union.sockaddr_union*) #0 !dbg !978 {
  %2 = alloca %union.sockaddr_union*, align 8
  store %union.sockaddr_union* %0, %union.sockaddr_union** %2, align 8
  call void @llvm.dbg.declare(metadata %union.sockaddr_union** %2, metadata !981, metadata !343), !dbg !982
  %3 = load %union.sockaddr_union*, %union.sockaddr_union** %2, align 8, !dbg !983
  %4 = bitcast %union.sockaddr_union* %3 to %struct.sockaddr_in*, !dbg !984
  %5 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0, !dbg !985
  %6 = load i16, i16* %5, align 4, !dbg !985
  %7 = zext i16 %6 to i32, !dbg !983
  %8 = icmp eq i32 %7, 10, !dbg !986
  br i1 %8, label %9, label %15, !dbg !987

; <label>:9:                                      ; preds = %1
  %10 = load %union.sockaddr_union*, %union.sockaddr_union** %2, align 8, !dbg !988
  %11 = bitcast %union.sockaddr_union* %10 to %struct.sockaddr_in6*, !dbg !989
  %12 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %11, i32 0, i32 1, !dbg !990
  %13 = load i16, i16* %12, align 2, !dbg !990
  %14 = zext i16 %13 to i32, !dbg !988
  br label %21, !dbg !991

; <label>:15:                                     ; preds = %1
  %16 = load %union.sockaddr_union*, %union.sockaddr_union** %2, align 8, !dbg !993
  %17 = bitcast %union.sockaddr_union* %16 to %struct.sockaddr_in*, !dbg !994
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %17, i32 0, i32 1, !dbg !995
  %19 = load i16, i16* %18, align 2, !dbg !995
  %20 = zext i16 %19 to i32, !dbg !993
  br label %21, !dbg !996

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i32 [ %14, %9 ], [ %20, %15 ], !dbg !998
  %23 = trunc i32 %22 to i16, !dbg !998
  %24 = call zeroext i16 @ntohs(i16 zeroext %23) #1, !dbg !1000
  %25 = zext i16 %24 to i32, !dbg !1000
  ret i32 %25, !dbg !1001
}

; Function Attrs: nounwind
declare i32 @listen(i32, i32) #3

; Function Attrs: nounwind uwtable
define %struct._GIOChannel* @net_accept(%struct._GIOChannel*, %struct._IPADDR*, i32*) #0 !dbg !1002 {
  %4 = alloca %struct._GIOChannel*, align 8
  %5 = alloca %struct._GIOChannel*, align 8
  %6 = alloca %struct._IPADDR*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %union.sockaddr_union, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct._GIOChannel* %0, %struct._GIOChannel** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %5, metadata !1005, metadata !343), !dbg !1006
  store %struct._IPADDR* %1, %struct._IPADDR** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IPADDR** %6, metadata !1007, metadata !343), !dbg !1008
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !1009, metadata !343), !dbg !1010
  call void @llvm.dbg.declare(metadata %union.sockaddr_union* %8, metadata !1011, metadata !343), !dbg !1012
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1013, metadata !343), !dbg !1014
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1015, metadata !343), !dbg !1016
  br label %11, !dbg !1017, !llvm.loop !1018

; <label>:11:                                     ; preds = %3
  %12 = load %struct._GIOChannel*, %struct._GIOChannel** %5, align 8, !dbg !1019
  %13 = icmp ne %struct._GIOChannel* %12, null, !dbg !1023
  br i1 %13, label %14, label %15, !dbg !1019

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !1024

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.net_accept, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)), !dbg !1027
  store %struct._GIOChannel* null, %struct._GIOChannel** %4, align 8, !dbg !1030
  br label %41, !dbg !1030

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !1031

; <label>:17:                                     ; preds = %16
  store i32 28, i32* %10, align 4, !dbg !1033
  %18 = load %struct._GIOChannel*, %struct._GIOChannel** %5, align 8, !dbg !1034
  %19 = call i32 @g_io_channel_unix_get_fd(%struct._GIOChannel* %18), !dbg !1035
  %20 = bitcast %union.sockaddr_union* %8 to %struct.sockaddr*, !dbg !1036
  %21 = call i32 @accept(i32 %19, %struct.sockaddr* %20, i32* %10), !dbg !1037
  store i32 %21, i32* %9, align 4, !dbg !1039
  %22 = load i32, i32* %9, align 4, !dbg !1040
  %23 = icmp slt i32 %22, 0, !dbg !1042
  br i1 %23, label %24, label %25, !dbg !1043

; <label>:24:                                     ; preds = %17
  store %struct._GIOChannel* null, %struct._GIOChannel** %4, align 8, !dbg !1044
  br label %41, !dbg !1044

; <label>:25:                                     ; preds = %17
  %26 = load %struct._IPADDR*, %struct._IPADDR** %6, align 8, !dbg !1045
  %27 = icmp ne %struct._IPADDR* %26, null, !dbg !1047
  br i1 %27, label %28, label %30, !dbg !1048

; <label>:28:                                     ; preds = %25
  %29 = load %struct._IPADDR*, %struct._IPADDR** %6, align 8, !dbg !1049
  call void @sin_get_ip(%union.sockaddr_union* %8, %struct._IPADDR* %29), !dbg !1051
  br label %30, !dbg !1051

; <label>:30:                                     ; preds = %28, %25
  %31 = load i32*, i32** %7, align 8, !dbg !1052
  %32 = icmp ne i32* %31, null, !dbg !1054
  br i1 %32, label %33, label %36, !dbg !1055

; <label>:33:                                     ; preds = %30
  %34 = call i32 @sin_get_port(%union.sockaddr_union* %8), !dbg !1056
  %35 = load i32*, i32** %7, align 8, !dbg !1058
  store i32 %34, i32* %35, align 4, !dbg !1059
  br label %36, !dbg !1060

; <label>:36:                                     ; preds = %33, %30
  %37 = load i32, i32* %9, align 4, !dbg !1061
  %38 = call i32 (i32, i32, ...) @fcntl(i32 %37, i32 4, i32 2048), !dbg !1062
  %39 = load i32, i32* %9, align 4, !dbg !1063
  %40 = call %struct._GIOChannel* @g_io_channel_new(i32 %39), !dbg !1064
  store %struct._GIOChannel* %40, %struct._GIOChannel** %4, align 8, !dbg !1065
  br label %41, !dbg !1065

; <label>:41:                                     ; preds = %36, %24, %15
  %42 = load %struct._GIOChannel*, %struct._GIOChannel** %4, align 8, !dbg !1066
  ret %struct._GIOChannel* %42, !dbg !1066
}

declare i32 @accept(i32, %struct.sockaddr*, i32*) #2

declare i32 @g_io_channel_unix_get_fd(%struct._GIOChannel*) #2

; Function Attrs: nounwind uwtable
define i32 @net_receive(%struct._GIOChannel*, i8*, i32) #0 !dbg !1067 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._GIOChannel*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct._GError*, align 8
  store %struct._GIOChannel* %0, %struct._GIOChannel** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %5, metadata !1070, metadata !343), !dbg !1071
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1072, metadata !343), !dbg !1073
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1074, metadata !343), !dbg !1075
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1076, metadata !343), !dbg !1077
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1078, metadata !343), !dbg !1079
  call void @llvm.dbg.declare(metadata %struct._GError** %10, metadata !1080, metadata !343), !dbg !1081
  store %struct._GError* null, %struct._GError** %10, align 8, !dbg !1081
  br label %11, !dbg !1082, !llvm.loop !1083

; <label>:11:                                     ; preds = %3
  %12 = load %struct._GIOChannel*, %struct._GIOChannel** %5, align 8, !dbg !1084
  %13 = icmp ne %struct._GIOChannel* %12, null, !dbg !1088
  br i1 %13, label %14, label %15, !dbg !1084

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !1089

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.net_receive, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)), !dbg !1092
  store i32 -1, i32* %4, align 4, !dbg !1095
  br label %47, !dbg !1095

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !1096

; <label>:17:                                     ; preds = %16
  br label %18, !dbg !1098, !llvm.loop !1099

; <label>:18:                                     ; preds = %17
  %19 = load i8*, i8** %6, align 8, !dbg !1100
  %20 = icmp ne i8* %19, null, !dbg !1104
  br i1 %20, label %21, label %22, !dbg !1100

; <label>:21:                                     ; preds = %18
  br label %23, !dbg !1105

; <label>:22:                                     ; preds = %18
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.net_receive, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0)), !dbg !1108
  store i32 -1, i32* %4, align 4, !dbg !1111
  br label %47, !dbg !1111

; <label>:23:                                     ; preds = %21
  br label %24, !dbg !1112

; <label>:24:                                     ; preds = %23
  %25 = load %struct._GIOChannel*, %struct._GIOChannel** %5, align 8, !dbg !1114
  %26 = load i8*, i8** %6, align 8, !dbg !1115
  %27 = load i32, i32* %7, align 4, !dbg !1116
  %28 = sext i32 %27 to i64, !dbg !1116
  %29 = call i32 @g_io_channel_read_chars(%struct._GIOChannel* %25, i8* %26, i64 %28, i64* %8, %struct._GError** %10), !dbg !1117
  store i32 %29, i32* %9, align 4, !dbg !1118
  %30 = load %struct._GError*, %struct._GError** %10, align 8, !dbg !1119
  %31 = icmp ne %struct._GError* %30, null, !dbg !1121
  br i1 %31, label %32, label %37, !dbg !1122

; <label>:32:                                     ; preds = %24
  %33 = load %struct._GError*, %struct._GError** %10, align 8, !dbg !1123
  %34 = getelementptr inbounds %struct._GError, %struct._GError* %33, i32 0, i32 2, !dbg !1125
  %35 = load i8*, i8** %34, align 8, !dbg !1125
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* %35), !dbg !1126
  %36 = load %struct._GError*, %struct._GError** %10, align 8, !dbg !1127
  call void @g_error_free(%struct._GError* %36), !dbg !1128
  br label %37, !dbg !1129

; <label>:37:                                     ; preds = %32, %24
  %38 = load i32, i32* %9, align 4, !dbg !1130
  %39 = icmp eq i32 %38, 0, !dbg !1132
  br i1 %39, label %43, label %40, !dbg !1133

; <label>:40:                                     ; preds = %37
  %41 = load i32, i32* %9, align 4, !dbg !1134
  %42 = icmp eq i32 %41, 2, !dbg !1136
  br i1 %42, label %43, label %44, !dbg !1137

; <label>:43:                                     ; preds = %40, %37
  store i32 -1, i32* %4, align 4, !dbg !1138
  br label %47, !dbg !1138

; <label>:44:                                     ; preds = %40
  %45 = load i64, i64* %8, align 8, !dbg !1139
  %46 = trunc i64 %45 to i32, !dbg !1139
  store i32 %46, i32* %4, align 4, !dbg !1140
  br label %47, !dbg !1140

; <label>:47:                                     ; preds = %44, %43, %22, %15
  %48 = load i32, i32* %4, align 4, !dbg !1141
  ret i32 %48, !dbg !1141
}

declare void @g_error_free(%struct._GError*) #2

; Function Attrs: nounwind uwtable
define i32 @net_transmit(%struct._GIOChannel*, i8*, i32) #0 !dbg !1142 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._GIOChannel*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct._GError*, align 8
  store %struct._GIOChannel* %0, %struct._GIOChannel** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %5, metadata !1145, metadata !343), !dbg !1146
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1147, metadata !343), !dbg !1148
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1149, metadata !343), !dbg !1150
  call void @llvm.dbg.declare(metadata i64* %8, metadata !1151, metadata !343), !dbg !1152
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1153, metadata !343), !dbg !1154
  call void @llvm.dbg.declare(metadata %struct._GError** %10, metadata !1155, metadata !343), !dbg !1156
  store %struct._GError* null, %struct._GError** %10, align 8, !dbg !1156
  br label %11, !dbg !1157, !llvm.loop !1158

; <label>:11:                                     ; preds = %3
  %12 = load %struct._GIOChannel*, %struct._GIOChannel** %5, align 8, !dbg !1159
  %13 = icmp ne %struct._GIOChannel* %12, null, !dbg !1163
  br i1 %13, label %14, label %15, !dbg !1159

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !1164

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.net_transmit, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)), !dbg !1167
  store i32 -1, i32* %4, align 4, !dbg !1170
  br label %44, !dbg !1170

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !1171

; <label>:17:                                     ; preds = %16
  br label %18, !dbg !1173, !llvm.loop !1174

; <label>:18:                                     ; preds = %17
  %19 = load i8*, i8** %6, align 8, !dbg !1175
  %20 = icmp ne i8* %19, null, !dbg !1179
  br i1 %20, label %21, label %22, !dbg !1175

; <label>:21:                                     ; preds = %18
  br label %23, !dbg !1180

; <label>:22:                                     ; preds = %18
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.net_transmit, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)), !dbg !1183
  store i32 -1, i32* %4, align 4, !dbg !1186
  br label %44, !dbg !1186

; <label>:23:                                     ; preds = %21
  br label %24, !dbg !1187

; <label>:24:                                     ; preds = %23
  %25 = load %struct._GIOChannel*, %struct._GIOChannel** %5, align 8, !dbg !1189
  %26 = load i8*, i8** %6, align 8, !dbg !1190
  %27 = load i32, i32* %7, align 4, !dbg !1191
  %28 = sext i32 %27 to i64, !dbg !1191
  %29 = call i32 @g_io_channel_write_chars(%struct._GIOChannel* %25, i8* %26, i64 %28, i64* %8, %struct._GError** %10), !dbg !1192
  store i32 %29, i32* %9, align 4, !dbg !1193
  %30 = load %struct._GError*, %struct._GError** %10, align 8, !dbg !1194
  %31 = icmp ne %struct._GError* %30, null, !dbg !1196
  br i1 %31, label %32, label %37, !dbg !1197

; <label>:32:                                     ; preds = %24
  %33 = load %struct._GError*, %struct._GError** %10, align 8, !dbg !1198
  %34 = getelementptr inbounds %struct._GError, %struct._GError* %33, i32 0, i32 2, !dbg !1200
  %35 = load i8*, i8** %34, align 8, !dbg !1200
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* %35), !dbg !1201
  %36 = load %struct._GError*, %struct._GError** %10, align 8, !dbg !1202
  call void @g_error_free(%struct._GError* %36), !dbg !1203
  br label %37, !dbg !1204

; <label>:37:                                     ; preds = %32, %24
  %38 = load i32, i32* %9, align 4, !dbg !1205
  %39 = icmp eq i32 %38, 0, !dbg !1207
  br i1 %39, label %40, label %41, !dbg !1208

; <label>:40:                                     ; preds = %37
  store i32 -1, i32* %4, align 4, !dbg !1209
  br label %44, !dbg !1209

; <label>:41:                                     ; preds = %37
  %42 = load i64, i64* %8, align 8, !dbg !1210
  %43 = trunc i64 %42 to i32, !dbg !1210
  store i32 %43, i32* %4, align 4, !dbg !1211
  br label %44, !dbg !1211

; <label>:44:                                     ; preds = %41, %40, %22, %15
  %45 = load i32, i32* %4, align 4, !dbg !1212
  ret i32 %45, !dbg !1212
}

; Function Attrs: nounwind uwtable
define i32 @net_getsockname(%struct._GIOChannel*, %struct._IPADDR*, i32*) #0 !dbg !1213 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._GIOChannel*, align 8
  %6 = alloca %struct._IPADDR*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %union.sockaddr_union, align 4
  %9 = alloca i32, align 4
  store %struct._GIOChannel* %0, %struct._GIOChannel** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %5, metadata !1216, metadata !343), !dbg !1217
  store %struct._IPADDR* %1, %struct._IPADDR** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IPADDR** %6, metadata !1218, metadata !343), !dbg !1219
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !1220, metadata !343), !dbg !1221
  call void @llvm.dbg.declare(metadata %union.sockaddr_union* %8, metadata !1222, metadata !343), !dbg !1223
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1224, metadata !343), !dbg !1225
  br label %10, !dbg !1226, !llvm.loop !1227

; <label>:10:                                     ; preds = %3
  %11 = load %struct._GIOChannel*, %struct._GIOChannel** %5, align 8, !dbg !1228
  %12 = icmp ne %struct._GIOChannel* %11, null, !dbg !1232
  br i1 %12, label %13, label %14, !dbg !1228

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !1233

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.net_getsockname, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0)), !dbg !1236
  store i32 -1, i32* %4, align 4, !dbg !1239
  br label %38, !dbg !1239

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !1240

; <label>:16:                                     ; preds = %15
  br label %17, !dbg !1242, !llvm.loop !1243

; <label>:17:                                     ; preds = %16
  %18 = load %struct._IPADDR*, %struct._IPADDR** %6, align 8, !dbg !1244
  %19 = icmp ne %struct._IPADDR* %18, null, !dbg !1248
  br i1 %19, label %20, label %21, !dbg !1244

; <label>:20:                                     ; preds = %17
  br label %22, !dbg !1249

; <label>:21:                                     ; preds = %17
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.net_getsockname, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0)), !dbg !1252
  store i32 -1, i32* %4, align 4, !dbg !1255
  br label %38, !dbg !1255

; <label>:22:                                     ; preds = %20
  br label %23, !dbg !1256

; <label>:23:                                     ; preds = %22
  store i32 28, i32* %9, align 4, !dbg !1258
  %24 = load %struct._GIOChannel*, %struct._GIOChannel** %5, align 8, !dbg !1259
  %25 = call i32 @g_io_channel_unix_get_fd(%struct._GIOChannel* %24), !dbg !1261
  %26 = bitcast %union.sockaddr_union* %8 to %struct.sockaddr*, !dbg !1262
  %27 = call i32 @getsockname(i32 %25, %struct.sockaddr* %26, i32* %9) #7, !dbg !1263
  %28 = icmp eq i32 %27, -1, !dbg !1265
  br i1 %28, label %29, label %30, !dbg !1266

; <label>:29:                                     ; preds = %23
  store i32 -1, i32* %4, align 4, !dbg !1267
  br label %38, !dbg !1267

; <label>:30:                                     ; preds = %23
  %31 = load %struct._IPADDR*, %struct._IPADDR** %6, align 8, !dbg !1268
  call void @sin_get_ip(%union.sockaddr_union* %8, %struct._IPADDR* %31), !dbg !1269
  %32 = load i32*, i32** %7, align 8, !dbg !1270
  %33 = icmp ne i32* %32, null, !dbg !1270
  br i1 %33, label %34, label %37, !dbg !1272

; <label>:34:                                     ; preds = %30
  %35 = call i32 @sin_get_port(%union.sockaddr_union* %8), !dbg !1273
  %36 = load i32*, i32** %7, align 8, !dbg !1275
  store i32 %35, i32* %36, align 4, !dbg !1276
  br label %37, !dbg !1277

; <label>:37:                                     ; preds = %34, %30
  store i32 0, i32* %4, align 4, !dbg !1278
  br label %38, !dbg !1278

; <label>:38:                                     ; preds = %37, %29, %21, %14
  %39 = load i32, i32* %4, align 4, !dbg !1279
  ret i32 %39, !dbg !1279
}

; Function Attrs: nounwind uwtable
define i32 @net_gethostbyname(i8*, %struct._IPADDR*, %struct._IPADDR*) #0 !dbg !1280 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct._IPADDR*, align 8
  %7 = alloca %struct._IPADDR*, align 8
  %8 = alloca %union.sockaddr_union*, align 8
  %9 = alloca %struct.addrinfo, align 8
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca %struct.addrinfo*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1283, metadata !343), !dbg !1284
  store %struct._IPADDR* %1, %struct._IPADDR** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IPADDR** %6, metadata !1285, metadata !343), !dbg !1286
  store %struct._IPADDR* %2, %struct._IPADDR** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IPADDR** %7, metadata !1287, metadata !343), !dbg !1288
  call void @llvm.dbg.declare(metadata %union.sockaddr_union** %8, metadata !1289, metadata !343), !dbg !1290
  call void @llvm.dbg.declare(metadata %struct.addrinfo* %9, metadata !1291, metadata !343), !dbg !1304
  call void @llvm.dbg.declare(metadata %struct.addrinfo** %10, metadata !1305, metadata !343), !dbg !1306
  call void @llvm.dbg.declare(metadata %struct.addrinfo** %11, metadata !1307, metadata !343), !dbg !1308
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1309, metadata !343), !dbg !1310
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1311, metadata !343), !dbg !1312
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1313, metadata !343), !dbg !1314
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1315, metadata !343), !dbg !1316
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1317, metadata !343), !dbg !1318
  br label %17, !dbg !1319, !llvm.loop !1320

; <label>:17:                                     ; preds = %3
  %18 = load i8*, i8** %5, align 8, !dbg !1321
  %19 = icmp ne i8* %18, null, !dbg !1325
  br i1 %19, label %20, label %21, !dbg !1321

; <label>:20:                                     ; preds = %17
  br label %22, !dbg !1326

; <label>:21:                                     ; preds = %17
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.net_gethostbyname, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0)), !dbg !1329
  store i32 -1, i32* %4, align 4, !dbg !1332
  br label %136, !dbg !1332

; <label>:22:                                     ; preds = %20
  br label %23, !dbg !1333

; <label>:23:                                     ; preds = %22
  %24 = load %struct._IPADDR*, %struct._IPADDR** %6, align 8, !dbg !1335
  %25 = bitcast %struct._IPADDR* %24 to i8*, !dbg !1336
  call void @llvm.memset.p0i8.i64(i8* %25, i8 0, i64 20, i32 4, i1 false), !dbg !1336
  %26 = load %struct._IPADDR*, %struct._IPADDR** %7, align 8, !dbg !1337
  %27 = bitcast %struct._IPADDR* %26 to i8*, !dbg !1338
  call void @llvm.memset.p0i8.i64(i8* %27, i8 0, i64 20, i32 4, i1 false), !dbg !1338
  %28 = bitcast %struct.addrinfo* %9 to i8*, !dbg !1339
  call void @llvm.memset.p0i8.i64(i8* %28, i8 0, i64 48, i32 8, i1 false), !dbg !1339
  %29 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i32 0, i32 2, !dbg !1340
  store i32 1, i32* %29, align 8, !dbg !1341
  %30 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i32 0, i32 0, !dbg !1342
  store i32 32, i32* %30, align 8, !dbg !1343
  %31 = load i8*, i8** %5, align 8, !dbg !1344
  %32 = call i32 @getaddrinfo(i8* %31, i8* null, %struct.addrinfo* %9, %struct.addrinfo** %11), !dbg !1345
  store i32 %32, i32* %12, align 4, !dbg !1346
  %33 = load i32, i32* %12, align 4, !dbg !1347
  %34 = icmp ne i32 %33, 0, !dbg !1349
  br i1 %34, label %35, label %37, !dbg !1350

; <label>:35:                                     ; preds = %23
  %36 = load i32, i32* %12, align 4, !dbg !1351
  store i32 %36, i32* %4, align 4, !dbg !1352
  br label %136, !dbg !1352

; <label>:37:                                     ; preds = %23
  store i32 0, i32* %14, align 4, !dbg !1353
  store i32 0, i32* %13, align 4, !dbg !1354
  %38 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8, !dbg !1355
  store %struct.addrinfo* %38, %struct.addrinfo** %10, align 8, !dbg !1357
  br label %39, !dbg !1358

; <label>:39:                                     ; preds = %60, %37
  %40 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8, !dbg !1359
  %41 = icmp ne %struct.addrinfo* %40, null, !dbg !1362
  br i1 %41, label %42, label %64, !dbg !1363

; <label>:42:                                     ; preds = %39
  %43 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8, !dbg !1364
  %44 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %43, i32 0, i32 1, !dbg !1367
  %45 = load i32, i32* %44, align 4, !dbg !1367
  %46 = icmp eq i32 %45, 2, !dbg !1368
  br i1 %46, label %47, label %50, !dbg !1369

; <label>:47:                                     ; preds = %42
  %48 = load i32, i32* %13, align 4, !dbg !1370
  %49 = add nsw i32 %48, 1, !dbg !1370
  store i32 %49, i32* %13, align 4, !dbg !1370
  br label %59, !dbg !1371

; <label>:50:                                     ; preds = %42
  %51 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8, !dbg !1372
  %52 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %51, i32 0, i32 1, !dbg !1374
  %53 = load i32, i32* %52, align 4, !dbg !1374
  %54 = icmp eq i32 %53, 10, !dbg !1375
  br i1 %54, label %55, label %58, !dbg !1376

; <label>:55:                                     ; preds = %50
  %56 = load i32, i32* %14, align 4, !dbg !1377
  %57 = add nsw i32 %56, 1, !dbg !1377
  store i32 %57, i32* %14, align 4, !dbg !1377
  br label %58, !dbg !1378

; <label>:58:                                     ; preds = %55, %50
  br label %59

; <label>:59:                                     ; preds = %58, %47
  br label %60, !dbg !1379

; <label>:60:                                     ; preds = %59
  %61 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8, !dbg !1380
  %62 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %61, i32 0, i32 7, !dbg !1382
  %63 = load %struct.addrinfo*, %struct.addrinfo** %62, align 8, !dbg !1382
  store %struct.addrinfo* %63, %struct.addrinfo** %10, align 8, !dbg !1383
  br label %39, !dbg !1384, !llvm.loop !1385

; <label>:64:                                     ; preds = %39
  %65 = load i32, i32* %13, align 4, !dbg !1387
  %66 = icmp eq i32 %65, 0, !dbg !1389
  br i1 %66, label %67, label %71, !dbg !1390

; <label>:67:                                     ; preds = %64
  %68 = load i32, i32* %14, align 4, !dbg !1391
  %69 = icmp eq i32 %68, 0, !dbg !1393
  br i1 %69, label %70, label %71, !dbg !1394

; <label>:70:                                     ; preds = %67
  store i32 1, i32* %4, align 4, !dbg !1395
  br label %136, !dbg !1395

; <label>:71:                                     ; preds = %67, %64
  %72 = load i32, i32* %13, align 4, !dbg !1396
  %73 = icmp sle i32 %72, 1, !dbg !1397
  br i1 %73, label %74, label %75, !dbg !1396

; <label>:74:                                     ; preds = %71
  br label %79, !dbg !1398

; <label>:75:                                     ; preds = %71
  %76 = call i32 @rand() #7, !dbg !1400
  %77 = load i32, i32* %13, align 4, !dbg !1402
  %78 = srem i32 %76, %77, !dbg !1403
  br label %79, !dbg !1404

; <label>:79:                                     ; preds = %75, %74
  %80 = phi i32 [ 0, %74 ], [ %78, %75 ], !dbg !1405
  store i32 %80, i32* %15, align 4, !dbg !1407
  %81 = load i32, i32* %14, align 4, !dbg !1408
  %82 = icmp sle i32 %81, 1, !dbg !1409
  br i1 %82, label %83, label %84, !dbg !1408

; <label>:83:                                     ; preds = %79
  br label %88, !dbg !1410

; <label>:84:                                     ; preds = %79
  %85 = call i32 @rand() #7, !dbg !1411
  %86 = load i32, i32* %14, align 4, !dbg !1412
  %87 = srem i32 %85, %86, !dbg !1413
  br label %88, !dbg !1414

; <label>:88:                                     ; preds = %84, %83
  %89 = phi i32 [ 0, %83 ], [ %87, %84 ], !dbg !1415
  store i32 %89, i32* %16, align 4, !dbg !1416
  store i32 0, i32* %14, align 4, !dbg !1417
  store i32 0, i32* %13, align 4, !dbg !1418
  %90 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8, !dbg !1419
  store %struct.addrinfo* %90, %struct.addrinfo** %10, align 8, !dbg !1421
  br label %91, !dbg !1422

; <label>:91:                                     ; preds = %130, %88
  %92 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8, !dbg !1423
  %93 = icmp ne %struct.addrinfo* %92, null, !dbg !1426
  br i1 %93, label %94, label %134, !dbg !1427

; <label>:94:                                     ; preds = %91
  %95 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8, !dbg !1428
  %96 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %95, i32 0, i32 5, !dbg !1430
  %97 = load %struct.sockaddr*, %struct.sockaddr** %96, align 8, !dbg !1430
  %98 = bitcast %struct.sockaddr* %97 to %union.sockaddr_union*, !dbg !1431
  store %union.sockaddr_union* %98, %union.sockaddr_union** %8, align 8, !dbg !1432
  %99 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8, !dbg !1433
  %100 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %99, i32 0, i32 1, !dbg !1435
  %101 = load i32, i32* %100, align 4, !dbg !1435
  %102 = icmp eq i32 %101, 2, !dbg !1436
  br i1 %102, label %103, label %113, !dbg !1437

; <label>:103:                                    ; preds = %94
  %104 = load i32, i32* %15, align 4, !dbg !1438
  %105 = load i32, i32* %13, align 4, !dbg !1441
  %106 = icmp eq i32 %104, %105, !dbg !1442
  br i1 %106, label %107, label %110, !dbg !1443

; <label>:107:                                    ; preds = %103
  %108 = load %union.sockaddr_union*, %union.sockaddr_union** %8, align 8, !dbg !1444
  %109 = load %struct._IPADDR*, %struct._IPADDR** %6, align 8, !dbg !1445
  call void @sin_get_ip(%union.sockaddr_union* %108, %struct._IPADDR* %109), !dbg !1446
  br label %110, !dbg !1446

; <label>:110:                                    ; preds = %107, %103
  %111 = load i32, i32* %13, align 4, !dbg !1447
  %112 = add nsw i32 %111, 1, !dbg !1447
  store i32 %112, i32* %13, align 4, !dbg !1447
  br label %129, !dbg !1448

; <label>:113:                                    ; preds = %94
  %114 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8, !dbg !1449
  %115 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %114, i32 0, i32 1, !dbg !1452
  %116 = load i32, i32* %115, align 4, !dbg !1452
  %117 = icmp eq i32 %116, 10, !dbg !1453
  br i1 %117, label %118, label %128, !dbg !1449

; <label>:118:                                    ; preds = %113
  %119 = load i32, i32* %16, align 4, !dbg !1454
  %120 = load i32, i32* %14, align 4, !dbg !1457
  %121 = icmp eq i32 %119, %120, !dbg !1458
  br i1 %121, label %122, label %125, !dbg !1459

; <label>:122:                                    ; preds = %118
  %123 = load %union.sockaddr_union*, %union.sockaddr_union** %8, align 8, !dbg !1460
  %124 = load %struct._IPADDR*, %struct._IPADDR** %7, align 8, !dbg !1461
  call void @sin_get_ip(%union.sockaddr_union* %123, %struct._IPADDR* %124), !dbg !1462
  br label %125, !dbg !1462

; <label>:125:                                    ; preds = %122, %118
  %126 = load i32, i32* %14, align 4, !dbg !1463
  %127 = add nsw i32 %126, 1, !dbg !1463
  store i32 %127, i32* %14, align 4, !dbg !1463
  br label %128, !dbg !1464

; <label>:128:                                    ; preds = %125, %113
  br label %129

; <label>:129:                                    ; preds = %128, %110
  br label %130, !dbg !1465

; <label>:130:                                    ; preds = %129
  %131 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8, !dbg !1466
  %132 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %131, i32 0, i32 7, !dbg !1468
  %133 = load %struct.addrinfo*, %struct.addrinfo** %132, align 8, !dbg !1468
  store %struct.addrinfo* %133, %struct.addrinfo** %10, align 8, !dbg !1469
  br label %91, !dbg !1470, !llvm.loop !1471

; <label>:134:                                    ; preds = %91
  %135 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8, !dbg !1473
  call void @freeaddrinfo(%struct.addrinfo* %135) #7, !dbg !1474
  store i32 0, i32* %4, align 4, !dbg !1475
  br label %136, !dbg !1475

; <label>:136:                                    ; preds = %134, %70, %35, %21
  %137 = load i32, i32* %4, align 4, !dbg !1476
  ret i32 %137, !dbg !1476
}

declare i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #2

; Function Attrs: nounwind
declare i32 @rand() #3

; Function Attrs: nounwind
declare void @freeaddrinfo(%struct.addrinfo*) #3

; Function Attrs: nounwind uwtable
define i32 @net_gethostbyaddr(%struct._IPADDR*, i8**) #0 !dbg !1477 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._IPADDR*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %union.sockaddr_union, align 4
  %7 = alloca i32, align 4
  %8 = alloca [1025 x i8], align 16
  store %struct._IPADDR* %0, %struct._IPADDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IPADDR** %4, metadata !1481, metadata !343), !dbg !1482
  store i8** %1, i8*** %5, align 8
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !1483, metadata !343), !dbg !1484
  call void @llvm.dbg.declare(metadata %union.sockaddr_union* %6, metadata !1485, metadata !343), !dbg !1486
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1487, metadata !343), !dbg !1488
  call void @llvm.dbg.declare(metadata [1025 x i8]* %8, metadata !1489, metadata !343), !dbg !1493
  br label %9, !dbg !1494, !llvm.loop !1495

; <label>:9:                                      ; preds = %2
  %10 = load %struct._IPADDR*, %struct._IPADDR** %4, align 8, !dbg !1496
  %11 = icmp ne %struct._IPADDR* %10, null, !dbg !1500
  br i1 %11, label %12, label %13, !dbg !1496

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !1501

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.net_gethostbyaddr, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0)), !dbg !1504
  store i32 -1, i32* %3, align 4, !dbg !1507
  br label %37, !dbg !1507

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !1508

; <label>:15:                                     ; preds = %14
  br label %16, !dbg !1510, !llvm.loop !1511

; <label>:16:                                     ; preds = %15
  %17 = load i8**, i8*** %5, align 8, !dbg !1512
  %18 = icmp ne i8** %17, null, !dbg !1516
  br i1 %18, label %19, label %20, !dbg !1512

; <label>:19:                                     ; preds = %16
  br label %21, !dbg !1517

; <label>:20:                                     ; preds = %16
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.net_gethostbyaddr, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0)), !dbg !1520
  store i32 -1, i32* %3, align 4, !dbg !1523
  br label %37, !dbg !1523

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !1524

; <label>:22:                                     ; preds = %21
  %23 = load i8**, i8*** %5, align 8, !dbg !1526
  store i8* null, i8** %23, align 8, !dbg !1527
  %24 = bitcast %union.sockaddr_union* %6 to i8*, !dbg !1528
  call void @llvm.memset.p0i8.i64(i8* %24, i8 0, i64 28, i32 4, i1 false), !dbg !1528
  %25 = load %struct._IPADDR*, %struct._IPADDR** %4, align 8, !dbg !1529
  call void @sin_set_ip(%union.sockaddr_union* %6, %struct._IPADDR* %25), !dbg !1530
  %26 = bitcast %union.sockaddr_union* %6 to %struct.sockaddr*, !dbg !1531
  %27 = getelementptr inbounds [1025 x i8], [1025 x i8]* %8, i32 0, i32 0, !dbg !1532
  %28 = call i32 @getnameinfo(%struct.sockaddr* %26, i32 28, i8* %27, i32 1025, i8* null, i32 0, i32 8), !dbg !1533
  store i32 %28, i32* %7, align 4, !dbg !1534
  %29 = load i32, i32* %7, align 4, !dbg !1535
  %30 = icmp ne i32 %29, 0, !dbg !1537
  br i1 %30, label %31, label %33, !dbg !1538

; <label>:31:                                     ; preds = %22
  %32 = load i32, i32* %7, align 4, !dbg !1539
  store i32 %32, i32* %3, align 4, !dbg !1540
  br label %37, !dbg !1540

; <label>:33:                                     ; preds = %22
  %34 = getelementptr inbounds [1025 x i8], [1025 x i8]* %8, i32 0, i32 0, !dbg !1541
  %35 = call noalias i8* @g_strdup(i8* %34), !dbg !1542
  %36 = load i8**, i8*** %5, align 8, !dbg !1543
  store i8* %35, i8** %36, align 8, !dbg !1544
  store i32 0, i32* %3, align 4, !dbg !1545
  br label %37, !dbg !1545

; <label>:37:                                     ; preds = %33, %31, %20, %13
  %38 = load i32, i32* %3, align 4, !dbg !1546
  ret i32 %38, !dbg !1546
}

declare i32 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i8*, i32, i32) #2

declare noalias i8* @g_strdup(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @net_ip2host(%struct._IPADDR*, i8*) #0 !dbg !1547 {
  %3 = alloca %struct._IPADDR*, align 8
  %4 = alloca i8*, align 8
  store %struct._IPADDR* %0, %struct._IPADDR** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IPADDR** %3, metadata !1550, metadata !343), !dbg !1551
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1552, metadata !343), !dbg !1553
  %5 = load i8*, i8** %4, align 8, !dbg !1554
  %6 = getelementptr inbounds i8, i8* %5, i64 0, !dbg !1554
  store i8 0, i8* %6, align 1, !dbg !1555
  %7 = load %struct._IPADDR*, %struct._IPADDR** %3, align 8, !dbg !1556
  %8 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %7, i32 0, i32 0, !dbg !1557
  %9 = load i16, i16* %8, align 4, !dbg !1557
  %10 = zext i16 %9 to i32, !dbg !1556
  %11 = load %struct._IPADDR*, %struct._IPADDR** %3, align 8, !dbg !1558
  %12 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %11, i32 0, i32 1, !dbg !1559
  %13 = bitcast %struct.in6_addr* %12 to i8*, !dbg !1560
  %14 = load i8*, i8** %4, align 8, !dbg !1561
  %15 = call i8* @inet_ntop(i32 %10, i8* %13, i8* %14, i32 46) #7, !dbg !1562
  %16 = icmp ne i8* %15, null, !dbg !1562
  %17 = select i1 %16, i32 0, i32 -1, !dbg !1562
  ret i32 %17, !dbg !1563
}

; Function Attrs: nounwind
declare i8* @inet_ntop(i32, i8*, i8*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @net_host2ip(i8*, %struct._IPADDR*) #0 !dbg !1564 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IPADDR*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1567, metadata !343), !dbg !1568
  store %struct._IPADDR* %1, %struct._IPADDR** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IPADDR** %5, metadata !1569, metadata !343), !dbg !1570
  call void @llvm.dbg.declare(metadata i64* %6, metadata !1571, metadata !343), !dbg !1572
  %7 = load i8*, i8** %4, align 8, !dbg !1573
  %8 = call i8* @strchr(i8* %7, i32 58) #8, !dbg !1575
  %9 = icmp ne i8* %8, null, !dbg !1576
  br i1 %9, label %10, label %21, !dbg !1577

; <label>:10:                                     ; preds = %2
  %11 = load %struct._IPADDR*, %struct._IPADDR** %5, align 8, !dbg !1578
  %12 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %11, i32 0, i32 0, !dbg !1580
  store i16 10, i16* %12, align 4, !dbg !1581
  %13 = load i8*, i8** %4, align 8, !dbg !1582
  %14 = load %struct._IPADDR*, %struct._IPADDR** %5, align 8, !dbg !1584
  %15 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %14, i32 0, i32 1, !dbg !1585
  %16 = bitcast %struct.in6_addr* %15 to i8*, !dbg !1586
  %17 = call i32 @inet_pton(i32 10, i8* %13, i8* %16) #7, !dbg !1587
  %18 = icmp eq i32 %17, 0, !dbg !1588
  br i1 %18, label %19, label %20, !dbg !1589

; <label>:19:                                     ; preds = %10
  store i32 -1, i32* %3, align 4, !dbg !1590
  br label %36, !dbg !1590

; <label>:20:                                     ; preds = %10
  br label %35, !dbg !1591

; <label>:21:                                     ; preds = %2
  %22 = load %struct._IPADDR*, %struct._IPADDR** %5, align 8, !dbg !1592
  %23 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %22, i32 0, i32 0, !dbg !1594
  store i16 2, i16* %23, align 4, !dbg !1595
  %24 = load i8*, i8** %4, align 8, !dbg !1596
  %25 = call i32 @inet_addr(i8* %24) #7, !dbg !1597
  %26 = zext i32 %25 to i64, !dbg !1597
  store i64 %26, i64* %6, align 8, !dbg !1598
  %27 = load i64, i64* %6, align 8, !dbg !1599
  %28 = icmp eq i64 %27, 4294967295, !dbg !1601
  br i1 %28, label %29, label %30, !dbg !1602

; <label>:29:                                     ; preds = %21
  store i32 -1, i32* %3, align 4, !dbg !1603
  br label %36, !dbg !1603

; <label>:30:                                     ; preds = %21
  %31 = load %struct._IPADDR*, %struct._IPADDR** %5, align 8, !dbg !1604
  %32 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %31, i32 0, i32 1, !dbg !1605
  %33 = bitcast %struct.in6_addr* %32 to i8*, !dbg !1606
  %34 = bitcast i64* %6 to i8*, !dbg !1606
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 4, i32 4, i1 false), !dbg !1606
  br label %35

; <label>:35:                                     ; preds = %30, %20
  store i32 0, i32* %3, align 4, !dbg !1607
  br label %36, !dbg !1607

; <label>:36:                                     ; preds = %35, %29, %19
  %37 = load i32, i32* %3, align 4, !dbg !1608
  ret i32 %37, !dbg !1608
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

; Function Attrs: nounwind
declare i32 @inet_pton(i32, i8*, i8*) #3

; Function Attrs: nounwind
declare i32 @inet_addr(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @net_geterror(%struct._GIOChannel*) #0 !dbg !1609 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._GIOChannel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct._GIOChannel* %0, %struct._GIOChannel** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %3, metadata !1612, metadata !343), !dbg !1613
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1614, metadata !343), !dbg !1615
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1616, metadata !343), !dbg !1617
  store i32 4, i32* %5, align 4, !dbg !1617
  %6 = load %struct._GIOChannel*, %struct._GIOChannel** %3, align 8, !dbg !1618
  %7 = call i32 @g_io_channel_unix_get_fd(%struct._GIOChannel* %6), !dbg !1620
  %8 = bitcast i32* %4 to i8*, !dbg !1621
  %9 = call i32 @getsockopt(i32 %7, i32 1, i32 4, i8* %8, i32* %5) #7, !dbg !1622
  %10 = icmp eq i32 %9, -1, !dbg !1624
  br i1 %10, label %11, label %12, !dbg !1625

; <label>:11:                                     ; preds = %1
  store i32 -1, i32* %2, align 4, !dbg !1626
  br label %14, !dbg !1626

; <label>:12:                                     ; preds = %1
  %13 = load i32, i32* %4, align 4, !dbg !1627
  store i32 %13, i32* %2, align 4, !dbg !1628
  br label %14, !dbg !1628

; <label>:14:                                     ; preds = %12, %11
  %15 = load i32, i32* %2, align 4, !dbg !1629
  ret i32 %15, !dbg !1629
}

; Function Attrs: nounwind
declare i32 @getsockopt(i32, i32, i32, i8*, i32*) #3

; Function Attrs: nounwind uwtable
define i8* @net_gethosterror(i32) #0 !dbg !1630 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1633, metadata !343), !dbg !1634
  br label %4, !dbg !1635, !llvm.loop !1636

; <label>:4:                                      ; preds = %1
  %5 = load i32, i32* %3, align 4, !dbg !1637
  %6 = icmp ne i32 %5, 0, !dbg !1641
  br i1 %6, label %7, label %8, !dbg !1637

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !1642

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.net_gethosterror, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0)), !dbg !1645
  store i8* null, i8** %2, align 8, !dbg !1648
  br label %20, !dbg !1648

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !1649

; <label>:10:                                     ; preds = %9
  %11 = load i32, i32* %3, align 4, !dbg !1651
  %12 = icmp eq i32 %11, -11, !dbg !1653
  br i1 %12, label %13, label %17, !dbg !1654

; <label>:13:                                     ; preds = %10
  %14 = call i32* @__errno_location() #1, !dbg !1655
  %15 = load i32, i32* %14, align 4, !dbg !1657
  %16 = call i8* @strerror(i32 %15) #7, !dbg !1658
  store i8* %16, i8** %2, align 8, !dbg !1660
  br label %20, !dbg !1660

; <label>:17:                                     ; preds = %10
  %18 = load i32, i32* %3, align 4, !dbg !1661
  %19 = call i8* @gai_strerror(i32 %18) #7, !dbg !1663
  store i8* %19, i8** %2, align 8, !dbg !1664
  br label %20, !dbg !1664

; <label>:20:                                     ; preds = %17, %13, %8
  %21 = load i8*, i8** %2, align 8, !dbg !1665
  ret i8* %21, !dbg !1665
}

; Function Attrs: nounwind
declare i8* @strerror(i32) #3

; Function Attrs: nounwind
declare i8* @gai_strerror(i32) #3

; Function Attrs: nounwind uwtable
define i32 @net_hosterror_notfound(i32) #0 !dbg !1666 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1669, metadata !343), !dbg !1670
  %3 = load i32, i32* %2, align 4, !dbg !1671
  %4 = icmp ne i32 %3, 1, !dbg !1672
  br i1 %4, label %5, label %8, !dbg !1673

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !1674
  %7 = icmp eq i32 %6, -2, !dbg !1676
  br label %8

; <label>:8:                                      ; preds = %5, %1
  %9 = phi i1 [ false, %1 ], [ %7, %5 ]
  %10 = zext i1 %9 to i32, !dbg !1677
  ret i32 %10, !dbg !1679
}

; Function Attrs: nounwind uwtable
define i8* @net_getservbyport(i32) #0 !dbg !1680 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.servent*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1683, metadata !343), !dbg !1684
  call void @llvm.dbg.declare(metadata %struct.servent** %3, metadata !1685, metadata !343), !dbg !1693
  %4 = load i32, i32* %2, align 4, !dbg !1694
  %5 = trunc i32 %4 to i16, !dbg !1695
  %6 = call zeroext i16 @htons(i16 zeroext %5) #1, !dbg !1696
  %7 = zext i16 %6 to i32, !dbg !1696
  %8 = call %struct.servent* @getservbyport(i32 %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0)), !dbg !1697
  store %struct.servent* %8, %struct.servent** %3, align 8, !dbg !1699
  %9 = load %struct.servent*, %struct.servent** %3, align 8, !dbg !1700
  %10 = icmp eq %struct.servent* %9, null, !dbg !1701
  br i1 %10, label %11, label %12, !dbg !1700

; <label>:11:                                     ; preds = %1
  br label %16, !dbg !1702

; <label>:12:                                     ; preds = %1
  %13 = load %struct.servent*, %struct.servent** %3, align 8, !dbg !1703
  %14 = getelementptr inbounds %struct.servent, %struct.servent* %13, i32 0, i32 0, !dbg !1705
  %15 = load i8*, i8** %14, align 8, !dbg !1705
  br label %16, !dbg !1706

; <label>:16:                                     ; preds = %12, %11
  %17 = phi i8* [ null, %11 ], [ %15, %12 ], !dbg !1707
  ret i8* %17, !dbg !1709
}

declare %struct.servent* @getservbyport(i32, i8*) #2

; Function Attrs: nounwind readnone
declare zeroext i16 @htons(i16 zeroext) #6

; Function Attrs: nounwind uwtable
define i32 @is_ipv4_address(i8*) #0 !dbg !1710 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1713, metadata !343), !dbg !1714
  br label %4, !dbg !1715

; <label>:4:                                      ; preds = %27, %1
  %5 = load i8*, i8** %3, align 8, !dbg !1716
  %6 = load i8, i8* %5, align 1, !dbg !1718
  %7 = sext i8 %6 to i32, !dbg !1718
  %8 = icmp ne i32 %7, 0, !dbg !1719
  br i1 %8, label %9, label %30, !dbg !1720

; <label>:9:                                      ; preds = %4
  %10 = load i8*, i8** %3, align 8, !dbg !1721
  %11 = load i8, i8* %10, align 1, !dbg !1724
  %12 = sext i8 %11 to i32, !dbg !1724
  %13 = icmp ne i32 %12, 46, !dbg !1725
  br i1 %13, label %14, label %27, !dbg !1726

; <label>:14:                                     ; preds = %9
  %15 = load i8*, i8** %3, align 8, !dbg !1727
  %16 = load i8, i8* %15, align 1, !dbg !1729
  %17 = zext i8 %16 to i32, !dbg !1730
  %18 = sext i32 %17 to i64, !dbg !1731
  %19 = call i16** @__ctype_b_loc() #1, !dbg !1732
  %20 = load i16*, i16** %19, align 8, !dbg !1733
  %21 = getelementptr inbounds i16, i16* %20, i64 %18, !dbg !1731
  %22 = load i16, i16* %21, align 2, !dbg !1731
  %23 = zext i16 %22 to i32, !dbg !1731
  %24 = and i32 %23, 2048, !dbg !1734
  %25 = icmp ne i32 %24, 0, !dbg !1734
  br i1 %25, label %27, label %26, !dbg !1735

; <label>:26:                                     ; preds = %14
  store i32 0, i32* %2, align 4, !dbg !1736
  br label %31, !dbg !1736

; <label>:27:                                     ; preds = %14, %9
  %28 = load i8*, i8** %3, align 8, !dbg !1737
  %29 = getelementptr inbounds i8, i8* %28, i32 1, !dbg !1737
  store i8* %29, i8** %3, align 8, !dbg !1737
  br label %4, !dbg !1738, !llvm.loop !1740

; <label>:30:                                     ; preds = %4
  store i32 1, i32* %2, align 4, !dbg !1741
  br label %31, !dbg !1741

; <label>:31:                                     ; preds = %30, %26
  %32 = load i32, i32* %2, align 4, !dbg !1742
  ret i32 %32, !dbg !1742
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #6

; Function Attrs: nounwind uwtable
define i32 @is_ipv6_address(i8*) #0 !dbg !1743 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1744, metadata !343), !dbg !1745
  br label %4, !dbg !1746

; <label>:4:                                      ; preds = %27, %1
  %5 = load i8*, i8** %3, align 8, !dbg !1747
  %6 = load i8, i8* %5, align 1, !dbg !1749
  %7 = sext i8 %6 to i32, !dbg !1749
  %8 = icmp ne i32 %7, 0, !dbg !1750
  br i1 %8, label %9, label %30, !dbg !1751

; <label>:9:                                      ; preds = %4
  %10 = load i8*, i8** %3, align 8, !dbg !1752
  %11 = load i8, i8* %10, align 1, !dbg !1755
  %12 = sext i8 %11 to i32, !dbg !1755
  %13 = icmp ne i32 %12, 58, !dbg !1756
  br i1 %13, label %14, label %27, !dbg !1757

; <label>:14:                                     ; preds = %9
  %15 = load i8*, i8** %3, align 8, !dbg !1758
  %16 = load i8, i8* %15, align 1, !dbg !1760
  %17 = zext i8 %16 to i32, !dbg !1761
  %18 = sext i32 %17 to i64, !dbg !1762
  %19 = call i16** @__ctype_b_loc() #1, !dbg !1763
  %20 = load i16*, i16** %19, align 8, !dbg !1764
  %21 = getelementptr inbounds i16, i16* %20, i64 %18, !dbg !1762
  %22 = load i16, i16* %21, align 2, !dbg !1762
  %23 = zext i16 %22 to i32, !dbg !1762
  %24 = and i32 %23, 4096, !dbg !1765
  %25 = icmp ne i32 %24, 0, !dbg !1765
  br i1 %25, label %27, label %26, !dbg !1766

; <label>:26:                                     ; preds = %14
  store i32 0, i32* %2, align 4, !dbg !1767
  br label %31, !dbg !1767

; <label>:27:                                     ; preds = %14, %9
  %28 = load i8*, i8** %3, align 8, !dbg !1768
  %29 = getelementptr inbounds i8, i8* %28, i32 1, !dbg !1768
  store i8* %29, i8** %3, align 8, !dbg !1768
  br label %4, !dbg !1769, !llvm.loop !1771

; <label>:30:                                     ; preds = %4
  store i32 1, i32* %2, align 4, !dbg !1772
  br label %31, !dbg !1772

; <label>:31:                                     ; preds = %30, %26
  %32 = load i32, i32* %2, align 4, !dbg !1773
  ret i32 %32, !dbg !1773
}

; Function Attrs: nounwind readnone
declare zeroext i16 @ntohs(i16 zeroext) #6

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!155, !156}
!llvm.ident = !{!157}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !74, globals: !146)
!1 = !DIFile(filename: "line59-network.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10, !15, !24, !35, !47, !59}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 69, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/glib-2.0/glib/giochannel.h", directory: "/home/lichi/Desktop/irssi/task1")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "G_IO_STATUS_ERROR", value: 0)
!7 = !DIEnumerator(name: "G_IO_STATUS_NORMAL", value: 1)
!8 = !DIEnumerator(name: "G_IO_STATUS_EOF", value: 2)
!9 = !DIEnumerator(name: "G_IO_STATUS_AGAIN", value: 3)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 77, size: 32, align: 32, elements: !11)
!11 = !{!12, !13, !14}
!12 = !DIEnumerator(name: "G_SEEK_CUR", value: 0)
!13 = !DIEnumerator(name: "G_SEEK_SET", value: 1)
!14 = !DIEnumerator(name: "G_SEEK_END", value: 2)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 31, size: 32, align: 32, elements: !17)
!16 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/irssi/task1")
!17 = !{!18, !19, !20, !21, !22, !23}
!18 = !DIEnumerator(name: "G_IO_IN", value: 1)
!19 = !DIEnumerator(name: "G_IO_OUT", value: 4)
!20 = !DIEnumerator(name: "G_IO_PRI", value: 2)
!21 = !DIEnumerator(name: "G_IO_ERR", value: 8)
!22 = !DIEnumerator(name: "G_IO_HUP", value: 16)
!23 = !DIEnumerator(name: "G_IO_NVAL", value: 32)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 84, size: 32, align: 32, elements: !25)
!25 = !{!26, !27, !28, !29, !30, !31, !32, !33, !34}
!26 = !DIEnumerator(name: "G_IO_FLAG_APPEND", value: 1)
!27 = !DIEnumerator(name: "G_IO_FLAG_NONBLOCK", value: 2)
!28 = !DIEnumerator(name: "G_IO_FLAG_IS_READABLE", value: 4)
!29 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITABLE", value: 8)
!30 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITEABLE", value: 8)
!31 = !DIEnumerator(name: "G_IO_FLAG_IS_SEEKABLE", value: 16)
!32 = !DIEnumerator(name: "G_IO_FLAG_MASK", value: 31)
!33 = !DIEnumerator(name: "G_IO_FLAG_GET_MASK", value: 31)
!34 = !DIEnumerator(name: "G_IO_FLAG_SET_MASK", value: 3)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 51, size: 32, align: 32, elements: !37)
!36 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/irssi/task1")
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46}
!38 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!39 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!40 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!41 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!42 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!43 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!44 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!45 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!46 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !48, line: 24, size: 32, align: 32, elements: !49)
!48 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "/home/lichi/Desktop/irssi/task1")
!49 = !{!50, !51, !52, !53, !54, !55, !56, !57, !58}
!50 = !DIEnumerator(name: "SOCK_STREAM", value: 1)
!51 = !DIEnumerator(name: "SOCK_DGRAM", value: 2)
!52 = !DIEnumerator(name: "SOCK_RAW", value: 3)
!53 = !DIEnumerator(name: "SOCK_RDM", value: 4)
!54 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5)
!55 = !DIEnumerator(name: "SOCK_DCCP", value: 6)
!56 = !DIEnumerator(name: "SOCK_PACKET", value: 10)
!57 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288)
!58 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !60, line: 46, size: 32, align: 32, elements: !61)
!60 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/lichi/Desktop/irssi/task1")
!61 = !{!62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73}
!62 = !DIEnumerator(name: "_ISupper", value: 256)
!63 = !DIEnumerator(name: "_ISlower", value: 512)
!64 = !DIEnumerator(name: "_ISalpha", value: 1024)
!65 = !DIEnumerator(name: "_ISdigit", value: 2048)
!66 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!67 = !DIEnumerator(name: "_ISspace", value: 8192)
!68 = !DIEnumerator(name: "_ISprint", value: 16384)
!69 = !DIEnumerator(name: "_ISgraph", value: 32768)
!70 = !DIEnumerator(name: "_ISblank", value: 1)
!71 = !DIEnumerator(name: "_IScntrl", value: 2)
!72 = !DIEnumerator(name: "_ISpunct", value: 4)
!73 = !DIEnumerator(name: "_ISalnum", value: 8)
!74 = !{!75, !77, !78, !81, !93, !95, !100, !88, !145, !118}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !80, line: 46, baseType: !76)
!80 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !83, line: 153, size: 128, align: 16, elements: !84)
!83 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "/home/lichi/Desktop/irssi/task1")
!84 = !{!85, !89}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !82, file: !83, line: 155, baseType: !86, size: 16, align: 16)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !87, line: 28, baseType: !88)
!87 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "/home/lichi/Desktop/irssi/task1")
!88 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !82, file: !83, line: 156, baseType: !90, size: 112, align: 8, offset: 16)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 112, align: 8, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 14)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !96, line: 30, baseType: !97)
!96 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/irssi/task1")
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !98, line: 51, baseType: !99)
!98 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/irssi/task1")
!99 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!101 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sockaddr_union", file: !102, line: 33, size: 224, align: 32, elements: !103)
!102 = !DIFile(filename: "network.c", directory: "/home/lichi/Desktop/irssi/task1")
!103 = !{!104, !105, !121}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !101, file: !102, line: 34, baseType: !82, size: 128, align: 16)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "sin", scope: !101, file: !102, line: 35, baseType: !106, size: 128, align: 32)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !96, line: 239, size: 128, align: 32, elements: !107)
!107 = !{!108, !109, !112, !116}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !106, file: !96, line: 241, baseType: !86, size: 16, align: 16)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !106, file: !96, line: 242, baseType: !110, size: 16, align: 16, offset: 16)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !96, line: 119, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !98, line: 49, baseType: !88)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !106, file: !96, line: 243, baseType: !113, size: 32, align: 32, offset: 32)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !96, line: 31, size: 32, align: 32, elements: !114)
!114 = !{!115}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !113, file: !96, line: 33, baseType: !95, size: 32, align: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !106, file: !96, line: 246, baseType: !117, size: 64, align: 8, offset: 64)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 64, align: 8, elements: !119)
!118 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!119 = !{!120}
!120 = !DISubrange(count: 8)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "sin6", scope: !101, file: !102, line: 36, baseType: !122, size: 224, align: 32)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !96, line: 254, size: 224, align: 32, elements: !123)
!123 = !{!124, !125, !126, !127, !144}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !122, file: !96, line: 256, baseType: !86, size: 16, align: 16)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !122, file: !96, line: 257, baseType: !110, size: 16, align: 16, offset: 16)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !122, file: !96, line: 258, baseType: !97, size: 32, align: 32, offset: 32)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !122, file: !96, line: 259, baseType: !128, size: 128, align: 32, offset: 64)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !96, line: 211, size: 128, align: 32, elements: !129)
!129 = !{!130}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !128, file: !96, line: 220, baseType: !131, size: 128, align: 32)
!131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !128, file: !96, line: 213, size: 128, align: 32, elements: !132)
!132 = !{!133, !138, !140}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !131, file: !96, line: 215, baseType: !134, size: 128, align: 8)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 128, align: 8, elements: !136)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !98, line: 48, baseType: !118)
!136 = !{!137}
!137 = !DISubrange(count: 16)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !131, file: !96, line: 217, baseType: !139, size: 128, align: 16)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 128, align: 16, elements: !119)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !131, file: !96, line: 218, baseType: !141, size: 128, align: 32)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 128, align: 32, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 4)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !122, file: !96, line: 260, baseType: !97, size: 32, align: 32, offset: 192)
!145 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!146 = !{!147}
!147 = distinct !DIGlobalVariable(name: "ip4_any", scope: !0, file: !102, line: 84, type: !148, isLocal: false, isDefinition: true, variable: { i16, [2 x i8], { { [16 x i8] } } }* @ip4_any)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !149, line: 99, baseType: !150)
!149 = !DIFile(filename: "../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !151, line: 22, size: 160, align: 32, elements: !152)
!151 = !DIFile(filename: "network.h", directory: "/home/lichi/Desktop/irssi/task1")
!152 = !{!153, !154}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !150, file: !151, line: 23, baseType: !88, size: 16, align: 16)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !150, file: !151, line: 24, baseType: !128, size: 128, align: 32, offset: 32)
!155 = !{i32 2, !"Dwarf Version", i32 4}
!156 = !{i32 2, !"Debug Info Version", i32 3}
!157 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!158 = distinct !DISubprogram(name: "g_io_channel_new", scope: !102, file: !102, line: 42, type: !159, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !341)
!159 = !DISubroutineType(types: !160)
!160 = !{!161, !145}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64, align: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !164)
!164 = !{!165, !167, !308, !309, !314, !315, !316, !317, !318, !327, !328, !329, !333, !334, !335, !336, !337, !338, !339, !340}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !163, file: !4, line: 100, baseType: !166, size: 32, align: 32)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !80, line: 49, baseType: !145)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !163, file: !4, line: 101, baseType: !168, size: 64, align: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64, align: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !170)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !171)
!171 = !{!172, !193, !199, !206, !210, !295, !299, !304}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !170, file: !4, line: 133, baseType: !173, size: 64, align: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64, align: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{!176, !161, !78, !177, !180, !181}
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !178, line: 66, baseType: !179)
!178 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!179 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64, align: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !184, line: 42, baseType: !185)
!184 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !184, line: 44, size: 128, align: 64, elements: !186)
!186 = !{!187, !191, !192}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !185, file: !184, line: 46, baseType: !188, size: 32, align: 32)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !189, line: 36, baseType: !190)
!189 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !178, line: 45, baseType: !99)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !185, file: !184, line: 47, baseType: !166, size: 32, align: 32, offset: 32)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !185, file: !184, line: 48, baseType: !78, size: 64, align: 64, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !170, file: !4, line: 138, baseType: !194, size: 64, align: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!176, !161, !197, !177, !180, !181}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !170, file: !4, line: 143, baseType: !200, size: 64, align: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{!176, !161, !203, !205, !181}
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !178, line: 51, baseType: !204)
!204 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !170, file: !4, line: 147, baseType: !207, size: 64, align: 64, offset: 192)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!176, !161, !181}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !170, file: !4, line: 149, baseType: !211, size: 64, align: 64, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64, align: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!214, !161, !294}
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64, align: 64)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !216)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !217)
!217 = !{!218, !220, !241, !270, !272, !276, !277, !278, !279, !287, !288, !289, !290}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !216, file: !16, line: 174, baseType: !219, size: 64, align: 64)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !80, line: 77, baseType: !77)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !216, file: !16, line: 175, baseType: !221, size: 64, align: 64, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !223)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !224)
!224 = !{!225, !229, !230}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !223, file: !16, line: 198, baseType: !226, size: 64, align: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !219}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !223, file: !16, line: 199, baseType: !226, size: 64, align: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !223, file: !16, line: 200, baseType: !231, size: 64, align: 64, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, align: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{null, !219, !214, !234, !240}
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64, align: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64, align: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!239, !219}
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !80, line: 50, baseType: !166)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64, align: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !216, file: !16, line: 177, baseType: !242, size: 64, align: 64, offset: 128)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !245)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !246)
!246 = !{!247, !252, !256, !260, !264, !265}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !245, file: !16, line: 216, baseType: !248, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64, align: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!239, !214, !251}
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !245, file: !16, line: 218, baseType: !253, size: 64, align: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!239, !214}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !245, file: !16, line: 219, baseType: !257, size: 64, align: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64, align: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!239, !214, !235, !219}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !245, file: !16, line: 222, baseType: !261, size: 64, align: 64, offset: 192)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64, align: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{null, !214}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !245, file: !16, line: 226, baseType: !235, size: 64, align: 64, offset: 256)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !245, file: !16, line: 227, baseType: !266, size: 64, align: 64, offset: 320)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64, align: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{null}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !216, file: !16, line: 178, baseType: !271, size: 32, align: 32, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !80, line: 55, baseType: !99)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !216, file: !16, line: 180, baseType: !273, size: 64, align: 64, offset: 256)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64, align: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !275)
!275 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !216, file: !16, line: 182, baseType: !166, size: 32, align: 32, offset: 320)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !216, file: !16, line: 183, baseType: !271, size: 32, align: 32, offset: 352)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !216, file: !16, line: 184, baseType: !271, size: 32, align: 32, offset: 384)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !216, file: !16, line: 186, baseType: !280, size: 64, align: 64, offset: 448)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64, align: 64)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !282, line: 37, baseType: !283)
!282 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !282, line: 39, size: 128, align: 64, elements: !284)
!284 = !{!285, !286}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !283, file: !282, line: 41, baseType: !219, size: 64, align: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !283, file: !282, line: 42, baseType: !280, size: 64, align: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !216, file: !16, line: 188, baseType: !214, size: 64, align: 64, offset: 512)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !216, file: !16, line: 189, baseType: !214, size: 64, align: 64, offset: 576)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !216, file: !16, line: 191, baseType: !75, size: 64, align: 64, offset: 640)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !216, file: !16, line: 193, baseType: !291, size: 64, align: 64, offset: 704)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64, align: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !293)
!293 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !170, file: !4, line: 151, baseType: !296, size: 64, align: 64, offset: 320)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64, align: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{null, !161}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !170, file: !4, line: 152, baseType: !300, size: 64, align: 64, offset: 384)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!176, !161, !303, !181}
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !170, file: !4, line: 155, baseType: !305, size: 64, align: 64, offset: 448)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64, align: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!303, !161}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !163, file: !4, line: 103, baseType: !78, size: 64, align: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !163, file: !4, line: 104, baseType: !310, size: 64, align: 64, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !311, line: 77, baseType: !312)
!311 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64, align: 64)
!313 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !311, line: 77, flags: DIFlagFwdDecl)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !163, file: !4, line: 105, baseType: !310, size: 64, align: 64, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !163, file: !4, line: 106, baseType: !78, size: 64, align: 64, offset: 320)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !163, file: !4, line: 107, baseType: !271, size: 32, align: 32, offset: 384)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !163, file: !4, line: 109, baseType: !177, size: 64, align: 64, offset: 448)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !163, file: !4, line: 110, baseType: !319, size: 64, align: 64, offset: 512)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64, align: 64)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !321, line: 39, baseType: !322)
!321 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !321, line: 41, size: 192, align: 64, elements: !323)
!323 = !{!324, !325, !326}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !322, file: !321, line: 43, baseType: !78, size: 64, align: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !322, file: !321, line: 44, baseType: !177, size: 64, align: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !322, file: !321, line: 45, baseType: !177, size: 64, align: 64, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !163, file: !4, line: 111, baseType: !319, size: 64, align: 64, offset: 576)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !163, file: !4, line: 112, baseType: !319, size: 64, align: 64, offset: 640)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !163, file: !4, line: 113, baseType: !330, size: 48, align: 8, offset: 704)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 48, align: 8, elements: !331)
!331 = !{!332}
!332 = !DISubrange(count: 6)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !163, file: !4, line: 117, baseType: !271, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !163, file: !4, line: 118, baseType: !271, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !163, file: !4, line: 119, baseType: !271, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !163, file: !4, line: 120, baseType: !271, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !163, file: !4, line: 121, baseType: !271, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !163, file: !4, line: 122, baseType: !271, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !163, file: !4, line: 124, baseType: !219, size: 64, align: 64, offset: 768)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !163, file: !4, line: 125, baseType: !219, size: 64, align: 64, offset: 832)
!341 = !{}
!342 = !DILocalVariable(name: "handle", arg: 1, scope: !158, file: !102, line: 42, type: !145)
!343 = !DIExpression()
!344 = !DILocation(line: 42, column: 34, scope: !158)
!345 = !DILocalVariable(name: "chan", scope: !158, file: !102, line: 44, type: !161)
!346 = !DILocation(line: 44, column: 14, scope: !158)
!347 = !DILocation(line: 45, column: 31, scope: !158)
!348 = !DILocation(line: 45, column: 9, scope: !158)
!349 = !DILocation(line: 45, column: 7, scope: !158)
!350 = !DILocation(line: 46, column: 28, scope: !158)
!351 = !DILocation(line: 46, column: 2, scope: !158)
!352 = !DILocation(line: 47, column: 28, scope: !158)
!353 = !DILocation(line: 47, column: 2, scope: !158)
!354 = !DILocation(line: 48, column: 9, scope: !158)
!355 = !DILocation(line: 48, column: 2, scope: !158)
!356 = distinct !DISubprogram(name: "g_io_channel_write_block", scope: !102, file: !102, line: 51, type: !357, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !341)
!357 = !DISubroutineType(types: !358)
!358 = !{!145, !161, !77, !145}
!359 = !DILocalVariable(name: "channel", arg: 1, scope: !356, file: !102, line: 51, type: !161)
!360 = !DILocation(line: 51, column: 42, scope: !356)
!361 = !DILocalVariable(name: "data", arg: 2, scope: !356, file: !102, line: 51, type: !77)
!362 = !DILocation(line: 51, column: 57, scope: !356)
!363 = !DILocalVariable(name: "len", arg: 3, scope: !356, file: !102, line: 51, type: !145)
!364 = !DILocation(line: 51, column: 67, scope: !356)
!365 = !DILocalVariable(name: "ret", scope: !356, file: !102, line: 53, type: !177)
!366 = !DILocation(line: 53, column: 8, scope: !356)
!367 = !DILocalVariable(name: "sent", scope: !356, file: !102, line: 54, type: !145)
!368 = !DILocation(line: 54, column: 6, scope: !356)
!369 = !DILocalVariable(name: "status", scope: !356, file: !102, line: 55, type: !176)
!370 = !DILocation(line: 55, column: 12, scope: !356)
!371 = !DILocation(line: 57, column: 7, scope: !356)
!372 = !DILocation(line: 58, column: 2, scope: !356)
!373 = distinct !{!373, !372}
!374 = !DILocation(line: 59, column: 37, scope: !375)
!375 = distinct !DILexicalBlock(scope: !356, file: !102, line: 58, column: 5)
!376 = !DILocation(line: 59, column: 55, scope: !375)
!377 = !DILocation(line: 59, column: 62, scope: !375)
!378 = !DILocation(line: 59, column: 60, scope: !375)
!379 = !DILocation(line: 59, column: 68, scope: !375)
!380 = !DILocation(line: 59, column: 74, scope: !375)
!381 = !DILocation(line: 59, column: 72, scope: !375)
!382 = !DILocation(line: 59, column: 12, scope: !375)
!383 = !DILocation(line: 59, column: 10, scope: !375)
!384 = !DILocation(line: 60, column: 11, scope: !375)
!385 = !DILocation(line: 60, column: 8, scope: !375)
!386 = !DILocation(line: 61, column: 2, scope: !375)
!387 = !DILocation(line: 61, column: 11, scope: !388)
!388 = !DILexicalBlockFile(scope: !356, file: !102, discriminator: 1)
!389 = !DILocation(line: 61, column: 18, scope: !388)
!390 = !DILocation(line: 61, column: 16, scope: !388)
!391 = !DILocation(line: 61, column: 22, scope: !388)
!392 = !DILocation(line: 61, column: 25, scope: !393)
!393 = !DILexicalBlockFile(scope: !356, file: !102, discriminator: 2)
!394 = !DILocation(line: 61, column: 32, scope: !393)
!395 = !DILocation(line: 61, column: 2, scope: !396)
!396 = !DILexicalBlockFile(scope: !375, file: !102, discriminator: 3)
!397 = !DILocation(line: 63, column: 9, scope: !356)
!398 = !DILocation(line: 63, column: 16, scope: !356)
!399 = !DILocation(line: 63, column: 14, scope: !356)
!400 = !DILocation(line: 63, column: 2, scope: !356)
!401 = distinct !DISubprogram(name: "g_io_channel_read_block", scope: !102, file: !102, line: 66, type: !357, isLocal: false, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !341)
!402 = !DILocalVariable(name: "channel", arg: 1, scope: !401, file: !102, line: 66, type: !161)
!403 = !DILocation(line: 66, column: 41, scope: !401)
!404 = !DILocalVariable(name: "data", arg: 2, scope: !401, file: !102, line: 66, type: !77)
!405 = !DILocation(line: 66, column: 56, scope: !401)
!406 = !DILocalVariable(name: "len", arg: 3, scope: !401, file: !102, line: 66, type: !145)
!407 = !DILocation(line: 66, column: 66, scope: !401)
!408 = !DILocalVariable(name: "maxwait", scope: !401, file: !102, line: 68, type: !409)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !410, line: 75, baseType: !411)
!410 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !412, line: 139, baseType: !204)
!412 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!413 = !DILocation(line: 68, column: 9, scope: !401)
!414 = !DILocalVariable(name: "ret", scope: !401, file: !102, line: 69, type: !177)
!415 = !DILocation(line: 69, column: 8, scope: !401)
!416 = !DILocalVariable(name: "received", scope: !401, file: !102, line: 70, type: !145)
!417 = !DILocation(line: 70, column: 6, scope: !401)
!418 = !DILocalVariable(name: "status", scope: !401, file: !102, line: 71, type: !176)
!419 = !DILocation(line: 71, column: 12, scope: !401)
!420 = !DILocation(line: 73, column: 12, scope: !401)
!421 = !DILocation(line: 73, column: 21, scope: !401)
!422 = !DILocation(line: 73, column: 10, scope: !401)
!423 = !DILocation(line: 74, column: 11, scope: !401)
!424 = !DILocation(line: 75, column: 2, scope: !401)
!425 = distinct !{!425, !424}
!426 = !DILocation(line: 76, column: 36, scope: !427)
!427 = distinct !DILexicalBlock(scope: !401, file: !102, line: 75, column: 5)
!428 = !DILocation(line: 76, column: 54, scope: !427)
!429 = !DILocation(line: 76, column: 61, scope: !427)
!430 = !DILocation(line: 76, column: 59, scope: !427)
!431 = !DILocation(line: 76, column: 71, scope: !427)
!432 = !DILocation(line: 76, column: 77, scope: !427)
!433 = !DILocation(line: 76, column: 75, scope: !427)
!434 = !DILocation(line: 76, column: 12, scope: !427)
!435 = !DILocation(line: 76, column: 10, scope: !427)
!436 = !DILocation(line: 77, column: 15, scope: !427)
!437 = !DILocation(line: 77, column: 12, scope: !427)
!438 = !DILocation(line: 78, column: 2, scope: !427)
!439 = !DILocation(line: 78, column: 11, scope: !440)
!440 = !DILexicalBlockFile(scope: !401, file: !102, discriminator: 1)
!441 = !DILocation(line: 78, column: 22, scope: !440)
!442 = !DILocation(line: 78, column: 20, scope: !440)
!443 = !DILocation(line: 78, column: 26, scope: !440)
!444 = !DILocation(line: 78, column: 29, scope: !445)
!445 = !DILexicalBlockFile(scope: !401, file: !102, discriminator: 2)
!446 = !DILocation(line: 78, column: 41, scope: !445)
!447 = !DILocation(line: 78, column: 39, scope: !445)
!448 = !DILocation(line: 78, column: 49, scope: !445)
!449 = !DILocation(line: 79, column: 3, scope: !401)
!450 = !DILocation(line: 79, column: 10, scope: !401)
!451 = !DILocation(line: 79, column: 31, scope: !401)
!452 = !DILocation(line: 79, column: 34, scope: !440)
!453 = !DILocation(line: 79, column: 41, scope: !440)
!454 = !DILocation(line: 78, column: 2, scope: !455)
!455 = !DILexicalBlockFile(scope: !427, file: !102, discriminator: 3)
!456 = !DILocation(line: 81, column: 9, scope: !401)
!457 = !DILocation(line: 81, column: 20, scope: !401)
!458 = !DILocation(line: 81, column: 18, scope: !401)
!459 = !DILocation(line: 81, column: 2, scope: !401)
!460 = distinct !DISubprogram(name: "net_ip_compare", scope: !102, file: !102, line: 93, type: !461, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !341)
!461 = !DISubroutineType(types: !462)
!462 = !{!145, !463, !463}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, align: 64)
!464 = !DILocalVariable(name: "ip1", arg: 1, scope: !460, file: !102, line: 93, type: !463)
!465 = !DILocation(line: 93, column: 28, scope: !460)
!466 = !DILocalVariable(name: "ip2", arg: 2, scope: !460, file: !102, line: 93, type: !463)
!467 = !DILocation(line: 93, column: 41, scope: !460)
!468 = !DILocation(line: 95, column: 6, scope: !469)
!469 = distinct !DILexicalBlock(scope: !460, file: !102, line: 95, column: 6)
!470 = !DILocation(line: 95, column: 11, scope: !469)
!471 = !DILocation(line: 95, column: 21, scope: !469)
!472 = !DILocation(line: 95, column: 26, scope: !469)
!473 = !DILocation(line: 95, column: 18, scope: !469)
!474 = !DILocation(line: 95, column: 6, scope: !460)
!475 = !DILocation(line: 96, column: 3, scope: !469)
!476 = !DILocation(line: 98, column: 6, scope: !477)
!477 = distinct !DILexicalBlock(scope: !460, file: !102, line: 98, column: 6)
!478 = !DILocation(line: 98, column: 11, scope: !477)
!479 = !DILocation(line: 98, column: 18, scope: !477)
!480 = !DILocation(line: 98, column: 6, scope: !460)
!481 = !DILocation(line: 99, column: 18, scope: !477)
!482 = !DILocation(line: 99, column: 23, scope: !477)
!483 = !DILocation(line: 99, column: 17, scope: !477)
!484 = !DILocation(line: 99, column: 28, scope: !477)
!485 = !DILocation(line: 99, column: 33, scope: !477)
!486 = !DILocation(line: 99, column: 27, scope: !477)
!487 = !DILocation(line: 99, column: 10, scope: !477)
!488 = !DILocation(line: 99, column: 54, scope: !477)
!489 = !DILocation(line: 99, column: 3, scope: !477)
!490 = !DILocation(line: 101, column: 17, scope: !460)
!491 = !DILocation(line: 101, column: 22, scope: !460)
!492 = !DILocation(line: 101, column: 16, scope: !460)
!493 = !DILocation(line: 101, column: 27, scope: !460)
!494 = !DILocation(line: 101, column: 32, scope: !460)
!495 = !DILocation(line: 101, column: 26, scope: !460)
!496 = !DILocation(line: 101, column: 9, scope: !460)
!497 = !DILocation(line: 101, column: 39, scope: !460)
!498 = !DILocation(line: 101, column: 2, scope: !460)
!499 = !DILocation(line: 102, column: 1, scope: !460)
!500 = distinct !DISubprogram(name: "sin_get_ip", scope: !102, file: !102, line: 121, type: !501, isLocal: false, isDefinition: true, scopeLine: 122, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !341)
!501 = !DISubroutineType(types: !502)
!502 = !{null, !503, !463}
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64, align: 64)
!504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!505 = !DILocalVariable(name: "so", arg: 1, scope: !500, file: !102, line: 121, type: !503)
!506 = !DILocation(line: 121, column: 45, scope: !500)
!507 = !DILocalVariable(name: "ip", arg: 2, scope: !500, file: !102, line: 121, type: !463)
!508 = !DILocation(line: 121, column: 57, scope: !500)
!509 = !DILocation(line: 123, column: 15, scope: !500)
!510 = !DILocation(line: 123, column: 19, scope: !500)
!511 = !DILocation(line: 123, column: 23, scope: !500)
!512 = !DILocation(line: 123, column: 2, scope: !500)
!513 = !DILocation(line: 123, column: 6, scope: !500)
!514 = !DILocation(line: 123, column: 13, scope: !500)
!515 = !DILocation(line: 125, column: 6, scope: !516)
!516 = distinct !DILexicalBlock(scope: !500, file: !102, line: 125, column: 6)
!517 = !DILocation(line: 125, column: 10, scope: !516)
!518 = !DILocation(line: 125, column: 17, scope: !516)
!519 = !DILocation(line: 125, column: 6, scope: !500)
!520 = !DILocation(line: 126, column: 11, scope: !516)
!521 = !DILocation(line: 126, column: 15, scope: !516)
!522 = !DILocation(line: 126, column: 3, scope: !516)
!523 = !DILocation(line: 126, column: 20, scope: !516)
!524 = !DILocation(line: 126, column: 24, scope: !516)
!525 = !DILocation(line: 126, column: 29, scope: !516)
!526 = !DILocation(line: 128, column: 11, scope: !516)
!527 = !DILocation(line: 128, column: 15, scope: !516)
!528 = !DILocation(line: 128, column: 3, scope: !516)
!529 = !DILocation(line: 128, column: 20, scope: !516)
!530 = !DILocation(line: 128, column: 24, scope: !516)
!531 = !DILocation(line: 128, column: 28, scope: !516)
!532 = !DILocation(line: 129, column: 1, scope: !500)
!533 = distinct !DISubprogram(name: "net_connect_ip_handle", scope: !102, file: !102, line: 146, type: !534, isLocal: false, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !341)
!534 = !DISubroutineType(types: !535)
!535 = !{!145, !536, !145, !536}
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64, align: 64)
!537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!538 = !DILocalVariable(name: "ip", arg: 1, scope: !533, file: !102, line: 146, type: !536)
!539 = !DILocation(line: 146, column: 41, scope: !533)
!540 = !DILocalVariable(name: "port", arg: 2, scope: !533, file: !102, line: 146, type: !145)
!541 = !DILocation(line: 146, column: 49, scope: !533)
!542 = !DILocalVariable(name: "my_ip", arg: 3, scope: !533, file: !102, line: 146, type: !536)
!543 = !DILocation(line: 146, column: 69, scope: !533)
!544 = !DILocalVariable(name: "so", scope: !533, file: !102, line: 148, type: !101)
!545 = !DILocation(line: 148, column: 23, scope: !533)
!546 = !DILocalVariable(name: "handle", scope: !533, file: !102, line: 149, type: !145)
!547 = !DILocation(line: 149, column: 6, scope: !533)
!548 = !DILocalVariable(name: "ret", scope: !533, file: !102, line: 149, type: !145)
!549 = !DILocation(line: 149, column: 14, scope: !533)
!550 = !DILocalVariable(name: "opt", scope: !533, file: !102, line: 149, type: !145)
!551 = !DILocation(line: 149, column: 19, scope: !533)
!552 = !DILocation(line: 151, column: 6, scope: !553)
!553 = distinct !DILexicalBlock(scope: !533, file: !102, line: 151, column: 6)
!554 = !DILocation(line: 151, column: 12, scope: !553)
!555 = !DILocation(line: 151, column: 19, scope: !553)
!556 = !DILocation(line: 151, column: 22, scope: !557)
!557 = !DILexicalBlockFile(scope: !553, file: !102, discriminator: 1)
!558 = !DILocation(line: 151, column: 26, scope: !557)
!559 = !DILocation(line: 151, column: 36, scope: !557)
!560 = !DILocation(line: 151, column: 43, scope: !557)
!561 = !DILocation(line: 151, column: 33, scope: !557)
!562 = !DILocation(line: 151, column: 6, scope: !557)
!563 = !DILocation(line: 152, column: 3, scope: !564)
!564 = distinct !DILexicalBlock(scope: !553, file: !102, line: 151, column: 51)
!565 = !DILocation(line: 153, column: 23, scope: !564)
!566 = !DILocation(line: 154, column: 2, scope: !564)
!567 = !DILocation(line: 157, column: 2, scope: !533)
!568 = !DILocation(line: 158, column: 29, scope: !533)
!569 = !DILocation(line: 158, column: 33, scope: !533)
!570 = !DILocation(line: 158, column: 12, scope: !533)
!571 = !DILocation(line: 158, column: 16, scope: !533)
!572 = !DILocation(line: 158, column: 27, scope: !533)
!573 = !DILocation(line: 159, column: 18, scope: !533)
!574 = !DILocation(line: 159, column: 22, scope: !533)
!575 = !DILocation(line: 159, column: 11, scope: !533)
!576 = !DILocation(line: 159, column: 9, scope: !533)
!577 = !DILocation(line: 161, column: 6, scope: !578)
!578 = distinct !DILexicalBlock(scope: !533, file: !102, line: 161, column: 6)
!579 = !DILocation(line: 161, column: 13, scope: !578)
!580 = !DILocation(line: 161, column: 6, scope: !533)
!581 = !DILocation(line: 162, column: 3, scope: !578)
!582 = !DILocation(line: 165, column: 8, scope: !533)
!583 = !DILocation(line: 165, column: 2, scope: !533)
!584 = !DILocation(line: 166, column: 13, scope: !533)
!585 = !DILocation(line: 166, column: 46, scope: !533)
!586 = !DILocation(line: 166, column: 2, scope: !533)
!587 = !DILocation(line: 167, column: 13, scope: !533)
!588 = !DILocation(line: 167, column: 46, scope: !533)
!589 = !DILocation(line: 167, column: 2, scope: !533)
!590 = !DILocation(line: 170, column: 6, scope: !591)
!591 = distinct !DILexicalBlock(scope: !533, file: !102, line: 170, column: 6)
!592 = !DILocation(line: 170, column: 12, scope: !591)
!593 = !DILocation(line: 170, column: 6, scope: !533)
!594 = !DILocation(line: 171, column: 19, scope: !595)
!595 = distinct !DILexicalBlock(scope: !591, file: !102, line: 170, column: 20)
!596 = !DILocation(line: 171, column: 3, scope: !595)
!597 = !DILocation(line: 172, column: 12, scope: !598)
!598 = distinct !DILexicalBlock(scope: !595, file: !102, line: 172, column: 7)
!599 = !DILocation(line: 172, column: 24, scope: !598)
!600 = !DILocation(line: 172, column: 34, scope: !598)
!601 = !DILocation(line: 172, column: 37, scope: !598)
!602 = !DILocation(line: 172, column: 29, scope: !598)
!603 = !DILocation(line: 172, column: 47, scope: !598)
!604 = !DILocation(line: 172, column: 28, scope: !598)
!605 = !DILocation(line: 172, column: 7, scope: !598)
!606 = !DILocation(line: 172, column: 64, scope: !598)
!607 = !DILocation(line: 172, column: 7, scope: !595)
!608 = !DILocalVariable(name: "old_errno", scope: !609, file: !102, line: 173, type: !145)
!609 = distinct !DILexicalBlock(scope: !598, file: !102, line: 172, column: 69)
!610 = !DILocation(line: 173, column: 8, scope: !609)
!611 = !DILocation(line: 173, column: 21, scope: !609)
!612 = !DILocation(line: 173, column: 20, scope: !609)
!613 = !DILocation(line: 175, column: 10, scope: !609)
!614 = !DILocation(line: 175, column: 4, scope: !609)
!615 = !DILocation(line: 176, column: 11, scope: !609)
!616 = !DILocation(line: 176, column: 5, scope: !609)
!617 = !DILocation(line: 176, column: 9, scope: !609)
!618 = !DILocation(line: 177, column: 4, scope: !609)
!619 = !DILocation(line: 179, column: 2, scope: !595)
!620 = !DILocation(line: 182, column: 18, scope: !533)
!621 = !DILocation(line: 182, column: 2, scope: !533)
!622 = !DILocation(line: 183, column: 20, scope: !533)
!623 = !DILocation(line: 183, column: 2, scope: !533)
!624 = !DILocation(line: 184, column: 16, scope: !533)
!625 = !DILocation(line: 184, column: 28, scope: !533)
!626 = !DILocation(line: 184, column: 38, scope: !533)
!627 = !DILocation(line: 184, column: 41, scope: !533)
!628 = !DILocation(line: 184, column: 33, scope: !533)
!629 = !DILocation(line: 184, column: 51, scope: !533)
!630 = !DILocation(line: 184, column: 32, scope: !533)
!631 = !DILocation(line: 184, column: 8, scope: !533)
!632 = !DILocation(line: 184, column: 6, scope: !533)
!633 = !DILocation(line: 186, column: 6, scope: !634)
!634 = distinct !DILexicalBlock(scope: !533, file: !102, line: 186, column: 6)
!635 = !DILocation(line: 186, column: 10, scope: !634)
!636 = !DILocation(line: 186, column: 14, scope: !634)
!637 = !DILocation(line: 186, column: 18, scope: !638)
!638 = !DILexicalBlockFile(scope: !634, file: !102, discriminator: 1)
!639 = !DILocation(line: 186, column: 17, scope: !638)
!640 = !DILocation(line: 186, column: 22, scope: !638)
!641 = !DILocation(line: 186, column: 6, scope: !638)
!642 = !DILocalVariable(name: "old_errno", scope: !643, file: !102, line: 188, type: !145)
!643 = distinct !DILexicalBlock(scope: !634, file: !102, line: 187, column: 2)
!644 = !DILocation(line: 188, column: 7, scope: !643)
!645 = !DILocation(line: 188, column: 20, scope: !643)
!646 = !DILocation(line: 188, column: 19, scope: !643)
!647 = !DILocation(line: 189, column: 9, scope: !643)
!648 = !DILocation(line: 189, column: 3, scope: !643)
!649 = !DILocation(line: 190, column: 10, scope: !643)
!650 = !DILocation(line: 190, column: 4, scope: !643)
!651 = !DILocation(line: 190, column: 8, scope: !643)
!652 = !DILocation(line: 191, column: 3, scope: !643)
!653 = !DILocation(line: 194, column: 9, scope: !533)
!654 = !DILocation(line: 194, column: 2, scope: !533)
!655 = !DILocation(line: 195, column: 1, scope: !533)
!656 = distinct !DISubprogram(name: "sin_set_ip", scope: !102, file: !102, line: 105, type: !657, isLocal: true, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !341)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !100, !536}
!659 = !DILocalVariable(name: "so", arg: 1, scope: !656, file: !102, line: 105, type: !100)
!660 = !DILocation(line: 105, column: 46, scope: !656)
!661 = !DILocalVariable(name: "ip", arg: 2, scope: !656, file: !102, line: 105, type: !536)
!662 = !DILocation(line: 105, column: 64, scope: !656)
!663 = !DILocation(line: 107, column: 6, scope: !664)
!664 = distinct !DILexicalBlock(scope: !656, file: !102, line: 107, column: 6)
!665 = !DILocation(line: 107, column: 9, scope: !664)
!666 = !DILocation(line: 107, column: 6, scope: !656)
!667 = !DILocation(line: 108, column: 3, scope: !668)
!668 = distinct !DILexicalBlock(scope: !664, file: !102, line: 107, column: 17)
!669 = !DILocation(line: 108, column: 7, scope: !668)
!670 = !DILocation(line: 108, column: 12, scope: !668)
!671 = !DILocation(line: 108, column: 24, scope: !668)
!672 = !DILocation(line: 109, column: 3, scope: !668)
!673 = !DILocation(line: 109, column: 7, scope: !668)
!674 = !DILocation(line: 109, column: 12, scope: !668)
!675 = !DILocation(line: 109, column: 24, scope: !668)
!676 = !DILocation(line: 110, column: 3, scope: !668)
!677 = !DILocation(line: 113, column: 23, scope: !656)
!678 = !DILocation(line: 113, column: 27, scope: !656)
!679 = !DILocation(line: 113, column: 2, scope: !656)
!680 = !DILocation(line: 113, column: 6, scope: !656)
!681 = !DILocation(line: 113, column: 10, scope: !656)
!682 = !DILocation(line: 113, column: 21, scope: !656)
!683 = !DILocation(line: 115, column: 6, scope: !684)
!684 = distinct !DILexicalBlock(scope: !656, file: !102, line: 115, column: 6)
!685 = !DILocation(line: 115, column: 10, scope: !684)
!686 = !DILocation(line: 115, column: 17, scope: !684)
!687 = !DILocation(line: 115, column: 6, scope: !656)
!688 = !DILocation(line: 116, column: 11, scope: !684)
!689 = !DILocation(line: 116, column: 15, scope: !684)
!690 = !DILocation(line: 116, column: 20, scope: !684)
!691 = !DILocation(line: 116, column: 3, scope: !684)
!692 = !DILocation(line: 116, column: 32, scope: !684)
!693 = !DILocation(line: 116, column: 36, scope: !684)
!694 = !DILocation(line: 118, column: 11, scope: !684)
!695 = !DILocation(line: 118, column: 15, scope: !684)
!696 = !DILocation(line: 118, column: 19, scope: !684)
!697 = !DILocation(line: 118, column: 3, scope: !684)
!698 = !DILocation(line: 118, column: 30, scope: !684)
!699 = !DILocation(line: 118, column: 34, scope: !684)
!700 = !DILocation(line: 119, column: 1, scope: !656)
!701 = distinct !DISubprogram(name: "sin_set_port", scope: !102, file: !102, line: 131, type: !702, isLocal: true, isDefinition: true, scopeLine: 132, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !341)
!702 = !DISubroutineType(types: !703)
!703 = !{null, !100, !145}
!704 = !DILocalVariable(name: "so", arg: 1, scope: !701, file: !102, line: 131, type: !100)
!705 = !DILocation(line: 131, column: 48, scope: !701)
!706 = !DILocalVariable(name: "port", arg: 2, scope: !701, file: !102, line: 131, type: !145)
!707 = !DILocation(line: 131, column: 56, scope: !701)
!708 = !DILocation(line: 133, column: 6, scope: !709)
!709 = distinct !DILexicalBlock(scope: !701, file: !102, line: 133, column: 6)
!710 = !DILocation(line: 133, column: 10, scope: !709)
!711 = !DILocation(line: 133, column: 14, scope: !709)
!712 = !DILocation(line: 133, column: 25, scope: !709)
!713 = !DILocation(line: 133, column: 6, scope: !701)
!714 = !DILocation(line: 134, column: 60, scope: !709)
!715 = !DILocation(line: 134, column: 44, scope: !709)
!716 = !DILocation(line: 134, column: 38, scope: !709)
!717 = !DILocation(line: 134, column: 17, scope: !709)
!718 = !DILocation(line: 134, column: 21, scope: !709)
!719 = !DILocation(line: 134, column: 26, scope: !709)
!720 = !DILocation(line: 134, column: 36, scope: !709)
!721 = !DILocation(line: 136, column: 44, scope: !709)
!722 = !DILocation(line: 136, column: 28, scope: !709)
!723 = !DILocation(line: 136, column: 22, scope: !709)
!724 = !DILocation(line: 136, column: 3, scope: !709)
!725 = !DILocation(line: 136, column: 7, scope: !709)
!726 = !DILocation(line: 136, column: 11, scope: !709)
!727 = !DILocation(line: 136, column: 20, scope: !709)
!728 = !DILocation(line: 137, column: 1, scope: !701)
!729 = distinct !DISubprogram(name: "net_connect_ip", scope: !102, file: !102, line: 198, type: !730, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !341)
!730 = !DISubroutineType(types: !731)
!731 = !{!161, !463, !145, !463}
!732 = !DILocalVariable(name: "ip", arg: 1, scope: !729, file: !102, line: 198, type: !463)
!733 = !DILocation(line: 198, column: 36, scope: !729)
!734 = !DILocalVariable(name: "port", arg: 2, scope: !729, file: !102, line: 198, type: !145)
!735 = !DILocation(line: 198, column: 44, scope: !729)
!736 = !DILocalVariable(name: "my_ip", arg: 3, scope: !729, file: !102, line: 198, type: !463)
!737 = !DILocation(line: 198, column: 58, scope: !729)
!738 = !DILocalVariable(name: "handle", scope: !729, file: !102, line: 200, type: !145)
!739 = !DILocation(line: 200, column: 6, scope: !729)
!740 = !DILocation(line: 208, column: 33, scope: !729)
!741 = !DILocation(line: 208, column: 37, scope: !729)
!742 = !DILocation(line: 208, column: 43, scope: !729)
!743 = !DILocation(line: 208, column: 11, scope: !729)
!744 = !DILocation(line: 208, column: 9, scope: !729)
!745 = !DILocation(line: 211, column: 6, scope: !746)
!746 = distinct !DILexicalBlock(scope: !729, file: !102, line: 211, column: 6)
!747 = !DILocation(line: 211, column: 13, scope: !746)
!748 = !DILocation(line: 211, column: 6, scope: !729)
!749 = !DILocation(line: 212, column: 3, scope: !746)
!750 = !DILocation(line: 214, column: 26, scope: !729)
!751 = !DILocation(line: 214, column: 9, scope: !729)
!752 = !DILocation(line: 214, column: 2, scope: !729)
!753 = !DILocation(line: 215, column: 1, scope: !729)
!754 = distinct !DISubprogram(name: "net_connect_unix", scope: !102, file: !102, line: 218, type: !755, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !341)
!755 = !DISubroutineType(types: !756)
!756 = !{!161, !93}
!757 = !DILocalVariable(name: "path", arg: 1, scope: !754, file: !102, line: 218, type: !93)
!758 = !DILocation(line: 218, column: 42, scope: !754)
!759 = !DILocalVariable(name: "sa", scope: !754, file: !102, line: 220, type: !760)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_un", file: !761, line: 29, size: 880, align: 16, elements: !762)
!761 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/un.h", directory: "/home/lichi/Desktop/irssi/task1")
!762 = !{!763, !764}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "sun_family", scope: !760, file: !761, line: 31, baseType: !86, size: 16, align: 16)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "sun_path", scope: !760, file: !761, line: 32, baseType: !765, size: 864, align: 8, offset: 16)
!765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 864, align: 8, elements: !766)
!766 = !{!767}
!767 = !DISubrange(count: 108)
!768 = !DILocation(line: 220, column: 21, scope: !754)
!769 = !DILocalVariable(name: "handle", scope: !754, file: !102, line: 221, type: !145)
!770 = !DILocation(line: 221, column: 6, scope: !754)
!771 = !DILocalVariable(name: "ret", scope: !754, file: !102, line: 221, type: !145)
!772 = !DILocation(line: 221, column: 14, scope: !754)
!773 = !DILocation(line: 224, column: 11, scope: !754)
!774 = !DILocation(line: 224, column: 9, scope: !754)
!775 = !DILocation(line: 225, column: 6, scope: !776)
!776 = distinct !DILexicalBlock(scope: !754, file: !102, line: 225, column: 6)
!777 = !DILocation(line: 225, column: 13, scope: !776)
!778 = !DILocation(line: 225, column: 6, scope: !754)
!779 = !DILocation(line: 226, column: 3, scope: !776)
!780 = !DILocation(line: 229, column: 8, scope: !754)
!781 = !DILocation(line: 229, column: 2, scope: !754)
!782 = !DILocation(line: 232, column: 2, scope: !754)
!783 = !DILocation(line: 233, column: 5, scope: !754)
!784 = !DILocation(line: 233, column: 16, scope: !754)
!785 = !DILocation(line: 234, column: 13, scope: !754)
!786 = !DILocation(line: 234, column: 10, scope: !754)
!787 = !DILocation(line: 234, column: 23, scope: !754)
!788 = !DILocation(line: 234, column: 2, scope: !754)
!789 = !DILocation(line: 235, column: 5, scope: !754)
!790 = !DILocation(line: 235, column: 2, scope: !754)
!791 = !DILocation(line: 235, column: 37, scope: !754)
!792 = !DILocation(line: 237, column: 16, scope: !754)
!793 = !DILocation(line: 237, column: 24, scope: !754)
!794 = !DILocation(line: 237, column: 8, scope: !754)
!795 = !DILocation(line: 237, column: 6, scope: !754)
!796 = !DILocation(line: 238, column: 6, scope: !797)
!797 = distinct !DILexicalBlock(scope: !754, file: !102, line: 238, column: 6)
!798 = !DILocation(line: 238, column: 10, scope: !797)
!799 = !DILocation(line: 238, column: 14, scope: !797)
!800 = !DILocation(line: 238, column: 18, scope: !801)
!801 = !DILexicalBlockFile(scope: !797, file: !102, discriminator: 1)
!802 = !DILocation(line: 238, column: 17, scope: !801)
!803 = !DILocation(line: 238, column: 22, scope: !801)
!804 = !DILocation(line: 238, column: 6, scope: !801)
!805 = !DILocalVariable(name: "old_errno", scope: !806, file: !102, line: 239, type: !145)
!806 = distinct !DILexicalBlock(scope: !797, file: !102, line: 238, column: 38)
!807 = !DILocation(line: 239, column: 7, scope: !806)
!808 = !DILocation(line: 239, column: 20, scope: !806)
!809 = !DILocation(line: 239, column: 19, scope: !806)
!810 = !DILocation(line: 240, column: 9, scope: !806)
!811 = !DILocation(line: 240, column: 3, scope: !806)
!812 = !DILocation(line: 241, column: 10, scope: !806)
!813 = !DILocation(line: 241, column: 4, scope: !806)
!814 = !DILocation(line: 241, column: 8, scope: !806)
!815 = !DILocation(line: 242, column: 3, scope: !806)
!816 = !DILocation(line: 245, column: 26, scope: !754)
!817 = !DILocation(line: 245, column: 9, scope: !754)
!818 = !DILocation(line: 245, column: 2, scope: !754)
!819 = !DILocation(line: 246, column: 1, scope: !754)
!820 = distinct !DISubprogram(name: "net_disconnect", scope: !102, file: !102, line: 249, type: !297, isLocal: false, isDefinition: true, scopeLine: 250, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !341)
!821 = !DILocalVariable(name: "handle", arg: 1, scope: !820, file: !102, line: 249, type: !161)
!822 = !DILocation(line: 249, column: 33, scope: !820)
!823 = !DILocation(line: 251, column: 2, scope: !820)
!824 = distinct !{!824, !823}
!825 = !DILocation(line: 251, column: 10, scope: !826)
!826 = !DILexicalBlockFile(scope: !827, file: !102, discriminator: 1)
!827 = distinct !DILexicalBlock(scope: !828, file: !102, line: 251, column: 10)
!828 = distinct !DILexicalBlock(scope: !820, file: !102, line: 251, column: 4)
!829 = !DILocation(line: 251, column: 17, scope: !826)
!830 = !DILocation(line: 251, column: 5, scope: !831)
!831 = !DILexicalBlockFile(scope: !832, file: !102, discriminator: 2)
!832 = distinct !DILexicalBlock(scope: !827, file: !102, line: 251, column: 3)
!833 = !DILocation(line: 251, column: 14, scope: !834)
!834 = !DILexicalBlockFile(scope: !835, file: !102, discriminator: 3)
!835 = distinct !DILexicalBlock(scope: !827, file: !102, line: 251, column: 12)
!836 = !DILocation(line: 251, column: 101, scope: !834)
!837 = !DILocation(line: 251, column: 112, scope: !838)
!838 = !DILexicalBlockFile(scope: !828, file: !102, discriminator: 4)
!839 = !DILocation(line: 253, column: 24, scope: !820)
!840 = !DILocation(line: 253, column: 2, scope: !820)
!841 = !DILocation(line: 254, column: 21, scope: !820)
!842 = !DILocation(line: 254, column: 2, scope: !820)
!843 = !DILocation(line: 255, column: 1, scope: !820)
!844 = !DILocation(line: 255, column: 1, scope: !845)
!845 = !DILexicalBlockFile(scope: !820, file: !102, discriminator: 1)
!846 = distinct !DISubprogram(name: "net_listen", scope: !102, file: !102, line: 259, type: !847, isLocal: false, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !341)
!847 = !DISubroutineType(types: !848)
!848 = !{!161, !463, !849}
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!850 = !DILocalVariable(name: "my_ip", arg: 1, scope: !846, file: !102, line: 259, type: !463)
!851 = !DILocation(line: 259, column: 32, scope: !846)
!852 = !DILocalVariable(name: "port", arg: 2, scope: !846, file: !102, line: 259, type: !849)
!853 = !DILocation(line: 259, column: 44, scope: !846)
!854 = !DILocalVariable(name: "so", scope: !846, file: !102, line: 261, type: !101)
!855 = !DILocation(line: 261, column: 23, scope: !846)
!856 = !DILocalVariable(name: "ret", scope: !846, file: !102, line: 262, type: !145)
!857 = !DILocation(line: 262, column: 6, scope: !846)
!858 = !DILocalVariable(name: "handle", scope: !846, file: !102, line: 262, type: !145)
!859 = !DILocation(line: 262, column: 11, scope: !846)
!860 = !DILocalVariable(name: "opt", scope: !846, file: !102, line: 262, type: !145)
!861 = !DILocation(line: 262, column: 19, scope: !846)
!862 = !DILocalVariable(name: "len", scope: !846, file: !102, line: 263, type: !863)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !864, line: 277, baseType: !865)
!864 = !DIFile(filename: "/usr/include/unistd.h", directory: "/home/lichi/Desktop/irssi/task1")
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !412, line: 189, baseType: !99)
!866 = !DILocation(line: 263, column: 12, scope: !846)
!867 = !DILocation(line: 265, column: 2, scope: !846)
!868 = distinct !{!868, !867}
!869 = !DILocation(line: 265, column: 10, scope: !870)
!870 = !DILexicalBlockFile(scope: !871, file: !102, discriminator: 1)
!871 = distinct !DILexicalBlock(scope: !872, file: !102, line: 265, column: 10)
!872 = distinct !DILexicalBlock(scope: !846, file: !102, line: 265, column: 4)
!873 = !DILocation(line: 265, column: 15, scope: !870)
!874 = !DILocation(line: 265, column: 5, scope: !875)
!875 = !DILexicalBlockFile(scope: !876, file: !102, discriminator: 2)
!876 = distinct !DILexicalBlock(scope: !871, file: !102, line: 265, column: 3)
!877 = !DILocation(line: 265, column: 14, scope: !878)
!878 = !DILexicalBlockFile(scope: !879, file: !102, discriminator: 3)
!879 = distinct !DILexicalBlock(scope: !871, file: !102, line: 265, column: 12)
!880 = !DILocation(line: 265, column: 99, scope: !878)
!881 = !DILocation(line: 265, column: 7, scope: !882)
!882 = !DILexicalBlockFile(scope: !872, file: !102, discriminator: 4)
!883 = !DILocation(line: 267, column: 2, scope: !846)
!884 = !DILocation(line: 268, column: 18, scope: !846)
!885 = !DILocation(line: 268, column: 2, scope: !846)
!886 = !DILocation(line: 269, column: 21, scope: !846)
!887 = !DILocation(line: 269, column: 20, scope: !846)
!888 = !DILocation(line: 269, column: 2, scope: !846)
!889 = !DILocation(line: 272, column: 21, scope: !846)
!890 = !DILocation(line: 272, column: 25, scope: !846)
!891 = !DILocation(line: 272, column: 18, scope: !846)
!892 = !DILocation(line: 272, column: 11, scope: !846)
!893 = !DILocation(line: 272, column: 9, scope: !846)
!894 = !DILocation(line: 274, column: 6, scope: !895)
!895 = distinct !DILexicalBlock(scope: !846, file: !102, line: 274, column: 6)
!896 = !DILocation(line: 274, column: 13, scope: !895)
!897 = !DILocation(line: 274, column: 19, scope: !895)
!898 = !DILocation(line: 274, column: 24, scope: !899)
!899 = !DILexicalBlockFile(scope: !895, file: !102, discriminator: 1)
!900 = !DILocation(line: 274, column: 23, scope: !899)
!901 = !DILocation(line: 274, column: 28, scope: !899)
!902 = !DILocation(line: 274, column: 38, scope: !899)
!903 = !DILocation(line: 274, column: 43, scope: !904)
!904 = !DILexicalBlockFile(scope: !895, file: !102, discriminator: 2)
!905 = !DILocation(line: 274, column: 42, scope: !904)
!906 = !DILocation(line: 274, column: 47, scope: !904)
!907 = !DILocation(line: 274, column: 6, scope: !904)
!908 = !DILocation(line: 276, column: 6, scope: !909)
!909 = distinct !DILexicalBlock(scope: !895, file: !102, line: 274, column: 65)
!910 = !DILocation(line: 276, column: 10, scope: !909)
!911 = !DILocation(line: 276, column: 21, scope: !909)
!912 = !DILocation(line: 277, column: 6, scope: !909)
!913 = !DILocation(line: 277, column: 10, scope: !909)
!914 = !DILocation(line: 277, column: 19, scope: !909)
!915 = !DILocation(line: 277, column: 26, scope: !909)
!916 = !DILocation(line: 279, column: 12, scope: !909)
!917 = !DILocation(line: 279, column: 10, scope: !909)
!918 = !DILocation(line: 280, column: 2, scope: !909)
!919 = !DILocation(line: 282, column: 6, scope: !920)
!920 = distinct !DILexicalBlock(scope: !846, file: !102, line: 282, column: 6)
!921 = !DILocation(line: 282, column: 13, scope: !920)
!922 = !DILocation(line: 282, column: 6, scope: !846)
!923 = !DILocation(line: 283, column: 3, scope: !920)
!924 = !DILocation(line: 286, column: 8, scope: !846)
!925 = !DILocation(line: 286, column: 2, scope: !846)
!926 = !DILocation(line: 287, column: 13, scope: !846)
!927 = !DILocation(line: 287, column: 46, scope: !846)
!928 = !DILocation(line: 287, column: 2, scope: !846)
!929 = !DILocation(line: 288, column: 13, scope: !846)
!930 = !DILocation(line: 288, column: 46, scope: !846)
!931 = !DILocation(line: 288, column: 2, scope: !846)
!932 = !DILocation(line: 291, column: 13, scope: !846)
!933 = !DILocation(line: 291, column: 25, scope: !846)
!934 = !DILocation(line: 291, column: 35, scope: !846)
!935 = !DILocation(line: 291, column: 38, scope: !846)
!936 = !DILocation(line: 291, column: 30, scope: !846)
!937 = !DILocation(line: 291, column: 48, scope: !846)
!938 = !DILocation(line: 291, column: 29, scope: !846)
!939 = !DILocation(line: 291, column: 8, scope: !846)
!940 = !DILocation(line: 291, column: 6, scope: !846)
!941 = !DILocation(line: 292, column: 6, scope: !942)
!942 = distinct !DILexicalBlock(scope: !846, file: !102, line: 292, column: 6)
!943 = !DILocation(line: 292, column: 10, scope: !942)
!944 = !DILocation(line: 292, column: 6, scope: !846)
!945 = !DILocation(line: 294, column: 15, scope: !946)
!946 = distinct !DILexicalBlock(scope: !942, file: !102, line: 292, column: 16)
!947 = !DILocation(line: 294, column: 18, scope: !946)
!948 = !DILocation(line: 294, column: 10, scope: !946)
!949 = !DILocation(line: 294, column: 28, scope: !946)
!950 = !DILocation(line: 294, column: 9, scope: !946)
!951 = !DILocation(line: 294, column: 7, scope: !946)
!952 = !DILocation(line: 295, column: 21, scope: !946)
!953 = !DILocation(line: 295, column: 33, scope: !946)
!954 = !DILocation(line: 295, column: 9, scope: !946)
!955 = !DILocation(line: 295, column: 7, scope: !946)
!956 = !DILocation(line: 296, column: 7, scope: !957)
!957 = distinct !DILexicalBlock(scope: !946, file: !102, line: 296, column: 7)
!958 = !DILocation(line: 296, column: 11, scope: !957)
!959 = !DILocation(line: 296, column: 7, scope: !946)
!960 = !DILocation(line: 297, column: 12, scope: !961)
!961 = distinct !DILexicalBlock(scope: !957, file: !102, line: 296, column: 17)
!962 = !DILocation(line: 297, column: 5, scope: !961)
!963 = !DILocation(line: 297, column: 10, scope: !961)
!964 = !DILocation(line: 300, column: 15, scope: !965)
!965 = distinct !DILexicalBlock(scope: !961, file: !102, line: 300, column: 8)
!966 = !DILocation(line: 300, column: 8, scope: !965)
!967 = !DILocation(line: 300, column: 26, scope: !965)
!968 = !DILocation(line: 300, column: 8, scope: !961)
!969 = !DILocation(line: 301, column: 57, scope: !965)
!970 = !DILocation(line: 301, column: 40, scope: !965)
!971 = !DILocation(line: 301, column: 33, scope: !965)
!972 = !DILocation(line: 302, column: 3, scope: !961)
!973 = !DILocation(line: 304, column: 2, scope: !946)
!974 = !DILocation(line: 307, column: 8, scope: !846)
!975 = !DILocation(line: 307, column: 2, scope: !846)
!976 = !DILocation(line: 308, column: 2, scope: !846)
!977 = !DILocation(line: 309, column: 1, scope: !846)
!978 = distinct !DISubprogram(name: "sin_get_port", scope: !102, file: !102, line: 139, type: !979, isLocal: true, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !341)
!979 = !DISubroutineType(types: !980)
!980 = !{!145, !100}
!981 = !DILocalVariable(name: "so", arg: 1, scope: !978, file: !102, line: 139, type: !100)
!982 = !DILocation(line: 139, column: 47, scope: !978)
!983 = !DILocation(line: 141, column: 16, scope: !978)
!984 = !DILocation(line: 141, column: 20, scope: !978)
!985 = !DILocation(line: 141, column: 24, scope: !978)
!986 = !DILocation(line: 141, column: 35, scope: !978)
!987 = !DILocation(line: 141, column: 15, scope: !978)
!988 = !DILocation(line: 142, column: 8, scope: !978)
!989 = !DILocation(line: 142, column: 12, scope: !978)
!990 = !DILocation(line: 142, column: 17, scope: !978)
!991 = !DILocation(line: 141, column: 15, scope: !992)
!992 = !DILexicalBlockFile(scope: !978, file: !102, discriminator: 1)
!993 = !DILocation(line: 143, column: 8, scope: !978)
!994 = !DILocation(line: 143, column: 12, scope: !978)
!995 = !DILocation(line: 143, column: 16, scope: !978)
!996 = !DILocation(line: 141, column: 15, scope: !997)
!997 = !DILexicalBlockFile(scope: !978, file: !102, discriminator: 2)
!998 = !DILocation(line: 141, column: 15, scope: !999)
!999 = !DILexicalBlockFile(scope: !978, file: !102, discriminator: 3)
!1000 = !DILocation(line: 141, column: 9, scope: !999)
!1001 = !DILocation(line: 141, column: 2, scope: !999)
!1002 = distinct !DISubprogram(name: "net_accept", scope: !102, file: !102, line: 312, type: !1003, isLocal: false, isDefinition: true, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !341)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!161, !161, !463, !849}
!1005 = !DILocalVariable(name: "handle", arg: 1, scope: !1002, file: !102, line: 312, type: !161)
!1006 = !DILocation(line: 312, column: 36, scope: !1002)
!1007 = !DILocalVariable(name: "addr", arg: 2, scope: !1002, file: !102, line: 312, type: !463)
!1008 = !DILocation(line: 312, column: 52, scope: !1002)
!1009 = !DILocalVariable(name: "port", arg: 3, scope: !1002, file: !102, line: 312, type: !849)
!1010 = !DILocation(line: 312, column: 63, scope: !1002)
!1011 = !DILocalVariable(name: "so", scope: !1002, file: !102, line: 314, type: !101)
!1012 = !DILocation(line: 314, column: 23, scope: !1002)
!1013 = !DILocalVariable(name: "ret", scope: !1002, file: !102, line: 315, type: !145)
!1014 = !DILocation(line: 315, column: 6, scope: !1002)
!1015 = !DILocalVariable(name: "addrlen", scope: !1002, file: !102, line: 316, type: !863)
!1016 = !DILocation(line: 316, column: 12, scope: !1002)
!1017 = !DILocation(line: 318, column: 2, scope: !1002)
!1018 = distinct !{!1018, !1017}
!1019 = !DILocation(line: 318, column: 10, scope: !1020)
!1020 = !DILexicalBlockFile(scope: !1021, file: !102, discriminator: 1)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !102, line: 318, column: 10)
!1022 = distinct !DILexicalBlock(scope: !1002, file: !102, line: 318, column: 4)
!1023 = !DILocation(line: 318, column: 17, scope: !1020)
!1024 = !DILocation(line: 318, column: 5, scope: !1025)
!1025 = !DILexicalBlockFile(scope: !1026, file: !102, discriminator: 2)
!1026 = distinct !DILexicalBlock(scope: !1021, file: !102, line: 318, column: 3)
!1027 = !DILocation(line: 318, column: 14, scope: !1028)
!1028 = !DILexicalBlockFile(scope: !1029, file: !102, discriminator: 3)
!1029 = distinct !DILexicalBlock(scope: !1021, file: !102, line: 318, column: 12)
!1030 = !DILocation(line: 318, column: 101, scope: !1028)
!1031 = !DILocation(line: 318, column: 7, scope: !1032)
!1032 = !DILexicalBlockFile(scope: !1022, file: !102, discriminator: 4)
!1033 = !DILocation(line: 320, column: 10, scope: !1002)
!1034 = !DILocation(line: 321, column: 40, scope: !1002)
!1035 = !DILocation(line: 321, column: 15, scope: !1002)
!1036 = !DILocation(line: 321, column: 53, scope: !1002)
!1037 = !DILocation(line: 321, column: 8, scope: !1038)
!1038 = !DILexicalBlockFile(scope: !1002, file: !102, discriminator: 1)
!1039 = !DILocation(line: 321, column: 6, scope: !1002)
!1040 = !DILocation(line: 323, column: 6, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1002, file: !102, line: 323, column: 6)
!1042 = !DILocation(line: 323, column: 10, scope: !1041)
!1043 = !DILocation(line: 323, column: 6, scope: !1002)
!1044 = !DILocation(line: 324, column: 3, scope: !1041)
!1045 = !DILocation(line: 326, column: 6, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1002, file: !102, line: 326, column: 6)
!1047 = !DILocation(line: 326, column: 11, scope: !1046)
!1048 = !DILocation(line: 326, column: 6, scope: !1002)
!1049 = !DILocation(line: 326, column: 35, scope: !1050)
!1050 = !DILexicalBlockFile(scope: !1046, file: !102, discriminator: 1)
!1051 = !DILocation(line: 326, column: 19, scope: !1050)
!1052 = !DILocation(line: 327, column: 6, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1002, file: !102, line: 327, column: 6)
!1054 = !DILocation(line: 327, column: 11, scope: !1053)
!1055 = !DILocation(line: 327, column: 6, scope: !1002)
!1056 = !DILocation(line: 327, column: 27, scope: !1057)
!1057 = !DILexicalBlockFile(scope: !1053, file: !102, discriminator: 1)
!1058 = !DILocation(line: 327, column: 20, scope: !1057)
!1059 = !DILocation(line: 327, column: 25, scope: !1057)
!1060 = !DILocation(line: 327, column: 19, scope: !1057)
!1061 = !DILocation(line: 329, column: 8, scope: !1002)
!1062 = !DILocation(line: 329, column: 2, scope: !1002)
!1063 = !DILocation(line: 330, column: 26, scope: !1002)
!1064 = !DILocation(line: 330, column: 9, scope: !1002)
!1065 = !DILocation(line: 330, column: 2, scope: !1002)
!1066 = !DILocation(line: 331, column: 1, scope: !1002)
!1067 = distinct !DISubprogram(name: "net_receive", scope: !102, file: !102, line: 334, type: !1068, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !341)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!145, !161, !75, !145}
!1070 = !DILocalVariable(name: "handle", arg: 1, scope: !1067, file: !102, line: 334, type: !161)
!1071 = !DILocation(line: 334, column: 29, scope: !1067)
!1072 = !DILocalVariable(name: "buf", arg: 2, scope: !1067, file: !102, line: 334, type: !75)
!1073 = !DILocation(line: 334, column: 43, scope: !1067)
!1074 = !DILocalVariable(name: "len", arg: 3, scope: !1067, file: !102, line: 334, type: !145)
!1075 = !DILocation(line: 334, column: 52, scope: !1067)
!1076 = !DILocalVariable(name: "ret", scope: !1067, file: !102, line: 336, type: !177)
!1077 = !DILocation(line: 336, column: 15, scope: !1067)
!1078 = !DILocalVariable(name: "status", scope: !1067, file: !102, line: 337, type: !176)
!1079 = !DILocation(line: 337, column: 12, scope: !1067)
!1080 = !DILocalVariable(name: "err", scope: !1067, file: !102, line: 338, type: !182)
!1081 = !DILocation(line: 338, column: 10, scope: !1067)
!1082 = !DILocation(line: 340, column: 2, scope: !1067)
!1083 = distinct !{!1083, !1082}
!1084 = !DILocation(line: 340, column: 10, scope: !1085)
!1085 = !DILexicalBlockFile(scope: !1086, file: !102, discriminator: 1)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !102, line: 340, column: 10)
!1087 = distinct !DILexicalBlock(scope: !1067, file: !102, line: 340, column: 4)
!1088 = !DILocation(line: 340, column: 17, scope: !1085)
!1089 = !DILocation(line: 340, column: 5, scope: !1090)
!1090 = !DILexicalBlockFile(scope: !1091, file: !102, discriminator: 2)
!1091 = distinct !DILexicalBlock(scope: !1086, file: !102, line: 340, column: 3)
!1092 = !DILocation(line: 340, column: 14, scope: !1093)
!1093 = !DILexicalBlockFile(scope: !1094, file: !102, discriminator: 3)
!1094 = distinct !DILexicalBlock(scope: !1086, file: !102, line: 340, column: 12)
!1095 = !DILocation(line: 340, column: 101, scope: !1093)
!1096 = !DILocation(line: 340, column: 117, scope: !1097)
!1097 = !DILexicalBlockFile(scope: !1087, file: !102, discriminator: 4)
!1098 = !DILocation(line: 341, column: 2, scope: !1067)
!1099 = distinct !{!1099, !1098}
!1100 = !DILocation(line: 341, column: 10, scope: !1101)
!1101 = !DILexicalBlockFile(scope: !1102, file: !102, discriminator: 1)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !102, line: 341, column: 10)
!1103 = distinct !DILexicalBlock(scope: !1067, file: !102, line: 341, column: 4)
!1104 = !DILocation(line: 341, column: 14, scope: !1101)
!1105 = !DILocation(line: 341, column: 5, scope: !1106)
!1106 = !DILexicalBlockFile(scope: !1107, file: !102, discriminator: 2)
!1107 = distinct !DILexicalBlock(scope: !1102, file: !102, line: 341, column: 3)
!1108 = !DILocation(line: 341, column: 14, scope: !1109)
!1109 = !DILexicalBlockFile(scope: !1110, file: !102, discriminator: 3)
!1110 = distinct !DILexicalBlock(scope: !1102, file: !102, line: 341, column: 12)
!1111 = !DILocation(line: 341, column: 98, scope: !1109)
!1112 = !DILocation(line: 341, column: 114, scope: !1113)
!1113 = !DILexicalBlockFile(scope: !1103, file: !102, discriminator: 4)
!1114 = !DILocation(line: 343, column: 35, scope: !1067)
!1115 = !DILocation(line: 343, column: 43, scope: !1067)
!1116 = !DILocation(line: 343, column: 48, scope: !1067)
!1117 = !DILocation(line: 343, column: 11, scope: !1067)
!1118 = !DILocation(line: 343, column: 9, scope: !1067)
!1119 = !DILocation(line: 344, column: 6, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1067, file: !102, line: 344, column: 6)
!1121 = !DILocation(line: 344, column: 10, scope: !1120)
!1122 = !DILocation(line: 344, column: 6, scope: !1067)
!1123 = !DILocation(line: 345, column: 58, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1120, file: !102, line: 344, column: 18)
!1125 = !DILocation(line: 345, column: 63, scope: !1124)
!1126 = !DILocation(line: 345, column: 10, scope: !1124)
!1127 = !DILocation(line: 346, column: 23, scope: !1124)
!1128 = !DILocation(line: 346, column: 10, scope: !1124)
!1129 = !DILocation(line: 347, column: 2, scope: !1124)
!1130 = !DILocation(line: 348, column: 6, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1067, file: !102, line: 348, column: 6)
!1132 = !DILocation(line: 348, column: 13, scope: !1131)
!1133 = !DILocation(line: 348, column: 34, scope: !1131)
!1134 = !DILocation(line: 348, column: 37, scope: !1135)
!1135 = !DILexicalBlockFile(scope: !1131, file: !102, discriminator: 1)
!1136 = !DILocation(line: 348, column: 44, scope: !1135)
!1137 = !DILocation(line: 348, column: 6, scope: !1135)
!1138 = !DILocation(line: 349, column: 3, scope: !1131)
!1139 = !DILocation(line: 351, column: 9, scope: !1067)
!1140 = !DILocation(line: 351, column: 2, scope: !1067)
!1141 = !DILocation(line: 352, column: 1, scope: !1067)
!1142 = distinct !DISubprogram(name: "net_transmit", scope: !102, file: !102, line: 355, type: !1143, isLocal: false, isDefinition: true, scopeLine: 356, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !341)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!145, !161, !93, !145}
!1145 = !DILocalVariable(name: "handle", arg: 1, scope: !1142, file: !102, line: 355, type: !161)
!1146 = !DILocation(line: 355, column: 30, scope: !1142)
!1147 = !DILocalVariable(name: "data", arg: 2, scope: !1142, file: !102, line: 355, type: !93)
!1148 = !DILocation(line: 355, column: 50, scope: !1142)
!1149 = !DILocalVariable(name: "len", arg: 3, scope: !1142, file: !102, line: 355, type: !145)
!1150 = !DILocation(line: 355, column: 60, scope: !1142)
!1151 = !DILocalVariable(name: "ret", scope: !1142, file: !102, line: 357, type: !177)
!1152 = !DILocation(line: 357, column: 15, scope: !1142)
!1153 = !DILocalVariable(name: "status", scope: !1142, file: !102, line: 358, type: !176)
!1154 = !DILocation(line: 358, column: 12, scope: !1142)
!1155 = !DILocalVariable(name: "err", scope: !1142, file: !102, line: 359, type: !182)
!1156 = !DILocation(line: 359, column: 10, scope: !1142)
!1157 = !DILocation(line: 361, column: 2, scope: !1142)
!1158 = distinct !{!1158, !1157}
!1159 = !DILocation(line: 361, column: 10, scope: !1160)
!1160 = !DILexicalBlockFile(scope: !1161, file: !102, discriminator: 1)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !102, line: 361, column: 10)
!1162 = distinct !DILexicalBlock(scope: !1142, file: !102, line: 361, column: 4)
!1163 = !DILocation(line: 361, column: 17, scope: !1160)
!1164 = !DILocation(line: 361, column: 5, scope: !1165)
!1165 = !DILexicalBlockFile(scope: !1166, file: !102, discriminator: 2)
!1166 = distinct !DILexicalBlock(scope: !1161, file: !102, line: 361, column: 3)
!1167 = !DILocation(line: 361, column: 14, scope: !1168)
!1168 = !DILexicalBlockFile(scope: !1169, file: !102, discriminator: 3)
!1169 = distinct !DILexicalBlock(scope: !1161, file: !102, line: 361, column: 12)
!1170 = !DILocation(line: 361, column: 101, scope: !1168)
!1171 = !DILocation(line: 361, column: 117, scope: !1172)
!1172 = !DILexicalBlockFile(scope: !1162, file: !102, discriminator: 4)
!1173 = !DILocation(line: 362, column: 2, scope: !1142)
!1174 = distinct !{!1174, !1173}
!1175 = !DILocation(line: 362, column: 10, scope: !1176)
!1176 = !DILexicalBlockFile(scope: !1177, file: !102, discriminator: 1)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !102, line: 362, column: 10)
!1178 = distinct !DILexicalBlock(scope: !1142, file: !102, line: 362, column: 4)
!1179 = !DILocation(line: 362, column: 15, scope: !1176)
!1180 = !DILocation(line: 362, column: 5, scope: !1181)
!1181 = !DILexicalBlockFile(scope: !1182, file: !102, discriminator: 2)
!1182 = distinct !DILexicalBlock(scope: !1177, file: !102, line: 362, column: 3)
!1183 = !DILocation(line: 362, column: 14, scope: !1184)
!1184 = !DILexicalBlockFile(scope: !1185, file: !102, discriminator: 3)
!1185 = distinct !DILexicalBlock(scope: !1177, file: !102, line: 362, column: 12)
!1186 = !DILocation(line: 362, column: 99, scope: !1184)
!1187 = !DILocation(line: 362, column: 115, scope: !1188)
!1188 = !DILexicalBlockFile(scope: !1178, file: !102, discriminator: 4)
!1189 = !DILocation(line: 364, column: 36, scope: !1142)
!1190 = !DILocation(line: 364, column: 53, scope: !1142)
!1191 = !DILocation(line: 364, column: 59, scope: !1142)
!1192 = !DILocation(line: 364, column: 11, scope: !1142)
!1193 = !DILocation(line: 364, column: 9, scope: !1142)
!1194 = !DILocation(line: 365, column: 6, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1142, file: !102, line: 365, column: 6)
!1196 = !DILocation(line: 365, column: 10, scope: !1195)
!1197 = !DILocation(line: 365, column: 6, scope: !1142)
!1198 = !DILocation(line: 366, column: 58, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1195, file: !102, line: 365, column: 18)
!1200 = !DILocation(line: 366, column: 63, scope: !1199)
!1201 = !DILocation(line: 366, column: 10, scope: !1199)
!1202 = !DILocation(line: 367, column: 23, scope: !1199)
!1203 = !DILocation(line: 367, column: 10, scope: !1199)
!1204 = !DILocation(line: 368, column: 2, scope: !1199)
!1205 = !DILocation(line: 369, column: 6, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1142, file: !102, line: 369, column: 6)
!1207 = !DILocation(line: 369, column: 13, scope: !1206)
!1208 = !DILocation(line: 369, column: 6, scope: !1142)
!1209 = !DILocation(line: 370, column: 3, scope: !1206)
!1210 = !DILocation(line: 372, column: 9, scope: !1142)
!1211 = !DILocation(line: 372, column: 2, scope: !1142)
!1212 = !DILocation(line: 373, column: 1, scope: !1142)
!1213 = distinct !DISubprogram(name: "net_getsockname", scope: !102, file: !102, line: 376, type: !1214, isLocal: false, isDefinition: true, scopeLine: 377, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !341)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!145, !161, !463, !849}
!1216 = !DILocalVariable(name: "handle", arg: 1, scope: !1213, file: !102, line: 376, type: !161)
!1217 = !DILocation(line: 376, column: 33, scope: !1213)
!1218 = !DILocalVariable(name: "addr", arg: 2, scope: !1213, file: !102, line: 376, type: !463)
!1219 = !DILocation(line: 376, column: 49, scope: !1213)
!1220 = !DILocalVariable(name: "port", arg: 3, scope: !1213, file: !102, line: 376, type: !849)
!1221 = !DILocation(line: 376, column: 60, scope: !1213)
!1222 = !DILocalVariable(name: "so", scope: !1213, file: !102, line: 378, type: !101)
!1223 = !DILocation(line: 378, column: 23, scope: !1213)
!1224 = !DILocalVariable(name: "addrlen", scope: !1213, file: !102, line: 379, type: !863)
!1225 = !DILocation(line: 379, column: 12, scope: !1213)
!1226 = !DILocation(line: 381, column: 2, scope: !1213)
!1227 = distinct !{!1227, !1226}
!1228 = !DILocation(line: 381, column: 10, scope: !1229)
!1229 = !DILexicalBlockFile(scope: !1230, file: !102, discriminator: 1)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !102, line: 381, column: 10)
!1231 = distinct !DILexicalBlock(scope: !1213, file: !102, line: 381, column: 4)
!1232 = !DILocation(line: 381, column: 17, scope: !1229)
!1233 = !DILocation(line: 381, column: 5, scope: !1234)
!1234 = !DILexicalBlockFile(scope: !1235, file: !102, discriminator: 2)
!1235 = distinct !DILexicalBlock(scope: !1230, file: !102, line: 381, column: 3)
!1236 = !DILocation(line: 381, column: 14, scope: !1237)
!1237 = !DILexicalBlockFile(scope: !1238, file: !102, discriminator: 3)
!1238 = distinct !DILexicalBlock(scope: !1230, file: !102, line: 381, column: 12)
!1239 = !DILocation(line: 381, column: 101, scope: !1237)
!1240 = !DILocation(line: 381, column: 117, scope: !1241)
!1241 = !DILexicalBlockFile(scope: !1231, file: !102, discriminator: 4)
!1242 = !DILocation(line: 382, column: 2, scope: !1213)
!1243 = distinct !{!1243, !1242}
!1244 = !DILocation(line: 382, column: 10, scope: !1245)
!1245 = !DILexicalBlockFile(scope: !1246, file: !102, discriminator: 1)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !102, line: 382, column: 10)
!1247 = distinct !DILexicalBlock(scope: !1213, file: !102, line: 382, column: 4)
!1248 = !DILocation(line: 382, column: 15, scope: !1245)
!1249 = !DILocation(line: 382, column: 5, scope: !1250)
!1250 = !DILexicalBlockFile(scope: !1251, file: !102, discriminator: 2)
!1251 = distinct !DILexicalBlock(scope: !1246, file: !102, line: 382, column: 3)
!1252 = !DILocation(line: 382, column: 14, scope: !1253)
!1253 = !DILexicalBlockFile(scope: !1254, file: !102, discriminator: 3)
!1254 = distinct !DILexicalBlock(scope: !1246, file: !102, line: 382, column: 12)
!1255 = !DILocation(line: 382, column: 99, scope: !1253)
!1256 = !DILocation(line: 382, column: 115, scope: !1257)
!1257 = !DILexicalBlockFile(scope: !1247, file: !102, discriminator: 4)
!1258 = !DILocation(line: 384, column: 10, scope: !1213)
!1259 = !DILocation(line: 385, column: 43, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1213, file: !102, line: 385, column: 6)
!1261 = !DILocation(line: 385, column: 18, scope: !1260)
!1262 = !DILocation(line: 386, column: 4, scope: !1260)
!1263 = !DILocation(line: 385, column: 6, scope: !1264)
!1264 = !DILexicalBlockFile(scope: !1260, file: !102, discriminator: 1)
!1265 = !DILocation(line: 386, column: 39, scope: !1260)
!1266 = !DILocation(line: 385, column: 6, scope: !1213)
!1267 = !DILocation(line: 387, column: 3, scope: !1260)
!1268 = !DILocation(line: 389, column: 25, scope: !1213)
!1269 = !DILocation(line: 389, column: 9, scope: !1213)
!1270 = !DILocation(line: 390, column: 6, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1213, file: !102, line: 390, column: 6)
!1272 = !DILocation(line: 390, column: 6, scope: !1213)
!1273 = !DILocation(line: 390, column: 20, scope: !1274)
!1274 = !DILexicalBlockFile(scope: !1271, file: !102, discriminator: 1)
!1275 = !DILocation(line: 390, column: 13, scope: !1274)
!1276 = !DILocation(line: 390, column: 18, scope: !1274)
!1277 = !DILocation(line: 390, column: 12, scope: !1274)
!1278 = !DILocation(line: 392, column: 2, scope: !1213)
!1279 = !DILocation(line: 393, column: 1, scope: !1213)
!1280 = distinct !DISubprogram(name: "net_gethostbyname", scope: !102, file: !102, line: 398, type: !1281, isLocal: false, isDefinition: true, scopeLine: 399, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !341)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!145, !93, !463, !463}
!1283 = !DILocalVariable(name: "addr", arg: 1, scope: !1280, file: !102, line: 398, type: !93)
!1284 = !DILocation(line: 398, column: 35, scope: !1280)
!1285 = !DILocalVariable(name: "ip4", arg: 2, scope: !1280, file: !102, line: 398, type: !463)
!1286 = !DILocation(line: 398, column: 49, scope: !1280)
!1287 = !DILocalVariable(name: "ip6", arg: 3, scope: !1280, file: !102, line: 398, type: !463)
!1288 = !DILocation(line: 398, column: 62, scope: !1280)
!1289 = !DILocalVariable(name: "so", scope: !1280, file: !102, line: 400, type: !100)
!1290 = !DILocation(line: 400, column: 24, scope: !1280)
!1291 = !DILocalVariable(name: "hints", scope: !1280, file: !102, line: 401, type: !1292)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "addrinfo", file: !1293, line: 567, size: 384, align: 64, elements: !1294)
!1293 = !DIFile(filename: "/usr/include/netdb.h", directory: "/home/lichi/Desktop/irssi/task1")
!1294 = !{!1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "ai_flags", scope: !1292, file: !1293, line: 569, baseType: !145, size: 32, align: 32)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "ai_family", scope: !1292, file: !1293, line: 570, baseType: !145, size: 32, align: 32, offset: 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "ai_socktype", scope: !1292, file: !1293, line: 571, baseType: !145, size: 32, align: 32, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "ai_protocol", scope: !1292, file: !1293, line: 572, baseType: !145, size: 32, align: 32, offset: 96)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addrlen", scope: !1292, file: !1293, line: 573, baseType: !863, size: 32, align: 32, offset: 128)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addr", scope: !1292, file: !1293, line: 574, baseType: !81, size: 64, align: 64, offset: 192)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "ai_canonname", scope: !1292, file: !1293, line: 575, baseType: !75, size: 64, align: 64, offset: 256)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "ai_next", scope: !1292, file: !1293, line: 576, baseType: !1303, size: 64, align: 64, offset: 320)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64, align: 64)
!1304 = !DILocation(line: 401, column: 18, scope: !1280)
!1305 = !DILocalVariable(name: "ai", scope: !1280, file: !102, line: 401, type: !1303)
!1306 = !DILocation(line: 401, column: 26, scope: !1280)
!1307 = !DILocalVariable(name: "ailist", scope: !1280, file: !102, line: 401, type: !1303)
!1308 = !DILocation(line: 401, column: 31, scope: !1280)
!1309 = !DILocalVariable(name: "ret", scope: !1280, file: !102, line: 402, type: !145)
!1310 = !DILocation(line: 402, column: 6, scope: !1280)
!1311 = !DILocalVariable(name: "count_v4", scope: !1280, file: !102, line: 402, type: !145)
!1312 = !DILocation(line: 402, column: 11, scope: !1280)
!1313 = !DILocalVariable(name: "count_v6", scope: !1280, file: !102, line: 402, type: !145)
!1314 = !DILocation(line: 402, column: 21, scope: !1280)
!1315 = !DILocalVariable(name: "use_v4", scope: !1280, file: !102, line: 402, type: !145)
!1316 = !DILocation(line: 402, column: 31, scope: !1280)
!1317 = !DILocalVariable(name: "use_v6", scope: !1280, file: !102, line: 402, type: !145)
!1318 = !DILocation(line: 402, column: 39, scope: !1280)
!1319 = !DILocation(line: 409, column: 2, scope: !1280)
!1320 = distinct !{!1320, !1319}
!1321 = !DILocation(line: 409, column: 10, scope: !1322)
!1322 = !DILexicalBlockFile(scope: !1323, file: !102, discriminator: 1)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !102, line: 409, column: 10)
!1324 = distinct !DILexicalBlock(scope: !1280, file: !102, line: 409, column: 4)
!1325 = !DILocation(line: 409, column: 15, scope: !1322)
!1326 = !DILocation(line: 409, column: 5, scope: !1327)
!1327 = !DILexicalBlockFile(scope: !1328, file: !102, discriminator: 2)
!1328 = distinct !DILexicalBlock(scope: !1323, file: !102, line: 409, column: 3)
!1329 = !DILocation(line: 409, column: 14, scope: !1330)
!1330 = !DILexicalBlockFile(scope: !1331, file: !102, discriminator: 3)
!1331 = distinct !DILexicalBlock(scope: !1323, file: !102, line: 409, column: 12)
!1332 = !DILocation(line: 409, column: 99, scope: !1330)
!1333 = !DILocation(line: 409, column: 115, scope: !1334)
!1334 = !DILexicalBlockFile(scope: !1324, file: !102, discriminator: 4)
!1335 = !DILocation(line: 411, column: 9, scope: !1280)
!1336 = !DILocation(line: 411, column: 2, scope: !1280)
!1337 = !DILocation(line: 412, column: 9, scope: !1280)
!1338 = !DILocation(line: 412, column: 2, scope: !1280)
!1339 = !DILocation(line: 414, column: 2, scope: !1280)
!1340 = !DILocation(line: 415, column: 8, scope: !1280)
!1341 = !DILocation(line: 415, column: 20, scope: !1280)
!1342 = !DILocation(line: 416, column: 8, scope: !1280)
!1343 = !DILocation(line: 416, column: 17, scope: !1280)
!1344 = !DILocation(line: 419, column: 20, scope: !1280)
!1345 = !DILocation(line: 419, column: 8, scope: !1280)
!1346 = !DILocation(line: 419, column: 6, scope: !1280)
!1347 = !DILocation(line: 420, column: 6, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1280, file: !102, line: 420, column: 6)
!1349 = !DILocation(line: 420, column: 10, scope: !1348)
!1350 = !DILocation(line: 420, column: 6, scope: !1280)
!1351 = !DILocation(line: 421, column: 10, scope: !1348)
!1352 = !DILocation(line: 421, column: 3, scope: !1348)
!1353 = !DILocation(line: 424, column: 29, scope: !1280)
!1354 = !DILocation(line: 424, column: 18, scope: !1280)
!1355 = !DILocation(line: 425, column: 12, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1280, file: !102, line: 425, column: 2)
!1357 = !DILocation(line: 425, column: 10, scope: !1356)
!1358 = !DILocation(line: 425, column: 7, scope: !1356)
!1359 = !DILocation(line: 425, column: 20, scope: !1360)
!1360 = !DILexicalBlockFile(scope: !1361, file: !102, discriminator: 1)
!1361 = distinct !DILexicalBlock(scope: !1356, file: !102, line: 425, column: 2)
!1362 = !DILocation(line: 425, column: 23, scope: !1360)
!1363 = !DILocation(line: 425, column: 2, scope: !1360)
!1364 = !DILocation(line: 426, column: 7, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !102, line: 426, column: 7)
!1366 = distinct !DILexicalBlock(scope: !1361, file: !102, line: 425, column: 49)
!1367 = !DILocation(line: 426, column: 11, scope: !1365)
!1368 = !DILocation(line: 426, column: 21, scope: !1365)
!1369 = !DILocation(line: 426, column: 7, scope: !1366)
!1370 = !DILocation(line: 427, column: 12, scope: !1365)
!1371 = !DILocation(line: 427, column: 4, scope: !1365)
!1372 = !DILocation(line: 428, column: 12, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1365, file: !102, line: 428, column: 12)
!1374 = !DILocation(line: 428, column: 16, scope: !1373)
!1375 = !DILocation(line: 428, column: 26, scope: !1373)
!1376 = !DILocation(line: 428, column: 12, scope: !1365)
!1377 = !DILocation(line: 429, column: 12, scope: !1373)
!1378 = !DILocation(line: 429, column: 4, scope: !1373)
!1379 = !DILocation(line: 430, column: 2, scope: !1366)
!1380 = !DILocation(line: 425, column: 36, scope: !1381)
!1381 = !DILexicalBlockFile(scope: !1361, file: !102, discriminator: 2)
!1382 = !DILocation(line: 425, column: 40, scope: !1381)
!1383 = !DILocation(line: 425, column: 34, scope: !1381)
!1384 = !DILocation(line: 425, column: 2, scope: !1381)
!1385 = distinct !{!1385, !1386}
!1386 = !DILocation(line: 425, column: 2, scope: !1280)
!1387 = !DILocation(line: 432, column: 6, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1280, file: !102, line: 432, column: 6)
!1389 = !DILocation(line: 432, column: 15, scope: !1388)
!1390 = !DILocation(line: 432, column: 20, scope: !1388)
!1391 = !DILocation(line: 432, column: 23, scope: !1392)
!1392 = !DILexicalBlockFile(scope: !1388, file: !102, discriminator: 1)
!1393 = !DILocation(line: 432, column: 32, scope: !1392)
!1394 = !DILocation(line: 432, column: 6, scope: !1392)
!1395 = !DILocation(line: 433, column: 3, scope: !1388)
!1396 = !DILocation(line: 436, column: 11, scope: !1280)
!1397 = !DILocation(line: 436, column: 20, scope: !1280)
!1398 = !DILocation(line: 436, column: 11, scope: !1399)
!1399 = !DILexicalBlockFile(scope: !1280, file: !102, discriminator: 1)
!1400 = !DILocation(line: 436, column: 31, scope: !1401)
!1401 = !DILexicalBlockFile(scope: !1280, file: !102, discriminator: 2)
!1402 = !DILocation(line: 436, column: 40, scope: !1401)
!1403 = !DILocation(line: 436, column: 38, scope: !1401)
!1404 = !DILocation(line: 436, column: 11, scope: !1401)
!1405 = !DILocation(line: 436, column: 11, scope: !1406)
!1406 = !DILexicalBlockFile(scope: !1280, file: !102, discriminator: 3)
!1407 = !DILocation(line: 436, column: 9, scope: !1406)
!1408 = !DILocation(line: 437, column: 11, scope: !1280)
!1409 = !DILocation(line: 437, column: 20, scope: !1280)
!1410 = !DILocation(line: 437, column: 11, scope: !1399)
!1411 = !DILocation(line: 437, column: 31, scope: !1401)
!1412 = !DILocation(line: 437, column: 40, scope: !1401)
!1413 = !DILocation(line: 437, column: 38, scope: !1401)
!1414 = !DILocation(line: 437, column: 11, scope: !1401)
!1415 = !DILocation(line: 437, column: 11, scope: !1406)
!1416 = !DILocation(line: 437, column: 9, scope: !1406)
!1417 = !DILocation(line: 439, column: 22, scope: !1280)
!1418 = !DILocation(line: 439, column: 11, scope: !1280)
!1419 = !DILocation(line: 440, column: 12, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1280, file: !102, line: 440, column: 2)
!1421 = !DILocation(line: 440, column: 10, scope: !1420)
!1422 = !DILocation(line: 440, column: 7, scope: !1420)
!1423 = !DILocation(line: 440, column: 20, scope: !1424)
!1424 = !DILexicalBlockFile(scope: !1425, file: !102, discriminator: 1)
!1425 = distinct !DILexicalBlock(scope: !1420, file: !102, line: 440, column: 2)
!1426 = !DILocation(line: 440, column: 23, scope: !1424)
!1427 = !DILocation(line: 440, column: 2, scope: !1424)
!1428 = !DILocation(line: 441, column: 33, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1425, file: !102, line: 440, column: 49)
!1430 = !DILocation(line: 441, column: 37, scope: !1429)
!1431 = !DILocation(line: 441, column: 8, scope: !1429)
!1432 = !DILocation(line: 441, column: 6, scope: !1429)
!1433 = !DILocation(line: 443, column: 7, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1429, file: !102, line: 443, column: 7)
!1435 = !DILocation(line: 443, column: 11, scope: !1434)
!1436 = !DILocation(line: 443, column: 21, scope: !1434)
!1437 = !DILocation(line: 443, column: 7, scope: !1429)
!1438 = !DILocation(line: 444, column: 8, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !102, line: 444, column: 8)
!1440 = distinct !DILexicalBlock(scope: !1434, file: !102, line: 443, column: 32)
!1441 = !DILocation(line: 444, column: 18, scope: !1439)
!1442 = !DILocation(line: 444, column: 15, scope: !1439)
!1443 = !DILocation(line: 444, column: 8, scope: !1440)
!1444 = !DILocation(line: 445, column: 16, scope: !1439)
!1445 = !DILocation(line: 445, column: 20, scope: !1439)
!1446 = !DILocation(line: 445, column: 5, scope: !1439)
!1447 = !DILocation(line: 446, column: 33, scope: !1440)
!1448 = !DILocation(line: 447, column: 3, scope: !1440)
!1449 = !DILocation(line: 447, column: 14, scope: !1450)
!1450 = !DILexicalBlockFile(scope: !1451, file: !102, discriminator: 1)
!1451 = distinct !DILexicalBlock(scope: !1434, file: !102, line: 447, column: 14)
!1452 = !DILocation(line: 447, column: 18, scope: !1450)
!1453 = !DILocation(line: 447, column: 28, scope: !1450)
!1454 = !DILocation(line: 448, column: 8, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1456, file: !102, line: 448, column: 8)
!1456 = distinct !DILexicalBlock(scope: !1451, file: !102, line: 447, column: 40)
!1457 = !DILocation(line: 448, column: 18, scope: !1455)
!1458 = !DILocation(line: 448, column: 15, scope: !1455)
!1459 = !DILocation(line: 448, column: 8, scope: !1456)
!1460 = !DILocation(line: 449, column: 16, scope: !1455)
!1461 = !DILocation(line: 449, column: 20, scope: !1455)
!1462 = !DILocation(line: 449, column: 5, scope: !1455)
!1463 = !DILocation(line: 450, column: 12, scope: !1456)
!1464 = !DILocation(line: 451, column: 3, scope: !1456)
!1465 = !DILocation(line: 452, column: 2, scope: !1429)
!1466 = !DILocation(line: 440, column: 36, scope: !1467)
!1467 = !DILexicalBlockFile(scope: !1425, file: !102, discriminator: 2)
!1468 = !DILocation(line: 440, column: 40, scope: !1467)
!1469 = !DILocation(line: 440, column: 34, scope: !1467)
!1470 = !DILocation(line: 440, column: 2, scope: !1467)
!1471 = distinct !{!1471, !1472}
!1472 = !DILocation(line: 440, column: 2, scope: !1280)
!1473 = !DILocation(line: 453, column: 15, scope: !1280)
!1474 = !DILocation(line: 453, column: 2, scope: !1280)
!1475 = !DILocation(line: 454, column: 2, scope: !1280)
!1476 = !DILocation(line: 455, column: 1, scope: !1280)
!1477 = distinct !DISubprogram(name: "net_gethostbyaddr", scope: !102, file: !102, line: 459, type: !1478, isLocal: false, isDefinition: true, scopeLine: 460, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !341)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!145, !463, !1480}
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!1481 = !DILocalVariable(name: "ip", arg: 1, scope: !1477, file: !102, line: 459, type: !463)
!1482 = !DILocation(line: 459, column: 31, scope: !1477)
!1483 = !DILocalVariable(name: "name", arg: 2, scope: !1477, file: !102, line: 459, type: !1480)
!1484 = !DILocation(line: 459, column: 42, scope: !1477)
!1485 = !DILocalVariable(name: "so", scope: !1477, file: !102, line: 461, type: !101)
!1486 = !DILocation(line: 461, column: 23, scope: !1477)
!1487 = !DILocalVariable(name: "host_error", scope: !1477, file: !102, line: 462, type: !145)
!1488 = !DILocation(line: 462, column: 6, scope: !1477)
!1489 = !DILocalVariable(name: "hostname", scope: !1477, file: !102, line: 463, type: !1490)
!1490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 8200, align: 8, elements: !1491)
!1491 = !{!1492}
!1492 = !DISubrange(count: 1025)
!1493 = !DILocation(line: 463, column: 7, scope: !1477)
!1494 = !DILocation(line: 465, column: 2, scope: !1477)
!1495 = distinct !{!1495, !1494}
!1496 = !DILocation(line: 465, column: 10, scope: !1497)
!1497 = !DILexicalBlockFile(scope: !1498, file: !102, discriminator: 1)
!1498 = distinct !DILexicalBlock(scope: !1499, file: !102, line: 465, column: 10)
!1499 = distinct !DILexicalBlock(scope: !1477, file: !102, line: 465, column: 4)
!1500 = !DILocation(line: 465, column: 13, scope: !1497)
!1501 = !DILocation(line: 465, column: 5, scope: !1502)
!1502 = !DILexicalBlockFile(scope: !1503, file: !102, discriminator: 2)
!1503 = distinct !DILexicalBlock(scope: !1498, file: !102, line: 465, column: 3)
!1504 = !DILocation(line: 465, column: 14, scope: !1505)
!1505 = !DILexicalBlockFile(scope: !1506, file: !102, discriminator: 3)
!1506 = distinct !DILexicalBlock(scope: !1498, file: !102, line: 465, column: 12)
!1507 = !DILocation(line: 465, column: 97, scope: !1505)
!1508 = !DILocation(line: 465, column: 113, scope: !1509)
!1509 = !DILexicalBlockFile(scope: !1499, file: !102, discriminator: 4)
!1510 = !DILocation(line: 466, column: 2, scope: !1477)
!1511 = distinct !{!1511, !1510}
!1512 = !DILocation(line: 466, column: 10, scope: !1513)
!1513 = !DILexicalBlockFile(scope: !1514, file: !102, discriminator: 1)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !102, line: 466, column: 10)
!1515 = distinct !DILexicalBlock(scope: !1477, file: !102, line: 466, column: 4)
!1516 = !DILocation(line: 466, column: 15, scope: !1513)
!1517 = !DILocation(line: 466, column: 5, scope: !1518)
!1518 = !DILexicalBlockFile(scope: !1519, file: !102, discriminator: 2)
!1519 = distinct !DILexicalBlock(scope: !1514, file: !102, line: 466, column: 3)
!1520 = !DILocation(line: 466, column: 14, scope: !1521)
!1521 = !DILexicalBlockFile(scope: !1522, file: !102, discriminator: 3)
!1522 = distinct !DILexicalBlock(scope: !1514, file: !102, line: 466, column: 12)
!1523 = !DILocation(line: 466, column: 99, scope: !1521)
!1524 = !DILocation(line: 466, column: 115, scope: !1525)
!1525 = !DILexicalBlockFile(scope: !1515, file: !102, discriminator: 4)
!1526 = !DILocation(line: 468, column: 3, scope: !1477)
!1527 = !DILocation(line: 468, column: 8, scope: !1477)
!1528 = !DILocation(line: 470, column: 2, scope: !1477)
!1529 = !DILocation(line: 471, column: 18, scope: !1477)
!1530 = !DILocation(line: 471, column: 2, scope: !1477)
!1531 = !DILocation(line: 474, column: 34, scope: !1477)
!1532 = !DILocation(line: 475, column: 6, scope: !1477)
!1533 = !DILocation(line: 474, column: 22, scope: !1477)
!1534 = !DILocation(line: 474, column: 20, scope: !1477)
!1535 = !DILocation(line: 478, column: 13, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1477, file: !102, line: 478, column: 13)
!1537 = !DILocation(line: 478, column: 24, scope: !1536)
!1538 = !DILocation(line: 478, column: 13, scope: !1477)
!1539 = !DILocation(line: 479, column: 24, scope: !1536)
!1540 = !DILocation(line: 479, column: 17, scope: !1536)
!1541 = !DILocation(line: 481, column: 19, scope: !1477)
!1542 = !DILocation(line: 481, column: 10, scope: !1477)
!1543 = !DILocation(line: 481, column: 3, scope: !1477)
!1544 = !DILocation(line: 481, column: 8, scope: !1477)
!1545 = !DILocation(line: 483, column: 2, scope: !1477)
!1546 = !DILocation(line: 484, column: 1, scope: !1477)
!1547 = distinct !DISubprogram(name: "net_ip2host", scope: !102, file: !102, line: 486, type: !1548, isLocal: false, isDefinition: true, scopeLine: 487, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !341)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!145, !463, !75}
!1550 = !DILocalVariable(name: "ip", arg: 1, scope: !1547, file: !102, line: 486, type: !463)
!1551 = !DILocation(line: 486, column: 25, scope: !1547)
!1552 = !DILocalVariable(name: "host", arg: 2, scope: !1547, file: !102, line: 486, type: !75)
!1553 = !DILocation(line: 486, column: 35, scope: !1547)
!1554 = !DILocation(line: 488, column: 2, scope: !1547)
!1555 = !DILocation(line: 488, column: 10, scope: !1547)
!1556 = !DILocation(line: 489, column: 19, scope: !1547)
!1557 = !DILocation(line: 489, column: 23, scope: !1547)
!1558 = !DILocation(line: 489, column: 32, scope: !1547)
!1559 = !DILocation(line: 489, column: 36, scope: !1547)
!1560 = !DILocation(line: 489, column: 31, scope: !1547)
!1561 = !DILocation(line: 489, column: 40, scope: !1547)
!1562 = !DILocation(line: 489, column: 9, scope: !1547)
!1563 = !DILocation(line: 489, column: 2, scope: !1547)
!1564 = distinct !DISubprogram(name: "net_host2ip", scope: !102, file: !102, line: 492, type: !1565, isLocal: false, isDefinition: true, scopeLine: 493, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !341)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!145, !93, !463}
!1567 = !DILocalVariable(name: "host", arg: 1, scope: !1564, file: !102, line: 492, type: !93)
!1568 = !DILocation(line: 492, column: 29, scope: !1564)
!1569 = !DILocalVariable(name: "ip", arg: 2, scope: !1564, file: !102, line: 492, type: !463)
!1570 = !DILocation(line: 492, column: 43, scope: !1564)
!1571 = !DILocalVariable(name: "addr", scope: !1564, file: !102, line: 494, type: !179)
!1572 = !DILocation(line: 494, column: 16, scope: !1564)
!1573 = !DILocation(line: 496, column: 13, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1564, file: !102, line: 496, column: 6)
!1575 = !DILocation(line: 496, column: 6, scope: !1574)
!1576 = !DILocation(line: 496, column: 24, scope: !1574)
!1577 = !DILocation(line: 496, column: 6, scope: !1564)
!1578 = !DILocation(line: 498, column: 3, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1574, file: !102, line: 496, column: 32)
!1580 = !DILocation(line: 498, column: 7, scope: !1579)
!1581 = !DILocation(line: 498, column: 14, scope: !1579)
!1582 = !DILocation(line: 499, column: 26, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1579, file: !102, line: 499, column: 7)
!1584 = !DILocation(line: 499, column: 33, scope: !1583)
!1585 = !DILocation(line: 499, column: 37, scope: !1583)
!1586 = !DILocation(line: 499, column: 32, scope: !1583)
!1587 = !DILocation(line: 499, column: 7, scope: !1583)
!1588 = !DILocation(line: 499, column: 41, scope: !1583)
!1589 = !DILocation(line: 499, column: 7, scope: !1579)
!1590 = !DILocation(line: 500, column: 4, scope: !1583)
!1591 = !DILocation(line: 501, column: 2, scope: !1579)
!1592 = !DILocation(line: 503, column: 3, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1574, file: !102, line: 501, column: 9)
!1594 = !DILocation(line: 503, column: 7, scope: !1593)
!1595 = !DILocation(line: 503, column: 14, scope: !1593)
!1596 = !DILocation(line: 508, column: 20, scope: !1593)
!1597 = !DILocation(line: 508, column: 10, scope: !1593)
!1598 = !DILocation(line: 508, column: 8, scope: !1593)
!1599 = !DILocation(line: 509, column: 7, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1593, file: !102, line: 509, column: 7)
!1601 = !DILocation(line: 509, column: 12, scope: !1600)
!1602 = !DILocation(line: 509, column: 7, scope: !1593)
!1603 = !DILocation(line: 510, column: 4, scope: !1600)
!1604 = !DILocation(line: 512, column: 11, scope: !1593)
!1605 = !DILocation(line: 512, column: 15, scope: !1593)
!1606 = !DILocation(line: 512, column: 3, scope: !1593)
!1607 = !DILocation(line: 516, column: 2, scope: !1564)
!1608 = !DILocation(line: 517, column: 1, scope: !1564)
!1609 = distinct !DISubprogram(name: "net_geterror", scope: !102, file: !102, line: 520, type: !1610, isLocal: false, isDefinition: true, scopeLine: 521, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !341)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!145, !161}
!1612 = !DILocalVariable(name: "handle", arg: 1, scope: !1609, file: !102, line: 520, type: !161)
!1613 = !DILocation(line: 520, column: 30, scope: !1609)
!1614 = !DILocalVariable(name: "data", scope: !1609, file: !102, line: 522, type: !145)
!1615 = !DILocation(line: 522, column: 6, scope: !1609)
!1616 = !DILocalVariable(name: "len", scope: !1609, file: !102, line: 523, type: !863)
!1617 = !DILocation(line: 523, column: 12, scope: !1609)
!1618 = !DILocation(line: 525, column: 42, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1609, file: !102, line: 525, column: 6)
!1620 = !DILocation(line: 525, column: 17, scope: !1619)
!1621 = !DILocation(line: 526, column: 31, scope: !1619)
!1622 = !DILocation(line: 525, column: 6, scope: !1623)
!1623 = !DILexicalBlockFile(scope: !1619, file: !102, discriminator: 1)
!1624 = !DILocation(line: 526, column: 53, scope: !1619)
!1625 = !DILocation(line: 525, column: 6, scope: !1609)
!1626 = !DILocation(line: 527, column: 3, scope: !1619)
!1627 = !DILocation(line: 529, column: 9, scope: !1609)
!1628 = !DILocation(line: 529, column: 2, scope: !1609)
!1629 = !DILocation(line: 530, column: 1, scope: !1609)
!1630 = distinct !DISubprogram(name: "net_gethosterror", scope: !102, file: !102, line: 533, type: !1631, isLocal: false, isDefinition: true, scopeLine: 534, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !341)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!93, !145}
!1633 = !DILocalVariable(name: "error", arg: 1, scope: !1630, file: !102, line: 533, type: !145)
!1634 = !DILocation(line: 533, column: 34, scope: !1630)
!1635 = !DILocation(line: 535, column: 2, scope: !1630)
!1636 = distinct !{!1636, !1635}
!1637 = !DILocation(line: 535, column: 10, scope: !1638)
!1638 = !DILexicalBlockFile(scope: !1639, file: !102, discriminator: 1)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !102, line: 535, column: 10)
!1640 = distinct !DILexicalBlock(scope: !1630, file: !102, line: 535, column: 4)
!1641 = !DILocation(line: 535, column: 16, scope: !1638)
!1642 = !DILocation(line: 535, column: 24, scope: !1643)
!1643 = !DILexicalBlockFile(scope: !1644, file: !102, discriminator: 2)
!1644 = distinct !DILexicalBlock(scope: !1639, file: !102, line: 535, column: 22)
!1645 = !DILocation(line: 535, column: 33, scope: !1646)
!1646 = !DILexicalBlockFile(scope: !1647, file: !102, discriminator: 3)
!1647 = distinct !DILexicalBlock(scope: !1639, file: !102, line: 535, column: 31)
!1648 = !DILocation(line: 535, column: 116, scope: !1646)
!1649 = !DILocation(line: 535, column: 7, scope: !1650)
!1650 = !DILexicalBlockFile(scope: !1640, file: !102, discriminator: 4)
!1651 = !DILocation(line: 537, column: 6, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1630, file: !102, line: 537, column: 6)
!1653 = !DILocation(line: 537, column: 12, scope: !1652)
!1654 = !DILocation(line: 537, column: 6, scope: !1630)
!1655 = !DILocation(line: 538, column: 20, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1652, file: !102, line: 537, column: 26)
!1657 = !DILocation(line: 538, column: 19, scope: !1656)
!1658 = !DILocation(line: 538, column: 10, scope: !1659)
!1659 = !DILexicalBlockFile(scope: !1656, file: !102, discriminator: 1)
!1660 = !DILocation(line: 538, column: 3, scope: !1656)
!1661 = !DILocation(line: 540, column: 23, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1652, file: !102, line: 539, column: 9)
!1663 = !DILocation(line: 540, column: 10, scope: !1662)
!1664 = !DILocation(line: 540, column: 3, scope: !1662)
!1665 = !DILocation(line: 542, column: 1, scope: !1630)
!1666 = distinct !DISubprogram(name: "net_hosterror_notfound", scope: !102, file: !102, line: 546, type: !1667, isLocal: false, isDefinition: true, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !341)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!145, !145}
!1669 = !DILocalVariable(name: "error", arg: 1, scope: !1666, file: !102, line: 546, type: !145)
!1670 = !DILocation(line: 546, column: 32, scope: !1666)
!1671 = !DILocation(line: 551, column: 9, scope: !1666)
!1672 = !DILocation(line: 551, column: 15, scope: !1666)
!1673 = !DILocation(line: 551, column: 20, scope: !1666)
!1674 = !DILocation(line: 551, column: 24, scope: !1675)
!1675 = !DILexicalBlockFile(scope: !1666, file: !102, discriminator: 1)
!1676 = !DILocation(line: 551, column: 30, scope: !1675)
!1677 = !DILocation(line: 551, column: 20, scope: !1678)
!1678 = !DILexicalBlockFile(scope: !1666, file: !102, discriminator: 2)
!1679 = !DILocation(line: 551, column: 2, scope: !1678)
!1680 = distinct !DISubprogram(name: "net_getservbyport", scope: !102, file: !102, line: 556, type: !1681, isLocal: false, isDefinition: true, scopeLine: 557, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !341)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!75, !145}
!1683 = !DILocalVariable(name: "port", arg: 1, scope: !1680, file: !102, line: 556, type: !145)
!1684 = !DILocation(line: 556, column: 29, scope: !1680)
!1685 = !DILocalVariable(name: "entry", scope: !1680, file: !102, line: 558, type: !1686)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64, align: 64)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "servent", file: !1293, line: 257, size: 256, align: 64, elements: !1688)
!1688 = !{!1689, !1690, !1691, !1692}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "s_name", scope: !1687, file: !1293, line: 259, baseType: !75, size: 64, align: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "s_aliases", scope: !1687, file: !1293, line: 260, baseType: !1480, size: 64, align: 64, offset: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "s_port", scope: !1687, file: !1293, line: 261, baseType: !145, size: 32, align: 32, offset: 128)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "s_proto", scope: !1687, file: !1293, line: 262, baseType: !75, size: 64, align: 64, offset: 192)
!1693 = !DILocation(line: 558, column: 18, scope: !1680)
!1694 = !DILocation(line: 560, column: 47, scope: !1680)
!1695 = !DILocation(line: 560, column: 30, scope: !1680)
!1696 = !DILocation(line: 560, column: 24, scope: !1680)
!1697 = !DILocation(line: 560, column: 10, scope: !1698)
!1698 = !DILexicalBlockFile(scope: !1680, file: !102, discriminator: 1)
!1699 = !DILocation(line: 560, column: 8, scope: !1680)
!1700 = !DILocation(line: 561, column: 9, scope: !1680)
!1701 = !DILocation(line: 561, column: 15, scope: !1680)
!1702 = !DILocation(line: 561, column: 9, scope: !1698)
!1703 = !DILocation(line: 561, column: 31, scope: !1704)
!1704 = !DILexicalBlockFile(scope: !1680, file: !102, discriminator: 2)
!1705 = !DILocation(line: 561, column: 38, scope: !1704)
!1706 = !DILocation(line: 561, column: 9, scope: !1704)
!1707 = !DILocation(line: 561, column: 9, scope: !1708)
!1708 = !DILexicalBlockFile(scope: !1680, file: !102, discriminator: 3)
!1709 = !DILocation(line: 561, column: 2, scope: !1708)
!1710 = distinct !DISubprogram(name: "is_ipv4_address", scope: !102, file: !102, line: 564, type: !1711, isLocal: false, isDefinition: true, scopeLine: 565, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !341)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!145, !93}
!1713 = !DILocalVariable(name: "host", arg: 1, scope: !1710, file: !102, line: 564, type: !93)
!1714 = !DILocation(line: 564, column: 33, scope: !1710)
!1715 = !DILocation(line: 566, column: 2, scope: !1710)
!1716 = !DILocation(line: 566, column: 10, scope: !1717)
!1717 = !DILexicalBlockFile(scope: !1710, file: !102, discriminator: 1)
!1718 = !DILocation(line: 566, column: 9, scope: !1717)
!1719 = !DILocation(line: 566, column: 15, scope: !1717)
!1720 = !DILocation(line: 566, column: 2, scope: !1717)
!1721 = !DILocation(line: 567, column: 8, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1723, file: !102, line: 567, column: 7)
!1723 = distinct !DILexicalBlock(scope: !1710, file: !102, line: 566, column: 24)
!1724 = !DILocation(line: 567, column: 7, scope: !1722)
!1725 = !DILocation(line: 567, column: 13, scope: !1722)
!1726 = !DILocation(line: 567, column: 20, scope: !1722)
!1727 = !DILocation(line: 567, column: 47, scope: !1728)
!1728 = !DILexicalBlockFile(scope: !1722, file: !102, discriminator: 1)
!1729 = !DILocation(line: 567, column: 46, scope: !1728)
!1730 = !DILocation(line: 567, column: 23, scope: !1728)
!1731 = !DILocation(line: 567, column: 24, scope: !1728)
!1732 = !DILocation(line: 567, column: 26, scope: !1728)
!1733 = !DILocation(line: 567, column: 25, scope: !1728)
!1734 = !DILocation(line: 567, column: 27, scope: !1728)
!1735 = !DILocation(line: 567, column: 7, scope: !1728)
!1736 = !DILocation(line: 568, column: 4, scope: !1722)
!1737 = !DILocation(line: 569, column: 21, scope: !1723)
!1738 = !DILocation(line: 566, column: 2, scope: !1739)
!1739 = !DILexicalBlockFile(scope: !1710, file: !102, discriminator: 2)
!1740 = distinct !{!1740, !1715}
!1741 = !DILocation(line: 572, column: 2, scope: !1710)
!1742 = !DILocation(line: 573, column: 1, scope: !1710)
!1743 = distinct !DISubprogram(name: "is_ipv6_address", scope: !102, file: !102, line: 575, type: !1711, isLocal: false, isDefinition: true, scopeLine: 576, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !341)
!1744 = !DILocalVariable(name: "host", arg: 1, scope: !1743, file: !102, line: 575, type: !93)
!1745 = !DILocation(line: 575, column: 33, scope: !1743)
!1746 = !DILocation(line: 577, column: 2, scope: !1743)
!1747 = !DILocation(line: 577, column: 10, scope: !1748)
!1748 = !DILexicalBlockFile(scope: !1743, file: !102, discriminator: 1)
!1749 = !DILocation(line: 577, column: 9, scope: !1748)
!1750 = !DILocation(line: 577, column: 15, scope: !1748)
!1751 = !DILocation(line: 577, column: 2, scope: !1748)
!1752 = !DILocation(line: 578, column: 8, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !102, line: 578, column: 7)
!1754 = distinct !DILexicalBlock(scope: !1743, file: !102, line: 577, column: 24)
!1755 = !DILocation(line: 578, column: 7, scope: !1753)
!1756 = !DILocation(line: 578, column: 13, scope: !1753)
!1757 = !DILocation(line: 578, column: 20, scope: !1753)
!1758 = !DILocation(line: 578, column: 47, scope: !1759)
!1759 = !DILexicalBlockFile(scope: !1753, file: !102, discriminator: 1)
!1760 = !DILocation(line: 578, column: 46, scope: !1759)
!1761 = !DILocation(line: 578, column: 23, scope: !1759)
!1762 = !DILocation(line: 578, column: 24, scope: !1759)
!1763 = !DILocation(line: 578, column: 26, scope: !1759)
!1764 = !DILocation(line: 578, column: 25, scope: !1759)
!1765 = !DILocation(line: 578, column: 27, scope: !1759)
!1766 = !DILocation(line: 578, column: 7, scope: !1759)
!1767 = !DILocation(line: 579, column: 4, scope: !1753)
!1768 = !DILocation(line: 580, column: 21, scope: !1754)
!1769 = !DILocation(line: 577, column: 2, scope: !1770)
!1770 = !DILexicalBlockFile(scope: !1743, file: !102, discriminator: 2)
!1771 = distinct !{!1771, !1746}
!1772 = !DILocation(line: 583, column: 2, scope: !1743)
!1773 = !DILocation(line: 584, column: 1, scope: !1743)
