; ModuleID = './line77-servers-reconnect.o.i'
source_filename = "./line77-servers-reconnect.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
%struct._SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8* }
%struct._IPADDR = type { i16, %struct.in6_addr }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct._GIOChannel = type { i32, %struct._GIOFuncs*, i8*, %struct._GIConv*, %struct._GIConv*, i8*, i32, i64, %struct._GString*, %struct._GString*, %struct._GString*, [6 x i8], i8, i8*, i8* }
%struct._GIOFuncs = type { i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i64, i32, %struct._GError**)*, i32 (%struct._GIOChannel*, %struct._GError**)*, %struct._GSource* (%struct._GIOChannel*, i32)*, void (%struct._GIOChannel*)*, i32 (%struct._GIOChannel*, i32, %struct._GError**)*, i32 (%struct._GIOChannel*)* }
%struct._GError = type { i32, i32, i8* }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSourcePrivate = type opaque
%struct._GIConv = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._SERVER_REC = type { i32, i32, i32, %struct._SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, void (%struct._SERVER_REC*, i8*, i32)*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)* }
%struct._NET_SENDBUF_REC = type opaque
%struct._RAWLOG_REC = type opaque
%struct._GHashTable = type opaque
%struct._GTimeVal = type { i64, i64 }
%struct._CHANNEL_REC = type opaque
%struct._QUERY_REC = type opaque
%struct.RECONNECT_REC = type { i32, i64, %struct._SERVER_CONNECT_REC* }
%struct._SERVER_SETUP_REC = type { i32, i32, i8*, i16, i8*, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IPADDR*, %struct._IPADDR*, i64, i8, %struct._GHashTable* }
%struct._CHAT_PROTOCOL_REC = type { i32, i8, i8*, i8*, i8*, %struct._CHATNET_REC* ()*, %struct._SERVER_SETUP_REC* ()*, %struct._CHANNEL_SETUP_REC* ()*, %struct._SERVER_CONNECT_REC* ()*, void (%struct._SERVER_CONNECT_REC*)*, %struct._SERVER_REC* (%struct._SERVER_CONNECT_REC*)*, void (%struct._SERVER_REC*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*, i8*, i32)*, %struct._QUERY_REC* (i8*, i8*, i32)* }
%struct._CHATNET_REC = type opaque
%struct._CHANNEL_SETUP_REC = type opaque

@.str = private unnamed_addr constant [29 x i8] c"server reconnect save status\00", align 1
@__func__.server_reconnect_destroy = private unnamed_addr constant [25 x i8] c"server_reconnect_destroy\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"rec != NULL\00", align 1
@reconnects = common global %struct._GSList* null, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"server reconnect remove\00", align 1
@last_reconnect_tag = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"server_reconnect_time\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"5min\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"server_connect_timeout\00", align 1
@reconnect_timeout_tag = internal global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"server connect failed\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"server disconnected\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"event connected\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"chat protocol deinit\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"setup changed\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"rmreconns\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"reconnect\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"disconnect\00", align 1
@servers = external global %struct._GSList*, align 8
@connect_timeout = internal global i32 0, align 4
@lookup_servers = external global %struct._GSList*, align 8
@.str.16 = private unnamed_addr constant [8 x i8] c"Timeout\00", align 1
@reconnect_time = internal global i32 0, align 4
@.str.17 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@__func__.sig_reconnect = private unnamed_addr constant [14 x i8] c"sig_reconnect\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"IS_SERVER(server)\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"conn != NULL\00", align 1
@setupservers = external global %struct._GSList*, align 8
@.str.20 = private unnamed_addr constant [20 x i8] c"server connect copy\00", align 1
@__func__.server_connect_copy_skeleton = private unnamed_addr constant [29 x i8] c"server_connect_copy_skeleton\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"dest != NULL\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"SERVER CONNECT\00", align 1
@__func__.server_reconnect_add = private unnamed_addr constant [21 x i8] c"server_reconnect_add\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"IS_SERVER_CONNECT(conn)\00", align 1
@__func__.sig_connected = private unnamed_addr constant [14 x i8] c"sig_connected\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"* \00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"Reconnecting\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"command disconnect\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"error command\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"RECON-\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"server reconnect not found\00", align 1

; Function Attrs: nounwind uwtable
define void @reconnect_save_status(%struct._SERVER_CONNECT_REC*, %struct._SERVER_REC*) #0 !dbg !452 {
  %3 = alloca %struct._SERVER_CONNECT_REC*, align 8
  %4 = alloca %struct._SERVER_REC*, align 8
  store %struct._SERVER_CONNECT_REC* %0, %struct._SERVER_CONNECT_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_CONNECT_REC** %3, metadata !456, metadata !457), !dbg !458
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !459, metadata !457), !dbg !460
  %5 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !461
  %6 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %5, i32 0, i32 9, !dbg !462
  %7 = load i8*, i8** %6, align 8, !dbg !462
  call void @g_free(i8* %7), !dbg !463
  %8 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !464
  %9 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %8, i32 0, i32 6, !dbg !465
  %10 = load i8*, i8** %9, align 8, !dbg !465
  %11 = call noalias i8* @g_strdup(i8* %10), !dbg !466
  %12 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !467
  %13 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %12, i32 0, i32 9, !dbg !468
  store i8* %11, i8** %13, align 8, !dbg !469
  %14 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !470
  %15 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %14, i32 0, i32 30, !dbg !471
  %16 = load i8*, i8** %15, align 8, !dbg !471
  call void @g_free(i8* %16), !dbg !472
  %17 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !473
  %18 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %17, i32 0, i32 19, !dbg !474
  %19 = load i8, i8* %18, align 8, !dbg !474
  %20 = lshr i8 %19, 1, !dbg !474
  %21 = and i8 %20, 1, !dbg !474
  %22 = zext i8 %21 to i32, !dbg !474
  %23 = icmp ne i32 %22, 0, !dbg !473
  br i1 %23, label %25, label %24, !dbg !475

; <label>:24:                                     ; preds = %2
  br label %30, !dbg !476

; <label>:25:                                     ; preds = %2
  %26 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !478
  %27 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %26, i32 0, i32 17, !dbg !479
  %28 = load i8*, i8** %27, align 8, !dbg !479
  %29 = call noalias i8* @g_strdup(i8* %28), !dbg !480
  br label %30, !dbg !481

; <label>:30:                                     ; preds = %25, %24
  %31 = phi i8* [ null, %24 ], [ %29, %25 ], !dbg !483
  %32 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !485
  %33 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %32, i32 0, i32 30, !dbg !486
  store i8* %31, i8** %33, align 8, !dbg !487
  %34 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !488
  %35 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %34, i32 0, i32 8, !dbg !490
  %36 = load i8, i8* %35, align 8, !dbg !490
  %37 = and i8 %36, 1, !dbg !490
  %38 = zext i8 %37 to i32, !dbg !490
  %39 = icmp ne i32 %38, 0, !dbg !488
  br i1 %39, label %65, label %40, !dbg !491

; <label>:40:                                     ; preds = %30
  %41 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !492
  %42 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %41, i32 0, i32 29, !dbg !494
  %43 = load i8*, i8** %42, align 8, !dbg !494
  call void @g_free(i8* %43), !dbg !495
  %44 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !496
  %45 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %44, i32 0, i32 3, !dbg !497
  %46 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %45, align 8, !dbg !497
  %47 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %46, i32 0, i32 28, !dbg !498
  %48 = load i8, i8* %47, align 8, !dbg !498
  %49 = lshr i8 %48, 2, !dbg !498
  %50 = and i8 %49, 1, !dbg !498
  %51 = zext i8 %50 to i32, !dbg !498
  %52 = icmp ne i32 %51, 0, !dbg !496
  br i1 %52, label %53, label %54, !dbg !496

; <label>:53:                                     ; preds = %40
  br label %61, !dbg !499

; <label>:54:                                     ; preds = %40
  %55 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !501
  %56 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %55, i32 0, i32 3, !dbg !502
  %57 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %56, align 8, !dbg !502
  %58 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %57, i32 0, i32 29, !dbg !503
  %59 = load i8*, i8** %58, align 8, !dbg !503
  %60 = call noalias i8* @g_strdup(i8* %59), !dbg !504
  br label %61, !dbg !505

; <label>:61:                                     ; preds = %54, %53
  %62 = phi i8* [ null, %53 ], [ %60, %54 ], !dbg !507
  %63 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !509
  %64 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %63, i32 0, i32 29, !dbg !510
  store i8* %62, i8** %64, align 8, !dbg !511
  br label %65, !dbg !512

; <label>:65:                                     ; preds = %61, %30
  %66 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !513
  %67 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !514
  %68 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0), i32 2, %struct._SERVER_CONNECT_REC* %66, %struct._SERVER_REC* %67), !dbg !515
  ret void, !dbg !516
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @g_free(i8*) #2

declare noalias i8* @g_strdup(i8*) #2

declare i32 @signal_emit(i8*, i32, ...) #2

; Function Attrs: nounwind uwtable
define void @server_reconnect_destroy(%struct.RECONNECT_REC*) #0 !dbg !517 {
  %2 = alloca %struct.RECONNECT_REC*, align 8
  store %struct.RECONNECT_REC* %0, %struct.RECONNECT_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.RECONNECT_REC** %2, metadata !520, metadata !457), !dbg !521
  br label %3, !dbg !522, !llvm.loop !523

; <label>:3:                                      ; preds = %1
  %4 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %2, align 8, !dbg !524
  %5 = icmp ne %struct.RECONNECT_REC* %4, null, !dbg !528
  br i1 %5, label %6, label %7, !dbg !524

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !529

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.server_reconnect_destroy, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0)), !dbg !532
  br label %24, !dbg !535

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !536

; <label>:9:                                      ; preds = %8
  %10 = load %struct._GSList*, %struct._GSList** @reconnects, align 8, !dbg !538
  %11 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %2, align 8, !dbg !539
  %12 = bitcast %struct.RECONNECT_REC* %11 to i8*, !dbg !539
  %13 = call %struct._GSList* @g_slist_remove(%struct._GSList* %10, i8* %12), !dbg !540
  store %struct._GSList* %13, %struct._GSList** @reconnects, align 8, !dbg !541
  %14 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %2, align 8, !dbg !542
  %15 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0), i32 1, %struct.RECONNECT_REC* %14), !dbg !543
  %16 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %2, align 8, !dbg !544
  %17 = getelementptr inbounds %struct.RECONNECT_REC, %struct.RECONNECT_REC* %16, i32 0, i32 2, !dbg !545
  %18 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %17, align 8, !dbg !545
  call void @server_connect_unref(%struct._SERVER_CONNECT_REC* %18), !dbg !546
  %19 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %2, align 8, !dbg !547
  %20 = bitcast %struct.RECONNECT_REC* %19 to i8*, !dbg !547
  call void @g_free(i8* %20), !dbg !548
  %21 = load %struct._GSList*, %struct._GSList** @reconnects, align 8, !dbg !549
  %22 = icmp eq %struct._GSList* %21, null, !dbg !551
  br i1 %22, label %23, label %24, !dbg !552

; <label>:23:                                     ; preds = %9
  store i32 0, i32* @last_reconnect_tag, align 4, !dbg !553
  br label %24, !dbg !554

; <label>:24:                                     ; preds = %7, %23, %9
  ret void, !dbg !555
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

declare void @server_connect_unref(%struct._SERVER_CONNECT_REC*) #2

; Function Attrs: nounwind uwtable
define void @servers_reconnect_init() #0 !dbg !556 {
  call void @settings_add_time_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0)), !dbg !557
  call void @settings_add_time_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0)), !dbg !558
  store %struct._GSList* null, %struct._GSList** @reconnects, align 8, !dbg !559
  store i32 0, i32* @last_reconnect_tag, align 4, !dbg !560
  %1 = call i32 @g_timeout_add(i32 1000, i32 (i8*)* bitcast (i32 ()* @server_reconnect_timeout to i32 (i8*)*), i8* null), !dbg !561
  store i32 %1, i32* @reconnect_timeout_tag, align 4, !dbg !562
  call void @read_settings(), !dbg !563
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_reconnect to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !564
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_reconnect to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !565
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_connected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !566
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHAT_PROTOCOL_REC*)* @sig_chat_protocol_deinit to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !567
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !568
  call void @command_bind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_rmreconns to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !569
  call void @command_bind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*)* @cmd_reconnect to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !570
  call void @command_bind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*)* @cmd_disconnect to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !571
  ret void, !dbg !572
}

declare void @settings_add_time_module(i8*, i8*, i8*, i8*) #2

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @server_reconnect_timeout() #0 !dbg !573 {
  %1 = alloca %struct._SERVER_CONNECT_REC*, align 8
  %2 = alloca %struct._GSList*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct._SERVER_REC*, align 8
  %7 = alloca %struct._SERVER_REC*, align 8
  %8 = alloca %struct.RECONNECT_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_CONNECT_REC** %1, metadata !576, metadata !457), !dbg !577
  call void @llvm.dbg.declare(metadata %struct._GSList** %2, metadata !578, metadata !457), !dbg !579
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !580, metadata !457), !dbg !581
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !582, metadata !457), !dbg !583
  call void @llvm.dbg.declare(metadata i64* %5, metadata !584, metadata !457), !dbg !585
  %9 = call i64 @time(i64* null) #6, !dbg !586
  store i64 %9, i64* %5, align 8, !dbg !587
  %10 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !588
  store %struct._GSList* %10, %struct._GSList** %3, align 8, !dbg !590
  br label %11, !dbg !591

; <label>:11:                                     ; preds = %48, %0
  %12 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !592
  %13 = icmp ne %struct._GSList* %12, null, !dbg !595
  br i1 %13, label %14, label %50, !dbg !596

; <label>:14:                                     ; preds = %11
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %6, metadata !597, metadata !457), !dbg !599
  %15 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !600
  %16 = getelementptr inbounds %struct._GSList, %struct._GSList* %15, i32 0, i32 0, !dbg !601
  %17 = load i8*, i8** %16, align 8, !dbg !601
  %18 = bitcast i8* %17 to %struct._SERVER_REC*, !dbg !600
  store %struct._SERVER_REC* %18, %struct._SERVER_REC** %6, align 8, !dbg !599
  %19 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !602
  %20 = getelementptr inbounds %struct._GSList, %struct._GSList* %19, i32 0, i32 1, !dbg !603
  %21 = load %struct._GSList*, %struct._GSList** %20, align 8, !dbg !603
  store %struct._GSList* %21, %struct._GSList** %4, align 8, !dbg !604
  %22 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !605
  %23 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %22, i32 0, i32 8, !dbg !607
  %24 = load i8, i8* %23, align 8, !dbg !607
  %25 = and i8 %24, 1, !dbg !607
  %26 = zext i8 %25 to i32, !dbg !607
  %27 = icmp ne i32 %26, 0, !dbg !605
  br i1 %27, label %47, label %28, !dbg !608

; <label>:28:                                     ; preds = %14
  %29 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !609
  %30 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %29, i32 0, i32 4, !dbg !610
  %31 = load i64, i64* %30, align 8, !dbg !610
  %32 = load i32, i32* @connect_timeout, align 4, !dbg !611
  %33 = sext i32 %32 to i64, !dbg !611
  %34 = add nsw i64 %31, %33, !dbg !612
  %35 = load i64, i64* %5, align 8, !dbg !613
  %36 = icmp slt i64 %34, %35, !dbg !614
  br i1 %36, label %37, label %47, !dbg !615

; <label>:37:                                     ; preds = %28
  %38 = load i32, i32* @connect_timeout, align 4, !dbg !616
  %39 = icmp sgt i32 %38, 0, !dbg !617
  br i1 %39, label %40, label %47, !dbg !618

; <label>:40:                                     ; preds = %37
  %41 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !620
  %42 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %41, i32 0, i32 8, !dbg !622
  %43 = load i8, i8* %42, align 8, !dbg !623
  %44 = and i8 %43, -5, !dbg !623
  %45 = or i8 %44, 4, !dbg !623
  store i8 %45, i8* %42, align 8, !dbg !623
  %46 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !624
  call void @server_disconnect(%struct._SERVER_REC* %46), !dbg !625
  br label %47, !dbg !626

; <label>:47:                                     ; preds = %40, %37, %28, %14
  br label %48, !dbg !627

; <label>:48:                                     ; preds = %47
  %49 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !628
  store %struct._GSList* %49, %struct._GSList** %3, align 8, !dbg !630
  br label %11, !dbg !631, !llvm.loop !632

; <label>:50:                                     ; preds = %11
  %51 = load %struct._GSList*, %struct._GSList** @lookup_servers, align 8, !dbg !634
  store %struct._GSList* %51, %struct._GSList** %3, align 8, !dbg !636
  br label %52, !dbg !637

; <label>:52:                                     ; preds = %94, %50
  %53 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !638
  %54 = icmp ne %struct._GSList* %53, null, !dbg !641
  br i1 %54, label %55, label %96, !dbg !642

; <label>:55:                                     ; preds = %52
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %7, metadata !643, metadata !457), !dbg !645
  %56 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !646
  %57 = getelementptr inbounds %struct._GSList, %struct._GSList* %56, i32 0, i32 0, !dbg !647
  %58 = load i8*, i8** %57, align 8, !dbg !647
  %59 = bitcast i8* %58 to %struct._SERVER_REC*, !dbg !646
  store %struct._SERVER_REC* %59, %struct._SERVER_REC** %7, align 8, !dbg !645
  %60 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !648
  %61 = getelementptr inbounds %struct._GSList, %struct._GSList* %60, i32 0, i32 1, !dbg !649
  %62 = load %struct._GSList*, %struct._GSList** %61, align 8, !dbg !649
  store %struct._GSList* %62, %struct._GSList** %4, align 8, !dbg !650
  %63 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !651
  %64 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %63, i32 0, i32 4, !dbg !653
  %65 = load i64, i64* %64, align 8, !dbg !653
  %66 = load i32, i32* @connect_timeout, align 4, !dbg !654
  %67 = sext i32 %66 to i64, !dbg !654
  %68 = add nsw i64 %65, %67, !dbg !655
  %69 = load i64, i64* %5, align 8, !dbg !656
  %70 = icmp slt i64 %68, %69, !dbg !657
  br i1 %70, label %71, label %93, !dbg !658

; <label>:71:                                     ; preds = %55
  %72 = load i32, i32* @connect_timeout, align 4, !dbg !659
  %73 = icmp sgt i32 %72, 0, !dbg !660
  br i1 %73, label %74, label %93, !dbg !661

; <label>:74:                                     ; preds = %71
  %75 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !663
  %76 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %75, i32 0, i32 12, !dbg !666
  %77 = load i32, i32* %76, align 8, !dbg !666
  %78 = icmp ne i32 %77, -1, !dbg !667
  br i1 %78, label %79, label %86, !dbg !668

; <label>:79:                                     ; preds = %74
  %80 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !669
  %81 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %80, i32 0, i32 12, !dbg !671
  %82 = load i32, i32* %81, align 8, !dbg !671
  %83 = call i32 @g_source_remove(i32 %82), !dbg !672
  %84 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !673
  %85 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %84, i32 0, i32 12, !dbg !674
  store i32 -1, i32* %85, align 8, !dbg !675
  br label %86, !dbg !676

; <label>:86:                                     ; preds = %79, %74
  %87 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !677
  %88 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %87, i32 0, i32 8, !dbg !678
  %89 = load i8, i8* %88, align 8, !dbg !679
  %90 = and i8 %89, -5, !dbg !679
  %91 = or i8 %90, 4, !dbg !679
  store i8 %91, i8* %88, align 8, !dbg !679
  %92 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !680
  call void @server_connect_failed(%struct._SERVER_REC* %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0)), !dbg !681
  br label %93, !dbg !682

; <label>:93:                                     ; preds = %86, %71, %55
  br label %94, !dbg !683

; <label>:94:                                     ; preds = %93
  %95 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !684
  store %struct._GSList* %95, %struct._GSList** %3, align 8, !dbg !686
  br label %52, !dbg !687, !llvm.loop !688

; <label>:96:                                     ; preds = %52
  %97 = load %struct._GSList*, %struct._GSList** @reconnects, align 8, !dbg !690
  %98 = call %struct._GSList* @g_slist_copy(%struct._GSList* %97), !dbg !691
  store %struct._GSList* %98, %struct._GSList** %2, align 8, !dbg !692
  %99 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !693
  store %struct._GSList* %99, %struct._GSList** %3, align 8, !dbg !695
  br label %100, !dbg !696

; <label>:100:                                    ; preds = %130, %96
  %101 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !697
  %102 = icmp ne %struct._GSList* %101, null, !dbg !700
  br i1 %102, label %103, label %134, !dbg !701

; <label>:103:                                    ; preds = %100
  call void @llvm.dbg.declare(metadata %struct.RECONNECT_REC** %8, metadata !702, metadata !457), !dbg !704
  %104 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !705
  %105 = getelementptr inbounds %struct._GSList, %struct._GSList* %104, i32 0, i32 0, !dbg !706
  %106 = load i8*, i8** %105, align 8, !dbg !706
  %107 = bitcast i8* %106 to %struct.RECONNECT_REC*, !dbg !705
  store %struct.RECONNECT_REC* %107, %struct.RECONNECT_REC** %8, align 8, !dbg !704
  %108 = load %struct._GSList*, %struct._GSList** @reconnects, align 8, !dbg !707
  %109 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %8, align 8, !dbg !709
  %110 = bitcast %struct.RECONNECT_REC* %109 to i8*, !dbg !709
  %111 = call %struct._GSList* @g_slist_find(%struct._GSList* %108, i8* %110), !dbg !710
  %112 = icmp eq %struct._GSList* %111, null, !dbg !711
  br i1 %112, label %113, label %114, !dbg !712

; <label>:113:                                    ; preds = %103
  br label %130, !dbg !713

; <label>:114:                                    ; preds = %103
  %115 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %8, align 8, !dbg !714
  %116 = getelementptr inbounds %struct.RECONNECT_REC, %struct.RECONNECT_REC* %115, i32 0, i32 1, !dbg !716
  %117 = load i64, i64* %116, align 8, !dbg !716
  %118 = load i64, i64* %5, align 8, !dbg !717
  %119 = icmp sle i64 %117, %118, !dbg !718
  br i1 %119, label %120, label %129, !dbg !719

; <label>:120:                                    ; preds = %114
  %121 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %8, align 8, !dbg !720
  %122 = getelementptr inbounds %struct.RECONNECT_REC, %struct.RECONNECT_REC* %121, i32 0, i32 2, !dbg !722
  %123 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %122, align 8, !dbg !722
  store %struct._SERVER_CONNECT_REC* %123, %struct._SERVER_CONNECT_REC** %1, align 8, !dbg !723
  %124 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %1, align 8, !dbg !724
  call void @server_connect_ref(%struct._SERVER_CONNECT_REC* %124), !dbg !725
  %125 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %8, align 8, !dbg !726
  call void @server_reconnect_destroy(%struct.RECONNECT_REC* %125), !dbg !727
  %126 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %1, align 8, !dbg !728
  %127 = call %struct._SERVER_REC* @server_connect(%struct._SERVER_CONNECT_REC* %126), !dbg !729
  %128 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %1, align 8, !dbg !730
  call void @server_connect_unref(%struct._SERVER_CONNECT_REC* %128), !dbg !731
  br label %129, !dbg !732

; <label>:129:                                    ; preds = %120, %114
  br label %130, !dbg !733

; <label>:130:                                    ; preds = %129, %113
  %131 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !734
  %132 = getelementptr inbounds %struct._GSList, %struct._GSList* %131, i32 0, i32 1, !dbg !736
  %133 = load %struct._GSList*, %struct._GSList** %132, align 8, !dbg !736
  store %struct._GSList* %133, %struct._GSList** %3, align 8, !dbg !737
  br label %100, !dbg !738, !llvm.loop !739

; <label>:134:                                    ; preds = %100
  %135 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !741
  call void @g_slist_free(%struct._GSList* %135), !dbg !742
  ret i32 1, !dbg !743
}

; Function Attrs: nounwind uwtable
define internal void @read_settings() #0 !dbg !744 {
  %1 = call i32 @settings_get_time(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0)), !dbg !745
  %2 = sdiv i32 %1, 1000, !dbg !746
  store i32 %2, i32* @reconnect_time, align 4, !dbg !747
  %3 = call i32 @settings_get_time(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0)), !dbg !748
  %4 = sdiv i32 %3, 1000, !dbg !749
  store i32 %4, i32* @connect_timeout, align 4, !dbg !750
  ret void, !dbg !751
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_reconnect(%struct._SERVER_REC*) #0 !dbg !752 {
  %2 = alloca %struct._SERVER_REC*, align 8
  %3 = alloca %struct._SERVER_CONNECT_REC*, align 8
  %4 = alloca %struct._SERVER_SETUP_REC*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct._SERVER_SETUP_REC*, align 8
  %10 = alloca %struct._SERVER_SETUP_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %2, metadata !755, metadata !457), !dbg !756
  call void @llvm.dbg.declare(metadata %struct._SERVER_CONNECT_REC** %3, metadata !757, metadata !457), !dbg !758
  call void @llvm.dbg.declare(metadata %struct._SERVER_SETUP_REC** %4, metadata !759, metadata !457), !dbg !795
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !796, metadata !457), !dbg !797
  call void @llvm.dbg.declare(metadata i32* %6, metadata !798, metadata !457), !dbg !799
  call void @llvm.dbg.declare(metadata i32* %7, metadata !800, metadata !457), !dbg !801
  call void @llvm.dbg.declare(metadata i64* %8, metadata !802, metadata !457), !dbg !803
  br label %11, !dbg !804, !llvm.loop !805

; <label>:11:                                     ; preds = %1
  %12 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !806
  %13 = bitcast %struct._SERVER_REC* %12 to i8*, !dbg !806
  %14 = call i8* @module_check_cast(i8* %13, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)), !dbg !810
  %15 = bitcast i8* %14 to %struct._SERVER_REC*, !dbg !811
  %16 = icmp ne %struct._SERVER_REC* %15, null, !dbg !811
  br i1 %16, label %17, label %18, !dbg !812

; <label>:17:                                     ; preds = %11
  br i1 false, label %20, label %19, !dbg !813

; <label>:18:                                     ; preds = %11
  br i1 false, label %19, label %20, !dbg !815

; <label>:19:                                     ; preds = %18, %17
  br label %21, !dbg !817

; <label>:20:                                     ; preds = %18, %17
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.sig_reconnect, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0)), !dbg !820
  br label %395, !dbg !823

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !824

; <label>:22:                                     ; preds = %21
  %23 = load i32, i32* @reconnect_time, align 4, !dbg !826
  %24 = icmp eq i32 %23, -1, !dbg !828
  br i1 %24, label %56, label %25, !dbg !829

; <label>:25:                                     ; preds = %22
  %26 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !830
  %27 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %26, i32 0, i32 8, !dbg !832
  %28 = load i8, i8* %27, align 8, !dbg !832
  %29 = lshr i8 %28, 2, !dbg !832
  %30 = and i8 %29, 1, !dbg !832
  %31 = zext i8 %30 to i32, !dbg !832
  %32 = icmp ne i32 %31, 0, !dbg !833
  br i1 %32, label %33, label %56, !dbg !834

; <label>:33:                                     ; preds = %25
  %34 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !835
  %35 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %34, i32 0, i32 8, !dbg !837
  %36 = load i8, i8* %35, align 8, !dbg !837
  %37 = lshr i8 %36, 4, !dbg !837
  %38 = and i8 %37, 1, !dbg !837
  %39 = zext i8 %38 to i32, !dbg !837
  %40 = icmp ne i32 %39, 0, !dbg !838
  br i1 %40, label %56, label %41, !dbg !839

; <label>:41:                                     ; preds = %33
  %42 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !840
  %43 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %42, i32 0, i32 3, !dbg !842
  %44 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %43, align 8, !dbg !842
  %45 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %44, i32 0, i32 12, !dbg !843
  %46 = load i8*, i8** %45, align 8, !dbg !843
  %47 = icmp ne i8* %46, null, !dbg !844
  br i1 %47, label %57, label %48, !dbg !845

; <label>:48:                                     ; preds = %41
  %49 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !846
  %50 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %49, i32 0, i32 19, !dbg !848
  %51 = load i8, i8* %50, align 8, !dbg !848
  %52 = lshr i8 %51, 2, !dbg !848
  %53 = and i8 %52, 1, !dbg !848
  %54 = zext i8 %53 to i32, !dbg !848
  %55 = icmp ne i32 %54, 0, !dbg !849
  br i1 %55, label %56, label %57, !dbg !850

; <label>:56:                                     ; preds = %48, %33, %25, %22
  br label %395, !dbg !851

; <label>:57:                                     ; preds = %48, %41
  %58 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !852
  %59 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %58, i32 0, i32 3, !dbg !853
  %60 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %59, align 8, !dbg !853
  %61 = call %struct._SERVER_CONNECT_REC* @server_connect_copy_skeleton(%struct._SERVER_CONNECT_REC* %60, i32 0), !dbg !854
  store %struct._SERVER_CONNECT_REC* %61, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !855
  br label %62, !dbg !856, !llvm.loop !857

; <label>:62:                                     ; preds = %57
  %63 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !858
  %64 = icmp ne %struct._SERVER_CONNECT_REC* %63, null, !dbg !862
  br i1 %64, label %65, label %66, !dbg !858

; <label>:65:                                     ; preds = %62
  br label %67, !dbg !863

; <label>:66:                                     ; preds = %62
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.sig_reconnect, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0)), !dbg !866
  br label %395, !dbg !869

; <label>:67:                                     ; preds = %65
  br label %68, !dbg !870

; <label>:68:                                     ; preds = %67
  %69 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !872
  %70 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %69, i32 0, i32 8, !dbg !874
  %71 = load i8, i8* %70, align 8, !dbg !874
  %72 = and i8 %71, 1, !dbg !874
  %73 = zext i8 %72 to i32, !dbg !874
  %74 = icmp ne i32 %73, 0, !dbg !872
  br i1 %74, label %75, label %83, !dbg !875

; <label>:75:                                     ; preds = %68
  %76 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !876
  %77 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %76, i32 0, i32 28, !dbg !878
  %78 = load i8, i8* %77, align 8, !dbg !879
  %79 = and i8 %78, -2, !dbg !879
  %80 = or i8 %79, 1, !dbg !879
  store i8 %80, i8* %77, align 8, !dbg !879
  %81 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !880
  %82 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !881
  call void @reconnect_save_status(%struct._SERVER_CONNECT_REC* %81, %struct._SERVER_REC* %82), !dbg !882
  br label %83, !dbg !883

; <label>:83:                                     ; preds = %75, %68
  %84 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !884
  %85 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %84, i32 0, i32 3, !dbg !885
  %86 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %85, align 8, !dbg !885
  %87 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %86, i32 0, i32 10, !dbg !886
  %88 = load i8*, i8** %87, align 8, !dbg !886
  %89 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !887
  %90 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %89, i32 0, i32 3, !dbg !888
  %91 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %90, align 8, !dbg !888
  %92 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %91, i32 0, i32 11, !dbg !889
  %93 = load i32, i32* %92, align 8, !dbg !889
  %94 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !890
  %95 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %94, i32 0, i32 3, !dbg !891
  %96 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %95, align 8, !dbg !891
  %97 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %96, i32 0, i32 12, !dbg !892
  %98 = load i8*, i8** %97, align 8, !dbg !892
  %99 = call %struct._SERVER_SETUP_REC* @server_setup_find(i8* %88, i32 %93, i8* %98), !dbg !893
  store %struct._SERVER_SETUP_REC* %99, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !894
  %100 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !895
  %101 = icmp ne %struct._SERVER_SETUP_REC* %100, null, !dbg !897
  br i1 %101, label %102, label %164, !dbg !898

; <label>:102:                                    ; preds = %83
  %103 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !899
  %104 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %103, i32 0, i32 4, !dbg !901
  %105 = load i64, i64* %104, align 8, !dbg !901
  %106 = icmp eq i64 %105, 0, !dbg !902
  br i1 %106, label %107, label %109, !dbg !899

; <label>:107:                                    ; preds = %102
  %108 = call i64 @time(i64* null) #6, !dbg !903
  br label %113, !dbg !904

; <label>:109:                                    ; preds = %102
  %110 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !906
  %111 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %110, i32 0, i32 4, !dbg !907
  %112 = load i64, i64* %111, align 8, !dbg !907
  br label %113, !dbg !908

; <label>:113:                                    ; preds = %109, %107
  %114 = phi i64 [ %108, %107 ], [ %112, %109 ], !dbg !910
  %115 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !912
  %116 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %115, i32 0, i32 20, !dbg !913
  store i64 %114, i64* %116, align 8, !dbg !914
  %117 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !915
  %118 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %117, i32 0, i32 8, !dbg !916
  %119 = load i8, i8* %118, align 8, !dbg !916
  %120 = and i8 %119, 1, !dbg !916
  %121 = zext i8 %120 to i32, !dbg !916
  %122 = icmp ne i32 %121, 0, !dbg !917
  %123 = xor i1 %122, true, !dbg !917
  %124 = zext i1 %123 to i32, !dbg !917
  %125 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !918
  %126 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %125, i32 0, i32 21, !dbg !919
  %127 = trunc i32 %124 to i8, !dbg !920
  %128 = load i8, i8* %126, align 8, !dbg !920
  %129 = and i8 %127, 1, !dbg !920
  %130 = shl i8 %129, 2, !dbg !920
  %131 = and i8 %128, -5, !dbg !920
  %132 = or i8 %131, %130, !dbg !920
  store i8 %132, i8* %126, align 8, !dbg !920
  %133 = zext i8 %129 to i32, !dbg !920
  %134 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !921
  %135 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %134, i32 0, i32 19, !dbg !922
  %136 = load i8, i8* %135, align 8, !dbg !922
  %137 = lshr i8 %136, 2, !dbg !922
  %138 = and i8 %137, 1, !dbg !922
  %139 = zext i8 %138 to i32, !dbg !922
  %140 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !923
  %141 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %140, i32 0, i32 21, !dbg !924
  %142 = trunc i32 %139 to i8, !dbg !925
  %143 = load i8, i8* %141, align 8, !dbg !925
  %144 = and i8 %142, 1, !dbg !925
  %145 = shl i8 %144, 3, !dbg !925
  %146 = and i8 %143, -9, !dbg !925
  %147 = or i8 %146, %145, !dbg !925
  store i8 %147, i8* %141, align 8, !dbg !925
  %148 = zext i8 %144 to i32, !dbg !925
  %149 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !926
  %150 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %149, i32 0, i32 19, !dbg !927
  %151 = load i8, i8* %150, align 8, !dbg !927
  %152 = lshr i8 %151, 3, !dbg !927
  %153 = and i8 %152, 1, !dbg !927
  %154 = zext i8 %153 to i32, !dbg !927
  %155 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !928
  %156 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %155, i32 0, i32 21, !dbg !929
  %157 = trunc i32 %154 to i8, !dbg !930
  %158 = load i8, i8* %156, align 8, !dbg !930
  %159 = and i8 %157, 1, !dbg !930
  %160 = shl i8 %159, 4, !dbg !930
  %161 = and i8 %158, -17, !dbg !930
  %162 = or i8 %161, %160, !dbg !930
  store i8 %162, i8* %156, align 8, !dbg !930
  %163 = zext i8 %159 to i32, !dbg !930
  br label %164, !dbg !931

; <label>:164:                                    ; preds = %113, %83
  %165 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !932
  %166 = icmp eq %struct._SERVER_SETUP_REC* %165, null, !dbg !934
  br i1 %166, label %172, label %167, !dbg !935

; <label>:167:                                    ; preds = %164
  %168 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !936
  %169 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %168, i32 0, i32 12, !dbg !938
  %170 = load i8*, i8** %169, align 8, !dbg !938
  %171 = icmp eq i8* %170, null, !dbg !939
  br i1 %171, label %172, label %232, !dbg !940

; <label>:172:                                    ; preds = %167, %164
  %173 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !941
  %174 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %173, i32 0, i32 3, !dbg !943
  %175 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %174, align 8, !dbg !943
  %176 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %175, i32 0, i32 8, !dbg !944
  %177 = load i16, i16* %176, align 8, !dbg !944
  %178 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !945
  %179 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %178, i32 0, i32 8, !dbg !946
  store i16 %177, i16* %179, align 8, !dbg !947
  %180 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !948
  %181 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %180, i32 0, i32 3, !dbg !949
  %182 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %181, align 8, !dbg !949
  %183 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %182, i32 0, i32 10, !dbg !950
  %184 = load i8*, i8** %183, align 8, !dbg !950
  %185 = call noalias i8* @g_strdup(i8* %184), !dbg !951
  %186 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !952
  %187 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %186, i32 0, i32 10, !dbg !953
  store i8* %185, i8** %187, align 8, !dbg !954
  %188 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !955
  %189 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %188, i32 0, i32 3, !dbg !956
  %190 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %189, align 8, !dbg !956
  %191 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %190, i32 0, i32 11, !dbg !957
  %192 = load i32, i32* %191, align 8, !dbg !957
  %193 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !958
  %194 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %193, i32 0, i32 11, !dbg !959
  store i32 %192, i32* %194, align 8, !dbg !960
  %195 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !961
  %196 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %195, i32 0, i32 3, !dbg !962
  %197 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %196, align 8, !dbg !962
  %198 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %197, i32 0, i32 15, !dbg !963
  %199 = load i8*, i8** %198, align 8, !dbg !963
  %200 = call noalias i8* @g_strdup(i8* %199), !dbg !964
  %201 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !965
  %202 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %201, i32 0, i32 15, !dbg !966
  store i8* %200, i8** %202, align 8, !dbg !967
  %203 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !968
  %204 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %203, i32 0, i32 10, !dbg !970
  %205 = load i8*, i8** %204, align 8, !dbg !970
  %206 = call i8* @strchr(i8* %205, i32 47) #7, !dbg !971
  %207 = icmp ne i8* %206, null, !dbg !972
  br i1 %207, label %208, label %214, !dbg !973

; <label>:208:                                    ; preds = %172
  %209 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !974
  %210 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %209, i32 0, i32 28, !dbg !975
  %211 = load i8, i8* %210, align 8, !dbg !976
  %212 = and i8 %211, -17, !dbg !976
  %213 = or i8 %212, 16, !dbg !976
  store i8 %213, i8* %210, align 8, !dbg !976
  br label %214, !dbg !974

; <label>:214:                                    ; preds = %208, %172
  %215 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !977
  %216 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !978
  %217 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %216, i32 0, i32 4, !dbg !979
  %218 = load i64, i64* %217, align 8, !dbg !979
  %219 = icmp eq i64 %218, 0, !dbg !980
  br i1 %219, label %220, label %222, !dbg !978

; <label>:220:                                    ; preds = %214
  %221 = call i64 @time(i64* null) #6, !dbg !981
  br label %226, !dbg !983

; <label>:222:                                    ; preds = %214
  %223 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !984
  %224 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %223, i32 0, i32 4, !dbg !985
  %225 = load i64, i64* %224, align 8, !dbg !985
  br label %226, !dbg !986

; <label>:226:                                    ; preds = %222, %220
  %227 = phi i64 [ %221, %220 ], [ %225, %222 ], !dbg !988
  %228 = load i32, i32* @reconnect_time, align 4, !dbg !990
  %229 = sext i32 %228 to i64, !dbg !990
  %230 = add nsw i64 %227, %229, !dbg !991
  call void @server_reconnect_add(%struct._SERVER_CONNECT_REC* %215, i64 %230), !dbg !992
  %231 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !993
  call void @server_connect_unref(%struct._SERVER_CONNECT_REC* %231), !dbg !994
  br label %395, !dbg !995

; <label>:232:                                    ; preds = %167
  %233 = call i64 @time(i64* null) #6, !dbg !996
  store i64 %233, i64* %8, align 8, !dbg !997
  %234 = load %struct._GSList*, %struct._GSList** @setupservers, align 8, !dbg !998
  store %struct._GSList* %234, %struct._GSList** %5, align 8, !dbg !1000
  br label %235, !dbg !1001

; <label>:235:                                    ; preds = %300, %232
  %236 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1002
  %237 = icmp ne %struct._GSList* %236, null, !dbg !1005
  br i1 %237, label %238, label %304, !dbg !1006

; <label>:238:                                    ; preds = %235
  call void @llvm.dbg.declare(metadata %struct._SERVER_SETUP_REC** %9, metadata !1007, metadata !457), !dbg !1009
  %239 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1010
  %240 = getelementptr inbounds %struct._GSList, %struct._GSList* %239, i32 0, i32 0, !dbg !1011
  %241 = load i8*, i8** %240, align 8, !dbg !1011
  %242 = bitcast i8* %241 to %struct._SERVER_SETUP_REC*, !dbg !1010
  store %struct._SERVER_SETUP_REC* %242, %struct._SERVER_SETUP_REC** %9, align 8, !dbg !1009
  %243 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %9, align 8, !dbg !1012
  %244 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %243, i32 0, i32 21, !dbg !1014
  %245 = load i8, i8* %244, align 8, !dbg !1014
  %246 = lshr i8 %245, 3, !dbg !1014
  %247 = and i8 %246, 1, !dbg !1014
  %248 = zext i8 %247 to i32, !dbg !1014
  %249 = icmp ne i32 %248, 0, !dbg !1015
  br i1 %249, label %299, label %250, !dbg !1016

; <label>:250:                                    ; preds = %238
  %251 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %9, align 8, !dbg !1017
  %252 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %251, i32 0, i32 2, !dbg !1019
  %253 = load i8*, i8** %252, align 8, !dbg !1019
  %254 = icmp ne i8* %253, null, !dbg !1020
  br i1 %254, label %255, label %299, !dbg !1021

; <label>:255:                                    ; preds = %250
  %256 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %9, align 8, !dbg !1022
  %257 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %256, i32 0, i32 2, !dbg !1024
  %258 = load i8*, i8** %257, align 8, !dbg !1024
  %259 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1025
  %260 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %259, i32 0, i32 12, !dbg !1026
  %261 = load i8*, i8** %260, align 8, !dbg !1026
  %262 = call i32 @g_ascii_strcasecmp(i8* %258, i8* %261), !dbg !1027
  %263 = icmp eq i32 %262, 0, !dbg !1028
  br i1 %263, label %264, label %299, !dbg !1029

; <label>:264:                                    ; preds = %255
  %265 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %9, align 8, !dbg !1030
  %266 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %265, i32 0, i32 20, !dbg !1031
  %267 = load i64, i64* %266, align 8, !dbg !1031
  %268 = icmp ne i64 %267, 0, !dbg !1030
  br i1 %268, label %269, label %284, !dbg !1032

; <label>:269:                                    ; preds = %264
  %270 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %9, align 8, !dbg !1033
  %271 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %270, i32 0, i32 21, !dbg !1034
  %272 = load i8, i8* %271, align 8, !dbg !1034
  %273 = lshr i8 %272, 2, !dbg !1034
  %274 = and i8 %273, 1, !dbg !1034
  %275 = zext i8 %274 to i32, !dbg !1034
  %276 = icmp ne i32 %275, 0, !dbg !1033
  br i1 %276, label %277, label %284, !dbg !1035

; <label>:277:                                    ; preds = %269
  %278 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %9, align 8, !dbg !1036
  %279 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %278, i32 0, i32 20, !dbg !1037
  %280 = load i64, i64* %279, align 8, !dbg !1037
  %281 = load i64, i64* %8, align 8, !dbg !1038
  %282 = sub nsw i64 %281, 1800, !dbg !1039
  %283 = icmp slt i64 %280, %282, !dbg !1040
  br i1 %283, label %284, label %299, !dbg !1041

; <label>:284:                                    ; preds = %277, %269, %264
  %285 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %9, align 8, !dbg !1043
  %286 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !1046
  %287 = icmp eq %struct._SERVER_SETUP_REC* %285, %286, !dbg !1047
  br i1 %287, label %288, label %296, !dbg !1048

; <label>:288:                                    ; preds = %284
  %289 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1049
  %290 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %289, i32 0, i32 3, !dbg !1050
  %291 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %290, align 8, !dbg !1050
  %292 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %291, i32 0, i32 11, !dbg !1051
  %293 = load i32, i32* %292, align 8, !dbg !1051
  %294 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1052
  %295 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %294, i32 0, i32 11, !dbg !1053
  store i32 %293, i32* %295, align 8, !dbg !1054
  br label %296, !dbg !1052

; <label>:296:                                    ; preds = %288, %284
  %297 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %9, align 8, !dbg !1055
  %298 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1056
  call void @sserver_connect(%struct._SERVER_SETUP_REC* %297, %struct._SERVER_CONNECT_REC* %298), !dbg !1057
  br label %395, !dbg !1058

; <label>:299:                                    ; preds = %277, %255, %250, %238
  br label %300, !dbg !1059

; <label>:300:                                    ; preds = %299
  %301 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1060
  %302 = getelementptr inbounds %struct._GSList, %struct._GSList* %301, i32 0, i32 1, !dbg !1062
  %303 = load %struct._GSList*, %struct._GSList** %302, align 8, !dbg !1062
  store %struct._GSList* %303, %struct._GSList** %5, align 8, !dbg !1063
  br label %235, !dbg !1064, !llvm.loop !1065

; <label>:304:                                    ; preds = %235
  store i32 0, i32* %7, align 4, !dbg !1067
  store i32 0, i32* %6, align 4, !dbg !1068
  %305 = load %struct._GSList*, %struct._GSList** @setupservers, align 8, !dbg !1069
  store %struct._GSList* %305, %struct._GSList** %5, align 8, !dbg !1071
  br label %306, !dbg !1072

; <label>:306:                                    ; preds = %393, %384, %304
  %307 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1073
  %308 = icmp ne %struct._GSList* %307, null, !dbg !1076
  br i1 %308, label %309, label %395, !dbg !1077

; <label>:309:                                    ; preds = %306
  call void @llvm.dbg.declare(metadata %struct._SERVER_SETUP_REC** %10, metadata !1078, metadata !457), !dbg !1080
  %310 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1081
  %311 = getelementptr inbounds %struct._GSList, %struct._GSList* %310, i32 0, i32 0, !dbg !1082
  %312 = load i8*, i8** %311, align 8, !dbg !1082
  %313 = bitcast i8* %312 to %struct._SERVER_SETUP_REC*, !dbg !1081
  store %struct._SERVER_SETUP_REC* %313, %struct._SERVER_SETUP_REC** %10, align 8, !dbg !1080
  %314 = load i32, i32* %6, align 4, !dbg !1083
  %315 = icmp ne i32 %314, 0, !dbg !1083
  br i1 %315, label %338, label %316, !dbg !1085

; <label>:316:                                    ; preds = %309
  %317 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1086
  %318 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %317, i32 0, i32 3, !dbg !1088
  %319 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %318, align 8, !dbg !1088
  %320 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %319, i32 0, i32 11, !dbg !1089
  %321 = load i32, i32* %320, align 8, !dbg !1089
  %322 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %10, align 8, !dbg !1090
  %323 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %322, i32 0, i32 5, !dbg !1091
  %324 = load i32, i32* %323, align 8, !dbg !1091
  %325 = icmp eq i32 %321, %324, !dbg !1092
  br i1 %325, label %326, label %338, !dbg !1093

; <label>:326:                                    ; preds = %316
  %327 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %10, align 8, !dbg !1094
  %328 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %327, i32 0, i32 4, !dbg !1095
  %329 = load i8*, i8** %328, align 8, !dbg !1095
  %330 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1096
  %331 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %330, i32 0, i32 3, !dbg !1097
  %332 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %331, align 8, !dbg !1097
  %333 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %332, i32 0, i32 10, !dbg !1098
  %334 = load i8*, i8** %333, align 8, !dbg !1098
  %335 = call i32 @g_ascii_strcasecmp(i8* %329, i8* %334), !dbg !1099
  %336 = icmp eq i32 %335, 0, !dbg !1100
  br i1 %336, label %337, label %338, !dbg !1101

; <label>:337:                                    ; preds = %326
  store i32 1, i32* %6, align 4, !dbg !1103
  br label %379, !dbg !1104

; <label>:338:                                    ; preds = %326, %316, %309
  %339 = load i32, i32* %6, align 4, !dbg !1105
  %340 = icmp ne i32 %339, 0, !dbg !1105
  br i1 %340, label %341, label %378, !dbg !1107

; <label>:341:                                    ; preds = %338
  %342 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %10, align 8, !dbg !1108
  %343 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %342, i32 0, i32 21, !dbg !1110
  %344 = load i8, i8* %343, align 8, !dbg !1110
  %345 = lshr i8 %344, 3, !dbg !1110
  %346 = and i8 %345, 1, !dbg !1110
  %347 = zext i8 %346 to i32, !dbg !1110
  %348 = icmp ne i32 %347, 0, !dbg !1111
  br i1 %348, label %378, label %349, !dbg !1112

; <label>:349:                                    ; preds = %341
  %350 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %10, align 8, !dbg !1113
  %351 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %350, i32 0, i32 2, !dbg !1115
  %352 = load i8*, i8** %351, align 8, !dbg !1115
  %353 = icmp ne i8* %352, null, !dbg !1116
  br i1 %353, label %354, label %378, !dbg !1117

; <label>:354:                                    ; preds = %349
  %355 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %10, align 8, !dbg !1118
  %356 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %355, i32 0, i32 2, !dbg !1120
  %357 = load i8*, i8** %356, align 8, !dbg !1120
  %358 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1121
  %359 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %358, i32 0, i32 12, !dbg !1122
  %360 = load i8*, i8** %359, align 8, !dbg !1122
  %361 = call i32 @g_ascii_strcasecmp(i8* %357, i8* %360), !dbg !1123
  %362 = icmp eq i32 %361, 0, !dbg !1124
  br i1 %362, label %363, label %378, !dbg !1125

; <label>:363:                                    ; preds = %354
  %364 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %10, align 8, !dbg !1126
  %365 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !1129
  %366 = icmp eq %struct._SERVER_SETUP_REC* %364, %365, !dbg !1130
  br i1 %366, label %367, label %375, !dbg !1131

; <label>:367:                                    ; preds = %363
  %368 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1132
  %369 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %368, i32 0, i32 3, !dbg !1133
  %370 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %369, align 8, !dbg !1133
  %371 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %370, i32 0, i32 11, !dbg !1134
  %372 = load i32, i32* %371, align 8, !dbg !1134
  %373 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1135
  %374 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %373, i32 0, i32 11, !dbg !1136
  store i32 %372, i32* %374, align 8, !dbg !1137
  br label %375, !dbg !1135

; <label>:375:                                    ; preds = %367, %363
  %376 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %10, align 8, !dbg !1138
  %377 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1139
  call void @sserver_connect(%struct._SERVER_SETUP_REC* %376, %struct._SERVER_CONNECT_REC* %377), !dbg !1140
  br label %395, !dbg !1141

; <label>:378:                                    ; preds = %354, %349, %341, %338
  br label %379

; <label>:379:                                    ; preds = %378, %337
  %380 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1142
  %381 = getelementptr inbounds %struct._GSList, %struct._GSList* %380, i32 0, i32 1, !dbg !1144
  %382 = load %struct._GSList*, %struct._GSList** %381, align 8, !dbg !1144
  %383 = icmp ne %struct._GSList* %382, null, !dbg !1145
  br i1 %383, label %384, label %388, !dbg !1146

; <label>:384:                                    ; preds = %379
  %385 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1147
  %386 = getelementptr inbounds %struct._GSList, %struct._GSList* %385, i32 0, i32 1, !dbg !1149
  %387 = load %struct._GSList*, %struct._GSList** %386, align 8, !dbg !1149
  store %struct._GSList* %387, %struct._GSList** %5, align 8, !dbg !1150
  br label %306, !dbg !1151, !llvm.loop !1152

; <label>:388:                                    ; preds = %379
  %389 = load i32, i32* %7, align 4, !dbg !1154
  %390 = icmp ne i32 %389, 0, !dbg !1154
  br i1 %390, label %391, label %393, !dbg !1156

; <label>:391:                                    ; preds = %388
  %392 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1157
  call void @server_connect_unref(%struct._SERVER_CONNECT_REC* %392), !dbg !1159
  br label %395, !dbg !1160

; <label>:393:                                    ; preds = %388
  %394 = load %struct._GSList*, %struct._GSList** @setupservers, align 8, !dbg !1161
  store %struct._GSList* %394, %struct._GSList** %5, align 8, !dbg !1162
  store i32 1, i32* %7, align 4, !dbg !1163
  store i32 1, i32* %6, align 4, !dbg !1164
  br label %306, !dbg !1165, !llvm.loop !1152

; <label>:395:                                    ; preds = %20, %56, %66, %226, %296, %391, %375, %306
  ret void, !dbg !1167
}

; Function Attrs: nounwind uwtable
define internal void @sig_connected(%struct._SERVER_REC*) #0 !dbg !1168 {
  %2 = alloca %struct._SERVER_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %2, metadata !1169, metadata !457), !dbg !1170
  br label %3, !dbg !1171, !llvm.loop !1172

; <label>:3:                                      ; preds = %1
  %4 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1173
  %5 = bitcast %struct._SERVER_REC* %4 to i8*, !dbg !1173
  %6 = call i8* @module_check_cast(i8* %5, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)), !dbg !1177
  %7 = bitcast i8* %6 to %struct._SERVER_REC*, !dbg !1178
  %8 = icmp ne %struct._SERVER_REC* %7, null, !dbg !1178
  br i1 %8, label %9, label %10, !dbg !1179

; <label>:9:                                      ; preds = %3
  br i1 false, label %12, label %11, !dbg !1180

; <label>:10:                                     ; preds = %3
  br i1 false, label %11, label %12, !dbg !1182

; <label>:11:                                     ; preds = %10, %9
  br label %13, !dbg !1184

; <label>:12:                                     ; preds = %10, %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.sig_connected, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0)), !dbg !1187
  br label %41, !dbg !1190

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !1191

; <label>:14:                                     ; preds = %13
  %15 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1193
  %16 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %15, i32 0, i32 3, !dbg !1195
  %17 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %16, align 8, !dbg !1195
  %18 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %17, i32 0, i32 28, !dbg !1196
  %19 = load i8, i8* %18, align 8, !dbg !1196
  %20 = and i8 %19, 1, !dbg !1196
  %21 = zext i8 %20 to i32, !dbg !1196
  %22 = icmp ne i32 %21, 0, !dbg !1193
  br i1 %22, label %24, label %23, !dbg !1197

; <label>:23:                                     ; preds = %14
  br label %41, !dbg !1198

; <label>:24:                                     ; preds = %14
  %25 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1199
  %26 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %25, i32 0, i32 3, !dbg !1201
  %27 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %26, align 8, !dbg !1201
  %28 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %27, i32 0, i32 29, !dbg !1202
  %29 = load i8*, i8** %28, align 8, !dbg !1202
  %30 = icmp ne i8* %29, null, !dbg !1203
  br i1 %30, label %31, label %41, !dbg !1204

; <label>:31:                                     ; preds = %24
  %32 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1205
  %33 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %32, i32 0, i32 25, !dbg !1206
  %34 = load void (%struct._SERVER_REC*, i8*, i32)*, void (%struct._SERVER_REC*, i8*, i32)** %33, align 8, !dbg !1206
  %35 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1207
  %36 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1208
  %37 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %36, i32 0, i32 3, !dbg !1209
  %38 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %37, align 8, !dbg !1209
  %39 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %38, i32 0, i32 29, !dbg !1210
  %40 = load i8*, i8** %39, align 8, !dbg !1210
  call void %34(%struct._SERVER_REC* %35, i8* %40, i32 1), !dbg !1205
  br label %41, !dbg !1205

; <label>:41:                                     ; preds = %12, %23, %31, %24
  ret void, !dbg !1211
}

; Function Attrs: nounwind uwtable
define internal void @sig_chat_protocol_deinit(%struct._CHAT_PROTOCOL_REC*) #0 !dbg !1212 {
  %2 = alloca %struct._CHAT_PROTOCOL_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct.RECONNECT_REC*, align 8
  store %struct._CHAT_PROTOCOL_REC* %0, %struct._CHAT_PROTOCOL_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._CHAT_PROTOCOL_REC** %2, metadata !1266, metadata !457), !dbg !1267
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !1268, metadata !457), !dbg !1269
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !1270, metadata !457), !dbg !1271
  %6 = load %struct._GSList*, %struct._GSList** @reconnects, align 8, !dbg !1272
  store %struct._GSList* %6, %struct._GSList** %3, align 8, !dbg !1274
  br label %7, !dbg !1275

; <label>:7:                                      ; preds = %30, %1
  %8 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1276
  %9 = icmp ne %struct._GSList* %8, null, !dbg !1279
  br i1 %9, label %10, label %32, !dbg !1280

; <label>:10:                                     ; preds = %7
  call void @llvm.dbg.declare(metadata %struct.RECONNECT_REC** %5, metadata !1281, metadata !457), !dbg !1283
  %11 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1284
  %12 = getelementptr inbounds %struct._GSList, %struct._GSList* %11, i32 0, i32 0, !dbg !1285
  %13 = load i8*, i8** %12, align 8, !dbg !1285
  %14 = bitcast i8* %13 to %struct.RECONNECT_REC*, !dbg !1284
  store %struct.RECONNECT_REC* %14, %struct.RECONNECT_REC** %5, align 8, !dbg !1283
  %15 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1286
  %16 = getelementptr inbounds %struct._GSList, %struct._GSList* %15, i32 0, i32 1, !dbg !1287
  %17 = load %struct._GSList*, %struct._GSList** %16, align 8, !dbg !1287
  store %struct._GSList* %17, %struct._GSList** %4, align 8, !dbg !1288
  %18 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %5, align 8, !dbg !1289
  %19 = getelementptr inbounds %struct.RECONNECT_REC, %struct.RECONNECT_REC* %18, i32 0, i32 2, !dbg !1291
  %20 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %19, align 8, !dbg !1291
  %21 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %20, i32 0, i32 1, !dbg !1292
  %22 = load i32, i32* %21, align 4, !dbg !1292
  %23 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %2, align 8, !dbg !1293
  %24 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %23, i32 0, i32 0, !dbg !1294
  %25 = load i32, i32* %24, align 8, !dbg !1294
  %26 = icmp eq i32 %22, %25, !dbg !1295
  br i1 %26, label %27, label %29, !dbg !1296

; <label>:27:                                     ; preds = %10
  %28 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %5, align 8, !dbg !1297
  call void @server_reconnect_destroy(%struct.RECONNECT_REC* %28), !dbg !1298
  br label %29, !dbg !1298

; <label>:29:                                     ; preds = %27, %10
  br label %30, !dbg !1299

; <label>:30:                                     ; preds = %29
  %31 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1300
  store %struct._GSList* %31, %struct._GSList** %3, align 8, !dbg !1302
  br label %7, !dbg !1303, !llvm.loop !1304

; <label>:32:                                     ; preds = %7
  ret void, !dbg !1306
}

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @cmd_rmreconns() #0 !dbg !1307 {
  br label %1, !dbg !1308

; <label>:1:                                      ; preds = %4, %0
  %2 = load %struct._GSList*, %struct._GSList** @reconnects, align 8, !dbg !1309
  %3 = icmp ne %struct._GSList* %2, null, !dbg !1311
  br i1 %3, label %4, label %9, !dbg !1312

; <label>:4:                                      ; preds = %1
  %5 = load %struct._GSList*, %struct._GSList** @reconnects, align 8, !dbg !1313
  %6 = getelementptr inbounds %struct._GSList, %struct._GSList* %5, i32 0, i32 0, !dbg !1314
  %7 = load i8*, i8** %6, align 8, !dbg !1314
  %8 = bitcast i8* %7 to %struct.RECONNECT_REC*, !dbg !1313
  call void @server_reconnect_destroy(%struct.RECONNECT_REC* %8), !dbg !1315
  br label %1, !dbg !1316, !llvm.loop !1318

; <label>:9:                                      ; preds = %1
  ret void, !dbg !1319
}

; Function Attrs: nounwind uwtable
define internal void @cmd_reconnect(i8*, %struct._SERVER_REC*) #0 !dbg !1320 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca %struct._SERVER_CONNECT_REC*, align 8
  %6 = alloca %struct.RECONNECT_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1323, metadata !457), !dbg !1324
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1325, metadata !457), !dbg !1326
  call void @llvm.dbg.declare(metadata %struct._SERVER_CONNECT_REC** %5, metadata !1327, metadata !457), !dbg !1328
  call void @llvm.dbg.declare(metadata %struct.RECONNECT_REC** %6, metadata !1329, metadata !457), !dbg !1330
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1331, metadata !457), !dbg !1332
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1333, metadata !457), !dbg !1334
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1335, metadata !457), !dbg !1336
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1337, metadata !457), !dbg !1338
  %11 = load i8*, i8** %3, align 8, !dbg !1339
  %12 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %11, i8** %9, i32 8194, i8** %7, i8** %8), !dbg !1341
  %13 = icmp ne i32 %12, 0, !dbg !1341
  br i1 %13, label %15, label %14, !dbg !1342

; <label>:14:                                     ; preds = %2
  br label %129, !dbg !1343

; <label>:15:                                     ; preds = %2
  %16 = load i8*, i8** %7, align 8, !dbg !1344
  %17 = load i8, i8* %16, align 1, !dbg !1346
  %18 = sext i8 %17 to i32, !dbg !1346
  %19 = icmp ne i32 %18, 0, !dbg !1347
  br i1 %19, label %20, label %27, !dbg !1348

; <label>:20:                                     ; preds = %15
  %21 = load i8*, i8** %7, align 8, !dbg !1349
  %22 = call i32 @g_strcmp0(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0)), !dbg !1351
  %23 = icmp ne i32 %22, 0, !dbg !1352
  br i1 %23, label %24, label %27, !dbg !1353

; <label>:24:                                     ; preds = %20
  %25 = load i8*, i8** %7, align 8, !dbg !1354
  %26 = call %struct._SERVER_REC* @server_find_tag(i8* %25), !dbg !1355
  store %struct._SERVER_REC* %26, %struct._SERVER_REC** %4, align 8, !dbg !1356
  br label %27, !dbg !1357

; <label>:27:                                     ; preds = %24, %20, %15
  %28 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1358
  %29 = icmp ne %struct._SERVER_REC* %28, null, !dbg !1360
  br i1 %29, label %30, label %68, !dbg !1361

; <label>:30:                                     ; preds = %27
  %31 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1362
  %32 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %31, i32 0, i32 3, !dbg !1364
  %33 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %32, align 8, !dbg !1364
  %34 = call %struct._SERVER_CONNECT_REC* @server_connect_copy_skeleton(%struct._SERVER_CONNECT_REC* %33, i32 1), !dbg !1365
  store %struct._SERVER_CONNECT_REC* %34, %struct._SERVER_CONNECT_REC** %5, align 8, !dbg !1366
  %35 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1367
  %36 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %35, i32 0, i32 8, !dbg !1369
  %37 = load i8, i8* %36, align 8, !dbg !1369
  %38 = and i8 %37, 1, !dbg !1369
  %39 = zext i8 %38 to i32, !dbg !1369
  %40 = icmp ne i32 %39, 0, !dbg !1367
  br i1 %40, label %41, label %44, !dbg !1370

; <label>:41:                                     ; preds = %30
  %42 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %5, align 8, !dbg !1371
  %43 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1372
  call void @reconnect_save_status(%struct._SERVER_CONNECT_REC* %42, %struct._SERVER_REC* %43), !dbg !1373
  br label %44, !dbg !1373

; <label>:44:                                     ; preds = %41, %30
  %45 = load i8*, i8** %8, align 8, !dbg !1374
  %46 = load i8, i8* %45, align 1, !dbg !1375
  %47 = sext i8 %46 to i32, !dbg !1375
  %48 = icmp eq i32 %47, 0, !dbg !1376
  br i1 %48, label %49, label %50, !dbg !1375

; <label>:49:                                     ; preds = %44
  br label %52, !dbg !1377

; <label>:50:                                     ; preds = %44
  %51 = load i8*, i8** %8, align 8, !dbg !1379
  br label %52, !dbg !1380

; <label>:52:                                     ; preds = %50, %49
  %53 = phi i8* [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), %49 ], [ %51, %50 ], !dbg !1382
  %54 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i8* %53, i8* null), !dbg !1384
  store i8* %54, i8** %8, align 8, !dbg !1385
  %55 = load i8*, i8** %8, align 8, !dbg !1386
  %56 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1387
  %57 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i32 0, i32 0), i32 2, i8* %55, %struct._SERVER_REC* %56), !dbg !1388
  %58 = load i8*, i8** %8, align 8, !dbg !1389
  call void @g_free(i8* %58), !dbg !1390
  %59 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %5, align 8, !dbg !1391
  %60 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %59, i32 0, i32 28, !dbg !1392
  %61 = load i8, i8* %60, align 8, !dbg !1393
  %62 = and i8 %61, -2, !dbg !1393
  %63 = or i8 %62, 1, !dbg !1393
  store i8 %63, i8* %60, align 8, !dbg !1393
  %64 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %5, align 8, !dbg !1394
  %65 = call %struct._SERVER_REC* @server_connect(%struct._SERVER_CONNECT_REC* %64), !dbg !1395
  %66 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %5, align 8, !dbg !1396
  call void @server_connect_unref(%struct._SERVER_CONNECT_REC* %66), !dbg !1397
  %67 = load i8*, i8** %9, align 8, !dbg !1398
  call void @cmd_params_free(i8* %67), !dbg !1399
  br label %129, !dbg !1400

; <label>:68:                                     ; preds = %27
  %69 = load i8*, i8** %7, align 8, !dbg !1401
  %70 = call i32 @g_ascii_strcasecmp(i8* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0)), !dbg !1403
  %71 = icmp eq i32 %70, 0, !dbg !1404
  br i1 %71, label %72, label %74, !dbg !1405

; <label>:72:                                     ; preds = %68
  call void @reconnect_all(), !dbg !1406
  %73 = load i8*, i8** %9, align 8, !dbg !1408
  call void @cmd_params_free(i8* %73), !dbg !1409
  br label %129, !dbg !1410

; <label>:74:                                     ; preds = %68
  %75 = load i8*, i8** %3, align 8, !dbg !1411
  %76 = load i8, i8* %75, align 1, !dbg !1413
  %77 = sext i8 %76 to i32, !dbg !1413
  %78 = icmp eq i32 %77, 0, !dbg !1414
  br i1 %78, label %79, label %94, !dbg !1415

; <label>:79:                                     ; preds = %74
  %80 = load %struct._GSList*, %struct._GSList** @reconnects, align 8, !dbg !1416
  %81 = icmp eq %struct._GSList* %80, null, !dbg !1419
  br i1 %81, label %82, label %89, !dbg !1420

; <label>:82:                                     ; preds = %79
  br label %83, !dbg !1421, !llvm.loop !1422

; <label>:83:                                     ; preds = %82
  %84 = load i8*, i8** %9, align 8, !dbg !1423
  call void @cmd_params_free(i8* %84), !dbg !1426
  br label %85, !dbg !1427, !llvm.loop !1428

; <label>:85:                                     ; preds = %83
  %86 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !1430
  call void @signal_stop(), !dbg !1433
  br label %129, !dbg !1435
                                                  ; No predecessors!
  br label %88, !dbg !1436

; <label>:88:                                     ; preds = %87
  br label %89, !dbg !1438

; <label>:89:                                     ; preds = %88, %79
  %90 = load %struct._GSList*, %struct._GSList** @reconnects, align 8, !dbg !1440
  %91 = getelementptr inbounds %struct._GSList, %struct._GSList* %90, i32 0, i32 0, !dbg !1441
  %92 = load i8*, i8** %91, align 8, !dbg !1441
  %93 = bitcast i8* %92 to %struct.RECONNECT_REC*, !dbg !1440
  store %struct.RECONNECT_REC* %93, %struct.RECONNECT_REC** %6, align 8, !dbg !1442
  br label %112, !dbg !1443

; <label>:94:                                     ; preds = %74
  %95 = load i8*, i8** %7, align 8, !dbg !1444
  %96 = call i32 @g_ascii_strncasecmp(i8* %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i64 6), !dbg !1447
  %97 = icmp eq i32 %96, 0, !dbg !1448
  br i1 %97, label %98, label %101, !dbg !1449

; <label>:98:                                     ; preds = %94
  %99 = load i8*, i8** %7, align 8, !dbg !1450
  %100 = getelementptr inbounds i8, i8* %99, i64 6, !dbg !1450
  store i8* %100, i8** %7, align 8, !dbg !1450
  br label %101, !dbg !1451

; <label>:101:                                    ; preds = %98, %94
  %102 = load i8*, i8** %7, align 8, !dbg !1452
  %103 = call i32 @atoi(i8* %102) #7, !dbg !1453
  store i32 %103, i32* %10, align 4, !dbg !1454
  %104 = load i32, i32* %10, align 4, !dbg !1455
  %105 = icmp sle i32 %104, 0, !dbg !1456
  br i1 %105, label %106, label %107, !dbg !1455

; <label>:106:                                    ; preds = %101
  br label %110, !dbg !1457

; <label>:107:                                    ; preds = %101
  %108 = load i32, i32* %10, align 4, !dbg !1459
  %109 = call %struct.RECONNECT_REC* @reconnect_find_tag(i32 %108), !dbg !1461
  br label %110, !dbg !1462

; <label>:110:                                    ; preds = %107, %106
  %111 = phi %struct.RECONNECT_REC* [ null, %106 ], [ %109, %107 ], !dbg !1463
  store %struct.RECONNECT_REC* %111, %struct.RECONNECT_REC** %6, align 8, !dbg !1465
  br label %112

; <label>:112:                                    ; preds = %110, %89
  %113 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %6, align 8, !dbg !1466
  %114 = icmp eq %struct.RECONNECT_REC* %113, null, !dbg !1468
  br i1 %114, label %115, label %118, !dbg !1469

; <label>:115:                                    ; preds = %112
  %116 = load i8*, i8** %3, align 8, !dbg !1470
  %117 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i32 0, i32 0), i32 1, i8* %116), !dbg !1472
  br label %127, !dbg !1473

; <label>:118:                                    ; preds = %112
  %119 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %6, align 8, !dbg !1474
  %120 = getelementptr inbounds %struct.RECONNECT_REC, %struct.RECONNECT_REC* %119, i32 0, i32 2, !dbg !1476
  %121 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %120, align 8, !dbg !1476
  store %struct._SERVER_CONNECT_REC* %121, %struct._SERVER_CONNECT_REC** %5, align 8, !dbg !1477
  %122 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %5, align 8, !dbg !1478
  call void @server_connect_ref(%struct._SERVER_CONNECT_REC* %122), !dbg !1479
  %123 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %6, align 8, !dbg !1480
  call void @server_reconnect_destroy(%struct.RECONNECT_REC* %123), !dbg !1481
  %124 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %5, align 8, !dbg !1482
  %125 = call %struct._SERVER_REC* @server_connect(%struct._SERVER_CONNECT_REC* %124), !dbg !1483
  %126 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %5, align 8, !dbg !1484
  call void @server_connect_unref(%struct._SERVER_CONNECT_REC* %126), !dbg !1485
  br label %127

; <label>:127:                                    ; preds = %118, %115
  %128 = load i8*, i8** %9, align 8, !dbg !1486
  call void @cmd_params_free(i8* %128), !dbg !1487
  br label %129, !dbg !1488

; <label>:129:                                    ; preds = %127, %85, %72, %52, %14
  ret void, !dbg !1489
}

; Function Attrs: nounwind uwtable
define internal void @cmd_disconnect(i8*, %struct._SERVER_REC*) #0 !dbg !1491 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca %struct.RECONNECT_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1492, metadata !457), !dbg !1493
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1494, metadata !457), !dbg !1495
  call void @llvm.dbg.declare(metadata %struct.RECONNECT_REC** %5, metadata !1496, metadata !457), !dbg !1497
  %6 = load i8*, i8** %3, align 8, !dbg !1498
  %7 = call i32 @g_ascii_strncasecmp(i8* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i64 6), !dbg !1500
  %8 = icmp ne i32 %7, 0, !dbg !1501
  br i1 %8, label %9, label %10, !dbg !1502

; <label>:9:                                      ; preds = %2
  br label %23, !dbg !1503

; <label>:10:                                     ; preds = %2
  %11 = load i8*, i8** %3, align 8, !dbg !1504
  %12 = getelementptr inbounds i8, i8* %11, i64 6, !dbg !1505
  %13 = call i32 @atoi(i8* %12) #7, !dbg !1506
  %14 = call %struct.RECONNECT_REC* @reconnect_find_tag(i32 %13), !dbg !1507
  store %struct.RECONNECT_REC* %14, %struct.RECONNECT_REC** %5, align 8, !dbg !1509
  %15 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %5, align 8, !dbg !1510
  %16 = icmp eq %struct.RECONNECT_REC* %15, null, !dbg !1512
  br i1 %16, label %17, label %20, !dbg !1513

; <label>:17:                                     ; preds = %10
  %18 = load i8*, i8** %3, align 8, !dbg !1514
  %19 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.31, i32 0, i32 0), i32 1, i8* %18), !dbg !1515
  br label %22, !dbg !1515

; <label>:20:                                     ; preds = %10
  %21 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %5, align 8, !dbg !1516
  call void @server_reconnect_destroy(%struct.RECONNECT_REC* %21), !dbg !1517
  br label %22

; <label>:22:                                     ; preds = %20, %17
  call void @signal_stop(), !dbg !1518
  br label %23, !dbg !1519

; <label>:23:                                     ; preds = %22, %9
  ret void, !dbg !1520
}

; Function Attrs: nounwind uwtable
define void @servers_reconnect_deinit() #0 !dbg !1521 {
  %1 = load i32, i32* @reconnect_timeout_tag, align 4, !dbg !1522
  %2 = call i32 @g_source_remove(i32 %1), !dbg !1523
  call void @signal_remove_full(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_reconnect to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1524
  call void @signal_remove_full(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_reconnect to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1525
  call void @signal_remove_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_connected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1526
  call void @signal_remove_full(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHAT_PROTOCOL_REC*)* @sig_chat_protocol_deinit to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1527
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1528
  call void @command_unbind_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_rmreconns to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1529
  call void @command_unbind_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*)* @cmd_reconnect to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1530
  call void @command_unbind_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*)* @cmd_disconnect to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1531
  ret void, !dbg !1532
}

declare i32 @g_source_remove(i32) #2

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind
declare i64 @time(i64*) #3

declare void @server_disconnect(%struct._SERVER_REC*) #2

declare void @server_connect_failed(%struct._SERVER_REC*, i8*) #2

declare %struct._GSList* @g_slist_copy(%struct._GSList*) #2

declare %struct._GSList* @g_slist_find(%struct._GSList*, i8*) #2

declare void @server_connect_ref(%struct._SERVER_CONNECT_REC*) #2

declare %struct._SERVER_REC* @server_connect(%struct._SERVER_CONNECT_REC*) #2

declare void @g_slist_free(%struct._GSList*) #2

declare i32 @settings_get_time(i8*) #2

declare i8* @module_check_cast(i8*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct._SERVER_CONNECT_REC* @server_connect_copy_skeleton(%struct._SERVER_CONNECT_REC*, i32) #0 !dbg !1533 {
  %3 = alloca %struct._SERVER_CONNECT_REC*, align 8
  %4 = alloca %struct._SERVER_CONNECT_REC*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._SERVER_CONNECT_REC*, align 8
  store %struct._SERVER_CONNECT_REC* %0, %struct._SERVER_CONNECT_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_CONNECT_REC** %4, metadata !1536, metadata !457), !dbg !1537
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1538, metadata !457), !dbg !1539
  call void @llvm.dbg.declare(metadata %struct._SERVER_CONNECT_REC** %6, metadata !1540, metadata !457), !dbg !1541
  store %struct._SERVER_CONNECT_REC* null, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1542
  %7 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1543
  %8 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), i32 2, %struct._SERVER_CONNECT_REC** %6, %struct._SERVER_CONNECT_REC* %7), !dbg !1544
  br label %9, !dbg !1545, !llvm.loop !1546

; <label>:9:                                      ; preds = %2
  %10 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1547
  %11 = icmp ne %struct._SERVER_CONNECT_REC* %10, null, !dbg !1551
  br i1 %11, label %12, label %13, !dbg !1547

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !1552

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.server_connect_copy_skeleton, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0)), !dbg !1555
  store %struct._SERVER_CONNECT_REC* null, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1558
  br label %284, !dbg !1558

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !1559

; <label>:15:                                     ; preds = %14
  %16 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1561
  call void @server_connect_ref(%struct._SERVER_CONNECT_REC* %16), !dbg !1562
  %17 = call i32 @module_get_uniq_id(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i32 0), !dbg !1563
  %18 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1564
  %19 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %18, i32 0, i32 0, !dbg !1565
  store i32 %17, i32* %19, align 8, !dbg !1566
  %20 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1567
  %21 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %20, i32 0, i32 28, !dbg !1568
  %22 = load i8, i8* %21, align 8, !dbg !1568
  %23 = and i8 %22, 1, !dbg !1568
  %24 = zext i8 %23 to i32, !dbg !1568
  %25 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1569
  %26 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %25, i32 0, i32 28, !dbg !1570
  %27 = trunc i32 %24 to i8, !dbg !1571
  %28 = load i8, i8* %26, align 8, !dbg !1571
  %29 = and i8 %27, 1, !dbg !1571
  %30 = and i8 %28, -2, !dbg !1571
  %31 = or i8 %30, %29, !dbg !1571
  store i8 %31, i8* %26, align 8, !dbg !1571
  %32 = zext i8 %29 to i32, !dbg !1571
  %33 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1572
  %34 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %33, i32 0, i32 3, !dbg !1573
  %35 = load i8*, i8** %34, align 8, !dbg !1573
  %36 = call noalias i8* @g_strdup(i8* %35), !dbg !1574
  %37 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1575
  %38 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %37, i32 0, i32 3, !dbg !1576
  store i8* %36, i8** %38, align 8, !dbg !1577
  %39 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1578
  %40 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %39, i32 0, i32 4, !dbg !1579
  %41 = load i32, i32* %40, align 8, !dbg !1579
  %42 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1580
  %43 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %42, i32 0, i32 4, !dbg !1581
  store i32 %41, i32* %43, align 8, !dbg !1582
  %44 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1583
  %45 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %44, i32 0, i32 5, !dbg !1584
  %46 = load i8*, i8** %45, align 8, !dbg !1584
  %47 = call noalias i8* @g_strdup(i8* %46), !dbg !1585
  %48 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1586
  %49 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %48, i32 0, i32 5, !dbg !1587
  store i8* %47, i8** %49, align 8, !dbg !1588
  %50 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1589
  %51 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %50, i32 0, i32 6, !dbg !1590
  %52 = load i8*, i8** %51, align 8, !dbg !1590
  %53 = call noalias i8* @g_strdup(i8* %52), !dbg !1591
  %54 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1592
  %55 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %54, i32 0, i32 6, !dbg !1593
  store i8* %53, i8** %55, align 8, !dbg !1594
  %56 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1595
  %57 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %56, i32 0, i32 7, !dbg !1596
  %58 = load i8*, i8** %57, align 8, !dbg !1596
  %59 = call noalias i8* @g_strdup(i8* %58), !dbg !1597
  %60 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1598
  %61 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %60, i32 0, i32 7, !dbg !1599
  store i8* %59, i8** %61, align 8, !dbg !1600
  %62 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1601
  %63 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %62, i32 0, i32 9, !dbg !1602
  %64 = load i8*, i8** %63, align 8, !dbg !1602
  %65 = call noalias i8* @g_strdup(i8* %64), !dbg !1603
  %66 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1604
  %67 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %66, i32 0, i32 9, !dbg !1605
  store i8* %65, i8** %67, align 8, !dbg !1606
  %68 = load i32, i32* %5, align 4, !dbg !1607
  %69 = icmp ne i32 %68, 0, !dbg !1607
  br i1 %69, label %70, label %93, !dbg !1609

; <label>:70:                                     ; preds = %15
  %71 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1610
  %72 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %71, i32 0, i32 8, !dbg !1612
  %73 = load i16, i16* %72, align 8, !dbg !1612
  %74 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1613
  %75 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %74, i32 0, i32 8, !dbg !1614
  store i16 %73, i16* %75, align 8, !dbg !1615
  %76 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1616
  %77 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %76, i32 0, i32 10, !dbg !1617
  %78 = load i8*, i8** %77, align 8, !dbg !1617
  %79 = call noalias i8* @g_strdup(i8* %78), !dbg !1618
  %80 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1619
  %81 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %80, i32 0, i32 10, !dbg !1620
  store i8* %79, i8** %81, align 8, !dbg !1621
  %82 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1622
  %83 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %82, i32 0, i32 11, !dbg !1623
  %84 = load i32, i32* %83, align 8, !dbg !1623
  %85 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1624
  %86 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %85, i32 0, i32 11, !dbg !1625
  store i32 %84, i32* %86, align 8, !dbg !1626
  %87 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1627
  %88 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %87, i32 0, i32 15, !dbg !1628
  %89 = load i8*, i8** %88, align 8, !dbg !1628
  %90 = call noalias i8* @g_strdup(i8* %89), !dbg !1629
  %91 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1630
  %92 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %91, i32 0, i32 15, !dbg !1631
  store i8* %90, i8** %92, align 8, !dbg !1632
  br label %93, !dbg !1633

; <label>:93:                                     ; preds = %70, %15
  %94 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1634
  %95 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %94, i32 0, i32 12, !dbg !1635
  %96 = load i8*, i8** %95, align 8, !dbg !1635
  %97 = call noalias i8* @g_strdup(i8* %96), !dbg !1636
  %98 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1637
  %99 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %98, i32 0, i32 12, !dbg !1638
  store i8* %97, i8** %99, align 8, !dbg !1639
  %100 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1640
  %101 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %100, i32 0, i32 16, !dbg !1641
  %102 = load i8*, i8** %101, align 8, !dbg !1641
  %103 = call noalias i8* @g_strdup(i8* %102), !dbg !1642
  %104 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1643
  %105 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %104, i32 0, i32 16, !dbg !1644
  store i8* %103, i8** %105, align 8, !dbg !1645
  %106 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1646
  %107 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %106, i32 0, i32 17, !dbg !1647
  %108 = load i8*, i8** %107, align 8, !dbg !1647
  %109 = call noalias i8* @g_strdup(i8* %108), !dbg !1648
  %110 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1649
  %111 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %110, i32 0, i32 17, !dbg !1650
  store i8* %109, i8** %111, align 8, !dbg !1651
  %112 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1652
  %113 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %112, i32 0, i32 18, !dbg !1653
  %114 = load i8*, i8** %113, align 8, !dbg !1653
  %115 = call noalias i8* @g_strdup(i8* %114), !dbg !1654
  %116 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1655
  %117 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %116, i32 0, i32 18, !dbg !1656
  store i8* %115, i8** %117, align 8, !dbg !1657
  %118 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1658
  %119 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %118, i32 0, i32 13, !dbg !1660
  %120 = load %struct._IPADDR*, %struct._IPADDR** %119, align 8, !dbg !1660
  %121 = icmp ne %struct._IPADDR* %120, null, !dbg !1661
  br i1 %121, label %122, label %135, !dbg !1662

; <label>:122:                                    ; preds = %93
  %123 = call noalias i8* @g_malloc_n(i64 1, i64 20), !dbg !1663
  %124 = bitcast i8* %123 to %struct._IPADDR*, !dbg !1665
  %125 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1666
  %126 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %125, i32 0, i32 13, !dbg !1667
  store %struct._IPADDR* %124, %struct._IPADDR** %126, align 8, !dbg !1668
  %127 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1669
  %128 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %127, i32 0, i32 13, !dbg !1670
  %129 = load %struct._IPADDR*, %struct._IPADDR** %128, align 8, !dbg !1670
  %130 = bitcast %struct._IPADDR* %129 to i8*, !dbg !1671
  %131 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1672
  %132 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %131, i32 0, i32 13, !dbg !1673
  %133 = load %struct._IPADDR*, %struct._IPADDR** %132, align 8, !dbg !1673
  %134 = bitcast %struct._IPADDR* %133 to i8*, !dbg !1671
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %130, i8* %134, i64 20, i32 4, i1 false), !dbg !1671
  br label %135, !dbg !1674

; <label>:135:                                    ; preds = %122, %93
  %136 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1675
  %137 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %136, i32 0, i32 14, !dbg !1677
  %138 = load %struct._IPADDR*, %struct._IPADDR** %137, align 8, !dbg !1677
  %139 = icmp ne %struct._IPADDR* %138, null, !dbg !1678
  br i1 %139, label %140, label %153, !dbg !1679

; <label>:140:                                    ; preds = %135
  %141 = call noalias i8* @g_malloc_n(i64 1, i64 20), !dbg !1680
  %142 = bitcast i8* %141 to %struct._IPADDR*, !dbg !1682
  %143 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1683
  %144 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %143, i32 0, i32 14, !dbg !1684
  store %struct._IPADDR* %142, %struct._IPADDR** %144, align 8, !dbg !1685
  %145 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1686
  %146 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %145, i32 0, i32 14, !dbg !1687
  %147 = load %struct._IPADDR*, %struct._IPADDR** %146, align 8, !dbg !1687
  %148 = bitcast %struct._IPADDR* %147 to i8*, !dbg !1688
  %149 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1689
  %150 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %149, i32 0, i32 14, !dbg !1690
  %151 = load %struct._IPADDR*, %struct._IPADDR** %150, align 8, !dbg !1690
  %152 = bitcast %struct._IPADDR* %151 to i8*, !dbg !1688
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %148, i8* %152, i64 20, i32 4, i1 false), !dbg !1688
  br label %153, !dbg !1691

; <label>:153:                                    ; preds = %140, %135
  %154 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1692
  %155 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %154, i32 0, i32 29, !dbg !1693
  %156 = load i8*, i8** %155, align 8, !dbg !1693
  %157 = call noalias i8* @g_strdup(i8* %156), !dbg !1694
  %158 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1695
  %159 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %158, i32 0, i32 29, !dbg !1696
  store i8* %157, i8** %159, align 8, !dbg !1697
  %160 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1698
  %161 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %160, i32 0, i32 30, !dbg !1699
  %162 = load i8*, i8** %161, align 8, !dbg !1699
  %163 = call noalias i8* @g_strdup(i8* %162), !dbg !1700
  %164 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1701
  %165 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %164, i32 0, i32 30, !dbg !1702
  store i8* %163, i8** %165, align 8, !dbg !1703
  %166 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1704
  %167 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %166, i32 0, i32 28, !dbg !1705
  %168 = load i8, i8* %167, align 8, !dbg !1705
  %169 = lshr i8 %168, 2, !dbg !1705
  %170 = and i8 %169, 1, !dbg !1705
  %171 = zext i8 %170 to i32, !dbg !1705
  %172 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1706
  %173 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %172, i32 0, i32 28, !dbg !1707
  %174 = trunc i32 %171 to i8, !dbg !1708
  %175 = load i8, i8* %173, align 8, !dbg !1708
  %176 = and i8 %174, 1, !dbg !1708
  %177 = shl i8 %176, 2, !dbg !1708
  %178 = and i8 %175, -5, !dbg !1708
  %179 = or i8 %178, %177, !dbg !1708
  store i8 %179, i8* %173, align 8, !dbg !1708
  %180 = zext i8 %176 to i32, !dbg !1708
  %181 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1709
  %182 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %181, i32 0, i32 28, !dbg !1710
  %183 = load i8, i8* %182, align 8, !dbg !1710
  %184 = lshr i8 %183, 3, !dbg !1710
  %185 = and i8 %184, 1, !dbg !1710
  %186 = zext i8 %185 to i32, !dbg !1710
  %187 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1711
  %188 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %187, i32 0, i32 28, !dbg !1712
  %189 = trunc i32 %186 to i8, !dbg !1713
  %190 = load i8, i8* %188, align 8, !dbg !1713
  %191 = and i8 %189, 1, !dbg !1713
  %192 = shl i8 %191, 3, !dbg !1713
  %193 = and i8 %190, -9, !dbg !1713
  %194 = or i8 %193, %192, !dbg !1713
  store i8 %194, i8* %188, align 8, !dbg !1713
  %195 = zext i8 %191 to i32, !dbg !1713
  %196 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1714
  %197 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %196, i32 0, i32 28, !dbg !1715
  %198 = load i8, i8* %197, align 8, !dbg !1715
  %199 = lshr i8 %198, 4, !dbg !1715
  %200 = and i8 %199, 1, !dbg !1715
  %201 = zext i8 %200 to i32, !dbg !1715
  %202 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1716
  %203 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %202, i32 0, i32 28, !dbg !1717
  %204 = trunc i32 %201 to i8, !dbg !1718
  %205 = load i8, i8* %203, align 8, !dbg !1718
  %206 = and i8 %204, 1, !dbg !1718
  %207 = shl i8 %206, 4, !dbg !1718
  %208 = and i8 %205, -17, !dbg !1718
  %209 = or i8 %208, %207, !dbg !1718
  store i8 %209, i8* %203, align 8, !dbg !1718
  %210 = zext i8 %206 to i32, !dbg !1718
  %211 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1719
  %212 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %211, i32 0, i32 28, !dbg !1720
  %213 = load i8, i8* %212, align 8, !dbg !1720
  %214 = lshr i8 %213, 5, !dbg !1720
  %215 = and i8 %214, 1, !dbg !1720
  %216 = zext i8 %215 to i32, !dbg !1720
  %217 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1721
  %218 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %217, i32 0, i32 28, !dbg !1722
  %219 = trunc i32 %216 to i8, !dbg !1723
  %220 = load i8, i8* %218, align 8, !dbg !1723
  %221 = and i8 %219, 1, !dbg !1723
  %222 = shl i8 %221, 5, !dbg !1723
  %223 = and i8 %220, -33, !dbg !1723
  %224 = or i8 %223, %222, !dbg !1723
  store i8 %224, i8* %218, align 8, !dbg !1723
  %225 = zext i8 %221 to i32, !dbg !1723
  %226 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1724
  %227 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %226, i32 0, i32 19, !dbg !1725
  %228 = load i8*, i8** %227, align 8, !dbg !1725
  %229 = call noalias i8* @g_strdup(i8* %228), !dbg !1726
  %230 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1727
  %231 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %230, i32 0, i32 19, !dbg !1728
  store i8* %229, i8** %231, align 8, !dbg !1729
  %232 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1730
  %233 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %232, i32 0, i32 20, !dbg !1731
  %234 = load i8*, i8** %233, align 8, !dbg !1731
  %235 = call noalias i8* @g_strdup(i8* %234), !dbg !1732
  %236 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1733
  %237 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %236, i32 0, i32 20, !dbg !1734
  store i8* %235, i8** %237, align 8, !dbg !1735
  %238 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1736
  %239 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %238, i32 0, i32 28, !dbg !1737
  %240 = load i8, i8* %239, align 8, !dbg !1737
  %241 = lshr i8 %240, 6, !dbg !1737
  %242 = and i8 %241, 1, !dbg !1737
  %243 = zext i8 %242 to i32, !dbg !1737
  %244 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1738
  %245 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %244, i32 0, i32 28, !dbg !1739
  %246 = trunc i32 %243 to i8, !dbg !1740
  %247 = load i8, i8* %245, align 8, !dbg !1740
  %248 = and i8 %246, 1, !dbg !1740
  %249 = shl i8 %248, 6, !dbg !1740
  %250 = and i8 %247, -65, !dbg !1740
  %251 = or i8 %250, %249, !dbg !1740
  store i8 %251, i8* %245, align 8, !dbg !1740
  %252 = zext i8 %248 to i32, !dbg !1740
  %253 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1741
  %254 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %253, i32 0, i32 22, !dbg !1742
  %255 = load i8*, i8** %254, align 8, !dbg !1742
  %256 = call noalias i8* @g_strdup(i8* %255), !dbg !1743
  %257 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1744
  %258 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %257, i32 0, i32 22, !dbg !1745
  store i8* %256, i8** %258, align 8, !dbg !1746
  %259 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1747
  %260 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %259, i32 0, i32 23, !dbg !1748
  %261 = load i8*, i8** %260, align 8, !dbg !1748
  %262 = call noalias i8* @g_strdup(i8* %261), !dbg !1749
  %263 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1750
  %264 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %263, i32 0, i32 23, !dbg !1751
  store i8* %262, i8** %264, align 8, !dbg !1752
  %265 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1753
  %266 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %265, i32 0, i32 24, !dbg !1754
  %267 = load i8*, i8** %266, align 8, !dbg !1754
  %268 = call noalias i8* @g_strdup(i8* %267), !dbg !1755
  %269 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1756
  %270 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %269, i32 0, i32 24, !dbg !1757
  store i8* %268, i8** %270, align 8, !dbg !1758
  %271 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1759
  %272 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %271, i32 0, i32 25, !dbg !1760
  %273 = load i8*, i8** %272, align 8, !dbg !1760
  %274 = call noalias i8* @g_strdup(i8* %273), !dbg !1761
  %275 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1762
  %276 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %275, i32 0, i32 25, !dbg !1763
  store i8* %274, i8** %276, align 8, !dbg !1764
  %277 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1765
  %278 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %277, i32 0, i32 26, !dbg !1766
  %279 = load i8*, i8** %278, align 8, !dbg !1766
  %280 = call noalias i8* @g_strdup(i8* %279), !dbg !1767
  %281 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1768
  %282 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %281, i32 0, i32 26, !dbg !1769
  store i8* %280, i8** %282, align 8, !dbg !1770
  %283 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1771
  store %struct._SERVER_CONNECT_REC* %283, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1772
  br label %284, !dbg !1772

; <label>:284:                                    ; preds = %153, %13
  %285 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1773
  ret %struct._SERVER_CONNECT_REC* %285, !dbg !1773
}

declare %struct._SERVER_SETUP_REC* @server_setup_find(i8*, i32, i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

; Function Attrs: nounwind uwtable
define internal void @server_reconnect_add(%struct._SERVER_CONNECT_REC*, i64) #0 !dbg !1774 {
  %3 = alloca %struct._SERVER_CONNECT_REC*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.RECONNECT_REC*, align 8
  store %struct._SERVER_CONNECT_REC* %0, %struct._SERVER_CONNECT_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_CONNECT_REC** %3, metadata !1777, metadata !457), !dbg !1778
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !1779, metadata !457), !dbg !1780
  call void @llvm.dbg.declare(metadata %struct.RECONNECT_REC** %5, metadata !1781, metadata !457), !dbg !1782
  br label %6, !dbg !1783, !llvm.loop !1784

; <label>:6:                                      ; preds = %2
  %7 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1785
  %8 = bitcast %struct._SERVER_CONNECT_REC* %7 to i8*, !dbg !1785
  %9 = call i8* @module_check_cast(i8* %8, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0)), !dbg !1789
  %10 = bitcast i8* %9 to %struct._SERVER_CONNECT_REC*, !dbg !1790
  %11 = icmp ne %struct._SERVER_CONNECT_REC* %10, null, !dbg !1790
  br i1 %11, label %12, label %13, !dbg !1791

; <label>:12:                                     ; preds = %6
  br i1 false, label %15, label %14, !dbg !1792

; <label>:13:                                     ; preds = %6
  br i1 false, label %14, label %15, !dbg !1794

; <label>:14:                                     ; preds = %13, %12
  br label %16, !dbg !1796

; <label>:15:                                     ; preds = %13, %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.server_reconnect_add, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i32 0, i32 0)), !dbg !1799
  br label %40, !dbg !1802

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !1803

; <label>:17:                                     ; preds = %16
  %18 = call noalias i8* @g_malloc_n(i64 1, i64 24), !dbg !1805
  %19 = bitcast i8* %18 to %struct.RECONNECT_REC*, !dbg !1806
  store %struct.RECONNECT_REC* %19, %struct.RECONNECT_REC** %5, align 8, !dbg !1807
  %20 = load i32, i32* @last_reconnect_tag, align 4, !dbg !1808
  %21 = add nsw i32 %20, 1, !dbg !1808
  store i32 %21, i32* @last_reconnect_tag, align 4, !dbg !1808
  %22 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %5, align 8, !dbg !1809
  %23 = getelementptr inbounds %struct.RECONNECT_REC, %struct.RECONNECT_REC* %22, i32 0, i32 0, !dbg !1810
  store i32 %21, i32* %23, align 8, !dbg !1811
  %24 = load i64, i64* %4, align 8, !dbg !1812
  %25 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %5, align 8, !dbg !1813
  %26 = getelementptr inbounds %struct.RECONNECT_REC, %struct.RECONNECT_REC* %25, i32 0, i32 1, !dbg !1814
  store i64 %24, i64* %26, align 8, !dbg !1815
  %27 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1816
  %28 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %5, align 8, !dbg !1817
  %29 = getelementptr inbounds %struct.RECONNECT_REC, %struct.RECONNECT_REC* %28, i32 0, i32 2, !dbg !1818
  store %struct._SERVER_CONNECT_REC* %27, %struct._SERVER_CONNECT_REC** %29, align 8, !dbg !1819
  %30 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1820
  %31 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %30, i32 0, i32 28, !dbg !1821
  %32 = load i8, i8* %31, align 8, !dbg !1822
  %33 = and i8 %32, -3, !dbg !1822
  %34 = or i8 %33, 2, !dbg !1822
  store i8 %34, i8* %31, align 8, !dbg !1822
  %35 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1823
  call void @server_connect_ref(%struct._SERVER_CONNECT_REC* %35), !dbg !1824
  %36 = load %struct._GSList*, %struct._GSList** @reconnects, align 8, !dbg !1825
  %37 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %5, align 8, !dbg !1826
  %38 = bitcast %struct.RECONNECT_REC* %37 to i8*, !dbg !1826
  %39 = call %struct._GSList* @g_slist_append(%struct._GSList* %36, i8* %38), !dbg !1827
  store %struct._GSList* %39, %struct._GSList** @reconnects, align 8, !dbg !1828
  br label %40, !dbg !1829

; <label>:40:                                     ; preds = %17, %15
  ret void, !dbg !1830
}

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sserver_connect(%struct._SERVER_SETUP_REC*, %struct._SERVER_CONNECT_REC*) #0 !dbg !1832 {
  %3 = alloca %struct._SERVER_SETUP_REC*, align 8
  %4 = alloca %struct._SERVER_CONNECT_REC*, align 8
  store %struct._SERVER_SETUP_REC* %0, %struct._SERVER_SETUP_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_SETUP_REC** %3, metadata !1835, metadata !457), !dbg !1836
  store %struct._SERVER_CONNECT_REC* %1, %struct._SERVER_CONNECT_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_CONNECT_REC** %4, metadata !1837, metadata !457), !dbg !1838
  %5 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %3, align 8, !dbg !1839
  %6 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %5, i32 0, i32 3, !dbg !1840
  %7 = load i16, i16* %6, align 8, !dbg !1840
  %8 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1841
  %9 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %8, i32 0, i32 8, !dbg !1842
  store i16 %7, i16* %9, align 8, !dbg !1843
  %10 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %3, align 8, !dbg !1844
  %11 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %10, i32 0, i32 4, !dbg !1845
  %12 = load i8*, i8** %11, align 8, !dbg !1845
  %13 = call noalias i8* @g_strdup(i8* %12), !dbg !1846
  %14 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1847
  %15 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %14, i32 0, i32 10, !dbg !1848
  store i8* %13, i8** %15, align 8, !dbg !1849
  %16 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1850
  %17 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %16, i32 0, i32 11, !dbg !1852
  %18 = load i32, i32* %17, align 8, !dbg !1852
  %19 = icmp eq i32 %18, 0, !dbg !1853
  br i1 %19, label %20, label %26, !dbg !1854

; <label>:20:                                     ; preds = %2
  %21 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %3, align 8, !dbg !1855
  %22 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %21, i32 0, i32 5, !dbg !1857
  %23 = load i32, i32* %22, align 8, !dbg !1857
  %24 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1858
  %25 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %24, i32 0, i32 11, !dbg !1859
  store i32 %23, i32* %25, align 8, !dbg !1860
  br label %26, !dbg !1858

; <label>:26:                                     ; preds = %20, %2
  %27 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1861
  %28 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %3, align 8, !dbg !1862
  call void @server_setup_fill_reconn(%struct._SERVER_CONNECT_REC* %27, %struct._SERVER_SETUP_REC* %28), !dbg !1863
  %29 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1864
  %30 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %3, align 8, !dbg !1865
  %31 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %30, i32 0, i32 20, !dbg !1866
  %32 = load i64, i64* %31, align 8, !dbg !1866
  %33 = load i32, i32* @reconnect_time, align 4, !dbg !1867
  %34 = sext i32 %33 to i64, !dbg !1867
  %35 = add nsw i64 %32, %34, !dbg !1868
  call void @server_reconnect_add(%struct._SERVER_CONNECT_REC* %29, i64 %35), !dbg !1869
  %36 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1870
  call void @server_connect_unref(%struct._SERVER_CONNECT_REC* %36), !dbg !1871
  ret void, !dbg !1872
}

declare i32 @module_get_uniq_id(i8*, i32) #2

declare noalias i8* @g_malloc_n(i64, i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

declare void @server_setup_fill_reconn(%struct._SERVER_CONNECT_REC*, %struct._SERVER_SETUP_REC*) #2

declare i32 @cmd_get_params(i8*, i8**, i32, ...) #2

declare i32 @g_strcmp0(i8*, i8*) #2

declare %struct._SERVER_REC* @server_find_tag(i8*) #2

declare noalias i8* @g_strconcat(i8*, ...) #2

declare void @cmd_params_free(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @reconnect_all() #0 !dbg !1873 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca %struct._SERVER_CONNECT_REC*, align 8
  %3 = alloca %struct.RECONNECT_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !1874, metadata !457), !dbg !1875
  call void @llvm.dbg.declare(metadata %struct._SERVER_CONNECT_REC** %2, metadata !1876, metadata !457), !dbg !1877
  call void @llvm.dbg.declare(metadata %struct.RECONNECT_REC** %3, metadata !1878, metadata !457), !dbg !1879
  store %struct._GSList* null, %struct._GSList** %1, align 8, !dbg !1880
  br label %4, !dbg !1881

; <label>:4:                                      ; preds = %7, %0
  %5 = load %struct._GSList*, %struct._GSList** @reconnects, align 8, !dbg !1882
  %6 = icmp ne %struct._GSList* %5, null, !dbg !1884
  br i1 %6, label %7, label %22, !dbg !1885

; <label>:7:                                      ; preds = %4
  %8 = load %struct._GSList*, %struct._GSList** @reconnects, align 8, !dbg !1886
  %9 = getelementptr inbounds %struct._GSList, %struct._GSList* %8, i32 0, i32 0, !dbg !1888
  %10 = load i8*, i8** %9, align 8, !dbg !1888
  %11 = bitcast i8* %10 to %struct.RECONNECT_REC*, !dbg !1886
  store %struct.RECONNECT_REC* %11, %struct.RECONNECT_REC** %3, align 8, !dbg !1889
  %12 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1890
  %13 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %3, align 8, !dbg !1891
  %14 = getelementptr inbounds %struct.RECONNECT_REC, %struct.RECONNECT_REC* %13, i32 0, i32 2, !dbg !1892
  %15 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %14, align 8, !dbg !1892
  %16 = bitcast %struct._SERVER_CONNECT_REC* %15 to i8*, !dbg !1891
  %17 = call %struct._GSList* @g_slist_append(%struct._GSList* %12, i8* %16), !dbg !1893
  store %struct._GSList* %17, %struct._GSList** %1, align 8, !dbg !1894
  %18 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %3, align 8, !dbg !1895
  %19 = getelementptr inbounds %struct.RECONNECT_REC, %struct.RECONNECT_REC* %18, i32 0, i32 2, !dbg !1896
  %20 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %19, align 8, !dbg !1896
  call void @server_connect_ref(%struct._SERVER_CONNECT_REC* %20), !dbg !1897
  %21 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %3, align 8, !dbg !1898
  call void @server_reconnect_destroy(%struct.RECONNECT_REC* %21), !dbg !1899
  br label %4, !dbg !1900, !llvm.loop !1902

; <label>:22:                                     ; preds = %4
  br label %23, !dbg !1903

; <label>:23:                                     ; preds = %26, %22
  %24 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1904
  %25 = icmp ne %struct._GSList* %24, null, !dbg !1905
  br i1 %25, label %26, label %38, !dbg !1906

; <label>:26:                                     ; preds = %23
  %27 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1907
  %28 = getelementptr inbounds %struct._GSList, %struct._GSList* %27, i32 0, i32 0, !dbg !1909
  %29 = load i8*, i8** %28, align 8, !dbg !1909
  %30 = bitcast i8* %29 to %struct._SERVER_CONNECT_REC*, !dbg !1907
  store %struct._SERVER_CONNECT_REC* %30, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !1910
  %31 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !1911
  %32 = call %struct._SERVER_REC* @server_connect(%struct._SERVER_CONNECT_REC* %31), !dbg !1912
  %33 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !1913
  call void @server_connect_unref(%struct._SERVER_CONNECT_REC* %33), !dbg !1914
  %34 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1915
  %35 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !1916
  %36 = bitcast %struct._SERVER_CONNECT_REC* %35 to i8*, !dbg !1916
  %37 = call %struct._GSList* @g_slist_remove(%struct._GSList* %34, i8* %36), !dbg !1917
  store %struct._GSList* %37, %struct._GSList** %1, align 8, !dbg !1918
  br label %23, !dbg !1919, !llvm.loop !1920

; <label>:38:                                     ; preds = %23
  ret void, !dbg !1921
}

declare void @signal_stop() #2

declare i32 @g_ascii_strncasecmp(i8*, i8*, i64) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

; Function Attrs: nounwind uwtable
define internal %struct.RECONNECT_REC* @reconnect_find_tag(i32) #0 !dbg !1922 {
  %2 = alloca %struct.RECONNECT_REC*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct.RECONNECT_REC*, align 8
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1925, metadata !457), !dbg !1926
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !1927, metadata !457), !dbg !1928
  %6 = load %struct._GSList*, %struct._GSList** @reconnects, align 8, !dbg !1929
  store %struct._GSList* %6, %struct._GSList** %4, align 8, !dbg !1931
  br label %7, !dbg !1932

; <label>:7:                                      ; preds = %23, %1
  %8 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1933
  %9 = icmp ne %struct._GSList* %8, null, !dbg !1936
  br i1 %9, label %10, label %27, !dbg !1937

; <label>:10:                                     ; preds = %7
  call void @llvm.dbg.declare(metadata %struct.RECONNECT_REC** %5, metadata !1938, metadata !457), !dbg !1940
  %11 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1941
  %12 = getelementptr inbounds %struct._GSList, %struct._GSList* %11, i32 0, i32 0, !dbg !1942
  %13 = load i8*, i8** %12, align 8, !dbg !1942
  %14 = bitcast i8* %13 to %struct.RECONNECT_REC*, !dbg !1941
  store %struct.RECONNECT_REC* %14, %struct.RECONNECT_REC** %5, align 8, !dbg !1940
  %15 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %5, align 8, !dbg !1943
  %16 = getelementptr inbounds %struct.RECONNECT_REC, %struct.RECONNECT_REC* %15, i32 0, i32 0, !dbg !1945
  %17 = load i32, i32* %16, align 8, !dbg !1945
  %18 = load i32, i32* %3, align 4, !dbg !1946
  %19 = icmp eq i32 %17, %18, !dbg !1947
  br i1 %19, label %20, label %22, !dbg !1948

; <label>:20:                                     ; preds = %10
  %21 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %5, align 8, !dbg !1949
  store %struct.RECONNECT_REC* %21, %struct.RECONNECT_REC** %2, align 8, !dbg !1950
  br label %28, !dbg !1950

; <label>:22:                                     ; preds = %10
  br label %23, !dbg !1951

; <label>:23:                                     ; preds = %22
  %24 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1952
  %25 = getelementptr inbounds %struct._GSList, %struct._GSList* %24, i32 0, i32 1, !dbg !1954
  %26 = load %struct._GSList*, %struct._GSList** %25, align 8, !dbg !1954
  store %struct._GSList* %26, %struct._GSList** %4, align 8, !dbg !1955
  br label %7, !dbg !1956, !llvm.loop !1957

; <label>:27:                                     ; preds = %7
  store %struct.RECONNECT_REC* null, %struct.RECONNECT_REC** %2, align 8, !dbg !1959
  br label %28, !dbg !1959

; <label>:28:                                     ; preds = %27, %20
  %29 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %2, align 8, !dbg !1960
  ret %struct.RECONNECT_REC* %29, !dbg !1960
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!449, !450}
!llvm.ident = !{!451}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !56, globals: !442)
!1 = !DIFile(filename: "line77-servers-reconnect.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10, !15, !24, !35}
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
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 25, size: 32, align: 32, elements: !37)
!36 = !DIFile(filename: "commands.h", directory: "/home/lichi/Desktop/irssi/task1")
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55}
!38 = !DIEnumerator(name: "CMDERR_OPTION_UNKNOWN", value: -3)
!39 = !DIEnumerator(name: "CMDERR_OPTION_AMBIGUOUS", value: -2)
!40 = !DIEnumerator(name: "CMDERR_OPTION_ARG_MISSING", value: -1)
!41 = !DIEnumerator(name: "CMDERR_UNKNOWN", value: 0)
!42 = !DIEnumerator(name: "CMDERR_AMBIGUOUS", value: 1)
!43 = !DIEnumerator(name: "CMDERR_ERRNO", value: 2)
!44 = !DIEnumerator(name: "CMDERR_NOT_ENOUGH_PARAMS", value: 3)
!45 = !DIEnumerator(name: "CMDERR_NOT_CONNECTED", value: 4)
!46 = !DIEnumerator(name: "CMDERR_NOT_JOINED", value: 5)
!47 = !DIEnumerator(name: "CMDERR_CHAN_NOT_FOUND", value: 6)
!48 = !DIEnumerator(name: "CMDERR_CHAN_NOT_SYNCED", value: 7)
!49 = !DIEnumerator(name: "CMDERR_ILLEGAL_PROTO", value: 8)
!50 = !DIEnumerator(name: "CMDERR_NOT_GOOD_IDEA", value: 9)
!51 = !DIEnumerator(name: "CMDERR_INVALID_TIME", value: 10)
!52 = !DIEnumerator(name: "CMDERR_INVALID_CHARSET", value: 11)
!53 = !DIEnumerator(name: "CMDERR_EVAL_MAX_RECURSE", value: 12)
!54 = !DIEnumerator(name: "CMDERR_PROGRAM_NOT_FOUND", value: 13)
!55 = !DIEnumerator(name: "CMDERR_NO_SERVER_DEFINED", value: 14)
!56 = !{!57, !58, !62, !64, !72, !79, !111, !90, !434, !71, !384}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !60, line: 46, baseType: !61)
!60 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!61 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{!68, !71}
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !60, line: 50, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !60, line: 49, baseType: !70)
!70 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !60, line: 77, baseType: !57)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !73, line: 9, baseType: !74)
!73 = !DIFile(filename: "signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DISubroutineType(types: !76)
!76 = !{null, !77, !77, !77, !77, !77, !77}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !81, line: 107, baseType: !82)
!81 = !DIFile(filename: "../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !83, line: 30, size: 2240, align: 64, elements: !84)
!83 = !DIFile(filename: "servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!84 = !{!85, !87, !88, !89, !339, !344, !345, !346, !347, !348, !349, !350, !351, !352, !356, !357, !361, !362, !363, !367, !372, !373, !374, !375, !376, !377, !378, !379, !386, !387, !388, !389, !390, !394, !398, !402, !406, !410, !415, !422, !429, !433}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !82, file: !86, line: 3, baseType: !70, size: 32, align: 32)
!86 = !DIFile(filename: "server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!87 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !82, file: !86, line: 4, baseType: !70, size: 32, align: 32, offset: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !82, file: !86, line: 6, baseType: !70, size: 32, align: 32, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !82, file: !86, line: 8, baseType: !90, size: 64, align: 64, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !81, line: 113, baseType: !92)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !83, line: 25, size: 1920, align: 64, elements: !93)
!93 = !{!94, !96, !97, !98, !100, !101, !102, !103, !104, !106, !107, !108, !109, !110, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !92, file: !95, line: 3, baseType: !70, size: 32, align: 32)
!95 = !DIFile(filename: "server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!96 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !92, file: !95, line: 4, baseType: !70, size: 32, align: 32, offset: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !92, file: !95, line: 6, baseType: !70, size: 32, align: 32, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !92, file: !95, line: 9, baseType: !99, size: 64, align: 64, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !92, file: !95, line: 10, baseType: !70, size: 32, align: 32, offset: 192)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !92, file: !95, line: 11, baseType: !99, size: 64, align: 64, offset: 256)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !92, file: !95, line: 11, baseType: !99, size: 64, align: 64, offset: 320)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !92, file: !95, line: 11, baseType: !99, size: 64, align: 64, offset: 384)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !92, file: !95, line: 13, baseType: !105, size: 16, align: 16, offset: 448)
!105 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !92, file: !95, line: 14, baseType: !99, size: 64, align: 64, offset: 512)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !92, file: !95, line: 15, baseType: !99, size: 64, align: 64, offset: 576)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !92, file: !95, line: 16, baseType: !70, size: 32, align: 32, offset: 640)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !92, file: !95, line: 17, baseType: !99, size: 64, align: 64, offset: 704)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !92, file: !95, line: 19, baseType: !111, size: 64, align: 64, offset: 768)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !81, line: 99, baseType: !113)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !114, line: 22, size: 160, align: 32, elements: !115)
!114 = !DIFile(filename: "network.h", directory: "/home/lichi/Desktop/irssi/task1")
!115 = !{!116, !117}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !113, file: !114, line: 23, baseType: !105, size: 16, align: 16)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !113, file: !114, line: 24, baseType: !118, size: 128, align: 32, offset: 32)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !119, line: 211, size: 128, align: 32, elements: !120)
!119 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/irssi/task1")
!120 = !{!121}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !118, file: !119, line: 220, baseType: !122, size: 128, align: 32)
!122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !118, file: !119, line: 213, size: 128, align: 32, elements: !123)
!123 = !{!124, !131, !136}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !122, file: !119, line: 215, baseType: !125, size: 128, align: 8)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 128, align: 8, elements: !129)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !127, line: 48, baseType: !128)
!127 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/irssi/task1")
!128 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!129 = !{!130}
!130 = !DISubrange(count: 16)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !122, file: !119, line: 217, baseType: !132, size: 128, align: 16)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 128, align: 16, elements: !134)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !127, line: 49, baseType: !105)
!134 = !{!135}
!135 = !DISubrange(count: 8)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !122, file: !119, line: 218, baseType: !137, size: 128, align: 32)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 128, align: 32, elements: !140)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !127, line: 51, baseType: !139)
!139 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!140 = !{!141}
!141 = !DISubrange(count: 4)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !92, file: !95, line: 19, baseType: !111, size: 64, align: 64, offset: 832)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !92, file: !95, line: 21, baseType: !99, size: 64, align: 64, offset: 896)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !92, file: !95, line: 22, baseType: !99, size: 64, align: 64, offset: 960)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !92, file: !95, line: 23, baseType: !99, size: 64, align: 64, offset: 1024)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !92, file: !95, line: 24, baseType: !99, size: 64, align: 64, offset: 1088)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !92, file: !95, line: 26, baseType: !99, size: 64, align: 64, offset: 1152)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !92, file: !95, line: 27, baseType: !99, size: 64, align: 64, offset: 1216)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !92, file: !95, line: 28, baseType: !99, size: 64, align: 64, offset: 1280)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !92, file: !95, line: 29, baseType: !99, size: 64, align: 64, offset: 1344)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !92, file: !95, line: 30, baseType: !99, size: 64, align: 64, offset: 1408)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !92, file: !95, line: 31, baseType: !99, size: 64, align: 64, offset: 1472)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !92, file: !95, line: 32, baseType: !99, size: 64, align: 64, offset: 1536)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !92, file: !95, line: 33, baseType: !99, size: 64, align: 64, offset: 1600)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !92, file: !95, line: 35, baseType: !156, size: 64, align: 64, offset: 1664)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, align: 64)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !159)
!159 = !{!160, !161, !296, !297, !302, !303, !304, !305, !306, !315, !316, !317, !321, !322, !323, !324, !325, !326, !327, !328}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !158, file: !4, line: 100, baseType: !69, size: 32, align: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !158, file: !4, line: 101, baseType: !162, size: 64, align: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !164)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !165)
!165 = !{!166, !187, !193, !200, !204, !283, !287, !292}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !164, file: !4, line: 133, baseType: !167, size: 64, align: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64, align: 64)
!168 = !DISubroutineType(types: !169)
!169 = !{!170, !156, !58, !171, !174, !175}
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !172, line: 66, baseType: !173)
!172 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!173 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64, align: 64)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64, align: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !178, line: 42, baseType: !179)
!178 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !178, line: 44, size: 128, align: 64, elements: !180)
!180 = !{!181, !185, !186}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !179, file: !178, line: 46, baseType: !182, size: 32, align: 32)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !183, line: 36, baseType: !184)
!183 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !172, line: 45, baseType: !139)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !179, file: !178, line: 47, baseType: !69, size: 32, align: 32, offset: 32)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !179, file: !178, line: 48, baseType: !58, size: 64, align: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !164, file: !4, line: 138, baseType: !188, size: 64, align: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, align: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!170, !156, !191, !171, !174, !175}
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !164, file: !4, line: 143, baseType: !194, size: 64, align: 64, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!170, !156, !197, !199, !175}
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !172, line: 51, baseType: !198)
!198 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !164, file: !4, line: 147, baseType: !201, size: 64, align: 64, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!170, !156, !175}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !164, file: !4, line: 149, baseType: !205, size: 64, align: 64, offset: 256)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{!208, !156, !282}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !210)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !211)
!211 = !{!212, !213, !229, !258, !260, !264, !265, !266, !267, !275, !276, !277, !278}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !210, file: !16, line: 174, baseType: !71, size: 64, align: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !210, file: !16, line: 175, baseType: !214, size: 64, align: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64, align: 64)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !216)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !217)
!217 = !{!218, !222, !223}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !216, file: !16, line: 198, baseType: !219, size: 64, align: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64, align: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !71}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !216, file: !16, line: 199, baseType: !219, size: 64, align: 64, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !216, file: !16, line: 200, baseType: !224, size: 64, align: 64, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64, align: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{null, !71, !208, !227, !228}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !210, file: !16, line: 177, baseType: !230, size: 64, align: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !233)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !234)
!234 = !{!235, !240, !244, !248, !252, !253}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !233, file: !16, line: 216, baseType: !236, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64, align: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!68, !208, !239}
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !233, file: !16, line: 218, baseType: !241, size: 64, align: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, align: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{!68, !208}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !233, file: !16, line: 219, baseType: !245, size: 64, align: 64, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, align: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{!68, !208, !64, !71}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !233, file: !16, line: 222, baseType: !249, size: 64, align: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64, align: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{null, !208}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !233, file: !16, line: 226, baseType: !64, size: 64, align: 64, offset: 256)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !233, file: !16, line: 227, baseType: !254, size: 64, align: 64, offset: 320)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !255)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64, align: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{null}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !210, file: !16, line: 178, baseType: !259, size: 32, align: 32, offset: 192)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !60, line: 55, baseType: !139)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !210, file: !16, line: 180, baseType: !261, size: 64, align: 64, offset: 256)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64, align: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !263)
!263 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !210, file: !16, line: 182, baseType: !69, size: 32, align: 32, offset: 320)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !210, file: !16, line: 183, baseType: !259, size: 32, align: 32, offset: 352)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !210, file: !16, line: 184, baseType: !259, size: 32, align: 32, offset: 384)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !210, file: !16, line: 186, baseType: !268, size: 64, align: 64, offset: 448)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64, align: 64)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !270, line: 37, baseType: !271)
!270 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !270, line: 39, size: 128, align: 64, elements: !272)
!272 = !{!273, !274}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !271, file: !270, line: 41, baseType: !71, size: 64, align: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !271, file: !270, line: 42, baseType: !268, size: 64, align: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !210, file: !16, line: 188, baseType: !208, size: 64, align: 64, offset: 512)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !210, file: !16, line: 189, baseType: !208, size: 64, align: 64, offset: 576)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !210, file: !16, line: 191, baseType: !99, size: 64, align: 64, offset: 640)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !210, file: !16, line: 193, baseType: !279, size: 64, align: 64, offset: 704)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !281)
!281 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !164, file: !4, line: 151, baseType: !284, size: 64, align: 64, offset: 320)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64, align: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{null, !156}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !164, file: !4, line: 152, baseType: !288, size: 64, align: 64, offset: 384)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64, align: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{!170, !156, !291, !175}
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !164, file: !4, line: 155, baseType: !293, size: 64, align: 64, offset: 448)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64, align: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!291, !156}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !158, file: !4, line: 103, baseType: !58, size: 64, align: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !158, file: !4, line: 104, baseType: !298, size: 64, align: 64, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !299, line: 77, baseType: !300)
!299 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!301 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !299, line: 77, flags: DIFlagFwdDecl)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !158, file: !4, line: 105, baseType: !298, size: 64, align: 64, offset: 256)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !158, file: !4, line: 106, baseType: !58, size: 64, align: 64, offset: 320)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !158, file: !4, line: 107, baseType: !259, size: 32, align: 32, offset: 384)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !158, file: !4, line: 109, baseType: !171, size: 64, align: 64, offset: 448)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !158, file: !4, line: 110, baseType: !307, size: 64, align: 64, offset: 512)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64, align: 64)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !309, line: 39, baseType: !310)
!309 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !309, line: 41, size: 192, align: 64, elements: !311)
!311 = !{!312, !313, !314}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !310, file: !309, line: 43, baseType: !58, size: 64, align: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !310, file: !309, line: 44, baseType: !171, size: 64, align: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !310, file: !309, line: 45, baseType: !171, size: 64, align: 64, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !158, file: !4, line: 111, baseType: !307, size: 64, align: 64, offset: 576)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !158, file: !4, line: 112, baseType: !307, size: 64, align: 64, offset: 640)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !158, file: !4, line: 113, baseType: !318, size: 48, align: 8, offset: 704)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 48, align: 8, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 6)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !158, file: !4, line: 117, baseType: !259, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !158, file: !4, line: 118, baseType: !259, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !158, file: !4, line: 119, baseType: !259, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !158, file: !4, line: 120, baseType: !259, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !158, file: !4, line: 121, baseType: !259, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !158, file: !4, line: 122, baseType: !259, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !158, file: !4, line: 124, baseType: !71, size: 64, align: 64, offset: 768)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !158, file: !4, line: 125, baseType: !71, size: 64, align: 64, offset: 832)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !92, file: !95, line: 38, baseType: !139, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !92, file: !95, line: 39, baseType: !139, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !92, file: !95, line: 40, baseType: !139, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !92, file: !95, line: 41, baseType: !139, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !92, file: !95, line: 42, baseType: !139, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !92, file: !95, line: 43, baseType: !139, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !92, file: !95, line: 44, baseType: !139, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !92, file: !95, line: 45, baseType: !139, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !92, file: !95, line: 46, baseType: !99, size: 64, align: 64, offset: 1792)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !92, file: !95, line: 47, baseType: !99, size: 64, align: 64, offset: 1856)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !82, file: !86, line: 9, baseType: !340, size: 64, align: 64, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !341, line: 75, baseType: !342)
!341 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !343, line: 139, baseType: !198)
!343 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!344 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !82, file: !86, line: 10, baseType: !340, size: 64, align: 64, offset: 256)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !82, file: !86, line: 12, baseType: !99, size: 64, align: 64, offset: 320)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !82, file: !86, line: 13, baseType: !99, size: 64, align: 64, offset: 384)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !82, file: !86, line: 15, baseType: !139, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !82, file: !86, line: 16, baseType: !139, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !82, file: !86, line: 17, baseType: !139, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !82, file: !86, line: 18, baseType: !139, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !82, file: !86, line: 19, baseType: !139, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !82, file: !86, line: 21, baseType: !353, size: 64, align: 64, offset: 512)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64, align: 64)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !81, line: 102, baseType: !355)
!355 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !81, line: 102, flags: DIFlagFwdDecl)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !82, file: !86, line: 22, baseType: !70, size: 32, align: 32, offset: 576)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !82, file: !86, line: 25, baseType: !358, size: 128, align: 64, offset: 640)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 128, align: 64, elements: !359)
!359 = !{!360}
!360 = !DISubrange(count: 2)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !82, file: !86, line: 26, baseType: !70, size: 32, align: 32, offset: 768)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !82, file: !86, line: 27, baseType: !70, size: 32, align: 32, offset: 800)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !82, file: !86, line: 29, baseType: !364, size: 64, align: 64, offset: 832)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64, align: 64)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !81, line: 103, baseType: !366)
!366 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !81, line: 103, flags: DIFlagFwdDecl)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !82, file: !86, line: 30, baseType: !368, size: 64, align: 64, offset: 896)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !370, line: 37, baseType: !371)
!370 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!371 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !370, line: 37, flags: DIFlagFwdDecl)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !82, file: !86, line: 32, baseType: !99, size: 64, align: 64, offset: 960)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !82, file: !86, line: 33, baseType: !99, size: 64, align: 64, offset: 1024)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !82, file: !86, line: 34, baseType: !99, size: 64, align: 64, offset: 1088)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !82, file: !86, line: 35, baseType: !139, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !82, file: !86, line: 36, baseType: !139, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !82, file: !86, line: 37, baseType: !139, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !82, file: !86, line: 38, baseType: !139, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !82, file: !86, line: 40, baseType: !380, size: 128, align: 64, offset: 1216)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !60, line: 504, baseType: !381)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !60, line: 506, size: 128, align: 64, elements: !382)
!382 = !{!383, !385}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !381, file: !60, line: 508, baseType: !384, size: 64, align: 64)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !60, line: 48, baseType: !198)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !381, file: !60, line: 509, baseType: !384, size: 64, align: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !82, file: !86, line: 41, baseType: !340, size: 64, align: 64, offset: 1344)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !82, file: !86, line: 42, baseType: !70, size: 32, align: 32, offset: 1408)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !82, file: !86, line: 44, baseType: !268, size: 64, align: 64, offset: 1472)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !82, file: !86, line: 45, baseType: !268, size: 64, align: 64, offset: 1536)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !82, file: !86, line: 53, baseType: !391, size: 64, align: 64, offset: 1600)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64, align: 64)
!392 = !DISubroutineType(types: !393)
!393 = !{null, !79, !62, !70}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !82, file: !86, line: 55, baseType: !395, size: 64, align: 64, offset: 1664)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64, align: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{!70, !79, !61}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !82, file: !86, line: 57, baseType: !399, size: 64, align: 64, offset: 1728)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64, align: 64)
!400 = !DISubroutineType(types: !401)
!401 = !{!70, !79, !62}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !82, file: !86, line: 60, baseType: !403, size: 64, align: 64, offset: 1792)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64, align: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{!62, !79}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !82, file: !86, line: 62, baseType: !407, size: 64, align: 64, offset: 1856)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64, align: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{null, !79, !62, !62, !70}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !82, file: !86, line: 65, baseType: !411, size: 64, align: 64, offset: 1920)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64, align: 64)
!412 = !DISubroutineType(types: !413)
!413 = !{!414, !79, !62, !62}
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !82, file: !86, line: 69, baseType: !416, size: 64, align: 64, offset: 1984)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64, align: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{!419, !79, !62}
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64, align: 64)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !81, line: 109, baseType: !421)
!421 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !81, line: 109, flags: DIFlagFwdDecl)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !82, file: !86, line: 70, baseType: !423, size: 64, align: 64, offset: 2048)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64, align: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!426, !79, !62}
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64, align: 64)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !81, line: 110, baseType: !428)
!428 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !81, line: 110, flags: DIFlagFwdDecl)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !82, file: !86, line: 71, baseType: !430, size: 64, align: 64, offset: 2112)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64, align: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{!70, !62, !62}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !82, file: !86, line: 73, baseType: !430, size: 64, align: 64, offset: 2176)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64, align: 64)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "RECONNECT_REC", file: !436, line: 13, baseType: !437)
!436 = !DIFile(filename: "servers-reconnect.h", directory: "/home/lichi/Desktop/irssi/task1")
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !436, line: 8, size: 192, align: 64, elements: !438)
!438 = !{!439, !440, !441}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !437, file: !436, line: 9, baseType: !70, size: 32, align: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "next_connect", scope: !437, file: !436, line: 10, baseType: !340, size: 64, align: 64, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !437, file: !436, line: 12, baseType: !90, size: 64, align: 64, offset: 128)
!442 = !{!443, !445, !446, !447, !448}
!443 = distinct !DIGlobalVariable(name: "reconnects", scope: !0, file: !444, line: 33, type: !268, isLocal: false, isDefinition: true, variable: %struct._GSList** @reconnects)
!444 = !DIFile(filename: "servers-reconnect.c", directory: "/home/lichi/Desktop/irssi/task1")
!445 = distinct !DIGlobalVariable(name: "last_reconnect_tag", scope: !0, file: !444, line: 34, type: !70, isLocal: true, isDefinition: true, variable: i32* @last_reconnect_tag)
!446 = distinct !DIGlobalVariable(name: "reconnect_timeout_tag", scope: !0, file: !444, line: 35, type: !70, isLocal: true, isDefinition: true, variable: i32* @reconnect_timeout_tag)
!447 = distinct !DIGlobalVariable(name: "connect_timeout", scope: !0, file: !444, line: 37, type: !70, isLocal: true, isDefinition: true, variable: i32* @connect_timeout)
!448 = distinct !DIGlobalVariable(name: "reconnect_time", scope: !0, file: !444, line: 36, type: !70, isLocal: true, isDefinition: true, variable: i32* @reconnect_time)
!449 = !{i32 2, !"Dwarf Version", i32 4}
!450 = !{i32 2, !"Debug Info Version", i32 3}
!451 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!452 = distinct !DISubprogram(name: "reconnect_save_status", scope: !444, file: !444, line: 39, type: !453, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !455)
!453 = !DISubroutineType(types: !454)
!454 = !{null, !90, !79}
!455 = !{}
!456 = !DILocalVariable(name: "conn", arg: 1, scope: !452, file: !444, line: 39, type: !90)
!457 = !DIExpression()
!458 = !DILocation(line: 39, column: 48, scope: !452)
!459 = !DILocalVariable(name: "server", arg: 2, scope: !452, file: !444, line: 39, type: !79)
!460 = !DILocation(line: 39, column: 66, scope: !452)
!461 = !DILocation(line: 41, column: 16, scope: !452)
!462 = !DILocation(line: 41, column: 22, scope: !452)
!463 = !DILocation(line: 41, column: 9, scope: !452)
!464 = !DILocation(line: 42, column: 23, scope: !452)
!465 = !DILocation(line: 42, column: 31, scope: !452)
!466 = !DILocation(line: 42, column: 14, scope: !452)
!467 = !DILocation(line: 42, column: 2, scope: !452)
!468 = !DILocation(line: 42, column: 8, scope: !452)
!469 = !DILocation(line: 42, column: 12, scope: !452)
!470 = !DILocation(line: 44, column: 9, scope: !452)
!471 = !DILocation(line: 44, column: 15, scope: !452)
!472 = !DILocation(line: 44, column: 2, scope: !452)
!473 = !DILocation(line: 45, column: 23, scope: !452)
!474 = !DILocation(line: 45, column: 31, scope: !452)
!475 = !DILocation(line: 45, column: 22, scope: !452)
!476 = !DILocation(line: 45, column: 22, scope: !477)
!477 = !DILexicalBlockFile(scope: !452, file: !444, discriminator: 1)
!478 = !DILocation(line: 46, column: 12, scope: !452)
!479 = !DILocation(line: 46, column: 20, scope: !452)
!480 = !DILocation(line: 46, column: 3, scope: !452)
!481 = !DILocation(line: 45, column: 22, scope: !482)
!482 = !DILexicalBlockFile(scope: !452, file: !444, discriminator: 2)
!483 = !DILocation(line: 45, column: 22, scope: !484)
!484 = !DILexicalBlockFile(scope: !452, file: !444, discriminator: 3)
!485 = !DILocation(line: 45, column: 2, scope: !484)
!486 = !DILocation(line: 45, column: 8, scope: !484)
!487 = !DILocation(line: 45, column: 20, scope: !484)
!488 = !DILocation(line: 48, column: 7, scope: !489)
!489 = distinct !DILexicalBlock(scope: !452, file: !444, line: 48, column: 6)
!490 = !DILocation(line: 48, column: 15, scope: !489)
!491 = !DILocation(line: 48, column: 6, scope: !452)
!492 = !DILocation(line: 53, column: 10, scope: !493)
!493 = distinct !DILexicalBlock(scope: !489, file: !444, line: 48, column: 26)
!494 = !DILocation(line: 53, column: 16, scope: !493)
!495 = !DILocation(line: 53, column: 3, scope: !493)
!496 = !DILocation(line: 54, column: 20, scope: !493)
!497 = !DILocation(line: 54, column: 28, scope: !493)
!498 = !DILocation(line: 54, column: 37, scope: !493)
!499 = !DILocation(line: 54, column: 20, scope: !500)
!500 = !DILexicalBlockFile(scope: !493, file: !444, discriminator: 1)
!501 = !DILocation(line: 55, column: 13, scope: !493)
!502 = !DILocation(line: 55, column: 21, scope: !493)
!503 = !DILocation(line: 55, column: 30, scope: !493)
!504 = !DILocation(line: 55, column: 4, scope: !493)
!505 = !DILocation(line: 54, column: 20, scope: !506)
!506 = !DILexicalBlockFile(scope: !493, file: !444, discriminator: 2)
!507 = !DILocation(line: 54, column: 20, scope: !508)
!508 = !DILexicalBlockFile(scope: !493, file: !444, discriminator: 3)
!509 = !DILocation(line: 54, column: 3, scope: !508)
!510 = !DILocation(line: 54, column: 9, scope: !508)
!511 = !DILocation(line: 54, column: 18, scope: !508)
!512 = !DILocation(line: 56, column: 2, scope: !493)
!513 = !DILocation(line: 58, column: 49, scope: !452)
!514 = !DILocation(line: 58, column: 55, scope: !452)
!515 = !DILocation(line: 58, column: 2, scope: !452)
!516 = !DILocation(line: 59, column: 1, scope: !452)
!517 = distinct !DISubprogram(name: "server_reconnect_destroy", scope: !444, file: !444, line: 79, type: !518, isLocal: false, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !455)
!518 = !DISubroutineType(types: !519)
!519 = !{null, !434}
!520 = !DILocalVariable(name: "rec", arg: 1, scope: !517, file: !444, line: 79, type: !434)
!521 = !DILocation(line: 79, column: 46, scope: !517)
!522 = !DILocation(line: 81, column: 2, scope: !517)
!523 = distinct !{!523, !522}
!524 = !DILocation(line: 81, column: 10, scope: !525)
!525 = !DILexicalBlockFile(scope: !526, file: !444, discriminator: 1)
!526 = distinct !DILexicalBlock(scope: !527, file: !444, line: 81, column: 10)
!527 = distinct !DILexicalBlock(scope: !517, file: !444, line: 81, column: 4)
!528 = !DILocation(line: 81, column: 14, scope: !525)
!529 = !DILocation(line: 81, column: 5, scope: !530)
!530 = !DILexicalBlockFile(scope: !531, file: !444, discriminator: 2)
!531 = distinct !DILexicalBlock(scope: !526, file: !444, line: 81, column: 3)
!532 = !DILocation(line: 81, column: 14, scope: !533)
!533 = !DILexicalBlockFile(scope: !534, file: !444, discriminator: 3)
!534 = distinct !DILexicalBlock(scope: !526, file: !444, line: 81, column: 12)
!535 = !DILocation(line: 81, column: 98, scope: !533)
!536 = !DILocation(line: 81, column: 109, scope: !537)
!537 = !DILexicalBlockFile(scope: !527, file: !444, discriminator: 4)
!538 = !DILocation(line: 83, column: 30, scope: !517)
!539 = !DILocation(line: 83, column: 42, scope: !517)
!540 = !DILocation(line: 83, column: 15, scope: !517)
!541 = !DILocation(line: 83, column: 13, scope: !517)
!542 = !DILocation(line: 85, column: 44, scope: !517)
!543 = !DILocation(line: 85, column: 2, scope: !517)
!544 = !DILocation(line: 86, column: 23, scope: !517)
!545 = !DILocation(line: 86, column: 28, scope: !517)
!546 = !DILocation(line: 86, column: 2, scope: !517)
!547 = !DILocation(line: 87, column: 9, scope: !517)
!548 = !DILocation(line: 87, column: 2, scope: !517)
!549 = !DILocation(line: 89, column: 6, scope: !550)
!550 = distinct !DILexicalBlock(scope: !517, file: !444, line: 89, column: 6)
!551 = !DILocation(line: 89, column: 17, scope: !550)
!552 = !DILocation(line: 89, column: 6, scope: !517)
!553 = !DILocation(line: 90, column: 25, scope: !550)
!554 = !DILocation(line: 90, column: 6, scope: !550)
!555 = !DILocation(line: 91, column: 1, scope: !517)
!556 = distinct !DISubprogram(name: "servers_reconnect_init", scope: !444, file: !444, line: 496, type: !256, isLocal: false, isDefinition: true, scopeLine: 497, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !455)
!557 = !DILocation(line: 498, column: 2, scope: !556)
!558 = !DILocation(line: 499, column: 2, scope: !556)
!559 = !DILocation(line: 501, column: 13, scope: !556)
!560 = !DILocation(line: 502, column: 21, scope: !556)
!561 = !DILocation(line: 504, column: 26, scope: !556)
!562 = !DILocation(line: 504, column: 24, scope: !556)
!563 = !DILocation(line: 505, column: 2, scope: !556)
!564 = !DILocation(line: 507, column: 2, scope: !556)
!565 = !DILocation(line: 508, column: 2, scope: !556)
!566 = !DILocation(line: 509, column: 2, scope: !556)
!567 = !DILocation(line: 510, column: 2, scope: !556)
!568 = !DILocation(line: 511, column: 2, scope: !556)
!569 = !DILocation(line: 513, column: 2, scope: !556)
!570 = !DILocation(line: 514, column: 2, scope: !556)
!571 = !DILocation(line: 515, column: 2, scope: !556)
!572 = !DILocation(line: 516, column: 1, scope: !556)
!573 = distinct !DISubprogram(name: "server_reconnect_timeout", scope: !444, file: !444, line: 93, type: !574, isLocal: true, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !455)
!574 = !DISubroutineType(types: !575)
!575 = !{!70}
!576 = !DILocalVariable(name: "conn", scope: !573, file: !444, line: 95, type: !90)
!577 = !DILocation(line: 95, column: 22, scope: !573)
!578 = !DILocalVariable(name: "list", scope: !573, file: !444, line: 96, type: !268)
!579 = !DILocation(line: 96, column: 10, scope: !573)
!580 = !DILocalVariable(name: "tmp", scope: !573, file: !444, line: 96, type: !268)
!581 = !DILocation(line: 96, column: 17, scope: !573)
!582 = !DILocalVariable(name: "next", scope: !573, file: !444, line: 96, type: !268)
!583 = !DILocation(line: 96, column: 23, scope: !573)
!584 = !DILocalVariable(name: "now", scope: !573, file: !444, line: 97, type: !340)
!585 = !DILocation(line: 97, column: 9, scope: !573)
!586 = !DILocation(line: 99, column: 8, scope: !573)
!587 = !DILocation(line: 99, column: 6, scope: !573)
!588 = !DILocation(line: 102, column: 13, scope: !589)
!589 = distinct !DILexicalBlock(scope: !573, file: !444, line: 102, column: 2)
!590 = !DILocation(line: 102, column: 11, scope: !589)
!591 = !DILocation(line: 102, column: 7, scope: !589)
!592 = !DILocation(line: 102, column: 22, scope: !593)
!593 = !DILexicalBlockFile(scope: !594, file: !444, discriminator: 1)
!594 = distinct !DILexicalBlock(scope: !589, file: !444, line: 102, column: 2)
!595 = !DILocation(line: 102, column: 26, scope: !593)
!596 = !DILocation(line: 102, column: 2, scope: !593)
!597 = !DILocalVariable(name: "server", scope: !598, file: !444, line: 103, type: !79)
!598 = distinct !DILexicalBlock(scope: !594, file: !444, line: 102, column: 46)
!599 = !DILocation(line: 103, column: 15, scope: !598)
!600 = !DILocation(line: 103, column: 24, scope: !598)
!601 = !DILocation(line: 103, column: 29, scope: !598)
!602 = !DILocation(line: 105, column: 10, scope: !598)
!603 = !DILocation(line: 105, column: 15, scope: !598)
!604 = !DILocation(line: 105, column: 8, scope: !598)
!605 = !DILocation(line: 106, column: 8, scope: !606)
!606 = distinct !DILexicalBlock(scope: !598, file: !444, line: 106, column: 7)
!607 = !DILocation(line: 106, column: 16, scope: !606)
!608 = !DILocation(line: 106, column: 26, scope: !606)
!609 = !DILocation(line: 107, column: 7, scope: !606)
!610 = !DILocation(line: 107, column: 15, scope: !606)
!611 = !DILocation(line: 107, column: 30, scope: !606)
!612 = !DILocation(line: 107, column: 28, scope: !606)
!613 = !DILocation(line: 107, column: 48, scope: !606)
!614 = !DILocation(line: 107, column: 46, scope: !606)
!615 = !DILocation(line: 107, column: 52, scope: !606)
!616 = !DILocation(line: 108, column: 7, scope: !606)
!617 = !DILocation(line: 108, column: 23, scope: !606)
!618 = !DILocation(line: 106, column: 7, scope: !619)
!619 = !DILexicalBlockFile(scope: !598, file: !444, discriminator: 1)
!620 = !DILocation(line: 109, column: 4, scope: !621)
!621 = distinct !DILexicalBlock(scope: !606, file: !444, line: 108, column: 28)
!622 = !DILocation(line: 109, column: 12, scope: !621)
!623 = !DILocation(line: 109, column: 28, scope: !621)
!624 = !DILocation(line: 110, column: 22, scope: !621)
!625 = !DILocation(line: 110, column: 4, scope: !621)
!626 = !DILocation(line: 111, column: 3, scope: !621)
!627 = !DILocation(line: 112, column: 2, scope: !598)
!628 = !DILocation(line: 102, column: 40, scope: !629)
!629 = !DILexicalBlockFile(scope: !594, file: !444, discriminator: 2)
!630 = !DILocation(line: 102, column: 38, scope: !629)
!631 = !DILocation(line: 102, column: 2, scope: !629)
!632 = distinct !{!632, !633}
!633 = !DILocation(line: 102, column: 2, scope: !573)
!634 = !DILocation(line: 114, column: 13, scope: !635)
!635 = distinct !DILexicalBlock(scope: !573, file: !444, line: 114, column: 2)
!636 = !DILocation(line: 114, column: 11, scope: !635)
!637 = !DILocation(line: 114, column: 7, scope: !635)
!638 = !DILocation(line: 114, column: 29, scope: !639)
!639 = !DILexicalBlockFile(scope: !640, file: !444, discriminator: 1)
!640 = distinct !DILexicalBlock(scope: !635, file: !444, line: 114, column: 2)
!641 = !DILocation(line: 114, column: 33, scope: !639)
!642 = !DILocation(line: 114, column: 2, scope: !639)
!643 = !DILocalVariable(name: "server", scope: !644, file: !444, line: 115, type: !79)
!644 = distinct !DILexicalBlock(scope: !640, file: !444, line: 114, column: 53)
!645 = !DILocation(line: 115, column: 15, scope: !644)
!646 = !DILocation(line: 115, column: 24, scope: !644)
!647 = !DILocation(line: 115, column: 29, scope: !644)
!648 = !DILocation(line: 117, column: 10, scope: !644)
!649 = !DILocation(line: 117, column: 15, scope: !644)
!650 = !DILocation(line: 117, column: 8, scope: !644)
!651 = !DILocation(line: 118, column: 7, scope: !652)
!652 = distinct !DILexicalBlock(scope: !644, file: !444, line: 118, column: 7)
!653 = !DILocation(line: 118, column: 15, scope: !652)
!654 = !DILocation(line: 118, column: 30, scope: !652)
!655 = !DILocation(line: 118, column: 28, scope: !652)
!656 = !DILocation(line: 118, column: 48, scope: !652)
!657 = !DILocation(line: 118, column: 46, scope: !652)
!658 = !DILocation(line: 118, column: 52, scope: !652)
!659 = !DILocation(line: 119, column: 7, scope: !652)
!660 = !DILocation(line: 119, column: 23, scope: !652)
!661 = !DILocation(line: 118, column: 7, scope: !662)
!662 = !DILexicalBlockFile(scope: !644, file: !444, discriminator: 1)
!663 = !DILocation(line: 120, column: 8, scope: !664)
!664 = distinct !DILexicalBlock(scope: !665, file: !444, line: 120, column: 8)
!665 = distinct !DILexicalBlock(scope: !652, file: !444, line: 119, column: 28)
!666 = !DILocation(line: 120, column: 16, scope: !664)
!667 = !DILocation(line: 120, column: 28, scope: !664)
!668 = !DILocation(line: 120, column: 8, scope: !665)
!669 = !DILocation(line: 121, column: 21, scope: !670)
!670 = distinct !DILexicalBlock(scope: !664, file: !444, line: 120, column: 35)
!671 = !DILocation(line: 121, column: 29, scope: !670)
!672 = !DILocation(line: 121, column: 5, scope: !670)
!673 = !DILocation(line: 122, column: 5, scope: !670)
!674 = !DILocation(line: 122, column: 13, scope: !670)
!675 = !DILocation(line: 122, column: 25, scope: !670)
!676 = !DILocation(line: 123, column: 4, scope: !670)
!677 = !DILocation(line: 124, column: 4, scope: !665)
!678 = !DILocation(line: 124, column: 12, scope: !665)
!679 = !DILocation(line: 124, column: 28, scope: !665)
!680 = !DILocation(line: 125, column: 26, scope: !665)
!681 = !DILocation(line: 125, column: 4, scope: !665)
!682 = !DILocation(line: 126, column: 3, scope: !665)
!683 = !DILocation(line: 127, column: 2, scope: !644)
!684 = !DILocation(line: 114, column: 47, scope: !685)
!685 = !DILexicalBlockFile(scope: !640, file: !444, discriminator: 2)
!686 = !DILocation(line: 114, column: 45, scope: !685)
!687 = !DILocation(line: 114, column: 2, scope: !685)
!688 = distinct !{!688, !689}
!689 = !DILocation(line: 114, column: 2, scope: !573)
!690 = !DILocation(line: 132, column: 22, scope: !573)
!691 = !DILocation(line: 132, column: 9, scope: !573)
!692 = !DILocation(line: 132, column: 7, scope: !573)
!693 = !DILocation(line: 133, column: 13, scope: !694)
!694 = distinct !DILexicalBlock(scope: !573, file: !444, line: 133, column: 2)
!695 = !DILocation(line: 133, column: 11, scope: !694)
!696 = !DILocation(line: 133, column: 7, scope: !694)
!697 = !DILocation(line: 133, column: 19, scope: !698)
!698 = !DILexicalBlockFile(scope: !699, file: !444, discriminator: 1)
!699 = distinct !DILexicalBlock(scope: !694, file: !444, line: 133, column: 2)
!700 = !DILocation(line: 133, column: 23, scope: !698)
!701 = !DILocation(line: 133, column: 2, scope: !698)
!702 = !DILocalVariable(name: "rec", scope: !703, file: !444, line: 134, type: !434)
!703 = distinct !DILexicalBlock(scope: !699, file: !444, line: 133, column: 48)
!704 = !DILocation(line: 134, column: 18, scope: !703)
!705 = !DILocation(line: 134, column: 24, scope: !703)
!706 = !DILocation(line: 134, column: 29, scope: !703)
!707 = !DILocation(line: 136, column: 20, scope: !708)
!708 = distinct !DILexicalBlock(scope: !703, file: !444, line: 136, column: 7)
!709 = !DILocation(line: 136, column: 32, scope: !708)
!710 = !DILocation(line: 136, column: 7, scope: !708)
!711 = !DILocation(line: 136, column: 37, scope: !708)
!712 = !DILocation(line: 136, column: 7, scope: !703)
!713 = !DILocation(line: 137, column: 4, scope: !708)
!714 = !DILocation(line: 139, column: 7, scope: !715)
!715 = distinct !DILexicalBlock(scope: !703, file: !444, line: 139, column: 7)
!716 = !DILocation(line: 139, column: 12, scope: !715)
!717 = !DILocation(line: 139, column: 28, scope: !715)
!718 = !DILocation(line: 139, column: 25, scope: !715)
!719 = !DILocation(line: 139, column: 7, scope: !703)
!720 = !DILocation(line: 140, column: 11, scope: !721)
!721 = distinct !DILexicalBlock(scope: !715, file: !444, line: 139, column: 33)
!722 = !DILocation(line: 140, column: 16, scope: !721)
!723 = !DILocation(line: 140, column: 9, scope: !721)
!724 = !DILocation(line: 141, column: 23, scope: !721)
!725 = !DILocation(line: 141, column: 4, scope: !721)
!726 = !DILocation(line: 142, column: 29, scope: !721)
!727 = !DILocation(line: 142, column: 4, scope: !721)
!728 = !DILocation(line: 143, column: 19, scope: !721)
!729 = !DILocation(line: 143, column: 4, scope: !721)
!730 = !DILocation(line: 144, column: 25, scope: !721)
!731 = !DILocation(line: 144, column: 4, scope: !721)
!732 = !DILocation(line: 145, column: 3, scope: !721)
!733 = !DILocation(line: 146, column: 2, scope: !703)
!734 = !DILocation(line: 133, column: 37, scope: !735)
!735 = !DILexicalBlockFile(scope: !699, file: !444, discriminator: 2)
!736 = !DILocation(line: 133, column: 42, scope: !735)
!737 = !DILocation(line: 133, column: 35, scope: !735)
!738 = !DILocation(line: 133, column: 2, scope: !735)
!739 = distinct !{!739, !740}
!740 = !DILocation(line: 133, column: 2, scope: !573)
!741 = !DILocation(line: 148, column: 15, scope: !573)
!742 = !DILocation(line: 148, column: 2, scope: !573)
!743 = !DILocation(line: 149, column: 2, scope: !573)
!744 = distinct !DISubprogram(name: "read_settings", scope: !444, file: !444, line: 490, type: !256, isLocal: true, isDefinition: true, scopeLine: 491, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !455)
!745 = !DILocation(line: 492, column: 19, scope: !744)
!746 = !DILocation(line: 492, column: 61, scope: !744)
!747 = !DILocation(line: 492, column: 17, scope: !744)
!748 = !DILocation(line: 493, column: 27, scope: !744)
!749 = !DILocation(line: 493, column: 70, scope: !744)
!750 = !DILocation(line: 493, column: 25, scope: !744)
!751 = !DILocation(line: 494, column: 1, scope: !744)
!752 = distinct !DISubprogram(name: "sig_reconnect", scope: !444, file: !444, line: 232, type: !753, isLocal: true, isDefinition: true, scopeLine: 233, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !455)
!753 = !DISubroutineType(types: !754)
!754 = !{null, !79}
!755 = !DILocalVariable(name: "server", arg: 1, scope: !752, file: !444, line: 232, type: !79)
!756 = !DILocation(line: 232, column: 39, scope: !752)
!757 = !DILocalVariable(name: "conn", scope: !752, file: !444, line: 234, type: !90)
!758 = !DILocation(line: 234, column: 22, scope: !752)
!759 = !DILocalVariable(name: "sserver", scope: !752, file: !444, line: 235, type: !760)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64, align: 64)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_SETUP_REC", file: !81, line: 114, baseType: !762)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_SETUP_REC", file: !763, line: 13, size: 1408, align: 64, elements: !764)
!763 = !DIFile(filename: "servers-setup.h", directory: "/home/lichi/Desktop/irssi/task1")
!764 = !{!765, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !762, file: !766, line: 1, baseType: !70, size: 32, align: 32)
!766 = !DIFile(filename: "server-setup-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!767 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !762, file: !766, line: 2, baseType: !70, size: 32, align: 32, offset: 32)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !762, file: !766, line: 4, baseType: !99, size: 64, align: 64, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !762, file: !766, line: 6, baseType: !105, size: 16, align: 16, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !762, file: !766, line: 7, baseType: !99, size: 64, align: 64, offset: 192)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !762, file: !766, line: 8, baseType: !70, size: 32, align: 32, offset: 256)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !762, file: !766, line: 9, baseType: !99, size: 64, align: 64, offset: 320)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !762, file: !766, line: 11, baseType: !70, size: 32, align: 32, offset: 384)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !762, file: !766, line: 12, baseType: !99, size: 64, align: 64, offset: 448)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !762, file: !766, line: 14, baseType: !99, size: 64, align: 64, offset: 512)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !762, file: !766, line: 15, baseType: !99, size: 64, align: 64, offset: 576)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !762, file: !766, line: 16, baseType: !99, size: 64, align: 64, offset: 640)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !762, file: !766, line: 17, baseType: !99, size: 64, align: 64, offset: 704)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !762, file: !766, line: 18, baseType: !99, size: 64, align: 64, offset: 768)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !762, file: !766, line: 19, baseType: !99, size: 64, align: 64, offset: 832)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !762, file: !766, line: 20, baseType: !99, size: 64, align: 64, offset: 896)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !762, file: !766, line: 21, baseType: !99, size: 64, align: 64, offset: 960)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "own_host", scope: !762, file: !766, line: 23, baseType: !99, size: 64, align: 64, offset: 1024)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !762, file: !766, line: 24, baseType: !111, size: 64, align: 64, offset: 1088)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !762, file: !766, line: 24, baseType: !111, size: 64, align: 64, offset: 1152)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "last_connect", scope: !762, file: !766, line: 26, baseType: !340, size: 64, align: 64, offset: 1216)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "autoconnect", scope: !762, file: !766, line: 28, baseType: !139, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "no_proxy", scope: !762, file: !766, line: 29, baseType: !139, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "last_failed", scope: !762, file: !766, line: 30, baseType: !139, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !762, file: !766, line: 31, baseType: !139, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !762, file: !766, line: 32, baseType: !139, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !762, file: !766, line: 33, baseType: !139, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !762, file: !766, line: 34, baseType: !139, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !762, file: !766, line: 36, baseType: !368, size: 64, align: 64, offset: 1344)
!795 = !DILocation(line: 235, column: 20, scope: !752)
!796 = !DILocalVariable(name: "tmp", scope: !752, file: !444, line: 236, type: !268)
!797 = !DILocation(line: 236, column: 10, scope: !752)
!798 = !DILocalVariable(name: "use_next", scope: !752, file: !444, line: 237, type: !70)
!799 = !DILocation(line: 237, column: 6, scope: !752)
!800 = !DILocalVariable(name: "through", scope: !752, file: !444, line: 237, type: !70)
!801 = !DILocation(line: 237, column: 16, scope: !752)
!802 = !DILocalVariable(name: "now", scope: !752, file: !444, line: 238, type: !340)
!803 = !DILocation(line: 238, column: 9, scope: !752)
!804 = !DILocation(line: 240, column: 2, scope: !752)
!805 = distinct !{!805, !804}
!806 = !DILocation(line: 240, column: 45, scope: !807)
!807 = !DILexicalBlockFile(scope: !808, file: !444, discriminator: 1)
!808 = distinct !DILexicalBlock(scope: !809, file: !444, line: 240, column: 10)
!809 = distinct !DILexicalBlock(scope: !752, file: !444, line: 240, column: 4)
!810 = !DILocation(line: 240, column: 27, scope: !807)
!811 = !DILocation(line: 240, column: 12, scope: !807)
!812 = !DILocation(line: 240, column: 10, scope: !807)
!813 = !DILocation(line: 240, column: 11, scope: !814)
!814 = !DILexicalBlockFile(scope: !808, file: !444, discriminator: 2)
!815 = !DILocation(line: 240, column: 10, scope: !816)
!816 = !DILexicalBlockFile(scope: !809, file: !444, discriminator: 3)
!817 = !DILocation(line: 240, column: 33, scope: !818)
!818 = !DILexicalBlockFile(scope: !819, file: !444, discriminator: 4)
!819 = distinct !DILexicalBlock(scope: !808, file: !444, line: 240, column: 31)
!820 = !DILocation(line: 240, column: 42, scope: !821)
!821 = !DILexicalBlockFile(scope: !822, file: !444, discriminator: 5)
!822 = distinct !DILexicalBlock(scope: !808, file: !444, line: 240, column: 40)
!823 = !DILocation(line: 240, column: 132, scope: !821)
!824 = !DILocation(line: 240, column: 143, scope: !825)
!825 = !DILexicalBlockFile(scope: !809, file: !444, discriminator: 6)
!826 = !DILocation(line: 242, column: 6, scope: !827)
!827 = distinct !DILexicalBlock(scope: !752, file: !444, line: 242, column: 6)
!828 = !DILocation(line: 242, column: 21, scope: !827)
!829 = !DILocation(line: 242, column: 27, scope: !827)
!830 = !DILocation(line: 242, column: 33, scope: !831)
!831 = !DILexicalBlockFile(scope: !827, file: !444, discriminator: 1)
!832 = !DILocation(line: 242, column: 42, scope: !831)
!833 = !DILocation(line: 242, column: 32, scope: !831)
!834 = !DILocation(line: 242, column: 58, scope: !831)
!835 = !DILocation(line: 242, column: 63, scope: !836)
!836 = !DILexicalBlockFile(scope: !827, file: !444, discriminator: 2)
!837 = !DILocation(line: 242, column: 72, scope: !836)
!838 = !DILocation(line: 242, column: 62, scope: !836)
!839 = !DILocation(line: 242, column: 85, scope: !836)
!840 = !DILocation(line: 242, column: 90, scope: !841)
!841 = !DILexicalBlockFile(scope: !827, file: !444, discriminator: 3)
!842 = !DILocation(line: 242, column: 99, scope: !841)
!843 = !DILocation(line: 242, column: 108, scope: !841)
!844 = !DILocation(line: 242, column: 116, scope: !841)
!845 = !DILocation(line: 242, column: 30, scope: !841)
!846 = !DILocation(line: 242, column: 35, scope: !847)
!847 = !DILexicalBlockFile(scope: !827, file: !444, discriminator: 4)
!848 = !DILocation(line: 242, column: 44, scope: !847)
!849 = !DILocation(line: 242, column: 34, scope: !847)
!850 = !DILocation(line: 242, column: 6, scope: !847)
!851 = !DILocation(line: 243, column: 3, scope: !827)
!852 = !DILocation(line: 245, column: 38, scope: !752)
!853 = !DILocation(line: 245, column: 46, scope: !752)
!854 = !DILocation(line: 245, column: 9, scope: !752)
!855 = !DILocation(line: 245, column: 7, scope: !752)
!856 = !DILocation(line: 246, column: 9, scope: !752)
!857 = distinct !{!857, !856}
!858 = !DILocation(line: 246, column: 17, scope: !859)
!859 = !DILexicalBlockFile(scope: !860, file: !444, discriminator: 1)
!860 = distinct !DILexicalBlock(scope: !861, file: !444, line: 246, column: 17)
!861 = distinct !DILexicalBlock(scope: !752, file: !444, line: 246, column: 11)
!862 = !DILocation(line: 246, column: 22, scope: !859)
!863 = !DILocation(line: 246, column: 12, scope: !864)
!864 = !DILexicalBlockFile(scope: !865, file: !444, discriminator: 2)
!865 = distinct !DILexicalBlock(scope: !860, file: !444, line: 246, column: 10)
!866 = !DILocation(line: 246, column: 21, scope: !867)
!867 = !DILexicalBlockFile(scope: !868, file: !444, discriminator: 3)
!868 = distinct !DILexicalBlock(scope: !860, file: !444, line: 246, column: 19)
!869 = !DILocation(line: 246, column: 106, scope: !867)
!870 = !DILocation(line: 246, column: 117, scope: !871)
!871 = !DILexicalBlockFile(scope: !861, file: !444, discriminator: 4)
!872 = !DILocation(line: 249, column: 6, scope: !873)
!873 = distinct !DILexicalBlock(scope: !752, file: !444, line: 249, column: 6)
!874 = !DILocation(line: 249, column: 14, scope: !873)
!875 = !DILocation(line: 249, column: 6, scope: !752)
!876 = !DILocation(line: 250, column: 3, scope: !877)
!877 = distinct !DILexicalBlock(scope: !873, file: !444, line: 249, column: 25)
!878 = !DILocation(line: 250, column: 9, scope: !877)
!879 = !DILocation(line: 250, column: 22, scope: !877)
!880 = !DILocation(line: 252, column: 39, scope: !877)
!881 = !DILocation(line: 252, column: 45, scope: !877)
!882 = !DILocation(line: 252, column: 17, scope: !877)
!883 = !DILocation(line: 253, column: 2, scope: !877)
!884 = !DILocation(line: 255, column: 30, scope: !752)
!885 = !DILocation(line: 255, column: 38, scope: !752)
!886 = !DILocation(line: 255, column: 47, scope: !752)
!887 = !DILocation(line: 256, column: 9, scope: !752)
!888 = !DILocation(line: 256, column: 17, scope: !752)
!889 = !DILocation(line: 256, column: 26, scope: !752)
!890 = !DILocation(line: 257, column: 9, scope: !752)
!891 = !DILocation(line: 257, column: 17, scope: !752)
!892 = !DILocation(line: 257, column: 26, scope: !752)
!893 = !DILocation(line: 255, column: 12, scope: !752)
!894 = !DILocation(line: 255, column: 10, scope: !752)
!895 = !DILocation(line: 259, column: 6, scope: !896)
!896 = distinct !DILexicalBlock(scope: !752, file: !444, line: 259, column: 6)
!897 = !DILocation(line: 259, column: 14, scope: !896)
!898 = !DILocation(line: 259, column: 6, scope: !752)
!899 = !DILocation(line: 261, column: 27, scope: !900)
!900 = distinct !DILexicalBlock(scope: !896, file: !444, line: 259, column: 22)
!901 = !DILocation(line: 261, column: 35, scope: !900)
!902 = !DILocation(line: 261, column: 48, scope: !900)
!903 = !DILocation(line: 262, column: 4, scope: !900)
!904 = !DILocation(line: 261, column: 27, scope: !905)
!905 = !DILexicalBlockFile(scope: !900, file: !444, discriminator: 1)
!906 = !DILocation(line: 262, column: 16, scope: !905)
!907 = !DILocation(line: 262, column: 24, scope: !905)
!908 = !DILocation(line: 261, column: 27, scope: !909)
!909 = !DILexicalBlockFile(scope: !900, file: !444, discriminator: 2)
!910 = !DILocation(line: 261, column: 27, scope: !911)
!911 = !DILexicalBlockFile(scope: !900, file: !444, discriminator: 3)
!912 = !DILocation(line: 261, column: 3, scope: !911)
!913 = !DILocation(line: 261, column: 12, scope: !911)
!914 = !DILocation(line: 261, column: 25, scope: !911)
!915 = !DILocation(line: 263, column: 27, scope: !900)
!916 = !DILocation(line: 263, column: 35, scope: !900)
!917 = !DILocation(line: 263, column: 26, scope: !900)
!918 = !DILocation(line: 263, column: 3, scope: !900)
!919 = !DILocation(line: 263, column: 12, scope: !900)
!920 = !DILocation(line: 263, column: 24, scope: !900)
!921 = !DILocation(line: 264, column: 21, scope: !900)
!922 = !DILocation(line: 264, column: 29, scope: !900)
!923 = !DILocation(line: 264, column: 3, scope: !900)
!924 = !DILocation(line: 264, column: 12, scope: !900)
!925 = !DILocation(line: 264, column: 19, scope: !900)
!926 = !DILocation(line: 265, column: 38, scope: !900)
!927 = !DILocation(line: 265, column: 46, scope: !900)
!928 = !DILocation(line: 265, column: 17, scope: !900)
!929 = !DILocation(line: 265, column: 26, scope: !900)
!930 = !DILocation(line: 265, column: 36, scope: !900)
!931 = !DILocation(line: 266, column: 2, scope: !900)
!932 = !DILocation(line: 268, column: 6, scope: !933)
!933 = distinct !DILexicalBlock(scope: !752, file: !444, line: 268, column: 6)
!934 = !DILocation(line: 268, column: 14, scope: !933)
!935 = !DILocation(line: 268, column: 21, scope: !933)
!936 = !DILocation(line: 268, column: 24, scope: !937)
!937 = !DILexicalBlockFile(scope: !933, file: !444, discriminator: 1)
!938 = !DILocation(line: 268, column: 30, scope: !937)
!939 = !DILocation(line: 268, column: 38, scope: !937)
!940 = !DILocation(line: 268, column: 6, scope: !937)
!941 = !DILocation(line: 270, column: 32, scope: !942)
!942 = distinct !DILexicalBlock(scope: !933, file: !444, line: 268, column: 47)
!943 = !DILocation(line: 270, column: 40, scope: !942)
!944 = !DILocation(line: 270, column: 49, scope: !942)
!945 = !DILocation(line: 270, column: 17, scope: !942)
!946 = !DILocation(line: 270, column: 23, scope: !942)
!947 = !DILocation(line: 270, column: 30, scope: !942)
!948 = !DILocation(line: 271, column: 28, scope: !942)
!949 = !DILocation(line: 271, column: 36, scope: !942)
!950 = !DILocation(line: 271, column: 45, scope: !942)
!951 = !DILocation(line: 271, column: 19, scope: !942)
!952 = !DILocation(line: 271, column: 3, scope: !942)
!953 = !DILocation(line: 271, column: 9, scope: !942)
!954 = !DILocation(line: 271, column: 17, scope: !942)
!955 = !DILocation(line: 272, column: 16, scope: !942)
!956 = !DILocation(line: 272, column: 24, scope: !942)
!957 = !DILocation(line: 272, column: 33, scope: !942)
!958 = !DILocation(line: 272, column: 3, scope: !942)
!959 = !DILocation(line: 272, column: 9, scope: !942)
!960 = !DILocation(line: 272, column: 14, scope: !942)
!961 = !DILocation(line: 273, column: 29, scope: !942)
!962 = !DILocation(line: 273, column: 37, scope: !942)
!963 = !DILocation(line: 273, column: 46, scope: !942)
!964 = !DILocation(line: 273, column: 20, scope: !942)
!965 = !DILocation(line: 273, column: 3, scope: !942)
!966 = !DILocation(line: 273, column: 9, scope: !942)
!967 = !DILocation(line: 273, column: 18, scope: !942)
!968 = !DILocation(line: 275, column: 14, scope: !969)
!969 = distinct !DILexicalBlock(scope: !942, file: !444, line: 275, column: 7)
!970 = !DILocation(line: 275, column: 20, scope: !969)
!971 = !DILocation(line: 275, column: 7, scope: !969)
!972 = !DILocation(line: 275, column: 34, scope: !969)
!973 = !DILocation(line: 275, column: 7, scope: !942)
!974 = !DILocation(line: 276, column: 4, scope: !969)
!975 = !DILocation(line: 276, column: 10, scope: !969)
!976 = !DILocation(line: 276, column: 22, scope: !969)
!977 = !DILocation(line: 278, column: 24, scope: !942)
!978 = !DILocation(line: 278, column: 31, scope: !942)
!979 = !DILocation(line: 278, column: 39, scope: !942)
!980 = !DILocation(line: 278, column: 52, scope: !942)
!981 = !DILocation(line: 278, column: 59, scope: !982)
!982 = !DILexicalBlockFile(scope: !942, file: !444, discriminator: 1)
!983 = !DILocation(line: 278, column: 31, scope: !982)
!984 = !DILocation(line: 279, column: 10, scope: !942)
!985 = !DILocation(line: 279, column: 18, scope: !942)
!986 = !DILocation(line: 278, column: 31, scope: !987)
!987 = !DILexicalBlockFile(scope: !942, file: !444, discriminator: 2)
!988 = !DILocation(line: 278, column: 31, scope: !989)
!989 = !DILexicalBlockFile(scope: !942, file: !444, discriminator: 3)
!990 = !DILocation(line: 279, column: 34, scope: !982)
!991 = !DILocation(line: 279, column: 32, scope: !982)
!992 = !DILocation(line: 278, column: 3, scope: !989)
!993 = !DILocation(line: 280, column: 24, scope: !942)
!994 = !DILocation(line: 280, column: 3, scope: !942)
!995 = !DILocation(line: 281, column: 3, scope: !942)
!996 = !DILocation(line: 288, column: 8, scope: !752)
!997 = !DILocation(line: 288, column: 6, scope: !752)
!998 = !DILocation(line: 289, column: 13, scope: !999)
!999 = distinct !DILexicalBlock(scope: !752, file: !444, line: 289, column: 2)
!1000 = !DILocation(line: 289, column: 11, scope: !999)
!1001 = !DILocation(line: 289, column: 7, scope: !999)
!1002 = !DILocation(line: 289, column: 27, scope: !1003)
!1003 = !DILexicalBlockFile(scope: !1004, file: !444, discriminator: 1)
!1004 = distinct !DILexicalBlock(scope: !999, file: !444, line: 289, column: 2)
!1005 = !DILocation(line: 289, column: 31, scope: !1003)
!1006 = !DILocation(line: 289, column: 2, scope: !1003)
!1007 = !DILocalVariable(name: "rec", scope: !1008, file: !444, line: 290, type: !760)
!1008 = distinct !DILexicalBlock(scope: !1004, file: !444, line: 289, column: 56)
!1009 = !DILocation(line: 290, column: 21, scope: !1008)
!1010 = !DILocation(line: 290, column: 27, scope: !1008)
!1011 = !DILocation(line: 290, column: 32, scope: !1008)
!1012 = !DILocation(line: 292, column: 10, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1008, file: !444, line: 292, column: 7)
!1014 = !DILocation(line: 292, column: 16, scope: !1013)
!1015 = !DILocation(line: 292, column: 9, scope: !1013)
!1016 = !DILocation(line: 292, column: 23, scope: !1013)
!1017 = !DILocation(line: 292, column: 27, scope: !1018)
!1018 = !DILexicalBlockFile(scope: !1013, file: !444, discriminator: 1)
!1019 = !DILocation(line: 292, column: 33, scope: !1018)
!1020 = !DILocation(line: 292, column: 41, scope: !1018)
!1021 = !DILocation(line: 292, column: 6, scope: !1018)
!1022 = !DILocation(line: 292, column: 29, scope: !1023)
!1023 = !DILexicalBlockFile(scope: !1013, file: !444, discriminator: 2)
!1024 = !DILocation(line: 292, column: 35, scope: !1023)
!1025 = !DILocation(line: 292, column: 45, scope: !1023)
!1026 = !DILocation(line: 292, column: 51, scope: !1023)
!1027 = !DILocation(line: 292, column: 9, scope: !1023)
!1028 = !DILocation(line: 292, column: 61, scope: !1023)
!1029 = !DILocation(line: 292, column: 67, scope: !1023)
!1030 = !DILocation(line: 293, column: 9, scope: !1013)
!1031 = !DILocation(line: 293, column: 14, scope: !1013)
!1032 = !DILocation(line: 293, column: 27, scope: !1013)
!1033 = !DILocation(line: 293, column: 31, scope: !1018)
!1034 = !DILocation(line: 293, column: 36, scope: !1018)
!1035 = !DILocation(line: 293, column: 48, scope: !1018)
!1036 = !DILocation(line: 294, column: 8, scope: !1013)
!1037 = !DILocation(line: 294, column: 13, scope: !1013)
!1038 = !DILocation(line: 294, column: 28, scope: !1013)
!1039 = !DILocation(line: 294, column: 31, scope: !1013)
!1040 = !DILocation(line: 294, column: 26, scope: !1013)
!1041 = !DILocation(line: 292, column: 7, scope: !1042)
!1042 = !DILexicalBlockFile(scope: !1008, file: !444, discriminator: 3)
!1043 = !DILocation(line: 295, column: 8, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !444, line: 295, column: 8)
!1045 = distinct !DILexicalBlock(scope: !1013, file: !444, line: 294, column: 42)
!1046 = !DILocation(line: 295, column: 15, scope: !1044)
!1047 = !DILocation(line: 295, column: 12, scope: !1044)
!1048 = !DILocation(line: 295, column: 8, scope: !1045)
!1049 = !DILocation(line: 296, column: 46, scope: !1044)
!1050 = !DILocation(line: 296, column: 54, scope: !1044)
!1051 = !DILocation(line: 296, column: 63, scope: !1044)
!1052 = !DILocation(line: 296, column: 33, scope: !1044)
!1053 = !DILocation(line: 296, column: 39, scope: !1044)
!1054 = !DILocation(line: 296, column: 44, scope: !1044)
!1055 = !DILocation(line: 297, column: 20, scope: !1045)
!1056 = !DILocation(line: 297, column: 25, scope: !1045)
!1057 = !DILocation(line: 297, column: 4, scope: !1045)
!1058 = !DILocation(line: 298, column: 4, scope: !1045)
!1059 = !DILocation(line: 300, column: 2, scope: !1008)
!1060 = !DILocation(line: 289, column: 45, scope: !1061)
!1061 = !DILexicalBlockFile(scope: !1004, file: !444, discriminator: 2)
!1062 = !DILocation(line: 289, column: 50, scope: !1061)
!1063 = !DILocation(line: 289, column: 43, scope: !1061)
!1064 = !DILocation(line: 289, column: 2, scope: !1061)
!1065 = distinct !{!1065, !1066}
!1066 = !DILocation(line: 289, column: 2, scope: !752)
!1067 = !DILocation(line: 303, column: 21, scope: !752)
!1068 = !DILocation(line: 303, column: 11, scope: !752)
!1069 = !DILocation(line: 304, column: 13, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !752, file: !444, line: 304, column: 2)
!1071 = !DILocation(line: 304, column: 11, scope: !1070)
!1072 = !DILocation(line: 304, column: 7, scope: !1070)
!1073 = !DILocation(line: 304, column: 27, scope: !1074)
!1074 = !DILexicalBlockFile(scope: !1075, file: !444, discriminator: 1)
!1075 = distinct !DILexicalBlock(scope: !1070, file: !444, line: 304, column: 2)
!1076 = !DILocation(line: 304, column: 31, scope: !1074)
!1077 = !DILocation(line: 304, column: 2, scope: !1074)
!1078 = !DILocalVariable(name: "rec", scope: !1079, file: !444, line: 305, type: !760)
!1079 = distinct !DILexicalBlock(scope: !1075, file: !444, line: 304, column: 41)
!1080 = !DILocation(line: 305, column: 21, scope: !1079)
!1081 = !DILocation(line: 305, column: 27, scope: !1079)
!1082 = !DILocation(line: 305, column: 32, scope: !1079)
!1083 = !DILocation(line: 307, column: 8, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1079, file: !444, line: 307, column: 7)
!1085 = !DILocation(line: 307, column: 17, scope: !1084)
!1086 = !DILocation(line: 307, column: 20, scope: !1087)
!1087 = !DILexicalBlockFile(scope: !1084, file: !444, discriminator: 1)
!1088 = !DILocation(line: 307, column: 28, scope: !1087)
!1089 = !DILocation(line: 307, column: 37, scope: !1087)
!1090 = !DILocation(line: 307, column: 45, scope: !1087)
!1091 = !DILocation(line: 307, column: 50, scope: !1087)
!1092 = !DILocation(line: 307, column: 42, scope: !1087)
!1093 = !DILocation(line: 307, column: 55, scope: !1087)
!1094 = !DILocation(line: 308, column: 26, scope: !1084)
!1095 = !DILocation(line: 308, column: 31, scope: !1084)
!1096 = !DILocation(line: 308, column: 40, scope: !1084)
!1097 = !DILocation(line: 308, column: 48, scope: !1084)
!1098 = !DILocation(line: 308, column: 57, scope: !1084)
!1099 = !DILocation(line: 308, column: 7, scope: !1084)
!1100 = !DILocation(line: 308, column: 66, scope: !1084)
!1101 = !DILocation(line: 307, column: 7, scope: !1102)
!1102 = !DILexicalBlockFile(scope: !1079, file: !444, discriminator: 2)
!1103 = !DILocation(line: 309, column: 13, scope: !1084)
!1104 = !DILocation(line: 309, column: 4, scope: !1084)
!1105 = !DILocation(line: 310, column: 12, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1084, file: !444, line: 310, column: 12)
!1107 = !DILocation(line: 310, column: 21, scope: !1106)
!1108 = !DILocation(line: 310, column: 27, scope: !1109)
!1109 = !DILexicalBlockFile(scope: !1106, file: !444, discriminator: 1)
!1110 = !DILocation(line: 310, column: 33, scope: !1109)
!1111 = !DILocation(line: 310, column: 26, scope: !1109)
!1112 = !DILocation(line: 310, column: 40, scope: !1109)
!1113 = !DILocation(line: 310, column: 44, scope: !1114)
!1114 = !DILexicalBlockFile(scope: !1106, file: !444, discriminator: 2)
!1115 = !DILocation(line: 310, column: 50, scope: !1114)
!1116 = !DILocation(line: 310, column: 58, scope: !1114)
!1117 = !DILocation(line: 310, column: 23, scope: !1114)
!1118 = !DILocation(line: 310, column: 46, scope: !1119)
!1119 = !DILexicalBlockFile(scope: !1106, file: !444, discriminator: 3)
!1120 = !DILocation(line: 310, column: 52, scope: !1119)
!1121 = !DILocation(line: 310, column: 62, scope: !1119)
!1122 = !DILocation(line: 310, column: 68, scope: !1119)
!1123 = !DILocation(line: 310, column: 26, scope: !1119)
!1124 = !DILocation(line: 310, column: 78, scope: !1119)
!1125 = !DILocation(line: 310, column: 12, scope: !1119)
!1126 = !DILocation(line: 311, column: 8, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !444, line: 311, column: 8)
!1128 = distinct !DILexicalBlock(scope: !1106, file: !444, line: 310, column: 85)
!1129 = !DILocation(line: 311, column: 15, scope: !1127)
!1130 = !DILocation(line: 311, column: 12, scope: !1127)
!1131 = !DILocation(line: 311, column: 8, scope: !1128)
!1132 = !DILocation(line: 312, column: 46, scope: !1127)
!1133 = !DILocation(line: 312, column: 54, scope: !1127)
!1134 = !DILocation(line: 312, column: 63, scope: !1127)
!1135 = !DILocation(line: 312, column: 33, scope: !1127)
!1136 = !DILocation(line: 312, column: 39, scope: !1127)
!1137 = !DILocation(line: 312, column: 44, scope: !1127)
!1138 = !DILocation(line: 313, column: 20, scope: !1128)
!1139 = !DILocation(line: 313, column: 25, scope: !1128)
!1140 = !DILocation(line: 313, column: 4, scope: !1128)
!1141 = !DILocation(line: 314, column: 4, scope: !1128)
!1142 = !DILocation(line: 317, column: 7, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1079, file: !444, line: 317, column: 7)
!1144 = !DILocation(line: 317, column: 12, scope: !1143)
!1145 = !DILocation(line: 317, column: 17, scope: !1143)
!1146 = !DILocation(line: 317, column: 7, scope: !1079)
!1147 = !DILocation(line: 318, column: 10, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1143, file: !444, line: 317, column: 25)
!1149 = !DILocation(line: 318, column: 15, scope: !1148)
!1150 = !DILocation(line: 318, column: 8, scope: !1148)
!1151 = !DILocation(line: 319, column: 4, scope: !1148)
!1152 = distinct !{!1152, !1153}
!1153 = !DILocation(line: 304, column: 2, scope: !752)
!1154 = !DILocation(line: 322, column: 7, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1079, file: !444, line: 322, column: 7)
!1156 = !DILocation(line: 322, column: 7, scope: !1079)
!1157 = !DILocation(line: 325, column: 25, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1155, file: !444, line: 322, column: 16)
!1159 = !DILocation(line: 325, column: 4, scope: !1158)
!1160 = !DILocation(line: 326, column: 4, scope: !1158)
!1161 = !DILocation(line: 329, column: 9, scope: !1079)
!1162 = !DILocation(line: 329, column: 7, scope: !1079)
!1163 = !DILocation(line: 330, column: 22, scope: !1079)
!1164 = !DILocation(line: 330, column: 12, scope: !1079)
!1165 = !DILocation(line: 304, column: 2, scope: !1166)
!1166 = !DILexicalBlockFile(scope: !1075, file: !444, discriminator: 2)
!1167 = !DILocation(line: 332, column: 1, scope: !752)
!1168 = distinct !DISubprogram(name: "sig_connected", scope: !444, file: !444, line: 334, type: !753, isLocal: true, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !455)
!1169 = !DILocalVariable(name: "server", arg: 1, scope: !1168, file: !444, line: 334, type: !79)
!1170 = !DILocation(line: 334, column: 39, scope: !1168)
!1171 = !DILocation(line: 336, column: 2, scope: !1168)
!1172 = distinct !{!1172, !1171}
!1173 = !DILocation(line: 336, column: 45, scope: !1174)
!1174 = !DILexicalBlockFile(scope: !1175, file: !444, discriminator: 1)
!1175 = distinct !DILexicalBlock(scope: !1176, file: !444, line: 336, column: 10)
!1176 = distinct !DILexicalBlock(scope: !1168, file: !444, line: 336, column: 4)
!1177 = !DILocation(line: 336, column: 27, scope: !1174)
!1178 = !DILocation(line: 336, column: 12, scope: !1174)
!1179 = !DILocation(line: 336, column: 10, scope: !1174)
!1180 = !DILocation(line: 336, column: 11, scope: !1181)
!1181 = !DILexicalBlockFile(scope: !1175, file: !444, discriminator: 2)
!1182 = !DILocation(line: 336, column: 10, scope: !1183)
!1183 = !DILexicalBlockFile(scope: !1176, file: !444, discriminator: 3)
!1184 = !DILocation(line: 336, column: 33, scope: !1185)
!1185 = !DILexicalBlockFile(scope: !1186, file: !444, discriminator: 4)
!1186 = distinct !DILexicalBlock(scope: !1175, file: !444, line: 336, column: 31)
!1187 = !DILocation(line: 336, column: 42, scope: !1188)
!1188 = !DILexicalBlockFile(scope: !1189, file: !444, discriminator: 5)
!1189 = distinct !DILexicalBlock(scope: !1175, file: !444, line: 336, column: 40)
!1190 = !DILocation(line: 336, column: 132, scope: !1188)
!1191 = !DILocation(line: 336, column: 143, scope: !1192)
!1192 = !DILexicalBlockFile(scope: !1176, file: !444, discriminator: 6)
!1193 = !DILocation(line: 337, column: 7, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1168, file: !444, line: 337, column: 6)
!1195 = !DILocation(line: 337, column: 15, scope: !1194)
!1196 = !DILocation(line: 337, column: 24, scope: !1194)
!1197 = !DILocation(line: 337, column: 6, scope: !1168)
!1198 = !DILocation(line: 338, column: 3, scope: !1194)
!1199 = !DILocation(line: 340, column: 6, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1168, file: !444, line: 340, column: 6)
!1201 = !DILocation(line: 340, column: 14, scope: !1200)
!1202 = !DILocation(line: 340, column: 23, scope: !1200)
!1203 = !DILocation(line: 340, column: 32, scope: !1200)
!1204 = !DILocation(line: 340, column: 6, scope: !1168)
!1205 = !DILocation(line: 341, column: 3, scope: !1200)
!1206 = !DILocation(line: 341, column: 11, scope: !1200)
!1207 = !DILocation(line: 341, column: 25, scope: !1200)
!1208 = !DILocation(line: 341, column: 33, scope: !1200)
!1209 = !DILocation(line: 341, column: 41, scope: !1200)
!1210 = !DILocation(line: 341, column: 50, scope: !1200)
!1211 = !DILocation(line: 342, column: 1, scope: !1168)
!1212 = distinct !DISubprogram(name: "sig_chat_protocol_deinit", scope: !444, file: !444, line: 477, type: !1213, isLocal: true, isDefinition: true, scopeLine: 478, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !455)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{null, !1215}
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64, align: 64)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAT_PROTOCOL_REC", file: !81, line: 105, baseType: !1217)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHAT_PROTOCOL_REC", file: !1218, line: 4, size: 832, align: 64, elements: !1219)
!1218 = !DIFile(filename: "chat-protocols.h", directory: "/home/lichi/Desktop/irssi/task1")
!1219 = !{!1220, !1221, !1222, !1223, !1224, !1225, !1226, !1233, !1237, !1244, !1248, !1252, !1256, !1258, !1262}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1217, file: !1218, line: 5, baseType: !70, size: 32, align: 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "not_initialized", scope: !1217, file: !1218, line: 7, baseType: !139, size: 1, align: 32, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "case_insensitive", scope: !1217, file: !1218, line: 8, baseType: !139, size: 1, align: 32, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1217, file: !1218, line: 10, baseType: !99, size: 64, align: 64, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "fullname", scope: !1217, file: !1218, line: 11, baseType: !99, size: 64, align: 64, offset: 128)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !1217, file: !1218, line: 12, baseType: !99, size: 64, align: 64, offset: 192)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "create_chatnet", scope: !1217, file: !1218, line: 14, baseType: !1227, size: 64, align: 64, offset: 256)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64, align: 64)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!1230}
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64, align: 64)
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHATNET_REC", file: !81, line: 106, baseType: !1232)
!1232 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CHATNET_REC", file: !81, line: 106, flags: DIFlagFwdDecl)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "create_server_setup", scope: !1217, file: !1218, line: 15, baseType: !1234, size: 64, align: 64, offset: 320)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64, align: 64)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!760}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "create_channel_setup", scope: !1217, file: !1218, line: 16, baseType: !1238, size: 64, align: 64, offset: 384)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64, align: 64)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!1241}
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64, align: 64)
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_SETUP_REC", file: !81, line: 115, baseType: !1243)
!1243 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_SETUP_REC", file: !81, line: 115, flags: DIFlagFwdDecl)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "create_server_connect", scope: !1217, file: !1218, line: 17, baseType: !1245, size: 64, align: 64, offset: 448)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64, align: 64)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!90}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_server_connect", scope: !1217, file: !1218, line: 18, baseType: !1249, size: 64, align: 64, offset: 512)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64, align: 64)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{null, !90}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "server_init_connect", scope: !1217, file: !1218, line: 20, baseType: !1253, size: 64, align: 64, offset: 576)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64, align: 64)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!79, !90}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "server_connect", scope: !1217, file: !1218, line: 21, baseType: !1257, size: 64, align: 64, offset: 640)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64, align: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "channel_create", scope: !1217, file: !1218, line: 22, baseType: !1259, size: 64, align: 64, offset: 704)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64, align: 64)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!419, !79, !62, !62, !70}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "query_create", scope: !1217, file: !1218, line: 24, baseType: !1263, size: 64, align: 64, offset: 768)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64, align: 64)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!426, !62, !62, !70}
!1266 = !DILocalVariable(name: "proto", arg: 1, scope: !1212, file: !444, line: 477, type: !1215)
!1267 = !DILocation(line: 477, column: 57, scope: !1212)
!1268 = !DILocalVariable(name: "tmp", scope: !1212, file: !444, line: 479, type: !268)
!1269 = !DILocation(line: 479, column: 10, scope: !1212)
!1270 = !DILocalVariable(name: "next", scope: !1212, file: !444, line: 479, type: !268)
!1271 = !DILocation(line: 479, column: 16, scope: !1212)
!1272 = !DILocation(line: 481, column: 13, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1212, file: !444, line: 481, column: 2)
!1274 = !DILocation(line: 481, column: 11, scope: !1273)
!1275 = !DILocation(line: 481, column: 7, scope: !1273)
!1276 = !DILocation(line: 481, column: 25, scope: !1277)
!1277 = !DILexicalBlockFile(scope: !1278, file: !444, discriminator: 1)
!1278 = distinct !DILexicalBlock(scope: !1273, file: !444, line: 481, column: 2)
!1279 = !DILocation(line: 481, column: 29, scope: !1277)
!1280 = !DILocation(line: 481, column: 2, scope: !1277)
!1281 = !DILocalVariable(name: "rec", scope: !1282, file: !444, line: 482, type: !434)
!1282 = distinct !DILexicalBlock(scope: !1278, file: !444, line: 481, column: 49)
!1283 = !DILocation(line: 482, column: 18, scope: !1282)
!1284 = !DILocation(line: 482, column: 24, scope: !1282)
!1285 = !DILocation(line: 482, column: 29, scope: !1282)
!1286 = !DILocation(line: 484, column: 24, scope: !1282)
!1287 = !DILocation(line: 484, column: 29, scope: !1282)
!1288 = !DILocation(line: 484, column: 22, scope: !1282)
!1289 = !DILocation(line: 485, column: 21, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1282, file: !444, line: 485, column: 21)
!1291 = !DILocation(line: 485, column: 26, scope: !1290)
!1292 = !DILocation(line: 485, column: 32, scope: !1290)
!1293 = !DILocation(line: 485, column: 45, scope: !1290)
!1294 = !DILocation(line: 485, column: 52, scope: !1290)
!1295 = !DILocation(line: 485, column: 42, scope: !1290)
!1296 = !DILocation(line: 485, column: 21, scope: !1282)
!1297 = !DILocation(line: 486, column: 29, scope: !1290)
!1298 = !DILocation(line: 486, column: 4, scope: !1290)
!1299 = !DILocation(line: 487, column: 2, scope: !1282)
!1300 = !DILocation(line: 481, column: 43, scope: !1301)
!1301 = !DILexicalBlockFile(scope: !1278, file: !444, discriminator: 2)
!1302 = !DILocation(line: 481, column: 41, scope: !1301)
!1303 = !DILocation(line: 481, column: 2, scope: !1301)
!1304 = distinct !{!1304, !1305}
!1305 = !DILocation(line: 481, column: 2, scope: !1212)
!1306 = !DILocation(line: 488, column: 1, scope: !1212)
!1307 = distinct !DISubprogram(name: "cmd_rmreconns", scope: !444, file: !444, line: 346, type: !256, isLocal: true, isDefinition: true, scopeLine: 347, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !455)
!1308 = !DILocation(line: 348, column: 2, scope: !1307)
!1309 = !DILocation(line: 348, column: 9, scope: !1310)
!1310 = !DILexicalBlockFile(scope: !1307, file: !444, discriminator: 1)
!1311 = !DILocation(line: 348, column: 20, scope: !1310)
!1312 = !DILocation(line: 348, column: 2, scope: !1310)
!1313 = !DILocation(line: 349, column: 28, scope: !1307)
!1314 = !DILocation(line: 349, column: 40, scope: !1307)
!1315 = !DILocation(line: 349, column: 3, scope: !1307)
!1316 = !DILocation(line: 348, column: 2, scope: !1317)
!1317 = !DILexicalBlockFile(scope: !1307, file: !444, discriminator: 2)
!1318 = distinct !{!1318, !1308}
!1319 = !DILocation(line: 350, column: 1, scope: !1307)
!1320 = distinct !DISubprogram(name: "cmd_reconnect", scope: !444, file: !444, line: 395, type: !1321, isLocal: true, isDefinition: true, scopeLine: 396, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !455)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{null, !62, !79}
!1323 = !DILocalVariable(name: "data", arg: 1, scope: !1320, file: !444, line: 395, type: !62)
!1324 = !DILocation(line: 395, column: 39, scope: !1320)
!1325 = !DILocalVariable(name: "server", arg: 2, scope: !1320, file: !444, line: 395, type: !79)
!1326 = !DILocation(line: 395, column: 57, scope: !1320)
!1327 = !DILocalVariable(name: "conn", scope: !1320, file: !444, line: 397, type: !90)
!1328 = !DILocation(line: 397, column: 22, scope: !1320)
!1329 = !DILocalVariable(name: "rec", scope: !1320, file: !444, line: 398, type: !434)
!1330 = !DILocation(line: 398, column: 17, scope: !1320)
!1331 = !DILocalVariable(name: "tag", scope: !1320, file: !444, line: 399, type: !99)
!1332 = !DILocation(line: 399, column: 8, scope: !1320)
!1333 = !DILocalVariable(name: "msg", scope: !1320, file: !444, line: 399, type: !99)
!1334 = !DILocation(line: 399, column: 14, scope: !1320)
!1335 = !DILocalVariable(name: "free_arg", scope: !1320, file: !444, line: 400, type: !57)
!1336 = !DILocation(line: 400, column: 8, scope: !1320)
!1337 = !DILocalVariable(name: "tagnum", scope: !1320, file: !444, line: 401, type: !70)
!1338 = !DILocation(line: 401, column: 6, scope: !1320)
!1339 = !DILocation(line: 403, column: 22, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1320, file: !444, line: 403, column: 6)
!1341 = !DILocation(line: 403, column: 7, scope: !1340)
!1342 = !DILocation(line: 403, column: 6, scope: !1320)
!1343 = !DILocation(line: 404, column: 3, scope: !1340)
!1344 = !DILocation(line: 406, column: 7, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1320, file: !444, line: 406, column: 6)
!1346 = !DILocation(line: 406, column: 6, scope: !1345)
!1347 = !DILocation(line: 406, column: 11, scope: !1345)
!1348 = !DILocation(line: 406, column: 19, scope: !1345)
!1349 = !DILocation(line: 406, column: 32, scope: !1350)
!1350 = !DILexicalBlockFile(scope: !1345, file: !444, discriminator: 1)
!1351 = !DILocation(line: 406, column: 22, scope: !1350)
!1352 = !DILocation(line: 406, column: 42, scope: !1350)
!1353 = !DILocation(line: 406, column: 6, scope: !1350)
!1354 = !DILocation(line: 407, column: 28, scope: !1345)
!1355 = !DILocation(line: 407, column: 12, scope: !1345)
!1356 = !DILocation(line: 407, column: 10, scope: !1345)
!1357 = !DILocation(line: 407, column: 3, scope: !1345)
!1358 = !DILocation(line: 409, column: 6, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1320, file: !444, line: 409, column: 6)
!1360 = !DILocation(line: 409, column: 13, scope: !1359)
!1361 = !DILocation(line: 409, column: 6, scope: !1320)
!1362 = !DILocation(line: 411, column: 39, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1359, file: !444, line: 409, column: 21)
!1364 = !DILocation(line: 411, column: 47, scope: !1363)
!1365 = !DILocation(line: 411, column: 10, scope: !1363)
!1366 = !DILocation(line: 411, column: 8, scope: !1363)
!1367 = !DILocation(line: 413, column: 7, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1363, file: !444, line: 413, column: 7)
!1369 = !DILocation(line: 413, column: 15, scope: !1368)
!1370 = !DILocation(line: 413, column: 7, scope: !1363)
!1371 = !DILocation(line: 414, column: 26, scope: !1368)
!1372 = !DILocation(line: 414, column: 32, scope: !1368)
!1373 = !DILocation(line: 414, column: 4, scope: !1368)
!1374 = !DILocation(line: 416, column: 28, scope: !1363)
!1375 = !DILocation(line: 416, column: 27, scope: !1363)
!1376 = !DILocation(line: 416, column: 32, scope: !1363)
!1377 = !DILocation(line: 416, column: 27, scope: !1378)
!1378 = !DILexicalBlockFile(scope: !1363, file: !444, discriminator: 1)
!1379 = !DILocation(line: 417, column: 24, scope: !1363)
!1380 = !DILocation(line: 416, column: 27, scope: !1381)
!1381 = !DILexicalBlockFile(scope: !1363, file: !444, discriminator: 2)
!1382 = !DILocation(line: 416, column: 27, scope: !1383)
!1383 = !DILexicalBlockFile(scope: !1363, file: !444, discriminator: 3)
!1384 = !DILocation(line: 416, column: 9, scope: !1383)
!1385 = !DILocation(line: 416, column: 7, scope: !1383)
!1386 = !DILocation(line: 418, column: 40, scope: !1363)
!1387 = !DILocation(line: 418, column: 45, scope: !1363)
!1388 = !DILocation(line: 418, column: 3, scope: !1363)
!1389 = !DILocation(line: 419, column: 10, scope: !1363)
!1390 = !DILocation(line: 419, column: 3, scope: !1363)
!1391 = !DILocation(line: 421, column: 3, scope: !1363)
!1392 = !DILocation(line: 421, column: 9, scope: !1363)
!1393 = !DILocation(line: 421, column: 22, scope: !1363)
!1394 = !DILocation(line: 422, column: 18, scope: !1363)
!1395 = !DILocation(line: 422, column: 3, scope: !1363)
!1396 = !DILocation(line: 423, column: 24, scope: !1363)
!1397 = !DILocation(line: 423, column: 3, scope: !1363)
!1398 = !DILocation(line: 424, column: 19, scope: !1363)
!1399 = !DILocation(line: 424, column: 3, scope: !1363)
!1400 = !DILocation(line: 425, column: 17, scope: !1363)
!1401 = !DILocation(line: 428, column: 25, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1320, file: !444, line: 428, column: 6)
!1403 = !DILocation(line: 428, column: 6, scope: !1402)
!1404 = !DILocation(line: 428, column: 37, scope: !1402)
!1405 = !DILocation(line: 428, column: 6, scope: !1320)
!1406 = !DILocation(line: 430, column: 17, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1402, file: !444, line: 428, column: 43)
!1408 = !DILocation(line: 431, column: 19, scope: !1407)
!1409 = !DILocation(line: 431, column: 3, scope: !1407)
!1410 = !DILocation(line: 432, column: 17, scope: !1407)
!1411 = !DILocation(line: 435, column: 7, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1320, file: !444, line: 435, column: 6)
!1413 = !DILocation(line: 435, column: 6, scope: !1412)
!1414 = !DILocation(line: 435, column: 12, scope: !1412)
!1415 = !DILocation(line: 435, column: 6, scope: !1320)
!1416 = !DILocation(line: 437, column: 7, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !444, line: 437, column: 7)
!1418 = distinct !DILexicalBlock(scope: !1412, file: !444, line: 435, column: 21)
!1419 = !DILocation(line: 437, column: 18, scope: !1417)
!1420 = !DILocation(line: 437, column: 7, scope: !1418)
!1421 = !DILocation(line: 438, column: 4, scope: !1417)
!1422 = distinct !{!1422, !1421}
!1423 = !DILocation(line: 438, column: 25, scope: !1424)
!1424 = !DILexicalBlockFile(scope: !1425, file: !444, discriminator: 1)
!1425 = distinct !DILexicalBlock(scope: !1417, file: !444, line: 438, column: 7)
!1426 = !DILocation(line: 438, column: 9, scope: !1424)
!1427 = !DILocation(line: 438, column: 36, scope: !1424)
!1428 = distinct !{!1428, !1429}
!1429 = !DILocation(line: 438, column: 36, scope: !1425)
!1430 = !DILocation(line: 438, column: 41, scope: !1431)
!1431 = !DILexicalBlockFile(scope: !1432, file: !444, discriminator: 2)
!1432 = distinct !DILexicalBlock(scope: !1425, file: !444, line: 438, column: 39)
!1433 = !DILocation(line: 438, column: 119, scope: !1434)
!1434 = !DILexicalBlockFile(scope: !1431, file: !444, discriminator: 5)
!1435 = !DILocation(line: 438, column: 134, scope: !1431)
!1436 = !DILocation(line: 438, column: 155, scope: !1437)
!1437 = !DILexicalBlockFile(scope: !1425, file: !444, discriminator: 3)
!1438 = !DILocation(line: 438, column: 155, scope: !1439)
!1439 = !DILexicalBlockFile(scope: !1425, file: !444, discriminator: 4)
!1440 = !DILocation(line: 439, column: 23, scope: !1418)
!1441 = !DILocation(line: 439, column: 35, scope: !1418)
!1442 = !DILocation(line: 439, column: 21, scope: !1418)
!1443 = !DILocation(line: 440, column: 2, scope: !1418)
!1444 = !DILocation(line: 441, column: 27, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1446, file: !444, line: 441, column: 7)
!1446 = distinct !DILexicalBlock(scope: !1412, file: !444, line: 440, column: 9)
!1447 = !DILocation(line: 441, column: 7, scope: !1445)
!1448 = !DILocation(line: 441, column: 45, scope: !1445)
!1449 = !DILocation(line: 441, column: 7, scope: !1446)
!1450 = !DILocation(line: 442, column: 8, scope: !1445)
!1451 = !DILocation(line: 442, column: 4, scope: !1445)
!1452 = !DILocation(line: 444, column: 17, scope: !1446)
!1453 = !DILocation(line: 444, column: 12, scope: !1446)
!1454 = !DILocation(line: 444, column: 10, scope: !1446)
!1455 = !DILocation(line: 445, column: 9, scope: !1446)
!1456 = !DILocation(line: 445, column: 16, scope: !1446)
!1457 = !DILocation(line: 445, column: 9, scope: !1458)
!1458 = !DILexicalBlockFile(scope: !1446, file: !444, discriminator: 1)
!1459 = !DILocation(line: 445, column: 48, scope: !1460)
!1460 = !DILexicalBlockFile(scope: !1446, file: !444, discriminator: 2)
!1461 = !DILocation(line: 445, column: 29, scope: !1460)
!1462 = !DILocation(line: 445, column: 9, scope: !1460)
!1463 = !DILocation(line: 445, column: 9, scope: !1464)
!1464 = !DILexicalBlockFile(scope: !1446, file: !444, discriminator: 3)
!1465 = !DILocation(line: 445, column: 7, scope: !1464)
!1466 = !DILocation(line: 448, column: 6, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1320, file: !444, line: 448, column: 6)
!1468 = !DILocation(line: 448, column: 10, scope: !1467)
!1469 = !DILocation(line: 448, column: 6, scope: !1320)
!1470 = !DILocation(line: 449, column: 48, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1467, file: !444, line: 448, column: 18)
!1472 = !DILocation(line: 449, column: 3, scope: !1471)
!1473 = !DILocation(line: 450, column: 2, scope: !1471)
!1474 = !DILocation(line: 451, column: 10, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1467, file: !444, line: 450, column: 9)
!1476 = !DILocation(line: 451, column: 15, scope: !1475)
!1477 = !DILocation(line: 451, column: 8, scope: !1475)
!1478 = !DILocation(line: 452, column: 22, scope: !1475)
!1479 = !DILocation(line: 452, column: 3, scope: !1475)
!1480 = !DILocation(line: 453, column: 28, scope: !1475)
!1481 = !DILocation(line: 453, column: 3, scope: !1475)
!1482 = !DILocation(line: 454, column: 18, scope: !1475)
!1483 = !DILocation(line: 454, column: 3, scope: !1475)
!1484 = !DILocation(line: 455, column: 24, scope: !1475)
!1485 = !DILocation(line: 455, column: 3, scope: !1475)
!1486 = !DILocation(line: 458, column: 18, scope: !1320)
!1487 = !DILocation(line: 458, column: 2, scope: !1320)
!1488 = !DILocation(line: 459, column: 1, scope: !1320)
!1489 = !DILocation(line: 459, column: 1, scope: !1490)
!1490 = !DILexicalBlockFile(scope: !1320, file: !444, discriminator: 1)
!1491 = distinct !DISubprogram(name: "cmd_disconnect", scope: !444, file: !444, line: 461, type: !1321, isLocal: true, isDefinition: true, scopeLine: 462, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !455)
!1492 = !DILocalVariable(name: "data", arg: 1, scope: !1491, file: !444, line: 461, type: !62)
!1493 = !DILocation(line: 461, column: 40, scope: !1491)
!1494 = !DILocalVariable(name: "server", arg: 2, scope: !1491, file: !444, line: 461, type: !79)
!1495 = !DILocation(line: 461, column: 58, scope: !1491)
!1496 = !DILocalVariable(name: "rec", scope: !1491, file: !444, line: 463, type: !434)
!1497 = !DILocation(line: 463, column: 17, scope: !1491)
!1498 = !DILocation(line: 465, column: 26, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1491, file: !444, line: 465, column: 6)
!1500 = !DILocation(line: 465, column: 6, scope: !1499)
!1501 = !DILocation(line: 465, column: 45, scope: !1499)
!1502 = !DILocation(line: 465, column: 6, scope: !1491)
!1503 = !DILocation(line: 466, column: 3, scope: !1499)
!1504 = !DILocation(line: 468, column: 32, scope: !1491)
!1505 = !DILocation(line: 468, column: 36, scope: !1491)
!1506 = !DILocation(line: 468, column: 27, scope: !1491)
!1507 = !DILocation(line: 468, column: 8, scope: !1508)
!1508 = !DILexicalBlockFile(scope: !1491, file: !444, discriminator: 1)
!1509 = !DILocation(line: 468, column: 6, scope: !1491)
!1510 = !DILocation(line: 470, column: 6, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1491, file: !444, line: 470, column: 6)
!1512 = !DILocation(line: 470, column: 10, scope: !1511)
!1513 = !DILocation(line: 470, column: 6, scope: !1491)
!1514 = !DILocation(line: 471, column: 48, scope: !1511)
!1515 = !DILocation(line: 471, column: 3, scope: !1511)
!1516 = !DILocation(line: 473, column: 28, scope: !1511)
!1517 = !DILocation(line: 473, column: 3, scope: !1511)
!1518 = !DILocation(line: 474, column: 2, scope: !1491)
!1519 = !DILocation(line: 475, column: 1, scope: !1491)
!1520 = !DILocation(line: 475, column: 1, scope: !1508)
!1521 = distinct !DISubprogram(name: "servers_reconnect_deinit", scope: !444, file: !444, line: 518, type: !256, isLocal: false, isDefinition: true, scopeLine: 519, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !455)
!1522 = !DILocation(line: 520, column: 18, scope: !1521)
!1523 = !DILocation(line: 520, column: 2, scope: !1521)
!1524 = !DILocation(line: 522, column: 2, scope: !1521)
!1525 = !DILocation(line: 523, column: 2, scope: !1521)
!1526 = !DILocation(line: 524, column: 2, scope: !1521)
!1527 = !DILocation(line: 525, column: 2, scope: !1521)
!1528 = !DILocation(line: 526, column: 2, scope: !1521)
!1529 = !DILocation(line: 528, column: 2, scope: !1521)
!1530 = !DILocation(line: 529, column: 2, scope: !1521)
!1531 = !DILocation(line: 530, column: 2, scope: !1521)
!1532 = !DILocation(line: 531, column: 1, scope: !1521)
!1533 = distinct !DISubprogram(name: "server_connect_copy_skeleton", scope: !444, file: !444, line: 164, type: !1534, isLocal: true, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !455)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!90, !90, !70}
!1536 = !DILocalVariable(name: "src", arg: 1, scope: !1533, file: !444, line: 164, type: !90)
!1537 = !DILocation(line: 164, column: 50, scope: !1533)
!1538 = !DILocalVariable(name: "connect_info", arg: 2, scope: !1533, file: !444, line: 164, type: !70)
!1539 = !DILocation(line: 164, column: 59, scope: !1533)
!1540 = !DILocalVariable(name: "dest", scope: !1533, file: !444, line: 166, type: !90)
!1541 = !DILocation(line: 166, column: 22, scope: !1533)
!1542 = !DILocation(line: 168, column: 14, scope: !1533)
!1543 = !DILocation(line: 169, column: 47, scope: !1533)
!1544 = !DILocation(line: 169, column: 2, scope: !1533)
!1545 = !DILocation(line: 170, column: 2, scope: !1533)
!1546 = distinct !{!1546, !1545}
!1547 = !DILocation(line: 170, column: 10, scope: !1548)
!1548 = !DILexicalBlockFile(scope: !1549, file: !444, discriminator: 1)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !444, line: 170, column: 10)
!1550 = distinct !DILexicalBlock(scope: !1533, file: !444, line: 170, column: 4)
!1551 = !DILocation(line: 170, column: 15, scope: !1548)
!1552 = !DILocation(line: 170, column: 5, scope: !1553)
!1553 = !DILexicalBlockFile(scope: !1554, file: !444, discriminator: 2)
!1554 = distinct !DILexicalBlock(scope: !1549, file: !444, line: 170, column: 3)
!1555 = !DILocation(line: 170, column: 14, scope: !1556)
!1556 = !DILexicalBlockFile(scope: !1557, file: !444, discriminator: 3)
!1557 = distinct !DILexicalBlock(scope: !1549, file: !444, line: 170, column: 12)
!1558 = !DILocation(line: 170, column: 99, scope: !1556)
!1559 = !DILocation(line: 170, column: 7, scope: !1560)
!1560 = !DILexicalBlockFile(scope: !1550, file: !444, discriminator: 4)
!1561 = !DILocation(line: 172, column: 28, scope: !1533)
!1562 = !DILocation(line: 172, column: 9, scope: !1533)
!1563 = !DILocation(line: 173, column: 15, scope: !1533)
!1564 = !DILocation(line: 173, column: 2, scope: !1533)
!1565 = !DILocation(line: 173, column: 8, scope: !1533)
!1566 = !DILocation(line: 173, column: 13, scope: !1533)
!1567 = !DILocation(line: 174, column: 23, scope: !1533)
!1568 = !DILocation(line: 174, column: 28, scope: !1533)
!1569 = !DILocation(line: 174, column: 2, scope: !1533)
!1570 = !DILocation(line: 174, column: 8, scope: !1533)
!1571 = !DILocation(line: 174, column: 21, scope: !1533)
!1572 = !DILocation(line: 175, column: 25, scope: !1533)
!1573 = !DILocation(line: 175, column: 30, scope: !1533)
!1574 = !DILocation(line: 175, column: 16, scope: !1533)
!1575 = !DILocation(line: 175, column: 2, scope: !1533)
!1576 = !DILocation(line: 175, column: 8, scope: !1533)
!1577 = !DILocation(line: 175, column: 14, scope: !1533)
!1578 = !DILocation(line: 176, column: 28, scope: !1533)
!1579 = !DILocation(line: 176, column: 33, scope: !1533)
!1580 = !DILocation(line: 176, column: 9, scope: !1533)
!1581 = !DILocation(line: 176, column: 15, scope: !1533)
!1582 = !DILocation(line: 176, column: 26, scope: !1533)
!1583 = !DILocation(line: 177, column: 32, scope: !1533)
!1584 = !DILocation(line: 177, column: 37, scope: !1533)
!1585 = !DILocation(line: 177, column: 23, scope: !1533)
!1586 = !DILocation(line: 177, column: 2, scope: !1533)
!1587 = !DILocation(line: 177, column: 8, scope: !1533)
!1588 = !DILocation(line: 177, column: 21, scope: !1533)
!1589 = !DILocation(line: 178, column: 38, scope: !1533)
!1590 = !DILocation(line: 178, column: 43, scope: !1533)
!1591 = !DILocation(line: 178, column: 29, scope: !1533)
!1592 = !DILocation(line: 178, column: 2, scope: !1533)
!1593 = !DILocation(line: 178, column: 8, scope: !1533)
!1594 = !DILocation(line: 178, column: 27, scope: !1533)
!1595 = !DILocation(line: 179, column: 34, scope: !1533)
!1596 = !DILocation(line: 179, column: 39, scope: !1533)
!1597 = !DILocation(line: 179, column: 25, scope: !1533)
!1598 = !DILocation(line: 179, column: 2, scope: !1533)
!1599 = !DILocation(line: 179, column: 8, scope: !1533)
!1600 = !DILocation(line: 179, column: 23, scope: !1533)
!1601 = !DILocation(line: 181, column: 23, scope: !1533)
!1602 = !DILocation(line: 181, column: 28, scope: !1533)
!1603 = !DILocation(line: 181, column: 14, scope: !1533)
!1604 = !DILocation(line: 181, column: 2, scope: !1533)
!1605 = !DILocation(line: 181, column: 8, scope: !1533)
!1606 = !DILocation(line: 181, column: 12, scope: !1533)
!1607 = !DILocation(line: 183, column: 6, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1533, file: !444, line: 183, column: 6)
!1609 = !DILocation(line: 183, column: 6, scope: !1533)
!1610 = !DILocation(line: 184, column: 32, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1608, file: !444, line: 183, column: 20)
!1612 = !DILocation(line: 184, column: 37, scope: !1611)
!1613 = !DILocation(line: 184, column: 17, scope: !1611)
!1614 = !DILocation(line: 184, column: 23, scope: !1611)
!1615 = !DILocation(line: 184, column: 30, scope: !1611)
!1616 = !DILocation(line: 185, column: 28, scope: !1611)
!1617 = !DILocation(line: 185, column: 33, scope: !1611)
!1618 = !DILocation(line: 185, column: 19, scope: !1611)
!1619 = !DILocation(line: 185, column: 3, scope: !1611)
!1620 = !DILocation(line: 185, column: 9, scope: !1611)
!1621 = !DILocation(line: 185, column: 17, scope: !1611)
!1622 = !DILocation(line: 186, column: 16, scope: !1611)
!1623 = !DILocation(line: 186, column: 21, scope: !1611)
!1624 = !DILocation(line: 186, column: 3, scope: !1611)
!1625 = !DILocation(line: 186, column: 9, scope: !1611)
!1626 = !DILocation(line: 186, column: 14, scope: !1611)
!1627 = !DILocation(line: 187, column: 29, scope: !1611)
!1628 = !DILocation(line: 187, column: 34, scope: !1611)
!1629 = !DILocation(line: 187, column: 20, scope: !1611)
!1630 = !DILocation(line: 187, column: 3, scope: !1611)
!1631 = !DILocation(line: 187, column: 9, scope: !1611)
!1632 = !DILocation(line: 187, column: 18, scope: !1611)
!1633 = !DILocation(line: 188, column: 2, scope: !1611)
!1634 = !DILocation(line: 190, column: 27, scope: !1533)
!1635 = !DILocation(line: 190, column: 32, scope: !1533)
!1636 = !DILocation(line: 190, column: 18, scope: !1533)
!1637 = !DILocation(line: 190, column: 2, scope: !1533)
!1638 = !DILocation(line: 190, column: 8, scope: !1533)
!1639 = !DILocation(line: 190, column: 16, scope: !1533)
!1640 = !DILocation(line: 191, column: 24, scope: !1533)
!1641 = !DILocation(line: 191, column: 29, scope: !1533)
!1642 = !DILocation(line: 191, column: 15, scope: !1533)
!1643 = !DILocation(line: 191, column: 2, scope: !1533)
!1644 = !DILocation(line: 191, column: 8, scope: !1533)
!1645 = !DILocation(line: 191, column: 13, scope: !1533)
!1646 = !DILocation(line: 192, column: 28, scope: !1533)
!1647 = !DILocation(line: 192, column: 33, scope: !1533)
!1648 = !DILocation(line: 192, column: 19, scope: !1533)
!1649 = !DILocation(line: 192, column: 2, scope: !1533)
!1650 = !DILocation(line: 192, column: 8, scope: !1533)
!1651 = !DILocation(line: 192, column: 17, scope: !1533)
!1652 = !DILocation(line: 193, column: 28, scope: !1533)
!1653 = !DILocation(line: 193, column: 33, scope: !1533)
!1654 = !DILocation(line: 193, column: 19, scope: !1533)
!1655 = !DILocation(line: 193, column: 2, scope: !1533)
!1656 = !DILocation(line: 193, column: 8, scope: !1533)
!1657 = !DILocation(line: 193, column: 17, scope: !1533)
!1658 = !DILocation(line: 195, column: 6, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1533, file: !444, line: 195, column: 6)
!1660 = !DILocation(line: 195, column: 11, scope: !1659)
!1661 = !DILocation(line: 195, column: 19, scope: !1659)
!1662 = !DILocation(line: 195, column: 6, scope: !1533)
!1663 = !DILocation(line: 196, column: 31, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1659, file: !444, line: 195, column: 27)
!1665 = !DILocation(line: 196, column: 20, scope: !1664)
!1666 = !DILocation(line: 196, column: 3, scope: !1664)
!1667 = !DILocation(line: 196, column: 9, scope: !1664)
!1668 = !DILocation(line: 196, column: 17, scope: !1664)
!1669 = !DILocation(line: 197, column: 10, scope: !1664)
!1670 = !DILocation(line: 197, column: 16, scope: !1664)
!1671 = !DILocation(line: 197, column: 3, scope: !1664)
!1672 = !DILocation(line: 197, column: 25, scope: !1664)
!1673 = !DILocation(line: 197, column: 30, scope: !1664)
!1674 = !DILocation(line: 198, column: 2, scope: !1664)
!1675 = !DILocation(line: 199, column: 6, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1533, file: !444, line: 199, column: 6)
!1677 = !DILocation(line: 199, column: 11, scope: !1676)
!1678 = !DILocation(line: 199, column: 19, scope: !1676)
!1679 = !DILocation(line: 199, column: 6, scope: !1533)
!1680 = !DILocation(line: 200, column: 31, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1676, file: !444, line: 199, column: 27)
!1682 = !DILocation(line: 200, column: 20, scope: !1681)
!1683 = !DILocation(line: 200, column: 3, scope: !1681)
!1684 = !DILocation(line: 200, column: 9, scope: !1681)
!1685 = !DILocation(line: 200, column: 17, scope: !1681)
!1686 = !DILocation(line: 201, column: 10, scope: !1681)
!1687 = !DILocation(line: 201, column: 16, scope: !1681)
!1688 = !DILocation(line: 201, column: 3, scope: !1681)
!1689 = !DILocation(line: 201, column: 25, scope: !1681)
!1690 = !DILocation(line: 201, column: 30, scope: !1681)
!1691 = !DILocation(line: 202, column: 2, scope: !1681)
!1692 = !DILocation(line: 204, column: 28, scope: !1533)
!1693 = !DILocation(line: 204, column: 33, scope: !1533)
!1694 = !DILocation(line: 204, column: 19, scope: !1533)
!1695 = !DILocation(line: 204, column: 2, scope: !1533)
!1696 = !DILocation(line: 204, column: 8, scope: !1533)
!1697 = !DILocation(line: 204, column: 17, scope: !1533)
!1698 = !DILocation(line: 205, column: 31, scope: !1533)
!1699 = !DILocation(line: 205, column: 36, scope: !1533)
!1700 = !DILocation(line: 205, column: 22, scope: !1533)
!1701 = !DILocation(line: 205, column: 2, scope: !1533)
!1702 = !DILocation(line: 205, column: 8, scope: !1533)
!1703 = !DILocation(line: 205, column: 20, scope: !1533)
!1704 = !DILocation(line: 206, column: 31, scope: !1533)
!1705 = !DILocation(line: 206, column: 36, scope: !1533)
!1706 = !DILocation(line: 206, column: 2, scope: !1533)
!1707 = !DILocation(line: 206, column: 8, scope: !1533)
!1708 = !DILocation(line: 206, column: 29, scope: !1533)
!1709 = !DILocation(line: 207, column: 25, scope: !1533)
!1710 = !DILocation(line: 207, column: 30, scope: !1533)
!1711 = !DILocation(line: 207, column: 2, scope: !1533)
!1712 = !DILocation(line: 207, column: 8, scope: !1533)
!1713 = !DILocation(line: 207, column: 23, scope: !1533)
!1714 = !DILocation(line: 208, column: 22, scope: !1533)
!1715 = !DILocation(line: 208, column: 27, scope: !1533)
!1716 = !DILocation(line: 208, column: 2, scope: !1533)
!1717 = !DILocation(line: 208, column: 8, scope: !1533)
!1718 = !DILocation(line: 208, column: 20, scope: !1533)
!1719 = !DILocation(line: 210, column: 18, scope: !1533)
!1720 = !DILocation(line: 210, column: 23, scope: !1533)
!1721 = !DILocation(line: 210, column: 2, scope: !1533)
!1722 = !DILocation(line: 210, column: 8, scope: !1533)
!1723 = !DILocation(line: 210, column: 16, scope: !1533)
!1724 = !DILocation(line: 211, column: 28, scope: !1533)
!1725 = !DILocation(line: 211, column: 33, scope: !1533)
!1726 = !DILocation(line: 211, column: 19, scope: !1533)
!1727 = !DILocation(line: 211, column: 2, scope: !1533)
!1728 = !DILocation(line: 211, column: 8, scope: !1533)
!1729 = !DILocation(line: 211, column: 17, scope: !1533)
!1730 = !DILocation(line: 212, column: 28, scope: !1533)
!1731 = !DILocation(line: 212, column: 33, scope: !1533)
!1732 = !DILocation(line: 212, column: 19, scope: !1533)
!1733 = !DILocation(line: 212, column: 2, scope: !1533)
!1734 = !DILocation(line: 212, column: 8, scope: !1533)
!1735 = !DILocation(line: 212, column: 17, scope: !1533)
!1736 = !DILocation(line: 213, column: 21, scope: !1533)
!1737 = !DILocation(line: 213, column: 26, scope: !1533)
!1738 = !DILocation(line: 213, column: 2, scope: !1533)
!1739 = !DILocation(line: 213, column: 8, scope: !1533)
!1740 = !DILocation(line: 213, column: 19, scope: !1533)
!1741 = !DILocation(line: 214, column: 30, scope: !1533)
!1742 = !DILocation(line: 214, column: 35, scope: !1533)
!1743 = !DILocation(line: 214, column: 21, scope: !1533)
!1744 = !DILocation(line: 214, column: 2, scope: !1533)
!1745 = !DILocation(line: 214, column: 8, scope: !1533)
!1746 = !DILocation(line: 214, column: 19, scope: !1533)
!1747 = !DILocation(line: 215, column: 30, scope: !1533)
!1748 = !DILocation(line: 215, column: 35, scope: !1533)
!1749 = !DILocation(line: 215, column: 21, scope: !1533)
!1750 = !DILocation(line: 215, column: 2, scope: !1533)
!1751 = !DILocation(line: 215, column: 8, scope: !1533)
!1752 = !DILocation(line: 215, column: 19, scope: !1533)
!1753 = !DILocation(line: 216, column: 31, scope: !1533)
!1754 = !DILocation(line: 216, column: 36, scope: !1533)
!1755 = !DILocation(line: 216, column: 22, scope: !1533)
!1756 = !DILocation(line: 216, column: 2, scope: !1533)
!1757 = !DILocation(line: 216, column: 8, scope: !1533)
!1758 = !DILocation(line: 216, column: 20, scope: !1533)
!1759 = !DILocation(line: 217, column: 35, scope: !1533)
!1760 = !DILocation(line: 217, column: 40, scope: !1533)
!1761 = !DILocation(line: 217, column: 26, scope: !1533)
!1762 = !DILocation(line: 217, column: 2, scope: !1533)
!1763 = !DILocation(line: 217, column: 8, scope: !1533)
!1764 = !DILocation(line: 217, column: 24, scope: !1533)
!1765 = !DILocation(line: 218, column: 37, scope: !1533)
!1766 = !DILocation(line: 218, column: 42, scope: !1533)
!1767 = !DILocation(line: 218, column: 28, scope: !1533)
!1768 = !DILocation(line: 218, column: 2, scope: !1533)
!1769 = !DILocation(line: 218, column: 8, scope: !1533)
!1770 = !DILocation(line: 218, column: 26, scope: !1533)
!1771 = !DILocation(line: 220, column: 9, scope: !1533)
!1772 = !DILocation(line: 220, column: 2, scope: !1533)
!1773 = !DILocation(line: 221, column: 1, scope: !1533)
!1774 = distinct !DISubprogram(name: "server_reconnect_add", scope: !444, file: !444, line: 61, type: !1775, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !455)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{null, !90, !340}
!1777 = !DILocalVariable(name: "conn", arg: 1, scope: !1774, file: !444, line: 61, type: !90)
!1778 = !DILocation(line: 61, column: 54, scope: !1774)
!1779 = !DILocalVariable(name: "next_connect", arg: 2, scope: !1774, file: !444, line: 62, type: !340)
!1780 = !DILocation(line: 62, column: 13, scope: !1774)
!1781 = !DILocalVariable(name: "rec", scope: !1774, file: !444, line: 64, type: !434)
!1782 = !DILocation(line: 64, column: 17, scope: !1774)
!1783 = !DILocation(line: 66, column: 2, scope: !1774)
!1784 = distinct !{!1784, !1783}
!1785 = !DILocation(line: 66, column: 53, scope: !1786)
!1786 = !DILexicalBlockFile(scope: !1787, file: !444, discriminator: 1)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !444, line: 66, column: 10)
!1788 = distinct !DILexicalBlock(scope: !1774, file: !444, line: 66, column: 4)
!1789 = !DILocation(line: 66, column: 35, scope: !1786)
!1790 = !DILocation(line: 66, column: 12, scope: !1786)
!1791 = !DILocation(line: 66, column: 10, scope: !1786)
!1792 = !DILocation(line: 66, column: 11, scope: !1793)
!1793 = !DILexicalBlockFile(scope: !1787, file: !444, discriminator: 2)
!1794 = !DILocation(line: 66, column: 10, scope: !1795)
!1795 = !DILexicalBlockFile(scope: !1788, file: !444, discriminator: 3)
!1796 = !DILocation(line: 66, column: 41, scope: !1797)
!1797 = !DILexicalBlockFile(scope: !1798, file: !444, discriminator: 4)
!1798 = distinct !DILexicalBlock(scope: !1787, file: !444, line: 66, column: 39)
!1799 = !DILocation(line: 66, column: 50, scope: !1800)
!1800 = !DILexicalBlockFile(scope: !1801, file: !444, discriminator: 5)
!1801 = distinct !DILexicalBlock(scope: !1787, file: !444, line: 66, column: 48)
!1802 = !DILocation(line: 66, column: 146, scope: !1800)
!1803 = !DILocation(line: 66, column: 157, scope: !1804)
!1804 = !DILexicalBlockFile(scope: !1788, file: !444, discriminator: 6)
!1805 = !DILocation(line: 68, column: 27, scope: !1774)
!1806 = !DILocation(line: 68, column: 9, scope: !1774)
!1807 = !DILocation(line: 68, column: 6, scope: !1774)
!1808 = !DILocation(line: 69, column: 13, scope: !1774)
!1809 = !DILocation(line: 69, column: 2, scope: !1774)
!1810 = !DILocation(line: 69, column: 7, scope: !1774)
!1811 = !DILocation(line: 69, column: 11, scope: !1774)
!1812 = !DILocation(line: 70, column: 22, scope: !1774)
!1813 = !DILocation(line: 70, column: 2, scope: !1774)
!1814 = !DILocation(line: 70, column: 7, scope: !1774)
!1815 = !DILocation(line: 70, column: 20, scope: !1774)
!1816 = !DILocation(line: 72, column: 14, scope: !1774)
!1817 = !DILocation(line: 72, column: 2, scope: !1774)
!1818 = !DILocation(line: 72, column: 7, scope: !1774)
!1819 = !DILocation(line: 72, column: 12, scope: !1774)
!1820 = !DILocation(line: 73, column: 2, scope: !1774)
!1821 = !DILocation(line: 73, column: 8, scope: !1774)
!1822 = !DILocation(line: 73, column: 21, scope: !1774)
!1823 = !DILocation(line: 74, column: 21, scope: !1774)
!1824 = !DILocation(line: 74, column: 2, scope: !1774)
!1825 = !DILocation(line: 76, column: 30, scope: !1774)
!1826 = !DILocation(line: 76, column: 42, scope: !1774)
!1827 = !DILocation(line: 76, column: 15, scope: !1774)
!1828 = !DILocation(line: 76, column: 13, scope: !1774)
!1829 = !DILocation(line: 77, column: 1, scope: !1774)
!1830 = !DILocation(line: 77, column: 1, scope: !1831)
!1831 = !DILexicalBlockFile(scope: !1774, file: !444, discriminator: 1)
!1832 = distinct !DISubprogram(name: "sserver_connect", scope: !444, file: !444, line: 152, type: !1833, isLocal: true, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !455)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{null, !760, !90}
!1835 = !DILocalVariable(name: "rec", arg: 1, scope: !1832, file: !444, line: 152, type: !760)
!1836 = !DILocation(line: 152, column: 47, scope: !1832)
!1837 = !DILocalVariable(name: "conn", arg: 2, scope: !1832, file: !444, line: 152, type: !90)
!1838 = !DILocation(line: 152, column: 72, scope: !1832)
!1839 = !DILocation(line: 154, column: 24, scope: !1832)
!1840 = !DILocation(line: 154, column: 29, scope: !1832)
!1841 = !DILocation(line: 154, column: 9, scope: !1832)
!1842 = !DILocation(line: 154, column: 15, scope: !1832)
!1843 = !DILocation(line: 154, column: 22, scope: !1832)
!1844 = !DILocation(line: 155, column: 27, scope: !1832)
!1845 = !DILocation(line: 155, column: 32, scope: !1832)
!1846 = !DILocation(line: 155, column: 18, scope: !1832)
!1847 = !DILocation(line: 155, column: 2, scope: !1832)
!1848 = !DILocation(line: 155, column: 8, scope: !1832)
!1849 = !DILocation(line: 155, column: 16, scope: !1832)
!1850 = !DILocation(line: 156, column: 6, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1832, file: !444, line: 156, column: 6)
!1852 = !DILocation(line: 156, column: 12, scope: !1851)
!1853 = !DILocation(line: 156, column: 17, scope: !1851)
!1854 = !DILocation(line: 156, column: 6, scope: !1832)
!1855 = !DILocation(line: 156, column: 36, scope: !1856)
!1856 = !DILexicalBlockFile(scope: !1851, file: !444, discriminator: 1)
!1857 = !DILocation(line: 156, column: 41, scope: !1856)
!1858 = !DILocation(line: 156, column: 23, scope: !1856)
!1859 = !DILocation(line: 156, column: 29, scope: !1856)
!1860 = !DILocation(line: 156, column: 34, scope: !1856)
!1861 = !DILocation(line: 158, column: 27, scope: !1832)
!1862 = !DILocation(line: 158, column: 33, scope: !1832)
!1863 = !DILocation(line: 158, column: 2, scope: !1832)
!1864 = !DILocation(line: 159, column: 23, scope: !1832)
!1865 = !DILocation(line: 159, column: 29, scope: !1832)
!1866 = !DILocation(line: 159, column: 34, scope: !1832)
!1867 = !DILocation(line: 159, column: 47, scope: !1832)
!1868 = !DILocation(line: 159, column: 46, scope: !1832)
!1869 = !DILocation(line: 159, column: 2, scope: !1832)
!1870 = !DILocation(line: 160, column: 23, scope: !1832)
!1871 = !DILocation(line: 160, column: 2, scope: !1832)
!1872 = !DILocation(line: 161, column: 1, scope: !1832)
!1873 = distinct !DISubprogram(name: "reconnect_all", scope: !444, file: !444, line: 366, type: !256, isLocal: true, isDefinition: true, scopeLine: 367, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !455)
!1874 = !DILocalVariable(name: "list", scope: !1873, file: !444, line: 368, type: !268)
!1875 = !DILocation(line: 368, column: 10, scope: !1873)
!1876 = !DILocalVariable(name: "conn", scope: !1873, file: !444, line: 369, type: !90)
!1877 = !DILocation(line: 369, column: 22, scope: !1873)
!1878 = !DILocalVariable(name: "rec", scope: !1873, file: !444, line: 370, type: !434)
!1879 = !DILocation(line: 370, column: 17, scope: !1873)
!1880 = !DILocation(line: 375, column: 7, scope: !1873)
!1881 = !DILocation(line: 376, column: 2, scope: !1873)
!1882 = !DILocation(line: 376, column: 9, scope: !1883)
!1883 = !DILexicalBlockFile(scope: !1873, file: !444, discriminator: 1)
!1884 = !DILocation(line: 376, column: 20, scope: !1883)
!1885 = !DILocation(line: 376, column: 2, scope: !1883)
!1886 = !DILocation(line: 377, column: 9, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1873, file: !444, line: 376, column: 28)
!1888 = !DILocation(line: 377, column: 21, scope: !1887)
!1889 = !DILocation(line: 377, column: 7, scope: !1887)
!1890 = !DILocation(line: 379, column: 25, scope: !1887)
!1891 = !DILocation(line: 379, column: 31, scope: !1887)
!1892 = !DILocation(line: 379, column: 36, scope: !1887)
!1893 = !DILocation(line: 379, column: 10, scope: !1887)
!1894 = !DILocation(line: 379, column: 8, scope: !1887)
!1895 = !DILocation(line: 380, column: 36, scope: !1887)
!1896 = !DILocation(line: 380, column: 41, scope: !1887)
!1897 = !DILocation(line: 380, column: 17, scope: !1887)
!1898 = !DILocation(line: 381, column: 28, scope: !1887)
!1899 = !DILocation(line: 381, column: 3, scope: !1887)
!1900 = !DILocation(line: 376, column: 2, scope: !1901)
!1901 = !DILexicalBlockFile(scope: !1873, file: !444, discriminator: 2)
!1902 = distinct !{!1902, !1881}
!1903 = !DILocation(line: 385, column: 2, scope: !1873)
!1904 = !DILocation(line: 385, column: 9, scope: !1883)
!1905 = !DILocation(line: 385, column: 14, scope: !1883)
!1906 = !DILocation(line: 385, column: 2, scope: !1883)
!1907 = !DILocation(line: 386, column: 10, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1873, file: !444, line: 385, column: 22)
!1909 = !DILocation(line: 386, column: 16, scope: !1908)
!1910 = !DILocation(line: 386, column: 8, scope: !1908)
!1911 = !DILocation(line: 388, column: 18, scope: !1908)
!1912 = !DILocation(line: 388, column: 3, scope: !1908)
!1913 = !DILocation(line: 389, column: 38, scope: !1908)
!1914 = !DILocation(line: 389, column: 17, scope: !1908)
!1915 = !DILocation(line: 390, column: 39, scope: !1908)
!1916 = !DILocation(line: 390, column: 45, scope: !1908)
!1917 = !DILocation(line: 390, column: 24, scope: !1908)
!1918 = !DILocation(line: 390, column: 22, scope: !1908)
!1919 = !DILocation(line: 385, column: 2, scope: !1901)
!1920 = distinct !{!1920, !1903}
!1921 = !DILocation(line: 392, column: 1, scope: !1873)
!1922 = distinct !DISubprogram(name: "reconnect_find_tag", scope: !444, file: !444, line: 352, type: !1923, isLocal: true, isDefinition: true, scopeLine: 353, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !455)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{!434, !70}
!1925 = !DILocalVariable(name: "tag", arg: 1, scope: !1922, file: !444, line: 352, type: !70)
!1926 = !DILocation(line: 352, column: 46, scope: !1922)
!1927 = !DILocalVariable(name: "tmp", scope: !1922, file: !444, line: 354, type: !268)
!1928 = !DILocation(line: 354, column: 10, scope: !1922)
!1929 = !DILocation(line: 356, column: 13, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1922, file: !444, line: 356, column: 2)
!1931 = !DILocation(line: 356, column: 11, scope: !1930)
!1932 = !DILocation(line: 356, column: 7, scope: !1930)
!1933 = !DILocation(line: 356, column: 25, scope: !1934)
!1934 = !DILexicalBlockFile(scope: !1935, file: !444, discriminator: 1)
!1935 = distinct !DILexicalBlock(scope: !1930, file: !444, line: 356, column: 2)
!1936 = !DILocation(line: 356, column: 29, scope: !1934)
!1937 = !DILocation(line: 356, column: 2, scope: !1934)
!1938 = !DILocalVariable(name: "rec", scope: !1939, file: !444, line: 357, type: !434)
!1939 = distinct !DILexicalBlock(scope: !1935, file: !444, line: 356, column: 54)
!1940 = !DILocation(line: 357, column: 18, scope: !1939)
!1941 = !DILocation(line: 357, column: 24, scope: !1939)
!1942 = !DILocation(line: 357, column: 29, scope: !1939)
!1943 = !DILocation(line: 359, column: 7, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1939, file: !444, line: 359, column: 7)
!1945 = !DILocation(line: 359, column: 12, scope: !1944)
!1946 = !DILocation(line: 359, column: 19, scope: !1944)
!1947 = !DILocation(line: 359, column: 16, scope: !1944)
!1948 = !DILocation(line: 359, column: 7, scope: !1939)
!1949 = !DILocation(line: 360, column: 11, scope: !1944)
!1950 = !DILocation(line: 360, column: 4, scope: !1944)
!1951 = !DILocation(line: 361, column: 2, scope: !1939)
!1952 = !DILocation(line: 356, column: 43, scope: !1953)
!1953 = !DILexicalBlockFile(scope: !1935, file: !444, discriminator: 2)
!1954 = !DILocation(line: 356, column: 48, scope: !1953)
!1955 = !DILocation(line: 356, column: 41, scope: !1953)
!1956 = !DILocation(line: 356, column: 2, scope: !1953)
!1957 = distinct !{!1957, !1958}
!1958 = !DILocation(line: 356, column: 2, scope: !1922)
!1959 = !DILocation(line: 363, column: 2, scope: !1922)
!1960 = !DILocation(line: 364, column: 1, scope: !1922)
