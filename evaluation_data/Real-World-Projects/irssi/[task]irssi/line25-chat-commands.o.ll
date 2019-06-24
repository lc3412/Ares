; ModuleID = './line25-chat-commands.o.i'
source_filename = "./line25-chat-commands.o.i"
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
%struct._NET_SENDBUF_REC = type opaque
%struct._RAWLOG_REC = type { i32, i32, i32, %struct._GSList* }
%struct._GHashTable = type opaque
%struct._GTimeVal = type { i64, i64 }
%struct._CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)* }
%struct._NICK_REC = type opaque
%struct._QUERY_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, i8 }
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, {}*, i8* (%struct._WI_ITEM_REC*)* }
%struct._CHAT_PROTOCOL_REC = type { i32, i8, i8*, i8*, i8*, %struct._CHATNET_REC* ()*, %struct._SERVER_SETUP_REC* ()*, %struct._CHANNEL_SETUP_REC* ()*, %struct._SERVER_CONNECT_REC* ()*, void (%struct._SERVER_CONNECT_REC*)*, %struct._SERVER_REC* (%struct._SERVER_CONNECT_REC*)*, void (%struct._SERVER_REC*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*, i8*, i32)*, %struct._QUERY_REC* (i8*, i8*, i32)* }
%struct._CHATNET_REC = type opaque
%struct._SERVER_SETUP_REC = type { i32, i32, i8*, i16, i8*, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IPADDR*, %struct._IPADDR*, i64, i8, %struct._GHashTable* }
%struct._CHANNEL_SETUP_REC = type opaque
%struct.RECONNECT_REC = type { i32, i64, %struct._SERVER_CONNECT_REC* }

@.str = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"quit_message\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"leaving\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"server connect\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"disconnect\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"foreach\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"foreach server\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"foreach channel\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"foreach query\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"server sendmsg\00", align 1
@.str.15 = private unnamed_addr constant [288 x i8] c"4 6 !! -network ssl +ssl_cert +ssl_pkey +ssl_pass ssl_verify +ssl_cafile +ssl_capath +ssl_ciphers +ssl_pinned_cert +ssl_pinned_pubkey tls +tls_cert +tls_pkey +tls_pass tls_verify +tls_cafile +tls_capath +tls_ciphers +tls_pinned_cert +tls_pinned_pubkey +host noproxy -rawlog noautosendcmd\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"channel nick\00", align 1
@__func__.cmd_server_connect = private unnamed_addr constant [19 x i8] c"cmd_server_connect\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@__func__.get_server_connect = private unnamed_addr constant [19 x i8] c"get_server_connect\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"error command\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"network\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"chat protocol unknown\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"tls\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"ssl\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"tls_cert\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"ssl_cert\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"tls_pkey\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"ssl_pkey\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"tls_pass\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"ssl_pass\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"tls_verify\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"ssl_verify\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"tls_cafile\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"ssl_cafile\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"tls_capath\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"ssl_capath\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"tls_ciphers\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"ssl_ciphers\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"tls_pinned_cert\00", align 1
@.str.41 = private unnamed_addr constant [16 x i8] c"ssl_pinned_cert\00", align 1
@.str.42 = private unnamed_addr constant [18 x i8] c"tls_pinned_pubkey\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"ssl_pinned_pubkey\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"noautosendcmd\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"noproxy\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"rawlog\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.49 = private unnamed_addr constant [19 x i8] c"command disconnect\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"* Changing server\00", align 1
@__func__.find_reconnect_server = private unnamed_addr constant [22 x i8] c"find_reconnect_server\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"addr != NULL\00", align 1
@reconnects = external global %struct._GSList*, align 8
@__func__.cmd_disconnect = private unnamed_addr constant [15 x i8] c"cmd_disconnect\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"server quit\00", align 1
@__func__.cmd_quit = private unnamed_addr constant [9 x i8] c"cmd_quit\00", align 1
@servers = external global %struct._GSList*, align 8
@.str.54 = private unnamed_addr constant [5 x i8] c"* %s\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"gui exit\00", align 1
@__func__.cmd_msg = private unnamed_addr constant [8 x i8] c"cmd_msg\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"WINDOW ITEM TYPE\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"CHANNEL\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"nick\00", align 1
@.str.62 = private unnamed_addr constant [19 x i8] c"message own_public\00", align 1
@.str.63 = private unnamed_addr constant [20 x i8] c"message own_private\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"cmdchars\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"%c%s\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"send command\00", align 1
@channels = external global %struct._GSList*, align 8
@queries = external global %struct._GSList*, align 8

; Function Attrs: nounwind uwtable
define void @chat_commands_init() #0 !dbg !527 {
  call void @settings_add_str_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)), !dbg !530
  call void @command_bind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_server to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !531
  call void @command_bind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*)* @cmd_server_connect to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !532
  call void @command_bind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_connect to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !533
  call void @command_bind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*)* @cmd_disconnect to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !534
  call void @command_bind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_quit to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !535
  call void @command_bind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_msg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !536
  call void @command_bind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_foreach to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !537
  call void @command_bind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*)* @cmd_foreach_server to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !538
  call void @command_bind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_foreach_channel to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !539
  call void @command_bind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_foreach_query to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !540
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*)* @sig_server_sendmsg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !541
  call void @command_set_options_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([288 x i8], [288 x i8]* @.str.15, i32 0, i32 0)), !dbg !542
  call void @command_set_options_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0)), !dbg !543
  ret void, !dbg !544
}

declare void @settings_add_str_module(i8*, i8*, i8*, i8*) #1

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @cmd_server(i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !545 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !548, metadata !549), !dbg !550
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !551, metadata !549), !dbg !552
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !553, metadata !549), !dbg !554
  %7 = load i8*, i8** %4, align 8, !dbg !555
  %8 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !556
  %9 = bitcast %struct._SERVER_REC* %8 to i8*, !dbg !556
  %10 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !557
  %11 = bitcast %struct._WI_ITEM_REC* %10 to i8*, !dbg !557
  call void @command_runsub(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* %7, i8* %9, i8* %11), !dbg !558
  ret void, !dbg !559
}

; Function Attrs: nounwind uwtable
define internal void @cmd_server_connect(i8*, %struct._SERVER_REC*) #0 !dbg !560 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca %struct._SERVER_CONNECT_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !563, metadata !549), !dbg !564
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !565, metadata !549), !dbg !566
  call void @llvm.dbg.declare(metadata %struct._SERVER_CONNECT_REC** %5, metadata !567, metadata !549), !dbg !568
  call void @llvm.dbg.declare(metadata i8** %6, metadata !569, metadata !549), !dbg !570
  call void @llvm.dbg.declare(metadata i32* %7, metadata !571, metadata !549), !dbg !572
  br label %8, !dbg !573, !llvm.loop !574

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %3, align 8, !dbg !575
  %10 = icmp ne i8* %9, null, !dbg !579
  br i1 %10, label %11, label %12, !dbg !575

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !580

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.cmd_server_connect, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0)), !dbg !583
  br label %41, !dbg !586

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !587

; <label>:14:                                     ; preds = %13
  %15 = load i8*, i8** %3, align 8, !dbg !589
  %16 = call %struct._SERVER_CONNECT_REC* @get_server_connect(i8* %15, i32* %7, i8** %6), !dbg !590
  store %struct._SERVER_CONNECT_REC* %16, %struct._SERVER_CONNECT_REC** %5, align 8, !dbg !591
  %17 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %5, align 8, !dbg !592
  %18 = icmp ne %struct._SERVER_CONNECT_REC* %17, null, !dbg !594
  br i1 %18, label %19, label %41, !dbg !595

; <label>:19:                                     ; preds = %14
  %20 = load i32, i32* %7, align 4, !dbg !596
  %21 = icmp ne i32 %20, 0, !dbg !596
  br i1 %21, label %25, label %22, !dbg !599

; <label>:22:                                     ; preds = %19
  %23 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %5, align 8, !dbg !600
  %24 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !601
  call void @update_reconnection(%struct._SERVER_CONNECT_REC* %23, %struct._SERVER_REC* %24), !dbg !602
  br label %25, !dbg !602

; <label>:25:                                     ; preds = %22, %19
  %26 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %5, align 8, !dbg !603
  %27 = call %struct._SERVER_REC* @server_connect(%struct._SERVER_CONNECT_REC* %26), !dbg !604
  store %struct._SERVER_REC* %27, %struct._SERVER_REC** %4, align 8, !dbg !605
  %28 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %5, align 8, !dbg !606
  call void @server_connect_unref(%struct._SERVER_CONNECT_REC* %28), !dbg !607
  %29 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !608
  %30 = icmp ne %struct._SERVER_REC* %29, null, !dbg !610
  br i1 %30, label %31, label %39, !dbg !611

; <label>:31:                                     ; preds = %25
  %32 = load i8*, i8** %6, align 8, !dbg !612
  %33 = icmp ne i8* %32, null, !dbg !614
  br i1 %33, label %34, label %39, !dbg !615

; <label>:34:                                     ; preds = %31
  %35 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !616
  %36 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %35, i32 0, i32 14, !dbg !617
  %37 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %36, align 8, !dbg !617
  %38 = load i8*, i8** %6, align 8, !dbg !618
  call void @rawlog_open(%struct._RAWLOG_REC* %37, i8* %38), !dbg !619
  br label %39, !dbg !619

; <label>:39:                                     ; preds = %34, %31, %25
  %40 = load i8*, i8** %6, align 8, !dbg !620
  call void @g_free(i8* %40), !dbg !621
  br label %41, !dbg !622

; <label>:41:                                     ; preds = %12, %39, %14
  ret void, !dbg !623
}

; Function Attrs: nounwind uwtable
define internal void @cmd_connect(i8*) #0 !dbg !624 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._SERVER_CONNECT_REC*, align 8
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !627, metadata !549), !dbg !628
  call void @llvm.dbg.declare(metadata %struct._SERVER_CONNECT_REC** %3, metadata !629, metadata !549), !dbg !630
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !631, metadata !549), !dbg !632
  call void @llvm.dbg.declare(metadata i8** %5, metadata !633, metadata !549), !dbg !634
  %6 = load i8*, i8** %2, align 8, !dbg !635
  %7 = call %struct._SERVER_CONNECT_REC* @get_server_connect(i8* %6, i32* null, i8** %5), !dbg !636
  store %struct._SERVER_CONNECT_REC* %7, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !637
  %8 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !638
  %9 = icmp ne %struct._SERVER_CONNECT_REC* %8, null, !dbg !640
  br i1 %9, label %10, label %26, !dbg !641

; <label>:10:                                     ; preds = %1
  %11 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !642
  %12 = call %struct._SERVER_REC* @server_connect(%struct._SERVER_CONNECT_REC* %11), !dbg !644
  store %struct._SERVER_REC* %12, %struct._SERVER_REC** %4, align 8, !dbg !645
  %13 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !646
  call void @server_connect_unref(%struct._SERVER_CONNECT_REC* %13), !dbg !647
  %14 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !648
  %15 = icmp ne %struct._SERVER_REC* %14, null, !dbg !650
  br i1 %15, label %16, label %24, !dbg !651

; <label>:16:                                     ; preds = %10
  %17 = load i8*, i8** %5, align 8, !dbg !652
  %18 = icmp ne i8* %17, null, !dbg !654
  br i1 %18, label %19, label %24, !dbg !655

; <label>:19:                                     ; preds = %16
  %20 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !656
  %21 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %20, i32 0, i32 14, !dbg !657
  %22 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %21, align 8, !dbg !657
  %23 = load i8*, i8** %5, align 8, !dbg !658
  call void @rawlog_open(%struct._RAWLOG_REC* %22, i8* %23), !dbg !659
  br label %24, !dbg !659

; <label>:24:                                     ; preds = %19, %16, %10
  %25 = load i8*, i8** %5, align 8, !dbg !660
  call void @g_free(i8* %25), !dbg !661
  br label %26, !dbg !662

; <label>:26:                                     ; preds = %24, %1
  ret void, !dbg !663
}

; Function Attrs: nounwind uwtable
define internal void @cmd_disconnect(i8*, %struct._SERVER_REC*) #0 !dbg !664 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !665, metadata !549), !dbg !666
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !667, metadata !549), !dbg !668
  call void @llvm.dbg.declare(metadata i8** %5, metadata !669, metadata !549), !dbg !670
  call void @llvm.dbg.declare(metadata i8** %6, metadata !671, metadata !549), !dbg !672
  call void @llvm.dbg.declare(metadata i8** %7, metadata !673, metadata !549), !dbg !674
  br label %8, !dbg !675, !llvm.loop !676

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %3, align 8, !dbg !677
  %10 = icmp ne i8* %9, null, !dbg !681
  br i1 %10, label %11, label %12, !dbg !677

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !682

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.cmd_disconnect, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0)), !dbg !685
  br label %60, !dbg !688

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !689

; <label>:14:                                     ; preds = %13
  %15 = load i8*, i8** %3, align 8, !dbg !691
  %16 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %15, i8** %7, i32 8194, i8** %5, i8** %6), !dbg !693
  %17 = icmp ne i32 %16, 0, !dbg !693
  br i1 %17, label %19, label %18, !dbg !694

; <label>:18:                                     ; preds = %14
  br label %60, !dbg !695

; <label>:19:                                     ; preds = %14
  %20 = load i8*, i8** %5, align 8, !dbg !696
  %21 = load i8, i8* %20, align 1, !dbg !698
  %22 = sext i8 %21 to i32, !dbg !698
  %23 = icmp ne i32 %22, 0, !dbg !699
  br i1 %23, label %24, label %37, !dbg !700

; <label>:24:                                     ; preds = %19
  %25 = load i8*, i8** %5, align 8, !dbg !701
  %26 = call i32 @g_strcmp0(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0)), !dbg !703
  %27 = icmp ne i32 %26, 0, !dbg !704
  br i1 %27, label %28, label %37, !dbg !705

; <label>:28:                                     ; preds = %24
  %29 = load i8*, i8** %5, align 8, !dbg !706
  %30 = call %struct._SERVER_REC* @server_find_tag(i8* %29), !dbg !708
  store %struct._SERVER_REC* %30, %struct._SERVER_REC** %4, align 8, !dbg !709
  %31 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !710
  %32 = icmp eq %struct._SERVER_REC* %31, null, !dbg !712
  br i1 %32, label %33, label %36, !dbg !713

; <label>:33:                                     ; preds = %28
  %34 = load i8*, i8** %5, align 8, !dbg !714
  %35 = call %struct._SERVER_REC* @server_find_lookup_tag(i8* %34), !dbg !715
  store %struct._SERVER_REC* %35, %struct._SERVER_REC** %4, align 8, !dbg !716
  br label %36, !dbg !717

; <label>:36:                                     ; preds = %33, %28
  br label %37, !dbg !718

; <label>:37:                                     ; preds = %36, %24, %19
  %38 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !719
  %39 = icmp eq %struct._SERVER_REC* %38, null, !dbg !721
  br i1 %39, label %40, label %47, !dbg !722

; <label>:40:                                     ; preds = %37
  br label %41, !dbg !723, !llvm.loop !725

; <label>:41:                                     ; preds = %40
  %42 = load i8*, i8** %7, align 8, !dbg !727
  call void @cmd_params_free(i8* %42), !dbg !730
  br label %43, !dbg !731, !llvm.loop !732

; <label>:43:                                     ; preds = %41
  %44 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !734
  call void @signal_stop(), !dbg !737
  br label %60, !dbg !739
                                                  ; No predecessors!
  br label %46, !dbg !740

; <label>:46:                                     ; preds = %45
  br label %47, !dbg !742

; <label>:47:                                     ; preds = %46, %37
  %48 = load i8*, i8** %6, align 8, !dbg !744
  %49 = load i8, i8* %48, align 1, !dbg !746
  %50 = sext i8 %49 to i32, !dbg !746
  %51 = icmp eq i32 %50, 0, !dbg !747
  br i1 %51, label %52, label %54, !dbg !748

; <label>:52:                                     ; preds = %47
  %53 = call i8* @settings_get_str(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)), !dbg !749
  store i8* %53, i8** %6, align 8, !dbg !751
  br label %54, !dbg !752

; <label>:54:                                     ; preds = %52, %47
  %55 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !753
  %56 = load i8*, i8** %6, align 8, !dbg !754
  %57 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i32 0, i32 0), i32 2, %struct._SERVER_REC* %55, i8* %56), !dbg !755
  %58 = load i8*, i8** %7, align 8, !dbg !756
  call void @cmd_params_free(i8* %58), !dbg !757
  %59 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !758
  call void @server_disconnect(%struct._SERVER_REC* %59), !dbg !759
  br label %60, !dbg !760

; <label>:60:                                     ; preds = %54, %43, %18, %12
  ret void, !dbg !761
}

; Function Attrs: nounwind uwtable
define internal void @cmd_quit(i8*) #0 !dbg !763 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !764, metadata !549), !dbg !765
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !766, metadata !549), !dbg !767
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !768, metadata !549), !dbg !769
  call void @llvm.dbg.declare(metadata i8** %5, metadata !770, metadata !549), !dbg !771
  call void @llvm.dbg.declare(metadata i8** %6, metadata !772, metadata !549), !dbg !773
  br label %7, !dbg !774, !llvm.loop !775

; <label>:7:                                      ; preds = %1
  %8 = load i8*, i8** %2, align 8, !dbg !776
  %9 = icmp ne i8* %8, null, !dbg !780
  br i1 %9, label %10, label %11, !dbg !776

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !781

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.cmd_quit, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0)), !dbg !784
  br label %44, !dbg !787

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !788

; <label>:13:                                     ; preds = %12
  %14 = load i8*, i8** %2, align 8, !dbg !790
  %15 = load i8, i8* %14, align 1, !dbg !791
  %16 = sext i8 %15 to i32, !dbg !791
  %17 = icmp ne i32 %16, 0, !dbg !792
  br i1 %17, label %18, label %20, !dbg !791

; <label>:18:                                     ; preds = %13
  %19 = load i8*, i8** %2, align 8, !dbg !793
  br label %22, !dbg !795

; <label>:20:                                     ; preds = %13
  %21 = call i8* @settings_get_str(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)), !dbg !796
  br label %22, !dbg !797

; <label>:22:                                     ; preds = %20, %18
  %23 = phi i8* [ %19, %18 ], [ %21, %20 ], !dbg !799
  store i8* %23, i8** %5, align 8, !dbg !801
  %24 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !802
  store %struct._GSList* %24, %struct._GSList** %3, align 8, !dbg !804
  br label %25, !dbg !805

; <label>:25:                                     ; preds = %40, %22
  %26 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !806
  %27 = icmp ne %struct._GSList* %26, null, !dbg !809
  br i1 %27, label %28, label %42, !dbg !810

; <label>:28:                                     ; preds = %25
  %29 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !811
  %30 = getelementptr inbounds %struct._GSList, %struct._GSList* %29, i32 0, i32 1, !dbg !813
  %31 = load %struct._GSList*, %struct._GSList** %30, align 8, !dbg !813
  store %struct._GSList* %31, %struct._GSList** %4, align 8, !dbg !814
  %32 = load i8*, i8** %5, align 8, !dbg !815
  %33 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i8* %32), !dbg !816
  store i8* %33, i8** %6, align 8, !dbg !817
  %34 = load i8*, i8** %6, align 8, !dbg !818
  %35 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !819
  %36 = getelementptr inbounds %struct._GSList, %struct._GSList* %35, i32 0, i32 0, !dbg !820
  %37 = load i8*, i8** %36, align 8, !dbg !820
  %38 = bitcast i8* %37 to %struct._SERVER_REC*, !dbg !819
  call void @cmd_disconnect(i8* %34, %struct._SERVER_REC* %38), !dbg !821
  %39 = load i8*, i8** %6, align 8, !dbg !822
  call void @g_free(i8* %39), !dbg !823
  br label %40, !dbg !824

; <label>:40:                                     ; preds = %28
  %41 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !825
  store %struct._GSList* %41, %struct._GSList** %3, align 8, !dbg !827
  br label %25, !dbg !828, !llvm.loop !829

; <label>:42:                                     ; preds = %25
  %43 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), i32 0), !dbg !831
  br label %44, !dbg !832

; <label>:44:                                     ; preds = %42, %11
  ret void, !dbg !833
}

; Function Attrs: nounwind uwtable
define internal void @cmd_msg(i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !834 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca %struct._GHashTable*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca [2 x i8*], align 16
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !835, metadata !549), !dbg !836
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !837, metadata !549), !dbg !838
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !839, metadata !549), !dbg !840
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %7, metadata !841, metadata !549), !dbg !842
  call void @llvm.dbg.declare(metadata i8** %8, metadata !843, metadata !549), !dbg !844
  call void @llvm.dbg.declare(metadata i8** %9, metadata !845, metadata !549), !dbg !846
  call void @llvm.dbg.declare(metadata i8** %10, metadata !847, metadata !549), !dbg !848
  call void @llvm.dbg.declare(metadata i8** %11, metadata !849, metadata !549), !dbg !850
  call void @llvm.dbg.declare(metadata i32* %12, metadata !851, metadata !549), !dbg !852
  call void @llvm.dbg.declare(metadata i32* %13, metadata !853, metadata !549), !dbg !854
  store i32 1, i32* %13, align 4, !dbg !854
  br label %19, !dbg !855, !llvm.loop !856

; <label>:19:                                     ; preds = %3
  %20 = load i8*, i8** %4, align 8, !dbg !857
  %21 = icmp ne i8* %20, null, !dbg !861
  br i1 %21, label %22, label %23, !dbg !857

; <label>:22:                                     ; preds = %19
  br label %24, !dbg !862

; <label>:23:                                     ; preds = %19
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.cmd_msg, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0)), !dbg !865
  br label %212, !dbg !868

; <label>:24:                                     ; preds = %22
  br label %25, !dbg !869

; <label>:25:                                     ; preds = %24
  %26 = load i8*, i8** %4, align 8, !dbg !871
  %27 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %26, i8** %11, i32 57346, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), %struct._GHashTable** %7, i8** %8, i8** %10), !dbg !873
  %28 = icmp ne i32 %27, 0, !dbg !873
  br i1 %28, label %30, label %29, !dbg !874

; <label>:29:                                     ; preds = %25
  br label %212, !dbg !875

; <label>:30:                                     ; preds = %25
  %31 = load i8*, i8** %8, align 8, !dbg !876
  %32 = load i8, i8* %31, align 1, !dbg !878
  %33 = sext i8 %32 to i32, !dbg !878
  %34 = icmp eq i32 %33, 0, !dbg !879
  br i1 %34, label %40, label %35, !dbg !880

; <label>:35:                                     ; preds = %30
  %36 = load i8*, i8** %10, align 8, !dbg !881
  %37 = load i8, i8* %36, align 1, !dbg !883
  %38 = sext i8 %37 to i32, !dbg !883
  %39 = icmp eq i32 %38, 0, !dbg !884
  br i1 %39, label %40, label %47, !dbg !885

; <label>:40:                                     ; preds = %35, %30
  br label %41, !dbg !886, !llvm.loop !888

; <label>:41:                                     ; preds = %40
  %42 = load i8*, i8** %11, align 8, !dbg !890
  call void @cmd_params_free(i8* %42), !dbg !893
  br label %43, !dbg !894, !llvm.loop !895

; <label>:43:                                     ; preds = %41
  %44 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !897
  call void @signal_stop(), !dbg !900
  br label %212, !dbg !902
                                                  ; No predecessors!
  br label %46, !dbg !903

; <label>:46:                                     ; preds = %45
  br label %47, !dbg !905

; <label>:47:                                     ; preds = %46, %35
  %48 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !907
  %49 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !908
  %50 = call %struct._SERVER_REC* @cmd_options_get_server(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), %struct._GHashTable* %48, %struct._SERVER_REC* %49), !dbg !909
  store %struct._SERVER_REC* %50, %struct._SERVER_REC** %5, align 8, !dbg !910
  %51 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !911
  %52 = icmp eq %struct._SERVER_REC* %51, null, !dbg !913
  br i1 %52, label %60, label %53, !dbg !914

; <label>:53:                                     ; preds = %47
  %54 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !915
  %55 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %54, i32 0, i32 8, !dbg !917
  %56 = load i8, i8* %55, align 8, !dbg !917
  %57 = and i8 %56, 1, !dbg !917
  %58 = zext i8 %57 to i32, !dbg !917
  %59 = icmp ne i32 %58, 0, !dbg !915
  br i1 %59, label %67, label %60, !dbg !918

; <label>:60:                                     ; preds = %53, %47
  br label %61, !dbg !919, !llvm.loop !920

; <label>:61:                                     ; preds = %60
  %62 = load i8*, i8** %11, align 8, !dbg !921
  call void @cmd_params_free(i8* %62), !dbg !924
  br label %63, !dbg !925, !llvm.loop !926

; <label>:63:                                     ; preds = %61
  %64 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !928
  call void @signal_stop(), !dbg !931
  br label %212, !dbg !933
                                                  ; No predecessors!
  br label %66, !dbg !934

; <label>:66:                                     ; preds = %65
  br label %67, !dbg !936

; <label>:67:                                     ; preds = %66, %53
  %68 = load i8*, i8** %8, align 8, !dbg !938
  store i8* %68, i8** %9, align 8, !dbg !939
  store i32 0, i32* %12, align 4, !dbg !940
  %69 = load i8*, i8** %8, align 8, !dbg !941
  %70 = call i32 @g_strcmp0(i8* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0)), !dbg !943
  %71 = icmp eq i32 %70, 0, !dbg !944
  br i1 %71, label %76, label %72, !dbg !945

; <label>:72:                                     ; preds = %67
  %73 = load i8*, i8** %8, align 8, !dbg !946
  %74 = call i32 @g_strcmp0(i8* %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i32 0, i32 0)), !dbg !948
  %75 = icmp eq i32 %74, 0, !dbg !949
  br i1 %75, label %76, label %95, !dbg !950

; <label>:76:                                     ; preds = %72, %67
  %77 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !951
  %78 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !953
  %79 = bitcast %struct._WI_ITEM_REC* %78 to i8*, !dbg !953
  %80 = call i8* @parse_special(i8** %8, %struct._SERVER_REC* %77, i8* %79, i8** null, i32* %12, i32* null, i32 0), !dbg !954
  store i8* %80, i8** %8, align 8, !dbg !955
  %81 = load i8*, i8** %8, align 8, !dbg !956
  %82 = icmp ne i8* %81, null, !dbg !958
  br i1 %82, label %83, label %94, !dbg !959

; <label>:83:                                     ; preds = %76
  %84 = load i8*, i8** %8, align 8, !dbg !960
  %85 = load i8, i8* %84, align 1, !dbg !962
  %86 = sext i8 %85 to i32, !dbg !962
  %87 = icmp eq i32 %86, 0, !dbg !963
  br i1 %87, label %88, label %94, !dbg !964

; <label>:88:                                     ; preds = %83
  %89 = load i32, i32* %12, align 4, !dbg !965
  %90 = icmp ne i32 %89, 0, !dbg !965
  br i1 %90, label %91, label %93, !dbg !968

; <label>:91:                                     ; preds = %88
  %92 = load i8*, i8** %8, align 8, !dbg !969
  call void @g_free(i8* %92), !dbg !970
  br label %93, !dbg !970

; <label>:93:                                     ; preds = %91, %88
  store i8* null, i8** %8, align 8, !dbg !971
  store i32 0, i32* %12, align 4, !dbg !972
  br label %94, !dbg !973

; <label>:94:                                     ; preds = %93, %83, %76
  br label %95, !dbg !974

; <label>:95:                                     ; preds = %94, %72
  %96 = load i8*, i8** %8, align 8, !dbg !975
  %97 = icmp ne i8* %96, null, !dbg !977
  br i1 %97, label %98, label %148, !dbg !978

; <label>:98:                                     ; preds = %95
  %99 = load i8*, i8** %8, align 8, !dbg !979
  %100 = call i32 @g_strcmp0(i8* %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0)), !dbg !982
  %101 = icmp eq i32 %100, 0, !dbg !983
  br i1 %101, label %102, label %126, !dbg !984

; <label>:102:                                    ; preds = %98
  %103 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !985
  %104 = icmp eq %struct._WI_ITEM_REC* %103, null, !dbg !988
  br i1 %104, label %105, label %112, !dbg !989

; <label>:105:                                    ; preds = %102
  br label %106, !dbg !990, !llvm.loop !991

; <label>:106:                                    ; preds = %105
  %107 = load i8*, i8** %11, align 8, !dbg !992
  call void @cmd_params_free(i8* %107), !dbg !995
  br label %108, !dbg !996, !llvm.loop !997

; <label>:108:                                    ; preds = %106
  %109 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i32 1, i8* inttoptr (i64 5 to i8*)), !dbg !999
  call void @signal_stop(), !dbg !1002
  br label %212, !dbg !1004
                                                  ; No predecessors!
  br label %111, !dbg !1005

; <label>:111:                                    ; preds = %110
  br label %112, !dbg !1007

; <label>:112:                                    ; preds = %111, %102
  %113 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1009
  %114 = bitcast %struct._WI_ITEM_REC* %113 to i8*, !dbg !1009
  %115 = call i8* @module_check_cast_module(i8* %114, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0)), !dbg !1010
  %116 = bitcast i8* %115 to %struct._CHANNEL_REC*, !dbg !1011
  %117 = icmp ne %struct._CHANNEL_REC* %116, null, !dbg !1012
  %118 = select i1 %117, i32 1, i32 0, !dbg !1012
  %119 = icmp ne i32 %118, 0, !dbg !1013
  %120 = select i1 %119, i32 0, i32 1, !dbg !1013
  store i32 %120, i32* %13, align 4, !dbg !1014
  %121 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1015
  %122 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %121, i32 0, i32 11, !dbg !1016
  %123 = load i8* (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)** %122, align 8, !dbg !1016
  %124 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1017
  %125 = call i8* %123(%struct._WI_ITEM_REC* %124), !dbg !1018
  store i8* %125, i8** %8, align 8, !dbg !1019
  br label %147, !dbg !1020

; <label>:126:                                    ; preds = %98
  %127 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !1021
  %128 = call i8* @g_hash_table_lookup(%struct._GHashTable* %127, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0)), !dbg !1024
  %129 = icmp ne i8* %128, null, !dbg !1025
  br i1 %129, label %130, label %131, !dbg !1024

; <label>:130:                                    ; preds = %126
  store i32 0, i32* %13, align 4, !dbg !1026
  br label %146, !dbg !1027

; <label>:131:                                    ; preds = %126
  %132 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !1028
  %133 = call i8* @g_hash_table_lookup(%struct._GHashTable* %132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0)), !dbg !1030
  %134 = icmp ne i8* %133, null, !dbg !1031
  br i1 %134, label %135, label %136, !dbg !1032

; <label>:135:                                    ; preds = %131
  store i32 1, i32* %13, align 4, !dbg !1033
  br label %145, !dbg !1034

; <label>:136:                                    ; preds = %131
  %137 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1035
  %138 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %137, i32 0, i32 27, !dbg !1037
  %139 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %138, align 8, !dbg !1037
  %140 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1038
  %141 = load i8*, i8** %8, align 8, !dbg !1039
  %142 = call i32 %139(%struct._SERVER_REC* %140, i8* %141), !dbg !1040
  %143 = icmp ne i32 %142, 0, !dbg !1041
  %144 = select i1 %143, i32 0, i32 1, !dbg !1041
  store i32 %144, i32* %13, align 4, !dbg !1042
  br label %145

; <label>:145:                                    ; preds = %136, %135
  br label %146

; <label>:146:                                    ; preds = %145, %130
  br label %147

; <label>:147:                                    ; preds = %146, %112
  br label %148, !dbg !1043

; <label>:148:                                    ; preds = %147, %95
  %149 = load i8*, i8** %8, align 8, !dbg !1044
  %150 = icmp ne i8* %149, null, !dbg !1046
  br i1 %150, label %151, label %196, !dbg !1047

; <label>:151:                                    ; preds = %148
  call void @llvm.dbg.declare(metadata i8*** %14, metadata !1048, metadata !549), !dbg !1050
  call void @llvm.dbg.declare(metadata i8*** %15, metadata !1051, metadata !549), !dbg !1052
  store i8** null, i8*** %15, align 8, !dbg !1052
  call void @llvm.dbg.declare(metadata [2 x i8*]* %16, metadata !1053, metadata !549), !dbg !1055
  %152 = getelementptr inbounds [2 x i8*], [2 x i8*]* %16, i64 0, i64 0, !dbg !1056
  %153 = load i8*, i8** %10, align 8, !dbg !1057
  store i8* %153, i8** %152, align 8, !dbg !1056
  %154 = getelementptr inbounds i8*, i8** %152, i64 1, !dbg !1056
  store i8* null, i8** %154, align 8, !dbg !1056
  call void @llvm.dbg.declare(metadata i8** %17, metadata !1058, metadata !549), !dbg !1059
  call void @llvm.dbg.declare(metadata i32* %18, metadata !1060, metadata !549), !dbg !1061
  store i32 0, i32* %18, align 4, !dbg !1061
  %155 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1062
  %156 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %155, i32 0, i32 30, !dbg !1064
  %157 = load i8** (%struct._SERVER_REC*, i8*, i8*)*, i8** (%struct._SERVER_REC*, i8*, i8*)** %156, align 8, !dbg !1064
  %158 = icmp ne i8** (%struct._SERVER_REC*, i8*, i8*)* %157, null, !dbg !1065
  br i1 %158, label %159, label %167, !dbg !1066

; <label>:159:                                    ; preds = %151
  %160 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1067
  %161 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %160, i32 0, i32 30, !dbg !1068
  %162 = load i8** (%struct._SERVER_REC*, i8*, i8*)*, i8** (%struct._SERVER_REC*, i8*, i8*)** %161, align 8, !dbg !1068
  %163 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1069
  %164 = load i8*, i8** %8, align 8, !dbg !1070
  %165 = load i8*, i8** %10, align 8, !dbg !1071
  %166 = call i8** %162(%struct._SERVER_REC* %163, i8* %164, i8* %165), !dbg !1067
  store i8** %166, i8*** %15, align 8, !dbg !1072
  store i8** %166, i8*** %14, align 8, !dbg !1073
  br label %169, !dbg !1074

; <label>:167:                                    ; preds = %151
  %168 = getelementptr inbounds [2 x i8*], [2 x i8*]* %16, i32 0, i32 0, !dbg !1075
  store i8** %168, i8*** %14, align 8, !dbg !1076
  br label %169

; <label>:169:                                    ; preds = %167, %159
  br label %170, !dbg !1077

; <label>:170:                                    ; preds = %178, %169
  %171 = load i32, i32* %18, align 4, !dbg !1078
  %172 = add nsw i32 %171, 1, !dbg !1078
  store i32 %172, i32* %18, align 4, !dbg !1078
  %173 = sext i32 %171 to i64, !dbg !1080
  %174 = load i8**, i8*** %14, align 8, !dbg !1080
  %175 = getelementptr inbounds i8*, i8** %174, i64 %173, !dbg !1080
  %176 = load i8*, i8** %175, align 8, !dbg !1080
  store i8* %176, i8** %17, align 8, !dbg !1081
  %177 = icmp ne i8* %176, null, !dbg !1082
  br i1 %177, label %178, label %194, !dbg !1082

; <label>:178:                                    ; preds = %170
  %179 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1083
  %180 = load i8*, i8** %8, align 8, !dbg !1085
  %181 = load i8*, i8** %17, align 8, !dbg !1086
  %182 = load i32, i32* %13, align 4, !dbg !1087
  %183 = sext i32 %182 to i64, !dbg !1088
  %184 = inttoptr i64 %183 to i8*, !dbg !1089
  %185 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 4, %struct._SERVER_REC* %179, i8* %180, i8* %181, i8* %184), !dbg !1090
  %186 = load i32, i32* %13, align 4, !dbg !1091
  %187 = icmp eq i32 %186, 0, !dbg !1092
  %188 = select i1 %187, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i32 0, i32 0), !dbg !1091
  %189 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1093
  %190 = load i8*, i8** %17, align 8, !dbg !1094
  %191 = load i8*, i8** %8, align 8, !dbg !1095
  %192 = load i8*, i8** %9, align 8, !dbg !1096
  %193 = call i32 (i8*, i32, ...) @signal_emit(i8* %188, i32 4, %struct._SERVER_REC* %189, i8* %190, i8* %191, i8* %192), !dbg !1097
  br label %170, !dbg !1098, !llvm.loop !1100

; <label>:194:                                    ; preds = %170
  %195 = load i8**, i8*** %15, align 8, !dbg !1101
  call void @g_strfreev(i8** %195), !dbg !1102
  br label %202, !dbg !1103

; <label>:196:                                    ; preds = %148
  %197 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1104
  %198 = load i8*, i8** %10, align 8, !dbg !1106
  %199 = load i8*, i8** %8, align 8, !dbg !1107
  %200 = load i8*, i8** %9, align 8, !dbg !1108
  %201 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.63, i32 0, i32 0), i32 4, %struct._SERVER_REC* %197, i8* %198, i8* %199, i8* %200), !dbg !1109
  br label %202

; <label>:202:                                    ; preds = %196, %194
  %203 = load i32, i32* %12, align 4, !dbg !1110
  %204 = icmp ne i32 %203, 0, !dbg !1110
  br i1 %204, label %205, label %210, !dbg !1112

; <label>:205:                                    ; preds = %202
  %206 = load i8*, i8** %8, align 8, !dbg !1113
  %207 = icmp ne i8* %206, null, !dbg !1115
  br i1 %207, label %208, label %210, !dbg !1116

; <label>:208:                                    ; preds = %205
  %209 = load i8*, i8** %8, align 8, !dbg !1117
  call void @g_free(i8* %209), !dbg !1119
  br label %210, !dbg !1119

; <label>:210:                                    ; preds = %208, %205, %202
  %211 = load i8*, i8** %11, align 8, !dbg !1120
  call void @cmd_params_free(i8* %211), !dbg !1121
  br label %212, !dbg !1122

; <label>:212:                                    ; preds = %210, %108, %63, %43, %29, %23
  ret void, !dbg !1123
}

; Function Attrs: nounwind uwtable
define internal void @cmd_foreach(i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !1125 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1126, metadata !549), !dbg !1127
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !1128, metadata !549), !dbg !1129
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !1130, metadata !549), !dbg !1131
  %7 = load i8*, i8** %4, align 8, !dbg !1132
  %8 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1133
  %9 = bitcast %struct._SERVER_REC* %8 to i8*, !dbg !1133
  %10 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1134
  %11 = bitcast %struct._WI_ITEM_REC* %10 to i8*, !dbg !1134
  call void @command_runsub(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* %7, i8* %9, i8* %11), !dbg !1135
  ret void, !dbg !1136
}

; Function Attrs: nounwind uwtable
define internal void @cmd_foreach_server(i8*, %struct._SERVER_REC*) #0 !dbg !1137 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1138, metadata !549), !dbg !1139
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1140, metadata !549), !dbg !1141
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !1142, metadata !549), !dbg !1143
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1144, metadata !549), !dbg !1145
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1146, metadata !549), !dbg !1147
  %8 = call i8* @settings_get_str(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i32 0, i32 0)), !dbg !1148
  store i8* %8, i8** %6, align 8, !dbg !1149
  %9 = load i8*, i8** %6, align 8, !dbg !1150
  %10 = load i8*, i8** %3, align 8, !dbg !1151
  %11 = load i8, i8* %10, align 1, !dbg !1152
  %12 = sext i8 %11 to i32, !dbg !1152
  %13 = call i8* @strchr(i8* %9, i32 %12) #4, !dbg !1153
  %14 = icmp ne i8* %13, null, !dbg !1154
  br i1 %14, label %15, label %18, !dbg !1153

; <label>:15:                                     ; preds = %2
  %16 = load i8*, i8** %3, align 8, !dbg !1155
  %17 = call noalias i8* @g_strdup(i8* %16), !dbg !1157
  br label %24, !dbg !1158

; <label>:18:                                     ; preds = %2
  %19 = load i8*, i8** %6, align 8, !dbg !1159
  %20 = load i8, i8* %19, align 1, !dbg !1160
  %21 = sext i8 %20 to i32, !dbg !1160
  %22 = load i8*, i8** %3, align 8, !dbg !1161
  %23 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i32 %21, i8* %22), !dbg !1162
  br label %24, !dbg !1163

; <label>:24:                                     ; preds = %18, %15
  %25 = phi i8* [ %17, %15 ], [ %23, %18 ], !dbg !1165
  store i8* %25, i8** %7, align 8, !dbg !1167
  %26 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !1168
  %27 = call %struct._GSList* @g_slist_copy(%struct._GSList* %26), !dbg !1169
  store %struct._GSList* %27, %struct._GSList** %5, align 8, !dbg !1170
  br label %28, !dbg !1171

; <label>:28:                                     ; preds = %31, %24
  %29 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1172
  %30 = icmp ne %struct._GSList* %29, null, !dbg !1173
  br i1 %30, label %31, label %42, !dbg !1174

; <label>:31:                                     ; preds = %28
  %32 = load i8*, i8** %7, align 8, !dbg !1175
  %33 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1177
  %34 = getelementptr inbounds %struct._GSList, %struct._GSList* %33, i32 0, i32 0, !dbg !1178
  %35 = load i8*, i8** %34, align 8, !dbg !1178
  %36 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.66, i32 0, i32 0), i32 3, i8* %32, i8* %35, i8* null), !dbg !1179
  %37 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1180
  %38 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1181
  %39 = getelementptr inbounds %struct._GSList, %struct._GSList* %38, i32 0, i32 0, !dbg !1182
  %40 = load i8*, i8** %39, align 8, !dbg !1182
  %41 = call %struct._GSList* @g_slist_remove(%struct._GSList* %37, i8* %40), !dbg !1183
  store %struct._GSList* %41, %struct._GSList** %5, align 8, !dbg !1184
  br label %28, !dbg !1185, !llvm.loop !1186

; <label>:42:                                     ; preds = %28
  %43 = load i8*, i8** %7, align 8, !dbg !1187
  call void @g_free(i8* %43), !dbg !1188
  ret void, !dbg !1189
}

; Function Attrs: nounwind uwtable
define internal void @cmd_foreach_channel(i8*) #0 !dbg !1190 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._CHANNEL_REC*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1191, metadata !549), !dbg !1192
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !1193, metadata !549), !dbg !1194
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1195, metadata !549), !dbg !1196
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1197, metadata !549), !dbg !1198
  %7 = call i8* @settings_get_str(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i32 0, i32 0)), !dbg !1199
  store i8* %7, i8** %4, align 8, !dbg !1200
  %8 = load i8*, i8** %4, align 8, !dbg !1201
  %9 = load i8*, i8** %2, align 8, !dbg !1202
  %10 = load i8, i8* %9, align 1, !dbg !1203
  %11 = sext i8 %10 to i32, !dbg !1203
  %12 = call i8* @strchr(i8* %8, i32 %11) #4, !dbg !1204
  %13 = icmp ne i8* %12, null, !dbg !1205
  br i1 %13, label %14, label %17, !dbg !1204

; <label>:14:                                     ; preds = %1
  %15 = load i8*, i8** %2, align 8, !dbg !1206
  %16 = call noalias i8* @g_strdup(i8* %15), !dbg !1208
  br label %23, !dbg !1209

; <label>:17:                                     ; preds = %1
  %18 = load i8*, i8** %4, align 8, !dbg !1210
  %19 = load i8, i8* %18, align 1, !dbg !1211
  %20 = sext i8 %19 to i32, !dbg !1211
  %21 = load i8*, i8** %2, align 8, !dbg !1212
  %22 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i32 %20, i8* %21), !dbg !1213
  br label %23, !dbg !1214

; <label>:23:                                     ; preds = %17, %14
  %24 = phi i8* [ %16, %14 ], [ %22, %17 ], !dbg !1216
  store i8* %24, i8** %5, align 8, !dbg !1218
  %25 = load %struct._GSList*, %struct._GSList** @channels, align 8, !dbg !1219
  %26 = call %struct._GSList* @g_slist_copy(%struct._GSList* %25), !dbg !1220
  store %struct._GSList* %26, %struct._GSList** %3, align 8, !dbg !1221
  br label %27, !dbg !1222

; <label>:27:                                     ; preds = %30, %23
  %28 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1223
  %29 = icmp ne %struct._GSList* %28, null, !dbg !1224
  br i1 %29, label %30, label %46, !dbg !1225

; <label>:30:                                     ; preds = %27
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %6, metadata !1226, metadata !549), !dbg !1228
  %31 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1229
  %32 = getelementptr inbounds %struct._GSList, %struct._GSList* %31, i32 0, i32 0, !dbg !1230
  %33 = load i8*, i8** %32, align 8, !dbg !1230
  %34 = bitcast i8* %33 to %struct._CHANNEL_REC*, !dbg !1229
  store %struct._CHANNEL_REC* %34, %struct._CHANNEL_REC** %6, align 8, !dbg !1228
  %35 = load i8*, i8** %5, align 8, !dbg !1231
  %36 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %6, align 8, !dbg !1232
  %37 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %36, i32 0, i32 4, !dbg !1233
  %38 = load %struct._SERVER_REC*, %struct._SERVER_REC** %37, align 8, !dbg !1233
  %39 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %6, align 8, !dbg !1234
  %40 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.66, i32 0, i32 0), i32 3, i8* %35, %struct._SERVER_REC* %38, %struct._CHANNEL_REC* %39), !dbg !1235
  %41 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1236
  %42 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1237
  %43 = getelementptr inbounds %struct._GSList, %struct._GSList* %42, i32 0, i32 0, !dbg !1238
  %44 = load i8*, i8** %43, align 8, !dbg !1238
  %45 = call %struct._GSList* @g_slist_remove(%struct._GSList* %41, i8* %44), !dbg !1239
  store %struct._GSList* %45, %struct._GSList** %3, align 8, !dbg !1240
  br label %27, !dbg !1241, !llvm.loop !1242

; <label>:46:                                     ; preds = %27
  %47 = load i8*, i8** %5, align 8, !dbg !1243
  call void @g_free(i8* %47), !dbg !1244
  ret void, !dbg !1245
}

; Function Attrs: nounwind uwtable
define internal void @cmd_foreach_query(i8*) #0 !dbg !1246 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._QUERY_REC*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1247, metadata !549), !dbg !1248
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !1249, metadata !549), !dbg !1250
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1251, metadata !549), !dbg !1252
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1253, metadata !549), !dbg !1254
  %7 = call i8* @settings_get_str(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i32 0, i32 0)), !dbg !1255
  store i8* %7, i8** %4, align 8, !dbg !1256
  %8 = load i8*, i8** %4, align 8, !dbg !1257
  %9 = load i8*, i8** %2, align 8, !dbg !1258
  %10 = load i8, i8* %9, align 1, !dbg !1259
  %11 = sext i8 %10 to i32, !dbg !1259
  %12 = call i8* @strchr(i8* %8, i32 %11) #4, !dbg !1260
  %13 = icmp ne i8* %12, null, !dbg !1261
  br i1 %13, label %14, label %17, !dbg !1260

; <label>:14:                                     ; preds = %1
  %15 = load i8*, i8** %2, align 8, !dbg !1262
  %16 = call noalias i8* @g_strdup(i8* %15), !dbg !1264
  br label %23, !dbg !1265

; <label>:17:                                     ; preds = %1
  %18 = load i8*, i8** %4, align 8, !dbg !1266
  %19 = load i8, i8* %18, align 1, !dbg !1267
  %20 = sext i8 %19 to i32, !dbg !1267
  %21 = load i8*, i8** %2, align 8, !dbg !1268
  %22 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i32 %20, i8* %21), !dbg !1269
  br label %23, !dbg !1270

; <label>:23:                                     ; preds = %17, %14
  %24 = phi i8* [ %16, %14 ], [ %22, %17 ], !dbg !1272
  store i8* %24, i8** %5, align 8, !dbg !1274
  %25 = load %struct._GSList*, %struct._GSList** @queries, align 8, !dbg !1275
  %26 = call %struct._GSList* @g_slist_copy(%struct._GSList* %25), !dbg !1276
  store %struct._GSList* %26, %struct._GSList** %3, align 8, !dbg !1277
  br label %27, !dbg !1278

; <label>:27:                                     ; preds = %30, %23
  %28 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1279
  %29 = icmp ne %struct._GSList* %28, null, !dbg !1280
  br i1 %29, label %30, label %46, !dbg !1281

; <label>:30:                                     ; preds = %27
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %6, metadata !1282, metadata !549), !dbg !1284
  %31 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1285
  %32 = getelementptr inbounds %struct._GSList, %struct._GSList* %31, i32 0, i32 0, !dbg !1286
  %33 = load i8*, i8** %32, align 8, !dbg !1286
  %34 = bitcast i8* %33 to %struct._QUERY_REC*, !dbg !1285
  store %struct._QUERY_REC* %34, %struct._QUERY_REC** %6, align 8, !dbg !1284
  %35 = load i8*, i8** %5, align 8, !dbg !1287
  %36 = load %struct._QUERY_REC*, %struct._QUERY_REC** %6, align 8, !dbg !1288
  %37 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %36, i32 0, i32 4, !dbg !1289
  %38 = load %struct._SERVER_REC*, %struct._SERVER_REC** %37, align 8, !dbg !1289
  %39 = load %struct._QUERY_REC*, %struct._QUERY_REC** %6, align 8, !dbg !1290
  %40 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.66, i32 0, i32 0), i32 3, i8* %35, %struct._SERVER_REC* %38, %struct._QUERY_REC* %39), !dbg !1291
  %41 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1292
  %42 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1293
  %43 = getelementptr inbounds %struct._GSList, %struct._GSList* %42, i32 0, i32 0, !dbg !1294
  %44 = load i8*, i8** %43, align 8, !dbg !1294
  %45 = call %struct._GSList* @g_slist_remove(%struct._GSList* %41, i8* %44), !dbg !1295
  store %struct._GSList* %45, %struct._GSList** %3, align 8, !dbg !1296
  br label %27, !dbg !1297, !llvm.loop !1298

; <label>:46:                                     ; preds = %27
  %47 = load i8*, i8** %5, align 8, !dbg !1299
  call void @g_free(i8* %47), !dbg !1300
  ret void, !dbg !1301
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @sig_server_sendmsg(%struct._SERVER_REC*, i8*, i8*, i8*) #0 !dbg !1302 {
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !1305, metadata !549), !dbg !1306
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1307, metadata !549), !dbg !1308
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1309, metadata !549), !dbg !1310
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1311, metadata !549), !dbg !1312
  %9 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1313
  %10 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %9, i32 0, i32 29, !dbg !1314
  %11 = load void (%struct._SERVER_REC*, i8*, i8*, i32)*, void (%struct._SERVER_REC*, i8*, i8*, i32)** %10, align 8, !dbg !1314
  %12 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1315
  %13 = load i8*, i8** %6, align 8, !dbg !1316
  %14 = load i8*, i8** %7, align 8, !dbg !1317
  %15 = load i8*, i8** %8, align 8, !dbg !1318
  %16 = ptrtoint i8* %15 to i64, !dbg !1319
  %17 = trunc i64 %16 to i32, !dbg !1320
  call void %11(%struct._SERVER_REC* %12, i8* %13, i8* %14, i32 %17), !dbg !1313
  ret void, !dbg !1321
}

declare void @command_set_options_module(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @chat_commands_deinit() #0 !dbg !1322 {
  call void @command_unbind_full(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_server to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1323
  call void @command_unbind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*)* @cmd_server_connect to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1324
  call void @command_unbind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_connect to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1325
  call void @command_unbind_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*)* @cmd_disconnect to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1326
  call void @command_unbind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_quit to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1327
  call void @command_unbind_full(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_msg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1328
  call void @command_unbind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_foreach to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1329
  call void @command_unbind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*)* @cmd_foreach_server to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1330
  call void @command_unbind_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_foreach_channel to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1331
  call void @command_unbind_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_foreach_query to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1332
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*)* @sig_server_sendmsg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1333
  ret void, !dbg !1334
}

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare void @command_runsub(i8*, i8*, i8*, i8*) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._SERVER_CONNECT_REC* @get_server_connect(i8*, i32*, i8**) #0 !dbg !1335 {
  %4 = alloca %struct._SERVER_CONNECT_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct._CHAT_PROTOCOL_REC*, align 8
  %9 = alloca %struct._SERVER_CONNECT_REC*, align 8
  %10 = alloca %struct._GHashTable*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct._IPADDR, align 4
  %20 = alloca %struct._IPADDR, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1339, metadata !549), !dbg !1340
  store i32* %1, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1341, metadata !549), !dbg !1342
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !1343, metadata !549), !dbg !1344
  call void @llvm.dbg.declare(metadata %struct._CHAT_PROTOCOL_REC** %8, metadata !1345, metadata !549), !dbg !1434
  call void @llvm.dbg.declare(metadata %struct._SERVER_CONNECT_REC** %9, metadata !1435, metadata !549), !dbg !1436
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %10, metadata !1437, metadata !549), !dbg !1438
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1439, metadata !549), !dbg !1440
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1441, metadata !549), !dbg !1442
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1443, metadata !549), !dbg !1444
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1445, metadata !549), !dbg !1446
  call void @llvm.dbg.declare(metadata i8** %15, metadata !1447, metadata !549), !dbg !1448
  call void @llvm.dbg.declare(metadata i8** %16, metadata !1449, metadata !549), !dbg !1450
  call void @llvm.dbg.declare(metadata i8** %17, metadata !1451, metadata !549), !dbg !1452
  call void @llvm.dbg.declare(metadata i8** %18, metadata !1453, metadata !549), !dbg !1454
  br label %21, !dbg !1455, !llvm.loop !1456

; <label>:21:                                     ; preds = %3
  %22 = load i8*, i8** %5, align 8, !dbg !1457
  %23 = icmp ne i8* %22, null, !dbg !1461
  br i1 %23, label %24, label %25, !dbg !1457

; <label>:24:                                     ; preds = %21
  br label %26, !dbg !1462

; <label>:25:                                     ; preds = %21
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.get_server_connect, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0)), !dbg !1465
  store %struct._SERVER_CONNECT_REC* null, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1468
  br label %405, !dbg !1468

; <label>:26:                                     ; preds = %24
  br label %27, !dbg !1469

; <label>:27:                                     ; preds = %26
  %28 = load i8*, i8** %5, align 8, !dbg !1471
  %29 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %28, i8** %18, i32 16388, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), %struct._GHashTable** %10, i8** %11, i8** %12, i8** %13, i8** %14), !dbg !1473
  %30 = icmp ne i32 %29, 0, !dbg !1473
  br i1 %30, label %32, label %31, !dbg !1474

; <label>:31:                                     ; preds = %27
  store %struct._SERVER_CONNECT_REC* null, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1475
  br label %405, !dbg !1475

; <label>:32:                                     ; preds = %27
  %33 = load i32*, i32** %6, align 8, !dbg !1476
  %34 = icmp ne i32* %33, null, !dbg !1478
  br i1 %34, label %35, label %42, !dbg !1479

; <label>:35:                                     ; preds = %32
  %36 = load i8*, i8** %11, align 8, !dbg !1480
  %37 = load i8, i8* %36, align 1, !dbg !1482
  %38 = sext i8 %37 to i32, !dbg !1482
  %39 = icmp eq i32 %38, 43, !dbg !1483
  %40 = zext i1 %39 to i32, !dbg !1483
  %41 = load i32*, i32** %6, align 8, !dbg !1484
  store i32 %40, i32* %41, align 4, !dbg !1485
  br label %42, !dbg !1486

; <label>:42:                                     ; preds = %35, %32
  %43 = load i8*, i8** %11, align 8, !dbg !1487
  %44 = load i8, i8* %43, align 1, !dbg !1489
  %45 = sext i8 %44 to i32, !dbg !1489
  %46 = icmp eq i32 %45, 43, !dbg !1490
  br i1 %46, label %47, label %50, !dbg !1491

; <label>:47:                                     ; preds = %42
  %48 = load i8*, i8** %11, align 8, !dbg !1492
  %49 = getelementptr inbounds i8, i8* %48, i32 1, !dbg !1492
  store i8* %49, i8** %11, align 8, !dbg !1492
  br label %50, !dbg !1494

; <label>:50:                                     ; preds = %47, %42
  %51 = load i8*, i8** %11, align 8, !dbg !1495
  %52 = load i8, i8* %51, align 1, !dbg !1497
  %53 = sext i8 %52 to i32, !dbg !1497
  %54 = icmp eq i32 %53, 0, !dbg !1498
  br i1 %54, label %55, label %58, !dbg !1499

; <label>:55:                                     ; preds = %50
  %56 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !1500
  %57 = load i8*, i8** %18, align 8, !dbg !1502
  call void @cmd_params_free(i8* %57), !dbg !1503
  store %struct._SERVER_CONNECT_REC* null, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1504
  br label %405, !dbg !1504

; <label>:58:                                     ; preds = %50
  %59 = load i8*, i8** %13, align 8, !dbg !1505
  %60 = call i32 @g_strcmp0(i8* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0)), !dbg !1507
  %61 = icmp eq i32 %60, 0, !dbg !1508
  br i1 %61, label %62, label %64, !dbg !1509

; <label>:62:                                     ; preds = %58
  %63 = load i8*, i8** %13, align 8, !dbg !1510
  store i8 0, i8* %63, align 1, !dbg !1511
  br label %64, !dbg !1512

; <label>:64:                                     ; preds = %62, %58
  %65 = load %struct._GHashTable*, %struct._GHashTable** %10, align 8, !dbg !1513
  %66 = call %struct._CHAT_PROTOCOL_REC* @chat_protocol_find_net(%struct._GHashTable* %65), !dbg !1514
  store %struct._CHAT_PROTOCOL_REC* %66, %struct._CHAT_PROTOCOL_REC** %8, align 8, !dbg !1515
  %67 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %8, align 8, !dbg !1516
  %68 = icmp eq %struct._CHAT_PROTOCOL_REC* %67, null, !dbg !1517
  br i1 %68, label %69, label %70, !dbg !1516

; <label>:69:                                     ; preds = %64
  br label %76, !dbg !1518

; <label>:70:                                     ; preds = %64
  %71 = load %struct._GHashTable*, %struct._GHashTable** %10, align 8, !dbg !1520
  %72 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %8, align 8, !dbg !1521
  %73 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %72, i32 0, i32 4, !dbg !1522
  %74 = load i8*, i8** %73, align 8, !dbg !1522
  %75 = call i8* @g_hash_table_lookup(%struct._GHashTable* %71, i8* %74), !dbg !1523
  br label %76, !dbg !1524

; <label>:76:                                     ; preds = %70, %69
  %77 = phi i8* [ null, %69 ], [ %75, %70 ], !dbg !1526
  store i8* %77, i8** %15, align 8, !dbg !1528
  %78 = load i8*, i8** %15, align 8, !dbg !1529
  %79 = icmp eq i8* %78, null, !dbg !1531
  br i1 %79, label %80, label %83, !dbg !1532

; <label>:80:                                     ; preds = %76
  %81 = load %struct._GHashTable*, %struct._GHashTable** %10, align 8, !dbg !1533
  %82 = call i8* @g_hash_table_lookup(%struct._GHashTable* %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0)), !dbg !1534
  store i8* %82, i8** %15, align 8, !dbg !1535
  br label %83, !dbg !1536

; <label>:83:                                     ; preds = %80, %76
  %84 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %8, align 8, !dbg !1537
  %85 = icmp ne %struct._CHAT_PROTOCOL_REC* %84, null, !dbg !1538
  br i1 %85, label %86, label %90, !dbg !1537

; <label>:86:                                     ; preds = %83
  %87 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %8, align 8, !dbg !1539
  %88 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %87, i32 0, i32 0, !dbg !1540
  %89 = load i32, i32* %88, align 8, !dbg !1540
  br label %91, !dbg !1541

; <label>:90:                                     ; preds = %83
  br label %91, !dbg !1542

; <label>:91:                                     ; preds = %90, %86
  %92 = phi i32 [ %89, %86 ], [ -1, %90 ], !dbg !1543
  %93 = load i8*, i8** %11, align 8, !dbg !1544
  %94 = load i8*, i8** %12, align 8, !dbg !1545
  %95 = call i32 @atoi(i8* %94) #4, !dbg !1546
  %96 = load i8*, i8** %15, align 8, !dbg !1547
  %97 = load i8*, i8** %13, align 8, !dbg !1548
  %98 = load i8*, i8** %14, align 8, !dbg !1549
  %99 = call %struct._SERVER_CONNECT_REC* @server_create_conn(i32 %92, i8* %93, i32 %95, i8* %96, i8* %97, i8* %98), !dbg !1550
  store %struct._SERVER_CONNECT_REC* %99, %struct._SERVER_CONNECT_REC** %9, align 8, !dbg !1551
  %100 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %9, align 8, !dbg !1552
  %101 = icmp eq %struct._SERVER_CONNECT_REC* %100, null, !dbg !1554
  br i1 %101, label %102, label %105, !dbg !1555

; <label>:102:                                    ; preds = %91
  %103 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i32 1, i8* inttoptr (i64 14 to i8*)), !dbg !1556
  %104 = load i8*, i8** %18, align 8, !dbg !1558
  call void @cmd_params_free(i8* %104), !dbg !1559
  store %struct._SERVER_CONNECT_REC* null, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1560
  br label %405, !dbg !1560

; <label>:105:                                    ; preds = %91
  %106 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %8, align 8, !dbg !1561
  %107 = icmp eq %struct._CHAT_PROTOCOL_REC* %106, null, !dbg !1563
  br i1 %107, label %108, label %113, !dbg !1564

; <label>:108:                                    ; preds = %105
  %109 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %9, align 8, !dbg !1565
  %110 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %109, i32 0, i32 1, !dbg !1566
  %111 = load i32, i32* %110, align 4, !dbg !1566
  %112 = call %struct._CHAT_PROTOCOL_REC* @chat_protocol_find_id(i32 %111), !dbg !1567
  store %struct._CHAT_PROTOCOL_REC* %112, %struct._CHAT_PROTOCOL_REC** %8, align 8, !dbg !1568
  br label %113, !dbg !1569

; <label>:113:                                    ; preds = %108, %105
  %114 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %8, align 8, !dbg !1570
  %115 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %114, i32 0, i32 1, !dbg !1572
  %116 = load i8, i8* %115, align 4, !dbg !1572
  %117 = and i8 %116, 1, !dbg !1572
  %118 = zext i8 %117 to i32, !dbg !1572
  %119 = icmp ne i32 %118, 0, !dbg !1570
  br i1 %119, label %120, label %127, !dbg !1573

; <label>:120:                                    ; preds = %113
  %121 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %8, align 8, !dbg !1574
  %122 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %121, i32 0, i32 2, !dbg !1576
  %123 = load i8*, i8** %122, align 8, !dbg !1576
  %124 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i32 0, i32 0), i32 1, i8* %123), !dbg !1577
  %125 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %9, align 8, !dbg !1578
  call void @server_connect_unref(%struct._SERVER_CONNECT_REC* %125), !dbg !1579
  %126 = load i8*, i8** %18, align 8, !dbg !1580
  call void @cmd_params_free(i8* %126), !dbg !1581
  store %struct._SERVER_CONNECT_REC* null, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1582
  br label %405, !dbg !1582

; <label>:127:                                    ; preds = %113
  %128 = load i8*, i8** %11, align 8, !dbg !1583
  %129 = call i8* @strchr(i8* %128, i32 47) #4, !dbg !1585
  %130 = icmp ne i8* %129, null, !dbg !1586
  br i1 %130, label %131, label %137, !dbg !1587

; <label>:131:                                    ; preds = %127
  %132 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %9, align 8, !dbg !1588
  %133 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %132, i32 0, i32 28, !dbg !1589
  %134 = load i8, i8* %133, align 8, !dbg !1590
  %135 = and i8 %134, -17, !dbg !1590
  %136 = or i8 %135, 16, !dbg !1590
  store i8 %136, i8* %133, align 8, !dbg !1590
  br label %137, !dbg !1588

; <label>:137:                                    ; preds = %131, %127
  %138 = load %struct._GHashTable*, %struct._GHashTable** %10, align 8, !dbg !1591
  %139 = call i8* @g_hash_table_lookup(%struct._GHashTable* %138, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0)), !dbg !1593
  %140 = icmp ne i8* %139, null, !dbg !1594
  br i1 %140, label %141, label %144, !dbg !1595

; <label>:141:                                    ; preds = %137
  %142 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %9, align 8, !dbg !1596
  %143 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %142, i32 0, i32 8, !dbg !1597
  store i16 10, i16* %143, align 8, !dbg !1598
  br label %152, !dbg !1596

; <label>:144:                                    ; preds = %137
  %145 = load %struct._GHashTable*, %struct._GHashTable** %10, align 8, !dbg !1599
  %146 = call i8* @g_hash_table_lookup(%struct._GHashTable* %145, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0)), !dbg !1601
  %147 = icmp ne i8* %146, null, !dbg !1602
  br i1 %147, label %148, label %151, !dbg !1603

; <label>:148:                                    ; preds = %144
  %149 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %9, align 8, !dbg !1604
  %150 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %149, i32 0, i32 8, !dbg !1605
  store i16 2, i16* %150, align 8, !dbg !1606
  br label %151, !dbg !1604

; <label>:151:                                    ; preds = %148, %144
  br label %152

; <label>:152:                                    ; preds = %151, %141
  %153 = load %struct._GHashTable*, %struct._GHashTable** %10, align 8, !dbg !1607
  %154 = call i8* @g_hash_table_lookup(%struct._GHashTable* %153, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0)), !dbg !1609
  %155 = icmp ne i8* %154, null, !dbg !1610
  br i1 %155, label %160, label %156, !dbg !1611

; <label>:156:                                    ; preds = %152
  %157 = load %struct._GHashTable*, %struct._GHashTable** %10, align 8, !dbg !1612
  %158 = call i8* @g_hash_table_lookup(%struct._GHashTable* %157, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0)), !dbg !1614
  %159 = icmp ne i8* %158, null, !dbg !1615
  br i1 %159, label %160, label %166, !dbg !1616

; <label>:160:                                    ; preds = %156, %152
  %161 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %9, align 8, !dbg !1617
  %162 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %161, i32 0, i32 28, !dbg !1618
  %163 = load i8, i8* %162, align 8, !dbg !1619
  %164 = and i8 %163, -33, !dbg !1619
  %165 = or i8 %164, 32, !dbg !1619
  store i8 %165, i8* %162, align 8, !dbg !1619
  br label %166, !dbg !1617

; <label>:166:                                    ; preds = %160, %156
  %167 = load %struct._GHashTable*, %struct._GHashTable** %10, align 8, !dbg !1620
  %168 = call i8* @g_hash_table_lookup(%struct._GHashTable* %167, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0)), !dbg !1622
  store i8* %168, i8** %17, align 8, !dbg !1623
  %169 = icmp ne i8* %168, null, !dbg !1624
  br i1 %169, label %174, label %170, !dbg !1625

; <label>:170:                                    ; preds = %166
  %171 = load %struct._GHashTable*, %struct._GHashTable** %10, align 8, !dbg !1626
  %172 = call i8* @g_hash_table_lookup(%struct._GHashTable* %171, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0)), !dbg !1628
  store i8* %172, i8** %17, align 8, !dbg !1629
  %173 = icmp ne i8* %172, null, !dbg !1630
  br i1 %173, label %174, label %179, !dbg !1631

; <label>:174:                                    ; preds = %170, %166
  %175 = load i8*, i8** %17, align 8, !dbg !1632
  %176 = call noalias i8* @g_strdup(i8* %175), !dbg !1633
  %177 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %9, align 8, !dbg !1634
  %178 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %177, i32 0, i32 19, !dbg !1635
  store i8* %176, i8** %178, align 8, !dbg !1636
  br label %179, !dbg !1634

; <label>:179:                                    ; preds = %174, %170
  %180 = load %struct._GHashTable*, %struct._GHashTable** %10, align 8, !dbg !1637
  %181 = call i8* @g_hash_table_lookup(%struct._GHashTable* %180, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0)), !dbg !1639
  store i8* %181, i8** %17, align 8, !dbg !1640
  %182 = icmp ne i8* %181, null, !dbg !1641
  br i1 %182, label %187, label %183, !dbg !1642

; <label>:183:                                    ; preds = %179
  %184 = load %struct._GHashTable*, %struct._GHashTable** %10, align 8, !dbg !1643
  %185 = call i8* @g_hash_table_lookup(%struct._GHashTable* %184, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0)), !dbg !1645
  store i8* %185, i8** %17, align 8, !dbg !1646
  %186 = icmp ne i8* %185, null, !dbg !1647
  br i1 %186, label %187, label %192, !dbg !1648

; <label>:187:                                    ; preds = %183, %179
  %188 = load i8*, i8** %17, align 8, !dbg !1649
  %189 = call noalias i8* @g_strdup(i8* %188), !dbg !1650
  %190 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %9, align 8, !dbg !1651
  %191 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %190, i32 0, i32 20, !dbg !1652
  store i8* %189, i8** %191, align 8, !dbg !1653
  br label %192, !dbg !1651

; <label>:192:                                    ; preds = %187, %183
  %193 = load %struct._GHashTable*, %struct._GHashTable** %10, align 8, !dbg !1654
  %194 = call i8* @g_hash_table_lookup(%struct._GHashTable* %193, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0)), !dbg !1656
  store i8* %194, i8** %17, align 8, !dbg !1657
  %195 = icmp ne i8* %194, null, !dbg !1658
  br i1 %195, label %200, label %196, !dbg !1659

; <label>:196:                                    ; preds = %192
  %197 = load %struct._GHashTable*, %struct._GHashTable** %10, align 8, !dbg !1660
  %198 = call i8* @g_hash_table_lookup(%struct._GHashTable* %197, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0)), !dbg !1662
  store i8* %198, i8** %17, align 8, !dbg !1663
  %199 = icmp ne i8* %198, null, !dbg !1664
  br i1 %199, label %200, label %205, !dbg !1665

; <label>:200:                                    ; preds = %196, %192
  %201 = load i8*, i8** %17, align 8, !dbg !1666
  %202 = call noalias i8* @g_strdup(i8* %201), !dbg !1667
  %203 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %9, align 8, !dbg !1668
  %204 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %203, i32 0, i32 21, !dbg !1669
  store i8* %202, i8** %204, align 8, !dbg !1670
  br label %205, !dbg !1668

; <label>:205:                                    ; preds = %200, %196
  %206 = load %struct._GHashTable*, %struct._GHashTable** %10, align 8, !dbg !1671
  %207 = call i8* @g_hash_table_lookup(%struct._GHashTable* %206, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0)), !dbg !1673
  %208 = icmp ne i8* %207, null, !dbg !1674
  br i1 %208, label %213, label %209, !dbg !1675

; <label>:209:                                    ; preds = %205
  %210 = load %struct._GHashTable*, %struct._GHashTable** %10, align 8, !dbg !1676
  %211 = call i8* @g_hash_table_lookup(%struct._GHashTable* %210, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0)), !dbg !1678
  %212 = icmp ne i8* %211, null, !dbg !1679
  br i1 %212, label %213, label %219, !dbg !1680

; <label>:213:                                    ; preds = %209, %205
  %214 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %9, align 8, !dbg !1681
  %215 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %214, i32 0, i32 28, !dbg !1682
  %216 = load i8, i8* %215, align 8, !dbg !1683
  %217 = and i8 %216, -65, !dbg !1683
  %218 = or i8 %217, 64, !dbg !1683
  store i8 %218, i8* %215, align 8, !dbg !1683
  br label %219, !dbg !1681

; <label>:219:                                    ; preds = %213, %209
  %220 = load %struct._GHashTable*, %struct._GHashTable** %10, align 8, !dbg !1684
  %221 = call i8* @g_hash_table_lookup(%struct._GHashTable* %220, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0)), !dbg !1686
  store i8* %221, i8** %17, align 8, !dbg !1687
  %222 = icmp ne i8* %221, null, !dbg !1688
  br i1 %222, label %227, label %223, !dbg !1689

; <label>:223:                                    ; preds = %219
  %224 = load %struct._GHashTable*, %struct._GHashTable** %10, align 8, !dbg !1690
  %225 = call i8* @g_hash_table_lookup(%struct._GHashTable* %224, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i32 0, i32 0)), !dbg !1692
  store i8* %225, i8** %17, align 8, !dbg !1693
  %226 = icmp ne i8* %225, null, !dbg !1694
  br i1 %226, label %227, label %232, !dbg !1695

; <label>:227:                                    ; preds = %223, %219
  %228 = load i8*, i8** %17, align 8, !dbg !1696
  %229 = call noalias i8* @g_strdup(i8* %228), !dbg !1697
  %230 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %9, align 8, !dbg !1698
  %231 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %230, i32 0, i32 22, !dbg !1699
  store i8* %229, i8** %231, align 8, !dbg !1700
  br label %232, !dbg !1698

; <label>:232:                                    ; preds = %227, %223
  %233 = load %struct._GHashTable*, %struct._GHashTable** %10, align 8, !dbg !1701
  %234 = call i8* @g_hash_table_lookup(%struct._GHashTable* %233, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0)), !dbg !1703
  store i8* %234, i8** %17, align 8, !dbg !1704
  %235 = icmp ne i8* %234, null, !dbg !1705
  br i1 %235, label %240, label %236, !dbg !1706

; <label>:236:                                    ; preds = %232
  %237 = load %struct._GHashTable*, %struct._GHashTable** %10, align 8, !dbg !1707
  %238 = call i8* @g_hash_table_lookup(%struct._GHashTable* %237, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0)), !dbg !1709
  store i8* %238, i8** %17, align 8, !dbg !1710
  %239 = icmp ne i8* %238, null, !dbg !1711
  br i1 %239, label %240, label %245, !dbg !1712

; <label>:240:                                    ; preds = %236, %232
  %241 = load i8*, i8** %17, align 8, !dbg !1713
  %242 = call noalias i8* @g_strdup(i8* %241), !dbg !1714
  %243 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %9, align 8, !dbg !1715
  %244 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %243, i32 0, i32 23, !dbg !1716
  store i8* %242, i8** %244, align 8, !dbg !1717
  br label %245, !dbg !1715

; <label>:245:                                    ; preds = %240, %236
  %246 = load %struct._GHashTable*, %struct._GHashTable** %10, align 8, !dbg !1718
  %247 = call i8* @g_hash_table_lookup(%struct._GHashTable* %246, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i32 0, i32 0)), !dbg !1720
  store i8* %247, i8** %17, align 8, !dbg !1721
  %248 = icmp ne i8* %247, null, !dbg !1722
  br i1 %248, label %253, label %249, !dbg !1723

; <label>:249:                                    ; preds = %245
  %250 = load %struct._GHashTable*, %struct._GHashTable** %10, align 8, !dbg !1724
  %251 = call i8* @g_hash_table_lookup(%struct._GHashTable* %250, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0)), !dbg !1726
  store i8* %251, i8** %17, align 8, !dbg !1727
  %252 = icmp ne i8* %251, null, !dbg !1728
  br i1 %252, label %253, label %258, !dbg !1729

; <label>:253:                                    ; preds = %249, %245
  %254 = load i8*, i8** %17, align 8, !dbg !1730
  %255 = call noalias i8* @g_strdup(i8* %254), !dbg !1731
  %256 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %9, align 8, !dbg !1732
  %257 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %256, i32 0, i32 24, !dbg !1733
  store i8* %255, i8** %257, align 8, !dbg !1734
  br label %258, !dbg !1732

; <label>:258:                                    ; preds = %253, %249
  %259 = load %struct._GHashTable*, %struct._GHashTable** %10, align 8, !dbg !1735
  %260 = call i8* @g_hash_table_lookup(%struct._GHashTable* %259, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i32 0, i32 0)), !dbg !1737
  store i8* %260, i8** %17, align 8, !dbg !1738
  %261 = icmp ne i8* %260, null, !dbg !1739
  br i1 %261, label %266, label %262, !dbg !1740

; <label>:262:                                    ; preds = %258
  %263 = load %struct._GHashTable*, %struct._GHashTable** %10, align 8, !dbg !1741
  %264 = call i8* @g_hash_table_lookup(%struct._GHashTable* %263, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i32 0, i32 0)), !dbg !1743
  store i8* %264, i8** %17, align 8, !dbg !1744
  %265 = icmp ne i8* %264, null, !dbg !1745
  br i1 %265, label %266, label %271, !dbg !1746

; <label>:266:                                    ; preds = %262, %258
  %267 = load i8*, i8** %17, align 8, !dbg !1747
  %268 = call noalias i8* @g_strdup(i8* %267), !dbg !1748
  %269 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %9, align 8, !dbg !1749
  %270 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %269, i32 0, i32 25, !dbg !1750
  store i8* %268, i8** %270, align 8, !dbg !1751
  br label %271, !dbg !1749

; <label>:271:                                    ; preds = %266, %262
  %272 = load %struct._GHashTable*, %struct._GHashTable** %10, align 8, !dbg !1752
  %273 = call i8* @g_hash_table_lookup(%struct._GHashTable* %272, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.42, i32 0, i32 0)), !dbg !1754
  store i8* %273, i8** %17, align 8, !dbg !1755
  %274 = icmp ne i8* %273, null, !dbg !1756
  br i1 %274, label %279, label %275, !dbg !1757

; <label>:275:                                    ; preds = %271
  %276 = load %struct._GHashTable*, %struct._GHashTable** %10, align 8, !dbg !1758
  %277 = call i8* @g_hash_table_lookup(%struct._GHashTable* %276, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i32 0, i32 0)), !dbg !1760
  store i8* %277, i8** %17, align 8, !dbg !1761
  %278 = icmp ne i8* %277, null, !dbg !1762
  br i1 %278, label %279, label %284, !dbg !1763

; <label>:279:                                    ; preds = %275, %271
  %280 = load i8*, i8** %17, align 8, !dbg !1764
  %281 = call noalias i8* @g_strdup(i8* %280), !dbg !1765
  %282 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %9, align 8, !dbg !1766
  %283 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %282, i32 0, i32 26, !dbg !1767
  store i8* %281, i8** %283, align 8, !dbg !1768
  br label %284, !dbg !1766

; <label>:284:                                    ; preds = %279, %275
  %285 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %9, align 8, !dbg !1769
  %286 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %285, i32 0, i32 23, !dbg !1771
  %287 = load i8*, i8** %286, align 8, !dbg !1771
  %288 = icmp ne i8* %287, null, !dbg !1772
  br i1 %288, label %289, label %297, !dbg !1773

; <label>:289:                                    ; preds = %284
  %290 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %9, align 8, !dbg !1774
  %291 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %290, i32 0, i32 23, !dbg !1776
  %292 = load i8*, i8** %291, align 8, !dbg !1776
  %293 = getelementptr inbounds i8, i8* %292, i64 0, !dbg !1774
  %294 = load i8, i8* %293, align 1, !dbg !1774
  %295 = sext i8 %294 to i32, !dbg !1774
  %296 = icmp ne i32 %295, 0, !dbg !1777
  br i1 %296, label %310, label %297, !dbg !1778

; <label>:297:                                    ; preds = %289, %284
  %298 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %9, align 8, !dbg !1779
  %299 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %298, i32 0, i32 22, !dbg !1780
  %300 = load i8*, i8** %299, align 8, !dbg !1780
  %301 = icmp ne i8* %300, null, !dbg !1781
  br i1 %301, label %302, label %316, !dbg !1782

; <label>:302:                                    ; preds = %297
  %303 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %9, align 8, !dbg !1783
  %304 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %303, i32 0, i32 22, !dbg !1785
  %305 = load i8*, i8** %304, align 8, !dbg !1785
  %306 = getelementptr inbounds i8, i8* %305, i64 0, !dbg !1783
  %307 = load i8, i8* %306, align 1, !dbg !1783
  %308 = sext i8 %307 to i32, !dbg !1783
  %309 = icmp ne i32 %308, 0, !dbg !1786
  br i1 %309, label %310, label %316, !dbg !1787

; <label>:310:                                    ; preds = %302, %289
  %311 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %9, align 8, !dbg !1788
  %312 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %311, i32 0, i32 28, !dbg !1789
  %313 = load i8, i8* %312, align 8, !dbg !1790
  %314 = and i8 %313, -65, !dbg !1790
  %315 = or i8 %314, 64, !dbg !1790
  store i8 %315, i8* %312, align 8, !dbg !1790
  br label %316, !dbg !1788

; <label>:316:                                    ; preds = %310, %302, %297
  %317 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %9, align 8, !dbg !1791
  %318 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %317, i32 0, i32 19, !dbg !1793
  %319 = load i8*, i8** %318, align 8, !dbg !1793
  %320 = icmp ne i8* %319, null, !dbg !1794
  br i1 %320, label %321, label %329, !dbg !1795

; <label>:321:                                    ; preds = %316
  %322 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %9, align 8, !dbg !1796
  %323 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %322, i32 0, i32 19, !dbg !1798
  %324 = load i8*, i8** %323, align 8, !dbg !1798
  %325 = getelementptr inbounds i8, i8* %324, i64 0, !dbg !1796
  %326 = load i8, i8* %325, align 1, !dbg !1796
  %327 = sext i8 %326 to i32, !dbg !1796
  %328 = icmp ne i32 %327, 0, !dbg !1799
  br i1 %328, label %337, label %329, !dbg !1800

; <label>:329:                                    ; preds = %321, %316
  %330 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %9, align 8, !dbg !1801
  %331 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %330, i32 0, i32 28, !dbg !1803
  %332 = load i8, i8* %331, align 8, !dbg !1803
  %333 = lshr i8 %332, 6, !dbg !1803
  %334 = and i8 %333, 1, !dbg !1803
  %335 = zext i8 %334 to i32, !dbg !1803
  %336 = icmp ne i32 %335, 0, !dbg !1801
  br i1 %336, label %337, label %343, !dbg !1804

; <label>:337:                                    ; preds = %329, %321
  %338 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %9, align 8, !dbg !1805
  %339 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %338, i32 0, i32 28, !dbg !1806
  %340 = load i8, i8* %339, align 8, !dbg !1807
  %341 = and i8 %340, -33, !dbg !1807
  %342 = or i8 %341, 32, !dbg !1807
  store i8 %342, i8* %339, align 8, !dbg !1807
  br label %343, !dbg !1805

; <label>:343:                                    ; preds = %337, %329
  %344 = load %struct._GHashTable*, %struct._GHashTable** %10, align 8, !dbg !1808
  %345 = call i8* @g_hash_table_lookup(%struct._GHashTable* %344, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0)), !dbg !1810
  %346 = icmp ne i8* %345, null, !dbg !1811
  br i1 %346, label %347, label %353, !dbg !1812

; <label>:347:                                    ; preds = %343
  %348 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %9, align 8, !dbg !1813
  %349 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %348, i32 0, i32 28, !dbg !1814
  %350 = load i8, i8* %349, align 8, !dbg !1815
  %351 = and i8 %350, -5, !dbg !1815
  %352 = or i8 %351, 4, !dbg !1815
  store i8 %352, i8* %349, align 8, !dbg !1815
  br label %353, !dbg !1813

; <label>:353:                                    ; preds = %347, %343
  %354 = load %struct._GHashTable*, %struct._GHashTable** %10, align 8, !dbg !1816
  %355 = call i8* @g_hash_table_lookup(%struct._GHashTable* %354, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i32 0, i32 0)), !dbg !1818
  %356 = icmp ne i8* %355, null, !dbg !1819
  br i1 %356, label %357, label %363, !dbg !1820

; <label>:357:                                    ; preds = %353
  %358 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %9, align 8, !dbg !1821
  %359 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %358, i32 0, i32 28, !dbg !1822
  %360 = load i8, i8* %359, align 8, !dbg !1823
  %361 = and i8 %360, -9, !dbg !1823
  %362 = or i8 %361, 8, !dbg !1823
  store i8 %362, i8* %359, align 8, !dbg !1823
  br label %363, !dbg !1821

; <label>:363:                                    ; preds = %357, %353
  %364 = load %struct._GHashTable*, %struct._GHashTable** %10, align 8, !dbg !1824
  %365 = call i8* @g_hash_table_lookup(%struct._GHashTable* %364, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0)), !dbg !1826
  %366 = icmp ne i8* %365, null, !dbg !1827
  br i1 %366, label %367, label %381, !dbg !1828

; <label>:367:                                    ; preds = %363
  br label %368, !dbg !1829, !llvm.loop !1830

; <label>:368:                                    ; preds = %367
  %369 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %9, align 8, !dbg !1831
  %370 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %369, i32 0, i32 3, !dbg !1835
  %371 = load i8*, i8** %370, align 8, !dbg !1835
  %372 = icmp ne i8* %371, null, !dbg !1831
  br i1 %372, label %373, label %379, !dbg !1831

; <label>:373:                                    ; preds = %368
  %374 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %9, align 8, !dbg !1836
  %375 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %374, i32 0, i32 3, !dbg !1839
  %376 = load i8*, i8** %375, align 8, !dbg !1839
  call void @g_free(i8* %376), !dbg !1840
  %377 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %9, align 8, !dbg !1841
  %378 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %377, i32 0, i32 3, !dbg !1842
  store i8* null, i8** %378, align 8, !dbg !1843
  br label %379, !dbg !1844

; <label>:379:                                    ; preds = %373, %368
  br label %380, !dbg !1845

; <label>:380:                                    ; preds = %379
  br label %381, !dbg !1847

; <label>:381:                                    ; preds = %380, %363
  %382 = load %struct._GHashTable*, %struct._GHashTable** %10, align 8, !dbg !1849
  %383 = call i8* @g_hash_table_lookup(%struct._GHashTable* %382, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0)), !dbg !1850
  %384 = call noalias i8* @g_strdup(i8* %383), !dbg !1851
  %385 = load i8**, i8*** %7, align 8, !dbg !1852
  store i8* %384, i8** %385, align 8, !dbg !1853
  %386 = load %struct._GHashTable*, %struct._GHashTable** %10, align 8, !dbg !1854
  %387 = call i8* @g_hash_table_lookup(%struct._GHashTable* %386, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0)), !dbg !1855
  store i8* %387, i8** %16, align 8, !dbg !1856
  %388 = load i8*, i8** %16, align 8, !dbg !1857
  %389 = icmp ne i8* %388, null, !dbg !1859
  br i1 %389, label %390, label %402, !dbg !1860

; <label>:390:                                    ; preds = %381
  %391 = load i8*, i8** %16, align 8, !dbg !1861
  %392 = load i8, i8* %391, align 1, !dbg !1863
  %393 = sext i8 %392 to i32, !dbg !1863
  %394 = icmp ne i32 %393, 0, !dbg !1864
  br i1 %394, label %395, label %402, !dbg !1865

; <label>:395:                                    ; preds = %390
  call void @llvm.dbg.declare(metadata %struct._IPADDR* %19, metadata !1866, metadata !549), !dbg !1868
  call void @llvm.dbg.declare(metadata %struct._IPADDR* %20, metadata !1869, metadata !549), !dbg !1870
  %396 = load i8*, i8** %16, align 8, !dbg !1871
  %397 = call i32 @net_gethostbyname(i8* %396, %struct._IPADDR* %19, %struct._IPADDR* %20), !dbg !1873
  %398 = icmp eq i32 %397, 0, !dbg !1874
  br i1 %398, label %399, label %401, !dbg !1875

; <label>:399:                                    ; preds = %395
  %400 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %9, align 8, !dbg !1876
  call void @server_connect_own_ip_save(%struct._SERVER_CONNECT_REC* %400, %struct._IPADDR* %19, %struct._IPADDR* %20), !dbg !1877
  br label %401, !dbg !1877

; <label>:401:                                    ; preds = %399, %395
  br label %402, !dbg !1878

; <label>:402:                                    ; preds = %401, %390, %381
  %403 = load i8*, i8** %18, align 8, !dbg !1879
  call void @cmd_params_free(i8* %403), !dbg !1880
  %404 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %9, align 8, !dbg !1881
  store %struct._SERVER_CONNECT_REC* %404, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1882
  br label %405, !dbg !1882

; <label>:405:                                    ; preds = %402, %120, %102, %55, %31, %25
  %406 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %4, align 8, !dbg !1883
  ret %struct._SERVER_CONNECT_REC* %406, !dbg !1883
}

; Function Attrs: nounwind uwtable
define internal void @update_reconnection(%struct._SERVER_CONNECT_REC*, %struct._SERVER_REC*) #0 !dbg !1884 {
  %3 = alloca %struct._SERVER_CONNECT_REC*, align 8
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca %struct._SERVER_CONNECT_REC*, align 8
  %6 = alloca %struct.RECONNECT_REC*, align 8
  store %struct._SERVER_CONNECT_REC* %0, %struct._SERVER_CONNECT_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_CONNECT_REC** %3, metadata !1887, metadata !549), !dbg !1888
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1889, metadata !549), !dbg !1890
  call void @llvm.dbg.declare(metadata %struct._SERVER_CONNECT_REC** %5, metadata !1891, metadata !549), !dbg !1892
  call void @llvm.dbg.declare(metadata %struct.RECONNECT_REC** %6, metadata !1893, metadata !549), !dbg !1902
  %7 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1903
  %8 = icmp ne %struct._SERVER_REC* %7, null, !dbg !1905
  br i1 %8, label %9, label %16, !dbg !1906

; <label>:9:                                      ; preds = %2
  %10 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1907
  %11 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %10, i32 0, i32 3, !dbg !1909
  %12 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %11, align 8, !dbg !1909
  store %struct._SERVER_CONNECT_REC* %12, %struct._SERVER_CONNECT_REC** %5, align 8, !dbg !1910
  %13 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %5, align 8, !dbg !1911
  call void @server_connect_ref(%struct._SERVER_CONNECT_REC* %13), !dbg !1912
  %14 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1913
  %15 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1914
  call void @reconnect_save_status(%struct._SERVER_CONNECT_REC* %14, %struct._SERVER_REC* %15), !dbg !1915
  br label %48, !dbg !1916

; <label>:16:                                     ; preds = %2
  %17 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1917
  %18 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %17, i32 0, i32 1, !dbg !1919
  %19 = load i32, i32* %18, align 4, !dbg !1919
  %20 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1920
  %21 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %20, i32 0, i32 10, !dbg !1921
  %22 = load i8*, i8** %21, align 8, !dbg !1921
  %23 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1922
  %24 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %23, i32 0, i32 11, !dbg !1923
  %25 = load i32, i32* %24, align 8, !dbg !1923
  %26 = call %struct.RECONNECT_REC* @find_reconnect_server(i32 %19, i8* %22, i32 %25), !dbg !1924
  store %struct.RECONNECT_REC* %26, %struct.RECONNECT_REC** %6, align 8, !dbg !1925
  %27 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %6, align 8, !dbg !1926
  %28 = icmp eq %struct.RECONNECT_REC* %27, null, !dbg !1928
  br i1 %28, label %29, label %30, !dbg !1929

; <label>:29:                                     ; preds = %16
  br label %77, !dbg !1930

; <label>:30:                                     ; preds = %16
  %31 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %6, align 8, !dbg !1932
  %32 = getelementptr inbounds %struct.RECONNECT_REC, %struct.RECONNECT_REC* %31, i32 0, i32 2, !dbg !1933
  %33 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %32, align 8, !dbg !1933
  store %struct._SERVER_CONNECT_REC* %33, %struct._SERVER_CONNECT_REC** %5, align 8, !dbg !1934
  %34 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %5, align 8, !dbg !1935
  call void @server_connect_ref(%struct._SERVER_CONNECT_REC* %34), !dbg !1936
  %35 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %6, align 8, !dbg !1937
  call void @server_reconnect_destroy(%struct.RECONNECT_REC* %35), !dbg !1938
  %36 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %5, align 8, !dbg !1939
  %37 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %36, i32 0, i32 30, !dbg !1940
  %38 = load i8*, i8** %37, align 8, !dbg !1940
  %39 = call noalias i8* @g_strdup(i8* %38), !dbg !1941
  %40 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1942
  %41 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %40, i32 0, i32 30, !dbg !1943
  store i8* %39, i8** %41, align 8, !dbg !1944
  %42 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %5, align 8, !dbg !1945
  %43 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %42, i32 0, i32 29, !dbg !1946
  %44 = load i8*, i8** %43, align 8, !dbg !1946
  %45 = call noalias i8* @g_strdup(i8* %44), !dbg !1947
  %46 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1948
  %47 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %46, i32 0, i32 29, !dbg !1949
  store i8* %45, i8** %47, align 8, !dbg !1950
  br label %48

; <label>:48:                                     ; preds = %30, %9
  %49 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1951
  %50 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %49, i32 0, i32 28, !dbg !1952
  %51 = load i8, i8* %50, align 8, !dbg !1953
  %52 = and i8 %51, -2, !dbg !1953
  %53 = or i8 %52, 1, !dbg !1953
  store i8 %53, i8* %50, align 8, !dbg !1953
  %54 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1954
  %55 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %54, i32 0, i32 12, !dbg !1956
  %56 = load i8*, i8** %55, align 8, !dbg !1956
  %57 = icmp eq i8* %56, null, !dbg !1957
  br i1 %57, label %58, label %70, !dbg !1958

; <label>:58:                                     ; preds = %48
  %59 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %5, align 8, !dbg !1959
  %60 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %59, i32 0, i32 12, !dbg !1961
  %61 = load i8*, i8** %60, align 8, !dbg !1961
  %62 = icmp ne i8* %61, null, !dbg !1962
  br i1 %62, label %63, label %70, !dbg !1963

; <label>:63:                                     ; preds = %58
  %64 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %5, align 8, !dbg !1964
  %65 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %64, i32 0, i32 12, !dbg !1965
  %66 = load i8*, i8** %65, align 8, !dbg !1965
  %67 = call noalias i8* @g_strdup(i8* %66), !dbg !1966
  %68 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !1967
  %69 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %68, i32 0, i32 12, !dbg !1968
  store i8* %67, i8** %69, align 8, !dbg !1969
  br label %70, !dbg !1967

; <label>:70:                                     ; preds = %63, %58, %48
  %71 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %5, align 8, !dbg !1970
  call void @server_connect_unref(%struct._SERVER_CONNECT_REC* %71), !dbg !1971
  %72 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1972
  %73 = icmp ne %struct._SERVER_REC* %72, null, !dbg !1974
  br i1 %73, label %74, label %77, !dbg !1975

; <label>:74:                                     ; preds = %70
  %75 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1976
  %76 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.49, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i32 0, i32 0), %struct._SERVER_REC* %75), !dbg !1978
  br label %77, !dbg !1979

; <label>:77:                                     ; preds = %29, %74, %70
  ret void, !dbg !1980
}

declare %struct._SERVER_REC* @server_connect(%struct._SERVER_CONNECT_REC*) #1

declare void @server_connect_unref(%struct._SERVER_CONNECT_REC*) #1

declare void @rawlog_open(%struct._RAWLOG_REC*, i8*) #1

declare void @g_free(i8*) #1

declare i32 @cmd_get_params(i8*, i8**, i32, ...) #1

declare i32 @signal_emit(i8*, i32, ...) #1

declare void @cmd_params_free(i8*) #1

declare i32 @g_strcmp0(i8*, i8*) #1

declare %struct._CHAT_PROTOCOL_REC* @chat_protocol_find_net(%struct._GHashTable*) #1

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

declare %struct._SERVER_CONNECT_REC* @server_create_conn(i32, i8*, i32, i8*, i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

declare %struct._CHAT_PROTOCOL_REC* @chat_protocol_find_id(i32) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

declare noalias i8* @g_strdup(i8*) #1

declare i32 @net_gethostbyname(i8*, %struct._IPADDR*, %struct._IPADDR*) #1

declare void @server_connect_own_ip_save(%struct._SERVER_CONNECT_REC*, %struct._IPADDR*, %struct._IPADDR*) #1

declare void @server_connect_ref(%struct._SERVER_CONNECT_REC*) #1

declare void @reconnect_save_status(%struct._SERVER_CONNECT_REC*, %struct._SERVER_REC*) #1

; Function Attrs: nounwind uwtable
define internal %struct.RECONNECT_REC* @find_reconnect_server(i32, i8*, i32) #0 !dbg !1981 {
  %4 = alloca %struct.RECONNECT_REC*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.RECONNECT_REC*, align 8
  %9 = alloca %struct.RECONNECT_REC*, align 8
  %10 = alloca %struct._GSList*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.RECONNECT_REC*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1984, metadata !549), !dbg !1985
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1986, metadata !549), !dbg !1987
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1988, metadata !549), !dbg !1989
  call void @llvm.dbg.declare(metadata %struct.RECONNECT_REC** %8, metadata !1990, metadata !549), !dbg !1991
  call void @llvm.dbg.declare(metadata %struct.RECONNECT_REC** %9, metadata !1992, metadata !549), !dbg !1993
  call void @llvm.dbg.declare(metadata %struct._GSList** %10, metadata !1994, metadata !549), !dbg !1995
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1996, metadata !549), !dbg !1997
  br label %13, !dbg !1998, !llvm.loop !1999

; <label>:13:                                     ; preds = %3
  %14 = load i8*, i8** %6, align 8, !dbg !2000
  %15 = icmp ne i8* %14, null, !dbg !2004
  br i1 %15, label %16, label %17, !dbg !2000

; <label>:16:                                     ; preds = %13
  br label %18, !dbg !2005

; <label>:17:                                     ; preds = %13
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.find_reconnect_server, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.51, i32 0, i32 0)), !dbg !2008
  store %struct.RECONNECT_REC* null, %struct.RECONNECT_REC** %4, align 8, !dbg !2011
  br label %73, !dbg !2011

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !2012

; <label>:19:                                     ; preds = %18
  store %struct.RECONNECT_REC* null, %struct.RECONNECT_REC** %9, align 8, !dbg !2014
  store %struct.RECONNECT_REC* null, %struct.RECONNECT_REC** %8, align 8, !dbg !2015
  store i32 0, i32* %11, align 4, !dbg !2016
  %20 = load %struct._GSList*, %struct._GSList** @reconnects, align 8, !dbg !2017
  store %struct._GSList* %20, %struct._GSList** %10, align 8, !dbg !2019
  br label %21, !dbg !2020

; <label>:21:                                     ; preds = %62, %19
  %22 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !2021
  %23 = icmp ne %struct._GSList* %22, null, !dbg !2024
  br i1 %23, label %24, label %66, !dbg !2025

; <label>:24:                                     ; preds = %21
  call void @llvm.dbg.declare(metadata %struct.RECONNECT_REC** %12, metadata !2026, metadata !549), !dbg !2028
  %25 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !2029
  %26 = getelementptr inbounds %struct._GSList, %struct._GSList* %25, i32 0, i32 0, !dbg !2030
  %27 = load i8*, i8** %26, align 8, !dbg !2030
  %28 = bitcast i8* %27 to %struct.RECONNECT_REC*, !dbg !2029
  store %struct.RECONNECT_REC* %28, %struct.RECONNECT_REC** %12, align 8, !dbg !2028
  %29 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %12, align 8, !dbg !2031
  %30 = getelementptr inbounds %struct.RECONNECT_REC, %struct.RECONNECT_REC* %29, i32 0, i32 2, !dbg !2033
  %31 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %30, align 8, !dbg !2033
  %32 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %31, i32 0, i32 1, !dbg !2034
  %33 = load i32, i32* %32, align 4, !dbg !2034
  %34 = load i32, i32* %5, align 4, !dbg !2035
  %35 = icmp eq i32 %33, %34, !dbg !2036
  br i1 %35, label %36, label %61, !dbg !2037

; <label>:36:                                     ; preds = %24
  %37 = load i32, i32* %11, align 4, !dbg !2038
  %38 = add nsw i32 %37, 1, !dbg !2038
  store i32 %38, i32* %11, align 4, !dbg !2038
  %39 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %12, align 8, !dbg !2040
  store %struct.RECONNECT_REC* %39, %struct.RECONNECT_REC** %9, align 8, !dbg !2041
  %40 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %12, align 8, !dbg !2042
  %41 = getelementptr inbounds %struct.RECONNECT_REC, %struct.RECONNECT_REC* %40, i32 0, i32 2, !dbg !2044
  %42 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %41, align 8, !dbg !2044
  %43 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %42, i32 0, i32 10, !dbg !2045
  %44 = load i8*, i8** %43, align 8, !dbg !2045
  %45 = load i8*, i8** %6, align 8, !dbg !2046
  %46 = call i32 @g_ascii_strcasecmp(i8* %44, i8* %45), !dbg !2047
  %47 = icmp eq i32 %46, 0, !dbg !2048
  br i1 %47, label %48, label %60, !dbg !2049

; <label>:48:                                     ; preds = %36
  %49 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %12, align 8, !dbg !2050
  %50 = getelementptr inbounds %struct.RECONNECT_REC, %struct.RECONNECT_REC* %49, i32 0, i32 2, !dbg !2053
  %51 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %50, align 8, !dbg !2053
  %52 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %51, i32 0, i32 11, !dbg !2054
  %53 = load i32, i32* %52, align 8, !dbg !2054
  %54 = load i32, i32* %7, align 4, !dbg !2055
  %55 = icmp eq i32 %53, %54, !dbg !2056
  br i1 %55, label %56, label %58, !dbg !2057

; <label>:56:                                     ; preds = %48
  %57 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %12, align 8, !dbg !2058
  store %struct.RECONNECT_REC* %57, %struct.RECONNECT_REC** %4, align 8, !dbg !2059
  br label %73, !dbg !2059

; <label>:58:                                     ; preds = %48
  %59 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %12, align 8, !dbg !2060
  store %struct.RECONNECT_REC* %59, %struct.RECONNECT_REC** %8, align 8, !dbg !2061
  br label %60, !dbg !2062

; <label>:60:                                     ; preds = %58, %36
  br label %61, !dbg !2063

; <label>:61:                                     ; preds = %60, %24
  br label %62, !dbg !2064

; <label>:62:                                     ; preds = %61
  %63 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !2065
  %64 = getelementptr inbounds %struct._GSList, %struct._GSList* %63, i32 0, i32 1, !dbg !2067
  %65 = load %struct._GSList*, %struct._GSList** %64, align 8, !dbg !2067
  store %struct._GSList* %65, %struct._GSList** %10, align 8, !dbg !2068
  br label %21, !dbg !2069, !llvm.loop !2070

; <label>:66:                                     ; preds = %21
  %67 = load i32, i32* %11, align 4, !dbg !2072
  %68 = icmp eq i32 %67, 1, !dbg !2074
  br i1 %68, label %69, label %71, !dbg !2075

; <label>:69:                                     ; preds = %66
  %70 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %9, align 8, !dbg !2076
  store %struct.RECONNECT_REC* %70, %struct.RECONNECT_REC** %4, align 8, !dbg !2078
  br label %73, !dbg !2078

; <label>:71:                                     ; preds = %66
  %72 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %8, align 8, !dbg !2079
  store %struct.RECONNECT_REC* %72, %struct.RECONNECT_REC** %4, align 8, !dbg !2080
  br label %73, !dbg !2080

; <label>:73:                                     ; preds = %71, %69, %56, %17
  %74 = load %struct.RECONNECT_REC*, %struct.RECONNECT_REC** %4, align 8, !dbg !2081
  ret %struct.RECONNECT_REC* %74, !dbg !2081
}

declare void @server_reconnect_destroy(%struct.RECONNECT_REC*) #1

declare i32 @g_ascii_strcasecmp(i8*, i8*) #1

declare %struct._SERVER_REC* @server_find_tag(i8*) #1

declare %struct._SERVER_REC* @server_find_lookup_tag(i8*) #1

declare void @signal_stop() #1

declare i8* @settings_get_str(i8*) #1

declare void @server_disconnect(%struct._SERVER_REC*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare %struct._SERVER_REC* @cmd_options_get_server(i8*, %struct._GHashTable*, %struct._SERVER_REC*) #1

declare i8* @parse_special(i8**, %struct._SERVER_REC*, i8*, i8**, i32*, i32*, i32) #1

declare i8* @module_check_cast_module(i8*, i32, i8*, i8*) #1

declare void @g_strfreev(i8**) #1

declare %struct._GSList* @g_slist_copy(%struct._GSList*) #1

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!524, !525}
!llvm.ident = !{!526}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !56)
!1 = !DIFile(filename: "line25-chat-commands.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!56 = !{!57, !64, !65, !69, !71, !72, !74, !75, !172}
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !58, line: 9, baseType: !59)
!58 = !DIFile(filename: "signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !62, !62, !62, !62, !62, !62}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !67, line: 46, baseType: !68)
!67 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!68 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !67, line: 77, baseType: !64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !67, line: 48, baseType: !73)
!73 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !77, line: 109, baseType: !78)
!77 = !DIFile(filename: "../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !79, line: 15, size: 1408, align: 64, elements: !80)
!79 = !DIFile(filename: "channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!80 = !{!81, !84, !85, !90, !91, !491, !492, !493, !494, !495, !496, !497, !498, !500, !501, !502, !503, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !78, file: !82, line: 3, baseType: !83, size: 32, align: 32)
!82 = !DIFile(filename: "window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!83 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !78, file: !82, line: 4, baseType: !83, size: 32, align: 32, offset: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !78, file: !82, line: 5, baseType: !86, size: 64, align: 64, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !88, line: 37, baseType: !89)
!88 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!89 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !88, line: 37, flags: DIFlagFwdDecl)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !78, file: !82, line: 7, baseType: !64, size: 64, align: 64, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !78, file: !82, line: 8, baseType: !92, size: 64, align: 64, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !77, line: 107, baseType: !94)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !95, line: 30, size: 2240, align: 64, elements: !96)
!95 = !DIFile(filename: "servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!96 = !{!97, !99, !100, !101, !355, !360, !361, !362, !363, !364, !365, !366, !367, !368, !372, !373, !377, !378, !379, !389, !390, !391, !392, !393, !394, !395, !396, !397, !403, !404, !405, !406, !407, !411, !415, !419, !423, !427, !432, !436, !486, !490}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !94, file: !98, line: 3, baseType: !83, size: 32, align: 32)
!98 = !DIFile(filename: "server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!99 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !94, file: !98, line: 4, baseType: !83, size: 32, align: 32, offset: 32)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !94, file: !98, line: 6, baseType: !83, size: 32, align: 32, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !94, file: !98, line: 8, baseType: !102, size: 64, align: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !77, line: 113, baseType: !104)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !95, line: 25, size: 1920, align: 64, elements: !105)
!105 = !{!106, !108, !109, !110, !111, !112, !113, !114, !115, !117, !118, !119, !120, !121, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !104, file: !107, line: 3, baseType: !83, size: 32, align: 32)
!107 = !DIFile(filename: "server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!108 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !104, file: !107, line: 4, baseType: !83, size: 32, align: 32, offset: 32)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !104, file: !107, line: 6, baseType: !83, size: 32, align: 32, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !104, file: !107, line: 9, baseType: !74, size: 64, align: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !104, file: !107, line: 10, baseType: !83, size: 32, align: 32, offset: 192)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !104, file: !107, line: 11, baseType: !74, size: 64, align: 64, offset: 256)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !104, file: !107, line: 11, baseType: !74, size: 64, align: 64, offset: 320)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !104, file: !107, line: 11, baseType: !74, size: 64, align: 64, offset: 384)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !104, file: !107, line: 13, baseType: !116, size: 16, align: 16, offset: 448)
!116 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !104, file: !107, line: 14, baseType: !74, size: 64, align: 64, offset: 512)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !104, file: !107, line: 15, baseType: !74, size: 64, align: 64, offset: 576)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !104, file: !107, line: 16, baseType: !83, size: 32, align: 32, offset: 640)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !104, file: !107, line: 17, baseType: !74, size: 64, align: 64, offset: 704)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !104, file: !107, line: 19, baseType: !122, size: 64, align: 64, offset: 768)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !77, line: 99, baseType: !124)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !125, line: 22, size: 160, align: 32, elements: !126)
!125 = !DIFile(filename: "network.h", directory: "/home/lichi/Desktop/irssi/task1")
!126 = !{!127, !128}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !124, file: !125, line: 23, baseType: !116, size: 16, align: 16)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !124, file: !125, line: 24, baseType: !129, size: 128, align: 32, offset: 32)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !130, line: 211, size: 128, align: 32, elements: !131)
!130 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/irssi/task1")
!131 = !{!132}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !129, file: !130, line: 220, baseType: !133, size: 128, align: 32)
!133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !129, file: !130, line: 213, size: 128, align: 32, elements: !134)
!134 = !{!135, !142, !147}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !133, file: !130, line: 215, baseType: !136, size: 128, align: 8)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 128, align: 8, elements: !140)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !138, line: 48, baseType: !139)
!138 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/irssi/task1")
!139 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!140 = !{!141}
!141 = !DISubrange(count: 16)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !133, file: !130, line: 217, baseType: !143, size: 128, align: 16)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 128, align: 16, elements: !145)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !138, line: 49, baseType: !116)
!145 = !{!146}
!146 = !DISubrange(count: 8)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !133, file: !130, line: 218, baseType: !148, size: 128, align: 32)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 128, align: 32, elements: !151)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !138, line: 51, baseType: !150)
!150 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!151 = !{!152}
!152 = !DISubrange(count: 4)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !104, file: !107, line: 19, baseType: !122, size: 64, align: 64, offset: 832)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !104, file: !107, line: 21, baseType: !74, size: 64, align: 64, offset: 896)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !104, file: !107, line: 22, baseType: !74, size: 64, align: 64, offset: 960)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !104, file: !107, line: 23, baseType: !74, size: 64, align: 64, offset: 1024)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !104, file: !107, line: 24, baseType: !74, size: 64, align: 64, offset: 1088)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !104, file: !107, line: 26, baseType: !74, size: 64, align: 64, offset: 1152)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !104, file: !107, line: 27, baseType: !74, size: 64, align: 64, offset: 1216)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !104, file: !107, line: 28, baseType: !74, size: 64, align: 64, offset: 1280)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !104, file: !107, line: 29, baseType: !74, size: 64, align: 64, offset: 1344)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !104, file: !107, line: 30, baseType: !74, size: 64, align: 64, offset: 1408)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !104, file: !107, line: 31, baseType: !74, size: 64, align: 64, offset: 1472)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !104, file: !107, line: 32, baseType: !74, size: 64, align: 64, offset: 1536)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !104, file: !107, line: 33, baseType: !74, size: 64, align: 64, offset: 1600)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !104, file: !107, line: 35, baseType: !167, size: 64, align: 64, offset: 1664)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64, align: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !169)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !170)
!170 = !{!171, !173, !312, !313, !318, !319, !320, !321, !322, !331, !332, !333, !337, !338, !339, !340, !341, !342, !343, !344}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !169, file: !4, line: 100, baseType: !172, size: 32, align: 32)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !67, line: 49, baseType: !83)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !169, file: !4, line: 101, baseType: !174, size: 64, align: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !176)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !177)
!177 = !{!178, !199, !205, !211, !215, !299, !303, !308}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !176, file: !4, line: 133, baseType: !179, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64, align: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{!182, !167, !65, !183, !186, !187}
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !184, line: 66, baseType: !185)
!184 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!185 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, align: 64)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !190, line: 42, baseType: !191)
!190 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !190, line: 44, size: 128, align: 64, elements: !192)
!192 = !{!193, !197, !198}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !191, file: !190, line: 46, baseType: !194, size: 32, align: 32)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !195, line: 36, baseType: !196)
!195 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !184, line: 45, baseType: !150)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !191, file: !190, line: 47, baseType: !172, size: 32, align: 32, offset: 32)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !191, file: !190, line: 48, baseType: !65, size: 64, align: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !176, file: !4, line: 138, baseType: !200, size: 64, align: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{!182, !167, !203, !183, !186, !187}
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !176, file: !4, line: 143, baseType: !206, size: 64, align: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{!182, !167, !209, !210, !187}
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !184, line: 51, baseType: !73)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !176, file: !4, line: 147, baseType: !212, size: 64, align: 64, offset: 192)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!182, !167, !187}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !176, file: !4, line: 149, baseType: !216, size: 64, align: 64, offset: 256)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!219, !167, !298}
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64, align: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !221)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !222)
!222 = !{!223, !224, !245, !274, !276, !280, !281, !282, !283, !291, !292, !293, !294}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !221, file: !16, line: 174, baseType: !71, size: 64, align: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !221, file: !16, line: 175, baseType: !225, size: 64, align: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64, align: 64)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !227)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !228)
!228 = !{!229, !233, !234}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !227, file: !16, line: 198, baseType: !230, size: 64, align: 64)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64, align: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{null, !71}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !227, file: !16, line: 199, baseType: !230, size: 64, align: 64, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !227, file: !16, line: 200, baseType: !235, size: 64, align: 64, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{null, !71, !219, !238, !244}
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!243, !71}
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !67, line: 50, baseType: !172)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !221, file: !16, line: 177, baseType: !246, size: 64, align: 64, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !249)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !250)
!250 = !{!251, !256, !260, !264, !268, !269}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !249, file: !16, line: 216, baseType: !252, size: 64, align: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64, align: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!243, !219, !255}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !249, file: !16, line: 218, baseType: !257, size: 64, align: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64, align: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!243, !219}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !249, file: !16, line: 219, baseType: !261, size: 64, align: 64, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64, align: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!243, !219, !239, !71}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !249, file: !16, line: 222, baseType: !265, size: 64, align: 64, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64, align: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !219}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !249, file: !16, line: 226, baseType: !239, size: 64, align: 64, offset: 256)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !249, file: !16, line: 227, baseType: !270, size: 64, align: 64, offset: 320)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64, align: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{null}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !221, file: !16, line: 178, baseType: !275, size: 32, align: 32, offset: 192)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !67, line: 55, baseType: !150)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !221, file: !16, line: 180, baseType: !277, size: 64, align: 64, offset: 256)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64, align: 64)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !279)
!279 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !221, file: !16, line: 182, baseType: !172, size: 32, align: 32, offset: 320)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !221, file: !16, line: 183, baseType: !275, size: 32, align: 32, offset: 352)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !221, file: !16, line: 184, baseType: !275, size: 32, align: 32, offset: 384)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !221, file: !16, line: 186, baseType: !284, size: 64, align: 64, offset: 448)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64, align: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !286, line: 37, baseType: !287)
!286 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !286, line: 39, size: 128, align: 64, elements: !288)
!288 = !{!289, !290}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !287, file: !286, line: 41, baseType: !71, size: 64, align: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !287, file: !286, line: 42, baseType: !284, size: 64, align: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !221, file: !16, line: 188, baseType: !219, size: 64, align: 64, offset: 512)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !221, file: !16, line: 189, baseType: !219, size: 64, align: 64, offset: 576)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !221, file: !16, line: 191, baseType: !74, size: 64, align: 64, offset: 640)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !221, file: !16, line: 193, baseType: !295, size: 64, align: 64, offset: 704)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, align: 64)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !297)
!297 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !176, file: !4, line: 151, baseType: !300, size: 64, align: 64, offset: 320)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !167}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !176, file: !4, line: 152, baseType: !304, size: 64, align: 64, offset: 384)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!182, !167, !307, !187}
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !176, file: !4, line: 155, baseType: !309, size: 64, align: 64, offset: 448)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64, align: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!307, !167}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !169, file: !4, line: 103, baseType: !65, size: 64, align: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !169, file: !4, line: 104, baseType: !314, size: 64, align: 64, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !315, line: 77, baseType: !316)
!315 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64, align: 64)
!317 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !315, line: 77, flags: DIFlagFwdDecl)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !169, file: !4, line: 105, baseType: !314, size: 64, align: 64, offset: 256)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !169, file: !4, line: 106, baseType: !65, size: 64, align: 64, offset: 320)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !169, file: !4, line: 107, baseType: !275, size: 32, align: 32, offset: 384)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !169, file: !4, line: 109, baseType: !183, size: 64, align: 64, offset: 448)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !169, file: !4, line: 110, baseType: !323, size: 64, align: 64, offset: 512)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64, align: 64)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !325, line: 39, baseType: !326)
!325 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !325, line: 41, size: 192, align: 64, elements: !327)
!327 = !{!328, !329, !330}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !326, file: !325, line: 43, baseType: !65, size: 64, align: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !326, file: !325, line: 44, baseType: !183, size: 64, align: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !326, file: !325, line: 45, baseType: !183, size: 64, align: 64, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !169, file: !4, line: 111, baseType: !323, size: 64, align: 64, offset: 576)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !169, file: !4, line: 112, baseType: !323, size: 64, align: 64, offset: 640)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !169, file: !4, line: 113, baseType: !334, size: 48, align: 8, offset: 704)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 48, align: 8, elements: !335)
!335 = !{!336}
!336 = !DISubrange(count: 6)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !169, file: !4, line: 117, baseType: !275, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !169, file: !4, line: 118, baseType: !275, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !169, file: !4, line: 119, baseType: !275, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !169, file: !4, line: 120, baseType: !275, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !169, file: !4, line: 121, baseType: !275, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !169, file: !4, line: 122, baseType: !275, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !169, file: !4, line: 124, baseType: !71, size: 64, align: 64, offset: 768)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !169, file: !4, line: 125, baseType: !71, size: 64, align: 64, offset: 832)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !104, file: !107, line: 38, baseType: !150, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !104, file: !107, line: 39, baseType: !150, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !104, file: !107, line: 40, baseType: !150, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !104, file: !107, line: 41, baseType: !150, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !104, file: !107, line: 42, baseType: !150, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !104, file: !107, line: 43, baseType: !150, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !104, file: !107, line: 44, baseType: !150, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !104, file: !107, line: 45, baseType: !150, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !104, file: !107, line: 46, baseType: !74, size: 64, align: 64, offset: 1792)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !104, file: !107, line: 47, baseType: !74, size: 64, align: 64, offset: 1856)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !94, file: !98, line: 9, baseType: !356, size: 64, align: 64, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !357, line: 75, baseType: !358)
!357 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !359, line: 139, baseType: !73)
!359 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!360 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !94, file: !98, line: 10, baseType: !356, size: 64, align: 64, offset: 256)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !94, file: !98, line: 12, baseType: !74, size: 64, align: 64, offset: 320)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !94, file: !98, line: 13, baseType: !74, size: 64, align: 64, offset: 384)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !94, file: !98, line: 15, baseType: !150, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !94, file: !98, line: 16, baseType: !150, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !94, file: !98, line: 17, baseType: !150, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !94, file: !98, line: 18, baseType: !150, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !94, file: !98, line: 19, baseType: !150, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !94, file: !98, line: 21, baseType: !369, size: 64, align: 64, offset: 512)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64, align: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !77, line: 102, baseType: !371)
!371 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !77, line: 102, flags: DIFlagFwdDecl)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !94, file: !98, line: 22, baseType: !83, size: 32, align: 32, offset: 576)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !94, file: !98, line: 25, baseType: !374, size: 128, align: 64, offset: 640)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 128, align: 64, elements: !375)
!375 = !{!376}
!376 = !DISubrange(count: 2)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !94, file: !98, line: 26, baseType: !83, size: 32, align: 32, offset: 768)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !94, file: !98, line: 27, baseType: !83, size: 32, align: 32, offset: 800)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !94, file: !98, line: 29, baseType: !380, size: 64, align: 64, offset: 832)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64, align: 64)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !77, line: 103, baseType: !382)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !383, line: 4, size: 192, align: 64, elements: !384)
!383 = !DIFile(filename: "rawlog.h", directory: "/home/lichi/Desktop/irssi/task1")
!384 = !{!385, !386, !387, !388}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "logging", scope: !382, file: !383, line: 5, baseType: !83, size: 32, align: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !382, file: !383, line: 6, baseType: !83, size: 32, align: 32, offset: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "nlines", scope: !382, file: !383, line: 8, baseType: !83, size: 32, align: 32, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !382, file: !383, line: 9, baseType: !284, size: 64, align: 64, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !94, file: !98, line: 30, baseType: !86, size: 64, align: 64, offset: 896)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !94, file: !98, line: 32, baseType: !74, size: 64, align: 64, offset: 960)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !94, file: !98, line: 33, baseType: !74, size: 64, align: 64, offset: 1024)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !94, file: !98, line: 34, baseType: !74, size: 64, align: 64, offset: 1088)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !94, file: !98, line: 35, baseType: !150, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !94, file: !98, line: 36, baseType: !150, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !94, file: !98, line: 37, baseType: !150, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !94, file: !98, line: 38, baseType: !150, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !94, file: !98, line: 40, baseType: !398, size: 128, align: 64, offset: 1216)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !67, line: 504, baseType: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !67, line: 506, size: 128, align: 64, elements: !400)
!400 = !{!401, !402}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !399, file: !67, line: 508, baseType: !72, size: 64, align: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !399, file: !67, line: 509, baseType: !72, size: 64, align: 64, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !94, file: !98, line: 41, baseType: !356, size: 64, align: 64, offset: 1344)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !94, file: !98, line: 42, baseType: !83, size: 32, align: 32, offset: 1408)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !94, file: !98, line: 44, baseType: !284, size: 64, align: 64, offset: 1472)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !94, file: !98, line: 45, baseType: !284, size: 64, align: 64, offset: 1536)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !94, file: !98, line: 53, baseType: !408, size: 64, align: 64, offset: 1600)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64, align: 64)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !92, !69, !83}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !94, file: !98, line: 55, baseType: !412, size: 64, align: 64, offset: 1664)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64, align: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{!83, !92, !68}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !94, file: !98, line: 57, baseType: !416, size: 64, align: 64, offset: 1728)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64, align: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{!83, !92, !69}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !94, file: !98, line: 60, baseType: !420, size: 64, align: 64, offset: 1792)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64, align: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{!69, !92}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !94, file: !98, line: 62, baseType: !424, size: 64, align: 64, offset: 1856)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64, align: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{null, !92, !69, !69, !83}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !94, file: !98, line: 65, baseType: !428, size: 64, align: 64, offset: 1920)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64, align: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{!431, !92, !69, !69}
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !94, file: !98, line: 69, baseType: !433, size: 64, align: 64, offset: 1984)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64, align: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{!75, !92, !69}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !94, file: !98, line: 70, baseType: !437, size: 64, align: 64, offset: 2048)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64, align: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{!440, !92, !69}
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64, align: 64)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !77, line: 110, baseType: !442)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !443, line: 15, size: 960, align: 64, elements: !444)
!443 = !DIFile(filename: "queries.h", directory: "/home/lichi/Desktop/irssi/task1")
!444 = !{!445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !479, !480, !482, !483, !484, !485}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !442, file: !82, line: 3, baseType: !83, size: 32, align: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !442, file: !82, line: 4, baseType: !83, size: 32, align: 32, offset: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !442, file: !82, line: 5, baseType: !86, size: 64, align: 64, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !442, file: !82, line: 7, baseType: !64, size: 64, align: 64, offset: 128)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !442, file: !82, line: 8, baseType: !92, size: 64, align: 64, offset: 192)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !442, file: !82, line: 9, baseType: !74, size: 64, align: 64, offset: 256)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !442, file: !82, line: 10, baseType: !74, size: 64, align: 64, offset: 320)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !442, file: !82, line: 11, baseType: !356, size: 64, align: 64, offset: 384)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !442, file: !82, line: 12, baseType: !83, size: 32, align: 32, offset: 448)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !442, file: !82, line: 13, baseType: !74, size: 64, align: 64, offset: 512)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !442, file: !82, line: 15, baseType: !456, size: 64, align: 64, offset: 576)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64, align: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{null, !459}
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64, align: 64)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !77, line: 108, baseType: !461)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !462, line: 5, size: 704, align: 64, elements: !463)
!462 = !DIFile(filename: "window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!463 = !{!464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !461, file: !82, line: 3, baseType: !83, size: 32, align: 32)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !461, file: !82, line: 4, baseType: !83, size: 32, align: 32, offset: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !461, file: !82, line: 5, baseType: !86, size: 64, align: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !461, file: !82, line: 7, baseType: !64, size: 64, align: 64, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !461, file: !82, line: 8, baseType: !92, size: 64, align: 64, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !461, file: !82, line: 9, baseType: !74, size: 64, align: 64, offset: 256)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !461, file: !82, line: 10, baseType: !74, size: 64, align: 64, offset: 320)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !461, file: !82, line: 11, baseType: !356, size: 64, align: 64, offset: 384)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !461, file: !82, line: 12, baseType: !83, size: 32, align: 32, offset: 448)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !461, file: !82, line: 13, baseType: !74, size: 64, align: 64, offset: 512)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !461, file: !82, line: 15, baseType: !456, size: 64, align: 64, offset: 576)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !461, file: !82, line: 17, baseType: !476, size: 64, align: 64, offset: 640)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64, align: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!69, !459}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !442, file: !82, line: 17, baseType: !476, size: 64, align: 64, offset: 640)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !442, file: !481, line: 5, baseType: !74, size: 64, align: 64, offset: 704)
!481 = !DIFile(filename: "query-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!482 = !DIDerivedType(tag: DW_TAG_member, name: "server_tag", scope: !442, file: !481, line: 6, baseType: !74, size: 64, align: 64, offset: 768)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "last_unread_msg", scope: !442, file: !481, line: 7, baseType: !356, size: 64, align: 64, offset: 832)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "unwanted", scope: !442, file: !481, line: 9, baseType: !150, size: 1, align: 32, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !442, file: !481, line: 11, baseType: !150, size: 1, align: 32, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !94, file: !98, line: 71, baseType: !487, size: 64, align: 64, offset: 2112)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64, align: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!83, !69, !69}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !94, file: !98, line: 73, baseType: !487, size: 64, align: 64, offset: 2176)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !78, file: !82, line: 9, baseType: !74, size: 64, align: 64, offset: 256)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !78, file: !82, line: 10, baseType: !74, size: 64, align: 64, offset: 320)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !78, file: !82, line: 11, baseType: !356, size: 64, align: 64, offset: 384)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !78, file: !82, line: 12, baseType: !83, size: 32, align: 32, offset: 448)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !78, file: !82, line: 13, baseType: !74, size: 64, align: 64, offset: 512)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !78, file: !82, line: 15, baseType: !456, size: 64, align: 64, offset: 576)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !78, file: !82, line: 17, baseType: !476, size: 64, align: 64, offset: 640)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !78, file: !499, line: 5, baseType: !74, size: 64, align: 64, offset: 704)
!499 = !DIFile(filename: "channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!500 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !78, file: !499, line: 6, baseType: !74, size: 64, align: 64, offset: 768)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !78, file: !499, line: 7, baseType: !356, size: 64, align: 64, offset: 832)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !78, file: !499, line: 9, baseType: !86, size: 64, align: 64, offset: 896)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !78, file: !499, line: 10, baseType: !504, size: 64, align: 64, offset: 960)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64, align: 64)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !77, line: 111, baseType: !506)
!506 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !77, line: 111, flags: DIFlagFwdDecl)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !78, file: !499, line: 12, baseType: !150, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !78, file: !499, line: 13, baseType: !74, size: 64, align: 64, offset: 1088)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !78, file: !499, line: 14, baseType: !83, size: 32, align: 32, offset: 1152)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !78, file: !499, line: 15, baseType: !74, size: 64, align: 64, offset: 1216)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !78, file: !499, line: 17, baseType: !150, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !78, file: !499, line: 18, baseType: !150, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !78, file: !499, line: 19, baseType: !150, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !78, file: !499, line: 20, baseType: !150, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !78, file: !499, line: 22, baseType: !150, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !78, file: !499, line: 23, baseType: !150, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !78, file: !499, line: 24, baseType: !150, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !78, file: !499, line: 25, baseType: !150, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !78, file: !499, line: 26, baseType: !150, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !78, file: !499, line: 31, baseType: !521, size: 64, align: 64, offset: 1344)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64, align: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!74, !75}
!524 = !{i32 2, !"Dwarf Version", i32 4}
!525 = !{i32 2, !"Debug Info Version", i32 3}
!526 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!527 = distinct !DISubprogram(name: "chat_commands_init", scope: !528, file: !528, line: 503, type: !272, isLocal: false, isDefinition: true, scopeLine: 504, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!528 = !DIFile(filename: "chat-commands.c", directory: "/home/lichi/Desktop/irssi/task1")
!529 = !{}
!530 = !DILocation(line: 505, column: 2, scope: !527)
!531 = !DILocation(line: 507, column: 2, scope: !527)
!532 = !DILocation(line: 508, column: 2, scope: !527)
!533 = !DILocation(line: 509, column: 2, scope: !527)
!534 = !DILocation(line: 510, column: 2, scope: !527)
!535 = !DILocation(line: 511, column: 2, scope: !527)
!536 = !DILocation(line: 512, column: 2, scope: !527)
!537 = !DILocation(line: 513, column: 2, scope: !527)
!538 = !DILocation(line: 514, column: 2, scope: !527)
!539 = !DILocation(line: 515, column: 2, scope: !527)
!540 = !DILocation(line: 516, column: 2, scope: !527)
!541 = !DILocation(line: 518, column: 2, scope: !527)
!542 = !DILocation(line: 520, column: 2, scope: !527)
!543 = !DILocation(line: 521, column: 2, scope: !527)
!544 = !DILocation(line: 522, column: 1, scope: !527)
!545 = distinct !DISubprogram(name: "cmd_server", scope: !528, file: !528, line: 248, type: !546, isLocal: true, isDefinition: true, scopeLine: 249, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!546 = !DISubroutineType(types: !547)
!547 = !{null, !69, !92, !459}
!548 = !DILocalVariable(name: "data", arg: 1, scope: !545, file: !528, line: 248, type: !69)
!549 = !DIExpression()
!550 = !DILocation(line: 248, column: 36, scope: !545)
!551 = !DILocalVariable(name: "server", arg: 2, scope: !545, file: !528, line: 248, type: !92)
!552 = !DILocation(line: 248, column: 54, scope: !545)
!553 = !DILocalVariable(name: "item", arg: 3, scope: !545, file: !528, line: 248, type: !459)
!554 = !DILocation(line: 248, column: 75, scope: !545)
!555 = !DILocation(line: 250, column: 27, scope: !545)
!556 = !DILocation(line: 250, column: 33, scope: !545)
!557 = !DILocation(line: 250, column: 41, scope: !545)
!558 = !DILocation(line: 250, column: 2, scope: !545)
!559 = !DILocation(line: 251, column: 1, scope: !545)
!560 = distinct !DISubprogram(name: "cmd_server_connect", scope: !528, file: !528, line: 262, type: !561, isLocal: true, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!561 = !DISubroutineType(types: !562)
!562 = !{null, !69, !92}
!563 = !DILocalVariable(name: "data", arg: 1, scope: !560, file: !528, line: 262, type: !69)
!564 = !DILocation(line: 262, column: 44, scope: !560)
!565 = !DILocalVariable(name: "server", arg: 2, scope: !560, file: !528, line: 262, type: !92)
!566 = !DILocation(line: 262, column: 62, scope: !560)
!567 = !DILocalVariable(name: "conn", scope: !560, file: !528, line: 264, type: !102)
!568 = !DILocation(line: 264, column: 22, scope: !560)
!569 = !DILocalVariable(name: "rawlog_file", scope: !560, file: !528, line: 265, type: !74)
!570 = !DILocation(line: 265, column: 15, scope: !560)
!571 = !DILocalVariable(name: "plus_addr", scope: !560, file: !528, line: 266, type: !83)
!572 = !DILocation(line: 266, column: 6, scope: !560)
!573 = !DILocation(line: 268, column: 2, scope: !560)
!574 = distinct !{!574, !573}
!575 = !DILocation(line: 268, column: 10, scope: !576)
!576 = !DILexicalBlockFile(scope: !577, file: !528, discriminator: 1)
!577 = distinct !DILexicalBlock(scope: !578, file: !528, line: 268, column: 10)
!578 = distinct !DILexicalBlock(scope: !560, file: !528, line: 268, column: 4)
!579 = !DILocation(line: 268, column: 15, scope: !576)
!580 = !DILocation(line: 268, column: 5, scope: !581)
!581 = !DILexicalBlockFile(scope: !582, file: !528, discriminator: 2)
!582 = distinct !DILexicalBlock(scope: !577, file: !528, line: 268, column: 3)
!583 = !DILocation(line: 268, column: 14, scope: !584)
!584 = !DILexicalBlockFile(scope: !585, file: !528, discriminator: 3)
!585 = distinct !DILexicalBlock(scope: !577, file: !528, line: 268, column: 12)
!586 = !DILocation(line: 268, column: 99, scope: !584)
!587 = !DILocation(line: 268, column: 110, scope: !588)
!588 = !DILexicalBlockFile(scope: !578, file: !528, discriminator: 4)
!589 = !DILocation(line: 271, column: 28, scope: !560)
!590 = !DILocation(line: 271, column: 9, scope: !560)
!591 = !DILocation(line: 271, column: 7, scope: !560)
!592 = !DILocation(line: 272, column: 6, scope: !593)
!593 = distinct !DILexicalBlock(scope: !560, file: !528, line: 272, column: 6)
!594 = !DILocation(line: 272, column: 11, scope: !593)
!595 = !DILocation(line: 272, column: 6, scope: !560)
!596 = !DILocation(line: 273, column: 8, scope: !597)
!597 = distinct !DILexicalBlock(scope: !598, file: !528, line: 273, column: 7)
!598 = distinct !DILexicalBlock(scope: !593, file: !528, line: 272, column: 19)
!599 = !DILocation(line: 273, column: 7, scope: !598)
!600 = !DILocation(line: 274, column: 24, scope: !597)
!601 = !DILocation(line: 274, column: 30, scope: !597)
!602 = !DILocation(line: 274, column: 4, scope: !597)
!603 = !DILocation(line: 275, column: 27, scope: !598)
!604 = !DILocation(line: 275, column: 12, scope: !598)
!605 = !DILocation(line: 275, column: 10, scope: !598)
!606 = !DILocation(line: 276, column: 24, scope: !598)
!607 = !DILocation(line: 276, column: 3, scope: !598)
!608 = !DILocation(line: 278, column: 7, scope: !609)
!609 = distinct !DILexicalBlock(scope: !598, file: !528, line: 278, column: 7)
!610 = !DILocation(line: 278, column: 14, scope: !609)
!611 = !DILocation(line: 278, column: 21, scope: !609)
!612 = !DILocation(line: 278, column: 24, scope: !613)
!613 = !DILexicalBlockFile(scope: !609, file: !528, discriminator: 1)
!614 = !DILocation(line: 278, column: 36, scope: !613)
!615 = !DILocation(line: 278, column: 7, scope: !613)
!616 = !DILocation(line: 279, column: 16, scope: !609)
!617 = !DILocation(line: 279, column: 24, scope: !609)
!618 = !DILocation(line: 279, column: 32, scope: !609)
!619 = !DILocation(line: 279, column: 4, scope: !609)
!620 = !DILocation(line: 281, column: 10, scope: !598)
!621 = !DILocation(line: 281, column: 3, scope: !598)
!622 = !DILocation(line: 282, column: 2, scope: !598)
!623 = !DILocation(line: 283, column: 1, scope: !560)
!624 = distinct !DISubprogram(name: "cmd_connect", scope: !528, file: !528, line: 160, type: !625, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!625 = !DISubroutineType(types: !626)
!626 = !{null, !69}
!627 = !DILocalVariable(name: "data", arg: 1, scope: !624, file: !528, line: 160, type: !69)
!628 = !DILocation(line: 160, column: 37, scope: !624)
!629 = !DILocalVariable(name: "conn", scope: !624, file: !528, line: 162, type: !102)
!630 = !DILocation(line: 162, column: 22, scope: !624)
!631 = !DILocalVariable(name: "server", scope: !624, file: !528, line: 163, type: !92)
!632 = !DILocation(line: 163, column: 14, scope: !624)
!633 = !DILocalVariable(name: "rawlog_file", scope: !624, file: !528, line: 164, type: !74)
!634 = !DILocation(line: 164, column: 15, scope: !624)
!635 = !DILocation(line: 166, column: 28, scope: !624)
!636 = !DILocation(line: 166, column: 9, scope: !624)
!637 = !DILocation(line: 166, column: 7, scope: !624)
!638 = !DILocation(line: 167, column: 6, scope: !639)
!639 = distinct !DILexicalBlock(scope: !624, file: !528, line: 167, column: 6)
!640 = !DILocation(line: 167, column: 11, scope: !639)
!641 = !DILocation(line: 167, column: 6, scope: !624)
!642 = !DILocation(line: 168, column: 27, scope: !643)
!643 = distinct !DILexicalBlock(scope: !639, file: !528, line: 167, column: 19)
!644 = !DILocation(line: 168, column: 12, scope: !643)
!645 = !DILocation(line: 168, column: 10, scope: !643)
!646 = !DILocation(line: 169, column: 38, scope: !643)
!647 = !DILocation(line: 169, column: 17, scope: !643)
!648 = !DILocation(line: 171, column: 7, scope: !649)
!649 = distinct !DILexicalBlock(scope: !643, file: !528, line: 171, column: 7)
!650 = !DILocation(line: 171, column: 14, scope: !649)
!651 = !DILocation(line: 171, column: 21, scope: !649)
!652 = !DILocation(line: 171, column: 24, scope: !653)
!653 = !DILexicalBlockFile(scope: !649, file: !528, discriminator: 1)
!654 = !DILocation(line: 171, column: 36, scope: !653)
!655 = !DILocation(line: 171, column: 7, scope: !653)
!656 = !DILocation(line: 172, column: 16, scope: !649)
!657 = !DILocation(line: 172, column: 24, scope: !649)
!658 = !DILocation(line: 172, column: 32, scope: !649)
!659 = !DILocation(line: 172, column: 4, scope: !649)
!660 = !DILocation(line: 174, column: 10, scope: !643)
!661 = !DILocation(line: 174, column: 3, scope: !643)
!662 = !DILocation(line: 175, column: 2, scope: !643)
!663 = !DILocation(line: 176, column: 1, scope: !624)
!664 = distinct !DISubprogram(name: "cmd_disconnect", scope: !528, file: !528, line: 286, type: !561, isLocal: true, isDefinition: true, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!665 = !DILocalVariable(name: "data", arg: 1, scope: !664, file: !528, line: 286, type: !69)
!666 = !DILocation(line: 286, column: 40, scope: !664)
!667 = !DILocalVariable(name: "server", arg: 2, scope: !664, file: !528, line: 286, type: !92)
!668 = !DILocation(line: 286, column: 58, scope: !664)
!669 = !DILocalVariable(name: "tag", scope: !664, file: !528, line: 288, type: !74)
!670 = !DILocation(line: 288, column: 8, scope: !664)
!671 = !DILocalVariable(name: "msg", scope: !664, file: !528, line: 288, type: !74)
!672 = !DILocation(line: 288, column: 14, scope: !664)
!673 = !DILocalVariable(name: "free_arg", scope: !664, file: !528, line: 289, type: !64)
!674 = !DILocation(line: 289, column: 8, scope: !664)
!675 = !DILocation(line: 291, column: 2, scope: !664)
!676 = distinct !{!676, !675}
!677 = !DILocation(line: 291, column: 10, scope: !678)
!678 = !DILexicalBlockFile(scope: !679, file: !528, discriminator: 1)
!679 = distinct !DILexicalBlock(scope: !680, file: !528, line: 291, column: 10)
!680 = distinct !DILexicalBlock(scope: !664, file: !528, line: 291, column: 4)
!681 = !DILocation(line: 291, column: 15, scope: !678)
!682 = !DILocation(line: 291, column: 5, scope: !683)
!683 = !DILexicalBlockFile(scope: !684, file: !528, discriminator: 2)
!684 = distinct !DILexicalBlock(scope: !679, file: !528, line: 291, column: 3)
!685 = !DILocation(line: 291, column: 14, scope: !686)
!686 = !DILexicalBlockFile(scope: !687, file: !528, discriminator: 3)
!687 = distinct !DILexicalBlock(scope: !679, file: !528, line: 291, column: 12)
!688 = !DILocation(line: 291, column: 99, scope: !686)
!689 = !DILocation(line: 291, column: 110, scope: !690)
!690 = !DILexicalBlockFile(scope: !680, file: !528, discriminator: 4)
!691 = !DILocation(line: 293, column: 22, scope: !692)
!692 = distinct !DILexicalBlock(scope: !664, file: !528, line: 293, column: 6)
!693 = !DILocation(line: 293, column: 7, scope: !692)
!694 = !DILocation(line: 293, column: 6, scope: !664)
!695 = !DILocation(line: 294, column: 3, scope: !692)
!696 = !DILocation(line: 296, column: 7, scope: !697)
!697 = distinct !DILexicalBlock(scope: !664, file: !528, line: 296, column: 6)
!698 = !DILocation(line: 296, column: 6, scope: !697)
!699 = !DILocation(line: 296, column: 11, scope: !697)
!700 = !DILocation(line: 296, column: 19, scope: !697)
!701 = !DILocation(line: 296, column: 32, scope: !702)
!702 = !DILexicalBlockFile(scope: !697, file: !528, discriminator: 1)
!703 = !DILocation(line: 296, column: 22, scope: !702)
!704 = !DILocation(line: 296, column: 42, scope: !702)
!705 = !DILocation(line: 296, column: 6, scope: !702)
!706 = !DILocation(line: 297, column: 28, scope: !707)
!707 = distinct !DILexicalBlock(scope: !697, file: !528, line: 296, column: 48)
!708 = !DILocation(line: 297, column: 12, scope: !707)
!709 = !DILocation(line: 297, column: 10, scope: !707)
!710 = !DILocation(line: 298, column: 7, scope: !711)
!711 = distinct !DILexicalBlock(scope: !707, file: !528, line: 298, column: 7)
!712 = !DILocation(line: 298, column: 14, scope: !711)
!713 = !DILocation(line: 298, column: 7, scope: !707)
!714 = !DILocation(line: 299, column: 36, scope: !711)
!715 = !DILocation(line: 299, column: 13, scope: !711)
!716 = !DILocation(line: 299, column: 11, scope: !711)
!717 = !DILocation(line: 299, column: 4, scope: !711)
!718 = !DILocation(line: 300, column: 2, scope: !707)
!719 = !DILocation(line: 301, column: 6, scope: !720)
!720 = distinct !DILexicalBlock(scope: !664, file: !528, line: 301, column: 6)
!721 = !DILocation(line: 301, column: 13, scope: !720)
!722 = !DILocation(line: 301, column: 6, scope: !664)
!723 = !DILocation(line: 301, column: 21, scope: !724)
!724 = !DILexicalBlockFile(scope: !720, file: !528, discriminator: 1)
!725 = distinct !{!725, !726}
!726 = !DILocation(line: 301, column: 21, scope: !720)
!727 = !DILocation(line: 301, column: 42, scope: !728)
!728 = !DILexicalBlockFile(scope: !729, file: !528, discriminator: 2)
!729 = distinct !DILexicalBlock(scope: !720, file: !528, line: 301, column: 24)
!730 = !DILocation(line: 301, column: 26, scope: !728)
!731 = !DILocation(line: 301, column: 53, scope: !728)
!732 = distinct !{!732, !733}
!733 = !DILocation(line: 301, column: 53, scope: !729)
!734 = !DILocation(line: 301, column: 58, scope: !735)
!735 = !DILexicalBlockFile(scope: !736, file: !528, discriminator: 3)
!736 = distinct !DILexicalBlock(scope: !729, file: !528, line: 301, column: 56)
!737 = !DILocation(line: 301, column: 136, scope: !738)
!738 = !DILexicalBlockFile(scope: !735, file: !528, discriminator: 6)
!739 = !DILocation(line: 301, column: 151, scope: !735)
!740 = !DILocation(line: 301, column: 172, scope: !741)
!741 = !DILexicalBlockFile(scope: !729, file: !528, discriminator: 4)
!742 = !DILocation(line: 301, column: 172, scope: !743)
!743 = !DILexicalBlockFile(scope: !729, file: !528, discriminator: 5)
!744 = !DILocation(line: 303, column: 7, scope: !745)
!745 = distinct !DILexicalBlock(scope: !664, file: !528, line: 303, column: 6)
!746 = !DILocation(line: 303, column: 6, scope: !745)
!747 = !DILocation(line: 303, column: 11, scope: !745)
!748 = !DILocation(line: 303, column: 6, scope: !664)
!749 = !DILocation(line: 303, column: 35, scope: !750)
!750 = !DILexicalBlockFile(scope: !745, file: !528, discriminator: 1)
!751 = !DILocation(line: 303, column: 24, scope: !750)
!752 = !DILocation(line: 303, column: 20, scope: !750)
!753 = !DILocation(line: 304, column: 32, scope: !664)
!754 = !DILocation(line: 304, column: 40, scope: !664)
!755 = !DILocation(line: 304, column: 2, scope: !664)
!756 = !DILocation(line: 306, column: 18, scope: !664)
!757 = !DILocation(line: 306, column: 2, scope: !664)
!758 = !DILocation(line: 307, column: 20, scope: !664)
!759 = !DILocation(line: 307, column: 2, scope: !664)
!760 = !DILocation(line: 308, column: 1, scope: !664)
!761 = !DILocation(line: 308, column: 1, scope: !762)
!762 = !DILexicalBlockFile(scope: !664, file: !528, discriminator: 1)
!763 = distinct !DISubprogram(name: "cmd_quit", scope: !528, file: !528, line: 311, type: !625, isLocal: true, isDefinition: true, scopeLine: 312, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!764 = !DILocalVariable(name: "data", arg: 1, scope: !763, file: !528, line: 311, type: !69)
!765 = !DILocation(line: 311, column: 34, scope: !763)
!766 = !DILocalVariable(name: "tmp", scope: !763, file: !528, line: 313, type: !284)
!767 = !DILocation(line: 313, column: 10, scope: !763)
!768 = !DILocalVariable(name: "next", scope: !763, file: !528, line: 313, type: !284)
!769 = !DILocation(line: 313, column: 16, scope: !763)
!770 = !DILocalVariable(name: "quitmsg", scope: !763, file: !528, line: 314, type: !69)
!771 = !DILocation(line: 314, column: 14, scope: !763)
!772 = !DILocalVariable(name: "str", scope: !763, file: !528, line: 315, type: !74)
!773 = !DILocation(line: 315, column: 8, scope: !763)
!774 = !DILocation(line: 317, column: 2, scope: !763)
!775 = distinct !{!775, !774}
!776 = !DILocation(line: 317, column: 10, scope: !777)
!777 = !DILexicalBlockFile(scope: !778, file: !528, discriminator: 1)
!778 = distinct !DILexicalBlock(scope: !779, file: !528, line: 317, column: 10)
!779 = distinct !DILexicalBlock(scope: !763, file: !528, line: 317, column: 4)
!780 = !DILocation(line: 317, column: 15, scope: !777)
!781 = !DILocation(line: 317, column: 5, scope: !782)
!782 = !DILexicalBlockFile(scope: !783, file: !528, discriminator: 2)
!783 = distinct !DILexicalBlock(scope: !778, file: !528, line: 317, column: 3)
!784 = !DILocation(line: 317, column: 14, scope: !785)
!785 = !DILexicalBlockFile(scope: !786, file: !528, discriminator: 3)
!786 = distinct !DILexicalBlock(scope: !778, file: !528, line: 317, column: 12)
!787 = !DILocation(line: 317, column: 99, scope: !785)
!788 = !DILocation(line: 317, column: 110, scope: !789)
!789 = !DILexicalBlockFile(scope: !779, file: !528, discriminator: 4)
!790 = !DILocation(line: 319, column: 13, scope: !763)
!791 = !DILocation(line: 319, column: 12, scope: !763)
!792 = !DILocation(line: 319, column: 18, scope: !763)
!793 = !DILocation(line: 319, column: 28, scope: !794)
!794 = !DILexicalBlockFile(scope: !763, file: !528, discriminator: 1)
!795 = !DILocation(line: 319, column: 12, scope: !794)
!796 = !DILocation(line: 320, column: 3, scope: !763)
!797 = !DILocation(line: 319, column: 12, scope: !798)
!798 = !DILexicalBlockFile(scope: !763, file: !528, discriminator: 2)
!799 = !DILocation(line: 319, column: 12, scope: !800)
!800 = !DILexicalBlockFile(scope: !763, file: !528, discriminator: 3)
!801 = !DILocation(line: 319, column: 10, scope: !800)
!802 = !DILocation(line: 323, column: 13, scope: !803)
!803 = distinct !DILexicalBlock(scope: !763, file: !528, line: 323, column: 2)
!804 = !DILocation(line: 323, column: 11, scope: !803)
!805 = !DILocation(line: 323, column: 7, scope: !803)
!806 = !DILocation(line: 323, column: 22, scope: !807)
!807 = !DILexicalBlockFile(scope: !808, file: !528, discriminator: 1)
!808 = distinct !DILexicalBlock(scope: !803, file: !528, line: 323, column: 2)
!809 = !DILocation(line: 323, column: 26, scope: !807)
!810 = !DILocation(line: 323, column: 2, scope: !807)
!811 = !DILocation(line: 324, column: 10, scope: !812)
!812 = distinct !DILexicalBlock(scope: !808, file: !528, line: 323, column: 46)
!813 = !DILocation(line: 324, column: 15, scope: !812)
!814 = !DILocation(line: 324, column: 8, scope: !812)
!815 = !DILocation(line: 326, column: 33, scope: !812)
!816 = !DILocation(line: 326, column: 9, scope: !812)
!817 = !DILocation(line: 326, column: 7, scope: !812)
!818 = !DILocation(line: 327, column: 18, scope: !812)
!819 = !DILocation(line: 327, column: 23, scope: !812)
!820 = !DILocation(line: 327, column: 28, scope: !812)
!821 = !DILocation(line: 327, column: 3, scope: !812)
!822 = !DILocation(line: 328, column: 10, scope: !812)
!823 = !DILocation(line: 328, column: 3, scope: !812)
!824 = !DILocation(line: 329, column: 2, scope: !812)
!825 = !DILocation(line: 323, column: 40, scope: !826)
!826 = !DILexicalBlockFile(scope: !808, file: !528, discriminator: 2)
!827 = !DILocation(line: 323, column: 38, scope: !826)
!828 = !DILocation(line: 323, column: 2, scope: !826)
!829 = distinct !{!829, !830}
!830 = !DILocation(line: 323, column: 2, scope: !763)
!831 = !DILocation(line: 331, column: 2, scope: !763)
!832 = !DILocation(line: 332, column: 1, scope: !763)
!833 = !DILocation(line: 332, column: 1, scope: !794)
!834 = distinct !DISubprogram(name: "cmd_msg", scope: !528, file: !528, line: 335, type: !546, isLocal: true, isDefinition: true, scopeLine: 336, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!835 = !DILocalVariable(name: "data", arg: 1, scope: !834, file: !528, line: 335, type: !69)
!836 = !DILocation(line: 335, column: 33, scope: !834)
!837 = !DILocalVariable(name: "server", arg: 2, scope: !834, file: !528, line: 335, type: !92)
!838 = !DILocation(line: 335, column: 51, scope: !834)
!839 = !DILocalVariable(name: "item", arg: 3, scope: !834, file: !528, line: 335, type: !459)
!840 = !DILocation(line: 335, column: 72, scope: !834)
!841 = !DILocalVariable(name: "optlist", scope: !834, file: !528, line: 337, type: !86)
!842 = !DILocation(line: 337, column: 14, scope: !834)
!843 = !DILocalVariable(name: "target", scope: !834, file: !528, line: 338, type: !74)
!844 = !DILocation(line: 338, column: 8, scope: !834)
!845 = !DILocalVariable(name: "origtarget", scope: !834, file: !528, line: 338, type: !74)
!846 = !DILocation(line: 338, column: 17, scope: !834)
!847 = !DILocalVariable(name: "msg", scope: !834, file: !528, line: 338, type: !74)
!848 = !DILocation(line: 338, column: 30, scope: !834)
!849 = !DILocalVariable(name: "free_arg", scope: !834, file: !528, line: 339, type: !64)
!850 = !DILocation(line: 339, column: 8, scope: !834)
!851 = !DILocalVariable(name: "free_ret", scope: !834, file: !528, line: 340, type: !83)
!852 = !DILocation(line: 340, column: 6, scope: !834)
!853 = !DILocalVariable(name: "target_type", scope: !834, file: !528, line: 340, type: !83)
!854 = !DILocation(line: 340, column: 16, scope: !834)
!855 = !DILocation(line: 342, column: 2, scope: !834)
!856 = distinct !{!856, !855}
!857 = !DILocation(line: 342, column: 10, scope: !858)
!858 = !DILexicalBlockFile(scope: !859, file: !528, discriminator: 1)
!859 = distinct !DILexicalBlock(scope: !860, file: !528, line: 342, column: 10)
!860 = distinct !DILexicalBlock(scope: !834, file: !528, line: 342, column: 4)
!861 = !DILocation(line: 342, column: 15, scope: !858)
!862 = !DILocation(line: 342, column: 5, scope: !863)
!863 = !DILexicalBlockFile(scope: !864, file: !528, discriminator: 2)
!864 = distinct !DILexicalBlock(scope: !859, file: !528, line: 342, column: 3)
!865 = !DILocation(line: 342, column: 14, scope: !866)
!866 = !DILexicalBlockFile(scope: !867, file: !528, discriminator: 3)
!867 = distinct !DILexicalBlock(scope: !859, file: !528, line: 342, column: 12)
!868 = !DILocation(line: 342, column: 99, scope: !866)
!869 = !DILocation(line: 342, column: 110, scope: !870)
!870 = !DILexicalBlockFile(scope: !860, file: !528, discriminator: 4)
!871 = !DILocation(line: 344, column: 22, scope: !872)
!872 = distinct !DILexicalBlock(scope: !834, file: !528, line: 344, column: 6)
!873 = !DILocation(line: 344, column: 7, scope: !872)
!874 = !DILocation(line: 344, column: 6, scope: !834)
!875 = !DILocation(line: 347, column: 3, scope: !872)
!876 = !DILocation(line: 348, column: 7, scope: !877)
!877 = distinct !DILexicalBlock(scope: !834, file: !528, line: 348, column: 6)
!878 = !DILocation(line: 348, column: 6, scope: !877)
!879 = !DILocation(line: 348, column: 14, scope: !877)
!880 = !DILocation(line: 348, column: 22, scope: !877)
!881 = !DILocation(line: 348, column: 26, scope: !882)
!882 = !DILexicalBlockFile(scope: !877, file: !528, discriminator: 1)
!883 = !DILocation(line: 348, column: 25, scope: !882)
!884 = !DILocation(line: 348, column: 30, scope: !882)
!885 = !DILocation(line: 348, column: 6, scope: !882)
!886 = !DILocation(line: 348, column: 39, scope: !887)
!887 = !DILexicalBlockFile(scope: !877, file: !528, discriminator: 2)
!888 = distinct !{!888, !889}
!889 = !DILocation(line: 348, column: 39, scope: !877)
!890 = !DILocation(line: 348, column: 60, scope: !891)
!891 = !DILexicalBlockFile(scope: !892, file: !528, discriminator: 3)
!892 = distinct !DILexicalBlock(scope: !877, file: !528, line: 348, column: 42)
!893 = !DILocation(line: 348, column: 44, scope: !891)
!894 = !DILocation(line: 348, column: 71, scope: !891)
!895 = distinct !{!895, !896}
!896 = !DILocation(line: 348, column: 71, scope: !892)
!897 = !DILocation(line: 348, column: 76, scope: !898)
!898 = !DILexicalBlockFile(scope: !899, file: !528, discriminator: 4)
!899 = distinct !DILexicalBlock(scope: !892, file: !528, line: 348, column: 74)
!900 = !DILocation(line: 348, column: 158, scope: !901)
!901 = !DILexicalBlockFile(scope: !898, file: !528, discriminator: 7)
!902 = !DILocation(line: 348, column: 173, scope: !898)
!903 = !DILocation(line: 348, column: 194, scope: !904)
!904 = !DILexicalBlockFile(scope: !892, file: !528, discriminator: 5)
!905 = !DILocation(line: 348, column: 194, scope: !906)
!906 = !DILexicalBlockFile(scope: !892, file: !528, discriminator: 6)
!907 = !DILocation(line: 350, column: 41, scope: !834)
!908 = !DILocation(line: 350, column: 50, scope: !834)
!909 = !DILocation(line: 350, column: 11, scope: !834)
!910 = !DILocation(line: 350, column: 9, scope: !834)
!911 = !DILocation(line: 351, column: 6, scope: !912)
!912 = distinct !DILexicalBlock(scope: !834, file: !528, line: 351, column: 6)
!913 = !DILocation(line: 351, column: 13, scope: !912)
!914 = !DILocation(line: 351, column: 20, scope: !912)
!915 = !DILocation(line: 351, column: 24, scope: !916)
!916 = !DILexicalBlockFile(scope: !912, file: !528, discriminator: 1)
!917 = !DILocation(line: 351, column: 32, scope: !916)
!918 = !DILocation(line: 351, column: 6, scope: !916)
!919 = !DILocation(line: 352, column: 3, scope: !912)
!920 = distinct !{!920, !919}
!921 = !DILocation(line: 352, column: 24, scope: !922)
!922 = !DILexicalBlockFile(scope: !923, file: !528, discriminator: 1)
!923 = distinct !DILexicalBlock(scope: !912, file: !528, line: 352, column: 6)
!924 = !DILocation(line: 352, column: 8, scope: !922)
!925 = !DILocation(line: 352, column: 35, scope: !922)
!926 = distinct !{!926, !927}
!927 = !DILocation(line: 352, column: 35, scope: !923)
!928 = !DILocation(line: 352, column: 40, scope: !929)
!929 = !DILexicalBlockFile(scope: !930, file: !528, discriminator: 2)
!930 = distinct !DILexicalBlock(scope: !923, file: !528, line: 352, column: 38)
!931 = !DILocation(line: 352, column: 118, scope: !932)
!932 = !DILexicalBlockFile(scope: !929, file: !528, discriminator: 5)
!933 = !DILocation(line: 352, column: 133, scope: !929)
!934 = !DILocation(line: 352, column: 154, scope: !935)
!935 = !DILexicalBlockFile(scope: !923, file: !528, discriminator: 3)
!936 = !DILocation(line: 352, column: 154, scope: !937)
!937 = !DILexicalBlockFile(scope: !923, file: !528, discriminator: 4)
!938 = !DILocation(line: 354, column: 22, scope: !834)
!939 = !DILocation(line: 354, column: 20, scope: !834)
!940 = !DILocation(line: 355, column: 11, scope: !834)
!941 = !DILocation(line: 356, column: 16, scope: !942)
!942 = distinct !DILexicalBlock(scope: !834, file: !528, line: 356, column: 6)
!943 = !DILocation(line: 356, column: 6, scope: !942)
!944 = !DILocation(line: 356, column: 29, scope: !942)
!945 = !DILocation(line: 356, column: 34, scope: !942)
!946 = !DILocation(line: 356, column: 47, scope: !947)
!947 = !DILexicalBlockFile(scope: !942, file: !528, discriminator: 1)
!948 = !DILocation(line: 356, column: 37, scope: !947)
!949 = !DILocation(line: 356, column: 60, scope: !947)
!950 = !DILocation(line: 356, column: 6, scope: !947)
!951 = !DILocation(line: 357, column: 35, scope: !952)
!952 = distinct !DILexicalBlock(scope: !942, file: !528, line: 356, column: 66)
!953 = !DILocation(line: 357, column: 43, scope: !952)
!954 = !DILocation(line: 357, column: 12, scope: !952)
!955 = !DILocation(line: 357, column: 10, scope: !952)
!956 = !DILocation(line: 359, column: 7, scope: !957)
!957 = distinct !DILexicalBlock(scope: !952, file: !528, line: 359, column: 7)
!958 = !DILocation(line: 359, column: 14, scope: !957)
!959 = !DILocation(line: 359, column: 21, scope: !957)
!960 = !DILocation(line: 359, column: 25, scope: !961)
!961 = !DILexicalBlockFile(scope: !957, file: !528, discriminator: 1)
!962 = !DILocation(line: 359, column: 24, scope: !961)
!963 = !DILocation(line: 359, column: 32, scope: !961)
!964 = !DILocation(line: 359, column: 7, scope: !961)
!965 = !DILocation(line: 360, column: 8, scope: !966)
!966 = distinct !DILexicalBlock(scope: !967, file: !528, line: 360, column: 8)
!967 = distinct !DILexicalBlock(scope: !957, file: !528, line: 359, column: 41)
!968 = !DILocation(line: 360, column: 8, scope: !967)
!969 = !DILocation(line: 361, column: 12, scope: !966)
!970 = !DILocation(line: 361, column: 5, scope: !966)
!971 = !DILocation(line: 362, column: 11, scope: !967)
!972 = !DILocation(line: 363, column: 13, scope: !967)
!973 = !DILocation(line: 364, column: 3, scope: !967)
!974 = !DILocation(line: 365, column: 2, scope: !952)
!975 = !DILocation(line: 367, column: 6, scope: !976)
!976 = distinct !DILexicalBlock(scope: !834, file: !528, line: 367, column: 6)
!977 = !DILocation(line: 367, column: 13, scope: !976)
!978 = !DILocation(line: 367, column: 6, scope: !834)
!979 = !DILocation(line: 368, column: 17, scope: !980)
!980 = distinct !DILexicalBlock(scope: !981, file: !528, line: 368, column: 7)
!981 = distinct !DILexicalBlock(scope: !976, file: !528, line: 367, column: 21)
!982 = !DILocation(line: 368, column: 7, scope: !980)
!983 = !DILocation(line: 368, column: 30, scope: !980)
!984 = !DILocation(line: 368, column: 7, scope: !981)
!985 = !DILocation(line: 370, column: 8, scope: !986)
!986 = distinct !DILexicalBlock(scope: !987, file: !528, line: 370, column: 8)
!987 = distinct !DILexicalBlock(scope: !980, file: !528, line: 368, column: 36)
!988 = !DILocation(line: 370, column: 13, scope: !986)
!989 = !DILocation(line: 370, column: 8, scope: !987)
!990 = !DILocation(line: 371, column: 5, scope: !986)
!991 = distinct !{!991, !990}
!992 = !DILocation(line: 371, column: 26, scope: !993)
!993 = !DILexicalBlockFile(scope: !994, file: !528, discriminator: 1)
!994 = distinct !DILexicalBlock(scope: !986, file: !528, line: 371, column: 8)
!995 = !DILocation(line: 371, column: 10, scope: !993)
!996 = !DILocation(line: 371, column: 37, scope: !993)
!997 = distinct !{!997, !998}
!998 = !DILocation(line: 371, column: 37, scope: !994)
!999 = !DILocation(line: 371, column: 42, scope: !1000)
!1000 = !DILexicalBlockFile(scope: !1001, file: !528, discriminator: 2)
!1001 = distinct !DILexicalBlock(scope: !994, file: !528, line: 371, column: 40)
!1002 = !DILocation(line: 371, column: 117, scope: !1003)
!1003 = !DILexicalBlockFile(scope: !1000, file: !528, discriminator: 5)
!1004 = !DILocation(line: 371, column: 132, scope: !1000)
!1005 = !DILocation(line: 371, column: 153, scope: !1006)
!1006 = !DILexicalBlockFile(scope: !994, file: !528, discriminator: 3)
!1007 = !DILocation(line: 371, column: 153, scope: !1008)
!1008 = !DILexicalBlockFile(scope: !994, file: !528, discriminator: 4)
!1009 = !DILocation(line: 373, column: 61, scope: !987)
!1010 = !DILocation(line: 373, column: 36, scope: !987)
!1011 = !DILocation(line: 373, column: 20, scope: !987)
!1012 = !DILocation(line: 373, column: 19, scope: !987)
!1013 = !DILocation(line: 373, column: 18, scope: !987)
!1014 = !DILocation(line: 373, column: 16, scope: !987)
!1015 = !DILocation(line: 375, column: 24, scope: !987)
!1016 = !DILocation(line: 375, column: 31, scope: !987)
!1017 = !DILocation(line: 375, column: 42, scope: !987)
!1018 = !DILocation(line: 375, column: 23, scope: !987)
!1019 = !DILocation(line: 375, column: 11, scope: !987)
!1020 = !DILocation(line: 376, column: 3, scope: !987)
!1021 = !DILocation(line: 376, column: 34, scope: !1022)
!1022 = !DILexicalBlockFile(scope: !1023, file: !528, discriminator: 1)
!1023 = distinct !DILexicalBlock(scope: !980, file: !528, line: 376, column: 14)
!1024 = !DILocation(line: 376, column: 14, scope: !1022)
!1025 = !DILocation(line: 376, column: 54, scope: !1022)
!1026 = !DILocation(line: 377, column: 37, scope: !1023)
!1027 = !DILocation(line: 377, column: 25, scope: !1023)
!1028 = !DILocation(line: 378, column: 32, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1023, file: !528, line: 378, column: 12)
!1030 = !DILocation(line: 378, column: 12, scope: !1029)
!1031 = !DILocation(line: 378, column: 49, scope: !1029)
!1032 = !DILocation(line: 378, column: 12, scope: !1023)
!1033 = !DILocation(line: 379, column: 16, scope: !1029)
!1034 = !DILocation(line: 379, column: 4, scope: !1029)
!1035 = !DILocation(line: 386, column: 20, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1029, file: !528, line: 380, column: 8)
!1037 = !DILocation(line: 386, column: 29, scope: !1036)
!1038 = !DILocation(line: 386, column: 39, scope: !1036)
!1039 = !DILocation(line: 386, column: 47, scope: !1036)
!1040 = !DILocation(line: 386, column: 19, scope: !1036)
!1041 = !DILocation(line: 386, column: 18, scope: !1036)
!1042 = !DILocation(line: 386, column: 16, scope: !1036)
!1043 = !DILocation(line: 389, column: 2, scope: !981)
!1044 = !DILocation(line: 390, column: 6, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !834, file: !528, line: 390, column: 6)
!1046 = !DILocation(line: 390, column: 13, scope: !1045)
!1047 = !DILocation(line: 390, column: 6, scope: !834)
!1048 = !DILocalVariable(name: "splitmsgs", scope: !1049, file: !528, line: 391, type: !431)
!1049 = distinct !DILexicalBlock(scope: !1045, file: !528, line: 390, column: 21)
!1050 = !DILocation(line: 391, column: 10, scope: !1049)
!1051 = !DILocalVariable(name: "tmp", scope: !1049, file: !528, line: 392, type: !431)
!1052 = !DILocation(line: 392, column: 10, scope: !1049)
!1053 = !DILocalVariable(name: "singlemsg", scope: !1049, file: !528, line: 393, type: !1054)
!1054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 128, align: 64, elements: !375)
!1055 = !DILocation(line: 393, column: 9, scope: !1049)
!1056 = !DILocation(line: 393, column: 23, scope: !1049)
!1057 = !DILocation(line: 393, column: 25, scope: !1049)
!1058 = !DILocalVariable(name: "m", scope: !1049, file: !528, line: 394, type: !74)
!1059 = !DILocation(line: 394, column: 9, scope: !1049)
!1060 = !DILocalVariable(name: "n", scope: !1049, file: !528, line: 395, type: !83)
!1061 = !DILocation(line: 395, column: 7, scope: !1049)
!1062 = !DILocation(line: 401, column: 7, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1049, file: !528, line: 401, column: 7)
!1064 = !DILocation(line: 401, column: 15, scope: !1063)
!1065 = !DILocation(line: 401, column: 29, scope: !1063)
!1066 = !DILocation(line: 401, column: 7, scope: !1049)
!1067 = !DILocation(line: 402, column: 22, scope: !1063)
!1068 = !DILocation(line: 402, column: 30, scope: !1063)
!1069 = !DILocation(line: 402, column: 44, scope: !1063)
!1070 = !DILocation(line: 402, column: 52, scope: !1063)
!1071 = !DILocation(line: 403, column: 9, scope: !1063)
!1072 = !DILocation(line: 402, column: 20, scope: !1063)
!1073 = !DILocation(line: 402, column: 14, scope: !1063)
!1074 = !DILocation(line: 402, column: 4, scope: !1063)
!1075 = !DILocation(line: 405, column: 16, scope: !1063)
!1076 = !DILocation(line: 405, column: 14, scope: !1063)
!1077 = !DILocation(line: 407, column: 3, scope: !1049)
!1078 = !DILocation(line: 407, column: 26, scope: !1079)
!1079 = !DILexicalBlockFile(scope: !1049, file: !528, discriminator: 1)
!1080 = !DILocation(line: 407, column: 15, scope: !1079)
!1081 = !DILocation(line: 407, column: 13, scope: !1079)
!1082 = !DILocation(line: 407, column: 3, scope: !1079)
!1083 = !DILocation(line: 408, column: 37, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1049, file: !528, line: 407, column: 32)
!1085 = !DILocation(line: 408, column: 45, scope: !1084)
!1086 = !DILocation(line: 408, column: 53, scope: !1084)
!1087 = !DILocation(line: 409, column: 30, scope: !1084)
!1088 = !DILocation(line: 409, column: 21, scope: !1084)
!1089 = !DILocation(line: 409, column: 10, scope: !1084)
!1090 = !DILocation(line: 408, column: 4, scope: !1084)
!1091 = !DILocation(line: 410, column: 16, scope: !1084)
!1092 = !DILocation(line: 410, column: 28, scope: !1084)
!1093 = !DILocation(line: 412, column: 35, scope: !1084)
!1094 = !DILocation(line: 412, column: 43, scope: !1084)
!1095 = !DILocation(line: 413, column: 9, scope: !1084)
!1096 = !DILocation(line: 413, column: 17, scope: !1084)
!1097 = !DILocation(line: 410, column: 4, scope: !1084)
!1098 = !DILocation(line: 407, column: 3, scope: !1099)
!1099 = !DILexicalBlockFile(scope: !1049, file: !528, discriminator: 2)
!1100 = distinct !{!1100, !1077}
!1101 = !DILocation(line: 415, column: 14, scope: !1049)
!1102 = !DILocation(line: 415, column: 3, scope: !1049)
!1103 = !DILocation(line: 416, column: 2, scope: !1049)
!1104 = !DILocation(line: 417, column: 41, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1045, file: !528, line: 416, column: 9)
!1106 = !DILocation(line: 417, column: 49, scope: !1105)
!1107 = !DILocation(line: 417, column: 54, scope: !1105)
!1108 = !DILocation(line: 418, column: 8, scope: !1105)
!1109 = !DILocation(line: 417, column: 3, scope: !1105)
!1110 = !DILocation(line: 421, column: 6, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !834, file: !528, line: 421, column: 6)
!1112 = !DILocation(line: 421, column: 15, scope: !1111)
!1113 = !DILocation(line: 421, column: 18, scope: !1114)
!1114 = !DILexicalBlockFile(scope: !1111, file: !528, discriminator: 1)
!1115 = !DILocation(line: 421, column: 25, scope: !1114)
!1116 = !DILocation(line: 421, column: 6, scope: !1114)
!1117 = !DILocation(line: 421, column: 40, scope: !1118)
!1118 = !DILexicalBlockFile(scope: !1111, file: !528, discriminator: 2)
!1119 = !DILocation(line: 421, column: 33, scope: !1118)
!1120 = !DILocation(line: 422, column: 18, scope: !834)
!1121 = !DILocation(line: 422, column: 2, scope: !834)
!1122 = !DILocation(line: 423, column: 1, scope: !834)
!1123 = !DILocation(line: 423, column: 1, scope: !1124)
!1124 = !DILexicalBlockFile(scope: !834, file: !528, discriminator: 1)
!1125 = distinct !DISubprogram(name: "cmd_foreach", scope: !528, file: !528, line: 432, type: !546, isLocal: true, isDefinition: true, scopeLine: 434, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1126 = !DILocalVariable(name: "data", arg: 1, scope: !1125, file: !528, line: 432, type: !69)
!1127 = !DILocation(line: 432, column: 37, scope: !1125)
!1128 = !DILocalVariable(name: "server", arg: 2, scope: !1125, file: !528, line: 432, type: !92)
!1129 = !DILocation(line: 432, column: 55, scope: !1125)
!1130 = !DILocalVariable(name: "item", arg: 3, scope: !1125, file: !528, line: 433, type: !459)
!1131 = !DILocation(line: 433, column: 17, scope: !1125)
!1132 = !DILocation(line: 435, column: 28, scope: !1125)
!1133 = !DILocation(line: 435, column: 34, scope: !1125)
!1134 = !DILocation(line: 435, column: 42, scope: !1125)
!1135 = !DILocation(line: 435, column: 2, scope: !1125)
!1136 = !DILocation(line: 436, column: 1, scope: !1125)
!1137 = distinct !DISubprogram(name: "cmd_foreach_server", scope: !528, file: !528, line: 439, type: !561, isLocal: true, isDefinition: true, scopeLine: 440, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1138 = !DILocalVariable(name: "data", arg: 1, scope: !1137, file: !528, line: 439, type: !69)
!1139 = !DILocation(line: 439, column: 44, scope: !1137)
!1140 = !DILocalVariable(name: "server", arg: 2, scope: !1137, file: !528, line: 439, type: !92)
!1141 = !DILocation(line: 439, column: 62, scope: !1137)
!1142 = !DILocalVariable(name: "list", scope: !1137, file: !528, line: 441, type: !284)
!1143 = !DILocation(line: 441, column: 10, scope: !1137)
!1144 = !DILocalVariable(name: "cmdchars", scope: !1137, file: !528, line: 442, type: !69)
!1145 = !DILocation(line: 442, column: 14, scope: !1137)
!1146 = !DILocalVariable(name: "str", scope: !1137, file: !528, line: 443, type: !74)
!1147 = !DILocation(line: 443, column: 8, scope: !1137)
!1148 = !DILocation(line: 445, column: 13, scope: !1137)
!1149 = !DILocation(line: 445, column: 11, scope: !1137)
!1150 = !DILocation(line: 446, column: 15, scope: !1137)
!1151 = !DILocation(line: 446, column: 26, scope: !1137)
!1152 = !DILocation(line: 446, column: 25, scope: !1137)
!1153 = !DILocation(line: 446, column: 8, scope: !1137)
!1154 = !DILocation(line: 446, column: 32, scope: !1137)
!1155 = !DILocation(line: 446, column: 50, scope: !1156)
!1156 = !DILexicalBlockFile(scope: !1137, file: !528, discriminator: 1)
!1157 = !DILocation(line: 446, column: 41, scope: !1156)
!1158 = !DILocation(line: 446, column: 8, scope: !1156)
!1159 = !DILocation(line: 447, column: 28, scope: !1137)
!1160 = !DILocation(line: 447, column: 27, scope: !1137)
!1161 = !DILocation(line: 447, column: 38, scope: !1137)
!1162 = !DILocation(line: 447, column: 3, scope: !1137)
!1163 = !DILocation(line: 446, column: 8, scope: !1164)
!1164 = !DILexicalBlockFile(scope: !1137, file: !528, discriminator: 2)
!1165 = !DILocation(line: 446, column: 8, scope: !1166)
!1166 = !DILexicalBlockFile(scope: !1137, file: !528, discriminator: 3)
!1167 = !DILocation(line: 446, column: 6, scope: !1166)
!1168 = !DILocation(line: 449, column: 22, scope: !1137)
!1169 = !DILocation(line: 449, column: 9, scope: !1137)
!1170 = !DILocation(line: 449, column: 7, scope: !1137)
!1171 = !DILocation(line: 450, column: 2, scope: !1137)
!1172 = !DILocation(line: 450, column: 9, scope: !1156)
!1173 = !DILocation(line: 450, column: 14, scope: !1156)
!1174 = !DILocation(line: 450, column: 2, scope: !1156)
!1175 = !DILocation(line: 451, column: 34, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1137, file: !528, line: 450, column: 22)
!1177 = !DILocation(line: 451, column: 39, scope: !1176)
!1178 = !DILocation(line: 451, column: 45, scope: !1176)
!1179 = !DILocation(line: 451, column: 3, scope: !1176)
!1180 = !DILocation(line: 452, column: 25, scope: !1176)
!1181 = !DILocation(line: 452, column: 31, scope: !1176)
!1182 = !DILocation(line: 452, column: 37, scope: !1176)
!1183 = !DILocation(line: 452, column: 10, scope: !1176)
!1184 = !DILocation(line: 452, column: 8, scope: !1176)
!1185 = !DILocation(line: 450, column: 2, scope: !1164)
!1186 = distinct !{!1186, !1171}
!1187 = !DILocation(line: 455, column: 9, scope: !1137)
!1188 = !DILocation(line: 455, column: 2, scope: !1137)
!1189 = !DILocation(line: 456, column: 1, scope: !1137)
!1190 = distinct !DISubprogram(name: "cmd_foreach_channel", scope: !528, file: !528, line: 459, type: !625, isLocal: true, isDefinition: true, scopeLine: 460, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1191 = !DILocalVariable(name: "data", arg: 1, scope: !1190, file: !528, line: 459, type: !69)
!1192 = !DILocation(line: 459, column: 45, scope: !1190)
!1193 = !DILocalVariable(name: "list", scope: !1190, file: !528, line: 461, type: !284)
!1194 = !DILocation(line: 461, column: 10, scope: !1190)
!1195 = !DILocalVariable(name: "cmdchars", scope: !1190, file: !528, line: 462, type: !69)
!1196 = !DILocation(line: 462, column: 14, scope: !1190)
!1197 = !DILocalVariable(name: "str", scope: !1190, file: !528, line: 463, type: !74)
!1198 = !DILocation(line: 463, column: 8, scope: !1190)
!1199 = !DILocation(line: 465, column: 13, scope: !1190)
!1200 = !DILocation(line: 465, column: 11, scope: !1190)
!1201 = !DILocation(line: 466, column: 15, scope: !1190)
!1202 = !DILocation(line: 466, column: 26, scope: !1190)
!1203 = !DILocation(line: 466, column: 25, scope: !1190)
!1204 = !DILocation(line: 466, column: 8, scope: !1190)
!1205 = !DILocation(line: 466, column: 32, scope: !1190)
!1206 = !DILocation(line: 466, column: 50, scope: !1207)
!1207 = !DILexicalBlockFile(scope: !1190, file: !528, discriminator: 1)
!1208 = !DILocation(line: 466, column: 41, scope: !1207)
!1209 = !DILocation(line: 466, column: 8, scope: !1207)
!1210 = !DILocation(line: 467, column: 28, scope: !1190)
!1211 = !DILocation(line: 467, column: 27, scope: !1190)
!1212 = !DILocation(line: 467, column: 38, scope: !1190)
!1213 = !DILocation(line: 467, column: 3, scope: !1190)
!1214 = !DILocation(line: 466, column: 8, scope: !1215)
!1215 = !DILexicalBlockFile(scope: !1190, file: !528, discriminator: 2)
!1216 = !DILocation(line: 466, column: 8, scope: !1217)
!1217 = !DILexicalBlockFile(scope: !1190, file: !528, discriminator: 3)
!1218 = !DILocation(line: 466, column: 6, scope: !1217)
!1219 = !DILocation(line: 469, column: 22, scope: !1190)
!1220 = !DILocation(line: 469, column: 9, scope: !1190)
!1221 = !DILocation(line: 469, column: 7, scope: !1190)
!1222 = !DILocation(line: 470, column: 2, scope: !1190)
!1223 = !DILocation(line: 470, column: 9, scope: !1207)
!1224 = !DILocation(line: 470, column: 14, scope: !1207)
!1225 = !DILocation(line: 470, column: 2, scope: !1207)
!1226 = !DILocalVariable(name: "rec", scope: !1227, file: !528, line: 471, type: !75)
!1227 = distinct !DILexicalBlock(scope: !1190, file: !528, line: 470, column: 22)
!1228 = !DILocation(line: 471, column: 16, scope: !1227)
!1229 = !DILocation(line: 471, column: 22, scope: !1227)
!1230 = !DILocation(line: 471, column: 28, scope: !1227)
!1231 = !DILocation(line: 473, column: 34, scope: !1227)
!1232 = !DILocation(line: 473, column: 39, scope: !1227)
!1233 = !DILocation(line: 473, column: 44, scope: !1227)
!1234 = !DILocation(line: 473, column: 52, scope: !1227)
!1235 = !DILocation(line: 473, column: 3, scope: !1227)
!1236 = !DILocation(line: 474, column: 25, scope: !1227)
!1237 = !DILocation(line: 474, column: 31, scope: !1227)
!1238 = !DILocation(line: 474, column: 37, scope: !1227)
!1239 = !DILocation(line: 474, column: 10, scope: !1227)
!1240 = !DILocation(line: 474, column: 8, scope: !1227)
!1241 = !DILocation(line: 470, column: 2, scope: !1215)
!1242 = distinct !{!1242, !1222}
!1243 = !DILocation(line: 477, column: 9, scope: !1190)
!1244 = !DILocation(line: 477, column: 2, scope: !1190)
!1245 = !DILocation(line: 478, column: 1, scope: !1190)
!1246 = distinct !DISubprogram(name: "cmd_foreach_query", scope: !528, file: !528, line: 481, type: !625, isLocal: true, isDefinition: true, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1247 = !DILocalVariable(name: "data", arg: 1, scope: !1246, file: !528, line: 481, type: !69)
!1248 = !DILocation(line: 481, column: 43, scope: !1246)
!1249 = !DILocalVariable(name: "list", scope: !1246, file: !528, line: 483, type: !284)
!1250 = !DILocation(line: 483, column: 10, scope: !1246)
!1251 = !DILocalVariable(name: "cmdchars", scope: !1246, file: !528, line: 484, type: !69)
!1252 = !DILocation(line: 484, column: 14, scope: !1246)
!1253 = !DILocalVariable(name: "str", scope: !1246, file: !528, line: 485, type: !74)
!1254 = !DILocation(line: 485, column: 8, scope: !1246)
!1255 = !DILocation(line: 487, column: 13, scope: !1246)
!1256 = !DILocation(line: 487, column: 11, scope: !1246)
!1257 = !DILocation(line: 488, column: 15, scope: !1246)
!1258 = !DILocation(line: 488, column: 26, scope: !1246)
!1259 = !DILocation(line: 488, column: 25, scope: !1246)
!1260 = !DILocation(line: 488, column: 8, scope: !1246)
!1261 = !DILocation(line: 488, column: 32, scope: !1246)
!1262 = !DILocation(line: 488, column: 50, scope: !1263)
!1263 = !DILexicalBlockFile(scope: !1246, file: !528, discriminator: 1)
!1264 = !DILocation(line: 488, column: 41, scope: !1263)
!1265 = !DILocation(line: 488, column: 8, scope: !1263)
!1266 = !DILocation(line: 489, column: 28, scope: !1246)
!1267 = !DILocation(line: 489, column: 27, scope: !1246)
!1268 = !DILocation(line: 489, column: 38, scope: !1246)
!1269 = !DILocation(line: 489, column: 3, scope: !1246)
!1270 = !DILocation(line: 488, column: 8, scope: !1271)
!1271 = !DILexicalBlockFile(scope: !1246, file: !528, discriminator: 2)
!1272 = !DILocation(line: 488, column: 8, scope: !1273)
!1273 = !DILexicalBlockFile(scope: !1246, file: !528, discriminator: 3)
!1274 = !DILocation(line: 488, column: 6, scope: !1273)
!1275 = !DILocation(line: 492, column: 22, scope: !1246)
!1276 = !DILocation(line: 492, column: 9, scope: !1246)
!1277 = !DILocation(line: 492, column: 7, scope: !1246)
!1278 = !DILocation(line: 493, column: 2, scope: !1246)
!1279 = !DILocation(line: 493, column: 9, scope: !1263)
!1280 = !DILocation(line: 493, column: 14, scope: !1263)
!1281 = !DILocation(line: 493, column: 2, scope: !1263)
!1282 = !DILocalVariable(name: "rec", scope: !1283, file: !528, line: 494, type: !440)
!1283 = distinct !DILexicalBlock(scope: !1246, file: !528, line: 493, column: 22)
!1284 = !DILocation(line: 494, column: 14, scope: !1283)
!1285 = !DILocation(line: 494, column: 20, scope: !1283)
!1286 = !DILocation(line: 494, column: 26, scope: !1283)
!1287 = !DILocation(line: 496, column: 34, scope: !1283)
!1288 = !DILocation(line: 496, column: 39, scope: !1283)
!1289 = !DILocation(line: 496, column: 44, scope: !1283)
!1290 = !DILocation(line: 496, column: 52, scope: !1283)
!1291 = !DILocation(line: 496, column: 3, scope: !1283)
!1292 = !DILocation(line: 497, column: 25, scope: !1283)
!1293 = !DILocation(line: 497, column: 31, scope: !1283)
!1294 = !DILocation(line: 497, column: 37, scope: !1283)
!1295 = !DILocation(line: 497, column: 10, scope: !1283)
!1296 = !DILocation(line: 497, column: 8, scope: !1283)
!1297 = !DILocation(line: 493, column: 2, scope: !1271)
!1298 = distinct !{!1298, !1278}
!1299 = !DILocation(line: 500, column: 9, scope: !1246)
!1300 = !DILocation(line: 500, column: 2, scope: !1246)
!1301 = !DILocation(line: 501, column: 1, scope: !1246)
!1302 = distinct !DISubprogram(name: "sig_server_sendmsg", scope: !528, file: !528, line: 425, type: !1303, isLocal: true, isDefinition: true, scopeLine: 427, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{null, !92, !69, !69, !64}
!1305 = !DILocalVariable(name: "server", arg: 1, scope: !1302, file: !528, line: 425, type: !92)
!1306 = !DILocation(line: 425, column: 44, scope: !1302)
!1307 = !DILocalVariable(name: "target", arg: 2, scope: !1302, file: !528, line: 425, type: !69)
!1308 = !DILocation(line: 425, column: 64, scope: !1302)
!1309 = !DILocalVariable(name: "msg", arg: 3, scope: !1302, file: !528, line: 426, type: !69)
!1310 = !DILocation(line: 426, column: 23, scope: !1302)
!1311 = !DILocalVariable(name: "target_type_p", arg: 4, scope: !1302, file: !528, line: 426, type: !64)
!1312 = !DILocation(line: 426, column: 34, scope: !1302)
!1313 = !DILocation(line: 428, column: 2, scope: !1302)
!1314 = !DILocation(line: 428, column: 10, scope: !1302)
!1315 = !DILocation(line: 428, column: 23, scope: !1302)
!1316 = !DILocation(line: 428, column: 31, scope: !1302)
!1317 = !DILocation(line: 428, column: 39, scope: !1302)
!1318 = !DILocation(line: 429, column: 26, scope: !1302)
!1319 = !DILocation(line: 429, column: 17, scope: !1302)
!1320 = !DILocation(line: 429, column: 10, scope: !1302)
!1321 = !DILocation(line: 430, column: 1, scope: !1302)
!1322 = distinct !DISubprogram(name: "chat_commands_deinit", scope: !528, file: !528, line: 524, type: !272, isLocal: false, isDefinition: true, scopeLine: 525, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1323 = !DILocation(line: 526, column: 2, scope: !1322)
!1324 = !DILocation(line: 527, column: 2, scope: !1322)
!1325 = !DILocation(line: 528, column: 2, scope: !1322)
!1326 = !DILocation(line: 529, column: 2, scope: !1322)
!1327 = !DILocation(line: 530, column: 2, scope: !1322)
!1328 = !DILocation(line: 531, column: 2, scope: !1322)
!1329 = !DILocation(line: 532, column: 2, scope: !1322)
!1330 = !DILocation(line: 533, column: 2, scope: !1322)
!1331 = !DILocation(line: 534, column: 2, scope: !1322)
!1332 = !DILocation(line: 535, column: 2, scope: !1322)
!1333 = !DILocation(line: 537, column: 2, scope: !1322)
!1334 = !DILocation(line: 538, column: 1, scope: !1322)
!1335 = distinct !DISubprogram(name: "get_server_connect", scope: !528, file: !528, line: 37, type: !1336, isLocal: true, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!102, !69, !1338, !431}
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!1339 = !DILocalVariable(name: "data", arg: 1, scope: !1335, file: !528, line: 37, type: !69)
!1340 = !DILocation(line: 37, column: 59, scope: !1335)
!1341 = !DILocalVariable(name: "plus_addr", arg: 2, scope: !1335, file: !528, line: 37, type: !1338)
!1342 = !DILocation(line: 37, column: 70, scope: !1335)
!1343 = !DILocalVariable(name: "rawlog_file", arg: 3, scope: !1335, file: !528, line: 38, type: !431)
!1344 = !DILocation(line: 38, column: 19, scope: !1335)
!1345 = !DILocalVariable(name: "proto", scope: !1335, file: !528, line: 40, type: !1346)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64, align: 64)
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAT_PROTOCOL_REC", file: !77, line: 105, baseType: !1348)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHAT_PROTOCOL_REC", file: !1349, line: 4, size: 832, align: 64, elements: !1350)
!1349 = !DIFile(filename: "chat-protocols.h", directory: "/home/lichi/Desktop/irssi/task1")
!1350 = !{!1351, !1352, !1353, !1354, !1355, !1356, !1357, !1364, !1403, !1410, !1414, !1418, !1422, !1426, !1430}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1348, file: !1349, line: 5, baseType: !83, size: 32, align: 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "not_initialized", scope: !1348, file: !1349, line: 7, baseType: !150, size: 1, align: 32, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "case_insensitive", scope: !1348, file: !1349, line: 8, baseType: !150, size: 1, align: 32, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1348, file: !1349, line: 10, baseType: !74, size: 64, align: 64, offset: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "fullname", scope: !1348, file: !1349, line: 11, baseType: !74, size: 64, align: 64, offset: 128)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !1348, file: !1349, line: 12, baseType: !74, size: 64, align: 64, offset: 192)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "create_chatnet", scope: !1348, file: !1349, line: 14, baseType: !1358, size: 64, align: 64, offset: 256)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64, align: 64)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!1361}
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64, align: 64)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHATNET_REC", file: !77, line: 106, baseType: !1363)
!1363 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CHATNET_REC", file: !77, line: 106, flags: DIFlagFwdDecl)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "create_server_setup", scope: !1348, file: !1349, line: 15, baseType: !1365, size: 64, align: 64, offset: 320)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64, align: 64)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!1368}
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64, align: 64)
!1369 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_SETUP_REC", file: !77, line: 114, baseType: !1370)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_SETUP_REC", file: !1371, line: 13, size: 1408, align: 64, elements: !1372)
!1371 = !DIFile(filename: "servers-setup.h", directory: "/home/lichi/Desktop/irssi/task1")
!1372 = !{!1373, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1370, file: !1374, line: 1, baseType: !83, size: 32, align: 32)
!1374 = !DIFile(filename: "server-setup-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !1370, file: !1374, line: 2, baseType: !83, size: 32, align: 32, offset: 32)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !1370, file: !1374, line: 4, baseType: !74, size: 64, align: 64, offset: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !1370, file: !1374, line: 6, baseType: !116, size: 16, align: 16, offset: 128)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1370, file: !1374, line: 7, baseType: !74, size: 64, align: 64, offset: 192)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1370, file: !1374, line: 8, baseType: !83, size: 32, align: 32, offset: 256)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !1370, file: !1374, line: 9, baseType: !74, size: 64, align: 64, offset: 320)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !1370, file: !1374, line: 11, baseType: !83, size: 32, align: 32, offset: 384)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !1370, file: !1374, line: 12, baseType: !74, size: 64, align: 64, offset: 448)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !1370, file: !1374, line: 14, baseType: !74, size: 64, align: 64, offset: 512)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !1370, file: !1374, line: 15, baseType: !74, size: 64, align: 64, offset: 576)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !1370, file: !1374, line: 16, baseType: !74, size: 64, align: 64, offset: 640)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !1370, file: !1374, line: 17, baseType: !74, size: 64, align: 64, offset: 704)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !1370, file: !1374, line: 18, baseType: !74, size: 64, align: 64, offset: 768)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !1370, file: !1374, line: 19, baseType: !74, size: 64, align: 64, offset: 832)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !1370, file: !1374, line: 20, baseType: !74, size: 64, align: 64, offset: 896)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !1370, file: !1374, line: 21, baseType: !74, size: 64, align: 64, offset: 960)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "own_host", scope: !1370, file: !1374, line: 23, baseType: !74, size: 64, align: 64, offset: 1024)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !1370, file: !1374, line: 24, baseType: !122, size: 64, align: 64, offset: 1088)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !1370, file: !1374, line: 24, baseType: !122, size: 64, align: 64, offset: 1152)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "last_connect", scope: !1370, file: !1374, line: 26, baseType: !356, size: 64, align: 64, offset: 1216)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "autoconnect", scope: !1370, file: !1374, line: 28, baseType: !150, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "no_proxy", scope: !1370, file: !1374, line: 29, baseType: !150, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "last_failed", scope: !1370, file: !1374, line: 30, baseType: !150, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !1370, file: !1374, line: 31, baseType: !150, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !1370, file: !1374, line: 32, baseType: !150, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !1370, file: !1374, line: 33, baseType: !150, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !1370, file: !1374, line: 34, baseType: !150, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !1370, file: !1374, line: 36, baseType: !86, size: 64, align: 64, offset: 1344)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "create_channel_setup", scope: !1348, file: !1349, line: 16, baseType: !1404, size: 64, align: 64, offset: 384)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64, align: 64)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!1407}
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64, align: 64)
!1408 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_SETUP_REC", file: !77, line: 115, baseType: !1409)
!1409 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_SETUP_REC", file: !77, line: 115, flags: DIFlagFwdDecl)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "create_server_connect", scope: !1348, file: !1349, line: 17, baseType: !1411, size: 64, align: 64, offset: 448)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64, align: 64)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!102}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_server_connect", scope: !1348, file: !1349, line: 18, baseType: !1415, size: 64, align: 64, offset: 512)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64, align: 64)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{null, !102}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "server_init_connect", scope: !1348, file: !1349, line: 20, baseType: !1419, size: 64, align: 64, offset: 576)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64, align: 64)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!92, !102}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "server_connect", scope: !1348, file: !1349, line: 21, baseType: !1423, size: 64, align: 64, offset: 640)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64, align: 64)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{null, !92}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "channel_create", scope: !1348, file: !1349, line: 22, baseType: !1427, size: 64, align: 64, offset: 704)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64, align: 64)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!75, !92, !69, !69, !83}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "query_create", scope: !1348, file: !1349, line: 24, baseType: !1431, size: 64, align: 64, offset: 768)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64, align: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!440, !69, !69, !83}
!1434 = !DILocation(line: 40, column: 28, scope: !1335)
!1435 = !DILocalVariable(name: "conn", scope: !1335, file: !528, line: 41, type: !102)
!1436 = !DILocation(line: 41, column: 22, scope: !1335)
!1437 = !DILocalVariable(name: "optlist", scope: !1335, file: !528, line: 42, type: !86)
!1438 = !DILocation(line: 42, column: 14, scope: !1335)
!1439 = !DILocalVariable(name: "addr", scope: !1335, file: !528, line: 43, type: !74)
!1440 = !DILocation(line: 43, column: 8, scope: !1335)
!1441 = !DILocalVariable(name: "portstr", scope: !1335, file: !528, line: 43, type: !74)
!1442 = !DILocation(line: 43, column: 15, scope: !1335)
!1443 = !DILocalVariable(name: "password", scope: !1335, file: !528, line: 43, type: !74)
!1444 = !DILocation(line: 43, column: 25, scope: !1335)
!1445 = !DILocalVariable(name: "nick", scope: !1335, file: !528, line: 43, type: !74)
!1446 = !DILocation(line: 43, column: 36, scope: !1335)
!1447 = !DILocalVariable(name: "chatnet", scope: !1335, file: !528, line: 43, type: !74)
!1448 = !DILocation(line: 43, column: 43, scope: !1335)
!1449 = !DILocalVariable(name: "host", scope: !1335, file: !528, line: 43, type: !74)
!1450 = !DILocation(line: 43, column: 53, scope: !1335)
!1451 = !DILocalVariable(name: "tmp", scope: !1335, file: !528, line: 43, type: !74)
!1452 = !DILocation(line: 43, column: 60, scope: !1335)
!1453 = !DILocalVariable(name: "free_arg", scope: !1335, file: !528, line: 44, type: !64)
!1454 = !DILocation(line: 44, column: 8, scope: !1335)
!1455 = !DILocation(line: 46, column: 2, scope: !1335)
!1456 = distinct !{!1456, !1455}
!1457 = !DILocation(line: 46, column: 10, scope: !1458)
!1458 = !DILexicalBlockFile(scope: !1459, file: !528, discriminator: 1)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !528, line: 46, column: 10)
!1460 = distinct !DILexicalBlock(scope: !1335, file: !528, line: 46, column: 4)
!1461 = !DILocation(line: 46, column: 15, scope: !1458)
!1462 = !DILocation(line: 46, column: 5, scope: !1463)
!1463 = !DILexicalBlockFile(scope: !1464, file: !528, discriminator: 2)
!1464 = distinct !DILexicalBlock(scope: !1459, file: !528, line: 46, column: 3)
!1465 = !DILocation(line: 46, column: 14, scope: !1466)
!1466 = !DILexicalBlockFile(scope: !1467, file: !528, discriminator: 3)
!1467 = distinct !DILexicalBlock(scope: !1459, file: !528, line: 46, column: 12)
!1468 = !DILocation(line: 46, column: 99, scope: !1466)
!1469 = !DILocation(line: 46, column: 7, scope: !1470)
!1470 = !DILexicalBlockFile(scope: !1460, file: !528, discriminator: 4)
!1471 = !DILocation(line: 48, column: 22, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1335, file: !528, line: 48, column: 6)
!1473 = !DILocation(line: 48, column: 7, scope: !1472)
!1474 = !DILocation(line: 48, column: 6, scope: !1335)
!1475 = !DILocation(line: 51, column: 3, scope: !1472)
!1476 = !DILocation(line: 52, column: 6, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1335, file: !528, line: 52, column: 6)
!1478 = !DILocation(line: 52, column: 16, scope: !1477)
!1479 = !DILocation(line: 52, column: 6, scope: !1335)
!1480 = !DILocation(line: 52, column: 38, scope: !1481)
!1481 = !DILexicalBlockFile(scope: !1477, file: !528, discriminator: 1)
!1482 = !DILocation(line: 52, column: 37, scope: !1481)
!1483 = !DILocation(line: 52, column: 43, scope: !1481)
!1484 = !DILocation(line: 52, column: 25, scope: !1481)
!1485 = !DILocation(line: 52, column: 35, scope: !1481)
!1486 = !DILocation(line: 52, column: 24, scope: !1481)
!1487 = !DILocation(line: 53, column: 7, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1335, file: !528, line: 53, column: 6)
!1489 = !DILocation(line: 53, column: 6, scope: !1488)
!1490 = !DILocation(line: 53, column: 12, scope: !1488)
!1491 = !DILocation(line: 53, column: 6, scope: !1335)
!1492 = !DILocation(line: 53, column: 24, scope: !1493)
!1493 = !DILexicalBlockFile(scope: !1488, file: !528, discriminator: 1)
!1494 = !DILocation(line: 53, column: 20, scope: !1493)
!1495 = !DILocation(line: 54, column: 7, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1335, file: !528, line: 54, column: 6)
!1497 = !DILocation(line: 54, column: 6, scope: !1496)
!1498 = !DILocation(line: 54, column: 12, scope: !1496)
!1499 = !DILocation(line: 54, column: 6, scope: !1335)
!1500 = !DILocation(line: 55, column: 3, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1496, file: !528, line: 54, column: 21)
!1502 = !DILocation(line: 57, column: 19, scope: !1501)
!1503 = !DILocation(line: 57, column: 3, scope: !1501)
!1504 = !DILocation(line: 58, column: 3, scope: !1501)
!1505 = !DILocation(line: 61, column: 16, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1335, file: !528, line: 61, column: 6)
!1507 = !DILocation(line: 61, column: 6, scope: !1506)
!1508 = !DILocation(line: 61, column: 31, scope: !1506)
!1509 = !DILocation(line: 61, column: 6, scope: !1335)
!1510 = !DILocation(line: 62, column: 4, scope: !1506)
!1511 = !DILocation(line: 62, column: 13, scope: !1506)
!1512 = !DILocation(line: 62, column: 3, scope: !1506)
!1513 = !DILocation(line: 65, column: 33, scope: !1335)
!1514 = !DILocation(line: 65, column: 10, scope: !1335)
!1515 = !DILocation(line: 65, column: 8, scope: !1335)
!1516 = !DILocation(line: 68, column: 12, scope: !1335)
!1517 = !DILocation(line: 68, column: 18, scope: !1335)
!1518 = !DILocation(line: 68, column: 12, scope: !1519)
!1519 = !DILexicalBlockFile(scope: !1335, file: !528, discriminator: 1)
!1520 = !DILocation(line: 69, column: 23, scope: !1335)
!1521 = !DILocation(line: 69, column: 32, scope: !1335)
!1522 = !DILocation(line: 69, column: 39, scope: !1335)
!1523 = !DILocation(line: 69, column: 3, scope: !1335)
!1524 = !DILocation(line: 68, column: 12, scope: !1525)
!1525 = !DILexicalBlockFile(scope: !1335, file: !528, discriminator: 2)
!1526 = !DILocation(line: 68, column: 12, scope: !1527)
!1527 = !DILexicalBlockFile(scope: !1335, file: !528, discriminator: 3)
!1528 = !DILocation(line: 68, column: 10, scope: !1527)
!1529 = !DILocation(line: 71, column: 6, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1335, file: !528, line: 71, column: 6)
!1531 = !DILocation(line: 71, column: 14, scope: !1530)
!1532 = !DILocation(line: 71, column: 6, scope: !1335)
!1533 = !DILocation(line: 72, column: 33, scope: !1530)
!1534 = !DILocation(line: 72, column: 13, scope: !1530)
!1535 = !DILocation(line: 72, column: 11, scope: !1530)
!1536 = !DILocation(line: 72, column: 3, scope: !1530)
!1537 = !DILocation(line: 74, column: 28, scope: !1335)
!1538 = !DILocation(line: 74, column: 34, scope: !1335)
!1539 = !DILocation(line: 74, column: 43, scope: !1519)
!1540 = !DILocation(line: 74, column: 50, scope: !1519)
!1541 = !DILocation(line: 74, column: 28, scope: !1519)
!1542 = !DILocation(line: 74, column: 28, scope: !1525)
!1543 = !DILocation(line: 74, column: 28, scope: !1527)
!1544 = !DILocation(line: 74, column: 59, scope: !1527)
!1545 = !DILocation(line: 75, column: 12, scope: !1335)
!1546 = !DILocation(line: 75, column: 7, scope: !1335)
!1547 = !DILocation(line: 75, column: 22, scope: !1335)
!1548 = !DILocation(line: 75, column: 31, scope: !1335)
!1549 = !DILocation(line: 75, column: 41, scope: !1335)
!1550 = !DILocation(line: 74, column: 9, scope: !1527)
!1551 = !DILocation(line: 74, column: 7, scope: !1527)
!1552 = !DILocation(line: 76, column: 6, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1335, file: !528, line: 76, column: 6)
!1554 = !DILocation(line: 76, column: 11, scope: !1553)
!1555 = !DILocation(line: 76, column: 6, scope: !1335)
!1556 = !DILocation(line: 77, column: 3, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1553, file: !528, line: 76, column: 19)
!1558 = !DILocation(line: 79, column: 19, scope: !1557)
!1559 = !DILocation(line: 79, column: 3, scope: !1557)
!1560 = !DILocation(line: 80, column: 3, scope: !1557)
!1561 = !DILocation(line: 83, column: 6, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1335, file: !528, line: 83, column: 6)
!1563 = !DILocation(line: 83, column: 12, scope: !1562)
!1564 = !DILocation(line: 83, column: 6, scope: !1335)
!1565 = !DILocation(line: 84, column: 33, scope: !1562)
!1566 = !DILocation(line: 84, column: 39, scope: !1562)
!1567 = !DILocation(line: 84, column: 11, scope: !1562)
!1568 = !DILocation(line: 84, column: 9, scope: !1562)
!1569 = !DILocation(line: 84, column: 3, scope: !1562)
!1570 = !DILocation(line: 86, column: 6, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1335, file: !528, line: 86, column: 6)
!1572 = !DILocation(line: 86, column: 13, scope: !1571)
!1573 = !DILocation(line: 86, column: 6, scope: !1335)
!1574 = !DILocation(line: 88, column: 43, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1571, file: !528, line: 86, column: 30)
!1576 = !DILocation(line: 88, column: 50, scope: !1575)
!1577 = !DILocation(line: 88, column: 3, scope: !1575)
!1578 = !DILocation(line: 89, column: 24, scope: !1575)
!1579 = !DILocation(line: 89, column: 3, scope: !1575)
!1580 = !DILocation(line: 90, column: 33, scope: !1575)
!1581 = !DILocation(line: 90, column: 17, scope: !1575)
!1582 = !DILocation(line: 91, column: 3, scope: !1575)
!1583 = !DILocation(line: 94, column: 13, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1335, file: !528, line: 94, column: 6)
!1585 = !DILocation(line: 94, column: 6, scope: !1584)
!1586 = !DILocation(line: 94, column: 24, scope: !1584)
!1587 = !DILocation(line: 94, column: 6, scope: !1335)
!1588 = !DILocation(line: 95, column: 3, scope: !1584)
!1589 = !DILocation(line: 95, column: 9, scope: !1584)
!1590 = !DILocation(line: 95, column: 21, scope: !1584)
!1591 = !DILocation(line: 97, column: 26, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1335, file: !528, line: 97, column: 6)
!1593 = !DILocation(line: 97, column: 6, scope: !1592)
!1594 = !DILocation(line: 97, column: 40, scope: !1592)
!1595 = !DILocation(line: 97, column: 6, scope: !1335)
!1596 = !DILocation(line: 98, column: 3, scope: !1592)
!1597 = !DILocation(line: 98, column: 9, scope: !1592)
!1598 = !DILocation(line: 98, column: 16, scope: !1592)
!1599 = !DILocation(line: 99, column: 31, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1592, file: !528, line: 99, column: 11)
!1601 = !DILocation(line: 99, column: 11, scope: !1600)
!1602 = !DILocation(line: 99, column: 45, scope: !1600)
!1603 = !DILocation(line: 99, column: 11, scope: !1592)
!1604 = !DILocation(line: 100, column: 3, scope: !1600)
!1605 = !DILocation(line: 100, column: 9, scope: !1600)
!1606 = !DILocation(line: 100, column: 16, scope: !1600)
!1607 = !DILocation(line: 102, column: 26, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1335, file: !528, line: 102, column: 6)
!1609 = !DILocation(line: 102, column: 6, scope: !1608)
!1610 = !DILocation(line: 102, column: 42, scope: !1608)
!1611 = !DILocation(line: 102, column: 49, scope: !1608)
!1612 = !DILocation(line: 102, column: 72, scope: !1613)
!1613 = !DILexicalBlockFile(scope: !1608, file: !528, discriminator: 1)
!1614 = !DILocation(line: 102, column: 52, scope: !1613)
!1615 = !DILocation(line: 102, column: 88, scope: !1613)
!1616 = !DILocation(line: 102, column: 6, scope: !1613)
!1617 = !DILocation(line: 103, column: 3, scope: !1608)
!1618 = !DILocation(line: 103, column: 9, scope: !1608)
!1619 = !DILocation(line: 103, column: 17, scope: !1608)
!1620 = !DILocation(line: 104, column: 33, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1335, file: !528, line: 104, column: 6)
!1622 = !DILocation(line: 104, column: 13, scope: !1621)
!1623 = !DILocation(line: 104, column: 11, scope: !1621)
!1624 = !DILocation(line: 104, column: 55, scope: !1621)
!1625 = !DILocation(line: 104, column: 62, scope: !1621)
!1626 = !DILocation(line: 104, column: 92, scope: !1627)
!1627 = !DILexicalBlockFile(scope: !1621, file: !528, discriminator: 1)
!1628 = !DILocation(line: 104, column: 72, scope: !1627)
!1629 = !DILocation(line: 104, column: 70, scope: !1627)
!1630 = !DILocation(line: 104, column: 114, scope: !1627)
!1631 = !DILocation(line: 104, column: 6, scope: !1627)
!1632 = !DILocation(line: 105, column: 29, scope: !1621)
!1633 = !DILocation(line: 105, column: 20, scope: !1621)
!1634 = !DILocation(line: 105, column: 3, scope: !1621)
!1635 = !DILocation(line: 105, column: 9, scope: !1621)
!1636 = !DILocation(line: 105, column: 18, scope: !1621)
!1637 = !DILocation(line: 106, column: 33, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1335, file: !528, line: 106, column: 6)
!1639 = !DILocation(line: 106, column: 13, scope: !1638)
!1640 = !DILocation(line: 106, column: 11, scope: !1638)
!1641 = !DILocation(line: 106, column: 55, scope: !1638)
!1642 = !DILocation(line: 106, column: 62, scope: !1638)
!1643 = !DILocation(line: 106, column: 92, scope: !1644)
!1644 = !DILexicalBlockFile(scope: !1638, file: !528, discriminator: 1)
!1645 = !DILocation(line: 106, column: 72, scope: !1644)
!1646 = !DILocation(line: 106, column: 70, scope: !1644)
!1647 = !DILocation(line: 106, column: 114, scope: !1644)
!1648 = !DILocation(line: 106, column: 6, scope: !1644)
!1649 = !DILocation(line: 107, column: 29, scope: !1638)
!1650 = !DILocation(line: 107, column: 20, scope: !1638)
!1651 = !DILocation(line: 107, column: 3, scope: !1638)
!1652 = !DILocation(line: 107, column: 9, scope: !1638)
!1653 = !DILocation(line: 107, column: 18, scope: !1638)
!1654 = !DILocation(line: 108, column: 33, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1335, file: !528, line: 108, column: 6)
!1656 = !DILocation(line: 108, column: 13, scope: !1655)
!1657 = !DILocation(line: 108, column: 11, scope: !1655)
!1658 = !DILocation(line: 108, column: 55, scope: !1655)
!1659 = !DILocation(line: 108, column: 62, scope: !1655)
!1660 = !DILocation(line: 108, column: 92, scope: !1661)
!1661 = !DILexicalBlockFile(scope: !1655, file: !528, discriminator: 1)
!1662 = !DILocation(line: 108, column: 72, scope: !1661)
!1663 = !DILocation(line: 108, column: 70, scope: !1661)
!1664 = !DILocation(line: 108, column: 114, scope: !1661)
!1665 = !DILocation(line: 108, column: 6, scope: !1661)
!1666 = !DILocation(line: 109, column: 29, scope: !1655)
!1667 = !DILocation(line: 109, column: 20, scope: !1655)
!1668 = !DILocation(line: 109, column: 3, scope: !1655)
!1669 = !DILocation(line: 109, column: 9, scope: !1655)
!1670 = !DILocation(line: 109, column: 18, scope: !1655)
!1671 = !DILocation(line: 110, column: 26, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1335, file: !528, line: 110, column: 6)
!1673 = !DILocation(line: 110, column: 6, scope: !1672)
!1674 = !DILocation(line: 110, column: 49, scope: !1672)
!1675 = !DILocation(line: 110, column: 56, scope: !1672)
!1676 = !DILocation(line: 110, column: 79, scope: !1677)
!1677 = !DILexicalBlockFile(scope: !1672, file: !528, discriminator: 1)
!1678 = !DILocation(line: 110, column: 59, scope: !1677)
!1679 = !DILocation(line: 110, column: 102, scope: !1677)
!1680 = !DILocation(line: 110, column: 6, scope: !1677)
!1681 = !DILocation(line: 111, column: 3, scope: !1672)
!1682 = !DILocation(line: 111, column: 9, scope: !1672)
!1683 = !DILocation(line: 111, column: 20, scope: !1672)
!1684 = !DILocation(line: 112, column: 33, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1335, file: !528, line: 112, column: 6)
!1686 = !DILocation(line: 112, column: 13, scope: !1685)
!1687 = !DILocation(line: 112, column: 11, scope: !1685)
!1688 = !DILocation(line: 112, column: 57, scope: !1685)
!1689 = !DILocation(line: 112, column: 64, scope: !1685)
!1690 = !DILocation(line: 112, column: 94, scope: !1691)
!1691 = !DILexicalBlockFile(scope: !1685, file: !528, discriminator: 1)
!1692 = !DILocation(line: 112, column: 74, scope: !1691)
!1693 = !DILocation(line: 112, column: 72, scope: !1691)
!1694 = !DILocation(line: 112, column: 118, scope: !1691)
!1695 = !DILocation(line: 112, column: 6, scope: !1691)
!1696 = !DILocation(line: 113, column: 31, scope: !1685)
!1697 = !DILocation(line: 113, column: 22, scope: !1685)
!1698 = !DILocation(line: 113, column: 3, scope: !1685)
!1699 = !DILocation(line: 113, column: 9, scope: !1685)
!1700 = !DILocation(line: 113, column: 20, scope: !1685)
!1701 = !DILocation(line: 114, column: 33, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1335, file: !528, line: 114, column: 6)
!1703 = !DILocation(line: 114, column: 13, scope: !1702)
!1704 = !DILocation(line: 114, column: 11, scope: !1702)
!1705 = !DILocation(line: 114, column: 57, scope: !1702)
!1706 = !DILocation(line: 114, column: 64, scope: !1702)
!1707 = !DILocation(line: 114, column: 94, scope: !1708)
!1708 = !DILexicalBlockFile(scope: !1702, file: !528, discriminator: 1)
!1709 = !DILocation(line: 114, column: 74, scope: !1708)
!1710 = !DILocation(line: 114, column: 72, scope: !1708)
!1711 = !DILocation(line: 114, column: 118, scope: !1708)
!1712 = !DILocation(line: 114, column: 6, scope: !1708)
!1713 = !DILocation(line: 115, column: 31, scope: !1702)
!1714 = !DILocation(line: 115, column: 22, scope: !1702)
!1715 = !DILocation(line: 115, column: 3, scope: !1702)
!1716 = !DILocation(line: 115, column: 9, scope: !1702)
!1717 = !DILocation(line: 115, column: 20, scope: !1702)
!1718 = !DILocation(line: 116, column: 33, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1335, file: !528, line: 116, column: 6)
!1720 = !DILocation(line: 116, column: 13, scope: !1719)
!1721 = !DILocation(line: 116, column: 11, scope: !1719)
!1722 = !DILocation(line: 116, column: 58, scope: !1719)
!1723 = !DILocation(line: 116, column: 65, scope: !1719)
!1724 = !DILocation(line: 116, column: 95, scope: !1725)
!1725 = !DILexicalBlockFile(scope: !1719, file: !528, discriminator: 1)
!1726 = !DILocation(line: 116, column: 75, scope: !1725)
!1727 = !DILocation(line: 116, column: 73, scope: !1725)
!1728 = !DILocation(line: 116, column: 120, scope: !1725)
!1729 = !DILocation(line: 116, column: 6, scope: !1725)
!1730 = !DILocation(line: 117, column: 32, scope: !1719)
!1731 = !DILocation(line: 117, column: 23, scope: !1719)
!1732 = !DILocation(line: 117, column: 3, scope: !1719)
!1733 = !DILocation(line: 117, column: 9, scope: !1719)
!1734 = !DILocation(line: 117, column: 21, scope: !1719)
!1735 = !DILocation(line: 118, column: 33, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1335, file: !528, line: 118, column: 6)
!1737 = !DILocation(line: 118, column: 13, scope: !1736)
!1738 = !DILocation(line: 118, column: 11, scope: !1736)
!1739 = !DILocation(line: 118, column: 62, scope: !1736)
!1740 = !DILocation(line: 118, column: 69, scope: !1736)
!1741 = !DILocation(line: 118, column: 99, scope: !1742)
!1742 = !DILexicalBlockFile(scope: !1736, file: !528, discriminator: 1)
!1743 = !DILocation(line: 118, column: 79, scope: !1742)
!1744 = !DILocation(line: 118, column: 77, scope: !1742)
!1745 = !DILocation(line: 118, column: 128, scope: !1742)
!1746 = !DILocation(line: 118, column: 6, scope: !1742)
!1747 = !DILocation(line: 119, column: 36, scope: !1736)
!1748 = !DILocation(line: 119, column: 27, scope: !1736)
!1749 = !DILocation(line: 119, column: 3, scope: !1736)
!1750 = !DILocation(line: 119, column: 9, scope: !1736)
!1751 = !DILocation(line: 119, column: 25, scope: !1736)
!1752 = !DILocation(line: 120, column: 33, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1335, file: !528, line: 120, column: 6)
!1754 = !DILocation(line: 120, column: 13, scope: !1753)
!1755 = !DILocation(line: 120, column: 11, scope: !1753)
!1756 = !DILocation(line: 120, column: 64, scope: !1753)
!1757 = !DILocation(line: 120, column: 71, scope: !1753)
!1758 = !DILocation(line: 120, column: 101, scope: !1759)
!1759 = !DILexicalBlockFile(scope: !1753, file: !528, discriminator: 1)
!1760 = !DILocation(line: 120, column: 81, scope: !1759)
!1761 = !DILocation(line: 120, column: 79, scope: !1759)
!1762 = !DILocation(line: 120, column: 132, scope: !1759)
!1763 = !DILocation(line: 120, column: 6, scope: !1759)
!1764 = !DILocation(line: 121, column: 38, scope: !1753)
!1765 = !DILocation(line: 121, column: 29, scope: !1753)
!1766 = !DILocation(line: 121, column: 3, scope: !1753)
!1767 = !DILocation(line: 121, column: 9, scope: !1753)
!1768 = !DILocation(line: 121, column: 27, scope: !1753)
!1769 = !DILocation(line: 122, column: 7, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1335, file: !528, line: 122, column: 6)
!1771 = !DILocation(line: 122, column: 13, scope: !1770)
!1772 = !DILocation(line: 122, column: 24, scope: !1770)
!1773 = !DILocation(line: 122, column: 31, scope: !1770)
!1774 = !DILocation(line: 122, column: 34, scope: !1775)
!1775 = !DILexicalBlockFile(scope: !1770, file: !528, discriminator: 1)
!1776 = !DILocation(line: 122, column: 40, scope: !1775)
!1777 = !DILocation(line: 122, column: 54, scope: !1775)
!1778 = !DILocation(line: 123, column: 2, scope: !1770)
!1779 = !DILocation(line: 123, column: 6, scope: !1775)
!1780 = !DILocation(line: 123, column: 12, scope: !1775)
!1781 = !DILocation(line: 123, column: 23, scope: !1775)
!1782 = !DILocation(line: 123, column: 31, scope: !1775)
!1783 = !DILocation(line: 123, column: 34, scope: !1784)
!1784 = !DILexicalBlockFile(scope: !1770, file: !528, discriminator: 2)
!1785 = !DILocation(line: 123, column: 40, scope: !1784)
!1786 = !DILocation(line: 123, column: 54, scope: !1784)
!1787 = !DILocation(line: 122, column: 6, scope: !1525)
!1788 = !DILocation(line: 124, column: 3, scope: !1770)
!1789 = !DILocation(line: 124, column: 9, scope: !1770)
!1790 = !DILocation(line: 124, column: 20, scope: !1770)
!1791 = !DILocation(line: 125, column: 7, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !1335, file: !528, line: 125, column: 6)
!1793 = !DILocation(line: 125, column: 13, scope: !1792)
!1794 = !DILocation(line: 125, column: 22, scope: !1792)
!1795 = !DILocation(line: 125, column: 29, scope: !1792)
!1796 = !DILocation(line: 125, column: 32, scope: !1797)
!1797 = !DILexicalBlockFile(scope: !1792, file: !528, discriminator: 1)
!1798 = !DILocation(line: 125, column: 38, scope: !1797)
!1799 = !DILocation(line: 125, column: 50, scope: !1797)
!1800 = !DILocation(line: 125, column: 59, scope: !1797)
!1801 = !DILocation(line: 125, column: 62, scope: !1802)
!1802 = !DILexicalBlockFile(scope: !1792, file: !528, discriminator: 2)
!1803 = !DILocation(line: 125, column: 68, scope: !1802)
!1804 = !DILocation(line: 125, column: 6, scope: !1802)
!1805 = !DILocation(line: 126, column: 3, scope: !1792)
!1806 = !DILocation(line: 126, column: 9, scope: !1792)
!1807 = !DILocation(line: 126, column: 17, scope: !1792)
!1808 = !DILocation(line: 128, column: 26, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1335, file: !528, line: 128, column: 6)
!1810 = !DILocation(line: 128, column: 6, scope: !1809)
!1811 = !DILocation(line: 128, column: 40, scope: !1809)
!1812 = !DILocation(line: 128, column: 6, scope: !1335)
!1813 = !DILocation(line: 129, column: 3, scope: !1809)
!1814 = !DILocation(line: 129, column: 9, scope: !1809)
!1815 = !DILocation(line: 129, column: 30, scope: !1809)
!1816 = !DILocation(line: 131, column: 26, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1335, file: !528, line: 131, column: 6)
!1818 = !DILocation(line: 131, column: 6, scope: !1817)
!1819 = !DILocation(line: 131, column: 52, scope: !1817)
!1820 = !DILocation(line: 131, column: 6, scope: !1335)
!1821 = !DILocation(line: 132, column: 3, scope: !1817)
!1822 = !DILocation(line: 132, column: 9, scope: !1817)
!1823 = !DILocation(line: 132, column: 24, scope: !1817)
!1824 = !DILocation(line: 134, column: 26, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1335, file: !528, line: 134, column: 6)
!1826 = !DILocation(line: 134, column: 6, scope: !1825)
!1827 = !DILocation(line: 134, column: 46, scope: !1825)
!1828 = !DILocation(line: 134, column: 6, scope: !1335)
!1829 = !DILocation(line: 135, column: 17, scope: !1825)
!1830 = distinct !{!1830, !1829}
!1831 = !DILocation(line: 135, column: 26, scope: !1832)
!1832 = !DILexicalBlockFile(scope: !1833, file: !528, discriminator: 1)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !528, line: 135, column: 26)
!1834 = distinct !DILexicalBlock(scope: !1825, file: !528, line: 135, column: 20)
!1835 = !DILocation(line: 135, column: 32, scope: !1832)
!1836 = !DILocation(line: 135, column: 48, scope: !1837)
!1837 = !DILexicalBlockFile(scope: !1838, file: !528, discriminator: 2)
!1838 = distinct !DILexicalBlock(scope: !1833, file: !528, line: 135, column: 39)
!1839 = !DILocation(line: 135, column: 54, scope: !1837)
!1840 = !DILocation(line: 135, column: 41, scope: !1837)
!1841 = !DILocation(line: 135, column: 63, scope: !1837)
!1842 = !DILocation(line: 135, column: 69, scope: !1837)
!1843 = !DILocation(line: 135, column: 76, scope: !1837)
!1844 = !DILocation(line: 135, column: 18, scope: !1837)
!1845 = !DILocation(line: 135, column: 20, scope: !1846)
!1846 = !DILexicalBlockFile(scope: !1834, file: !528, discriminator: 3)
!1847 = !DILocation(line: 135, column: 20, scope: !1848)
!1848 = !DILexicalBlockFile(scope: !1834, file: !528, discriminator: 4)
!1849 = !DILocation(line: 138, column: 46, scope: !1335)
!1850 = !DILocation(line: 138, column: 26, scope: !1335)
!1851 = !DILocation(line: 138, column: 17, scope: !1519)
!1852 = !DILocation(line: 138, column: 3, scope: !1335)
!1853 = !DILocation(line: 138, column: 15, scope: !1335)
!1854 = !DILocation(line: 140, column: 36, scope: !1335)
!1855 = !DILocation(line: 140, column: 16, scope: !1335)
!1856 = !DILocation(line: 140, column: 14, scope: !1335)
!1857 = !DILocation(line: 141, column: 6, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1335, file: !528, line: 141, column: 6)
!1859 = !DILocation(line: 141, column: 11, scope: !1858)
!1860 = !DILocation(line: 141, column: 18, scope: !1858)
!1861 = !DILocation(line: 141, column: 22, scope: !1862)
!1862 = !DILexicalBlockFile(scope: !1858, file: !528, discriminator: 1)
!1863 = !DILocation(line: 141, column: 21, scope: !1862)
!1864 = !DILocation(line: 141, column: 27, scope: !1862)
!1865 = !DILocation(line: 141, column: 6, scope: !1862)
!1866 = !DILocalVariable(name: "ip4", scope: !1867, file: !528, line: 142, type: !123)
!1867 = distinct !DILexicalBlock(scope: !1858, file: !528, line: 141, column: 36)
!1868 = !DILocation(line: 142, column: 10, scope: !1867)
!1869 = !DILocalVariable(name: "ip6", scope: !1867, file: !528, line: 142, type: !123)
!1870 = !DILocation(line: 142, column: 15, scope: !1867)
!1871 = !DILocation(line: 144, column: 25, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1867, file: !528, line: 144, column: 7)
!1873 = !DILocation(line: 144, column: 7, scope: !1872)
!1874 = !DILocation(line: 144, column: 43, scope: !1872)
!1875 = !DILocation(line: 144, column: 7, scope: !1867)
!1876 = !DILocation(line: 145, column: 52, scope: !1872)
!1877 = !DILocation(line: 145, column: 25, scope: !1872)
!1878 = !DILocation(line: 146, column: 2, scope: !1867)
!1879 = !DILocation(line: 148, column: 18, scope: !1335)
!1880 = !DILocation(line: 148, column: 2, scope: !1335)
!1881 = !DILocation(line: 149, column: 16, scope: !1335)
!1882 = !DILocation(line: 149, column: 9, scope: !1335)
!1883 = !DILocation(line: 150, column: 1, scope: !1335)
!1884 = distinct !DISubprogram(name: "update_reconnection", scope: !528, file: !528, line: 212, type: !1885, isLocal: true, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{null, !102, !92}
!1887 = !DILocalVariable(name: "conn", arg: 1, scope: !1884, file: !528, line: 212, type: !102)
!1888 = !DILocation(line: 212, column: 53, scope: !1884)
!1889 = !DILocalVariable(name: "server", arg: 2, scope: !1884, file: !528, line: 212, type: !92)
!1890 = !DILocation(line: 212, column: 71, scope: !1884)
!1891 = !DILocalVariable(name: "oldconn", scope: !1884, file: !528, line: 214, type: !102)
!1892 = !DILocation(line: 214, column: 22, scope: !1884)
!1893 = !DILocalVariable(name: "recon", scope: !1884, file: !528, line: 215, type: !1894)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64, align: 64)
!1895 = !DIDerivedType(tag: DW_TAG_typedef, name: "RECONNECT_REC", file: !1896, line: 13, baseType: !1897)
!1896 = !DIFile(filename: "servers-reconnect.h", directory: "/home/lichi/Desktop/irssi/task1")
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1896, line: 8, size: 192, align: 64, elements: !1898)
!1898 = !{!1899, !1900, !1901}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !1897, file: !1896, line: 9, baseType: !83, size: 32, align: 32)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "next_connect", scope: !1897, file: !1896, line: 10, baseType: !356, size: 64, align: 64, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !1897, file: !1896, line: 12, baseType: !102, size: 64, align: 64, offset: 128)
!1902 = !DILocation(line: 215, column: 17, scope: !1884)
!1903 = !DILocation(line: 217, column: 6, scope: !1904)
!1904 = distinct !DILexicalBlock(scope: !1884, file: !528, line: 217, column: 6)
!1905 = !DILocation(line: 217, column: 13, scope: !1904)
!1906 = !DILocation(line: 217, column: 6, scope: !1884)
!1907 = !DILocation(line: 218, column: 13, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1904, file: !528, line: 217, column: 21)
!1909 = !DILocation(line: 218, column: 21, scope: !1908)
!1910 = !DILocation(line: 218, column: 11, scope: !1908)
!1911 = !DILocation(line: 219, column: 36, scope: !1908)
!1912 = !DILocation(line: 219, column: 17, scope: !1908)
!1913 = !DILocation(line: 220, column: 39, scope: !1908)
!1914 = !DILocation(line: 220, column: 45, scope: !1908)
!1915 = !DILocation(line: 220, column: 17, scope: !1908)
!1916 = !DILocation(line: 221, column: 2, scope: !1908)
!1917 = !DILocation(line: 224, column: 33, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1904, file: !528, line: 221, column: 9)
!1919 = !DILocation(line: 224, column: 39, scope: !1918)
!1920 = !DILocation(line: 225, column: 12, scope: !1918)
!1921 = !DILocation(line: 225, column: 18, scope: !1918)
!1922 = !DILocation(line: 225, column: 27, scope: !1918)
!1923 = !DILocation(line: 225, column: 33, scope: !1918)
!1924 = !DILocation(line: 224, column: 11, scope: !1918)
!1925 = !DILocation(line: 224, column: 9, scope: !1918)
!1926 = !DILocation(line: 226, column: 7, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1918, file: !528, line: 226, column: 7)
!1928 = !DILocation(line: 226, column: 13, scope: !1927)
!1929 = !DILocation(line: 226, column: 7, scope: !1918)
!1930 = !DILocation(line: 226, column: 21, scope: !1931)
!1931 = !DILexicalBlockFile(scope: !1927, file: !528, discriminator: 1)
!1932 = !DILocation(line: 228, column: 13, scope: !1918)
!1933 = !DILocation(line: 228, column: 20, scope: !1918)
!1934 = !DILocation(line: 228, column: 11, scope: !1918)
!1935 = !DILocation(line: 229, column: 36, scope: !1918)
!1936 = !DILocation(line: 229, column: 17, scope: !1918)
!1937 = !DILocation(line: 230, column: 28, scope: !1918)
!1938 = !DILocation(line: 230, column: 3, scope: !1918)
!1939 = !DILocation(line: 232, column: 32, scope: !1918)
!1940 = !DILocation(line: 232, column: 41, scope: !1918)
!1941 = !DILocation(line: 232, column: 23, scope: !1918)
!1942 = !DILocation(line: 232, column: 3, scope: !1918)
!1943 = !DILocation(line: 232, column: 9, scope: !1918)
!1944 = !DILocation(line: 232, column: 21, scope: !1918)
!1945 = !DILocation(line: 233, column: 29, scope: !1918)
!1946 = !DILocation(line: 233, column: 38, scope: !1918)
!1947 = !DILocation(line: 233, column: 20, scope: !1918)
!1948 = !DILocation(line: 233, column: 3, scope: !1918)
!1949 = !DILocation(line: 233, column: 9, scope: !1918)
!1950 = !DILocation(line: 233, column: 18, scope: !1918)
!1951 = !DILocation(line: 236, column: 2, scope: !1884)
!1952 = !DILocation(line: 236, column: 8, scope: !1884)
!1953 = !DILocation(line: 236, column: 21, scope: !1884)
!1954 = !DILocation(line: 238, column: 6, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1884, file: !528, line: 238, column: 6)
!1956 = !DILocation(line: 238, column: 12, scope: !1955)
!1957 = !DILocation(line: 238, column: 20, scope: !1955)
!1958 = !DILocation(line: 238, column: 27, scope: !1955)
!1959 = !DILocation(line: 238, column: 30, scope: !1960)
!1960 = !DILexicalBlockFile(scope: !1955, file: !528, discriminator: 1)
!1961 = !DILocation(line: 238, column: 39, scope: !1960)
!1962 = !DILocation(line: 238, column: 47, scope: !1960)
!1963 = !DILocation(line: 238, column: 6, scope: !1960)
!1964 = !DILocation(line: 239, column: 28, scope: !1955)
!1965 = !DILocation(line: 239, column: 37, scope: !1955)
!1966 = !DILocation(line: 239, column: 19, scope: !1955)
!1967 = !DILocation(line: 239, column: 3, scope: !1955)
!1968 = !DILocation(line: 239, column: 9, scope: !1955)
!1969 = !DILocation(line: 239, column: 17, scope: !1955)
!1970 = !DILocation(line: 241, column: 23, scope: !1884)
!1971 = !DILocation(line: 241, column: 2, scope: !1884)
!1972 = !DILocation(line: 242, column: 6, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1884, file: !528, line: 242, column: 6)
!1974 = !DILocation(line: 242, column: 13, scope: !1973)
!1975 = !DILocation(line: 242, column: 6, scope: !1884)
!1976 = !DILocation(line: 244, column: 29, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1973, file: !528, line: 242, column: 21)
!1978 = !DILocation(line: 243, column: 3, scope: !1977)
!1979 = !DILocation(line: 245, column: 2, scope: !1977)
!1980 = !DILocation(line: 246, column: 1, scope: !1884)
!1981 = distinct !DISubprogram(name: "find_reconnect_server", scope: !528, file: !528, line: 178, type: !1982, isLocal: true, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !529)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!1894, !83, !69, !83}
!1984 = !DILocalVariable(name: "chat_type", arg: 1, scope: !1981, file: !528, line: 178, type: !83)
!1985 = !DILocation(line: 178, column: 49, scope: !1981)
!1986 = !DILocalVariable(name: "addr", arg: 2, scope: !1981, file: !528, line: 179, type: !69)
!1987 = !DILocation(line: 179, column: 22, scope: !1981)
!1988 = !DILocalVariable(name: "port", arg: 3, scope: !1981, file: !528, line: 179, type: !83)
!1989 = !DILocation(line: 179, column: 32, scope: !1981)
!1990 = !DILocalVariable(name: "match", scope: !1981, file: !528, line: 181, type: !1894)
!1991 = !DILocation(line: 181, column: 17, scope: !1981)
!1992 = !DILocalVariable(name: "last_proto_match", scope: !1981, file: !528, line: 181, type: !1894)
!1993 = !DILocation(line: 181, column: 25, scope: !1981)
!1994 = !DILocalVariable(name: "tmp", scope: !1981, file: !528, line: 182, type: !284)
!1995 = !DILocation(line: 182, column: 10, scope: !1981)
!1996 = !DILocalVariable(name: "count", scope: !1981, file: !528, line: 183, type: !83)
!1997 = !DILocation(line: 183, column: 13, scope: !1981)
!1998 = !DILocation(line: 185, column: 2, scope: !1981)
!1999 = distinct !{!1999, !1998}
!2000 = !DILocation(line: 185, column: 10, scope: !2001)
!2001 = !DILexicalBlockFile(scope: !2002, file: !528, discriminator: 1)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !528, line: 185, column: 10)
!2003 = distinct !DILexicalBlock(scope: !1981, file: !528, line: 185, column: 4)
!2004 = !DILocation(line: 185, column: 15, scope: !2001)
!2005 = !DILocation(line: 185, column: 5, scope: !2006)
!2006 = !DILexicalBlockFile(scope: !2007, file: !528, discriminator: 2)
!2007 = distinct !DILexicalBlock(scope: !2002, file: !528, line: 185, column: 3)
!2008 = !DILocation(line: 185, column: 14, scope: !2009)
!2009 = !DILexicalBlockFile(scope: !2010, file: !528, discriminator: 3)
!2010 = distinct !DILexicalBlock(scope: !2002, file: !528, line: 185, column: 12)
!2011 = !DILocation(line: 185, column: 99, scope: !2009)
!2012 = !DILocation(line: 185, column: 7, scope: !2013)
!2013 = !DILexicalBlockFile(scope: !2003, file: !528, discriminator: 4)
!2014 = !DILocation(line: 189, column: 34, scope: !1981)
!2015 = !DILocation(line: 189, column: 15, scope: !1981)
!2016 = !DILocation(line: 189, column: 47, scope: !1981)
!2017 = !DILocation(line: 190, column: 13, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1981, file: !528, line: 190, column: 2)
!2019 = !DILocation(line: 190, column: 11, scope: !2018)
!2020 = !DILocation(line: 190, column: 7, scope: !2018)
!2021 = !DILocation(line: 190, column: 25, scope: !2022)
!2022 = !DILexicalBlockFile(scope: !2023, file: !528, discriminator: 1)
!2023 = distinct !DILexicalBlock(scope: !2018, file: !528, line: 190, column: 2)
!2024 = !DILocation(line: 190, column: 29, scope: !2022)
!2025 = !DILocation(line: 190, column: 2, scope: !2022)
!2026 = !DILocalVariable(name: "rec", scope: !2027, file: !528, line: 191, type: !1894)
!2027 = distinct !DILexicalBlock(scope: !2023, file: !528, line: 190, column: 54)
!2028 = !DILocation(line: 191, column: 18, scope: !2027)
!2029 = !DILocation(line: 191, column: 24, scope: !2027)
!2030 = !DILocation(line: 191, column: 29, scope: !2027)
!2031 = !DILocation(line: 193, column: 7, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2027, file: !528, line: 193, column: 7)
!2033 = !DILocation(line: 193, column: 12, scope: !2032)
!2034 = !DILocation(line: 193, column: 18, scope: !2032)
!2035 = !DILocation(line: 193, column: 31, scope: !2032)
!2036 = !DILocation(line: 193, column: 28, scope: !2032)
!2037 = !DILocation(line: 193, column: 7, scope: !2027)
!2038 = !DILocation(line: 194, column: 9, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2032, file: !528, line: 193, column: 42)
!2040 = !DILocation(line: 194, column: 32, scope: !2039)
!2041 = !DILocation(line: 194, column: 30, scope: !2039)
!2042 = !DILocation(line: 195, column: 27, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2039, file: !528, line: 195, column: 8)
!2044 = !DILocation(line: 195, column: 32, scope: !2043)
!2045 = !DILocation(line: 195, column: 38, scope: !2043)
!2046 = !DILocation(line: 195, column: 47, scope: !2043)
!2047 = !DILocation(line: 195, column: 8, scope: !2043)
!2048 = !DILocation(line: 195, column: 53, scope: !2043)
!2049 = !DILocation(line: 195, column: 8, scope: !2039)
!2050 = !DILocation(line: 196, column: 9, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !528, line: 196, column: 9)
!2052 = distinct !DILexicalBlock(scope: !2043, file: !528, line: 195, column: 59)
!2053 = !DILocation(line: 196, column: 14, scope: !2051)
!2054 = !DILocation(line: 196, column: 20, scope: !2051)
!2055 = !DILocation(line: 196, column: 28, scope: !2051)
!2056 = !DILocation(line: 196, column: 25, scope: !2051)
!2057 = !DILocation(line: 196, column: 9, scope: !2052)
!2058 = !DILocation(line: 197, column: 13, scope: !2051)
!2059 = !DILocation(line: 197, column: 6, scope: !2051)
!2060 = !DILocation(line: 198, column: 13, scope: !2052)
!2061 = !DILocation(line: 198, column: 11, scope: !2052)
!2062 = !DILocation(line: 199, column: 4, scope: !2052)
!2063 = !DILocation(line: 200, column: 3, scope: !2039)
!2064 = !DILocation(line: 201, column: 2, scope: !2027)
!2065 = !DILocation(line: 190, column: 43, scope: !2066)
!2066 = !DILexicalBlockFile(scope: !2023, file: !528, discriminator: 2)
!2067 = !DILocation(line: 190, column: 48, scope: !2066)
!2068 = !DILocation(line: 190, column: 41, scope: !2066)
!2069 = !DILocation(line: 190, column: 2, scope: !2066)
!2070 = distinct !{!2070, !2071}
!2071 = !DILocation(line: 190, column: 2, scope: !1981)
!2072 = !DILocation(line: 203, column: 6, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !1981, file: !528, line: 203, column: 6)
!2074 = !DILocation(line: 203, column: 12, scope: !2073)
!2075 = !DILocation(line: 203, column: 6, scope: !1981)
!2076 = !DILocation(line: 206, column: 24, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2073, file: !528, line: 203, column: 18)
!2078 = !DILocation(line: 206, column: 17, scope: !2077)
!2079 = !DILocation(line: 209, column: 9, scope: !1981)
!2080 = !DILocation(line: 209, column: 2, scope: !1981)
!2081 = !DILocation(line: 210, column: 1, scope: !1981)
