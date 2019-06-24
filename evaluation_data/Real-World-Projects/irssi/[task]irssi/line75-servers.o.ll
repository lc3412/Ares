; ModuleID = './line75-servers.o.i'
source_filename = "./line75-servers.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
%struct._SERVER_REC = type { i32, i32, i32, %struct._SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, void (%struct._SERVER_REC*, i8*, i32)*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)* }
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
%struct._NET_SENDBUF_REC = type { %struct._GIOChannel*, %struct._LINEBUF_REC*, i32, i32, i32, i8*, i32, i8 }
%struct._LINEBUF_REC = type opaque
%struct._RAWLOG_REC = type { i32, i32, i32, %struct._GSList* }
%struct._GHashTable = type opaque
%struct._GTimeVal = type { i64, i64 }
%struct._CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)* }
%struct._WI_ITEM_REC = type opaque
%struct._NICK_REC = type opaque
%struct._QUERY_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, i8 }
%struct._CHAT_PROTOCOL_REC = type { i32, i8, i8*, i8*, i8*, %struct._CHATNET_REC* ()*, %struct._SERVER_SETUP_REC* ()*, %struct._CHANNEL_SETUP_REC* ()*, %struct._SERVER_CONNECT_REC* ()*, void (%struct._SERVER_CONNECT_REC*)*, %struct._SERVER_REC* (%struct._SERVER_CONNECT_REC*)*, void (%struct._SERVER_REC*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*, i8*, i32)*, %struct._QUERY_REC* (i8*, i8*, i32)* }
%struct._CHATNET_REC = type opaque
%struct._SERVER_SETUP_REC = type { i32, i32, i8*, i16, i8*, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IPADDR*, %struct._IPADDR*, i64, i8, %struct._GHashTable* }
%struct._CHANNEL_SETUP_REC = type opaque
%struct.RESOLVED_IP_REC = type { %struct._IPADDR, %struct._IPADDR, i32, i32, i8*, i8*, i8* }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }

@.str = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@__func__.server_connect_failed = private unnamed_addr constant [22 x i8] c"server_connect_failed\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"IS_SERVER(server)\00", align 1
@lookup_servers = common global %struct._GSList* null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"server connect failed\00", align 1
@servers = common global %struct._GSList* null, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"server connected\00", align 1
@__func__.server_connect_init = private unnamed_addr constant [20 x i8] c"server_connect_init\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"server != NULL\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@__func__.server_start_connect = private unnamed_addr constant [21 x i8] c"server_start_connect\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"server_connect(): pipe() failed.\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"resolve_reverse_lookup\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"server looking\00", align 1
@__func__.server_disconnect = private unnamed_addr constant [18 x i8] c"server_disconnect\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"server disconnected\00", align 1
@__func__.server_ref = private unnamed_addr constant [11 x i8] c"server_ref\00", align 1
@__func__.server_unref = private unnamed_addr constant [13 x i8] c"server_unref\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"Non-referenced server wasn't disconnected\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"server destroyed\00", align 1
@__func__.server_find_tag = private unnamed_addr constant [16 x i8] c"server_find_tag\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"tag != NULL\00", align 1
@__func__.server_find_lookup_tag = private unnamed_addr constant [23 x i8] c"server_find_lookup_tag\00", align 1
@__func__.server_find_chatnet = private unnamed_addr constant [20 x i8] c"server_find_chatnet\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"chatnet != NULL\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"SERVER CONNECT\00", align 1
@__func__.server_connect_unref = private unnamed_addr constant [21 x i8] c"server_connect_unref\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"IS_SERVER_CONNECT(conn)\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"Connection '%s' refcount = %d\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"server nick changed\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"error command\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"resolve_prefer_ipv6\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c"chat protocol deinit\00", align 1
@__func__.server_create_tag = private unnamed_addr constant [18 x i8] c"server_create_tag\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@__func__.server_create_address_tag = private unnamed_addr constant [26 x i8] c"server_create_address_tag\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"address != NULL\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"irc\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"chat\00", align 1
@__func__.server_real_connect = private unnamed_addr constant [20 x i8] c"server_real_connect\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"ip != NULL || unix_socket != NULL\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"server connecting\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c": \00", align 1
@__func__.server_connect_callback_init_ssl = private unnamed_addr constant [33 x i8] c"server_connect_callback_init_ssl\00", align 1
@__func__.server_connect_callback_init = private unnamed_addr constant [29 x i8] c"server_connect_callback_init\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"IPv4 address not found for host\00", align 1
@.str.31 = private unnamed_addr constant [32 x i8] c"IPv6 address not found for host\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"Host lookup failed\00", align 1
@__func__.server_remove_channels = private unnamed_addr constant [23 x i8] c"server_remove_channels\00", align 1

; Function Attrs: nounwind uwtable
define void @server_connect_failed(%struct._SERVER_REC*, i8*) #0 !dbg !546 {
  %3 = alloca %struct._SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %3, metadata !550, metadata !551), !dbg !552
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !553, metadata !551), !dbg !554
  br label %5, !dbg !555, !llvm.loop !556

; <label>:5:                                      ; preds = %2
  %6 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !557
  %7 = bitcast %struct._SERVER_REC* %6 to i8*, !dbg !557
  %8 = call i8* @module_check_cast(i8* %7, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)), !dbg !561
  %9 = bitcast i8* %8 to %struct._SERVER_REC*, !dbg !562
  %10 = icmp ne %struct._SERVER_REC* %9, null, !dbg !562
  br i1 %10, label %11, label %12, !dbg !563

; <label>:11:                                     ; preds = %5
  br i1 false, label %14, label %13, !dbg !564

; <label>:12:                                     ; preds = %5
  br i1 false, label %13, label %14, !dbg !566

; <label>:13:                                     ; preds = %12, %11
  br label %15, !dbg !568

; <label>:14:                                     ; preds = %12, %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.server_connect_failed, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0)), !dbg !571
  br label %80, !dbg !574

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !575

; <label>:16:                                     ; preds = %15
  %17 = load %struct._GSList*, %struct._GSList** @lookup_servers, align 8, !dbg !577
  %18 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !578
  %19 = bitcast %struct._SERVER_REC* %18 to i8*, !dbg !578
  %20 = call %struct._GSList* @g_slist_remove(%struct._GSList* %17, i8* %19), !dbg !579
  store %struct._GSList* %20, %struct._GSList** @lookup_servers, align 8, !dbg !580
  %21 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !581
  %22 = load i8*, i8** %4, align 8, !dbg !582
  %23 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i32 2, %struct._SERVER_REC* %21, i8* %22), !dbg !583
  %24 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !584
  %25 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %24, i32 0, i32 12, !dbg !586
  %26 = load i32, i32* %25, align 8, !dbg !586
  %27 = icmp ne i32 %26, -1, !dbg !587
  br i1 %27, label %28, label %35, !dbg !588

; <label>:28:                                     ; preds = %16
  %29 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !589
  %30 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %29, i32 0, i32 12, !dbg !591
  %31 = load i32, i32* %30, align 8, !dbg !591
  %32 = call i32 @g_source_remove(i32 %31), !dbg !592
  %33 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !593
  %34 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %33, i32 0, i32 12, !dbg !594
  store i32 -1, i32* %34, align 8, !dbg !595
  br label %35, !dbg !596

; <label>:35:                                     ; preds = %28, %16
  %36 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !597
  %37 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %36, i32 0, i32 9, !dbg !599
  %38 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %37, align 8, !dbg !599
  %39 = icmp ne %struct._NET_SENDBUF_REC* %38, null, !dbg !600
  br i1 %39, label %40, label %46, !dbg !601

; <label>:40:                                     ; preds = %35
  %41 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !602
  %42 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %41, i32 0, i32 9, !dbg !604
  %43 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %42, align 8, !dbg !604
  call void @net_sendbuffer_destroy(%struct._NET_SENDBUF_REC* %43, i32 1), !dbg !605
  %44 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !606
  %45 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %44, i32 0, i32 9, !dbg !607
  store %struct._NET_SENDBUF_REC* null, %struct._NET_SENDBUF_REC** %45, align 8, !dbg !608
  br label %46, !dbg !609

; <label>:46:                                     ; preds = %40, %35
  %47 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !610
  %48 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %47, i32 0, i32 11, !dbg !612
  %49 = getelementptr inbounds [2 x %struct._GIOChannel*], [2 x %struct._GIOChannel*]* %48, i64 0, i64 0, !dbg !610
  %50 = load %struct._GIOChannel*, %struct._GIOChannel** %49, align 8, !dbg !610
  %51 = icmp ne %struct._GIOChannel* %50, null, !dbg !613
  br i1 %51, label %52, label %77, !dbg !614

; <label>:52:                                     ; preds = %46
  %53 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !615
  %54 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %53, i32 0, i32 11, !dbg !617
  %55 = getelementptr inbounds [2 x %struct._GIOChannel*], [2 x %struct._GIOChannel*]* %54, i64 0, i64 0, !dbg !615
  %56 = load %struct._GIOChannel*, %struct._GIOChannel** %55, align 8, !dbg !615
  %57 = call i32 @g_io_channel_shutdown(%struct._GIOChannel* %56, i32 1, %struct._GError** null), !dbg !618
  %58 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !619
  %59 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %58, i32 0, i32 11, !dbg !620
  %60 = getelementptr inbounds [2 x %struct._GIOChannel*], [2 x %struct._GIOChannel*]* %59, i64 0, i64 0, !dbg !619
  %61 = load %struct._GIOChannel*, %struct._GIOChannel** %60, align 8, !dbg !619
  call void @g_io_channel_unref(%struct._GIOChannel* %61), !dbg !621
  %62 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !622
  %63 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %62, i32 0, i32 11, !dbg !623
  %64 = getelementptr inbounds [2 x %struct._GIOChannel*], [2 x %struct._GIOChannel*]* %63, i64 0, i64 1, !dbg !622
  %65 = load %struct._GIOChannel*, %struct._GIOChannel** %64, align 8, !dbg !622
  %66 = call i32 @g_io_channel_shutdown(%struct._GIOChannel* %65, i32 1, %struct._GError** null), !dbg !624
  %67 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !625
  %68 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %67, i32 0, i32 11, !dbg !626
  %69 = getelementptr inbounds [2 x %struct._GIOChannel*], [2 x %struct._GIOChannel*]* %68, i64 0, i64 1, !dbg !625
  %70 = load %struct._GIOChannel*, %struct._GIOChannel** %69, align 8, !dbg !625
  call void @g_io_channel_unref(%struct._GIOChannel* %70), !dbg !627
  %71 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !628
  %72 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %71, i32 0, i32 11, !dbg !629
  %73 = getelementptr inbounds [2 x %struct._GIOChannel*], [2 x %struct._GIOChannel*]* %72, i64 0, i64 0, !dbg !628
  store %struct._GIOChannel* null, %struct._GIOChannel** %73, align 8, !dbg !630
  %74 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !631
  %75 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %74, i32 0, i32 11, !dbg !632
  %76 = getelementptr inbounds [2 x %struct._GIOChannel*], [2 x %struct._GIOChannel*]* %75, i64 0, i64 1, !dbg !631
  store %struct._GIOChannel* null, %struct._GIOChannel** %76, align 8, !dbg !633
  br label %77, !dbg !634

; <label>:77:                                     ; preds = %52, %46
  %78 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !635
  %79 = call i32 @server_unref(%struct._SERVER_REC* %78), !dbg !636
  br label %80, !dbg !637

; <label>:80:                                     ; preds = %77, %14
  ret void, !dbg !638
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @module_check_cast(i8*, i32, i8*) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

declare i32 @signal_emit(i8*, i32, ...) #2

declare i32 @g_source_remove(i32) #2

declare void @net_sendbuffer_destroy(%struct._NET_SENDBUF_REC*, i32) #2

declare i32 @g_io_channel_shutdown(%struct._GIOChannel*, i32, %struct._GError**) #2

declare void @g_io_channel_unref(%struct._GIOChannel*) #2

; Function Attrs: nounwind uwtable
define i32 @server_unref(%struct._SERVER_REC*) #0 !dbg !640 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._SERVER_REC*, align 8
  %4 = alloca i32, align 4
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %3, metadata !643, metadata !551), !dbg !644
  call void @llvm.dbg.declare(metadata i32* %4, metadata !645, metadata !551), !dbg !646
  br label %5, !dbg !647, !llvm.loop !648

; <label>:5:                                      ; preds = %1
  %6 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !649
  %7 = bitcast %struct._SERVER_REC* %6 to i8*, !dbg !649
  %8 = call i8* @module_check_cast(i8* %7, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)), !dbg !653
  %9 = bitcast i8* %8 to %struct._SERVER_REC*, !dbg !654
  %10 = icmp ne %struct._SERVER_REC* %9, null, !dbg !654
  br i1 %10, label %11, label %12, !dbg !655

; <label>:11:                                     ; preds = %5
  br i1 false, label %14, label %13, !dbg !656

; <label>:12:                                     ; preds = %5
  br i1 false, label %13, label %14, !dbg !658

; <label>:13:                                     ; preds = %12, %11
  br label %15, !dbg !660

; <label>:14:                                     ; preds = %12, %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.server_unref, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0)), !dbg !663
  store i32 0, i32* %2, align 4, !dbg !666
  br label %107, !dbg !666

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !667

; <label>:16:                                     ; preds = %15
  %17 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !669
  %18 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %17, i32 0, i32 2, !dbg !671
  %19 = load i32, i32* %18, align 8, !dbg !672
  %20 = add nsw i32 %19, -1, !dbg !672
  store i32 %20, i32* %18, align 8, !dbg !672
  %21 = icmp sgt i32 %20, 0, !dbg !673
  br i1 %21, label %22, label %23, !dbg !674

; <label>:22:                                     ; preds = %16
  store i32 1, i32* %2, align 4, !dbg !675
  br label %107, !dbg !675

; <label>:23:                                     ; preds = %16
  %24 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !676
  %25 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !678
  %26 = bitcast %struct._SERVER_REC* %25 to i8*, !dbg !678
  %27 = call %struct._GSList* @g_slist_find(%struct._GSList* %24, i8* %26), !dbg !679
  %28 = icmp ne %struct._GSList* %27, null, !dbg !680
  br i1 %28, label %29, label %31, !dbg !681

; <label>:29:                                     ; preds = %23
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i32 0, i32 0)), !dbg !682
  %30 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !684
  call void @server_disconnect(%struct._SERVER_REC* %30), !dbg !685
  store i32 1, i32* %2, align 4, !dbg !686
  br label %107, !dbg !686

; <label>:31:                                     ; preds = %23
  %32 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !687
  %33 = call i32 @server_remove_channels(%struct._SERVER_REC* %32), !dbg !688
  store i32 %33, i32* %4, align 4, !dbg !689
  %34 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !690
  %35 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %34, i32 0, i32 8, !dbg !692
  %36 = load i8, i8* %35, align 8, !dbg !692
  %37 = lshr i8 %36, 1, !dbg !692
  %38 = and i8 %37, 1, !dbg !692
  %39 = zext i8 %38 to i32, !dbg !692
  %40 = icmp ne i32 %39, 0, !dbg !690
  br i1 %40, label %41, label %44, !dbg !693

; <label>:41:                                     ; preds = %31
  %42 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !694
  %43 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i32 1, %struct._SERVER_REC* %42), !dbg !696
  br label %44, !dbg !697

; <label>:44:                                     ; preds = %41, %31
  %45 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !698
  %46 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %45, i32 0, i32 9, !dbg !700
  %47 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %46, align 8, !dbg !700
  %48 = icmp ne %struct._NET_SENDBUF_REC* %47, null, !dbg !701
  br i1 %48, label %49, label %75, !dbg !702

; <label>:49:                                     ; preds = %44
  %50 = load i32, i32* %4, align 4, !dbg !703
  %51 = icmp ne i32 %50, 0, !dbg !703
  br i1 %51, label %52, label %60, !dbg !706

; <label>:52:                                     ; preds = %49
  %53 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !707
  %54 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %53, i32 0, i32 8, !dbg !709
  %55 = load i8, i8* %54, align 8, !dbg !709
  %56 = lshr i8 %55, 2, !dbg !709
  %57 = and i8 %56, 1, !dbg !709
  %58 = zext i8 %57 to i32, !dbg !709
  %59 = icmp ne i32 %58, 0, !dbg !707
  br i1 %59, label %60, label %64, !dbg !710

; <label>:60:                                     ; preds = %52, %49
  %61 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !711
  %62 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %61, i32 0, i32 9, !dbg !712
  %63 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %62, align 8, !dbg !712
  call void @net_sendbuffer_destroy(%struct._NET_SENDBUF_REC* %63, i32 1), !dbg !713
  br label %72, !dbg !713

; <label>:64:                                     ; preds = %52
  %65 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !714
  %66 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %65, i32 0, i32 9, !dbg !716
  %67 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %66, align 8, !dbg !716
  %68 = call %struct._GIOChannel* @net_sendbuffer_handle(%struct._NET_SENDBUF_REC* %67), !dbg !717
  call void @net_disconnect_later(%struct._GIOChannel* %68), !dbg !718
  %69 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !720
  %70 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %69, i32 0, i32 9, !dbg !721
  %71 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %70, align 8, !dbg !721
  call void @net_sendbuffer_destroy(%struct._NET_SENDBUF_REC* %71, i32 0), !dbg !722
  br label %72

; <label>:72:                                     ; preds = %64, %60
  %73 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !723
  %74 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %73, i32 0, i32 9, !dbg !724
  store %struct._NET_SENDBUF_REC* null, %struct._NET_SENDBUF_REC** %74, align 8, !dbg !725
  br label %75, !dbg !726

; <label>:75:                                     ; preds = %72, %44
  %76 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !727
  %77 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %76, i32 0, i32 15, !dbg !728
  %78 = load %struct._GHashTable*, %struct._GHashTable** %77, align 8, !dbg !728
  call void @g_hash_table_destroy(%struct._GHashTable* %78), !dbg !729
  %79 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !730
  %80 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %79, i32 0, i32 3, !dbg !731
  %81 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %80, align 8, !dbg !731
  call void @server_connect_unref(%struct._SERVER_CONNECT_REC* %81), !dbg !732
  %82 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !733
  %83 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %82, i32 0, i32 14, !dbg !735
  %84 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %83, align 8, !dbg !735
  %85 = icmp ne %struct._RAWLOG_REC* %84, null, !dbg !736
  br i1 %85, label %86, label %90, !dbg !737

; <label>:86:                                     ; preds = %75
  %87 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !738
  %88 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %87, i32 0, i32 14, !dbg !740
  %89 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %88, align 8, !dbg !740
  call void @rawlog_destroy(%struct._RAWLOG_REC* %89), !dbg !741
  br label %90, !dbg !741

; <label>:90:                                     ; preds = %86, %75
  %91 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !742
  %92 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %91, i32 0, i32 16, !dbg !743
  %93 = load i8*, i8** %92, align 8, !dbg !743
  call void @g_free(i8* %93), !dbg !744
  %94 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !745
  %95 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %94, i32 0, i32 17, !dbg !746
  %96 = load i8*, i8** %95, align 8, !dbg !746
  call void @g_free(i8* %96), !dbg !747
  %97 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !748
  %98 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %97, i32 0, i32 7, !dbg !749
  %99 = load i8*, i8** %98, align 8, !dbg !749
  call void @g_free(i8* %99), !dbg !750
  %100 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !751
  %101 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %100, i32 0, i32 6, !dbg !752
  %102 = load i8*, i8** %101, align 8, !dbg !752
  call void @g_free(i8* %102), !dbg !753
  %103 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !754
  %104 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %103, i32 0, i32 0, !dbg !755
  store i32 0, i32* %104, align 8, !dbg !756
  %105 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !757
  %106 = bitcast %struct._SERVER_REC* %105 to i8*, !dbg !757
  call void @g_free(i8* %106), !dbg !758
  store i32 0, i32* %2, align 4, !dbg !759
  br label %107, !dbg !759

; <label>:107:                                    ; preds = %90, %29, %22, %14
  %108 = load i32, i32* %2, align 4, !dbg !760
  ret i32 %108, !dbg !760
}

; Function Attrs: nounwind uwtable
define void @server_connect_finished(%struct._SERVER_REC*) #0 !dbg !761 {
  %2 = alloca %struct._SERVER_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %2, metadata !764, metadata !551), !dbg !765
  %3 = call i64 @time(i64* null) #7, !dbg !766
  %4 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !767
  %5 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %4, i32 0, i32 4, !dbg !768
  store i64 %3, i64* %5, align 8, !dbg !769
  %6 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !770
  %7 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !771
  %8 = bitcast %struct._SERVER_REC* %7 to i8*, !dbg !771
  %9 = call %struct._GSList* @g_slist_append(%struct._GSList* %6, i8* %8), !dbg !772
  store %struct._GSList* %9, %struct._GSList** @servers, align 8, !dbg !773
  %10 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !774
  %11 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct._SERVER_REC* %10), !dbg !775
  ret void, !dbg !776
}

; Function Attrs: nounwind
declare i64 @time(i64*) #3

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define %struct._SERVER_REC* @server_connect(%struct._SERVER_CONNECT_REC*) #0 !dbg !777 {
  %2 = alloca %struct._SERVER_CONNECT_REC*, align 8
  %3 = alloca %struct._CHAT_PROTOCOL_REC*, align 8
  %4 = alloca %struct._SERVER_REC*, align 8
  store %struct._SERVER_CONNECT_REC* %0, %struct._SERVER_CONNECT_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_CONNECT_REC** %2, metadata !780, metadata !551), !dbg !781
  call void @llvm.dbg.declare(metadata %struct._CHAT_PROTOCOL_REC** %3, metadata !782, metadata !551), !dbg !867
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !868, metadata !551), !dbg !869
  %5 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !870
  %6 = icmp eq %struct._SERVER_CONNECT_REC* %5, null, !dbg !871
  br i1 %6, label %7, label %9, !dbg !872

; <label>:7:                                      ; preds = %1
  %8 = call %struct._CHAT_PROTOCOL_REC* @chat_protocol_get_default(), !dbg !873
  br label %14, !dbg !873

; <label>:9:                                      ; preds = %1
  %10 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !875
  %11 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %10, i32 0, i32 1, !dbg !877
  %12 = load i32, i32* %11, align 4, !dbg !877
  %13 = call %struct._CHAT_PROTOCOL_REC* @chat_protocol_find_id(i32 %12), !dbg !878
  br label %14, !dbg !879

; <label>:14:                                     ; preds = %9, %7
  %15 = phi %struct._CHAT_PROTOCOL_REC* [ %8, %7 ], [ %13, %9 ], !dbg !880
  store %struct._CHAT_PROTOCOL_REC* %15, %struct._CHAT_PROTOCOL_REC** %3, align 8, !dbg !882
  %16 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %3, align 8, !dbg !883
  %17 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %16, i32 0, i32 10, !dbg !884
  %18 = load %struct._SERVER_REC* (%struct._SERVER_CONNECT_REC*)*, %struct._SERVER_REC* (%struct._SERVER_CONNECT_REC*)** %17, align 8, !dbg !884
  %19 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !885
  %20 = call %struct._SERVER_REC* %18(%struct._SERVER_CONNECT_REC* %19), !dbg !883
  store %struct._SERVER_REC* %20, %struct._SERVER_REC** %4, align 8, !dbg !886
  %21 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %3, align 8, !dbg !887
  %22 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %21, i32 0, i32 11, !dbg !888
  %23 = load void (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*)** %22, align 8, !dbg !888
  %24 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !889
  call void %23(%struct._SERVER_REC* %24), !dbg !887
  %25 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !890
  ret %struct._SERVER_REC* %25, !dbg !891
}

declare %struct._CHAT_PROTOCOL_REC* @chat_protocol_get_default() #2

declare %struct._CHAT_PROTOCOL_REC* @chat_protocol_find_id(i32) #2

; Function Attrs: nounwind uwtable
define void @server_connect_init(%struct._SERVER_REC*) #0 !dbg !892 {
  %2 = alloca %struct._SERVER_REC*, align 8
  %3 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %2, metadata !893, metadata !551), !dbg !894
  call void @llvm.dbg.declare(metadata i8** %3, metadata !895, metadata !551), !dbg !896
  br label %4, !dbg !897, !llvm.loop !898

; <label>:4:                                      ; preds = %1
  %5 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !899
  %6 = icmp ne %struct._SERVER_REC* %5, null, !dbg !903
  br i1 %6, label %7, label %8, !dbg !899

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !904

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.server_connect_init, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0)), !dbg !907
  br label %109, !dbg !910

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !911

; <label>:10:                                     ; preds = %9
  %11 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal), !dbg !913
  %12 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !914
  %13 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %12, i32 0, i32 15, !dbg !915
  store %struct._GHashTable* %11, %struct._GHashTable** %13, align 8, !dbg !916
  %14 = call i32 @module_get_uniq_id(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 0), !dbg !917
  %15 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !918
  %16 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %15, i32 0, i32 0, !dbg !919
  store i32 %14, i32* %16, align 8, !dbg !920
  %17 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !921
  call void @server_ref(%struct._SERVER_REC* %17), !dbg !922
  %18 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !923
  %19 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %18, i32 0, i32 3, !dbg !924
  %20 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %19, align 8, !dbg !924
  %21 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %20, i32 0, i32 16, !dbg !925
  %22 = load i8*, i8** %21, align 8, !dbg !925
  %23 = call noalias i8* @g_strdup(i8* %22), !dbg !926
  %24 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !927
  %25 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %24, i32 0, i32 7, !dbg !928
  store i8* %23, i8** %25, align 8, !dbg !929
  %26 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !930
  %27 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %26, i32 0, i32 3, !dbg !932
  %28 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %27, align 8, !dbg !932
  %29 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %28, i32 0, i32 17, !dbg !933
  %30 = load i8*, i8** %29, align 8, !dbg !933
  %31 = icmp eq i8* %30, null, !dbg !934
  br i1 %31, label %41, label %32, !dbg !935

; <label>:32:                                     ; preds = %10
  %33 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !936
  %34 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %33, i32 0, i32 3, !dbg !938
  %35 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %34, align 8, !dbg !938
  %36 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %35, i32 0, i32 17, !dbg !939
  %37 = load i8*, i8** %36, align 8, !dbg !939
  %38 = load i8, i8* %37, align 1, !dbg !940
  %39 = sext i8 %38 to i32, !dbg !940
  %40 = icmp eq i32 %39, 0, !dbg !941
  br i1 %40, label %41, label %60, !dbg !942

; <label>:41:                                     ; preds = %32, %10
  %42 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !943
  %43 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %42, i32 0, i32 3, !dbg !945
  %44 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %43, align 8, !dbg !945
  %45 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %44, i32 0, i32 17, !dbg !946
  %46 = load i8*, i8** %45, align 8, !dbg !946
  call void @g_free(i8* %46), !dbg !947
  %47 = call i8* @g_get_user_name(), !dbg !948
  store i8* %47, i8** %3, align 8, !dbg !949
  %48 = load i8*, i8** %3, align 8, !dbg !950
  %49 = load i8, i8* %48, align 1, !dbg !952
  %50 = sext i8 %49 to i32, !dbg !952
  %51 = icmp eq i32 %50, 0, !dbg !953
  br i1 %51, label %52, label %53, !dbg !954

; <label>:52:                                     ; preds = %41
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8** %3, align 8, !dbg !955
  br label %53, !dbg !957

; <label>:53:                                     ; preds = %52, %41
  %54 = load i8*, i8** %3, align 8, !dbg !958
  %55 = call noalias i8* @g_strdup(i8* %54), !dbg !959
  %56 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !960
  %57 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %56, i32 0, i32 3, !dbg !961
  %58 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %57, align 8, !dbg !961
  %59 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %58, i32 0, i32 17, !dbg !962
  store i8* %55, i8** %59, align 8, !dbg !963
  br label %60, !dbg !964

; <label>:60:                                     ; preds = %53, %32
  %61 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !965
  %62 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %61, i32 0, i32 3, !dbg !967
  %63 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %62, align 8, !dbg !967
  %64 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %63, i32 0, i32 18, !dbg !968
  %65 = load i8*, i8** %64, align 8, !dbg !968
  %66 = icmp eq i8* %65, null, !dbg !969
  br i1 %66, label %76, label %67, !dbg !970

; <label>:67:                                     ; preds = %60
  %68 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !971
  %69 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %68, i32 0, i32 3, !dbg !973
  %70 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %69, align 8, !dbg !973
  %71 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %70, i32 0, i32 18, !dbg !974
  %72 = load i8*, i8** %71, align 8, !dbg !974
  %73 = load i8, i8* %72, align 1, !dbg !975
  %74 = sext i8 %73 to i32, !dbg !975
  %75 = icmp eq i32 %74, 0, !dbg !976
  br i1 %75, label %76, label %100, !dbg !977

; <label>:76:                                     ; preds = %67, %60
  %77 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !978
  %78 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %77, i32 0, i32 3, !dbg !980
  %79 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %78, align 8, !dbg !980
  %80 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %79, i32 0, i32 18, !dbg !981
  %81 = load i8*, i8** %80, align 8, !dbg !981
  call void @g_free(i8* %81), !dbg !982
  %82 = call i8* @g_get_real_name(), !dbg !983
  store i8* %82, i8** %3, align 8, !dbg !984
  %83 = load i8*, i8** %3, align 8, !dbg !985
  %84 = load i8, i8* %83, align 1, !dbg !987
  %85 = sext i8 %84 to i32, !dbg !987
  %86 = icmp eq i32 %85, 0, !dbg !988
  br i1 %86, label %87, label %93, !dbg !989

; <label>:87:                                     ; preds = %76
  %88 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !990
  %89 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %88, i32 0, i32 3, !dbg !992
  %90 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %89, align 8, !dbg !992
  %91 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %90, i32 0, i32 17, !dbg !993
  %92 = load i8*, i8** %91, align 8, !dbg !993
  store i8* %92, i8** %3, align 8, !dbg !994
  br label %93, !dbg !995

; <label>:93:                                     ; preds = %87, %76
  %94 = load i8*, i8** %3, align 8, !dbg !996
  %95 = call noalias i8* @g_strdup(i8* %94), !dbg !997
  %96 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !998
  %97 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %96, i32 0, i32 3, !dbg !999
  %98 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %97, align 8, !dbg !999
  %99 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %98, i32 0, i32 18, !dbg !1000
  store i8* %95, i8** %99, align 8, !dbg !1001
  br label %100, !dbg !1002

; <label>:100:                                    ; preds = %93, %67
  %101 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1003
  %102 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %101, i32 0, i32 3, !dbg !1004
  %103 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %102, align 8, !dbg !1004
  %104 = call i8* @server_create_tag(%struct._SERVER_CONNECT_REC* %103), !dbg !1005
  %105 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1006
  %106 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %105, i32 0, i32 6, !dbg !1007
  store i8* %104, i8** %106, align 8, !dbg !1008
  %107 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1009
  %108 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %107, i32 0, i32 12, !dbg !1010
  store i32 -1, i32* %108, align 8, !dbg !1011
  br label %109, !dbg !1012

; <label>:109:                                    ; preds = %100, %8
  ret void, !dbg !1013
}

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #2

declare i32 @g_str_hash(i8*) #2

declare i32 @g_str_equal(i8*, i8*) #2

declare i32 @module_get_uniq_id(i8*, i32) #2

; Function Attrs: nounwind uwtable
define void @server_ref(%struct._SERVER_REC*) #0 !dbg !1015 {
  %2 = alloca %struct._SERVER_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %2, metadata !1016, metadata !551), !dbg !1017
  br label %3, !dbg !1018, !llvm.loop !1019

; <label>:3:                                      ; preds = %1
  %4 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1020
  %5 = bitcast %struct._SERVER_REC* %4 to i8*, !dbg !1020
  %6 = call i8* @module_check_cast(i8* %5, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)), !dbg !1024
  %7 = bitcast i8* %6 to %struct._SERVER_REC*, !dbg !1025
  %8 = icmp ne %struct._SERVER_REC* %7, null, !dbg !1025
  br i1 %8, label %9, label %10, !dbg !1026

; <label>:9:                                      ; preds = %3
  br i1 false, label %12, label %11, !dbg !1027

; <label>:10:                                     ; preds = %3
  br i1 false, label %11, label %12, !dbg !1029

; <label>:11:                                     ; preds = %10, %9
  br label %13, !dbg !1031

; <label>:12:                                     ; preds = %10, %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.server_ref, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0)), !dbg !1034
  br label %19, !dbg !1037

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !1038

; <label>:14:                                     ; preds = %13
  %15 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1040
  %16 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %15, i32 0, i32 2, !dbg !1041
  %17 = load i32, i32* %16, align 8, !dbg !1042
  %18 = add nsw i32 %17, 1, !dbg !1042
  store i32 %18, i32* %16, align 8, !dbg !1042
  br label %19, !dbg !1043

; <label>:19:                                     ; preds = %14, %12
  ret void, !dbg !1044
}

declare noalias i8* @g_strdup(i8*) #2

declare void @g_free(i8*) #2

declare i8* @g_get_user_name() #2

declare i8* @g_get_real_name() #2

; Function Attrs: nounwind uwtable
define internal i8* @server_create_tag(%struct._SERVER_CONNECT_REC*) #0 !dbg !1046 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._SERVER_CONNECT_REC*, align 8
  %4 = alloca %struct._GString*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct._SERVER_CONNECT_REC* %0, %struct._SERVER_CONNECT_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_CONNECT_REC** %3, metadata !1049, metadata !551), !dbg !1050
  call void @llvm.dbg.declare(metadata %struct._GString** %4, metadata !1051, metadata !551), !dbg !1052
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1053, metadata !551), !dbg !1054
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1055, metadata !551), !dbg !1056
  br label %7, !dbg !1057, !llvm.loop !1058

; <label>:7:                                      ; preds = %1
  %8 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1059
  %9 = bitcast %struct._SERVER_CONNECT_REC* %8 to i8*, !dbg !1059
  %10 = call i8* @module_check_cast(i8* %9, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0)), !dbg !1063
  %11 = bitcast i8* %10 to %struct._SERVER_CONNECT_REC*, !dbg !1064
  %12 = icmp ne %struct._SERVER_CONNECT_REC* %11, null, !dbg !1064
  br i1 %12, label %13, label %14, !dbg !1065

; <label>:13:                                     ; preds = %7
  br i1 false, label %16, label %15, !dbg !1066

; <label>:14:                                     ; preds = %7
  br i1 false, label %15, label %16, !dbg !1068

; <label>:15:                                     ; preds = %14, %13
  br label %17, !dbg !1070

; <label>:16:                                     ; preds = %14, %13
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.server_create_tag, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0)), !dbg !1073
  store i8* null, i8** %2, align 8, !dbg !1076
  br label %104, !dbg !1076

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !1077

; <label>:18:                                     ; preds = %17
  %19 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1079
  %20 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %19, i32 0, i32 12, !dbg !1080
  %21 = load i8*, i8** %20, align 8, !dbg !1080
  %22 = icmp ne i8* %21, null, !dbg !1081
  br i1 %22, label %23, label %35, !dbg !1082

; <label>:23:                                     ; preds = %18
  %24 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1083
  %25 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %24, i32 0, i32 12, !dbg !1085
  %26 = load i8*, i8** %25, align 8, !dbg !1085
  %27 = load i8, i8* %26, align 1, !dbg !1086
  %28 = sext i8 %27 to i32, !dbg !1086
  %29 = icmp ne i32 %28, 0, !dbg !1087
  br i1 %29, label %30, label %35, !dbg !1088

; <label>:30:                                     ; preds = %23
  %31 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1089
  %32 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %31, i32 0, i32 12, !dbg !1090
  %33 = load i8*, i8** %32, align 8, !dbg !1090
  %34 = call noalias i8* @g_strdup(i8* %33), !dbg !1091
  br label %40, !dbg !1092

; <label>:35:                                     ; preds = %23, %18
  %36 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1094
  %37 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %36, i32 0, i32 10, !dbg !1095
  %38 = load i8*, i8** %37, align 8, !dbg !1095
  %39 = call i8* @server_create_address_tag(i8* %38), !dbg !1096
  br label %40, !dbg !1097

; <label>:40:                                     ; preds = %35, %30
  %41 = phi i8* [ %34, %30 ], [ %39, %35 ], !dbg !1099
  store i8* %41, i8** %5, align 8, !dbg !1101
  %42 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1102
  %43 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %42, i32 0, i32 9, !dbg !1104
  %44 = load i8*, i8** %43, align 8, !dbg !1104
  %45 = icmp ne i8* %44, null, !dbg !1105
  br i1 %45, label %46, label %73, !dbg !1106

; <label>:46:                                     ; preds = %40
  %47 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1107
  %48 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %47, i32 0, i32 9, !dbg !1109
  %49 = load i8*, i8** %48, align 8, !dbg !1109
  %50 = call %struct._SERVER_REC* @server_find_tag(i8* %49), !dbg !1110
  %51 = icmp eq %struct._SERVER_REC* %50, null, !dbg !1111
  br i1 %51, label %52, label %73, !dbg !1112

; <label>:52:                                     ; preds = %46
  %53 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1113
  %54 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %53, i32 0, i32 9, !dbg !1114
  %55 = load i8*, i8** %54, align 8, !dbg !1114
  %56 = call %struct._SERVER_REC* @server_find_lookup_tag(i8* %55), !dbg !1115
  %57 = icmp eq %struct._SERVER_REC* %56, null, !dbg !1116
  br i1 %57, label %58, label %73, !dbg !1117

; <label>:58:                                     ; preds = %52
  %59 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1118
  %60 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %59, i32 0, i32 9, !dbg !1119
  %61 = load i8*, i8** %60, align 8, !dbg !1119
  %62 = load i8*, i8** %5, align 8, !dbg !1120
  %63 = load i8*, i8** %5, align 8, !dbg !1121
  %64 = call i64 @strlen(i8* %63) #8, !dbg !1122
  %65 = call i32 @strncmp(i8* %61, i8* %62, i64 %64) #8, !dbg !1123
  %66 = icmp eq i32 %65, 0, !dbg !1124
  br i1 %66, label %67, label %73, !dbg !1125

; <label>:67:                                     ; preds = %58
  %68 = load i8*, i8** %5, align 8, !dbg !1126
  call void @g_free(i8* %68), !dbg !1128
  %69 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1129
  %70 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %69, i32 0, i32 9, !dbg !1130
  %71 = load i8*, i8** %70, align 8, !dbg !1130
  %72 = call noalias i8* @g_strdup(i8* %71), !dbg !1131
  store i8* %72, i8** %2, align 8, !dbg !1132
  br label %104, !dbg !1132

; <label>:73:                                     ; preds = %58, %52, %46, %40
  %74 = load i8*, i8** %5, align 8, !dbg !1133
  %75 = call %struct._GString* @g_string_new(i8* %74), !dbg !1134
  store %struct._GString* %75, %struct._GString** %4, align 8, !dbg !1135
  store i32 2, i32* %6, align 4, !dbg !1136
  br label %76, !dbg !1137

; <label>:76:                                     ; preds = %90, %73
  %77 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !1138
  %78 = getelementptr inbounds %struct._GString, %struct._GString* %77, i32 0, i32 0, !dbg !1139
  %79 = load i8*, i8** %78, align 8, !dbg !1139
  %80 = call %struct._SERVER_REC* @server_find_tag(i8* %79), !dbg !1140
  %81 = icmp ne %struct._SERVER_REC* %80, null, !dbg !1141
  br i1 %81, label %88, label %82, !dbg !1142

; <label>:82:                                     ; preds = %76
  %83 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !1143
  %84 = getelementptr inbounds %struct._GString, %struct._GString* %83, i32 0, i32 0, !dbg !1144
  %85 = load i8*, i8** %84, align 8, !dbg !1144
  %86 = call %struct._SERVER_REC* @server_find_lookup_tag(i8* %85), !dbg !1145
  %87 = icmp ne %struct._SERVER_REC* %86, null, !dbg !1146
  br label %88, !dbg !1147

; <label>:88:                                     ; preds = %82, %76
  %89 = phi i1 [ true, %76 ], [ %87, %82 ]
  br i1 %89, label %90, label %96, !dbg !1148

; <label>:90:                                     ; preds = %88
  %91 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !1149
  %92 = load i8*, i8** %5, align 8, !dbg !1151
  %93 = load i32, i32* %6, align 4, !dbg !1152
  call void (%struct._GString*, i8*, ...) @g_string_printf(%struct._GString* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* %92, i32 %93), !dbg !1153
  %94 = load i32, i32* %6, align 4, !dbg !1154
  %95 = add nsw i32 %94, 1, !dbg !1154
  store i32 %95, i32* %6, align 4, !dbg !1154
  br label %76, !dbg !1155, !llvm.loop !1156

; <label>:96:                                     ; preds = %88
  %97 = load i8*, i8** %5, align 8, !dbg !1157
  call void @g_free(i8* %97), !dbg !1158
  %98 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !1159
  %99 = getelementptr inbounds %struct._GString, %struct._GString* %98, i32 0, i32 0, !dbg !1160
  %100 = load i8*, i8** %99, align 8, !dbg !1160
  store i8* %100, i8** %5, align 8, !dbg !1161
  %101 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !1162
  %102 = call i8* @g_string_free(%struct._GString* %101, i32 0), !dbg !1163
  %103 = load i8*, i8** %5, align 8, !dbg !1164
  store i8* %103, i8** %2, align 8, !dbg !1165
  br label %104, !dbg !1165

; <label>:104:                                    ; preds = %96, %67, %16
  %105 = load i8*, i8** %2, align 8, !dbg !1166
  ret i8* %105, !dbg !1166
}

; Function Attrs: nounwind uwtable
define i32 @server_start_connect(%struct._SERVER_REC*) #0 !dbg !1167 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca %struct._GIOChannel*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %3, metadata !1168, metadata !551), !dbg !1169
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1170, metadata !551), !dbg !1171
  call void @llvm.dbg.declare(metadata [2 x i32]* %5, metadata !1172, metadata !551), !dbg !1174
  br label %7, !dbg !1175, !llvm.loop !1176

; <label>:7:                                      ; preds = %1
  %8 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1177
  %9 = icmp ne %struct._SERVER_REC* %8, null, !dbg !1181
  br i1 %9, label %10, label %11, !dbg !1177

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !1182

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.server_start_connect, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0)), !dbg !1185
  store i32 0, i32* %2, align 4, !dbg !1188
  br label %146, !dbg !1188

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !1189

; <label>:13:                                     ; preds = %12
  %14 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1191
  %15 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %14, i32 0, i32 3, !dbg !1193
  %16 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %15, align 8, !dbg !1193
  %17 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %16, i32 0, i32 28, !dbg !1194
  %18 = load i8, i8* %17, align 8, !dbg !1194
  %19 = lshr i8 %18, 4, !dbg !1194
  %20 = and i8 %19, 1, !dbg !1194
  %21 = zext i8 %20 to i32, !dbg !1194
  %22 = icmp ne i32 %21, 0, !dbg !1191
  br i1 %22, label %31, label %23, !dbg !1195

; <label>:23:                                     ; preds = %13
  %24 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1196
  %25 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %24, i32 0, i32 3, !dbg !1198
  %26 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %25, align 8, !dbg !1198
  %27 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %26, i32 0, i32 11, !dbg !1199
  %28 = load i32, i32* %27, align 8, !dbg !1199
  %29 = icmp sle i32 %28, 0, !dbg !1200
  br i1 %29, label %30, label %31, !dbg !1201

; <label>:30:                                     ; preds = %23
  store i32 0, i32* %2, align 4, !dbg !1202
  br label %146, !dbg !1202

; <label>:31:                                     ; preds = %23, %13
  %32 = call %struct._RAWLOG_REC* @rawlog_create(), !dbg !1203
  %33 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1204
  %34 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %33, i32 0, i32 14, !dbg !1205
  store %struct._RAWLOG_REC* %32, %struct._RAWLOG_REC** %34, align 8, !dbg !1206
  %35 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1207
  %36 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %35, i32 0, i32 3, !dbg !1209
  %37 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %36, align 8, !dbg !1209
  %38 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %37, i32 0, i32 27, !dbg !1210
  %39 = load %struct._GIOChannel*, %struct._GIOChannel** %38, align 8, !dbg !1210
  %40 = icmp ne %struct._GIOChannel* %39, null, !dbg !1211
  br i1 %40, label %41, label %56, !dbg !1212

; <label>:41:                                     ; preds = %31
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %6, metadata !1213, metadata !551), !dbg !1215
  %42 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1216
  %43 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %42, i32 0, i32 3, !dbg !1217
  %44 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %43, align 8, !dbg !1217
  %45 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %44, i32 0, i32 27, !dbg !1218
  %46 = load %struct._GIOChannel*, %struct._GIOChannel** %45, align 8, !dbg !1218
  store %struct._GIOChannel* %46, %struct._GIOChannel** %6, align 8, !dbg !1215
  %47 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1219
  %48 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %47, i32 0, i32 3, !dbg !1220
  %49 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %48, align 8, !dbg !1220
  %50 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %49, i32 0, i32 27, !dbg !1221
  store %struct._GIOChannel* null, %struct._GIOChannel** %50, align 8, !dbg !1222
  %51 = load %struct._GIOChannel*, %struct._GIOChannel** %6, align 8, !dbg !1223
  %52 = call %struct._NET_SENDBUF_REC* @net_sendbuffer_create(%struct._GIOChannel* %51, i32 0), !dbg !1224
  %53 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1225
  %54 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %53, i32 0, i32 9, !dbg !1226
  store %struct._NET_SENDBUF_REC* %52, %struct._NET_SENDBUF_REC** %54, align 8, !dbg !1227
  %55 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1228
  call void @server_connect_finished(%struct._SERVER_REC* %55), !dbg !1229
  br label %145, !dbg !1230

; <label>:56:                                     ; preds = %31
  %57 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1231
  %58 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %57, i32 0, i32 3, !dbg !1234
  %59 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %58, align 8, !dbg !1234
  %60 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %59, i32 0, i32 28, !dbg !1235
  %61 = load i8, i8* %60, align 8, !dbg !1235
  %62 = lshr i8 %61, 4, !dbg !1235
  %63 = and i8 %62, 1, !dbg !1235
  %64 = zext i8 %63 to i32, !dbg !1235
  %65 = icmp ne i32 %64, 0, !dbg !1231
  br i1 %65, label %66, label %73, !dbg !1231

; <label>:66:                                     ; preds = %56
  %67 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1236
  %68 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1238
  %69 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %68, i32 0, i32 3, !dbg !1239
  %70 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %69, align 8, !dbg !1239
  %71 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %70, i32 0, i32 10, !dbg !1240
  %72 = load i8*, i8** %71, align 8, !dbg !1240
  call void @server_real_connect(%struct._SERVER_REC* %67, %struct._IPADDR* null, i8* %72), !dbg !1241
  br label %144, !dbg !1242

; <label>:73:                                     ; preds = %56
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i32 0, i32 0, !dbg !1243
  %75 = call i32 @pipe(i32* %74) #7, !dbg !1246
  %76 = icmp ne i32 %75, 0, !dbg !1247
  br i1 %76, label %77, label %84, !dbg !1248

; <label>:77:                                     ; preds = %73
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0)), !dbg !1249
  %78 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1251
  %79 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %78, i32 0, i32 6, !dbg !1252
  %80 = load i8*, i8** %79, align 8, !dbg !1252
  call void @g_free(i8* %80), !dbg !1253
  %81 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1254
  %82 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %81, i32 0, i32 7, !dbg !1255
  %83 = load i8*, i8** %82, align 8, !dbg !1255
  call void @g_free(i8* %83), !dbg !1256
  store i32 0, i32* %2, align 4, !dbg !1257
  br label %146, !dbg !1257

; <label>:84:                                     ; preds = %73
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0, !dbg !1258
  %86 = load i32, i32* %85, align 4, !dbg !1258
  %87 = call %struct._GIOChannel* @g_io_channel_new(i32 %86), !dbg !1259
  %88 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1260
  %89 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %88, i32 0, i32 11, !dbg !1261
  %90 = getelementptr inbounds [2 x %struct._GIOChannel*], [2 x %struct._GIOChannel*]* %89, i64 0, i64 0, !dbg !1260
  store %struct._GIOChannel* %87, %struct._GIOChannel** %90, align 8, !dbg !1262
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1, !dbg !1263
  %92 = load i32, i32* %91, align 4, !dbg !1263
  %93 = call %struct._GIOChannel* @g_io_channel_new(i32 %92), !dbg !1264
  %94 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1265
  %95 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %94, i32 0, i32 11, !dbg !1266
  %96 = getelementptr inbounds [2 x %struct._GIOChannel*], [2 x %struct._GIOChannel*]* %95, i64 0, i64 1, !dbg !1265
  store %struct._GIOChannel* %93, %struct._GIOChannel** %96, align 8, !dbg !1267
  %97 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1268
  %98 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %97, i32 0, i32 3, !dbg !1269
  %99 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %98, align 8, !dbg !1269
  %100 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %99, i32 0, i32 3, !dbg !1270
  %101 = load i8*, i8** %100, align 8, !dbg !1270
  %102 = icmp ne i8* %101, null, !dbg !1271
  br i1 %102, label %103, label %109, !dbg !1268

; <label>:103:                                    ; preds = %84
  %104 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1272
  %105 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %104, i32 0, i32 3, !dbg !1273
  %106 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %105, align 8, !dbg !1273
  %107 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %106, i32 0, i32 3, !dbg !1274
  %108 = load i8*, i8** %107, align 8, !dbg !1274
  br label %115, !dbg !1275

; <label>:109:                                    ; preds = %84
  %110 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1277
  %111 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %110, i32 0, i32 3, !dbg !1278
  %112 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %111, align 8, !dbg !1278
  %113 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %112, i32 0, i32 10, !dbg !1279
  %114 = load i8*, i8** %113, align 8, !dbg !1279
  br label %115, !dbg !1280

; <label>:115:                                    ; preds = %109, %103
  %116 = phi i8* [ %108, %103 ], [ %114, %109 ], !dbg !1282
  store i8* %116, i8** %4, align 8, !dbg !1284
  %117 = load i8*, i8** %4, align 8, !dbg !1285
  %118 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1286
  %119 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %118, i32 0, i32 11, !dbg !1287
  %120 = getelementptr inbounds [2 x %struct._GIOChannel*], [2 x %struct._GIOChannel*]* %119, i64 0, i64 1, !dbg !1286
  %121 = load %struct._GIOChannel*, %struct._GIOChannel** %120, align 8, !dbg !1286
  %122 = call i32 @settings_get_bool(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0)), !dbg !1288
  %123 = call i32 @net_gethostbyname_nonblock(i8* %117, %struct._GIOChannel* %121, i32 %122), !dbg !1289
  %124 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1290
  %125 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %124, i32 0, i32 13, !dbg !1291
  store i32 %123, i32* %125, align 4, !dbg !1292
  %126 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1293
  %127 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %126, i32 0, i32 11, !dbg !1294
  %128 = getelementptr inbounds [2 x %struct._GIOChannel*], [2 x %struct._GIOChannel*]* %127, i64 0, i64 0, !dbg !1293
  %129 = load %struct._GIOChannel*, %struct._GIOChannel** %128, align 8, !dbg !1293
  %130 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1295
  %131 = bitcast %struct._SERVER_REC* %130 to i8*, !dbg !1295
  %132 = call i32 @g_input_add(%struct._GIOChannel* %129, i32 1, void (i8*, %struct._GIOChannel*, i32)* bitcast (void (%struct._SERVER_REC*)* @server_connect_callback_readpipe to void (i8*, %struct._GIOChannel*, i32)*), i8* %131), !dbg !1296
  %133 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1297
  %134 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %133, i32 0, i32 12, !dbg !1298
  store i32 %132, i32* %134, align 8, !dbg !1299
  %135 = call i64 @time(i64* null) #7, !dbg !1300
  %136 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1301
  %137 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %136, i32 0, i32 4, !dbg !1302
  store i64 %135, i64* %137, align 8, !dbg !1303
  %138 = load %struct._GSList*, %struct._GSList** @lookup_servers, align 8, !dbg !1304
  %139 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1305
  %140 = bitcast %struct._SERVER_REC* %139 to i8*, !dbg !1305
  %141 = call %struct._GSList* @g_slist_append(%struct._GSList* %138, i8* %140), !dbg !1306
  store %struct._GSList* %141, %struct._GSList** @lookup_servers, align 8, !dbg !1307
  %142 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1308
  %143 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 1, %struct._SERVER_REC* %142), !dbg !1309
  br label %144

; <label>:144:                                    ; preds = %115, %66
  br label %145

; <label>:145:                                    ; preds = %144, %41
  store i32 1, i32* %2, align 4, !dbg !1310
  br label %146, !dbg !1310

; <label>:146:                                    ; preds = %145, %77, %30, %11
  %147 = load i32, i32* %2, align 4, !dbg !1311
  ret i32 %147, !dbg !1311
}

declare %struct._RAWLOG_REC* @rawlog_create() #2

declare %struct._NET_SENDBUF_REC* @net_sendbuffer_create(%struct._GIOChannel*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @server_real_connect(%struct._SERVER_REC*, %struct._IPADDR*, i8*) #0 !dbg !1312 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca %struct._IPADDR*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._GIOChannel*, align 8
  %8 = alloca %struct._IPADDR*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [46 x i8], align 16
  %12 = alloca i32, align 4
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1315, metadata !551), !dbg !1316
  store %struct._IPADDR* %1, %struct._IPADDR** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IPADDR** %5, metadata !1317, metadata !551), !dbg !1318
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1319, metadata !551), !dbg !1320
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %7, metadata !1321, metadata !551), !dbg !1322
  call void @llvm.dbg.declare(metadata %struct._IPADDR** %8, metadata !1323, metadata !551), !dbg !1324
  store %struct._IPADDR* null, %struct._IPADDR** %8, align 8, !dbg !1324
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1325, metadata !551), !dbg !1326
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1327, metadata !551), !dbg !1328
  call void @llvm.dbg.declare(metadata [46 x i8]* %11, metadata !1329, metadata !551), !dbg !1333
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1334, metadata !551), !dbg !1335
  br label %13, !dbg !1336, !llvm.loop !1337

; <label>:13:                                     ; preds = %3
  %14 = load %struct._IPADDR*, %struct._IPADDR** %5, align 8, !dbg !1338
  %15 = icmp ne %struct._IPADDR* %14, null, !dbg !1342
  br i1 %15, label %19, label %16, !dbg !1343

; <label>:16:                                     ; preds = %13
  %17 = load i8*, i8** %6, align 8, !dbg !1344
  %18 = icmp ne i8* %17, null, !dbg !1346
  br i1 %18, label %19, label %20, !dbg !1347

; <label>:19:                                     ; preds = %16, %13
  br label %21, !dbg !1348

; <label>:20:                                     ; preds = %16
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.server_real_connect, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.27, i32 0, i32 0)), !dbg !1351
  br label %190, !dbg !1354

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !1355

; <label>:22:                                     ; preds = %21
  %23 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1357
  %24 = load %struct._IPADDR*, %struct._IPADDR** %5, align 8, !dbg !1358
  %25 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0), i32 2, %struct._SERVER_REC* %23, %struct._IPADDR* %24), !dbg !1359
  %26 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1360
  %27 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %26, i32 0, i32 3, !dbg !1362
  %28 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %27, align 8, !dbg !1362
  %29 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %28, i32 0, i32 28, !dbg !1363
  %30 = load i8, i8* %29, align 8, !dbg !1363
  %31 = lshr i8 %30, 7, !dbg !1363
  %32 = zext i8 %31 to i32, !dbg !1363
  %33 = icmp ne i32 %32, 0, !dbg !1360
  br i1 %33, label %34, label %35, !dbg !1364

; <label>:34:                                     ; preds = %22
  br label %190, !dbg !1365

; <label>:35:                                     ; preds = %22
  %36 = load %struct._IPADDR*, %struct._IPADDR** %5, align 8, !dbg !1366
  %37 = icmp ne %struct._IPADDR* %36, null, !dbg !1368
  br i1 %37, label %38, label %100, !dbg !1369

; <label>:38:                                     ; preds = %35
  %39 = load %struct._IPADDR*, %struct._IPADDR** %5, align 8, !dbg !1370
  %40 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %39, i32 0, i32 0, !dbg !1372
  %41 = load i16, i16* %40, align 4, !dbg !1372
  %42 = zext i16 %41 to i32, !dbg !1373
  %43 = icmp ne i32 %42, 2, !dbg !1374
  br i1 %43, label %44, label %50, !dbg !1375

; <label>:44:                                     ; preds = %38
  %45 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1376
  %46 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %45, i32 0, i32 3, !dbg !1378
  %47 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %46, align 8, !dbg !1378
  %48 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %47, i32 0, i32 14, !dbg !1379
  %49 = load %struct._IPADDR*, %struct._IPADDR** %48, align 8, !dbg !1379
  br label %56, !dbg !1380

; <label>:50:                                     ; preds = %38
  %51 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1381
  %52 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %51, i32 0, i32 3, !dbg !1383
  %53 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %52, align 8, !dbg !1383
  %54 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %53, i32 0, i32 13, !dbg !1384
  %55 = load %struct._IPADDR*, %struct._IPADDR** %54, align 8, !dbg !1384
  br label %56, !dbg !1385

; <label>:56:                                     ; preds = %50, %44
  %57 = phi %struct._IPADDR* [ %49, %44 ], [ %55, %50 ], !dbg !1386
  store %struct._IPADDR* %57, %struct._IPADDR** %8, align 8, !dbg !1388
  %58 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1389
  %59 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %58, i32 0, i32 3, !dbg !1390
  %60 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %59, align 8, !dbg !1390
  %61 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %60, i32 0, i32 3, !dbg !1391
  %62 = load i8*, i8** %61, align 8, !dbg !1391
  %63 = icmp ne i8* %62, null, !dbg !1392
  br i1 %63, label %64, label %70, !dbg !1389

; <label>:64:                                     ; preds = %56
  %65 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1393
  %66 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %65, i32 0, i32 3, !dbg !1394
  %67 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %66, align 8, !dbg !1394
  %68 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %67, i32 0, i32 4, !dbg !1395
  %69 = load i32, i32* %68, align 8, !dbg !1395
  br label %76, !dbg !1396

; <label>:70:                                     ; preds = %56
  %71 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1397
  %72 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %71, i32 0, i32 3, !dbg !1398
  %73 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %72, align 8, !dbg !1398
  %74 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %73, i32 0, i32 11, !dbg !1399
  %75 = load i32, i32* %74, align 8, !dbg !1399
  br label %76, !dbg !1400

; <label>:76:                                     ; preds = %70, %64
  %77 = phi i32 [ %69, %64 ], [ %75, %70 ], !dbg !1401
  store i32 %77, i32* %12, align 4, !dbg !1402
  %78 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1403
  %79 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %78, i32 0, i32 3, !dbg !1404
  %80 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %79, align 8, !dbg !1404
  %81 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %80, i32 0, i32 28, !dbg !1405
  %82 = load i8, i8* %81, align 8, !dbg !1405
  %83 = lshr i8 %82, 5, !dbg !1405
  %84 = and i8 %83, 1, !dbg !1405
  %85 = zext i8 %84 to i32, !dbg !1405
  %86 = icmp ne i32 %85, 0, !dbg !1403
  br i1 %86, label %87, label %93, !dbg !1403

; <label>:87:                                     ; preds = %76
  %88 = load %struct._IPADDR*, %struct._IPADDR** %5, align 8, !dbg !1406
  %89 = load i32, i32* %12, align 4, !dbg !1407
  %90 = load %struct._IPADDR*, %struct._IPADDR** %8, align 8, !dbg !1408
  %91 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1409
  %92 = call %struct._GIOChannel* @net_connect_ip_ssl(%struct._IPADDR* %88, i32 %89, %struct._IPADDR* %90, %struct._SERVER_REC* %91), !dbg !1410
  br label %98, !dbg !1411

; <label>:93:                                     ; preds = %76
  %94 = load %struct._IPADDR*, %struct._IPADDR** %5, align 8, !dbg !1412
  %95 = load i32, i32* %12, align 4, !dbg !1413
  %96 = load %struct._IPADDR*, %struct._IPADDR** %8, align 8, !dbg !1414
  %97 = call %struct._GIOChannel* @net_connect_ip(%struct._IPADDR* %94, i32 %95, %struct._IPADDR* %96), !dbg !1415
  br label %98, !dbg !1416

; <label>:98:                                     ; preds = %93, %87
  %99 = phi %struct._GIOChannel* [ %92, %87 ], [ %97, %93 ], !dbg !1417
  store %struct._GIOChannel* %99, %struct._GIOChannel** %7, align 8, !dbg !1418
  br label %103, !dbg !1419

; <label>:100:                                    ; preds = %35
  %101 = load i8*, i8** %6, align 8, !dbg !1420
  %102 = call %struct._GIOChannel* @net_connect_unix(i8* %101), !dbg !1422
  store %struct._GIOChannel* %102, %struct._GIOChannel** %7, align 8, !dbg !1423
  br label %103

; <label>:103:                                    ; preds = %100, %98
  %104 = load %struct._GIOChannel*, %struct._GIOChannel** %7, align 8, !dbg !1424
  %105 = icmp eq %struct._GIOChannel* %104, null, !dbg !1426
  br i1 %105, label %106, label %165, !dbg !1427

; <label>:106:                                    ; preds = %103
  %107 = call i32* @__errno_location() #1, !dbg !1428
  %108 = load i32, i32* %107, align 4, !dbg !1430
  %109 = call i8* @g_strerror(i32 %108) #1, !dbg !1431
  store i8* %109, i8** %9, align 8, !dbg !1433
  store i8* null, i8** %10, align 8, !dbg !1434
  %110 = call i32* @__errno_location() #1, !dbg !1435
  %111 = load i32, i32* %110, align 4, !dbg !1437
  %112 = icmp eq i32 %111, 99, !dbg !1438
  br i1 %112, label %113, label %129, !dbg !1439

; <label>:113:                                    ; preds = %106
  %114 = load %struct._IPADDR*, %struct._IPADDR** %8, align 8, !dbg !1440
  %115 = icmp ne %struct._IPADDR* %114, null, !dbg !1443
  br i1 %115, label %116, label %123, !dbg !1444

; <label>:116:                                    ; preds = %113
  %117 = load %struct._IPADDR*, %struct._IPADDR** %8, align 8, !dbg !1445
  %118 = getelementptr inbounds [46 x i8], [46 x i8]* %11, i32 0, i32 0, !dbg !1447
  %119 = call i32 @net_ip2host(%struct._IPADDR* %117, i8* %118), !dbg !1448
  %120 = load i8*, i8** %9, align 8, !dbg !1449
  %121 = getelementptr inbounds [46 x i8], [46 x i8]* %11, i32 0, i32 0, !dbg !1450
  %122 = call noalias i8* (i8*, ...) @g_strconcat(i8* %120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i8* %121, i8* null), !dbg !1451
  store i8* %122, i8** %10, align 8, !dbg !1452
  br label %123, !dbg !1453

; <label>:123:                                    ; preds = %116, %113
  %124 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1454
  %125 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %124, i32 0, i32 8, !dbg !1455
  %126 = load i8, i8* %125, align 8, !dbg !1456
  %127 = and i8 %126, -17, !dbg !1456
  %128 = or i8 %127, 16, !dbg !1456
  store i8 %128, i8* %125, align 8, !dbg !1456
  br label %129, !dbg !1457

; <label>:129:                                    ; preds = %123, %106
  %130 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1458
  %131 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %130, i32 0, i32 3, !dbg !1460
  %132 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %131, align 8, !dbg !1460
  %133 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %132, i32 0, i32 28, !dbg !1461
  %134 = load i8, i8* %133, align 8, !dbg !1461
  %135 = lshr i8 %134, 5, !dbg !1461
  %136 = and i8 %135, 1, !dbg !1461
  %137 = zext i8 %136 to i32, !dbg !1461
  %138 = icmp ne i32 %137, 0, !dbg !1458
  br i1 %138, label %139, label %149, !dbg !1462

; <label>:139:                                    ; preds = %129
  %140 = call i32* @__errno_location() #1, !dbg !1463
  %141 = load i32, i32* %140, align 4, !dbg !1465
  %142 = icmp eq i32 %141, 38, !dbg !1466
  br i1 %142, label %143, label %149, !dbg !1467

; <label>:143:                                    ; preds = %139
  %144 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1468
  %145 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %144, i32 0, i32 8, !dbg !1469
  %146 = load i8, i8* %145, align 8, !dbg !1470
  %147 = and i8 %146, -17, !dbg !1470
  %148 = or i8 %147, 16, !dbg !1470
  store i8 %148, i8* %145, align 8, !dbg !1470
  br label %149, !dbg !1468

; <label>:149:                                    ; preds = %143, %139, %129
  %150 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1471
  %151 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %150, i32 0, i32 8, !dbg !1472
  %152 = load i8, i8* %151, align 8, !dbg !1473
  %153 = and i8 %152, -5, !dbg !1473
  %154 = or i8 %153, 4, !dbg !1473
  store i8 %154, i8* %151, align 8, !dbg !1473
  %155 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1474
  %156 = load i8*, i8** %10, align 8, !dbg !1475
  %157 = icmp ne i8* %156, null, !dbg !1475
  br i1 %157, label %158, label %160, !dbg !1475

; <label>:158:                                    ; preds = %149
  %159 = load i8*, i8** %10, align 8, !dbg !1476
  br label %162, !dbg !1477

; <label>:160:                                    ; preds = %149
  %161 = load i8*, i8** %9, align 8, !dbg !1478
  br label %162, !dbg !1480

; <label>:162:                                    ; preds = %160, %158
  %163 = phi i8* [ %159, %158 ], [ %161, %160 ], !dbg !1481
  call void @server_connect_failed(%struct._SERVER_REC* %155, i8* %163), !dbg !1483
  %164 = load i8*, i8** %10, align 8, !dbg !1484
  call void @g_free(i8* %164), !dbg !1485
  br label %190, !dbg !1486

; <label>:165:                                    ; preds = %103
  %166 = load %struct._GIOChannel*, %struct._GIOChannel** %7, align 8, !dbg !1487
  %167 = call %struct._NET_SENDBUF_REC* @net_sendbuffer_create(%struct._GIOChannel* %166, i32 0), !dbg !1489
  %168 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1490
  %169 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %168, i32 0, i32 9, !dbg !1491
  store %struct._NET_SENDBUF_REC* %167, %struct._NET_SENDBUF_REC** %169, align 8, !dbg !1492
  %170 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1493
  %171 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %170, i32 0, i32 3, !dbg !1495
  %172 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %171, align 8, !dbg !1495
  %173 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %172, i32 0, i32 28, !dbg !1496
  %174 = load i8, i8* %173, align 8, !dbg !1496
  %175 = lshr i8 %174, 5, !dbg !1496
  %176 = and i8 %175, 1, !dbg !1496
  %177 = zext i8 %176 to i32, !dbg !1496
  %178 = icmp ne i32 %177, 0, !dbg !1493
  br i1 %178, label %179, label %182, !dbg !1497

; <label>:179:                                    ; preds = %165
  %180 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1498
  %181 = load %struct._GIOChannel*, %struct._GIOChannel** %7, align 8, !dbg !1499
  call void @server_connect_callback_init_ssl(%struct._SERVER_REC* %180, %struct._GIOChannel* %181), !dbg !1500
  br label %189, !dbg !1500

; <label>:182:                                    ; preds = %165
  %183 = load %struct._GIOChannel*, %struct._GIOChannel** %7, align 8, !dbg !1501
  %184 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1502
  %185 = bitcast %struct._SERVER_REC* %184 to i8*, !dbg !1502
  %186 = call i32 @g_input_add(%struct._GIOChannel* %183, i32 3, void (i8*, %struct._GIOChannel*, i32)* bitcast (void (%struct._SERVER_REC*, %struct._GIOChannel*)* @server_connect_callback_init to void (i8*, %struct._GIOChannel*, i32)*), i8* %185), !dbg !1503
  %187 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1504
  %188 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %187, i32 0, i32 12, !dbg !1505
  store i32 %186, i32* %188, align 8, !dbg !1506
  br label %189

; <label>:189:                                    ; preds = %182, %179
  br label %190

; <label>:190:                                    ; preds = %20, %34, %189, %162
  ret void, !dbg !1507
}

; Function Attrs: nounwind
declare i32 @pipe(i32*) #3

declare void @g_log(i8*, i32, i8*, ...) #2

declare %struct._GIOChannel* @g_io_channel_new(i32) #2

declare i32 @net_gethostbyname_nonblock(i8*, %struct._GIOChannel*, i32) #2

declare i32 @settings_get_bool(i8*) #2

declare i32 @g_input_add(%struct._GIOChannel*, i32, void (i8*, %struct._GIOChannel*, i32)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @server_connect_callback_readpipe(%struct._SERVER_REC*) #0 !dbg !1508 {
  %2 = alloca %struct._SERVER_REC*, align 8
  %3 = alloca %struct.RESOLVED_IP_REC, align 8
  %4 = alloca %struct._IPADDR*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %2, metadata !1509, metadata !551), !dbg !1510
  call void @llvm.dbg.declare(metadata %struct.RESOLVED_IP_REC* %3, metadata !1511, metadata !551), !dbg !1523
  call void @llvm.dbg.declare(metadata %struct._IPADDR** %4, metadata !1524, metadata !551), !dbg !1525
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1526, metadata !551), !dbg !1527
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1528, metadata !551), !dbg !1529
  store i8* null, i8** %6, align 8, !dbg !1529
  %7 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1530
  %8 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %7, i32 0, i32 12, !dbg !1531
  %9 = load i32, i32* %8, align 8, !dbg !1531
  %10 = call i32 @g_source_remove(i32 %9), !dbg !1532
  %11 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1533
  %12 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %11, i32 0, i32 12, !dbg !1534
  store i32 -1, i32* %12, align 8, !dbg !1535
  %13 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1536
  %14 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %13, i32 0, i32 11, !dbg !1537
  %15 = getelementptr inbounds [2 x %struct._GIOChannel*], [2 x %struct._GIOChannel*]* %14, i64 0, i64 0, !dbg !1536
  %16 = load %struct._GIOChannel*, %struct._GIOChannel** %15, align 8, !dbg !1536
  %17 = call i32 @net_gethostbyname_return(%struct._GIOChannel* %16, %struct.RESOLVED_IP_REC* %3), !dbg !1538
  %18 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1539
  %19 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %18, i32 0, i32 11, !dbg !1540
  %20 = getelementptr inbounds [2 x %struct._GIOChannel*], [2 x %struct._GIOChannel*]* %19, i64 0, i64 0, !dbg !1539
  %21 = load %struct._GIOChannel*, %struct._GIOChannel** %20, align 8, !dbg !1539
  %22 = call i32 @g_io_channel_shutdown(%struct._GIOChannel* %21, i32 1, %struct._GError** null), !dbg !1541
  %23 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1542
  %24 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %23, i32 0, i32 11, !dbg !1543
  %25 = getelementptr inbounds [2 x %struct._GIOChannel*], [2 x %struct._GIOChannel*]* %24, i64 0, i64 0, !dbg !1542
  %26 = load %struct._GIOChannel*, %struct._GIOChannel** %25, align 8, !dbg !1542
  call void @g_io_channel_unref(%struct._GIOChannel* %26), !dbg !1544
  %27 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1545
  %28 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %27, i32 0, i32 11, !dbg !1546
  %29 = getelementptr inbounds [2 x %struct._GIOChannel*], [2 x %struct._GIOChannel*]* %28, i64 0, i64 1, !dbg !1545
  %30 = load %struct._GIOChannel*, %struct._GIOChannel** %29, align 8, !dbg !1545
  %31 = call i32 @g_io_channel_shutdown(%struct._GIOChannel* %30, i32 1, %struct._GError** null), !dbg !1547
  %32 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1548
  %33 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %32, i32 0, i32 11, !dbg !1549
  %34 = getelementptr inbounds [2 x %struct._GIOChannel*], [2 x %struct._GIOChannel*]* %33, i64 0, i64 1, !dbg !1548
  %35 = load %struct._GIOChannel*, %struct._GIOChannel** %34, align 8, !dbg !1548
  call void @g_io_channel_unref(%struct._GIOChannel* %35), !dbg !1550
  %36 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1551
  %37 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %36, i32 0, i32 11, !dbg !1552
  %38 = getelementptr inbounds [2 x %struct._GIOChannel*], [2 x %struct._GIOChannel*]* %37, i64 0, i64 0, !dbg !1551
  store %struct._GIOChannel* null, %struct._GIOChannel** %38, align 8, !dbg !1553
  %39 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1554
  %40 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %39, i32 0, i32 11, !dbg !1555
  %41 = getelementptr inbounds [2 x %struct._GIOChannel*], [2 x %struct._GIOChannel*]* %40, i64 0, i64 1, !dbg !1554
  store %struct._GIOChannel* null, %struct._GIOChannel** %41, align 8, !dbg !1556
  %42 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %3, i32 0, i32 2, !dbg !1557
  %43 = load i32, i32* %42, align 8, !dbg !1557
  %44 = icmp ne i32 %43, 0, !dbg !1559
  br i1 %44, label %45, label %46, !dbg !1560

; <label>:45:                                     ; preds = %1
  store %struct._IPADDR* null, %struct._IPADDR** %4, align 8, !dbg !1561
  br label %114, !dbg !1563

; <label>:46:                                     ; preds = %1
  %47 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1564
  %48 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %47, i32 0, i32 3, !dbg !1567
  %49 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %48, align 8, !dbg !1567
  %50 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %49, i32 0, i32 8, !dbg !1568
  %51 = load i16, i16* %50, align 8, !dbg !1568
  %52 = zext i16 %51 to i32, !dbg !1564
  %53 = icmp eq i32 %52, 2, !dbg !1569
  br i1 %53, label %54, label %67, !dbg !1564

; <label>:54:                                     ; preds = %46
  %55 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %3, i32 0, i32 0, !dbg !1570
  %56 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %55, i32 0, i32 0, !dbg !1572
  %57 = load i16, i16* %56, align 8, !dbg !1572
  %58 = zext i16 %57 to i32, !dbg !1573
  %59 = icmp eq i32 %58, 0, !dbg !1574
  br i1 %59, label %60, label %61, !dbg !1573

; <label>:60:                                     ; preds = %54
  br label %63, !dbg !1575

; <label>:61:                                     ; preds = %54
  %62 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %3, i32 0, i32 0, !dbg !1577
  br label %63, !dbg !1579

; <label>:63:                                     ; preds = %61, %60
  %64 = phi %struct._IPADDR* [ null, %60 ], [ %62, %61 ], !dbg !1580
  store %struct._IPADDR* %64, %struct._IPADDR** %4, align 8, !dbg !1582
  %65 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %3, i32 0, i32 5, !dbg !1583
  %66 = load i8*, i8** %65, align 8, !dbg !1583
  store i8* %66, i8** %6, align 8, !dbg !1584
  br label %113, !dbg !1585

; <label>:67:                                     ; preds = %46
  %68 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1586
  %69 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %68, i32 0, i32 3, !dbg !1589
  %70 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %69, align 8, !dbg !1589
  %71 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %70, i32 0, i32 8, !dbg !1590
  %72 = load i16, i16* %71, align 8, !dbg !1590
  %73 = zext i16 %72 to i32, !dbg !1586
  %74 = icmp eq i32 %73, 10, !dbg !1591
  br i1 %74, label %75, label %88, !dbg !1586

; <label>:75:                                     ; preds = %67
  %76 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %3, i32 0, i32 1, !dbg !1592
  %77 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %76, i32 0, i32 0, !dbg !1594
  %78 = load i16, i16* %77, align 4, !dbg !1594
  %79 = zext i16 %78 to i32, !dbg !1595
  %80 = icmp eq i32 %79, 0, !dbg !1596
  br i1 %80, label %81, label %82, !dbg !1595

; <label>:81:                                     ; preds = %75
  br label %84, !dbg !1597

; <label>:82:                                     ; preds = %75
  %83 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %3, i32 0, i32 1, !dbg !1599
  br label %84, !dbg !1601

; <label>:84:                                     ; preds = %82, %81
  %85 = phi %struct._IPADDR* [ null, %81 ], [ %83, %82 ], !dbg !1602
  store %struct._IPADDR* %85, %struct._IPADDR** %4, align 8, !dbg !1604
  %86 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %3, i32 0, i32 6, !dbg !1605
  %87 = load i8*, i8** %86, align 8, !dbg !1605
  store i8* %87, i8** %6, align 8, !dbg !1606
  br label %112, !dbg !1607

; <label>:88:                                     ; preds = %67
  %89 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %3, i32 0, i32 0, !dbg !1608
  %90 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %89, i32 0, i32 0, !dbg !1611
  %91 = load i16, i16* %90, align 8, !dbg !1611
  %92 = zext i16 %91 to i32, !dbg !1612
  %93 = icmp eq i32 %92, 0, !dbg !1613
  br i1 %93, label %103, label %94, !dbg !1614

; <label>:94:                                     ; preds = %88
  %95 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %3, i32 0, i32 1, !dbg !1615
  %96 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %95, i32 0, i32 0, !dbg !1616
  %97 = load i16, i16* %96, align 4, !dbg !1616
  %98 = zext i16 %97 to i32, !dbg !1617
  %99 = icmp ne i32 %98, 0, !dbg !1618
  br i1 %99, label %100, label %107, !dbg !1619

; <label>:100:                                    ; preds = %94
  %101 = call i32 @settings_get_bool(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0)), !dbg !1620
  %102 = icmp ne i32 %101, 0, !dbg !1620
  br i1 %102, label %103, label %107, !dbg !1621

; <label>:103:                                    ; preds = %100, %88
  %104 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %3, i32 0, i32 1, !dbg !1623
  store %struct._IPADDR* %104, %struct._IPADDR** %4, align 8, !dbg !1625
  %105 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %3, i32 0, i32 6, !dbg !1626
  %106 = load i8*, i8** %105, align 8, !dbg !1626
  store i8* %106, i8** %6, align 8, !dbg !1627
  br label %111, !dbg !1628

; <label>:107:                                    ; preds = %100, %94
  %108 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %3, i32 0, i32 0, !dbg !1629
  store %struct._IPADDR* %108, %struct._IPADDR** %4, align 8, !dbg !1631
  %109 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %3, i32 0, i32 5, !dbg !1632
  %110 = load i8*, i8** %109, align 8, !dbg !1632
  store i8* %110, i8** %6, align 8, !dbg !1633
  br label %111

; <label>:111:                                    ; preds = %107, %103
  br label %112

; <label>:112:                                    ; preds = %111, %84
  br label %113

; <label>:113:                                    ; preds = %112, %63
  br label %114

; <label>:114:                                    ; preds = %113, %45
  %115 = load %struct._IPADDR*, %struct._IPADDR** %4, align 8, !dbg !1634
  %116 = icmp ne %struct._IPADDR* %115, null, !dbg !1636
  br i1 %116, label %117, label %135, !dbg !1637

; <label>:117:                                    ; preds = %114
  %118 = load i8*, i8** %6, align 8, !dbg !1638
  %119 = icmp ne i8* %118, null, !dbg !1638
  br i1 %119, label %120, label %132, !dbg !1641

; <label>:120:                                    ; preds = %117
  %121 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1642
  %122 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %121, i32 0, i32 3, !dbg !1644
  %123 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %122, align 8, !dbg !1644
  %124 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %123, i32 0, i32 10, !dbg !1645
  %125 = load i8*, i8** %124, align 8, !dbg !1645
  call void @g_free(i8* %125), !dbg !1646
  %126 = load i8*, i8** %6, align 8, !dbg !1647
  %127 = call noalias i8* @g_strdup(i8* %126), !dbg !1648
  %128 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1649
  %129 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %128, i32 0, i32 3, !dbg !1650
  %130 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %129, align 8, !dbg !1650
  %131 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %130, i32 0, i32 10, !dbg !1651
  store i8* %127, i8** %131, align 8, !dbg !1652
  br label %132, !dbg !1653

; <label>:132:                                    ; preds = %120, %117
  %133 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1654
  %134 = load %struct._IPADDR*, %struct._IPADDR** %4, align 8, !dbg !1655
  call void @server_real_connect(%struct._SERVER_REC* %133, %struct._IPADDR* %134, i8* null), !dbg !1656
  store i8* null, i8** %5, align 8, !dbg !1657
  br label %181, !dbg !1658

; <label>:135:                                    ; preds = %114
  %136 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %3, i32 0, i32 2, !dbg !1659
  %137 = load i32, i32* %136, align 8, !dbg !1659
  %138 = icmp eq i32 %137, 0, !dbg !1662
  br i1 %138, label %144, label %139, !dbg !1663

; <label>:139:                                    ; preds = %135
  %140 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %3, i32 0, i32 2, !dbg !1664
  %141 = load i32, i32* %140, align 8, !dbg !1664
  %142 = call i32 @net_hosterror_notfound(i32 %141), !dbg !1666
  %143 = icmp ne i32 %142, 0, !dbg !1666
  br i1 %143, label %144, label %150, !dbg !1667

; <label>:144:                                    ; preds = %139, %135
  %145 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1668
  %146 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %145, i32 0, i32 19, !dbg !1670
  %147 = load i8, i8* %146, align 8, !dbg !1671
  %148 = and i8 %147, -9, !dbg !1671
  %149 = or i8 %148, 8, !dbg !1671
  store i8 %149, i8* %146, align 8, !dbg !1671
  br label %150, !dbg !1672

; <label>:150:                                    ; preds = %144, %139
  %151 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %3, i32 0, i32 2, !dbg !1673
  %152 = load i32, i32* %151, align 8, !dbg !1673
  %153 = icmp eq i32 %152, 0, !dbg !1675
  br i1 %153, label %154, label %163, !dbg !1676

; <label>:154:                                    ; preds = %150
  %155 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1677
  %156 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %155, i32 0, i32 3, !dbg !1679
  %157 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %156, align 8, !dbg !1679
  %158 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %157, i32 0, i32 8, !dbg !1680
  %159 = load i16, i16* %158, align 8, !dbg !1680
  %160 = zext i16 %159 to i32, !dbg !1677
  %161 = icmp eq i32 %160, 2, !dbg !1681
  %162 = select i1 %161, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.31, i32 0, i32 0), !dbg !1677
  store i8* %162, i8** %5, align 8, !dbg !1682
  br label %173, !dbg !1683

; <label>:163:                                    ; preds = %150
  %164 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %3, i32 0, i32 4, !dbg !1684
  %165 = load i8*, i8** %164, align 8, !dbg !1684
  %166 = icmp ne i8* %165, null, !dbg !1686
  br i1 %166, label %167, label %170, !dbg !1687

; <label>:167:                                    ; preds = %163
  %168 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %3, i32 0, i32 4, !dbg !1688
  %169 = load i8*, i8** %168, align 8, !dbg !1688
  br label %171, !dbg !1690

; <label>:170:                                    ; preds = %163
  br label %171, !dbg !1691

; <label>:171:                                    ; preds = %170, %167
  %172 = phi i8* [ %169, %167 ], [ getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i32 0, i32 0), %170 ], !dbg !1693
  store i8* %172, i8** %5, align 8, !dbg !1695
  br label %173

; <label>:173:                                    ; preds = %171, %154
  %174 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1696
  %175 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %174, i32 0, i32 8, !dbg !1697
  %176 = load i8, i8* %175, align 8, !dbg !1698
  %177 = and i8 %176, -5, !dbg !1698
  %178 = or i8 %177, 4, !dbg !1698
  store i8 %178, i8* %175, align 8, !dbg !1698
  %179 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1699
  %180 = load i8*, i8** %5, align 8, !dbg !1700
  call void @server_connect_failed(%struct._SERVER_REC* %179, i8* %180), !dbg !1701
  br label %181

; <label>:181:                                    ; preds = %173, %132
  %182 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %3, i32 0, i32 4, !dbg !1702
  %183 = load i8*, i8** %182, align 8, !dbg !1702
  call void @g_free(i8* %183), !dbg !1703
  %184 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %3, i32 0, i32 5, !dbg !1704
  %185 = load i8*, i8** %184, align 8, !dbg !1704
  call void @g_free(i8* %185), !dbg !1705
  %186 = getelementptr inbounds %struct.RESOLVED_IP_REC, %struct.RESOLVED_IP_REC* %3, i32 0, i32 6, !dbg !1706
  %187 = load i8*, i8** %186, align 8, !dbg !1706
  call void @g_free(i8* %187), !dbg !1707
  ret void, !dbg !1708
}

; Function Attrs: nounwind uwtable
define void @server_disconnect(%struct._SERVER_REC*) #0 !dbg !1709 {
  %2 = alloca %struct._SERVER_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %2, metadata !1710, metadata !551), !dbg !1711
  br label %3, !dbg !1712, !llvm.loop !1713

; <label>:3:                                      ; preds = %1
  %4 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1714
  %5 = bitcast %struct._SERVER_REC* %4 to i8*, !dbg !1714
  %6 = call i8* @module_check_cast(i8* %5, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)), !dbg !1718
  %7 = bitcast i8* %6 to %struct._SERVER_REC*, !dbg !1719
  %8 = icmp ne %struct._SERVER_REC* %7, null, !dbg !1719
  br i1 %8, label %9, label %10, !dbg !1720

; <label>:9:                                      ; preds = %3
  br i1 false, label %12, label %11, !dbg !1721

; <label>:10:                                     ; preds = %3
  br i1 false, label %11, label %12, !dbg !1723

; <label>:11:                                     ; preds = %10, %9
  br label %13, !dbg !1725

; <label>:12:                                     ; preds = %10, %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.server_disconnect, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0)), !dbg !1728
  br label %65, !dbg !1731

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !1732

; <label>:14:                                     ; preds = %13
  %15 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1734
  %16 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %15, i32 0, i32 8, !dbg !1736
  %17 = load i8, i8* %16, align 8, !dbg !1736
  %18 = lshr i8 %17, 1, !dbg !1736
  %19 = and i8 %18, 1, !dbg !1736
  %20 = zext i8 %19 to i32, !dbg !1736
  %21 = icmp ne i32 %20, 0, !dbg !1734
  br i1 %21, label %22, label %23, !dbg !1737

; <label>:22:                                     ; preds = %14
  br label %65, !dbg !1738

; <label>:23:                                     ; preds = %14
  %24 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1739
  %25 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %24, i32 0, i32 12, !dbg !1741
  %26 = load i32, i32* %25, align 8, !dbg !1741
  %27 = icmp ne i32 %26, -1, !dbg !1742
  br i1 %27, label %28, label %39, !dbg !1743

; <label>:28:                                     ; preds = %23
  %29 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1744
  %30 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %29, i32 0, i32 13, !dbg !1747
  %31 = load i32, i32* %30, align 4, !dbg !1747
  %32 = icmp ne i32 %31, -1, !dbg !1748
  br i1 %32, label %33, label %37, !dbg !1749

; <label>:33:                                     ; preds = %28
  %34 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1750
  %35 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %34, i32 0, i32 13, !dbg !1751
  %36 = load i32, i32* %35, align 4, !dbg !1751
  call void @net_disconnect_nonblock(i32 %36), !dbg !1752
  br label %37, !dbg !1752

; <label>:37:                                     ; preds = %33, %28
  %38 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1753
  call void @server_connect_failed(%struct._SERVER_REC* %38, i8* null), !dbg !1754
  br label %65, !dbg !1755

; <label>:39:                                     ; preds = %23
  %40 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !1756
  %41 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1757
  %42 = bitcast %struct._SERVER_REC* %41 to i8*, !dbg !1757
  %43 = call %struct._GSList* @g_slist_remove(%struct._GSList* %40, i8* %42), !dbg !1758
  store %struct._GSList* %43, %struct._GSList** @servers, align 8, !dbg !1759
  %44 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1760
  %45 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %44, i32 0, i32 8, !dbg !1761
  %46 = load i8, i8* %45, align 8, !dbg !1762
  %47 = and i8 %46, -3, !dbg !1762
  %48 = or i8 %47, 2, !dbg !1762
  store i8 %48, i8* %45, align 8, !dbg !1762
  %49 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1763
  %50 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct._SERVER_REC* %49), !dbg !1764
  %51 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1765
  %52 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %51, i32 0, i32 10, !dbg !1767
  %53 = load i32, i32* %52, align 8, !dbg !1767
  %54 = icmp sgt i32 %53, 0, !dbg !1768
  br i1 %54, label %55, label %62, !dbg !1769

; <label>:55:                                     ; preds = %39
  %56 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1770
  %57 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %56, i32 0, i32 10, !dbg !1772
  %58 = load i32, i32* %57, align 8, !dbg !1772
  %59 = call i32 @g_source_remove(i32 %58), !dbg !1773
  %60 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1774
  %61 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %60, i32 0, i32 10, !dbg !1775
  store i32 -1, i32* %61, align 8, !dbg !1776
  br label %62, !dbg !1777

; <label>:62:                                     ; preds = %55, %39
  %63 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1778
  %64 = call i32 @server_unref(%struct._SERVER_REC* %63), !dbg !1779
  br label %65, !dbg !1780

; <label>:65:                                     ; preds = %62, %37, %22, %12
  ret void, !dbg !1781
}

declare void @net_disconnect_nonblock(i32) #2

declare %struct._GSList* @g_slist_find(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @server_remove_channels(%struct._SERVER_REC*) #0 !dbg !1783 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._SERVER_REC*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._CHANNEL_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %3, metadata !1784, metadata !551), !dbg !1785
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !1786, metadata !551), !dbg !1787
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !1788, metadata !551), !dbg !1789
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1790, metadata !551), !dbg !1791
  br label %8, !dbg !1792, !llvm.loop !1793

; <label>:8:                                      ; preds = %1
  %9 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1794
  %10 = icmp ne %struct._SERVER_REC* %9, null, !dbg !1798
  br i1 %10, label %11, label %12, !dbg !1794

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !1799

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.server_remove_channels, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0)), !dbg !1802
  store i32 0, i32* %2, align 4, !dbg !1805
  br label %53, !dbg !1805

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !1806

; <label>:14:                                     ; preds = %13
  store i32 0, i32* %6, align 4, !dbg !1808
  %15 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1809
  %16 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %15, i32 0, i32 23, !dbg !1811
  %17 = load %struct._GSList*, %struct._GSList** %16, align 8, !dbg !1811
  store %struct._GSList* %17, %struct._GSList** %4, align 8, !dbg !1812
  br label %18, !dbg !1813

; <label>:18:                                     ; preds = %30, %14
  %19 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1814
  %20 = icmp ne %struct._GSList* %19, null, !dbg !1817
  br i1 %20, label %21, label %32, !dbg !1818

; <label>:21:                                     ; preds = %18
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %7, metadata !1819, metadata !551), !dbg !1821
  %22 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1822
  %23 = getelementptr inbounds %struct._GSList, %struct._GSList* %22, i32 0, i32 0, !dbg !1823
  %24 = load i8*, i8** %23, align 8, !dbg !1823
  %25 = bitcast i8* %24 to %struct._CHANNEL_REC*, !dbg !1822
  store %struct._CHANNEL_REC* %25, %struct._CHANNEL_REC** %7, align 8, !dbg !1821
  %26 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1824
  %27 = getelementptr inbounds %struct._GSList, %struct._GSList* %26, i32 0, i32 1, !dbg !1825
  %28 = load %struct._GSList*, %struct._GSList** %27, align 8, !dbg !1825
  store %struct._GSList* %28, %struct._GSList** %5, align 8, !dbg !1826
  %29 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %7, align 8, !dbg !1827
  call void @channel_destroy(%struct._CHANNEL_REC* %29), !dbg !1828
  store i32 1, i32* %6, align 4, !dbg !1829
  br label %30, !dbg !1830

; <label>:30:                                     ; preds = %21
  %31 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1831
  store %struct._GSList* %31, %struct._GSList** %4, align 8, !dbg !1833
  br label %18, !dbg !1834, !llvm.loop !1835

; <label>:32:                                     ; preds = %18
  br label %33, !dbg !1837

; <label>:33:                                     ; preds = %38, %32
  %34 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1838
  %35 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %34, i32 0, i32 24, !dbg !1840
  %36 = load %struct._GSList*, %struct._GSList** %35, align 8, !dbg !1840
  %37 = icmp ne %struct._GSList* %36, null, !dbg !1841
  br i1 %37, label %38, label %45, !dbg !1842

; <label>:38:                                     ; preds = %33
  %39 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1843
  %40 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %39, i32 0, i32 24, !dbg !1844
  %41 = load %struct._GSList*, %struct._GSList** %40, align 8, !dbg !1844
  %42 = getelementptr inbounds %struct._GSList, %struct._GSList* %41, i32 0, i32 0, !dbg !1845
  %43 = load i8*, i8** %42, align 8, !dbg !1845
  %44 = bitcast i8* %43 to %struct._QUERY_REC*, !dbg !1843
  call void @query_change_server(%struct._QUERY_REC* %44, %struct._SERVER_REC* null), !dbg !1846
  br label %33, !dbg !1847, !llvm.loop !1849

; <label>:45:                                     ; preds = %33
  %46 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1850
  %47 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %46, i32 0, i32 23, !dbg !1851
  %48 = load %struct._GSList*, %struct._GSList** %47, align 8, !dbg !1851
  call void @g_slist_free(%struct._GSList* %48), !dbg !1852
  %49 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1853
  %50 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %49, i32 0, i32 24, !dbg !1854
  %51 = load %struct._GSList*, %struct._GSList** %50, align 8, !dbg !1854
  call void @g_slist_free(%struct._GSList* %51), !dbg !1855
  %52 = load i32, i32* %6, align 4, !dbg !1856
  store i32 %52, i32* %2, align 4, !dbg !1857
  br label %53, !dbg !1857

; <label>:53:                                     ; preds = %45, %12
  %54 = load i32, i32* %2, align 4, !dbg !1858
  ret i32 %54, !dbg !1858
}

declare void @net_disconnect_later(%struct._GIOChannel*) #2

declare %struct._GIOChannel* @net_sendbuffer_handle(%struct._NET_SENDBUF_REC*) #2

declare void @g_hash_table_destroy(%struct._GHashTable*) #2

; Function Attrs: nounwind uwtable
define void @server_connect_unref(%struct._SERVER_CONNECT_REC*) #0 !dbg !1859 {
  %2 = alloca %struct._SERVER_CONNECT_REC*, align 8
  store %struct._SERVER_CONNECT_REC* %0, %struct._SERVER_CONNECT_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_CONNECT_REC** %2, metadata !1860, metadata !551), !dbg !1861
  br label %3, !dbg !1862, !llvm.loop !1863

; <label>:3:                                      ; preds = %1
  %4 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !1864
  %5 = bitcast %struct._SERVER_CONNECT_REC* %4 to i8*, !dbg !1864
  %6 = call i8* @module_check_cast(i8* %5, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0)), !dbg !1868
  %7 = bitcast i8* %6 to %struct._SERVER_CONNECT_REC*, !dbg !1869
  %8 = icmp ne %struct._SERVER_CONNECT_REC* %7, null, !dbg !1869
  br i1 %8, label %9, label %10, !dbg !1870

; <label>:9:                                      ; preds = %3
  br i1 false, label %12, label %11, !dbg !1871

; <label>:10:                                     ; preds = %3
  br i1 false, label %11, label %12, !dbg !1873

; <label>:11:                                     ; preds = %10, %9
  br label %13, !dbg !1875

; <label>:12:                                     ; preds = %10, %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.server_connect_unref, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0)), !dbg !1878
  br label %132, !dbg !1881

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !1882

; <label>:14:                                     ; preds = %13
  %15 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !1884
  %16 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %15, i32 0, i32 2, !dbg !1886
  %17 = load i32, i32* %16, align 8, !dbg !1887
  %18 = add nsw i32 %17, -1, !dbg !1887
  store i32 %18, i32* %16, align 8, !dbg !1887
  %19 = icmp sgt i32 %18, 0, !dbg !1888
  br i1 %19, label %20, label %21, !dbg !1889

; <label>:20:                                     ; preds = %14
  br label %132, !dbg !1890

; <label>:21:                                     ; preds = %14
  %22 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !1891
  %23 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %22, i32 0, i32 2, !dbg !1893
  %24 = load i32, i32* %23, align 8, !dbg !1893
  %25 = icmp slt i32 %24, 0, !dbg !1894
  br i1 %25, label %26, label %33, !dbg !1895

; <label>:26:                                     ; preds = %21
  %27 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !1896
  %28 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %27, i32 0, i32 9, !dbg !1898
  %29 = load i8*, i8** %28, align 8, !dbg !1898
  %30 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !1899
  %31 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %30, i32 0, i32 2, !dbg !1900
  %32 = load i32, i32* %31, align 8, !dbg !1900
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i32 0, i32 0), i8* %29, i32 %32), !dbg !1901
  br label %33, !dbg !1902

; <label>:33:                                     ; preds = %26, %21
  %34 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !1903
  %35 = icmp eq %struct._SERVER_CONNECT_REC* %34, null, !dbg !1904
  br i1 %35, label %36, label %38, !dbg !1905

; <label>:36:                                     ; preds = %33
  %37 = call %struct._CHAT_PROTOCOL_REC* @chat_protocol_get_default(), !dbg !1906
  br label %43, !dbg !1906

; <label>:38:                                     ; preds = %33
  %39 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !1908
  %40 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %39, i32 0, i32 1, !dbg !1910
  %41 = load i32, i32* %40, align 4, !dbg !1910
  %42 = call %struct._CHAT_PROTOCOL_REC* @chat_protocol_find_id(i32 %41), !dbg !1911
  br label %43, !dbg !1912

; <label>:43:                                     ; preds = %38, %36
  %44 = phi %struct._CHAT_PROTOCOL_REC* [ %37, %36 ], [ %42, %38 ], !dbg !1913
  %45 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %44, i32 0, i32 9, !dbg !1915
  %46 = load void (%struct._SERVER_CONNECT_REC*)*, void (%struct._SERVER_CONNECT_REC*)** %45, align 8, !dbg !1915
  %47 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !1916
  call void %46(%struct._SERVER_CONNECT_REC* %47), !dbg !1917
  %48 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !1918
  %49 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %48, i32 0, i32 27, !dbg !1920
  %50 = load %struct._GIOChannel*, %struct._GIOChannel** %49, align 8, !dbg !1920
  %51 = icmp ne %struct._GIOChannel* %50, null, !dbg !1921
  br i1 %51, label %52, label %56, !dbg !1922

; <label>:52:                                     ; preds = %43
  %53 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !1923
  %54 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %53, i32 0, i32 27, !dbg !1924
  %55 = load %struct._GIOChannel*, %struct._GIOChannel** %54, align 8, !dbg !1924
  call void @net_disconnect(%struct._GIOChannel* %55), !dbg !1925
  br label %56, !dbg !1925

; <label>:56:                                     ; preds = %52, %43
  %57 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !1926
  %58 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %57, i32 0, i32 3, !dbg !1927
  %59 = load i8*, i8** %58, align 8, !dbg !1927
  call void @g_free(i8* %59), !dbg !1928
  %60 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !1929
  %61 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %60, i32 0, i32 5, !dbg !1930
  %62 = load i8*, i8** %61, align 8, !dbg !1930
  call void @g_free(i8* %62), !dbg !1931
  %63 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !1932
  %64 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %63, i32 0, i32 6, !dbg !1933
  %65 = load i8*, i8** %64, align 8, !dbg !1933
  call void @g_free(i8* %65), !dbg !1934
  %66 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !1935
  %67 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %66, i32 0, i32 7, !dbg !1936
  %68 = load i8*, i8** %67, align 8, !dbg !1936
  call void @g_free(i8* %68), !dbg !1937
  %69 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !1938
  %70 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %69, i32 0, i32 9, !dbg !1939
  %71 = load i8*, i8** %70, align 8, !dbg !1939
  call void @g_free(i8* %71), !dbg !1940
  %72 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !1941
  %73 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %72, i32 0, i32 10, !dbg !1942
  %74 = load i8*, i8** %73, align 8, !dbg !1942
  call void @g_free(i8* %74), !dbg !1943
  %75 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !1944
  %76 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %75, i32 0, i32 12, !dbg !1945
  %77 = load i8*, i8** %76, align 8, !dbg !1945
  call void @g_free(i8* %77), !dbg !1946
  %78 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !1947
  %79 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %78, i32 0, i32 13, !dbg !1948
  %80 = load %struct._IPADDR*, %struct._IPADDR** %79, align 8, !dbg !1948
  %81 = bitcast %struct._IPADDR* %80 to i8*, !dbg !1947
  call void @g_free(i8* %81), !dbg !1949
  %82 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !1950
  %83 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %82, i32 0, i32 14, !dbg !1951
  %84 = load %struct._IPADDR*, %struct._IPADDR** %83, align 8, !dbg !1951
  %85 = bitcast %struct._IPADDR* %84 to i8*, !dbg !1950
  call void @g_free(i8* %85), !dbg !1952
  %86 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !1953
  %87 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %86, i32 0, i32 15, !dbg !1954
  %88 = load i8*, i8** %87, align 8, !dbg !1954
  call void @g_free(i8* %88), !dbg !1955
  %89 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !1956
  %90 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %89, i32 0, i32 16, !dbg !1957
  %91 = load i8*, i8** %90, align 8, !dbg !1957
  call void @g_free(i8* %91), !dbg !1958
  %92 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !1959
  %93 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %92, i32 0, i32 17, !dbg !1960
  %94 = load i8*, i8** %93, align 8, !dbg !1960
  call void @g_free(i8* %94), !dbg !1961
  %95 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !1962
  %96 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %95, i32 0, i32 18, !dbg !1963
  %97 = load i8*, i8** %96, align 8, !dbg !1963
  call void @g_free(i8* %97), !dbg !1964
  %98 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !1965
  %99 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %98, i32 0, i32 19, !dbg !1966
  %100 = load i8*, i8** %99, align 8, !dbg !1966
  call void @g_free(i8* %100), !dbg !1967
  %101 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !1968
  %102 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %101, i32 0, i32 20, !dbg !1969
  %103 = load i8*, i8** %102, align 8, !dbg !1969
  call void @g_free(i8* %103), !dbg !1970
  %104 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !1971
  %105 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %104, i32 0, i32 21, !dbg !1972
  %106 = load i8*, i8** %105, align 8, !dbg !1972
  call void @g_free(i8* %106), !dbg !1973
  %107 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !1974
  %108 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %107, i32 0, i32 22, !dbg !1975
  %109 = load i8*, i8** %108, align 8, !dbg !1975
  call void @g_free(i8* %109), !dbg !1976
  %110 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !1977
  %111 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %110, i32 0, i32 23, !dbg !1978
  %112 = load i8*, i8** %111, align 8, !dbg !1978
  call void @g_free(i8* %112), !dbg !1979
  %113 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !1980
  %114 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %113, i32 0, i32 24, !dbg !1981
  %115 = load i8*, i8** %114, align 8, !dbg !1981
  call void @g_free(i8* %115), !dbg !1982
  %116 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !1983
  %117 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %116, i32 0, i32 25, !dbg !1984
  %118 = load i8*, i8** %117, align 8, !dbg !1984
  call void @g_free(i8* %118), !dbg !1985
  %119 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !1986
  %120 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %119, i32 0, i32 26, !dbg !1987
  %121 = load i8*, i8** %120, align 8, !dbg !1987
  call void @g_free(i8* %121), !dbg !1988
  %122 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !1989
  %123 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %122, i32 0, i32 29, !dbg !1990
  %124 = load i8*, i8** %123, align 8, !dbg !1990
  call void @g_free(i8* %124), !dbg !1991
  %125 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !1992
  %126 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %125, i32 0, i32 30, !dbg !1993
  %127 = load i8*, i8** %126, align 8, !dbg !1993
  call void @g_free(i8* %127), !dbg !1994
  %128 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !1995
  %129 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %128, i32 0, i32 0, !dbg !1996
  store i32 0, i32* %129, align 8, !dbg !1997
  %130 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !1998
  %131 = bitcast %struct._SERVER_CONNECT_REC* %130 to i8*, !dbg !1998
  call void @g_free(i8* %131), !dbg !1999
  br label %132, !dbg !2000

; <label>:132:                                    ; preds = %56, %20, %12
  ret void, !dbg !2001
}

declare void @rawlog_destroy(%struct._RAWLOG_REC*) #2

; Function Attrs: nounwind uwtable
define %struct._SERVER_REC* @server_find_tag(i8*) #0 !dbg !2002 {
  %2 = alloca %struct._SERVER_REC*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2005, metadata !551), !dbg !2006
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !2007, metadata !551), !dbg !2008
  br label %6, !dbg !2009, !llvm.loop !2010

; <label>:6:                                      ; preds = %1
  %7 = load i8*, i8** %3, align 8, !dbg !2011
  %8 = icmp ne i8* %7, null, !dbg !2015
  br i1 %8, label %9, label %10, !dbg !2011

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !2016

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.server_find_tag, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0)), !dbg !2019
  store %struct._SERVER_REC* null, %struct._SERVER_REC** %2, align 8, !dbg !2022
  br label %42, !dbg !2022

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !2023

; <label>:12:                                     ; preds = %11
  %13 = load i8*, i8** %3, align 8, !dbg !2025
  %14 = load i8, i8* %13, align 1, !dbg !2027
  %15 = sext i8 %14 to i32, !dbg !2027
  %16 = icmp eq i32 %15, 0, !dbg !2028
  br i1 %16, label %17, label %18, !dbg !2029

; <label>:17:                                     ; preds = %12
  store %struct._SERVER_REC* null, %struct._SERVER_REC** %2, align 8, !dbg !2030
  br label %42, !dbg !2030

; <label>:18:                                     ; preds = %12
  %19 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !2032
  store %struct._GSList* %19, %struct._GSList** %4, align 8, !dbg !2034
  br label %20, !dbg !2035

; <label>:20:                                     ; preds = %37, %18
  %21 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2036
  %22 = icmp ne %struct._GSList* %21, null, !dbg !2039
  br i1 %22, label %23, label %41, !dbg !2040

; <label>:23:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !2041, metadata !551), !dbg !2043
  %24 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2044
  %25 = getelementptr inbounds %struct._GSList, %struct._GSList* %24, i32 0, i32 0, !dbg !2045
  %26 = load i8*, i8** %25, align 8, !dbg !2045
  %27 = bitcast i8* %26 to %struct._SERVER_REC*, !dbg !2044
  store %struct._SERVER_REC* %27, %struct._SERVER_REC** %5, align 8, !dbg !2043
  %28 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !2046
  %29 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %28, i32 0, i32 6, !dbg !2048
  %30 = load i8*, i8** %29, align 8, !dbg !2048
  %31 = load i8*, i8** %3, align 8, !dbg !2049
  %32 = call i32 @g_ascii_strcasecmp(i8* %30, i8* %31), !dbg !2050
  %33 = icmp eq i32 %32, 0, !dbg !2051
  br i1 %33, label %34, label %36, !dbg !2052

; <label>:34:                                     ; preds = %23
  %35 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !2053
  store %struct._SERVER_REC* %35, %struct._SERVER_REC** %2, align 8, !dbg !2054
  br label %42, !dbg !2054

; <label>:36:                                     ; preds = %23
  br label %37, !dbg !2055

; <label>:37:                                     ; preds = %36
  %38 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2056
  %39 = getelementptr inbounds %struct._GSList, %struct._GSList* %38, i32 0, i32 1, !dbg !2058
  %40 = load %struct._GSList*, %struct._GSList** %39, align 8, !dbg !2058
  store %struct._GSList* %40, %struct._GSList** %4, align 8, !dbg !2059
  br label %20, !dbg !2060, !llvm.loop !2061

; <label>:41:                                     ; preds = %20
  store %struct._SERVER_REC* null, %struct._SERVER_REC** %2, align 8, !dbg !2063
  br label %42, !dbg !2063

; <label>:42:                                     ; preds = %41, %34, %17, %10
  %43 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !2064
  ret %struct._SERVER_REC* %43, !dbg !2064
}

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define %struct._SERVER_REC* @server_find_lookup_tag(i8*) #0 !dbg !2065 {
  %2 = alloca %struct._SERVER_REC*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2066, metadata !551), !dbg !2067
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !2068, metadata !551), !dbg !2069
  br label %6, !dbg !2070, !llvm.loop !2071

; <label>:6:                                      ; preds = %1
  %7 = load i8*, i8** %3, align 8, !dbg !2072
  %8 = icmp ne i8* %7, null, !dbg !2076
  br i1 %8, label %9, label %10, !dbg !2072

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !2077

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.server_find_lookup_tag, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0)), !dbg !2080
  store %struct._SERVER_REC* null, %struct._SERVER_REC** %2, align 8, !dbg !2083
  br label %42, !dbg !2083

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !2084

; <label>:12:                                     ; preds = %11
  %13 = load i8*, i8** %3, align 8, !dbg !2086
  %14 = load i8, i8* %13, align 1, !dbg !2088
  %15 = sext i8 %14 to i32, !dbg !2088
  %16 = icmp eq i32 %15, 0, !dbg !2089
  br i1 %16, label %17, label %18, !dbg !2090

; <label>:17:                                     ; preds = %12
  store %struct._SERVER_REC* null, %struct._SERVER_REC** %2, align 8, !dbg !2091
  br label %42, !dbg !2091

; <label>:18:                                     ; preds = %12
  %19 = load %struct._GSList*, %struct._GSList** @lookup_servers, align 8, !dbg !2093
  store %struct._GSList* %19, %struct._GSList** %4, align 8, !dbg !2095
  br label %20, !dbg !2096

; <label>:20:                                     ; preds = %37, %18
  %21 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2097
  %22 = icmp ne %struct._GSList* %21, null, !dbg !2100
  br i1 %22, label %23, label %41, !dbg !2101

; <label>:23:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !2102, metadata !551), !dbg !2104
  %24 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2105
  %25 = getelementptr inbounds %struct._GSList, %struct._GSList* %24, i32 0, i32 0, !dbg !2106
  %26 = load i8*, i8** %25, align 8, !dbg !2106
  %27 = bitcast i8* %26 to %struct._SERVER_REC*, !dbg !2105
  store %struct._SERVER_REC* %27, %struct._SERVER_REC** %5, align 8, !dbg !2104
  %28 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !2107
  %29 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %28, i32 0, i32 6, !dbg !2109
  %30 = load i8*, i8** %29, align 8, !dbg !2109
  %31 = load i8*, i8** %3, align 8, !dbg !2110
  %32 = call i32 @g_ascii_strcasecmp(i8* %30, i8* %31), !dbg !2111
  %33 = icmp eq i32 %32, 0, !dbg !2112
  br i1 %33, label %34, label %36, !dbg !2113

; <label>:34:                                     ; preds = %23
  %35 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !2114
  store %struct._SERVER_REC* %35, %struct._SERVER_REC** %2, align 8, !dbg !2115
  br label %42, !dbg !2115

; <label>:36:                                     ; preds = %23
  br label %37, !dbg !2116

; <label>:37:                                     ; preds = %36
  %38 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2117
  %39 = getelementptr inbounds %struct._GSList, %struct._GSList* %38, i32 0, i32 1, !dbg !2119
  %40 = load %struct._GSList*, %struct._GSList** %39, align 8, !dbg !2119
  store %struct._GSList* %40, %struct._GSList** %4, align 8, !dbg !2120
  br label %20, !dbg !2121, !llvm.loop !2122

; <label>:41:                                     ; preds = %20
  store %struct._SERVER_REC* null, %struct._SERVER_REC** %2, align 8, !dbg !2124
  br label %42, !dbg !2124

; <label>:42:                                     ; preds = %41, %34, %17, %10
  %43 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !2125
  ret %struct._SERVER_REC* %43, !dbg !2125
}

; Function Attrs: nounwind uwtable
define %struct._SERVER_REC* @server_find_chatnet(i8*) #0 !dbg !2126 {
  %2 = alloca %struct._SERVER_REC*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2127, metadata !551), !dbg !2128
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !2129, metadata !551), !dbg !2130
  br label %6, !dbg !2131, !llvm.loop !2132

; <label>:6:                                      ; preds = %1
  %7 = load i8*, i8** %3, align 8, !dbg !2133
  %8 = icmp ne i8* %7, null, !dbg !2137
  br i1 %8, label %9, label %10, !dbg !2133

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !2138

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.server_find_chatnet, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0)), !dbg !2141
  store %struct._SERVER_REC* null, %struct._SERVER_REC** %2, align 8, !dbg !2144
  br label %51, !dbg !2144

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !2145

; <label>:12:                                     ; preds = %11
  %13 = load i8*, i8** %3, align 8, !dbg !2147
  %14 = load i8, i8* %13, align 1, !dbg !2149
  %15 = sext i8 %14 to i32, !dbg !2149
  %16 = icmp eq i32 %15, 0, !dbg !2150
  br i1 %16, label %17, label %18, !dbg !2151

; <label>:17:                                     ; preds = %12
  store %struct._SERVER_REC* null, %struct._SERVER_REC** %2, align 8, !dbg !2152
  br label %51, !dbg !2152

; <label>:18:                                     ; preds = %12
  %19 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !2154
  store %struct._GSList* %19, %struct._GSList** %4, align 8, !dbg !2156
  br label %20, !dbg !2157

; <label>:20:                                     ; preds = %46, %18
  %21 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2158
  %22 = icmp ne %struct._GSList* %21, null, !dbg !2161
  br i1 %22, label %23, label %50, !dbg !2162

; <label>:23:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !2163, metadata !551), !dbg !2165
  %24 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2166
  %25 = getelementptr inbounds %struct._GSList, %struct._GSList* %24, i32 0, i32 0, !dbg !2167
  %26 = load i8*, i8** %25, align 8, !dbg !2167
  %27 = bitcast i8* %26 to %struct._SERVER_REC*, !dbg !2166
  store %struct._SERVER_REC* %27, %struct._SERVER_REC** %5, align 8, !dbg !2165
  %28 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !2168
  %29 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %28, i32 0, i32 3, !dbg !2170
  %30 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %29, align 8, !dbg !2170
  %31 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %30, i32 0, i32 12, !dbg !2171
  %32 = load i8*, i8** %31, align 8, !dbg !2171
  %33 = icmp ne i8* %32, null, !dbg !2172
  br i1 %33, label %34, label %45, !dbg !2173

; <label>:34:                                     ; preds = %23
  %35 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !2174
  %36 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %35, i32 0, i32 3, !dbg !2175
  %37 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %36, align 8, !dbg !2175
  %38 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %37, i32 0, i32 12, !dbg !2176
  %39 = load i8*, i8** %38, align 8, !dbg !2176
  %40 = load i8*, i8** %3, align 8, !dbg !2177
  %41 = call i32 @g_ascii_strcasecmp(i8* %39, i8* %40), !dbg !2178
  %42 = icmp eq i32 %41, 0, !dbg !2179
  br i1 %42, label %43, label %45, !dbg !2180

; <label>:43:                                     ; preds = %34
  %44 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !2182
  store %struct._SERVER_REC* %44, %struct._SERVER_REC** %2, align 8, !dbg !2183
  br label %51, !dbg !2183

; <label>:45:                                     ; preds = %34, %23
  br label %46, !dbg !2184

; <label>:46:                                     ; preds = %45
  %47 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2185
  %48 = getelementptr inbounds %struct._GSList, %struct._GSList* %47, i32 0, i32 1, !dbg !2187
  %49 = load %struct._GSList*, %struct._GSList** %48, align 8, !dbg !2187
  store %struct._GSList* %49, %struct._GSList** %4, align 8, !dbg !2188
  br label %20, !dbg !2189, !llvm.loop !2190

; <label>:50:                                     ; preds = %20
  store %struct._SERVER_REC* null, %struct._SERVER_REC** %2, align 8, !dbg !2192
  br label %51, !dbg !2192

; <label>:51:                                     ; preds = %50, %43, %17, %10
  %52 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !2193
  ret %struct._SERVER_REC* %52, !dbg !2193
}

; Function Attrs: nounwind uwtable
define void @server_connect_ref(%struct._SERVER_CONNECT_REC*) #0 !dbg !2194 {
  %2 = alloca %struct._SERVER_CONNECT_REC*, align 8
  store %struct._SERVER_CONNECT_REC* %0, %struct._SERVER_CONNECT_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_CONNECT_REC** %2, metadata !2195, metadata !551), !dbg !2196
  %3 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !2197
  %4 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %3, i32 0, i32 2, !dbg !2198
  %5 = load i32, i32* %4, align 8, !dbg !2199
  %6 = add nsw i32 %5, 1, !dbg !2199
  store i32 %6, i32* %4, align 8, !dbg !2199
  ret void, !dbg !2200
}

declare void @net_disconnect(%struct._GIOChannel*) #2

; Function Attrs: nounwind uwtable
define void @server_change_nick(%struct._SERVER_REC*, i8*) #0 !dbg !2201 {
  %3 = alloca %struct._SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %3, metadata !2202, metadata !551), !dbg !2203
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2204, metadata !551), !dbg !2205
  %5 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !2206
  %6 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %5, i32 0, i32 7, !dbg !2207
  %7 = load i8*, i8** %6, align 8, !dbg !2207
  call void @g_free(i8* %7), !dbg !2208
  %8 = load i8*, i8** %4, align 8, !dbg !2209
  %9 = call noalias i8* @g_strdup(i8* %8), !dbg !2210
  %10 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !2211
  %11 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %10, i32 0, i32 7, !dbg !2212
  store i8* %9, i8** %11, align 8, !dbg !2213
  %12 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !2214
  %13 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i32 0, i32 0), i32 1, %struct._SERVER_REC* %12), !dbg !2215
  ret void, !dbg !2216
}

; Function Attrs: nounwind uwtable
define void @server_connect_own_ip_save(%struct._SERVER_CONNECT_REC*, %struct._IPADDR*, %struct._IPADDR*) #0 !dbg !2217 {
  %4 = alloca %struct._SERVER_CONNECT_REC*, align 8
  %5 = alloca %struct._IPADDR*, align 8
  %6 = alloca %struct._IPADDR*, align 8
  store %struct._SERVER_CONNECT_REC* %0, %struct._SERVER_CONNECT_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_CONNECT_REC** %4, metadata !2220, metadata !551), !dbg !2221
  store %struct._IPADDR* %1, %struct._IPADDR** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IPADDR** %5, metadata !2222, metadata !551), !dbg !2223
  store %struct._IPADDR* %2, %struct._IPADDR** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IPADDR** %6, metadata !2224, metadata !551), !dbg !2225
  %7 = load %struct._IPADDR*, %struct._IPADDR** %5, align 8, !dbg !2226
  %8 = icmp eq %struct._IPADDR* %7, null, !dbg !2228
  br i1 %8, label %15, label %9, !dbg !2229

; <label>:9:                                      ; preds = %3
  %10 = load %struct._IPADDR*, %struct._IPADDR** %5, align 8, !dbg !2230
  %11 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %10, i32 0, i32 0, !dbg !2232
  %12 = load i16, i16* %11, align 4, !dbg !2232
  %13 = zext i16 %12 to i32, !dbg !2230
  %14 = icmp eq i32 %13, 0, !dbg !2233
  br i1 %14, label %15, label %30, !dbg !2234

; <label>:15:                                     ; preds = %9, %3
  br label %16, !dbg !2235, !llvm.loop !2236

; <label>:16:                                     ; preds = %15
  %17 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !2237
  %18 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %17, i32 0, i32 13, !dbg !2241
  %19 = load %struct._IPADDR*, %struct._IPADDR** %18, align 8, !dbg !2241
  %20 = icmp ne %struct._IPADDR* %19, null, !dbg !2237
  br i1 %20, label %21, label %28, !dbg !2237

; <label>:21:                                     ; preds = %16
  %22 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !2242
  %23 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %22, i32 0, i32 13, !dbg !2245
  %24 = load %struct._IPADDR*, %struct._IPADDR** %23, align 8, !dbg !2245
  %25 = bitcast %struct._IPADDR* %24 to i8*, !dbg !2242
  call void @g_free(i8* %25), !dbg !2246
  %26 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !2247
  %27 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %26, i32 0, i32 13, !dbg !2248
  store %struct._IPADDR* null, %struct._IPADDR** %27, align 8, !dbg !2249
  br label %28, !dbg !2250

; <label>:28:                                     ; preds = %21, %16
  br label %29, !dbg !2251

; <label>:29:                                     ; preds = %28
  br label %30, !dbg !2253

; <label>:30:                                     ; preds = %29, %9
  %31 = load %struct._IPADDR*, %struct._IPADDR** %6, align 8, !dbg !2255
  %32 = icmp eq %struct._IPADDR* %31, null, !dbg !2257
  br i1 %32, label %39, label %33, !dbg !2258

; <label>:33:                                     ; preds = %30
  %34 = load %struct._IPADDR*, %struct._IPADDR** %6, align 8, !dbg !2259
  %35 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %34, i32 0, i32 0, !dbg !2261
  %36 = load i16, i16* %35, align 4, !dbg !2261
  %37 = zext i16 %36 to i32, !dbg !2259
  %38 = icmp eq i32 %37, 0, !dbg !2262
  br i1 %38, label %39, label %54, !dbg !2263

; <label>:39:                                     ; preds = %33, %30
  br label %40, !dbg !2264, !llvm.loop !2265

; <label>:40:                                     ; preds = %39
  %41 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !2266
  %42 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %41, i32 0, i32 14, !dbg !2270
  %43 = load %struct._IPADDR*, %struct._IPADDR** %42, align 8, !dbg !2270
  %44 = icmp ne %struct._IPADDR* %43, null, !dbg !2266
  br i1 %44, label %45, label %52, !dbg !2266

; <label>:45:                                     ; preds = %40
  %46 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !2271
  %47 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %46, i32 0, i32 14, !dbg !2274
  %48 = load %struct._IPADDR*, %struct._IPADDR** %47, align 8, !dbg !2274
  %49 = bitcast %struct._IPADDR* %48 to i8*, !dbg !2271
  call void @g_free(i8* %49), !dbg !2275
  %50 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !2276
  %51 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %50, i32 0, i32 14, !dbg !2277
  store %struct._IPADDR* null, %struct._IPADDR** %51, align 8, !dbg !2278
  br label %52, !dbg !2279

; <label>:52:                                     ; preds = %45, %40
  br label %53, !dbg !2280

; <label>:53:                                     ; preds = %52
  br label %54, !dbg !2282

; <label>:54:                                     ; preds = %53, %33
  %55 = load %struct._IPADDR*, %struct._IPADDR** %5, align 8, !dbg !2284
  %56 = icmp ne %struct._IPADDR* %55, null, !dbg !2286
  br i1 %56, label %57, label %80, !dbg !2287

; <label>:57:                                     ; preds = %54
  %58 = load %struct._IPADDR*, %struct._IPADDR** %5, align 8, !dbg !2288
  %59 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %58, i32 0, i32 0, !dbg !2290
  %60 = load i16, i16* %59, align 4, !dbg !2290
  %61 = zext i16 %60 to i32, !dbg !2288
  %62 = icmp ne i32 %61, 0, !dbg !2291
  br i1 %62, label %63, label %80, !dbg !2292

; <label>:63:                                     ; preds = %57
  %64 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !2293
  %65 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %64, i32 0, i32 13, !dbg !2296
  %66 = load %struct._IPADDR*, %struct._IPADDR** %65, align 8, !dbg !2296
  %67 = icmp eq %struct._IPADDR* %66, null, !dbg !2297
  br i1 %67, label %68, label %73, !dbg !2298

; <label>:68:                                     ; preds = %63
  %69 = call noalias i8* @g_malloc0_n(i64 1, i64 20), !dbg !2299
  %70 = bitcast i8* %69 to %struct._IPADDR*, !dbg !2300
  %71 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !2301
  %72 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %71, i32 0, i32 13, !dbg !2302
  store %struct._IPADDR* %70, %struct._IPADDR** %72, align 8, !dbg !2303
  br label %73, !dbg !2301

; <label>:73:                                     ; preds = %68, %63
  %74 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !2304
  %75 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %74, i32 0, i32 13, !dbg !2305
  %76 = load %struct._IPADDR*, %struct._IPADDR** %75, align 8, !dbg !2305
  %77 = bitcast %struct._IPADDR* %76 to i8*, !dbg !2306
  %78 = load %struct._IPADDR*, %struct._IPADDR** %5, align 8, !dbg !2307
  %79 = bitcast %struct._IPADDR* %78 to i8*, !dbg !2306
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %77, i8* %79, i64 20, i32 4, i1 false), !dbg !2306
  br label %80, !dbg !2308

; <label>:80:                                     ; preds = %73, %57, %54
  %81 = load %struct._IPADDR*, %struct._IPADDR** %6, align 8, !dbg !2309
  %82 = icmp ne %struct._IPADDR* %81, null, !dbg !2311
  br i1 %82, label %83, label %106, !dbg !2312

; <label>:83:                                     ; preds = %80
  %84 = load %struct._IPADDR*, %struct._IPADDR** %6, align 8, !dbg !2313
  %85 = getelementptr inbounds %struct._IPADDR, %struct._IPADDR* %84, i32 0, i32 0, !dbg !2315
  %86 = load i16, i16* %85, align 4, !dbg !2315
  %87 = zext i16 %86 to i32, !dbg !2313
  %88 = icmp ne i32 %87, 0, !dbg !2316
  br i1 %88, label %89, label %106, !dbg !2317

; <label>:89:                                     ; preds = %83
  %90 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !2318
  %91 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %90, i32 0, i32 14, !dbg !2321
  %92 = load %struct._IPADDR*, %struct._IPADDR** %91, align 8, !dbg !2321
  %93 = icmp eq %struct._IPADDR* %92, null, !dbg !2322
  br i1 %93, label %94, label %99, !dbg !2323

; <label>:94:                                     ; preds = %89
  %95 = call noalias i8* @g_malloc0_n(i64 1, i64 20), !dbg !2324
  %96 = bitcast i8* %95 to %struct._IPADDR*, !dbg !2325
  %97 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !2326
  %98 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %97, i32 0, i32 14, !dbg !2327
  store %struct._IPADDR* %96, %struct._IPADDR** %98, align 8, !dbg !2328
  br label %99, !dbg !2326

; <label>:99:                                     ; preds = %94, %89
  %100 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !2329
  %101 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %100, i32 0, i32 14, !dbg !2330
  %102 = load %struct._IPADDR*, %struct._IPADDR** %101, align 8, !dbg !2330
  %103 = bitcast %struct._IPADDR* %102 to i8*, !dbg !2331
  %104 = load %struct._IPADDR*, %struct._IPADDR** %6, align 8, !dbg !2332
  %105 = bitcast %struct._IPADDR* %104 to i8*, !dbg !2331
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %103, i8* %105, i64 20, i32 4, i1 false), !dbg !2331
  br label %106, !dbg !2333

; <label>:106:                                    ; preds = %99, %83, %80
  ret void, !dbg !2334
}

declare noalias i8* @g_malloc0_n(i64, i64) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define %struct._SERVER_REC* @cmd_options_get_server(i8*, %struct._GHashTable*, %struct._SERVER_REC*) #0 !dbg !2335 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GHashTable*, align 8
  %7 = alloca %struct._SERVER_REC*, align 8
  %8 = alloca %struct._SERVER_REC*, align 8
  %9 = alloca %struct._GList*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2338, metadata !551), !dbg !2339
  store %struct._GHashTable* %1, %struct._GHashTable** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %6, metadata !2340, metadata !551), !dbg !2341
  store %struct._SERVER_REC* %2, %struct._SERVER_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %7, metadata !2342, metadata !551), !dbg !2343
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %8, metadata !2344, metadata !551), !dbg !2345
  call void @llvm.dbg.declare(metadata %struct._GList** %9, metadata !2346, metadata !551), !dbg !2355
  %10 = load i8*, i8** %5, align 8, !dbg !2356
  %11 = load %struct._GHashTable*, %struct._GHashTable** %6, align 8, !dbg !2357
  %12 = call %struct._GList* @optlist_remove_known(i8* %10, %struct._GHashTable* %11), !dbg !2358
  store %struct._GList* %12, %struct._GList** %9, align 8, !dbg !2359
  %13 = load %struct._GList*, %struct._GList** %9, align 8, !dbg !2360
  %14 = icmp eq %struct._GList* %13, null, !dbg !2362
  br i1 %14, label %15, label %17, !dbg !2363

; <label>:15:                                     ; preds = %3
  %16 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !2364
  store %struct._SERVER_REC* %16, %struct._SERVER_REC** %4, align 8, !dbg !2365
  br label %48, !dbg !2365

; <label>:17:                                     ; preds = %3
  %18 = load %struct._GList*, %struct._GList** %9, align 8, !dbg !2366
  %19 = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 0, !dbg !2367
  %20 = load i8*, i8** %19, align 8, !dbg !2367
  %21 = call %struct._SERVER_REC* @server_find_tag(i8* %20), !dbg !2368
  store %struct._SERVER_REC* %21, %struct._SERVER_REC** %8, align 8, !dbg !2369
  %22 = load %struct._SERVER_REC*, %struct._SERVER_REC** %8, align 8, !dbg !2370
  %23 = icmp eq %struct._SERVER_REC* %22, null, !dbg !2372
  br i1 %23, label %29, label %24, !dbg !2373

; <label>:24:                                     ; preds = %17
  %25 = load %struct._GList*, %struct._GList** %9, align 8, !dbg !2374
  %26 = getelementptr inbounds %struct._GList, %struct._GList* %25, i32 0, i32 1, !dbg !2376
  %27 = load %struct._GList*, %struct._GList** %26, align 8, !dbg !2376
  %28 = icmp ne %struct._GList* %27, null, !dbg !2377
  br i1 %28, label %29, label %45, !dbg !2378

; <label>:29:                                     ; preds = %24, %17
  %30 = load %struct._SERVER_REC*, %struct._SERVER_REC** %8, align 8, !dbg !2379
  %31 = icmp eq %struct._SERVER_REC* %30, null, !dbg !2381
  br i1 %31, label %32, label %36, !dbg !2379

; <label>:32:                                     ; preds = %29
  %33 = load %struct._GList*, %struct._GList** %9, align 8, !dbg !2382
  %34 = getelementptr inbounds %struct._GList, %struct._GList* %33, i32 0, i32 0, !dbg !2384
  %35 = load i8*, i8** %34, align 8, !dbg !2384
  br label %42, !dbg !2385

; <label>:36:                                     ; preds = %29
  %37 = load %struct._GList*, %struct._GList** %9, align 8, !dbg !2386
  %38 = getelementptr inbounds %struct._GList, %struct._GList* %37, i32 0, i32 1, !dbg !2388
  %39 = load %struct._GList*, %struct._GList** %38, align 8, !dbg !2388
  %40 = getelementptr inbounds %struct._GList, %struct._GList* %39, i32 0, i32 0, !dbg !2389
  %41 = load i8*, i8** %40, align 8, !dbg !2389
  br label %42, !dbg !2390

; <label>:42:                                     ; preds = %36, %32
  %43 = phi i8* [ %35, %32 ], [ %41, %36 ], !dbg !2391
  %44 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i32 2, i8* inttoptr (i64 -3 to i8*), i8* %43), !dbg !2393
  call void @signal_stop(), !dbg !2394
  store %struct._SERVER_REC* null, %struct._SERVER_REC** %8, align 8, !dbg !2395
  br label %45, !dbg !2396

; <label>:45:                                     ; preds = %42, %24
  %46 = load %struct._GList*, %struct._GList** %9, align 8, !dbg !2397
  call void @g_list_free(%struct._GList* %46), !dbg !2398
  %47 = load %struct._SERVER_REC*, %struct._SERVER_REC** %8, align 8, !dbg !2399
  store %struct._SERVER_REC* %47, %struct._SERVER_REC** %4, align 8, !dbg !2400
  br label %48, !dbg !2400

; <label>:48:                                     ; preds = %45, %15
  %49 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !2401
  ret %struct._SERVER_REC* %49, !dbg !2401
}

declare %struct._GList* @optlist_remove_known(i8*, %struct._GHashTable*) #2

declare void @signal_stop() #2

declare void @g_list_free(%struct._GList*) #2

; Function Attrs: nounwind uwtable
define void @servers_init() #0 !dbg !2402 {
  call void @settings_add_bool_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), i32 0), !dbg !2403
  call void @settings_add_bool_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i32 0), !dbg !2404
  store %struct._GSList* null, %struct._GSList** @servers, align 8, !dbg !2405
  store %struct._GSList* null, %struct._GSList** @lookup_servers, align 8, !dbg !2406
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHAT_PROTOCOL_REC*)* @sig_chat_protocol_deinit to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2407
  call void @servers_reconnect_init(), !dbg !2408
  call void @servers_setup_init(), !dbg !2409
  ret void, !dbg !2410
}

declare void @settings_add_bool_module(i8*, i8*, i8*, i32) #2

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_chat_protocol_deinit(%struct._CHAT_PROTOCOL_REC*) #0 !dbg !2411 {
  %2 = alloca %struct._CHAT_PROTOCOL_REC*, align 8
  store %struct._CHAT_PROTOCOL_REC* %0, %struct._CHAT_PROTOCOL_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._CHAT_PROTOCOL_REC** %2, metadata !2414, metadata !551), !dbg !2415
  %3 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !2416
  %4 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %2, align 8, !dbg !2417
  %5 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %4, i32 0, i32 0, !dbg !2418
  %6 = load i32, i32* %5, align 8, !dbg !2418
  call void @disconnect_servers(%struct._GSList* %3, i32 %6), !dbg !2419
  %7 = load %struct._GSList*, %struct._GSList** @lookup_servers, align 8, !dbg !2420
  %8 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %2, align 8, !dbg !2421
  %9 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %8, i32 0, i32 0, !dbg !2422
  %10 = load i32, i32* %9, align 8, !dbg !2422
  call void @disconnect_servers(%struct._GSList* %7, i32 %10), !dbg !2423
  ret void, !dbg !2424
}

declare void @servers_reconnect_init() #2

declare void @servers_setup_init() #2

; Function Attrs: nounwind uwtable
define void @servers_deinit() #0 !dbg !2425 {
  call void @signal_remove_full(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.22, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHAT_PROTOCOL_REC*)* @sig_chat_protocol_deinit to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2426
  call void @servers_setup_deinit(), !dbg !2427
  call void @servers_reconnect_deinit(), !dbg !2428
  call void @module_uniq_destroy(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)), !dbg !2429
  call void @module_uniq_destroy(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0)), !dbg !2430
  ret void, !dbg !2431
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare void @servers_setup_deinit() #2

declare void @servers_reconnect_deinit() #2

declare void @module_uniq_destroy(i8*) #2

; Function Attrs: nounwind uwtable
define internal i8* @server_create_address_tag(i8*) #0 !dbg !2432 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2435, metadata !551), !dbg !2436
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2437, metadata !551), !dbg !2438
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2439, metadata !551), !dbg !2440
  br label %6, !dbg !2441, !llvm.loop !2442

; <label>:6:                                      ; preds = %1
  %7 = load i8*, i8** %3, align 8, !dbg !2443
  %8 = icmp ne i8* %7, null, !dbg !2447
  br i1 %8, label %9, label %10, !dbg !2443

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !2448

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.server_create_address_tag, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i32 0, i32 0)), !dbg !2451
  store i8* null, i8** %2, align 8, !dbg !2454
  br label %77, !dbg !2454

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !2455

; <label>:12:                                     ; preds = %11
  %13 = load i8*, i8** %3, align 8, !dbg !2457
  %14 = call i8* @strchr(i8* %13, i32 46) #8, !dbg !2459
  %15 = icmp eq i8* %14, null, !dbg !2460
  br i1 %15, label %16, label %17, !dbg !2461

; <label>:16:                                     ; preds = %12
  store i8* null, i8** %5, align 8, !dbg !2462
  store i8* null, i8** %4, align 8, !dbg !2464
  br label %50, !dbg !2465

; <label>:17:                                     ; preds = %12
  %18 = load i8*, i8** %3, align 8, !dbg !2466
  %19 = call i32 @g_ascii_strncasecmp(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i64 3), !dbg !2469
  %20 = icmp eq i32 %19, 0, !dbg !2470
  br i1 %20, label %25, label %21, !dbg !2471

; <label>:21:                                     ; preds = %17
  %22 = load i8*, i8** %3, align 8, !dbg !2472
  %23 = call i32 @g_ascii_strncasecmp(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i64 4), !dbg !2473
  %24 = icmp eq i32 %23, 0, !dbg !2474
  br i1 %24, label %25, label %45, !dbg !2475

; <label>:25:                                     ; preds = %21, %17
  %26 = load i8*, i8** %3, align 8, !dbg !2477
  %27 = call i8* @strrchr(i8* %26, i32 46) #8, !dbg !2479
  store i8* %27, i8** %5, align 8, !dbg !2480
  %28 = load i8*, i8** %5, align 8, !dbg !2481
  %29 = getelementptr inbounds i8, i8* %28, i64 -1, !dbg !2482
  store i8* %29, i8** %4, align 8, !dbg !2483
  br label %30, !dbg !2484

; <label>:30:                                     ; preds = %41, %25
  %31 = load i8*, i8** %4, align 8, !dbg !2485
  %32 = load i8*, i8** %3, align 8, !dbg !2487
  %33 = icmp ugt i8* %31, %32, !dbg !2488
  br i1 %33, label %34, label %39, !dbg !2489

; <label>:34:                                     ; preds = %30
  %35 = load i8*, i8** %4, align 8, !dbg !2490
  %36 = load i8, i8* %35, align 1, !dbg !2492
  %37 = sext i8 %36 to i32, !dbg !2492
  %38 = icmp ne i32 %37, 46, !dbg !2493
  br label %39

; <label>:39:                                     ; preds = %34, %30
  %40 = phi i1 [ false, %30 ], [ %38, %34 ]
  br i1 %40, label %41, label %44, !dbg !2494

; <label>:41:                                     ; preds = %39
  %42 = load i8*, i8** %4, align 8, !dbg !2496
  %43 = getelementptr inbounds i8, i8* %42, i32 -1, !dbg !2496
  store i8* %43, i8** %4, align 8, !dbg !2496
  br label %30, !dbg !2498, !llvm.loop !2499

; <label>:44:                                     ; preds = %39
  br label %49, !dbg !2500

; <label>:45:                                     ; preds = %21
  %46 = load i8*, i8** %3, align 8, !dbg !2501
  %47 = call i8* @strchr(i8* %46, i32 46) #8, !dbg !2503
  store i8* %47, i8** %5, align 8, !dbg !2504
  %48 = load i8*, i8** %5, align 8, !dbg !2505
  store i8* %48, i8** %4, align 8, !dbg !2506
  br label %49

; <label>:49:                                     ; preds = %45, %44
  br label %50

; <label>:50:                                     ; preds = %49, %16
  %51 = load i8*, i8** %4, align 8, !dbg !2507
  %52 = load i8*, i8** %5, align 8, !dbg !2509
  %53 = icmp eq i8* %51, %52, !dbg !2510
  br i1 %53, label %54, label %56, !dbg !2511

; <label>:54:                                     ; preds = %50
  %55 = load i8*, i8** %3, align 8, !dbg !2512
  store i8* %55, i8** %4, align 8, !dbg !2514
  br label %59, !dbg !2515

; <label>:56:                                     ; preds = %50
  %57 = load i8*, i8** %4, align 8, !dbg !2516
  %58 = getelementptr inbounds i8, i8* %57, i32 1, !dbg !2516
  store i8* %58, i8** %4, align 8, !dbg !2516
  br label %59

; <label>:59:                                     ; preds = %56, %54
  %60 = load i8*, i8** %5, align 8, !dbg !2518
  %61 = icmp eq i8* %60, null, !dbg !2520
  br i1 %61, label %62, label %67, !dbg !2521

; <label>:62:                                     ; preds = %59
  %63 = load i8*, i8** %3, align 8, !dbg !2522
  %64 = load i8*, i8** %3, align 8, !dbg !2524
  %65 = call i64 @strlen(i8* %64) #8, !dbg !2525
  %66 = getelementptr inbounds i8, i8* %63, i64 %65, !dbg !2526
  store i8* %66, i8** %5, align 8, !dbg !2527
  br label %67, !dbg !2528

; <label>:67:                                     ; preds = %62, %59
  %68 = load i8*, i8** %4, align 8, !dbg !2529
  %69 = load i8*, i8** %5, align 8, !dbg !2530
  %70 = load i8*, i8** %4, align 8, !dbg !2531
  %71 = ptrtoint i8* %69 to i64, !dbg !2532
  %72 = ptrtoint i8* %70 to i64, !dbg !2532
  %73 = sub i64 %71, %72, !dbg !2532
  %74 = trunc i64 %73 to i32, !dbg !2533
  %75 = sext i32 %74 to i64, !dbg !2533
  %76 = call noalias i8* @g_strndup(i8* %68, i64 %75), !dbg !2534
  store i8* %76, i8** %2, align 8, !dbg !2535
  br label %77, !dbg !2535

; <label>:77:                                     ; preds = %67, %10
  %78 = load i8*, i8** %2, align 8, !dbg !2536
  ret i8* %78, !dbg !2536
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #5

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare %struct._GString* @g_string_new(i8*) #2

declare void @g_string_printf(%struct._GString*, i8*, ...) #2

declare i8* @g_string_free(%struct._GString*, i32) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #5

declare i32 @g_ascii_strncasecmp(i8*, i8*, i64) #2

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #5

declare noalias i8* @g_strndup(i8*, i64) #2

declare %struct._GIOChannel* @net_connect_ip_ssl(%struct._IPADDR*, i32, %struct._IPADDR*, %struct._SERVER_REC*) #2

declare %struct._GIOChannel* @net_connect_ip(%struct._IPADDR*, i32, %struct._IPADDR*) #2

declare %struct._GIOChannel* @net_connect_unix(i8*) #2

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #6

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

declare i32 @net_ip2host(%struct._IPADDR*, i8*) #2

declare noalias i8* @g_strconcat(i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @server_connect_callback_init_ssl(%struct._SERVER_REC*, %struct._GIOChannel*) #0 !dbg !2537 {
  %3 = alloca %struct._SERVER_REC*, align 8
  %4 = alloca %struct._GIOChannel*, align 8
  %5 = alloca i32, align 4
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %3, metadata !2540, metadata !551), !dbg !2541
  store %struct._GIOChannel* %1, %struct._GIOChannel** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %4, metadata !2542, metadata !551), !dbg !2543
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2544, metadata !551), !dbg !2545
  br label %6, !dbg !2546, !llvm.loop !2547

; <label>:6:                                      ; preds = %2
  %7 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !2548
  %8 = bitcast %struct._SERVER_REC* %7 to i8*, !dbg !2548
  %9 = call i8* @module_check_cast(i8* %8, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)), !dbg !2552
  %10 = bitcast i8* %9 to %struct._SERVER_REC*, !dbg !2553
  %11 = icmp ne %struct._SERVER_REC* %10, null, !dbg !2553
  br i1 %11, label %12, label %13, !dbg !2554

; <label>:12:                                     ; preds = %6
  br i1 false, label %15, label %14, !dbg !2555

; <label>:13:                                     ; preds = %6
  br i1 false, label %14, label %15, !dbg !2557

; <label>:14:                                     ; preds = %13, %12
  br label %16, !dbg !2559

; <label>:15:                                     ; preds = %13, %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.server_connect_callback_init_ssl, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0)), !dbg !2562
  br label %71, !dbg !2565

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !2566

; <label>:17:                                     ; preds = %16
  %18 = load %struct._GIOChannel*, %struct._GIOChannel** %4, align 8, !dbg !2568
  %19 = call i32 @irssi_ssl_handshake(%struct._GIOChannel* %18), !dbg !2569
  store i32 %19, i32* %5, align 4, !dbg !2570
  %20 = load i32, i32* %5, align 4, !dbg !2571
  %21 = icmp eq i32 %20, -1, !dbg !2573
  br i1 %21, label %22, label %29, !dbg !2574

; <label>:22:                                     ; preds = %17
  %23 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !2575
  %24 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %23, i32 0, i32 8, !dbg !2577
  %25 = load i8, i8* %24, align 8, !dbg !2578
  %26 = and i8 %25, -5, !dbg !2578
  %27 = or i8 %26, 4, !dbg !2578
  store i8 %27, i8* %24, align 8, !dbg !2578
  %28 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !2579
  call void @server_connect_failed(%struct._SERVER_REC* %28, i8* null), !dbg !2580
  br label %71, !dbg !2581

; <label>:29:                                     ; preds = %17
  %30 = load i32, i32* %5, align 4, !dbg !2582
  %31 = and i32 %30, 1, !dbg !2584
  %32 = icmp ne i32 %31, 0, !dbg !2584
  br i1 %32, label %33, label %53, !dbg !2585

; <label>:33:                                     ; preds = %29
  %34 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !2586
  %35 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %34, i32 0, i32 12, !dbg !2589
  %36 = load i32, i32* %35, align 8, !dbg !2589
  %37 = icmp ne i32 %36, -1, !dbg !2590
  br i1 %37, label %38, label %43, !dbg !2591

; <label>:38:                                     ; preds = %33
  %39 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !2592
  %40 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %39, i32 0, i32 12, !dbg !2593
  %41 = load i32, i32* %40, align 8, !dbg !2593
  %42 = call i32 @g_source_remove(i32 %41), !dbg !2594
  br label %43, !dbg !2594

; <label>:43:                                     ; preds = %38, %33
  %44 = load %struct._GIOChannel*, %struct._GIOChannel** %4, align 8, !dbg !2595
  %45 = load i32, i32* %5, align 4, !dbg !2596
  %46 = icmp eq i32 %45, 1, !dbg !2597
  %47 = select i1 %46, i32 1, i32 2, !dbg !2596
  %48 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !2598
  %49 = bitcast %struct._SERVER_REC* %48 to i8*, !dbg !2598
  %50 = call i32 @g_input_add(%struct._GIOChannel* %44, i32 %47, void (i8*, %struct._GIOChannel*, i32)* bitcast (void (%struct._SERVER_REC*, %struct._GIOChannel*)* @server_connect_callback_init_ssl to void (i8*, %struct._GIOChannel*, i32)*), i8* %49), !dbg !2599
  %51 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !2600
  %52 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %51, i32 0, i32 12, !dbg !2601
  store i32 %50, i32* %52, align 8, !dbg !2602
  br label %71, !dbg !2603

; <label>:53:                                     ; preds = %29
  %54 = load %struct._GSList*, %struct._GSList** @lookup_servers, align 8, !dbg !2604
  %55 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !2605
  %56 = bitcast %struct._SERVER_REC* %55 to i8*, !dbg !2605
  %57 = call %struct._GSList* @g_slist_remove(%struct._GSList* %54, i8* %56), !dbg !2606
  store %struct._GSList* %57, %struct._GSList** @lookup_servers, align 8, !dbg !2607
  %58 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !2608
  %59 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %58, i32 0, i32 12, !dbg !2610
  %60 = load i32, i32* %59, align 8, !dbg !2610
  %61 = icmp ne i32 %60, -1, !dbg !2611
  br i1 %61, label %62, label %69, !dbg !2612

; <label>:62:                                     ; preds = %53
  %63 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !2613
  %64 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %63, i32 0, i32 12, !dbg !2615
  %65 = load i32, i32* %64, align 8, !dbg !2615
  %66 = call i32 @g_source_remove(i32 %65), !dbg !2616
  %67 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !2617
  %68 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %67, i32 0, i32 12, !dbg !2618
  store i32 -1, i32* %68, align 8, !dbg !2619
  br label %69, !dbg !2620

; <label>:69:                                     ; preds = %62, %53
  %70 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !2621
  call void @server_connect_finished(%struct._SERVER_REC* %70), !dbg !2622
  br label %71, !dbg !2623

; <label>:71:                                     ; preds = %69, %43, %22, %15
  ret void, !dbg !2624
}

; Function Attrs: nounwind uwtable
define internal void @server_connect_callback_init(%struct._SERVER_REC*, %struct._GIOChannel*) #0 !dbg !2626 {
  %3 = alloca %struct._SERVER_REC*, align 8
  %4 = alloca %struct._GIOChannel*, align 8
  %5 = alloca i32, align 4
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %3, metadata !2627, metadata !551), !dbg !2628
  store %struct._GIOChannel* %1, %struct._GIOChannel** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %4, metadata !2629, metadata !551), !dbg !2630
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2631, metadata !551), !dbg !2632
  br label %6, !dbg !2633, !llvm.loop !2634

; <label>:6:                                      ; preds = %2
  %7 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !2635
  %8 = bitcast %struct._SERVER_REC* %7 to i8*, !dbg !2635
  %9 = call i8* @module_check_cast(i8* %8, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)), !dbg !2639
  %10 = bitcast i8* %9 to %struct._SERVER_REC*, !dbg !2640
  %11 = icmp ne %struct._SERVER_REC* %10, null, !dbg !2640
  br i1 %11, label %12, label %13, !dbg !2641

; <label>:12:                                     ; preds = %6
  br i1 false, label %15, label %14, !dbg !2642

; <label>:13:                                     ; preds = %6
  br i1 false, label %14, label %15, !dbg !2644

; <label>:14:                                     ; preds = %13, %12
  br label %16, !dbg !2646

; <label>:15:                                     ; preds = %13, %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.server_connect_callback_init, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0)), !dbg !2649
  br label %43, !dbg !2652

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !2653

; <label>:17:                                     ; preds = %16
  %18 = load %struct._GIOChannel*, %struct._GIOChannel** %4, align 8, !dbg !2655
  %19 = call i32 @net_geterror(%struct._GIOChannel* %18), !dbg !2656
  store i32 %19, i32* %5, align 4, !dbg !2657
  %20 = load i32, i32* %5, align 4, !dbg !2658
  %21 = icmp ne i32 %20, 0, !dbg !2660
  br i1 %21, label %22, label %31, !dbg !2661

; <label>:22:                                     ; preds = %17
  %23 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !2662
  %24 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %23, i32 0, i32 8, !dbg !2664
  %25 = load i8, i8* %24, align 8, !dbg !2665
  %26 = and i8 %25, -5, !dbg !2665
  %27 = or i8 %26, 4, !dbg !2665
  store i8 %27, i8* %24, align 8, !dbg !2665
  %28 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !2666
  %29 = load i32, i32* %5, align 4, !dbg !2667
  %30 = call i8* @g_strerror(i32 %29) #1, !dbg !2668
  call void @server_connect_failed(%struct._SERVER_REC* %28, i8* %30), !dbg !2669
  br label %43, !dbg !2671

; <label>:31:                                     ; preds = %17
  %32 = load %struct._GSList*, %struct._GSList** @lookup_servers, align 8, !dbg !2672
  %33 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !2673
  %34 = bitcast %struct._SERVER_REC* %33 to i8*, !dbg !2673
  %35 = call %struct._GSList* @g_slist_remove(%struct._GSList* %32, i8* %34), !dbg !2674
  store %struct._GSList* %35, %struct._GSList** @lookup_servers, align 8, !dbg !2675
  %36 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !2676
  %37 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %36, i32 0, i32 12, !dbg !2677
  %38 = load i32, i32* %37, align 8, !dbg !2677
  %39 = call i32 @g_source_remove(i32 %38), !dbg !2678
  %40 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !2679
  %41 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %40, i32 0, i32 12, !dbg !2680
  store i32 -1, i32* %41, align 8, !dbg !2681
  %42 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !2682
  call void @server_connect_finished(%struct._SERVER_REC* %42), !dbg !2683
  br label %43, !dbg !2684

; <label>:43:                                     ; preds = %31, %22, %15
  ret void, !dbg !2685
}

declare i32 @irssi_ssl_handshake(%struct._GIOChannel*) #2

declare i32 @net_geterror(%struct._GIOChannel*) #2

declare i32 @net_gethostbyname_return(%struct._GIOChannel*, %struct.RESOLVED_IP_REC*) #2

declare i32 @net_hosterror_notfound(i32) #2

declare void @channel_destroy(%struct._CHANNEL_REC*) #2

declare void @query_change_server(%struct._QUERY_REC*, %struct._SERVER_REC*) #2

declare void @g_slist_free(%struct._GSList*) #2

; Function Attrs: nounwind uwtable
define internal void @disconnect_servers(%struct._GSList*, i32) #0 !dbg !2687 {
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct._SERVER_REC*, align 8
  store %struct._GSList* %0, %struct._GSList** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !2690, metadata !551), !dbg !2691
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2692, metadata !551), !dbg !2693
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !2694, metadata !551), !dbg !2695
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !2696, metadata !551), !dbg !2697
  %8 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !2698
  store %struct._GSList* %8, %struct._GSList** %5, align 8, !dbg !2700
  br label %9, !dbg !2701

; <label>:9:                                      ; preds = %28, %2
  %10 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2702
  %11 = icmp ne %struct._GSList* %10, null, !dbg !2705
  br i1 %11, label %12, label %30, !dbg !2706

; <label>:12:                                     ; preds = %9
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %7, metadata !2707, metadata !551), !dbg !2709
  %13 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2710
  %14 = getelementptr inbounds %struct._GSList, %struct._GSList* %13, i32 0, i32 0, !dbg !2711
  %15 = load i8*, i8** %14, align 8, !dbg !2711
  %16 = bitcast i8* %15 to %struct._SERVER_REC*, !dbg !2710
  store %struct._SERVER_REC* %16, %struct._SERVER_REC** %7, align 8, !dbg !2709
  %17 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2712
  %18 = getelementptr inbounds %struct._GSList, %struct._GSList* %17, i32 0, i32 1, !dbg !2713
  %19 = load %struct._GSList*, %struct._GSList** %18, align 8, !dbg !2713
  store %struct._GSList* %19, %struct._GSList** %6, align 8, !dbg !2714
  %20 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !2715
  %21 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %20, i32 0, i32 1, !dbg !2717
  %22 = load i32, i32* %21, align 4, !dbg !2717
  %23 = load i32, i32* %4, align 4, !dbg !2718
  %24 = icmp eq i32 %22, %23, !dbg !2719
  br i1 %24, label %25, label %27, !dbg !2720

; <label>:25:                                     ; preds = %12
  %26 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !2721
  call void @server_disconnect(%struct._SERVER_REC* %26), !dbg !2722
  br label %27, !dbg !2722

; <label>:27:                                     ; preds = %25, %12
  br label %28, !dbg !2723

; <label>:28:                                     ; preds = %27
  %29 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !2724
  store %struct._GSList* %29, %struct._GSList** %5, align 8, !dbg !2726
  br label %9, !dbg !2727, !llvm.loop !2728

; <label>:30:                                     ; preds = %9
  ret void, !dbg !2730
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!543, !544}
!llvm.ident = !{!545}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !68, globals: !539)
!1 = !DIFile(filename: "line75-servers.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10, !15, !24, !35, !47}
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
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !48, line: 25, size: 32, align: 32, elements: !49)
!48 = !DIFile(filename: "commands.h", directory: "/home/lichi/Desktop/irssi/task1")
!49 = !{!50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67}
!50 = !DIEnumerator(name: "CMDERR_OPTION_UNKNOWN", value: -3)
!51 = !DIEnumerator(name: "CMDERR_OPTION_AMBIGUOUS", value: -2)
!52 = !DIEnumerator(name: "CMDERR_OPTION_ARG_MISSING", value: -1)
!53 = !DIEnumerator(name: "CMDERR_UNKNOWN", value: 0)
!54 = !DIEnumerator(name: "CMDERR_AMBIGUOUS", value: 1)
!55 = !DIEnumerator(name: "CMDERR_ERRNO", value: 2)
!56 = !DIEnumerator(name: "CMDERR_NOT_ENOUGH_PARAMS", value: 3)
!57 = !DIEnumerator(name: "CMDERR_NOT_CONNECTED", value: 4)
!58 = !DIEnumerator(name: "CMDERR_NOT_JOINED", value: 5)
!59 = !DIEnumerator(name: "CMDERR_CHAN_NOT_FOUND", value: 6)
!60 = !DIEnumerator(name: "CMDERR_CHAN_NOT_SYNCED", value: 7)
!61 = !DIEnumerator(name: "CMDERR_ILLEGAL_PROTO", value: 8)
!62 = !DIEnumerator(name: "CMDERR_NOT_GOOD_IDEA", value: 9)
!63 = !DIEnumerator(name: "CMDERR_INVALID_TIME", value: 10)
!64 = !DIEnumerator(name: "CMDERR_INVALID_CHARSET", value: 11)
!65 = !DIEnumerator(name: "CMDERR_EVAL_MAX_RECURSE", value: 12)
!66 = !DIEnumerator(name: "CMDERR_PROGRAM_NOT_FOUND", value: 13)
!67 = !DIEnumerator(name: "CMDERR_NO_SERVER_DEFINED", value: 14)
!68 = !{!69, !165, !416, !210, !528, !81, !103, !209, !406, !532, !77}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !71, line: 107, baseType: !72)
!71 = !DIFile(filename: "../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !73, line: 30, size: 2240, align: 64, elements: !74)
!73 = !DIFile(filename: "servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!74 = !{!75, !78, !79, !80, !342, !347, !348, !349, !350, !351, !352, !353, !354, !355, !372, !373, !377, !378, !379, !389, !394, !395, !396, !397, !398, !399, !400, !401, !408, !409, !410, !411, !412, !418, !422, !426, !430, !434, !439, !496, !523, !527}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !72, file: !76, line: 3, baseType: !77, size: 32, align: 32)
!76 = !DIFile(filename: "server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!77 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !72, file: !76, line: 4, baseType: !77, size: 32, align: 32, offset: 32)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !72, file: !76, line: 6, baseType: !77, size: 32, align: 32, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !72, file: !76, line: 8, baseType: !81, size: 64, align: 64, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !71, line: 113, baseType: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !73, line: 25, size: 1920, align: 64, elements: !84)
!84 = !{!85, !87, !88, !89, !92, !93, !94, !95, !96, !98, !99, !100, !101, !102, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !83, file: !86, line: 3, baseType: !77, size: 32, align: 32)
!86 = !DIFile(filename: "server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!87 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !83, file: !86, line: 4, baseType: !77, size: 32, align: 32, offset: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !83, file: !86, line: 6, baseType: !77, size: 32, align: 32, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !83, file: !86, line: 9, baseType: !90, size: 64, align: 64, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !83, file: !86, line: 10, baseType: !77, size: 32, align: 32, offset: 192)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !83, file: !86, line: 11, baseType: !90, size: 64, align: 64, offset: 256)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !83, file: !86, line: 11, baseType: !90, size: 64, align: 64, offset: 320)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !83, file: !86, line: 11, baseType: !90, size: 64, align: 64, offset: 384)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !83, file: !86, line: 13, baseType: !97, size: 16, align: 16, offset: 448)
!97 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !83, file: !86, line: 14, baseType: !90, size: 64, align: 64, offset: 512)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !83, file: !86, line: 15, baseType: !90, size: 64, align: 64, offset: 576)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !83, file: !86, line: 16, baseType: !77, size: 32, align: 32, offset: 640)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !83, file: !86, line: 17, baseType: !90, size: 64, align: 64, offset: 704)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !83, file: !86, line: 19, baseType: !103, size: 64, align: 64, offset: 768)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !71, line: 99, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !106, line: 22, size: 160, align: 32, elements: !107)
!106 = !DIFile(filename: "network.h", directory: "/home/lichi/Desktop/irssi/task1")
!107 = !{!108, !109}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !105, file: !106, line: 23, baseType: !97, size: 16, align: 16)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !105, file: !106, line: 24, baseType: !110, size: 128, align: 32, offset: 32)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !111, line: 211, size: 128, align: 32, elements: !112)
!111 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/irssi/task1")
!112 = !{!113}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !110, file: !111, line: 220, baseType: !114, size: 128, align: 32)
!114 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !110, file: !111, line: 213, size: 128, align: 32, elements: !115)
!115 = !{!116, !123, !128}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !114, file: !111, line: 215, baseType: !117, size: 128, align: 8)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 128, align: 8, elements: !121)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !119, line: 48, baseType: !120)
!119 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/irssi/task1")
!120 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!121 = !{!122}
!122 = !DISubrange(count: 16)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !114, file: !111, line: 217, baseType: !124, size: 128, align: 16)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 128, align: 16, elements: !126)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !119, line: 49, baseType: !97)
!126 = !{!127}
!127 = !DISubrange(count: 8)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !114, file: !111, line: 218, baseType: !129, size: 128, align: 32)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 128, align: 32, elements: !132)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !119, line: 51, baseType: !131)
!131 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!132 = !{!133}
!133 = !DISubrange(count: 4)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !83, file: !86, line: 19, baseType: !103, size: 64, align: 64, offset: 832)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !83, file: !86, line: 21, baseType: !90, size: 64, align: 64, offset: 896)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !83, file: !86, line: 22, baseType: !90, size: 64, align: 64, offset: 960)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !83, file: !86, line: 23, baseType: !90, size: 64, align: 64, offset: 1024)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !83, file: !86, line: 24, baseType: !90, size: 64, align: 64, offset: 1088)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !83, file: !86, line: 26, baseType: !90, size: 64, align: 64, offset: 1152)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !83, file: !86, line: 27, baseType: !90, size: 64, align: 64, offset: 1216)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !83, file: !86, line: 28, baseType: !90, size: 64, align: 64, offset: 1280)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !83, file: !86, line: 29, baseType: !90, size: 64, align: 64, offset: 1344)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !83, file: !86, line: 30, baseType: !90, size: 64, align: 64, offset: 1408)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !83, file: !86, line: 31, baseType: !90, size: 64, align: 64, offset: 1472)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !83, file: !86, line: 32, baseType: !90, size: 64, align: 64, offset: 1536)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !83, file: !86, line: 33, baseType: !90, size: 64, align: 64, offset: 1600)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !83, file: !86, line: 35, baseType: !148, size: 64, align: 64, offset: 1664)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !150)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !151)
!151 = !{!152, !155, !299, !300, !305, !306, !307, !308, !309, !318, !319, !320, !324, !325, !326, !327, !328, !329, !330, !331}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !150, file: !4, line: 100, baseType: !153, size: 32, align: 32)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !154, line: 49, baseType: !77)
!154 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!155 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !150, file: !4, line: 101, baseType: !156, size: 64, align: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, align: 64)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !159)
!159 = !{!160, !183, !189, !196, !200, !286, !290, !295}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !158, file: !4, line: 133, baseType: !161, size: 64, align: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64, align: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{!164, !148, !165, !167, !170, !171}
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !154, line: 46, baseType: !91)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !168, line: 66, baseType: !169)
!168 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!169 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64, align: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !174, line: 42, baseType: !175)
!174 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !174, line: 44, size: 128, align: 64, elements: !176)
!176 = !{!177, !181, !182}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !175, file: !174, line: 46, baseType: !178, size: 32, align: 32)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !179, line: 36, baseType: !180)
!179 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !168, line: 45, baseType: !131)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !175, file: !174, line: 47, baseType: !153, size: 32, align: 32, offset: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !175, file: !174, line: 48, baseType: !165, size: 64, align: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !158, file: !4, line: 138, baseType: !184, size: 64, align: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64, align: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!164, !148, !187, !167, !170, !171}
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !158, file: !4, line: 143, baseType: !190, size: 64, align: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!164, !148, !193, !195, !171}
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !168, line: 51, baseType: !194)
!194 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !158, file: !4, line: 147, baseType: !197, size: 64, align: 64, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!164, !148, !171}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !158, file: !4, line: 149, baseType: !201, size: 64, align: 64, offset: 256)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!204, !148, !285}
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !206)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !207)
!207 = !{!208, !211, !232, !261, !263, !267, !268, !269, !270, !278, !279, !280, !281}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !206, file: !16, line: 174, baseType: !209, size: 64, align: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !154, line: 77, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !206, file: !16, line: 175, baseType: !212, size: 64, align: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !214)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !215)
!215 = !{!216, !220, !221}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !214, file: !16, line: 198, baseType: !217, size: 64, align: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{null, !209}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !214, file: !16, line: 199, baseType: !217, size: 64, align: 64, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !214, file: !16, line: 200, baseType: !222, size: 64, align: 64, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !209, !204, !225, !231}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64, align: 64)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64, align: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!230, !209}
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !154, line: 50, baseType: !153)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !206, file: !16, line: 177, baseType: !233, size: 64, align: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, align: 64)
!234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !236)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !237)
!237 = !{!238, !243, !247, !251, !255, !256}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !236, file: !16, line: 216, baseType: !239, size: 64, align: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!230, !204, !242}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !236, file: !16, line: 218, baseType: !244, size: 64, align: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64, align: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!230, !204}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !236, file: !16, line: 219, baseType: !248, size: 64, align: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64, align: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!230, !204, !226, !209}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !236, file: !16, line: 222, baseType: !252, size: 64, align: 64, offset: 192)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64, align: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !204}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !236, file: !16, line: 226, baseType: !226, size: 64, align: 64, offset: 256)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !236, file: !16, line: 227, baseType: !257, size: 64, align: 64, offset: 320)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64, align: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{null}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !206, file: !16, line: 178, baseType: !262, size: 32, align: 32, offset: 192)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !154, line: 55, baseType: !131)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !206, file: !16, line: 180, baseType: !264, size: 64, align: 64, offset: 256)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !266)
!266 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !206, file: !16, line: 182, baseType: !153, size: 32, align: 32, offset: 320)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !206, file: !16, line: 183, baseType: !262, size: 32, align: 32, offset: 352)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !206, file: !16, line: 184, baseType: !262, size: 32, align: 32, offset: 384)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !206, file: !16, line: 186, baseType: !271, size: 64, align: 64, offset: 448)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64, align: 64)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !273, line: 37, baseType: !274)
!273 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !273, line: 39, size: 128, align: 64, elements: !275)
!275 = !{!276, !277}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !274, file: !273, line: 41, baseType: !209, size: 64, align: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !274, file: !273, line: 42, baseType: !271, size: 64, align: 64, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !206, file: !16, line: 188, baseType: !204, size: 64, align: 64, offset: 512)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !206, file: !16, line: 189, baseType: !204, size: 64, align: 64, offset: 576)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !206, file: !16, line: 191, baseType: !90, size: 64, align: 64, offset: 640)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !206, file: !16, line: 193, baseType: !282, size: 64, align: 64, offset: 704)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64, align: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !284)
!284 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !158, file: !4, line: 151, baseType: !287, size: 64, align: 64, offset: 320)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64, align: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{null, !148}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !158, file: !4, line: 152, baseType: !291, size: 64, align: 64, offset: 384)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64, align: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!164, !148, !294, !171}
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !158, file: !4, line: 155, baseType: !296, size: 64, align: 64, offset: 448)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64, align: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!294, !148}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !150, file: !4, line: 103, baseType: !165, size: 64, align: 64, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !150, file: !4, line: 104, baseType: !301, size: 64, align: 64, offset: 192)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !302, line: 77, baseType: !303)
!302 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64, align: 64)
!304 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !302, line: 77, flags: DIFlagFwdDecl)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !150, file: !4, line: 105, baseType: !301, size: 64, align: 64, offset: 256)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !150, file: !4, line: 106, baseType: !165, size: 64, align: 64, offset: 320)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !150, file: !4, line: 107, baseType: !262, size: 32, align: 32, offset: 384)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !150, file: !4, line: 109, baseType: !167, size: 64, align: 64, offset: 448)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !150, file: !4, line: 110, baseType: !310, size: 64, align: 64, offset: 512)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64, align: 64)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !312, line: 39, baseType: !313)
!312 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !312, line: 41, size: 192, align: 64, elements: !314)
!314 = !{!315, !316, !317}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !313, file: !312, line: 43, baseType: !165, size: 64, align: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !313, file: !312, line: 44, baseType: !167, size: 64, align: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !313, file: !312, line: 45, baseType: !167, size: 64, align: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !150, file: !4, line: 111, baseType: !310, size: 64, align: 64, offset: 576)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !150, file: !4, line: 112, baseType: !310, size: 64, align: 64, offset: 640)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !150, file: !4, line: 113, baseType: !321, size: 48, align: 8, offset: 704)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 48, align: 8, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 6)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !150, file: !4, line: 117, baseType: !262, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !150, file: !4, line: 118, baseType: !262, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !150, file: !4, line: 119, baseType: !262, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !150, file: !4, line: 120, baseType: !262, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !150, file: !4, line: 121, baseType: !262, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !150, file: !4, line: 122, baseType: !262, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !150, file: !4, line: 124, baseType: !209, size: 64, align: 64, offset: 768)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !150, file: !4, line: 125, baseType: !209, size: 64, align: 64, offset: 832)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !83, file: !86, line: 38, baseType: !131, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !83, file: !86, line: 39, baseType: !131, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !83, file: !86, line: 40, baseType: !131, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !83, file: !86, line: 41, baseType: !131, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !83, file: !86, line: 42, baseType: !131, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !83, file: !86, line: 43, baseType: !131, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !83, file: !86, line: 44, baseType: !131, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !83, file: !86, line: 45, baseType: !131, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !83, file: !86, line: 46, baseType: !90, size: 64, align: 64, offset: 1792)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !83, file: !86, line: 47, baseType: !90, size: 64, align: 64, offset: 1856)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !72, file: !76, line: 9, baseType: !343, size: 64, align: 64, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !344, line: 75, baseType: !345)
!344 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !346, line: 139, baseType: !194)
!346 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!347 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !72, file: !76, line: 10, baseType: !343, size: 64, align: 64, offset: 256)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !72, file: !76, line: 12, baseType: !90, size: 64, align: 64, offset: 320)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !72, file: !76, line: 13, baseType: !90, size: 64, align: 64, offset: 384)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !72, file: !76, line: 15, baseType: !131, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !72, file: !76, line: 16, baseType: !131, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !72, file: !76, line: 17, baseType: !131, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !72, file: !76, line: 18, baseType: !131, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !72, file: !76, line: 19, baseType: !131, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !72, file: !76, line: 21, baseType: !356, size: 64, align: 64, offset: 512)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64, align: 64)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !71, line: 102, baseType: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !359, line: 7, size: 384, align: 64, elements: !360)
!359 = !DIFile(filename: "net-sendbuffer.h", directory: "/home/lichi/Desktop/irssi/task1")
!360 = !{!361, !362, !366, !367, !368, !369, !370, !371}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !358, file: !359, line: 8, baseType: !148, size: 64, align: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "readbuffer", scope: !358, file: !359, line: 9, baseType: !363, size: 64, align: 64, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64, align: 64)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "LINEBUF_REC", file: !71, line: 101, baseType: !365)
!365 = !DICompositeType(tag: DW_TAG_structure_type, name: "_LINEBUF_REC", file: !71, line: 101, flags: DIFlagFwdDecl)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "send_tag", scope: !358, file: !359, line: 11, baseType: !77, size: 32, align: 32, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "bufsize", scope: !358, file: !359, line: 12, baseType: !77, size: 32, align: 32, offset: 160)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !358, file: !359, line: 13, baseType: !77, size: 32, align: 32, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !358, file: !359, line: 14, baseType: !90, size: 64, align: 64, offset: 256)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "def_bufsize", scope: !358, file: !359, line: 15, baseType: !77, size: 32, align: 32, offset: 320)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !358, file: !359, line: 16, baseType: !131, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !72, file: !76, line: 22, baseType: !77, size: 32, align: 32, offset: 576)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !72, file: !76, line: 25, baseType: !374, size: 128, align: 64, offset: 640)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 128, align: 64, elements: !375)
!375 = !{!376}
!376 = !DISubrange(count: 2)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !72, file: !76, line: 26, baseType: !77, size: 32, align: 32, offset: 768)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !72, file: !76, line: 27, baseType: !77, size: 32, align: 32, offset: 800)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !72, file: !76, line: 29, baseType: !380, size: 64, align: 64, offset: 832)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64, align: 64)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !71, line: 103, baseType: !382)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !383, line: 4, size: 192, align: 64, elements: !384)
!383 = !DIFile(filename: "rawlog.h", directory: "/home/lichi/Desktop/irssi/task1")
!384 = !{!385, !386, !387, !388}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "logging", scope: !382, file: !383, line: 5, baseType: !77, size: 32, align: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !382, file: !383, line: 6, baseType: !77, size: 32, align: 32, offset: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "nlines", scope: !382, file: !383, line: 8, baseType: !77, size: 32, align: 32, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !382, file: !383, line: 9, baseType: !271, size: 64, align: 64, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !72, file: !76, line: 30, baseType: !390, size: 64, align: 64, offset: 896)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64, align: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !392, line: 37, baseType: !393)
!392 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!393 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !392, line: 37, flags: DIFlagFwdDecl)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !72, file: !76, line: 32, baseType: !90, size: 64, align: 64, offset: 960)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !72, file: !76, line: 33, baseType: !90, size: 64, align: 64, offset: 1024)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !72, file: !76, line: 34, baseType: !90, size: 64, align: 64, offset: 1088)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !72, file: !76, line: 35, baseType: !131, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !72, file: !76, line: 36, baseType: !131, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !72, file: !76, line: 37, baseType: !131, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !72, file: !76, line: 38, baseType: !131, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !72, file: !76, line: 40, baseType: !402, size: 128, align: 64, offset: 1216)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !154, line: 504, baseType: !403)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !154, line: 506, size: 128, align: 64, elements: !404)
!404 = !{!405, !407}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !403, file: !154, line: 508, baseType: !406, size: 64, align: 64)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !154, line: 48, baseType: !194)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !403, file: !154, line: 509, baseType: !406, size: 64, align: 64, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !72, file: !76, line: 41, baseType: !343, size: 64, align: 64, offset: 1344)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !72, file: !76, line: 42, baseType: !77, size: 32, align: 32, offset: 1408)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !72, file: !76, line: 44, baseType: !271, size: 64, align: 64, offset: 1472)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !72, file: !76, line: 45, baseType: !271, size: 64, align: 64, offset: 1536)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !72, file: !76, line: 53, baseType: !413, size: 64, align: 64, offset: 1600)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64, align: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !69, !416, !77}
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64, align: 64)
!417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !72, file: !76, line: 55, baseType: !419, size: 64, align: 64, offset: 1664)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64, align: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{!77, !69, !91}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !72, file: !76, line: 57, baseType: !423, size: 64, align: 64, offset: 1728)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64, align: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!77, !69, !416}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !72, file: !76, line: 60, baseType: !427, size: 64, align: 64, offset: 1792)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64, align: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{!416, !69}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !72, file: !76, line: 62, baseType: !431, size: 64, align: 64, offset: 1856)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64, align: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !69, !416, !416, !77}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !72, file: !76, line: 65, baseType: !435, size: 64, align: 64, offset: 1920)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64, align: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!438, !69, !416, !416}
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !72, file: !76, line: 69, baseType: !440, size: 64, align: 64, offset: 1984)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64, align: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!443, !69, !416}
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64, align: 64)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !71, line: 109, baseType: !445)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !446, line: 15, size: 1408, align: 64, elements: !447)
!446 = !DIFile(filename: "channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!447 = !{!448, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !466, !470, !472, !473, !474, !475, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !445, file: !449, line: 3, baseType: !77, size: 32, align: 32)
!449 = !DIFile(filename: "window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!450 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !445, file: !449, line: 4, baseType: !77, size: 32, align: 32, offset: 32)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !445, file: !449, line: 5, baseType: !390, size: 64, align: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !445, file: !449, line: 7, baseType: !210, size: 64, align: 64, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !445, file: !449, line: 8, baseType: !69, size: 64, align: 64, offset: 192)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !445, file: !449, line: 9, baseType: !90, size: 64, align: 64, offset: 256)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !445, file: !449, line: 10, baseType: !90, size: 64, align: 64, offset: 320)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !445, file: !449, line: 11, baseType: !343, size: 64, align: 64, offset: 384)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !445, file: !449, line: 12, baseType: !77, size: 32, align: 32, offset: 448)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !445, file: !449, line: 13, baseType: !90, size: 64, align: 64, offset: 512)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !445, file: !449, line: 15, baseType: !460, size: 64, align: 64, offset: 576)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64, align: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !463}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64, align: 64)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !71, line: 108, baseType: !465)
!465 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !71, line: 108, flags: DIFlagFwdDecl)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !445, file: !449, line: 17, baseType: !467, size: 64, align: 64, offset: 640)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64, align: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!416, !463}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !445, file: !471, line: 5, baseType: !90, size: 64, align: 64, offset: 704)
!471 = !DIFile(filename: "channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!472 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !445, file: !471, line: 6, baseType: !90, size: 64, align: 64, offset: 768)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !445, file: !471, line: 7, baseType: !343, size: 64, align: 64, offset: 832)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !445, file: !471, line: 9, baseType: !390, size: 64, align: 64, offset: 896)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !445, file: !471, line: 10, baseType: !476, size: 64, align: 64, offset: 960)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64, align: 64)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !71, line: 111, baseType: !478)
!478 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !71, line: 111, flags: DIFlagFwdDecl)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !445, file: !471, line: 12, baseType: !131, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !445, file: !471, line: 13, baseType: !90, size: 64, align: 64, offset: 1088)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !445, file: !471, line: 14, baseType: !77, size: 32, align: 32, offset: 1152)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !445, file: !471, line: 15, baseType: !90, size: 64, align: 64, offset: 1216)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !445, file: !471, line: 17, baseType: !131, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !445, file: !471, line: 18, baseType: !131, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !445, file: !471, line: 19, baseType: !131, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !445, file: !471, line: 20, baseType: !131, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !445, file: !471, line: 22, baseType: !131, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !445, file: !471, line: 23, baseType: !131, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !445, file: !471, line: 24, baseType: !131, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !445, file: !471, line: 25, baseType: !131, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !445, file: !471, line: 26, baseType: !131, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !445, file: !471, line: 31, baseType: !493, size: 64, align: 64, offset: 1344)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64, align: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!90, !443}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !72, file: !76, line: 70, baseType: !497, size: 64, align: 64, offset: 2048)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64, align: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{!500, !69, !416}
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64, align: 64)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !71, line: 110, baseType: !502)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !503, line: 15, size: 960, align: 64, elements: !504)
!503 = !DIFile(filename: "queries.h", directory: "/home/lichi/Desktop/irssi/task1")
!504 = !{!505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !519, !520, !521, !522}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !502, file: !449, line: 3, baseType: !77, size: 32, align: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !502, file: !449, line: 4, baseType: !77, size: 32, align: 32, offset: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !502, file: !449, line: 5, baseType: !390, size: 64, align: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !502, file: !449, line: 7, baseType: !210, size: 64, align: 64, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !502, file: !449, line: 8, baseType: !69, size: 64, align: 64, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !502, file: !449, line: 9, baseType: !90, size: 64, align: 64, offset: 256)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !502, file: !449, line: 10, baseType: !90, size: 64, align: 64, offset: 320)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !502, file: !449, line: 11, baseType: !343, size: 64, align: 64, offset: 384)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !502, file: !449, line: 12, baseType: !77, size: 32, align: 32, offset: 448)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !502, file: !449, line: 13, baseType: !90, size: 64, align: 64, offset: 512)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !502, file: !449, line: 15, baseType: !460, size: 64, align: 64, offset: 576)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !502, file: !449, line: 17, baseType: !467, size: 64, align: 64, offset: 640)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !502, file: !518, line: 5, baseType: !90, size: 64, align: 64, offset: 704)
!518 = !DIFile(filename: "query-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!519 = !DIDerivedType(tag: DW_TAG_member, name: "server_tag", scope: !502, file: !518, line: 6, baseType: !90, size: 64, align: 64, offset: 768)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "last_unread_msg", scope: !502, file: !518, line: 7, baseType: !343, size: 64, align: 64, offset: 832)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "unwanted", scope: !502, file: !518, line: 9, baseType: !131, size: 1, align: 32, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !502, file: !518, line: 11, baseType: !131, size: 1, align: 32, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !72, file: !76, line: 71, baseType: !524, size: 64, align: 64, offset: 2112)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64, align: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{!77, !416, !416}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !72, file: !76, line: 73, baseType: !524, size: 64, align: 64, offset: 2176)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "GInputFunction", file: !71, line: 60, baseType: !529)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64, align: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{null, !210, !148, !77}
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !533, line: 9, baseType: !534)
!533 = !DIFile(filename: "signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64, align: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{null, !537, !537, !537, !537, !537, !537}
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64, align: 64)
!538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!539 = !{!540, !542}
!540 = distinct !DIGlobalVariable(name: "servers", scope: !0, file: !541, line: 38, type: !271, isLocal: false, isDefinition: true, variable: %struct._GSList** @servers)
!541 = !DIFile(filename: "servers.c", directory: "/home/lichi/Desktop/irssi/task1")
!542 = distinct !DIGlobalVariable(name: "lookup_servers", scope: !0, file: !541, line: 38, type: !271, isLocal: false, isDefinition: true, variable: %struct._GSList** @lookup_servers)
!543 = !{i32 2, !"Dwarf Version", i32 4}
!544 = !{i32 2, !"Debug Info Version", i32 3}
!545 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!546 = distinct !DISubprogram(name: "server_connect_failed", scope: !541, file: !541, line: 41, type: !547, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !549)
!547 = !DISubroutineType(types: !548)
!548 = !{null, !69, !416}
!549 = !{}
!550 = !DILocalVariable(name: "server", arg: 1, scope: !546, file: !541, line: 41, type: !69)
!551 = !DIExpression()
!552 = !DILocation(line: 41, column: 40, scope: !546)
!553 = !DILocalVariable(name: "msg", arg: 2, scope: !546, file: !541, line: 41, type: !416)
!554 = !DILocation(line: 41, column: 60, scope: !546)
!555 = !DILocation(line: 43, column: 2, scope: !546)
!556 = distinct !{!556, !555}
!557 = !DILocation(line: 43, column: 45, scope: !558)
!558 = !DILexicalBlockFile(scope: !559, file: !541, discriminator: 1)
!559 = distinct !DILexicalBlock(scope: !560, file: !541, line: 43, column: 10)
!560 = distinct !DILexicalBlock(scope: !546, file: !541, line: 43, column: 4)
!561 = !DILocation(line: 43, column: 27, scope: !558)
!562 = !DILocation(line: 43, column: 12, scope: !558)
!563 = !DILocation(line: 43, column: 10, scope: !558)
!564 = !DILocation(line: 43, column: 11, scope: !565)
!565 = !DILexicalBlockFile(scope: !559, file: !541, discriminator: 2)
!566 = !DILocation(line: 43, column: 10, scope: !567)
!567 = !DILexicalBlockFile(scope: !560, file: !541, discriminator: 3)
!568 = !DILocation(line: 43, column: 33, scope: !569)
!569 = !DILexicalBlockFile(scope: !570, file: !541, discriminator: 4)
!570 = distinct !DILexicalBlock(scope: !559, file: !541, line: 43, column: 31)
!571 = !DILocation(line: 43, column: 42, scope: !572)
!572 = !DILexicalBlockFile(scope: !573, file: !541, discriminator: 5)
!573 = distinct !DILexicalBlock(scope: !559, file: !541, line: 43, column: 40)
!574 = !DILocation(line: 43, column: 132, scope: !572)
!575 = !DILocation(line: 43, column: 143, scope: !576)
!576 = !DILexicalBlockFile(scope: !560, file: !541, discriminator: 6)
!577 = !DILocation(line: 45, column: 34, scope: !546)
!578 = !DILocation(line: 45, column: 50, scope: !546)
!579 = !DILocation(line: 45, column: 19, scope: !546)
!580 = !DILocation(line: 45, column: 17, scope: !546)
!581 = !DILocation(line: 47, column: 42, scope: !546)
!582 = !DILocation(line: 47, column: 50, scope: !546)
!583 = !DILocation(line: 47, column: 2, scope: !546)
!584 = !DILocation(line: 49, column: 6, scope: !585)
!585 = distinct !DILexicalBlock(scope: !546, file: !541, line: 49, column: 6)
!586 = !DILocation(line: 49, column: 14, scope: !585)
!587 = !DILocation(line: 49, column: 26, scope: !585)
!588 = !DILocation(line: 49, column: 6, scope: !546)
!589 = !DILocation(line: 50, column: 19, scope: !590)
!590 = distinct !DILexicalBlock(scope: !585, file: !541, line: 49, column: 33)
!591 = !DILocation(line: 50, column: 27, scope: !590)
!592 = !DILocation(line: 50, column: 3, scope: !590)
!593 = !DILocation(line: 51, column: 3, scope: !590)
!594 = !DILocation(line: 51, column: 11, scope: !590)
!595 = !DILocation(line: 51, column: 23, scope: !590)
!596 = !DILocation(line: 52, column: 2, scope: !590)
!597 = !DILocation(line: 53, column: 6, scope: !598)
!598 = distinct !DILexicalBlock(scope: !546, file: !541, line: 53, column: 6)
!599 = !DILocation(line: 53, column: 14, scope: !598)
!600 = !DILocation(line: 53, column: 21, scope: !598)
!601 = !DILocation(line: 53, column: 6, scope: !546)
!602 = !DILocation(line: 54, column: 26, scope: !603)
!603 = distinct !DILexicalBlock(scope: !598, file: !541, line: 53, column: 29)
!604 = !DILocation(line: 54, column: 34, scope: !603)
!605 = !DILocation(line: 54, column: 3, scope: !603)
!606 = !DILocation(line: 55, column: 3, scope: !603)
!607 = !DILocation(line: 55, column: 11, scope: !603)
!608 = !DILocation(line: 55, column: 18, scope: !603)
!609 = !DILocation(line: 56, column: 2, scope: !603)
!610 = !DILocation(line: 58, column: 6, scope: !611)
!611 = distinct !DILexicalBlock(scope: !546, file: !541, line: 58, column: 6)
!612 = !DILocation(line: 58, column: 14, scope: !611)
!613 = !DILocation(line: 58, column: 30, scope: !611)
!614 = !DILocation(line: 58, column: 6, scope: !546)
!615 = !DILocation(line: 59, column: 25, scope: !616)
!616 = distinct !DILexicalBlock(scope: !611, file: !541, line: 58, column: 38)
!617 = !DILocation(line: 59, column: 33, scope: !616)
!618 = !DILocation(line: 59, column: 3, scope: !616)
!619 = !DILocation(line: 60, column: 22, scope: !616)
!620 = !DILocation(line: 60, column: 30, scope: !616)
!621 = !DILocation(line: 60, column: 3, scope: !616)
!622 = !DILocation(line: 61, column: 25, scope: !616)
!623 = !DILocation(line: 61, column: 33, scope: !616)
!624 = !DILocation(line: 61, column: 3, scope: !616)
!625 = !DILocation(line: 62, column: 22, scope: !616)
!626 = !DILocation(line: 62, column: 30, scope: !616)
!627 = !DILocation(line: 62, column: 3, scope: !616)
!628 = !DILocation(line: 63, column: 3, scope: !616)
!629 = !DILocation(line: 63, column: 11, scope: !616)
!630 = !DILocation(line: 63, column: 27, scope: !616)
!631 = !DILocation(line: 64, column: 3, scope: !616)
!632 = !DILocation(line: 64, column: 11, scope: !616)
!633 = !DILocation(line: 64, column: 27, scope: !616)
!634 = !DILocation(line: 65, column: 2, scope: !616)
!635 = !DILocation(line: 67, column: 15, scope: !546)
!636 = !DILocation(line: 67, column: 2, scope: !546)
!637 = !DILocation(line: 68, column: 1, scope: !546)
!638 = !DILocation(line: 68, column: 1, scope: !639)
!639 = !DILexicalBlockFile(scope: !546, file: !541, discriminator: 1)
!640 = distinct !DISubprogram(name: "server_unref", scope: !541, file: !541, line: 501, type: !641, isLocal: false, isDefinition: true, scopeLine: 502, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !549)
!641 = !DISubroutineType(types: !642)
!642 = !{!77, !69}
!643 = !DILocalVariable(name: "server", arg: 1, scope: !640, file: !541, line: 501, type: !69)
!644 = !DILocation(line: 501, column: 30, scope: !640)
!645 = !DILocalVariable(name: "chans", scope: !640, file: !541, line: 503, type: !77)
!646 = !DILocation(line: 503, column: 6, scope: !640)
!647 = !DILocation(line: 505, column: 2, scope: !640)
!648 = distinct !{!648, !647}
!649 = !DILocation(line: 505, column: 45, scope: !650)
!650 = !DILexicalBlockFile(scope: !651, file: !541, discriminator: 1)
!651 = distinct !DILexicalBlock(scope: !652, file: !541, line: 505, column: 10)
!652 = distinct !DILexicalBlock(scope: !640, file: !541, line: 505, column: 4)
!653 = !DILocation(line: 505, column: 27, scope: !650)
!654 = !DILocation(line: 505, column: 12, scope: !650)
!655 = !DILocation(line: 505, column: 10, scope: !650)
!656 = !DILocation(line: 505, column: 11, scope: !657)
!657 = !DILexicalBlockFile(scope: !651, file: !541, discriminator: 2)
!658 = !DILocation(line: 505, column: 10, scope: !659)
!659 = !DILexicalBlockFile(scope: !652, file: !541, discriminator: 3)
!660 = !DILocation(line: 505, column: 33, scope: !661)
!661 = !DILexicalBlockFile(scope: !662, file: !541, discriminator: 4)
!662 = distinct !DILexicalBlock(scope: !651, file: !541, line: 505, column: 31)
!663 = !DILocation(line: 505, column: 42, scope: !664)
!664 = !DILexicalBlockFile(scope: !665, file: !541, discriminator: 5)
!665 = distinct !DILexicalBlock(scope: !651, file: !541, line: 505, column: 40)
!666 = !DILocation(line: 505, column: 132, scope: !664)
!667 = !DILocation(line: 505, column: 149, scope: !668)
!668 = !DILexicalBlockFile(scope: !652, file: !541, discriminator: 6)
!669 = !DILocation(line: 507, column: 8, scope: !670)
!670 = distinct !DILexicalBlock(scope: !640, file: !541, line: 507, column: 6)
!671 = !DILocation(line: 507, column: 16, scope: !670)
!672 = !DILocation(line: 507, column: 6, scope: !670)
!673 = !DILocation(line: 507, column: 25, scope: !670)
!674 = !DILocation(line: 507, column: 6, scope: !640)
!675 = !DILocation(line: 508, column: 3, scope: !670)
!676 = !DILocation(line: 510, column: 19, scope: !677)
!677 = distinct !DILexicalBlock(scope: !640, file: !541, line: 510, column: 6)
!678 = !DILocation(line: 510, column: 28, scope: !677)
!679 = !DILocation(line: 510, column: 6, scope: !677)
!680 = !DILocation(line: 510, column: 36, scope: !677)
!681 = !DILocation(line: 510, column: 6, scope: !640)
!682 = !DILocation(line: 511, column: 3, scope: !683)
!683 = distinct !DILexicalBlock(scope: !677, file: !541, line: 510, column: 44)
!684 = !DILocation(line: 512, column: 21, scope: !683)
!685 = !DILocation(line: 512, column: 3, scope: !683)
!686 = !DILocation(line: 513, column: 3, scope: !683)
!687 = !DILocation(line: 517, column: 33, scope: !640)
!688 = !DILocation(line: 517, column: 10, scope: !640)
!689 = !DILocation(line: 517, column: 8, scope: !640)
!690 = !DILocation(line: 522, column: 6, scope: !691)
!691 = distinct !DILexicalBlock(scope: !640, file: !541, line: 522, column: 6)
!692 = !DILocation(line: 522, column: 14, scope: !691)
!693 = !DILocation(line: 522, column: 6, scope: !640)
!694 = !DILocation(line: 523, column: 38, scope: !695)
!695 = distinct !DILexicalBlock(scope: !691, file: !541, line: 522, column: 28)
!696 = !DILocation(line: 523, column: 3, scope: !695)
!697 = !DILocation(line: 524, column: 2, scope: !695)
!698 = !DILocation(line: 526, column: 6, scope: !699)
!699 = distinct !DILexicalBlock(scope: !640, file: !541, line: 526, column: 6)
!700 = !DILocation(line: 526, column: 14, scope: !699)
!701 = !DILocation(line: 526, column: 21, scope: !699)
!702 = !DILocation(line: 526, column: 6, scope: !640)
!703 = !DILocation(line: 527, column: 8, scope: !704)
!704 = distinct !DILexicalBlock(scope: !705, file: !541, line: 527, column: 7)
!705 = distinct !DILexicalBlock(scope: !699, file: !541, line: 526, column: 29)
!706 = !DILocation(line: 527, column: 14, scope: !704)
!707 = !DILocation(line: 527, column: 17, scope: !708)
!708 = !DILexicalBlockFile(scope: !704, file: !541, discriminator: 1)
!709 = !DILocation(line: 527, column: 25, scope: !708)
!710 = !DILocation(line: 527, column: 7, scope: !708)
!711 = !DILocation(line: 528, column: 27, scope: !704)
!712 = !DILocation(line: 528, column: 35, scope: !704)
!713 = !DILocation(line: 528, column: 4, scope: !704)
!714 = !DILocation(line: 533, column: 47, scope: !715)
!715 = distinct !DILexicalBlock(scope: !704, file: !541, line: 529, column: 8)
!716 = !DILocation(line: 533, column: 55, scope: !715)
!717 = !DILocation(line: 533, column: 25, scope: !715)
!718 = !DILocation(line: 533, column: 4, scope: !719)
!719 = !DILexicalBlockFile(scope: !715, file: !541, discriminator: 1)
!720 = !DILocation(line: 534, column: 27, scope: !715)
!721 = !DILocation(line: 534, column: 35, scope: !715)
!722 = !DILocation(line: 534, column: 4, scope: !715)
!723 = !DILocation(line: 536, column: 3, scope: !705)
!724 = !DILocation(line: 536, column: 11, scope: !705)
!725 = !DILocation(line: 536, column: 18, scope: !705)
!726 = !DILocation(line: 537, column: 2, scope: !705)
!727 = !DILocation(line: 539, column: 31, scope: !640)
!728 = !DILocation(line: 539, column: 40, scope: !640)
!729 = !DILocation(line: 539, column: 9, scope: !640)
!730 = !DILocation(line: 540, column: 23, scope: !640)
!731 = !DILocation(line: 540, column: 31, scope: !640)
!732 = !DILocation(line: 540, column: 2, scope: !640)
!733 = !DILocation(line: 541, column: 6, scope: !734)
!734 = distinct !DILexicalBlock(scope: !640, file: !541, line: 541, column: 6)
!735 = !DILocation(line: 541, column: 14, scope: !734)
!736 = !DILocation(line: 541, column: 21, scope: !734)
!737 = !DILocation(line: 541, column: 6, scope: !640)
!738 = !DILocation(line: 541, column: 44, scope: !739)
!739 = !DILexicalBlockFile(scope: !734, file: !541, discriminator: 1)
!740 = !DILocation(line: 541, column: 52, scope: !739)
!741 = !DILocation(line: 541, column: 29, scope: !739)
!742 = !DILocation(line: 542, column: 9, scope: !640)
!743 = !DILocation(line: 542, column: 17, scope: !640)
!744 = !DILocation(line: 542, column: 2, scope: !640)
!745 = !DILocation(line: 543, column: 9, scope: !640)
!746 = !DILocation(line: 543, column: 17, scope: !640)
!747 = !DILocation(line: 543, column: 2, scope: !640)
!748 = !DILocation(line: 544, column: 9, scope: !640)
!749 = !DILocation(line: 544, column: 17, scope: !640)
!750 = !DILocation(line: 544, column: 2, scope: !640)
!751 = !DILocation(line: 545, column: 9, scope: !640)
!752 = !DILocation(line: 545, column: 17, scope: !640)
!753 = !DILocation(line: 545, column: 2, scope: !640)
!754 = !DILocation(line: 547, column: 2, scope: !640)
!755 = !DILocation(line: 547, column: 10, scope: !640)
!756 = !DILocation(line: 547, column: 15, scope: !640)
!757 = !DILocation(line: 548, column: 9, scope: !640)
!758 = !DILocation(line: 548, column: 2, scope: !640)
!759 = !DILocation(line: 549, column: 9, scope: !640)
!760 = !DILocation(line: 550, column: 1, scope: !640)
!761 = distinct !DISubprogram(name: "server_connect_finished", scope: !541, file: !541, line: 142, type: !762, isLocal: false, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !549)
!762 = !DISubroutineType(types: !763)
!763 = !{null, !69}
!764 = !DILocalVariable(name: "server", arg: 1, scope: !761, file: !541, line: 142, type: !69)
!765 = !DILocation(line: 142, column: 42, scope: !761)
!766 = !DILocation(line: 144, column: 25, scope: !761)
!767 = !DILocation(line: 144, column: 2, scope: !761)
!768 = !DILocation(line: 144, column: 10, scope: !761)
!769 = !DILocation(line: 144, column: 23, scope: !761)
!770 = !DILocation(line: 146, column: 27, scope: !761)
!771 = !DILocation(line: 146, column: 36, scope: !761)
!772 = !DILocation(line: 146, column: 12, scope: !761)
!773 = !DILocation(line: 146, column: 10, scope: !761)
!774 = !DILocation(line: 147, column: 37, scope: !761)
!775 = !DILocation(line: 147, column: 2, scope: !761)
!776 = !DILocation(line: 148, column: 1, scope: !761)
!777 = distinct !DISubprogram(name: "server_connect", scope: !541, file: !541, line: 340, type: !778, isLocal: false, isDefinition: true, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !549)
!778 = !DISubroutineType(types: !779)
!779 = !{!69, !81}
!780 = !DILocalVariable(name: "conn", arg: 1, scope: !777, file: !541, line: 340, type: !81)
!781 = !DILocation(line: 340, column: 48, scope: !777)
!782 = !DILocalVariable(name: "proto", scope: !777, file: !541, line: 342, type: !783)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64, align: 64)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAT_PROTOCOL_REC", file: !71, line: 105, baseType: !785)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHAT_PROTOCOL_REC", file: !786, line: 4, size: 832, align: 64, elements: !787)
!786 = !DIFile(filename: "chat-protocols.h", directory: "/home/lichi/Desktop/irssi/task1")
!787 = !{!788, !789, !790, !791, !792, !793, !794, !801, !840, !847, !851, !855, !857, !859, !863}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !785, file: !786, line: 5, baseType: !77, size: 32, align: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "not_initialized", scope: !785, file: !786, line: 7, baseType: !131, size: 1, align: 32, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "case_insensitive", scope: !785, file: !786, line: 8, baseType: !131, size: 1, align: 32, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !785, file: !786, line: 10, baseType: !90, size: 64, align: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "fullname", scope: !785, file: !786, line: 11, baseType: !90, size: 64, align: 64, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !785, file: !786, line: 12, baseType: !90, size: 64, align: 64, offset: 192)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "create_chatnet", scope: !785, file: !786, line: 14, baseType: !795, size: 64, align: 64, offset: 256)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64, align: 64)
!796 = !DISubroutineType(types: !797)
!797 = !{!798}
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64, align: 64)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHATNET_REC", file: !71, line: 106, baseType: !800)
!800 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CHATNET_REC", file: !71, line: 106, flags: DIFlagFwdDecl)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "create_server_setup", scope: !785, file: !786, line: 15, baseType: !802, size: 64, align: 64, offset: 320)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64, align: 64)
!803 = !DISubroutineType(types: !804)
!804 = !{!805}
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64, align: 64)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_SETUP_REC", file: !71, line: 114, baseType: !807)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_SETUP_REC", file: !808, line: 13, size: 1408, align: 64, elements: !809)
!808 = !DIFile(filename: "servers-setup.h", directory: "/home/lichi/Desktop/irssi/task1")
!809 = !{!810, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !807, file: !811, line: 1, baseType: !77, size: 32, align: 32)
!811 = !DIFile(filename: "server-setup-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!812 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !807, file: !811, line: 2, baseType: !77, size: 32, align: 32, offset: 32)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !807, file: !811, line: 4, baseType: !90, size: 64, align: 64, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !807, file: !811, line: 6, baseType: !97, size: 16, align: 16, offset: 128)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !807, file: !811, line: 7, baseType: !90, size: 64, align: 64, offset: 192)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !807, file: !811, line: 8, baseType: !77, size: 32, align: 32, offset: 256)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !807, file: !811, line: 9, baseType: !90, size: 64, align: 64, offset: 320)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !807, file: !811, line: 11, baseType: !77, size: 32, align: 32, offset: 384)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !807, file: !811, line: 12, baseType: !90, size: 64, align: 64, offset: 448)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !807, file: !811, line: 14, baseType: !90, size: 64, align: 64, offset: 512)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !807, file: !811, line: 15, baseType: !90, size: 64, align: 64, offset: 576)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !807, file: !811, line: 16, baseType: !90, size: 64, align: 64, offset: 640)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !807, file: !811, line: 17, baseType: !90, size: 64, align: 64, offset: 704)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !807, file: !811, line: 18, baseType: !90, size: 64, align: 64, offset: 768)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !807, file: !811, line: 19, baseType: !90, size: 64, align: 64, offset: 832)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !807, file: !811, line: 20, baseType: !90, size: 64, align: 64, offset: 896)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !807, file: !811, line: 21, baseType: !90, size: 64, align: 64, offset: 960)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "own_host", scope: !807, file: !811, line: 23, baseType: !90, size: 64, align: 64, offset: 1024)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !807, file: !811, line: 24, baseType: !103, size: 64, align: 64, offset: 1088)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !807, file: !811, line: 24, baseType: !103, size: 64, align: 64, offset: 1152)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "last_connect", scope: !807, file: !811, line: 26, baseType: !343, size: 64, align: 64, offset: 1216)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "autoconnect", scope: !807, file: !811, line: 28, baseType: !131, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "no_proxy", scope: !807, file: !811, line: 29, baseType: !131, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "last_failed", scope: !807, file: !811, line: 30, baseType: !131, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !807, file: !811, line: 31, baseType: !131, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !807, file: !811, line: 32, baseType: !131, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !807, file: !811, line: 33, baseType: !131, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !807, file: !811, line: 34, baseType: !131, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !807, file: !811, line: 36, baseType: !390, size: 64, align: 64, offset: 1344)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "create_channel_setup", scope: !785, file: !786, line: 16, baseType: !841, size: 64, align: 64, offset: 384)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64, align: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!844}
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64, align: 64)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_SETUP_REC", file: !71, line: 115, baseType: !846)
!846 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_SETUP_REC", file: !71, line: 115, flags: DIFlagFwdDecl)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "create_server_connect", scope: !785, file: !786, line: 17, baseType: !848, size: 64, align: 64, offset: 448)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64, align: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{!81}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_server_connect", scope: !785, file: !786, line: 18, baseType: !852, size: 64, align: 64, offset: 512)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64, align: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{null, !81}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "server_init_connect", scope: !785, file: !786, line: 20, baseType: !856, size: 64, align: 64, offset: 576)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64, align: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "server_connect", scope: !785, file: !786, line: 21, baseType: !858, size: 64, align: 64, offset: 640)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64, align: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "channel_create", scope: !785, file: !786, line: 22, baseType: !860, size: 64, align: 64, offset: 704)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64, align: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!443, !69, !416, !416, !77}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "query_create", scope: !785, file: !786, line: 24, baseType: !864, size: 64, align: 64, offset: 768)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64, align: 64)
!865 = !DISubroutineType(types: !866)
!866 = !{!500, !416, !416, !77}
!867 = !DILocation(line: 342, column: 21, scope: !777)
!868 = !DILocalVariable(name: "server", scope: !777, file: !541, line: 343, type: !69)
!869 = !DILocation(line: 343, column: 14, scope: !777)
!870 = !DILocation(line: 345, column: 12, scope: !777)
!871 = !DILocation(line: 345, column: 18, scope: !777)
!872 = !DILocation(line: 345, column: 11, scope: !777)
!873 = !DILocation(line: 345, column: 11, scope: !874)
!874 = !DILexicalBlockFile(scope: !777, file: !541, discriminator: 1)
!875 = !DILocation(line: 345, column: 64, scope: !876)
!876 = !DILexicalBlockFile(scope: !777, file: !541, discriminator: 2)
!877 = !DILocation(line: 345, column: 71, scope: !876)
!878 = !DILocation(line: 345, column: 41, scope: !876)
!879 = !DILocation(line: 345, column: 11, scope: !876)
!880 = !DILocation(line: 345, column: 11, scope: !881)
!881 = !DILexicalBlockFile(scope: !777, file: !541, discriminator: 3)
!882 = !DILocation(line: 345, column: 8, scope: !881)
!883 = !DILocation(line: 346, column: 11, scope: !777)
!884 = !DILocation(line: 346, column: 18, scope: !777)
!885 = !DILocation(line: 346, column: 38, scope: !777)
!886 = !DILocation(line: 346, column: 9, scope: !777)
!887 = !DILocation(line: 347, column: 2, scope: !777)
!888 = !DILocation(line: 347, column: 9, scope: !777)
!889 = !DILocation(line: 347, column: 24, scope: !777)
!890 = !DILocation(line: 349, column: 9, scope: !777)
!891 = !DILocation(line: 349, column: 2, scope: !777)
!892 = distinct !DISubprogram(name: "server_connect_init", scope: !541, file: !541, line: 353, type: !762, isLocal: false, isDefinition: true, scopeLine: 354, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !549)
!893 = !DILocalVariable(name: "server", arg: 1, scope: !892, file: !541, line: 353, type: !69)
!894 = !DILocation(line: 353, column: 38, scope: !892)
!895 = !DILocalVariable(name: "str", scope: !892, file: !541, line: 355, type: !416)
!896 = !DILocation(line: 355, column: 14, scope: !892)
!897 = !DILocation(line: 357, column: 2, scope: !892)
!898 = distinct !{!898, !897}
!899 = !DILocation(line: 357, column: 10, scope: !900)
!900 = !DILexicalBlockFile(scope: !901, file: !541, discriminator: 1)
!901 = distinct !DILexicalBlock(scope: !902, file: !541, line: 357, column: 10)
!902 = distinct !DILexicalBlock(scope: !892, file: !541, line: 357, column: 4)
!903 = !DILocation(line: 357, column: 17, scope: !900)
!904 = !DILocation(line: 357, column: 5, scope: !905)
!905 = !DILexicalBlockFile(scope: !906, file: !541, discriminator: 2)
!906 = distinct !DILexicalBlock(scope: !901, file: !541, line: 357, column: 3)
!907 = !DILocation(line: 357, column: 14, scope: !908)
!908 = !DILexicalBlockFile(scope: !909, file: !541, discriminator: 3)
!909 = distinct !DILexicalBlock(scope: !901, file: !541, line: 357, column: 12)
!910 = !DILocation(line: 357, column: 101, scope: !908)
!911 = !DILocation(line: 357, column: 112, scope: !912)
!912 = !DILexicalBlockFile(scope: !902, file: !541, discriminator: 4)
!913 = !DILocation(line: 359, column: 26, scope: !892)
!914 = !DILocation(line: 359, column: 3, scope: !892)
!915 = !DILocation(line: 359, column: 12, scope: !892)
!916 = !DILocation(line: 359, column: 24, scope: !892)
!917 = !DILocation(line: 360, column: 17, scope: !892)
!918 = !DILocation(line: 360, column: 2, scope: !892)
!919 = !DILocation(line: 360, column: 10, scope: !892)
!920 = !DILocation(line: 360, column: 15, scope: !892)
!921 = !DILocation(line: 361, column: 13, scope: !892)
!922 = !DILocation(line: 361, column: 2, scope: !892)
!923 = !DILocation(line: 363, column: 26, scope: !892)
!924 = !DILocation(line: 363, column: 34, scope: !892)
!925 = !DILocation(line: 363, column: 43, scope: !892)
!926 = !DILocation(line: 363, column: 17, scope: !892)
!927 = !DILocation(line: 363, column: 2, scope: !892)
!928 = !DILocation(line: 363, column: 10, scope: !892)
!929 = !DILocation(line: 363, column: 15, scope: !892)
!930 = !DILocation(line: 364, column: 6, scope: !931)
!931 = distinct !DILexicalBlock(scope: !892, file: !541, line: 364, column: 6)
!932 = !DILocation(line: 364, column: 14, scope: !931)
!933 = !DILocation(line: 364, column: 23, scope: !931)
!934 = !DILocation(line: 364, column: 32, scope: !931)
!935 = !DILocation(line: 364, column: 39, scope: !931)
!936 = !DILocation(line: 364, column: 43, scope: !937)
!937 = !DILexicalBlockFile(scope: !931, file: !541, discriminator: 1)
!938 = !DILocation(line: 364, column: 51, scope: !937)
!939 = !DILocation(line: 364, column: 60, scope: !937)
!940 = !DILocation(line: 364, column: 42, scope: !937)
!941 = !DILocation(line: 364, column: 69, scope: !937)
!942 = !DILocation(line: 364, column: 6, scope: !937)
!943 = !DILocation(line: 365, column: 10, scope: !944)
!944 = distinct !DILexicalBlock(scope: !931, file: !541, line: 364, column: 78)
!945 = !DILocation(line: 365, column: 18, scope: !944)
!946 = !DILocation(line: 365, column: 27, scope: !944)
!947 = !DILocation(line: 365, column: 3, scope: !944)
!948 = !DILocation(line: 367, column: 9, scope: !944)
!949 = !DILocation(line: 367, column: 7, scope: !944)
!950 = !DILocation(line: 368, column: 8, scope: !951)
!951 = distinct !DILexicalBlock(scope: !944, file: !541, line: 368, column: 7)
!952 = !DILocation(line: 368, column: 7, scope: !951)
!953 = !DILocation(line: 368, column: 12, scope: !951)
!954 = !DILocation(line: 368, column: 7, scope: !944)
!955 = !DILocation(line: 368, column: 25, scope: !956)
!956 = !DILexicalBlockFile(scope: !951, file: !541, discriminator: 1)
!957 = !DILocation(line: 368, column: 21, scope: !956)
!958 = !DILocation(line: 369, column: 40, scope: !944)
!959 = !DILocation(line: 369, column: 31, scope: !944)
!960 = !DILocation(line: 369, column: 3, scope: !944)
!961 = !DILocation(line: 369, column: 11, scope: !944)
!962 = !DILocation(line: 369, column: 20, scope: !944)
!963 = !DILocation(line: 369, column: 29, scope: !944)
!964 = !DILocation(line: 370, column: 2, scope: !944)
!965 = !DILocation(line: 371, column: 6, scope: !966)
!966 = distinct !DILexicalBlock(scope: !892, file: !541, line: 371, column: 6)
!967 = !DILocation(line: 371, column: 14, scope: !966)
!968 = !DILocation(line: 371, column: 23, scope: !966)
!969 = !DILocation(line: 371, column: 32, scope: !966)
!970 = !DILocation(line: 371, column: 39, scope: !966)
!971 = !DILocation(line: 371, column: 43, scope: !972)
!972 = !DILexicalBlockFile(scope: !966, file: !541, discriminator: 1)
!973 = !DILocation(line: 371, column: 51, scope: !972)
!974 = !DILocation(line: 371, column: 60, scope: !972)
!975 = !DILocation(line: 371, column: 42, scope: !972)
!976 = !DILocation(line: 371, column: 69, scope: !972)
!977 = !DILocation(line: 371, column: 6, scope: !972)
!978 = !DILocation(line: 372, column: 10, scope: !979)
!979 = distinct !DILexicalBlock(scope: !966, file: !541, line: 371, column: 78)
!980 = !DILocation(line: 372, column: 18, scope: !979)
!981 = !DILocation(line: 372, column: 27, scope: !979)
!982 = !DILocation(line: 372, column: 3, scope: !979)
!983 = !DILocation(line: 374, column: 9, scope: !979)
!984 = !DILocation(line: 374, column: 7, scope: !979)
!985 = !DILocation(line: 375, column: 8, scope: !986)
!986 = distinct !DILexicalBlock(scope: !979, file: !541, line: 375, column: 7)
!987 = !DILocation(line: 375, column: 7, scope: !986)
!988 = !DILocation(line: 375, column: 12, scope: !986)
!989 = !DILocation(line: 375, column: 7, scope: !979)
!990 = !DILocation(line: 375, column: 27, scope: !991)
!991 = !DILexicalBlockFile(scope: !986, file: !541, discriminator: 1)
!992 = !DILocation(line: 375, column: 35, scope: !991)
!993 = !DILocation(line: 375, column: 44, scope: !991)
!994 = !DILocation(line: 375, column: 25, scope: !991)
!995 = !DILocation(line: 375, column: 21, scope: !991)
!996 = !DILocation(line: 376, column: 40, scope: !979)
!997 = !DILocation(line: 376, column: 31, scope: !979)
!998 = !DILocation(line: 376, column: 3, scope: !979)
!999 = !DILocation(line: 376, column: 11, scope: !979)
!1000 = !DILocation(line: 376, column: 20, scope: !979)
!1001 = !DILocation(line: 376, column: 29, scope: !979)
!1002 = !DILocation(line: 377, column: 2, scope: !979)
!1003 = !DILocation(line: 379, column: 34, scope: !892)
!1004 = !DILocation(line: 379, column: 42, scope: !892)
!1005 = !DILocation(line: 379, column: 16, scope: !892)
!1006 = !DILocation(line: 379, column: 2, scope: !892)
!1007 = !DILocation(line: 379, column: 10, scope: !892)
!1008 = !DILocation(line: 379, column: 14, scope: !892)
!1009 = !DILocation(line: 380, column: 2, scope: !892)
!1010 = !DILocation(line: 380, column: 10, scope: !892)
!1011 = !DILocation(line: 380, column: 22, scope: !892)
!1012 = !DILocation(line: 381, column: 1, scope: !892)
!1013 = !DILocation(line: 381, column: 1, scope: !1014)
!1014 = !DILexicalBlockFile(scope: !892, file: !541, discriminator: 1)
!1015 = distinct !DISubprogram(name: "server_ref", scope: !541, file: !541, line: 494, type: !762, isLocal: false, isDefinition: true, scopeLine: 495, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !549)
!1016 = !DILocalVariable(name: "server", arg: 1, scope: !1015, file: !541, line: 494, type: !69)
!1017 = !DILocation(line: 494, column: 29, scope: !1015)
!1018 = !DILocation(line: 496, column: 2, scope: !1015)
!1019 = distinct !{!1019, !1018}
!1020 = !DILocation(line: 496, column: 45, scope: !1021)
!1021 = !DILexicalBlockFile(scope: !1022, file: !541, discriminator: 1)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !541, line: 496, column: 10)
!1023 = distinct !DILexicalBlock(scope: !1015, file: !541, line: 496, column: 4)
!1024 = !DILocation(line: 496, column: 27, scope: !1021)
!1025 = !DILocation(line: 496, column: 12, scope: !1021)
!1026 = !DILocation(line: 496, column: 10, scope: !1021)
!1027 = !DILocation(line: 496, column: 11, scope: !1028)
!1028 = !DILexicalBlockFile(scope: !1022, file: !541, discriminator: 2)
!1029 = !DILocation(line: 496, column: 10, scope: !1030)
!1030 = !DILexicalBlockFile(scope: !1023, file: !541, discriminator: 3)
!1031 = !DILocation(line: 496, column: 33, scope: !1032)
!1032 = !DILexicalBlockFile(scope: !1033, file: !541, discriminator: 4)
!1033 = distinct !DILexicalBlock(scope: !1022, file: !541, line: 496, column: 31)
!1034 = !DILocation(line: 496, column: 42, scope: !1035)
!1035 = !DILexicalBlockFile(scope: !1036, file: !541, discriminator: 5)
!1036 = distinct !DILexicalBlock(scope: !1022, file: !541, line: 496, column: 40)
!1037 = !DILocation(line: 496, column: 132, scope: !1035)
!1038 = !DILocation(line: 496, column: 143, scope: !1039)
!1039 = !DILexicalBlockFile(scope: !1023, file: !541, discriminator: 6)
!1040 = !DILocation(line: 498, column: 2, scope: !1015)
!1041 = !DILocation(line: 498, column: 10, scope: !1015)
!1042 = !DILocation(line: 498, column: 18, scope: !1015)
!1043 = !DILocation(line: 499, column: 1, scope: !1015)
!1044 = !DILocation(line: 499, column: 1, scope: !1045)
!1045 = !DILexicalBlockFile(scope: !1015, file: !541, discriminator: 1)
!1046 = distinct !DISubprogram(name: "server_create_tag", scope: !541, file: !541, line: 100, type: !1047, isLocal: true, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !549)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!90, !81}
!1049 = !DILocalVariable(name: "conn", arg: 1, scope: !1046, file: !541, line: 100, type: !81)
!1050 = !DILocation(line: 100, column: 52, scope: !1046)
!1051 = !DILocalVariable(name: "str", scope: !1046, file: !541, line: 102, type: !310)
!1052 = !DILocation(line: 102, column: 11, scope: !1046)
!1053 = !DILocalVariable(name: "tag", scope: !1046, file: !541, line: 103, type: !90)
!1054 = !DILocation(line: 103, column: 8, scope: !1046)
!1055 = !DILocalVariable(name: "num", scope: !1046, file: !541, line: 104, type: !77)
!1056 = !DILocation(line: 104, column: 6, scope: !1046)
!1057 = !DILocation(line: 106, column: 2, scope: !1046)
!1058 = distinct !{!1058, !1057}
!1059 = !DILocation(line: 106, column: 53, scope: !1060)
!1060 = !DILexicalBlockFile(scope: !1061, file: !541, discriminator: 1)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !541, line: 106, column: 10)
!1062 = distinct !DILexicalBlock(scope: !1046, file: !541, line: 106, column: 4)
!1063 = !DILocation(line: 106, column: 35, scope: !1060)
!1064 = !DILocation(line: 106, column: 12, scope: !1060)
!1065 = !DILocation(line: 106, column: 10, scope: !1060)
!1066 = !DILocation(line: 106, column: 11, scope: !1067)
!1067 = !DILexicalBlockFile(scope: !1061, file: !541, discriminator: 2)
!1068 = !DILocation(line: 106, column: 10, scope: !1069)
!1069 = !DILexicalBlockFile(scope: !1062, file: !541, discriminator: 3)
!1070 = !DILocation(line: 106, column: 41, scope: !1071)
!1071 = !DILexicalBlockFile(scope: !1072, file: !541, discriminator: 4)
!1072 = distinct !DILexicalBlock(scope: !1061, file: !541, line: 106, column: 39)
!1073 = !DILocation(line: 106, column: 50, scope: !1074)
!1074 = !DILexicalBlockFile(scope: !1075, file: !541, discriminator: 5)
!1075 = distinct !DILexicalBlock(scope: !1061, file: !541, line: 106, column: 48)
!1076 = !DILocation(line: 106, column: 146, scope: !1074)
!1077 = !DILocation(line: 106, column: 7, scope: !1078)
!1078 = !DILexicalBlockFile(scope: !1062, file: !541, discriminator: 6)
!1079 = !DILocation(line: 108, column: 8, scope: !1046)
!1080 = !DILocation(line: 108, column: 14, scope: !1046)
!1081 = !DILocation(line: 108, column: 22, scope: !1046)
!1082 = !DILocation(line: 108, column: 29, scope: !1046)
!1083 = !DILocation(line: 108, column: 33, scope: !1084)
!1084 = !DILexicalBlockFile(scope: !1046, file: !541, discriminator: 1)
!1085 = !DILocation(line: 108, column: 39, scope: !1084)
!1086 = !DILocation(line: 108, column: 32, scope: !1084)
!1087 = !DILocation(line: 108, column: 47, scope: !1084)
!1088 = !DILocation(line: 108, column: 8, scope: !1084)
!1089 = !DILocation(line: 109, column: 12, scope: !1046)
!1090 = !DILocation(line: 109, column: 18, scope: !1046)
!1091 = !DILocation(line: 109, column: 3, scope: !1046)
!1092 = !DILocation(line: 108, column: 8, scope: !1093)
!1093 = !DILexicalBlockFile(scope: !1046, file: !541, discriminator: 2)
!1094 = !DILocation(line: 110, column: 29, scope: !1046)
!1095 = !DILocation(line: 110, column: 35, scope: !1046)
!1096 = !DILocation(line: 110, column: 3, scope: !1046)
!1097 = !DILocation(line: 108, column: 8, scope: !1098)
!1098 = !DILexicalBlockFile(scope: !1046, file: !541, discriminator: 3)
!1099 = !DILocation(line: 108, column: 8, scope: !1100)
!1100 = !DILexicalBlockFile(scope: !1046, file: !541, discriminator: 4)
!1101 = !DILocation(line: 108, column: 6, scope: !1100)
!1102 = !DILocation(line: 112, column: 6, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1046, file: !541, line: 112, column: 6)
!1104 = !DILocation(line: 112, column: 12, scope: !1103)
!1105 = !DILocation(line: 112, column: 16, scope: !1103)
!1106 = !DILocation(line: 112, column: 23, scope: !1103)
!1107 = !DILocation(line: 112, column: 42, scope: !1108)
!1108 = !DILexicalBlockFile(scope: !1103, file: !541, discriminator: 1)
!1109 = !DILocation(line: 112, column: 48, scope: !1108)
!1110 = !DILocation(line: 112, column: 26, scope: !1108)
!1111 = !DILocation(line: 112, column: 53, scope: !1108)
!1112 = !DILocation(line: 112, column: 61, scope: !1108)
!1113 = !DILocation(line: 113, column: 36, scope: !1103)
!1114 = !DILocation(line: 113, column: 42, scope: !1103)
!1115 = !DILocation(line: 113, column: 13, scope: !1103)
!1116 = !DILocation(line: 113, column: 47, scope: !1103)
!1117 = !DILocation(line: 113, column: 54, scope: !1103)
!1118 = !DILocation(line: 114, column: 14, scope: !1103)
!1119 = !DILocation(line: 114, column: 20, scope: !1103)
!1120 = !DILocation(line: 114, column: 25, scope: !1103)
!1121 = !DILocation(line: 114, column: 37, scope: !1103)
!1122 = !DILocation(line: 114, column: 30, scope: !1103)
!1123 = !DILocation(line: 114, column: 6, scope: !1108)
!1124 = !DILocation(line: 114, column: 43, scope: !1103)
!1125 = !DILocation(line: 112, column: 6, scope: !1093)
!1126 = !DILocation(line: 120, column: 10, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1103, file: !541, line: 114, column: 49)
!1128 = !DILocation(line: 120, column: 3, scope: !1127)
!1129 = !DILocation(line: 121, column: 19, scope: !1127)
!1130 = !DILocation(line: 121, column: 25, scope: !1127)
!1131 = !DILocation(line: 121, column: 10, scope: !1127)
!1132 = !DILocation(line: 121, column: 3, scope: !1127)
!1133 = !DILocation(line: 126, column: 21, scope: !1046)
!1134 = !DILocation(line: 126, column: 8, scope: !1046)
!1135 = !DILocation(line: 126, column: 6, scope: !1046)
!1136 = !DILocation(line: 128, column: 6, scope: !1046)
!1137 = !DILocation(line: 129, column: 2, scope: !1046)
!1138 = !DILocation(line: 129, column: 25, scope: !1084)
!1139 = !DILocation(line: 129, column: 30, scope: !1084)
!1140 = !DILocation(line: 129, column: 9, scope: !1084)
!1141 = !DILocation(line: 129, column: 35, scope: !1084)
!1142 = !DILocation(line: 129, column: 42, scope: !1084)
!1143 = !DILocation(line: 130, column: 32, scope: !1046)
!1144 = !DILocation(line: 130, column: 37, scope: !1046)
!1145 = !DILocation(line: 130, column: 9, scope: !1046)
!1146 = !DILocation(line: 130, column: 42, scope: !1046)
!1147 = !DILocation(line: 129, column: 42, scope: !1093)
!1148 = !DILocation(line: 129, column: 2, scope: !1098)
!1149 = !DILocation(line: 131, column: 19, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1046, file: !541, line: 130, column: 50)
!1151 = !DILocation(line: 131, column: 32, scope: !1150)
!1152 = !DILocation(line: 131, column: 37, scope: !1150)
!1153 = !DILocation(line: 131, column: 3, scope: !1150)
!1154 = !DILocation(line: 132, column: 6, scope: !1150)
!1155 = !DILocation(line: 129, column: 2, scope: !1100)
!1156 = distinct !{!1156, !1137}
!1157 = !DILocation(line: 134, column: 9, scope: !1046)
!1158 = !DILocation(line: 134, column: 2, scope: !1046)
!1159 = !DILocation(line: 136, column: 8, scope: !1046)
!1160 = !DILocation(line: 136, column: 13, scope: !1046)
!1161 = !DILocation(line: 136, column: 6, scope: !1046)
!1162 = !DILocation(line: 137, column: 16, scope: !1046)
!1163 = !DILocation(line: 137, column: 2, scope: !1046)
!1164 = !DILocation(line: 138, column: 9, scope: !1046)
!1165 = !DILocation(line: 138, column: 2, scope: !1046)
!1166 = !DILocation(line: 139, column: 1, scope: !1046)
!1167 = distinct !DISubprogram(name: "server_start_connect", scope: !541, file: !541, line: 384, type: !641, isLocal: false, isDefinition: true, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !549)
!1168 = !DILocalVariable(name: "server", arg: 1, scope: !1167, file: !541, line: 384, type: !69)
!1169 = !DILocation(line: 384, column: 38, scope: !1167)
!1170 = !DILocalVariable(name: "connect_address", scope: !1167, file: !541, line: 386, type: !416)
!1171 = !DILocation(line: 386, column: 14, scope: !1167)
!1172 = !DILocalVariable(name: "fd", scope: !1167, file: !541, line: 387, type: !1173)
!1173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 64, align: 32, elements: !375)
!1174 = !DILocation(line: 387, column: 13, scope: !1167)
!1175 = !DILocation(line: 389, column: 2, scope: !1167)
!1176 = distinct !{!1176, !1175}
!1177 = !DILocation(line: 389, column: 10, scope: !1178)
!1178 = !DILexicalBlockFile(scope: !1179, file: !541, discriminator: 1)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !541, line: 389, column: 10)
!1180 = distinct !DILexicalBlock(scope: !1167, file: !541, line: 389, column: 4)
!1181 = !DILocation(line: 389, column: 17, scope: !1178)
!1182 = !DILocation(line: 389, column: 5, scope: !1183)
!1183 = !DILexicalBlockFile(scope: !1184, file: !541, discriminator: 2)
!1184 = distinct !DILexicalBlock(scope: !1179, file: !541, line: 389, column: 3)
!1185 = !DILocation(line: 389, column: 14, scope: !1186)
!1186 = !DILexicalBlockFile(scope: !1187, file: !541, discriminator: 3)
!1187 = distinct !DILexicalBlock(scope: !1179, file: !541, line: 389, column: 12)
!1188 = !DILocation(line: 389, column: 101, scope: !1186)
!1189 = !DILocation(line: 389, column: 118, scope: !1190)
!1190 = !DILexicalBlockFile(scope: !1180, file: !541, discriminator: 4)
!1191 = !DILocation(line: 390, column: 7, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1167, file: !541, line: 390, column: 6)
!1193 = !DILocation(line: 390, column: 15, scope: !1192)
!1194 = !DILocation(line: 390, column: 24, scope: !1192)
!1195 = !DILocation(line: 390, column: 36, scope: !1192)
!1196 = !DILocation(line: 390, column: 39, scope: !1197)
!1197 = !DILexicalBlockFile(scope: !1192, file: !541, discriminator: 1)
!1198 = !DILocation(line: 390, column: 47, scope: !1197)
!1199 = !DILocation(line: 390, column: 56, scope: !1197)
!1200 = !DILocation(line: 390, column: 61, scope: !1197)
!1201 = !DILocation(line: 390, column: 6, scope: !1197)
!1202 = !DILocation(line: 391, column: 3, scope: !1192)
!1203 = !DILocation(line: 393, column: 19, scope: !1167)
!1204 = !DILocation(line: 393, column: 2, scope: !1167)
!1205 = !DILocation(line: 393, column: 10, scope: !1167)
!1206 = !DILocation(line: 393, column: 17, scope: !1167)
!1207 = !DILocation(line: 395, column: 6, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1167, file: !541, line: 395, column: 6)
!1209 = !DILocation(line: 395, column: 14, scope: !1208)
!1210 = !DILocation(line: 395, column: 23, scope: !1208)
!1211 = !DILocation(line: 395, column: 38, scope: !1208)
!1212 = !DILocation(line: 395, column: 6, scope: !1167)
!1213 = !DILocalVariable(name: "handle", scope: !1214, file: !541, line: 397, type: !148)
!1214 = distinct !DILexicalBlock(scope: !1208, file: !541, line: 395, column: 46)
!1215 = !DILocation(line: 397, column: 15, scope: !1214)
!1216 = !DILocation(line: 397, column: 24, scope: !1214)
!1217 = !DILocation(line: 397, column: 32, scope: !1214)
!1218 = !DILocation(line: 397, column: 41, scope: !1214)
!1219 = !DILocation(line: 399, column: 3, scope: !1214)
!1220 = !DILocation(line: 399, column: 11, scope: !1214)
!1221 = !DILocation(line: 399, column: 20, scope: !1214)
!1222 = !DILocation(line: 399, column: 35, scope: !1214)
!1223 = !DILocation(line: 400, column: 42, scope: !1214)
!1224 = !DILocation(line: 400, column: 20, scope: !1214)
!1225 = !DILocation(line: 400, column: 3, scope: !1214)
!1226 = !DILocation(line: 400, column: 11, scope: !1214)
!1227 = !DILocation(line: 400, column: 18, scope: !1214)
!1228 = !DILocation(line: 401, column: 27, scope: !1214)
!1229 = !DILocation(line: 401, column: 3, scope: !1214)
!1230 = !DILocation(line: 402, column: 2, scope: !1214)
!1231 = !DILocation(line: 402, column: 13, scope: !1232)
!1232 = !DILexicalBlockFile(scope: !1233, file: !541, discriminator: 1)
!1233 = distinct !DILexicalBlock(scope: !1208, file: !541, line: 402, column: 13)
!1234 = !DILocation(line: 402, column: 21, scope: !1232)
!1235 = !DILocation(line: 402, column: 30, scope: !1232)
!1236 = !DILocation(line: 404, column: 23, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1233, file: !541, line: 402, column: 43)
!1238 = !DILocation(line: 404, column: 36, scope: !1237)
!1239 = !DILocation(line: 404, column: 44, scope: !1237)
!1240 = !DILocation(line: 404, column: 53, scope: !1237)
!1241 = !DILocation(line: 404, column: 3, scope: !1237)
!1242 = !DILocation(line: 405, column: 2, scope: !1237)
!1243 = !DILocation(line: 407, column: 12, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1245, file: !541, line: 407, column: 7)
!1245 = distinct !DILexicalBlock(scope: !1233, file: !541, line: 405, column: 9)
!1246 = !DILocation(line: 407, column: 7, scope: !1244)
!1247 = !DILocation(line: 407, column: 16, scope: !1244)
!1248 = !DILocation(line: 407, column: 7, scope: !1245)
!1249 = !DILocation(line: 408, column: 4, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1244, file: !541, line: 407, column: 22)
!1251 = !DILocation(line: 409, column: 11, scope: !1250)
!1252 = !DILocation(line: 409, column: 19, scope: !1250)
!1253 = !DILocation(line: 409, column: 4, scope: !1250)
!1254 = !DILocation(line: 410, column: 11, scope: !1250)
!1255 = !DILocation(line: 410, column: 19, scope: !1250)
!1256 = !DILocation(line: 410, column: 4, scope: !1250)
!1257 = !DILocation(line: 411, column: 4, scope: !1250)
!1258 = !DILocation(line: 414, column: 46, scope: !1245)
!1259 = !DILocation(line: 414, column: 29, scope: !1245)
!1260 = !DILocation(line: 414, column: 3, scope: !1245)
!1261 = !DILocation(line: 414, column: 11, scope: !1245)
!1262 = !DILocation(line: 414, column: 27, scope: !1245)
!1263 = !DILocation(line: 415, column: 46, scope: !1245)
!1264 = !DILocation(line: 415, column: 29, scope: !1245)
!1265 = !DILocation(line: 415, column: 3, scope: !1245)
!1266 = !DILocation(line: 415, column: 11, scope: !1245)
!1267 = !DILocation(line: 415, column: 27, scope: !1245)
!1268 = !DILocation(line: 417, column: 21, scope: !1245)
!1269 = !DILocation(line: 417, column: 29, scope: !1245)
!1270 = !DILocation(line: 417, column: 38, scope: !1245)
!1271 = !DILocation(line: 417, column: 44, scope: !1245)
!1272 = !DILocation(line: 418, column: 4, scope: !1245)
!1273 = !DILocation(line: 418, column: 12, scope: !1245)
!1274 = !DILocation(line: 418, column: 21, scope: !1245)
!1275 = !DILocation(line: 417, column: 21, scope: !1276)
!1276 = !DILexicalBlockFile(scope: !1245, file: !541, discriminator: 1)
!1277 = !DILocation(line: 418, column: 29, scope: !1276)
!1278 = !DILocation(line: 418, column: 37, scope: !1276)
!1279 = !DILocation(line: 418, column: 46, scope: !1276)
!1280 = !DILocation(line: 417, column: 21, scope: !1281)
!1281 = !DILexicalBlockFile(scope: !1245, file: !541, discriminator: 2)
!1282 = !DILocation(line: 417, column: 21, scope: !1283)
!1283 = !DILexicalBlockFile(scope: !1245, file: !541, discriminator: 3)
!1284 = !DILocation(line: 417, column: 19, scope: !1283)
!1285 = !DILocation(line: 420, column: 31, scope: !1245)
!1286 = !DILocation(line: 421, column: 10, scope: !1245)
!1287 = !DILocation(line: 421, column: 18, scope: !1245)
!1288 = !DILocation(line: 422, column: 10, scope: !1245)
!1289 = !DILocation(line: 420, column: 4, scope: !1245)
!1290 = !DILocation(line: 419, column: 3, scope: !1245)
!1291 = !DILocation(line: 419, column: 11, scope: !1245)
!1292 = !DILocation(line: 419, column: 23, scope: !1245)
!1293 = !DILocation(line: 424, column: 16, scope: !1245)
!1294 = !DILocation(line: 424, column: 24, scope: !1245)
!1295 = !DILocation(line: 427, column: 9, scope: !1245)
!1296 = !DILocation(line: 424, column: 4, scope: !1245)
!1297 = !DILocation(line: 423, column: 3, scope: !1245)
!1298 = !DILocation(line: 423, column: 11, scope: !1245)
!1299 = !DILocation(line: 423, column: 23, scope: !1245)
!1300 = !DILocation(line: 429, column: 26, scope: !1245)
!1301 = !DILocation(line: 429, column: 3, scope: !1245)
!1302 = !DILocation(line: 429, column: 11, scope: !1245)
!1303 = !DILocation(line: 429, column: 24, scope: !1245)
!1304 = !DILocation(line: 430, column: 35, scope: !1245)
!1305 = !DILocation(line: 430, column: 51, scope: !1245)
!1306 = !DILocation(line: 430, column: 20, scope: !1245)
!1307 = !DILocation(line: 430, column: 18, scope: !1245)
!1308 = !DILocation(line: 432, column: 36, scope: !1245)
!1309 = !DILocation(line: 432, column: 3, scope: !1245)
!1310 = !DILocation(line: 434, column: 2, scope: !1167)
!1311 = !DILocation(line: 435, column: 1, scope: !1167)
!1312 = distinct !DISubprogram(name: "server_real_connect", scope: !541, file: !541, line: 201, type: !1313, isLocal: true, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !549)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{null, !69, !103, !416}
!1315 = !DILocalVariable(name: "server", arg: 1, scope: !1312, file: !541, line: 201, type: !69)
!1316 = !DILocation(line: 201, column: 45, scope: !1312)
!1317 = !DILocalVariable(name: "ip", arg: 2, scope: !1312, file: !541, line: 201, type: !103)
!1318 = !DILocation(line: 201, column: 61, scope: !1312)
!1319 = !DILocalVariable(name: "unix_socket", arg: 3, scope: !1312, file: !541, line: 202, type: !416)
!1320 = !DILocation(line: 202, column: 17, scope: !1312)
!1321 = !DILocalVariable(name: "handle", scope: !1312, file: !541, line: 204, type: !148)
!1322 = !DILocation(line: 204, column: 14, scope: !1312)
!1323 = !DILocalVariable(name: "own_ip", scope: !1312, file: !541, line: 205, type: !103)
!1324 = !DILocation(line: 205, column: 10, scope: !1312)
!1325 = !DILocalVariable(name: "errmsg", scope: !1312, file: !541, line: 206, type: !416)
!1326 = !DILocation(line: 206, column: 14, scope: !1312)
!1327 = !DILocalVariable(name: "errmsg2", scope: !1312, file: !541, line: 207, type: !90)
!1328 = !DILocation(line: 207, column: 8, scope: !1312)
!1329 = !DILocalVariable(name: "ipaddr", scope: !1312, file: !541, line: 208, type: !1330)
!1330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 368, align: 8, elements: !1331)
!1331 = !{!1332}
!1332 = !DISubrange(count: 46)
!1333 = !DILocation(line: 208, column: 7, scope: !1312)
!1334 = !DILocalVariable(name: "port", scope: !1312, file: !541, line: 209, type: !77)
!1335 = !DILocation(line: 209, column: 13, scope: !1312)
!1336 = !DILocation(line: 211, column: 2, scope: !1312)
!1337 = distinct !{!1337, !1336}
!1338 = !DILocation(line: 211, column: 10, scope: !1339)
!1339 = !DILexicalBlockFile(scope: !1340, file: !541, discriminator: 1)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !541, line: 211, column: 10)
!1341 = distinct !DILexicalBlock(scope: !1312, file: !541, line: 211, column: 4)
!1342 = !DILocation(line: 211, column: 13, scope: !1339)
!1343 = !DILocation(line: 211, column: 1, scope: !1339)
!1344 = !DILocation(line: 211, column: 4, scope: !1345)
!1345 = !DILexicalBlockFile(scope: !1340, file: !541, discriminator: 2)
!1346 = !DILocation(line: 211, column: 16, scope: !1345)
!1347 = !DILocation(line: 211, column: 10, scope: !1345)
!1348 = !DILocation(line: 211, column: 5, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !1350, file: !541, discriminator: 3)
!1350 = distinct !DILexicalBlock(scope: !1340, file: !541, line: 211, column: 3)
!1351 = !DILocation(line: 211, column: 14, scope: !1352)
!1352 = !DILexicalBlockFile(scope: !1353, file: !541, discriminator: 4)
!1353 = distinct !DILexicalBlock(scope: !1340, file: !541, line: 211, column: 12)
!1354 = !DILocation(line: 211, column: 120, scope: !1352)
!1355 = !DILocation(line: 211, column: 131, scope: !1356)
!1356 = !DILexicalBlockFile(scope: !1341, file: !541, discriminator: 5)
!1357 = !DILocation(line: 213, column: 38, scope: !1312)
!1358 = !DILocation(line: 213, column: 46, scope: !1312)
!1359 = !DILocation(line: 213, column: 2, scope: !1312)
!1360 = !DILocation(line: 215, column: 6, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1312, file: !541, line: 215, column: 6)
!1362 = !DILocation(line: 215, column: 14, scope: !1361)
!1363 = !DILocation(line: 215, column: 23, scope: !1361)
!1364 = !DILocation(line: 215, column: 6, scope: !1312)
!1365 = !DILocation(line: 216, column: 3, scope: !1361)
!1366 = !DILocation(line: 218, column: 6, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1312, file: !541, line: 218, column: 6)
!1368 = !DILocation(line: 218, column: 9, scope: !1367)
!1369 = !DILocation(line: 218, column: 6, scope: !1312)
!1370 = !DILocation(line: 219, column: 14, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1367, file: !541, line: 218, column: 17)
!1372 = !DILocation(line: 219, column: 19, scope: !1371)
!1373 = !DILocation(line: 219, column: 13, scope: !1371)
!1374 = !DILocation(line: 219, column: 26, scope: !1371)
!1375 = !DILocation(line: 219, column: 12, scope: !1371)
!1376 = !DILocation(line: 219, column: 15, scope: !1377)
!1377 = !DILexicalBlockFile(scope: !1371, file: !541, discriminator: 1)
!1378 = !DILocation(line: 219, column: 23, scope: !1377)
!1379 = !DILocation(line: 219, column: 32, scope: !1377)
!1380 = !DILocation(line: 219, column: 12, scope: !1377)
!1381 = !DILocation(line: 219, column: 42, scope: !1382)
!1382 = !DILexicalBlockFile(scope: !1371, file: !541, discriminator: 2)
!1383 = !DILocation(line: 219, column: 50, scope: !1382)
!1384 = !DILocation(line: 219, column: 59, scope: !1382)
!1385 = !DILocation(line: 219, column: 12, scope: !1382)
!1386 = !DILocation(line: 219, column: 12, scope: !1387)
!1387 = !DILexicalBlockFile(scope: !1371, file: !541, discriminator: 3)
!1388 = !DILocation(line: 219, column: 10, scope: !1387)
!1389 = !DILocation(line: 220, column: 10, scope: !1371)
!1390 = !DILocation(line: 220, column: 18, scope: !1371)
!1391 = !DILocation(line: 220, column: 27, scope: !1371)
!1392 = !DILocation(line: 220, column: 33, scope: !1371)
!1393 = !DILocation(line: 221, column: 4, scope: !1371)
!1394 = !DILocation(line: 221, column: 12, scope: !1371)
!1395 = !DILocation(line: 221, column: 21, scope: !1371)
!1396 = !DILocation(line: 220, column: 10, scope: !1377)
!1397 = !DILocation(line: 221, column: 34, scope: !1377)
!1398 = !DILocation(line: 221, column: 42, scope: !1377)
!1399 = !DILocation(line: 221, column: 51, scope: !1377)
!1400 = !DILocation(line: 220, column: 10, scope: !1382)
!1401 = !DILocation(line: 220, column: 10, scope: !1387)
!1402 = !DILocation(line: 220, column: 8, scope: !1387)
!1403 = !DILocation(line: 222, column: 12, scope: !1371)
!1404 = !DILocation(line: 222, column: 20, scope: !1371)
!1405 = !DILocation(line: 222, column: 29, scope: !1371)
!1406 = !DILocation(line: 223, column: 23, scope: !1371)
!1407 = !DILocation(line: 223, column: 27, scope: !1371)
!1408 = !DILocation(line: 223, column: 33, scope: !1371)
!1409 = !DILocation(line: 223, column: 41, scope: !1371)
!1410 = !DILocation(line: 223, column: 4, scope: !1371)
!1411 = !DILocation(line: 222, column: 12, scope: !1377)
!1412 = !DILocation(line: 223, column: 66, scope: !1377)
!1413 = !DILocation(line: 223, column: 70, scope: !1377)
!1414 = !DILocation(line: 223, column: 76, scope: !1377)
!1415 = !DILocation(line: 223, column: 51, scope: !1377)
!1416 = !DILocation(line: 222, column: 12, scope: !1382)
!1417 = !DILocation(line: 222, column: 12, scope: !1387)
!1418 = !DILocation(line: 222, column: 10, scope: !1387)
!1419 = !DILocation(line: 224, column: 2, scope: !1371)
!1420 = !DILocation(line: 225, column: 29, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1367, file: !541, line: 224, column: 9)
!1422 = !DILocation(line: 225, column: 12, scope: !1421)
!1423 = !DILocation(line: 225, column: 10, scope: !1421)
!1424 = !DILocation(line: 228, column: 6, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1312, file: !541, line: 228, column: 6)
!1426 = !DILocation(line: 228, column: 13, scope: !1425)
!1427 = !DILocation(line: 228, column: 6, scope: !1312)
!1428 = !DILocation(line: 230, column: 24, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1425, file: !541, line: 228, column: 21)
!1430 = !DILocation(line: 230, column: 23, scope: !1429)
!1431 = !DILocation(line: 230, column: 12, scope: !1432)
!1432 = !DILexicalBlockFile(scope: !1429, file: !541, discriminator: 1)
!1433 = !DILocation(line: 230, column: 10, scope: !1429)
!1434 = !DILocation(line: 231, column: 11, scope: !1429)
!1435 = !DILocation(line: 232, column: 8, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1429, file: !541, line: 232, column: 6)
!1437 = !DILocation(line: 232, column: 7, scope: !1436)
!1438 = !DILocation(line: 232, column: 12, scope: !1436)
!1439 = !DILocation(line: 232, column: 6, scope: !1429)
!1440 = !DILocation(line: 233, column: 8, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !541, line: 233, column: 8)
!1442 = distinct !DILexicalBlock(scope: !1436, file: !541, line: 232, column: 30)
!1443 = !DILocation(line: 233, column: 15, scope: !1441)
!1444 = !DILocation(line: 233, column: 8, scope: !1442)
!1445 = !DILocation(line: 235, column: 17, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1441, file: !541, line: 233, column: 23)
!1447 = !DILocation(line: 235, column: 25, scope: !1446)
!1448 = !DILocation(line: 235, column: 5, scope: !1446)
!1449 = !DILocation(line: 236, column: 27, scope: !1446)
!1450 = !DILocation(line: 236, column: 41, scope: !1446)
!1451 = !DILocation(line: 236, column: 15, scope: !1446)
!1452 = !DILocation(line: 236, column: 13, scope: !1446)
!1453 = !DILocation(line: 237, column: 4, scope: !1446)
!1454 = !DILocation(line: 238, column: 4, scope: !1442)
!1455 = !DILocation(line: 238, column: 12, scope: !1442)
!1456 = !DILocation(line: 238, column: 25, scope: !1442)
!1457 = !DILocation(line: 239, column: 3, scope: !1442)
!1458 = !DILocation(line: 240, column: 7, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1429, file: !541, line: 240, column: 7)
!1460 = !DILocation(line: 240, column: 15, scope: !1459)
!1461 = !DILocation(line: 240, column: 24, scope: !1459)
!1462 = !DILocation(line: 240, column: 32, scope: !1459)
!1463 = !DILocation(line: 240, column: 36, scope: !1464)
!1464 = !DILexicalBlockFile(scope: !1459, file: !541, discriminator: 1)
!1465 = !DILocation(line: 240, column: 35, scope: !1464)
!1466 = !DILocation(line: 240, column: 40, scope: !1464)
!1467 = !DILocation(line: 240, column: 7, scope: !1464)
!1468 = !DILocation(line: 241, column: 4, scope: !1459)
!1469 = !DILocation(line: 241, column: 12, scope: !1459)
!1470 = !DILocation(line: 241, column: 25, scope: !1459)
!1471 = !DILocation(line: 243, column: 3, scope: !1429)
!1472 = !DILocation(line: 243, column: 11, scope: !1429)
!1473 = !DILocation(line: 243, column: 27, scope: !1429)
!1474 = !DILocation(line: 244, column: 25, scope: !1429)
!1475 = !DILocation(line: 244, column: 33, scope: !1429)
!1476 = !DILocation(line: 244, column: 43, scope: !1432)
!1477 = !DILocation(line: 244, column: 33, scope: !1432)
!1478 = !DILocation(line: 244, column: 53, scope: !1479)
!1479 = !DILexicalBlockFile(scope: !1429, file: !541, discriminator: 2)
!1480 = !DILocation(line: 244, column: 33, scope: !1479)
!1481 = !DILocation(line: 244, column: 33, scope: !1482)
!1482 = !DILexicalBlockFile(scope: !1429, file: !541, discriminator: 3)
!1483 = !DILocation(line: 244, column: 3, scope: !1482)
!1484 = !DILocation(line: 245, column: 10, scope: !1429)
!1485 = !DILocation(line: 245, column: 3, scope: !1429)
!1486 = !DILocation(line: 246, column: 2, scope: !1429)
!1487 = !DILocation(line: 247, column: 42, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1425, file: !541, line: 246, column: 9)
!1489 = !DILocation(line: 247, column: 20, scope: !1488)
!1490 = !DILocation(line: 247, column: 3, scope: !1488)
!1491 = !DILocation(line: 247, column: 11, scope: !1488)
!1492 = !DILocation(line: 247, column: 18, scope: !1488)
!1493 = !DILocation(line: 248, column: 7, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1488, file: !541, line: 248, column: 7)
!1495 = !DILocation(line: 248, column: 15, scope: !1494)
!1496 = !DILocation(line: 248, column: 24, scope: !1494)
!1497 = !DILocation(line: 248, column: 7, scope: !1488)
!1498 = !DILocation(line: 249, column: 37, scope: !1494)
!1499 = !DILocation(line: 249, column: 45, scope: !1494)
!1500 = !DILocation(line: 249, column: 4, scope: !1494)
!1501 = !DILocation(line: 252, column: 16, scope: !1494)
!1502 = !DILocation(line: 255, column: 9, scope: !1494)
!1503 = !DILocation(line: 252, column: 4, scope: !1494)
!1504 = !DILocation(line: 251, column: 3, scope: !1494)
!1505 = !DILocation(line: 251, column: 11, scope: !1494)
!1506 = !DILocation(line: 251, column: 23, scope: !1494)
!1507 = !DILocation(line: 257, column: 1, scope: !1312)
!1508 = distinct !DISubprogram(name: "server_connect_callback_readpipe", scope: !541, file: !541, line: 259, type: !762, isLocal: true, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !549)
!1509 = !DILocalVariable(name: "server", arg: 1, scope: !1508, file: !541, line: 259, type: !69)
!1510 = !DILocation(line: 259, column: 58, scope: !1508)
!1511 = !DILocalVariable(name: "iprec", scope: !1508, file: !541, line: 261, type: !1512)
!1512 = !DIDerivedType(tag: DW_TAG_typedef, name: "RESOLVED_IP_REC", file: !1513, line: 13, baseType: !1514)
!1513 = !DIFile(filename: "net-nonblock.h", directory: "/home/lichi/Desktop/irssi/task1")
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1513, line: 6, size: 576, align: 64, elements: !1515)
!1515 = !{!1516, !1517, !1518, !1519, !1520, !1521, !1522}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "ip4", scope: !1514, file: !1513, line: 7, baseType: !104, size: 160, align: 32)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "ip6", scope: !1514, file: !1513, line: 7, baseType: !104, size: 160, align: 32, offset: 160)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !1514, file: !1513, line: 8, baseType: !77, size: 32, align: 32, offset: 320)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "errlen", scope: !1514, file: !1513, line: 9, baseType: !77, size: 32, align: 32, offset: 352)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "errorstr", scope: !1514, file: !1513, line: 10, baseType: !90, size: 64, align: 64, offset: 384)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "host4", scope: !1514, file: !1513, line: 12, baseType: !90, size: 64, align: 64, offset: 448)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "host6", scope: !1514, file: !1513, line: 12, baseType: !90, size: 64, align: 64, offset: 512)
!1523 = !DILocation(line: 261, column: 18, scope: !1508)
!1524 = !DILocalVariable(name: "ip", scope: !1508, file: !541, line: 262, type: !103)
!1525 = !DILocation(line: 262, column: 17, scope: !1508)
!1526 = !DILocalVariable(name: "errormsg", scope: !1508, file: !541, line: 263, type: !416)
!1527 = !DILocation(line: 263, column: 14, scope: !1508)
!1528 = !DILocalVariable(name: "servername", scope: !1508, file: !541, line: 264, type: !90)
!1529 = !DILocation(line: 264, column: 8, scope: !1508)
!1530 = !DILocation(line: 266, column: 18, scope: !1508)
!1531 = !DILocation(line: 266, column: 26, scope: !1508)
!1532 = !DILocation(line: 266, column: 2, scope: !1508)
!1533 = !DILocation(line: 267, column: 2, scope: !1508)
!1534 = !DILocation(line: 267, column: 10, scope: !1508)
!1535 = !DILocation(line: 267, column: 22, scope: !1508)
!1536 = !DILocation(line: 269, column: 27, scope: !1508)
!1537 = !DILocation(line: 269, column: 35, scope: !1508)
!1538 = !DILocation(line: 269, column: 2, scope: !1508)
!1539 = !DILocation(line: 271, column: 24, scope: !1508)
!1540 = !DILocation(line: 271, column: 32, scope: !1508)
!1541 = !DILocation(line: 271, column: 2, scope: !1508)
!1542 = !DILocation(line: 272, column: 21, scope: !1508)
!1543 = !DILocation(line: 272, column: 29, scope: !1508)
!1544 = !DILocation(line: 272, column: 2, scope: !1508)
!1545 = !DILocation(line: 273, column: 24, scope: !1508)
!1546 = !DILocation(line: 273, column: 32, scope: !1508)
!1547 = !DILocation(line: 273, column: 2, scope: !1508)
!1548 = !DILocation(line: 274, column: 21, scope: !1508)
!1549 = !DILocation(line: 274, column: 29, scope: !1508)
!1550 = !DILocation(line: 274, column: 2, scope: !1508)
!1551 = !DILocation(line: 276, column: 2, scope: !1508)
!1552 = !DILocation(line: 276, column: 10, scope: !1508)
!1553 = !DILocation(line: 276, column: 26, scope: !1508)
!1554 = !DILocation(line: 277, column: 2, scope: !1508)
!1555 = !DILocation(line: 277, column: 10, scope: !1508)
!1556 = !DILocation(line: 277, column: 26, scope: !1508)
!1557 = !DILocation(line: 280, column: 12, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1508, file: !541, line: 280, column: 6)
!1559 = !DILocation(line: 280, column: 18, scope: !1558)
!1560 = !DILocation(line: 280, column: 6, scope: !1508)
!1561 = !DILocation(line: 282, column: 6, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1558, file: !541, line: 280, column: 24)
!1563 = !DILocation(line: 283, column: 2, scope: !1562)
!1564 = !DILocation(line: 283, column: 13, scope: !1565)
!1565 = !DILexicalBlockFile(scope: !1566, file: !541, discriminator: 1)
!1566 = distinct !DILexicalBlock(scope: !1558, file: !541, line: 283, column: 13)
!1567 = !DILocation(line: 283, column: 21, scope: !1565)
!1568 = !DILocation(line: 283, column: 30, scope: !1565)
!1569 = !DILocation(line: 283, column: 37, scope: !1565)
!1570 = !DILocation(line: 285, column: 14, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1566, file: !541, line: 283, column: 48)
!1572 = !DILocation(line: 285, column: 18, scope: !1571)
!1573 = !DILocation(line: 285, column: 8, scope: !1571)
!1574 = !DILocation(line: 285, column: 25, scope: !1571)
!1575 = !DILocation(line: 285, column: 8, scope: !1576)
!1576 = !DILexicalBlockFile(scope: !1571, file: !541, discriminator: 1)
!1577 = !DILocation(line: 285, column: 45, scope: !1578)
!1578 = !DILexicalBlockFile(scope: !1571, file: !541, discriminator: 2)
!1579 = !DILocation(line: 285, column: 8, scope: !1578)
!1580 = !DILocation(line: 285, column: 8, scope: !1581)
!1581 = !DILexicalBlockFile(scope: !1571, file: !541, discriminator: 3)
!1582 = !DILocation(line: 285, column: 6, scope: !1581)
!1583 = !DILocation(line: 286, column: 22, scope: !1571)
!1584 = !DILocation(line: 286, column: 14, scope: !1571)
!1585 = !DILocation(line: 287, column: 2, scope: !1571)
!1586 = !DILocation(line: 287, column: 13, scope: !1587)
!1587 = !DILexicalBlockFile(scope: !1588, file: !541, discriminator: 1)
!1588 = distinct !DILexicalBlock(scope: !1566, file: !541, line: 287, column: 13)
!1589 = !DILocation(line: 287, column: 21, scope: !1587)
!1590 = !DILocation(line: 287, column: 30, scope: !1587)
!1591 = !DILocation(line: 287, column: 37, scope: !1587)
!1592 = !DILocation(line: 289, column: 14, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1588, file: !541, line: 287, column: 49)
!1594 = !DILocation(line: 289, column: 18, scope: !1593)
!1595 = !DILocation(line: 289, column: 8, scope: !1593)
!1596 = !DILocation(line: 289, column: 25, scope: !1593)
!1597 = !DILocation(line: 289, column: 8, scope: !1598)
!1598 = !DILexicalBlockFile(scope: !1593, file: !541, discriminator: 1)
!1599 = !DILocation(line: 289, column: 45, scope: !1600)
!1600 = !DILexicalBlockFile(scope: !1593, file: !541, discriminator: 2)
!1601 = !DILocation(line: 289, column: 8, scope: !1600)
!1602 = !DILocation(line: 289, column: 8, scope: !1603)
!1603 = !DILexicalBlockFile(scope: !1593, file: !541, discriminator: 3)
!1604 = !DILocation(line: 289, column: 6, scope: !1603)
!1605 = !DILocation(line: 290, column: 22, scope: !1593)
!1606 = !DILocation(line: 290, column: 14, scope: !1593)
!1607 = !DILocation(line: 291, column: 2, scope: !1593)
!1608 = !DILocation(line: 294, column: 13, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !541, line: 294, column: 7)
!1610 = distinct !DILexicalBlock(scope: !1588, file: !541, line: 291, column: 9)
!1611 = !DILocation(line: 294, column: 17, scope: !1609)
!1612 = !DILocation(line: 294, column: 7, scope: !1609)
!1613 = !DILocation(line: 294, column: 24, scope: !1609)
!1614 = !DILocation(line: 294, column: 29, scope: !1609)
!1615 = !DILocation(line: 295, column: 14, scope: !1609)
!1616 = !DILocation(line: 295, column: 18, scope: !1609)
!1617 = !DILocation(line: 295, column: 8, scope: !1609)
!1618 = !DILocation(line: 295, column: 25, scope: !1609)
!1619 = !DILocation(line: 295, column: 30, scope: !1609)
!1620 = !DILocation(line: 296, column: 8, scope: !1609)
!1621 = !DILocation(line: 294, column: 7, scope: !1622)
!1622 = !DILexicalBlockFile(scope: !1610, file: !541, discriminator: 1)
!1623 = !DILocation(line: 297, column: 16, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1609, file: !541, line: 296, column: 51)
!1625 = !DILocation(line: 297, column: 7, scope: !1624)
!1626 = !DILocation(line: 298, column: 23, scope: !1624)
!1627 = !DILocation(line: 298, column: 15, scope: !1624)
!1628 = !DILocation(line: 299, column: 3, scope: !1624)
!1629 = !DILocation(line: 300, column: 16, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1609, file: !541, line: 299, column: 10)
!1631 = !DILocation(line: 300, column: 7, scope: !1630)
!1632 = !DILocation(line: 301, column: 23, scope: !1630)
!1633 = !DILocation(line: 301, column: 15, scope: !1630)
!1634 = !DILocation(line: 305, column: 6, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1508, file: !541, line: 305, column: 6)
!1636 = !DILocation(line: 305, column: 9, scope: !1635)
!1637 = !DILocation(line: 305, column: 6, scope: !1508)
!1638 = !DILocation(line: 307, column: 7, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !541, line: 307, column: 7)
!1640 = distinct !DILexicalBlock(scope: !1635, file: !541, line: 305, column: 17)
!1641 = !DILocation(line: 307, column: 7, scope: !1640)
!1642 = !DILocation(line: 308, column: 11, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1639, file: !541, line: 307, column: 19)
!1644 = !DILocation(line: 308, column: 19, scope: !1643)
!1645 = !DILocation(line: 308, column: 28, scope: !1643)
!1646 = !DILocation(line: 308, column: 4, scope: !1643)
!1647 = !DILocation(line: 309, column: 40, scope: !1643)
!1648 = !DILocation(line: 309, column: 31, scope: !1643)
!1649 = !DILocation(line: 309, column: 4, scope: !1643)
!1650 = !DILocation(line: 309, column: 12, scope: !1643)
!1651 = !DILocation(line: 309, column: 21, scope: !1643)
!1652 = !DILocation(line: 309, column: 29, scope: !1643)
!1653 = !DILocation(line: 310, column: 3, scope: !1643)
!1654 = !DILocation(line: 311, column: 23, scope: !1640)
!1655 = !DILocation(line: 311, column: 31, scope: !1640)
!1656 = !DILocation(line: 311, column: 3, scope: !1640)
!1657 = !DILocation(line: 312, column: 12, scope: !1640)
!1658 = !DILocation(line: 313, column: 2, scope: !1640)
!1659 = !DILocation(line: 314, column: 13, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !541, line: 314, column: 7)
!1661 = distinct !DILexicalBlock(scope: !1635, file: !541, line: 313, column: 9)
!1662 = !DILocation(line: 314, column: 19, scope: !1660)
!1663 = !DILocation(line: 314, column: 24, scope: !1660)
!1664 = !DILocation(line: 314, column: 56, scope: !1665)
!1665 = !DILexicalBlockFile(scope: !1660, file: !541, discriminator: 1)
!1666 = !DILocation(line: 314, column: 27, scope: !1665)
!1667 = !DILocation(line: 314, column: 7, scope: !1665)
!1668 = !DILocation(line: 317, column: 4, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1660, file: !541, line: 314, column: 64)
!1670 = !DILocation(line: 317, column: 12, scope: !1669)
!1671 = !DILocation(line: 317, column: 22, scope: !1669)
!1672 = !DILocation(line: 318, column: 3, scope: !1669)
!1673 = !DILocation(line: 320, column: 13, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1661, file: !541, line: 320, column: 7)
!1675 = !DILocation(line: 320, column: 19, scope: !1674)
!1676 = !DILocation(line: 320, column: 7, scope: !1661)
!1677 = !DILocation(line: 322, column: 15, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1674, file: !541, line: 320, column: 25)
!1679 = !DILocation(line: 322, column: 23, scope: !1678)
!1680 = !DILocation(line: 322, column: 32, scope: !1678)
!1681 = !DILocation(line: 322, column: 39, scope: !1678)
!1682 = !DILocation(line: 322, column: 13, scope: !1678)
!1683 = !DILocation(line: 325, column: 3, scope: !1678)
!1684 = !DILocation(line: 327, column: 21, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1674, file: !541, line: 325, column: 10)
!1686 = !DILocation(line: 327, column: 30, scope: !1685)
!1687 = !DILocation(line: 327, column: 15, scope: !1685)
!1688 = !DILocation(line: 327, column: 45, scope: !1689)
!1689 = !DILexicalBlockFile(scope: !1685, file: !541, discriminator: 1)
!1690 = !DILocation(line: 327, column: 15, scope: !1689)
!1691 = !DILocation(line: 327, column: 15, scope: !1692)
!1692 = !DILexicalBlockFile(scope: !1685, file: !541, discriminator: 2)
!1693 = !DILocation(line: 327, column: 15, scope: !1694)
!1694 = !DILexicalBlockFile(scope: !1685, file: !541, discriminator: 3)
!1695 = !DILocation(line: 327, column: 13, scope: !1694)
!1696 = !DILocation(line: 331, column: 3, scope: !1661)
!1697 = !DILocation(line: 331, column: 11, scope: !1661)
!1698 = !DILocation(line: 331, column: 27, scope: !1661)
!1699 = !DILocation(line: 332, column: 25, scope: !1661)
!1700 = !DILocation(line: 332, column: 33, scope: !1661)
!1701 = !DILocation(line: 332, column: 3, scope: !1661)
!1702 = !DILocation(line: 335, column: 15, scope: !1508)
!1703 = !DILocation(line: 335, column: 2, scope: !1508)
!1704 = !DILocation(line: 336, column: 15, scope: !1508)
!1705 = !DILocation(line: 336, column: 2, scope: !1508)
!1706 = !DILocation(line: 337, column: 15, scope: !1508)
!1707 = !DILocation(line: 337, column: 2, scope: !1508)
!1708 = !DILocation(line: 338, column: 1, scope: !1508)
!1709 = distinct !DISubprogram(name: "server_disconnect", scope: !541, file: !541, line: 462, type: !762, isLocal: false, isDefinition: true, scopeLine: 463, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !549)
!1710 = !DILocalVariable(name: "server", arg: 1, scope: !1709, file: !541, line: 462, type: !69)
!1711 = !DILocation(line: 462, column: 36, scope: !1709)
!1712 = !DILocation(line: 464, column: 2, scope: !1709)
!1713 = distinct !{!1713, !1712}
!1714 = !DILocation(line: 464, column: 45, scope: !1715)
!1715 = !DILexicalBlockFile(scope: !1716, file: !541, discriminator: 1)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !541, line: 464, column: 10)
!1717 = distinct !DILexicalBlock(scope: !1709, file: !541, line: 464, column: 4)
!1718 = !DILocation(line: 464, column: 27, scope: !1715)
!1719 = !DILocation(line: 464, column: 12, scope: !1715)
!1720 = !DILocation(line: 464, column: 10, scope: !1715)
!1721 = !DILocation(line: 464, column: 11, scope: !1722)
!1722 = !DILexicalBlockFile(scope: !1716, file: !541, discriminator: 2)
!1723 = !DILocation(line: 464, column: 10, scope: !1724)
!1724 = !DILexicalBlockFile(scope: !1717, file: !541, discriminator: 3)
!1725 = !DILocation(line: 464, column: 33, scope: !1726)
!1726 = !DILexicalBlockFile(scope: !1727, file: !541, discriminator: 4)
!1727 = distinct !DILexicalBlock(scope: !1716, file: !541, line: 464, column: 31)
!1728 = !DILocation(line: 464, column: 42, scope: !1729)
!1729 = !DILexicalBlockFile(scope: !1730, file: !541, discriminator: 5)
!1730 = distinct !DILexicalBlock(scope: !1716, file: !541, line: 464, column: 40)
!1731 = !DILocation(line: 464, column: 132, scope: !1729)
!1732 = !DILocation(line: 464, column: 143, scope: !1733)
!1733 = !DILexicalBlockFile(scope: !1717, file: !541, discriminator: 6)
!1734 = !DILocation(line: 466, column: 6, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1709, file: !541, line: 466, column: 6)
!1736 = !DILocation(line: 466, column: 14, scope: !1735)
!1737 = !DILocation(line: 466, column: 6, scope: !1709)
!1738 = !DILocation(line: 467, column: 3, scope: !1735)
!1739 = !DILocation(line: 469, column: 6, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1709, file: !541, line: 469, column: 6)
!1741 = !DILocation(line: 469, column: 14, scope: !1740)
!1742 = !DILocation(line: 469, column: 26, scope: !1740)
!1743 = !DILocation(line: 469, column: 6, scope: !1709)
!1744 = !DILocation(line: 471, column: 7, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !541, line: 471, column: 7)
!1746 = distinct !DILexicalBlock(scope: !1740, file: !541, line: 469, column: 33)
!1747 = !DILocation(line: 471, column: 15, scope: !1745)
!1748 = !DILocation(line: 471, column: 27, scope: !1745)
!1749 = !DILocation(line: 471, column: 7, scope: !1746)
!1750 = !DILocation(line: 472, column: 28, scope: !1745)
!1751 = !DILocation(line: 472, column: 36, scope: !1745)
!1752 = !DILocation(line: 472, column: 4, scope: !1745)
!1753 = !DILocation(line: 473, column: 25, scope: !1746)
!1754 = !DILocation(line: 473, column: 3, scope: !1746)
!1755 = !DILocation(line: 474, column: 3, scope: !1746)
!1756 = !DILocation(line: 477, column: 27, scope: !1709)
!1757 = !DILocation(line: 477, column: 36, scope: !1709)
!1758 = !DILocation(line: 477, column: 12, scope: !1709)
!1759 = !DILocation(line: 477, column: 10, scope: !1709)
!1760 = !DILocation(line: 479, column: 2, scope: !1709)
!1761 = !DILocation(line: 479, column: 10, scope: !1709)
!1762 = !DILocation(line: 479, column: 23, scope: !1709)
!1763 = !DILocation(line: 480, column: 40, scope: !1709)
!1764 = !DILocation(line: 480, column: 2, scope: !1709)
!1765 = !DILocation(line: 486, column: 6, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1709, file: !541, line: 486, column: 6)
!1767 = !DILocation(line: 486, column: 14, scope: !1766)
!1768 = !DILocation(line: 486, column: 22, scope: !1766)
!1769 = !DILocation(line: 486, column: 6, scope: !1709)
!1770 = !DILocation(line: 487, column: 19, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1766, file: !541, line: 486, column: 27)
!1772 = !DILocation(line: 487, column: 27, scope: !1771)
!1773 = !DILocation(line: 487, column: 3, scope: !1771)
!1774 = !DILocation(line: 488, column: 3, scope: !1771)
!1775 = !DILocation(line: 488, column: 11, scope: !1771)
!1776 = !DILocation(line: 488, column: 19, scope: !1771)
!1777 = !DILocation(line: 489, column: 2, scope: !1771)
!1778 = !DILocation(line: 491, column: 15, scope: !1709)
!1779 = !DILocation(line: 491, column: 2, scope: !1709)
!1780 = !DILocation(line: 492, column: 1, scope: !1709)
!1781 = !DILocation(line: 492, column: 1, scope: !1782)
!1782 = !DILexicalBlockFile(scope: !1709, file: !541, discriminator: 1)
!1783 = distinct !DISubprogram(name: "server_remove_channels", scope: !541, file: !541, line: 437, type: !641, isLocal: true, isDefinition: true, scopeLine: 438, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !549)
!1784 = !DILocalVariable(name: "server", arg: 1, scope: !1783, file: !541, line: 437, type: !69)
!1785 = !DILocation(line: 437, column: 47, scope: !1783)
!1786 = !DILocalVariable(name: "tmp", scope: !1783, file: !541, line: 439, type: !271)
!1787 = !DILocation(line: 439, column: 10, scope: !1783)
!1788 = !DILocalVariable(name: "next", scope: !1783, file: !541, line: 439, type: !271)
!1789 = !DILocation(line: 439, column: 16, scope: !1783)
!1790 = !DILocalVariable(name: "found", scope: !1783, file: !541, line: 440, type: !77)
!1791 = !DILocation(line: 440, column: 6, scope: !1783)
!1792 = !DILocation(line: 442, column: 2, scope: !1783)
!1793 = distinct !{!1793, !1792}
!1794 = !DILocation(line: 442, column: 10, scope: !1795)
!1795 = !DILexicalBlockFile(scope: !1796, file: !541, discriminator: 1)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !541, line: 442, column: 10)
!1797 = distinct !DILexicalBlock(scope: !1783, file: !541, line: 442, column: 4)
!1798 = !DILocation(line: 442, column: 17, scope: !1795)
!1799 = !DILocation(line: 442, column: 5, scope: !1800)
!1800 = !DILexicalBlockFile(scope: !1801, file: !541, discriminator: 2)
!1801 = distinct !DILexicalBlock(scope: !1796, file: !541, line: 442, column: 3)
!1802 = !DILocation(line: 442, column: 14, scope: !1803)
!1803 = !DILexicalBlockFile(scope: !1804, file: !541, discriminator: 3)
!1804 = distinct !DILexicalBlock(scope: !1796, file: !541, line: 442, column: 12)
!1805 = !DILocation(line: 442, column: 101, scope: !1803)
!1806 = !DILocation(line: 442, column: 118, scope: !1807)
!1807 = !DILexicalBlockFile(scope: !1797, file: !541, discriminator: 4)
!1808 = !DILocation(line: 444, column: 8, scope: !1783)
!1809 = !DILocation(line: 445, column: 13, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1783, file: !541, line: 445, column: 2)
!1811 = !DILocation(line: 445, column: 21, scope: !1810)
!1812 = !DILocation(line: 445, column: 11, scope: !1810)
!1813 = !DILocation(line: 445, column: 7, scope: !1810)
!1814 = !DILocation(line: 445, column: 31, scope: !1815)
!1815 = !DILexicalBlockFile(scope: !1816, file: !541, discriminator: 1)
!1816 = distinct !DILexicalBlock(scope: !1810, file: !541, line: 445, column: 2)
!1817 = !DILocation(line: 445, column: 35, scope: !1815)
!1818 = !DILocation(line: 445, column: 2, scope: !1815)
!1819 = !DILocalVariable(name: "channel", scope: !1820, file: !541, line: 446, type: !443)
!1820 = distinct !DILexicalBlock(scope: !1816, file: !541, line: 445, column: 55)
!1821 = !DILocation(line: 446, column: 16, scope: !1820)
!1822 = !DILocation(line: 446, column: 26, scope: !1820)
!1823 = !DILocation(line: 446, column: 31, scope: !1820)
!1824 = !DILocation(line: 448, column: 10, scope: !1820)
!1825 = !DILocation(line: 448, column: 15, scope: !1820)
!1826 = !DILocation(line: 448, column: 8, scope: !1820)
!1827 = !DILocation(line: 449, column: 19, scope: !1820)
!1828 = !DILocation(line: 449, column: 3, scope: !1820)
!1829 = !DILocation(line: 450, column: 9, scope: !1820)
!1830 = !DILocation(line: 451, column: 2, scope: !1820)
!1831 = !DILocation(line: 445, column: 49, scope: !1832)
!1832 = !DILexicalBlockFile(scope: !1816, file: !541, discriminator: 2)
!1833 = !DILocation(line: 445, column: 47, scope: !1832)
!1834 = !DILocation(line: 445, column: 2, scope: !1832)
!1835 = distinct !{!1835, !1836}
!1836 = !DILocation(line: 445, column: 2, scope: !1783)
!1837 = !DILocation(line: 453, column: 2, scope: !1783)
!1838 = !DILocation(line: 453, column: 9, scope: !1839)
!1839 = !DILexicalBlockFile(scope: !1783, file: !541, discriminator: 1)
!1840 = !DILocation(line: 453, column: 17, scope: !1839)
!1841 = !DILocation(line: 453, column: 25, scope: !1839)
!1842 = !DILocation(line: 453, column: 2, scope: !1839)
!1843 = !DILocation(line: 454, column: 23, scope: !1783)
!1844 = !DILocation(line: 454, column: 31, scope: !1783)
!1845 = !DILocation(line: 454, column: 40, scope: !1783)
!1846 = !DILocation(line: 454, column: 3, scope: !1783)
!1847 = !DILocation(line: 453, column: 2, scope: !1848)
!1848 = !DILexicalBlockFile(scope: !1783, file: !541, discriminator: 2)
!1849 = distinct !{!1849, !1837}
!1850 = !DILocation(line: 456, column: 15, scope: !1783)
!1851 = !DILocation(line: 456, column: 23, scope: !1783)
!1852 = !DILocation(line: 456, column: 2, scope: !1783)
!1853 = !DILocation(line: 457, column: 15, scope: !1783)
!1854 = !DILocation(line: 457, column: 23, scope: !1783)
!1855 = !DILocation(line: 457, column: 2, scope: !1783)
!1856 = !DILocation(line: 459, column: 9, scope: !1783)
!1857 = !DILocation(line: 459, column: 2, scope: !1783)
!1858 = !DILocation(line: 460, column: 1, scope: !1783)
!1859 = distinct !DISubprogram(name: "server_connect_unref", scope: !541, file: !541, line: 609, type: !853, isLocal: false, isDefinition: true, scopeLine: 610, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !549)
!1860 = !DILocalVariable(name: "conn", arg: 1, scope: !1859, file: !541, line: 609, type: !81)
!1861 = !DILocation(line: 609, column: 47, scope: !1859)
!1862 = !DILocation(line: 611, column: 2, scope: !1859)
!1863 = distinct !{!1863, !1862}
!1864 = !DILocation(line: 611, column: 53, scope: !1865)
!1865 = !DILexicalBlockFile(scope: !1866, file: !541, discriminator: 1)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !541, line: 611, column: 10)
!1867 = distinct !DILexicalBlock(scope: !1859, file: !541, line: 611, column: 4)
!1868 = !DILocation(line: 611, column: 35, scope: !1865)
!1869 = !DILocation(line: 611, column: 12, scope: !1865)
!1870 = !DILocation(line: 611, column: 10, scope: !1865)
!1871 = !DILocation(line: 611, column: 11, scope: !1872)
!1872 = !DILexicalBlockFile(scope: !1866, file: !541, discriminator: 2)
!1873 = !DILocation(line: 611, column: 10, scope: !1874)
!1874 = !DILexicalBlockFile(scope: !1867, file: !541, discriminator: 3)
!1875 = !DILocation(line: 611, column: 41, scope: !1876)
!1876 = !DILexicalBlockFile(scope: !1877, file: !541, discriminator: 4)
!1877 = distinct !DILexicalBlock(scope: !1866, file: !541, line: 611, column: 39)
!1878 = !DILocation(line: 611, column: 50, scope: !1879)
!1879 = !DILexicalBlockFile(scope: !1880, file: !541, discriminator: 5)
!1880 = distinct !DILexicalBlock(scope: !1866, file: !541, line: 611, column: 48)
!1881 = !DILocation(line: 611, column: 146, scope: !1879)
!1882 = !DILocation(line: 611, column: 157, scope: !1883)
!1883 = !DILexicalBlockFile(scope: !1867, file: !541, discriminator: 6)
!1884 = !DILocation(line: 613, column: 8, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1859, file: !541, line: 613, column: 6)
!1886 = !DILocation(line: 613, column: 14, scope: !1885)
!1887 = !DILocation(line: 613, column: 6, scope: !1885)
!1888 = !DILocation(line: 613, column: 23, scope: !1885)
!1889 = !DILocation(line: 613, column: 6, scope: !1859)
!1890 = !DILocation(line: 614, column: 3, scope: !1885)
!1891 = !DILocation(line: 615, column: 6, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1859, file: !541, line: 615, column: 6)
!1893 = !DILocation(line: 615, column: 12, scope: !1892)
!1894 = !DILocation(line: 615, column: 21, scope: !1892)
!1895 = !DILocation(line: 615, column: 6, scope: !1859)
!1896 = !DILocation(line: 616, column: 78, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1892, file: !541, line: 615, column: 26)
!1898 = !DILocation(line: 616, column: 84, scope: !1897)
!1899 = !DILocation(line: 616, column: 89, scope: !1897)
!1900 = !DILocation(line: 616, column: 95, scope: !1897)
!1901 = !DILocation(line: 616, column: 3, scope: !1897)
!1902 = !DILocation(line: 618, column: 2, scope: !1897)
!1903 = !DILocation(line: 620, column: 11, scope: !1859)
!1904 = !DILocation(line: 620, column: 17, scope: !1859)
!1905 = !DILocation(line: 620, column: 10, scope: !1859)
!1906 = !DILocation(line: 620, column: 10, scope: !1907)
!1907 = !DILexicalBlockFile(scope: !1859, file: !541, discriminator: 1)
!1908 = !DILocation(line: 620, column: 63, scope: !1909)
!1909 = !DILexicalBlockFile(scope: !1859, file: !541, discriminator: 2)
!1910 = !DILocation(line: 620, column: 70, scope: !1909)
!1911 = !DILocation(line: 620, column: 40, scope: !1909)
!1912 = !DILocation(line: 620, column: 10, scope: !1909)
!1913 = !DILocation(line: 620, column: 10, scope: !1914)
!1914 = !DILexicalBlockFile(scope: !1859, file: !541, discriminator: 3)
!1915 = !DILocation(line: 620, column: 83, scope: !1914)
!1916 = !DILocation(line: 620, column: 106, scope: !1914)
!1917 = !DILocation(line: 620, column: 9, scope: !1914)
!1918 = !DILocation(line: 622, column: 6, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1859, file: !541, line: 622, column: 6)
!1920 = !DILocation(line: 622, column: 12, scope: !1919)
!1921 = !DILocation(line: 622, column: 27, scope: !1919)
!1922 = !DILocation(line: 622, column: 6, scope: !1859)
!1923 = !DILocation(line: 623, column: 18, scope: !1919)
!1924 = !DILocation(line: 623, column: 24, scope: !1919)
!1925 = !DILocation(line: 623, column: 3, scope: !1919)
!1926 = !DILocation(line: 625, column: 9, scope: !1859)
!1927 = !DILocation(line: 625, column: 15, scope: !1859)
!1928 = !DILocation(line: 625, column: 2, scope: !1859)
!1929 = !DILocation(line: 626, column: 9, scope: !1859)
!1930 = !DILocation(line: 626, column: 15, scope: !1859)
!1931 = !DILocation(line: 626, column: 2, scope: !1859)
!1932 = !DILocation(line: 627, column: 9, scope: !1859)
!1933 = !DILocation(line: 627, column: 15, scope: !1859)
!1934 = !DILocation(line: 627, column: 2, scope: !1859)
!1935 = !DILocation(line: 628, column: 9, scope: !1859)
!1936 = !DILocation(line: 628, column: 15, scope: !1859)
!1937 = !DILocation(line: 628, column: 2, scope: !1859)
!1938 = !DILocation(line: 630, column: 9, scope: !1859)
!1939 = !DILocation(line: 630, column: 15, scope: !1859)
!1940 = !DILocation(line: 630, column: 2, scope: !1859)
!1941 = !DILocation(line: 631, column: 9, scope: !1859)
!1942 = !DILocation(line: 631, column: 15, scope: !1859)
!1943 = !DILocation(line: 631, column: 2, scope: !1859)
!1944 = !DILocation(line: 632, column: 9, scope: !1859)
!1945 = !DILocation(line: 632, column: 15, scope: !1859)
!1946 = !DILocation(line: 632, column: 2, scope: !1859)
!1947 = !DILocation(line: 634, column: 9, scope: !1859)
!1948 = !DILocation(line: 634, column: 15, scope: !1859)
!1949 = !DILocation(line: 634, column: 2, scope: !1859)
!1950 = !DILocation(line: 635, column: 9, scope: !1859)
!1951 = !DILocation(line: 635, column: 15, scope: !1859)
!1952 = !DILocation(line: 635, column: 2, scope: !1859)
!1953 = !DILocation(line: 637, column: 9, scope: !1859)
!1954 = !DILocation(line: 637, column: 15, scope: !1859)
!1955 = !DILocation(line: 637, column: 2, scope: !1859)
!1956 = !DILocation(line: 638, column: 9, scope: !1859)
!1957 = !DILocation(line: 638, column: 15, scope: !1859)
!1958 = !DILocation(line: 638, column: 2, scope: !1859)
!1959 = !DILocation(line: 639, column: 9, scope: !1859)
!1960 = !DILocation(line: 639, column: 15, scope: !1859)
!1961 = !DILocation(line: 639, column: 2, scope: !1859)
!1962 = !DILocation(line: 640, column: 9, scope: !1859)
!1963 = !DILocation(line: 640, column: 15, scope: !1859)
!1964 = !DILocation(line: 640, column: 2, scope: !1859)
!1965 = !DILocation(line: 642, column: 9, scope: !1859)
!1966 = !DILocation(line: 642, column: 15, scope: !1859)
!1967 = !DILocation(line: 642, column: 2, scope: !1859)
!1968 = !DILocation(line: 643, column: 9, scope: !1859)
!1969 = !DILocation(line: 643, column: 15, scope: !1859)
!1970 = !DILocation(line: 643, column: 2, scope: !1859)
!1971 = !DILocation(line: 644, column: 9, scope: !1859)
!1972 = !DILocation(line: 644, column: 15, scope: !1859)
!1973 = !DILocation(line: 644, column: 2, scope: !1859)
!1974 = !DILocation(line: 645, column: 9, scope: !1859)
!1975 = !DILocation(line: 645, column: 15, scope: !1859)
!1976 = !DILocation(line: 645, column: 2, scope: !1859)
!1977 = !DILocation(line: 646, column: 9, scope: !1859)
!1978 = !DILocation(line: 646, column: 15, scope: !1859)
!1979 = !DILocation(line: 646, column: 2, scope: !1859)
!1980 = !DILocation(line: 647, column: 9, scope: !1859)
!1981 = !DILocation(line: 647, column: 15, scope: !1859)
!1982 = !DILocation(line: 647, column: 2, scope: !1859)
!1983 = !DILocation(line: 648, column: 9, scope: !1859)
!1984 = !DILocation(line: 648, column: 15, scope: !1859)
!1985 = !DILocation(line: 648, column: 2, scope: !1859)
!1986 = !DILocation(line: 649, column: 9, scope: !1859)
!1987 = !DILocation(line: 649, column: 15, scope: !1859)
!1988 = !DILocation(line: 649, column: 2, scope: !1859)
!1989 = !DILocation(line: 651, column: 9, scope: !1859)
!1990 = !DILocation(line: 651, column: 15, scope: !1859)
!1991 = !DILocation(line: 651, column: 2, scope: !1859)
!1992 = !DILocation(line: 652, column: 9, scope: !1859)
!1993 = !DILocation(line: 652, column: 15, scope: !1859)
!1994 = !DILocation(line: 652, column: 2, scope: !1859)
!1995 = !DILocation(line: 654, column: 2, scope: !1859)
!1996 = !DILocation(line: 654, column: 8, scope: !1859)
!1997 = !DILocation(line: 654, column: 13, scope: !1859)
!1998 = !DILocation(line: 655, column: 9, scope: !1859)
!1999 = !DILocation(line: 655, column: 2, scope: !1859)
!2000 = !DILocation(line: 656, column: 1, scope: !1859)
!2001 = !DILocation(line: 656, column: 1, scope: !1907)
!2002 = distinct !DISubprogram(name: "server_find_tag", scope: !541, file: !541, line: 552, type: !2003, isLocal: false, isDefinition: true, scopeLine: 553, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !549)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!69, !416}
!2005 = !DILocalVariable(name: "tag", arg: 1, scope: !2002, file: !541, line: 552, type: !416)
!2006 = !DILocation(line: 552, column: 41, scope: !2002)
!2007 = !DILocalVariable(name: "tmp", scope: !2002, file: !541, line: 554, type: !271)
!2008 = !DILocation(line: 554, column: 10, scope: !2002)
!2009 = !DILocation(line: 556, column: 2, scope: !2002)
!2010 = distinct !{!2010, !2009}
!2011 = !DILocation(line: 556, column: 10, scope: !2012)
!2012 = !DILexicalBlockFile(scope: !2013, file: !541, discriminator: 1)
!2013 = distinct !DILexicalBlock(scope: !2014, file: !541, line: 556, column: 10)
!2014 = distinct !DILexicalBlock(scope: !2002, file: !541, line: 556, column: 4)
!2015 = !DILocation(line: 556, column: 14, scope: !2012)
!2016 = !DILocation(line: 556, column: 5, scope: !2017)
!2017 = !DILexicalBlockFile(scope: !2018, file: !541, discriminator: 2)
!2018 = distinct !DILexicalBlock(scope: !2013, file: !541, line: 556, column: 3)
!2019 = !DILocation(line: 556, column: 14, scope: !2020)
!2020 = !DILexicalBlockFile(scope: !2021, file: !541, discriminator: 3)
!2021 = distinct !DILexicalBlock(scope: !2013, file: !541, line: 556, column: 12)
!2022 = !DILocation(line: 556, column: 98, scope: !2020)
!2023 = !DILocation(line: 556, column: 7, scope: !2024)
!2024 = !DILexicalBlockFile(scope: !2014, file: !541, discriminator: 4)
!2025 = !DILocation(line: 557, column: 7, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2002, file: !541, line: 557, column: 6)
!2027 = !DILocation(line: 557, column: 6, scope: !2026)
!2028 = !DILocation(line: 557, column: 11, scope: !2026)
!2029 = !DILocation(line: 557, column: 6, scope: !2002)
!2030 = !DILocation(line: 557, column: 20, scope: !2031)
!2031 = !DILexicalBlockFile(scope: !2026, file: !541, discriminator: 1)
!2032 = !DILocation(line: 559, column: 13, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2002, file: !541, line: 559, column: 2)
!2034 = !DILocation(line: 559, column: 11, scope: !2033)
!2035 = !DILocation(line: 559, column: 7, scope: !2033)
!2036 = !DILocation(line: 559, column: 22, scope: !2037)
!2037 = !DILexicalBlockFile(scope: !2038, file: !541, discriminator: 1)
!2038 = distinct !DILexicalBlock(scope: !2033, file: !541, line: 559, column: 2)
!2039 = !DILocation(line: 559, column: 26, scope: !2037)
!2040 = !DILocation(line: 559, column: 2, scope: !2037)
!2041 = !DILocalVariable(name: "server", scope: !2042, file: !541, line: 560, type: !69)
!2042 = distinct !DILexicalBlock(scope: !2038, file: !541, line: 559, column: 51)
!2043 = !DILocation(line: 560, column: 15, scope: !2042)
!2044 = !DILocation(line: 560, column: 24, scope: !2042)
!2045 = !DILocation(line: 560, column: 29, scope: !2042)
!2046 = !DILocation(line: 562, column: 26, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2042, file: !541, line: 562, column: 7)
!2048 = !DILocation(line: 562, column: 34, scope: !2047)
!2049 = !DILocation(line: 562, column: 39, scope: !2047)
!2050 = !DILocation(line: 562, column: 7, scope: !2047)
!2051 = !DILocation(line: 562, column: 44, scope: !2047)
!2052 = !DILocation(line: 562, column: 7, scope: !2042)
!2053 = !DILocation(line: 563, column: 11, scope: !2047)
!2054 = !DILocation(line: 563, column: 4, scope: !2047)
!2055 = !DILocation(line: 564, column: 2, scope: !2042)
!2056 = !DILocation(line: 559, column: 40, scope: !2057)
!2057 = !DILexicalBlockFile(scope: !2038, file: !541, discriminator: 2)
!2058 = !DILocation(line: 559, column: 45, scope: !2057)
!2059 = !DILocation(line: 559, column: 38, scope: !2057)
!2060 = !DILocation(line: 559, column: 2, scope: !2057)
!2061 = distinct !{!2061, !2062}
!2062 = !DILocation(line: 559, column: 2, scope: !2002)
!2063 = !DILocation(line: 566, column: 2, scope: !2002)
!2064 = !DILocation(line: 567, column: 1, scope: !2002)
!2065 = distinct !DISubprogram(name: "server_find_lookup_tag", scope: !541, file: !541, line: 569, type: !2003, isLocal: false, isDefinition: true, scopeLine: 570, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !549)
!2066 = !DILocalVariable(name: "tag", arg: 1, scope: !2065, file: !541, line: 569, type: !416)
!2067 = !DILocation(line: 569, column: 48, scope: !2065)
!2068 = !DILocalVariable(name: "tmp", scope: !2065, file: !541, line: 571, type: !271)
!2069 = !DILocation(line: 571, column: 10, scope: !2065)
!2070 = !DILocation(line: 573, column: 2, scope: !2065)
!2071 = distinct !{!2071, !2070}
!2072 = !DILocation(line: 573, column: 10, scope: !2073)
!2073 = !DILexicalBlockFile(scope: !2074, file: !541, discriminator: 1)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !541, line: 573, column: 10)
!2075 = distinct !DILexicalBlock(scope: !2065, file: !541, line: 573, column: 4)
!2076 = !DILocation(line: 573, column: 14, scope: !2073)
!2077 = !DILocation(line: 573, column: 5, scope: !2078)
!2078 = !DILexicalBlockFile(scope: !2079, file: !541, discriminator: 2)
!2079 = distinct !DILexicalBlock(scope: !2074, file: !541, line: 573, column: 3)
!2080 = !DILocation(line: 573, column: 14, scope: !2081)
!2081 = !DILexicalBlockFile(scope: !2082, file: !541, discriminator: 3)
!2082 = distinct !DILexicalBlock(scope: !2074, file: !541, line: 573, column: 12)
!2083 = !DILocation(line: 573, column: 98, scope: !2081)
!2084 = !DILocation(line: 573, column: 7, scope: !2085)
!2085 = !DILexicalBlockFile(scope: !2075, file: !541, discriminator: 4)
!2086 = !DILocation(line: 574, column: 7, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2065, file: !541, line: 574, column: 6)
!2088 = !DILocation(line: 574, column: 6, scope: !2087)
!2089 = !DILocation(line: 574, column: 11, scope: !2087)
!2090 = !DILocation(line: 574, column: 6, scope: !2065)
!2091 = !DILocation(line: 574, column: 20, scope: !2092)
!2092 = !DILexicalBlockFile(scope: !2087, file: !541, discriminator: 1)
!2093 = !DILocation(line: 576, column: 13, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2065, file: !541, line: 576, column: 2)
!2095 = !DILocation(line: 576, column: 11, scope: !2094)
!2096 = !DILocation(line: 576, column: 7, scope: !2094)
!2097 = !DILocation(line: 576, column: 29, scope: !2098)
!2098 = !DILexicalBlockFile(scope: !2099, file: !541, discriminator: 1)
!2099 = distinct !DILexicalBlock(scope: !2094, file: !541, line: 576, column: 2)
!2100 = !DILocation(line: 576, column: 33, scope: !2098)
!2101 = !DILocation(line: 576, column: 2, scope: !2098)
!2102 = !DILocalVariable(name: "server", scope: !2103, file: !541, line: 577, type: !69)
!2103 = distinct !DILexicalBlock(scope: !2099, file: !541, line: 576, column: 58)
!2104 = !DILocation(line: 577, column: 15, scope: !2103)
!2105 = !DILocation(line: 577, column: 24, scope: !2103)
!2106 = !DILocation(line: 577, column: 29, scope: !2103)
!2107 = !DILocation(line: 579, column: 26, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2103, file: !541, line: 579, column: 7)
!2109 = !DILocation(line: 579, column: 34, scope: !2108)
!2110 = !DILocation(line: 579, column: 39, scope: !2108)
!2111 = !DILocation(line: 579, column: 7, scope: !2108)
!2112 = !DILocation(line: 579, column: 44, scope: !2108)
!2113 = !DILocation(line: 579, column: 7, scope: !2103)
!2114 = !DILocation(line: 580, column: 11, scope: !2108)
!2115 = !DILocation(line: 580, column: 4, scope: !2108)
!2116 = !DILocation(line: 581, column: 2, scope: !2103)
!2117 = !DILocation(line: 576, column: 47, scope: !2118)
!2118 = !DILexicalBlockFile(scope: !2099, file: !541, discriminator: 2)
!2119 = !DILocation(line: 576, column: 52, scope: !2118)
!2120 = !DILocation(line: 576, column: 45, scope: !2118)
!2121 = !DILocation(line: 576, column: 2, scope: !2118)
!2122 = distinct !{!2122, !2123}
!2123 = !DILocation(line: 576, column: 2, scope: !2065)
!2124 = !DILocation(line: 583, column: 2, scope: !2065)
!2125 = !DILocation(line: 584, column: 1, scope: !2065)
!2126 = distinct !DISubprogram(name: "server_find_chatnet", scope: !541, file: !541, line: 586, type: !2003, isLocal: false, isDefinition: true, scopeLine: 587, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !549)
!2127 = !DILocalVariable(name: "chatnet", arg: 1, scope: !2126, file: !541, line: 586, type: !416)
!2128 = !DILocation(line: 586, column: 45, scope: !2126)
!2129 = !DILocalVariable(name: "tmp", scope: !2126, file: !541, line: 588, type: !271)
!2130 = !DILocation(line: 588, column: 10, scope: !2126)
!2131 = !DILocation(line: 590, column: 2, scope: !2126)
!2132 = distinct !{!2132, !2131}
!2133 = !DILocation(line: 590, column: 10, scope: !2134)
!2134 = !DILexicalBlockFile(scope: !2135, file: !541, discriminator: 1)
!2135 = distinct !DILexicalBlock(scope: !2136, file: !541, line: 590, column: 10)
!2136 = distinct !DILexicalBlock(scope: !2126, file: !541, line: 590, column: 4)
!2137 = !DILocation(line: 590, column: 18, scope: !2134)
!2138 = !DILocation(line: 590, column: 5, scope: !2139)
!2139 = !DILexicalBlockFile(scope: !2140, file: !541, discriminator: 2)
!2140 = distinct !DILexicalBlock(scope: !2135, file: !541, line: 590, column: 3)
!2141 = !DILocation(line: 590, column: 14, scope: !2142)
!2142 = !DILexicalBlockFile(scope: !2143, file: !541, discriminator: 3)
!2143 = distinct !DILexicalBlock(scope: !2135, file: !541, line: 590, column: 12)
!2144 = !DILocation(line: 590, column: 102, scope: !2142)
!2145 = !DILocation(line: 590, column: 7, scope: !2146)
!2146 = !DILexicalBlockFile(scope: !2136, file: !541, discriminator: 4)
!2147 = !DILocation(line: 591, column: 7, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2126, file: !541, line: 591, column: 6)
!2149 = !DILocation(line: 591, column: 6, scope: !2148)
!2150 = !DILocation(line: 591, column: 15, scope: !2148)
!2151 = !DILocation(line: 591, column: 6, scope: !2126)
!2152 = !DILocation(line: 591, column: 24, scope: !2153)
!2153 = !DILexicalBlockFile(scope: !2148, file: !541, discriminator: 1)
!2154 = !DILocation(line: 593, column: 13, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2126, file: !541, line: 593, column: 2)
!2156 = !DILocation(line: 593, column: 11, scope: !2155)
!2157 = !DILocation(line: 593, column: 7, scope: !2155)
!2158 = !DILocation(line: 593, column: 22, scope: !2159)
!2159 = !DILexicalBlockFile(scope: !2160, file: !541, discriminator: 1)
!2160 = distinct !DILexicalBlock(scope: !2155, file: !541, line: 593, column: 2)
!2161 = !DILocation(line: 593, column: 26, scope: !2159)
!2162 = !DILocation(line: 593, column: 2, scope: !2159)
!2163 = !DILocalVariable(name: "server", scope: !2164, file: !541, line: 594, type: !69)
!2164 = distinct !DILexicalBlock(scope: !2160, file: !541, line: 593, column: 51)
!2165 = !DILocation(line: 594, column: 15, scope: !2164)
!2166 = !DILocation(line: 594, column: 24, scope: !2164)
!2167 = !DILocation(line: 594, column: 29, scope: !2164)
!2168 = !DILocation(line: 596, column: 7, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2164, file: !541, line: 596, column: 7)
!2170 = !DILocation(line: 596, column: 15, scope: !2169)
!2171 = !DILocation(line: 596, column: 24, scope: !2169)
!2172 = !DILocation(line: 596, column: 32, scope: !2169)
!2173 = !DILocation(line: 596, column: 39, scope: !2169)
!2174 = !DILocation(line: 597, column: 26, scope: !2169)
!2175 = !DILocation(line: 597, column: 34, scope: !2169)
!2176 = !DILocation(line: 597, column: 43, scope: !2169)
!2177 = !DILocation(line: 597, column: 52, scope: !2169)
!2178 = !DILocation(line: 597, column: 7, scope: !2169)
!2179 = !DILocation(line: 597, column: 61, scope: !2169)
!2180 = !DILocation(line: 596, column: 7, scope: !2181)
!2181 = !DILexicalBlockFile(scope: !2164, file: !541, discriminator: 1)
!2182 = !DILocation(line: 598, column: 11, scope: !2169)
!2183 = !DILocation(line: 598, column: 4, scope: !2169)
!2184 = !DILocation(line: 599, column: 2, scope: !2164)
!2185 = !DILocation(line: 593, column: 40, scope: !2186)
!2186 = !DILexicalBlockFile(scope: !2160, file: !541, discriminator: 2)
!2187 = !DILocation(line: 593, column: 45, scope: !2186)
!2188 = !DILocation(line: 593, column: 38, scope: !2186)
!2189 = !DILocation(line: 593, column: 2, scope: !2186)
!2190 = distinct !{!2190, !2191}
!2191 = !DILocation(line: 593, column: 2, scope: !2126)
!2192 = !DILocation(line: 601, column: 2, scope: !2126)
!2193 = !DILocation(line: 602, column: 1, scope: !2126)
!2194 = distinct !DISubprogram(name: "server_connect_ref", scope: !541, file: !541, line: 604, type: !853, isLocal: false, isDefinition: true, scopeLine: 605, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !549)
!2195 = !DILocalVariable(name: "conn", arg: 1, scope: !2194, file: !541, line: 604, type: !81)
!2196 = !DILocation(line: 604, column: 45, scope: !2194)
!2197 = !DILocation(line: 606, column: 9, scope: !2194)
!2198 = !DILocation(line: 606, column: 15, scope: !2194)
!2199 = !DILocation(line: 606, column: 23, scope: !2194)
!2200 = !DILocation(line: 607, column: 1, scope: !2194)
!2201 = distinct !DISubprogram(name: "server_change_nick", scope: !541, file: !541, line: 658, type: !547, isLocal: false, isDefinition: true, scopeLine: 659, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !549)
!2202 = !DILocalVariable(name: "server", arg: 1, scope: !2201, file: !541, line: 658, type: !69)
!2203 = !DILocation(line: 658, column: 37, scope: !2201)
!2204 = !DILocalVariable(name: "nick", arg: 2, scope: !2201, file: !541, line: 658, type: !416)
!2205 = !DILocation(line: 658, column: 57, scope: !2201)
!2206 = !DILocation(line: 660, column: 9, scope: !2201)
!2207 = !DILocation(line: 660, column: 17, scope: !2201)
!2208 = !DILocation(line: 660, column: 2, scope: !2201)
!2209 = !DILocation(line: 661, column: 26, scope: !2201)
!2210 = !DILocation(line: 661, column: 17, scope: !2201)
!2211 = !DILocation(line: 661, column: 2, scope: !2201)
!2212 = !DILocation(line: 661, column: 10, scope: !2201)
!2213 = !DILocation(line: 661, column: 15, scope: !2201)
!2214 = !DILocation(line: 663, column: 40, scope: !2201)
!2215 = !DILocation(line: 663, column: 2, scope: !2201)
!2216 = !DILocation(line: 664, column: 1, scope: !2201)
!2217 = distinct !DISubprogram(name: "server_connect_own_ip_save", scope: !541, file: !541, line: 667, type: !2218, isLocal: false, isDefinition: true, scopeLine: 669, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !549)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{null, !81, !103, !103}
!2220 = !DILocalVariable(name: "conn", arg: 1, scope: !2217, file: !541, line: 667, type: !81)
!2221 = !DILocation(line: 667, column: 53, scope: !2217)
!2222 = !DILocalVariable(name: "ip4", arg: 2, scope: !2217, file: !541, line: 668, type: !103)
!2223 = !DILocation(line: 668, column: 13, scope: !2217)
!2224 = !DILocalVariable(name: "ip6", arg: 3, scope: !2217, file: !541, line: 668, type: !103)
!2225 = !DILocation(line: 668, column: 26, scope: !2217)
!2226 = !DILocation(line: 670, column: 6, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2217, file: !541, line: 670, column: 6)
!2228 = !DILocation(line: 670, column: 10, scope: !2227)
!2229 = !DILocation(line: 670, column: 17, scope: !2227)
!2230 = !DILocation(line: 670, column: 20, scope: !2231)
!2231 = !DILexicalBlockFile(scope: !2227, file: !541, discriminator: 1)
!2232 = !DILocation(line: 670, column: 25, scope: !2231)
!2233 = !DILocation(line: 670, column: 32, scope: !2231)
!2234 = !DILocation(line: 670, column: 6, scope: !2231)
!2235 = !DILocation(line: 671, column: 3, scope: !2227)
!2236 = distinct !{!2236, !2235}
!2237 = !DILocation(line: 671, column: 12, scope: !2238)
!2238 = !DILexicalBlockFile(scope: !2239, file: !541, discriminator: 1)
!2239 = distinct !DILexicalBlock(scope: !2240, file: !541, line: 671, column: 12)
!2240 = distinct !DILexicalBlock(scope: !2227, file: !541, line: 671, column: 6)
!2241 = !DILocation(line: 671, column: 18, scope: !2238)
!2242 = !DILocation(line: 671, column: 36, scope: !2243)
!2243 = !DILexicalBlockFile(scope: !2244, file: !541, discriminator: 2)
!2244 = distinct !DILexicalBlock(scope: !2239, file: !541, line: 671, column: 27)
!2245 = !DILocation(line: 671, column: 42, scope: !2243)
!2246 = !DILocation(line: 671, column: 29, scope: !2243)
!2247 = !DILocation(line: 671, column: 53, scope: !2243)
!2248 = !DILocation(line: 671, column: 59, scope: !2243)
!2249 = !DILocation(line: 671, column: 68, scope: !2243)
!2250 = !DILocation(line: 671, column: 4, scope: !2243)
!2251 = !DILocation(line: 671, column: 6, scope: !2252)
!2252 = !DILexicalBlockFile(scope: !2240, file: !541, discriminator: 3)
!2253 = !DILocation(line: 671, column: 6, scope: !2254)
!2254 = !DILexicalBlockFile(scope: !2240, file: !541, discriminator: 4)
!2255 = !DILocation(line: 672, column: 6, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2217, file: !541, line: 672, column: 6)
!2257 = !DILocation(line: 672, column: 10, scope: !2256)
!2258 = !DILocation(line: 672, column: 17, scope: !2256)
!2259 = !DILocation(line: 672, column: 20, scope: !2260)
!2260 = !DILexicalBlockFile(scope: !2256, file: !541, discriminator: 1)
!2261 = !DILocation(line: 672, column: 25, scope: !2260)
!2262 = !DILocation(line: 672, column: 32, scope: !2260)
!2263 = !DILocation(line: 672, column: 6, scope: !2260)
!2264 = !DILocation(line: 673, column: 3, scope: !2256)
!2265 = distinct !{!2265, !2264}
!2266 = !DILocation(line: 673, column: 12, scope: !2267)
!2267 = !DILexicalBlockFile(scope: !2268, file: !541, discriminator: 1)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !541, line: 673, column: 12)
!2269 = distinct !DILexicalBlock(scope: !2256, file: !541, line: 673, column: 6)
!2270 = !DILocation(line: 673, column: 18, scope: !2267)
!2271 = !DILocation(line: 673, column: 36, scope: !2272)
!2272 = !DILexicalBlockFile(scope: !2273, file: !541, discriminator: 2)
!2273 = distinct !DILexicalBlock(scope: !2268, file: !541, line: 673, column: 27)
!2274 = !DILocation(line: 673, column: 42, scope: !2272)
!2275 = !DILocation(line: 673, column: 29, scope: !2272)
!2276 = !DILocation(line: 673, column: 53, scope: !2272)
!2277 = !DILocation(line: 673, column: 59, scope: !2272)
!2278 = !DILocation(line: 673, column: 68, scope: !2272)
!2279 = !DILocation(line: 673, column: 4, scope: !2272)
!2280 = !DILocation(line: 673, column: 6, scope: !2281)
!2281 = !DILexicalBlockFile(scope: !2269, file: !541, discriminator: 3)
!2282 = !DILocation(line: 673, column: 6, scope: !2283)
!2283 = !DILexicalBlockFile(scope: !2269, file: !541, discriminator: 4)
!2284 = !DILocation(line: 675, column: 6, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2217, file: !541, line: 675, column: 6)
!2286 = !DILocation(line: 675, column: 10, scope: !2285)
!2287 = !DILocation(line: 675, column: 17, scope: !2285)
!2288 = !DILocation(line: 675, column: 20, scope: !2289)
!2289 = !DILexicalBlockFile(scope: !2285, file: !541, discriminator: 1)
!2290 = !DILocation(line: 675, column: 25, scope: !2289)
!2291 = !DILocation(line: 675, column: 32, scope: !2289)
!2292 = !DILocation(line: 675, column: 6, scope: !2289)
!2293 = !DILocation(line: 677, column: 7, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2295, file: !541, line: 677, column: 7)
!2295 = distinct !DILexicalBlock(scope: !2285, file: !541, line: 675, column: 38)
!2296 = !DILocation(line: 677, column: 13, scope: !2294)
!2297 = !DILocation(line: 677, column: 21, scope: !2294)
!2298 = !DILocation(line: 677, column: 7, scope: !2295)
!2299 = !DILocation(line: 678, column: 32, scope: !2294)
!2300 = !DILocation(line: 678, column: 21, scope: !2294)
!2301 = !DILocation(line: 678, column: 4, scope: !2294)
!2302 = !DILocation(line: 678, column: 10, scope: !2294)
!2303 = !DILocation(line: 678, column: 18, scope: !2294)
!2304 = !DILocation(line: 679, column: 10, scope: !2295)
!2305 = !DILocation(line: 679, column: 16, scope: !2295)
!2306 = !DILocation(line: 679, column: 3, scope: !2295)
!2307 = !DILocation(line: 679, column: 25, scope: !2295)
!2308 = !DILocation(line: 680, column: 2, scope: !2295)
!2309 = !DILocation(line: 682, column: 6, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2217, file: !541, line: 682, column: 6)
!2311 = !DILocation(line: 682, column: 10, scope: !2310)
!2312 = !DILocation(line: 682, column: 17, scope: !2310)
!2313 = !DILocation(line: 682, column: 20, scope: !2314)
!2314 = !DILexicalBlockFile(scope: !2310, file: !541, discriminator: 1)
!2315 = !DILocation(line: 682, column: 25, scope: !2314)
!2316 = !DILocation(line: 682, column: 32, scope: !2314)
!2317 = !DILocation(line: 682, column: 6, scope: !2314)
!2318 = !DILocation(line: 684, column: 7, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2320, file: !541, line: 684, column: 7)
!2320 = distinct !DILexicalBlock(scope: !2310, file: !541, line: 682, column: 38)
!2321 = !DILocation(line: 684, column: 13, scope: !2319)
!2322 = !DILocation(line: 684, column: 21, scope: !2319)
!2323 = !DILocation(line: 684, column: 7, scope: !2320)
!2324 = !DILocation(line: 685, column: 32, scope: !2319)
!2325 = !DILocation(line: 685, column: 21, scope: !2319)
!2326 = !DILocation(line: 685, column: 4, scope: !2319)
!2327 = !DILocation(line: 685, column: 10, scope: !2319)
!2328 = !DILocation(line: 685, column: 18, scope: !2319)
!2329 = !DILocation(line: 686, column: 10, scope: !2320)
!2330 = !DILocation(line: 686, column: 16, scope: !2320)
!2331 = !DILocation(line: 686, column: 3, scope: !2320)
!2332 = !DILocation(line: 686, column: 25, scope: !2320)
!2333 = !DILocation(line: 687, column: 2, scope: !2320)
!2334 = !DILocation(line: 688, column: 1, scope: !2217)
!2335 = distinct !DISubprogram(name: "cmd_options_get_server", scope: !541, file: !541, line: 692, type: !2336, isLocal: false, isDefinition: true, scopeLine: 695, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !549)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{!69, !416, !390, !69}
!2338 = !DILocalVariable(name: "cmd", arg: 1, scope: !2335, file: !541, line: 692, type: !416)
!2339 = !DILocation(line: 692, column: 48, scope: !2335)
!2340 = !DILocalVariable(name: "optlist", arg: 2, scope: !2335, file: !541, line: 693, type: !390)
!2341 = !DILocation(line: 693, column: 20, scope: !2335)
!2342 = !DILocalVariable(name: "defserver", arg: 3, scope: !2335, file: !541, line: 694, type: !69)
!2343 = !DILocation(line: 694, column: 20, scope: !2335)
!2344 = !DILocalVariable(name: "server", scope: !2335, file: !541, line: 696, type: !69)
!2345 = !DILocation(line: 696, column: 14, scope: !2335)
!2346 = !DILocalVariable(name: "list", scope: !2335, file: !541, line: 697, type: !2347)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64, align: 64)
!2348 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !2349, line: 37, baseType: !2350)
!2349 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/irssi/task1")
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !2349, line: 39, size: 192, align: 64, elements: !2351)
!2351 = !{!2352, !2353, !2354}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2350, file: !2349, line: 41, baseType: !209, size: 64, align: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2350, file: !2349, line: 42, baseType: !2347, size: 64, align: 64, offset: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2350, file: !2349, line: 43, baseType: !2347, size: 64, align: 64, offset: 128)
!2355 = !DILocation(line: 697, column: 9, scope: !2335)
!2356 = !DILocation(line: 701, column: 30, scope: !2335)
!2357 = !DILocation(line: 701, column: 35, scope: !2335)
!2358 = !DILocation(line: 701, column: 9, scope: !2335)
!2359 = !DILocation(line: 701, column: 7, scope: !2335)
!2360 = !DILocation(line: 702, column: 6, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2335, file: !541, line: 702, column: 6)
!2362 = !DILocation(line: 702, column: 11, scope: !2361)
!2363 = !DILocation(line: 702, column: 6, scope: !2335)
!2364 = !DILocation(line: 703, column: 10, scope: !2361)
!2365 = !DILocation(line: 703, column: 3, scope: !2361)
!2366 = !DILocation(line: 705, column: 27, scope: !2335)
!2367 = !DILocation(line: 705, column: 33, scope: !2335)
!2368 = !DILocation(line: 705, column: 11, scope: !2335)
!2369 = !DILocation(line: 705, column: 9, scope: !2335)
!2370 = !DILocation(line: 706, column: 6, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2335, file: !541, line: 706, column: 6)
!2372 = !DILocation(line: 706, column: 13, scope: !2371)
!2373 = !DILocation(line: 706, column: 20, scope: !2371)
!2374 = !DILocation(line: 706, column: 23, scope: !2375)
!2375 = !DILexicalBlockFile(scope: !2371, file: !541, discriminator: 1)
!2376 = !DILocation(line: 706, column: 29, scope: !2375)
!2377 = !DILocation(line: 706, column: 34, scope: !2375)
!2378 = !DILocation(line: 706, column: 6, scope: !2375)
!2379 = !DILocation(line: 710, column: 8, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2371, file: !541, line: 706, column: 43)
!2381 = !DILocation(line: 710, column: 15, scope: !2380)
!2382 = !DILocation(line: 710, column: 24, scope: !2383)
!2383 = !DILexicalBlockFile(scope: !2380, file: !541, discriminator: 1)
!2384 = !DILocation(line: 710, column: 30, scope: !2383)
!2385 = !DILocation(line: 710, column: 8, scope: !2383)
!2386 = !DILocation(line: 710, column: 37, scope: !2387)
!2387 = !DILexicalBlockFile(scope: !2380, file: !541, discriminator: 2)
!2388 = !DILocation(line: 710, column: 43, scope: !2387)
!2389 = !DILocation(line: 710, column: 49, scope: !2387)
!2390 = !DILocation(line: 710, column: 8, scope: !2387)
!2391 = !DILocation(line: 710, column: 8, scope: !2392)
!2392 = !DILexicalBlockFile(scope: !2380, file: !541, discriminator: 3)
!2393 = !DILocation(line: 708, column: 3, scope: !2380)
!2394 = !DILocation(line: 711, column: 3, scope: !2380)
!2395 = !DILocation(line: 713, column: 10, scope: !2380)
!2396 = !DILocation(line: 714, column: 2, scope: !2380)
!2397 = !DILocation(line: 716, column: 14, scope: !2335)
!2398 = !DILocation(line: 716, column: 2, scope: !2335)
!2399 = !DILocation(line: 717, column: 9, scope: !2335)
!2400 = !DILocation(line: 717, column: 2, scope: !2335)
!2401 = !DILocation(line: 718, column: 1, scope: !2335)
!2402 = distinct !DISubprogram(name: "servers_init", scope: !541, file: !541, line: 739, type: !259, isLocal: false, isDefinition: true, scopeLine: 740, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !549)
!2403 = !DILocation(line: 741, column: 2, scope: !2402)
!2404 = !DILocation(line: 742, column: 2, scope: !2402)
!2405 = !DILocation(line: 743, column: 27, scope: !2402)
!2406 = !DILocation(line: 743, column: 17, scope: !2402)
!2407 = !DILocation(line: 745, column: 2, scope: !2402)
!2408 = !DILocation(line: 747, column: 2, scope: !2402)
!2409 = !DILocation(line: 748, column: 2, scope: !2402)
!2410 = !DILocation(line: 749, column: 1, scope: !2402)
!2411 = distinct !DISubprogram(name: "sig_chat_protocol_deinit", scope: !541, file: !541, line: 733, type: !2412, isLocal: true, isDefinition: true, scopeLine: 734, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !549)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{null, !783}
!2414 = !DILocalVariable(name: "proto", arg: 1, scope: !2411, file: !541, line: 733, type: !783)
!2415 = !DILocation(line: 733, column: 57, scope: !2411)
!2416 = !DILocation(line: 735, column: 28, scope: !2411)
!2417 = !DILocation(line: 735, column: 37, scope: !2411)
!2418 = !DILocation(line: 735, column: 44, scope: !2411)
!2419 = !DILocation(line: 735, column: 9, scope: !2411)
!2420 = !DILocation(line: 736, column: 28, scope: !2411)
!2421 = !DILocation(line: 736, column: 44, scope: !2411)
!2422 = !DILocation(line: 736, column: 51, scope: !2411)
!2423 = !DILocation(line: 736, column: 9, scope: !2411)
!2424 = !DILocation(line: 737, column: 1, scope: !2411)
!2425 = distinct !DISubprogram(name: "servers_deinit", scope: !541, file: !541, line: 751, type: !259, isLocal: false, isDefinition: true, scopeLine: 752, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !549)
!2426 = !DILocation(line: 753, column: 2, scope: !2425)
!2427 = !DILocation(line: 755, column: 2, scope: !2425)
!2428 = !DILocation(line: 756, column: 2, scope: !2425)
!2429 = !DILocation(line: 758, column: 2, scope: !2425)
!2430 = !DILocation(line: 759, column: 2, scope: !2425)
!2431 = !DILocation(line: 760, column: 1, scope: !2425)
!2432 = distinct !DISubprogram(name: "server_create_address_tag", scope: !541, file: !541, line: 71, type: !2433, isLocal: true, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !549)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!90, !416}
!2435 = !DILocalVariable(name: "address", arg: 1, scope: !2432, file: !541, line: 71, type: !416)
!2436 = !DILocation(line: 71, column: 52, scope: !2432)
!2437 = !DILocalVariable(name: "start", scope: !2432, file: !541, line: 73, type: !416)
!2438 = !DILocation(line: 73, column: 14, scope: !2432)
!2439 = !DILocalVariable(name: "end", scope: !2432, file: !541, line: 73, type: !416)
!2440 = !DILocation(line: 73, column: 22, scope: !2432)
!2441 = !DILocation(line: 75, column: 2, scope: !2432)
!2442 = distinct !{!2442, !2441}
!2443 = !DILocation(line: 75, column: 10, scope: !2444)
!2444 = !DILexicalBlockFile(scope: !2445, file: !541, discriminator: 1)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !541, line: 75, column: 10)
!2446 = distinct !DILexicalBlock(scope: !2432, file: !541, line: 75, column: 4)
!2447 = !DILocation(line: 75, column: 18, scope: !2444)
!2448 = !DILocation(line: 75, column: 5, scope: !2449)
!2449 = !DILexicalBlockFile(scope: !2450, file: !541, discriminator: 2)
!2450 = distinct !DILexicalBlock(scope: !2445, file: !541, line: 75, column: 3)
!2451 = !DILocation(line: 75, column: 14, scope: !2452)
!2452 = !DILexicalBlockFile(scope: !2453, file: !541, discriminator: 3)
!2453 = distinct !DILexicalBlock(scope: !2445, file: !541, line: 75, column: 12)
!2454 = !DILocation(line: 75, column: 102, scope: !2452)
!2455 = !DILocation(line: 75, column: 7, scope: !2456)
!2456 = !DILexicalBlockFile(scope: !2446, file: !541, discriminator: 4)
!2457 = !DILocation(line: 78, column: 13, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2432, file: !541, line: 78, column: 6)
!2459 = !DILocation(line: 78, column: 6, scope: !2458)
!2460 = !DILocation(line: 78, column: 27, scope: !2458)
!2461 = !DILocation(line: 78, column: 6, scope: !2432)
!2462 = !DILocation(line: 79, column: 15, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2458, file: !541, line: 78, column: 35)
!2464 = !DILocation(line: 79, column: 9, scope: !2463)
!2465 = !DILocation(line: 80, column: 2, scope: !2463)
!2466 = !DILocation(line: 80, column: 33, scope: !2467)
!2467 = !DILexicalBlockFile(scope: !2468, file: !541, discriminator: 1)
!2468 = distinct !DILexicalBlock(scope: !2458, file: !541, line: 80, column: 13)
!2469 = !DILocation(line: 80, column: 13, scope: !2467)
!2470 = !DILocation(line: 80, column: 52, scope: !2467)
!2471 = !DILocation(line: 80, column: 57, scope: !2467)
!2472 = !DILocation(line: 81, column: 26, scope: !2468)
!2473 = !DILocation(line: 81, column: 6, scope: !2468)
!2474 = !DILocation(line: 81, column: 46, scope: !2468)
!2475 = !DILocation(line: 80, column: 13, scope: !2476)
!2476 = !DILexicalBlockFile(scope: !2458, file: !541, discriminator: 2)
!2477 = !DILocation(line: 83, column: 17, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2468, file: !541, line: 81, column: 52)
!2479 = !DILocation(line: 83, column: 9, scope: !2478)
!2480 = !DILocation(line: 83, column: 7, scope: !2478)
!2481 = !DILocation(line: 84, column: 11, scope: !2478)
!2482 = !DILocation(line: 84, column: 14, scope: !2478)
!2483 = !DILocation(line: 84, column: 9, scope: !2478)
!2484 = !DILocation(line: 85, column: 3, scope: !2478)
!2485 = !DILocation(line: 85, column: 10, scope: !2486)
!2486 = !DILexicalBlockFile(scope: !2478, file: !541, discriminator: 1)
!2487 = !DILocation(line: 85, column: 18, scope: !2486)
!2488 = !DILocation(line: 85, column: 16, scope: !2486)
!2489 = !DILocation(line: 85, column: 26, scope: !2486)
!2490 = !DILocation(line: 85, column: 30, scope: !2491)
!2491 = !DILexicalBlockFile(scope: !2478, file: !541, discriminator: 2)
!2492 = !DILocation(line: 85, column: 29, scope: !2491)
!2493 = !DILocation(line: 85, column: 36, scope: !2491)
!2494 = !DILocation(line: 85, column: 3, scope: !2495)
!2495 = !DILexicalBlockFile(scope: !2478, file: !541, discriminator: 3)
!2496 = !DILocation(line: 85, column: 49, scope: !2497)
!2497 = !DILexicalBlockFile(scope: !2478, file: !541, discriminator: 4)
!2498 = !DILocation(line: 85, column: 3, scope: !2497)
!2499 = distinct !{!2499, !2484}
!2500 = !DILocation(line: 86, column: 2, scope: !2478)
!2501 = !DILocation(line: 88, column: 16, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2468, file: !541, line: 86, column: 9)
!2503 = !DILocation(line: 88, column: 9, scope: !2502)
!2504 = !DILocation(line: 88, column: 7, scope: !2502)
!2505 = !DILocation(line: 89, column: 11, scope: !2502)
!2506 = !DILocation(line: 89, column: 9, scope: !2502)
!2507 = !DILocation(line: 92, column: 6, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2432, file: !541, line: 92, column: 6)
!2509 = !DILocation(line: 92, column: 15, scope: !2508)
!2510 = !DILocation(line: 92, column: 12, scope: !2508)
!2511 = !DILocation(line: 92, column: 6, scope: !2432)
!2512 = !DILocation(line: 92, column: 28, scope: !2513)
!2513 = !DILexicalBlockFile(scope: !2508, file: !541, discriminator: 1)
!2514 = !DILocation(line: 92, column: 26, scope: !2513)
!2515 = !DILocation(line: 92, column: 20, scope: !2513)
!2516 = !DILocation(line: 92, column: 47, scope: !2517)
!2517 = !DILexicalBlockFile(scope: !2508, file: !541, discriminator: 2)
!2518 = !DILocation(line: 93, column: 6, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2432, file: !541, line: 93, column: 6)
!2520 = !DILocation(line: 93, column: 10, scope: !2519)
!2521 = !DILocation(line: 93, column: 6, scope: !2432)
!2522 = !DILocation(line: 93, column: 24, scope: !2523)
!2523 = !DILexicalBlockFile(scope: !2519, file: !541, discriminator: 1)
!2524 = !DILocation(line: 93, column: 41, scope: !2523)
!2525 = !DILocation(line: 93, column: 34, scope: !2523)
!2526 = !DILocation(line: 93, column: 32, scope: !2523)
!2527 = !DILocation(line: 93, column: 22, scope: !2523)
!2528 = !DILocation(line: 93, column: 18, scope: !2523)
!2529 = !DILocation(line: 95, column: 19, scope: !2432)
!2530 = !DILocation(line: 95, column: 33, scope: !2432)
!2531 = !DILocation(line: 95, column: 37, scope: !2432)
!2532 = !DILocation(line: 95, column: 36, scope: !2432)
!2533 = !DILocation(line: 95, column: 26, scope: !2432)
!2534 = !DILocation(line: 95, column: 9, scope: !2432)
!2535 = !DILocation(line: 95, column: 2, scope: !2432)
!2536 = !DILocation(line: 96, column: 1, scope: !2432)
!2537 = distinct !DISubprogram(name: "server_connect_callback_init_ssl", scope: !541, file: !541, line: 170, type: !2538, isLocal: true, isDefinition: true, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !549)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{null, !69, !148}
!2540 = !DILocalVariable(name: "server", arg: 1, scope: !2537, file: !541, line: 170, type: !69)
!2541 = !DILocation(line: 170, column: 58, scope: !2537)
!2542 = !DILocalVariable(name: "handle", arg: 2, scope: !2537, file: !541, line: 170, type: !148)
!2543 = !DILocation(line: 170, column: 78, scope: !2537)
!2544 = !DILocalVariable(name: "error", scope: !2537, file: !541, line: 172, type: !77)
!2545 = !DILocation(line: 172, column: 6, scope: !2537)
!2546 = !DILocation(line: 174, column: 2, scope: !2537)
!2547 = distinct !{!2547, !2546}
!2548 = !DILocation(line: 174, column: 45, scope: !2549)
!2549 = !DILexicalBlockFile(scope: !2550, file: !541, discriminator: 1)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !541, line: 174, column: 10)
!2551 = distinct !DILexicalBlock(scope: !2537, file: !541, line: 174, column: 4)
!2552 = !DILocation(line: 174, column: 27, scope: !2549)
!2553 = !DILocation(line: 174, column: 12, scope: !2549)
!2554 = !DILocation(line: 174, column: 10, scope: !2549)
!2555 = !DILocation(line: 174, column: 11, scope: !2556)
!2556 = !DILexicalBlockFile(scope: !2550, file: !541, discriminator: 2)
!2557 = !DILocation(line: 174, column: 10, scope: !2558)
!2558 = !DILexicalBlockFile(scope: !2551, file: !541, discriminator: 3)
!2559 = !DILocation(line: 174, column: 33, scope: !2560)
!2560 = !DILexicalBlockFile(scope: !2561, file: !541, discriminator: 4)
!2561 = distinct !DILexicalBlock(scope: !2550, file: !541, line: 174, column: 31)
!2562 = !DILocation(line: 174, column: 42, scope: !2563)
!2563 = !DILexicalBlockFile(scope: !2564, file: !541, discriminator: 5)
!2564 = distinct !DILexicalBlock(scope: !2550, file: !541, line: 174, column: 40)
!2565 = !DILocation(line: 174, column: 132, scope: !2563)
!2566 = !DILocation(line: 174, column: 143, scope: !2567)
!2567 = !DILexicalBlockFile(scope: !2551, file: !541, discriminator: 6)
!2568 = !DILocation(line: 176, column: 30, scope: !2537)
!2569 = !DILocation(line: 176, column: 10, scope: !2537)
!2570 = !DILocation(line: 176, column: 8, scope: !2537)
!2571 = !DILocation(line: 177, column: 6, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2537, file: !541, line: 177, column: 6)
!2573 = !DILocation(line: 177, column: 12, scope: !2572)
!2574 = !DILocation(line: 177, column: 6, scope: !2537)
!2575 = !DILocation(line: 178, column: 3, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2572, file: !541, line: 177, column: 19)
!2577 = !DILocation(line: 178, column: 11, scope: !2576)
!2578 = !DILocation(line: 178, column: 27, scope: !2576)
!2579 = !DILocation(line: 179, column: 25, scope: !2576)
!2580 = !DILocation(line: 179, column: 3, scope: !2576)
!2581 = !DILocation(line: 180, column: 3, scope: !2576)
!2582 = !DILocation(line: 182, column: 6, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2537, file: !541, line: 182, column: 6)
!2584 = !DILocation(line: 182, column: 12, scope: !2583)
!2585 = !DILocation(line: 182, column: 6, scope: !2537)
!2586 = !DILocation(line: 183, column: 7, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !541, line: 183, column: 7)
!2588 = distinct !DILexicalBlock(scope: !2583, file: !541, line: 182, column: 17)
!2589 = !DILocation(line: 183, column: 15, scope: !2587)
!2590 = !DILocation(line: 183, column: 27, scope: !2587)
!2591 = !DILocation(line: 183, column: 7, scope: !2588)
!2592 = !DILocation(line: 184, column: 20, scope: !2587)
!2593 = !DILocation(line: 184, column: 28, scope: !2587)
!2594 = !DILocation(line: 184, column: 4, scope: !2587)
!2595 = !DILocation(line: 185, column: 37, scope: !2588)
!2596 = !DILocation(line: 185, column: 45, scope: !2588)
!2597 = !DILocation(line: 185, column: 51, scope: !2588)
!2598 = !DILocation(line: 188, column: 9, scope: !2588)
!2599 = !DILocation(line: 185, column: 25, scope: !2588)
!2600 = !DILocation(line: 185, column: 3, scope: !2588)
!2601 = !DILocation(line: 185, column: 11, scope: !2588)
!2602 = !DILocation(line: 185, column: 23, scope: !2588)
!2603 = !DILocation(line: 189, column: 3, scope: !2588)
!2604 = !DILocation(line: 192, column: 34, scope: !2537)
!2605 = !DILocation(line: 192, column: 50, scope: !2537)
!2606 = !DILocation(line: 192, column: 19, scope: !2537)
!2607 = !DILocation(line: 192, column: 17, scope: !2537)
!2608 = !DILocation(line: 193, column: 6, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2537, file: !541, line: 193, column: 6)
!2610 = !DILocation(line: 193, column: 14, scope: !2609)
!2611 = !DILocation(line: 193, column: 26, scope: !2609)
!2612 = !DILocation(line: 193, column: 6, scope: !2537)
!2613 = !DILocation(line: 194, column: 19, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2609, file: !541, line: 193, column: 33)
!2615 = !DILocation(line: 194, column: 27, scope: !2614)
!2616 = !DILocation(line: 194, column: 3, scope: !2614)
!2617 = !DILocation(line: 195, column: 3, scope: !2614)
!2618 = !DILocation(line: 195, column: 11, scope: !2614)
!2619 = !DILocation(line: 195, column: 23, scope: !2614)
!2620 = !DILocation(line: 196, column: 2, scope: !2614)
!2621 = !DILocation(line: 198, column: 26, scope: !2537)
!2622 = !DILocation(line: 198, column: 2, scope: !2537)
!2623 = !DILocation(line: 199, column: 1, scope: !2537)
!2624 = !DILocation(line: 199, column: 1, scope: !2625)
!2625 = !DILexicalBlockFile(scope: !2537, file: !541, discriminator: 1)
!2626 = distinct !DISubprogram(name: "server_connect_callback_init", scope: !541, file: !541, line: 150, type: !2538, isLocal: true, isDefinition: true, scopeLine: 151, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !549)
!2627 = !DILocalVariable(name: "server", arg: 1, scope: !2626, file: !541, line: 150, type: !69)
!2628 = !DILocation(line: 150, column: 54, scope: !2626)
!2629 = !DILocalVariable(name: "handle", arg: 2, scope: !2626, file: !541, line: 150, type: !148)
!2630 = !DILocation(line: 150, column: 74, scope: !2626)
!2631 = !DILocalVariable(name: "error", scope: !2626, file: !541, line: 152, type: !77)
!2632 = !DILocation(line: 152, column: 6, scope: !2626)
!2633 = !DILocation(line: 154, column: 2, scope: !2626)
!2634 = distinct !{!2634, !2633}
!2635 = !DILocation(line: 154, column: 45, scope: !2636)
!2636 = !DILexicalBlockFile(scope: !2637, file: !541, discriminator: 1)
!2637 = distinct !DILexicalBlock(scope: !2638, file: !541, line: 154, column: 10)
!2638 = distinct !DILexicalBlock(scope: !2626, file: !541, line: 154, column: 4)
!2639 = !DILocation(line: 154, column: 27, scope: !2636)
!2640 = !DILocation(line: 154, column: 12, scope: !2636)
!2641 = !DILocation(line: 154, column: 10, scope: !2636)
!2642 = !DILocation(line: 154, column: 11, scope: !2643)
!2643 = !DILexicalBlockFile(scope: !2637, file: !541, discriminator: 2)
!2644 = !DILocation(line: 154, column: 10, scope: !2645)
!2645 = !DILexicalBlockFile(scope: !2638, file: !541, discriminator: 3)
!2646 = !DILocation(line: 154, column: 33, scope: !2647)
!2647 = !DILexicalBlockFile(scope: !2648, file: !541, discriminator: 4)
!2648 = distinct !DILexicalBlock(scope: !2637, file: !541, line: 154, column: 31)
!2649 = !DILocation(line: 154, column: 42, scope: !2650)
!2650 = !DILexicalBlockFile(scope: !2651, file: !541, discriminator: 5)
!2651 = distinct !DILexicalBlock(scope: !2637, file: !541, line: 154, column: 40)
!2652 = !DILocation(line: 154, column: 132, scope: !2650)
!2653 = !DILocation(line: 154, column: 143, scope: !2654)
!2654 = !DILexicalBlockFile(scope: !2638, file: !541, discriminator: 6)
!2655 = !DILocation(line: 156, column: 23, scope: !2626)
!2656 = !DILocation(line: 156, column: 10, scope: !2626)
!2657 = !DILocation(line: 156, column: 8, scope: !2626)
!2658 = !DILocation(line: 157, column: 6, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2626, file: !541, line: 157, column: 6)
!2660 = !DILocation(line: 157, column: 12, scope: !2659)
!2661 = !DILocation(line: 157, column: 6, scope: !2626)
!2662 = !DILocation(line: 158, column: 3, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2659, file: !541, line: 157, column: 18)
!2664 = !DILocation(line: 158, column: 11, scope: !2663)
!2665 = !DILocation(line: 158, column: 27, scope: !2663)
!2666 = !DILocation(line: 159, column: 25, scope: !2663)
!2667 = !DILocation(line: 159, column: 44, scope: !2663)
!2668 = !DILocation(line: 159, column: 33, scope: !2663)
!2669 = !DILocation(line: 159, column: 3, scope: !2670)
!2670 = !DILexicalBlockFile(scope: !2663, file: !541, discriminator: 1)
!2671 = !DILocation(line: 160, column: 3, scope: !2663)
!2672 = !DILocation(line: 163, column: 34, scope: !2626)
!2673 = !DILocation(line: 163, column: 50, scope: !2626)
!2674 = !DILocation(line: 163, column: 19, scope: !2626)
!2675 = !DILocation(line: 163, column: 17, scope: !2626)
!2676 = !DILocation(line: 164, column: 18, scope: !2626)
!2677 = !DILocation(line: 164, column: 26, scope: !2626)
!2678 = !DILocation(line: 164, column: 2, scope: !2626)
!2679 = !DILocation(line: 165, column: 2, scope: !2626)
!2680 = !DILocation(line: 165, column: 10, scope: !2626)
!2681 = !DILocation(line: 165, column: 22, scope: !2626)
!2682 = !DILocation(line: 167, column: 26, scope: !2626)
!2683 = !DILocation(line: 167, column: 2, scope: !2626)
!2684 = !DILocation(line: 168, column: 1, scope: !2626)
!2685 = !DILocation(line: 168, column: 1, scope: !2686)
!2686 = !DILexicalBlockFile(scope: !2626, file: !541, discriminator: 1)
!2687 = distinct !DISubprogram(name: "disconnect_servers", scope: !541, file: !541, line: 720, type: !2688, isLocal: true, isDefinition: true, scopeLine: 721, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !549)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{null, !271, !77}
!2690 = !DILocalVariable(name: "servers", arg: 1, scope: !2687, file: !541, line: 720, type: !271)
!2691 = !DILocation(line: 720, column: 40, scope: !2687)
!2692 = !DILocalVariable(name: "chat_type", arg: 2, scope: !2687, file: !541, line: 720, type: !77)
!2693 = !DILocation(line: 720, column: 53, scope: !2687)
!2694 = !DILocalVariable(name: "tmp", scope: !2687, file: !541, line: 722, type: !271)
!2695 = !DILocation(line: 722, column: 10, scope: !2687)
!2696 = !DILocalVariable(name: "next", scope: !2687, file: !541, line: 722, type: !271)
!2697 = !DILocation(line: 722, column: 16, scope: !2687)
!2698 = !DILocation(line: 724, column: 13, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2687, file: !541, line: 724, column: 2)
!2700 = !DILocation(line: 724, column: 11, scope: !2699)
!2701 = !DILocation(line: 724, column: 7, scope: !2699)
!2702 = !DILocation(line: 724, column: 22, scope: !2703)
!2703 = !DILexicalBlockFile(scope: !2704, file: !541, discriminator: 1)
!2704 = distinct !DILexicalBlock(scope: !2699, file: !541, line: 724, column: 2)
!2705 = !DILocation(line: 724, column: 26, scope: !2703)
!2706 = !DILocation(line: 724, column: 2, scope: !2703)
!2707 = !DILocalVariable(name: "rec", scope: !2708, file: !541, line: 725, type: !69)
!2708 = distinct !DILexicalBlock(scope: !2704, file: !541, line: 724, column: 46)
!2709 = !DILocation(line: 725, column: 15, scope: !2708)
!2710 = !DILocation(line: 725, column: 21, scope: !2708)
!2711 = !DILocation(line: 725, column: 26, scope: !2708)
!2712 = !DILocation(line: 727, column: 24, scope: !2708)
!2713 = !DILocation(line: 727, column: 29, scope: !2708)
!2714 = !DILocation(line: 727, column: 22, scope: !2708)
!2715 = !DILocation(line: 728, column: 21, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2708, file: !541, line: 728, column: 21)
!2717 = !DILocation(line: 728, column: 26, scope: !2716)
!2718 = !DILocation(line: 728, column: 39, scope: !2716)
!2719 = !DILocation(line: 728, column: 36, scope: !2716)
!2720 = !DILocation(line: 728, column: 21, scope: !2708)
!2721 = !DILocation(line: 729, column: 22, scope: !2716)
!2722 = !DILocation(line: 729, column: 4, scope: !2716)
!2723 = !DILocation(line: 730, column: 2, scope: !2708)
!2724 = !DILocation(line: 724, column: 40, scope: !2725)
!2725 = !DILexicalBlockFile(scope: !2704, file: !541, discriminator: 2)
!2726 = !DILocation(line: 724, column: 38, scope: !2725)
!2727 = !DILocation(line: 724, column: 2, scope: !2725)
!2728 = distinct !{!2728, !2729}
!2729 = !DILocation(line: 724, column: 2, scope: !2687)
!2730 = !DILocation(line: 731, column: 1, scope: !2687)
