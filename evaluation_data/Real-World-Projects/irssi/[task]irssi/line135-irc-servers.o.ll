; ModuleID = './line135-irc-servers.o.i'
source_filename = "./line135-irc-servers.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
%struct._IRC_CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._IRC_SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)*, %struct._GSList*, i64, i32, i32 }
%struct._IRC_SERVER_REC = type { i32, i32, i32, %struct._IRC_SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, void (%struct._SERVER_REC*, i8*, i32)*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)*, %struct._GSList*, %struct._GSList*, %struct._REDIRECT_REC*, %struct._GSList*, i8*, i8*, i8*, i8*, i8*, i32, i16, i32, i32, i32, i32, %struct._GHashTable*, %struct._GSList*, %struct._GSList*, %struct._GString*, i32, i32, %struct._GSList*, %struct._GTimeVal, %struct._GTimeVal, i32, i32, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GHashTable*, %struct._GSList*, %struct._GSList*, i8*, %struct._GHashTable*, [256 x %struct.modes_type], [256 x i8], i32 (i8*, i8*)* }
%struct._IRC_SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct._IPADDR = type opaque
%struct._GIOChannel = type { i32, %struct._GIOFuncs*, i8*, %struct._GIConv*, %struct._GIConv*, i8*, i32, i64, %struct._GString*, %struct._GString*, %struct._GString*, [6 x i8], i8, i8*, i8* }
%struct._GIOFuncs = type { i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i64, i32, %struct._GError**)*, i32 (%struct._GIOChannel*, %struct._GError**)*, %struct._GSource* (%struct._GIOChannel*, i32)*, void (%struct._GIOChannel*)*, i32 (%struct._GIOChannel*, i32, %struct._GError**)*, i32 (%struct._GIOChannel*)* }
%struct._GError = type { i32, i32, i8* }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSourcePrivate = type opaque
%struct._GIConv = type opaque
%struct._NET_SENDBUF_REC = type { %struct._GIOChannel*, %struct._LINEBUF_REC*, i32, i32, i32, i8*, i32, i8 }
%struct._LINEBUF_REC = type opaque
%struct._RAWLOG_REC = type { i32, i32, i32, %struct._GSList* }
%struct._SERVER_REC = type { i32, i32, i32, %struct._SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, void (%struct._SERVER_REC*, i8*, i32)*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)* }
%struct._SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8* }
%struct._CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)* }
%struct._QUERY_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, i8 }
%struct._REDIRECT_REC = type opaque
%struct._GTimeVal = type { i64, i64 }
%struct.modes_type = type { void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, i8 }
%struct._WI_ITEM_REC = type opaque
%struct._GHashTable = type opaque
%struct._NICK_REC = type { i32, i32, i64, i8*, i8*, i8*, i32, i8, [8 x i8], i8*, %struct._NICK_REC* }
%struct._GString = type { i8*, i64, i64 }
%struct._CHANNEL_SETUP_REC = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8, %struct._GHashTable* }
%struct.REJOIN_REC = type { i8*, i8*, i8 }

@.str = private unnamed_addr constant [15 x i8] c"SERVER CONNECT\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"IRC\00", align 1
@__func__.irc_server_init_connect = private unnamed_addr constant [24 x i8] c"irc_server_init_connect\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"IS_IRC_SERVER_CONNECT(conn)\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"cmd_queue_speed\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"cmds_max_at_once\00", align 1
@__func__.irc_server_connect = private unnamed_addr constant [19 x i8] c"irc_server_connect\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"server != NULL\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"PONG \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"PRIVMSG %s :\01ACTION %s\01\00", align 1
@__func__.irc_server_split_action = private unnamed_addr constant [24 x i8] c"irc_server_split_action\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"target != NULL\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"AWAY :%s\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"AWAY\00", align 1
@cmd_tag = internal global i32 0, align 4
@__func__.irc_server_get_channels = private unnamed_addr constant [24 x i8] c"irc_server_get_channels\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"rejoin_channels_on_reconnect\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%s,\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"CHANMODES\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"PREFIX\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"(ohv)@%+\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"MODES\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"CASEMAPPING\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"rfc1459\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"TARGMAX\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"KICK:\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"PRIVMSG:\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"MAXTARGETS\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"irc/core\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"servers\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"off;on;auto\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"usermode\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"+i\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"split_line_start\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"split_line_end\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"split_line_on_space\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"flood\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"2200msec\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"server connected\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"server destroyed\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"server quit\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"event 001\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"event 004\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"event 005\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"event 375\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"event 376\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"event 422\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"event 254\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"event 396\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"event 465\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"event error\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"event ping\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"event empty\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"irc-servers.c\00", align 1
@__func__.split_line = private unnamed_addr constant [11 x i8] c"split_line\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"len > 0\00", align 1
@servers = external global %struct._GSList*, align 8
@parse_chanmodes.modefuncs = private unnamed_addr constant [4 x void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*] [void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* @modes_type_a, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* @modes_type_b, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* @modes_type_c, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* @modes_type_d], align 16
@.str.56 = private unnamed_addr constant [2 x i8] c",\00", align 1
@__func__.ischannel_func = private unnamed_addr constant [15 x i8] c"ischannel_func\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"chantypes\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"#&!+\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"statusmsg\00", align 1
@.str.60 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@__func__.split_message = private unnamed_addr constant [14 x i8] c"split_message\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"ircserver != NULL\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"msg != NULL\00", align 1
@__func__.send_message = private unnamed_addr constant [13 x i8] c"send_message\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"PRIVMSG %s :%s\00", align 1
@__func__.server_init = private unnamed_addr constant [12 x i8] c"server_init\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"PASS %s\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"sasl\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"multi-prefix\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"CAP LS\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"NICK %s\00", align 1
@.str.69 = private unnamed_addr constant [18 x i8] c"USER %s %s %s :%s\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"beI,k,l,imnpst\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"QUIT :%s\00", align 1
@__func__.event_connected = private unnamed_addr constant [16 x i8] c"event_connected\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"MODE %s %s\00", align 1
@.str.73 = private unnamed_addr constant [16 x i8] c"event connected\00", align 1
@__func__.event_server_info = private unnamed_addr constant [18 x i8] c"event_server_info\00", align 1
@__func__.event_isupport = private unnamed_addr constant [15 x i8] c"event_isupport\00", align 1
@.str.74 = private unnamed_addr constant [2 x i8] c" \00", align 1
@__func__.event_channels_formed = private unnamed_addr constant [22 x i8] c"event_channels_formed\00", align 1
@__func__.event_hosthidden = private unnamed_addr constant [17 x i8] c"event_hosthidden\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"%.*s@%s\00", align 1
@__func__.event_server_banned = private unnamed_addr constant [20 x i8] c"event_server_banned\00", align 1
@__func__.event_error = private unnamed_addr constant [12 x i8] c"event_error\00", align 1
@.str.76 = private unnamed_addr constant [13 x i8] c"Unauthorized\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"K-lined\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"Banned\00", align 1
@.str.79 = private unnamed_addr constant [14 x i8] c"Bad user info\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"PONG :\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"PONG %s :%s\00", align 1

; Function Attrs: nounwind uwtable
define %struct._SERVER_REC* @irc_server_init_connect(%struct._SERVER_CONNECT_REC*) #0 !dbg !734 {
  %2 = alloca %struct._SERVER_REC*, align 8
  %3 = alloca %struct._SERVER_CONNECT_REC*, align 8
  %4 = alloca %struct._IRC_SERVER_CONNECT_REC*, align 8
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  store %struct._SERVER_CONNECT_REC* %0, %struct._SERVER_CONNECT_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_CONNECT_REC** %3, metadata !738, metadata !739), !dbg !740
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_CONNECT_REC** %4, metadata !741, metadata !739), !dbg !742
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !743, metadata !739), !dbg !744
  br label %6, !dbg !745, !llvm.loop !746

; <label>:6:                                      ; preds = %1
  %7 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !747
  %8 = bitcast %struct._SERVER_CONNECT_REC* %7 to i8*, !dbg !747
  %9 = call i8* @module_check_cast(i8* %8, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !751
  %10 = bitcast i8* %9 to %struct._SERVER_CONNECT_REC*, !dbg !752
  %11 = bitcast %struct._SERVER_CONNECT_REC* %10 to i8*, !dbg !753
  %12 = call i8* @chat_protocol_check_cast(i8* %11, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !754
  %13 = bitcast i8* %12 to %struct._IRC_SERVER_CONNECT_REC*, !dbg !756
  %14 = icmp ne %struct._IRC_SERVER_CONNECT_REC* %13, null, !dbg !756
  br i1 %14, label %15, label %16, !dbg !757

; <label>:15:                                     ; preds = %6
  br i1 false, label %18, label %17, !dbg !758

; <label>:16:                                     ; preds = %6
  br i1 false, label %17, label %18, !dbg !760

; <label>:17:                                     ; preds = %16, %15
  br label %19, !dbg !762

; <label>:18:                                     ; preds = %16, %15
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.irc_server_init_connect, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0)), !dbg !765
  store %struct._SERVER_REC* null, %struct._SERVER_REC** %2, align 8, !dbg !768
  br label %195, !dbg !768

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !769

; <label>:20:                                     ; preds = %19
  %21 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !771
  %22 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %21, i32 0, i32 10, !dbg !773
  %23 = load i8*, i8** %22, align 8, !dbg !773
  %24 = icmp eq i8* %23, null, !dbg !774
  br i1 %24, label %32, label %25, !dbg !775

; <label>:25:                                     ; preds = %20
  %26 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !776
  %27 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %26, i32 0, i32 10, !dbg !778
  %28 = load i8*, i8** %27, align 8, !dbg !778
  %29 = load i8, i8* %28, align 1, !dbg !779
  %30 = sext i8 %29 to i32, !dbg !779
  %31 = icmp eq i32 %30, 0, !dbg !780
  br i1 %31, label %32, label %33, !dbg !781

; <label>:32:                                     ; preds = %25, %20
  store %struct._SERVER_REC* null, %struct._SERVER_REC** %2, align 8, !dbg !782
  br label %195, !dbg !782

; <label>:33:                                     ; preds = %25
  %34 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !784
  %35 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %34, i32 0, i32 16, !dbg !786
  %36 = load i8*, i8** %35, align 8, !dbg !786
  %37 = icmp eq i8* %36, null, !dbg !787
  br i1 %37, label %45, label %38, !dbg !788

; <label>:38:                                     ; preds = %33
  %39 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !789
  %40 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %39, i32 0, i32 16, !dbg !791
  %41 = load i8*, i8** %40, align 8, !dbg !791
  %42 = load i8, i8* %41, align 1, !dbg !792
  %43 = sext i8 %42 to i32, !dbg !792
  %44 = icmp eq i32 %43, 0, !dbg !793
  br i1 %44, label %45, label %46, !dbg !794

; <label>:45:                                     ; preds = %38, %33
  store %struct._SERVER_REC* null, %struct._SERVER_REC** %2, align 8, !dbg !795
  br label %195, !dbg !795

; <label>:46:                                     ; preds = %38
  %47 = call noalias i8* @g_malloc0_n(i64 1, i64 4896), !dbg !797
  %48 = bitcast i8* %47 to %struct._IRC_SERVER_REC*, !dbg !798
  store %struct._IRC_SERVER_REC* %48, %struct._IRC_SERVER_REC** %5, align 8, !dbg !799
  %49 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !800
  %50 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !801
  %51 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %50, i32 0, i32 1, !dbg !802
  store i32 %49, i32* %51, align 4, !dbg !803
  %52 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !804
  %53 = bitcast %struct._SERVER_CONNECT_REC* %52 to %struct._IRC_SERVER_CONNECT_REC*, !dbg !805
  store %struct._IRC_SERVER_CONNECT_REC* %53, %struct._IRC_SERVER_CONNECT_REC** %4, align 8, !dbg !806
  %54 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %4, align 8, !dbg !807
  %55 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !808
  %56 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %55, i32 0, i32 3, !dbg !809
  store %struct._IRC_SERVER_CONNECT_REC* %54, %struct._IRC_SERVER_CONNECT_REC** %56, align 8, !dbg !810
  %57 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !811
  call void @server_connect_ref(%struct._SERVER_CONNECT_REC* %57), !dbg !812
  %58 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !813
  %59 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %58, i32 0, i32 3, !dbg !815
  %60 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %59, align 8, !dbg !815
  %61 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %60, i32 0, i32 11, !dbg !816
  %62 = load i32, i32* %61, align 8, !dbg !816
  %63 = icmp sle i32 %62, 0, !dbg !817
  br i1 %63, label %64, label %79, !dbg !818

; <label>:64:                                     ; preds = %46
  %65 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !819
  %66 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %65, i32 0, i32 3, !dbg !821
  %67 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %66, align 8, !dbg !821
  %68 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %67, i32 0, i32 28, !dbg !822
  %69 = load i8, i8* %68, align 8, !dbg !822
  %70 = lshr i8 %69, 5, !dbg !822
  %71 = and i8 %70, 1, !dbg !822
  %72 = zext i8 %71 to i32, !dbg !822
  %73 = icmp ne i32 %72, 0, !dbg !819
  %74 = select i1 %73, i32 6697, i32 6667, !dbg !819
  %75 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !823
  %76 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %75, i32 0, i32 3, !dbg !824
  %77 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %76, align 8, !dbg !824
  %78 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %77, i32 0, i32 11, !dbg !825
  store i32 %74, i32* %78, align 8, !dbg !826
  br label %79, !dbg !827

; <label>:79:                                     ; preds = %64, %46
  %80 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %4, align 8, !dbg !828
  %81 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %80, i32 0, i32 37, !dbg !829
  %82 = load i32, i32* %81, align 4, !dbg !829
  %83 = icmp sgt i32 %82, 0, !dbg !830
  br i1 %83, label %84, label %88, !dbg !828

; <label>:84:                                     ; preds = %79
  %85 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %4, align 8, !dbg !831
  %86 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %85, i32 0, i32 37, !dbg !832
  %87 = load i32, i32* %86, align 4, !dbg !832
  br label %90, !dbg !833

; <label>:88:                                     ; preds = %79
  %89 = call i32 @settings_get_time(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0)), !dbg !835
  br label %90, !dbg !836

; <label>:90:                                     ; preds = %88, %84
  %91 = phi i32 [ %87, %84 ], [ %89, %88 ], !dbg !838
  %92 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !840
  %93 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %92, i32 0, i32 60, !dbg !841
  store i32 %91, i32* %93, align 4, !dbg !842
  %94 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %4, align 8, !dbg !843
  %95 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %94, i32 0, i32 36, !dbg !844
  %96 = load i32, i32* %95, align 8, !dbg !844
  %97 = icmp sgt i32 %96, 0, !dbg !845
  br i1 %97, label %98, label %102, !dbg !843

; <label>:98:                                     ; preds = %90
  %99 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %4, align 8, !dbg !846
  %100 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %99, i32 0, i32 36, !dbg !847
  %101 = load i32, i32* %100, align 8, !dbg !847
  br label %104, !dbg !848

; <label>:102:                                    ; preds = %90
  %103 = call i32 @settings_get_int(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0)), !dbg !849
  br label %104, !dbg !850

; <label>:104:                                    ; preds = %102, %98
  %105 = phi i32 [ %101, %98 ], [ %103, %102 ], !dbg !851
  %106 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !852
  %107 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %106, i32 0, i32 59, !dbg !853
  store i32 %105, i32* %107, align 8, !dbg !854
  %108 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %4, align 8, !dbg !855
  %109 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %108, i32 0, i32 38, !dbg !856
  %110 = load i32, i32* %109, align 8, !dbg !856
  %111 = icmp sgt i32 %110, 0, !dbg !857
  br i1 %111, label %112, label %116, !dbg !855

; <label>:112:                                    ; preds = %104
  %113 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %4, align 8, !dbg !858
  %114 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %113, i32 0, i32 38, !dbg !859
  %115 = load i32, i32* %114, align 8, !dbg !859
  br label %117, !dbg !860

; <label>:116:                                    ; preds = %104
  br label %117, !dbg !861

; <label>:117:                                    ; preds = %116, %112
  %118 = phi i32 [ %115, %112 ], [ 1, %116 ], !dbg !862
  %119 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !863
  %120 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %119, i32 0, i32 61, !dbg !864
  store i32 %118, i32* %120, align 8, !dbg !865
  %121 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %4, align 8, !dbg !866
  %122 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %121, i32 0, i32 39, !dbg !867
  %123 = load i32, i32* %122, align 4, !dbg !867
  %124 = icmp sgt i32 %123, 0, !dbg !868
  br i1 %124, label %125, label %129, !dbg !866

; <label>:125:                                    ; preds = %117
  %126 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %4, align 8, !dbg !869
  %127 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %126, i32 0, i32 39, !dbg !870
  %128 = load i32, i32* %127, align 4, !dbg !870
  br label %130, !dbg !871

; <label>:129:                                    ; preds = %117
  br label %130, !dbg !872

; <label>:130:                                    ; preds = %129, %125
  %131 = phi i32 [ %128, %125 ], [ 1, %129 ], !dbg !873
  %132 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !874
  %133 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %132, i32 0, i32 46, !dbg !875
  store i32 %131, i32* %133, align 8, !dbg !876
  %134 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %4, align 8, !dbg !877
  %135 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %134, i32 0, i32 41, !dbg !878
  %136 = load i32, i32* %135, align 4, !dbg !878
  %137 = icmp sgt i32 %136, 0, !dbg !879
  br i1 %137, label %138, label %142, !dbg !877

; <label>:138:                                    ; preds = %130
  %139 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %4, align 8, !dbg !880
  %140 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %139, i32 0, i32 41, !dbg !881
  %141 = load i32, i32* %140, align 4, !dbg !881
  br label %143, !dbg !882

; <label>:142:                                    ; preds = %130
  br label %143, !dbg !883

; <label>:143:                                    ; preds = %142, %138
  %144 = phi i32 [ %141, %138 ], [ 3, %142 ], !dbg !884
  %145 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !885
  %146 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %145, i32 0, i32 47, !dbg !886
  store i32 %144, i32* %146, align 4, !dbg !887
  %147 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %4, align 8, !dbg !888
  %148 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %147, i32 0, i32 42, !dbg !889
  %149 = load i32, i32* %148, align 8, !dbg !889
  %150 = icmp sgt i32 %149, 0, !dbg !890
  br i1 %150, label %151, label %155, !dbg !888

; <label>:151:                                    ; preds = %143
  %152 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %4, align 8, !dbg !891
  %153 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %152, i32 0, i32 42, !dbg !892
  %154 = load i32, i32* %153, align 8, !dbg !892
  br label %156, !dbg !893

; <label>:155:                                    ; preds = %143
  br label %156, !dbg !894

; <label>:156:                                    ; preds = %155, %151
  %157 = phi i32 [ %154, %151 ], [ 4, %155 ], !dbg !895
  %158 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !896
  %159 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %158, i32 0, i32 48, !dbg !897
  store i32 %157, i32* %159, align 8, !dbg !898
  %160 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %4, align 8, !dbg !899
  %161 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %160, i32 0, i32 40, !dbg !900
  %162 = load i32, i32* %161, align 8, !dbg !900
  %163 = icmp sgt i32 %162, 0, !dbg !901
  br i1 %163, label %164, label %168, !dbg !899

; <label>:164:                                    ; preds = %156
  %165 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %4, align 8, !dbg !902
  %166 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %165, i32 0, i32 40, !dbg !903
  %167 = load i32, i32* %166, align 8, !dbg !903
  br label %169, !dbg !904

; <label>:168:                                    ; preds = %156
  br label %169, !dbg !905

; <label>:169:                                    ; preds = %168, %164
  %170 = phi i32 [ %167, %164 ], [ 1, %168 ], !dbg !906
  %171 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !907
  %172 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %171, i32 0, i32 49, !dbg !908
  store i32 %170, i32* %172, align 4, !dbg !909
  %173 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %3, align 8, !dbg !910
  %174 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %173, i32 0, i32 28, !dbg !911
  %175 = load i8, i8* %174, align 8, !dbg !911
  %176 = lshr i8 %175, 5, !dbg !911
  %177 = and i8 %176, 1, !dbg !911
  %178 = zext i8 %177 to i32, !dbg !911
  %179 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !912
  %180 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %179, i32 0, i32 3, !dbg !913
  %181 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %180, align 8, !dbg !913
  %182 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %181, i32 0, i32 28, !dbg !914
  %183 = trunc i32 %178 to i8, !dbg !915
  %184 = load i8, i8* %182, align 8, !dbg !915
  %185 = and i8 %183, 1, !dbg !915
  %186 = shl i8 %185, 5, !dbg !915
  %187 = and i8 %184, -33, !dbg !915
  %188 = or i8 %187, %186, !dbg !915
  store i8 %188, i8* %182, align 8, !dbg !915
  %189 = zext i8 %185 to i32, !dbg !915
  %190 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !916
  call void @modes_server_init(%struct._IRC_SERVER_REC* %190), !dbg !917
  %191 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !918
  %192 = bitcast %struct._IRC_SERVER_REC* %191 to %struct._SERVER_REC*, !dbg !919
  call void @server_connect_init(%struct._SERVER_REC* %192), !dbg !920
  %193 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !921
  %194 = bitcast %struct._IRC_SERVER_REC* %193 to %struct._SERVER_REC*, !dbg !922
  store %struct._SERVER_REC* %194, %struct._SERVER_REC** %2, align 8, !dbg !923
  br label %195, !dbg !923

; <label>:195:                                    ; preds = %169, %45, %32, %18
  %196 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !924
  ret %struct._SERVER_REC* %196, !dbg !924
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @chat_protocol_check_cast(i8*, i32, i8*) #2

declare i8* @module_check_cast(i8*, i32, i8*) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare noalias i8* @g_malloc0_n(i64, i64) #2

declare i32 @chat_protocol_lookup(i8*) #2

declare void @server_connect_ref(%struct._SERVER_CONNECT_REC*) #2

declare i32 @settings_get_time(i8*) #2

declare i32 @settings_get_int(i8*) #2

declare void @modes_server_init(%struct._IRC_SERVER_REC*) #2

declare void @server_connect_init(%struct._SERVER_REC*) #2

; Function Attrs: nounwind uwtable
define void @irc_server_connect(%struct._SERVER_REC*) #0 !dbg !925 {
  %2 = alloca %struct._SERVER_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %2, metadata !928, metadata !739), !dbg !929
  br label %3, !dbg !930, !llvm.loop !931

; <label>:3:                                      ; preds = %1
  %4 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !932
  %5 = icmp ne %struct._SERVER_REC* %4, null, !dbg !936
  br i1 %5, label %6, label %7, !dbg !932

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !937

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.irc_server_connect, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0)), !dbg !940
  br label %19, !dbg !943

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !944

; <label>:9:                                      ; preds = %8
  %10 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !946
  %11 = call i32 @server_start_connect(%struct._SERVER_REC* %10), !dbg !948
  %12 = icmp ne i32 %11, 0, !dbg !948
  br i1 %12, label %19, label %13, !dbg !949

; <label>:13:                                     ; preds = %9
  %14 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !950
  %15 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %14, i32 0, i32 3, !dbg !952
  %16 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %15, align 8, !dbg !952
  call void @server_connect_unref(%struct._SERVER_CONNECT_REC* %16), !dbg !953
  %17 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !954
  %18 = bitcast %struct._SERVER_REC* %17 to i8*, !dbg !954
  call void @g_free(i8* %18), !dbg !955
  br label %19, !dbg !956

; <label>:19:                                     ; preds = %7, %13, %9
  ret void, !dbg !957
}

declare i32 @server_start_connect(%struct._SERVER_REC*) #2

declare void @server_connect_unref(%struct._SERVER_CONNECT_REC*) #2

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define void @irc_server_purge_output(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !958 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct._GSList*, align 8
  %8 = alloca %struct._REDIRECT_REC*, align 8
  %9 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !961, metadata !739), !dbg !962
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !963, metadata !739), !dbg !964
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !965, metadata !739), !dbg !966
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !967, metadata !739), !dbg !968
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !969, metadata !739), !dbg !970
  call void @llvm.dbg.declare(metadata %struct._REDIRECT_REC** %8, metadata !971, metadata !739), !dbg !972
  call void @llvm.dbg.declare(metadata i8** %9, metadata !973, metadata !739), !dbg !974
  %10 = load i8*, i8** %4, align 8, !dbg !975
  %11 = icmp ne i8* %10, null, !dbg !977
  br i1 %11, label %12, label %18, !dbg !978

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %4, align 8, !dbg !979
  %14 = load i8, i8* %13, align 1, !dbg !981
  %15 = sext i8 %14 to i32, !dbg !981
  %16 = icmp eq i32 %15, 0, !dbg !982
  br i1 %16, label %17, label %18, !dbg !983

; <label>:17:                                     ; preds = %12
  store i8* null, i8** %4, align 8, !dbg !984
  br label %18, !dbg !985

; <label>:18:                                     ; preds = %17, %12, %2
  %19 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !986
  %20 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %19, i32 0, i32 56, !dbg !988
  %21 = load %struct._GSList*, %struct._GSList** %20, align 8, !dbg !988
  store %struct._GSList* %21, %struct._GSList** %5, align 8, !dbg !989
  br label %22, !dbg !990

; <label>:22:                                     ; preds = %81, %18
  %23 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !991
  %24 = icmp ne %struct._GSList* %23, null, !dbg !994
  br i1 %24, label %25, label %83, !dbg !995

; <label>:25:                                     ; preds = %22
  %26 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !996
  %27 = getelementptr inbounds %struct._GSList, %struct._GSList* %26, i32 0, i32 1, !dbg !998
  %28 = load %struct._GSList*, %struct._GSList** %27, align 8, !dbg !998
  %29 = getelementptr inbounds %struct._GSList, %struct._GSList* %28, i32 0, i32 1, !dbg !999
  %30 = load %struct._GSList*, %struct._GSList** %29, align 8, !dbg !999
  store %struct._GSList* %30, %struct._GSList** %6, align 8, !dbg !1000
  %31 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1001
  %32 = getelementptr inbounds %struct._GSList, %struct._GSList* %31, i32 0, i32 0, !dbg !1002
  %33 = load i8*, i8** %32, align 8, !dbg !1002
  store i8* %33, i8** %9, align 8, !dbg !1003
  %34 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1004
  %35 = getelementptr inbounds %struct._GSList, %struct._GSList* %34, i32 0, i32 1, !dbg !1005
  %36 = load %struct._GSList*, %struct._GSList** %35, align 8, !dbg !1005
  %37 = getelementptr inbounds %struct._GSList, %struct._GSList* %36, i32 0, i32 0, !dbg !1006
  %38 = load i8*, i8** %37, align 8, !dbg !1006
  %39 = bitcast i8* %38 to %struct._REDIRECT_REC*, !dbg !1004
  store %struct._REDIRECT_REC* %39, %struct._REDIRECT_REC** %8, align 8, !dbg !1007
  %40 = load i8*, i8** %4, align 8, !dbg !1008
  %41 = icmp eq i8* %40, null, !dbg !1010
  br i1 %41, label %47, label %42, !dbg !1011

; <label>:42:                                     ; preds = %25
  %43 = load i8*, i8** %9, align 8, !dbg !1012
  %44 = load i8*, i8** %4, align 8, !dbg !1014
  %45 = call i32 @command_has_target(i8* %43, i8* %44), !dbg !1015
  %46 = icmp ne i32 %45, 0, !dbg !1015
  br i1 %46, label %47, label %80, !dbg !1016

; <label>:47:                                     ; preds = %42, %25
  %48 = load i8*, i8** %9, align 8, !dbg !1017
  %49 = call i32 @g_ascii_strncasecmp(i8* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i64 5), !dbg !1018
  %50 = icmp ne i32 %49, 0, !dbg !1019
  br i1 %50, label %51, label %80, !dbg !1020

; <label>:51:                                     ; preds = %47
  %52 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1022
  %53 = getelementptr inbounds %struct._GSList, %struct._GSList* %52, i32 0, i32 1, !dbg !1024
  %54 = load %struct._GSList*, %struct._GSList** %53, align 8, !dbg !1024
  store %struct._GSList* %54, %struct._GSList** %7, align 8, !dbg !1025
  %55 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1026
  %56 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %55, i32 0, i32 56, !dbg !1027
  %57 = load %struct._GSList*, %struct._GSList** %56, align 8, !dbg !1027
  %58 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1028
  %59 = call %struct._GSList* @g_slist_remove_link(%struct._GSList* %57, %struct._GSList* %58), !dbg !1029
  %60 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1030
  %61 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %60, i32 0, i32 56, !dbg !1031
  store %struct._GSList* %59, %struct._GSList** %61, align 8, !dbg !1032
  %62 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1033
  call void @g_slist_free_1(%struct._GSList* %62), !dbg !1034
  %63 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %8, align 8, !dbg !1035
  %64 = icmp ne %struct._REDIRECT_REC* %63, null, !dbg !1037
  br i1 %64, label %65, label %67, !dbg !1038

; <label>:65:                                     ; preds = %51
  %66 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %8, align 8, !dbg !1039
  call void @server_redirect_destroy(%struct._REDIRECT_REC* %66), !dbg !1040
  br label %67, !dbg !1040

; <label>:67:                                     ; preds = %65, %51
  %68 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1041
  %69 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %68, i32 0, i32 56, !dbg !1042
  %70 = load %struct._GSList*, %struct._GSList** %69, align 8, !dbg !1042
  %71 = load i8*, i8** %9, align 8, !dbg !1043
  %72 = call %struct._GSList* @g_slist_remove(%struct._GSList* %70, i8* %71), !dbg !1044
  %73 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1045
  %74 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %73, i32 0, i32 56, !dbg !1046
  store %struct._GSList* %72, %struct._GSList** %74, align 8, !dbg !1047
  %75 = load i8*, i8** %9, align 8, !dbg !1048
  call void @g_free(i8* %75), !dbg !1049
  %76 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1050
  %77 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %76, i32 0, i32 55, !dbg !1051
  %78 = load i32, i32* %77, align 4, !dbg !1052
  %79 = add nsw i32 %78, -1, !dbg !1052
  store i32 %79, i32* %77, align 4, !dbg !1052
  br label %80, !dbg !1053

; <label>:80:                                     ; preds = %67, %47, %42
  br label %81, !dbg !1054

; <label>:81:                                     ; preds = %80
  %82 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1055
  store %struct._GSList* %82, %struct._GSList** %5, align 8, !dbg !1057
  br label %22, !dbg !1058, !llvm.loop !1059

; <label>:83:                                     ; preds = %22
  ret void, !dbg !1061
}

; Function Attrs: nounwind uwtable
define internal i32 @command_has_target(i8*, i8*) #0 !dbg !1062 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1063, metadata !739), !dbg !1064
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1065, metadata !739), !dbg !1066
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1067, metadata !739), !dbg !1068
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1069, metadata !739), !dbg !1070
  %8 = load i8*, i8** %4, align 8, !dbg !1071
  %9 = call i8* @strchr(i8* %8, i32 32) #6, !dbg !1072
  store i8* %9, i8** %6, align 8, !dbg !1073
  %10 = load i8*, i8** %6, align 8, !dbg !1074
  %11 = icmp eq i8* %10, null, !dbg !1076
  br i1 %11, label %12, label %13, !dbg !1077

; <label>:12:                                     ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !1078
  br label %36, !dbg !1078

; <label>:13:                                     ; preds = %2
  %14 = load i8*, i8** %6, align 8, !dbg !1080
  %15 = getelementptr inbounds i8, i8* %14, i32 1, !dbg !1080
  store i8* %15, i8** %6, align 8, !dbg !1080
  %16 = load i8*, i8** %5, align 8, !dbg !1081
  %17 = call i64 @strlen(i8* %16) #6, !dbg !1082
  %18 = trunc i64 %17 to i32, !dbg !1082
  store i32 %18, i32* %7, align 4, !dbg !1083
  %19 = load i8*, i8** %6, align 8, !dbg !1084
  %20 = load i8*, i8** %5, align 8, !dbg !1085
  %21 = load i32, i32* %7, align 4, !dbg !1086
  %22 = sext i32 %21 to i64, !dbg !1086
  %23 = call i32 @strncmp(i8* %19, i8* %20, i64 %22) #6, !dbg !1087
  %24 = icmp eq i32 %23, 0, !dbg !1088
  br i1 %24, label %25, label %33, !dbg !1089

; <label>:25:                                     ; preds = %13
  %26 = load i32, i32* %7, align 4, !dbg !1090
  %27 = sext i32 %26 to i64, !dbg !1092
  %28 = load i8*, i8** %6, align 8, !dbg !1092
  %29 = getelementptr inbounds i8, i8* %28, i64 %27, !dbg !1092
  %30 = load i8, i8* %29, align 1, !dbg !1092
  %31 = sext i8 %30 to i32, !dbg !1092
  %32 = icmp eq i32 %31, 32, !dbg !1093
  br label %33

; <label>:33:                                     ; preds = %25, %13
  %34 = phi i1 [ false, %13 ], [ %32, %25 ]
  %35 = zext i1 %34 to i32, !dbg !1094
  store i32 %35, i32* %3, align 4, !dbg !1096
  br label %36, !dbg !1096

; <label>:36:                                     ; preds = %33, %12
  %37 = load i32, i32* %3, align 4, !dbg !1097
  ret i32 %37, !dbg !1097
}

declare i32 @g_ascii_strncasecmp(i8*, i8*, i64) #2

declare %struct._GSList* @g_slist_remove_link(%struct._GSList*, %struct._GSList*) #2

declare void @g_slist_free_1(%struct._GSList*) #2

declare void @server_redirect_destroy(%struct._REDIRECT_REC*) #2

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define void @irc_server_send_action(%struct._IRC_SERVER_REC*, i8*, i8*) #0 !dbg !1098 {
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !1101, metadata !739), !dbg !1102
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1103, metadata !739), !dbg !1104
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1105, metadata !739), !dbg !1106
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1107, metadata !739), !dbg !1108
  %8 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1109
  %9 = bitcast %struct._IRC_SERVER_REC* %8 to i8*, !dbg !1109
  %10 = call i8* @module_check_cast(i8* %9, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0)), !dbg !1110
  %11 = bitcast i8* %10 to %struct._SERVER_REC*, !dbg !1111
  %12 = load i8*, i8** %6, align 8, !dbg !1112
  %13 = load i8*, i8** %5, align 8, !dbg !1113
  %14 = call i8* @recode_out(%struct._SERVER_REC* %11, i8* %12, i8* %13), !dbg !1114
  store i8* %14, i8** %7, align 8, !dbg !1116
  %15 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1117
  %16 = load i8*, i8** %5, align 8, !dbg !1118
  %17 = load i8*, i8** %7, align 8, !dbg !1119
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0), i8* %16, i8* %17), !dbg !1120
  %18 = load i8*, i8** %7, align 8, !dbg !1121
  call void @g_free(i8* %18), !dbg !1122
  ret void, !dbg !1123
}

declare i8* @recode_out(%struct._SERVER_REC*, i8*, i8*) #2

declare void @irc_send_cmdv(%struct._IRC_SERVER_REC*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define i8** @irc_server_split_action(%struct._IRC_SERVER_REC*, i8*, i8*) #0 !dbg !1124 {
  %4 = alloca i8**, align 8
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1127, metadata !739), !dbg !1128
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1129, metadata !739), !dbg !1130
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1131, metadata !739), !dbg !1132
  br label %8, !dbg !1133, !llvm.loop !1134

; <label>:8:                                      ; preds = %3
  %9 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1135
  %10 = icmp ne %struct._IRC_SERVER_REC* %9, null, !dbg !1139
  br i1 %10, label %11, label %12, !dbg !1135

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !1140

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.irc_server_split_action, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0)), !dbg !1143
  store i8** null, i8*** %4, align 8, !dbg !1146
  br label %46, !dbg !1146

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !1147

; <label>:14:                                     ; preds = %13
  br label %15, !dbg !1149, !llvm.loop !1150

; <label>:15:                                     ; preds = %14
  %16 = load i8*, i8** %6, align 8, !dbg !1151
  %17 = icmp ne i8* %16, null, !dbg !1155
  br i1 %17, label %18, label %19, !dbg !1151

; <label>:18:                                     ; preds = %15
  br label %20, !dbg !1156

; <label>:19:                                     ; preds = %15
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.irc_server_split_action, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0)), !dbg !1159
  store i8** null, i8*** %4, align 8, !dbg !1162
  br label %46, !dbg !1162

; <label>:20:                                     ; preds = %18
  br label %21, !dbg !1163

; <label>:21:                                     ; preds = %20
  br label %22, !dbg !1165, !llvm.loop !1166

; <label>:22:                                     ; preds = %21
  %23 = load i8*, i8** %7, align 8, !dbg !1167
  %24 = icmp ne i8* %23, null, !dbg !1171
  br i1 %24, label %25, label %26, !dbg !1167

; <label>:25:                                     ; preds = %22
  br label %27, !dbg !1172

; <label>:26:                                     ; preds = %22
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.irc_server_split_action, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0)), !dbg !1175
  store i8** null, i8*** %4, align 8, !dbg !1178
  br label %46, !dbg !1178

; <label>:27:                                     ; preds = %25
  br label %28, !dbg !1179

; <label>:28:                                     ; preds = %27
  %29 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1181
  %30 = bitcast %struct._IRC_SERVER_REC* %29 to i8*, !dbg !1181
  %31 = call i8* @module_check_cast(i8* %30, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0)), !dbg !1182
  %32 = bitcast i8* %31 to %struct._SERVER_REC*, !dbg !1183
  %33 = load i8*, i8** %7, align 8, !dbg !1184
  %34 = load i8*, i8** %6, align 8, !dbg !1185
  %35 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1186
  %36 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %35, i32 0, i32 7, !dbg !1187
  %37 = load i8*, i8** %36, align 8, !dbg !1187
  %38 = call i64 @strlen(i8* %37) #6, !dbg !1188
  %39 = sub i64 488, %38, !dbg !1189
  %40 = sub i64 %39, 74, !dbg !1190
  %41 = load i8*, i8** %6, align 8, !dbg !1191
  %42 = call i64 @strlen(i8* %41) #6, !dbg !1192
  %43 = sub i64 %40, %42, !dbg !1193
  %44 = trunc i64 %43 to i32, !dbg !1194
  %45 = call i8** @split_line(%struct._SERVER_REC* %32, i8* %33, i8* %34, i32 %44), !dbg !1195
  store i8** %45, i8*** %4, align 8, !dbg !1197
  br label %46, !dbg !1197

; <label>:46:                                     ; preds = %28, %26, %19, %12
  %47 = load i8**, i8*** %4, align 8, !dbg !1198
  ret i8** %47, !dbg !1198
}

; Function Attrs: nounwind uwtable
define internal i8** @split_line(%struct._SERVER_REC*, i8*, i8*, i32) #0 !dbg !1199 {
  %5 = alloca i8**, align 8
  %6 = alloca %struct._SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %6, metadata !1204, metadata !739), !dbg !1205
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1206, metadata !739), !dbg !1207
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1208, metadata !739), !dbg !1209
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1210, metadata !739), !dbg !1211
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1212, metadata !739), !dbg !1213
  %20 = call i8* @settings_get_str(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i32 0, i32 0)), !dbg !1214
  store i8* %20, i8** %10, align 8, !dbg !1213
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1215, metadata !739), !dbg !1216
  %21 = call i8* @settings_get_str(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0)), !dbg !1217
  store i8* %21, i8** %11, align 8, !dbg !1216
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1218, metadata !739), !dbg !1219
  %22 = call i32 @settings_get_bool(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i32 0, i32 0)), !dbg !1220
  store i32 %22, i32* %12, align 4, !dbg !1219
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1221, metadata !739), !dbg !1222
  %23 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !1223
  %24 = load i8*, i8** %10, align 8, !dbg !1224
  %25 = load i8*, i8** %8, align 8, !dbg !1225
  %26 = call i8* @recode_out(%struct._SERVER_REC* %23, i8* %24, i8* %25), !dbg !1226
  store i8* %26, i8** %13, align 8, !dbg !1222
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1227, metadata !739), !dbg !1228
  %27 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !1229
  %28 = load i8*, i8** %11, align 8, !dbg !1230
  %29 = load i8*, i8** %8, align 8, !dbg !1231
  %30 = call i8* @recode_out(%struct._SERVER_REC* %27, i8* %28, i8* %29), !dbg !1232
  store i8* %30, i8** %14, align 8, !dbg !1228
  call void @llvm.dbg.declare(metadata i8*** %15, metadata !1233, metadata !739), !dbg !1234
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1235, metadata !739), !dbg !1236
  %31 = load i8*, i8** %13, align 8, !dbg !1237
  %32 = call i64 @strlen(i8* %31) #6, !dbg !1238
  %33 = load i8*, i8** %14, align 8, !dbg !1239
  %34 = call i64 @strlen(i8* %33) #6, !dbg !1240
  %35 = add i64 %32, %34, !dbg !1242
  %36 = load i32, i32* %9, align 4, !dbg !1243
  %37 = sext i32 %36 to i64, !dbg !1243
  %38 = sub i64 %37, %35, !dbg !1243
  %39 = trunc i64 %38 to i32, !dbg !1243
  store i32 %39, i32* %9, align 4, !dbg !1243
  br label %40, !dbg !1244, !llvm.loop !1245

; <label>:40:                                     ; preds = %4
  %41 = load i32, i32* %9, align 4, !dbg !1246
  %42 = icmp sgt i32 %41, 0, !dbg !1250
  br i1 %42, label %43, label %44, !dbg !1246

; <label>:43:                                     ; preds = %40
  br label %45, !dbg !1251

; <label>:44:                                     ; preds = %40
  call void @g_warn_message(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0), i32 119, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.split_line, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0)), !dbg !1253
  br label %45

; <label>:45:                                     ; preds = %44, %43
  br label %46, !dbg !1255

; <label>:46:                                     ; preds = %45
  %47 = load i32, i32* %9, align 4, !dbg !1257
  %48 = icmp sle i32 %47, 0, !dbg !1259
  br i1 %48, label %49, label %57, !dbg !1260

; <label>:49:                                     ; preds = %46
  %50 = load i8*, i8** %13, align 8, !dbg !1261
  call void @g_free(i8* %50), !dbg !1263
  %51 = load i8*, i8** %14, align 8, !dbg !1264
  call void @g_free(i8* %51), !dbg !1265
  %52 = call noalias i8* @g_malloc_n(i64 1, i64 8), !dbg !1266
  %53 = bitcast i8* %52 to i8**, !dbg !1267
  store i8** %53, i8*** %15, align 8, !dbg !1268
  %54 = load i8**, i8*** %15, align 8, !dbg !1269
  %55 = getelementptr inbounds i8*, i8** %54, i64 0, !dbg !1269
  store i8* null, i8** %55, align 8, !dbg !1270
  %56 = load i8**, i8*** %15, align 8, !dbg !1271
  store i8** %56, i8*** %5, align 8, !dbg !1272
  br label %197, !dbg !1272

; <label>:57:                                     ; preds = %46
  %58 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !1273
  %59 = load i8*, i8** %7, align 8, !dbg !1274
  %60 = load i8*, i8** %8, align 8, !dbg !1275
  %61 = load i32, i32* %9, align 4, !dbg !1276
  %62 = load i32, i32* %12, align 4, !dbg !1277
  %63 = call i8** @recode_split(%struct._SERVER_REC* %58, i8* %59, i8* %60, i32 %61, i32 %62), !dbg !1278
  store i8** %63, i8*** %15, align 8, !dbg !1279
  store i32 0, i32* %16, align 4, !dbg !1280
  br label %64, !dbg !1282

; <label>:64:                                     ; preds = %190, %57
  %65 = load i32, i32* %16, align 4, !dbg !1283
  %66 = sext i32 %65 to i64, !dbg !1286
  %67 = load i8**, i8*** %15, align 8, !dbg !1286
  %68 = getelementptr inbounds i8*, i8** %67, i64 %66, !dbg !1286
  %69 = load i8*, i8** %68, align 8, !dbg !1286
  %70 = icmp ne i8* %69, null, !dbg !1287
  br i1 %70, label %71, label %193, !dbg !1288

; <label>:71:                                     ; preds = %64
  %72 = load i32, i32* %16, align 4, !dbg !1289
  %73 = icmp ne i32 %72, 0, !dbg !1292
  br i1 %73, label %74, label %93, !dbg !1293

; <label>:74:                                     ; preds = %71
  %75 = load i8*, i8** %10, align 8, !dbg !1294
  %76 = load i8, i8* %75, align 1, !dbg !1296
  %77 = sext i8 %76 to i32, !dbg !1296
  %78 = icmp ne i32 %77, 0, !dbg !1297
  br i1 %78, label %79, label %93, !dbg !1298

; <label>:79:                                     ; preds = %74
  call void @llvm.dbg.declare(metadata i8** %17, metadata !1299, metadata !739), !dbg !1301
  %80 = load i32, i32* %16, align 4, !dbg !1302
  %81 = sext i32 %80 to i64, !dbg !1303
  %82 = load i8**, i8*** %15, align 8, !dbg !1303
  %83 = getelementptr inbounds i8*, i8** %82, i64 %81, !dbg !1303
  %84 = load i8*, i8** %83, align 8, !dbg !1303
  store i8* %84, i8** %17, align 8, !dbg !1301
  %85 = load i8*, i8** %10, align 8, !dbg !1304
  %86 = load i8*, i8** %17, align 8, !dbg !1305
  %87 = call noalias i8* (i8*, ...) @g_strconcat(i8* %85, i8* %86, i8* null), !dbg !1306
  %88 = load i32, i32* %16, align 4, !dbg !1307
  %89 = sext i32 %88 to i64, !dbg !1308
  %90 = load i8**, i8*** %15, align 8, !dbg !1308
  %91 = getelementptr inbounds i8*, i8** %90, i64 %89, !dbg !1308
  store i8* %87, i8** %91, align 8, !dbg !1309
  %92 = load i8*, i8** %17, align 8, !dbg !1310
  call void @g_free(i8* %92), !dbg !1311
  br label %93, !dbg !1312

; <label>:93:                                     ; preds = %79, %74, %71
  %94 = load i32, i32* %16, align 4, !dbg !1313
  %95 = add nsw i32 %94, 1, !dbg !1315
  %96 = sext i32 %95 to i64, !dbg !1316
  %97 = load i8**, i8*** %15, align 8, !dbg !1316
  %98 = getelementptr inbounds i8*, i8** %97, i64 %96, !dbg !1316
  %99 = load i8*, i8** %98, align 8, !dbg !1316
  %100 = icmp ne i8* %99, null, !dbg !1317
  br i1 %100, label %101, label %189, !dbg !1318

; <label>:101:                                    ; preds = %93
  %102 = load i8*, i8** %11, align 8, !dbg !1319
  %103 = load i8, i8* %102, align 1, !dbg !1321
  %104 = sext i8 %103 to i32, !dbg !1321
  %105 = icmp ne i32 %104, 0, !dbg !1322
  br i1 %105, label %106, label %189, !dbg !1323

; <label>:106:                                    ; preds = %101
  call void @llvm.dbg.declare(metadata i8** %18, metadata !1324, metadata !739), !dbg !1326
  %107 = load i32, i32* %16, align 4, !dbg !1327
  %108 = sext i32 %107 to i64, !dbg !1328
  %109 = load i8**, i8*** %15, align 8, !dbg !1328
  %110 = getelementptr inbounds i8*, i8** %109, i64 %108, !dbg !1328
  %111 = load i8*, i8** %110, align 8, !dbg !1328
  store i8* %111, i8** %18, align 8, !dbg !1326
  %112 = load i32, i32* %16, align 4, !dbg !1329
  %113 = add nsw i32 %112, 2, !dbg !1331
  %114 = sext i32 %113 to i64, !dbg !1332
  %115 = load i8**, i8*** %15, align 8, !dbg !1332
  %116 = getelementptr inbounds i8*, i8** %115, i64 %114, !dbg !1332
  %117 = load i8*, i8** %116, align 8, !dbg !1332
  %118 = icmp eq i8* %117, null, !dbg !1333
  br i1 %118, label %119, label %180, !dbg !1334

; <label>:119:                                    ; preds = %106
  call void @llvm.dbg.declare(metadata i8** %19, metadata !1335, metadata !739), !dbg !1337
  %120 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !1338
  %121 = load i32, i32* %16, align 4, !dbg !1339
  %122 = add nsw i32 %121, 1, !dbg !1340
  %123 = sext i32 %122 to i64, !dbg !1341
  %124 = load i8**, i8*** %15, align 8, !dbg !1341
  %125 = getelementptr inbounds i8*, i8** %124, i64 %123, !dbg !1341
  %126 = load i8*, i8** %125, align 8, !dbg !1341
  %127 = load i8*, i8** %8, align 8, !dbg !1342
  %128 = call i8* @recode_out(%struct._SERVER_REC* %120, i8* %126, i8* %127), !dbg !1343
  store i8* %128, i8** %19, align 8, !dbg !1337
  %129 = load i8*, i8** %19, align 8, !dbg !1344
  %130 = call i64 @strlen(i8* %129) #6, !dbg !1346
  %131 = load i8*, i8** %14, align 8, !dbg !1347
  %132 = call i64 @strlen(i8* %131) #6, !dbg !1348
  %133 = icmp ule i64 %130, %132, !dbg !1350
  br i1 %133, label %134, label %178, !dbg !1351

; <label>:134:                                    ; preds = %119
  %135 = load i8*, i8** %18, align 8, !dbg !1352
  %136 = load i32, i32* %16, align 4, !dbg !1354
  %137 = add nsw i32 %136, 1, !dbg !1355
  %138 = sext i32 %137 to i64, !dbg !1356
  %139 = load i8**, i8*** %15, align 8, !dbg !1356
  %140 = getelementptr inbounds i8*, i8** %139, i64 %138, !dbg !1356
  %141 = load i8*, i8** %140, align 8, !dbg !1356
  %142 = call noalias i8* (i8*, ...) @g_strconcat(i8* %135, i8* %141, i8* null), !dbg !1357
  %143 = load i32, i32* %16, align 4, !dbg !1358
  %144 = sext i32 %143 to i64, !dbg !1359
  %145 = load i8**, i8*** %15, align 8, !dbg !1359
  %146 = getelementptr inbounds i8*, i8** %145, i64 %144, !dbg !1359
  store i8* %142, i8** %146, align 8, !dbg !1360
  br label %147, !dbg !1361, !llvm.loop !1362

; <label>:147:                                    ; preds = %134
  %148 = load i32, i32* %16, align 4, !dbg !1363
  %149 = add nsw i32 %148, 1, !dbg !1367
  %150 = sext i32 %149 to i64, !dbg !1368
  %151 = load i8**, i8*** %15, align 8, !dbg !1368
  %152 = getelementptr inbounds i8*, i8** %151, i64 %150, !dbg !1368
  %153 = load i8*, i8** %152, align 8, !dbg !1368
  %154 = icmp ne i8* %153, null, !dbg !1368
  br i1 %154, label %155, label %167, !dbg !1368

; <label>:155:                                    ; preds = %147
  %156 = load i32, i32* %16, align 4, !dbg !1369
  %157 = add nsw i32 %156, 1, !dbg !1372
  %158 = sext i32 %157 to i64, !dbg !1373
  %159 = load i8**, i8*** %15, align 8, !dbg !1373
  %160 = getelementptr inbounds i8*, i8** %159, i64 %158, !dbg !1373
  %161 = load i8*, i8** %160, align 8, !dbg !1373
  call void @g_free(i8* %161), !dbg !1374
  %162 = load i32, i32* %16, align 4, !dbg !1375
  %163 = add nsw i32 %162, 1, !dbg !1376
  %164 = sext i32 %163 to i64, !dbg !1377
  %165 = load i8**, i8*** %15, align 8, !dbg !1377
  %166 = getelementptr inbounds i8*, i8** %165, i64 %164, !dbg !1377
  store i8* null, i8** %166, align 8, !dbg !1378
  br label %167, !dbg !1379

; <label>:167:                                    ; preds = %155, %147
  br label %168, !dbg !1380

; <label>:168:                                    ; preds = %167
  %169 = load i8**, i8*** %15, align 8, !dbg !1382
  %170 = bitcast i8** %169 to i8*, !dbg !1382
  %171 = load i32, i32* %16, align 4, !dbg !1383
  %172 = add nsw i32 %171, 2, !dbg !1384
  %173 = sext i32 %172 to i64, !dbg !1385
  %174 = call i8* @g_realloc_n(i8* %170, i64 %173, i64 8), !dbg !1386
  %175 = bitcast i8* %174 to i8**, !dbg !1387
  store i8** %175, i8*** %15, align 8, !dbg !1388
  %176 = load i8*, i8** %19, align 8, !dbg !1389
  call void @g_free(i8* %176), !dbg !1390
  %177 = load i8*, i8** %18, align 8, !dbg !1391
  call void @g_free(i8* %177), !dbg !1392
  br label %193, !dbg !1393

; <label>:178:                                    ; preds = %119
  %179 = load i8*, i8** %19, align 8, !dbg !1394
  call void @g_free(i8* %179), !dbg !1395
  br label %180, !dbg !1396

; <label>:180:                                    ; preds = %178, %106
  %181 = load i8*, i8** %18, align 8, !dbg !1397
  %182 = load i8*, i8** %11, align 8, !dbg !1398
  %183 = call noalias i8* (i8*, ...) @g_strconcat(i8* %181, i8* %182, i8* null), !dbg !1399
  %184 = load i32, i32* %16, align 4, !dbg !1400
  %185 = sext i32 %184 to i64, !dbg !1401
  %186 = load i8**, i8*** %15, align 8, !dbg !1401
  %187 = getelementptr inbounds i8*, i8** %186, i64 %185, !dbg !1401
  store i8* %183, i8** %187, align 8, !dbg !1402
  %188 = load i8*, i8** %18, align 8, !dbg !1403
  call void @g_free(i8* %188), !dbg !1404
  br label %189, !dbg !1405

; <label>:189:                                    ; preds = %180, %101, %93
  br label %190, !dbg !1406

; <label>:190:                                    ; preds = %189
  %191 = load i32, i32* %16, align 4, !dbg !1407
  %192 = add nsw i32 %191, 1, !dbg !1407
  store i32 %192, i32* %16, align 4, !dbg !1407
  br label %64, !dbg !1409, !llvm.loop !1410

; <label>:193:                                    ; preds = %168, %64
  %194 = load i8*, i8** %13, align 8, !dbg !1412
  call void @g_free(i8* %194), !dbg !1413
  %195 = load i8*, i8** %14, align 8, !dbg !1414
  call void @g_free(i8* %195), !dbg !1415
  %196 = load i8**, i8*** %15, align 8, !dbg !1416
  store i8** %196, i8*** %5, align 8, !dbg !1417
  br label %197, !dbg !1417

; <label>:197:                                    ; preds = %193, %49
  %198 = load i8**, i8*** %5, align 8, !dbg !1418
  ret i8** %198, !dbg !1418
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define void @irc_server_send_away(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1419 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1420, metadata !739), !dbg !1421
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1422, metadata !739), !dbg !1423
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1424, metadata !739), !dbg !1425
  store i8* null, i8** %5, align 8, !dbg !1425
  %6 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1426
  %7 = bitcast %struct._IRC_SERVER_REC* %6 to i8*, !dbg !1426
  %8 = call i8* @module_check_cast(i8* %7, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0)), !dbg !1428
  %9 = bitcast i8* %8 to %struct._SERVER_REC*, !dbg !1429
  %10 = bitcast %struct._SERVER_REC* %9 to i8*, !dbg !1430
  %11 = call i8* @chat_protocol_check_cast(i8* %10, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !1431
  %12 = bitcast i8* %11 to %struct._IRC_SERVER_REC*, !dbg !1433
  %13 = icmp ne %struct._IRC_SERVER_REC* %12, null, !dbg !1433
  br i1 %13, label %14, label %15, !dbg !1434

; <label>:14:                                     ; preds = %2
  br i1 false, label %16, label %17, !dbg !1435

; <label>:15:                                     ; preds = %2
  br i1 false, label %17, label %16, !dbg !1437

; <label>:16:                                     ; preds = %15, %14
  br label %66, !dbg !1439

; <label>:17:                                     ; preds = %15, %14
  %18 = load i8*, i8** %4, align 8, !dbg !1440
  %19 = load i8, i8* %18, align 1, !dbg !1442
  %20 = sext i8 %19 to i32, !dbg !1442
  %21 = icmp ne i32 %20, 0, !dbg !1443
  br i1 %21, label %30, label %22, !dbg !1444

; <label>:22:                                     ; preds = %17
  %23 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1445
  %24 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %23, i32 0, i32 19, !dbg !1447
  %25 = load i8, i8* %24, align 8, !dbg !1447
  %26 = lshr i8 %25, 1, !dbg !1447
  %27 = and i8 %26, 1, !dbg !1447
  %28 = zext i8 %27 to i32, !dbg !1447
  %29 = icmp ne i32 %28, 0, !dbg !1445
  br i1 %29, label %30, label %64, !dbg !1448

; <label>:30:                                     ; preds = %22, %17
  br label %31, !dbg !1449, !llvm.loop !1451

; <label>:31:                                     ; preds = %30
  %32 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1452
  %33 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %32, i32 0, i32 17, !dbg !1456
  %34 = load i8*, i8** %33, align 8, !dbg !1456
  %35 = icmp ne i8* %34, null, !dbg !1452
  br i1 %35, label %36, label %42, !dbg !1452

; <label>:36:                                     ; preds = %31
  %37 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1457
  %38 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %37, i32 0, i32 17, !dbg !1460
  %39 = load i8*, i8** %38, align 8, !dbg !1460
  call void @g_free(i8* %39), !dbg !1461
  %40 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1462
  %41 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %40, i32 0, i32 17, !dbg !1463
  store i8* null, i8** %41, align 8, !dbg !1464
  br label %42, !dbg !1465

; <label>:42:                                     ; preds = %36, %31
  br label %43, !dbg !1466

; <label>:43:                                     ; preds = %42
  %44 = load i8*, i8** %4, align 8, !dbg !1468
  %45 = load i8, i8* %44, align 1, !dbg !1470
  %46 = sext i8 %45 to i32, !dbg !1470
  %47 = icmp ne i32 %46, 0, !dbg !1471
  br i1 %47, label %48, label %61, !dbg !1472

; <label>:48:                                     ; preds = %43
  %49 = load i8*, i8** %4, align 8, !dbg !1473
  %50 = call noalias i8* @g_strdup(i8* %49), !dbg !1475
  %51 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1476
  %52 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %51, i32 0, i32 17, !dbg !1477
  store i8* %50, i8** %52, align 8, !dbg !1478
  %53 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1479
  %54 = bitcast %struct._IRC_SERVER_REC* %53 to i8*, !dbg !1479
  %55 = call i8* @module_check_cast(i8* %54, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0)), !dbg !1480
  %56 = bitcast i8* %55 to %struct._SERVER_REC*, !dbg !1481
  %57 = load i8*, i8** %4, align 8, !dbg !1482
  %58 = call i8* @recode_out(%struct._SERVER_REC* %56, i8* %57, i8* null), !dbg !1483
  store i8* %58, i8** %5, align 8, !dbg !1485
  store i8* %58, i8** %4, align 8, !dbg !1486
  %59 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1487
  %60 = load i8*, i8** %4, align 8, !dbg !1488
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %59, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* %60), !dbg !1489
  br label %63, !dbg !1490

; <label>:61:                                     ; preds = %43
  %62 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1491
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0)), !dbg !1493
  br label %63

; <label>:63:                                     ; preds = %61, %48
  br label %64, !dbg !1494

; <label>:64:                                     ; preds = %63, %22
  %65 = load i8*, i8** %5, align 8, !dbg !1495
  call void @g_free(i8* %65), !dbg !1496
  br label %66, !dbg !1497

; <label>:66:                                     ; preds = %64, %16
  ret void, !dbg !1498
}

declare noalias i8* @g_strdup(i8*) #2

; Function Attrs: nounwind uwtable
define void @irc_server_send_data(%struct._IRC_SERVER_REC*, i8*, i32) #0 !dbg !1500 {
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !1503, metadata !739), !dbg !1504
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1505, metadata !739), !dbg !1506
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1507, metadata !739), !dbg !1508
  %7 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1509
  %8 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %7, i32 0, i32 9, !dbg !1511
  %9 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %8, align 8, !dbg !1511
  %10 = load i8*, i8** %5, align 8, !dbg !1512
  %11 = load i32, i32* %6, align 4, !dbg !1513
  %12 = call i32 @net_sendbuffer_send(%struct._NET_SENDBUF_REC* %9, i8* %10, i32 %11), !dbg !1514
  %13 = icmp eq i32 %12, -1, !dbg !1515
  br i1 %13, label %14, label %20, !dbg !1516

; <label>:14:                                     ; preds = %3
  %15 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1517
  %16 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %15, i32 0, i32 8, !dbg !1519
  %17 = load i8, i8* %16, align 8, !dbg !1520
  %18 = and i8 %17, -5, !dbg !1520
  %19 = or i8 %18, 4, !dbg !1520
  store i8 %19, i8* %16, align 8, !dbg !1520
  br label %48, !dbg !1521

; <label>:20:                                     ; preds = %3
  %21 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1522
  %22 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %21, i32 0, i32 58, !dbg !1523
  call void @g_get_current_time(%struct._GTimeVal* %22), !dbg !1524
  %23 = load i32, i32* %6, align 4, !dbg !1525
  %24 = icmp slt i32 %23, 100, !dbg !1527
  br i1 %24, label %30, label %25, !dbg !1528

; <label>:25:                                     ; preds = %20
  %26 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1529
  %27 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %26, i32 0, i32 60, !dbg !1531
  %28 = load i32, i32* %27, align 4, !dbg !1531
  %29 = icmp sle i32 %28, 10, !dbg !1532
  br i1 %29, label %30, label %34, !dbg !1533

; <label>:30:                                     ; preds = %25, %20
  %31 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1534
  %32 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %31, i32 0, i32 57, !dbg !1535
  %33 = getelementptr inbounds %struct._GTimeVal, %struct._GTimeVal* %32, i32 0, i32 0, !dbg !1536
  store i64 0, i64* %33, align 8, !dbg !1537
  br label %48, !dbg !1534

; <label>:34:                                     ; preds = %25
  %35 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1538
  %36 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %35, i32 0, i32 57, !dbg !1540
  %37 = bitcast %struct._GTimeVal* %36 to i8*, !dbg !1541
  %38 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1542
  %39 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %38, i32 0, i32 58, !dbg !1543
  %40 = bitcast %struct._GTimeVal* %39 to i8*, !dbg !1541
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %37, i8* %40, i64 16, i32 8, i1 false), !dbg !1541
  %41 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1544
  %42 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %41, i32 0, i32 57, !dbg !1545
  %43 = load i32, i32* %6, align 4, !dbg !1546
  %44 = sdiv i32 %43, 100, !dbg !1547
  %45 = add nsw i32 2, %44, !dbg !1548
  %46 = mul nsw i32 %45, 1000000, !dbg !1549
  %47 = sext i32 %46 to i64, !dbg !1550
  call void @g_time_val_add(%struct._GTimeVal* %42, i64 %47), !dbg !1551
  br label %48

; <label>:48:                                     ; preds = %14, %34, %30
  ret void, !dbg !1552
}

declare i32 @net_sendbuffer_send(%struct._NET_SENDBUF_REC*, i8*, i32) #2

declare void @g_get_current_time(%struct._GTimeVal*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #4

declare void @g_time_val_add(%struct._GTimeVal*, i64) #2

; Function Attrs: nounwind uwtable
define void @irc_servers_start_cmd_timeout() #0 !dbg !1553 {
  %1 = load i32, i32* @cmd_tag, align 4, !dbg !1554
  %2 = icmp eq i32 %1, -1, !dbg !1556
  br i1 %2, label %3, label %5, !dbg !1557

; <label>:3:                                      ; preds = %0
  %4 = call i32 @g_timeout_add(i32 500, i32 (i8*)* bitcast (i32 ()* @servers_cmd_timeout to i32 (i8*)*), i8* null), !dbg !1558
  store i32 %4, i32* @cmd_tag, align 4, !dbg !1559
  br label %5, !dbg !1560

; <label>:5:                                      ; preds = %3, %0
  ret void, !dbg !1561
}

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @servers_cmd_timeout() #0 !dbg !1562 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._GTimeVal, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %struct._GTimeVal* %2, metadata !1565, metadata !739), !dbg !1566
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !1567, metadata !739), !dbg !1568
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1569, metadata !739), !dbg !1570
  store i32 0, i32* %4, align 4, !dbg !1570
  call void @g_get_current_time(%struct._GTimeVal* %2), !dbg !1571
  %5 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !1572
  store %struct._GSList* %5, %struct._GSList** %3, align 8, !dbg !1574
  br label %6, !dbg !1575

; <label>:6:                                      ; preds = %17, %0
  %7 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1576
  %8 = icmp ne %struct._GSList* %7, null, !dbg !1579
  br i1 %8, label %9, label %21, !dbg !1580

; <label>:9:                                      ; preds = %6
  %10 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1581
  %11 = getelementptr inbounds %struct._GSList, %struct._GSList* %10, i32 0, i32 0, !dbg !1583
  %12 = load i8*, i8** %11, align 8, !dbg !1583
  %13 = bitcast i8* %12 to %struct._IRC_SERVER_REC*, !dbg !1581
  %14 = call i32 @server_cmd_timeout(%struct._IRC_SERVER_REC* %13, %struct._GTimeVal* %2), !dbg !1584
  %15 = load i32, i32* %4, align 4, !dbg !1585
  %16 = or i32 %15, %14, !dbg !1585
  store i32 %16, i32* %4, align 4, !dbg !1585
  br label %17, !dbg !1586

; <label>:17:                                     ; preds = %9
  %18 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1587
  %19 = getelementptr inbounds %struct._GSList, %struct._GSList* %18, i32 0, i32 1, !dbg !1589
  %20 = load %struct._GSList*, %struct._GSList** %19, align 8, !dbg !1589
  store %struct._GSList* %20, %struct._GSList** %3, align 8, !dbg !1590
  br label %6, !dbg !1591, !llvm.loop !1592

; <label>:21:                                     ; preds = %6
  %22 = load i32, i32* %4, align 4, !dbg !1594
  %23 = icmp ne i32 %22, 0, !dbg !1594
  br i1 %23, label %24, label %25, !dbg !1596

; <label>:24:                                     ; preds = %21
  store i32 1, i32* %1, align 4, !dbg !1597
  br label %26, !dbg !1597

; <label>:25:                                     ; preds = %21
  store i32 -1, i32* @cmd_tag, align 4, !dbg !1598
  store i32 0, i32* %1, align 4, !dbg !1600
  br label %26, !dbg !1600

; <label>:26:                                     ; preds = %25, %24
  %27 = load i32, i32* %1, align 4, !dbg !1601
  ret i32 %27, !dbg !1601
}

; Function Attrs: nounwind uwtable
define i8* @irc_server_get_channels(%struct._IRC_SERVER_REC*) #0 !dbg !1602 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct._GString*, align 8
  %6 = alloca %struct._GString*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct._CHANNEL_REC*, align 8
  %11 = alloca %struct._CHANNEL_SETUP_REC*, align 8
  %12 = alloca %struct.REJOIN_REC*, align 8
  %13 = alloca %struct._CHANNEL_SETUP_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1605, metadata !739), !dbg !1606
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !1607, metadata !739), !dbg !1608
  call void @llvm.dbg.declare(metadata %struct._GString** %5, metadata !1609, metadata !739), !dbg !1610
  call void @llvm.dbg.declare(metadata %struct._GString** %6, metadata !1611, metadata !739), !dbg !1612
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1613, metadata !739), !dbg !1614
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1615, metadata !739), !dbg !1616
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1617, metadata !739), !dbg !1618
  br label %14, !dbg !1619, !llvm.loop !1620

; <label>:14:                                     ; preds = %1
  %15 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1621
  %16 = icmp ne %struct._IRC_SERVER_REC* %15, null, !dbg !1625
  br i1 %16, label %17, label %18, !dbg !1621

; <label>:17:                                     ; preds = %14
  br label %19, !dbg !1626

; <label>:18:                                     ; preds = %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.irc_server_get_channels, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0)), !dbg !1629
  store i8* null, i8** %2, align 8, !dbg !1632
  br label %191, !dbg !1632

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !1633

; <label>:20:                                     ; preds = %19
  %21 = call i32 @settings_get_choice(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0)), !dbg !1635
  store i32 %21, i32* %9, align 4, !dbg !1636
  %22 = load i32, i32* %9, align 4, !dbg !1637
  %23 = icmp eq i32 %22, 0, !dbg !1639
  br i1 %23, label %24, label %26, !dbg !1640

; <label>:24:                                     ; preds = %20
  %25 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0)), !dbg !1641
  store i8* %25, i8** %2, align 8, !dbg !1642
  br label %191, !dbg !1642

; <label>:26:                                     ; preds = %20
  %27 = call %struct._GString* @g_string_new(i8* null), !dbg !1643
  store %struct._GString* %27, %struct._GString** %5, align 8, !dbg !1644
  %28 = call %struct._GString* @g_string_new(i8* null), !dbg !1645
  store %struct._GString* %28, %struct._GString** %6, align 8, !dbg !1646
  store i32 0, i32* %8, align 4, !dbg !1647
  %29 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1648
  %30 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %29, i32 0, i32 23, !dbg !1650
  %31 = load %struct._GSList*, %struct._GSList** %30, align 8, !dbg !1650
  store %struct._GSList* %31, %struct._GSList** %4, align 8, !dbg !1651
  br label %32, !dbg !1652

; <label>:32:                                     ; preds = %90, %26
  %33 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1653
  %34 = icmp ne %struct._GSList* %33, null, !dbg !1656
  br i1 %34, label %35, label %94, !dbg !1657

; <label>:35:                                     ; preds = %32
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %10, metadata !1658, metadata !739), !dbg !1660
  %36 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1661
  %37 = getelementptr inbounds %struct._GSList, %struct._GSList* %36, i32 0, i32 0, !dbg !1662
  %38 = load i8*, i8** %37, align 8, !dbg !1662
  %39 = bitcast i8* %38 to %struct._CHANNEL_REC*, !dbg !1661
  store %struct._CHANNEL_REC* %39, %struct._CHANNEL_REC** %10, align 8, !dbg !1660
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_SETUP_REC** %11, metadata !1663, metadata !739), !dbg !1679
  %40 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %10, align 8, !dbg !1680
  %41 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %40, i32 0, i32 6, !dbg !1681
  %42 = load i8*, i8** %41, align 8, !dbg !1681
  %43 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %10, align 8, !dbg !1682
  %44 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %43, i32 0, i32 4, !dbg !1683
  %45 = load %struct._SERVER_REC*, %struct._SERVER_REC** %44, align 8, !dbg !1683
  %46 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %45, i32 0, i32 3, !dbg !1684
  %47 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %46, align 8, !dbg !1684
  %48 = getelementptr inbounds %struct._SERVER_CONNECT_REC, %struct._SERVER_CONNECT_REC* %47, i32 0, i32 12, !dbg !1685
  %49 = load i8*, i8** %48, align 8, !dbg !1685
  %50 = call %struct._CHANNEL_SETUP_REC* @channel_setup_find(i8* %42, i8* %49), !dbg !1686
  store %struct._CHANNEL_SETUP_REC* %50, %struct._CHANNEL_SETUP_REC** %11, align 8, !dbg !1679
  %51 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %11, align 8, !dbg !1687
  %52 = icmp ne %struct._CHANNEL_SETUP_REC* %51, null, !dbg !1689
  br i1 %52, label %53, label %63, !dbg !1690

; <label>:53:                                     ; preds = %35
  %54 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %11, align 8, !dbg !1691
  %55 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %54, i32 0, i32 7, !dbg !1693
  %56 = load i8, i8* %55, align 8, !dbg !1693
  %57 = and i8 %56, 1, !dbg !1693
  %58 = zext i8 %57 to i32, !dbg !1693
  %59 = icmp ne i32 %58, 0, !dbg !1691
  br i1 %59, label %60, label %63, !dbg !1694

; <label>:60:                                     ; preds = %53
  %61 = load i32, i32* %9, align 4, !dbg !1695
  %62 = icmp eq i32 %61, 2, !dbg !1697
  br i1 %62, label %66, label %63, !dbg !1698

; <label>:63:                                     ; preds = %60, %53, %35
  %64 = load i32, i32* %9, align 4, !dbg !1699
  %65 = icmp eq i32 %64, 1, !dbg !1701
  br i1 %65, label %66, label %89, !dbg !1702

; <label>:66:                                     ; preds = %63, %60
  %67 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1703
  %68 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %10, align 8, !dbg !1705
  %69 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %68, i32 0, i32 6, !dbg !1706
  %70 = load i8*, i8** %69, align 8, !dbg !1706
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* %70), !dbg !1707
  %71 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1708
  %72 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %10, align 8, !dbg !1709
  %73 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %72, i32 0, i32 20, !dbg !1710
  %74 = load i8*, i8** %73, align 8, !dbg !1710
  %75 = icmp eq i8* %74, null, !dbg !1711
  br i1 %75, label %76, label %77, !dbg !1709

; <label>:76:                                     ; preds = %66
  br label %81, !dbg !1712

; <label>:77:                                     ; preds = %66
  %78 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %10, align 8, !dbg !1714
  %79 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %78, i32 0, i32 20, !dbg !1716
  %80 = load i8*, i8** %79, align 8, !dbg !1716
  br label %81, !dbg !1717

; <label>:81:                                     ; preds = %77, %76
  %82 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), %76 ], [ %80, %77 ], !dbg !1718
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* %82), !dbg !1720
  %83 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %10, align 8, !dbg !1721
  %84 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %83, i32 0, i32 20, !dbg !1723
  %85 = load i8*, i8** %84, align 8, !dbg !1723
  %86 = icmp ne i8* %85, null, !dbg !1724
  br i1 %86, label %87, label %88, !dbg !1725

; <label>:87:                                     ; preds = %81
  store i32 1, i32* %8, align 4, !dbg !1726
  br label %88, !dbg !1727

; <label>:88:                                     ; preds = %87, %81
  br label %89, !dbg !1728

; <label>:89:                                     ; preds = %88, %63
  br label %90, !dbg !1729

; <label>:90:                                     ; preds = %89
  %91 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1730
  %92 = getelementptr inbounds %struct._GSList, %struct._GSList* %91, i32 0, i32 1, !dbg !1732
  %93 = load %struct._GSList*, %struct._GSList** %92, align 8, !dbg !1732
  store %struct._GSList* %93, %struct._GSList** %4, align 8, !dbg !1733
  br label %32, !dbg !1734, !llvm.loop !1735

; <label>:94:                                     ; preds = %32
  %95 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1737
  %96 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %95, i32 0, i32 67, !dbg !1739
  %97 = load %struct._GSList*, %struct._GSList** %96, align 8, !dbg !1739
  store %struct._GSList* %97, %struct._GSList** %4, align 8, !dbg !1740
  br label %98, !dbg !1741

; <label>:98:                                     ; preds = %152, %94
  %99 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1742
  %100 = icmp ne %struct._GSList* %99, null, !dbg !1745
  br i1 %100, label %101, label %156, !dbg !1746

; <label>:101:                                    ; preds = %98
  call void @llvm.dbg.declare(metadata %struct.REJOIN_REC** %12, metadata !1747, metadata !739), !dbg !1757
  %102 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1758
  %103 = getelementptr inbounds %struct._GSList, %struct._GSList* %102, i32 0, i32 0, !dbg !1759
  %104 = load i8*, i8** %103, align 8, !dbg !1759
  %105 = bitcast i8* %104 to %struct.REJOIN_REC*, !dbg !1758
  store %struct.REJOIN_REC* %105, %struct.REJOIN_REC** %12, align 8, !dbg !1757
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_SETUP_REC** %13, metadata !1760, metadata !739), !dbg !1761
  %106 = load %struct.REJOIN_REC*, %struct.REJOIN_REC** %12, align 8, !dbg !1762
  %107 = getelementptr inbounds %struct.REJOIN_REC, %struct.REJOIN_REC* %106, i32 0, i32 0, !dbg !1763
  %108 = load i8*, i8** %107, align 8, !dbg !1763
  %109 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1764
  %110 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %109, i32 0, i32 6, !dbg !1765
  %111 = load i8*, i8** %110, align 8, !dbg !1765
  %112 = call %struct._CHANNEL_SETUP_REC* @channel_setup_find(i8* %108, i8* %111), !dbg !1766
  store %struct._CHANNEL_SETUP_REC* %112, %struct._CHANNEL_SETUP_REC** %13, align 8, !dbg !1761
  %113 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %13, align 8, !dbg !1767
  %114 = icmp ne %struct._CHANNEL_SETUP_REC* %113, null, !dbg !1769
  br i1 %114, label %115, label %125, !dbg !1770

; <label>:115:                                    ; preds = %101
  %116 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %13, align 8, !dbg !1771
  %117 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %116, i32 0, i32 7, !dbg !1773
  %118 = load i8, i8* %117, align 8, !dbg !1773
  %119 = and i8 %118, 1, !dbg !1773
  %120 = zext i8 %119 to i32, !dbg !1773
  %121 = icmp ne i32 %120, 0, !dbg !1771
  br i1 %121, label %122, label %125, !dbg !1774

; <label>:122:                                    ; preds = %115
  %123 = load i32, i32* %9, align 4, !dbg !1775
  %124 = icmp eq i32 %123, 2, !dbg !1777
  br i1 %124, label %128, label %125, !dbg !1778

; <label>:125:                                    ; preds = %122, %115, %101
  %126 = load i32, i32* %9, align 4, !dbg !1779
  %127 = icmp eq i32 %126, 1, !dbg !1781
  br i1 %127, label %128, label %151, !dbg !1782

; <label>:128:                                    ; preds = %125, %122
  %129 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1783
  %130 = load %struct.REJOIN_REC*, %struct.REJOIN_REC** %12, align 8, !dbg !1785
  %131 = getelementptr inbounds %struct.REJOIN_REC, %struct.REJOIN_REC* %130, i32 0, i32 0, !dbg !1786
  %132 = load i8*, i8** %131, align 8, !dbg !1786
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %129, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* %132), !dbg !1787
  %133 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1788
  %134 = load %struct.REJOIN_REC*, %struct.REJOIN_REC** %12, align 8, !dbg !1789
  %135 = getelementptr inbounds %struct.REJOIN_REC, %struct.REJOIN_REC* %134, i32 0, i32 1, !dbg !1790
  %136 = load i8*, i8** %135, align 8, !dbg !1790
  %137 = icmp eq i8* %136, null, !dbg !1791
  br i1 %137, label %138, label %139, !dbg !1789

; <label>:138:                                    ; preds = %128
  br label %143, !dbg !1792

; <label>:139:                                    ; preds = %128
  %140 = load %struct.REJOIN_REC*, %struct.REJOIN_REC** %12, align 8, !dbg !1794
  %141 = getelementptr inbounds %struct.REJOIN_REC, %struct.REJOIN_REC* %140, i32 0, i32 1, !dbg !1795
  %142 = load i8*, i8** %141, align 8, !dbg !1795
  br label %143, !dbg !1796

; <label>:143:                                    ; preds = %139, %138
  %144 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), %138 ], [ %142, %139 ], !dbg !1798
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* %144), !dbg !1800
  %145 = load %struct.REJOIN_REC*, %struct.REJOIN_REC** %12, align 8, !dbg !1801
  %146 = getelementptr inbounds %struct.REJOIN_REC, %struct.REJOIN_REC* %145, i32 0, i32 1, !dbg !1803
  %147 = load i8*, i8** %146, align 8, !dbg !1803
  %148 = icmp ne i8* %147, null, !dbg !1804
  br i1 %148, label %149, label %150, !dbg !1805

; <label>:149:                                    ; preds = %143
  store i32 1, i32* %8, align 4, !dbg !1806
  br label %150, !dbg !1808

; <label>:150:                                    ; preds = %149, %143
  br label %151, !dbg !1809

; <label>:151:                                    ; preds = %150, %125
  br label %152, !dbg !1810

; <label>:152:                                    ; preds = %151
  %153 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1811
  %154 = getelementptr inbounds %struct._GSList, %struct._GSList* %153, i32 0, i32 1, !dbg !1813
  %155 = load %struct._GSList*, %struct._GSList** %154, align 8, !dbg !1813
  store %struct._GSList* %155, %struct._GSList** %4, align 8, !dbg !1814
  br label %98, !dbg !1815, !llvm.loop !1816

; <label>:156:                                    ; preds = %98
  %157 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1818
  %158 = getelementptr inbounds %struct._GString, %struct._GString* %157, i32 0, i32 1, !dbg !1820
  %159 = load i64, i64* %158, align 8, !dbg !1820
  %160 = icmp ugt i64 %159, 0, !dbg !1821
  br i1 %160, label %161, label %182, !dbg !1822

; <label>:161:                                    ; preds = %156
  %162 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1823
  %163 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1825
  %164 = getelementptr inbounds %struct._GString, %struct._GString* %163, i32 0, i32 1, !dbg !1826
  %165 = load i64, i64* %164, align 8, !dbg !1826
  %166 = sub i64 %165, 1, !dbg !1827
  %167 = call %struct._GString* @g_string_truncate(%struct._GString* %162, i64 %166), !dbg !1828
  %168 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1829
  %169 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1830
  %170 = getelementptr inbounds %struct._GString, %struct._GString* %169, i32 0, i32 1, !dbg !1831
  %171 = load i64, i64* %170, align 8, !dbg !1831
  %172 = sub i64 %171, 1, !dbg !1832
  %173 = call %struct._GString* @g_string_truncate(%struct._GString* %168, i64 %172), !dbg !1833
  %174 = load i32, i32* %8, align 4, !dbg !1834
  %175 = icmp ne i32 %174, 0, !dbg !1834
  br i1 %175, label %176, label %181, !dbg !1836

; <label>:176:                                    ; preds = %161
  %177 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1837
  %178 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1839
  %179 = getelementptr inbounds %struct._GString, %struct._GString* %178, i32 0, i32 0, !dbg !1840
  %180 = load i8*, i8** %179, align 8, !dbg !1840
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %177, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i8* %180), !dbg !1841
  br label %181, !dbg !1841

; <label>:181:                                    ; preds = %176, %161
  br label %182, !dbg !1842

; <label>:182:                                    ; preds = %181, %156
  %183 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1843
  %184 = getelementptr inbounds %struct._GString, %struct._GString* %183, i32 0, i32 0, !dbg !1844
  %185 = load i8*, i8** %184, align 8, !dbg !1844
  store i8* %185, i8** %7, align 8, !dbg !1845
  %186 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1846
  %187 = call i8* @g_string_free(%struct._GString* %186, i32 0), !dbg !1847
  %188 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1848
  %189 = call i8* @g_string_free(%struct._GString* %188, i32 1), !dbg !1849
  %190 = load i8*, i8** %7, align 8, !dbg !1850
  store i8* %190, i8** %2, align 8, !dbg !1851
  br label %191, !dbg !1851

; <label>:191:                                    ; preds = %182, %24, %18
  %192 = load i8*, i8** %2, align 8, !dbg !1852
  ret i8* %192, !dbg !1852
}

declare i32 @settings_get_choice(i8*) #2

declare %struct._GString* @g_string_new(i8*) #2

declare %struct._CHANNEL_SETUP_REC* @channel_setup_find(i8*, i8*) #2

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #2

declare %struct._GString* @g_string_truncate(%struct._GString*, i64) #2

declare i8* @g_string_free(%struct._GString*, i32) #2

; Function Attrs: nounwind uwtable
define void @irc_server_init_isupport(%struct._IRC_SERVER_REC*) #0 !dbg !1853 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !1856, metadata !739), !dbg !1857
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1858, metadata !739), !dbg !1859
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1860, metadata !739), !dbg !1861
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1862, metadata !739), !dbg !1863
  %7 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1864
  %8 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %7, i32 0, i32 70, !dbg !1865
  %9 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %8, i32 0, i32 0, !dbg !1866
  %10 = bitcast %struct.modes_type* %9 to i8*, !dbg !1866
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 4096, i32 8, i1 false), !dbg !1866
  %11 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1867
  %12 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %11, i32 0, i32 71, !dbg !1868
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i32 0, i32 0, !dbg !1869
  call void @llvm.memset.p0i8.i64(i8* %13, i8 0, i64 256, i32 8, i1 false), !dbg !1869
  %14 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1870
  %15 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %14, i32 0, i32 69, !dbg !1872
  %16 = load %struct._GHashTable*, %struct._GHashTable** %15, align 8, !dbg !1872
  %17 = call i8* @g_hash_table_lookup(%struct._GHashTable* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0)), !dbg !1873
  store i8* %17, i8** %3, align 8, !dbg !1874
  %18 = icmp ne i8* %17, null, !dbg !1874
  br i1 %18, label %19, label %22, !dbg !1875

; <label>:19:                                     ; preds = %1
  %20 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1876
  %21 = load i8*, i8** %3, align 8, !dbg !1877
  call void @parse_chanmodes(%struct._IRC_SERVER_REC* %20, i8* %21), !dbg !1878
  br label %22, !dbg !1878

; <label>:22:                                     ; preds = %19, %1
  %23 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1879
  %24 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %23, i32 0, i32 69, !dbg !1881
  %25 = load %struct._GHashTable*, %struct._GHashTable** %24, align 8, !dbg !1881
  %26 = call i32 @g_hash_table_lookup_extended(%struct._GHashTable* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i8** %4, i8** %5), !dbg !1882
  %27 = icmp ne i32 %26, 0, !dbg !1882
  br i1 %27, label %28, label %43, !dbg !1883

; <label>:28:                                     ; preds = %22
  %29 = load i8*, i8** %5, align 8, !dbg !1884
  store i8* %29, i8** %3, align 8, !dbg !1886
  %30 = load i8*, i8** %3, align 8, !dbg !1887
  %31 = load i8, i8* %30, align 1, !dbg !1889
  %32 = sext i8 %31 to i32, !dbg !1889
  %33 = icmp ne i32 %32, 40, !dbg !1890
  br i1 %33, label %34, label %42, !dbg !1891

; <label>:34:                                     ; preds = %28
  %35 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1892
  %36 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %35, i32 0, i32 69, !dbg !1894
  %37 = load %struct._GHashTable*, %struct._GHashTable** %36, align 8, !dbg !1894
  %38 = load i8*, i8** %4, align 8, !dbg !1895
  %39 = call i32 @g_hash_table_remove(%struct._GHashTable* %37, i8* %38), !dbg !1896
  %40 = load i8*, i8** %4, align 8, !dbg !1897
  call void @g_free(i8* %40), !dbg !1898
  %41 = load i8*, i8** %5, align 8, !dbg !1899
  call void @g_free(i8* %41), !dbg !1900
  store i8* null, i8** %3, align 8, !dbg !1901
  br label %42, !dbg !1902

; <label>:42:                                     ; preds = %34, %28
  br label %44, !dbg !1903

; <label>:43:                                     ; preds = %22
  store i8* null, i8** %3, align 8, !dbg !1904
  br label %44

; <label>:44:                                     ; preds = %43, %42
  %45 = load i8*, i8** %3, align 8, !dbg !1906
  %46 = icmp eq i8* %45, null, !dbg !1908
  br i1 %46, label %47, label %55, !dbg !1909

; <label>:47:                                     ; preds = %44
  %48 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0)), !dbg !1910
  store i8* %48, i8** %3, align 8, !dbg !1912
  %49 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1913
  %50 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %49, i32 0, i32 69, !dbg !1914
  %51 = load %struct._GHashTable*, %struct._GHashTable** %50, align 8, !dbg !1914
  %52 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0)), !dbg !1915
  %53 = load i8*, i8** %3, align 8, !dbg !1916
  %54 = call i32 @g_hash_table_insert(%struct._GHashTable* %51, i8* %52, i8* %53), !dbg !1917
  br label %55, !dbg !1919

; <label>:55:                                     ; preds = %47, %44
  %56 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1920
  %57 = load i8*, i8** %3, align 8, !dbg !1921
  call void @parse_prefix(%struct._IRC_SERVER_REC* %56, i8* %57), !dbg !1922
  %58 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1923
  %59 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %58, i32 0, i32 69, !dbg !1925
  %60 = load %struct._GHashTable*, %struct._GHashTable** %59, align 8, !dbg !1925
  %61 = call i8* @g_hash_table_lookup(%struct._GHashTable* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0)), !dbg !1926
  store i8* %61, i8** %3, align 8, !dbg !1927
  %62 = icmp ne i8* %61, null, !dbg !1927
  br i1 %62, label %63, label %76, !dbg !1928

; <label>:63:                                     ; preds = %55
  %64 = load i8*, i8** %3, align 8, !dbg !1929
  %65 = call i32 @atoi(i8* %64) #6, !dbg !1931
  %66 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1932
  %67 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %66, i32 0, i32 47, !dbg !1933
  store i32 %65, i32* %67, align 4, !dbg !1934
  %68 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1935
  %69 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %68, i32 0, i32 47, !dbg !1937
  %70 = load i32, i32* %69, align 4, !dbg !1937
  %71 = icmp slt i32 %70, 1, !dbg !1938
  br i1 %71, label %72, label %75, !dbg !1939

; <label>:72:                                     ; preds = %63
  %73 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1940
  %74 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %73, i32 0, i32 47, !dbg !1941
  store i32 3, i32* %74, align 4, !dbg !1942
  br label %75, !dbg !1940

; <label>:75:                                     ; preds = %72, %63
  br label %76, !dbg !1943

; <label>:76:                                     ; preds = %75, %55
  %77 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1944
  %78 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %77, i32 0, i32 69, !dbg !1946
  %79 = load %struct._GHashTable*, %struct._GHashTable** %78, align 8, !dbg !1946
  %80 = call i8* @g_hash_table_lookup(%struct._GHashTable* %79, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0)), !dbg !1947
  store i8* %80, i8** %3, align 8, !dbg !1948
  %81 = icmp ne i8* %80, null, !dbg !1948
  br i1 %81, label %82, label %93, !dbg !1949

; <label>:82:                                     ; preds = %76
  %83 = load i8*, i8** %3, align 8, !dbg !1950
  %84 = call i8* @strstr(i8* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0)) #6, !dbg !1953
  %85 = icmp ne i8* %84, null, !dbg !1954
  br i1 %85, label %86, label %89, !dbg !1955

; <label>:86:                                     ; preds = %82
  %87 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1956
  %88 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %87, i32 0, i32 72, !dbg !1957
  store i32 (i8*, i8*)* @irc_nickcmp_rfc1459, i32 (i8*, i8*)** %88, align 8, !dbg !1958
  br label %92, !dbg !1956

; <label>:89:                                     ; preds = %82
  %90 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1959
  %91 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %90, i32 0, i32 72, !dbg !1960
  store i32 (i8*, i8*)* @irc_nickcmp_ascii, i32 (i8*, i8*)** %91, align 8, !dbg !1961
  br label %92

; <label>:92:                                     ; preds = %89, %86
  br label %93, !dbg !1962

; <label>:93:                                     ; preds = %92, %76
  %94 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1963
  %95 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %94, i32 0, i32 69, !dbg !1965
  %96 = load %struct._GHashTable*, %struct._GHashTable** %95, align 8, !dbg !1965
  %97 = call i8* @g_hash_table_lookup(%struct._GHashTable* %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0)), !dbg !1966
  store i8* %97, i8** %3, align 8, !dbg !1967
  %98 = icmp ne i8* %97, null, !dbg !1967
  br i1 %98, label %99, label %157, !dbg !1968

; <label>:99:                                     ; preds = %93
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1969, metadata !739), !dbg !1971
  %100 = load i8*, i8** %3, align 8, !dbg !1972
  store i8* %100, i8** %6, align 8, !dbg !1971
  %101 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1973
  %102 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %101, i32 0, i32 46, !dbg !1974
  store i32 1, i32* %102, align 8, !dbg !1975
  %103 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1976
  %104 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %103, i32 0, i32 49, !dbg !1977
  store i32 1, i32* %104, align 4, !dbg !1978
  br label %105, !dbg !1979

; <label>:105:                                    ; preds = %153, %99
  %106 = load i8*, i8** %6, align 8, !dbg !1980
  %107 = load i8, i8* %106, align 1, !dbg !1982
  %108 = sext i8 %107 to i32, !dbg !1982
  %109 = icmp ne i32 %108, 0, !dbg !1983
  br i1 %109, label %110, label %156, !dbg !1984

; <label>:110:                                    ; preds = %105
  %111 = load i8*, i8** %6, align 8, !dbg !1985
  %112 = call i32 @g_ascii_strncasecmp(i8* %111, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i64 5), !dbg !1988
  %113 = icmp ne i32 %112, 0, !dbg !1988
  br i1 %113, label %128, label %114, !dbg !1989

; <label>:114:                                    ; preds = %110
  %115 = load i8*, i8** %6, align 8, !dbg !1990
  %116 = getelementptr inbounds i8, i8* %115, i64 5, !dbg !1992
  %117 = call i32 @atoi(i8* %116) #6, !dbg !1993
  %118 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1994
  %119 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %118, i32 0, i32 46, !dbg !1995
  store i32 %117, i32* %119, align 8, !dbg !1996
  %120 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1997
  %121 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %120, i32 0, i32 46, !dbg !1999
  %122 = load i32, i32* %121, align 8, !dbg !1999
  %123 = icmp sle i32 %122, 0, !dbg !2000
  br i1 %123, label %124, label %127, !dbg !2001

; <label>:124:                                    ; preds = %114
  %125 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2002
  %126 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %125, i32 0, i32 46, !dbg !2003
  store i32 30, i32* %126, align 8, !dbg !2004
  br label %127, !dbg !2002

; <label>:127:                                    ; preds = %124, %114
  br label %147, !dbg !2005

; <label>:128:                                    ; preds = %110
  %129 = load i8*, i8** %6, align 8, !dbg !2006
  %130 = call i32 @g_ascii_strncasecmp(i8* %129, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i64 8), !dbg !2009
  %131 = icmp ne i32 %130, 0, !dbg !2009
  br i1 %131, label %146, label %132, !dbg !2010

; <label>:132:                                    ; preds = %128
  %133 = load i8*, i8** %6, align 8, !dbg !2011
  %134 = getelementptr inbounds i8, i8* %133, i64 8, !dbg !2013
  %135 = call i32 @atoi(i8* %134) #6, !dbg !2014
  %136 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2015
  %137 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %136, i32 0, i32 49, !dbg !2016
  store i32 %135, i32* %137, align 4, !dbg !2017
  %138 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2018
  %139 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %138, i32 0, i32 49, !dbg !2020
  %140 = load i32, i32* %139, align 4, !dbg !2020
  %141 = icmp sle i32 %140, 0, !dbg !2021
  br i1 %141, label %142, label %145, !dbg !2022

; <label>:142:                                    ; preds = %132
  %143 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2023
  %144 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %143, i32 0, i32 49, !dbg !2024
  store i32 30, i32* %144, align 4, !dbg !2025
  br label %145, !dbg !2023

; <label>:145:                                    ; preds = %142, %132
  br label %146, !dbg !2026

; <label>:146:                                    ; preds = %145, %128
  br label %147

; <label>:147:                                    ; preds = %146, %127
  %148 = load i8*, i8** %6, align 8, !dbg !2027
  %149 = call i8* @strchr(i8* %148, i32 44) #6, !dbg !2028
  store i8* %149, i8** %6, align 8, !dbg !2029
  %150 = load i8*, i8** %6, align 8, !dbg !2030
  %151 = icmp eq i8* %150, null, !dbg !2032
  br i1 %151, label %152, label %153, !dbg !2033

; <label>:152:                                    ; preds = %147
  br label %156, !dbg !2034

; <label>:153:                                    ; preds = %147
  %154 = load i8*, i8** %6, align 8, !dbg !2035
  %155 = getelementptr inbounds i8, i8* %154, i32 1, !dbg !2035
  store i8* %155, i8** %6, align 8, !dbg !2035
  br label %105, !dbg !2036, !llvm.loop !2038

; <label>:156:                                    ; preds = %152, %105
  br label %177, !dbg !2039

; <label>:157:                                    ; preds = %93
  %158 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2040
  %159 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %158, i32 0, i32 69, !dbg !2043
  %160 = load %struct._GHashTable*, %struct._GHashTable** %159, align 8, !dbg !2043
  %161 = call i8* @g_hash_table_lookup(%struct._GHashTable* %160, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0)), !dbg !2044
  store i8* %161, i8** %3, align 8, !dbg !2045
  %162 = icmp ne i8* %161, null, !dbg !2045
  br i1 %162, label %163, label %176, !dbg !2046

; <label>:163:                                    ; preds = %157
  %164 = load i8*, i8** %3, align 8, !dbg !2047
  %165 = call i32 @atoi(i8* %164) #6, !dbg !2049
  %166 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2050
  %167 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %166, i32 0, i32 49, !dbg !2051
  store i32 %165, i32* %167, align 4, !dbg !2052
  %168 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2053
  %169 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %168, i32 0, i32 49, !dbg !2055
  %170 = load i32, i32* %169, align 4, !dbg !2055
  %171 = icmp sle i32 %170, 0, !dbg !2056
  br i1 %171, label %172, label %175, !dbg !2057

; <label>:172:                                    ; preds = %163
  %173 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2058
  %174 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %173, i32 0, i32 49, !dbg !2059
  store i32 1, i32* %174, align 4, !dbg !2060
  br label %175, !dbg !2058

; <label>:175:                                    ; preds = %172, %163
  br label %176, !dbg !2061

; <label>:176:                                    ; preds = %175, %157
  br label %177

; <label>:177:                                    ; preds = %176, %156
  ret void, !dbg !2062
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @parse_chanmodes(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !2063 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [4 x void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*], align 16
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !2064, metadata !739), !dbg !2065
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2066, metadata !739), !dbg !2067
  call void @llvm.dbg.declare(metadata [4 x void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*]* %5, metadata !2068, metadata !739), !dbg !2072
  %10 = bitcast [4 x void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*]* %5 to i8*, !dbg !2072
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* bitcast ([4 x void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*]* @parse_chanmodes.modefuncs to i8*), i64 32, i32 16, i1 false), !dbg !2072
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !2073, metadata !739), !dbg !2074
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !2075, metadata !739), !dbg !2076
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2077, metadata !739), !dbg !2078
  %11 = load i8*, i8** %4, align 8, !dbg !2079
  %12 = call noalias i8** @g_strsplit(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0), i32 5), !dbg !2080
  store i8** %12, i8*** %7, align 8, !dbg !2081
  store i32 0, i32* %8, align 4, !dbg !2082
  %13 = load i8**, i8*** %7, align 8, !dbg !2084
  store i8** %13, i8*** %6, align 8, !dbg !2085
  br label %14, !dbg !2086

; <label>:14:                                     ; preds = %47, %2
  %15 = load i8**, i8*** %6, align 8, !dbg !2087
  %16 = load i8*, i8** %15, align 8, !dbg !2090
  %17 = icmp ne i8* %16, null, !dbg !2091
  br i1 %17, label %18, label %21, !dbg !2092

; <label>:18:                                     ; preds = %14
  %19 = load i32, i32* %8, align 4, !dbg !2093
  %20 = icmp slt i32 %19, 4, !dbg !2095
  br label %21

; <label>:21:                                     ; preds = %18, %14
  %22 = phi i1 [ false, %14 ], [ %20, %18 ]
  br i1 %22, label %23, label %52, !dbg !2096

; <label>:23:                                     ; preds = %21
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2098, metadata !739), !dbg !2100
  %24 = load i8**, i8*** %6, align 8, !dbg !2101
  %25 = load i8*, i8** %24, align 8, !dbg !2102
  store i8* %25, i8** %9, align 8, !dbg !2100
  br label %26, !dbg !2103

; <label>:26:                                     ; preds = %31, %23
  %27 = load i8*, i8** %9, align 8, !dbg !2104
  %28 = load i8, i8* %27, align 1, !dbg !2106
  %29 = zext i8 %28 to i32, !dbg !2106
  %30 = icmp ne i32 %29, 0, !dbg !2107
  br i1 %30, label %31, label %46, !dbg !2108

; <label>:31:                                     ; preds = %26
  %32 = load i32, i32* %8, align 4, !dbg !2109
  %33 = sext i32 %32 to i64, !dbg !2111
  %34 = getelementptr inbounds [4 x void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*], [4 x void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*]* %5, i64 0, i64 %33, !dbg !2111
  %35 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %34, align 8, !dbg !2111
  %36 = load i8*, i8** %9, align 8, !dbg !2112
  %37 = load i8, i8* %36, align 1, !dbg !2113
  %38 = zext i8 %37 to i32, !dbg !2114
  %39 = sext i32 %38 to i64, !dbg !2115
  %40 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2115
  %41 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %40, i32 0, i32 70, !dbg !2116
  %42 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %41, i64 0, i64 %39, !dbg !2115
  %43 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %42, i32 0, i32 0, !dbg !2117
  store void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %35, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %43, align 8, !dbg !2118
  %44 = load i8*, i8** %9, align 8, !dbg !2119
  %45 = getelementptr inbounds i8, i8* %44, i32 1, !dbg !2119
  store i8* %45, i8** %9, align 8, !dbg !2119
  br label %26, !dbg !2120, !llvm.loop !2122

; <label>:46:                                     ; preds = %26
  br label %47, !dbg !2123

; <label>:47:                                     ; preds = %46
  %48 = load i8**, i8*** %6, align 8, !dbg !2124
  %49 = getelementptr inbounds i8*, i8** %48, i32 1, !dbg !2124
  store i8** %49, i8*** %6, align 8, !dbg !2124
  %50 = load i32, i32* %8, align 4, !dbg !2126
  %51 = add nsw i32 %50, 1, !dbg !2126
  store i32 %51, i32* %8, align 4, !dbg !2126
  br label %14, !dbg !2127, !llvm.loop !2128

; <label>:52:                                     ; preds = %21
  %53 = load i8**, i8*** %7, align 8, !dbg !2130
  call void @g_strfreev(i8** %53), !dbg !2131
  ret void, !dbg !2132
}

declare i32 @g_hash_table_lookup_extended(%struct._GHashTable*, i8*, i8**, i8**) #2

declare i32 @g_hash_table_remove(%struct._GHashTable*, i8*) #2

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @parse_prefix(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !2133 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !2134, metadata !739), !dbg !2135
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2136, metadata !739), !dbg !2137
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2138, metadata !739), !dbg !2139
  %6 = load i8*, i8** %4, align 8, !dbg !2140
  %7 = getelementptr inbounds i8, i8* %6, i32 1, !dbg !2140
  store i8* %7, i8** %4, align 8, !dbg !2140
  %8 = load i8, i8* %6, align 1, !dbg !2142
  %9 = sext i8 %8 to i32, !dbg !2142
  %10 = icmp ne i32 %9, 40, !dbg !2143
  br i1 %10, label %11, label %12, !dbg !2144

; <label>:11:                                     ; preds = %2
  br label %75, !dbg !2145

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %4, align 8, !dbg !2146
  %14 = call i8* @strchr(i8* %13, i32 41) #6, !dbg !2147
  store i8* %14, i8** %5, align 8, !dbg !2148
  %15 = load i8*, i8** %5, align 8, !dbg !2149
  %16 = icmp eq i8* %15, null, !dbg !2151
  br i1 %16, label %17, label %18, !dbg !2152

; <label>:17:                                     ; preds = %12
  br label %75, !dbg !2153

; <label>:18:                                     ; preds = %12
  %19 = load i8*, i8** %5, align 8, !dbg !2154
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !2154
  store i8* %20, i8** %5, align 8, !dbg !2154
  br label %21, !dbg !2155

; <label>:21:                                     ; preds = %43, %18
  %22 = load i8*, i8** %4, align 8, !dbg !2156
  %23 = load i8, i8* %22, align 1, !dbg !2158
  %24 = sext i8 %23 to i32, !dbg !2158
  %25 = icmp ne i32 %24, 0, !dbg !2159
  br i1 %25, label %26, label %41, !dbg !2160

; <label>:26:                                     ; preds = %21
  %27 = load i8*, i8** %5, align 8, !dbg !2161
  %28 = load i8, i8* %27, align 1, !dbg !2163
  %29 = sext i8 %28 to i32, !dbg !2163
  %30 = icmp ne i32 %29, 0, !dbg !2164
  br i1 %30, label %31, label %41, !dbg !2165

; <label>:31:                                     ; preds = %26
  %32 = load i8*, i8** %4, align 8, !dbg !2166
  %33 = load i8, i8* %32, align 1, !dbg !2168
  %34 = sext i8 %33 to i32, !dbg !2168
  %35 = icmp ne i32 %34, 41, !dbg !2169
  br i1 %35, label %36, label %41, !dbg !2170

; <label>:36:                                     ; preds = %31
  %37 = load i8*, i8** %5, align 8, !dbg !2171
  %38 = load i8, i8* %37, align 1, !dbg !2173
  %39 = sext i8 %38 to i32, !dbg !2173
  %40 = icmp ne i32 %39, 32, !dbg !2174
  br label %41

; <label>:41:                                     ; preds = %36, %31, %26, %21
  %42 = phi i1 [ false, %31 ], [ false, %26 ], [ false, %21 ], [ %40, %36 ]
  br i1 %42, label %43, label %75, !dbg !2175

; <label>:43:                                     ; preds = %41
  %44 = load i8*, i8** %4, align 8, !dbg !2177
  %45 = load i8, i8* %44, align 1, !dbg !2179
  %46 = zext i8 %45 to i32, !dbg !2180
  %47 = sext i32 %46 to i64, !dbg !2181
  %48 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2181
  %49 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %48, i32 0, i32 70, !dbg !2182
  %50 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %49, i64 0, i64 %47, !dbg !2181
  %51 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %50, i32 0, i32 0, !dbg !2183
  store void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* @modes_type_prefix, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %51, align 8, !dbg !2184
  %52 = load i8*, i8** %5, align 8, !dbg !2185
  %53 = load i8, i8* %52, align 1, !dbg !2186
  %54 = load i8*, i8** %4, align 8, !dbg !2187
  %55 = load i8, i8* %54, align 1, !dbg !2188
  %56 = zext i8 %55 to i32, !dbg !2189
  %57 = sext i32 %56 to i64, !dbg !2190
  %58 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2190
  %59 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %58, i32 0, i32 70, !dbg !2191
  %60 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %59, i64 0, i64 %57, !dbg !2190
  %61 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %60, i32 0, i32 1, !dbg !2192
  store i8 %53, i8* %61, align 8, !dbg !2193
  %62 = load i8*, i8** %4, align 8, !dbg !2194
  %63 = load i8, i8* %62, align 1, !dbg !2195
  %64 = load i8*, i8** %5, align 8, !dbg !2196
  %65 = load i8, i8* %64, align 1, !dbg !2197
  %66 = zext i8 %65 to i32, !dbg !2198
  %67 = sext i32 %66 to i64, !dbg !2199
  %68 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2199
  %69 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %68, i32 0, i32 71, !dbg !2200
  %70 = getelementptr inbounds [256 x i8], [256 x i8]* %69, i64 0, i64 %67, !dbg !2199
  store i8 %63, i8* %70, align 1, !dbg !2201
  %71 = load i8*, i8** %4, align 8, !dbg !2202
  %72 = getelementptr inbounds i8, i8* %71, i32 1, !dbg !2202
  store i8* %72, i8** %4, align 8, !dbg !2202
  %73 = load i8*, i8** %5, align 8, !dbg !2203
  %74 = getelementptr inbounds i8, i8* %73, i32 1, !dbg !2203
  store i8* %74, i8** %5, align 8, !dbg !2203
  br label %21, !dbg !2204, !llvm.loop !2206

; <label>:75:                                     ; preds = %11, %17, %41
  ret void, !dbg !2207
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #3

declare i32 @irc_nickcmp_rfc1459(i8*, i8*) #2

declare i32 @irc_nickcmp_ascii(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind uwtable
define void @irc_servers_init() #0 !dbg !2208 {
  call void @settings_add_choice_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0)), !dbg !2209
  call void @settings_add_str_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0)), !dbg !2210
  call void @settings_add_str_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0)), !dbg !2211
  call void @settings_add_str_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0)), !dbg !2212
  call void @settings_add_bool_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.36, i32 0, i32 0), i32 1), !dbg !2213
  call void @settings_add_time_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0)), !dbg !2214
  call void @settings_add_int_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 5), !dbg !2215
  store i32 -1, i32* @cmd_tag, align 4, !dbg !2216
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @sig_connected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2217
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @sig_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2218
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @sig_server_quit to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2219
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_connected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2220
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_server_info to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2221
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_isupport to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2222
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_motd to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2223
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_end_of_motd to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2224
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_end_of_motd to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2225
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_channels_formed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2226
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_hosthidden to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2227
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_server_banned to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2228
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_error to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2229
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_ping to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2230
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @event_empty to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2231
  call void @irc_servers_setup_init(), !dbg !2232
  call void @irc_servers_reconnect_init(), !dbg !2233
  call void @servers_redirect_init(), !dbg !2234
  call void @servers_idle_init(), !dbg !2235
  ret void, !dbg !2236
}

declare void @settings_add_choice_module(i8*, i8*, i8*, i32, i8*) #2

declare void @settings_add_str_module(i8*, i8*, i8*, i8*) #2

declare void @settings_add_bool_module(i8*, i8*, i8*, i32) #2

declare void @settings_add_time_module(i8*, i8*, i8*, i8*) #2

declare void @settings_add_int_module(i8*, i8*, i8*, i32) #2

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_connected(%struct._IRC_SERVER_REC*) #0 !dbg !2237 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !2238, metadata !739), !dbg !2239
  %3 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2240
  %4 = bitcast %struct._IRC_SERVER_REC* %3 to i8*, !dbg !2240
  %5 = call i8* @module_check_cast(i8* %4, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0)), !dbg !2242
  %6 = bitcast i8* %5 to %struct._SERVER_REC*, !dbg !2243
  %7 = bitcast %struct._SERVER_REC* %6 to i8*, !dbg !2244
  %8 = call i8* @chat_protocol_check_cast(i8* %7, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !2245
  %9 = bitcast i8* %8 to %struct._IRC_SERVER_REC*, !dbg !2247
  %10 = icmp ne %struct._IRC_SERVER_REC* %9, null, !dbg !2247
  br i1 %10, label %11, label %12, !dbg !2248

; <label>:11:                                     ; preds = %1
  br i1 false, label %13, label %14, !dbg !2249

; <label>:12:                                     ; preds = %1
  br i1 false, label %14, label %13, !dbg !2251

; <label>:13:                                     ; preds = %12, %11
  br label %39, !dbg !2253

; <label>:14:                                     ; preds = %12, %11
  %15 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2254
  %16 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %15, i32 0, i32 26, !dbg !2255
  store i32 (%struct._SERVER_REC*, i8)* @isnickflag_func, i32 (%struct._SERVER_REC*, i8)** %16, align 8, !dbg !2256
  %17 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2257
  %18 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %17, i32 0, i32 27, !dbg !2258
  store i32 (%struct._SERVER_REC*, i8*)* @ischannel_func, i32 (%struct._SERVER_REC*, i8*)** %18, align 8, !dbg !2259
  %19 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2260
  %20 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %19, i32 0, i32 30, !dbg !2261
  store i8** (%struct._SERVER_REC*, i8*, i8*)* @split_message, i8** (%struct._SERVER_REC*, i8*, i8*)** %20, align 8, !dbg !2262
  %21 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2263
  %22 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %21, i32 0, i32 29, !dbg !2264
  store void (%struct._SERVER_REC*, i8*, i8*, i32)* @send_message, void (%struct._SERVER_REC*, i8*, i8*, i32)** %22, align 8, !dbg !2265
  %23 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2266
  %24 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %23, i32 0, i32 32, !dbg !2267
  store %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)* bitcast (%struct._QUERY_REC* (%struct._IRC_SERVER_REC*, i8*)* @irc_query_find to %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*), %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)** %24, align 8, !dbg !2268
  %25 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2269
  %26 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %25, i32 0, i32 72, !dbg !2270
  store i32 (i8*, i8*)* @irc_nickcmp_rfc1459, i32 (i8*, i8*)** %26, align 8, !dbg !2271
  %27 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_istr_hash, i32 (i8*, i8*)* @g_istr_equal), !dbg !2272
  %28 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2273
  %29 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %28, i32 0, i32 65, !dbg !2274
  store %struct._GHashTable* %27, %struct._GHashTable** %29, align 8, !dbg !2275
  %30 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2276
  %31 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %30, i32 0, i32 8, !dbg !2278
  %32 = load i8, i8* %31, align 8, !dbg !2278
  %33 = lshr i8 %32, 3, !dbg !2278
  %34 = and i8 %33, 1, !dbg !2278
  %35 = zext i8 %34 to i32, !dbg !2278
  %36 = icmp ne i32 %35, 0, !dbg !2276
  br i1 %36, label %39, label %37, !dbg !2279

; <label>:37:                                     ; preds = %14
  %38 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2280
  call void @server_init(%struct._IRC_SERVER_REC* %38), !dbg !2281
  br label %39, !dbg !2281

; <label>:39:                                     ; preds = %13, %37, %14
  ret void, !dbg !2282
}

; Function Attrs: nounwind uwtable
define internal void @sig_destroyed(%struct._IRC_SERVER_REC*) #0 !dbg !2283 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !2284, metadata !739), !dbg !2285
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !2286, metadata !739), !dbg !2287
  %4 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2288
  %5 = bitcast %struct._IRC_SERVER_REC* %4 to i8*, !dbg !2288
  %6 = call i8* @module_check_cast(i8* %5, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0)), !dbg !2290
  %7 = bitcast i8* %6 to %struct._SERVER_REC*, !dbg !2291
  %8 = bitcast %struct._SERVER_REC* %7 to i8*, !dbg !2292
  %9 = call i8* @chat_protocol_check_cast(i8* %8, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !2293
  %10 = bitcast i8* %9 to %struct._IRC_SERVER_REC*, !dbg !2295
  %11 = icmp ne %struct._IRC_SERVER_REC* %10, null, !dbg !2295
  br i1 %11, label %12, label %13, !dbg !2296

; <label>:12:                                     ; preds = %1
  br i1 false, label %14, label %15, !dbg !2297

; <label>:13:                                     ; preds = %1
  br i1 false, label %15, label %14, !dbg !2299

; <label>:14:                                     ; preds = %13, %12
  br label %161, !dbg !2301

; <label>:15:                                     ; preds = %13, %12
  %16 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2302
  %17 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %16, i32 0, i32 56, !dbg !2304
  %18 = load %struct._GSList*, %struct._GSList** %17, align 8, !dbg !2304
  store %struct._GSList* %18, %struct._GSList** %3, align 8, !dbg !2305
  br label %19, !dbg !2306

; <label>:19:                                     ; preds = %40, %15
  %20 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !2307
  %21 = icmp ne %struct._GSList* %20, null, !dbg !2310
  br i1 %21, label %22, label %46, !dbg !2311

; <label>:22:                                     ; preds = %19
  %23 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !2312
  %24 = getelementptr inbounds %struct._GSList, %struct._GSList* %23, i32 0, i32 0, !dbg !2314
  %25 = load i8*, i8** %24, align 8, !dbg !2314
  call void @g_free(i8* %25), !dbg !2315
  %26 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !2316
  %27 = getelementptr inbounds %struct._GSList, %struct._GSList* %26, i32 0, i32 1, !dbg !2318
  %28 = load %struct._GSList*, %struct._GSList** %27, align 8, !dbg !2318
  %29 = getelementptr inbounds %struct._GSList, %struct._GSList* %28, i32 0, i32 0, !dbg !2319
  %30 = load i8*, i8** %29, align 8, !dbg !2319
  %31 = icmp ne i8* %30, null, !dbg !2320
  br i1 %31, label %32, label %39, !dbg !2321

; <label>:32:                                     ; preds = %22
  %33 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !2322
  %34 = getelementptr inbounds %struct._GSList, %struct._GSList* %33, i32 0, i32 1, !dbg !2323
  %35 = load %struct._GSList*, %struct._GSList** %34, align 8, !dbg !2323
  %36 = getelementptr inbounds %struct._GSList, %struct._GSList* %35, i32 0, i32 0, !dbg !2324
  %37 = load i8*, i8** %36, align 8, !dbg !2324
  %38 = bitcast i8* %37 to %struct._REDIRECT_REC*, !dbg !2322
  call void @server_redirect_destroy(%struct._REDIRECT_REC* %38), !dbg !2325
  br label %39, !dbg !2325

; <label>:39:                                     ; preds = %32, %22
  br label %40, !dbg !2326

; <label>:40:                                     ; preds = %39
  %41 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !2327
  %42 = getelementptr inbounds %struct._GSList, %struct._GSList* %41, i32 0, i32 1, !dbg !2329
  %43 = load %struct._GSList*, %struct._GSList** %42, align 8, !dbg !2329
  %44 = getelementptr inbounds %struct._GSList, %struct._GSList* %43, i32 0, i32 1, !dbg !2330
  %45 = load %struct._GSList*, %struct._GSList** %44, align 8, !dbg !2330
  store %struct._GSList* %45, %struct._GSList** %3, align 8, !dbg !2331
  br label %19, !dbg !2332, !llvm.loop !2333

; <label>:46:                                     ; preds = %19
  %47 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2335
  %48 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %47, i32 0, i32 56, !dbg !2336
  %49 = load %struct._GSList*, %struct._GSList** %48, align 8, !dbg !2336
  call void @g_slist_free(%struct._GSList* %49), !dbg !2337
  %50 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2338
  %51 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %50, i32 0, i32 56, !dbg !2339
  store %struct._GSList* null, %struct._GSList** %51, align 8, !dbg !2340
  %52 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2341
  %53 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %52, i32 0, i32 51, !dbg !2342
  %54 = load %struct._GSList*, %struct._GSList** %53, align 8, !dbg !2342
  call void @gslist_free_full(%struct._GSList* %54, void (i8*)* @g_free), !dbg !2343
  %55 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2344
  %56 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %55, i32 0, i32 51, !dbg !2345
  store %struct._GSList* null, %struct._GSList** %56, align 8, !dbg !2346
  %57 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2347
  %58 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %57, i32 0, i32 50, !dbg !2349
  %59 = load %struct._GHashTable*, %struct._GHashTable** %58, align 8, !dbg !2349
  %60 = icmp ne %struct._GHashTable* %59, null, !dbg !2347
  br i1 %60, label %61, label %67, !dbg !2350

; <label>:61:                                     ; preds = %46
  %62 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2351
  %63 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %62, i32 0, i32 50, !dbg !2353
  %64 = load %struct._GHashTable*, %struct._GHashTable** %63, align 8, !dbg !2353
  call void @g_hash_table_destroy(%struct._GHashTable* %64), !dbg !2354
  %65 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2355
  %66 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %65, i32 0, i32 50, !dbg !2356
  store %struct._GHashTable* null, %struct._GHashTable** %66, align 8, !dbg !2357
  br label %67, !dbg !2358

; <label>:67:                                     ; preds = %61, %46
  %68 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2359
  %69 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %68, i32 0, i32 52, !dbg !2360
  %70 = load %struct._GSList*, %struct._GSList** %69, align 8, !dbg !2360
  call void @gslist_free_full(%struct._GSList* %70, void (i8*)* @g_free), !dbg !2361
  %71 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2362
  %72 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %71, i32 0, i32 52, !dbg !2363
  store %struct._GSList* null, %struct._GSList** %72, align 8, !dbg !2364
  br label %73, !dbg !2365, !llvm.loop !2366

; <label>:73:                                     ; preds = %67
  %74 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2367
  %75 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %74, i32 0, i32 53, !dbg !2371
  %76 = load %struct._GString*, %struct._GString** %75, align 8, !dbg !2371
  %77 = icmp ne %struct._GString* %76, null, !dbg !2367
  br i1 %77, label %78, label %85, !dbg !2367

; <label>:78:                                     ; preds = %73
  %79 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2372
  %80 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %79, i32 0, i32 53, !dbg !2375
  %81 = load %struct._GString*, %struct._GString** %80, align 8, !dbg !2375
  %82 = bitcast %struct._GString* %81 to i8*, !dbg !2372
  call void @g_free(i8* %82), !dbg !2376
  %83 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2377
  %84 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %83, i32 0, i32 53, !dbg !2378
  store %struct._GString* null, %struct._GString** %84, align 8, !dbg !2379
  br label %85, !dbg !2380

; <label>:85:                                     ; preds = %78, %73
  br label %86, !dbg !2381

; <label>:86:                                     ; preds = %85
  %87 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2383
  %88 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %87, i32 0, i32 69, !dbg !2384
  %89 = load %struct._GHashTable*, %struct._GHashTable** %88, align 8, !dbg !2384
  %90 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2385
  %91 = bitcast %struct._IRC_SERVER_REC* %90 to i8*, !dbg !2385
  call void @g_hash_table_foreach(%struct._GHashTable* %89, void (i8*, i8*, i8*)* bitcast (void (i8*, i8*)* @isupport_destroy_hash to void (i8*, i8*, i8*)*), i8* %91), !dbg !2386
  %92 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2387
  %93 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %92, i32 0, i32 69, !dbg !2388
  %94 = load %struct._GHashTable*, %struct._GHashTable** %93, align 8, !dbg !2388
  call void @g_hash_table_destroy(%struct._GHashTable* %94), !dbg !2389
  %95 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2390
  %96 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %95, i32 0, i32 69, !dbg !2391
  store %struct._GHashTable* null, %struct._GHashTable** %96, align 8, !dbg !2392
  br label %97, !dbg !2393, !llvm.loop !2394

; <label>:97:                                     ; preds = %86
  %98 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2395
  %99 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %98, i32 0, i32 42, !dbg !2399
  %100 = load i8*, i8** %99, align 8, !dbg !2399
  %101 = icmp ne i8* %100, null, !dbg !2395
  br i1 %101, label %102, label %108, !dbg !2395

; <label>:102:                                    ; preds = %97
  %103 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2400
  %104 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %103, i32 0, i32 42, !dbg !2403
  %105 = load i8*, i8** %104, align 8, !dbg !2403
  call void @g_free(i8* %105), !dbg !2404
  %106 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2405
  %107 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %106, i32 0, i32 42, !dbg !2406
  store i8* null, i8** %107, align 8, !dbg !2407
  br label %108, !dbg !2408

; <label>:108:                                    ; preds = %102, %97
  br label %109, !dbg !2409

; <label>:109:                                    ; preds = %108
  br label %110, !dbg !2411, !llvm.loop !2412

; <label>:110:                                    ; preds = %109
  %111 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2413
  %112 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %111, i32 0, i32 40, !dbg !2417
  %113 = load i8*, i8** %112, align 8, !dbg !2417
  %114 = icmp ne i8* %113, null, !dbg !2413
  br i1 %114, label %115, label %121, !dbg !2413

; <label>:115:                                    ; preds = %110
  %116 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2418
  %117 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %116, i32 0, i32 40, !dbg !2421
  %118 = load i8*, i8** %117, align 8, !dbg !2421
  call void @g_free(i8* %118), !dbg !2422
  %119 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2423
  %120 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %119, i32 0, i32 40, !dbg !2424
  store i8* null, i8** %120, align 8, !dbg !2425
  br label %121, !dbg !2426

; <label>:121:                                    ; preds = %115, %110
  br label %122, !dbg !2427

; <label>:122:                                    ; preds = %121
  br label %123, !dbg !2429, !llvm.loop !2430

; <label>:123:                                    ; preds = %122
  %124 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2431
  %125 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %124, i32 0, i32 41, !dbg !2435
  %126 = load i8*, i8** %125, align 8, !dbg !2435
  %127 = icmp ne i8* %126, null, !dbg !2431
  br i1 %127, label %128, label %134, !dbg !2431

; <label>:128:                                    ; preds = %123
  %129 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2436
  %130 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %129, i32 0, i32 41, !dbg !2439
  %131 = load i8*, i8** %130, align 8, !dbg !2439
  call void @g_free(i8* %131), !dbg !2440
  %132 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2441
  %133 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %132, i32 0, i32 41, !dbg !2442
  store i8* null, i8** %133, align 8, !dbg !2443
  br label %134, !dbg !2444

; <label>:134:                                    ; preds = %128, %123
  br label %135, !dbg !2445

; <label>:135:                                    ; preds = %134
  br label %136, !dbg !2447, !llvm.loop !2448

; <label>:136:                                    ; preds = %135
  %137 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2449
  %138 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %137, i32 0, i32 43, !dbg !2453
  %139 = load i8*, i8** %138, align 8, !dbg !2453
  %140 = icmp ne i8* %139, null, !dbg !2449
  br i1 %140, label %141, label %147, !dbg !2449

; <label>:141:                                    ; preds = %136
  %142 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2454
  %143 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %142, i32 0, i32 43, !dbg !2457
  %144 = load i8*, i8** %143, align 8, !dbg !2457
  call void @g_free(i8* %144), !dbg !2458
  %145 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2459
  %146 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %145, i32 0, i32 43, !dbg !2460
  store i8* null, i8** %146, align 8, !dbg !2461
  br label %147, !dbg !2462

; <label>:147:                                    ; preds = %141, %136
  br label %148, !dbg !2463

; <label>:148:                                    ; preds = %147
  br label %149, !dbg !2465, !llvm.loop !2466

; <label>:149:                                    ; preds = %148
  %150 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2467
  %151 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %150, i32 0, i32 18, !dbg !2471
  %152 = load i8*, i8** %151, align 8, !dbg !2471
  %153 = icmp ne i8* %152, null, !dbg !2467
  br i1 %153, label %154, label %160, !dbg !2467

; <label>:154:                                    ; preds = %149
  %155 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2472
  %156 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %155, i32 0, i32 18, !dbg !2475
  %157 = load i8*, i8** %156, align 8, !dbg !2475
  call void @g_free(i8* %157), !dbg !2476
  %158 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2477
  %159 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %158, i32 0, i32 18, !dbg !2478
  store i8* null, i8** %159, align 8, !dbg !2479
  br label %160, !dbg !2480

; <label>:160:                                    ; preds = %154, %149
  br label %161, !dbg !2481

; <label>:161:                                    ; preds = %14, %160
  ret void, !dbg !2483
}

; Function Attrs: nounwind uwtable
define internal void @sig_server_quit(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !2484 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !2485, metadata !739), !dbg !2486
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2487, metadata !739), !dbg !2488
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2489, metadata !739), !dbg !2490
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2491, metadata !739), !dbg !2492
  %7 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2493
  %8 = bitcast %struct._IRC_SERVER_REC* %7 to i8*, !dbg !2493
  %9 = call i8* @module_check_cast(i8* %8, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0)), !dbg !2495
  %10 = bitcast i8* %9 to %struct._SERVER_REC*, !dbg !2496
  %11 = bitcast %struct._SERVER_REC* %10 to i8*, !dbg !2497
  %12 = call i8* @chat_protocol_check_cast(i8* %11, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !2498
  %13 = bitcast i8* %12 to %struct._IRC_SERVER_REC*, !dbg !2500
  %14 = icmp ne %struct._IRC_SERVER_REC* %13, null, !dbg !2500
  br i1 %14, label %15, label %16, !dbg !2501

; <label>:15:                                     ; preds = %2
  br i1 false, label %24, label %17, !dbg !2502

; <label>:16:                                     ; preds = %2
  br i1 false, label %17, label %24, !dbg !2504

; <label>:17:                                     ; preds = %16, %15
  %18 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2506
  %19 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %18, i32 0, i32 8, !dbg !2508
  %20 = load i8, i8* %19, align 8, !dbg !2508
  %21 = and i8 %20, 1, !dbg !2508
  %22 = zext i8 %21 to i32, !dbg !2508
  %23 = icmp ne i32 %22, 0, !dbg !2506
  br i1 %23, label %25, label %24, !dbg !2509

; <label>:24:                                     ; preds = %17, %16, %15
  br label %38, !dbg !2510

; <label>:25:                                     ; preds = %17
  %26 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2511
  %27 = bitcast %struct._IRC_SERVER_REC* %26 to i8*, !dbg !2511
  %28 = call i8* @module_check_cast(i8* %27, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0)), !dbg !2512
  %29 = bitcast i8* %28 to %struct._SERVER_REC*, !dbg !2513
  %30 = load i8*, i8** %4, align 8, !dbg !2514
  %31 = call i8* @recode_out(%struct._SERVER_REC* %29, i8* %30, i8* null), !dbg !2515
  store i8* %31, i8** %6, align 8, !dbg !2517
  %32 = load i8*, i8** %6, align 8, !dbg !2518
  %33 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i32 0, i32 0), i8* %32), !dbg !2519
  store i8* %33, i8** %5, align 8, !dbg !2520
  %34 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2521
  %35 = load i8*, i8** %5, align 8, !dbg !2522
  call void @irc_send_cmd_now(%struct._IRC_SERVER_REC* %34, i8* %35), !dbg !2523
  %36 = load i8*, i8** %5, align 8, !dbg !2524
  call void @g_free(i8* %36), !dbg !2525
  %37 = load i8*, i8** %6, align 8, !dbg !2526
  call void @g_free(i8* %37), !dbg !2527
  br label %38, !dbg !2528

; <label>:38:                                     ; preds = %25, %24
  ret void, !dbg !2529
}

; Function Attrs: nounwind uwtable
define internal void @event_connected(%struct._IRC_SERVER_REC*, i8*, i8*) #0 !dbg !2530 {
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !2531, metadata !739), !dbg !2532
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2533, metadata !739), !dbg !2534
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2535, metadata !739), !dbg !2536
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2537, metadata !739), !dbg !2538
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2539, metadata !739), !dbg !2540
  br label %9, !dbg !2541, !llvm.loop !2542

; <label>:9:                                      ; preds = %3
  %10 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2543
  %11 = icmp ne %struct._IRC_SERVER_REC* %10, null, !dbg !2547
  br i1 %11, label %12, label %13, !dbg !2543

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !2548

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.event_connected, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0)), !dbg !2551
  br label %93, !dbg !2554

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !2555

; <label>:15:                                     ; preds = %14
  %16 = load i8*, i8** %5, align 8, !dbg !2557
  %17 = call i8* (i8*, i32, ...) @event_get_params(i8* %16, i32 1, i8** %8), !dbg !2558
  store i8* %17, i8** %7, align 8, !dbg !2559
  %18 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2560
  %19 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %18, i32 0, i32 7, !dbg !2562
  %20 = load i8*, i8** %19, align 8, !dbg !2562
  %21 = load i8*, i8** %8, align 8, !dbg !2563
  %22 = call i32 @g_strcmp0(i8* %20, i8* %21), !dbg !2564
  %23 = icmp ne i32 %22, 0, !dbg !2565
  br i1 %23, label %24, label %32, !dbg !2566

; <label>:24:                                     ; preds = %15
  %25 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2567
  %26 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %25, i32 0, i32 7, !dbg !2569
  %27 = load i8*, i8** %26, align 8, !dbg !2569
  call void @g_free(i8* %27), !dbg !2570
  %28 = load i8*, i8** %8, align 8, !dbg !2571
  %29 = call noalias i8* @g_strdup(i8* %28), !dbg !2572
  %30 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2573
  %31 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %30, i32 0, i32 7, !dbg !2574
  store i8* %29, i8** %31, align 8, !dbg !2575
  br label %32, !dbg !2576

; <label>:32:                                     ; preds = %24, %15
  %33 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2577
  %34 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %33, i32 0, i32 40, !dbg !2578
  %35 = load i8*, i8** %34, align 8, !dbg !2578
  call void @g_free(i8* %35), !dbg !2579
  %36 = load i8*, i8** %6, align 8, !dbg !2580
  %37 = icmp eq i8* %36, null, !dbg !2581
  br i1 %37, label %38, label %45, !dbg !2580

; <label>:38:                                     ; preds = %32
  %39 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2582
  %40 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %39, i32 0, i32 3, !dbg !2583
  %41 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %40, align 8, !dbg !2583
  %42 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %41, i32 0, i32 10, !dbg !2584
  %43 = load i8*, i8** %42, align 8, !dbg !2584
  %44 = call noalias i8* @g_strdup(i8* %43), !dbg !2585
  br label %48, !dbg !2586

; <label>:45:                                     ; preds = %32
  %46 = load i8*, i8** %6, align 8, !dbg !2588
  %47 = call noalias i8* @g_strdup(i8* %46), !dbg !2589
  br label %48, !dbg !2590

; <label>:48:                                     ; preds = %45, %38
  %49 = phi i8* [ %44, %38 ], [ %47, %45 ], !dbg !2592
  %50 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2594
  %51 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %50, i32 0, i32 40, !dbg !2595
  store i8* %49, i8** %51, align 8, !dbg !2596
  %52 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2597
  %53 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %52, i32 0, i32 8, !dbg !2598
  %54 = load i8, i8* %53, align 8, !dbg !2599
  %55 = and i8 %54, -2, !dbg !2599
  %56 = or i8 %55, 1, !dbg !2599
  store i8 %56, i8* %53, align 8, !dbg !2599
  %57 = call i64 @time(i64* null) #7, !dbg !2600
  %58 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2601
  %59 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %58, i32 0, i32 5, !dbg !2602
  store i64 %57, i64* %59, align 8, !dbg !2603
  %60 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2604
  %61 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %60, i32 0, i32 57, !dbg !2605
  call void @g_get_current_time(%struct._GTimeVal* %61), !dbg !2606
  %62 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2607
  %63 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %62, i32 0, i32 3, !dbg !2609
  %64 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %63, align 8, !dbg !2609
  %65 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %64, i32 0, i32 31, !dbg !2610
  %66 = load i8*, i8** %65, align 8, !dbg !2610
  %67 = icmp ne i8* %66, null, !dbg !2611
  br i1 %67, label %68, label %89, !dbg !2612

; <label>:68:                                     ; preds = %48
  %69 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2613
  %70 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2615
  %71 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %70, i32 0, i32 7, !dbg !2616
  %72 = load i8*, i8** %71, align 8, !dbg !2616
  %73 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2617
  %74 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %73, i32 0, i32 3, !dbg !2618
  %75 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %74, align 8, !dbg !2618
  %76 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %75, i32 0, i32 31, !dbg !2619
  %77 = load i8*, i8** %76, align 8, !dbg !2619
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i32 0, i32 0), i8* %72, i8* %77), !dbg !2620
  %78 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2621
  %79 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %78, i32 0, i32 42, !dbg !2622
  %80 = load i8*, i8** %79, align 8, !dbg !2622
  call void @g_free(i8* %80), !dbg !2623
  %81 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2624
  %82 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %81, i32 0, i32 3, !dbg !2625
  %83 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %82, align 8, !dbg !2625
  %84 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %83, i32 0, i32 31, !dbg !2626
  %85 = load i8*, i8** %84, align 8, !dbg !2626
  %86 = call noalias i8* @g_strdup(i8* %85), !dbg !2627
  %87 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2628
  %88 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %87, i32 0, i32 42, !dbg !2629
  store i8* %86, i8** %88, align 8, !dbg !2630
  br label %89, !dbg !2631

; <label>:89:                                     ; preds = %68, %48
  %90 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2632
  %91 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.73, i32 0, i32 0), i32 1, %struct._IRC_SERVER_REC* %90), !dbg !2633
  %92 = load i8*, i8** %7, align 8, !dbg !2634
  call void @g_free(i8* %92), !dbg !2635
  br label %93, !dbg !2636

; <label>:93:                                     ; preds = %89, %13
  ret void, !dbg !2637
}

; Function Attrs: nounwind uwtable
define internal void @event_server_info(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !2638 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !2639, metadata !739), !dbg !2640
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2641, metadata !739), !dbg !2642
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2643, metadata !739), !dbg !2644
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2645, metadata !739), !dbg !2646
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2647, metadata !739), !dbg !2648
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2649, metadata !739), !dbg !2650
  br label %9, !dbg !2651, !llvm.loop !2652

; <label>:9:                                      ; preds = %2
  %10 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2653
  %11 = icmp ne %struct._IRC_SERVER_REC* %10, null, !dbg !2657
  br i1 %11, label %12, label %13, !dbg !2653

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !2658

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.event_server_info, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0)), !dbg !2661
  br label %40, !dbg !2664

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !2665

; <label>:15:                                     ; preds = %14
  %16 = load i8*, i8** %4, align 8, !dbg !2667
  %17 = call i8* (i8*, i32, ...) @event_get_params(i8* %16, i32 5, i8* null, i8* null, i8** %6, i8** %7, i8** %8), !dbg !2668
  store i8* %17, i8** %5, align 8, !dbg !2669
  %18 = load i8*, i8** %8, align 8, !dbg !2670
  %19 = call i8* @strchr(i8* %18, i32 73) #6, !dbg !2672
  %20 = icmp ne i8* %19, null, !dbg !2672
  br i1 %20, label %21, label %31, !dbg !2673

; <label>:21:                                     ; preds = %15
  %22 = load i8*, i8** %8, align 8, !dbg !2674
  %23 = call i8* @strchr(i8* %22, i32 101) #6, !dbg !2676
  %24 = icmp ne i8* %23, null, !dbg !2676
  br i1 %24, label %25, label %31, !dbg !2677

; <label>:25:                                     ; preds = %21
  %26 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2678
  %27 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %26, i32 0, i32 45, !dbg !2679
  %28 = load i16, i16* %27, align 4, !dbg !2680
  %29 = and i16 %28, -5, !dbg !2680
  %30 = or i16 %29, 4, !dbg !2680
  store i16 %30, i16* %27, align 4, !dbg !2680
  br label %31, !dbg !2678

; <label>:31:                                     ; preds = %25, %21, %15
  %32 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2681
  %33 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %32, i32 0, i32 16, !dbg !2682
  %34 = load i8*, i8** %33, align 8, !dbg !2682
  call void @g_free(i8* %34), !dbg !2683
  %35 = load i8*, i8** %6, align 8, !dbg !2684
  %36 = call noalias i8* @g_strdup(i8* %35), !dbg !2685
  %37 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2686
  %38 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %37, i32 0, i32 16, !dbg !2687
  store i8* %36, i8** %38, align 8, !dbg !2688
  %39 = load i8*, i8** %5, align 8, !dbg !2689
  call void @g_free(i8* %39), !dbg !2690
  br label %40, !dbg !2691

; <label>:40:                                     ; preds = %31, %13
  ret void, !dbg !2692
}

; Function Attrs: nounwind uwtable
define internal void @event_isupport(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !2694 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !2695, metadata !739), !dbg !2696
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2697, metadata !739), !dbg !2698
  call void @llvm.dbg.declare(metadata i8*** %5, metadata !2699, metadata !739), !dbg !2700
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2701, metadata !739), !dbg !2702
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2703, metadata !739), !dbg !2704
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !2705, metadata !739), !dbg !2706
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2707, metadata !739), !dbg !2708
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2709, metadata !739), !dbg !2710
  br label %12, !dbg !2711, !llvm.loop !2712

; <label>:12:                                     ; preds = %2
  %13 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2713
  %14 = icmp ne %struct._IRC_SERVER_REC* %13, null, !dbg !2717
  br i1 %14, label %15, label %16, !dbg !2713

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !2718

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.event_isupport, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0)), !dbg !2721
  br label %116, !dbg !2724

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !2725

; <label>:18:                                     ; preds = %17
  %19 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2727
  %20 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %19, i32 0, i32 45, !dbg !2728
  %21 = load i16, i16* %20, align 4, !dbg !2729
  %22 = and i16 %21, -513, !dbg !2729
  %23 = or i16 %22, 512, !dbg !2729
  store i16 %23, i16* %20, align 4, !dbg !2729
  %24 = load i8*, i8** %4, align 8, !dbg !2730
  %25 = call i8* @strchr(i8* %24, i32 32) #6, !dbg !2731
  store i8* %25, i8** %6, align 8, !dbg !2732
  %26 = load i8*, i8** %6, align 8, !dbg !2733
  %27 = icmp eq i8* %26, null, !dbg !2735
  br i1 %27, label %28, label %29, !dbg !2736

; <label>:28:                                     ; preds = %18
  br label %116, !dbg !2737

; <label>:29:                                     ; preds = %18
  %30 = load i8*, i8** %6, align 8, !dbg !2738
  %31 = getelementptr inbounds i8, i8* %30, i32 1, !dbg !2738
  store i8* %31, i8** %6, align 8, !dbg !2738
  %32 = load i8*, i8** %6, align 8, !dbg !2739
  %33 = call noalias i8** @g_strsplit(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.74, i32 0, i32 0), i32 -1), !dbg !2740
  store i8** %33, i8*** %8, align 8, !dbg !2741
  %34 = load i8**, i8*** %8, align 8, !dbg !2742
  store i8** %34, i8*** %5, align 8, !dbg !2744
  br label %35, !dbg !2745

; <label>:35:                                     ; preds = %110, %29
  %36 = load i8**, i8*** %5, align 8, !dbg !2746
  %37 = load i8*, i8** %36, align 8, !dbg !2749
  %38 = icmp ne i8* %37, null, !dbg !2750
  br i1 %38, label %39, label %113, !dbg !2751

; <label>:39:                                     ; preds = %35
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2752, metadata !739), !dbg !2754
  store i32 0, i32* %11, align 4, !dbg !2754
  %40 = load i8**, i8*** %5, align 8, !dbg !2755
  %41 = load i8*, i8** %40, align 8, !dbg !2757
  %42 = load i8, i8* %41, align 1, !dbg !2758
  %43 = sext i8 %42 to i32, !dbg !2758
  %44 = icmp eq i32 %43, 0, !dbg !2759
  br i1 %44, label %45, label %46, !dbg !2760

; <label>:45:                                     ; preds = %39
  br label %110, !dbg !2761

; <label>:46:                                     ; preds = %39
  %47 = load i8**, i8*** %5, align 8, !dbg !2762
  %48 = load i8*, i8** %47, align 8, !dbg !2764
  %49 = load i8, i8* %48, align 1, !dbg !2765
  %50 = sext i8 %49 to i32, !dbg !2765
  %51 = icmp eq i32 %50, 58, !dbg !2766
  br i1 %51, label %52, label %53, !dbg !2767

; <label>:52:                                     ; preds = %46
  br label %113, !dbg !2768

; <label>:53:                                     ; preds = %46
  %54 = load i8**, i8*** %5, align 8, !dbg !2769
  %55 = load i8*, i8** %54, align 8, !dbg !2770
  %56 = call i8* @strchr(i8* %55, i32 61) #6, !dbg !2771
  store i8* %56, i8** %6, align 8, !dbg !2772
  %57 = load i8*, i8** %6, align 8, !dbg !2773
  %58 = icmp ne i8* %57, null, !dbg !2775
  br i1 %58, label %59, label %63, !dbg !2776

; <label>:59:                                     ; preds = %53
  %60 = load i8*, i8** %6, align 8, !dbg !2777
  store i8 0, i8* %60, align 1, !dbg !2779
  %61 = load i8*, i8** %6, align 8, !dbg !2780
  %62 = getelementptr inbounds i8, i8* %61, i32 1, !dbg !2780
  store i8* %62, i8** %6, align 8, !dbg !2780
  br label %63, !dbg !2781

; <label>:63:                                     ; preds = %59, %53
  %64 = load i8**, i8*** %5, align 8, !dbg !2782
  %65 = load i8*, i8** %64, align 8, !dbg !2783
  store i8* %65, i8** %7, align 8, !dbg !2784
  %66 = load i8*, i8** %7, align 8, !dbg !2785
  %67 = load i8, i8* %66, align 1, !dbg !2787
  %68 = sext i8 %67 to i32, !dbg !2787
  %69 = icmp eq i32 %68, 45, !dbg !2788
  br i1 %69, label %70, label %73, !dbg !2789

; <label>:70:                                     ; preds = %63
  store i32 1, i32* %11, align 4, !dbg !2790
  %71 = load i8*, i8** %7, align 8, !dbg !2792
  %72 = getelementptr inbounds i8, i8* %71, i32 1, !dbg !2792
  store i8* %72, i8** %7, align 8, !dbg !2792
  br label %73, !dbg !2793

; <label>:73:                                     ; preds = %70, %63
  store i8* null, i8** %10, align 8, !dbg !2794
  store i8* null, i8** %9, align 8, !dbg !2795
  %74 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2796
  %75 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %74, i32 0, i32 69, !dbg !2798
  %76 = load %struct._GHashTable*, %struct._GHashTable** %75, align 8, !dbg !2798
  %77 = load i8*, i8** %7, align 8, !dbg !2799
  %78 = call i32 @g_hash_table_lookup_extended(%struct._GHashTable* %76, i8* %77, i8** %9, i8** %10), !dbg !2800
  %79 = icmp ne i32 %78, 0, !dbg !2800
  br i1 %79, label %84, label %80, !dbg !2801

; <label>:80:                                     ; preds = %73
  %81 = load i32, i32* %11, align 4, !dbg !2802
  %82 = icmp ne i32 %81, 0, !dbg !2802
  br i1 %82, label %83, label %84, !dbg !2804

; <label>:83:                                     ; preds = %80
  br label %110, !dbg !2806

; <label>:84:                                     ; preds = %80, %73
  %85 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2807
  %86 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %85, i32 0, i32 69, !dbg !2808
  %87 = load %struct._GHashTable*, %struct._GHashTable** %86, align 8, !dbg !2808
  %88 = load i8*, i8** %7, align 8, !dbg !2809
  %89 = call i32 @g_hash_table_remove(%struct._GHashTable* %87, i8* %88), !dbg !2810
  %90 = load i32, i32* %11, align 4, !dbg !2811
  %91 = icmp ne i32 %90, 0, !dbg !2811
  br i1 %91, label %107, label %92, !dbg !2813

; <label>:92:                                     ; preds = %84
  %93 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2814
  %94 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %93, i32 0, i32 69, !dbg !2816
  %95 = load %struct._GHashTable*, %struct._GHashTable** %94, align 8, !dbg !2816
  %96 = load i8*, i8** %7, align 8, !dbg !2817
  %97 = call noalias i8* @g_strdup(i8* %96), !dbg !2818
  %98 = load i8*, i8** %6, align 8, !dbg !2819
  %99 = icmp ne i8* %98, null, !dbg !2820
  br i1 %99, label %100, label %102, !dbg !2819

; <label>:100:                                    ; preds = %92
  %101 = load i8*, i8** %6, align 8, !dbg !2821
  br label %103, !dbg !2823

; <label>:102:                                    ; preds = %92
  br label %103, !dbg !2824

; <label>:103:                                    ; preds = %102, %100
  %104 = phi i8* [ %101, %100 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), %102 ], !dbg !2826
  %105 = call noalias i8* @g_strdup(i8* %104), !dbg !2828
  %106 = call i32 @g_hash_table_insert(%struct._GHashTable* %95, i8* %97, i8* %105), !dbg !2829
  br label %107, !dbg !2830

; <label>:107:                                    ; preds = %103, %84
  %108 = load i8*, i8** %9, align 8, !dbg !2831
  call void @g_free(i8* %108), !dbg !2832
  %109 = load i8*, i8** %10, align 8, !dbg !2833
  call void @g_free(i8* %109), !dbg !2834
  br label %110, !dbg !2835

; <label>:110:                                    ; preds = %107, %83, %45
  %111 = load i8**, i8*** %5, align 8, !dbg !2836
  %112 = getelementptr inbounds i8*, i8** %111, i32 1, !dbg !2836
  store i8** %112, i8*** %5, align 8, !dbg !2836
  br label %35, !dbg !2838, !llvm.loop !2839

; <label>:113:                                    ; preds = %52, %35
  %114 = load i8**, i8*** %8, align 8, !dbg !2841
  call void @g_strfreev(i8** %114), !dbg !2842
  %115 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2843
  call void @irc_server_init_isupport(%struct._IRC_SERVER_REC* %115), !dbg !2844
  br label %116, !dbg !2845

; <label>:116:                                    ; preds = %113, %28, %16
  ret void, !dbg !2846
}

; Function Attrs: nounwind uwtable
define internal void @event_motd(%struct._IRC_SERVER_REC*, i8*, i8*) #0 !dbg !2848 {
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !2849, metadata !739), !dbg !2850
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2851, metadata !739), !dbg !2852
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2853, metadata !739), !dbg !2854
  %7 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2855
  %8 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %7, i32 0, i32 8, !dbg !2857
  %9 = load i8, i8* %8, align 8, !dbg !2857
  %10 = and i8 %9, 1, !dbg !2857
  %11 = zext i8 %10 to i32, !dbg !2857
  %12 = icmp ne i32 %11, 0, !dbg !2855
  br i1 %12, label %13, label %14, !dbg !2858

; <label>:13:                                     ; preds = %3
  br label %23, !dbg !2859

; <label>:14:                                     ; preds = %3
  %15 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2860
  %16 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %15, i32 0, i32 45, !dbg !2861
  %17 = load i16, i16* %16, align 4, !dbg !2862
  %18 = and i16 %17, -65, !dbg !2862
  %19 = or i16 %18, 64, !dbg !2862
  store i16 %19, i16* %16, align 4, !dbg !2862
  %20 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2863
  %21 = load i8*, i8** %5, align 8, !dbg !2864
  %22 = load i8*, i8** %6, align 8, !dbg !2865
  call void @event_connected(%struct._IRC_SERVER_REC* %20, i8* %21, i8* %22), !dbg !2866
  br label %23, !dbg !2867

; <label>:23:                                     ; preds = %14, %13
  ret void, !dbg !2868
}

; Function Attrs: nounwind uwtable
define internal void @event_end_of_motd(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !2870 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !2871, metadata !739), !dbg !2872
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2873, metadata !739), !dbg !2874
  %5 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2875
  %6 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %5, i32 0, i32 45, !dbg !2876
  %7 = load i16, i16* %6, align 4, !dbg !2877
  %8 = and i16 %7, -257, !dbg !2877
  %9 = or i16 %8, 256, !dbg !2877
  store i16 %9, i16* %6, align 4, !dbg !2877
  ret void, !dbg !2878
}

; Function Attrs: nounwind uwtable
define internal void @event_channels_formed(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !2879 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !2880, metadata !739), !dbg !2881
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2882, metadata !739), !dbg !2883
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2884, metadata !739), !dbg !2885
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2886, metadata !739), !dbg !2887
  br label %7, !dbg !2888, !llvm.loop !2889

; <label>:7:                                      ; preds = %2
  %8 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2890
  %9 = icmp ne %struct._IRC_SERVER_REC* %8, null, !dbg !2894
  br i1 %9, label %10, label %11, !dbg !2890

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !2895

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.event_channels_formed, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0)), !dbg !2898
  br label %21, !dbg !2901

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !2902

; <label>:13:                                     ; preds = %12
  %14 = load i8*, i8** %4, align 8, !dbg !2904
  %15 = call i8* (i8*, i32, ...) @event_get_params(i8* %14, i32 2, i8* null, i8** %6), !dbg !2905
  store i8* %15, i8** %5, align 8, !dbg !2906
  %16 = load i8*, i8** %6, align 8, !dbg !2907
  %17 = call i32 @atoi(i8* %16) #6, !dbg !2908
  %18 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2909
  %19 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %18, i32 0, i32 44, !dbg !2910
  store i32 %17, i32* %19, align 8, !dbg !2911
  %20 = load i8*, i8** %5, align 8, !dbg !2912
  call void @g_free(i8* %20), !dbg !2913
  br label %21, !dbg !2914

; <label>:21:                                     ; preds = %13, %11
  ret void, !dbg !2915
}

; Function Attrs: nounwind uwtable
define internal void @event_hosthidden(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !2917 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !2918, metadata !739), !dbg !2919
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2920, metadata !739), !dbg !2921
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2922, metadata !739), !dbg !2923
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2924, metadata !739), !dbg !2925
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2926, metadata !739), !dbg !2927
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2928, metadata !739), !dbg !2929
  br label %9, !dbg !2930, !llvm.loop !2931

; <label>:9:                                      ; preds = %2
  %10 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2932
  %11 = icmp ne %struct._IRC_SERVER_REC* %10, null, !dbg !2936
  br i1 %11, label %12, label %13, !dbg !2932

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !2937

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.event_hosthidden, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0)), !dbg !2940
  br label %123, !dbg !2943

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !2944

; <label>:15:                                     ; preds = %14
  %16 = load i8*, i8** %4, align 8, !dbg !2946
  %17 = call i8* (i8*, i32, ...) @event_get_params(i8* %16, i32 2, i8* null, i8** %6), !dbg !2947
  store i8* %17, i8** %5, align 8, !dbg !2948
  %18 = load i8*, i8** %6, align 8, !dbg !2949
  %19 = call i8* @strchr(i8* %18, i32 42) #6, !dbg !2951
  %20 = icmp ne i8* %19, null, !dbg !2951
  br i1 %20, label %121, label %21, !dbg !2952

; <label>:21:                                     ; preds = %15
  %22 = load i8*, i8** %6, align 8, !dbg !2953
  %23 = call i8* @strchr(i8* %22, i32 63) #6, !dbg !2955
  %24 = icmp ne i8* %23, null, !dbg !2955
  br i1 %24, label %121, label %25, !dbg !2956

; <label>:25:                                     ; preds = %21
  %26 = load i8*, i8** %6, align 8, !dbg !2957
  %27 = call i8* @strchr(i8* %26, i32 33) #6, !dbg !2958
  %28 = icmp ne i8* %27, null, !dbg !2958
  br i1 %28, label %121, label %29, !dbg !2959

; <label>:29:                                     ; preds = %25
  %30 = load i8*, i8** %6, align 8, !dbg !2960
  %31 = call i8* @strchr(i8* %30, i32 35) #6, !dbg !2961
  %32 = icmp ne i8* %31, null, !dbg !2961
  br i1 %32, label %121, label %33, !dbg !2962

; <label>:33:                                     ; preds = %29
  %34 = load i8*, i8** %6, align 8, !dbg !2963
  %35 = call i8* @strchr(i8* %34, i32 38) #6, !dbg !2964
  %36 = icmp ne i8* %35, null, !dbg !2964
  br i1 %36, label %121, label %37, !dbg !2965

; <label>:37:                                     ; preds = %33
  %38 = load i8*, i8** %6, align 8, !dbg !2966
  %39 = call i8* @strchr(i8* %38, i32 32) #6, !dbg !2967
  %40 = icmp ne i8* %39, null, !dbg !2967
  br i1 %40, label %121, label %41, !dbg !2968

; <label>:41:                                     ; preds = %37
  %42 = load i8*, i8** %6, align 8, !dbg !2969
  %43 = load i8, i8* %42, align 1, !dbg !2970
  %44 = sext i8 %43 to i32, !dbg !2970
  %45 = icmp ne i32 %44, 0, !dbg !2971
  br i1 %45, label %46, label %121, !dbg !2972

; <label>:46:                                     ; preds = %41
  %47 = load i8*, i8** %6, align 8, !dbg !2973
  %48 = load i8, i8* %47, align 1, !dbg !2974
  %49 = sext i8 %48 to i32, !dbg !2974
  %50 = icmp ne i32 %49, 64, !dbg !2975
  br i1 %50, label %51, label %121, !dbg !2976

; <label>:51:                                     ; preds = %46
  %52 = load i8*, i8** %6, align 8, !dbg !2977
  %53 = load i8, i8* %52, align 1, !dbg !2978
  %54 = sext i8 %53 to i32, !dbg !2978
  %55 = icmp ne i32 %54, 58, !dbg !2979
  br i1 %55, label %56, label %121, !dbg !2980

; <label>:56:                                     ; preds = %51
  %57 = load i8*, i8** %6, align 8, !dbg !2981
  %58 = load i8, i8* %57, align 1, !dbg !2982
  %59 = sext i8 %58 to i32, !dbg !2982
  %60 = icmp ne i32 %59, 45, !dbg !2983
  br i1 %60, label %61, label %121, !dbg !2984

; <label>:61:                                     ; preds = %56
  %62 = load i8*, i8** %6, align 8, !dbg !2985
  %63 = call i64 @strlen(i8* %62) #6, !dbg !2986
  %64 = sub i64 %63, 1, !dbg !2987
  %65 = load i8*, i8** %6, align 8, !dbg !2988
  %66 = getelementptr inbounds i8, i8* %65, i64 %64, !dbg !2988
  %67 = load i8, i8* %66, align 1, !dbg !2988
  %68 = sext i8 %67 to i32, !dbg !2988
  %69 = icmp ne i32 %68, 45, !dbg !2989
  br i1 %69, label %70, label %121, !dbg !2990

; <label>:70:                                     ; preds = %61
  %71 = load i8*, i8** %6, align 8, !dbg !2992
  %72 = call i8* @strchr(i8* %71, i32 64) #6, !dbg !2995
  %73 = icmp ne i8* %72, null, !dbg !2995
  br i1 %73, label %74, label %83, !dbg !2996

; <label>:74:                                     ; preds = %70
  %75 = load i8*, i8** %6, align 8, !dbg !2997
  %76 = call noalias i8* @g_strdup(i8* %75), !dbg !2999
  store i8* %76, i8** %8, align 8, !dbg !3000
  %77 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !3001
  %78 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %77, i32 0, i32 43, !dbg !3002
  %79 = load i8*, i8** %78, align 8, !dbg !3002
  call void @g_free(i8* %79), !dbg !3003
  %80 = load i8*, i8** %8, align 8, !dbg !3004
  %81 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !3005
  %82 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %81, i32 0, i32 43, !dbg !3006
  store i8* %80, i8** %82, align 8, !dbg !3007
  br label %120, !dbg !3008

; <label>:83:                                     ; preds = %70
  %84 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !3009
  %85 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %84, i32 0, i32 43, !dbg !3012
  %86 = load i8*, i8** %85, align 8, !dbg !3012
  %87 = icmp ne i8* %86, null, !dbg !3013
  br i1 %87, label %88, label %119, !dbg !3009

; <label>:88:                                     ; preds = %83
  %89 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !3014
  %90 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %89, i32 0, i32 43, !dbg !3016
  %91 = load i8*, i8** %90, align 8, !dbg !3016
  %92 = call i8* @strchr(i8* %91, i32 64) #6, !dbg !3017
  store i8* %92, i8** %7, align 8, !dbg !3018
  %93 = load i8*, i8** %7, align 8, !dbg !3019
  %94 = icmp eq i8* %93, null, !dbg !3021
  br i1 %94, label %95, label %99, !dbg !3022

; <label>:95:                                     ; preds = %88
  %96 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !3023
  %97 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %96, i32 0, i32 43, !dbg !3024
  %98 = load i8*, i8** %97, align 8, !dbg !3024
  store i8* %98, i8** %7, align 8, !dbg !3025
  br label %99, !dbg !3026

; <label>:99:                                     ; preds = %95, %88
  %100 = load i8*, i8** %7, align 8, !dbg !3027
  %101 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !3028
  %102 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %101, i32 0, i32 43, !dbg !3029
  %103 = load i8*, i8** %102, align 8, !dbg !3029
  %104 = ptrtoint i8* %100 to i64, !dbg !3030
  %105 = ptrtoint i8* %103 to i64, !dbg !3030
  %106 = sub i64 %104, %105, !dbg !3030
  %107 = trunc i64 %106 to i32, !dbg !3031
  %108 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !3032
  %109 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %108, i32 0, i32 43, !dbg !3033
  %110 = load i8*, i8** %109, align 8, !dbg !3033
  %111 = load i8*, i8** %6, align 8, !dbg !3034
  %112 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i32 0, i32 0), i32 %107, i8* %110, i8* %111), !dbg !3035
  store i8* %112, i8** %8, align 8, !dbg !3036
  %113 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !3037
  %114 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %113, i32 0, i32 43, !dbg !3038
  %115 = load i8*, i8** %114, align 8, !dbg !3038
  call void @g_free(i8* %115), !dbg !3039
  %116 = load i8*, i8** %8, align 8, !dbg !3040
  %117 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !3041
  %118 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %117, i32 0, i32 43, !dbg !3042
  store i8* %116, i8** %118, align 8, !dbg !3043
  br label %119, !dbg !3044

; <label>:119:                                    ; preds = %99, %83
  br label %120

; <label>:120:                                    ; preds = %119, %74
  br label %121, !dbg !3045

; <label>:121:                                    ; preds = %120, %61, %56, %51, %46, %41, %37, %33, %29, %25, %21, %15
  %122 = load i8*, i8** %5, align 8, !dbg !3046
  call void @g_free(i8* %122), !dbg !3047
  br label %123, !dbg !3048

; <label>:123:                                    ; preds = %121, %13
  ret void, !dbg !3049
}

; Function Attrs: nounwind uwtable
define internal void @event_server_banned(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !3051 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !3052, metadata !739), !dbg !3053
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3054, metadata !739), !dbg !3055
  br label %5, !dbg !3056, !llvm.loop !3057

; <label>:5:                                      ; preds = %2
  %6 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !3058
  %7 = icmp ne %struct._IRC_SERVER_REC* %6, null, !dbg !3062
  br i1 %7, label %8, label %9, !dbg !3058

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !3063

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.event_server_banned, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0)), !dbg !3066
  br label %17, !dbg !3069

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !3070

; <label>:11:                                     ; preds = %10
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !3072
  %13 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %12, i32 0, i32 19, !dbg !3073
  %14 = load i8, i8* %13, align 8, !dbg !3074
  %15 = and i8 %14, -5, !dbg !3074
  %16 = or i8 %15, 4, !dbg !3074
  store i8 %16, i8* %13, align 8, !dbg !3074
  br label %17, !dbg !3075

; <label>:17:                                     ; preds = %11, %9
  ret void, !dbg !3076
}

; Function Attrs: nounwind uwtable
define internal void @event_error(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !3078 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !3079, metadata !739), !dbg !3080
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3081, metadata !739), !dbg !3082
  br label %5, !dbg !3083, !llvm.loop !3084

; <label>:5:                                      ; preds = %2
  %6 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !3085
  %7 = icmp ne %struct._IRC_SERVER_REC* %6, null, !dbg !3089
  br i1 %7, label %8, label %9, !dbg !3085

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !3090

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.event_error, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0)), !dbg !3093
  br label %40, !dbg !3096

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !3097

; <label>:11:                                     ; preds = %10
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !3099
  %13 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %12, i32 0, i32 8, !dbg !3101
  %14 = load i8, i8* %13, align 8, !dbg !3101
  %15 = and i8 %14, 1, !dbg !3101
  %16 = zext i8 %15 to i32, !dbg !3101
  %17 = icmp ne i32 %16, 0, !dbg !3099
  br i1 %17, label %40, label %18, !dbg !3102

; <label>:18:                                     ; preds = %11
  %19 = load i8*, i8** %4, align 8, !dbg !3103
  %20 = call i8* @stristr(i8* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.76, i32 0, i32 0)), !dbg !3105
  %21 = icmp ne i8* %20, null, !dbg !3106
  br i1 %21, label %34, label %22, !dbg !3107

; <label>:22:                                     ; preds = %18
  %23 = load i8*, i8** %4, align 8, !dbg !3108
  %24 = call i8* @stristr(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i32 0)), !dbg !3109
  %25 = icmp ne i8* %24, null, !dbg !3110
  br i1 %25, label %34, label %26, !dbg !3111

; <label>:26:                                     ; preds = %22
  %27 = load i8*, i8** %4, align 8, !dbg !3112
  %28 = call i8* @stristr(i8* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0)), !dbg !3113
  %29 = icmp ne i8* %28, null, !dbg !3114
  br i1 %29, label %34, label %30, !dbg !3115

; <label>:30:                                     ; preds = %26
  %31 = load i8*, i8** %4, align 8, !dbg !3116
  %32 = call i8* @stristr(i8* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.79, i32 0, i32 0)), !dbg !3117
  %33 = icmp ne i8* %32, null, !dbg !3118
  br i1 %33, label %34, label %40, !dbg !3119

; <label>:34:                                     ; preds = %30, %26, %22, %18
  %35 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !3121
  %36 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %35, i32 0, i32 19, !dbg !3122
  %37 = load i8, i8* %36, align 8, !dbg !3123
  %38 = and i8 %37, -5, !dbg !3123
  %39 = or i8 %38, 4, !dbg !3123
  store i8 %39, i8* %36, align 8, !dbg !3123
  br label %40, !dbg !3121

; <label>:40:                                     ; preds = %9, %34, %30, %11
  ret void, !dbg !3124
}

; Function Attrs: nounwind uwtable
define internal void @event_ping(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !3125 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !3126, metadata !739), !dbg !3127
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3128, metadata !739), !dbg !3129
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3130, metadata !739), !dbg !3131
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3132, metadata !739), !dbg !3133
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3134, metadata !739), !dbg !3135
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3136, metadata !739), !dbg !3137
  %9 = load i8*, i8** %4, align 8, !dbg !3138
  %10 = call i8* (i8*, i32, ...) @event_get_params(i8* %9, i32 2, i8** %6, i8** %7), !dbg !3139
  store i8* %10, i8** %5, align 8, !dbg !3140
  %11 = load i8*, i8** %7, align 8, !dbg !3141
  %12 = load i8, i8* %11, align 1, !dbg !3142
  %13 = sext i8 %12 to i32, !dbg !3142
  %14 = icmp eq i32 %13, 0, !dbg !3143
  br i1 %14, label %15, label %18, !dbg !3142

; <label>:15:                                     ; preds = %2
  %16 = load i8*, i8** %6, align 8, !dbg !3144
  %17 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.80, i32 0, i32 0), i8* %16, i8* null), !dbg !3146
  br label %22, !dbg !3147

; <label>:18:                                     ; preds = %2
  %19 = load i8*, i8** %7, align 8, !dbg !3148
  %20 = load i8*, i8** %6, align 8, !dbg !3149
  %21 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.81, i32 0, i32 0), i8* %19, i8* %20), !dbg !3150
  br label %22, !dbg !3151

; <label>:22:                                     ; preds = %18, %15
  %23 = phi i8* [ %17, %15 ], [ %21, %18 ], !dbg !3153
  store i8* %23, i8** %8, align 8, !dbg !3155
  %24 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !3156
  %25 = load i8*, i8** %8, align 8, !dbg !3157
  call void @irc_send_cmd_now(%struct._IRC_SERVER_REC* %24, i8* %25), !dbg !3158
  %26 = load i8*, i8** %8, align 8, !dbg !3159
  call void @g_free(i8* %26), !dbg !3160
  %27 = load i8*, i8** %5, align 8, !dbg !3161
  call void @g_free(i8* %27), !dbg !3162
  ret void, !dbg !3163
}

; Function Attrs: nounwind uwtable
define internal void @event_empty() #0 !dbg !3164 {
  ret void, !dbg !3165
}

declare void @irc_servers_setup_init() #2

declare void @irc_servers_reconnect_init() #2

declare void @servers_redirect_init() #2

declare void @servers_idle_init() #2

; Function Attrs: nounwind uwtable
define void @irc_servers_deinit() #0 !dbg !3166 {
  %1 = load i32, i32* @cmd_tag, align 4, !dbg !3167
  %2 = icmp ne i32 %1, -1, !dbg !3169
  br i1 %2, label %3, label %6, !dbg !3170

; <label>:3:                                      ; preds = %0
  %4 = load i32, i32* @cmd_tag, align 4, !dbg !3171
  %5 = call i32 @g_source_remove(i32 %4), !dbg !3172
  br label %6, !dbg !3172

; <label>:6:                                      ; preds = %3, %0
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @sig_connected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3173
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @sig_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3174
  call void @signal_remove_full(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @sig_server_quit to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3175
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_connected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3176
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_server_info to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3177
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_isupport to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3178
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_motd to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3179
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_end_of_motd to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3180
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_end_of_motd to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3181
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_channels_formed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3182
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_hosthidden to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3183
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_server_banned to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3184
  call void @signal_remove_full(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_error to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3185
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_ping to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3186
  call void @signal_remove_full(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.53, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @event_empty to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3187
  call void @irc_servers_setup_deinit(), !dbg !3188
  call void @irc_servers_reconnect_deinit(), !dbg !3189
  call void @servers_redirect_deinit(), !dbg !3190
  call void @servers_idle_deinit(), !dbg !3191
  ret void, !dbg !3192
}

declare i32 @g_source_remove(i32) #2

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare void @irc_servers_setup_deinit() #2

declare void @irc_servers_reconnect_deinit() #2

declare void @servers_redirect_deinit() #2

declare void @servers_idle_deinit() #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

declare i8* @settings_get_str(i8*) #2

declare i32 @settings_get_bool(i8*) #2

declare void @g_warn_message(i8*, i8*, i32, i8*, i8*) #2

declare noalias i8* @g_malloc_n(i64, i64) #2

declare i8** @recode_split(%struct._SERVER_REC*, i8*, i8*, i32, i32) #2

declare noalias i8* @g_strconcat(i8*, ...) #2

declare i8* @g_realloc_n(i8*, i64, i64) #2

; Function Attrs: nounwind uwtable
define internal i32 @server_cmd_timeout(%struct._IRC_SERVER_REC*, %struct._GTimeVal*) #0 !dbg !3193 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca %struct._GTimeVal*, align 8
  %6 = alloca %struct._REDIRECT_REC*, align 8
  %7 = alloca %struct._GSList*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !3197, metadata !739), !dbg !3198
  store %struct._GTimeVal* %1, %struct._GTimeVal** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._GTimeVal** %5, metadata !3199, metadata !739), !dbg !3200
  call void @llvm.dbg.declare(metadata %struct._REDIRECT_REC** %6, metadata !3201, metadata !739), !dbg !3202
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !3203, metadata !739), !dbg !3204
  call void @llvm.dbg.declare(metadata i64* %8, metadata !3205, metadata !739), !dbg !3206
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3207, metadata !739), !dbg !3208
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3209, metadata !739), !dbg !3210
  %11 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3211
  %12 = bitcast %struct._IRC_SERVER_REC* %11 to i8*, !dbg !3211
  %13 = call i8* @module_check_cast(i8* %12, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0)), !dbg !3213
  %14 = bitcast i8* %13 to %struct._SERVER_REC*, !dbg !3214
  %15 = bitcast %struct._SERVER_REC* %14 to i8*, !dbg !3215
  %16 = call i8* @chat_protocol_check_cast(i8* %15, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !3216
  %17 = bitcast i8* %16 to %struct._IRC_SERVER_REC*, !dbg !3218
  %18 = icmp ne %struct._IRC_SERVER_REC* %17, null, !dbg !3218
  br i1 %18, label %19, label %20, !dbg !3219

; <label>:19:                                     ; preds = %2
  br i1 false, label %21, label %22, !dbg !3220

; <label>:20:                                     ; preds = %2
  br i1 false, label %22, label %21, !dbg !3222

; <label>:21:                                     ; preds = %20, %19
  store i32 0, i32* %3, align 4, !dbg !3224
  br label %142, !dbg !3224

; <label>:22:                                     ; preds = %20, %19
  %23 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3225
  %24 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %23, i32 0, i32 55, !dbg !3227
  %25 = load i32, i32* %24, align 4, !dbg !3227
  %26 = icmp eq i32 %25, 0, !dbg !3228
  br i1 %26, label %27, label %33, !dbg !3229

; <label>:27:                                     ; preds = %22
  %28 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3230
  %29 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %28, i32 0, i32 56, !dbg !3232
  %30 = load %struct._GSList*, %struct._GSList** %29, align 8, !dbg !3232
  %31 = icmp eq %struct._GSList* %30, null, !dbg !3233
  br i1 %31, label %32, label %33, !dbg !3234

; <label>:32:                                     ; preds = %27
  store i32 0, i32* %3, align 4, !dbg !3235
  br label %142, !dbg !3235

; <label>:33:                                     ; preds = %27, %22
  %34 = load %struct._GTimeVal*, %struct._GTimeVal** %5, align 8, !dbg !3236
  %35 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3238
  %36 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %35, i32 0, i32 57, !dbg !3239
  %37 = call i32 @g_timeval_cmp(%struct._GTimeVal* %34, %struct._GTimeVal* %36), !dbg !3240
  %38 = icmp eq i32 %37, -1, !dbg !3241
  br i1 %38, label %39, label %40, !dbg !3242

; <label>:39:                                     ; preds = %33
  store i32 1, i32* %3, align 4, !dbg !3243
  br label %142, !dbg !3243

; <label>:40:                                     ; preds = %33
  %41 = load %struct._GTimeVal*, %struct._GTimeVal** %5, align 8, !dbg !3244
  %42 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3245
  %43 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %42, i32 0, i32 58, !dbg !3246
  %44 = call i64 @get_timeval_diff(%struct._GTimeVal* %41, %struct._GTimeVal* %43), !dbg !3247
  store i64 %44, i64* %8, align 8, !dbg !3248
  %45 = load i64, i64* %8, align 8, !dbg !3249
  %46 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3251
  %47 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %46, i32 0, i32 60, !dbg !3252
  %48 = load i32, i32* %47, align 4, !dbg !3252
  %49 = sext i32 %48 to i64, !dbg !3251
  %50 = icmp slt i64 %45, %49, !dbg !3253
  br i1 %50, label %51, label %52, !dbg !3254

; <label>:51:                                     ; preds = %40
  store i32 1, i32* %3, align 4, !dbg !3255
  br label %142, !dbg !3255

; <label>:52:                                     ; preds = %40
  %53 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3256
  %54 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %53, i32 0, i32 55, !dbg !3257
  %55 = load i32, i32* %54, align 4, !dbg !3258
  %56 = add nsw i32 %55, -1, !dbg !3258
  store i32 %56, i32* %54, align 4, !dbg !3258
  %57 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3259
  %58 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %57, i32 0, i32 56, !dbg !3261
  %59 = load %struct._GSList*, %struct._GSList** %58, align 8, !dbg !3261
  %60 = icmp eq %struct._GSList* %59, null, !dbg !3262
  br i1 %60, label %61, label %62, !dbg !3263

; <label>:61:                                     ; preds = %52
  store i32 1, i32* %3, align 4, !dbg !3264
  br label %142, !dbg !3264

; <label>:62:                                     ; preds = %52
  %63 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3266
  %64 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %63, i32 0, i32 56, !dbg !3267
  %65 = load %struct._GSList*, %struct._GSList** %64, align 8, !dbg !3267
  %66 = getelementptr inbounds %struct._GSList, %struct._GSList* %65, i32 0, i32 0, !dbg !3268
  %67 = load i8*, i8** %66, align 8, !dbg !3268
  store i8* %67, i8** %9, align 8, !dbg !3269
  %68 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3270
  %69 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %68, i32 0, i32 56, !dbg !3271
  %70 = load %struct._GSList*, %struct._GSList** %69, align 8, !dbg !3271
  %71 = getelementptr inbounds %struct._GSList, %struct._GSList* %70, i32 0, i32 1, !dbg !3272
  %72 = load %struct._GSList*, %struct._GSList** %71, align 8, !dbg !3272
  %73 = getelementptr inbounds %struct._GSList, %struct._GSList* %72, i32 0, i32 0, !dbg !3273
  %74 = load i8*, i8** %73, align 8, !dbg !3273
  %75 = bitcast i8* %74 to %struct._REDIRECT_REC*, !dbg !3270
  store %struct._REDIRECT_REC* %75, %struct._REDIRECT_REC** %6, align 8, !dbg !3274
  %76 = load i8*, i8** %9, align 8, !dbg !3275
  %77 = call i64 @strlen(i8* %76) #6, !dbg !3276
  %78 = trunc i64 %77 to i32, !dbg !3276
  store i32 %78, i32* %10, align 4, !dbg !3277
  %79 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3278
  %80 = load i8*, i8** %9, align 8, !dbg !3279
  %81 = load i32, i32* %10, align 4, !dbg !3280
  call void @irc_server_send_data(%struct._IRC_SERVER_REC* %79, i8* %80, i32 %81), !dbg !3281
  %82 = load i32, i32* %10, align 4, !dbg !3282
  %83 = icmp sgt i32 %82, 2, !dbg !3284
  br i1 %83, label %84, label %99, !dbg !3285

; <label>:84:                                     ; preds = %62
  %85 = load i32, i32* %10, align 4, !dbg !3286
  %86 = sub nsw i32 %85, 2, !dbg !3288
  %87 = sext i32 %86 to i64, !dbg !3289
  %88 = load i8*, i8** %9, align 8, !dbg !3289
  %89 = getelementptr inbounds i8, i8* %88, i64 %87, !dbg !3289
  %90 = load i8, i8* %89, align 1, !dbg !3289
  %91 = sext i8 %90 to i32, !dbg !3289
  %92 = icmp eq i32 %91, 13, !dbg !3290
  br i1 %92, label %93, label %99, !dbg !3291

; <label>:93:                                     ; preds = %84
  %94 = load i32, i32* %10, align 4, !dbg !3292
  %95 = sub nsw i32 %94, 2, !dbg !3293
  %96 = sext i32 %95 to i64, !dbg !3294
  %97 = load i8*, i8** %9, align 8, !dbg !3294
  %98 = getelementptr inbounds i8, i8* %97, i64 %96, !dbg !3294
  store i8 0, i8* %98, align 1, !dbg !3295
  br label %115, !dbg !3294

; <label>:99:                                     ; preds = %84, %62
  %100 = load i32, i32* %10, align 4, !dbg !3296
  %101 = sub nsw i32 %100, 1, !dbg !3298
  %102 = sext i32 %101 to i64, !dbg !3299
  %103 = load i8*, i8** %9, align 8, !dbg !3299
  %104 = getelementptr inbounds i8, i8* %103, i64 %102, !dbg !3299
  %105 = load i8, i8* %104, align 1, !dbg !3299
  %106 = sext i8 %105 to i32, !dbg !3299
  %107 = icmp eq i32 %106, 10, !dbg !3300
  br i1 %107, label %108, label %114, !dbg !3301

; <label>:108:                                    ; preds = %99
  %109 = load i32, i32* %10, align 4, !dbg !3302
  %110 = sub nsw i32 %109, 1, !dbg !3303
  %111 = sext i32 %110 to i64, !dbg !3304
  %112 = load i8*, i8** %9, align 8, !dbg !3304
  %113 = getelementptr inbounds i8, i8* %112, i64 %111, !dbg !3304
  store i8 0, i8* %113, align 1, !dbg !3305
  br label %114, !dbg !3304

; <label>:114:                                    ; preds = %108, %99
  br label %115

; <label>:115:                                    ; preds = %114, %93
  %116 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3306
  %117 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %116, i32 0, i32 14, !dbg !3307
  %118 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %117, align 8, !dbg !3307
  %119 = load i8*, i8** %9, align 8, !dbg !3308
  call void @rawlog_output(%struct._RAWLOG_REC* %118, i8* %119), !dbg !3309
  %120 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3310
  %121 = load i8*, i8** %9, align 8, !dbg !3311
  %122 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %6, align 8, !dbg !3312
  call void @server_redirect_command(%struct._IRC_SERVER_REC* %120, i8* %121, %struct._REDIRECT_REC* %122), !dbg !3313
  %123 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3314
  %124 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %123, i32 0, i32 56, !dbg !3315
  %125 = load %struct._GSList*, %struct._GSList** %124, align 8, !dbg !3315
  %126 = load i8*, i8** %9, align 8, !dbg !3316
  %127 = call %struct._GSList* @g_slist_remove(%struct._GSList* %125, i8* %126), !dbg !3317
  %128 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3318
  %129 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %128, i32 0, i32 56, !dbg !3319
  store %struct._GSList* %127, %struct._GSList** %129, align 8, !dbg !3320
  %130 = load i8*, i8** %9, align 8, !dbg !3321
  call void @g_free(i8* %130), !dbg !3322
  %131 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3323
  %132 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %131, i32 0, i32 56, !dbg !3324
  %133 = load %struct._GSList*, %struct._GSList** %132, align 8, !dbg !3324
  store %struct._GSList* %133, %struct._GSList** %7, align 8, !dbg !3325
  %134 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3326
  %135 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %134, i32 0, i32 56, !dbg !3327
  %136 = load %struct._GSList*, %struct._GSList** %135, align 8, !dbg !3327
  %137 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !3328
  %138 = call %struct._GSList* @g_slist_remove_link(%struct._GSList* %136, %struct._GSList* %137), !dbg !3329
  %139 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3330
  %140 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %139, i32 0, i32 56, !dbg !3331
  store %struct._GSList* %138, %struct._GSList** %140, align 8, !dbg !3332
  %141 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !3333
  call void @g_slist_free_1(%struct._GSList* %141), !dbg !3334
  store i32 1, i32* %3, align 4, !dbg !3335
  br label %142, !dbg !3335

; <label>:142:                                    ; preds = %115, %61, %51, %39, %32, %21
  %143 = load i32, i32* %3, align 4, !dbg !3336
  ret i32 %143, !dbg !3336
}

declare i32 @g_timeval_cmp(%struct._GTimeVal*, %struct._GTimeVal*) #2

declare i64 @get_timeval_diff(%struct._GTimeVal*, %struct._GTimeVal*) #2

declare void @rawlog_output(%struct._RAWLOG_REC*, i8*) #2

declare void @server_redirect_command(%struct._IRC_SERVER_REC*, i8*, %struct._REDIRECT_REC*) #2

declare void @modes_type_a(%struct._IRC_CHANNEL_REC*, i8*, i8 signext, i8 signext, i8*, %struct._GString*) #2

declare void @modes_type_b(%struct._IRC_CHANNEL_REC*, i8*, i8 signext, i8 signext, i8*, %struct._GString*) #2

declare void @modes_type_c(%struct._IRC_CHANNEL_REC*, i8*, i8 signext, i8 signext, i8*, %struct._GString*) #2

declare void @modes_type_d(%struct._IRC_CHANNEL_REC*, i8*, i8 signext, i8 signext, i8*, %struct._GString*) #2

declare noalias i8** @g_strsplit(i8*, i8*, i32) #2

declare void @g_strfreev(i8**) #2

declare void @modes_type_prefix(%struct._IRC_CHANNEL_REC*, i8*, i8 signext, i8 signext, i8*, %struct._GString*) #2

; Function Attrs: nounwind uwtable
define internal i32 @isnickflag_func(%struct._SERVER_REC*, i8 signext) #0 !dbg !3337 {
  %3 = alloca %struct._SERVER_REC*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %3, metadata !3338, metadata !739), !dbg !3339
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !3340, metadata !739), !dbg !3341
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !3342, metadata !739), !dbg !3343
  %6 = load %struct._SERVER_REC*, %struct._SERVER_REC** %3, align 8, !dbg !3344
  %7 = bitcast %struct._SERVER_REC* %6 to %struct._IRC_SERVER_REC*, !dbg !3345
  store %struct._IRC_SERVER_REC* %7, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3343
  %8 = load i8, i8* %4, align 1, !dbg !3346
  %9 = zext i8 %8 to i32, !dbg !3347
  %10 = sext i32 %9 to i64, !dbg !3348
  %11 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3348
  %12 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %11, i32 0, i32 71, !dbg !3349
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 %10, !dbg !3348
  %14 = load i8, i8* %13, align 1, !dbg !3348
  %15 = sext i8 %14 to i32, !dbg !3348
  %16 = icmp ne i32 %15, 0, !dbg !3350
  %17 = zext i1 %16 to i32, !dbg !3350
  ret i32 %17, !dbg !3351
}

; Function Attrs: nounwind uwtable
define internal i32 @ischannel_func(%struct._SERVER_REC*, i8*) #0 !dbg !3352 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._IRC_SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !3353, metadata !739), !dbg !3354
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3355, metadata !739), !dbg !3356
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %6, metadata !3357, metadata !739), !dbg !3358
  %9 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !3359
  %10 = bitcast %struct._SERVER_REC* %9 to %struct._IRC_SERVER_REC*, !dbg !3360
  store %struct._IRC_SERVER_REC* %10, %struct._IRC_SERVER_REC** %6, align 8, !dbg !3358
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3361, metadata !739), !dbg !3362
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3363, metadata !739), !dbg !3364
  br label %11, !dbg !3365, !llvm.loop !3366

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %5, align 8, !dbg !3367
  %13 = icmp ne i8* %12, null, !dbg !3371
  br i1 %13, label %14, label %15, !dbg !3367

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !3372

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.ischannel_func, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0)), !dbg !3375
  store i32 0, i32* %3, align 4, !dbg !3378
  br label %59, !dbg !3378

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !3379

; <label>:17:                                     ; preds = %16
  %18 = load i8*, i8** %5, align 8, !dbg !3381
  %19 = load i8, i8* %18, align 1, !dbg !3383
  %20 = sext i8 %19 to i32, !dbg !3383
  %21 = icmp eq i32 %20, 0, !dbg !3384
  br i1 %21, label %22, label %23, !dbg !3385

; <label>:22:                                     ; preds = %17
  store i32 0, i32* %3, align 4, !dbg !3386
  br label %59, !dbg !3386

; <label>:23:                                     ; preds = %17
  %24 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !3387
  %25 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %24, i32 0, i32 69, !dbg !3388
  %26 = load %struct._GHashTable*, %struct._GHashTable** %25, align 8, !dbg !3388
  %27 = call i8* @g_hash_table_lookup(%struct._GHashTable* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0)), !dbg !3389
  store i8* %27, i8** %7, align 8, !dbg !3390
  %28 = load i8*, i8** %7, align 8, !dbg !3391
  %29 = icmp eq i8* %28, null, !dbg !3393
  br i1 %29, label %30, label %31, !dbg !3394

; <label>:30:                                     ; preds = %23
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0), i8** %7, align 8, !dbg !3395
  br label %31, !dbg !3396

; <label>:31:                                     ; preds = %30, %23
  %32 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !3397
  %33 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %32, i32 0, i32 69, !dbg !3398
  %34 = load %struct._GHashTable*, %struct._GHashTable** %33, align 8, !dbg !3398
  %35 = call i8* @g_hash_table_lookup(%struct._GHashTable* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0)), !dbg !3399
  store i8* %35, i8** %8, align 8, !dbg !3400
  %36 = load i8*, i8** %8, align 8, !dbg !3401
  %37 = icmp eq i8* %36, null, !dbg !3403
  br i1 %37, label %38, label %39, !dbg !3404

; <label>:38:                                     ; preds = %31
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i32 0, i32 0), i8** %8, align 8, !dbg !3405
  br label %39, !dbg !3406

; <label>:39:                                     ; preds = %38, %31
  %40 = load i8*, i8** %5, align 8, !dbg !3407
  %41 = load i8*, i8** %8, align 8, !dbg !3408
  %42 = call i64 @strspn(i8* %40, i8* %41) #6, !dbg !3409
  %43 = load i8*, i8** %5, align 8, !dbg !3410
  %44 = getelementptr inbounds i8, i8* %43, i64 %42, !dbg !3410
  store i8* %44, i8** %5, align 8, !dbg !3410
  %45 = load i8*, i8** %5, align 8, !dbg !3411
  %46 = load i8, i8* %45, align 1, !dbg !3412
  %47 = sext i8 %46 to i32, !dbg !3412
  %48 = icmp ne i32 %47, 0, !dbg !3413
  br i1 %48, label %49, label %56, !dbg !3414

; <label>:49:                                     ; preds = %39
  %50 = load i8*, i8** %7, align 8, !dbg !3415
  %51 = load i8*, i8** %5, align 8, !dbg !3417
  %52 = load i8, i8* %51, align 1, !dbg !3418
  %53 = sext i8 %52 to i32, !dbg !3418
  %54 = call i8* @strchr(i8* %50, i32 %53) #6, !dbg !3419
  %55 = icmp ne i8* %54, null, !dbg !3420
  br label %56

; <label>:56:                                     ; preds = %49, %39
  %57 = phi i1 [ false, %39 ], [ %55, %49 ]
  %58 = zext i1 %57 to i32, !dbg !3421
  store i32 %58, i32* %3, align 4, !dbg !3423
  br label %59, !dbg !3423

; <label>:59:                                     ; preds = %56, %22, %15
  %60 = load i32, i32* %3, align 4, !dbg !3424
  ret i32 %60, !dbg !3424
}

; Function Attrs: nounwind uwtable
define internal i8** @split_message(%struct._SERVER_REC*, i8*, i8*) #0 !dbg !3425 {
  %4 = alloca i8**, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._IRC_SERVER_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !3426, metadata !739), !dbg !3427
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3428, metadata !739), !dbg !3429
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3430, metadata !739), !dbg !3431
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %8, metadata !3432, metadata !739), !dbg !3433
  %9 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !3434
  %10 = bitcast %struct._SERVER_REC* %9 to i8*, !dbg !3434
  %11 = call i8* @module_check_cast(i8* %10, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0)), !dbg !3435
  %12 = bitcast i8* %11 to %struct._SERVER_REC*, !dbg !3436
  %13 = bitcast %struct._SERVER_REC* %12 to i8*, !dbg !3437
  %14 = call i8* @chat_protocol_check_cast(i8* %13, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !3438
  %15 = bitcast i8* %14 to %struct._IRC_SERVER_REC*, !dbg !3440
  store %struct._IRC_SERVER_REC* %15, %struct._IRC_SERVER_REC** %8, align 8, !dbg !3433
  br label %16, !dbg !3441, !llvm.loop !3442

; <label>:16:                                     ; preds = %3
  %17 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %8, align 8, !dbg !3443
  %18 = icmp ne %struct._IRC_SERVER_REC* %17, null, !dbg !3447
  br i1 %18, label %19, label %20, !dbg !3443

; <label>:19:                                     ; preds = %16
  br label %21, !dbg !3448

; <label>:20:                                     ; preds = %16
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.split_message, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.61, i32 0, i32 0)), !dbg !3451
  store i8** null, i8*** %4, align 8, !dbg !3454
  br label %54, !dbg !3454

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !3455

; <label>:22:                                     ; preds = %21
  br label %23, !dbg !3457, !llvm.loop !3458

; <label>:23:                                     ; preds = %22
  %24 = load i8*, i8** %6, align 8, !dbg !3459
  %25 = icmp ne i8* %24, null, !dbg !3463
  br i1 %25, label %26, label %27, !dbg !3459

; <label>:26:                                     ; preds = %23
  br label %28, !dbg !3464

; <label>:27:                                     ; preds = %23
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.split_message, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0)), !dbg !3467
  store i8** null, i8*** %4, align 8, !dbg !3470
  br label %54, !dbg !3470

; <label>:28:                                     ; preds = %26
  br label %29, !dbg !3471

; <label>:29:                                     ; preds = %28
  br label %30, !dbg !3473, !llvm.loop !3474

; <label>:30:                                     ; preds = %29
  %31 = load i8*, i8** %7, align 8, !dbg !3475
  %32 = icmp ne i8* %31, null, !dbg !3479
  br i1 %32, label %33, label %34, !dbg !3475

; <label>:33:                                     ; preds = %30
  br label %35, !dbg !3480

; <label>:34:                                     ; preds = %30
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.split_message, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i32 0, i32 0)), !dbg !3483
  store i8** null, i8*** %4, align 8, !dbg !3486
  br label %54, !dbg !3486

; <label>:35:                                     ; preds = %33
  br label %36, !dbg !3487

; <label>:36:                                     ; preds = %35
  %37 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !3489
  %38 = bitcast %struct._SERVER_REC* %37 to i8*, !dbg !3489
  %39 = call i8* @module_check_cast(i8* %38, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0)), !dbg !3490
  %40 = bitcast i8* %39 to %struct._SERVER_REC*, !dbg !3491
  %41 = load i8*, i8** %7, align 8, !dbg !3492
  %42 = load i8*, i8** %6, align 8, !dbg !3493
  %43 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %8, align 8, !dbg !3494
  %44 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %43, i32 0, i32 7, !dbg !3495
  %45 = load i8*, i8** %44, align 8, !dbg !3495
  %46 = call i64 @strlen(i8* %45) #6, !dbg !3496
  %47 = sub i64 497, %46, !dbg !3497
  %48 = sub i64 %47, 74, !dbg !3498
  %49 = load i8*, i8** %6, align 8, !dbg !3499
  %50 = call i64 @strlen(i8* %49) #6, !dbg !3500
  %51 = sub i64 %48, %50, !dbg !3501
  %52 = trunc i64 %51 to i32, !dbg !3502
  %53 = call i8** @split_line(%struct._SERVER_REC* %40, i8* %41, i8* %42, i32 %52), !dbg !3503
  store i8** %53, i8*** %4, align 8, !dbg !3504
  br label %54, !dbg !3504

; <label>:54:                                     ; preds = %36, %34, %27, %20
  %55 = load i8**, i8*** %4, align 8, !dbg !3505
  ret i8** %55, !dbg !3505
}

; Function Attrs: nounwind uwtable
define internal void @send_message(%struct._SERVER_REC*, i8*, i8*, i32) #0 !dbg !3506 {
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct._IRC_SERVER_REC*, align 8
  %10 = alloca %struct._CHANNEL_REC*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !3507, metadata !739), !dbg !3508
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3509, metadata !739), !dbg !3510
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3511, metadata !739), !dbg !3512
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3513, metadata !739), !dbg !3514
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %9, metadata !3515, metadata !739), !dbg !3516
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %10, metadata !3517, metadata !739), !dbg !3518
  call void @llvm.dbg.declare(metadata i8** %11, metadata !3519, metadata !739), !dbg !3520
  call void @llvm.dbg.declare(metadata i8** %12, metadata !3521, metadata !739), !dbg !3522
  %13 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !3523
  %14 = bitcast %struct._SERVER_REC* %13 to i8*, !dbg !3523
  %15 = call i8* @module_check_cast(i8* %14, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0)), !dbg !3524
  %16 = bitcast i8* %15 to %struct._SERVER_REC*, !dbg !3525
  %17 = bitcast %struct._SERVER_REC* %16 to i8*, !dbg !3526
  %18 = call i8* @chat_protocol_check_cast(i8* %17, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !3527
  %19 = bitcast i8* %18 to %struct._IRC_SERVER_REC*, !dbg !3529
  store %struct._IRC_SERVER_REC* %19, %struct._IRC_SERVER_REC** %9, align 8, !dbg !3530
  br label %20, !dbg !3531, !llvm.loop !3532

; <label>:20:                                     ; preds = %4
  %21 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %9, align 8, !dbg !3533
  %22 = icmp ne %struct._IRC_SERVER_REC* %21, null, !dbg !3537
  br i1 %22, label %23, label %24, !dbg !3533

; <label>:23:                                     ; preds = %20
  br label %25, !dbg !3538

; <label>:24:                                     ; preds = %20
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.send_message, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.61, i32 0, i32 0)), !dbg !3541
  br label %81, !dbg !3544

; <label>:25:                                     ; preds = %23
  br label %26, !dbg !3545

; <label>:26:                                     ; preds = %25
  br label %27, !dbg !3547, !llvm.loop !3548

; <label>:27:                                     ; preds = %26
  %28 = load i8*, i8** %6, align 8, !dbg !3549
  %29 = icmp ne i8* %28, null, !dbg !3553
  br i1 %29, label %30, label %31, !dbg !3549

; <label>:30:                                     ; preds = %27
  br label %32, !dbg !3554

; <label>:31:                                     ; preds = %27
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.send_message, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0)), !dbg !3557
  br label %81, !dbg !3560

; <label>:32:                                     ; preds = %30
  br label %33, !dbg !3561

; <label>:33:                                     ; preds = %32
  br label %34, !dbg !3563, !llvm.loop !3564

; <label>:34:                                     ; preds = %33
  %35 = load i8*, i8** %7, align 8, !dbg !3565
  %36 = icmp ne i8* %35, null, !dbg !3569
  br i1 %36, label %37, label %38, !dbg !3565

; <label>:37:                                     ; preds = %34
  br label %39, !dbg !3570

; <label>:38:                                     ; preds = %34
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.send_message, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i32 0, i32 0)), !dbg !3573
  br label %81, !dbg !3576

; <label>:39:                                     ; preds = %37
  br label %40, !dbg !3577

; <label>:40:                                     ; preds = %39
  %41 = load i8*, i8** %6, align 8, !dbg !3579
  %42 = load i8, i8* %41, align 1, !dbg !3581
  %43 = sext i8 %42 to i32, !dbg !3581
  %44 = icmp eq i32 %43, 33, !dbg !3582
  br i1 %44, label %45, label %63, !dbg !3583

; <label>:45:                                     ; preds = %40
  %46 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !3584
  %47 = load i8*, i8** %6, align 8, !dbg !3586
  %48 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %46, i8* %47), !dbg !3587
  store %struct._CHANNEL_REC* %48, %struct._CHANNEL_REC** %10, align 8, !dbg !3588
  %49 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %10, align 8, !dbg !3589
  %50 = icmp ne %struct._CHANNEL_REC* %49, null, !dbg !3591
  br i1 %50, label %51, label %62, !dbg !3592

; <label>:51:                                     ; preds = %45
  %52 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %10, align 8, !dbg !3593
  %53 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %52, i32 0, i32 6, !dbg !3594
  %54 = load i8*, i8** %53, align 8, !dbg !3594
  %55 = load i8*, i8** %6, align 8, !dbg !3595
  %56 = call i32 @g_ascii_strcasecmp(i8* %54, i8* %55), !dbg !3596
  %57 = icmp ne i32 %56, 0, !dbg !3597
  br i1 %57, label %58, label %62, !dbg !3598

; <label>:58:                                     ; preds = %51
  %59 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %10, align 8, !dbg !3600
  %60 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %59, i32 0, i32 6, !dbg !3601
  %61 = load i8*, i8** %60, align 8, !dbg !3601
  store i8* %61, i8** %6, align 8, !dbg !3602
  br label %62, !dbg !3603

; <label>:62:                                     ; preds = %58, %51, %45
  br label %63, !dbg !3604

; <label>:63:                                     ; preds = %62, %40
  %64 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !3605
  %65 = bitcast %struct._SERVER_REC* %64 to i8*, !dbg !3605
  %66 = call i8* @module_check_cast(i8* %65, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0)), !dbg !3606
  %67 = bitcast i8* %66 to %struct._SERVER_REC*, !dbg !3607
  %68 = load i8*, i8** %7, align 8, !dbg !3608
  %69 = load i8*, i8** %6, align 8, !dbg !3609
  %70 = call i8* @recode_out(%struct._SERVER_REC* %67, i8* %68, i8* %69), !dbg !3610
  store i8* %70, i8** %12, align 8, !dbg !3611
  %71 = load i8*, i8** %6, align 8, !dbg !3612
  %72 = load i8*, i8** %12, align 8, !dbg !3613
  %73 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.63, i32 0, i32 0), i8* %71, i8* %72), !dbg !3614
  store i8* %73, i8** %11, align 8, !dbg !3615
  %74 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %9, align 8, !dbg !3616
  %75 = load i8*, i8** %11, align 8, !dbg !3617
  %76 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %9, align 8, !dbg !3618
  %77 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %76, i32 0, i32 49, !dbg !3619
  %78 = load i32, i32* %77, align 4, !dbg !3619
  call void @irc_send_cmd_split(%struct._IRC_SERVER_REC* %74, i8* %75, i32 2, i32 %78), !dbg !3620
  %79 = load i8*, i8** %11, align 8, !dbg !3621
  call void @g_free(i8* %79), !dbg !3622
  %80 = load i8*, i8** %12, align 8, !dbg !3623
  call void @g_free(i8* %80), !dbg !3624
  br label %81, !dbg !3625

; <label>:81:                                     ; preds = %63, %38, %31, %24
  ret void, !dbg !3626
}

declare %struct._QUERY_REC* @irc_query_find(%struct._IRC_SERVER_REC*, i8*) #2

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #2

declare i32 @g_istr_hash(i8*) #2

declare i32 @g_istr_equal(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @server_init(%struct._IRC_SERVER_REC*) #0 !dbg !3627 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  %3 = alloca %struct._IRC_SERVER_CONNECT_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !3628, metadata !739), !dbg !3629
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_CONNECT_REC** %3, metadata !3630, metadata !739), !dbg !3631
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3632, metadata !739), !dbg !3633
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3634, metadata !739), !dbg !3635
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3636, metadata !739), !dbg !3637
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3638, metadata !739), !dbg !3639
  br label %8, !dbg !3640, !llvm.loop !3641

; <label>:8:                                      ; preds = %1
  %9 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !3642
  %10 = icmp ne %struct._IRC_SERVER_REC* %9, null, !dbg !3646
  br i1 %10, label %11, label %12, !dbg !3642

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !3647

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.server_init, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0)), !dbg !3650
  br label %191, !dbg !3653

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !3654

; <label>:14:                                     ; preds = %13
  %15 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !3656
  %16 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %15, i32 0, i32 3, !dbg !3657
  %17 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %16, align 8, !dbg !3657
  store %struct._IRC_SERVER_CONNECT_REC* %17, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !3658
  %18 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !3659
  %19 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %18, i32 0, i32 3, !dbg !3661
  %20 = load i8*, i8** %19, align 8, !dbg !3661
  %21 = icmp ne i8* %20, null, !dbg !3662
  br i1 %21, label %22, label %42, !dbg !3663

; <label>:22:                                     ; preds = %14
  %23 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !3664
  %24 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %23, i32 0, i32 7, !dbg !3666
  %25 = load i8*, i8** %24, align 8, !dbg !3666
  %26 = icmp ne i8* %25, null, !dbg !3667
  br i1 %26, label %27, label %42, !dbg !3668

; <label>:27:                                     ; preds = %22
  %28 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !3669
  %29 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %28, i32 0, i32 7, !dbg !3670
  %30 = load i8*, i8** %29, align 8, !dbg !3670
  %31 = load i8, i8* %30, align 1, !dbg !3671
  %32 = sext i8 %31 to i32, !dbg !3671
  %33 = icmp ne i32 %32, 0, !dbg !3672
  br i1 %33, label %34, label %42, !dbg !3673

; <label>:34:                                     ; preds = %27
  %35 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !3675
  %36 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %35, i32 0, i32 7, !dbg !3677
  %37 = load i8*, i8** %36, align 8, !dbg !3677
  %38 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i8* %37), !dbg !3678
  store i8* %38, i8** %7, align 8, !dbg !3679
  %39 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !3680
  %40 = load i8*, i8** %7, align 8, !dbg !3681
  call void @irc_send_cmd_now(%struct._IRC_SERVER_REC* %39, i8* %40), !dbg !3682
  %41 = load i8*, i8** %7, align 8, !dbg !3683
  call void @g_free(i8* %41), !dbg !3684
  br label %42, !dbg !3685

; <label>:42:                                     ; preds = %34, %27, %22, %14
  %43 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !3686
  %44 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %43, i32 0, i32 3, !dbg !3688
  %45 = load i8*, i8** %44, align 8, !dbg !3688
  %46 = icmp ne i8* %45, null, !dbg !3689
  br i1 %46, label %47, label %66, !dbg !3690

; <label>:47:                                     ; preds = %42
  %48 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !3691
  %49 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %48, i32 0, i32 5, !dbg !3693
  %50 = load i8*, i8** %49, align 8, !dbg !3693
  %51 = icmp ne i8* %50, null, !dbg !3694
  br i1 %51, label %52, label %66, !dbg !3695

; <label>:52:                                     ; preds = %47
  %53 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !3696
  %54 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %53, i32 0, i32 5, !dbg !3698
  %55 = load i8*, i8** %54, align 8, !dbg !3698
  %56 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !3699
  %57 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %56, i32 0, i32 10, !dbg !3700
  %58 = load i8*, i8** %57, align 8, !dbg !3700
  %59 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !3701
  %60 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %59, i32 0, i32 11, !dbg !3702
  %61 = load i32, i32* %60, align 8, !dbg !3702
  %62 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %55, i8* %58, i32 %61), !dbg !3703
  store i8* %62, i8** %7, align 8, !dbg !3704
  %63 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !3705
  %64 = load i8*, i8** %7, align 8, !dbg !3706
  call void @irc_send_cmd_now(%struct._IRC_SERVER_REC* %63, i8* %64), !dbg !3707
  %65 = load i8*, i8** %7, align 8, !dbg !3708
  call void @g_free(i8* %65), !dbg !3709
  br label %66, !dbg !3710

; <label>:66:                                     ; preds = %52, %47, %42
  %67 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !3711
  %68 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %67, i32 0, i32 33, !dbg !3713
  %69 = load i32, i32* %68, align 8, !dbg !3713
  %70 = icmp ne i32 %69, 0, !dbg !3714
  br i1 %70, label %71, label %74, !dbg !3715

; <label>:71:                                     ; preds = %66
  %72 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !3716
  %73 = call i32 @cap_toggle(%struct._IRC_SERVER_REC* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i32 1), !dbg !3717
  br label %74, !dbg !3717

; <label>:74:                                     ; preds = %71, %66
  %75 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !3718
  %76 = call i32 @cap_toggle(%struct._IRC_SERVER_REC* %75, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.66, i32 0, i32 0), i32 1), !dbg !3719
  %77 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !3720
  call void @irc_send_cmd_now(%struct._IRC_SERVER_REC* %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i32 0, i32 0)), !dbg !3721
  %78 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !3722
  %79 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %78, i32 0, i32 15, !dbg !3724
  %80 = load i8*, i8** %79, align 8, !dbg !3724
  %81 = icmp ne i8* %80, null, !dbg !3725
  br i1 %81, label %82, label %97, !dbg !3726

; <label>:82:                                     ; preds = %74
  %83 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !3727
  %84 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %83, i32 0, i32 15, !dbg !3729
  %85 = load i8*, i8** %84, align 8, !dbg !3729
  %86 = load i8, i8* %85, align 1, !dbg !3730
  %87 = sext i8 %86 to i32, !dbg !3730
  %88 = icmp ne i32 %87, 0, !dbg !3731
  br i1 %88, label %89, label %97, !dbg !3732

; <label>:89:                                     ; preds = %82
  %90 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !3733
  %91 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %90, i32 0, i32 15, !dbg !3735
  %92 = load i8*, i8** %91, align 8, !dbg !3735
  %93 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i8* %92), !dbg !3736
  store i8* %93, i8** %7, align 8, !dbg !3737
  %94 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !3738
  %95 = load i8*, i8** %7, align 8, !dbg !3739
  call void @irc_send_cmd_now(%struct._IRC_SERVER_REC* %94, i8* %95), !dbg !3740
  %96 = load i8*, i8** %7, align 8, !dbg !3741
  call void @g_free(i8* %96), !dbg !3742
  br label %97, !dbg !3743

; <label>:97:                                     ; preds = %89, %82, %74
  %98 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !3744
  %99 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %98, i32 0, i32 16, !dbg !3745
  %100 = load i8*, i8** %99, align 8, !dbg !3745
  %101 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), i8* %100), !dbg !3746
  store i8* %101, i8** %7, align 8, !dbg !3747
  %102 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !3748
  %103 = load i8*, i8** %7, align 8, !dbg !3749
  call void @irc_send_cmd_now(%struct._IRC_SERVER_REC* %102, i8* %103), !dbg !3750
  %104 = load i8*, i8** %7, align 8, !dbg !3751
  call void @g_free(i8* %104), !dbg !3752
  %105 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !3753
  %106 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %105, i32 0, i32 3, !dbg !3754
  %107 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %106, align 8, !dbg !3754
  %108 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %107, i32 0, i32 10, !dbg !3755
  %109 = load i8*, i8** %108, align 8, !dbg !3755
  store i8* %109, i8** %4, align 8, !dbg !3756
  %110 = load i8*, i8** %4, align 8, !dbg !3757
  %111 = call i8* @strrchr(i8* %110, i32 58) #6, !dbg !3758
  store i8* %111, i8** %5, align 8, !dbg !3759
  %112 = load i8*, i8** %5, align 8, !dbg !3760
  %113 = icmp ne i8* %112, null, !dbg !3762
  br i1 %113, label %114, label %123, !dbg !3763

; <label>:114:                                    ; preds = %97
  %115 = load i8*, i8** %5, align 8, !dbg !3764
  %116 = getelementptr inbounds i8, i8* %115, i64 1, !dbg !3766
  store i8* %116, i8** %4, align 8, !dbg !3767
  %117 = load i8*, i8** %4, align 8, !dbg !3768
  %118 = load i8, i8* %117, align 1, !dbg !3770
  %119 = sext i8 %118 to i32, !dbg !3770
  %120 = icmp eq i32 %119, 0, !dbg !3771
  br i1 %120, label %121, label %122, !dbg !3772

; <label>:121:                                    ; preds = %114
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8** %4, align 8, !dbg !3773
  br label %122, !dbg !3774

; <label>:122:                                    ; preds = %121, %114
  br label %123, !dbg !3775

; <label>:123:                                    ; preds = %122, %97
  %124 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !3776
  %125 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %124, i32 0, i32 17, !dbg !3777
  %126 = load i8*, i8** %125, align 8, !dbg !3777
  %127 = call noalias i8* @g_strdup(i8* %126), !dbg !3778
  store i8* %127, i8** %6, align 8, !dbg !3779
  %128 = load i8*, i8** %6, align 8, !dbg !3780
  %129 = call i8* @strchr(i8* %128, i32 32) #6, !dbg !3781
  store i8* %129, i8** %5, align 8, !dbg !3782
  %130 = load i8*, i8** %5, align 8, !dbg !3783
  %131 = icmp ne i8* %130, null, !dbg !3785
  br i1 %131, label %132, label %134, !dbg !3786

; <label>:132:                                    ; preds = %123
  %133 = load i8*, i8** %5, align 8, !dbg !3787
  store i8 0, i8* %133, align 1, !dbg !3789
  br label %134, !dbg !3790

; <label>:134:                                    ; preds = %132, %123
  %135 = load i8*, i8** %6, align 8, !dbg !3791
  %136 = load i8*, i8** %6, align 8, !dbg !3792
  %137 = load i8*, i8** %4, align 8, !dbg !3793
  %138 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !3794
  %139 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %138, i32 0, i32 18, !dbg !3795
  %140 = load i8*, i8** %139, align 8, !dbg !3795
  %141 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.69, i32 0, i32 0), i8* %135, i8* %136, i8* %137, i8* %140), !dbg !3796
  store i8* %141, i8** %7, align 8, !dbg !3797
  %142 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !3798
  %143 = load i8*, i8** %7, align 8, !dbg !3799
  call void @irc_send_cmd_now(%struct._IRC_SERVER_REC* %142, i8* %143), !dbg !3800
  %144 = load i8*, i8** %7, align 8, !dbg !3801
  call void @g_free(i8* %144), !dbg !3802
  %145 = load i8*, i8** %6, align 8, !dbg !3803
  call void @g_free(i8* %145), !dbg !3804
  %146 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !3805
  %147 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %146, i32 0, i32 3, !dbg !3807
  %148 = load i8*, i8** %147, align 8, !dbg !3807
  %149 = icmp ne i8* %148, null, !dbg !3808
  br i1 %149, label %150, label %169, !dbg !3809

; <label>:150:                                    ; preds = %134
  %151 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !3810
  %152 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %151, i32 0, i32 6, !dbg !3812
  %153 = load i8*, i8** %152, align 8, !dbg !3812
  %154 = icmp ne i8* %153, null, !dbg !3813
  br i1 %154, label %155, label %169, !dbg !3814

; <label>:155:                                    ; preds = %150
  %156 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !3815
  %157 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %156, i32 0, i32 6, !dbg !3817
  %158 = load i8*, i8** %157, align 8, !dbg !3817
  %159 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !3818
  %160 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %159, i32 0, i32 10, !dbg !3819
  %161 = load i8*, i8** %160, align 8, !dbg !3819
  %162 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !3820
  %163 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %162, i32 0, i32 11, !dbg !3821
  %164 = load i32, i32* %163, align 8, !dbg !3821
  %165 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %158, i8* %161, i32 %164), !dbg !3822
  store i8* %165, i8** %7, align 8, !dbg !3823
  %166 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !3824
  %167 = load i8*, i8** %7, align 8, !dbg !3825
  call void @irc_send_cmd_now(%struct._IRC_SERVER_REC* %166, i8* %167), !dbg !3826
  %168 = load i8*, i8** %7, align 8, !dbg !3827
  call void @g_free(i8* %168), !dbg !3828
  br label %169, !dbg !3829

; <label>:169:                                    ; preds = %155, %150, %134
  %170 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_istr_hash, i32 (i8*, i8*)* @g_istr_equal), !dbg !3830
  %171 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !3831
  %172 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %171, i32 0, i32 69, !dbg !3832
  store %struct._GHashTable* %170, %struct._GHashTable** %172, align 8, !dbg !3833
  %173 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !3834
  %174 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %173, i32 0, i32 69, !dbg !3835
  %175 = load %struct._GHashTable*, %struct._GHashTable** %174, align 8, !dbg !3835
  %176 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0)), !dbg !3836
  %177 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.70, i32 0, i32 0)), !dbg !3837
  %178 = call i32 @g_hash_table_insert(%struct._GHashTable* %175, i8* %176, i8* %177), !dbg !3839
  %179 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !3840
  %180 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %179, i32 0, i32 69, !dbg !3841
  %181 = load %struct._GHashTable*, %struct._GHashTable** %180, align 8, !dbg !3841
  %182 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0)), !dbg !3842
  %183 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0)), !dbg !3843
  %184 = call i32 @g_hash_table_insert(%struct._GHashTable* %181, i8* %182, i8* %183), !dbg !3844
  %185 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !3845
  %186 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %185, i32 0, i32 55, !dbg !3846
  store i32 0, i32* %186, align 4, !dbg !3847
  %187 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !3848
  %188 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %187, i32 0, i32 57, !dbg !3849
  call void @g_get_current_time(%struct._GTimeVal* %188), !dbg !3850
  %189 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !3851
  %190 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %189, i32 0, i32 57, !dbg !3852
  call void @g_time_val_add(%struct._GTimeVal* %190, i64 120000000), !dbg !3853
  br label %191, !dbg !3854

; <label>:191:                                    ; preds = %169, %12
  ret void, !dbg !3855
}

; Function Attrs: nounwind readonly
declare i64 @strspn(i8*, i8*) #3

declare %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC*, i8*) #2

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

declare noalias i8* @g_strdup_printf(i8*, ...) #2

declare void @irc_send_cmd_split(%struct._IRC_SERVER_REC*, i8*, i32, i32) #2

declare void @irc_send_cmd_now(%struct._IRC_SERVER_REC*, i8*) #2

declare i32 @cap_toggle(%struct._IRC_SERVER_REC*, i8*, i32) #2

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #3

declare void @g_slist_free(%struct._GSList*) #2

declare void @gslist_free_full(%struct._GSList*, void (i8*)*) #2

declare void @g_hash_table_destroy(%struct._GHashTable*) #2

declare void @g_hash_table_foreach(%struct._GHashTable*, void (i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @isupport_destroy_hash(i8*, i8*) #0 !dbg !3856 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3859, metadata !739), !dbg !3860
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3861, metadata !739), !dbg !3862
  %5 = load i8*, i8** %3, align 8, !dbg !3863
  call void @g_free(i8* %5), !dbg !3864
  %6 = load i8*, i8** %4, align 8, !dbg !3865
  call void @g_free(i8* %6), !dbg !3866
  ret void, !dbg !3867
}

declare i8* @event_get_params(i8*, i32, ...) #2

declare i32 @g_strcmp0(i8*, i8*) #2

; Function Attrs: nounwind
declare i64 @time(i64*) #5

declare i32 @signal_emit(i8*, i32, ...) #2

declare i8* @stristr(i8*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!731, !732}
!llvm.ident = !{!733}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !42, globals: !728)
!1 = !DIFile(filename: "line135-irc-servers.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 24, size: 32, align: 32, elements: !37)
!36 = !DIFile(filename: "sasl.h", directory: "/home/lichi/Desktop/irssi/task1")
!37 = !{!38, !39, !40, !41}
!38 = !DIEnumerator(name: "SASL_MECHANISM_NONE", value: 0)
!39 = !DIEnumerator(name: "SASL_MECHANISM_PLAIN", value: 1)
!40 = !DIEnumerator(name: "SASL_MECHANISM_EXTERNAL", value: 2)
!41 = !DIEnumerator(name: "SASL_MECHANISM_MAX", value: 3)
!42 = !{!43, !293, !103, !336, !149, !338, !421, !165, !705, !478, !712, !51, !713, !559, !714, !719, !723, !724}
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !45, line: 5, baseType: !46)
!45 = !DIFile(filename: "irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !47, line: 24, size: 2496, align: 64, elements: !48)
!47 = !DIFile(filename: "irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!48 = !{!49, !52, !53, !54, !57, !58, !59, !60, !61, !63, !64, !65, !66, !67, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !46, file: !50, line: 3, baseType: !51, size: 32, align: 32)
!50 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!51 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !46, file: !50, line: 4, baseType: !51, size: 32, align: 32, offset: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !46, file: !50, line: 6, baseType: !51, size: 32, align: 32, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !46, file: !50, line: 9, baseType: !55, size: 64, align: 64, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !46, file: !50, line: 10, baseType: !51, size: 32, align: 32, offset: 192)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !46, file: !50, line: 11, baseType: !55, size: 64, align: 64, offset: 256)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !46, file: !50, line: 11, baseType: !55, size: 64, align: 64, offset: 320)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !46, file: !50, line: 11, baseType: !55, size: 64, align: 64, offset: 384)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !46, file: !50, line: 13, baseType: !62, size: 16, align: 16, offset: 448)
!62 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !46, file: !50, line: 14, baseType: !55, size: 64, align: 64, offset: 512)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !46, file: !50, line: 15, baseType: !55, size: 64, align: 64, offset: 576)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !46, file: !50, line: 16, baseType: !51, size: 32, align: 32, offset: 640)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !46, file: !50, line: 17, baseType: !55, size: 64, align: 64, offset: 704)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !46, file: !50, line: 19, baseType: !68, size: 64, align: 64, offset: 768)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !70, line: 99, baseType: !71)
!70 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!71 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !70, line: 99, flags: DIFlagFwdDecl)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !46, file: !50, line: 19, baseType: !68, size: 64, align: 64, offset: 832)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !46, file: !50, line: 21, baseType: !55, size: 64, align: 64, offset: 896)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !46, file: !50, line: 22, baseType: !55, size: 64, align: 64, offset: 960)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !46, file: !50, line: 23, baseType: !55, size: 64, align: 64, offset: 1024)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !46, file: !50, line: 24, baseType: !55, size: 64, align: 64, offset: 1088)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !46, file: !50, line: 26, baseType: !55, size: 64, align: 64, offset: 1152)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !46, file: !50, line: 27, baseType: !55, size: 64, align: 64, offset: 1216)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !46, file: !50, line: 28, baseType: !55, size: 64, align: 64, offset: 1280)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !46, file: !50, line: 29, baseType: !55, size: 64, align: 64, offset: 1344)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !46, file: !50, line: 30, baseType: !55, size: 64, align: 64, offset: 1408)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !46, file: !50, line: 31, baseType: !55, size: 64, align: 64, offset: 1472)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !46, file: !50, line: 32, baseType: !55, size: 64, align: 64, offset: 1536)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !46, file: !50, line: 33, baseType: !55, size: 64, align: 64, offset: 1600)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !46, file: !50, line: 35, baseType: !86, size: 64, align: 64, offset: 1664)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !89)
!89 = !{!90, !93, !238, !239, !244, !245, !246, !247, !248, !257, !258, !259, !263, !264, !265, !266, !267, !268, !269, !270}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !88, file: !4, line: 100, baseType: !91, size: 32, align: 32)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !92, line: 49, baseType: !51)
!92 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!93 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !88, file: !4, line: 101, baseType: !94, size: 64, align: 64, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !96)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !97)
!97 = !{!98, !122, !128, !135, !139, !225, !229, !234}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !96, file: !4, line: 133, baseType: !99, size: 64, align: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{!102, !86, !103, !105, !108, !109}
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !92, line: 46, baseType: !56)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !106, line: 66, baseType: !107)
!106 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!107 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !112, line: 42, baseType: !113)
!112 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !112, line: 44, size: 128, align: 64, elements: !114)
!114 = !{!115, !120, !121}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !113, file: !112, line: 46, baseType: !116, size: 32, align: 32)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !117, line: 36, baseType: !118)
!117 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !106, line: 45, baseType: !119)
!119 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !113, file: !112, line: 47, baseType: !91, size: 32, align: 32, offset: 32)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !113, file: !112, line: 48, baseType: !103, size: 64, align: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !96, file: !4, line: 138, baseType: !123, size: 64, align: 64, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = !DISubroutineType(types: !125)
!125 = !{!102, !86, !126, !105, !108, !109}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !96, file: !4, line: 143, baseType: !129, size: 64, align: 64, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{!102, !86, !132, !134, !109}
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !106, line: 51, baseType: !133)
!133 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !96, file: !4, line: 147, baseType: !136, size: 64, align: 64, offset: 192)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!102, !86, !109}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !96, file: !4, line: 149, baseType: !140, size: 64, align: 64, offset: 256)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{!143, !86, !224}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !145)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !146)
!146 = !{!147, !150, !171, !200, !202, !206, !207, !208, !209, !217, !218, !219, !220}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !145, file: !16, line: 174, baseType: !148, size: 64, align: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !92, line: 77, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !145, file: !16, line: 175, baseType: !151, size: 64, align: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64, align: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !153)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !154)
!154 = !{!155, !159, !160}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !153, file: !16, line: 198, baseType: !156, size: 64, align: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, align: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{null, !148}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !153, file: !16, line: 199, baseType: !156, size: 64, align: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !153, file: !16, line: 200, baseType: !161, size: 64, align: 64, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64, align: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !148, !143, !164, !170}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64, align: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !166)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{!169, !148}
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !92, line: 50, baseType: !91)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, align: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !145, file: !16, line: 177, baseType: !172, size: 64, align: 64, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64, align: 64)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !175)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !176)
!176 = !{!177, !182, !186, !190, !194, !195}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !175, file: !16, line: 216, baseType: !178, size: 64, align: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, align: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{!169, !143, !181}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !175, file: !16, line: 218, baseType: !183, size: 64, align: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!169, !143}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !175, file: !16, line: 219, baseType: !187, size: 64, align: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!169, !143, !165, !148}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !175, file: !16, line: 222, baseType: !191, size: 64, align: 64, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !143}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !175, file: !16, line: 226, baseType: !165, size: 64, align: 64, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !175, file: !16, line: 227, baseType: !196, size: 64, align: 64, offset: 320)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{null}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !145, file: !16, line: 178, baseType: !201, size: 32, align: 32, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !92, line: 55, baseType: !119)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !145, file: !16, line: 180, baseType: !203, size: 64, align: 64, offset: 256)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !205)
!205 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !145, file: !16, line: 182, baseType: !91, size: 32, align: 32, offset: 320)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !145, file: !16, line: 183, baseType: !201, size: 32, align: 32, offset: 352)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !145, file: !16, line: 184, baseType: !201, size: 32, align: 32, offset: 384)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !145, file: !16, line: 186, baseType: !210, size: 64, align: 64, offset: 448)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !212, line: 37, baseType: !213)
!212 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !212, line: 39, size: 128, align: 64, elements: !214)
!214 = !{!215, !216}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !213, file: !212, line: 41, baseType: !148, size: 64, align: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !213, file: !212, line: 42, baseType: !210, size: 64, align: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !145, file: !16, line: 188, baseType: !143, size: 64, align: 64, offset: 512)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !145, file: !16, line: 189, baseType: !143, size: 64, align: 64, offset: 576)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !145, file: !16, line: 191, baseType: !55, size: 64, align: 64, offset: 640)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !145, file: !16, line: 193, baseType: !221, size: 64, align: 64, offset: 704)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !223)
!223 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !96, file: !4, line: 151, baseType: !226, size: 64, align: 64, offset: 320)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !86}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !96, file: !4, line: 152, baseType: !230, size: 64, align: 64, offset: 384)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64, align: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!102, !86, !233, !109}
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !96, file: !4, line: 155, baseType: !235, size: 64, align: 64, offset: 448)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{!233, !86}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !88, file: !4, line: 103, baseType: !103, size: 64, align: 64, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !88, file: !4, line: 104, baseType: !240, size: 64, align: 64, offset: 192)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !241, line: 77, baseType: !242)
!241 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!243 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !241, line: 77, flags: DIFlagFwdDecl)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !88, file: !4, line: 105, baseType: !240, size: 64, align: 64, offset: 256)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !88, file: !4, line: 106, baseType: !103, size: 64, align: 64, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !88, file: !4, line: 107, baseType: !201, size: 32, align: 32, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !88, file: !4, line: 109, baseType: !105, size: 64, align: 64, offset: 448)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !88, file: !4, line: 110, baseType: !249, size: 64, align: 64, offset: 512)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64, align: 64)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !251, line: 39, baseType: !252)
!251 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !251, line: 41, size: 192, align: 64, elements: !253)
!253 = !{!254, !255, !256}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !252, file: !251, line: 43, baseType: !103, size: 64, align: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !252, file: !251, line: 44, baseType: !105, size: 64, align: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !252, file: !251, line: 45, baseType: !105, size: 64, align: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !88, file: !4, line: 111, baseType: !249, size: 64, align: 64, offset: 576)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !88, file: !4, line: 112, baseType: !249, size: 64, align: 64, offset: 640)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !88, file: !4, line: 113, baseType: !260, size: 48, align: 8, offset: 704)
!260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 48, align: 8, elements: !261)
!261 = !{!262}
!262 = !DISubrange(count: 6)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !88, file: !4, line: 117, baseType: !201, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !88, file: !4, line: 118, baseType: !201, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !88, file: !4, line: 119, baseType: !201, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !88, file: !4, line: 120, baseType: !201, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !88, file: !4, line: 121, baseType: !201, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !88, file: !4, line: 122, baseType: !201, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !88, file: !4, line: 124, baseType: !148, size: 64, align: 64, offset: 768)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !88, file: !4, line: 125, baseType: !148, size: 64, align: 64, offset: 832)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !46, file: !50, line: 38, baseType: !119, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !46, file: !50, line: 39, baseType: !119, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !46, file: !50, line: 40, baseType: !119, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !46, file: !50, line: 41, baseType: !119, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !46, file: !50, line: 42, baseType: !119, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !46, file: !50, line: 43, baseType: !119, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !46, file: !50, line: 44, baseType: !119, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !46, file: !50, line: 45, baseType: !119, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !46, file: !50, line: 46, baseType: !55, size: 64, align: 64, offset: 1792)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !46, file: !50, line: 47, baseType: !55, size: 64, align: 64, offset: 1856)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !46, file: !47, line: 27, baseType: !55, size: 64, align: 64, offset: 1920)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !46, file: !47, line: 28, baseType: !55, size: 64, align: 64, offset: 1984)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !46, file: !47, line: 30, baseType: !51, size: 32, align: 32, offset: 2048)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !46, file: !47, line: 31, baseType: !55, size: 64, align: 64, offset: 2112)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !46, file: !47, line: 32, baseType: !55, size: 64, align: 64, offset: 2176)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !46, file: !47, line: 34, baseType: !51, size: 32, align: 32, offset: 2240)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !46, file: !47, line: 35, baseType: !51, size: 32, align: 32, offset: 2272)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !46, file: !47, line: 36, baseType: !51, size: 32, align: 32, offset: 2304)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !46, file: !47, line: 38, baseType: !51, size: 32, align: 32, offset: 2336)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !46, file: !47, line: 38, baseType: !51, size: 32, align: 32, offset: 2368)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !46, file: !47, line: 38, baseType: !51, size: 32, align: 32, offset: 2400)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !46, file: !47, line: 38, baseType: !51, size: 32, align: 32, offset: 2432)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64, align: 64)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !70, line: 113, baseType: !295)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !296, line: 25, size: 1920, align: 64, elements: !297)
!296 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!297 = !{!298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !295, file: !50, line: 3, baseType: !51, size: 32, align: 32)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !295, file: !50, line: 4, baseType: !51, size: 32, align: 32, offset: 32)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !295, file: !50, line: 6, baseType: !51, size: 32, align: 32, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !295, file: !50, line: 9, baseType: !55, size: 64, align: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !295, file: !50, line: 10, baseType: !51, size: 32, align: 32, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !295, file: !50, line: 11, baseType: !55, size: 64, align: 64, offset: 256)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !295, file: !50, line: 11, baseType: !55, size: 64, align: 64, offset: 320)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !295, file: !50, line: 11, baseType: !55, size: 64, align: 64, offset: 384)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !295, file: !50, line: 13, baseType: !62, size: 16, align: 16, offset: 448)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !295, file: !50, line: 14, baseType: !55, size: 64, align: 64, offset: 512)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !295, file: !50, line: 15, baseType: !55, size: 64, align: 64, offset: 576)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !295, file: !50, line: 16, baseType: !51, size: 32, align: 32, offset: 640)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !295, file: !50, line: 17, baseType: !55, size: 64, align: 64, offset: 704)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !295, file: !50, line: 19, baseType: !68, size: 64, align: 64, offset: 768)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !295, file: !50, line: 19, baseType: !68, size: 64, align: 64, offset: 832)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !295, file: !50, line: 21, baseType: !55, size: 64, align: 64, offset: 896)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !295, file: !50, line: 22, baseType: !55, size: 64, align: 64, offset: 960)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !295, file: !50, line: 23, baseType: !55, size: 64, align: 64, offset: 1024)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !295, file: !50, line: 24, baseType: !55, size: 64, align: 64, offset: 1088)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !295, file: !50, line: 26, baseType: !55, size: 64, align: 64, offset: 1152)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !295, file: !50, line: 27, baseType: !55, size: 64, align: 64, offset: 1216)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !295, file: !50, line: 28, baseType: !55, size: 64, align: 64, offset: 1280)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !295, file: !50, line: 29, baseType: !55, size: 64, align: 64, offset: 1344)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !295, file: !50, line: 30, baseType: !55, size: 64, align: 64, offset: 1408)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !295, file: !50, line: 31, baseType: !55, size: 64, align: 64, offset: 1472)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !295, file: !50, line: 32, baseType: !55, size: 64, align: 64, offset: 1536)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !295, file: !50, line: 33, baseType: !55, size: 64, align: 64, offset: 1600)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !295, file: !50, line: 35, baseType: !86, size: 64, align: 64, offset: 1664)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !295, file: !50, line: 38, baseType: !119, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !295, file: !50, line: 39, baseType: !119, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !295, file: !50, line: 40, baseType: !119, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !295, file: !50, line: 41, baseType: !119, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !295, file: !50, line: 42, baseType: !119, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !295, file: !50, line: 43, baseType: !119, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !295, file: !50, line: 44, baseType: !119, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !295, file: !50, line: 45, baseType: !119, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !295, file: !50, line: 46, baseType: !55, size: 64, align: 64, offset: 1792)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !295, file: !50, line: 47, baseType: !55, size: 64, align: 64, offset: 1856)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64, align: 64)
!337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64, align: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !45, line: 6, baseType: !340)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !47, line: 42, size: 39168, align: 64, elements: !341)
!341 = !{!342, !344, !345, !346, !347, !352, !353, !354, !355, !356, !357, !358, !359, !360, !377, !378, !382, !383, !384, !394, !399, !400, !401, !402, !403, !404, !405, !406, !413, !414, !415, !416, !417, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !702, !704}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !340, file: !343, line: 3, baseType: !51, size: 32, align: 32)
!343 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!344 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !340, file: !343, line: 4, baseType: !51, size: 32, align: 32, offset: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !340, file: !343, line: 6, baseType: !51, size: 32, align: 32, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !340, file: !343, line: 8, baseType: !43, size: 64, align: 64, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !340, file: !343, line: 9, baseType: !348, size: 64, align: 64, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !349, line: 75, baseType: !350)
!349 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !351, line: 139, baseType: !133)
!351 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!352 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !340, file: !343, line: 10, baseType: !348, size: 64, align: 64, offset: 256)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !340, file: !343, line: 12, baseType: !55, size: 64, align: 64, offset: 320)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !340, file: !343, line: 13, baseType: !55, size: 64, align: 64, offset: 384)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !340, file: !343, line: 15, baseType: !119, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !340, file: !343, line: 16, baseType: !119, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !340, file: !343, line: 17, baseType: !119, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !340, file: !343, line: 18, baseType: !119, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !340, file: !343, line: 19, baseType: !119, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !340, file: !343, line: 21, baseType: !361, size: 64, align: 64, offset: 512)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64, align: 64)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !70, line: 102, baseType: !363)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !364, line: 7, size: 384, align: 64, elements: !365)
!364 = !DIFile(filename: "../../../src/core/net-sendbuffer.h", directory: "/home/lichi/Desktop/irssi/task1")
!365 = !{!366, !367, !371, !372, !373, !374, !375, !376}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !363, file: !364, line: 8, baseType: !86, size: 64, align: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "readbuffer", scope: !363, file: !364, line: 9, baseType: !368, size: 64, align: 64, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "LINEBUF_REC", file: !70, line: 101, baseType: !370)
!370 = !DICompositeType(tag: DW_TAG_structure_type, name: "_LINEBUF_REC", file: !70, line: 101, flags: DIFlagFwdDecl)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "send_tag", scope: !363, file: !364, line: 11, baseType: !51, size: 32, align: 32, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "bufsize", scope: !363, file: !364, line: 12, baseType: !51, size: 32, align: 32, offset: 160)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !363, file: !364, line: 13, baseType: !51, size: 32, align: 32, offset: 192)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !363, file: !364, line: 14, baseType: !55, size: 64, align: 64, offset: 256)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "def_bufsize", scope: !363, file: !364, line: 15, baseType: !51, size: 32, align: 32, offset: 320)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !363, file: !364, line: 16, baseType: !119, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !340, file: !343, line: 22, baseType: !51, size: 32, align: 32, offset: 576)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !340, file: !343, line: 25, baseType: !379, size: 128, align: 64, offset: 640)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 128, align: 64, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 2)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !340, file: !343, line: 26, baseType: !51, size: 32, align: 32, offset: 768)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !340, file: !343, line: 27, baseType: !51, size: 32, align: 32, offset: 800)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !340, file: !343, line: 29, baseType: !385, size: 64, align: 64, offset: 832)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64, align: 64)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !70, line: 103, baseType: !387)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !388, line: 4, size: 192, align: 64, elements: !389)
!388 = !DIFile(filename: "../../../src/core/rawlog.h", directory: "/home/lichi/Desktop/irssi/task1")
!389 = !{!390, !391, !392, !393}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "logging", scope: !387, file: !388, line: 5, baseType: !51, size: 32, align: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !387, file: !388, line: 6, baseType: !51, size: 32, align: 32, offset: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "nlines", scope: !387, file: !388, line: 8, baseType: !51, size: 32, align: 32, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !387, file: !388, line: 9, baseType: !210, size: 64, align: 64, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !340, file: !343, line: 30, baseType: !395, size: 64, align: 64, offset: 896)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64, align: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !397, line: 37, baseType: !398)
!397 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!398 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !397, line: 37, flags: DIFlagFwdDecl)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !340, file: !343, line: 32, baseType: !55, size: 64, align: 64, offset: 960)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !340, file: !343, line: 33, baseType: !55, size: 64, align: 64, offset: 1024)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !340, file: !343, line: 34, baseType: !55, size: 64, align: 64, offset: 1088)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !340, file: !343, line: 35, baseType: !119, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !340, file: !343, line: 36, baseType: !119, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !340, file: !343, line: 37, baseType: !119, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !340, file: !343, line: 38, baseType: !119, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !340, file: !343, line: 40, baseType: !407, size: 128, align: 64, offset: 1216)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !92, line: 504, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !92, line: 506, size: 128, align: 64, elements: !409)
!409 = !{!410, !412}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !408, file: !92, line: 508, baseType: !411, size: 64, align: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !92, line: 48, baseType: !133)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !408, file: !92, line: 509, baseType: !411, size: 64, align: 64, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !340, file: !343, line: 41, baseType: !348, size: 64, align: 64, offset: 1344)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !340, file: !343, line: 42, baseType: !51, size: 32, align: 32, offset: 1408)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !340, file: !343, line: 44, baseType: !210, size: 64, align: 64, offset: 1472)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !340, file: !343, line: 45, baseType: !210, size: 64, align: 64, offset: 1536)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !340, file: !343, line: 53, baseType: !418, size: 64, align: 64, offset: 1600)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64, align: 64)
!419 = !DISubroutineType(types: !420)
!420 = !{null, !421, !336, !51}
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64, align: 64)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !70, line: 107, baseType: !423)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !296, line: 30, size: 2240, align: 64, elements: !424)
!424 = !{!425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !462, !466, !470, !474, !479, !558, !585, !589}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !423, file: !343, line: 3, baseType: !51, size: 32, align: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !423, file: !343, line: 4, baseType: !51, size: 32, align: 32, offset: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !423, file: !343, line: 6, baseType: !51, size: 32, align: 32, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !423, file: !343, line: 8, baseType: !293, size: 64, align: 64, offset: 128)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !423, file: !343, line: 9, baseType: !348, size: 64, align: 64, offset: 192)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !423, file: !343, line: 10, baseType: !348, size: 64, align: 64, offset: 256)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !423, file: !343, line: 12, baseType: !55, size: 64, align: 64, offset: 320)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !423, file: !343, line: 13, baseType: !55, size: 64, align: 64, offset: 384)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !423, file: !343, line: 15, baseType: !119, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !423, file: !343, line: 16, baseType: !119, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !423, file: !343, line: 17, baseType: !119, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !423, file: !343, line: 18, baseType: !119, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !423, file: !343, line: 19, baseType: !119, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !423, file: !343, line: 21, baseType: !361, size: 64, align: 64, offset: 512)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !423, file: !343, line: 22, baseType: !51, size: 32, align: 32, offset: 576)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !423, file: !343, line: 25, baseType: !379, size: 128, align: 64, offset: 640)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !423, file: !343, line: 26, baseType: !51, size: 32, align: 32, offset: 768)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !423, file: !343, line: 27, baseType: !51, size: 32, align: 32, offset: 800)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !423, file: !343, line: 29, baseType: !385, size: 64, align: 64, offset: 832)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !423, file: !343, line: 30, baseType: !395, size: 64, align: 64, offset: 896)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !423, file: !343, line: 32, baseType: !55, size: 64, align: 64, offset: 960)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !423, file: !343, line: 33, baseType: !55, size: 64, align: 64, offset: 1024)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !423, file: !343, line: 34, baseType: !55, size: 64, align: 64, offset: 1088)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !423, file: !343, line: 35, baseType: !119, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !423, file: !343, line: 36, baseType: !119, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !423, file: !343, line: 37, baseType: !119, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !423, file: !343, line: 38, baseType: !119, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !423, file: !343, line: 40, baseType: !407, size: 128, align: 64, offset: 1216)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !423, file: !343, line: 41, baseType: !348, size: 64, align: 64, offset: 1344)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !423, file: !343, line: 42, baseType: !51, size: 32, align: 32, offset: 1408)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !423, file: !343, line: 44, baseType: !210, size: 64, align: 64, offset: 1472)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !423, file: !343, line: 45, baseType: !210, size: 64, align: 64, offset: 1536)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !423, file: !343, line: 53, baseType: !418, size: 64, align: 64, offset: 1600)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !423, file: !343, line: 55, baseType: !459, size: 64, align: 64, offset: 1664)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64, align: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!51, !421, !56}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !423, file: !343, line: 57, baseType: !463, size: 64, align: 64, offset: 1728)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64, align: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!51, !421, !336}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !423, file: !343, line: 60, baseType: !467, size: 64, align: 64, offset: 1792)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64, align: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!336, !421}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !423, file: !343, line: 62, baseType: !471, size: 64, align: 64, offset: 1856)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64, align: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !421, !336, !336, !51}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !423, file: !343, line: 65, baseType: !475, size: 64, align: 64, offset: 1920)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64, align: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!478, !421, !336, !336}
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !423, file: !343, line: 69, baseType: !480, size: 64, align: 64, offset: 1984)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64, align: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!483, !421, !336}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64, align: 64)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !70, line: 109, baseType: !485)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !486, line: 15, size: 1408, align: 64, elements: !487)
!486 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!487 = !{!488, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !506, !510, !512, !513, !514, !515, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !485, file: !489, line: 3, baseType: !51, size: 32, align: 32)
!489 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!490 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !485, file: !489, line: 4, baseType: !51, size: 32, align: 32, offset: 32)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !485, file: !489, line: 5, baseType: !395, size: 64, align: 64, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !485, file: !489, line: 7, baseType: !149, size: 64, align: 64, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !485, file: !489, line: 8, baseType: !421, size: 64, align: 64, offset: 192)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !485, file: !489, line: 9, baseType: !55, size: 64, align: 64, offset: 256)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !485, file: !489, line: 10, baseType: !55, size: 64, align: 64, offset: 320)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !485, file: !489, line: 11, baseType: !348, size: 64, align: 64, offset: 384)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !485, file: !489, line: 12, baseType: !51, size: 32, align: 32, offset: 448)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !485, file: !489, line: 13, baseType: !55, size: 64, align: 64, offset: 512)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !485, file: !489, line: 15, baseType: !500, size: 64, align: 64, offset: 576)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64, align: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{null, !503}
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64, align: 64)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !70, line: 108, baseType: !505)
!505 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !70, line: 108, flags: DIFlagFwdDecl)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !485, file: !489, line: 17, baseType: !507, size: 64, align: 64, offset: 640)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64, align: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!336, !503}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !485, file: !511, line: 5, baseType: !55, size: 64, align: 64, offset: 704)
!511 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!512 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !485, file: !511, line: 6, baseType: !55, size: 64, align: 64, offset: 768)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !485, file: !511, line: 7, baseType: !348, size: 64, align: 64, offset: 832)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !485, file: !511, line: 9, baseType: !395, size: 64, align: 64, offset: 896)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !485, file: !511, line: 10, baseType: !516, size: 64, align: 64, offset: 960)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64, align: 64)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !70, line: 111, baseType: !518)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !519, line: 13, size: 576, align: 64, elements: !520)
!519 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!520 = !{!521, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !539, !540}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !518, file: !522, line: 3, baseType: !51, size: 32, align: 32)
!522 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!523 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !518, file: !522, line: 4, baseType: !51, size: 32, align: 32, offset: 32)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !518, file: !522, line: 6, baseType: !348, size: 64, align: 64, offset: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !518, file: !522, line: 8, baseType: !55, size: 64, align: 64, offset: 128)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !518, file: !522, line: 9, baseType: !55, size: 64, align: 64, offset: 192)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !518, file: !522, line: 10, baseType: !55, size: 64, align: 64, offset: 256)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !518, file: !522, line: 11, baseType: !51, size: 32, align: 32, offset: 320)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !518, file: !522, line: 14, baseType: !119, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !518, file: !522, line: 15, baseType: !119, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !518, file: !522, line: 18, baseType: !119, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !518, file: !522, line: 19, baseType: !119, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !518, file: !522, line: 20, baseType: !119, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !518, file: !522, line: 21, baseType: !119, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !518, file: !522, line: 22, baseType: !536, size: 64, align: 8, offset: 360)
!536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 64, align: 8, elements: !537)
!537 = !{!538}
!538 = !DISubrange(count: 8)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !518, file: !522, line: 26, baseType: !149, size: 64, align: 64, offset: 448)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !518, file: !522, line: 28, baseType: !516, size: 64, align: 64, offset: 512)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !485, file: !511, line: 12, baseType: !119, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !485, file: !511, line: 13, baseType: !55, size: 64, align: 64, offset: 1088)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !485, file: !511, line: 14, baseType: !51, size: 32, align: 32, offset: 1152)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !485, file: !511, line: 15, baseType: !55, size: 64, align: 64, offset: 1216)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !485, file: !511, line: 17, baseType: !119, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !485, file: !511, line: 18, baseType: !119, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !485, file: !511, line: 19, baseType: !119, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !485, file: !511, line: 20, baseType: !119, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !485, file: !511, line: 22, baseType: !119, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !485, file: !511, line: 23, baseType: !119, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !485, file: !511, line: 24, baseType: !119, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !485, file: !511, line: 25, baseType: !119, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !485, file: !511, line: 26, baseType: !119, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !485, file: !511, line: 31, baseType: !555, size: 64, align: 64, offset: 1344)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64, align: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!55, !483}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !423, file: !343, line: 70, baseType: !559, size: 64, align: 64, offset: 2048)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64, align: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{!562, !421, !336}
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64, align: 64)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !70, line: 110, baseType: !564)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !565, line: 15, size: 960, align: 64, elements: !566)
!565 = !DIFile(filename: "../../../src/core/queries.h", directory: "/home/lichi/Desktop/irssi/task1")
!566 = !{!567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !581, !582, !583, !584}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !564, file: !489, line: 3, baseType: !51, size: 32, align: 32)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !564, file: !489, line: 4, baseType: !51, size: 32, align: 32, offset: 32)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !564, file: !489, line: 5, baseType: !395, size: 64, align: 64, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !564, file: !489, line: 7, baseType: !149, size: 64, align: 64, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !564, file: !489, line: 8, baseType: !421, size: 64, align: 64, offset: 192)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !564, file: !489, line: 9, baseType: !55, size: 64, align: 64, offset: 256)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !564, file: !489, line: 10, baseType: !55, size: 64, align: 64, offset: 320)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !564, file: !489, line: 11, baseType: !348, size: 64, align: 64, offset: 384)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !564, file: !489, line: 12, baseType: !51, size: 32, align: 32, offset: 448)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !564, file: !489, line: 13, baseType: !55, size: 64, align: 64, offset: 512)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !564, file: !489, line: 15, baseType: !500, size: 64, align: 64, offset: 576)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !564, file: !489, line: 17, baseType: !507, size: 64, align: 64, offset: 640)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !564, file: !580, line: 5, baseType: !55, size: 64, align: 64, offset: 704)
!580 = !DIFile(filename: "../../../src/core/query-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!581 = !DIDerivedType(tag: DW_TAG_member, name: "server_tag", scope: !564, file: !580, line: 6, baseType: !55, size: 64, align: 64, offset: 768)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "last_unread_msg", scope: !564, file: !580, line: 7, baseType: !348, size: 64, align: 64, offset: 832)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "unwanted", scope: !564, file: !580, line: 9, baseType: !119, size: 1, align: 32, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !564, file: !580, line: 11, baseType: !119, size: 1, align: 32, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !423, file: !343, line: 71, baseType: !586, size: 64, align: 64, offset: 2112)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64, align: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{!51, !336, !336}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !423, file: !343, line: 73, baseType: !586, size: 64, align: 64, offset: 2176)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !340, file: !343, line: 55, baseType: !459, size: 64, align: 64, offset: 1664)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !340, file: !343, line: 57, baseType: !463, size: 64, align: 64, offset: 1728)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !340, file: !343, line: 60, baseType: !467, size: 64, align: 64, offset: 1792)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !340, file: !343, line: 62, baseType: !471, size: 64, align: 64, offset: 1856)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !340, file: !343, line: 65, baseType: !475, size: 64, align: 64, offset: 1920)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !340, file: !343, line: 69, baseType: !480, size: 64, align: 64, offset: 1984)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !340, file: !343, line: 70, baseType: !559, size: 64, align: 64, offset: 2048)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !340, file: !343, line: 71, baseType: !586, size: 64, align: 64, offset: 2112)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !340, file: !343, line: 73, baseType: !586, size: 64, align: 64, offset: 2176)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !340, file: !47, line: 46, baseType: !210, size: 64, align: 64, offset: 2240)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !340, file: !47, line: 47, baseType: !210, size: 64, align: 64, offset: 2304)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !340, file: !47, line: 48, baseType: !602, size: 64, align: 64, offset: 2368)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64, align: 64)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !45, line: 8, baseType: !604)
!604 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !45, line: 8, flags: DIFlagFwdDecl)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !340, file: !47, line: 49, baseType: !210, size: 64, align: 64, offset: 2432)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !340, file: !47, line: 51, baseType: !55, size: 64, align: 64, offset: 2496)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !340, file: !47, line: 53, baseType: !55, size: 64, align: 64, offset: 2560)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !340, file: !47, line: 54, baseType: !55, size: 64, align: 64, offset: 2624)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !340, file: !47, line: 55, baseType: !55, size: 64, align: 64, offset: 2688)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !340, file: !47, line: 56, baseType: !55, size: 64, align: 64, offset: 2752)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !340, file: !47, line: 57, baseType: !51, size: 32, align: 32, offset: 2816)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !340, file: !47, line: 59, baseType: !119, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !340, file: !47, line: 60, baseType: !119, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !340, file: !47, line: 62, baseType: !119, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !340, file: !47, line: 63, baseType: !119, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !340, file: !47, line: 64, baseType: !119, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !340, file: !47, line: 65, baseType: !119, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !340, file: !47, line: 66, baseType: !119, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !340, file: !47, line: 67, baseType: !119, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !340, file: !47, line: 68, baseType: !119, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !340, file: !47, line: 69, baseType: !119, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !340, file: !47, line: 70, baseType: !119, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !340, file: !47, line: 71, baseType: !119, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !340, file: !47, line: 72, baseType: !119, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !340, file: !47, line: 74, baseType: !51, size: 32, align: 32, offset: 2880)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !340, file: !47, line: 75, baseType: !51, size: 32, align: 32, offset: 2912)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !340, file: !47, line: 76, baseType: !51, size: 32, align: 32, offset: 2944)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !340, file: !47, line: 77, baseType: !51, size: 32, align: 32, offset: 2976)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !340, file: !47, line: 79, baseType: !395, size: 64, align: 64, offset: 3008)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !340, file: !47, line: 80, baseType: !210, size: 64, align: 64, offset: 3072)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !340, file: !47, line: 81, baseType: !210, size: 64, align: 64, offset: 3136)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !340, file: !47, line: 83, baseType: !249, size: 64, align: 64, offset: 3200)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !340, file: !47, line: 84, baseType: !201, size: 32, align: 32, offset: 3264)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !340, file: !47, line: 87, baseType: !51, size: 32, align: 32, offset: 3296)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !340, file: !47, line: 91, baseType: !210, size: 64, align: 64, offset: 3328)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !340, file: !47, line: 92, baseType: !407, size: 128, align: 64, offset: 3392)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !340, file: !47, line: 93, baseType: !407, size: 128, align: 64, offset: 3520)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !340, file: !47, line: 95, baseType: !51, size: 32, align: 32, offset: 3648)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !340, file: !47, line: 96, baseType: !51, size: 32, align: 32, offset: 3680)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !340, file: !47, line: 97, baseType: !51, size: 32, align: 32, offset: 3712)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !340, file: !47, line: 100, baseType: !210, size: 64, align: 64, offset: 3776)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !340, file: !47, line: 103, baseType: !210, size: 64, align: 64, offset: 3840)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !340, file: !47, line: 106, baseType: !210, size: 64, align: 64, offset: 3904)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !340, file: !47, line: 108, baseType: !395, size: 64, align: 64, offset: 3968)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !340, file: !47, line: 109, baseType: !210, size: 64, align: 64, offset: 4032)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !340, file: !47, line: 111, baseType: !210, size: 64, align: 64, offset: 4096)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !340, file: !47, line: 114, baseType: !149, size: 64, align: 64, offset: 4160)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !340, file: !47, line: 116, baseType: !395, size: 64, align: 64, offset: 4224)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !340, file: !47, line: 117, baseType: !650, size: 32768, align: 64, offset: 4288)
!650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !651, size: 32768, align: 64, elements: !700)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !652, line: 10, size: 128, align: 64, elements: !653)
!652 = !DIFile(filename: "modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!653 = !{!654, !699}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !651, file: !652, line: 11, baseType: !655, size: 64, align: 64)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64, align: 64)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !652, line: 7, baseType: !657)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !659, !336, !56, !56, !55, !249}
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64, align: 64)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !45, line: 7, baseType: !661)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !662, line: 15, size: 1600, align: 64, elements: !663)
!662 = !DIFile(filename: "irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!663 = !{!664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !661, file: !489, line: 3, baseType: !51, size: 32, align: 32)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !661, file: !489, line: 4, baseType: !51, size: 32, align: 32, offset: 32)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !661, file: !489, line: 5, baseType: !395, size: 64, align: 64, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !661, file: !489, line: 7, baseType: !149, size: 64, align: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !661, file: !489, line: 8, baseType: !338, size: 64, align: 64, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !661, file: !489, line: 9, baseType: !55, size: 64, align: 64, offset: 256)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !661, file: !489, line: 10, baseType: !55, size: 64, align: 64, offset: 320)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !661, file: !489, line: 11, baseType: !348, size: 64, align: 64, offset: 384)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !661, file: !489, line: 12, baseType: !51, size: 32, align: 32, offset: 448)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !661, file: !489, line: 13, baseType: !55, size: 64, align: 64, offset: 512)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !661, file: !489, line: 15, baseType: !500, size: 64, align: 64, offset: 576)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !661, file: !489, line: 17, baseType: !507, size: 64, align: 64, offset: 640)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !661, file: !511, line: 5, baseType: !55, size: 64, align: 64, offset: 704)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !661, file: !511, line: 6, baseType: !55, size: 64, align: 64, offset: 768)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !661, file: !511, line: 7, baseType: !348, size: 64, align: 64, offset: 832)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !661, file: !511, line: 9, baseType: !395, size: 64, align: 64, offset: 896)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !661, file: !511, line: 10, baseType: !516, size: 64, align: 64, offset: 960)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !661, file: !511, line: 12, baseType: !119, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !661, file: !511, line: 13, baseType: !55, size: 64, align: 64, offset: 1088)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !661, file: !511, line: 14, baseType: !51, size: 32, align: 32, offset: 1152)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !661, file: !511, line: 15, baseType: !55, size: 64, align: 64, offset: 1216)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !661, file: !511, line: 17, baseType: !119, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !661, file: !511, line: 18, baseType: !119, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !661, file: !511, line: 19, baseType: !119, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !661, file: !511, line: 20, baseType: !119, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !661, file: !511, line: 22, baseType: !119, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !661, file: !511, line: 23, baseType: !119, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !661, file: !511, line: 24, baseType: !119, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !661, file: !511, line: 25, baseType: !119, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !661, file: !511, line: 26, baseType: !119, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !661, file: !511, line: 31, baseType: !555, size: 64, align: 64, offset: 1344)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !661, file: !662, line: 18, baseType: !210, size: 64, align: 64, offset: 1408)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !661, file: !662, line: 20, baseType: !348, size: 64, align: 64, offset: 1472)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !661, file: !662, line: 21, baseType: !51, size: 32, align: 32, offset: 1536)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !661, file: !662, line: 22, baseType: !51, size: 32, align: 32, offset: 1568)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !651, file: !652, line: 12, baseType: !56, size: 8, align: 8, offset: 64)
!700 = !{!701}
!701 = !DISubrange(count: 256)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !340, file: !47, line: 118, baseType: !703, size: 2048, align: 8, offset: 37056)
!703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 2048, align: 8, elements: !700)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !340, file: !47, line: 120, baseType: !586, size: 64, align: 64, offset: 39104)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !706, line: 9, baseType: !707)
!706 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64, align: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{null, !710, !710, !710, !710, !710, !710}
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64, align: 64)
!711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64, align: 64)
!713 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashFunc", file: !92, line: 90, baseType: !715)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64, align: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{!201, !718}
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "gconstpointer", file: !92, line: 78, baseType: !710)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCompareFunc", file: !92, line: 80, baseType: !720)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64, align: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!91, !718, !718}
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "GDestroyNotify", file: !92, line: 87, baseType: !156)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHFunc", file: !92, line: 91, baseType: !725)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64, align: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{null, !148, !148, !148}
!728 = !{!729}
!729 = distinct !DIGlobalVariable(name: "cmd_tag", scope: !0, file: !730, line: 67, type: !51, isLocal: true, isDefinition: true, variable: i32* @cmd_tag)
!730 = !DIFile(filename: "irc-servers.c", directory: "/home/lichi/Desktop/irssi/task1")
!731 = !{i32 2, !"Dwarf Version", i32 4}
!732 = !{i32 2, !"Debug Info Version", i32 3}
!733 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!734 = distinct !DISubprogram(name: "irc_server_init_connect", scope: !730, file: !730, line: 298, type: !735, isLocal: false, isDefinition: true, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !737)
!735 = !DISubroutineType(types: !736)
!736 = !{!421, !293}
!737 = !{}
!738 = !DILocalVariable(name: "conn", arg: 1, scope: !734, file: !730, line: 298, type: !293)
!739 = !DIExpression()
!740 = !DILocation(line: 298, column: 57, scope: !734)
!741 = !DILocalVariable(name: "ircconn", scope: !734, file: !730, line: 300, type: !43)
!742 = !DILocation(line: 300, column: 26, scope: !734)
!743 = !DILocalVariable(name: "server", scope: !734, file: !730, line: 301, type: !338)
!744 = !DILocation(line: 301, column: 18, scope: !734)
!745 = !DILocation(line: 303, column: 2, scope: !734)
!746 = distinct !{!746, !745}
!747 = !DILocation(line: 303, column: 106, scope: !748)
!748 = !DILexicalBlockFile(scope: !749, file: !730, discriminator: 1)
!749 = distinct !DILexicalBlock(scope: !750, file: !730, line: 303, column: 10)
!750 = distinct !DILexicalBlock(scope: !734, file: !730, line: 303, column: 4)
!751 = !DILocation(line: 303, column: 88, scope: !748)
!752 = !DILocation(line: 303, column: 65, scope: !748)
!753 = !DILocation(line: 303, column: 64, scope: !748)
!754 = !DILocation(line: 303, column: 39, scope: !755)
!755 = !DILexicalBlockFile(scope: !748, file: !730, discriminator: 7)
!756 = !DILocation(line: 303, column: 12, scope: !748)
!757 = !DILocation(line: 303, column: 10, scope: !748)
!758 = !DILocation(line: 303, column: 11, scope: !759)
!759 = !DILexicalBlockFile(scope: !749, file: !730, discriminator: 2)
!760 = !DILocation(line: 303, column: 10, scope: !761)
!761 = !DILexicalBlockFile(scope: !750, file: !730, discriminator: 3)
!762 = !DILocation(line: 303, column: 30, scope: !763)
!763 = !DILexicalBlockFile(scope: !764, file: !730, discriminator: 4)
!764 = distinct !DILexicalBlock(scope: !749, file: !730, line: 303, column: 28)
!765 = !DILocation(line: 303, column: 39, scope: !766)
!766 = !DILexicalBlockFile(scope: !767, file: !730, discriminator: 5)
!767 = distinct !DILexicalBlock(scope: !749, file: !730, line: 303, column: 37)
!768 = !DILocation(line: 303, column: 139, scope: !766)
!769 = !DILocation(line: 303, column: 7, scope: !770)
!770 = !DILexicalBlockFile(scope: !750, file: !730, discriminator: 6)
!771 = !DILocation(line: 304, column: 6, scope: !772)
!772 = distinct !DILexicalBlock(scope: !734, file: !730, line: 304, column: 6)
!773 = !DILocation(line: 304, column: 12, scope: !772)
!774 = !DILocation(line: 304, column: 20, scope: !772)
!775 = !DILocation(line: 304, column: 27, scope: !772)
!776 = !DILocation(line: 304, column: 31, scope: !777)
!777 = !DILexicalBlockFile(scope: !772, file: !730, discriminator: 1)
!778 = !DILocation(line: 304, column: 37, scope: !777)
!779 = !DILocation(line: 304, column: 30, scope: !777)
!780 = !DILocation(line: 304, column: 45, scope: !777)
!781 = !DILocation(line: 304, column: 6, scope: !777)
!782 = !DILocation(line: 304, column: 54, scope: !783)
!783 = !DILexicalBlockFile(scope: !772, file: !730, discriminator: 2)
!784 = !DILocation(line: 305, column: 6, scope: !785)
!785 = distinct !DILexicalBlock(scope: !734, file: !730, line: 305, column: 6)
!786 = !DILocation(line: 305, column: 12, scope: !785)
!787 = !DILocation(line: 305, column: 17, scope: !785)
!788 = !DILocation(line: 305, column: 24, scope: !785)
!789 = !DILocation(line: 305, column: 28, scope: !790)
!790 = !DILexicalBlockFile(scope: !785, file: !730, discriminator: 1)
!791 = !DILocation(line: 305, column: 34, scope: !790)
!792 = !DILocation(line: 305, column: 27, scope: !790)
!793 = !DILocation(line: 305, column: 39, scope: !790)
!794 = !DILocation(line: 305, column: 6, scope: !790)
!795 = !DILocation(line: 305, column: 48, scope: !796)
!796 = !DILexicalBlockFile(scope: !785, file: !730, discriminator: 2)
!797 = !DILocation(line: 307, column: 31, scope: !734)
!798 = !DILocation(line: 307, column: 12, scope: !734)
!799 = !DILocation(line: 307, column: 9, scope: !734)
!800 = !DILocation(line: 308, column: 23, scope: !734)
!801 = !DILocation(line: 308, column: 2, scope: !734)
!802 = !DILocation(line: 308, column: 10, scope: !734)
!803 = !DILocation(line: 308, column: 20, scope: !734)
!804 = !DILocation(line: 310, column: 39, scope: !734)
!805 = !DILocation(line: 310, column: 12, scope: !734)
!806 = !DILocation(line: 310, column: 10, scope: !734)
!807 = !DILocation(line: 311, column: 20, scope: !734)
!808 = !DILocation(line: 311, column: 2, scope: !734)
!809 = !DILocation(line: 311, column: 10, scope: !734)
!810 = !DILocation(line: 311, column: 18, scope: !734)
!811 = !DILocation(line: 312, column: 28, scope: !734)
!812 = !DILocation(line: 312, column: 9, scope: !734)
!813 = !DILocation(line: 314, column: 6, scope: !814)
!814 = distinct !DILexicalBlock(scope: !734, file: !730, line: 314, column: 6)
!815 = !DILocation(line: 314, column: 14, scope: !814)
!816 = !DILocation(line: 314, column: 23, scope: !814)
!817 = !DILocation(line: 314, column: 28, scope: !814)
!818 = !DILocation(line: 314, column: 6, scope: !734)
!819 = !DILocation(line: 316, column: 4, scope: !820)
!820 = distinct !DILexicalBlock(scope: !814, file: !730, line: 314, column: 34)
!821 = !DILocation(line: 316, column: 12, scope: !820)
!822 = !DILocation(line: 316, column: 21, scope: !820)
!823 = !DILocation(line: 315, column: 3, scope: !820)
!824 = !DILocation(line: 315, column: 11, scope: !820)
!825 = !DILocation(line: 315, column: 20, scope: !820)
!826 = !DILocation(line: 315, column: 25, scope: !820)
!827 = !DILocation(line: 317, column: 2, scope: !820)
!828 = !DILocation(line: 319, column: 28, scope: !734)
!829 = !DILocation(line: 319, column: 37, scope: !734)
!830 = !DILocation(line: 319, column: 53, scope: !734)
!831 = !DILocation(line: 320, column: 3, scope: !734)
!832 = !DILocation(line: 320, column: 12, scope: !734)
!833 = !DILocation(line: 319, column: 28, scope: !834)
!834 = !DILexicalBlockFile(scope: !734, file: !730, discriminator: 1)
!835 = !DILocation(line: 320, column: 30, scope: !834)
!836 = !DILocation(line: 319, column: 28, scope: !837)
!837 = !DILexicalBlockFile(scope: !734, file: !730, discriminator: 2)
!838 = !DILocation(line: 319, column: 28, scope: !839)
!839 = !DILexicalBlockFile(scope: !734, file: !730, discriminator: 3)
!840 = !DILocation(line: 319, column: 2, scope: !839)
!841 = !DILocation(line: 319, column: 10, scope: !839)
!842 = !DILocation(line: 319, column: 26, scope: !839)
!843 = !DILocation(line: 321, column: 29, scope: !734)
!844 = !DILocation(line: 321, column: 38, scope: !734)
!845 = !DILocation(line: 321, column: 55, scope: !734)
!846 = !DILocation(line: 322, column: 3, scope: !734)
!847 = !DILocation(line: 322, column: 12, scope: !734)
!848 = !DILocation(line: 321, column: 29, scope: !834)
!849 = !DILocation(line: 322, column: 31, scope: !834)
!850 = !DILocation(line: 321, column: 29, scope: !837)
!851 = !DILocation(line: 321, column: 29, scope: !839)
!852 = !DILocation(line: 321, column: 2, scope: !839)
!853 = !DILocation(line: 321, column: 10, scope: !839)
!854 = !DILocation(line: 321, column: 27, scope: !839)
!855 = !DILocation(line: 323, column: 28, scope: !734)
!856 = !DILocation(line: 323, column: 37, scope: !734)
!857 = !DILocation(line: 323, column: 53, scope: !734)
!858 = !DILocation(line: 324, column: 3, scope: !734)
!859 = !DILocation(line: 324, column: 12, scope: !734)
!860 = !DILocation(line: 323, column: 28, scope: !834)
!861 = !DILocation(line: 323, column: 28, scope: !837)
!862 = !DILocation(line: 323, column: 28, scope: !839)
!863 = !DILocation(line: 323, column: 2, scope: !839)
!864 = !DILocation(line: 323, column: 10, scope: !839)
!865 = !DILocation(line: 323, column: 26, scope: !839)
!866 = !DILocation(line: 326, column: 29, scope: !734)
!867 = !DILocation(line: 326, column: 38, scope: !734)
!868 = !DILocation(line: 326, column: 48, scope: !734)
!869 = !DILocation(line: 327, column: 3, scope: !734)
!870 = !DILocation(line: 327, column: 12, scope: !734)
!871 = !DILocation(line: 326, column: 29, scope: !834)
!872 = !DILocation(line: 326, column: 29, scope: !837)
!873 = !DILocation(line: 326, column: 29, scope: !839)
!874 = !DILocation(line: 326, column: 2, scope: !839)
!875 = !DILocation(line: 326, column: 10, scope: !839)
!876 = !DILocation(line: 326, column: 27, scope: !839)
!877 = !DILocation(line: 328, column: 29, scope: !734)
!878 = !DILocation(line: 328, column: 38, scope: !734)
!879 = !DILocation(line: 328, column: 48, scope: !734)
!880 = !DILocation(line: 329, column: 3, scope: !734)
!881 = !DILocation(line: 329, column: 12, scope: !734)
!882 = !DILocation(line: 328, column: 29, scope: !834)
!883 = !DILocation(line: 328, column: 29, scope: !837)
!884 = !DILocation(line: 328, column: 29, scope: !839)
!885 = !DILocation(line: 328, column: 2, scope: !839)
!886 = !DILocation(line: 328, column: 10, scope: !839)
!887 = !DILocation(line: 328, column: 27, scope: !839)
!888 = !DILocation(line: 330, column: 29, scope: !734)
!889 = !DILocation(line: 330, column: 38, scope: !734)
!890 = !DILocation(line: 330, column: 48, scope: !734)
!891 = !DILocation(line: 331, column: 3, scope: !734)
!892 = !DILocation(line: 331, column: 12, scope: !734)
!893 = !DILocation(line: 330, column: 29, scope: !834)
!894 = !DILocation(line: 330, column: 29, scope: !837)
!895 = !DILocation(line: 330, column: 29, scope: !839)
!896 = !DILocation(line: 330, column: 2, scope: !839)
!897 = !DILocation(line: 330, column: 10, scope: !839)
!898 = !DILocation(line: 330, column: 27, scope: !839)
!899 = !DILocation(line: 332, column: 28, scope: !734)
!900 = !DILocation(line: 332, column: 37, scope: !734)
!901 = !DILocation(line: 332, column: 46, scope: !734)
!902 = !DILocation(line: 333, column: 3, scope: !734)
!903 = !DILocation(line: 333, column: 12, scope: !734)
!904 = !DILocation(line: 332, column: 28, scope: !834)
!905 = !DILocation(line: 332, column: 28, scope: !837)
!906 = !DILocation(line: 332, column: 28, scope: !839)
!907 = !DILocation(line: 332, column: 2, scope: !839)
!908 = !DILocation(line: 332, column: 10, scope: !839)
!909 = !DILocation(line: 332, column: 26, scope: !839)
!910 = !DILocation(line: 334, column: 29, scope: !734)
!911 = !DILocation(line: 334, column: 35, scope: !734)
!912 = !DILocation(line: 334, column: 2, scope: !734)
!913 = !DILocation(line: 334, column: 10, scope: !734)
!914 = !DILocation(line: 334, column: 19, scope: !734)
!915 = !DILocation(line: 334, column: 27, scope: !734)
!916 = !DILocation(line: 336, column: 20, scope: !734)
!917 = !DILocation(line: 336, column: 2, scope: !734)
!918 = !DILocation(line: 338, column: 44, scope: !734)
!919 = !DILocation(line: 338, column: 29, scope: !734)
!920 = !DILocation(line: 338, column: 9, scope: !734)
!921 = !DILocation(line: 339, column: 24, scope: !734)
!922 = !DILocation(line: 339, column: 9, scope: !734)
!923 = !DILocation(line: 339, column: 2, scope: !734)
!924 = !DILocation(line: 340, column: 1, scope: !734)
!925 = distinct !DISubprogram(name: "irc_server_connect", scope: !730, file: !730, line: 342, type: !926, isLocal: false, isDefinition: true, scopeLine: 343, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !737)
!926 = !DISubroutineType(types: !927)
!927 = !{null, !421}
!928 = !DILocalVariable(name: "server", arg: 1, scope: !925, file: !730, line: 342, type: !421)
!929 = !DILocation(line: 342, column: 37, scope: !925)
!930 = !DILocation(line: 344, column: 2, scope: !925)
!931 = distinct !{!931, !930}
!932 = !DILocation(line: 344, column: 10, scope: !933)
!933 = !DILexicalBlockFile(scope: !934, file: !730, discriminator: 1)
!934 = distinct !DILexicalBlock(scope: !935, file: !730, line: 344, column: 10)
!935 = distinct !DILexicalBlock(scope: !925, file: !730, line: 344, column: 4)
!936 = !DILocation(line: 344, column: 17, scope: !933)
!937 = !DILocation(line: 344, column: 5, scope: !938)
!938 = !DILexicalBlockFile(scope: !939, file: !730, discriminator: 2)
!939 = distinct !DILexicalBlock(scope: !934, file: !730, line: 344, column: 3)
!940 = !DILocation(line: 344, column: 14, scope: !941)
!941 = !DILexicalBlockFile(scope: !942, file: !730, discriminator: 3)
!942 = distinct !DILexicalBlock(scope: !934, file: !730, line: 344, column: 12)
!943 = !DILocation(line: 344, column: 101, scope: !941)
!944 = !DILocation(line: 344, column: 112, scope: !945)
!945 = !DILexicalBlockFile(scope: !935, file: !730, discriminator: 4)
!946 = !DILocation(line: 346, column: 28, scope: !947)
!947 = distinct !DILexicalBlock(scope: !925, file: !730, line: 346, column: 6)
!948 = !DILocation(line: 346, column: 7, scope: !947)
!949 = !DILocation(line: 346, column: 6, scope: !925)
!950 = !DILocation(line: 347, column: 38, scope: !951)
!951 = distinct !DILexicalBlock(scope: !947, file: !730, line: 346, column: 37)
!952 = !DILocation(line: 347, column: 46, scope: !951)
!953 = !DILocation(line: 347, column: 17, scope: !951)
!954 = !DILocation(line: 348, column: 10, scope: !951)
!955 = !DILocation(line: 348, column: 3, scope: !951)
!956 = !DILocation(line: 349, column: 2, scope: !951)
!957 = !DILocation(line: 350, column: 1, scope: !925)
!958 = distinct !DISubprogram(name: "irc_server_purge_output", scope: !730, file: !730, line: 368, type: !959, isLocal: false, isDefinition: true, scopeLine: 369, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !737)
!959 = !DISubroutineType(types: !960)
!960 = !{null, !338, !336}
!961 = !DILocalVariable(name: "server", arg: 1, scope: !958, file: !730, line: 368, type: !338)
!962 = !DILocation(line: 368, column: 46, scope: !958)
!963 = !DILocalVariable(name: "target", arg: 2, scope: !958, file: !730, line: 368, type: !336)
!964 = !DILocation(line: 368, column: 66, scope: !958)
!965 = !DILocalVariable(name: "tmp", scope: !958, file: !730, line: 370, type: !210)
!966 = !DILocation(line: 370, column: 10, scope: !958)
!967 = !DILocalVariable(name: "next", scope: !958, file: !730, line: 370, type: !210)
!968 = !DILocation(line: 370, column: 16, scope: !958)
!969 = !DILocalVariable(name: "link", scope: !958, file: !730, line: 370, type: !210)
!970 = !DILocation(line: 370, column: 23, scope: !958)
!971 = !DILocalVariable(name: "redirect", scope: !958, file: !730, line: 371, type: !602)
!972 = !DILocation(line: 371, column: 23, scope: !958)
!973 = !DILocalVariable(name: "cmd", scope: !958, file: !730, line: 372, type: !55)
!974 = !DILocation(line: 372, column: 8, scope: !958)
!975 = !DILocation(line: 374, column: 6, scope: !976)
!976 = distinct !DILexicalBlock(scope: !958, file: !730, line: 374, column: 6)
!977 = !DILocation(line: 374, column: 13, scope: !976)
!978 = !DILocation(line: 374, column: 20, scope: !976)
!979 = !DILocation(line: 374, column: 24, scope: !980)
!980 = !DILexicalBlockFile(scope: !976, file: !730, discriminator: 1)
!981 = !DILocation(line: 374, column: 23, scope: !980)
!982 = !DILocation(line: 374, column: 31, scope: !980)
!983 = !DILocation(line: 374, column: 6, scope: !980)
!984 = !DILocation(line: 375, column: 24, scope: !976)
!985 = !DILocation(line: 375, column: 17, scope: !976)
!986 = !DILocation(line: 377, column: 13, scope: !987)
!987 = distinct !DILexicalBlock(scope: !958, file: !730, line: 377, column: 2)
!988 = !DILocation(line: 377, column: 21, scope: !987)
!989 = !DILocation(line: 377, column: 11, scope: !987)
!990 = !DILocation(line: 377, column: 7, scope: !987)
!991 = !DILocation(line: 377, column: 31, scope: !992)
!992 = !DILexicalBlockFile(scope: !993, file: !730, discriminator: 1)
!993 = distinct !DILexicalBlock(scope: !987, file: !730, line: 377, column: 2)
!994 = !DILocation(line: 377, column: 35, scope: !992)
!995 = !DILocation(line: 377, column: 2, scope: !992)
!996 = !DILocation(line: 378, column: 10, scope: !997)
!997 = distinct !DILexicalBlock(scope: !993, file: !730, line: 377, column: 55)
!998 = !DILocation(line: 378, column: 15, scope: !997)
!999 = !DILocation(line: 378, column: 21, scope: !997)
!1000 = !DILocation(line: 378, column: 8, scope: !997)
!1001 = !DILocation(line: 379, column: 9, scope: !997)
!1002 = !DILocation(line: 379, column: 14, scope: !997)
!1003 = !DILocation(line: 379, column: 7, scope: !997)
!1004 = !DILocation(line: 380, column: 28, scope: !997)
!1005 = !DILocation(line: 380, column: 33, scope: !997)
!1006 = !DILocation(line: 380, column: 39, scope: !997)
!1007 = !DILocation(line: 380, column: 26, scope: !997)
!1008 = !DILocation(line: 382, column: 8, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !997, file: !730, line: 382, column: 7)
!1010 = !DILocation(line: 382, column: 15, scope: !1009)
!1011 = !DILocation(line: 382, column: 22, scope: !1009)
!1012 = !DILocation(line: 382, column: 44, scope: !1013)
!1013 = !DILexicalBlockFile(scope: !1009, file: !730, discriminator: 1)
!1014 = !DILocation(line: 382, column: 49, scope: !1013)
!1015 = !DILocation(line: 382, column: 25, scope: !1013)
!1016 = !DILocation(line: 382, column: 58, scope: !1013)
!1017 = !DILocation(line: 383, column: 27, scope: !1009)
!1018 = !DILocation(line: 383, column: 7, scope: !1009)
!1019 = !DILocation(line: 383, column: 44, scope: !1009)
!1020 = !DILocation(line: 382, column: 7, scope: !1021)
!1021 = !DILexicalBlockFile(scope: !997, file: !730, discriminator: 2)
!1022 = !DILocation(line: 385, column: 32, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1009, file: !730, line: 383, column: 50)
!1024 = !DILocation(line: 385, column: 37, scope: !1023)
!1025 = !DILocation(line: 385, column: 30, scope: !1023)
!1026 = !DILocation(line: 387, column: 25, scope: !1023)
!1027 = !DILocation(line: 387, column: 33, scope: !1023)
!1028 = !DILocation(line: 387, column: 43, scope: !1023)
!1029 = !DILocation(line: 387, column: 5, scope: !1023)
!1030 = !DILocation(line: 386, column: 4, scope: !1023)
!1031 = !DILocation(line: 386, column: 12, scope: !1023)
!1032 = !DILocation(line: 386, column: 21, scope: !1023)
!1033 = !DILocation(line: 388, column: 40, scope: !1023)
!1034 = !DILocation(line: 388, column: 25, scope: !1023)
!1035 = !DILocation(line: 390, column: 8, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1023, file: !730, line: 390, column: 8)
!1037 = !DILocation(line: 390, column: 17, scope: !1036)
!1038 = !DILocation(line: 390, column: 8, scope: !1023)
!1039 = !DILocation(line: 391, column: 57, scope: !1036)
!1040 = !DILocation(line: 391, column: 33, scope: !1036)
!1041 = !DILocation(line: 395, column: 20, scope: !1023)
!1042 = !DILocation(line: 395, column: 28, scope: !1023)
!1043 = !DILocation(line: 395, column: 38, scope: !1023)
!1044 = !DILocation(line: 395, column: 5, scope: !1023)
!1045 = !DILocation(line: 394, column: 4, scope: !1023)
!1046 = !DILocation(line: 394, column: 12, scope: !1023)
!1047 = !DILocation(line: 394, column: 21, scope: !1023)
!1048 = !DILocation(line: 396, column: 32, scope: !1023)
!1049 = !DILocation(line: 396, column: 25, scope: !1023)
!1050 = !DILocation(line: 397, column: 25, scope: !1023)
!1051 = !DILocation(line: 397, column: 33, scope: !1023)
!1052 = !DILocation(line: 397, column: 41, scope: !1023)
!1053 = !DILocation(line: 398, column: 3, scope: !1023)
!1054 = !DILocation(line: 399, column: 2, scope: !997)
!1055 = !DILocation(line: 377, column: 49, scope: !1056)
!1056 = !DILexicalBlockFile(scope: !993, file: !730, discriminator: 2)
!1057 = !DILocation(line: 377, column: 47, scope: !1056)
!1058 = !DILocation(line: 377, column: 2, scope: !1056)
!1059 = distinct !{!1059, !1060}
!1060 = !DILocation(line: 377, column: 2, scope: !958)
!1061 = !DILocation(line: 400, column: 1, scope: !958)
!1062 = distinct !DISubprogram(name: "command_has_target", scope: !730, file: !730, line: 353, type: !587, isLocal: true, isDefinition: true, scopeLine: 354, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !737)
!1063 = !DILocalVariable(name: "cmd", arg: 1, scope: !1062, file: !730, line: 353, type: !336)
!1064 = !DILocation(line: 353, column: 43, scope: !1062)
!1065 = !DILocalVariable(name: "target", arg: 2, scope: !1062, file: !730, line: 353, type: !336)
!1066 = !DILocation(line: 353, column: 60, scope: !1062)
!1067 = !DILocalVariable(name: "p", scope: !1062, file: !730, line: 355, type: !336)
!1068 = !DILocation(line: 355, column: 14, scope: !1062)
!1069 = !DILocalVariable(name: "len", scope: !1062, file: !730, line: 356, type: !51)
!1070 = !DILocation(line: 356, column: 13, scope: !1062)
!1071 = !DILocation(line: 359, column: 20, scope: !1062)
!1072 = !DILocation(line: 359, column: 13, scope: !1062)
!1073 = !DILocation(line: 359, column: 11, scope: !1062)
!1074 = !DILocation(line: 360, column: 6, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1062, file: !730, line: 360, column: 6)
!1076 = !DILocation(line: 360, column: 8, scope: !1075)
!1077 = !DILocation(line: 360, column: 6, scope: !1062)
!1078 = !DILocation(line: 360, column: 16, scope: !1079)
!1079 = !DILexicalBlockFile(scope: !1075, file: !730, discriminator: 1)
!1080 = !DILocation(line: 361, column: 3, scope: !1062)
!1081 = !DILocation(line: 363, column: 22, scope: !1062)
!1082 = !DILocation(line: 363, column: 15, scope: !1062)
!1083 = !DILocation(line: 363, column: 13, scope: !1062)
!1084 = !DILocation(line: 364, column: 17, scope: !1062)
!1085 = !DILocation(line: 364, column: 20, scope: !1062)
!1086 = !DILocation(line: 364, column: 28, scope: !1062)
!1087 = !DILocation(line: 364, column: 9, scope: !1062)
!1088 = !DILocation(line: 364, column: 33, scope: !1062)
!1089 = !DILocation(line: 364, column: 38, scope: !1062)
!1090 = !DILocation(line: 364, column: 43, scope: !1091)
!1091 = !DILexicalBlockFile(scope: !1062, file: !730, discriminator: 1)
!1092 = !DILocation(line: 364, column: 41, scope: !1091)
!1093 = !DILocation(line: 364, column: 48, scope: !1091)
!1094 = !DILocation(line: 364, column: 38, scope: !1095)
!1095 = !DILexicalBlockFile(scope: !1062, file: !730, discriminator: 2)
!1096 = !DILocation(line: 364, column: 2, scope: !1095)
!1097 = !DILocation(line: 365, column: 1, scope: !1062)
!1098 = distinct !DISubprogram(name: "irc_server_send_action", scope: !730, file: !730, line: 484, type: !1099, isLocal: false, isDefinition: true, scopeLine: 485, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !737)
!1099 = !DISubroutineType(types: !1100)
!1100 = !{null, !338, !336, !336}
!1101 = !DILocalVariable(name: "server", arg: 1, scope: !1098, file: !730, line: 484, type: !338)
!1102 = !DILocation(line: 484, column: 45, scope: !1098)
!1103 = !DILocalVariable(name: "target", arg: 2, scope: !1098, file: !730, line: 484, type: !336)
!1104 = !DILocation(line: 484, column: 65, scope: !1098)
!1105 = !DILocalVariable(name: "data", arg: 3, scope: !1098, file: !730, line: 484, type: !336)
!1106 = !DILocation(line: 484, column: 85, scope: !1098)
!1107 = !DILocalVariable(name: "recoded", scope: !1098, file: !730, line: 486, type: !55)
!1108 = !DILocation(line: 486, column: 8, scope: !1098)
!1109 = !DILocation(line: 488, column: 57, scope: !1098)
!1110 = !DILocation(line: 488, column: 39, scope: !1098)
!1111 = !DILocation(line: 488, column: 24, scope: !1098)
!1112 = !DILocation(line: 488, column: 36, scope: !1098)
!1113 = !DILocation(line: 488, column: 42, scope: !1098)
!1114 = !DILocation(line: 488, column: 12, scope: !1115)
!1115 = !DILexicalBlockFile(scope: !1098, file: !730, discriminator: 1)
!1116 = !DILocation(line: 488, column: 10, scope: !1098)
!1117 = !DILocation(line: 489, column: 16, scope: !1098)
!1118 = !DILocation(line: 489, column: 57, scope: !1098)
!1119 = !DILocation(line: 489, column: 65, scope: !1098)
!1120 = !DILocation(line: 489, column: 2, scope: !1098)
!1121 = !DILocation(line: 490, column: 9, scope: !1098)
!1122 = !DILocation(line: 490, column: 2, scope: !1098)
!1123 = !DILocation(line: 491, column: 1, scope: !1098)
!1124 = distinct !DISubprogram(name: "irc_server_split_action", scope: !730, file: !730, line: 493, type: !1125, isLocal: false, isDefinition: true, scopeLine: 495, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !737)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!478, !338, !336, !336}
!1127 = !DILocalVariable(name: "server", arg: 1, scope: !1124, file: !730, line: 493, type: !338)
!1128 = !DILocation(line: 493, column: 48, scope: !1124)
!1129 = !DILocalVariable(name: "target", arg: 2, scope: !1124, file: !730, line: 493, type: !336)
!1130 = !DILocation(line: 493, column: 68, scope: !1124)
!1131 = !DILocalVariable(name: "data", arg: 3, scope: !1124, file: !730, line: 494, type: !336)
!1132 = !DILocation(line: 494, column: 23, scope: !1124)
!1133 = !DILocation(line: 496, column: 2, scope: !1124)
!1134 = distinct !{!1134, !1133}
!1135 = !DILocation(line: 496, column: 10, scope: !1136)
!1136 = !DILexicalBlockFile(scope: !1137, file: !730, discriminator: 1)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !730, line: 496, column: 10)
!1138 = distinct !DILexicalBlock(scope: !1124, file: !730, line: 496, column: 4)
!1139 = !DILocation(line: 496, column: 17, scope: !1136)
!1140 = !DILocation(line: 496, column: 5, scope: !1141)
!1141 = !DILexicalBlockFile(scope: !1142, file: !730, discriminator: 2)
!1142 = distinct !DILexicalBlock(scope: !1137, file: !730, line: 496, column: 3)
!1143 = !DILocation(line: 496, column: 14, scope: !1144)
!1144 = !DILexicalBlockFile(scope: !1145, file: !730, discriminator: 3)
!1145 = distinct !DILexicalBlock(scope: !1137, file: !730, line: 496, column: 12)
!1146 = !DILocation(line: 496, column: 101, scope: !1144)
!1147 = !DILocation(line: 496, column: 7, scope: !1148)
!1148 = !DILexicalBlockFile(scope: !1138, file: !730, discriminator: 4)
!1149 = !DILocation(line: 497, column: 2, scope: !1124)
!1150 = distinct !{!1150, !1149}
!1151 = !DILocation(line: 497, column: 10, scope: !1152)
!1152 = !DILexicalBlockFile(scope: !1153, file: !730, discriminator: 1)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !730, line: 497, column: 10)
!1154 = distinct !DILexicalBlock(scope: !1124, file: !730, line: 497, column: 4)
!1155 = !DILocation(line: 497, column: 17, scope: !1152)
!1156 = !DILocation(line: 497, column: 5, scope: !1157)
!1157 = !DILexicalBlockFile(scope: !1158, file: !730, discriminator: 2)
!1158 = distinct !DILexicalBlock(scope: !1153, file: !730, line: 497, column: 3)
!1159 = !DILocation(line: 497, column: 14, scope: !1160)
!1160 = !DILexicalBlockFile(scope: !1161, file: !730, discriminator: 3)
!1161 = distinct !DILexicalBlock(scope: !1153, file: !730, line: 497, column: 12)
!1162 = !DILocation(line: 497, column: 101, scope: !1160)
!1163 = !DILocation(line: 497, column: 7, scope: !1164)
!1164 = !DILexicalBlockFile(scope: !1154, file: !730, discriminator: 4)
!1165 = !DILocation(line: 498, column: 2, scope: !1124)
!1166 = distinct !{!1166, !1165}
!1167 = !DILocation(line: 498, column: 10, scope: !1168)
!1168 = !DILexicalBlockFile(scope: !1169, file: !730, discriminator: 1)
!1169 = distinct !DILexicalBlock(scope: !1170, file: !730, line: 498, column: 10)
!1170 = distinct !DILexicalBlock(scope: !1124, file: !730, line: 498, column: 4)
!1171 = !DILocation(line: 498, column: 15, scope: !1168)
!1172 = !DILocation(line: 498, column: 5, scope: !1173)
!1173 = !DILexicalBlockFile(scope: !1174, file: !730, discriminator: 2)
!1174 = distinct !DILexicalBlock(scope: !1169, file: !730, line: 498, column: 3)
!1175 = !DILocation(line: 498, column: 14, scope: !1176)
!1176 = !DILexicalBlockFile(scope: !1177, file: !730, discriminator: 3)
!1177 = distinct !DILexicalBlock(scope: !1169, file: !730, line: 498, column: 12)
!1178 = !DILocation(line: 498, column: 99, scope: !1176)
!1179 = !DILocation(line: 498, column: 7, scope: !1180)
!1180 = !DILexicalBlockFile(scope: !1170, file: !730, discriminator: 4)
!1181 = !DILocation(line: 500, column: 54, scope: !1124)
!1182 = !DILocation(line: 500, column: 36, scope: !1124)
!1183 = !DILocation(line: 500, column: 21, scope: !1124)
!1184 = !DILocation(line: 500, column: 33, scope: !1124)
!1185 = !DILocation(line: 500, column: 39, scope: !1124)
!1186 = !DILocation(line: 502, column: 13, scope: !1124)
!1187 = !DILocation(line: 502, column: 21, scope: !1124)
!1188 = !DILocation(line: 502, column: 6, scope: !1124)
!1189 = !DILocation(line: 501, column: 51, scope: !1124)
!1190 = !DILocation(line: 502, column: 27, scope: !1124)
!1191 = !DILocation(line: 503, column: 13, scope: !1124)
!1192 = !DILocation(line: 503, column: 6, scope: !1124)
!1193 = !DILocation(line: 502, column: 43, scope: !1124)
!1194 = !DILocation(line: 501, column: 6, scope: !1124)
!1195 = !DILocation(line: 500, column: 9, scope: !1196)
!1196 = !DILexicalBlockFile(scope: !1124, file: !730, discriminator: 1)
!1197 = !DILocation(line: 500, column: 2, scope: !1124)
!1198 = !DILocation(line: 504, column: 1, scope: !1124)
!1199 = distinct !DISubprogram(name: "split_line", scope: !730, file: !730, line: 102, type: !1200, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !737)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!478, !1202, !336, !336, !51}
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64, align: 64)
!1203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!1204 = !DILocalVariable(name: "server", arg: 1, scope: !1199, file: !730, line: 102, type: !1202)
!1205 = !DILocation(line: 102, column: 44, scope: !1199)
!1206 = !DILocalVariable(name: "line", arg: 2, scope: !1199, file: !730, line: 102, type: !336)
!1207 = !DILocation(line: 102, column: 64, scope: !1199)
!1208 = !DILocalVariable(name: "target", arg: 3, scope: !1199, file: !730, line: 103, type: !336)
!1209 = !DILocation(line: 103, column: 17, scope: !1199)
!1210 = !DILocalVariable(name: "len", arg: 4, scope: !1199, file: !730, line: 103, type: !51)
!1211 = !DILocation(line: 103, column: 29, scope: !1199)
!1212 = !DILocalVariable(name: "start", scope: !1199, file: !730, line: 105, type: !336)
!1213 = !DILocation(line: 105, column: 14, scope: !1199)
!1214 = !DILocation(line: 105, column: 22, scope: !1199)
!1215 = !DILocalVariable(name: "end", scope: !1199, file: !730, line: 106, type: !336)
!1216 = !DILocation(line: 106, column: 14, scope: !1199)
!1217 = !DILocation(line: 106, column: 20, scope: !1199)
!1218 = !DILocalVariable(name: "onspace", scope: !1199, file: !730, line: 107, type: !169)
!1219 = !DILocation(line: 107, column: 11, scope: !1199)
!1220 = !DILocation(line: 107, column: 21, scope: !1199)
!1221 = !DILocalVariable(name: "recoded_start", scope: !1199, file: !730, line: 108, type: !55)
!1222 = !DILocation(line: 108, column: 8, scope: !1199)
!1223 = !DILocation(line: 108, column: 35, scope: !1199)
!1224 = !DILocation(line: 108, column: 43, scope: !1199)
!1225 = !DILocation(line: 108, column: 50, scope: !1199)
!1226 = !DILocation(line: 108, column: 24, scope: !1199)
!1227 = !DILocalVariable(name: "recoded_end", scope: !1199, file: !730, line: 109, type: !55)
!1228 = !DILocation(line: 109, column: 8, scope: !1199)
!1229 = !DILocation(line: 109, column: 33, scope: !1199)
!1230 = !DILocation(line: 109, column: 41, scope: !1199)
!1231 = !DILocation(line: 109, column: 46, scope: !1199)
!1232 = !DILocation(line: 109, column: 22, scope: !1199)
!1233 = !DILocalVariable(name: "lines", scope: !1199, file: !730, line: 110, type: !478)
!1234 = !DILocation(line: 110, column: 9, scope: !1199)
!1235 = !DILocalVariable(name: "i", scope: !1199, file: !730, line: 111, type: !51)
!1236 = !DILocation(line: 111, column: 6, scope: !1199)
!1237 = !DILocation(line: 118, column: 16, scope: !1199)
!1238 = !DILocation(line: 118, column: 9, scope: !1199)
!1239 = !DILocation(line: 118, column: 40, scope: !1199)
!1240 = !DILocation(line: 118, column: 33, scope: !1241)
!1241 = !DILexicalBlockFile(scope: !1199, file: !730, discriminator: 1)
!1242 = !DILocation(line: 118, column: 31, scope: !1199)
!1243 = !DILocation(line: 118, column: 6, scope: !1199)
!1244 = !DILocation(line: 119, column: 2, scope: !1199)
!1245 = distinct !{!1245, !1244}
!1246 = !DILocation(line: 119, column: 11, scope: !1247)
!1247 = !DILexicalBlockFile(scope: !1248, file: !730, discriminator: 1)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !730, line: 119, column: 11)
!1249 = distinct !DILexicalBlock(scope: !1199, file: !730, line: 119, column: 5)
!1250 = !DILocation(line: 119, column: 15, scope: !1247)
!1251 = !DILocation(line: 119, column: 11, scope: !1252)
!1252 = !DILexicalBlockFile(scope: !1249, file: !730, discriminator: 2)
!1253 = !DILocation(line: 119, column: 27, scope: !1254)
!1254 = !DILexicalBlockFile(scope: !1248, file: !730, discriminator: 3)
!1255 = !DILocation(line: 119, column: 119, scope: !1256)
!1256 = !DILexicalBlockFile(scope: !1249, file: !730, discriminator: 4)
!1257 = !DILocation(line: 120, column: 6, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1199, file: !730, line: 120, column: 6)
!1259 = !DILocation(line: 120, column: 10, scope: !1258)
!1260 = !DILocation(line: 120, column: 6, scope: !1199)
!1261 = !DILocation(line: 122, column: 10, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1258, file: !730, line: 120, column: 16)
!1263 = !DILocation(line: 122, column: 3, scope: !1262)
!1264 = !DILocation(line: 123, column: 10, scope: !1262)
!1265 = !DILocation(line: 123, column: 3, scope: !1262)
!1266 = !DILocation(line: 124, column: 23, scope: !1262)
!1267 = !DILocation(line: 124, column: 12, scope: !1262)
!1268 = !DILocation(line: 124, column: 9, scope: !1262)
!1269 = !DILocation(line: 125, column: 3, scope: !1262)
!1270 = !DILocation(line: 125, column: 12, scope: !1262)
!1271 = !DILocation(line: 126, column: 10, scope: !1262)
!1272 = !DILocation(line: 126, column: 3, scope: !1262)
!1273 = !DILocation(line: 129, column: 23, scope: !1199)
!1274 = !DILocation(line: 129, column: 31, scope: !1199)
!1275 = !DILocation(line: 129, column: 37, scope: !1199)
!1276 = !DILocation(line: 129, column: 45, scope: !1199)
!1277 = !DILocation(line: 129, column: 50, scope: !1199)
!1278 = !DILocation(line: 129, column: 10, scope: !1199)
!1279 = !DILocation(line: 129, column: 8, scope: !1199)
!1280 = !DILocation(line: 130, column: 9, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1199, file: !730, line: 130, column: 2)
!1282 = !DILocation(line: 130, column: 7, scope: !1281)
!1283 = !DILocation(line: 130, column: 20, scope: !1284)
!1284 = !DILexicalBlockFile(scope: !1285, file: !730, discriminator: 1)
!1285 = distinct !DILexicalBlock(scope: !1281, file: !730, line: 130, column: 2)
!1286 = !DILocation(line: 130, column: 14, scope: !1284)
!1287 = !DILocation(line: 130, column: 23, scope: !1284)
!1288 = !DILocation(line: 130, column: 2, scope: !1284)
!1289 = !DILocation(line: 131, column: 7, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !730, line: 131, column: 7)
!1291 = distinct !DILexicalBlock(scope: !1285, file: !730, line: 130, column: 36)
!1292 = !DILocation(line: 131, column: 9, scope: !1290)
!1293 = !DILocation(line: 131, column: 14, scope: !1290)
!1294 = !DILocation(line: 131, column: 18, scope: !1295)
!1295 = !DILexicalBlockFile(scope: !1290, file: !730, discriminator: 1)
!1296 = !DILocation(line: 131, column: 17, scope: !1295)
!1297 = !DILocation(line: 131, column: 24, scope: !1295)
!1298 = !DILocation(line: 131, column: 7, scope: !1295)
!1299 = !DILocalVariable(name: "tmp", scope: !1300, file: !730, line: 133, type: !55)
!1300 = distinct !DILexicalBlock(scope: !1290, file: !730, line: 131, column: 33)
!1301 = !DILocation(line: 133, column: 10, scope: !1300)
!1302 = !DILocation(line: 133, column: 22, scope: !1300)
!1303 = !DILocation(line: 133, column: 16, scope: !1300)
!1304 = !DILocation(line: 134, column: 27, scope: !1300)
!1305 = !DILocation(line: 134, column: 34, scope: !1300)
!1306 = !DILocation(line: 134, column: 15, scope: !1300)
!1307 = !DILocation(line: 134, column: 10, scope: !1300)
!1308 = !DILocation(line: 134, column: 4, scope: !1300)
!1309 = !DILocation(line: 134, column: 13, scope: !1300)
!1310 = !DILocation(line: 135, column: 11, scope: !1300)
!1311 = !DILocation(line: 135, column: 4, scope: !1300)
!1312 = !DILocation(line: 136, column: 3, scope: !1300)
!1313 = !DILocation(line: 137, column: 13, scope: !1314)
!1314 = distinct !DILexicalBlock(scope: !1291, file: !730, line: 137, column: 7)
!1315 = !DILocation(line: 137, column: 15, scope: !1314)
!1316 = !DILocation(line: 137, column: 7, scope: !1314)
!1317 = !DILocation(line: 137, column: 20, scope: !1314)
!1318 = !DILocation(line: 137, column: 27, scope: !1314)
!1319 = !DILocation(line: 137, column: 31, scope: !1320)
!1320 = !DILexicalBlockFile(scope: !1314, file: !730, discriminator: 1)
!1321 = !DILocation(line: 137, column: 30, scope: !1320)
!1322 = !DILocation(line: 137, column: 35, scope: !1320)
!1323 = !DILocation(line: 137, column: 7, scope: !1320)
!1324 = !DILocalVariable(name: "tmp", scope: !1325, file: !730, line: 139, type: !55)
!1325 = distinct !DILexicalBlock(scope: !1314, file: !730, line: 137, column: 44)
!1326 = !DILocation(line: 139, column: 10, scope: !1325)
!1327 = !DILocation(line: 139, column: 22, scope: !1325)
!1328 = !DILocation(line: 139, column: 16, scope: !1325)
!1329 = !DILocation(line: 141, column: 14, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1325, file: !730, line: 141, column: 8)
!1331 = !DILocation(line: 141, column: 16, scope: !1330)
!1332 = !DILocation(line: 141, column: 8, scope: !1330)
!1333 = !DILocation(line: 141, column: 21, scope: !1330)
!1334 = !DILocation(line: 141, column: 8, scope: !1325)
!1335 = !DILocalVariable(name: "recoded_l", scope: !1336, file: !730, line: 146, type: !55)
!1336 = distinct !DILexicalBlock(scope: !1330, file: !730, line: 141, column: 29)
!1337 = !DILocation(line: 146, column: 11, scope: !1336)
!1338 = !DILocation(line: 146, column: 34, scope: !1336)
!1339 = !DILocation(line: 147, column: 19, scope: !1336)
!1340 = !DILocation(line: 147, column: 20, scope: !1336)
!1341 = !DILocation(line: 147, column: 13, scope: !1336)
!1342 = !DILocation(line: 148, column: 13, scope: !1336)
!1343 = !DILocation(line: 146, column: 23, scope: !1336)
!1344 = !DILocation(line: 149, column: 16, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1336, file: !730, line: 149, column: 9)
!1346 = !DILocation(line: 149, column: 9, scope: !1345)
!1347 = !DILocation(line: 149, column: 37, scope: !1345)
!1348 = !DILocation(line: 149, column: 30, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !1345, file: !730, discriminator: 1)
!1350 = !DILocation(line: 149, column: 27, scope: !1345)
!1351 = !DILocation(line: 149, column: 9, scope: !1336)
!1352 = !DILocation(line: 150, column: 29, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1345, file: !730, line: 149, column: 51)
!1354 = !DILocation(line: 150, column: 40, scope: !1353)
!1355 = !DILocation(line: 150, column: 41, scope: !1353)
!1356 = !DILocation(line: 150, column: 34, scope: !1353)
!1357 = !DILocation(line: 150, column: 17, scope: !1353)
!1358 = !DILocation(line: 150, column: 12, scope: !1353)
!1359 = !DILocation(line: 150, column: 6, scope: !1353)
!1360 = !DILocation(line: 150, column: 15, scope: !1353)
!1361 = !DILocation(line: 152, column: 6, scope: !1353)
!1362 = distinct !{!1362, !1361}
!1363 = !DILocation(line: 152, column: 21, scope: !1364)
!1364 = !DILexicalBlockFile(scope: !1365, file: !730, discriminator: 1)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !730, line: 152, column: 15)
!1366 = distinct !DILexicalBlock(scope: !1353, file: !730, line: 152, column: 9)
!1367 = !DILocation(line: 152, column: 22, scope: !1364)
!1368 = !DILocation(line: 152, column: 15, scope: !1364)
!1369 = !DILocation(line: 152, column: 42, scope: !1370)
!1370 = !DILexicalBlockFile(scope: !1371, file: !730, discriminator: 2)
!1371 = distinct !DILexicalBlock(scope: !1365, file: !730, line: 152, column: 27)
!1372 = !DILocation(line: 152, column: 43, scope: !1370)
!1373 = !DILocation(line: 152, column: 36, scope: !1370)
!1374 = !DILocation(line: 152, column: 29, scope: !1370)
!1375 = !DILocation(line: 152, column: 56, scope: !1370)
!1376 = !DILocation(line: 152, column: 57, scope: !1370)
!1377 = !DILocation(line: 152, column: 50, scope: !1370)
!1378 = !DILocation(line: 152, column: 62, scope: !1370)
!1379 = !DILocation(line: 152, column: 7, scope: !1370)
!1380 = !DILocation(line: 152, column: 9, scope: !1381)
!1381 = !DILexicalBlockFile(scope: !1366, file: !730, discriminator: 3)
!1382 = !DILocation(line: 153, column: 39, scope: !1353)
!1383 = !DILocation(line: 153, column: 47, scope: !1353)
!1384 = !DILocation(line: 153, column: 49, scope: !1353)
!1385 = !DILocation(line: 153, column: 46, scope: !1353)
!1386 = !DILocation(line: 153, column: 26, scope: !1353)
!1387 = !DILocation(line: 153, column: 15, scope: !1353)
!1388 = !DILocation(line: 153, column: 12, scope: !1353)
!1389 = !DILocation(line: 155, column: 13, scope: !1353)
!1390 = !DILocation(line: 155, column: 6, scope: !1353)
!1391 = !DILocation(line: 156, column: 13, scope: !1353)
!1392 = !DILocation(line: 156, column: 6, scope: !1353)
!1393 = !DILocation(line: 157, column: 6, scope: !1353)
!1394 = !DILocation(line: 159, column: 12, scope: !1336)
!1395 = !DILocation(line: 159, column: 5, scope: !1336)
!1396 = !DILocation(line: 160, column: 4, scope: !1336)
!1397 = !DILocation(line: 162, column: 27, scope: !1325)
!1398 = !DILocation(line: 162, column: 32, scope: !1325)
!1399 = !DILocation(line: 162, column: 15, scope: !1325)
!1400 = !DILocation(line: 162, column: 10, scope: !1325)
!1401 = !DILocation(line: 162, column: 4, scope: !1325)
!1402 = !DILocation(line: 162, column: 13, scope: !1325)
!1403 = !DILocation(line: 163, column: 11, scope: !1325)
!1404 = !DILocation(line: 163, column: 4, scope: !1325)
!1405 = !DILocation(line: 164, column: 3, scope: !1325)
!1406 = !DILocation(line: 165, column: 2, scope: !1291)
!1407 = !DILocation(line: 130, column: 32, scope: !1408)
!1408 = !DILexicalBlockFile(scope: !1285, file: !730, discriminator: 2)
!1409 = !DILocation(line: 130, column: 2, scope: !1408)
!1410 = distinct !{!1410, !1411}
!1411 = !DILocation(line: 130, column: 2, scope: !1199)
!1412 = !DILocation(line: 167, column: 9, scope: !1199)
!1413 = !DILocation(line: 167, column: 2, scope: !1199)
!1414 = !DILocation(line: 168, column: 9, scope: !1199)
!1415 = !DILocation(line: 168, column: 2, scope: !1199)
!1416 = !DILocation(line: 169, column: 9, scope: !1199)
!1417 = !DILocation(line: 169, column: 2, scope: !1199)
!1418 = !DILocation(line: 170, column: 1, scope: !1199)
!1419 = distinct !DISubprogram(name: "irc_server_send_away", scope: !730, file: !730, line: 506, type: !959, isLocal: false, isDefinition: true, scopeLine: 507, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !737)
!1420 = !DILocalVariable(name: "server", arg: 1, scope: !1419, file: !730, line: 506, type: !338)
!1421 = !DILocation(line: 506, column: 43, scope: !1419)
!1422 = !DILocalVariable(name: "reason", arg: 2, scope: !1419, file: !730, line: 506, type: !336)
!1423 = !DILocation(line: 506, column: 63, scope: !1419)
!1424 = !DILocalVariable(name: "recoded", scope: !1419, file: !730, line: 508, type: !55)
!1425 = !DILocation(line: 508, column: 8, scope: !1419)
!1426 = !DILocation(line: 510, column: 87, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1419, file: !730, line: 510, column: 6)
!1428 = !DILocation(line: 510, column: 69, scope: !1427)
!1429 = !DILocation(line: 510, column: 54, scope: !1427)
!1430 = !DILocation(line: 510, column: 53, scope: !1427)
!1431 = !DILocation(line: 510, column: 28, scope: !1432)
!1432 = !DILexicalBlockFile(scope: !1427, file: !730, discriminator: 3)
!1433 = !DILocation(line: 510, column: 9, scope: !1427)
!1434 = !DILocation(line: 510, column: 6, scope: !1419)
!1435 = !DILocation(line: 510, column: 8, scope: !1436)
!1436 = !DILexicalBlockFile(scope: !1427, file: !730, discriminator: 1)
!1437 = !DILocation(line: 510, column: 6, scope: !1438)
!1438 = !DILexicalBlockFile(scope: !1419, file: !730, discriminator: 2)
!1439 = !DILocation(line: 511, column: 3, scope: !1427)
!1440 = !DILocation(line: 513, column: 7, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1419, file: !730, line: 513, column: 6)
!1442 = !DILocation(line: 513, column: 6, scope: !1441)
!1443 = !DILocation(line: 513, column: 14, scope: !1441)
!1444 = !DILocation(line: 513, column: 22, scope: !1441)
!1445 = !DILocation(line: 513, column: 25, scope: !1446)
!1446 = !DILexicalBlockFile(scope: !1441, file: !730, discriminator: 1)
!1447 = !DILocation(line: 513, column: 33, scope: !1446)
!1448 = !DILocation(line: 513, column: 6, scope: !1446)
!1449 = !DILocation(line: 514, column: 3, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1441, file: !730, line: 513, column: 48)
!1451 = distinct !{!1451, !1449}
!1452 = !DILocation(line: 514, column: 12, scope: !1453)
!1453 = !DILexicalBlockFile(scope: !1454, file: !730, discriminator: 1)
!1454 = distinct !DILexicalBlock(scope: !1455, file: !730, line: 514, column: 12)
!1455 = distinct !DILexicalBlock(scope: !1450, file: !730, line: 514, column: 6)
!1456 = !DILocation(line: 514, column: 20, scope: !1453)
!1457 = !DILocation(line: 514, column: 42, scope: !1458)
!1458 = !DILexicalBlockFile(scope: !1459, file: !730, discriminator: 2)
!1459 = distinct !DILexicalBlock(scope: !1454, file: !730, line: 514, column: 33)
!1460 = !DILocation(line: 514, column: 50, scope: !1458)
!1461 = !DILocation(line: 514, column: 35, scope: !1458)
!1462 = !DILocation(line: 514, column: 65, scope: !1458)
!1463 = !DILocation(line: 514, column: 73, scope: !1458)
!1464 = !DILocation(line: 514, column: 86, scope: !1458)
!1465 = !DILocation(line: 514, column: 4, scope: !1458)
!1466 = !DILocation(line: 514, column: 6, scope: !1467)
!1467 = !DILexicalBlockFile(scope: !1455, file: !730, discriminator: 3)
!1468 = !DILocation(line: 515, column: 22, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1450, file: !730, line: 515, column: 21)
!1470 = !DILocation(line: 515, column: 21, scope: !1469)
!1471 = !DILocation(line: 515, column: 29, scope: !1469)
!1472 = !DILocation(line: 515, column: 21, scope: !1450)
!1473 = !DILocation(line: 516, column: 35, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1469, file: !730, line: 515, column: 38)
!1475 = !DILocation(line: 516, column: 26, scope: !1474)
!1476 = !DILocation(line: 516, column: 4, scope: !1474)
!1477 = !DILocation(line: 516, column: 12, scope: !1474)
!1478 = !DILocation(line: 516, column: 24, scope: !1474)
!1479 = !DILocation(line: 517, column: 68, scope: !1474)
!1480 = !DILocation(line: 517, column: 50, scope: !1474)
!1481 = !DILocation(line: 517, column: 35, scope: !1474)
!1482 = !DILocation(line: 517, column: 47, scope: !1474)
!1483 = !DILocation(line: 517, column: 23, scope: !1484)
!1484 = !DILexicalBlockFile(scope: !1474, file: !730, discriminator: 1)
!1485 = !DILocation(line: 517, column: 21, scope: !1474)
!1486 = !DILocation(line: 517, column: 11, scope: !1474)
!1487 = !DILocation(line: 518, column: 18, scope: !1474)
!1488 = !DILocation(line: 518, column: 38, scope: !1474)
!1489 = !DILocation(line: 518, column: 4, scope: !1474)
!1490 = !DILocation(line: 519, column: 3, scope: !1474)
!1491 = !DILocation(line: 520, column: 18, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1469, file: !730, line: 519, column: 10)
!1493 = !DILocation(line: 520, column: 4, scope: !1492)
!1494 = !DILocation(line: 523, column: 2, scope: !1450)
!1495 = !DILocation(line: 524, column: 9, scope: !1419)
!1496 = !DILocation(line: 524, column: 2, scope: !1419)
!1497 = !DILocation(line: 525, column: 1, scope: !1419)
!1498 = !DILocation(line: 525, column: 1, scope: !1499)
!1499 = !DILexicalBlockFile(scope: !1419, file: !730, discriminator: 1)
!1500 = distinct !DISubprogram(name: "irc_server_send_data", scope: !730, file: !730, line: 527, type: !1501, isLocal: false, isDefinition: true, scopeLine: 528, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !737)
!1501 = !DISubroutineType(types: !1502)
!1502 = !{null, !338, !336, !51}
!1503 = !DILocalVariable(name: "server", arg: 1, scope: !1500, file: !730, line: 527, type: !338)
!1504 = !DILocation(line: 527, column: 43, scope: !1500)
!1505 = !DILocalVariable(name: "data", arg: 2, scope: !1500, file: !730, line: 527, type: !336)
!1506 = !DILocation(line: 527, column: 63, scope: !1500)
!1507 = !DILocalVariable(name: "len", arg: 3, scope: !1500, file: !730, line: 527, type: !51)
!1508 = !DILocation(line: 527, column: 73, scope: !1500)
!1509 = !DILocation(line: 529, column: 26, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1500, file: !730, line: 529, column: 6)
!1511 = !DILocation(line: 529, column: 34, scope: !1510)
!1512 = !DILocation(line: 529, column: 42, scope: !1510)
!1513 = !DILocation(line: 529, column: 48, scope: !1510)
!1514 = !DILocation(line: 529, column: 6, scope: !1510)
!1515 = !DILocation(line: 529, column: 53, scope: !1510)
!1516 = !DILocation(line: 529, column: 6, scope: !1500)
!1517 = !DILocation(line: 531, column: 3, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1510, file: !730, line: 529, column: 60)
!1519 = !DILocation(line: 531, column: 11, scope: !1518)
!1520 = !DILocation(line: 531, column: 27, scope: !1518)
!1521 = !DILocation(line: 532, column: 3, scope: !1518)
!1522 = !DILocation(line: 535, column: 22, scope: !1500)
!1523 = !DILocation(line: 535, column: 30, scope: !1500)
!1524 = !DILocation(line: 535, column: 2, scope: !1500)
!1525 = !DILocation(line: 541, column: 6, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1500, file: !730, line: 541, column: 6)
!1527 = !DILocation(line: 541, column: 10, scope: !1526)
!1528 = !DILocation(line: 541, column: 16, scope: !1526)
!1529 = !DILocation(line: 541, column: 19, scope: !1530)
!1530 = !DILexicalBlockFile(scope: !1526, file: !730, discriminator: 1)
!1531 = !DILocation(line: 541, column: 27, scope: !1530)
!1532 = !DILocation(line: 541, column: 43, scope: !1530)
!1533 = !DILocation(line: 541, column: 6, scope: !1530)
!1534 = !DILocation(line: 542, column: 3, scope: !1526)
!1535 = !DILocation(line: 542, column: 11, scope: !1526)
!1536 = !DILocation(line: 542, column: 20, scope: !1526)
!1537 = !DILocation(line: 542, column: 27, scope: !1526)
!1538 = !DILocation(line: 544, column: 11, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1526, file: !730, line: 543, column: 7)
!1540 = !DILocation(line: 544, column: 19, scope: !1539)
!1541 = !DILocation(line: 544, column: 3, scope: !1539)
!1542 = !DILocation(line: 544, column: 30, scope: !1539)
!1543 = !DILocation(line: 544, column: 38, scope: !1539)
!1544 = !DILocation(line: 545, column: 19, scope: !1539)
!1545 = !DILocation(line: 545, column: 27, scope: !1539)
!1546 = !DILocation(line: 545, column: 42, scope: !1539)
!1547 = !DILocation(line: 545, column: 45, scope: !1539)
!1548 = !DILocation(line: 545, column: 40, scope: !1539)
!1549 = !DILocation(line: 545, column: 51, scope: !1539)
!1550 = !DILocation(line: 545, column: 37, scope: !1539)
!1551 = !DILocation(line: 545, column: 3, scope: !1539)
!1552 = !DILocation(line: 547, column: 1, scope: !1500)
!1553 = distinct !DISubprogram(name: "irc_servers_start_cmd_timeout", scope: !730, file: !730, line: 619, type: !198, isLocal: false, isDefinition: true, scopeLine: 620, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !737)
!1554 = !DILocation(line: 621, column: 6, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1553, file: !730, line: 621, column: 6)
!1556 = !DILocation(line: 621, column: 14, scope: !1555)
!1557 = !DILocation(line: 621, column: 6, scope: !1553)
!1558 = !DILocation(line: 622, column: 13, scope: !1555)
!1559 = !DILocation(line: 622, column: 11, scope: !1555)
!1560 = !DILocation(line: 622, column: 3, scope: !1555)
!1561 = !DILocation(line: 623, column: 1, scope: !1553)
!1562 = distinct !DISubprogram(name: "servers_cmd_timeout", scope: !730, file: !730, line: 600, type: !1563, isLocal: true, isDefinition: true, scopeLine: 601, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !737)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!51}
!1565 = !DILocalVariable(name: "now", scope: !1562, file: !730, line: 602, type: !407)
!1566 = !DILocation(line: 602, column: 11, scope: !1562)
!1567 = !DILocalVariable(name: "tmp", scope: !1562, file: !730, line: 603, type: !210)
!1568 = !DILocation(line: 603, column: 10, scope: !1562)
!1569 = !DILocalVariable(name: "keep", scope: !1562, file: !730, line: 604, type: !51)
!1570 = !DILocation(line: 604, column: 6, scope: !1562)
!1571 = !DILocation(line: 606, column: 2, scope: !1562)
!1572 = !DILocation(line: 607, column: 13, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1562, file: !730, line: 607, column: 2)
!1574 = !DILocation(line: 607, column: 11, scope: !1573)
!1575 = !DILocation(line: 607, column: 7, scope: !1573)
!1576 = !DILocation(line: 607, column: 22, scope: !1577)
!1577 = !DILexicalBlockFile(scope: !1578, file: !730, discriminator: 1)
!1578 = distinct !DILexicalBlock(scope: !1573, file: !730, line: 607, column: 2)
!1579 = !DILocation(line: 607, column: 26, scope: !1577)
!1580 = !DILocation(line: 607, column: 2, scope: !1577)
!1581 = !DILocation(line: 608, column: 30, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1578, file: !730, line: 607, column: 51)
!1583 = !DILocation(line: 608, column: 35, scope: !1582)
!1584 = !DILocation(line: 608, column: 11, scope: !1582)
!1585 = !DILocation(line: 608, column: 8, scope: !1582)
!1586 = !DILocation(line: 609, column: 2, scope: !1582)
!1587 = !DILocation(line: 607, column: 40, scope: !1588)
!1588 = !DILexicalBlockFile(scope: !1578, file: !730, discriminator: 2)
!1589 = !DILocation(line: 607, column: 45, scope: !1588)
!1590 = !DILocation(line: 607, column: 38, scope: !1588)
!1591 = !DILocation(line: 607, column: 2, scope: !1588)
!1592 = distinct !{!1592, !1593}
!1593 = !DILocation(line: 607, column: 2, scope: !1562)
!1594 = !DILocation(line: 610, column: 6, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1562, file: !730, line: 610, column: 6)
!1596 = !DILocation(line: 610, column: 6, scope: !1562)
!1597 = !DILocation(line: 611, column: 3, scope: !1595)
!1598 = !DILocation(line: 613, column: 11, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1595, file: !730, line: 612, column: 7)
!1600 = !DILocation(line: 614, column: 3, scope: !1599)
!1601 = !DILocation(line: 616, column: 1, scope: !1562)
!1602 = distinct !DISubprogram(name: "irc_server_get_channels", scope: !730, file: !730, line: 627, type: !1603, isLocal: false, isDefinition: true, scopeLine: 628, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !737)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!55, !338}
!1605 = !DILocalVariable(name: "server", arg: 1, scope: !1602, file: !730, line: 627, type: !338)
!1606 = !DILocation(line: 627, column: 47, scope: !1602)
!1607 = !DILocalVariable(name: "tmp", scope: !1602, file: !730, line: 629, type: !210)
!1608 = !DILocation(line: 629, column: 10, scope: !1602)
!1609 = !DILocalVariable(name: "chans", scope: !1602, file: !730, line: 630, type: !249)
!1610 = !DILocation(line: 630, column: 11, scope: !1602)
!1611 = !DILocalVariable(name: "keys", scope: !1602, file: !730, line: 630, type: !249)
!1612 = !DILocation(line: 630, column: 19, scope: !1602)
!1613 = !DILocalVariable(name: "ret", scope: !1602, file: !730, line: 631, type: !55)
!1614 = !DILocation(line: 631, column: 8, scope: !1602)
!1615 = !DILocalVariable(name: "use_keys", scope: !1602, file: !730, line: 632, type: !51)
!1616 = !DILocation(line: 632, column: 6, scope: !1602)
!1617 = !DILocalVariable(name: "rejoin_channels_mode", scope: !1602, file: !730, line: 633, type: !51)
!1618 = !DILocation(line: 633, column: 6, scope: !1602)
!1619 = !DILocation(line: 635, column: 2, scope: !1602)
!1620 = distinct !{!1620, !1619}
!1621 = !DILocation(line: 635, column: 10, scope: !1622)
!1622 = !DILexicalBlockFile(scope: !1623, file: !730, discriminator: 1)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !730, line: 635, column: 10)
!1624 = distinct !DILexicalBlock(scope: !1602, file: !730, line: 635, column: 4)
!1625 = !DILocation(line: 635, column: 17, scope: !1622)
!1626 = !DILocation(line: 635, column: 5, scope: !1627)
!1627 = !DILexicalBlockFile(scope: !1628, file: !730, discriminator: 2)
!1628 = distinct !DILexicalBlock(scope: !1623, file: !730, line: 635, column: 3)
!1629 = !DILocation(line: 635, column: 14, scope: !1630)
!1630 = !DILexicalBlockFile(scope: !1631, file: !730, discriminator: 3)
!1631 = distinct !DILexicalBlock(scope: !1623, file: !730, line: 635, column: 12)
!1632 = !DILocation(line: 635, column: 101, scope: !1630)
!1633 = !DILocation(line: 635, column: 118, scope: !1634)
!1634 = !DILexicalBlockFile(scope: !1624, file: !730, discriminator: 4)
!1635 = !DILocation(line: 637, column: 25, scope: !1602)
!1636 = !DILocation(line: 637, column: 23, scope: !1602)
!1637 = !DILocation(line: 640, column: 5, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1602, file: !730, line: 640, column: 5)
!1639 = !DILocation(line: 640, column: 26, scope: !1638)
!1640 = !DILocation(line: 640, column: 5, scope: !1602)
!1641 = !DILocation(line: 641, column: 10, scope: !1638)
!1642 = !DILocation(line: 641, column: 3, scope: !1638)
!1643 = !DILocation(line: 643, column: 10, scope: !1602)
!1644 = !DILocation(line: 643, column: 8, scope: !1602)
!1645 = !DILocation(line: 644, column: 9, scope: !1602)
!1646 = !DILocation(line: 644, column: 7, scope: !1602)
!1647 = !DILocation(line: 645, column: 11, scope: !1602)
!1648 = !DILocation(line: 648, column: 13, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1602, file: !730, line: 648, column: 2)
!1650 = !DILocation(line: 648, column: 21, scope: !1649)
!1651 = !DILocation(line: 648, column: 11, scope: !1649)
!1652 = !DILocation(line: 648, column: 7, scope: !1649)
!1653 = !DILocation(line: 648, column: 31, scope: !1654)
!1654 = !DILexicalBlockFile(scope: !1655, file: !730, discriminator: 1)
!1655 = distinct !DILexicalBlock(scope: !1649, file: !730, line: 648, column: 2)
!1656 = !DILocation(line: 648, column: 35, scope: !1654)
!1657 = !DILocation(line: 648, column: 2, scope: !1654)
!1658 = !DILocalVariable(name: "channel", scope: !1659, file: !730, line: 649, type: !483)
!1659 = distinct !DILexicalBlock(scope: !1655, file: !730, line: 648, column: 60)
!1660 = !DILocation(line: 649, column: 16, scope: !1659)
!1661 = !DILocation(line: 649, column: 26, scope: !1659)
!1662 = !DILocation(line: 649, column: 31, scope: !1659)
!1663 = !DILocalVariable(name: "setup", scope: !1659, file: !730, line: 650, type: !1664)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64, align: 64)
!1665 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_SETUP_REC", file: !70, line: 115, baseType: !1666)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_SETUP_REC", file: !1667, line: 12, size: 512, align: 64, elements: !1668)
!1667 = !DIFile(filename: "../../../src/core/channels-setup.h", directory: "/home/lichi/Desktop/irssi/task1")
!1668 = !{!1669, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1666, file: !1670, line: 1, baseType: !51, size: 32, align: 32)
!1670 = !DIFile(filename: "../../../src/core/channel-setup-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !1666, file: !1670, line: 2, baseType: !51, size: 32, align: 32, offset: 32)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1666, file: !1670, line: 4, baseType: !55, size: 64, align: 64, offset: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !1666, file: !1670, line: 5, baseType: !55, size: 64, align: 64, offset: 128)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !1666, file: !1670, line: 6, baseType: !55, size: 64, align: 64, offset: 192)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "botmasks", scope: !1666, file: !1670, line: 8, baseType: !55, size: 64, align: 64, offset: 256)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "autosendcmd", scope: !1666, file: !1670, line: 9, baseType: !55, size: 64, align: 64, offset: 320)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "autojoin", scope: !1666, file: !1670, line: 11, baseType: !119, size: 1, align: 32, offset: 384, flags: DIFlagBitField, extraData: i64 384)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !1666, file: !1670, line: 12, baseType: !395, size: 64, align: 64, offset: 448)
!1679 = !DILocation(line: 650, column: 22, scope: !1659)
!1680 = !DILocation(line: 650, column: 49, scope: !1659)
!1681 = !DILocation(line: 650, column: 58, scope: !1659)
!1682 = !DILocation(line: 650, column: 64, scope: !1659)
!1683 = !DILocation(line: 650, column: 73, scope: !1659)
!1684 = !DILocation(line: 650, column: 81, scope: !1659)
!1685 = !DILocation(line: 650, column: 90, scope: !1659)
!1686 = !DILocation(line: 650, column: 30, scope: !1659)
!1687 = !DILocation(line: 651, column: 8, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1659, file: !730, line: 651, column: 7)
!1689 = !DILocation(line: 651, column: 14, scope: !1688)
!1690 = !DILocation(line: 651, column: 21, scope: !1688)
!1691 = !DILocation(line: 651, column: 24, scope: !1692)
!1692 = !DILexicalBlockFile(scope: !1688, file: !730, discriminator: 1)
!1693 = !DILocation(line: 651, column: 31, scope: !1692)
!1694 = !DILocation(line: 651, column: 40, scope: !1692)
!1695 = !DILocation(line: 651, column: 43, scope: !1696)
!1696 = !DILexicalBlockFile(scope: !1688, file: !730, discriminator: 2)
!1697 = !DILocation(line: 651, column: 64, scope: !1696)
!1698 = !DILocation(line: 651, column: 70, scope: !1696)
!1699 = !DILocation(line: 651, column: 73, scope: !1700)
!1700 = !DILexicalBlockFile(scope: !1688, file: !730, discriminator: 3)
!1701 = !DILocation(line: 651, column: 94, scope: !1700)
!1702 = !DILocation(line: 651, column: 7, scope: !1700)
!1703 = !DILocation(line: 652, column: 27, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1688, file: !730, line: 651, column: 100)
!1705 = !DILocation(line: 652, column: 41, scope: !1704)
!1706 = !DILocation(line: 652, column: 50, scope: !1704)
!1707 = !DILocation(line: 652, column: 4, scope: !1704)
!1708 = !DILocation(line: 653, column: 27, scope: !1704)
!1709 = !DILocation(line: 653, column: 40, scope: !1704)
!1710 = !DILocation(line: 653, column: 49, scope: !1704)
!1711 = !DILocation(line: 653, column: 53, scope: !1704)
!1712 = !DILocation(line: 653, column: 40, scope: !1713)
!1713 = !DILexicalBlockFile(scope: !1704, file: !730, discriminator: 1)
!1714 = !DILocation(line: 653, column: 68, scope: !1715)
!1715 = !DILexicalBlockFile(scope: !1704, file: !730, discriminator: 2)
!1716 = !DILocation(line: 653, column: 77, scope: !1715)
!1717 = !DILocation(line: 653, column: 40, scope: !1715)
!1718 = !DILocation(line: 653, column: 40, scope: !1719)
!1719 = !DILexicalBlockFile(scope: !1704, file: !730, discriminator: 3)
!1720 = !DILocation(line: 653, column: 4, scope: !1719)
!1721 = !DILocation(line: 654, column: 8, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1704, file: !730, line: 654, column: 8)
!1723 = !DILocation(line: 654, column: 17, scope: !1722)
!1724 = !DILocation(line: 654, column: 21, scope: !1722)
!1725 = !DILocation(line: 654, column: 8, scope: !1704)
!1726 = !DILocation(line: 655, column: 14, scope: !1722)
!1727 = !DILocation(line: 655, column: 5, scope: !1722)
!1728 = !DILocation(line: 656, column: 3, scope: !1704)
!1729 = !DILocation(line: 657, column: 2, scope: !1659)
!1730 = !DILocation(line: 648, column: 49, scope: !1731)
!1731 = !DILexicalBlockFile(scope: !1655, file: !730, discriminator: 2)
!1732 = !DILocation(line: 648, column: 54, scope: !1731)
!1733 = !DILocation(line: 648, column: 47, scope: !1731)
!1734 = !DILocation(line: 648, column: 2, scope: !1731)
!1735 = distinct !{!1735, !1736}
!1736 = !DILocation(line: 648, column: 2, scope: !1602)
!1737 = !DILocation(line: 660, column: 13, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1602, file: !730, line: 660, column: 2)
!1739 = !DILocation(line: 660, column: 21, scope: !1738)
!1740 = !DILocation(line: 660, column: 11, scope: !1738)
!1741 = !DILocation(line: 660, column: 7, scope: !1738)
!1742 = !DILocation(line: 660, column: 38, scope: !1743)
!1743 = !DILexicalBlockFile(scope: !1744, file: !730, discriminator: 1)
!1744 = distinct !DILexicalBlock(scope: !1738, file: !730, line: 660, column: 2)
!1745 = !DILocation(line: 660, column: 42, scope: !1743)
!1746 = !DILocation(line: 660, column: 2, scope: !1743)
!1747 = !DILocalVariable(name: "rec", scope: !1748, file: !730, line: 661, type: !1749)
!1748 = distinct !DILexicalBlock(scope: !1744, file: !730, line: 660, column: 67)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64, align: 64)
!1750 = !DIDerivedType(tag: DW_TAG_typedef, name: "REJOIN_REC", file: !1751, line: 8, baseType: !1752)
!1751 = !DIFile(filename: "channel-rejoin.h", directory: "/home/lichi/Desktop/irssi/task1")
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1751, line: 4, size: 192, align: 64, elements: !1753)
!1753 = !{!1754, !1755, !1756}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !1752, file: !1751, line: 5, baseType: !55, size: 64, align: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1752, file: !1751, line: 6, baseType: !55, size: 64, align: 64, offset: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "joining", scope: !1752, file: !1751, line: 7, baseType: !119, size: 1, align: 32, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1757 = !DILocation(line: 661, column: 15, scope: !1748)
!1758 = !DILocation(line: 661, column: 21, scope: !1748)
!1759 = !DILocation(line: 661, column: 26, scope: !1748)
!1760 = !DILocalVariable(name: "setup", scope: !1748, file: !730, line: 662, type: !1664)
!1761 = !DILocation(line: 662, column: 22, scope: !1748)
!1762 = !DILocation(line: 662, column: 49, scope: !1748)
!1763 = !DILocation(line: 662, column: 54, scope: !1748)
!1764 = !DILocation(line: 662, column: 63, scope: !1748)
!1765 = !DILocation(line: 662, column: 71, scope: !1748)
!1766 = !DILocation(line: 662, column: 30, scope: !1748)
!1767 = !DILocation(line: 664, column: 8, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1748, file: !730, line: 664, column: 7)
!1769 = !DILocation(line: 664, column: 14, scope: !1768)
!1770 = !DILocation(line: 664, column: 21, scope: !1768)
!1771 = !DILocation(line: 664, column: 24, scope: !1772)
!1772 = !DILexicalBlockFile(scope: !1768, file: !730, discriminator: 1)
!1773 = !DILocation(line: 664, column: 31, scope: !1772)
!1774 = !DILocation(line: 664, column: 40, scope: !1772)
!1775 = !DILocation(line: 664, column: 43, scope: !1776)
!1776 = !DILexicalBlockFile(scope: !1768, file: !730, discriminator: 2)
!1777 = !DILocation(line: 664, column: 64, scope: !1776)
!1778 = !DILocation(line: 664, column: 70, scope: !1776)
!1779 = !DILocation(line: 664, column: 73, scope: !1780)
!1780 = !DILexicalBlockFile(scope: !1768, file: !730, discriminator: 3)
!1781 = !DILocation(line: 664, column: 94, scope: !1780)
!1782 = !DILocation(line: 664, column: 7, scope: !1780)
!1783 = !DILocation(line: 665, column: 27, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1768, file: !730, line: 664, column: 100)
!1785 = !DILocation(line: 665, column: 41, scope: !1784)
!1786 = !DILocation(line: 665, column: 46, scope: !1784)
!1787 = !DILocation(line: 665, column: 4, scope: !1784)
!1788 = !DILocation(line: 666, column: 27, scope: !1784)
!1789 = !DILocation(line: 666, column: 40, scope: !1784)
!1790 = !DILocation(line: 666, column: 45, scope: !1784)
!1791 = !DILocation(line: 666, column: 49, scope: !1784)
!1792 = !DILocation(line: 666, column: 40, scope: !1793)
!1793 = !DILexicalBlockFile(scope: !1784, file: !730, discriminator: 1)
!1794 = !DILocation(line: 667, column: 10, scope: !1784)
!1795 = !DILocation(line: 667, column: 15, scope: !1784)
!1796 = !DILocation(line: 666, column: 40, scope: !1797)
!1797 = !DILexicalBlockFile(scope: !1784, file: !730, discriminator: 2)
!1798 = !DILocation(line: 666, column: 40, scope: !1799)
!1799 = !DILexicalBlockFile(scope: !1784, file: !730, discriminator: 3)
!1800 = !DILocation(line: 666, column: 4, scope: !1799)
!1801 = !DILocation(line: 669, column: 8, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1784, file: !730, line: 669, column: 8)
!1803 = !DILocation(line: 669, column: 13, scope: !1802)
!1804 = !DILocation(line: 669, column: 17, scope: !1802)
!1805 = !DILocation(line: 669, column: 8, scope: !1784)
!1806 = !DILocation(line: 669, column: 34, scope: !1807)
!1807 = !DILexicalBlockFile(scope: !1802, file: !730, discriminator: 1)
!1808 = !DILocation(line: 669, column: 25, scope: !1807)
!1809 = !DILocation(line: 670, column: 3, scope: !1784)
!1810 = !DILocation(line: 671, column: 2, scope: !1748)
!1811 = !DILocation(line: 660, column: 56, scope: !1812)
!1812 = !DILexicalBlockFile(scope: !1744, file: !730, discriminator: 2)
!1813 = !DILocation(line: 660, column: 61, scope: !1812)
!1814 = !DILocation(line: 660, column: 54, scope: !1812)
!1815 = !DILocation(line: 660, column: 2, scope: !1812)
!1816 = distinct !{!1816, !1817}
!1817 = !DILocation(line: 660, column: 2, scope: !1602)
!1818 = !DILocation(line: 673, column: 6, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1602, file: !730, line: 673, column: 6)
!1820 = !DILocation(line: 673, column: 13, scope: !1819)
!1821 = !DILocation(line: 673, column: 17, scope: !1819)
!1822 = !DILocation(line: 673, column: 6, scope: !1602)
!1823 = !DILocation(line: 674, column: 21, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1819, file: !730, line: 673, column: 22)
!1825 = !DILocation(line: 674, column: 28, scope: !1824)
!1826 = !DILocation(line: 674, column: 35, scope: !1824)
!1827 = !DILocation(line: 674, column: 38, scope: !1824)
!1828 = !DILocation(line: 674, column: 3, scope: !1824)
!1829 = !DILocation(line: 675, column: 21, scope: !1824)
!1830 = !DILocation(line: 675, column: 27, scope: !1824)
!1831 = !DILocation(line: 675, column: 33, scope: !1824)
!1832 = !DILocation(line: 675, column: 36, scope: !1824)
!1833 = !DILocation(line: 675, column: 3, scope: !1824)
!1834 = !DILocation(line: 676, column: 7, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1824, file: !730, line: 676, column: 7)
!1836 = !DILocation(line: 676, column: 7, scope: !1824)
!1837 = !DILocation(line: 676, column: 40, scope: !1838)
!1838 = !DILexicalBlockFile(scope: !1835, file: !730, discriminator: 1)
!1839 = !DILocation(line: 676, column: 54, scope: !1838)
!1840 = !DILocation(line: 676, column: 60, scope: !1838)
!1841 = !DILocation(line: 676, column: 17, scope: !1838)
!1842 = !DILocation(line: 677, column: 2, scope: !1824)
!1843 = !DILocation(line: 679, column: 8, scope: !1602)
!1844 = !DILocation(line: 679, column: 15, scope: !1602)
!1845 = !DILocation(line: 679, column: 6, scope: !1602)
!1846 = !DILocation(line: 680, column: 16, scope: !1602)
!1847 = !DILocation(line: 680, column: 2, scope: !1602)
!1848 = !DILocation(line: 681, column: 16, scope: !1602)
!1849 = !DILocation(line: 681, column: 2, scope: !1602)
!1850 = !DILocation(line: 683, column: 9, scope: !1602)
!1851 = !DILocation(line: 683, column: 2, scope: !1602)
!1852 = !DILocation(line: 684, column: 1, scope: !1602)
!1853 = distinct !DISubprogram(name: "irc_server_init_isupport", scope: !730, file: !730, line: 951, type: !1854, isLocal: false, isDefinition: true, scopeLine: 952, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !737)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{null, !338}
!1856 = !DILocalVariable(name: "server", arg: 1, scope: !1853, file: !730, line: 951, type: !338)
!1857 = !DILocation(line: 951, column: 47, scope: !1853)
!1858 = !DILocalVariable(name: "sptr", scope: !1853, file: !730, line: 953, type: !55)
!1859 = !DILocation(line: 953, column: 8, scope: !1853)
!1860 = !DILocalVariable(name: "key", scope: !1853, file: !730, line: 954, type: !148)
!1861 = !DILocation(line: 954, column: 11, scope: !1853)
!1862 = !DILocalVariable(name: "value", scope: !1853, file: !730, line: 954, type: !148)
!1863 = !DILocation(line: 954, column: 16, scope: !1853)
!1864 = !DILocation(line: 956, column: 9, scope: !1853)
!1865 = !DILocation(line: 956, column: 17, scope: !1853)
!1866 = !DILocation(line: 956, column: 2, scope: !1853)
!1867 = !DILocation(line: 957, column: 9, scope: !1853)
!1868 = !DILocation(line: 957, column: 17, scope: !1853)
!1869 = !DILocation(line: 957, column: 2, scope: !1853)
!1870 = !DILocation(line: 959, column: 34, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1853, file: !730, line: 959, column: 6)
!1872 = !DILocation(line: 959, column: 42, scope: !1871)
!1873 = !DILocation(line: 959, column: 14, scope: !1871)
!1874 = !DILocation(line: 959, column: 12, scope: !1871)
!1875 = !DILocation(line: 959, column: 6, scope: !1853)
!1876 = !DILocation(line: 960, column: 19, scope: !1871)
!1877 = !DILocation(line: 960, column: 27, scope: !1871)
!1878 = !DILocation(line: 960, column: 3, scope: !1871)
!1879 = !DILocation(line: 963, column: 35, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1853, file: !730, line: 963, column: 6)
!1881 = !DILocation(line: 963, column: 43, scope: !1880)
!1882 = !DILocation(line: 963, column: 6, scope: !1880)
!1883 = !DILocation(line: 963, column: 6, scope: !1853)
!1884 = !DILocation(line: 965, column: 10, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1880, file: !730, line: 964, column: 22)
!1886 = !DILocation(line: 965, column: 8, scope: !1885)
!1887 = !DILocation(line: 966, column: 8, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1885, file: !730, line: 966, column: 7)
!1889 = !DILocation(line: 966, column: 7, scope: !1888)
!1890 = !DILocation(line: 966, column: 13, scope: !1888)
!1891 = !DILocation(line: 966, column: 7, scope: !1885)
!1892 = !DILocation(line: 968, column: 24, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1888, file: !730, line: 966, column: 21)
!1894 = !DILocation(line: 968, column: 32, scope: !1893)
!1895 = !DILocation(line: 968, column: 42, scope: !1893)
!1896 = !DILocation(line: 968, column: 4, scope: !1893)
!1897 = !DILocation(line: 969, column: 11, scope: !1893)
!1898 = !DILocation(line: 969, column: 4, scope: !1893)
!1899 = !DILocation(line: 970, column: 11, scope: !1893)
!1900 = !DILocation(line: 970, column: 4, scope: !1893)
!1901 = !DILocation(line: 971, column: 9, scope: !1893)
!1902 = !DILocation(line: 972, column: 3, scope: !1893)
!1903 = !DILocation(line: 973, column: 2, scope: !1885)
!1904 = !DILocation(line: 974, column: 8, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1880, file: !730, line: 973, column: 9)
!1906 = !DILocation(line: 977, column: 6, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1853, file: !730, line: 977, column: 6)
!1908 = !DILocation(line: 977, column: 11, scope: !1907)
!1909 = !DILocation(line: 977, column: 6, scope: !1853)
!1910 = !DILocation(line: 978, column: 10, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1907, file: !730, line: 977, column: 19)
!1912 = !DILocation(line: 978, column: 8, scope: !1911)
!1913 = !DILocation(line: 979, column: 23, scope: !1911)
!1914 = !DILocation(line: 979, column: 31, scope: !1911)
!1915 = !DILocation(line: 979, column: 41, scope: !1911)
!1916 = !DILocation(line: 979, column: 61, scope: !1911)
!1917 = !DILocation(line: 979, column: 3, scope: !1918)
!1918 = !DILexicalBlockFile(scope: !1911, file: !730, discriminator: 1)
!1919 = !DILocation(line: 980, column: 2, scope: !1911)
!1920 = !DILocation(line: 981, column: 15, scope: !1853)
!1921 = !DILocation(line: 981, column: 23, scope: !1853)
!1922 = !DILocation(line: 981, column: 2, scope: !1853)
!1923 = !DILocation(line: 983, column: 34, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1853, file: !730, line: 983, column: 6)
!1925 = !DILocation(line: 983, column: 42, scope: !1924)
!1926 = !DILocation(line: 983, column: 14, scope: !1924)
!1927 = !DILocation(line: 983, column: 12, scope: !1924)
!1928 = !DILocation(line: 983, column: 6, scope: !1853)
!1929 = !DILocation(line: 984, column: 35, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1924, file: !730, line: 983, column: 63)
!1931 = !DILocation(line: 984, column: 30, scope: !1930)
!1932 = !DILocation(line: 984, column: 3, scope: !1930)
!1933 = !DILocation(line: 984, column: 11, scope: !1930)
!1934 = !DILocation(line: 984, column: 28, scope: !1930)
!1935 = !DILocation(line: 985, column: 7, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1930, file: !730, line: 985, column: 7)
!1937 = !DILocation(line: 985, column: 15, scope: !1936)
!1938 = !DILocation(line: 985, column: 32, scope: !1936)
!1939 = !DILocation(line: 985, column: 7, scope: !1930)
!1940 = !DILocation(line: 986, column: 4, scope: !1936)
!1941 = !DILocation(line: 986, column: 12, scope: !1936)
!1942 = !DILocation(line: 986, column: 29, scope: !1936)
!1943 = !DILocation(line: 987, column: 2, scope: !1930)
!1944 = !DILocation(line: 989, column: 34, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1853, file: !730, line: 989, column: 6)
!1946 = !DILocation(line: 989, column: 42, scope: !1945)
!1947 = !DILocation(line: 989, column: 14, scope: !1945)
!1948 = !DILocation(line: 989, column: 12, scope: !1945)
!1949 = !DILocation(line: 989, column: 6, scope: !1853)
!1950 = !DILocation(line: 990, column: 14, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !730, line: 990, column: 7)
!1952 = distinct !DILexicalBlock(scope: !1945, file: !730, line: 989, column: 69)
!1953 = !DILocation(line: 990, column: 7, scope: !1951)
!1954 = !DILocation(line: 990, column: 31, scope: !1951)
!1955 = !DILocation(line: 990, column: 7, scope: !1952)
!1956 = !DILocation(line: 991, column: 4, scope: !1951)
!1957 = !DILocation(line: 991, column: 12, scope: !1951)
!1958 = !DILocation(line: 991, column: 27, scope: !1951)
!1959 = !DILocation(line: 993, column: 4, scope: !1951)
!1960 = !DILocation(line: 993, column: 12, scope: !1951)
!1961 = !DILocation(line: 993, column: 27, scope: !1951)
!1962 = !DILocation(line: 994, column: 2, scope: !1952)
!1963 = !DILocation(line: 996, column: 34, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1853, file: !730, line: 996, column: 6)
!1965 = !DILocation(line: 996, column: 42, scope: !1964)
!1966 = !DILocation(line: 996, column: 14, scope: !1964)
!1967 = !DILocation(line: 996, column: 12, scope: !1964)
!1968 = !DILocation(line: 996, column: 6, scope: !1853)
!1969 = !DILocalVariable(name: "p", scope: !1970, file: !730, line: 997, type: !55)
!1970 = distinct !DILexicalBlock(scope: !1964, file: !730, line: 996, column: 65)
!1971 = !DILocation(line: 997, column: 9, scope: !1970)
!1972 = !DILocation(line: 997, column: 13, scope: !1970)
!1973 = !DILocation(line: 998, column: 3, scope: !1970)
!1974 = !DILocation(line: 998, column: 11, scope: !1970)
!1975 = !DILocation(line: 998, column: 28, scope: !1970)
!1976 = !DILocation(line: 999, column: 3, scope: !1970)
!1977 = !DILocation(line: 999, column: 11, scope: !1970)
!1978 = !DILocation(line: 999, column: 27, scope: !1970)
!1979 = !DILocation(line: 1001, column: 3, scope: !1970)
!1980 = !DILocation(line: 1001, column: 11, scope: !1981)
!1981 = !DILexicalBlockFile(scope: !1970, file: !730, discriminator: 1)
!1982 = !DILocation(line: 1001, column: 10, scope: !1981)
!1983 = !DILocation(line: 1001, column: 13, scope: !1981)
!1984 = !DILocation(line: 1001, column: 3, scope: !1981)
!1985 = !DILocation(line: 1002, column: 29, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1987, file: !730, line: 1002, column: 8)
!1987 = distinct !DILexicalBlock(scope: !1970, file: !730, line: 1001, column: 22)
!1988 = !DILocation(line: 1002, column: 9, scope: !1986)
!1989 = !DILocation(line: 1002, column: 8, scope: !1987)
!1990 = !DILocation(line: 1003, column: 37, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1986, file: !730, line: 1002, column: 45)
!1992 = !DILocation(line: 1003, column: 39, scope: !1991)
!1993 = !DILocation(line: 1003, column: 32, scope: !1991)
!1994 = !DILocation(line: 1003, column: 5, scope: !1991)
!1995 = !DILocation(line: 1003, column: 13, scope: !1991)
!1996 = !DILocation(line: 1003, column: 30, scope: !1991)
!1997 = !DILocation(line: 1004, column: 9, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1991, file: !730, line: 1004, column: 9)
!1999 = !DILocation(line: 1004, column: 17, scope: !1998)
!2000 = !DILocation(line: 1004, column: 34, scope: !1998)
!2001 = !DILocation(line: 1004, column: 9, scope: !1991)
!2002 = !DILocation(line: 1005, column: 6, scope: !1998)
!2003 = !DILocation(line: 1005, column: 14, scope: !1998)
!2004 = !DILocation(line: 1005, column: 31, scope: !1998)
!2005 = !DILocation(line: 1006, column: 4, scope: !1991)
!2006 = !DILocation(line: 1006, column: 36, scope: !2007)
!2007 = !DILexicalBlockFile(scope: !2008, file: !730, discriminator: 1)
!2008 = distinct !DILexicalBlock(scope: !1986, file: !730, line: 1006, column: 15)
!2009 = !DILocation(line: 1006, column: 16, scope: !2007)
!2010 = !DILocation(line: 1006, column: 15, scope: !2007)
!2011 = !DILocation(line: 1007, column: 36, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2008, file: !730, line: 1006, column: 55)
!2013 = !DILocation(line: 1007, column: 38, scope: !2012)
!2014 = !DILocation(line: 1007, column: 31, scope: !2012)
!2015 = !DILocation(line: 1007, column: 5, scope: !2012)
!2016 = !DILocation(line: 1007, column: 13, scope: !2012)
!2017 = !DILocation(line: 1007, column: 29, scope: !2012)
!2018 = !DILocation(line: 1008, column: 9, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2012, file: !730, line: 1008, column: 9)
!2020 = !DILocation(line: 1008, column: 17, scope: !2019)
!2021 = !DILocation(line: 1008, column: 33, scope: !2019)
!2022 = !DILocation(line: 1008, column: 9, scope: !2012)
!2023 = !DILocation(line: 1009, column: 6, scope: !2019)
!2024 = !DILocation(line: 1009, column: 14, scope: !2019)
!2025 = !DILocation(line: 1009, column: 30, scope: !2019)
!2026 = !DILocation(line: 1010, column: 4, scope: !2012)
!2027 = !DILocation(line: 1011, column: 15, scope: !1987)
!2028 = !DILocation(line: 1011, column: 8, scope: !1987)
!2029 = !DILocation(line: 1011, column: 6, scope: !1987)
!2030 = !DILocation(line: 1012, column: 8, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !1987, file: !730, line: 1012, column: 8)
!2032 = !DILocation(line: 1012, column: 10, scope: !2031)
!2033 = !DILocation(line: 1012, column: 8, scope: !1987)
!2034 = !DILocation(line: 1013, column: 5, scope: !2031)
!2035 = !DILocation(line: 1014, column: 5, scope: !1987)
!2036 = !DILocation(line: 1001, column: 3, scope: !2037)
!2037 = !DILexicalBlockFile(scope: !1970, file: !730, discriminator: 2)
!2038 = distinct !{!2038, !1979}
!2039 = !DILocation(line: 1016, column: 2, scope: !1970)
!2040 = !DILocation(line: 1016, column: 41, scope: !2041)
!2041 = !DILexicalBlockFile(scope: !2042, file: !730, discriminator: 1)
!2042 = distinct !DILexicalBlock(scope: !1964, file: !730, line: 1016, column: 13)
!2043 = !DILocation(line: 1016, column: 49, scope: !2041)
!2044 = !DILocation(line: 1016, column: 21, scope: !2041)
!2045 = !DILocation(line: 1016, column: 19, scope: !2041)
!2046 = !DILocation(line: 1016, column: 13, scope: !2041)
!2047 = !DILocation(line: 1017, column: 34, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2042, file: !730, line: 1016, column: 75)
!2049 = !DILocation(line: 1017, column: 29, scope: !2048)
!2050 = !DILocation(line: 1017, column: 3, scope: !2048)
!2051 = !DILocation(line: 1017, column: 11, scope: !2048)
!2052 = !DILocation(line: 1017, column: 27, scope: !2048)
!2053 = !DILocation(line: 1018, column: 7, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2048, file: !730, line: 1018, column: 7)
!2055 = !DILocation(line: 1018, column: 15, scope: !2054)
!2056 = !DILocation(line: 1018, column: 31, scope: !2054)
!2057 = !DILocation(line: 1018, column: 7, scope: !2048)
!2058 = !DILocation(line: 1019, column: 4, scope: !2054)
!2059 = !DILocation(line: 1019, column: 12, scope: !2054)
!2060 = !DILocation(line: 1019, column: 28, scope: !2054)
!2061 = !DILocation(line: 1020, column: 2, scope: !2048)
!2062 = !DILocation(line: 1021, column: 1, scope: !1853)
!2063 = distinct !DISubprogram(name: "parse_chanmodes", scope: !730, file: !730, line: 748, type: !959, isLocal: true, isDefinition: true, scopeLine: 749, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !737)
!2064 = !DILocalVariable(name: "server", arg: 1, scope: !2063, file: !730, line: 748, type: !338)
!2065 = !DILocation(line: 748, column: 45, scope: !2063)
!2066 = !DILocalVariable(name: "sptr", arg: 2, scope: !2063, file: !730, line: 748, type: !336)
!2067 = !DILocation(line: 748, column: 65, scope: !2063)
!2068 = !DILocalVariable(name: "modefuncs", scope: !2063, file: !730, line: 750, type: !2069)
!2069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !655, size: 256, align: 64, elements: !2070)
!2070 = !{!2071}
!2071 = !DISubrange(count: 4)
!2072 = !DILocation(line: 750, column: 15, scope: !2063)
!2073 = !DILocalVariable(name: "item", scope: !2063, file: !730, line: 756, type: !478)
!2074 = !DILocation(line: 756, column: 9, scope: !2063)
!2075 = !DILocalVariable(name: "chanmodes", scope: !2063, file: !730, line: 756, type: !478)
!2076 = !DILocation(line: 756, column: 17, scope: !2063)
!2077 = !DILocalVariable(name: "i", scope: !2063, file: !730, line: 757, type: !51)
!2078 = !DILocation(line: 757, column: 6, scope: !2063)
!2079 = !DILocation(line: 759, column: 25, scope: !2063)
!2080 = !DILocation(line: 759, column: 14, scope: !2063)
!2081 = !DILocation(line: 759, column: 12, scope: !2063)
!2082 = !DILocation(line: 761, column: 9, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2063, file: !730, line: 761, column: 2)
!2084 = !DILocation(line: 761, column: 21, scope: !2083)
!2085 = !DILocation(line: 761, column: 19, scope: !2083)
!2086 = !DILocation(line: 761, column: 7, scope: !2083)
!2087 = !DILocation(line: 761, column: 33, scope: !2088)
!2088 = !DILexicalBlockFile(scope: !2089, file: !730, discriminator: 1)
!2089 = distinct !DILexicalBlock(scope: !2083, file: !730, line: 761, column: 2)
!2090 = !DILocation(line: 761, column: 32, scope: !2088)
!2091 = !DILocation(line: 761, column: 38, scope: !2088)
!2092 = !DILocation(line: 761, column: 45, scope: !2088)
!2093 = !DILocation(line: 761, column: 48, scope: !2094)
!2094 = !DILexicalBlockFile(scope: !2089, file: !730, discriminator: 2)
!2095 = !DILocation(line: 761, column: 50, scope: !2094)
!2096 = !DILocation(line: 761, column: 2, scope: !2097)
!2097 = !DILexicalBlockFile(scope: !2083, file: !730, discriminator: 3)
!2098 = !DILocalVariable(name: "p", scope: !2099, file: !730, line: 762, type: !712)
!2099 = distinct !DILexicalBlock(scope: !2089, file: !730, line: 761, column: 68)
!2100 = !DILocation(line: 762, column: 18, scope: !2099)
!2101 = !DILocation(line: 762, column: 40, scope: !2099)
!2102 = !DILocation(line: 762, column: 39, scope: !2099)
!2103 = !DILocation(line: 763, column: 3, scope: !2099)
!2104 = !DILocation(line: 763, column: 11, scope: !2105)
!2105 = !DILexicalBlockFile(scope: !2099, file: !730, discriminator: 1)
!2106 = !DILocation(line: 763, column: 10, scope: !2105)
!2107 = !DILocation(line: 763, column: 13, scope: !2105)
!2108 = !DILocation(line: 763, column: 3, scope: !2105)
!2109 = !DILocation(line: 764, column: 44, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2099, file: !730, line: 763, column: 22)
!2111 = !DILocation(line: 764, column: 34, scope: !2110)
!2112 = !DILocation(line: 764, column: 24, scope: !2110)
!2113 = !DILocation(line: 764, column: 23, scope: !2110)
!2114 = !DILocation(line: 764, column: 18, scope: !2110)
!2115 = !DILocation(line: 764, column: 4, scope: !2110)
!2116 = !DILocation(line: 764, column: 12, scope: !2110)
!2117 = !DILocation(line: 764, column: 27, scope: !2110)
!2118 = !DILocation(line: 764, column: 32, scope: !2110)
!2119 = !DILocation(line: 765, column: 5, scope: !2110)
!2120 = !DILocation(line: 763, column: 3, scope: !2121)
!2121 = !DILexicalBlockFile(scope: !2099, file: !730, discriminator: 2)
!2122 = distinct !{!2122, !2103}
!2123 = !DILocation(line: 767, column: 2, scope: !2099)
!2124 = !DILocation(line: 761, column: 59, scope: !2125)
!2125 = !DILexicalBlockFile(scope: !2089, file: !730, discriminator: 4)
!2126 = !DILocation(line: 761, column: 64, scope: !2125)
!2127 = !DILocation(line: 761, column: 2, scope: !2125)
!2128 = distinct !{!2128, !2129}
!2129 = !DILocation(line: 761, column: 2, scope: !2063)
!2130 = !DILocation(line: 769, column: 13, scope: !2063)
!2131 = !DILocation(line: 769, column: 2, scope: !2063)
!2132 = !DILocation(line: 770, column: 1, scope: !2063)
!2133 = distinct !DISubprogram(name: "parse_prefix", scope: !730, file: !730, line: 772, type: !959, isLocal: true, isDefinition: true, scopeLine: 773, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !737)
!2134 = !DILocalVariable(name: "server", arg: 1, scope: !2133, file: !730, line: 772, type: !338)
!2135 = !DILocation(line: 772, column: 42, scope: !2133)
!2136 = !DILocalVariable(name: "sptr", arg: 2, scope: !2133, file: !730, line: 772, type: !336)
!2137 = !DILocation(line: 772, column: 62, scope: !2133)
!2138 = !DILocalVariable(name: "eptr", scope: !2133, file: !730, line: 774, type: !336)
!2139 = !DILocation(line: 774, column: 14, scope: !2133)
!2140 = !DILocation(line: 776, column: 11, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2133, file: !730, line: 776, column: 6)
!2142 = !DILocation(line: 776, column: 6, scope: !2141)
!2143 = !DILocation(line: 776, column: 14, scope: !2141)
!2144 = !DILocation(line: 776, column: 6, scope: !2133)
!2145 = !DILocation(line: 777, column: 3, scope: !2141)
!2146 = !DILocation(line: 779, column: 16, scope: !2133)
!2147 = !DILocation(line: 779, column: 9, scope: !2133)
!2148 = !DILocation(line: 779, column: 7, scope: !2133)
!2149 = !DILocation(line: 780, column: 6, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2133, file: !730, line: 780, column: 6)
!2151 = !DILocation(line: 780, column: 11, scope: !2150)
!2152 = !DILocation(line: 780, column: 6, scope: !2133)
!2153 = !DILocation(line: 781, column: 3, scope: !2150)
!2154 = !DILocation(line: 783, column: 6, scope: !2133)
!2155 = !DILocation(line: 784, column: 2, scope: !2133)
!2156 = !DILocation(line: 784, column: 10, scope: !2157)
!2157 = !DILexicalBlockFile(scope: !2133, file: !730, discriminator: 1)
!2158 = !DILocation(line: 784, column: 9, scope: !2157)
!2159 = !DILocation(line: 784, column: 15, scope: !2157)
!2160 = !DILocation(line: 784, column: 23, scope: !2157)
!2161 = !DILocation(line: 784, column: 27, scope: !2162)
!2162 = !DILexicalBlockFile(scope: !2133, file: !730, discriminator: 2)
!2163 = !DILocation(line: 784, column: 26, scope: !2162)
!2164 = !DILocation(line: 784, column: 32, scope: !2162)
!2165 = !DILocation(line: 784, column: 40, scope: !2162)
!2166 = !DILocation(line: 784, column: 44, scope: !2167)
!2167 = !DILexicalBlockFile(scope: !2133, file: !730, discriminator: 3)
!2168 = !DILocation(line: 784, column: 43, scope: !2167)
!2169 = !DILocation(line: 784, column: 49, scope: !2167)
!2170 = !DILocation(line: 784, column: 56, scope: !2167)
!2171 = !DILocation(line: 784, column: 60, scope: !2172)
!2172 = !DILexicalBlockFile(scope: !2133, file: !730, discriminator: 4)
!2173 = !DILocation(line: 784, column: 59, scope: !2172)
!2174 = !DILocation(line: 784, column: 65, scope: !2172)
!2175 = !DILocation(line: 784, column: 2, scope: !2176)
!2176 = !DILexicalBlockFile(scope: !2133, file: !730, discriminator: 5)
!2177 = !DILocation(line: 785, column: 39, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2133, file: !730, line: 784, column: 73)
!2179 = !DILocation(line: 785, column: 38, scope: !2178)
!2180 = !DILocation(line: 785, column: 17, scope: !2178)
!2181 = !DILocation(line: 785, column: 3, scope: !2178)
!2182 = !DILocation(line: 785, column: 11, scope: !2178)
!2183 = !DILocation(line: 785, column: 45, scope: !2178)
!2184 = !DILocation(line: 785, column: 50, scope: !2178)
!2185 = !DILocation(line: 787, column: 55, scope: !2178)
!2186 = !DILocation(line: 787, column: 54, scope: !2178)
!2187 = !DILocation(line: 787, column: 39, scope: !2178)
!2188 = !DILocation(line: 787, column: 38, scope: !2178)
!2189 = !DILocation(line: 787, column: 17, scope: !2178)
!2190 = !DILocation(line: 787, column: 3, scope: !2178)
!2191 = !DILocation(line: 787, column: 11, scope: !2178)
!2192 = !DILocation(line: 787, column: 45, scope: !2178)
!2193 = !DILocation(line: 787, column: 52, scope: !2178)
!2194 = !DILocation(line: 788, column: 49, scope: !2178)
!2195 = !DILocation(line: 788, column: 48, scope: !2178)
!2196 = !DILocation(line: 788, column: 40, scope: !2178)
!2197 = !DILocation(line: 788, column: 39, scope: !2178)
!2198 = !DILocation(line: 788, column: 18, scope: !2178)
!2199 = !DILocation(line: 788, column: 3, scope: !2178)
!2200 = !DILocation(line: 788, column: 11, scope: !2178)
!2201 = !DILocation(line: 788, column: 46, scope: !2178)
!2202 = !DILocation(line: 789, column: 7, scope: !2178)
!2203 = !DILocation(line: 789, column: 15, scope: !2178)
!2204 = !DILocation(line: 784, column: 2, scope: !2205)
!2205 = !DILexicalBlockFile(scope: !2133, file: !730, discriminator: 6)
!2206 = distinct !{!2206, !2155}
!2207 = !DILocation(line: 791, column: 1, scope: !2133)
!2208 = distinct !DISubprogram(name: "irc_servers_init", scope: !730, file: !730, line: 1023, type: !198, isLocal: false, isDefinition: true, scopeLine: 1024, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !737)
!2209 = !DILocation(line: 1025, column: 2, scope: !2208)
!2210 = !DILocation(line: 1026, column: 2, scope: !2208)
!2211 = !DILocation(line: 1027, column: 2, scope: !2208)
!2212 = !DILocation(line: 1028, column: 2, scope: !2208)
!2213 = !DILocation(line: 1029, column: 2, scope: !2208)
!2214 = !DILocation(line: 1030, column: 2, scope: !2208)
!2215 = !DILocation(line: 1031, column: 2, scope: !2208)
!2216 = !DILocation(line: 1033, column: 10, scope: !2208)
!2217 = !DILocation(line: 1035, column: 2, scope: !2208)
!2218 = !DILocation(line: 1036, column: 2, scope: !2208)
!2219 = !DILocation(line: 1037, column: 2, scope: !2208)
!2220 = !DILocation(line: 1038, column: 2, scope: !2208)
!2221 = !DILocation(line: 1039, column: 2, scope: !2208)
!2222 = !DILocation(line: 1040, column: 2, scope: !2208)
!2223 = !DILocation(line: 1041, column: 2, scope: !2208)
!2224 = !DILocation(line: 1042, column: 2, scope: !2208)
!2225 = !DILocation(line: 1043, column: 2, scope: !2208)
!2226 = !DILocation(line: 1044, column: 2, scope: !2208)
!2227 = !DILocation(line: 1045, column: 2, scope: !2208)
!2228 = !DILocation(line: 1046, column: 2, scope: !2208)
!2229 = !DILocation(line: 1047, column: 2, scope: !2208)
!2230 = !DILocation(line: 1048, column: 2, scope: !2208)
!2231 = !DILocation(line: 1049, column: 2, scope: !2208)
!2232 = !DILocation(line: 1051, column: 2, scope: !2208)
!2233 = !DILocation(line: 1052, column: 2, scope: !2208)
!2234 = !DILocation(line: 1053, column: 2, scope: !2208)
!2235 = !DILocation(line: 1054, column: 2, scope: !2208)
!2236 = !DILocation(line: 1055, column: 1, scope: !2208)
!2237 = distinct !DISubprogram(name: "sig_connected", scope: !730, file: !730, line: 402, type: !1854, isLocal: true, isDefinition: true, scopeLine: 403, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !737)
!2238 = !DILocalVariable(name: "server", arg: 1, scope: !2237, file: !730, line: 402, type: !338)
!2239 = !DILocation(line: 402, column: 43, scope: !2237)
!2240 = !DILocation(line: 404, column: 87, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2237, file: !730, line: 404, column: 6)
!2242 = !DILocation(line: 404, column: 69, scope: !2241)
!2243 = !DILocation(line: 404, column: 54, scope: !2241)
!2244 = !DILocation(line: 404, column: 53, scope: !2241)
!2245 = !DILocation(line: 404, column: 28, scope: !2246)
!2246 = !DILexicalBlockFile(scope: !2241, file: !730, discriminator: 3)
!2247 = !DILocation(line: 404, column: 9, scope: !2241)
!2248 = !DILocation(line: 404, column: 6, scope: !2237)
!2249 = !DILocation(line: 404, column: 8, scope: !2250)
!2250 = !DILexicalBlockFile(scope: !2241, file: !730, discriminator: 1)
!2251 = !DILocation(line: 404, column: 6, scope: !2252)
!2252 = !DILexicalBlockFile(scope: !2237, file: !730, discriminator: 2)
!2253 = !DILocation(line: 405, column: 3, scope: !2241)
!2254 = !DILocation(line: 407, column: 2, scope: !2237)
!2255 = !DILocation(line: 407, column: 10, scope: !2237)
!2256 = !DILocation(line: 407, column: 21, scope: !2237)
!2257 = !DILocation(line: 408, column: 2, scope: !2237)
!2258 = !DILocation(line: 408, column: 10, scope: !2237)
!2259 = !DILocation(line: 408, column: 20, scope: !2237)
!2260 = !DILocation(line: 409, column: 2, scope: !2237)
!2261 = !DILocation(line: 409, column: 10, scope: !2237)
!2262 = !DILocation(line: 409, column: 24, scope: !2237)
!2263 = !DILocation(line: 410, column: 2, scope: !2237)
!2264 = !DILocation(line: 410, column: 10, scope: !2237)
!2265 = !DILocation(line: 410, column: 23, scope: !2237)
!2266 = !DILocation(line: 411, column: 2, scope: !2237)
!2267 = !DILocation(line: 411, column: 10, scope: !2237)
!2268 = !DILocation(line: 411, column: 26, scope: !2237)
!2269 = !DILocation(line: 413, column: 2, scope: !2237)
!2270 = !DILocation(line: 413, column: 10, scope: !2237)
!2271 = !DILocation(line: 413, column: 25, scope: !2237)
!2272 = !DILocation(line: 415, column: 19, scope: !2237)
!2273 = !DILocation(line: 415, column: 2, scope: !2237)
!2274 = !DILocation(line: 415, column: 10, scope: !2237)
!2275 = !DILocation(line: 415, column: 17, scope: !2237)
!2276 = !DILocation(line: 418, column: 14, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2237, file: !730, line: 418, column: 13)
!2278 = !DILocation(line: 418, column: 22, scope: !2277)
!2279 = !DILocation(line: 418, column: 13, scope: !2237)
!2280 = !DILocation(line: 419, column: 15, scope: !2277)
!2281 = !DILocation(line: 419, column: 3, scope: !2277)
!2282 = !DILocation(line: 420, column: 1, scope: !2237)
!2283 = distinct !DISubprogram(name: "sig_destroyed", scope: !730, file: !730, line: 428, type: !1854, isLocal: true, isDefinition: true, scopeLine: 429, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !737)
!2284 = !DILocalVariable(name: "server", arg: 1, scope: !2283, file: !730, line: 428, type: !338)
!2285 = !DILocation(line: 428, column: 43, scope: !2283)
!2286 = !DILocalVariable(name: "tmp", scope: !2283, file: !730, line: 430, type: !210)
!2287 = !DILocation(line: 430, column: 10, scope: !2283)
!2288 = !DILocation(line: 432, column: 87, scope: !2289)
!2289 = distinct !DILexicalBlock(scope: !2283, file: !730, line: 432, column: 6)
!2290 = !DILocation(line: 432, column: 69, scope: !2289)
!2291 = !DILocation(line: 432, column: 54, scope: !2289)
!2292 = !DILocation(line: 432, column: 53, scope: !2289)
!2293 = !DILocation(line: 432, column: 28, scope: !2294)
!2294 = !DILexicalBlockFile(scope: !2289, file: !730, discriminator: 3)
!2295 = !DILocation(line: 432, column: 9, scope: !2289)
!2296 = !DILocation(line: 432, column: 6, scope: !2283)
!2297 = !DILocation(line: 432, column: 8, scope: !2298)
!2298 = !DILexicalBlockFile(scope: !2289, file: !730, discriminator: 1)
!2299 = !DILocation(line: 432, column: 6, scope: !2300)
!2300 = !DILexicalBlockFile(scope: !2283, file: !730, discriminator: 2)
!2301 = !DILocation(line: 433, column: 3, scope: !2289)
!2302 = !DILocation(line: 435, column: 13, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2283, file: !730, line: 435, column: 2)
!2304 = !DILocation(line: 435, column: 21, scope: !2303)
!2305 = !DILocation(line: 435, column: 11, scope: !2303)
!2306 = !DILocation(line: 435, column: 7, scope: !2303)
!2307 = !DILocation(line: 435, column: 31, scope: !2308)
!2308 = !DILexicalBlockFile(scope: !2309, file: !730, discriminator: 1)
!2309 = distinct !DILexicalBlock(scope: !2303, file: !730, line: 435, column: 2)
!2310 = !DILocation(line: 435, column: 35, scope: !2308)
!2311 = !DILocation(line: 435, column: 2, scope: !2308)
!2312 = !DILocation(line: 436, column: 10, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2309, file: !730, line: 435, column: 66)
!2314 = !DILocation(line: 436, column: 15, scope: !2313)
!2315 = !DILocation(line: 436, column: 3, scope: !2313)
!2316 = !DILocation(line: 437, column: 7, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2313, file: !730, line: 437, column: 7)
!2318 = !DILocation(line: 437, column: 12, scope: !2317)
!2319 = !DILocation(line: 437, column: 18, scope: !2317)
!2320 = !DILocation(line: 437, column: 23, scope: !2317)
!2321 = !DILocation(line: 437, column: 7, scope: !2313)
!2322 = !DILocation(line: 438, column: 49, scope: !2317)
!2323 = !DILocation(line: 438, column: 54, scope: !2317)
!2324 = !DILocation(line: 438, column: 60, scope: !2317)
!2325 = !DILocation(line: 438, column: 25, scope: !2317)
!2326 = !DILocation(line: 439, column: 2, scope: !2313)
!2327 = !DILocation(line: 435, column: 49, scope: !2328)
!2328 = !DILexicalBlockFile(scope: !2309, file: !730, discriminator: 2)
!2329 = !DILocation(line: 435, column: 54, scope: !2328)
!2330 = !DILocation(line: 435, column: 60, scope: !2328)
!2331 = !DILocation(line: 435, column: 47, scope: !2328)
!2332 = !DILocation(line: 435, column: 2, scope: !2328)
!2333 = distinct !{!2333, !2334}
!2334 = !DILocation(line: 435, column: 2, scope: !2283)
!2335 = !DILocation(line: 440, column: 15, scope: !2283)
!2336 = !DILocation(line: 440, column: 23, scope: !2283)
!2337 = !DILocation(line: 440, column: 2, scope: !2283)
!2338 = !DILocation(line: 441, column: 2, scope: !2283)
!2339 = !DILocation(line: 441, column: 10, scope: !2283)
!2340 = !DILocation(line: 441, column: 19, scope: !2283)
!2341 = !DILocation(line: 443, column: 19, scope: !2283)
!2342 = !DILocation(line: 443, column: 27, scope: !2283)
!2343 = !DILocation(line: 443, column: 2, scope: !2283)
!2344 = !DILocation(line: 444, column: 2, scope: !2283)
!2345 = !DILocation(line: 444, column: 10, scope: !2283)
!2346 = !DILocation(line: 444, column: 21, scope: !2283)
!2347 = !DILocation(line: 446, column: 6, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2283, file: !730, line: 446, column: 6)
!2349 = !DILocation(line: 446, column: 14, scope: !2348)
!2350 = !DILocation(line: 446, column: 6, scope: !2283)
!2351 = !DILocation(line: 447, column: 24, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2348, file: !730, line: 446, column: 29)
!2353 = !DILocation(line: 447, column: 32, scope: !2352)
!2354 = !DILocation(line: 447, column: 3, scope: !2352)
!2355 = !DILocation(line: 448, column: 3, scope: !2352)
!2356 = !DILocation(line: 448, column: 11, scope: !2352)
!2357 = !DILocation(line: 448, column: 25, scope: !2352)
!2358 = !DILocation(line: 449, column: 2, scope: !2352)
!2359 = !DILocation(line: 451, column: 19, scope: !2283)
!2360 = !DILocation(line: 451, column: 27, scope: !2283)
!2361 = !DILocation(line: 451, column: 2, scope: !2283)
!2362 = !DILocation(line: 452, column: 2, scope: !2283)
!2363 = !DILocation(line: 452, column: 10, scope: !2283)
!2364 = !DILocation(line: 452, column: 20, scope: !2283)
!2365 = !DILocation(line: 454, column: 2, scope: !2283)
!2366 = distinct !{!2366, !2365}
!2367 = !DILocation(line: 454, column: 11, scope: !2368)
!2368 = !DILexicalBlockFile(scope: !2369, file: !730, discriminator: 1)
!2369 = distinct !DILexicalBlock(scope: !2370, file: !730, line: 454, column: 11)
!2370 = distinct !DILexicalBlock(scope: !2283, file: !730, line: 454, column: 5)
!2371 = !DILocation(line: 454, column: 19, scope: !2368)
!2372 = !DILocation(line: 454, column: 41, scope: !2373)
!2373 = !DILexicalBlockFile(scope: !2374, file: !730, discriminator: 2)
!2374 = distinct !DILexicalBlock(scope: !2369, file: !730, line: 454, column: 32)
!2375 = !DILocation(line: 454, column: 49, scope: !2373)
!2376 = !DILocation(line: 454, column: 34, scope: !2373)
!2377 = !DILocation(line: 454, column: 64, scope: !2373)
!2378 = !DILocation(line: 454, column: 72, scope: !2373)
!2379 = !DILocation(line: 454, column: 85, scope: !2373)
!2380 = !DILocation(line: 454, column: 3, scope: !2373)
!2381 = !DILocation(line: 454, column: 5, scope: !2382)
!2382 = !DILexicalBlockFile(scope: !2370, file: !730, discriminator: 3)
!2383 = !DILocation(line: 457, column: 23, scope: !2283)
!2384 = !DILocation(line: 457, column: 31, scope: !2283)
!2385 = !DILocation(line: 458, column: 41, scope: !2283)
!2386 = !DILocation(line: 457, column: 2, scope: !2283)
!2387 = !DILocation(line: 459, column: 23, scope: !2283)
!2388 = !DILocation(line: 459, column: 31, scope: !2283)
!2389 = !DILocation(line: 459, column: 2, scope: !2283)
!2390 = !DILocation(line: 460, column: 2, scope: !2283)
!2391 = !DILocation(line: 460, column: 10, scope: !2283)
!2392 = !DILocation(line: 460, column: 19, scope: !2283)
!2393 = !DILocation(line: 462, column: 2, scope: !2283)
!2394 = distinct !{!2394, !2393}
!2395 = !DILocation(line: 462, column: 11, scope: !2396)
!2396 = !DILexicalBlockFile(scope: !2397, file: !730, discriminator: 1)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !730, line: 462, column: 11)
!2398 = distinct !DILexicalBlock(scope: !2283, file: !730, line: 462, column: 5)
!2399 = !DILocation(line: 462, column: 19, scope: !2396)
!2400 = !DILocation(line: 462, column: 45, scope: !2401)
!2401 = !DILexicalBlockFile(scope: !2402, file: !730, discriminator: 2)
!2402 = distinct !DILexicalBlock(scope: !2397, file: !730, line: 462, column: 36)
!2403 = !DILocation(line: 462, column: 53, scope: !2401)
!2404 = !DILocation(line: 462, column: 38, scope: !2401)
!2405 = !DILocation(line: 462, column: 72, scope: !2401)
!2406 = !DILocation(line: 462, column: 80, scope: !2401)
!2407 = !DILocation(line: 462, column: 97, scope: !2401)
!2408 = !DILocation(line: 462, column: 3, scope: !2401)
!2409 = !DILocation(line: 462, column: 5, scope: !2410)
!2410 = !DILexicalBlockFile(scope: !2398, file: !730, discriminator: 3)
!2411 = !DILocation(line: 463, column: 2, scope: !2283)
!2412 = distinct !{!2412, !2411}
!2413 = !DILocation(line: 463, column: 11, scope: !2414)
!2414 = !DILexicalBlockFile(scope: !2415, file: !730, discriminator: 1)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !730, line: 463, column: 11)
!2416 = distinct !DILexicalBlock(scope: !2283, file: !730, line: 463, column: 5)
!2417 = !DILocation(line: 463, column: 19, scope: !2414)
!2418 = !DILocation(line: 463, column: 42, scope: !2419)
!2419 = !DILexicalBlockFile(scope: !2420, file: !730, discriminator: 2)
!2420 = distinct !DILexicalBlock(scope: !2415, file: !730, line: 463, column: 33)
!2421 = !DILocation(line: 463, column: 50, scope: !2419)
!2422 = !DILocation(line: 463, column: 35, scope: !2419)
!2423 = !DILocation(line: 463, column: 66, scope: !2419)
!2424 = !DILocation(line: 463, column: 74, scope: !2419)
!2425 = !DILocation(line: 463, column: 88, scope: !2419)
!2426 = !DILocation(line: 463, column: 3, scope: !2419)
!2427 = !DILocation(line: 463, column: 5, scope: !2428)
!2428 = !DILexicalBlockFile(scope: !2416, file: !730, discriminator: 3)
!2429 = !DILocation(line: 464, column: 2, scope: !2283)
!2430 = distinct !{!2430, !2429}
!2431 = !DILocation(line: 464, column: 11, scope: !2432)
!2432 = !DILexicalBlockFile(scope: !2433, file: !730, discriminator: 1)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !730, line: 464, column: 11)
!2434 = distinct !DILexicalBlock(scope: !2283, file: !730, line: 464, column: 5)
!2435 = !DILocation(line: 464, column: 19, scope: !2432)
!2436 = !DILocation(line: 464, column: 38, scope: !2437)
!2437 = !DILexicalBlockFile(scope: !2438, file: !730, discriminator: 2)
!2438 = distinct !DILexicalBlock(scope: !2433, file: !730, line: 464, column: 29)
!2439 = !DILocation(line: 464, column: 46, scope: !2437)
!2440 = !DILocation(line: 464, column: 31, scope: !2437)
!2441 = !DILocation(line: 464, column: 58, scope: !2437)
!2442 = !DILocation(line: 464, column: 66, scope: !2437)
!2443 = !DILocation(line: 464, column: 76, scope: !2437)
!2444 = !DILocation(line: 464, column: 3, scope: !2437)
!2445 = !DILocation(line: 464, column: 5, scope: !2446)
!2446 = !DILexicalBlockFile(scope: !2434, file: !730, discriminator: 3)
!2447 = !DILocation(line: 465, column: 2, scope: !2283)
!2448 = distinct !{!2448, !2447}
!2449 = !DILocation(line: 465, column: 11, scope: !2450)
!2450 = !DILexicalBlockFile(scope: !2451, file: !730, discriminator: 1)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !730, line: 465, column: 11)
!2452 = distinct !DILexicalBlock(scope: !2283, file: !730, line: 465, column: 5)
!2453 = !DILocation(line: 465, column: 19, scope: !2450)
!2454 = !DILocation(line: 465, column: 38, scope: !2455)
!2455 = !DILexicalBlockFile(scope: !2456, file: !730, discriminator: 2)
!2456 = distinct !DILexicalBlock(scope: !2451, file: !730, line: 465, column: 29)
!2457 = !DILocation(line: 465, column: 46, scope: !2455)
!2458 = !DILocation(line: 465, column: 31, scope: !2455)
!2459 = !DILocation(line: 465, column: 58, scope: !2455)
!2460 = !DILocation(line: 465, column: 66, scope: !2455)
!2461 = !DILocation(line: 465, column: 76, scope: !2455)
!2462 = !DILocation(line: 465, column: 3, scope: !2455)
!2463 = !DILocation(line: 465, column: 5, scope: !2464)
!2464 = !DILexicalBlockFile(scope: !2452, file: !730, discriminator: 3)
!2465 = !DILocation(line: 466, column: 2, scope: !2283)
!2466 = distinct !{!2466, !2465}
!2467 = !DILocation(line: 466, column: 11, scope: !2468)
!2468 = !DILexicalBlockFile(scope: !2469, file: !730, discriminator: 1)
!2469 = distinct !DILexicalBlock(scope: !2470, file: !730, line: 466, column: 11)
!2470 = distinct !DILexicalBlock(scope: !2283, file: !730, line: 466, column: 5)
!2471 = !DILocation(line: 466, column: 19, scope: !2468)
!2472 = !DILocation(line: 466, column: 41, scope: !2473)
!2473 = !DILexicalBlockFile(scope: !2474, file: !730, discriminator: 2)
!2474 = distinct !DILexicalBlock(scope: !2469, file: !730, line: 466, column: 32)
!2475 = !DILocation(line: 466, column: 49, scope: !2473)
!2476 = !DILocation(line: 466, column: 34, scope: !2473)
!2477 = !DILocation(line: 466, column: 64, scope: !2473)
!2478 = !DILocation(line: 466, column: 72, scope: !2473)
!2479 = !DILocation(line: 466, column: 85, scope: !2473)
!2480 = !DILocation(line: 466, column: 3, scope: !2473)
!2481 = !DILocation(line: 466, column: 5, scope: !2482)
!2482 = !DILexicalBlockFile(scope: !2470, file: !730, discriminator: 3)
!2483 = !DILocation(line: 467, column: 1, scope: !2283)
!2484 = distinct !DISubprogram(name: "sig_server_quit", scope: !730, file: !730, line: 469, type: !959, isLocal: true, isDefinition: true, scopeLine: 470, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !737)
!2485 = !DILocalVariable(name: "server", arg: 1, scope: !2484, file: !730, line: 469, type: !338)
!2486 = !DILocation(line: 469, column: 45, scope: !2484)
!2487 = !DILocalVariable(name: "msg", arg: 2, scope: !2484, file: !730, line: 469, type: !336)
!2488 = !DILocation(line: 469, column: 65, scope: !2484)
!2489 = !DILocalVariable(name: "str", scope: !2484, file: !730, line: 471, type: !55)
!2490 = !DILocation(line: 471, column: 8, scope: !2484)
!2491 = !DILocalVariable(name: "recoded", scope: !2484, file: !730, line: 472, type: !55)
!2492 = !DILocation(line: 472, column: 8, scope: !2484)
!2493 = !DILocation(line: 474, column: 87, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2484, file: !730, line: 474, column: 6)
!2495 = !DILocation(line: 474, column: 69, scope: !2494)
!2496 = !DILocation(line: 474, column: 54, scope: !2494)
!2497 = !DILocation(line: 474, column: 53, scope: !2494)
!2498 = !DILocation(line: 474, column: 28, scope: !2499)
!2499 = !DILexicalBlockFile(scope: !2494, file: !730, discriminator: 4)
!2500 = !DILocation(line: 474, column: 9, scope: !2494)
!2501 = !DILocation(line: 474, column: 32, scope: !2494)
!2502 = !DILocation(line: 474, column: 8, scope: !2503)
!2503 = !DILexicalBlockFile(scope: !2494, file: !730, discriminator: 1)
!2504 = !DILocation(line: 474, column: 32, scope: !2505)
!2505 = !DILexicalBlockFile(scope: !2494, file: !730, discriminator: 2)
!2506 = !DILocation(line: 474, column: 36, scope: !2507)
!2507 = !DILexicalBlockFile(scope: !2494, file: !730, discriminator: 3)
!2508 = !DILocation(line: 474, column: 44, scope: !2507)
!2509 = !DILocation(line: 474, column: 6, scope: !2507)
!2510 = !DILocation(line: 475, column: 3, scope: !2494)
!2511 = !DILocation(line: 477, column: 57, scope: !2484)
!2512 = !DILocation(line: 477, column: 39, scope: !2484)
!2513 = !DILocation(line: 477, column: 24, scope: !2484)
!2514 = !DILocation(line: 477, column: 36, scope: !2484)
!2515 = !DILocation(line: 477, column: 12, scope: !2516)
!2516 = !DILexicalBlockFile(scope: !2484, file: !730, discriminator: 1)
!2517 = !DILocation(line: 477, column: 10, scope: !2484)
!2518 = !DILocation(line: 478, column: 36, scope: !2484)
!2519 = !DILocation(line: 478, column: 8, scope: !2484)
!2520 = !DILocation(line: 478, column: 6, scope: !2484)
!2521 = !DILocation(line: 479, column: 19, scope: !2484)
!2522 = !DILocation(line: 479, column: 27, scope: !2484)
!2523 = !DILocation(line: 479, column: 2, scope: !2484)
!2524 = !DILocation(line: 480, column: 9, scope: !2484)
!2525 = !DILocation(line: 480, column: 2, scope: !2484)
!2526 = !DILocation(line: 481, column: 9, scope: !2484)
!2527 = !DILocation(line: 481, column: 2, scope: !2484)
!2528 = !DILocation(line: 482, column: 1, scope: !2484)
!2529 = !DILocation(line: 482, column: 1, scope: !2516)
!2530 = distinct !DISubprogram(name: "event_connected", scope: !730, file: !730, line: 686, type: !1099, isLocal: true, isDefinition: true, scopeLine: 687, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !737)
!2531 = !DILocalVariable(name: "server", arg: 1, scope: !2530, file: !730, line: 686, type: !338)
!2532 = !DILocation(line: 686, column: 45, scope: !2530)
!2533 = !DILocalVariable(name: "data", arg: 2, scope: !2530, file: !730, line: 686, type: !336)
!2534 = !DILocation(line: 686, column: 65, scope: !2530)
!2535 = !DILocalVariable(name: "from", arg: 3, scope: !2530, file: !730, line: 686, type: !336)
!2536 = !DILocation(line: 686, column: 83, scope: !2530)
!2537 = !DILocalVariable(name: "params", scope: !2530, file: !730, line: 688, type: !55)
!2538 = !DILocation(line: 688, column: 8, scope: !2530)
!2539 = !DILocalVariable(name: "nick", scope: !2530, file: !730, line: 688, type: !55)
!2540 = !DILocation(line: 688, column: 17, scope: !2530)
!2541 = !DILocation(line: 690, column: 2, scope: !2530)
!2542 = distinct !{!2542, !2541}
!2543 = !DILocation(line: 690, column: 10, scope: !2544)
!2544 = !DILexicalBlockFile(scope: !2545, file: !730, discriminator: 1)
!2545 = distinct !DILexicalBlock(scope: !2546, file: !730, line: 690, column: 10)
!2546 = distinct !DILexicalBlock(scope: !2530, file: !730, line: 690, column: 4)
!2547 = !DILocation(line: 690, column: 17, scope: !2544)
!2548 = !DILocation(line: 690, column: 5, scope: !2549)
!2549 = !DILexicalBlockFile(scope: !2550, file: !730, discriminator: 2)
!2550 = distinct !DILexicalBlock(scope: !2545, file: !730, line: 690, column: 3)
!2551 = !DILocation(line: 690, column: 14, scope: !2552)
!2552 = !DILexicalBlockFile(scope: !2553, file: !730, discriminator: 3)
!2553 = distinct !DILexicalBlock(scope: !2545, file: !730, line: 690, column: 12)
!2554 = !DILocation(line: 690, column: 101, scope: !2552)
!2555 = !DILocation(line: 690, column: 112, scope: !2556)
!2556 = !DILexicalBlockFile(scope: !2546, file: !730, discriminator: 4)
!2557 = !DILocation(line: 692, column: 28, scope: !2530)
!2558 = !DILocation(line: 692, column: 11, scope: !2530)
!2559 = !DILocation(line: 692, column: 9, scope: !2530)
!2560 = !DILocation(line: 694, column: 16, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2530, file: !730, line: 694, column: 6)
!2562 = !DILocation(line: 694, column: 24, scope: !2561)
!2563 = !DILocation(line: 694, column: 30, scope: !2561)
!2564 = !DILocation(line: 694, column: 6, scope: !2561)
!2565 = !DILocation(line: 694, column: 36, scope: !2561)
!2566 = !DILocation(line: 694, column: 6, scope: !2530)
!2567 = !DILocation(line: 696, column: 10, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2561, file: !730, line: 694, column: 42)
!2569 = !DILocation(line: 696, column: 18, scope: !2568)
!2570 = !DILocation(line: 696, column: 3, scope: !2568)
!2571 = !DILocation(line: 697, column: 27, scope: !2568)
!2572 = !DILocation(line: 697, column: 18, scope: !2568)
!2573 = !DILocation(line: 697, column: 3, scope: !2568)
!2574 = !DILocation(line: 697, column: 11, scope: !2568)
!2575 = !DILocation(line: 697, column: 16, scope: !2568)
!2576 = !DILocation(line: 698, column: 2, scope: !2568)
!2577 = !DILocation(line: 701, column: 9, scope: !2530)
!2578 = !DILocation(line: 701, column: 17, scope: !2530)
!2579 = !DILocation(line: 701, column: 2, scope: !2530)
!2580 = !DILocation(line: 702, column: 25, scope: !2530)
!2581 = !DILocation(line: 702, column: 30, scope: !2530)
!2582 = !DILocation(line: 703, column: 12, scope: !2530)
!2583 = !DILocation(line: 703, column: 20, scope: !2530)
!2584 = !DILocation(line: 703, column: 29, scope: !2530)
!2585 = !DILocation(line: 703, column: 3, scope: !2530)
!2586 = !DILocation(line: 702, column: 25, scope: !2587)
!2587 = !DILexicalBlockFile(scope: !2530, file: !730, discriminator: 1)
!2588 = !DILocation(line: 704, column: 12, scope: !2530)
!2589 = !DILocation(line: 704, column: 3, scope: !2530)
!2590 = !DILocation(line: 702, column: 25, scope: !2591)
!2591 = !DILexicalBlockFile(scope: !2530, file: !730, discriminator: 2)
!2592 = !DILocation(line: 702, column: 25, scope: !2593)
!2593 = !DILexicalBlockFile(scope: !2530, file: !730, discriminator: 3)
!2594 = !DILocation(line: 702, column: 2, scope: !2593)
!2595 = !DILocation(line: 702, column: 10, scope: !2593)
!2596 = !DILocation(line: 702, column: 23, scope: !2593)
!2597 = !DILocation(line: 707, column: 2, scope: !2530)
!2598 = !DILocation(line: 707, column: 10, scope: !2530)
!2599 = !DILocation(line: 707, column: 20, scope: !2530)
!2600 = !DILocation(line: 708, column: 30, scope: !2530)
!2601 = !DILocation(line: 708, column: 2, scope: !2530)
!2602 = !DILocation(line: 708, column: 10, scope: !2530)
!2603 = !DILocation(line: 708, column: 28, scope: !2530)
!2604 = !DILocation(line: 711, column: 22, scope: !2530)
!2605 = !DILocation(line: 711, column: 30, scope: !2530)
!2606 = !DILocation(line: 711, column: 2, scope: !2530)
!2607 = !DILocation(line: 713, column: 6, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2530, file: !730, line: 713, column: 6)
!2609 = !DILocation(line: 713, column: 14, scope: !2608)
!2610 = !DILocation(line: 713, column: 23, scope: !2608)
!2611 = !DILocation(line: 713, column: 32, scope: !2608)
!2612 = !DILocation(line: 713, column: 6, scope: !2530)
!2613 = !DILocation(line: 719, column: 17, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2608, file: !730, line: 713, column: 40)
!2615 = !DILocation(line: 719, column: 39, scope: !2614)
!2616 = !DILocation(line: 719, column: 47, scope: !2614)
!2617 = !DILocation(line: 720, column: 5, scope: !2614)
!2618 = !DILocation(line: 720, column: 13, scope: !2614)
!2619 = !DILocation(line: 720, column: 22, scope: !2614)
!2620 = !DILocation(line: 719, column: 3, scope: !2614)
!2621 = !DILocation(line: 721, column: 10, scope: !2614)
!2622 = !DILocation(line: 721, column: 18, scope: !2614)
!2623 = !DILocation(line: 721, column: 3, scope: !2614)
!2624 = !DILocation(line: 722, column: 38, scope: !2614)
!2625 = !DILocation(line: 722, column: 46, scope: !2614)
!2626 = !DILocation(line: 722, column: 55, scope: !2614)
!2627 = !DILocation(line: 722, column: 29, scope: !2614)
!2628 = !DILocation(line: 722, column: 3, scope: !2614)
!2629 = !DILocation(line: 722, column: 11, scope: !2614)
!2630 = !DILocation(line: 722, column: 27, scope: !2614)
!2631 = !DILocation(line: 723, column: 2, scope: !2614)
!2632 = !DILocation(line: 725, column: 36, scope: !2530)
!2633 = !DILocation(line: 725, column: 2, scope: !2530)
!2634 = !DILocation(line: 726, column: 9, scope: !2530)
!2635 = !DILocation(line: 726, column: 2, scope: !2530)
!2636 = !DILocation(line: 727, column: 1, scope: !2530)
!2637 = !DILocation(line: 727, column: 1, scope: !2587)
!2638 = distinct !DISubprogram(name: "event_server_info", scope: !730, file: !730, line: 729, type: !959, isLocal: true, isDefinition: true, scopeLine: 730, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !737)
!2639 = !DILocalVariable(name: "server", arg: 1, scope: !2638, file: !730, line: 729, type: !338)
!2640 = !DILocation(line: 729, column: 47, scope: !2638)
!2641 = !DILocalVariable(name: "data", arg: 2, scope: !2638, file: !730, line: 729, type: !336)
!2642 = !DILocation(line: 729, column: 67, scope: !2638)
!2643 = !DILocalVariable(name: "params", scope: !2638, file: !730, line: 731, type: !55)
!2644 = !DILocation(line: 731, column: 8, scope: !2638)
!2645 = !DILocalVariable(name: "ircd_version", scope: !2638, file: !730, line: 731, type: !55)
!2646 = !DILocation(line: 731, column: 17, scope: !2638)
!2647 = !DILocalVariable(name: "usermodes", scope: !2638, file: !730, line: 731, type: !55)
!2648 = !DILocation(line: 731, column: 32, scope: !2638)
!2649 = !DILocalVariable(name: "chanmodes", scope: !2638, file: !730, line: 731, type: !55)
!2650 = !DILocation(line: 731, column: 44, scope: !2638)
!2651 = !DILocation(line: 733, column: 2, scope: !2638)
!2652 = distinct !{!2652, !2651}
!2653 = !DILocation(line: 733, column: 10, scope: !2654)
!2654 = !DILexicalBlockFile(scope: !2655, file: !730, discriminator: 1)
!2655 = distinct !DILexicalBlock(scope: !2656, file: !730, line: 733, column: 10)
!2656 = distinct !DILexicalBlock(scope: !2638, file: !730, line: 733, column: 4)
!2657 = !DILocation(line: 733, column: 17, scope: !2654)
!2658 = !DILocation(line: 733, column: 5, scope: !2659)
!2659 = !DILexicalBlockFile(scope: !2660, file: !730, discriminator: 2)
!2660 = distinct !DILexicalBlock(scope: !2655, file: !730, line: 733, column: 3)
!2661 = !DILocation(line: 733, column: 14, scope: !2662)
!2662 = !DILexicalBlockFile(scope: !2663, file: !730, discriminator: 3)
!2663 = distinct !DILexicalBlock(scope: !2655, file: !730, line: 733, column: 12)
!2664 = !DILocation(line: 733, column: 101, scope: !2662)
!2665 = !DILocation(line: 733, column: 112, scope: !2666)
!2666 = !DILexicalBlockFile(scope: !2656, file: !730, discriminator: 4)
!2667 = !DILocation(line: 735, column: 28, scope: !2638)
!2668 = !DILocation(line: 735, column: 11, scope: !2638)
!2669 = !DILocation(line: 735, column: 9, scope: !2638)
!2670 = !DILocation(line: 738, column: 13, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2638, file: !730, line: 738, column: 6)
!2672 = !DILocation(line: 738, column: 6, scope: !2671)
!2673 = !DILocation(line: 738, column: 29, scope: !2671)
!2674 = !DILocation(line: 738, column: 39, scope: !2675)
!2675 = !DILexicalBlockFile(scope: !2671, file: !730, discriminator: 1)
!2676 = !DILocation(line: 738, column: 32, scope: !2675)
!2677 = !DILocation(line: 738, column: 6, scope: !2675)
!2678 = !DILocation(line: 739, column: 3, scope: !2671)
!2679 = !DILocation(line: 739, column: 11, scope: !2671)
!2680 = !DILocation(line: 739, column: 23, scope: !2671)
!2681 = !DILocation(line: 742, column: 9, scope: !2638)
!2682 = !DILocation(line: 742, column: 17, scope: !2638)
!2683 = !DILocation(line: 742, column: 2, scope: !2638)
!2684 = !DILocation(line: 743, column: 29, scope: !2638)
!2685 = !DILocation(line: 743, column: 20, scope: !2638)
!2686 = !DILocation(line: 743, column: 2, scope: !2638)
!2687 = !DILocation(line: 743, column: 10, scope: !2638)
!2688 = !DILocation(line: 743, column: 18, scope: !2638)
!2689 = !DILocation(line: 745, column: 9, scope: !2638)
!2690 = !DILocation(line: 745, column: 2, scope: !2638)
!2691 = !DILocation(line: 746, column: 1, scope: !2638)
!2692 = !DILocation(line: 746, column: 1, scope: !2693)
!2693 = !DILexicalBlockFile(scope: !2638, file: !730, discriminator: 1)
!2694 = distinct !DISubprogram(name: "event_isupport", scope: !730, file: !730, line: 794, type: !959, isLocal: true, isDefinition: true, scopeLine: 795, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !737)
!2695 = !DILocalVariable(name: "server", arg: 1, scope: !2694, file: !730, line: 794, type: !338)
!2696 = !DILocation(line: 794, column: 44, scope: !2694)
!2697 = !DILocalVariable(name: "data", arg: 2, scope: !2694, file: !730, line: 794, type: !336)
!2698 = !DILocation(line: 794, column: 64, scope: !2694)
!2699 = !DILocalVariable(name: "item", scope: !2694, file: !730, line: 796, type: !478)
!2700 = !DILocation(line: 796, column: 9, scope: !2694)
!2701 = !DILocalVariable(name: "sptr", scope: !2694, file: !730, line: 796, type: !55)
!2702 = !DILocation(line: 796, column: 16, scope: !2694)
!2703 = !DILocalVariable(name: "eptr", scope: !2694, file: !730, line: 796, type: !55)
!2704 = !DILocation(line: 796, column: 23, scope: !2694)
!2705 = !DILocalVariable(name: "isupport", scope: !2694, file: !730, line: 797, type: !478)
!2706 = !DILocation(line: 797, column: 9, scope: !2694)
!2707 = !DILocalVariable(name: "key", scope: !2694, file: !730, line: 798, type: !148)
!2708 = !DILocation(line: 798, column: 11, scope: !2694)
!2709 = !DILocalVariable(name: "value", scope: !2694, file: !730, line: 798, type: !148)
!2710 = !DILocation(line: 798, column: 16, scope: !2694)
!2711 = !DILocation(line: 800, column: 2, scope: !2694)
!2712 = distinct !{!2712, !2711}
!2713 = !DILocation(line: 800, column: 10, scope: !2714)
!2714 = !DILexicalBlockFile(scope: !2715, file: !730, discriminator: 1)
!2715 = distinct !DILexicalBlock(scope: !2716, file: !730, line: 800, column: 10)
!2716 = distinct !DILexicalBlock(scope: !2694, file: !730, line: 800, column: 4)
!2717 = !DILocation(line: 800, column: 17, scope: !2714)
!2718 = !DILocation(line: 800, column: 5, scope: !2719)
!2719 = !DILexicalBlockFile(scope: !2720, file: !730, discriminator: 2)
!2720 = distinct !DILexicalBlock(scope: !2715, file: !730, line: 800, column: 3)
!2721 = !DILocation(line: 800, column: 14, scope: !2722)
!2722 = !DILexicalBlockFile(scope: !2723, file: !730, discriminator: 3)
!2723 = distinct !DILexicalBlock(scope: !2715, file: !730, line: 800, column: 12)
!2724 = !DILocation(line: 800, column: 101, scope: !2722)
!2725 = !DILocation(line: 800, column: 112, scope: !2726)
!2726 = !DILexicalBlockFile(scope: !2716, file: !730, discriminator: 4)
!2727 = !DILocation(line: 802, column: 2, scope: !2694)
!2728 = !DILocation(line: 802, column: 10, scope: !2694)
!2729 = !DILocation(line: 802, column: 24, scope: !2694)
!2730 = !DILocation(line: 804, column: 16, scope: !2694)
!2731 = !DILocation(line: 804, column: 9, scope: !2694)
!2732 = !DILocation(line: 804, column: 7, scope: !2694)
!2733 = !DILocation(line: 805, column: 6, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2694, file: !730, line: 805, column: 6)
!2735 = !DILocation(line: 805, column: 11, scope: !2734)
!2736 = !DILocation(line: 805, column: 6, scope: !2694)
!2737 = !DILocation(line: 806, column: 3, scope: !2734)
!2738 = !DILocation(line: 807, column: 6, scope: !2694)
!2739 = !DILocation(line: 809, column: 24, scope: !2694)
!2740 = !DILocation(line: 809, column: 13, scope: !2694)
!2741 = !DILocation(line: 809, column: 11, scope: !2694)
!2742 = !DILocation(line: 811, column: 13, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2694, file: !730, line: 811, column: 2)
!2744 = !DILocation(line: 811, column: 11, scope: !2743)
!2745 = !DILocation(line: 811, column: 6, scope: !2743)
!2746 = !DILocation(line: 811, column: 24, scope: !2747)
!2747 = !DILexicalBlockFile(scope: !2748, file: !730, discriminator: 1)
!2748 = distinct !DILexicalBlock(scope: !2743, file: !730, line: 811, column: 2)
!2749 = !DILocation(line: 811, column: 23, scope: !2747)
!2750 = !DILocation(line: 811, column: 29, scope: !2747)
!2751 = !DILocation(line: 811, column: 2, scope: !2747)
!2752 = !DILocalVariable(name: "removed", scope: !2753, file: !730, line: 812, type: !51)
!2753 = distinct !DILexicalBlock(scope: !2748, file: !730, line: 811, column: 45)
!2754 = !DILocation(line: 812, column: 7, scope: !2753)
!2755 = !DILocation(line: 814, column: 9, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2753, file: !730, line: 814, column: 7)
!2757 = !DILocation(line: 814, column: 8, scope: !2756)
!2758 = !DILocation(line: 814, column: 7, scope: !2756)
!2759 = !DILocation(line: 814, column: 14, scope: !2756)
!2760 = !DILocation(line: 814, column: 7, scope: !2753)
!2761 = !DILocation(line: 815, column: 4, scope: !2756)
!2762 = !DILocation(line: 817, column: 9, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2753, file: !730, line: 817, column: 7)
!2764 = !DILocation(line: 817, column: 8, scope: !2763)
!2765 = !DILocation(line: 817, column: 7, scope: !2763)
!2766 = !DILocation(line: 817, column: 14, scope: !2763)
!2767 = !DILocation(line: 817, column: 7, scope: !2753)
!2768 = !DILocation(line: 818, column: 4, scope: !2763)
!2769 = !DILocation(line: 820, column: 18, scope: !2753)
!2770 = !DILocation(line: 820, column: 17, scope: !2753)
!2771 = !DILocation(line: 820, column: 10, scope: !2753)
!2772 = !DILocation(line: 820, column: 8, scope: !2753)
!2773 = !DILocation(line: 821, column: 7, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2753, file: !730, line: 821, column: 7)
!2775 = !DILocation(line: 821, column: 12, scope: !2774)
!2776 = !DILocation(line: 821, column: 7, scope: !2753)
!2777 = !DILocation(line: 822, column: 5, scope: !2778)
!2778 = distinct !DILexicalBlock(scope: !2774, file: !730, line: 821, column: 20)
!2779 = !DILocation(line: 822, column: 10, scope: !2778)
!2780 = !DILocation(line: 823, column: 8, scope: !2778)
!2781 = !DILocation(line: 824, column: 3, scope: !2778)
!2782 = !DILocation(line: 826, column: 11, scope: !2753)
!2783 = !DILocation(line: 826, column: 10, scope: !2753)
!2784 = !DILocation(line: 826, column: 8, scope: !2753)
!2785 = !DILocation(line: 827, column: 7, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2753, file: !730, line: 827, column: 6)
!2787 = !DILocation(line: 827, column: 6, scope: !2786)
!2788 = !DILocation(line: 827, column: 12, scope: !2786)
!2789 = !DILocation(line: 827, column: 6, scope: !2753)
!2790 = !DILocation(line: 828, column: 12, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2786, file: !730, line: 827, column: 20)
!2792 = !DILocation(line: 829, column: 8, scope: !2791)
!2793 = !DILocation(line: 830, column: 3, scope: !2791)
!2794 = !DILocation(line: 832, column: 15, scope: !2753)
!2795 = !DILocation(line: 832, column: 7, scope: !2753)
!2796 = !DILocation(line: 833, column: 37, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2753, file: !730, line: 833, column: 7)
!2798 = !DILocation(line: 833, column: 45, scope: !2797)
!2799 = !DILocation(line: 833, column: 55, scope: !2797)
!2800 = !DILocation(line: 833, column: 8, scope: !2797)
!2801 = !DILocation(line: 834, column: 23, scope: !2797)
!2802 = !DILocation(line: 834, column: 26, scope: !2803)
!2803 = !DILexicalBlockFile(scope: !2797, file: !730, discriminator: 1)
!2804 = !DILocation(line: 833, column: 7, scope: !2805)
!2805 = !DILexicalBlockFile(scope: !2753, file: !730, discriminator: 1)
!2806 = !DILocation(line: 835, column: 4, scope: !2797)
!2807 = !DILocation(line: 837, column: 23, scope: !2753)
!2808 = !DILocation(line: 837, column: 31, scope: !2753)
!2809 = !DILocation(line: 837, column: 41, scope: !2753)
!2810 = !DILocation(line: 837, column: 3, scope: !2753)
!2811 = !DILocation(line: 838, column: 8, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2753, file: !730, line: 838, column: 7)
!2813 = !DILocation(line: 838, column: 7, scope: !2753)
!2814 = !DILocation(line: 839, column: 24, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2812, file: !730, line: 838, column: 17)
!2816 = !DILocation(line: 839, column: 32, scope: !2815)
!2817 = !DILocation(line: 839, column: 51, scope: !2815)
!2818 = !DILocation(line: 839, column: 42, scope: !2815)
!2819 = !DILocation(line: 840, column: 19, scope: !2815)
!2820 = !DILocation(line: 840, column: 24, scope: !2815)
!2821 = !DILocation(line: 840, column: 33, scope: !2822)
!2822 = !DILexicalBlockFile(scope: !2815, file: !730, discriminator: 1)
!2823 = !DILocation(line: 840, column: 19, scope: !2822)
!2824 = !DILocation(line: 840, column: 19, scope: !2825)
!2825 = !DILexicalBlockFile(scope: !2815, file: !730, discriminator: 2)
!2826 = !DILocation(line: 840, column: 19, scope: !2827)
!2827 = !DILexicalBlockFile(scope: !2815, file: !730, discriminator: 3)
!2828 = !DILocation(line: 840, column: 10, scope: !2827)
!2829 = !DILocation(line: 839, column: 4, scope: !2822)
!2830 = !DILocation(line: 841, column: 3, scope: !2815)
!2831 = !DILocation(line: 843, column: 10, scope: !2753)
!2832 = !DILocation(line: 843, column: 3, scope: !2753)
!2833 = !DILocation(line: 844, column: 10, scope: !2753)
!2834 = !DILocation(line: 844, column: 3, scope: !2753)
!2835 = !DILocation(line: 845, column: 2, scope: !2753)
!2836 = !DILocation(line: 811, column: 41, scope: !2837)
!2837 = !DILexicalBlockFile(scope: !2748, file: !730, discriminator: 2)
!2838 = !DILocation(line: 811, column: 2, scope: !2837)
!2839 = distinct !{!2839, !2840}
!2840 = !DILocation(line: 811, column: 2, scope: !2694)
!2841 = !DILocation(line: 846, column: 13, scope: !2694)
!2842 = !DILocation(line: 846, column: 2, scope: !2694)
!2843 = !DILocation(line: 847, column: 27, scope: !2694)
!2844 = !DILocation(line: 847, column: 2, scope: !2694)
!2845 = !DILocation(line: 849, column: 1, scope: !2694)
!2846 = !DILocation(line: 849, column: 1, scope: !2847)
!2847 = !DILexicalBlockFile(scope: !2694, file: !730, discriminator: 1)
!2848 = distinct !DISubprogram(name: "event_motd", scope: !730, file: !730, line: 851, type: !1099, isLocal: true, isDefinition: true, scopeLine: 852, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !737)
!2849 = !DILocalVariable(name: "server", arg: 1, scope: !2848, file: !730, line: 851, type: !338)
!2850 = !DILocation(line: 851, column: 40, scope: !2848)
!2851 = !DILocalVariable(name: "data", arg: 2, scope: !2848, file: !730, line: 851, type: !336)
!2852 = !DILocation(line: 851, column: 60, scope: !2848)
!2853 = !DILocalVariable(name: "from", arg: 3, scope: !2848, file: !730, line: 851, type: !336)
!2854 = !DILocation(line: 851, column: 78, scope: !2848)
!2855 = !DILocation(line: 853, column: 6, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2848, file: !730, line: 853, column: 6)
!2857 = !DILocation(line: 853, column: 14, scope: !2856)
!2858 = !DILocation(line: 853, column: 6, scope: !2848)
!2859 = !DILocation(line: 854, column: 3, scope: !2856)
!2860 = !DILocation(line: 864, column: 9, scope: !2848)
!2861 = !DILocation(line: 864, column: 17, scope: !2848)
!2862 = !DILocation(line: 864, column: 29, scope: !2848)
!2863 = !DILocation(line: 865, column: 18, scope: !2848)
!2864 = !DILocation(line: 865, column: 26, scope: !2848)
!2865 = !DILocation(line: 865, column: 32, scope: !2848)
!2866 = !DILocation(line: 865, column: 2, scope: !2848)
!2867 = !DILocation(line: 866, column: 1, scope: !2848)
!2868 = !DILocation(line: 866, column: 1, scope: !2869)
!2869 = !DILexicalBlockFile(scope: !2848, file: !730, discriminator: 1)
!2870 = distinct !DISubprogram(name: "event_end_of_motd", scope: !730, file: !730, line: 868, type: !959, isLocal: true, isDefinition: true, scopeLine: 869, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !737)
!2871 = !DILocalVariable(name: "server", arg: 1, scope: !2870, file: !730, line: 868, type: !338)
!2872 = !DILocation(line: 868, column: 47, scope: !2870)
!2873 = !DILocalVariable(name: "data", arg: 2, scope: !2870, file: !730, line: 868, type: !336)
!2874 = !DILocation(line: 868, column: 67, scope: !2870)
!2875 = !DILocation(line: 870, column: 2, scope: !2870)
!2876 = !DILocation(line: 870, column: 10, scope: !2870)
!2877 = !DILocation(line: 870, column: 19, scope: !2870)
!2878 = !DILocation(line: 871, column: 1, scope: !2870)
!2879 = distinct !DISubprogram(name: "event_channels_formed", scope: !730, file: !730, line: 873, type: !959, isLocal: true, isDefinition: true, scopeLine: 874, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !737)
!2880 = !DILocalVariable(name: "server", arg: 1, scope: !2879, file: !730, line: 873, type: !338)
!2881 = !DILocation(line: 873, column: 51, scope: !2879)
!2882 = !DILocalVariable(name: "data", arg: 2, scope: !2879, file: !730, line: 873, type: !336)
!2883 = !DILocation(line: 873, column: 71, scope: !2879)
!2884 = !DILocalVariable(name: "params", scope: !2879, file: !730, line: 875, type: !55)
!2885 = !DILocation(line: 875, column: 8, scope: !2879)
!2886 = !DILocalVariable(name: "channels", scope: !2879, file: !730, line: 875, type: !55)
!2887 = !DILocation(line: 875, column: 17, scope: !2879)
!2888 = !DILocation(line: 877, column: 2, scope: !2879)
!2889 = distinct !{!2889, !2888}
!2890 = !DILocation(line: 877, column: 10, scope: !2891)
!2891 = !DILexicalBlockFile(scope: !2892, file: !730, discriminator: 1)
!2892 = distinct !DILexicalBlock(scope: !2893, file: !730, line: 877, column: 10)
!2893 = distinct !DILexicalBlock(scope: !2879, file: !730, line: 877, column: 4)
!2894 = !DILocation(line: 877, column: 17, scope: !2891)
!2895 = !DILocation(line: 877, column: 5, scope: !2896)
!2896 = !DILexicalBlockFile(scope: !2897, file: !730, discriminator: 2)
!2897 = distinct !DILexicalBlock(scope: !2892, file: !730, line: 877, column: 3)
!2898 = !DILocation(line: 877, column: 14, scope: !2899)
!2899 = !DILexicalBlockFile(scope: !2900, file: !730, discriminator: 3)
!2900 = distinct !DILexicalBlock(scope: !2892, file: !730, line: 877, column: 12)
!2901 = !DILocation(line: 877, column: 101, scope: !2899)
!2902 = !DILocation(line: 877, column: 112, scope: !2903)
!2903 = !DILexicalBlockFile(scope: !2893, file: !730, discriminator: 4)
!2904 = !DILocation(line: 879, column: 28, scope: !2879)
!2905 = !DILocation(line: 879, column: 11, scope: !2879)
!2906 = !DILocation(line: 879, column: 9, scope: !2879)
!2907 = !DILocation(line: 880, column: 40, scope: !2879)
!2908 = !DILocation(line: 880, column: 35, scope: !2879)
!2909 = !DILocation(line: 880, column: 9, scope: !2879)
!2910 = !DILocation(line: 880, column: 17, scope: !2879)
!2911 = !DILocation(line: 880, column: 33, scope: !2879)
!2912 = !DILocation(line: 881, column: 9, scope: !2879)
!2913 = !DILocation(line: 881, column: 2, scope: !2879)
!2914 = !DILocation(line: 882, column: 1, scope: !2879)
!2915 = !DILocation(line: 882, column: 1, scope: !2916)
!2916 = !DILexicalBlockFile(scope: !2879, file: !730, discriminator: 1)
!2917 = distinct !DISubprogram(name: "event_hosthidden", scope: !730, file: !730, line: 884, type: !959, isLocal: true, isDefinition: true, scopeLine: 885, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !737)
!2918 = !DILocalVariable(name: "server", arg: 1, scope: !2917, file: !730, line: 884, type: !338)
!2919 = !DILocation(line: 884, column: 46, scope: !2917)
!2920 = !DILocalVariable(name: "data", arg: 2, scope: !2917, file: !730, line: 884, type: !336)
!2921 = !DILocation(line: 884, column: 66, scope: !2917)
!2922 = !DILocalVariable(name: "params", scope: !2917, file: !730, line: 886, type: !55)
!2923 = !DILocation(line: 886, column: 8, scope: !2917)
!2924 = !DILocalVariable(name: "newhost", scope: !2917, file: !730, line: 886, type: !55)
!2925 = !DILocation(line: 886, column: 17, scope: !2917)
!2926 = !DILocalVariable(name: "p", scope: !2917, file: !730, line: 886, type: !55)
!2927 = !DILocation(line: 886, column: 27, scope: !2917)
!2928 = !DILocalVariable(name: "newuserhost", scope: !2917, file: !730, line: 886, type: !55)
!2929 = !DILocation(line: 886, column: 31, scope: !2917)
!2930 = !DILocation(line: 888, column: 2, scope: !2917)
!2931 = distinct !{!2931, !2930}
!2932 = !DILocation(line: 888, column: 10, scope: !2933)
!2933 = !DILexicalBlockFile(scope: !2934, file: !730, discriminator: 1)
!2934 = distinct !DILexicalBlock(scope: !2935, file: !730, line: 888, column: 10)
!2935 = distinct !DILexicalBlock(scope: !2917, file: !730, line: 888, column: 4)
!2936 = !DILocation(line: 888, column: 17, scope: !2933)
!2937 = !DILocation(line: 888, column: 5, scope: !2938)
!2938 = !DILexicalBlockFile(scope: !2939, file: !730, discriminator: 2)
!2939 = distinct !DILexicalBlock(scope: !2934, file: !730, line: 888, column: 3)
!2940 = !DILocation(line: 888, column: 14, scope: !2941)
!2941 = !DILexicalBlockFile(scope: !2942, file: !730, discriminator: 3)
!2942 = distinct !DILexicalBlock(scope: !2934, file: !730, line: 888, column: 12)
!2943 = !DILocation(line: 888, column: 101, scope: !2941)
!2944 = !DILocation(line: 888, column: 112, scope: !2945)
!2945 = !DILexicalBlockFile(scope: !2935, file: !730, discriminator: 4)
!2946 = !DILocation(line: 890, column: 28, scope: !2917)
!2947 = !DILocation(line: 890, column: 11, scope: !2917)
!2948 = !DILocation(line: 890, column: 9, scope: !2917)
!2949 = !DILocation(line: 892, column: 14, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2917, file: !730, line: 892, column: 6)
!2951 = !DILocation(line: 892, column: 7, scope: !2950)
!2952 = !DILocation(line: 892, column: 28, scope: !2950)
!2953 = !DILocation(line: 892, column: 39, scope: !2954)
!2954 = !DILexicalBlockFile(scope: !2950, file: !730, discriminator: 1)
!2955 = !DILocation(line: 892, column: 32, scope: !2954)
!2956 = !DILocation(line: 892, column: 53, scope: !2954)
!2957 = !DILocation(line: 893, column: 12, scope: !2950)
!2958 = !DILocation(line: 893, column: 5, scope: !2950)
!2959 = !DILocation(line: 893, column: 26, scope: !2950)
!2960 = !DILocation(line: 893, column: 37, scope: !2954)
!2961 = !DILocation(line: 893, column: 30, scope: !2954)
!2962 = !DILocation(line: 893, column: 51, scope: !2954)
!2963 = !DILocation(line: 894, column: 12, scope: !2950)
!2964 = !DILocation(line: 894, column: 5, scope: !2950)
!2965 = !DILocation(line: 894, column: 26, scope: !2950)
!2966 = !DILocation(line: 894, column: 37, scope: !2954)
!2967 = !DILocation(line: 894, column: 30, scope: !2954)
!2968 = !DILocation(line: 894, column: 51, scope: !2954)
!2969 = !DILocation(line: 895, column: 5, scope: !2950)
!2970 = !DILocation(line: 895, column: 4, scope: !2950)
!2971 = !DILocation(line: 895, column: 13, scope: !2950)
!2972 = !DILocation(line: 895, column: 21, scope: !2950)
!2973 = !DILocation(line: 895, column: 25, scope: !2954)
!2974 = !DILocation(line: 895, column: 24, scope: !2954)
!2975 = !DILocation(line: 895, column: 33, scope: !2954)
!2976 = !DILocation(line: 895, column: 40, scope: !2954)
!2977 = !DILocation(line: 896, column: 5, scope: !2950)
!2978 = !DILocation(line: 896, column: 4, scope: !2950)
!2979 = !DILocation(line: 896, column: 13, scope: !2950)
!2980 = !DILocation(line: 896, column: 20, scope: !2950)
!2981 = !DILocation(line: 896, column: 24, scope: !2954)
!2982 = !DILocation(line: 896, column: 23, scope: !2954)
!2983 = !DILocation(line: 896, column: 32, scope: !2954)
!2984 = !DILocation(line: 896, column: 39, scope: !2954)
!2985 = !DILocation(line: 897, column: 19, scope: !2950)
!2986 = !DILocation(line: 897, column: 12, scope: !2950)
!2987 = !DILocation(line: 897, column: 28, scope: !2950)
!2988 = !DILocation(line: 897, column: 4, scope: !2950)
!2989 = !DILocation(line: 897, column: 33, scope: !2950)
!2990 = !DILocation(line: 892, column: 6, scope: !2991)
!2991 = !DILexicalBlockFile(scope: !2917, file: !730, discriminator: 2)
!2992 = !DILocation(line: 898, column: 14, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2994, file: !730, line: 898, column: 7)
!2994 = distinct !DILexicalBlock(scope: !2950, file: !730, line: 897, column: 41)
!2995 = !DILocation(line: 898, column: 7, scope: !2993)
!2996 = !DILocation(line: 898, column: 7, scope: !2994)
!2997 = !DILocation(line: 899, column: 27, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2993, file: !730, line: 898, column: 29)
!2999 = !DILocation(line: 899, column: 18, scope: !2998)
!3000 = !DILocation(line: 899, column: 16, scope: !2998)
!3001 = !DILocation(line: 900, column: 11, scope: !2998)
!3002 = !DILocation(line: 900, column: 19, scope: !2998)
!3003 = !DILocation(line: 900, column: 4, scope: !2998)
!3004 = !DILocation(line: 901, column: 23, scope: !2998)
!3005 = !DILocation(line: 901, column: 4, scope: !2998)
!3006 = !DILocation(line: 901, column: 12, scope: !2998)
!3007 = !DILocation(line: 901, column: 21, scope: !2998)
!3008 = !DILocation(line: 902, column: 3, scope: !2998)
!3009 = !DILocation(line: 902, column: 14, scope: !3010)
!3010 = !DILexicalBlockFile(scope: !3011, file: !730, discriminator: 1)
!3011 = distinct !DILexicalBlock(scope: !2993, file: !730, line: 902, column: 14)
!3012 = !DILocation(line: 902, column: 22, scope: !3010)
!3013 = !DILocation(line: 902, column: 31, scope: !3010)
!3014 = !DILocation(line: 906, column: 15, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !3011, file: !730, line: 902, column: 39)
!3016 = !DILocation(line: 906, column: 23, scope: !3015)
!3017 = !DILocation(line: 906, column: 8, scope: !3015)
!3018 = !DILocation(line: 906, column: 6, scope: !3015)
!3019 = !DILocation(line: 907, column: 8, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !3015, file: !730, line: 907, column: 8)
!3021 = !DILocation(line: 907, column: 10, scope: !3020)
!3022 = !DILocation(line: 907, column: 8, scope: !3015)
!3023 = !DILocation(line: 908, column: 9, scope: !3020)
!3024 = !DILocation(line: 908, column: 17, scope: !3020)
!3025 = !DILocation(line: 908, column: 7, scope: !3020)
!3026 = !DILocation(line: 908, column: 5, scope: !3020)
!3027 = !DILocation(line: 909, column: 51, scope: !3015)
!3028 = !DILocation(line: 909, column: 55, scope: !3015)
!3029 = !DILocation(line: 909, column: 63, scope: !3015)
!3030 = !DILocation(line: 909, column: 53, scope: !3015)
!3031 = !DILocation(line: 909, column: 45, scope: !3015)
!3032 = !DILocation(line: 909, column: 74, scope: !3015)
!3033 = !DILocation(line: 909, column: 82, scope: !3015)
!3034 = !DILocation(line: 909, column: 92, scope: !3015)
!3035 = !DILocation(line: 909, column: 18, scope: !3015)
!3036 = !DILocation(line: 909, column: 16, scope: !3015)
!3037 = !DILocation(line: 910, column: 11, scope: !3015)
!3038 = !DILocation(line: 910, column: 19, scope: !3015)
!3039 = !DILocation(line: 910, column: 4, scope: !3015)
!3040 = !DILocation(line: 911, column: 23, scope: !3015)
!3041 = !DILocation(line: 911, column: 4, scope: !3015)
!3042 = !DILocation(line: 911, column: 12, scope: !3015)
!3043 = !DILocation(line: 911, column: 21, scope: !3015)
!3044 = !DILocation(line: 912, column: 3, scope: !3015)
!3045 = !DILocation(line: 913, column: 2, scope: !2994)
!3046 = !DILocation(line: 914, column: 9, scope: !2917)
!3047 = !DILocation(line: 914, column: 2, scope: !2917)
!3048 = !DILocation(line: 915, column: 1, scope: !2917)
!3049 = !DILocation(line: 915, column: 1, scope: !3050)
!3050 = !DILexicalBlockFile(scope: !2917, file: !730, discriminator: 1)
!3051 = distinct !DISubprogram(name: "event_server_banned", scope: !730, file: !730, line: 917, type: !959, isLocal: true, isDefinition: true, scopeLine: 918, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !737)
!3052 = !DILocalVariable(name: "server", arg: 1, scope: !3051, file: !730, line: 917, type: !338)
!3053 = !DILocation(line: 917, column: 49, scope: !3051)
!3054 = !DILocalVariable(name: "data", arg: 2, scope: !3051, file: !730, line: 917, type: !336)
!3055 = !DILocation(line: 917, column: 69, scope: !3051)
!3056 = !DILocation(line: 919, column: 2, scope: !3051)
!3057 = distinct !{!3057, !3056}
!3058 = !DILocation(line: 919, column: 10, scope: !3059)
!3059 = !DILexicalBlockFile(scope: !3060, file: !730, discriminator: 1)
!3060 = distinct !DILexicalBlock(scope: !3061, file: !730, line: 919, column: 10)
!3061 = distinct !DILexicalBlock(scope: !3051, file: !730, line: 919, column: 4)
!3062 = !DILocation(line: 919, column: 17, scope: !3059)
!3063 = !DILocation(line: 919, column: 5, scope: !3064)
!3064 = !DILexicalBlockFile(scope: !3065, file: !730, discriminator: 2)
!3065 = distinct !DILexicalBlock(scope: !3060, file: !730, line: 919, column: 3)
!3066 = !DILocation(line: 919, column: 14, scope: !3067)
!3067 = !DILexicalBlockFile(scope: !3068, file: !730, discriminator: 3)
!3068 = distinct !DILexicalBlock(scope: !3060, file: !730, line: 919, column: 12)
!3069 = !DILocation(line: 919, column: 101, scope: !3067)
!3070 = !DILocation(line: 919, column: 112, scope: !3071)
!3071 = !DILexicalBlockFile(scope: !3061, file: !730, discriminator: 4)
!3072 = !DILocation(line: 921, column: 9, scope: !3051)
!3073 = !DILocation(line: 921, column: 17, scope: !3051)
!3074 = !DILocation(line: 921, column: 24, scope: !3051)
!3075 = !DILocation(line: 922, column: 1, scope: !3051)
!3076 = !DILocation(line: 922, column: 1, scope: !3077)
!3077 = !DILexicalBlockFile(scope: !3051, file: !730, discriminator: 1)
!3078 = distinct !DISubprogram(name: "event_error", scope: !730, file: !730, line: 924, type: !959, isLocal: true, isDefinition: true, scopeLine: 925, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !737)
!3079 = !DILocalVariable(name: "server", arg: 1, scope: !3078, file: !730, line: 924, type: !338)
!3080 = !DILocation(line: 924, column: 41, scope: !3078)
!3081 = !DILocalVariable(name: "data", arg: 2, scope: !3078, file: !730, line: 924, type: !336)
!3082 = !DILocation(line: 924, column: 61, scope: !3078)
!3083 = !DILocation(line: 926, column: 2, scope: !3078)
!3084 = distinct !{!3084, !3083}
!3085 = !DILocation(line: 926, column: 10, scope: !3086)
!3086 = !DILexicalBlockFile(scope: !3087, file: !730, discriminator: 1)
!3087 = distinct !DILexicalBlock(scope: !3088, file: !730, line: 926, column: 10)
!3088 = distinct !DILexicalBlock(scope: !3078, file: !730, line: 926, column: 4)
!3089 = !DILocation(line: 926, column: 17, scope: !3086)
!3090 = !DILocation(line: 926, column: 5, scope: !3091)
!3091 = !DILexicalBlockFile(scope: !3092, file: !730, discriminator: 2)
!3092 = distinct !DILexicalBlock(scope: !3087, file: !730, line: 926, column: 3)
!3093 = !DILocation(line: 926, column: 14, scope: !3094)
!3094 = !DILexicalBlockFile(scope: !3095, file: !730, discriminator: 3)
!3095 = distinct !DILexicalBlock(scope: !3087, file: !730, line: 926, column: 12)
!3096 = !DILocation(line: 926, column: 101, scope: !3094)
!3097 = !DILocation(line: 926, column: 112, scope: !3098)
!3098 = !DILexicalBlockFile(scope: !3088, file: !730, discriminator: 4)
!3099 = !DILocation(line: 928, column: 7, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3078, file: !730, line: 928, column: 6)
!3101 = !DILocation(line: 928, column: 15, scope: !3100)
!3102 = !DILocation(line: 928, column: 25, scope: !3100)
!3103 = !DILocation(line: 928, column: 37, scope: !3104)
!3104 = !DILexicalBlockFile(scope: !3100, file: !730, discriminator: 1)
!3105 = !DILocation(line: 928, column: 29, scope: !3104)
!3106 = !DILocation(line: 928, column: 59, scope: !3104)
!3107 = !DILocation(line: 928, column: 66, scope: !3104)
!3108 = !DILocation(line: 929, column: 16, scope: !3100)
!3109 = !DILocation(line: 929, column: 8, scope: !3100)
!3110 = !DILocation(line: 929, column: 33, scope: !3100)
!3111 = !DILocation(line: 929, column: 40, scope: !3100)
!3112 = !DILocation(line: 930, column: 16, scope: !3100)
!3113 = !DILocation(line: 930, column: 8, scope: !3100)
!3114 = !DILocation(line: 930, column: 32, scope: !3100)
!3115 = !DILocation(line: 930, column: 39, scope: !3100)
!3116 = !DILocation(line: 931, column: 16, scope: !3100)
!3117 = !DILocation(line: 931, column: 8, scope: !3100)
!3118 = !DILocation(line: 931, column: 39, scope: !3100)
!3119 = !DILocation(line: 928, column: 6, scope: !3120)
!3120 = !DILexicalBlockFile(scope: !3078, file: !730, discriminator: 2)
!3121 = !DILocation(line: 932, column: 3, scope: !3100)
!3122 = !DILocation(line: 932, column: 11, scope: !3100)
!3123 = !DILocation(line: 932, column: 18, scope: !3100)
!3124 = !DILocation(line: 933, column: 1, scope: !3078)
!3125 = distinct !DISubprogram(name: "event_ping", scope: !730, file: !730, line: 935, type: !959, isLocal: true, isDefinition: true, scopeLine: 936, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !737)
!3126 = !DILocalVariable(name: "server", arg: 1, scope: !3125, file: !730, line: 935, type: !338)
!3127 = !DILocation(line: 935, column: 40, scope: !3125)
!3128 = !DILocalVariable(name: "data", arg: 2, scope: !3125, file: !730, line: 935, type: !336)
!3129 = !DILocation(line: 935, column: 60, scope: !3125)
!3130 = !DILocalVariable(name: "params", scope: !3125, file: !730, line: 937, type: !55)
!3131 = !DILocation(line: 937, column: 8, scope: !3125)
!3132 = !DILocalVariable(name: "origin", scope: !3125, file: !730, line: 937, type: !55)
!3133 = !DILocation(line: 937, column: 17, scope: !3125)
!3134 = !DILocalVariable(name: "target", scope: !3125, file: !730, line: 937, type: !55)
!3135 = !DILocation(line: 937, column: 26, scope: !3125)
!3136 = !DILocalVariable(name: "str", scope: !3125, file: !730, line: 937, type: !55)
!3137 = !DILocation(line: 937, column: 35, scope: !3125)
!3138 = !DILocation(line: 939, column: 28, scope: !3125)
!3139 = !DILocation(line: 939, column: 11, scope: !3125)
!3140 = !DILocation(line: 939, column: 9, scope: !3125)
!3141 = !DILocation(line: 940, column: 9, scope: !3125)
!3142 = !DILocation(line: 940, column: 8, scope: !3125)
!3143 = !DILocation(line: 940, column: 16, scope: !3125)
!3144 = !DILocation(line: 940, column: 48, scope: !3145)
!3145 = !DILexicalBlockFile(scope: !3125, file: !730, discriminator: 1)
!3146 = !DILocation(line: 940, column: 26, scope: !3145)
!3147 = !DILocation(line: 940, column: 8, scope: !3145)
!3148 = !DILocation(line: 941, column: 34, scope: !3125)
!3149 = !DILocation(line: 941, column: 42, scope: !3125)
!3150 = !DILocation(line: 941, column: 3, scope: !3125)
!3151 = !DILocation(line: 940, column: 8, scope: !3152)
!3152 = !DILexicalBlockFile(scope: !3125, file: !730, discriminator: 2)
!3153 = !DILocation(line: 940, column: 8, scope: !3154)
!3154 = !DILexicalBlockFile(scope: !3125, file: !730, discriminator: 3)
!3155 = !DILocation(line: 940, column: 6, scope: !3154)
!3156 = !DILocation(line: 942, column: 19, scope: !3125)
!3157 = !DILocation(line: 942, column: 27, scope: !3125)
!3158 = !DILocation(line: 942, column: 2, scope: !3125)
!3159 = !DILocation(line: 943, column: 16, scope: !3125)
!3160 = !DILocation(line: 943, column: 9, scope: !3125)
!3161 = !DILocation(line: 944, column: 9, scope: !3125)
!3162 = !DILocation(line: 944, column: 2, scope: !3125)
!3163 = !DILocation(line: 945, column: 1, scope: !3125)
!3164 = distinct !DISubprogram(name: "event_empty", scope: !730, file: !730, line: 947, type: !198, isLocal: true, isDefinition: true, scopeLine: 948, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !737)
!3165 = !DILocation(line: 949, column: 1, scope: !3164)
!3166 = distinct !DISubprogram(name: "irc_servers_deinit", scope: !730, file: !730, line: 1057, type: !198, isLocal: false, isDefinition: true, scopeLine: 1058, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !737)
!3167 = !DILocation(line: 1059, column: 6, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3166, file: !730, line: 1059, column: 6)
!3169 = !DILocation(line: 1059, column: 14, scope: !3168)
!3170 = !DILocation(line: 1059, column: 6, scope: !3166)
!3171 = !DILocation(line: 1060, column: 19, scope: !3168)
!3172 = !DILocation(line: 1060, column: 3, scope: !3168)
!3173 = !DILocation(line: 1062, column: 2, scope: !3166)
!3174 = !DILocation(line: 1063, column: 2, scope: !3166)
!3175 = !DILocation(line: 1064, column: 9, scope: !3166)
!3176 = !DILocation(line: 1065, column: 2, scope: !3166)
!3177 = !DILocation(line: 1066, column: 2, scope: !3166)
!3178 = !DILocation(line: 1067, column: 2, scope: !3166)
!3179 = !DILocation(line: 1068, column: 2, scope: !3166)
!3180 = !DILocation(line: 1069, column: 2, scope: !3166)
!3181 = !DILocation(line: 1070, column: 2, scope: !3166)
!3182 = !DILocation(line: 1071, column: 2, scope: !3166)
!3183 = !DILocation(line: 1072, column: 2, scope: !3166)
!3184 = !DILocation(line: 1073, column: 2, scope: !3166)
!3185 = !DILocation(line: 1074, column: 2, scope: !3166)
!3186 = !DILocation(line: 1075, column: 2, scope: !3166)
!3187 = !DILocation(line: 1076, column: 2, scope: !3166)
!3188 = !DILocation(line: 1078, column: 2, scope: !3166)
!3189 = !DILocation(line: 1079, column: 2, scope: !3166)
!3190 = !DILocation(line: 1080, column: 2, scope: !3166)
!3191 = !DILocation(line: 1081, column: 2, scope: !3166)
!3192 = !DILocation(line: 1082, column: 1, scope: !3166)
!3193 = distinct !DISubprogram(name: "server_cmd_timeout", scope: !730, file: !730, line: 549, type: !3194, isLocal: true, isDefinition: true, scopeLine: 550, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !737)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!51, !338, !3196}
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64, align: 64)
!3197 = !DILocalVariable(name: "server", arg: 1, scope: !3193, file: !730, line: 549, type: !338)
!3198 = !DILocation(line: 549, column: 47, scope: !3193)
!3199 = !DILocalVariable(name: "now", arg: 2, scope: !3193, file: !730, line: 549, type: !3196)
!3200 = !DILocation(line: 549, column: 65, scope: !3193)
!3201 = !DILocalVariable(name: "redirect", scope: !3193, file: !730, line: 551, type: !602)
!3202 = !DILocation(line: 551, column: 16, scope: !3193)
!3203 = !DILocalVariable(name: "link", scope: !3193, file: !730, line: 552, type: !210)
!3204 = !DILocation(line: 552, column: 17, scope: !3193)
!3205 = !DILocalVariable(name: "usecs", scope: !3193, file: !730, line: 553, type: !133)
!3206 = !DILocation(line: 553, column: 7, scope: !3193)
!3207 = !DILocalVariable(name: "cmd", scope: !3193, file: !730, line: 554, type: !55)
!3208 = !DILocation(line: 554, column: 8, scope: !3193)
!3209 = !DILocalVariable(name: "len", scope: !3193, file: !730, line: 555, type: !51)
!3210 = !DILocation(line: 555, column: 6, scope: !3193)
!3211 = !DILocation(line: 557, column: 87, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3193, file: !730, line: 557, column: 6)
!3213 = !DILocation(line: 557, column: 69, scope: !3212)
!3214 = !DILocation(line: 557, column: 54, scope: !3212)
!3215 = !DILocation(line: 557, column: 53, scope: !3212)
!3216 = !DILocation(line: 557, column: 28, scope: !3217)
!3217 = !DILexicalBlockFile(scope: !3212, file: !730, discriminator: 3)
!3218 = !DILocation(line: 557, column: 9, scope: !3212)
!3219 = !DILocation(line: 557, column: 6, scope: !3193)
!3220 = !DILocation(line: 557, column: 8, scope: !3221)
!3221 = !DILexicalBlockFile(scope: !3212, file: !730, discriminator: 1)
!3222 = !DILocation(line: 557, column: 6, scope: !3223)
!3223 = !DILexicalBlockFile(scope: !3193, file: !730, discriminator: 2)
!3224 = !DILocation(line: 558, column: 3, scope: !3212)
!3225 = !DILocation(line: 560, column: 6, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3193, file: !730, line: 560, column: 6)
!3227 = !DILocation(line: 560, column: 14, scope: !3226)
!3228 = !DILocation(line: 560, column: 23, scope: !3226)
!3229 = !DILocation(line: 560, column: 28, scope: !3226)
!3230 = !DILocation(line: 560, column: 31, scope: !3231)
!3231 = !DILexicalBlockFile(scope: !3226, file: !730, discriminator: 1)
!3232 = !DILocation(line: 560, column: 39, scope: !3231)
!3233 = !DILocation(line: 560, column: 48, scope: !3231)
!3234 = !DILocation(line: 560, column: 6, scope: !3231)
!3235 = !DILocation(line: 561, column: 3, scope: !3226)
!3236 = !DILocation(line: 563, column: 20, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3193, file: !730, line: 563, column: 6)
!3238 = !DILocation(line: 563, column: 26, scope: !3237)
!3239 = !DILocation(line: 563, column: 34, scope: !3237)
!3240 = !DILocation(line: 563, column: 6, scope: !3237)
!3241 = !DILocation(line: 563, column: 44, scope: !3237)
!3242 = !DILocation(line: 563, column: 6, scope: !3193)
!3243 = !DILocation(line: 564, column: 3, scope: !3237)
!3244 = !DILocation(line: 566, column: 27, scope: !3193)
!3245 = !DILocation(line: 566, column: 33, scope: !3193)
!3246 = !DILocation(line: 566, column: 41, scope: !3193)
!3247 = !DILocation(line: 566, column: 10, scope: !3193)
!3248 = !DILocation(line: 566, column: 8, scope: !3193)
!3249 = !DILocation(line: 567, column: 6, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3193, file: !730, line: 567, column: 6)
!3251 = !DILocation(line: 567, column: 14, scope: !3250)
!3252 = !DILocation(line: 567, column: 22, scope: !3250)
!3253 = !DILocation(line: 567, column: 12, scope: !3250)
!3254 = !DILocation(line: 567, column: 6, scope: !3193)
!3255 = !DILocation(line: 568, column: 3, scope: !3250)
!3256 = !DILocation(line: 570, column: 2, scope: !3193)
!3257 = !DILocation(line: 570, column: 10, scope: !3193)
!3258 = !DILocation(line: 570, column: 18, scope: !3193)
!3259 = !DILocation(line: 571, column: 6, scope: !3260)
!3260 = distinct !DILexicalBlock(scope: !3193, file: !730, line: 571, column: 6)
!3261 = !DILocation(line: 571, column: 14, scope: !3260)
!3262 = !DILocation(line: 571, column: 23, scope: !3260)
!3263 = !DILocation(line: 571, column: 6, scope: !3193)
!3264 = !DILocation(line: 571, column: 31, scope: !3265)
!3265 = !DILexicalBlockFile(scope: !3260, file: !730, discriminator: 1)
!3266 = !DILocation(line: 574, column: 8, scope: !3193)
!3267 = !DILocation(line: 574, column: 16, scope: !3193)
!3268 = !DILocation(line: 574, column: 26, scope: !3193)
!3269 = !DILocation(line: 574, column: 6, scope: !3193)
!3270 = !DILocation(line: 575, column: 20, scope: !3193)
!3271 = !DILocation(line: 575, column: 28, scope: !3193)
!3272 = !DILocation(line: 575, column: 38, scope: !3193)
!3273 = !DILocation(line: 575, column: 44, scope: !3193)
!3274 = !DILocation(line: 575, column: 18, scope: !3193)
!3275 = !DILocation(line: 578, column: 15, scope: !3193)
!3276 = !DILocation(line: 578, column: 8, scope: !3193)
!3277 = !DILocation(line: 578, column: 6, scope: !3193)
!3278 = !DILocation(line: 579, column: 23, scope: !3193)
!3279 = !DILocation(line: 579, column: 31, scope: !3193)
!3280 = !DILocation(line: 579, column: 36, scope: !3193)
!3281 = !DILocation(line: 579, column: 2, scope: !3193)
!3282 = !DILocation(line: 582, column: 13, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3193, file: !730, line: 582, column: 13)
!3284 = !DILocation(line: 582, column: 17, scope: !3283)
!3285 = !DILocation(line: 582, column: 21, scope: !3283)
!3286 = !DILocation(line: 582, column: 28, scope: !3287)
!3287 = !DILexicalBlockFile(scope: !3283, file: !730, discriminator: 1)
!3288 = !DILocation(line: 582, column: 31, scope: !3287)
!3289 = !DILocation(line: 582, column: 24, scope: !3287)
!3290 = !DILocation(line: 582, column: 35, scope: !3287)
!3291 = !DILocation(line: 582, column: 13, scope: !3287)
!3292 = !DILocation(line: 583, column: 7, scope: !3283)
!3293 = !DILocation(line: 583, column: 10, scope: !3283)
!3294 = !DILocation(line: 583, column: 3, scope: !3283)
!3295 = !DILocation(line: 583, column: 14, scope: !3283)
!3296 = !DILocation(line: 584, column: 22, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3283, file: !730, line: 584, column: 18)
!3298 = !DILocation(line: 584, column: 25, scope: !3297)
!3299 = !DILocation(line: 584, column: 18, scope: !3297)
!3300 = !DILocation(line: 584, column: 29, scope: !3297)
!3301 = !DILocation(line: 584, column: 18, scope: !3283)
!3302 = !DILocation(line: 585, column: 7, scope: !3297)
!3303 = !DILocation(line: 585, column: 10, scope: !3297)
!3304 = !DILocation(line: 585, column: 3, scope: !3297)
!3305 = !DILocation(line: 585, column: 14, scope: !3297)
!3306 = !DILocation(line: 586, column: 16, scope: !3193)
!3307 = !DILocation(line: 586, column: 24, scope: !3193)
!3308 = !DILocation(line: 586, column: 32, scope: !3193)
!3309 = !DILocation(line: 586, column: 2, scope: !3193)
!3310 = !DILocation(line: 587, column: 26, scope: !3193)
!3311 = !DILocation(line: 587, column: 34, scope: !3193)
!3312 = !DILocation(line: 587, column: 39, scope: !3193)
!3313 = !DILocation(line: 587, column: 2, scope: !3193)
!3314 = !DILocation(line: 590, column: 36, scope: !3193)
!3315 = !DILocation(line: 590, column: 44, scope: !3193)
!3316 = !DILocation(line: 590, column: 54, scope: !3193)
!3317 = !DILocation(line: 590, column: 21, scope: !3193)
!3318 = !DILocation(line: 590, column: 2, scope: !3193)
!3319 = !DILocation(line: 590, column: 10, scope: !3193)
!3320 = !DILocation(line: 590, column: 19, scope: !3193)
!3321 = !DILocation(line: 591, column: 9, scope: !3193)
!3322 = !DILocation(line: 591, column: 2, scope: !3193)
!3323 = !DILocation(line: 593, column: 16, scope: !3193)
!3324 = !DILocation(line: 593, column: 24, scope: !3193)
!3325 = !DILocation(line: 593, column: 14, scope: !3193)
!3326 = !DILocation(line: 594, column: 41, scope: !3193)
!3327 = !DILocation(line: 594, column: 49, scope: !3193)
!3328 = !DILocation(line: 594, column: 59, scope: !3193)
!3329 = !DILocation(line: 594, column: 21, scope: !3193)
!3330 = !DILocation(line: 594, column: 2, scope: !3193)
!3331 = !DILocation(line: 594, column: 10, scope: !3193)
!3332 = !DILocation(line: 594, column: 19, scope: !3193)
!3333 = !DILocation(line: 595, column: 24, scope: !3193)
!3334 = !DILocation(line: 595, column: 9, scope: !3193)
!3335 = !DILocation(line: 596, column: 2, scope: !3193)
!3336 = !DILocation(line: 597, column: 1, scope: !3193)
!3337 = distinct !DISubprogram(name: "isnickflag_func", scope: !730, file: !730, line: 69, type: !460, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !737)
!3338 = !DILocalVariable(name: "server", arg: 1, scope: !3337, file: !730, line: 69, type: !421)
!3339 = !DILocation(line: 69, column: 40, scope: !3337)
!3340 = !DILocalVariable(name: "flag", arg: 2, scope: !3337, file: !730, line: 69, type: !56)
!3341 = !DILocation(line: 69, column: 53, scope: !3337)
!3342 = !DILocalVariable(name: "irc_server", scope: !3337, file: !730, line: 71, type: !338)
!3343 = !DILocation(line: 71, column: 18, scope: !3337)
!3344 = !DILocation(line: 71, column: 50, scope: !3337)
!3345 = !DILocation(line: 71, column: 31, scope: !3337)
!3346 = !DILocation(line: 73, column: 50, scope: !3337)
!3347 = !DILocation(line: 73, column: 29, scope: !3337)
!3348 = !DILocation(line: 73, column: 10, scope: !3337)
!3349 = !DILocation(line: 73, column: 22, scope: !3337)
!3350 = !DILocation(line: 73, column: 56, scope: !3337)
!3351 = !DILocation(line: 73, column: 2, scope: !3337)
!3352 = distinct !DISubprogram(name: "ischannel_func", scope: !730, file: !730, line: 76, type: !464, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !737)
!3353 = !DILocalVariable(name: "server", arg: 1, scope: !3352, file: !730, line: 76, type: !421)
!3354 = !DILocation(line: 76, column: 39, scope: !3352)
!3355 = !DILocalVariable(name: "data", arg: 2, scope: !3352, file: !730, line: 76, type: !336)
!3356 = !DILocation(line: 76, column: 59, scope: !3352)
!3357 = !DILocalVariable(name: "irc_server", scope: !3352, file: !730, line: 78, type: !338)
!3358 = !DILocation(line: 78, column: 18, scope: !3352)
!3359 = !DILocation(line: 78, column: 50, scope: !3352)
!3360 = !DILocation(line: 78, column: 31, scope: !3352)
!3361 = !DILocalVariable(name: "chantypes", scope: !3352, file: !730, line: 79, type: !55)
!3362 = !DILocation(line: 79, column: 8, scope: !3352)
!3363 = !DILocalVariable(name: "statusmsg", scope: !3352, file: !730, line: 79, type: !55)
!3364 = !DILocation(line: 79, column: 20, scope: !3352)
!3365 = !DILocation(line: 81, column: 2, scope: !3352)
!3366 = distinct !{!3366, !3365}
!3367 = !DILocation(line: 81, column: 10, scope: !3368)
!3368 = !DILexicalBlockFile(scope: !3369, file: !730, discriminator: 1)
!3369 = distinct !DILexicalBlock(scope: !3370, file: !730, line: 81, column: 10)
!3370 = distinct !DILexicalBlock(scope: !3352, file: !730, line: 81, column: 4)
!3371 = !DILocation(line: 81, column: 15, scope: !3368)
!3372 = !DILocation(line: 81, column: 5, scope: !3373)
!3373 = !DILexicalBlockFile(scope: !3374, file: !730, discriminator: 2)
!3374 = distinct !DILexicalBlock(scope: !3369, file: !730, line: 81, column: 3)
!3375 = !DILocation(line: 81, column: 14, scope: !3376)
!3376 = !DILexicalBlockFile(scope: !3377, file: !730, discriminator: 3)
!3377 = distinct !DILexicalBlock(scope: !3369, file: !730, line: 81, column: 12)
!3378 = !DILocation(line: 81, column: 99, scope: !3376)
!3379 = !DILocation(line: 81, column: 116, scope: !3380)
!3380 = !DILexicalBlockFile(scope: !3370, file: !730, discriminator: 4)
!3381 = !DILocation(line: 84, column: 7, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3352, file: !730, line: 84, column: 6)
!3383 = !DILocation(line: 84, column: 6, scope: !3382)
!3384 = !DILocation(line: 84, column: 12, scope: !3382)
!3385 = !DILocation(line: 84, column: 6, scope: !3352)
!3386 = !DILocation(line: 85, column: 3, scope: !3382)
!3387 = !DILocation(line: 87, column: 34, scope: !3352)
!3388 = !DILocation(line: 87, column: 46, scope: !3352)
!3389 = !DILocation(line: 87, column: 14, scope: !3352)
!3390 = !DILocation(line: 87, column: 12, scope: !3352)
!3391 = !DILocation(line: 88, column: 6, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3352, file: !730, line: 88, column: 6)
!3393 = !DILocation(line: 88, column: 16, scope: !3392)
!3394 = !DILocation(line: 88, column: 6, scope: !3352)
!3395 = !DILocation(line: 89, column: 13, scope: !3392)
!3396 = !DILocation(line: 89, column: 3, scope: !3392)
!3397 = !DILocation(line: 91, column: 34, scope: !3352)
!3398 = !DILocation(line: 91, column: 46, scope: !3352)
!3399 = !DILocation(line: 91, column: 14, scope: !3352)
!3400 = !DILocation(line: 91, column: 12, scope: !3352)
!3401 = !DILocation(line: 92, column: 6, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3352, file: !730, line: 92, column: 6)
!3403 = !DILocation(line: 92, column: 16, scope: !3402)
!3404 = !DILocation(line: 92, column: 6, scope: !3352)
!3405 = !DILocation(line: 93, column: 13, scope: !3402)
!3406 = !DILocation(line: 93, column: 3, scope: !3402)
!3407 = !DILocation(line: 95, column: 17, scope: !3352)
!3408 = !DILocation(line: 95, column: 23, scope: !3352)
!3409 = !DILocation(line: 95, column: 10, scope: !3352)
!3410 = !DILocation(line: 95, column: 7, scope: !3352)
!3411 = !DILocation(line: 99, column: 10, scope: !3352)
!3412 = !DILocation(line: 99, column: 9, scope: !3352)
!3413 = !DILocation(line: 99, column: 15, scope: !3352)
!3414 = !DILocation(line: 99, column: 23, scope: !3352)
!3415 = !DILocation(line: 99, column: 33, scope: !3416)
!3416 = !DILexicalBlockFile(scope: !3352, file: !730, discriminator: 1)
!3417 = !DILocation(line: 99, column: 45, scope: !3416)
!3418 = !DILocation(line: 99, column: 44, scope: !3416)
!3419 = !DILocation(line: 99, column: 26, scope: !3416)
!3420 = !DILocation(line: 99, column: 51, scope: !3416)
!3421 = !DILocation(line: 99, column: 23, scope: !3422)
!3422 = !DILexicalBlockFile(scope: !3352, file: !730, discriminator: 2)
!3423 = !DILocation(line: 99, column: 2, scope: !3422)
!3424 = !DILocation(line: 100, column: 1, scope: !3352)
!3425 = distinct !DISubprogram(name: "split_message", scope: !730, file: !730, line: 200, type: !476, isLocal: true, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !737)
!3426 = !DILocalVariable(name: "server", arg: 1, scope: !3425, file: !730, line: 200, type: !421)
!3427 = !DILocation(line: 200, column: 41, scope: !3425)
!3428 = !DILocalVariable(name: "target", arg: 2, scope: !3425, file: !730, line: 200, type: !336)
!3429 = !DILocation(line: 200, column: 61, scope: !3425)
!3430 = !DILocalVariable(name: "msg", arg: 3, scope: !3425, file: !730, line: 201, type: !336)
!3431 = !DILocation(line: 201, column: 20, scope: !3425)
!3432 = !DILocalVariable(name: "ircserver", scope: !3425, file: !730, line: 203, type: !338)
!3433 = !DILocation(line: 203, column: 18, scope: !3425)
!3434 = !DILocation(line: 203, column: 109, scope: !3425)
!3435 = !DILocation(line: 203, column: 91, scope: !3425)
!3436 = !DILocation(line: 203, column: 76, scope: !3425)
!3437 = !DILocation(line: 203, column: 75, scope: !3425)
!3438 = !DILocation(line: 203, column: 50, scope: !3439)
!3439 = !DILexicalBlockFile(scope: !3425, file: !730, discriminator: 1)
!3440 = !DILocation(line: 203, column: 31, scope: !3425)
!3441 = !DILocation(line: 205, column: 2, scope: !3425)
!3442 = distinct !{!3442, !3441}
!3443 = !DILocation(line: 205, column: 10, scope: !3444)
!3444 = !DILexicalBlockFile(scope: !3445, file: !730, discriminator: 1)
!3445 = distinct !DILexicalBlock(scope: !3446, file: !730, line: 205, column: 10)
!3446 = distinct !DILexicalBlock(scope: !3425, file: !730, line: 205, column: 4)
!3447 = !DILocation(line: 205, column: 20, scope: !3444)
!3448 = !DILocation(line: 205, column: 5, scope: !3449)
!3449 = !DILexicalBlockFile(scope: !3450, file: !730, discriminator: 2)
!3450 = distinct !DILexicalBlock(scope: !3445, file: !730, line: 205, column: 3)
!3451 = !DILocation(line: 205, column: 14, scope: !3452)
!3452 = !DILexicalBlockFile(scope: !3453, file: !730, discriminator: 3)
!3453 = distinct !DILexicalBlock(scope: !3445, file: !730, line: 205, column: 12)
!3454 = !DILocation(line: 205, column: 104, scope: !3452)
!3455 = !DILocation(line: 205, column: 7, scope: !3456)
!3456 = !DILexicalBlockFile(scope: !3446, file: !730, discriminator: 4)
!3457 = !DILocation(line: 206, column: 2, scope: !3425)
!3458 = distinct !{!3458, !3457}
!3459 = !DILocation(line: 206, column: 10, scope: !3460)
!3460 = !DILexicalBlockFile(scope: !3461, file: !730, discriminator: 1)
!3461 = distinct !DILexicalBlock(scope: !3462, file: !730, line: 206, column: 10)
!3462 = distinct !DILexicalBlock(scope: !3425, file: !730, line: 206, column: 4)
!3463 = !DILocation(line: 206, column: 17, scope: !3460)
!3464 = !DILocation(line: 206, column: 5, scope: !3465)
!3465 = !DILexicalBlockFile(scope: !3466, file: !730, discriminator: 2)
!3466 = distinct !DILexicalBlock(scope: !3461, file: !730, line: 206, column: 3)
!3467 = !DILocation(line: 206, column: 14, scope: !3468)
!3468 = !DILexicalBlockFile(scope: !3469, file: !730, discriminator: 3)
!3469 = distinct !DILexicalBlock(scope: !3461, file: !730, line: 206, column: 12)
!3470 = !DILocation(line: 206, column: 101, scope: !3468)
!3471 = !DILocation(line: 206, column: 7, scope: !3472)
!3472 = !DILexicalBlockFile(scope: !3462, file: !730, discriminator: 4)
!3473 = !DILocation(line: 207, column: 2, scope: !3425)
!3474 = distinct !{!3474, !3473}
!3475 = !DILocation(line: 207, column: 10, scope: !3476)
!3476 = !DILexicalBlockFile(scope: !3477, file: !730, discriminator: 1)
!3477 = distinct !DILexicalBlock(scope: !3478, file: !730, line: 207, column: 10)
!3478 = distinct !DILexicalBlock(scope: !3425, file: !730, line: 207, column: 4)
!3479 = !DILocation(line: 207, column: 14, scope: !3476)
!3480 = !DILocation(line: 207, column: 5, scope: !3481)
!3481 = !DILexicalBlockFile(scope: !3482, file: !730, discriminator: 2)
!3482 = distinct !DILexicalBlock(scope: !3477, file: !730, line: 207, column: 3)
!3483 = !DILocation(line: 207, column: 14, scope: !3484)
!3484 = !DILexicalBlockFile(scope: !3485, file: !730, discriminator: 3)
!3485 = distinct !DILexicalBlock(scope: !3477, file: !730, line: 207, column: 12)
!3486 = !DILocation(line: 207, column: 98, scope: !3484)
!3487 = !DILocation(line: 207, column: 7, scope: !3488)
!3488 = !DILexicalBlockFile(scope: !3478, file: !730, discriminator: 4)
!3489 = !DILocation(line: 210, column: 54, scope: !3425)
!3490 = !DILocation(line: 210, column: 36, scope: !3425)
!3491 = !DILocation(line: 210, column: 21, scope: !3425)
!3492 = !DILocation(line: 210, column: 33, scope: !3425)
!3493 = !DILocation(line: 210, column: 38, scope: !3425)
!3494 = !DILocation(line: 212, column: 13, scope: !3425)
!3495 = !DILocation(line: 212, column: 24, scope: !3425)
!3496 = !DILocation(line: 212, column: 6, scope: !3425)
!3497 = !DILocation(line: 211, column: 36, scope: !3425)
!3498 = !DILocation(line: 212, column: 30, scope: !3425)
!3499 = !DILocation(line: 213, column: 13, scope: !3425)
!3500 = !DILocation(line: 213, column: 6, scope: !3425)
!3501 = !DILocation(line: 212, column: 46, scope: !3425)
!3502 = !DILocation(line: 211, column: 6, scope: !3425)
!3503 = !DILocation(line: 210, column: 9, scope: !3439)
!3504 = !DILocation(line: 210, column: 2, scope: !3425)
!3505 = !DILocation(line: 214, column: 1, scope: !3425)
!3506 = distinct !DISubprogram(name: "send_message", scope: !730, file: !730, line: 172, type: !472, isLocal: true, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !737)
!3507 = !DILocalVariable(name: "server", arg: 1, scope: !3506, file: !730, line: 172, type: !421)
!3508 = !DILocation(line: 172, column: 38, scope: !3506)
!3509 = !DILocalVariable(name: "target", arg: 2, scope: !3506, file: !730, line: 172, type: !336)
!3510 = !DILocation(line: 172, column: 58, scope: !3506)
!3511 = !DILocalVariable(name: "msg", arg: 3, scope: !3506, file: !730, line: 173, type: !336)
!3512 = !DILocation(line: 173, column: 17, scope: !3506)
!3513 = !DILocalVariable(name: "target_type", arg: 4, scope: !3506, file: !730, line: 173, type: !51)
!3514 = !DILocation(line: 173, column: 26, scope: !3506)
!3515 = !DILocalVariable(name: "ircserver", scope: !3506, file: !730, line: 175, type: !338)
!3516 = !DILocation(line: 175, column: 18, scope: !3506)
!3517 = !DILocalVariable(name: "channel", scope: !3506, file: !730, line: 176, type: !483)
!3518 = !DILocation(line: 176, column: 15, scope: !3506)
!3519 = !DILocalVariable(name: "str", scope: !3506, file: !730, line: 177, type: !55)
!3520 = !DILocation(line: 177, column: 8, scope: !3506)
!3521 = !DILocalVariable(name: "recoded", scope: !3506, file: !730, line: 178, type: !55)
!3522 = !DILocation(line: 178, column: 8, scope: !3506)
!3523 = !DILocation(line: 180, column: 100, scope: !3506)
!3524 = !DILocation(line: 180, column: 82, scope: !3506)
!3525 = !DILocation(line: 180, column: 67, scope: !3506)
!3526 = !DILocation(line: 180, column: 66, scope: !3506)
!3527 = !DILocation(line: 180, column: 41, scope: !3528)
!3528 = !DILexicalBlockFile(scope: !3506, file: !730, discriminator: 1)
!3529 = !DILocation(line: 180, column: 22, scope: !3506)
!3530 = !DILocation(line: 180, column: 19, scope: !3506)
!3531 = !DILocation(line: 181, column: 2, scope: !3506)
!3532 = distinct !{!3532, !3531}
!3533 = !DILocation(line: 181, column: 10, scope: !3534)
!3534 = !DILexicalBlockFile(scope: !3535, file: !730, discriminator: 1)
!3535 = distinct !DILexicalBlock(scope: !3536, file: !730, line: 181, column: 10)
!3536 = distinct !DILexicalBlock(scope: !3506, file: !730, line: 181, column: 4)
!3537 = !DILocation(line: 181, column: 20, scope: !3534)
!3538 = !DILocation(line: 181, column: 5, scope: !3539)
!3539 = !DILexicalBlockFile(scope: !3540, file: !730, discriminator: 2)
!3540 = distinct !DILexicalBlock(scope: !3535, file: !730, line: 181, column: 3)
!3541 = !DILocation(line: 181, column: 14, scope: !3542)
!3542 = !DILexicalBlockFile(scope: !3543, file: !730, discriminator: 3)
!3543 = distinct !DILexicalBlock(scope: !3535, file: !730, line: 181, column: 12)
!3544 = !DILocation(line: 181, column: 104, scope: !3542)
!3545 = !DILocation(line: 181, column: 115, scope: !3546)
!3546 = !DILexicalBlockFile(scope: !3536, file: !730, discriminator: 4)
!3547 = !DILocation(line: 182, column: 2, scope: !3506)
!3548 = distinct !{!3548, !3547}
!3549 = !DILocation(line: 182, column: 10, scope: !3550)
!3550 = !DILexicalBlockFile(scope: !3551, file: !730, discriminator: 1)
!3551 = distinct !DILexicalBlock(scope: !3552, file: !730, line: 182, column: 10)
!3552 = distinct !DILexicalBlock(scope: !3506, file: !730, line: 182, column: 4)
!3553 = !DILocation(line: 182, column: 17, scope: !3550)
!3554 = !DILocation(line: 182, column: 5, scope: !3555)
!3555 = !DILexicalBlockFile(scope: !3556, file: !730, discriminator: 2)
!3556 = distinct !DILexicalBlock(scope: !3551, file: !730, line: 182, column: 3)
!3557 = !DILocation(line: 182, column: 14, scope: !3558)
!3558 = !DILexicalBlockFile(scope: !3559, file: !730, discriminator: 3)
!3559 = distinct !DILexicalBlock(scope: !3551, file: !730, line: 182, column: 12)
!3560 = !DILocation(line: 182, column: 101, scope: !3558)
!3561 = !DILocation(line: 182, column: 112, scope: !3562)
!3562 = !DILexicalBlockFile(scope: !3552, file: !730, discriminator: 4)
!3563 = !DILocation(line: 183, column: 2, scope: !3506)
!3564 = distinct !{!3564, !3563}
!3565 = !DILocation(line: 183, column: 10, scope: !3566)
!3566 = !DILexicalBlockFile(scope: !3567, file: !730, discriminator: 1)
!3567 = distinct !DILexicalBlock(scope: !3568, file: !730, line: 183, column: 10)
!3568 = distinct !DILexicalBlock(scope: !3506, file: !730, line: 183, column: 4)
!3569 = !DILocation(line: 183, column: 14, scope: !3566)
!3570 = !DILocation(line: 183, column: 5, scope: !3571)
!3571 = !DILexicalBlockFile(scope: !3572, file: !730, discriminator: 2)
!3572 = distinct !DILexicalBlock(scope: !3567, file: !730, line: 183, column: 3)
!3573 = !DILocation(line: 183, column: 14, scope: !3574)
!3574 = !DILexicalBlockFile(scope: !3575, file: !730, discriminator: 3)
!3575 = distinct !DILexicalBlock(scope: !3567, file: !730, line: 183, column: 12)
!3576 = !DILocation(line: 183, column: 98, scope: !3574)
!3577 = !DILocation(line: 183, column: 109, scope: !3578)
!3578 = !DILexicalBlockFile(scope: !3568, file: !730, discriminator: 4)
!3579 = !DILocation(line: 185, column: 7, scope: !3580)
!3580 = distinct !DILexicalBlock(scope: !3506, file: !730, line: 185, column: 6)
!3581 = !DILocation(line: 185, column: 6, scope: !3580)
!3582 = !DILocation(line: 185, column: 14, scope: !3580)
!3583 = !DILocation(line: 185, column: 6, scope: !3506)
!3584 = !DILocation(line: 187, column: 26, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3580, file: !730, line: 185, column: 22)
!3586 = !DILocation(line: 187, column: 34, scope: !3585)
!3587 = !DILocation(line: 187, column: 13, scope: !3585)
!3588 = !DILocation(line: 187, column: 11, scope: !3585)
!3589 = !DILocation(line: 188, column: 7, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3585, file: !730, line: 188, column: 7)
!3591 = !DILocation(line: 188, column: 15, scope: !3590)
!3592 = !DILocation(line: 188, column: 22, scope: !3590)
!3593 = !DILocation(line: 189, column: 26, scope: !3590)
!3594 = !DILocation(line: 189, column: 35, scope: !3590)
!3595 = !DILocation(line: 189, column: 41, scope: !3590)
!3596 = !DILocation(line: 189, column: 7, scope: !3590)
!3597 = !DILocation(line: 189, column: 49, scope: !3590)
!3598 = !DILocation(line: 188, column: 7, scope: !3599)
!3599 = !DILexicalBlockFile(scope: !3585, file: !730, discriminator: 1)
!3600 = !DILocation(line: 190, column: 13, scope: !3590)
!3601 = !DILocation(line: 190, column: 22, scope: !3590)
!3602 = !DILocation(line: 190, column: 11, scope: !3590)
!3603 = !DILocation(line: 190, column: 4, scope: !3590)
!3604 = !DILocation(line: 191, column: 2, scope: !3585)
!3605 = !DILocation(line: 193, column: 57, scope: !3506)
!3606 = !DILocation(line: 193, column: 39, scope: !3506)
!3607 = !DILocation(line: 193, column: 24, scope: !3506)
!3608 = !DILocation(line: 193, column: 36, scope: !3506)
!3609 = !DILocation(line: 193, column: 41, scope: !3506)
!3610 = !DILocation(line: 193, column: 12, scope: !3528)
!3611 = !DILocation(line: 193, column: 10, scope: !3506)
!3612 = !DILocation(line: 194, column: 42, scope: !3506)
!3613 = !DILocation(line: 194, column: 50, scope: !3506)
!3614 = !DILocation(line: 194, column: 8, scope: !3506)
!3615 = !DILocation(line: 194, column: 6, scope: !3506)
!3616 = !DILocation(line: 195, column: 21, scope: !3506)
!3617 = !DILocation(line: 195, column: 32, scope: !3506)
!3618 = !DILocation(line: 195, column: 40, scope: !3506)
!3619 = !DILocation(line: 195, column: 51, scope: !3506)
!3620 = !DILocation(line: 195, column: 2, scope: !3506)
!3621 = !DILocation(line: 196, column: 9, scope: !3506)
!3622 = !DILocation(line: 196, column: 2, scope: !3506)
!3623 = !DILocation(line: 197, column: 9, scope: !3506)
!3624 = !DILocation(line: 197, column: 2, scope: !3506)
!3625 = !DILocation(line: 198, column: 1, scope: !3506)
!3626 = !DILocation(line: 198, column: 1, scope: !3528)
!3627 = distinct !DISubprogram(name: "server_init", scope: !730, file: !730, line: 216, type: !1854, isLocal: true, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !737)
!3628 = !DILocalVariable(name: "server", arg: 1, scope: !3627, file: !730, line: 216, type: !338)
!3629 = !DILocation(line: 216, column: 41, scope: !3627)
!3630 = !DILocalVariable(name: "conn", scope: !3627, file: !730, line: 218, type: !43)
!3631 = !DILocation(line: 218, column: 26, scope: !3627)
!3632 = !DILocalVariable(name: "address", scope: !3627, file: !730, line: 219, type: !55)
!3633 = !DILocation(line: 219, column: 8, scope: !3627)
!3634 = !DILocalVariable(name: "ptr", scope: !3627, file: !730, line: 219, type: !55)
!3635 = !DILocation(line: 219, column: 18, scope: !3627)
!3636 = !DILocalVariable(name: "username", scope: !3627, file: !730, line: 219, type: !55)
!3637 = !DILocation(line: 219, column: 24, scope: !3627)
!3638 = !DILocalVariable(name: "cmd", scope: !3627, file: !730, line: 219, type: !55)
!3639 = !DILocation(line: 219, column: 35, scope: !3627)
!3640 = !DILocation(line: 221, column: 2, scope: !3627)
!3641 = distinct !{!3641, !3640}
!3642 = !DILocation(line: 221, column: 10, scope: !3643)
!3643 = !DILexicalBlockFile(scope: !3644, file: !730, discriminator: 1)
!3644 = distinct !DILexicalBlock(scope: !3645, file: !730, line: 221, column: 10)
!3645 = distinct !DILexicalBlock(scope: !3627, file: !730, line: 221, column: 4)
!3646 = !DILocation(line: 221, column: 17, scope: !3643)
!3647 = !DILocation(line: 221, column: 5, scope: !3648)
!3648 = !DILexicalBlockFile(scope: !3649, file: !730, discriminator: 2)
!3649 = distinct !DILexicalBlock(scope: !3644, file: !730, line: 221, column: 3)
!3650 = !DILocation(line: 221, column: 14, scope: !3651)
!3651 = !DILexicalBlockFile(scope: !3652, file: !730, discriminator: 3)
!3652 = distinct !DILexicalBlock(scope: !3644, file: !730, line: 221, column: 12)
!3653 = !DILocation(line: 221, column: 101, scope: !3651)
!3654 = !DILocation(line: 221, column: 112, scope: !3655)
!3655 = !DILexicalBlockFile(scope: !3645, file: !730, discriminator: 4)
!3656 = !DILocation(line: 223, column: 9, scope: !3627)
!3657 = !DILocation(line: 223, column: 17, scope: !3627)
!3658 = !DILocation(line: 223, column: 7, scope: !3627)
!3659 = !DILocation(line: 225, column: 6, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3627, file: !730, line: 225, column: 6)
!3661 = !DILocation(line: 225, column: 12, scope: !3660)
!3662 = !DILocation(line: 225, column: 18, scope: !3660)
!3663 = !DILocation(line: 225, column: 25, scope: !3660)
!3664 = !DILocation(line: 225, column: 28, scope: !3665)
!3665 = !DILexicalBlockFile(scope: !3660, file: !730, discriminator: 1)
!3666 = !DILocation(line: 225, column: 34, scope: !3665)
!3667 = !DILocation(line: 225, column: 49, scope: !3665)
!3668 = !DILocation(line: 225, column: 57, scope: !3665)
!3669 = !DILocation(line: 226, column: 7, scope: !3660)
!3670 = !DILocation(line: 226, column: 13, scope: !3660)
!3671 = !DILocation(line: 226, column: 6, scope: !3660)
!3672 = !DILocation(line: 226, column: 28, scope: !3660)
!3673 = !DILocation(line: 225, column: 6, scope: !3674)
!3674 = !DILexicalBlockFile(scope: !3627, file: !730, discriminator: 2)
!3675 = !DILocation(line: 227, column: 36, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3660, file: !730, line: 226, column: 37)
!3677 = !DILocation(line: 227, column: 42, scope: !3676)
!3678 = !DILocation(line: 227, column: 9, scope: !3676)
!3679 = !DILocation(line: 227, column: 7, scope: !3676)
!3680 = !DILocation(line: 228, column: 20, scope: !3676)
!3681 = !DILocation(line: 228, column: 28, scope: !3676)
!3682 = !DILocation(line: 228, column: 3, scope: !3676)
!3683 = !DILocation(line: 229, column: 10, scope: !3676)
!3684 = !DILocation(line: 229, column: 3, scope: !3676)
!3685 = !DILocation(line: 230, column: 2, scope: !3676)
!3686 = !DILocation(line: 232, column: 6, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3627, file: !730, line: 232, column: 6)
!3688 = !DILocation(line: 232, column: 12, scope: !3687)
!3689 = !DILocation(line: 232, column: 18, scope: !3687)
!3690 = !DILocation(line: 232, column: 25, scope: !3687)
!3691 = !DILocation(line: 232, column: 28, scope: !3692)
!3692 = !DILexicalBlockFile(scope: !3687, file: !730, discriminator: 1)
!3693 = !DILocation(line: 232, column: 34, scope: !3692)
!3694 = !DILocation(line: 232, column: 47, scope: !3692)
!3695 = !DILocation(line: 232, column: 6, scope: !3692)
!3696 = !DILocation(line: 233, column: 25, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3687, file: !730, line: 232, column: 56)
!3698 = !DILocation(line: 233, column: 31, scope: !3697)
!3699 = !DILocation(line: 233, column: 45, scope: !3697)
!3700 = !DILocation(line: 233, column: 51, scope: !3697)
!3701 = !DILocation(line: 233, column: 60, scope: !3697)
!3702 = !DILocation(line: 233, column: 66, scope: !3697)
!3703 = !DILocation(line: 233, column: 9, scope: !3697)
!3704 = !DILocation(line: 233, column: 7, scope: !3697)
!3705 = !DILocation(line: 234, column: 20, scope: !3697)
!3706 = !DILocation(line: 234, column: 28, scope: !3697)
!3707 = !DILocation(line: 234, column: 3, scope: !3697)
!3708 = !DILocation(line: 235, column: 10, scope: !3697)
!3709 = !DILocation(line: 235, column: 3, scope: !3697)
!3710 = !DILocation(line: 236, column: 2, scope: !3697)
!3711 = !DILocation(line: 238, column: 6, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3627, file: !730, line: 238, column: 6)
!3713 = !DILocation(line: 238, column: 12, scope: !3712)
!3714 = !DILocation(line: 238, column: 27, scope: !3712)
!3715 = !DILocation(line: 238, column: 6, scope: !3627)
!3716 = !DILocation(line: 239, column: 14, scope: !3712)
!3717 = !DILocation(line: 239, column: 3, scope: !3712)
!3718 = !DILocation(line: 241, column: 13, scope: !3627)
!3719 = !DILocation(line: 241, column: 2, scope: !3627)
!3720 = !DILocation(line: 243, column: 19, scope: !3627)
!3721 = !DILocation(line: 243, column: 2, scope: !3627)
!3722 = !DILocation(line: 245, column: 6, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3627, file: !730, line: 245, column: 6)
!3724 = !DILocation(line: 245, column: 12, scope: !3723)
!3725 = !DILocation(line: 245, column: 21, scope: !3723)
!3726 = !DILocation(line: 245, column: 28, scope: !3723)
!3727 = !DILocation(line: 245, column: 32, scope: !3728)
!3728 = !DILexicalBlockFile(scope: !3723, file: !730, discriminator: 1)
!3729 = !DILocation(line: 245, column: 38, scope: !3728)
!3730 = !DILocation(line: 245, column: 31, scope: !3728)
!3731 = !DILocation(line: 245, column: 47, scope: !3728)
!3732 = !DILocation(line: 245, column: 6, scope: !3728)
!3733 = !DILocation(line: 247, column: 36, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3723, file: !730, line: 245, column: 56)
!3735 = !DILocation(line: 247, column: 42, scope: !3734)
!3736 = !DILocation(line: 247, column: 9, scope: !3734)
!3737 = !DILocation(line: 247, column: 7, scope: !3734)
!3738 = !DILocation(line: 248, column: 20, scope: !3734)
!3739 = !DILocation(line: 248, column: 28, scope: !3734)
!3740 = !DILocation(line: 248, column: 3, scope: !3734)
!3741 = !DILocation(line: 249, column: 10, scope: !3734)
!3742 = !DILocation(line: 249, column: 3, scope: !3734)
!3743 = !DILocation(line: 250, column: 2, scope: !3734)
!3744 = !DILocation(line: 253, column: 35, scope: !3627)
!3745 = !DILocation(line: 253, column: 41, scope: !3627)
!3746 = !DILocation(line: 253, column: 8, scope: !3627)
!3747 = !DILocation(line: 253, column: 6, scope: !3627)
!3748 = !DILocation(line: 254, column: 19, scope: !3627)
!3749 = !DILocation(line: 254, column: 27, scope: !3627)
!3750 = !DILocation(line: 254, column: 2, scope: !3627)
!3751 = !DILocation(line: 255, column: 9, scope: !3627)
!3752 = !DILocation(line: 255, column: 2, scope: !3627)
!3753 = !DILocation(line: 258, column: 12, scope: !3627)
!3754 = !DILocation(line: 258, column: 20, scope: !3627)
!3755 = !DILocation(line: 258, column: 29, scope: !3627)
!3756 = !DILocation(line: 258, column: 10, scope: !3627)
!3757 = !DILocation(line: 259, column: 23, scope: !3627)
!3758 = !DILocation(line: 259, column: 15, scope: !3627)
!3759 = !DILocation(line: 259, column: 13, scope: !3627)
!3760 = !DILocation(line: 260, column: 6, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3627, file: !730, line: 260, column: 6)
!3762 = !DILocation(line: 260, column: 10, scope: !3761)
!3763 = !DILocation(line: 260, column: 6, scope: !3627)
!3764 = !DILocation(line: 263, column: 13, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3761, file: !730, line: 260, column: 18)
!3766 = !DILocation(line: 263, column: 16, scope: !3765)
!3767 = !DILocation(line: 263, column: 11, scope: !3765)
!3768 = !DILocation(line: 264, column: 8, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3765, file: !730, line: 264, column: 7)
!3770 = !DILocation(line: 264, column: 7, scope: !3769)
!3771 = !DILocation(line: 264, column: 16, scope: !3769)
!3772 = !DILocation(line: 264, column: 7, scope: !3765)
!3773 = !DILocation(line: 265, column: 12, scope: !3769)
!3774 = !DILocation(line: 265, column: 4, scope: !3769)
!3775 = !DILocation(line: 266, column: 2, scope: !3765)
!3776 = !DILocation(line: 268, column: 22, scope: !3627)
!3777 = !DILocation(line: 268, column: 28, scope: !3627)
!3778 = !DILocation(line: 268, column: 13, scope: !3627)
!3779 = !DILocation(line: 268, column: 11, scope: !3627)
!3780 = !DILocation(line: 269, column: 15, scope: !3627)
!3781 = !DILocation(line: 269, column: 8, scope: !3627)
!3782 = !DILocation(line: 269, column: 6, scope: !3627)
!3783 = !DILocation(line: 270, column: 6, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3627, file: !730, line: 270, column: 6)
!3785 = !DILocation(line: 270, column: 10, scope: !3784)
!3786 = !DILocation(line: 270, column: 6, scope: !3627)
!3787 = !DILocation(line: 270, column: 19, scope: !3788)
!3788 = !DILexicalBlockFile(scope: !3784, file: !730, discriminator: 1)
!3789 = !DILocation(line: 270, column: 23, scope: !3788)
!3790 = !DILocation(line: 270, column: 18, scope: !3788)
!3791 = !DILocation(line: 272, column: 45, scope: !3627)
!3792 = !DILocation(line: 272, column: 55, scope: !3627)
!3793 = !DILocation(line: 272, column: 65, scope: !3627)
!3794 = !DILocation(line: 272, column: 74, scope: !3627)
!3795 = !DILocation(line: 272, column: 80, scope: !3627)
!3796 = !DILocation(line: 272, column: 8, scope: !3627)
!3797 = !DILocation(line: 272, column: 6, scope: !3627)
!3798 = !DILocation(line: 273, column: 19, scope: !3627)
!3799 = !DILocation(line: 273, column: 27, scope: !3627)
!3800 = !DILocation(line: 273, column: 2, scope: !3627)
!3801 = !DILocation(line: 274, column: 9, scope: !3627)
!3802 = !DILocation(line: 274, column: 2, scope: !3627)
!3803 = !DILocation(line: 275, column: 9, scope: !3627)
!3804 = !DILocation(line: 275, column: 2, scope: !3627)
!3805 = !DILocation(line: 277, column: 6, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3627, file: !730, line: 277, column: 6)
!3807 = !DILocation(line: 277, column: 12, scope: !3806)
!3808 = !DILocation(line: 277, column: 18, scope: !3806)
!3809 = !DILocation(line: 277, column: 25, scope: !3806)
!3810 = !DILocation(line: 277, column: 28, scope: !3811)
!3811 = !DILexicalBlockFile(scope: !3806, file: !730, discriminator: 1)
!3812 = !DILocation(line: 277, column: 34, scope: !3811)
!3813 = !DILocation(line: 277, column: 53, scope: !3811)
!3814 = !DILocation(line: 277, column: 6, scope: !3811)
!3815 = !DILocation(line: 278, column: 25, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3806, file: !730, line: 277, column: 62)
!3817 = !DILocation(line: 278, column: 31, scope: !3816)
!3818 = !DILocation(line: 278, column: 51, scope: !3816)
!3819 = !DILocation(line: 278, column: 57, scope: !3816)
!3820 = !DILocation(line: 278, column: 66, scope: !3816)
!3821 = !DILocation(line: 278, column: 72, scope: !3816)
!3822 = !DILocation(line: 278, column: 9, scope: !3816)
!3823 = !DILocation(line: 278, column: 7, scope: !3816)
!3824 = !DILocation(line: 279, column: 20, scope: !3816)
!3825 = !DILocation(line: 279, column: 28, scope: !3816)
!3826 = !DILocation(line: 279, column: 3, scope: !3816)
!3827 = !DILocation(line: 280, column: 10, scope: !3816)
!3828 = !DILocation(line: 280, column: 3, scope: !3816)
!3829 = !DILocation(line: 281, column: 2, scope: !3816)
!3830 = !DILocation(line: 283, column: 21, scope: !3627)
!3831 = !DILocation(line: 283, column: 2, scope: !3627)
!3832 = !DILocation(line: 283, column: 10, scope: !3627)
!3833 = !DILocation(line: 283, column: 19, scope: !3627)
!3834 = !DILocation(line: 287, column: 22, scope: !3627)
!3835 = !DILocation(line: 287, column: 30, scope: !3627)
!3836 = !DILocation(line: 287, column: 40, scope: !3627)
!3837 = !DILocation(line: 287, column: 63, scope: !3838)
!3838 = !DILexicalBlockFile(scope: !3627, file: !730, discriminator: 1)
!3839 = !DILocation(line: 287, column: 2, scope: !3674)
!3840 = !DILocation(line: 288, column: 22, scope: !3627)
!3841 = !DILocation(line: 288, column: 30, scope: !3627)
!3842 = !DILocation(line: 288, column: 40, scope: !3627)
!3843 = !DILocation(line: 288, column: 60, scope: !3838)
!3844 = !DILocation(line: 288, column: 2, scope: !3674)
!3845 = !DILocation(line: 290, column: 2, scope: !3627)
!3846 = !DILocation(line: 290, column: 10, scope: !3627)
!3847 = !DILocation(line: 290, column: 19, scope: !3627)
!3848 = !DILocation(line: 294, column: 22, scope: !3627)
!3849 = !DILocation(line: 294, column: 30, scope: !3627)
!3850 = !DILocation(line: 294, column: 2, scope: !3627)
!3851 = !DILocation(line: 295, column: 18, scope: !3627)
!3852 = !DILocation(line: 295, column: 26, scope: !3627)
!3853 = !DILocation(line: 295, column: 2, scope: !3627)
!3854 = !DILocation(line: 296, column: 1, scope: !3627)
!3855 = !DILocation(line: 296, column: 1, scope: !3838)
!3856 = distinct !DISubprogram(name: "isupport_destroy_hash", scope: !730, file: !730, line: 422, type: !3857, isLocal: true, isDefinition: true, scopeLine: 423, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !737)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{null, !149, !149}
!3859 = !DILocalVariable(name: "key", arg: 1, scope: !3856, file: !730, line: 422, type: !149)
!3860 = !DILocation(line: 422, column: 41, scope: !3856)
!3861 = !DILocalVariable(name: "value", arg: 2, scope: !3856, file: !730, line: 422, type: !149)
!3862 = !DILocation(line: 422, column: 52, scope: !3856)
!3863 = !DILocation(line: 424, column: 9, scope: !3856)
!3864 = !DILocation(line: 424, column: 2, scope: !3856)
!3865 = !DILocation(line: 425, column: 9, scope: !3856)
!3866 = !DILocation(line: 425, column: 2, scope: !3856)
!3867 = !DILocation(line: 426, column: 1, scope: !3856)
