; ModuleID = './line210-chat-completion.o.i'
source_filename = "./line210-chat-completion.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
%struct._WINDOW_REC = type { i32, i8*, i32, i32, %struct._GSList*, %struct._WI_ITEM_REC*, %struct._SERVER_REC*, %struct._SERVER_REC*, i8*, i32, %struct._GSList*, i8, %struct.HISTORY_REC*, i8*, i32, i8*, i64, i64, i8*, i8*, i8* }
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, {}*, i8* (%struct._WI_ITEM_REC*)* }
%struct._GHashTable = type opaque
%struct._SERVER_REC = type { i32, i32, i32, %struct._SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, void (%struct._SERVER_REC*, i8*, i32)*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)* }
%struct._SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8* }
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
%struct._GString = type { i8*, i64, i64 }
%struct._NET_SENDBUF_REC = type opaque
%struct._RAWLOG_REC = type opaque
%struct._GTimeVal = type { i64, i64 }
%struct._CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)* }
%struct._NICK_REC = type { i32, i32, i64, i8*, i8*, i8*, i32, i8, [8 x i8], i8*, %struct._NICK_REC* }
%struct._QUERY_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, i8 }
%struct.HISTORY_REC = type { i8*, %struct._GList*, i32, i32, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._CONFIG_REC = type { i8*, i32, i32, i8*, %struct._CONFIG_NODE*, %struct._GHashTable*, %struct._GHashTable*, %struct._GScanner*, %struct._GIOChannel*, i32, i32 }
%struct._CONFIG_NODE = type { i32, i8*, i8* }
%struct._GScanner = type { i8*, i32, i32, i8*, %struct._GData*, %struct._GScannerConfig*, i32, %union._GTokenValue, i32, i32, i32, %union._GTokenValue, i32, i32, %struct._GHashTable*, i32, i8*, i8*, i8*, i32, void (%struct._GScanner*, i8*, i32)* }
%struct._GData = type opaque
%struct._GScannerConfig = type { i8*, i8*, i8*, i8*, i24, i32 }
%union._GTokenValue = type { i8* }
%struct.LAST_MSG_REC = type { i64, i8*, i32 }
%struct.MODULE_SERVER_REC = type { %struct._GSList* }
%struct._CHANNEL_SETUP_REC = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8, %struct._GHashTable* }
%struct._CHATNET_REC = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IPADDR*, %struct._IPADDR* }
%struct._SERVER_SETUP_REC = type { i32, i32, i8*, i16, i8*, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IPADDR*, %struct._IPADDR*, i64, i8, %struct._GHashTable* }
%struct.MODULE_CHANNEL_REC = type { %struct._GSList* }

@__func__.completion_last_message_add = private unnamed_addr constant [28 x i8] c"completion_last_message_add\00", align 1
@.str = private unnamed_addr constant [13 x i8] c"nick != NULL\00", align 1
@global_lastmsgs = internal global %struct._GSList* null, align 8
@keep_privates_count = internal global i32 0, align 4
@__func__.completion_last_message_remove = private unnamed_addr constant [31 x i8] c"completion_last_message_remove\00", align 1
@__func__.completion_last_message_rename = private unnamed_addr constant [31 x i8] c"completion_last_message_rename\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"oldnick != NULL\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"newnick != NULL\00", align 1
@__func__.completion_msg = private unnamed_addr constant [15 x i8] c"completion_msg\00", align 1
@servers = external global %struct._GSList*, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"-%s\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%s -%s\00", align 1
@__func__.completion_get_servertags = private unnamed_addr constant [26 x i8] c"completion_get_servertags\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"word != NULL\00", align 1
@active_win = external global %struct._WINDOW_REC*, align 8
@__func__.completion_get_channels = private unnamed_addr constant [24 x i8] c"completion_get_channels\00", align 1
@setupchannels = external global %struct._GSList*, align 8
@__func__.completion_get_aliases = private unnamed_addr constant [23 x i8] c"completion_get_aliases\00", align 1
@mainconfig = external global %struct._CONFIG_REC*, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"aliases\00", align 1
@__func__.completion_get_chatnets = private unnamed_addr constant [24 x i8] c"completion_get_chatnets\00", align 1
@chatnets = external global %struct._GSList*, align 8
@__func__.completion_get_servers = private unnamed_addr constant [23 x i8] c"completion_get_servers\00", align 1
@setupservers = external global %struct._GSList*, align 8
@__func__.completion_get_targets = private unnamed_addr constant [23 x i8] c"completion_get_targets\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"conversions\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"fe-common/core\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"completion\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"completion_char\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"completion_auto\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"completion_keep_publics\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"completion_keep_privates\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"completion_nicks_lowercase\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"completion_strict\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"completion_empty_line\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"completion_nicks_match_case\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"never;always;auto\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"lookandfeel\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"expand_escapes\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"complete word\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"complete command msg\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"complete command query\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"complete command action\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"complete erase command msg\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"complete erase command query\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"complete erase command action\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"complete command connect\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"complete command server\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"complete command disconnect\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"complete command reconnect\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"complete command window server\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"complete command topic\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"complete command away\00", align 1
@.str.36 = private unnamed_addr constant [25 x i8] c"complete command unalias\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"complete command alias\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"complete command window goto\00", align 1
@.str.39 = private unnamed_addr constant [34 x i8] c"complete command window item move\00", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c"complete command server add\00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"complete command server remove\00", align 1
@.str.42 = private unnamed_addr constant [31 x i8] c"complete command recode remove\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"message public\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"message join\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"message private\00", align 1
@.str.46 = private unnamed_addr constant [19 x i8] c"message own_public\00", align 1
@.str.47 = private unnamed_addr constant [20 x i8] c"message own_private\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"nicklist remove\00", align 1
@.str.49 = private unnamed_addr constant [17 x i8] c"nicklist changed\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"send text\00", align 1
@.str.51 = private unnamed_addr constant [20 x i8] c"server disconnected\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"channel destroyed\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"setup changed\00", align 1
@completion_char = internal global i8* null, align 8
@cmdchars = internal global i8* null, align 8
@__func__.completion_msg_server = private unnamed_addr constant [22 x i8] c"completion_msg_server\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c" \00", align 1
@keep_publics_count = internal global i32 0, align 4
@completion_lowercase = internal global i32 0, align 4
@completion_auto = internal global i32 0, align 4
@completion_strict = internal global i32 0, align 4
@completion_empty_line = internal global i32 0, align 4
@completion_match_case = internal global i32 0, align 4
@.str.55 = private unnamed_addr constant [9 x i8] c"cmdchars\00", align 1
@__func__.sig_complete_word = private unnamed_addr constant [18 x i8] c"sig_complete_word\00", align 1
@.str.56 = private unnamed_addr constant [13 x i8] c"list != NULL\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"window != NULL\00", align 1
@.str.58 = private unnamed_addr constant [18 x i8] c"linestart != NULL\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"%cmsg\00", align 1
@.str.60 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"WINDOW ITEM TYPE\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"CHANNEL\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"QUERY\00", align 1
@__func__.completion_channel_nicks = private unnamed_addr constant [25 x i8] c"completion_channel_nicks\00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"channel != NULL\00", align 1
@g_ascii_table = external constant i16*, align 8
@__func__.completion_nicks_nonstrict = private unnamed_addr constant [27 x i8] c"completion_nicks_nonstrict\00", align 1
@__func__.sig_complete_msg = private unnamed_addr constant [17 x i8] c"sig_complete_msg\00", align 1
@.str.65 = private unnamed_addr constant [13 x i8] c"line != NULL\00", align 1
@__func__.line_get_server = private unnamed_addr constant [16 x i8] c"line_get_server\00", align 1
@__func__.sig_complete_connect = private unnamed_addr constant [21 x i8] c"sig_complete_connect\00", align 1
@__func__.sig_complete_tag = private unnamed_addr constant [17 x i8] c"sig_complete_tag\00", align 1
@__func__.sig_complete_topic = private unnamed_addr constant [19 x i8] c"sig_complete_topic\00", align 1
@__func__.sig_complete_away = private unnamed_addr constant [18 x i8] c"sig_complete_away\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@__func__.sig_complete_unalias = private unnamed_addr constant [21 x i8] c"sig_complete_unalias\00", align 1
@__func__.sig_complete_alias = private unnamed_addr constant [19 x i8] c"sig_complete_alias\00", align 1
@__func__.sig_complete_window = private unnamed_addr constant [20 x i8] c"sig_complete_window\00", align 1
@windows = external global %struct._GSList*, align 8
@__func__.sig_complete_channel = private unnamed_addr constant [21 x i8] c"sig_complete_channel\00", align 1
@__func__.sig_complete_server = private unnamed_addr constant [20 x i8] c"sig_complete_server\00", align 1
@__func__.sig_complete_target = private unnamed_addr constant [20 x i8] c"sig_complete_target\00", align 1
@__func__.sig_message_public = private unnamed_addr constant [19 x i8] c"sig_message_public\00", align 1
@__func__.sig_message_join = private unnamed_addr constant [17 x i8] c"sig_message_join\00", align 1
@__func__.sig_message_private = private unnamed_addr constant [20 x i8] c"sig_message_private\00", align 1
@.str.67 = private unnamed_addr constant [15 x i8] c"server != NULL\00", align 1
@__func__.sig_message_own_public = private unnamed_addr constant [23 x i8] c"sig_message_own_public\00", align 1
@.str.68 = private unnamed_addr constant [12 x i8] c"msg != NULL\00", align 1
@__func__.sig_message_own_private = private unnamed_addr constant [24 x i8] c"sig_message_own_private\00", align 1
@__func__.event_text = private unnamed_addr constant [11 x i8] c"event_text\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"-channel \22%s\22 %s\00", align 1
@.str.71 = private unnamed_addr constant [14 x i8] c"-nick \22%s\22 %s\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.73 = private unnamed_addr constant [12 x i8] c"command msg\00", align 1
@__func__.sig_server_disconnected = private unnamed_addr constant [24 x i8] c"sig_server_disconnected\00", align 1
@__func__.sig_channel_destroyed = private unnamed_addr constant [22 x i8] c"sig_channel_destroyed\00", align 1

; Function Attrs: nounwind uwtable
define void @completion_last_message_add(i8*) #0 !dbg !609 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !613, metadata !614), !dbg !615
  br label %3, !dbg !616, !llvm.loop !617

; <label>:3:                                      ; preds = %1
  %4 = load i8*, i8** %2, align 8, !dbg !618
  %5 = icmp ne i8* %4, null, !dbg !622
  br i1 %5, label %6, label %7, !dbg !618

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !623

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.completion_last_message_add, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !626
  br label %12, !dbg !629

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !630

; <label>:9:                                      ; preds = %8
  %10 = load i8*, i8** %2, align 8, !dbg !632
  %11 = load i32, i32* @keep_privates_count, align 4, !dbg !633
  call void @last_msg_add(%struct._GSList** @global_lastmsgs, i8* %10, i32 1, i32 %11), !dbg !634
  br label %12, !dbg !635

; <label>:12:                                     ; preds = %9, %7
  ret void, !dbg !636
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @last_msg_add(%struct._GSList**, i8*, i32, i32) #0 !dbg !638 {
  %5 = alloca %struct._GSList**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.LAST_MSG_REC*, align 8
  store %struct._GSList** %0, %struct._GSList*** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList*** %5, metadata !642, metadata !614), !dbg !643
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !644, metadata !614), !dbg !645
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !646, metadata !614), !dbg !647
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !648, metadata !614), !dbg !649
  call void @llvm.dbg.declare(metadata %struct.LAST_MSG_REC** %9, metadata !650, metadata !614), !dbg !651
  %10 = load i32, i32* %8, align 4, !dbg !652
  %11 = icmp sle i32 %10, 0, !dbg !654
  br i1 %11, label %12, label %13, !dbg !655

; <label>:12:                                     ; preds = %4
  br label %88, !dbg !656

; <label>:13:                                     ; preds = %4
  %14 = load %struct._GSList**, %struct._GSList*** %5, align 8, !dbg !657
  %15 = load %struct._GSList*, %struct._GSList** %14, align 8, !dbg !658
  %16 = load i8*, i8** %6, align 8, !dbg !659
  %17 = call %struct.LAST_MSG_REC* @last_msg_find(%struct._GSList* %15, i8* %16), !dbg !660
  store %struct.LAST_MSG_REC* %17, %struct.LAST_MSG_REC** %9, align 8, !dbg !661
  %18 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %9, align 8, !dbg !662
  %19 = icmp ne %struct.LAST_MSG_REC* %18, null, !dbg !664
  br i1 %19, label %20, label %45, !dbg !665

; <label>:20:                                     ; preds = %13
  %21 = load %struct._GSList**, %struct._GSList*** %5, align 8, !dbg !666
  %22 = load %struct._GSList*, %struct._GSList** %21, align 8, !dbg !668
  %23 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %9, align 8, !dbg !669
  %24 = bitcast %struct.LAST_MSG_REC* %23 to i8*, !dbg !669
  %25 = call %struct._GSList* @g_slist_remove(%struct._GSList* %22, i8* %24), !dbg !670
  %26 = load %struct._GSList**, %struct._GSList*** %5, align 8, !dbg !671
  store %struct._GSList* %25, %struct._GSList** %26, align 8, !dbg !672
  %27 = load i32, i32* %7, align 4, !dbg !673
  %28 = icmp ne i32 %27, 0, !dbg !673
  br i1 %28, label %29, label %33, !dbg !675

; <label>:29:                                     ; preds = %20
  %30 = load i32, i32* %8, align 4, !dbg !676
  %31 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %9, align 8, !dbg !677
  %32 = getelementptr inbounds %struct.LAST_MSG_REC, %struct.LAST_MSG_REC* %31, i32 0, i32 2, !dbg !678
  store i32 %30, i32* %32, align 8, !dbg !679
  br label %44, !dbg !677

; <label>:33:                                     ; preds = %20
  %34 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %9, align 8, !dbg !680
  %35 = getelementptr inbounds %struct.LAST_MSG_REC, %struct.LAST_MSG_REC* %34, i32 0, i32 2, !dbg !682
  %36 = load i32, i32* %35, align 8, !dbg !682
  %37 = icmp ne i32 %36, 0, !dbg !680
  br i1 %37, label %38, label %43, !dbg !683

; <label>:38:                                     ; preds = %33
  %39 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %9, align 8, !dbg !684
  %40 = getelementptr inbounds %struct.LAST_MSG_REC, %struct.LAST_MSG_REC* %39, i32 0, i32 2, !dbg !685
  %41 = load i32, i32* %40, align 8, !dbg !686
  %42 = add nsw i32 %41, -1, !dbg !686
  store i32 %42, i32* %40, align 8, !dbg !686
  br label %43, !dbg !684

; <label>:43:                                     ; preds = %38, %33
  br label %44

; <label>:44:                                     ; preds = %43, %29
  br label %76, !dbg !687

; <label>:45:                                     ; preds = %13
  %46 = call noalias i8* @g_malloc_n(i64 1, i64 24), !dbg !688
  %47 = bitcast i8* %46 to %struct.LAST_MSG_REC*, !dbg !690
  store %struct.LAST_MSG_REC* %47, %struct.LAST_MSG_REC** %9, align 8, !dbg !691
  %48 = load i8*, i8** %6, align 8, !dbg !692
  %49 = call noalias i8* @g_strdup(i8* %48), !dbg !693
  %50 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %9, align 8, !dbg !694
  %51 = getelementptr inbounds %struct.LAST_MSG_REC, %struct.LAST_MSG_REC* %50, i32 0, i32 1, !dbg !695
  store i8* %49, i8** %51, align 8, !dbg !696
  br label %52, !dbg !697

; <label>:52:                                     ; preds = %58, %45
  %53 = load %struct._GSList**, %struct._GSList*** %5, align 8, !dbg !698
  %54 = load %struct._GSList*, %struct._GSList** %53, align 8, !dbg !700
  %55 = call i32 @g_slist_length(%struct._GSList* %54), !dbg !701
  %56 = load i32, i32* %8, align 4, !dbg !702
  %57 = icmp sge i32 %55, %56, !dbg !703
  br i1 %57, label %58, label %66, !dbg !704

; <label>:58:                                     ; preds = %52
  %59 = load %struct._GSList**, %struct._GSList*** %5, align 8, !dbg !705
  %60 = load %struct._GSList**, %struct._GSList*** %5, align 8, !dbg !707
  %61 = load %struct._GSList*, %struct._GSList** %60, align 8, !dbg !708
  %62 = call %struct._GSList* @g_slist_last(%struct._GSList* %61), !dbg !709
  %63 = getelementptr inbounds %struct._GSList, %struct._GSList* %62, i32 0, i32 0, !dbg !710
  %64 = load i8*, i8** %63, align 8, !dbg !710
  %65 = bitcast i8* %64 to %struct.LAST_MSG_REC*, !dbg !709
  call void @last_msg_destroy(%struct._GSList** %59, %struct.LAST_MSG_REC* %65), !dbg !711
  br label %52, !dbg !713, !llvm.loop !715

; <label>:66:                                     ; preds = %52
  %67 = load i32, i32* %7, align 4, !dbg !716
  %68 = icmp ne i32 %67, 0, !dbg !716
  br i1 %68, label %69, label %71, !dbg !716

; <label>:69:                                     ; preds = %66
  %70 = load i32, i32* %8, align 4, !dbg !717
  br label %72, !dbg !718

; <label>:71:                                     ; preds = %66
  br label %72, !dbg !719

; <label>:72:                                     ; preds = %71, %69
  %73 = phi i32 [ %70, %69 ], [ 0, %71 ], !dbg !720
  %74 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %9, align 8, !dbg !722
  %75 = getelementptr inbounds %struct.LAST_MSG_REC, %struct.LAST_MSG_REC* %74, i32 0, i32 2, !dbg !723
  store i32 %73, i32* %75, align 8, !dbg !724
  br label %76

; <label>:76:                                     ; preds = %72, %44
  %77 = call i64 @time(i64* null) #6, !dbg !725
  %78 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %9, align 8, !dbg !726
  %79 = getelementptr inbounds %struct.LAST_MSG_REC, %struct.LAST_MSG_REC* %78, i32 0, i32 0, !dbg !727
  store i64 %77, i64* %79, align 8, !dbg !728
  %80 = load %struct._GSList**, %struct._GSList*** %5, align 8, !dbg !729
  %81 = load %struct._GSList*, %struct._GSList** %80, align 8, !dbg !730
  call void @last_msg_dec_owns(%struct._GSList* %81), !dbg !731
  %82 = load %struct._GSList**, %struct._GSList*** %5, align 8, !dbg !732
  %83 = load %struct._GSList*, %struct._GSList** %82, align 8, !dbg !733
  %84 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %9, align 8, !dbg !734
  %85 = bitcast %struct.LAST_MSG_REC* %84 to i8*, !dbg !734
  %86 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %83, i8* %85), !dbg !735
  %87 = load %struct._GSList**, %struct._GSList*** %5, align 8, !dbg !736
  store %struct._GSList* %86, %struct._GSList** %87, align 8, !dbg !737
  br label %88, !dbg !738

; <label>:88:                                     ; preds = %76, %12
  ret void, !dbg !739
}

; Function Attrs: nounwind uwtable
define void @completion_last_message_remove(i8*) #0 !dbg !741 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.LAST_MSG_REC*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !742, metadata !614), !dbg !743
  call void @llvm.dbg.declare(metadata %struct.LAST_MSG_REC** %3, metadata !744, metadata !614), !dbg !745
  br label %4, !dbg !746, !llvm.loop !747

; <label>:4:                                      ; preds = %1
  %5 = load i8*, i8** %2, align 8, !dbg !748
  %6 = icmp ne i8* %5, null, !dbg !752
  br i1 %6, label %7, label %8, !dbg !748

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !753

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.completion_last_message_remove, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !756
  br label %18, !dbg !759

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !760

; <label>:10:                                     ; preds = %9
  %11 = load %struct._GSList*, %struct._GSList** @global_lastmsgs, align 8, !dbg !762
  %12 = load i8*, i8** %2, align 8, !dbg !763
  %13 = call %struct.LAST_MSG_REC* @last_msg_find(%struct._GSList* %11, i8* %12), !dbg !764
  store %struct.LAST_MSG_REC* %13, %struct.LAST_MSG_REC** %3, align 8, !dbg !765
  %14 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %3, align 8, !dbg !766
  %15 = icmp ne %struct.LAST_MSG_REC* %14, null, !dbg !768
  br i1 %15, label %16, label %18, !dbg !769

; <label>:16:                                     ; preds = %10
  %17 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %3, align 8, !dbg !770
  call void @last_msg_destroy(%struct._GSList** @global_lastmsgs, %struct.LAST_MSG_REC* %17), !dbg !772
  br label %18, !dbg !772

; <label>:18:                                     ; preds = %8, %16, %10
  ret void, !dbg !773
}

; Function Attrs: nounwind uwtable
define internal %struct.LAST_MSG_REC* @last_msg_find(%struct._GSList*, i8*) #0 !dbg !774 {
  %3 = alloca %struct.LAST_MSG_REC*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.LAST_MSG_REC*, align 8
  store %struct._GSList* %0, %struct._GSList** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !777, metadata !614), !dbg !778
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !779, metadata !614), !dbg !780
  br label %7, !dbg !781

; <label>:7:                                      ; preds = %23, %2
  %8 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !782
  %9 = icmp ne %struct._GSList* %8, null, !dbg !784
  br i1 %9, label %10, label %27, !dbg !785

; <label>:10:                                     ; preds = %7
  call void @llvm.dbg.declare(metadata %struct.LAST_MSG_REC** %6, metadata !786, metadata !614), !dbg !788
  %11 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !789
  %12 = getelementptr inbounds %struct._GSList, %struct._GSList* %11, i32 0, i32 0, !dbg !790
  %13 = load i8*, i8** %12, align 8, !dbg !790
  %14 = bitcast i8* %13 to %struct.LAST_MSG_REC*, !dbg !789
  store %struct.LAST_MSG_REC* %14, %struct.LAST_MSG_REC** %6, align 8, !dbg !788
  %15 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %6, align 8, !dbg !791
  %16 = getelementptr inbounds %struct.LAST_MSG_REC, %struct.LAST_MSG_REC* %15, i32 0, i32 1, !dbg !793
  %17 = load i8*, i8** %16, align 8, !dbg !793
  %18 = load i8*, i8** %5, align 8, !dbg !794
  %19 = call i32 @g_ascii_strcasecmp(i8* %17, i8* %18), !dbg !795
  %20 = icmp eq i32 %19, 0, !dbg !796
  br i1 %20, label %21, label %23, !dbg !797

; <label>:21:                                     ; preds = %10
  %22 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %6, align 8, !dbg !798
  store %struct.LAST_MSG_REC* %22, %struct.LAST_MSG_REC** %3, align 8, !dbg !799
  br label %28, !dbg !799

; <label>:23:                                     ; preds = %10
  %24 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !800
  %25 = getelementptr inbounds %struct._GSList, %struct._GSList* %24, i32 0, i32 1, !dbg !801
  %26 = load %struct._GSList*, %struct._GSList** %25, align 8, !dbg !801
  store %struct._GSList* %26, %struct._GSList** %4, align 8, !dbg !802
  br label %7, !dbg !803, !llvm.loop !805

; <label>:27:                                     ; preds = %7
  store %struct.LAST_MSG_REC* null, %struct.LAST_MSG_REC** %3, align 8, !dbg !806
  br label %28, !dbg !806

; <label>:28:                                     ; preds = %27, %21
  %29 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %3, align 8, !dbg !807
  ret %struct.LAST_MSG_REC* %29, !dbg !807
}

; Function Attrs: nounwind uwtable
define internal void @last_msg_destroy(%struct._GSList**, %struct.LAST_MSG_REC*) #0 !dbg !808 {
  %3 = alloca %struct._GSList**, align 8
  %4 = alloca %struct.LAST_MSG_REC*, align 8
  store %struct._GSList** %0, %struct._GSList*** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList*** %3, metadata !811, metadata !614), !dbg !812
  store %struct.LAST_MSG_REC* %1, %struct.LAST_MSG_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.LAST_MSG_REC** %4, metadata !813, metadata !614), !dbg !814
  %5 = load %struct._GSList**, %struct._GSList*** %3, align 8, !dbg !815
  %6 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !816
  %7 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %4, align 8, !dbg !817
  %8 = bitcast %struct.LAST_MSG_REC* %7 to i8*, !dbg !817
  %9 = call %struct._GSList* @g_slist_remove(%struct._GSList* %6, i8* %8), !dbg !818
  %10 = load %struct._GSList**, %struct._GSList*** %3, align 8, !dbg !819
  store %struct._GSList* %9, %struct._GSList** %10, align 8, !dbg !820
  %11 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %4, align 8, !dbg !821
  %12 = getelementptr inbounds %struct.LAST_MSG_REC, %struct.LAST_MSG_REC* %11, i32 0, i32 1, !dbg !822
  %13 = load i8*, i8** %12, align 8, !dbg !822
  call void @g_free(i8* %13), !dbg !823
  %14 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %4, align 8, !dbg !824
  %15 = bitcast %struct.LAST_MSG_REC* %14 to i8*, !dbg !824
  call void @g_free(i8* %15), !dbg !825
  ret void, !dbg !826
}

; Function Attrs: nounwind uwtable
define void @completion_last_message_rename(i8*, i8*) #0 !dbg !827 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.LAST_MSG_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !830, metadata !614), !dbg !831
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !832, metadata !614), !dbg !833
  call void @llvm.dbg.declare(metadata %struct.LAST_MSG_REC** %5, metadata !834, metadata !614), !dbg !835
  br label %6, !dbg !836, !llvm.loop !837

; <label>:6:                                      ; preds = %2
  %7 = load i8*, i8** %3, align 8, !dbg !838
  %8 = icmp ne i8* %7, null, !dbg !842
  br i1 %8, label %9, label %10, !dbg !838

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !843

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.completion_last_message_rename, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0)), !dbg !846
  br label %33, !dbg !849

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !850

; <label>:12:                                     ; preds = %11
  br label %13, !dbg !852, !llvm.loop !853

; <label>:13:                                     ; preds = %12
  %14 = load i8*, i8** %4, align 8, !dbg !854
  %15 = icmp ne i8* %14, null, !dbg !858
  br i1 %15, label %16, label %17, !dbg !854

; <label>:16:                                     ; preds = %13
  br label %18, !dbg !859

; <label>:17:                                     ; preds = %13
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.completion_last_message_rename, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0)), !dbg !862
  br label %33, !dbg !865

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !866

; <label>:19:                                     ; preds = %18
  %20 = load %struct._GSList*, %struct._GSList** @global_lastmsgs, align 8, !dbg !868
  %21 = load i8*, i8** %3, align 8, !dbg !869
  %22 = call %struct.LAST_MSG_REC* @last_msg_find(%struct._GSList* %20, i8* %21), !dbg !870
  store %struct.LAST_MSG_REC* %22, %struct.LAST_MSG_REC** %5, align 8, !dbg !871
  %23 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %5, align 8, !dbg !872
  %24 = icmp ne %struct.LAST_MSG_REC* %23, null, !dbg !874
  br i1 %24, label %25, label %33, !dbg !875

; <label>:25:                                     ; preds = %19
  %26 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %5, align 8, !dbg !876
  %27 = getelementptr inbounds %struct.LAST_MSG_REC, %struct.LAST_MSG_REC* %26, i32 0, i32 1, !dbg !878
  %28 = load i8*, i8** %27, align 8, !dbg !878
  call void @g_free(i8* %28), !dbg !879
  %29 = load i8*, i8** %4, align 8, !dbg !880
  %30 = call noalias i8* @g_strdup(i8* %29), !dbg !881
  %31 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %5, align 8, !dbg !882
  %32 = getelementptr inbounds %struct.LAST_MSG_REC, %struct.LAST_MSG_REC* %31, i32 0, i32 1, !dbg !883
  store i8* %30, i8** %32, align 8, !dbg !884
  br label %33, !dbg !885

; <label>:33:                                     ; preds = %10, %17, %25, %19
  ret void, !dbg !886
}

declare void @g_free(i8*) #2

declare noalias i8* @g_strdup(i8*) #2

; Function Attrs: nounwind uwtable
define %struct._GList* @completion_msg(%struct._SERVER_REC*, %struct._SERVER_REC*, i8*, i8*) #0 !dbg !887 {
  %5 = alloca %struct._GList*, align 8
  %6 = alloca %struct._SERVER_REC*, align 8
  %7 = alloca %struct._SERVER_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct._GSList*, align 8
  %11 = alloca %struct._GSList*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct._SERVER_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %6, metadata !898, metadata !614), !dbg !899
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %7, metadata !900, metadata !614), !dbg !901
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !902, metadata !614), !dbg !903
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !904, metadata !614), !dbg !905
  call void @llvm.dbg.declare(metadata %struct._GSList** %10, metadata !906, metadata !614), !dbg !907
  call void @llvm.dbg.declare(metadata %struct._GSList** %11, metadata !908, metadata !614), !dbg !909
  call void @llvm.dbg.declare(metadata i8** %12, metadata !910, metadata !614), !dbg !911
  br label %14, !dbg !912, !llvm.loop !913

; <label>:14:                                     ; preds = %4
  %15 = load i8*, i8** %8, align 8, !dbg !914
  %16 = icmp ne i8* %15, null, !dbg !918
  br i1 %16, label %17, label %18, !dbg !914

; <label>:17:                                     ; preds = %14
  br label %19, !dbg !919

; <label>:18:                                     ; preds = %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.completion_msg, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !922
  store %struct._GList* null, %struct._GList** %5, align 8, !dbg !925
  br label %84, !dbg !925

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !926

; <label>:20:                                     ; preds = %19
  %21 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !928
  %22 = icmp eq %struct._GSList* %21, null, !dbg !930
  br i1 %22, label %23, label %24, !dbg !931

; <label>:23:                                     ; preds = %20
  store %struct._GList* null, %struct._GList** %5, align 8, !dbg !932
  br label %84, !dbg !932

; <label>:24:                                     ; preds = %20
  store %struct._GSList* null, %struct._GSList** %11, align 8, !dbg !934
  %25 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !935
  %26 = icmp ne %struct._SERVER_REC* %25, null, !dbg !937
  br i1 %26, label %27, label %33, !dbg !938

; <label>:27:                                     ; preds = %24
  %28 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !939
  %29 = load i8*, i8** %8, align 8, !dbg !941
  %30 = load i8*, i8** %9, align 8, !dbg !942
  call void @completion_msg_server(%struct._GSList** %11, %struct._SERVER_REC* %28, i8* %29, i8* %30), !dbg !943
  %31 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !944
  %32 = call %struct._GList* @convert_msglist(%struct._GSList* %31), !dbg !945
  store %struct._GList* %32, %struct._GList** %5, align 8, !dbg !946
  br label %84, !dbg !946

; <label>:33:                                     ; preds = %24
  %34 = load i8*, i8** %8, align 8, !dbg !947
  %35 = load i8*, i8** %9, align 8, !dbg !948
  call void @completion_msg_server(%struct._GSList** %11, %struct._SERVER_REC* null, i8* %34, i8* %35), !dbg !949
  %36 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !950
  store %struct._GSList* %36, %struct._GSList** %10, align 8, !dbg !952
  br label %37, !dbg !953

; <label>:37:                                     ; preds = %77, %33
  %38 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !954
  %39 = icmp ne %struct._GSList* %38, null, !dbg !957
  br i1 %39, label %40, label %81, !dbg !958

; <label>:40:                                     ; preds = %37
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %13, metadata !959, metadata !614), !dbg !961
  %41 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !962
  %42 = getelementptr inbounds %struct._GSList, %struct._GSList* %41, i32 0, i32 0, !dbg !963
  %43 = load i8*, i8** %42, align 8, !dbg !963
  %44 = bitcast i8* %43 to %struct._SERVER_REC*, !dbg !962
  store %struct._SERVER_REC* %44, %struct._SERVER_REC** %13, align 8, !dbg !961
  %45 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !964
  %46 = getelementptr inbounds %struct._GSList, %struct._GSList* %45, i32 0, i32 1, !dbg !966
  %47 = load %struct._GSList*, %struct._GSList** %46, align 8, !dbg !966
  %48 = icmp eq %struct._GSList* %47, null, !dbg !967
  br i1 %48, label %49, label %56, !dbg !968

; <label>:49:                                     ; preds = %40
  %50 = load %struct._SERVER_REC*, %struct._SERVER_REC** %13, align 8, !dbg !969
  %51 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !971
  %52 = icmp eq %struct._SERVER_REC* %50, %51, !dbg !972
  br i1 %52, label %53, label %56, !dbg !973

; <label>:53:                                     ; preds = %49
  %54 = load i8*, i8** %9, align 8, !dbg !974
  %55 = call noalias i8* @g_strdup(i8* %54), !dbg !975
  store i8* %55, i8** %12, align 8, !dbg !976
  br label %72, !dbg !977

; <label>:56:                                     ; preds = %49, %40
  %57 = load i8*, i8** %9, align 8, !dbg !978
  %58 = icmp eq i8* %57, null, !dbg !980
  br i1 %58, label %59, label %64, !dbg !978

; <label>:59:                                     ; preds = %56
  %60 = load %struct._SERVER_REC*, %struct._SERVER_REC** %13, align 8, !dbg !981
  %61 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %60, i32 0, i32 6, !dbg !982
  %62 = load i8*, i8** %61, align 8, !dbg !982
  %63 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* %62), !dbg !983
  br label %70, !dbg !984

; <label>:64:                                     ; preds = %56
  %65 = load i8*, i8** %9, align 8, !dbg !986
  %66 = load %struct._SERVER_REC*, %struct._SERVER_REC** %13, align 8, !dbg !987
  %67 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %66, i32 0, i32 6, !dbg !988
  %68 = load i8*, i8** %67, align 8, !dbg !988
  %69 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* %65, i8* %68), !dbg !989
  br label %70, !dbg !990

; <label>:70:                                     ; preds = %64, %59
  %71 = phi i8* [ %63, %59 ], [ %69, %64 ], !dbg !992
  store i8* %71, i8** %12, align 8, !dbg !994
  br label %72

; <label>:72:                                     ; preds = %70, %53
  %73 = load %struct._SERVER_REC*, %struct._SERVER_REC** %13, align 8, !dbg !995
  %74 = load i8*, i8** %8, align 8, !dbg !996
  %75 = load i8*, i8** %12, align 8, !dbg !997
  call void @completion_msg_server(%struct._GSList** %11, %struct._SERVER_REC* %73, i8* %74, i8* %75), !dbg !998
  %76 = load i8*, i8** %12, align 8, !dbg !999
  call void @g_free(i8* %76), !dbg !1000
  br label %77, !dbg !1001

; <label>:77:                                     ; preds = %72
  %78 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !1002
  %79 = getelementptr inbounds %struct._GSList, %struct._GSList* %78, i32 0, i32 1, !dbg !1004
  %80 = load %struct._GSList*, %struct._GSList** %79, align 8, !dbg !1004
  store %struct._GSList* %80, %struct._GSList** %10, align 8, !dbg !1005
  br label %37, !dbg !1006, !llvm.loop !1007

; <label>:81:                                     ; preds = %37
  %82 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !1009
  %83 = call %struct._GList* @convert_msglist(%struct._GSList* %82), !dbg !1010
  store %struct._GList* %83, %struct._GList** %5, align 8, !dbg !1011
  br label %84, !dbg !1011

; <label>:84:                                     ; preds = %81, %27, %23, %18
  %85 = load %struct._GList*, %struct._GList** %5, align 8, !dbg !1012
  ret %struct._GList* %85, !dbg !1012
}

; Function Attrs: nounwind uwtable
define internal void @completion_msg_server(%struct._GSList**, %struct._SERVER_REC*, i8*, i8*) #0 !dbg !1013 {
  %5 = alloca %struct._GSList**, align 8
  %6 = alloca %struct._SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.LAST_MSG_REC*, align 8
  %10 = alloca %struct._GSList*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.LAST_MSG_REC*, align 8
  store %struct._GSList** %0, %struct._GSList*** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList*** %5, metadata !1016, metadata !614), !dbg !1017
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %6, metadata !1018, metadata !614), !dbg !1019
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1020, metadata !614), !dbg !1021
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1022, metadata !614), !dbg !1023
  call void @llvm.dbg.declare(metadata %struct.LAST_MSG_REC** %9, metadata !1024, metadata !614), !dbg !1025
  call void @llvm.dbg.declare(metadata %struct._GSList** %10, metadata !1026, metadata !614), !dbg !1027
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1028, metadata !614), !dbg !1029
  br label %13, !dbg !1030, !llvm.loop !1031

; <label>:13:                                     ; preds = %4
  %14 = load i8*, i8** %7, align 8, !dbg !1032
  %15 = icmp ne i8* %14, null, !dbg !1036
  br i1 %15, label %16, label %17, !dbg !1032

; <label>:16:                                     ; preds = %13
  br label %18, !dbg !1037

; <label>:17:                                     ; preds = %13
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.completion_msg_server, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !1040
  br label %97, !dbg !1043

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !1044

; <label>:19:                                     ; preds = %18
  %20 = load i8*, i8** %7, align 8, !dbg !1046
  %21 = call i64 @strlen(i8* %20) #7, !dbg !1047
  %22 = trunc i64 %21 to i32, !dbg !1047
  store i32 %22, i32* %11, align 4, !dbg !1048
  %23 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !1049
  %24 = icmp eq %struct._SERVER_REC* %23, null, !dbg !1050
  br i1 %24, label %25, label %27, !dbg !1049

; <label>:25:                                     ; preds = %19
  %26 = load %struct._GSList*, %struct._GSList** @global_lastmsgs, align 8, !dbg !1051
  br label %35, !dbg !1053

; <label>:27:                                     ; preds = %19
  %28 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !1054
  %29 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %28, i32 0, i32 15, !dbg !1055
  %30 = load %struct._GHashTable*, %struct._GHashTable** %29, align 8, !dbg !1055
  %31 = call i8* @g_hash_table_lookup(%struct._GHashTable* %30, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0)), !dbg !1056
  %32 = bitcast i8* %31 to %struct.MODULE_SERVER_REC*, !dbg !1057
  %33 = getelementptr inbounds %struct.MODULE_SERVER_REC, %struct.MODULE_SERVER_REC* %32, i32 0, i32 0, !dbg !1058
  %34 = load %struct._GSList*, %struct._GSList** %33, align 8, !dbg !1058
  br label %35, !dbg !1059

; <label>:35:                                     ; preds = %27, %25
  %36 = phi %struct._GSList* [ %26, %25 ], [ %34, %27 ], !dbg !1061
  store %struct._GSList* %36, %struct._GSList** %10, align 8, !dbg !1063
  br label %37, !dbg !1064

; <label>:37:                                     ; preds = %93, %35
  %38 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !1065
  %39 = icmp ne %struct._GSList* %38, null, !dbg !1069
  br i1 %39, label %40, label %97, !dbg !1070

; <label>:40:                                     ; preds = %37
  call void @llvm.dbg.declare(metadata %struct.LAST_MSG_REC** %12, metadata !1071, metadata !614), !dbg !1073
  %41 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !1074
  %42 = getelementptr inbounds %struct._GSList, %struct._GSList* %41, i32 0, i32 0, !dbg !1075
  %43 = load i8*, i8** %42, align 8, !dbg !1075
  %44 = bitcast i8* %43 to %struct.LAST_MSG_REC*, !dbg !1074
  store %struct.LAST_MSG_REC* %44, %struct.LAST_MSG_REC** %12, align 8, !dbg !1073
  %45 = load i32, i32* %11, align 4, !dbg !1076
  %46 = icmp ne i32 %45, 0, !dbg !1078
  br i1 %46, label %47, label %57, !dbg !1079

; <label>:47:                                     ; preds = %40
  %48 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %12, align 8, !dbg !1080
  %49 = getelementptr inbounds %struct.LAST_MSG_REC, %struct.LAST_MSG_REC* %48, i32 0, i32 1, !dbg !1082
  %50 = load i8*, i8** %49, align 8, !dbg !1082
  %51 = load i8*, i8** %7, align 8, !dbg !1083
  %52 = load i32, i32* %11, align 4, !dbg !1084
  %53 = sext i32 %52 to i64, !dbg !1084
  %54 = call i32 @g_ascii_strncasecmp(i8* %50, i8* %51, i64 %53), !dbg !1085
  %55 = icmp ne i32 %54, 0, !dbg !1086
  br i1 %55, label %56, label %57, !dbg !1087

; <label>:56:                                     ; preds = %47
  br label %93, !dbg !1088

; <label>:57:                                     ; preds = %47, %40
  %58 = call noalias i8* @g_malloc_n(i64 1, i64 24), !dbg !1089
  %59 = bitcast i8* %58 to %struct.LAST_MSG_REC*, !dbg !1090
  store %struct.LAST_MSG_REC* %59, %struct.LAST_MSG_REC** %9, align 8, !dbg !1091
  %60 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %12, align 8, !dbg !1092
  %61 = getelementptr inbounds %struct.LAST_MSG_REC, %struct.LAST_MSG_REC* %60, i32 0, i32 0, !dbg !1093
  %62 = load i64, i64* %61, align 8, !dbg !1093
  %63 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %9, align 8, !dbg !1094
  %64 = getelementptr inbounds %struct.LAST_MSG_REC, %struct.LAST_MSG_REC* %63, i32 0, i32 0, !dbg !1095
  store i64 %62, i64* %64, align 8, !dbg !1096
  %65 = load i8*, i8** %8, align 8, !dbg !1097
  %66 = icmp eq i8* %65, null, !dbg !1098
  br i1 %66, label %72, label %67, !dbg !1099

; <label>:67:                                     ; preds = %57
  %68 = load i8*, i8** %8, align 8, !dbg !1100
  %69 = load i8, i8* %68, align 1, !dbg !1102
  %70 = sext i8 %69 to i32, !dbg !1102
  %71 = icmp eq i32 %70, 0, !dbg !1103
  br i1 %71, label %72, label %77, !dbg !1104

; <label>:72:                                     ; preds = %67, %57
  %73 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %12, align 8, !dbg !1105
  %74 = getelementptr inbounds %struct.LAST_MSG_REC, %struct.LAST_MSG_REC* %73, i32 0, i32 1, !dbg !1106
  %75 = load i8*, i8** %74, align 8, !dbg !1106
  %76 = call noalias i8* @g_strdup(i8* %75), !dbg !1107
  br label %83, !dbg !1108

; <label>:77:                                     ; preds = %67
  %78 = load i8*, i8** %8, align 8, !dbg !1110
  %79 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %12, align 8, !dbg !1111
  %80 = getelementptr inbounds %struct.LAST_MSG_REC, %struct.LAST_MSG_REC* %79, i32 0, i32 1, !dbg !1112
  %81 = load i8*, i8** %80, align 8, !dbg !1112
  %82 = call noalias i8* (i8*, ...) @g_strconcat(i8* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.54, i32 0, i32 0), i8* %81, i8* null), !dbg !1113
  br label %83, !dbg !1114

; <label>:83:                                     ; preds = %77, %72
  %84 = phi i8* [ %76, %72 ], [ %82, %77 ], !dbg !1116
  %85 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %9, align 8, !dbg !1118
  %86 = getelementptr inbounds %struct.LAST_MSG_REC, %struct.LAST_MSG_REC* %85, i32 0, i32 1, !dbg !1119
  store i8* %84, i8** %86, align 8, !dbg !1120
  %87 = load %struct._GSList**, %struct._GSList*** %5, align 8, !dbg !1121
  %88 = load %struct._GSList*, %struct._GSList** %87, align 8, !dbg !1122
  %89 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %9, align 8, !dbg !1123
  %90 = bitcast %struct.LAST_MSG_REC* %89 to i8*, !dbg !1123
  %91 = call %struct._GSList* @g_slist_insert_sorted(%struct._GSList* %88, i8* %90, i32 (i8*, i8*)* bitcast (i32 (%struct.LAST_MSG_REC*, %struct.LAST_MSG_REC*)* @last_msg_cmp to i32 (i8*, i8*)*)), !dbg !1124
  %92 = load %struct._GSList**, %struct._GSList*** %5, align 8, !dbg !1125
  store %struct._GSList* %91, %struct._GSList** %92, align 8, !dbg !1126
  br label %93, !dbg !1127

; <label>:93:                                     ; preds = %83, %56
  %94 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !1128
  %95 = getelementptr inbounds %struct._GSList, %struct._GSList* %94, i32 0, i32 1, !dbg !1130
  %96 = load %struct._GSList*, %struct._GSList** %95, align 8, !dbg !1130
  store %struct._GSList* %96, %struct._GSList** %10, align 8, !dbg !1131
  br label %37, !dbg !1132, !llvm.loop !1133

; <label>:97:                                     ; preds = %17, %37
  ret void, !dbg !1134
}

; Function Attrs: nounwind uwtable
define internal %struct._GList* @convert_msglist(%struct._GSList*) #0 !dbg !1135 {
  %2 = alloca %struct._GSList*, align 8
  %3 = alloca %struct._GList*, align 8
  %4 = alloca %struct.LAST_MSG_REC*, align 8
  store %struct._GSList* %0, %struct._GSList** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %2, metadata !1138, metadata !614), !dbg !1139
  call void @llvm.dbg.declare(metadata %struct._GList** %3, metadata !1140, metadata !614), !dbg !1141
  store %struct._GList* null, %struct._GList** %3, align 8, !dbg !1142
  br label %5, !dbg !1143

; <label>:5:                                      ; preds = %8, %1
  %6 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1144
  %7 = icmp ne %struct._GSList* %6, null, !dbg !1146
  br i1 %7, label %8, label %24, !dbg !1147

; <label>:8:                                      ; preds = %5
  call void @llvm.dbg.declare(metadata %struct.LAST_MSG_REC** %4, metadata !1148, metadata !614), !dbg !1150
  %9 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1151
  %10 = getelementptr inbounds %struct._GSList, %struct._GSList* %9, i32 0, i32 0, !dbg !1152
  %11 = load i8*, i8** %10, align 8, !dbg !1152
  %12 = bitcast i8* %11 to %struct.LAST_MSG_REC*, !dbg !1151
  store %struct.LAST_MSG_REC* %12, %struct.LAST_MSG_REC** %4, align 8, !dbg !1150
  %13 = load %struct._GList*, %struct._GList** %3, align 8, !dbg !1153
  %14 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %4, align 8, !dbg !1154
  %15 = getelementptr inbounds %struct.LAST_MSG_REC, %struct.LAST_MSG_REC* %14, i32 0, i32 1, !dbg !1155
  %16 = load i8*, i8** %15, align 8, !dbg !1155
  %17 = call %struct._GList* @g_list_append(%struct._GList* %13, i8* %16), !dbg !1156
  store %struct._GList* %17, %struct._GList** %3, align 8, !dbg !1157
  %18 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1158
  %19 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %4, align 8, !dbg !1159
  %20 = bitcast %struct.LAST_MSG_REC* %19 to i8*, !dbg !1159
  %21 = call %struct._GSList* @g_slist_remove(%struct._GSList* %18, i8* %20), !dbg !1160
  store %struct._GSList* %21, %struct._GSList** %2, align 8, !dbg !1161
  %22 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %4, align 8, !dbg !1162
  %23 = bitcast %struct.LAST_MSG_REC* %22 to i8*, !dbg !1162
  call void @g_free(i8* %23), !dbg !1163
  br label %5, !dbg !1164, !llvm.loop !1166

; <label>:24:                                     ; preds = %5
  %25 = load %struct._GList*, %struct._GList** %3, align 8, !dbg !1167
  ret %struct._GList* %25, !dbg !1168
}

declare noalias i8* @g_strdup_printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define %struct._GList* @completion_get_servertags(i8*) #0 !dbg !1169 {
  %2 = alloca %struct._GList*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._GList*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._SERVER_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1172, metadata !614), !dbg !1173
  call void @llvm.dbg.declare(metadata %struct._GList** %4, metadata !1174, metadata !614), !dbg !1175
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !1176, metadata !614), !dbg !1177
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1178, metadata !614), !dbg !1179
  br label %8, !dbg !1180, !llvm.loop !1181

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %3, align 8, !dbg !1182
  %10 = icmp ne i8* %9, null, !dbg !1186
  br i1 %10, label %11, label %12, !dbg !1182

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !1187

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.completion_get_servertags, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)), !dbg !1190
  store %struct._GList* null, %struct._GList** %2, align 8, !dbg !1193
  br label %63, !dbg !1193

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !1194

; <label>:14:                                     ; preds = %13
  %15 = load i8*, i8** %3, align 8, !dbg !1196
  %16 = call i64 @strlen(i8* %15) #7, !dbg !1197
  %17 = trunc i64 %16 to i32, !dbg !1197
  store i32 %17, i32* %6, align 4, !dbg !1198
  store %struct._GList* null, %struct._GList** %4, align 8, !dbg !1199
  %18 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !1200
  store %struct._GSList* %18, %struct._GSList** %5, align 8, !dbg !1202
  br label %19, !dbg !1203

; <label>:19:                                     ; preds = %57, %14
  %20 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1204
  %21 = icmp ne %struct._GSList* %20, null, !dbg !1207
  br i1 %21, label %22, label %61, !dbg !1208

; <label>:22:                                     ; preds = %19
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %7, metadata !1209, metadata !614), !dbg !1211
  %23 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1212
  %24 = getelementptr inbounds %struct._GSList, %struct._GSList* %23, i32 0, i32 0, !dbg !1213
  %25 = load i8*, i8** %24, align 8, !dbg !1213
  %26 = bitcast i8* %25 to %struct._SERVER_REC*, !dbg !1212
  store %struct._SERVER_REC* %26, %struct._SERVER_REC** %7, align 8, !dbg !1211
  %27 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !1214
  %28 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %27, i32 0, i32 6, !dbg !1216
  %29 = load i8*, i8** %28, align 8, !dbg !1216
  %30 = load i8*, i8** %3, align 8, !dbg !1217
  %31 = load i32, i32* %6, align 4, !dbg !1218
  %32 = sext i32 %31 to i64, !dbg !1218
  %33 = call i32 @g_ascii_strncasecmp(i8* %29, i8* %30, i64 %32), !dbg !1219
  %34 = icmp eq i32 %33, 0, !dbg !1220
  br i1 %34, label %35, label %56, !dbg !1221

; <label>:35:                                     ; preds = %22
  %36 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !1222
  %37 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !1225
  %38 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %37, i32 0, i32 6, !dbg !1226
  %39 = load %struct._SERVER_REC*, %struct._SERVER_REC** %38, align 8, !dbg !1226
  %40 = icmp eq %struct._SERVER_REC* %36, %39, !dbg !1227
  br i1 %40, label %41, label %48, !dbg !1228

; <label>:41:                                     ; preds = %35
  %42 = load %struct._GList*, %struct._GList** %4, align 8, !dbg !1229
  %43 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !1230
  %44 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %43, i32 0, i32 6, !dbg !1231
  %45 = load i8*, i8** %44, align 8, !dbg !1231
  %46 = call noalias i8* @g_strdup(i8* %45), !dbg !1232
  %47 = call %struct._GList* @g_list_prepend(%struct._GList* %42, i8* %46), !dbg !1233
  store %struct._GList* %47, %struct._GList** %4, align 8, !dbg !1235
  br label %55, !dbg !1236

; <label>:48:                                     ; preds = %35
  %49 = load %struct._GList*, %struct._GList** %4, align 8, !dbg !1237
  %50 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !1238
  %51 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %50, i32 0, i32 6, !dbg !1239
  %52 = load i8*, i8** %51, align 8, !dbg !1239
  %53 = call noalias i8* @g_strdup(i8* %52), !dbg !1240
  %54 = call %struct._GList* @g_list_append(%struct._GList* %49, i8* %53), !dbg !1241
  store %struct._GList* %54, %struct._GList** %4, align 8, !dbg !1242
  br label %55

; <label>:55:                                     ; preds = %48, %41
  br label %56, !dbg !1243

; <label>:56:                                     ; preds = %55, %22
  br label %57, !dbg !1244

; <label>:57:                                     ; preds = %56
  %58 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1245
  %59 = getelementptr inbounds %struct._GSList, %struct._GSList* %58, i32 0, i32 1, !dbg !1247
  %60 = load %struct._GSList*, %struct._GSList** %59, align 8, !dbg !1247
  store %struct._GSList* %60, %struct._GSList** %5, align 8, !dbg !1248
  br label %19, !dbg !1249, !llvm.loop !1250

; <label>:61:                                     ; preds = %19
  %62 = load %struct._GList*, %struct._GList** %4, align 8, !dbg !1252
  store %struct._GList* %62, %struct._GList** %2, align 8, !dbg !1253
  br label %63, !dbg !1253

; <label>:63:                                     ; preds = %61, %12
  %64 = load %struct._GList*, %struct._GList** %2, align 8, !dbg !1254
  ret %struct._GList* %64, !dbg !1254
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @g_ascii_strncasecmp(i8*, i8*, i64) #2

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #2

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #2

; Function Attrs: nounwind uwtable
define %struct._GList* @completion_get_channels(%struct._SERVER_REC*, i8*) #0 !dbg !1255 {
  %3 = alloca %struct._GList*, align 8
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GList*, align 8
  %7 = alloca %struct._GSList*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct._CHANNEL_REC*, align 8
  %10 = alloca %struct._CHANNEL_SETUP_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1258, metadata !614), !dbg !1259
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1260, metadata !614), !dbg !1261
  call void @llvm.dbg.declare(metadata %struct._GList** %6, metadata !1262, metadata !614), !dbg !1263
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !1264, metadata !614), !dbg !1265
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1266, metadata !614), !dbg !1267
  br label %11, !dbg !1268, !llvm.loop !1269

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %5, align 8, !dbg !1270
  %13 = icmp ne i8* %12, null, !dbg !1274
  br i1 %13, label %14, label %15, !dbg !1270

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !1275

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.completion_get_channels, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)), !dbg !1278
  store %struct._GList* null, %struct._GList** %3, align 8, !dbg !1281
  br label %114, !dbg !1281

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !1282

; <label>:17:                                     ; preds = %16
  %18 = load i8*, i8** %5, align 8, !dbg !1284
  %19 = call i64 @strlen(i8* %18) #7, !dbg !1285
  %20 = trunc i64 %19 to i32, !dbg !1285
  store i32 %20, i32* %8, align 4, !dbg !1286
  store %struct._GList* null, %struct._GList** %6, align 8, !dbg !1287
  %21 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1288
  %22 = icmp eq %struct._SERVER_REC* %21, null, !dbg !1289
  br i1 %22, label %23, label %24, !dbg !1288

; <label>:23:                                     ; preds = %17
  br label %28, !dbg !1290

; <label>:24:                                     ; preds = %17
  %25 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1292
  %26 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %25, i32 0, i32 23, !dbg !1294
  %27 = load %struct._GSList*, %struct._GSList** %26, align 8, !dbg !1294
  br label %28, !dbg !1295

; <label>:28:                                     ; preds = %24, %23
  %29 = phi %struct._GSList* [ null, %23 ], [ %27, %24 ], !dbg !1296
  store %struct._GSList* %29, %struct._GSList** %7, align 8, !dbg !1298
  br label %30, !dbg !1299

; <label>:30:                                     ; preds = %71, %28
  %31 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1300
  %32 = icmp ne %struct._GSList* %31, null, !dbg !1304
  br i1 %32, label %33, label %75, !dbg !1305

; <label>:33:                                     ; preds = %30
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %9, metadata !1306, metadata !614), !dbg !1308
  %34 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1309
  %35 = getelementptr inbounds %struct._GSList, %struct._GSList* %34, i32 0, i32 0, !dbg !1310
  %36 = load i8*, i8** %35, align 8, !dbg !1310
  %37 = bitcast i8* %36 to %struct._CHANNEL_REC*, !dbg !1309
  store %struct._CHANNEL_REC* %37, %struct._CHANNEL_REC** %9, align 8, !dbg !1308
  %38 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %9, align 8, !dbg !1311
  %39 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %38, i32 0, i32 5, !dbg !1313
  %40 = load i8*, i8** %39, align 8, !dbg !1313
  %41 = load i8*, i8** %5, align 8, !dbg !1314
  %42 = load i32, i32* %8, align 4, !dbg !1315
  %43 = sext i32 %42 to i64, !dbg !1315
  %44 = call i32 @g_ascii_strncasecmp(i8* %40, i8* %41, i64 %43), !dbg !1316
  %45 = icmp eq i32 %44, 0, !dbg !1317
  br i1 %45, label %46, label %53, !dbg !1318

; <label>:46:                                     ; preds = %33
  %47 = load %struct._GList*, %struct._GList** %6, align 8, !dbg !1319
  %48 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %9, align 8, !dbg !1320
  %49 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %48, i32 0, i32 5, !dbg !1321
  %50 = load i8*, i8** %49, align 8, !dbg !1321
  %51 = call noalias i8* @g_strdup(i8* %50), !dbg !1322
  %52 = call %struct._GList* @g_list_append(%struct._GList* %47, i8* %51), !dbg !1323
  store %struct._GList* %52, %struct._GList** %6, align 8, !dbg !1325
  br label %70, !dbg !1326

; <label>:53:                                     ; preds = %33
  %54 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %9, align 8, !dbg !1327
  %55 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %54, i32 0, i32 6, !dbg !1329
  %56 = load i8*, i8** %55, align 8, !dbg !1329
  %57 = load i8*, i8** %5, align 8, !dbg !1330
  %58 = load i32, i32* %8, align 4, !dbg !1331
  %59 = sext i32 %58 to i64, !dbg !1331
  %60 = call i32 @g_ascii_strncasecmp(i8* %56, i8* %57, i64 %59), !dbg !1332
  %61 = icmp eq i32 %60, 0, !dbg !1333
  br i1 %61, label %62, label %69, !dbg !1334

; <label>:62:                                     ; preds = %53
  %63 = load %struct._GList*, %struct._GList** %6, align 8, !dbg !1335
  %64 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %9, align 8, !dbg !1336
  %65 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %64, i32 0, i32 6, !dbg !1337
  %66 = load i8*, i8** %65, align 8, !dbg !1337
  %67 = call noalias i8* @g_strdup(i8* %66), !dbg !1338
  %68 = call %struct._GList* @g_list_append(%struct._GList* %63, i8* %67), !dbg !1339
  store %struct._GList* %68, %struct._GList** %6, align 8, !dbg !1341
  br label %69, !dbg !1342

; <label>:69:                                     ; preds = %62, %53
  br label %70

; <label>:70:                                     ; preds = %69, %46
  br label %71, !dbg !1343

; <label>:71:                                     ; preds = %70
  %72 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1344
  %73 = getelementptr inbounds %struct._GSList, %struct._GSList* %72, i32 0, i32 1, !dbg !1346
  %74 = load %struct._GSList*, %struct._GSList** %73, align 8, !dbg !1346
  store %struct._GSList* %74, %struct._GSList** %7, align 8, !dbg !1347
  br label %30, !dbg !1348, !llvm.loop !1349

; <label>:75:                                     ; preds = %30
  %76 = load %struct._GSList*, %struct._GSList** @setupchannels, align 8, !dbg !1350
  store %struct._GSList* %76, %struct._GSList** %7, align 8, !dbg !1352
  br label %77, !dbg !1353

; <label>:77:                                     ; preds = %108, %75
  %78 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1354
  %79 = icmp ne %struct._GSList* %78, null, !dbg !1357
  br i1 %79, label %80, label %112, !dbg !1358

; <label>:80:                                     ; preds = %77
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_SETUP_REC** %10, metadata !1359, metadata !614), !dbg !1376
  %81 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1377
  %82 = getelementptr inbounds %struct._GSList, %struct._GSList* %81, i32 0, i32 0, !dbg !1378
  %83 = load i8*, i8** %82, align 8, !dbg !1378
  %84 = bitcast i8* %83 to %struct._CHANNEL_SETUP_REC*, !dbg !1377
  store %struct._CHANNEL_SETUP_REC* %84, %struct._CHANNEL_SETUP_REC** %10, align 8, !dbg !1376
  %85 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %10, align 8, !dbg !1379
  %86 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %85, i32 0, i32 2, !dbg !1381
  %87 = load i8*, i8** %86, align 8, !dbg !1381
  %88 = load i8*, i8** %5, align 8, !dbg !1382
  %89 = load i32, i32* %8, align 4, !dbg !1383
  %90 = sext i32 %89 to i64, !dbg !1383
  %91 = call i32 @g_ascii_strncasecmp(i8* %87, i8* %88, i64 %90), !dbg !1384
  %92 = icmp eq i32 %91, 0, !dbg !1385
  br i1 %92, label %93, label %107, !dbg !1386

; <label>:93:                                     ; preds = %80
  %94 = load %struct._GList*, %struct._GList** %6, align 8, !dbg !1387
  %95 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %10, align 8, !dbg !1388
  %96 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %95, i32 0, i32 2, !dbg !1389
  %97 = load i8*, i8** %96, align 8, !dbg !1389
  %98 = call %struct._GList* @glist_find_icase_string(%struct._GList* %94, i8* %97), !dbg !1390
  %99 = icmp eq %struct._GList* %98, null, !dbg !1391
  br i1 %99, label %100, label %107, !dbg !1392

; <label>:100:                                    ; preds = %93
  %101 = load %struct._GList*, %struct._GList** %6, align 8, !dbg !1394
  %102 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %10, align 8, !dbg !1395
  %103 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %102, i32 0, i32 2, !dbg !1396
  %104 = load i8*, i8** %103, align 8, !dbg !1396
  %105 = call noalias i8* @g_strdup(i8* %104), !dbg !1397
  %106 = call %struct._GList* @g_list_append(%struct._GList* %101, i8* %105), !dbg !1398
  store %struct._GList* %106, %struct._GList** %6, align 8, !dbg !1400
  br label %107, !dbg !1401

; <label>:107:                                    ; preds = %100, %93, %80
  br label %108, !dbg !1402

; <label>:108:                                    ; preds = %107
  %109 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1403
  %110 = getelementptr inbounds %struct._GSList, %struct._GSList* %109, i32 0, i32 1, !dbg !1405
  %111 = load %struct._GSList*, %struct._GSList** %110, align 8, !dbg !1405
  store %struct._GSList* %111, %struct._GSList** %7, align 8, !dbg !1406
  br label %77, !dbg !1407, !llvm.loop !1408

; <label>:112:                                    ; preds = %77
  %113 = load %struct._GList*, %struct._GList** %6, align 8, !dbg !1410
  store %struct._GList* %113, %struct._GList** %3, align 8, !dbg !1411
  br label %114, !dbg !1411

; <label>:114:                                    ; preds = %112, %15
  %115 = load %struct._GList*, %struct._GList** %3, align 8, !dbg !1412
  ret %struct._GList* %115, !dbg !1412
}

declare %struct._GList* @glist_find_icase_string(%struct._GList*, i8*) #2

; Function Attrs: nounwind uwtable
define %struct._GList* @completion_get_aliases(i8*) #0 !dbg !1413 {
  %2 = alloca %struct._GList*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._CONFIG_NODE*, align 8
  %5 = alloca %struct._GList*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1414, metadata !614), !dbg !1415
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !1416, metadata !614), !dbg !1424
  call void @llvm.dbg.declare(metadata %struct._GList** %5, metadata !1425, metadata !614), !dbg !1426
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !1427, metadata !614), !dbg !1428
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1429, metadata !614), !dbg !1430
  br label %8, !dbg !1431, !llvm.loop !1432

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %3, align 8, !dbg !1433
  %10 = icmp ne i8* %9, null, !dbg !1437
  br i1 %10, label %11, label %12, !dbg !1433

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !1438

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.completion_get_aliases, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)), !dbg !1441
  store %struct._GList* null, %struct._GList** %2, align 8, !dbg !1444
  br label %69, !dbg !1444

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !1445

; <label>:14:                                     ; preds = %13
  %15 = load i8*, i8** %3, align 8, !dbg !1447
  %16 = call i64 @strlen(i8* %15) #7, !dbg !1448
  %17 = trunc i64 %16 to i32, !dbg !1448
  store i32 %17, i32* %7, align 4, !dbg !1449
  store %struct._GList* null, %struct._GList** %5, align 8, !dbg !1450
  %18 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1451
  %19 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 0), !dbg !1452
  store %struct._CONFIG_NODE* %19, %struct._CONFIG_NODE** %4, align 8, !dbg !1453
  %20 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1454
  %21 = icmp eq %struct._CONFIG_NODE* %20, null, !dbg !1455
  br i1 %21, label %22, label %23, !dbg !1454

; <label>:22:                                     ; preds = %14
  br label %29, !dbg !1456

; <label>:23:                                     ; preds = %14
  %24 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1458
  %25 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %24, i32 0, i32 2, !dbg !1460
  %26 = load i8*, i8** %25, align 8, !dbg !1460
  %27 = bitcast i8* %26 to %struct._GSList*, !dbg !1458
  %28 = call %struct._GSList* @config_node_first(%struct._GSList* %27), !dbg !1461
  br label %29, !dbg !1462

; <label>:29:                                     ; preds = %23, %22
  %30 = phi %struct._GSList* [ null, %22 ], [ %28, %23 ], !dbg !1463
  store %struct._GSList* %30, %struct._GSList** %6, align 8, !dbg !1465
  br label %31, !dbg !1466

; <label>:31:                                     ; preds = %64, %29
  %32 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1467
  %33 = icmp ne %struct._GSList* %32, null, !dbg !1471
  br i1 %33, label %34, label %67, !dbg !1472

; <label>:34:                                     ; preds = %31
  %35 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1473
  %36 = getelementptr inbounds %struct._GSList, %struct._GSList* %35, i32 0, i32 0, !dbg !1475
  %37 = load i8*, i8** %36, align 8, !dbg !1475
  %38 = bitcast i8* %37 to %struct._CONFIG_NODE*, !dbg !1473
  store %struct._CONFIG_NODE* %38, %struct._CONFIG_NODE** %4, align 8, !dbg !1476
  %39 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1477
  %40 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %39, i32 0, i32 0, !dbg !1479
  %41 = load i32, i32* %40, align 8, !dbg !1479
  %42 = icmp ne i32 %41, 0, !dbg !1480
  br i1 %42, label %43, label %44, !dbg !1481

; <label>:43:                                     ; preds = %34
  br label %64, !dbg !1482

; <label>:44:                                     ; preds = %34
  %45 = load i32, i32* %7, align 4, !dbg !1483
  %46 = icmp ne i32 %45, 0, !dbg !1485
  br i1 %46, label %47, label %57, !dbg !1486

; <label>:47:                                     ; preds = %44
  %48 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1487
  %49 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %48, i32 0, i32 1, !dbg !1489
  %50 = load i8*, i8** %49, align 8, !dbg !1489
  %51 = load i8*, i8** %3, align 8, !dbg !1490
  %52 = load i32, i32* %7, align 4, !dbg !1491
  %53 = sext i32 %52 to i64, !dbg !1491
  %54 = call i32 @g_ascii_strncasecmp(i8* %50, i8* %51, i64 %53), !dbg !1492
  %55 = icmp ne i32 %54, 0, !dbg !1493
  br i1 %55, label %56, label %57, !dbg !1494

; <label>:56:                                     ; preds = %47
  br label %64, !dbg !1495

; <label>:57:                                     ; preds = %47, %44
  %58 = load %struct._GList*, %struct._GList** %5, align 8, !dbg !1496
  %59 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1497
  %60 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %59, i32 0, i32 1, !dbg !1498
  %61 = load i8*, i8** %60, align 8, !dbg !1498
  %62 = call noalias i8* @g_strdup(i8* %61), !dbg !1499
  %63 = call %struct._GList* @g_list_append(%struct._GList* %58, i8* %62), !dbg !1500
  store %struct._GList* %63, %struct._GList** %5, align 8, !dbg !1502
  br label %64, !dbg !1503

; <label>:64:                                     ; preds = %57, %56, %43
  %65 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1504
  %66 = call %struct._GSList* @config_node_next(%struct._GSList* %65), !dbg !1506
  store %struct._GSList* %66, %struct._GSList** %6, align 8, !dbg !1507
  br label %31, !dbg !1508, !llvm.loop !1509

; <label>:67:                                     ; preds = %31
  %68 = load %struct._GList*, %struct._GList** %5, align 8, !dbg !1510
  store %struct._GList* %68, %struct._GList** %2, align 8, !dbg !1511
  br label %69, !dbg !1511

; <label>:69:                                     ; preds = %67, %12
  %70 = load %struct._GList*, %struct._GList** %2, align 8, !dbg !1512
  ret %struct._GList* %70, !dbg !1512
}

declare %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC*, i8*, i32) #2

declare %struct._GSList* @config_node_first(%struct._GSList*) #2

declare %struct._GSList* @config_node_next(%struct._GSList*) #2

; Function Attrs: nounwind uwtable
define %struct._GList* @completion_get_chatnets(i8*) #0 !dbg !1513 {
  %2 = alloca %struct._GList*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._GList*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._CHATNET_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1514, metadata !614), !dbg !1515
  call void @llvm.dbg.declare(metadata %struct._GList** %4, metadata !1516, metadata !614), !dbg !1517
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !1518, metadata !614), !dbg !1519
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1520, metadata !614), !dbg !1521
  br label %8, !dbg !1522, !llvm.loop !1523

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %3, align 8, !dbg !1524
  %10 = icmp ne i8* %9, null, !dbg !1528
  br i1 %10, label %11, label %12, !dbg !1524

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !1529

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.completion_get_chatnets, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)), !dbg !1532
  store %struct._GList* null, %struct._GList** %2, align 8, !dbg !1535
  br label %49, !dbg !1535

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !1536

; <label>:14:                                     ; preds = %13
  %15 = load i8*, i8** %3, align 8, !dbg !1538
  %16 = call i64 @strlen(i8* %15) #7, !dbg !1539
  %17 = trunc i64 %16 to i32, !dbg !1539
  store i32 %17, i32* %6, align 4, !dbg !1540
  store %struct._GList* null, %struct._GList** %4, align 8, !dbg !1541
  %18 = load %struct._GSList*, %struct._GSList** @chatnets, align 8, !dbg !1542
  store %struct._GSList* %18, %struct._GSList** %5, align 8, !dbg !1544
  br label %19, !dbg !1545

; <label>:19:                                     ; preds = %43, %14
  %20 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1546
  %21 = icmp ne %struct._GSList* %20, null, !dbg !1549
  br i1 %21, label %22, label %47, !dbg !1550

; <label>:22:                                     ; preds = %19
  call void @llvm.dbg.declare(metadata %struct._CHATNET_REC** %7, metadata !1551, metadata !614), !dbg !1569
  %23 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1570
  %24 = getelementptr inbounds %struct._GSList, %struct._GSList* %23, i32 0, i32 0, !dbg !1571
  %25 = load i8*, i8** %24, align 8, !dbg !1571
  %26 = bitcast i8* %25 to %struct._CHATNET_REC*, !dbg !1570
  store %struct._CHATNET_REC* %26, %struct._CHATNET_REC** %7, align 8, !dbg !1569
  %27 = load %struct._CHATNET_REC*, %struct._CHATNET_REC** %7, align 8, !dbg !1572
  %28 = getelementptr inbounds %struct._CHATNET_REC, %struct._CHATNET_REC* %27, i32 0, i32 2, !dbg !1574
  %29 = load i8*, i8** %28, align 8, !dbg !1574
  %30 = load i8*, i8** %3, align 8, !dbg !1575
  %31 = load i32, i32* %6, align 4, !dbg !1576
  %32 = sext i32 %31 to i64, !dbg !1576
  %33 = call i32 @g_ascii_strncasecmp(i8* %29, i8* %30, i64 %32), !dbg !1577
  %34 = icmp eq i32 %33, 0, !dbg !1578
  br i1 %34, label %35, label %42, !dbg !1579

; <label>:35:                                     ; preds = %22
  %36 = load %struct._GList*, %struct._GList** %4, align 8, !dbg !1580
  %37 = load %struct._CHATNET_REC*, %struct._CHATNET_REC** %7, align 8, !dbg !1581
  %38 = getelementptr inbounds %struct._CHATNET_REC, %struct._CHATNET_REC* %37, i32 0, i32 2, !dbg !1582
  %39 = load i8*, i8** %38, align 8, !dbg !1582
  %40 = call noalias i8* @g_strdup(i8* %39), !dbg !1583
  %41 = call %struct._GList* @g_list_append(%struct._GList* %36, i8* %40), !dbg !1584
  store %struct._GList* %41, %struct._GList** %4, align 8, !dbg !1586
  br label %42, !dbg !1587

; <label>:42:                                     ; preds = %35, %22
  br label %43, !dbg !1588

; <label>:43:                                     ; preds = %42
  %44 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1589
  %45 = getelementptr inbounds %struct._GSList, %struct._GSList* %44, i32 0, i32 1, !dbg !1591
  %46 = load %struct._GSList*, %struct._GSList** %45, align 8, !dbg !1591
  store %struct._GSList* %46, %struct._GSList** %5, align 8, !dbg !1592
  br label %19, !dbg !1593, !llvm.loop !1594

; <label>:47:                                     ; preds = %19
  %48 = load %struct._GList*, %struct._GList** %4, align 8, !dbg !1596
  store %struct._GList* %48, %struct._GList** %2, align 8, !dbg !1597
  br label %49, !dbg !1597

; <label>:49:                                     ; preds = %47, %12
  %50 = load %struct._GList*, %struct._GList** %2, align 8, !dbg !1598
  ret %struct._GList* %50, !dbg !1598
}

; Function Attrs: nounwind uwtable
define %struct._GList* @completion_get_servers(i8*) #0 !dbg !1599 {
  %2 = alloca %struct._GList*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._GList*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._SERVER_SETUP_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1600, metadata !614), !dbg !1601
  call void @llvm.dbg.declare(metadata %struct._GList** %4, metadata !1602, metadata !614), !dbg !1603
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !1604, metadata !614), !dbg !1605
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1606, metadata !614), !dbg !1607
  br label %8, !dbg !1608, !llvm.loop !1609

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %3, align 8, !dbg !1610
  %10 = icmp ne i8* %9, null, !dbg !1614
  br i1 %10, label %11, label %12, !dbg !1610

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !1615

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.completion_get_servers, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)), !dbg !1618
  store %struct._GList* null, %struct._GList** %2, align 8, !dbg !1621
  br label %49, !dbg !1621

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !1622

; <label>:14:                                     ; preds = %13
  %15 = load i8*, i8** %3, align 8, !dbg !1624
  %16 = call i64 @strlen(i8* %15) #7, !dbg !1625
  %17 = trunc i64 %16 to i32, !dbg !1625
  store i32 %17, i32* %6, align 4, !dbg !1626
  store %struct._GList* null, %struct._GList** %4, align 8, !dbg !1627
  %18 = load %struct._GSList*, %struct._GSList** @setupservers, align 8, !dbg !1628
  store %struct._GSList* %18, %struct._GSList** %5, align 8, !dbg !1630
  br label %19, !dbg !1631

; <label>:19:                                     ; preds = %43, %14
  %20 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1632
  %21 = icmp ne %struct._GSList* %20, null, !dbg !1635
  br i1 %21, label %22, label %47, !dbg !1636

; <label>:22:                                     ; preds = %19
  call void @llvm.dbg.declare(metadata %struct._SERVER_SETUP_REC** %7, metadata !1637, metadata !614), !dbg !1674
  %23 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1675
  %24 = getelementptr inbounds %struct._GSList, %struct._GSList* %23, i32 0, i32 0, !dbg !1676
  %25 = load i8*, i8** %24, align 8, !dbg !1676
  %26 = bitcast i8* %25 to %struct._SERVER_SETUP_REC*, !dbg !1675
  store %struct._SERVER_SETUP_REC* %26, %struct._SERVER_SETUP_REC** %7, align 8, !dbg !1674
  %27 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %7, align 8, !dbg !1677
  %28 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %27, i32 0, i32 4, !dbg !1679
  %29 = load i8*, i8** %28, align 8, !dbg !1679
  %30 = load i8*, i8** %3, align 8, !dbg !1680
  %31 = load i32, i32* %6, align 4, !dbg !1681
  %32 = sext i32 %31 to i64, !dbg !1681
  %33 = call i32 @g_ascii_strncasecmp(i8* %29, i8* %30, i64 %32), !dbg !1682
  %34 = icmp eq i32 %33, 0, !dbg !1683
  br i1 %34, label %35, label %42, !dbg !1684

; <label>:35:                                     ; preds = %22
  %36 = load %struct._GList*, %struct._GList** %4, align 8, !dbg !1685
  %37 = load %struct._SERVER_SETUP_REC*, %struct._SERVER_SETUP_REC** %7, align 8, !dbg !1686
  %38 = getelementptr inbounds %struct._SERVER_SETUP_REC, %struct._SERVER_SETUP_REC* %37, i32 0, i32 4, !dbg !1687
  %39 = load i8*, i8** %38, align 8, !dbg !1687
  %40 = call noalias i8* @g_strdup(i8* %39), !dbg !1688
  %41 = call %struct._GList* @g_list_append(%struct._GList* %36, i8* %40), !dbg !1689
  store %struct._GList* %41, %struct._GList** %4, align 8, !dbg !1691
  br label %42, !dbg !1692

; <label>:42:                                     ; preds = %35, %22
  br label %43, !dbg !1693

; <label>:43:                                     ; preds = %42
  %44 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1694
  %45 = getelementptr inbounds %struct._GSList, %struct._GSList* %44, i32 0, i32 1, !dbg !1696
  %46 = load %struct._GSList*, %struct._GSList** %45, align 8, !dbg !1696
  store %struct._GSList* %46, %struct._GSList** %5, align 8, !dbg !1697
  br label %19, !dbg !1698, !llvm.loop !1699

; <label>:47:                                     ; preds = %19
  %48 = load %struct._GList*, %struct._GList** %4, align 8, !dbg !1701
  store %struct._GList* %48, %struct._GList** %2, align 8, !dbg !1702
  br label %49, !dbg !1702

; <label>:49:                                     ; preds = %47, %12
  %50 = load %struct._GList*, %struct._GList** %2, align 8, !dbg !1703
  ret %struct._GList* %50, !dbg !1703
}

; Function Attrs: nounwind uwtable
define %struct._GList* @completion_get_targets(i8*) #0 !dbg !1704 {
  %2 = alloca %struct._GList*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._CONFIG_NODE*, align 8
  %5 = alloca %struct._GList*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1705, metadata !614), !dbg !1706
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !1707, metadata !614), !dbg !1708
  call void @llvm.dbg.declare(metadata %struct._GList** %5, metadata !1709, metadata !614), !dbg !1710
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !1711, metadata !614), !dbg !1712
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1713, metadata !614), !dbg !1714
  br label %8, !dbg !1715, !llvm.loop !1716

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %3, align 8, !dbg !1717
  %10 = icmp ne i8* %9, null, !dbg !1721
  br i1 %10, label %11, label %12, !dbg !1717

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !1722

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.completion_get_targets, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)), !dbg !1725
  store %struct._GList* null, %struct._GList** %2, align 8, !dbg !1728
  br label %69, !dbg !1728

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !1729

; <label>:14:                                     ; preds = %13
  %15 = load i8*, i8** %3, align 8, !dbg !1731
  %16 = call i64 @strlen(i8* %15) #7, !dbg !1732
  %17 = trunc i64 %16 to i32, !dbg !1732
  store i32 %17, i32* %7, align 4, !dbg !1733
  store %struct._GList* null, %struct._GList** %5, align 8, !dbg !1734
  %18 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1735
  %19 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i32 0), !dbg !1736
  store %struct._CONFIG_NODE* %19, %struct._CONFIG_NODE** %4, align 8, !dbg !1737
  %20 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1738
  %21 = icmp eq %struct._CONFIG_NODE* %20, null, !dbg !1739
  br i1 %21, label %22, label %23, !dbg !1738

; <label>:22:                                     ; preds = %14
  br label %29, !dbg !1740

; <label>:23:                                     ; preds = %14
  %24 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1742
  %25 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %24, i32 0, i32 2, !dbg !1744
  %26 = load i8*, i8** %25, align 8, !dbg !1744
  %27 = bitcast i8* %26 to %struct._GSList*, !dbg !1742
  %28 = call %struct._GSList* @config_node_first(%struct._GSList* %27), !dbg !1745
  br label %29, !dbg !1746

; <label>:29:                                     ; preds = %23, %22
  %30 = phi %struct._GSList* [ null, %22 ], [ %28, %23 ], !dbg !1747
  store %struct._GSList* %30, %struct._GSList** %6, align 8, !dbg !1749
  br label %31, !dbg !1750

; <label>:31:                                     ; preds = %64, %29
  %32 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1751
  %33 = icmp ne %struct._GSList* %32, null, !dbg !1755
  br i1 %33, label %34, label %67, !dbg !1756

; <label>:34:                                     ; preds = %31
  %35 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1757
  %36 = getelementptr inbounds %struct._GSList, %struct._GSList* %35, i32 0, i32 0, !dbg !1759
  %37 = load i8*, i8** %36, align 8, !dbg !1759
  %38 = bitcast i8* %37 to %struct._CONFIG_NODE*, !dbg !1757
  store %struct._CONFIG_NODE* %38, %struct._CONFIG_NODE** %4, align 8, !dbg !1760
  %39 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1761
  %40 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %39, i32 0, i32 0, !dbg !1763
  %41 = load i32, i32* %40, align 8, !dbg !1763
  %42 = icmp ne i32 %41, 0, !dbg !1764
  br i1 %42, label %43, label %44, !dbg !1765

; <label>:43:                                     ; preds = %34
  br label %64, !dbg !1766

; <label>:44:                                     ; preds = %34
  %45 = load i32, i32* %7, align 4, !dbg !1767
  %46 = icmp ne i32 %45, 0, !dbg !1769
  br i1 %46, label %47, label %57, !dbg !1770

; <label>:47:                                     ; preds = %44
  %48 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1771
  %49 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %48, i32 0, i32 1, !dbg !1773
  %50 = load i8*, i8** %49, align 8, !dbg !1773
  %51 = load i8*, i8** %3, align 8, !dbg !1774
  %52 = load i32, i32* %7, align 4, !dbg !1775
  %53 = sext i32 %52 to i64, !dbg !1775
  %54 = call i32 @g_ascii_strncasecmp(i8* %50, i8* %51, i64 %53), !dbg !1776
  %55 = icmp ne i32 %54, 0, !dbg !1777
  br i1 %55, label %56, label %57, !dbg !1778

; <label>:56:                                     ; preds = %47
  br label %64, !dbg !1779

; <label>:57:                                     ; preds = %47, %44
  %58 = load %struct._GList*, %struct._GList** %5, align 8, !dbg !1780
  %59 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1781
  %60 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %59, i32 0, i32 1, !dbg !1782
  %61 = load i8*, i8** %60, align 8, !dbg !1782
  %62 = call noalias i8* @g_strdup(i8* %61), !dbg !1783
  %63 = call %struct._GList* @g_list_append(%struct._GList* %58, i8* %62), !dbg !1784
  store %struct._GList* %63, %struct._GList** %5, align 8, !dbg !1786
  br label %64, !dbg !1787

; <label>:64:                                     ; preds = %57, %56, %43
  %65 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1788
  %66 = call %struct._GSList* @config_node_next(%struct._GSList* %65), !dbg !1790
  store %struct._GSList* %66, %struct._GSList** %6, align 8, !dbg !1791
  br label %31, !dbg !1792, !llvm.loop !1793

; <label>:67:                                     ; preds = %31
  %68 = load %struct._GList*, %struct._GList** %5, align 8, !dbg !1794
  store %struct._GList* %68, %struct._GList** %2, align 8, !dbg !1795
  br label %69, !dbg !1795

; <label>:69:                                     ; preds = %67, %12
  %70 = load %struct._GList*, %struct._GList** %2, align 8, !dbg !1796
  ret %struct._GList* %70, !dbg !1796
}

; Function Attrs: nounwind uwtable
define void @chat_completion_init() #0 !dbg !1797 {
  call void @settings_add_str_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0)), !dbg !1798
  call void @settings_add_bool_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i32 0), !dbg !1799
  call void @settings_add_int_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0), i32 50), !dbg !1800
  call void @settings_add_int_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i32 0, i32 0), i32 10), !dbg !1801
  call void @settings_add_bool_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i32 0, i32 0), i32 0), !dbg !1802
  call void @settings_add_bool_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0), i32 0), !dbg !1803
  call void @settings_add_bool_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0), i32 1), !dbg !1804
  call void @settings_add_choice_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i32 0, i32 0)), !dbg !1805
  call void @settings_add_bool_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), i32 0), !dbg !1806
  call void @read_settings(), !dbg !1807
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_word to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1808
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_msg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1809
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_msg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1810
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_msg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1811
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*, i8*, i8*)* @sig_erase_complete_msg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1812
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*, i8*, i8*)* @sig_erase_complete_msg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1813
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*, i8*, i8*)* @sig_erase_complete_msg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1814
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_connect to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1815
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_connect to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1816
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_tag to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1817
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_tag to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1818
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_tag to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1819
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_topic to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1820
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_away to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1821
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.36, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_unalias to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1822
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_alias to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1823
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.38, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_window to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1824
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.39, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_channel to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1825
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.40, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_server to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1826
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.41, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_server to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1827
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.42, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_target to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1828
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*, i8*)* @sig_message_public to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1829
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*)* @sig_message_join to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1830
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*)* @sig_message_private to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1831
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.46, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*)* @sig_message_own_public to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1832
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*)* @sig_message_own_private to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1833
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*, %struct._NICK_REC*)* @sig_nick_removed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1834
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*, %struct._NICK_REC*, i8*)* @sig_nick_changed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1835
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @event_text to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1836
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.51, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_server_disconnected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1837
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.52, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*)* @sig_channel_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1838
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1839
  ret void, !dbg !1840
}

declare void @settings_add_str_module(i8*, i8*, i8*, i8*) #2

declare void @settings_add_bool_module(i8*, i8*, i8*, i32) #2

declare void @settings_add_int_module(i8*, i8*, i8*, i32) #2

declare void @settings_add_choice_module(i8*, i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @read_settings() #0 !dbg !1841 {
  %1 = call i32 @settings_get_int(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i32 0, i32 0)), !dbg !1842
  store i32 %1, i32* @keep_privates_count, align 4, !dbg !1843
  %2 = call i32 @settings_get_int(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0)), !dbg !1844
  store i32 %2, i32* @keep_publics_count, align 4, !dbg !1845
  %3 = call i32 @settings_get_bool(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i32 0, i32 0)), !dbg !1846
  store i32 %3, i32* @completion_lowercase, align 4, !dbg !1847
  %4 = call i32 @settings_get_bool(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0)), !dbg !1848
  store i32 %4, i32* @completion_auto, align 4, !dbg !1849
  %5 = call i32 @settings_get_bool(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i32 0, i32 0)), !dbg !1850
  store i32 %5, i32* @completion_strict, align 4, !dbg !1851
  %6 = call i32 @settings_get_bool(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0)), !dbg !1852
  store i32 %6, i32* @completion_empty_line, align 4, !dbg !1853
  %7 = call i32 @settings_get_choice(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i32 0, i32 0)), !dbg !1854
  store i32 %7, i32* @completion_match_case, align 4, !dbg !1855
  %8 = load i8*, i8** @completion_char, align 8, !dbg !1856
  call void @g_free(i8* %8), !dbg !1857
  %9 = call i8* @settings_get_str(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0)), !dbg !1858
  %10 = call noalias i8* @g_strdup(i8* %9), !dbg !1859
  store i8* %10, i8** @completion_char, align 8, !dbg !1861
  %11 = load i8*, i8** @cmdchars, align 8, !dbg !1862
  call void @g_free(i8* %11), !dbg !1863
  %12 = call i8* @settings_get_str(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0)), !dbg !1864
  %13 = call noalias i8* @g_strdup(i8* %12), !dbg !1865
  store i8* %13, i8** @cmdchars, align 8, !dbg !1866
  %14 = load i8*, i8** @completion_char, align 8, !dbg !1867
  %15 = load i8, i8* %14, align 1, !dbg !1869
  %16 = sext i8 %15 to i32, !dbg !1869
  %17 = icmp eq i32 %16, 0, !dbg !1870
  br i1 %17, label %18, label %19, !dbg !1871

; <label>:18:                                     ; preds = %0
  store i32 0, i32* @completion_auto, align 4, !dbg !1872
  br label %19, !dbg !1874

; <label>:19:                                     ; preds = %18, %0
  ret void, !dbg !1875
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_complete_word(%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*) #0 !dbg !1876 {
  %6 = alloca %struct._GList**, align 8
  %7 = alloca %struct._WINDOW_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct._SERVER_REC*, align 8
  %12 = alloca %struct._CHANNEL_REC*, align 8
  %13 = alloca %struct._QUERY_REC*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct._GList** %0, %struct._GList*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GList*** %6, metadata !1919, metadata !614), !dbg !1920
  store %struct._WINDOW_REC* %1, %struct._WINDOW_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %7, metadata !1921, metadata !614), !dbg !1922
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1923, metadata !614), !dbg !1924
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1925, metadata !614), !dbg !1926
  store i32* %4, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !1927, metadata !614), !dbg !1928
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %11, metadata !1929, metadata !614), !dbg !1930
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %12, metadata !1931, metadata !614), !dbg !1932
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %13, metadata !1933, metadata !614), !dbg !1934
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1935, metadata !614), !dbg !1936
  br label %16, !dbg !1937, !llvm.loop !1938

; <label>:16:                                     ; preds = %5
  %17 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !1939
  %18 = icmp ne %struct._GList** %17, null, !dbg !1943
  br i1 %18, label %19, label %20, !dbg !1939

; <label>:19:                                     ; preds = %16
  br label %21, !dbg !1944

; <label>:20:                                     ; preds = %16
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.sig_complete_word, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i32 0, i32 0)), !dbg !1947
  br label %202, !dbg !1950

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !1951

; <label>:22:                                     ; preds = %21
  br label %23, !dbg !1953, !llvm.loop !1954

; <label>:23:                                     ; preds = %22
  %24 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !1955
  %25 = icmp ne %struct._WINDOW_REC* %24, null, !dbg !1959
  br i1 %25, label %26, label %27, !dbg !1955

; <label>:26:                                     ; preds = %23
  br label %28, !dbg !1960

; <label>:27:                                     ; preds = %23
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.sig_complete_word, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0)), !dbg !1963
  br label %202, !dbg !1966

; <label>:28:                                     ; preds = %26
  br label %29, !dbg !1967

; <label>:29:                                     ; preds = %28
  br label %30, !dbg !1969, !llvm.loop !1970

; <label>:30:                                     ; preds = %29
  %31 = load i8*, i8** %8, align 8, !dbg !1971
  %32 = icmp ne i8* %31, null, !dbg !1975
  br i1 %32, label %33, label %34, !dbg !1971

; <label>:33:                                     ; preds = %30
  br label %35, !dbg !1976

; <label>:34:                                     ; preds = %30
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.sig_complete_word, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)), !dbg !1979
  br label %202, !dbg !1982

; <label>:35:                                     ; preds = %33
  br label %36, !dbg !1983

; <label>:36:                                     ; preds = %35
  br label %37, !dbg !1985, !llvm.loop !1986

; <label>:37:                                     ; preds = %36
  %38 = load i8*, i8** %9, align 8, !dbg !1987
  %39 = icmp ne i8* %38, null, !dbg !1991
  br i1 %39, label %40, label %41, !dbg !1987

; <label>:40:                                     ; preds = %37
  br label %42, !dbg !1992

; <label>:41:                                     ; preds = %37
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.sig_complete_word, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.58, i32 0, i32 0)), !dbg !1995
  br label %202, !dbg !1998

; <label>:42:                                     ; preds = %40
  br label %43, !dbg !1999

; <label>:43:                                     ; preds = %42
  %44 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !2001
  %45 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %44, i32 0, i32 6, !dbg !2002
  %46 = load %struct._SERVER_REC*, %struct._SERVER_REC** %45, align 8, !dbg !2002
  store %struct._SERVER_REC* %46, %struct._SERVER_REC** %11, align 8, !dbg !2003
  %47 = load %struct._SERVER_REC*, %struct._SERVER_REC** %11, align 8, !dbg !2004
  %48 = icmp eq %struct._SERVER_REC* %47, null, !dbg !2006
  br i1 %48, label %49, label %57, !dbg !2007

; <label>:49:                                     ; preds = %43
  %50 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !2008
  %51 = icmp ne %struct._GSList* %50, null, !dbg !2010
  br i1 %51, label %52, label %57, !dbg !2011

; <label>:52:                                     ; preds = %49
  %53 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !2012
  %54 = getelementptr inbounds %struct._GSList, %struct._GSList* %53, i32 0, i32 0, !dbg !2013
  %55 = load i8*, i8** %54, align 8, !dbg !2013
  %56 = bitcast i8* %55 to %struct._SERVER_REC*, !dbg !2012
  store %struct._SERVER_REC* %56, %struct._SERVER_REC** %11, align 8, !dbg !2014
  br label %57, !dbg !2015

; <label>:57:                                     ; preds = %52, %49, %43
  %58 = load %struct._SERVER_REC*, %struct._SERVER_REC** %11, align 8, !dbg !2016
  %59 = icmp ne %struct._SERVER_REC* %58, null, !dbg !2018
  br i1 %59, label %60, label %80, !dbg !2019

; <label>:60:                                     ; preds = %57
  %61 = load %struct._SERVER_REC*, %struct._SERVER_REC** %11, align 8, !dbg !2020
  %62 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %61, i32 0, i32 27, !dbg !2022
  %63 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %62, align 8, !dbg !2022
  %64 = load %struct._SERVER_REC*, %struct._SERVER_REC** %11, align 8, !dbg !2023
  %65 = load i8*, i8** %8, align 8, !dbg !2024
  %66 = call i32 %63(%struct._SERVER_REC* %64, i8* %65), !dbg !2025
  %67 = icmp ne i32 %66, 0, !dbg !2025
  br i1 %67, label %68, label %80, !dbg !2026

; <label>:68:                                     ; preds = %60
  %69 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !2027
  %70 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %69, i32 0, i32 6, !dbg !2029
  %71 = load %struct._SERVER_REC*, %struct._SERVER_REC** %70, align 8, !dbg !2029
  %72 = load i8*, i8** %8, align 8, !dbg !2030
  %73 = call %struct._GList* @completion_get_channels(%struct._SERVER_REC* %71, i8* %72), !dbg !2031
  %74 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2032
  store %struct._GList* %73, %struct._GList** %74, align 8, !dbg !2033
  %75 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2034
  %76 = load %struct._GList*, %struct._GList** %75, align 8, !dbg !2036
  %77 = icmp ne %struct._GList* %76, null, !dbg !2037
  br i1 %77, label %78, label %79, !dbg !2038

; <label>:78:                                     ; preds = %68
  call void @signal_stop(), !dbg !2039
  br label %79, !dbg !2039

; <label>:79:                                     ; preds = %78, %68
  br label %202, !dbg !2041

; <label>:80:                                     ; preds = %60, %57
  %81 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !2042
  %82 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %81, i32 0, i32 6, !dbg !2043
  %83 = load %struct._SERVER_REC*, %struct._SERVER_REC** %82, align 8, !dbg !2043
  store %struct._SERVER_REC* %83, %struct._SERVER_REC** %11, align 8, !dbg !2044
  %84 = load %struct._SERVER_REC*, %struct._SERVER_REC** %11, align 8, !dbg !2045
  %85 = icmp eq %struct._SERVER_REC* %84, null, !dbg !2047
  br i1 %85, label %93, label %86, !dbg !2048

; <label>:86:                                     ; preds = %80
  %87 = load %struct._SERVER_REC*, %struct._SERVER_REC** %11, align 8, !dbg !2049
  %88 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %87, i32 0, i32 8, !dbg !2051
  %89 = load i8, i8* %88, align 8, !dbg !2051
  %90 = and i8 %89, 1, !dbg !2051
  %91 = zext i8 %90 to i32, !dbg !2051
  %92 = icmp ne i32 %91, 0, !dbg !2049
  br i1 %92, label %94, label %93, !dbg !2052

; <label>:93:                                     ; preds = %86, %80
  br label %202, !dbg !2053

; <label>:94:                                     ; preds = %86
  %95 = load i8*, i8** %9, align 8, !dbg !2054
  %96 = load i8, i8* %95, align 1, !dbg !2056
  %97 = sext i8 %96 to i32, !dbg !2056
  %98 = icmp eq i32 %97, 0, !dbg !2057
  br i1 %98, label %99, label %129, !dbg !2058

; <label>:99:                                     ; preds = %94
  %100 = load i8*, i8** %8, align 8, !dbg !2059
  %101 = load i8, i8* %100, align 1, !dbg !2061
  %102 = sext i8 %101 to i32, !dbg !2061
  %103 = icmp eq i32 %102, 0, !dbg !2062
  br i1 %103, label %104, label %129, !dbg !2063

; <label>:104:                                    ; preds = %99
  %105 = load i32, i32* @completion_empty_line, align 4, !dbg !2064
  %106 = icmp ne i32 %105, 0, !dbg !2064
  br i1 %106, label %108, label %107, !dbg !2067

; <label>:107:                                    ; preds = %104
  br label %202, !dbg !2068

; <label>:108:                                    ; preds = %104
  %109 = load i8*, i8** @cmdchars, align 8, !dbg !2069
  %110 = load i8, i8* %109, align 1, !dbg !2070
  %111 = sext i8 %110 to i32, !dbg !2070
  %112 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), i32 %111), !dbg !2071
  store i8* %112, i8** %14, align 8, !dbg !2072
  %113 = load %struct._SERVER_REC*, %struct._SERVER_REC** %11, align 8, !dbg !2073
  %114 = load i8*, i8** %14, align 8, !dbg !2074
  %115 = call %struct._GList* @completion_msg(%struct._SERVER_REC* %113, %struct._SERVER_REC* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.60, i32 0, i32 0), i8* %114), !dbg !2075
  %116 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2076
  store %struct._GList* %115, %struct._GList** %116, align 8, !dbg !2077
  %117 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2078
  %118 = load %struct._GList*, %struct._GList** %117, align 8, !dbg !2080
  %119 = icmp eq %struct._GList* %118, null, !dbg !2081
  br i1 %119, label %120, label %127, !dbg !2082

; <label>:120:                                    ; preds = %108
  %121 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2083
  %122 = load %struct._GList*, %struct._GList** %121, align 8, !dbg !2084
  %123 = load i8*, i8** %14, align 8, !dbg !2085
  %124 = call noalias i8* @g_strdup(i8* %123), !dbg !2086
  %125 = call %struct._GList* @g_list_append(%struct._GList* %122, i8* %124), !dbg !2087
  %126 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2089
  store %struct._GList* %125, %struct._GList** %126, align 8, !dbg !2090
  br label %127, !dbg !2091

; <label>:127:                                    ; preds = %120, %108
  %128 = load i8*, i8** %14, align 8, !dbg !2092
  call void @g_free(i8* %128), !dbg !2093
  call void @signal_stop(), !dbg !2094
  br label %202, !dbg !2095

; <label>:129:                                    ; preds = %99, %94
  %130 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !2096
  %131 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %130, i32 0, i32 5, !dbg !2097
  %132 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %131, align 8, !dbg !2097
  %133 = bitcast %struct._WI_ITEM_REC* %132 to i8*, !dbg !2096
  %134 = call i8* @module_check_cast_module(i8* %133, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0)), !dbg !2098
  %135 = bitcast i8* %134 to %struct._CHANNEL_REC*, !dbg !2099
  store %struct._CHANNEL_REC* %135, %struct._CHANNEL_REC** %12, align 8, !dbg !2100
  %136 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !2101
  %137 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %136, i32 0, i32 5, !dbg !2102
  %138 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %137, align 8, !dbg !2102
  %139 = bitcast %struct._WI_ITEM_REC* %138 to i8*, !dbg !2101
  %140 = call i8* @module_check_cast_module(i8* %139, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0)), !dbg !2103
  %141 = bitcast i8* %140 to %struct._QUERY_REC*, !dbg !2104
  store %struct._QUERY_REC* %141, %struct._QUERY_REC** %13, align 8, !dbg !2105
  %142 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %12, align 8, !dbg !2106
  %143 = icmp eq %struct._CHANNEL_REC* %142, null, !dbg !2108
  br i1 %143, label %144, label %165, !dbg !2109

; <label>:144:                                    ; preds = %129
  %145 = load %struct._QUERY_REC*, %struct._QUERY_REC** %13, align 8, !dbg !2110
  %146 = icmp ne %struct._QUERY_REC* %145, null, !dbg !2112
  br i1 %146, label %147, label %165, !dbg !2113

; <label>:147:                                    ; preds = %144
  %148 = load i8*, i8** %8, align 8, !dbg !2114
  %149 = load %struct._QUERY_REC*, %struct._QUERY_REC** %13, align 8, !dbg !2115
  %150 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %149, i32 0, i32 6, !dbg !2116
  %151 = load i8*, i8** %150, align 8, !dbg !2116
  %152 = load i8*, i8** %8, align 8, !dbg !2117
  %153 = call i64 @strlen(i8* %152) #7, !dbg !2118
  %154 = call i32 @g_ascii_strncasecmp(i8* %148, i8* %151, i64 %153), !dbg !2119
  %155 = icmp eq i32 %154, 0, !dbg !2120
  br i1 %155, label %156, label %165, !dbg !2121

; <label>:156:                                    ; preds = %147
  %157 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2123
  %158 = load %struct._GList*, %struct._GList** %157, align 8, !dbg !2125
  %159 = load %struct._QUERY_REC*, %struct._QUERY_REC** %13, align 8, !dbg !2126
  %160 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %159, i32 0, i32 6, !dbg !2127
  %161 = load i8*, i8** %160, align 8, !dbg !2127
  %162 = call noalias i8* @g_strdup(i8* %161), !dbg !2128
  %163 = call %struct._GList* @g_list_append(%struct._GList* %158, i8* %162), !dbg !2129
  %164 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2131
  store %struct._GList* %163, %struct._GList** %164, align 8, !dbg !2132
  br label %197, !dbg !2133

; <label>:165:                                    ; preds = %147, %144, %129
  %166 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %12, align 8, !dbg !2134
  %167 = icmp ne %struct._CHANNEL_REC* %166, null, !dbg !2137
  br i1 %167, label %168, label %181, !dbg !2134

; <label>:168:                                    ; preds = %165
  call void @llvm.dbg.declare(metadata i8** %15, metadata !2138, metadata !614), !dbg !2140
  %169 = load i8*, i8** %9, align 8, !dbg !2141
  %170 = call i32 @only_nicks(i8* %169), !dbg !2142
  %171 = icmp ne i32 %170, 0, !dbg !2142
  br i1 %171, label %172, label %174, !dbg !2142

; <label>:172:                                    ; preds = %168
  %173 = load i8*, i8** @completion_char, align 8, !dbg !2143
  br label %175, !dbg !2145

; <label>:174:                                    ; preds = %168
  br label %175, !dbg !2146

; <label>:175:                                    ; preds = %174, %172
  %176 = phi i8* [ %173, %172 ], [ null, %174 ], !dbg !2148
  store i8* %176, i8** %15, align 8, !dbg !2150
  %177 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2151
  %178 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !2152
  %179 = load i8*, i8** %8, align 8, !dbg !2153
  %180 = load i8*, i8** %15, align 8, !dbg !2154
  call void @complete_window_nicks(%struct._GList** %177, %struct._WINDOW_REC* %178, i8* %179, i8* %180), !dbg !2155
  br label %196, !dbg !2156

; <label>:181:                                    ; preds = %165
  %182 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !2157
  %183 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %182, i32 0, i32 9, !dbg !2160
  %184 = load i32, i32* %183, align 8, !dbg !2160
  %185 = and i32 %184, 2, !dbg !2161
  %186 = icmp ne i32 %185, 0, !dbg !2161
  br i1 %186, label %187, label %195, !dbg !2157

; <label>:187:                                    ; preds = %181
  %188 = load %struct._SERVER_REC*, %struct._SERVER_REC** %11, align 8, !dbg !2162
  %189 = load i8*, i8** %8, align 8, !dbg !2164
  %190 = call %struct._GList* @completion_msg(%struct._SERVER_REC* %188, %struct._SERVER_REC* null, i8* %189, i8* null), !dbg !2165
  %191 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2166
  %192 = load %struct._GList*, %struct._GList** %191, align 8, !dbg !2167
  %193 = call %struct._GList* @g_list_concat(%struct._GList* %190, %struct._GList* %192), !dbg !2168
  %194 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2170
  store %struct._GList* %193, %struct._GList** %194, align 8, !dbg !2171
  br label %195, !dbg !2172

; <label>:195:                                    ; preds = %187, %181
  br label %196

; <label>:196:                                    ; preds = %195, %175
  br label %197

; <label>:197:                                    ; preds = %196, %156
  %198 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2173
  %199 = load %struct._GList*, %struct._GList** %198, align 8, !dbg !2175
  %200 = icmp ne %struct._GList* %199, null, !dbg !2176
  br i1 %200, label %201, label %202, !dbg !2177

; <label>:201:                                    ; preds = %197
  call void @signal_stop(), !dbg !2178
  br label %202, !dbg !2178

; <label>:202:                                    ; preds = %20, %27, %34, %41, %79, %93, %107, %127, %201, %197
  ret void, !dbg !2180
}

; Function Attrs: nounwind uwtable
define internal void @sig_complete_msg(%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*) #0 !dbg !2181 {
  %6 = alloca %struct._GList**, align 8
  %7 = alloca %struct._WINDOW_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct._SERVER_REC*, align 8
  %12 = alloca %struct._SERVER_REC*, align 8
  store %struct._GList** %0, %struct._GList*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GList*** %6, metadata !2182, metadata !614), !dbg !2183
  store %struct._WINDOW_REC* %1, %struct._WINDOW_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %7, metadata !2184, metadata !614), !dbg !2185
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2186, metadata !614), !dbg !2187
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2188, metadata !614), !dbg !2189
  store i32* %4, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !2190, metadata !614), !dbg !2191
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %11, metadata !2192, metadata !614), !dbg !2193
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %12, metadata !2194, metadata !614), !dbg !2195
  br label %13, !dbg !2196, !llvm.loop !2197

; <label>:13:                                     ; preds = %5
  %14 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2198
  %15 = icmp ne %struct._GList** %14, null, !dbg !2202
  br i1 %15, label %16, label %17, !dbg !2198

; <label>:16:                                     ; preds = %13
  br label %18, !dbg !2203

; <label>:17:                                     ; preds = %13
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.sig_complete_msg, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i32 0, i32 0)), !dbg !2206
  br label %71, !dbg !2209

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !2210

; <label>:19:                                     ; preds = %18
  br label %20, !dbg !2212, !llvm.loop !2213

; <label>:20:                                     ; preds = %19
  %21 = load i8*, i8** %8, align 8, !dbg !2214
  %22 = icmp ne i8* %21, null, !dbg !2218
  br i1 %22, label %23, label %24, !dbg !2214

; <label>:23:                                     ; preds = %20
  br label %25, !dbg !2219

; <label>:24:                                     ; preds = %20
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.sig_complete_msg, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)), !dbg !2222
  br label %71, !dbg !2225

; <label>:25:                                     ; preds = %23
  br label %26, !dbg !2226

; <label>:26:                                     ; preds = %25
  br label %27, !dbg !2228, !llvm.loop !2229

; <label>:27:                                     ; preds = %26
  %28 = load i8*, i8** %9, align 8, !dbg !2230
  %29 = icmp ne i8* %28, null, !dbg !2234
  br i1 %29, label %30, label %31, !dbg !2230

; <label>:30:                                     ; preds = %27
  br label %32, !dbg !2235

; <label>:31:                                     ; preds = %27
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.sig_complete_msg, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.65, i32 0, i32 0)), !dbg !2238
  br label %71, !dbg !2241

; <label>:32:                                     ; preds = %30
  br label %33, !dbg !2242

; <label>:33:                                     ; preds = %32
  %34 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !2244
  %35 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %34, i32 0, i32 6, !dbg !2245
  %36 = load %struct._SERVER_REC*, %struct._SERVER_REC** %35, align 8, !dbg !2245
  store %struct._SERVER_REC* %36, %struct._SERVER_REC** %11, align 8, !dbg !2246
  %37 = load %struct._SERVER_REC*, %struct._SERVER_REC** %11, align 8, !dbg !2247
  %38 = icmp eq %struct._SERVER_REC* %37, null, !dbg !2249
  br i1 %38, label %46, label %39, !dbg !2250

; <label>:39:                                     ; preds = %33
  %40 = load %struct._SERVER_REC*, %struct._SERVER_REC** %11, align 8, !dbg !2251
  %41 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %40, i32 0, i32 8, !dbg !2253
  %42 = load i8, i8* %41, align 8, !dbg !2253
  %43 = and i8 %42, 1, !dbg !2253
  %44 = zext i8 %43 to i32, !dbg !2253
  %45 = icmp ne i32 %44, 0, !dbg !2251
  br i1 %45, label %47, label %46, !dbg !2254

; <label>:46:                                     ; preds = %39, %33
  br label %71, !dbg !2255

; <label>:47:                                     ; preds = %39
  %48 = load i8*, i8** %9, align 8, !dbg !2256
  %49 = call %struct._SERVER_REC* @line_get_server(i8* %48), !dbg !2257
  store %struct._SERVER_REC* %49, %struct._SERVER_REC** %12, align 8, !dbg !2258
  %50 = load %struct._SERVER_REC*, %struct._SERVER_REC** %11, align 8, !dbg !2259
  %51 = load %struct._SERVER_REC*, %struct._SERVER_REC** %12, align 8, !dbg !2260
  %52 = load i8*, i8** %8, align 8, !dbg !2261
  %53 = call %struct._GList* @completion_msg(%struct._SERVER_REC* %50, %struct._SERVER_REC* %51, i8* %52, i8* null), !dbg !2262
  %54 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2263
  store %struct._GList* %53, %struct._GList** %54, align 8, !dbg !2264
  %55 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !2265
  %56 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %55, i32 0, i32 5, !dbg !2267
  %57 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %56, align 8, !dbg !2267
  %58 = bitcast %struct._WI_ITEM_REC* %57 to i8*, !dbg !2265
  %59 = call i8* @module_check_cast_module(i8* %58, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0)), !dbg !2268
  %60 = bitcast i8* %59 to %struct._CHANNEL_REC*, !dbg !2269
  %61 = icmp ne %struct._CHANNEL_REC* %60, null, !dbg !2270
  br i1 %61, label %62, label %66, !dbg !2271

; <label>:62:                                     ; preds = %47
  %63 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2272
  %64 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !2273
  %65 = load i8*, i8** %8, align 8, !dbg !2274
  call void @complete_window_nicks(%struct._GList** %63, %struct._WINDOW_REC* %64, i8* %65, i8* null), !dbg !2275
  br label %66, !dbg !2275

; <label>:66:                                     ; preds = %62, %47
  %67 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2276
  %68 = load %struct._GList*, %struct._GList** %67, align 8, !dbg !2278
  %69 = icmp ne %struct._GList* %68, null, !dbg !2279
  br i1 %69, label %70, label %71, !dbg !2280

; <label>:70:                                     ; preds = %66
  call void @signal_stop(), !dbg !2281
  br label %71, !dbg !2281

; <label>:71:                                     ; preds = %17, %24, %31, %46, %70, %66
  ret void, !dbg !2283
}

; Function Attrs: nounwind uwtable
define internal void @sig_erase_complete_msg(%struct._WINDOW_REC*, i8*, i8*) #0 !dbg !2284 {
  %4 = alloca %struct._WINDOW_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._SERVER_REC*, align 8
  %8 = alloca %struct.MODULE_SERVER_REC*, align 8
  %9 = alloca %struct._GSList*, align 8
  %10 = alloca %struct.LAST_MSG_REC*, align 8
  store %struct._WINDOW_REC* %0, %struct._WINDOW_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %4, metadata !2287, metadata !614), !dbg !2288
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2289, metadata !614), !dbg !2290
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2291, metadata !614), !dbg !2292
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %7, metadata !2293, metadata !614), !dbg !2294
  call void @llvm.dbg.declare(metadata %struct.MODULE_SERVER_REC** %8, metadata !2295, metadata !614), !dbg !2296
  call void @llvm.dbg.declare(metadata %struct._GSList** %9, metadata !2297, metadata !614), !dbg !2298
  %11 = load i8*, i8** %6, align 8, !dbg !2299
  %12 = call %struct._SERVER_REC* @line_get_server(i8* %11), !dbg !2300
  store %struct._SERVER_REC* %12, %struct._SERVER_REC** %7, align 8, !dbg !2301
  %13 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !2302
  %14 = icmp eq %struct._SERVER_REC* %13, null, !dbg !2304
  br i1 %14, label %15, label %23, !dbg !2305

; <label>:15:                                     ; preds = %3
  %16 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %4, align 8, !dbg !2306
  %17 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %16, i32 0, i32 6, !dbg !2308
  %18 = load %struct._SERVER_REC*, %struct._SERVER_REC** %17, align 8, !dbg !2308
  store %struct._SERVER_REC* %18, %struct._SERVER_REC** %7, align 8, !dbg !2309
  %19 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !2310
  %20 = icmp eq %struct._SERVER_REC* %19, null, !dbg !2312
  br i1 %20, label %21, label %22, !dbg !2313

; <label>:21:                                     ; preds = %15
  br label %66, !dbg !2314

; <label>:22:                                     ; preds = %15
  br label %23, !dbg !2315

; <label>:23:                                     ; preds = %22, %3
  %24 = load i8*, i8** %5, align 8, !dbg !2316
  %25 = load i8, i8* %24, align 1, !dbg !2318
  %26 = sext i8 %25 to i32, !dbg !2318
  %27 = icmp eq i32 %26, 0, !dbg !2319
  br i1 %27, label %28, label %29, !dbg !2320

; <label>:28:                                     ; preds = %23
  br label %66, !dbg !2321

; <label>:29:                                     ; preds = %23
  %30 = load i8*, i8** %5, align 8, !dbg !2322
  call void @completion_last_message_remove(i8* %30), !dbg !2323
  %31 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !2324
  %32 = icmp ne %struct._SERVER_REC* %31, null, !dbg !2326
  br i1 %32, label %33, label %66, !dbg !2327

; <label>:33:                                     ; preds = %29
  %34 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !2328
  %35 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %34, i32 0, i32 15, !dbg !2330
  %36 = load %struct._GHashTable*, %struct._GHashTable** %35, align 8, !dbg !2330
  %37 = call i8* @g_hash_table_lookup(%struct._GHashTable* %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0)), !dbg !2331
  %38 = bitcast i8* %37 to %struct.MODULE_SERVER_REC*, !dbg !2331
  store %struct.MODULE_SERVER_REC* %38, %struct.MODULE_SERVER_REC** %8, align 8, !dbg !2332
  %39 = load %struct.MODULE_SERVER_REC*, %struct.MODULE_SERVER_REC** %8, align 8, !dbg !2333
  %40 = getelementptr inbounds %struct.MODULE_SERVER_REC, %struct.MODULE_SERVER_REC* %39, i32 0, i32 0, !dbg !2335
  %41 = load %struct._GSList*, %struct._GSList** %40, align 8, !dbg !2335
  store %struct._GSList* %41, %struct._GSList** %9, align 8, !dbg !2336
  br label %42, !dbg !2337

; <label>:42:                                     ; preds = %61, %33
  %43 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !2338
  %44 = icmp ne %struct._GSList* %43, null, !dbg !2341
  br i1 %44, label %45, label %65, !dbg !2342

; <label>:45:                                     ; preds = %42
  call void @llvm.dbg.declare(metadata %struct.LAST_MSG_REC** %10, metadata !2343, metadata !614), !dbg !2345
  %46 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !2346
  %47 = getelementptr inbounds %struct._GSList, %struct._GSList* %46, i32 0, i32 0, !dbg !2347
  %48 = load i8*, i8** %47, align 8, !dbg !2347
  %49 = bitcast i8* %48 to %struct.LAST_MSG_REC*, !dbg !2346
  store %struct.LAST_MSG_REC* %49, %struct.LAST_MSG_REC** %10, align 8, !dbg !2345
  %50 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %10, align 8, !dbg !2348
  %51 = getelementptr inbounds %struct.LAST_MSG_REC, %struct.LAST_MSG_REC* %50, i32 0, i32 1, !dbg !2350
  %52 = load i8*, i8** %51, align 8, !dbg !2350
  %53 = load i8*, i8** %5, align 8, !dbg !2351
  %54 = call i32 @g_ascii_strcasecmp(i8* %52, i8* %53), !dbg !2352
  %55 = icmp eq i32 %54, 0, !dbg !2353
  br i1 %55, label %56, label %60, !dbg !2354

; <label>:56:                                     ; preds = %45
  %57 = load %struct.MODULE_SERVER_REC*, %struct.MODULE_SERVER_REC** %8, align 8, !dbg !2355
  %58 = getelementptr inbounds %struct.MODULE_SERVER_REC, %struct.MODULE_SERVER_REC* %57, i32 0, i32 0, !dbg !2357
  %59 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %10, align 8, !dbg !2358
  call void @last_msg_destroy(%struct._GSList** %58, %struct.LAST_MSG_REC* %59), !dbg !2359
  br label %65, !dbg !2360

; <label>:60:                                     ; preds = %45
  br label %61, !dbg !2361

; <label>:61:                                     ; preds = %60
  %62 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !2362
  %63 = getelementptr inbounds %struct._GSList, %struct._GSList* %62, i32 0, i32 1, !dbg !2364
  %64 = load %struct._GSList*, %struct._GSList** %63, align 8, !dbg !2364
  store %struct._GSList* %64, %struct._GSList** %9, align 8, !dbg !2365
  br label %42, !dbg !2366, !llvm.loop !2367

; <label>:65:                                     ; preds = %56, %42
  br label %66, !dbg !2369

; <label>:66:                                     ; preds = %21, %28, %65, %29
  ret void, !dbg !2370
}

; Function Attrs: nounwind uwtable
define internal void @sig_complete_connect(%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*) #0 !dbg !2371 {
  %6 = alloca %struct._GList**, align 8
  %7 = alloca %struct._WINDOW_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store %struct._GList** %0, %struct._GList*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GList*** %6, metadata !2372, metadata !614), !dbg !2373
  store %struct._WINDOW_REC* %1, %struct._WINDOW_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %7, metadata !2374, metadata !614), !dbg !2375
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2376, metadata !614), !dbg !2377
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2378, metadata !614), !dbg !2379
  store i32* %4, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !2380, metadata !614), !dbg !2381
  br label %11, !dbg !2382, !llvm.loop !2383

; <label>:11:                                     ; preds = %5
  %12 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2384
  %13 = icmp ne %struct._GList** %12, null, !dbg !2388
  br i1 %13, label %14, label %15, !dbg !2384

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !2389

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.sig_complete_connect, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i32 0, i32 0)), !dbg !2392
  br label %38, !dbg !2395

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !2396

; <label>:17:                                     ; preds = %16
  br label %18, !dbg !2398, !llvm.loop !2399

; <label>:18:                                     ; preds = %17
  %19 = load i8*, i8** %8, align 8, !dbg !2400
  %20 = icmp ne i8* %19, null, !dbg !2404
  br i1 %20, label %21, label %22, !dbg !2400

; <label>:21:                                     ; preds = %18
  br label %23, !dbg !2405

; <label>:22:                                     ; preds = %18
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.sig_complete_connect, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)), !dbg !2408
  br label %38, !dbg !2411

; <label>:23:                                     ; preds = %21
  br label %24, !dbg !2412

; <label>:24:                                     ; preds = %23
  %25 = load i8*, i8** %8, align 8, !dbg !2414
  %26 = call %struct._GList* @completion_get_chatnets(i8* %25), !dbg !2415
  %27 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2416
  store %struct._GList* %26, %struct._GList** %27, align 8, !dbg !2417
  %28 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2418
  %29 = load %struct._GList*, %struct._GList** %28, align 8, !dbg !2419
  %30 = load i8*, i8** %8, align 8, !dbg !2420
  %31 = call %struct._GList* @completion_get_servers(i8* %30), !dbg !2421
  %32 = call %struct._GList* @g_list_concat(%struct._GList* %29, %struct._GList* %31), !dbg !2422
  %33 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2424
  store %struct._GList* %32, %struct._GList** %33, align 8, !dbg !2425
  %34 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2426
  %35 = load %struct._GList*, %struct._GList** %34, align 8, !dbg !2428
  %36 = icmp ne %struct._GList* %35, null, !dbg !2429
  br i1 %36, label %37, label %38, !dbg !2430

; <label>:37:                                     ; preds = %24
  call void @signal_stop(), !dbg !2431
  br label %38, !dbg !2431

; <label>:38:                                     ; preds = %15, %22, %37, %24
  ret void, !dbg !2433
}

; Function Attrs: nounwind uwtable
define internal void @sig_complete_tag(%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*) #0 !dbg !2434 {
  %6 = alloca %struct._GList**, align 8
  %7 = alloca %struct._WINDOW_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store %struct._GList** %0, %struct._GList*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GList*** %6, metadata !2435, metadata !614), !dbg !2436
  store %struct._WINDOW_REC* %1, %struct._WINDOW_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %7, metadata !2437, metadata !614), !dbg !2438
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2439, metadata !614), !dbg !2440
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2441, metadata !614), !dbg !2442
  store i32* %4, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !2443, metadata !614), !dbg !2444
  br label %11, !dbg !2445, !llvm.loop !2446

; <label>:11:                                     ; preds = %5
  %12 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2447
  %13 = icmp ne %struct._GList** %12, null, !dbg !2451
  br i1 %13, label %14, label %15, !dbg !2447

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !2452

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.sig_complete_tag, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i32 0, i32 0)), !dbg !2455
  br label %32, !dbg !2458

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !2459

; <label>:17:                                     ; preds = %16
  br label %18, !dbg !2461, !llvm.loop !2462

; <label>:18:                                     ; preds = %17
  %19 = load i8*, i8** %8, align 8, !dbg !2463
  %20 = icmp ne i8* %19, null, !dbg !2467
  br i1 %20, label %21, label %22, !dbg !2463

; <label>:21:                                     ; preds = %18
  br label %23, !dbg !2468

; <label>:22:                                     ; preds = %18
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.sig_complete_tag, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)), !dbg !2471
  br label %32, !dbg !2474

; <label>:23:                                     ; preds = %21
  br label %24, !dbg !2475

; <label>:24:                                     ; preds = %23
  %25 = load i8*, i8** %8, align 8, !dbg !2477
  %26 = call %struct._GList* @completion_get_servertags(i8* %25), !dbg !2478
  %27 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2479
  store %struct._GList* %26, %struct._GList** %27, align 8, !dbg !2480
  %28 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2481
  %29 = load %struct._GList*, %struct._GList** %28, align 8, !dbg !2483
  %30 = icmp ne %struct._GList* %29, null, !dbg !2484
  br i1 %30, label %31, label %32, !dbg !2485

; <label>:31:                                     ; preds = %24
  call void @signal_stop(), !dbg !2486
  br label %32, !dbg !2486

; <label>:32:                                     ; preds = %15, %22, %31, %24
  ret void, !dbg !2488
}

; Function Attrs: nounwind uwtable
define internal void @sig_complete_topic(%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*) #0 !dbg !2489 {
  %6 = alloca %struct._GList**, align 8
  %7 = alloca %struct._WINDOW_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  store %struct._GList** %0, %struct._GList*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GList*** %6, metadata !2490, metadata !614), !dbg !2491
  store %struct._WINDOW_REC* %1, %struct._WINDOW_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %7, metadata !2492, metadata !614), !dbg !2493
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2494, metadata !614), !dbg !2495
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2496, metadata !614), !dbg !2497
  store i32* %4, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !2498, metadata !614), !dbg !2499
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2500, metadata !614), !dbg !2501
  br label %12, !dbg !2502, !llvm.loop !2503

; <label>:12:                                     ; preds = %5
  %13 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2504
  %14 = icmp ne %struct._GList** %13, null, !dbg !2508
  br i1 %14, label %15, label %16, !dbg !2504

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !2509

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.sig_complete_topic, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i32 0, i32 0)), !dbg !2512
  br label %57, !dbg !2515

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !2516

; <label>:18:                                     ; preds = %17
  br label %19, !dbg !2518, !llvm.loop !2519

; <label>:19:                                     ; preds = %18
  %20 = load i8*, i8** %8, align 8, !dbg !2520
  %21 = icmp ne i8* %20, null, !dbg !2524
  br i1 %21, label %22, label %23, !dbg !2520

; <label>:22:                                     ; preds = %19
  br label %24, !dbg !2525

; <label>:23:                                     ; preds = %19
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.sig_complete_topic, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)), !dbg !2528
  br label %57, !dbg !2531

; <label>:24:                                     ; preds = %22
  br label %25, !dbg !2532

; <label>:25:                                     ; preds = %24
  %26 = load i8*, i8** %8, align 8, !dbg !2534
  %27 = load i8, i8* %26, align 1, !dbg !2536
  %28 = sext i8 %27 to i32, !dbg !2536
  %29 = icmp eq i32 %28, 0, !dbg !2537
  br i1 %29, label %30, label %57, !dbg !2538

; <label>:30:                                     ; preds = %25
  %31 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !2539
  %32 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %31, i32 0, i32 5, !dbg !2541
  %33 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %32, align 8, !dbg !2541
  %34 = bitcast %struct._WI_ITEM_REC* %33 to i8*, !dbg !2539
  %35 = call i8* @module_check_cast_module(i8* %34, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0)), !dbg !2542
  %36 = bitcast i8* %35 to %struct._CHANNEL_REC*, !dbg !2543
  %37 = icmp ne %struct._CHANNEL_REC* %36, null, !dbg !2543
  br i1 %37, label %38, label %39, !dbg !2544

; <label>:38:                                     ; preds = %30
  br i1 false, label %57, label %40, !dbg !2545

; <label>:39:                                     ; preds = %30
  br i1 false, label %40, label %57, !dbg !2547

; <label>:40:                                     ; preds = %39, %38
  %41 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !2549
  %42 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %41, i32 0, i32 5, !dbg !2551
  %43 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %42, align 8, !dbg !2551
  %44 = bitcast %struct._WI_ITEM_REC* %43 to i8*, !dbg !2549
  %45 = call i8* @module_check_cast_module(i8* %44, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0)), !dbg !2552
  %46 = bitcast i8* %45 to %struct._CHANNEL_REC*, !dbg !2553
  %47 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %46, i32 0, i32 12, !dbg !2554
  %48 = load i8*, i8** %47, align 8, !dbg !2554
  store i8* %48, i8** %11, align 8, !dbg !2555
  %49 = load i8*, i8** %11, align 8, !dbg !2556
  %50 = icmp ne i8* %49, null, !dbg !2558
  br i1 %50, label %51, label %56, !dbg !2559

; <label>:51:                                     ; preds = %40
  %52 = load i8*, i8** %11, align 8, !dbg !2560
  %53 = call noalias i8* @g_strdup(i8* %52), !dbg !2562
  %54 = call %struct._GList* @g_list_append(%struct._GList* null, i8* %53), !dbg !2563
  %55 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2565
  store %struct._GList* %54, %struct._GList** %55, align 8, !dbg !2566
  call void @signal_stop(), !dbg !2567
  br label %56, !dbg !2568

; <label>:56:                                     ; preds = %51, %40
  br label %57, !dbg !2569

; <label>:57:                                     ; preds = %16, %23, %56, %39, %38, %25
  ret void, !dbg !2570
}

; Function Attrs: nounwind uwtable
define internal void @sig_complete_away(%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*) #0 !dbg !2571 {
  %6 = alloca %struct._GList**, align 8
  %7 = alloca %struct._WINDOW_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  store %struct._GList** %0, %struct._GList*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GList*** %6, metadata !2572, metadata !614), !dbg !2573
  store %struct._WINDOW_REC* %1, %struct._WINDOW_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %7, metadata !2574, metadata !614), !dbg !2575
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2576, metadata !614), !dbg !2577
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2578, metadata !614), !dbg !2579
  store i32* %4, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !2580, metadata !614), !dbg !2581
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2582, metadata !614), !dbg !2583
  br label %12, !dbg !2584, !llvm.loop !2585

; <label>:12:                                     ; preds = %5
  %13 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2586
  %14 = icmp ne %struct._GList** %13, null, !dbg !2590
  br i1 %14, label %15, label %16, !dbg !2586

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !2591

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.sig_complete_away, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i32 0, i32 0)), !dbg !2594
  br label %53, !dbg !2597

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !2598

; <label>:18:                                     ; preds = %17
  br label %19, !dbg !2600, !llvm.loop !2601

; <label>:19:                                     ; preds = %18
  %20 = load i8*, i8** %8, align 8, !dbg !2602
  %21 = icmp ne i8* %20, null, !dbg !2606
  br i1 %21, label %22, label %23, !dbg !2602

; <label>:22:                                     ; preds = %19
  br label %24, !dbg !2607

; <label>:23:                                     ; preds = %19
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.sig_complete_away, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)), !dbg !2610
  br label %53, !dbg !2613

; <label>:24:                                     ; preds = %22
  br label %25, !dbg !2614

; <label>:25:                                     ; preds = %24
  %26 = load i32*, i32** %10, align 8, !dbg !2616
  store i32 0, i32* %26, align 4, !dbg !2617
  %27 = load i8*, i8** %8, align 8, !dbg !2618
  %28 = load i8, i8* %27, align 1, !dbg !2620
  %29 = sext i8 %28 to i32, !dbg !2620
  %30 = icmp eq i32 %29, 0, !dbg !2621
  br i1 %30, label %31, label %53, !dbg !2622

; <label>:31:                                     ; preds = %25
  %32 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !2623
  %33 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %32, i32 0, i32 6, !dbg !2625
  %34 = load %struct._SERVER_REC*, %struct._SERVER_REC** %33, align 8, !dbg !2625
  %35 = icmp ne %struct._SERVER_REC* %34, null, !dbg !2626
  br i1 %35, label %36, label %53, !dbg !2627

; <label>:36:                                     ; preds = %31
  %37 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !2628
  %38 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %37, i32 0, i32 6, !dbg !2630
  %39 = load %struct._SERVER_REC*, %struct._SERVER_REC** %38, align 8, !dbg !2630
  %40 = bitcast %struct._SERVER_REC* %39 to i8*, !dbg !2628
  %41 = call i8* @module_check_cast(i8* %40, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0)), !dbg !2631
  %42 = bitcast i8* %41 to %struct._SERVER_REC*, !dbg !2632
  %43 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %42, i32 0, i32 17, !dbg !2633
  %44 = load i8*, i8** %43, align 8, !dbg !2633
  store i8* %44, i8** %11, align 8, !dbg !2634
  %45 = load i8*, i8** %11, align 8, !dbg !2635
  %46 = icmp ne i8* %45, null, !dbg !2637
  br i1 %46, label %47, label %52, !dbg !2638

; <label>:47:                                     ; preds = %36
  %48 = load i8*, i8** %11, align 8, !dbg !2639
  %49 = call noalias i8* @g_strdup(i8* %48), !dbg !2641
  %50 = call %struct._GList* @g_list_append(%struct._GList* null, i8* %49), !dbg !2642
  %51 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2644
  store %struct._GList* %50, %struct._GList** %51, align 8, !dbg !2645
  call void @signal_stop(), !dbg !2646
  br label %52, !dbg !2647

; <label>:52:                                     ; preds = %47, %36
  br label %53, !dbg !2648

; <label>:53:                                     ; preds = %16, %23, %52, %31, %25
  ret void, !dbg !2649
}

; Function Attrs: nounwind uwtable
define internal void @sig_complete_unalias(%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*) #0 !dbg !2650 {
  %6 = alloca %struct._GList**, align 8
  %7 = alloca %struct._WINDOW_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store %struct._GList** %0, %struct._GList*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GList*** %6, metadata !2651, metadata !614), !dbg !2652
  store %struct._WINDOW_REC* %1, %struct._WINDOW_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %7, metadata !2653, metadata !614), !dbg !2654
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2655, metadata !614), !dbg !2656
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2657, metadata !614), !dbg !2658
  store i32* %4, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !2659, metadata !614), !dbg !2660
  br label %11, !dbg !2661, !llvm.loop !2662

; <label>:11:                                     ; preds = %5
  %12 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2663
  %13 = icmp ne %struct._GList** %12, null, !dbg !2667
  br i1 %13, label %14, label %15, !dbg !2663

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !2668

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.sig_complete_unalias, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i32 0, i32 0)), !dbg !2671
  br label %32, !dbg !2674

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !2675

; <label>:17:                                     ; preds = %16
  br label %18, !dbg !2677, !llvm.loop !2678

; <label>:18:                                     ; preds = %17
  %19 = load i8*, i8** %8, align 8, !dbg !2679
  %20 = icmp ne i8* %19, null, !dbg !2683
  br i1 %20, label %21, label %22, !dbg !2679

; <label>:21:                                     ; preds = %18
  br label %23, !dbg !2684

; <label>:22:                                     ; preds = %18
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.sig_complete_unalias, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)), !dbg !2687
  br label %32, !dbg !2690

; <label>:23:                                     ; preds = %21
  br label %24, !dbg !2691

; <label>:24:                                     ; preds = %23
  %25 = load i8*, i8** %8, align 8, !dbg !2693
  %26 = call %struct._GList* @completion_get_aliases(i8* %25), !dbg !2694
  %27 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2695
  store %struct._GList* %26, %struct._GList** %27, align 8, !dbg !2696
  %28 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2697
  %29 = load %struct._GList*, %struct._GList** %28, align 8, !dbg !2699
  %30 = icmp ne %struct._GList* %29, null, !dbg !2700
  br i1 %30, label %31, label %32, !dbg !2701

; <label>:31:                                     ; preds = %24
  call void @signal_stop(), !dbg !2702
  br label %32, !dbg !2702

; <label>:32:                                     ; preds = %15, %22, %31, %24
  ret void, !dbg !2704
}

; Function Attrs: nounwind uwtable
define internal void @sig_complete_alias(%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*) #0 !dbg !2705 {
  %6 = alloca %struct._GList**, align 8
  %7 = alloca %struct._WINDOW_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  store %struct._GList** %0, %struct._GList*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GList*** %6, metadata !2706, metadata !614), !dbg !2707
  store %struct._WINDOW_REC* %1, %struct._WINDOW_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %7, metadata !2708, metadata !614), !dbg !2709
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2710, metadata !614), !dbg !2711
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2712, metadata !614), !dbg !2713
  store i32* %4, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !2714, metadata !614), !dbg !2715
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2716, metadata !614), !dbg !2717
  br label %12, !dbg !2718, !llvm.loop !2719

; <label>:12:                                     ; preds = %5
  %13 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2720
  %14 = icmp ne %struct._GList** %13, null, !dbg !2724
  br i1 %14, label %15, label %16, !dbg !2720

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !2725

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.sig_complete_alias, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i32 0, i32 0)), !dbg !2728
  br label %57, !dbg !2731

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !2732

; <label>:18:                                     ; preds = %17
  br label %19, !dbg !2734, !llvm.loop !2735

; <label>:19:                                     ; preds = %18
  %20 = load i8*, i8** %8, align 8, !dbg !2736
  %21 = icmp ne i8* %20, null, !dbg !2740
  br i1 %21, label %22, label %23, !dbg !2736

; <label>:22:                                     ; preds = %19
  br label %24, !dbg !2741

; <label>:23:                                     ; preds = %19
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.sig_complete_alias, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)), !dbg !2744
  br label %57, !dbg !2747

; <label>:24:                                     ; preds = %22
  br label %25, !dbg !2748

; <label>:25:                                     ; preds = %24
  br label %26, !dbg !2750, !llvm.loop !2751

; <label>:26:                                     ; preds = %25
  %27 = load i8*, i8** %9, align 8, !dbg !2752
  %28 = icmp ne i8* %27, null, !dbg !2756
  br i1 %28, label %29, label %30, !dbg !2752

; <label>:29:                                     ; preds = %26
  br label %31, !dbg !2757

; <label>:30:                                     ; preds = %26
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.sig_complete_alias, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.65, i32 0, i32 0)), !dbg !2760
  br label %57, !dbg !2763

; <label>:31:                                     ; preds = %29
  br label %32, !dbg !2764

; <label>:32:                                     ; preds = %31
  %33 = load i8*, i8** %9, align 8, !dbg !2766
  %34 = load i8, i8* %33, align 1, !dbg !2768
  %35 = sext i8 %34 to i32, !dbg !2768
  %36 = icmp ne i32 %35, 0, !dbg !2769
  br i1 %36, label %37, label %48, !dbg !2770

; <label>:37:                                     ; preds = %32
  %38 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !2771
  %39 = load i8*, i8** %9, align 8, !dbg !2774
  %40 = call i8* @config_get_str(%struct._CONFIG_REC* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* %39, i8* null), !dbg !2775
  store i8* %40, i8** %11, align 8, !dbg !2776
  %41 = icmp ne i8* %40, null, !dbg !2777
  br i1 %41, label %42, label %47, !dbg !2778

; <label>:42:                                     ; preds = %37
  %43 = load i8*, i8** %11, align 8, !dbg !2779
  %44 = call noalias i8* @g_strdup(i8* %43), !dbg !2781
  %45 = call %struct._GList* @g_list_append(%struct._GList* null, i8* %44), !dbg !2782
  %46 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2784
  store %struct._GList* %45, %struct._GList** %46, align 8, !dbg !2785
  call void @signal_stop(), !dbg !2786
  br label %47, !dbg !2787

; <label>:47:                                     ; preds = %42, %37
  br label %57, !dbg !2788

; <label>:48:                                     ; preds = %32
  %49 = load i8*, i8** %8, align 8, !dbg !2789
  %50 = call %struct._GList* @completion_get_aliases(i8* %49), !dbg !2791
  %51 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2792
  store %struct._GList* %50, %struct._GList** %51, align 8, !dbg !2793
  %52 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2794
  %53 = load %struct._GList*, %struct._GList** %52, align 8, !dbg !2796
  %54 = icmp ne %struct._GList* %53, null, !dbg !2797
  br i1 %54, label %55, label %56, !dbg !2798

; <label>:55:                                     ; preds = %48
  call void @signal_stop(), !dbg !2799
  br label %56, !dbg !2799

; <label>:56:                                     ; preds = %55, %48
  br label %57

; <label>:57:                                     ; preds = %16, %23, %30, %56, %47
  ret void, !dbg !2801
}

; Function Attrs: nounwind uwtable
define internal void @sig_complete_window(%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*) #0 !dbg !2802 {
  %6 = alloca %struct._GList**, align 8
  %7 = alloca %struct._WINDOW_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct._WINDOW_REC*, align 8
  %12 = alloca %struct._WI_ITEM_REC*, align 8
  %13 = alloca %struct._GSList*, align 8
  %14 = alloca i32, align 4
  store %struct._GList** %0, %struct._GList*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GList*** %6, metadata !2803, metadata !614), !dbg !2804
  store %struct._WINDOW_REC* %1, %struct._WINDOW_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %7, metadata !2805, metadata !614), !dbg !2806
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2807, metadata !614), !dbg !2808
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2809, metadata !614), !dbg !2810
  store i32* %4, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !2811, metadata !614), !dbg !2812
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %11, metadata !2813, metadata !614), !dbg !2814
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %12, metadata !2815, metadata !614), !dbg !2816
  call void @llvm.dbg.declare(metadata %struct._GSList** %13, metadata !2817, metadata !614), !dbg !2818
  call void @llvm.dbg.declare(metadata i32* %14, metadata !2819, metadata !614), !dbg !2820
  br label %15, !dbg !2821, !llvm.loop !2822

; <label>:15:                                     ; preds = %5
  %16 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2823
  %17 = icmp ne %struct._GList** %16, null, !dbg !2827
  br i1 %17, label %18, label %19, !dbg !2823

; <label>:18:                                     ; preds = %15
  br label %20, !dbg !2828

; <label>:19:                                     ; preds = %15
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sig_complete_window, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i32 0, i32 0)), !dbg !2831
  br label %97, !dbg !2834

; <label>:20:                                     ; preds = %18
  br label %21, !dbg !2835

; <label>:21:                                     ; preds = %20
  br label %22, !dbg !2837, !llvm.loop !2838

; <label>:22:                                     ; preds = %21
  %23 = load i8*, i8** %8, align 8, !dbg !2839
  %24 = icmp ne i8* %23, null, !dbg !2843
  br i1 %24, label %25, label %26, !dbg !2839

; <label>:25:                                     ; preds = %22
  br label %27, !dbg !2844

; <label>:26:                                     ; preds = %22
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sig_complete_window, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)), !dbg !2847
  br label %97, !dbg !2850

; <label>:27:                                     ; preds = %25
  br label %28, !dbg !2851

; <label>:28:                                     ; preds = %27
  %29 = load i8*, i8** %8, align 8, !dbg !2853
  %30 = call i64 @strlen(i8* %29) #7, !dbg !2854
  %31 = trunc i64 %30 to i32, !dbg !2854
  store i32 %31, i32* %14, align 4, !dbg !2855
  %32 = load %struct._GSList*, %struct._GSList** @windows, align 8, !dbg !2856
  store %struct._GSList* %32, %struct._GSList** %13, align 8, !dbg !2858
  br label %33, !dbg !2859

; <label>:33:                                     ; preds = %88, %28
  %34 = load %struct._GSList*, %struct._GSList** %13, align 8, !dbg !2860
  %35 = icmp ne %struct._GSList* %34, null, !dbg !2863
  br i1 %35, label %36, label %92, !dbg !2864

; <label>:36:                                     ; preds = %33
  %37 = load %struct._GSList*, %struct._GSList** %13, align 8, !dbg !2865
  %38 = getelementptr inbounds %struct._GSList, %struct._GSList* %37, i32 0, i32 0, !dbg !2867
  %39 = load i8*, i8** %38, align 8, !dbg !2867
  %40 = bitcast i8* %39 to %struct._WINDOW_REC*, !dbg !2865
  store %struct._WINDOW_REC* %40, %struct._WINDOW_REC** %11, align 8, !dbg !2868
  %41 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %11, align 8, !dbg !2869
  %42 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %41, i32 0, i32 5, !dbg !2870
  %43 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %42, align 8, !dbg !2870
  store %struct._WI_ITEM_REC* %43, %struct._WI_ITEM_REC** %12, align 8, !dbg !2871
  %44 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %11, align 8, !dbg !2872
  %45 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %44, i32 0, i32 1, !dbg !2874
  %46 = load i8*, i8** %45, align 8, !dbg !2874
  %47 = icmp ne i8* %46, null, !dbg !2875
  br i1 %47, label %48, label %66, !dbg !2876

; <label>:48:                                     ; preds = %36
  %49 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %11, align 8, !dbg !2877
  %50 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %49, i32 0, i32 1, !dbg !2879
  %51 = load i8*, i8** %50, align 8, !dbg !2879
  %52 = load i8*, i8** %8, align 8, !dbg !2880
  %53 = load i32, i32* %14, align 4, !dbg !2881
  %54 = sext i32 %53 to i64, !dbg !2881
  %55 = call i32 @g_ascii_strncasecmp(i8* %51, i8* %52, i64 %54), !dbg !2882
  %56 = icmp eq i32 %55, 0, !dbg !2883
  br i1 %56, label %57, label %66, !dbg !2884

; <label>:57:                                     ; preds = %48
  %58 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2885
  %59 = load %struct._GList*, %struct._GList** %58, align 8, !dbg !2886
  %60 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %11, align 8, !dbg !2887
  %61 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %60, i32 0, i32 1, !dbg !2888
  %62 = load i8*, i8** %61, align 8, !dbg !2888
  %63 = call noalias i8* @g_strdup(i8* %62), !dbg !2889
  %64 = call %struct._GList* @g_list_append(%struct._GList* %59, i8* %63), !dbg !2890
  %65 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2891
  store %struct._GList* %64, %struct._GList** %65, align 8, !dbg !2892
  br label %66, !dbg !2893

; <label>:66:                                     ; preds = %57, %48, %36
  %67 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %12, align 8, !dbg !2894
  %68 = icmp ne %struct._WI_ITEM_REC* %67, null, !dbg !2896
  br i1 %68, label %69, label %87, !dbg !2897

; <label>:69:                                     ; preds = %66
  %70 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %12, align 8, !dbg !2898
  %71 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %70, i32 0, i32 5, !dbg !2900
  %72 = load i8*, i8** %71, align 8, !dbg !2900
  %73 = load i8*, i8** %8, align 8, !dbg !2901
  %74 = load i32, i32* %14, align 4, !dbg !2902
  %75 = sext i32 %74 to i64, !dbg !2902
  %76 = call i32 @g_ascii_strncasecmp(i8* %72, i8* %73, i64 %75), !dbg !2903
  %77 = icmp eq i32 %76, 0, !dbg !2904
  br i1 %77, label %78, label %87, !dbg !2905

; <label>:78:                                     ; preds = %69
  %79 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2906
  %80 = load %struct._GList*, %struct._GList** %79, align 8, !dbg !2907
  %81 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %12, align 8, !dbg !2908
  %82 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %81, i32 0, i32 5, !dbg !2909
  %83 = load i8*, i8** %82, align 8, !dbg !2909
  %84 = call noalias i8* @g_strdup(i8* %83), !dbg !2910
  %85 = call %struct._GList* @g_list_append(%struct._GList* %80, i8* %84), !dbg !2911
  %86 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2912
  store %struct._GList* %85, %struct._GList** %86, align 8, !dbg !2913
  br label %87, !dbg !2914

; <label>:87:                                     ; preds = %78, %69, %66
  br label %88, !dbg !2915

; <label>:88:                                     ; preds = %87
  %89 = load %struct._GSList*, %struct._GSList** %13, align 8, !dbg !2916
  %90 = getelementptr inbounds %struct._GSList, %struct._GSList* %89, i32 0, i32 1, !dbg !2918
  %91 = load %struct._GSList*, %struct._GSList** %90, align 8, !dbg !2918
  store %struct._GSList* %91, %struct._GSList** %13, align 8, !dbg !2919
  br label %33, !dbg !2920, !llvm.loop !2921

; <label>:92:                                     ; preds = %33
  %93 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2923
  %94 = load %struct._GList*, %struct._GList** %93, align 8, !dbg !2925
  %95 = icmp ne %struct._GList* %94, null, !dbg !2926
  br i1 %95, label %96, label %97, !dbg !2927

; <label>:96:                                     ; preds = %92
  call void @signal_stop(), !dbg !2928
  br label %97, !dbg !2928

; <label>:97:                                     ; preds = %19, %26, %96, %92
  ret void, !dbg !2930
}

; Function Attrs: nounwind uwtable
define internal void @sig_complete_channel(%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*) #0 !dbg !2931 {
  %6 = alloca %struct._GList**, align 8
  %7 = alloca %struct._WINDOW_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store %struct._GList** %0, %struct._GList*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GList*** %6, metadata !2932, metadata !614), !dbg !2933
  store %struct._WINDOW_REC* %1, %struct._WINDOW_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %7, metadata !2934, metadata !614), !dbg !2935
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2936, metadata !614), !dbg !2937
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2938, metadata !614), !dbg !2939
  store i32* %4, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !2940, metadata !614), !dbg !2941
  br label %11, !dbg !2942, !llvm.loop !2943

; <label>:11:                                     ; preds = %5
  %12 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2944
  %13 = icmp ne %struct._GList** %12, null, !dbg !2948
  br i1 %13, label %14, label %15, !dbg !2944

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !2949

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.sig_complete_channel, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i32 0, i32 0)), !dbg !2952
  br label %32, !dbg !2955

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !2956

; <label>:17:                                     ; preds = %16
  br label %18, !dbg !2958, !llvm.loop !2959

; <label>:18:                                     ; preds = %17
  %19 = load i8*, i8** %8, align 8, !dbg !2960
  %20 = icmp ne i8* %19, null, !dbg !2964
  br i1 %20, label %21, label %22, !dbg !2960

; <label>:21:                                     ; preds = %18
  br label %23, !dbg !2965

; <label>:22:                                     ; preds = %18
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.sig_complete_channel, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)), !dbg !2968
  br label %32, !dbg !2971

; <label>:23:                                     ; preds = %21
  br label %24, !dbg !2972

; <label>:24:                                     ; preds = %23
  %25 = load i8*, i8** %8, align 8, !dbg !2974
  %26 = call %struct._GList* @completion_get_channels(%struct._SERVER_REC* null, i8* %25), !dbg !2975
  %27 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2976
  store %struct._GList* %26, %struct._GList** %27, align 8, !dbg !2977
  %28 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2978
  %29 = load %struct._GList*, %struct._GList** %28, align 8, !dbg !2980
  %30 = icmp ne %struct._GList* %29, null, !dbg !2981
  br i1 %30, label %31, label %32, !dbg !2982

; <label>:31:                                     ; preds = %24
  call void @signal_stop(), !dbg !2983
  br label %32, !dbg !2983

; <label>:32:                                     ; preds = %15, %22, %31, %24
  ret void, !dbg !2985
}

; Function Attrs: nounwind uwtable
define internal void @sig_complete_server(%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*) #0 !dbg !2986 {
  %6 = alloca %struct._GList**, align 8
  %7 = alloca %struct._WINDOW_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store %struct._GList** %0, %struct._GList*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GList*** %6, metadata !2987, metadata !614), !dbg !2988
  store %struct._WINDOW_REC* %1, %struct._WINDOW_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %7, metadata !2989, metadata !614), !dbg !2990
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2991, metadata !614), !dbg !2992
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2993, metadata !614), !dbg !2994
  store i32* %4, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !2995, metadata !614), !dbg !2996
  br label %11, !dbg !2997, !llvm.loop !2998

; <label>:11:                                     ; preds = %5
  %12 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !2999
  %13 = icmp ne %struct._GList** %12, null, !dbg !3003
  br i1 %13, label %14, label %15, !dbg !2999

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !3004

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sig_complete_server, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i32 0, i32 0)), !dbg !3007
  br label %32, !dbg !3010

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !3011

; <label>:17:                                     ; preds = %16
  br label %18, !dbg !3013, !llvm.loop !3014

; <label>:18:                                     ; preds = %17
  %19 = load i8*, i8** %8, align 8, !dbg !3015
  %20 = icmp ne i8* %19, null, !dbg !3019
  br i1 %20, label %21, label %22, !dbg !3015

; <label>:21:                                     ; preds = %18
  br label %23, !dbg !3020

; <label>:22:                                     ; preds = %18
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sig_complete_server, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)), !dbg !3023
  br label %32, !dbg !3026

; <label>:23:                                     ; preds = %21
  br label %24, !dbg !3027

; <label>:24:                                     ; preds = %23
  %25 = load i8*, i8** %8, align 8, !dbg !3029
  %26 = call %struct._GList* @completion_get_servers(i8* %25), !dbg !3030
  %27 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !3031
  store %struct._GList* %26, %struct._GList** %27, align 8, !dbg !3032
  %28 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !3033
  %29 = load %struct._GList*, %struct._GList** %28, align 8, !dbg !3035
  %30 = icmp ne %struct._GList* %29, null, !dbg !3036
  br i1 %30, label %31, label %32, !dbg !3037

; <label>:31:                                     ; preds = %24
  call void @signal_stop(), !dbg !3038
  br label %32, !dbg !3038

; <label>:32:                                     ; preds = %15, %22, %31, %24
  ret void, !dbg !3040
}

; Function Attrs: nounwind uwtable
define internal void @sig_complete_target(%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*) #0 !dbg !3041 {
  %6 = alloca %struct._GList**, align 8
  %7 = alloca %struct._WINDOW_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  store %struct._GList** %0, %struct._GList*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GList*** %6, metadata !3042, metadata !614), !dbg !3043
  store %struct._WINDOW_REC* %1, %struct._WINDOW_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %7, metadata !3044, metadata !614), !dbg !3045
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3046, metadata !614), !dbg !3047
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3048, metadata !614), !dbg !3049
  store i32* %4, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !3050, metadata !614), !dbg !3051
  call void @llvm.dbg.declare(metadata i8** %11, metadata !3052, metadata !614), !dbg !3053
  br label %12, !dbg !3054, !llvm.loop !3055

; <label>:12:                                     ; preds = %5
  %13 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !3056
  %14 = icmp ne %struct._GList** %13, null, !dbg !3060
  br i1 %14, label %15, label %16, !dbg !3056

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !3061

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sig_complete_target, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.56, i32 0, i32 0)), !dbg !3064
  br label %57, !dbg !3067

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !3068

; <label>:18:                                     ; preds = %17
  br label %19, !dbg !3070, !llvm.loop !3071

; <label>:19:                                     ; preds = %18
  %20 = load i8*, i8** %8, align 8, !dbg !3072
  %21 = icmp ne i8* %20, null, !dbg !3076
  br i1 %21, label %22, label %23, !dbg !3072

; <label>:22:                                     ; preds = %19
  br label %24, !dbg !3077

; <label>:23:                                     ; preds = %19
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sig_complete_target, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0)), !dbg !3080
  br label %57, !dbg !3083

; <label>:24:                                     ; preds = %22
  br label %25, !dbg !3084

; <label>:25:                                     ; preds = %24
  br label %26, !dbg !3086, !llvm.loop !3087

; <label>:26:                                     ; preds = %25
  %27 = load i8*, i8** %9, align 8, !dbg !3088
  %28 = icmp ne i8* %27, null, !dbg !3092
  br i1 %28, label %29, label %30, !dbg !3088

; <label>:29:                                     ; preds = %26
  br label %31, !dbg !3093

; <label>:30:                                     ; preds = %26
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sig_complete_target, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.65, i32 0, i32 0)), !dbg !3096
  br label %57, !dbg !3099

; <label>:31:                                     ; preds = %29
  br label %32, !dbg !3100

; <label>:32:                                     ; preds = %31
  %33 = load i8*, i8** %9, align 8, !dbg !3102
  %34 = load i8, i8* %33, align 1, !dbg !3104
  %35 = sext i8 %34 to i32, !dbg !3104
  %36 = icmp ne i32 %35, 0, !dbg !3105
  br i1 %36, label %37, label %48, !dbg !3106

; <label>:37:                                     ; preds = %32
  %38 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !3107
  %39 = load i8*, i8** %9, align 8, !dbg !3110
  %40 = call i8* @config_get_str(%struct._CONFIG_REC* %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* %39, i8* null), !dbg !3111
  store i8* %40, i8** %11, align 8, !dbg !3112
  %41 = icmp ne i8* %40, null, !dbg !3113
  br i1 %41, label %42, label %47, !dbg !3114

; <label>:42:                                     ; preds = %37
  %43 = load i8*, i8** %11, align 8, !dbg !3115
  %44 = call noalias i8* @g_strdup(i8* %43), !dbg !3117
  %45 = call %struct._GList* @g_list_append(%struct._GList* null, i8* %44), !dbg !3118
  %46 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !3120
  store %struct._GList* %45, %struct._GList** %46, align 8, !dbg !3121
  call void @signal_stop(), !dbg !3122
  br label %47, !dbg !3123

; <label>:47:                                     ; preds = %42, %37
  br label %57, !dbg !3124

; <label>:48:                                     ; preds = %32
  %49 = load i8*, i8** %8, align 8, !dbg !3125
  %50 = call %struct._GList* @completion_get_targets(i8* %49), !dbg !3127
  %51 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !3128
  store %struct._GList* %50, %struct._GList** %51, align 8, !dbg !3129
  %52 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !3130
  %53 = load %struct._GList*, %struct._GList** %52, align 8, !dbg !3132
  %54 = icmp ne %struct._GList* %53, null, !dbg !3133
  br i1 %54, label %55, label %56, !dbg !3134

; <label>:55:                                     ; preds = %48
  call void @signal_stop(), !dbg !3135
  br label %56, !dbg !3135

; <label>:56:                                     ; preds = %55, %48
  br label %57

; <label>:57:                                     ; preds = %16, %23, %30, %56, %47
  ret void, !dbg !3137
}

; Function Attrs: nounwind uwtable
define internal void @sig_message_public(%struct._SERVER_REC*, i8*, i8*, i8*, i8*) #0 !dbg !3138 {
  %6 = alloca %struct._SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct._CHANNEL_REC*, align 8
  %12 = alloca i32, align 4
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %6, metadata !3141, metadata !614), !dbg !3142
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3143, metadata !614), !dbg !3144
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3145, metadata !614), !dbg !3146
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3147, metadata !614), !dbg !3148
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3149, metadata !614), !dbg !3150
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %11, metadata !3151, metadata !614), !dbg !3152
  call void @llvm.dbg.declare(metadata i32* %12, metadata !3153, metadata !614), !dbg !3154
  br label %13, !dbg !3155, !llvm.loop !3156

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %8, align 8, !dbg !3157
  %15 = icmp ne i8* %14, null, !dbg !3161
  br i1 %15, label %16, label %17, !dbg !3157

; <label>:16:                                     ; preds = %13
  br label %18, !dbg !3162

; <label>:17:                                     ; preds = %13
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.sig_message_public, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !3165
  br label %41, !dbg !3168

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !3169

; <label>:19:                                     ; preds = %18
  %20 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !3171
  %21 = load i8*, i8** %10, align 8, !dbg !3172
  %22 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %20, i8* %21), !dbg !3173
  store %struct._CHANNEL_REC* %22, %struct._CHANNEL_REC** %11, align 8, !dbg !3174
  %23 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %11, align 8, !dbg !3175
  %24 = icmp ne %struct._CHANNEL_REC* %23, null, !dbg !3177
  br i1 %24, label %25, label %41, !dbg !3178

; <label>:25:                                     ; preds = %19
  %26 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %11, align 8, !dbg !3179
  %27 = load i8*, i8** %7, align 8, !dbg !3181
  %28 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !3182
  %29 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %28, i32 0, i32 7, !dbg !3183
  %30 = load i8*, i8** %29, align 8, !dbg !3183
  %31 = call i32 @nick_match_msg(%struct._CHANNEL_REC* %26, i8* %27, i8* %30), !dbg !3184
  store i32 %31, i32* %12, align 4, !dbg !3185
  %32 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %11, align 8, !dbg !3186
  %33 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %32, i32 0, i32 2, !dbg !3187
  %34 = load %struct._GHashTable*, %struct._GHashTable** %33, align 8, !dbg !3187
  %35 = call i8* @g_hash_table_lookup(%struct._GHashTable* %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0)), !dbg !3188
  %36 = bitcast i8* %35 to %struct.MODULE_CHANNEL_REC*, !dbg !3189
  %37 = getelementptr inbounds %struct.MODULE_CHANNEL_REC, %struct.MODULE_CHANNEL_REC* %36, i32 0, i32 0, !dbg !3190
  %38 = load i8*, i8** %8, align 8, !dbg !3191
  %39 = load i32, i32* %12, align 4, !dbg !3192
  %40 = load i32, i32* @keep_publics_count, align 4, !dbg !3193
  call void @last_msg_add(%struct._GSList** %37, i8* %38, i32 %39, i32 %40), !dbg !3194
  br label %41, !dbg !3196

; <label>:41:                                     ; preds = %17, %25, %19
  ret void, !dbg !3197
}

; Function Attrs: nounwind uwtable
define internal void @sig_message_join(%struct._SERVER_REC*, i8*, i8*, i8*) #0 !dbg !3198 {
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._CHANNEL_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !3201, metadata !614), !dbg !3202
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3203, metadata !614), !dbg !3204
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3205, metadata !614), !dbg !3206
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3207, metadata !614), !dbg !3208
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %9, metadata !3209, metadata !614), !dbg !3210
  br label %10, !dbg !3211, !llvm.loop !3212

; <label>:10:                                     ; preds = %4
  %11 = load i8*, i8** %7, align 8, !dbg !3213
  %12 = icmp ne i8* %11, null, !dbg !3217
  br i1 %12, label %13, label %14, !dbg !3213

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !3218

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.sig_message_join, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !3221
  br label %31, !dbg !3224

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !3225

; <label>:16:                                     ; preds = %15
  %17 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !3227
  %18 = load i8*, i8** %6, align 8, !dbg !3228
  %19 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %17, i8* %18), !dbg !3229
  store %struct._CHANNEL_REC* %19, %struct._CHANNEL_REC** %9, align 8, !dbg !3230
  %20 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %9, align 8, !dbg !3231
  %21 = icmp ne %struct._CHANNEL_REC* %20, null, !dbg !3233
  br i1 %21, label %22, label %31, !dbg !3234

; <label>:22:                                     ; preds = %16
  %23 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %9, align 8, !dbg !3235
  %24 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %23, i32 0, i32 2, !dbg !3236
  %25 = load %struct._GHashTable*, %struct._GHashTable** %24, align 8, !dbg !3236
  %26 = call i8* @g_hash_table_lookup(%struct._GHashTable* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0)), !dbg !3237
  %27 = bitcast i8* %26 to %struct.MODULE_CHANNEL_REC*, !dbg !3238
  %28 = getelementptr inbounds %struct.MODULE_CHANNEL_REC, %struct.MODULE_CHANNEL_REC* %27, i32 0, i32 0, !dbg !3239
  %29 = load i8*, i8** %7, align 8, !dbg !3240
  %30 = load i32, i32* @keep_publics_count, align 4, !dbg !3241
  call void @last_msg_add(%struct._GSList** %28, i8* %29, i32 0, i32 %30), !dbg !3242
  br label %31, !dbg !3244

; <label>:31:                                     ; preds = %14, %22, %16
  ret void, !dbg !3245
}

; Function Attrs: nounwind uwtable
define internal void @sig_message_private(%struct._SERVER_REC*, i8*, i8*, i8*) #0 !dbg !3246 {
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !3247, metadata !614), !dbg !3248
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3249, metadata !614), !dbg !3250
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3251, metadata !614), !dbg !3252
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3253, metadata !614), !dbg !3254
  br label %9, !dbg !3255, !llvm.loop !3256

; <label>:9:                                      ; preds = %4
  %10 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !3257
  %11 = icmp ne %struct._SERVER_REC* %10, null, !dbg !3261
  br i1 %11, label %12, label %13, !dbg !3257

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !3262

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sig_message_private, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.67, i32 0, i32 0)), !dbg !3265
  br label %31, !dbg !3268

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !3269

; <label>:15:                                     ; preds = %14
  br label %16, !dbg !3271, !llvm.loop !3272

; <label>:16:                                     ; preds = %15
  %17 = load i8*, i8** %7, align 8, !dbg !3273
  %18 = icmp ne i8* %17, null, !dbg !3277
  br i1 %18, label %19, label %20, !dbg !3273

; <label>:19:                                     ; preds = %16
  br label %21, !dbg !3278

; <label>:20:                                     ; preds = %16
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.sig_message_private, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !3281
  br label %31, !dbg !3284

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !3285

; <label>:22:                                     ; preds = %21
  %23 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !3287
  %24 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %23, i32 0, i32 15, !dbg !3288
  %25 = load %struct._GHashTable*, %struct._GHashTable** %24, align 8, !dbg !3288
  %26 = call i8* @g_hash_table_lookup(%struct._GHashTable* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0)), !dbg !3289
  %27 = bitcast i8* %26 to %struct.MODULE_SERVER_REC*, !dbg !3290
  %28 = getelementptr inbounds %struct.MODULE_SERVER_REC, %struct.MODULE_SERVER_REC* %27, i32 0, i32 0, !dbg !3291
  %29 = load i8*, i8** %7, align 8, !dbg !3292
  %30 = load i32, i32* @keep_privates_count, align 4, !dbg !3293
  call void @last_msg_add(%struct._GSList** %28, i8* %29, i32 1, i32 %30), !dbg !3294
  br label %31, !dbg !3296

; <label>:31:                                     ; preds = %22, %20, %13
  ret void, !dbg !3297
}

; Function Attrs: nounwind uwtable
define internal void @sig_message_own_public(%struct._SERVER_REC*, i8*, i8*, i8*) #0 !dbg !3298 {
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._CHANNEL_REC*, align 8
  %10 = alloca %struct._NICK_REC*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !3299, metadata !614), !dbg !3300
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3301, metadata !614), !dbg !3302
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3303, metadata !614), !dbg !3304
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3305, metadata !614), !dbg !3306
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %9, metadata !3307, metadata !614), !dbg !3308
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %10, metadata !3309, metadata !614), !dbg !3310
  call void @llvm.dbg.declare(metadata i8** %11, metadata !3311, metadata !614), !dbg !3312
  call void @llvm.dbg.declare(metadata i8** %12, metadata !3313, metadata !614), !dbg !3314
  br label %13, !dbg !3315, !llvm.loop !3316

; <label>:13:                                     ; preds = %4
  %14 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !3317
  %15 = icmp ne %struct._SERVER_REC* %14, null, !dbg !3321
  br i1 %15, label %16, label %17, !dbg !3317

; <label>:16:                                     ; preds = %13
  br label %18, !dbg !3322

; <label>:17:                                     ; preds = %13
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.sig_message_own_public, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.67, i32 0, i32 0)), !dbg !3325
  br label %98, !dbg !3328

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !3329

; <label>:19:                                     ; preds = %18
  br label %20, !dbg !3331, !llvm.loop !3332

; <label>:20:                                     ; preds = %19
  %21 = load i8*, i8** %6, align 8, !dbg !3333
  %22 = icmp ne i8* %21, null, !dbg !3337
  br i1 %22, label %23, label %24, !dbg !3333

; <label>:23:                                     ; preds = %20
  br label %25, !dbg !3338

; <label>:24:                                     ; preds = %20
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.sig_message_own_public, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.68, i32 0, i32 0)), !dbg !3341
  br label %98, !dbg !3344

; <label>:25:                                     ; preds = %23
  br label %26, !dbg !3345

; <label>:26:                                     ; preds = %25
  %27 = load i8*, i8** %7, align 8, !dbg !3347
  %28 = icmp eq i8* %27, null, !dbg !3349
  br i1 %28, label %29, label %30, !dbg !3350

; <label>:29:                                     ; preds = %26
  br label %98, !dbg !3351

; <label>:30:                                     ; preds = %26
  %31 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !3353
  %32 = load i8*, i8** %7, align 8, !dbg !3354
  %33 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %31, i8* %32), !dbg !3355
  store %struct._CHANNEL_REC* %33, %struct._CHANNEL_REC** %9, align 8, !dbg !3356
  %34 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %9, align 8, !dbg !3357
  %35 = icmp eq %struct._CHANNEL_REC* %34, null, !dbg !3359
  br i1 %35, label %36, label %37, !dbg !3360

; <label>:36:                                     ; preds = %30
  br label %98, !dbg !3361

; <label>:37:                                     ; preds = %30
  %38 = load i8*, i8** %6, align 8, !dbg !3362
  %39 = call i8* @strchr(i8* %38, i32 32) #7, !dbg !3363
  store i8* %39, i8** %11, align 8, !dbg !3364
  %40 = load i8*, i8** %11, align 8, !dbg !3365
  %41 = icmp ne i8* %40, null, !dbg !3367
  br i1 %41, label %42, label %98, !dbg !3368

; <label>:42:                                     ; preds = %37
  %43 = load i8*, i8** %11, align 8, !dbg !3369
  %44 = load i8*, i8** %6, align 8, !dbg !3371
  %45 = icmp ne i8* %43, %44, !dbg !3372
  br i1 %45, label %46, label %98, !dbg !3373

; <label>:46:                                     ; preds = %42
  %47 = load i8*, i8** %6, align 8, !dbg !3374
  %48 = load i8*, i8** %11, align 8, !dbg !3376
  %49 = load i8*, i8** %6, align 8, !dbg !3377
  %50 = ptrtoint i8* %48 to i64, !dbg !3378
  %51 = ptrtoint i8* %49 to i64, !dbg !3378
  %52 = sub i64 %50, %51, !dbg !3378
  %53 = trunc i64 %52 to i32, !dbg !3379
  %54 = sext i32 %53 to i64, !dbg !3379
  %55 = call noalias i8* @g_strndup(i8* %47, i64 %54), !dbg !3380
  store i8* %55, i8** %12, align 8, !dbg !3381
  %56 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %9, align 8, !dbg !3382
  %57 = load i8*, i8** %12, align 8, !dbg !3383
  %58 = call %struct._NICK_REC* @nicklist_find(%struct._CHANNEL_REC* %56, i8* %57), !dbg !3384
  store %struct._NICK_REC* %58, %struct._NICK_REC** %10, align 8, !dbg !3385
  %59 = load %struct._NICK_REC*, %struct._NICK_REC** %10, align 8, !dbg !3386
  %60 = icmp eq %struct._NICK_REC* %59, null, !dbg !3388
  br i1 %60, label %61, label %76, !dbg !3389

; <label>:61:                                     ; preds = %46
  %62 = load i8*, i8** %12, align 8, !dbg !3390
  %63 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !3390
  %64 = load i8, i8* %63, align 1, !dbg !3390
  %65 = sext i8 %64 to i32, !dbg !3390
  %66 = icmp ne i32 %65, 0, !dbg !3392
  br i1 %66, label %67, label %76, !dbg !3393

; <label>:67:                                     ; preds = %61
  %68 = load i8*, i8** %12, align 8, !dbg !3394
  %69 = call i64 @strlen(i8* %68) #7, !dbg !3396
  %70 = sub i64 %69, 1, !dbg !3397
  %71 = load i8*, i8** %12, align 8, !dbg !3398
  %72 = getelementptr inbounds i8, i8* %71, i64 %70, !dbg !3398
  store i8 0, i8* %72, align 1, !dbg !3399
  %73 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %9, align 8, !dbg !3400
  %74 = load i8*, i8** %12, align 8, !dbg !3401
  %75 = call %struct._NICK_REC* @nicklist_find(%struct._CHANNEL_REC* %73, i8* %74), !dbg !3402
  store %struct._NICK_REC* %75, %struct._NICK_REC** %10, align 8, !dbg !3403
  br label %76, !dbg !3404

; <label>:76:                                     ; preds = %67, %61, %46
  %77 = load i8*, i8** %12, align 8, !dbg !3405
  call void @g_free(i8* %77), !dbg !3406
  %78 = load %struct._NICK_REC*, %struct._NICK_REC** %10, align 8, !dbg !3407
  %79 = icmp ne %struct._NICK_REC* %78, null, !dbg !3409
  br i1 %79, label %80, label %97, !dbg !3410

; <label>:80:                                     ; preds = %76
  %81 = load %struct._NICK_REC*, %struct._NICK_REC** %10, align 8, !dbg !3411
  %82 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %9, align 8, !dbg !3413
  %83 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %82, i32 0, i32 16, !dbg !3414
  %84 = load %struct._NICK_REC*, %struct._NICK_REC** %83, align 8, !dbg !3414
  %85 = icmp ne %struct._NICK_REC* %81, %84, !dbg !3415
  br i1 %85, label %86, label %97, !dbg !3416

; <label>:86:                                     ; preds = %80
  %87 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %9, align 8, !dbg !3417
  %88 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %87, i32 0, i32 2, !dbg !3418
  %89 = load %struct._GHashTable*, %struct._GHashTable** %88, align 8, !dbg !3418
  %90 = call i8* @g_hash_table_lookup(%struct._GHashTable* %89, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0)), !dbg !3419
  %91 = bitcast i8* %90 to %struct.MODULE_CHANNEL_REC*, !dbg !3420
  %92 = getelementptr inbounds %struct.MODULE_CHANNEL_REC, %struct.MODULE_CHANNEL_REC* %91, i32 0, i32 0, !dbg !3421
  %93 = load %struct._NICK_REC*, %struct._NICK_REC** %10, align 8, !dbg !3422
  %94 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %93, i32 0, i32 3, !dbg !3423
  %95 = load i8*, i8** %94, align 8, !dbg !3423
  %96 = load i32, i32* @keep_publics_count, align 4, !dbg !3424
  call void @last_msg_add(%struct._GSList** %92, i8* %95, i32 1, i32 %96), !dbg !3425
  br label %97, !dbg !3426

; <label>:97:                                     ; preds = %86, %80, %76
  br label %98, !dbg !3427

; <label>:98:                                     ; preds = %17, %24, %29, %36, %97, %42, %37
  ret void, !dbg !3428
}

; Function Attrs: nounwind uwtable
define internal void @sig_message_own_private(%struct._SERVER_REC*, i8*, i8*, i8*) #0 !dbg !3429 {
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !3430, metadata !614), !dbg !3431
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3432, metadata !614), !dbg !3433
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3434, metadata !614), !dbg !3435
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3436, metadata !614), !dbg !3437
  br label %9, !dbg !3438, !llvm.loop !3439

; <label>:9:                                      ; preds = %4
  %10 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !3440
  %11 = icmp ne %struct._SERVER_REC* %10, null, !dbg !3444
  br i1 %11, label %12, label %13, !dbg !3440

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !3445

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.sig_message_own_private, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.67, i32 0, i32 0)), !dbg !3448
  br label %32, !dbg !3451

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !3452

; <label>:15:                                     ; preds = %14
  %16 = load i8*, i8** %7, align 8, !dbg !3454
  %17 = icmp ne i8* %16, null, !dbg !3456
  br i1 %17, label %18, label %32, !dbg !3457

; <label>:18:                                     ; preds = %15
  %19 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !3458
  %20 = load i8*, i8** %7, align 8, !dbg !3460
  %21 = call %struct._QUERY_REC* @query_find(%struct._SERVER_REC* %19, i8* %20), !dbg !3461
  %22 = icmp eq %struct._QUERY_REC* %21, null, !dbg !3462
  br i1 %22, label %23, label %32, !dbg !3463

; <label>:23:                                     ; preds = %18
  %24 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !3464
  %25 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %24, i32 0, i32 15, !dbg !3465
  %26 = load %struct._GHashTable*, %struct._GHashTable** %25, align 8, !dbg !3465
  %27 = call i8* @g_hash_table_lookup(%struct._GHashTable* %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0)), !dbg !3466
  %28 = bitcast i8* %27 to %struct.MODULE_SERVER_REC*, !dbg !3467
  %29 = getelementptr inbounds %struct.MODULE_SERVER_REC, %struct.MODULE_SERVER_REC* %28, i32 0, i32 0, !dbg !3468
  %30 = load i8*, i8** %7, align 8, !dbg !3469
  %31 = load i32, i32* @keep_privates_count, align 4, !dbg !3470
  call void @last_msg_add(%struct._GSList** %29, i8* %30, i32 1, i32 %31), !dbg !3471
  br label %32, !dbg !3472

; <label>:32:                                     ; preds = %13, %23, %18, %15
  ret void, !dbg !3473
}

; Function Attrs: nounwind uwtable
define internal void @sig_nick_removed(%struct._CHANNEL_REC*, %struct._NICK_REC*) #0 !dbg !3474 {
  %3 = alloca %struct._CHANNEL_REC*, align 8
  %4 = alloca %struct._NICK_REC*, align 8
  %5 = alloca %struct.MODULE_CHANNEL_REC*, align 8
  %6 = alloca %struct.LAST_MSG_REC*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %3, metadata !3477, metadata !614), !dbg !3478
  store %struct._NICK_REC* %1, %struct._NICK_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %4, metadata !3479, metadata !614), !dbg !3480
  call void @llvm.dbg.declare(metadata %struct.MODULE_CHANNEL_REC** %5, metadata !3481, metadata !614), !dbg !3482
  call void @llvm.dbg.declare(metadata %struct.LAST_MSG_REC** %6, metadata !3483, metadata !614), !dbg !3484
  %7 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !3485
  %8 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %7, i32 0, i32 2, !dbg !3486
  %9 = load %struct._GHashTable*, %struct._GHashTable** %8, align 8, !dbg !3486
  %10 = call i8* @g_hash_table_lookup(%struct._GHashTable* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0)), !dbg !3487
  %11 = bitcast i8* %10 to %struct.MODULE_CHANNEL_REC*, !dbg !3487
  store %struct.MODULE_CHANNEL_REC* %11, %struct.MODULE_CHANNEL_REC** %5, align 8, !dbg !3488
  %12 = load %struct.MODULE_CHANNEL_REC*, %struct.MODULE_CHANNEL_REC** %5, align 8, !dbg !3489
  %13 = getelementptr inbounds %struct.MODULE_CHANNEL_REC, %struct.MODULE_CHANNEL_REC* %12, i32 0, i32 0, !dbg !3490
  %14 = load %struct._GSList*, %struct._GSList** %13, align 8, !dbg !3490
  %15 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !3491
  %16 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %15, i32 0, i32 3, !dbg !3492
  %17 = load i8*, i8** %16, align 8, !dbg !3492
  %18 = call %struct.LAST_MSG_REC* @last_msg_find(%struct._GSList* %14, i8* %17), !dbg !3493
  store %struct.LAST_MSG_REC* %18, %struct.LAST_MSG_REC** %6, align 8, !dbg !3494
  %19 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %6, align 8, !dbg !3495
  %20 = icmp ne %struct.LAST_MSG_REC* %19, null, !dbg !3497
  br i1 %20, label %21, label %25, !dbg !3498

; <label>:21:                                     ; preds = %2
  %22 = load %struct.MODULE_CHANNEL_REC*, %struct.MODULE_CHANNEL_REC** %5, align 8, !dbg !3499
  %23 = getelementptr inbounds %struct.MODULE_CHANNEL_REC, %struct.MODULE_CHANNEL_REC* %22, i32 0, i32 0, !dbg !3501
  %24 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %6, align 8, !dbg !3502
  call void @last_msg_destroy(%struct._GSList** %23, %struct.LAST_MSG_REC* %24), !dbg !3503
  br label %25, !dbg !3503

; <label>:25:                                     ; preds = %21, %2
  ret void, !dbg !3504
}

; Function Attrs: nounwind uwtable
define internal void @sig_nick_changed(%struct._CHANNEL_REC*, %struct._NICK_REC*, i8*) #0 !dbg !3505 {
  %4 = alloca %struct._CHANNEL_REC*, align 8
  %5 = alloca %struct._NICK_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.MODULE_CHANNEL_REC*, align 8
  %8 = alloca %struct.LAST_MSG_REC*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %4, metadata !3508, metadata !614), !dbg !3509
  store %struct._NICK_REC* %1, %struct._NICK_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %5, metadata !3510, metadata !614), !dbg !3511
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3512, metadata !614), !dbg !3513
  call void @llvm.dbg.declare(metadata %struct.MODULE_CHANNEL_REC** %7, metadata !3514, metadata !614), !dbg !3515
  call void @llvm.dbg.declare(metadata %struct.LAST_MSG_REC** %8, metadata !3516, metadata !614), !dbg !3517
  %9 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %4, align 8, !dbg !3518
  %10 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %9, i32 0, i32 2, !dbg !3519
  %11 = load %struct._GHashTable*, %struct._GHashTable** %10, align 8, !dbg !3519
  %12 = call i8* @g_hash_table_lookup(%struct._GHashTable* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0)), !dbg !3520
  %13 = bitcast i8* %12 to %struct.MODULE_CHANNEL_REC*, !dbg !3520
  store %struct.MODULE_CHANNEL_REC* %13, %struct.MODULE_CHANNEL_REC** %7, align 8, !dbg !3521
  %14 = load %struct.MODULE_CHANNEL_REC*, %struct.MODULE_CHANNEL_REC** %7, align 8, !dbg !3522
  %15 = getelementptr inbounds %struct.MODULE_CHANNEL_REC, %struct.MODULE_CHANNEL_REC* %14, i32 0, i32 0, !dbg !3523
  %16 = load %struct._GSList*, %struct._GSList** %15, align 8, !dbg !3523
  %17 = load i8*, i8** %6, align 8, !dbg !3524
  %18 = call %struct.LAST_MSG_REC* @last_msg_find(%struct._GSList* %16, i8* %17), !dbg !3525
  store %struct.LAST_MSG_REC* %18, %struct.LAST_MSG_REC** %8, align 8, !dbg !3526
  %19 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %8, align 8, !dbg !3527
  %20 = icmp ne %struct.LAST_MSG_REC* %19, null, !dbg !3529
  br i1 %20, label %21, label %31, !dbg !3530

; <label>:21:                                     ; preds = %3
  %22 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %8, align 8, !dbg !3531
  %23 = getelementptr inbounds %struct.LAST_MSG_REC, %struct.LAST_MSG_REC* %22, i32 0, i32 1, !dbg !3533
  %24 = load i8*, i8** %23, align 8, !dbg !3533
  call void @g_free(i8* %24), !dbg !3534
  %25 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !3535
  %26 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %25, i32 0, i32 3, !dbg !3536
  %27 = load i8*, i8** %26, align 8, !dbg !3536
  %28 = call noalias i8* @g_strdup(i8* %27), !dbg !3537
  %29 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %8, align 8, !dbg !3538
  %30 = getelementptr inbounds %struct.LAST_MSG_REC, %struct.LAST_MSG_REC* %29, i32 0, i32 1, !dbg !3539
  store i8* %28, i8** %30, align 8, !dbg !3540
  br label %31, !dbg !3541

; <label>:31:                                     ; preds = %21, %3
  ret void, !dbg !3542
}

; Function Attrs: nounwind uwtable
define internal void @event_text(i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !3543 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3546, metadata !614), !dbg !3547
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !3548, metadata !614), !dbg !3549
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !3550, metadata !614), !dbg !3551
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3552, metadata !614), !dbg !3553
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3554, metadata !614), !dbg !3555
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3556, metadata !614), !dbg !3557
  br label %10, !dbg !3558, !llvm.loop !3559

; <label>:10:                                     ; preds = %3
  %11 = load i8*, i8** %4, align 8, !dbg !3560
  %12 = icmp ne i8* %11, null, !dbg !3564
  br i1 %12, label %13, label %14, !dbg !3560

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !3565

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.event_text, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.69, i32 0, i32 0)), !dbg !3568
  br label %98, !dbg !3571

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !3572

; <label>:16:                                     ; preds = %15
  %17 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !3574
  %18 = icmp eq %struct._WI_ITEM_REC* %17, null, !dbg !3576
  br i1 %18, label %19, label %20, !dbg !3577

; <label>:19:                                     ; preds = %16
  br label %98, !dbg !3578

; <label>:20:                                     ; preds = %16
  %21 = load i8*, i8** %4, align 8, !dbg !3579
  %22 = load i8, i8* %21, align 1, !dbg !3581
  %23 = sext i8 %22 to i32, !dbg !3581
  %24 = icmp eq i32 %23, 0, !dbg !3582
  br i1 %24, label %25, label %26, !dbg !3583

; <label>:25:                                     ; preds = %20
  call void @signal_stop(), !dbg !3584
  br label %98, !dbg !3586

; <label>:26:                                     ; preds = %20
  %27 = call i32 @settings_get_bool(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0)), !dbg !3587
  %28 = icmp ne i32 %27, 0, !dbg !3587
  br i1 %28, label %29, label %34, !dbg !3587

; <label>:29:                                     ; preds = %26
  %30 = load i8*, i8** %4, align 8, !dbg !3588
  %31 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !3589
  %32 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !3590
  %33 = call i8* @expand_escapes(i8* %30, %struct._SERVER_REC* %31, %struct._WI_ITEM_REC* %32), !dbg !3591
  br label %37, !dbg !3592

; <label>:34:                                     ; preds = %26
  %35 = load i8*, i8** %4, align 8, !dbg !3594
  %36 = call noalias i8* @g_strdup(i8* %35), !dbg !3595
  br label %37, !dbg !3596

; <label>:37:                                     ; preds = %34, %29
  %38 = phi i8* [ %33, %29 ], [ %36, %34 ], !dbg !3598
  store i8* %38, i8** %7, align 8, !dbg !3600
  %39 = load i32, i32* @completion_auto, align 4, !dbg !3601
  %40 = icmp ne i32 %39, 0, !dbg !3601
  br i1 %40, label %41, label %62, !dbg !3603

; <label>:41:                                     ; preds = %37
  %42 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !3604
  %43 = bitcast %struct._WI_ITEM_REC* %42 to i8*, !dbg !3604
  %44 = call i8* @module_check_cast_module(i8* %43, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0)), !dbg !3606
  %45 = bitcast i8* %44 to %struct._CHANNEL_REC*, !dbg !3607
  %46 = icmp ne %struct._CHANNEL_REC* %45, null, !dbg !3607
  br i1 %46, label %47, label %48, !dbg !3608

; <label>:47:                                     ; preds = %41
  br i1 false, label %62, label %49, !dbg !3609

; <label>:48:                                     ; preds = %41
  br i1 false, label %49, label %62, !dbg !3611

; <label>:49:                                     ; preds = %48, %47
  %50 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !3612
  %51 = bitcast %struct._WI_ITEM_REC* %50 to i8*, !dbg !3612
  %52 = call i8* @module_check_cast_module(i8* %51, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0)), !dbg !3614
  %53 = bitcast i8* %52 to %struct._CHANNEL_REC*, !dbg !3615
  %54 = load i8*, i8** %7, align 8, !dbg !3616
  %55 = call i8* @auto_complete(%struct._CHANNEL_REC* %53, i8* %54), !dbg !3617
  store i8* %55, i8** %8, align 8, !dbg !3619
  %56 = load i8*, i8** %8, align 8, !dbg !3620
  %57 = icmp ne i8* %56, null, !dbg !3622
  br i1 %57, label %58, label %61, !dbg !3623

; <label>:58:                                     ; preds = %49
  %59 = load i8*, i8** %7, align 8, !dbg !3624
  call void @g_free(i8* %59), !dbg !3626
  %60 = load i8*, i8** %8, align 8, !dbg !3627
  store i8* %60, i8** %7, align 8, !dbg !3628
  br label %61, !dbg !3629

; <label>:61:                                     ; preds = %58, %49
  br label %62, !dbg !3630

; <label>:62:                                     ; preds = %61, %48, %47, %37
  %63 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !3631
  %64 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %63, i32 0, i32 11, !dbg !3632
  %65 = load i8* (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)** %64, align 8, !dbg !3632
  %66 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !3633
  %67 = call i8* %65(%struct._WI_ITEM_REC* %66), !dbg !3634
  %68 = call i8* @escape_string(i8* %67), !dbg !3635
  store i8* %68, i8** %9, align 8, !dbg !3636
  %69 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !3637
  %70 = bitcast %struct._WI_ITEM_REC* %69 to i8*, !dbg !3637
  %71 = call i8* @module_check_cast_module(i8* %70, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0)), !dbg !3638
  %72 = bitcast i8* %71 to %struct._CHANNEL_REC*, !dbg !3639
  %73 = icmp ne %struct._CHANNEL_REC* %72, null, !dbg !3639
  br i1 %73, label %74, label %75, !dbg !3640

; <label>:74:                                     ; preds = %62
  br i1 false, label %77, label %76, !dbg !3641

; <label>:75:                                     ; preds = %62
  br i1 false, label %76, label %77, !dbg !3642

; <label>:76:                                     ; preds = %75, %74
  br label %86, !dbg !3643

; <label>:77:                                     ; preds = %75, %74
  %78 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !3644
  %79 = bitcast %struct._WI_ITEM_REC* %78 to i8*, !dbg !3644
  %80 = call i8* @module_check_cast_module(i8* %79, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0)), !dbg !3645
  %81 = bitcast i8* %80 to %struct._QUERY_REC*, !dbg !3646
  %82 = icmp ne %struct._QUERY_REC* %81, null, !dbg !3647
  %83 = select i1 %82, i32 1, i32 0, !dbg !3647
  %84 = icmp ne i32 %83, 0, !dbg !3648
  %85 = select i1 %84, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0), !dbg !3648
  br label %86, !dbg !3649

; <label>:86:                                     ; preds = %77, %76
  %87 = phi i8* [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i32 0, i32 0), %76 ], [ %85, %77 ], !dbg !3651
  %88 = load i8*, i8** %9, align 8, !dbg !3653
  %89 = load i8*, i8** %7, align 8, !dbg !3654
  %90 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %87, i8* %88, i8* %89), !dbg !3655
  store i8* %90, i8** %8, align 8, !dbg !3656
  %91 = load i8*, i8** %9, align 8, !dbg !3657
  call void @g_free(i8* %91), !dbg !3658
  %92 = load i8*, i8** %8, align 8, !dbg !3659
  %93 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !3660
  %94 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !3661
  %95 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i32 0, i32 0), i32 3, i8* %92, %struct._SERVER_REC* %93, %struct._WI_ITEM_REC* %94), !dbg !3662
  %96 = load i8*, i8** %8, align 8, !dbg !3663
  call void @g_free(i8* %96), !dbg !3664
  %97 = load i8*, i8** %7, align 8, !dbg !3665
  call void @g_free(i8* %97), !dbg !3666
  call void @signal_stop(), !dbg !3667
  br label %98, !dbg !3668

; <label>:98:                                     ; preds = %86, %25, %19, %14
  ret void, !dbg !3669
}

; Function Attrs: nounwind uwtable
define internal void @sig_server_disconnected(%struct._SERVER_REC*) #0 !dbg !3670 {
  %2 = alloca %struct._SERVER_REC*, align 8
  %3 = alloca %struct.MODULE_SERVER_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %2, metadata !3673, metadata !614), !dbg !3674
  call void @llvm.dbg.declare(metadata %struct.MODULE_SERVER_REC** %3, metadata !3675, metadata !614), !dbg !3676
  br label %4, !dbg !3677, !llvm.loop !3678

; <label>:4:                                      ; preds = %1
  %5 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !3679
  %6 = icmp ne %struct._SERVER_REC* %5, null, !dbg !3683
  br i1 %6, label %7, label %8, !dbg !3679

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !3684

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.sig_server_disconnected, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.67, i32 0, i32 0)), !dbg !3687
  br label %30, !dbg !3690

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !3691

; <label>:10:                                     ; preds = %9
  %11 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !3693
  %12 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %11, i32 0, i32 15, !dbg !3694
  %13 = load %struct._GHashTable*, %struct._GHashTable** %12, align 8, !dbg !3694
  %14 = call i8* @g_hash_table_lookup(%struct._GHashTable* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0)), !dbg !3695
  %15 = bitcast i8* %14 to %struct.MODULE_SERVER_REC*, !dbg !3695
  store %struct.MODULE_SERVER_REC* %15, %struct.MODULE_SERVER_REC** %3, align 8, !dbg !3696
  br label %16, !dbg !3697

; <label>:16:                                     ; preds = %21, %10
  %17 = load %struct.MODULE_SERVER_REC*, %struct.MODULE_SERVER_REC** %3, align 8, !dbg !3698
  %18 = getelementptr inbounds %struct.MODULE_SERVER_REC, %struct.MODULE_SERVER_REC* %17, i32 0, i32 0, !dbg !3700
  %19 = load %struct._GSList*, %struct._GSList** %18, align 8, !dbg !3700
  %20 = icmp ne %struct._GSList* %19, null, !dbg !3701
  br i1 %20, label %21, label %30, !dbg !3701

; <label>:21:                                     ; preds = %16
  %22 = load %struct.MODULE_SERVER_REC*, %struct.MODULE_SERVER_REC** %3, align 8, !dbg !3702
  %23 = getelementptr inbounds %struct.MODULE_SERVER_REC, %struct.MODULE_SERVER_REC* %22, i32 0, i32 0, !dbg !3703
  %24 = load %struct.MODULE_SERVER_REC*, %struct.MODULE_SERVER_REC** %3, align 8, !dbg !3704
  %25 = getelementptr inbounds %struct.MODULE_SERVER_REC, %struct.MODULE_SERVER_REC* %24, i32 0, i32 0, !dbg !3705
  %26 = load %struct._GSList*, %struct._GSList** %25, align 8, !dbg !3705
  %27 = getelementptr inbounds %struct._GSList, %struct._GSList* %26, i32 0, i32 0, !dbg !3706
  %28 = load i8*, i8** %27, align 8, !dbg !3706
  %29 = bitcast i8* %28 to %struct.LAST_MSG_REC*, !dbg !3704
  call void @last_msg_destroy(%struct._GSList** %23, %struct.LAST_MSG_REC* %29), !dbg !3707
  br label %16, !dbg !3708, !llvm.loop !3710

; <label>:30:                                     ; preds = %8, %16
  ret void, !dbg !3711
}

; Function Attrs: nounwind uwtable
define internal void @sig_channel_destroyed(%struct._CHANNEL_REC*) #0 !dbg !3712 {
  %2 = alloca %struct._CHANNEL_REC*, align 8
  %3 = alloca %struct.MODULE_CHANNEL_REC*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %2, metadata !3715, metadata !614), !dbg !3716
  call void @llvm.dbg.declare(metadata %struct.MODULE_CHANNEL_REC** %3, metadata !3717, metadata !614), !dbg !3718
  br label %4, !dbg !3719, !llvm.loop !3720

; <label>:4:                                      ; preds = %1
  %5 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !3721
  %6 = icmp ne %struct._CHANNEL_REC* %5, null, !dbg !3725
  br i1 %6, label %7, label %8, !dbg !3721

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !3726

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.sig_channel_destroyed, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.64, i32 0, i32 0)), !dbg !3729
  br label %30, !dbg !3732

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !3733

; <label>:10:                                     ; preds = %9
  %11 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !3735
  %12 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %11, i32 0, i32 2, !dbg !3736
  %13 = load %struct._GHashTable*, %struct._GHashTable** %12, align 8, !dbg !3736
  %14 = call i8* @g_hash_table_lookup(%struct._GHashTable* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0)), !dbg !3737
  %15 = bitcast i8* %14 to %struct.MODULE_CHANNEL_REC*, !dbg !3737
  store %struct.MODULE_CHANNEL_REC* %15, %struct.MODULE_CHANNEL_REC** %3, align 8, !dbg !3738
  br label %16, !dbg !3739

; <label>:16:                                     ; preds = %21, %10
  %17 = load %struct.MODULE_CHANNEL_REC*, %struct.MODULE_CHANNEL_REC** %3, align 8, !dbg !3740
  %18 = getelementptr inbounds %struct.MODULE_CHANNEL_REC, %struct.MODULE_CHANNEL_REC* %17, i32 0, i32 0, !dbg !3742
  %19 = load %struct._GSList*, %struct._GSList** %18, align 8, !dbg !3742
  %20 = icmp ne %struct._GSList* %19, null, !dbg !3743
  br i1 %20, label %21, label %30, !dbg !3744

; <label>:21:                                     ; preds = %16
  %22 = load %struct.MODULE_CHANNEL_REC*, %struct.MODULE_CHANNEL_REC** %3, align 8, !dbg !3745
  %23 = getelementptr inbounds %struct.MODULE_CHANNEL_REC, %struct.MODULE_CHANNEL_REC* %22, i32 0, i32 0, !dbg !3747
  %24 = load %struct.MODULE_CHANNEL_REC*, %struct.MODULE_CHANNEL_REC** %3, align 8, !dbg !3748
  %25 = getelementptr inbounds %struct.MODULE_CHANNEL_REC, %struct.MODULE_CHANNEL_REC* %24, i32 0, i32 0, !dbg !3749
  %26 = load %struct._GSList*, %struct._GSList** %25, align 8, !dbg !3749
  %27 = getelementptr inbounds %struct._GSList, %struct._GSList* %26, i32 0, i32 0, !dbg !3750
  %28 = load i8*, i8** %27, align 8, !dbg !3750
  %29 = bitcast i8* %28 to %struct.LAST_MSG_REC*, !dbg !3748
  call void @last_msg_destroy(%struct._GSList** %23, %struct.LAST_MSG_REC* %29), !dbg !3751
  br label %16, !dbg !3752, !llvm.loop !3754

; <label>:30:                                     ; preds = %8, %16
  ret void, !dbg !3755
}

; Function Attrs: nounwind uwtable
define void @chat_completion_deinit() #0 !dbg !3756 {
  br label %1, !dbg !3757

; <label>:1:                                      ; preds = %4, %0
  %2 = load %struct._GSList*, %struct._GSList** @global_lastmsgs, align 8, !dbg !3758
  %3 = icmp ne %struct._GSList* %2, null, !dbg !3760
  br i1 %3, label %4, label %9, !dbg !3761

; <label>:4:                                      ; preds = %1
  %5 = load %struct._GSList*, %struct._GSList** @global_lastmsgs, align 8, !dbg !3762
  %6 = getelementptr inbounds %struct._GSList, %struct._GSList* %5, i32 0, i32 0, !dbg !3763
  %7 = load i8*, i8** %6, align 8, !dbg !3763
  %8 = bitcast i8* %7 to %struct.LAST_MSG_REC*, !dbg !3762
  call void @last_msg_destroy(%struct._GSList** @global_lastmsgs, %struct.LAST_MSG_REC* %8), !dbg !3764
  br label %1, !dbg !3765, !llvm.loop !3767

; <label>:9:                                      ; preds = %1
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_word to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3768
  call void @signal_remove_full(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_msg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3769
  call void @signal_remove_full(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_msg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3770
  call void @signal_remove_full(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_msg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3771
  call void @signal_remove_full(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*, i8*, i8*)* @sig_erase_complete_msg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3772
  call void @signal_remove_full(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.27, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*, i8*, i8*)* @sig_erase_complete_msg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3773
  call void @signal_remove_full(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._WINDOW_REC*, i8*, i8*)* @sig_erase_complete_msg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3774
  call void @signal_remove_full(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_connect to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3775
  call void @signal_remove_full(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_connect to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3776
  call void @signal_remove_full(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_tag to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3777
  call void @signal_remove_full(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_tag to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3778
  call void @signal_remove_full(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_tag to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3779
  call void @signal_remove_full(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_topic to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3780
  call void @signal_remove_full(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_away to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3781
  call void @signal_remove_full(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.36, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_unalias to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3782
  call void @signal_remove_full(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_alias to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3783
  call void @signal_remove_full(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.38, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_window to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3784
  call void @signal_remove_full(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.39, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_channel to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3785
  call void @signal_remove_full(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.40, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_server to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3786
  call void @signal_remove_full(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.41, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_server to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3787
  call void @signal_remove_full(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.42, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_complete_target to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3788
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*, i8*)* @sig_message_public to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3789
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*)* @sig_message_join to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3790
  call void @signal_remove_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*)* @sig_message_private to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3791
  call void @signal_remove_full(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.46, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*)* @sig_message_own_public to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3792
  call void @signal_remove_full(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.47, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*)* @sig_message_own_private to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3793
  call void @signal_remove_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*, %struct._NICK_REC*)* @sig_nick_removed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3794
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.49, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*, %struct._NICK_REC*, i8*)* @sig_nick_changed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3795
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @event_text to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3796
  call void @signal_remove_full(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.51, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*)* @sig_server_disconnected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3797
  call void @signal_remove_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.52, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*)* @sig_channel_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3798
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3799
  %10 = load i8*, i8** @completion_char, align 8, !dbg !3800
  call void @g_free(i8* %10), !dbg !3801
  %11 = load i8*, i8** @cmdchars, align 8, !dbg !3802
  call void @g_free(i8* %11), !dbg !3803
  ret void, !dbg !3804
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

declare noalias i8* @g_malloc_n(i64, i64) #2

declare i32 @g_slist_length(%struct._GSList*) #2

declare %struct._GSList* @g_slist_last(%struct._GSList*) #2

; Function Attrs: nounwind
declare i64 @time(i64*) #4

; Function Attrs: nounwind uwtable
define internal void @last_msg_dec_owns(%struct._GSList*) #0 !dbg !3805 {
  %2 = alloca %struct._GSList*, align 8
  %3 = alloca %struct.LAST_MSG_REC*, align 8
  store %struct._GSList* %0, %struct._GSList** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %2, metadata !3808, metadata !614), !dbg !3809
  call void @llvm.dbg.declare(metadata %struct.LAST_MSG_REC** %3, metadata !3810, metadata !614), !dbg !3811
  br label %4, !dbg !3812

; <label>:4:                                      ; preds = %21, %1
  %5 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !3813
  %6 = icmp ne %struct._GSList* %5, null, !dbg !3815
  br i1 %6, label %7, label %25, !dbg !3816

; <label>:7:                                      ; preds = %4
  %8 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !3817
  %9 = getelementptr inbounds %struct._GSList, %struct._GSList* %8, i32 0, i32 0, !dbg !3819
  %10 = load i8*, i8** %9, align 8, !dbg !3819
  %11 = bitcast i8* %10 to %struct.LAST_MSG_REC*, !dbg !3817
  store %struct.LAST_MSG_REC* %11, %struct.LAST_MSG_REC** %3, align 8, !dbg !3820
  %12 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %3, align 8, !dbg !3821
  %13 = getelementptr inbounds %struct.LAST_MSG_REC, %struct.LAST_MSG_REC* %12, i32 0, i32 2, !dbg !3823
  %14 = load i32, i32* %13, align 8, !dbg !3823
  %15 = icmp ne i32 %14, 0, !dbg !3821
  br i1 %15, label %16, label %21, !dbg !3824

; <label>:16:                                     ; preds = %7
  %17 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %3, align 8, !dbg !3825
  %18 = getelementptr inbounds %struct.LAST_MSG_REC, %struct.LAST_MSG_REC* %17, i32 0, i32 2, !dbg !3827
  %19 = load i32, i32* %18, align 8, !dbg !3828
  %20 = add nsw i32 %19, -1, !dbg !3828
  store i32 %20, i32* %18, align 8, !dbg !3828
  br label %21, !dbg !3825

; <label>:21:                                     ; preds = %16, %7
  %22 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !3829
  %23 = getelementptr inbounds %struct._GSList, %struct._GSList* %22, i32 0, i32 1, !dbg !3830
  %24 = load %struct._GSList*, %struct._GSList** %23, align 8, !dbg !3830
  store %struct._GSList* %24, %struct._GSList** %2, align 8, !dbg !3831
  br label %4, !dbg !3832, !llvm.loop !3834

; <label>:25:                                     ; preds = %4
  ret void, !dbg !3835
}

declare %struct._GSList* @g_slist_prepend(%struct._GSList*, i8*) #2

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

declare noalias i8* @g_strconcat(i8*, ...) #2

declare %struct._GSList* @g_slist_insert_sorted(%struct._GSList*, i8*, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @last_msg_cmp(%struct.LAST_MSG_REC*, %struct.LAST_MSG_REC*) #0 !dbg !3836 {
  %3 = alloca %struct.LAST_MSG_REC*, align 8
  %4 = alloca %struct.LAST_MSG_REC*, align 8
  store %struct.LAST_MSG_REC* %0, %struct.LAST_MSG_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.LAST_MSG_REC** %3, metadata !3839, metadata !614), !dbg !3840
  store %struct.LAST_MSG_REC* %1, %struct.LAST_MSG_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.LAST_MSG_REC** %4, metadata !3841, metadata !614), !dbg !3842
  %5 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %3, align 8, !dbg !3843
  %6 = getelementptr inbounds %struct.LAST_MSG_REC, %struct.LAST_MSG_REC* %5, i32 0, i32 0, !dbg !3844
  %7 = load i64, i64* %6, align 8, !dbg !3844
  %8 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %4, align 8, !dbg !3845
  %9 = getelementptr inbounds %struct.LAST_MSG_REC, %struct.LAST_MSG_REC* %8, i32 0, i32 0, !dbg !3846
  %10 = load i64, i64* %9, align 8, !dbg !3846
  %11 = icmp slt i64 %7, %10, !dbg !3847
  %12 = select i1 %11, i32 1, i32 -1, !dbg !3843
  ret i32 %12, !dbg !3848
}

declare i32 @settings_get_int(i8*) #2

declare i32 @settings_get_bool(i8*) #2

declare i32 @settings_get_choice(i8*) #2

declare i8* @settings_get_str(i8*) #2

declare void @signal_stop() #2

declare i8* @module_check_cast_module(i8*, i32, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @only_nicks(i8*) #0 !dbg !3849 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3852, metadata !614), !dbg !3853
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3854, metadata !614), !dbg !3855
  store i32 1, i32* %4, align 4, !dbg !3855
  call void @llvm.dbg.declare(metadata i8* %5, metadata !3856, metadata !614), !dbg !3857
  %6 = load i8*, i8** %3, align 8, !dbg !3858
  %7 = load i8, i8* %6, align 1, !dbg !3860
  %8 = sext i8 %7 to i32, !dbg !3860
  %9 = icmp eq i32 %8, 0, !dbg !3861
  br i1 %9, label %10, label %11, !dbg !3862

; <label>:10:                                     ; preds = %1
  store i32 1, i32* %2, align 4, !dbg !3863
  br label %94, !dbg !3863

; <label>:11:                                     ; preds = %1
  %12 = load i8*, i8** @completion_char, align 8, !dbg !3865
  %13 = getelementptr inbounds i8, i8* %12, i64 1, !dbg !3865
  %14 = load i8, i8* %13, align 1, !dbg !3865
  %15 = sext i8 %14 to i32, !dbg !3865
  %16 = icmp ne i32 %15, 0, !dbg !3867
  br i1 %16, label %17, label %18, !dbg !3868

; <label>:17:                                     ; preds = %11
  store i32 0, i32* %2, align 4, !dbg !3869
  br label %94, !dbg !3869

; <label>:18:                                     ; preds = %11
  %19 = load i8*, i8** @completion_char, align 8, !dbg !3870
  %20 = load i8, i8* %19, align 1, !dbg !3872
  %21 = sext i8 %20 to i32, !dbg !3872
  %22 = icmp eq i32 %21, 32, !dbg !3873
  br i1 %22, label %23, label %24, !dbg !3874

; <label>:23:                                     ; preds = %18
  store i32 0, i32* %2, align 4, !dbg !3875
  br label %94, !dbg !3875

; <label>:24:                                     ; preds = %18
  br label %25, !dbg !3876

; <label>:25:                                     ; preds = %60, %24
  %26 = load i32, i32* %4, align 4, !dbg !3877
  %27 = sext i32 %26 to i64, !dbg !3879
  %28 = load i8*, i8** %3, align 8, !dbg !3879
  %29 = getelementptr inbounds i8, i8* %28, i64 %27, !dbg !3879
  %30 = load i8, i8* %29, align 1, !dbg !3879
  %31 = sext i8 %30 to i32, !dbg !3879
  %32 = icmp ne i32 %31, 0, !dbg !3880
  br i1 %32, label %33, label %63, !dbg !3881

; <label>:33:                                     ; preds = %25
  %34 = load i32, i32* %4, align 4, !dbg !3882
  %35 = sext i32 %34 to i64, !dbg !3885
  %36 = load i8*, i8** %3, align 8, !dbg !3885
  %37 = getelementptr inbounds i8, i8* %36, i64 %35, !dbg !3885
  %38 = load i8, i8* %37, align 1, !dbg !3885
  %39 = sext i8 %38 to i32, !dbg !3885
  %40 = icmp eq i32 %39, 32, !dbg !3886
  br i1 %40, label %41, label %60, !dbg !3887

; <label>:41:                                     ; preds = %33
  %42 = load i32, i32* %4, align 4, !dbg !3888
  %43 = sub nsw i32 %42, 1, !dbg !3890
  %44 = sext i32 %43 to i64, !dbg !3891
  %45 = load i8*, i8** %3, align 8, !dbg !3891
  %46 = getelementptr inbounds i8, i8* %45, i64 %44, !dbg !3891
  %47 = load i8, i8* %46, align 1, !dbg !3891
  store i8 %47, i8* %5, align 1, !dbg !3892
  %48 = load i8, i8* %5, align 1, !dbg !3893
  %49 = sext i8 %48 to i32, !dbg !3893
  %50 = load i8*, i8** @completion_char, align 8, !dbg !3895
  %51 = load i8, i8* %50, align 1, !dbg !3896
  %52 = sext i8 %51 to i32, !dbg !3896
  %53 = icmp ne i32 %49, %52, !dbg !3897
  br i1 %53, label %54, label %59, !dbg !3898

; <label>:54:                                     ; preds = %41
  %55 = load i8, i8* %5, align 1, !dbg !3899
  %56 = sext i8 %55 to i32, !dbg !3899
  %57 = icmp ne i32 %56, 32, !dbg !3901
  br i1 %57, label %58, label %59, !dbg !3902

; <label>:58:                                     ; preds = %54
  store i32 0, i32* %2, align 4, !dbg !3903
  br label %94, !dbg !3903

; <label>:59:                                     ; preds = %54, %41
  br label %60, !dbg !3904

; <label>:60:                                     ; preds = %59, %33
  %61 = load i32, i32* %4, align 4, !dbg !3905
  %62 = add nsw i32 %61, 1, !dbg !3905
  store i32 %62, i32* %4, align 4, !dbg !3905
  br label %25, !dbg !3906, !llvm.loop !3908

; <label>:63:                                     ; preds = %25
  %64 = load i32, i32* %4, align 4, !dbg !3909
  %65 = sub nsw i32 %64, 1, !dbg !3909
  store i32 %65, i32* %4, align 4, !dbg !3909
  br label %66, !dbg !3910

; <label>:66:                                     ; preds = %77, %63
  %67 = load i32, i32* %4, align 4, !dbg !3911
  %68 = icmp sge i32 %67, 0, !dbg !3912
  br i1 %68, label %69, label %93, !dbg !3913

; <label>:69:                                     ; preds = %66
  %70 = load i32, i32* %4, align 4, !dbg !3914
  %71 = sext i32 %70 to i64, !dbg !3917
  %72 = load i8*, i8** %3, align 8, !dbg !3917
  %73 = getelementptr inbounds i8, i8* %72, i64 %71, !dbg !3917
  %74 = load i8, i8* %73, align 1, !dbg !3917
  %75 = sext i8 %74 to i32, !dbg !3917
  %76 = icmp eq i32 %75, 32, !dbg !3918
  br i1 %76, label %77, label %80, !dbg !3919

; <label>:77:                                     ; preds = %69
  %78 = load i32, i32* %4, align 4, !dbg !3920
  %79 = add nsw i32 %78, -1, !dbg !3920
  store i32 %79, i32* %4, align 4, !dbg !3920
  br label %66, !dbg !3922, !llvm.loop !3923

; <label>:80:                                     ; preds = %69
  %81 = load i32, i32* %4, align 4, !dbg !3924
  %82 = sext i32 %81 to i64, !dbg !3926
  %83 = load i8*, i8** %3, align 8, !dbg !3926
  %84 = getelementptr inbounds i8, i8* %83, i64 %82, !dbg !3926
  %85 = load i8, i8* %84, align 1, !dbg !3926
  %86 = sext i8 %85 to i32, !dbg !3926
  %87 = load i8*, i8** @completion_char, align 8, !dbg !3927
  %88 = load i8, i8* %87, align 1, !dbg !3928
  %89 = sext i8 %88 to i32, !dbg !3928
  %90 = icmp eq i32 %86, %89, !dbg !3929
  br i1 %90, label %91, label %92, !dbg !3930

; <label>:91:                                     ; preds = %80
  store i32 1, i32* %2, align 4, !dbg !3931
  br label %94, !dbg !3931

; <label>:92:                                     ; preds = %80
  br label %93, !dbg !3933

; <label>:93:                                     ; preds = %92, %66
  store i32 0, i32* %2, align 4, !dbg !3935
  br label %94, !dbg !3935

; <label>:94:                                     ; preds = %93, %91, %58, %23, %17, %10
  %95 = load i32, i32* %2, align 4, !dbg !3936
  ret i32 %95, !dbg !3936
}

; Function Attrs: nounwind uwtable
define internal void @complete_window_nicks(%struct._GList**, %struct._WINDOW_REC*, i8*, i8*) #0 !dbg !3937 {
  %5 = alloca %struct._GList**, align 8
  %6 = alloca %struct._WINDOW_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._CHANNEL_REC*, align 8
  %10 = alloca %struct._GList*, align 8
  %11 = alloca %struct._GSList*, align 8
  store %struct._GList** %0, %struct._GList*** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._GList*** %5, metadata !3940, metadata !614), !dbg !3941
  store %struct._WINDOW_REC* %1, %struct._WINDOW_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %6, metadata !3942, metadata !614), !dbg !3943
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3944, metadata !614), !dbg !3945
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3946, metadata !614), !dbg !3947
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %9, metadata !3948, metadata !614), !dbg !3949
  call void @llvm.dbg.declare(metadata %struct._GList** %10, metadata !3950, metadata !614), !dbg !3951
  call void @llvm.dbg.declare(metadata %struct._GSList** %11, metadata !3952, metadata !614), !dbg !3953
  %12 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %6, align 8, !dbg !3954
  %13 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %12, i32 0, i32 5, !dbg !3955
  %14 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %13, align 8, !dbg !3955
  %15 = bitcast %struct._WI_ITEM_REC* %14 to i8*, !dbg !3954
  %16 = call i8* @module_check_cast_module(i8* %15, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0)), !dbg !3956
  %17 = bitcast i8* %16 to %struct._CHANNEL_REC*, !dbg !3957
  store %struct._CHANNEL_REC* %17, %struct._CHANNEL_REC** %9, align 8, !dbg !3958
  %18 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %9, align 8, !dbg !3959
  %19 = icmp ne %struct._CHANNEL_REC* %18, null, !dbg !3961
  br i1 %19, label %20, label %30, !dbg !3962

; <label>:20:                                     ; preds = %4
  %21 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %9, align 8, !dbg !3963
  %22 = load i8*, i8** %7, align 8, !dbg !3965
  %23 = load i8*, i8** %8, align 8, !dbg !3966
  %24 = call %struct._GList* @completion_channel_nicks(%struct._CHANNEL_REC* %21, i8* %22, i8* %23), !dbg !3967
  store %struct._GList* %24, %struct._GList** %10, align 8, !dbg !3968
  %25 = load %struct._GList**, %struct._GList*** %5, align 8, !dbg !3969
  %26 = load %struct._GList*, %struct._GList** %25, align 8, !dbg !3970
  %27 = load %struct._GList*, %struct._GList** %10, align 8, !dbg !3971
  %28 = call %struct._GList* @completion_joinlist(%struct._GList* %26, %struct._GList* %27), !dbg !3972
  %29 = load %struct._GList**, %struct._GList*** %5, align 8, !dbg !3973
  store %struct._GList* %28, %struct._GList** %29, align 8, !dbg !3974
  br label %30, !dbg !3975

; <label>:30:                                     ; preds = %20, %4
  %31 = load i8*, i8** %8, align 8, !dbg !3976
  %32 = icmp ne i8* %31, null, !dbg !3978
  br i1 %32, label %33, label %34, !dbg !3979

; <label>:33:                                     ; preds = %30
  br label %73, !dbg !3980

; <label>:34:                                     ; preds = %30
  %35 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %6, align 8, !dbg !3982
  %36 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %35, i32 0, i32 4, !dbg !3984
  %37 = load %struct._GSList*, %struct._GSList** %36, align 8, !dbg !3984
  store %struct._GSList* %37, %struct._GSList** %11, align 8, !dbg !3985
  br label %38, !dbg !3986

; <label>:38:                                     ; preds = %69, %34
  %39 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !3987
  %40 = icmp ne %struct._GSList* %39, null, !dbg !3990
  br i1 %40, label %41, label %73, !dbg !3991

; <label>:41:                                     ; preds = %38
  %42 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !3992
  %43 = getelementptr inbounds %struct._GSList, %struct._GSList* %42, i32 0, i32 0, !dbg !3994
  %44 = load i8*, i8** %43, align 8, !dbg !3994
  %45 = call i8* @module_check_cast_module(i8* %44, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0)), !dbg !3995
  %46 = bitcast i8* %45 to %struct._CHANNEL_REC*, !dbg !3996
  store %struct._CHANNEL_REC* %46, %struct._CHANNEL_REC** %9, align 8, !dbg !3997
  %47 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %9, align 8, !dbg !3998
  %48 = icmp ne %struct._CHANNEL_REC* %47, null, !dbg !4000
  br i1 %48, label %49, label %68, !dbg !4001

; <label>:49:                                     ; preds = %41
  %50 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !4002
  %51 = getelementptr inbounds %struct._GSList, %struct._GSList* %50, i32 0, i32 0, !dbg !4004
  %52 = load i8*, i8** %51, align 8, !dbg !4004
  %53 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %6, align 8, !dbg !4005
  %54 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %53, i32 0, i32 5, !dbg !4006
  %55 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %54, align 8, !dbg !4006
  %56 = bitcast %struct._WI_ITEM_REC* %55 to i8*, !dbg !4005
  %57 = icmp ne i8* %52, %56, !dbg !4007
  br i1 %57, label %58, label %68, !dbg !4008

; <label>:58:                                     ; preds = %49
  %59 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %9, align 8, !dbg !4009
  %60 = load i8*, i8** %7, align 8, !dbg !4011
  %61 = load i8*, i8** %8, align 8, !dbg !4012
  %62 = call %struct._GList* @completion_channel_nicks(%struct._CHANNEL_REC* %59, i8* %60, i8* %61), !dbg !4013
  store %struct._GList* %62, %struct._GList** %10, align 8, !dbg !4014
  %63 = load %struct._GList**, %struct._GList*** %5, align 8, !dbg !4015
  %64 = load %struct._GList*, %struct._GList** %63, align 8, !dbg !4016
  %65 = load %struct._GList*, %struct._GList** %10, align 8, !dbg !4017
  %66 = call %struct._GList* @completion_joinlist(%struct._GList* %64, %struct._GList* %65), !dbg !4018
  %67 = load %struct._GList**, %struct._GList*** %5, align 8, !dbg !4019
  store %struct._GList* %66, %struct._GList** %67, align 8, !dbg !4020
  br label %68, !dbg !4021

; <label>:68:                                     ; preds = %58, %49, %41
  br label %69, !dbg !4022

; <label>:69:                                     ; preds = %68
  %70 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !4023
  %71 = getelementptr inbounds %struct._GSList, %struct._GSList* %70, i32 0, i32 1, !dbg !4025
  %72 = load %struct._GSList*, %struct._GSList** %71, align 8, !dbg !4025
  store %struct._GSList* %72, %struct._GSList** %11, align 8, !dbg !4026
  br label %38, !dbg !4027, !llvm.loop !4028

; <label>:73:                                     ; preds = %33, %38
  ret void, !dbg !4030
}

declare %struct._GList* @g_list_concat(%struct._GList*, %struct._GList*) #2

; Function Attrs: nounwind uwtable
define internal %struct._GList* @completion_channel_nicks(%struct._CHANNEL_REC*, i8*, i8*) #0 !dbg !4031 {
  %4 = alloca %struct._GList*, align 8
  %5 = alloca %struct._CHANNEL_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._GSList*, align 8
  %9 = alloca %struct._GSList*, align 8
  %10 = alloca %struct._GList*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct._NICK_REC*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %5, metadata !4034, metadata !614), !dbg !4035
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4036, metadata !614), !dbg !4037
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4038, metadata !614), !dbg !4039
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !4040, metadata !614), !dbg !4041
  call void @llvm.dbg.declare(metadata %struct._GSList** %9, metadata !4042, metadata !614), !dbg !4043
  call void @llvm.dbg.declare(metadata %struct._GList** %10, metadata !4044, metadata !614), !dbg !4045
  call void @llvm.dbg.declare(metadata i8** %11, metadata !4046, metadata !614), !dbg !4047
  call void @llvm.dbg.declare(metadata i32* %12, metadata !4048, metadata !614), !dbg !4049
  call void @llvm.dbg.declare(metadata i32* %13, metadata !4050, metadata !614), !dbg !4051
  br label %15, !dbg !4052, !llvm.loop !4053

; <label>:15:                                     ; preds = %3
  %16 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !4054
  %17 = icmp ne %struct._CHANNEL_REC* %16, null, !dbg !4058
  br i1 %17, label %18, label %19, !dbg !4054

; <label>:18:                                     ; preds = %15
  br label %20, !dbg !4059

; <label>:19:                                     ; preds = %15
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.completion_channel_nicks, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.64, i32 0, i32 0)), !dbg !4062
  store %struct._GList* null, %struct._GList** %4, align 8, !dbg !4065
  br label %145, !dbg !4065

; <label>:20:                                     ; preds = %18
  br label %21, !dbg !4066

; <label>:21:                                     ; preds = %20
  br label %22, !dbg !4068, !llvm.loop !4069

; <label>:22:                                     ; preds = %21
  %23 = load i8*, i8** %6, align 8, !dbg !4070
  %24 = icmp ne i8* %23, null, !dbg !4074
  br i1 %24, label %25, label %26, !dbg !4070

; <label>:25:                                     ; preds = %22
  br label %27, !dbg !4075

; <label>:26:                                     ; preds = %22
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.completion_channel_nicks, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !4078
  store %struct._GList* null, %struct._GList** %4, align 8, !dbg !4081
  br label %145, !dbg !4081

; <label>:27:                                     ; preds = %25
  br label %28, !dbg !4082

; <label>:28:                                     ; preds = %27
  %29 = load i8*, i8** %6, align 8, !dbg !4084
  %30 = load i8, i8* %29, align 1, !dbg !4086
  %31 = sext i8 %30 to i32, !dbg !4086
  %32 = icmp eq i32 %31, 0, !dbg !4087
  br i1 %32, label %33, label %34, !dbg !4088

; <label>:33:                                     ; preds = %28
  store %struct._GList* null, %struct._GList** %4, align 8, !dbg !4089
  br label %145, !dbg !4089

; <label>:34:                                     ; preds = %28
  %35 = load i8*, i8** %7, align 8, !dbg !4091
  %36 = icmp ne i8* %35, null, !dbg !4093
  br i1 %36, label %37, label %43, !dbg !4094

; <label>:37:                                     ; preds = %34
  %38 = load i8*, i8** %7, align 8, !dbg !4095
  %39 = load i8, i8* %38, align 1, !dbg !4097
  %40 = sext i8 %39 to i32, !dbg !4097
  %41 = icmp eq i32 %40, 0, !dbg !4098
  br i1 %41, label %42, label %43, !dbg !4099

; <label>:42:                                     ; preds = %37
  store i8* null, i8** %7, align 8, !dbg !4100
  br label %43, !dbg !4101

; <label>:43:                                     ; preds = %42, %37, %34
  %44 = load i32, i32* @completion_match_case, align 4, !dbg !4102
  %45 = icmp eq i32 %44, 1, !dbg !4103
  br i1 %45, label %55, label %46, !dbg !4104

; <label>:46:                                     ; preds = %43
  %47 = load i32, i32* @completion_match_case, align 4, !dbg !4105
  %48 = icmp eq i32 %47, 2, !dbg !4106
  br i1 %48, label %49, label %53, !dbg !4107

; <label>:49:                                     ; preds = %46
  %50 = load i8*, i8** %6, align 8, !dbg !4108
  %51 = call i32 @contains_uppercase(i8* %50), !dbg !4110
  %52 = icmp ne i32 %51, 0, !dbg !4111
  br label %53

; <label>:53:                                     ; preds = %49, %46
  %54 = phi i1 [ false, %46 ], [ %52, %49 ]
  br label %55, !dbg !4112

; <label>:55:                                     ; preds = %53, %43
  %56 = phi i1 [ true, %43 ], [ %54, %53 ]
  %57 = zext i1 %56 to i32, !dbg !4113
  store i32 %57, i32* %13, align 4, !dbg !4115
  store %struct._GList* null, %struct._GList** %10, align 8, !dbg !4116
  %58 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !4117
  %59 = load i8*, i8** %6, align 8, !dbg !4118
  %60 = load i8*, i8** %7, align 8, !dbg !4119
  %61 = load i32, i32* %13, align 4, !dbg !4120
  call void @complete_from_nicklist(%struct._GList** %10, %struct._CHANNEL_REC* %58, i8* %59, i8* %60, i32 %61), !dbg !4121
  %62 = load i8*, i8** %6, align 8, !dbg !4122
  %63 = call i64 @strlen(i8* %62) #7, !dbg !4123
  %64 = trunc i64 %63 to i32, !dbg !4123
  store i32 %64, i32* %12, align 4, !dbg !4124
  %65 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !4125
  %66 = call %struct._GSList* @nicklist_getnicks(%struct._CHANNEL_REC* %65), !dbg !4126
  store %struct._GSList* %66, %struct._GSList** %8, align 8, !dbg !4127
  %67 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !4128
  store %struct._GSList* %67, %struct._GSList** %9, align 8, !dbg !4130
  br label %68, !dbg !4131

; <label>:68:                                     ; preds = %127, %55
  %69 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !4132
  %70 = icmp ne %struct._GSList* %69, null, !dbg !4135
  br i1 %70, label %71, label %131, !dbg !4136

; <label>:71:                                     ; preds = %68
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %14, metadata !4137, metadata !614), !dbg !4139
  %72 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !4140
  %73 = getelementptr inbounds %struct._GSList, %struct._GSList* %72, i32 0, i32 0, !dbg !4141
  %74 = load i8*, i8** %73, align 8, !dbg !4141
  %75 = bitcast i8* %74 to %struct._NICK_REC*, !dbg !4140
  store %struct._NICK_REC* %75, %struct._NICK_REC** %14, align 8, !dbg !4139
  %76 = load i32, i32* %13, align 4, !dbg !4142
  %77 = icmp ne i32 %76, 0, !dbg !4142
  br i1 %77, label %78, label %86, !dbg !4142

; <label>:78:                                     ; preds = %71
  %79 = load %struct._NICK_REC*, %struct._NICK_REC** %14, align 8, !dbg !4144
  %80 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %79, i32 0, i32 3, !dbg !4146
  %81 = load i8*, i8** %80, align 8, !dbg !4146
  %82 = load i8*, i8** %6, align 8, !dbg !4147
  %83 = load i32, i32* %12, align 4, !dbg !4148
  %84 = sext i32 %83 to i64, !dbg !4148
  %85 = call i32 @strncmp(i8* %81, i8* %82, i64 %84) #7, !dbg !4149
  br label %94, !dbg !4150

; <label>:86:                                     ; preds = %71
  %87 = load %struct._NICK_REC*, %struct._NICK_REC** %14, align 8, !dbg !4151
  %88 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %87, i32 0, i32 3, !dbg !4152
  %89 = load i8*, i8** %88, align 8, !dbg !4152
  %90 = load i8*, i8** %6, align 8, !dbg !4153
  %91 = load i32, i32* %12, align 4, !dbg !4154
  %92 = sext i32 %91 to i64, !dbg !4154
  %93 = call i32 @g_ascii_strncasecmp(i8* %89, i8* %90, i64 %92), !dbg !4155
  br label %94, !dbg !4156

; <label>:94:                                     ; preds = %86, %78
  %95 = phi i32 [ %85, %78 ], [ %93, %86 ], !dbg !4158
  %96 = icmp eq i32 %95, 0, !dbg !4160
  br i1 %96, label %97, label %126, !dbg !4161

; <label>:97:                                     ; preds = %94
  %98 = load %struct._NICK_REC*, %struct._NICK_REC** %14, align 8, !dbg !4162
  %99 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !4163
  %100 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %99, i32 0, i32 16, !dbg !4164
  %101 = load %struct._NICK_REC*, %struct._NICK_REC** %100, align 8, !dbg !4164
  %102 = icmp ne %struct._NICK_REC* %98, %101, !dbg !4165
  br i1 %102, label %103, label %126, !dbg !4166

; <label>:103:                                    ; preds = %97
  %104 = load %struct._NICK_REC*, %struct._NICK_REC** %14, align 8, !dbg !4168
  %105 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %104, i32 0, i32 3, !dbg !4170
  %106 = load i8*, i8** %105, align 8, !dbg !4170
  %107 = load i8*, i8** %7, align 8, !dbg !4171
  %108 = call noalias i8* (i8*, ...) @g_strconcat(i8* %106, i8* %107, i8* null), !dbg !4172
  store i8* %108, i8** %11, align 8, !dbg !4173
  %109 = load i32, i32* @completion_lowercase, align 4, !dbg !4174
  %110 = icmp ne i32 %109, 0, !dbg !4174
  br i1 %110, label %111, label %114, !dbg !4176

; <label>:111:                                    ; preds = %103
  %112 = load i8*, i8** %11, align 8, !dbg !4177
  %113 = call i8* @ascii_strdown(i8* %112), !dbg !4178
  br label %114, !dbg !4178

; <label>:114:                                    ; preds = %111, %103
  %115 = load %struct._GList*, %struct._GList** %10, align 8, !dbg !4179
  %116 = load i8*, i8** %11, align 8, !dbg !4181
  %117 = call %struct._GList* @glist_find_icase_string(%struct._GList* %115, i8* %116), !dbg !4182
  %118 = icmp eq %struct._GList* %117, null, !dbg !4183
  br i1 %118, label %119, label %123, !dbg !4184

; <label>:119:                                    ; preds = %114
  %120 = load %struct._GList*, %struct._GList** %10, align 8, !dbg !4185
  %121 = load i8*, i8** %11, align 8, !dbg !4186
  %122 = call %struct._GList* @g_list_append(%struct._GList* %120, i8* %121), !dbg !4187
  store %struct._GList* %122, %struct._GList** %10, align 8, !dbg !4188
  br label %125, !dbg !4189

; <label>:123:                                    ; preds = %114
  %124 = load i8*, i8** %11, align 8, !dbg !4190
  call void @g_free(i8* %124), !dbg !4191
  br label %125

; <label>:125:                                    ; preds = %123, %119
  br label %126, !dbg !4192

; <label>:126:                                    ; preds = %125, %97, %94
  br label %127, !dbg !4193

; <label>:127:                                    ; preds = %126
  %128 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !4194
  %129 = getelementptr inbounds %struct._GSList, %struct._GSList* %128, i32 0, i32 1, !dbg !4196
  %130 = load %struct._GSList*, %struct._GSList** %129, align 8, !dbg !4196
  store %struct._GSList* %130, %struct._GSList** %9, align 8, !dbg !4197
  br label %68, !dbg !4198, !llvm.loop !4199

; <label>:131:                                    ; preds = %68
  %132 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !4201
  call void @g_slist_free(%struct._GSList* %132), !dbg !4202
  %133 = load i32, i32* @completion_strict, align 4, !dbg !4203
  %134 = icmp ne i32 %133, 0, !dbg !4203
  br i1 %134, label %143, label %135, !dbg !4205

; <label>:135:                                    ; preds = %131
  %136 = load %struct._GList*, %struct._GList** %10, align 8, !dbg !4206
  %137 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !4207
  %138 = load i8*, i8** %6, align 8, !dbg !4208
  %139 = load i8*, i8** %7, align 8, !dbg !4209
  %140 = load i32, i32* %13, align 4, !dbg !4210
  %141 = call %struct._GList* @completion_nicks_nonstrict(%struct._CHANNEL_REC* %137, i8* %138, i8* %139, i32 %140), !dbg !4211
  %142 = call %struct._GList* @g_list_concat(%struct._GList* %136, %struct._GList* %141), !dbg !4212
  store %struct._GList* %142, %struct._GList** %10, align 8, !dbg !4214
  br label %143, !dbg !4215

; <label>:143:                                    ; preds = %135, %131
  %144 = load %struct._GList*, %struct._GList** %10, align 8, !dbg !4216
  store %struct._GList* %144, %struct._GList** %4, align 8, !dbg !4217
  br label %145, !dbg !4217

; <label>:145:                                    ; preds = %143, %33, %26, %19
  %146 = load %struct._GList*, %struct._GList** %4, align 8, !dbg !4218
  ret %struct._GList* %146, !dbg !4218
}

; Function Attrs: nounwind uwtable
define internal %struct._GList* @completion_joinlist(%struct._GList*, %struct._GList*) #0 !dbg !4219 {
  %3 = alloca %struct._GList*, align 8
  %4 = alloca %struct._GList*, align 8
  %5 = alloca %struct._GList*, align 8
  store %struct._GList* %0, %struct._GList** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GList** %3, metadata !4222, metadata !614), !dbg !4223
  store %struct._GList* %1, %struct._GList** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GList** %4, metadata !4224, metadata !614), !dbg !4225
  call void @llvm.dbg.declare(metadata %struct._GList** %5, metadata !4226, metadata !614), !dbg !4227
  %6 = load %struct._GList*, %struct._GList** %4, align 8, !dbg !4228
  store %struct._GList* %6, %struct._GList** %5, align 8, !dbg !4229
  br label %7, !dbg !4230

; <label>:7:                                      ; preds = %27, %2
  %8 = load %struct._GList*, %struct._GList** %4, align 8, !dbg !4231
  %9 = icmp ne %struct._GList* %8, null, !dbg !4233
  br i1 %9, label %10, label %31, !dbg !4234

; <label>:10:                                     ; preds = %7
  %11 = load %struct._GList*, %struct._GList** %3, align 8, !dbg !4235
  %12 = load %struct._GList*, %struct._GList** %4, align 8, !dbg !4238
  %13 = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 0, !dbg !4239
  %14 = load i8*, i8** %13, align 8, !dbg !4239
  %15 = call %struct._GList* @glist_find_icase_string(%struct._GList* %11, i8* %14), !dbg !4240
  %16 = icmp ne %struct._GList* %15, null, !dbg !4240
  br i1 %16, label %23, label %17, !dbg !4241

; <label>:17:                                     ; preds = %10
  %18 = load %struct._GList*, %struct._GList** %3, align 8, !dbg !4242
  %19 = load %struct._GList*, %struct._GList** %4, align 8, !dbg !4243
  %20 = getelementptr inbounds %struct._GList, %struct._GList* %19, i32 0, i32 0, !dbg !4244
  %21 = load i8*, i8** %20, align 8, !dbg !4244
  %22 = call %struct._GList* @g_list_append(%struct._GList* %18, i8* %21), !dbg !4245
  store %struct._GList* %22, %struct._GList** %3, align 8, !dbg !4246
  br label %27, !dbg !4247

; <label>:23:                                     ; preds = %10
  %24 = load %struct._GList*, %struct._GList** %4, align 8, !dbg !4248
  %25 = getelementptr inbounds %struct._GList, %struct._GList* %24, i32 0, i32 0, !dbg !4249
  %26 = load i8*, i8** %25, align 8, !dbg !4249
  call void @g_free(i8* %26), !dbg !4250
  br label %27

; <label>:27:                                     ; preds = %23, %17
  %28 = load %struct._GList*, %struct._GList** %4, align 8, !dbg !4251
  %29 = getelementptr inbounds %struct._GList, %struct._GList* %28, i32 0, i32 1, !dbg !4252
  %30 = load %struct._GList*, %struct._GList** %29, align 8, !dbg !4252
  store %struct._GList* %30, %struct._GList** %4, align 8, !dbg !4253
  br label %7, !dbg !4254, !llvm.loop !4256

; <label>:31:                                     ; preds = %7
  %32 = load %struct._GList*, %struct._GList** %5, align 8, !dbg !4257
  call void @g_list_free(%struct._GList* %32), !dbg !4258
  %33 = load %struct._GList*, %struct._GList** %3, align 8, !dbg !4259
  ret %struct._GList* %33, !dbg !4260
}

; Function Attrs: nounwind uwtable
define internal i32 @contains_uppercase(i8*) #0 !dbg !4261 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4264, metadata !614), !dbg !4265
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4266, metadata !614), !dbg !4267
  %5 = load i8*, i8** %3, align 8, !dbg !4268
  store i8* %5, i8** %4, align 8, !dbg !4270
  br label %6, !dbg !4271

; <label>:6:                                      ; preds = %23, %1
  %7 = load i8*, i8** %4, align 8, !dbg !4272
  %8 = load i8, i8* %7, align 1, !dbg !4275
  %9 = sext i8 %8 to i32, !dbg !4275
  %10 = icmp ne i32 %9, 0, !dbg !4276
  br i1 %10, label %11, label %26, !dbg !4277

; <label>:11:                                     ; preds = %6
  %12 = load i8*, i8** %4, align 8, !dbg !4278
  %13 = load i8, i8* %12, align 1, !dbg !4281
  %14 = zext i8 %13 to i64, !dbg !4282
  %15 = load i16*, i16** @g_ascii_table, align 8, !dbg !4282
  %16 = getelementptr inbounds i16, i16* %15, i64 %14, !dbg !4282
  %17 = load i16, i16* %16, align 2, !dbg !4282
  %18 = zext i16 %17 to i32, !dbg !4282
  %19 = and i32 %18, 512, !dbg !4283
  %20 = icmp ne i32 %19, 0, !dbg !4284
  br i1 %20, label %21, label %22, !dbg !4285

; <label>:21:                                     ; preds = %11
  store i32 1, i32* %2, align 4, !dbg !4286
  br label %27, !dbg !4286

; <label>:22:                                     ; preds = %11
  br label %23, !dbg !4287

; <label>:23:                                     ; preds = %22
  %24 = load i8*, i8** %4, align 8, !dbg !4288
  %25 = getelementptr inbounds i8, i8* %24, i32 1, !dbg !4288
  store i8* %25, i8** %4, align 8, !dbg !4288
  br label %6, !dbg !4290, !llvm.loop !4291

; <label>:26:                                     ; preds = %6
  store i32 0, i32* %2, align 4, !dbg !4293
  br label %27, !dbg !4293

; <label>:27:                                     ; preds = %26, %21
  %28 = load i32, i32* %2, align 4, !dbg !4294
  ret i32 %28, !dbg !4294
}

; Function Attrs: nounwind uwtable
define internal void @complete_from_nicklist(%struct._GList**, %struct._CHANNEL_REC*, i8*, i8*, i32) #0 !dbg !4295 {
  %6 = alloca %struct._GList**, align 8
  %7 = alloca %struct._CHANNEL_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.MODULE_CHANNEL_REC*, align 8
  %12 = alloca %struct._GSList*, align 8
  %13 = alloca %struct._GList*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.LAST_MSG_REC*, align 8
  store %struct._GList** %0, %struct._GList*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GList*** %6, metadata !4299, metadata !614), !dbg !4300
  store %struct._CHANNEL_REC* %1, %struct._CHANNEL_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %7, metadata !4301, metadata !614), !dbg !4302
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4303, metadata !614), !dbg !4304
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !4305, metadata !614), !dbg !4306
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !4307, metadata !614), !dbg !4308
  call void @llvm.dbg.declare(metadata %struct.MODULE_CHANNEL_REC** %11, metadata !4309, metadata !614), !dbg !4310
  call void @llvm.dbg.declare(metadata %struct._GSList** %12, metadata !4311, metadata !614), !dbg !4312
  call void @llvm.dbg.declare(metadata %struct._GList** %13, metadata !4313, metadata !614), !dbg !4314
  call void @llvm.dbg.declare(metadata i8** %14, metadata !4315, metadata !614), !dbg !4316
  call void @llvm.dbg.declare(metadata i32* %15, metadata !4317, metadata !614), !dbg !4318
  store %struct._GList* null, %struct._GList** %13, align 8, !dbg !4319
  %17 = load i8*, i8** %8, align 8, !dbg !4320
  %18 = call i64 @strlen(i8* %17) #7, !dbg !4321
  %19 = trunc i64 %18 to i32, !dbg !4321
  store i32 %19, i32* %15, align 4, !dbg !4322
  %20 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %7, align 8, !dbg !4323
  %21 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %20, i32 0, i32 2, !dbg !4324
  %22 = load %struct._GHashTable*, %struct._GHashTable** %21, align 8, !dbg !4324
  %23 = call i8* @g_hash_table_lookup(%struct._GHashTable* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0)), !dbg !4325
  %24 = bitcast i8* %23 to %struct.MODULE_CHANNEL_REC*, !dbg !4325
  store %struct.MODULE_CHANNEL_REC* %24, %struct.MODULE_CHANNEL_REC** %11, align 8, !dbg !4326
  %25 = load %struct.MODULE_CHANNEL_REC*, %struct.MODULE_CHANNEL_REC** %11, align 8, !dbg !4327
  %26 = getelementptr inbounds %struct.MODULE_CHANNEL_REC, %struct.MODULE_CHANNEL_REC* %25, i32 0, i32 0, !dbg !4329
  %27 = load %struct._GSList*, %struct._GSList** %26, align 8, !dbg !4329
  store %struct._GSList* %27, %struct._GSList** %12, align 8, !dbg !4330
  br label %28, !dbg !4331

; <label>:28:                                     ; preds = %105, %5
  %29 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !4332
  %30 = icmp ne %struct._GSList* %29, null, !dbg !4335
  br i1 %30, label %31, label %109, !dbg !4336

; <label>:31:                                     ; preds = %28
  call void @llvm.dbg.declare(metadata %struct.LAST_MSG_REC** %16, metadata !4337, metadata !614), !dbg !4339
  %32 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !4340
  %33 = getelementptr inbounds %struct._GSList, %struct._GSList* %32, i32 0, i32 0, !dbg !4341
  %34 = load i8*, i8** %33, align 8, !dbg !4341
  %35 = bitcast i8* %34 to %struct.LAST_MSG_REC*, !dbg !4340
  store %struct.LAST_MSG_REC* %35, %struct.LAST_MSG_REC** %16, align 8, !dbg !4339
  %36 = load i32, i32* %10, align 4, !dbg !4342
  %37 = icmp ne i32 %36, 0, !dbg !4342
  br i1 %37, label %38, label %46, !dbg !4342

; <label>:38:                                     ; preds = %31
  %39 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %16, align 8, !dbg !4344
  %40 = getelementptr inbounds %struct.LAST_MSG_REC, %struct.LAST_MSG_REC* %39, i32 0, i32 1, !dbg !4346
  %41 = load i8*, i8** %40, align 8, !dbg !4346
  %42 = load i8*, i8** %8, align 8, !dbg !4347
  %43 = load i32, i32* %15, align 4, !dbg !4348
  %44 = sext i32 %43 to i64, !dbg !4348
  %45 = call i32 @strncmp(i8* %41, i8* %42, i64 %44) #7, !dbg !4349
  br label %54, !dbg !4350

; <label>:46:                                     ; preds = %31
  %47 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %16, align 8, !dbg !4351
  %48 = getelementptr inbounds %struct.LAST_MSG_REC, %struct.LAST_MSG_REC* %47, i32 0, i32 1, !dbg !4352
  %49 = load i8*, i8** %48, align 8, !dbg !4352
  %50 = load i8*, i8** %8, align 8, !dbg !4353
  %51 = load i32, i32* %15, align 4, !dbg !4354
  %52 = sext i32 %51 to i64, !dbg !4354
  %53 = call i32 @g_ascii_strncasecmp(i8* %49, i8* %50, i64 %52), !dbg !4355
  br label %54, !dbg !4356

; <label>:54:                                     ; preds = %46, %38
  %55 = phi i32 [ %45, %38 ], [ %53, %46 ], !dbg !4358
  %56 = icmp eq i32 %55, 0, !dbg !4360
  br i1 %56, label %57, label %104, !dbg !4361

; <label>:57:                                     ; preds = %54
  %58 = load i32, i32* %10, align 4, !dbg !4362
  %59 = icmp ne i32 %58, 0, !dbg !4362
  br i1 %59, label %60, label %67, !dbg !4362

; <label>:60:                                     ; preds = %57
  %61 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !4363
  %62 = load %struct._GList*, %struct._GList** %61, align 8, !dbg !4364
  %63 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %16, align 8, !dbg !4365
  %64 = getelementptr inbounds %struct.LAST_MSG_REC, %struct.LAST_MSG_REC* %63, i32 0, i32 1, !dbg !4366
  %65 = load i8*, i8** %64, align 8, !dbg !4366
  %66 = call %struct._GList* @glist_find_string(%struct._GList* %62, i8* %65), !dbg !4367
  br label %74, !dbg !4368

; <label>:67:                                     ; preds = %57
  %68 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !4369
  %69 = load %struct._GList*, %struct._GList** %68, align 8, !dbg !4370
  %70 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %16, align 8, !dbg !4371
  %71 = getelementptr inbounds %struct.LAST_MSG_REC, %struct.LAST_MSG_REC* %70, i32 0, i32 1, !dbg !4372
  %72 = load i8*, i8** %71, align 8, !dbg !4372
  %73 = call %struct._GList* @glist_find_icase_string(%struct._GList* %69, i8* %72), !dbg !4373
  br label %74, !dbg !4374

; <label>:74:                                     ; preds = %67, %60
  %75 = phi %struct._GList* [ %66, %60 ], [ %73, %67 ], !dbg !4375
  %76 = icmp eq %struct._GList* %75, null, !dbg !4376
  br i1 %76, label %77, label %104, !dbg !4377

; <label>:77:                                     ; preds = %74
  %78 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %16, align 8, !dbg !4379
  %79 = getelementptr inbounds %struct.LAST_MSG_REC, %struct.LAST_MSG_REC* %78, i32 0, i32 1, !dbg !4381
  %80 = load i8*, i8** %79, align 8, !dbg !4381
  %81 = load i8*, i8** %9, align 8, !dbg !4382
  %82 = call noalias i8* (i8*, ...) @g_strconcat(i8* %80, i8* %81, i8* null), !dbg !4383
  store i8* %82, i8** %14, align 8, !dbg !4384
  %83 = load i32, i32* @completion_lowercase, align 4, !dbg !4385
  %84 = icmp ne i32 %83, 0, !dbg !4385
  br i1 %84, label %85, label %88, !dbg !4387

; <label>:85:                                     ; preds = %77
  %86 = load i8*, i8** %14, align 8, !dbg !4388
  %87 = call i8* @ascii_strdown(i8* %86), !dbg !4390
  br label %88, !dbg !4390

; <label>:88:                                     ; preds = %85, %77
  %89 = load %struct.LAST_MSG_REC*, %struct.LAST_MSG_REC** %16, align 8, !dbg !4391
  %90 = getelementptr inbounds %struct.LAST_MSG_REC, %struct.LAST_MSG_REC* %89, i32 0, i32 2, !dbg !4393
  %91 = load i32, i32* %90, align 8, !dbg !4393
  %92 = icmp ne i32 %91, 0, !dbg !4391
  br i1 %92, label %93, label %97, !dbg !4394

; <label>:93:                                     ; preds = %88
  %94 = load %struct._GList*, %struct._GList** %13, align 8, !dbg !4395
  %95 = load i8*, i8** %14, align 8, !dbg !4396
  %96 = call %struct._GList* @g_list_append(%struct._GList* %94, i8* %95), !dbg !4397
  store %struct._GList* %96, %struct._GList** %13, align 8, !dbg !4398
  br label %103, !dbg !4399

; <label>:97:                                     ; preds = %88
  %98 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !4400
  %99 = load %struct._GList*, %struct._GList** %98, align 8, !dbg !4401
  %100 = load i8*, i8** %14, align 8, !dbg !4402
  %101 = call %struct._GList* @g_list_append(%struct._GList* %99, i8* %100), !dbg !4403
  %102 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !4404
  store %struct._GList* %101, %struct._GList** %102, align 8, !dbg !4405
  br label %103

; <label>:103:                                    ; preds = %97, %93
  br label %104, !dbg !4406

; <label>:104:                                    ; preds = %103, %74, %54
  br label %105, !dbg !4407

; <label>:105:                                    ; preds = %104
  %106 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !4408
  %107 = getelementptr inbounds %struct._GSList, %struct._GSList* %106, i32 0, i32 1, !dbg !4410
  %108 = load %struct._GSList*, %struct._GSList** %107, align 8, !dbg !4410
  store %struct._GSList* %108, %struct._GSList** %12, align 8, !dbg !4411
  br label %28, !dbg !4412, !llvm.loop !4413

; <label>:109:                                    ; preds = %28
  %110 = load %struct._GList*, %struct._GList** %13, align 8, !dbg !4415
  %111 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !4416
  %112 = load %struct._GList*, %struct._GList** %111, align 8, !dbg !4417
  %113 = call %struct._GList* @g_list_concat(%struct._GList* %110, %struct._GList* %112), !dbg !4418
  %114 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !4419
  store %struct._GList* %113, %struct._GList** %114, align 8, !dbg !4420
  ret void, !dbg !4421
}

declare %struct._GSList* @nicklist_getnicks(%struct._CHANNEL_REC*) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

declare i8* @ascii_strdown(i8*) #2

declare void @g_slist_free(%struct._GSList*) #2

; Function Attrs: nounwind uwtable
define internal %struct._GList* @completion_nicks_nonstrict(%struct._CHANNEL_REC*, i8*, i8*, i32) #0 !dbg !4422 {
  %5 = alloca %struct._GList*, align 8
  %6 = alloca %struct._CHANNEL_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct._GSList*, align 8
  %11 = alloca %struct._GSList*, align 8
  %12 = alloca %struct._GList*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct._NICK_REC*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %6, metadata !4425, metadata !614), !dbg !4426
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4427, metadata !614), !dbg !4428
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4429, metadata !614), !dbg !4430
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !4431, metadata !614), !dbg !4432
  call void @llvm.dbg.declare(metadata %struct._GSList** %10, metadata !4433, metadata !614), !dbg !4434
  call void @llvm.dbg.declare(metadata %struct._GSList** %11, metadata !4435, metadata !614), !dbg !4436
  call void @llvm.dbg.declare(metadata %struct._GList** %12, metadata !4437, metadata !614), !dbg !4438
  call void @llvm.dbg.declare(metadata i8** %13, metadata !4439, metadata !614), !dbg !4440
  call void @llvm.dbg.declare(metadata i8** %14, metadata !4441, metadata !614), !dbg !4442
  call void @llvm.dbg.declare(metadata i8** %15, metadata !4443, metadata !614), !dbg !4444
  call void @llvm.dbg.declare(metadata i8** %16, metadata !4445, metadata !614), !dbg !4446
  call void @llvm.dbg.declare(metadata i32* %17, metadata !4447, metadata !614), !dbg !4448
  call void @llvm.dbg.declare(metadata i32* %18, metadata !4449, metadata !614), !dbg !4450
  call void @llvm.dbg.declare(metadata i32* %19, metadata !4451, metadata !614), !dbg !4452
  br label %21, !dbg !4453, !llvm.loop !4454

; <label>:21:                                     ; preds = %4
  %22 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %6, align 8, !dbg !4455
  %23 = icmp ne %struct._CHANNEL_REC* %22, null, !dbg !4459
  br i1 %23, label %24, label %25, !dbg !4455

; <label>:24:                                     ; preds = %21
  br label %26, !dbg !4460

; <label>:25:                                     ; preds = %21
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.completion_nicks_nonstrict, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.64, i32 0, i32 0)), !dbg !4463
  store %struct._GList* null, %struct._GList** %5, align 8, !dbg !4466
  br label %143, !dbg !4466

; <label>:26:                                     ; preds = %24
  br label %27, !dbg !4467

; <label>:27:                                     ; preds = %26
  store %struct._GList* null, %struct._GList** %12, align 8, !dbg !4469
  %28 = load i8*, i8** %7, align 8, !dbg !4470
  %29 = call i64 @strlen(i8* %28) #7, !dbg !4471
  %30 = trunc i64 %29 to i32, !dbg !4471
  store i32 %30, i32* %17, align 4, !dbg !4472
  %31 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %6, align 8, !dbg !4473
  %32 = call %struct._GSList* @nicklist_getnicks(%struct._CHANNEL_REC* %31), !dbg !4474
  store %struct._GSList* %32, %struct._GSList** %10, align 8, !dbg !4475
  store i32 80, i32* %18, align 4, !dbg !4476
  %33 = load i32, i32* %18, align 4, !dbg !4477
  %34 = add nsw i32 %33, 1, !dbg !4478
  %35 = sext i32 %34 to i64, !dbg !4477
  %36 = call noalias i8* @g_malloc(i64 %35), !dbg !4479
  store i8* %36, i8** %14, align 8, !dbg !4480
  %37 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !4481
  store %struct._GSList* %37, %struct._GSList** %11, align 8, !dbg !4483
  br label %38, !dbg !4484

; <label>:38:                                     ; preds = %135, %27
  %39 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !4485
  %40 = icmp ne %struct._GSList* %39, null, !dbg !4488
  br i1 %40, label %41, label %139, !dbg !4489

; <label>:41:                                     ; preds = %38
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %20, metadata !4490, metadata !614), !dbg !4492
  %42 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !4493
  %43 = getelementptr inbounds %struct._GSList, %struct._GSList* %42, i32 0, i32 0, !dbg !4494
  %44 = load i8*, i8** %43, align 8, !dbg !4494
  %45 = bitcast i8* %44 to %struct._NICK_REC*, !dbg !4493
  store %struct._NICK_REC* %45, %struct._NICK_REC** %20, align 8, !dbg !4492
  %46 = load %struct._NICK_REC*, %struct._NICK_REC** %20, align 8, !dbg !4495
  %47 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %46, i32 0, i32 3, !dbg !4496
  %48 = load i8*, i8** %47, align 8, !dbg !4496
  %49 = call i64 @strlen(i8* %48) #7, !dbg !4497
  %50 = trunc i64 %49 to i32, !dbg !4497
  store i32 %50, i32* %19, align 4, !dbg !4498
  %51 = load i32, i32* %19, align 4, !dbg !4499
  %52 = load i32, i32* %18, align 4, !dbg !4501
  %53 = icmp sgt i32 %51, %52, !dbg !4502
  br i1 %53, label %54, label %62, !dbg !4503

; <label>:54:                                     ; preds = %41
  %55 = load i32, i32* %19, align 4, !dbg !4504
  %56 = mul nsw i32 %55, 2, !dbg !4506
  store i32 %56, i32* %18, align 4, !dbg !4507
  %57 = load i8*, i8** %14, align 8, !dbg !4508
  %58 = load i32, i32* %18, align 4, !dbg !4509
  %59 = add nsw i32 %58, 1, !dbg !4510
  %60 = sext i32 %59 to i64, !dbg !4509
  %61 = call i8* @g_realloc(i8* %57, i64 %60), !dbg !4511
  store i8* %61, i8** %14, align 8, !dbg !4512
  br label %62, !dbg !4513

; <label>:62:                                     ; preds = %54, %41
  %63 = load %struct._NICK_REC*, %struct._NICK_REC** %20, align 8, !dbg !4514
  %64 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %63, i32 0, i32 3, !dbg !4515
  %65 = load i8*, i8** %64, align 8, !dbg !4515
  store i8* %65, i8** %15, align 8, !dbg !4516
  %66 = load i8*, i8** %14, align 8, !dbg !4517
  store i8* %66, i8** %16, align 8, !dbg !4518
  br label %67, !dbg !4519

; <label>:67:                                     ; preds = %89, %62
  %68 = load i8*, i8** %15, align 8, !dbg !4520
  %69 = load i8, i8* %68, align 1, !dbg !4522
  %70 = sext i8 %69 to i32, !dbg !4522
  %71 = icmp ne i32 %70, 0, !dbg !4523
  br i1 %71, label %72, label %92, !dbg !4524

; <label>:72:                                     ; preds = %67
  %73 = load i8*, i8** %15, align 8, !dbg !4525
  %74 = load i8, i8* %73, align 1, !dbg !4528
  %75 = zext i8 %74 to i32, !dbg !4529
  %76 = sext i32 %75 to i64, !dbg !4530
  %77 = call i16** @__ctype_b_loc() #1, !dbg !4531
  %78 = load i16*, i16** %77, align 8, !dbg !4532
  %79 = getelementptr inbounds i16, i16* %78, i64 %76, !dbg !4530
  %80 = load i16, i16* %79, align 2, !dbg !4530
  %81 = zext i16 %80 to i32, !dbg !4530
  %82 = and i32 %81, 8, !dbg !4533
  %83 = icmp ne i32 %82, 0, !dbg !4533
  br i1 %83, label %84, label %89, !dbg !4534

; <label>:84:                                     ; preds = %72
  %85 = load i8*, i8** %15, align 8, !dbg !4535
  %86 = load i8, i8* %85, align 1, !dbg !4536
  %87 = load i8*, i8** %16, align 8, !dbg !4537
  %88 = getelementptr inbounds i8, i8* %87, i32 1, !dbg !4537
  store i8* %88, i8** %16, align 8, !dbg !4537
  store i8 %86, i8* %87, align 1, !dbg !4538
  br label %89, !dbg !4539

; <label>:89:                                     ; preds = %84, %72
  %90 = load i8*, i8** %15, align 8, !dbg !4540
  %91 = getelementptr inbounds i8, i8* %90, i32 1, !dbg !4540
  store i8* %91, i8** %15, align 8, !dbg !4540
  br label %67, !dbg !4541, !llvm.loop !4543

; <label>:92:                                     ; preds = %67
  %93 = load i8*, i8** %16, align 8, !dbg !4544
  store i8 0, i8* %93, align 1, !dbg !4545
  %94 = load i32, i32* %9, align 4, !dbg !4546
  %95 = icmp ne i32 %94, 0, !dbg !4546
  br i1 %95, label %96, label %102, !dbg !4546

; <label>:96:                                     ; preds = %92
  %97 = load i8*, i8** %14, align 8, !dbg !4548
  %98 = load i8*, i8** %7, align 8, !dbg !4550
  %99 = load i32, i32* %17, align 4, !dbg !4551
  %100 = sext i32 %99 to i64, !dbg !4551
  %101 = call i32 @strncmp(i8* %97, i8* %98, i64 %100) #7, !dbg !4552
  br label %108, !dbg !4553

; <label>:102:                                    ; preds = %92
  %103 = load i8*, i8** %14, align 8, !dbg !4554
  %104 = load i8*, i8** %7, align 8, !dbg !4555
  %105 = load i32, i32* %17, align 4, !dbg !4556
  %106 = sext i32 %105 to i64, !dbg !4556
  %107 = call i32 @g_ascii_strncasecmp(i8* %103, i8* %104, i64 %106), !dbg !4557
  br label %108, !dbg !4558

; <label>:108:                                    ; preds = %102, %96
  %109 = phi i32 [ %101, %96 ], [ %107, %102 ], !dbg !4560
  %110 = icmp eq i32 %109, 0, !dbg !4562
  br i1 %110, label %111, label %134, !dbg !4563

; <label>:111:                                    ; preds = %108
  %112 = load %struct._NICK_REC*, %struct._NICK_REC** %20, align 8, !dbg !4564
  %113 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %112, i32 0, i32 3, !dbg !4566
  %114 = load i8*, i8** %113, align 8, !dbg !4566
  %115 = load i8*, i8** %8, align 8, !dbg !4567
  %116 = call noalias i8* (i8*, ...) @g_strconcat(i8* %114, i8* %115, i8* null), !dbg !4568
  store i8* %116, i8** %13, align 8, !dbg !4569
  %117 = load i32, i32* @completion_lowercase, align 4, !dbg !4570
  %118 = icmp ne i32 %117, 0, !dbg !4570
  br i1 %118, label %119, label %122, !dbg !4572

; <label>:119:                                    ; preds = %111
  %120 = load i8*, i8** %13, align 8, !dbg !4573
  %121 = call i8* @ascii_strdown(i8* %120), !dbg !4574
  br label %122, !dbg !4574

; <label>:122:                                    ; preds = %119, %111
  %123 = load %struct._GList*, %struct._GList** %12, align 8, !dbg !4575
  %124 = load i8*, i8** %13, align 8, !dbg !4577
  %125 = call %struct._GList* @glist_find_icase_string(%struct._GList* %123, i8* %124), !dbg !4578
  %126 = icmp eq %struct._GList* %125, null, !dbg !4579
  br i1 %126, label %127, label %131, !dbg !4580

; <label>:127:                                    ; preds = %122
  %128 = load %struct._GList*, %struct._GList** %12, align 8, !dbg !4581
  %129 = load i8*, i8** %13, align 8, !dbg !4582
  %130 = call %struct._GList* @g_list_append(%struct._GList* %128, i8* %129), !dbg !4583
  store %struct._GList* %130, %struct._GList** %12, align 8, !dbg !4584
  br label %133, !dbg !4585

; <label>:131:                                    ; preds = %122
  %132 = load i8*, i8** %13, align 8, !dbg !4586
  call void @g_free(i8* %132), !dbg !4587
  br label %133

; <label>:133:                                    ; preds = %131, %127
  br label %134, !dbg !4588

; <label>:134:                                    ; preds = %133, %108
  br label %135, !dbg !4589

; <label>:135:                                    ; preds = %134
  %136 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !4590
  %137 = getelementptr inbounds %struct._GSList, %struct._GSList* %136, i32 0, i32 1, !dbg !4592
  %138 = load %struct._GSList*, %struct._GSList** %137, align 8, !dbg !4592
  store %struct._GSList* %138, %struct._GSList** %11, align 8, !dbg !4593
  br label %38, !dbg !4594, !llvm.loop !4595

; <label>:139:                                    ; preds = %38
  %140 = load i8*, i8** %14, align 8, !dbg !4597
  call void @g_free(i8* %140), !dbg !4598
  %141 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !4599
  call void @g_slist_free(%struct._GSList* %141), !dbg !4600
  %142 = load %struct._GList*, %struct._GList** %12, align 8, !dbg !4601
  store %struct._GList* %142, %struct._GList** %5, align 8, !dbg !4602
  br label %143, !dbg !4602

; <label>:143:                                    ; preds = %139, %25
  %144 = load %struct._GList*, %struct._GList** %5, align 8, !dbg !4603
  ret %struct._GList* %144, !dbg !4603
}

declare %struct._GList* @glist_find_string(%struct._GList*, i8*) #2

declare noalias i8* @g_malloc(i64) #2

declare i8* @g_realloc(i8*, i64) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

declare void @g_list_free(%struct._GList*) #2

; Function Attrs: nounwind uwtable
define internal %struct._SERVER_REC* @line_get_server(i8*) #0 !dbg !4604 {
  %2 = alloca %struct._SERVER_REC*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4607, metadata !614), !dbg !4608
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !4609, metadata !614), !dbg !4610
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4611, metadata !614), !dbg !4612
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4613, metadata !614), !dbg !4614
  br label %7, !dbg !4615, !llvm.loop !4616

; <label>:7:                                      ; preds = %1
  %8 = load i8*, i8** %3, align 8, !dbg !4617
  %9 = icmp ne i8* %8, null, !dbg !4621
  br i1 %9, label %10, label %11, !dbg !4617

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !4622

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.line_get_server, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.65, i32 0, i32 0)), !dbg !4625
  store %struct._SERVER_REC* null, %struct._SERVER_REC** %2, align 8, !dbg !4628
  br label %34, !dbg !4628

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !4629

; <label>:13:                                     ; preds = %12
  %14 = load i8*, i8** %3, align 8, !dbg !4631
  %15 = load i8, i8* %14, align 1, !dbg !4633
  %16 = sext i8 %15 to i32, !dbg !4633
  %17 = icmp ne i32 %16, 45, !dbg !4634
  br i1 %17, label %18, label %19, !dbg !4635

; <label>:18:                                     ; preds = %13
  store %struct._SERVER_REC* null, %struct._SERVER_REC** %2, align 8, !dbg !4636
  br label %34, !dbg !4636

; <label>:19:                                     ; preds = %13
  %20 = load i8*, i8** %3, align 8, !dbg !4638
  %21 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !4639
  %22 = call noalias i8* @g_strdup(i8* %21), !dbg !4640
  store i8* %22, i8** %5, align 8, !dbg !4641
  %23 = load i8*, i8** %5, align 8, !dbg !4642
  %24 = call i8* @strchr(i8* %23, i32 32) #7, !dbg !4643
  store i8* %24, i8** %6, align 8, !dbg !4644
  %25 = load i8*, i8** %6, align 8, !dbg !4645
  %26 = icmp ne i8* %25, null, !dbg !4647
  br i1 %26, label %27, label %29, !dbg !4648

; <label>:27:                                     ; preds = %19
  %28 = load i8*, i8** %6, align 8, !dbg !4649
  store i8 0, i8* %28, align 1, !dbg !4651
  br label %29, !dbg !4652

; <label>:29:                                     ; preds = %27, %19
  %30 = load i8*, i8** %5, align 8, !dbg !4653
  %31 = call %struct._SERVER_REC* @server_find_tag(i8* %30), !dbg !4654
  store %struct._SERVER_REC* %31, %struct._SERVER_REC** %4, align 8, !dbg !4655
  %32 = load i8*, i8** %5, align 8, !dbg !4656
  call void @g_free(i8* %32), !dbg !4657
  %33 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !4658
  store %struct._SERVER_REC* %33, %struct._SERVER_REC** %2, align 8, !dbg !4659
  br label %34, !dbg !4659

; <label>:34:                                     ; preds = %29, %18, %11
  %35 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !4660
  ret %struct._SERVER_REC* %35, !dbg !4660
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

declare %struct._SERVER_REC* @server_find_tag(i8*) #2

declare i8* @module_check_cast(i8*, i32, i8*) #2

declare i8* @config_get_str(%struct._CONFIG_REC*, i8*, i8*, i8*) #2

declare %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC*, i8*) #2

declare i32 @nick_match_msg(%struct._CHANNEL_REC*, i8*, i8*) #2

declare noalias i8* @g_strndup(i8*, i64) #2

declare %struct._NICK_REC* @nicklist_find(%struct._CHANNEL_REC*, i8*) #2

declare %struct._QUERY_REC* @query_find(%struct._SERVER_REC*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i8* @expand_escapes(i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !4661 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4664, metadata !614), !dbg !4665
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !4666, metadata !614), !dbg !4667
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !4668, metadata !614), !dbg !4669
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4670, metadata !614), !dbg !4671
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4672, metadata !614), !dbg !4673
  call void @llvm.dbg.declare(metadata i8** %9, metadata !4674, metadata !614), !dbg !4675
  call void @llvm.dbg.declare(metadata i32* %10, metadata !4676, metadata !614), !dbg !4677
  %12 = load i8*, i8** %4, align 8, !dbg !4678
  store i8* %12, i8** %9, align 8, !dbg !4679
  %13 = load i8*, i8** %4, align 8, !dbg !4680
  %14 = call i64 @strlen(i8* %13) #7, !dbg !4681
  %15 = add i64 %14, 1, !dbg !4682
  %16 = call noalias i8* @g_malloc(i64 %15), !dbg !4683
  store i8* %16, i8** %7, align 8, !dbg !4685
  store i8* %16, i8** %8, align 8, !dbg !4686
  br label %17, !dbg !4687

; <label>:17:                                     ; preds = %87, %3
  %18 = load i8*, i8** %4, align 8, !dbg !4688
  %19 = load i8, i8* %18, align 1, !dbg !4692
  %20 = sext i8 %19 to i32, !dbg !4692
  %21 = icmp ne i32 %20, 0, !dbg !4693
  br i1 %21, label %22, label %90, !dbg !4694

; <label>:22:                                     ; preds = %17
  %23 = load i8*, i8** %4, align 8, !dbg !4695
  %24 = load i8, i8* %23, align 1, !dbg !4698
  %25 = sext i8 %24 to i32, !dbg !4698
  %26 = icmp ne i32 %25, 92, !dbg !4699
  br i1 %26, label %27, label %32, !dbg !4700

; <label>:27:                                     ; preds = %22
  %28 = load i8*, i8** %4, align 8, !dbg !4701
  %29 = load i8, i8* %28, align 1, !dbg !4703
  %30 = load i8*, i8** %7, align 8, !dbg !4704
  %31 = getelementptr inbounds i8, i8* %30, i32 1, !dbg !4704
  store i8* %31, i8** %7, align 8, !dbg !4704
  store i8 %29, i8* %30, align 1, !dbg !4705
  br label %87, !dbg !4706

; <label>:32:                                     ; preds = %22
  %33 = load i8*, i8** %4, align 8, !dbg !4707
  %34 = getelementptr inbounds i8, i8* %33, i32 1, !dbg !4707
  store i8* %34, i8** %4, align 8, !dbg !4707
  %35 = load i8*, i8** %4, align 8, !dbg !4708
  %36 = load i8, i8* %35, align 1, !dbg !4710
  %37 = sext i8 %36 to i32, !dbg !4710
  %38 = icmp eq i32 %37, 0, !dbg !4711
  br i1 %38, label %39, label %42, !dbg !4712

; <label>:39:                                     ; preds = %32
  %40 = load i8*, i8** %7, align 8, !dbg !4713
  %41 = getelementptr inbounds i8, i8* %40, i32 1, !dbg !4713
  store i8* %41, i8** %7, align 8, !dbg !4713
  store i8 92, i8* %40, align 1, !dbg !4715
  br label %90, !dbg !4716

; <label>:42:                                     ; preds = %32
  %43 = call i32 @expand_escape(i8** %4), !dbg !4717
  store i32 %43, i32* %10, align 4, !dbg !4718
  %44 = load i32, i32* %10, align 4, !dbg !4719
  %45 = icmp eq i32 %44, 13, !dbg !4721
  br i1 %45, label %49, label %46, !dbg !4722

; <label>:46:                                     ; preds = %42
  %47 = load i32, i32* %10, align 4, !dbg !4723
  %48 = icmp eq i32 %47, 10, !dbg !4725
  br i1 %48, label %49, label %70, !dbg !4726

; <label>:49:                                     ; preds = %46, %42
  %50 = load i8*, i8** %9, align 8, !dbg !4727
  %51 = load i8*, i8** %4, align 8, !dbg !4730
  %52 = icmp ne i8* %50, %51, !dbg !4731
  br i1 %52, label %53, label %69, !dbg !4732

; <label>:53:                                     ; preds = %49
  call void @llvm.dbg.declare(metadata i8** %11, metadata !4733, metadata !614), !dbg !4735
  %54 = load i8*, i8** %9, align 8, !dbg !4736
  %55 = load i8*, i8** %4, align 8, !dbg !4737
  %56 = load i8*, i8** %9, align 8, !dbg !4738
  %57 = ptrtoint i8* %55 to i64, !dbg !4739
  %58 = ptrtoint i8* %56 to i64, !dbg !4739
  %59 = sub i64 %57, %58, !dbg !4739
  %60 = sub nsw i64 %59, 1, !dbg !4740
  %61 = call noalias i8* @g_strndup(i8* %54, i64 %60), !dbg !4741
  store i8* %61, i8** %11, align 8, !dbg !4735
  %62 = load i8*, i8** %11, align 8, !dbg !4742
  %63 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !4743
  %64 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !4744
  call void @event_text(i8* %62, %struct._SERVER_REC* %63, %struct._WI_ITEM_REC* %64), !dbg !4745
  %65 = load i8*, i8** %11, align 8, !dbg !4746
  call void @g_free(i8* %65), !dbg !4747
  %66 = load i8*, i8** %4, align 8, !dbg !4748
  %67 = getelementptr inbounds i8, i8* %66, i64 1, !dbg !4749
  store i8* %67, i8** %9, align 8, !dbg !4750
  %68 = load i8*, i8** %8, align 8, !dbg !4751
  store i8* %68, i8** %7, align 8, !dbg !4752
  br label %69, !dbg !4753

; <label>:69:                                     ; preds = %53, %49
  br label %86, !dbg !4754

; <label>:70:                                     ; preds = %46
  %71 = load i32, i32* %10, align 4, !dbg !4755
  %72 = icmp ne i32 %71, -1, !dbg !4758
  br i1 %72, label %73, label %78, !dbg !4755

; <label>:73:                                     ; preds = %70
  %74 = load i32, i32* %10, align 4, !dbg !4759
  %75 = trunc i32 %74 to i8, !dbg !4759
  %76 = load i8*, i8** %7, align 8, !dbg !4761
  %77 = getelementptr inbounds i8, i8* %76, i32 1, !dbg !4761
  store i8* %77, i8** %7, align 8, !dbg !4761
  store i8 %75, i8* %76, align 1, !dbg !4762
  br label %85, !dbg !4763

; <label>:78:                                     ; preds = %70
  %79 = load i8*, i8** %7, align 8, !dbg !4764
  %80 = getelementptr inbounds i8, i8* %79, i32 1, !dbg !4764
  store i8* %80, i8** %7, align 8, !dbg !4764
  store i8 92, i8* %79, align 1, !dbg !4766
  %81 = load i8*, i8** %4, align 8, !dbg !4767
  %82 = load i8, i8* %81, align 1, !dbg !4768
  %83 = load i8*, i8** %7, align 8, !dbg !4769
  %84 = getelementptr inbounds i8, i8* %83, i32 1, !dbg !4769
  store i8* %84, i8** %7, align 8, !dbg !4769
  store i8 %82, i8* %83, align 1, !dbg !4770
  br label %85

; <label>:85:                                     ; preds = %78, %73
  br label %86

; <label>:86:                                     ; preds = %85, %69
  br label %87, !dbg !4771

; <label>:87:                                     ; preds = %86, %27
  %88 = load i8*, i8** %4, align 8, !dbg !4772
  %89 = getelementptr inbounds i8, i8* %88, i32 1, !dbg !4772
  store i8* %89, i8** %4, align 8, !dbg !4772
  br label %17, !dbg !4774, !llvm.loop !4775

; <label>:90:                                     ; preds = %39, %17
  %91 = load i8*, i8** %7, align 8, !dbg !4776
  store i8 0, i8* %91, align 1, !dbg !4777
  %92 = load i8*, i8** %8, align 8, !dbg !4778
  ret i8* %92, !dbg !4779
}

; Function Attrs: nounwind uwtable
define internal i8* @auto_complete(%struct._CHANNEL_REC*, i8*) #0 !dbg !4780 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._CHANNEL_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GList*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %4, metadata !4783, metadata !614), !dbg !4784
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4785, metadata !614), !dbg !4786
  call void @llvm.dbg.declare(metadata %struct._GList** %6, metadata !4787, metadata !614), !dbg !4788
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4789, metadata !614), !dbg !4790
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4791, metadata !614), !dbg !4792
  call void @llvm.dbg.declare(metadata i8** %9, metadata !4793, metadata !614), !dbg !4794
  %10 = load i8*, i8** %5, align 8, !dbg !4795
  %11 = load i8*, i8** @completion_char, align 8, !dbg !4796
  %12 = call i8* @strstr(i8* %10, i8* %11) #7, !dbg !4797
  store i8* %12, i8** %7, align 8, !dbg !4798
  %13 = load i8*, i8** %7, align 8, !dbg !4799
  %14 = icmp eq i8* %13, null, !dbg !4801
  br i1 %14, label %15, label %16, !dbg !4802

; <label>:15:                                     ; preds = %2
  store i8* null, i8** %3, align 8, !dbg !4803
  br label %48, !dbg !4803

; <label>:16:                                     ; preds = %2
  %17 = load i8*, i8** %5, align 8, !dbg !4804
  %18 = load i8*, i8** %7, align 8, !dbg !4805
  %19 = load i8*, i8** %5, align 8, !dbg !4806
  %20 = ptrtoint i8* %18 to i64, !dbg !4807
  %21 = ptrtoint i8* %19 to i64, !dbg !4807
  %22 = sub i64 %20, %21, !dbg !4807
  %23 = trunc i64 %22 to i32, !dbg !4808
  %24 = sext i32 %23 to i64, !dbg !4808
  %25 = call noalias i8* @g_strndup(i8* %17, i64 %24), !dbg !4809
  store i8* %25, i8** %8, align 8, !dbg !4810
  store i8* null, i8** %9, align 8, !dbg !4811
  %26 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %4, align 8, !dbg !4812
  %27 = load i8*, i8** %8, align 8, !dbg !4814
  %28 = call %struct._NICK_REC* @nicklist_find(%struct._CHANNEL_REC* %26, i8* %27), !dbg !4815
  %29 = icmp eq %struct._NICK_REC* %28, null, !dbg !4816
  br i1 %29, label %30, label %45, !dbg !4817

; <label>:30:                                     ; preds = %16
  %31 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %4, align 8, !dbg !4818
  %32 = load i8*, i8** %8, align 8, !dbg !4820
  %33 = call %struct._GList* @completion_channel_nicks(%struct._CHANNEL_REC* %31, i8* %32, i8* null), !dbg !4821
  store %struct._GList* %33, %struct._GList** %6, align 8, !dbg !4822
  %34 = load %struct._GList*, %struct._GList** %6, align 8, !dbg !4823
  %35 = icmp ne %struct._GList* %34, null, !dbg !4825
  br i1 %35, label %36, label %44, !dbg !4826

; <label>:36:                                     ; preds = %30
  %37 = load %struct._GList*, %struct._GList** %6, align 8, !dbg !4827
  %38 = getelementptr inbounds %struct._GList, %struct._GList* %37, i32 0, i32 0, !dbg !4829
  %39 = load i8*, i8** %38, align 8, !dbg !4829
  %40 = load i8*, i8** %7, align 8, !dbg !4830
  %41 = call noalias i8* (i8*, ...) @g_strconcat(i8* %39, i8* %40, i8* null), !dbg !4831
  store i8* %41, i8** %9, align 8, !dbg !4832
  %42 = load %struct._GList*, %struct._GList** %6, align 8, !dbg !4833
  call void @g_list_foreach(%struct._GList* %42, void (i8*, i8*)* bitcast (void (i8*)* @g_free to void (i8*, i8*)*), i8* null), !dbg !4834
  %43 = load %struct._GList*, %struct._GList** %6, align 8, !dbg !4835
  call void @g_list_free(%struct._GList* %43), !dbg !4836
  br label %44, !dbg !4837

; <label>:44:                                     ; preds = %36, %30
  br label %45, !dbg !4838

; <label>:45:                                     ; preds = %44, %16
  %46 = load i8*, i8** %8, align 8, !dbg !4839
  call void @g_free(i8* %46), !dbg !4840
  %47 = load i8*, i8** %9, align 8, !dbg !4841
  store i8* %47, i8** %3, align 8, !dbg !4842
  br label %48, !dbg !4842

; <label>:48:                                     ; preds = %45, %15
  %49 = load i8*, i8** %3, align 8, !dbg !4843
  ret i8* %49, !dbg !4843
}

declare i8* @escape_string(i8*) #2

declare i32 @signal_emit(i8*, i32, ...) #2

declare i32 @expand_escape(i8**) #2

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #3

declare void @g_list_foreach(%struct._GList*, void (i8*, i8*)*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!606, !607}
!llvm.ident = !{!608}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !109, globals: !595)
!1 = !DIFile(filename: "line210-chat-completion.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10, !15, !24, !35, !43, !49, !80, !94}
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
!36 = !DIFile(filename: "../../../src/lib-config/iconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!37 = !{!38, !39, !40, !41, !42}
!38 = !DIEnumerator(name: "NODE_TYPE_KEY", value: 0)
!39 = !DIEnumerator(name: "NODE_TYPE_VALUE", value: 1)
!40 = !DIEnumerator(name: "NODE_TYPE_BLOCK", value: 2)
!41 = !DIEnumerator(name: "NODE_TYPE_LIST", value: 3)
!42 = !DIEnumerator(name: "NODE_TYPE_COMMENT", value: 4)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !44, line: 41, size: 32, align: 32, elements: !45)
!44 = !DIFile(filename: "chat-completion.c", directory: "/home/lichi/Desktop/irssi/task1")
!45 = !{!46, !47, !48}
!46 = !DIEnumerator(name: "COMPLETE_MCASE_NEVER", value: 0)
!47 = !DIEnumerator(name: "COMPLETE_MCASE_ALWAYS", value: 1)
!48 = !DIEnumerator(name: "COMPLETE_MCASE_AUTO", value: 2)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !50, line: 10, size: 32, align: 32, elements: !51)
!50 = !DIFile(filename: "../../../src/core/levels.h", directory: "/home/lichi/Desktop/irssi/task1")
!51 = !{!52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79}
!52 = !DIEnumerator(name: "MSGLEVEL_CRAP", value: 1)
!53 = !DIEnumerator(name: "MSGLEVEL_MSGS", value: 2)
!54 = !DIEnumerator(name: "MSGLEVEL_PUBLIC", value: 4)
!55 = !DIEnumerator(name: "MSGLEVEL_NOTICES", value: 8)
!56 = !DIEnumerator(name: "MSGLEVEL_SNOTES", value: 16)
!57 = !DIEnumerator(name: "MSGLEVEL_CTCPS", value: 32)
!58 = !DIEnumerator(name: "MSGLEVEL_ACTIONS", value: 64)
!59 = !DIEnumerator(name: "MSGLEVEL_JOINS", value: 128)
!60 = !DIEnumerator(name: "MSGLEVEL_PARTS", value: 256)
!61 = !DIEnumerator(name: "MSGLEVEL_QUITS", value: 512)
!62 = !DIEnumerator(name: "MSGLEVEL_KICKS", value: 1024)
!63 = !DIEnumerator(name: "MSGLEVEL_MODES", value: 2048)
!64 = !DIEnumerator(name: "MSGLEVEL_TOPICS", value: 4096)
!65 = !DIEnumerator(name: "MSGLEVEL_WALLOPS", value: 8192)
!66 = !DIEnumerator(name: "MSGLEVEL_INVITES", value: 16384)
!67 = !DIEnumerator(name: "MSGLEVEL_NICKS", value: 32768)
!68 = !DIEnumerator(name: "MSGLEVEL_DCC", value: 65536)
!69 = !DIEnumerator(name: "MSGLEVEL_DCCMSGS", value: 131072)
!70 = !DIEnumerator(name: "MSGLEVEL_CLIENTNOTICE", value: 262144)
!71 = !DIEnumerator(name: "MSGLEVEL_CLIENTCRAP", value: 524288)
!72 = !DIEnumerator(name: "MSGLEVEL_CLIENTERROR", value: 1048576)
!73 = !DIEnumerator(name: "MSGLEVEL_HILIGHT", value: 2097152)
!74 = !DIEnumerator(name: "MSGLEVEL_ALL", value: 4194303)
!75 = !DIEnumerator(name: "MSGLEVEL_NOHILIGHT", value: 16777216)
!76 = !DIEnumerator(name: "MSGLEVEL_NO_ACT", value: 33554432)
!77 = !DIEnumerator(name: "MSGLEVEL_NEVER", value: 67108864)
!78 = !DIEnumerator(name: "MSGLEVEL_LASTLOG", value: 134217728)
!79 = !DIEnumerator(name: "MSGLEVEL_HIDDEN", value: 268435456)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !81, line: 39, size: 32, align: 32, elements: !82)
!81 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstrfuncs.h", directory: "/home/lichi/Desktop/irssi/task1")
!82 = !{!83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93}
!83 = !DIEnumerator(name: "G_ASCII_ALNUM", value: 1)
!84 = !DIEnumerator(name: "G_ASCII_ALPHA", value: 2)
!85 = !DIEnumerator(name: "G_ASCII_CNTRL", value: 4)
!86 = !DIEnumerator(name: "G_ASCII_DIGIT", value: 8)
!87 = !DIEnumerator(name: "G_ASCII_GRAPH", value: 16)
!88 = !DIEnumerator(name: "G_ASCII_LOWER", value: 32)
!89 = !DIEnumerator(name: "G_ASCII_PRINT", value: 64)
!90 = !DIEnumerator(name: "G_ASCII_PUNCT", value: 128)
!91 = !DIEnumerator(name: "G_ASCII_SPACE", value: 256)
!92 = !DIEnumerator(name: "G_ASCII_UPPER", value: 512)
!93 = !DIEnumerator(name: "G_ASCII_XDIGIT", value: 1024)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !95, line: 46, size: 32, align: 32, elements: !96)
!95 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/lichi/Desktop/irssi/task1")
!96 = !{!97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108}
!97 = !DIEnumerator(name: "_ISupper", value: 256)
!98 = !DIEnumerator(name: "_ISlower", value: 512)
!99 = !DIEnumerator(name: "_ISalpha", value: 1024)
!100 = !DIEnumerator(name: "_ISdigit", value: 2048)
!101 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!102 = !DIEnumerator(name: "_ISspace", value: 8192)
!103 = !DIEnumerator(name: "_ISprint", value: 16384)
!104 = !DIEnumerator(name: "_ISgraph", value: 32768)
!105 = !DIEnumerator(name: "_ISblank", value: 1)
!106 = !DIEnumerator(name: "_IScntrl", value: 2)
!107 = !DIEnumerator(name: "_ISpunct", value: 4)
!108 = !DIEnumerator(name: "_ISalnum", value: 8)
!109 = !{!110, !111, !115, !117, !124, !138, !139, !152, !158, !478, !584, !585, !198, !174, !586, !591}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !113, line: 46, baseType: !114)
!113 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!114 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !118, line: 9, baseType: !119)
!118 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{null, !122, !122, !122, !122, !122, !122}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "LAST_MSG_REC", file: !126, line: 23, baseType: !127)
!126 = !DIFile(filename: "module.h", directory: "/home/lichi/Desktop/irssi/task1")
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !126, line: 6, size: 192, align: 64, elements: !128)
!128 = !{!129, !135, !137}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !127, file: !126, line: 7, baseType: !130, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !131, line: 75, baseType: !132)
!131 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !133, line: 139, baseType: !134)
!133 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!134 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !127, file: !126, line: 8, baseType: !136, size: 64, align: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "own", scope: !127, file: !126, line: 22, baseType: !138, size: 32, align: 32, offset: 128)
!138 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "MODULE_SERVER_REC", file: !126, line: 29, baseType: !141)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !126, line: 25, size: 64, align: 64, elements: !142)
!142 = !{!143}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "lastmsgs", scope: !141, file: !126, line: 27, baseType: !144, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !146, line: 37, baseType: !147)
!146 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !146, line: 39, size: 128, align: 64, elements: !148)
!148 = !{!149, !151}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !147, file: !146, line: 41, baseType: !150, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !113, line: 77, baseType: !110)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !147, file: !146, line: 42, baseType: !144, size: 64, align: 64, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCompareFunc", file: !113, line: 80, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64, align: 64)
!154 = !DISubroutineType(types: !155)
!155 = !{!156, !157, !157}
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !113, line: 49, baseType: !138)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "gconstpointer", file: !113, line: 78, baseType: !122)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !160, line: 109, baseType: !161)
!160 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !162, line: 15, size: 1408, align: 64, elements: !163)
!162 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!163 = !{!164, !166, !167, !172, !173, !529, !530, !531, !532, !533, !534, !535, !536, !538, !539, !540, !541, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !161, file: !165, line: 3, baseType: !138, size: 32, align: 32)
!165 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!166 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !161, file: !165, line: 4, baseType: !138, size: 32, align: 32, offset: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !161, file: !165, line: 5, baseType: !168, size: 64, align: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64, align: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !170, line: 37, baseType: !171)
!170 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!171 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !170, line: 37, flags: DIFlagFwdDecl)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !161, file: !165, line: 7, baseType: !110, size: 64, align: 64, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !161, file: !165, line: 8, baseType: !174, size: 64, align: 64, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !160, line: 107, baseType: !176)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !177, line: 30, size: 2240, align: 64, elements: !178)
!177 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!178 = !{!179, !181, !182, !183, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !415, !416, !420, !421, !422, !426, !427, !428, !429, !430, !431, !432, !433, !434, !441, !442, !443, !444, !445, !449, !453, !457, !461, !465, !470, !474, !524, !528}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !176, file: !180, line: 3, baseType: !138, size: 32, align: 32)
!180 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!181 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !176, file: !180, line: 4, baseType: !138, size: 32, align: 32, offset: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !176, file: !180, line: 6, baseType: !138, size: 32, align: 32, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !176, file: !180, line: 8, baseType: !184, size: 64, align: 64, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64, align: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !160, line: 113, baseType: !186)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !177, line: 25, size: 1920, align: 64, elements: !187)
!187 = !{!188, !190, !191, !192, !193, !194, !195, !196, !197, !199, !200, !201, !202, !203, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !186, file: !189, line: 3, baseType: !138, size: 32, align: 32)
!189 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!190 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !186, file: !189, line: 4, baseType: !138, size: 32, align: 32, offset: 32)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !186, file: !189, line: 6, baseType: !138, size: 32, align: 32, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !186, file: !189, line: 9, baseType: !136, size: 64, align: 64, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !186, file: !189, line: 10, baseType: !138, size: 32, align: 32, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !186, file: !189, line: 11, baseType: !136, size: 64, align: 64, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !186, file: !189, line: 11, baseType: !136, size: 64, align: 64, offset: 320)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !186, file: !189, line: 11, baseType: !136, size: 64, align: 64, offset: 384)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !186, file: !189, line: 13, baseType: !198, size: 16, align: 16, offset: 448)
!198 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !186, file: !189, line: 14, baseType: !136, size: 64, align: 64, offset: 512)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !186, file: !189, line: 15, baseType: !136, size: 64, align: 64, offset: 576)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !186, file: !189, line: 16, baseType: !138, size: 32, align: 32, offset: 640)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !186, file: !189, line: 17, baseType: !136, size: 64, align: 64, offset: 704)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !186, file: !189, line: 19, baseType: !204, size: 64, align: 64, offset: 768)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !160, line: 99, baseType: !206)
!206 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !160, line: 99, flags: DIFlagFwdDecl)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !186, file: !189, line: 19, baseType: !204, size: 64, align: 64, offset: 832)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !186, file: !189, line: 21, baseType: !136, size: 64, align: 64, offset: 896)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !186, file: !189, line: 22, baseType: !136, size: 64, align: 64, offset: 960)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !186, file: !189, line: 23, baseType: !136, size: 64, align: 64, offset: 1024)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !186, file: !189, line: 24, baseType: !136, size: 64, align: 64, offset: 1088)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !186, file: !189, line: 26, baseType: !136, size: 64, align: 64, offset: 1152)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !186, file: !189, line: 27, baseType: !136, size: 64, align: 64, offset: 1216)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !186, file: !189, line: 28, baseType: !136, size: 64, align: 64, offset: 1280)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !186, file: !189, line: 29, baseType: !136, size: 64, align: 64, offset: 1344)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !186, file: !189, line: 30, baseType: !136, size: 64, align: 64, offset: 1408)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !186, file: !189, line: 31, baseType: !136, size: 64, align: 64, offset: 1472)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !186, file: !189, line: 32, baseType: !136, size: 64, align: 64, offset: 1536)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !186, file: !189, line: 33, baseType: !136, size: 64, align: 64, offset: 1600)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !186, file: !189, line: 35, baseType: !221, size: 64, align: 64, offset: 1664)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !223)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !224)
!224 = !{!225, !226, !359, !360, !365, !366, !367, !368, !369, !378, !379, !380, !384, !385, !386, !387, !388, !389, !390, !391}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !223, file: !4, line: 100, baseType: !156, size: 32, align: 32)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !223, file: !4, line: 101, baseType: !227, size: 64, align: 64, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64, align: 64)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !229)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !230)
!230 = !{!231, !253, !259, !265, !269, !346, !350, !355}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !229, file: !4, line: 133, baseType: !232, size: 64, align: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!235, !221, !111, !236, !239, !240}
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !237, line: 66, baseType: !238)
!237 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!238 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, align: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !243, line: 42, baseType: !244)
!243 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !243, line: 44, size: 128, align: 64, elements: !245)
!245 = !{!246, !251, !252}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !244, file: !243, line: 46, baseType: !247, size: 32, align: 32)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !248, line: 36, baseType: !249)
!248 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !237, line: 45, baseType: !250)
!250 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !244, file: !243, line: 47, baseType: !156, size: 32, align: 32, offset: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !244, file: !243, line: 48, baseType: !111, size: 64, align: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !229, file: !4, line: 138, baseType: !254, size: 64, align: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64, align: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!235, !221, !257, !236, !239, !240}
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64, align: 64)
!258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !229, file: !4, line: 143, baseType: !260, size: 64, align: 64, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!235, !221, !263, !264, !240}
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !237, line: 51, baseType: !134)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !229, file: !4, line: 147, baseType: !266, size: 64, align: 64, offset: 192)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!235, !221, !240}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !229, file: !4, line: 149, baseType: !270, size: 64, align: 64, offset: 256)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!273, !221, !345}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64, align: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !276)
!276 = !{!277, !278, !299, !328, !330, !334, !335, !336, !337, !338, !339, !340, !341}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !275, file: !16, line: 174, baseType: !150, size: 64, align: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !275, file: !16, line: 175, baseType: !279, size: 64, align: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !282)
!282 = !{!283, !287, !288}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !281, file: !16, line: 198, baseType: !284, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64, align: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{null, !150}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !281, file: !16, line: 199, baseType: !284, size: 64, align: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !281, file: !16, line: 200, baseType: !289, size: 64, align: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{null, !150, !273, !292, !298}
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, align: 64)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64, align: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!297, !150}
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !113, line: 50, baseType: !156)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !275, file: !16, line: 177, baseType: !300, size: 64, align: 64, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !303)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !304)
!304 = !{!305, !310, !314, !318, !322, !323}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !303, file: !16, line: 216, baseType: !306, size: 64, align: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!297, !273, !309}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !303, file: !16, line: 218, baseType: !311, size: 64, align: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!297, !273}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !303, file: !16, line: 219, baseType: !315, size: 64, align: 64, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64, align: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!297, !273, !293, !150}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !303, file: !16, line: 222, baseType: !319, size: 64, align: 64, offset: 192)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64, align: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{null, !273}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !303, file: !16, line: 226, baseType: !293, size: 64, align: 64, offset: 256)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !303, file: !16, line: 227, baseType: !324, size: 64, align: 64, offset: 320)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{null}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !275, file: !16, line: 178, baseType: !329, size: 32, align: 32, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !113, line: 55, baseType: !250)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !275, file: !16, line: 180, baseType: !331, size: 64, align: 64, offset: 256)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !333)
!333 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !275, file: !16, line: 182, baseType: !156, size: 32, align: 32, offset: 320)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !275, file: !16, line: 183, baseType: !329, size: 32, align: 32, offset: 352)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !275, file: !16, line: 184, baseType: !329, size: 32, align: 32, offset: 384)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !275, file: !16, line: 186, baseType: !144, size: 64, align: 64, offset: 448)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !275, file: !16, line: 188, baseType: !273, size: 64, align: 64, offset: 512)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !275, file: !16, line: 189, baseType: !273, size: 64, align: 64, offset: 576)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !275, file: !16, line: 191, baseType: !136, size: 64, align: 64, offset: 640)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !275, file: !16, line: 193, baseType: !342, size: 64, align: 64, offset: 704)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64, align: 64)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !344)
!344 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !229, file: !4, line: 151, baseType: !347, size: 64, align: 64, offset: 320)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, align: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !221}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !229, file: !4, line: 152, baseType: !351, size: 64, align: 64, offset: 384)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{!235, !221, !354, !240}
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !229, file: !4, line: 155, baseType: !356, size: 64, align: 64, offset: 448)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64, align: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{!354, !221}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !223, file: !4, line: 103, baseType: !111, size: 64, align: 64, offset: 128)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !223, file: !4, line: 104, baseType: !361, size: 64, align: 64, offset: 192)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !362, line: 77, baseType: !363)
!362 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64, align: 64)
!364 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !362, line: 77, flags: DIFlagFwdDecl)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !223, file: !4, line: 105, baseType: !361, size: 64, align: 64, offset: 256)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !223, file: !4, line: 106, baseType: !111, size: 64, align: 64, offset: 320)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !223, file: !4, line: 107, baseType: !329, size: 32, align: 32, offset: 384)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !223, file: !4, line: 109, baseType: !236, size: 64, align: 64, offset: 448)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !223, file: !4, line: 110, baseType: !370, size: 64, align: 64, offset: 512)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64, align: 64)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !372, line: 39, baseType: !373)
!372 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !372, line: 41, size: 192, align: 64, elements: !374)
!374 = !{!375, !376, !377}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !373, file: !372, line: 43, baseType: !111, size: 64, align: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !373, file: !372, line: 44, baseType: !236, size: 64, align: 64, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !373, file: !372, line: 45, baseType: !236, size: 64, align: 64, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !223, file: !4, line: 111, baseType: !370, size: 64, align: 64, offset: 576)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !223, file: !4, line: 112, baseType: !370, size: 64, align: 64, offset: 640)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !223, file: !4, line: 113, baseType: !381, size: 48, align: 8, offset: 704)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 48, align: 8, elements: !382)
!382 = !{!383}
!383 = !DISubrange(count: 6)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !223, file: !4, line: 117, baseType: !329, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !223, file: !4, line: 118, baseType: !329, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !223, file: !4, line: 119, baseType: !329, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !223, file: !4, line: 120, baseType: !329, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !223, file: !4, line: 121, baseType: !329, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !223, file: !4, line: 122, baseType: !329, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !223, file: !4, line: 124, baseType: !150, size: 64, align: 64, offset: 768)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !223, file: !4, line: 125, baseType: !150, size: 64, align: 64, offset: 832)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !186, file: !189, line: 38, baseType: !250, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !186, file: !189, line: 39, baseType: !250, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !186, file: !189, line: 40, baseType: !250, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !186, file: !189, line: 41, baseType: !250, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !186, file: !189, line: 42, baseType: !250, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !186, file: !189, line: 43, baseType: !250, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !186, file: !189, line: 44, baseType: !250, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !186, file: !189, line: 45, baseType: !250, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !186, file: !189, line: 46, baseType: !136, size: 64, align: 64, offset: 1792)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !186, file: !189, line: 47, baseType: !136, size: 64, align: 64, offset: 1856)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !176, file: !180, line: 9, baseType: !130, size: 64, align: 64, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !176, file: !180, line: 10, baseType: !130, size: 64, align: 64, offset: 256)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !176, file: !180, line: 12, baseType: !136, size: 64, align: 64, offset: 320)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !176, file: !180, line: 13, baseType: !136, size: 64, align: 64, offset: 384)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !176, file: !180, line: 15, baseType: !250, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !176, file: !180, line: 16, baseType: !250, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !176, file: !180, line: 17, baseType: !250, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !176, file: !180, line: 18, baseType: !250, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !176, file: !180, line: 19, baseType: !250, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !176, file: !180, line: 21, baseType: !412, size: 64, align: 64, offset: 512)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64, align: 64)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !160, line: 102, baseType: !414)
!414 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !160, line: 102, flags: DIFlagFwdDecl)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !176, file: !180, line: 22, baseType: !138, size: 32, align: 32, offset: 576)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !176, file: !180, line: 25, baseType: !417, size: 128, align: 64, offset: 640)
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 128, align: 64, elements: !418)
!418 = !{!419}
!419 = !DISubrange(count: 2)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !176, file: !180, line: 26, baseType: !138, size: 32, align: 32, offset: 768)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !176, file: !180, line: 27, baseType: !138, size: 32, align: 32, offset: 800)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !176, file: !180, line: 29, baseType: !423, size: 64, align: 64, offset: 832)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64, align: 64)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !160, line: 103, baseType: !425)
!425 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !160, line: 103, flags: DIFlagFwdDecl)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !176, file: !180, line: 30, baseType: !168, size: 64, align: 64, offset: 896)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !176, file: !180, line: 32, baseType: !136, size: 64, align: 64, offset: 960)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !176, file: !180, line: 33, baseType: !136, size: 64, align: 64, offset: 1024)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !176, file: !180, line: 34, baseType: !136, size: 64, align: 64, offset: 1088)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !176, file: !180, line: 35, baseType: !250, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !176, file: !180, line: 36, baseType: !250, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !176, file: !180, line: 37, baseType: !250, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !176, file: !180, line: 38, baseType: !250, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !176, file: !180, line: 40, baseType: !435, size: 128, align: 64, offset: 1216)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !113, line: 504, baseType: !436)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !113, line: 506, size: 128, align: 64, elements: !437)
!437 = !{!438, !440}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !436, file: !113, line: 508, baseType: !439, size: 64, align: 64)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !113, line: 48, baseType: !134)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !436, file: !113, line: 509, baseType: !439, size: 64, align: 64, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !176, file: !180, line: 41, baseType: !130, size: 64, align: 64, offset: 1344)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !176, file: !180, line: 42, baseType: !138, size: 32, align: 32, offset: 1408)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !176, file: !180, line: 44, baseType: !144, size: 64, align: 64, offset: 1472)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !176, file: !180, line: 45, baseType: !144, size: 64, align: 64, offset: 1536)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !176, file: !180, line: 53, baseType: !446, size: 64, align: 64, offset: 1600)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64, align: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{null, !174, !115, !138}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !176, file: !180, line: 55, baseType: !450, size: 64, align: 64, offset: 1664)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64, align: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!138, !174, !114}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !176, file: !180, line: 57, baseType: !454, size: 64, align: 64, offset: 1728)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64, align: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!138, !174, !115}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !176, file: !180, line: 60, baseType: !458, size: 64, align: 64, offset: 1792)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64, align: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!115, !174}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !176, file: !180, line: 62, baseType: !462, size: 64, align: 64, offset: 1856)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64, align: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !174, !115, !115, !138}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !176, file: !180, line: 65, baseType: !466, size: 64, align: 64, offset: 1920)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64, align: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!469, !174, !115, !115}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64, align: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !176, file: !180, line: 69, baseType: !471, size: 64, align: 64, offset: 1984)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64, align: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!158, !174, !115}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !176, file: !180, line: 70, baseType: !475, size: 64, align: 64, offset: 2048)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64, align: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!478, !174, !115}
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64, align: 64)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !160, line: 110, baseType: !480)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !481, line: 15, size: 960, align: 64, elements: !482)
!481 = !DIFile(filename: "../../../src/core/queries.h", directory: "/home/lichi/Desktop/irssi/task1")
!482 = !{!483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !517, !518, !520, !521, !522, !523}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !480, file: !165, line: 3, baseType: !138, size: 32, align: 32)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !480, file: !165, line: 4, baseType: !138, size: 32, align: 32, offset: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !480, file: !165, line: 5, baseType: !168, size: 64, align: 64, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !480, file: !165, line: 7, baseType: !110, size: 64, align: 64, offset: 128)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !480, file: !165, line: 8, baseType: !174, size: 64, align: 64, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !480, file: !165, line: 9, baseType: !136, size: 64, align: 64, offset: 256)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !480, file: !165, line: 10, baseType: !136, size: 64, align: 64, offset: 320)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !480, file: !165, line: 11, baseType: !130, size: 64, align: 64, offset: 384)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !480, file: !165, line: 12, baseType: !138, size: 32, align: 32, offset: 448)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !480, file: !165, line: 13, baseType: !136, size: 64, align: 64, offset: 512)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !480, file: !165, line: 15, baseType: !494, size: 64, align: 64, offset: 576)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64, align: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{null, !497}
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64, align: 64)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !160, line: 108, baseType: !499)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !500, line: 5, size: 704, align: 64, elements: !501)
!500 = !DIFile(filename: "../../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!501 = !{!502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !499, file: !165, line: 3, baseType: !138, size: 32, align: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !499, file: !165, line: 4, baseType: !138, size: 32, align: 32, offset: 32)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !499, file: !165, line: 5, baseType: !168, size: 64, align: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !499, file: !165, line: 7, baseType: !110, size: 64, align: 64, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !499, file: !165, line: 8, baseType: !174, size: 64, align: 64, offset: 192)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !499, file: !165, line: 9, baseType: !136, size: 64, align: 64, offset: 256)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !499, file: !165, line: 10, baseType: !136, size: 64, align: 64, offset: 320)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !499, file: !165, line: 11, baseType: !130, size: 64, align: 64, offset: 384)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !499, file: !165, line: 12, baseType: !138, size: 32, align: 32, offset: 448)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !499, file: !165, line: 13, baseType: !136, size: 64, align: 64, offset: 512)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !499, file: !165, line: 15, baseType: !494, size: 64, align: 64, offset: 576)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !499, file: !165, line: 17, baseType: !514, size: 64, align: 64, offset: 640)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64, align: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!115, !497}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !480, file: !165, line: 17, baseType: !514, size: 64, align: 64, offset: 640)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !480, file: !519, line: 5, baseType: !136, size: 64, align: 64, offset: 704)
!519 = !DIFile(filename: "../../../src/core/query-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!520 = !DIDerivedType(tag: DW_TAG_member, name: "server_tag", scope: !480, file: !519, line: 6, baseType: !136, size: 64, align: 64, offset: 768)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "last_unread_msg", scope: !480, file: !519, line: 7, baseType: !130, size: 64, align: 64, offset: 832)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "unwanted", scope: !480, file: !519, line: 9, baseType: !250, size: 1, align: 32, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !480, file: !519, line: 11, baseType: !250, size: 1, align: 32, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !176, file: !180, line: 71, baseType: !525, size: 64, align: 64, offset: 2112)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64, align: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!138, !115, !115}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !176, file: !180, line: 73, baseType: !525, size: 64, align: 64, offset: 2176)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !161, file: !165, line: 9, baseType: !136, size: 64, align: 64, offset: 256)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !161, file: !165, line: 10, baseType: !136, size: 64, align: 64, offset: 320)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !161, file: !165, line: 11, baseType: !130, size: 64, align: 64, offset: 384)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !161, file: !165, line: 12, baseType: !138, size: 32, align: 32, offset: 448)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !161, file: !165, line: 13, baseType: !136, size: 64, align: 64, offset: 512)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !161, file: !165, line: 15, baseType: !494, size: 64, align: 64, offset: 576)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !161, file: !165, line: 17, baseType: !514, size: 64, align: 64, offset: 640)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !161, file: !537, line: 5, baseType: !136, size: 64, align: 64, offset: 704)
!537 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!538 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !161, file: !537, line: 6, baseType: !136, size: 64, align: 64, offset: 768)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !161, file: !537, line: 7, baseType: !130, size: 64, align: 64, offset: 832)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !161, file: !537, line: 9, baseType: !168, size: 64, align: 64, offset: 896)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !161, file: !537, line: 10, baseType: !542, size: 64, align: 64, offset: 960)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64, align: 64)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !160, line: 111, baseType: !544)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !545, line: 13, size: 576, align: 64, elements: !546)
!545 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!546 = !{!547, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !565, !566}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !544, file: !548, line: 3, baseType: !138, size: 32, align: 32)
!548 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!549 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !544, file: !548, line: 4, baseType: !138, size: 32, align: 32, offset: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !544, file: !548, line: 6, baseType: !130, size: 64, align: 64, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !544, file: !548, line: 8, baseType: !136, size: 64, align: 64, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !544, file: !548, line: 9, baseType: !136, size: 64, align: 64, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !544, file: !548, line: 10, baseType: !136, size: 64, align: 64, offset: 256)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !544, file: !548, line: 11, baseType: !138, size: 32, align: 32, offset: 320)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !544, file: !548, line: 14, baseType: !250, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !544, file: !548, line: 15, baseType: !250, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !544, file: !548, line: 18, baseType: !250, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !544, file: !548, line: 19, baseType: !250, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !544, file: !548, line: 20, baseType: !250, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !544, file: !548, line: 21, baseType: !250, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !544, file: !548, line: 22, baseType: !562, size: 64, align: 8, offset: 360)
!562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 64, align: 8, elements: !563)
!563 = !{!564}
!564 = !DISubrange(count: 8)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !544, file: !548, line: 26, baseType: !110, size: 64, align: 64, offset: 448)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !544, file: !548, line: 28, baseType: !542, size: 64, align: 64, offset: 512)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !161, file: !537, line: 12, baseType: !250, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !161, file: !537, line: 13, baseType: !136, size: 64, align: 64, offset: 1088)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !161, file: !537, line: 14, baseType: !138, size: 32, align: 32, offset: 1152)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !161, file: !537, line: 15, baseType: !136, size: 64, align: 64, offset: 1216)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !161, file: !537, line: 17, baseType: !250, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !161, file: !537, line: 18, baseType: !250, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !161, file: !537, line: 19, baseType: !250, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !161, file: !537, line: 20, baseType: !250, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !161, file: !537, line: 22, baseType: !250, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !161, file: !537, line: 23, baseType: !250, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !161, file: !537, line: 24, baseType: !250, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !161, file: !537, line: 25, baseType: !250, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !161, file: !537, line: 26, baseType: !250, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !161, file: !537, line: 31, baseType: !581, size: 64, align: 64, offset: 1344)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64, align: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!136, !158}
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "guchar", file: !113, line: 52, baseType: !585)
!585 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64, align: 64)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "MODULE_CHANNEL_REC", file: !126, line: 35, baseType: !588)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !126, line: 31, size: 64, align: 64, elements: !589)
!589 = !{!590}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "lastmsgs", scope: !588, file: !126, line: 33, baseType: !144, size: 64, align: 64)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "GFunc", file: !113, line: 88, baseType: !592)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64, align: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{null, !150, !150}
!595 = !{!596, !597, !598, !599, !600, !601, !602, !603, !604, !605}
!596 = distinct !DIGlobalVariable(name: "keep_privates_count", scope: !0, file: !44, line: 47, type: !138, isLocal: true, isDefinition: true, variable: i32* @keep_privates_count)
!597 = distinct !DIGlobalVariable(name: "completion_char", scope: !0, file: !44, line: 49, type: !136, isLocal: true, isDefinition: true, variable: i8** @completion_char)
!598 = distinct !DIGlobalVariable(name: "cmdchars", scope: !0, file: !44, line: 49, type: !136, isLocal: true, isDefinition: true, variable: i8** @cmdchars)
!599 = distinct !DIGlobalVariable(name: "global_lastmsgs", scope: !0, file: !44, line: 50, type: !144, isLocal: true, isDefinition: true, variable: %struct._GSList** @global_lastmsgs)
!600 = distinct !DIGlobalVariable(name: "keep_publics_count", scope: !0, file: !44, line: 47, type: !138, isLocal: true, isDefinition: true, variable: i32* @keep_publics_count)
!601 = distinct !DIGlobalVariable(name: "completion_lowercase", scope: !0, file: !44, line: 48, type: !138, isLocal: true, isDefinition: true, variable: i32* @completion_lowercase)
!602 = distinct !DIGlobalVariable(name: "completion_auto", scope: !0, file: !44, line: 51, type: !138, isLocal: true, isDefinition: true, variable: i32* @completion_auto)
!603 = distinct !DIGlobalVariable(name: "completion_strict", scope: !0, file: !44, line: 51, type: !138, isLocal: true, isDefinition: true, variable: i32* @completion_strict)
!604 = distinct !DIGlobalVariable(name: "completion_empty_line", scope: !0, file: !44, line: 51, type: !138, isLocal: true, isDefinition: true, variable: i32* @completion_empty_line)
!605 = distinct !DIGlobalVariable(name: "completion_match_case", scope: !0, file: !44, line: 52, type: !138, isLocal: true, isDefinition: true, variable: i32* @completion_match_case)
!606 = !{i32 2, !"Dwarf Version", i32 4}
!607 = !{i32 2, !"Debug Info Version", i32 3}
!608 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!609 = distinct !DISubprogram(name: "completion_last_message_add", scope: !44, file: !44, line: 139, type: !610, isLocal: false, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!610 = !DISubroutineType(types: !611)
!611 = !{null, !115}
!612 = !{}
!613 = !DILocalVariable(name: "nick", arg: 1, scope: !609, file: !44, line: 139, type: !115)
!614 = !DIExpression()
!615 = !DILocation(line: 139, column: 46, scope: !609)
!616 = !DILocation(line: 141, column: 2, scope: !609)
!617 = distinct !{!617, !616}
!618 = !DILocation(line: 141, column: 10, scope: !619)
!619 = !DILexicalBlockFile(scope: !620, file: !44, discriminator: 1)
!620 = distinct !DILexicalBlock(scope: !621, file: !44, line: 141, column: 10)
!621 = distinct !DILexicalBlock(scope: !609, file: !44, line: 141, column: 4)
!622 = !DILocation(line: 141, column: 15, scope: !619)
!623 = !DILocation(line: 141, column: 5, scope: !624)
!624 = !DILexicalBlockFile(scope: !625, file: !44, discriminator: 2)
!625 = distinct !DILexicalBlock(scope: !620, file: !44, line: 141, column: 3)
!626 = !DILocation(line: 141, column: 14, scope: !627)
!627 = !DILexicalBlockFile(scope: !628, file: !44, discriminator: 3)
!628 = distinct !DILexicalBlock(scope: !620, file: !44, line: 141, column: 12)
!629 = !DILocation(line: 141, column: 99, scope: !627)
!630 = !DILocation(line: 141, column: 110, scope: !631)
!631 = !DILexicalBlockFile(scope: !621, file: !44, discriminator: 4)
!632 = !DILocation(line: 143, column: 33, scope: !609)
!633 = !DILocation(line: 143, column: 47, scope: !609)
!634 = !DILocation(line: 143, column: 2, scope: !609)
!635 = !DILocation(line: 144, column: 1, scope: !609)
!636 = !DILocation(line: 144, column: 1, scope: !637)
!637 = !DILexicalBlockFile(scope: !609, file: !44, discriminator: 1)
!638 = distinct !DISubprogram(name: "last_msg_add", scope: !44, file: !44, line: 107, type: !639, isLocal: true, isDefinition: true, scopeLine: 108, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!639 = !DISubroutineType(types: !640)
!640 = !{null, !641, !115, !138, !138}
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!642 = !DILocalVariable(name: "list", arg: 1, scope: !638, file: !44, line: 107, type: !641)
!643 = !DILocation(line: 107, column: 35, scope: !638)
!644 = !DILocalVariable(name: "nick", arg: 2, scope: !638, file: !44, line: 107, type: !115)
!645 = !DILocation(line: 107, column: 53, scope: !638)
!646 = !DILocalVariable(name: "own", arg: 3, scope: !638, file: !44, line: 107, type: !138)
!647 = !DILocation(line: 107, column: 63, scope: !638)
!648 = !DILocalVariable(name: "max", arg: 4, scope: !638, file: !44, line: 107, type: !138)
!649 = !DILocation(line: 107, column: 72, scope: !638)
!650 = !DILocalVariable(name: "rec", scope: !638, file: !44, line: 109, type: !124)
!651 = !DILocation(line: 109, column: 16, scope: !638)
!652 = !DILocation(line: 111, column: 6, scope: !653)
!653 = distinct !DILexicalBlock(scope: !638, file: !44, line: 111, column: 6)
!654 = !DILocation(line: 111, column: 10, scope: !653)
!655 = !DILocation(line: 111, column: 6, scope: !638)
!656 = !DILocation(line: 112, column: 3, scope: !653)
!657 = !DILocation(line: 114, column: 23, scope: !638)
!658 = !DILocation(line: 114, column: 22, scope: !638)
!659 = !DILocation(line: 114, column: 29, scope: !638)
!660 = !DILocation(line: 114, column: 8, scope: !638)
!661 = !DILocation(line: 114, column: 6, scope: !638)
!662 = !DILocation(line: 115, column: 6, scope: !663)
!663 = distinct !DILexicalBlock(scope: !638, file: !44, line: 115, column: 6)
!664 = !DILocation(line: 115, column: 10, scope: !663)
!665 = !DILocation(line: 115, column: 6, scope: !638)
!666 = !DILocation(line: 117, column: 27, scope: !667)
!667 = distinct !DILexicalBlock(scope: !663, file: !44, line: 115, column: 18)
!668 = !DILocation(line: 117, column: 26, scope: !667)
!669 = !DILocation(line: 117, column: 33, scope: !667)
!670 = !DILocation(line: 117, column: 11, scope: !667)
!671 = !DILocation(line: 117, column: 4, scope: !667)
!672 = !DILocation(line: 117, column: 9, scope: !667)
!673 = !DILocation(line: 118, column: 7, scope: !674)
!674 = distinct !DILexicalBlock(scope: !667, file: !44, line: 118, column: 7)
!675 = !DILocation(line: 118, column: 7, scope: !667)
!676 = !DILocation(line: 119, column: 15, scope: !674)
!677 = !DILocation(line: 119, column: 4, scope: !674)
!678 = !DILocation(line: 119, column: 9, scope: !674)
!679 = !DILocation(line: 119, column: 13, scope: !674)
!680 = !DILocation(line: 120, column: 12, scope: !681)
!681 = distinct !DILexicalBlock(scope: !674, file: !44, line: 120, column: 12)
!682 = !DILocation(line: 120, column: 17, scope: !681)
!683 = !DILocation(line: 120, column: 12, scope: !674)
!684 = !DILocation(line: 121, column: 25, scope: !681)
!685 = !DILocation(line: 121, column: 30, scope: !681)
!686 = !DILocation(line: 121, column: 33, scope: !681)
!687 = !DILocation(line: 122, column: 2, scope: !667)
!688 = !DILocation(line: 123, column: 27, scope: !689)
!689 = distinct !DILexicalBlock(scope: !663, file: !44, line: 122, column: 9)
!690 = !DILocation(line: 123, column: 10, scope: !689)
!691 = !DILocation(line: 123, column: 7, scope: !689)
!692 = !DILocation(line: 124, column: 24, scope: !689)
!693 = !DILocation(line: 124, column: 15, scope: !689)
!694 = !DILocation(line: 124, column: 3, scope: !689)
!695 = !DILocation(line: 124, column: 8, scope: !689)
!696 = !DILocation(line: 124, column: 13, scope: !689)
!697 = !DILocation(line: 126, column: 3, scope: !689)
!698 = !DILocation(line: 126, column: 31, scope: !699)
!699 = !DILexicalBlockFile(scope: !689, file: !44, discriminator: 1)
!700 = !DILocation(line: 126, column: 30, scope: !699)
!701 = !DILocation(line: 126, column: 15, scope: !699)
!702 = !DILocation(line: 126, column: 40, scope: !699)
!703 = !DILocation(line: 126, column: 37, scope: !699)
!704 = !DILocation(line: 126, column: 3, scope: !699)
!705 = !DILocation(line: 127, column: 21, scope: !706)
!706 = distinct !DILexicalBlock(scope: !689, file: !44, line: 126, column: 45)
!707 = !DILocation(line: 127, column: 41, scope: !706)
!708 = !DILocation(line: 127, column: 40, scope: !706)
!709 = !DILocation(line: 127, column: 27, scope: !706)
!710 = !DILocation(line: 127, column: 48, scope: !706)
!711 = !DILocation(line: 127, column: 4, scope: !712)
!712 = !DILexicalBlockFile(scope: !706, file: !44, discriminator: 1)
!713 = !DILocation(line: 126, column: 3, scope: !714)
!714 = !DILexicalBlockFile(scope: !689, file: !44, discriminator: 2)
!715 = distinct !{!715, !697}
!716 = !DILocation(line: 130, column: 14, scope: !689)
!717 = !DILocation(line: 130, column: 20, scope: !699)
!718 = !DILocation(line: 130, column: 14, scope: !699)
!719 = !DILocation(line: 130, column: 14, scope: !714)
!720 = !DILocation(line: 130, column: 14, scope: !721)
!721 = !DILexicalBlockFile(scope: !689, file: !44, discriminator: 3)
!722 = !DILocation(line: 130, column: 3, scope: !721)
!723 = !DILocation(line: 130, column: 8, scope: !721)
!724 = !DILocation(line: 130, column: 12, scope: !721)
!725 = !DILocation(line: 132, column: 14, scope: !638)
!726 = !DILocation(line: 132, column: 2, scope: !638)
!727 = !DILocation(line: 132, column: 7, scope: !638)
!728 = !DILocation(line: 132, column: 12, scope: !638)
!729 = !DILocation(line: 134, column: 28, scope: !638)
!730 = !DILocation(line: 134, column: 27, scope: !638)
!731 = !DILocation(line: 134, column: 9, scope: !638)
!732 = !DILocation(line: 136, column: 27, scope: !638)
!733 = !DILocation(line: 136, column: 26, scope: !638)
!734 = !DILocation(line: 136, column: 33, scope: !638)
!735 = !DILocation(line: 136, column: 10, scope: !638)
!736 = !DILocation(line: 136, column: 3, scope: !638)
!737 = !DILocation(line: 136, column: 8, scope: !638)
!738 = !DILocation(line: 137, column: 1, scope: !638)
!739 = !DILocation(line: 137, column: 1, scope: !740)
!740 = !DILexicalBlockFile(scope: !638, file: !44, discriminator: 1)
!741 = distinct !DISubprogram(name: "completion_last_message_remove", scope: !44, file: !44, line: 146, type: !610, isLocal: false, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!742 = !DILocalVariable(name: "nick", arg: 1, scope: !741, file: !44, line: 146, type: !115)
!743 = !DILocation(line: 146, column: 49, scope: !741)
!744 = !DILocalVariable(name: "rec", scope: !741, file: !44, line: 148, type: !124)
!745 = !DILocation(line: 148, column: 16, scope: !741)
!746 = !DILocation(line: 150, column: 2, scope: !741)
!747 = distinct !{!747, !746}
!748 = !DILocation(line: 150, column: 10, scope: !749)
!749 = !DILexicalBlockFile(scope: !750, file: !44, discriminator: 1)
!750 = distinct !DILexicalBlock(scope: !751, file: !44, line: 150, column: 10)
!751 = distinct !DILexicalBlock(scope: !741, file: !44, line: 150, column: 4)
!752 = !DILocation(line: 150, column: 15, scope: !749)
!753 = !DILocation(line: 150, column: 5, scope: !754)
!754 = !DILexicalBlockFile(scope: !755, file: !44, discriminator: 2)
!755 = distinct !DILexicalBlock(scope: !750, file: !44, line: 150, column: 3)
!756 = !DILocation(line: 150, column: 14, scope: !757)
!757 = !DILexicalBlockFile(scope: !758, file: !44, discriminator: 3)
!758 = distinct !DILexicalBlock(scope: !750, file: !44, line: 150, column: 12)
!759 = !DILocation(line: 150, column: 99, scope: !757)
!760 = !DILocation(line: 150, column: 110, scope: !761)
!761 = !DILexicalBlockFile(scope: !751, file: !44, discriminator: 4)
!762 = !DILocation(line: 152, column: 22, scope: !741)
!763 = !DILocation(line: 152, column: 39, scope: !741)
!764 = !DILocation(line: 152, column: 8, scope: !741)
!765 = !DILocation(line: 152, column: 6, scope: !741)
!766 = !DILocation(line: 153, column: 13, scope: !767)
!767 = distinct !DILexicalBlock(scope: !741, file: !44, line: 153, column: 13)
!768 = !DILocation(line: 153, column: 17, scope: !767)
!769 = !DILocation(line: 153, column: 13, scope: !741)
!770 = !DILocation(line: 153, column: 60, scope: !771)
!771 = !DILexicalBlockFile(scope: !767, file: !44, discriminator: 1)
!772 = !DILocation(line: 153, column: 25, scope: !771)
!773 = !DILocation(line: 154, column: 1, scope: !741)
!774 = distinct !DISubprogram(name: "last_msg_find", scope: !44, file: !44, line: 74, type: !775, isLocal: true, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!775 = !DISubroutineType(types: !776)
!776 = !{!124, !144, !115}
!777 = !DILocalVariable(name: "list", arg: 1, scope: !774, file: !44, line: 74, type: !144)
!778 = !DILocation(line: 74, column: 44, scope: !774)
!779 = !DILocalVariable(name: "nick", arg: 2, scope: !774, file: !44, line: 74, type: !115)
!780 = !DILocation(line: 74, column: 62, scope: !774)
!781 = !DILocation(line: 76, column: 2, scope: !774)
!782 = !DILocation(line: 76, column: 9, scope: !783)
!783 = !DILexicalBlockFile(scope: !774, file: !44, discriminator: 1)
!784 = !DILocation(line: 76, column: 14, scope: !783)
!785 = !DILocation(line: 76, column: 2, scope: !783)
!786 = !DILocalVariable(name: "rec", scope: !787, file: !44, line: 77, type: !124)
!787 = distinct !DILexicalBlock(scope: !774, file: !44, line: 76, column: 22)
!788 = !DILocation(line: 77, column: 17, scope: !787)
!789 = !DILocation(line: 77, column: 23, scope: !787)
!790 = !DILocation(line: 77, column: 29, scope: !787)
!791 = !DILocation(line: 79, column: 26, scope: !792)
!792 = distinct !DILexicalBlock(scope: !787, file: !44, line: 79, column: 7)
!793 = !DILocation(line: 79, column: 31, scope: !792)
!794 = !DILocation(line: 79, column: 37, scope: !792)
!795 = !DILocation(line: 79, column: 7, scope: !792)
!796 = !DILocation(line: 79, column: 43, scope: !792)
!797 = !DILocation(line: 79, column: 7, scope: !787)
!798 = !DILocation(line: 80, column: 11, scope: !792)
!799 = !DILocation(line: 80, column: 4, scope: !792)
!800 = !DILocation(line: 81, column: 10, scope: !787)
!801 = !DILocation(line: 81, column: 16, scope: !787)
!802 = !DILocation(line: 81, column: 8, scope: !787)
!803 = !DILocation(line: 76, column: 2, scope: !804)
!804 = !DILexicalBlockFile(scope: !774, file: !44, discriminator: 2)
!805 = distinct !{!805, !781}
!806 = !DILocation(line: 84, column: 2, scope: !774)
!807 = !DILocation(line: 85, column: 1, scope: !774)
!808 = distinct !DISubprogram(name: "last_msg_destroy", scope: !44, file: !44, line: 99, type: !809, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!809 = !DISubroutineType(types: !810)
!810 = !{null, !641, !124}
!811 = !DILocalVariable(name: "list", arg: 1, scope: !808, file: !44, line: 99, type: !641)
!812 = !DILocation(line: 99, column: 39, scope: !808)
!813 = !DILocalVariable(name: "rec", arg: 2, scope: !808, file: !44, line: 99, type: !124)
!814 = !DILocation(line: 99, column: 59, scope: !808)
!815 = !DILocation(line: 101, column: 26, scope: !808)
!816 = !DILocation(line: 101, column: 25, scope: !808)
!817 = !DILocation(line: 101, column: 32, scope: !808)
!818 = !DILocation(line: 101, column: 10, scope: !808)
!819 = !DILocation(line: 101, column: 3, scope: !808)
!820 = !DILocation(line: 101, column: 8, scope: !808)
!821 = !DILocation(line: 103, column: 9, scope: !808)
!822 = !DILocation(line: 103, column: 14, scope: !808)
!823 = !DILocation(line: 103, column: 2, scope: !808)
!824 = !DILocation(line: 104, column: 9, scope: !808)
!825 = !DILocation(line: 104, column: 2, scope: !808)
!826 = !DILocation(line: 105, column: 1, scope: !808)
!827 = distinct !DISubprogram(name: "completion_last_message_rename", scope: !44, file: !44, line: 156, type: !828, isLocal: false, isDefinition: true, scopeLine: 157, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!828 = !DISubroutineType(types: !829)
!829 = !{null, !115, !115}
!830 = !DILocalVariable(name: "oldnick", arg: 1, scope: !827, file: !44, line: 156, type: !115)
!831 = !DILocation(line: 156, column: 49, scope: !827)
!832 = !DILocalVariable(name: "newnick", arg: 2, scope: !827, file: !44, line: 156, type: !115)
!833 = !DILocation(line: 156, column: 70, scope: !827)
!834 = !DILocalVariable(name: "rec", scope: !827, file: !44, line: 158, type: !124)
!835 = !DILocation(line: 158, column: 16, scope: !827)
!836 = !DILocation(line: 160, column: 2, scope: !827)
!837 = distinct !{!837, !836}
!838 = !DILocation(line: 160, column: 10, scope: !839)
!839 = !DILexicalBlockFile(scope: !840, file: !44, discriminator: 1)
!840 = distinct !DILexicalBlock(scope: !841, file: !44, line: 160, column: 10)
!841 = distinct !DILexicalBlock(scope: !827, file: !44, line: 160, column: 4)
!842 = !DILocation(line: 160, column: 18, scope: !839)
!843 = !DILocation(line: 160, column: 5, scope: !844)
!844 = !DILexicalBlockFile(scope: !845, file: !44, discriminator: 2)
!845 = distinct !DILexicalBlock(scope: !840, file: !44, line: 160, column: 3)
!846 = !DILocation(line: 160, column: 14, scope: !847)
!847 = !DILexicalBlockFile(scope: !848, file: !44, discriminator: 3)
!848 = distinct !DILexicalBlock(scope: !840, file: !44, line: 160, column: 12)
!849 = !DILocation(line: 160, column: 102, scope: !847)
!850 = !DILocation(line: 160, column: 113, scope: !851)
!851 = !DILexicalBlockFile(scope: !841, file: !44, discriminator: 4)
!852 = !DILocation(line: 161, column: 2, scope: !827)
!853 = distinct !{!853, !852}
!854 = !DILocation(line: 161, column: 10, scope: !855)
!855 = !DILexicalBlockFile(scope: !856, file: !44, discriminator: 1)
!856 = distinct !DILexicalBlock(scope: !857, file: !44, line: 161, column: 10)
!857 = distinct !DILexicalBlock(scope: !827, file: !44, line: 161, column: 4)
!858 = !DILocation(line: 161, column: 18, scope: !855)
!859 = !DILocation(line: 161, column: 5, scope: !860)
!860 = !DILexicalBlockFile(scope: !861, file: !44, discriminator: 2)
!861 = distinct !DILexicalBlock(scope: !856, file: !44, line: 161, column: 3)
!862 = !DILocation(line: 161, column: 14, scope: !863)
!863 = !DILexicalBlockFile(scope: !864, file: !44, discriminator: 3)
!864 = distinct !DILexicalBlock(scope: !856, file: !44, line: 161, column: 12)
!865 = !DILocation(line: 161, column: 102, scope: !863)
!866 = !DILocation(line: 161, column: 113, scope: !867)
!867 = !DILexicalBlockFile(scope: !857, file: !44, discriminator: 4)
!868 = !DILocation(line: 163, column: 22, scope: !827)
!869 = !DILocation(line: 163, column: 39, scope: !827)
!870 = !DILocation(line: 163, column: 8, scope: !827)
!871 = !DILocation(line: 163, column: 6, scope: !827)
!872 = !DILocation(line: 164, column: 6, scope: !873)
!873 = distinct !DILexicalBlock(scope: !827, file: !44, line: 164, column: 6)
!874 = !DILocation(line: 164, column: 10, scope: !873)
!875 = !DILocation(line: 164, column: 6, scope: !827)
!876 = !DILocation(line: 165, column: 10, scope: !877)
!877 = distinct !DILexicalBlock(scope: !873, file: !44, line: 164, column: 18)
!878 = !DILocation(line: 165, column: 15, scope: !877)
!879 = !DILocation(line: 165, column: 3, scope: !877)
!880 = !DILocation(line: 166, column: 38, scope: !877)
!881 = !DILocation(line: 166, column: 29, scope: !877)
!882 = !DILocation(line: 166, column: 17, scope: !877)
!883 = !DILocation(line: 166, column: 22, scope: !877)
!884 = !DILocation(line: 166, column: 27, scope: !877)
!885 = !DILocation(line: 167, column: 2, scope: !877)
!886 = !DILocation(line: 168, column: 1, scope: !827)
!887 = distinct !DISubprogram(name: "completion_msg", scope: !44, file: !44, line: 324, type: !888, isLocal: false, isDefinition: true, scopeLine: 327, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!888 = !DISubroutineType(types: !889)
!889 = !{!890, !174, !174, !115, !115}
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64, align: 64)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !892, line: 37, baseType: !893)
!892 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/irssi/task1")
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !892, line: 39, size: 192, align: 64, elements: !894)
!894 = !{!895, !896, !897}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !893, file: !892, line: 41, baseType: !150, size: 64, align: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !893, file: !892, line: 42, baseType: !890, size: 64, align: 64, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !893, file: !892, line: 43, baseType: !890, size: 64, align: 64, offset: 128)
!898 = !DILocalVariable(name: "win_server", arg: 1, scope: !887, file: !44, line: 324, type: !174)
!899 = !DILocation(line: 324, column: 35, scope: !887)
!900 = !DILocalVariable(name: "find_server", arg: 2, scope: !887, file: !44, line: 325, type: !174)
!901 = !DILocation(line: 325, column: 21, scope: !887)
!902 = !DILocalVariable(name: "nick", arg: 3, scope: !887, file: !44, line: 326, type: !115)
!903 = !DILocation(line: 326, column: 21, scope: !887)
!904 = !DILocalVariable(name: "prefix", arg: 4, scope: !887, file: !44, line: 326, type: !115)
!905 = !DILocation(line: 326, column: 39, scope: !887)
!906 = !DILocalVariable(name: "tmp", scope: !887, file: !44, line: 328, type: !144)
!907 = !DILocation(line: 328, column: 10, scope: !887)
!908 = !DILocalVariable(name: "list", scope: !887, file: !44, line: 328, type: !144)
!909 = !DILocation(line: 328, column: 16, scope: !887)
!910 = !DILocalVariable(name: "newprefix", scope: !887, file: !44, line: 329, type: !136)
!911 = !DILocation(line: 329, column: 8, scope: !887)
!912 = !DILocation(line: 331, column: 2, scope: !887)
!913 = distinct !{!913, !912}
!914 = !DILocation(line: 331, column: 10, scope: !915)
!915 = !DILexicalBlockFile(scope: !916, file: !44, discriminator: 1)
!916 = distinct !DILexicalBlock(scope: !917, file: !44, line: 331, column: 10)
!917 = distinct !DILexicalBlock(scope: !887, file: !44, line: 331, column: 4)
!918 = !DILocation(line: 331, column: 15, scope: !915)
!919 = !DILocation(line: 331, column: 5, scope: !920)
!920 = !DILexicalBlockFile(scope: !921, file: !44, discriminator: 2)
!921 = distinct !DILexicalBlock(scope: !916, file: !44, line: 331, column: 3)
!922 = !DILocation(line: 331, column: 14, scope: !923)
!923 = !DILexicalBlockFile(scope: !924, file: !44, discriminator: 3)
!924 = distinct !DILexicalBlock(scope: !916, file: !44, line: 331, column: 12)
!925 = !DILocation(line: 331, column: 99, scope: !923)
!926 = !DILocation(line: 331, column: 7, scope: !927)
!927 = !DILexicalBlockFile(scope: !917, file: !44, discriminator: 4)
!928 = !DILocation(line: 332, column: 6, scope: !929)
!929 = distinct !DILexicalBlock(scope: !887, file: !44, line: 332, column: 6)
!930 = !DILocation(line: 332, column: 14, scope: !929)
!931 = !DILocation(line: 332, column: 6, scope: !887)
!932 = !DILocation(line: 332, column: 22, scope: !933)
!933 = !DILexicalBlockFile(scope: !929, file: !44, discriminator: 1)
!934 = !DILocation(line: 334, column: 7, scope: !887)
!935 = !DILocation(line: 335, column: 6, scope: !936)
!936 = distinct !DILexicalBlock(scope: !887, file: !44, line: 335, column: 6)
!937 = !DILocation(line: 335, column: 18, scope: !936)
!938 = !DILocation(line: 335, column: 6, scope: !887)
!939 = !DILocation(line: 336, column: 32, scope: !940)
!940 = distinct !DILexicalBlock(scope: !936, file: !44, line: 335, column: 26)
!941 = !DILocation(line: 336, column: 45, scope: !940)
!942 = !DILocation(line: 336, column: 51, scope: !940)
!943 = !DILocation(line: 336, column: 3, scope: !940)
!944 = !DILocation(line: 337, column: 26, scope: !940)
!945 = !DILocation(line: 337, column: 10, scope: !940)
!946 = !DILocation(line: 337, column: 3, scope: !940)
!947 = !DILocation(line: 340, column: 36, scope: !887)
!948 = !DILocation(line: 340, column: 42, scope: !887)
!949 = !DILocation(line: 340, column: 2, scope: !887)
!950 = !DILocation(line: 341, column: 13, scope: !951)
!951 = distinct !DILexicalBlock(scope: !887, file: !44, line: 341, column: 2)
!952 = !DILocation(line: 341, column: 11, scope: !951)
!953 = !DILocation(line: 341, column: 7, scope: !951)
!954 = !DILocation(line: 341, column: 22, scope: !955)
!955 = !DILexicalBlockFile(scope: !956, file: !44, discriminator: 1)
!956 = distinct !DILexicalBlock(scope: !951, file: !44, line: 341, column: 2)
!957 = !DILocation(line: 341, column: 26, scope: !955)
!958 = !DILocation(line: 341, column: 2, scope: !955)
!959 = !DILocalVariable(name: "rec", scope: !960, file: !44, line: 342, type: !174)
!960 = distinct !DILexicalBlock(scope: !956, file: !44, line: 341, column: 51)
!961 = !DILocation(line: 342, column: 15, scope: !960)
!962 = !DILocation(line: 342, column: 21, scope: !960)
!963 = !DILocation(line: 342, column: 26, scope: !960)
!964 = !DILocation(line: 344, column: 7, scope: !965)
!965 = distinct !DILexicalBlock(scope: !960, file: !44, line: 344, column: 7)
!966 = !DILocation(line: 344, column: 16, scope: !965)
!967 = !DILocation(line: 344, column: 21, scope: !965)
!968 = !DILocation(line: 344, column: 28, scope: !965)
!969 = !DILocation(line: 344, column: 31, scope: !970)
!970 = !DILexicalBlockFile(scope: !965, file: !44, discriminator: 1)
!971 = !DILocation(line: 344, column: 38, scope: !970)
!972 = !DILocation(line: 344, column: 35, scope: !970)
!973 = !DILocation(line: 344, column: 7, scope: !970)
!974 = !DILocation(line: 345, column: 25, scope: !965)
!975 = !DILocation(line: 345, column: 16, scope: !965)
!976 = !DILocation(line: 345, column: 14, scope: !965)
!977 = !DILocation(line: 345, column: 4, scope: !965)
!978 = !DILocation(line: 347, column: 16, scope: !979)
!979 = distinct !DILexicalBlock(scope: !965, file: !44, line: 346, column: 8)
!980 = !DILocation(line: 347, column: 23, scope: !979)
!981 = !DILocation(line: 348, column: 28, scope: !979)
!982 = !DILocation(line: 348, column: 33, scope: !979)
!983 = !DILocation(line: 348, column: 5, scope: !979)
!984 = !DILocation(line: 347, column: 16, scope: !985)
!985 = !DILexicalBlockFile(scope: !979, file: !44, discriminator: 1)
!986 = !DILocation(line: 349, column: 31, scope: !979)
!987 = !DILocation(line: 349, column: 39, scope: !979)
!988 = !DILocation(line: 349, column: 44, scope: !979)
!989 = !DILocation(line: 349, column: 5, scope: !979)
!990 = !DILocation(line: 347, column: 16, scope: !991)
!991 = !DILexicalBlockFile(scope: !979, file: !44, discriminator: 2)
!992 = !DILocation(line: 347, column: 16, scope: !993)
!993 = !DILexicalBlockFile(scope: !979, file: !44, discriminator: 3)
!994 = !DILocation(line: 347, column: 14, scope: !993)
!995 = !DILocation(line: 352, column: 32, scope: !960)
!996 = !DILocation(line: 352, column: 37, scope: !960)
!997 = !DILocation(line: 352, column: 43, scope: !960)
!998 = !DILocation(line: 352, column: 3, scope: !960)
!999 = !DILocation(line: 353, column: 10, scope: !960)
!1000 = !DILocation(line: 353, column: 3, scope: !960)
!1001 = !DILocation(line: 354, column: 2, scope: !960)
!1002 = !DILocation(line: 341, column: 40, scope: !1003)
!1003 = !DILexicalBlockFile(scope: !956, file: !44, discriminator: 2)
!1004 = !DILocation(line: 341, column: 45, scope: !1003)
!1005 = !DILocation(line: 341, column: 38, scope: !1003)
!1006 = !DILocation(line: 341, column: 2, scope: !1003)
!1007 = distinct !{!1007, !1008}
!1008 = !DILocation(line: 341, column: 2, scope: !887)
!1009 = !DILocation(line: 356, column: 25, scope: !887)
!1010 = !DILocation(line: 356, column: 9, scope: !887)
!1011 = !DILocation(line: 356, column: 2, scope: !887)
!1012 = !DILocation(line: 357, column: 1, scope: !887)
!1013 = distinct !DISubprogram(name: "completion_msg_server", scope: !44, file: !44, line: 278, type: !1014, isLocal: true, isDefinition: true, scopeLine: 280, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{null, !641, !174, !115, !115}
!1016 = !DILocalVariable(name: "list", arg: 1, scope: !1013, file: !44, line: 278, type: !641)
!1017 = !DILocation(line: 278, column: 44, scope: !1013)
!1018 = !DILocalVariable(name: "server", arg: 2, scope: !1013, file: !44, line: 278, type: !174)
!1019 = !DILocation(line: 278, column: 62, scope: !1013)
!1020 = !DILocalVariable(name: "nick", arg: 3, scope: !1013, file: !44, line: 279, type: !115)
!1021 = !DILocation(line: 279, column: 19, scope: !1013)
!1022 = !DILocalVariable(name: "prefix", arg: 4, scope: !1013, file: !44, line: 279, type: !115)
!1023 = !DILocation(line: 279, column: 37, scope: !1013)
!1024 = !DILocalVariable(name: "msg", scope: !1013, file: !44, line: 281, type: !124)
!1025 = !DILocation(line: 281, column: 16, scope: !1013)
!1026 = !DILocalVariable(name: "tmp", scope: !1013, file: !44, line: 282, type: !144)
!1027 = !DILocation(line: 282, column: 10, scope: !1013)
!1028 = !DILocalVariable(name: "len", scope: !1013, file: !44, line: 283, type: !138)
!1029 = !DILocation(line: 283, column: 6, scope: !1013)
!1030 = !DILocation(line: 285, column: 2, scope: !1013)
!1031 = distinct !{!1031, !1030}
!1032 = !DILocation(line: 285, column: 10, scope: !1033)
!1033 = !DILexicalBlockFile(scope: !1034, file: !44, discriminator: 1)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !44, line: 285, column: 10)
!1035 = distinct !DILexicalBlock(scope: !1013, file: !44, line: 285, column: 4)
!1036 = !DILocation(line: 285, column: 15, scope: !1033)
!1037 = !DILocation(line: 285, column: 5, scope: !1038)
!1038 = !DILexicalBlockFile(scope: !1039, file: !44, discriminator: 2)
!1039 = distinct !DILexicalBlock(scope: !1034, file: !44, line: 285, column: 3)
!1040 = !DILocation(line: 285, column: 14, scope: !1041)
!1041 = !DILexicalBlockFile(scope: !1042, file: !44, discriminator: 3)
!1042 = distinct !DILexicalBlock(scope: !1034, file: !44, line: 285, column: 12)
!1043 = !DILocation(line: 285, column: 99, scope: !1041)
!1044 = !DILocation(line: 285, column: 110, scope: !1045)
!1045 = !DILexicalBlockFile(scope: !1035, file: !44, discriminator: 4)
!1046 = !DILocation(line: 287, column: 15, scope: !1013)
!1047 = !DILocation(line: 287, column: 8, scope: !1013)
!1048 = !DILocation(line: 287, column: 6, scope: !1013)
!1049 = !DILocation(line: 288, column: 8, scope: !1013)
!1050 = !DILocation(line: 288, column: 15, scope: !1013)
!1051 = !DILocation(line: 288, column: 24, scope: !1052)
!1052 = !DILexicalBlockFile(scope: !1013, file: !44, discriminator: 1)
!1053 = !DILocation(line: 288, column: 8, scope: !1052)
!1054 = !DILocation(line: 289, column: 47, scope: !1013)
!1055 = !DILocation(line: 289, column: 56, scope: !1013)
!1056 = !DILocation(line: 289, column: 26, scope: !1013)
!1057 = !DILocation(line: 289, column: 4, scope: !1013)
!1058 = !DILocation(line: 289, column: 89, scope: !1013)
!1059 = !DILocation(line: 288, column: 8, scope: !1060)
!1060 = !DILexicalBlockFile(scope: !1013, file: !44, discriminator: 2)
!1061 = !DILocation(line: 288, column: 8, scope: !1062)
!1062 = !DILexicalBlockFile(scope: !1013, file: !44, discriminator: 3)
!1063 = !DILocation(line: 288, column: 6, scope: !1062)
!1064 = !DILocation(line: 290, column: 2, scope: !1013)
!1065 = !DILocation(line: 290, column: 9, scope: !1066)
!1066 = !DILexicalBlockFile(scope: !1067, file: !44, discriminator: 1)
!1067 = distinct !DILexicalBlock(scope: !1068, file: !44, line: 290, column: 2)
!1068 = distinct !DILexicalBlock(scope: !1013, file: !44, line: 290, column: 2)
!1069 = !DILocation(line: 290, column: 13, scope: !1066)
!1070 = !DILocation(line: 290, column: 2, scope: !1066)
!1071 = !DILocalVariable(name: "rec", scope: !1072, file: !44, line: 291, type: !124)
!1072 = distinct !DILexicalBlock(scope: !1067, file: !44, line: 290, column: 38)
!1073 = !DILocation(line: 291, column: 17, scope: !1072)
!1074 = !DILocation(line: 291, column: 23, scope: !1072)
!1075 = !DILocation(line: 291, column: 28, scope: !1072)
!1076 = !DILocation(line: 293, column: 7, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1072, file: !44, line: 293, column: 7)
!1078 = !DILocation(line: 293, column: 11, scope: !1077)
!1079 = !DILocation(line: 293, column: 16, scope: !1077)
!1080 = !DILocation(line: 293, column: 39, scope: !1081)
!1081 = !DILexicalBlockFile(scope: !1077, file: !44, discriminator: 1)
!1082 = !DILocation(line: 293, column: 44, scope: !1081)
!1083 = !DILocation(line: 293, column: 50, scope: !1081)
!1084 = !DILocation(line: 293, column: 56, scope: !1081)
!1085 = !DILocation(line: 293, column: 19, scope: !1081)
!1086 = !DILocation(line: 293, column: 61, scope: !1081)
!1087 = !DILocation(line: 293, column: 7, scope: !1081)
!1088 = !DILocation(line: 294, column: 4, scope: !1077)
!1089 = !DILocation(line: 296, column: 27, scope: !1072)
!1090 = !DILocation(line: 296, column: 10, scope: !1072)
!1091 = !DILocation(line: 296, column: 7, scope: !1072)
!1092 = !DILocation(line: 297, column: 15, scope: !1072)
!1093 = !DILocation(line: 297, column: 20, scope: !1072)
!1094 = !DILocation(line: 297, column: 3, scope: !1072)
!1095 = !DILocation(line: 297, column: 8, scope: !1072)
!1096 = !DILocation(line: 297, column: 13, scope: !1072)
!1097 = !DILocation(line: 298, column: 15, scope: !1072)
!1098 = !DILocation(line: 298, column: 22, scope: !1072)
!1099 = !DILocation(line: 298, column: 29, scope: !1072)
!1100 = !DILocation(line: 298, column: 33, scope: !1101)
!1101 = !DILexicalBlockFile(scope: !1072, file: !44, discriminator: 1)
!1102 = !DILocation(line: 298, column: 32, scope: !1101)
!1103 = !DILocation(line: 298, column: 40, scope: !1101)
!1104 = !DILocation(line: 298, column: 15, scope: !1101)
!1105 = !DILocation(line: 299, column: 13, scope: !1072)
!1106 = !DILocation(line: 299, column: 18, scope: !1072)
!1107 = !DILocation(line: 299, column: 4, scope: !1072)
!1108 = !DILocation(line: 298, column: 15, scope: !1109)
!1109 = !DILexicalBlockFile(scope: !1072, file: !44, discriminator: 2)
!1110 = !DILocation(line: 300, column: 16, scope: !1072)
!1111 = !DILocation(line: 300, column: 29, scope: !1072)
!1112 = !DILocation(line: 300, column: 34, scope: !1072)
!1113 = !DILocation(line: 300, column: 4, scope: !1072)
!1114 = !DILocation(line: 298, column: 15, scope: !1115)
!1115 = !DILexicalBlockFile(scope: !1072, file: !44, discriminator: 3)
!1116 = !DILocation(line: 298, column: 15, scope: !1117)
!1117 = !DILexicalBlockFile(scope: !1072, file: !44, discriminator: 4)
!1118 = !DILocation(line: 298, column: 3, scope: !1117)
!1119 = !DILocation(line: 298, column: 8, scope: !1117)
!1120 = !DILocation(line: 298, column: 13, scope: !1117)
!1121 = !DILocation(line: 301, column: 34, scope: !1072)
!1122 = !DILocation(line: 301, column: 33, scope: !1072)
!1123 = !DILocation(line: 301, column: 40, scope: !1072)
!1124 = !DILocation(line: 301, column: 11, scope: !1072)
!1125 = !DILocation(line: 301, column: 4, scope: !1072)
!1126 = !DILocation(line: 301, column: 9, scope: !1072)
!1127 = !DILocation(line: 303, column: 2, scope: !1072)
!1128 = !DILocation(line: 290, column: 27, scope: !1129)
!1129 = !DILexicalBlockFile(scope: !1067, file: !44, discriminator: 2)
!1130 = !DILocation(line: 290, column: 32, scope: !1129)
!1131 = !DILocation(line: 290, column: 25, scope: !1129)
!1132 = !DILocation(line: 290, column: 2, scope: !1129)
!1133 = distinct !{!1133, !1064}
!1134 = !DILocation(line: 304, column: 1, scope: !1013)
!1135 = distinct !DISubprogram(name: "convert_msglist", scope: !44, file: !44, line: 307, type: !1136, isLocal: true, isDefinition: true, scopeLine: 308, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!890, !144}
!1138 = !DILocalVariable(name: "msglist", arg: 1, scope: !1135, file: !44, line: 307, type: !144)
!1139 = !DILocation(line: 307, column: 39, scope: !1135)
!1140 = !DILocalVariable(name: "list", scope: !1135, file: !44, line: 309, type: !890)
!1141 = !DILocation(line: 309, column: 9, scope: !1135)
!1142 = !DILocation(line: 311, column: 7, scope: !1135)
!1143 = !DILocation(line: 312, column: 2, scope: !1135)
!1144 = !DILocation(line: 312, column: 9, scope: !1145)
!1145 = !DILexicalBlockFile(scope: !1135, file: !44, discriminator: 1)
!1146 = !DILocation(line: 312, column: 17, scope: !1145)
!1147 = !DILocation(line: 312, column: 2, scope: !1145)
!1148 = !DILocalVariable(name: "rec", scope: !1149, file: !44, line: 313, type: !124)
!1149 = distinct !DILexicalBlock(scope: !1135, file: !44, line: 312, column: 25)
!1150 = !DILocation(line: 313, column: 17, scope: !1149)
!1151 = !DILocation(line: 313, column: 23, scope: !1149)
!1152 = !DILocation(line: 313, column: 32, scope: !1149)
!1153 = !DILocation(line: 315, column: 38, scope: !1149)
!1154 = !DILocation(line: 315, column: 44, scope: !1149)
!1155 = !DILocation(line: 315, column: 49, scope: !1149)
!1156 = !DILocation(line: 315, column: 24, scope: !1149)
!1157 = !DILocation(line: 315, column: 22, scope: !1149)
!1158 = !DILocation(line: 316, column: 28, scope: !1149)
!1159 = !DILocation(line: 316, column: 37, scope: !1149)
!1160 = !DILocation(line: 316, column: 13, scope: !1149)
!1161 = !DILocation(line: 316, column: 11, scope: !1149)
!1162 = !DILocation(line: 317, column: 10, scope: !1149)
!1163 = !DILocation(line: 317, column: 3, scope: !1149)
!1164 = !DILocation(line: 312, column: 2, scope: !1165)
!1165 = !DILexicalBlockFile(scope: !1135, file: !44, discriminator: 2)
!1166 = distinct !{!1166, !1143}
!1167 = !DILocation(line: 320, column: 9, scope: !1135)
!1168 = !DILocation(line: 320, column: 2, scope: !1135)
!1169 = distinct !DISubprogram(name: "completion_get_servertags", scope: !44, file: !44, line: 520, type: !1170, isLocal: false, isDefinition: true, scopeLine: 521, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!890, !115}
!1172 = !DILocalVariable(name: "word", arg: 1, scope: !1169, file: !44, line: 520, type: !115)
!1173 = !DILocation(line: 520, column: 46, scope: !1169)
!1174 = !DILocalVariable(name: "list", scope: !1169, file: !44, line: 522, type: !890)
!1175 = !DILocation(line: 522, column: 9, scope: !1169)
!1176 = !DILocalVariable(name: "tmp", scope: !1169, file: !44, line: 523, type: !144)
!1177 = !DILocation(line: 523, column: 10, scope: !1169)
!1178 = !DILocalVariable(name: "len", scope: !1169, file: !44, line: 524, type: !138)
!1179 = !DILocation(line: 524, column: 6, scope: !1169)
!1180 = !DILocation(line: 526, column: 2, scope: !1169)
!1181 = distinct !{!1181, !1180}
!1182 = !DILocation(line: 526, column: 10, scope: !1183)
!1183 = !DILexicalBlockFile(scope: !1184, file: !44, discriminator: 1)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !44, line: 526, column: 10)
!1185 = distinct !DILexicalBlock(scope: !1169, file: !44, line: 526, column: 4)
!1186 = !DILocation(line: 526, column: 15, scope: !1183)
!1187 = !DILocation(line: 526, column: 5, scope: !1188)
!1188 = !DILexicalBlockFile(scope: !1189, file: !44, discriminator: 2)
!1189 = distinct !DILexicalBlock(scope: !1184, file: !44, line: 526, column: 3)
!1190 = !DILocation(line: 526, column: 14, scope: !1191)
!1191 = !DILexicalBlockFile(scope: !1192, file: !44, discriminator: 3)
!1192 = distinct !DILexicalBlock(scope: !1184, file: !44, line: 526, column: 12)
!1193 = !DILocation(line: 526, column: 99, scope: !1191)
!1194 = !DILocation(line: 526, column: 7, scope: !1195)
!1195 = !DILexicalBlockFile(scope: !1185, file: !44, discriminator: 4)
!1196 = !DILocation(line: 528, column: 15, scope: !1169)
!1197 = !DILocation(line: 528, column: 8, scope: !1169)
!1198 = !DILocation(line: 528, column: 6, scope: !1169)
!1199 = !DILocation(line: 529, column: 7, scope: !1169)
!1200 = !DILocation(line: 531, column: 13, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1169, file: !44, line: 531, column: 2)
!1202 = !DILocation(line: 531, column: 11, scope: !1201)
!1203 = !DILocation(line: 531, column: 7, scope: !1201)
!1204 = !DILocation(line: 531, column: 22, scope: !1205)
!1205 = !DILexicalBlockFile(scope: !1206, file: !44, discriminator: 1)
!1206 = distinct !DILexicalBlock(scope: !1201, file: !44, line: 531, column: 2)
!1207 = !DILocation(line: 531, column: 26, scope: !1205)
!1208 = !DILocation(line: 531, column: 2, scope: !1205)
!1209 = !DILocalVariable(name: "rec", scope: !1210, file: !44, line: 532, type: !174)
!1210 = distinct !DILexicalBlock(scope: !1206, file: !44, line: 531, column: 51)
!1211 = !DILocation(line: 532, column: 15, scope: !1210)
!1212 = !DILocation(line: 532, column: 21, scope: !1210)
!1213 = !DILocation(line: 532, column: 26, scope: !1210)
!1214 = !DILocation(line: 534, column: 27, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1210, file: !44, line: 534, column: 7)
!1216 = !DILocation(line: 534, column: 32, scope: !1215)
!1217 = !DILocation(line: 534, column: 37, scope: !1215)
!1218 = !DILocation(line: 534, column: 43, scope: !1215)
!1219 = !DILocation(line: 534, column: 7, scope: !1215)
!1220 = !DILocation(line: 534, column: 48, scope: !1215)
!1221 = !DILocation(line: 534, column: 7, scope: !1210)
!1222 = !DILocation(line: 535, column: 8, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !44, line: 535, column: 8)
!1224 = distinct !DILexicalBlock(scope: !1215, file: !44, line: 534, column: 54)
!1225 = !DILocation(line: 535, column: 15, scope: !1223)
!1226 = !DILocation(line: 535, column: 27, scope: !1223)
!1227 = !DILocation(line: 535, column: 12, scope: !1223)
!1228 = !DILocation(line: 535, column: 8, scope: !1224)
!1229 = !DILocation(line: 536, column: 27, scope: !1223)
!1230 = !DILocation(line: 536, column: 42, scope: !1223)
!1231 = !DILocation(line: 536, column: 47, scope: !1223)
!1232 = !DILocation(line: 536, column: 33, scope: !1223)
!1233 = !DILocation(line: 536, column: 12, scope: !1234)
!1234 = !DILexicalBlockFile(scope: !1223, file: !44, discriminator: 1)
!1235 = !DILocation(line: 536, column: 10, scope: !1223)
!1236 = !DILocation(line: 536, column: 5, scope: !1223)
!1237 = !DILocation(line: 538, column: 26, scope: !1223)
!1238 = !DILocation(line: 538, column: 41, scope: !1223)
!1239 = !DILocation(line: 538, column: 46, scope: !1223)
!1240 = !DILocation(line: 538, column: 32, scope: !1223)
!1241 = !DILocation(line: 538, column: 12, scope: !1234)
!1242 = !DILocation(line: 538, column: 10, scope: !1223)
!1243 = !DILocation(line: 539, column: 3, scope: !1224)
!1244 = !DILocation(line: 541, column: 2, scope: !1210)
!1245 = !DILocation(line: 531, column: 40, scope: !1246)
!1246 = !DILexicalBlockFile(scope: !1206, file: !44, discriminator: 2)
!1247 = !DILocation(line: 531, column: 45, scope: !1246)
!1248 = !DILocation(line: 531, column: 38, scope: !1246)
!1249 = !DILocation(line: 531, column: 2, scope: !1246)
!1250 = distinct !{!1250, !1251}
!1251 = !DILocation(line: 531, column: 2, scope: !1169)
!1252 = !DILocation(line: 543, column: 9, scope: !1169)
!1253 = !DILocation(line: 543, column: 2, scope: !1169)
!1254 = !DILocation(line: 544, column: 1, scope: !1169)
!1255 = distinct !DISubprogram(name: "completion_get_channels", scope: !44, file: !44, line: 546, type: !1256, isLocal: false, isDefinition: true, scopeLine: 547, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{!890, !174, !115}
!1258 = !DILocalVariable(name: "server", arg: 1, scope: !1255, file: !44, line: 546, type: !174)
!1259 = !DILocation(line: 546, column: 44, scope: !1255)
!1260 = !DILocalVariable(name: "word", arg: 2, scope: !1255, file: !44, line: 546, type: !115)
!1261 = !DILocation(line: 546, column: 64, scope: !1255)
!1262 = !DILocalVariable(name: "list", scope: !1255, file: !44, line: 548, type: !890)
!1263 = !DILocation(line: 548, column: 9, scope: !1255)
!1264 = !DILocalVariable(name: "tmp", scope: !1255, file: !44, line: 549, type: !144)
!1265 = !DILocation(line: 549, column: 10, scope: !1255)
!1266 = !DILocalVariable(name: "len", scope: !1255, file: !44, line: 550, type: !138)
!1267 = !DILocation(line: 550, column: 6, scope: !1255)
!1268 = !DILocation(line: 552, column: 2, scope: !1255)
!1269 = distinct !{!1269, !1268}
!1270 = !DILocation(line: 552, column: 10, scope: !1271)
!1271 = !DILexicalBlockFile(scope: !1272, file: !44, discriminator: 1)
!1272 = distinct !DILexicalBlock(scope: !1273, file: !44, line: 552, column: 10)
!1273 = distinct !DILexicalBlock(scope: !1255, file: !44, line: 552, column: 4)
!1274 = !DILocation(line: 552, column: 15, scope: !1271)
!1275 = !DILocation(line: 552, column: 5, scope: !1276)
!1276 = !DILexicalBlockFile(scope: !1277, file: !44, discriminator: 2)
!1277 = distinct !DILexicalBlock(scope: !1272, file: !44, line: 552, column: 3)
!1278 = !DILocation(line: 552, column: 14, scope: !1279)
!1279 = !DILexicalBlockFile(scope: !1280, file: !44, discriminator: 3)
!1280 = distinct !DILexicalBlock(scope: !1272, file: !44, line: 552, column: 12)
!1281 = !DILocation(line: 552, column: 99, scope: !1279)
!1282 = !DILocation(line: 552, column: 7, scope: !1283)
!1283 = !DILexicalBlockFile(scope: !1273, file: !44, discriminator: 4)
!1284 = !DILocation(line: 554, column: 15, scope: !1255)
!1285 = !DILocation(line: 554, column: 8, scope: !1255)
!1286 = !DILocation(line: 554, column: 6, scope: !1255)
!1287 = !DILocation(line: 555, column: 7, scope: !1255)
!1288 = !DILocation(line: 558, column: 8, scope: !1255)
!1289 = !DILocation(line: 558, column: 15, scope: !1255)
!1290 = !DILocation(line: 558, column: 8, scope: !1291)
!1291 = !DILexicalBlockFile(scope: !1255, file: !44, discriminator: 1)
!1292 = !DILocation(line: 558, column: 31, scope: !1293)
!1293 = !DILexicalBlockFile(scope: !1255, file: !44, discriminator: 2)
!1294 = !DILocation(line: 558, column: 39, scope: !1293)
!1295 = !DILocation(line: 558, column: 8, scope: !1293)
!1296 = !DILocation(line: 558, column: 8, scope: !1297)
!1297 = !DILexicalBlockFile(scope: !1255, file: !44, discriminator: 3)
!1298 = !DILocation(line: 558, column: 6, scope: !1297)
!1299 = !DILocation(line: 559, column: 2, scope: !1255)
!1300 = !DILocation(line: 559, column: 9, scope: !1301)
!1301 = !DILexicalBlockFile(scope: !1302, file: !44, discriminator: 1)
!1302 = distinct !DILexicalBlock(scope: !1303, file: !44, line: 559, column: 2)
!1303 = distinct !DILexicalBlock(scope: !1255, file: !44, line: 559, column: 2)
!1304 = !DILocation(line: 559, column: 13, scope: !1301)
!1305 = !DILocation(line: 559, column: 2, scope: !1301)
!1306 = !DILocalVariable(name: "rec", scope: !1307, file: !44, line: 560, type: !158)
!1307 = distinct !DILexicalBlock(scope: !1302, file: !44, line: 559, column: 38)
!1308 = !DILocation(line: 560, column: 16, scope: !1307)
!1309 = !DILocation(line: 560, column: 22, scope: !1307)
!1310 = !DILocation(line: 560, column: 27, scope: !1307)
!1311 = !DILocation(line: 562, column: 27, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1307, file: !44, line: 562, column: 7)
!1313 = !DILocation(line: 562, column: 32, scope: !1312)
!1314 = !DILocation(line: 562, column: 46, scope: !1312)
!1315 = !DILocation(line: 562, column: 52, scope: !1312)
!1316 = !DILocation(line: 562, column: 7, scope: !1312)
!1317 = !DILocation(line: 562, column: 57, scope: !1312)
!1318 = !DILocation(line: 562, column: 7, scope: !1307)
!1319 = !DILocation(line: 563, column: 25, scope: !1312)
!1320 = !DILocation(line: 563, column: 40, scope: !1312)
!1321 = !DILocation(line: 563, column: 45, scope: !1312)
!1322 = !DILocation(line: 563, column: 31, scope: !1312)
!1323 = !DILocation(line: 563, column: 11, scope: !1324)
!1324 = !DILexicalBlockFile(scope: !1312, file: !44, discriminator: 1)
!1325 = !DILocation(line: 563, column: 9, scope: !1312)
!1326 = !DILocation(line: 563, column: 4, scope: !1312)
!1327 = !DILocation(line: 564, column: 32, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1312, file: !44, line: 564, column: 12)
!1329 = !DILocation(line: 564, column: 37, scope: !1328)
!1330 = !DILocation(line: 564, column: 43, scope: !1328)
!1331 = !DILocation(line: 564, column: 49, scope: !1328)
!1332 = !DILocation(line: 564, column: 12, scope: !1328)
!1333 = !DILocation(line: 564, column: 54, scope: !1328)
!1334 = !DILocation(line: 564, column: 12, scope: !1312)
!1335 = !DILocation(line: 565, column: 25, scope: !1328)
!1336 = !DILocation(line: 565, column: 40, scope: !1328)
!1337 = !DILocation(line: 565, column: 45, scope: !1328)
!1338 = !DILocation(line: 565, column: 31, scope: !1328)
!1339 = !DILocation(line: 565, column: 11, scope: !1340)
!1340 = !DILexicalBlockFile(scope: !1328, file: !44, discriminator: 1)
!1341 = !DILocation(line: 565, column: 9, scope: !1328)
!1342 = !DILocation(line: 565, column: 4, scope: !1328)
!1343 = !DILocation(line: 566, column: 2, scope: !1307)
!1344 = !DILocation(line: 559, column: 27, scope: !1345)
!1345 = !DILexicalBlockFile(scope: !1302, file: !44, discriminator: 2)
!1346 = !DILocation(line: 559, column: 32, scope: !1345)
!1347 = !DILocation(line: 559, column: 25, scope: !1345)
!1348 = !DILocation(line: 559, column: 2, scope: !1345)
!1349 = distinct !{!1349, !1299}
!1350 = !DILocation(line: 569, column: 13, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1255, file: !44, line: 569, column: 2)
!1352 = !DILocation(line: 569, column: 11, scope: !1351)
!1353 = !DILocation(line: 569, column: 7, scope: !1351)
!1354 = !DILocation(line: 569, column: 28, scope: !1355)
!1355 = !DILexicalBlockFile(scope: !1356, file: !44, discriminator: 1)
!1356 = distinct !DILexicalBlock(scope: !1351, file: !44, line: 569, column: 2)
!1357 = !DILocation(line: 569, column: 32, scope: !1355)
!1358 = !DILocation(line: 569, column: 2, scope: !1355)
!1359 = !DILocalVariable(name: "rec", scope: !1360, file: !44, line: 570, type: !1361)
!1360 = distinct !DILexicalBlock(scope: !1356, file: !44, line: 569, column: 57)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64, align: 64)
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_SETUP_REC", file: !160, line: 115, baseType: !1363)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_SETUP_REC", file: !1364, line: 12, size: 512, align: 64, elements: !1365)
!1364 = !DIFile(filename: "../../../src/core/channels-setup.h", directory: "/home/lichi/Desktop/irssi/task1")
!1365 = !{!1366, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1363, file: !1367, line: 1, baseType: !138, size: 32, align: 32)
!1367 = !DIFile(filename: "../../../src/core/channel-setup-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !1363, file: !1367, line: 2, baseType: !138, size: 32, align: 32, offset: 32)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1363, file: !1367, line: 4, baseType: !136, size: 64, align: 64, offset: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !1363, file: !1367, line: 5, baseType: !136, size: 64, align: 64, offset: 128)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !1363, file: !1367, line: 6, baseType: !136, size: 64, align: 64, offset: 192)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "botmasks", scope: !1363, file: !1367, line: 8, baseType: !136, size: 64, align: 64, offset: 256)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "autosendcmd", scope: !1363, file: !1367, line: 9, baseType: !136, size: 64, align: 64, offset: 320)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "autojoin", scope: !1363, file: !1367, line: 11, baseType: !250, size: 1, align: 32, offset: 384, flags: DIFlagBitField, extraData: i64 384)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !1363, file: !1367, line: 12, baseType: !168, size: 64, align: 64, offset: 448)
!1376 = !DILocation(line: 570, column: 22, scope: !1360)
!1377 = !DILocation(line: 570, column: 28, scope: !1360)
!1378 = !DILocation(line: 570, column: 33, scope: !1360)
!1379 = !DILocation(line: 572, column: 27, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1360, file: !44, line: 572, column: 7)
!1381 = !DILocation(line: 572, column: 32, scope: !1380)
!1382 = !DILocation(line: 572, column: 38, scope: !1380)
!1383 = !DILocation(line: 572, column: 44, scope: !1380)
!1384 = !DILocation(line: 572, column: 7, scope: !1380)
!1385 = !DILocation(line: 572, column: 49, scope: !1380)
!1386 = !DILocation(line: 572, column: 54, scope: !1380)
!1387 = !DILocation(line: 573, column: 31, scope: !1380)
!1388 = !DILocation(line: 573, column: 37, scope: !1380)
!1389 = !DILocation(line: 573, column: 42, scope: !1380)
!1390 = !DILocation(line: 573, column: 7, scope: !1380)
!1391 = !DILocation(line: 573, column: 48, scope: !1380)
!1392 = !DILocation(line: 572, column: 7, scope: !1393)
!1393 = !DILexicalBlockFile(scope: !1360, file: !44, discriminator: 1)
!1394 = !DILocation(line: 574, column: 25, scope: !1380)
!1395 = !DILocation(line: 574, column: 40, scope: !1380)
!1396 = !DILocation(line: 574, column: 45, scope: !1380)
!1397 = !DILocation(line: 574, column: 31, scope: !1380)
!1398 = !DILocation(line: 574, column: 11, scope: !1399)
!1399 = !DILexicalBlockFile(scope: !1380, file: !44, discriminator: 1)
!1400 = !DILocation(line: 574, column: 9, scope: !1380)
!1401 = !DILocation(line: 574, column: 4, scope: !1380)
!1402 = !DILocation(line: 576, column: 2, scope: !1360)
!1403 = !DILocation(line: 569, column: 46, scope: !1404)
!1404 = !DILexicalBlockFile(scope: !1356, file: !44, discriminator: 2)
!1405 = !DILocation(line: 569, column: 51, scope: !1404)
!1406 = !DILocation(line: 569, column: 44, scope: !1404)
!1407 = !DILocation(line: 569, column: 2, scope: !1404)
!1408 = distinct !{!1408, !1409}
!1409 = !DILocation(line: 569, column: 2, scope: !1255)
!1410 = !DILocation(line: 578, column: 9, scope: !1255)
!1411 = !DILocation(line: 578, column: 2, scope: !1255)
!1412 = !DILocation(line: 579, column: 1, scope: !1255)
!1413 = distinct !DISubprogram(name: "completion_get_aliases", scope: !44, file: !44, line: 581, type: !1170, isLocal: false, isDefinition: true, scopeLine: 582, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!1414 = !DILocalVariable(name: "word", arg: 1, scope: !1413, file: !44, line: 581, type: !115)
!1415 = !DILocation(line: 581, column: 43, scope: !1413)
!1416 = !DILocalVariable(name: "node", scope: !1413, file: !44, line: 583, type: !1417)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64, align: 64)
!1418 = !DIDerivedType(tag: DW_TAG_typedef, name: "CONFIG_NODE", file: !36, line: 17, baseType: !1419)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CONFIG_NODE", file: !36, line: 20, size: 192, align: 64, elements: !1420)
!1420 = !{!1421, !1422, !1423}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1419, file: !36, line: 21, baseType: !138, size: 32, align: 32)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1419, file: !36, line: 22, baseType: !136, size: 64, align: 64, offset: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1419, file: !36, line: 23, baseType: !110, size: 64, align: 64, offset: 128)
!1424 = !DILocation(line: 583, column: 15, scope: !1413)
!1425 = !DILocalVariable(name: "list", scope: !1413, file: !44, line: 584, type: !890)
!1426 = !DILocation(line: 584, column: 9, scope: !1413)
!1427 = !DILocalVariable(name: "tmp", scope: !1413, file: !44, line: 585, type: !144)
!1428 = !DILocation(line: 585, column: 10, scope: !1413)
!1429 = !DILocalVariable(name: "len", scope: !1413, file: !44, line: 586, type: !138)
!1430 = !DILocation(line: 586, column: 6, scope: !1413)
!1431 = !DILocation(line: 588, column: 2, scope: !1413)
!1432 = distinct !{!1432, !1431}
!1433 = !DILocation(line: 588, column: 10, scope: !1434)
!1434 = !DILexicalBlockFile(scope: !1435, file: !44, discriminator: 1)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !44, line: 588, column: 10)
!1436 = distinct !DILexicalBlock(scope: !1413, file: !44, line: 588, column: 4)
!1437 = !DILocation(line: 588, column: 15, scope: !1434)
!1438 = !DILocation(line: 588, column: 5, scope: !1439)
!1439 = !DILexicalBlockFile(scope: !1440, file: !44, discriminator: 2)
!1440 = distinct !DILexicalBlock(scope: !1435, file: !44, line: 588, column: 3)
!1441 = !DILocation(line: 588, column: 14, scope: !1442)
!1442 = !DILexicalBlockFile(scope: !1443, file: !44, discriminator: 3)
!1443 = distinct !DILexicalBlock(scope: !1435, file: !44, line: 588, column: 12)
!1444 = !DILocation(line: 588, column: 99, scope: !1442)
!1445 = !DILocation(line: 588, column: 7, scope: !1446)
!1446 = !DILexicalBlockFile(scope: !1436, file: !44, discriminator: 4)
!1447 = !DILocation(line: 590, column: 15, scope: !1413)
!1448 = !DILocation(line: 590, column: 8, scope: !1413)
!1449 = !DILocation(line: 590, column: 6, scope: !1413)
!1450 = !DILocation(line: 591, column: 7, scope: !1413)
!1451 = !DILocation(line: 594, column: 30, scope: !1413)
!1452 = !DILocation(line: 594, column: 9, scope: !1413)
!1453 = !DILocation(line: 594, column: 7, scope: !1413)
!1454 = !DILocation(line: 595, column: 8, scope: !1413)
!1455 = !DILocation(line: 595, column: 13, scope: !1413)
!1456 = !DILocation(line: 595, column: 8, scope: !1457)
!1457 = !DILexicalBlockFile(scope: !1413, file: !44, discriminator: 1)
!1458 = !DILocation(line: 595, column: 47, scope: !1459)
!1459 = !DILexicalBlockFile(scope: !1413, file: !44, discriminator: 2)
!1460 = !DILocation(line: 595, column: 53, scope: !1459)
!1461 = !DILocation(line: 595, column: 29, scope: !1459)
!1462 = !DILocation(line: 595, column: 8, scope: !1459)
!1463 = !DILocation(line: 595, column: 8, scope: !1464)
!1464 = !DILexicalBlockFile(scope: !1413, file: !44, discriminator: 3)
!1465 = !DILocation(line: 595, column: 6, scope: !1464)
!1466 = !DILocation(line: 596, column: 2, scope: !1413)
!1467 = !DILocation(line: 596, column: 9, scope: !1468)
!1468 = !DILexicalBlockFile(scope: !1469, file: !44, discriminator: 1)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !44, line: 596, column: 2)
!1470 = distinct !DILexicalBlock(scope: !1413, file: !44, line: 596, column: 2)
!1471 = !DILocation(line: 596, column: 13, scope: !1468)
!1472 = !DILocation(line: 596, column: 2, scope: !1468)
!1473 = !DILocation(line: 597, column: 10, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1469, file: !44, line: 596, column: 50)
!1475 = !DILocation(line: 597, column: 15, scope: !1474)
!1476 = !DILocation(line: 597, column: 8, scope: !1474)
!1477 = !DILocation(line: 599, column: 7, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1474, file: !44, line: 599, column: 7)
!1479 = !DILocation(line: 599, column: 13, scope: !1478)
!1480 = !DILocation(line: 599, column: 18, scope: !1478)
!1481 = !DILocation(line: 599, column: 7, scope: !1474)
!1482 = !DILocation(line: 600, column: 4, scope: !1478)
!1483 = !DILocation(line: 602, column: 7, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1474, file: !44, line: 602, column: 7)
!1485 = !DILocation(line: 602, column: 11, scope: !1484)
!1486 = !DILocation(line: 602, column: 16, scope: !1484)
!1487 = !DILocation(line: 602, column: 39, scope: !1488)
!1488 = !DILexicalBlockFile(scope: !1484, file: !44, discriminator: 1)
!1489 = !DILocation(line: 602, column: 45, scope: !1488)
!1490 = !DILocation(line: 602, column: 50, scope: !1488)
!1491 = !DILocation(line: 602, column: 56, scope: !1488)
!1492 = !DILocation(line: 602, column: 19, scope: !1488)
!1493 = !DILocation(line: 602, column: 61, scope: !1488)
!1494 = !DILocation(line: 602, column: 7, scope: !1488)
!1495 = !DILocation(line: 603, column: 4, scope: !1484)
!1496 = !DILocation(line: 605, column: 24, scope: !1474)
!1497 = !DILocation(line: 605, column: 39, scope: !1474)
!1498 = !DILocation(line: 605, column: 45, scope: !1474)
!1499 = !DILocation(line: 605, column: 30, scope: !1474)
!1500 = !DILocation(line: 605, column: 10, scope: !1501)
!1501 = !DILexicalBlockFile(scope: !1474, file: !44, discriminator: 1)
!1502 = !DILocation(line: 605, column: 8, scope: !1474)
!1503 = !DILocation(line: 606, column: 2, scope: !1474)
!1504 = !DILocation(line: 596, column: 44, scope: !1505)
!1505 = !DILexicalBlockFile(scope: !1469, file: !44, discriminator: 2)
!1506 = !DILocation(line: 596, column: 27, scope: !1505)
!1507 = !DILocation(line: 596, column: 25, scope: !1505)
!1508 = !DILocation(line: 596, column: 2, scope: !1505)
!1509 = distinct !{!1509, !1466}
!1510 = !DILocation(line: 608, column: 9, scope: !1413)
!1511 = !DILocation(line: 608, column: 2, scope: !1413)
!1512 = !DILocation(line: 609, column: 1, scope: !1413)
!1513 = distinct !DISubprogram(name: "completion_get_chatnets", scope: !44, file: !44, line: 834, type: !1170, isLocal: false, isDefinition: true, scopeLine: 835, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!1514 = !DILocalVariable(name: "word", arg: 1, scope: !1513, file: !44, line: 834, type: !115)
!1515 = !DILocation(line: 834, column: 44, scope: !1513)
!1516 = !DILocalVariable(name: "list", scope: !1513, file: !44, line: 836, type: !890)
!1517 = !DILocation(line: 836, column: 9, scope: !1513)
!1518 = !DILocalVariable(name: "tmp", scope: !1513, file: !44, line: 837, type: !144)
!1519 = !DILocation(line: 837, column: 10, scope: !1513)
!1520 = !DILocalVariable(name: "len", scope: !1513, file: !44, line: 838, type: !138)
!1521 = !DILocation(line: 838, column: 6, scope: !1513)
!1522 = !DILocation(line: 840, column: 2, scope: !1513)
!1523 = distinct !{!1523, !1522}
!1524 = !DILocation(line: 840, column: 10, scope: !1525)
!1525 = !DILexicalBlockFile(scope: !1526, file: !44, discriminator: 1)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !44, line: 840, column: 10)
!1527 = distinct !DILexicalBlock(scope: !1513, file: !44, line: 840, column: 4)
!1528 = !DILocation(line: 840, column: 15, scope: !1525)
!1529 = !DILocation(line: 840, column: 5, scope: !1530)
!1530 = !DILexicalBlockFile(scope: !1531, file: !44, discriminator: 2)
!1531 = distinct !DILexicalBlock(scope: !1526, file: !44, line: 840, column: 3)
!1532 = !DILocation(line: 840, column: 14, scope: !1533)
!1533 = !DILexicalBlockFile(scope: !1534, file: !44, discriminator: 3)
!1534 = distinct !DILexicalBlock(scope: !1526, file: !44, line: 840, column: 12)
!1535 = !DILocation(line: 840, column: 99, scope: !1533)
!1536 = !DILocation(line: 840, column: 7, scope: !1537)
!1537 = !DILexicalBlockFile(scope: !1527, file: !44, discriminator: 4)
!1538 = !DILocation(line: 842, column: 15, scope: !1513)
!1539 = !DILocation(line: 842, column: 8, scope: !1513)
!1540 = !DILocation(line: 842, column: 6, scope: !1513)
!1541 = !DILocation(line: 843, column: 7, scope: !1513)
!1542 = !DILocation(line: 845, column: 13, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1513, file: !44, line: 845, column: 2)
!1544 = !DILocation(line: 845, column: 11, scope: !1543)
!1545 = !DILocation(line: 845, column: 7, scope: !1543)
!1546 = !DILocation(line: 845, column: 23, scope: !1547)
!1547 = !DILexicalBlockFile(scope: !1548, file: !44, discriminator: 1)
!1548 = distinct !DILexicalBlock(scope: !1543, file: !44, line: 845, column: 2)
!1549 = !DILocation(line: 845, column: 27, scope: !1547)
!1550 = !DILocation(line: 845, column: 2, scope: !1547)
!1551 = !DILocalVariable(name: "rec", scope: !1552, file: !44, line: 846, type: !1553)
!1552 = distinct !DILexicalBlock(scope: !1548, file: !44, line: 845, column: 52)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64, align: 64)
!1554 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHATNET_REC", file: !160, line: 106, baseType: !1555)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHATNET_REC", file: !1556, line: 13, size: 576, align: 64, elements: !1557)
!1556 = !DIFile(filename: "../../../src/core/chatnets.h", directory: "/home/lichi/Desktop/irssi/task1")
!1557 = !{!1558, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1555, file: !1559, line: 1, baseType: !138, size: 32, align: 32)
!1559 = !DIFile(filename: "../../../src/core/chatnet-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !1555, file: !1559, line: 2, baseType: !138, size: 32, align: 32, offset: 32)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1555, file: !1559, line: 4, baseType: !136, size: 64, align: 64, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !1555, file: !1559, line: 6, baseType: !136, size: 64, align: 64, offset: 128)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !1555, file: !1559, line: 7, baseType: !136, size: 64, align: 64, offset: 192)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !1555, file: !1559, line: 8, baseType: !136, size: 64, align: 64, offset: 256)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "own_host", scope: !1555, file: !1559, line: 10, baseType: !136, size: 64, align: 64, offset: 320)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "autosendcmd", scope: !1555, file: !1559, line: 11, baseType: !136, size: 64, align: 64, offset: 384)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !1555, file: !1559, line: 12, baseType: !204, size: 64, align: 64, offset: 448)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !1555, file: !1559, line: 12, baseType: !204, size: 64, align: 64, offset: 512)
!1569 = !DILocation(line: 846, column: 16, scope: !1552)
!1570 = !DILocation(line: 846, column: 22, scope: !1552)
!1571 = !DILocation(line: 846, column: 27, scope: !1552)
!1572 = !DILocation(line: 848, column: 27, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1552, file: !44, line: 848, column: 7)
!1574 = !DILocation(line: 848, column: 32, scope: !1573)
!1575 = !DILocation(line: 848, column: 38, scope: !1573)
!1576 = !DILocation(line: 848, column: 44, scope: !1573)
!1577 = !DILocation(line: 848, column: 7, scope: !1573)
!1578 = !DILocation(line: 848, column: 49, scope: !1573)
!1579 = !DILocation(line: 848, column: 7, scope: !1552)
!1580 = !DILocation(line: 849, column: 25, scope: !1573)
!1581 = !DILocation(line: 849, column: 40, scope: !1573)
!1582 = !DILocation(line: 849, column: 45, scope: !1573)
!1583 = !DILocation(line: 849, column: 31, scope: !1573)
!1584 = !DILocation(line: 849, column: 11, scope: !1585)
!1585 = !DILexicalBlockFile(scope: !1573, file: !44, discriminator: 1)
!1586 = !DILocation(line: 849, column: 9, scope: !1573)
!1587 = !DILocation(line: 849, column: 4, scope: !1573)
!1588 = !DILocation(line: 850, column: 2, scope: !1552)
!1589 = !DILocation(line: 845, column: 41, scope: !1590)
!1590 = !DILexicalBlockFile(scope: !1548, file: !44, discriminator: 2)
!1591 = !DILocation(line: 845, column: 46, scope: !1590)
!1592 = !DILocation(line: 845, column: 39, scope: !1590)
!1593 = !DILocation(line: 845, column: 2, scope: !1590)
!1594 = distinct !{!1594, !1595}
!1595 = !DILocation(line: 845, column: 2, scope: !1513)
!1596 = !DILocation(line: 852, column: 9, scope: !1513)
!1597 = !DILocation(line: 852, column: 2, scope: !1513)
!1598 = !DILocation(line: 853, column: 1, scope: !1513)
!1599 = distinct !DISubprogram(name: "completion_get_servers", scope: !44, file: !44, line: 855, type: !1170, isLocal: false, isDefinition: true, scopeLine: 856, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!1600 = !DILocalVariable(name: "word", arg: 1, scope: !1599, file: !44, line: 855, type: !115)
!1601 = !DILocation(line: 855, column: 43, scope: !1599)
!1602 = !DILocalVariable(name: "list", scope: !1599, file: !44, line: 857, type: !890)
!1603 = !DILocation(line: 857, column: 9, scope: !1599)
!1604 = !DILocalVariable(name: "tmp", scope: !1599, file: !44, line: 858, type: !144)
!1605 = !DILocation(line: 858, column: 10, scope: !1599)
!1606 = !DILocalVariable(name: "len", scope: !1599, file: !44, line: 859, type: !138)
!1607 = !DILocation(line: 859, column: 6, scope: !1599)
!1608 = !DILocation(line: 861, column: 2, scope: !1599)
!1609 = distinct !{!1609, !1608}
!1610 = !DILocation(line: 861, column: 10, scope: !1611)
!1611 = !DILexicalBlockFile(scope: !1612, file: !44, discriminator: 1)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !44, line: 861, column: 10)
!1613 = distinct !DILexicalBlock(scope: !1599, file: !44, line: 861, column: 4)
!1614 = !DILocation(line: 861, column: 15, scope: !1611)
!1615 = !DILocation(line: 861, column: 5, scope: !1616)
!1616 = !DILexicalBlockFile(scope: !1617, file: !44, discriminator: 2)
!1617 = distinct !DILexicalBlock(scope: !1612, file: !44, line: 861, column: 3)
!1618 = !DILocation(line: 861, column: 14, scope: !1619)
!1619 = !DILexicalBlockFile(scope: !1620, file: !44, discriminator: 3)
!1620 = distinct !DILexicalBlock(scope: !1612, file: !44, line: 861, column: 12)
!1621 = !DILocation(line: 861, column: 99, scope: !1619)
!1622 = !DILocation(line: 861, column: 7, scope: !1623)
!1623 = !DILexicalBlockFile(scope: !1613, file: !44, discriminator: 4)
!1624 = !DILocation(line: 863, column: 15, scope: !1599)
!1625 = !DILocation(line: 863, column: 8, scope: !1599)
!1626 = !DILocation(line: 863, column: 6, scope: !1599)
!1627 = !DILocation(line: 864, column: 7, scope: !1599)
!1628 = !DILocation(line: 866, column: 13, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1599, file: !44, line: 866, column: 2)
!1630 = !DILocation(line: 866, column: 11, scope: !1629)
!1631 = !DILocation(line: 866, column: 7, scope: !1629)
!1632 = !DILocation(line: 866, column: 27, scope: !1633)
!1633 = !DILexicalBlockFile(scope: !1634, file: !44, discriminator: 1)
!1634 = distinct !DILexicalBlock(scope: !1629, file: !44, line: 866, column: 2)
!1635 = !DILocation(line: 866, column: 31, scope: !1633)
!1636 = !DILocation(line: 866, column: 2, scope: !1633)
!1637 = !DILocalVariable(name: "rec", scope: !1638, file: !44, line: 867, type: !1639)
!1638 = distinct !DILexicalBlock(scope: !1634, file: !44, line: 866, column: 56)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64, align: 64)
!1640 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_SETUP_REC", file: !160, line: 114, baseType: !1641)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_SETUP_REC", file: !1642, line: 13, size: 1408, align: 64, elements: !1643)
!1642 = !DIFile(filename: "../../../src/core/servers-setup.h", directory: "/home/lichi/Desktop/irssi/task1")
!1643 = !{!1644, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1641, file: !1645, line: 1, baseType: !138, size: 32, align: 32)
!1645 = !DIFile(filename: "../../../src/core/server-setup-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !1641, file: !1645, line: 2, baseType: !138, size: 32, align: 32, offset: 32)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !1641, file: !1645, line: 4, baseType: !136, size: 64, align: 64, offset: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !1641, file: !1645, line: 6, baseType: !198, size: 16, align: 16, offset: 128)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1641, file: !1645, line: 7, baseType: !136, size: 64, align: 64, offset: 192)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1641, file: !1645, line: 8, baseType: !138, size: 32, align: 32, offset: 256)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !1641, file: !1645, line: 9, baseType: !136, size: 64, align: 64, offset: 320)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !1641, file: !1645, line: 11, baseType: !138, size: 32, align: 32, offset: 384)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !1641, file: !1645, line: 12, baseType: !136, size: 64, align: 64, offset: 448)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !1641, file: !1645, line: 14, baseType: !136, size: 64, align: 64, offset: 512)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !1641, file: !1645, line: 15, baseType: !136, size: 64, align: 64, offset: 576)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !1641, file: !1645, line: 16, baseType: !136, size: 64, align: 64, offset: 640)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !1641, file: !1645, line: 17, baseType: !136, size: 64, align: 64, offset: 704)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !1641, file: !1645, line: 18, baseType: !136, size: 64, align: 64, offset: 768)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !1641, file: !1645, line: 19, baseType: !136, size: 64, align: 64, offset: 832)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !1641, file: !1645, line: 20, baseType: !136, size: 64, align: 64, offset: 896)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !1641, file: !1645, line: 21, baseType: !136, size: 64, align: 64, offset: 960)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "own_host", scope: !1641, file: !1645, line: 23, baseType: !136, size: 64, align: 64, offset: 1024)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !1641, file: !1645, line: 24, baseType: !204, size: 64, align: 64, offset: 1088)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !1641, file: !1645, line: 24, baseType: !204, size: 64, align: 64, offset: 1152)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "last_connect", scope: !1641, file: !1645, line: 26, baseType: !130, size: 64, align: 64, offset: 1216)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "autoconnect", scope: !1641, file: !1645, line: 28, baseType: !250, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "no_proxy", scope: !1641, file: !1645, line: 29, baseType: !250, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "last_failed", scope: !1641, file: !1645, line: 30, baseType: !250, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !1641, file: !1645, line: 31, baseType: !250, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !1641, file: !1645, line: 32, baseType: !250, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !1641, file: !1645, line: 33, baseType: !250, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !1641, file: !1645, line: 34, baseType: !250, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !1641, file: !1645, line: 36, baseType: !168, size: 64, align: 64, offset: 1344)
!1674 = !DILocation(line: 867, column: 21, scope: !1638)
!1675 = !DILocation(line: 867, column: 27, scope: !1638)
!1676 = !DILocation(line: 867, column: 32, scope: !1638)
!1677 = !DILocation(line: 869, column: 27, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1638, file: !44, line: 869, column: 7)
!1679 = !DILocation(line: 869, column: 32, scope: !1678)
!1680 = !DILocation(line: 869, column: 41, scope: !1678)
!1681 = !DILocation(line: 869, column: 47, scope: !1678)
!1682 = !DILocation(line: 869, column: 7, scope: !1678)
!1683 = !DILocation(line: 869, column: 52, scope: !1678)
!1684 = !DILocation(line: 869, column: 7, scope: !1638)
!1685 = !DILocation(line: 870, column: 25, scope: !1678)
!1686 = !DILocation(line: 870, column: 40, scope: !1678)
!1687 = !DILocation(line: 870, column: 45, scope: !1678)
!1688 = !DILocation(line: 870, column: 31, scope: !1678)
!1689 = !DILocation(line: 870, column: 11, scope: !1690)
!1690 = !DILexicalBlockFile(scope: !1678, file: !44, discriminator: 1)
!1691 = !DILocation(line: 870, column: 9, scope: !1678)
!1692 = !DILocation(line: 870, column: 4, scope: !1678)
!1693 = !DILocation(line: 871, column: 2, scope: !1638)
!1694 = !DILocation(line: 866, column: 45, scope: !1695)
!1695 = !DILexicalBlockFile(scope: !1634, file: !44, discriminator: 2)
!1696 = !DILocation(line: 866, column: 50, scope: !1695)
!1697 = !DILocation(line: 866, column: 43, scope: !1695)
!1698 = !DILocation(line: 866, column: 2, scope: !1695)
!1699 = distinct !{!1699, !1700}
!1700 = !DILocation(line: 866, column: 2, scope: !1599)
!1701 = !DILocation(line: 873, column: 9, scope: !1599)
!1702 = !DILocation(line: 873, column: 2, scope: !1599)
!1703 = !DILocation(line: 874, column: 1, scope: !1599)
!1704 = distinct !DISubprogram(name: "completion_get_targets", scope: !44, file: !44, line: 876, type: !1170, isLocal: false, isDefinition: true, scopeLine: 877, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!1705 = !DILocalVariable(name: "word", arg: 1, scope: !1704, file: !44, line: 876, type: !115)
!1706 = !DILocation(line: 876, column: 43, scope: !1704)
!1707 = !DILocalVariable(name: "node", scope: !1704, file: !44, line: 878, type: !1417)
!1708 = !DILocation(line: 878, column: 15, scope: !1704)
!1709 = !DILocalVariable(name: "list", scope: !1704, file: !44, line: 879, type: !890)
!1710 = !DILocation(line: 879, column: 9, scope: !1704)
!1711 = !DILocalVariable(name: "tmp", scope: !1704, file: !44, line: 880, type: !144)
!1712 = !DILocation(line: 880, column: 10, scope: !1704)
!1713 = !DILocalVariable(name: "len", scope: !1704, file: !44, line: 881, type: !138)
!1714 = !DILocation(line: 881, column: 6, scope: !1704)
!1715 = !DILocation(line: 883, column: 2, scope: !1704)
!1716 = distinct !{!1716, !1715}
!1717 = !DILocation(line: 883, column: 10, scope: !1718)
!1718 = !DILexicalBlockFile(scope: !1719, file: !44, discriminator: 1)
!1719 = distinct !DILexicalBlock(scope: !1720, file: !44, line: 883, column: 10)
!1720 = distinct !DILexicalBlock(scope: !1704, file: !44, line: 883, column: 4)
!1721 = !DILocation(line: 883, column: 15, scope: !1718)
!1722 = !DILocation(line: 883, column: 5, scope: !1723)
!1723 = !DILexicalBlockFile(scope: !1724, file: !44, discriminator: 2)
!1724 = distinct !DILexicalBlock(scope: !1719, file: !44, line: 883, column: 3)
!1725 = !DILocation(line: 883, column: 14, scope: !1726)
!1726 = !DILexicalBlockFile(scope: !1727, file: !44, discriminator: 3)
!1727 = distinct !DILexicalBlock(scope: !1719, file: !44, line: 883, column: 12)
!1728 = !DILocation(line: 883, column: 99, scope: !1726)
!1729 = !DILocation(line: 883, column: 7, scope: !1730)
!1730 = !DILexicalBlockFile(scope: !1720, file: !44, discriminator: 4)
!1731 = !DILocation(line: 885, column: 15, scope: !1704)
!1732 = !DILocation(line: 885, column: 8, scope: !1704)
!1733 = !DILocation(line: 885, column: 6, scope: !1704)
!1734 = !DILocation(line: 886, column: 7, scope: !1704)
!1735 = !DILocation(line: 889, column: 30, scope: !1704)
!1736 = !DILocation(line: 889, column: 9, scope: !1704)
!1737 = !DILocation(line: 889, column: 7, scope: !1704)
!1738 = !DILocation(line: 890, column: 8, scope: !1704)
!1739 = !DILocation(line: 890, column: 13, scope: !1704)
!1740 = !DILocation(line: 890, column: 8, scope: !1741)
!1741 = !DILexicalBlockFile(scope: !1704, file: !44, discriminator: 1)
!1742 = !DILocation(line: 890, column: 47, scope: !1743)
!1743 = !DILexicalBlockFile(scope: !1704, file: !44, discriminator: 2)
!1744 = !DILocation(line: 890, column: 53, scope: !1743)
!1745 = !DILocation(line: 890, column: 29, scope: !1743)
!1746 = !DILocation(line: 890, column: 8, scope: !1743)
!1747 = !DILocation(line: 890, column: 8, scope: !1748)
!1748 = !DILexicalBlockFile(scope: !1704, file: !44, discriminator: 3)
!1749 = !DILocation(line: 890, column: 6, scope: !1748)
!1750 = !DILocation(line: 891, column: 2, scope: !1704)
!1751 = !DILocation(line: 891, column: 9, scope: !1752)
!1752 = !DILexicalBlockFile(scope: !1753, file: !44, discriminator: 1)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !44, line: 891, column: 2)
!1754 = distinct !DILexicalBlock(scope: !1704, file: !44, line: 891, column: 2)
!1755 = !DILocation(line: 891, column: 13, scope: !1752)
!1756 = !DILocation(line: 891, column: 2, scope: !1752)
!1757 = !DILocation(line: 892, column: 10, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1753, file: !44, line: 891, column: 50)
!1759 = !DILocation(line: 892, column: 15, scope: !1758)
!1760 = !DILocation(line: 892, column: 8, scope: !1758)
!1761 = !DILocation(line: 894, column: 7, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1758, file: !44, line: 894, column: 7)
!1763 = !DILocation(line: 894, column: 13, scope: !1762)
!1764 = !DILocation(line: 894, column: 18, scope: !1762)
!1765 = !DILocation(line: 894, column: 7, scope: !1758)
!1766 = !DILocation(line: 895, column: 4, scope: !1762)
!1767 = !DILocation(line: 897, column: 7, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1758, file: !44, line: 897, column: 7)
!1769 = !DILocation(line: 897, column: 11, scope: !1768)
!1770 = !DILocation(line: 897, column: 16, scope: !1768)
!1771 = !DILocation(line: 897, column: 39, scope: !1772)
!1772 = !DILexicalBlockFile(scope: !1768, file: !44, discriminator: 1)
!1773 = !DILocation(line: 897, column: 45, scope: !1772)
!1774 = !DILocation(line: 897, column: 50, scope: !1772)
!1775 = !DILocation(line: 897, column: 56, scope: !1772)
!1776 = !DILocation(line: 897, column: 19, scope: !1772)
!1777 = !DILocation(line: 897, column: 61, scope: !1772)
!1778 = !DILocation(line: 897, column: 7, scope: !1772)
!1779 = !DILocation(line: 898, column: 4, scope: !1768)
!1780 = !DILocation(line: 900, column: 24, scope: !1758)
!1781 = !DILocation(line: 900, column: 39, scope: !1758)
!1782 = !DILocation(line: 900, column: 45, scope: !1758)
!1783 = !DILocation(line: 900, column: 30, scope: !1758)
!1784 = !DILocation(line: 900, column: 10, scope: !1785)
!1785 = !DILexicalBlockFile(scope: !1758, file: !44, discriminator: 1)
!1786 = !DILocation(line: 900, column: 8, scope: !1758)
!1787 = !DILocation(line: 901, column: 2, scope: !1758)
!1788 = !DILocation(line: 891, column: 44, scope: !1789)
!1789 = !DILexicalBlockFile(scope: !1753, file: !44, discriminator: 2)
!1790 = !DILocation(line: 891, column: 27, scope: !1789)
!1791 = !DILocation(line: 891, column: 25, scope: !1789)
!1792 = !DILocation(line: 891, column: 2, scope: !1789)
!1793 = distinct !{!1793, !1750}
!1794 = !DILocation(line: 903, column: 9, scope: !1704)
!1795 = !DILocation(line: 903, column: 2, scope: !1704)
!1796 = !DILocation(line: 904, column: 1, scope: !1704)
!1797 = distinct !DISubprogram(name: "chat_completion_init", scope: !44, file: !44, line: 1239, type: !326, isLocal: false, isDefinition: true, scopeLine: 1240, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!1798 = !DILocation(line: 1241, column: 2, scope: !1797)
!1799 = !DILocation(line: 1242, column: 2, scope: !1797)
!1800 = !DILocation(line: 1243, column: 2, scope: !1797)
!1801 = !DILocation(line: 1244, column: 2, scope: !1797)
!1802 = !DILocation(line: 1245, column: 2, scope: !1797)
!1803 = !DILocation(line: 1246, column: 2, scope: !1797)
!1804 = !DILocation(line: 1247, column: 2, scope: !1797)
!1805 = !DILocation(line: 1248, column: 2, scope: !1797)
!1806 = !DILocation(line: 1250, column: 2, scope: !1797)
!1807 = !DILocation(line: 1252, column: 2, scope: !1797)
!1808 = !DILocation(line: 1253, column: 2, scope: !1797)
!1809 = !DILocation(line: 1254, column: 2, scope: !1797)
!1810 = !DILocation(line: 1255, column: 2, scope: !1797)
!1811 = !DILocation(line: 1256, column: 2, scope: !1797)
!1812 = !DILocation(line: 1257, column: 2, scope: !1797)
!1813 = !DILocation(line: 1258, column: 2, scope: !1797)
!1814 = !DILocation(line: 1259, column: 2, scope: !1797)
!1815 = !DILocation(line: 1260, column: 2, scope: !1797)
!1816 = !DILocation(line: 1261, column: 2, scope: !1797)
!1817 = !DILocation(line: 1262, column: 2, scope: !1797)
!1818 = !DILocation(line: 1263, column: 2, scope: !1797)
!1819 = !DILocation(line: 1264, column: 2, scope: !1797)
!1820 = !DILocation(line: 1265, column: 2, scope: !1797)
!1821 = !DILocation(line: 1266, column: 2, scope: !1797)
!1822 = !DILocation(line: 1267, column: 2, scope: !1797)
!1823 = !DILocation(line: 1268, column: 2, scope: !1797)
!1824 = !DILocation(line: 1269, column: 2, scope: !1797)
!1825 = !DILocation(line: 1270, column: 2, scope: !1797)
!1826 = !DILocation(line: 1271, column: 2, scope: !1797)
!1827 = !DILocation(line: 1272, column: 2, scope: !1797)
!1828 = !DILocation(line: 1273, column: 2, scope: !1797)
!1829 = !DILocation(line: 1274, column: 2, scope: !1797)
!1830 = !DILocation(line: 1275, column: 2, scope: !1797)
!1831 = !DILocation(line: 1276, column: 2, scope: !1797)
!1832 = !DILocation(line: 1277, column: 2, scope: !1797)
!1833 = !DILocation(line: 1278, column: 2, scope: !1797)
!1834 = !DILocation(line: 1279, column: 2, scope: !1797)
!1835 = !DILocation(line: 1280, column: 2, scope: !1797)
!1836 = !DILocation(line: 1281, column: 2, scope: !1797)
!1837 = !DILocation(line: 1282, column: 2, scope: !1797)
!1838 = !DILocation(line: 1283, column: 2, scope: !1797)
!1839 = !DILocation(line: 1284, column: 2, scope: !1797)
!1840 = !DILocation(line: 1285, column: 1, scope: !1797)
!1841 = distinct !DISubprogram(name: "read_settings", scope: !44, file: !44, line: 1215, type: !326, isLocal: true, isDefinition: true, scopeLine: 1216, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!1842 = !DILocation(line: 1217, column: 24, scope: !1841)
!1843 = !DILocation(line: 1217, column: 22, scope: !1841)
!1844 = !DILocation(line: 1218, column: 23, scope: !1841)
!1845 = !DILocation(line: 1218, column: 21, scope: !1841)
!1846 = !DILocation(line: 1219, column: 25, scope: !1841)
!1847 = !DILocation(line: 1219, column: 23, scope: !1841)
!1848 = !DILocation(line: 1221, column: 20, scope: !1841)
!1849 = !DILocation(line: 1221, column: 18, scope: !1841)
!1850 = !DILocation(line: 1222, column: 22, scope: !1841)
!1851 = !DILocation(line: 1222, column: 20, scope: !1841)
!1852 = !DILocation(line: 1223, column: 26, scope: !1841)
!1853 = !DILocation(line: 1223, column: 24, scope: !1841)
!1854 = !DILocation(line: 1225, column: 26, scope: !1841)
!1855 = !DILocation(line: 1225, column: 24, scope: !1841)
!1856 = !DILocation(line: 1227, column: 9, scope: !1841)
!1857 = !DILocation(line: 1227, column: 2, scope: !1841)
!1858 = !DILocation(line: 1228, column: 29, scope: !1841)
!1859 = !DILocation(line: 1228, column: 20, scope: !1860)
!1860 = !DILexicalBlockFile(scope: !1841, file: !44, discriminator: 1)
!1861 = !DILocation(line: 1228, column: 18, scope: !1841)
!1862 = !DILocation(line: 1230, column: 9, scope: !1841)
!1863 = !DILocation(line: 1230, column: 2, scope: !1841)
!1864 = !DILocation(line: 1231, column: 22, scope: !1841)
!1865 = !DILocation(line: 1231, column: 13, scope: !1860)
!1866 = !DILocation(line: 1231, column: 11, scope: !1841)
!1867 = !DILocation(line: 1233, column: 7, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1841, file: !44, line: 1233, column: 6)
!1869 = !DILocation(line: 1233, column: 6, scope: !1868)
!1870 = !DILocation(line: 1233, column: 23, scope: !1868)
!1871 = !DILocation(line: 1233, column: 6, scope: !1841)
!1872 = !DILocation(line: 1235, column: 19, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1868, file: !44, line: 1233, column: 32)
!1874 = !DILocation(line: 1236, column: 2, scope: !1873)
!1875 = !DILocation(line: 1237, column: 1, scope: !1841)
!1876 = distinct !DISubprogram(name: "sig_complete_word", scope: !44, file: !44, line: 697, type: !1877, isLocal: true, isDefinition: true, scopeLine: 700, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{null, !1879, !1880, !115, !115, !1918}
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64, align: 64)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64, align: 64)
!1881 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW_REC", file: !160, line: 117, baseType: !1882)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WINDOW_REC", file: !1883, line: 28, size: 1280, align: 64, elements: !1884)
!1883 = !DIFile(filename: "fe-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!1884 = !{!1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "refnum", scope: !1882, file: !1883, line: 29, baseType: !138, size: 32, align: 32)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1882, file: !1883, line: 30, baseType: !136, size: 64, align: 64, offset: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !1882, file: !1883, line: 32, baseType: !138, size: 32, align: 32, offset: 128)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !1882, file: !1883, line: 32, baseType: !138, size: 32, align: 32, offset: 160)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !1882, file: !1883, line: 34, baseType: !144, size: 64, align: 64, offset: 192)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1882, file: !1883, line: 35, baseType: !497, size: 64, align: 64, offset: 256)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "active_server", scope: !1882, file: !1883, line: 36, baseType: !174, size: 64, align: 64, offset: 320)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "connect_server", scope: !1882, file: !1883, line: 37, baseType: !174, size: 64, align: 64, offset: 384)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !1882, file: !1883, line: 38, baseType: !136, size: 64, align: 64, offset: 448)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1882, file: !1883, line: 40, baseType: !138, size: 32, align: 32, offset: 512)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "bound_items", scope: !1882, file: !1883, line: 41, baseType: !144, size: 64, align: 64, offset: 576)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "immortal", scope: !1882, file: !1883, line: 43, baseType: !250, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_refnum", scope: !1882, file: !1883, line: 44, baseType: !250, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !1882, file: !1883, line: 45, baseType: !250, size: 1, align: 32, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !1882, file: !1883, line: 48, baseType: !1900, size: 64, align: 64, offset: 704)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64, align: 64)
!1901 = !DIDerivedType(tag: DW_TAG_typedef, name: "HISTORY_REC", file: !1902, line: 14, baseType: !1903)
!1902 = !DIFile(filename: "command-history.h", directory: "/home/lichi/Desktop/irssi/task1")
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1902, line: 6, size: 256, align: 64, elements: !1904)
!1904 = !{!1905, !1906, !1907, !1908, !1909}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1903, file: !1902, line: 7, baseType: !136, size: 64, align: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1903, file: !1902, line: 9, baseType: !890, size: 64, align: 64, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !1903, file: !1902, line: 10, baseType: !138, size: 32, align: 32, offset: 128)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1903, file: !1902, line: 12, baseType: !138, size: 32, align: 32, offset: 160)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "redo", scope: !1903, file: !1902, line: 13, baseType: !138, size: 1, align: 32, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "history_name", scope: !1882, file: !1883, line: 49, baseType: !136, size: 64, align: 64, offset: 768)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !1882, file: !1883, line: 51, baseType: !138, size: 32, align: 32, offset: 832)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !1882, file: !1883, line: 52, baseType: !136, size: 64, align: 64, offset: 896)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "last_timestamp", scope: !1882, file: !1883, line: 54, baseType: !130, size: 64, align: 64, offset: 960)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !1882, file: !1883, line: 55, baseType: !130, size: 64, align: 64, offset: 1024)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "theme_name", scope: !1882, file: !1883, line: 57, baseType: !136, size: 64, align: 64, offset: 1088)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "theme", scope: !1882, file: !1883, line: 58, baseType: !110, size: 64, align: 64, offset: 1152)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !1882, file: !1883, line: 60, baseType: !110, size: 64, align: 64, offset: 1216)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!1919 = !DILocalVariable(name: "list", arg: 1, scope: !1876, file: !44, line: 697, type: !1879)
!1920 = !DILocation(line: 697, column: 39, scope: !1876)
!1921 = !DILocalVariable(name: "window", arg: 2, scope: !1876, file: !44, line: 697, type: !1880)
!1922 = !DILocation(line: 697, column: 57, scope: !1876)
!1923 = !DILocalVariable(name: "word", arg: 3, scope: !1876, file: !44, line: 698, type: !115)
!1924 = !DILocation(line: 698, column: 22, scope: !1876)
!1925 = !DILocalVariable(name: "linestart", arg: 4, scope: !1876, file: !44, line: 698, type: !115)
!1926 = !DILocation(line: 698, column: 40, scope: !1876)
!1927 = !DILocalVariable(name: "want_space", arg: 5, scope: !1876, file: !44, line: 699, type: !1918)
!1928 = !DILocation(line: 699, column: 15, scope: !1876)
!1929 = !DILocalVariable(name: "server", scope: !1876, file: !44, line: 701, type: !174)
!1930 = !DILocation(line: 701, column: 14, scope: !1876)
!1931 = !DILocalVariable(name: "channel", scope: !1876, file: !44, line: 702, type: !158)
!1932 = !DILocation(line: 702, column: 15, scope: !1876)
!1933 = !DILocalVariable(name: "query", scope: !1876, file: !44, line: 703, type: !478)
!1934 = !DILocation(line: 703, column: 13, scope: !1876)
!1935 = !DILocalVariable(name: "prefix", scope: !1876, file: !44, line: 704, type: !136)
!1936 = !DILocation(line: 704, column: 8, scope: !1876)
!1937 = !DILocation(line: 706, column: 2, scope: !1876)
!1938 = distinct !{!1938, !1937}
!1939 = !DILocation(line: 706, column: 10, scope: !1940)
!1940 = !DILexicalBlockFile(scope: !1941, file: !44, discriminator: 1)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !44, line: 706, column: 10)
!1942 = distinct !DILexicalBlock(scope: !1876, file: !44, line: 706, column: 4)
!1943 = !DILocation(line: 706, column: 15, scope: !1940)
!1944 = !DILocation(line: 706, column: 5, scope: !1945)
!1945 = !DILexicalBlockFile(scope: !1946, file: !44, discriminator: 2)
!1946 = distinct !DILexicalBlock(scope: !1941, file: !44, line: 706, column: 3)
!1947 = !DILocation(line: 706, column: 14, scope: !1948)
!1948 = !DILexicalBlockFile(scope: !1949, file: !44, discriminator: 3)
!1949 = distinct !DILexicalBlock(scope: !1941, file: !44, line: 706, column: 12)
!1950 = !DILocation(line: 706, column: 99, scope: !1948)
!1951 = !DILocation(line: 706, column: 110, scope: !1952)
!1952 = !DILexicalBlockFile(scope: !1942, file: !44, discriminator: 4)
!1953 = !DILocation(line: 707, column: 2, scope: !1876)
!1954 = distinct !{!1954, !1953}
!1955 = !DILocation(line: 707, column: 10, scope: !1956)
!1956 = !DILexicalBlockFile(scope: !1957, file: !44, discriminator: 1)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !44, line: 707, column: 10)
!1958 = distinct !DILexicalBlock(scope: !1876, file: !44, line: 707, column: 4)
!1959 = !DILocation(line: 707, column: 17, scope: !1956)
!1960 = !DILocation(line: 707, column: 5, scope: !1961)
!1961 = !DILexicalBlockFile(scope: !1962, file: !44, discriminator: 2)
!1962 = distinct !DILexicalBlock(scope: !1957, file: !44, line: 707, column: 3)
!1963 = !DILocation(line: 707, column: 14, scope: !1964)
!1964 = !DILexicalBlockFile(scope: !1965, file: !44, discriminator: 3)
!1965 = distinct !DILexicalBlock(scope: !1957, file: !44, line: 707, column: 12)
!1966 = !DILocation(line: 707, column: 101, scope: !1964)
!1967 = !DILocation(line: 707, column: 112, scope: !1968)
!1968 = !DILexicalBlockFile(scope: !1958, file: !44, discriminator: 4)
!1969 = !DILocation(line: 708, column: 2, scope: !1876)
!1970 = distinct !{!1970, !1969}
!1971 = !DILocation(line: 708, column: 10, scope: !1972)
!1972 = !DILexicalBlockFile(scope: !1973, file: !44, discriminator: 1)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !44, line: 708, column: 10)
!1974 = distinct !DILexicalBlock(scope: !1876, file: !44, line: 708, column: 4)
!1975 = !DILocation(line: 708, column: 15, scope: !1972)
!1976 = !DILocation(line: 708, column: 5, scope: !1977)
!1977 = !DILexicalBlockFile(scope: !1978, file: !44, discriminator: 2)
!1978 = distinct !DILexicalBlock(scope: !1973, file: !44, line: 708, column: 3)
!1979 = !DILocation(line: 708, column: 14, scope: !1980)
!1980 = !DILexicalBlockFile(scope: !1981, file: !44, discriminator: 3)
!1981 = distinct !DILexicalBlock(scope: !1973, file: !44, line: 708, column: 12)
!1982 = !DILocation(line: 708, column: 99, scope: !1980)
!1983 = !DILocation(line: 708, column: 110, scope: !1984)
!1984 = !DILexicalBlockFile(scope: !1974, file: !44, discriminator: 4)
!1985 = !DILocation(line: 709, column: 2, scope: !1876)
!1986 = distinct !{!1986, !1985}
!1987 = !DILocation(line: 709, column: 10, scope: !1988)
!1988 = !DILexicalBlockFile(scope: !1989, file: !44, discriminator: 1)
!1989 = distinct !DILexicalBlock(scope: !1990, file: !44, line: 709, column: 10)
!1990 = distinct !DILexicalBlock(scope: !1876, file: !44, line: 709, column: 4)
!1991 = !DILocation(line: 709, column: 20, scope: !1988)
!1992 = !DILocation(line: 709, column: 5, scope: !1993)
!1993 = !DILexicalBlockFile(scope: !1994, file: !44, discriminator: 2)
!1994 = distinct !DILexicalBlock(scope: !1989, file: !44, line: 709, column: 3)
!1995 = !DILocation(line: 709, column: 14, scope: !1996)
!1996 = !DILexicalBlockFile(scope: !1997, file: !44, discriminator: 3)
!1997 = distinct !DILexicalBlock(scope: !1989, file: !44, line: 709, column: 12)
!1998 = !DILocation(line: 709, column: 104, scope: !1996)
!1999 = !DILocation(line: 709, column: 115, scope: !2000)
!2000 = !DILexicalBlockFile(scope: !1990, file: !44, discriminator: 4)
!2001 = !DILocation(line: 711, column: 11, scope: !1876)
!2002 = !DILocation(line: 711, column: 19, scope: !1876)
!2003 = !DILocation(line: 711, column: 9, scope: !1876)
!2004 = !DILocation(line: 712, column: 6, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1876, file: !44, line: 712, column: 6)
!2006 = !DILocation(line: 712, column: 13, scope: !2005)
!2007 = !DILocation(line: 712, column: 20, scope: !2005)
!2008 = !DILocation(line: 712, column: 23, scope: !2009)
!2009 = !DILexicalBlockFile(scope: !2005, file: !44, discriminator: 1)
!2010 = !DILocation(line: 712, column: 31, scope: !2009)
!2011 = !DILocation(line: 712, column: 6, scope: !2009)
!2012 = !DILocation(line: 713, column: 12, scope: !2005)
!2013 = !DILocation(line: 713, column: 21, scope: !2005)
!2014 = !DILocation(line: 713, column: 10, scope: !2005)
!2015 = !DILocation(line: 713, column: 3, scope: !2005)
!2016 = !DILocation(line: 715, column: 6, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1876, file: !44, line: 715, column: 6)
!2018 = !DILocation(line: 715, column: 13, scope: !2017)
!2019 = !DILocation(line: 715, column: 20, scope: !2017)
!2020 = !DILocation(line: 715, column: 25, scope: !2021)
!2021 = !DILexicalBlockFile(scope: !2017, file: !44, discriminator: 1)
!2022 = !DILocation(line: 715, column: 34, scope: !2021)
!2023 = !DILocation(line: 715, column: 44, scope: !2021)
!2024 = !DILocation(line: 715, column: 52, scope: !2021)
!2025 = !DILocation(line: 715, column: 24, scope: !2021)
!2026 = !DILocation(line: 715, column: 6, scope: !2021)
!2027 = !DILocation(line: 717, column: 35, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2017, file: !44, line: 715, column: 60)
!2029 = !DILocation(line: 717, column: 43, scope: !2028)
!2030 = !DILocation(line: 717, column: 58, scope: !2028)
!2031 = !DILocation(line: 717, column: 11, scope: !2028)
!2032 = !DILocation(line: 717, column: 4, scope: !2028)
!2033 = !DILocation(line: 717, column: 9, scope: !2028)
!2034 = !DILocation(line: 718, column: 8, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2028, file: !44, line: 718, column: 7)
!2036 = !DILocation(line: 718, column: 7, scope: !2035)
!2037 = !DILocation(line: 718, column: 13, scope: !2035)
!2038 = !DILocation(line: 718, column: 7, scope: !2028)
!2039 = !DILocation(line: 718, column: 21, scope: !2040)
!2040 = !DILexicalBlockFile(scope: !2035, file: !44, discriminator: 1)
!2041 = !DILocation(line: 719, column: 17, scope: !2028)
!2042 = !DILocation(line: 722, column: 11, scope: !1876)
!2043 = !DILocation(line: 722, column: 19, scope: !1876)
!2044 = !DILocation(line: 722, column: 9, scope: !1876)
!2045 = !DILocation(line: 723, column: 6, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !1876, file: !44, line: 723, column: 6)
!2047 = !DILocation(line: 723, column: 13, scope: !2046)
!2048 = !DILocation(line: 723, column: 20, scope: !2046)
!2049 = !DILocation(line: 723, column: 24, scope: !2050)
!2050 = !DILexicalBlockFile(scope: !2046, file: !44, discriminator: 1)
!2051 = !DILocation(line: 723, column: 32, scope: !2050)
!2052 = !DILocation(line: 723, column: 6, scope: !2050)
!2053 = !DILocation(line: 724, column: 3, scope: !2046)
!2054 = !DILocation(line: 726, column: 7, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !1876, file: !44, line: 726, column: 6)
!2056 = !DILocation(line: 726, column: 6, scope: !2055)
!2057 = !DILocation(line: 726, column: 17, scope: !2055)
!2058 = !DILocation(line: 726, column: 25, scope: !2055)
!2059 = !DILocation(line: 726, column: 29, scope: !2060)
!2060 = !DILexicalBlockFile(scope: !2055, file: !44, discriminator: 1)
!2061 = !DILocation(line: 726, column: 28, scope: !2060)
!2062 = !DILocation(line: 726, column: 34, scope: !2060)
!2063 = !DILocation(line: 726, column: 6, scope: !2060)
!2064 = !DILocation(line: 727, column: 8, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2066, file: !44, line: 727, column: 7)
!2066 = distinct !DILexicalBlock(scope: !2055, file: !44, line: 726, column: 43)
!2067 = !DILocation(line: 727, column: 7, scope: !2066)
!2068 = !DILocation(line: 728, column: 4, scope: !2065)
!2069 = !DILocation(line: 730, column: 52, scope: !2066)
!2070 = !DILocation(line: 730, column: 51, scope: !2066)
!2071 = !DILocation(line: 730, column: 26, scope: !2066)
!2072 = !DILocation(line: 730, column: 24, scope: !2066)
!2073 = !DILocation(line: 731, column: 26, scope: !2066)
!2074 = !DILocation(line: 731, column: 43, scope: !2066)
!2075 = !DILocation(line: 731, column: 11, scope: !2066)
!2076 = !DILocation(line: 731, column: 4, scope: !2066)
!2077 = !DILocation(line: 731, column: 9, scope: !2066)
!2078 = !DILocation(line: 732, column: 8, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2066, file: !44, line: 732, column: 7)
!2080 = !DILocation(line: 732, column: 7, scope: !2079)
!2081 = !DILocation(line: 732, column: 13, scope: !2079)
!2082 = !DILocation(line: 732, column: 7, scope: !2066)
!2083 = !DILocation(line: 733, column: 27, scope: !2079)
!2084 = !DILocation(line: 733, column: 26, scope: !2079)
!2085 = !DILocation(line: 733, column: 42, scope: !2079)
!2086 = !DILocation(line: 733, column: 33, scope: !2079)
!2087 = !DILocation(line: 733, column: 12, scope: !2088)
!2088 = !DILexicalBlockFile(scope: !2079, file: !44, discriminator: 1)
!2089 = !DILocation(line: 733, column: 5, scope: !2079)
!2090 = !DILocation(line: 733, column: 10, scope: !2079)
!2091 = !DILocation(line: 733, column: 4, scope: !2079)
!2092 = !DILocation(line: 734, column: 10, scope: !2066)
!2093 = !DILocation(line: 734, column: 3, scope: !2066)
!2094 = !DILocation(line: 736, column: 3, scope: !2066)
!2095 = !DILocation(line: 737, column: 3, scope: !2066)
!2096 = !DILocation(line: 740, column: 54, scope: !1876)
!2097 = !DILocation(line: 740, column: 62, scope: !1876)
!2098 = !DILocation(line: 740, column: 29, scope: !1876)
!2099 = !DILocation(line: 740, column: 13, scope: !1876)
!2100 = !DILocation(line: 740, column: 10, scope: !1876)
!2101 = !DILocation(line: 741, column: 50, scope: !1876)
!2102 = !DILocation(line: 741, column: 58, scope: !1876)
!2103 = !DILocation(line: 741, column: 25, scope: !1876)
!2104 = !DILocation(line: 741, column: 11, scope: !1876)
!2105 = !DILocation(line: 741, column: 8, scope: !1876)
!2106 = !DILocation(line: 742, column: 6, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !1876, file: !44, line: 742, column: 6)
!2108 = !DILocation(line: 742, column: 14, scope: !2107)
!2109 = !DILocation(line: 742, column: 21, scope: !2107)
!2110 = !DILocation(line: 742, column: 24, scope: !2111)
!2111 = !DILexicalBlockFile(scope: !2107, file: !44, discriminator: 1)
!2112 = !DILocation(line: 742, column: 30, scope: !2111)
!2113 = !DILocation(line: 742, column: 38, scope: !2111)
!2114 = !DILocation(line: 743, column: 26, scope: !2107)
!2115 = !DILocation(line: 743, column: 32, scope: !2107)
!2116 = !DILocation(line: 743, column: 39, scope: !2107)
!2117 = !DILocation(line: 743, column: 52, scope: !2107)
!2118 = !DILocation(line: 743, column: 45, scope: !2107)
!2119 = !DILocation(line: 743, column: 6, scope: !2111)
!2120 = !DILocation(line: 743, column: 59, scope: !2107)
!2121 = !DILocation(line: 742, column: 6, scope: !2122)
!2122 = !DILexicalBlockFile(scope: !1876, file: !44, discriminator: 2)
!2123 = !DILocation(line: 745, column: 40, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !2107, file: !44, line: 743, column: 65)
!2125 = !DILocation(line: 745, column: 39, scope: !2124)
!2126 = !DILocation(line: 745, column: 55, scope: !2124)
!2127 = !DILocation(line: 745, column: 62, scope: !2124)
!2128 = !DILocation(line: 745, column: 46, scope: !2124)
!2129 = !DILocation(line: 745, column: 25, scope: !2130)
!2130 = !DILexicalBlockFile(scope: !2124, file: !44, discriminator: 1)
!2131 = !DILocation(line: 745, column: 18, scope: !2124)
!2132 = !DILocation(line: 745, column: 23, scope: !2124)
!2133 = !DILocation(line: 746, column: 2, scope: !2124)
!2134 = !DILocation(line: 746, column: 13, scope: !2135)
!2135 = !DILexicalBlockFile(scope: !2136, file: !44, discriminator: 1)
!2136 = distinct !DILexicalBlock(scope: !2107, file: !44, line: 746, column: 13)
!2137 = !DILocation(line: 746, column: 21, scope: !2135)
!2138 = !DILocalVariable(name: "suffix", scope: !2139, file: !44, line: 749, type: !115)
!2139 = distinct !DILexicalBlock(scope: !2136, file: !44, line: 746, column: 29)
!2140 = !DILocation(line: 749, column: 15, scope: !2139)
!2141 = !DILocation(line: 749, column: 35, scope: !2139)
!2142 = !DILocation(line: 749, column: 24, scope: !2139)
!2143 = !DILocation(line: 749, column: 48, scope: !2144)
!2144 = !DILexicalBlockFile(scope: !2139, file: !44, discriminator: 1)
!2145 = !DILocation(line: 749, column: 24, scope: !2144)
!2146 = !DILocation(line: 749, column: 24, scope: !2147)
!2147 = !DILexicalBlockFile(scope: !2139, file: !44, discriminator: 2)
!2148 = !DILocation(line: 749, column: 24, scope: !2149)
!2149 = !DILexicalBlockFile(scope: !2139, file: !44, discriminator: 3)
!2150 = !DILocation(line: 749, column: 15, scope: !2149)
!2151 = !DILocation(line: 750, column: 25, scope: !2139)
!2152 = !DILocation(line: 750, column: 31, scope: !2139)
!2153 = !DILocation(line: 750, column: 39, scope: !2139)
!2154 = !DILocation(line: 750, column: 45, scope: !2139)
!2155 = !DILocation(line: 750, column: 3, scope: !2139)
!2156 = !DILocation(line: 751, column: 2, scope: !2139)
!2157 = !DILocation(line: 751, column: 13, scope: !2158)
!2158 = !DILexicalBlockFile(scope: !2159, file: !44, discriminator: 1)
!2159 = distinct !DILexicalBlock(scope: !2136, file: !44, line: 751, column: 13)
!2160 = !DILocation(line: 751, column: 21, scope: !2158)
!2161 = !DILocation(line: 751, column: 27, scope: !2158)
!2162 = !DILocation(line: 753, column: 54, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2159, file: !44, line: 751, column: 44)
!2164 = !DILocation(line: 753, column: 67, scope: !2163)
!2165 = !DILocation(line: 753, column: 39, scope: !2163)
!2166 = !DILocation(line: 753, column: 81, scope: !2163)
!2167 = !DILocation(line: 753, column: 80, scope: !2163)
!2168 = !DILocation(line: 753, column: 25, scope: !2169)
!2169 = !DILexicalBlockFile(scope: !2163, file: !44, discriminator: 1)
!2170 = !DILocation(line: 753, column: 18, scope: !2163)
!2171 = !DILocation(line: 753, column: 23, scope: !2163)
!2172 = !DILocation(line: 754, column: 2, scope: !2163)
!2173 = !DILocation(line: 756, column: 7, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !1876, file: !44, line: 756, column: 6)
!2175 = !DILocation(line: 756, column: 6, scope: !2174)
!2176 = !DILocation(line: 756, column: 12, scope: !2174)
!2177 = !DILocation(line: 756, column: 6, scope: !1876)
!2178 = !DILocation(line: 756, column: 20, scope: !2179)
!2179 = !DILexicalBlockFile(scope: !2174, file: !44, discriminator: 1)
!2180 = !DILocation(line: 757, column: 1, scope: !1876)
!2181 = distinct !DISubprogram(name: "sig_complete_msg", scope: !44, file: !44, line: 778, type: !1877, isLocal: true, isDefinition: true, scopeLine: 781, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!2182 = !DILocalVariable(name: "list", arg: 1, scope: !2181, file: !44, line: 778, type: !1879)
!2183 = !DILocation(line: 778, column: 38, scope: !2181)
!2184 = !DILocalVariable(name: "window", arg: 2, scope: !2181, file: !44, line: 778, type: !1880)
!2185 = !DILocation(line: 778, column: 56, scope: !2181)
!2186 = !DILocalVariable(name: "word", arg: 3, scope: !2181, file: !44, line: 779, type: !115)
!2187 = !DILocation(line: 779, column: 21, scope: !2181)
!2188 = !DILocalVariable(name: "line", arg: 4, scope: !2181, file: !44, line: 779, type: !115)
!2189 = !DILocation(line: 779, column: 39, scope: !2181)
!2190 = !DILocalVariable(name: "want_space", arg: 5, scope: !2181, file: !44, line: 780, type: !1918)
!2191 = !DILocation(line: 780, column: 14, scope: !2181)
!2192 = !DILocalVariable(name: "server", scope: !2181, file: !44, line: 782, type: !174)
!2193 = !DILocation(line: 782, column: 14, scope: !2181)
!2194 = !DILocalVariable(name: "msgserver", scope: !2181, file: !44, line: 782, type: !174)
!2195 = !DILocation(line: 782, column: 23, scope: !2181)
!2196 = !DILocation(line: 784, column: 2, scope: !2181)
!2197 = distinct !{!2197, !2196}
!2198 = !DILocation(line: 784, column: 10, scope: !2199)
!2199 = !DILexicalBlockFile(scope: !2200, file: !44, discriminator: 1)
!2200 = distinct !DILexicalBlock(scope: !2201, file: !44, line: 784, column: 10)
!2201 = distinct !DILexicalBlock(scope: !2181, file: !44, line: 784, column: 4)
!2202 = !DILocation(line: 784, column: 15, scope: !2199)
!2203 = !DILocation(line: 784, column: 5, scope: !2204)
!2204 = !DILexicalBlockFile(scope: !2205, file: !44, discriminator: 2)
!2205 = distinct !DILexicalBlock(scope: !2200, file: !44, line: 784, column: 3)
!2206 = !DILocation(line: 784, column: 14, scope: !2207)
!2207 = !DILexicalBlockFile(scope: !2208, file: !44, discriminator: 3)
!2208 = distinct !DILexicalBlock(scope: !2200, file: !44, line: 784, column: 12)
!2209 = !DILocation(line: 784, column: 99, scope: !2207)
!2210 = !DILocation(line: 784, column: 110, scope: !2211)
!2211 = !DILexicalBlockFile(scope: !2201, file: !44, discriminator: 4)
!2212 = !DILocation(line: 785, column: 2, scope: !2181)
!2213 = distinct !{!2213, !2212}
!2214 = !DILocation(line: 785, column: 10, scope: !2215)
!2215 = !DILexicalBlockFile(scope: !2216, file: !44, discriminator: 1)
!2216 = distinct !DILexicalBlock(scope: !2217, file: !44, line: 785, column: 10)
!2217 = distinct !DILexicalBlock(scope: !2181, file: !44, line: 785, column: 4)
!2218 = !DILocation(line: 785, column: 15, scope: !2215)
!2219 = !DILocation(line: 785, column: 5, scope: !2220)
!2220 = !DILexicalBlockFile(scope: !2221, file: !44, discriminator: 2)
!2221 = distinct !DILexicalBlock(scope: !2216, file: !44, line: 785, column: 3)
!2222 = !DILocation(line: 785, column: 14, scope: !2223)
!2223 = !DILexicalBlockFile(scope: !2224, file: !44, discriminator: 3)
!2224 = distinct !DILexicalBlock(scope: !2216, file: !44, line: 785, column: 12)
!2225 = !DILocation(line: 785, column: 99, scope: !2223)
!2226 = !DILocation(line: 785, column: 110, scope: !2227)
!2227 = !DILexicalBlockFile(scope: !2217, file: !44, discriminator: 4)
!2228 = !DILocation(line: 786, column: 2, scope: !2181)
!2229 = distinct !{!2229, !2228}
!2230 = !DILocation(line: 786, column: 10, scope: !2231)
!2231 = !DILexicalBlockFile(scope: !2232, file: !44, discriminator: 1)
!2232 = distinct !DILexicalBlock(scope: !2233, file: !44, line: 786, column: 10)
!2233 = distinct !DILexicalBlock(scope: !2181, file: !44, line: 786, column: 4)
!2234 = !DILocation(line: 786, column: 15, scope: !2231)
!2235 = !DILocation(line: 786, column: 5, scope: !2236)
!2236 = !DILexicalBlockFile(scope: !2237, file: !44, discriminator: 2)
!2237 = distinct !DILexicalBlock(scope: !2232, file: !44, line: 786, column: 3)
!2238 = !DILocation(line: 786, column: 14, scope: !2239)
!2239 = !DILexicalBlockFile(scope: !2240, file: !44, discriminator: 3)
!2240 = distinct !DILexicalBlock(scope: !2232, file: !44, line: 786, column: 12)
!2241 = !DILocation(line: 786, column: 99, scope: !2239)
!2242 = !DILocation(line: 786, column: 110, scope: !2243)
!2243 = !DILexicalBlockFile(scope: !2233, file: !44, discriminator: 4)
!2244 = !DILocation(line: 788, column: 11, scope: !2181)
!2245 = !DILocation(line: 788, column: 19, scope: !2181)
!2246 = !DILocation(line: 788, column: 9, scope: !2181)
!2247 = !DILocation(line: 789, column: 6, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2181, file: !44, line: 789, column: 6)
!2249 = !DILocation(line: 789, column: 13, scope: !2248)
!2250 = !DILocation(line: 789, column: 20, scope: !2248)
!2251 = !DILocation(line: 789, column: 24, scope: !2252)
!2252 = !DILexicalBlockFile(scope: !2248, file: !44, discriminator: 1)
!2253 = !DILocation(line: 789, column: 32, scope: !2252)
!2254 = !DILocation(line: 789, column: 6, scope: !2252)
!2255 = !DILocation(line: 790, column: 3, scope: !2248)
!2256 = !DILocation(line: 792, column: 30, scope: !2181)
!2257 = !DILocation(line: 792, column: 14, scope: !2181)
!2258 = !DILocation(line: 792, column: 12, scope: !2181)
!2259 = !DILocation(line: 793, column: 25, scope: !2181)
!2260 = !DILocation(line: 793, column: 33, scope: !2181)
!2261 = !DILocation(line: 793, column: 44, scope: !2181)
!2262 = !DILocation(line: 793, column: 10, scope: !2181)
!2263 = !DILocation(line: 793, column: 3, scope: !2181)
!2264 = !DILocation(line: 793, column: 8, scope: !2181)
!2265 = !DILocation(line: 794, column: 48, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2181, file: !44, line: 794, column: 6)
!2267 = !DILocation(line: 794, column: 56, scope: !2266)
!2268 = !DILocation(line: 794, column: 23, scope: !2266)
!2269 = !DILocation(line: 794, column: 7, scope: !2266)
!2270 = !DILocation(line: 794, column: 39, scope: !2266)
!2271 = !DILocation(line: 794, column: 6, scope: !2181)
!2272 = !DILocation(line: 795, column: 25, scope: !2266)
!2273 = !DILocation(line: 795, column: 31, scope: !2266)
!2274 = !DILocation(line: 795, column: 39, scope: !2266)
!2275 = !DILocation(line: 795, column: 3, scope: !2266)
!2276 = !DILocation(line: 796, column: 7, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2181, file: !44, line: 796, column: 6)
!2278 = !DILocation(line: 796, column: 6, scope: !2277)
!2279 = !DILocation(line: 796, column: 12, scope: !2277)
!2280 = !DILocation(line: 796, column: 6, scope: !2181)
!2281 = !DILocation(line: 796, column: 20, scope: !2282)
!2282 = !DILexicalBlockFile(scope: !2277, file: !44, discriminator: 1)
!2283 = !DILocation(line: 797, column: 1, scope: !2181)
!2284 = distinct !DISubprogram(name: "sig_erase_complete_msg", scope: !44, file: !44, line: 799, type: !2285, isLocal: true, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{null, !1880, !115, !115}
!2287 = !DILocalVariable(name: "window", arg: 1, scope: !2284, file: !44, line: 799, type: !1880)
!2288 = !DILocation(line: 799, column: 48, scope: !2284)
!2289 = !DILocalVariable(name: "word", arg: 2, scope: !2284, file: !44, line: 799, type: !115)
!2290 = !DILocation(line: 799, column: 68, scope: !2284)
!2291 = !DILocalVariable(name: "line", arg: 3, scope: !2284, file: !44, line: 800, type: !115)
!2292 = !DILocation(line: 800, column: 20, scope: !2284)
!2293 = !DILocalVariable(name: "server", scope: !2284, file: !44, line: 802, type: !174)
!2294 = !DILocation(line: 802, column: 14, scope: !2284)
!2295 = !DILocalVariable(name: "mserver", scope: !2284, file: !44, line: 803, type: !139)
!2296 = !DILocation(line: 803, column: 21, scope: !2284)
!2297 = !DILocalVariable(name: "tmp", scope: !2284, file: !44, line: 804, type: !144)
!2298 = !DILocation(line: 804, column: 17, scope: !2284)
!2299 = !DILocation(line: 806, column: 27, scope: !2284)
!2300 = !DILocation(line: 806, column: 11, scope: !2284)
!2301 = !DILocation(line: 806, column: 9, scope: !2284)
!2302 = !DILocation(line: 807, column: 6, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2284, file: !44, line: 807, column: 6)
!2304 = !DILocation(line: 807, column: 13, scope: !2303)
!2305 = !DILocation(line: 807, column: 6, scope: !2284)
!2306 = !DILocation(line: 808, column: 12, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2303, file: !44, line: 807, column: 20)
!2308 = !DILocation(line: 808, column: 20, scope: !2307)
!2309 = !DILocation(line: 808, column: 10, scope: !2307)
!2310 = !DILocation(line: 809, column: 7, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2307, file: !44, line: 809, column: 7)
!2312 = !DILocation(line: 809, column: 14, scope: !2311)
!2313 = !DILocation(line: 809, column: 7, scope: !2307)
!2314 = !DILocation(line: 810, column: 25, scope: !2311)
!2315 = !DILocation(line: 811, column: 2, scope: !2307)
!2316 = !DILocation(line: 813, column: 7, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2284, file: !44, line: 813, column: 6)
!2318 = !DILocation(line: 813, column: 6, scope: !2317)
!2319 = !DILocation(line: 813, column: 12, scope: !2317)
!2320 = !DILocation(line: 813, column: 6, scope: !2284)
!2321 = !DILocation(line: 814, column: 3, scope: !2317)
!2322 = !DILocation(line: 817, column: 33, scope: !2284)
!2323 = !DILocation(line: 817, column: 2, scope: !2284)
!2324 = !DILocation(line: 820, column: 6, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2284, file: !44, line: 820, column: 6)
!2326 = !DILocation(line: 820, column: 13, scope: !2325)
!2327 = !DILocation(line: 820, column: 6, scope: !2284)
!2328 = !DILocation(line: 821, column: 34, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !2325, file: !44, line: 820, column: 21)
!2330 = !DILocation(line: 821, column: 43, scope: !2329)
!2331 = !DILocation(line: 821, column: 13, scope: !2329)
!2332 = !DILocation(line: 821, column: 11, scope: !2329)
!2333 = !DILocation(line: 822, column: 14, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2329, file: !44, line: 822, column: 3)
!2335 = !DILocation(line: 822, column: 23, scope: !2334)
!2336 = !DILocation(line: 822, column: 12, scope: !2334)
!2337 = !DILocation(line: 822, column: 8, scope: !2334)
!2338 = !DILocation(line: 822, column: 33, scope: !2339)
!2339 = !DILexicalBlockFile(scope: !2340, file: !44, discriminator: 1)
!2340 = distinct !DILexicalBlock(scope: !2334, file: !44, line: 822, column: 3)
!2341 = !DILocation(line: 822, column: 37, scope: !2339)
!2342 = !DILocation(line: 822, column: 3, scope: !2339)
!2343 = !DILocalVariable(name: "rec", scope: !2344, file: !44, line: 823, type: !124)
!2344 = distinct !DILexicalBlock(scope: !2340, file: !44, line: 822, column: 62)
!2345 = !DILocation(line: 823, column: 18, scope: !2344)
!2346 = !DILocation(line: 823, column: 24, scope: !2344)
!2347 = !DILocation(line: 823, column: 29, scope: !2344)
!2348 = !DILocation(line: 825, column: 27, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2344, file: !44, line: 825, column: 8)
!2350 = !DILocation(line: 825, column: 32, scope: !2349)
!2351 = !DILocation(line: 825, column: 38, scope: !2349)
!2352 = !DILocation(line: 825, column: 8, scope: !2349)
!2353 = !DILocation(line: 825, column: 44, scope: !2349)
!2354 = !DILocation(line: 825, column: 8, scope: !2344)
!2355 = !DILocation(line: 826, column: 23, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2349, file: !44, line: 825, column: 50)
!2357 = !DILocation(line: 826, column: 32, scope: !2356)
!2358 = !DILocation(line: 826, column: 42, scope: !2356)
!2359 = !DILocation(line: 826, column: 5, scope: !2356)
!2360 = !DILocation(line: 827, column: 33, scope: !2356)
!2361 = !DILocation(line: 829, column: 3, scope: !2344)
!2362 = !DILocation(line: 822, column: 51, scope: !2363)
!2363 = !DILexicalBlockFile(scope: !2340, file: !44, discriminator: 2)
!2364 = !DILocation(line: 822, column: 56, scope: !2363)
!2365 = !DILocation(line: 822, column: 49, scope: !2363)
!2366 = !DILocation(line: 822, column: 3, scope: !2363)
!2367 = distinct !{!2367, !2368}
!2368 = !DILocation(line: 822, column: 3, scope: !2329)
!2369 = !DILocation(line: 831, column: 2, scope: !2329)
!2370 = !DILocation(line: 832, column: 1, scope: !2284)
!2371 = distinct !DISubprogram(name: "sig_complete_connect", scope: !44, file: !44, line: 906, type: !1877, isLocal: true, isDefinition: true, scopeLine: 909, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!2372 = !DILocalVariable(name: "list", arg: 1, scope: !2371, file: !44, line: 906, type: !1879)
!2373 = !DILocation(line: 906, column: 42, scope: !2371)
!2374 = !DILocalVariable(name: "window", arg: 2, scope: !2371, file: !44, line: 906, type: !1880)
!2375 = !DILocation(line: 906, column: 60, scope: !2371)
!2376 = !DILocalVariable(name: "word", arg: 3, scope: !2371, file: !44, line: 907, type: !115)
!2377 = !DILocation(line: 907, column: 18, scope: !2371)
!2378 = !DILocalVariable(name: "line", arg: 4, scope: !2371, file: !44, line: 907, type: !115)
!2379 = !DILocation(line: 907, column: 36, scope: !2371)
!2380 = !DILocalVariable(name: "want_space", arg: 5, scope: !2371, file: !44, line: 908, type: !1918)
!2381 = !DILocation(line: 908, column: 11, scope: !2371)
!2382 = !DILocation(line: 910, column: 2, scope: !2371)
!2383 = distinct !{!2383, !2382}
!2384 = !DILocation(line: 910, column: 10, scope: !2385)
!2385 = !DILexicalBlockFile(scope: !2386, file: !44, discriminator: 1)
!2386 = distinct !DILexicalBlock(scope: !2387, file: !44, line: 910, column: 10)
!2387 = distinct !DILexicalBlock(scope: !2371, file: !44, line: 910, column: 4)
!2388 = !DILocation(line: 910, column: 15, scope: !2385)
!2389 = !DILocation(line: 910, column: 5, scope: !2390)
!2390 = !DILexicalBlockFile(scope: !2391, file: !44, discriminator: 2)
!2391 = distinct !DILexicalBlock(scope: !2386, file: !44, line: 910, column: 3)
!2392 = !DILocation(line: 910, column: 14, scope: !2393)
!2393 = !DILexicalBlockFile(scope: !2394, file: !44, discriminator: 3)
!2394 = distinct !DILexicalBlock(scope: !2386, file: !44, line: 910, column: 12)
!2395 = !DILocation(line: 910, column: 99, scope: !2393)
!2396 = !DILocation(line: 910, column: 110, scope: !2397)
!2397 = !DILexicalBlockFile(scope: !2387, file: !44, discriminator: 4)
!2398 = !DILocation(line: 911, column: 2, scope: !2371)
!2399 = distinct !{!2399, !2398}
!2400 = !DILocation(line: 911, column: 10, scope: !2401)
!2401 = !DILexicalBlockFile(scope: !2402, file: !44, discriminator: 1)
!2402 = distinct !DILexicalBlock(scope: !2403, file: !44, line: 911, column: 10)
!2403 = distinct !DILexicalBlock(scope: !2371, file: !44, line: 911, column: 4)
!2404 = !DILocation(line: 911, column: 15, scope: !2401)
!2405 = !DILocation(line: 911, column: 5, scope: !2406)
!2406 = !DILexicalBlockFile(scope: !2407, file: !44, discriminator: 2)
!2407 = distinct !DILexicalBlock(scope: !2402, file: !44, line: 911, column: 3)
!2408 = !DILocation(line: 911, column: 14, scope: !2409)
!2409 = !DILexicalBlockFile(scope: !2410, file: !44, discriminator: 3)
!2410 = distinct !DILexicalBlock(scope: !2402, file: !44, line: 911, column: 12)
!2411 = !DILocation(line: 911, column: 99, scope: !2409)
!2412 = !DILocation(line: 911, column: 110, scope: !2413)
!2413 = !DILexicalBlockFile(scope: !2403, file: !44, discriminator: 4)
!2414 = !DILocation(line: 913, column: 34, scope: !2371)
!2415 = !DILocation(line: 913, column: 10, scope: !2371)
!2416 = !DILocation(line: 913, column: 3, scope: !2371)
!2417 = !DILocation(line: 913, column: 8, scope: !2371)
!2418 = !DILocation(line: 914, column: 25, scope: !2371)
!2419 = !DILocation(line: 914, column: 24, scope: !2371)
!2420 = !DILocation(line: 914, column: 54, scope: !2371)
!2421 = !DILocation(line: 914, column: 31, scope: !2371)
!2422 = !DILocation(line: 914, column: 10, scope: !2423)
!2423 = !DILexicalBlockFile(scope: !2371, file: !44, discriminator: 1)
!2424 = !DILocation(line: 914, column: 3, scope: !2371)
!2425 = !DILocation(line: 914, column: 8, scope: !2371)
!2426 = !DILocation(line: 915, column: 7, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2371, file: !44, line: 915, column: 6)
!2428 = !DILocation(line: 915, column: 6, scope: !2427)
!2429 = !DILocation(line: 915, column: 12, scope: !2427)
!2430 = !DILocation(line: 915, column: 6, scope: !2371)
!2431 = !DILocation(line: 915, column: 20, scope: !2432)
!2432 = !DILexicalBlockFile(scope: !2427, file: !44, discriminator: 1)
!2433 = !DILocation(line: 916, column: 1, scope: !2371)
!2434 = distinct !DISubprogram(name: "sig_complete_tag", scope: !44, file: !44, line: 918, type: !1877, isLocal: true, isDefinition: true, scopeLine: 921, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!2435 = !DILocalVariable(name: "list", arg: 1, scope: !2434, file: !44, line: 918, type: !1879)
!2436 = !DILocation(line: 918, column: 38, scope: !2434)
!2437 = !DILocalVariable(name: "window", arg: 2, scope: !2434, file: !44, line: 918, type: !1880)
!2438 = !DILocation(line: 918, column: 56, scope: !2434)
!2439 = !DILocalVariable(name: "word", arg: 3, scope: !2434, file: !44, line: 919, type: !115)
!2440 = !DILocation(line: 919, column: 21, scope: !2434)
!2441 = !DILocalVariable(name: "line", arg: 4, scope: !2434, file: !44, line: 919, type: !115)
!2442 = !DILocation(line: 919, column: 39, scope: !2434)
!2443 = !DILocalVariable(name: "want_space", arg: 5, scope: !2434, file: !44, line: 920, type: !1918)
!2444 = !DILocation(line: 920, column: 14, scope: !2434)
!2445 = !DILocation(line: 922, column: 2, scope: !2434)
!2446 = distinct !{!2446, !2445}
!2447 = !DILocation(line: 922, column: 10, scope: !2448)
!2448 = !DILexicalBlockFile(scope: !2449, file: !44, discriminator: 1)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !44, line: 922, column: 10)
!2450 = distinct !DILexicalBlock(scope: !2434, file: !44, line: 922, column: 4)
!2451 = !DILocation(line: 922, column: 15, scope: !2448)
!2452 = !DILocation(line: 922, column: 5, scope: !2453)
!2453 = !DILexicalBlockFile(scope: !2454, file: !44, discriminator: 2)
!2454 = distinct !DILexicalBlock(scope: !2449, file: !44, line: 922, column: 3)
!2455 = !DILocation(line: 922, column: 14, scope: !2456)
!2456 = !DILexicalBlockFile(scope: !2457, file: !44, discriminator: 3)
!2457 = distinct !DILexicalBlock(scope: !2449, file: !44, line: 922, column: 12)
!2458 = !DILocation(line: 922, column: 99, scope: !2456)
!2459 = !DILocation(line: 922, column: 110, scope: !2460)
!2460 = !DILexicalBlockFile(scope: !2450, file: !44, discriminator: 4)
!2461 = !DILocation(line: 923, column: 2, scope: !2434)
!2462 = distinct !{!2462, !2461}
!2463 = !DILocation(line: 923, column: 10, scope: !2464)
!2464 = !DILexicalBlockFile(scope: !2465, file: !44, discriminator: 1)
!2465 = distinct !DILexicalBlock(scope: !2466, file: !44, line: 923, column: 10)
!2466 = distinct !DILexicalBlock(scope: !2434, file: !44, line: 923, column: 4)
!2467 = !DILocation(line: 923, column: 15, scope: !2464)
!2468 = !DILocation(line: 923, column: 5, scope: !2469)
!2469 = !DILexicalBlockFile(scope: !2470, file: !44, discriminator: 2)
!2470 = distinct !DILexicalBlock(scope: !2465, file: !44, line: 923, column: 3)
!2471 = !DILocation(line: 923, column: 14, scope: !2472)
!2472 = !DILexicalBlockFile(scope: !2473, file: !44, discriminator: 3)
!2473 = distinct !DILexicalBlock(scope: !2465, file: !44, line: 923, column: 12)
!2474 = !DILocation(line: 923, column: 99, scope: !2472)
!2475 = !DILocation(line: 923, column: 110, scope: !2476)
!2476 = !DILexicalBlockFile(scope: !2466, file: !44, discriminator: 4)
!2477 = !DILocation(line: 925, column: 36, scope: !2434)
!2478 = !DILocation(line: 925, column: 10, scope: !2434)
!2479 = !DILocation(line: 925, column: 3, scope: !2434)
!2480 = !DILocation(line: 925, column: 8, scope: !2434)
!2481 = !DILocation(line: 926, column: 7, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2434, file: !44, line: 926, column: 6)
!2483 = !DILocation(line: 926, column: 6, scope: !2482)
!2484 = !DILocation(line: 926, column: 12, scope: !2482)
!2485 = !DILocation(line: 926, column: 6, scope: !2434)
!2486 = !DILocation(line: 926, column: 20, scope: !2487)
!2487 = !DILexicalBlockFile(scope: !2482, file: !44, discriminator: 1)
!2488 = !DILocation(line: 927, column: 1, scope: !2434)
!2489 = distinct !DISubprogram(name: "sig_complete_topic", scope: !44, file: !44, line: 929, type: !1877, isLocal: true, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!2490 = !DILocalVariable(name: "list", arg: 1, scope: !2489, file: !44, line: 929, type: !1879)
!2491 = !DILocation(line: 929, column: 40, scope: !2489)
!2492 = !DILocalVariable(name: "window", arg: 2, scope: !2489, file: !44, line: 929, type: !1880)
!2493 = !DILocation(line: 929, column: 58, scope: !2489)
!2494 = !DILocalVariable(name: "word", arg: 3, scope: !2489, file: !44, line: 930, type: !115)
!2495 = !DILocation(line: 930, column: 23, scope: !2489)
!2496 = !DILocalVariable(name: "line", arg: 4, scope: !2489, file: !44, line: 930, type: !115)
!2497 = !DILocation(line: 930, column: 41, scope: !2489)
!2498 = !DILocalVariable(name: "want_space", arg: 5, scope: !2489, file: !44, line: 931, type: !1918)
!2499 = !DILocation(line: 931, column: 16, scope: !2489)
!2500 = !DILocalVariable(name: "topic", scope: !2489, file: !44, line: 933, type: !115)
!2501 = !DILocation(line: 933, column: 14, scope: !2489)
!2502 = !DILocation(line: 935, column: 2, scope: !2489)
!2503 = distinct !{!2503, !2502}
!2504 = !DILocation(line: 935, column: 10, scope: !2505)
!2505 = !DILexicalBlockFile(scope: !2506, file: !44, discriminator: 1)
!2506 = distinct !DILexicalBlock(scope: !2507, file: !44, line: 935, column: 10)
!2507 = distinct !DILexicalBlock(scope: !2489, file: !44, line: 935, column: 4)
!2508 = !DILocation(line: 935, column: 15, scope: !2505)
!2509 = !DILocation(line: 935, column: 5, scope: !2510)
!2510 = !DILexicalBlockFile(scope: !2511, file: !44, discriminator: 2)
!2511 = distinct !DILexicalBlock(scope: !2506, file: !44, line: 935, column: 3)
!2512 = !DILocation(line: 935, column: 14, scope: !2513)
!2513 = !DILexicalBlockFile(scope: !2514, file: !44, discriminator: 3)
!2514 = distinct !DILexicalBlock(scope: !2506, file: !44, line: 935, column: 12)
!2515 = !DILocation(line: 935, column: 99, scope: !2513)
!2516 = !DILocation(line: 935, column: 110, scope: !2517)
!2517 = !DILexicalBlockFile(scope: !2507, file: !44, discriminator: 4)
!2518 = !DILocation(line: 936, column: 2, scope: !2489)
!2519 = distinct !{!2519, !2518}
!2520 = !DILocation(line: 936, column: 10, scope: !2521)
!2521 = !DILexicalBlockFile(scope: !2522, file: !44, discriminator: 1)
!2522 = distinct !DILexicalBlock(scope: !2523, file: !44, line: 936, column: 10)
!2523 = distinct !DILexicalBlock(scope: !2489, file: !44, line: 936, column: 4)
!2524 = !DILocation(line: 936, column: 15, scope: !2521)
!2525 = !DILocation(line: 936, column: 5, scope: !2526)
!2526 = !DILexicalBlockFile(scope: !2527, file: !44, discriminator: 2)
!2527 = distinct !DILexicalBlock(scope: !2522, file: !44, line: 936, column: 3)
!2528 = !DILocation(line: 936, column: 14, scope: !2529)
!2529 = !DILexicalBlockFile(scope: !2530, file: !44, discriminator: 3)
!2530 = distinct !DILexicalBlock(scope: !2522, file: !44, line: 936, column: 12)
!2531 = !DILocation(line: 936, column: 99, scope: !2529)
!2532 = !DILocation(line: 936, column: 110, scope: !2533)
!2533 = !DILexicalBlockFile(scope: !2523, file: !44, discriminator: 4)
!2534 = !DILocation(line: 938, column: 7, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2489, file: !44, line: 938, column: 6)
!2536 = !DILocation(line: 938, column: 6, scope: !2535)
!2537 = !DILocation(line: 938, column: 12, scope: !2535)
!2538 = !DILocation(line: 938, column: 20, scope: !2535)
!2539 = !DILocation(line: 938, column: 66, scope: !2540)
!2540 = !DILexicalBlockFile(scope: !2535, file: !44, discriminator: 1)
!2541 = !DILocation(line: 938, column: 74, scope: !2540)
!2542 = !DILocation(line: 938, column: 41, scope: !2540)
!2543 = !DILocation(line: 938, column: 25, scope: !2540)
!2544 = !DILocation(line: 938, column: 6, scope: !2540)
!2545 = !DILocation(line: 938, column: 24, scope: !2546)
!2546 = !DILexicalBlockFile(scope: !2535, file: !44, discriminator: 2)
!2547 = !DILocation(line: 938, column: 6, scope: !2548)
!2548 = !DILexicalBlockFile(scope: !2489, file: !44, discriminator: 3)
!2549 = !DILocation(line: 939, column: 53, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2535, file: !44, line: 938, column: 73)
!2551 = !DILocation(line: 939, column: 61, scope: !2550)
!2552 = !DILocation(line: 939, column: 28, scope: !2550)
!2553 = !DILocation(line: 939, column: 12, scope: !2550)
!2554 = !DILocation(line: 939, column: 45, scope: !2550)
!2555 = !DILocation(line: 939, column: 9, scope: !2550)
!2556 = !DILocation(line: 940, column: 7, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2550, file: !44, line: 940, column: 7)
!2558 = !DILocation(line: 940, column: 13, scope: !2557)
!2559 = !DILocation(line: 940, column: 7, scope: !2550)
!2560 = !DILocation(line: 941, column: 40, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2557, file: !44, line: 940, column: 21)
!2562 = !DILocation(line: 941, column: 31, scope: !2561)
!2563 = !DILocation(line: 941, column: 12, scope: !2564)
!2564 = !DILexicalBlockFile(scope: !2561, file: !44, discriminator: 1)
!2565 = !DILocation(line: 941, column: 5, scope: !2561)
!2566 = !DILocation(line: 941, column: 10, scope: !2561)
!2567 = !DILocation(line: 942, column: 25, scope: !2561)
!2568 = !DILocation(line: 943, column: 3, scope: !2561)
!2569 = !DILocation(line: 944, column: 2, scope: !2550)
!2570 = !DILocation(line: 945, column: 1, scope: !2489)
!2571 = distinct !DISubprogram(name: "sig_complete_away", scope: !44, file: !44, line: 947, type: !1877, isLocal: true, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!2572 = !DILocalVariable(name: "list", arg: 1, scope: !2571, file: !44, line: 947, type: !1879)
!2573 = !DILocation(line: 947, column: 39, scope: !2571)
!2574 = !DILocalVariable(name: "window", arg: 2, scope: !2571, file: !44, line: 947, type: !1880)
!2575 = !DILocation(line: 947, column: 57, scope: !2571)
!2576 = !DILocalVariable(name: "word", arg: 3, scope: !2571, file: !44, line: 948, type: !115)
!2577 = !DILocation(line: 948, column: 23, scope: !2571)
!2578 = !DILocalVariable(name: "line", arg: 4, scope: !2571, file: !44, line: 948, type: !115)
!2579 = !DILocation(line: 948, column: 41, scope: !2571)
!2580 = !DILocalVariable(name: "want_space", arg: 5, scope: !2571, file: !44, line: 949, type: !1918)
!2581 = !DILocation(line: 949, column: 16, scope: !2571)
!2582 = !DILocalVariable(name: "reason", scope: !2571, file: !44, line: 951, type: !115)
!2583 = !DILocation(line: 951, column: 14, scope: !2571)
!2584 = !DILocation(line: 953, column: 2, scope: !2571)
!2585 = distinct !{!2585, !2584}
!2586 = !DILocation(line: 953, column: 10, scope: !2587)
!2587 = !DILexicalBlockFile(scope: !2588, file: !44, discriminator: 1)
!2588 = distinct !DILexicalBlock(scope: !2589, file: !44, line: 953, column: 10)
!2589 = distinct !DILexicalBlock(scope: !2571, file: !44, line: 953, column: 4)
!2590 = !DILocation(line: 953, column: 15, scope: !2587)
!2591 = !DILocation(line: 953, column: 5, scope: !2592)
!2592 = !DILexicalBlockFile(scope: !2593, file: !44, discriminator: 2)
!2593 = distinct !DILexicalBlock(scope: !2588, file: !44, line: 953, column: 3)
!2594 = !DILocation(line: 953, column: 14, scope: !2595)
!2595 = !DILexicalBlockFile(scope: !2596, file: !44, discriminator: 3)
!2596 = distinct !DILexicalBlock(scope: !2588, file: !44, line: 953, column: 12)
!2597 = !DILocation(line: 953, column: 99, scope: !2595)
!2598 = !DILocation(line: 953, column: 110, scope: !2599)
!2599 = !DILexicalBlockFile(scope: !2589, file: !44, discriminator: 4)
!2600 = !DILocation(line: 954, column: 2, scope: !2571)
!2601 = distinct !{!2601, !2600}
!2602 = !DILocation(line: 954, column: 10, scope: !2603)
!2603 = !DILexicalBlockFile(scope: !2604, file: !44, discriminator: 1)
!2604 = distinct !DILexicalBlock(scope: !2605, file: !44, line: 954, column: 10)
!2605 = distinct !DILexicalBlock(scope: !2571, file: !44, line: 954, column: 4)
!2606 = !DILocation(line: 954, column: 15, scope: !2603)
!2607 = !DILocation(line: 954, column: 5, scope: !2608)
!2608 = !DILexicalBlockFile(scope: !2609, file: !44, discriminator: 2)
!2609 = distinct !DILexicalBlock(scope: !2604, file: !44, line: 954, column: 3)
!2610 = !DILocation(line: 954, column: 14, scope: !2611)
!2611 = !DILexicalBlockFile(scope: !2612, file: !44, discriminator: 3)
!2612 = distinct !DILexicalBlock(scope: !2604, file: !44, line: 954, column: 12)
!2613 = !DILocation(line: 954, column: 99, scope: !2611)
!2614 = !DILocation(line: 954, column: 110, scope: !2615)
!2615 = !DILexicalBlockFile(scope: !2605, file: !44, discriminator: 4)
!2616 = !DILocation(line: 956, column: 10, scope: !2571)
!2617 = !DILocation(line: 956, column: 21, scope: !2571)
!2618 = !DILocation(line: 958, column: 7, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2571, file: !44, line: 958, column: 6)
!2620 = !DILocation(line: 958, column: 6, scope: !2619)
!2621 = !DILocation(line: 958, column: 12, scope: !2619)
!2622 = !DILocation(line: 958, column: 20, scope: !2619)
!2623 = !DILocation(line: 958, column: 23, scope: !2624)
!2624 = !DILexicalBlockFile(scope: !2619, file: !44, discriminator: 1)
!2625 = !DILocation(line: 958, column: 31, scope: !2624)
!2626 = !DILocation(line: 958, column: 45, scope: !2624)
!2627 = !DILocation(line: 958, column: 6, scope: !2624)
!2628 = !DILocation(line: 959, column: 46, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2619, file: !44, line: 958, column: 53)
!2630 = !DILocation(line: 959, column: 54, scope: !2629)
!2631 = !DILocation(line: 959, column: 28, scope: !2629)
!2632 = !DILocation(line: 959, column: 13, scope: !2629)
!2633 = !DILocation(line: 959, column: 25, scope: !2629)
!2634 = !DILocation(line: 959, column: 10, scope: !2629)
!2635 = !DILocation(line: 960, column: 7, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2629, file: !44, line: 960, column: 7)
!2637 = !DILocation(line: 960, column: 14, scope: !2636)
!2638 = !DILocation(line: 960, column: 7, scope: !2629)
!2639 = !DILocation(line: 961, column: 40, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2636, file: !44, line: 960, column: 22)
!2641 = !DILocation(line: 961, column: 31, scope: !2640)
!2642 = !DILocation(line: 961, column: 12, scope: !2643)
!2643 = !DILexicalBlockFile(scope: !2640, file: !44, discriminator: 1)
!2644 = !DILocation(line: 961, column: 5, scope: !2640)
!2645 = !DILocation(line: 961, column: 10, scope: !2640)
!2646 = !DILocation(line: 962, column: 4, scope: !2640)
!2647 = !DILocation(line: 963, column: 3, scope: !2640)
!2648 = !DILocation(line: 964, column: 2, scope: !2629)
!2649 = !DILocation(line: 965, column: 1, scope: !2571)
!2650 = distinct !DISubprogram(name: "sig_complete_unalias", scope: !44, file: !44, line: 967, type: !1877, isLocal: true, isDefinition: true, scopeLine: 970, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!2651 = !DILocalVariable(name: "list", arg: 1, scope: !2650, file: !44, line: 967, type: !1879)
!2652 = !DILocation(line: 967, column: 42, scope: !2650)
!2653 = !DILocalVariable(name: "window", arg: 2, scope: !2650, file: !44, line: 967, type: !1880)
!2654 = !DILocation(line: 967, column: 60, scope: !2650)
!2655 = !DILocalVariable(name: "word", arg: 3, scope: !2650, file: !44, line: 968, type: !115)
!2656 = !DILocation(line: 968, column: 17, scope: !2650)
!2657 = !DILocalVariable(name: "line", arg: 4, scope: !2650, file: !44, line: 968, type: !115)
!2658 = !DILocation(line: 968, column: 35, scope: !2650)
!2659 = !DILocalVariable(name: "want_space", arg: 5, scope: !2650, file: !44, line: 969, type: !1918)
!2660 = !DILocation(line: 969, column: 10, scope: !2650)
!2661 = !DILocation(line: 971, column: 2, scope: !2650)
!2662 = distinct !{!2662, !2661}
!2663 = !DILocation(line: 971, column: 10, scope: !2664)
!2664 = !DILexicalBlockFile(scope: !2665, file: !44, discriminator: 1)
!2665 = distinct !DILexicalBlock(scope: !2666, file: !44, line: 971, column: 10)
!2666 = distinct !DILexicalBlock(scope: !2650, file: !44, line: 971, column: 4)
!2667 = !DILocation(line: 971, column: 15, scope: !2664)
!2668 = !DILocation(line: 971, column: 5, scope: !2669)
!2669 = !DILexicalBlockFile(scope: !2670, file: !44, discriminator: 2)
!2670 = distinct !DILexicalBlock(scope: !2665, file: !44, line: 971, column: 3)
!2671 = !DILocation(line: 971, column: 14, scope: !2672)
!2672 = !DILexicalBlockFile(scope: !2673, file: !44, discriminator: 3)
!2673 = distinct !DILexicalBlock(scope: !2665, file: !44, line: 971, column: 12)
!2674 = !DILocation(line: 971, column: 99, scope: !2672)
!2675 = !DILocation(line: 971, column: 110, scope: !2676)
!2676 = !DILexicalBlockFile(scope: !2666, file: !44, discriminator: 4)
!2677 = !DILocation(line: 972, column: 2, scope: !2650)
!2678 = distinct !{!2678, !2677}
!2679 = !DILocation(line: 972, column: 10, scope: !2680)
!2680 = !DILexicalBlockFile(scope: !2681, file: !44, discriminator: 1)
!2681 = distinct !DILexicalBlock(scope: !2682, file: !44, line: 972, column: 10)
!2682 = distinct !DILexicalBlock(scope: !2650, file: !44, line: 972, column: 4)
!2683 = !DILocation(line: 972, column: 15, scope: !2680)
!2684 = !DILocation(line: 972, column: 5, scope: !2685)
!2685 = !DILexicalBlockFile(scope: !2686, file: !44, discriminator: 2)
!2686 = distinct !DILexicalBlock(scope: !2681, file: !44, line: 972, column: 3)
!2687 = !DILocation(line: 972, column: 14, scope: !2688)
!2688 = !DILexicalBlockFile(scope: !2689, file: !44, discriminator: 3)
!2689 = distinct !DILexicalBlock(scope: !2681, file: !44, line: 972, column: 12)
!2690 = !DILocation(line: 972, column: 99, scope: !2688)
!2691 = !DILocation(line: 972, column: 110, scope: !2692)
!2692 = !DILexicalBlockFile(scope: !2682, file: !44, discriminator: 4)
!2693 = !DILocation(line: 974, column: 33, scope: !2650)
!2694 = !DILocation(line: 974, column: 10, scope: !2650)
!2695 = !DILocation(line: 974, column: 3, scope: !2650)
!2696 = !DILocation(line: 974, column: 8, scope: !2650)
!2697 = !DILocation(line: 975, column: 7, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2650, file: !44, line: 975, column: 6)
!2699 = !DILocation(line: 975, column: 6, scope: !2698)
!2700 = !DILocation(line: 975, column: 12, scope: !2698)
!2701 = !DILocation(line: 975, column: 6, scope: !2650)
!2702 = !DILocation(line: 975, column: 20, scope: !2703)
!2703 = !DILexicalBlockFile(scope: !2698, file: !44, discriminator: 1)
!2704 = !DILocation(line: 976, column: 1, scope: !2650)
!2705 = distinct !DISubprogram(name: "sig_complete_alias", scope: !44, file: !44, line: 978, type: !1877, isLocal: true, isDefinition: true, scopeLine: 981, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!2706 = !DILocalVariable(name: "list", arg: 1, scope: !2705, file: !44, line: 978, type: !1879)
!2707 = !DILocation(line: 978, column: 40, scope: !2705)
!2708 = !DILocalVariable(name: "window", arg: 2, scope: !2705, file: !44, line: 978, type: !1880)
!2709 = !DILocation(line: 978, column: 58, scope: !2705)
!2710 = !DILocalVariable(name: "word", arg: 3, scope: !2705, file: !44, line: 979, type: !115)
!2711 = !DILocation(line: 979, column: 17, scope: !2705)
!2712 = !DILocalVariable(name: "line", arg: 4, scope: !2705, file: !44, line: 979, type: !115)
!2713 = !DILocation(line: 979, column: 35, scope: !2705)
!2714 = !DILocalVariable(name: "want_space", arg: 5, scope: !2705, file: !44, line: 980, type: !1918)
!2715 = !DILocation(line: 980, column: 10, scope: !2705)
!2716 = !DILocalVariable(name: "definition", scope: !2705, file: !44, line: 982, type: !115)
!2717 = !DILocation(line: 982, column: 14, scope: !2705)
!2718 = !DILocation(line: 984, column: 2, scope: !2705)
!2719 = distinct !{!2719, !2718}
!2720 = !DILocation(line: 984, column: 10, scope: !2721)
!2721 = !DILexicalBlockFile(scope: !2722, file: !44, discriminator: 1)
!2722 = distinct !DILexicalBlock(scope: !2723, file: !44, line: 984, column: 10)
!2723 = distinct !DILexicalBlock(scope: !2705, file: !44, line: 984, column: 4)
!2724 = !DILocation(line: 984, column: 15, scope: !2721)
!2725 = !DILocation(line: 984, column: 5, scope: !2726)
!2726 = !DILexicalBlockFile(scope: !2727, file: !44, discriminator: 2)
!2727 = distinct !DILexicalBlock(scope: !2722, file: !44, line: 984, column: 3)
!2728 = !DILocation(line: 984, column: 14, scope: !2729)
!2729 = !DILexicalBlockFile(scope: !2730, file: !44, discriminator: 3)
!2730 = distinct !DILexicalBlock(scope: !2722, file: !44, line: 984, column: 12)
!2731 = !DILocation(line: 984, column: 99, scope: !2729)
!2732 = !DILocation(line: 984, column: 110, scope: !2733)
!2733 = !DILexicalBlockFile(scope: !2723, file: !44, discriminator: 4)
!2734 = !DILocation(line: 985, column: 2, scope: !2705)
!2735 = distinct !{!2735, !2734}
!2736 = !DILocation(line: 985, column: 10, scope: !2737)
!2737 = !DILexicalBlockFile(scope: !2738, file: !44, discriminator: 1)
!2738 = distinct !DILexicalBlock(scope: !2739, file: !44, line: 985, column: 10)
!2739 = distinct !DILexicalBlock(scope: !2705, file: !44, line: 985, column: 4)
!2740 = !DILocation(line: 985, column: 15, scope: !2737)
!2741 = !DILocation(line: 985, column: 5, scope: !2742)
!2742 = !DILexicalBlockFile(scope: !2743, file: !44, discriminator: 2)
!2743 = distinct !DILexicalBlock(scope: !2738, file: !44, line: 985, column: 3)
!2744 = !DILocation(line: 985, column: 14, scope: !2745)
!2745 = !DILexicalBlockFile(scope: !2746, file: !44, discriminator: 3)
!2746 = distinct !DILexicalBlock(scope: !2738, file: !44, line: 985, column: 12)
!2747 = !DILocation(line: 985, column: 99, scope: !2745)
!2748 = !DILocation(line: 985, column: 110, scope: !2749)
!2749 = !DILexicalBlockFile(scope: !2739, file: !44, discriminator: 4)
!2750 = !DILocation(line: 986, column: 2, scope: !2705)
!2751 = distinct !{!2751, !2750}
!2752 = !DILocation(line: 986, column: 10, scope: !2753)
!2753 = !DILexicalBlockFile(scope: !2754, file: !44, discriminator: 1)
!2754 = distinct !DILexicalBlock(scope: !2755, file: !44, line: 986, column: 10)
!2755 = distinct !DILexicalBlock(scope: !2705, file: !44, line: 986, column: 4)
!2756 = !DILocation(line: 986, column: 15, scope: !2753)
!2757 = !DILocation(line: 986, column: 5, scope: !2758)
!2758 = !DILexicalBlockFile(scope: !2759, file: !44, discriminator: 2)
!2759 = distinct !DILexicalBlock(scope: !2754, file: !44, line: 986, column: 3)
!2760 = !DILocation(line: 986, column: 14, scope: !2761)
!2761 = !DILexicalBlockFile(scope: !2762, file: !44, discriminator: 3)
!2762 = distinct !DILexicalBlock(scope: !2754, file: !44, line: 986, column: 12)
!2763 = !DILocation(line: 986, column: 99, scope: !2761)
!2764 = !DILocation(line: 986, column: 110, scope: !2765)
!2765 = !DILexicalBlockFile(scope: !2755, file: !44, discriminator: 4)
!2766 = !DILocation(line: 988, column: 7, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2705, file: !44, line: 988, column: 6)
!2768 = !DILocation(line: 988, column: 6, scope: !2767)
!2769 = !DILocation(line: 988, column: 12, scope: !2767)
!2770 = !DILocation(line: 988, column: 6, scope: !2705)
!2771 = !DILocation(line: 989, column: 36, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2773, file: !44, line: 989, column: 7)
!2773 = distinct !DILexicalBlock(scope: !2767, file: !44, line: 988, column: 21)
!2774 = !DILocation(line: 989, column: 59, scope: !2772)
!2775 = !DILocation(line: 989, column: 21, scope: !2772)
!2776 = !DILocation(line: 989, column: 19, scope: !2772)
!2777 = !DILocation(line: 989, column: 23, scope: !2772)
!2778 = !DILocation(line: 989, column: 7, scope: !2773)
!2779 = !DILocation(line: 990, column: 40, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2772, file: !44, line: 989, column: 47)
!2781 = !DILocation(line: 990, column: 31, scope: !2780)
!2782 = !DILocation(line: 990, column: 12, scope: !2783)
!2783 = !DILexicalBlockFile(scope: !2780, file: !44, discriminator: 1)
!2784 = !DILocation(line: 990, column: 5, scope: !2780)
!2785 = !DILocation(line: 990, column: 10, scope: !2780)
!2786 = !DILocation(line: 991, column: 4, scope: !2780)
!2787 = !DILocation(line: 992, column: 3, scope: !2780)
!2788 = !DILocation(line: 993, column: 2, scope: !2773)
!2789 = !DILocation(line: 994, column: 34, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2767, file: !44, line: 993, column: 9)
!2791 = !DILocation(line: 994, column: 11, scope: !2790)
!2792 = !DILocation(line: 994, column: 4, scope: !2790)
!2793 = !DILocation(line: 994, column: 9, scope: !2790)
!2794 = !DILocation(line: 995, column: 8, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2790, file: !44, line: 995, column: 7)
!2796 = !DILocation(line: 995, column: 7, scope: !2795)
!2797 = !DILocation(line: 995, column: 13, scope: !2795)
!2798 = !DILocation(line: 995, column: 7, scope: !2790)
!2799 = !DILocation(line: 995, column: 21, scope: !2800)
!2800 = !DILexicalBlockFile(scope: !2795, file: !44, discriminator: 1)
!2801 = !DILocation(line: 997, column: 1, scope: !2705)
!2802 = distinct !DISubprogram(name: "sig_complete_window", scope: !44, file: !44, line: 999, type: !1877, isLocal: true, isDefinition: true, scopeLine: 1002, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!2803 = !DILocalVariable(name: "list", arg: 1, scope: !2802, file: !44, line: 999, type: !1879)
!2804 = !DILocation(line: 999, column: 41, scope: !2802)
!2805 = !DILocalVariable(name: "window", arg: 2, scope: !2802, file: !44, line: 999, type: !1880)
!2806 = !DILocation(line: 999, column: 59, scope: !2802)
!2807 = !DILocalVariable(name: "word", arg: 3, scope: !2802, file: !44, line: 1000, type: !115)
!2808 = !DILocation(line: 1000, column: 17, scope: !2802)
!2809 = !DILocalVariable(name: "linestart", arg: 4, scope: !2802, file: !44, line: 1000, type: !115)
!2810 = !DILocation(line: 1000, column: 35, scope: !2802)
!2811 = !DILocalVariable(name: "want_space", arg: 5, scope: !2802, file: !44, line: 1001, type: !1918)
!2812 = !DILocation(line: 1001, column: 10, scope: !2802)
!2813 = !DILocalVariable(name: "win", scope: !2802, file: !44, line: 1003, type: !1880)
!2814 = !DILocation(line: 1003, column: 14, scope: !2802)
!2815 = !DILocalVariable(name: "item", scope: !2802, file: !44, line: 1004, type: !497)
!2816 = !DILocation(line: 1004, column: 15, scope: !2802)
!2817 = !DILocalVariable(name: "tmp", scope: !2802, file: !44, line: 1005, type: !144)
!2818 = !DILocation(line: 1005, column: 10, scope: !2802)
!2819 = !DILocalVariable(name: "len", scope: !2802, file: !44, line: 1006, type: !138)
!2820 = !DILocation(line: 1006, column: 6, scope: !2802)
!2821 = !DILocation(line: 1008, column: 2, scope: !2802)
!2822 = distinct !{!2822, !2821}
!2823 = !DILocation(line: 1008, column: 10, scope: !2824)
!2824 = !DILexicalBlockFile(scope: !2825, file: !44, discriminator: 1)
!2825 = distinct !DILexicalBlock(scope: !2826, file: !44, line: 1008, column: 10)
!2826 = distinct !DILexicalBlock(scope: !2802, file: !44, line: 1008, column: 4)
!2827 = !DILocation(line: 1008, column: 15, scope: !2824)
!2828 = !DILocation(line: 1008, column: 5, scope: !2829)
!2829 = !DILexicalBlockFile(scope: !2830, file: !44, discriminator: 2)
!2830 = distinct !DILexicalBlock(scope: !2825, file: !44, line: 1008, column: 3)
!2831 = !DILocation(line: 1008, column: 14, scope: !2832)
!2832 = !DILexicalBlockFile(scope: !2833, file: !44, discriminator: 3)
!2833 = distinct !DILexicalBlock(scope: !2825, file: !44, line: 1008, column: 12)
!2834 = !DILocation(line: 1008, column: 99, scope: !2832)
!2835 = !DILocation(line: 1008, column: 110, scope: !2836)
!2836 = !DILexicalBlockFile(scope: !2826, file: !44, discriminator: 4)
!2837 = !DILocation(line: 1009, column: 2, scope: !2802)
!2838 = distinct !{!2838, !2837}
!2839 = !DILocation(line: 1009, column: 10, scope: !2840)
!2840 = !DILexicalBlockFile(scope: !2841, file: !44, discriminator: 1)
!2841 = distinct !DILexicalBlock(scope: !2842, file: !44, line: 1009, column: 10)
!2842 = distinct !DILexicalBlock(scope: !2802, file: !44, line: 1009, column: 4)
!2843 = !DILocation(line: 1009, column: 15, scope: !2840)
!2844 = !DILocation(line: 1009, column: 5, scope: !2845)
!2845 = !DILexicalBlockFile(scope: !2846, file: !44, discriminator: 2)
!2846 = distinct !DILexicalBlock(scope: !2841, file: !44, line: 1009, column: 3)
!2847 = !DILocation(line: 1009, column: 14, scope: !2848)
!2848 = !DILexicalBlockFile(scope: !2849, file: !44, discriminator: 3)
!2849 = distinct !DILexicalBlock(scope: !2841, file: !44, line: 1009, column: 12)
!2850 = !DILocation(line: 1009, column: 99, scope: !2848)
!2851 = !DILocation(line: 1009, column: 110, scope: !2852)
!2852 = !DILexicalBlockFile(scope: !2842, file: !44, discriminator: 4)
!2853 = !DILocation(line: 1011, column: 15, scope: !2802)
!2854 = !DILocation(line: 1011, column: 8, scope: !2802)
!2855 = !DILocation(line: 1011, column: 6, scope: !2802)
!2856 = !DILocation(line: 1013, column: 13, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2802, file: !44, line: 1013, column: 2)
!2858 = !DILocation(line: 1013, column: 11, scope: !2857)
!2859 = !DILocation(line: 1013, column: 7, scope: !2857)
!2860 = !DILocation(line: 1013, column: 22, scope: !2861)
!2861 = !DILexicalBlockFile(scope: !2862, file: !44, discriminator: 1)
!2862 = distinct !DILexicalBlock(scope: !2857, file: !44, line: 1013, column: 2)
!2863 = !DILocation(line: 1013, column: 26, scope: !2861)
!2864 = !DILocation(line: 1013, column: 2, scope: !2861)
!2865 = !DILocation(line: 1014, column: 9, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2862, file: !44, line: 1013, column: 51)
!2867 = !DILocation(line: 1014, column: 14, scope: !2866)
!2868 = !DILocation(line: 1014, column: 7, scope: !2866)
!2869 = !DILocation(line: 1015, column: 10, scope: !2866)
!2870 = !DILocation(line: 1015, column: 15, scope: !2866)
!2871 = !DILocation(line: 1015, column: 8, scope: !2866)
!2872 = !DILocation(line: 1017, column: 7, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2866, file: !44, line: 1017, column: 7)
!2874 = !DILocation(line: 1017, column: 12, scope: !2873)
!2875 = !DILocation(line: 1017, column: 17, scope: !2873)
!2876 = !DILocation(line: 1017, column: 24, scope: !2873)
!2877 = !DILocation(line: 1017, column: 47, scope: !2878)
!2878 = !DILexicalBlockFile(scope: !2873, file: !44, discriminator: 1)
!2879 = !DILocation(line: 1017, column: 52, scope: !2878)
!2880 = !DILocation(line: 1017, column: 58, scope: !2878)
!2881 = !DILocation(line: 1017, column: 64, scope: !2878)
!2882 = !DILocation(line: 1017, column: 27, scope: !2878)
!2883 = !DILocation(line: 1017, column: 69, scope: !2878)
!2884 = !DILocation(line: 1017, column: 7, scope: !2878)
!2885 = !DILocation(line: 1018, column: 27, scope: !2873)
!2886 = !DILocation(line: 1018, column: 26, scope: !2873)
!2887 = !DILocation(line: 1018, column: 42, scope: !2873)
!2888 = !DILocation(line: 1018, column: 47, scope: !2873)
!2889 = !DILocation(line: 1018, column: 33, scope: !2873)
!2890 = !DILocation(line: 1018, column: 12, scope: !2878)
!2891 = !DILocation(line: 1018, column: 5, scope: !2873)
!2892 = !DILocation(line: 1018, column: 10, scope: !2873)
!2893 = !DILocation(line: 1018, column: 4, scope: !2873)
!2894 = !DILocation(line: 1019, column: 7, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2866, file: !44, line: 1019, column: 7)
!2896 = !DILocation(line: 1019, column: 12, scope: !2895)
!2897 = !DILocation(line: 1019, column: 19, scope: !2895)
!2898 = !DILocation(line: 1019, column: 42, scope: !2899)
!2899 = !DILexicalBlockFile(scope: !2895, file: !44, discriminator: 1)
!2900 = !DILocation(line: 1019, column: 48, scope: !2899)
!2901 = !DILocation(line: 1019, column: 62, scope: !2899)
!2902 = !DILocation(line: 1019, column: 68, scope: !2899)
!2903 = !DILocation(line: 1019, column: 22, scope: !2899)
!2904 = !DILocation(line: 1019, column: 73, scope: !2899)
!2905 = !DILocation(line: 1019, column: 7, scope: !2899)
!2906 = !DILocation(line: 1020, column: 27, scope: !2895)
!2907 = !DILocation(line: 1020, column: 26, scope: !2895)
!2908 = !DILocation(line: 1020, column: 42, scope: !2895)
!2909 = !DILocation(line: 1020, column: 48, scope: !2895)
!2910 = !DILocation(line: 1020, column: 33, scope: !2895)
!2911 = !DILocation(line: 1020, column: 12, scope: !2899)
!2912 = !DILocation(line: 1020, column: 5, scope: !2895)
!2913 = !DILocation(line: 1020, column: 10, scope: !2895)
!2914 = !DILocation(line: 1020, column: 4, scope: !2895)
!2915 = !DILocation(line: 1021, column: 2, scope: !2866)
!2916 = !DILocation(line: 1013, column: 40, scope: !2917)
!2917 = !DILexicalBlockFile(scope: !2862, file: !44, discriminator: 2)
!2918 = !DILocation(line: 1013, column: 45, scope: !2917)
!2919 = !DILocation(line: 1013, column: 38, scope: !2917)
!2920 = !DILocation(line: 1013, column: 2, scope: !2917)
!2921 = distinct !{!2921, !2922}
!2922 = !DILocation(line: 1013, column: 2, scope: !2802)
!2923 = !DILocation(line: 1023, column: 7, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2802, file: !44, line: 1023, column: 6)
!2925 = !DILocation(line: 1023, column: 6, scope: !2924)
!2926 = !DILocation(line: 1023, column: 12, scope: !2924)
!2927 = !DILocation(line: 1023, column: 6, scope: !2802)
!2928 = !DILocation(line: 1023, column: 20, scope: !2929)
!2929 = !DILexicalBlockFile(scope: !2924, file: !44, discriminator: 1)
!2930 = !DILocation(line: 1024, column: 1, scope: !2802)
!2931 = distinct !DISubprogram(name: "sig_complete_channel", scope: !44, file: !44, line: 1026, type: !1877, isLocal: true, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!2932 = !DILocalVariable(name: "list", arg: 1, scope: !2931, file: !44, line: 1026, type: !1879)
!2933 = !DILocation(line: 1026, column: 42, scope: !2931)
!2934 = !DILocalVariable(name: "window", arg: 2, scope: !2931, file: !44, line: 1026, type: !1880)
!2935 = !DILocation(line: 1026, column: 60, scope: !2931)
!2936 = !DILocalVariable(name: "word", arg: 3, scope: !2931, file: !44, line: 1027, type: !115)
!2937 = !DILocation(line: 1027, column: 18, scope: !2931)
!2938 = !DILocalVariable(name: "line", arg: 4, scope: !2931, file: !44, line: 1027, type: !115)
!2939 = !DILocation(line: 1027, column: 36, scope: !2931)
!2940 = !DILocalVariable(name: "want_space", arg: 5, scope: !2931, file: !44, line: 1028, type: !1918)
!2941 = !DILocation(line: 1028, column: 11, scope: !2931)
!2942 = !DILocation(line: 1030, column: 2, scope: !2931)
!2943 = distinct !{!2943, !2942}
!2944 = !DILocation(line: 1030, column: 10, scope: !2945)
!2945 = !DILexicalBlockFile(scope: !2946, file: !44, discriminator: 1)
!2946 = distinct !DILexicalBlock(scope: !2947, file: !44, line: 1030, column: 10)
!2947 = distinct !DILexicalBlock(scope: !2931, file: !44, line: 1030, column: 4)
!2948 = !DILocation(line: 1030, column: 15, scope: !2945)
!2949 = !DILocation(line: 1030, column: 5, scope: !2950)
!2950 = !DILexicalBlockFile(scope: !2951, file: !44, discriminator: 2)
!2951 = distinct !DILexicalBlock(scope: !2946, file: !44, line: 1030, column: 3)
!2952 = !DILocation(line: 1030, column: 14, scope: !2953)
!2953 = !DILexicalBlockFile(scope: !2954, file: !44, discriminator: 3)
!2954 = distinct !DILexicalBlock(scope: !2946, file: !44, line: 1030, column: 12)
!2955 = !DILocation(line: 1030, column: 99, scope: !2953)
!2956 = !DILocation(line: 1030, column: 110, scope: !2957)
!2957 = !DILexicalBlockFile(scope: !2947, file: !44, discriminator: 4)
!2958 = !DILocation(line: 1031, column: 2, scope: !2931)
!2959 = distinct !{!2959, !2958}
!2960 = !DILocation(line: 1031, column: 10, scope: !2961)
!2961 = !DILexicalBlockFile(scope: !2962, file: !44, discriminator: 1)
!2962 = distinct !DILexicalBlock(scope: !2963, file: !44, line: 1031, column: 10)
!2963 = distinct !DILexicalBlock(scope: !2931, file: !44, line: 1031, column: 4)
!2964 = !DILocation(line: 1031, column: 15, scope: !2961)
!2965 = !DILocation(line: 1031, column: 5, scope: !2966)
!2966 = !DILexicalBlockFile(scope: !2967, file: !44, discriminator: 2)
!2967 = distinct !DILexicalBlock(scope: !2962, file: !44, line: 1031, column: 3)
!2968 = !DILocation(line: 1031, column: 14, scope: !2969)
!2969 = !DILexicalBlockFile(scope: !2970, file: !44, discriminator: 3)
!2970 = distinct !DILexicalBlock(scope: !2962, file: !44, line: 1031, column: 12)
!2971 = !DILocation(line: 1031, column: 99, scope: !2969)
!2972 = !DILocation(line: 1031, column: 110, scope: !2973)
!2973 = !DILexicalBlockFile(scope: !2963, file: !44, discriminator: 4)
!2974 = !DILocation(line: 1033, column: 39, scope: !2931)
!2975 = !DILocation(line: 1033, column: 10, scope: !2931)
!2976 = !DILocation(line: 1033, column: 3, scope: !2931)
!2977 = !DILocation(line: 1033, column: 8, scope: !2931)
!2978 = !DILocation(line: 1034, column: 7, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2931, file: !44, line: 1034, column: 6)
!2980 = !DILocation(line: 1034, column: 6, scope: !2979)
!2981 = !DILocation(line: 1034, column: 12, scope: !2979)
!2982 = !DILocation(line: 1034, column: 6, scope: !2931)
!2983 = !DILocation(line: 1034, column: 20, scope: !2984)
!2984 = !DILexicalBlockFile(scope: !2979, file: !44, discriminator: 1)
!2985 = !DILocation(line: 1035, column: 1, scope: !2931)
!2986 = distinct !DISubprogram(name: "sig_complete_server", scope: !44, file: !44, line: 1037, type: !1877, isLocal: true, isDefinition: true, scopeLine: 1040, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!2987 = !DILocalVariable(name: "list", arg: 1, scope: !2986, file: !44, line: 1037, type: !1879)
!2988 = !DILocation(line: 1037, column: 41, scope: !2986)
!2989 = !DILocalVariable(name: "window", arg: 2, scope: !2986, file: !44, line: 1037, type: !1880)
!2990 = !DILocation(line: 1037, column: 59, scope: !2986)
!2991 = !DILocalVariable(name: "word", arg: 3, scope: !2986, file: !44, line: 1038, type: !115)
!2992 = !DILocation(line: 1038, column: 17, scope: !2986)
!2993 = !DILocalVariable(name: "line", arg: 4, scope: !2986, file: !44, line: 1038, type: !115)
!2994 = !DILocation(line: 1038, column: 35, scope: !2986)
!2995 = !DILocalVariable(name: "want_space", arg: 5, scope: !2986, file: !44, line: 1039, type: !1918)
!2996 = !DILocation(line: 1039, column: 10, scope: !2986)
!2997 = !DILocation(line: 1041, column: 2, scope: !2986)
!2998 = distinct !{!2998, !2997}
!2999 = !DILocation(line: 1041, column: 10, scope: !3000)
!3000 = !DILexicalBlockFile(scope: !3001, file: !44, discriminator: 1)
!3001 = distinct !DILexicalBlock(scope: !3002, file: !44, line: 1041, column: 10)
!3002 = distinct !DILexicalBlock(scope: !2986, file: !44, line: 1041, column: 4)
!3003 = !DILocation(line: 1041, column: 15, scope: !3000)
!3004 = !DILocation(line: 1041, column: 5, scope: !3005)
!3005 = !DILexicalBlockFile(scope: !3006, file: !44, discriminator: 2)
!3006 = distinct !DILexicalBlock(scope: !3001, file: !44, line: 1041, column: 3)
!3007 = !DILocation(line: 1041, column: 14, scope: !3008)
!3008 = !DILexicalBlockFile(scope: !3009, file: !44, discriminator: 3)
!3009 = distinct !DILexicalBlock(scope: !3001, file: !44, line: 1041, column: 12)
!3010 = !DILocation(line: 1041, column: 99, scope: !3008)
!3011 = !DILocation(line: 1041, column: 110, scope: !3012)
!3012 = !DILexicalBlockFile(scope: !3002, file: !44, discriminator: 4)
!3013 = !DILocation(line: 1042, column: 2, scope: !2986)
!3014 = distinct !{!3014, !3013}
!3015 = !DILocation(line: 1042, column: 10, scope: !3016)
!3016 = !DILexicalBlockFile(scope: !3017, file: !44, discriminator: 1)
!3017 = distinct !DILexicalBlock(scope: !3018, file: !44, line: 1042, column: 10)
!3018 = distinct !DILexicalBlock(scope: !2986, file: !44, line: 1042, column: 4)
!3019 = !DILocation(line: 1042, column: 15, scope: !3016)
!3020 = !DILocation(line: 1042, column: 5, scope: !3021)
!3021 = !DILexicalBlockFile(scope: !3022, file: !44, discriminator: 2)
!3022 = distinct !DILexicalBlock(scope: !3017, file: !44, line: 1042, column: 3)
!3023 = !DILocation(line: 1042, column: 14, scope: !3024)
!3024 = !DILexicalBlockFile(scope: !3025, file: !44, discriminator: 3)
!3025 = distinct !DILexicalBlock(scope: !3017, file: !44, line: 1042, column: 12)
!3026 = !DILocation(line: 1042, column: 99, scope: !3024)
!3027 = !DILocation(line: 1042, column: 110, scope: !3028)
!3028 = !DILexicalBlockFile(scope: !3018, file: !44, discriminator: 4)
!3029 = !DILocation(line: 1044, column: 33, scope: !2986)
!3030 = !DILocation(line: 1044, column: 10, scope: !2986)
!3031 = !DILocation(line: 1044, column: 3, scope: !2986)
!3032 = !DILocation(line: 1044, column: 8, scope: !2986)
!3033 = !DILocation(line: 1045, column: 7, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !2986, file: !44, line: 1045, column: 6)
!3035 = !DILocation(line: 1045, column: 6, scope: !3034)
!3036 = !DILocation(line: 1045, column: 12, scope: !3034)
!3037 = !DILocation(line: 1045, column: 6, scope: !2986)
!3038 = !DILocation(line: 1045, column: 20, scope: !3039)
!3039 = !DILexicalBlockFile(scope: !3034, file: !44, discriminator: 1)
!3040 = !DILocation(line: 1046, column: 1, scope: !2986)
!3041 = distinct !DISubprogram(name: "sig_complete_target", scope: !44, file: !44, line: 1048, type: !1877, isLocal: true, isDefinition: true, scopeLine: 1051, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!3042 = !DILocalVariable(name: "list", arg: 1, scope: !3041, file: !44, line: 1048, type: !1879)
!3043 = !DILocation(line: 1048, column: 41, scope: !3041)
!3044 = !DILocalVariable(name: "window", arg: 2, scope: !3041, file: !44, line: 1048, type: !1880)
!3045 = !DILocation(line: 1048, column: 59, scope: !3041)
!3046 = !DILocalVariable(name: "word", arg: 3, scope: !3041, file: !44, line: 1049, type: !115)
!3047 = !DILocation(line: 1049, column: 17, scope: !3041)
!3048 = !DILocalVariable(name: "line", arg: 4, scope: !3041, file: !44, line: 1049, type: !115)
!3049 = !DILocation(line: 1049, column: 35, scope: !3041)
!3050 = !DILocalVariable(name: "want_space", arg: 5, scope: !3041, file: !44, line: 1050, type: !1918)
!3051 = !DILocation(line: 1050, column: 10, scope: !3041)
!3052 = !DILocalVariable(name: "definition", scope: !3041, file: !44, line: 1052, type: !115)
!3053 = !DILocation(line: 1052, column: 14, scope: !3041)
!3054 = !DILocation(line: 1054, column: 2, scope: !3041)
!3055 = distinct !{!3055, !3054}
!3056 = !DILocation(line: 1054, column: 10, scope: !3057)
!3057 = !DILexicalBlockFile(scope: !3058, file: !44, discriminator: 1)
!3058 = distinct !DILexicalBlock(scope: !3059, file: !44, line: 1054, column: 10)
!3059 = distinct !DILexicalBlock(scope: !3041, file: !44, line: 1054, column: 4)
!3060 = !DILocation(line: 1054, column: 15, scope: !3057)
!3061 = !DILocation(line: 1054, column: 5, scope: !3062)
!3062 = !DILexicalBlockFile(scope: !3063, file: !44, discriminator: 2)
!3063 = distinct !DILexicalBlock(scope: !3058, file: !44, line: 1054, column: 3)
!3064 = !DILocation(line: 1054, column: 14, scope: !3065)
!3065 = !DILexicalBlockFile(scope: !3066, file: !44, discriminator: 3)
!3066 = distinct !DILexicalBlock(scope: !3058, file: !44, line: 1054, column: 12)
!3067 = !DILocation(line: 1054, column: 99, scope: !3065)
!3068 = !DILocation(line: 1054, column: 110, scope: !3069)
!3069 = !DILexicalBlockFile(scope: !3059, file: !44, discriminator: 4)
!3070 = !DILocation(line: 1055, column: 2, scope: !3041)
!3071 = distinct !{!3071, !3070}
!3072 = !DILocation(line: 1055, column: 10, scope: !3073)
!3073 = !DILexicalBlockFile(scope: !3074, file: !44, discriminator: 1)
!3074 = distinct !DILexicalBlock(scope: !3075, file: !44, line: 1055, column: 10)
!3075 = distinct !DILexicalBlock(scope: !3041, file: !44, line: 1055, column: 4)
!3076 = !DILocation(line: 1055, column: 15, scope: !3073)
!3077 = !DILocation(line: 1055, column: 5, scope: !3078)
!3078 = !DILexicalBlockFile(scope: !3079, file: !44, discriminator: 2)
!3079 = distinct !DILexicalBlock(scope: !3074, file: !44, line: 1055, column: 3)
!3080 = !DILocation(line: 1055, column: 14, scope: !3081)
!3081 = !DILexicalBlockFile(scope: !3082, file: !44, discriminator: 3)
!3082 = distinct !DILexicalBlock(scope: !3074, file: !44, line: 1055, column: 12)
!3083 = !DILocation(line: 1055, column: 99, scope: !3081)
!3084 = !DILocation(line: 1055, column: 110, scope: !3085)
!3085 = !DILexicalBlockFile(scope: !3075, file: !44, discriminator: 4)
!3086 = !DILocation(line: 1056, column: 2, scope: !3041)
!3087 = distinct !{!3087, !3086}
!3088 = !DILocation(line: 1056, column: 10, scope: !3089)
!3089 = !DILexicalBlockFile(scope: !3090, file: !44, discriminator: 1)
!3090 = distinct !DILexicalBlock(scope: !3091, file: !44, line: 1056, column: 10)
!3091 = distinct !DILexicalBlock(scope: !3041, file: !44, line: 1056, column: 4)
!3092 = !DILocation(line: 1056, column: 15, scope: !3089)
!3093 = !DILocation(line: 1056, column: 5, scope: !3094)
!3094 = !DILexicalBlockFile(scope: !3095, file: !44, discriminator: 2)
!3095 = distinct !DILexicalBlock(scope: !3090, file: !44, line: 1056, column: 3)
!3096 = !DILocation(line: 1056, column: 14, scope: !3097)
!3097 = !DILexicalBlockFile(scope: !3098, file: !44, discriminator: 3)
!3098 = distinct !DILexicalBlock(scope: !3090, file: !44, line: 1056, column: 12)
!3099 = !DILocation(line: 1056, column: 99, scope: !3097)
!3100 = !DILocation(line: 1056, column: 110, scope: !3101)
!3101 = !DILexicalBlockFile(scope: !3091, file: !44, discriminator: 4)
!3102 = !DILocation(line: 1058, column: 7, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3041, file: !44, line: 1058, column: 6)
!3104 = !DILocation(line: 1058, column: 6, scope: !3103)
!3105 = !DILocation(line: 1058, column: 12, scope: !3103)
!3106 = !DILocation(line: 1058, column: 6, scope: !3041)
!3107 = !DILocation(line: 1059, column: 36, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3109, file: !44, line: 1059, column: 7)
!3109 = distinct !DILexicalBlock(scope: !3103, file: !44, line: 1058, column: 21)
!3110 = !DILocation(line: 1059, column: 63, scope: !3108)
!3111 = !DILocation(line: 1059, column: 21, scope: !3108)
!3112 = !DILocation(line: 1059, column: 19, scope: !3108)
!3113 = !DILocation(line: 1059, column: 23, scope: !3108)
!3114 = !DILocation(line: 1059, column: 7, scope: !3109)
!3115 = !DILocation(line: 1060, column: 40, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3108, file: !44, line: 1059, column: 73)
!3117 = !DILocation(line: 1060, column: 31, scope: !3116)
!3118 = !DILocation(line: 1060, column: 12, scope: !3119)
!3119 = !DILexicalBlockFile(scope: !3116, file: !44, discriminator: 1)
!3120 = !DILocation(line: 1060, column: 5, scope: !3116)
!3121 = !DILocation(line: 1060, column: 10, scope: !3116)
!3122 = !DILocation(line: 1061, column: 4, scope: !3116)
!3123 = !DILocation(line: 1062, column: 3, scope: !3116)
!3124 = !DILocation(line: 1063, column: 2, scope: !3109)
!3125 = !DILocation(line: 1064, column: 34, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3103, file: !44, line: 1063, column: 9)
!3127 = !DILocation(line: 1064, column: 11, scope: !3126)
!3128 = !DILocation(line: 1064, column: 4, scope: !3126)
!3129 = !DILocation(line: 1064, column: 9, scope: !3126)
!3130 = !DILocation(line: 1065, column: 8, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3126, file: !44, line: 1065, column: 7)
!3132 = !DILocation(line: 1065, column: 7, scope: !3131)
!3133 = !DILocation(line: 1065, column: 13, scope: !3131)
!3134 = !DILocation(line: 1065, column: 7, scope: !3126)
!3135 = !DILocation(line: 1065, column: 21, scope: !3136)
!3136 = !DILexicalBlockFile(scope: !3131, file: !44, discriminator: 1)
!3137 = !DILocation(line: 1067, column: 1, scope: !3041)
!3138 = distinct !DISubprogram(name: "sig_message_public", scope: !44, file: !44, line: 170, type: !3139, isLocal: true, isDefinition: true, scopeLine: 173, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{null, !174, !115, !115, !115, !115}
!3141 = !DILocalVariable(name: "server", arg: 1, scope: !3138, file: !44, line: 170, type: !174)
!3142 = !DILocation(line: 170, column: 44, scope: !3138)
!3143 = !DILocalVariable(name: "msg", arg: 2, scope: !3138, file: !44, line: 170, type: !115)
!3144 = !DILocation(line: 170, column: 64, scope: !3138)
!3145 = !DILocalVariable(name: "nick", arg: 3, scope: !3138, file: !44, line: 171, type: !115)
!3146 = !DILocation(line: 171, column: 23, scope: !3138)
!3147 = !DILocalVariable(name: "address", arg: 4, scope: !3138, file: !44, line: 171, type: !115)
!3148 = !DILocation(line: 171, column: 41, scope: !3138)
!3149 = !DILocalVariable(name: "target", arg: 5, scope: !3138, file: !44, line: 172, type: !115)
!3150 = !DILocation(line: 172, column: 23, scope: !3138)
!3151 = !DILocalVariable(name: "channel", scope: !3138, file: !44, line: 174, type: !158)
!3152 = !DILocation(line: 174, column: 15, scope: !3138)
!3153 = !DILocalVariable(name: "own", scope: !3138, file: !44, line: 175, type: !138)
!3154 = !DILocation(line: 175, column: 13, scope: !3138)
!3155 = !DILocation(line: 176, column: 2, scope: !3138)
!3156 = distinct !{!3156, !3155}
!3157 = !DILocation(line: 176, column: 10, scope: !3158)
!3158 = !DILexicalBlockFile(scope: !3159, file: !44, discriminator: 1)
!3159 = distinct !DILexicalBlock(scope: !3160, file: !44, line: 176, column: 10)
!3160 = distinct !DILexicalBlock(scope: !3138, file: !44, line: 176, column: 4)
!3161 = !DILocation(line: 176, column: 15, scope: !3158)
!3162 = !DILocation(line: 176, column: 5, scope: !3163)
!3163 = !DILexicalBlockFile(scope: !3164, file: !44, discriminator: 2)
!3164 = distinct !DILexicalBlock(scope: !3159, file: !44, line: 176, column: 3)
!3165 = !DILocation(line: 176, column: 14, scope: !3166)
!3166 = !DILexicalBlockFile(scope: !3167, file: !44, discriminator: 3)
!3167 = distinct !DILexicalBlock(scope: !3159, file: !44, line: 176, column: 12)
!3168 = !DILocation(line: 176, column: 99, scope: !3166)
!3169 = !DILocation(line: 176, column: 110, scope: !3170)
!3170 = !DILexicalBlockFile(scope: !3160, file: !44, discriminator: 4)
!3171 = !DILocation(line: 178, column: 25, scope: !3138)
!3172 = !DILocation(line: 178, column: 33, scope: !3138)
!3173 = !DILocation(line: 178, column: 12, scope: !3138)
!3174 = !DILocation(line: 178, column: 10, scope: !3138)
!3175 = !DILocation(line: 179, column: 6, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3138, file: !44, line: 179, column: 6)
!3177 = !DILocation(line: 179, column: 14, scope: !3176)
!3178 = !DILocation(line: 179, column: 6, scope: !3138)
!3179 = !DILocation(line: 180, column: 38, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3176, file: !44, line: 179, column: 22)
!3181 = !DILocation(line: 180, column: 47, scope: !3180)
!3182 = !DILocation(line: 180, column: 52, scope: !3180)
!3183 = !DILocation(line: 180, column: 60, scope: !3180)
!3184 = !DILocation(line: 180, column: 23, scope: !3180)
!3185 = !DILocation(line: 180, column: 21, scope: !3180)
!3186 = !DILocation(line: 181, column: 62, scope: !3180)
!3187 = !DILocation(line: 181, column: 72, scope: !3180)
!3188 = !DILocation(line: 181, column: 41, scope: !3180)
!3189 = !DILocation(line: 181, column: 18, scope: !3180)
!3190 = !DILocation(line: 181, column: 105, scope: !3180)
!3191 = !DILocation(line: 181, column: 115, scope: !3180)
!3192 = !DILocation(line: 181, column: 121, scope: !3180)
!3193 = !DILocation(line: 181, column: 126, scope: !3180)
!3194 = !DILocation(line: 181, column: 3, scope: !3195)
!3195 = !DILexicalBlockFile(scope: !3180, file: !44, discriminator: 1)
!3196 = !DILocation(line: 182, column: 2, scope: !3180)
!3197 = !DILocation(line: 183, column: 1, scope: !3138)
!3198 = distinct !DISubprogram(name: "sig_message_join", scope: !44, file: !44, line: 185, type: !3199, isLocal: true, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{null, !174, !115, !115, !115}
!3201 = !DILocalVariable(name: "server", arg: 1, scope: !3198, file: !44, line: 185, type: !174)
!3202 = !DILocation(line: 185, column: 42, scope: !3198)
!3203 = !DILocalVariable(name: "channel", arg: 2, scope: !3198, file: !44, line: 185, type: !115)
!3204 = !DILocation(line: 185, column: 62, scope: !3198)
!3205 = !DILocalVariable(name: "nick", arg: 3, scope: !3198, file: !44, line: 186, type: !115)
!3206 = !DILocation(line: 186, column: 21, scope: !3198)
!3207 = !DILocalVariable(name: "address", arg: 4, scope: !3198, file: !44, line: 186, type: !115)
!3208 = !DILocation(line: 186, column: 39, scope: !3198)
!3209 = !DILocalVariable(name: "chanrec", scope: !3198, file: !44, line: 188, type: !158)
!3210 = !DILocation(line: 188, column: 15, scope: !3198)
!3211 = !DILocation(line: 189, column: 2, scope: !3198)
!3212 = distinct !{!3212, !3211}
!3213 = !DILocation(line: 189, column: 10, scope: !3214)
!3214 = !DILexicalBlockFile(scope: !3215, file: !44, discriminator: 1)
!3215 = distinct !DILexicalBlock(scope: !3216, file: !44, line: 189, column: 10)
!3216 = distinct !DILexicalBlock(scope: !3198, file: !44, line: 189, column: 4)
!3217 = !DILocation(line: 189, column: 15, scope: !3214)
!3218 = !DILocation(line: 189, column: 5, scope: !3219)
!3219 = !DILexicalBlockFile(scope: !3220, file: !44, discriminator: 2)
!3220 = distinct !DILexicalBlock(scope: !3215, file: !44, line: 189, column: 3)
!3221 = !DILocation(line: 189, column: 14, scope: !3222)
!3222 = !DILexicalBlockFile(scope: !3223, file: !44, discriminator: 3)
!3223 = distinct !DILexicalBlock(scope: !3215, file: !44, line: 189, column: 12)
!3224 = !DILocation(line: 189, column: 99, scope: !3222)
!3225 = !DILocation(line: 189, column: 110, scope: !3226)
!3226 = !DILexicalBlockFile(scope: !3216, file: !44, discriminator: 4)
!3227 = !DILocation(line: 191, column: 25, scope: !3198)
!3228 = !DILocation(line: 191, column: 33, scope: !3198)
!3229 = !DILocation(line: 191, column: 12, scope: !3198)
!3230 = !DILocation(line: 191, column: 10, scope: !3198)
!3231 = !DILocation(line: 192, column: 6, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3198, file: !44, line: 192, column: 6)
!3233 = !DILocation(line: 192, column: 14, scope: !3232)
!3234 = !DILocation(line: 192, column: 6, scope: !3198)
!3235 = !DILocation(line: 193, column: 62, scope: !3232)
!3236 = !DILocation(line: 193, column: 72, scope: !3232)
!3237 = !DILocation(line: 193, column: 41, scope: !3232)
!3238 = !DILocation(line: 193, column: 18, scope: !3232)
!3239 = !DILocation(line: 193, column: 105, scope: !3232)
!3240 = !DILocation(line: 193, column: 115, scope: !3232)
!3241 = !DILocation(line: 193, column: 126, scope: !3232)
!3242 = !DILocation(line: 193, column: 3, scope: !3243)
!3243 = !DILexicalBlockFile(scope: !3232, file: !44, discriminator: 1)
!3244 = !DILocation(line: 193, column: 3, scope: !3232)
!3245 = !DILocation(line: 194, column: 1, scope: !3198)
!3246 = distinct !DISubprogram(name: "sig_message_private", scope: !44, file: !44, line: 196, type: !3199, isLocal: true, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!3247 = !DILocalVariable(name: "server", arg: 1, scope: !3246, file: !44, line: 196, type: !174)
!3248 = !DILocation(line: 196, column: 45, scope: !3246)
!3249 = !DILocalVariable(name: "msg", arg: 2, scope: !3246, file: !44, line: 196, type: !115)
!3250 = !DILocation(line: 196, column: 65, scope: !3246)
!3251 = !DILocalVariable(name: "nick", arg: 3, scope: !3246, file: !44, line: 197, type: !115)
!3252 = !DILocation(line: 197, column: 17, scope: !3246)
!3253 = !DILocalVariable(name: "address", arg: 4, scope: !3246, file: !44, line: 197, type: !115)
!3254 = !DILocation(line: 197, column: 35, scope: !3246)
!3255 = !DILocation(line: 199, column: 2, scope: !3246)
!3256 = distinct !{!3256, !3255}
!3257 = !DILocation(line: 199, column: 10, scope: !3258)
!3258 = !DILexicalBlockFile(scope: !3259, file: !44, discriminator: 1)
!3259 = distinct !DILexicalBlock(scope: !3260, file: !44, line: 199, column: 10)
!3260 = distinct !DILexicalBlock(scope: !3246, file: !44, line: 199, column: 4)
!3261 = !DILocation(line: 199, column: 17, scope: !3258)
!3262 = !DILocation(line: 199, column: 5, scope: !3263)
!3263 = !DILexicalBlockFile(scope: !3264, file: !44, discriminator: 2)
!3264 = distinct !DILexicalBlock(scope: !3259, file: !44, line: 199, column: 3)
!3265 = !DILocation(line: 199, column: 14, scope: !3266)
!3266 = !DILexicalBlockFile(scope: !3267, file: !44, discriminator: 3)
!3267 = distinct !DILexicalBlock(scope: !3259, file: !44, line: 199, column: 12)
!3268 = !DILocation(line: 199, column: 101, scope: !3266)
!3269 = !DILocation(line: 199, column: 112, scope: !3270)
!3270 = !DILexicalBlockFile(scope: !3260, file: !44, discriminator: 4)
!3271 = !DILocation(line: 200, column: 2, scope: !3246)
!3272 = distinct !{!3272, !3271}
!3273 = !DILocation(line: 200, column: 10, scope: !3274)
!3274 = !DILexicalBlockFile(scope: !3275, file: !44, discriminator: 1)
!3275 = distinct !DILexicalBlock(scope: !3276, file: !44, line: 200, column: 10)
!3276 = distinct !DILexicalBlock(scope: !3246, file: !44, line: 200, column: 4)
!3277 = !DILocation(line: 200, column: 15, scope: !3274)
!3278 = !DILocation(line: 200, column: 5, scope: !3279)
!3279 = !DILexicalBlockFile(scope: !3280, file: !44, discriminator: 2)
!3280 = distinct !DILexicalBlock(scope: !3275, file: !44, line: 200, column: 3)
!3281 = !DILocation(line: 200, column: 14, scope: !3282)
!3282 = !DILexicalBlockFile(scope: !3283, file: !44, discriminator: 3)
!3283 = distinct !DILexicalBlock(scope: !3275, file: !44, line: 200, column: 12)
!3284 = !DILocation(line: 200, column: 99, scope: !3282)
!3285 = !DILocation(line: 200, column: 110, scope: !3286)
!3286 = !DILexicalBlockFile(scope: !3276, file: !44, discriminator: 4)
!3287 = !DILocation(line: 202, column: 60, scope: !3246)
!3288 = !DILocation(line: 202, column: 69, scope: !3246)
!3289 = !DILocation(line: 202, column: 39, scope: !3246)
!3290 = !DILocation(line: 202, column: 17, scope: !3246)
!3291 = !DILocation(line: 202, column: 102, scope: !3246)
!3292 = !DILocation(line: 202, column: 112, scope: !3246)
!3293 = !DILocation(line: 202, column: 126, scope: !3246)
!3294 = !DILocation(line: 202, column: 2, scope: !3295)
!3295 = !DILexicalBlockFile(scope: !3246, file: !44, discriminator: 1)
!3296 = !DILocation(line: 203, column: 1, scope: !3246)
!3297 = !DILocation(line: 203, column: 1, scope: !3295)
!3298 = distinct !DISubprogram(name: "sig_message_own_public", scope: !44, file: !44, line: 205, type: !3199, isLocal: true, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!3299 = !DILocalVariable(name: "server", arg: 1, scope: !3298, file: !44, line: 205, type: !174)
!3300 = !DILocation(line: 205, column: 48, scope: !3298)
!3301 = !DILocalVariable(name: "msg", arg: 2, scope: !3298, file: !44, line: 205, type: !115)
!3302 = !DILocation(line: 205, column: 68, scope: !3298)
!3303 = !DILocalVariable(name: "target", arg: 3, scope: !3298, file: !44, line: 206, type: !115)
!3304 = !DILocation(line: 206, column: 20, scope: !3298)
!3305 = !DILocalVariable(name: "origtarget", arg: 4, scope: !3298, file: !44, line: 206, type: !115)
!3306 = !DILocation(line: 206, column: 40, scope: !3298)
!3307 = !DILocalVariable(name: "channel", scope: !3298, file: !44, line: 208, type: !158)
!3308 = !DILocation(line: 208, column: 15, scope: !3298)
!3309 = !DILocalVariable(name: "nick", scope: !3298, file: !44, line: 209, type: !542)
!3310 = !DILocation(line: 209, column: 12, scope: !3298)
!3311 = !DILocalVariable(name: "p", scope: !3298, file: !44, line: 210, type: !136)
!3312 = !DILocation(line: 210, column: 8, scope: !3298)
!3313 = !DILocalVariable(name: "msgnick", scope: !3298, file: !44, line: 210, type: !136)
!3314 = !DILocation(line: 210, column: 12, scope: !3298)
!3315 = !DILocation(line: 212, column: 2, scope: !3298)
!3316 = distinct !{!3316, !3315}
!3317 = !DILocation(line: 212, column: 10, scope: !3318)
!3318 = !DILexicalBlockFile(scope: !3319, file: !44, discriminator: 1)
!3319 = distinct !DILexicalBlock(scope: !3320, file: !44, line: 212, column: 10)
!3320 = distinct !DILexicalBlock(scope: !3298, file: !44, line: 212, column: 4)
!3321 = !DILocation(line: 212, column: 17, scope: !3318)
!3322 = !DILocation(line: 212, column: 5, scope: !3323)
!3323 = !DILexicalBlockFile(scope: !3324, file: !44, discriminator: 2)
!3324 = distinct !DILexicalBlock(scope: !3319, file: !44, line: 212, column: 3)
!3325 = !DILocation(line: 212, column: 14, scope: !3326)
!3326 = !DILexicalBlockFile(scope: !3327, file: !44, discriminator: 3)
!3327 = distinct !DILexicalBlock(scope: !3319, file: !44, line: 212, column: 12)
!3328 = !DILocation(line: 212, column: 101, scope: !3326)
!3329 = !DILocation(line: 212, column: 112, scope: !3330)
!3330 = !DILexicalBlockFile(scope: !3320, file: !44, discriminator: 4)
!3331 = !DILocation(line: 213, column: 2, scope: !3298)
!3332 = distinct !{!3332, !3331}
!3333 = !DILocation(line: 213, column: 10, scope: !3334)
!3334 = !DILexicalBlockFile(scope: !3335, file: !44, discriminator: 1)
!3335 = distinct !DILexicalBlock(scope: !3336, file: !44, line: 213, column: 10)
!3336 = distinct !DILexicalBlock(scope: !3298, file: !44, line: 213, column: 4)
!3337 = !DILocation(line: 213, column: 14, scope: !3334)
!3338 = !DILocation(line: 213, column: 5, scope: !3339)
!3339 = !DILexicalBlockFile(scope: !3340, file: !44, discriminator: 2)
!3340 = distinct !DILexicalBlock(scope: !3335, file: !44, line: 213, column: 3)
!3341 = !DILocation(line: 213, column: 14, scope: !3342)
!3342 = !DILexicalBlockFile(scope: !3343, file: !44, discriminator: 3)
!3343 = distinct !DILexicalBlock(scope: !3335, file: !44, line: 213, column: 12)
!3344 = !DILocation(line: 213, column: 98, scope: !3342)
!3345 = !DILocation(line: 213, column: 109, scope: !3346)
!3346 = !DILexicalBlockFile(scope: !3336, file: !44, discriminator: 4)
!3347 = !DILocation(line: 214, column: 13, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3298, file: !44, line: 214, column: 13)
!3349 = !DILocation(line: 214, column: 20, scope: !3348)
!3350 = !DILocation(line: 214, column: 13, scope: !3298)
!3351 = !DILocation(line: 214, column: 28, scope: !3352)
!3352 = !DILexicalBlockFile(scope: !3348, file: !44, discriminator: 1)
!3353 = !DILocation(line: 216, column: 32, scope: !3298)
!3354 = !DILocation(line: 216, column: 40, scope: !3298)
!3355 = !DILocation(line: 216, column: 19, scope: !3298)
!3356 = !DILocation(line: 216, column: 17, scope: !3298)
!3357 = !DILocation(line: 217, column: 6, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3298, file: !44, line: 217, column: 6)
!3359 = !DILocation(line: 217, column: 14, scope: !3358)
!3360 = !DILocation(line: 217, column: 6, scope: !3298)
!3361 = !DILocation(line: 218, column: 3, scope: !3358)
!3362 = !DILocation(line: 222, column: 13, scope: !3298)
!3363 = !DILocation(line: 222, column: 6, scope: !3298)
!3364 = !DILocation(line: 222, column: 4, scope: !3298)
!3365 = !DILocation(line: 223, column: 6, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3298, file: !44, line: 223, column: 6)
!3367 = !DILocation(line: 223, column: 8, scope: !3366)
!3368 = !DILocation(line: 223, column: 15, scope: !3366)
!3369 = !DILocation(line: 223, column: 18, scope: !3370)
!3370 = !DILexicalBlockFile(scope: !3366, file: !44, discriminator: 1)
!3371 = !DILocation(line: 223, column: 23, scope: !3370)
!3372 = !DILocation(line: 223, column: 20, scope: !3370)
!3373 = !DILocation(line: 223, column: 6, scope: !3370)
!3374 = !DILocation(line: 224, column: 23, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3366, file: !44, line: 223, column: 28)
!3376 = !DILocation(line: 224, column: 35, scope: !3375)
!3377 = !DILocation(line: 224, column: 37, scope: !3375)
!3378 = !DILocation(line: 224, column: 36, scope: !3375)
!3379 = !DILocation(line: 224, column: 28, scope: !3375)
!3380 = !DILocation(line: 224, column: 13, scope: !3375)
!3381 = !DILocation(line: 224, column: 11, scope: !3375)
!3382 = !DILocation(line: 225, column: 24, scope: !3375)
!3383 = !DILocation(line: 225, column: 33, scope: !3375)
!3384 = !DILocation(line: 225, column: 10, scope: !3375)
!3385 = !DILocation(line: 225, column: 8, scope: !3375)
!3386 = !DILocation(line: 226, column: 7, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3375, file: !44, line: 226, column: 7)
!3388 = !DILocation(line: 226, column: 12, scope: !3387)
!3389 = !DILocation(line: 226, column: 19, scope: !3387)
!3390 = !DILocation(line: 226, column: 22, scope: !3391)
!3391 = !DILexicalBlockFile(scope: !3387, file: !44, discriminator: 1)
!3392 = !DILocation(line: 226, column: 33, scope: !3391)
!3393 = !DILocation(line: 226, column: 7, scope: !3391)
!3394 = !DILocation(line: 229, column: 19, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3387, file: !44, line: 226, column: 42)
!3396 = !DILocation(line: 229, column: 12, scope: !3395)
!3397 = !DILocation(line: 229, column: 27, scope: !3395)
!3398 = !DILocation(line: 229, column: 4, scope: !3395)
!3399 = !DILocation(line: 229, column: 31, scope: !3395)
!3400 = !DILocation(line: 230, column: 25, scope: !3395)
!3401 = !DILocation(line: 230, column: 34, scope: !3395)
!3402 = !DILocation(line: 230, column: 11, scope: !3395)
!3403 = !DILocation(line: 230, column: 9, scope: !3395)
!3404 = !DILocation(line: 231, column: 3, scope: !3395)
!3405 = !DILocation(line: 232, column: 24, scope: !3375)
!3406 = !DILocation(line: 232, column: 17, scope: !3375)
!3407 = !DILocation(line: 233, column: 7, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3375, file: !44, line: 233, column: 7)
!3409 = !DILocation(line: 233, column: 12, scope: !3408)
!3410 = !DILocation(line: 233, column: 19, scope: !3408)
!3411 = !DILocation(line: 233, column: 22, scope: !3412)
!3412 = !DILexicalBlockFile(scope: !3408, file: !44, discriminator: 1)
!3413 = !DILocation(line: 233, column: 30, scope: !3412)
!3414 = !DILocation(line: 233, column: 39, scope: !3412)
!3415 = !DILocation(line: 233, column: 27, scope: !3412)
!3416 = !DILocation(line: 233, column: 7, scope: !3412)
!3417 = !DILocation(line: 234, column: 63, scope: !3408)
!3418 = !DILocation(line: 234, column: 73, scope: !3408)
!3419 = !DILocation(line: 234, column: 42, scope: !3408)
!3420 = !DILocation(line: 234, column: 19, scope: !3408)
!3421 = !DILocation(line: 234, column: 106, scope: !3408)
!3422 = !DILocation(line: 234, column: 116, scope: !3408)
!3423 = !DILocation(line: 234, column: 122, scope: !3408)
!3424 = !DILocation(line: 234, column: 136, scope: !3408)
!3425 = !DILocation(line: 234, column: 4, scope: !3412)
!3426 = !DILocation(line: 234, column: 4, scope: !3408)
!3427 = !DILocation(line: 235, column: 2, scope: !3375)
!3428 = !DILocation(line: 236, column: 1, scope: !3298)
!3429 = distinct !DISubprogram(name: "sig_message_own_private", scope: !44, file: !44, line: 238, type: !3199, isLocal: true, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!3430 = !DILocalVariable(name: "server", arg: 1, scope: !3429, file: !44, line: 238, type: !174)
!3431 = !DILocation(line: 238, column: 49, scope: !3429)
!3432 = !DILocalVariable(name: "msg", arg: 2, scope: !3429, file: !44, line: 238, type: !115)
!3433 = !DILocation(line: 238, column: 69, scope: !3429)
!3434 = !DILocalVariable(name: "target", arg: 3, scope: !3429, file: !44, line: 239, type: !115)
!3435 = !DILocation(line: 239, column: 21, scope: !3429)
!3436 = !DILocalVariable(name: "origtarget", arg: 4, scope: !3429, file: !44, line: 239, type: !115)
!3437 = !DILocation(line: 239, column: 41, scope: !3429)
!3438 = !DILocation(line: 241, column: 2, scope: !3429)
!3439 = distinct !{!3439, !3438}
!3440 = !DILocation(line: 241, column: 10, scope: !3441)
!3441 = !DILexicalBlockFile(scope: !3442, file: !44, discriminator: 1)
!3442 = distinct !DILexicalBlock(scope: !3443, file: !44, line: 241, column: 10)
!3443 = distinct !DILexicalBlock(scope: !3429, file: !44, line: 241, column: 4)
!3444 = !DILocation(line: 241, column: 17, scope: !3441)
!3445 = !DILocation(line: 241, column: 5, scope: !3446)
!3446 = !DILexicalBlockFile(scope: !3447, file: !44, discriminator: 2)
!3447 = distinct !DILexicalBlock(scope: !3442, file: !44, line: 241, column: 3)
!3448 = !DILocation(line: 241, column: 14, scope: !3449)
!3449 = !DILexicalBlockFile(scope: !3450, file: !44, discriminator: 3)
!3450 = distinct !DILexicalBlock(scope: !3442, file: !44, line: 241, column: 12)
!3451 = !DILocation(line: 241, column: 101, scope: !3449)
!3452 = !DILocation(line: 241, column: 112, scope: !3453)
!3453 = !DILexicalBlockFile(scope: !3443, file: !44, discriminator: 4)
!3454 = !DILocation(line: 243, column: 6, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3429, file: !44, line: 243, column: 6)
!3456 = !DILocation(line: 243, column: 13, scope: !3455)
!3457 = !DILocation(line: 243, column: 20, scope: !3455)
!3458 = !DILocation(line: 243, column: 34, scope: !3459)
!3459 = !DILexicalBlockFile(scope: !3455, file: !44, discriminator: 1)
!3460 = !DILocation(line: 243, column: 42, scope: !3459)
!3461 = !DILocation(line: 243, column: 23, scope: !3459)
!3462 = !DILocation(line: 243, column: 50, scope: !3459)
!3463 = !DILocation(line: 243, column: 6, scope: !3459)
!3464 = !DILocation(line: 244, column: 61, scope: !3455)
!3465 = !DILocation(line: 244, column: 70, scope: !3455)
!3466 = !DILocation(line: 244, column: 40, scope: !3455)
!3467 = !DILocation(line: 244, column: 18, scope: !3455)
!3468 = !DILocation(line: 244, column: 103, scope: !3455)
!3469 = !DILocation(line: 244, column: 113, scope: !3455)
!3470 = !DILocation(line: 244, column: 129, scope: !3455)
!3471 = !DILocation(line: 244, column: 3, scope: !3459)
!3472 = !DILocation(line: 244, column: 3, scope: !3455)
!3473 = !DILocation(line: 245, column: 1, scope: !3429)
!3474 = distinct !DISubprogram(name: "sig_nick_removed", scope: !44, file: !44, line: 247, type: !3475, isLocal: true, isDefinition: true, scopeLine: 248, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{null, !158, !542}
!3477 = !DILocalVariable(name: "channel", arg: 1, scope: !3474, file: !44, line: 247, type: !158)
!3478 = !DILocation(line: 247, column: 43, scope: !3474)
!3479 = !DILocalVariable(name: "nick", arg: 2, scope: !3474, file: !44, line: 247, type: !542)
!3480 = !DILocation(line: 247, column: 62, scope: !3474)
!3481 = !DILocalVariable(name: "mchannel", scope: !3474, file: !44, line: 249, type: !586)
!3482 = !DILocation(line: 249, column: 29, scope: !3474)
!3483 = !DILocalVariable(name: "rec", scope: !3474, file: !44, line: 250, type: !124)
!3484 = !DILocation(line: 250, column: 16, scope: !3474)
!3485 = !DILocation(line: 252, column: 41, scope: !3474)
!3486 = !DILocation(line: 252, column: 51, scope: !3474)
!3487 = !DILocation(line: 252, column: 20, scope: !3474)
!3488 = !DILocation(line: 252, column: 18, scope: !3474)
!3489 = !DILocation(line: 253, column: 22, scope: !3474)
!3490 = !DILocation(line: 253, column: 32, scope: !3474)
!3491 = !DILocation(line: 253, column: 42, scope: !3474)
!3492 = !DILocation(line: 253, column: 48, scope: !3474)
!3493 = !DILocation(line: 253, column: 8, scope: !3474)
!3494 = !DILocation(line: 253, column: 6, scope: !3474)
!3495 = !DILocation(line: 254, column: 6, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3474, file: !44, line: 254, column: 6)
!3497 = !DILocation(line: 254, column: 10, scope: !3496)
!3498 = !DILocation(line: 254, column: 6, scope: !3474)
!3499 = !DILocation(line: 254, column: 36, scope: !3500)
!3500 = !DILexicalBlockFile(scope: !3496, file: !44, discriminator: 1)
!3501 = !DILocation(line: 254, column: 46, scope: !3500)
!3502 = !DILocation(line: 254, column: 56, scope: !3500)
!3503 = !DILocation(line: 254, column: 18, scope: !3500)
!3504 = !DILocation(line: 255, column: 1, scope: !3474)
!3505 = distinct !DISubprogram(name: "sig_nick_changed", scope: !44, file: !44, line: 257, type: !3506, isLocal: true, isDefinition: true, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!3506 = !DISubroutineType(types: !3507)
!3507 = !{null, !158, !542, !115}
!3508 = !DILocalVariable(name: "channel", arg: 1, scope: !3505, file: !44, line: 257, type: !158)
!3509 = !DILocation(line: 257, column: 43, scope: !3505)
!3510 = !DILocalVariable(name: "nick", arg: 2, scope: !3505, file: !44, line: 257, type: !542)
!3511 = !DILocation(line: 257, column: 62, scope: !3505)
!3512 = !DILocalVariable(name: "oldnick", arg: 3, scope: !3505, file: !44, line: 258, type: !115)
!3513 = !DILocation(line: 258, column: 21, scope: !3505)
!3514 = !DILocalVariable(name: "mchannel", scope: !3505, file: !44, line: 260, type: !586)
!3515 = !DILocation(line: 260, column: 29, scope: !3505)
!3516 = !DILocalVariable(name: "rec", scope: !3505, file: !44, line: 261, type: !124)
!3517 = !DILocation(line: 261, column: 16, scope: !3505)
!3518 = !DILocation(line: 263, column: 41, scope: !3505)
!3519 = !DILocation(line: 263, column: 51, scope: !3505)
!3520 = !DILocation(line: 263, column: 20, scope: !3505)
!3521 = !DILocation(line: 263, column: 18, scope: !3505)
!3522 = !DILocation(line: 264, column: 22, scope: !3505)
!3523 = !DILocation(line: 264, column: 32, scope: !3505)
!3524 = !DILocation(line: 264, column: 42, scope: !3505)
!3525 = !DILocation(line: 264, column: 8, scope: !3505)
!3526 = !DILocation(line: 264, column: 6, scope: !3505)
!3527 = !DILocation(line: 265, column: 6, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3505, file: !44, line: 265, column: 6)
!3529 = !DILocation(line: 265, column: 10, scope: !3528)
!3530 = !DILocation(line: 265, column: 6, scope: !3505)
!3531 = !DILocation(line: 266, column: 10, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3528, file: !44, line: 265, column: 18)
!3533 = !DILocation(line: 266, column: 15, scope: !3532)
!3534 = !DILocation(line: 266, column: 3, scope: !3532)
!3535 = !DILocation(line: 267, column: 24, scope: !3532)
!3536 = !DILocation(line: 267, column: 30, scope: !3532)
!3537 = !DILocation(line: 267, column: 15, scope: !3532)
!3538 = !DILocation(line: 267, column: 3, scope: !3532)
!3539 = !DILocation(line: 267, column: 8, scope: !3532)
!3540 = !DILocation(line: 267, column: 13, scope: !3532)
!3541 = !DILocation(line: 268, column: 2, scope: !3532)
!3542 = !DILocation(line: 269, column: 1, scope: !3505)
!3543 = distinct !DISubprogram(name: "event_text", scope: !44, file: !44, line: 1147, type: !3544, isLocal: true, isDefinition: true, scopeLine: 1148, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{null, !115, !174, !497}
!3546 = !DILocalVariable(name: "data", arg: 1, scope: !3543, file: !44, line: 1147, type: !115)
!3547 = !DILocation(line: 1147, column: 36, scope: !3543)
!3548 = !DILocalVariable(name: "server", arg: 2, scope: !3543, file: !44, line: 1147, type: !174)
!3549 = !DILocation(line: 1147, column: 54, scope: !3543)
!3550 = !DILocalVariable(name: "item", arg: 3, scope: !3543, file: !44, line: 1147, type: !497)
!3551 = !DILocation(line: 1147, column: 75, scope: !3543)
!3552 = !DILocalVariable(name: "line", scope: !3543, file: !44, line: 1149, type: !136)
!3553 = !DILocation(line: 1149, column: 8, scope: !3543)
!3554 = !DILocalVariable(name: "str", scope: !3543, file: !44, line: 1149, type: !136)
!3555 = !DILocation(line: 1149, column: 15, scope: !3543)
!3556 = !DILocalVariable(name: "target", scope: !3543, file: !44, line: 1149, type: !136)
!3557 = !DILocation(line: 1149, column: 21, scope: !3543)
!3558 = !DILocation(line: 1151, column: 2, scope: !3543)
!3559 = distinct !{!3559, !3558}
!3560 = !DILocation(line: 1151, column: 10, scope: !3561)
!3561 = !DILexicalBlockFile(scope: !3562, file: !44, discriminator: 1)
!3562 = distinct !DILexicalBlock(scope: !3563, file: !44, line: 1151, column: 10)
!3563 = distinct !DILexicalBlock(scope: !3543, file: !44, line: 1151, column: 4)
!3564 = !DILocation(line: 1151, column: 15, scope: !3561)
!3565 = !DILocation(line: 1151, column: 5, scope: !3566)
!3566 = !DILexicalBlockFile(scope: !3567, file: !44, discriminator: 2)
!3567 = distinct !DILexicalBlock(scope: !3562, file: !44, line: 1151, column: 3)
!3568 = !DILocation(line: 1151, column: 14, scope: !3569)
!3569 = !DILexicalBlockFile(scope: !3570, file: !44, discriminator: 3)
!3570 = distinct !DILexicalBlock(scope: !3562, file: !44, line: 1151, column: 12)
!3571 = !DILocation(line: 1151, column: 99, scope: !3569)
!3572 = !DILocation(line: 1151, column: 110, scope: !3573)
!3573 = !DILexicalBlockFile(scope: !3563, file: !44, discriminator: 4)
!3574 = !DILocation(line: 1153, column: 6, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3543, file: !44, line: 1153, column: 6)
!3576 = !DILocation(line: 1153, column: 11, scope: !3575)
!3577 = !DILocation(line: 1153, column: 6, scope: !3543)
!3578 = !DILocation(line: 1154, column: 3, scope: !3575)
!3579 = !DILocation(line: 1156, column: 7, scope: !3580)
!3580 = distinct !DILexicalBlock(scope: !3543, file: !44, line: 1156, column: 6)
!3581 = !DILocation(line: 1156, column: 6, scope: !3580)
!3582 = !DILocation(line: 1156, column: 12, scope: !3580)
!3583 = !DILocation(line: 1156, column: 6, scope: !3543)
!3584 = !DILocation(line: 1158, column: 17, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3580, file: !44, line: 1156, column: 21)
!3586 = !DILocation(line: 1159, column: 3, scope: !3585)
!3587 = !DILocation(line: 1162, column: 9, scope: !3543)
!3588 = !DILocation(line: 1163, column: 18, scope: !3543)
!3589 = !DILocation(line: 1163, column: 24, scope: !3543)
!3590 = !DILocation(line: 1163, column: 32, scope: !3543)
!3591 = !DILocation(line: 1163, column: 3, scope: !3543)
!3592 = !DILocation(line: 1162, column: 9, scope: !3593)
!3593 = !DILexicalBlockFile(scope: !3543, file: !44, discriminator: 1)
!3594 = !DILocation(line: 1163, column: 49, scope: !3593)
!3595 = !DILocation(line: 1163, column: 40, scope: !3593)
!3596 = !DILocation(line: 1162, column: 9, scope: !3597)
!3597 = !DILexicalBlockFile(scope: !3543, file: !44, discriminator: 2)
!3598 = !DILocation(line: 1162, column: 9, scope: !3599)
!3599 = !DILexicalBlockFile(scope: !3543, file: !44, discriminator: 3)
!3600 = !DILocation(line: 1162, column: 7, scope: !3599)
!3601 = !DILocation(line: 1166, column: 6, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !3543, file: !44, line: 1166, column: 6)
!3603 = !DILocation(line: 1166, column: 22, scope: !3602)
!3604 = !DILocation(line: 1166, column: 68, scope: !3605)
!3605 = !DILexicalBlockFile(scope: !3602, file: !44, discriminator: 1)
!3606 = !DILocation(line: 1166, column: 43, scope: !3605)
!3607 = !DILocation(line: 1166, column: 27, scope: !3605)
!3608 = !DILocation(line: 1166, column: 6, scope: !3605)
!3609 = !DILocation(line: 1166, column: 26, scope: !3610)
!3610 = !DILexicalBlockFile(scope: !3602, file: !44, discriminator: 2)
!3611 = !DILocation(line: 1166, column: 6, scope: !3599)
!3612 = !DILocation(line: 1167, column: 65, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3602, file: !44, line: 1166, column: 75)
!3614 = !DILocation(line: 1167, column: 40, scope: !3613)
!3615 = !DILocation(line: 1167, column: 24, scope: !3613)
!3616 = !DILocation(line: 1167, column: 57, scope: !3613)
!3617 = !DILocation(line: 1167, column: 9, scope: !3618)
!3618 = !DILexicalBlockFile(scope: !3613, file: !44, discriminator: 1)
!3619 = !DILocation(line: 1167, column: 7, scope: !3613)
!3620 = !DILocation(line: 1168, column: 7, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3613, file: !44, line: 1168, column: 7)
!3622 = !DILocation(line: 1168, column: 11, scope: !3621)
!3623 = !DILocation(line: 1168, column: 7, scope: !3613)
!3624 = !DILocation(line: 1169, column: 11, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3621, file: !44, line: 1168, column: 19)
!3626 = !DILocation(line: 1169, column: 4, scope: !3625)
!3627 = !DILocation(line: 1170, column: 32, scope: !3625)
!3628 = !DILocation(line: 1170, column: 30, scope: !3625)
!3629 = !DILocation(line: 1171, column: 3, scope: !3625)
!3630 = !DILocation(line: 1172, column: 2, scope: !3613)
!3631 = !DILocation(line: 1177, column: 27, scope: !3543)
!3632 = !DILocation(line: 1177, column: 34, scope: !3543)
!3633 = !DILocation(line: 1177, column: 45, scope: !3543)
!3634 = !DILocation(line: 1177, column: 26, scope: !3543)
!3635 = !DILocation(line: 1177, column: 11, scope: !3593)
!3636 = !DILocation(line: 1177, column: 9, scope: !3543)
!3637 = !DILocation(line: 1178, column: 67, scope: !3543)
!3638 = !DILocation(line: 1178, column: 42, scope: !3543)
!3639 = !DILocation(line: 1178, column: 26, scope: !3543)
!3640 = !DILocation(line: 1178, column: 24, scope: !3543)
!3641 = !DILocation(line: 1178, column: 25, scope: !3593)
!3642 = !DILocation(line: 1178, column: 24, scope: !3597)
!3643 = !DILocation(line: 1178, column: 24, scope: !3599)
!3644 = !DILocation(line: 1179, column: 51, scope: !3543)
!3645 = !DILocation(line: 1179, column: 26, scope: !3543)
!3646 = !DILocation(line: 1179, column: 12, scope: !3543)
!3647 = !DILocation(line: 1179, column: 11, scope: !3543)
!3648 = !DILocation(line: 1179, column: 10, scope: !3543)
!3649 = !DILocation(line: 1178, column: 24, scope: !3650)
!3650 = !DILexicalBlockFile(scope: !3543, file: !44, discriminator: 4)
!3651 = !DILocation(line: 1178, column: 24, scope: !3652)
!3652 = !DILexicalBlockFile(scope: !3543, file: !44, discriminator: 5)
!3653 = !DILocation(line: 1180, column: 10, scope: !3543)
!3654 = !DILocation(line: 1180, column: 18, scope: !3543)
!3655 = !DILocation(line: 1178, column: 8, scope: !3652)
!3656 = !DILocation(line: 1178, column: 6, scope: !3652)
!3657 = !DILocation(line: 1181, column: 9, scope: !3543)
!3658 = !DILocation(line: 1181, column: 2, scope: !3543)
!3659 = !DILocation(line: 1183, column: 32, scope: !3543)
!3660 = !DILocation(line: 1183, column: 37, scope: !3543)
!3661 = !DILocation(line: 1183, column: 45, scope: !3543)
!3662 = !DILocation(line: 1183, column: 2, scope: !3543)
!3663 = !DILocation(line: 1185, column: 9, scope: !3543)
!3664 = !DILocation(line: 1185, column: 2, scope: !3543)
!3665 = !DILocation(line: 1186, column: 9, scope: !3543)
!3666 = !DILocation(line: 1186, column: 2, scope: !3543)
!3667 = !DILocation(line: 1188, column: 2, scope: !3543)
!3668 = !DILocation(line: 1189, column: 1, scope: !3543)
!3669 = !DILocation(line: 1189, column: 1, scope: !3593)
!3670 = distinct !DISubprogram(name: "sig_server_disconnected", scope: !44, file: !44, line: 1191, type: !3671, isLocal: true, isDefinition: true, scopeLine: 1192, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{null, !174}
!3673 = !DILocalVariable(name: "server", arg: 1, scope: !3670, file: !44, line: 1191, type: !174)
!3674 = !DILocation(line: 1191, column: 49, scope: !3670)
!3675 = !DILocalVariable(name: "mserver", scope: !3670, file: !44, line: 1193, type: !139)
!3676 = !DILocation(line: 1193, column: 21, scope: !3670)
!3677 = !DILocation(line: 1195, column: 2, scope: !3670)
!3678 = distinct !{!3678, !3677}
!3679 = !DILocation(line: 1195, column: 10, scope: !3680)
!3680 = !DILexicalBlockFile(scope: !3681, file: !44, discriminator: 1)
!3681 = distinct !DILexicalBlock(scope: !3682, file: !44, line: 1195, column: 10)
!3682 = distinct !DILexicalBlock(scope: !3670, file: !44, line: 1195, column: 4)
!3683 = !DILocation(line: 1195, column: 17, scope: !3680)
!3684 = !DILocation(line: 1195, column: 5, scope: !3685)
!3685 = !DILexicalBlockFile(scope: !3686, file: !44, discriminator: 2)
!3686 = distinct !DILexicalBlock(scope: !3681, file: !44, line: 1195, column: 3)
!3687 = !DILocation(line: 1195, column: 14, scope: !3688)
!3688 = !DILexicalBlockFile(scope: !3689, file: !44, discriminator: 3)
!3689 = distinct !DILexicalBlock(scope: !3681, file: !44, line: 1195, column: 12)
!3690 = !DILocation(line: 1195, column: 101, scope: !3688)
!3691 = !DILocation(line: 1195, column: 112, scope: !3692)
!3692 = !DILexicalBlockFile(scope: !3682, file: !44, discriminator: 4)
!3693 = !DILocation(line: 1197, column: 40, scope: !3670)
!3694 = !DILocation(line: 1197, column: 49, scope: !3670)
!3695 = !DILocation(line: 1197, column: 19, scope: !3670)
!3696 = !DILocation(line: 1197, column: 17, scope: !3670)
!3697 = !DILocation(line: 1198, column: 2, scope: !3670)
!3698 = !DILocation(line: 1198, column: 9, scope: !3699)
!3699 = !DILexicalBlockFile(scope: !3670, file: !44, discriminator: 1)
!3700 = !DILocation(line: 1198, column: 18, scope: !3699)
!3701 = !DILocation(line: 1198, column: 2, scope: !3699)
!3702 = !DILocation(line: 1199, column: 35, scope: !3670)
!3703 = !DILocation(line: 1199, column: 44, scope: !3670)
!3704 = !DILocation(line: 1199, column: 54, scope: !3670)
!3705 = !DILocation(line: 1199, column: 63, scope: !3670)
!3706 = !DILocation(line: 1199, column: 73, scope: !3670)
!3707 = !DILocation(line: 1199, column: 17, scope: !3670)
!3708 = !DILocation(line: 1198, column: 2, scope: !3709)
!3709 = !DILexicalBlockFile(scope: !3670, file: !44, discriminator: 2)
!3710 = distinct !{!3710, !3697}
!3711 = !DILocation(line: 1200, column: 1, scope: !3670)
!3712 = distinct !DISubprogram(name: "sig_channel_destroyed", scope: !44, file: !44, line: 1202, type: !3713, isLocal: true, isDefinition: true, scopeLine: 1203, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{null, !158}
!3715 = !DILocalVariable(name: "channel", arg: 1, scope: !3712, file: !44, line: 1202, type: !158)
!3716 = !DILocation(line: 1202, column: 48, scope: !3712)
!3717 = !DILocalVariable(name: "mchannel", scope: !3712, file: !44, line: 1204, type: !586)
!3718 = !DILocation(line: 1204, column: 22, scope: !3712)
!3719 = !DILocation(line: 1206, column: 2, scope: !3712)
!3720 = distinct !{!3720, !3719}
!3721 = !DILocation(line: 1206, column: 10, scope: !3722)
!3722 = !DILexicalBlockFile(scope: !3723, file: !44, discriminator: 1)
!3723 = distinct !DILexicalBlock(scope: !3724, file: !44, line: 1206, column: 10)
!3724 = distinct !DILexicalBlock(scope: !3712, file: !44, line: 1206, column: 4)
!3725 = !DILocation(line: 1206, column: 18, scope: !3722)
!3726 = !DILocation(line: 1206, column: 5, scope: !3727)
!3727 = !DILexicalBlockFile(scope: !3728, file: !44, discriminator: 2)
!3728 = distinct !DILexicalBlock(scope: !3723, file: !44, line: 1206, column: 3)
!3729 = !DILocation(line: 1206, column: 14, scope: !3730)
!3730 = !DILexicalBlockFile(scope: !3731, file: !44, discriminator: 3)
!3731 = distinct !DILexicalBlock(scope: !3723, file: !44, line: 1206, column: 12)
!3732 = !DILocation(line: 1206, column: 102, scope: !3730)
!3733 = !DILocation(line: 1206, column: 113, scope: !3734)
!3734 = !DILexicalBlockFile(scope: !3724, file: !44, discriminator: 4)
!3735 = !DILocation(line: 1208, column: 41, scope: !3712)
!3736 = !DILocation(line: 1208, column: 51, scope: !3712)
!3737 = !DILocation(line: 1208, column: 20, scope: !3712)
!3738 = !DILocation(line: 1208, column: 18, scope: !3712)
!3739 = !DILocation(line: 1209, column: 2, scope: !3712)
!3740 = !DILocation(line: 1209, column: 9, scope: !3741)
!3741 = !DILexicalBlockFile(scope: !3712, file: !44, discriminator: 1)
!3742 = !DILocation(line: 1209, column: 19, scope: !3741)
!3743 = !DILocation(line: 1209, column: 28, scope: !3741)
!3744 = !DILocation(line: 1209, column: 2, scope: !3741)
!3745 = !DILocation(line: 1210, column: 21, scope: !3746)
!3746 = distinct !DILexicalBlock(scope: !3712, file: !44, line: 1209, column: 36)
!3747 = !DILocation(line: 1210, column: 31, scope: !3746)
!3748 = !DILocation(line: 1211, column: 6, scope: !3746)
!3749 = !DILocation(line: 1211, column: 16, scope: !3746)
!3750 = !DILocation(line: 1211, column: 26, scope: !3746)
!3751 = !DILocation(line: 1210, column: 3, scope: !3746)
!3752 = !DILocation(line: 1209, column: 2, scope: !3753)
!3753 = !DILexicalBlockFile(scope: !3712, file: !44, discriminator: 2)
!3754 = distinct !{!3754, !3739}
!3755 = !DILocation(line: 1213, column: 1, scope: !3712)
!3756 = distinct !DISubprogram(name: "chat_completion_deinit", scope: !44, file: !44, line: 1287, type: !326, isLocal: false, isDefinition: true, scopeLine: 1288, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!3757 = !DILocation(line: 1289, column: 2, scope: !3756)
!3758 = !DILocation(line: 1289, column: 9, scope: !3759)
!3759 = !DILexicalBlockFile(scope: !3756, file: !44, discriminator: 1)
!3760 = !DILocation(line: 1289, column: 25, scope: !3759)
!3761 = !DILocation(line: 1289, column: 2, scope: !3759)
!3762 = !DILocation(line: 1290, column: 38, scope: !3756)
!3763 = !DILocation(line: 1290, column: 55, scope: !3756)
!3764 = !DILocation(line: 1290, column: 3, scope: !3756)
!3765 = !DILocation(line: 1289, column: 2, scope: !3766)
!3766 = !DILexicalBlockFile(scope: !3756, file: !44, discriminator: 2)
!3767 = distinct !{!3767, !3757}
!3768 = !DILocation(line: 1292, column: 2, scope: !3756)
!3769 = !DILocation(line: 1293, column: 2, scope: !3756)
!3770 = !DILocation(line: 1294, column: 2, scope: !3756)
!3771 = !DILocation(line: 1295, column: 2, scope: !3756)
!3772 = !DILocation(line: 1296, column: 2, scope: !3756)
!3773 = !DILocation(line: 1297, column: 2, scope: !3756)
!3774 = !DILocation(line: 1298, column: 2, scope: !3756)
!3775 = !DILocation(line: 1299, column: 2, scope: !3756)
!3776 = !DILocation(line: 1300, column: 2, scope: !3756)
!3777 = !DILocation(line: 1301, column: 2, scope: !3756)
!3778 = !DILocation(line: 1302, column: 2, scope: !3756)
!3779 = !DILocation(line: 1303, column: 2, scope: !3756)
!3780 = !DILocation(line: 1304, column: 2, scope: !3756)
!3781 = !DILocation(line: 1305, column: 2, scope: !3756)
!3782 = !DILocation(line: 1306, column: 2, scope: !3756)
!3783 = !DILocation(line: 1307, column: 2, scope: !3756)
!3784 = !DILocation(line: 1308, column: 2, scope: !3756)
!3785 = !DILocation(line: 1309, column: 2, scope: !3756)
!3786 = !DILocation(line: 1310, column: 2, scope: !3756)
!3787 = !DILocation(line: 1311, column: 2, scope: !3756)
!3788 = !DILocation(line: 1312, column: 2, scope: !3756)
!3789 = !DILocation(line: 1313, column: 2, scope: !3756)
!3790 = !DILocation(line: 1314, column: 2, scope: !3756)
!3791 = !DILocation(line: 1315, column: 2, scope: !3756)
!3792 = !DILocation(line: 1316, column: 2, scope: !3756)
!3793 = !DILocation(line: 1317, column: 2, scope: !3756)
!3794 = !DILocation(line: 1318, column: 2, scope: !3756)
!3795 = !DILocation(line: 1319, column: 2, scope: !3756)
!3796 = !DILocation(line: 1320, column: 2, scope: !3756)
!3797 = !DILocation(line: 1321, column: 2, scope: !3756)
!3798 = !DILocation(line: 1322, column: 2, scope: !3756)
!3799 = !DILocation(line: 1323, column: 2, scope: !3756)
!3800 = !DILocation(line: 1325, column: 9, scope: !3756)
!3801 = !DILocation(line: 1325, column: 2, scope: !3756)
!3802 = !DILocation(line: 1326, column: 9, scope: !3756)
!3803 = !DILocation(line: 1326, column: 2, scope: !3756)
!3804 = !DILocation(line: 1327, column: 1, scope: !3756)
!3805 = distinct !DISubprogram(name: "last_msg_dec_owns", scope: !44, file: !44, line: 87, type: !3806, isLocal: true, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{null, !144}
!3808 = !DILocalVariable(name: "list", arg: 1, scope: !3805, file: !44, line: 87, type: !144)
!3809 = !DILocation(line: 87, column: 39, scope: !3805)
!3810 = !DILocalVariable(name: "rec", scope: !3805, file: !44, line: 89, type: !124)
!3811 = !DILocation(line: 89, column: 16, scope: !3805)
!3812 = !DILocation(line: 91, column: 2, scope: !3805)
!3813 = !DILocation(line: 91, column: 9, scope: !3814)
!3814 = !DILexicalBlockFile(scope: !3805, file: !44, discriminator: 1)
!3815 = !DILocation(line: 91, column: 14, scope: !3814)
!3816 = !DILocation(line: 91, column: 2, scope: !3814)
!3817 = !DILocation(line: 92, column: 9, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3805, file: !44, line: 91, column: 22)
!3819 = !DILocation(line: 92, column: 15, scope: !3818)
!3820 = !DILocation(line: 92, column: 7, scope: !3818)
!3821 = !DILocation(line: 93, column: 7, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3818, file: !44, line: 93, column: 7)
!3823 = !DILocation(line: 93, column: 12, scope: !3822)
!3824 = !DILocation(line: 93, column: 7, scope: !3818)
!3825 = !DILocation(line: 93, column: 17, scope: !3826)
!3826 = !DILexicalBlockFile(scope: !3822, file: !44, discriminator: 1)
!3827 = !DILocation(line: 93, column: 22, scope: !3826)
!3828 = !DILocation(line: 93, column: 25, scope: !3826)
!3829 = !DILocation(line: 95, column: 10, scope: !3818)
!3830 = !DILocation(line: 95, column: 16, scope: !3818)
!3831 = !DILocation(line: 95, column: 8, scope: !3818)
!3832 = !DILocation(line: 91, column: 2, scope: !3833)
!3833 = !DILexicalBlockFile(scope: !3805, file: !44, discriminator: 2)
!3834 = distinct !{!3834, !3812}
!3835 = !DILocation(line: 97, column: 1, scope: !3805)
!3836 = distinct !DISubprogram(name: "last_msg_cmp", scope: !44, file: !44, line: 271, type: !3837, isLocal: true, isDefinition: true, scopeLine: 272, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!138, !124, !124}
!3839 = !DILocalVariable(name: "m1", arg: 1, scope: !3836, file: !44, line: 271, type: !124)
!3840 = !DILocation(line: 271, column: 39, scope: !3836)
!3841 = !DILocalVariable(name: "m2", arg: 2, scope: !3836, file: !44, line: 271, type: !124)
!3842 = !DILocation(line: 271, column: 57, scope: !3836)
!3843 = !DILocation(line: 273, column: 9, scope: !3836)
!3844 = !DILocation(line: 273, column: 13, scope: !3836)
!3845 = !DILocation(line: 273, column: 20, scope: !3836)
!3846 = !DILocation(line: 273, column: 24, scope: !3836)
!3847 = !DILocation(line: 273, column: 18, scope: !3836)
!3848 = !DILocation(line: 273, column: 2, scope: !3836)
!3849 = distinct !DISubprogram(name: "only_nicks", scope: !44, file: !44, line: 647, type: !3850, isLocal: true, isDefinition: true, scopeLine: 648, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!138, !115}
!3852 = !DILocalVariable(name: "linestart", arg: 1, scope: !3849, file: !44, line: 647, type: !115)
!3853 = !DILocation(line: 647, column: 35, scope: !3849)
!3854 = !DILocalVariable(name: "i", scope: !3849, file: !44, line: 649, type: !138)
!3855 = !DILocation(line: 649, column: 6, scope: !3849)
!3856 = !DILocalVariable(name: "prev", scope: !3849, file: !44, line: 650, type: !114)
!3857 = !DILocation(line: 650, column: 7, scope: !3849)
!3858 = !DILocation(line: 653, column: 7, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3849, file: !44, line: 653, column: 6)
!3860 = !DILocation(line: 653, column: 6, scope: !3859)
!3861 = !DILocation(line: 653, column: 17, scope: !3859)
!3862 = !DILocation(line: 653, column: 6, scope: !3849)
!3863 = !DILocation(line: 654, column: 3, scope: !3864)
!3864 = distinct !DILexicalBlock(scope: !3859, file: !44, line: 653, column: 26)
!3865 = !DILocation(line: 660, column: 6, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3849, file: !44, line: 660, column: 6)
!3867 = !DILocation(line: 660, column: 25, scope: !3866)
!3868 = !DILocation(line: 660, column: 6, scope: !3849)
!3869 = !DILocation(line: 661, column: 3, scope: !3866)
!3870 = !DILocation(line: 664, column: 7, scope: !3871)
!3871 = distinct !DILexicalBlock(scope: !3849, file: !44, line: 664, column: 6)
!3872 = !DILocation(line: 664, column: 6, scope: !3871)
!3873 = !DILocation(line: 664, column: 23, scope: !3871)
!3874 = !DILocation(line: 664, column: 6, scope: !3849)
!3875 = !DILocation(line: 665, column: 3, scope: !3871)
!3876 = !DILocation(line: 670, column: 2, scope: !3849)
!3877 = !DILocation(line: 670, column: 19, scope: !3878)
!3878 = !DILexicalBlockFile(scope: !3849, file: !44, discriminator: 1)
!3879 = !DILocation(line: 670, column: 9, scope: !3878)
!3880 = !DILocation(line: 670, column: 22, scope: !3878)
!3881 = !DILocation(line: 670, column: 2, scope: !3878)
!3882 = !DILocation(line: 671, column: 17, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3884, file: !44, line: 671, column: 7)
!3884 = distinct !DILexicalBlock(scope: !3849, file: !44, line: 670, column: 31)
!3885 = !DILocation(line: 671, column: 7, scope: !3883)
!3886 = !DILocation(line: 671, column: 20, scope: !3883)
!3887 = !DILocation(line: 671, column: 7, scope: !3884)
!3888 = !DILocation(line: 672, column: 21, scope: !3889)
!3889 = distinct !DILexicalBlock(scope: !3883, file: !44, line: 671, column: 28)
!3890 = !DILocation(line: 672, column: 23, scope: !3889)
!3891 = !DILocation(line: 672, column: 11, scope: !3889)
!3892 = !DILocation(line: 672, column: 9, scope: !3889)
!3893 = !DILocation(line: 673, column: 8, scope: !3894)
!3894 = distinct !DILexicalBlock(scope: !3889, file: !44, line: 673, column: 8)
!3895 = !DILocation(line: 673, column: 17, scope: !3894)
!3896 = !DILocation(line: 673, column: 16, scope: !3894)
!3897 = !DILocation(line: 673, column: 13, scope: !3894)
!3898 = !DILocation(line: 673, column: 33, scope: !3894)
!3899 = !DILocation(line: 673, column: 36, scope: !3900)
!3900 = !DILexicalBlockFile(scope: !3894, file: !44, discriminator: 1)
!3901 = !DILocation(line: 673, column: 41, scope: !3900)
!3902 = !DILocation(line: 673, column: 8, scope: !3900)
!3903 = !DILocation(line: 674, column: 5, scope: !3894)
!3904 = !DILocation(line: 675, column: 3, scope: !3889)
!3905 = !DILocation(line: 676, column: 5, scope: !3884)
!3906 = !DILocation(line: 670, column: 2, scope: !3907)
!3907 = !DILexicalBlockFile(scope: !3849, file: !44, discriminator: 2)
!3908 = distinct !{!3908, !3876}
!3909 = !DILocation(line: 683, column: 4, scope: !3849)
!3910 = !DILocation(line: 684, column: 2, scope: !3849)
!3911 = !DILocation(line: 684, column: 9, scope: !3878)
!3912 = !DILocation(line: 684, column: 11, scope: !3878)
!3913 = !DILocation(line: 684, column: 2, scope: !3878)
!3914 = !DILocation(line: 685, column: 17, scope: !3915)
!3915 = distinct !DILexicalBlock(scope: !3916, file: !44, line: 685, column: 7)
!3916 = distinct !DILexicalBlock(scope: !3849, file: !44, line: 684, column: 17)
!3917 = !DILocation(line: 685, column: 7, scope: !3915)
!3918 = !DILocation(line: 685, column: 20, scope: !3915)
!3919 = !DILocation(line: 685, column: 7, scope: !3916)
!3920 = !DILocation(line: 686, column: 5, scope: !3921)
!3921 = distinct !DILexicalBlock(scope: !3915, file: !44, line: 685, column: 28)
!3922 = !DILocation(line: 687, column: 4, scope: !3921)
!3923 = distinct !{!3923, !3910}
!3924 = !DILocation(line: 688, column: 24, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3915, file: !44, line: 688, column: 14)
!3926 = !DILocation(line: 688, column: 14, scope: !3925)
!3927 = !DILocation(line: 688, column: 31, scope: !3925)
!3928 = !DILocation(line: 688, column: 30, scope: !3925)
!3929 = !DILocation(line: 688, column: 27, scope: !3925)
!3930 = !DILocation(line: 688, column: 14, scope: !3915)
!3931 = !DILocation(line: 689, column: 4, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3925, file: !44, line: 688, column: 48)
!3933 = !DILocation(line: 691, column: 4, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3925, file: !44, line: 690, column: 10)
!3935 = !DILocation(line: 694, column: 2, scope: !3849)
!3936 = !DILocation(line: 695, column: 1, scope: !3849)
!3937 = distinct !DISubprogram(name: "complete_window_nicks", scope: !44, file: !44, line: 611, type: !3938, isLocal: true, isDefinition: true, scopeLine: 613, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!3938 = !DISubroutineType(types: !3939)
!3939 = !{null, !1879, !1880, !115, !115}
!3940 = !DILocalVariable(name: "list", arg: 1, scope: !3937, file: !44, line: 611, type: !1879)
!3941 = !DILocation(line: 611, column: 43, scope: !3937)
!3942 = !DILocalVariable(name: "window", arg: 2, scope: !3937, file: !44, line: 611, type: !1880)
!3943 = !DILocation(line: 611, column: 61, scope: !3937)
!3944 = !DILocalVariable(name: "word", arg: 3, scope: !3937, file: !44, line: 612, type: !115)
!3945 = !DILocation(line: 612, column: 47, scope: !3937)
!3946 = !DILocalVariable(name: "nicksuffix", arg: 4, scope: !3937, file: !44, line: 612, type: !115)
!3947 = !DILocation(line: 612, column: 65, scope: !3937)
!3948 = !DILocalVariable(name: "channel", scope: !3937, file: !44, line: 614, type: !158)
!3949 = !DILocation(line: 614, column: 22, scope: !3937)
!3950 = !DILocalVariable(name: "tmplist", scope: !3937, file: !44, line: 615, type: !890)
!3951 = !DILocation(line: 615, column: 16, scope: !3937)
!3952 = !DILocalVariable(name: "tmp", scope: !3937, file: !44, line: 616, type: !144)
!3953 = !DILocation(line: 616, column: 17, scope: !3937)
!3954 = !DILocation(line: 618, column: 61, scope: !3937)
!3955 = !DILocation(line: 618, column: 69, scope: !3937)
!3956 = !DILocation(line: 618, column: 36, scope: !3937)
!3957 = !DILocation(line: 618, column: 20, scope: !3937)
!3958 = !DILocation(line: 618, column: 17, scope: !3937)
!3959 = !DILocation(line: 621, column: 13, scope: !3960)
!3960 = distinct !DILexicalBlock(scope: !3937, file: !44, line: 621, column: 13)
!3961 = !DILocation(line: 621, column: 21, scope: !3960)
!3962 = !DILocation(line: 621, column: 13, scope: !3937)
!3963 = !DILocation(line: 622, column: 52, scope: !3964)
!3964 = distinct !DILexicalBlock(scope: !3960, file: !44, line: 621, column: 29)
!3965 = !DILocation(line: 622, column: 61, scope: !3964)
!3966 = !DILocation(line: 622, column: 67, scope: !3964)
!3967 = !DILocation(line: 622, column: 27, scope: !3964)
!3968 = !DILocation(line: 622, column: 25, scope: !3964)
!3969 = !DILocation(line: 623, column: 46, scope: !3964)
!3970 = !DILocation(line: 623, column: 45, scope: !3964)
!3971 = !DILocation(line: 623, column: 52, scope: !3964)
!3972 = !DILocation(line: 623, column: 25, scope: !3964)
!3973 = !DILocation(line: 623, column: 18, scope: !3964)
!3974 = !DILocation(line: 623, column: 23, scope: !3964)
!3975 = !DILocation(line: 624, column: 9, scope: !3964)
!3976 = !DILocation(line: 626, column: 13, scope: !3977)
!3977 = distinct !DILexicalBlock(scope: !3937, file: !44, line: 626, column: 13)
!3978 = !DILocation(line: 626, column: 24, scope: !3977)
!3979 = !DILocation(line: 626, column: 13, scope: !3937)
!3980 = !DILocation(line: 630, column: 17, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3977, file: !44, line: 626, column: 32)
!3982 = !DILocation(line: 634, column: 20, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !3937, file: !44, line: 634, column: 9)
!3984 = !DILocation(line: 634, column: 28, scope: !3983)
!3985 = !DILocation(line: 634, column: 18, scope: !3983)
!3986 = !DILocation(line: 634, column: 14, scope: !3983)
!3987 = !DILocation(line: 634, column: 35, scope: !3988)
!3988 = !DILexicalBlockFile(scope: !3989, file: !44, discriminator: 1)
!3989 = distinct !DILexicalBlock(scope: !3983, file: !44, line: 634, column: 9)
!3990 = !DILocation(line: 634, column: 39, scope: !3988)
!3991 = !DILocation(line: 634, column: 9, scope: !3988)
!3992 = !DILocation(line: 635, column: 69, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3989, file: !44, line: 634, column: 64)
!3994 = !DILocation(line: 635, column: 74, scope: !3993)
!3995 = !DILocation(line: 635, column: 44, scope: !3993)
!3996 = !DILocation(line: 635, column: 28, scope: !3993)
!3997 = !DILocation(line: 635, column: 25, scope: !3993)
!3998 = !DILocation(line: 636, column: 21, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !3993, file: !44, line: 636, column: 21)
!4000 = !DILocation(line: 636, column: 29, scope: !3999)
!4001 = !DILocation(line: 636, column: 36, scope: !3999)
!4002 = !DILocation(line: 636, column: 39, scope: !4003)
!4003 = !DILexicalBlockFile(scope: !3999, file: !44, discriminator: 1)
!4004 = !DILocation(line: 636, column: 44, scope: !4003)
!4005 = !DILocation(line: 636, column: 52, scope: !4003)
!4006 = !DILocation(line: 636, column: 60, scope: !4003)
!4007 = !DILocation(line: 636, column: 49, scope: !4003)
!4008 = !DILocation(line: 636, column: 21, scope: !4003)
!4009 = !DILocation(line: 637, column: 60, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !3999, file: !44, line: 636, column: 68)
!4011 = !DILocation(line: 637, column: 69, scope: !4010)
!4012 = !DILocation(line: 638, column: 60, scope: !4010)
!4013 = !DILocation(line: 637, column: 35, scope: !4010)
!4014 = !DILocation(line: 637, column: 33, scope: !4010)
!4015 = !DILocation(line: 639, column: 54, scope: !4010)
!4016 = !DILocation(line: 639, column: 53, scope: !4010)
!4017 = !DILocation(line: 639, column: 60, scope: !4010)
!4018 = !DILocation(line: 639, column: 33, scope: !4010)
!4019 = !DILocation(line: 639, column: 26, scope: !4010)
!4020 = !DILocation(line: 639, column: 31, scope: !4010)
!4021 = !DILocation(line: 640, column: 17, scope: !4010)
!4022 = !DILocation(line: 641, column: 9, scope: !3993)
!4023 = !DILocation(line: 634, column: 53, scope: !4024)
!4024 = !DILexicalBlockFile(scope: !3989, file: !44, discriminator: 2)
!4025 = !DILocation(line: 634, column: 58, scope: !4024)
!4026 = !DILocation(line: 634, column: 51, scope: !4024)
!4027 = !DILocation(line: 634, column: 9, scope: !4024)
!4028 = distinct !{!4028, !4029}
!4029 = !DILocation(line: 634, column: 9, scope: !3937)
!4030 = !DILocation(line: 642, column: 1, scope: !3937)
!4031 = distinct !DISubprogram(name: "completion_channel_nicks", scope: !44, file: !44, line: 451, type: !4032, isLocal: true, isDefinition: true, scopeLine: 453, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!4032 = !DISubroutineType(types: !4033)
!4033 = !{!890, !158, !115, !115}
!4034 = !DILocalVariable(name: "channel", arg: 1, scope: !4031, file: !44, line: 451, type: !158)
!4035 = !DILocation(line: 451, column: 53, scope: !4031)
!4036 = !DILocalVariable(name: "nick", arg: 2, scope: !4031, file: !44, line: 451, type: !115)
!4037 = !DILocation(line: 451, column: 74, scope: !4031)
!4038 = !DILocalVariable(name: "suffix", arg: 3, scope: !4031, file: !44, line: 452, type: !115)
!4039 = !DILocation(line: 452, column: 24, scope: !4031)
!4040 = !DILocalVariable(name: "nicks", scope: !4031, file: !44, line: 454, type: !144)
!4041 = !DILocation(line: 454, column: 10, scope: !4031)
!4042 = !DILocalVariable(name: "tmp", scope: !4031, file: !44, line: 454, type: !144)
!4043 = !DILocation(line: 454, column: 18, scope: !4031)
!4044 = !DILocalVariable(name: "list", scope: !4031, file: !44, line: 455, type: !890)
!4045 = !DILocation(line: 455, column: 9, scope: !4031)
!4046 = !DILocalVariable(name: "str", scope: !4031, file: !44, line: 456, type: !136)
!4047 = !DILocation(line: 456, column: 8, scope: !4031)
!4048 = !DILocalVariable(name: "len", scope: !4031, file: !44, line: 457, type: !138)
!4049 = !DILocation(line: 457, column: 6, scope: !4031)
!4050 = !DILocalVariable(name: "match_case", scope: !4031, file: !44, line: 457, type: !138)
!4051 = !DILocation(line: 457, column: 11, scope: !4031)
!4052 = !DILocation(line: 459, column: 2, scope: !4031)
!4053 = distinct !{!4053, !4052}
!4054 = !DILocation(line: 459, column: 10, scope: !4055)
!4055 = !DILexicalBlockFile(scope: !4056, file: !44, discriminator: 1)
!4056 = distinct !DILexicalBlock(scope: !4057, file: !44, line: 459, column: 10)
!4057 = distinct !DILexicalBlock(scope: !4031, file: !44, line: 459, column: 4)
!4058 = !DILocation(line: 459, column: 18, scope: !4055)
!4059 = !DILocation(line: 459, column: 5, scope: !4060)
!4060 = !DILexicalBlockFile(scope: !4061, file: !44, discriminator: 2)
!4061 = distinct !DILexicalBlock(scope: !4056, file: !44, line: 459, column: 3)
!4062 = !DILocation(line: 459, column: 14, scope: !4063)
!4063 = !DILexicalBlockFile(scope: !4064, file: !44, discriminator: 3)
!4064 = distinct !DILexicalBlock(scope: !4056, file: !44, line: 459, column: 12)
!4065 = !DILocation(line: 459, column: 102, scope: !4063)
!4066 = !DILocation(line: 459, column: 7, scope: !4067)
!4067 = !DILexicalBlockFile(scope: !4057, file: !44, discriminator: 4)
!4068 = !DILocation(line: 460, column: 2, scope: !4031)
!4069 = distinct !{!4069, !4068}
!4070 = !DILocation(line: 460, column: 10, scope: !4071)
!4071 = !DILexicalBlockFile(scope: !4072, file: !44, discriminator: 1)
!4072 = distinct !DILexicalBlock(scope: !4073, file: !44, line: 460, column: 10)
!4073 = distinct !DILexicalBlock(scope: !4031, file: !44, line: 460, column: 4)
!4074 = !DILocation(line: 460, column: 15, scope: !4071)
!4075 = !DILocation(line: 460, column: 5, scope: !4076)
!4076 = !DILexicalBlockFile(scope: !4077, file: !44, discriminator: 2)
!4077 = distinct !DILexicalBlock(scope: !4072, file: !44, line: 460, column: 3)
!4078 = !DILocation(line: 460, column: 14, scope: !4079)
!4079 = !DILexicalBlockFile(scope: !4080, file: !44, discriminator: 3)
!4080 = distinct !DILexicalBlock(scope: !4072, file: !44, line: 460, column: 12)
!4081 = !DILocation(line: 460, column: 99, scope: !4079)
!4082 = !DILocation(line: 460, column: 7, scope: !4083)
!4083 = !DILexicalBlockFile(scope: !4073, file: !44, discriminator: 4)
!4084 = !DILocation(line: 461, column: 7, scope: !4085)
!4085 = distinct !DILexicalBlock(scope: !4031, file: !44, line: 461, column: 6)
!4086 = !DILocation(line: 461, column: 6, scope: !4085)
!4087 = !DILocation(line: 461, column: 12, scope: !4085)
!4088 = !DILocation(line: 461, column: 6, scope: !4031)
!4089 = !DILocation(line: 461, column: 21, scope: !4090)
!4090 = !DILexicalBlockFile(scope: !4085, file: !44, discriminator: 1)
!4091 = !DILocation(line: 463, column: 6, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4031, file: !44, line: 463, column: 6)
!4093 = !DILocation(line: 463, column: 13, scope: !4092)
!4094 = !DILocation(line: 463, column: 20, scope: !4092)
!4095 = !DILocation(line: 463, column: 24, scope: !4096)
!4096 = !DILexicalBlockFile(scope: !4092, file: !44, discriminator: 1)
!4097 = !DILocation(line: 463, column: 23, scope: !4096)
!4098 = !DILocation(line: 463, column: 31, scope: !4096)
!4099 = !DILocation(line: 463, column: 6, scope: !4096)
!4100 = !DILocation(line: 464, column: 10, scope: !4092)
!4101 = !DILocation(line: 464, column: 3, scope: !4092)
!4102 = !DILocation(line: 466, column: 15, scope: !4031)
!4103 = !DILocation(line: 466, column: 37, scope: !4031)
!4104 = !DILocation(line: 466, column: 62, scope: !4031)
!4105 = !DILocation(line: 467, column: 4, scope: !4031)
!4106 = !DILocation(line: 467, column: 26, scope: !4031)
!4107 = !DILocation(line: 467, column: 49, scope: !4031)
!4108 = !DILocation(line: 467, column: 71, scope: !4109)
!4109 = !DILexicalBlockFile(scope: !4031, file: !44, discriminator: 1)
!4110 = !DILocation(line: 467, column: 52, scope: !4109)
!4111 = !DILocation(line: 467, column: 49, scope: !4109)
!4112 = !DILocation(line: 466, column: 62, scope: !4109)
!4113 = !DILocation(line: 466, column: 62, scope: !4114)
!4114 = !DILexicalBlockFile(scope: !4031, file: !44, discriminator: 2)
!4115 = !DILocation(line: 466, column: 13, scope: !4114)
!4116 = !DILocation(line: 470, column: 7, scope: !4031)
!4117 = !DILocation(line: 471, column: 32, scope: !4031)
!4118 = !DILocation(line: 471, column: 41, scope: !4031)
!4119 = !DILocation(line: 471, column: 47, scope: !4031)
!4120 = !DILocation(line: 471, column: 55, scope: !4031)
!4121 = !DILocation(line: 471, column: 2, scope: !4031)
!4122 = !DILocation(line: 474, column: 15, scope: !4031)
!4123 = !DILocation(line: 474, column: 8, scope: !4031)
!4124 = !DILocation(line: 474, column: 6, scope: !4031)
!4125 = !DILocation(line: 475, column: 28, scope: !4031)
!4126 = !DILocation(line: 475, column: 10, scope: !4031)
!4127 = !DILocation(line: 475, column: 8, scope: !4031)
!4128 = !DILocation(line: 476, column: 13, scope: !4129)
!4129 = distinct !DILexicalBlock(scope: !4031, file: !44, line: 476, column: 2)
!4130 = !DILocation(line: 476, column: 11, scope: !4129)
!4131 = !DILocation(line: 476, column: 7, scope: !4129)
!4132 = !DILocation(line: 476, column: 20, scope: !4133)
!4133 = !DILexicalBlockFile(scope: !4134, file: !44, discriminator: 1)
!4134 = distinct !DILexicalBlock(scope: !4129, file: !44, line: 476, column: 2)
!4135 = !DILocation(line: 476, column: 24, scope: !4133)
!4136 = !DILocation(line: 476, column: 2, scope: !4133)
!4137 = !DILocalVariable(name: "rec", scope: !4138, file: !44, line: 477, type: !542)
!4138 = distinct !DILexicalBlock(scope: !4134, file: !44, line: 476, column: 49)
!4139 = !DILocation(line: 477, column: 13, scope: !4138)
!4140 = !DILocation(line: 477, column: 19, scope: !4138)
!4141 = !DILocation(line: 477, column: 24, scope: !4138)
!4142 = !DILocation(line: 479, column: 8, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !4138, file: !44, line: 479, column: 7)
!4144 = !DILocation(line: 479, column: 28, scope: !4145)
!4145 = !DILexicalBlockFile(scope: !4143, file: !44, discriminator: 1)
!4146 = !DILocation(line: 479, column: 33, scope: !4145)
!4147 = !DILocation(line: 479, column: 39, scope: !4145)
!4148 = !DILocation(line: 479, column: 45, scope: !4145)
!4149 = !DILocation(line: 479, column: 20, scope: !4145)
!4150 = !DILocation(line: 479, column: 8, scope: !4145)
!4151 = !DILocation(line: 480, column: 30, scope: !4143)
!4152 = !DILocation(line: 480, column: 35, scope: !4143)
!4153 = !DILocation(line: 480, column: 41, scope: !4143)
!4154 = !DILocation(line: 480, column: 47, scope: !4143)
!4155 = !DILocation(line: 480, column: 10, scope: !4143)
!4156 = !DILocation(line: 479, column: 8, scope: !4157)
!4157 = !DILexicalBlockFile(scope: !4143, file: !44, discriminator: 2)
!4158 = !DILocation(line: 479, column: 8, scope: !4159)
!4159 = !DILexicalBlockFile(scope: !4143, file: !44, discriminator: 3)
!4160 = !DILocation(line: 480, column: 53, scope: !4145)
!4161 = !DILocation(line: 480, column: 58, scope: !4145)
!4162 = !DILocation(line: 481, column: 7, scope: !4143)
!4163 = !DILocation(line: 481, column: 14, scope: !4143)
!4164 = !DILocation(line: 481, column: 23, scope: !4143)
!4165 = !DILocation(line: 481, column: 11, scope: !4143)
!4166 = !DILocation(line: 479, column: 7, scope: !4167)
!4167 = !DILexicalBlockFile(scope: !4138, file: !44, discriminator: 4)
!4168 = !DILocation(line: 482, column: 22, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !4143, file: !44, line: 481, column: 32)
!4170 = !DILocation(line: 482, column: 27, scope: !4169)
!4171 = !DILocation(line: 482, column: 33, scope: !4169)
!4172 = !DILocation(line: 482, column: 10, scope: !4169)
!4173 = !DILocation(line: 482, column: 8, scope: !4169)
!4174 = !DILocation(line: 483, column: 8, scope: !4175)
!4175 = distinct !DILexicalBlock(scope: !4169, file: !44, line: 483, column: 8)
!4176 = !DILocation(line: 483, column: 8, scope: !4169)
!4177 = !DILocation(line: 484, column: 19, scope: !4175)
!4178 = !DILocation(line: 484, column: 5, scope: !4175)
!4179 = !DILocation(line: 485, column: 53, scope: !4180)
!4180 = distinct !DILexicalBlock(scope: !4169, file: !44, line: 485, column: 29)
!4181 = !DILocation(line: 485, column: 59, scope: !4180)
!4182 = !DILocation(line: 485, column: 29, scope: !4180)
!4183 = !DILocation(line: 485, column: 64, scope: !4180)
!4184 = !DILocation(line: 485, column: 29, scope: !4169)
!4185 = !DILocation(line: 486, column: 26, scope: !4180)
!4186 = !DILocation(line: 486, column: 32, scope: !4180)
!4187 = !DILocation(line: 486, column: 12, scope: !4180)
!4188 = !DILocation(line: 486, column: 10, scope: !4180)
!4189 = !DILocation(line: 486, column: 5, scope: !4180)
!4190 = !DILocation(line: 488, column: 40, scope: !4180)
!4191 = !DILocation(line: 488, column: 33, scope: !4180)
!4192 = !DILocation(line: 489, column: 3, scope: !4169)
!4193 = !DILocation(line: 490, column: 2, scope: !4138)
!4194 = !DILocation(line: 476, column: 38, scope: !4195)
!4195 = !DILexicalBlockFile(scope: !4134, file: !44, discriminator: 2)
!4196 = !DILocation(line: 476, column: 43, scope: !4195)
!4197 = !DILocation(line: 476, column: 36, scope: !4195)
!4198 = !DILocation(line: 476, column: 2, scope: !4195)
!4199 = distinct !{!4199, !4200}
!4200 = !DILocation(line: 476, column: 2, scope: !4031)
!4201 = !DILocation(line: 491, column: 15, scope: !4031)
!4202 = !DILocation(line: 491, column: 2, scope: !4031)
!4203 = !DILocation(line: 495, column: 7, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !4031, file: !44, line: 495, column: 6)
!4205 = !DILocation(line: 495, column: 6, scope: !4031)
!4206 = !DILocation(line: 496, column: 24, scope: !4204)
!4207 = !DILocation(line: 496, column: 57, scope: !4204)
!4208 = !DILocation(line: 496, column: 66, scope: !4204)
!4209 = !DILocation(line: 496, column: 72, scope: !4204)
!4210 = !DILocation(line: 496, column: 80, scope: !4204)
!4211 = !DILocation(line: 496, column: 30, scope: !4204)
!4212 = !DILocation(line: 496, column: 10, scope: !4213)
!4213 = !DILexicalBlockFile(scope: !4204, file: !44, discriminator: 1)
!4214 = !DILocation(line: 496, column: 8, scope: !4204)
!4215 = !DILocation(line: 496, column: 3, scope: !4204)
!4216 = !DILocation(line: 497, column: 9, scope: !4031)
!4217 = !DILocation(line: 497, column: 2, scope: !4031)
!4218 = !DILocation(line: 498, column: 1, scope: !4031)
!4219 = distinct !DISubprogram(name: "completion_joinlist", scope: !44, file: !44, line: 502, type: !4220, isLocal: true, isDefinition: true, scopeLine: 503, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!4220 = !DISubroutineType(types: !4221)
!4221 = !{!890, !890, !890}
!4222 = !DILocalVariable(name: "list1", arg: 1, scope: !4219, file: !44, line: 502, type: !890)
!4223 = !DILocation(line: 502, column: 42, scope: !4219)
!4224 = !DILocalVariable(name: "list2", arg: 2, scope: !4219, file: !44, line: 502, type: !890)
!4225 = !DILocation(line: 502, column: 56, scope: !4219)
!4226 = !DILocalVariable(name: "old", scope: !4219, file: !44, line: 504, type: !890)
!4227 = !DILocation(line: 504, column: 9, scope: !4219)
!4228 = !DILocation(line: 506, column: 8, scope: !4219)
!4229 = !DILocation(line: 506, column: 6, scope: !4219)
!4230 = !DILocation(line: 507, column: 2, scope: !4219)
!4231 = !DILocation(line: 507, column: 9, scope: !4232)
!4232 = !DILexicalBlockFile(scope: !4219, file: !44, discriminator: 1)
!4233 = !DILocation(line: 507, column: 15, scope: !4232)
!4234 = !DILocation(line: 507, column: 2, scope: !4232)
!4235 = !DILocation(line: 508, column: 32, scope: !4236)
!4236 = distinct !DILexicalBlock(scope: !4237, file: !44, line: 508, column: 7)
!4237 = distinct !DILexicalBlock(scope: !4219, file: !44, line: 507, column: 23)
!4238 = !DILocation(line: 508, column: 39, scope: !4236)
!4239 = !DILocation(line: 508, column: 46, scope: !4236)
!4240 = !DILocation(line: 508, column: 8, scope: !4236)
!4241 = !DILocation(line: 508, column: 7, scope: !4237)
!4242 = !DILocation(line: 509, column: 26, scope: !4236)
!4243 = !DILocation(line: 509, column: 33, scope: !4236)
!4244 = !DILocation(line: 509, column: 40, scope: !4236)
!4245 = !DILocation(line: 509, column: 12, scope: !4236)
!4246 = !DILocation(line: 509, column: 10, scope: !4236)
!4247 = !DILocation(line: 509, column: 4, scope: !4236)
!4248 = !DILocation(line: 511, column: 11, scope: !4236)
!4249 = !DILocation(line: 511, column: 18, scope: !4236)
!4250 = !DILocation(line: 511, column: 4, scope: !4236)
!4251 = !DILocation(line: 513, column: 11, scope: !4237)
!4252 = !DILocation(line: 513, column: 18, scope: !4237)
!4253 = !DILocation(line: 513, column: 9, scope: !4237)
!4254 = !DILocation(line: 507, column: 2, scope: !4255)
!4255 = !DILexicalBlockFile(scope: !4219, file: !44, discriminator: 2)
!4256 = distinct !{!4256, !4230}
!4257 = !DILocation(line: 516, column: 14, scope: !4219)
!4258 = !DILocation(line: 516, column: 2, scope: !4219)
!4259 = !DILocation(line: 517, column: 9, scope: !4219)
!4260 = !DILocation(line: 517, column: 2, scope: !4219)
!4261 = distinct !DISubprogram(name: "contains_uppercase", scope: !44, file: !44, line: 62, type: !4262, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!4262 = !DISubroutineType(types: !4263)
!4263 = !{!297, !115}
!4264 = !DILocalVariable(name: "s1", arg: 1, scope: !4261, file: !44, line: 62, type: !115)
!4265 = !DILocation(line: 62, column: 48, scope: !4261)
!4266 = !DILocalVariable(name: "ch", scope: !4261, file: !44, line: 64, type: !115)
!4267 = !DILocation(line: 64, column: 14, scope: !4261)
!4268 = !DILocation(line: 66, column: 12, scope: !4269)
!4269 = distinct !DILexicalBlock(scope: !4261, file: !44, line: 66, column: 2)
!4270 = !DILocation(line: 66, column: 10, scope: !4269)
!4271 = !DILocation(line: 66, column: 7, scope: !4269)
!4272 = !DILocation(line: 66, column: 17, scope: !4273)
!4273 = !DILexicalBlockFile(scope: !4274, file: !44, discriminator: 1)
!4274 = distinct !DILexicalBlock(scope: !4269, file: !44, line: 66, column: 2)
!4275 = !DILocation(line: 66, column: 16, scope: !4273)
!4276 = !DILocation(line: 66, column: 20, scope: !4273)
!4277 = !DILocation(line: 66, column: 2, scope: !4273)
!4278 = !DILocation(line: 67, column: 34, scope: !4279)
!4279 = distinct !DILexicalBlock(scope: !4280, file: !44, line: 67, column: 7)
!4280 = distinct !DILexicalBlock(scope: !4274, file: !44, line: 66, column: 35)
!4281 = !DILocation(line: 67, column: 33, scope: !4279)
!4282 = !DILocation(line: 67, column: 9, scope: !4279)
!4283 = !DILocation(line: 67, column: 39, scope: !4279)
!4284 = !DILocation(line: 67, column: 56, scope: !4279)
!4285 = !DILocation(line: 67, column: 7, scope: !4280)
!4286 = !DILocation(line: 68, column: 4, scope: !4279)
!4287 = !DILocation(line: 69, column: 2, scope: !4280)
!4288 = !DILocation(line: 66, column: 31, scope: !4289)
!4289 = !DILexicalBlockFile(scope: !4274, file: !44, discriminator: 2)
!4290 = !DILocation(line: 66, column: 2, scope: !4289)
!4291 = distinct !{!4291, !4292}
!4292 = !DILocation(line: 66, column: 2, scope: !4261)
!4293 = !DILocation(line: 71, column: 2, scope: !4261)
!4294 = !DILocation(line: 72, column: 1, scope: !4261)
!4295 = distinct !DISubprogram(name: "complete_from_nicklist", scope: !44, file: !44, line: 359, type: !4296, isLocal: true, isDefinition: true, scopeLine: 362, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!4296 = !DISubroutineType(types: !4297)
!4297 = !{null, !1879, !158, !115, !115, !4298}
!4298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!4299 = !DILocalVariable(name: "outlist", arg: 1, scope: !4295, file: !44, line: 359, type: !1879)
!4300 = !DILocation(line: 359, column: 44, scope: !4295)
!4301 = !DILocalVariable(name: "channel", arg: 2, scope: !4295, file: !44, line: 359, type: !158)
!4302 = !DILocation(line: 359, column: 66, scope: !4295)
!4303 = !DILocalVariable(name: "nick", arg: 3, scope: !4295, file: !44, line: 360, type: !115)
!4304 = !DILocation(line: 360, column: 20, scope: !4295)
!4305 = !DILocalVariable(name: "suffix", arg: 4, scope: !4295, file: !44, line: 360, type: !115)
!4306 = !DILocation(line: 360, column: 38, scope: !4295)
!4307 = !DILocalVariable(name: "match_case", arg: 5, scope: !4295, file: !44, line: 361, type: !4298)
!4308 = !DILocation(line: 361, column: 18, scope: !4295)
!4309 = !DILocalVariable(name: "mchannel", scope: !4295, file: !44, line: 363, type: !586)
!4310 = !DILocation(line: 363, column: 29, scope: !4295)
!4311 = !DILocalVariable(name: "tmp", scope: !4295, file: !44, line: 364, type: !144)
!4312 = !DILocation(line: 364, column: 10, scope: !4295)
!4313 = !DILocalVariable(name: "ownlist", scope: !4295, file: !44, line: 365, type: !890)
!4314 = !DILocation(line: 365, column: 16, scope: !4295)
!4315 = !DILocalVariable(name: "str", scope: !4295, file: !44, line: 366, type: !136)
!4316 = !DILocation(line: 366, column: 8, scope: !4295)
!4317 = !DILocalVariable(name: "len", scope: !4295, file: !44, line: 367, type: !138)
!4318 = !DILocation(line: 367, column: 6, scope: !4295)
!4319 = !DILocation(line: 371, column: 17, scope: !4295)
!4320 = !DILocation(line: 372, column: 15, scope: !4295)
!4321 = !DILocation(line: 372, column: 8, scope: !4295)
!4322 = !DILocation(line: 372, column: 6, scope: !4295)
!4323 = !DILocation(line: 373, column: 41, scope: !4295)
!4324 = !DILocation(line: 373, column: 51, scope: !4295)
!4325 = !DILocation(line: 373, column: 20, scope: !4295)
!4326 = !DILocation(line: 373, column: 18, scope: !4295)
!4327 = !DILocation(line: 374, column: 13, scope: !4328)
!4328 = distinct !DILexicalBlock(scope: !4295, file: !44, line: 374, column: 2)
!4329 = !DILocation(line: 374, column: 23, scope: !4328)
!4330 = !DILocation(line: 374, column: 11, scope: !4328)
!4331 = !DILocation(line: 374, column: 7, scope: !4328)
!4332 = !DILocation(line: 374, column: 33, scope: !4333)
!4333 = !DILexicalBlockFile(scope: !4334, file: !44, discriminator: 1)
!4334 = distinct !DILexicalBlock(scope: !4328, file: !44, line: 374, column: 2)
!4335 = !DILocation(line: 374, column: 37, scope: !4333)
!4336 = !DILocation(line: 374, column: 2, scope: !4333)
!4337 = !DILocalVariable(name: "rec", scope: !4338, file: !44, line: 375, type: !124)
!4338 = distinct !DILexicalBlock(scope: !4334, file: !44, line: 374, column: 62)
!4339 = !DILocation(line: 375, column: 17, scope: !4338)
!4340 = !DILocation(line: 375, column: 23, scope: !4338)
!4341 = !DILocation(line: 375, column: 28, scope: !4338)
!4342 = !DILocation(line: 377, column: 8, scope: !4343)
!4343 = distinct !DILexicalBlock(scope: !4338, file: !44, line: 377, column: 7)
!4344 = !DILocation(line: 377, column: 28, scope: !4345)
!4345 = !DILexicalBlockFile(scope: !4343, file: !44, discriminator: 1)
!4346 = !DILocation(line: 377, column: 33, scope: !4345)
!4347 = !DILocation(line: 377, column: 39, scope: !4345)
!4348 = !DILocation(line: 377, column: 45, scope: !4345)
!4349 = !DILocation(line: 377, column: 20, scope: !4345)
!4350 = !DILocation(line: 377, column: 8, scope: !4345)
!4351 = !DILocation(line: 378, column: 30, scope: !4343)
!4352 = !DILocation(line: 378, column: 35, scope: !4343)
!4353 = !DILocation(line: 378, column: 41, scope: !4343)
!4354 = !DILocation(line: 378, column: 47, scope: !4343)
!4355 = !DILocation(line: 378, column: 10, scope: !4343)
!4356 = !DILocation(line: 377, column: 8, scope: !4357)
!4357 = !DILexicalBlockFile(scope: !4343, file: !44, discriminator: 2)
!4358 = !DILocation(line: 377, column: 8, scope: !4359)
!4359 = !DILexicalBlockFile(scope: !4343, file: !44, discriminator: 3)
!4360 = !DILocation(line: 378, column: 53, scope: !4345)
!4361 = !DILocation(line: 378, column: 58, scope: !4345)
!4362 = !DILocation(line: 379, column: 8, scope: !4343)
!4363 = !DILocation(line: 379, column: 39, scope: !4345)
!4364 = !DILocation(line: 379, column: 38, scope: !4345)
!4365 = !DILocation(line: 379, column: 48, scope: !4345)
!4366 = !DILocation(line: 379, column: 53, scope: !4345)
!4367 = !DILocation(line: 379, column: 20, scope: !4345)
!4368 = !DILocation(line: 379, column: 8, scope: !4345)
!4369 = !DILocation(line: 380, column: 35, scope: !4343)
!4370 = !DILocation(line: 380, column: 34, scope: !4343)
!4371 = !DILocation(line: 380, column: 44, scope: !4343)
!4372 = !DILocation(line: 380, column: 49, scope: !4343)
!4373 = !DILocation(line: 380, column: 10, scope: !4343)
!4374 = !DILocation(line: 379, column: 8, scope: !4357)
!4375 = !DILocation(line: 379, column: 8, scope: !4359)
!4376 = !DILocation(line: 380, column: 56, scope: !4345)
!4377 = !DILocation(line: 377, column: 7, scope: !4378)
!4378 = !DILexicalBlockFile(scope: !4338, file: !44, discriminator: 4)
!4379 = !DILocation(line: 381, column: 22, scope: !4380)
!4380 = distinct !DILexicalBlock(scope: !4343, file: !44, line: 380, column: 64)
!4381 = !DILocation(line: 381, column: 27, scope: !4380)
!4382 = !DILocation(line: 381, column: 33, scope: !4380)
!4383 = !DILocation(line: 381, column: 10, scope: !4380)
!4384 = !DILocation(line: 381, column: 8, scope: !4380)
!4385 = !DILocation(line: 382, column: 8, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4380, file: !44, line: 382, column: 8)
!4387 = !DILocation(line: 382, column: 8, scope: !4380)
!4388 = !DILocation(line: 382, column: 44, scope: !4389)
!4389 = !DILexicalBlockFile(scope: !4386, file: !44, discriminator: 1)
!4390 = !DILocation(line: 382, column: 30, scope: !4389)
!4391 = !DILocation(line: 383, column: 8, scope: !4392)
!4392 = distinct !DILexicalBlock(scope: !4380, file: !44, line: 383, column: 8)
!4393 = !DILocation(line: 383, column: 13, scope: !4392)
!4394 = !DILocation(line: 383, column: 8, scope: !4380)
!4395 = !DILocation(line: 384, column: 29, scope: !4392)
!4396 = !DILocation(line: 384, column: 38, scope: !4392)
!4397 = !DILocation(line: 384, column: 15, scope: !4392)
!4398 = !DILocation(line: 384, column: 13, scope: !4392)
!4399 = !DILocation(line: 384, column: 5, scope: !4392)
!4400 = !DILocation(line: 386, column: 31, scope: !4392)
!4401 = !DILocation(line: 386, column: 30, scope: !4392)
!4402 = !DILocation(line: 386, column: 40, scope: !4392)
!4403 = !DILocation(line: 386, column: 16, scope: !4392)
!4404 = !DILocation(line: 386, column: 6, scope: !4392)
!4405 = !DILocation(line: 386, column: 14, scope: !4392)
!4406 = !DILocation(line: 387, column: 3, scope: !4380)
!4407 = !DILocation(line: 388, column: 2, scope: !4338)
!4408 = !DILocation(line: 374, column: 51, scope: !4409)
!4409 = !DILexicalBlockFile(scope: !4334, file: !44, discriminator: 2)
!4410 = !DILocation(line: 374, column: 56, scope: !4409)
!4411 = !DILocation(line: 374, column: 49, scope: !4409)
!4412 = !DILocation(line: 374, column: 2, scope: !4409)
!4413 = distinct !{!4413, !4414}
!4414 = !DILocation(line: 374, column: 2, scope: !4295)
!4415 = !DILocation(line: 390, column: 34, scope: !4295)
!4416 = !DILocation(line: 390, column: 44, scope: !4295)
!4417 = !DILocation(line: 390, column: 43, scope: !4295)
!4418 = !DILocation(line: 390, column: 20, scope: !4295)
!4419 = !DILocation(line: 390, column: 10, scope: !4295)
!4420 = !DILocation(line: 390, column: 18, scope: !4295)
!4421 = !DILocation(line: 391, column: 1, scope: !4295)
!4422 = distinct !DISubprogram(name: "completion_nicks_nonstrict", scope: !44, file: !44, line: 393, type: !4423, isLocal: true, isDefinition: true, scopeLine: 397, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!4423 = !DISubroutineType(types: !4424)
!4424 = !{!890, !158, !115, !115, !4298}
!4425 = !DILocalVariable(name: "channel", arg: 1, scope: !4422, file: !44, line: 393, type: !158)
!4426 = !DILocation(line: 393, column: 55, scope: !4422)
!4427 = !DILocalVariable(name: "nick", arg: 2, scope: !4422, file: !44, line: 394, type: !115)
!4428 = !DILocation(line: 394, column: 19, scope: !4422)
!4429 = !DILocalVariable(name: "suffix", arg: 3, scope: !4422, file: !44, line: 395, type: !115)
!4430 = !DILocation(line: 395, column: 19, scope: !4422)
!4431 = !DILocalVariable(name: "match_case", arg: 4, scope: !4422, file: !44, line: 396, type: !4298)
!4432 = !DILocation(line: 396, column: 17, scope: !4422)
!4433 = !DILocalVariable(name: "nicks", scope: !4422, file: !44, line: 398, type: !144)
!4434 = !DILocation(line: 398, column: 10, scope: !4422)
!4435 = !DILocalVariable(name: "tmp", scope: !4422, file: !44, line: 398, type: !144)
!4436 = !DILocation(line: 398, column: 18, scope: !4422)
!4437 = !DILocalVariable(name: "list", scope: !4422, file: !44, line: 399, type: !890)
!4438 = !DILocation(line: 399, column: 9, scope: !4422)
!4439 = !DILocalVariable(name: "tnick", scope: !4422, file: !44, line: 400, type: !136)
!4440 = !DILocation(line: 400, column: 8, scope: !4422)
!4441 = !DILocalVariable(name: "str", scope: !4422, file: !44, line: 400, type: !136)
!4442 = !DILocation(line: 400, column: 16, scope: !4422)
!4443 = !DILocalVariable(name: "in", scope: !4422, file: !44, line: 400, type: !136)
!4444 = !DILocation(line: 400, column: 22, scope: !4422)
!4445 = !DILocalVariable(name: "out", scope: !4422, file: !44, line: 400, type: !136)
!4446 = !DILocation(line: 400, column: 27, scope: !4422)
!4447 = !DILocalVariable(name: "len", scope: !4422, file: !44, line: 401, type: !138)
!4448 = !DILocation(line: 401, column: 6, scope: !4422)
!4449 = !DILocalVariable(name: "str_len", scope: !4422, file: !44, line: 401, type: !138)
!4450 = !DILocation(line: 401, column: 11, scope: !4422)
!4451 = !DILocalVariable(name: "tmplen", scope: !4422, file: !44, line: 401, type: !138)
!4452 = !DILocation(line: 401, column: 20, scope: !4422)
!4453 = !DILocation(line: 403, column: 2, scope: !4422)
!4454 = distinct !{!4454, !4453}
!4455 = !DILocation(line: 403, column: 10, scope: !4456)
!4456 = !DILexicalBlockFile(scope: !4457, file: !44, discriminator: 1)
!4457 = distinct !DILexicalBlock(scope: !4458, file: !44, line: 403, column: 10)
!4458 = distinct !DILexicalBlock(scope: !4422, file: !44, line: 403, column: 4)
!4459 = !DILocation(line: 403, column: 18, scope: !4456)
!4460 = !DILocation(line: 403, column: 5, scope: !4461)
!4461 = !DILexicalBlockFile(scope: !4462, file: !44, discriminator: 2)
!4462 = distinct !DILexicalBlock(scope: !4457, file: !44, line: 403, column: 3)
!4463 = !DILocation(line: 403, column: 14, scope: !4464)
!4464 = !DILexicalBlockFile(scope: !4465, file: !44, discriminator: 3)
!4465 = distinct !DILexicalBlock(scope: !4457, file: !44, line: 403, column: 12)
!4466 = !DILocation(line: 403, column: 102, scope: !4464)
!4467 = !DILocation(line: 403, column: 7, scope: !4468)
!4468 = !DILexicalBlockFile(scope: !4458, file: !44, discriminator: 4)
!4469 = !DILocation(line: 405, column: 7, scope: !4422)
!4470 = !DILocation(line: 409, column: 15, scope: !4422)
!4471 = !DILocation(line: 409, column: 8, scope: !4422)
!4472 = !DILocation(line: 409, column: 6, scope: !4422)
!4473 = !DILocation(line: 410, column: 28, scope: !4422)
!4474 = !DILocation(line: 410, column: 10, scope: !4422)
!4475 = !DILocation(line: 410, column: 8, scope: !4422)
!4476 = !DILocation(line: 412, column: 10, scope: !4422)
!4477 = !DILocation(line: 412, column: 31, scope: !4422)
!4478 = !DILocation(line: 412, column: 38, scope: !4422)
!4479 = !DILocation(line: 412, column: 22, scope: !4422)
!4480 = !DILocation(line: 412, column: 20, scope: !4422)
!4481 = !DILocation(line: 413, column: 13, scope: !4482)
!4482 = distinct !DILexicalBlock(scope: !4422, file: !44, line: 413, column: 2)
!4483 = !DILocation(line: 413, column: 11, scope: !4482)
!4484 = !DILocation(line: 413, column: 7, scope: !4482)
!4485 = !DILocation(line: 413, column: 20, scope: !4486)
!4486 = !DILexicalBlockFile(scope: !4487, file: !44, discriminator: 1)
!4487 = distinct !DILexicalBlock(scope: !4482, file: !44, line: 413, column: 2)
!4488 = !DILocation(line: 413, column: 24, scope: !4486)
!4489 = !DILocation(line: 413, column: 2, scope: !4486)
!4490 = !DILocalVariable(name: "rec", scope: !4491, file: !44, line: 414, type: !542)
!4491 = distinct !DILexicalBlock(scope: !4487, file: !44, line: 413, column: 49)
!4492 = !DILocation(line: 414, column: 13, scope: !4491)
!4493 = !DILocation(line: 414, column: 19, scope: !4491)
!4494 = !DILocation(line: 414, column: 24, scope: !4491)
!4495 = !DILocation(line: 416, column: 33, scope: !4491)
!4496 = !DILocation(line: 416, column: 38, scope: !4491)
!4497 = !DILocation(line: 416, column: 26, scope: !4491)
!4498 = !DILocation(line: 416, column: 24, scope: !4491)
!4499 = !DILocation(line: 417, column: 7, scope: !4500)
!4500 = distinct !DILexicalBlock(scope: !4491, file: !44, line: 417, column: 7)
!4501 = !DILocation(line: 417, column: 16, scope: !4500)
!4502 = !DILocation(line: 417, column: 14, scope: !4500)
!4503 = !DILocation(line: 417, column: 7, scope: !4491)
!4504 = !DILocation(line: 418, column: 35, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4500, file: !44, line: 417, column: 25)
!4506 = !DILocation(line: 418, column: 41, scope: !4505)
!4507 = !DILocation(line: 418, column: 33, scope: !4505)
!4508 = !DILocation(line: 419, column: 41, scope: !4505)
!4509 = !DILocation(line: 419, column: 46, scope: !4505)
!4510 = !DILocation(line: 419, column: 53, scope: !4505)
!4511 = !DILocation(line: 419, column: 31, scope: !4505)
!4512 = !DILocation(line: 419, column: 29, scope: !4505)
!4513 = !DILocation(line: 420, column: 3, scope: !4505)
!4514 = !DILocation(line: 423, column: 8, scope: !4491)
!4515 = !DILocation(line: 423, column: 13, scope: !4491)
!4516 = !DILocation(line: 423, column: 6, scope: !4491)
!4517 = !DILocation(line: 423, column: 25, scope: !4491)
!4518 = !DILocation(line: 423, column: 23, scope: !4491)
!4519 = !DILocation(line: 424, column: 3, scope: !4491)
!4520 = !DILocation(line: 424, column: 11, scope: !4521)
!4521 = !DILexicalBlockFile(scope: !4491, file: !44, discriminator: 1)
!4522 = !DILocation(line: 424, column: 10, scope: !4521)
!4523 = !DILocation(line: 424, column: 14, scope: !4521)
!4524 = !DILocation(line: 424, column: 3, scope: !4521)
!4525 = !DILocation(line: 425, column: 31, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4527, file: !44, line: 425, column: 7)
!4527 = distinct !DILexicalBlock(scope: !4491, file: !44, line: 424, column: 23)
!4528 = !DILocation(line: 425, column: 30, scope: !4526)
!4529 = !DILocation(line: 425, column: 7, scope: !4526)
!4530 = !DILocation(line: 425, column: 8, scope: !4526)
!4531 = !DILocation(line: 425, column: 10, scope: !4526)
!4532 = !DILocation(line: 425, column: 9, scope: !4526)
!4533 = !DILocation(line: 425, column: 11, scope: !4526)
!4534 = !DILocation(line: 425, column: 7, scope: !4527)
!4535 = !DILocation(line: 426, column: 15, scope: !4526)
!4536 = !DILocation(line: 426, column: 14, scope: !4526)
!4537 = !DILocation(line: 426, column: 9, scope: !4526)
!4538 = !DILocation(line: 426, column: 12, scope: !4526)
!4539 = !DILocation(line: 426, column: 5, scope: !4526)
!4540 = !DILocation(line: 427, column: 27, scope: !4527)
!4541 = !DILocation(line: 424, column: 3, scope: !4542)
!4542 = !DILexicalBlockFile(scope: !4491, file: !44, discriminator: 2)
!4543 = distinct !{!4543, !4519}
!4544 = !DILocation(line: 429, column: 18, scope: !4491)
!4545 = !DILocation(line: 429, column: 22, scope: !4491)
!4546 = !DILocation(line: 432, column: 8, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !4491, file: !44, line: 432, column: 7)
!4548 = !DILocation(line: 432, column: 28, scope: !4549)
!4549 = !DILexicalBlockFile(scope: !4547, file: !44, discriminator: 1)
!4550 = !DILocation(line: 432, column: 33, scope: !4549)
!4551 = !DILocation(line: 432, column: 39, scope: !4549)
!4552 = !DILocation(line: 432, column: 20, scope: !4549)
!4553 = !DILocation(line: 432, column: 8, scope: !4549)
!4554 = !DILocation(line: 433, column: 30, scope: !4547)
!4555 = !DILocation(line: 433, column: 35, scope: !4547)
!4556 = !DILocation(line: 433, column: 41, scope: !4547)
!4557 = !DILocation(line: 433, column: 10, scope: !4547)
!4558 = !DILocation(line: 432, column: 8, scope: !4559)
!4559 = !DILexicalBlockFile(scope: !4547, file: !44, discriminator: 2)
!4560 = !DILocation(line: 432, column: 8, scope: !4561)
!4561 = !DILexicalBlockFile(scope: !4547, file: !44, discriminator: 3)
!4562 = !DILocation(line: 433, column: 47, scope: !4549)
!4563 = !DILocation(line: 432, column: 7, scope: !4561)
!4564 = !DILocation(line: 434, column: 24, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4547, file: !44, line: 433, column: 53)
!4566 = !DILocation(line: 434, column: 29, scope: !4565)
!4567 = !DILocation(line: 434, column: 35, scope: !4565)
!4568 = !DILocation(line: 434, column: 12, scope: !4565)
!4569 = !DILocation(line: 434, column: 10, scope: !4565)
!4570 = !DILocation(line: 435, column: 8, scope: !4571)
!4571 = distinct !DILexicalBlock(scope: !4565, file: !44, line: 435, column: 8)
!4572 = !DILocation(line: 435, column: 8, scope: !4565)
!4573 = !DILocation(line: 436, column: 19, scope: !4571)
!4574 = !DILocation(line: 436, column: 5, scope: !4571)
!4575 = !DILocation(line: 438, column: 32, scope: !4576)
!4576 = distinct !DILexicalBlock(scope: !4565, file: !44, line: 438, column: 8)
!4577 = !DILocation(line: 438, column: 38, scope: !4576)
!4578 = !DILocation(line: 438, column: 8, scope: !4576)
!4579 = !DILocation(line: 438, column: 45, scope: !4576)
!4580 = !DILocation(line: 438, column: 8, scope: !4565)
!4581 = !DILocation(line: 439, column: 26, scope: !4576)
!4582 = !DILocation(line: 439, column: 32, scope: !4576)
!4583 = !DILocation(line: 439, column: 12, scope: !4576)
!4584 = !DILocation(line: 439, column: 10, scope: !4576)
!4585 = !DILocation(line: 439, column: 5, scope: !4576)
!4586 = !DILocation(line: 441, column: 40, scope: !4576)
!4587 = !DILocation(line: 441, column: 33, scope: !4576)
!4588 = !DILocation(line: 442, column: 3, scope: !4565)
!4589 = !DILocation(line: 444, column: 2, scope: !4491)
!4590 = !DILocation(line: 413, column: 38, scope: !4591)
!4591 = !DILexicalBlockFile(scope: !4487, file: !44, discriminator: 2)
!4592 = !DILocation(line: 413, column: 43, scope: !4591)
!4593 = !DILocation(line: 413, column: 36, scope: !4591)
!4594 = !DILocation(line: 413, column: 2, scope: !4591)
!4595 = distinct !{!4595, !4596}
!4596 = !DILocation(line: 413, column: 2, scope: !4422)
!4597 = !DILocation(line: 445, column: 16, scope: !4422)
!4598 = !DILocation(line: 445, column: 9, scope: !4422)
!4599 = !DILocation(line: 446, column: 15, scope: !4422)
!4600 = !DILocation(line: 446, column: 2, scope: !4422)
!4601 = !DILocation(line: 448, column: 9, scope: !4422)
!4602 = !DILocation(line: 448, column: 2, scope: !4422)
!4603 = !DILocation(line: 449, column: 1, scope: !4422)
!4604 = distinct !DISubprogram(name: "line_get_server", scope: !44, file: !44, line: 759, type: !4605, isLocal: true, isDefinition: true, scopeLine: 760, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!4605 = !DISubroutineType(types: !4606)
!4606 = !{!174, !115}
!4607 = !DILocalVariable(name: "line", arg: 1, scope: !4604, file: !44, line: 759, type: !115)
!4608 = !DILocation(line: 759, column: 48, scope: !4604)
!4609 = !DILocalVariable(name: "server", scope: !4604, file: !44, line: 761, type: !174)
!4610 = !DILocation(line: 761, column: 14, scope: !4604)
!4611 = !DILocalVariable(name: "tag", scope: !4604, file: !44, line: 762, type: !136)
!4612 = !DILocation(line: 762, column: 8, scope: !4604)
!4613 = !DILocalVariable(name: "ptr", scope: !4604, file: !44, line: 762, type: !136)
!4614 = !DILocation(line: 762, column: 14, scope: !4604)
!4615 = !DILocation(line: 764, column: 2, scope: !4604)
!4616 = distinct !{!4616, !4615}
!4617 = !DILocation(line: 764, column: 10, scope: !4618)
!4618 = !DILexicalBlockFile(scope: !4619, file: !44, discriminator: 1)
!4619 = distinct !DILexicalBlock(scope: !4620, file: !44, line: 764, column: 10)
!4620 = distinct !DILexicalBlock(scope: !4604, file: !44, line: 764, column: 4)
!4621 = !DILocation(line: 764, column: 15, scope: !4618)
!4622 = !DILocation(line: 764, column: 5, scope: !4623)
!4623 = !DILexicalBlockFile(scope: !4624, file: !44, discriminator: 2)
!4624 = distinct !DILexicalBlock(scope: !4619, file: !44, line: 764, column: 3)
!4625 = !DILocation(line: 764, column: 14, scope: !4626)
!4626 = !DILexicalBlockFile(scope: !4627, file: !44, discriminator: 3)
!4627 = distinct !DILexicalBlock(scope: !4619, file: !44, line: 764, column: 12)
!4628 = !DILocation(line: 764, column: 99, scope: !4626)
!4629 = !DILocation(line: 764, column: 7, scope: !4630)
!4630 = !DILexicalBlockFile(scope: !4620, file: !44, discriminator: 4)
!4631 = !DILocation(line: 765, column: 7, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4604, file: !44, line: 765, column: 6)
!4633 = !DILocation(line: 765, column: 6, scope: !4632)
!4634 = !DILocation(line: 765, column: 12, scope: !4632)
!4635 = !DILocation(line: 765, column: 6, scope: !4604)
!4636 = !DILocation(line: 765, column: 20, scope: !4637)
!4637 = !DILexicalBlockFile(scope: !4632, file: !44, discriminator: 1)
!4638 = !DILocation(line: 768, column: 17, scope: !4604)
!4639 = !DILocation(line: 768, column: 21, scope: !4604)
!4640 = !DILocation(line: 768, column: 8, scope: !4604)
!4641 = !DILocation(line: 768, column: 6, scope: !4604)
!4642 = !DILocation(line: 769, column: 15, scope: !4604)
!4643 = !DILocation(line: 769, column: 8, scope: !4604)
!4644 = !DILocation(line: 769, column: 6, scope: !4604)
!4645 = !DILocation(line: 770, column: 6, scope: !4646)
!4646 = distinct !DILexicalBlock(scope: !4604, file: !44, line: 770, column: 6)
!4647 = !DILocation(line: 770, column: 10, scope: !4646)
!4648 = !DILocation(line: 770, column: 6, scope: !4604)
!4649 = !DILocation(line: 770, column: 19, scope: !4650)
!4650 = !DILexicalBlockFile(scope: !4646, file: !44, discriminator: 1)
!4651 = !DILocation(line: 770, column: 23, scope: !4650)
!4652 = !DILocation(line: 770, column: 18, scope: !4650)
!4653 = !DILocation(line: 772, column: 27, scope: !4604)
!4654 = !DILocation(line: 772, column: 11, scope: !4604)
!4655 = !DILocation(line: 772, column: 9, scope: !4604)
!4656 = !DILocation(line: 774, column: 9, scope: !4604)
!4657 = !DILocation(line: 774, column: 2, scope: !4604)
!4658 = !DILocation(line: 775, column: 9, scope: !4604)
!4659 = !DILocation(line: 775, column: 2, scope: !4604)
!4660 = !DILocation(line: 776, column: 1, scope: !4604)
!4661 = distinct !DISubprogram(name: "expand_escapes", scope: !44, file: !44, line: 1072, type: !4662, isLocal: true, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!4662 = !DISubroutineType(types: !4663)
!4663 = !{!136, !115, !174, !497}
!4664 = !DILocalVariable(name: "line", arg: 1, scope: !4661, file: !44, line: 1072, type: !115)
!4665 = !DILocation(line: 1072, column: 41, scope: !4661)
!4666 = !DILocalVariable(name: "server", arg: 2, scope: !4661, file: !44, line: 1072, type: !174)
!4667 = !DILocation(line: 1072, column: 59, scope: !4661)
!4668 = !DILocalVariable(name: "item", arg: 3, scope: !4661, file: !44, line: 1073, type: !497)
!4669 = !DILocation(line: 1073, column: 21, scope: !4661)
!4670 = !DILocalVariable(name: "ptr", scope: !4661, file: !44, line: 1075, type: !136)
!4671 = !DILocation(line: 1075, column: 8, scope: !4661)
!4672 = !DILocalVariable(name: "ret", scope: !4661, file: !44, line: 1075, type: !136)
!4673 = !DILocation(line: 1075, column: 14, scope: !4661)
!4674 = !DILocalVariable(name: "prev", scope: !4661, file: !44, line: 1076, type: !115)
!4675 = !DILocation(line: 1076, column: 14, scope: !4661)
!4676 = !DILocalVariable(name: "chr", scope: !4661, file: !44, line: 1077, type: !138)
!4677 = !DILocation(line: 1077, column: 6, scope: !4661)
!4678 = !DILocation(line: 1079, column: 9, scope: !4661)
!4679 = !DILocation(line: 1079, column: 7, scope: !4661)
!4680 = !DILocation(line: 1080, column: 30, scope: !4661)
!4681 = !DILocation(line: 1080, column: 23, scope: !4661)
!4682 = !DILocation(line: 1080, column: 35, scope: !4661)
!4683 = !DILocation(line: 1080, column: 14, scope: !4684)
!4684 = !DILexicalBlockFile(scope: !4661, file: !44, discriminator: 1)
!4685 = !DILocation(line: 1080, column: 12, scope: !4661)
!4686 = !DILocation(line: 1080, column: 6, scope: !4661)
!4687 = !DILocation(line: 1081, column: 2, scope: !4661)
!4688 = !DILocation(line: 1081, column: 10, scope: !4689)
!4689 = !DILexicalBlockFile(scope: !4690, file: !44, discriminator: 1)
!4690 = distinct !DILexicalBlock(scope: !4691, file: !44, line: 1081, column: 2)
!4691 = distinct !DILexicalBlock(scope: !4661, file: !44, line: 1081, column: 2)
!4692 = !DILocation(line: 1081, column: 9, scope: !4689)
!4693 = !DILocation(line: 1081, column: 15, scope: !4689)
!4694 = !DILocation(line: 1081, column: 2, scope: !4689)
!4695 = !DILocation(line: 1082, column: 8, scope: !4696)
!4696 = distinct !DILexicalBlock(scope: !4697, file: !44, line: 1082, column: 7)
!4697 = distinct !DILexicalBlock(scope: !4690, file: !44, line: 1081, column: 32)
!4698 = !DILocation(line: 1082, column: 7, scope: !4696)
!4699 = !DILocation(line: 1082, column: 13, scope: !4696)
!4700 = !DILocation(line: 1082, column: 7, scope: !4697)
!4701 = !DILocation(line: 1083, column: 14, scope: !4702)
!4702 = distinct !DILexicalBlock(scope: !4696, file: !44, line: 1082, column: 22)
!4703 = !DILocation(line: 1083, column: 13, scope: !4702)
!4704 = !DILocation(line: 1083, column: 8, scope: !4702)
!4705 = !DILocation(line: 1083, column: 11, scope: !4702)
!4706 = !DILocation(line: 1084, column: 4, scope: !4702)
!4707 = !DILocation(line: 1087, column: 7, scope: !4697)
!4708 = !DILocation(line: 1088, column: 8, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4697, file: !44, line: 1088, column: 7)
!4710 = !DILocation(line: 1088, column: 7, scope: !4709)
!4711 = !DILocation(line: 1088, column: 13, scope: !4709)
!4712 = !DILocation(line: 1088, column: 7, scope: !4697)
!4713 = !DILocation(line: 1089, column: 8, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !4709, file: !44, line: 1088, column: 22)
!4715 = !DILocation(line: 1089, column: 11, scope: !4714)
!4716 = !DILocation(line: 1090, column: 4, scope: !4714)
!4717 = !DILocation(line: 1093, column: 9, scope: !4697)
!4718 = !DILocation(line: 1093, column: 7, scope: !4697)
!4719 = !DILocation(line: 1094, column: 7, scope: !4720)
!4720 = distinct !DILexicalBlock(scope: !4697, file: !44, line: 1094, column: 7)
!4721 = !DILocation(line: 1094, column: 11, scope: !4720)
!4722 = !DILocation(line: 1094, column: 19, scope: !4720)
!4723 = !DILocation(line: 1094, column: 22, scope: !4724)
!4724 = !DILexicalBlockFile(scope: !4720, file: !44, discriminator: 1)
!4725 = !DILocation(line: 1094, column: 26, scope: !4724)
!4726 = !DILocation(line: 1094, column: 7, scope: !4724)
!4727 = !DILocation(line: 1098, column: 8, scope: !4728)
!4728 = distinct !DILexicalBlock(scope: !4729, file: !44, line: 1098, column: 8)
!4729 = distinct !DILexicalBlock(scope: !4720, file: !44, line: 1094, column: 35)
!4730 = !DILocation(line: 1098, column: 16, scope: !4728)
!4731 = !DILocation(line: 1098, column: 13, scope: !4728)
!4732 = !DILocation(line: 1098, column: 8, scope: !4729)
!4733 = !DILocalVariable(name: "prev_line", scope: !4734, file: !44, line: 1099, type: !136)
!4734 = distinct !DILexicalBlock(scope: !4728, file: !44, line: 1098, column: 22)
!4735 = !DILocation(line: 1099, column: 11, scope: !4734)
!4736 = !DILocation(line: 1099, column: 33, scope: !4734)
!4737 = !DILocation(line: 1099, column: 40, scope: !4734)
!4738 = !DILocation(line: 1099, column: 47, scope: !4734)
!4739 = !DILocation(line: 1099, column: 45, scope: !4734)
!4740 = !DILocation(line: 1099, column: 53, scope: !4734)
!4741 = !DILocation(line: 1099, column: 23, scope: !4734)
!4742 = !DILocation(line: 1100, column: 16, scope: !4734)
!4743 = !DILocation(line: 1100, column: 27, scope: !4734)
!4744 = !DILocation(line: 1100, column: 35, scope: !4734)
!4745 = !DILocation(line: 1100, column: 5, scope: !4734)
!4746 = !DILocation(line: 1101, column: 12, scope: !4734)
!4747 = !DILocation(line: 1101, column: 5, scope: !4734)
!4748 = !DILocation(line: 1102, column: 12, scope: !4734)
!4749 = !DILocation(line: 1102, column: 17, scope: !4734)
!4750 = !DILocation(line: 1102, column: 10, scope: !4734)
!4751 = !DILocation(line: 1103, column: 11, scope: !4734)
!4752 = !DILocation(line: 1103, column: 9, scope: !4734)
!4753 = !DILocation(line: 1104, column: 4, scope: !4734)
!4754 = !DILocation(line: 1105, column: 3, scope: !4729)
!4755 = !DILocation(line: 1105, column: 14, scope: !4756)
!4756 = !DILexicalBlockFile(scope: !4757, file: !44, discriminator: 1)
!4757 = distinct !DILexicalBlock(scope: !4720, file: !44, line: 1105, column: 14)
!4758 = !DILocation(line: 1105, column: 18, scope: !4756)
!4759 = !DILocation(line: 1107, column: 13, scope: !4760)
!4760 = distinct !DILexicalBlock(scope: !4757, file: !44, line: 1105, column: 25)
!4761 = !DILocation(line: 1107, column: 8, scope: !4760)
!4762 = !DILocation(line: 1107, column: 11, scope: !4760)
!4763 = !DILocation(line: 1108, column: 3, scope: !4760)
!4764 = !DILocation(line: 1110, column: 8, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !4757, file: !44, line: 1108, column: 10)
!4766 = !DILocation(line: 1110, column: 11, scope: !4765)
!4767 = !DILocation(line: 1111, column: 14, scope: !4765)
!4768 = !DILocation(line: 1111, column: 13, scope: !4765)
!4769 = !DILocation(line: 1111, column: 8, scope: !4765)
!4770 = !DILocation(line: 1111, column: 11, scope: !4765)
!4771 = !DILocation(line: 1113, column: 2, scope: !4697)
!4772 = !DILocation(line: 1081, column: 28, scope: !4773)
!4773 = !DILexicalBlockFile(scope: !4690, file: !44, discriminator: 2)
!4774 = !DILocation(line: 1081, column: 2, scope: !4773)
!4775 = distinct !{!4775, !4687}
!4776 = !DILocation(line: 1115, column: 3, scope: !4661)
!4777 = !DILocation(line: 1115, column: 7, scope: !4661)
!4778 = !DILocation(line: 1116, column: 9, scope: !4661)
!4779 = !DILocation(line: 1116, column: 2, scope: !4661)
!4780 = distinct !DISubprogram(name: "auto_complete", scope: !44, file: !44, line: 1119, type: !4781, isLocal: true, isDefinition: true, scopeLine: 1120, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !612)
!4781 = !DISubroutineType(types: !4782)
!4782 = !{!136, !158, !115}
!4783 = !DILocalVariable(name: "channel", arg: 1, scope: !4780, file: !44, line: 1119, type: !158)
!4784 = !DILocation(line: 1119, column: 41, scope: !4780)
!4785 = !DILocalVariable(name: "line", arg: 2, scope: !4780, file: !44, line: 1119, type: !115)
!4786 = !DILocation(line: 1119, column: 62, scope: !4780)
!4787 = !DILocalVariable(name: "comp", scope: !4780, file: !44, line: 1121, type: !890)
!4788 = !DILocation(line: 1121, column: 9, scope: !4780)
!4789 = !DILocalVariable(name: "p", scope: !4780, file: !44, line: 1122, type: !115)
!4790 = !DILocation(line: 1122, column: 14, scope: !4780)
!4791 = !DILocalVariable(name: "nick", scope: !4780, file: !44, line: 1123, type: !136)
!4792 = !DILocation(line: 1123, column: 15, scope: !4780)
!4793 = !DILocalVariable(name: "ret", scope: !4780, file: !44, line: 1123, type: !136)
!4794 = !DILocation(line: 1123, column: 22, scope: !4780)
!4795 = !DILocation(line: 1125, column: 13, scope: !4780)
!4796 = !DILocation(line: 1125, column: 19, scope: !4780)
!4797 = !DILocation(line: 1125, column: 6, scope: !4780)
!4798 = !DILocation(line: 1125, column: 4, scope: !4780)
!4799 = !DILocation(line: 1126, column: 6, scope: !4800)
!4800 = distinct !DILexicalBlock(scope: !4780, file: !44, line: 1126, column: 6)
!4801 = !DILocation(line: 1126, column: 8, scope: !4800)
!4802 = !DILocation(line: 1126, column: 6, scope: !4780)
!4803 = !DILocation(line: 1127, column: 3, scope: !4800)
!4804 = !DILocation(line: 1129, column: 26, scope: !4780)
!4805 = !DILocation(line: 1129, column: 39, scope: !4780)
!4806 = !DILocation(line: 1129, column: 41, scope: !4780)
!4807 = !DILocation(line: 1129, column: 40, scope: !4780)
!4808 = !DILocation(line: 1129, column: 32, scope: !4780)
!4809 = !DILocation(line: 1129, column: 16, scope: !4780)
!4810 = !DILocation(line: 1129, column: 14, scope: !4780)
!4811 = !DILocation(line: 1131, column: 13, scope: !4780)
!4812 = !DILocation(line: 1132, column: 20, scope: !4813)
!4813 = distinct !DILexicalBlock(scope: !4780, file: !44, line: 1132, column: 6)
!4814 = !DILocation(line: 1132, column: 29, scope: !4813)
!4815 = !DILocation(line: 1132, column: 6, scope: !4813)
!4816 = !DILocation(line: 1132, column: 35, scope: !4813)
!4817 = !DILocation(line: 1132, column: 6, scope: !4780)
!4818 = !DILocation(line: 1134, column: 35, scope: !4819)
!4819 = distinct !DILexicalBlock(scope: !4813, file: !44, line: 1132, column: 43)
!4820 = !DILocation(line: 1134, column: 44, scope: !4819)
!4821 = !DILocation(line: 1134, column: 10, scope: !4819)
!4822 = !DILocation(line: 1134, column: 8, scope: !4819)
!4823 = !DILocation(line: 1135, column: 7, scope: !4824)
!4824 = distinct !DILexicalBlock(scope: !4819, file: !44, line: 1135, column: 7)
!4825 = !DILocation(line: 1135, column: 12, scope: !4824)
!4826 = !DILocation(line: 1135, column: 7, scope: !4819)
!4827 = !DILocation(line: 1136, column: 22, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4824, file: !44, line: 1135, column: 20)
!4829 = !DILocation(line: 1136, column: 28, scope: !4828)
!4830 = !DILocation(line: 1136, column: 34, scope: !4828)
!4831 = !DILocation(line: 1136, column: 10, scope: !4828)
!4832 = !DILocation(line: 1136, column: 8, scope: !4828)
!4833 = !DILocation(line: 1137, column: 19, scope: !4828)
!4834 = !DILocation(line: 1137, column: 4, scope: !4828)
!4835 = !DILocation(line: 1138, column: 16, scope: !4828)
!4836 = !DILocation(line: 1138, column: 4, scope: !4828)
!4837 = !DILocation(line: 1139, column: 3, scope: !4828)
!4838 = !DILocation(line: 1140, column: 2, scope: !4819)
!4839 = !DILocation(line: 1142, column: 9, scope: !4780)
!4840 = !DILocation(line: 1142, column: 2, scope: !4780)
!4841 = !DILocation(line: 1144, column: 16, scope: !4780)
!4842 = !DILocation(line: 1144, column: 9, scope: !4780)
!4843 = !DILocation(line: 1145, column: 1, scope: !4780)
