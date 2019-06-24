; ModuleID = './line79-servers-setup.o.i'
source_filename = "./line79-servers-setup.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
%struct._IPADDR = type { i16, %struct.in6_addr }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct._CONFIG_REC = type { i8*, i32, i32, i8*, %struct._CONFIG_NODE*, %struct._GHashTable*, %struct._GHashTable*, %struct._GScanner*, %struct._GIOChannel*, i32, i32 }
%struct._CONFIG_NODE = type { i32, i8*, i8* }
%struct._GHashTable = type opaque
%struct._GScanner = type { i8*, i32, i32, i8*, %struct._GData*, %struct._GScannerConfig*, i32, %union._GTokenValue, i32, i32, i32, %union._GTokenValue, i32, i32, %struct._GHashTable*, i32, i8*, i8*, i8*, i32, void (%struct._GScanner*, i8*, i32)* }
%struct._GData = type opaque
%struct._GScannerConfig = type { i8*, i8*, i8*, i8*, i24, i32 }
%union._GTokenValue = type { i8* }
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
%struct._SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8* }
%struct._SERVER_SETUP_REC = type { i32, i32, i8*, i16, i8*, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IPADDR*, %struct._IPADDR*, i64, i8, %struct._GHashTable* }
%struct._CHATNET_REC = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IPADDR*, %struct._IPADDR* }
%struct._CHAT_PROTOCOL_REC = type { i32, i8, i8*, i8*, i8*, %struct._CHATNET_REC* ()*, %struct._SERVER_SETUP_REC* ()*, %struct._CHANNEL_SETUP_REC* ()*, %struct._SERVER_CONNECT_REC* ()*, void (%struct._SERVER_CONNECT_REC*)*, %struct._SERVER_REC* (%struct._SERVER_CONNECT_REC*)*, void (%struct._SERVER_REC*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*, i8*, i32)*, %struct._QUERY_REC* (i8*, i8*, i32)* }
%struct._CHANNEL_SETUP_REC = type opaque
%struct._SERVER_REC = type { i32, i32, i32, %struct._SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, void (%struct._SERVER_REC*, i8*, i32)*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)* }
%struct._NET_SENDBUF_REC = type opaque
%struct._RAWLOG_REC = type opaque
%struct._GTimeVal = type { i64, i64 }
%struct._CHANNEL_REC = type opaque
%struct._QUERY_REC = type opaque

@.str = private unnamed_addr constant [15 x i8] c"SERVER CONNECT\00", align 1
@__func__.server_setup_fill_reconn = private unnamed_addr constant [25 x i8] c"server_setup_fill_reconn\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"IS_SERVER_CONNECT(conn)\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"SERVER SETUP\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"IS_SERVER_SETUP(sserver)\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"server setup fill reconn\00", align 1
@__func__.server_create_conn = private unnamed_addr constant [19 x i8] c"server_create_conn\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"dest != NULL\00", align 1
@__func__.server_setup_find = private unnamed_addr constant [18 x i8] c"server_setup_find\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"address != NULL\00", align 1
@setupservers = common global %struct._GSList* null, align 8
@.str.7 = private unnamed_addr constant [21 x i8] c"server setup updated\00", align 1
@__func__.server_setup_remove_chatnet = private unnamed_addr constant [28 x i8] c"server_setup_remove_chatnet\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"chatnet != NULL\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"hostname\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"nick\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"user_name\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"real_name\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"proxy\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"use_proxy\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"proxy_address\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"proxy_port\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"proxy_string\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"CONNECT %s %d\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"proxy_string_after\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"proxy_password\00", align 1
@source_host_ip6 = common global %struct._IPADDR* null, align 8
@source_host_ip4 = common global %struct._IPADDR* null, align 8
@old_source_host = internal global i8* null, align 8
@.str.24 = private unnamed_addr constant [14 x i8] c"setup changed\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"setup reread\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"irssi init read settings\00", align 1
@source_host_ok = common global i32 0, align 4
@__func__.create_addr_conn = private unnamed_addr constant [17 x i8] c"create_addr_conn\00", align 1
@__func__.server_setup_fill = private unnamed_addr constant [18 x i8] c"server_setup_fill\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"conn != NULL\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"server setup fill connect\00", align 1
@__func__.server_setup_fill_chatnet = private unnamed_addr constant [26 x i8] c"server_setup_fill_chatnet\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"CHATNET\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"IS_CHATNET(chatnet)\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"server setup fill chatnet\00", align 1
@__func__.server_setup_fill_server = private unnamed_addr constant [25 x i8] c"server_setup_fill_server\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"server setup fill server\00", align 1
@mainconfig = external global %struct._CONFIG_REC*, align 8
@.str.33 = private unnamed_addr constant [9 x i8] c"(servers\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"address\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"chatnet\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"use_tls\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"tls_cert\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"tls_pkey\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"tls_pass\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"tls_verify\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"tls_cafile\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"tls_capath\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"tls_ciphers\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"tls_pinned_cert\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"tls_pinned_pubkey\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"own_host\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"family\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"inet6\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"inet\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"autoconnect\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"no_proxy\00", align 1
@.str.54 = private unnamed_addr constant [19 x i8] c"server setup saved\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"servers\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"server setup destroyed\00", align 1
@__func__.server_setup_read = private unnamed_addr constant [18 x i8] c"server_setup_read\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"node != NULL\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"use_ssl\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"ssl_verify\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"ssl_cert\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"ssl_pkey\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"ssl_pass\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"ssl_cafile\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"ssl_capath\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"ssl_ciphers\00", align 1
@.str.66 = private unnamed_addr constant [16 x i8] c"ssl_pinned_cert\00", align 1
@.str.67 = private unnamed_addr constant [18 x i8] c"ssl_pinned_pubkey\00", align 1
@.str.68 = private unnamed_addr constant [18 x i8] c"server setup read\00", align 1

; Function Attrs: nounwind uwtable
define void @server_setup_fill_reconn(%struct._SERVER_CONNECT_REC*, %struct._SERVER_SETUP_REC*) #0 !dbg !391 {
  %3 = alloca %struct._SERVER_CONNECT_REC*, align 8
  %4 = alloca %struct._SERVER_SETUP_REC*, align 8
  store %struct._SERVER_CONNECT_REC* %0, %struct._SERVER_CONNECT_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_CONNECT_REC** %3, metadata !395, metadata !396), !dbg !397
  store %struct._SERVER_SETUP_REC* %1, %struct._SERVER_SETUP_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_SETUP_REC** %4, metadata !398, metadata !396), !dbg !399
  br label %5, !dbg !400, !llvm.loop !401

; <label>:5:                                      ; preds = %2
  %6 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !402
  %7 = bitcast %struct._SERVER_CONNECT_REC* %6 to i8*, !dbg !402
  %8 = call i8* @module_check_cast(i8* %7, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !406
  %9 = bitcast i8* %8 to %struct._SERVER_CONNECT_REC*, !dbg !407
  %10 = icmp ne %struct._SERVER_CONNECT_REC* %9, null, !dbg !407
  br i1 %10, label %11, label %12, !dbg !408

; <label>:11:                                     ; preds = %5
  br i1 false, label %14, label %13, !dbg !409

; <label>:12:                                     ; preds = %5
  br i1 false, label %13, label %14, !dbg !411

; <label>:13:                                     ; preds = %12, %11
  br label %15, !dbg !413

; <label>:14:                                     ; preds = %12, %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.server_setup_fill_reconn, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0)), !dbg !416
  br label %80, !dbg !419

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !420

; <label>:16:                                     ; preds = %15
  br label %17, !dbg !422, !llvm.loop !423

; <label>:17:                                     ; preds = %16
  %18 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !424
  %19 = bitcast %struct._SERVER_SETUP_REC* %18 to i8*, !dbg !424
  %20 = call i8* @module_check_cast(i8* %19, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)), !dbg !428
  %21 = bitcast i8* %20 to %struct._SERVER_SETUP_REC*, !dbg !429
  %22 = icmp ne %struct._SERVER_SETUP_REC* %21, null, !dbg !429
  br i1 %22, label %23, label %24, !dbg !430

; <label>:23:                                     ; preds = %17
  br i1 false, label %26, label %25, !dbg !431

; <label>:24:                                     ; preds = %17
  br i1 false, label %25, label %26, !dbg !433

; <label>:25:                                     ; preds = %24, %23
  br label %27, !dbg !435

; <label>:26:                                     ; preds = %24, %23
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.server_setup_fill_reconn, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0)), !dbg !438
  br label %80, !dbg !441

; <label>:27:                                     ; preds = %25
  br label %28, !dbg !442

; <label>:28:                                     ; preds = %27
  %29 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !444
  %30 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %29, i32 0, i32 17, !dbg !446
  %31 = load i8*, i8** %30, align 8, !dbg !446
  %32 = icmp ne i8* %31, null, !dbg !447
  br i1 %32, label %33, label %42, !dbg !448

; <label>:33:                                     ; preds = %28
  %34 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !449
  %35 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !451
  %36 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %35, i32 0, i32 17, !dbg !452
  %37 = load i8*, i8** %36, align 8, !dbg !452
  %38 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !453
  %39 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %38, i32 0, i32 18, !dbg !454
  %40 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !455
  %41 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %40, i32 0, i32 19, !dbg !456
  call void @conn_set_ip(%struct._SERVER_CONNECT_REC* %34, i8* %37, %struct._IPADDR** %39, %struct._IPADDR** %41), !dbg !457
  br label %42, !dbg !458

; <label>:42:                                     ; preds = %33, %28
  %43 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !459
  %44 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %43, i32 0, i32 2, !dbg !461
  %45 = load i8*, i8** %44, align 8, !dbg !461
  %46 = icmp ne i8* %45, null, !dbg !462
  br i1 %46, label %47, label %59, !dbg !463

; <label>:47:                                     ; preds = %42
  %48 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !464
  %49 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %48, i32 0, i32 12, !dbg !466
  %50 = load i8*, i8** %49, align 8, !dbg !466
  %51 = icmp eq i8* %50, null, !dbg !467
  br i1 %51, label %52, label %59, !dbg !468

; <label>:52:                                     ; preds = %47
  %53 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !469
  %54 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %53, i32 0, i32 2, !dbg !470
  %55 = load i8*, i8** %54, align 8, !dbg !470
  %56 = call noalias i8* @g_strdup(i8* %55), !dbg !471
  %57 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !472
  %58 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %57, i32 0, i32 12, !dbg !473
  store i8* %56, i8** %58, align 8, !dbg !474
  br label %59, !dbg !472

; <label>:59:                                     ; preds = %52, %47, %42
  %60 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !475
  %61 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %60, i32 0, i32 6, !dbg !477
  %62 = load i8*, i8** %61, align 8, !dbg !477
  %63 = icmp ne i8* %62, null, !dbg !478
  br i1 %63, label %64, label %76, !dbg !479

; <label>:64:                                     ; preds = %59
  %65 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !480
  %66 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %65, i32 0, i32 15, !dbg !482
  %67 = load i8*, i8** %66, align 8, !dbg !482
  %68 = icmp eq i8* %67, null, !dbg !483
  br i1 %68, label %69, label %76, !dbg !484

; <label>:69:                                     ; preds = %64
  %70 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !485
  %71 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %70, i32 0, i32 6, !dbg !486
  %72 = load i8*, i8** %71, align 8, !dbg !486
  %73 = call noalias i8* @g_strdup(i8* %72), !dbg !487
  %74 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !488
  %75 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %74, i32 0, i32 15, !dbg !489
  store i8* %73, i8** %75, align 8, !dbg !490
  br label %76, !dbg !488

; <label>:76:                                     ; preds = %69, %64, %59
  %77 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !491
  %78 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !492
  %79 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), i32 2, %struct._SERVER_CONNECT_REC* %77, %struct._SERVER_SETUP_REC* %78), !dbg !493
  br label %80, !dbg !494

; <label>:80:                                     ; preds = %76, %26, %14
  ret void, !dbg !495
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @module_check_cast(i8*, i32, i8*) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @conn_set_ip(%struct._SERVER_CONNECT_REC*, i8*, %struct._IPADDR**, %struct._IPADDR**) #0 !dbg !497 {
  %5 = alloca %struct._SERVER_CONNECT_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._IPADDR**, align 8
  %8 = alloca %struct._IPADDR**, align 8
  %9 = alloca %struct._IPADDR, align 4
  %10 = alloca %struct._IPADDR, align 4
  store %struct._SERVER_CONNECT_REC* %0, %struct._SERVER_CONNECT_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_CONNECT_REC** %5, metadata !501, metadata !396), !dbg !502
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !503, metadata !396), !dbg !504
  store %struct._IPADDR** %2, %struct._IPADDR*** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IPADDR*** %7, metadata !505, metadata !396), !dbg !506
  store %struct._IPADDR** %3, %struct._IPADDR*** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._IPADDR*** %8, metadata !507, metadata !396), !dbg !508
  call void @llvm.dbg.declare(metadata %struct._IPADDR* %9, metadata !509, metadata !396), !dbg !510
  call void @llvm.dbg.declare(metadata %struct._IPADDR* %10, metadata !511, metadata !396), !dbg !512
  %11 = load %struct._IPADDR**, %struct._IPADDR*** %7, align 8, !dbg !513
  %12 = load %struct._IPADDR*, %struct._IPADDR** %11, align 8, !dbg !515
  %13 = icmp eq %struct._IPADDR* %12, null, !dbg !516
  br i1 %13, label %14, label %26, !dbg !517

; <label>:14:                                     ; preds = %4
  %15 = load %struct._IPADDR**, %struct._IPADDR*** %8, align 8, !dbg !518
  %16 = load %struct._IPADDR*, %struct._IPADDR** %15, align 8, !dbg !520
  %17 = icmp eq %struct._IPADDR* %16, null, !dbg !521
  br i1 %17, label %18, label %26, !dbg !522

; <label>:18:                                     ; preds = %14
  %19 = load i8*, i8** %6, align 8, !dbg !523
  %20 = call i32 @net_gethostbyname(i8* %19, %struct._IPADDR* %9, %struct._IPADDR* %10), !dbg !526
  %21 = icmp eq i32 %20, 0, !dbg !527
  br i1 %21, label %22, label %25, !dbg !528

; <label>:22:                                     ; preds = %18
  %23 = load %struct._IPADDR**, %struct._IPADDR*** %7, align 8, !dbg !529
  %24 = load %struct._IPADDR**, %struct._IPADDR*** %8, align 8, !dbg !530
  call void @save_ips(%struct._IPADDR* %9, %struct._IPADDR* %10, %struct._IPADDR** %23, %struct._IPADDR** %24), !dbg !531
  br label %25, !dbg !531

; <label>:25:                                     ; preds = %22, %18
  br label %26, !dbg !532

; <label>:26:                                     ; preds = %25, %14, %4
  %27 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %5, align 8, !dbg !533
  %28 = load %struct._IPADDR**, %struct._IPADDR*** %7, align 8, !dbg !534
  %29 = load %struct._IPADDR*, %struct._IPADDR** %28, align 8, !dbg !535
  %30 = load %struct._IPADDR**, %struct._IPADDR*** %8, align 8, !dbg !536
  %31 = load %struct._IPADDR*, %struct._IPADDR** %30, align 8, !dbg !537
  call void @server_connect_own_ip_save(%struct._SERVER_CONNECT_REC* %27, %struct._IPADDR* %29, %struct._IPADDR* %31), !dbg !538
  ret void, !dbg !539
}

declare noalias i8* @g_strdup(i8*) #2

declare i32 @signal_emit(i8*, i32, ...) #2

; Function Attrs: nounwind uwtable
define %struct._SERVER_CONNECT_REC* @server_create_conn(i32, i8*, i32, i8*, i8*, i8*) #0 !dbg !540 {
  %7 = alloca %struct._SERVER_CONNECT_REC*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct._SERVER_CONNECT_REC*, align 8
  %15 = alloca %struct._CHATNET_REC*, align 8
  store i32 %0, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !543, metadata !396), !dbg !544
  store i8* %1, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !545, metadata !396), !dbg !546
  store i32 %2, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !547, metadata !396), !dbg !548
  store i8* %3, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !549, metadata !396), !dbg !550
  store i8* %4, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !551, metadata !396), !dbg !552
  store i8* %5, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !553, metadata !396), !dbg !554
  call void @llvm.dbg.declare(metadata %struct._SERVER_CONNECT_REC** %14, metadata !555, metadata !396), !dbg !556
  call void @llvm.dbg.declare(metadata %struct._CHATNET_REC** %15, metadata !557, metadata !396), !dbg !558
  br label %16, !dbg !559, !llvm.loop !560

; <label>:16:                                     ; preds = %6
  %17 = load i8*, i8** %9, align 8, !dbg !561
  %18 = icmp ne i8* %17, null, !dbg !565
  br i1 %18, label %19, label %20, !dbg !561

; <label>:19:                                     ; preds = %16
  br label %21, !dbg !566

; <label>:20:                                     ; preds = %16
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.server_create_conn, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)), !dbg !569
  store %struct._SERVER_CONNECT_REC* null, %struct._SERVER_CONNECT_REC** %7, align 8, !dbg !572
  br label %59, !dbg !572

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !573

; <label>:22:                                     ; preds = %21
  %23 = load i8*, i8** %9, align 8, !dbg !575
  %24 = call %struct._CHATNET_REC* @chatnet_find(i8* %23), !dbg !576
  store %struct._CHATNET_REC* %24, %struct._CHATNET_REC** %15, align 8, !dbg !577
  %25 = load %struct._CHATNET_REC*, %struct._CHATNET_REC** %15, align 8, !dbg !578
  %26 = icmp ne %struct._CHATNET_REC* %25, null, !dbg !580
  br i1 %26, label %27, label %36, !dbg !581

; <label>:27:                                     ; preds = %22
  %28 = load %struct._CHATNET_REC*, %struct._CHATNET_REC** %15, align 8, !dbg !582
  %29 = getelementptr inbounds %struct._CHATNET_REC, %struct._CHATNET_REC* %28, i32 0, i32 2, !dbg !584
  %30 = load i8*, i8** %29, align 8, !dbg !584
  %31 = load i32, i32* %10, align 4, !dbg !585
  %32 = load i8*, i8** %12, align 8, !dbg !586
  %33 = load i8*, i8** %13, align 8, !dbg !587
  %34 = call %struct._SERVER_CONNECT_REC* @create_chatnet_conn(i8* %30, i32 %31, i8* %32, i8* %33), !dbg !588
  store %struct._SERVER_CONNECT_REC* %34, %struct._SERVER_CONNECT_REC** %14, align 8, !dbg !589
  %35 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %14, align 8, !dbg !590
  store %struct._SERVER_CONNECT_REC* %35, %struct._SERVER_CONNECT_REC** %7, align 8, !dbg !591
  br label %59, !dbg !591

; <label>:36:                                     ; preds = %22
  %37 = load i8*, i8** %11, align 8, !dbg !592
  %38 = icmp eq i8* %37, null, !dbg !593
  br i1 %38, label %39, label %40, !dbg !592

; <label>:39:                                     ; preds = %36
  br label %43, !dbg !594

; <label>:40:                                     ; preds = %36
  %41 = load i8*, i8** %11, align 8, !dbg !596
  %42 = call %struct._CHATNET_REC* @chatnet_find(i8* %41), !dbg !598
  br label %43, !dbg !599

; <label>:43:                                     ; preds = %40, %39
  %44 = phi %struct._CHATNET_REC* [ null, %39 ], [ %42, %40 ], !dbg !600
  store %struct._CHATNET_REC* %44, %struct._CHATNET_REC** %15, align 8, !dbg !602
  %45 = load %struct._CHATNET_REC*, %struct._CHATNET_REC** %15, align 8, !dbg !603
  %46 = icmp ne %struct._CHATNET_REC* %45, null, !dbg !605
  br i1 %46, label %47, label %51, !dbg !606

; <label>:47:                                     ; preds = %43
  %48 = load %struct._CHATNET_REC*, %struct._CHATNET_REC** %15, align 8, !dbg !607
  %49 = getelementptr inbounds %struct._CHATNET_REC, %struct._CHATNET_REC* %48, i32 0, i32 2, !dbg !608
  %50 = load i8*, i8** %49, align 8, !dbg !608
  store i8* %50, i8** %11, align 8, !dbg !609
  br label %51, !dbg !610

; <label>:51:                                     ; preds = %47, %43
  %52 = load i32, i32* %8, align 4, !dbg !611
  %53 = load i8*, i8** %9, align 8, !dbg !612
  %54 = load i32, i32* %10, align 4, !dbg !613
  %55 = load i8*, i8** %11, align 8, !dbg !614
  %56 = load i8*, i8** %12, align 8, !dbg !615
  %57 = load i8*, i8** %13, align 8, !dbg !616
  %58 = call %struct._SERVER_CONNECT_REC* @create_addr_conn(i32 %52, i8* %53, i32 %54, i8* %55, i8* %56, i8* %57), !dbg !617
  store %struct._SERVER_CONNECT_REC* %58, %struct._SERVER_CONNECT_REC** %7, align 8, !dbg !618
  br label %59, !dbg !618

; <label>:59:                                     ; preds = %51, %27, %20
  %60 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %7, align 8, !dbg !619
  ret %struct._SERVER_CONNECT_REC* %60, !dbg !619
}

declare %struct._CHATNET_REC* @chatnet_find(i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct._SERVER_CONNECT_REC* @create_chatnet_conn(i8*, i32, i8*, i8*) #0 !dbg !620 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._SERVER_SETUP_REC*, align 8
  %10 = alloca %struct._GSList*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct._SERVER_SETUP_REC*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !623, metadata !396), !dbg !624
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !625, metadata !396), !dbg !626
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !627, metadata !396), !dbg !628
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !629, metadata !396), !dbg !630
  call void @llvm.dbg.declare(metadata %struct._SERVER_SETUP_REC** %9, metadata !631, metadata !396), !dbg !632
  call void @llvm.dbg.declare(metadata %struct._GSList** %10, metadata !633, metadata !396), !dbg !634
  call void @llvm.dbg.declare(metadata i64* %11, metadata !635, metadata !396), !dbg !636
  call void @llvm.dbg.declare(metadata i64* %12, metadata !637, metadata !396), !dbg !638
  %14 = call i64 @time(i64* null) #6, !dbg !639
  store i64 %14, i64* %11, align 8, !dbg !640
  store %struct._SERVER_SETUP_REC* null, %struct._SERVER_SETUP_REC** %9, align 8, !dbg !641
  %15 = load i64, i64* %11, align 8, !dbg !642
  store i64 %15, i64* %12, align 8, !dbg !643
  %16 = load %struct._GSList*, %struct._GSList** @setupservers, align 8, !dbg !644
  store %struct._GSList* %16, %struct._GSList** %10, align 8, !dbg !646
  br label %17, !dbg !647

; <label>:17:                                     ; preds = %62, %4
  %18 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !648
  %19 = icmp ne %struct._GSList* %18, null, !dbg !651
  br i1 %19, label %20, label %66, !dbg !652

; <label>:20:                                     ; preds = %17
  call void @llvm.dbg.declare(metadata %struct._SERVER_SETUP_REC** %13, metadata !653, metadata !396), !dbg !655
  %21 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !656
  %22 = getelementptr inbounds %struct._GSList, %struct._GSList* %21, i32 0, i32 0, !dbg !657
  %23 = load i8*, i8** %22, align 8, !dbg !657
  %24 = bitcast i8* %23 to %struct._SERVER_SETUP_REC*, !dbg !656
  store %struct._SERVER_SETUP_REC* %24, %struct._SERVER_SETUP_REC** %13, align 8, !dbg !655
  %25 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %13, align 8, !dbg !658
  %26 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %25, i32 0, i32 2, !dbg !660
  %27 = load i8*, i8** %26, align 8, !dbg !660
  %28 = icmp eq i8* %27, null, !dbg !661
  br i1 %28, label %36, label %29, !dbg !662

; <label>:29:                                     ; preds = %20
  %30 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %13, align 8, !dbg !663
  %31 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %30, i32 0, i32 2, !dbg !664
  %32 = load i8*, i8** %31, align 8, !dbg !664
  %33 = load i8*, i8** %5, align 8, !dbg !665
  %34 = call i32 @g_ascii_strcasecmp(i8* %32, i8* %33), !dbg !666
  %35 = icmp ne i32 %34, 0, !dbg !667
  br i1 %35, label %36, label %37, !dbg !668

; <label>:36:                                     ; preds = %29, %20
  br label %62, !dbg !670

; <label>:37:                                     ; preds = %29
  %38 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %13, align 8, !dbg !671
  %39 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %38, i32 0, i32 21, !dbg !673
  %40 = load i8, i8* %39, align 8, !dbg !673
  %41 = lshr i8 %40, 2, !dbg !673
  %42 = and i8 %41, 1, !dbg !673
  %43 = zext i8 %42 to i32, !dbg !673
  %44 = icmp ne i32 %43, 0, !dbg !671
  br i1 %44, label %47, label %45, !dbg !674

; <label>:45:                                     ; preds = %37
  %46 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %13, align 8, !dbg !675
  store %struct._SERVER_SETUP_REC* %46, %struct._SERVER_SETUP_REC** %9, align 8, !dbg !677
  br label %66, !dbg !678

; <label>:47:                                     ; preds = %37
  %48 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %9, align 8, !dbg !679
  %49 = icmp eq %struct._SERVER_SETUP_REC* %48, null, !dbg !681
  br i1 %49, label %56, label %50, !dbg !682

; <label>:50:                                     ; preds = %47
  %51 = load i64, i64* %12, align 8, !dbg !683
  %52 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %13, align 8, !dbg !685
  %53 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %52, i32 0, i32 20, !dbg !686
  %54 = load i64, i64* %53, align 8, !dbg !686
  %55 = icmp sgt i64 %51, %54, !dbg !687
  br i1 %55, label %56, label %61, !dbg !688

; <label>:56:                                     ; preds = %50, %47
  %57 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %13, align 8, !dbg !689
  store %struct._SERVER_SETUP_REC* %57, %struct._SERVER_SETUP_REC** %9, align 8, !dbg !691
  %58 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %13, align 8, !dbg !692
  %59 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %58, i32 0, i32 20, !dbg !693
  %60 = load i64, i64* %59, align 8, !dbg !693
  store i64 %60, i64* %12, align 8, !dbg !694
  br label %61, !dbg !695

; <label>:61:                                     ; preds = %56, %50
  br label %62, !dbg !696

; <label>:62:                                     ; preds = %61, %36
  %63 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !697
  %64 = getelementptr inbounds %struct._GSList, %struct._GSList* %63, i32 0, i32 1, !dbg !699
  %65 = load %struct._GSList*, %struct._GSList** %64, align 8, !dbg !699
  store %struct._GSList* %65, %struct._GSList** %10, align 8, !dbg !700
  br label %17, !dbg !701, !llvm.loop !702

; <label>:66:                                     ; preds = %45, %17
  %67 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %9, align 8, !dbg !704
  %68 = icmp eq %struct._SERVER_SETUP_REC* %67, null, !dbg !705
  br i1 %68, label %69, label %70, !dbg !704

; <label>:69:                                     ; preds = %66
  br label %80, !dbg !706

; <label>:70:                                     ; preds = %66
  %71 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %9, align 8, !dbg !708
  %72 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %71, i32 0, i32 1, !dbg !709
  %73 = load i32, i32* %72, align 4, !dbg !709
  %74 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %9, align 8, !dbg !710
  %75 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %74, i32 0, i32 4, !dbg !711
  %76 = load i8*, i8** %75, align 8, !dbg !711
  %77 = load i8*, i8** %5, align 8, !dbg !712
  %78 = load i8*, i8** %8, align 8, !dbg !713
  %79 = call %struct._SERVER_CONNECT_REC* @create_addr_conn(i32 %73, i8* %76, i32 0, i8* %77, i8* null, i8* %78), !dbg !714
  br label %80, !dbg !715

; <label>:80:                                     ; preds = %70, %69
  %81 = phi %struct._SERVER_CONNECT_REC* [ null, %69 ], [ %79, %70 ], !dbg !717
  ret %struct._SERVER_CONNECT_REC* %81, !dbg !719
}

; Function Attrs: nounwind uwtable
define internal %struct._SERVER_CONNECT_REC* @create_addr_conn(i32, i8*, i32, i8*, i8*, i8*) #0 !dbg !720 {
  %7 = alloca %struct._SERVER_CONNECT_REC*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct._CHAT_PROTOCOL_REC*, align 8
  %15 = alloca %struct._SERVER_CONNECT_REC*, align 8
  %16 = alloca %struct._SERVER_SETUP_REC*, align 8
  %17 = alloca %struct._CHATNET_REC*, align 8
  store i32 %0, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !721, metadata !396), !dbg !722
  store i8* %1, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !723, metadata !396), !dbg !724
  store i32 %2, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !725, metadata !396), !dbg !726
  store i8* %3, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !727, metadata !396), !dbg !728
  store i8* %4, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !729, metadata !396), !dbg !730
  store i8* %5, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !731, metadata !396), !dbg !732
  call void @llvm.dbg.declare(metadata %struct._CHAT_PROTOCOL_REC** %14, metadata !733, metadata !396), !dbg !880
  call void @llvm.dbg.declare(metadata %struct._SERVER_CONNECT_REC** %15, metadata !881, metadata !396), !dbg !882
  call void @llvm.dbg.declare(metadata %struct._SERVER_SETUP_REC** %16, metadata !883, metadata !396), !dbg !884
  call void @llvm.dbg.declare(metadata %struct._CHATNET_REC** %17, metadata !885, metadata !396), !dbg !886
  br label %18, !dbg !887, !llvm.loop !888

; <label>:18:                                     ; preds = %6
  %19 = load i8*, i8** %9, align 8, !dbg !889
  %20 = icmp ne i8* %19, null, !dbg !893
  br i1 %20, label %21, label %22, !dbg !889

; <label>:21:                                     ; preds = %18
  br label %23, !dbg !894

; <label>:22:                                     ; preds = %18
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.create_addr_conn, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)), !dbg !897
  store %struct._SERVER_CONNECT_REC* null, %struct._SERVER_CONNECT_REC** %7, align 8, !dbg !900
  br label %151, !dbg !900

; <label>:23:                                     ; preds = %21
  br label %24, !dbg !901

; <label>:24:                                     ; preds = %23
  %25 = load i8*, i8** %9, align 8, !dbg !903
  %26 = load i32, i32* %10, align 4, !dbg !904
  %27 = load i8*, i8** %11, align 8, !dbg !905
  %28 = call %struct._SERVER_SETUP_REC* @server_setup_find(i8* %25, i32 %26, i8* %27), !dbg !906
  store %struct._SERVER_SETUP_REC* %28, %struct._SERVER_SETUP_REC** %16, align 8, !dbg !907
  %29 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %16, align 8, !dbg !908
  %30 = icmp ne %struct._SERVER_SETUP_REC* %29, null, !dbg !910
  br i1 %30, label %31, label %47, !dbg !911

; <label>:31:                                     ; preds = %24
  %32 = load i32, i32* %8, align 4, !dbg !912
  %33 = icmp slt i32 %32, 0, !dbg !915
  br i1 %33, label %34, label %38, !dbg !916

; <label>:34:                                     ; preds = %31
  %35 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %16, align 8, !dbg !917
  %36 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %35, i32 0, i32 1, !dbg !918
  %37 = load i32, i32* %36, align 4, !dbg !918
  store i32 %37, i32* %8, align 4, !dbg !919
  br label %46, !dbg !920

; <label>:38:                                     ; preds = %31
  %39 = load i32, i32* %8, align 4, !dbg !921
  %40 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %16, align 8, !dbg !923
  %41 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %40, i32 0, i32 1, !dbg !924
  %42 = load i32, i32* %41, align 4, !dbg !924
  %43 = icmp ne i32 %39, %42, !dbg !925
  br i1 %43, label %44, label %45, !dbg !926

; <label>:44:                                     ; preds = %38
  store %struct._SERVER_SETUP_REC* null, %struct._SERVER_SETUP_REC** %16, align 8, !dbg !927
  br label %45, !dbg !928

; <label>:45:                                     ; preds = %44, %38
  br label %46

; <label>:46:                                     ; preds = %45, %34
  br label %47, !dbg !929

; <label>:47:                                     ; preds = %46, %24
  %48 = load i32, i32* %8, align 4, !dbg !930
  %49 = icmp sge i32 %48, 0, !dbg !931
  br i1 %49, label %50, label %53, !dbg !930

; <label>:50:                                     ; preds = %47
  %51 = load i32, i32* %8, align 4, !dbg !932
  %52 = call %struct._CHAT_PROTOCOL_REC* @chat_protocol_find_id(i32 %51), !dbg !934
  br label %55, !dbg !935

; <label>:53:                                     ; preds = %47
  %54 = call %struct._CHAT_PROTOCOL_REC* @chat_protocol_get_default(), !dbg !936
  br label %55, !dbg !937

; <label>:55:                                     ; preds = %53, %50
  %56 = phi %struct._CHAT_PROTOCOL_REC* [ %52, %50 ], [ %54, %53 ], !dbg !939
  store %struct._CHAT_PROTOCOL_REC* %56, %struct._CHAT_PROTOCOL_REC** %14, align 8, !dbg !941
  %57 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %14, align 8, !dbg !942
  %58 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %57, i32 0, i32 8, !dbg !943
  %59 = load %struct._SERVER_CONNECT_REC* ()*, %struct._SERVER_CONNECT_REC* ()** %58, align 8, !dbg !943
  %60 = call %struct._SERVER_CONNECT_REC* %59(), !dbg !942
  store %struct._SERVER_CONNECT_REC* %60, %struct._SERVER_CONNECT_REC** %15, align 8, !dbg !944
  %61 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %15, align 8, !dbg !945
  call void @server_connect_ref(%struct._SERVER_CONNECT_REC* %61), !dbg !946
  %62 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %14, align 8, !dbg !947
  %63 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %62, i32 0, i32 0, !dbg !948
  %64 = load i32, i32* %63, align 8, !dbg !948
  %65 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %15, align 8, !dbg !949
  %66 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %65, i32 0, i32 1, !dbg !950
  store i32 %64, i32* %66, align 4, !dbg !951
  %67 = load i8*, i8** %11, align 8, !dbg !952
  %68 = icmp ne i8* %67, null, !dbg !954
  br i1 %68, label %69, label %79, !dbg !955

; <label>:69:                                     ; preds = %55
  %70 = load i8*, i8** %11, align 8, !dbg !956
  %71 = load i8, i8* %70, align 1, !dbg !958
  %72 = sext i8 %71 to i32, !dbg !958
  %73 = icmp ne i32 %72, 0, !dbg !959
  br i1 %73, label %74, label %79, !dbg !960

; <label>:74:                                     ; preds = %69
  %75 = load i8*, i8** %11, align 8, !dbg !961
  %76 = call noalias i8* @g_strdup(i8* %75), !dbg !962
  %77 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %15, align 8, !dbg !963
  %78 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %77, i32 0, i32 12, !dbg !964
  store i8* %76, i8** %78, align 8, !dbg !965
  br label %79, !dbg !963

; <label>:79:                                     ; preds = %74, %69, %55
  %80 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %15, align 8, !dbg !966
  %81 = load i8*, i8** %9, align 8, !dbg !967
  %82 = load i32, i32* %10, align 4, !dbg !968
  call void @server_setup_fill(%struct._SERVER_CONNECT_REC* %80, i8* %81, i32 %82), !dbg !969
  %83 = load i8*, i8** %11, align 8, !dbg !970
  %84 = icmp ne i8* %83, null, !dbg !971
  br i1 %84, label %85, label %88, !dbg !970

; <label>:85:                                     ; preds = %79
  %86 = load i8*, i8** %11, align 8, !dbg !972
  %87 = call %struct._CHATNET_REC* @chatnet_find(i8* %86), !dbg !973
  br label %104, !dbg !974

; <label>:88:                                     ; preds = %79
  %89 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %16, align 8, !dbg !975
  %90 = icmp eq %struct._SERVER_SETUP_REC* %89, null, !dbg !976
  br i1 %90, label %96, label %91, !dbg !977

; <label>:91:                                     ; preds = %88
  %92 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %16, align 8, !dbg !978
  %93 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %92, i32 0, i32 2, !dbg !979
  %94 = load i8*, i8** %93, align 8, !dbg !979
  %95 = icmp eq i8* %94, null, !dbg !980
  br i1 %95, label %96, label %97, !dbg !981

; <label>:96:                                     ; preds = %91, %88
  br label %102, !dbg !982

; <label>:97:                                     ; preds = %91
  %98 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %16, align 8, !dbg !983
  %99 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %98, i32 0, i32 2, !dbg !984
  %100 = load i8*, i8** %99, align 8, !dbg !984
  %101 = call %struct._CHATNET_REC* @chatnet_find(i8* %100), !dbg !985
  br label %102, !dbg !986

; <label>:102:                                    ; preds = %97, %96
  %103 = phi %struct._CHATNET_REC* [ null, %96 ], [ %101, %97 ], !dbg !987
  br label %104, !dbg !989

; <label>:104:                                    ; preds = %102, %85
  %105 = phi %struct._CHATNET_REC* [ %87, %85 ], [ %103, %102 ], !dbg !990
  store %struct._CHATNET_REC* %105, %struct._CHATNET_REC** %17, align 8, !dbg !991
  %106 = load %struct._CHATNET_REC*, %struct._CHATNET_REC** %17, align 8, !dbg !992
  %107 = icmp ne %struct._CHATNET_REC* %106, null, !dbg !994
  br i1 %107, label %108, label %111, !dbg !995

; <label>:108:                                    ; preds = %104
  %109 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %15, align 8, !dbg !996
  %110 = load %struct._CHATNET_REC*, %struct._CHATNET_REC** %17, align 8, !dbg !997
  call void @server_setup_fill_chatnet(%struct._SERVER_CONNECT_REC* %109, %struct._CHATNET_REC* %110), !dbg !998
  br label %111, !dbg !998

; <label>:111:                                    ; preds = %108, %104
  %112 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %16, align 8, !dbg !999
  %113 = icmp ne %struct._SERVER_SETUP_REC* %112, null, !dbg !1001
  br i1 %113, label %114, label %117, !dbg !1002

; <label>:114:                                    ; preds = %111
  %115 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %15, align 8, !dbg !1003
  %116 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %16, align 8, !dbg !1004
  call void @server_setup_fill_server(%struct._SERVER_CONNECT_REC* %115, %struct._SERVER_SETUP_REC* %116), !dbg !1005
  br label %117, !dbg !1005

; <label>:117:                                    ; preds = %114, %111
  %118 = load i8*, i8** %12, align 8, !dbg !1006
  %119 = icmp ne i8* %118, null, !dbg !1006
  br i1 %119, label %120, label %133, !dbg !1008

; <label>:120:                                    ; preds = %117
  %121 = load i8*, i8** %12, align 8, !dbg !1009
  %122 = load i8, i8* %121, align 1, !dbg !1011
  %123 = sext i8 %122 to i32, !dbg !1011
  %124 = icmp ne i32 %123, 0, !dbg !1011
  br i1 %124, label %125, label %133, !dbg !1012

; <label>:125:                                    ; preds = %120
  %126 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %15, align 8, !dbg !1013
  %127 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %126, i32 0, i32 15, !dbg !1015
  %128 = load i8*, i8** %127, align 8, !dbg !1015
  call void @g_free(i8* %128), !dbg !1016
  %129 = load i8*, i8** %12, align 8, !dbg !1017
  %130 = call noalias i8* @g_strdup(i8* %129), !dbg !1018
  %131 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %15, align 8, !dbg !1019
  %132 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %131, i32 0, i32 15, !dbg !1020
  store i8* %130, i8** %132, align 8, !dbg !1021
  br label %133, !dbg !1022

; <label>:133:                                    ; preds = %125, %120, %117
  %134 = load i8*, i8** %13, align 8, !dbg !1023
  %135 = icmp ne i8* %134, null, !dbg !1023
  br i1 %135, label %136, label %149, !dbg !1025

; <label>:136:                                    ; preds = %133
  %137 = load i8*, i8** %13, align 8, !dbg !1026
  %138 = load i8, i8* %137, align 1, !dbg !1028
  %139 = sext i8 %138 to i32, !dbg !1028
  %140 = icmp ne i32 %139, 0, !dbg !1028
  br i1 %140, label %141, label %149, !dbg !1029

; <label>:141:                                    ; preds = %136
  %142 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %15, align 8, !dbg !1030
  %143 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %142, i32 0, i32 16, !dbg !1032
  %144 = load i8*, i8** %143, align 8, !dbg !1032
  call void @g_free(i8* %144), !dbg !1033
  %145 = load i8*, i8** %13, align 8, !dbg !1034
  %146 = call noalias i8* @g_strdup(i8* %145), !dbg !1035
  %147 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %15, align 8, !dbg !1036
  %148 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %147, i32 0, i32 16, !dbg !1037
  store i8* %146, i8** %148, align 8, !dbg !1038
  br label %149, !dbg !1039

; <label>:149:                                    ; preds = %141, %136, %133
  %150 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %15, align 8, !dbg !1040
  store %struct._SERVER_CONNECT_REC* %150, %struct._SERVER_CONNECT_REC** %7, align 8, !dbg !1041
  br label %151, !dbg !1041

; <label>:151:                                    ; preds = %149, %22
  %152 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %7, align 8, !dbg !1042
  ret %struct._SERVER_CONNECT_REC* %152, !dbg !1042
}

; Function Attrs: nounwind uwtable
define %struct._SERVER_SETUP_REC* @server_setup_find(i8*, i32, i8*) #0 !dbg !1043 {
  %4 = alloca %struct._SERVER_SETUP_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct._SERVER_SETUP_REC*, align 8
  %9 = alloca %struct._GSList*, align 8
  %10 = alloca %struct._SERVER_SETUP_REC*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1046, metadata !396), !dbg !1047
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1048, metadata !396), !dbg !1049
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1050, metadata !396), !dbg !1051
  call void @llvm.dbg.declare(metadata %struct._SERVER_SETUP_REC** %8, metadata !1052, metadata !396), !dbg !1053
  call void @llvm.dbg.declare(metadata %struct._GSList** %9, metadata !1054, metadata !396), !dbg !1055
  br label %11, !dbg !1056, !llvm.loop !1057

; <label>:11:                                     ; preds = %3
  %12 = load i8*, i8** %5, align 8, !dbg !1058
  %13 = icmp ne i8* %12, null, !dbg !1062
  br i1 %13, label %14, label %15, !dbg !1058

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !1063

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.server_setup_find, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)), !dbg !1066
  store %struct._SERVER_SETUP_REC* null, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !1069
  br label %64, !dbg !1069

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !1070

; <label>:17:                                     ; preds = %16
  store %struct._SERVER_SETUP_REC* null, %struct._SERVER_SETUP_REC** %8, align 8, !dbg !1072
  %18 = load %struct._GSList*, %struct._GSList** @setupservers, align 8, !dbg !1073
  store %struct._GSList* %18, %struct._GSList** %9, align 8, !dbg !1075
  br label %19, !dbg !1076

; <label>:19:                                     ; preds = %58, %17
  %20 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1077
  %21 = icmp ne %struct._GSList* %20, null, !dbg !1080
  br i1 %21, label %22, label %62, !dbg !1081

; <label>:22:                                     ; preds = %19
  call void @llvm.dbg.declare(metadata %struct._SERVER_SETUP_REC** %10, metadata !1082, metadata !396), !dbg !1084
  %23 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1085
  %24 = getelementptr inbounds %struct._GSList, %struct._GSList* %23, i32 0, i32 0, !dbg !1086
  %25 = load i8*, i8** %24, align 8, !dbg !1086
  %26 = bitcast i8* %25 to %struct._SERVER_SETUP_REC*, !dbg !1085
  store %struct._SERVER_SETUP_REC* %26, %struct._SERVER_SETUP_REC** %10, align 8, !dbg !1084
  %27 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %10, align 8, !dbg !1087
  %28 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %27, i32 0, i32 4, !dbg !1089
  %29 = load i8*, i8** %28, align 8, !dbg !1089
  %30 = load i8*, i8** %5, align 8, !dbg !1090
  %31 = call i32 @g_ascii_strcasecmp(i8* %29, i8* %30), !dbg !1091
  %32 = icmp eq i32 %31, 0, !dbg !1092
  br i1 %32, label %33, label %57, !dbg !1093

; <label>:33:                                     ; preds = %22
  %34 = load i8*, i8** %7, align 8, !dbg !1094
  %35 = icmp eq i8* %34, null, !dbg !1095
  br i1 %35, label %48, label %36, !dbg !1096

; <label>:36:                                     ; preds = %33
  %37 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %10, align 8, !dbg !1097
  %38 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %37, i32 0, i32 2, !dbg !1099
  %39 = load i8*, i8** %38, align 8, !dbg !1099
  %40 = icmp eq i8* %39, null, !dbg !1100
  br i1 %40, label %48, label %41, !dbg !1101

; <label>:41:                                     ; preds = %36
  %42 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %10, align 8, !dbg !1102
  %43 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %42, i32 0, i32 2, !dbg !1103
  %44 = load i8*, i8** %43, align 8, !dbg !1103
  %45 = load i8*, i8** %7, align 8, !dbg !1104
  %46 = call i32 @g_ascii_strcasecmp(i8* %44, i8* %45), !dbg !1105
  %47 = icmp eq i32 %46, 0, !dbg !1106
  br i1 %47, label %48, label %57, !dbg !1107

; <label>:48:                                     ; preds = %41, %36, %33
  %49 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %10, align 8, !dbg !1109
  store %struct._SERVER_SETUP_REC* %49, %struct._SERVER_SETUP_REC** %8, align 8, !dbg !1111
  %50 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %10, align 8, !dbg !1112
  %51 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %50, i32 0, i32 5, !dbg !1114
  %52 = load i32, i32* %51, align 8, !dbg !1114
  %53 = load i32, i32* %6, align 4, !dbg !1115
  %54 = icmp eq i32 %52, %53, !dbg !1116
  br i1 %54, label %55, label %56, !dbg !1117

; <label>:55:                                     ; preds = %48
  br label %62, !dbg !1118

; <label>:56:                                     ; preds = %48
  br label %57, !dbg !1119

; <label>:57:                                     ; preds = %56, %41, %22
  br label %58, !dbg !1120

; <label>:58:                                     ; preds = %57
  %59 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1121
  %60 = getelementptr inbounds %struct._GSList, %struct._GSList* %59, i32 0, i32 1, !dbg !1123
  %61 = load %struct._GSList*, %struct._GSList** %60, align 8, !dbg !1123
  store %struct._GSList* %61, %struct._GSList** %9, align 8, !dbg !1124
  br label %19, !dbg !1125, !llvm.loop !1126

; <label>:62:                                     ; preds = %55, %19
  %63 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %8, align 8, !dbg !1128
  store %struct._SERVER_SETUP_REC* %63, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !1129
  br label %64, !dbg !1129

; <label>:64:                                     ; preds = %62, %15
  %65 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !1130
  ret %struct._SERVER_SETUP_REC* %65, !dbg !1130
}

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @server_setup_add(%struct._SERVER_SETUP_REC*) #0 !dbg !1131 {
  %2 = alloca %struct._SERVER_SETUP_REC*, align 8
  store %struct._SERVER_SETUP_REC* %0, %struct._SERVER_SETUP_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_SETUP_REC** %2, metadata !1134, metadata !396), !dbg !1135
  %3 = call i32 @module_get_uniq_id(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 0), !dbg !1136
  %4 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1137
  %5 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %4, i32 0, i32 0, !dbg !1138
  store i32 %3, i32* %5, align 8, !dbg !1139
  %6 = load %struct._GSList*, %struct._GSList** @setupservers, align 8, !dbg !1140
  %7 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1142
  %8 = bitcast %struct._SERVER_SETUP_REC* %7 to i8*, !dbg !1142
  %9 = call %struct._GSList* @g_slist_find(%struct._GSList* %6, i8* %8), !dbg !1143
  %10 = icmp eq %struct._GSList* %9, null, !dbg !1144
  br i1 %10, label %11, label %16, !dbg !1145

; <label>:11:                                     ; preds = %1
  %12 = load %struct._GSList*, %struct._GSList** @setupservers, align 8, !dbg !1146
  %13 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1147
  %14 = bitcast %struct._SERVER_SETUP_REC* %13 to i8*, !dbg !1147
  %15 = call %struct._GSList* @g_slist_append(%struct._GSList* %12, i8* %14), !dbg !1148
  store %struct._GSList* %15, %struct._GSList** @setupservers, align 8, !dbg !1149
  br label %16, !dbg !1150

; <label>:16:                                     ; preds = %11, %1
  %17 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1151
  call void @server_setup_save(%struct._SERVER_SETUP_REC* %17), !dbg !1152
  %18 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1153
  %19 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i32 1, %struct._SERVER_SETUP_REC* %18), !dbg !1154
  ret void, !dbg !1155
}

declare i32 @module_get_uniq_id(i8*, i32) #2

declare %struct._GSList* @g_slist_find(%struct._GSList*, i8*) #2

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @server_setup_save(%struct._SERVER_SETUP_REC*) #0 !dbg !1156 {
  %2 = alloca %struct._SERVER_SETUP_REC*, align 8
  %3 = alloca %struct._CONFIG_NODE*, align 8
  %4 = alloca %struct._CONFIG_NODE*, align 8
  %5 = alloca %struct._GSList*, align 8
  store %struct._SERVER_SETUP_REC* %0, %struct._SERVER_SETUP_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_SETUP_REC** %2, metadata !1157, metadata !396), !dbg !1158
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %3, metadata !1159, metadata !396), !dbg !1167
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !1168, metadata !396), !dbg !1169
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !1170, metadata !396), !dbg !1171
  %6 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1172
  %7 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i32 1), !dbg !1173
  store %struct._CONFIG_NODE* %7, %struct._CONFIG_NODE** %3, align 8, !dbg !1174
  %8 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1175
  %9 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %8, i32 0, i32 2, !dbg !1176
  %10 = load i8*, i8** %9, align 8, !dbg !1176
  %11 = bitcast i8* %10 to %struct._GSList*, !dbg !1175
  %12 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1177
  %13 = bitcast %struct._SERVER_SETUP_REC* %12 to i8*, !dbg !1177
  %14 = call %struct._GSList* @g_slist_find_custom(%struct._GSList* %11, i8* %13, i32 (i8*, i8*)* bitcast (i32 (%struct._CONFIG_NODE*, %struct._SERVER_SETUP_REC*)* @compare_server_setup to i32 (i8*, i8*)*)), !dbg !1178
  store %struct._GSList* %14, %struct._GSList** %5, align 8, !dbg !1179
  %15 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1180
  %16 = icmp ne %struct._GSList* %15, null, !dbg !1182
  br i1 %16, label %17, label %22, !dbg !1183

; <label>:17:                                     ; preds = %1
  %18 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1184
  %19 = getelementptr inbounds %struct._GSList, %struct._GSList* %18, i32 0, i32 0, !dbg !1185
  %20 = load i8*, i8** %19, align 8, !dbg !1185
  %21 = bitcast i8* %20 to %struct._CONFIG_NODE*, !dbg !1184
  store %struct._CONFIG_NODE* %21, %struct._CONFIG_NODE** %4, align 8, !dbg !1186
  br label %26, !dbg !1187

; <label>:22:                                     ; preds = %1
  %23 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1188
  %24 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1189
  %25 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %23, %struct._CONFIG_NODE* %24, i8* null, i32 2), !dbg !1190
  store %struct._CONFIG_NODE* %25, %struct._CONFIG_NODE** %4, align 8, !dbg !1191
  br label %26

; <label>:26:                                     ; preds = %22, %17
  %27 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1192
  %28 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1193
  call void @config_node_clear(%struct._CONFIG_REC* %27, %struct._CONFIG_NODE* %28), !dbg !1194
  %29 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1195
  %30 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1196
  %31 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1197
  %32 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %31, i32 0, i32 4, !dbg !1198
  %33 = load i8*, i8** %32, align 8, !dbg !1198
  call void @config_node_set_str(%struct._CONFIG_REC* %29, %struct._CONFIG_NODE* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), i8* %33), !dbg !1199
  %34 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1200
  %35 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1201
  %36 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1202
  %37 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %36, i32 0, i32 2, !dbg !1203
  %38 = load i8*, i8** %37, align 8, !dbg !1203
  call void @config_node_set_str(%struct._CONFIG_REC* %34, %struct._CONFIG_NODE* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i8* %38), !dbg !1204
  %39 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1205
  %40 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1206
  %41 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1207
  %42 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %41, i32 0, i32 5, !dbg !1208
  %43 = load i32, i32* %42, align 8, !dbg !1208
  call void @config_node_set_int(%struct._CONFIG_REC* %39, %struct._CONFIG_NODE* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i32 %43), !dbg !1209
  %44 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1210
  %45 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1211
  %46 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1212
  %47 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %46, i32 0, i32 6, !dbg !1213
  %48 = load i8*, i8** %47, align 8, !dbg !1213
  call void @config_node_set_str(%struct._CONFIG_REC* %44, %struct._CONFIG_NODE* %45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i8* %48), !dbg !1214
  %49 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1215
  %50 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1216
  %51 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1217
  %52 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %51, i32 0, i32 21, !dbg !1218
  %53 = load i8, i8* %52, align 8, !dbg !1218
  %54 = lshr i8 %53, 5, !dbg !1218
  %55 = and i8 %54, 1, !dbg !1218
  %56 = zext i8 %55 to i32, !dbg !1218
  call void @config_node_set_bool(%struct._CONFIG_REC* %49, %struct._CONFIG_NODE* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i32 %56), !dbg !1219
  %57 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1220
  %58 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1221
  %59 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1222
  %60 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %59, i32 0, i32 9, !dbg !1223
  %61 = load i8*, i8** %60, align 8, !dbg !1223
  call void @config_node_set_str(%struct._CONFIG_REC* %57, %struct._CONFIG_NODE* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i8* %61), !dbg !1224
  %62 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1225
  %63 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1226
  %64 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1227
  %65 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %64, i32 0, i32 10, !dbg !1228
  %66 = load i8*, i8** %65, align 8, !dbg !1228
  call void @config_node_set_str(%struct._CONFIG_REC* %62, %struct._CONFIG_NODE* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i8* %66), !dbg !1229
  %67 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1230
  %68 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1231
  %69 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1232
  %70 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %69, i32 0, i32 11, !dbg !1233
  %71 = load i8*, i8** %70, align 8, !dbg !1233
  call void @config_node_set_str(%struct._CONFIG_REC* %67, %struct._CONFIG_NODE* %68, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i8* %71), !dbg !1234
  %72 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1235
  %73 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1236
  %74 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1237
  %75 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %74, i32 0, i32 21, !dbg !1238
  %76 = load i8, i8* %75, align 8, !dbg !1238
  %77 = lshr i8 %76, 6, !dbg !1238
  %78 = and i8 %77, 1, !dbg !1238
  %79 = zext i8 %78 to i32, !dbg !1238
  call void @config_node_set_bool(%struct._CONFIG_REC* %72, %struct._CONFIG_NODE* %73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0), i32 %79), !dbg !1239
  %80 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1240
  %81 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1241
  %82 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1242
  %83 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %82, i32 0, i32 12, !dbg !1243
  %84 = load i8*, i8** %83, align 8, !dbg !1243
  call void @config_node_set_str(%struct._CONFIG_REC* %80, %struct._CONFIG_NODE* %81, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i8* %84), !dbg !1244
  %85 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1245
  %86 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1246
  %87 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1247
  %88 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %87, i32 0, i32 13, !dbg !1248
  %89 = load i8*, i8** %88, align 8, !dbg !1248
  call void @config_node_set_str(%struct._CONFIG_REC* %85, %struct._CONFIG_NODE* %86, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i32 0, i32 0), i8* %89), !dbg !1249
  %90 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1250
  %91 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1251
  %92 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1252
  %93 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %92, i32 0, i32 14, !dbg !1253
  %94 = load i8*, i8** %93, align 8, !dbg !1253
  call void @config_node_set_str(%struct._CONFIG_REC* %90, %struct._CONFIG_NODE* %91, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i32 0, i32 0), i8* %94), !dbg !1254
  %95 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1255
  %96 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1256
  %97 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1257
  %98 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %97, i32 0, i32 15, !dbg !1258
  %99 = load i8*, i8** %98, align 8, !dbg !1258
  call void @config_node_set_str(%struct._CONFIG_REC* %95, %struct._CONFIG_NODE* %96, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i32 0, i32 0), i8* %99), !dbg !1259
  %100 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1260
  %101 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1261
  %102 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1262
  %103 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %102, i32 0, i32 16, !dbg !1263
  %104 = load i8*, i8** %103, align 8, !dbg !1263
  call void @config_node_set_str(%struct._CONFIG_REC* %100, %struct._CONFIG_NODE* %101, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.47, i32 0, i32 0), i8* %104), !dbg !1264
  %105 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1265
  %106 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1266
  %107 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1267
  %108 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %107, i32 0, i32 17, !dbg !1268
  %109 = load i8*, i8** %108, align 8, !dbg !1268
  call void @config_node_set_str(%struct._CONFIG_REC* %105, %struct._CONFIG_NODE* %106, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i8* %109), !dbg !1269
  %110 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1270
  %111 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1271
  %112 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1272
  %113 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %112, i32 0, i32 3, !dbg !1273
  %114 = load i16, i16* %113, align 8, !dbg !1273
  %115 = zext i16 %114 to i32, !dbg !1272
  %116 = icmp eq i32 %115, 10, !dbg !1274
  br i1 %116, label %117, label %118, !dbg !1272

; <label>:117:                                    ; preds = %26
  br label %125, !dbg !1275

; <label>:118:                                    ; preds = %26
  %119 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1277
  %120 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %119, i32 0, i32 3, !dbg !1279
  %121 = load i16, i16* %120, align 8, !dbg !1279
  %122 = zext i16 %121 to i32, !dbg !1277
  %123 = icmp eq i32 %122, 2, !dbg !1280
  %124 = select i1 %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i8* null, !dbg !1277
  br label %125, !dbg !1281

; <label>:125:                                    ; preds = %118, %117
  %126 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), %117 ], [ %124, %118 ], !dbg !1282
  call void @config_node_set_str(%struct._CONFIG_REC* %110, %struct._CONFIG_NODE* %111, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i8* %126), !dbg !1284
  %127 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1285
  %128 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %127, i32 0, i32 21, !dbg !1287
  %129 = load i8, i8* %128, align 8, !dbg !1287
  %130 = and i8 %129, 1, !dbg !1287
  %131 = zext i8 %130 to i32, !dbg !1287
  %132 = icmp ne i32 %131, 0, !dbg !1285
  br i1 %132, label %133, label %136, !dbg !1288

; <label>:133:                                    ; preds = %125
  %134 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1289
  %135 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1290
  call void @config_node_set_bool(%struct._CONFIG_REC* %134, %struct._CONFIG_NODE* %135, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i32 0, i32 0), i32 1), !dbg !1291
  br label %136, !dbg !1291

; <label>:136:                                    ; preds = %133, %125
  %137 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1292
  %138 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %137, i32 0, i32 21, !dbg !1294
  %139 = load i8, i8* %138, align 8, !dbg !1294
  %140 = lshr i8 %139, 1, !dbg !1294
  %141 = and i8 %140, 1, !dbg !1294
  %142 = zext i8 %141 to i32, !dbg !1294
  %143 = icmp ne i32 %142, 0, !dbg !1292
  br i1 %143, label %144, label %147, !dbg !1295

; <label>:144:                                    ; preds = %136
  %145 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1296
  %146 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1297
  call void @config_node_set_bool(%struct._CONFIG_REC* %145, %struct._CONFIG_NODE* %146, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i32 1), !dbg !1298
  br label %147, !dbg !1298

; <label>:147:                                    ; preds = %144, %136
  %148 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1299
  %149 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1300
  %150 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.54, i32 0, i32 0), i32 2, %struct._SERVER_SETUP_REC* %148, %struct._CONFIG_NODE* %149), !dbg !1301
  ret void, !dbg !1302
}

; Function Attrs: nounwind uwtable
define void @server_setup_remove_chatnet(i8*) #0 !dbg !1303 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct._SERVER_SETUP_REC*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1306, metadata !396), !dbg !1307
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !1308, metadata !396), !dbg !1309
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !1310, metadata !396), !dbg !1311
  br label %6, !dbg !1312, !llvm.loop !1313

; <label>:6:                                      ; preds = %1
  %7 = load i8*, i8** %2, align 8, !dbg !1314
  %8 = icmp ne i8* %7, null, !dbg !1318
  br i1 %8, label %9, label %10, !dbg !1314

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !1319

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.server_setup_remove_chatnet, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0)), !dbg !1322
  br label %36, !dbg !1325

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !1326

; <label>:12:                                     ; preds = %11
  %13 = load %struct._GSList*, %struct._GSList** @setupservers, align 8, !dbg !1328
  store %struct._GSList* %13, %struct._GSList** %3, align 8, !dbg !1330
  br label %14, !dbg !1331

; <label>:14:                                     ; preds = %34, %12
  %15 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1332
  %16 = icmp ne %struct._GSList* %15, null, !dbg !1335
  br i1 %16, label %17, label %36, !dbg !1336

; <label>:17:                                     ; preds = %14
  call void @llvm.dbg.declare(metadata %struct._SERVER_SETUP_REC** %5, metadata !1337, metadata !396), !dbg !1339
  %18 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1340
  %19 = getelementptr inbounds %struct._GSList, %struct._GSList* %18, i32 0, i32 0, !dbg !1341
  %20 = load i8*, i8** %19, align 8, !dbg !1341
  %21 = bitcast i8* %20 to %struct._SERVER_SETUP_REC*, !dbg !1340
  store %struct._SERVER_SETUP_REC* %21, %struct._SERVER_SETUP_REC** %5, align 8, !dbg !1339
  %22 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1342
  %23 = getelementptr inbounds %struct._GSList, %struct._GSList* %22, i32 0, i32 1, !dbg !1343
  %24 = load %struct._GSList*, %struct._GSList** %23, align 8, !dbg !1343
  store %struct._GSList* %24, %struct._GSList** %4, align 8, !dbg !1344
  %25 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %5, align 8, !dbg !1345
  %26 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %25, i32 0, i32 2, !dbg !1347
  %27 = load i8*, i8** %26, align 8, !dbg !1347
  %28 = load i8*, i8** %2, align 8, !dbg !1348
  %29 = call i32 @g_ascii_strcasecmp(i8* %27, i8* %28), !dbg !1349
  %30 = icmp eq i32 %29, 0, !dbg !1350
  br i1 %30, label %31, label %33, !dbg !1351

; <label>:31:                                     ; preds = %17
  %32 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %5, align 8, !dbg !1352
  call void @server_setup_remove(%struct._SERVER_SETUP_REC* %32), !dbg !1353
  br label %33, !dbg !1353

; <label>:33:                                     ; preds = %31, %17
  br label %34, !dbg !1354

; <label>:34:                                     ; preds = %33
  %35 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1355
  store %struct._GSList* %35, %struct._GSList** %3, align 8, !dbg !1357
  br label %14, !dbg !1358, !llvm.loop !1359

; <label>:36:                                     ; preds = %10, %14
  ret void, !dbg !1361
}

; Function Attrs: nounwind uwtable
define void @server_setup_remove(%struct._SERVER_SETUP_REC*) #0 !dbg !1362 {
  %2 = alloca %struct._SERVER_SETUP_REC*, align 8
  store %struct._SERVER_SETUP_REC* %0, %struct._SERVER_SETUP_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_SETUP_REC** %2, metadata !1363, metadata !396), !dbg !1364
  %3 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1365
  call void @server_setup_remove_config(%struct._SERVER_SETUP_REC* %3), !dbg !1366
  %4 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1367
  call void @server_setup_destroy(%struct._SERVER_SETUP_REC* %4), !dbg !1368
  ret void, !dbg !1369
}

; Function Attrs: nounwind uwtable
define internal void @server_setup_remove_config(%struct._SERVER_SETUP_REC*) #0 !dbg !1370 {
  %2 = alloca %struct._SERVER_SETUP_REC*, align 8
  %3 = alloca %struct._CONFIG_NODE*, align 8
  %4 = alloca %struct._GSList*, align 8
  store %struct._SERVER_SETUP_REC* %0, %struct._SERVER_SETUP_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_SETUP_REC** %2, metadata !1371, metadata !396), !dbg !1372
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %3, metadata !1373, metadata !396), !dbg !1374
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !1375, metadata !396), !dbg !1376
  %5 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1377
  %6 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i32 0), !dbg !1378
  store %struct._CONFIG_NODE* %6, %struct._CONFIG_NODE** %3, align 8, !dbg !1379
  %7 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1380
  %8 = icmp eq %struct._CONFIG_NODE* %7, null, !dbg !1382
  br i1 %8, label %9, label %10, !dbg !1383

; <label>:9:                                      ; preds = %1
  br label %27, !dbg !1384

; <label>:10:                                     ; preds = %1
  %11 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1385
  %12 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %11, i32 0, i32 2, !dbg !1386
  %13 = load i8*, i8** %12, align 8, !dbg !1386
  %14 = bitcast i8* %13 to %struct._GSList*, !dbg !1385
  %15 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1387
  %16 = bitcast %struct._SERVER_SETUP_REC* %15 to i8*, !dbg !1387
  %17 = call %struct._GSList* @g_slist_find_custom(%struct._GSList* %14, i8* %16, i32 (i8*, i8*)* bitcast (i32 (%struct._CONFIG_NODE*, %struct._SERVER_SETUP_REC*)* @compare_server_setup to i32 (i8*, i8*)*)), !dbg !1388
  store %struct._GSList* %17, %struct._GSList** %4, align 8, !dbg !1389
  %18 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1390
  %19 = icmp ne %struct._GSList* %18, null, !dbg !1392
  br i1 %19, label %20, label %27, !dbg !1393

; <label>:20:                                     ; preds = %10
  %21 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1394
  %22 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1395
  %23 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1396
  %24 = getelementptr inbounds %struct._GSList, %struct._GSList* %23, i32 0, i32 0, !dbg !1397
  %25 = load i8*, i8** %24, align 8, !dbg !1397
  %26 = bitcast i8* %25 to %struct._CONFIG_NODE*, !dbg !1396
  call void @config_node_remove(%struct._CONFIG_REC* %21, %struct._CONFIG_NODE* %22, %struct._CONFIG_NODE* %26), !dbg !1398
  br label %27, !dbg !1398

; <label>:27:                                     ; preds = %9, %20, %10
  ret void, !dbg !1399
}

; Function Attrs: nounwind uwtable
define internal void @server_setup_destroy(%struct._SERVER_SETUP_REC*) #0 !dbg !1400 {
  %2 = alloca %struct._SERVER_SETUP_REC*, align 8
  store %struct._SERVER_SETUP_REC* %0, %struct._SERVER_SETUP_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_SETUP_REC** %2, metadata !1401, metadata !396), !dbg !1402
  %3 = load %struct._GSList*, %struct._GSList** @setupservers, align 8, !dbg !1403
  %4 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1404
  %5 = bitcast %struct._SERVER_SETUP_REC* %4 to i8*, !dbg !1404
  %6 = call %struct._GSList* @g_slist_remove(%struct._GSList* %3, i8* %5), !dbg !1405
  store %struct._GSList* %6, %struct._GSList** @setupservers, align 8, !dbg !1406
  %7 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1407
  %8 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.56, i32 0, i32 0), i32 1, %struct._SERVER_SETUP_REC* %7), !dbg !1408
  %9 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1409
  %10 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %9, i32 0, i32 17, !dbg !1410
  %11 = load i8*, i8** %10, align 8, !dbg !1410
  call void @g_free(i8* %11), !dbg !1411
  %12 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1412
  %13 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %12, i32 0, i32 18, !dbg !1413
  %14 = load %struct._IPADDR*, %struct._IPADDR** %13, align 8, !dbg !1413
  %15 = bitcast %struct._IPADDR* %14 to i8*, !dbg !1412
  call void @g_free(i8* %15), !dbg !1414
  %16 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1415
  %17 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %16, i32 0, i32 19, !dbg !1416
  %18 = load %struct._IPADDR*, %struct._IPADDR** %17, align 8, !dbg !1416
  %19 = bitcast %struct._IPADDR* %18 to i8*, !dbg !1415
  call void @g_free(i8* %19), !dbg !1417
  %20 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1418
  %21 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %20, i32 0, i32 2, !dbg !1419
  %22 = load i8*, i8** %21, align 8, !dbg !1419
  call void @g_free(i8* %22), !dbg !1420
  %23 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1421
  %24 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %23, i32 0, i32 6, !dbg !1422
  %25 = load i8*, i8** %24, align 8, !dbg !1422
  call void @g_free(i8* %25), !dbg !1423
  %26 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1424
  %27 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %26, i32 0, i32 9, !dbg !1425
  %28 = load i8*, i8** %27, align 8, !dbg !1425
  call void @g_free(i8* %28), !dbg !1426
  %29 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1427
  %30 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %29, i32 0, i32 10, !dbg !1428
  %31 = load i8*, i8** %30, align 8, !dbg !1428
  call void @g_free(i8* %31), !dbg !1429
  %32 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1430
  %33 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %32, i32 0, i32 11, !dbg !1431
  %34 = load i8*, i8** %33, align 8, !dbg !1431
  call void @g_free(i8* %34), !dbg !1432
  %35 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1433
  %36 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %35, i32 0, i32 12, !dbg !1434
  %37 = load i8*, i8** %36, align 8, !dbg !1434
  call void @g_free(i8* %37), !dbg !1435
  %38 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1436
  %39 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %38, i32 0, i32 13, !dbg !1437
  %40 = load i8*, i8** %39, align 8, !dbg !1437
  call void @g_free(i8* %40), !dbg !1438
  %41 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1439
  %42 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %41, i32 0, i32 14, !dbg !1440
  %43 = load i8*, i8** %42, align 8, !dbg !1440
  call void @g_free(i8* %43), !dbg !1441
  %44 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1442
  %45 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %44, i32 0, i32 15, !dbg !1443
  %46 = load i8*, i8** %45, align 8, !dbg !1443
  call void @g_free(i8* %46), !dbg !1444
  %47 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1445
  %48 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %47, i32 0, i32 16, !dbg !1446
  %49 = load i8*, i8** %48, align 8, !dbg !1446
  call void @g_free(i8* %49), !dbg !1447
  %50 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1448
  %51 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %50, i32 0, i32 4, !dbg !1449
  %52 = load i8*, i8** %51, align 8, !dbg !1449
  call void @g_free(i8* %52), !dbg !1450
  %53 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !1451
  %54 = bitcast %struct._SERVER_SETUP_REC* %53 to i8*, !dbg !1451
  call void @g_free(i8* %54), !dbg !1452
  ret void, !dbg !1453
}

; Function Attrs: nounwind uwtable
define void @servers_setup_init() #0 !dbg !1454 {
  call void @settings_add_str_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0)), !dbg !1455
  call void @settings_add_str_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* null), !dbg !1456
  call void @settings_add_str_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* null), !dbg !1457
  call void @settings_add_str_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* null), !dbg !1458
  call void @settings_add_bool_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i32 0), !dbg !1459
  call void @settings_add_str_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0)), !dbg !1460
  call void @settings_add_int_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i32 6667), !dbg !1461
  call void @settings_add_str_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i32 0, i32 0)), !dbg !1462
  call void @settings_add_str_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0)), !dbg !1463
  call void @settings_add_str_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0)), !dbg !1464
  store %struct._GSList* null, %struct._GSList** @setupservers, align 8, !dbg !1465
  store %struct._IPADDR* null, %struct._IPADDR** @source_host_ip6, align 8, !dbg !1466
  store %struct._IPADDR* null, %struct._IPADDR** @source_host_ip4, align 8, !dbg !1467
  store i8* null, i8** @old_source_host, align 8, !dbg !1468
  call void @read_settings(), !dbg !1469
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1470
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_servers to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1471
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_servers to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1472
  ret void, !dbg !1473
}

declare void @settings_add_str_module(i8*, i8*, i8*, i8*) #2

declare void @settings_add_bool_module(i8*, i8*, i8*, i32) #2

declare void @settings_add_int_module(i8*, i8*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @read_settings() #0 !dbg !1474 {
  %1 = load i8*, i8** @old_source_host, align 8, !dbg !1475
  %2 = icmp eq i8* %1, null, !dbg !1477
  br i1 %2, label %8, label %3, !dbg !1478

; <label>:3:                                      ; preds = %0
  %4 = load i8*, i8** @old_source_host, align 8, !dbg !1479
  %5 = call i8* @settings_get_str(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0)), !dbg !1480
  %6 = call i32 @g_strcmp0(i8* %4, i8* %5), !dbg !1481
  %7 = icmp ne i32 %6, 0, !dbg !1483
  br i1 %7, label %8, label %12, !dbg !1484

; <label>:8:                                      ; preds = %3, %0
  %9 = load i8*, i8** @old_source_host, align 8, !dbg !1486
  call void @g_free(i8* %9), !dbg !1488
  %10 = call i8* @settings_get_str(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0)), !dbg !1489
  %11 = call noalias i8* @g_strdup(i8* %10), !dbg !1490
  store i8* %11, i8** @old_source_host, align 8, !dbg !1492
  store i32 0, i32* @source_host_ok, align 4, !dbg !1493
  call void @get_source_host_ip(), !dbg !1494
  br label %12, !dbg !1495

; <label>:12:                                     ; preds = %8, %3
  ret void, !dbg !1496
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @read_servers() #0 !dbg !1497 {
  %1 = alloca %struct._CONFIG_NODE*, align 8
  %2 = alloca %struct._GSList*, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %1, metadata !1498, metadata !396), !dbg !1499
  call void @llvm.dbg.declare(metadata %struct._GSList** %2, metadata !1500, metadata !396), !dbg !1501
  br label %3, !dbg !1502

; <label>:3:                                      ; preds = %6, %0
  %4 = load %struct._GSList*, %struct._GSList** @setupservers, align 8, !dbg !1503
  %5 = icmp ne %struct._GSList* %4, null, !dbg !1505
  br i1 %5, label %6, label %11, !dbg !1506

; <label>:6:                                      ; preds = %3
  %7 = load %struct._GSList*, %struct._GSList** @setupservers, align 8, !dbg !1507
  %8 = getelementptr inbounds %struct._GSList, %struct._GSList* %7, i32 0, i32 0, !dbg !1508
  %9 = load i8*, i8** %8, align 8, !dbg !1508
  %10 = bitcast i8* %9 to %struct._SERVER_SETUP_REC*, !dbg !1507
  call void @server_setup_destroy(%struct._SERVER_SETUP_REC* %10), !dbg !1509
  br label %3, !dbg !1510, !llvm.loop !1512

; <label>:11:                                     ; preds = %3
  %12 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1513
  %13 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i32 0), !dbg !1514
  store %struct._CONFIG_NODE* %13, %struct._CONFIG_NODE** %1, align 8, !dbg !1515
  %14 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !1516
  %15 = icmp ne %struct._CONFIG_NODE* %14, null, !dbg !1518
  br i1 %15, label %16, label %35, !dbg !1519

; <label>:16:                                     ; preds = %11
  %17 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !1520
  %18 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %17, i32 0, i32 2, !dbg !1522
  %19 = load i8*, i8** %18, align 8, !dbg !1522
  %20 = bitcast i8* %19 to %struct._GSList*, !dbg !1520
  %21 = call %struct._GSList* @config_node_first(%struct._GSList* %20), !dbg !1523
  store %struct._GSList* %21, %struct._GSList** %2, align 8, !dbg !1524
  br label %22, !dbg !1525

; <label>:22:                                     ; preds = %31, %16
  %23 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1526
  %24 = icmp ne %struct._GSList* %23, null, !dbg !1530
  br i1 %24, label %25, label %34, !dbg !1531

; <label>:25:                                     ; preds = %22
  %26 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1532
  %27 = getelementptr inbounds %struct._GSList, %struct._GSList* %26, i32 0, i32 0, !dbg !1533
  %28 = load i8*, i8** %27, align 8, !dbg !1533
  %29 = bitcast i8* %28 to %struct._CONFIG_NODE*, !dbg !1532
  %30 = call %struct._SERVER_SETUP_REC* @server_setup_read(%struct._CONFIG_NODE* %29), !dbg !1534
  br label %31, !dbg !1534

; <label>:31:                                     ; preds = %25
  %32 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1535
  %33 = call %struct._GSList* @config_node_next(%struct._GSList* %32), !dbg !1537
  store %struct._GSList* %33, %struct._GSList** %2, align 8, !dbg !1538
  br label %22, !dbg !1539, !llvm.loop !1540

; <label>:34:                                     ; preds = %22
  br label %35, !dbg !1541

; <label>:35:                                     ; preds = %34, %11
  ret void, !dbg !1542
}

; Function Attrs: nounwind uwtable
define void @servers_setup_deinit() #0 !dbg !1543 {
  %1 = load %struct._IPADDR*, %struct._IPADDR** @source_host_ip4, align 8, !dbg !1544
  %2 = bitcast %struct._IPADDR* %1 to i8*, !dbg !1544
  call void @g_free(i8* %2), !dbg !1545
  %3 = load %struct._IPADDR*, %struct._IPADDR** @source_host_ip6, align 8, !dbg !1546
  %4 = bitcast %struct._IPADDR* %3 to i8*, !dbg !1546
  call void @g_free(i8* %4), !dbg !1547
  %5 = load i8*, i8** @old_source_host, align 8, !dbg !1548
  call void @g_free(i8* %5), !dbg !1549
  br label %6, !dbg !1550

; <label>:6:                                      ; preds = %9, %0
  %7 = load %struct._GSList*, %struct._GSList** @setupservers, align 8, !dbg !1551
  %8 = icmp ne %struct._GSList* %7, null, !dbg !1553
  br i1 %8, label %9, label %14, !dbg !1554

; <label>:9:                                      ; preds = %6
  %10 = load %struct._GSList*, %struct._GSList** @setupservers, align 8, !dbg !1555
  %11 = getelementptr inbounds %struct._GSList, %struct._GSList* %10, i32 0, i32 0, !dbg !1556
  %12 = load i8*, i8** %11, align 8, !dbg !1556
  %13 = bitcast i8* %12 to %struct._SERVER_SETUP_REC*, !dbg !1555
  call void @server_setup_destroy(%struct._SERVER_SETUP_REC* %13), !dbg !1557
  br label %6, !dbg !1558, !llvm.loop !1560

; <label>:14:                                     ; preds = %6
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1561
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_servers to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1562
  call void @signal_remove_full(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_servers to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1563
  call void @module_uniq_destroy(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)), !dbg !1564
  ret void, !dbg !1565
}

declare void @g_free(i8*) #2

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare void @module_uniq_destroy(i8*) #2

declare i32 @net_gethostbyname(i8*, %struct._IPADDR*, %struct._IPADDR*) #2

; Function Attrs: nounwind uwtable
define internal void @save_ips(%struct._IPADDR*, %struct._IPADDR*, %struct._IPADDR**, %struct._IPADDR**) #0 !dbg !1566 {
  %5 = alloca %struct._IPADDR*, align 8
  %6 = alloca %struct._IPADDR*, align 8
  %7 = alloca %struct._IPADDR**, align 8
  %8 = alloca %struct._IPADDR**, align 8
  store %struct._IPADDR* %0, %struct._IPADDR** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IPADDR** %5, metadata !1569, metadata !396), !dbg !1570
  store %struct._IPADDR* %1, %struct._IPADDR** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IPADDR** %6, metadata !1571, metadata !396), !dbg !1572
  store %struct._IPADDR** %2, %struct._IPADDR*** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IPADDR*** %7, metadata !1573, metadata !396), !dbg !1574
  store %struct._IPADDR** %3, %struct._IPADDR*** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._IPADDR*** %8, metadata !1575, metadata !396), !dbg !1576
  %9 = load %struct._IPADDR*, %struct._IPADDR** %5, align 8, !dbg !1577
  %10 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %9, i32 0, i32 0, !dbg !1579
  %11 = load i16, i16* %10, align 4, !dbg !1579
  %12 = zext i16 %11 to i32, !dbg !1577
  %13 = icmp eq i32 %12, 0, !dbg !1580
  br i1 %13, label %14, label %26, !dbg !1581

; <label>:14:                                     ; preds = %4
  br label %15, !dbg !1582, !llvm.loop !1583

; <label>:15:                                     ; preds = %14
  %16 = load %struct._IPADDR**, %struct._IPADDR*** %7, align 8, !dbg !1584
  %17 = load %struct._IPADDR*, %struct._IPADDR** %16, align 8, !dbg !1588
  %18 = icmp ne %struct._IPADDR* %17, null, !dbg !1588
  br i1 %18, label %19, label %24, !dbg !1588

; <label>:19:                                     ; preds = %15
  %20 = load %struct._IPADDR**, %struct._IPADDR*** %7, align 8, !dbg !1589
  %21 = load %struct._IPADDR*, %struct._IPADDR** %20, align 8, !dbg !1592
  %22 = bitcast %struct._IPADDR* %21 to i8*, !dbg !1592
  call void @g_free(i8* %22), !dbg !1593
  %23 = load %struct._IPADDR**, %struct._IPADDR*** %7, align 8, !dbg !1594
  store %struct._IPADDR* null, %struct._IPADDR** %23, align 8, !dbg !1595
  br label %24, !dbg !1596

; <label>:24:                                     ; preds = %19, %15
  br label %25, !dbg !1597

; <label>:25:                                     ; preds = %24
  br label %40, !dbg !1599

; <label>:26:                                     ; preds = %4
  %27 = load %struct._IPADDR**, %struct._IPADDR*** %7, align 8, !dbg !1601
  %28 = load %struct._IPADDR*, %struct._IPADDR** %27, align 8, !dbg !1604
  %29 = icmp eq %struct._IPADDR* %28, null, !dbg !1605
  br i1 %29, label %30, label %34, !dbg !1606

; <label>:30:                                     ; preds = %26
  %31 = call noalias i8* @g_malloc_n(i64 1, i64 20), !dbg !1607
  %32 = bitcast i8* %31 to %struct._IPADDR*, !dbg !1608
  %33 = load %struct._IPADDR**, %struct._IPADDR*** %7, align 8, !dbg !1609
  store %struct._IPADDR* %32, %struct._IPADDR** %33, align 8, !dbg !1610
  br label %34, !dbg !1611

; <label>:34:                                     ; preds = %30, %26
  %35 = load %struct._IPADDR**, %struct._IPADDR*** %7, align 8, !dbg !1612
  %36 = load %struct._IPADDR*, %struct._IPADDR** %35, align 8, !dbg !1613
  %37 = bitcast %struct._IPADDR* %36 to i8*, !dbg !1614
  %38 = load %struct._IPADDR*, %struct._IPADDR** %5, align 8, !dbg !1615
  %39 = bitcast %struct._IPADDR* %38 to i8*, !dbg !1614
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %39, i64 20, i32 4, i1 false), !dbg !1614
  br label %40

; <label>:40:                                     ; preds = %34, %25
  %41 = load %struct._IPADDR*, %struct._IPADDR** %6, align 8, !dbg !1616
  %42 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %41, i32 0, i32 0, !dbg !1618
  %43 = load i16, i16* %42, align 4, !dbg !1618
  %44 = zext i16 %43 to i32, !dbg !1616
  %45 = icmp eq i32 %44, 0, !dbg !1619
  br i1 %45, label %46, label %58, !dbg !1620

; <label>:46:                                     ; preds = %40
  br label %47, !dbg !1621, !llvm.loop !1622

; <label>:47:                                     ; preds = %46
  %48 = load %struct._IPADDR**, %struct._IPADDR*** %8, align 8, !dbg !1623
  %49 = load %struct._IPADDR*, %struct._IPADDR** %48, align 8, !dbg !1627
  %50 = icmp ne %struct._IPADDR* %49, null, !dbg !1627
  br i1 %50, label %51, label %56, !dbg !1627

; <label>:51:                                     ; preds = %47
  %52 = load %struct._IPADDR**, %struct._IPADDR*** %8, align 8, !dbg !1628
  %53 = load %struct._IPADDR*, %struct._IPADDR** %52, align 8, !dbg !1631
  %54 = bitcast %struct._IPADDR* %53 to i8*, !dbg !1631
  call void @g_free(i8* %54), !dbg !1632
  %55 = load %struct._IPADDR**, %struct._IPADDR*** %8, align 8, !dbg !1633
  store %struct._IPADDR* null, %struct._IPADDR** %55, align 8, !dbg !1634
  br label %56, !dbg !1635

; <label>:56:                                     ; preds = %51, %47
  br label %57, !dbg !1636

; <label>:57:                                     ; preds = %56
  br label %72, !dbg !1638

; <label>:58:                                     ; preds = %40
  %59 = load %struct._IPADDR**, %struct._IPADDR*** %8, align 8, !dbg !1640
  %60 = load %struct._IPADDR*, %struct._IPADDR** %59, align 8, !dbg !1643
  %61 = icmp eq %struct._IPADDR* %60, null, !dbg !1644
  br i1 %61, label %62, label %66, !dbg !1645

; <label>:62:                                     ; preds = %58
  %63 = call noalias i8* @g_malloc_n(i64 1, i64 20), !dbg !1646
  %64 = bitcast i8* %63 to %struct._IPADDR*, !dbg !1647
  %65 = load %struct._IPADDR**, %struct._IPADDR*** %8, align 8, !dbg !1648
  store %struct._IPADDR* %64, %struct._IPADDR** %65, align 8, !dbg !1649
  br label %66, !dbg !1650

; <label>:66:                                     ; preds = %62, %58
  %67 = load %struct._IPADDR**, %struct._IPADDR*** %8, align 8, !dbg !1651
  %68 = load %struct._IPADDR*, %struct._IPADDR** %67, align 8, !dbg !1652
  %69 = bitcast %struct._IPADDR* %68 to i8*, !dbg !1653
  %70 = load %struct._IPADDR*, %struct._IPADDR** %6, align 8, !dbg !1654
  %71 = bitcast %struct._IPADDR* %70 to i8*, !dbg !1653
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %69, i8* %71, i64 20, i32 4, i1 false), !dbg !1653
  br label %72

; <label>:72:                                     ; preds = %66, %57
  ret void, !dbg !1655
}

declare void @server_connect_own_ip_save(%struct._SERVER_CONNECT_REC*, %struct._IPADDR*, %struct._IPADDR*) #2

declare noalias i8* @g_malloc_n(i64, i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind
declare i64 @time(i64*) #4

declare %struct._CHAT_PROTOCOL_REC* @chat_protocol_find_id(i32) #2

declare %struct._CHAT_PROTOCOL_REC* @chat_protocol_get_default() #2

declare void @server_connect_ref(%struct._SERVER_CONNECT_REC*) #2

; Function Attrs: nounwind uwtable
define internal void @server_setup_fill(%struct._SERVER_CONNECT_REC*, i8*, i32) #0 !dbg !1656 {
  %4 = alloca %struct._SERVER_CONNECT_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct._SERVER_CONNECT_REC* %0, %struct._SERVER_CONNECT_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_CONNECT_REC** %4, metadata !1659, metadata !396), !dbg !1660
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1661, metadata !396), !dbg !1662
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1663, metadata !396), !dbg !1664
  br label %7, !dbg !1665, !llvm.loop !1666

; <label>:7:                                      ; preds = %3
  %8 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1667
  %9 = icmp ne %struct._SERVER_CONNECT_REC* %8, null, !dbg !1671
  br i1 %9, label %10, label %11, !dbg !1667

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !1672

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.server_setup_fill, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0)), !dbg !1675
  br label %116, !dbg !1678

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !1679

; <label>:13:                                     ; preds = %12
  br label %14, !dbg !1681, !llvm.loop !1682

; <label>:14:                                     ; preds = %13
  %15 = load i8*, i8** %5, align 8, !dbg !1683
  %16 = icmp ne i8* %15, null, !dbg !1687
  br i1 %16, label %17, label %18, !dbg !1683

; <label>:17:                                     ; preds = %14
  br label %19, !dbg !1688

; <label>:18:                                     ; preds = %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.server_setup_fill, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0)), !dbg !1691
  br label %116, !dbg !1694

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !1695

; <label>:20:                                     ; preds = %19
  %21 = call i32 @module_get_uniq_id(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0), !dbg !1697
  %22 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1698
  %23 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %22, i32 0, i32 0, !dbg !1699
  store i32 %21, i32* %23, align 8, !dbg !1700
  %24 = load i8*, i8** %5, align 8, !dbg !1701
  %25 = call noalias i8* @g_strdup(i8* %24), !dbg !1702
  %26 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1703
  %27 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %26, i32 0, i32 10, !dbg !1704
  store i8* %25, i8** %27, align 8, !dbg !1705
  %28 = load i32, i32* %6, align 4, !dbg !1706
  %29 = icmp sgt i32 %28, 0, !dbg !1708
  br i1 %29, label %30, label %34, !dbg !1709

; <label>:30:                                     ; preds = %20
  %31 = load i32, i32* %6, align 4, !dbg !1710
  %32 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1712
  %33 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %32, i32 0, i32 11, !dbg !1713
  store i32 %31, i32* %33, align 8, !dbg !1714
  br label %34, !dbg !1712

; <label>:34:                                     ; preds = %30, %20
  %35 = load i8*, i8** %5, align 8, !dbg !1715
  %36 = call i8* @strchr(i8* %35, i32 47) #7, !dbg !1717
  %37 = icmp ne i8* %36, null, !dbg !1718
  br i1 %37, label %38, label %44, !dbg !1719

; <label>:38:                                     ; preds = %34
  %39 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1720
  %40 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %39, i32 0, i32 28, !dbg !1721
  %41 = load i8, i8* %40, align 8, !dbg !1722
  %42 = and i8 %41, -17, !dbg !1722
  %43 = or i8 %42, 16, !dbg !1722
  store i8 %43, i8* %40, align 8, !dbg !1722
  br label %44, !dbg !1720

; <label>:44:                                     ; preds = %38, %34
  %45 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1723
  %46 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %45, i32 0, i32 16, !dbg !1725
  %47 = load i8*, i8** %46, align 8, !dbg !1725
  %48 = icmp ne i8* %47, null, !dbg !1723
  br i1 %48, label %54, label %49, !dbg !1726

; <label>:49:                                     ; preds = %44
  %50 = call i8* @settings_get_str(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0)), !dbg !1727
  %51 = call noalias i8* @g_strdup(i8* %50), !dbg !1729
  %52 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1731
  %53 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %52, i32 0, i32 16, !dbg !1732
  store i8* %51, i8** %53, align 8, !dbg !1733
  br label %54, !dbg !1731

; <label>:54:                                     ; preds = %49, %44
  %55 = call i8* @settings_get_str(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0)), !dbg !1734
  %56 = call noalias i8* @g_strdup(i8* %55), !dbg !1735
  %57 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1737
  %58 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %57, i32 0, i32 17, !dbg !1738
  store i8* %56, i8** %58, align 8, !dbg !1739
  %59 = call i8* @settings_get_str(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0)), !dbg !1740
  %60 = call noalias i8* @g_strdup(i8* %59), !dbg !1741
  %61 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1742
  %62 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %61, i32 0, i32 18, !dbg !1743
  store i8* %60, i8** %62, align 8, !dbg !1744
  %63 = call i32 @settings_get_bool(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0)), !dbg !1745
  %64 = icmp ne i32 %63, 0, !dbg !1745
  br i1 %64, label %65, label %85, !dbg !1747

; <label>:65:                                     ; preds = %54
  %66 = call i8* @settings_get_str(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0)), !dbg !1748
  %67 = call noalias i8* @g_strdup(i8* %66), !dbg !1750
  %68 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1752
  %69 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %68, i32 0, i32 3, !dbg !1753
  store i8* %67, i8** %69, align 8, !dbg !1754
  %70 = call i32 @settings_get_int(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0)), !dbg !1755
  %71 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1756
  %72 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %71, i32 0, i32 4, !dbg !1757
  store i32 %70, i32* %72, align 8, !dbg !1758
  %73 = call i8* @settings_get_str(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0)), !dbg !1759
  %74 = call noalias i8* @g_strdup(i8* %73), !dbg !1760
  %75 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1761
  %76 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %75, i32 0, i32 5, !dbg !1762
  store i8* %74, i8** %76, align 8, !dbg !1763
  %77 = call i8* @settings_get_str(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0)), !dbg !1764
  %78 = call noalias i8* @g_strdup(i8* %77), !dbg !1765
  %79 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1766
  %80 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %79, i32 0, i32 6, !dbg !1767
  store i8* %78, i8** %80, align 8, !dbg !1768
  %81 = call i8* @settings_get_str(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0)), !dbg !1769
  %82 = call noalias i8* @g_strdup(i8* %81), !dbg !1770
  %83 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1771
  %84 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %83, i32 0, i32 7, !dbg !1772
  store i8* %82, i8** %84, align 8, !dbg !1773
  br label %85, !dbg !1774

; <label>:85:                                     ; preds = %65, %54
  %86 = load %struct._IPADDR*, %struct._IPADDR** @source_host_ip4, align 8, !dbg !1775
  %87 = icmp ne %struct._IPADDR* %86, null, !dbg !1777
  br i1 %87, label %88, label %99, !dbg !1778

; <label>:88:                                     ; preds = %85
  %89 = call noalias i8* @g_malloc_n(i64 1, i64 20), !dbg !1779
  %90 = bitcast i8* %89 to %struct._IPADDR*, !dbg !1781
  %91 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1782
  %92 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %91, i32 0, i32 13, !dbg !1783
  store %struct._IPADDR* %90, %struct._IPADDR** %92, align 8, !dbg !1784
  %93 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1785
  %94 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %93, i32 0, i32 13, !dbg !1786
  %95 = load %struct._IPADDR*, %struct._IPADDR** %94, align 8, !dbg !1786
  %96 = bitcast %struct._IPADDR* %95 to i8*, !dbg !1787
  %97 = load %struct._IPADDR*, %struct._IPADDR** @source_host_ip4, align 8, !dbg !1788
  %98 = bitcast %struct._IPADDR* %97 to i8*, !dbg !1787
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %96, i8* %98, i64 20, i32 4, i1 false), !dbg !1787
  br label %99, !dbg !1789

; <label>:99:                                     ; preds = %88, %85
  %100 = load %struct._IPADDR*, %struct._IPADDR** @source_host_ip6, align 8, !dbg !1790
  %101 = icmp ne %struct._IPADDR* %100, null, !dbg !1792
  br i1 %101, label %102, label %113, !dbg !1793

; <label>:102:                                    ; preds = %99
  %103 = call noalias i8* @g_malloc_n(i64 1, i64 20), !dbg !1794
  %104 = bitcast i8* %103 to %struct._IPADDR*, !dbg !1796
  %105 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1797
  %106 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %105, i32 0, i32 14, !dbg !1798
  store %struct._IPADDR* %104, %struct._IPADDR** %106, align 8, !dbg !1799
  %107 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1800
  %108 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %107, i32 0, i32 14, !dbg !1801
  %109 = load %struct._IPADDR*, %struct._IPADDR** %108, align 8, !dbg !1801
  %110 = bitcast %struct._IPADDR* %109 to i8*, !dbg !1802
  %111 = load %struct._IPADDR*, %struct._IPADDR** @source_host_ip6, align 8, !dbg !1803
  %112 = bitcast %struct._IPADDR* %111 to i8*, !dbg !1802
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %110, i8* %112, i64 20, i32 4, i1 false), !dbg !1802
  br label %113, !dbg !1804

; <label>:113:                                    ; preds = %102, %99
  %114 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1805
  %115 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i32 0, i32 0), i32 1, %struct._SERVER_CONNECT_REC* %114), !dbg !1806
  br label %116, !dbg !1807

; <label>:116:                                    ; preds = %113, %18, %11
  ret void, !dbg !1808
}

; Function Attrs: nounwind uwtable
define internal void @server_setup_fill_chatnet(%struct._SERVER_CONNECT_REC*, %struct._CHATNET_REC*) #0 !dbg !1809 {
  %3 = alloca %struct._SERVER_CONNECT_REC*, align 8
  %4 = alloca %struct._CHATNET_REC*, align 8
  store %struct._SERVER_CONNECT_REC* %0, %struct._SERVER_CONNECT_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_CONNECT_REC** %3, metadata !1812, metadata !396), !dbg !1813
  store %struct._CHATNET_REC* %1, %struct._CHATNET_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CHATNET_REC** %4, metadata !1814, metadata !396), !dbg !1815
  br label %5, !dbg !1816, !llvm.loop !1817

; <label>:5:                                      ; preds = %2
  %6 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1818
  %7 = bitcast %struct._SERVER_CONNECT_REC* %6 to i8*, !dbg !1818
  %8 = call i8* @module_check_cast(i8* %7, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !1822
  %9 = bitcast i8* %8 to %struct._SERVER_CONNECT_REC*, !dbg !1823
  %10 = icmp ne %struct._SERVER_CONNECT_REC* %9, null, !dbg !1823
  br i1 %10, label %11, label %12, !dbg !1824

; <label>:11:                                     ; preds = %5
  br i1 false, label %14, label %13, !dbg !1825

; <label>:12:                                     ; preds = %5
  br i1 false, label %13, label %14, !dbg !1827

; <label>:13:                                     ; preds = %12, %11
  br label %15, !dbg !1829

; <label>:14:                                     ; preds = %12, %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.server_setup_fill_chatnet, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0)), !dbg !1832
  br label %91, !dbg !1835

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !1836

; <label>:16:                                     ; preds = %15
  br label %17, !dbg !1838, !llvm.loop !1839

; <label>:17:                                     ; preds = %16
  %18 = load %struct._CHATNET_REC*, %struct._CHATNET_REC** %4, align 8, !dbg !1840
  %19 = bitcast %struct._CHATNET_REC* %18 to i8*, !dbg !1840
  %20 = call i8* @module_check_cast(i8* %19, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0)), !dbg !1844
  %21 = bitcast i8* %20 to %struct._CHATNET_REC*, !dbg !1845
  %22 = icmp ne %struct._CHATNET_REC* %21, null, !dbg !1845
  br i1 %22, label %23, label %24, !dbg !1846

; <label>:23:                                     ; preds = %17
  br i1 false, label %26, label %25, !dbg !1847

; <label>:24:                                     ; preds = %17
  br i1 false, label %25, label %26, !dbg !1849

; <label>:25:                                     ; preds = %24, %23
  br label %27, !dbg !1851

; <label>:26:                                     ; preds = %24, %23
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.server_setup_fill_chatnet, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0)), !dbg !1854
  br label %91, !dbg !1857

; <label>:27:                                     ; preds = %25
  br label %28, !dbg !1858

; <label>:28:                                     ; preds = %27
  %29 = load %struct._CHATNET_REC*, %struct._CHATNET_REC** %4, align 8, !dbg !1860
  %30 = getelementptr inbounds %struct._CHATNET_REC, %struct._CHATNET_REC* %29, i32 0, i32 3, !dbg !1862
  %31 = load i8*, i8** %30, align 8, !dbg !1862
  %32 = icmp ne i8* %31, null, !dbg !1863
  br i1 %32, label %33, label %43, !dbg !1864

; <label>:33:                                     ; preds = %28
  %34 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1865
  %35 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %34, i32 0, i32 16, !dbg !1867
  %36 = load i8*, i8** %35, align 8, !dbg !1867
  call void @g_free(i8* %36), !dbg !1868
  %37 = load %struct._CHATNET_REC*, %struct._CHATNET_REC** %4, align 8, !dbg !1869
  %38 = getelementptr inbounds %struct._CHATNET_REC, %struct._CHATNET_REC* %37, i32 0, i32 3, !dbg !1870
  %39 = load i8*, i8** %38, align 8, !dbg !1870
  %40 = call noalias i8* @g_strdup(i8* %39), !dbg !1871
  %41 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1872
  %42 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %41, i32 0, i32 16, !dbg !1873
  store i8* %40, i8** %42, align 8, !dbg !1874
  br label %43, !dbg !1875

; <label>:43:                                     ; preds = %33, %28
  %44 = load %struct._CHATNET_REC*, %struct._CHATNET_REC** %4, align 8, !dbg !1876
  %45 = getelementptr inbounds %struct._CHATNET_REC, %struct._CHATNET_REC* %44, i32 0, i32 4, !dbg !1878
  %46 = load i8*, i8** %45, align 8, !dbg !1878
  %47 = icmp ne i8* %46, null, !dbg !1879
  br i1 %47, label %48, label %58, !dbg !1880

; <label>:48:                                     ; preds = %43
  %49 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1881
  %50 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %49, i32 0, i32 17, !dbg !1883
  %51 = load i8*, i8** %50, align 8, !dbg !1883
  call void @g_free(i8* %51), !dbg !1884
  %52 = load %struct._CHATNET_REC*, %struct._CHATNET_REC** %4, align 8, !dbg !1885
  %53 = getelementptr inbounds %struct._CHATNET_REC, %struct._CHATNET_REC* %52, i32 0, i32 4, !dbg !1886
  %54 = load i8*, i8** %53, align 8, !dbg !1886
  %55 = call noalias i8* @g_strdup(i8* %54), !dbg !1887
  %56 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1888
  %57 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %56, i32 0, i32 17, !dbg !1889
  store i8* %55, i8** %57, align 8, !dbg !1890
  br label %58, !dbg !1891

; <label>:58:                                     ; preds = %48, %43
  %59 = load %struct._CHATNET_REC*, %struct._CHATNET_REC** %4, align 8, !dbg !1892
  %60 = getelementptr inbounds %struct._CHATNET_REC, %struct._CHATNET_REC* %59, i32 0, i32 5, !dbg !1894
  %61 = load i8*, i8** %60, align 8, !dbg !1894
  %62 = icmp ne i8* %61, null, !dbg !1895
  br i1 %62, label %63, label %73, !dbg !1896

; <label>:63:                                     ; preds = %58
  %64 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1897
  %65 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %64, i32 0, i32 18, !dbg !1899
  %66 = load i8*, i8** %65, align 8, !dbg !1899
  call void @g_free(i8* %66), !dbg !1900
  %67 = load %struct._CHATNET_REC*, %struct._CHATNET_REC** %4, align 8, !dbg !1901
  %68 = getelementptr inbounds %struct._CHATNET_REC, %struct._CHATNET_REC* %67, i32 0, i32 5, !dbg !1902
  %69 = load i8*, i8** %68, align 8, !dbg !1902
  %70 = call noalias i8* @g_strdup(i8* %69), !dbg !1903
  %71 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1904
  %72 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %71, i32 0, i32 18, !dbg !1905
  store i8* %70, i8** %72, align 8, !dbg !1906
  br label %73, !dbg !1907

; <label>:73:                                     ; preds = %63, %58
  %74 = load %struct._CHATNET_REC*, %struct._CHATNET_REC** %4, align 8, !dbg !1908
  %75 = getelementptr inbounds %struct._CHATNET_REC, %struct._CHATNET_REC* %74, i32 0, i32 6, !dbg !1910
  %76 = load i8*, i8** %75, align 8, !dbg !1910
  %77 = icmp ne i8* %76, null, !dbg !1911
  br i1 %77, label %78, label %87, !dbg !1912

; <label>:78:                                     ; preds = %73
  %79 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1913
  %80 = load %struct._CHATNET_REC*, %struct._CHATNET_REC** %4, align 8, !dbg !1915
  %81 = getelementptr inbounds %struct._CHATNET_REC, %struct._CHATNET_REC* %80, i32 0, i32 6, !dbg !1916
  %82 = load i8*, i8** %81, align 8, !dbg !1916
  %83 = load %struct._CHATNET_REC*, %struct._CHATNET_REC** %4, align 8, !dbg !1917
  %84 = getelementptr inbounds %struct._CHATNET_REC, %struct._CHATNET_REC* %83, i32 0, i32 8, !dbg !1918
  %85 = load %struct._CHATNET_REC*, %struct._CHATNET_REC** %4, align 8, !dbg !1919
  %86 = getelementptr inbounds %struct._CHATNET_REC, %struct._CHATNET_REC* %85, i32 0, i32 9, !dbg !1920
  call void @conn_set_ip(%struct._SERVER_CONNECT_REC* %79, i8* %82, %struct._IPADDR** %84, %struct._IPADDR** %86), !dbg !1921
  br label %87, !dbg !1922

; <label>:87:                                     ; preds = %78, %73
  %88 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1923
  %89 = load %struct._CHATNET_REC*, %struct._CHATNET_REC** %4, align 8, !dbg !1924
  %90 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i32 0, i32 0), i32 2, %struct._SERVER_CONNECT_REC* %88, %struct._CHATNET_REC* %89), !dbg !1925
  br label %91, !dbg !1926

; <label>:91:                                     ; preds = %87, %26, %14
  ret void, !dbg !1927
}

; Function Attrs: nounwind uwtable
define internal void @server_setup_fill_server(%struct._SERVER_CONNECT_REC*, %struct._SERVER_SETUP_REC*) #0 !dbg !1929 {
  %3 = alloca %struct._SERVER_CONNECT_REC*, align 8
  %4 = alloca %struct._SERVER_SETUP_REC*, align 8
  store %struct._SERVER_CONNECT_REC* %0, %struct._SERVER_CONNECT_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_CONNECT_REC** %3, metadata !1930, metadata !396), !dbg !1931
  store %struct._SERVER_SETUP_REC* %1, %struct._SERVER_SETUP_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_SETUP_REC** %4, metadata !1932, metadata !396), !dbg !1933
  br label %5, !dbg !1934, !llvm.loop !1935

; <label>:5:                                      ; preds = %2
  %6 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1936
  %7 = bitcast %struct._SERVER_CONNECT_REC* %6 to i8*, !dbg !1936
  %8 = call i8* @module_check_cast(i8* %7, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !1940
  %9 = bitcast i8* %8 to %struct._SERVER_CONNECT_REC*, !dbg !1941
  %10 = icmp ne %struct._SERVER_CONNECT_REC* %9, null, !dbg !1941
  br i1 %10, label %11, label %12, !dbg !1942

; <label>:11:                                     ; preds = %5
  br i1 false, label %14, label %13, !dbg !1943

; <label>:12:                                     ; preds = %5
  br i1 false, label %13, label %14, !dbg !1945

; <label>:13:                                     ; preds = %12, %11
  br label %15, !dbg !1947

; <label>:14:                                     ; preds = %12, %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.server_setup_fill_server, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0)), !dbg !1950
  br label %323, !dbg !1953

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !1954

; <label>:16:                                     ; preds = %15
  br label %17, !dbg !1956, !llvm.loop !1957

; <label>:17:                                     ; preds = %16
  %18 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !1958
  %19 = bitcast %struct._SERVER_SETUP_REC* %18 to i8*, !dbg !1958
  %20 = call i8* @module_check_cast(i8* %19, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)), !dbg !1962
  %21 = bitcast i8* %20 to %struct._SERVER_SETUP_REC*, !dbg !1963
  %22 = icmp ne %struct._SERVER_SETUP_REC* %21, null, !dbg !1963
  br i1 %22, label %23, label %24, !dbg !1964

; <label>:23:                                     ; preds = %17
  br i1 false, label %26, label %25, !dbg !1965

; <label>:24:                                     ; preds = %17
  br i1 false, label %25, label %26, !dbg !1967

; <label>:25:                                     ; preds = %24, %23
  br label %27, !dbg !1969

; <label>:26:                                     ; preds = %24, %23
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.server_setup_fill_server, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0)), !dbg !1972
  br label %323, !dbg !1975

; <label>:27:                                     ; preds = %25
  br label %28, !dbg !1976

; <label>:28:                                     ; preds = %27
  %29 = call i64 @time(i64* null) #6, !dbg !1978
  %30 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !1979
  %31 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %30, i32 0, i32 20, !dbg !1980
  store i64 %29, i64* %31, align 8, !dbg !1981
  %32 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !1982
  %33 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %32, i32 0, i32 21, !dbg !1984
  %34 = load i8, i8* %33, align 8, !dbg !1984
  %35 = lshr i8 %34, 1, !dbg !1984
  %36 = and i8 %35, 1, !dbg !1984
  %37 = zext i8 %36 to i32, !dbg !1984
  %38 = icmp ne i32 %37, 0, !dbg !1982
  br i1 %38, label %39, label %53, !dbg !1985

; <label>:39:                                     ; preds = %28
  br label %40, !dbg !1986, !llvm.loop !1987

; <label>:40:                                     ; preds = %39
  %41 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1988
  %42 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %41, i32 0, i32 3, !dbg !1992
  %43 = load i8*, i8** %42, align 8, !dbg !1992
  %44 = icmp ne i8* %43, null, !dbg !1988
  br i1 %44, label %45, label %51, !dbg !1988

; <label>:45:                                     ; preds = %40
  %46 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1993
  %47 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %46, i32 0, i32 3, !dbg !1996
  %48 = load i8*, i8** %47, align 8, !dbg !1996
  call void @g_free(i8* %48), !dbg !1997
  %49 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1998
  %50 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %49, i32 0, i32 3, !dbg !1999
  store i8* null, i8** %50, align 8, !dbg !2000
  br label %51, !dbg !2001

; <label>:51:                                     ; preds = %45, %40
  br label %52, !dbg !2002

; <label>:52:                                     ; preds = %51
  br label %53, !dbg !2004

; <label>:53:                                     ; preds = %52, %28
  %54 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2006
  %55 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %54, i32 0, i32 3, !dbg !2008
  %56 = load i16, i16* %55, align 8, !dbg !2008
  %57 = zext i16 %56 to i32, !dbg !2006
  %58 = icmp ne i32 %57, 0, !dbg !2009
  br i1 %58, label %59, label %71, !dbg !2010

; <label>:59:                                     ; preds = %53
  %60 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !2011
  %61 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %60, i32 0, i32 8, !dbg !2013
  %62 = load i16, i16* %61, align 8, !dbg !2013
  %63 = zext i16 %62 to i32, !dbg !2011
  %64 = icmp eq i32 %63, 0, !dbg !2014
  br i1 %64, label %65, label %71, !dbg !2015

; <label>:65:                                     ; preds = %59
  %66 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2016
  %67 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %66, i32 0, i32 3, !dbg !2017
  %68 = load i16, i16* %67, align 8, !dbg !2017
  %69 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !2018
  %70 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %69, i32 0, i32 8, !dbg !2019
  store i16 %68, i16* %70, align 8, !dbg !2020
  br label %71, !dbg !2018

; <label>:71:                                     ; preds = %65, %59, %53
  %72 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2021
  %73 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %72, i32 0, i32 5, !dbg !2023
  %74 = load i32, i32* %73, align 8, !dbg !2023
  %75 = icmp sgt i32 %74, 0, !dbg !2024
  br i1 %75, label %76, label %87, !dbg !2025

; <label>:76:                                     ; preds = %71
  %77 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !2026
  %78 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %77, i32 0, i32 11, !dbg !2028
  %79 = load i32, i32* %78, align 8, !dbg !2028
  %80 = icmp sle i32 %79, 0, !dbg !2029
  br i1 %80, label %81, label %87, !dbg !2030

; <label>:81:                                     ; preds = %76
  %82 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2031
  %83 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %82, i32 0, i32 5, !dbg !2032
  %84 = load i32, i32* %83, align 8, !dbg !2032
  %85 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !2033
  %86 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %85, i32 0, i32 11, !dbg !2034
  store i32 %84, i32* %86, align 8, !dbg !2035
  br label %87, !dbg !2033

; <label>:87:                                     ; preds = %81, %76, %71
  %88 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2036
  %89 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %88, i32 0, i32 21, !dbg !2037
  %90 = load i8, i8* %89, align 8, !dbg !2037
  %91 = lshr i8 %90, 5, !dbg !2037
  %92 = and i8 %91, 1, !dbg !2037
  %93 = zext i8 %92 to i32, !dbg !2037
  %94 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !2038
  %95 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %94, i32 0, i32 28, !dbg !2039
  %96 = trunc i32 %93 to i8, !dbg !2040
  %97 = load i8, i8* %95, align 8, !dbg !2040
  %98 = and i8 %96, 1, !dbg !2040
  %99 = shl i8 %98, 5, !dbg !2040
  %100 = and i8 %97, -33, !dbg !2040
  %101 = or i8 %100, %99, !dbg !2040
  store i8 %101, i8* %95, align 8, !dbg !2040
  %102 = zext i8 %98 to i32, !dbg !2040
  %103 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !2041
  %104 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %103, i32 0, i32 19, !dbg !2043
  %105 = load i8*, i8** %104, align 8, !dbg !2043
  %106 = icmp eq i8* %105, null, !dbg !2044
  br i1 %106, label %107, label %127, !dbg !2045

; <label>:107:                                    ; preds = %87
  %108 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2046
  %109 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %108, i32 0, i32 9, !dbg !2048
  %110 = load i8*, i8** %109, align 8, !dbg !2048
  %111 = icmp ne i8* %110, null, !dbg !2049
  br i1 %111, label %112, label %127, !dbg !2050

; <label>:112:                                    ; preds = %107
  %113 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2051
  %114 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %113, i32 0, i32 9, !dbg !2053
  %115 = load i8*, i8** %114, align 8, !dbg !2053
  %116 = getelementptr inbounds i8, i8* %115, i64 0, !dbg !2051
  %117 = load i8, i8* %116, align 1, !dbg !2051
  %118 = sext i8 %117 to i32, !dbg !2051
  %119 = icmp ne i32 %118, 0, !dbg !2054
  br i1 %119, label %120, label %127, !dbg !2055

; <label>:120:                                    ; preds = %112
  %121 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2056
  %122 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %121, i32 0, i32 9, !dbg !2057
  %123 = load i8*, i8** %122, align 8, !dbg !2057
  %124 = call noalias i8* @g_strdup(i8* %123), !dbg !2058
  %125 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !2059
  %126 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %125, i32 0, i32 19, !dbg !2060
  store i8* %124, i8** %126, align 8, !dbg !2061
  br label %127, !dbg !2059

; <label>:127:                                    ; preds = %120, %112, %107, %87
  %128 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !2062
  %129 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %128, i32 0, i32 20, !dbg !2064
  %130 = load i8*, i8** %129, align 8, !dbg !2064
  %131 = icmp eq i8* %130, null, !dbg !2065
  br i1 %131, label %132, label %152, !dbg !2066

; <label>:132:                                    ; preds = %127
  %133 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2067
  %134 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %133, i32 0, i32 10, !dbg !2069
  %135 = load i8*, i8** %134, align 8, !dbg !2069
  %136 = icmp ne i8* %135, null, !dbg !2070
  br i1 %136, label %137, label %152, !dbg !2071

; <label>:137:                                    ; preds = %132
  %138 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2072
  %139 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %138, i32 0, i32 10, !dbg !2074
  %140 = load i8*, i8** %139, align 8, !dbg !2074
  %141 = getelementptr inbounds i8, i8* %140, i64 0, !dbg !2072
  %142 = load i8, i8* %141, align 1, !dbg !2072
  %143 = sext i8 %142 to i32, !dbg !2072
  %144 = icmp ne i32 %143, 0, !dbg !2075
  br i1 %144, label %145, label %152, !dbg !2076

; <label>:145:                                    ; preds = %137
  %146 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2077
  %147 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %146, i32 0, i32 10, !dbg !2078
  %148 = load i8*, i8** %147, align 8, !dbg !2078
  %149 = call noalias i8* @g_strdup(i8* %148), !dbg !2079
  %150 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !2080
  %151 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %150, i32 0, i32 20, !dbg !2081
  store i8* %149, i8** %151, align 8, !dbg !2082
  br label %152, !dbg !2080

; <label>:152:                                    ; preds = %145, %137, %132, %127
  %153 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !2083
  %154 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %153, i32 0, i32 21, !dbg !2085
  %155 = load i8*, i8** %154, align 8, !dbg !2085
  %156 = icmp eq i8* %155, null, !dbg !2086
  br i1 %156, label %157, label %177, !dbg !2087

; <label>:157:                                    ; preds = %152
  %158 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2088
  %159 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %158, i32 0, i32 11, !dbg !2090
  %160 = load i8*, i8** %159, align 8, !dbg !2090
  %161 = icmp ne i8* %160, null, !dbg !2091
  br i1 %161, label %162, label %177, !dbg !2092

; <label>:162:                                    ; preds = %157
  %163 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2093
  %164 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %163, i32 0, i32 11, !dbg !2095
  %165 = load i8*, i8** %164, align 8, !dbg !2095
  %166 = getelementptr inbounds i8, i8* %165, i64 0, !dbg !2093
  %167 = load i8, i8* %166, align 1, !dbg !2093
  %168 = sext i8 %167 to i32, !dbg !2093
  %169 = icmp ne i32 %168, 0, !dbg !2096
  br i1 %169, label %170, label %177, !dbg !2097

; <label>:170:                                    ; preds = %162
  %171 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2098
  %172 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %171, i32 0, i32 11, !dbg !2099
  %173 = load i8*, i8** %172, align 8, !dbg !2099
  %174 = call noalias i8* @g_strdup(i8* %173), !dbg !2100
  %175 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !2101
  %176 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %175, i32 0, i32 21, !dbg !2102
  store i8* %174, i8** %176, align 8, !dbg !2103
  br label %177, !dbg !2101

; <label>:177:                                    ; preds = %170, %162, %157, %152
  %178 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2104
  %179 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %178, i32 0, i32 21, !dbg !2105
  %180 = load i8, i8* %179, align 8, !dbg !2105
  %181 = lshr i8 %180, 6, !dbg !2105
  %182 = and i8 %181, 1, !dbg !2105
  %183 = zext i8 %182 to i32, !dbg !2105
  %184 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !2106
  %185 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %184, i32 0, i32 28, !dbg !2107
  %186 = trunc i32 %183 to i8, !dbg !2108
  %187 = load i8, i8* %185, align 8, !dbg !2108
  %188 = and i8 %186, 1, !dbg !2108
  %189 = shl i8 %188, 6, !dbg !2108
  %190 = and i8 %187, -65, !dbg !2108
  %191 = or i8 %190, %189, !dbg !2108
  store i8 %191, i8* %185, align 8, !dbg !2108
  %192 = zext i8 %188 to i32, !dbg !2108
  %193 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !2109
  %194 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %193, i32 0, i32 22, !dbg !2111
  %195 = load i8*, i8** %194, align 8, !dbg !2111
  %196 = icmp eq i8* %195, null, !dbg !2112
  br i1 %196, label %197, label %217, !dbg !2113

; <label>:197:                                    ; preds = %177
  %198 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2114
  %199 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %198, i32 0, i32 12, !dbg !2116
  %200 = load i8*, i8** %199, align 8, !dbg !2116
  %201 = icmp ne i8* %200, null, !dbg !2117
  br i1 %201, label %202, label %217, !dbg !2118

; <label>:202:                                    ; preds = %197
  %203 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2119
  %204 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %203, i32 0, i32 12, !dbg !2121
  %205 = load i8*, i8** %204, align 8, !dbg !2121
  %206 = getelementptr inbounds i8, i8* %205, i64 0, !dbg !2119
  %207 = load i8, i8* %206, align 1, !dbg !2119
  %208 = sext i8 %207 to i32, !dbg !2119
  %209 = icmp ne i32 %208, 0, !dbg !2122
  br i1 %209, label %210, label %217, !dbg !2123

; <label>:210:                                    ; preds = %202
  %211 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2124
  %212 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %211, i32 0, i32 12, !dbg !2125
  %213 = load i8*, i8** %212, align 8, !dbg !2125
  %214 = call noalias i8* @g_strdup(i8* %213), !dbg !2126
  %215 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !2127
  %216 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %215, i32 0, i32 22, !dbg !2128
  store i8* %214, i8** %216, align 8, !dbg !2129
  br label %217, !dbg !2127

; <label>:217:                                    ; preds = %210, %202, %197, %177
  %218 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !2130
  %219 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %218, i32 0, i32 23, !dbg !2132
  %220 = load i8*, i8** %219, align 8, !dbg !2132
  %221 = icmp eq i8* %220, null, !dbg !2133
  br i1 %221, label %222, label %242, !dbg !2134

; <label>:222:                                    ; preds = %217
  %223 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2135
  %224 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %223, i32 0, i32 13, !dbg !2137
  %225 = load i8*, i8** %224, align 8, !dbg !2137
  %226 = icmp ne i8* %225, null, !dbg !2138
  br i1 %226, label %227, label %242, !dbg !2139

; <label>:227:                                    ; preds = %222
  %228 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2140
  %229 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %228, i32 0, i32 13, !dbg !2142
  %230 = load i8*, i8** %229, align 8, !dbg !2142
  %231 = getelementptr inbounds i8, i8* %230, i64 0, !dbg !2140
  %232 = load i8, i8* %231, align 1, !dbg !2140
  %233 = sext i8 %232 to i32, !dbg !2140
  %234 = icmp ne i32 %233, 0, !dbg !2143
  br i1 %234, label %235, label %242, !dbg !2144

; <label>:235:                                    ; preds = %227
  %236 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2145
  %237 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %236, i32 0, i32 13, !dbg !2146
  %238 = load i8*, i8** %237, align 8, !dbg !2146
  %239 = call noalias i8* @g_strdup(i8* %238), !dbg !2147
  %240 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !2148
  %241 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %240, i32 0, i32 23, !dbg !2149
  store i8* %239, i8** %241, align 8, !dbg !2150
  br label %242, !dbg !2148

; <label>:242:                                    ; preds = %235, %227, %222, %217
  %243 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !2151
  %244 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %243, i32 0, i32 24, !dbg !2153
  %245 = load i8*, i8** %244, align 8, !dbg !2153
  %246 = icmp eq i8* %245, null, !dbg !2154
  br i1 %246, label %247, label %267, !dbg !2155

; <label>:247:                                    ; preds = %242
  %248 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2156
  %249 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %248, i32 0, i32 14, !dbg !2158
  %250 = load i8*, i8** %249, align 8, !dbg !2158
  %251 = icmp ne i8* %250, null, !dbg !2159
  br i1 %251, label %252, label %267, !dbg !2160

; <label>:252:                                    ; preds = %247
  %253 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2161
  %254 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %253, i32 0, i32 14, !dbg !2163
  %255 = load i8*, i8** %254, align 8, !dbg !2163
  %256 = getelementptr inbounds i8, i8* %255, i64 0, !dbg !2161
  %257 = load i8, i8* %256, align 1, !dbg !2161
  %258 = sext i8 %257 to i32, !dbg !2161
  %259 = icmp ne i32 %258, 0, !dbg !2164
  br i1 %259, label %260, label %267, !dbg !2165

; <label>:260:                                    ; preds = %252
  %261 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2166
  %262 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %261, i32 0, i32 14, !dbg !2167
  %263 = load i8*, i8** %262, align 8, !dbg !2167
  %264 = call noalias i8* @g_strdup(i8* %263), !dbg !2168
  %265 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !2169
  %266 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %265, i32 0, i32 24, !dbg !2170
  store i8* %264, i8** %266, align 8, !dbg !2171
  br label %267, !dbg !2169

; <label>:267:                                    ; preds = %260, %252, %247, %242
  %268 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !2172
  %269 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %268, i32 0, i32 25, !dbg !2174
  %270 = load i8*, i8** %269, align 8, !dbg !2174
  %271 = icmp eq i8* %270, null, !dbg !2175
  br i1 %271, label %272, label %292, !dbg !2176

; <label>:272:                                    ; preds = %267
  %273 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2177
  %274 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %273, i32 0, i32 15, !dbg !2179
  %275 = load i8*, i8** %274, align 8, !dbg !2179
  %276 = icmp ne i8* %275, null, !dbg !2180
  br i1 %276, label %277, label %292, !dbg !2181

; <label>:277:                                    ; preds = %272
  %278 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2182
  %279 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %278, i32 0, i32 15, !dbg !2184
  %280 = load i8*, i8** %279, align 8, !dbg !2184
  %281 = getelementptr inbounds i8, i8* %280, i64 0, !dbg !2182
  %282 = load i8, i8* %281, align 1, !dbg !2182
  %283 = sext i8 %282 to i32, !dbg !2182
  %284 = icmp ne i32 %283, 0, !dbg !2185
  br i1 %284, label %285, label %292, !dbg !2186

; <label>:285:                                    ; preds = %277
  %286 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2187
  %287 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %286, i32 0, i32 15, !dbg !2188
  %288 = load i8*, i8** %287, align 8, !dbg !2188
  %289 = call noalias i8* @g_strdup(i8* %288), !dbg !2189
  %290 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !2190
  %291 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %290, i32 0, i32 25, !dbg !2191
  store i8* %289, i8** %291, align 8, !dbg !2192
  br label %292, !dbg !2190

; <label>:292:                                    ; preds = %285, %277, %272, %267
  %293 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !2193
  %294 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %293, i32 0, i32 26, !dbg !2195
  %295 = load i8*, i8** %294, align 8, !dbg !2195
  %296 = icmp eq i8* %295, null, !dbg !2196
  br i1 %296, label %297, label %317, !dbg !2197

; <label>:297:                                    ; preds = %292
  %298 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2198
  %299 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %298, i32 0, i32 16, !dbg !2200
  %300 = load i8*, i8** %299, align 8, !dbg !2200
  %301 = icmp ne i8* %300, null, !dbg !2201
  br i1 %301, label %302, label %317, !dbg !2202

; <label>:302:                                    ; preds = %297
  %303 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2203
  %304 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %303, i32 0, i32 16, !dbg !2205
  %305 = load i8*, i8** %304, align 8, !dbg !2205
  %306 = getelementptr inbounds i8, i8* %305, i64 0, !dbg !2203
  %307 = load i8, i8* %306, align 1, !dbg !2203
  %308 = sext i8 %307 to i32, !dbg !2203
  %309 = icmp ne i32 %308, 0, !dbg !2206
  br i1 %309, label %310, label %317, !dbg !2207

; <label>:310:                                    ; preds = %302
  %311 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2208
  %312 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %311, i32 0, i32 16, !dbg !2209
  %313 = load i8*, i8** %312, align 8, !dbg !2209
  %314 = call noalias i8* @g_strdup(i8* %313), !dbg !2210
  %315 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !2211
  %316 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %315, i32 0, i32 26, !dbg !2212
  store i8* %314, i8** %316, align 8, !dbg !2213
  br label %317, !dbg !2211

; <label>:317:                                    ; preds = %310, %302, %297, %292
  %318 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !2214
  %319 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2215
  call void @server_setup_fill_reconn(%struct._SERVER_CONNECT_REC* %318, %struct._SERVER_SETUP_REC* %319), !dbg !2216
  %320 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !2217
  %321 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2218
  %322 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i32 0, i32 0), i32 2, %struct._SERVER_CONNECT_REC* %320, %struct._SERVER_SETUP_REC* %321), !dbg !2219
  br label %323, !dbg !2220

; <label>:323:                                    ; preds = %317, %26, %14
  ret void, !dbg !2221
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #5

declare i8* @settings_get_str(i8*) #2

declare i32 @settings_get_bool(i8*) #2

declare i32 @settings_get_int(i8*) #2

declare %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC*, i8*, i32) #2

declare %struct._GSList* @g_slist_find_custom(%struct._GSList*, i8*, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @compare_server_setup(%struct._CONFIG_NODE*, %struct._SERVER_SETUP_REC*) #0 !dbg !2223 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._CONFIG_NODE*, align 8
  %5 = alloca %struct._SERVER_SETUP_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct._CONFIG_NODE* %0, %struct._CONFIG_NODE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !2226, metadata !396), !dbg !2227
  store %struct._SERVER_SETUP_REC* %1, %struct._SERVER_SETUP_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_SETUP_REC** %5, metadata !2228, metadata !396), !dbg !2229
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2230, metadata !396), !dbg !2231
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2232, metadata !396), !dbg !2233
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2234, metadata !396), !dbg !2235
  %9 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !2236
  %10 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), i8* null), !dbg !2237
  store i8* %10, i8** %6, align 8, !dbg !2238
  %11 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !2239
  %12 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i8* null), !dbg !2240
  store i8* %12, i8** %7, align 8, !dbg !2241
  %13 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !2242
  %14 = call i32 @config_node_get_int(%struct._CONFIG_NODE* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i32 0), !dbg !2243
  store i32 %14, i32* %8, align 4, !dbg !2244
  %15 = load i8*, i8** %6, align 8, !dbg !2245
  %16 = icmp eq i8* %15, null, !dbg !2247
  br i1 %16, label %20, label %17, !dbg !2248

; <label>:17:                                     ; preds = %2
  %18 = load i8*, i8** %7, align 8, !dbg !2249
  %19 = icmp eq i8* %18, null, !dbg !2251
  br i1 %19, label %20, label %21, !dbg !2252

; <label>:20:                                     ; preds = %17, %2
  store i32 0, i32* %3, align 4, !dbg !2253
  br label %43, !dbg !2253

; <label>:21:                                     ; preds = %17
  %22 = load i8*, i8** %6, align 8, !dbg !2255
  %23 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %5, align 8, !dbg !2257
  %24 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %23, i32 0, i32 4, !dbg !2258
  %25 = load i8*, i8** %24, align 8, !dbg !2258
  %26 = call i32 @g_ascii_strcasecmp(i8* %22, i8* %25), !dbg !2259
  %27 = icmp ne i32 %26, 0, !dbg !2260
  br i1 %27, label %41, label %28, !dbg !2261

; <label>:28:                                     ; preds = %21
  %29 = load i8*, i8** %7, align 8, !dbg !2262
  %30 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %5, align 8, !dbg !2263
  %31 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %30, i32 0, i32 2, !dbg !2264
  %32 = load i8*, i8** %31, align 8, !dbg !2264
  %33 = call i32 @g_ascii_strcasecmp(i8* %29, i8* %32), !dbg !2265
  %34 = icmp ne i32 %33, 0, !dbg !2266
  br i1 %34, label %41, label %35, !dbg !2267

; <label>:35:                                     ; preds = %28
  %36 = load i32, i32* %8, align 4, !dbg !2268
  %37 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %5, align 8, !dbg !2269
  %38 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %37, i32 0, i32 5, !dbg !2270
  %39 = load i32, i32* %38, align 8, !dbg !2270
  %40 = icmp ne i32 %36, %39, !dbg !2271
  br i1 %40, label %41, label %42, !dbg !2272

; <label>:41:                                     ; preds = %35, %28, %21
  store i32 1, i32* %3, align 4, !dbg !2274
  br label %43, !dbg !2274

; <label>:42:                                     ; preds = %35
  store i32 0, i32* %3, align 4, !dbg !2276
  br label %43, !dbg !2276

; <label>:43:                                     ; preds = %42, %41, %20
  %44 = load i32, i32* %3, align 4, !dbg !2277
  ret i32 %44, !dbg !2277
}

declare %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32) #2

declare void @config_node_clear(%struct._CONFIG_REC*, %struct._CONFIG_NODE*) #2

declare void @config_node_set_str(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i8*) #2

declare void @config_node_set_int(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32) #2

declare void @config_node_set_bool(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32) #2

declare i8* @config_node_get_str(%struct._CONFIG_NODE*, i8*, i8*) #2

declare i32 @config_node_get_int(%struct._CONFIG_NODE*, i8*, i32) #2

declare void @config_node_remove(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, %struct._CONFIG_NODE*) #2

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

declare i32 @g_strcmp0(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @get_source_host_ip() #0 !dbg !2278 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct._IPADDR, align 4
  %3 = alloca %struct._IPADDR, align 4
  call void @llvm.dbg.declare(metadata i8** %1, metadata !2279, metadata !396), !dbg !2280
  call void @llvm.dbg.declare(metadata %struct._IPADDR* %2, metadata !2281, metadata !396), !dbg !2282
  call void @llvm.dbg.declare(metadata %struct._IPADDR* %3, metadata !2283, metadata !396), !dbg !2284
  %4 = load i32, i32* @source_host_ok, align 4, !dbg !2285
  %5 = icmp ne i32 %4, 0, !dbg !2285
  br i1 %5, label %6, label %7, !dbg !2287

; <label>:6:                                      ; preds = %0
  br label %40, !dbg !2288

; <label>:7:                                      ; preds = %0
  %8 = call i8* @settings_get_str(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0)), !dbg !2289
  store i8* %8, i8** %1, align 8, !dbg !2290
  %9 = load i8*, i8** %1, align 8, !dbg !2291
  %10 = load i8, i8* %9, align 1, !dbg !2292
  %11 = sext i8 %10 to i32, !dbg !2292
  %12 = icmp ne i32 %11, 0, !dbg !2293
  br i1 %12, label %13, label %17, !dbg !2294

; <label>:13:                                     ; preds = %7
  %14 = load i8*, i8** %1, align 8, !dbg !2295
  %15 = call i32 @net_gethostbyname(i8* %14, %struct._IPADDR* %2, %struct._IPADDR* %3), !dbg !2296
  %16 = icmp eq i32 %15, 0, !dbg !2297
  br label %17

; <label>:17:                                     ; preds = %13, %7
  %18 = phi i1 [ false, %7 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32, !dbg !2298
  store i32 %19, i32* @source_host_ok, align 4, !dbg !2300
  %20 = load i32, i32* @source_host_ok, align 4, !dbg !2301
  %21 = icmp ne i32 %20, 0, !dbg !2301
  br i1 %21, label %22, label %23, !dbg !2303

; <label>:22:                                     ; preds = %17
  call void @save_ips(%struct._IPADDR* %2, %struct._IPADDR* %3, %struct._IPADDR** @source_host_ip4, %struct._IPADDR** @source_host_ip6), !dbg !2304
  br label %40, !dbg !2304

; <label>:23:                                     ; preds = %17
  br label %24, !dbg !2305, !llvm.loop !2307

; <label>:24:                                     ; preds = %23
  %25 = load %struct._IPADDR*, %struct._IPADDR** @source_host_ip4, align 8, !dbg !2308
  %26 = icmp ne %struct._IPADDR* %25, null, !dbg !2308
  br i1 %26, label %27, label %30, !dbg !2308

; <label>:27:                                     ; preds = %24
  %28 = load %struct._IPADDR*, %struct._IPADDR** @source_host_ip4, align 8, !dbg !2312
  %29 = bitcast %struct._IPADDR* %28 to i8*, !dbg !2312
  call void @g_free(i8* %29), !dbg !2315
  store %struct._IPADDR* null, %struct._IPADDR** @source_host_ip4, align 8, !dbg !2316
  br label %30, !dbg !2317

; <label>:30:                                     ; preds = %27, %24
  br label %31, !dbg !2318

; <label>:31:                                     ; preds = %30
  br label %32, !dbg !2320, !llvm.loop !2321

; <label>:32:                                     ; preds = %31
  %33 = load %struct._IPADDR*, %struct._IPADDR** @source_host_ip6, align 8, !dbg !2322
  %34 = icmp ne %struct._IPADDR* %33, null, !dbg !2322
  br i1 %34, label %35, label %38, !dbg !2322

; <label>:35:                                     ; preds = %32
  %36 = load %struct._IPADDR*, %struct._IPADDR** @source_host_ip6, align 8, !dbg !2326
  %37 = bitcast %struct._IPADDR* %36 to i8*, !dbg !2326
  call void @g_free(i8* %37), !dbg !2329
  store %struct._IPADDR* null, %struct._IPADDR** @source_host_ip6, align 8, !dbg !2330
  br label %38, !dbg !2331

; <label>:38:                                     ; preds = %35, %32
  br label %39, !dbg !2332

; <label>:39:                                     ; preds = %38
  br label %40

; <label>:40:                                     ; preds = %6, %39, %22
  ret void, !dbg !2334
}

declare %struct._GSList* @config_node_first(%struct._GSList*) #2

; Function Attrs: nounwind uwtable
define internal %struct._SERVER_SETUP_REC* @server_setup_read(%struct._CONFIG_NODE*) #0 !dbg !2335 {
  %2 = alloca %struct._SERVER_SETUP_REC*, align 8
  %3 = alloca %struct._CONFIG_NODE*, align 8
  %4 = alloca %struct._SERVER_SETUP_REC*, align 8
  %5 = alloca %struct._CHATNET_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct._CONFIG_NODE* %0, %struct._CONFIG_NODE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %3, metadata !2338, metadata !396), !dbg !2339
  call void @llvm.dbg.declare(metadata %struct._SERVER_SETUP_REC** %4, metadata !2340, metadata !396), !dbg !2341
  call void @llvm.dbg.declare(metadata %struct._CHATNET_REC** %5, metadata !2342, metadata !396), !dbg !2343
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2344, metadata !396), !dbg !2345
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2346, metadata !396), !dbg !2347
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2348, metadata !396), !dbg !2349
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2350, metadata !396), !dbg !2351
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2352, metadata !396), !dbg !2353
  store i8* null, i8** %10, align 8, !dbg !2353
  br label %11, !dbg !2354, !llvm.loop !2355

; <label>:11:                                     ; preds = %1
  %12 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !2356
  %13 = icmp ne %struct._CONFIG_NODE* %12, null, !dbg !2360
  br i1 %13, label %14, label %15, !dbg !2356

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !2361

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.server_setup_read, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i32 0, i32 0)), !dbg !2364
  store %struct._SERVER_SETUP_REC* null, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !2367
  br label %339, !dbg !2367

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !2368

; <label>:17:                                     ; preds = %16
  %18 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !2370
  %19 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), i8* null), !dbg !2371
  store i8* %19, i8** %6, align 8, !dbg !2372
  %20 = load i8*, i8** %6, align 8, !dbg !2373
  %21 = icmp eq i8* %20, null, !dbg !2375
  br i1 %21, label %22, label %23, !dbg !2376

; <label>:22:                                     ; preds = %17
  store %struct._SERVER_SETUP_REC* null, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !2377
  br label %339, !dbg !2377

; <label>:23:                                     ; preds = %17
  %24 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !2378
  %25 = call i32 @config_node_get_int(%struct._CONFIG_NODE* %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i32 0), !dbg !2379
  store i32 %25, i32* %9, align 4, !dbg !2380
  %26 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !2381
  %27 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i8* null), !dbg !2382
  store i8* %27, i8** %7, align 8, !dbg !2383
  %28 = load i8*, i8** %6, align 8, !dbg !2384
  %29 = load i32, i32* %9, align 4, !dbg !2386
  %30 = load i8*, i8** %7, align 8, !dbg !2387
  %31 = call %struct._SERVER_SETUP_REC* @server_setup_find(i8* %28, i32 %29, i8* %30), !dbg !2388
  %32 = icmp ne %struct._SERVER_SETUP_REC* %31, null, !dbg !2389
  br i1 %32, label %33, label %34, !dbg !2390

; <label>:33:                                     ; preds = %23
  store %struct._SERVER_SETUP_REC* null, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !2391
  br label %339, !dbg !2391

; <label>:34:                                     ; preds = %23
  store %struct._SERVER_SETUP_REC* null, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2393
  %35 = load i8*, i8** %7, align 8, !dbg !2394
  %36 = icmp eq i8* %35, null, !dbg !2395
  br i1 %36, label %37, label %38, !dbg !2394

; <label>:37:                                     ; preds = %34
  br label %41, !dbg !2396

; <label>:38:                                     ; preds = %34
  %39 = load i8*, i8** %7, align 8, !dbg !2398
  %40 = call %struct._CHATNET_REC* @chatnet_find(i8* %39), !dbg !2400
  br label %41, !dbg !2401

; <label>:41:                                     ; preds = %38, %37
  %42 = phi %struct._CHATNET_REC* [ null, %37 ], [ %40, %38 ], !dbg !2402
  store %struct._CHATNET_REC* %42, %struct._CHATNET_REC** %5, align 8, !dbg !2404
  %43 = load %struct._CHATNET_REC*, %struct._CHATNET_REC** %5, align 8, !dbg !2405
  %44 = icmp eq %struct._CHATNET_REC* %43, null, !dbg !2407
  br i1 %44, label %45, label %63, !dbg !2408

; <label>:45:                                     ; preds = %41
  %46 = load i8*, i8** %7, align 8, !dbg !2409
  %47 = icmp ne i8* %46, null, !dbg !2411
  br i1 %47, label %48, label %63, !dbg !2412

; <label>:48:                                     ; preds = %45
  %49 = call %struct._CHAT_PROTOCOL_REC* @chat_protocol_get_default(), !dbg !2413
  %50 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %49, i32 0, i32 5, !dbg !2415
  %51 = load %struct._CHATNET_REC* ()*, %struct._CHATNET_REC* ()** %50, align 8, !dbg !2415
  %52 = call %struct._CHATNET_REC* %51(), !dbg !2416
  store %struct._CHATNET_REC* %52, %struct._CHATNET_REC** %5, align 8, !dbg !2418
  %53 = call %struct._CHAT_PROTOCOL_REC* @chat_protocol_get_default(), !dbg !2419
  %54 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %53, i32 0, i32 0, !dbg !2420
  %55 = load i32, i32* %54, align 8, !dbg !2420
  %56 = load %struct._CHATNET_REC*, %struct._CHATNET_REC** %5, align 8, !dbg !2421
  %57 = getelementptr inbounds %struct._CHATNET_REC, %struct._CHATNET_REC* %56, i32 0, i32 1, !dbg !2422
  store i32 %55, i32* %57, align 4, !dbg !2423
  %58 = load i8*, i8** %7, align 8, !dbg !2424
  %59 = call noalias i8* @g_strdup(i8* %58), !dbg !2425
  %60 = load %struct._CHATNET_REC*, %struct._CHATNET_REC** %5, align 8, !dbg !2426
  %61 = getelementptr inbounds %struct._CHATNET_REC, %struct._CHATNET_REC* %60, i32 0, i32 2, !dbg !2427
  store i8* %59, i8** %61, align 8, !dbg !2428
  %62 = load %struct._CHATNET_REC*, %struct._CHATNET_REC** %5, align 8, !dbg !2429
  call void @chatnet_create(%struct._CHATNET_REC* %62), !dbg !2430
  br label %63, !dbg !2431

; <label>:63:                                     ; preds = %48, %45, %41
  %64 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !2432
  %65 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0)), !dbg !2433
  store i8* %65, i8** %8, align 8, !dbg !2434
  %66 = load %struct._CHATNET_REC*, %struct._CHATNET_REC** %5, align 8, !dbg !2435
  %67 = icmp eq %struct._CHATNET_REC* %66, null, !dbg !2436
  br i1 %67, label %68, label %70, !dbg !2437

; <label>:68:                                     ; preds = %63
  %69 = call %struct._CHAT_PROTOCOL_REC* @chat_protocol_get_default(), !dbg !2438
  br label %75, !dbg !2438

; <label>:70:                                     ; preds = %63
  %71 = load %struct._CHATNET_REC*, %struct._CHATNET_REC** %5, align 8, !dbg !2439
  %72 = getelementptr inbounds %struct._CHATNET_REC, %struct._CHATNET_REC* %71, i32 0, i32 1, !dbg !2440
  %73 = load i32, i32* %72, align 4, !dbg !2440
  %74 = call %struct._CHAT_PROTOCOL_REC* @chat_protocol_find_id(i32 %73), !dbg !2441
  br label %75, !dbg !2442

; <label>:75:                                     ; preds = %70, %68
  %76 = phi %struct._CHAT_PROTOCOL_REC* [ %69, %68 ], [ %74, %70 ], !dbg !2443
  %77 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %76, i32 0, i32 6, !dbg !2444
  %78 = load %struct._SERVER_SETUP_REC* ()*, %struct._SERVER_SETUP_REC* ()** %77, align 8, !dbg !2444
  %79 = call %struct._SERVER_SETUP_REC* %78(), !dbg !2445
  store %struct._SERVER_SETUP_REC* %79, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2446
  %80 = call i32 @module_get_uniq_id(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 0), !dbg !2447
  %81 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2448
  %82 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %81, i32 0, i32 0, !dbg !2449
  store i32 %80, i32* %82, align 8, !dbg !2450
  %83 = load %struct._CHATNET_REC*, %struct._CHATNET_REC** %5, align 8, !dbg !2451
  %84 = icmp eq %struct._CHATNET_REC* %83, null, !dbg !2452
  br i1 %84, label %85, label %87, !dbg !2453

; <label>:85:                                     ; preds = %75
  %86 = call %struct._CHAT_PROTOCOL_REC* @chat_protocol_get_default(), !dbg !2454
  br label %92, !dbg !2454

; <label>:87:                                     ; preds = %75
  %88 = load %struct._CHATNET_REC*, %struct._CHATNET_REC** %5, align 8, !dbg !2455
  %89 = getelementptr inbounds %struct._CHATNET_REC, %struct._CHATNET_REC* %88, i32 0, i32 1, !dbg !2456
  %90 = load i32, i32* %89, align 4, !dbg !2456
  %91 = call %struct._CHAT_PROTOCOL_REC* @chat_protocol_find_id(i32 %90), !dbg !2457
  br label %92, !dbg !2458

; <label>:92:                                     ; preds = %87, %85
  %93 = phi %struct._CHAT_PROTOCOL_REC* [ %86, %85 ], [ %91, %87 ], !dbg !2459
  %94 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %93, i32 0, i32 0, !dbg !2460
  %95 = load i32, i32* %94, align 8, !dbg !2460
  %96 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2461
  %97 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %96, i32 0, i32 1, !dbg !2462
  store i32 %95, i32* %97, align 4, !dbg !2463
  %98 = load %struct._CHATNET_REC*, %struct._CHATNET_REC** %5, align 8, !dbg !2464
  %99 = icmp eq %struct._CHATNET_REC* %98, null, !dbg !2465
  br i1 %99, label %100, label %101, !dbg !2464

; <label>:100:                                    ; preds = %92
  br label %106, !dbg !2466

; <label>:101:                                    ; preds = %92
  %102 = load %struct._CHATNET_REC*, %struct._CHATNET_REC** %5, align 8, !dbg !2467
  %103 = getelementptr inbounds %struct._CHATNET_REC, %struct._CHATNET_REC* %102, i32 0, i32 2, !dbg !2468
  %104 = load i8*, i8** %103, align 8, !dbg !2468
  %105 = call noalias i8* @g_strdup(i8* %104), !dbg !2469
  br label %106, !dbg !2470

; <label>:106:                                    ; preds = %101, %100
  %107 = phi i8* [ null, %100 ], [ %105, %101 ], !dbg !2471
  %108 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2472
  %109 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %108, i32 0, i32 2, !dbg !2473
  store i8* %107, i8** %109, align 8, !dbg !2474
  %110 = load i8*, i8** %8, align 8, !dbg !2475
  %111 = call i32 @g_ascii_strcasecmp(i8* %110, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0)), !dbg !2476
  %112 = icmp eq i32 %111, 0, !dbg !2477
  br i1 %112, label %113, label %114, !dbg !2476

; <label>:113:                                    ; preds = %106
  br label %119, !dbg !2478

; <label>:114:                                    ; preds = %106
  %115 = load i8*, i8** %8, align 8, !dbg !2479
  %116 = call i32 @g_ascii_strcasecmp(i8* %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0)), !dbg !2480
  %117 = icmp eq i32 %116, 0, !dbg !2481
  %118 = select i1 %117, i32 2, i32 0, !dbg !2480
  br label %119, !dbg !2482

; <label>:119:                                    ; preds = %114, %113
  %120 = phi i32 [ 10, %113 ], [ %118, %114 ], !dbg !2483
  %121 = trunc i32 %120 to i16, !dbg !2483
  %122 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2484
  %123 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %122, i32 0, i32 3, !dbg !2485
  store i16 %121, i16* %123, align 8, !dbg !2486
  %124 = load i8*, i8** %6, align 8, !dbg !2487
  %125 = call noalias i8* @g_strdup(i8* %124), !dbg !2488
  %126 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2489
  %127 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %126, i32 0, i32 4, !dbg !2490
  store i8* %125, i8** %127, align 8, !dbg !2491
  %128 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !2492
  %129 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0), i8* null), !dbg !2493
  %130 = call noalias i8* @g_strdup(i8* %129), !dbg !2494
  %131 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2495
  %132 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %131, i32 0, i32 6, !dbg !2496
  store i8* %130, i8** %132, align 8, !dbg !2497
  %133 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !2498
  %134 = call i32 @config_node_get_bool(%struct._CONFIG_NODE* %133, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i32 0), !dbg !2499
  %135 = icmp ne i32 %134, 0, !dbg !2499
  br i1 %135, label %140, label %136, !dbg !2500

; <label>:136:                                    ; preds = %119
  %137 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !2501
  %138 = call i32 @config_node_get_bool(%struct._CONFIG_NODE* %137, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0), i32 0), !dbg !2502
  %139 = icmp ne i32 %138, 0, !dbg !2503
  br label %140, !dbg !2503

; <label>:140:                                    ; preds = %136, %119
  %141 = phi i1 [ true, %119 ], [ %139, %136 ]
  %142 = zext i1 %141 to i32, !dbg !2504
  %143 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2505
  %144 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %143, i32 0, i32 21, !dbg !2506
  %145 = trunc i32 %142 to i8, !dbg !2507
  %146 = load i8, i8* %144, align 8, !dbg !2507
  %147 = and i8 %145, 1, !dbg !2507
  %148 = shl i8 %147, 5, !dbg !2507
  %149 = and i8 %146, -33, !dbg !2507
  %150 = or i8 %149, %148, !dbg !2507
  store i8 %150, i8* %144, align 8, !dbg !2507
  %151 = zext i8 %147 to i32, !dbg !2507
  %152 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !2508
  %153 = call i32 @config_node_get_bool(%struct._CONFIG_NODE* %152, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0), i32 0), !dbg !2509
  %154 = icmp ne i32 %153, 0, !dbg !2509
  br i1 %154, label %159, label %155, !dbg !2510

; <label>:155:                                    ; preds = %140
  %156 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !2511
  %157 = call i32 @config_node_get_bool(%struct._CONFIG_NODE* %156, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.59, i32 0, i32 0), i32 0), !dbg !2512
  %158 = icmp ne i32 %157, 0, !dbg !2513
  br label %159, !dbg !2513

; <label>:159:                                    ; preds = %155, %140
  %160 = phi i1 [ true, %140 ], [ %158, %155 ]
  %161 = zext i1 %160 to i32, !dbg !2514
  %162 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2515
  %163 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %162, i32 0, i32 21, !dbg !2516
  %164 = trunc i32 %161 to i8, !dbg !2517
  %165 = load i8, i8* %163, align 8, !dbg !2517
  %166 = and i8 %164, 1, !dbg !2517
  %167 = shl i8 %166, 6, !dbg !2517
  %168 = and i8 %165, -65, !dbg !2517
  %169 = or i8 %168, %167, !dbg !2517
  store i8 %169, i8* %163, align 8, !dbg !2517
  %170 = zext i8 %166 to i32, !dbg !2517
  %171 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !2518
  %172 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %171, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), i8* null), !dbg !2519
  store i8* %172, i8** %10, align 8, !dbg !2520
  %173 = load i8*, i8** %10, align 8, !dbg !2521
  %174 = icmp eq i8* %173, null, !dbg !2523
  br i1 %174, label %175, label %178, !dbg !2524

; <label>:175:                                    ; preds = %159
  %176 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !2525
  %177 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %176, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0), i8* null), !dbg !2526
  store i8* %177, i8** %10, align 8, !dbg !2527
  br label %178, !dbg !2528

; <label>:178:                                    ; preds = %175, %159
  %179 = load i8*, i8** %10, align 8, !dbg !2529
  %180 = call noalias i8* @g_strdup(i8* %179), !dbg !2530
  %181 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2531
  %182 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %181, i32 0, i32 9, !dbg !2532
  store i8* %180, i8** %182, align 8, !dbg !2533
  %183 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !2534
  %184 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %183, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0), i8* null), !dbg !2535
  store i8* %184, i8** %10, align 8, !dbg !2536
  %185 = load i8*, i8** %10, align 8, !dbg !2537
  %186 = icmp eq i8* %185, null, !dbg !2539
  br i1 %186, label %187, label %190, !dbg !2540

; <label>:187:                                    ; preds = %178
  %188 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !2541
  %189 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %188, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i32 0, i32 0), i8* null), !dbg !2542
  store i8* %189, i8** %10, align 8, !dbg !2543
  br label %190, !dbg !2544

; <label>:190:                                    ; preds = %187, %178
  %191 = load i8*, i8** %10, align 8, !dbg !2545
  %192 = call noalias i8* @g_strdup(i8* %191), !dbg !2546
  %193 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2547
  %194 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %193, i32 0, i32 10, !dbg !2548
  store i8* %192, i8** %194, align 8, !dbg !2549
  %195 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !2550
  %196 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %195, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i8* null), !dbg !2551
  store i8* %196, i8** %10, align 8, !dbg !2552
  %197 = load i8*, i8** %10, align 8, !dbg !2553
  %198 = icmp eq i8* %197, null, !dbg !2555
  br i1 %198, label %199, label %202, !dbg !2556

; <label>:199:                                    ; preds = %190
  %200 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !2557
  %201 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %200, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i32 0, i32 0), i8* null), !dbg !2558
  store i8* %201, i8** %10, align 8, !dbg !2559
  br label %202, !dbg !2560

; <label>:202:                                    ; preds = %199, %190
  %203 = load i8*, i8** %10, align 8, !dbg !2561
  %204 = call noalias i8* @g_strdup(i8* %203), !dbg !2562
  %205 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2563
  %206 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %205, i32 0, i32 11, !dbg !2564
  store i8* %204, i8** %206, align 8, !dbg !2565
  %207 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !2566
  %208 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %207, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0), i8* null), !dbg !2567
  store i8* %208, i8** %10, align 8, !dbg !2568
  %209 = load i8*, i8** %10, align 8, !dbg !2569
  %210 = icmp eq i8* %209, null, !dbg !2571
  br i1 %210, label %211, label %214, !dbg !2572

; <label>:211:                                    ; preds = %202
  %212 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !2573
  %213 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %212, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0), i8* null), !dbg !2574
  store i8* %213, i8** %10, align 8, !dbg !2575
  br label %214, !dbg !2576

; <label>:214:                                    ; preds = %211, %202
  %215 = load i8*, i8** %10, align 8, !dbg !2577
  %216 = call noalias i8* @g_strdup(i8* %215), !dbg !2578
  %217 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2579
  %218 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %217, i32 0, i32 12, !dbg !2580
  store i8* %216, i8** %218, align 8, !dbg !2581
  %219 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !2582
  %220 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %219, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i32 0, i32 0), i8* null), !dbg !2583
  store i8* %220, i8** %10, align 8, !dbg !2584
  %221 = load i8*, i8** %10, align 8, !dbg !2585
  %222 = icmp eq i8* %221, null, !dbg !2587
  br i1 %222, label %223, label %226, !dbg !2588

; <label>:223:                                    ; preds = %214
  %224 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !2589
  %225 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %224, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i32 0, i32 0), i8* null), !dbg !2590
  store i8* %225, i8** %10, align 8, !dbg !2591
  br label %226, !dbg !2592

; <label>:226:                                    ; preds = %223, %214
  %227 = load i8*, i8** %10, align 8, !dbg !2593
  %228 = call noalias i8* @g_strdup(i8* %227), !dbg !2594
  %229 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2595
  %230 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %229, i32 0, i32 13, !dbg !2596
  store i8* %228, i8** %230, align 8, !dbg !2597
  %231 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !2598
  %232 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %231, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i32 0, i32 0), i8* null), !dbg !2599
  store i8* %232, i8** %10, align 8, !dbg !2600
  %233 = load i8*, i8** %10, align 8, !dbg !2601
  %234 = icmp eq i8* %233, null, !dbg !2603
  br i1 %234, label %235, label %238, !dbg !2604

; <label>:235:                                    ; preds = %226
  %236 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !2605
  %237 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %236, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.65, i32 0, i32 0), i8* null), !dbg !2606
  store i8* %237, i8** %10, align 8, !dbg !2607
  br label %238, !dbg !2608

; <label>:238:                                    ; preds = %235, %226
  %239 = load i8*, i8** %10, align 8, !dbg !2609
  %240 = call noalias i8* @g_strdup(i8* %239), !dbg !2610
  %241 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2611
  %242 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %241, i32 0, i32 14, !dbg !2612
  store i8* %240, i8** %242, align 8, !dbg !2613
  %243 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !2614
  %244 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %243, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i32 0, i32 0), i8* null), !dbg !2615
  store i8* %244, i8** %10, align 8, !dbg !2616
  %245 = load i8*, i8** %10, align 8, !dbg !2617
  %246 = icmp eq i8* %245, null, !dbg !2619
  br i1 %246, label %247, label %250, !dbg !2620

; <label>:247:                                    ; preds = %238
  %248 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !2621
  %249 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %248, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.66, i32 0, i32 0), i8* null), !dbg !2622
  store i8* %249, i8** %10, align 8, !dbg !2623
  br label %250, !dbg !2624

; <label>:250:                                    ; preds = %247, %238
  %251 = load i8*, i8** %10, align 8, !dbg !2625
  %252 = call noalias i8* @g_strdup(i8* %251), !dbg !2626
  %253 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2627
  %254 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %253, i32 0, i32 15, !dbg !2628
  store i8* %252, i8** %254, align 8, !dbg !2629
  %255 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !2630
  %256 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %255, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.47, i32 0, i32 0), i8* null), !dbg !2631
  store i8* %256, i8** %10, align 8, !dbg !2632
  %257 = load i8*, i8** %10, align 8, !dbg !2633
  %258 = icmp eq i8* %257, null, !dbg !2635
  br i1 %258, label %259, label %262, !dbg !2636

; <label>:259:                                    ; preds = %250
  %260 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !2637
  %261 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %260, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.67, i32 0, i32 0), i8* null), !dbg !2638
  store i8* %261, i8** %10, align 8, !dbg !2639
  br label %262, !dbg !2640

; <label>:262:                                    ; preds = %259, %250
  %263 = load i8*, i8** %10, align 8, !dbg !2641
  %264 = call noalias i8* @g_strdup(i8* %263), !dbg !2642
  %265 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2643
  %266 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %265, i32 0, i32 16, !dbg !2644
  store i8* %264, i8** %266, align 8, !dbg !2645
  %267 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2646
  %268 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %267, i32 0, i32 12, !dbg !2648
  %269 = load i8*, i8** %268, align 8, !dbg !2648
  %270 = icmp ne i8* %269, null, !dbg !2646
  br i1 %270, label %276, label %271, !dbg !2649

; <label>:271:                                    ; preds = %262
  %272 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2650
  %273 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %272, i32 0, i32 13, !dbg !2652
  %274 = load i8*, i8** %273, align 8, !dbg !2652
  %275 = icmp ne i8* %274, null, !dbg !2650
  br i1 %275, label %276, label %282, !dbg !2653

; <label>:276:                                    ; preds = %271, %262
  %277 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2654
  %278 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %277, i32 0, i32 21, !dbg !2655
  %279 = load i8, i8* %278, align 8, !dbg !2656
  %280 = and i8 %279, -65, !dbg !2656
  %281 = or i8 %280, 64, !dbg !2656
  store i8 %281, i8* %278, align 8, !dbg !2656
  br label %282, !dbg !2654

; <label>:282:                                    ; preds = %276, %271
  %283 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2657
  %284 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %283, i32 0, i32 9, !dbg !2659
  %285 = load i8*, i8** %284, align 8, !dbg !2659
  %286 = icmp ne i8* %285, null, !dbg !2660
  br i1 %286, label %295, label %287, !dbg !2661

; <label>:287:                                    ; preds = %282
  %288 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2662
  %289 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %288, i32 0, i32 21, !dbg !2664
  %290 = load i8, i8* %289, align 8, !dbg !2664
  %291 = lshr i8 %290, 6, !dbg !2664
  %292 = and i8 %291, 1, !dbg !2664
  %293 = zext i8 %292 to i32, !dbg !2664
  %294 = icmp ne i32 %293, 0, !dbg !2662
  br i1 %294, label %295, label %301, !dbg !2665

; <label>:295:                                    ; preds = %287, %282
  %296 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2666
  %297 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %296, i32 0, i32 21, !dbg !2667
  %298 = load i8, i8* %297, align 8, !dbg !2668
  %299 = and i8 %298, -33, !dbg !2668
  %300 = or i8 %299, 32, !dbg !2668
  store i8 %300, i8* %297, align 8, !dbg !2668
  br label %301, !dbg !2666

; <label>:301:                                    ; preds = %295, %287
  %302 = load i32, i32* %9, align 4, !dbg !2669
  %303 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2670
  %304 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %303, i32 0, i32 5, !dbg !2671
  store i32 %302, i32* %304, align 8, !dbg !2672
  %305 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !2673
  %306 = call i32 @config_node_get_bool(%struct._CONFIG_NODE* %305, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.52, i32 0, i32 0), i32 0), !dbg !2674
  %307 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2675
  %308 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %307, i32 0, i32 21, !dbg !2676
  %309 = trunc i32 %306 to i8, !dbg !2677
  %310 = load i8, i8* %308, align 8, !dbg !2677
  %311 = and i8 %309, 1, !dbg !2677
  %312 = and i8 %310, -2, !dbg !2677
  %313 = or i8 %312, %311, !dbg !2677
  store i8 %313, i8* %308, align 8, !dbg !2677
  %314 = zext i8 %311 to i32, !dbg !2677
  %315 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !2678
  %316 = call i32 @config_node_get_bool(%struct._CONFIG_NODE* %315, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i32 0), !dbg !2679
  %317 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2680
  %318 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %317, i32 0, i32 21, !dbg !2681
  %319 = trunc i32 %316 to i8, !dbg !2682
  %320 = load i8, i8* %318, align 8, !dbg !2682
  %321 = and i8 %319, 1, !dbg !2682
  %322 = shl i8 %321, 1, !dbg !2682
  %323 = and i8 %320, -3, !dbg !2682
  %324 = or i8 %323, %322, !dbg !2682
  store i8 %324, i8* %318, align 8, !dbg !2682
  %325 = zext i8 %321 to i32, !dbg !2682
  %326 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !2683
  %327 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %326, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i8* null), !dbg !2684
  %328 = call noalias i8* @g_strdup(i8* %327), !dbg !2685
  %329 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2686
  %330 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %329, i32 0, i32 17, !dbg !2687
  store i8* %328, i8** %330, align 8, !dbg !2688
  %331 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2689
  %332 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !2690
  %333 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.68, i32 0, i32 0), i32 2, %struct._SERVER_SETUP_REC* %331, %struct._CONFIG_NODE* %332), !dbg !2691
  %334 = load %struct._GSList*, %struct._GSList** @setupservers, align 8, !dbg !2692
  %335 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2693
  %336 = bitcast %struct._SERVER_SETUP_REC* %335 to i8*, !dbg !2693
  %337 = call %struct._GSList* @g_slist_append(%struct._GSList* %334, i8* %336), !dbg !2694
  store %struct._GSList* %337, %struct._GSList** @setupservers, align 8, !dbg !2695
  %338 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %4, align 8, !dbg !2696
  store %struct._SERVER_SETUP_REC* %338, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !2697
  br label %339, !dbg !2697

; <label>:339:                                    ; preds = %301, %33, %22, %15
  %340 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !2698
  ret %struct._SERVER_SETUP_REC* %340, !dbg !2698
}

declare %struct._GSList* @config_node_next(%struct._GSList*) #2

declare void @chatnet_create(%struct._CHATNET_REC*) #2

declare i32 @config_node_get_bool(%struct._CONFIG_NODE*, i8*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!388, !389}
!llvm.ident = !{!390}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !43, globals: !381)
!1 = !DIFile(filename: "line79-servers-setup.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 4, size: 32, align: 32, elements: !37)
!36 = !DIFile(filename: "../../src/lib-config/iconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!37 = !{!38, !39, !40, !41, !42}
!38 = !DIEnumerator(name: "NODE_TYPE_KEY", value: 0)
!39 = !DIEnumerator(name: "NODE_TYPE_VALUE", value: 1)
!40 = !DIEnumerator(name: "NODE_TYPE_BLOCK", value: 2)
!41 = !DIEnumerator(name: "NODE_TYPE_LIST", value: 3)
!42 = !DIEnumerator(name: "NODE_TYPE_COMMENT", value: 4)
!43 = !{!44, !131, !308, !310, !176, !353, !69, !360, !376}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !46, line: 113, baseType: !47)
!46 = !DIFile(filename: "../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !48, line: 25, size: 1920, align: 64, elements: !49)
!48 = !DIFile(filename: "servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!49 = !{!50, !53, !54, !55, !58, !59, !60, !61, !62, !64, !65, !66, !67, !68, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !47, file: !51, line: 3, baseType: !52, size: 32, align: 32)
!51 = !DIFile(filename: "server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!52 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !47, file: !51, line: 4, baseType: !52, size: 32, align: 32, offset: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !47, file: !51, line: 6, baseType: !52, size: 32, align: 32, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !47, file: !51, line: 9, baseType: !56, size: 64, align: 64, offset: 128)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !47, file: !51, line: 10, baseType: !52, size: 32, align: 32, offset: 192)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !47, file: !51, line: 11, baseType: !56, size: 64, align: 64, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !47, file: !51, line: 11, baseType: !56, size: 64, align: 64, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !47, file: !51, line: 11, baseType: !56, size: 64, align: 64, offset: 384)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !47, file: !51, line: 13, baseType: !63, size: 16, align: 16, offset: 448)
!63 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !47, file: !51, line: 14, baseType: !56, size: 64, align: 64, offset: 512)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !47, file: !51, line: 15, baseType: !56, size: 64, align: 64, offset: 576)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !47, file: !51, line: 16, baseType: !52, size: 32, align: 32, offset: 640)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !47, file: !51, line: 17, baseType: !56, size: 64, align: 64, offset: 704)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !47, file: !51, line: 19, baseType: !69, size: 64, align: 64, offset: 768)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !46, line: 99, baseType: !71)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !72, line: 22, size: 160, align: 32, elements: !73)
!72 = !DIFile(filename: "network.h", directory: "/home/lichi/Desktop/irssi/task1")
!73 = !{!74, !75}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !71, file: !72, line: 23, baseType: !63, size: 16, align: 16)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !71, file: !72, line: 24, baseType: !76, size: 128, align: 32, offset: 32)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !77, line: 211, size: 128, align: 32, elements: !78)
!77 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/irssi/task1")
!78 = !{!79}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !76, file: !77, line: 220, baseType: !80, size: 128, align: 32)
!80 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !76, file: !77, line: 213, size: 128, align: 32, elements: !81)
!81 = !{!82, !89, !94}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !80, file: !77, line: 215, baseType: !83, size: 128, align: 8)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 128, align: 8, elements: !87)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !85, line: 48, baseType: !86)
!85 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/irssi/task1")
!86 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!87 = !{!88}
!88 = !DISubrange(count: 16)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !80, file: !77, line: 217, baseType: !90, size: 128, align: 16)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 128, align: 16, elements: !92)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !85, line: 49, baseType: !63)
!92 = !{!93}
!93 = !DISubrange(count: 8)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !80, file: !77, line: 218, baseType: !95, size: 128, align: 32)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 128, align: 32, elements: !98)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !85, line: 51, baseType: !97)
!97 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!98 = !{!99}
!99 = !DISubrange(count: 4)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !47, file: !51, line: 19, baseType: !69, size: 64, align: 64, offset: 832)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !47, file: !51, line: 21, baseType: !56, size: 64, align: 64, offset: 896)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !47, file: !51, line: 22, baseType: !56, size: 64, align: 64, offset: 960)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !47, file: !51, line: 23, baseType: !56, size: 64, align: 64, offset: 1024)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !47, file: !51, line: 24, baseType: !56, size: 64, align: 64, offset: 1088)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !47, file: !51, line: 26, baseType: !56, size: 64, align: 64, offset: 1152)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !47, file: !51, line: 27, baseType: !56, size: 64, align: 64, offset: 1216)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !47, file: !51, line: 28, baseType: !56, size: 64, align: 64, offset: 1280)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !47, file: !51, line: 29, baseType: !56, size: 64, align: 64, offset: 1344)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !47, file: !51, line: 30, baseType: !56, size: 64, align: 64, offset: 1408)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !47, file: !51, line: 31, baseType: !56, size: 64, align: 64, offset: 1472)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !47, file: !51, line: 32, baseType: !56, size: 64, align: 64, offset: 1536)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !47, file: !51, line: 33, baseType: !56, size: 64, align: 64, offset: 1600)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !47, file: !51, line: 35, baseType: !114, size: 64, align: 64, offset: 1664)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !116)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !117)
!117 = !{!118, !121, !265, !266, !271, !272, !273, !274, !275, !284, !285, !286, !290, !291, !292, !293, !294, !295, !296, !297}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !116, file: !4, line: 100, baseType: !119, size: 32, align: 32)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !120, line: 49, baseType: !52)
!120 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!121 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !116, file: !4, line: 101, baseType: !122, size: 64, align: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !124)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !125)
!125 = !{!126, !149, !155, !162, !166, !252, !256, !261}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !124, file: !4, line: 133, baseType: !127, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{!130, !114, !131, !133, !136, !137}
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !120, line: 46, baseType: !57)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !134, line: 66, baseType: !135)
!134 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!135 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64, align: 64)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !140, line: 42, baseType: !141)
!140 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !140, line: 44, size: 128, align: 64, elements: !142)
!142 = !{!143, !147, !148}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !141, file: !140, line: 46, baseType: !144, size: 32, align: 32)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !145, line: 36, baseType: !146)
!145 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !134, line: 45, baseType: !97)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !141, file: !140, line: 47, baseType: !119, size: 32, align: 32, offset: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !141, file: !140, line: 48, baseType: !131, size: 64, align: 64, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !124, file: !4, line: 138, baseType: !150, size: 64, align: 64, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{!130, !114, !153, !133, !136, !137}
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64, align: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !124, file: !4, line: 143, baseType: !156, size: 64, align: 64, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, align: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!130, !114, !159, !161, !137}
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !134, line: 51, baseType: !160)
!160 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !124, file: !4, line: 147, baseType: !163, size: 64, align: 64, offset: 192)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64, align: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{!130, !114, !137}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !124, file: !4, line: 149, baseType: !167, size: 64, align: 64, offset: 256)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64, align: 64)
!168 = !DISubroutineType(types: !169)
!169 = !{!170, !114, !251}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64, align: 64)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !172)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !173)
!173 = !{!174, !177, !198, !227, !229, !233, !234, !235, !236, !244, !245, !246, !247}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !172, file: !16, line: 174, baseType: !175, size: 64, align: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !120, line: 77, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !172, file: !16, line: 175, baseType: !178, size: 64, align: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !180)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !181)
!181 = !{!182, !186, !187}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !180, file: !16, line: 198, baseType: !183, size: 64, align: 64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{null, !175}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !180, file: !16, line: 199, baseType: !183, size: 64, align: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !180, file: !16, line: 200, baseType: !188, size: 64, align: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, align: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{null, !175, !170, !191, !197}
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64, align: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{!196, !175}
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !120, line: 50, baseType: !119)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !172, file: !16, line: 177, baseType: !199, size: 64, align: 64, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64, align: 64)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !202)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !203)
!203 = !{!204, !209, !213, !217, !221, !222}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !202, file: !16, line: 216, baseType: !205, size: 64, align: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{!196, !170, !208}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64, align: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !202, file: !16, line: 218, baseType: !210, size: 64, align: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!196, !170}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !202, file: !16, line: 219, baseType: !214, size: 64, align: 64, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64, align: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!196, !170, !192, !175}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !202, file: !16, line: 222, baseType: !218, size: 64, align: 64, offset: 192)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64, align: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{null, !170}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !202, file: !16, line: 226, baseType: !192, size: 64, align: 64, offset: 256)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !202, file: !16, line: 227, baseType: !223, size: 64, align: 64, offset: 320)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64, align: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{null}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !172, file: !16, line: 178, baseType: !228, size: 32, align: 32, offset: 192)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !120, line: 55, baseType: !97)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !172, file: !16, line: 180, baseType: !230, size: 64, align: 64, offset: 256)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !232)
!232 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !172, file: !16, line: 182, baseType: !119, size: 32, align: 32, offset: 320)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !172, file: !16, line: 183, baseType: !228, size: 32, align: 32, offset: 352)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !172, file: !16, line: 184, baseType: !228, size: 32, align: 32, offset: 384)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !172, file: !16, line: 186, baseType: !237, size: 64, align: 64, offset: 448)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, align: 64)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !239, line: 37, baseType: !240)
!239 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !239, line: 39, size: 128, align: 64, elements: !241)
!241 = !{!242, !243}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !240, file: !239, line: 41, baseType: !175, size: 64, align: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !240, file: !239, line: 42, baseType: !237, size: 64, align: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !172, file: !16, line: 188, baseType: !170, size: 64, align: 64, offset: 512)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !172, file: !16, line: 189, baseType: !170, size: 64, align: 64, offset: 576)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !172, file: !16, line: 191, baseType: !56, size: 64, align: 64, offset: 640)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !172, file: !16, line: 193, baseType: !248, size: 64, align: 64, offset: 704)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64, align: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !250)
!250 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !124, file: !4, line: 151, baseType: !253, size: 64, align: 64, offset: 320)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !114}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !124, file: !4, line: 152, baseType: !257, size: 64, align: 64, offset: 384)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64, align: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!130, !114, !260, !137}
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !124, file: !4, line: 155, baseType: !262, size: 64, align: 64, offset: 448)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64, align: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!260, !114}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !116, file: !4, line: 103, baseType: !131, size: 64, align: 64, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !116, file: !4, line: 104, baseType: !267, size: 64, align: 64, offset: 192)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !268, line: 77, baseType: !269)
!268 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64, align: 64)
!270 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !268, line: 77, flags: DIFlagFwdDecl)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !116, file: !4, line: 105, baseType: !267, size: 64, align: 64, offset: 256)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !116, file: !4, line: 106, baseType: !131, size: 64, align: 64, offset: 320)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !116, file: !4, line: 107, baseType: !228, size: 32, align: 32, offset: 384)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !116, file: !4, line: 109, baseType: !133, size: 64, align: 64, offset: 448)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !116, file: !4, line: 110, baseType: !276, size: 64, align: 64, offset: 512)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !278, line: 39, baseType: !279)
!278 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !278, line: 41, size: 192, align: 64, elements: !280)
!280 = !{!281, !282, !283}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !279, file: !278, line: 43, baseType: !131, size: 64, align: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !279, file: !278, line: 44, baseType: !133, size: 64, align: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !279, file: !278, line: 45, baseType: !133, size: 64, align: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !116, file: !4, line: 111, baseType: !276, size: 64, align: 64, offset: 576)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !116, file: !4, line: 112, baseType: !276, size: 64, align: 64, offset: 640)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !116, file: !4, line: 113, baseType: !287, size: 48, align: 8, offset: 704)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 48, align: 8, elements: !288)
!288 = !{!289}
!289 = !DISubrange(count: 6)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !116, file: !4, line: 117, baseType: !228, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !116, file: !4, line: 118, baseType: !228, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !116, file: !4, line: 119, baseType: !228, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !116, file: !4, line: 120, baseType: !228, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !116, file: !4, line: 121, baseType: !228, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !116, file: !4, line: 122, baseType: !228, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !116, file: !4, line: 124, baseType: !175, size: 64, align: 64, offset: 768)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !116, file: !4, line: 125, baseType: !175, size: 64, align: 64, offset: 832)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !47, file: !51, line: 38, baseType: !97, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !47, file: !51, line: 39, baseType: !97, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !47, file: !51, line: 40, baseType: !97, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !47, file: !51, line: 41, baseType: !97, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !47, file: !51, line: 42, baseType: !97, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !47, file: !51, line: 43, baseType: !97, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !47, file: !51, line: 44, baseType: !97, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !47, file: !51, line: 45, baseType: !97, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !47, file: !51, line: 46, baseType: !56, size: 64, align: 64, offset: 1792)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !47, file: !51, line: 47, baseType: !56, size: 64, align: 64, offset: 1856)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64, align: 64)
!309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64, align: 64)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_SETUP_REC", file: !46, line: 114, baseType: !312)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_SETUP_REC", file: !313, line: 13, size: 1408, align: 64, elements: !314)
!313 = !DIFile(filename: "servers-setup.h", directory: "/home/lichi/Desktop/irssi/task1")
!314 = !{!315, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !341, !342, !343, !344, !345, !346, !347, !348}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !312, file: !316, line: 1, baseType: !52, size: 32, align: 32)
!316 = !DIFile(filename: "server-setup-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!317 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !312, file: !316, line: 2, baseType: !52, size: 32, align: 32, offset: 32)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !312, file: !316, line: 4, baseType: !56, size: 64, align: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !312, file: !316, line: 6, baseType: !63, size: 16, align: 16, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !312, file: !316, line: 7, baseType: !56, size: 64, align: 64, offset: 192)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !312, file: !316, line: 8, baseType: !52, size: 32, align: 32, offset: 256)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !312, file: !316, line: 9, baseType: !56, size: 64, align: 64, offset: 320)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !312, file: !316, line: 11, baseType: !52, size: 32, align: 32, offset: 384)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !312, file: !316, line: 12, baseType: !56, size: 64, align: 64, offset: 448)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !312, file: !316, line: 14, baseType: !56, size: 64, align: 64, offset: 512)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !312, file: !316, line: 15, baseType: !56, size: 64, align: 64, offset: 576)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !312, file: !316, line: 16, baseType: !56, size: 64, align: 64, offset: 640)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !312, file: !316, line: 17, baseType: !56, size: 64, align: 64, offset: 704)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !312, file: !316, line: 18, baseType: !56, size: 64, align: 64, offset: 768)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !312, file: !316, line: 19, baseType: !56, size: 64, align: 64, offset: 832)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !312, file: !316, line: 20, baseType: !56, size: 64, align: 64, offset: 896)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !312, file: !316, line: 21, baseType: !56, size: 64, align: 64, offset: 960)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "own_host", scope: !312, file: !316, line: 23, baseType: !56, size: 64, align: 64, offset: 1024)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !312, file: !316, line: 24, baseType: !69, size: 64, align: 64, offset: 1088)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !312, file: !316, line: 24, baseType: !69, size: 64, align: 64, offset: 1152)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "last_connect", scope: !312, file: !316, line: 26, baseType: !337, size: 64, align: 64, offset: 1216)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !338, line: 75, baseType: !339)
!338 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !340, line: 139, baseType: !160)
!340 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!341 = !DIDerivedType(tag: DW_TAG_member, name: "autoconnect", scope: !312, file: !316, line: 28, baseType: !97, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "no_proxy", scope: !312, file: !316, line: 29, baseType: !97, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "last_failed", scope: !312, file: !316, line: 30, baseType: !97, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !312, file: !316, line: 31, baseType: !97, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !312, file: !316, line: 32, baseType: !97, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !312, file: !316, line: 33, baseType: !97, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !312, file: !316, line: 34, baseType: !97, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !312, file: !316, line: 36, baseType: !349, size: 64, align: 64, offset: 1344)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64, align: 64)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !351, line: 37, baseType: !352)
!351 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!352 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !351, line: 37, flags: DIFlagFwdDecl)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !354, line: 9, baseType: !355)
!354 = !DIFile(filename: "signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64, align: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{null, !358, !358, !358, !358, !358, !358}
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHATNET_REC", file: !46, line: 106, baseType: !362)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHATNET_REC", file: !363, line: 13, size: 576, align: 64, elements: !364)
!363 = !DIFile(filename: "chatnets.h", directory: "/home/lichi/Desktop/irssi/task1")
!364 = !{!365, !367, !368, !369, !370, !371, !372, !373, !374, !375}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !362, file: !366, line: 1, baseType: !52, size: 32, align: 32)
!366 = !DIFile(filename: "chatnet-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!367 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !362, file: !366, line: 2, baseType: !52, size: 32, align: 32, offset: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !362, file: !366, line: 4, baseType: !56, size: 64, align: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !362, file: !366, line: 6, baseType: !56, size: 64, align: 64, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !362, file: !366, line: 7, baseType: !56, size: 64, align: 64, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !362, file: !366, line: 8, baseType: !56, size: 64, align: 64, offset: 256)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "own_host", scope: !362, file: !366, line: 10, baseType: !56, size: 64, align: 64, offset: 320)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "autosendcmd", scope: !362, file: !366, line: 11, baseType: !56, size: 64, align: 64, offset: 384)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !362, file: !366, line: 12, baseType: !69, size: 64, align: 64, offset: 448)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !362, file: !366, line: 12, baseType: !69, size: 64, align: 64, offset: 512)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCompareFunc", file: !120, line: 80, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64, align: 64)
!378 = !DISubroutineType(types: !379)
!379 = !{!119, !380, !380}
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "gconstpointer", file: !120, line: 78, baseType: !358)
!381 = !{!382, !384, !385, !386, !387}
!382 = distinct !DIGlobalVariable(name: "setupservers", scope: !0, file: !383, line: 32, type: !237, isLocal: false, isDefinition: true, variable: %struct._GSList** @setupservers)
!383 = !DIFile(filename: "servers-setup.c", directory: "/home/lichi/Desktop/irssi/task1")
!384 = distinct !DIGlobalVariable(name: "old_source_host", scope: !0, file: !383, line: 34, type: !56, isLocal: true, isDefinition: true, variable: i8** @old_source_host)
!385 = distinct !DIGlobalVariable(name: "source_host_ok", scope: !0, file: !383, line: 35, type: !52, isLocal: false, isDefinition: true, variable: i32* @source_host_ok)
!386 = distinct !DIGlobalVariable(name: "source_host_ip4", scope: !0, file: !383, line: 36, type: !69, isLocal: false, isDefinition: true, variable: %struct._IPADDR** @source_host_ip4)
!387 = distinct !DIGlobalVariable(name: "source_host_ip6", scope: !0, file: !383, line: 36, type: !69, isLocal: false, isDefinition: true, variable: %struct._IPADDR** @source_host_ip6)
!388 = !{i32 2, !"Dwarf Version", i32 4}
!389 = !{i32 2, !"Debug Info Version", i32 3}
!390 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!391 = distinct !DISubprogram(name: "server_setup_fill_reconn", scope: !383, file: !383, line: 94, type: !392, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !394)
!392 = !DISubroutineType(types: !393)
!393 = !{null, !44, !310}
!394 = !{}
!395 = !DILocalVariable(name: "conn", arg: 1, scope: !391, file: !383, line: 94, type: !44)
!396 = !DIExpression()
!397 = !DILocation(line: 94, column: 51, scope: !391)
!398 = !DILocalVariable(name: "sserver", arg: 2, scope: !391, file: !383, line: 95, type: !310)
!399 = !DILocation(line: 95, column: 28, scope: !391)
!400 = !DILocation(line: 97, column: 2, scope: !391)
!401 = distinct !{!401, !400}
!402 = !DILocation(line: 97, column: 53, scope: !403)
!403 = !DILexicalBlockFile(scope: !404, file: !383, discriminator: 1)
!404 = distinct !DILexicalBlock(scope: !405, file: !383, line: 97, column: 10)
!405 = distinct !DILexicalBlock(scope: !391, file: !383, line: 97, column: 4)
!406 = !DILocation(line: 97, column: 35, scope: !403)
!407 = !DILocation(line: 97, column: 12, scope: !403)
!408 = !DILocation(line: 97, column: 10, scope: !403)
!409 = !DILocation(line: 97, column: 11, scope: !410)
!410 = !DILexicalBlockFile(scope: !404, file: !383, discriminator: 2)
!411 = !DILocation(line: 97, column: 10, scope: !412)
!412 = !DILexicalBlockFile(scope: !405, file: !383, discriminator: 3)
!413 = !DILocation(line: 97, column: 41, scope: !414)
!414 = !DILexicalBlockFile(scope: !415, file: !383, discriminator: 4)
!415 = distinct !DILexicalBlock(scope: !404, file: !383, line: 97, column: 39)
!416 = !DILocation(line: 97, column: 50, scope: !417)
!417 = !DILexicalBlockFile(scope: !418, file: !383, discriminator: 5)
!418 = distinct !DILexicalBlock(scope: !404, file: !383, line: 97, column: 48)
!419 = !DILocation(line: 97, column: 146, scope: !417)
!420 = !DILocation(line: 97, column: 157, scope: !421)
!421 = !DILexicalBlockFile(scope: !405, file: !383, discriminator: 6)
!422 = !DILocation(line: 98, column: 2, scope: !391)
!423 = distinct !{!423, !422}
!424 = !DILocation(line: 98, column: 51, scope: !425)
!425 = !DILexicalBlockFile(scope: !426, file: !383, discriminator: 1)
!426 = distinct !DILexicalBlock(scope: !427, file: !383, line: 98, column: 10)
!427 = distinct !DILexicalBlock(scope: !391, file: !383, line: 98, column: 4)
!428 = !DILocation(line: 98, column: 33, scope: !425)
!429 = !DILocation(line: 98, column: 12, scope: !425)
!430 = !DILocation(line: 98, column: 10, scope: !425)
!431 = !DILocation(line: 98, column: 11, scope: !432)
!432 = !DILexicalBlockFile(scope: !426, file: !383, discriminator: 2)
!433 = !DILocation(line: 98, column: 10, scope: !434)
!434 = !DILexicalBlockFile(scope: !427, file: !383, discriminator: 3)
!435 = !DILocation(line: 98, column: 39, scope: !436)
!436 = !DILexicalBlockFile(scope: !437, file: !383, discriminator: 4)
!437 = distinct !DILexicalBlock(scope: !426, file: !383, line: 98, column: 37)
!438 = !DILocation(line: 98, column: 48, scope: !439)
!439 = !DILexicalBlockFile(scope: !440, file: !383, discriminator: 5)
!440 = distinct !DILexicalBlock(scope: !426, file: !383, line: 98, column: 46)
!441 = !DILocation(line: 98, column: 145, scope: !439)
!442 = !DILocation(line: 98, column: 156, scope: !443)
!443 = !DILexicalBlockFile(scope: !427, file: !383, discriminator: 6)
!444 = !DILocation(line: 100, column: 6, scope: !445)
!445 = distinct !DILexicalBlock(scope: !391, file: !383, line: 100, column: 6)
!446 = !DILocation(line: 100, column: 15, scope: !445)
!447 = !DILocation(line: 100, column: 24, scope: !445)
!448 = !DILocation(line: 100, column: 6, scope: !391)
!449 = !DILocation(line: 101, column: 15, scope: !450)
!450 = distinct !DILexicalBlock(scope: !445, file: !383, line: 100, column: 32)
!451 = !DILocation(line: 101, column: 21, scope: !450)
!452 = !DILocation(line: 101, column: 30, scope: !450)
!453 = !DILocation(line: 102, column: 9, scope: !450)
!454 = !DILocation(line: 102, column: 18, scope: !450)
!455 = !DILocation(line: 102, column: 28, scope: !450)
!456 = !DILocation(line: 102, column: 37, scope: !450)
!457 = !DILocation(line: 101, column: 3, scope: !450)
!458 = !DILocation(line: 103, column: 2, scope: !450)
!459 = !DILocation(line: 105, column: 6, scope: !460)
!460 = distinct !DILexicalBlock(scope: !391, file: !383, line: 105, column: 6)
!461 = !DILocation(line: 105, column: 15, scope: !460)
!462 = !DILocation(line: 105, column: 23, scope: !460)
!463 = !DILocation(line: 105, column: 30, scope: !460)
!464 = !DILocation(line: 105, column: 33, scope: !465)
!465 = !DILexicalBlockFile(scope: !460, file: !383, discriminator: 1)
!466 = !DILocation(line: 105, column: 39, scope: !465)
!467 = !DILocation(line: 105, column: 47, scope: !465)
!468 = !DILocation(line: 105, column: 6, scope: !465)
!469 = !DILocation(line: 106, column: 28, scope: !460)
!470 = !DILocation(line: 106, column: 37, scope: !460)
!471 = !DILocation(line: 106, column: 19, scope: !460)
!472 = !DILocation(line: 106, column: 3, scope: !460)
!473 = !DILocation(line: 106, column: 9, scope: !460)
!474 = !DILocation(line: 106, column: 17, scope: !460)
!475 = !DILocation(line: 108, column: 6, scope: !476)
!476 = distinct !DILexicalBlock(scope: !391, file: !383, line: 108, column: 6)
!477 = !DILocation(line: 108, column: 15, scope: !476)
!478 = !DILocation(line: 108, column: 24, scope: !476)
!479 = !DILocation(line: 108, column: 31, scope: !476)
!480 = !DILocation(line: 108, column: 34, scope: !481)
!481 = !DILexicalBlockFile(scope: !476, file: !383, discriminator: 1)
!482 = !DILocation(line: 108, column: 40, scope: !481)
!483 = !DILocation(line: 108, column: 49, scope: !481)
!484 = !DILocation(line: 108, column: 6, scope: !481)
!485 = !DILocation(line: 109, column: 29, scope: !476)
!486 = !DILocation(line: 109, column: 38, scope: !476)
!487 = !DILocation(line: 109, column: 20, scope: !476)
!488 = !DILocation(line: 109, column: 3, scope: !476)
!489 = !DILocation(line: 109, column: 9, scope: !476)
!490 = !DILocation(line: 109, column: 18, scope: !476)
!491 = !DILocation(line: 111, column: 45, scope: !391)
!492 = !DILocation(line: 111, column: 51, scope: !391)
!493 = !DILocation(line: 111, column: 2, scope: !391)
!494 = !DILocation(line: 112, column: 1, scope: !391)
!495 = !DILocation(line: 112, column: 1, scope: !496)
!496 = !DILexicalBlockFile(scope: !391, file: !383, discriminator: 1)
!497 = distinct !DISubprogram(name: "conn_set_ip", scope: !383, file: !383, line: 79, type: !498, isLocal: true, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !394)
!498 = !DISubroutineType(types: !499)
!499 = !{null, !44, !308, !500, !500}
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!501 = !DILocalVariable(name: "conn", arg: 1, scope: !497, file: !383, line: 79, type: !44)
!502 = !DILocation(line: 79, column: 45, scope: !497)
!503 = !DILocalVariable(name: "own_host", arg: 2, scope: !497, file: !383, line: 79, type: !308)
!504 = !DILocation(line: 79, column: 63, scope: !497)
!505 = !DILocalVariable(name: "own_ip4", arg: 3, scope: !497, file: !383, line: 80, type: !500)
!506 = !DILocation(line: 80, column: 13, scope: !497)
!507 = !DILocalVariable(name: "own_ip6", arg: 4, scope: !497, file: !383, line: 80, type: !500)
!508 = !DILocation(line: 80, column: 31, scope: !497)
!509 = !DILocalVariable(name: "ip4", scope: !497, file: !383, line: 82, type: !70)
!510 = !DILocation(line: 82, column: 9, scope: !497)
!511 = !DILocalVariable(name: "ip6", scope: !497, file: !383, line: 82, type: !70)
!512 = !DILocation(line: 82, column: 14, scope: !497)
!513 = !DILocation(line: 84, column: 7, scope: !514)
!514 = distinct !DILexicalBlock(scope: !497, file: !383, line: 84, column: 6)
!515 = !DILocation(line: 84, column: 6, scope: !514)
!516 = !DILocation(line: 84, column: 15, scope: !514)
!517 = !DILocation(line: 84, column: 22, scope: !514)
!518 = !DILocation(line: 84, column: 26, scope: !519)
!519 = !DILexicalBlockFile(scope: !514, file: !383, discriminator: 1)
!520 = !DILocation(line: 84, column: 25, scope: !519)
!521 = !DILocation(line: 84, column: 34, scope: !519)
!522 = !DILocation(line: 84, column: 6, scope: !519)
!523 = !DILocation(line: 86, column: 25, scope: !524)
!524 = distinct !DILexicalBlock(scope: !525, file: !383, line: 86, column: 7)
!525 = distinct !DILexicalBlock(scope: !514, file: !383, line: 84, column: 43)
!526 = !DILocation(line: 86, column: 7, scope: !524)
!527 = !DILocation(line: 86, column: 47, scope: !524)
!528 = !DILocation(line: 86, column: 7, scope: !525)
!529 = !DILocation(line: 87, column: 46, scope: !524)
!530 = !DILocation(line: 87, column: 55, scope: !524)
!531 = !DILocation(line: 87, column: 25, scope: !524)
!532 = !DILocation(line: 88, column: 2, scope: !525)
!533 = !DILocation(line: 90, column: 29, scope: !497)
!534 = !DILocation(line: 90, column: 36, scope: !497)
!535 = !DILocation(line: 90, column: 35, scope: !497)
!536 = !DILocation(line: 90, column: 46, scope: !497)
!537 = !DILocation(line: 90, column: 45, scope: !497)
!538 = !DILocation(line: 90, column: 2, scope: !497)
!539 = !DILocation(line: 91, column: 1, scope: !497)
!540 = distinct !DISubprogram(name: "server_create_conn", scope: !383, file: !383, line: 316, type: !541, isLocal: false, isDefinition: true, scopeLine: 319, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !394)
!541 = !DISubroutineType(types: !542)
!542 = !{!44, !52, !308, !52, !308, !308, !308}
!543 = !DILocalVariable(name: "chat_type", arg: 1, scope: !540, file: !383, line: 316, type: !52)
!544 = !DILocation(line: 316, column: 24, scope: !540)
!545 = !DILocalVariable(name: "dest", arg: 2, scope: !540, file: !383, line: 316, type: !308)
!546 = !DILocation(line: 316, column: 47, scope: !540)
!547 = !DILocalVariable(name: "port", arg: 3, scope: !540, file: !383, line: 316, type: !52)
!548 = !DILocation(line: 316, column: 57, scope: !540)
!549 = !DILocalVariable(name: "chatnet", arg: 4, scope: !540, file: !383, line: 317, type: !308)
!550 = !DILocation(line: 317, column: 18, scope: !540)
!551 = !DILocalVariable(name: "password", arg: 5, scope: !540, file: !383, line: 317, type: !308)
!552 = !DILocation(line: 317, column: 39, scope: !540)
!553 = !DILocalVariable(name: "nick", arg: 6, scope: !540, file: !383, line: 318, type: !308)
!554 = !DILocation(line: 318, column: 18, scope: !540)
!555 = !DILocalVariable(name: "rec", scope: !540, file: !383, line: 320, type: !44)
!556 = !DILocation(line: 320, column: 22, scope: !540)
!557 = !DILocalVariable(name: "chatrec", scope: !540, file: !383, line: 321, type: !360)
!558 = !DILocation(line: 321, column: 22, scope: !540)
!559 = !DILocation(line: 323, column: 2, scope: !540)
!560 = distinct !{!560, !559}
!561 = !DILocation(line: 323, column: 10, scope: !562)
!562 = !DILexicalBlockFile(scope: !563, file: !383, discriminator: 1)
!563 = distinct !DILexicalBlock(scope: !564, file: !383, line: 323, column: 10)
!564 = distinct !DILexicalBlock(scope: !540, file: !383, line: 323, column: 4)
!565 = !DILocation(line: 323, column: 15, scope: !562)
!566 = !DILocation(line: 323, column: 5, scope: !567)
!567 = !DILexicalBlockFile(scope: !568, file: !383, discriminator: 2)
!568 = distinct !DILexicalBlock(scope: !563, file: !383, line: 323, column: 3)
!569 = !DILocation(line: 323, column: 14, scope: !570)
!570 = !DILexicalBlockFile(scope: !571, file: !383, discriminator: 3)
!571 = distinct !DILexicalBlock(scope: !563, file: !383, line: 323, column: 12)
!572 = !DILocation(line: 323, column: 99, scope: !570)
!573 = !DILocation(line: 323, column: 7, scope: !574)
!574 = !DILexicalBlockFile(scope: !564, file: !383, discriminator: 4)
!575 = !DILocation(line: 325, column: 32, scope: !540)
!576 = !DILocation(line: 325, column: 19, scope: !540)
!577 = !DILocation(line: 325, column: 17, scope: !540)
!578 = !DILocation(line: 326, column: 6, scope: !579)
!579 = distinct !DILexicalBlock(scope: !540, file: !383, line: 326, column: 6)
!580 = !DILocation(line: 326, column: 14, scope: !579)
!581 = !DILocation(line: 326, column: 6, scope: !540)
!582 = !DILocation(line: 327, column: 29, scope: !583)
!583 = distinct !DILexicalBlock(scope: !579, file: !383, line: 326, column: 22)
!584 = !DILocation(line: 327, column: 38, scope: !583)
!585 = !DILocation(line: 327, column: 44, scope: !583)
!586 = !DILocation(line: 327, column: 50, scope: !583)
!587 = !DILocation(line: 327, column: 60, scope: !583)
!588 = !DILocation(line: 327, column: 9, scope: !583)
!589 = !DILocation(line: 327, column: 7, scope: !583)
!590 = !DILocation(line: 329, column: 10, scope: !583)
!591 = !DILocation(line: 329, column: 3, scope: !583)
!592 = !DILocation(line: 332, column: 12, scope: !540)
!593 = !DILocation(line: 332, column: 20, scope: !540)
!594 = !DILocation(line: 332, column: 12, scope: !595)
!595 = !DILexicalBlockFile(scope: !540, file: !383, discriminator: 1)
!596 = !DILocation(line: 332, column: 49, scope: !597)
!597 = !DILexicalBlockFile(scope: !540, file: !383, discriminator: 2)
!598 = !DILocation(line: 332, column: 36, scope: !597)
!599 = !DILocation(line: 332, column: 12, scope: !597)
!600 = !DILocation(line: 332, column: 12, scope: !601)
!601 = !DILexicalBlockFile(scope: !540, file: !383, discriminator: 3)
!602 = !DILocation(line: 332, column: 10, scope: !601)
!603 = !DILocation(line: 333, column: 6, scope: !604)
!604 = distinct !DILexicalBlock(scope: !540, file: !383, line: 333, column: 6)
!605 = !DILocation(line: 333, column: 14, scope: !604)
!606 = !DILocation(line: 333, column: 6, scope: !540)
!607 = !DILocation(line: 334, column: 13, scope: !604)
!608 = !DILocation(line: 334, column: 22, scope: !604)
!609 = !DILocation(line: 334, column: 11, scope: !604)
!610 = !DILocation(line: 334, column: 3, scope: !604)
!611 = !DILocation(line: 336, column: 26, scope: !540)
!612 = !DILocation(line: 336, column: 37, scope: !540)
!613 = !DILocation(line: 336, column: 43, scope: !540)
!614 = !DILocation(line: 337, column: 5, scope: !540)
!615 = !DILocation(line: 337, column: 14, scope: !540)
!616 = !DILocation(line: 337, column: 24, scope: !540)
!617 = !DILocation(line: 336, column: 9, scope: !540)
!618 = !DILocation(line: 336, column: 2, scope: !540)
!619 = !DILocation(line: 338, column: 1, scope: !540)
!620 = distinct !DISubprogram(name: "create_chatnet_conn", scope: !383, file: !383, line: 281, type: !621, isLocal: true, isDefinition: true, scopeLine: 283, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !394)
!621 = !DISubroutineType(types: !622)
!622 = !{!44, !308, !52, !308, !308}
!623 = !DILocalVariable(name: "dest", arg: 1, scope: !620, file: !383, line: 281, type: !308)
!624 = !DILocation(line: 281, column: 33, scope: !620)
!625 = !DILocalVariable(name: "port", arg: 2, scope: !620, file: !383, line: 281, type: !52)
!626 = !DILocation(line: 281, column: 43, scope: !620)
!627 = !DILocalVariable(name: "password", arg: 3, scope: !620, file: !383, line: 282, type: !308)
!628 = !DILocation(line: 282, column: 19, scope: !620)
!629 = !DILocalVariable(name: "nick", arg: 4, scope: !620, file: !383, line: 282, type: !308)
!630 = !DILocation(line: 282, column: 41, scope: !620)
!631 = !DILocalVariable(name: "bestrec", scope: !620, file: !383, line: 284, type: !310)
!632 = !DILocation(line: 284, column: 20, scope: !620)
!633 = !DILocalVariable(name: "tmp", scope: !620, file: !383, line: 285, type: !237)
!634 = !DILocation(line: 285, column: 10, scope: !620)
!635 = !DILocalVariable(name: "now", scope: !620, file: !383, line: 286, type: !337)
!636 = !DILocation(line: 286, column: 9, scope: !620)
!637 = !DILocalVariable(name: "besttime", scope: !620, file: !383, line: 286, type: !337)
!638 = !DILocation(line: 286, column: 14, scope: !620)
!639 = !DILocation(line: 288, column: 8, scope: !620)
!640 = !DILocation(line: 288, column: 6, scope: !620)
!641 = !DILocation(line: 289, column: 10, scope: !620)
!642 = !DILocation(line: 289, column: 28, scope: !620)
!643 = !DILocation(line: 289, column: 26, scope: !620)
!644 = !DILocation(line: 290, column: 13, scope: !645)
!645 = distinct !DILexicalBlock(scope: !620, file: !383, line: 290, column: 2)
!646 = !DILocation(line: 290, column: 11, scope: !645)
!647 = !DILocation(line: 290, column: 7, scope: !645)
!648 = !DILocation(line: 290, column: 27, scope: !649)
!649 = !DILexicalBlockFile(scope: !650, file: !383, discriminator: 1)
!650 = distinct !DILexicalBlock(scope: !645, file: !383, line: 290, column: 2)
!651 = !DILocation(line: 290, column: 31, scope: !649)
!652 = !DILocation(line: 290, column: 2, scope: !649)
!653 = !DILocalVariable(name: "rec", scope: !654, file: !383, line: 291, type: !310)
!654 = distinct !DILexicalBlock(scope: !650, file: !383, line: 290, column: 56)
!655 = !DILocation(line: 291, column: 21, scope: !654)
!656 = !DILocation(line: 291, column: 27, scope: !654)
!657 = !DILocation(line: 291, column: 32, scope: !654)
!658 = !DILocation(line: 293, column: 7, scope: !659)
!659 = distinct !DILexicalBlock(scope: !654, file: !383, line: 293, column: 7)
!660 = !DILocation(line: 293, column: 12, scope: !659)
!661 = !DILocation(line: 293, column: 20, scope: !659)
!662 = !DILocation(line: 293, column: 27, scope: !659)
!663 = !DILocation(line: 294, column: 26, scope: !659)
!664 = !DILocation(line: 294, column: 31, scope: !659)
!665 = !DILocation(line: 294, column: 40, scope: !659)
!666 = !DILocation(line: 294, column: 7, scope: !659)
!667 = !DILocation(line: 294, column: 46, scope: !659)
!668 = !DILocation(line: 293, column: 7, scope: !669)
!669 = !DILexicalBlockFile(scope: !654, file: !383, discriminator: 1)
!670 = !DILocation(line: 295, column: 4, scope: !659)
!671 = !DILocation(line: 297, column: 8, scope: !672)
!672 = distinct !DILexicalBlock(scope: !654, file: !383, line: 297, column: 7)
!673 = !DILocation(line: 297, column: 13, scope: !672)
!674 = !DILocation(line: 297, column: 7, scope: !654)
!675 = !DILocation(line: 298, column: 14, scope: !676)
!676 = distinct !DILexicalBlock(scope: !672, file: !383, line: 297, column: 26)
!677 = !DILocation(line: 298, column: 12, scope: !676)
!678 = !DILocation(line: 299, column: 4, scope: !676)
!679 = !DILocation(line: 302, column: 7, scope: !680)
!680 = distinct !DILexicalBlock(scope: !654, file: !383, line: 302, column: 7)
!681 = !DILocation(line: 302, column: 15, scope: !680)
!682 = !DILocation(line: 302, column: 22, scope: !680)
!683 = !DILocation(line: 302, column: 25, scope: !684)
!684 = !DILexicalBlockFile(scope: !680, file: !383, discriminator: 1)
!685 = !DILocation(line: 302, column: 36, scope: !684)
!686 = !DILocation(line: 302, column: 41, scope: !684)
!687 = !DILocation(line: 302, column: 34, scope: !684)
!688 = !DILocation(line: 302, column: 7, scope: !684)
!689 = !DILocation(line: 303, column: 14, scope: !690)
!690 = distinct !DILexicalBlock(scope: !680, file: !383, line: 302, column: 55)
!691 = !DILocation(line: 303, column: 12, scope: !690)
!692 = !DILocation(line: 304, column: 15, scope: !690)
!693 = !DILocation(line: 304, column: 20, scope: !690)
!694 = !DILocation(line: 304, column: 13, scope: !690)
!695 = !DILocation(line: 305, column: 3, scope: !690)
!696 = !DILocation(line: 306, column: 2, scope: !654)
!697 = !DILocation(line: 290, column: 45, scope: !698)
!698 = !DILexicalBlockFile(scope: !650, file: !383, discriminator: 2)
!699 = !DILocation(line: 290, column: 50, scope: !698)
!700 = !DILocation(line: 290, column: 43, scope: !698)
!701 = !DILocation(line: 290, column: 2, scope: !698)
!702 = distinct !{!702, !703}
!703 = !DILocation(line: 290, column: 2, scope: !620)
!704 = !DILocation(line: 308, column: 9, scope: !620)
!705 = !DILocation(line: 308, column: 17, scope: !620)
!706 = !DILocation(line: 308, column: 9, scope: !707)
!707 = !DILexicalBlockFile(scope: !620, file: !383, discriminator: 1)
!708 = !DILocation(line: 309, column: 20, scope: !620)
!709 = !DILocation(line: 309, column: 29, scope: !620)
!710 = !DILocation(line: 309, column: 40, scope: !620)
!711 = !DILocation(line: 309, column: 49, scope: !620)
!712 = !DILocation(line: 310, column: 6, scope: !620)
!713 = !DILocation(line: 310, column: 17, scope: !620)
!714 = !DILocation(line: 309, column: 3, scope: !620)
!715 = !DILocation(line: 308, column: 9, scope: !716)
!716 = !DILexicalBlockFile(scope: !620, file: !383, discriminator: 2)
!717 = !DILocation(line: 308, column: 9, scope: !718)
!718 = !DILexicalBlockFile(scope: !620, file: !383, discriminator: 3)
!719 = !DILocation(line: 308, column: 2, scope: !718)
!720 = distinct !DISubprogram(name: "create_addr_conn", scope: !383, file: !383, line: 221, type: !541, isLocal: true, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !394)
!721 = !DILocalVariable(name: "chat_type", arg: 1, scope: !720, file: !383, line: 221, type: !52)
!722 = !DILocation(line: 221, column: 22, scope: !720)
!723 = !DILocalVariable(name: "address", arg: 2, scope: !720, file: !383, line: 221, type: !308)
!724 = !DILocation(line: 221, column: 45, scope: !720)
!725 = !DILocalVariable(name: "port", arg: 3, scope: !720, file: !383, line: 221, type: !52)
!726 = !DILocation(line: 221, column: 58, scope: !720)
!727 = !DILocalVariable(name: "chatnet", arg: 4, scope: !720, file: !383, line: 222, type: !308)
!728 = !DILocation(line: 222, column: 16, scope: !720)
!729 = !DILocalVariable(name: "password", arg: 5, scope: !720, file: !383, line: 222, type: !308)
!730 = !DILocation(line: 222, column: 37, scope: !720)
!731 = !DILocalVariable(name: "nick", arg: 6, scope: !720, file: !383, line: 223, type: !308)
!732 = !DILocation(line: 223, column: 16, scope: !720)
!733 = !DILocalVariable(name: "proto", scope: !720, file: !383, line: 225, type: !734)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64, align: 64)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAT_PROTOCOL_REC", file: !46, line: 105, baseType: !736)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHAT_PROTOCOL_REC", file: !737, line: 4, size: 832, align: 64, elements: !738)
!737 = !DIFile(filename: "chat-protocols.h", directory: "/home/lichi/Desktop/irssi/task1")
!738 = !{!739, !740, !741, !742, !743, !744, !745, !749, !753, !760, !764, !768, !868, !872, !876}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !736, file: !737, line: 5, baseType: !52, size: 32, align: 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "not_initialized", scope: !736, file: !737, line: 7, baseType: !97, size: 1, align: 32, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "case_insensitive", scope: !736, file: !737, line: 8, baseType: !97, size: 1, align: 32, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !736, file: !737, line: 10, baseType: !56, size: 64, align: 64, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "fullname", scope: !736, file: !737, line: 11, baseType: !56, size: 64, align: 64, offset: 128)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !736, file: !737, line: 12, baseType: !56, size: 64, align: 64, offset: 192)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "create_chatnet", scope: !736, file: !737, line: 14, baseType: !746, size: 64, align: 64, offset: 256)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64, align: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!360}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "create_server_setup", scope: !736, file: !737, line: 15, baseType: !750, size: 64, align: 64, offset: 320)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64, align: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!310}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "create_channel_setup", scope: !736, file: !737, line: 16, baseType: !754, size: 64, align: 64, offset: 384)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64, align: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{!757}
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64, align: 64)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_SETUP_REC", file: !46, line: 115, baseType: !759)
!759 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_SETUP_REC", file: !46, line: 115, flags: DIFlagFwdDecl)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "create_server_connect", scope: !736, file: !737, line: 17, baseType: !761, size: 64, align: 64, offset: 448)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64, align: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!44}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_server_connect", scope: !736, file: !737, line: 18, baseType: !765, size: 64, align: 64, offset: 512)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64, align: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{null, !44}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "server_init_connect", scope: !736, file: !737, line: 20, baseType: !769, size: 64, align: 64, offset: 576)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64, align: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{!772, !44}
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64, align: 64)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !46, line: 107, baseType: !774)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !48, line: 30, size: 2240, align: 64, elements: !775)
!775 = !{!776, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !794, !795, !799, !800, !801, !805, !806, !807, !808, !809, !810, !811, !812, !813, !820, !821, !822, !823, !824, !828, !832, !836, !840, !844, !849, !856, !863, !867}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !774, file: !777, line: 3, baseType: !52, size: 32, align: 32)
!777 = !DIFile(filename: "server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!778 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !774, file: !777, line: 4, baseType: !52, size: 32, align: 32, offset: 32)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !774, file: !777, line: 6, baseType: !52, size: 32, align: 32, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !774, file: !777, line: 8, baseType: !44, size: 64, align: 64, offset: 128)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !774, file: !777, line: 9, baseType: !337, size: 64, align: 64, offset: 192)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !774, file: !777, line: 10, baseType: !337, size: 64, align: 64, offset: 256)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !774, file: !777, line: 12, baseType: !56, size: 64, align: 64, offset: 320)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !774, file: !777, line: 13, baseType: !56, size: 64, align: 64, offset: 384)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !774, file: !777, line: 15, baseType: !97, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !774, file: !777, line: 16, baseType: !97, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !774, file: !777, line: 17, baseType: !97, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !774, file: !777, line: 18, baseType: !97, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !774, file: !777, line: 19, baseType: !97, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !774, file: !777, line: 21, baseType: !791, size: 64, align: 64, offset: 512)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64, align: 64)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !46, line: 102, baseType: !793)
!793 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !46, line: 102, flags: DIFlagFwdDecl)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !774, file: !777, line: 22, baseType: !52, size: 32, align: 32, offset: 576)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !774, file: !777, line: 25, baseType: !796, size: 128, align: 64, offset: 640)
!796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 128, align: 64, elements: !797)
!797 = !{!798}
!798 = !DISubrange(count: 2)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !774, file: !777, line: 26, baseType: !52, size: 32, align: 32, offset: 768)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !774, file: !777, line: 27, baseType: !52, size: 32, align: 32, offset: 800)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !774, file: !777, line: 29, baseType: !802, size: 64, align: 64, offset: 832)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64, align: 64)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !46, line: 103, baseType: !804)
!804 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !46, line: 103, flags: DIFlagFwdDecl)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !774, file: !777, line: 30, baseType: !349, size: 64, align: 64, offset: 896)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !774, file: !777, line: 32, baseType: !56, size: 64, align: 64, offset: 960)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !774, file: !777, line: 33, baseType: !56, size: 64, align: 64, offset: 1024)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !774, file: !777, line: 34, baseType: !56, size: 64, align: 64, offset: 1088)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !774, file: !777, line: 35, baseType: !97, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !774, file: !777, line: 36, baseType: !97, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !774, file: !777, line: 37, baseType: !97, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !774, file: !777, line: 38, baseType: !97, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !774, file: !777, line: 40, baseType: !814, size: 128, align: 64, offset: 1216)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !120, line: 504, baseType: !815)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !120, line: 506, size: 128, align: 64, elements: !816)
!816 = !{!817, !819}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !815, file: !120, line: 508, baseType: !818, size: 64, align: 64)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !120, line: 48, baseType: !160)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !815, file: !120, line: 509, baseType: !818, size: 64, align: 64, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !774, file: !777, line: 41, baseType: !337, size: 64, align: 64, offset: 1344)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !774, file: !777, line: 42, baseType: !52, size: 32, align: 32, offset: 1408)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !774, file: !777, line: 44, baseType: !237, size: 64, align: 64, offset: 1472)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !774, file: !777, line: 45, baseType: !237, size: 64, align: 64, offset: 1536)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !774, file: !777, line: 53, baseType: !825, size: 64, align: 64, offset: 1600)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64, align: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{null, !772, !308, !52}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !774, file: !777, line: 55, baseType: !829, size: 64, align: 64, offset: 1664)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64, align: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!52, !772, !57}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !774, file: !777, line: 57, baseType: !833, size: 64, align: 64, offset: 1728)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64, align: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!52, !772, !308}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !774, file: !777, line: 60, baseType: !837, size: 64, align: 64, offset: 1792)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64, align: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{!308, !772}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !774, file: !777, line: 62, baseType: !841, size: 64, align: 64, offset: 1856)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64, align: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{null, !772, !308, !308, !52}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !774, file: !777, line: 65, baseType: !845, size: 64, align: 64, offset: 1920)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64, align: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{!848, !772, !308, !308}
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !774, file: !777, line: 69, baseType: !850, size: 64, align: 64, offset: 1984)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64, align: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{!853, !772, !308}
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64, align: 64)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !46, line: 109, baseType: !855)
!855 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !46, line: 109, flags: DIFlagFwdDecl)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !774, file: !777, line: 70, baseType: !857, size: 64, align: 64, offset: 2048)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64, align: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!860, !772, !308}
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64, align: 64)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !46, line: 110, baseType: !862)
!862 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !46, line: 110, flags: DIFlagFwdDecl)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !774, file: !777, line: 71, baseType: !864, size: 64, align: 64, offset: 2112)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64, align: 64)
!865 = !DISubroutineType(types: !866)
!866 = !{!52, !308, !308}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !774, file: !777, line: 73, baseType: !864, size: 64, align: 64, offset: 2176)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "server_connect", scope: !736, file: !737, line: 21, baseType: !869, size: 64, align: 64, offset: 640)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64, align: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{null, !772}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "channel_create", scope: !736, file: !737, line: 22, baseType: !873, size: 64, align: 64, offset: 704)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64, align: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{!853, !772, !308, !308, !52}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "query_create", scope: !736, file: !737, line: 24, baseType: !877, size: 64, align: 64, offset: 768)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64, align: 64)
!878 = !DISubroutineType(types: !879)
!879 = !{!860, !308, !308, !52}
!880 = !DILocation(line: 225, column: 28, scope: !720)
!881 = !DILocalVariable(name: "conn", scope: !720, file: !383, line: 226, type: !44)
!882 = !DILocation(line: 226, column: 22, scope: !720)
!883 = !DILocalVariable(name: "sserver", scope: !720, file: !383, line: 227, type: !310)
!884 = !DILocation(line: 227, column: 20, scope: !720)
!885 = !DILocalVariable(name: "chatnetrec", scope: !720, file: !383, line: 228, type: !360)
!886 = !DILocation(line: 228, column: 15, scope: !720)
!887 = !DILocation(line: 230, column: 2, scope: !720)
!888 = distinct !{!888, !887}
!889 = !DILocation(line: 230, column: 10, scope: !890)
!890 = !DILexicalBlockFile(scope: !891, file: !383, discriminator: 1)
!891 = distinct !DILexicalBlock(scope: !892, file: !383, line: 230, column: 10)
!892 = distinct !DILexicalBlock(scope: !720, file: !383, line: 230, column: 4)
!893 = !DILocation(line: 230, column: 18, scope: !890)
!894 = !DILocation(line: 230, column: 5, scope: !895)
!895 = !DILexicalBlockFile(scope: !896, file: !383, discriminator: 2)
!896 = distinct !DILexicalBlock(scope: !891, file: !383, line: 230, column: 3)
!897 = !DILocation(line: 230, column: 14, scope: !898)
!898 = !DILexicalBlockFile(scope: !899, file: !383, discriminator: 3)
!899 = distinct !DILexicalBlock(scope: !891, file: !383, line: 230, column: 12)
!900 = !DILocation(line: 230, column: 102, scope: !898)
!901 = !DILocation(line: 230, column: 7, scope: !902)
!902 = !DILexicalBlockFile(scope: !892, file: !383, discriminator: 4)
!903 = !DILocation(line: 232, column: 30, scope: !720)
!904 = !DILocation(line: 232, column: 39, scope: !720)
!905 = !DILocation(line: 232, column: 45, scope: !720)
!906 = !DILocation(line: 232, column: 12, scope: !720)
!907 = !DILocation(line: 232, column: 10, scope: !720)
!908 = !DILocation(line: 233, column: 6, scope: !909)
!909 = distinct !DILexicalBlock(scope: !720, file: !383, line: 233, column: 6)
!910 = !DILocation(line: 233, column: 14, scope: !909)
!911 = !DILocation(line: 233, column: 6, scope: !720)
!912 = !DILocation(line: 234, column: 7, scope: !913)
!913 = distinct !DILexicalBlock(scope: !914, file: !383, line: 234, column: 7)
!914 = distinct !DILexicalBlock(scope: !909, file: !383, line: 233, column: 22)
!915 = !DILocation(line: 234, column: 17, scope: !913)
!916 = !DILocation(line: 234, column: 7, scope: !914)
!917 = !DILocation(line: 235, column: 16, scope: !913)
!918 = !DILocation(line: 235, column: 25, scope: !913)
!919 = !DILocation(line: 235, column: 14, scope: !913)
!920 = !DILocation(line: 235, column: 4, scope: !913)
!921 = !DILocation(line: 236, column: 12, scope: !922)
!922 = distinct !DILexicalBlock(scope: !913, file: !383, line: 236, column: 12)
!923 = !DILocation(line: 236, column: 25, scope: !922)
!924 = !DILocation(line: 236, column: 34, scope: !922)
!925 = !DILocation(line: 236, column: 22, scope: !922)
!926 = !DILocation(line: 236, column: 12, scope: !913)
!927 = !DILocation(line: 237, column: 33, scope: !922)
!928 = !DILocation(line: 237, column: 25, scope: !922)
!929 = !DILocation(line: 238, column: 2, scope: !914)
!930 = !DILocation(line: 240, column: 10, scope: !720)
!931 = !DILocation(line: 240, column: 20, scope: !720)
!932 = !DILocation(line: 240, column: 49, scope: !933)
!933 = !DILexicalBlockFile(scope: !720, file: !383, discriminator: 1)
!934 = !DILocation(line: 240, column: 27, scope: !933)
!935 = !DILocation(line: 240, column: 10, scope: !933)
!936 = !DILocation(line: 241, column: 17, scope: !720)
!937 = !DILocation(line: 240, column: 10, scope: !938)
!938 = !DILexicalBlockFile(scope: !720, file: !383, discriminator: 2)
!939 = !DILocation(line: 240, column: 10, scope: !940)
!940 = !DILexicalBlockFile(scope: !720, file: !383, discriminator: 3)
!941 = !DILocation(line: 240, column: 8, scope: !940)
!942 = !DILocation(line: 243, column: 9, scope: !720)
!943 = !DILocation(line: 243, column: 16, scope: !720)
!944 = !DILocation(line: 243, column: 7, scope: !720)
!945 = !DILocation(line: 244, column: 21, scope: !720)
!946 = !DILocation(line: 244, column: 2, scope: !720)
!947 = !DILocation(line: 246, column: 20, scope: !720)
!948 = !DILocation(line: 246, column: 27, scope: !720)
!949 = !DILocation(line: 246, column: 2, scope: !720)
!950 = !DILocation(line: 246, column: 8, scope: !720)
!951 = !DILocation(line: 246, column: 18, scope: !720)
!952 = !DILocation(line: 247, column: 13, scope: !953)
!953 = distinct !DILexicalBlock(scope: !720, file: !383, line: 247, column: 13)
!954 = !DILocation(line: 247, column: 21, scope: !953)
!955 = !DILocation(line: 247, column: 28, scope: !953)
!956 = !DILocation(line: 247, column: 32, scope: !957)
!957 = !DILexicalBlockFile(scope: !953, file: !383, discriminator: 1)
!958 = !DILocation(line: 247, column: 31, scope: !957)
!959 = !DILocation(line: 247, column: 40, scope: !957)
!960 = !DILocation(line: 247, column: 13, scope: !957)
!961 = !DILocation(line: 248, column: 28, scope: !953)
!962 = !DILocation(line: 248, column: 19, scope: !953)
!963 = !DILocation(line: 248, column: 3, scope: !953)
!964 = !DILocation(line: 248, column: 9, scope: !953)
!965 = !DILocation(line: 248, column: 17, scope: !953)
!966 = !DILocation(line: 251, column: 20, scope: !720)
!967 = !DILocation(line: 251, column: 26, scope: !720)
!968 = !DILocation(line: 251, column: 35, scope: !720)
!969 = !DILocation(line: 251, column: 2, scope: !720)
!970 = !DILocation(line: 254, column: 15, scope: !720)
!971 = !DILocation(line: 254, column: 23, scope: !720)
!972 = !DILocation(line: 254, column: 45, scope: !933)
!973 = !DILocation(line: 254, column: 32, scope: !933)
!974 = !DILocation(line: 254, column: 15, scope: !933)
!975 = !DILocation(line: 255, column: 4, scope: !720)
!976 = !DILocation(line: 255, column: 12, scope: !720)
!977 = !DILocation(line: 255, column: 19, scope: !720)
!978 = !DILocation(line: 255, column: 22, scope: !933)
!979 = !DILocation(line: 255, column: 31, scope: !933)
!980 = !DILocation(line: 255, column: 39, scope: !933)
!981 = !DILocation(line: 255, column: 4, scope: !933)
!982 = !DILocation(line: 255, column: 4, scope: !938)
!983 = !DILocation(line: 256, column: 17, scope: !720)
!984 = !DILocation(line: 256, column: 26, scope: !720)
!985 = !DILocation(line: 256, column: 4, scope: !720)
!986 = !DILocation(line: 255, column: 4, scope: !940)
!987 = !DILocation(line: 255, column: 4, scope: !988)
!988 = !DILexicalBlockFile(scope: !720, file: !383, discriminator: 4)
!989 = !DILocation(line: 254, column: 15, scope: !938)
!990 = !DILocation(line: 254, column: 15, scope: !940)
!991 = !DILocation(line: 254, column: 13, scope: !940)
!992 = !DILocation(line: 257, column: 6, scope: !993)
!993 = distinct !DILexicalBlock(scope: !720, file: !383, line: 257, column: 6)
!994 = !DILocation(line: 257, column: 17, scope: !993)
!995 = !DILocation(line: 257, column: 6, scope: !720)
!996 = !DILocation(line: 258, column: 29, scope: !993)
!997 = !DILocation(line: 258, column: 35, scope: !993)
!998 = !DILocation(line: 258, column: 3, scope: !993)
!999 = !DILocation(line: 261, column: 6, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !720, file: !383, line: 261, column: 6)
!1001 = !DILocation(line: 261, column: 14, scope: !1000)
!1002 = !DILocation(line: 261, column: 6, scope: !720)
!1003 = !DILocation(line: 262, column: 28, scope: !1000)
!1004 = !DILocation(line: 262, column: 34, scope: !1000)
!1005 = !DILocation(line: 262, column: 3, scope: !1000)
!1006 = !DILocation(line: 265, column: 6, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !720, file: !383, line: 265, column: 6)
!1008 = !DILocation(line: 265, column: 15, scope: !1007)
!1009 = !DILocation(line: 265, column: 19, scope: !1010)
!1010 = !DILexicalBlockFile(scope: !1007, file: !383, discriminator: 1)
!1011 = !DILocation(line: 265, column: 18, scope: !1010)
!1012 = !DILocation(line: 265, column: 6, scope: !1010)
!1013 = !DILocation(line: 266, column: 10, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1007, file: !383, line: 265, column: 29)
!1015 = !DILocation(line: 266, column: 16, scope: !1014)
!1016 = !DILocation(line: 266, column: 3, scope: !1014)
!1017 = !DILocation(line: 267, column: 29, scope: !1014)
!1018 = !DILocation(line: 267, column: 20, scope: !1014)
!1019 = !DILocation(line: 267, column: 3, scope: !1014)
!1020 = !DILocation(line: 267, column: 9, scope: !1014)
!1021 = !DILocation(line: 267, column: 18, scope: !1014)
!1022 = !DILocation(line: 268, column: 2, scope: !1014)
!1023 = !DILocation(line: 269, column: 6, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !720, file: !383, line: 269, column: 6)
!1025 = !DILocation(line: 269, column: 11, scope: !1024)
!1026 = !DILocation(line: 269, column: 15, scope: !1027)
!1027 = !DILexicalBlockFile(scope: !1024, file: !383, discriminator: 1)
!1028 = !DILocation(line: 269, column: 14, scope: !1027)
!1029 = !DILocation(line: 269, column: 6, scope: !1027)
!1030 = !DILocation(line: 270, column: 10, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1024, file: !383, line: 269, column: 21)
!1032 = !DILocation(line: 270, column: 16, scope: !1031)
!1033 = !DILocation(line: 270, column: 3, scope: !1031)
!1034 = !DILocation(line: 271, column: 25, scope: !1031)
!1035 = !DILocation(line: 271, column: 16, scope: !1031)
!1036 = !DILocation(line: 271, column: 3, scope: !1031)
!1037 = !DILocation(line: 271, column: 9, scope: !1031)
!1038 = !DILocation(line: 271, column: 14, scope: !1031)
!1039 = !DILocation(line: 272, column: 2, scope: !1031)
!1040 = !DILocation(line: 274, column: 9, scope: !720)
!1041 = !DILocation(line: 274, column: 2, scope: !720)
!1042 = !DILocation(line: 275, column: 1, scope: !720)
!1043 = distinct !DISubprogram(name: "server_setup_find", scope: !383, file: !383, line: 342, type: !1044, isLocal: false, isDefinition: true, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !394)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!310, !308, !52, !308}
!1046 = !DILocalVariable(name: "address", arg: 1, scope: !1043, file: !383, line: 342, type: !308)
!1047 = !DILocation(line: 342, column: 49, scope: !1043)
!1048 = !DILocalVariable(name: "port", arg: 2, scope: !1043, file: !383, line: 342, type: !52)
!1049 = !DILocation(line: 342, column: 62, scope: !1043)
!1050 = !DILocalVariable(name: "chatnet", arg: 3, scope: !1043, file: !383, line: 343, type: !308)
!1051 = !DILocation(line: 343, column: 21, scope: !1043)
!1052 = !DILocalVariable(name: "server", scope: !1043, file: !383, line: 345, type: !310)
!1053 = !DILocation(line: 345, column: 20, scope: !1043)
!1054 = !DILocalVariable(name: "tmp", scope: !1043, file: !383, line: 346, type: !237)
!1055 = !DILocation(line: 346, column: 10, scope: !1043)
!1056 = !DILocation(line: 348, column: 2, scope: !1043)
!1057 = distinct !{!1057, !1056}
!1058 = !DILocation(line: 348, column: 10, scope: !1059)
!1059 = !DILexicalBlockFile(scope: !1060, file: !383, discriminator: 1)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !383, line: 348, column: 10)
!1061 = distinct !DILexicalBlock(scope: !1043, file: !383, line: 348, column: 4)
!1062 = !DILocation(line: 348, column: 18, scope: !1059)
!1063 = !DILocation(line: 348, column: 5, scope: !1064)
!1064 = !DILexicalBlockFile(scope: !1065, file: !383, discriminator: 2)
!1065 = distinct !DILexicalBlock(scope: !1060, file: !383, line: 348, column: 3)
!1066 = !DILocation(line: 348, column: 14, scope: !1067)
!1067 = !DILexicalBlockFile(scope: !1068, file: !383, discriminator: 3)
!1068 = distinct !DILexicalBlock(scope: !1060, file: !383, line: 348, column: 12)
!1069 = !DILocation(line: 348, column: 102, scope: !1067)
!1070 = !DILocation(line: 348, column: 7, scope: !1071)
!1071 = !DILexicalBlockFile(scope: !1061, file: !383, discriminator: 4)
!1072 = !DILocation(line: 350, column: 9, scope: !1043)
!1073 = !DILocation(line: 351, column: 13, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1043, file: !383, line: 351, column: 2)
!1075 = !DILocation(line: 351, column: 11, scope: !1074)
!1076 = !DILocation(line: 351, column: 7, scope: !1074)
!1077 = !DILocation(line: 351, column: 27, scope: !1078)
!1078 = !DILexicalBlockFile(scope: !1079, file: !383, discriminator: 1)
!1079 = distinct !DILexicalBlock(scope: !1074, file: !383, line: 351, column: 2)
!1080 = !DILocation(line: 351, column: 31, scope: !1078)
!1081 = !DILocation(line: 351, column: 2, scope: !1078)
!1082 = !DILocalVariable(name: "rec", scope: !1083, file: !383, line: 352, type: !310)
!1083 = distinct !DILexicalBlock(scope: !1079, file: !383, line: 351, column: 56)
!1084 = !DILocation(line: 352, column: 21, scope: !1083)
!1085 = !DILocation(line: 352, column: 27, scope: !1083)
!1086 = !DILocation(line: 352, column: 32, scope: !1083)
!1087 = !DILocation(line: 354, column: 26, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1083, file: !383, line: 354, column: 7)
!1089 = !DILocation(line: 354, column: 31, scope: !1088)
!1090 = !DILocation(line: 354, column: 40, scope: !1088)
!1091 = !DILocation(line: 354, column: 7, scope: !1088)
!1092 = !DILocation(line: 354, column: 49, scope: !1088)
!1093 = !DILocation(line: 354, column: 54, scope: !1088)
!1094 = !DILocation(line: 355, column: 8, scope: !1088)
!1095 = !DILocation(line: 355, column: 16, scope: !1088)
!1096 = !DILocation(line: 355, column: 23, scope: !1088)
!1097 = !DILocation(line: 355, column: 26, scope: !1098)
!1098 = !DILexicalBlockFile(scope: !1088, file: !383, discriminator: 1)
!1099 = !DILocation(line: 355, column: 31, scope: !1098)
!1100 = !DILocation(line: 355, column: 39, scope: !1098)
!1101 = !DILocation(line: 355, column: 47, scope: !1098)
!1102 = !DILocation(line: 356, column: 27, scope: !1088)
!1103 = !DILocation(line: 356, column: 32, scope: !1088)
!1104 = !DILocation(line: 356, column: 41, scope: !1088)
!1105 = !DILocation(line: 356, column: 8, scope: !1088)
!1106 = !DILocation(line: 356, column: 50, scope: !1088)
!1107 = !DILocation(line: 354, column: 7, scope: !1108)
!1108 = !DILexicalBlockFile(scope: !1083, file: !383, discriminator: 1)
!1109 = !DILocation(line: 357, column: 13, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1088, file: !383, line: 356, column: 57)
!1111 = !DILocation(line: 357, column: 11, scope: !1110)
!1112 = !DILocation(line: 358, column: 8, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1110, file: !383, line: 358, column: 8)
!1114 = !DILocation(line: 358, column: 13, scope: !1113)
!1115 = !DILocation(line: 358, column: 21, scope: !1113)
!1116 = !DILocation(line: 358, column: 18, scope: !1113)
!1117 = !DILocation(line: 358, column: 8, scope: !1110)
!1118 = !DILocation(line: 359, column: 5, scope: !1113)
!1119 = !DILocation(line: 360, column: 3, scope: !1110)
!1120 = !DILocation(line: 361, column: 2, scope: !1083)
!1121 = !DILocation(line: 351, column: 45, scope: !1122)
!1122 = !DILexicalBlockFile(scope: !1079, file: !383, discriminator: 2)
!1123 = !DILocation(line: 351, column: 50, scope: !1122)
!1124 = !DILocation(line: 351, column: 43, scope: !1122)
!1125 = !DILocation(line: 351, column: 2, scope: !1122)
!1126 = distinct !{!1126, !1127}
!1127 = !DILocation(line: 351, column: 2, scope: !1043)
!1128 = !DILocation(line: 363, column: 9, scope: !1043)
!1129 = !DILocation(line: 363, column: 2, scope: !1043)
!1130 = !DILocation(line: 364, column: 1, scope: !1043)
!1131 = distinct !DISubprogram(name: "server_setup_add", scope: !383, file: !383, line: 580, type: !1132, isLocal: false, isDefinition: true, scopeLine: 581, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !394)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{null, !310}
!1134 = !DILocalVariable(name: "rec", arg: 1, scope: !1131, file: !383, line: 580, type: !310)
!1135 = !DILocation(line: 580, column: 41, scope: !1131)
!1136 = !DILocation(line: 582, column: 14, scope: !1131)
!1137 = !DILocation(line: 582, column: 2, scope: !1131)
!1138 = !DILocation(line: 582, column: 7, scope: !1131)
!1139 = !DILocation(line: 582, column: 12, scope: !1131)
!1140 = !DILocation(line: 583, column: 19, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1131, file: !383, line: 583, column: 6)
!1142 = !DILocation(line: 583, column: 33, scope: !1141)
!1143 = !DILocation(line: 583, column: 6, scope: !1141)
!1144 = !DILocation(line: 583, column: 38, scope: !1141)
!1145 = !DILocation(line: 583, column: 6, scope: !1131)
!1146 = !DILocation(line: 584, column: 33, scope: !1141)
!1147 = !DILocation(line: 584, column: 47, scope: !1141)
!1148 = !DILocation(line: 584, column: 18, scope: !1141)
!1149 = !DILocation(line: 584, column: 16, scope: !1141)
!1150 = !DILocation(line: 584, column: 3, scope: !1141)
!1151 = !DILocation(line: 585, column: 20, scope: !1131)
!1152 = !DILocation(line: 585, column: 2, scope: !1131)
!1153 = !DILocation(line: 587, column: 41, scope: !1131)
!1154 = !DILocation(line: 587, column: 2, scope: !1131)
!1155 = !DILocation(line: 588, column: 1, scope: !1131)
!1156 = distinct !DISubprogram(name: "server_setup_save", scope: !383, file: !383, line: 490, type: !1132, isLocal: true, isDefinition: true, scopeLine: 491, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !394)
!1157 = !DILocalVariable(name: "rec", arg: 1, scope: !1156, file: !383, line: 490, type: !310)
!1158 = !DILocation(line: 490, column: 49, scope: !1156)
!1159 = !DILocalVariable(name: "parent_node", scope: !1156, file: !383, line: 492, type: !1160)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64, align: 64)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "CONFIG_NODE", file: !36, line: 17, baseType: !1162)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CONFIG_NODE", file: !36, line: 20, size: 192, align: 64, elements: !1163)
!1163 = !{!1164, !1165, !1166}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1162, file: !36, line: 21, baseType: !52, size: 32, align: 32)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1162, file: !36, line: 22, baseType: !56, size: 64, align: 64, offset: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1162, file: !36, line: 23, baseType: !176, size: 64, align: 64, offset: 128)
!1167 = !DILocation(line: 492, column: 15, scope: !1156)
!1168 = !DILocalVariable(name: "node", scope: !1156, file: !383, line: 492, type: !1160)
!1169 = !DILocation(line: 492, column: 29, scope: !1156)
!1170 = !DILocalVariable(name: "config_node", scope: !1156, file: !383, line: 493, type: !237)
!1171 = !DILocation(line: 493, column: 10, scope: !1156)
!1172 = !DILocation(line: 495, column: 37, scope: !1156)
!1173 = !DILocation(line: 495, column: 16, scope: !1156)
!1174 = !DILocation(line: 495, column: 14, scope: !1156)
!1175 = !DILocation(line: 498, column: 36, scope: !1156)
!1176 = !DILocation(line: 498, column: 49, scope: !1156)
!1177 = !DILocation(line: 498, column: 56, scope: !1156)
!1178 = !DILocation(line: 498, column: 16, scope: !1156)
!1179 = !DILocation(line: 498, column: 14, scope: !1156)
!1180 = !DILocation(line: 500, column: 6, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1156, file: !383, line: 500, column: 6)
!1182 = !DILocation(line: 500, column: 18, scope: !1181)
!1183 = !DILocation(line: 500, column: 6, scope: !1156)
!1184 = !DILocation(line: 502, column: 10, scope: !1181)
!1185 = !DILocation(line: 502, column: 23, scope: !1181)
!1186 = !DILocation(line: 502, column: 8, scope: !1181)
!1187 = !DILocation(line: 502, column: 3, scope: !1181)
!1188 = !DILocation(line: 505, column: 30, scope: !1181)
!1189 = !DILocation(line: 505, column: 42, scope: !1181)
!1190 = !DILocation(line: 505, column: 10, scope: !1181)
!1191 = !DILocation(line: 505, column: 8, scope: !1181)
!1192 = !DILocation(line: 507, column: 27, scope: !1156)
!1193 = !DILocation(line: 507, column: 39, scope: !1156)
!1194 = !DILocation(line: 507, column: 9, scope: !1156)
!1195 = !DILocation(line: 508, column: 22, scope: !1156)
!1196 = !DILocation(line: 508, column: 34, scope: !1156)
!1197 = !DILocation(line: 508, column: 51, scope: !1156)
!1198 = !DILocation(line: 508, column: 56, scope: !1156)
!1199 = !DILocation(line: 508, column: 2, scope: !1156)
!1200 = !DILocation(line: 509, column: 22, scope: !1156)
!1201 = !DILocation(line: 509, column: 34, scope: !1156)
!1202 = !DILocation(line: 509, column: 51, scope: !1156)
!1203 = !DILocation(line: 509, column: 56, scope: !1156)
!1204 = !DILocation(line: 509, column: 2, scope: !1156)
!1205 = !DILocation(line: 511, column: 22, scope: !1156)
!1206 = !DILocation(line: 511, column: 34, scope: !1156)
!1207 = !DILocation(line: 511, column: 48, scope: !1156)
!1208 = !DILocation(line: 511, column: 53, scope: !1156)
!1209 = !DILocation(line: 511, column: 2, scope: !1156)
!1210 = !DILocation(line: 512, column: 22, scope: !1156)
!1211 = !DILocation(line: 512, column: 34, scope: !1156)
!1212 = !DILocation(line: 512, column: 52, scope: !1156)
!1213 = !DILocation(line: 512, column: 57, scope: !1156)
!1214 = !DILocation(line: 512, column: 2, scope: !1156)
!1215 = !DILocation(line: 514, column: 23, scope: !1156)
!1216 = !DILocation(line: 514, column: 35, scope: !1156)
!1217 = !DILocation(line: 514, column: 52, scope: !1156)
!1218 = !DILocation(line: 514, column: 57, scope: !1156)
!1219 = !DILocation(line: 514, column: 2, scope: !1156)
!1220 = !DILocation(line: 515, column: 22, scope: !1156)
!1221 = !DILocation(line: 515, column: 34, scope: !1156)
!1222 = !DILocation(line: 515, column: 52, scope: !1156)
!1223 = !DILocation(line: 515, column: 57, scope: !1156)
!1224 = !DILocation(line: 515, column: 2, scope: !1156)
!1225 = !DILocation(line: 516, column: 22, scope: !1156)
!1226 = !DILocation(line: 516, column: 34, scope: !1156)
!1227 = !DILocation(line: 516, column: 52, scope: !1156)
!1228 = !DILocation(line: 516, column: 57, scope: !1156)
!1229 = !DILocation(line: 516, column: 2, scope: !1156)
!1230 = !DILocation(line: 517, column: 22, scope: !1156)
!1231 = !DILocation(line: 517, column: 34, scope: !1156)
!1232 = !DILocation(line: 517, column: 52, scope: !1156)
!1233 = !DILocation(line: 517, column: 57, scope: !1156)
!1234 = !DILocation(line: 517, column: 2, scope: !1156)
!1235 = !DILocation(line: 518, column: 23, scope: !1156)
!1236 = !DILocation(line: 518, column: 35, scope: !1156)
!1237 = !DILocation(line: 518, column: 55, scope: !1156)
!1238 = !DILocation(line: 518, column: 60, scope: !1156)
!1239 = !DILocation(line: 518, column: 2, scope: !1156)
!1240 = !DILocation(line: 519, column: 22, scope: !1156)
!1241 = !DILocation(line: 519, column: 34, scope: !1156)
!1242 = !DILocation(line: 519, column: 54, scope: !1156)
!1243 = !DILocation(line: 519, column: 59, scope: !1156)
!1244 = !DILocation(line: 519, column: 2, scope: !1156)
!1245 = !DILocation(line: 520, column: 22, scope: !1156)
!1246 = !DILocation(line: 520, column: 34, scope: !1156)
!1247 = !DILocation(line: 520, column: 54, scope: !1156)
!1248 = !DILocation(line: 520, column: 59, scope: !1156)
!1249 = !DILocation(line: 520, column: 2, scope: !1156)
!1250 = !DILocation(line: 521, column: 22, scope: !1156)
!1251 = !DILocation(line: 521, column: 34, scope: !1156)
!1252 = !DILocation(line: 521, column: 55, scope: !1156)
!1253 = !DILocation(line: 521, column: 60, scope: !1156)
!1254 = !DILocation(line: 521, column: 2, scope: !1156)
!1255 = !DILocation(line: 522, column: 22, scope: !1156)
!1256 = !DILocation(line: 522, column: 34, scope: !1156)
!1257 = !DILocation(line: 522, column: 59, scope: !1156)
!1258 = !DILocation(line: 522, column: 64, scope: !1156)
!1259 = !DILocation(line: 522, column: 2, scope: !1156)
!1260 = !DILocation(line: 523, column: 22, scope: !1156)
!1261 = !DILocation(line: 523, column: 34, scope: !1156)
!1262 = !DILocation(line: 523, column: 61, scope: !1156)
!1263 = !DILocation(line: 523, column: 66, scope: !1156)
!1264 = !DILocation(line: 523, column: 2, scope: !1156)
!1265 = !DILocation(line: 525, column: 22, scope: !1156)
!1266 = !DILocation(line: 525, column: 34, scope: !1156)
!1267 = !DILocation(line: 525, column: 52, scope: !1156)
!1268 = !DILocation(line: 525, column: 57, scope: !1156)
!1269 = !DILocation(line: 525, column: 2, scope: !1156)
!1270 = !DILocation(line: 527, column: 22, scope: !1156)
!1271 = !DILocation(line: 527, column: 34, scope: !1156)
!1272 = !DILocation(line: 527, column: 50, scope: !1156)
!1273 = !DILocation(line: 527, column: 55, scope: !1156)
!1274 = !DILocation(line: 527, column: 62, scope: !1156)
!1275 = !DILocation(line: 527, column: 50, scope: !1276)
!1276 = !DILexicalBlockFile(scope: !1156, file: !383, discriminator: 1)
!1277 = !DILocation(line: 527, column: 13, scope: !1278)
!1278 = !DILexicalBlockFile(scope: !1156, file: !383, discriminator: 2)
!1279 = !DILocation(line: 527, column: 18, scope: !1278)
!1280 = !DILocation(line: 527, column: 25, scope: !1278)
!1281 = !DILocation(line: 527, column: 50, scope: !1278)
!1282 = !DILocation(line: 527, column: 50, scope: !1283)
!1283 = !DILexicalBlockFile(scope: !1156, file: !383, discriminator: 3)
!1284 = !DILocation(line: 527, column: 2, scope: !1283)
!1285 = !DILocation(line: 531, column: 6, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1156, file: !383, line: 531, column: 6)
!1287 = !DILocation(line: 531, column: 11, scope: !1286)
!1288 = !DILocation(line: 531, column: 6, scope: !1156)
!1289 = !DILocation(line: 532, column: 24, scope: !1286)
!1290 = !DILocation(line: 532, column: 36, scope: !1286)
!1291 = !DILocation(line: 532, column: 3, scope: !1286)
!1292 = !DILocation(line: 533, column: 6, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1156, file: !383, line: 533, column: 6)
!1294 = !DILocation(line: 533, column: 11, scope: !1293)
!1295 = !DILocation(line: 533, column: 6, scope: !1156)
!1296 = !DILocation(line: 534, column: 24, scope: !1293)
!1297 = !DILocation(line: 534, column: 36, scope: !1293)
!1298 = !DILocation(line: 534, column: 3, scope: !1293)
!1299 = !DILocation(line: 536, column: 39, scope: !1156)
!1300 = !DILocation(line: 536, column: 44, scope: !1156)
!1301 = !DILocation(line: 536, column: 2, scope: !1156)
!1302 = !DILocation(line: 537, column: 1, scope: !1156)
!1303 = distinct !DISubprogram(name: "server_setup_remove_chatnet", scope: !383, file: !383, line: 590, type: !1304, isLocal: false, isDefinition: true, scopeLine: 591, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !394)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{null, !308}
!1306 = !DILocalVariable(name: "chatnet", arg: 1, scope: !1303, file: !383, line: 590, type: !308)
!1307 = !DILocation(line: 590, column: 46, scope: !1303)
!1308 = !DILocalVariable(name: "tmp", scope: !1303, file: !383, line: 592, type: !237)
!1309 = !DILocation(line: 592, column: 10, scope: !1303)
!1310 = !DILocalVariable(name: "next", scope: !1303, file: !383, line: 592, type: !237)
!1311 = !DILocation(line: 592, column: 16, scope: !1303)
!1312 = !DILocation(line: 594, column: 2, scope: !1303)
!1313 = distinct !{!1313, !1312}
!1314 = !DILocation(line: 594, column: 10, scope: !1315)
!1315 = !DILexicalBlockFile(scope: !1316, file: !383, discriminator: 1)
!1316 = distinct !DILexicalBlock(scope: !1317, file: !383, line: 594, column: 10)
!1317 = distinct !DILexicalBlock(scope: !1303, file: !383, line: 594, column: 4)
!1318 = !DILocation(line: 594, column: 18, scope: !1315)
!1319 = !DILocation(line: 594, column: 5, scope: !1320)
!1320 = !DILexicalBlockFile(scope: !1321, file: !383, discriminator: 2)
!1321 = distinct !DILexicalBlock(scope: !1316, file: !383, line: 594, column: 3)
!1322 = !DILocation(line: 594, column: 14, scope: !1323)
!1323 = !DILexicalBlockFile(scope: !1324, file: !383, discriminator: 3)
!1324 = distinct !DILexicalBlock(scope: !1316, file: !383, line: 594, column: 12)
!1325 = !DILocation(line: 594, column: 102, scope: !1323)
!1326 = !DILocation(line: 594, column: 113, scope: !1327)
!1327 = !DILexicalBlockFile(scope: !1317, file: !383, discriminator: 4)
!1328 = !DILocation(line: 596, column: 13, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1303, file: !383, line: 596, column: 2)
!1330 = !DILocation(line: 596, column: 11, scope: !1329)
!1331 = !DILocation(line: 596, column: 7, scope: !1329)
!1332 = !DILocation(line: 596, column: 27, scope: !1333)
!1333 = !DILexicalBlockFile(scope: !1334, file: !383, discriminator: 1)
!1334 = distinct !DILexicalBlock(scope: !1329, file: !383, line: 596, column: 2)
!1335 = !DILocation(line: 596, column: 31, scope: !1333)
!1336 = !DILocation(line: 596, column: 2, scope: !1333)
!1337 = !DILocalVariable(name: "rec", scope: !1338, file: !383, line: 597, type: !310)
!1338 = distinct !DILexicalBlock(scope: !1334, file: !383, line: 596, column: 51)
!1339 = !DILocation(line: 597, column: 21, scope: !1338)
!1340 = !DILocation(line: 597, column: 27, scope: !1338)
!1341 = !DILocation(line: 597, column: 32, scope: !1338)
!1342 = !DILocation(line: 599, column: 10, scope: !1338)
!1343 = !DILocation(line: 599, column: 15, scope: !1338)
!1344 = !DILocation(line: 599, column: 8, scope: !1338)
!1345 = !DILocation(line: 600, column: 26, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1338, file: !383, line: 600, column: 7)
!1347 = !DILocation(line: 600, column: 31, scope: !1346)
!1348 = !DILocation(line: 600, column: 40, scope: !1346)
!1349 = !DILocation(line: 600, column: 7, scope: !1346)
!1350 = !DILocation(line: 600, column: 49, scope: !1346)
!1351 = !DILocation(line: 600, column: 7, scope: !1338)
!1352 = !DILocation(line: 601, column: 24, scope: !1346)
!1353 = !DILocation(line: 601, column: 4, scope: !1346)
!1354 = !DILocation(line: 602, column: 2, scope: !1338)
!1355 = !DILocation(line: 596, column: 45, scope: !1356)
!1356 = !DILexicalBlockFile(scope: !1334, file: !383, discriminator: 2)
!1357 = !DILocation(line: 596, column: 43, scope: !1356)
!1358 = !DILocation(line: 596, column: 2, scope: !1356)
!1359 = distinct !{!1359, !1360}
!1360 = !DILocation(line: 596, column: 2, scope: !1303)
!1361 = !DILocation(line: 603, column: 1, scope: !1303)
!1362 = distinct !DISubprogram(name: "server_setup_remove", scope: !383, file: !383, line: 605, type: !1132, isLocal: false, isDefinition: true, scopeLine: 606, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !394)
!1363 = !DILocalVariable(name: "rec", arg: 1, scope: !1362, file: !383, line: 605, type: !310)
!1364 = !DILocation(line: 605, column: 44, scope: !1362)
!1365 = !DILocation(line: 607, column: 29, scope: !1362)
!1366 = !DILocation(line: 607, column: 2, scope: !1362)
!1367 = !DILocation(line: 608, column: 23, scope: !1362)
!1368 = !DILocation(line: 608, column: 2, scope: !1362)
!1369 = !DILocation(line: 609, column: 1, scope: !1362)
!1370 = distinct !DISubprogram(name: "server_setup_remove_config", scope: !383, file: !383, line: 539, type: !1132, isLocal: true, isDefinition: true, scopeLine: 540, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !394)
!1371 = !DILocalVariable(name: "rec", arg: 1, scope: !1370, file: !383, line: 539, type: !310)
!1372 = !DILocation(line: 539, column: 58, scope: !1370)
!1373 = !DILocalVariable(name: "parent_node", scope: !1370, file: !383, line: 541, type: !1160)
!1374 = !DILocation(line: 541, column: 15, scope: !1370)
!1375 = !DILocalVariable(name: "config_node", scope: !1370, file: !383, line: 542, type: !237)
!1376 = !DILocation(line: 542, column: 10, scope: !1370)
!1377 = !DILocation(line: 544, column: 37, scope: !1370)
!1378 = !DILocation(line: 544, column: 16, scope: !1370)
!1379 = !DILocation(line: 544, column: 14, scope: !1370)
!1380 = !DILocation(line: 546, column: 6, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1370, file: !383, line: 546, column: 6)
!1382 = !DILocation(line: 546, column: 18, scope: !1381)
!1383 = !DILocation(line: 546, column: 6, scope: !1370)
!1384 = !DILocation(line: 547, column: 3, scope: !1381)
!1385 = !DILocation(line: 550, column: 36, scope: !1370)
!1386 = !DILocation(line: 550, column: 49, scope: !1370)
!1387 = !DILocation(line: 550, column: 56, scope: !1370)
!1388 = !DILocation(line: 550, column: 16, scope: !1370)
!1389 = !DILocation(line: 550, column: 14, scope: !1370)
!1390 = !DILocation(line: 553, column: 6, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1370, file: !383, line: 553, column: 6)
!1392 = !DILocation(line: 553, column: 18, scope: !1391)
!1393 = !DILocation(line: 553, column: 6, scope: !1370)
!1394 = !DILocation(line: 555, column: 22, scope: !1391)
!1395 = !DILocation(line: 555, column: 34, scope: !1391)
!1396 = !DILocation(line: 555, column: 47, scope: !1391)
!1397 = !DILocation(line: 555, column: 60, scope: !1391)
!1398 = !DILocation(line: 555, column: 3, scope: !1391)
!1399 = !DILocation(line: 556, column: 1, scope: !1370)
!1400 = distinct !DISubprogram(name: "server_setup_destroy", scope: !383, file: !383, line: 558, type: !1132, isLocal: true, isDefinition: true, scopeLine: 559, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !394)
!1401 = !DILocalVariable(name: "rec", arg: 1, scope: !1400, file: !383, line: 558, type: !310)
!1402 = !DILocation(line: 558, column: 52, scope: !1400)
!1403 = !DILocation(line: 560, column: 32, scope: !1400)
!1404 = !DILocation(line: 560, column: 46, scope: !1400)
!1405 = !DILocation(line: 560, column: 17, scope: !1400)
!1406 = !DILocation(line: 560, column: 15, scope: !1400)
!1407 = !DILocation(line: 561, column: 43, scope: !1400)
!1408 = !DILocation(line: 561, column: 2, scope: !1400)
!1409 = !DILocation(line: 563, column: 9, scope: !1400)
!1410 = !DILocation(line: 563, column: 14, scope: !1400)
!1411 = !DILocation(line: 563, column: 2, scope: !1400)
!1412 = !DILocation(line: 564, column: 9, scope: !1400)
!1413 = !DILocation(line: 564, column: 14, scope: !1400)
!1414 = !DILocation(line: 564, column: 2, scope: !1400)
!1415 = !DILocation(line: 565, column: 9, scope: !1400)
!1416 = !DILocation(line: 565, column: 14, scope: !1400)
!1417 = !DILocation(line: 565, column: 2, scope: !1400)
!1418 = !DILocation(line: 566, column: 9, scope: !1400)
!1419 = !DILocation(line: 566, column: 14, scope: !1400)
!1420 = !DILocation(line: 566, column: 2, scope: !1400)
!1421 = !DILocation(line: 567, column: 9, scope: !1400)
!1422 = !DILocation(line: 567, column: 14, scope: !1400)
!1423 = !DILocation(line: 567, column: 2, scope: !1400)
!1424 = !DILocation(line: 568, column: 9, scope: !1400)
!1425 = !DILocation(line: 568, column: 14, scope: !1400)
!1426 = !DILocation(line: 568, column: 2, scope: !1400)
!1427 = !DILocation(line: 569, column: 9, scope: !1400)
!1428 = !DILocation(line: 569, column: 14, scope: !1400)
!1429 = !DILocation(line: 569, column: 2, scope: !1400)
!1430 = !DILocation(line: 570, column: 9, scope: !1400)
!1431 = !DILocation(line: 570, column: 14, scope: !1400)
!1432 = !DILocation(line: 570, column: 2, scope: !1400)
!1433 = !DILocation(line: 571, column: 9, scope: !1400)
!1434 = !DILocation(line: 571, column: 14, scope: !1400)
!1435 = !DILocation(line: 571, column: 2, scope: !1400)
!1436 = !DILocation(line: 572, column: 9, scope: !1400)
!1437 = !DILocation(line: 572, column: 14, scope: !1400)
!1438 = !DILocation(line: 572, column: 2, scope: !1400)
!1439 = !DILocation(line: 573, column: 9, scope: !1400)
!1440 = !DILocation(line: 573, column: 14, scope: !1400)
!1441 = !DILocation(line: 573, column: 2, scope: !1400)
!1442 = !DILocation(line: 574, column: 9, scope: !1400)
!1443 = !DILocation(line: 574, column: 14, scope: !1400)
!1444 = !DILocation(line: 574, column: 2, scope: !1400)
!1445 = !DILocation(line: 575, column: 9, scope: !1400)
!1446 = !DILocation(line: 575, column: 14, scope: !1400)
!1447 = !DILocation(line: 575, column: 2, scope: !1400)
!1448 = !DILocation(line: 576, column: 9, scope: !1400)
!1449 = !DILocation(line: 576, column: 14, scope: !1400)
!1450 = !DILocation(line: 576, column: 2, scope: !1400)
!1451 = !DILocation(line: 577, column: 9, scope: !1400)
!1452 = !DILocation(line: 577, column: 2, scope: !1400)
!1453 = !DILocation(line: 578, column: 1, scope: !1400)
!1454 = distinct !DISubprogram(name: "servers_setup_init", scope: !383, file: !383, line: 640, type: !225, isLocal: false, isDefinition: true, scopeLine: 641, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !394)
!1455 = !DILocation(line: 642, column: 2, scope: !1454)
!1456 = !DILocation(line: 644, column: 2, scope: !1454)
!1457 = !DILocation(line: 645, column: 2, scope: !1454)
!1458 = !DILocation(line: 646, column: 2, scope: !1454)
!1459 = !DILocation(line: 648, column: 2, scope: !1454)
!1460 = !DILocation(line: 649, column: 2, scope: !1454)
!1461 = !DILocation(line: 650, column: 2, scope: !1454)
!1462 = !DILocation(line: 651, column: 2, scope: !1454)
!1463 = !DILocation(line: 652, column: 2, scope: !1454)
!1464 = !DILocation(line: 653, column: 2, scope: !1454)
!1465 = !DILocation(line: 655, column: 22, scope: !1454)
!1466 = !DILocation(line: 656, column: 36, scope: !1454)
!1467 = !DILocation(line: 656, column: 18, scope: !1454)
!1468 = !DILocation(line: 657, column: 25, scope: !1454)
!1469 = !DILocation(line: 658, column: 2, scope: !1454)
!1470 = !DILocation(line: 660, column: 2, scope: !1454)
!1471 = !DILocation(line: 661, column: 2, scope: !1454)
!1472 = !DILocation(line: 662, column: 9, scope: !1454)
!1473 = !DILocation(line: 663, column: 1, scope: !1454)
!1474 = distinct !DISubprogram(name: "read_settings", scope: !383, file: !383, line: 628, type: !225, isLocal: true, isDefinition: true, scopeLine: 629, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !394)
!1475 = !DILocation(line: 630, column: 6, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1474, file: !383, line: 630, column: 6)
!1477 = !DILocation(line: 630, column: 22, scope: !1476)
!1478 = !DILocation(line: 630, column: 29, scope: !1476)
!1479 = !DILocation(line: 631, column: 16, scope: !1476)
!1480 = !DILocation(line: 631, column: 33, scope: !1476)
!1481 = !DILocation(line: 631, column: 6, scope: !1482)
!1482 = !DILexicalBlockFile(scope: !1476, file: !383, discriminator: 1)
!1483 = !DILocation(line: 631, column: 63, scope: !1476)
!1484 = !DILocation(line: 630, column: 6, scope: !1485)
!1485 = !DILexicalBlockFile(scope: !1474, file: !383, discriminator: 1)
!1486 = !DILocation(line: 632, column: 24, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1476, file: !383, line: 631, column: 69)
!1488 = !DILocation(line: 632, column: 17, scope: !1487)
!1489 = !DILocation(line: 633, column: 30, scope: !1487)
!1490 = !DILocation(line: 633, column: 21, scope: !1491)
!1491 = !DILexicalBlockFile(scope: !1487, file: !383, discriminator: 1)
!1492 = !DILocation(line: 633, column: 19, scope: !1487)
!1493 = !DILocation(line: 635, column: 18, scope: !1487)
!1494 = !DILocation(line: 636, column: 3, scope: !1487)
!1495 = !DILocation(line: 637, column: 2, scope: !1487)
!1496 = !DILocation(line: 638, column: 1, scope: !1474)
!1497 = distinct !DISubprogram(name: "read_servers", scope: !383, file: !383, line: 611, type: !225, isLocal: true, isDefinition: true, scopeLine: 612, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !394)
!1498 = !DILocalVariable(name: "node", scope: !1497, file: !383, line: 613, type: !1160)
!1499 = !DILocation(line: 613, column: 15, scope: !1497)
!1500 = !DILocalVariable(name: "tmp", scope: !1497, file: !383, line: 614, type: !237)
!1501 = !DILocation(line: 614, column: 10, scope: !1497)
!1502 = !DILocation(line: 616, column: 2, scope: !1497)
!1503 = !DILocation(line: 616, column: 9, scope: !1504)
!1504 = !DILexicalBlockFile(scope: !1497, file: !383, discriminator: 1)
!1505 = !DILocation(line: 616, column: 22, scope: !1504)
!1506 = !DILocation(line: 616, column: 2, scope: !1504)
!1507 = !DILocation(line: 617, column: 24, scope: !1497)
!1508 = !DILocation(line: 617, column: 38, scope: !1497)
!1509 = !DILocation(line: 617, column: 3, scope: !1497)
!1510 = !DILocation(line: 616, column: 2, scope: !1511)
!1511 = !DILexicalBlockFile(scope: !1497, file: !383, discriminator: 2)
!1512 = distinct !{!1512, !1502}
!1513 = !DILocation(line: 620, column: 30, scope: !1497)
!1514 = !DILocation(line: 620, column: 9, scope: !1497)
!1515 = !DILocation(line: 620, column: 7, scope: !1497)
!1516 = !DILocation(line: 621, column: 6, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1497, file: !383, line: 621, column: 6)
!1518 = !DILocation(line: 621, column: 11, scope: !1517)
!1519 = !DILocation(line: 621, column: 6, scope: !1497)
!1520 = !DILocation(line: 622, column: 27, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1517, file: !383, line: 621, column: 19)
!1522 = !DILocation(line: 622, column: 33, scope: !1521)
!1523 = !DILocation(line: 622, column: 9, scope: !1521)
!1524 = !DILocation(line: 622, column: 7, scope: !1521)
!1525 = !DILocation(line: 623, column: 3, scope: !1521)
!1526 = !DILocation(line: 623, column: 10, scope: !1527)
!1527 = !DILexicalBlockFile(scope: !1528, file: !383, discriminator: 1)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !383, line: 623, column: 3)
!1529 = distinct !DILexicalBlock(scope: !1521, file: !383, line: 623, column: 3)
!1530 = !DILocation(line: 623, column: 14, scope: !1527)
!1531 = !DILocation(line: 623, column: 3, scope: !1527)
!1532 = !DILocation(line: 624, column: 22, scope: !1528)
!1533 = !DILocation(line: 624, column: 27, scope: !1528)
!1534 = !DILocation(line: 624, column: 4, scope: !1528)
!1535 = !DILocation(line: 623, column: 45, scope: !1536)
!1536 = !DILexicalBlockFile(scope: !1528, file: !383, discriminator: 2)
!1537 = !DILocation(line: 623, column: 28, scope: !1536)
!1538 = !DILocation(line: 623, column: 26, scope: !1536)
!1539 = !DILocation(line: 623, column: 3, scope: !1536)
!1540 = distinct !{!1540, !1525}
!1541 = !DILocation(line: 625, column: 2, scope: !1521)
!1542 = !DILocation(line: 626, column: 1, scope: !1497)
!1543 = distinct !DISubprogram(name: "servers_setup_deinit", scope: !383, file: !383, line: 665, type: !225, isLocal: false, isDefinition: true, scopeLine: 666, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !394)
!1544 = !DILocation(line: 667, column: 9, scope: !1543)
!1545 = !DILocation(line: 667, column: 2, scope: !1543)
!1546 = !DILocation(line: 668, column: 9, scope: !1543)
!1547 = !DILocation(line: 668, column: 2, scope: !1543)
!1548 = !DILocation(line: 669, column: 9, scope: !1543)
!1549 = !DILocation(line: 669, column: 2, scope: !1543)
!1550 = !DILocation(line: 671, column: 2, scope: !1543)
!1551 = !DILocation(line: 671, column: 9, scope: !1552)
!1552 = !DILexicalBlockFile(scope: !1543, file: !383, discriminator: 1)
!1553 = !DILocation(line: 671, column: 22, scope: !1552)
!1554 = !DILocation(line: 671, column: 2, scope: !1552)
!1555 = !DILocation(line: 672, column: 24, scope: !1543)
!1556 = !DILocation(line: 672, column: 38, scope: !1543)
!1557 = !DILocation(line: 672, column: 3, scope: !1543)
!1558 = !DILocation(line: 671, column: 2, scope: !1559)
!1559 = !DILexicalBlockFile(scope: !1543, file: !383, discriminator: 2)
!1560 = distinct !{!1560, !1550}
!1561 = !DILocation(line: 674, column: 2, scope: !1543)
!1562 = !DILocation(line: 675, column: 2, scope: !1543)
!1563 = !DILocation(line: 676, column: 9, scope: !1543)
!1564 = !DILocation(line: 678, column: 2, scope: !1543)
!1565 = !DILocation(line: 679, column: 1, scope: !1543)
!1566 = distinct !DISubprogram(name: "save_ips", scope: !383, file: !383, line: 38, type: !1567, isLocal: true, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !394)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{null, !69, !69, !500, !500}
!1569 = !DILocalVariable(name: "ip4", arg: 1, scope: !1566, file: !383, line: 38, type: !69)
!1570 = !DILocation(line: 38, column: 30, scope: !1566)
!1571 = !DILocalVariable(name: "ip6", arg: 2, scope: !1566, file: !383, line: 38, type: !69)
!1572 = !DILocation(line: 38, column: 43, scope: !1566)
!1573 = !DILocalVariable(name: "save_ip4", arg: 3, scope: !1566, file: !383, line: 39, type: !500)
!1574 = !DILocation(line: 39, column: 17, scope: !1566)
!1575 = !DILocalVariable(name: "save_ip6", arg: 4, scope: !1566, file: !383, line: 39, type: !500)
!1576 = !DILocation(line: 39, column: 36, scope: !1566)
!1577 = !DILocation(line: 41, column: 6, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1566, file: !383, line: 41, column: 6)
!1579 = !DILocation(line: 41, column: 11, scope: !1578)
!1580 = !DILocation(line: 41, column: 18, scope: !1578)
!1581 = !DILocation(line: 41, column: 6, scope: !1566)
!1582 = !DILocation(line: 42, column: 3, scope: !1578)
!1583 = distinct !{!1583, !1582}
!1584 = !DILocation(line: 42, column: 13, scope: !1585)
!1585 = !DILexicalBlockFile(scope: !1586, file: !383, discriminator: 1)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !383, line: 42, column: 12)
!1587 = distinct !DILexicalBlock(scope: !1578, file: !383, line: 42, column: 6)
!1588 = !DILocation(line: 42, column: 12, scope: !1585)
!1589 = !DILocation(line: 42, column: 33, scope: !1590)
!1590 = !DILexicalBlockFile(scope: !1591, file: !383, discriminator: 2)
!1591 = distinct !DILexicalBlock(scope: !1586, file: !383, line: 42, column: 23)
!1592 = !DILocation(line: 42, column: 32, scope: !1590)
!1593 = !DILocation(line: 42, column: 25, scope: !1590)
!1594 = !DILocation(line: 42, column: 46, scope: !1590)
!1595 = !DILocation(line: 42, column: 56, scope: !1590)
!1596 = !DILocation(line: 42, column: 4, scope: !1590)
!1597 = !DILocation(line: 42, column: 6, scope: !1598)
!1598 = !DILexicalBlockFile(scope: !1587, file: !383, discriminator: 3)
!1599 = !DILocation(line: 42, column: 6, scope: !1600)
!1600 = !DILexicalBlockFile(scope: !1587, file: !383, discriminator: 4)
!1601 = !DILocation(line: 44, column: 22, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !383, line: 44, column: 21)
!1603 = distinct !DILexicalBlock(scope: !1578, file: !383, line: 43, column: 7)
!1604 = !DILocation(line: 44, column: 21, scope: !1602)
!1605 = !DILocation(line: 44, column: 31, scope: !1602)
!1606 = !DILocation(line: 44, column: 21, scope: !1603)
!1607 = !DILocation(line: 45, column: 28, scope: !1602)
!1608 = !DILocation(line: 45, column: 17, scope: !1602)
!1609 = !DILocation(line: 45, column: 5, scope: !1602)
!1610 = !DILocation(line: 45, column: 14, scope: !1602)
!1611 = !DILocation(line: 45, column: 4, scope: !1602)
!1612 = !DILocation(line: 46, column: 11, scope: !1603)
!1613 = !DILocation(line: 46, column: 10, scope: !1603)
!1614 = !DILocation(line: 46, column: 3, scope: !1603)
!1615 = !DILocation(line: 46, column: 21, scope: !1603)
!1616 = !DILocation(line: 49, column: 6, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1566, file: !383, line: 49, column: 6)
!1618 = !DILocation(line: 49, column: 11, scope: !1617)
!1619 = !DILocation(line: 49, column: 18, scope: !1617)
!1620 = !DILocation(line: 49, column: 6, scope: !1566)
!1621 = !DILocation(line: 50, column: 3, scope: !1617)
!1622 = distinct !{!1622, !1621}
!1623 = !DILocation(line: 50, column: 13, scope: !1624)
!1624 = !DILexicalBlockFile(scope: !1625, file: !383, discriminator: 1)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !383, line: 50, column: 12)
!1626 = distinct !DILexicalBlock(scope: !1617, file: !383, line: 50, column: 6)
!1627 = !DILocation(line: 50, column: 12, scope: !1624)
!1628 = !DILocation(line: 50, column: 33, scope: !1629)
!1629 = !DILexicalBlockFile(scope: !1630, file: !383, discriminator: 2)
!1630 = distinct !DILexicalBlock(scope: !1625, file: !383, line: 50, column: 23)
!1631 = !DILocation(line: 50, column: 32, scope: !1629)
!1632 = !DILocation(line: 50, column: 25, scope: !1629)
!1633 = !DILocation(line: 50, column: 46, scope: !1629)
!1634 = !DILocation(line: 50, column: 56, scope: !1629)
!1635 = !DILocation(line: 50, column: 4, scope: !1629)
!1636 = !DILocation(line: 50, column: 6, scope: !1637)
!1637 = !DILexicalBlockFile(scope: !1626, file: !383, discriminator: 3)
!1638 = !DILocation(line: 50, column: 6, scope: !1639)
!1639 = !DILexicalBlockFile(scope: !1626, file: !383, discriminator: 4)
!1640 = !DILocation(line: 52, column: 22, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !383, line: 52, column: 21)
!1642 = distinct !DILexicalBlock(scope: !1617, file: !383, line: 51, column: 7)
!1643 = !DILocation(line: 52, column: 21, scope: !1641)
!1644 = !DILocation(line: 52, column: 31, scope: !1641)
!1645 = !DILocation(line: 52, column: 21, scope: !1642)
!1646 = !DILocation(line: 53, column: 28, scope: !1641)
!1647 = !DILocation(line: 53, column: 17, scope: !1641)
!1648 = !DILocation(line: 53, column: 5, scope: !1641)
!1649 = !DILocation(line: 53, column: 14, scope: !1641)
!1650 = !DILocation(line: 53, column: 4, scope: !1641)
!1651 = !DILocation(line: 54, column: 11, scope: !1642)
!1652 = !DILocation(line: 54, column: 10, scope: !1642)
!1653 = !DILocation(line: 54, column: 3, scope: !1642)
!1654 = !DILocation(line: 54, column: 21, scope: !1642)
!1655 = !DILocation(line: 56, column: 1, scope: !1566)
!1656 = distinct !DISubprogram(name: "server_setup_fill", scope: !383, file: !383, line: 114, type: !1657, isLocal: true, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !394)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{null, !44, !308, !52}
!1659 = !DILocalVariable(name: "conn", arg: 1, scope: !1656, file: !383, line: 114, type: !44)
!1660 = !DILocation(line: 114, column: 51, scope: !1656)
!1661 = !DILocalVariable(name: "address", arg: 2, scope: !1656, file: !383, line: 115, type: !308)
!1662 = !DILocation(line: 115, column: 22, scope: !1656)
!1663 = !DILocalVariable(name: "port", arg: 3, scope: !1656, file: !383, line: 115, type: !52)
!1664 = !DILocation(line: 115, column: 35, scope: !1656)
!1665 = !DILocation(line: 117, column: 2, scope: !1656)
!1666 = distinct !{!1666, !1665}
!1667 = !DILocation(line: 117, column: 10, scope: !1668)
!1668 = !DILexicalBlockFile(scope: !1669, file: !383, discriminator: 1)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !383, line: 117, column: 10)
!1670 = distinct !DILexicalBlock(scope: !1656, file: !383, line: 117, column: 4)
!1671 = !DILocation(line: 117, column: 15, scope: !1668)
!1672 = !DILocation(line: 117, column: 5, scope: !1673)
!1673 = !DILexicalBlockFile(scope: !1674, file: !383, discriminator: 2)
!1674 = distinct !DILexicalBlock(scope: !1669, file: !383, line: 117, column: 3)
!1675 = !DILocation(line: 117, column: 14, scope: !1676)
!1676 = !DILexicalBlockFile(scope: !1677, file: !383, discriminator: 3)
!1677 = distinct !DILexicalBlock(scope: !1669, file: !383, line: 117, column: 12)
!1678 = !DILocation(line: 117, column: 99, scope: !1676)
!1679 = !DILocation(line: 117, column: 110, scope: !1680)
!1680 = !DILexicalBlockFile(scope: !1670, file: !383, discriminator: 4)
!1681 = !DILocation(line: 118, column: 2, scope: !1656)
!1682 = distinct !{!1682, !1681}
!1683 = !DILocation(line: 118, column: 10, scope: !1684)
!1684 = !DILexicalBlockFile(scope: !1685, file: !383, discriminator: 1)
!1685 = distinct !DILexicalBlock(scope: !1686, file: !383, line: 118, column: 10)
!1686 = distinct !DILexicalBlock(scope: !1656, file: !383, line: 118, column: 4)
!1687 = !DILocation(line: 118, column: 18, scope: !1684)
!1688 = !DILocation(line: 118, column: 5, scope: !1689)
!1689 = !DILexicalBlockFile(scope: !1690, file: !383, discriminator: 2)
!1690 = distinct !DILexicalBlock(scope: !1685, file: !383, line: 118, column: 3)
!1691 = !DILocation(line: 118, column: 14, scope: !1692)
!1692 = !DILexicalBlockFile(scope: !1693, file: !383, discriminator: 3)
!1693 = distinct !DILexicalBlock(scope: !1685, file: !383, line: 118, column: 12)
!1694 = !DILocation(line: 118, column: 102, scope: !1692)
!1695 = !DILocation(line: 118, column: 113, scope: !1696)
!1696 = !DILexicalBlockFile(scope: !1686, file: !383, discriminator: 4)
!1697 = !DILocation(line: 120, column: 15, scope: !1656)
!1698 = !DILocation(line: 120, column: 2, scope: !1656)
!1699 = !DILocation(line: 120, column: 8, scope: !1656)
!1700 = !DILocation(line: 120, column: 13, scope: !1656)
!1701 = !DILocation(line: 122, column: 27, scope: !1656)
!1702 = !DILocation(line: 122, column: 18, scope: !1656)
!1703 = !DILocation(line: 122, column: 2, scope: !1656)
!1704 = !DILocation(line: 122, column: 8, scope: !1656)
!1705 = !DILocation(line: 122, column: 16, scope: !1656)
!1706 = !DILocation(line: 123, column: 6, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1656, file: !383, line: 123, column: 6)
!1708 = !DILocation(line: 123, column: 11, scope: !1707)
!1709 = !DILocation(line: 123, column: 6, scope: !1656)
!1710 = !DILocation(line: 123, column: 29, scope: !1711)
!1711 = !DILexicalBlockFile(scope: !1707, file: !383, discriminator: 1)
!1712 = !DILocation(line: 123, column: 16, scope: !1711)
!1713 = !DILocation(line: 123, column: 22, scope: !1711)
!1714 = !DILocation(line: 123, column: 27, scope: !1711)
!1715 = !DILocation(line: 125, column: 13, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1656, file: !383, line: 125, column: 6)
!1717 = !DILocation(line: 125, column: 6, scope: !1716)
!1718 = !DILocation(line: 125, column: 27, scope: !1716)
!1719 = !DILocation(line: 125, column: 6, scope: !1656)
!1720 = !DILocation(line: 126, column: 3, scope: !1716)
!1721 = !DILocation(line: 126, column: 9, scope: !1716)
!1722 = !DILocation(line: 126, column: 21, scope: !1716)
!1723 = !DILocation(line: 128, column: 7, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1656, file: !383, line: 128, column: 6)
!1725 = !DILocation(line: 128, column: 13, scope: !1724)
!1726 = !DILocation(line: 128, column: 6, scope: !1656)
!1727 = !DILocation(line: 128, column: 41, scope: !1728)
!1728 = !DILexicalBlockFile(scope: !1724, file: !383, discriminator: 1)
!1729 = !DILocation(line: 128, column: 32, scope: !1730)
!1730 = !DILexicalBlockFile(scope: !1728, file: !383, discriminator: 2)
!1731 = !DILocation(line: 128, column: 19, scope: !1728)
!1732 = !DILocation(line: 128, column: 25, scope: !1728)
!1733 = !DILocation(line: 128, column: 30, scope: !1728)
!1734 = !DILocation(line: 129, column: 28, scope: !1656)
!1735 = !DILocation(line: 129, column: 19, scope: !1736)
!1736 = !DILexicalBlockFile(scope: !1656, file: !383, discriminator: 1)
!1737 = !DILocation(line: 129, column: 2, scope: !1656)
!1738 = !DILocation(line: 129, column: 8, scope: !1656)
!1739 = !DILocation(line: 129, column: 17, scope: !1656)
!1740 = !DILocation(line: 130, column: 28, scope: !1656)
!1741 = !DILocation(line: 130, column: 19, scope: !1736)
!1742 = !DILocation(line: 130, column: 2, scope: !1656)
!1743 = !DILocation(line: 130, column: 8, scope: !1656)
!1744 = !DILocation(line: 130, column: 17, scope: !1656)
!1745 = !DILocation(line: 133, column: 6, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1656, file: !383, line: 133, column: 6)
!1747 = !DILocation(line: 133, column: 6, scope: !1656)
!1748 = !DILocation(line: 134, column: 26, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1746, file: !383, line: 133, column: 38)
!1750 = !DILocation(line: 134, column: 17, scope: !1751)
!1751 = !DILexicalBlockFile(scope: !1749, file: !383, discriminator: 1)
!1752 = !DILocation(line: 134, column: 3, scope: !1749)
!1753 = !DILocation(line: 134, column: 9, scope: !1749)
!1754 = !DILocation(line: 134, column: 15, scope: !1749)
!1755 = !DILocation(line: 135, column: 22, scope: !1749)
!1756 = !DILocation(line: 135, column: 3, scope: !1749)
!1757 = !DILocation(line: 135, column: 9, scope: !1749)
!1758 = !DILocation(line: 135, column: 20, scope: !1749)
!1759 = !DILocation(line: 136, column: 33, scope: !1749)
!1760 = !DILocation(line: 136, column: 24, scope: !1751)
!1761 = !DILocation(line: 136, column: 3, scope: !1749)
!1762 = !DILocation(line: 136, column: 9, scope: !1749)
!1763 = !DILocation(line: 136, column: 22, scope: !1749)
!1764 = !DILocation(line: 137, column: 39, scope: !1749)
!1765 = !DILocation(line: 137, column: 30, scope: !1751)
!1766 = !DILocation(line: 137, column: 3, scope: !1749)
!1767 = !DILocation(line: 137, column: 9, scope: !1749)
!1768 = !DILocation(line: 137, column: 28, scope: !1749)
!1769 = !DILocation(line: 138, column: 35, scope: !1749)
!1770 = !DILocation(line: 138, column: 26, scope: !1751)
!1771 = !DILocation(line: 138, column: 3, scope: !1749)
!1772 = !DILocation(line: 138, column: 9, scope: !1749)
!1773 = !DILocation(line: 138, column: 24, scope: !1749)
!1774 = !DILocation(line: 139, column: 2, scope: !1749)
!1775 = !DILocation(line: 142, column: 6, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1656, file: !383, line: 142, column: 6)
!1777 = !DILocation(line: 142, column: 22, scope: !1776)
!1778 = !DILocation(line: 142, column: 6, scope: !1656)
!1779 = !DILocation(line: 143, column: 31, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1776, file: !383, line: 142, column: 30)
!1781 = !DILocation(line: 143, column: 20, scope: !1780)
!1782 = !DILocation(line: 143, column: 3, scope: !1780)
!1783 = !DILocation(line: 143, column: 9, scope: !1780)
!1784 = !DILocation(line: 143, column: 17, scope: !1780)
!1785 = !DILocation(line: 144, column: 10, scope: !1780)
!1786 = !DILocation(line: 144, column: 16, scope: !1780)
!1787 = !DILocation(line: 144, column: 3, scope: !1780)
!1788 = !DILocation(line: 144, column: 25, scope: !1780)
!1789 = !DILocation(line: 145, column: 2, scope: !1780)
!1790 = !DILocation(line: 146, column: 6, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1656, file: !383, line: 146, column: 6)
!1792 = !DILocation(line: 146, column: 22, scope: !1791)
!1793 = !DILocation(line: 146, column: 6, scope: !1656)
!1794 = !DILocation(line: 147, column: 31, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1791, file: !383, line: 146, column: 30)
!1796 = !DILocation(line: 147, column: 20, scope: !1795)
!1797 = !DILocation(line: 147, column: 3, scope: !1795)
!1798 = !DILocation(line: 147, column: 9, scope: !1795)
!1799 = !DILocation(line: 147, column: 17, scope: !1795)
!1800 = !DILocation(line: 148, column: 10, scope: !1795)
!1801 = !DILocation(line: 148, column: 16, scope: !1795)
!1802 = !DILocation(line: 148, column: 3, scope: !1795)
!1803 = !DILocation(line: 148, column: 25, scope: !1795)
!1804 = !DILocation(line: 149, column: 2, scope: !1795)
!1805 = !DILocation(line: 151, column: 46, scope: !1656)
!1806 = !DILocation(line: 151, column: 2, scope: !1656)
!1807 = !DILocation(line: 152, column: 1, scope: !1656)
!1808 = !DILocation(line: 152, column: 1, scope: !1736)
!1809 = distinct !DISubprogram(name: "server_setup_fill_chatnet", scope: !383, file: !383, line: 194, type: !1810, isLocal: true, isDefinition: true, scopeLine: 196, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !394)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{null, !44, !360}
!1812 = !DILocalVariable(name: "conn", arg: 1, scope: !1809, file: !383, line: 194, type: !44)
!1813 = !DILocation(line: 194, column: 59, scope: !1809)
!1814 = !DILocalVariable(name: "chatnet", arg: 2, scope: !1809, file: !383, line: 195, type: !360)
!1815 = !DILocation(line: 195, column: 24, scope: !1809)
!1816 = !DILocation(line: 197, column: 2, scope: !1809)
!1817 = distinct !{!1817, !1816}
!1818 = !DILocation(line: 197, column: 53, scope: !1819)
!1819 = !DILexicalBlockFile(scope: !1820, file: !383, discriminator: 1)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !383, line: 197, column: 10)
!1821 = distinct !DILexicalBlock(scope: !1809, file: !383, line: 197, column: 4)
!1822 = !DILocation(line: 197, column: 35, scope: !1819)
!1823 = !DILocation(line: 197, column: 12, scope: !1819)
!1824 = !DILocation(line: 197, column: 10, scope: !1819)
!1825 = !DILocation(line: 197, column: 11, scope: !1826)
!1826 = !DILexicalBlockFile(scope: !1820, file: !383, discriminator: 2)
!1827 = !DILocation(line: 197, column: 10, scope: !1828)
!1828 = !DILexicalBlockFile(scope: !1821, file: !383, discriminator: 3)
!1829 = !DILocation(line: 197, column: 41, scope: !1830)
!1830 = !DILexicalBlockFile(scope: !1831, file: !383, discriminator: 4)
!1831 = distinct !DILexicalBlock(scope: !1820, file: !383, line: 197, column: 39)
!1832 = !DILocation(line: 197, column: 50, scope: !1833)
!1833 = !DILexicalBlockFile(scope: !1834, file: !383, discriminator: 5)
!1834 = distinct !DILexicalBlock(scope: !1820, file: !383, line: 197, column: 48)
!1835 = !DILocation(line: 197, column: 146, scope: !1833)
!1836 = !DILocation(line: 197, column: 157, scope: !1837)
!1837 = !DILexicalBlockFile(scope: !1821, file: !383, discriminator: 6)
!1838 = !DILocation(line: 198, column: 2, scope: !1809)
!1839 = distinct !{!1839, !1838}
!1840 = !DILocation(line: 198, column: 46, scope: !1841)
!1841 = !DILexicalBlockFile(scope: !1842, file: !383, discriminator: 1)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !383, line: 198, column: 10)
!1843 = distinct !DILexicalBlock(scope: !1809, file: !383, line: 198, column: 4)
!1844 = !DILocation(line: 198, column: 28, scope: !1841)
!1845 = !DILocation(line: 198, column: 12, scope: !1841)
!1846 = !DILocation(line: 198, column: 10, scope: !1841)
!1847 = !DILocation(line: 198, column: 11, scope: !1848)
!1848 = !DILexicalBlockFile(scope: !1842, file: !383, discriminator: 2)
!1849 = !DILocation(line: 198, column: 10, scope: !1850)
!1850 = !DILexicalBlockFile(scope: !1843, file: !383, discriminator: 3)
!1851 = !DILocation(line: 198, column: 34, scope: !1852)
!1852 = !DILexicalBlockFile(scope: !1853, file: !383, discriminator: 4)
!1853 = distinct !DILexicalBlock(scope: !1842, file: !383, line: 198, column: 32)
!1854 = !DILocation(line: 198, column: 43, scope: !1855)
!1855 = !DILexicalBlockFile(scope: !1856, file: !383, discriminator: 5)
!1856 = distinct !DILexicalBlock(scope: !1842, file: !383, line: 198, column: 41)
!1857 = !DILocation(line: 198, column: 135, scope: !1855)
!1858 = !DILocation(line: 198, column: 146, scope: !1859)
!1859 = !DILexicalBlockFile(scope: !1843, file: !383, discriminator: 6)
!1860 = !DILocation(line: 200, column: 6, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1809, file: !383, line: 200, column: 6)
!1862 = !DILocation(line: 200, column: 15, scope: !1861)
!1863 = !DILocation(line: 200, column: 20, scope: !1861)
!1864 = !DILocation(line: 200, column: 6, scope: !1809)
!1865 = !DILocation(line: 201, column: 10, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1861, file: !383, line: 200, column: 28)
!1867 = !DILocation(line: 201, column: 16, scope: !1866)
!1868 = !DILocation(line: 201, column: 3, scope: !1866)
!1869 = !DILocation(line: 202, column: 25, scope: !1866)
!1870 = !DILocation(line: 202, column: 34, scope: !1866)
!1871 = !DILocation(line: 202, column: 16, scope: !1866)
!1872 = !DILocation(line: 202, column: 3, scope: !1866)
!1873 = !DILocation(line: 202, column: 9, scope: !1866)
!1874 = !DILocation(line: 202, column: 14, scope: !1866)
!1875 = !DILocation(line: 203, column: 2, scope: !1866)
!1876 = !DILocation(line: 204, column: 6, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1809, file: !383, line: 204, column: 6)
!1878 = !DILocation(line: 204, column: 15, scope: !1877)
!1879 = !DILocation(line: 204, column: 24, scope: !1877)
!1880 = !DILocation(line: 204, column: 6, scope: !1809)
!1881 = !DILocation(line: 205, column: 24, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1877, file: !383, line: 204, column: 32)
!1883 = !DILocation(line: 205, column: 30, scope: !1882)
!1884 = !DILocation(line: 205, column: 17, scope: !1882)
!1885 = !DILocation(line: 206, column: 29, scope: !1882)
!1886 = !DILocation(line: 206, column: 38, scope: !1882)
!1887 = !DILocation(line: 206, column: 20, scope: !1882)
!1888 = !DILocation(line: 206, column: 3, scope: !1882)
!1889 = !DILocation(line: 206, column: 9, scope: !1882)
!1890 = !DILocation(line: 206, column: 18, scope: !1882)
!1891 = !DILocation(line: 207, column: 2, scope: !1882)
!1892 = !DILocation(line: 208, column: 6, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1809, file: !383, line: 208, column: 6)
!1894 = !DILocation(line: 208, column: 15, scope: !1893)
!1895 = !DILocation(line: 208, column: 24, scope: !1893)
!1896 = !DILocation(line: 208, column: 6, scope: !1809)
!1897 = !DILocation(line: 209, column: 24, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1893, file: !383, line: 208, column: 32)
!1899 = !DILocation(line: 209, column: 30, scope: !1898)
!1900 = !DILocation(line: 209, column: 17, scope: !1898)
!1901 = !DILocation(line: 210, column: 29, scope: !1898)
!1902 = !DILocation(line: 210, column: 38, scope: !1898)
!1903 = !DILocation(line: 210, column: 20, scope: !1898)
!1904 = !DILocation(line: 210, column: 3, scope: !1898)
!1905 = !DILocation(line: 210, column: 9, scope: !1898)
!1906 = !DILocation(line: 210, column: 18, scope: !1898)
!1907 = !DILocation(line: 211, column: 2, scope: !1898)
!1908 = !DILocation(line: 212, column: 6, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1809, file: !383, line: 212, column: 6)
!1910 = !DILocation(line: 212, column: 15, scope: !1909)
!1911 = !DILocation(line: 212, column: 24, scope: !1909)
!1912 = !DILocation(line: 212, column: 6, scope: !1809)
!1913 = !DILocation(line: 213, column: 15, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1909, file: !383, line: 212, column: 32)
!1915 = !DILocation(line: 213, column: 21, scope: !1914)
!1916 = !DILocation(line: 213, column: 30, scope: !1914)
!1917 = !DILocation(line: 214, column: 9, scope: !1914)
!1918 = !DILocation(line: 214, column: 18, scope: !1914)
!1919 = !DILocation(line: 214, column: 28, scope: !1914)
!1920 = !DILocation(line: 214, column: 37, scope: !1914)
!1921 = !DILocation(line: 213, column: 3, scope: !1914)
!1922 = !DILocation(line: 215, column: 2, scope: !1914)
!1923 = !DILocation(line: 217, column: 46, scope: !1809)
!1924 = !DILocation(line: 217, column: 52, scope: !1809)
!1925 = !DILocation(line: 217, column: 2, scope: !1809)
!1926 = !DILocation(line: 218, column: 1, scope: !1809)
!1927 = !DILocation(line: 218, column: 1, scope: !1928)
!1928 = !DILexicalBlockFile(scope: !1809, file: !383, discriminator: 1)
!1929 = distinct !DISubprogram(name: "server_setup_fill_server", scope: !383, file: !383, line: 154, type: !392, isLocal: true, isDefinition: true, scopeLine: 156, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !394)
!1930 = !DILocalVariable(name: "conn", arg: 1, scope: !1929, file: !383, line: 154, type: !44)
!1931 = !DILocation(line: 154, column: 58, scope: !1929)
!1932 = !DILocalVariable(name: "sserver", arg: 2, scope: !1929, file: !383, line: 155, type: !310)
!1933 = !DILocation(line: 155, column: 28, scope: !1929)
!1934 = !DILocation(line: 157, column: 2, scope: !1929)
!1935 = distinct !{!1935, !1934}
!1936 = !DILocation(line: 157, column: 53, scope: !1937)
!1937 = !DILexicalBlockFile(scope: !1938, file: !383, discriminator: 1)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !383, line: 157, column: 10)
!1939 = distinct !DILexicalBlock(scope: !1929, file: !383, line: 157, column: 4)
!1940 = !DILocation(line: 157, column: 35, scope: !1937)
!1941 = !DILocation(line: 157, column: 12, scope: !1937)
!1942 = !DILocation(line: 157, column: 10, scope: !1937)
!1943 = !DILocation(line: 157, column: 11, scope: !1944)
!1944 = !DILexicalBlockFile(scope: !1938, file: !383, discriminator: 2)
!1945 = !DILocation(line: 157, column: 10, scope: !1946)
!1946 = !DILexicalBlockFile(scope: !1939, file: !383, discriminator: 3)
!1947 = !DILocation(line: 157, column: 41, scope: !1948)
!1948 = !DILexicalBlockFile(scope: !1949, file: !383, discriminator: 4)
!1949 = distinct !DILexicalBlock(scope: !1938, file: !383, line: 157, column: 39)
!1950 = !DILocation(line: 157, column: 50, scope: !1951)
!1951 = !DILexicalBlockFile(scope: !1952, file: !383, discriminator: 5)
!1952 = distinct !DILexicalBlock(scope: !1938, file: !383, line: 157, column: 48)
!1953 = !DILocation(line: 157, column: 146, scope: !1951)
!1954 = !DILocation(line: 157, column: 157, scope: !1955)
!1955 = !DILexicalBlockFile(scope: !1939, file: !383, discriminator: 6)
!1956 = !DILocation(line: 158, column: 2, scope: !1929)
!1957 = distinct !{!1957, !1956}
!1958 = !DILocation(line: 158, column: 51, scope: !1959)
!1959 = !DILexicalBlockFile(scope: !1960, file: !383, discriminator: 1)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !383, line: 158, column: 10)
!1961 = distinct !DILexicalBlock(scope: !1929, file: !383, line: 158, column: 4)
!1962 = !DILocation(line: 158, column: 33, scope: !1959)
!1963 = !DILocation(line: 158, column: 12, scope: !1959)
!1964 = !DILocation(line: 158, column: 10, scope: !1959)
!1965 = !DILocation(line: 158, column: 11, scope: !1966)
!1966 = !DILexicalBlockFile(scope: !1960, file: !383, discriminator: 2)
!1967 = !DILocation(line: 158, column: 10, scope: !1968)
!1968 = !DILexicalBlockFile(scope: !1961, file: !383, discriminator: 3)
!1969 = !DILocation(line: 158, column: 39, scope: !1970)
!1970 = !DILexicalBlockFile(scope: !1971, file: !383, discriminator: 4)
!1971 = distinct !DILexicalBlock(scope: !1960, file: !383, line: 158, column: 37)
!1972 = !DILocation(line: 158, column: 48, scope: !1973)
!1973 = !DILexicalBlockFile(scope: !1974, file: !383, discriminator: 5)
!1974 = distinct !DILexicalBlock(scope: !1960, file: !383, line: 158, column: 46)
!1975 = !DILocation(line: 158, column: 145, scope: !1973)
!1976 = !DILocation(line: 158, column: 156, scope: !1977)
!1977 = !DILexicalBlockFile(scope: !1961, file: !383, discriminator: 6)
!1978 = !DILocation(line: 160, column: 26, scope: !1929)
!1979 = !DILocation(line: 160, column: 2, scope: !1929)
!1980 = !DILocation(line: 160, column: 11, scope: !1929)
!1981 = !DILocation(line: 160, column: 24, scope: !1929)
!1982 = !DILocation(line: 162, column: 13, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1929, file: !383, line: 162, column: 13)
!1984 = !DILocation(line: 162, column: 22, scope: !1983)
!1985 = !DILocation(line: 162, column: 13, scope: !1929)
!1986 = !DILocation(line: 163, column: 3, scope: !1983)
!1987 = distinct !{!1987, !1986}
!1988 = !DILocation(line: 163, column: 12, scope: !1989)
!1989 = !DILexicalBlockFile(scope: !1990, file: !383, discriminator: 1)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !383, line: 163, column: 12)
!1991 = distinct !DILexicalBlock(scope: !1983, file: !383, line: 163, column: 6)
!1992 = !DILocation(line: 163, column: 18, scope: !1989)
!1993 = !DILocation(line: 163, column: 34, scope: !1994)
!1994 = !DILexicalBlockFile(scope: !1995, file: !383, discriminator: 2)
!1995 = distinct !DILexicalBlock(scope: !1990, file: !383, line: 163, column: 25)
!1996 = !DILocation(line: 163, column: 40, scope: !1994)
!1997 = !DILocation(line: 163, column: 27, scope: !1994)
!1998 = !DILocation(line: 163, column: 49, scope: !1994)
!1999 = !DILocation(line: 163, column: 55, scope: !1994)
!2000 = !DILocation(line: 163, column: 62, scope: !1994)
!2001 = !DILocation(line: 163, column: 4, scope: !1994)
!2002 = !DILocation(line: 163, column: 6, scope: !2003)
!2003 = !DILexicalBlockFile(scope: !1991, file: !383, discriminator: 3)
!2004 = !DILocation(line: 163, column: 6, scope: !2005)
!2005 = !DILexicalBlockFile(scope: !1991, file: !383, discriminator: 4)
!2006 = !DILocation(line: 165, column: 6, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1929, file: !383, line: 165, column: 6)
!2008 = !DILocation(line: 165, column: 15, scope: !2007)
!2009 = !DILocation(line: 165, column: 22, scope: !2007)
!2010 = !DILocation(line: 165, column: 27, scope: !2007)
!2011 = !DILocation(line: 165, column: 30, scope: !2012)
!2012 = !DILexicalBlockFile(scope: !2007, file: !383, discriminator: 1)
!2013 = !DILocation(line: 165, column: 36, scope: !2012)
!2014 = !DILocation(line: 165, column: 43, scope: !2012)
!2015 = !DILocation(line: 165, column: 6, scope: !2012)
!2016 = !DILocation(line: 166, column: 32, scope: !2007)
!2017 = !DILocation(line: 166, column: 41, scope: !2007)
!2018 = !DILocation(line: 166, column: 17, scope: !2007)
!2019 = !DILocation(line: 166, column: 23, scope: !2007)
!2020 = !DILocation(line: 166, column: 30, scope: !2007)
!2021 = !DILocation(line: 167, column: 6, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1929, file: !383, line: 167, column: 6)
!2023 = !DILocation(line: 167, column: 15, scope: !2022)
!2024 = !DILocation(line: 167, column: 20, scope: !2022)
!2025 = !DILocation(line: 167, column: 24, scope: !2022)
!2026 = !DILocation(line: 167, column: 27, scope: !2027)
!2027 = !DILexicalBlockFile(scope: !2022, file: !383, discriminator: 1)
!2028 = !DILocation(line: 167, column: 33, scope: !2027)
!2029 = !DILocation(line: 167, column: 38, scope: !2027)
!2030 = !DILocation(line: 167, column: 6, scope: !2027)
!2031 = !DILocation(line: 168, column: 16, scope: !2022)
!2032 = !DILocation(line: 168, column: 25, scope: !2022)
!2033 = !DILocation(line: 168, column: 3, scope: !2022)
!2034 = !DILocation(line: 168, column: 9, scope: !2022)
!2035 = !DILocation(line: 168, column: 14, scope: !2022)
!2036 = !DILocation(line: 170, column: 18, scope: !1929)
!2037 = !DILocation(line: 170, column: 27, scope: !1929)
!2038 = !DILocation(line: 170, column: 2, scope: !1929)
!2039 = !DILocation(line: 170, column: 8, scope: !1929)
!2040 = !DILocation(line: 170, column: 16, scope: !1929)
!2041 = !DILocation(line: 171, column: 6, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !1929, file: !383, line: 171, column: 6)
!2043 = !DILocation(line: 171, column: 12, scope: !2042)
!2044 = !DILocation(line: 171, column: 21, scope: !2042)
!2045 = !DILocation(line: 171, column: 28, scope: !2042)
!2046 = !DILocation(line: 171, column: 31, scope: !2047)
!2047 = !DILexicalBlockFile(scope: !2042, file: !383, discriminator: 1)
!2048 = !DILocation(line: 171, column: 40, scope: !2047)
!2049 = !DILocation(line: 171, column: 49, scope: !2047)
!2050 = !DILocation(line: 171, column: 57, scope: !2047)
!2051 = !DILocation(line: 171, column: 60, scope: !2052)
!2052 = !DILexicalBlockFile(scope: !2042, file: !383, discriminator: 2)
!2053 = !DILocation(line: 171, column: 69, scope: !2052)
!2054 = !DILocation(line: 171, column: 81, scope: !2052)
!2055 = !DILocation(line: 171, column: 6, scope: !2052)
!2056 = !DILocation(line: 172, column: 29, scope: !2042)
!2057 = !DILocation(line: 172, column: 38, scope: !2042)
!2058 = !DILocation(line: 172, column: 20, scope: !2042)
!2059 = !DILocation(line: 172, column: 3, scope: !2042)
!2060 = !DILocation(line: 172, column: 9, scope: !2042)
!2061 = !DILocation(line: 172, column: 18, scope: !2042)
!2062 = !DILocation(line: 173, column: 6, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !1929, file: !383, line: 173, column: 6)
!2064 = !DILocation(line: 173, column: 12, scope: !2063)
!2065 = !DILocation(line: 173, column: 21, scope: !2063)
!2066 = !DILocation(line: 173, column: 28, scope: !2063)
!2067 = !DILocation(line: 173, column: 31, scope: !2068)
!2068 = !DILexicalBlockFile(scope: !2063, file: !383, discriminator: 1)
!2069 = !DILocation(line: 173, column: 40, scope: !2068)
!2070 = !DILocation(line: 173, column: 49, scope: !2068)
!2071 = !DILocation(line: 173, column: 57, scope: !2068)
!2072 = !DILocation(line: 173, column: 60, scope: !2073)
!2073 = !DILexicalBlockFile(scope: !2063, file: !383, discriminator: 2)
!2074 = !DILocation(line: 173, column: 69, scope: !2073)
!2075 = !DILocation(line: 173, column: 81, scope: !2073)
!2076 = !DILocation(line: 173, column: 6, scope: !2073)
!2077 = !DILocation(line: 174, column: 29, scope: !2063)
!2078 = !DILocation(line: 174, column: 38, scope: !2063)
!2079 = !DILocation(line: 174, column: 20, scope: !2063)
!2080 = !DILocation(line: 174, column: 3, scope: !2063)
!2081 = !DILocation(line: 174, column: 9, scope: !2063)
!2082 = !DILocation(line: 174, column: 18, scope: !2063)
!2083 = !DILocation(line: 175, column: 6, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !1929, file: !383, line: 175, column: 6)
!2085 = !DILocation(line: 175, column: 12, scope: !2084)
!2086 = !DILocation(line: 175, column: 21, scope: !2084)
!2087 = !DILocation(line: 175, column: 28, scope: !2084)
!2088 = !DILocation(line: 175, column: 31, scope: !2089)
!2089 = !DILexicalBlockFile(scope: !2084, file: !383, discriminator: 1)
!2090 = !DILocation(line: 175, column: 40, scope: !2089)
!2091 = !DILocation(line: 175, column: 49, scope: !2089)
!2092 = !DILocation(line: 175, column: 57, scope: !2089)
!2093 = !DILocation(line: 175, column: 60, scope: !2094)
!2094 = !DILexicalBlockFile(scope: !2084, file: !383, discriminator: 2)
!2095 = !DILocation(line: 175, column: 69, scope: !2094)
!2096 = !DILocation(line: 175, column: 81, scope: !2094)
!2097 = !DILocation(line: 175, column: 6, scope: !2094)
!2098 = !DILocation(line: 176, column: 29, scope: !2084)
!2099 = !DILocation(line: 176, column: 38, scope: !2084)
!2100 = !DILocation(line: 176, column: 20, scope: !2084)
!2101 = !DILocation(line: 176, column: 3, scope: !2084)
!2102 = !DILocation(line: 176, column: 9, scope: !2084)
!2103 = !DILocation(line: 176, column: 18, scope: !2084)
!2104 = !DILocation(line: 177, column: 21, scope: !1929)
!2105 = !DILocation(line: 177, column: 30, scope: !1929)
!2106 = !DILocation(line: 177, column: 2, scope: !1929)
!2107 = !DILocation(line: 177, column: 8, scope: !1929)
!2108 = !DILocation(line: 177, column: 19, scope: !1929)
!2109 = !DILocation(line: 178, column: 6, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !1929, file: !383, line: 178, column: 6)
!2111 = !DILocation(line: 178, column: 12, scope: !2110)
!2112 = !DILocation(line: 178, column: 23, scope: !2110)
!2113 = !DILocation(line: 178, column: 30, scope: !2110)
!2114 = !DILocation(line: 178, column: 33, scope: !2115)
!2115 = !DILexicalBlockFile(scope: !2110, file: !383, discriminator: 1)
!2116 = !DILocation(line: 178, column: 42, scope: !2115)
!2117 = !DILocation(line: 178, column: 53, scope: !2115)
!2118 = !DILocation(line: 178, column: 61, scope: !2115)
!2119 = !DILocation(line: 178, column: 64, scope: !2120)
!2120 = !DILexicalBlockFile(scope: !2110, file: !383, discriminator: 2)
!2121 = !DILocation(line: 178, column: 73, scope: !2120)
!2122 = !DILocation(line: 178, column: 87, scope: !2120)
!2123 = !DILocation(line: 178, column: 6, scope: !2120)
!2124 = !DILocation(line: 179, column: 31, scope: !2110)
!2125 = !DILocation(line: 179, column: 40, scope: !2110)
!2126 = !DILocation(line: 179, column: 22, scope: !2110)
!2127 = !DILocation(line: 179, column: 3, scope: !2110)
!2128 = !DILocation(line: 179, column: 9, scope: !2110)
!2129 = !DILocation(line: 179, column: 20, scope: !2110)
!2130 = !DILocation(line: 180, column: 6, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !1929, file: !383, line: 180, column: 6)
!2132 = !DILocation(line: 180, column: 12, scope: !2131)
!2133 = !DILocation(line: 180, column: 23, scope: !2131)
!2134 = !DILocation(line: 180, column: 30, scope: !2131)
!2135 = !DILocation(line: 180, column: 33, scope: !2136)
!2136 = !DILexicalBlockFile(scope: !2131, file: !383, discriminator: 1)
!2137 = !DILocation(line: 180, column: 42, scope: !2136)
!2138 = !DILocation(line: 180, column: 53, scope: !2136)
!2139 = !DILocation(line: 180, column: 61, scope: !2136)
!2140 = !DILocation(line: 180, column: 64, scope: !2141)
!2141 = !DILexicalBlockFile(scope: !2131, file: !383, discriminator: 2)
!2142 = !DILocation(line: 180, column: 73, scope: !2141)
!2143 = !DILocation(line: 180, column: 87, scope: !2141)
!2144 = !DILocation(line: 180, column: 6, scope: !2141)
!2145 = !DILocation(line: 181, column: 31, scope: !2131)
!2146 = !DILocation(line: 181, column: 40, scope: !2131)
!2147 = !DILocation(line: 181, column: 22, scope: !2131)
!2148 = !DILocation(line: 181, column: 3, scope: !2131)
!2149 = !DILocation(line: 181, column: 9, scope: !2131)
!2150 = !DILocation(line: 181, column: 20, scope: !2131)
!2151 = !DILocation(line: 182, column: 6, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !1929, file: !383, line: 182, column: 6)
!2153 = !DILocation(line: 182, column: 12, scope: !2152)
!2154 = !DILocation(line: 182, column: 24, scope: !2152)
!2155 = !DILocation(line: 182, column: 31, scope: !2152)
!2156 = !DILocation(line: 182, column: 34, scope: !2157)
!2157 = !DILexicalBlockFile(scope: !2152, file: !383, discriminator: 1)
!2158 = !DILocation(line: 182, column: 43, scope: !2157)
!2159 = !DILocation(line: 182, column: 55, scope: !2157)
!2160 = !DILocation(line: 182, column: 63, scope: !2157)
!2161 = !DILocation(line: 182, column: 66, scope: !2162)
!2162 = !DILexicalBlockFile(scope: !2152, file: !383, discriminator: 2)
!2163 = !DILocation(line: 182, column: 75, scope: !2162)
!2164 = !DILocation(line: 182, column: 90, scope: !2162)
!2165 = !DILocation(line: 182, column: 6, scope: !2162)
!2166 = !DILocation(line: 183, column: 32, scope: !2152)
!2167 = !DILocation(line: 183, column: 41, scope: !2152)
!2168 = !DILocation(line: 183, column: 23, scope: !2152)
!2169 = !DILocation(line: 183, column: 3, scope: !2152)
!2170 = !DILocation(line: 183, column: 9, scope: !2152)
!2171 = !DILocation(line: 183, column: 21, scope: !2152)
!2172 = !DILocation(line: 184, column: 6, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !1929, file: !383, line: 184, column: 6)
!2174 = !DILocation(line: 184, column: 12, scope: !2173)
!2175 = !DILocation(line: 184, column: 28, scope: !2173)
!2176 = !DILocation(line: 184, column: 35, scope: !2173)
!2177 = !DILocation(line: 184, column: 38, scope: !2178)
!2178 = !DILexicalBlockFile(scope: !2173, file: !383, discriminator: 1)
!2179 = !DILocation(line: 184, column: 47, scope: !2178)
!2180 = !DILocation(line: 184, column: 63, scope: !2178)
!2181 = !DILocation(line: 184, column: 71, scope: !2178)
!2182 = !DILocation(line: 184, column: 74, scope: !2183)
!2183 = !DILexicalBlockFile(scope: !2173, file: !383, discriminator: 2)
!2184 = !DILocation(line: 184, column: 83, scope: !2183)
!2185 = !DILocation(line: 184, column: 102, scope: !2183)
!2186 = !DILocation(line: 184, column: 6, scope: !2183)
!2187 = !DILocation(line: 185, column: 36, scope: !2173)
!2188 = !DILocation(line: 185, column: 45, scope: !2173)
!2189 = !DILocation(line: 185, column: 27, scope: !2173)
!2190 = !DILocation(line: 185, column: 3, scope: !2173)
!2191 = !DILocation(line: 185, column: 9, scope: !2173)
!2192 = !DILocation(line: 185, column: 25, scope: !2173)
!2193 = !DILocation(line: 186, column: 6, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !1929, file: !383, line: 186, column: 6)
!2195 = !DILocation(line: 186, column: 12, scope: !2194)
!2196 = !DILocation(line: 186, column: 30, scope: !2194)
!2197 = !DILocation(line: 186, column: 37, scope: !2194)
!2198 = !DILocation(line: 186, column: 40, scope: !2199)
!2199 = !DILexicalBlockFile(scope: !2194, file: !383, discriminator: 1)
!2200 = !DILocation(line: 186, column: 49, scope: !2199)
!2201 = !DILocation(line: 186, column: 67, scope: !2199)
!2202 = !DILocation(line: 186, column: 75, scope: !2199)
!2203 = !DILocation(line: 186, column: 78, scope: !2204)
!2204 = !DILexicalBlockFile(scope: !2194, file: !383, discriminator: 2)
!2205 = !DILocation(line: 186, column: 87, scope: !2204)
!2206 = !DILocation(line: 186, column: 108, scope: !2204)
!2207 = !DILocation(line: 186, column: 6, scope: !2204)
!2208 = !DILocation(line: 187, column: 38, scope: !2194)
!2209 = !DILocation(line: 187, column: 47, scope: !2194)
!2210 = !DILocation(line: 187, column: 29, scope: !2194)
!2211 = !DILocation(line: 187, column: 3, scope: !2194)
!2212 = !DILocation(line: 187, column: 9, scope: !2194)
!2213 = !DILocation(line: 187, column: 27, scope: !2194)
!2214 = !DILocation(line: 189, column: 27, scope: !1929)
!2215 = !DILocation(line: 189, column: 33, scope: !1929)
!2216 = !DILocation(line: 189, column: 2, scope: !1929)
!2217 = !DILocation(line: 191, column: 45, scope: !1929)
!2218 = !DILocation(line: 191, column: 51, scope: !1929)
!2219 = !DILocation(line: 191, column: 2, scope: !1929)
!2220 = !DILocation(line: 192, column: 1, scope: !1929)
!2221 = !DILocation(line: 192, column: 1, scope: !2222)
!2222 = !DILexicalBlockFile(scope: !1929, file: !383, discriminator: 1)
!2223 = distinct !DISubprogram(name: "compare_server_setup", scope: !383, file: !383, line: 468, type: !2224, isLocal: true, isDefinition: true, scopeLine: 469, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !394)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{!52, !1160, !310}
!2226 = !DILocalVariable(name: "node", arg: 1, scope: !2223, file: !383, line: 468, type: !1160)
!2227 = !DILocation(line: 468, column: 47, scope: !2223)
!2228 = !DILocalVariable(name: "server", arg: 2, scope: !2223, file: !383, line: 468, type: !310)
!2229 = !DILocation(line: 468, column: 71, scope: !2223)
!2230 = !DILocalVariable(name: "address", scope: !2223, file: !383, line: 470, type: !56)
!2231 = !DILocation(line: 470, column: 8, scope: !2223)
!2232 = !DILocalVariable(name: "chatnet", scope: !2223, file: !383, line: 470, type: !56)
!2233 = !DILocation(line: 470, column: 18, scope: !2223)
!2234 = !DILocalVariable(name: "port", scope: !2223, file: !383, line: 471, type: !52)
!2235 = !DILocation(line: 471, column: 6, scope: !2223)
!2236 = !DILocation(line: 473, column: 32, scope: !2223)
!2237 = !DILocation(line: 473, column: 12, scope: !2223)
!2238 = !DILocation(line: 473, column: 10, scope: !2223)
!2239 = !DILocation(line: 474, column: 32, scope: !2223)
!2240 = !DILocation(line: 474, column: 12, scope: !2223)
!2241 = !DILocation(line: 474, column: 10, scope: !2223)
!2242 = !DILocation(line: 475, column: 29, scope: !2223)
!2243 = !DILocation(line: 475, column: 9, scope: !2223)
!2244 = !DILocation(line: 475, column: 7, scope: !2223)
!2245 = !DILocation(line: 477, column: 6, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2223, file: !383, line: 477, column: 6)
!2247 = !DILocation(line: 477, column: 14, scope: !2246)
!2248 = !DILocation(line: 477, column: 21, scope: !2246)
!2249 = !DILocation(line: 477, column: 24, scope: !2250)
!2250 = !DILexicalBlockFile(scope: !2246, file: !383, discriminator: 1)
!2251 = !DILocation(line: 477, column: 32, scope: !2250)
!2252 = !DILocation(line: 477, column: 6, scope: !2250)
!2253 = !DILocation(line: 478, column: 3, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2246, file: !383, line: 477, column: 41)
!2255 = !DILocation(line: 481, column: 25, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2223, file: !383, line: 481, column: 6)
!2257 = !DILocation(line: 481, column: 34, scope: !2256)
!2258 = !DILocation(line: 481, column: 42, scope: !2256)
!2259 = !DILocation(line: 481, column: 6, scope: !2256)
!2260 = !DILocation(line: 481, column: 51, scope: !2256)
!2261 = !DILocation(line: 481, column: 56, scope: !2256)
!2262 = !DILocation(line: 482, column: 25, scope: !2256)
!2263 = !DILocation(line: 482, column: 34, scope: !2256)
!2264 = !DILocation(line: 482, column: 42, scope: !2256)
!2265 = !DILocation(line: 482, column: 6, scope: !2256)
!2266 = !DILocation(line: 482, column: 51, scope: !2256)
!2267 = !DILocation(line: 482, column: 56, scope: !2256)
!2268 = !DILocation(line: 483, column: 6, scope: !2256)
!2269 = !DILocation(line: 483, column: 14, scope: !2256)
!2270 = !DILocation(line: 483, column: 22, scope: !2256)
!2271 = !DILocation(line: 483, column: 11, scope: !2256)
!2272 = !DILocation(line: 481, column: 6, scope: !2273)
!2273 = !DILexicalBlockFile(scope: !2223, file: !383, discriminator: 1)
!2274 = !DILocation(line: 484, column: 3, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2256, file: !383, line: 483, column: 28)
!2276 = !DILocation(line: 487, column: 2, scope: !2223)
!2277 = !DILocation(line: 488, column: 1, scope: !2223)
!2278 = distinct !DISubprogram(name: "get_source_host_ip", scope: !383, file: !383, line: 58, type: !225, isLocal: true, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !394)
!2279 = !DILocalVariable(name: "hostname", scope: !2278, file: !383, line: 60, type: !308)
!2280 = !DILocation(line: 60, column: 21, scope: !2278)
!2281 = !DILocalVariable(name: "ip4", scope: !2278, file: !383, line: 61, type: !70)
!2282 = !DILocation(line: 61, column: 9, scope: !2278)
!2283 = !DILocalVariable(name: "ip6", scope: !2278, file: !383, line: 61, type: !70)
!2284 = !DILocation(line: 61, column: 14, scope: !2278)
!2285 = !DILocation(line: 63, column: 6, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2278, file: !383, line: 63, column: 6)
!2287 = !DILocation(line: 63, column: 6, scope: !2278)
!2288 = !DILocation(line: 64, column: 3, scope: !2286)
!2289 = !DILocation(line: 67, column: 20, scope: !2278)
!2290 = !DILocation(line: 67, column: 18, scope: !2278)
!2291 = !DILocation(line: 68, column: 20, scope: !2278)
!2292 = !DILocation(line: 68, column: 19, scope: !2278)
!2293 = !DILocation(line: 68, column: 29, scope: !2278)
!2294 = !DILocation(line: 68, column: 37, scope: !2278)
!2295 = !DILocation(line: 69, column: 21, scope: !2278)
!2296 = !DILocation(line: 69, column: 3, scope: !2278)
!2297 = !DILocation(line: 69, column: 43, scope: !2278)
!2298 = !DILocation(line: 68, column: 37, scope: !2299)
!2299 = !DILexicalBlockFile(scope: !2278, file: !383, discriminator: 1)
!2300 = !DILocation(line: 68, column: 17, scope: !2299)
!2301 = !DILocation(line: 71, column: 6, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2278, file: !383, line: 71, column: 6)
!2303 = !DILocation(line: 71, column: 6, scope: !2278)
!2304 = !DILocation(line: 72, column: 3, scope: !2302)
!2305 = !DILocation(line: 74, column: 17, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2302, file: !383, line: 73, column: 7)
!2307 = distinct !{!2307, !2305}
!2308 = !DILocation(line: 74, column: 26, scope: !2309)
!2309 = !DILexicalBlockFile(scope: !2310, file: !383, discriminator: 1)
!2310 = distinct !DILexicalBlock(scope: !2311, file: !383, line: 74, column: 26)
!2311 = distinct !DILexicalBlock(scope: !2306, file: !383, line: 74, column: 20)
!2312 = !DILocation(line: 74, column: 52, scope: !2313)
!2313 = !DILexicalBlockFile(scope: !2314, file: !383, discriminator: 2)
!2314 = distinct !DILexicalBlock(scope: !2310, file: !383, line: 74, column: 43)
!2315 = !DILocation(line: 74, column: 45, scope: !2313)
!2316 = !DILocation(line: 74, column: 88, scope: !2313)
!2317 = !DILocation(line: 74, column: 18, scope: !2313)
!2318 = !DILocation(line: 74, column: 20, scope: !2319)
!2319 = !DILexicalBlockFile(scope: !2311, file: !383, discriminator: 3)
!2320 = !DILocation(line: 75, column: 17, scope: !2306)
!2321 = distinct !{!2321, !2320}
!2322 = !DILocation(line: 75, column: 26, scope: !2323)
!2323 = !DILexicalBlockFile(scope: !2324, file: !383, discriminator: 1)
!2324 = distinct !DILexicalBlock(scope: !2325, file: !383, line: 75, column: 26)
!2325 = distinct !DILexicalBlock(scope: !2306, file: !383, line: 75, column: 20)
!2326 = !DILocation(line: 75, column: 52, scope: !2327)
!2327 = !DILexicalBlockFile(scope: !2328, file: !383, discriminator: 2)
!2328 = distinct !DILexicalBlock(scope: !2324, file: !383, line: 75, column: 43)
!2329 = !DILocation(line: 75, column: 45, scope: !2327)
!2330 = !DILocation(line: 75, column: 88, scope: !2327)
!2331 = !DILocation(line: 75, column: 18, scope: !2327)
!2332 = !DILocation(line: 75, column: 20, scope: !2333)
!2333 = !DILexicalBlockFile(scope: !2325, file: !383, discriminator: 3)
!2334 = !DILocation(line: 77, column: 1, scope: !2278)
!2335 = distinct !DISubprogram(name: "server_setup_read", scope: !383, file: !383, line: 366, type: !2336, isLocal: true, isDefinition: true, scopeLine: 367, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !394)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!310, !1160}
!2338 = !DILocalVariable(name: "node", arg: 1, scope: !2335, file: !383, line: 366, type: !1160)
!2339 = !DILocation(line: 366, column: 57, scope: !2335)
!2340 = !DILocalVariable(name: "rec", scope: !2335, file: !383, line: 368, type: !310)
!2341 = !DILocation(line: 368, column: 20, scope: !2335)
!2342 = !DILocalVariable(name: "chatnetrec", scope: !2335, file: !383, line: 369, type: !360)
!2343 = !DILocation(line: 369, column: 15, scope: !2335)
!2344 = !DILocalVariable(name: "server", scope: !2335, file: !383, line: 370, type: !56)
!2345 = !DILocation(line: 370, column: 8, scope: !2335)
!2346 = !DILocalVariable(name: "chatnet", scope: !2335, file: !383, line: 370, type: !56)
!2347 = !DILocation(line: 370, column: 17, scope: !2335)
!2348 = !DILocalVariable(name: "family", scope: !2335, file: !383, line: 370, type: !56)
!2349 = !DILocation(line: 370, column: 27, scope: !2335)
!2350 = !DILocalVariable(name: "port", scope: !2335, file: !383, line: 371, type: !52)
!2351 = !DILocation(line: 371, column: 6, scope: !2335)
!2352 = !DILocalVariable(name: "value", scope: !2335, file: !383, line: 372, type: !56)
!2353 = !DILocation(line: 372, column: 8, scope: !2335)
!2354 = !DILocation(line: 374, column: 2, scope: !2335)
!2355 = distinct !{!2355, !2354}
!2356 = !DILocation(line: 374, column: 10, scope: !2357)
!2357 = !DILexicalBlockFile(scope: !2358, file: !383, discriminator: 1)
!2358 = distinct !DILexicalBlock(scope: !2359, file: !383, line: 374, column: 10)
!2359 = distinct !DILexicalBlock(scope: !2335, file: !383, line: 374, column: 4)
!2360 = !DILocation(line: 374, column: 15, scope: !2357)
!2361 = !DILocation(line: 374, column: 5, scope: !2362)
!2362 = !DILexicalBlockFile(scope: !2363, file: !383, discriminator: 2)
!2363 = distinct !DILexicalBlock(scope: !2358, file: !383, line: 374, column: 3)
!2364 = !DILocation(line: 374, column: 14, scope: !2365)
!2365 = !DILexicalBlockFile(scope: !2366, file: !383, discriminator: 3)
!2366 = distinct !DILexicalBlock(scope: !2358, file: !383, line: 374, column: 12)
!2367 = !DILocation(line: 374, column: 99, scope: !2365)
!2368 = !DILocation(line: 374, column: 7, scope: !2369)
!2369 = !DILexicalBlockFile(scope: !2359, file: !383, discriminator: 4)
!2370 = !DILocation(line: 376, column: 31, scope: !2335)
!2371 = !DILocation(line: 376, column: 11, scope: !2335)
!2372 = !DILocation(line: 376, column: 9, scope: !2335)
!2373 = !DILocation(line: 377, column: 6, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2335, file: !383, line: 377, column: 6)
!2375 = !DILocation(line: 377, column: 13, scope: !2374)
!2376 = !DILocation(line: 377, column: 6, scope: !2335)
!2377 = !DILocation(line: 378, column: 3, scope: !2374)
!2378 = !DILocation(line: 380, column: 29, scope: !2335)
!2379 = !DILocation(line: 380, column: 9, scope: !2335)
!2380 = !DILocation(line: 380, column: 7, scope: !2335)
!2381 = !DILocation(line: 381, column: 32, scope: !2335)
!2382 = !DILocation(line: 381, column: 12, scope: !2335)
!2383 = !DILocation(line: 381, column: 10, scope: !2335)
!2384 = !DILocation(line: 383, column: 24, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2335, file: !383, line: 383, column: 6)
!2386 = !DILocation(line: 383, column: 32, scope: !2385)
!2387 = !DILocation(line: 383, column: 38, scope: !2385)
!2388 = !DILocation(line: 383, column: 6, scope: !2385)
!2389 = !DILocation(line: 383, column: 47, scope: !2385)
!2390 = !DILocation(line: 383, column: 6, scope: !2335)
!2391 = !DILocation(line: 384, column: 3, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2385, file: !383, line: 383, column: 55)
!2393 = !DILocation(line: 387, column: 6, scope: !2335)
!2394 = !DILocation(line: 389, column: 15, scope: !2335)
!2395 = !DILocation(line: 389, column: 23, scope: !2335)
!2396 = !DILocation(line: 389, column: 15, scope: !2397)
!2397 = !DILexicalBlockFile(scope: !2335, file: !383, discriminator: 1)
!2398 = !DILocation(line: 389, column: 52, scope: !2399)
!2399 = !DILexicalBlockFile(scope: !2335, file: !383, discriminator: 2)
!2400 = !DILocation(line: 389, column: 39, scope: !2399)
!2401 = !DILocation(line: 389, column: 15, scope: !2399)
!2402 = !DILocation(line: 389, column: 15, scope: !2403)
!2403 = !DILexicalBlockFile(scope: !2335, file: !383, discriminator: 3)
!2404 = !DILocation(line: 389, column: 13, scope: !2403)
!2405 = !DILocation(line: 390, column: 6, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2335, file: !383, line: 390, column: 6)
!2407 = !DILocation(line: 390, column: 17, scope: !2406)
!2408 = !DILocation(line: 390, column: 24, scope: !2406)
!2409 = !DILocation(line: 390, column: 27, scope: !2410)
!2410 = !DILexicalBlockFile(scope: !2406, file: !383, discriminator: 1)
!2411 = !DILocation(line: 390, column: 35, scope: !2410)
!2412 = !DILocation(line: 390, column: 6, scope: !2410)
!2413 = !DILocation(line: 392, column: 16, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2406, file: !383, line: 390, column: 44)
!2415 = !DILocation(line: 392, column: 45, scope: !2414)
!2416 = !DILocation(line: 392, column: 16, scope: !2417)
!2417 = !DILexicalBlockFile(scope: !2414, file: !383, discriminator: 1)
!2418 = !DILocation(line: 392, column: 14, scope: !2414)
!2419 = !DILocation(line: 393, column: 27, scope: !2414)
!2420 = !DILocation(line: 393, column: 56, scope: !2414)
!2421 = !DILocation(line: 393, column: 3, scope: !2414)
!2422 = !DILocation(line: 393, column: 15, scope: !2414)
!2423 = !DILocation(line: 393, column: 25, scope: !2414)
!2424 = !DILocation(line: 394, column: 31, scope: !2414)
!2425 = !DILocation(line: 394, column: 22, scope: !2414)
!2426 = !DILocation(line: 394, column: 3, scope: !2414)
!2427 = !DILocation(line: 394, column: 15, scope: !2414)
!2428 = !DILocation(line: 394, column: 20, scope: !2414)
!2429 = !DILocation(line: 395, column: 18, scope: !2414)
!2430 = !DILocation(line: 395, column: 3, scope: !2414)
!2431 = !DILocation(line: 396, column: 2, scope: !2414)
!2432 = !DILocation(line: 398, column: 31, scope: !2335)
!2433 = !DILocation(line: 398, column: 11, scope: !2335)
!2434 = !DILocation(line: 398, column: 9, scope: !2335)
!2435 = !DILocation(line: 400, column: 10, scope: !2335)
!2436 = !DILocation(line: 400, column: 22, scope: !2335)
!2437 = !DILocation(line: 400, column: 9, scope: !2335)
!2438 = !DILocation(line: 400, column: 9, scope: !2397)
!2439 = !DILocation(line: 400, column: 62, scope: !2399)
!2440 = !DILocation(line: 400, column: 75, scope: !2399)
!2441 = !DILocation(line: 400, column: 39, scope: !2399)
!2442 = !DILocation(line: 400, column: 9, scope: !2399)
!2443 = !DILocation(line: 400, column: 9, scope: !2403)
!2444 = !DILocation(line: 400, column: 88, scope: !2403)
!2445 = !DILocation(line: 400, column: 8, scope: !2403)
!2446 = !DILocation(line: 400, column: 6, scope: !2403)
!2447 = !DILocation(line: 401, column: 14, scope: !2335)
!2448 = !DILocation(line: 401, column: 2, scope: !2335)
!2449 = !DILocation(line: 401, column: 7, scope: !2335)
!2450 = !DILocation(line: 401, column: 12, scope: !2335)
!2451 = !DILocation(line: 402, column: 28, scope: !2335)
!2452 = !DILocation(line: 402, column: 40, scope: !2335)
!2453 = !DILocation(line: 402, column: 27, scope: !2335)
!2454 = !DILocation(line: 402, column: 27, scope: !2397)
!2455 = !DILocation(line: 402, column: 80, scope: !2399)
!2456 = !DILocation(line: 402, column: 93, scope: !2399)
!2457 = !DILocation(line: 402, column: 57, scope: !2399)
!2458 = !DILocation(line: 402, column: 27, scope: !2399)
!2459 = !DILocation(line: 402, column: 27, scope: !2403)
!2460 = !DILocation(line: 402, column: 106, scope: !2403)
!2461 = !DILocation(line: 402, column: 9, scope: !2403)
!2462 = !DILocation(line: 402, column: 14, scope: !2403)
!2463 = !DILocation(line: 402, column: 24, scope: !2403)
!2464 = !DILocation(line: 403, column: 17, scope: !2335)
!2465 = !DILocation(line: 403, column: 28, scope: !2335)
!2466 = !DILocation(line: 403, column: 17, scope: !2397)
!2467 = !DILocation(line: 403, column: 53, scope: !2399)
!2468 = !DILocation(line: 403, column: 65, scope: !2399)
!2469 = !DILocation(line: 403, column: 44, scope: !2399)
!2470 = !DILocation(line: 403, column: 17, scope: !2399)
!2471 = !DILocation(line: 403, column: 17, scope: !2403)
!2472 = !DILocation(line: 403, column: 2, scope: !2403)
!2473 = !DILocation(line: 403, column: 7, scope: !2403)
!2474 = !DILocation(line: 403, column: 15, scope: !2403)
!2475 = !DILocation(line: 404, column: 35, scope: !2335)
!2476 = !DILocation(line: 404, column: 16, scope: !2335)
!2477 = !DILocation(line: 404, column: 52, scope: !2335)
!2478 = !DILocation(line: 404, column: 16, scope: !2397)
!2479 = !DILocation(line: 405, column: 23, scope: !2335)
!2480 = !DILocation(line: 405, column: 4, scope: !2335)
!2481 = !DILocation(line: 405, column: 39, scope: !2335)
!2482 = !DILocation(line: 404, column: 16, scope: !2399)
!2483 = !DILocation(line: 404, column: 16, scope: !2403)
!2484 = !DILocation(line: 404, column: 2, scope: !2403)
!2485 = !DILocation(line: 404, column: 7, scope: !2403)
!2486 = !DILocation(line: 404, column: 14, scope: !2403)
!2487 = !DILocation(line: 406, column: 26, scope: !2335)
!2488 = !DILocation(line: 406, column: 17, scope: !2335)
!2489 = !DILocation(line: 406, column: 2, scope: !2335)
!2490 = !DILocation(line: 406, column: 7, scope: !2335)
!2491 = !DILocation(line: 406, column: 15, scope: !2335)
!2492 = !DILocation(line: 407, column: 47, scope: !2335)
!2493 = !DILocation(line: 407, column: 27, scope: !2335)
!2494 = !DILocation(line: 407, column: 18, scope: !2397)
!2495 = !DILocation(line: 407, column: 2, scope: !2335)
!2496 = !DILocation(line: 407, column: 7, scope: !2335)
!2497 = !DILocation(line: 407, column: 16, scope: !2335)
!2498 = !DILocation(line: 409, column: 38, scope: !2335)
!2499 = !DILocation(line: 409, column: 17, scope: !2335)
!2500 = !DILocation(line: 409, column: 60, scope: !2335)
!2501 = !DILocation(line: 409, column: 84, scope: !2397)
!2502 = !DILocation(line: 409, column: 63, scope: !2397)
!2503 = !DILocation(line: 409, column: 60, scope: !2397)
!2504 = !DILocation(line: 409, column: 60, scope: !2399)
!2505 = !DILocation(line: 409, column: 2, scope: !2399)
!2506 = !DILocation(line: 409, column: 7, scope: !2399)
!2507 = !DILocation(line: 409, column: 15, scope: !2399)
!2508 = !DILocation(line: 410, column: 41, scope: !2335)
!2509 = !DILocation(line: 410, column: 20, scope: !2335)
!2510 = !DILocation(line: 410, column: 66, scope: !2335)
!2511 = !DILocation(line: 410, column: 90, scope: !2397)
!2512 = !DILocation(line: 410, column: 69, scope: !2397)
!2513 = !DILocation(line: 410, column: 66, scope: !2397)
!2514 = !DILocation(line: 410, column: 66, scope: !2399)
!2515 = !DILocation(line: 410, column: 2, scope: !2399)
!2516 = !DILocation(line: 410, column: 7, scope: !2399)
!2517 = !DILocation(line: 410, column: 18, scope: !2399)
!2518 = !DILocation(line: 412, column: 30, scope: !2335)
!2519 = !DILocation(line: 412, column: 10, scope: !2335)
!2520 = !DILocation(line: 412, column: 8, scope: !2335)
!2521 = !DILocation(line: 413, column: 6, scope: !2522)
!2522 = distinct !DILexicalBlock(scope: !2335, file: !383, line: 413, column: 6)
!2523 = !DILocation(line: 413, column: 12, scope: !2522)
!2524 = !DILocation(line: 413, column: 6, scope: !2335)
!2525 = !DILocation(line: 414, column: 31, scope: !2522)
!2526 = !DILocation(line: 414, column: 11, scope: !2522)
!2527 = !DILocation(line: 414, column: 9, scope: !2522)
!2528 = !DILocation(line: 414, column: 3, scope: !2522)
!2529 = !DILocation(line: 415, column: 27, scope: !2335)
!2530 = !DILocation(line: 415, column: 18, scope: !2335)
!2531 = !DILocation(line: 415, column: 2, scope: !2335)
!2532 = !DILocation(line: 415, column: 7, scope: !2335)
!2533 = !DILocation(line: 415, column: 16, scope: !2335)
!2534 = !DILocation(line: 417, column: 30, scope: !2335)
!2535 = !DILocation(line: 417, column: 10, scope: !2335)
!2536 = !DILocation(line: 417, column: 8, scope: !2335)
!2537 = !DILocation(line: 418, column: 6, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2335, file: !383, line: 418, column: 6)
!2539 = !DILocation(line: 418, column: 12, scope: !2538)
!2540 = !DILocation(line: 418, column: 6, scope: !2335)
!2541 = !DILocation(line: 419, column: 31, scope: !2538)
!2542 = !DILocation(line: 419, column: 11, scope: !2538)
!2543 = !DILocation(line: 419, column: 9, scope: !2538)
!2544 = !DILocation(line: 419, column: 3, scope: !2538)
!2545 = !DILocation(line: 420, column: 27, scope: !2335)
!2546 = !DILocation(line: 420, column: 18, scope: !2335)
!2547 = !DILocation(line: 420, column: 2, scope: !2335)
!2548 = !DILocation(line: 420, column: 7, scope: !2335)
!2549 = !DILocation(line: 420, column: 16, scope: !2335)
!2550 = !DILocation(line: 422, column: 30, scope: !2335)
!2551 = !DILocation(line: 422, column: 10, scope: !2335)
!2552 = !DILocation(line: 422, column: 8, scope: !2335)
!2553 = !DILocation(line: 423, column: 6, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2335, file: !383, line: 423, column: 6)
!2555 = !DILocation(line: 423, column: 12, scope: !2554)
!2556 = !DILocation(line: 423, column: 6, scope: !2335)
!2557 = !DILocation(line: 424, column: 31, scope: !2554)
!2558 = !DILocation(line: 424, column: 11, scope: !2554)
!2559 = !DILocation(line: 424, column: 9, scope: !2554)
!2560 = !DILocation(line: 424, column: 3, scope: !2554)
!2561 = !DILocation(line: 425, column: 27, scope: !2335)
!2562 = !DILocation(line: 425, column: 18, scope: !2335)
!2563 = !DILocation(line: 425, column: 2, scope: !2335)
!2564 = !DILocation(line: 425, column: 7, scope: !2335)
!2565 = !DILocation(line: 425, column: 16, scope: !2335)
!2566 = !DILocation(line: 427, column: 30, scope: !2335)
!2567 = !DILocation(line: 427, column: 10, scope: !2335)
!2568 = !DILocation(line: 427, column: 8, scope: !2335)
!2569 = !DILocation(line: 428, column: 6, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2335, file: !383, line: 428, column: 6)
!2571 = !DILocation(line: 428, column: 12, scope: !2570)
!2572 = !DILocation(line: 428, column: 6, scope: !2335)
!2573 = !DILocation(line: 429, column: 31, scope: !2570)
!2574 = !DILocation(line: 429, column: 11, scope: !2570)
!2575 = !DILocation(line: 429, column: 9, scope: !2570)
!2576 = !DILocation(line: 429, column: 3, scope: !2570)
!2577 = !DILocation(line: 430, column: 29, scope: !2335)
!2578 = !DILocation(line: 430, column: 20, scope: !2335)
!2579 = !DILocation(line: 430, column: 2, scope: !2335)
!2580 = !DILocation(line: 430, column: 7, scope: !2335)
!2581 = !DILocation(line: 430, column: 18, scope: !2335)
!2582 = !DILocation(line: 432, column: 30, scope: !2335)
!2583 = !DILocation(line: 432, column: 10, scope: !2335)
!2584 = !DILocation(line: 432, column: 8, scope: !2335)
!2585 = !DILocation(line: 433, column: 6, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2335, file: !383, line: 433, column: 6)
!2587 = !DILocation(line: 433, column: 12, scope: !2586)
!2588 = !DILocation(line: 433, column: 6, scope: !2335)
!2589 = !DILocation(line: 434, column: 31, scope: !2586)
!2590 = !DILocation(line: 434, column: 11, scope: !2586)
!2591 = !DILocation(line: 434, column: 9, scope: !2586)
!2592 = !DILocation(line: 434, column: 3, scope: !2586)
!2593 = !DILocation(line: 435, column: 29, scope: !2335)
!2594 = !DILocation(line: 435, column: 20, scope: !2335)
!2595 = !DILocation(line: 435, column: 2, scope: !2335)
!2596 = !DILocation(line: 435, column: 7, scope: !2335)
!2597 = !DILocation(line: 435, column: 18, scope: !2335)
!2598 = !DILocation(line: 437, column: 30, scope: !2335)
!2599 = !DILocation(line: 437, column: 10, scope: !2335)
!2600 = !DILocation(line: 437, column: 8, scope: !2335)
!2601 = !DILocation(line: 438, column: 6, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2335, file: !383, line: 438, column: 6)
!2603 = !DILocation(line: 438, column: 12, scope: !2602)
!2604 = !DILocation(line: 438, column: 6, scope: !2335)
!2605 = !DILocation(line: 439, column: 31, scope: !2602)
!2606 = !DILocation(line: 439, column: 11, scope: !2602)
!2607 = !DILocation(line: 439, column: 9, scope: !2602)
!2608 = !DILocation(line: 439, column: 3, scope: !2602)
!2609 = !DILocation(line: 440, column: 30, scope: !2335)
!2610 = !DILocation(line: 440, column: 21, scope: !2335)
!2611 = !DILocation(line: 440, column: 2, scope: !2335)
!2612 = !DILocation(line: 440, column: 7, scope: !2335)
!2613 = !DILocation(line: 440, column: 19, scope: !2335)
!2614 = !DILocation(line: 442, column: 30, scope: !2335)
!2615 = !DILocation(line: 442, column: 10, scope: !2335)
!2616 = !DILocation(line: 442, column: 8, scope: !2335)
!2617 = !DILocation(line: 443, column: 6, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2335, file: !383, line: 443, column: 6)
!2619 = !DILocation(line: 443, column: 12, scope: !2618)
!2620 = !DILocation(line: 443, column: 6, scope: !2335)
!2621 = !DILocation(line: 444, column: 31, scope: !2618)
!2622 = !DILocation(line: 444, column: 11, scope: !2618)
!2623 = !DILocation(line: 444, column: 9, scope: !2618)
!2624 = !DILocation(line: 444, column: 3, scope: !2618)
!2625 = !DILocation(line: 445, column: 34, scope: !2335)
!2626 = !DILocation(line: 445, column: 25, scope: !2335)
!2627 = !DILocation(line: 445, column: 2, scope: !2335)
!2628 = !DILocation(line: 445, column: 7, scope: !2335)
!2629 = !DILocation(line: 445, column: 23, scope: !2335)
!2630 = !DILocation(line: 447, column: 30, scope: !2335)
!2631 = !DILocation(line: 447, column: 10, scope: !2335)
!2632 = !DILocation(line: 447, column: 8, scope: !2335)
!2633 = !DILocation(line: 448, column: 6, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2335, file: !383, line: 448, column: 6)
!2635 = !DILocation(line: 448, column: 12, scope: !2634)
!2636 = !DILocation(line: 448, column: 6, scope: !2335)
!2637 = !DILocation(line: 449, column: 31, scope: !2634)
!2638 = !DILocation(line: 449, column: 11, scope: !2634)
!2639 = !DILocation(line: 449, column: 9, scope: !2634)
!2640 = !DILocation(line: 449, column: 3, scope: !2634)
!2641 = !DILocation(line: 450, column: 36, scope: !2335)
!2642 = !DILocation(line: 450, column: 27, scope: !2335)
!2643 = !DILocation(line: 450, column: 2, scope: !2335)
!2644 = !DILocation(line: 450, column: 7, scope: !2335)
!2645 = !DILocation(line: 450, column: 25, scope: !2335)
!2646 = !DILocation(line: 452, column: 6, scope: !2647)
!2647 = distinct !DILexicalBlock(scope: !2335, file: !383, line: 452, column: 6)
!2648 = !DILocation(line: 452, column: 11, scope: !2647)
!2649 = !DILocation(line: 452, column: 22, scope: !2647)
!2650 = !DILocation(line: 452, column: 25, scope: !2651)
!2651 = !DILexicalBlockFile(scope: !2647, file: !383, discriminator: 1)
!2652 = !DILocation(line: 452, column: 30, scope: !2651)
!2653 = !DILocation(line: 452, column: 6, scope: !2651)
!2654 = !DILocation(line: 453, column: 3, scope: !2647)
!2655 = !DILocation(line: 453, column: 8, scope: !2647)
!2656 = !DILocation(line: 453, column: 19, scope: !2647)
!2657 = !DILocation(line: 454, column: 6, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2335, file: !383, line: 454, column: 6)
!2659 = !DILocation(line: 454, column: 11, scope: !2658)
!2660 = !DILocation(line: 454, column: 20, scope: !2658)
!2661 = !DILocation(line: 454, column: 27, scope: !2658)
!2662 = !DILocation(line: 454, column: 30, scope: !2663)
!2663 = !DILexicalBlockFile(scope: !2658, file: !383, discriminator: 1)
!2664 = !DILocation(line: 454, column: 35, scope: !2663)
!2665 = !DILocation(line: 454, column: 6, scope: !2663)
!2666 = !DILocation(line: 455, column: 3, scope: !2658)
!2667 = !DILocation(line: 455, column: 8, scope: !2658)
!2668 = !DILocation(line: 455, column: 16, scope: !2658)
!2669 = !DILocation(line: 457, column: 14, scope: !2335)
!2670 = !DILocation(line: 457, column: 2, scope: !2335)
!2671 = !DILocation(line: 457, column: 7, scope: !2335)
!2672 = !DILocation(line: 457, column: 12, scope: !2335)
!2673 = !DILocation(line: 458, column: 42, scope: !2335)
!2674 = !DILocation(line: 458, column: 21, scope: !2335)
!2675 = !DILocation(line: 458, column: 2, scope: !2335)
!2676 = !DILocation(line: 458, column: 7, scope: !2335)
!2677 = !DILocation(line: 458, column: 19, scope: !2335)
!2678 = !DILocation(line: 459, column: 39, scope: !2335)
!2679 = !DILocation(line: 459, column: 18, scope: !2335)
!2680 = !DILocation(line: 459, column: 2, scope: !2335)
!2681 = !DILocation(line: 459, column: 7, scope: !2335)
!2682 = !DILocation(line: 459, column: 16, scope: !2335)
!2683 = !DILocation(line: 460, column: 47, scope: !2335)
!2684 = !DILocation(line: 460, column: 27, scope: !2335)
!2685 = !DILocation(line: 460, column: 18, scope: !2397)
!2686 = !DILocation(line: 460, column: 2, scope: !2335)
!2687 = !DILocation(line: 460, column: 7, scope: !2335)
!2688 = !DILocation(line: 460, column: 16, scope: !2335)
!2689 = !DILocation(line: 462, column: 38, scope: !2335)
!2690 = !DILocation(line: 462, column: 43, scope: !2335)
!2691 = !DILocation(line: 462, column: 2, scope: !2335)
!2692 = !DILocation(line: 464, column: 32, scope: !2335)
!2693 = !DILocation(line: 464, column: 46, scope: !2335)
!2694 = !DILocation(line: 464, column: 17, scope: !2335)
!2695 = !DILocation(line: 464, column: 15, scope: !2335)
!2696 = !DILocation(line: 465, column: 9, scope: !2335)
!2697 = !DILocation(line: 465, column: 2, scope: !2335)
!2698 = !DILocation(line: 466, column: 1, scope: !2335)
