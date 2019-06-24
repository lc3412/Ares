; ModuleID = './line240-fe-server.o.i'
source_filename = "./line240-fe-server.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
%struct._WINDOW_REC = type { i32, i8*, i32, i32, %struct._GSList*, %struct._WI_ITEM_REC*, %struct._SERVER_REC*, %struct._SERVER_REC*, i8*, i32, %struct._GSList*, i8, %struct.HISTORY_REC*, i8*, i32, i8*, i64, i64, i8*, i8*, i8* }
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)* }
%struct._GHashTable = type opaque
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
%struct._NET_SENDBUF_REC = type opaque
%struct._RAWLOG_REC = type opaque
%struct._GTimeVal = type { i64, i64 }
%struct._CHANNEL_REC = type opaque
%struct._QUERY_REC = type opaque
%struct.HISTORY_REC = type { i8*, %struct._GList*, i32, i32, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._SERVER_SETUP_REC = type { i32, i32, i8*, i16, i8*, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IPADDR*, %struct._IPADDR*, i64, i8, %struct._GHashTable* }
%struct.RECONNECT_REC = type { i32, i64, %struct._SERVER_CONNECT_REC* }
%struct._CHAT_PROTOCOL_REC = type { i32, i8, i8*, i8*, i8*, %struct._CHATNET_REC* ()*, %struct._SERVER_SETUP_REC* ()*, %struct._CHANNEL_SETUP_REC* ()*, %struct._SERVER_CONNECT_REC* ()*, void (%struct._SERVER_CONNECT_REC*)*, %struct._SERVER_REC* (%struct._SERVER_CONNECT_REC*)*, void (%struct._SERVER_REC*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*, i8*, i32)*, %struct._QUERY_REC* (i8*, i8*, i32)* }
%struct._CHATNET_REC = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IPADDR*, %struct._IPADDR* }
%struct._CHANNEL_SETUP_REC = type opaque

@.str = private unnamed_addr constant [15 x i8] c"fe-common/core\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"server connect\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"server add\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"server modify\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"server remove\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"disconnect\00", align 1
@.str.7 = private unnamed_addr constant [314 x i8] c"4 6 !! ssl nossl +ssl_cert +ssl_pkey +ssl_pass ssl_verify nossl_verify +ssl_cafile +ssl_capath +ssl_ciphers +ssl_fingerprint tls notls +tls_cert +tls_pkey +tls_pass tls_verify notls_verify +tls_cafile +tls_capath +tls_ciphers +tls_pinned_cert +tls_pinned_pubkey auto noauto proxy noproxy -host -port noautosendcmd\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"server looking\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"server connecting\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"server connected\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"server connect failed\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"server disconnected\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"server quit\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"server lag disconnect\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"server reconnect remove\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"server reconnect not found\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"chat protocol unknown\00", align 1
@servers = external global %struct._GSList*, align 8
@lookup_servers = external global %struct._GSList*, align 8
@reconnects = external global %struct._GSList*, align 8
@.str.18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"RECON-%d\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"%02d:%02d\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"error command\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"tls\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"ssl\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"network\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"notls\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"nossl\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"tls_cert\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"ssl_cert\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"tls_pkey\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"ssl_pkey\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"tls_pass\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"ssl_pass\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"tls_verify\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"ssl_verify\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"notls_verify\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"nossl_verify\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"tls_cafile\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"ssl_cafile\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"tls_capath\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"ssl_capath\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"tls_ciphers\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"ssl_ciphers\00", align 1
@.str.49 = private unnamed_addr constant [16 x i8] c"tls_pinned_cert\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"ssl_pinned_cert\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c"tls_pinned_pubkey\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"ssl_pinned_pubkey\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"noauto\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"proxy\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"noproxy\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.58 = private unnamed_addr constant [16 x i8] c"server add fill\00", align 1
@active_win = external global %struct._WINDOW_REC*, align 8
@__func__.sig_server_looking = private unnamed_addr constant [19 x i8] c"sig_server_looking\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"server != NULL\00", align 1
@__func__.sig_server_connecting = private unnamed_addr constant [22 x i8] c"sig_server_connecting\00", align 1
@__func__.sig_server_connected = private unnamed_addr constant [21 x i8] c"sig_server_connected\00", align 1
@__func__.sig_connect_failed = private unnamed_addr constant [19 x i8] c"sig_connect_failed\00", align 1
@__func__.sig_server_disconnected = private unnamed_addr constant [24 x i8] c"sig_server_disconnected\00", align 1
@__func__.sig_server_quit = private unnamed_addr constant [16 x i8] c"sig_server_quit\00", align 1
@__func__.sig_server_lag_disconnected = private unnamed_addr constant [28 x i8] c"sig_server_lag_disconnected\00", align 1
@__func__.sig_server_reconnect_removed = private unnamed_addr constant [29 x i8] c"sig_server_reconnect_removed\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"reconnect != NULL\00", align 1
@__func__.sig_server_reconnect_not_found = private unnamed_addr constant [31 x i8] c"sig_server_reconnect_not_found\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"tag != NULL\00", align 1
@__func__.sig_chat_protocol_unknown = private unnamed_addr constant [26 x i8] c"sig_chat_protocol_unknown\00", align 1
@.str.62 = private unnamed_addr constant [17 x i8] c"protocol != NULL\00", align 1

; Function Attrs: nounwind uwtable
define void @fe_server_init() #0 !dbg !350 {
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_server to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !355
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_server_connect to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !356
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_server_add to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !357
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_server_modify to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !358
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_server_remove to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !359
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @server_command to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !360
  call void @command_bind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @server_command to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !361
  call void @command_set_options_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([314 x i8], [314 x i8]* @.str.7, i32 0, i32 0)), !dbg !362
  call void @command_set_options_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([314 x i8], [314 x i8]* @.str.7, i32 0, i32 0)), !dbg !363
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_server_looking to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !364
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, %struct._IPADDR*)* @sig_server_connecting to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !365
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_server_connected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !366
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*)* @sig_connect_failed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !367
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_server_disconnected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !368
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*)* @sig_server_quit to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !369
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_server_lag_disconnected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !370
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.RECONNECT_REC*)* @sig_server_reconnect_removed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !371
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @sig_server_reconnect_not_found to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !372
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @sig_chat_protocol_unknown to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !373
  ret void, !dbg !374
}

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @cmd_server(i8*) #0 !dbg !375 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !378, metadata !379), !dbg !380
  %3 = load i8*, i8** %2, align 8, !dbg !381
  %4 = load i8, i8* %3, align 1, !dbg !383
  %5 = sext i8 %4 to i32, !dbg !383
  %6 = icmp ne i32 %5, 0, !dbg !384
  br i1 %6, label %7, label %8, !dbg !385

; <label>:7:                                      ; preds = %1
  br label %20, !dbg !386

; <label>:8:                                      ; preds = %1
  %9 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !387
  %10 = icmp eq %struct._GSList* %9, null, !dbg !389
  br i1 %10, label %11, label %18, !dbg !390

; <label>:11:                                     ; preds = %8
  %12 = load %struct._GSList*, %struct._GSList** @lookup_servers, align 8, !dbg !391
  %13 = icmp eq %struct._GSList* %12, null, !dbg !393
  br i1 %13, label %14, label %18, !dbg !394

; <label>:14:                                     ; preds = %11
  %15 = load %struct._GSList*, %struct._GSList** @reconnects, align 8, !dbg !395
  %16 = icmp eq %struct._GSList* %15, null, !dbg !396
  br i1 %16, label %17, label %18, !dbg !397

; <label>:17:                                     ; preds = %14
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 52), !dbg !399
  br label %19, !dbg !401

; <label>:18:                                     ; preds = %14, %11, %8
  call void @print_servers(), !dbg !402
  call void @print_lookup_servers(), !dbg !404
  call void @print_reconnects(), !dbg !405
  br label %19

; <label>:19:                                     ; preds = %18, %17
  call void @signal_stop(), !dbg !406
  br label %20, !dbg !407

; <label>:20:                                     ; preds = %19, %7
  ret void, !dbg !408
}

; Function Attrs: nounwind uwtable
define internal void @cmd_server_connect(i8*) #0 !dbg !410 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._GHashTable*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !411, metadata !379), !dbg !412
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %3, metadata !413, metadata !379), !dbg !418
  call void @llvm.dbg.declare(metadata i8** %4, metadata !419, metadata !379), !dbg !421
  call void @llvm.dbg.declare(metadata i8** %5, metadata !422, metadata !379), !dbg !423
  %6 = load i8*, i8** %2, align 8, !dbg !424
  %7 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %6, i8** %5, i32 16385, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), %struct._GHashTable** %3, i8** %4), !dbg !426
  %8 = icmp ne i32 %7, 0, !dbg !426
  br i1 %8, label %10, label %9, !dbg !427

; <label>:9:                                      ; preds = %1
  br label %35, !dbg !428

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** %4, align 8, !dbg !429
  %12 = load i8, i8* %11, align 1, !dbg !431
  %13 = sext i8 %12 to i32, !dbg !431
  %14 = icmp eq i32 %13, 0, !dbg !432
  br i1 %14, label %19, label %15, !dbg !433

; <label>:15:                                     ; preds = %10
  %16 = load i8*, i8** %4, align 8, !dbg !434
  %17 = call i32 @g_strcmp0(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)), !dbg !436
  %18 = icmp eq i32 %17, 0, !dbg !437
  br i1 %18, label %19, label %26, !dbg !438

; <label>:19:                                     ; preds = %15, %10
  br label %20, !dbg !439, !llvm.loop !440

; <label>:20:                                     ; preds = %19
  %21 = load i8*, i8** %5, align 8, !dbg !441
  call void @cmd_params_free(i8* %21), !dbg !444
  br label %22, !dbg !445, !llvm.loop !446

; <label>:22:                                     ; preds = %20
  %23 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !448
  call void @signal_stop(), !dbg !451
  br label %35, !dbg !453
                                                  ; No predecessors!
  br label %25, !dbg !454

; <label>:25:                                     ; preds = %24
  br label %26, !dbg !456

; <label>:26:                                     ; preds = %25, %15
  %27 = load i8*, i8** %4, align 8, !dbg !458
  %28 = load i8, i8* %27, align 1, !dbg !460
  %29 = sext i8 %28 to i32, !dbg !460
  %30 = icmp eq i32 %29, 43, !dbg !461
  br i1 %30, label %31, label %33, !dbg !462

; <label>:31:                                     ; preds = %26
  %32 = call %struct._WINDOW_REC* @window_create(%struct._WI_ITEM_REC* null, i32 0), !dbg !463
  br label %33, !dbg !463

; <label>:33:                                     ; preds = %31, %26
  %34 = load i8*, i8** %5, align 8, !dbg !465
  call void @cmd_params_free(i8* %34), !dbg !466
  br label %35, !dbg !467

; <label>:35:                                     ; preds = %33, %22, %9
  ret void, !dbg !468
}

; Function Attrs: nounwind uwtable
define internal void @cmd_server_add(i8*) #0 !dbg !470 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !471, metadata !379), !dbg !472
  %3 = load i8*, i8** %2, align 8, !dbg !473
  call void @cmd_server_add_modify(i8* %3, i32 1), !dbg !474
  ret void, !dbg !475
}

; Function Attrs: nounwind uwtable
define internal void @cmd_server_modify(i8*) #0 !dbg !476 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !477, metadata !379), !dbg !478
  %3 = load i8*, i8** %2, align 8, !dbg !479
  call void @cmd_server_add_modify(i8* %3, i32 0), !dbg !480
  ret void, !dbg !481
}

; Function Attrs: nounwind uwtable
define internal void @cmd_server_remove(i8*) #0 !dbg !482 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._SERVER_SETUP_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !483, metadata !379), !dbg !484
  call void @llvm.dbg.declare(metadata %struct._SERVER_SETUP_REC** %3, metadata !485, metadata !379), !dbg !559
  call void @llvm.dbg.declare(metadata i8** %4, metadata !560, metadata !379), !dbg !561
  call void @llvm.dbg.declare(metadata i8** %5, metadata !562, metadata !379), !dbg !563
  call void @llvm.dbg.declare(metadata i8** %6, metadata !564, metadata !379), !dbg !565
  call void @llvm.dbg.declare(metadata i8** %7, metadata !566, metadata !379), !dbg !567
  %8 = load i8*, i8** %2, align 8, !dbg !568
  %9 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %8, i8** %7, i32 3, i8** %4, i8** %5, i8** %6), !dbg !570
  %10 = icmp ne i32 %9, 0, !dbg !570
  br i1 %10, label %12, label %11, !dbg !571

; <label>:11:                                     ; preds = %1
  br label %71, !dbg !572

; <label>:12:                                     ; preds = %1
  %13 = load i8*, i8** %4, align 8, !dbg !573
  %14 = load i8, i8* %13, align 1, !dbg !575
  %15 = sext i8 %14 to i32, !dbg !575
  %16 = icmp eq i32 %15, 0, !dbg !576
  br i1 %16, label %17, label %24, !dbg !577

; <label>:17:                                     ; preds = %12
  br label %18, !dbg !578, !llvm.loop !580

; <label>:18:                                     ; preds = %17
  %19 = load i8*, i8** %7, align 8, !dbg !582
  call void @cmd_params_free(i8* %19), !dbg !585
  br label %20, !dbg !586, !llvm.loop !587

; <label>:20:                                     ; preds = %18
  %21 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !589
  call void @signal_stop(), !dbg !592
  br label %71, !dbg !594
                                                  ; No predecessors!
  br label %23, !dbg !595

; <label>:23:                                     ; preds = %22
  br label %24, !dbg !597

; <label>:24:                                     ; preds = %23, %12
  %25 = load i8*, i8** %5, align 8, !dbg !599
  %26 = load i8, i8* %25, align 1, !dbg !601
  %27 = sext i8 %26 to i32, !dbg !601
  %28 = icmp eq i32 %27, 0, !dbg !602
  br i1 %28, label %29, label %42, !dbg !603

; <label>:29:                                     ; preds = %24
  %30 = load i8*, i8** %6, align 8, !dbg !604
  %31 = load i8, i8* %30, align 1, !dbg !607
  %32 = sext i8 %31 to i32, !dbg !607
  %33 = icmp eq i32 %32, 0, !dbg !608
  br i1 %33, label %34, label %37, !dbg !609

; <label>:34:                                     ; preds = %29
  %35 = load i8*, i8** %4, align 8, !dbg !610
  %36 = call %struct._SERVER_SETUP_REC* @server_setup_find(i8* %35, i32 -1, i8* null), !dbg !611
  store %struct._SERVER_SETUP_REC* %36, %struct._SERVER_SETUP_REC** %3, align 8, !dbg !612
  br label %41, !dbg !613

; <label>:37:                                     ; preds = %29
  %38 = load i8*, i8** %4, align 8, !dbg !614
  %39 = load i8*, i8** %6, align 8, !dbg !615
  %40 = call %struct._SERVER_SETUP_REC* @server_setup_find(i8* %38, i32 -1, i8* %39), !dbg !616
  store %struct._SERVER_SETUP_REC* %40, %struct._SERVER_SETUP_REC** %3, align 8, !dbg !617
  br label %41

; <label>:41:                                     ; preds = %37, %34
  br label %59, !dbg !618

; <label>:42:                                     ; preds = %24
  %43 = load i8*, i8** %6, align 8, !dbg !619
  %44 = load i8, i8* %43, align 1, !dbg !622
  %45 = sext i8 %44 to i32, !dbg !622
  %46 = icmp eq i32 %45, 0, !dbg !623
  br i1 %46, label %47, label %52, !dbg !624

; <label>:47:                                     ; preds = %42
  %48 = load i8*, i8** %4, align 8, !dbg !625
  %49 = load i8*, i8** %5, align 8, !dbg !626
  %50 = call i32 @atoi(i8* %49) #5, !dbg !627
  %51 = call %struct._SERVER_SETUP_REC* @server_setup_find(i8* %48, i32 %50, i8* null), !dbg !628
  store %struct._SERVER_SETUP_REC* %51, %struct._SERVER_SETUP_REC** %3, align 8, !dbg !630
  br label %58, !dbg !631

; <label>:52:                                     ; preds = %42
  %53 = load i8*, i8** %4, align 8, !dbg !632
  %54 = load i8*, i8** %5, align 8, !dbg !633
  %55 = call i32 @atoi(i8* %54) #5, !dbg !634
  %56 = load i8*, i8** %6, align 8, !dbg !635
  %57 = call %struct._SERVER_SETUP_REC* @server_setup_find(i8* %53, i32 %55, i8* %56), !dbg !636
  store %struct._SERVER_SETUP_REC* %57, %struct._SERVER_SETUP_REC** %3, align 8, !dbg !637
  br label %58

; <label>:58:                                     ; preds = %52, %47
  br label %59

; <label>:59:                                     ; preds = %58, %41
  %60 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %3, align 8, !dbg !638
  %61 = icmp eq %struct._SERVER_SETUP_REC* %60, null, !dbg !640
  br i1 %61, label %62, label %65, !dbg !641

; <label>:62:                                     ; preds = %59
  %63 = load i8*, i8** %4, align 8, !dbg !642
  %64 = load i8*, i8** %5, align 8, !dbg !643
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 60, i8* %63, i8* %64), !dbg !644
  br label %69, !dbg !644

; <label>:65:                                     ; preds = %59
  %66 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %3, align 8, !dbg !645
  call void @server_setup_remove(%struct._SERVER_SETUP_REC* %66), !dbg !647
  %67 = load i8*, i8** %4, align 8, !dbg !648
  %68 = load i8*, i8** %5, align 8, !dbg !649
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 59, i8* %67, i8* %68), !dbg !650
  br label %69

; <label>:69:                                     ; preds = %65, %62
  %70 = load i8*, i8** %7, align 8, !dbg !651
  call void @cmd_params_free(i8* %70), !dbg !652
  br label %71, !dbg !653

; <label>:71:                                     ; preds = %69, %20, %11
  ret void, !dbg !654
}

; Function Attrs: nounwind uwtable
define internal void @server_command(i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !656 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !998, metadata !379), !dbg !999
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !1000, metadata !379), !dbg !1001
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !1002, metadata !379), !dbg !1003
  %7 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1004
  %8 = icmp eq %struct._SERVER_REC* %7, null, !dbg !1006
  br i1 %8, label %9, label %13, !dbg !1007

; <label>:9:                                      ; preds = %3
  %10 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1008
  %11 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %10, i32 0, i32 7, !dbg !1010
  %12 = load %struct._SERVER_REC*, %struct._SERVER_REC** %11, align 8, !dbg !1010
  store %struct._SERVER_REC* %12, %struct._SERVER_REC** %5, align 8, !dbg !1011
  br label %13, !dbg !1012

; <label>:13:                                     ; preds = %9, %3
  %14 = load i8*, i8** %4, align 8, !dbg !1013
  %15 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1014
  %16 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1015
  call void (i32, ...) @signal_continue(i32 3, i8* %14, %struct._SERVER_REC* %15, %struct._WI_ITEM_REC* %16), !dbg !1016
  ret void, !dbg !1017
}

declare void @command_set_options_module(i8*, i8*, i8*) #1

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @sig_server_looking(%struct._SERVER_REC*) #0 !dbg !1018 {
  %2 = alloca %struct._SERVER_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %2, metadata !1021, metadata !379), !dbg !1022
  br label %3, !dbg !1023, !llvm.loop !1024

; <label>:3:                                      ; preds = %1
  %4 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1025
  %5 = icmp ne %struct._SERVER_REC* %4, null, !dbg !1029
  br i1 %5, label %6, label %7, !dbg !1025

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !1030

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.sig_server_looking, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.59, i32 0, i32 0)), !dbg !1033
  br label %17, !dbg !1036

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !1037

; <label>:9:                                      ; preds = %8
  %10 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1039
  %11 = bitcast %struct._SERVER_REC* %10 to i8*, !dbg !1039
  %12 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1040
  %13 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %12, i32 0, i32 3, !dbg !1041
  %14 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %13, align 8, !dbg !1041
  %15 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %14, i32 0, i32 10, !dbg !1042
  %16 = load i8*, i8** %15, align 8, !dbg !1042
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* %11, i8* null, i32 262144, i32 41, i8* %16), !dbg !1043
  br label %17, !dbg !1044

; <label>:17:                                     ; preds = %9, %7
  ret void, !dbg !1045
}

; Function Attrs: nounwind uwtable
define internal void @sig_server_connecting(%struct._SERVER_REC*, %struct._IPADDR*) #0 !dbg !1047 {
  %3 = alloca %struct._SERVER_REC*, align 8
  %4 = alloca %struct._IPADDR*, align 8
  %5 = alloca [46 x i8], align 16
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %3, metadata !1050, metadata !379), !dbg !1051
  store %struct._IPADDR* %1, %struct._IPADDR** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IPADDR** %4, metadata !1052, metadata !379), !dbg !1053
  call void @llvm.dbg.declare(metadata [46 x i8]* %5, metadata !1054, metadata !379), !dbg !1058
  br label %6, !dbg !1059, !llvm.loop !1060

; <label>:6:                                      ; preds = %2
  %7 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1061
  %8 = icmp ne %struct._SERVER_REC* %7, null, !dbg !1065
  br i1 %8, label %9, label %10, !dbg !1061

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !1066

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.sig_server_connecting, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.59, i32 0, i32 0)), !dbg !1069
  br label %46, !dbg !1072

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !1073

; <label>:12:                                     ; preds = %11
  %13 = load %struct._IPADDR*, %struct._IPADDR** %4, align 8, !dbg !1075
  %14 = icmp eq %struct._IPADDR* %13, null, !dbg !1077
  br i1 %14, label %15, label %17, !dbg !1078

; <label>:15:                                     ; preds = %12
  %16 = getelementptr inbounds [46 x i8], [46 x i8]* %5, i64 0, i64 0, !dbg !1079
  store i8 0, i8* %16, align 16, !dbg !1080
  br label %21, !dbg !1079

; <label>:17:                                     ; preds = %12
  %18 = load %struct._IPADDR*, %struct._IPADDR** %4, align 8, !dbg !1081
  %19 = getelementptr inbounds [46 x i8], [46 x i8]* %5, i32 0, i32 0, !dbg !1082
  %20 = call i32 @net_ip2host(%struct._IPADDR* %18, i8* %19), !dbg !1083
  br label %21

; <label>:21:                                     ; preds = %17, %15
  %22 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1084
  %23 = bitcast %struct._SERVER_REC* %22 to i8*, !dbg !1084
  %24 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1085
  %25 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %24, i32 0, i32 3, !dbg !1086
  %26 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %25, align 8, !dbg !1086
  %27 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %26, i32 0, i32 28, !dbg !1087
  %28 = load i8, i8* %27, align 8, !dbg !1087
  %29 = lshr i8 %28, 1, !dbg !1087
  %30 = and i8 %29, 1, !dbg !1087
  %31 = zext i8 %30 to i32, !dbg !1087
  %32 = icmp ne i32 %31, 0, !dbg !1088
  %33 = xor i1 %32, true, !dbg !1088
  %34 = select i1 %33, i32 42, i32 43, !dbg !1088
  %35 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1089
  %36 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %35, i32 0, i32 3, !dbg !1090
  %37 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %36, align 8, !dbg !1090
  %38 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %37, i32 0, i32 10, !dbg !1091
  %39 = load i8*, i8** %38, align 8, !dbg !1091
  %40 = getelementptr inbounds [46 x i8], [46 x i8]* %5, i32 0, i32 0, !dbg !1092
  %41 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1093
  %42 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %41, i32 0, i32 3, !dbg !1094
  %43 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %42, align 8, !dbg !1094
  %44 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %43, i32 0, i32 11, !dbg !1095
  %45 = load i32, i32* %44, align 8, !dbg !1095
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* %23, i8* null, i32 262144, i32 %34, i8* %39, i8* %40, i32 %45), !dbg !1096
  br label %46, !dbg !1097

; <label>:46:                                     ; preds = %21, %10
  ret void, !dbg !1098
}

; Function Attrs: nounwind uwtable
define internal void @sig_server_connected(%struct._SERVER_REC*) #0 !dbg !1100 {
  %2 = alloca %struct._SERVER_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %2, metadata !1101, metadata !379), !dbg !1102
  br label %3, !dbg !1103, !llvm.loop !1104

; <label>:3:                                      ; preds = %1
  %4 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1105
  %5 = icmp ne %struct._SERVER_REC* %4, null, !dbg !1109
  br i1 %5, label %6, label %7, !dbg !1105

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !1110

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.sig_server_connected, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.59, i32 0, i32 0)), !dbg !1113
  br label %17, !dbg !1116

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !1117

; <label>:9:                                      ; preds = %8
  %10 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1119
  %11 = bitcast %struct._SERVER_REC* %10 to i8*, !dbg !1119
  %12 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1120
  %13 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %12, i32 0, i32 3, !dbg !1121
  %14 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %13, align 8, !dbg !1121
  %15 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %14, i32 0, i32 10, !dbg !1122
  %16 = load i8*, i8** %15, align 8, !dbg !1122
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* %11, i8* null, i32 262144, i32 44, i8* %16), !dbg !1123
  br label %17, !dbg !1124

; <label>:17:                                     ; preds = %9, %7
  ret void, !dbg !1125
}

; Function Attrs: nounwind uwtable
define internal void @sig_connect_failed(%struct._SERVER_REC*, i8*) #0 !dbg !1127 {
  %3 = alloca %struct._SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %3, metadata !1130, metadata !379), !dbg !1131
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1132, metadata !379), !dbg !1133
  br label %5, !dbg !1134, !llvm.loop !1135

; <label>:5:                                      ; preds = %2
  %6 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1136
  %7 = icmp ne %struct._SERVER_REC* %6, null, !dbg !1140
  br i1 %7, label %8, label %9, !dbg !1136

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !1141

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.sig_connect_failed, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.59, i32 0, i32 0)), !dbg !1144
  br label %36, !dbg !1147

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !1148

; <label>:11:                                     ; preds = %10
  %12 = load i8*, i8** %4, align 8, !dbg !1150
  %13 = icmp eq i8* %12, null, !dbg !1152
  br i1 %13, label %14, label %22, !dbg !1153

; <label>:14:                                     ; preds = %11
  %15 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1154
  %16 = bitcast %struct._SERVER_REC* %15 to i8*, !dbg !1154
  %17 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1156
  %18 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %17, i32 0, i32 3, !dbg !1157
  %19 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %18, align 8, !dbg !1157
  %20 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %19, i32 0, i32 10, !dbg !1158
  %21 = load i8*, i8** %20, align 8, !dbg !1158
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* %16, i8* null, i32 262144, i32 46, i8* %21), !dbg !1159
  br label %36, !dbg !1160

; <label>:22:                                     ; preds = %11
  %23 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1161
  %24 = bitcast %struct._SERVER_REC* %23 to i8*, !dbg !1161
  %25 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1163
  %26 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %25, i32 0, i32 3, !dbg !1164
  %27 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %26, align 8, !dbg !1164
  %28 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %27, i32 0, i32 10, !dbg !1165
  %29 = load i8*, i8** %28, align 8, !dbg !1165
  %30 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1166
  %31 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %30, i32 0, i32 3, !dbg !1167
  %32 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %31, align 8, !dbg !1167
  %33 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %32, i32 0, i32 11, !dbg !1168
  %34 = load i32, i32* %33, align 8, !dbg !1168
  %35 = load i8*, i8** %4, align 8, !dbg !1169
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* %24, i8* null, i32 1048576, i32 45, i8* %29, i32 %34, i8* %35), !dbg !1170
  br label %36

; <label>:36:                                     ; preds = %9, %22, %14
  ret void, !dbg !1171
}

; Function Attrs: nounwind uwtable
define internal void @sig_server_disconnected(%struct._SERVER_REC*) #0 !dbg !1172 {
  %2 = alloca %struct._SERVER_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %2, metadata !1173, metadata !379), !dbg !1174
  br label %3, !dbg !1175, !llvm.loop !1176

; <label>:3:                                      ; preds = %1
  %4 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1177
  %5 = icmp ne %struct._SERVER_REC* %4, null, !dbg !1181
  br i1 %5, label %6, label %7, !dbg !1177

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !1182

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.sig_server_disconnected, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.59, i32 0, i32 0)), !dbg !1185
  br label %17, !dbg !1188

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !1189

; <label>:9:                                      ; preds = %8
  %10 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1191
  %11 = bitcast %struct._SERVER_REC* %10 to i8*, !dbg !1191
  %12 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1192
  %13 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %12, i32 0, i32 3, !dbg !1193
  %14 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %13, align 8, !dbg !1193
  %15 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %14, i32 0, i32 10, !dbg !1194
  %16 = load i8*, i8** %15, align 8, !dbg !1194
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* %11, i8* null, i32 262144, i32 46, i8* %16), !dbg !1195
  br label %17, !dbg !1196

; <label>:17:                                     ; preds = %9, %7
  ret void, !dbg !1197
}

; Function Attrs: nounwind uwtable
define internal void @sig_server_quit(%struct._SERVER_REC*, i8*) #0 !dbg !1199 {
  %3 = alloca %struct._SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %3, metadata !1202, metadata !379), !dbg !1203
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1204, metadata !379), !dbg !1205
  br label %5, !dbg !1206, !llvm.loop !1207

; <label>:5:                                      ; preds = %2
  %6 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1208
  %7 = icmp ne %struct._SERVER_REC* %6, null, !dbg !1212
  br i1 %7, label %8, label %9, !dbg !1208

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !1213

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.sig_server_quit, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.59, i32 0, i32 0)), !dbg !1216
  br label %20, !dbg !1219

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !1220

; <label>:11:                                     ; preds = %10
  %12 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1222
  %13 = bitcast %struct._SERVER_REC* %12 to i8*, !dbg !1222
  %14 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !1223
  %15 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %14, i32 0, i32 3, !dbg !1224
  %16 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %15, align 8, !dbg !1224
  %17 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %16, i32 0, i32 10, !dbg !1225
  %18 = load i8*, i8** %17, align 8, !dbg !1225
  %19 = load i8*, i8** %4, align 8, !dbg !1226
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* %13, i8* null, i32 262144, i32 49, i8* %18, i8* %19), !dbg !1227
  br label %20, !dbg !1228

; <label>:20:                                     ; preds = %11, %9
  ret void, !dbg !1229
}

; Function Attrs: nounwind uwtable
define internal void @sig_server_lag_disconnected(%struct._SERVER_REC*) #0 !dbg !1231 {
  %2 = alloca %struct._SERVER_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %2, metadata !1232, metadata !379), !dbg !1233
  br label %3, !dbg !1234, !llvm.loop !1235

; <label>:3:                                      ; preds = %1
  %4 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1236
  %5 = icmp ne %struct._SERVER_REC* %4, null, !dbg !1240
  br i1 %5, label %6, label %7, !dbg !1236

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !1241

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.sig_server_lag_disconnected, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.59, i32 0, i32 0)), !dbg !1244
  br label %23, !dbg !1247

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !1248

; <label>:9:                                      ; preds = %8
  %10 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1250
  %11 = bitcast %struct._SERVER_REC* %10 to i8*, !dbg !1250
  %12 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1251
  %13 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %12, i32 0, i32 3, !dbg !1252
  %14 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %13, align 8, !dbg !1252
  %15 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %14, i32 0, i32 10, !dbg !1253
  %16 = load i8*, i8** %15, align 8, !dbg !1253
  %17 = call i64 @time(i64* null) #6, !dbg !1254
  %18 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1255
  %19 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %18, i32 0, i32 20, !dbg !1256
  %20 = getelementptr inbounds %struct._GTimeVal, %struct._GTimeVal* %19, i32 0, i32 0, !dbg !1257
  %21 = load i64, i64* %20, align 8, !dbg !1257
  %22 = sub nsw i64 %17, %21, !dbg !1258
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* %11, i8* null, i32 262144, i32 47, i8* %16, i64 %22), !dbg !1259
  br label %23, !dbg !1261

; <label>:23:                                     ; preds = %9, %7
  ret void, !dbg !1262
}

; Function Attrs: nounwind uwtable
define internal void @sig_server_reconnect_removed(%struct.RECONNECT_REC*) #0 !dbg !1263 {
  %2 = alloca %struct.RECONNECT_REC*, align 8
  store %struct.RECONNECT_REC* %0, %struct.RECONNECT_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.RECONNECT_REC** %2, metadata !1274, metadata !379), !dbg !1275
  br label %3, !dbg !1276, !llvm.loop !1277

; <label>:3:                                      ; preds = %1
  %4 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %2, align 8, !dbg !1278
  %5 = icmp ne %struct.RECONNECT_REC* %4, null, !dbg !1282
  br i1 %5, label %6, label %7, !dbg !1278

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !1283

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.sig_server_reconnect_removed, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.60, i32 0, i32 0)), !dbg !1286
  br label %35, !dbg !1289

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !1290

; <label>:9:                                      ; preds = %8
  %10 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %2, align 8, !dbg !1292
  %11 = getelementptr inbounds %struct.RECONNECT_REC, %struct.RECONNECT_REC* %10, i32 0, i32 2, !dbg !1293
  %12 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %11, align 8, !dbg !1293
  %13 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %12, i32 0, i32 10, !dbg !1294
  %14 = load i8*, i8** %13, align 8, !dbg !1294
  %15 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %2, align 8, !dbg !1295
  %16 = getelementptr inbounds %struct.RECONNECT_REC, %struct.RECONNECT_REC* %15, i32 0, i32 2, !dbg !1296
  %17 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %16, align 8, !dbg !1296
  %18 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %17, i32 0, i32 11, !dbg !1297
  %19 = load i32, i32* %18, align 8, !dbg !1297
  %20 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %2, align 8, !dbg !1298
  %21 = getelementptr inbounds %struct.RECONNECT_REC, %struct.RECONNECT_REC* %20, i32 0, i32 2, !dbg !1299
  %22 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %21, align 8, !dbg !1299
  %23 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %22, i32 0, i32 12, !dbg !1300
  %24 = load i8*, i8** %23, align 8, !dbg !1300
  %25 = icmp eq i8* %24, null, !dbg !1301
  br i1 %25, label %26, label %27, !dbg !1298

; <label>:26:                                     ; preds = %9
  br label %33, !dbg !1302

; <label>:27:                                     ; preds = %9
  %28 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %2, align 8, !dbg !1304
  %29 = getelementptr inbounds %struct.RECONNECT_REC, %struct.RECONNECT_REC* %28, i32 0, i32 2, !dbg !1306
  %30 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %29, align 8, !dbg !1306
  %31 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %30, i32 0, i32 12, !dbg !1307
  %32 = load i8*, i8** %31, align 8, !dbg !1307
  br label %33, !dbg !1308

; <label>:33:                                     ; preds = %27, %26
  %34 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i32 0, i32 0), %26 ], [ %32, %27 ], !dbg !1309
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 56, i8* %14, i32 %19, i8* %34), !dbg !1311
  br label %35, !dbg !1312

; <label>:35:                                     ; preds = %33, %7
  ret void, !dbg !1313
}

; Function Attrs: nounwind uwtable
define internal void @sig_server_reconnect_not_found(i8*) #0 !dbg !1314 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1315, metadata !379), !dbg !1316
  br label %3, !dbg !1317, !llvm.loop !1318

; <label>:3:                                      ; preds = %1
  %4 = load i8*, i8** %2, align 8, !dbg !1319
  %5 = icmp ne i8* %4, null, !dbg !1323
  br i1 %5, label %6, label %7, !dbg !1319

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !1324

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.sig_server_reconnect_not_found, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i32 0, i32 0)), !dbg !1327
  br label %11, !dbg !1330

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !1331

; <label>:9:                                      ; preds = %8
  %10 = load i8*, i8** %2, align 8, !dbg !1333
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 57, i8* %10), !dbg !1334
  br label %11, !dbg !1335

; <label>:11:                                     ; preds = %9, %7
  ret void, !dbg !1336
}

; Function Attrs: nounwind uwtable
define internal void @sig_chat_protocol_unknown(i8*) #0 !dbg !1338 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1339, metadata !379), !dbg !1340
  br label %3, !dbg !1341, !llvm.loop !1342

; <label>:3:                                      ; preds = %1
  %4 = load i8*, i8** %2, align 8, !dbg !1343
  %5 = icmp ne i8* %4, null, !dbg !1347
  br i1 %5, label %6, label %7, !dbg !1343

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !1348

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.sig_chat_protocol_unknown, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.62, i32 0, i32 0)), !dbg !1351
  br label %11, !dbg !1354

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !1355

; <label>:9:                                      ; preds = %8
  %10 = load i8*, i8** %2, align 8, !dbg !1357
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 1048576, i32 203, i8* %10), !dbg !1358
  br label %11, !dbg !1359

; <label>:11:                                     ; preds = %9, %7
  ret void, !dbg !1360
}

; Function Attrs: nounwind uwtable
define void @fe_server_deinit() #0 !dbg !1362 {
  call void @command_unbind_full(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_server to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1363
  call void @command_unbind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_server_connect to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1364
  call void @command_unbind_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_server_add to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1365
  call void @command_unbind_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_server_modify to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1366
  call void @command_unbind_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_server_remove to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1367
  call void @command_unbind_full(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @server_command to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1368
  call void @command_unbind_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @server_command to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1369
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_server_looking to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1370
  call void @signal_remove_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, %struct._IPADDR*)* @sig_server_connecting to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1371
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_server_connected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1372
  call void @signal_remove_full(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*)* @sig_connect_failed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1373
  call void @signal_remove_full(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_server_disconnected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1374
  call void @signal_remove_full(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*)* @sig_server_quit to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1375
  call void @signal_remove_full(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_server_lag_disconnected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1376
  call void @signal_remove_full(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.RECONNECT_REC*)* @sig_server_reconnect_removed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1377
  call void @signal_remove_full(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @sig_server_reconnect_not_found to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1378
  call void @signal_remove_full(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @sig_chat_protocol_unknown to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1379
  ret void, !dbg !1380
}

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare void @printformat_module(i8*, i8*, i8*, i32, i32, ...) #1

; Function Attrs: nounwind uwtable
define internal void @print_servers() #0 !dbg !1381 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca %struct._SERVER_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !1382, metadata !379), !dbg !1383
  %3 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !1384
  store %struct._GSList* %3, %struct._GSList** %1, align 8, !dbg !1386
  br label %4, !dbg !1387

; <label>:4:                                      ; preds = %45, %0
  %5 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1388
  %6 = icmp ne %struct._GSList* %5, null, !dbg !1391
  br i1 %6, label %7, label %49, !dbg !1392

; <label>:7:                                      ; preds = %4
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %2, metadata !1393, metadata !379), !dbg !1395
  %8 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1396
  %9 = getelementptr inbounds %struct._GSList, %struct._GSList* %8, i32 0, i32 0, !dbg !1397
  %10 = load i8*, i8** %9, align 8, !dbg !1397
  %11 = bitcast i8* %10 to %struct._SERVER_REC*, !dbg !1396
  store %struct._SERVER_REC* %11, %struct._SERVER_REC** %2, align 8, !dbg !1395
  %12 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1398
  %13 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %12, i32 0, i32 6, !dbg !1399
  %14 = load i8*, i8** %13, align 8, !dbg !1399
  %15 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1400
  %16 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %15, i32 0, i32 3, !dbg !1401
  %17 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %16, align 8, !dbg !1401
  %18 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %17, i32 0, i32 10, !dbg !1402
  %19 = load i8*, i8** %18, align 8, !dbg !1402
  %20 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1403
  %21 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %20, i32 0, i32 3, !dbg !1404
  %22 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %21, align 8, !dbg !1404
  %23 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %22, i32 0, i32 11, !dbg !1405
  %24 = load i32, i32* %23, align 8, !dbg !1405
  %25 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1406
  %26 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %25, i32 0, i32 3, !dbg !1407
  %27 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %26, align 8, !dbg !1407
  %28 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %27, i32 0, i32 12, !dbg !1408
  %29 = load i8*, i8** %28, align 8, !dbg !1408
  %30 = icmp eq i8* %29, null, !dbg !1409
  br i1 %30, label %31, label %32, !dbg !1406

; <label>:31:                                     ; preds = %7
  br label %38, !dbg !1410

; <label>:32:                                     ; preds = %7
  %33 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1412
  %34 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %33, i32 0, i32 3, !dbg !1414
  %35 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %34, align 8, !dbg !1414
  %36 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %35, i32 0, i32 12, !dbg !1415
  %37 = load i8*, i8** %36, align 8, !dbg !1415
  br label %38, !dbg !1416

; <label>:38:                                     ; preds = %32, %31
  %39 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i32 0, i32 0), %31 ], [ %37, %32 ], !dbg !1417
  %40 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1419
  %41 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %40, i32 0, i32 3, !dbg !1420
  %42 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %41, align 8, !dbg !1420
  %43 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %42, i32 0, i32 16, !dbg !1421
  %44 = load i8*, i8** %43, align 8, !dbg !1421
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 1, i32 53, i8* %14, i8* %19, i32 %24, i8* %39, i8* %44), !dbg !1422
  br label %45, !dbg !1423

; <label>:45:                                     ; preds = %38
  %46 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1424
  %47 = getelementptr inbounds %struct._GSList, %struct._GSList* %46, i32 0, i32 1, !dbg !1426
  %48 = load %struct._GSList*, %struct._GSList** %47, align 8, !dbg !1426
  store %struct._GSList* %48, %struct._GSList** %1, align 8, !dbg !1427
  br label %4, !dbg !1428, !llvm.loop !1429

; <label>:49:                                     ; preds = %4
  ret void, !dbg !1431
}

; Function Attrs: nounwind uwtable
define internal void @print_lookup_servers() #0 !dbg !1432 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca %struct._SERVER_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !1433, metadata !379), !dbg !1434
  %3 = load %struct._GSList*, %struct._GSList** @lookup_servers, align 8, !dbg !1435
  store %struct._GSList* %3, %struct._GSList** %1, align 8, !dbg !1437
  br label %4, !dbg !1438

; <label>:4:                                      ; preds = %45, %0
  %5 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1439
  %6 = icmp ne %struct._GSList* %5, null, !dbg !1442
  br i1 %6, label %7, label %49, !dbg !1443

; <label>:7:                                      ; preds = %4
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %2, metadata !1444, metadata !379), !dbg !1446
  %8 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1447
  %9 = getelementptr inbounds %struct._GSList, %struct._GSList* %8, i32 0, i32 0, !dbg !1448
  %10 = load i8*, i8** %9, align 8, !dbg !1448
  %11 = bitcast i8* %10 to %struct._SERVER_REC*, !dbg !1447
  store %struct._SERVER_REC* %11, %struct._SERVER_REC** %2, align 8, !dbg !1446
  %12 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1449
  %13 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %12, i32 0, i32 6, !dbg !1450
  %14 = load i8*, i8** %13, align 8, !dbg !1450
  %15 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1451
  %16 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %15, i32 0, i32 3, !dbg !1452
  %17 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %16, align 8, !dbg !1452
  %18 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %17, i32 0, i32 10, !dbg !1453
  %19 = load i8*, i8** %18, align 8, !dbg !1453
  %20 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1454
  %21 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %20, i32 0, i32 3, !dbg !1455
  %22 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %21, align 8, !dbg !1455
  %23 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %22, i32 0, i32 11, !dbg !1456
  %24 = load i32, i32* %23, align 8, !dbg !1456
  %25 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1457
  %26 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %25, i32 0, i32 3, !dbg !1458
  %27 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %26, align 8, !dbg !1458
  %28 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %27, i32 0, i32 12, !dbg !1459
  %29 = load i8*, i8** %28, align 8, !dbg !1459
  %30 = icmp eq i8* %29, null, !dbg !1460
  br i1 %30, label %31, label %32, !dbg !1457

; <label>:31:                                     ; preds = %7
  br label %38, !dbg !1461

; <label>:32:                                     ; preds = %7
  %33 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1463
  %34 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %33, i32 0, i32 3, !dbg !1465
  %35 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %34, align 8, !dbg !1465
  %36 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %35, i32 0, i32 12, !dbg !1466
  %37 = load i8*, i8** %36, align 8, !dbg !1466
  br label %38, !dbg !1467

; <label>:38:                                     ; preds = %32, %31
  %39 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i32 0, i32 0), %31 ], [ %37, %32 ], !dbg !1468
  %40 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1470
  %41 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %40, i32 0, i32 3, !dbg !1471
  %42 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %41, align 8, !dbg !1471
  %43 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %42, i32 0, i32 16, !dbg !1472
  %44 = load i8*, i8** %43, align 8, !dbg !1472
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 1, i32 54, i8* %14, i8* %19, i32 %24, i8* %39, i8* %44), !dbg !1473
  br label %45, !dbg !1474

; <label>:45:                                     ; preds = %38
  %46 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1475
  %47 = getelementptr inbounds %struct._GSList, %struct._GSList* %46, i32 0, i32 1, !dbg !1477
  %48 = load %struct._GSList*, %struct._GSList** %47, align 8, !dbg !1477
  store %struct._GSList* %48, %struct._GSList** %1, align 8, !dbg !1478
  br label %4, !dbg !1479, !llvm.loop !1480

; <label>:49:                                     ; preds = %4
  ret void, !dbg !1482
}

; Function Attrs: nounwind uwtable
define internal void @print_reconnects() #0 !dbg !1483 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.RECONNECT_REC*, align 8
  %6 = alloca %struct._SERVER_CONNECT_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !1484, metadata !379), !dbg !1485
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1486, metadata !379), !dbg !1487
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1488, metadata !379), !dbg !1489
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1490, metadata !379), !dbg !1491
  %7 = load %struct._GSList*, %struct._GSList** @reconnects, align 8, !dbg !1492
  store %struct._GSList* %7, %struct._GSList** %1, align 8, !dbg !1494
  br label %8, !dbg !1495

; <label>:8:                                      ; preds = %58, %0
  %9 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1496
  %10 = icmp ne %struct._GSList* %9, null, !dbg !1499
  br i1 %10, label %11, label %62, !dbg !1500

; <label>:11:                                     ; preds = %8
  call void @llvm.dbg.declare(metadata %struct.RECONNECT_REC** %5, metadata !1501, metadata !379), !dbg !1503
  %12 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1504
  %13 = getelementptr inbounds %struct._GSList, %struct._GSList* %12, i32 0, i32 0, !dbg !1505
  %14 = load i8*, i8** %13, align 8, !dbg !1505
  %15 = bitcast i8* %14 to %struct.RECONNECT_REC*, !dbg !1504
  store %struct.RECONNECT_REC* %15, %struct.RECONNECT_REC** %5, align 8, !dbg !1503
  call void @llvm.dbg.declare(metadata %struct._SERVER_CONNECT_REC** %6, metadata !1506, metadata !379), !dbg !1507
  %16 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %5, align 8, !dbg !1508
  %17 = getelementptr inbounds %struct.RECONNECT_REC, %struct.RECONNECT_REC* %16, i32 0, i32 2, !dbg !1509
  %18 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %17, align 8, !dbg !1509
  store %struct._SERVER_CONNECT_REC* %18, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1507
  %19 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %5, align 8, !dbg !1510
  %20 = getelementptr inbounds %struct.RECONNECT_REC, %struct.RECONNECT_REC* %19, i32 0, i32 0, !dbg !1511
  %21 = load i32, i32* %20, align 8, !dbg !1511
  %22 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 %21), !dbg !1512
  store i8* %22, i8** %2, align 8, !dbg !1513
  %23 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %5, align 8, !dbg !1514
  %24 = getelementptr inbounds %struct.RECONNECT_REC, %struct.RECONNECT_REC* %23, i32 0, i32 1, !dbg !1515
  %25 = load i64, i64* %24, align 8, !dbg !1515
  %26 = call i64 @time(i64* null) #6, !dbg !1516
  %27 = sub nsw i64 %25, %26, !dbg !1517
  %28 = trunc i64 %27 to i32, !dbg !1514
  store i32 %28, i32* %4, align 4, !dbg !1518
  %29 = load i32, i32* %4, align 4, !dbg !1519
  %30 = sdiv i32 %29, 60, !dbg !1520
  %31 = load i32, i32* %4, align 4, !dbg !1521
  %32 = srem i32 %31, 60, !dbg !1522
  %33 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i32 %30, i32 %32), !dbg !1523
  store i8* %33, i8** %3, align 8, !dbg !1524
  %34 = load i8*, i8** %2, align 8, !dbg !1525
  %35 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1526
  %36 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %35, i32 0, i32 10, !dbg !1527
  %37 = load i8*, i8** %36, align 8, !dbg !1527
  %38 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1528
  %39 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %38, i32 0, i32 11, !dbg !1529
  %40 = load i32, i32* %39, align 8, !dbg !1529
  %41 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1530
  %42 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %41, i32 0, i32 12, !dbg !1531
  %43 = load i8*, i8** %42, align 8, !dbg !1531
  %44 = icmp eq i8* %43, null, !dbg !1532
  br i1 %44, label %45, label %46, !dbg !1530

; <label>:45:                                     ; preds = %11
  br label %50, !dbg !1533

; <label>:46:                                     ; preds = %11
  %47 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1535
  %48 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %47, i32 0, i32 12, !dbg !1537
  %49 = load i8*, i8** %48, align 8, !dbg !1537
  br label %50, !dbg !1538

; <label>:50:                                     ; preds = %46, %45
  %51 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.18, i32 0, i32 0), %45 ], [ %49, %46 ], !dbg !1539
  %52 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %6, align 8, !dbg !1541
  %53 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %52, i32 0, i32 16, !dbg !1542
  %54 = load i8*, i8** %53, align 8, !dbg !1542
  %55 = load i8*, i8** %3, align 8, !dbg !1543
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 1, i32 55, i8* %34, i8* %37, i32 %40, i8* %51, i8* %54, i8* %55), !dbg !1544
  %56 = load i8*, i8** %3, align 8, !dbg !1545
  call void @g_free(i8* %56), !dbg !1546
  %57 = load i8*, i8** %2, align 8, !dbg !1547
  call void @g_free(i8* %57), !dbg !1548
  br label %58, !dbg !1549

; <label>:58:                                     ; preds = %50
  %59 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1550
  %60 = getelementptr inbounds %struct._GSList, %struct._GSList* %59, i32 0, i32 1, !dbg !1552
  %61 = load %struct._GSList*, %struct._GSList** %60, align 8, !dbg !1552
  store %struct._GSList* %61, %struct._GSList** %1, align 8, !dbg !1553
  br label %8, !dbg !1554, !llvm.loop !1555

; <label>:62:                                     ; preds = %8
  ret void, !dbg !1557
}

declare void @signal_stop() #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #3

declare void @g_free(i8*) #1

declare i32 @cmd_get_params(i8*, i8**, i32, ...) #1

declare i32 @g_strcmp0(i8*, i8*) #1

declare void @cmd_params_free(i8*) #1

declare i32 @signal_emit(i8*, i32, ...) #1

declare %struct._WINDOW_REC* @window_create(%struct._WI_ITEM_REC*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @cmd_server_add_modify(i8*, i32) #0 !dbg !1558 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._GHashTable*, align 8
  %6 = alloca %struct._SERVER_SETUP_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1561, metadata !379), !dbg !1562
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1563, metadata !379), !dbg !1564
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %5, metadata !1565, metadata !379), !dbg !1566
  call void @llvm.dbg.declare(metadata %struct._SERVER_SETUP_REC** %6, metadata !1567, metadata !379), !dbg !1568
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1569, metadata !379), !dbg !1570
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1571, metadata !379), !dbg !1572
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1573, metadata !379), !dbg !1574
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1575, metadata !379), !dbg !1576
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1577, metadata !379), !dbg !1578
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1579, metadata !379), !dbg !1580
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1581, metadata !379), !dbg !1582
  %14 = load i8*, i8** %3, align 8, !dbg !1583
  %15 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %14, i8** %12, i32 16387, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), %struct._GHashTable** %5, i8** %7, i8** %8, i8** %9), !dbg !1585
  %16 = icmp ne i32 %15, 0, !dbg !1585
  br i1 %16, label %18, label %17, !dbg !1586

; <label>:17:                                     ; preds = %2
  br label %530, !dbg !1587

; <label>:18:                                     ; preds = %2
  %19 = load i8*, i8** %7, align 8, !dbg !1588
  %20 = load i8, i8* %19, align 1, !dbg !1590
  %21 = sext i8 %20 to i32, !dbg !1590
  %22 = icmp eq i32 %21, 0, !dbg !1591
  br i1 %22, label %23, label %30, !dbg !1592

; <label>:23:                                     ; preds = %18
  br label %24, !dbg !1593, !llvm.loop !1595

; <label>:24:                                     ; preds = %23
  %25 = load i8*, i8** %12, align 8, !dbg !1597
  call void @cmd_params_free(i8* %25), !dbg !1600
  br label %26, !dbg !1601, !llvm.loop !1602

; <label>:26:                                     ; preds = %24
  %27 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !1604
  call void @signal_stop(), !dbg !1607
  br label %530, !dbg !1609
                                                  ; No predecessors!
  br label %29, !dbg !1610

; <label>:29:                                     ; preds = %28
  br label %30, !dbg !1612

; <label>:30:                                     ; preds = %29, %18
  %31 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1614
  %32 = call i8* @g_hash_table_lookup(%struct._GHashTable* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0)), !dbg !1615
  store i8* %32, i8** %10, align 8, !dbg !1616
  %33 = load i8*, i8** %8, align 8, !dbg !1617
  %34 = load i8, i8* %33, align 1, !dbg !1619
  %35 = sext i8 %34 to i32, !dbg !1619
  %36 = icmp ne i32 %35, 0, !dbg !1620
  br i1 %36, label %37, label %40, !dbg !1621

; <label>:37:                                     ; preds = %30
  %38 = load i8*, i8** %8, align 8, !dbg !1622
  %39 = call i32 @atoi(i8* %38) #5, !dbg !1623
  store i32 %39, i32* %13, align 4, !dbg !1624
  br label %63, !dbg !1625

; <label>:40:                                     ; preds = %30
  %41 = load i8*, i8** %10, align 8, !dbg !1626
  %42 = icmp ne i8* %41, null, !dbg !1628
  br i1 %42, label %43, label %51, !dbg !1629

; <label>:43:                                     ; preds = %40
  %44 = load i8*, i8** %10, align 8, !dbg !1630
  %45 = load i8, i8* %44, align 1, !dbg !1632
  %46 = sext i8 %45 to i32, !dbg !1632
  %47 = icmp ne i32 %46, 0, !dbg !1633
  br i1 %47, label %48, label %51, !dbg !1634

; <label>:48:                                     ; preds = %43
  %49 = load i8*, i8** %10, align 8, !dbg !1635
  %50 = call i32 @atoi(i8* %49) #5, !dbg !1636
  store i32 %50, i32* %13, align 4, !dbg !1637
  br label %62, !dbg !1638

; <label>:51:                                     ; preds = %43, %40
  %52 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1639
  %53 = call i8* @g_hash_table_lookup(%struct._GHashTable* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0)), !dbg !1641
  %54 = icmp ne i8* %53, null, !dbg !1641
  br i1 %54, label %59, label %55, !dbg !1642

; <label>:55:                                     ; preds = %51
  %56 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1643
  %57 = call i8* @g_hash_table_lookup(%struct._GHashTable* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0)), !dbg !1644
  %58 = icmp ne i8* %57, null, !dbg !1644
  br i1 %58, label %59, label %60, !dbg !1645

; <label>:59:                                     ; preds = %55, %51
  store i32 6697, i32* %13, align 4, !dbg !1646
  br label %61, !dbg !1647

; <label>:60:                                     ; preds = %55
  store i32 6667, i32* %13, align 4, !dbg !1648
  br label %61

; <label>:61:                                     ; preds = %60, %59
  br label %62

; <label>:62:                                     ; preds = %61, %48
  br label %63

; <label>:63:                                     ; preds = %62, %37
  %64 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1649
  %65 = call i8* @g_hash_table_lookup(%struct._GHashTable* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0)), !dbg !1650
  store i8* %65, i8** %11, align 8, !dbg !1651
  %66 = load i8*, i8** %7, align 8, !dbg !1652
  %67 = load i32, i32* %13, align 4, !dbg !1653
  %68 = load i8*, i8** %11, align 8, !dbg !1654
  %69 = call %struct._SERVER_SETUP_REC* @server_setup_find(i8* %66, i32 %67, i8* %68), !dbg !1655
  store %struct._SERVER_SETUP_REC* %69, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !1656
  %70 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !1657
  %71 = icmp eq %struct._SERVER_SETUP_REC* %70, null, !dbg !1659
  br i1 %71, label %72, label %94, !dbg !1660

; <label>:72:                                     ; preds = %63
  %73 = load i32, i32* %4, align 4, !dbg !1661
  %74 = icmp eq i32 %73, 0, !dbg !1664
  br i1 %74, label %75, label %79, !dbg !1665

; <label>:75:                                     ; preds = %72
  %76 = load i8*, i8** %7, align 8, !dbg !1666
  %77 = load i32, i32* %13, align 4, !dbg !1668
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 60, i8* %76, i32 %77), !dbg !1669
  %78 = load i8*, i8** %12, align 8, !dbg !1670
  call void @cmd_params_free(i8* %78), !dbg !1671
  br label %530, !dbg !1672

; <label>:79:                                     ; preds = %72
  %80 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1673
  %81 = call %struct._SERVER_SETUP_REC* @create_server_setup(%struct._GHashTable* %80), !dbg !1674
  store %struct._SERVER_SETUP_REC* %81, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !1675
  %82 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !1676
  %83 = icmp eq %struct._SERVER_SETUP_REC* %82, null, !dbg !1678
  br i1 %83, label %84, label %86, !dbg !1679

; <label>:84:                                     ; preds = %79
  %85 = load i8*, i8** %12, align 8, !dbg !1680
  call void @cmd_params_free(i8* %85), !dbg !1682
  br label %530, !dbg !1683

; <label>:86:                                     ; preds = %79
  %87 = load i8*, i8** %7, align 8, !dbg !1684
  %88 = call noalias i8* @g_strdup(i8* %87), !dbg !1685
  %89 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !1686
  %90 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %89, i32 0, i32 4, !dbg !1687
  store i8* %88, i8** %90, align 8, !dbg !1688
  %91 = load i32, i32* %13, align 4, !dbg !1689
  %92 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !1690
  %93 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %92, i32 0, i32 5, !dbg !1691
  store i32 %91, i32* %93, align 8, !dbg !1692
  br label %149, !dbg !1693

; <label>:94:                                     ; preds = %63
  %95 = load i8*, i8** %8, align 8, !dbg !1694
  %96 = load i8, i8* %95, align 1, !dbg !1697
  %97 = sext i8 %96 to i32, !dbg !1697
  %98 = icmp ne i32 %97, 0, !dbg !1698
  br i1 %98, label %103, label %99, !dbg !1699

; <label>:99:                                     ; preds = %94
  %100 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1700
  %101 = call i8* @g_hash_table_lookup(%struct._GHashTable* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0)), !dbg !1702
  %102 = icmp ne i8* %101, null, !dbg !1702
  br i1 %102, label %103, label %107, !dbg !1703

; <label>:103:                                    ; preds = %99, %94
  %104 = load i32, i32* %13, align 4, !dbg !1704
  %105 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !1705
  %106 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %105, i32 0, i32 5, !dbg !1706
  store i32 %104, i32* %106, align 8, !dbg !1707
  br label %107, !dbg !1705

; <label>:107:                                    ; preds = %103, %99
  %108 = load i8*, i8** %9, align 8, !dbg !1708
  %109 = load i8, i8* %108, align 1, !dbg !1710
  %110 = sext i8 %109 to i32, !dbg !1710
  %111 = icmp ne i32 %110, 0, !dbg !1711
  br i1 %111, label %112, label %126, !dbg !1712

; <label>:112:                                    ; preds = %107
  br label %113, !dbg !1713, !llvm.loop !1715

; <label>:113:                                    ; preds = %112
  %114 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !1717
  %115 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %114, i32 0, i32 6, !dbg !1721
  %116 = load i8*, i8** %115, align 8, !dbg !1721
  %117 = icmp ne i8* %116, null, !dbg !1717
  br i1 %117, label %118, label %124, !dbg !1717

; <label>:118:                                    ; preds = %113
  %119 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !1722
  %120 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %119, i32 0, i32 6, !dbg !1725
  %121 = load i8*, i8** %120, align 8, !dbg !1725
  call void @g_free(i8* %121), !dbg !1726
  %122 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !1727
  %123 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %122, i32 0, i32 6, !dbg !1728
  store i8* null, i8** %123, align 8, !dbg !1729
  br label %124, !dbg !1730

; <label>:124:                                    ; preds = %118, %113
  br label %125, !dbg !1731

; <label>:125:                                    ; preds = %124
  br label %126, !dbg !1733

; <label>:126:                                    ; preds = %125, %107
  %127 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1735
  %128 = call i8* @g_hash_table_lookup(%struct._GHashTable* %127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0)), !dbg !1737
  %129 = icmp ne i8* %128, null, !dbg !1737
  br i1 %129, label %130, label %148, !dbg !1738

; <label>:130:                                    ; preds = %126
  br label %131, !dbg !1739, !llvm.loop !1741

; <label>:131:                                    ; preds = %130
  %132 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !1742
  %133 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %132, i32 0, i32 17, !dbg !1746
  %134 = load i8*, i8** %133, align 8, !dbg !1746
  %135 = icmp ne i8* %134, null, !dbg !1742
  br i1 %135, label %136, label %142, !dbg !1742

; <label>:136:                                    ; preds = %131
  %137 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !1747
  %138 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %137, i32 0, i32 17, !dbg !1750
  %139 = load i8*, i8** %138, align 8, !dbg !1750
  call void @g_free(i8* %139), !dbg !1751
  %140 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !1752
  %141 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %140, i32 0, i32 17, !dbg !1753
  store i8* null, i8** %141, align 8, !dbg !1754
  br label %142, !dbg !1755

; <label>:142:                                    ; preds = %136, %131
  br label %143, !dbg !1756

; <label>:143:                                    ; preds = %142
  %144 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !1758
  %145 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %144, i32 0, i32 19, !dbg !1759
  store %struct._IPADDR* null, %struct._IPADDR** %145, align 8, !dbg !1760
  %146 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !1761
  %147 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %146, i32 0, i32 18, !dbg !1762
  store %struct._IPADDR* null, %struct._IPADDR** %147, align 8, !dbg !1763
  br label %148, !dbg !1764

; <label>:148:                                    ; preds = %143, %126
  br label %149

; <label>:149:                                    ; preds = %148, %86
  %150 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1765
  %151 = call i8* @g_hash_table_lookup(%struct._GHashTable* %150, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0)), !dbg !1767
  %152 = icmp ne i8* %151, null, !dbg !1767
  br i1 %152, label %153, label %156, !dbg !1768

; <label>:153:                                    ; preds = %149
  %154 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !1769
  %155 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %154, i32 0, i32 3, !dbg !1770
  store i16 10, i16* %155, align 8, !dbg !1771
  br label %164, !dbg !1769

; <label>:156:                                    ; preds = %149
  %157 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1772
  %158 = call i8* @g_hash_table_lookup(%struct._GHashTable* %157, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0)), !dbg !1774
  %159 = icmp ne i8* %158, null, !dbg !1774
  br i1 %159, label %160, label %163, !dbg !1775

; <label>:160:                                    ; preds = %156
  %161 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !1776
  %162 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %161, i32 0, i32 3, !dbg !1777
  store i16 2, i16* %162, align 8, !dbg !1778
  br label %163, !dbg !1776

; <label>:163:                                    ; preds = %160, %156
  br label %164

; <label>:164:                                    ; preds = %163, %153
  %165 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1779
  %166 = call i8* @g_hash_table_lookup(%struct._GHashTable* %165, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0)), !dbg !1781
  %167 = icmp ne i8* %166, null, !dbg !1781
  br i1 %167, label %172, label %168, !dbg !1782

; <label>:168:                                    ; preds = %164
  %169 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1783
  %170 = call i8* @g_hash_table_lookup(%struct._GHashTable* %169, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0)), !dbg !1785
  %171 = icmp ne i8* %170, null, !dbg !1785
  br i1 %171, label %172, label %178, !dbg !1786

; <label>:172:                                    ; preds = %168, %164
  %173 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !1787
  %174 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %173, i32 0, i32 21, !dbg !1789
  %175 = load i8, i8* %174, align 8, !dbg !1790
  %176 = and i8 %175, -33, !dbg !1790
  %177 = or i8 %176, 32, !dbg !1790
  store i8 %177, i8* %174, align 8, !dbg !1790
  br label %196, !dbg !1791

; <label>:178:                                    ; preds = %168
  %179 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1792
  %180 = call i8* @g_hash_table_lookup(%struct._GHashTable* %179, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0)), !dbg !1794
  %181 = icmp ne i8* %180, null, !dbg !1794
  br i1 %181, label %186, label %182, !dbg !1795

; <label>:182:                                    ; preds = %178
  %183 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1796
  %184 = call i8* @g_hash_table_lookup(%struct._GHashTable* %183, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0)), !dbg !1798
  %185 = icmp ne i8* %184, null, !dbg !1798
  br i1 %185, label %186, label %195, !dbg !1799

; <label>:186:                                    ; preds = %182, %178
  %187 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !1800
  %188 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %187, i32 0, i32 21, !dbg !1802
  %189 = load i8, i8* %188, align 8, !dbg !1803
  %190 = and i8 %189, -33, !dbg !1803
  store i8 %190, i8* %188, align 8, !dbg !1803
  %191 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !1804
  %192 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %191, i32 0, i32 21, !dbg !1805
  %193 = load i8, i8* %192, align 8, !dbg !1806
  %194 = and i8 %193, -65, !dbg !1806
  store i8 %194, i8* %192, align 8, !dbg !1806
  br label %195, !dbg !1807

; <label>:195:                                    ; preds = %186, %182
  br label %196

; <label>:196:                                    ; preds = %195, %172
  %197 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1808
  %198 = call i8* @g_hash_table_lookup(%struct._GHashTable* %197, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0)), !dbg !1809
  store i8* %198, i8** %10, align 8, !dbg !1810
  %199 = load i8*, i8** %10, align 8, !dbg !1811
  %200 = icmp eq i8* %199, null, !dbg !1813
  br i1 %200, label %201, label %204, !dbg !1814

; <label>:201:                                    ; preds = %196
  %202 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1815
  %203 = call i8* @g_hash_table_lookup(%struct._GHashTable* %202, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0)), !dbg !1816
  store i8* %203, i8** %10, align 8, !dbg !1817
  br label %204, !dbg !1818

; <label>:204:                                    ; preds = %201, %196
  %205 = load i8*, i8** %10, align 8, !dbg !1819
  %206 = icmp ne i8* %205, null, !dbg !1821
  br i1 %206, label %207, label %217, !dbg !1822

; <label>:207:                                    ; preds = %204
  %208 = load i8*, i8** %10, align 8, !dbg !1823
  %209 = load i8, i8* %208, align 1, !dbg !1825
  %210 = sext i8 %209 to i32, !dbg !1825
  %211 = icmp ne i32 %210, 0, !dbg !1826
  br i1 %211, label %212, label %217, !dbg !1827

; <label>:212:                                    ; preds = %207
  %213 = load i8*, i8** %10, align 8, !dbg !1828
  %214 = call noalias i8* @g_strdup(i8* %213), !dbg !1829
  %215 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !1830
  %216 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %215, i32 0, i32 9, !dbg !1831
  store i8* %214, i8** %216, align 8, !dbg !1832
  br label %217, !dbg !1830

; <label>:217:                                    ; preds = %212, %207, %204
  %218 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1833
  %219 = call i8* @g_hash_table_lookup(%struct._GHashTable* %218, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0)), !dbg !1834
  store i8* %219, i8** %10, align 8, !dbg !1835
  %220 = load i8*, i8** %10, align 8, !dbg !1836
  %221 = icmp eq i8* %220, null, !dbg !1838
  br i1 %221, label %222, label %225, !dbg !1839

; <label>:222:                                    ; preds = %217
  %223 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1840
  %224 = call i8* @g_hash_table_lookup(%struct._GHashTable* %223, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0)), !dbg !1841
  store i8* %224, i8** %10, align 8, !dbg !1842
  br label %225, !dbg !1843

; <label>:225:                                    ; preds = %222, %217
  %226 = load i8*, i8** %10, align 8, !dbg !1844
  %227 = icmp ne i8* %226, null, !dbg !1846
  br i1 %227, label %228, label %238, !dbg !1847

; <label>:228:                                    ; preds = %225
  %229 = load i8*, i8** %10, align 8, !dbg !1848
  %230 = load i8, i8* %229, align 1, !dbg !1850
  %231 = sext i8 %230 to i32, !dbg !1850
  %232 = icmp ne i32 %231, 0, !dbg !1851
  br i1 %232, label %233, label %238, !dbg !1852

; <label>:233:                                    ; preds = %228
  %234 = load i8*, i8** %10, align 8, !dbg !1853
  %235 = call noalias i8* @g_strdup(i8* %234), !dbg !1854
  %236 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !1855
  %237 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %236, i32 0, i32 10, !dbg !1856
  store i8* %235, i8** %237, align 8, !dbg !1857
  br label %238, !dbg !1855

; <label>:238:                                    ; preds = %233, %228, %225
  %239 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1858
  %240 = call i8* @g_hash_table_lookup(%struct._GHashTable* %239, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0)), !dbg !1859
  store i8* %240, i8** %10, align 8, !dbg !1860
  %241 = load i8*, i8** %10, align 8, !dbg !1861
  %242 = icmp eq i8* %241, null, !dbg !1863
  br i1 %242, label %243, label %246, !dbg !1864

; <label>:243:                                    ; preds = %238
  %244 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1865
  %245 = call i8* @g_hash_table_lookup(%struct._GHashTable* %244, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0)), !dbg !1866
  store i8* %245, i8** %10, align 8, !dbg !1867
  br label %246, !dbg !1868

; <label>:246:                                    ; preds = %243, %238
  %247 = load i8*, i8** %10, align 8, !dbg !1869
  %248 = icmp ne i8* %247, null, !dbg !1871
  br i1 %248, label %249, label %259, !dbg !1872

; <label>:249:                                    ; preds = %246
  %250 = load i8*, i8** %10, align 8, !dbg !1873
  %251 = load i8, i8* %250, align 1, !dbg !1875
  %252 = sext i8 %251 to i32, !dbg !1875
  %253 = icmp ne i32 %252, 0, !dbg !1876
  br i1 %253, label %254, label %259, !dbg !1877

; <label>:254:                                    ; preds = %249
  %255 = load i8*, i8** %10, align 8, !dbg !1878
  %256 = call noalias i8* @g_strdup(i8* %255), !dbg !1879
  %257 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !1880
  %258 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %257, i32 0, i32 11, !dbg !1881
  store i8* %256, i8** %258, align 8, !dbg !1882
  br label %259, !dbg !1880

; <label>:259:                                    ; preds = %254, %249, %246
  %260 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1883
  %261 = call i8* @g_hash_table_lookup(%struct._GHashTable* %260, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0)), !dbg !1885
  %262 = icmp ne i8* %261, null, !dbg !1885
  br i1 %262, label %267, label %263, !dbg !1886

; <label>:263:                                    ; preds = %259
  %264 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1887
  %265 = call i8* @g_hash_table_lookup(%struct._GHashTable* %264, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0)), !dbg !1889
  %266 = icmp ne i8* %265, null, !dbg !1889
  br i1 %266, label %267, label %273, !dbg !1890

; <label>:267:                                    ; preds = %263, %259
  %268 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !1891
  %269 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %268, i32 0, i32 21, !dbg !1892
  %270 = load i8, i8* %269, align 8, !dbg !1893
  %271 = and i8 %270, -65, !dbg !1893
  %272 = or i8 %271, 64, !dbg !1893
  store i8 %272, i8* %269, align 8, !dbg !1893
  br label %287, !dbg !1891

; <label>:273:                                    ; preds = %263
  %274 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1894
  %275 = call i8* @g_hash_table_lookup(%struct._GHashTable* %274, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0)), !dbg !1896
  %276 = icmp ne i8* %275, null, !dbg !1896
  br i1 %276, label %281, label %277, !dbg !1897

; <label>:277:                                    ; preds = %273
  %278 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1898
  %279 = call i8* @g_hash_table_lookup(%struct._GHashTable* %278, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i32 0, i32 0)), !dbg !1900
  %280 = icmp ne i8* %279, null, !dbg !1900
  br i1 %280, label %281, label %286, !dbg !1901

; <label>:281:                                    ; preds = %277, %273
  %282 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !1902
  %283 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %282, i32 0, i32 21, !dbg !1903
  %284 = load i8, i8* %283, align 8, !dbg !1904
  %285 = and i8 %284, -65, !dbg !1904
  store i8 %285, i8* %283, align 8, !dbg !1904
  br label %286, !dbg !1902

; <label>:286:                                    ; preds = %281, %277
  br label %287

; <label>:287:                                    ; preds = %286, %267
  %288 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1905
  %289 = call i8* @g_hash_table_lookup(%struct._GHashTable* %288, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i32 0, i32 0)), !dbg !1906
  store i8* %289, i8** %10, align 8, !dbg !1907
  %290 = load i8*, i8** %10, align 8, !dbg !1908
  %291 = icmp eq i8* %290, null, !dbg !1910
  br i1 %291, label %292, label %295, !dbg !1911

; <label>:292:                                    ; preds = %287
  %293 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1912
  %294 = call i8* @g_hash_table_lookup(%struct._GHashTable* %293, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i32 0, i32 0)), !dbg !1913
  store i8* %294, i8** %10, align 8, !dbg !1914
  br label %295, !dbg !1915

; <label>:295:                                    ; preds = %292, %287
  %296 = load i8*, i8** %10, align 8, !dbg !1916
  %297 = icmp ne i8* %296, null, !dbg !1918
  br i1 %297, label %298, label %308, !dbg !1919

; <label>:298:                                    ; preds = %295
  %299 = load i8*, i8** %10, align 8, !dbg !1920
  %300 = load i8, i8* %299, align 1, !dbg !1922
  %301 = sext i8 %300 to i32, !dbg !1922
  %302 = icmp ne i32 %301, 0, !dbg !1923
  br i1 %302, label %303, label %308, !dbg !1924

; <label>:303:                                    ; preds = %298
  %304 = load i8*, i8** %10, align 8, !dbg !1925
  %305 = call noalias i8* @g_strdup(i8* %304), !dbg !1926
  %306 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !1927
  %307 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %306, i32 0, i32 12, !dbg !1928
  store i8* %305, i8** %307, align 8, !dbg !1929
  br label %308, !dbg !1927

; <label>:308:                                    ; preds = %303, %298, %295
  %309 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1930
  %310 = call i8* @g_hash_table_lookup(%struct._GHashTable* %309, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0)), !dbg !1931
  store i8* %310, i8** %10, align 8, !dbg !1932
  %311 = load i8*, i8** %10, align 8, !dbg !1933
  %312 = icmp eq i8* %311, null, !dbg !1935
  br i1 %312, label %313, label %316, !dbg !1936

; <label>:313:                                    ; preds = %308
  %314 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1937
  %315 = call i8* @g_hash_table_lookup(%struct._GHashTable* %314, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0)), !dbg !1938
  store i8* %315, i8** %10, align 8, !dbg !1939
  br label %316, !dbg !1940

; <label>:316:                                    ; preds = %313, %308
  %317 = load i8*, i8** %10, align 8, !dbg !1941
  %318 = icmp ne i8* %317, null, !dbg !1943
  br i1 %318, label %319, label %329, !dbg !1944

; <label>:319:                                    ; preds = %316
  %320 = load i8*, i8** %10, align 8, !dbg !1945
  %321 = load i8, i8* %320, align 1, !dbg !1947
  %322 = sext i8 %321 to i32, !dbg !1947
  %323 = icmp ne i32 %322, 0, !dbg !1948
  br i1 %323, label %324, label %329, !dbg !1949

; <label>:324:                                    ; preds = %319
  %325 = load i8*, i8** %10, align 8, !dbg !1950
  %326 = call noalias i8* @g_strdup(i8* %325), !dbg !1951
  %327 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !1952
  %328 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %327, i32 0, i32 13, !dbg !1953
  store i8* %326, i8** %328, align 8, !dbg !1954
  br label %329, !dbg !1952

; <label>:329:                                    ; preds = %324, %319, %316
  %330 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1955
  %331 = call i8* @g_hash_table_lookup(%struct._GHashTable* %330, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0)), !dbg !1956
  store i8* %331, i8** %10, align 8, !dbg !1957
  %332 = load i8*, i8** %10, align 8, !dbg !1958
  %333 = icmp eq i8* %332, null, !dbg !1960
  br i1 %333, label %334, label %337, !dbg !1961

; <label>:334:                                    ; preds = %329
  %335 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1962
  %336 = call i8* @g_hash_table_lookup(%struct._GHashTable* %335, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i32 0, i32 0)), !dbg !1963
  store i8* %336, i8** %10, align 8, !dbg !1964
  br label %337, !dbg !1965

; <label>:337:                                    ; preds = %334, %329
  %338 = load i8*, i8** %10, align 8, !dbg !1966
  %339 = icmp ne i8* %338, null, !dbg !1968
  br i1 %339, label %340, label %350, !dbg !1969

; <label>:340:                                    ; preds = %337
  %341 = load i8*, i8** %10, align 8, !dbg !1970
  %342 = load i8, i8* %341, align 1, !dbg !1972
  %343 = sext i8 %342 to i32, !dbg !1972
  %344 = icmp ne i32 %343, 0, !dbg !1973
  br i1 %344, label %345, label %350, !dbg !1974

; <label>:345:                                    ; preds = %340
  %346 = load i8*, i8** %10, align 8, !dbg !1975
  %347 = call noalias i8* @g_strdup(i8* %346), !dbg !1976
  %348 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !1977
  %349 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %348, i32 0, i32 14, !dbg !1978
  store i8* %347, i8** %349, align 8, !dbg !1979
  br label %350, !dbg !1977

; <label>:350:                                    ; preds = %345, %340, %337
  %351 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1980
  %352 = call i8* @g_hash_table_lookup(%struct._GHashTable* %351, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.49, i32 0, i32 0)), !dbg !1981
  store i8* %352, i8** %10, align 8, !dbg !1982
  %353 = load i8*, i8** %10, align 8, !dbg !1983
  %354 = icmp eq i8* %353, null, !dbg !1985
  br i1 %354, label %355, label %358, !dbg !1986

; <label>:355:                                    ; preds = %350
  %356 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1987
  %357 = call i8* @g_hash_table_lookup(%struct._GHashTable* %356, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.50, i32 0, i32 0)), !dbg !1988
  store i8* %357, i8** %10, align 8, !dbg !1989
  br label %358, !dbg !1990

; <label>:358:                                    ; preds = %355, %350
  %359 = load i8*, i8** %10, align 8, !dbg !1991
  %360 = icmp ne i8* %359, null, !dbg !1993
  br i1 %360, label %361, label %371, !dbg !1994

; <label>:361:                                    ; preds = %358
  %362 = load i8*, i8** %10, align 8, !dbg !1995
  %363 = load i8, i8* %362, align 1, !dbg !1997
  %364 = sext i8 %363 to i32, !dbg !1997
  %365 = icmp ne i32 %364, 0, !dbg !1998
  br i1 %365, label %366, label %371, !dbg !1999

; <label>:366:                                    ; preds = %361
  %367 = load i8*, i8** %10, align 8, !dbg !2000
  %368 = call noalias i8* @g_strdup(i8* %367), !dbg !2001
  %369 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !2002
  %370 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %369, i32 0, i32 15, !dbg !2003
  store i8* %368, i8** %370, align 8, !dbg !2004
  br label %371, !dbg !2002

; <label>:371:                                    ; preds = %366, %361, %358
  %372 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !2005
  %373 = call i8* @g_hash_table_lookup(%struct._GHashTable* %372, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.51, i32 0, i32 0)), !dbg !2006
  store i8* %373, i8** %10, align 8, !dbg !2007
  %374 = load i8*, i8** %10, align 8, !dbg !2008
  %375 = icmp eq i8* %374, null, !dbg !2010
  br i1 %375, label %376, label %379, !dbg !2011

; <label>:376:                                    ; preds = %371
  %377 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !2012
  %378 = call i8* @g_hash_table_lookup(%struct._GHashTable* %377, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.52, i32 0, i32 0)), !dbg !2013
  store i8* %378, i8** %10, align 8, !dbg !2014
  br label %379, !dbg !2015

; <label>:379:                                    ; preds = %376, %371
  %380 = load i8*, i8** %10, align 8, !dbg !2016
  %381 = icmp ne i8* %380, null, !dbg !2018
  br i1 %381, label %382, label %392, !dbg !2019

; <label>:382:                                    ; preds = %379
  %383 = load i8*, i8** %10, align 8, !dbg !2020
  %384 = load i8, i8* %383, align 1, !dbg !2022
  %385 = sext i8 %384 to i32, !dbg !2022
  %386 = icmp ne i32 %385, 0, !dbg !2023
  br i1 %386, label %387, label %392, !dbg !2024

; <label>:387:                                    ; preds = %382
  %388 = load i8*, i8** %10, align 8, !dbg !2025
  %389 = call noalias i8* @g_strdup(i8* %388), !dbg !2026
  %390 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !2027
  %391 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %390, i32 0, i32 16, !dbg !2028
  store i8* %389, i8** %391, align 8, !dbg !2029
  br label %392, !dbg !2027

; <label>:392:                                    ; preds = %387, %382, %379
  %393 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !2030
  %394 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %393, i32 0, i32 12, !dbg !2032
  %395 = load i8*, i8** %394, align 8, !dbg !2032
  %396 = icmp ne i8* %395, null, !dbg !2033
  br i1 %396, label %397, label %405, !dbg !2034

; <label>:397:                                    ; preds = %392
  %398 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !2035
  %399 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %398, i32 0, i32 12, !dbg !2037
  %400 = load i8*, i8** %399, align 8, !dbg !2037
  %401 = getelementptr inbounds i8, i8* %400, i64 0, !dbg !2035
  %402 = load i8, i8* %401, align 1, !dbg !2035
  %403 = sext i8 %402 to i32, !dbg !2035
  %404 = icmp ne i32 %403, 0, !dbg !2038
  br i1 %404, label %418, label %405, !dbg !2039

; <label>:405:                                    ; preds = %397, %392
  %406 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !2040
  %407 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %406, i32 0, i32 13, !dbg !2041
  %408 = load i8*, i8** %407, align 8, !dbg !2041
  %409 = icmp ne i8* %408, null, !dbg !2042
  br i1 %409, label %410, label %424, !dbg !2043

; <label>:410:                                    ; preds = %405
  %411 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !2044
  %412 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %411, i32 0, i32 13, !dbg !2046
  %413 = load i8*, i8** %412, align 8, !dbg !2046
  %414 = getelementptr inbounds i8, i8* %413, i64 0, !dbg !2044
  %415 = load i8, i8* %414, align 1, !dbg !2044
  %416 = sext i8 %415 to i32, !dbg !2044
  %417 = icmp ne i32 %416, 0, !dbg !2047
  br i1 %417, label %418, label %424, !dbg !2048

; <label>:418:                                    ; preds = %410, %397
  %419 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !2050
  %420 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %419, i32 0, i32 21, !dbg !2051
  %421 = load i8, i8* %420, align 8, !dbg !2052
  %422 = and i8 %421, -65, !dbg !2052
  %423 = or i8 %422, 64, !dbg !2052
  store i8 %423, i8* %420, align 8, !dbg !2052
  br label %424, !dbg !2050

; <label>:424:                                    ; preds = %418, %410, %405
  %425 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !2053
  %426 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %425, i32 0, i32 9, !dbg !2055
  %427 = load i8*, i8** %426, align 8, !dbg !2055
  %428 = icmp ne i8* %427, null, !dbg !2056
  br i1 %428, label %429, label %437, !dbg !2057

; <label>:429:                                    ; preds = %424
  %430 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !2058
  %431 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %430, i32 0, i32 9, !dbg !2060
  %432 = load i8*, i8** %431, align 8, !dbg !2060
  %433 = getelementptr inbounds i8, i8* %432, i64 0, !dbg !2058
  %434 = load i8, i8* %433, align 1, !dbg !2058
  %435 = sext i8 %434 to i32, !dbg !2058
  %436 = icmp ne i32 %435, 0, !dbg !2061
  br i1 %436, label %445, label %437, !dbg !2062

; <label>:437:                                    ; preds = %429, %424
  %438 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !2063
  %439 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %438, i32 0, i32 21, !dbg !2065
  %440 = load i8, i8* %439, align 8, !dbg !2065
  %441 = lshr i8 %440, 6, !dbg !2065
  %442 = and i8 %441, 1, !dbg !2065
  %443 = zext i8 %442 to i32, !dbg !2065
  %444 = icmp eq i32 %443, 1, !dbg !2066
  br i1 %444, label %445, label %451, !dbg !2067

; <label>:445:                                    ; preds = %437, %429
  %446 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !2068
  %447 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %446, i32 0, i32 21, !dbg !2069
  %448 = load i8, i8* %447, align 8, !dbg !2070
  %449 = and i8 %448, -33, !dbg !2070
  %450 = or i8 %449, 32, !dbg !2070
  store i8 %450, i8* %447, align 8, !dbg !2070
  br label %451, !dbg !2068

; <label>:451:                                    ; preds = %445, %437
  %452 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !2071
  %453 = call i8* @g_hash_table_lookup(%struct._GHashTable* %452, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0)), !dbg !2073
  %454 = icmp ne i8* %453, null, !dbg !2073
  br i1 %454, label %455, label %461, !dbg !2074

; <label>:455:                                    ; preds = %451
  %456 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !2075
  %457 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %456, i32 0, i32 21, !dbg !2077
  %458 = load i8, i8* %457, align 8, !dbg !2078
  %459 = and i8 %458, -2, !dbg !2078
  %460 = or i8 %459, 1, !dbg !2078
  store i8 %460, i8* %457, align 8, !dbg !2078
  br label %461, !dbg !2075

; <label>:461:                                    ; preds = %455, %451
  %462 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !2079
  %463 = call i8* @g_hash_table_lookup(%struct._GHashTable* %462, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0)), !dbg !2081
  %464 = icmp ne i8* %463, null, !dbg !2081
  br i1 %464, label %465, label %470, !dbg !2082

; <label>:465:                                    ; preds = %461
  %466 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !2083
  %467 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %466, i32 0, i32 21, !dbg !2085
  %468 = load i8, i8* %467, align 8, !dbg !2086
  %469 = and i8 %468, -2, !dbg !2086
  store i8 %469, i8* %467, align 8, !dbg !2086
  br label %470, !dbg !2083

; <label>:470:                                    ; preds = %465, %461
  %471 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !2087
  %472 = call i8* @g_hash_table_lookup(%struct._GHashTable* %471, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0)), !dbg !2089
  %473 = icmp ne i8* %472, null, !dbg !2089
  br i1 %473, label %474, label %479, !dbg !2090

; <label>:474:                                    ; preds = %470
  %475 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !2091
  %476 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %475, i32 0, i32 21, !dbg !2093
  %477 = load i8, i8* %476, align 8, !dbg !2094
  %478 = and i8 %477, -3, !dbg !2094
  store i8 %478, i8* %476, align 8, !dbg !2094
  br label %479, !dbg !2091

; <label>:479:                                    ; preds = %474, %470
  %480 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !2095
  %481 = call i8* @g_hash_table_lookup(%struct._GHashTable* %480, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0)), !dbg !2097
  %482 = icmp ne i8* %481, null, !dbg !2097
  br i1 %482, label %483, label %489, !dbg !2098

; <label>:483:                                    ; preds = %479
  %484 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !2099
  %485 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %484, i32 0, i32 21, !dbg !2101
  %486 = load i8, i8* %485, align 8, !dbg !2102
  %487 = and i8 %486, -3, !dbg !2102
  %488 = or i8 %487, 2, !dbg !2102
  store i8 %488, i8* %485, align 8, !dbg !2102
  br label %489, !dbg !2099

; <label>:489:                                    ; preds = %483, %479
  %490 = load i8*, i8** %9, align 8, !dbg !2103
  %491 = load i8, i8* %490, align 1, !dbg !2105
  %492 = sext i8 %491 to i32, !dbg !2105
  %493 = icmp ne i32 %492, 0, !dbg !2106
  br i1 %493, label %494, label %503, !dbg !2107

; <label>:494:                                    ; preds = %489
  %495 = load i8*, i8** %9, align 8, !dbg !2108
  %496 = call i32 @g_strcmp0(i8* %495, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i32 0, i32 0)), !dbg !2110
  %497 = icmp ne i32 %496, 0, !dbg !2111
  br i1 %497, label %498, label %503, !dbg !2112

; <label>:498:                                    ; preds = %494
  %499 = load i8*, i8** %9, align 8, !dbg !2113
  %500 = call noalias i8* @g_strdup(i8* %499), !dbg !2115
  %501 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !2116
  %502 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %501, i32 0, i32 6, !dbg !2117
  store i8* %500, i8** %502, align 8, !dbg !2118
  br label %503, !dbg !2116

; <label>:503:                                    ; preds = %498, %494, %489
  %504 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !2119
  %505 = call i8* @g_hash_table_lookup(%struct._GHashTable* %504, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0)), !dbg !2120
  store i8* %505, i8** %10, align 8, !dbg !2121
  %506 = load i8*, i8** %10, align 8, !dbg !2122
  %507 = icmp ne i8* %506, null, !dbg !2124
  br i1 %507, label %508, label %522, !dbg !2125

; <label>:508:                                    ; preds = %503
  %509 = load i8*, i8** %10, align 8, !dbg !2126
  %510 = load i8, i8* %509, align 1, !dbg !2128
  %511 = sext i8 %510 to i32, !dbg !2128
  %512 = icmp ne i32 %511, 0, !dbg !2129
  br i1 %512, label %513, label %522, !dbg !2130

; <label>:513:                                    ; preds = %508
  %514 = load i8*, i8** %10, align 8, !dbg !2131
  %515 = call noalias i8* @g_strdup(i8* %514), !dbg !2133
  %516 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !2134
  %517 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %516, i32 0, i32 17, !dbg !2135
  store i8* %515, i8** %517, align 8, !dbg !2136
  %518 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !2137
  %519 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %518, i32 0, i32 19, !dbg !2138
  store %struct._IPADDR* null, %struct._IPADDR** %519, align 8, !dbg !2139
  %520 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !2140
  %521 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %520, i32 0, i32 18, !dbg !2141
  store %struct._IPADDR* null, %struct._IPADDR** %521, align 8, !dbg !2142
  br label %522, !dbg !2143

; <label>:522:                                    ; preds = %513, %508, %503
  %523 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !2144
  %524 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !2145
  %525 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.58, i32 0, i32 0), i32 2, %struct._SERVER_SETUP_REC* %523, %struct._GHashTable* %524), !dbg !2146
  %526 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %6, align 8, !dbg !2147
  call void @server_setup_add(%struct._SERVER_SETUP_REC* %526), !dbg !2148
  %527 = load i8*, i8** %7, align 8, !dbg !2149
  %528 = load i32, i32* %13, align 4, !dbg !2150
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 58, i8* %527, i32 %528), !dbg !2151
  %529 = load i8*, i8** %12, align 8, !dbg !2152
  call void @cmd_params_free(i8* %529), !dbg !2153
  br label %530, !dbg !2154

; <label>:530:                                    ; preds = %522, %84, %75, %26, %17
  ret void, !dbg !2155
}

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

declare %struct._SERVER_SETUP_REC* @server_setup_find(i8*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._SERVER_SETUP_REC* @create_server_setup(%struct._GHashTable*) #0 !dbg !2157 {
  %2 = alloca %struct._SERVER_SETUP_REC*, align 8
  %3 = alloca %struct._GHashTable*, align 8
  %4 = alloca %struct._CHAT_PROTOCOL_REC*, align 8
  %5 = alloca %struct._SERVER_SETUP_REC*, align 8
  %6 = alloca i8*, align 8
  store %struct._GHashTable* %0, %struct._GHashTable** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %3, metadata !2160, metadata !379), !dbg !2161
  call void @llvm.dbg.declare(metadata %struct._CHAT_PROTOCOL_REC** %4, metadata !2162, metadata !379), !dbg !2227
  call void @llvm.dbg.declare(metadata %struct._SERVER_SETUP_REC** %5, metadata !2228, metadata !379), !dbg !2229
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2230, metadata !379), !dbg !2231
  %7 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !2232
  %8 = call %struct._CHAT_PROTOCOL_REC* @chat_protocol_find_net(%struct._GHashTable* %7), !dbg !2233
  store %struct._CHAT_PROTOCOL_REC* %8, %struct._CHAT_PROTOCOL_REC** %4, align 8, !dbg !2234
  %9 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %4, align 8, !dbg !2235
  %10 = icmp eq %struct._CHAT_PROTOCOL_REC* %9, null, !dbg !2237
  br i1 %10, label %11, label %13, !dbg !2238

; <label>:11:                                     ; preds = %1
  %12 = call %struct._CHAT_PROTOCOL_REC* @chat_protocol_get_default(), !dbg !2239
  store %struct._CHAT_PROTOCOL_REC* %12, %struct._CHAT_PROTOCOL_REC** %4, align 8, !dbg !2240
  br label %25, !dbg !2241

; <label>:13:                                     ; preds = %1
  %14 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !2242
  %15 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %4, align 8, !dbg !2244
  %16 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %15, i32 0, i32 4, !dbg !2245
  %17 = load i8*, i8** %16, align 8, !dbg !2245
  %18 = call i8* @g_hash_table_lookup(%struct._GHashTable* %14, i8* %17), !dbg !2246
  store i8* %18, i8** %6, align 8, !dbg !2247
  %19 = load i8*, i8** %6, align 8, !dbg !2248
  %20 = call %struct._CHATNET_REC* @chatnet_find(i8* %19), !dbg !2250
  %21 = icmp eq %struct._CHATNET_REC* %20, null, !dbg !2251
  br i1 %21, label %22, label %24, !dbg !2252

; <label>:22:                                     ; preds = %13
  %23 = load i8*, i8** %6, align 8, !dbg !2253
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 204, i8* %23), !dbg !2255
  store %struct._SERVER_SETUP_REC* null, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !2256
  br label %36, !dbg !2256

; <label>:24:                                     ; preds = %13
  br label %25

; <label>:25:                                     ; preds = %24, %11
  %26 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %4, align 8, !dbg !2257
  %27 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %26, i32 0, i32 6, !dbg !2258
  %28 = load %struct._SERVER_SETUP_REC* ()*, %struct._SERVER_SETUP_REC* ()** %27, align 8, !dbg !2258
  %29 = call %struct._SERVER_SETUP_REC* %28(), !dbg !2257
  store %struct._SERVER_SETUP_REC* %29, %struct._SERVER_SETUP_REC** %5, align 8, !dbg !2259
  %30 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %4, align 8, !dbg !2260
  %31 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %30, i32 0, i32 0, !dbg !2261
  %32 = load i32, i32* %31, align 8, !dbg !2261
  %33 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %5, align 8, !dbg !2262
  %34 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %33, i32 0, i32 1, !dbg !2263
  store i32 %32, i32* %34, align 4, !dbg !2264
  %35 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %5, align 8, !dbg !2265
  store %struct._SERVER_SETUP_REC* %35, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !2266
  br label %36, !dbg !2266

; <label>:36:                                     ; preds = %25, %22
  %37 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %2, align 8, !dbg !2267
  ret %struct._SERVER_SETUP_REC* %37, !dbg !2267
}

declare noalias i8* @g_strdup(i8*) #1

declare void @server_setup_add(%struct._SERVER_SETUP_REC*) #1

declare %struct._CHAT_PROTOCOL_REC* @chat_protocol_find_net(%struct._GHashTable*) #1

declare %struct._CHAT_PROTOCOL_REC* @chat_protocol_get_default() #1

declare %struct._CHATNET_REC* @chatnet_find(i8*) #1

declare void @server_setup_remove(%struct._SERVER_SETUP_REC*) #1

declare void @signal_continue(i32, ...) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i32 @net_ip2host(%struct._IPADDR*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!347, !348}
!llvm.ident = !{!349}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !329)
!1 = !DIFile(filename: "line240-fe-server.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !34, !276, !283, !288, !297, !308}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 10, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../../src/core/levels.h", directory: "/home/lichi/Desktop/irssi/task1")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
!6 = !DIEnumerator(name: "MSGLEVEL_CRAP", value: 1)
!7 = !DIEnumerator(name: "MSGLEVEL_MSGS", value: 2)
!8 = !DIEnumerator(name: "MSGLEVEL_PUBLIC", value: 4)
!9 = !DIEnumerator(name: "MSGLEVEL_NOTICES", value: 8)
!10 = !DIEnumerator(name: "MSGLEVEL_SNOTES", value: 16)
!11 = !DIEnumerator(name: "MSGLEVEL_CTCPS", value: 32)
!12 = !DIEnumerator(name: "MSGLEVEL_ACTIONS", value: 64)
!13 = !DIEnumerator(name: "MSGLEVEL_JOINS", value: 128)
!14 = !DIEnumerator(name: "MSGLEVEL_PARTS", value: 256)
!15 = !DIEnumerator(name: "MSGLEVEL_QUITS", value: 512)
!16 = !DIEnumerator(name: "MSGLEVEL_KICKS", value: 1024)
!17 = !DIEnumerator(name: "MSGLEVEL_MODES", value: 2048)
!18 = !DIEnumerator(name: "MSGLEVEL_TOPICS", value: 4096)
!19 = !DIEnumerator(name: "MSGLEVEL_WALLOPS", value: 8192)
!20 = !DIEnumerator(name: "MSGLEVEL_INVITES", value: 16384)
!21 = !DIEnumerator(name: "MSGLEVEL_NICKS", value: 32768)
!22 = !DIEnumerator(name: "MSGLEVEL_DCC", value: 65536)
!23 = !DIEnumerator(name: "MSGLEVEL_DCCMSGS", value: 131072)
!24 = !DIEnumerator(name: "MSGLEVEL_CLIENTNOTICE", value: 262144)
!25 = !DIEnumerator(name: "MSGLEVEL_CLIENTCRAP", value: 524288)
!26 = !DIEnumerator(name: "MSGLEVEL_CLIENTERROR", value: 1048576)
!27 = !DIEnumerator(name: "MSGLEVEL_HILIGHT", value: 2097152)
!28 = !DIEnumerator(name: "MSGLEVEL_ALL", value: 4194303)
!29 = !DIEnumerator(name: "MSGLEVEL_NOHILIGHT", value: 16777216)
!30 = !DIEnumerator(name: "MSGLEVEL_NO_ACT", value: 33554432)
!31 = !DIEnumerator(name: "MSGLEVEL_NEVER", value: 67108864)
!32 = !DIEnumerator(name: "MSGLEVEL_LASTLOG", value: 134217728)
!33 = !DIEnumerator(name: "MSGLEVEL_HIDDEN", value: 268435456)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !35, line: 3, size: 32, align: 32, elements: !36)
!35 = !DIFile(filename: "module-formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!36 = !{!37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275}
!37 = !DIEnumerator(name: "TXT_MODULE_NAME", value: 0)
!38 = !DIEnumerator(name: "TXT_FILL_1", value: 1)
!39 = !DIEnumerator(name: "TXT_LINE_START", value: 2)
!40 = !DIEnumerator(name: "TXT_LINE_START_IRSSI", value: 3)
!41 = !DIEnumerator(name: "TXT_TIMESTAMP", value: 4)
!42 = !DIEnumerator(name: "TXT_SERVERTAG", value: 5)
!43 = !DIEnumerator(name: "TXT_DAYCHANGE", value: 6)
!44 = !DIEnumerator(name: "TXT_TALKING_WITH", value: 7)
!45 = !DIEnumerator(name: "TXT_REFNUM_TOO_LOW", value: 8)
!46 = !DIEnumerator(name: "TXT_ERROR_SERVER_STICKY", value: 9)
!47 = !DIEnumerator(name: "TXT_SET_SERVER_STICKY", value: 10)
!48 = !DIEnumerator(name: "TXT_UNSET_SERVER_STICKY", value: 11)
!49 = !DIEnumerator(name: "TXT_WINDOW_NAME_NOT_UNIQUE", value: 12)
!50 = !DIEnumerator(name: "TXT_WINDOW_LEVEL", value: 13)
!51 = !DIEnumerator(name: "TXT_WINDOW_SET_IMMORTAL", value: 14)
!52 = !DIEnumerator(name: "TXT_WINDOW_UNSET_IMMORTAL", value: 15)
!53 = !DIEnumerator(name: "TXT_WINDOW_IMMORTAL_ERROR", value: 16)
!54 = !DIEnumerator(name: "TXT_WINDOWLIST_HEADER", value: 17)
!55 = !DIEnumerator(name: "TXT_WINDOWLIST_LINE", value: 18)
!56 = !DIEnumerator(name: "TXT_WINDOWLIST_FOOTER", value: 19)
!57 = !DIEnumerator(name: "TXT_WINDOWS_LAYOUT_SAVED", value: 20)
!58 = !DIEnumerator(name: "TXT_WINDOWS_LAYOUT_RESET", value: 21)
!59 = !DIEnumerator(name: "TXT_WINDOW_INFO_HEADER", value: 22)
!60 = !DIEnumerator(name: "TXT_WINDOW_INFO_FOOTER", value: 23)
!61 = !DIEnumerator(name: "TXT_WINDOW_INFO_REFNUM", value: 24)
!62 = !DIEnumerator(name: "TXT_WINDOW_INFO_REFNUM_STICKY", value: 25)
!63 = !DIEnumerator(name: "TXT_WINDOW_INFO_NAME", value: 26)
!64 = !DIEnumerator(name: "TXT_WINDOW_INFO_HISTORY", value: 27)
!65 = !DIEnumerator(name: "TXT_WINDOW_INFO_IMMORTAL", value: 28)
!66 = !DIEnumerator(name: "TXT_WINDOW_INFO_SIZE", value: 29)
!67 = !DIEnumerator(name: "TXT_WINDOW_INFO_LEVEL", value: 30)
!68 = !DIEnumerator(name: "TXT_WINDOW_INFO_SERVER", value: 31)
!69 = !DIEnumerator(name: "TXT_WINDOW_INFO_SERVER_STICKY", value: 32)
!70 = !DIEnumerator(name: "TXT_WINDOW_INFO_THEME", value: 33)
!71 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEMS_HEADER", value: 34)
!72 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEM", value: 35)
!73 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEMS_FOOTER", value: 36)
!74 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEMS_HEADER", value: 37)
!75 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEM", value: 38)
!76 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEMS_FOOTER", value: 39)
!77 = !DIEnumerator(name: "TXT_FILL_2", value: 40)
!78 = !DIEnumerator(name: "TXT_LOOKING_UP", value: 41)
!79 = !DIEnumerator(name: "TXT_CONNECTING", value: 42)
!80 = !DIEnumerator(name: "TXT_RECONNECTING", value: 43)
!81 = !DIEnumerator(name: "TXT_CONNECTION_ESTABLISHED", value: 44)
!82 = !DIEnumerator(name: "TXT_CANT_CONNECT", value: 45)
!83 = !DIEnumerator(name: "TXT_CONNECTION_LOST", value: 46)
!84 = !DIEnumerator(name: "TXT_LAG_DISCONNECTED", value: 47)
!85 = !DIEnumerator(name: "TXT_DISCONNECTED", value: 48)
!86 = !DIEnumerator(name: "TXT_SERVER_QUIT", value: 49)
!87 = !DIEnumerator(name: "TXT_SERVER_CHANGED", value: 50)
!88 = !DIEnumerator(name: "TXT_UNKNOWN_SERVER_TAG", value: 51)
!89 = !DIEnumerator(name: "TXT_NO_CONNECTED_SERVERS", value: 52)
!90 = !DIEnumerator(name: "TXT_SERVER_LIST", value: 53)
!91 = !DIEnumerator(name: "TXT_SERVER_LOOKUP_LIST", value: 54)
!92 = !DIEnumerator(name: "TXT_SERVER_RECONNECT_LIST", value: 55)
!93 = !DIEnumerator(name: "TXT_RECONNECT_REMOVED", value: 56)
!94 = !DIEnumerator(name: "TXT_RECONNECT_NOT_FOUND", value: 57)
!95 = !DIEnumerator(name: "TXT_SETUPSERVER_ADDED", value: 58)
!96 = !DIEnumerator(name: "TXT_SETUPSERVER_REMOVED", value: 59)
!97 = !DIEnumerator(name: "TXT_SETUPSERVER_NOT_FOUND", value: 60)
!98 = !DIEnumerator(name: "TXT_YOUR_NICK", value: 61)
!99 = !DIEnumerator(name: "TXT_FILL_3", value: 62)
!100 = !DIEnumerator(name: "TXT_JOIN", value: 63)
!101 = !DIEnumerator(name: "TXT_PART", value: 64)
!102 = !DIEnumerator(name: "TXT_KICK", value: 65)
!103 = !DIEnumerator(name: "TXT_QUIT", value: 66)
!104 = !DIEnumerator(name: "TXT_QUIT_ONCE", value: 67)
!105 = !DIEnumerator(name: "TXT_INVITE", value: 68)
!106 = !DIEnumerator(name: "TXT_NOT_INVITED", value: 69)
!107 = !DIEnumerator(name: "TXT_NEW_TOPIC", value: 70)
!108 = !DIEnumerator(name: "TXT_TOPIC_UNSET", value: 71)
!109 = !DIEnumerator(name: "TXT_YOUR_NICK_CHANGED", value: 72)
!110 = !DIEnumerator(name: "TXT_NICK_CHANGED", value: 73)
!111 = !DIEnumerator(name: "TXT_TALKING_IN", value: 74)
!112 = !DIEnumerator(name: "TXT_NOT_IN_CHANNELS", value: 75)
!113 = !DIEnumerator(name: "TXT_CURRENT_CHANNEL", value: 76)
!114 = !DIEnumerator(name: "TXT_NAMES", value: 77)
!115 = !DIEnumerator(name: "TXT_NAMES_PREFIX", value: 78)
!116 = !DIEnumerator(name: "TXT_NAMES_NICK_OP", value: 79)
!117 = !DIEnumerator(name: "TXT_NAMES_NICK_HALFOP", value: 80)
!118 = !DIEnumerator(name: "TXT_NAMES_NICK_VOICE", value: 81)
!119 = !DIEnumerator(name: "TXT_NAMES_NICK", value: 82)
!120 = !DIEnumerator(name: "TXT_ENDOFNAMES", value: 83)
!121 = !DIEnumerator(name: "TXT_CHANLIST_HEADER", value: 84)
!122 = !DIEnumerator(name: "TXT_CHANLIST_LINE", value: 85)
!123 = !DIEnumerator(name: "TXT_CHANSETUP_NOT_FOUND", value: 86)
!124 = !DIEnumerator(name: "TXT_CHANSETUP_ADDED", value: 87)
!125 = !DIEnumerator(name: "TXT_CHANSETUP_REMOVED", value: 88)
!126 = !DIEnumerator(name: "TXT_CHANSETUP_HEADER", value: 89)
!127 = !DIEnumerator(name: "TXT_CHANSETUP_LINE", value: 90)
!128 = !DIEnumerator(name: "TXT_CHANSETUP_FOOTER", value: 91)
!129 = !DIEnumerator(name: "TXT_FILL_4", value: 92)
!130 = !DIEnumerator(name: "TXT_OWN_MSG", value: 93)
!131 = !DIEnumerator(name: "TXT_OWN_MSG_CHANNEL", value: 94)
!132 = !DIEnumerator(name: "TXT_OWN_MSG_PRIVATE", value: 95)
!133 = !DIEnumerator(name: "TXT_OWN_MSG_PRIVATE_QUERY", value: 96)
!134 = !DIEnumerator(name: "TXT_PUBMSG_ME", value: 97)
!135 = !DIEnumerator(name: "TXT_PUBMSG_ME_CHANNEL", value: 98)
!136 = !DIEnumerator(name: "TXT_PUBMSG_HILIGHT", value: 99)
!137 = !DIEnumerator(name: "TXT_PUBMSG_HILIGHT_CHANNEL", value: 100)
!138 = !DIEnumerator(name: "TXT_PUBMSG", value: 101)
!139 = !DIEnumerator(name: "TXT_PUBMSG_CHANNEL", value: 102)
!140 = !DIEnumerator(name: "TXT_MSG_PRIVATE", value: 103)
!141 = !DIEnumerator(name: "TXT_MSG_PRIVATE_QUERY", value: 104)
!142 = !DIEnumerator(name: "TXT_NO_MSGS_GOT", value: 105)
!143 = !DIEnumerator(name: "TXT_NO_MSGS_SENT", value: 106)
!144 = !DIEnumerator(name: "TXT_FILL_5", value: 107)
!145 = !DIEnumerator(name: "TXT_QUERY_START", value: 108)
!146 = !DIEnumerator(name: "TXT_QUERY_STOP", value: 109)
!147 = !DIEnumerator(name: "TXT_NO_QUERY", value: 110)
!148 = !DIEnumerator(name: "TXT_QUERY_SERVER_CHANGED", value: 111)
!149 = !DIEnumerator(name: "TXT_FILL_6", value: 112)
!150 = !DIEnumerator(name: "TXT_HILIGHT_HEADER", value: 113)
!151 = !DIEnumerator(name: "TXT_HILIGHT_LINE", value: 114)
!152 = !DIEnumerator(name: "TXT_HILIGHT_FOOTER", value: 115)
!153 = !DIEnumerator(name: "TXT_HILIGHT_NOT_FOUND", value: 116)
!154 = !DIEnumerator(name: "TXT_HILIGHT_REMOVED", value: 117)
!155 = !DIEnumerator(name: "TXT_FILL_7", value: 118)
!156 = !DIEnumerator(name: "TXT_ALIAS_ADDED", value: 119)
!157 = !DIEnumerator(name: "TXT_ALIAS_REMOVED", value: 120)
!158 = !DIEnumerator(name: "TXT_ALIAS_NOT_FOUND", value: 121)
!159 = !DIEnumerator(name: "TXT_ALIASLIST_HEADER", value: 122)
!160 = !DIEnumerator(name: "TXT_ALIASLIST_LINE", value: 123)
!161 = !DIEnumerator(name: "TXT_ALIASLIST_FOOTER", value: 124)
!162 = !DIEnumerator(name: "TXT_FILL_8", value: 125)
!163 = !DIEnumerator(name: "TXT_LOG_OPENED", value: 126)
!164 = !DIEnumerator(name: "TXT_LOG_CLOSED", value: 127)
!165 = !DIEnumerator(name: "TXT_LOG_CREATE_FAILED", value: 128)
!166 = !DIEnumerator(name: "TXT_LOG_LOCKED", value: 129)
!167 = !DIEnumerator(name: "TXT_LOG_NOT_OPEN", value: 130)
!168 = !DIEnumerator(name: "TXT_LOG_STARTED", value: 131)
!169 = !DIEnumerator(name: "TXT_LOG_STOPPED", value: 132)
!170 = !DIEnumerator(name: "TXT_LOG_LIST_HEADER", value: 133)
!171 = !DIEnumerator(name: "TXT_LOG_LIST", value: 134)
!172 = !DIEnumerator(name: "TXT_LOG_LIST_FOOTER", value: 135)
!173 = !DIEnumerator(name: "TXT_WINDOWLOG_FILE", value: 136)
!174 = !DIEnumerator(name: "TXT_WINDOWLOG_FILE_LOGGING", value: 137)
!175 = !DIEnumerator(name: "TXT_LOG_NO_AWAY_MSGS", value: 138)
!176 = !DIEnumerator(name: "TXT_LOG_AWAY_MSGS", value: 139)
!177 = !DIEnumerator(name: "TXT_FILL_9", value: 140)
!178 = !DIEnumerator(name: "TXT_MODULE_HEADER", value: 141)
!179 = !DIEnumerator(name: "TXT_MODULE_LINE", value: 142)
!180 = !DIEnumerator(name: "TXT_MODULE_FOOTER", value: 143)
!181 = !DIEnumerator(name: "TXT_MODULE_ALREADY_LOADED", value: 144)
!182 = !DIEnumerator(name: "TXT_MODULE_NOT_LOADED", value: 145)
!183 = !DIEnumerator(name: "TXT_MODULE_LOAD_ERROR", value: 146)
!184 = !DIEnumerator(name: "TXT_MODULE_VERSION_MISMATCH", value: 147)
!185 = !DIEnumerator(name: "TXT_MODULE_INVALID", value: 148)
!186 = !DIEnumerator(name: "TXT_MODULE_LOADED", value: 149)
!187 = !DIEnumerator(name: "TXT_MODULE_UNLOADED", value: 150)
!188 = !DIEnumerator(name: "TXT_FILL_10", value: 151)
!189 = !DIEnumerator(name: "TXT_COMMAND_UNKNOWN", value: 152)
!190 = !DIEnumerator(name: "TXT_COMMAND_AMBIGUOUS", value: 153)
!191 = !DIEnumerator(name: "TXT_OPTION_UNKNOWN", value: 154)
!192 = !DIEnumerator(name: "TXT_OPTION_AMBIGUOUS", value: 155)
!193 = !DIEnumerator(name: "TXT_OPTION_MISSING_ARG", value: 156)
!194 = !DIEnumerator(name: "TXT_NOT_ENOUGH_PARAMS", value: 157)
!195 = !DIEnumerator(name: "TXT_NOT_CONNECTED", value: 158)
!196 = !DIEnumerator(name: "TXT_NOT_JOINED", value: 159)
!197 = !DIEnumerator(name: "TXT_CHAN_NOT_FOUND", value: 160)
!198 = !DIEnumerator(name: "TXT_CHAN_NOT_SYNCED", value: 161)
!199 = !DIEnumerator(name: "TXT_ILLEGAL_PROTO", value: 162)
!200 = !DIEnumerator(name: "TXT_NOT_GOOD_IDEA", value: 163)
!201 = !DIEnumerator(name: "TXT_INVALID_NUMBER", value: 164)
!202 = !DIEnumerator(name: "TXT_INVALID_TIME", value: 165)
!203 = !DIEnumerator(name: "TXT_INVALID_LEVEL", value: 166)
!204 = !DIEnumerator(name: "TXT_INVALID_SIZE", value: 167)
!205 = !DIEnumerator(name: "TXT_INVALID_CHARSET", value: 168)
!206 = !DIEnumerator(name: "TXT_INVALID_CHOICE", value: 169)
!207 = !DIEnumerator(name: "TXT_EVAL_MAX_RECURSE", value: 170)
!208 = !DIEnumerator(name: "TXT_PROGRAM_NOT_FOUND", value: 171)
!209 = !DIEnumerator(name: "TXT_NO_SERVER_DEFINED", value: 172)
!210 = !DIEnumerator(name: "TXT_FILL_11", value: 173)
!211 = !DIEnumerator(name: "TXT_THEME_SAVED", value: 174)
!212 = !DIEnumerator(name: "TXT_THEME_SAVE_FAILED", value: 175)
!213 = !DIEnumerator(name: "TXT_THEME_NOT_FOUND", value: 176)
!214 = !DIEnumerator(name: "TXT_THEME_CHANGED", value: 177)
!215 = !DIEnumerator(name: "TXT_WINDOW_THEME", value: 178)
!216 = !DIEnumerator(name: "TXT_WINDOW_THEME_DEFAULT", value: 179)
!217 = !DIEnumerator(name: "TXT_WINDOW_THEME_CHANGED", value: 180)
!218 = !DIEnumerator(name: "TXT_WINDOW_THEME_REMOVED", value: 181)
!219 = !DIEnumerator(name: "TXT_FORMAT_TITLE", value: 182)
!220 = !DIEnumerator(name: "TXT_FORMAT_SUBTITLE", value: 183)
!221 = !DIEnumerator(name: "TXT_FORMAT_ITEM", value: 184)
!222 = !DIEnumerator(name: "TXT_FILL_12", value: 185)
!223 = !DIEnumerator(name: "TXT_IGNORED", value: 186)
!224 = !DIEnumerator(name: "TXT_IGNORED_OPTIONS", value: 187)
!225 = !DIEnumerator(name: "TXT_UNIGNORED", value: 188)
!226 = !DIEnumerator(name: "TXT_IGNORE_NOT_FOUND", value: 189)
!227 = !DIEnumerator(name: "TXT_IGNORE_NO_IGNORES", value: 190)
!228 = !DIEnumerator(name: "TXT_IGNORE_HEADER", value: 191)
!229 = !DIEnumerator(name: "TXT_IGNORE_LINE", value: 192)
!230 = !DIEnumerator(name: "TXT_IGNORE_FOOTER", value: 193)
!231 = !DIEnumerator(name: "TXT_FILL_13", value: 194)
!232 = !DIEnumerator(name: "TXT_NOT_CHANNEL_OR_QUERY", value: 195)
!233 = !DIEnumerator(name: "TXT_CONVERSION_ADDED", value: 196)
!234 = !DIEnumerator(name: "TXT_CONVERSION_REMOVED", value: 197)
!235 = !DIEnumerator(name: "TXT_CONVERSION_NOT_FOUND", value: 198)
!236 = !DIEnumerator(name: "TXT_CONVERSION_NO_TRANSLITS", value: 199)
!237 = !DIEnumerator(name: "TXT_RECODE_HEADER", value: 200)
!238 = !DIEnumerator(name: "TXT_RECODE_LINE", value: 201)
!239 = !DIEnumerator(name: "TXT_FILL_14", value: 202)
!240 = !DIEnumerator(name: "TXT_UNKNOWN_CHAT_PROTOCOL", value: 203)
!241 = !DIEnumerator(name: "TXT_UNKNOWN_CHATNET", value: 204)
!242 = !DIEnumerator(name: "TXT_NOT_TOGGLE", value: 205)
!243 = !DIEnumerator(name: "TXT_PERL_ERROR", value: 206)
!244 = !DIEnumerator(name: "TXT_BIND_HEADER", value: 207)
!245 = !DIEnumerator(name: "TXT_BIND_LIST", value: 208)
!246 = !DIEnumerator(name: "TXT_BIND_COMMAND_LIST", value: 209)
!247 = !DIEnumerator(name: "TXT_BIND_FOOTER", value: 210)
!248 = !DIEnumerator(name: "TXT_BIND_UNKNOWN_ID", value: 211)
!249 = !DIEnumerator(name: "TXT_CONFIG_SAVED", value: 212)
!250 = !DIEnumerator(name: "TXT_CONFIG_RELOADED", value: 213)
!251 = !DIEnumerator(name: "TXT_CONFIG_MODIFIED", value: 214)
!252 = !DIEnumerator(name: "TXT_GLIB_ERROR", value: 215)
!253 = !DIEnumerator(name: "TXT_OVERWRITE_CONFIG", value: 216)
!254 = !DIEnumerator(name: "TXT_SET_TITLE", value: 217)
!255 = !DIEnumerator(name: "TXT_SET_ITEM", value: 218)
!256 = !DIEnumerator(name: "TXT_SET_UNKNOWN", value: 219)
!257 = !DIEnumerator(name: "TXT_SET_NOT_BOOLEAN", value: 220)
!258 = !DIEnumerator(name: "TXT_NO_COMPLETIONS", value: 221)
!259 = !DIEnumerator(name: "TXT_COMPLETION_REMOVED", value: 222)
!260 = !DIEnumerator(name: "TXT_COMPLETION_HEADER", value: 223)
!261 = !DIEnumerator(name: "TXT_COMPLETION_LINE", value: 224)
!262 = !DIEnumerator(name: "TXT_COMPLETION_FOOTER", value: 225)
!263 = !DIEnumerator(name: "TXT_CAPSICUM_ENABLED", value: 226)
!264 = !DIEnumerator(name: "TXT_CAPSICUM_DISABLED", value: 227)
!265 = !DIEnumerator(name: "TXT_CAPSICUM_FAILED", value: 228)
!266 = !DIEnumerator(name: "TLS_FILL_15", value: 229)
!267 = !DIEnumerator(name: "TXT_TLS_EPHEMERAL_KEY", value: 230)
!268 = !DIEnumerator(name: "TXT_TLS_EPHEMERAL_KEY_UNAVAILBLE", value: 231)
!269 = !DIEnumerator(name: "TXT_TLS_PUBKEY", value: 232)
!270 = !DIEnumerator(name: "TXT_TLS_CERT_HEADER", value: 233)
!271 = !DIEnumerator(name: "TXT_TLS_CERT_SUBJECT", value: 234)
!272 = !DIEnumerator(name: "TXT_TLS_CERT_ISSUER", value: 235)
!273 = !DIEnumerator(name: "TXT_TLS_PUBKEY_FINGERPRINT", value: 236)
!274 = !DIEnumerator(name: "TXT_TLS_CERT_FINGERPRINT", value: 237)
!275 = !DIEnumerator(name: "TXT_TLS_PROTOCOL_VERSION", value: 238)
!276 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !277, line: 69, size: 32, align: 32, elements: !278)
!277 = !DIFile(filename: "/usr/include/glib-2.0/glib/giochannel.h", directory: "/home/lichi/Desktop/irssi/task1")
!278 = !{!279, !280, !281, !282}
!279 = !DIEnumerator(name: "G_IO_STATUS_ERROR", value: 0)
!280 = !DIEnumerator(name: "G_IO_STATUS_NORMAL", value: 1)
!281 = !DIEnumerator(name: "G_IO_STATUS_EOF", value: 2)
!282 = !DIEnumerator(name: "G_IO_STATUS_AGAIN", value: 3)
!283 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !277, line: 77, size: 32, align: 32, elements: !284)
!284 = !{!285, !286, !287}
!285 = !DIEnumerator(name: "G_SEEK_CUR", value: 0)
!286 = !DIEnumerator(name: "G_SEEK_SET", value: 1)
!287 = !DIEnumerator(name: "G_SEEK_END", value: 2)
!288 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !289, line: 31, size: 32, align: 32, elements: !290)
!289 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/irssi/task1")
!290 = !{!291, !292, !293, !294, !295, !296}
!291 = !DIEnumerator(name: "G_IO_IN", value: 1)
!292 = !DIEnumerator(name: "G_IO_OUT", value: 4)
!293 = !DIEnumerator(name: "G_IO_PRI", value: 2)
!294 = !DIEnumerator(name: "G_IO_ERR", value: 8)
!295 = !DIEnumerator(name: "G_IO_HUP", value: 16)
!296 = !DIEnumerator(name: "G_IO_NVAL", value: 32)
!297 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !277, line: 84, size: 32, align: 32, elements: !298)
!298 = !{!299, !300, !301, !302, !303, !304, !305, !306, !307}
!299 = !DIEnumerator(name: "G_IO_FLAG_APPEND", value: 1)
!300 = !DIEnumerator(name: "G_IO_FLAG_NONBLOCK", value: 2)
!301 = !DIEnumerator(name: "G_IO_FLAG_IS_READABLE", value: 4)
!302 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITABLE", value: 8)
!303 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITEABLE", value: 8)
!304 = !DIEnumerator(name: "G_IO_FLAG_IS_SEEKABLE", value: 16)
!305 = !DIEnumerator(name: "G_IO_FLAG_MASK", value: 31)
!306 = !DIEnumerator(name: "G_IO_FLAG_GET_MASK", value: 31)
!307 = !DIEnumerator(name: "G_IO_FLAG_SET_MASK", value: 3)
!308 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !309, line: 25, size: 32, align: 32, elements: !310)
!309 = !DIFile(filename: "../../../src/core/commands.h", directory: "/home/lichi/Desktop/irssi/task1")
!310 = !{!311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328}
!311 = !DIEnumerator(name: "CMDERR_OPTION_UNKNOWN", value: -3)
!312 = !DIEnumerator(name: "CMDERR_OPTION_AMBIGUOUS", value: -2)
!313 = !DIEnumerator(name: "CMDERR_OPTION_ARG_MISSING", value: -1)
!314 = !DIEnumerator(name: "CMDERR_UNKNOWN", value: 0)
!315 = !DIEnumerator(name: "CMDERR_AMBIGUOUS", value: 1)
!316 = !DIEnumerator(name: "CMDERR_ERRNO", value: 2)
!317 = !DIEnumerator(name: "CMDERR_NOT_ENOUGH_PARAMS", value: 3)
!318 = !DIEnumerator(name: "CMDERR_NOT_CONNECTED", value: 4)
!319 = !DIEnumerator(name: "CMDERR_NOT_JOINED", value: 5)
!320 = !DIEnumerator(name: "CMDERR_CHAN_NOT_FOUND", value: 6)
!321 = !DIEnumerator(name: "CMDERR_CHAN_NOT_SYNCED", value: 7)
!322 = !DIEnumerator(name: "CMDERR_ILLEGAL_PROTO", value: 8)
!323 = !DIEnumerator(name: "CMDERR_NOT_GOOD_IDEA", value: 9)
!324 = !DIEnumerator(name: "CMDERR_INVALID_TIME", value: 10)
!325 = !DIEnumerator(name: "CMDERR_INVALID_CHARSET", value: 11)
!326 = !DIEnumerator(name: "CMDERR_EVAL_MAX_RECURSE", value: 12)
!327 = !DIEnumerator(name: "CMDERR_PROGRAM_NOT_FOUND", value: 13)
!328 = !DIEnumerator(name: "CMDERR_NO_SERVER_DEFINED", value: 14)
!329 = !{!330, !337, !338, !340, !342, !345}
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !331, line: 9, baseType: !332)
!331 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !335, !335, !335, !335, !335, !335}
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64, align: 64)
!336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !339, line: 77, baseType: !337)
!339 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !339, line: 48, baseType: !341)
!341 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64, align: 64)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !339, line: 46, baseType: !344)
!344 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64, align: 64)
!346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !344)
!347 = !{i32 2, !"Dwarf Version", i32 4}
!348 = !{i32 2, !"Debug Info Version", i32 3}
!349 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!350 = distinct !DISubprogram(name: "fe_server_init", scope: !351, file: !351, line: 446, type: !352, isLocal: false, isDefinition: true, scopeLine: 447, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !354)
!351 = !DIFile(filename: "fe-server.c", directory: "/home/lichi/Desktop/irssi/task1")
!352 = !DISubroutineType(types: !353)
!353 = !{null}
!354 = !{}
!355 = !DILocation(line: 448, column: 2, scope: !350)
!356 = !DILocation(line: 449, column: 2, scope: !350)
!357 = !DILocation(line: 450, column: 2, scope: !350)
!358 = !DILocation(line: 451, column: 2, scope: !350)
!359 = !DILocation(line: 452, column: 2, scope: !350)
!360 = !DILocation(line: 453, column: 2, scope: !350)
!361 = !DILocation(line: 454, column: 2, scope: !350)
!362 = !DILocation(line: 456, column: 2, scope: !350)
!363 = !DILocation(line: 457, column: 2, scope: !350)
!364 = !DILocation(line: 459, column: 2, scope: !350)
!365 = !DILocation(line: 460, column: 2, scope: !350)
!366 = !DILocation(line: 461, column: 2, scope: !350)
!367 = !DILocation(line: 462, column: 2, scope: !350)
!368 = !DILocation(line: 463, column: 2, scope: !350)
!369 = !DILocation(line: 464, column: 2, scope: !350)
!370 = !DILocation(line: 466, column: 2, scope: !350)
!371 = !DILocation(line: 467, column: 2, scope: !350)
!372 = !DILocation(line: 468, column: 2, scope: !350)
!373 = !DILocation(line: 470, column: 2, scope: !350)
!374 = !DILocation(line: 471, column: 1, scope: !350)
!375 = distinct !DISubprogram(name: "cmd_server", scope: !351, file: !351, line: 303, type: !376, isLocal: true, isDefinition: true, scopeLine: 304, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !354)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !345}
!378 = !DILocalVariable(name: "data", arg: 1, scope: !375, file: !351, line: 303, type: !345)
!379 = !DIExpression()
!380 = !DILocation(line: 303, column: 36, scope: !375)
!381 = !DILocation(line: 305, column: 7, scope: !382)
!382 = distinct !DILexicalBlock(scope: !375, file: !351, line: 305, column: 6)
!383 = !DILocation(line: 305, column: 6, scope: !382)
!384 = !DILocation(line: 305, column: 12, scope: !382)
!385 = !DILocation(line: 305, column: 6, scope: !375)
!386 = !DILocation(line: 306, column: 3, scope: !382)
!387 = !DILocation(line: 308, column: 6, scope: !388)
!388 = distinct !DILexicalBlock(scope: !375, file: !351, line: 308, column: 6)
!389 = !DILocation(line: 308, column: 14, scope: !388)
!390 = !DILocation(line: 308, column: 21, scope: !388)
!391 = !DILocation(line: 308, column: 24, scope: !392)
!392 = !DILexicalBlockFile(scope: !388, file: !351, discriminator: 1)
!393 = !DILocation(line: 308, column: 39, scope: !392)
!394 = !DILocation(line: 308, column: 47, scope: !392)
!395 = !DILocation(line: 309, column: 6, scope: !388)
!396 = !DILocation(line: 309, column: 17, scope: !388)
!397 = !DILocation(line: 308, column: 6, scope: !398)
!398 = !DILexicalBlockFile(scope: !375, file: !351, discriminator: 2)
!399 = !DILocation(line: 310, column: 3, scope: !400)
!400 = distinct !DILexicalBlock(scope: !388, file: !351, line: 309, column: 25)
!401 = !DILocation(line: 312, column: 2, scope: !400)
!402 = !DILocation(line: 313, column: 3, scope: !403)
!403 = distinct !DILexicalBlock(scope: !388, file: !351, line: 312, column: 9)
!404 = !DILocation(line: 314, column: 3, scope: !403)
!405 = !DILocation(line: 315, column: 3, scope: !403)
!406 = !DILocation(line: 318, column: 9, scope: !375)
!407 = !DILocation(line: 319, column: 1, scope: !375)
!408 = !DILocation(line: 319, column: 1, scope: !409)
!409 = !DILexicalBlockFile(scope: !375, file: !351, discriminator: 1)
!410 = distinct !DISubprogram(name: "cmd_server_connect", scope: !351, file: !351, line: 321, type: !376, isLocal: true, isDefinition: true, scopeLine: 322, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !354)
!411 = !DILocalVariable(name: "data", arg: 1, scope: !410, file: !351, line: 321, type: !345)
!412 = !DILocation(line: 321, column: 44, scope: !410)
!413 = !DILocalVariable(name: "optlist", scope: !410, file: !351, line: 323, type: !414)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64, align: 64)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !416, line: 37, baseType: !417)
!416 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!417 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !416, line: 37, flags: DIFlagFwdDecl)
!418 = !DILocation(line: 323, column: 14, scope: !410)
!419 = !DILocalVariable(name: "addr", scope: !410, file: !351, line: 324, type: !420)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64, align: 64)
!421 = !DILocation(line: 324, column: 8, scope: !410)
!422 = !DILocalVariable(name: "free_arg", scope: !410, file: !351, line: 325, type: !337)
!423 = !DILocation(line: 325, column: 8, scope: !410)
!424 = !DILocation(line: 327, column: 22, scope: !425)
!425 = distinct !DILexicalBlock(scope: !410, file: !351, line: 327, column: 6)
!426 = !DILocation(line: 327, column: 7, scope: !425)
!427 = !DILocation(line: 327, column: 6, scope: !410)
!428 = !DILocation(line: 329, column: 3, scope: !425)
!429 = !DILocation(line: 331, column: 7, scope: !430)
!430 = distinct !DILexicalBlock(scope: !410, file: !351, line: 331, column: 6)
!431 = !DILocation(line: 331, column: 6, scope: !430)
!432 = !DILocation(line: 331, column: 12, scope: !430)
!433 = !DILocation(line: 331, column: 20, scope: !430)
!434 = !DILocation(line: 331, column: 33, scope: !435)
!435 = !DILexicalBlockFile(scope: !430, file: !351, discriminator: 1)
!436 = !DILocation(line: 331, column: 23, scope: !435)
!437 = !DILocation(line: 331, column: 44, scope: !435)
!438 = !DILocation(line: 331, column: 6, scope: !435)
!439 = !DILocation(line: 332, column: 3, scope: !430)
!440 = distinct !{!440, !439}
!441 = !DILocation(line: 332, column: 24, scope: !442)
!442 = !DILexicalBlockFile(scope: !443, file: !351, discriminator: 1)
!443 = distinct !DILexicalBlock(scope: !430, file: !351, line: 332, column: 6)
!444 = !DILocation(line: 332, column: 8, scope: !442)
!445 = !DILocation(line: 332, column: 35, scope: !442)
!446 = distinct !{!446, !447}
!447 = !DILocation(line: 332, column: 35, scope: !443)
!448 = !DILocation(line: 332, column: 40, scope: !449)
!449 = !DILexicalBlockFile(scope: !450, file: !351, discriminator: 2)
!450 = distinct !DILexicalBlock(scope: !443, file: !351, line: 332, column: 38)
!451 = !DILocation(line: 332, column: 122, scope: !452)
!452 = !DILexicalBlockFile(scope: !449, file: !351, discriminator: 5)
!453 = !DILocation(line: 332, column: 137, scope: !449)
!454 = !DILocation(line: 332, column: 158, scope: !455)
!455 = !DILexicalBlockFile(scope: !443, file: !351, discriminator: 3)
!456 = !DILocation(line: 332, column: 158, scope: !457)
!457 = !DILexicalBlockFile(scope: !443, file: !351, discriminator: 4)
!458 = !DILocation(line: 333, column: 7, scope: !459)
!459 = distinct !DILexicalBlock(scope: !410, file: !351, line: 333, column: 6)
!460 = !DILocation(line: 333, column: 6, scope: !459)
!461 = !DILocation(line: 333, column: 12, scope: !459)
!462 = !DILocation(line: 333, column: 6, scope: !410)
!463 = !DILocation(line: 333, column: 20, scope: !464)
!464 = !DILexicalBlockFile(scope: !459, file: !351, discriminator: 1)
!465 = !DILocation(line: 335, column: 18, scope: !410)
!466 = !DILocation(line: 335, column: 2, scope: !410)
!467 = !DILocation(line: 336, column: 1, scope: !410)
!468 = !DILocation(line: 336, column: 1, scope: !469)
!469 = !DILexicalBlockFile(scope: !410, file: !351, discriminator: 1)
!470 = distinct !DISubprogram(name: "cmd_server_add", scope: !351, file: !351, line: 258, type: !376, isLocal: true, isDefinition: true, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !354)
!471 = !DILocalVariable(name: "data", arg: 1, scope: !470, file: !351, line: 258, type: !345)
!472 = !DILocation(line: 258, column: 40, scope: !470)
!473 = !DILocation(line: 260, column: 24, scope: !470)
!474 = !DILocation(line: 260, column: 2, scope: !470)
!475 = !DILocation(line: 261, column: 1, scope: !470)
!476 = distinct !DISubprogram(name: "cmd_server_modify", scope: !351, file: !351, line: 263, type: !376, isLocal: true, isDefinition: true, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !354)
!477 = !DILocalVariable(name: "data", arg: 1, scope: !476, file: !351, line: 263, type: !345)
!478 = !DILocation(line: 263, column: 43, scope: !476)
!479 = !DILocation(line: 265, column: 24, scope: !476)
!480 = !DILocation(line: 265, column: 2, scope: !476)
!481 = !DILocation(line: 266, column: 1, scope: !476)
!482 = distinct !DISubprogram(name: "cmd_server_remove", scope: !351, file: !351, line: 269, type: !376, isLocal: true, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !354)
!483 = !DILocalVariable(name: "data", arg: 1, scope: !482, file: !351, line: 269, type: !345)
!484 = !DILocation(line: 269, column: 43, scope: !482)
!485 = !DILocalVariable(name: "rec", scope: !482, file: !351, line: 271, type: !486)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64, align: 64)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_SETUP_REC", file: !488, line: 114, baseType: !489)
!488 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_SETUP_REC", file: !490, line: 13, size: 1408, align: 64, elements: !491)
!490 = !DIFile(filename: "../../../src/core/servers-setup.h", directory: "/home/lichi/Desktop/irssi/task1")
!491 = !{!492, !495, !496, !497, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !545, !546, !551, !552, !553, !554, !555, !556, !557, !558}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !489, file: !493, line: 1, baseType: !494, size: 32, align: 32)
!493 = !DIFile(filename: "../../../src/core/server-setup-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!494 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !489, file: !493, line: 2, baseType: !494, size: 32, align: 32, offset: 32)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !489, file: !493, line: 4, baseType: !420, size: 64, align: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !489, file: !493, line: 6, baseType: !498, size: 16, align: 16, offset: 128)
!498 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !489, file: !493, line: 7, baseType: !420, size: 64, align: 64, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !489, file: !493, line: 8, baseType: !494, size: 32, align: 32, offset: 256)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !489, file: !493, line: 9, baseType: !420, size: 64, align: 64, offset: 320)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !489, file: !493, line: 11, baseType: !494, size: 32, align: 32, offset: 384)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !489, file: !493, line: 12, baseType: !420, size: 64, align: 64, offset: 448)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !489, file: !493, line: 14, baseType: !420, size: 64, align: 64, offset: 512)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !489, file: !493, line: 15, baseType: !420, size: 64, align: 64, offset: 576)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !489, file: !493, line: 16, baseType: !420, size: 64, align: 64, offset: 640)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !489, file: !493, line: 17, baseType: !420, size: 64, align: 64, offset: 704)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !489, file: !493, line: 18, baseType: !420, size: 64, align: 64, offset: 768)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !489, file: !493, line: 19, baseType: !420, size: 64, align: 64, offset: 832)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !489, file: !493, line: 20, baseType: !420, size: 64, align: 64, offset: 896)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !489, file: !493, line: 21, baseType: !420, size: 64, align: 64, offset: 960)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "own_host", scope: !489, file: !493, line: 23, baseType: !420, size: 64, align: 64, offset: 1024)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !489, file: !493, line: 24, baseType: !514, size: 64, align: 64, offset: 1088)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64, align: 64)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !488, line: 99, baseType: !516)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !517, line: 22, size: 160, align: 32, elements: !518)
!517 = !DIFile(filename: "../../../src/core/network.h", directory: "/home/lichi/Desktop/irssi/task1")
!518 = !{!519, !520}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !516, file: !517, line: 23, baseType: !498, size: 16, align: 16)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !516, file: !517, line: 24, baseType: !521, size: 128, align: 32, offset: 32)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !522, line: 211, size: 128, align: 32, elements: !523)
!522 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/irssi/task1")
!523 = !{!524}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !521, file: !522, line: 220, baseType: !525, size: 128, align: 32)
!525 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !521, file: !522, line: 213, size: 128, align: 32, elements: !526)
!526 = !{!527, !534, !539}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !525, file: !522, line: 215, baseType: !528, size: 128, align: 8)
!528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !529, size: 128, align: 8, elements: !532)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !530, line: 48, baseType: !531)
!530 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/irssi/task1")
!531 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!532 = !{!533}
!533 = !DISubrange(count: 16)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !525, file: !522, line: 217, baseType: !535, size: 128, align: 16)
!535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !536, size: 128, align: 16, elements: !537)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !530, line: 49, baseType: !498)
!537 = !{!538}
!538 = !DISubrange(count: 8)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !525, file: !522, line: 218, baseType: !540, size: 128, align: 32)
!540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !541, size: 128, align: 32, elements: !543)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !530, line: 51, baseType: !542)
!542 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!543 = !{!544}
!544 = !DISubrange(count: 4)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !489, file: !493, line: 24, baseType: !514, size: 64, align: 64, offset: 1152)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "last_connect", scope: !489, file: !493, line: 26, baseType: !547, size: 64, align: 64, offset: 1216)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !548, line: 75, baseType: !549)
!548 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !550, line: 139, baseType: !341)
!550 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!551 = !DIDerivedType(tag: DW_TAG_member, name: "autoconnect", scope: !489, file: !493, line: 28, baseType: !542, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "no_proxy", scope: !489, file: !493, line: 29, baseType: !542, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "last_failed", scope: !489, file: !493, line: 30, baseType: !542, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !489, file: !493, line: 31, baseType: !542, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !489, file: !493, line: 32, baseType: !542, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !489, file: !493, line: 33, baseType: !542, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !489, file: !493, line: 34, baseType: !542, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !489, file: !493, line: 36, baseType: !414, size: 64, align: 64, offset: 1344)
!559 = !DILocation(line: 271, column: 20, scope: !482)
!560 = !DILocalVariable(name: "addr", scope: !482, file: !351, line: 272, type: !420)
!561 = !DILocation(line: 272, column: 8, scope: !482)
!562 = !DILocalVariable(name: "port", scope: !482, file: !351, line: 272, type: !420)
!563 = !DILocation(line: 272, column: 15, scope: !482)
!564 = !DILocalVariable(name: "chatnet", scope: !482, file: !351, line: 272, type: !420)
!565 = !DILocation(line: 272, column: 22, scope: !482)
!566 = !DILocalVariable(name: "free_arg", scope: !482, file: !351, line: 273, type: !337)
!567 = !DILocation(line: 273, column: 8, scope: !482)
!568 = !DILocation(line: 275, column: 22, scope: !569)
!569 = distinct !DILexicalBlock(scope: !482, file: !351, line: 275, column: 6)
!570 = !DILocation(line: 275, column: 7, scope: !569)
!571 = !DILocation(line: 275, column: 6, scope: !482)
!572 = !DILocation(line: 276, column: 3, scope: !569)
!573 = !DILocation(line: 277, column: 7, scope: !574)
!574 = distinct !DILexicalBlock(scope: !482, file: !351, line: 277, column: 6)
!575 = !DILocation(line: 277, column: 6, scope: !574)
!576 = !DILocation(line: 277, column: 12, scope: !574)
!577 = !DILocation(line: 277, column: 6, scope: !482)
!578 = !DILocation(line: 277, column: 21, scope: !579)
!579 = !DILexicalBlockFile(scope: !574, file: !351, discriminator: 1)
!580 = distinct !{!580, !581}
!581 = !DILocation(line: 277, column: 21, scope: !574)
!582 = !DILocation(line: 277, column: 42, scope: !583)
!583 = !DILexicalBlockFile(scope: !584, file: !351, discriminator: 2)
!584 = distinct !DILexicalBlock(scope: !574, file: !351, line: 277, column: 24)
!585 = !DILocation(line: 277, column: 26, scope: !583)
!586 = !DILocation(line: 277, column: 53, scope: !583)
!587 = distinct !{!587, !588}
!588 = !DILocation(line: 277, column: 53, scope: !584)
!589 = !DILocation(line: 277, column: 58, scope: !590)
!590 = !DILexicalBlockFile(scope: !591, file: !351, discriminator: 3)
!591 = distinct !DILexicalBlock(scope: !584, file: !351, line: 277, column: 56)
!592 = !DILocation(line: 277, column: 140, scope: !593)
!593 = !DILexicalBlockFile(scope: !590, file: !351, discriminator: 6)
!594 = !DILocation(line: 277, column: 155, scope: !590)
!595 = !DILocation(line: 277, column: 176, scope: !596)
!596 = !DILexicalBlockFile(scope: !584, file: !351, discriminator: 4)
!597 = !DILocation(line: 277, column: 176, scope: !598)
!598 = !DILexicalBlockFile(scope: !584, file: !351, discriminator: 5)
!599 = !DILocation(line: 279, column: 7, scope: !600)
!600 = distinct !DILexicalBlock(scope: !482, file: !351, line: 279, column: 6)
!601 = !DILocation(line: 279, column: 6, scope: !600)
!602 = !DILocation(line: 279, column: 12, scope: !600)
!603 = !DILocation(line: 279, column: 6, scope: !482)
!604 = !DILocation(line: 280, column: 8, scope: !605)
!605 = distinct !DILexicalBlock(scope: !606, file: !351, line: 280, column: 7)
!606 = distinct !DILexicalBlock(scope: !600, file: !351, line: 279, column: 21)
!607 = !DILocation(line: 280, column: 7, scope: !605)
!608 = !DILocation(line: 280, column: 16, scope: !605)
!609 = !DILocation(line: 280, column: 7, scope: !606)
!610 = !DILocation(line: 281, column: 28, scope: !605)
!611 = !DILocation(line: 281, column: 10, scope: !605)
!612 = !DILocation(line: 281, column: 8, scope: !605)
!613 = !DILocation(line: 281, column: 4, scope: !605)
!614 = !DILocation(line: 283, column: 28, scope: !605)
!615 = !DILocation(line: 283, column: 38, scope: !605)
!616 = !DILocation(line: 283, column: 10, scope: !605)
!617 = !DILocation(line: 283, column: 8, scope: !605)
!618 = !DILocation(line: 284, column: 2, scope: !606)
!619 = !DILocation(line: 287, column: 8, scope: !620)
!620 = distinct !DILexicalBlock(scope: !621, file: !351, line: 287, column: 7)
!621 = distinct !DILexicalBlock(scope: !600, file: !351, line: 286, column: 2)
!622 = !DILocation(line: 287, column: 7, scope: !620)
!623 = !DILocation(line: 287, column: 16, scope: !620)
!624 = !DILocation(line: 287, column: 7, scope: !621)
!625 = !DILocation(line: 288, column: 28, scope: !620)
!626 = !DILocation(line: 288, column: 39, scope: !620)
!627 = !DILocation(line: 288, column: 34, scope: !620)
!628 = !DILocation(line: 288, column: 10, scope: !629)
!629 = !DILexicalBlockFile(scope: !620, file: !351, discriminator: 1)
!630 = !DILocation(line: 288, column: 8, scope: !620)
!631 = !DILocation(line: 288, column: 4, scope: !620)
!632 = !DILocation(line: 290, column: 28, scope: !620)
!633 = !DILocation(line: 290, column: 39, scope: !620)
!634 = !DILocation(line: 290, column: 34, scope: !620)
!635 = !DILocation(line: 290, column: 46, scope: !620)
!636 = !DILocation(line: 290, column: 10, scope: !629)
!637 = !DILocation(line: 290, column: 8, scope: !620)
!638 = !DILocation(line: 293, column: 6, scope: !639)
!639 = distinct !DILexicalBlock(scope: !482, file: !351, line: 293, column: 6)
!640 = !DILocation(line: 293, column: 10, scope: !639)
!641 = !DILocation(line: 293, column: 6, scope: !482)
!642 = !DILocation(line: 294, column: 54, scope: !639)
!643 = !DILocation(line: 294, column: 60, scope: !639)
!644 = !DILocation(line: 294, column: 3, scope: !639)
!645 = !DILocation(line: 296, column: 23, scope: !646)
!646 = distinct !DILexicalBlock(scope: !639, file: !351, line: 295, column: 7)
!647 = !DILocation(line: 296, column: 3, scope: !646)
!648 = !DILocation(line: 297, column: 52, scope: !646)
!649 = !DILocation(line: 297, column: 58, scope: !646)
!650 = !DILocation(line: 297, column: 3, scope: !646)
!651 = !DILocation(line: 300, column: 18, scope: !482)
!652 = !DILocation(line: 300, column: 2, scope: !482)
!653 = !DILocation(line: 301, column: 1, scope: !482)
!654 = !DILocation(line: 301, column: 1, scope: !655)
!655 = !DILexicalBlockFile(scope: !482, file: !351, discriminator: 1)
!656 = distinct !DISubprogram(name: "server_command", scope: !351, file: !351, line: 338, type: !657, isLocal: true, isDefinition: true, scopeLine: 340, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !354)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !345, !659, !974}
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64, align: 64)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !488, line: 107, baseType: !661)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !662, line: 30, size: 2240, align: 64, elements: !663)
!662 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!663 = !{!664, !666, !667, !668, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !901, !902, !906, !907, !908, !912, !913, !914, !915, !916, !917, !918, !919, !920, !926, !927, !928, !929, !930, !934, !938, !942, !946, !950, !955, !962, !969, !973}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !661, file: !665, line: 3, baseType: !494, size: 32, align: 32)
!665 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!666 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !661, file: !665, line: 4, baseType: !494, size: 32, align: 32, offset: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !661, file: !665, line: 6, baseType: !494, size: 32, align: 32, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !661, file: !665, line: 8, baseType: !669, size: 64, align: 64, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64, align: 64)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !488, line: 113, baseType: !671)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !662, line: 25, size: 1920, align: 64, elements: !672)
!672 = !{!673, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !671, file: !674, line: 3, baseType: !494, size: 32, align: 32)
!674 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!675 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !671, file: !674, line: 4, baseType: !494, size: 32, align: 32, offset: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !671, file: !674, line: 6, baseType: !494, size: 32, align: 32, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !671, file: !674, line: 9, baseType: !420, size: 64, align: 64, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !671, file: !674, line: 10, baseType: !494, size: 32, align: 32, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !671, file: !674, line: 11, baseType: !420, size: 64, align: 64, offset: 256)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !671, file: !674, line: 11, baseType: !420, size: 64, align: 64, offset: 320)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !671, file: !674, line: 11, baseType: !420, size: 64, align: 64, offset: 384)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !671, file: !674, line: 13, baseType: !498, size: 16, align: 16, offset: 448)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !671, file: !674, line: 14, baseType: !420, size: 64, align: 64, offset: 512)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !671, file: !674, line: 15, baseType: !420, size: 64, align: 64, offset: 576)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !671, file: !674, line: 16, baseType: !494, size: 32, align: 32, offset: 640)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !671, file: !674, line: 17, baseType: !420, size: 64, align: 64, offset: 704)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !671, file: !674, line: 19, baseType: !514, size: 64, align: 64, offset: 768)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !671, file: !674, line: 19, baseType: !514, size: 64, align: 64, offset: 832)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !671, file: !674, line: 21, baseType: !420, size: 64, align: 64, offset: 896)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !671, file: !674, line: 22, baseType: !420, size: 64, align: 64, offset: 960)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !671, file: !674, line: 23, baseType: !420, size: 64, align: 64, offset: 1024)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !671, file: !674, line: 24, baseType: !420, size: 64, align: 64, offset: 1088)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !671, file: !674, line: 26, baseType: !420, size: 64, align: 64, offset: 1152)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !671, file: !674, line: 27, baseType: !420, size: 64, align: 64, offset: 1216)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !671, file: !674, line: 28, baseType: !420, size: 64, align: 64, offset: 1280)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !671, file: !674, line: 29, baseType: !420, size: 64, align: 64, offset: 1344)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !671, file: !674, line: 30, baseType: !420, size: 64, align: 64, offset: 1408)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !671, file: !674, line: 31, baseType: !420, size: 64, align: 64, offset: 1472)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !671, file: !674, line: 32, baseType: !420, size: 64, align: 64, offset: 1536)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !671, file: !674, line: 33, baseType: !420, size: 64, align: 64, offset: 1600)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !671, file: !674, line: 35, baseType: !702, size: 64, align: 64, offset: 1664)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64, align: 64)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !277, line: 41, baseType: !704)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !277, line: 97, size: 896, align: 64, elements: !705)
!705 = !{!706, !708, !845, !846, !851, !852, !853, !854, !855, !864, !865, !866, !870, !871, !872, !873, !874, !875, !876, !877}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !704, file: !277, line: 100, baseType: !707, size: 32, align: 32)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !339, line: 49, baseType: !494)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !704, file: !277, line: 101, baseType: !709, size: 64, align: 64, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64, align: 64)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !277, line: 42, baseType: !711)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !277, line: 131, size: 512, align: 64, elements: !712)
!712 = !{!713, !734, !740, !746, !750, !832, !836, !841}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !711, file: !277, line: 133, baseType: !714, size: 64, align: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64, align: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!717, !702, !342, !718, !721, !722}
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !277, line: 75, baseType: !276)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !719, line: 66, baseType: !720)
!719 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!720 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64, align: 64)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64, align: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64, align: 64)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !725, line: 42, baseType: !726)
!725 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !725, line: 44, size: 128, align: 64, elements: !727)
!727 = !{!728, !732, !733}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !726, file: !725, line: 46, baseType: !729, size: 32, align: 32)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !730, line: 36, baseType: !731)
!730 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !719, line: 45, baseType: !542)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !726, file: !725, line: 47, baseType: !707, size: 32, align: 32, offset: 32)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !726, file: !725, line: 48, baseType: !342, size: 64, align: 64, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !711, file: !277, line: 138, baseType: !735, size: 64, align: 64, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64, align: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!717, !702, !738, !718, !721, !722}
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64, align: 64)
!739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !343)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !711, file: !277, line: 143, baseType: !741, size: 64, align: 64, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64, align: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!717, !702, !744, !745, !722}
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !719, line: 51, baseType: !341)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !277, line: 82, baseType: !283)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !711, file: !277, line: 147, baseType: !747, size: 64, align: 64, offset: 192)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64, align: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!717, !702, !722}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !711, file: !277, line: 149, baseType: !751, size: 64, align: 64, offset: 256)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64, align: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!754, !702, !831}
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64, align: 64)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !289, line: 64, baseType: !756)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !289, line: 171, size: 768, align: 64, elements: !757)
!757 = !{!758, !759, !780, !807, !809, !813, !814, !815, !816, !824, !825, !826, !827}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !756, file: !289, line: 174, baseType: !338, size: 64, align: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !756, file: !289, line: 175, baseType: !760, size: 64, align: 64, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64, align: 64)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !289, line: 77, baseType: !762)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !289, line: 196, size: 192, align: 64, elements: !763)
!763 = !{!764, !768, !769}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !762, file: !289, line: 198, baseType: !765, size: 64, align: 64)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64, align: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{null, !338}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !762, file: !289, line: 199, baseType: !765, size: 64, align: 64, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !762, file: !289, line: 200, baseType: !770, size: 64, align: 64, offset: 128)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64, align: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{null, !338, !754, !773, !779}
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64, align: 64)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !289, line: 155, baseType: !775)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64, align: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{!778, !338}
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !339, line: 50, baseType: !707)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !756, file: !289, line: 177, baseType: !781, size: 64, align: 64, offset: 128)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64, align: 64)
!782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !783)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !289, line: 130, baseType: !784)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !289, line: 214, size: 384, align: 64, elements: !785)
!785 = !{!786, !791, !795, !799, !803, !804}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !784, file: !289, line: 216, baseType: !787, size: 64, align: 64)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64, align: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{!778, !754, !790}
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64, align: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !784, file: !289, line: 218, baseType: !792, size: 64, align: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64, align: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{!778, !754}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !784, file: !289, line: 219, baseType: !796, size: 64, align: 64, offset: 128)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64, align: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!778, !754, !774, !338}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !784, file: !289, line: 222, baseType: !800, size: 64, align: 64, offset: 192)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64, align: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{null, !754}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !784, file: !289, line: 226, baseType: !774, size: 64, align: 64, offset: 256)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !784, file: !289, line: 227, baseType: !805, size: 64, align: 64, offset: 320)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !289, line: 212, baseType: !806)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !756, file: !289, line: 178, baseType: !808, size: 32, align: 32, offset: 192)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !339, line: 55, baseType: !542)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !756, file: !289, line: 180, baseType: !810, size: 64, align: 64, offset: 256)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64, align: 64)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !289, line: 48, baseType: !812)
!812 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !289, line: 48, flags: DIFlagFwdDecl)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !756, file: !289, line: 182, baseType: !707, size: 32, align: 32, offset: 320)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !756, file: !289, line: 183, baseType: !808, size: 32, align: 32, offset: 352)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !756, file: !289, line: 184, baseType: !808, size: 32, align: 32, offset: 384)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !756, file: !289, line: 186, baseType: !817, size: 64, align: 64, offset: 448)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64, align: 64)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !819, line: 37, baseType: !820)
!819 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !819, line: 39, size: 128, align: 64, elements: !821)
!821 = !{!822, !823}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !820, file: !819, line: 41, baseType: !338, size: 64, align: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !820, file: !819, line: 42, baseType: !817, size: 64, align: 64, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !756, file: !289, line: 188, baseType: !754, size: 64, align: 64, offset: 512)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !756, file: !289, line: 189, baseType: !754, size: 64, align: 64, offset: 576)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !756, file: !289, line: 191, baseType: !420, size: 64, align: 64, offset: 640)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !756, file: !289, line: 193, baseType: !828, size: 64, align: 64, offset: 704)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64, align: 64)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !289, line: 65, baseType: !830)
!830 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !289, line: 65, flags: DIFlagFwdDecl)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !289, line: 39, baseType: !288)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !711, file: !277, line: 151, baseType: !833, size: 64, align: 64, offset: 320)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64, align: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{null, !702}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !711, file: !277, line: 152, baseType: !837, size: 64, align: 64, offset: 384)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64, align: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{!717, !702, !840, !722}
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !277, line: 95, baseType: !297)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !711, file: !277, line: 155, baseType: !842, size: 64, align: 64, offset: 448)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64, align: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{!840, !702}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !704, file: !277, line: 103, baseType: !342, size: 64, align: 64, offset: 128)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !704, file: !277, line: 104, baseType: !847, size: 64, align: 64, offset: 192)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !848, line: 77, baseType: !849)
!848 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64, align: 64)
!850 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !848, line: 77, flags: DIFlagFwdDecl)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !704, file: !277, line: 105, baseType: !847, size: 64, align: 64, offset: 256)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !704, file: !277, line: 106, baseType: !342, size: 64, align: 64, offset: 320)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !704, file: !277, line: 107, baseType: !808, size: 32, align: 32, offset: 384)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !704, file: !277, line: 109, baseType: !718, size: 64, align: 64, offset: 448)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !704, file: !277, line: 110, baseType: !856, size: 64, align: 64, offset: 512)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64, align: 64)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !858, line: 39, baseType: !859)
!858 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !858, line: 41, size: 192, align: 64, elements: !860)
!860 = !{!861, !862, !863}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !859, file: !858, line: 43, baseType: !342, size: 64, align: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !859, file: !858, line: 44, baseType: !718, size: 64, align: 64, offset: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !859, file: !858, line: 45, baseType: !718, size: 64, align: 64, offset: 128)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !704, file: !277, line: 111, baseType: !856, size: 64, align: 64, offset: 576)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !704, file: !277, line: 112, baseType: !856, size: 64, align: 64, offset: 640)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !704, file: !277, line: 113, baseType: !867, size: 48, align: 8, offset: 704)
!867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 48, align: 8, elements: !868)
!868 = !{!869}
!869 = !DISubrange(count: 6)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !704, file: !277, line: 117, baseType: !808, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !704, file: !277, line: 118, baseType: !808, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !704, file: !277, line: 119, baseType: !808, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !704, file: !277, line: 120, baseType: !808, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !704, file: !277, line: 121, baseType: !808, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !704, file: !277, line: 122, baseType: !808, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !704, file: !277, line: 124, baseType: !338, size: 64, align: 64, offset: 768)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !704, file: !277, line: 125, baseType: !338, size: 64, align: 64, offset: 832)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !671, file: !674, line: 38, baseType: !542, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !671, file: !674, line: 39, baseType: !542, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !671, file: !674, line: 40, baseType: !542, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !671, file: !674, line: 41, baseType: !542, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !671, file: !674, line: 42, baseType: !542, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !671, file: !674, line: 43, baseType: !542, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !671, file: !674, line: 44, baseType: !542, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !671, file: !674, line: 45, baseType: !542, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !671, file: !674, line: 46, baseType: !420, size: 64, align: 64, offset: 1792)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !671, file: !674, line: 47, baseType: !420, size: 64, align: 64, offset: 1856)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !661, file: !665, line: 9, baseType: !547, size: 64, align: 64, offset: 192)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !661, file: !665, line: 10, baseType: !547, size: 64, align: 64, offset: 256)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !661, file: !665, line: 12, baseType: !420, size: 64, align: 64, offset: 320)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !661, file: !665, line: 13, baseType: !420, size: 64, align: 64, offset: 384)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !661, file: !665, line: 15, baseType: !542, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !661, file: !665, line: 16, baseType: !542, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !661, file: !665, line: 17, baseType: !542, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !661, file: !665, line: 18, baseType: !542, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !661, file: !665, line: 19, baseType: !542, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !661, file: !665, line: 21, baseType: !898, size: 64, align: 64, offset: 512)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64, align: 64)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !488, line: 102, baseType: !900)
!900 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !488, line: 102, flags: DIFlagFwdDecl)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !661, file: !665, line: 22, baseType: !494, size: 32, align: 32, offset: 576)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !661, file: !665, line: 25, baseType: !903, size: 128, align: 64, offset: 640)
!903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !702, size: 128, align: 64, elements: !904)
!904 = !{!905}
!905 = !DISubrange(count: 2)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !661, file: !665, line: 26, baseType: !494, size: 32, align: 32, offset: 768)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !661, file: !665, line: 27, baseType: !494, size: 32, align: 32, offset: 800)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !661, file: !665, line: 29, baseType: !909, size: 64, align: 64, offset: 832)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64, align: 64)
!910 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !488, line: 103, baseType: !911)
!911 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !488, line: 103, flags: DIFlagFwdDecl)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !661, file: !665, line: 30, baseType: !414, size: 64, align: 64, offset: 896)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !661, file: !665, line: 32, baseType: !420, size: 64, align: 64, offset: 960)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !661, file: !665, line: 33, baseType: !420, size: 64, align: 64, offset: 1024)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !661, file: !665, line: 34, baseType: !420, size: 64, align: 64, offset: 1088)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !661, file: !665, line: 35, baseType: !542, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !661, file: !665, line: 36, baseType: !542, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !661, file: !665, line: 37, baseType: !542, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !661, file: !665, line: 38, baseType: !542, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !661, file: !665, line: 40, baseType: !921, size: 128, align: 64, offset: 1216)
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !339, line: 504, baseType: !922)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !339, line: 506, size: 128, align: 64, elements: !923)
!923 = !{!924, !925}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !922, file: !339, line: 508, baseType: !340, size: 64, align: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !922, file: !339, line: 509, baseType: !340, size: 64, align: 64, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !661, file: !665, line: 41, baseType: !547, size: 64, align: 64, offset: 1344)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !661, file: !665, line: 42, baseType: !494, size: 32, align: 32, offset: 1408)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !661, file: !665, line: 44, baseType: !817, size: 64, align: 64, offset: 1472)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !661, file: !665, line: 45, baseType: !817, size: 64, align: 64, offset: 1536)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !661, file: !665, line: 53, baseType: !931, size: 64, align: 64, offset: 1600)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64, align: 64)
!932 = !DISubroutineType(types: !933)
!933 = !{null, !659, !345, !494}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !661, file: !665, line: 55, baseType: !935, size: 64, align: 64, offset: 1664)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64, align: 64)
!936 = !DISubroutineType(types: !937)
!937 = !{!494, !659, !344}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !661, file: !665, line: 57, baseType: !939, size: 64, align: 64, offset: 1728)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64, align: 64)
!940 = !DISubroutineType(types: !941)
!941 = !{!494, !659, !345}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !661, file: !665, line: 60, baseType: !943, size: 64, align: 64, offset: 1792)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64, align: 64)
!944 = !DISubroutineType(types: !945)
!945 = !{!345, !659}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !661, file: !665, line: 62, baseType: !947, size: 64, align: 64, offset: 1856)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64, align: 64)
!948 = !DISubroutineType(types: !949)
!949 = !{null, !659, !345, !345, !494}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !661, file: !665, line: 65, baseType: !951, size: 64, align: 64, offset: 1920)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64, align: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{!954, !659, !345, !345}
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64, align: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !661, file: !665, line: 69, baseType: !956, size: 64, align: 64, offset: 1984)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64, align: 64)
!957 = !DISubroutineType(types: !958)
!958 = !{!959, !659, !345}
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64, align: 64)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !488, line: 109, baseType: !961)
!961 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !488, line: 109, flags: DIFlagFwdDecl)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !661, file: !665, line: 70, baseType: !963, size: 64, align: 64, offset: 2048)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64, align: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{!966, !659, !345}
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64, align: 64)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !488, line: 110, baseType: !968)
!968 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !488, line: 110, flags: DIFlagFwdDecl)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !661, file: !665, line: 71, baseType: !970, size: 64, align: 64, offset: 2112)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64, align: 64)
!971 = !DISubroutineType(types: !972)
!972 = !{!494, !345, !345}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !661, file: !665, line: 73, baseType: !970, size: 64, align: 64, offset: 2176)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64, align: 64)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !488, line: 108, baseType: !976)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !977, line: 5, size: 704, align: 64, elements: !978)
!977 = !DIFile(filename: "../../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!978 = !{!979, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !994}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !976, file: !980, line: 3, baseType: !494, size: 32, align: 32)
!980 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!981 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !976, file: !980, line: 4, baseType: !494, size: 32, align: 32, offset: 32)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !976, file: !980, line: 5, baseType: !414, size: 64, align: 64, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !976, file: !980, line: 7, baseType: !337, size: 64, align: 64, offset: 128)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !976, file: !980, line: 8, baseType: !659, size: 64, align: 64, offset: 192)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !976, file: !980, line: 9, baseType: !420, size: 64, align: 64, offset: 256)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !976, file: !980, line: 10, baseType: !420, size: 64, align: 64, offset: 320)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !976, file: !980, line: 11, baseType: !547, size: 64, align: 64, offset: 384)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !976, file: !980, line: 12, baseType: !494, size: 32, align: 32, offset: 448)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !976, file: !980, line: 13, baseType: !420, size: 64, align: 64, offset: 512)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !976, file: !980, line: 15, baseType: !991, size: 64, align: 64, offset: 576)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64, align: 64)
!992 = !DISubroutineType(types: !993)
!993 = !{null, !974}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !976, file: !980, line: 17, baseType: !995, size: 64, align: 64, offset: 640)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64, align: 64)
!996 = !DISubroutineType(types: !997)
!997 = !{!345, !974}
!998 = !DILocalVariable(name: "data", arg: 1, scope: !656, file: !351, line: 338, type: !345)
!999 = !DILocation(line: 338, column: 40, scope: !656)
!1000 = !DILocalVariable(name: "server", arg: 2, scope: !656, file: !351, line: 338, type: !659)
!1001 = !DILocation(line: 338, column: 58, scope: !656)
!1002 = !DILocalVariable(name: "item", arg: 3, scope: !656, file: !351, line: 339, type: !974)
!1003 = !DILocation(line: 339, column: 20, scope: !656)
!1004 = !DILocation(line: 341, column: 6, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !656, file: !351, line: 341, column: 6)
!1006 = !DILocation(line: 341, column: 13, scope: !1005)
!1007 = !DILocation(line: 341, column: 6, scope: !656)
!1008 = !DILocation(line: 343, column: 12, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1005, file: !351, line: 341, column: 21)
!1010 = !DILocation(line: 343, column: 24, scope: !1009)
!1011 = !DILocation(line: 343, column: 10, scope: !1009)
!1012 = !DILocation(line: 344, column: 2, scope: !1009)
!1013 = !DILocation(line: 346, column: 21, scope: !656)
!1014 = !DILocation(line: 346, column: 27, scope: !656)
!1015 = !DILocation(line: 346, column: 35, scope: !656)
!1016 = !DILocation(line: 346, column: 2, scope: !656)
!1017 = !DILocation(line: 347, column: 1, scope: !656)
!1018 = distinct !DISubprogram(name: "sig_server_looking", scope: !351, file: !351, line: 349, type: !1019, isLocal: true, isDefinition: true, scopeLine: 350, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !354)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{null, !659}
!1021 = !DILocalVariable(name: "server", arg: 1, scope: !1018, file: !351, line: 349, type: !659)
!1022 = !DILocation(line: 349, column: 44, scope: !1018)
!1023 = !DILocation(line: 351, column: 2, scope: !1018)
!1024 = distinct !{!1024, !1023}
!1025 = !DILocation(line: 351, column: 10, scope: !1026)
!1026 = !DILexicalBlockFile(scope: !1027, file: !351, discriminator: 1)
!1027 = distinct !DILexicalBlock(scope: !1028, file: !351, line: 351, column: 10)
!1028 = distinct !DILexicalBlock(scope: !1018, file: !351, line: 351, column: 4)
!1029 = !DILocation(line: 351, column: 17, scope: !1026)
!1030 = !DILocation(line: 351, column: 5, scope: !1031)
!1031 = !DILexicalBlockFile(scope: !1032, file: !351, discriminator: 2)
!1032 = distinct !DILexicalBlock(scope: !1027, file: !351, line: 351, column: 3)
!1033 = !DILocation(line: 351, column: 14, scope: !1034)
!1034 = !DILexicalBlockFile(scope: !1035, file: !351, discriminator: 3)
!1035 = distinct !DILexicalBlock(scope: !1027, file: !351, line: 351, column: 12)
!1036 = !DILocation(line: 351, column: 101, scope: !1034)
!1037 = !DILocation(line: 351, column: 112, scope: !1038)
!1038 = !DILexicalBlockFile(scope: !1028, file: !351, discriminator: 4)
!1039 = !DILocation(line: 353, column: 39, scope: !1018)
!1040 = !DILocation(line: 353, column: 42, scope: !1018)
!1041 = !DILocation(line: 353, column: 50, scope: !1018)
!1042 = !DILocation(line: 353, column: 59, scope: !1018)
!1043 = !DILocation(line: 353, column: 2, scope: !1018)
!1044 = !DILocation(line: 354, column: 1, scope: !1018)
!1045 = !DILocation(line: 354, column: 1, scope: !1046)
!1046 = !DILexicalBlockFile(scope: !1018, file: !351, discriminator: 1)
!1047 = distinct !DISubprogram(name: "sig_server_connecting", scope: !351, file: !351, line: 356, type: !1048, isLocal: true, isDefinition: true, scopeLine: 357, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !354)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{null, !659, !514}
!1050 = !DILocalVariable(name: "server", arg: 1, scope: !1047, file: !351, line: 356, type: !659)
!1051 = !DILocation(line: 356, column: 47, scope: !1047)
!1052 = !DILocalVariable(name: "ip", arg: 2, scope: !1047, file: !351, line: 356, type: !514)
!1053 = !DILocation(line: 356, column: 63, scope: !1047)
!1054 = !DILocalVariable(name: "ipaddr", scope: !1047, file: !351, line: 358, type: !1055)
!1055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 368, align: 8, elements: !1056)
!1056 = !{!1057}
!1057 = !DISubrange(count: 46)
!1058 = !DILocation(line: 358, column: 7, scope: !1047)
!1059 = !DILocation(line: 360, column: 2, scope: !1047)
!1060 = distinct !{!1060, !1059}
!1061 = !DILocation(line: 360, column: 10, scope: !1062)
!1062 = !DILexicalBlockFile(scope: !1063, file: !351, discriminator: 1)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !351, line: 360, column: 10)
!1064 = distinct !DILexicalBlock(scope: !1047, file: !351, line: 360, column: 4)
!1065 = !DILocation(line: 360, column: 17, scope: !1062)
!1066 = !DILocation(line: 360, column: 5, scope: !1067)
!1067 = !DILexicalBlockFile(scope: !1068, file: !351, discriminator: 2)
!1068 = distinct !DILexicalBlock(scope: !1063, file: !351, line: 360, column: 3)
!1069 = !DILocation(line: 360, column: 14, scope: !1070)
!1070 = !DILexicalBlockFile(scope: !1071, file: !351, discriminator: 3)
!1071 = distinct !DILexicalBlock(scope: !1063, file: !351, line: 360, column: 12)
!1072 = !DILocation(line: 360, column: 101, scope: !1070)
!1073 = !DILocation(line: 360, column: 112, scope: !1074)
!1074 = !DILexicalBlockFile(scope: !1064, file: !351, discriminator: 4)
!1075 = !DILocation(line: 362, column: 6, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1047, file: !351, line: 362, column: 6)
!1077 = !DILocation(line: 362, column: 9, scope: !1076)
!1078 = !DILocation(line: 362, column: 6, scope: !1047)
!1079 = !DILocation(line: 363, column: 3, scope: !1076)
!1080 = !DILocation(line: 363, column: 13, scope: !1076)
!1081 = !DILocation(line: 365, column: 15, scope: !1076)
!1082 = !DILocation(line: 365, column: 19, scope: !1076)
!1083 = !DILocation(line: 365, column: 3, scope: !1076)
!1084 = !DILocation(line: 367, column: 39, scope: !1047)
!1085 = !DILocation(line: 367, column: 27, scope: !1047)
!1086 = !DILocation(line: 367, column: 35, scope: !1047)
!1087 = !DILocation(line: 367, column: 44, scope: !1047)
!1088 = !DILocation(line: 367, column: 26, scope: !1047)
!1089 = !DILocation(line: 367, column: 94, scope: !1047)
!1090 = !DILocation(line: 367, column: 102, scope: !1047)
!1091 = !DILocation(line: 367, column: 111, scope: !1047)
!1092 = !DILocation(line: 367, column: 120, scope: !1047)
!1093 = !DILocation(line: 367, column: 128, scope: !1047)
!1094 = !DILocation(line: 367, column: 136, scope: !1047)
!1095 = !DILocation(line: 367, column: 145, scope: !1047)
!1096 = !DILocation(line: 367, column: 2, scope: !1047)
!1097 = !DILocation(line: 371, column: 1, scope: !1047)
!1098 = !DILocation(line: 371, column: 1, scope: !1099)
!1099 = !DILexicalBlockFile(scope: !1047, file: !351, discriminator: 1)
!1100 = distinct !DISubprogram(name: "sig_server_connected", scope: !351, file: !351, line: 373, type: !1019, isLocal: true, isDefinition: true, scopeLine: 374, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !354)
!1101 = !DILocalVariable(name: "server", arg: 1, scope: !1100, file: !351, line: 373, type: !659)
!1102 = !DILocation(line: 373, column: 46, scope: !1100)
!1103 = !DILocation(line: 375, column: 2, scope: !1100)
!1104 = distinct !{!1104, !1103}
!1105 = !DILocation(line: 375, column: 10, scope: !1106)
!1106 = !DILexicalBlockFile(scope: !1107, file: !351, discriminator: 1)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !351, line: 375, column: 10)
!1108 = distinct !DILexicalBlock(scope: !1100, file: !351, line: 375, column: 4)
!1109 = !DILocation(line: 375, column: 17, scope: !1106)
!1110 = !DILocation(line: 375, column: 5, scope: !1111)
!1111 = !DILexicalBlockFile(scope: !1112, file: !351, discriminator: 2)
!1112 = distinct !DILexicalBlock(scope: !1107, file: !351, line: 375, column: 3)
!1113 = !DILocation(line: 375, column: 14, scope: !1114)
!1114 = !DILexicalBlockFile(scope: !1115, file: !351, discriminator: 3)
!1115 = distinct !DILexicalBlock(scope: !1107, file: !351, line: 375, column: 12)
!1116 = !DILocation(line: 375, column: 101, scope: !1114)
!1117 = !DILocation(line: 375, column: 112, scope: !1118)
!1118 = !DILexicalBlockFile(scope: !1108, file: !351, discriminator: 4)
!1119 = !DILocation(line: 377, column: 39, scope: !1100)
!1120 = !DILocation(line: 377, column: 54, scope: !1100)
!1121 = !DILocation(line: 377, column: 62, scope: !1100)
!1122 = !DILocation(line: 377, column: 71, scope: !1100)
!1123 = !DILocation(line: 377, column: 2, scope: !1100)
!1124 = !DILocation(line: 379, column: 1, scope: !1100)
!1125 = !DILocation(line: 379, column: 1, scope: !1126)
!1126 = !DILexicalBlockFile(scope: !1100, file: !351, discriminator: 1)
!1127 = distinct !DISubprogram(name: "sig_connect_failed", scope: !351, file: !351, line: 381, type: !1128, isLocal: true, isDefinition: true, scopeLine: 382, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !354)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{null, !659, !342}
!1130 = !DILocalVariable(name: "server", arg: 1, scope: !1127, file: !351, line: 381, type: !659)
!1131 = !DILocation(line: 381, column: 44, scope: !1127)
!1132 = !DILocalVariable(name: "msg", arg: 2, scope: !1127, file: !351, line: 381, type: !342)
!1133 = !DILocation(line: 381, column: 59, scope: !1127)
!1134 = !DILocation(line: 383, column: 2, scope: !1127)
!1135 = distinct !{!1135, !1134}
!1136 = !DILocation(line: 383, column: 10, scope: !1137)
!1137 = !DILexicalBlockFile(scope: !1138, file: !351, discriminator: 1)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !351, line: 383, column: 10)
!1139 = distinct !DILexicalBlock(scope: !1127, file: !351, line: 383, column: 4)
!1140 = !DILocation(line: 383, column: 17, scope: !1137)
!1141 = !DILocation(line: 383, column: 5, scope: !1142)
!1142 = !DILexicalBlockFile(scope: !1143, file: !351, discriminator: 2)
!1143 = distinct !DILexicalBlock(scope: !1138, file: !351, line: 383, column: 3)
!1144 = !DILocation(line: 383, column: 14, scope: !1145)
!1145 = !DILexicalBlockFile(scope: !1146, file: !351, discriminator: 3)
!1146 = distinct !DILexicalBlock(scope: !1138, file: !351, line: 383, column: 12)
!1147 = !DILocation(line: 383, column: 101, scope: !1145)
!1148 = !DILocation(line: 383, column: 112, scope: !1149)
!1149 = !DILexicalBlockFile(scope: !1139, file: !351, discriminator: 4)
!1150 = !DILocation(line: 385, column: 6, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1127, file: !351, line: 385, column: 6)
!1152 = !DILocation(line: 385, column: 10, scope: !1151)
!1153 = !DILocation(line: 385, column: 6, scope: !1127)
!1154 = !DILocation(line: 388, column: 40, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1151, file: !351, line: 385, column: 18)
!1156 = !DILocation(line: 388, column: 48, scope: !1155)
!1157 = !DILocation(line: 388, column: 56, scope: !1155)
!1158 = !DILocation(line: 388, column: 65, scope: !1155)
!1159 = !DILocation(line: 388, column: 3, scope: !1155)
!1160 = !DILocation(line: 390, column: 2, scope: !1155)
!1161 = !DILocation(line: 391, column: 40, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1151, file: !351, line: 390, column: 9)
!1163 = !DILocation(line: 391, column: 44, scope: !1162)
!1164 = !DILocation(line: 391, column: 52, scope: !1162)
!1165 = !DILocation(line: 391, column: 61, scope: !1162)
!1166 = !DILocation(line: 391, column: 70, scope: !1162)
!1167 = !DILocation(line: 391, column: 78, scope: !1162)
!1168 = !DILocation(line: 391, column: 87, scope: !1162)
!1169 = !DILocation(line: 391, column: 93, scope: !1162)
!1170 = !DILocation(line: 391, column: 3, scope: !1162)
!1171 = !DILocation(line: 394, column: 1, scope: !1127)
!1172 = distinct !DISubprogram(name: "sig_server_disconnected", scope: !351, file: !351, line: 396, type: !1019, isLocal: true, isDefinition: true, scopeLine: 397, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !354)
!1173 = !DILocalVariable(name: "server", arg: 1, scope: !1172, file: !351, line: 396, type: !659)
!1174 = !DILocation(line: 396, column: 49, scope: !1172)
!1175 = !DILocation(line: 398, column: 2, scope: !1172)
!1176 = distinct !{!1176, !1175}
!1177 = !DILocation(line: 398, column: 10, scope: !1178)
!1178 = !DILexicalBlockFile(scope: !1179, file: !351, discriminator: 1)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !351, line: 398, column: 10)
!1180 = distinct !DILexicalBlock(scope: !1172, file: !351, line: 398, column: 4)
!1181 = !DILocation(line: 398, column: 17, scope: !1178)
!1182 = !DILocation(line: 398, column: 5, scope: !1183)
!1183 = !DILexicalBlockFile(scope: !1184, file: !351, discriminator: 2)
!1184 = distinct !DILexicalBlock(scope: !1179, file: !351, line: 398, column: 3)
!1185 = !DILocation(line: 398, column: 14, scope: !1186)
!1186 = !DILexicalBlockFile(scope: !1187, file: !351, discriminator: 3)
!1187 = distinct !DILexicalBlock(scope: !1179, file: !351, line: 398, column: 12)
!1188 = !DILocation(line: 398, column: 101, scope: !1186)
!1189 = !DILocation(line: 398, column: 112, scope: !1190)
!1190 = !DILexicalBlockFile(scope: !1180, file: !351, discriminator: 4)
!1191 = !DILocation(line: 400, column: 39, scope: !1172)
!1192 = !DILocation(line: 400, column: 47, scope: !1172)
!1193 = !DILocation(line: 400, column: 55, scope: !1172)
!1194 = !DILocation(line: 400, column: 64, scope: !1172)
!1195 = !DILocation(line: 400, column: 2, scope: !1172)
!1196 = !DILocation(line: 402, column: 1, scope: !1172)
!1197 = !DILocation(line: 402, column: 1, scope: !1198)
!1198 = !DILexicalBlockFile(scope: !1172, file: !351, discriminator: 1)
!1199 = distinct !DISubprogram(name: "sig_server_quit", scope: !351, file: !351, line: 404, type: !1200, isLocal: true, isDefinition: true, scopeLine: 405, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !354)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{null, !659, !345}
!1202 = !DILocalVariable(name: "server", arg: 1, scope: !1199, file: !351, line: 404, type: !659)
!1203 = !DILocation(line: 404, column: 41, scope: !1199)
!1204 = !DILocalVariable(name: "msg", arg: 2, scope: !1199, file: !351, line: 404, type: !345)
!1205 = !DILocation(line: 404, column: 61, scope: !1199)
!1206 = !DILocation(line: 406, column: 2, scope: !1199)
!1207 = distinct !{!1207, !1206}
!1208 = !DILocation(line: 406, column: 10, scope: !1209)
!1209 = !DILexicalBlockFile(scope: !1210, file: !351, discriminator: 1)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !351, line: 406, column: 10)
!1211 = distinct !DILexicalBlock(scope: !1199, file: !351, line: 406, column: 4)
!1212 = !DILocation(line: 406, column: 17, scope: !1209)
!1213 = !DILocation(line: 406, column: 5, scope: !1214)
!1214 = !DILexicalBlockFile(scope: !1215, file: !351, discriminator: 2)
!1215 = distinct !DILexicalBlock(scope: !1210, file: !351, line: 406, column: 3)
!1216 = !DILocation(line: 406, column: 14, scope: !1217)
!1217 = !DILexicalBlockFile(scope: !1218, file: !351, discriminator: 3)
!1218 = distinct !DILexicalBlock(scope: !1210, file: !351, line: 406, column: 12)
!1219 = !DILocation(line: 406, column: 101, scope: !1217)
!1220 = !DILocation(line: 406, column: 112, scope: !1221)
!1221 = !DILexicalBlockFile(scope: !1211, file: !351, discriminator: 4)
!1222 = !DILocation(line: 408, column: 39, scope: !1199)
!1223 = !DILocation(line: 408, column: 43, scope: !1199)
!1224 = !DILocation(line: 408, column: 51, scope: !1199)
!1225 = !DILocation(line: 408, column: 60, scope: !1199)
!1226 = !DILocation(line: 408, column: 69, scope: !1199)
!1227 = !DILocation(line: 408, column: 2, scope: !1199)
!1228 = !DILocation(line: 410, column: 1, scope: !1199)
!1229 = !DILocation(line: 410, column: 1, scope: !1230)
!1230 = !DILexicalBlockFile(scope: !1199, file: !351, discriminator: 1)
!1231 = distinct !DISubprogram(name: "sig_server_lag_disconnected", scope: !351, file: !351, line: 412, type: !1019, isLocal: true, isDefinition: true, scopeLine: 413, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !354)
!1232 = !DILocalVariable(name: "server", arg: 1, scope: !1231, file: !351, line: 412, type: !659)
!1233 = !DILocation(line: 412, column: 53, scope: !1231)
!1234 = !DILocation(line: 414, column: 2, scope: !1231)
!1235 = distinct !{!1235, !1234}
!1236 = !DILocation(line: 414, column: 10, scope: !1237)
!1237 = !DILexicalBlockFile(scope: !1238, file: !351, discriminator: 1)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !351, line: 414, column: 10)
!1239 = distinct !DILexicalBlock(scope: !1231, file: !351, line: 414, column: 4)
!1240 = !DILocation(line: 414, column: 17, scope: !1237)
!1241 = !DILocation(line: 414, column: 5, scope: !1242)
!1242 = !DILexicalBlockFile(scope: !1243, file: !351, discriminator: 2)
!1243 = distinct !DILexicalBlock(scope: !1238, file: !351, line: 414, column: 3)
!1244 = !DILocation(line: 414, column: 14, scope: !1245)
!1245 = !DILexicalBlockFile(scope: !1246, file: !351, discriminator: 3)
!1246 = distinct !DILexicalBlock(scope: !1238, file: !351, line: 414, column: 12)
!1247 = !DILocation(line: 414, column: 101, scope: !1245)
!1248 = !DILocation(line: 414, column: 112, scope: !1249)
!1249 = !DILexicalBlockFile(scope: !1239, file: !351, discriminator: 4)
!1250 = !DILocation(line: 416, column: 39, scope: !1231)
!1251 = !DILocation(line: 416, column: 48, scope: !1231)
!1252 = !DILocation(line: 416, column: 56, scope: !1231)
!1253 = !DILocation(line: 416, column: 65, scope: !1231)
!1254 = !DILocation(line: 416, column: 74, scope: !1231)
!1255 = !DILocation(line: 416, column: 3, scope: !1231)
!1256 = !DILocation(line: 416, column: 11, scope: !1231)
!1257 = !DILocation(line: 416, column: 20, scope: !1231)
!1258 = !DILocation(line: 416, column: 2, scope: !1231)
!1259 = !DILocation(line: 416, column: 2, scope: !1260)
!1260 = !DILexicalBlockFile(scope: !1231, file: !351, discriminator: 1)
!1261 = !DILocation(line: 419, column: 1, scope: !1231)
!1262 = !DILocation(line: 419, column: 1, scope: !1260)
!1263 = distinct !DISubprogram(name: "sig_server_reconnect_removed", scope: !351, file: !351, line: 421, type: !1264, isLocal: true, isDefinition: true, scopeLine: 422, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !354)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{null, !1266}
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64, align: 64)
!1267 = !DIDerivedType(tag: DW_TAG_typedef, name: "RECONNECT_REC", file: !1268, line: 13, baseType: !1269)
!1268 = !DIFile(filename: "../../../src/core/servers-reconnect.h", directory: "/home/lichi/Desktop/irssi/task1")
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1268, line: 8, size: 192, align: 64, elements: !1270)
!1270 = !{!1271, !1272, !1273}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !1269, file: !1268, line: 9, baseType: !494, size: 32, align: 32)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "next_connect", scope: !1269, file: !1268, line: 10, baseType: !547, size: 64, align: 64, offset: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !1269, file: !1268, line: 12, baseType: !669, size: 64, align: 64, offset: 128)
!1274 = !DILocalVariable(name: "reconnect", arg: 1, scope: !1263, file: !351, line: 421, type: !1266)
!1275 = !DILocation(line: 421, column: 57, scope: !1263)
!1276 = !DILocation(line: 423, column: 2, scope: !1263)
!1277 = distinct !{!1277, !1276}
!1278 = !DILocation(line: 423, column: 10, scope: !1279)
!1279 = !DILexicalBlockFile(scope: !1280, file: !351, discriminator: 1)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !351, line: 423, column: 10)
!1281 = distinct !DILexicalBlock(scope: !1263, file: !351, line: 423, column: 4)
!1282 = !DILocation(line: 423, column: 20, scope: !1279)
!1283 = !DILocation(line: 423, column: 5, scope: !1284)
!1284 = !DILexicalBlockFile(scope: !1285, file: !351, discriminator: 2)
!1285 = distinct !DILexicalBlock(scope: !1280, file: !351, line: 423, column: 3)
!1286 = !DILocation(line: 423, column: 14, scope: !1287)
!1287 = !DILexicalBlockFile(scope: !1288, file: !351, discriminator: 3)
!1288 = distinct !DILexicalBlock(scope: !1280, file: !351, line: 423, column: 12)
!1289 = !DILocation(line: 423, column: 104, scope: !1287)
!1290 = !DILocation(line: 423, column: 115, scope: !1291)
!1291 = !DILexicalBlockFile(scope: !1281, file: !351, discriminator: 4)
!1292 = !DILocation(line: 425, column: 49, scope: !1263)
!1293 = !DILocation(line: 425, column: 60, scope: !1263)
!1294 = !DILocation(line: 425, column: 66, scope: !1263)
!1295 = !DILocation(line: 425, column: 75, scope: !1263)
!1296 = !DILocation(line: 425, column: 86, scope: !1263)
!1297 = !DILocation(line: 425, column: 92, scope: !1263)
!1298 = !DILocation(line: 425, column: 98, scope: !1263)
!1299 = !DILocation(line: 425, column: 109, scope: !1263)
!1300 = !DILocation(line: 425, column: 115, scope: !1263)
!1301 = !DILocation(line: 425, column: 123, scope: !1263)
!1302 = !DILocation(line: 425, column: 98, scope: !1303)
!1303 = !DILexicalBlockFile(scope: !1263, file: !351, discriminator: 1)
!1304 = !DILocation(line: 425, column: 8, scope: !1305)
!1305 = !DILexicalBlockFile(scope: !1263, file: !351, discriminator: 2)
!1306 = !DILocation(line: 425, column: 19, scope: !1305)
!1307 = !DILocation(line: 425, column: 25, scope: !1305)
!1308 = !DILocation(line: 425, column: 98, scope: !1305)
!1309 = !DILocation(line: 425, column: 98, scope: !1310)
!1310 = !DILexicalBlockFile(scope: !1263, file: !351, discriminator: 3)
!1311 = !DILocation(line: 425, column: 2, scope: !1310)
!1312 = !DILocation(line: 428, column: 1, scope: !1263)
!1313 = !DILocation(line: 428, column: 1, scope: !1303)
!1314 = distinct !DISubprogram(name: "sig_server_reconnect_not_found", scope: !351, file: !351, line: 430, type: !376, isLocal: true, isDefinition: true, scopeLine: 431, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !354)
!1315 = !DILocalVariable(name: "tag", arg: 1, scope: !1314, file: !351, line: 430, type: !345)
!1316 = !DILocation(line: 430, column: 56, scope: !1314)
!1317 = !DILocation(line: 432, column: 2, scope: !1314)
!1318 = distinct !{!1318, !1317}
!1319 = !DILocation(line: 432, column: 10, scope: !1320)
!1320 = !DILexicalBlockFile(scope: !1321, file: !351, discriminator: 1)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !351, line: 432, column: 10)
!1322 = distinct !DILexicalBlock(scope: !1314, file: !351, line: 432, column: 4)
!1323 = !DILocation(line: 432, column: 14, scope: !1320)
!1324 = !DILocation(line: 432, column: 5, scope: !1325)
!1325 = !DILexicalBlockFile(scope: !1326, file: !351, discriminator: 2)
!1326 = distinct !DILexicalBlock(scope: !1321, file: !351, line: 432, column: 3)
!1327 = !DILocation(line: 432, column: 14, scope: !1328)
!1328 = !DILexicalBlockFile(scope: !1329, file: !351, discriminator: 3)
!1329 = distinct !DILexicalBlock(scope: !1321, file: !351, line: 432, column: 12)
!1330 = !DILocation(line: 432, column: 98, scope: !1328)
!1331 = !DILocation(line: 432, column: 109, scope: !1332)
!1332 = !DILexicalBlockFile(scope: !1322, file: !351, discriminator: 4)
!1333 = !DILocation(line: 434, column: 51, scope: !1314)
!1334 = !DILocation(line: 434, column: 2, scope: !1314)
!1335 = !DILocation(line: 436, column: 1, scope: !1314)
!1336 = !DILocation(line: 436, column: 1, scope: !1337)
!1337 = !DILexicalBlockFile(scope: !1314, file: !351, discriminator: 1)
!1338 = distinct !DISubprogram(name: "sig_chat_protocol_unknown", scope: !351, file: !351, line: 438, type: !376, isLocal: true, isDefinition: true, scopeLine: 439, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !354)
!1339 = !DILocalVariable(name: "protocol", arg: 1, scope: !1338, file: !351, line: 438, type: !345)
!1340 = !DILocation(line: 438, column: 51, scope: !1338)
!1341 = !DILocation(line: 440, column: 2, scope: !1338)
!1342 = distinct !{!1342, !1341}
!1343 = !DILocation(line: 440, column: 10, scope: !1344)
!1344 = !DILexicalBlockFile(scope: !1345, file: !351, discriminator: 1)
!1345 = distinct !DILexicalBlock(scope: !1346, file: !351, line: 440, column: 10)
!1346 = distinct !DILexicalBlock(scope: !1338, file: !351, line: 440, column: 4)
!1347 = !DILocation(line: 440, column: 19, scope: !1344)
!1348 = !DILocation(line: 440, column: 5, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !1350, file: !351, discriminator: 2)
!1350 = distinct !DILexicalBlock(scope: !1345, file: !351, line: 440, column: 3)
!1351 = !DILocation(line: 440, column: 14, scope: !1352)
!1352 = !DILexicalBlockFile(scope: !1353, file: !351, discriminator: 3)
!1353 = distinct !DILexicalBlock(scope: !1345, file: !351, line: 440, column: 12)
!1354 = !DILocation(line: 440, column: 103, scope: !1352)
!1355 = !DILocation(line: 440, column: 114, scope: !1356)
!1356 = !DILexicalBlockFile(scope: !1346, file: !351, discriminator: 4)
!1357 = !DILocation(line: 442, column: 52, scope: !1338)
!1358 = !DILocation(line: 442, column: 2, scope: !1338)
!1359 = !DILocation(line: 444, column: 1, scope: !1338)
!1360 = !DILocation(line: 444, column: 1, scope: !1361)
!1361 = !DILexicalBlockFile(scope: !1338, file: !351, discriminator: 1)
!1362 = distinct !DISubprogram(name: "fe_server_deinit", scope: !351, file: !351, line: 473, type: !352, isLocal: false, isDefinition: true, scopeLine: 474, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !354)
!1363 = !DILocation(line: 475, column: 2, scope: !1362)
!1364 = !DILocation(line: 476, column: 2, scope: !1362)
!1365 = !DILocation(line: 477, column: 2, scope: !1362)
!1366 = !DILocation(line: 478, column: 2, scope: !1362)
!1367 = !DILocation(line: 479, column: 2, scope: !1362)
!1368 = !DILocation(line: 480, column: 2, scope: !1362)
!1369 = !DILocation(line: 481, column: 2, scope: !1362)
!1370 = !DILocation(line: 483, column: 2, scope: !1362)
!1371 = !DILocation(line: 484, column: 2, scope: !1362)
!1372 = !DILocation(line: 485, column: 2, scope: !1362)
!1373 = !DILocation(line: 486, column: 2, scope: !1362)
!1374 = !DILocation(line: 487, column: 2, scope: !1362)
!1375 = !DILocation(line: 488, column: 2, scope: !1362)
!1376 = !DILocation(line: 490, column: 2, scope: !1362)
!1377 = !DILocation(line: 491, column: 2, scope: !1362)
!1378 = !DILocation(line: 492, column: 2, scope: !1362)
!1379 = !DILocation(line: 494, column: 2, scope: !1362)
!1380 = !DILocation(line: 495, column: 1, scope: !1362)
!1381 = distinct !DISubprogram(name: "print_servers", scope: !351, file: !351, line: 37, type: !352, isLocal: true, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !354)
!1382 = !DILocalVariable(name: "tmp", scope: !1381, file: !351, line: 39, type: !817)
!1383 = !DILocation(line: 39, column: 10, scope: !1381)
!1384 = !DILocation(line: 41, column: 13, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1381, file: !351, line: 41, column: 2)
!1386 = !DILocation(line: 41, column: 11, scope: !1385)
!1387 = !DILocation(line: 41, column: 7, scope: !1385)
!1388 = !DILocation(line: 41, column: 22, scope: !1389)
!1389 = !DILexicalBlockFile(scope: !1390, file: !351, discriminator: 1)
!1390 = distinct !DILexicalBlock(scope: !1385, file: !351, line: 41, column: 2)
!1391 = !DILocation(line: 41, column: 26, scope: !1389)
!1392 = !DILocation(line: 41, column: 2, scope: !1389)
!1393 = !DILocalVariable(name: "rec", scope: !1394, file: !351, line: 42, type: !659)
!1394 = distinct !DILexicalBlock(scope: !1390, file: !351, line: 41, column: 51)
!1395 = !DILocation(line: 42, column: 15, scope: !1394)
!1396 = !DILocation(line: 42, column: 21, scope: !1394)
!1397 = !DILocation(line: 42, column: 26, scope: !1394)
!1398 = !DILocation(line: 44, column: 36, scope: !1394)
!1399 = !DILocation(line: 44, column: 41, scope: !1394)
!1400 = !DILocation(line: 44, column: 46, scope: !1394)
!1401 = !DILocation(line: 44, column: 51, scope: !1394)
!1402 = !DILocation(line: 44, column: 60, scope: !1394)
!1403 = !DILocation(line: 44, column: 69, scope: !1394)
!1404 = !DILocation(line: 44, column: 74, scope: !1394)
!1405 = !DILocation(line: 44, column: 83, scope: !1394)
!1406 = !DILocation(line: 44, column: 89, scope: !1394)
!1407 = !DILocation(line: 44, column: 94, scope: !1394)
!1408 = !DILocation(line: 44, column: 103, scope: !1394)
!1409 = !DILocation(line: 44, column: 111, scope: !1394)
!1410 = !DILocation(line: 44, column: 89, scope: !1411)
!1411 = !DILexicalBlockFile(scope: !1394, file: !351, discriminator: 1)
!1412 = !DILocation(line: 44, column: 9, scope: !1413)
!1413 = !DILexicalBlockFile(scope: !1394, file: !351, discriminator: 2)
!1414 = !DILocation(line: 44, column: 14, scope: !1413)
!1415 = !DILocation(line: 44, column: 23, scope: !1413)
!1416 = !DILocation(line: 44, column: 89, scope: !1413)
!1417 = !DILocation(line: 44, column: 89, scope: !1418)
!1418 = !DILexicalBlockFile(scope: !1394, file: !351, discriminator: 3)
!1419 = !DILocation(line: 44, column: 32, scope: !1418)
!1420 = !DILocation(line: 44, column: 37, scope: !1418)
!1421 = !DILocation(line: 44, column: 46, scope: !1418)
!1422 = !DILocation(line: 44, column: 3, scope: !1418)
!1423 = !DILocation(line: 47, column: 2, scope: !1394)
!1424 = !DILocation(line: 41, column: 40, scope: !1425)
!1425 = !DILexicalBlockFile(scope: !1390, file: !351, discriminator: 2)
!1426 = !DILocation(line: 41, column: 45, scope: !1425)
!1427 = !DILocation(line: 41, column: 38, scope: !1425)
!1428 = !DILocation(line: 41, column: 2, scope: !1425)
!1429 = distinct !{!1429, !1430}
!1430 = !DILocation(line: 41, column: 2, scope: !1381)
!1431 = !DILocation(line: 48, column: 1, scope: !1381)
!1432 = distinct !DISubprogram(name: "print_lookup_servers", scope: !351, file: !351, line: 50, type: !352, isLocal: true, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !354)
!1433 = !DILocalVariable(name: "tmp", scope: !1432, file: !351, line: 52, type: !817)
!1434 = !DILocation(line: 52, column: 10, scope: !1432)
!1435 = !DILocation(line: 53, column: 13, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1432, file: !351, line: 53, column: 2)
!1437 = !DILocation(line: 53, column: 11, scope: !1436)
!1438 = !DILocation(line: 53, column: 7, scope: !1436)
!1439 = !DILocation(line: 53, column: 29, scope: !1440)
!1440 = !DILexicalBlockFile(scope: !1441, file: !351, discriminator: 1)
!1441 = distinct !DILexicalBlock(scope: !1436, file: !351, line: 53, column: 2)
!1442 = !DILocation(line: 53, column: 33, scope: !1440)
!1443 = !DILocation(line: 53, column: 2, scope: !1440)
!1444 = !DILocalVariable(name: "rec", scope: !1445, file: !351, line: 54, type: !659)
!1445 = distinct !DILexicalBlock(scope: !1441, file: !351, line: 53, column: 58)
!1446 = !DILocation(line: 54, column: 15, scope: !1445)
!1447 = !DILocation(line: 54, column: 21, scope: !1445)
!1448 = !DILocation(line: 54, column: 26, scope: !1445)
!1449 = !DILocation(line: 56, column: 43, scope: !1445)
!1450 = !DILocation(line: 56, column: 48, scope: !1445)
!1451 = !DILocation(line: 56, column: 53, scope: !1445)
!1452 = !DILocation(line: 56, column: 58, scope: !1445)
!1453 = !DILocation(line: 56, column: 67, scope: !1445)
!1454 = !DILocation(line: 56, column: 76, scope: !1445)
!1455 = !DILocation(line: 56, column: 81, scope: !1445)
!1456 = !DILocation(line: 56, column: 90, scope: !1445)
!1457 = !DILocation(line: 56, column: 96, scope: !1445)
!1458 = !DILocation(line: 56, column: 101, scope: !1445)
!1459 = !DILocation(line: 56, column: 110, scope: !1445)
!1460 = !DILocation(line: 56, column: 118, scope: !1445)
!1461 = !DILocation(line: 56, column: 96, scope: !1462)
!1462 = !DILexicalBlockFile(scope: !1445, file: !351, discriminator: 1)
!1463 = !DILocation(line: 56, column: 9, scope: !1464)
!1464 = !DILexicalBlockFile(scope: !1445, file: !351, discriminator: 2)
!1465 = !DILocation(line: 56, column: 14, scope: !1464)
!1466 = !DILocation(line: 56, column: 23, scope: !1464)
!1467 = !DILocation(line: 56, column: 96, scope: !1464)
!1468 = !DILocation(line: 56, column: 96, scope: !1469)
!1469 = !DILexicalBlockFile(scope: !1445, file: !351, discriminator: 3)
!1470 = !DILocation(line: 56, column: 32, scope: !1469)
!1471 = !DILocation(line: 56, column: 37, scope: !1469)
!1472 = !DILocation(line: 56, column: 46, scope: !1469)
!1473 = !DILocation(line: 56, column: 3, scope: !1469)
!1474 = !DILocation(line: 59, column: 2, scope: !1445)
!1475 = !DILocation(line: 53, column: 47, scope: !1476)
!1476 = !DILexicalBlockFile(scope: !1441, file: !351, discriminator: 2)
!1477 = !DILocation(line: 53, column: 52, scope: !1476)
!1478 = !DILocation(line: 53, column: 45, scope: !1476)
!1479 = !DILocation(line: 53, column: 2, scope: !1476)
!1480 = distinct !{!1480, !1481}
!1481 = !DILocation(line: 53, column: 2, scope: !1432)
!1482 = !DILocation(line: 60, column: 1, scope: !1432)
!1483 = distinct !DISubprogram(name: "print_reconnects", scope: !351, file: !351, line: 62, type: !352, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !354)
!1484 = !DILocalVariable(name: "tmp", scope: !1483, file: !351, line: 64, type: !817)
!1485 = !DILocation(line: 64, column: 10, scope: !1483)
!1486 = !DILocalVariable(name: "tag", scope: !1483, file: !351, line: 65, type: !420)
!1487 = !DILocation(line: 65, column: 8, scope: !1483)
!1488 = !DILocalVariable(name: "next_connect", scope: !1483, file: !351, line: 65, type: !420)
!1489 = !DILocation(line: 65, column: 14, scope: !1483)
!1490 = !DILocalVariable(name: "left", scope: !1483, file: !351, line: 66, type: !494)
!1491 = !DILocation(line: 66, column: 6, scope: !1483)
!1492 = !DILocation(line: 68, column: 13, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1483, file: !351, line: 68, column: 2)
!1494 = !DILocation(line: 68, column: 11, scope: !1493)
!1495 = !DILocation(line: 68, column: 7, scope: !1493)
!1496 = !DILocation(line: 68, column: 25, scope: !1497)
!1497 = !DILexicalBlockFile(scope: !1498, file: !351, discriminator: 1)
!1498 = distinct !DILexicalBlock(scope: !1493, file: !351, line: 68, column: 2)
!1499 = !DILocation(line: 68, column: 29, scope: !1497)
!1500 = !DILocation(line: 68, column: 2, scope: !1497)
!1501 = !DILocalVariable(name: "rec", scope: !1502, file: !351, line: 69, type: !1266)
!1502 = distinct !DILexicalBlock(scope: !1498, file: !351, line: 68, column: 54)
!1503 = !DILocation(line: 69, column: 18, scope: !1502)
!1504 = !DILocation(line: 69, column: 24, scope: !1502)
!1505 = !DILocation(line: 69, column: 29, scope: !1502)
!1506 = !DILocalVariable(name: "conn", scope: !1502, file: !351, line: 70, type: !669)
!1507 = !DILocation(line: 70, column: 23, scope: !1502)
!1508 = !DILocation(line: 70, column: 30, scope: !1502)
!1509 = !DILocation(line: 70, column: 35, scope: !1502)
!1510 = !DILocation(line: 72, column: 37, scope: !1502)
!1511 = !DILocation(line: 72, column: 42, scope: !1502)
!1512 = !DILocation(line: 72, column: 9, scope: !1502)
!1513 = !DILocation(line: 72, column: 7, scope: !1502)
!1514 = !DILocation(line: 73, column: 10, scope: !1502)
!1515 = !DILocation(line: 73, column: 15, scope: !1502)
!1516 = !DILocation(line: 73, column: 28, scope: !1502)
!1517 = !DILocation(line: 73, column: 27, scope: !1502)
!1518 = !DILocation(line: 73, column: 8, scope: !1502)
!1519 = !DILocation(line: 74, column: 47, scope: !1502)
!1520 = !DILocation(line: 74, column: 51, scope: !1502)
!1521 = !DILocation(line: 74, column: 56, scope: !1502)
!1522 = !DILocation(line: 74, column: 60, scope: !1502)
!1523 = !DILocation(line: 74, column: 18, scope: !1502)
!1524 = !DILocation(line: 74, column: 16, scope: !1502)
!1525 = !DILocation(line: 75, column: 46, scope: !1502)
!1526 = !DILocation(line: 75, column: 51, scope: !1502)
!1527 = !DILocation(line: 75, column: 57, scope: !1502)
!1528 = !DILocation(line: 75, column: 66, scope: !1502)
!1529 = !DILocation(line: 75, column: 72, scope: !1502)
!1530 = !DILocation(line: 75, column: 78, scope: !1502)
!1531 = !DILocation(line: 75, column: 84, scope: !1502)
!1532 = !DILocation(line: 75, column: 92, scope: !1502)
!1533 = !DILocation(line: 75, column: 78, scope: !1534)
!1534 = !DILexicalBlockFile(scope: !1502, file: !351, discriminator: 1)
!1535 = !DILocation(line: 75, column: 9, scope: !1536)
!1536 = !DILexicalBlockFile(scope: !1502, file: !351, discriminator: 2)
!1537 = !DILocation(line: 75, column: 15, scope: !1536)
!1538 = !DILocation(line: 75, column: 78, scope: !1536)
!1539 = !DILocation(line: 75, column: 78, scope: !1540)
!1540 = !DILexicalBlockFile(scope: !1502, file: !351, discriminator: 3)
!1541 = !DILocation(line: 75, column: 24, scope: !1540)
!1542 = !DILocation(line: 75, column: 30, scope: !1540)
!1543 = !DILocation(line: 75, column: 36, scope: !1540)
!1544 = !DILocation(line: 75, column: 3, scope: !1540)
!1545 = !DILocation(line: 79, column: 10, scope: !1502)
!1546 = !DILocation(line: 79, column: 3, scope: !1502)
!1547 = !DILocation(line: 80, column: 10, scope: !1502)
!1548 = !DILocation(line: 80, column: 3, scope: !1502)
!1549 = !DILocation(line: 81, column: 2, scope: !1502)
!1550 = !DILocation(line: 68, column: 43, scope: !1551)
!1551 = !DILexicalBlockFile(scope: !1498, file: !351, discriminator: 2)
!1552 = !DILocation(line: 68, column: 48, scope: !1551)
!1553 = !DILocation(line: 68, column: 41, scope: !1551)
!1554 = !DILocation(line: 68, column: 2, scope: !1551)
!1555 = distinct !{!1555, !1556}
!1556 = !DILocation(line: 68, column: 2, scope: !1483)
!1557 = !DILocation(line: 82, column: 1, scope: !1483)
!1558 = distinct !DISubprogram(name: "cmd_server_add_modify", scope: !351, file: !351, line: 107, type: !1559, isLocal: true, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !354)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{null, !345, !778}
!1561 = !DILocalVariable(name: "data", arg: 1, scope: !1558, file: !351, line: 107, type: !345)
!1562 = !DILocation(line: 107, column: 47, scope: !1558)
!1563 = !DILocalVariable(name: "add", arg: 2, scope: !1558, file: !351, line: 107, type: !778)
!1564 = !DILocation(line: 107, column: 62, scope: !1558)
!1565 = !DILocalVariable(name: "optlist", scope: !1558, file: !351, line: 109, type: !414)
!1566 = !DILocation(line: 109, column: 21, scope: !1558)
!1567 = !DILocalVariable(name: "rec", scope: !1558, file: !351, line: 110, type: !486)
!1568 = !DILocation(line: 110, column: 20, scope: !1558)
!1569 = !DILocalVariable(name: "addr", scope: !1558, file: !351, line: 111, type: !420)
!1570 = !DILocation(line: 111, column: 8, scope: !1558)
!1571 = !DILocalVariable(name: "portstr", scope: !1558, file: !351, line: 111, type: !420)
!1572 = !DILocation(line: 111, column: 15, scope: !1558)
!1573 = !DILocalVariable(name: "password", scope: !1558, file: !351, line: 111, type: !420)
!1574 = !DILocation(line: 111, column: 25, scope: !1558)
!1575 = !DILocalVariable(name: "value", scope: !1558, file: !351, line: 111, type: !420)
!1576 = !DILocation(line: 111, column: 36, scope: !1558)
!1577 = !DILocalVariable(name: "chatnet", scope: !1558, file: !351, line: 111, type: !420)
!1578 = !DILocation(line: 111, column: 44, scope: !1558)
!1579 = !DILocalVariable(name: "free_arg", scope: !1558, file: !351, line: 112, type: !337)
!1580 = !DILocation(line: 112, column: 8, scope: !1558)
!1581 = !DILocalVariable(name: "port", scope: !1558, file: !351, line: 113, type: !494)
!1582 = !DILocation(line: 113, column: 6, scope: !1558)
!1583 = !DILocation(line: 115, column: 22, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1558, file: !351, line: 115, column: 6)
!1585 = !DILocation(line: 115, column: 7, scope: !1584)
!1586 = !DILocation(line: 115, column: 6, scope: !1558)
!1587 = !DILocation(line: 117, column: 3, scope: !1584)
!1588 = !DILocation(line: 119, column: 7, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1558, file: !351, line: 119, column: 6)
!1590 = !DILocation(line: 119, column: 6, scope: !1589)
!1591 = !DILocation(line: 119, column: 12, scope: !1589)
!1592 = !DILocation(line: 119, column: 6, scope: !1558)
!1593 = !DILocation(line: 119, column: 21, scope: !1594)
!1594 = !DILexicalBlockFile(scope: !1589, file: !351, discriminator: 1)
!1595 = distinct !{!1595, !1596}
!1596 = !DILocation(line: 119, column: 21, scope: !1589)
!1597 = !DILocation(line: 119, column: 42, scope: !1598)
!1598 = !DILexicalBlockFile(scope: !1599, file: !351, discriminator: 2)
!1599 = distinct !DILexicalBlock(scope: !1589, file: !351, line: 119, column: 24)
!1600 = !DILocation(line: 119, column: 26, scope: !1598)
!1601 = !DILocation(line: 119, column: 53, scope: !1598)
!1602 = distinct !{!1602, !1603}
!1603 = !DILocation(line: 119, column: 53, scope: !1599)
!1604 = !DILocation(line: 119, column: 58, scope: !1605)
!1605 = !DILexicalBlockFile(scope: !1606, file: !351, discriminator: 3)
!1606 = distinct !DILexicalBlock(scope: !1599, file: !351, line: 119, column: 56)
!1607 = !DILocation(line: 119, column: 140, scope: !1608)
!1608 = !DILexicalBlockFile(scope: !1605, file: !351, discriminator: 6)
!1609 = !DILocation(line: 119, column: 155, scope: !1605)
!1610 = !DILocation(line: 119, column: 176, scope: !1611)
!1611 = !DILexicalBlockFile(scope: !1599, file: !351, discriminator: 4)
!1612 = !DILocation(line: 119, column: 176, scope: !1613)
!1613 = !DILexicalBlockFile(scope: !1599, file: !351, discriminator: 5)
!1614 = !DILocation(line: 121, column: 30, scope: !1558)
!1615 = !DILocation(line: 121, column: 10, scope: !1558)
!1616 = !DILocation(line: 121, column: 8, scope: !1558)
!1617 = !DILocation(line: 123, column: 7, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1558, file: !351, line: 123, column: 6)
!1619 = !DILocation(line: 123, column: 6, scope: !1618)
!1620 = !DILocation(line: 123, column: 15, scope: !1618)
!1621 = !DILocation(line: 123, column: 6, scope: !1558)
!1622 = !DILocation(line: 124, column: 15, scope: !1618)
!1623 = !DILocation(line: 124, column: 10, scope: !1618)
!1624 = !DILocation(line: 124, column: 8, scope: !1618)
!1625 = !DILocation(line: 124, column: 3, scope: !1618)
!1626 = !DILocation(line: 125, column: 11, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1618, file: !351, line: 125, column: 11)
!1628 = !DILocation(line: 125, column: 17, scope: !1627)
!1629 = !DILocation(line: 125, column: 24, scope: !1627)
!1630 = !DILocation(line: 125, column: 28, scope: !1631)
!1631 = !DILexicalBlockFile(scope: !1627, file: !351, discriminator: 1)
!1632 = !DILocation(line: 125, column: 27, scope: !1631)
!1633 = !DILocation(line: 125, column: 34, scope: !1631)
!1634 = !DILocation(line: 125, column: 11, scope: !1631)
!1635 = !DILocation(line: 126, column: 15, scope: !1627)
!1636 = !DILocation(line: 126, column: 10, scope: !1627)
!1637 = !DILocation(line: 126, column: 8, scope: !1627)
!1638 = !DILocation(line: 126, column: 3, scope: !1627)
!1639 = !DILocation(line: 127, column: 31, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1627, file: !351, line: 127, column: 11)
!1641 = !DILocation(line: 127, column: 11, scope: !1640)
!1642 = !DILocation(line: 127, column: 47, scope: !1640)
!1643 = !DILocation(line: 128, column: 24, scope: !1640)
!1644 = !DILocation(line: 128, column: 4, scope: !1640)
!1645 = !DILocation(line: 127, column: 11, scope: !1631)
!1646 = !DILocation(line: 129, column: 8, scope: !1640)
!1647 = !DILocation(line: 129, column: 3, scope: !1640)
!1648 = !DILocation(line: 131, column: 8, scope: !1640)
!1649 = !DILocation(line: 133, column: 32, scope: !1558)
!1650 = !DILocation(line: 133, column: 12, scope: !1558)
!1651 = !DILocation(line: 133, column: 10, scope: !1558)
!1652 = !DILocation(line: 135, column: 26, scope: !1558)
!1653 = !DILocation(line: 135, column: 32, scope: !1558)
!1654 = !DILocation(line: 135, column: 38, scope: !1558)
!1655 = !DILocation(line: 135, column: 8, scope: !1558)
!1656 = !DILocation(line: 135, column: 6, scope: !1558)
!1657 = !DILocation(line: 137, column: 6, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1558, file: !351, line: 137, column: 6)
!1659 = !DILocation(line: 137, column: 10, scope: !1658)
!1660 = !DILocation(line: 137, column: 6, scope: !1558)
!1661 = !DILocation(line: 138, column: 7, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !351, line: 138, column: 7)
!1663 = distinct !DILexicalBlock(scope: !1658, file: !351, line: 137, column: 18)
!1664 = !DILocation(line: 138, column: 11, scope: !1662)
!1665 = !DILocation(line: 138, column: 7, scope: !1663)
!1666 = !DILocation(line: 139, column: 55, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1662, file: !351, line: 138, column: 19)
!1668 = !DILocation(line: 139, column: 61, scope: !1667)
!1669 = !DILocation(line: 139, column: 4, scope: !1667)
!1670 = !DILocation(line: 141, column: 20, scope: !1667)
!1671 = !DILocation(line: 141, column: 4, scope: !1667)
!1672 = !DILocation(line: 142, column: 4, scope: !1667)
!1673 = !DILocation(line: 145, column: 29, scope: !1663)
!1674 = !DILocation(line: 145, column: 9, scope: !1663)
!1675 = !DILocation(line: 145, column: 7, scope: !1663)
!1676 = !DILocation(line: 146, column: 7, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1663, file: !351, line: 146, column: 7)
!1678 = !DILocation(line: 146, column: 11, scope: !1677)
!1679 = !DILocation(line: 146, column: 7, scope: !1663)
!1680 = !DILocation(line: 147, column: 20, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1677, file: !351, line: 146, column: 19)
!1682 = !DILocation(line: 147, column: 4, scope: !1681)
!1683 = !DILocation(line: 148, column: 4, scope: !1681)
!1684 = !DILocation(line: 150, column: 27, scope: !1663)
!1685 = !DILocation(line: 150, column: 18, scope: !1663)
!1686 = !DILocation(line: 150, column: 3, scope: !1663)
!1687 = !DILocation(line: 150, column: 8, scope: !1663)
!1688 = !DILocation(line: 150, column: 16, scope: !1663)
!1689 = !DILocation(line: 151, column: 15, scope: !1663)
!1690 = !DILocation(line: 151, column: 3, scope: !1663)
!1691 = !DILocation(line: 151, column: 8, scope: !1663)
!1692 = !DILocation(line: 151, column: 13, scope: !1663)
!1693 = !DILocation(line: 152, column: 2, scope: !1663)
!1694 = !DILocation(line: 153, column: 8, scope: !1695)
!1695 = distinct !DILexicalBlock(scope: !1696, file: !351, line: 153, column: 7)
!1696 = distinct !DILexicalBlock(scope: !1658, file: !351, line: 152, column: 9)
!1697 = !DILocation(line: 153, column: 7, scope: !1695)
!1698 = !DILocation(line: 153, column: 16, scope: !1695)
!1699 = !DILocation(line: 153, column: 24, scope: !1695)
!1700 = !DILocation(line: 153, column: 47, scope: !1701)
!1701 = !DILexicalBlockFile(scope: !1695, file: !351, discriminator: 1)
!1702 = !DILocation(line: 153, column: 27, scope: !1701)
!1703 = !DILocation(line: 153, column: 7, scope: !1701)
!1704 = !DILocation(line: 154, column: 16, scope: !1695)
!1705 = !DILocation(line: 154, column: 4, scope: !1695)
!1706 = !DILocation(line: 154, column: 9, scope: !1695)
!1707 = !DILocation(line: 154, column: 14, scope: !1695)
!1708 = !DILocation(line: 156, column: 8, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1696, file: !351, line: 156, column: 7)
!1710 = !DILocation(line: 156, column: 7, scope: !1709)
!1711 = !DILocation(line: 156, column: 17, scope: !1709)
!1712 = !DILocation(line: 156, column: 7, scope: !1696)
!1713 = !DILocation(line: 156, column: 26, scope: !1714)
!1714 = !DILexicalBlockFile(scope: !1709, file: !351, discriminator: 1)
!1715 = distinct !{!1715, !1716}
!1716 = !DILocation(line: 156, column: 26, scope: !1709)
!1717 = !DILocation(line: 156, column: 35, scope: !1718)
!1718 = !DILexicalBlockFile(scope: !1719, file: !351, discriminator: 2)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !351, line: 156, column: 35)
!1720 = distinct !DILexicalBlock(scope: !1709, file: !351, line: 156, column: 29)
!1721 = !DILocation(line: 156, column: 40, scope: !1718)
!1722 = !DILocation(line: 156, column: 59, scope: !1723)
!1723 = !DILexicalBlockFile(scope: !1724, file: !351, discriminator: 3)
!1724 = distinct !DILexicalBlock(scope: !1719, file: !351, line: 156, column: 50)
!1725 = !DILocation(line: 156, column: 64, scope: !1723)
!1726 = !DILocation(line: 156, column: 52, scope: !1723)
!1727 = !DILocation(line: 156, column: 76, scope: !1723)
!1728 = !DILocation(line: 156, column: 81, scope: !1723)
!1729 = !DILocation(line: 156, column: 91, scope: !1723)
!1730 = !DILocation(line: 156, column: 27, scope: !1723)
!1731 = !DILocation(line: 156, column: 29, scope: !1732)
!1732 = !DILexicalBlockFile(scope: !1720, file: !351, discriminator: 4)
!1733 = !DILocation(line: 156, column: 29, scope: !1734)
!1734 = !DILexicalBlockFile(scope: !1720, file: !351, discriminator: 5)
!1735 = !DILocation(line: 157, column: 27, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1696, file: !351, line: 157, column: 7)
!1737 = !DILocation(line: 157, column: 7, scope: !1736)
!1738 = !DILocation(line: 157, column: 7, scope: !1696)
!1739 = !DILocation(line: 158, column: 4, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1736, file: !351, line: 157, column: 45)
!1741 = distinct !{!1741, !1739}
!1742 = !DILocation(line: 158, column: 13, scope: !1743)
!1743 = !DILexicalBlockFile(scope: !1744, file: !351, discriminator: 1)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !351, line: 158, column: 13)
!1745 = distinct !DILexicalBlock(scope: !1740, file: !351, line: 158, column: 7)
!1746 = !DILocation(line: 158, column: 18, scope: !1743)
!1747 = !DILocation(line: 158, column: 37, scope: !1748)
!1748 = !DILexicalBlockFile(scope: !1749, file: !351, discriminator: 2)
!1749 = distinct !DILexicalBlock(scope: !1744, file: !351, line: 158, column: 28)
!1750 = !DILocation(line: 158, column: 42, scope: !1748)
!1751 = !DILocation(line: 158, column: 30, scope: !1748)
!1752 = !DILocation(line: 158, column: 54, scope: !1748)
!1753 = !DILocation(line: 158, column: 59, scope: !1748)
!1754 = !DILocation(line: 158, column: 69, scope: !1748)
!1755 = !DILocation(line: 158, column: 5, scope: !1748)
!1756 = !DILocation(line: 158, column: 7, scope: !1757)
!1757 = !DILexicalBlockFile(scope: !1745, file: !351, discriminator: 3)
!1758 = !DILocation(line: 159, column: 19, scope: !1740)
!1759 = !DILocation(line: 159, column: 24, scope: !1740)
!1760 = !DILocation(line: 159, column: 32, scope: !1740)
!1761 = !DILocation(line: 159, column: 4, scope: !1740)
!1762 = !DILocation(line: 159, column: 9, scope: !1740)
!1763 = !DILocation(line: 159, column: 17, scope: !1740)
!1764 = !DILocation(line: 160, column: 3, scope: !1740)
!1765 = !DILocation(line: 163, column: 26, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1558, file: !351, line: 163, column: 6)
!1767 = !DILocation(line: 163, column: 6, scope: !1766)
!1768 = !DILocation(line: 163, column: 6, scope: !1558)
!1769 = !DILocation(line: 164, column: 3, scope: !1766)
!1770 = !DILocation(line: 164, column: 8, scope: !1766)
!1771 = !DILocation(line: 164, column: 15, scope: !1766)
!1772 = !DILocation(line: 165, column: 38, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1766, file: !351, line: 165, column: 18)
!1774 = !DILocation(line: 165, column: 18, scope: !1773)
!1775 = !DILocation(line: 165, column: 18, scope: !1766)
!1776 = !DILocation(line: 166, column: 3, scope: !1773)
!1777 = !DILocation(line: 166, column: 8, scope: !1773)
!1778 = !DILocation(line: 166, column: 15, scope: !1773)
!1779 = !DILocation(line: 168, column: 26, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1558, file: !351, line: 168, column: 6)
!1781 = !DILocation(line: 168, column: 6, scope: !1780)
!1782 = !DILocation(line: 168, column: 42, scope: !1780)
!1783 = !DILocation(line: 168, column: 65, scope: !1784)
!1784 = !DILexicalBlockFile(scope: !1780, file: !351, discriminator: 1)
!1785 = !DILocation(line: 168, column: 45, scope: !1784)
!1786 = !DILocation(line: 168, column: 6, scope: !1784)
!1787 = !DILocation(line: 169, column: 3, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1780, file: !351, line: 168, column: 82)
!1789 = !DILocation(line: 169, column: 8, scope: !1788)
!1790 = !DILocation(line: 169, column: 16, scope: !1788)
!1791 = !DILocation(line: 170, column: 2, scope: !1788)
!1792 = !DILocation(line: 171, column: 31, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1780, file: !351, line: 171, column: 11)
!1794 = !DILocation(line: 171, column: 11, scope: !1793)
!1795 = !DILocation(line: 171, column: 49, scope: !1793)
!1796 = !DILocation(line: 171, column: 72, scope: !1797)
!1797 = !DILexicalBlockFile(scope: !1793, file: !351, discriminator: 1)
!1798 = !DILocation(line: 171, column: 52, scope: !1797)
!1799 = !DILocation(line: 171, column: 11, scope: !1797)
!1800 = !DILocation(line: 172, column: 3, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1793, file: !351, line: 171, column: 91)
!1802 = !DILocation(line: 172, column: 8, scope: !1801)
!1803 = !DILocation(line: 172, column: 16, scope: !1801)
!1804 = !DILocation(line: 174, column: 3, scope: !1801)
!1805 = !DILocation(line: 174, column: 8, scope: !1801)
!1806 = !DILocation(line: 174, column: 19, scope: !1801)
!1807 = !DILocation(line: 175, column: 2, scope: !1801)
!1808 = !DILocation(line: 177, column: 30, scope: !1558)
!1809 = !DILocation(line: 177, column: 10, scope: !1558)
!1810 = !DILocation(line: 177, column: 8, scope: !1558)
!1811 = !DILocation(line: 178, column: 6, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1558, file: !351, line: 178, column: 6)
!1813 = !DILocation(line: 178, column: 12, scope: !1812)
!1814 = !DILocation(line: 178, column: 6, scope: !1558)
!1815 = !DILocation(line: 179, column: 31, scope: !1812)
!1816 = !DILocation(line: 179, column: 11, scope: !1812)
!1817 = !DILocation(line: 179, column: 9, scope: !1812)
!1818 = !DILocation(line: 179, column: 3, scope: !1812)
!1819 = !DILocation(line: 180, column: 6, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1558, file: !351, line: 180, column: 6)
!1821 = !DILocation(line: 180, column: 12, scope: !1820)
!1822 = !DILocation(line: 180, column: 19, scope: !1820)
!1823 = !DILocation(line: 180, column: 23, scope: !1824)
!1824 = !DILexicalBlockFile(scope: !1820, file: !351, discriminator: 1)
!1825 = !DILocation(line: 180, column: 22, scope: !1824)
!1826 = !DILocation(line: 180, column: 29, scope: !1824)
!1827 = !DILocation(line: 180, column: 6, scope: !1824)
!1828 = !DILocation(line: 181, column: 28, scope: !1820)
!1829 = !DILocation(line: 181, column: 19, scope: !1820)
!1830 = !DILocation(line: 181, column: 3, scope: !1820)
!1831 = !DILocation(line: 181, column: 8, scope: !1820)
!1832 = !DILocation(line: 181, column: 17, scope: !1820)
!1833 = !DILocation(line: 183, column: 30, scope: !1558)
!1834 = !DILocation(line: 183, column: 10, scope: !1558)
!1835 = !DILocation(line: 183, column: 8, scope: !1558)
!1836 = !DILocation(line: 184, column: 6, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1558, file: !351, line: 184, column: 6)
!1838 = !DILocation(line: 184, column: 12, scope: !1837)
!1839 = !DILocation(line: 184, column: 6, scope: !1558)
!1840 = !DILocation(line: 185, column: 31, scope: !1837)
!1841 = !DILocation(line: 185, column: 11, scope: !1837)
!1842 = !DILocation(line: 185, column: 9, scope: !1837)
!1843 = !DILocation(line: 185, column: 3, scope: !1837)
!1844 = !DILocation(line: 186, column: 6, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1558, file: !351, line: 186, column: 6)
!1846 = !DILocation(line: 186, column: 12, scope: !1845)
!1847 = !DILocation(line: 186, column: 19, scope: !1845)
!1848 = !DILocation(line: 186, column: 23, scope: !1849)
!1849 = !DILexicalBlockFile(scope: !1845, file: !351, discriminator: 1)
!1850 = !DILocation(line: 186, column: 22, scope: !1849)
!1851 = !DILocation(line: 186, column: 29, scope: !1849)
!1852 = !DILocation(line: 186, column: 6, scope: !1849)
!1853 = !DILocation(line: 187, column: 28, scope: !1845)
!1854 = !DILocation(line: 187, column: 19, scope: !1845)
!1855 = !DILocation(line: 187, column: 3, scope: !1845)
!1856 = !DILocation(line: 187, column: 8, scope: !1845)
!1857 = !DILocation(line: 187, column: 17, scope: !1845)
!1858 = !DILocation(line: 189, column: 30, scope: !1558)
!1859 = !DILocation(line: 189, column: 10, scope: !1558)
!1860 = !DILocation(line: 189, column: 8, scope: !1558)
!1861 = !DILocation(line: 190, column: 6, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1558, file: !351, line: 190, column: 6)
!1863 = !DILocation(line: 190, column: 12, scope: !1862)
!1864 = !DILocation(line: 190, column: 6, scope: !1558)
!1865 = !DILocation(line: 191, column: 31, scope: !1862)
!1866 = !DILocation(line: 191, column: 11, scope: !1862)
!1867 = !DILocation(line: 191, column: 9, scope: !1862)
!1868 = !DILocation(line: 191, column: 3, scope: !1862)
!1869 = !DILocation(line: 192, column: 6, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1558, file: !351, line: 192, column: 6)
!1871 = !DILocation(line: 192, column: 12, scope: !1870)
!1872 = !DILocation(line: 192, column: 19, scope: !1870)
!1873 = !DILocation(line: 192, column: 23, scope: !1874)
!1874 = !DILexicalBlockFile(scope: !1870, file: !351, discriminator: 1)
!1875 = !DILocation(line: 192, column: 22, scope: !1874)
!1876 = !DILocation(line: 192, column: 29, scope: !1874)
!1877 = !DILocation(line: 192, column: 6, scope: !1874)
!1878 = !DILocation(line: 193, column: 28, scope: !1870)
!1879 = !DILocation(line: 193, column: 19, scope: !1870)
!1880 = !DILocation(line: 193, column: 3, scope: !1870)
!1881 = !DILocation(line: 193, column: 8, scope: !1870)
!1882 = !DILocation(line: 193, column: 17, scope: !1870)
!1883 = !DILocation(line: 195, column: 26, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1558, file: !351, line: 195, column: 6)
!1885 = !DILocation(line: 195, column: 6, scope: !1884)
!1886 = !DILocation(line: 195, column: 49, scope: !1884)
!1887 = !DILocation(line: 195, column: 72, scope: !1888)
!1888 = !DILexicalBlockFile(scope: !1884, file: !351, discriminator: 1)
!1889 = !DILocation(line: 195, column: 52, scope: !1888)
!1890 = !DILocation(line: 195, column: 6, scope: !1888)
!1891 = !DILocation(line: 196, column: 3, scope: !1884)
!1892 = !DILocation(line: 196, column: 8, scope: !1884)
!1893 = !DILocation(line: 196, column: 19, scope: !1884)
!1894 = !DILocation(line: 197, column: 31, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1884, file: !351, line: 197, column: 11)
!1896 = !DILocation(line: 197, column: 11, scope: !1895)
!1897 = !DILocation(line: 197, column: 56, scope: !1895)
!1898 = !DILocation(line: 197, column: 79, scope: !1899)
!1899 = !DILexicalBlockFile(scope: !1895, file: !351, discriminator: 1)
!1900 = !DILocation(line: 197, column: 59, scope: !1899)
!1901 = !DILocation(line: 197, column: 11, scope: !1899)
!1902 = !DILocation(line: 198, column: 3, scope: !1895)
!1903 = !DILocation(line: 198, column: 8, scope: !1895)
!1904 = !DILocation(line: 198, column: 19, scope: !1895)
!1905 = !DILocation(line: 200, column: 30, scope: !1558)
!1906 = !DILocation(line: 200, column: 10, scope: !1558)
!1907 = !DILocation(line: 200, column: 8, scope: !1558)
!1908 = !DILocation(line: 201, column: 6, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1558, file: !351, line: 201, column: 6)
!1910 = !DILocation(line: 201, column: 12, scope: !1909)
!1911 = !DILocation(line: 201, column: 6, scope: !1558)
!1912 = !DILocation(line: 202, column: 31, scope: !1909)
!1913 = !DILocation(line: 202, column: 11, scope: !1909)
!1914 = !DILocation(line: 202, column: 9, scope: !1909)
!1915 = !DILocation(line: 202, column: 3, scope: !1909)
!1916 = !DILocation(line: 203, column: 6, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1558, file: !351, line: 203, column: 6)
!1918 = !DILocation(line: 203, column: 12, scope: !1917)
!1919 = !DILocation(line: 203, column: 19, scope: !1917)
!1920 = !DILocation(line: 203, column: 23, scope: !1921)
!1921 = !DILexicalBlockFile(scope: !1917, file: !351, discriminator: 1)
!1922 = !DILocation(line: 203, column: 22, scope: !1921)
!1923 = !DILocation(line: 203, column: 29, scope: !1921)
!1924 = !DILocation(line: 203, column: 6, scope: !1921)
!1925 = !DILocation(line: 204, column: 30, scope: !1917)
!1926 = !DILocation(line: 204, column: 21, scope: !1917)
!1927 = !DILocation(line: 204, column: 3, scope: !1917)
!1928 = !DILocation(line: 204, column: 8, scope: !1917)
!1929 = !DILocation(line: 204, column: 19, scope: !1917)
!1930 = !DILocation(line: 206, column: 30, scope: !1558)
!1931 = !DILocation(line: 206, column: 10, scope: !1558)
!1932 = !DILocation(line: 206, column: 8, scope: !1558)
!1933 = !DILocation(line: 207, column: 6, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1558, file: !351, line: 207, column: 6)
!1935 = !DILocation(line: 207, column: 12, scope: !1934)
!1936 = !DILocation(line: 207, column: 6, scope: !1558)
!1937 = !DILocation(line: 208, column: 31, scope: !1934)
!1938 = !DILocation(line: 208, column: 11, scope: !1934)
!1939 = !DILocation(line: 208, column: 9, scope: !1934)
!1940 = !DILocation(line: 208, column: 3, scope: !1934)
!1941 = !DILocation(line: 209, column: 6, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1558, file: !351, line: 209, column: 6)
!1943 = !DILocation(line: 209, column: 12, scope: !1942)
!1944 = !DILocation(line: 209, column: 19, scope: !1942)
!1945 = !DILocation(line: 209, column: 23, scope: !1946)
!1946 = !DILexicalBlockFile(scope: !1942, file: !351, discriminator: 1)
!1947 = !DILocation(line: 209, column: 22, scope: !1946)
!1948 = !DILocation(line: 209, column: 29, scope: !1946)
!1949 = !DILocation(line: 209, column: 6, scope: !1946)
!1950 = !DILocation(line: 210, column: 30, scope: !1942)
!1951 = !DILocation(line: 210, column: 21, scope: !1942)
!1952 = !DILocation(line: 210, column: 3, scope: !1942)
!1953 = !DILocation(line: 210, column: 8, scope: !1942)
!1954 = !DILocation(line: 210, column: 19, scope: !1942)
!1955 = !DILocation(line: 212, column: 30, scope: !1558)
!1956 = !DILocation(line: 212, column: 10, scope: !1558)
!1957 = !DILocation(line: 212, column: 8, scope: !1558)
!1958 = !DILocation(line: 213, column: 6, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1558, file: !351, line: 213, column: 6)
!1960 = !DILocation(line: 213, column: 12, scope: !1959)
!1961 = !DILocation(line: 213, column: 6, scope: !1558)
!1962 = !DILocation(line: 214, column: 31, scope: !1959)
!1963 = !DILocation(line: 214, column: 11, scope: !1959)
!1964 = !DILocation(line: 214, column: 9, scope: !1959)
!1965 = !DILocation(line: 214, column: 3, scope: !1959)
!1966 = !DILocation(line: 215, column: 6, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1558, file: !351, line: 215, column: 6)
!1968 = !DILocation(line: 215, column: 12, scope: !1967)
!1969 = !DILocation(line: 215, column: 19, scope: !1967)
!1970 = !DILocation(line: 215, column: 23, scope: !1971)
!1971 = !DILexicalBlockFile(scope: !1967, file: !351, discriminator: 1)
!1972 = !DILocation(line: 215, column: 22, scope: !1971)
!1973 = !DILocation(line: 215, column: 29, scope: !1971)
!1974 = !DILocation(line: 215, column: 6, scope: !1971)
!1975 = !DILocation(line: 216, column: 31, scope: !1967)
!1976 = !DILocation(line: 216, column: 22, scope: !1967)
!1977 = !DILocation(line: 216, column: 3, scope: !1967)
!1978 = !DILocation(line: 216, column: 8, scope: !1967)
!1979 = !DILocation(line: 216, column: 20, scope: !1967)
!1980 = !DILocation(line: 218, column: 30, scope: !1558)
!1981 = !DILocation(line: 218, column: 10, scope: !1558)
!1982 = !DILocation(line: 218, column: 8, scope: !1558)
!1983 = !DILocation(line: 219, column: 6, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1558, file: !351, line: 219, column: 6)
!1985 = !DILocation(line: 219, column: 12, scope: !1984)
!1986 = !DILocation(line: 219, column: 6, scope: !1558)
!1987 = !DILocation(line: 220, column: 31, scope: !1984)
!1988 = !DILocation(line: 220, column: 11, scope: !1984)
!1989 = !DILocation(line: 220, column: 9, scope: !1984)
!1990 = !DILocation(line: 220, column: 3, scope: !1984)
!1991 = !DILocation(line: 221, column: 6, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1558, file: !351, line: 221, column: 6)
!1993 = !DILocation(line: 221, column: 12, scope: !1992)
!1994 = !DILocation(line: 221, column: 19, scope: !1992)
!1995 = !DILocation(line: 221, column: 23, scope: !1996)
!1996 = !DILexicalBlockFile(scope: !1992, file: !351, discriminator: 1)
!1997 = !DILocation(line: 221, column: 22, scope: !1996)
!1998 = !DILocation(line: 221, column: 29, scope: !1996)
!1999 = !DILocation(line: 221, column: 6, scope: !1996)
!2000 = !DILocation(line: 222, column: 35, scope: !1992)
!2001 = !DILocation(line: 222, column: 26, scope: !1992)
!2002 = !DILocation(line: 222, column: 3, scope: !1992)
!2003 = !DILocation(line: 222, column: 8, scope: !1992)
!2004 = !DILocation(line: 222, column: 24, scope: !1992)
!2005 = !DILocation(line: 224, column: 30, scope: !1558)
!2006 = !DILocation(line: 224, column: 10, scope: !1558)
!2007 = !DILocation(line: 224, column: 8, scope: !1558)
!2008 = !DILocation(line: 225, column: 6, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !1558, file: !351, line: 225, column: 6)
!2010 = !DILocation(line: 225, column: 12, scope: !2009)
!2011 = !DILocation(line: 225, column: 6, scope: !1558)
!2012 = !DILocation(line: 226, column: 31, scope: !2009)
!2013 = !DILocation(line: 226, column: 11, scope: !2009)
!2014 = !DILocation(line: 226, column: 9, scope: !2009)
!2015 = !DILocation(line: 226, column: 3, scope: !2009)
!2016 = !DILocation(line: 227, column: 6, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1558, file: !351, line: 227, column: 6)
!2018 = !DILocation(line: 227, column: 12, scope: !2017)
!2019 = !DILocation(line: 227, column: 19, scope: !2017)
!2020 = !DILocation(line: 227, column: 23, scope: !2021)
!2021 = !DILexicalBlockFile(scope: !2017, file: !351, discriminator: 1)
!2022 = !DILocation(line: 227, column: 22, scope: !2021)
!2023 = !DILocation(line: 227, column: 29, scope: !2021)
!2024 = !DILocation(line: 227, column: 6, scope: !2021)
!2025 = !DILocation(line: 228, column: 37, scope: !2017)
!2026 = !DILocation(line: 228, column: 28, scope: !2017)
!2027 = !DILocation(line: 228, column: 3, scope: !2017)
!2028 = !DILocation(line: 228, column: 8, scope: !2017)
!2029 = !DILocation(line: 228, column: 26, scope: !2017)
!2030 = !DILocation(line: 230, column: 7, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !1558, file: !351, line: 230, column: 6)
!2032 = !DILocation(line: 230, column: 12, scope: !2031)
!2033 = !DILocation(line: 230, column: 23, scope: !2031)
!2034 = !DILocation(line: 230, column: 30, scope: !2031)
!2035 = !DILocation(line: 230, column: 33, scope: !2036)
!2036 = !DILexicalBlockFile(scope: !2031, file: !351, discriminator: 1)
!2037 = !DILocation(line: 230, column: 38, scope: !2036)
!2038 = !DILocation(line: 230, column: 52, scope: !2036)
!2039 = !DILocation(line: 231, column: 2, scope: !2031)
!2040 = !DILocation(line: 231, column: 6, scope: !2036)
!2041 = !DILocation(line: 231, column: 11, scope: !2036)
!2042 = !DILocation(line: 231, column: 22, scope: !2036)
!2043 = !DILocation(line: 231, column: 30, scope: !2036)
!2044 = !DILocation(line: 231, column: 33, scope: !2045)
!2045 = !DILexicalBlockFile(scope: !2031, file: !351, discriminator: 2)
!2046 = !DILocation(line: 231, column: 38, scope: !2045)
!2047 = !DILocation(line: 231, column: 52, scope: !2045)
!2048 = !DILocation(line: 230, column: 6, scope: !2049)
!2049 = !DILexicalBlockFile(scope: !1558, file: !351, discriminator: 2)
!2050 = !DILocation(line: 232, column: 3, scope: !2031)
!2051 = !DILocation(line: 232, column: 8, scope: !2031)
!2052 = !DILocation(line: 232, column: 19, scope: !2031)
!2053 = !DILocation(line: 234, column: 7, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !1558, file: !351, line: 234, column: 6)
!2055 = !DILocation(line: 234, column: 12, scope: !2054)
!2056 = !DILocation(line: 234, column: 21, scope: !2054)
!2057 = !DILocation(line: 234, column: 28, scope: !2054)
!2058 = !DILocation(line: 234, column: 31, scope: !2059)
!2059 = !DILexicalBlockFile(scope: !2054, file: !351, discriminator: 1)
!2060 = !DILocation(line: 234, column: 36, scope: !2059)
!2061 = !DILocation(line: 234, column: 48, scope: !2059)
!2062 = !DILocation(line: 234, column: 57, scope: !2059)
!2063 = !DILocation(line: 234, column: 60, scope: !2064)
!2064 = !DILexicalBlockFile(scope: !2054, file: !351, discriminator: 2)
!2065 = !DILocation(line: 234, column: 65, scope: !2064)
!2066 = !DILocation(line: 234, column: 76, scope: !2064)
!2067 = !DILocation(line: 234, column: 6, scope: !2064)
!2068 = !DILocation(line: 235, column: 3, scope: !2054)
!2069 = !DILocation(line: 235, column: 8, scope: !2054)
!2070 = !DILocation(line: 235, column: 16, scope: !2054)
!2071 = !DILocation(line: 237, column: 26, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !1558, file: !351, line: 237, column: 6)
!2073 = !DILocation(line: 237, column: 6, scope: !2072)
!2074 = !DILocation(line: 237, column: 6, scope: !1558)
!2075 = !DILocation(line: 237, column: 44, scope: !2076)
!2076 = !DILexicalBlockFile(scope: !2072, file: !351, discriminator: 1)
!2077 = !DILocation(line: 237, column: 49, scope: !2076)
!2078 = !DILocation(line: 237, column: 61, scope: !2076)
!2079 = !DILocation(line: 238, column: 26, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !1558, file: !351, line: 238, column: 6)
!2081 = !DILocation(line: 238, column: 6, scope: !2080)
!2082 = !DILocation(line: 238, column: 6, scope: !1558)
!2083 = !DILocation(line: 238, column: 46, scope: !2084)
!2084 = !DILexicalBlockFile(scope: !2080, file: !351, discriminator: 1)
!2085 = !DILocation(line: 238, column: 51, scope: !2084)
!2086 = !DILocation(line: 238, column: 63, scope: !2084)
!2087 = !DILocation(line: 239, column: 26, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !1558, file: !351, line: 239, column: 6)
!2089 = !DILocation(line: 239, column: 6, scope: !2088)
!2090 = !DILocation(line: 239, column: 6, scope: !1558)
!2091 = !DILocation(line: 239, column: 45, scope: !2092)
!2092 = !DILexicalBlockFile(scope: !2088, file: !351, discriminator: 1)
!2093 = !DILocation(line: 239, column: 50, scope: !2092)
!2094 = !DILocation(line: 239, column: 59, scope: !2092)
!2095 = !DILocation(line: 240, column: 26, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !1558, file: !351, line: 240, column: 6)
!2097 = !DILocation(line: 240, column: 6, scope: !2096)
!2098 = !DILocation(line: 240, column: 6, scope: !1558)
!2099 = !DILocation(line: 240, column: 47, scope: !2100)
!2100 = !DILexicalBlockFile(scope: !2096, file: !351, discriminator: 1)
!2101 = !DILocation(line: 240, column: 52, scope: !2100)
!2102 = !DILocation(line: 240, column: 61, scope: !2100)
!2103 = !DILocation(line: 242, column: 7, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !1558, file: !351, line: 242, column: 6)
!2105 = !DILocation(line: 242, column: 6, scope: !2104)
!2106 = !DILocation(line: 242, column: 16, scope: !2104)
!2107 = !DILocation(line: 242, column: 24, scope: !2104)
!2108 = !DILocation(line: 242, column: 37, scope: !2109)
!2109 = !DILexicalBlockFile(scope: !2104, file: !351, discriminator: 1)
!2110 = !DILocation(line: 242, column: 27, scope: !2109)
!2111 = !DILocation(line: 242, column: 52, scope: !2109)
!2112 = !DILocation(line: 242, column: 6, scope: !2109)
!2113 = !DILocation(line: 242, column: 83, scope: !2114)
!2114 = !DILexicalBlockFile(scope: !2104, file: !351, discriminator: 2)
!2115 = !DILocation(line: 242, column: 74, scope: !2114)
!2116 = !DILocation(line: 242, column: 58, scope: !2114)
!2117 = !DILocation(line: 242, column: 63, scope: !2114)
!2118 = !DILocation(line: 242, column: 72, scope: !2114)
!2119 = !DILocation(line: 243, column: 30, scope: !1558)
!2120 = !DILocation(line: 243, column: 10, scope: !1558)
!2121 = !DILocation(line: 243, column: 8, scope: !1558)
!2122 = !DILocation(line: 244, column: 6, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !1558, file: !351, line: 244, column: 6)
!2124 = !DILocation(line: 244, column: 12, scope: !2123)
!2125 = !DILocation(line: 244, column: 19, scope: !2123)
!2126 = !DILocation(line: 244, column: 23, scope: !2127)
!2127 = !DILexicalBlockFile(scope: !2123, file: !351, discriminator: 1)
!2128 = !DILocation(line: 244, column: 22, scope: !2127)
!2129 = !DILocation(line: 244, column: 29, scope: !2127)
!2130 = !DILocation(line: 244, column: 6, scope: !2127)
!2131 = !DILocation(line: 245, column: 28, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2123, file: !351, line: 244, column: 38)
!2133 = !DILocation(line: 245, column: 19, scope: !2132)
!2134 = !DILocation(line: 245, column: 3, scope: !2132)
!2135 = !DILocation(line: 245, column: 8, scope: !2132)
!2136 = !DILocation(line: 245, column: 17, scope: !2132)
!2137 = !DILocation(line: 246, column: 18, scope: !2132)
!2138 = !DILocation(line: 246, column: 23, scope: !2132)
!2139 = !DILocation(line: 246, column: 31, scope: !2132)
!2140 = !DILocation(line: 246, column: 3, scope: !2132)
!2141 = !DILocation(line: 246, column: 8, scope: !2132)
!2142 = !DILocation(line: 246, column: 16, scope: !2132)
!2143 = !DILocation(line: 247, column: 2, scope: !2132)
!2144 = !DILocation(line: 249, column: 36, scope: !1558)
!2145 = !DILocation(line: 249, column: 41, scope: !1558)
!2146 = !DILocation(line: 249, column: 2, scope: !1558)
!2147 = !DILocation(line: 251, column: 19, scope: !1558)
!2148 = !DILocation(line: 251, column: 2, scope: !1558)
!2149 = !DILocation(line: 252, column: 49, scope: !1558)
!2150 = !DILocation(line: 252, column: 55, scope: !1558)
!2151 = !DILocation(line: 252, column: 2, scope: !1558)
!2152 = !DILocation(line: 255, column: 18, scope: !1558)
!2153 = !DILocation(line: 255, column: 2, scope: !1558)
!2154 = !DILocation(line: 256, column: 1, scope: !1558)
!2155 = !DILocation(line: 256, column: 1, scope: !2156)
!2156 = !DILexicalBlockFile(scope: !1558, file: !351, discriminator: 1)
!2157 = distinct !DISubprogram(name: "create_server_setup", scope: !351, file: !351, line: 84, type: !2158, isLocal: true, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !354)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!486, !414}
!2160 = !DILocalVariable(name: "optlist", arg: 1, scope: !2157, file: !351, line: 84, type: !414)
!2161 = !DILocation(line: 84, column: 58, scope: !2157)
!2162 = !DILocalVariable(name: "rec", scope: !2157, file: !351, line: 86, type: !2163)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64, align: 64)
!2164 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAT_PROTOCOL_REC", file: !488, line: 105, baseType: !2165)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHAT_PROTOCOL_REC", file: !2166, line: 4, size: 832, align: 64, elements: !2167)
!2166 = !DIFile(filename: "../../../src/core/chat-protocols.h", directory: "/home/lichi/Desktop/irssi/task1")
!2167 = !{!2168, !2169, !2170, !2171, !2172, !2173, !2174, !2194, !2198, !2205, !2209, !2213, !2217, !2219, !2223}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2165, file: !2166, line: 5, baseType: !494, size: 32, align: 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "not_initialized", scope: !2165, file: !2166, line: 7, baseType: !542, size: 1, align: 32, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "case_insensitive", scope: !2165, file: !2166, line: 8, baseType: !542, size: 1, align: 32, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2165, file: !2166, line: 10, baseType: !420, size: 64, align: 64, offset: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "fullname", scope: !2165, file: !2166, line: 11, baseType: !420, size: 64, align: 64, offset: 128)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !2165, file: !2166, line: 12, baseType: !420, size: 64, align: 64, offset: 192)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "create_chatnet", scope: !2165, file: !2166, line: 14, baseType: !2175, size: 64, align: 64, offset: 256)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64, align: 64)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!2178}
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64, align: 64)
!2179 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHATNET_REC", file: !488, line: 106, baseType: !2180)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHATNET_REC", file: !2181, line: 13, size: 576, align: 64, elements: !2182)
!2181 = !DIFile(filename: "../../../src/core/chatnets.h", directory: "/home/lichi/Desktop/irssi/task1")
!2182 = !{!2183, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2180, file: !2184, line: 1, baseType: !494, size: 32, align: 32)
!2184 = !DIFile(filename: "../../../src/core/chatnet-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !2180, file: !2184, line: 2, baseType: !494, size: 32, align: 32, offset: 32)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2180, file: !2184, line: 4, baseType: !420, size: 64, align: 64, offset: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !2180, file: !2184, line: 6, baseType: !420, size: 64, align: 64, offset: 128)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !2180, file: !2184, line: 7, baseType: !420, size: 64, align: 64, offset: 192)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !2180, file: !2184, line: 8, baseType: !420, size: 64, align: 64, offset: 256)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "own_host", scope: !2180, file: !2184, line: 10, baseType: !420, size: 64, align: 64, offset: 320)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "autosendcmd", scope: !2180, file: !2184, line: 11, baseType: !420, size: 64, align: 64, offset: 384)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !2180, file: !2184, line: 12, baseType: !514, size: 64, align: 64, offset: 448)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !2180, file: !2184, line: 12, baseType: !514, size: 64, align: 64, offset: 512)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "create_server_setup", scope: !2165, file: !2166, line: 15, baseType: !2195, size: 64, align: 64, offset: 320)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64, align: 64)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!486}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "create_channel_setup", scope: !2165, file: !2166, line: 16, baseType: !2199, size: 64, align: 64, offset: 384)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64, align: 64)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!2202}
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64, align: 64)
!2203 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_SETUP_REC", file: !488, line: 115, baseType: !2204)
!2204 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_SETUP_REC", file: !488, line: 115, flags: DIFlagFwdDecl)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "create_server_connect", scope: !2165, file: !2166, line: 17, baseType: !2206, size: 64, align: 64, offset: 448)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64, align: 64)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!669}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_server_connect", scope: !2165, file: !2166, line: 18, baseType: !2210, size: 64, align: 64, offset: 512)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64, align: 64)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{null, !669}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "server_init_connect", scope: !2165, file: !2166, line: 20, baseType: !2214, size: 64, align: 64, offset: 576)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64, align: 64)
!2215 = !DISubroutineType(types: !2216)
!2216 = !{!659, !669}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "server_connect", scope: !2165, file: !2166, line: 21, baseType: !2218, size: 64, align: 64, offset: 640)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64, align: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "channel_create", scope: !2165, file: !2166, line: 22, baseType: !2220, size: 64, align: 64, offset: 704)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64, align: 64)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!959, !659, !345, !345, !494}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "query_create", scope: !2165, file: !2166, line: 24, baseType: !2224, size: 64, align: 64, offset: 768)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64, align: 64)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!966, !345, !345, !494}
!2227 = !DILocation(line: 86, column: 21, scope: !2157)
!2228 = !DILocalVariable(name: "server", scope: !2157, file: !351, line: 87, type: !486)
!2229 = !DILocation(line: 87, column: 27, scope: !2157)
!2230 = !DILocalVariable(name: "chatnet", scope: !2157, file: !351, line: 88, type: !420)
!2231 = !DILocation(line: 88, column: 15, scope: !2157)
!2232 = !DILocation(line: 90, column: 31, scope: !2157)
!2233 = !DILocation(line: 90, column: 8, scope: !2157)
!2234 = !DILocation(line: 90, column: 6, scope: !2157)
!2235 = !DILocation(line: 91, column: 6, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2157, file: !351, line: 91, column: 6)
!2237 = !DILocation(line: 91, column: 10, scope: !2236)
!2238 = !DILocation(line: 91, column: 6, scope: !2157)
!2239 = !DILocation(line: 92, column: 23, scope: !2236)
!2240 = !DILocation(line: 92, column: 21, scope: !2236)
!2241 = !DILocation(line: 92, column: 17, scope: !2236)
!2242 = !DILocation(line: 94, column: 33, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2236, file: !351, line: 93, column: 7)
!2244 = !DILocation(line: 94, column: 42, scope: !2243)
!2245 = !DILocation(line: 94, column: 47, scope: !2243)
!2246 = !DILocation(line: 94, column: 13, scope: !2243)
!2247 = !DILocation(line: 94, column: 11, scope: !2243)
!2248 = !DILocation(line: 95, column: 20, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2243, file: !351, line: 95, column: 7)
!2250 = !DILocation(line: 95, column: 7, scope: !2249)
!2251 = !DILocation(line: 95, column: 29, scope: !2249)
!2252 = !DILocation(line: 95, column: 7, scope: !2243)
!2253 = !DILocation(line: 96, column: 49, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2249, file: !351, line: 95, column: 37)
!2255 = !DILocation(line: 96, column: 4, scope: !2254)
!2256 = !DILocation(line: 98, column: 4, scope: !2254)
!2257 = !DILocation(line: 102, column: 18, scope: !2157)
!2258 = !DILocation(line: 102, column: 23, scope: !2157)
!2259 = !DILocation(line: 102, column: 16, scope: !2157)
!2260 = !DILocation(line: 103, column: 29, scope: !2157)
!2261 = !DILocation(line: 103, column: 34, scope: !2157)
!2262 = !DILocation(line: 103, column: 9, scope: !2157)
!2263 = !DILocation(line: 103, column: 17, scope: !2157)
!2264 = !DILocation(line: 103, column: 27, scope: !2157)
!2265 = !DILocation(line: 104, column: 9, scope: !2157)
!2266 = !DILocation(line: 104, column: 2, scope: !2157)
!2267 = !DILocation(line: 105, column: 1, scope: !2157)
