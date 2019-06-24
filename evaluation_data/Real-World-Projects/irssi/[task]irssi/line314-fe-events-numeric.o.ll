; ModuleID = './line314-fe-events-numeric.o.i'
source_filename = "./line314-fe-events-numeric.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct._NET_SENDBUF_REC = type opaque
%struct._RAWLOG_REC = type opaque
%struct._SERVER_REC = type { i32, i32, i32, %struct._SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, {}*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)* }
%struct._SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8* }
%struct._CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)* }
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, {}*, i8* (%struct._WI_ITEM_REC*)* }
%struct._NICK_REC = type { i32, i32, i64, i8*, i8*, i8*, i32, i8, [8 x i8], i8*, %struct._NICK_REC* }
%struct._QUERY_REC = type opaque
%struct._REDIRECT_REC = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GTimeVal = type { i64, i64 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GHashTable = type opaque
%struct.modes_type = type { void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, i8 }
%struct._IRC_CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._IRC_SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)*, %struct._GSList*, i64, i32, i32 }
%struct.BAN_REC = type { i8*, i8*, i64 }

@last_away_nick = internal global i8* null, align 8
@last_away_msg = internal global i8* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"fe-common/irc\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"event 221\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"event 303\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"event 353\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"event 366\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"event 352\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"event 315\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"event 271\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"event 272\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"event 281\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"event 367\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"event 348\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"event 346\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"event 433\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"event 332\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"event 333\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"event 324\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"event 329\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"event 306\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"event 305\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"event 301\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"event 328\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"event 302\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"event 341\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"event 437\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"event 401\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"event 403\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"event 405\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"event 407\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"event 471\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"event 472\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"event 473\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"event 474\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"event 475\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"event 476\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"event 477\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"event 375\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"event 376\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"event 372\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"event 422\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"event 439\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"event 707\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"default event numeric\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"event 001\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"event 004\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"event 005\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"event 254\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"event 364\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"event 365\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"event 381\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"event 396\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"event 421\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"event 432\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"event 436\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"event 438\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"event 465\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"event 470\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"event 479\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"event 344\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"event 345\00", align 1
@.str.60 = private unnamed_addr constant [10 x i8] c"event 347\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"event 349\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"event 368\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"event 386\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"event 387\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"event 388\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"event 389\00", align 1
@.str.67 = private unnamed_addr constant [10 x i8] c"event 404\00", align 1
@.str.68 = private unnamed_addr constant [10 x i8] c"event 408\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"event 442\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"event 478\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"event 482\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"event 486\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"event 489\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"event 494\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"event 506\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"event 716\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"event 717\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"event 728\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"event 729\00", align 1
@__func__.event_user_mode = private unnamed_addr constant [16 x i8] c"event_user_mode\00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@.str.81 = private unnamed_addr constant [15 x i8] c"server != NULL\00", align 1
@__func__.event_ison = private unnamed_addr constant [11 x i8] c"event_ison\00", align 1
@__func__.event_names_list = private unnamed_addr constant [17 x i8] c"event_names_list\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.83 = private unnamed_addr constant [17 x i8] c"WINDOW ITEM TYPE\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"CHANNEL\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"IRC\00", align 1
@.str.86 = private unnamed_addr constant [15 x i8] c"fe-common/core\00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__func__.event_end_of_names = private unnamed_addr constant [19 x i8] c"event_end_of_names\00", align 1
@__func__.print_event_received = private unnamed_addr constant [21 x i8] c"print_event_received\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c" :\00", align 1
@current_server_event = external global i8*, align 8
@__func__.event_who = private unnamed_addr constant [10 x i8] c"event_who\00", align 1
@__func__.event_end_of_who = private unnamed_addr constant [17 x i8] c"event_end_of_who\00", align 1
@__func__.event_silence_list = private unnamed_addr constant [19 x i8] c"event_silence_list\00", align 1
@__func__.event_accept_list = private unnamed_addr constant [18 x i8] c"event_accept_list\00", align 1
@__func__.event_ban_list = private unnamed_addr constant [15 x i8] c"event_ban_list\00", align 1
@__func__.event_eban_list = private unnamed_addr constant [16 x i8] c"event_eban_list\00", align 1
@__func__.event_invite_list = private unnamed_addr constant [18 x i8] c"event_invite_list\00", align 1
@__func__.event_nick_in_use = private unnamed_addr constant [18 x i8] c"event_nick_in_use\00", align 1
@__func__.event_topic_get = private unnamed_addr constant [16 x i8] c"event_topic_get\00", align 1
@__func__.event_topic_info = private unnamed_addr constant [17 x i8] c"event_topic_info\00", align 1
@.str.89 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__func__.event_channel_mode = private unnamed_addr constant [19 x i8] c"event_channel_mode\00", align 1
@__func__.event_channel_created = private unnamed_addr constant [22 x i8] c"event_channel_created\00", align 1
@__func__.event_away = private unnamed_addr constant [11 x i8] c"event_away\00", align 1
@.str.90 = private unnamed_addr constant [15 x i8] c"show_away_once\00", align 1
@__func__.event_chanserv_url = private unnamed_addr constant [19 x i8] c"event_chanserv_url\00", align 1
@__func__.event_userhost = private unnamed_addr constant [15 x i8] c"event_userhost\00", align 1
@__func__.event_sent_invite = private unnamed_addr constant [18 x i8] c"event_sent_invite\00", align 1
@__func__.event_target_unavailable = private unnamed_addr constant [25 x i8] c"event_target_unavailable\00", align 1
@__func__.event_no_such_nick = private unnamed_addr constant [19 x i8] c"event_no_such_nick\00", align 1
@.str.91 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@__func__.event_no_such_channel = private unnamed_addr constant [22 x i8] c"event_no_such_channel\00", align 1
@__func__.cannot_join = private unnamed_addr constant [12 x i8] c"cannot_join\00", align 1
@__func__.event_duplicate_channel = private unnamed_addr constant [24 x i8] c"event_duplicate_channel\00", align 1
@__func__.event_unknown_mode = private unnamed_addr constant [19 x i8] c"event_unknown_mode\00", align 1
@__func__.event_477 = private unnamed_addr constant [10 x i8] c"event_477\00", align 1
@.str.92 = private unnamed_addr constant [10 x i8] c"skip_motd\00", align 1
@__func__.event_target_too_fast = private unnamed_addr constant [22 x i8] c"event_target_too_fast\00", align 1

; Function Attrs: nounwind uwtable
define void @fe_events_numeric_init() #0 !dbg !1086 {
  store i8* null, i8** @last_away_nick, align 8, !dbg !1088
  store i8* null, i8** @last_away_msg, align 8, !dbg !1089
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_user_mode to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1090
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_ison to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1091
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_names_list to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1092
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_end_of_names to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1093
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_who to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1094
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_end_of_who to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1095
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_silence_list to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1096
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_empty to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1097
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_accept_list to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1098
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_ban_list to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1099
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_eban_list to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1100
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_invite_list to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1101
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_nick_in_use to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1102
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_topic_get to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1103
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_topic_info to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1104
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_channel_mode to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1105
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_channel_created to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1106
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_nowaway to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1107
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_unaway to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1108
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_away to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1109
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_chanserv_url to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1110
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_userhost to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1111
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_sent_invite to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1112
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_target_unavailable to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1113
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_no_such_nick to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1114
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_no_such_channel to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1115
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_too_many_channels to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1116
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_duplicate_channel to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1117
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_channel_is_full to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1118
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_unknown_mode to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1119
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_invite_only to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1120
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_banned to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1121
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_bad_channel_key to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1122
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_bad_channel_mask to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1123
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_477 to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1124
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_motd to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1125
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_motd to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1126
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_motd to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1127
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_motd to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1128
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_too_fast to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1129
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_too_fast to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1130
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_numeric to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1131
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1132
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1133
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1134
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1135
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1136
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1137
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1138
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1139
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1140
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1141
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1142
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1143
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1144
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1145
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1146
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1147
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1148
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1149
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1150
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1151
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1152
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1153
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1154
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1155
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1156
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1157
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1158
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1159
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1160
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1161
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1162
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1163
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.75, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1164
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1165
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1166
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1167
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1168
  ret void, !dbg !1169
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @event_user_mode(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1170 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1173, metadata !1174), !dbg !1175
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1176, metadata !1174), !dbg !1177
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1178, metadata !1174), !dbg !1179
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1180, metadata !1174), !dbg !1181
  br label %7, !dbg !1182, !llvm.loop !1183

; <label>:7:                                      ; preds = %2
  %8 = load i8*, i8** %4, align 8, !dbg !1184
  %9 = icmp ne i8* %8, null, !dbg !1188
  br i1 %9, label %10, label %11, !dbg !1184

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !1189

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.event_user_mode, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0)), !dbg !1192
  br label %28, !dbg !1195

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !1196

; <label>:13:                                     ; preds = %12
  br label %14, !dbg !1198, !llvm.loop !1199

; <label>:14:                                     ; preds = %13
  %15 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1200
  %16 = icmp ne %struct._IRC_SERVER_REC* %15, null, !dbg !1204
  br i1 %16, label %17, label %18, !dbg !1200

; <label>:17:                                     ; preds = %14
  br label %19, !dbg !1205

; <label>:18:                                     ; preds = %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.event_user_mode, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.81, i32 0, i32 0)), !dbg !1208
  br label %28, !dbg !1211

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !1212

; <label>:20:                                     ; preds = %19
  %21 = load i8*, i8** %4, align 8, !dbg !1214
  %22 = call i8* (i8*, i32, ...) @event_get_params(i8* %21, i32 2, i8* null, i8** %6), !dbg !1215
  store i8* %22, i8** %5, align 8, !dbg !1216
  %23 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1217
  %24 = bitcast %struct._IRC_SERVER_REC* %23 to i8*, !dbg !1217
  %25 = load i8*, i8** %6, align 8, !dbg !1218
  %26 = call i8* @g_strchomp(i8* %25), !dbg !1219
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %24, i8* null, i32 1, i32 60, i8* %26), !dbg !1220
  %27 = load i8*, i8** %5, align 8, !dbg !1222
  call void @g_free(i8* %27), !dbg !1223
  br label %28, !dbg !1224

; <label>:28:                                     ; preds = %20, %18, %11
  ret void, !dbg !1225
}

; Function Attrs: nounwind uwtable
define internal void @event_ison(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1226 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1227, metadata !1174), !dbg !1228
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1229, metadata !1174), !dbg !1230
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1231, metadata !1174), !dbg !1232
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1233, metadata !1174), !dbg !1234
  br label %7, !dbg !1235, !llvm.loop !1236

; <label>:7:                                      ; preds = %2
  %8 = load i8*, i8** %4, align 8, !dbg !1237
  %9 = icmp ne i8* %8, null, !dbg !1241
  br i1 %9, label %10, label %11, !dbg !1237

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !1242

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.event_ison, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0)), !dbg !1245
  br label %27, !dbg !1248

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !1249

; <label>:13:                                     ; preds = %12
  br label %14, !dbg !1251, !llvm.loop !1252

; <label>:14:                                     ; preds = %13
  %15 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1253
  %16 = icmp ne %struct._IRC_SERVER_REC* %15, null, !dbg !1257
  br i1 %16, label %17, label %18, !dbg !1253

; <label>:17:                                     ; preds = %14
  br label %19, !dbg !1258

; <label>:18:                                     ; preds = %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.event_ison, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.81, i32 0, i32 0)), !dbg !1261
  br label %27, !dbg !1264

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !1265

; <label>:20:                                     ; preds = %19
  %21 = load i8*, i8** %4, align 8, !dbg !1267
  %22 = call i8* (i8*, i32, ...) @event_get_params(i8* %21, i32 2, i8* null, i8** %6), !dbg !1268
  store i8* %22, i8** %5, align 8, !dbg !1269
  %23 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1270
  %24 = bitcast %struct._IRC_SERVER_REC* %23 to i8*, !dbg !1270
  %25 = load i8*, i8** %6, align 8, !dbg !1271
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %24, i8* null, i32 1, i32 107, i8* %25), !dbg !1272
  %26 = load i8*, i8** %5, align 8, !dbg !1273
  call void @g_free(i8* %26), !dbg !1274
  br label %27, !dbg !1275

; <label>:27:                                     ; preds = %20, %18, %11
  ret void, !dbg !1276
}

; Function Attrs: nounwind uwtable
define internal void @event_names_list(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1278 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1279, metadata !1174), !dbg !1280
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1281, metadata !1174), !dbg !1282
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %5, metadata !1283, metadata !1174), !dbg !1284
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1285, metadata !1174), !dbg !1286
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1287, metadata !1174), !dbg !1288
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1289, metadata !1174), !dbg !1290
  br label %9, !dbg !1291, !llvm.loop !1292

; <label>:9:                                      ; preds = %2
  %10 = load i8*, i8** %4, align 8, !dbg !1293
  %11 = icmp ne i8* %10, null, !dbg !1297
  br i1 %11, label %12, label %13, !dbg !1293

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !1298

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.event_names_list, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0)), !dbg !1301
  br label %51, !dbg !1304

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !1305

; <label>:15:                                     ; preds = %14
  %16 = load i8*, i8** %4, align 8, !dbg !1307
  %17 = call i8* (i8*, i32, ...) @event_get_params(i8* %16, i32 4, i8* null, i8* null, i8** %7, i8** %8), !dbg !1308
  store i8* %17, i8** %6, align 8, !dbg !1309
  %18 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1310
  %19 = bitcast %struct._IRC_SERVER_REC* %18 to i8*, !dbg !1310
  %20 = call i8* @module_check_cast(i8* %19, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0)), !dbg !1311
  %21 = bitcast i8* %20 to %struct._SERVER_REC*, !dbg !1312
  %22 = load i8*, i8** %7, align 8, !dbg !1313
  %23 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %21, i8* %22), !dbg !1314
  %24 = bitcast %struct._CHANNEL_REC* %23 to i8*, !dbg !1316
  %25 = call i8* @module_check_cast_module(i8* %24, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i32 0, i32 0)), !dbg !1317
  %26 = bitcast i8* %25 to %struct._CHANNEL_REC*, !dbg !1319
  %27 = bitcast %struct._CHANNEL_REC* %26 to i8*, !dbg !1320
  %28 = call i8* @chat_protocol_check_cast(i8* %27, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i32 0, i32 0)), !dbg !1321
  %29 = bitcast i8* %28 to %struct._IRC_CHANNEL_REC*, !dbg !1323
  store %struct._IRC_CHANNEL_REC* %29, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1324
  %30 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1325
  %31 = icmp eq %struct._IRC_CHANNEL_REC* %30, null, !dbg !1327
  br i1 %31, label %40, label %32, !dbg !1328

; <label>:32:                                     ; preds = %15
  %33 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1329
  %34 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %33, i32 0, i32 21, !dbg !1331
  %35 = load i16, i16* %34, align 8, !dbg !1331
  %36 = lshr i16 %35, 1, !dbg !1331
  %37 = and i16 %36, 1, !dbg !1331
  %38 = zext i16 %37 to i32, !dbg !1331
  %39 = icmp ne i32 %38, 0, !dbg !1329
  br i1 %39, label %40, label %49, !dbg !1332

; <label>:40:                                     ; preds = %32, %15
  %41 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1333
  %42 = bitcast %struct._IRC_SERVER_REC* %41 to i8*, !dbg !1333
  %43 = load i8*, i8** %7, align 8, !dbg !1335
  %44 = load i8*, i8** %7, align 8, !dbg !1336
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.86, i32 0, i32 0), i8* %42, i8* %43, i32 1, i32 77, i8* %44, i32 0, i32 0, i32 0, i32 0, i32 0), !dbg !1337
  %45 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1338
  %46 = bitcast %struct._IRC_SERVER_REC* %45 to i8*, !dbg !1338
  %47 = load i8*, i8** %7, align 8, !dbg !1339
  %48 = load i8*, i8** %8, align 8, !dbg !1340
  call void (i8*, i8*, i32, i8*, ...) @printtext(i8* %46, i8* %47, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87, i32 0, i32 0), i8* %48), !dbg !1341
  br label %49, !dbg !1342

; <label>:49:                                     ; preds = %40, %32
  %50 = load i8*, i8** %6, align 8, !dbg !1343
  call void @g_free(i8* %50), !dbg !1344
  br label %51, !dbg !1345

; <label>:51:                                     ; preds = %49, %13
  ret void, !dbg !1346
}

; Function Attrs: nounwind uwtable
define internal void @event_end_of_names(%struct._IRC_SERVER_REC*, i8*, i8*) #0 !dbg !1347 {
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !1350, metadata !1174), !dbg !1351
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1352, metadata !1174), !dbg !1353
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1354, metadata !1174), !dbg !1355
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %7, metadata !1356, metadata !1174), !dbg !1357
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1358, metadata !1174), !dbg !1359
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1360, metadata !1174), !dbg !1361
  br label %10, !dbg !1362, !llvm.loop !1363

; <label>:10:                                     ; preds = %3
  %11 = load i8*, i8** %5, align 8, !dbg !1364
  %12 = icmp ne i8* %11, null, !dbg !1368
  br i1 %12, label %13, label %14, !dbg !1364

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !1369

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.event_end_of_names, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0)), !dbg !1372
  br label %47, !dbg !1375

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !1376

; <label>:16:                                     ; preds = %15
  %17 = load i8*, i8** %5, align 8, !dbg !1378
  %18 = call i8* (i8*, i32, ...) @event_get_params(i8* %17, i32 2, i8* null, i8** %9), !dbg !1379
  store i8* %18, i8** %8, align 8, !dbg !1380
  %19 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1381
  %20 = bitcast %struct._IRC_SERVER_REC* %19 to i8*, !dbg !1381
  %21 = call i8* @module_check_cast(i8* %20, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0)), !dbg !1382
  %22 = bitcast i8* %21 to %struct._SERVER_REC*, !dbg !1383
  %23 = load i8*, i8** %9, align 8, !dbg !1384
  %24 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %22, i8* %23), !dbg !1385
  %25 = bitcast %struct._CHANNEL_REC* %24 to i8*, !dbg !1387
  %26 = call i8* @module_check_cast_module(i8* %25, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i32 0, i32 0)), !dbg !1388
  %27 = bitcast i8* %26 to %struct._CHANNEL_REC*, !dbg !1390
  %28 = bitcast %struct._CHANNEL_REC* %27 to i8*, !dbg !1391
  %29 = call i8* @chat_protocol_check_cast(i8* %28, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i32 0, i32 0)), !dbg !1392
  %30 = bitcast i8* %29 to %struct._IRC_CHANNEL_REC*, !dbg !1394
  store %struct._IRC_CHANNEL_REC* %30, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !1395
  %31 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !1396
  %32 = icmp eq %struct._IRC_CHANNEL_REC* %31, null, !dbg !1398
  br i1 %32, label %41, label %33, !dbg !1399

; <label>:33:                                     ; preds = %16
  %34 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !1400
  %35 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %34, i32 0, i32 21, !dbg !1402
  %36 = load i16, i16* %35, align 8, !dbg !1402
  %37 = lshr i16 %36, 1, !dbg !1402
  %38 = and i16 %37, 1, !dbg !1402
  %39 = zext i16 %38 to i32, !dbg !1402
  %40 = icmp ne i32 %39, 0, !dbg !1400
  br i1 %40, label %41, label %45, !dbg !1403

; <label>:41:                                     ; preds = %33, %16
  %42 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1404
  %43 = load i8*, i8** %5, align 8, !dbg !1405
  %44 = load i8*, i8** %6, align 8, !dbg !1406
  call void @print_event_received(%struct._IRC_SERVER_REC* %42, i8* %43, i8* %44, i32 0), !dbg !1407
  br label %45, !dbg !1407

; <label>:45:                                     ; preds = %41, %33
  %46 = load i8*, i8** %8, align 8, !dbg !1408
  call void @g_free(i8* %46), !dbg !1409
  br label %47, !dbg !1410

; <label>:47:                                     ; preds = %45, %14
  ret void, !dbg !1411
}

; Function Attrs: nounwind uwtable
define internal void @event_who(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1412 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1413, metadata !1174), !dbg !1414
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1415, metadata !1174), !dbg !1416
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1417, metadata !1174), !dbg !1418
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1419, metadata !1174), !dbg !1420
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1421, metadata !1174), !dbg !1422
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1423, metadata !1174), !dbg !1424
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1425, metadata !1174), !dbg !1426
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1427, metadata !1174), !dbg !1428
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1429, metadata !1174), !dbg !1430
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1431, metadata !1174), !dbg !1432
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1433, metadata !1174), !dbg !1434
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1435, metadata !1174), !dbg !1436
  br label %15, !dbg !1437, !llvm.loop !1438

; <label>:15:                                     ; preds = %2
  %16 = load i8*, i8** %4, align 8, !dbg !1439
  %17 = icmp ne i8* %16, null, !dbg !1443
  br i1 %17, label %18, label %19, !dbg !1439

; <label>:18:                                     ; preds = %15
  br label %20, !dbg !1444

; <label>:19:                                     ; preds = %15
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.event_who, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0)), !dbg !1447
  br label %68, !dbg !1450

; <label>:20:                                     ; preds = %18
  br label %21, !dbg !1451

; <label>:21:                                     ; preds = %20
  %22 = load i8*, i8** %4, align 8, !dbg !1453
  %23 = call i8* (i8*, i32, ...) @event_get_params(i8* %22, i32 8, i8* null, i8** %7, i8** %8, i8** %9, i8** %13, i8** %6, i8** %10, i8** %11), !dbg !1454
  store i8* %23, i8** %5, align 8, !dbg !1455
  %24 = load i8*, i8** %11, align 8, !dbg !1456
  store i8* %24, i8** %12, align 8, !dbg !1457
  br label %25, !dbg !1458

; <label>:25:                                     ; preds = %37, %21
  %26 = load i8*, i8** %11, align 8, !dbg !1459
  %27 = load i8, i8* %26, align 1, !dbg !1461
  %28 = sext i8 %27 to i32, !dbg !1461
  %29 = icmp ne i32 %28, 0, !dbg !1462
  br i1 %29, label %30, label %35, !dbg !1463

; <label>:30:                                     ; preds = %25
  %31 = load i8*, i8** %11, align 8, !dbg !1464
  %32 = load i8, i8* %31, align 1, !dbg !1466
  %33 = sext i8 %32 to i32, !dbg !1466
  %34 = icmp ne i32 %33, 32, !dbg !1467
  br label %35

; <label>:35:                                     ; preds = %30, %25
  %36 = phi i1 [ false, %25 ], [ %34, %30 ]
  br i1 %36, label %37, label %40, !dbg !1468

; <label>:37:                                     ; preds = %35
  %38 = load i8*, i8** %11, align 8, !dbg !1470
  %39 = getelementptr inbounds i8, i8* %38, i32 1, !dbg !1470
  store i8* %39, i8** %11, align 8, !dbg !1470
  br label %25, !dbg !1472, !llvm.loop !1473

; <label>:40:                                     ; preds = %35
  %41 = load i8*, i8** %11, align 8, !dbg !1474
  %42 = load i8, i8* %41, align 1, !dbg !1476
  %43 = sext i8 %42 to i32, !dbg !1476
  %44 = icmp eq i32 %43, 32, !dbg !1477
  br i1 %44, label %45, label %48, !dbg !1478

; <label>:45:                                     ; preds = %40
  %46 = load i8*, i8** %11, align 8, !dbg !1479
  %47 = getelementptr inbounds i8, i8* %46, i32 1, !dbg !1479
  store i8* %47, i8** %11, align 8, !dbg !1479
  store i8 0, i8* %46, align 1, !dbg !1480
  br label %48, !dbg !1481

; <label>:48:                                     ; preds = %45, %40
  %49 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1482
  %50 = bitcast %struct._IRC_SERVER_REC* %49 to i8*, !dbg !1482
  %51 = call i8* @module_check_cast(i8* %50, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0)), !dbg !1483
  %52 = bitcast i8* %51 to %struct._SERVER_REC*, !dbg !1484
  %53 = load i8*, i8** %11, align 8, !dbg !1485
  %54 = load i8*, i8** %6, align 8, !dbg !1486
  %55 = call i8* @recode_in(%struct._SERVER_REC* %52, i8* %53, i8* %54), !dbg !1487
  store i8* %55, i8** %14, align 8, !dbg !1488
  %56 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1489
  %57 = bitcast %struct._IRC_SERVER_REC* %56 to i8*, !dbg !1489
  %58 = load i8*, i8** %7, align 8, !dbg !1490
  %59 = load i8*, i8** %6, align 8, !dbg !1491
  %60 = load i8*, i8** %10, align 8, !dbg !1492
  %61 = load i8*, i8** %12, align 8, !dbg !1493
  %62 = load i8*, i8** %8, align 8, !dbg !1494
  %63 = load i8*, i8** %9, align 8, !dbg !1495
  %64 = load i8*, i8** %14, align 8, !dbg !1496
  %65 = load i8*, i8** %13, align 8, !dbg !1497
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %57, i8* null, i32 1, i32 85, i8* %58, i8* %59, i8* %60, i8* %61, i8* %62, i8* %63, i8* %64, i8* %65), !dbg !1498
  %66 = load i8*, i8** %5, align 8, !dbg !1499
  call void @g_free(i8* %66), !dbg !1500
  %67 = load i8*, i8** %14, align 8, !dbg !1501
  call void @g_free(i8* %67), !dbg !1502
  br label %68, !dbg !1503

; <label>:68:                                     ; preds = %48, %19
  ret void, !dbg !1504
}

; Function Attrs: nounwind uwtable
define internal void @event_end_of_who(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1505 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1506, metadata !1174), !dbg !1507
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1508, metadata !1174), !dbg !1509
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1510, metadata !1174), !dbg !1511
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1512, metadata !1174), !dbg !1513
  br label %7, !dbg !1514, !llvm.loop !1515

; <label>:7:                                      ; preds = %2
  %8 = load i8*, i8** %4, align 8, !dbg !1516
  %9 = icmp ne i8* %8, null, !dbg !1520
  br i1 %9, label %10, label %11, !dbg !1516

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !1521

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.event_end_of_who, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0)), !dbg !1524
  br label %20, !dbg !1527

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !1528

; <label>:13:                                     ; preds = %12
  %14 = load i8*, i8** %4, align 8, !dbg !1530
  %15 = call i8* (i8*, i32, ...) @event_get_params(i8* %14, i32 2, i8* null, i8** %6), !dbg !1531
  store i8* %15, i8** %5, align 8, !dbg !1532
  %16 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1533
  %17 = bitcast %struct._IRC_SERVER_REC* %16 to i8*, !dbg !1533
  %18 = load i8*, i8** %6, align 8, !dbg !1534
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %17, i8* null, i32 1, i32 86, i8* %18), !dbg !1535
  %19 = load i8*, i8** %5, align 8, !dbg !1536
  call void @g_free(i8* %19), !dbg !1537
  br label %20, !dbg !1538

; <label>:20:                                     ; preds = %13, %11
  ret void, !dbg !1539
}

; Function Attrs: nounwind uwtable
define internal void @event_silence_list(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1541 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1542, metadata !1174), !dbg !1543
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1544, metadata !1174), !dbg !1545
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1546, metadata !1174), !dbg !1547
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1548, metadata !1174), !dbg !1549
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1550, metadata !1174), !dbg !1551
  br label %8, !dbg !1552, !llvm.loop !1553

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %4, align 8, !dbg !1554
  %10 = icmp ne i8* %9, null, !dbg !1558
  br i1 %10, label %11, label %12, !dbg !1554

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !1559

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.event_silence_list, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0)), !dbg !1562
  br label %22, !dbg !1565

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !1566

; <label>:14:                                     ; preds = %13
  %15 = load i8*, i8** %4, align 8, !dbg !1568
  %16 = call i8* (i8*, i32, ...) @event_get_params(i8* %15, i32 3, i8* null, i8** %6, i8** %7), !dbg !1569
  store i8* %16, i8** %5, align 8, !dbg !1570
  %17 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1571
  %18 = bitcast %struct._IRC_SERVER_REC* %17 to i8*, !dbg !1571
  %19 = load i8*, i8** %6, align 8, !dbg !1572
  %20 = load i8*, i8** %7, align 8, !dbg !1573
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %18, i8* null, i32 1, i32 120, i8* %19, i8* %20), !dbg !1574
  %21 = load i8*, i8** %5, align 8, !dbg !1575
  call void @g_free(i8* %21), !dbg !1576
  br label %22, !dbg !1577

; <label>:22:                                     ; preds = %14, %12
  ret void, !dbg !1578
}

; Function Attrs: nounwind uwtable
define internal void @sig_empty() #0 !dbg !1580 {
  ret void, !dbg !1581
}

; Function Attrs: nounwind uwtable
define internal void @event_accept_list(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1582 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1583, metadata !1174), !dbg !1584
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1585, metadata !1174), !dbg !1586
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1587, metadata !1174), !dbg !1588
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1589, metadata !1174), !dbg !1590
  br label %7, !dbg !1591, !llvm.loop !1592

; <label>:7:                                      ; preds = %2
  %8 = load i8*, i8** %4, align 8, !dbg !1593
  %9 = icmp ne i8* %8, null, !dbg !1597
  br i1 %9, label %10, label %11, !dbg !1593

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !1598

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.event_accept_list, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0)), !dbg !1601
  br label %27, !dbg !1604

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !1605

; <label>:13:                                     ; preds = %12
  br label %14, !dbg !1607, !llvm.loop !1608

; <label>:14:                                     ; preds = %13
  %15 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1609
  %16 = icmp ne %struct._IRC_SERVER_REC* %15, null, !dbg !1613
  br i1 %16, label %17, label %18, !dbg !1609

; <label>:17:                                     ; preds = %14
  br label %19, !dbg !1614

; <label>:18:                                     ; preds = %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.event_accept_list, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.81, i32 0, i32 0)), !dbg !1617
  br label %27, !dbg !1620

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !1621

; <label>:20:                                     ; preds = %19
  %21 = load i8*, i8** %4, align 8, !dbg !1623
  %22 = call i8* (i8*, i32, ...) @event_get_params(i8* %21, i32 8194, i8* null, i8** %6), !dbg !1624
  store i8* %22, i8** %5, align 8, !dbg !1625
  %23 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1626
  %24 = bitcast %struct._IRC_SERVER_REC* %23 to i8*, !dbg !1626
  %25 = load i8*, i8** %6, align 8, !dbg !1626
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %24, i8* null, i32 1, i32 122, i8* %25), !dbg !1627
  %26 = load i8*, i8** %5, align 8, !dbg !1628
  call void @g_free(i8* %26), !dbg !1629
  br label %27, !dbg !1630

; <label>:27:                                     ; preds = %20, %18, %11
  ret void, !dbg !1631
}

; Function Attrs: nounwind uwtable
define internal void @event_ban_list(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1633 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %6 = alloca %struct.BAN_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1634, metadata !1174), !dbg !1635
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1636, metadata !1174), !dbg !1637
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %5, metadata !1638, metadata !1174), !dbg !1639
  call void @llvm.dbg.declare(metadata %struct.BAN_REC** %6, metadata !1640, metadata !1174), !dbg !1649
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1650, metadata !1174), !dbg !1651
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1652, metadata !1174), !dbg !1653
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1654, metadata !1174), !dbg !1655
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1656, metadata !1174), !dbg !1657
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1658, metadata !1174), !dbg !1659
  call void @llvm.dbg.declare(metadata i64* %12, metadata !1660, metadata !1174), !dbg !1661
  br label %13, !dbg !1662, !llvm.loop !1663

; <label>:13:                                     ; preds = %2
  %14 = load i8*, i8** %4, align 8, !dbg !1664
  %15 = icmp ne i8* %14, null, !dbg !1668
  br i1 %15, label %16, label %17, !dbg !1664

; <label>:16:                                     ; preds = %13
  br label %18, !dbg !1669

; <label>:17:                                     ; preds = %13
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.event_ban_list, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0)), !dbg !1672
  br label %86, !dbg !1675

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !1676

; <label>:19:                                     ; preds = %18
  %20 = load i8*, i8** %4, align 8, !dbg !1678
  %21 = call i8* (i8*, i32, ...) @event_get_params(i8* %20, i32 5, i8* null, i8** %7, i8** %9, i8** %10, i8** %11), !dbg !1679
  store i8* %21, i8** %8, align 8, !dbg !1680
  %22 = load i8*, i8** %11, align 8, !dbg !1681
  %23 = load i8, i8* %22, align 1, !dbg !1682
  %24 = sext i8 %23 to i32, !dbg !1682
  %25 = icmp eq i32 %24, 0, !dbg !1683
  br i1 %25, label %26, label %27, !dbg !1682

; <label>:26:                                     ; preds = %19
  br label %32, !dbg !1684

; <label>:27:                                     ; preds = %19
  %28 = call i64 @time(i64* null) #6, !dbg !1686
  %29 = load i8*, i8** %11, align 8, !dbg !1687
  %30 = call i64 @atol(i8* %29) #7, !dbg !1688
  %31 = sub nsw i64 %28, %30, !dbg !1689
  br label %32, !dbg !1690

; <label>:32:                                     ; preds = %27, %26
  %33 = phi i64 [ 0, %26 ], [ %31, %27 ], !dbg !1692
  store i64 %33, i64* %12, align 8, !dbg !1694
  %34 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1695
  %35 = bitcast %struct._IRC_SERVER_REC* %34 to i8*, !dbg !1695
  %36 = call i8* @module_check_cast(i8* %35, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0)), !dbg !1696
  %37 = bitcast i8* %36 to %struct._SERVER_REC*, !dbg !1697
  %38 = load i8*, i8** %7, align 8, !dbg !1698
  %39 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %37, i8* %38), !dbg !1699
  %40 = bitcast %struct._CHANNEL_REC* %39 to i8*, !dbg !1700
  %41 = call i8* @module_check_cast_module(i8* %40, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i32 0, i32 0)), !dbg !1701
  %42 = bitcast i8* %41 to %struct._CHANNEL_REC*, !dbg !1702
  %43 = bitcast %struct._CHANNEL_REC* %42 to i8*, !dbg !1703
  %44 = call i8* @chat_protocol_check_cast(i8* %43, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i32 0, i32 0)), !dbg !1704
  %45 = bitcast i8* %44 to %struct._IRC_CHANNEL_REC*, !dbg !1705
  store %struct._IRC_CHANNEL_REC* %45, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1706
  %46 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1707
  %47 = icmp eq %struct._IRC_CHANNEL_REC* %46, null, !dbg !1708
  br i1 %47, label %48, label %49, !dbg !1707

; <label>:48:                                     ; preds = %32
  br label %55, !dbg !1709

; <label>:49:                                     ; preds = %32
  %50 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1710
  %51 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %50, i32 0, i32 23, !dbg !1711
  %52 = load %struct._GSList*, %struct._GSList** %51, align 8, !dbg !1711
  %53 = load i8*, i8** %9, align 8, !dbg !1712
  %54 = call %struct.BAN_REC* @banlist_find(%struct._GSList* %52, i8* %53), !dbg !1713
  br label %55, !dbg !1714

; <label>:55:                                     ; preds = %49, %48
  %56 = phi %struct.BAN_REC* [ null, %48 ], [ %54, %49 ], !dbg !1715
  store %struct.BAN_REC* %56, %struct.BAN_REC** %6, align 8, !dbg !1716
  %57 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1717
  %58 = load i8*, i8** %7, align 8, !dbg !1718
  %59 = call i8* @get_visible_target(%struct._IRC_SERVER_REC* %57, i8* %58), !dbg !1719
  store i8* %59, i8** %7, align 8, !dbg !1720
  %60 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1721
  %61 = bitcast %struct._IRC_SERVER_REC* %60 to i8*, !dbg !1721
  %62 = load i8*, i8** %7, align 8, !dbg !1722
  %63 = load i8*, i8** %10, align 8, !dbg !1723
  %64 = load i8, i8* %63, align 1, !dbg !1724
  %65 = sext i8 %64 to i32, !dbg !1724
  %66 = icmp eq i32 %65, 0, !dbg !1725
  %67 = select i1 %66, i32 49, i32 50, !dbg !1724
  %68 = load %struct.BAN_REC*, %struct.BAN_REC** %6, align 8, !dbg !1726
  %69 = icmp eq %struct.BAN_REC* %68, null, !dbg !1727
  br i1 %69, label %70, label %71, !dbg !1726

; <label>:70:                                     ; preds = %55
  br label %79, !dbg !1728

; <label>:71:                                     ; preds = %55
  %72 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1729
  %73 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %72, i32 0, i32 23, !dbg !1730
  %74 = load %struct._GSList*, %struct._GSList** %73, align 8, !dbg !1730
  %75 = load %struct.BAN_REC*, %struct.BAN_REC** %6, align 8, !dbg !1731
  %76 = bitcast %struct.BAN_REC* %75 to i8*, !dbg !1731
  %77 = call i32 @g_slist_index(%struct._GSList* %74, i8* %76), !dbg !1732
  %78 = add nsw i32 %77, 1, !dbg !1733
  br label %79, !dbg !1734

; <label>:79:                                     ; preds = %71, %70
  %80 = phi i32 [ 0, %70 ], [ %78, %71 ], !dbg !1735
  %81 = load i8*, i8** %7, align 8, !dbg !1736
  %82 = load i8*, i8** %9, align 8, !dbg !1737
  %83 = load i8*, i8** %10, align 8, !dbg !1738
  %84 = load i64, i64* %12, align 8, !dbg !1739
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %61, i8* %62, i32 1, i32 %67, i32 %80, i8* %81, i8* %82, i8* %83, i64 %84), !dbg !1740
  %85 = load i8*, i8** %8, align 8, !dbg !1741
  call void @g_free(i8* %85), !dbg !1742
  br label %86, !dbg !1743

; <label>:86:                                     ; preds = %79, %17
  ret void, !dbg !1744
}

; Function Attrs: nounwind uwtable
define internal void @event_eban_list(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1745 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1746, metadata !1174), !dbg !1747
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1748, metadata !1174), !dbg !1749
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1750, metadata !1174), !dbg !1751
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1752, metadata !1174), !dbg !1753
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1754, metadata !1174), !dbg !1755
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1756, metadata !1174), !dbg !1757
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1758, metadata !1174), !dbg !1759
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1760, metadata !1174), !dbg !1761
  br label %11, !dbg !1762, !llvm.loop !1763

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %4, align 8, !dbg !1764
  %13 = icmp ne i8* %12, null, !dbg !1768
  br i1 %13, label %14, label %15, !dbg !1764

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !1769

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.event_eban_list, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0)), !dbg !1772
  br label %48, !dbg !1775

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !1776

; <label>:17:                                     ; preds = %16
  %18 = load i8*, i8** %4, align 8, !dbg !1778
  %19 = call i8* (i8*, i32, ...) @event_get_params(i8* %18, i32 5, i8* null, i8** %5, i8** %7, i8** %8, i8** %9), !dbg !1779
  store i8* %19, i8** %6, align 8, !dbg !1780
  %20 = load i8*, i8** %9, align 8, !dbg !1781
  %21 = load i8, i8* %20, align 1, !dbg !1782
  %22 = sext i8 %21 to i32, !dbg !1782
  %23 = icmp eq i32 %22, 0, !dbg !1783
  br i1 %23, label %24, label %25, !dbg !1782

; <label>:24:                                     ; preds = %17
  br label %30, !dbg !1784

; <label>:25:                                     ; preds = %17
  %26 = call i64 @time(i64* null) #6, !dbg !1786
  %27 = load i8*, i8** %9, align 8, !dbg !1787
  %28 = call i64 @atol(i8* %27) #7, !dbg !1788
  %29 = sub nsw i64 %26, %28, !dbg !1789
  br label %30, !dbg !1790

; <label>:30:                                     ; preds = %25, %24
  %31 = phi i64 [ 0, %24 ], [ %29, %25 ], !dbg !1792
  store i64 %31, i64* %10, align 8, !dbg !1794
  %32 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1795
  %33 = load i8*, i8** %5, align 8, !dbg !1796
  %34 = call i8* @get_visible_target(%struct._IRC_SERVER_REC* %32, i8* %33), !dbg !1797
  store i8* %34, i8** %5, align 8, !dbg !1798
  %35 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1799
  %36 = bitcast %struct._IRC_SERVER_REC* %35 to i8*, !dbg !1799
  %37 = load i8*, i8** %5, align 8, !dbg !1800
  %38 = load i8*, i8** %8, align 8, !dbg !1801
  %39 = load i8, i8* %38, align 1, !dbg !1802
  %40 = sext i8 %39 to i32, !dbg !1802
  %41 = icmp eq i32 %40, 0, !dbg !1803
  %42 = select i1 %41, i32 51, i32 52, !dbg !1802
  %43 = load i8*, i8** %5, align 8, !dbg !1804
  %44 = load i8*, i8** %7, align 8, !dbg !1805
  %45 = load i8*, i8** %8, align 8, !dbg !1806
  %46 = load i64, i64* %10, align 8, !dbg !1807
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %36, i8* %37, i32 1, i32 %42, i8* %43, i8* %44, i8* %45, i64 %46), !dbg !1808
  %47 = load i8*, i8** %6, align 8, !dbg !1809
  call void @g_free(i8* %47), !dbg !1810
  br label %48, !dbg !1811

; <label>:48:                                     ; preds = %30, %15
  ret void, !dbg !1812
}

; Function Attrs: nounwind uwtable
define internal void @event_invite_list(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1813 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1814, metadata !1174), !dbg !1815
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1816, metadata !1174), !dbg !1817
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1818, metadata !1174), !dbg !1819
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1820, metadata !1174), !dbg !1821
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1822, metadata !1174), !dbg !1823
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1824, metadata !1174), !dbg !1825
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1826, metadata !1174), !dbg !1827
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1828, metadata !1174), !dbg !1829
  br label %11, !dbg !1830, !llvm.loop !1831

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %4, align 8, !dbg !1832
  %13 = icmp ne i8* %12, null, !dbg !1836
  br i1 %13, label %14, label %15, !dbg !1832

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !1837

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.event_invite_list, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0)), !dbg !1840
  br label %48, !dbg !1843

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !1844

; <label>:17:                                     ; preds = %16
  %18 = load i8*, i8** %4, align 8, !dbg !1846
  %19 = call i8* (i8*, i32, ...) @event_get_params(i8* %18, i32 5, i8* null, i8** %5, i8** %7, i8** %8, i8** %9), !dbg !1847
  store i8* %19, i8** %6, align 8, !dbg !1848
  %20 = load i8*, i8** %9, align 8, !dbg !1849
  %21 = load i8, i8* %20, align 1, !dbg !1850
  %22 = sext i8 %21 to i32, !dbg !1850
  %23 = icmp eq i32 %22, 0, !dbg !1851
  br i1 %23, label %24, label %25, !dbg !1850

; <label>:24:                                     ; preds = %17
  br label %30, !dbg !1852

; <label>:25:                                     ; preds = %17
  %26 = call i64 @time(i64* null) #6, !dbg !1854
  %27 = load i8*, i8** %9, align 8, !dbg !1855
  %28 = call i64 @atol(i8* %27) #7, !dbg !1856
  %29 = sub nsw i64 %26, %28, !dbg !1857
  br label %30, !dbg !1858

; <label>:30:                                     ; preds = %25, %24
  %31 = phi i64 [ 0, %24 ], [ %29, %25 ], !dbg !1860
  store i64 %31, i64* %10, align 8, !dbg !1862
  %32 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1863
  %33 = load i8*, i8** %5, align 8, !dbg !1864
  %34 = call i8* @get_visible_target(%struct._IRC_SERVER_REC* %32, i8* %33), !dbg !1865
  store i8* %34, i8** %5, align 8, !dbg !1866
  %35 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1867
  %36 = bitcast %struct._IRC_SERVER_REC* %35 to i8*, !dbg !1867
  %37 = load i8*, i8** %5, align 8, !dbg !1868
  %38 = load i8*, i8** %8, align 8, !dbg !1869
  %39 = load i8, i8* %38, align 1, !dbg !1870
  %40 = sext i8 %39 to i32, !dbg !1870
  %41 = icmp eq i32 %40, 0, !dbg !1871
  %42 = select i1 %41, i32 54, i32 55, !dbg !1870
  %43 = load i8*, i8** %5, align 8, !dbg !1872
  %44 = load i8*, i8** %7, align 8, !dbg !1873
  %45 = load i8*, i8** %8, align 8, !dbg !1874
  %46 = load i64, i64* %10, align 8, !dbg !1875
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %36, i8* %37, i32 1, i32 %42, i8* %43, i8* %44, i8* %45, i64 %46), !dbg !1876
  %47 = load i8*, i8** %6, align 8, !dbg !1877
  call void @g_free(i8* %47), !dbg !1878
  br label %48, !dbg !1879

; <label>:48:                                     ; preds = %30, %15
  ret void, !dbg !1880
}

; Function Attrs: nounwind uwtable
define internal void @event_nick_in_use(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1881 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1882, metadata !1174), !dbg !1883
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1884, metadata !1174), !dbg !1885
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1886, metadata !1174), !dbg !1887
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1888, metadata !1174), !dbg !1889
  br label %7, !dbg !1890, !llvm.loop !1891

; <label>:7:                                      ; preds = %2
  %8 = load i8*, i8** %4, align 8, !dbg !1892
  %9 = icmp ne i8* %8, null, !dbg !1896
  br i1 %9, label %10, label %11, !dbg !1892

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !1897

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.event_nick_in_use, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0)), !dbg !1900
  br label %28, !dbg !1903

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !1904

; <label>:13:                                     ; preds = %12
  %14 = load i8*, i8** %4, align 8, !dbg !1906
  %15 = call i8* (i8*, i32, ...) @event_get_params(i8* %14, i32 2, i8* null, i8** %6), !dbg !1907
  store i8* %15, i8** %5, align 8, !dbg !1908
  %16 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1909
  %17 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %16, i32 0, i32 8, !dbg !1911
  %18 = load i8, i8* %17, align 8, !dbg !1911
  %19 = and i8 %18, 1, !dbg !1911
  %20 = zext i8 %19 to i32, !dbg !1911
  %21 = icmp ne i32 %20, 0, !dbg !1909
  br i1 %21, label %22, label %26, !dbg !1912

; <label>:22:                                     ; preds = %13
  %23 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1913
  %24 = bitcast %struct._IRC_SERVER_REC* %23 to i8*, !dbg !1913
  %25 = load i8*, i8** %6, align 8, !dbg !1913
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %24, i8* null, i32 1, i32 65, i8* %25), !dbg !1915
  br label %26, !dbg !1916

; <label>:26:                                     ; preds = %22, %13
  %27 = load i8*, i8** %5, align 8, !dbg !1917
  call void @g_free(i8* %27), !dbg !1918
  br label %28, !dbg !1919

; <label>:28:                                     ; preds = %26, %11
  ret void, !dbg !1920
}

; Function Attrs: nounwind uwtable
define internal void @event_topic_get(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1922 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1923, metadata !1174), !dbg !1924
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1925, metadata !1174), !dbg !1926
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1927, metadata !1174), !dbg !1928
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1929, metadata !1174), !dbg !1930
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1931, metadata !1174), !dbg !1932
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1933, metadata !1174), !dbg !1934
  br label %9, !dbg !1935, !llvm.loop !1936

; <label>:9:                                      ; preds = %2
  %10 = load i8*, i8** %4, align 8, !dbg !1937
  %11 = icmp ne i8* %10, null, !dbg !1941
  br i1 %11, label %12, label %13, !dbg !1937

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !1942

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.event_topic_get, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0)), !dbg !1945
  br label %35, !dbg !1948

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !1949

; <label>:15:                                     ; preds = %14
  %16 = load i8*, i8** %4, align 8, !dbg !1951
  %17 = call i8* (i8*, i32, ...) @event_get_params(i8* %16, i32 3, i8* null, i8** %5, i8** %7), !dbg !1952
  store i8* %17, i8** %6, align 8, !dbg !1953
  %18 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1954
  %19 = bitcast %struct._IRC_SERVER_REC* %18 to i8*, !dbg !1954
  %20 = call i8* @module_check_cast(i8* %19, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0)), !dbg !1955
  %21 = bitcast i8* %20 to %struct._SERVER_REC*, !dbg !1956
  %22 = load i8*, i8** %7, align 8, !dbg !1957
  %23 = load i8*, i8** %5, align 8, !dbg !1958
  %24 = call i8* @recode_in(%struct._SERVER_REC* %21, i8* %22, i8* %23), !dbg !1959
  store i8* %24, i8** %8, align 8, !dbg !1961
  %25 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1962
  %26 = load i8*, i8** %5, align 8, !dbg !1963
  %27 = call i8* @get_visible_target(%struct._IRC_SERVER_REC* %25, i8* %26), !dbg !1964
  store i8* %27, i8** %5, align 8, !dbg !1965
  %28 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1966
  %29 = bitcast %struct._IRC_SERVER_REC* %28 to i8*, !dbg !1966
  %30 = load i8*, i8** %5, align 8, !dbg !1967
  %31 = load i8*, i8** %5, align 8, !dbg !1968
  %32 = load i8*, i8** %8, align 8, !dbg !1969
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %29, i8* %30, i32 1, i32 41, i8* %31, i8* %32), !dbg !1970
  %33 = load i8*, i8** %6, align 8, !dbg !1971
  call void @g_free(i8* %33), !dbg !1972
  %34 = load i8*, i8** %8, align 8, !dbg !1973
  call void @g_free(i8* %34), !dbg !1974
  br label %35, !dbg !1975

; <label>:35:                                     ; preds = %15, %13
  ret void, !dbg !1976
}

; Function Attrs: nounwind uwtable
define internal void @event_topic_info(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1977 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1978, metadata !1174), !dbg !1979
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1980, metadata !1174), !dbg !1981
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1982, metadata !1174), !dbg !1983
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1984, metadata !1174), !dbg !1985
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1986, metadata !1174), !dbg !1987
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1988, metadata !1174), !dbg !1989
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1990, metadata !1174), !dbg !1991
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1992, metadata !1174), !dbg !1993
  br label %11, !dbg !1994, !llvm.loop !1995

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %4, align 8, !dbg !1996
  %13 = icmp ne i8* %12, null, !dbg !2000
  br i1 %13, label %14, label %15, !dbg !1996

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !2001

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.event_topic_info, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0)), !dbg !2004
  br label %48, !dbg !2007

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !2008

; <label>:17:                                     ; preds = %16
  %18 = load i8*, i8** %4, align 8, !dbg !2010
  %19 = call i8* (i8*, i32, ...) @event_get_params(i8* %18, i32 4, i8* null, i8** %5, i8** %8, i8** %10), !dbg !2011
  store i8* %19, i8** %6, align 8, !dbg !2012
  %20 = load i8*, i8** %10, align 8, !dbg !2013
  %21 = call i64 @atol(i8* %20) #7, !dbg !2014
  %22 = call i8* @my_asctime(i64 %21), !dbg !2015
  store i8* %22, i8** %7, align 8, !dbg !2017
  %23 = load i8*, i8** %8, align 8, !dbg !2018
  %24 = call i8* @strchr(i8* %23, i32 33) #7, !dbg !2019
  store i8* %24, i8** %9, align 8, !dbg !2020
  %25 = load i8*, i8** %9, align 8, !dbg !2021
  %26 = icmp ne i8* %25, null, !dbg !2023
  br i1 %26, label %27, label %30, !dbg !2024

; <label>:27:                                     ; preds = %17
  %28 = load i8*, i8** %9, align 8, !dbg !2025
  %29 = getelementptr inbounds i8, i8* %28, i32 1, !dbg !2025
  store i8* %29, i8** %9, align 8, !dbg !2025
  store i8 0, i8* %28, align 1, !dbg !2026
  br label %30, !dbg !2027

; <label>:30:                                     ; preds = %27, %17
  %31 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2028
  %32 = load i8*, i8** %5, align 8, !dbg !2029
  %33 = call i8* @get_visible_target(%struct._IRC_SERVER_REC* %31, i8* %32), !dbg !2030
  store i8* %33, i8** %5, align 8, !dbg !2031
  %34 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2032
  %35 = bitcast %struct._IRC_SERVER_REC* %34 to i8*, !dbg !2032
  %36 = load i8*, i8** %5, align 8, !dbg !2033
  %37 = load i8*, i8** %8, align 8, !dbg !2034
  %38 = load i8*, i8** %7, align 8, !dbg !2035
  %39 = load i8*, i8** %9, align 8, !dbg !2036
  %40 = icmp eq i8* %39, null, !dbg !2037
  br i1 %40, label %41, label %42, !dbg !2036

; <label>:41:                                     ; preds = %30
  br label %44, !dbg !2038

; <label>:42:                                     ; preds = %30
  %43 = load i8*, i8** %9, align 8, !dbg !2039
  br label %44, !dbg !2041

; <label>:44:                                     ; preds = %42, %41
  %45 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.89, i32 0, i32 0), %41 ], [ %43, %42 ], !dbg !2042
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %35, i8* %36, i32 1, i32 43, i8* %37, i8* %38, i8* %45), !dbg !2044
  %46 = load i8*, i8** %7, align 8, !dbg !2045
  call void @g_free(i8* %46), !dbg !2046
  %47 = load i8*, i8** %6, align 8, !dbg !2047
  call void @g_free(i8* %47), !dbg !2048
  br label %48, !dbg !2049

; <label>:48:                                     ; preds = %44, %15
  ret void, !dbg !2050
}

; Function Attrs: nounwind uwtable
define internal void @event_channel_mode(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !2051 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !2052, metadata !1174), !dbg !2053
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2054, metadata !1174), !dbg !2055
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2056, metadata !1174), !dbg !2057
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2058, metadata !1174), !dbg !2059
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2060, metadata !1174), !dbg !2061
  br label %8, !dbg !2062, !llvm.loop !2063

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %4, align 8, !dbg !2064
  %10 = icmp ne i8* %9, null, !dbg !2068
  br i1 %10, label %11, label %12, !dbg !2064

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !2069

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.event_channel_mode, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0)), !dbg !2072
  br label %27, !dbg !2075

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !2076

; <label>:14:                                     ; preds = %13
  %15 = load i8*, i8** %4, align 8, !dbg !2078
  %16 = call i8* (i8*, i32, ...) @event_get_params(i8* %15, i32 8195, i8* null, i8** %5, i8** %7), !dbg !2079
  store i8* %16, i8** %6, align 8, !dbg !2080
  %17 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2081
  %18 = load i8*, i8** %5, align 8, !dbg !2082
  %19 = call i8* @get_visible_target(%struct._IRC_SERVER_REC* %17, i8* %18), !dbg !2083
  store i8* %19, i8** %5, align 8, !dbg !2084
  %20 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2085
  %21 = bitcast %struct._IRC_SERVER_REC* %20 to i8*, !dbg !2085
  %22 = load i8*, i8** %5, align 8, !dbg !2086
  %23 = load i8*, i8** %5, align 8, !dbg !2087
  %24 = load i8*, i8** %7, align 8, !dbg !2088
  %25 = call i8* @g_strchomp(i8* %24), !dbg !2089
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %21, i8* %22, i32 1, i32 46, i8* %23, i8* %25), !dbg !2090
  %26 = load i8*, i8** %6, align 8, !dbg !2092
  call void @g_free(i8* %26), !dbg !2093
  br label %27, !dbg !2094

; <label>:27:                                     ; preds = %14, %12
  ret void, !dbg !2095
}

; Function Attrs: nounwind uwtable
define internal void @event_channel_created(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !2096 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !2097, metadata !1174), !dbg !2098
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2099, metadata !1174), !dbg !2100
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2101, metadata !1174), !dbg !2102
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2103, metadata !1174), !dbg !2104
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2105, metadata !1174), !dbg !2106
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2107, metadata !1174), !dbg !2108
  br label %9, !dbg !2109, !llvm.loop !2110

; <label>:9:                                      ; preds = %2
  %10 = load i8*, i8** %4, align 8, !dbg !2111
  %11 = icmp ne i8* %10, null, !dbg !2115
  br i1 %11, label %12, label %13, !dbg !2111

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !2116

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.event_channel_created, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0)), !dbg !2119
  br label %31, !dbg !2122

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !2123

; <label>:15:                                     ; preds = %14
  %16 = load i8*, i8** %4, align 8, !dbg !2125
  %17 = call i8* (i8*, i32, ...) @event_get_params(i8* %16, i32 3, i8* null, i8** %5, i8** %7), !dbg !2126
  store i8* %17, i8** %6, align 8, !dbg !2127
  %18 = load i8*, i8** %7, align 8, !dbg !2128
  %19 = call i64 @atol(i8* %18) #7, !dbg !2129
  %20 = call i8* @my_asctime(i64 %19), !dbg !2130
  store i8* %20, i8** %8, align 8, !dbg !2132
  %21 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2133
  %22 = load i8*, i8** %5, align 8, !dbg !2134
  %23 = call i8* @get_visible_target(%struct._IRC_SERVER_REC* %21, i8* %22), !dbg !2135
  store i8* %23, i8** %5, align 8, !dbg !2136
  %24 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2137
  %25 = bitcast %struct._IRC_SERVER_REC* %24 to i8*, !dbg !2137
  %26 = load i8*, i8** %5, align 8, !dbg !2138
  %27 = load i8*, i8** %5, align 8, !dbg !2139
  %28 = load i8*, i8** %8, align 8, !dbg !2140
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %25, i8* %26, i32 1, i32 39, i8* %27, i8* %28), !dbg !2141
  %29 = load i8*, i8** %8, align 8, !dbg !2142
  call void @g_free(i8* %29), !dbg !2143
  %30 = load i8*, i8** %6, align 8, !dbg !2144
  call void @g_free(i8* %30), !dbg !2145
  br label %31, !dbg !2146

; <label>:31:                                     ; preds = %15, %13
  ret void, !dbg !2147
}

; Function Attrs: nounwind uwtable
define internal void @event_nowaway(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !2148 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !2149, metadata !1174), !dbg !2150
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2151, metadata !1174), !dbg !2152
  %5 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2153
  %6 = bitcast %struct._IRC_SERVER_REC* %5 to i8*, !dbg !2153
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %6, i8* null, i32 1, i32 61), !dbg !2154
  ret void, !dbg !2155
}

; Function Attrs: nounwind uwtable
define internal void @event_unaway(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !2156 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !2157, metadata !1174), !dbg !2158
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2159, metadata !1174), !dbg !2160
  %5 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2161
  %6 = bitcast %struct._IRC_SERVER_REC* %5 to i8*, !dbg !2161
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %6, i8* null, i32 1, i32 62), !dbg !2162
  ret void, !dbg !2163
}

; Function Attrs: nounwind uwtable
define internal void @event_away(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !2164 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !2165, metadata !1174), !dbg !2166
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2167, metadata !1174), !dbg !2168
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2169, metadata !1174), !dbg !2170
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2171, metadata !1174), !dbg !2172
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2173, metadata !1174), !dbg !2174
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2175, metadata !1174), !dbg !2176
  br label %9, !dbg !2177, !llvm.loop !2178

; <label>:9:                                      ; preds = %2
  %10 = load i8*, i8** %4, align 8, !dbg !2179
  %11 = icmp ne i8* %10, null, !dbg !2183
  br i1 %11, label %12, label %13, !dbg !2179

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !2184

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.event_away, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0)), !dbg !2187
  br label %58, !dbg !2190

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !2191

; <label>:15:                                     ; preds = %14
  %16 = load i8*, i8** %4, align 8, !dbg !2193
  %17 = call i8* (i8*, i32, ...) @event_get_params(i8* %16, i32 3, i8* null, i8** %6, i8** %7), !dbg !2194
  store i8* %17, i8** %5, align 8, !dbg !2195
  %18 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2196
  %19 = bitcast %struct._IRC_SERVER_REC* %18 to i8*, !dbg !2196
  %20 = call i8* @module_check_cast(i8* %19, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0)), !dbg !2197
  %21 = bitcast i8* %20 to %struct._SERVER_REC*, !dbg !2198
  %22 = load i8*, i8** %7, align 8, !dbg !2199
  %23 = load i8*, i8** %6, align 8, !dbg !2200
  %24 = call i8* @recode_in(%struct._SERVER_REC* %21, i8* %22, i8* %23), !dbg !2201
  store i8* %24, i8** %8, align 8, !dbg !2203
  %25 = call i32 @settings_get_bool(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.90, i32 0, i32 0)), !dbg !2204
  %26 = icmp ne i32 %25, 0, !dbg !2204
  br i1 %26, label %27, label %43, !dbg !2206

; <label>:27:                                     ; preds = %15
  %28 = load i8*, i8** @last_away_nick, align 8, !dbg !2207
  %29 = icmp eq i8* %28, null, !dbg !2208
  br i1 %29, label %43, label %30, !dbg !2209

; <label>:30:                                     ; preds = %27
  %31 = load i8*, i8** @last_away_nick, align 8, !dbg !2210
  %32 = load i8*, i8** %6, align 8, !dbg !2211
  %33 = call i32 @g_ascii_strcasecmp(i8* %31, i8* %32), !dbg !2212
  %34 = icmp ne i32 %33, 0, !dbg !2213
  br i1 %34, label %43, label %35, !dbg !2214

; <label>:35:                                     ; preds = %30
  %36 = load i8*, i8** @last_away_msg, align 8, !dbg !2215
  %37 = icmp eq i8* %36, null, !dbg !2216
  br i1 %37, label %43, label %38, !dbg !2217

; <label>:38:                                     ; preds = %35
  %39 = load i8*, i8** @last_away_msg, align 8, !dbg !2218
  %40 = load i8*, i8** %7, align 8, !dbg !2219
  %41 = call i32 @g_ascii_strcasecmp(i8* %39, i8* %40), !dbg !2220
  %42 = icmp ne i32 %41, 0, !dbg !2221
  br i1 %42, label %43, label %55, !dbg !2222

; <label>:43:                                     ; preds = %38, %35, %30, %27, %15
  %44 = load i8*, i8** @last_away_nick, align 8, !dbg !2223
  call void @g_free(i8* %44), !dbg !2225
  %45 = load i8*, i8** @last_away_msg, align 8, !dbg !2226
  call void @g_free(i8* %45), !dbg !2227
  %46 = load i8*, i8** %6, align 8, !dbg !2228
  %47 = call noalias i8* @g_strdup(i8* %46), !dbg !2229
  store i8* %47, i8** @last_away_nick, align 8, !dbg !2230
  %48 = load i8*, i8** %7, align 8, !dbg !2231
  %49 = call noalias i8* @g_strdup(i8* %48), !dbg !2232
  store i8* %49, i8** @last_away_msg, align 8, !dbg !2233
  %50 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2234
  %51 = bitcast %struct._IRC_SERVER_REC* %50 to i8*, !dbg !2234
  %52 = load i8*, i8** %6, align 8, !dbg !2235
  %53 = load i8*, i8** %6, align 8, !dbg !2236
  %54 = load i8*, i8** %8, align 8, !dbg !2237
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %51, i8* %52, i32 1, i32 63, i8* %53, i8* %54), !dbg !2238
  br label %55, !dbg !2239

; <label>:55:                                     ; preds = %43, %38
  %56 = load i8*, i8** %5, align 8, !dbg !2240
  call void @g_free(i8* %56), !dbg !2241
  %57 = load i8*, i8** %8, align 8, !dbg !2242
  call void @g_free(i8* %57), !dbg !2243
  br label %58, !dbg !2244

; <label>:58:                                     ; preds = %55, %13
  ret void, !dbg !2245
}

; Function Attrs: nounwind uwtable
define internal void @event_chanserv_url(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !2246 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !2247, metadata !1174), !dbg !2248
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2249, metadata !1174), !dbg !2250
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2251, metadata !1174), !dbg !2252
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2253, metadata !1174), !dbg !2254
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2255, metadata !1174), !dbg !2256
  br label %8, !dbg !2257, !llvm.loop !2258

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %4, align 8, !dbg !2259
  %10 = icmp ne i8* %9, null, !dbg !2263
  br i1 %10, label %11, label %12, !dbg !2259

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !2264

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.event_chanserv_url, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0)), !dbg !2267
  br label %26, !dbg !2270

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !2271

; <label>:14:                                     ; preds = %13
  %15 = load i8*, i8** %4, align 8, !dbg !2273
  %16 = call i8* (i8*, i32, ...) @event_get_params(i8* %15, i32 3, i8* null, i8** %5, i8** %7), !dbg !2274
  store i8* %16, i8** %6, align 8, !dbg !2275
  %17 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2276
  %18 = load i8*, i8** %5, align 8, !dbg !2277
  %19 = call i8* @get_visible_target(%struct._IRC_SERVER_REC* %17, i8* %18), !dbg !2278
  store i8* %19, i8** %5, align 8, !dbg !2279
  %20 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2280
  %21 = bitcast %struct._IRC_SERVER_REC* %20 to i8*, !dbg !2280
  %22 = load i8*, i8** %5, align 8, !dbg !2281
  %23 = load i8*, i8** %5, align 8, !dbg !2282
  %24 = load i8*, i8** %7, align 8, !dbg !2283
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %21, i8* %22, i32 1, i32 40, i8* %23, i8* %24), !dbg !2284
  %25 = load i8*, i8** %6, align 8, !dbg !2285
  call void @g_free(i8* %25), !dbg !2286
  br label %26, !dbg !2287

; <label>:26:                                     ; preds = %14, %12
  ret void, !dbg !2288
}

; Function Attrs: nounwind uwtable
define internal void @event_userhost(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !2290 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !2291, metadata !1174), !dbg !2292
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2293, metadata !1174), !dbg !2294
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2295, metadata !1174), !dbg !2296
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2297, metadata !1174), !dbg !2298
  br label %7, !dbg !2299, !llvm.loop !2300

; <label>:7:                                      ; preds = %2
  %8 = load i8*, i8** %4, align 8, !dbg !2301
  %9 = icmp ne i8* %8, null, !dbg !2305
  br i1 %9, label %10, label %11, !dbg !2301

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !2306

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.event_userhost, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0)), !dbg !2309
  br label %20, !dbg !2312

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !2313

; <label>:13:                                     ; preds = %12
  %14 = load i8*, i8** %4, align 8, !dbg !2315
  %15 = call i8* (i8*, i32, ...) @event_get_params(i8* %14, i32 2, i8* null, i8** %6), !dbg !2316
  store i8* %15, i8** %5, align 8, !dbg !2317
  %16 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2318
  %17 = bitcast %struct._IRC_SERVER_REC* %16 to i8*, !dbg !2318
  %18 = load i8*, i8** %6, align 8, !dbg !2319
  call void (i8*, i8*, i32, i8*, ...) @printtext(i8* %17, i8* null, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.87, i32 0, i32 0), i8* %18), !dbg !2320
  %19 = load i8*, i8** %5, align 8, !dbg !2321
  call void @g_free(i8* %19), !dbg !2322
  br label %20, !dbg !2323

; <label>:20:                                     ; preds = %13, %11
  ret void, !dbg !2324
}

; Function Attrs: nounwind uwtable
define internal void @event_sent_invite(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !2326 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !2327, metadata !1174), !dbg !2328
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2329, metadata !1174), !dbg !2330
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2331, metadata !1174), !dbg !2332
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2333, metadata !1174), !dbg !2334
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2335, metadata !1174), !dbg !2336
  br label %8, !dbg !2337, !llvm.loop !2338

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %4, align 8, !dbg !2339
  %10 = icmp ne i8* %9, null, !dbg !2343
  br i1 %10, label %11, label %12, !dbg !2339

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !2344

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.event_sent_invite, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0)), !dbg !2347
  br label %23, !dbg !2350

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !2351

; <label>:14:                                     ; preds = %13
  %15 = load i8*, i8** %4, align 8, !dbg !2353
  %16 = call i8* (i8*, i32, ...) @event_get_params(i8* %15, i32 3, i8* null, i8** %6, i8** %7), !dbg !2354
  store i8* %16, i8** %5, align 8, !dbg !2355
  %17 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2356
  %18 = bitcast %struct._IRC_SERVER_REC* %17 to i8*, !dbg !2356
  %19 = load i8*, i8** %6, align 8, !dbg !2357
  %20 = load i8*, i8** %6, align 8, !dbg !2358
  %21 = load i8*, i8** %7, align 8, !dbg !2359
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %18, i8* %19, i32 1, i32 38, i8* %20, i8* %21), !dbg !2360
  %22 = load i8*, i8** %5, align 8, !dbg !2361
  call void @g_free(i8* %22), !dbg !2362
  br label %23, !dbg !2363

; <label>:23:                                     ; preds = %14, %12
  ret void, !dbg !2364
}

; Function Attrs: nounwind uwtable
define internal void @event_target_unavailable(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !2366 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !2369, metadata !1174), !dbg !2370
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2371, metadata !1174), !dbg !2372
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2373, metadata !1174), !dbg !2374
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2375, metadata !1174), !dbg !2376
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %9, metadata !2377, metadata !1174), !dbg !2378
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2379, metadata !1174), !dbg !2380
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2381, metadata !1174), !dbg !2382
  br label %12, !dbg !2383, !llvm.loop !2384

; <label>:12:                                     ; preds = %4
  %13 = load i8*, i8** %6, align 8, !dbg !2385
  %14 = icmp ne i8* %13, null, !dbg !2389
  br i1 %14, label %15, label %16, !dbg !2385

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !2390

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.event_target_unavailable, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0)), !dbg !2393
  br label %72, !dbg !2396

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !2397

; <label>:18:                                     ; preds = %17
  %19 = load i8*, i8** %6, align 8, !dbg !2399
  %20 = call i8* (i8*, i32, ...) @event_get_params(i8* %19, i32 2, i8* null, i8** %11), !dbg !2400
  store i8* %20, i8** %10, align 8, !dbg !2401
  %21 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2402
  %22 = bitcast %struct._IRC_SERVER_REC* %21 to i8*, !dbg !2402
  %23 = call i8* @module_check_cast(i8* %22, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0)), !dbg !2404
  %24 = bitcast i8* %23 to %struct._SERVER_REC*, !dbg !2405
  %25 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %24, i32 0, i32 27, !dbg !2406
  %26 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %25, align 8, !dbg !2406
  %27 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2407
  %28 = bitcast %struct._IRC_SERVER_REC* %27 to i8*, !dbg !2407
  %29 = call i8* @module_check_cast(i8* %28, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0)), !dbg !2408
  %30 = bitcast i8* %29 to %struct._SERVER_REC*, !dbg !2410
  %31 = load i8*, i8** %11, align 8, !dbg !2411
  %32 = call i32 %26(%struct._SERVER_REC* %30, i8* %31), !dbg !2412
  %33 = icmp ne i32 %32, 0, !dbg !2414
  br i1 %33, label %38, label %34, !dbg !2415

; <label>:34:                                     ; preds = %18
  %35 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2416
  %36 = bitcast %struct._IRC_SERVER_REC* %35 to i8*, !dbg !2416
  %37 = load i8*, i8** %11, align 8, !dbg !2418
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %36, i8* null, i32 1, i32 66, i8* %37), !dbg !2419
  br label %70, !dbg !2420

; <label>:38:                                     ; preds = %18
  %39 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2421
  %40 = bitcast %struct._IRC_SERVER_REC* %39 to i8*, !dbg !2421
  %41 = call i8* @module_check_cast(i8* %40, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0)), !dbg !2423
  %42 = bitcast i8* %41 to %struct._SERVER_REC*, !dbg !2424
  %43 = load i8*, i8** %11, align 8, !dbg !2425
  %44 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %42, i8* %43), !dbg !2426
  %45 = bitcast %struct._CHANNEL_REC* %44 to i8*, !dbg !2428
  %46 = call i8* @module_check_cast_module(i8* %45, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i32 0, i32 0)), !dbg !2429
  %47 = bitcast i8* %46 to %struct._CHANNEL_REC*, !dbg !2431
  %48 = bitcast %struct._CHANNEL_REC* %47 to i8*, !dbg !2432
  %49 = call i8* @chat_protocol_check_cast(i8* %48, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i32 0, i32 0)), !dbg !2433
  %50 = bitcast i8* %49 to %struct._IRC_CHANNEL_REC*, !dbg !2435
  store %struct._IRC_CHANNEL_REC* %50, %struct._IRC_CHANNEL_REC** %9, align 8, !dbg !2436
  %51 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %9, align 8, !dbg !2437
  %52 = icmp ne %struct._IRC_CHANNEL_REC* %51, null, !dbg !2439
  br i1 %52, label %53, label %65, !dbg !2440

; <label>:53:                                     ; preds = %38
  %54 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %9, align 8, !dbg !2441
  %55 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %54, i32 0, i32 21, !dbg !2443
  %56 = load i16, i16* %55, align 8, !dbg !2443
  %57 = lshr i16 %56, 4, !dbg !2443
  %58 = and i16 %57, 1, !dbg !2443
  %59 = zext i16 %58 to i32, !dbg !2443
  %60 = icmp ne i32 %59, 0, !dbg !2441
  br i1 %60, label %61, label %65, !dbg !2444

; <label>:61:                                     ; preds = %53
  %62 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2445
  %63 = load i8*, i8** %6, align 8, !dbg !2447
  %64 = load i8*, i8** %7, align 8, !dbg !2448
  call void @print_event_received(%struct._IRC_SERVER_REC* %62, i8* %63, i8* %64, i32 0), !dbg !2449
  br label %69, !dbg !2450

; <label>:65:                                     ; preds = %53, %38
  %66 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2451
  %67 = bitcast %struct._IRC_SERVER_REC* %66 to i8*, !dbg !2451
  %68 = load i8*, i8** %11, align 8, !dbg !2453
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %67, i8* null, i32 1, i32 35, i8* %68), !dbg !2454
  br label %69

; <label>:69:                                     ; preds = %65, %61
  br label %70

; <label>:70:                                     ; preds = %69, %34
  %71 = load i8*, i8** %10, align 8, !dbg !2455
  call void @g_free(i8* %71), !dbg !2456
  br label %72, !dbg !2457

; <label>:72:                                     ; preds = %70, %16
  ret void, !dbg !2458
}

; Function Attrs: nounwind uwtable
define internal void @event_no_such_nick(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !2460 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !2461, metadata !1174), !dbg !2462
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2463, metadata !1174), !dbg !2464
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2465, metadata !1174), !dbg !2466
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2467, metadata !1174), !dbg !2468
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2469, metadata !1174), !dbg !2470
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2471, metadata !1174), !dbg !2472
  br label %11, !dbg !2473, !llvm.loop !2474

; <label>:11:                                     ; preds = %4
  %12 = load i8*, i8** %6, align 8, !dbg !2475
  %13 = icmp ne i8* %12, null, !dbg !2479
  br i1 %13, label %14, label %15, !dbg !2475

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !2480

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.event_no_such_nick, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0)), !dbg !2483
  br label %34, !dbg !2486

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !2487

; <label>:17:                                     ; preds = %16
  %18 = load i8*, i8** %6, align 8, !dbg !2489
  %19 = call i8* (i8*, i32, ...) @event_get_params(i8* %18, i32 2, i8* null, i8** %10), !dbg !2490
  store i8* %19, i8** %9, align 8, !dbg !2491
  %20 = load i8*, i8** %10, align 8, !dbg !2492
  %21 = call i32 @g_strcmp0(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.91, i32 0, i32 0)), !dbg !2494
  %22 = icmp ne i32 %21, 0, !dbg !2494
  br i1 %22, label %27, label %23, !dbg !2495

; <label>:23:                                     ; preds = %17
  %24 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2496
  %25 = load i8*, i8** %6, align 8, !dbg !2497
  %26 = load i8*, i8** %7, align 8, !dbg !2498
  call void @print_event_received(%struct._IRC_SERVER_REC* %24, i8* %25, i8* %26, i32 0), !dbg !2499
  br label %32, !dbg !2499

; <label>:27:                                     ; preds = %17
  %28 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2500
  %29 = bitcast %struct._IRC_SERVER_REC* %28 to i8*, !dbg !2500
  %30 = load i8*, i8** %10, align 8, !dbg !2501
  %31 = load i8*, i8** %10, align 8, !dbg !2502
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %29, i8* %30, i32 1, i32 64, i8* %31), !dbg !2503
  br label %32

; <label>:32:                                     ; preds = %27, %23
  %33 = load i8*, i8** %9, align 8, !dbg !2504
  call void @g_free(i8* %33), !dbg !2505
  br label %34, !dbg !2506

; <label>:34:                                     ; preds = %32, %15
  ret void, !dbg !2507
}

; Function Attrs: nounwind uwtable
define internal void @event_no_such_channel(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !2509 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !2510, metadata !1174), !dbg !2511
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2512, metadata !1174), !dbg !2513
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2514, metadata !1174), !dbg !2515
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2516, metadata !1174), !dbg !2517
  br label %7, !dbg !2518, !llvm.loop !2519

; <label>:7:                                      ; preds = %2
  %8 = load i8*, i8** %4, align 8, !dbg !2520
  %9 = icmp ne i8* %8, null, !dbg !2524
  br i1 %9, label %10, label %11, !dbg !2520

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !2525

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.event_no_such_channel, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0)), !dbg !2528
  br label %21, !dbg !2531

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !2532

; <label>:13:                                     ; preds = %12
  %14 = load i8*, i8** %4, align 8, !dbg !2534
  %15 = call i8* (i8*, i32, ...) @event_get_params(i8* %14, i32 2, i8* null, i8** %6), !dbg !2535
  store i8* %15, i8** %5, align 8, !dbg !2536
  %16 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2537
  %17 = bitcast %struct._IRC_SERVER_REC* %16 to i8*, !dbg !2537
  %18 = load i8*, i8** %6, align 8, !dbg !2538
  %19 = load i8*, i8** %6, align 8, !dbg !2539
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %17, i8* %18, i32 1, i32 56, i8* %19), !dbg !2540
  %20 = load i8*, i8** %5, align 8, !dbg !2541
  call void @g_free(i8* %20), !dbg !2542
  br label %21, !dbg !2543

; <label>:21:                                     ; preds = %13, %11
  ret void, !dbg !2544
}

; Function Attrs: nounwind uwtable
define internal void @event_too_many_channels(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !2546 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !2547, metadata !1174), !dbg !2548
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2549, metadata !1174), !dbg !2550
  %5 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2551
  %6 = load i8*, i8** %4, align 8, !dbg !2552
  call void @cannot_join(%struct._IRC_SERVER_REC* %5, i8* %6, i32 29), !dbg !2553
  ret void, !dbg !2554
}

; Function Attrs: nounwind uwtable
define internal void @event_duplicate_channel(%struct._IRC_SERVER_REC*, i8*, i8*) #0 !dbg !2555 {
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !2556, metadata !1174), !dbg !2557
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2558, metadata !1174), !dbg !2559
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2560, metadata !1174), !dbg !2561
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2562, metadata !1174), !dbg !2563
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2564, metadata !1174), !dbg !2565
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2566, metadata !1174), !dbg !2567
  br label %10, !dbg !2568, !llvm.loop !2569

; <label>:10:                                     ; preds = %3
  %11 = load i8*, i8** %5, align 8, !dbg !2570
  %12 = icmp ne i8* %11, null, !dbg !2574
  br i1 %12, label %13, label %14, !dbg !2570

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !2575

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.event_duplicate_channel, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0)), !dbg !2578
  br label %48, !dbg !2581

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !2582

; <label>:16:                                     ; preds = %15
  %17 = load i8*, i8** %5, align 8, !dbg !2584
  %18 = call i8* (i8*, i32, ...) @event_get_params(i8* %17, i32 3, i8* null, i8* null, i8** %8), !dbg !2585
  store i8* %18, i8** %7, align 8, !dbg !2586
  %19 = load i8*, i8** %8, align 8, !dbg !2587
  %20 = call i8* @strchr(i8* %19, i32 32) #7, !dbg !2588
  store i8* %20, i8** %9, align 8, !dbg !2589
  %21 = load i8*, i8** %9, align 8, !dbg !2590
  %22 = icmp ne i8* %21, null, !dbg !2592
  br i1 %22, label %23, label %25, !dbg !2593

; <label>:23:                                     ; preds = %16
  %24 = load i8*, i8** %9, align 8, !dbg !2594
  store i8 0, i8* %24, align 1, !dbg !2596
  br label %25, !dbg !2597

; <label>:25:                                     ; preds = %23, %16
  %26 = load i8*, i8** %8, align 8, !dbg !2598
  %27 = getelementptr inbounds i8, i8* %26, i64 0, !dbg !2598
  %28 = load i8, i8* %27, align 1, !dbg !2598
  %29 = sext i8 %28 to i32, !dbg !2598
  %30 = icmp eq i32 %29, 33, !dbg !2600
  br i1 %30, label %31, label %42, !dbg !2601

; <label>:31:                                     ; preds = %25
  %32 = load i8*, i8** %8, align 8, !dbg !2602
  %33 = getelementptr inbounds i8, i8* %32, i64 1, !dbg !2602
  %34 = load i8, i8* %33, align 1, !dbg !2602
  %35 = sext i8 %34 to i32, !dbg !2602
  %36 = icmp eq i32 %35, 33, !dbg !2604
  br i1 %36, label %37, label %42, !dbg !2605

; <label>:37:                                     ; preds = %31
  %38 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2606
  %39 = bitcast %struct._IRC_SERVER_REC* %38 to i8*, !dbg !2606
  %40 = load i8*, i8** %8, align 8, !dbg !2608
  %41 = getelementptr inbounds i8, i8* %40, i64 1, !dbg !2609
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %39, i8* null, i32 1, i32 36, i8* %41), !dbg !2610
  br label %46, !dbg !2611

; <label>:42:                                     ; preds = %31, %25
  %43 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2612
  %44 = load i8*, i8** %5, align 8, !dbg !2613
  %45 = load i8*, i8** %6, align 8, !dbg !2614
  call void @print_event_received(%struct._IRC_SERVER_REC* %43, i8* %44, i8* %45, i32 0), !dbg !2615
  br label %46

; <label>:46:                                     ; preds = %42, %37
  %47 = load i8*, i8** %7, align 8, !dbg !2616
  call void @g_free(i8* %47), !dbg !2617
  br label %48, !dbg !2618

; <label>:48:                                     ; preds = %46, %14
  ret void, !dbg !2619
}

; Function Attrs: nounwind uwtable
define internal void @event_channel_is_full(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !2621 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !2622, metadata !1174), !dbg !2623
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2624, metadata !1174), !dbg !2625
  %5 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2626
  %6 = load i8*, i8** %4, align 8, !dbg !2627
  call void @cannot_join(%struct._IRC_SERVER_REC* %5, i8* %6, i32 30), !dbg !2628
  ret void, !dbg !2629
}

; Function Attrs: nounwind uwtable
define internal void @event_unknown_mode(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !2630 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !2631, metadata !1174), !dbg !2632
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2633, metadata !1174), !dbg !2634
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2635, metadata !1174), !dbg !2636
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2637, metadata !1174), !dbg !2638
  br label %7, !dbg !2639, !llvm.loop !2640

; <label>:7:                                      ; preds = %2
  %8 = load i8*, i8** %4, align 8, !dbg !2641
  %9 = icmp ne i8* %8, null, !dbg !2645
  br i1 %9, label %10, label %11, !dbg !2641

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !2646

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.event_unknown_mode, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0)), !dbg !2649
  br label %20, !dbg !2652

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !2653

; <label>:13:                                     ; preds = %12
  %14 = load i8*, i8** %4, align 8, !dbg !2655
  %15 = call i8* (i8*, i32, ...) @event_get_params(i8* %14, i32 2, i8* null, i8** %6), !dbg !2656
  store i8* %15, i8** %5, align 8, !dbg !2657
  %16 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2658
  %17 = bitcast %struct._IRC_SERVER_REC* %16 to i8*, !dbg !2658
  %18 = load i8*, i8** %6, align 8, !dbg !2659
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %17, i8* null, i32 1, i32 114, i8* %18), !dbg !2660
  %19 = load i8*, i8** %5, align 8, !dbg !2661
  call void @g_free(i8* %19), !dbg !2662
  br label %20, !dbg !2663

; <label>:20:                                     ; preds = %13, %11
  ret void, !dbg !2664
}

; Function Attrs: nounwind uwtable
define internal void @event_invite_only(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !2666 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !2667, metadata !1174), !dbg !2668
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2669, metadata !1174), !dbg !2670
  %5 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2671
  %6 = load i8*, i8** %4, align 8, !dbg !2672
  call void @cannot_join(%struct._IRC_SERVER_REC* %5, i8* %6, i32 31), !dbg !2673
  ret void, !dbg !2674
}

; Function Attrs: nounwind uwtable
define internal void @event_banned(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !2675 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !2676, metadata !1174), !dbg !2677
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2678, metadata !1174), !dbg !2679
  %5 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2680
  %6 = load i8*, i8** %4, align 8, !dbg !2681
  call void @cannot_join(%struct._IRC_SERVER_REC* %5, i8* %6, i32 32), !dbg !2682
  ret void, !dbg !2683
}

; Function Attrs: nounwind uwtable
define internal void @event_bad_channel_key(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !2684 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !2685, metadata !1174), !dbg !2686
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2687, metadata !1174), !dbg !2688
  %5 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2689
  %6 = load i8*, i8** %4, align 8, !dbg !2690
  call void @cannot_join(%struct._IRC_SERVER_REC* %5, i8* %6, i32 33), !dbg !2691
  ret void, !dbg !2692
}

; Function Attrs: nounwind uwtable
define internal void @event_bad_channel_mask(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !2693 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !2694, metadata !1174), !dbg !2695
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2696, metadata !1174), !dbg !2697
  %5 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2698
  %6 = load i8*, i8** %4, align 8, !dbg !2699
  call void @cannot_join(%struct._IRC_SERVER_REC* %5, i8* %6, i32 34), !dbg !2700
  ret void, !dbg !2701
}

; Function Attrs: nounwind uwtable
define internal void @event_477(%struct._IRC_SERVER_REC*, i8*, i8*) #0 !dbg !2702 {
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !2703, metadata !1174), !dbg !2704
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2705, metadata !1174), !dbg !2706
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2707, metadata !1174), !dbg !2708
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %7, metadata !2709, metadata !1174), !dbg !2710
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2711, metadata !1174), !dbg !2712
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2713, metadata !1174), !dbg !2714
  br label %10, !dbg !2715, !llvm.loop !2716

; <label>:10:                                     ; preds = %3
  %11 = load i8*, i8** %5, align 8, !dbg !2717
  %12 = icmp ne i8* %11, null, !dbg !2721
  br i1 %12, label %13, label %14, !dbg !2717

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !2722

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.event_477, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0)), !dbg !2725
  br label %48, !dbg !2728

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !2729

; <label>:16:                                     ; preds = %15
  %17 = load i8*, i8** %5, align 8, !dbg !2731
  %18 = call i8* (i8*, i32, ...) @event_get_params(i8* %17, i32 2, i8* null, i8** %9), !dbg !2732
  store i8* %18, i8** %8, align 8, !dbg !2733
  %19 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2734
  %20 = bitcast %struct._IRC_SERVER_REC* %19 to i8*, !dbg !2734
  %21 = call i8* @module_check_cast(i8* %20, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0)), !dbg !2735
  %22 = bitcast i8* %21 to %struct._SERVER_REC*, !dbg !2736
  %23 = load i8*, i8** %9, align 8, !dbg !2737
  %24 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %22, i8* %23), !dbg !2738
  %25 = bitcast %struct._CHANNEL_REC* %24 to i8*, !dbg !2740
  %26 = call i8* @module_check_cast_module(i8* %25, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i32 0, i32 0)), !dbg !2741
  %27 = bitcast i8* %26 to %struct._CHANNEL_REC*, !dbg !2743
  %28 = bitcast %struct._CHANNEL_REC* %27 to i8*, !dbg !2744
  %29 = call i8* @chat_protocol_check_cast(i8* %28, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i32 0, i32 0)), !dbg !2745
  %30 = bitcast i8* %29 to %struct._IRC_CHANNEL_REC*, !dbg !2747
  store %struct._IRC_CHANNEL_REC* %30, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !2748
  %31 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2749
  %32 = load i8*, i8** %5, align 8, !dbg !2750
  %33 = load i8*, i8** %6, align 8, !dbg !2751
  %34 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !2752
  %35 = icmp eq %struct._IRC_CHANNEL_REC* %34, null, !dbg !2753
  br i1 %35, label %44, label %36, !dbg !2754

; <label>:36:                                     ; preds = %16
  %37 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !2755
  %38 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %37, i32 0, i32 21, !dbg !2756
  %39 = load i16, i16* %38, align 8, !dbg !2756
  %40 = lshr i16 %39, 4, !dbg !2756
  %41 = and i16 %40, 1, !dbg !2756
  %42 = zext i16 %41 to i32, !dbg !2756
  %43 = icmp ne i32 %42, 0, !dbg !2757
  br label %44, !dbg !2757

; <label>:44:                                     ; preds = %36, %16
  %45 = phi i1 [ true, %16 ], [ %43, %36 ]
  %46 = zext i1 %45 to i32, !dbg !2758
  call void @print_event_received(%struct._IRC_SERVER_REC* %31, i8* %32, i8* %33, i32 %46), !dbg !2759
  %47 = load i8*, i8** %8, align 8, !dbg !2760
  call void @g_free(i8* %47), !dbg !2761
  br label %48, !dbg !2762

; <label>:48:                                     ; preds = %44, %14
  ret void, !dbg !2763
}

; Function Attrs: nounwind uwtable
define internal void @event_motd(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !2764 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !2765, metadata !1174), !dbg !2766
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2767, metadata !1174), !dbg !2768
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2769, metadata !1174), !dbg !2770
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2771, metadata !1174), !dbg !2772
  %9 = call i32 @settings_get_bool(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.92, i32 0, i32 0)), !dbg !2773
  %10 = icmp ne i32 %9, 0, !dbg !2773
  br i1 %10, label %11, label %20, !dbg !2775

; <label>:11:                                     ; preds = %4
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2776
  %13 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %12, i32 0, i32 45, !dbg !2778
  %14 = load i16, i16* %13, align 4, !dbg !2778
  %15 = lshr i16 %14, 8, !dbg !2778
  %16 = and i16 %15, 1, !dbg !2778
  %17 = zext i16 %16 to i32, !dbg !2778
  %18 = icmp ne i32 %17, 0, !dbg !2776
  br i1 %18, label %20, label %19, !dbg !2779

; <label>:19:                                     ; preds = %11
  br label %24, !dbg !2780

; <label>:20:                                     ; preds = %11, %4
  %21 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2781
  %22 = load i8*, i8** %6, align 8, !dbg !2782
  %23 = load i8*, i8** %7, align 8, !dbg !2783
  call void @print_event_received(%struct._IRC_SERVER_REC* %21, i8* %22, i8* %23, i32 0), !dbg !2784
  br label %24, !dbg !2785

; <label>:24:                                     ; preds = %20, %19
  ret void, !dbg !2786
}

; Function Attrs: nounwind uwtable
define internal void @event_target_too_fast(%struct._IRC_SERVER_REC*, i8*, i8*) #0 !dbg !2788 {
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !2789, metadata !1174), !dbg !2790
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2791, metadata !1174), !dbg !2792
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2793, metadata !1174), !dbg !2794
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %7, metadata !2795, metadata !1174), !dbg !2796
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2797, metadata !1174), !dbg !2798
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2799, metadata !1174), !dbg !2800
  br label %10, !dbg !2801, !llvm.loop !2802

; <label>:10:                                     ; preds = %3
  %11 = load i8*, i8** %5, align 8, !dbg !2803
  %12 = icmp ne i8* %11, null, !dbg !2807
  br i1 %12, label %13, label %14, !dbg !2803

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !2808

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.event_target_too_fast, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0)), !dbg !2811
  br label %48, !dbg !2814

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !2815

; <label>:16:                                     ; preds = %15
  %17 = load i8*, i8** %5, align 8, !dbg !2817
  %18 = call i8* (i8*, i32, ...) @event_get_params(i8* %17, i32 2, i8* null, i8** %9), !dbg !2818
  store i8* %18, i8** %8, align 8, !dbg !2819
  %19 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2820
  %20 = bitcast %struct._IRC_SERVER_REC* %19 to i8*, !dbg !2820
  %21 = call i8* @module_check_cast(i8* %20, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0)), !dbg !2821
  %22 = bitcast i8* %21 to %struct._SERVER_REC*, !dbg !2822
  %23 = load i8*, i8** %9, align 8, !dbg !2823
  %24 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %22, i8* %23), !dbg !2824
  %25 = bitcast %struct._CHANNEL_REC* %24 to i8*, !dbg !2826
  %26 = call i8* @module_check_cast_module(i8* %25, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i32 0, i32 0)), !dbg !2827
  %27 = bitcast i8* %26 to %struct._CHANNEL_REC*, !dbg !2829
  %28 = bitcast %struct._CHANNEL_REC* %27 to i8*, !dbg !2830
  %29 = call i8* @chat_protocol_check_cast(i8* %28, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.85, i32 0, i32 0)), !dbg !2831
  %30 = bitcast i8* %29 to %struct._IRC_CHANNEL_REC*, !dbg !2833
  store %struct._IRC_CHANNEL_REC* %30, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !2834
  %31 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2835
  %32 = load i8*, i8** %5, align 8, !dbg !2836
  %33 = load i8*, i8** %6, align 8, !dbg !2837
  %34 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !2838
  %35 = icmp eq %struct._IRC_CHANNEL_REC* %34, null, !dbg !2839
  br i1 %35, label %44, label %36, !dbg !2840

; <label>:36:                                     ; preds = %16
  %37 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !2841
  %38 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %37, i32 0, i32 21, !dbg !2842
  %39 = load i16, i16* %38, align 8, !dbg !2842
  %40 = lshr i16 %39, 4, !dbg !2842
  %41 = and i16 %40, 1, !dbg !2842
  %42 = zext i16 %41 to i32, !dbg !2842
  %43 = icmp ne i32 %42, 0, !dbg !2843
  br label %44, !dbg !2843

; <label>:44:                                     ; preds = %36, %16
  %45 = phi i1 [ true, %16 ], [ %43, %36 ]
  %46 = zext i1 %45 to i32, !dbg !2844
  call void @print_event_received(%struct._IRC_SERVER_REC* %31, i8* %32, i8* %33, i32 %46), !dbg !2845
  %47 = load i8*, i8** %8, align 8, !dbg !2846
  call void @g_free(i8* %47), !dbg !2847
  br label %48, !dbg !2848

; <label>:48:                                     ; preds = %44, %14
  ret void, !dbg !2849
}

; Function Attrs: nounwind uwtable
define internal void @event_numeric(%struct._IRC_SERVER_REC*, i8*, i8*) #0 !dbg !2850 {
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !2851, metadata !1174), !dbg !2852
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2853, metadata !1174), !dbg !2854
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2855, metadata !1174), !dbg !2856
  %7 = load i8*, i8** %5, align 8, !dbg !2857
  %8 = call i8* @strchr(i8* %7, i32 32) #7, !dbg !2858
  store i8* %8, i8** %5, align 8, !dbg !2859
  %9 = load i8*, i8** %5, align 8, !dbg !2860
  %10 = icmp ne i8* %9, null, !dbg !2862
  br i1 %10, label %11, label %16, !dbg !2863

; <label>:11:                                     ; preds = %3
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2864
  %13 = load i8*, i8** %5, align 8, !dbg !2865
  %14 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !2866
  %15 = load i8*, i8** %6, align 8, !dbg !2867
  call void @print_event_received(%struct._IRC_SERVER_REC* %12, i8* %14, i8* %15, i32 0), !dbg !2868
  br label %16, !dbg !2868

; <label>:16:                                     ; preds = %11, %3
  ret void, !dbg !2869
}

; Function Attrs: nounwind uwtable
define internal void @event_received(%struct._IRC_SERVER_REC*, i8*, i8*) #0 !dbg !2870 {
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !2871, metadata !1174), !dbg !2872
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2873, metadata !1174), !dbg !2874
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2875, metadata !1174), !dbg !2876
  %7 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2877
  %8 = load i8*, i8** %5, align 8, !dbg !2878
  %9 = load i8*, i8** %6, align 8, !dbg !2879
  call void @print_event_received(%struct._IRC_SERVER_REC* %7, i8* %8, i8* %9, i32 0), !dbg !2880
  ret void, !dbg !2881
}

; Function Attrs: nounwind uwtable
define internal void @event_target_received(%struct._IRC_SERVER_REC*, i8*, i8*) #0 !dbg !2882 {
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !2883, metadata !1174), !dbg !2884
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2885, metadata !1174), !dbg !2886
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2887, metadata !1174), !dbg !2888
  %7 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2889
  %8 = load i8*, i8** %5, align 8, !dbg !2890
  %9 = load i8*, i8** %6, align 8, !dbg !2891
  call void @print_event_received(%struct._IRC_SERVER_REC* %7, i8* %8, i8* %9, i32 1), !dbg !2892
  ret void, !dbg !2893
}

; Function Attrs: nounwind uwtable
define void @fe_events_numeric_deinit() #0 !dbg !2894 {
  %1 = load i8*, i8** @last_away_nick, align 8, !dbg !2895
  call void @g_free(i8* %1), !dbg !2896
  %2 = load i8*, i8** @last_away_msg, align 8, !dbg !2897
  call void @g_free(i8* %2), !dbg !2898
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_user_mode to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2899
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_ison to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2900
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_names_list to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2901
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_end_of_names to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2902
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_who to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2903
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_end_of_who to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2904
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_silence_list to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2905
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @sig_empty to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2906
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_accept_list to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2907
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_ban_list to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2908
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_eban_list to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2909
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_invite_list to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2910
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_nick_in_use to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2911
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_topic_get to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2912
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_topic_info to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2913
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_channel_mode to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2914
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_channel_created to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2915
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_nowaway to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2916
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_unaway to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2917
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_away to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2918
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_chanserv_url to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2919
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_userhost to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2920
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_sent_invite to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2921
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_target_unavailable to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2922
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_no_such_nick to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2923
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_no_such_channel to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2924
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_too_many_channels to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2925
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_duplicate_channel to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2926
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_channel_is_full to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2927
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_unknown_mode to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2928
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_invite_only to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2929
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_banned to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2930
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_bad_channel_key to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2931
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_bad_channel_mask to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2932
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_477 to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2933
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_motd to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2934
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_motd to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2935
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_motd to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2936
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_motd to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2937
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_too_fast to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2938
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_too_fast to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2939
  call void @signal_remove_full(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_numeric to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2940
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2941
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2942
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2943
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2944
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.47, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2945
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2946
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2947
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2948
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2949
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2950
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2951
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2952
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2953
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2954
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2955
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2956
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2957
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2958
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2959
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2960
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2961
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2962
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2963
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2964
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2965
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2966
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2967
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2968
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2969
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2970
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2971
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2972
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.75, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2973
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2974
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2975
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.78, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2976
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_target_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2977
  ret void, !dbg !2978
}

declare void @g_free(i8*) #1

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @event_get_params(i8*, i32, ...) #1

declare void @printformat_module(i8*, i8*, i8*, i32, i32, ...) #1

declare i8* @g_strchomp(i8*) #1

declare i8* @chat_protocol_check_cast(i8*, i32, i8*) #1

declare i8* @module_check_cast_module(i8*, i32, i8*, i8*) #1

declare %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC*, i8*) #1

declare i8* @module_check_cast(i8*, i32, i8*) #1

declare void @printtext(i8*, i8*, i32, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @print_event_received(%struct._IRC_SERVER_REC*, i8*, i8*, i32) #0 !dbg !2979 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !2982, metadata !1174), !dbg !2983
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2984, metadata !1174), !dbg !2985
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2986, metadata !1174), !dbg !2987
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2988, metadata !1174), !dbg !2989
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2990, metadata !1174), !dbg !2991
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2992, metadata !1174), !dbg !2993
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2994, metadata !1174), !dbg !2995
  call void @llvm.dbg.declare(metadata i8** %12, metadata !2996, metadata !1174), !dbg !2997
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2998, metadata !1174), !dbg !2999
  call void @llvm.dbg.declare(metadata i32* %14, metadata !3000, metadata !1174), !dbg !3001
  br label %15, !dbg !3002, !llvm.loop !3003

; <label>:15:                                     ; preds = %4
  %16 = load i8*, i8** %6, align 8, !dbg !3004
  %17 = icmp ne i8* %16, null, !dbg !3008
  br i1 %17, label %18, label %19, !dbg !3004

; <label>:18:                                     ; preds = %15
  br label %20, !dbg !3009

; <label>:19:                                     ; preds = %15
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.print_event_received, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0)), !dbg !3012
  br label %139, !dbg !3015

; <label>:20:                                     ; preds = %18
  br label %21, !dbg !3016

; <label>:21:                                     ; preds = %20
  %22 = load i8*, i8** %6, align 8, !dbg !3018
  %23 = call i8* @strchr(i8* %22, i32 32) #7, !dbg !3019
  store i8* %23, i8** %11, align 8, !dbg !3020
  %24 = load i8*, i8** %11, align 8, !dbg !3021
  %25 = icmp eq i8* %24, null, !dbg !3023
  br i1 %25, label %26, label %27, !dbg !3024

; <label>:26:                                     ; preds = %21
  br label %139, !dbg !3025

; <label>:27:                                     ; preds = %21
  %28 = load i8*, i8** %11, align 8, !dbg !3026
  %29 = getelementptr inbounds i8, i8* %28, i32 1, !dbg !3026
  store i8* %29, i8** %11, align 8, !dbg !3026
  %30 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3027
  %31 = bitcast %struct._IRC_SERVER_REC* %30 to i8*, !dbg !3027
  %32 = call i8* @module_check_cast(i8* %31, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0)), !dbg !3029
  %33 = bitcast i8* %32 to %struct._SERVER_REC*, !dbg !3030
  %34 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %33, i32 0, i32 27, !dbg !3031
  %35 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %34, align 8, !dbg !3031
  %36 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3032
  %37 = bitcast %struct._IRC_SERVER_REC* %36 to i8*, !dbg !3032
  %38 = call i8* @module_check_cast(i8* %37, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0)), !dbg !3033
  %39 = bitcast i8* %38 to %struct._SERVER_REC*, !dbg !3035
  %40 = load i8*, i8** %6, align 8, !dbg !3036
  %41 = call i32 %35(%struct._SERVER_REC* %39, i8* %40), !dbg !3037
  %42 = icmp ne i32 %41, 0, !dbg !3039
  br i1 %42, label %43, label %54, !dbg !3040

; <label>:43:                                     ; preds = %27
  %44 = load i8*, i8** %6, align 8, !dbg !3041
  %45 = load i8*, i8** %11, align 8, !dbg !3042
  %46 = load i8*, i8** %6, align 8, !dbg !3043
  %47 = ptrtoint i8* %45 to i64, !dbg !3044
  %48 = ptrtoint i8* %46 to i64, !dbg !3044
  %49 = sub i64 %47, %48, !dbg !3044
  %50 = sub nsw i64 %49, 1, !dbg !3045
  %51 = trunc i64 %50 to i32, !dbg !3046
  %52 = sext i32 %51 to i64, !dbg !3046
  %53 = call noalias i8* @g_strndup(i8* %44, i64 %52), !dbg !3047
  store i8* %53, i8** %9, align 8, !dbg !3048
  br label %78, !dbg !3049

; <label>:54:                                     ; preds = %27
  %55 = load i32, i32* %8, align 4, !dbg !3050
  %56 = icmp ne i32 %55, 0, !dbg !3050
  br i1 %56, label %57, label %66, !dbg !3052

; <label>:57:                                     ; preds = %54
  %58 = load i8*, i8** %11, align 8, !dbg !3053
  %59 = load i8, i8* %58, align 1, !dbg !3055
  %60 = sext i8 %59 to i32, !dbg !3055
  %61 = icmp eq i32 %60, 58, !dbg !3056
  br i1 %61, label %66, label %62, !dbg !3057

; <label>:62:                                     ; preds = %57
  %63 = load i8*, i8** %11, align 8, !dbg !3058
  %64 = call i8* @strchr(i8* %63, i32 32) #7, !dbg !3060
  store i8* %64, i8** %12, align 8, !dbg !3061
  %65 = icmp eq i8* %64, null, !dbg !3062
  br i1 %65, label %66, label %67, !dbg !3063

; <label>:66:                                     ; preds = %62, %57, %54
  store i8* null, i8** %9, align 8, !dbg !3064
  br label %77, !dbg !3065

; <label>:67:                                     ; preds = %62
  %68 = load i8*, i8** %11, align 8, !dbg !3066
  %69 = load i8*, i8** %12, align 8, !dbg !3068
  %70 = load i8*, i8** %11, align 8, !dbg !3069
  %71 = ptrtoint i8* %69 to i64, !dbg !3070
  %72 = ptrtoint i8* %70 to i64, !dbg !3070
  %73 = sub i64 %71, %72, !dbg !3070
  %74 = trunc i64 %73 to i32, !dbg !3071
  %75 = sext i32 %74 to i64, !dbg !3071
  %76 = call noalias i8* @g_strndup(i8* %68, i64 %75), !dbg !3072
  store i8* %76, i8** %9, align 8, !dbg !3073
  br label %77

; <label>:77:                                     ; preds = %67, %66
  br label %78

; <label>:78:                                     ; preds = %77, %43
  %79 = load i8*, i8** %11, align 8, !dbg !3074
  %80 = load i8, i8* %79, align 1, !dbg !3076
  %81 = sext i8 %80 to i32, !dbg !3076
  %82 = icmp eq i32 %81, 58, !dbg !3077
  br i1 %82, label %83, label %87, !dbg !3078

; <label>:83:                                     ; preds = %78
  %84 = load i8*, i8** %11, align 8, !dbg !3079
  %85 = getelementptr inbounds i8, i8* %84, i64 1, !dbg !3081
  %86 = call noalias i8* @g_strdup(i8* %85), !dbg !3082
  store i8* %86, i8** %10, align 8, !dbg !3083
  br label %105, !dbg !3084

; <label>:87:                                     ; preds = %78
  %88 = load i8*, i8** %11, align 8, !dbg !3085
  %89 = call noalias i8* @g_strdup(i8* %88), !dbg !3087
  store i8* %89, i8** %10, align 8, !dbg !3088
  %90 = load i8*, i8** %10, align 8, !dbg !3089
  %91 = call i8* @strstr(i8* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i32 0, i32 0)) #7, !dbg !3090
  store i8* %91, i8** %11, align 8, !dbg !3091
  %92 = load i8*, i8** %11, align 8, !dbg !3092
  %93 = icmp ne i8* %92, null, !dbg !3094
  br i1 %93, label %94, label %104, !dbg !3095

; <label>:94:                                     ; preds = %87
  br label %95, !dbg !3096, !llvm.loop !3097

; <label>:95:                                     ; preds = %94
  %96 = load i8*, i8** %11, align 8, !dbg !3098
  %97 = getelementptr inbounds i8, i8* %96, i64 1, !dbg !3101
  %98 = load i8*, i8** %11, align 8, !dbg !3102
  %99 = getelementptr inbounds i8, i8* %98, i64 2, !dbg !3103
  %100 = load i8*, i8** %11, align 8, !dbg !3104
  %101 = getelementptr inbounds i8, i8* %100, i64 1, !dbg !3105
  %102 = call i64 @strlen(i8* %101) #7, !dbg !3106
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %97, i8* %99, i64 %102, i32 1, i1 false), !dbg !3107
  br label %103, !dbg !3109

; <label>:103:                                    ; preds = %95
  br label %104, !dbg !3110

; <label>:104:                                    ; preds = %103, %87
  br label %105

; <label>:105:                                    ; preds = %104, %83
  %106 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3112
  %107 = bitcast %struct._IRC_SERVER_REC* %106 to i8*, !dbg !3112
  %108 = call i8* @module_check_cast(i8* %107, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.82, i32 0, i32 0)), !dbg !3113
  %109 = bitcast i8* %108 to %struct._SERVER_REC*, !dbg !3114
  %110 = load i8*, i8** %10, align 8, !dbg !3115
  %111 = call i8* @recode_in(%struct._SERVER_REC* %109, i8* %110, i8* null), !dbg !3116
  store i8* %111, i8** %13, align 8, !dbg !3118
  %112 = load i8*, i8** %7, align 8, !dbg !3119
  %113 = icmp eq i8* %112, null, !dbg !3120
  br i1 %113, label %126, label %114, !dbg !3121

; <label>:114:                                    ; preds = %105
  %115 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3122
  %116 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %115, i32 0, i32 40, !dbg !3123
  %117 = load i8*, i8** %116, align 8, !dbg !3123
  %118 = icmp eq i8* %117, null, !dbg !3124
  br i1 %118, label %126, label %119, !dbg !3125

; <label>:119:                                    ; preds = %114
  %120 = load i8*, i8** %7, align 8, !dbg !3126
  %121 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3127
  %122 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %121, i32 0, i32 40, !dbg !3128
  %123 = load i8*, i8** %122, align 8, !dbg !3128
  %124 = call i32 @g_strcmp0(i8* %120, i8* %123), !dbg !3129
  %125 = icmp eq i32 %124, 0, !dbg !3130
  br label %126, !dbg !3131

; <label>:126:                                    ; preds = %119, %114, %105
  %127 = phi i1 [ true, %114 ], [ true, %105 ], [ %125, %119 ]
  %128 = select i1 %127, i32 115, i32 116, !dbg !3133
  store i32 %128, i32* %14, align 4, !dbg !3135
  %129 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3136
  %130 = bitcast %struct._IRC_SERVER_REC* %129 to i8*, !dbg !3136
  %131 = load i8*, i8** %9, align 8, !dbg !3137
  %132 = load i32, i32* %14, align 4, !dbg !3138
  %133 = load i8*, i8** %7, align 8, !dbg !3139
  %134 = load i8*, i8** %13, align 8, !dbg !3140
  %135 = load i8*, i8** @current_server_event, align 8, !dbg !3141
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %130, i8* %131, i32 1, i32 %132, i8* %133, i8* %134, i8* %135), !dbg !3142
  %136 = load i8*, i8** %13, align 8, !dbg !3143
  call void @g_free(i8* %136), !dbg !3144
  %137 = load i8*, i8** %10, align 8, !dbg !3145
  call void @g_free(i8* %137), !dbg !3146
  %138 = load i8*, i8** %9, align 8, !dbg !3147
  call void @g_free(i8* %138), !dbg !3148
  br label %139, !dbg !3149

; <label>:139:                                    ; preds = %126, %26, %19
  ret void, !dbg !3150
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

declare noalias i8* @g_strndup(i8*, i64) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare i8* @recode_in(%struct._SERVER_REC*, i8*, i8*) #1

declare i32 @g_strcmp0(i8*, i8*) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #5

; Function Attrs: nounwind readonly
declare i64 @atol(i8*) #3

declare %struct.BAN_REC* @banlist_find(%struct._GSList*, i8*) #1

declare i8* @get_visible_target(%struct._IRC_SERVER_REC*, i8*) #1

declare i32 @g_slist_index(%struct._GSList*, i8*) #1

declare i8* @my_asctime(i64) #1

declare i32 @settings_get_bool(i8*) #1

declare i32 @g_ascii_strcasecmp(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @cannot_join(%struct._IRC_SERVER_REC*, i8*, i32) #0 !dbg !3151 {
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !3154, metadata !1174), !dbg !3155
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3156, metadata !1174), !dbg !3157
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3158, metadata !1174), !dbg !3159
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3160, metadata !1174), !dbg !3161
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3162, metadata !1174), !dbg !3163
  br label %9, !dbg !3164, !llvm.loop !3165

; <label>:9:                                      ; preds = %3
  %10 = load i8*, i8** %5, align 8, !dbg !3166
  %11 = icmp ne i8* %10, null, !dbg !3170
  br i1 %11, label %12, label %13, !dbg !3166

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !3171

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.cannot_join, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0)), !dbg !3174
  br label %23, !dbg !3177

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !3178

; <label>:15:                                     ; preds = %14
  %16 = load i8*, i8** %5, align 8, !dbg !3180
  %17 = call i8* (i8*, i32, ...) @event_get_params(i8* %16, i32 2, i8* null, i8** %8), !dbg !3181
  store i8* %17, i8** %7, align 8, !dbg !3182
  %18 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3183
  %19 = bitcast %struct._IRC_SERVER_REC* %18 to i8*, !dbg !3183
  %20 = load i32, i32* %6, align 4, !dbg !3184
  %21 = load i8*, i8** %8, align 8, !dbg !3185
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %19, i8* null, i32 1, i32 %20, i8* %21), !dbg !3186
  %22 = load i8*, i8** %7, align 8, !dbg !3187
  call void @g_free(i8* %22), !dbg !3188
  br label %23, !dbg !3189

; <label>:23:                                     ; preds = %15, %13
  ret void, !dbg !3190
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1083, !1084}
!llvm.ident = !{!1085}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !434, globals: !1079)
!1 = !DIFile(filename: "line314-fe-events-numeric.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10, !15, !24, !35, !66, !192}
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
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 10, size: 32, align: 32, elements: !37)
!36 = !DIFile(filename: "../../../src/core/levels.h", directory: "/home/lichi/Desktop/irssi/task1")
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65}
!38 = !DIEnumerator(name: "MSGLEVEL_CRAP", value: 1)
!39 = !DIEnumerator(name: "MSGLEVEL_MSGS", value: 2)
!40 = !DIEnumerator(name: "MSGLEVEL_PUBLIC", value: 4)
!41 = !DIEnumerator(name: "MSGLEVEL_NOTICES", value: 8)
!42 = !DIEnumerator(name: "MSGLEVEL_SNOTES", value: 16)
!43 = !DIEnumerator(name: "MSGLEVEL_CTCPS", value: 32)
!44 = !DIEnumerator(name: "MSGLEVEL_ACTIONS", value: 64)
!45 = !DIEnumerator(name: "MSGLEVEL_JOINS", value: 128)
!46 = !DIEnumerator(name: "MSGLEVEL_PARTS", value: 256)
!47 = !DIEnumerator(name: "MSGLEVEL_QUITS", value: 512)
!48 = !DIEnumerator(name: "MSGLEVEL_KICKS", value: 1024)
!49 = !DIEnumerator(name: "MSGLEVEL_MODES", value: 2048)
!50 = !DIEnumerator(name: "MSGLEVEL_TOPICS", value: 4096)
!51 = !DIEnumerator(name: "MSGLEVEL_WALLOPS", value: 8192)
!52 = !DIEnumerator(name: "MSGLEVEL_INVITES", value: 16384)
!53 = !DIEnumerator(name: "MSGLEVEL_NICKS", value: 32768)
!54 = !DIEnumerator(name: "MSGLEVEL_DCC", value: 65536)
!55 = !DIEnumerator(name: "MSGLEVEL_DCCMSGS", value: 131072)
!56 = !DIEnumerator(name: "MSGLEVEL_CLIENTNOTICE", value: 262144)
!57 = !DIEnumerator(name: "MSGLEVEL_CLIENTCRAP", value: 524288)
!58 = !DIEnumerator(name: "MSGLEVEL_CLIENTERROR", value: 1048576)
!59 = !DIEnumerator(name: "MSGLEVEL_HILIGHT", value: 2097152)
!60 = !DIEnumerator(name: "MSGLEVEL_ALL", value: 4194303)
!61 = !DIEnumerator(name: "MSGLEVEL_NOHILIGHT", value: 16777216)
!62 = !DIEnumerator(name: "MSGLEVEL_NO_ACT", value: 33554432)
!63 = !DIEnumerator(name: "MSGLEVEL_NEVER", value: 67108864)
!64 = !DIEnumerator(name: "MSGLEVEL_LASTLOG", value: 134217728)
!65 = !DIEnumerator(name: "MSGLEVEL_HIDDEN", value: 268435456)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !67, line: 3, size: 32, align: 32, elements: !68)
!67 = !DIFile(filename: "module-formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!68 = !{!69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191}
!69 = !DIEnumerator(name: "IRCTXT_MODULE_NAME", value: 0)
!70 = !DIEnumerator(name: "IRCTXT_FILL_1", value: 1)
!71 = !DIEnumerator(name: "IRCTXT_NETSPLIT", value: 2)
!72 = !DIEnumerator(name: "IRCTXT_NETSPLIT_MORE", value: 3)
!73 = !DIEnumerator(name: "IRCTXT_NETSPLIT_JOIN", value: 4)
!74 = !DIEnumerator(name: "IRCTXT_NETSPLIT_JOIN_MORE", value: 5)
!75 = !DIEnumerator(name: "IRCTXT_NO_NETSPLITS", value: 6)
!76 = !DIEnumerator(name: "IRCTXT_NETSPLITS_HEADER", value: 7)
!77 = !DIEnumerator(name: "IRCTXT_NETSPLITS_LINE", value: 8)
!78 = !DIEnumerator(name: "IRCTXT_NETSPLITS_FOOTER", value: 9)
!79 = !DIEnumerator(name: "IRCTXT_NETWORK_ADDED", value: 10)
!80 = !DIEnumerator(name: "IRCTXT_NETWORK_REMOVED", value: 11)
!81 = !DIEnumerator(name: "IRCTXT_NETWORK_NOT_FOUND", value: 12)
!82 = !DIEnumerator(name: "IRCTXT_NETWORK_HEADER", value: 13)
!83 = !DIEnumerator(name: "IRCTXT_NETWORK_LINE", value: 14)
!84 = !DIEnumerator(name: "IRCTXT_NETWORK_FOOTER", value: 15)
!85 = !DIEnumerator(name: "IRCTXT_SETUPSERVER_HEADER", value: 16)
!86 = !DIEnumerator(name: "IRCTXT_SETUPSERVER_LINE", value: 17)
!87 = !DIEnumerator(name: "IRCTXT_SETUPSERVER_FOOTER", value: 18)
!88 = !DIEnumerator(name: "IRCTXT_SASL_SUCCESS", value: 19)
!89 = !DIEnumerator(name: "IRCTXT_SASL_ERROR", value: 20)
!90 = !DIEnumerator(name: "IRCTXT_CAP_REQ", value: 21)
!91 = !DIEnumerator(name: "IRCTXT_CAP_LS", value: 22)
!92 = !DIEnumerator(name: "IRCTXT_CAP_ACK", value: 23)
!93 = !DIEnumerator(name: "IRCTXT_CAP_NAK", value: 24)
!94 = !DIEnumerator(name: "IRCTXT_CAP_LIST", value: 25)
!95 = !DIEnumerator(name: "IRCTXT_CAP_NEW", value: 26)
!96 = !DIEnumerator(name: "IRCTXT_CAP_DEL", value: 27)
!97 = !DIEnumerator(name: "IRCTXT_FILL_2", value: 28)
!98 = !DIEnumerator(name: "IRCTXT_JOINERROR_TOOMANY", value: 29)
!99 = !DIEnumerator(name: "IRCTXT_JOINERROR_FULL", value: 30)
!100 = !DIEnumerator(name: "IRCTXT_JOINERROR_INVITE", value: 31)
!101 = !DIEnumerator(name: "IRCTXT_JOINERROR_BANNED", value: 32)
!102 = !DIEnumerator(name: "IRCTXT_JOINERROR_BAD_KEY", value: 33)
!103 = !DIEnumerator(name: "IRCTXT_JOINERROR_BAD_MASK", value: 34)
!104 = !DIEnumerator(name: "IRCTXT_JOINERROR_UNAVAIL", value: 35)
!105 = !DIEnumerator(name: "IRCTXT_JOINERROR_DUPLICATE", value: 36)
!106 = !DIEnumerator(name: "IRCTXT_CHANNEL_REJOIN", value: 37)
!107 = !DIEnumerator(name: "IRCTXT_INVITING", value: 38)
!108 = !DIEnumerator(name: "IRCTXT_CHANNEL_CREATED", value: 39)
!109 = !DIEnumerator(name: "IRCTXT_CHANNEL_URL", value: 40)
!110 = !DIEnumerator(name: "IRCTXT_TOPIC", value: 41)
!111 = !DIEnumerator(name: "IRCTXT_NO_TOPIC", value: 42)
!112 = !DIEnumerator(name: "IRCTXT_TOPIC_INFO", value: 43)
!113 = !DIEnumerator(name: "IRCTXT_CHANMODE_CHANGE", value: 44)
!114 = !DIEnumerator(name: "IRCTXT_SERVER_CHANMODE_CHANGE", value: 45)
!115 = !DIEnumerator(name: "IRCTXT_CHANNEL_MODE", value: 46)
!116 = !DIEnumerator(name: "IRCTXT_BANTYPE", value: 47)
!117 = !DIEnumerator(name: "IRCTXT_NO_BANS", value: 48)
!118 = !DIEnumerator(name: "IRCTXT_BANLIST", value: 49)
!119 = !DIEnumerator(name: "IRCTXT_BANLIST_LONG", value: 50)
!120 = !DIEnumerator(name: "IRCTXT_EBANLIST", value: 51)
!121 = !DIEnumerator(name: "IRCTXT_EBANLIST_LONG", value: 52)
!122 = !DIEnumerator(name: "IRCTXT_NO_INVITELIST", value: 53)
!123 = !DIEnumerator(name: "IRCTXT_INVITELIST", value: 54)
!124 = !DIEnumerator(name: "IRCTXT_INVITELIST_LONG", value: 55)
!125 = !DIEnumerator(name: "IRCTXT_NO_SUCH_CHANNEL", value: 56)
!126 = !DIEnumerator(name: "IRCTXT_CHANNEL_SYNCED", value: 57)
!127 = !DIEnumerator(name: "IRCTXT_FILL_4", value: 58)
!128 = !DIEnumerator(name: "IRCTXT_USERMODE_CHANGE", value: 59)
!129 = !DIEnumerator(name: "IRCTXT_USER_MODE", value: 60)
!130 = !DIEnumerator(name: "IRCTXT_AWAY", value: 61)
!131 = !DIEnumerator(name: "IRCTXT_UNAWAY", value: 62)
!132 = !DIEnumerator(name: "IRCTXT_NICK_AWAY", value: 63)
!133 = !DIEnumerator(name: "IRCTXT_NO_SUCH_NICK", value: 64)
!134 = !DIEnumerator(name: "IRCTXT_NICK_IN_USE", value: 65)
!135 = !DIEnumerator(name: "IRCTXT_NICK_UNAVAILABLE", value: 66)
!136 = !DIEnumerator(name: "IRCTXT_YOUR_NICK_OWNED", value: 67)
!137 = !DIEnumerator(name: "IRCTXT_FILL_5", value: 68)
!138 = !DIEnumerator(name: "IRCTXT_WHOIS", value: 69)
!139 = !DIEnumerator(name: "IRCTXT_WHOWAS", value: 70)
!140 = !DIEnumerator(name: "IRCTXT_WHOIS_IDLE", value: 71)
!141 = !DIEnumerator(name: "IRCTXT_WHOIS_IDLE_SIGNON", value: 72)
!142 = !DIEnumerator(name: "IRCTXT_WHOIS_SERVER", value: 73)
!143 = !DIEnumerator(name: "IRCTXT_WHOIS_OPER", value: 74)
!144 = !DIEnumerator(name: "IRCTXT_WHOIS_MODES", value: 75)
!145 = !DIEnumerator(name: "IRCTXT_WHOIS_REALHOST", value: 76)
!146 = !DIEnumerator(name: "IRCTXT_WHOIS_USERMODE", value: 77)
!147 = !DIEnumerator(name: "IRCTXT_WHOIS_CHANNELS", value: 78)
!148 = !DIEnumerator(name: "IRCTXT_WHOIS_AWAY", value: 79)
!149 = !DIEnumerator(name: "IRCTXT_WHOIS_SPECIAL", value: 80)
!150 = !DIEnumerator(name: "IRCTXT_WHOIS_EXTRA", value: 81)
!151 = !DIEnumerator(name: "IRCTXT_END_OF_WHOIS", value: 82)
!152 = !DIEnumerator(name: "IRCTXT_END_OF_WHOWAS", value: 83)
!153 = !DIEnumerator(name: "IRCTXT_WHOIS_NOT_FOUND", value: 84)
!154 = !DIEnumerator(name: "IRCTXT_WHO", value: 85)
!155 = !DIEnumerator(name: "IRCTXT_END_OF_WHO", value: 86)
!156 = !DIEnumerator(name: "IRCTXT_FILL_6", value: 87)
!157 = !DIEnumerator(name: "IRCTXT_OWN_NOTICE", value: 88)
!158 = !DIEnumerator(name: "IRCTXT_OWN_ACTION", value: 89)
!159 = !DIEnumerator(name: "IRCTXT_OWN_ACTION_TARGET", value: 90)
!160 = !DIEnumerator(name: "IRCTXT_OWN_CTCP", value: 91)
!161 = !DIEnumerator(name: "IRCTXT_FILL_7", value: 92)
!162 = !DIEnumerator(name: "IRCTXT_NOTICE_SERVER", value: 93)
!163 = !DIEnumerator(name: "IRCTXT_NOTICE_PUBLIC", value: 94)
!164 = !DIEnumerator(name: "IRCTXT_NOTICE_PRIVATE", value: 95)
!165 = !DIEnumerator(name: "IRCTXT_ACTION_PRIVATE", value: 96)
!166 = !DIEnumerator(name: "IRCTXT_ACTION_PRIVATE_QUERY", value: 97)
!167 = !DIEnumerator(name: "IRCTXT_ACTION_PUBLIC", value: 98)
!168 = !DIEnumerator(name: "IRCTXT_ACTION_PUBLIC_CHANNEL", value: 99)
!169 = !DIEnumerator(name: "IRCTXT_FILL_8", value: 100)
!170 = !DIEnumerator(name: "IRCTXT_CTCP_REPLY", value: 101)
!171 = !DIEnumerator(name: "IRCTXT_CTCP_REPLY_CHANNEL", value: 102)
!172 = !DIEnumerator(name: "IRCTXT_CTCP_PING_REPLY", value: 103)
!173 = !DIEnumerator(name: "IRCTXT_CTCP_REQUESTED", value: 104)
!174 = !DIEnumerator(name: "IRCTXT_CTCP_REQUESTED_UNKNOWN", value: 105)
!175 = !DIEnumerator(name: "IRCTXT_FILL_10", value: 106)
!176 = !DIEnumerator(name: "IRCTXT_ONLINE", value: 107)
!177 = !DIEnumerator(name: "IRCTXT_PONG", value: 108)
!178 = !DIEnumerator(name: "IRCTXT_WALLOPS", value: 109)
!179 = !DIEnumerator(name: "IRCTXT_ACTION_WALLOPS", value: 110)
!180 = !DIEnumerator(name: "IRCTXT_KILL", value: 111)
!181 = !DIEnumerator(name: "IRCTXT_KILL_SERVER", value: 112)
!182 = !DIEnumerator(name: "IRCTXT_ERROR", value: 113)
!183 = !DIEnumerator(name: "IRCTXT_UNKNOWN_MODE", value: 114)
!184 = !DIEnumerator(name: "IRCTXT_DEFAULT_EVENT", value: 115)
!185 = !DIEnumerator(name: "IRCTXT_DEFAULT_EVENT_SERVER", value: 116)
!186 = !DIEnumerator(name: "IRCTXT_FILL_11", value: 117)
!187 = !DIEnumerator(name: "IRCTXT_SILENCED", value: 118)
!188 = !DIEnumerator(name: "IRCTXT_UNSILENCED", value: 119)
!189 = !DIEnumerator(name: "IRCTXT_SILENCE_LINE", value: 120)
!190 = !DIEnumerator(name: "IRCTXT_ASK_OPER_PASS", value: 121)
!191 = !DIEnumerator(name: "IRCTXT_ACCEPT_LIST", value: 122)
!192 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !193, line: 3, size: 32, align: 32, elements: !194)
!193 = !DIFile(filename: "../core/module-formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!194 = !{!195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433}
!195 = !DIEnumerator(name: "TXT_MODULE_NAME", value: 0)
!196 = !DIEnumerator(name: "TXT_FILL_1", value: 1)
!197 = !DIEnumerator(name: "TXT_LINE_START", value: 2)
!198 = !DIEnumerator(name: "TXT_LINE_START_IRSSI", value: 3)
!199 = !DIEnumerator(name: "TXT_TIMESTAMP", value: 4)
!200 = !DIEnumerator(name: "TXT_SERVERTAG", value: 5)
!201 = !DIEnumerator(name: "TXT_DAYCHANGE", value: 6)
!202 = !DIEnumerator(name: "TXT_TALKING_WITH", value: 7)
!203 = !DIEnumerator(name: "TXT_REFNUM_TOO_LOW", value: 8)
!204 = !DIEnumerator(name: "TXT_ERROR_SERVER_STICKY", value: 9)
!205 = !DIEnumerator(name: "TXT_SET_SERVER_STICKY", value: 10)
!206 = !DIEnumerator(name: "TXT_UNSET_SERVER_STICKY", value: 11)
!207 = !DIEnumerator(name: "TXT_WINDOW_NAME_NOT_UNIQUE", value: 12)
!208 = !DIEnumerator(name: "TXT_WINDOW_LEVEL", value: 13)
!209 = !DIEnumerator(name: "TXT_WINDOW_SET_IMMORTAL", value: 14)
!210 = !DIEnumerator(name: "TXT_WINDOW_UNSET_IMMORTAL", value: 15)
!211 = !DIEnumerator(name: "TXT_WINDOW_IMMORTAL_ERROR", value: 16)
!212 = !DIEnumerator(name: "TXT_WINDOWLIST_HEADER", value: 17)
!213 = !DIEnumerator(name: "TXT_WINDOWLIST_LINE", value: 18)
!214 = !DIEnumerator(name: "TXT_WINDOWLIST_FOOTER", value: 19)
!215 = !DIEnumerator(name: "TXT_WINDOWS_LAYOUT_SAVED", value: 20)
!216 = !DIEnumerator(name: "TXT_WINDOWS_LAYOUT_RESET", value: 21)
!217 = !DIEnumerator(name: "TXT_WINDOW_INFO_HEADER", value: 22)
!218 = !DIEnumerator(name: "TXT_WINDOW_INFO_FOOTER", value: 23)
!219 = !DIEnumerator(name: "TXT_WINDOW_INFO_REFNUM", value: 24)
!220 = !DIEnumerator(name: "TXT_WINDOW_INFO_REFNUM_STICKY", value: 25)
!221 = !DIEnumerator(name: "TXT_WINDOW_INFO_NAME", value: 26)
!222 = !DIEnumerator(name: "TXT_WINDOW_INFO_HISTORY", value: 27)
!223 = !DIEnumerator(name: "TXT_WINDOW_INFO_IMMORTAL", value: 28)
!224 = !DIEnumerator(name: "TXT_WINDOW_INFO_SIZE", value: 29)
!225 = !DIEnumerator(name: "TXT_WINDOW_INFO_LEVEL", value: 30)
!226 = !DIEnumerator(name: "TXT_WINDOW_INFO_SERVER", value: 31)
!227 = !DIEnumerator(name: "TXT_WINDOW_INFO_SERVER_STICKY", value: 32)
!228 = !DIEnumerator(name: "TXT_WINDOW_INFO_THEME", value: 33)
!229 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEMS_HEADER", value: 34)
!230 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEM", value: 35)
!231 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEMS_FOOTER", value: 36)
!232 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEMS_HEADER", value: 37)
!233 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEM", value: 38)
!234 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEMS_FOOTER", value: 39)
!235 = !DIEnumerator(name: "TXT_FILL_2", value: 40)
!236 = !DIEnumerator(name: "TXT_LOOKING_UP", value: 41)
!237 = !DIEnumerator(name: "TXT_CONNECTING", value: 42)
!238 = !DIEnumerator(name: "TXT_RECONNECTING", value: 43)
!239 = !DIEnumerator(name: "TXT_CONNECTION_ESTABLISHED", value: 44)
!240 = !DIEnumerator(name: "TXT_CANT_CONNECT", value: 45)
!241 = !DIEnumerator(name: "TXT_CONNECTION_LOST", value: 46)
!242 = !DIEnumerator(name: "TXT_LAG_DISCONNECTED", value: 47)
!243 = !DIEnumerator(name: "TXT_DISCONNECTED", value: 48)
!244 = !DIEnumerator(name: "TXT_SERVER_QUIT", value: 49)
!245 = !DIEnumerator(name: "TXT_SERVER_CHANGED", value: 50)
!246 = !DIEnumerator(name: "TXT_UNKNOWN_SERVER_TAG", value: 51)
!247 = !DIEnumerator(name: "TXT_NO_CONNECTED_SERVERS", value: 52)
!248 = !DIEnumerator(name: "TXT_SERVER_LIST", value: 53)
!249 = !DIEnumerator(name: "TXT_SERVER_LOOKUP_LIST", value: 54)
!250 = !DIEnumerator(name: "TXT_SERVER_RECONNECT_LIST", value: 55)
!251 = !DIEnumerator(name: "TXT_RECONNECT_REMOVED", value: 56)
!252 = !DIEnumerator(name: "TXT_RECONNECT_NOT_FOUND", value: 57)
!253 = !DIEnumerator(name: "TXT_SETUPSERVER_ADDED", value: 58)
!254 = !DIEnumerator(name: "TXT_SETUPSERVER_REMOVED", value: 59)
!255 = !DIEnumerator(name: "TXT_SETUPSERVER_NOT_FOUND", value: 60)
!256 = !DIEnumerator(name: "TXT_YOUR_NICK", value: 61)
!257 = !DIEnumerator(name: "TXT_FILL_3", value: 62)
!258 = !DIEnumerator(name: "TXT_JOIN", value: 63)
!259 = !DIEnumerator(name: "TXT_PART", value: 64)
!260 = !DIEnumerator(name: "TXT_KICK", value: 65)
!261 = !DIEnumerator(name: "TXT_QUIT", value: 66)
!262 = !DIEnumerator(name: "TXT_QUIT_ONCE", value: 67)
!263 = !DIEnumerator(name: "TXT_INVITE", value: 68)
!264 = !DIEnumerator(name: "TXT_NOT_INVITED", value: 69)
!265 = !DIEnumerator(name: "TXT_NEW_TOPIC", value: 70)
!266 = !DIEnumerator(name: "TXT_TOPIC_UNSET", value: 71)
!267 = !DIEnumerator(name: "TXT_YOUR_NICK_CHANGED", value: 72)
!268 = !DIEnumerator(name: "TXT_NICK_CHANGED", value: 73)
!269 = !DIEnumerator(name: "TXT_TALKING_IN", value: 74)
!270 = !DIEnumerator(name: "TXT_NOT_IN_CHANNELS", value: 75)
!271 = !DIEnumerator(name: "TXT_CURRENT_CHANNEL", value: 76)
!272 = !DIEnumerator(name: "TXT_NAMES", value: 77)
!273 = !DIEnumerator(name: "TXT_NAMES_PREFIX", value: 78)
!274 = !DIEnumerator(name: "TXT_NAMES_NICK_OP", value: 79)
!275 = !DIEnumerator(name: "TXT_NAMES_NICK_HALFOP", value: 80)
!276 = !DIEnumerator(name: "TXT_NAMES_NICK_VOICE", value: 81)
!277 = !DIEnumerator(name: "TXT_NAMES_NICK", value: 82)
!278 = !DIEnumerator(name: "TXT_ENDOFNAMES", value: 83)
!279 = !DIEnumerator(name: "TXT_CHANLIST_HEADER", value: 84)
!280 = !DIEnumerator(name: "TXT_CHANLIST_LINE", value: 85)
!281 = !DIEnumerator(name: "TXT_CHANSETUP_NOT_FOUND", value: 86)
!282 = !DIEnumerator(name: "TXT_CHANSETUP_ADDED", value: 87)
!283 = !DIEnumerator(name: "TXT_CHANSETUP_REMOVED", value: 88)
!284 = !DIEnumerator(name: "TXT_CHANSETUP_HEADER", value: 89)
!285 = !DIEnumerator(name: "TXT_CHANSETUP_LINE", value: 90)
!286 = !DIEnumerator(name: "TXT_CHANSETUP_FOOTER", value: 91)
!287 = !DIEnumerator(name: "TXT_FILL_4", value: 92)
!288 = !DIEnumerator(name: "TXT_OWN_MSG", value: 93)
!289 = !DIEnumerator(name: "TXT_OWN_MSG_CHANNEL", value: 94)
!290 = !DIEnumerator(name: "TXT_OWN_MSG_PRIVATE", value: 95)
!291 = !DIEnumerator(name: "TXT_OWN_MSG_PRIVATE_QUERY", value: 96)
!292 = !DIEnumerator(name: "TXT_PUBMSG_ME", value: 97)
!293 = !DIEnumerator(name: "TXT_PUBMSG_ME_CHANNEL", value: 98)
!294 = !DIEnumerator(name: "TXT_PUBMSG_HILIGHT", value: 99)
!295 = !DIEnumerator(name: "TXT_PUBMSG_HILIGHT_CHANNEL", value: 100)
!296 = !DIEnumerator(name: "TXT_PUBMSG", value: 101)
!297 = !DIEnumerator(name: "TXT_PUBMSG_CHANNEL", value: 102)
!298 = !DIEnumerator(name: "TXT_MSG_PRIVATE", value: 103)
!299 = !DIEnumerator(name: "TXT_MSG_PRIVATE_QUERY", value: 104)
!300 = !DIEnumerator(name: "TXT_NO_MSGS_GOT", value: 105)
!301 = !DIEnumerator(name: "TXT_NO_MSGS_SENT", value: 106)
!302 = !DIEnumerator(name: "TXT_FILL_5", value: 107)
!303 = !DIEnumerator(name: "TXT_QUERY_START", value: 108)
!304 = !DIEnumerator(name: "TXT_QUERY_STOP", value: 109)
!305 = !DIEnumerator(name: "TXT_NO_QUERY", value: 110)
!306 = !DIEnumerator(name: "TXT_QUERY_SERVER_CHANGED", value: 111)
!307 = !DIEnumerator(name: "TXT_FILL_6", value: 112)
!308 = !DIEnumerator(name: "TXT_HILIGHT_HEADER", value: 113)
!309 = !DIEnumerator(name: "TXT_HILIGHT_LINE", value: 114)
!310 = !DIEnumerator(name: "TXT_HILIGHT_FOOTER", value: 115)
!311 = !DIEnumerator(name: "TXT_HILIGHT_NOT_FOUND", value: 116)
!312 = !DIEnumerator(name: "TXT_HILIGHT_REMOVED", value: 117)
!313 = !DIEnumerator(name: "TXT_FILL_7", value: 118)
!314 = !DIEnumerator(name: "TXT_ALIAS_ADDED", value: 119)
!315 = !DIEnumerator(name: "TXT_ALIAS_REMOVED", value: 120)
!316 = !DIEnumerator(name: "TXT_ALIAS_NOT_FOUND", value: 121)
!317 = !DIEnumerator(name: "TXT_ALIASLIST_HEADER", value: 122)
!318 = !DIEnumerator(name: "TXT_ALIASLIST_LINE", value: 123)
!319 = !DIEnumerator(name: "TXT_ALIASLIST_FOOTER", value: 124)
!320 = !DIEnumerator(name: "TXT_FILL_8", value: 125)
!321 = !DIEnumerator(name: "TXT_LOG_OPENED", value: 126)
!322 = !DIEnumerator(name: "TXT_LOG_CLOSED", value: 127)
!323 = !DIEnumerator(name: "TXT_LOG_CREATE_FAILED", value: 128)
!324 = !DIEnumerator(name: "TXT_LOG_LOCKED", value: 129)
!325 = !DIEnumerator(name: "TXT_LOG_NOT_OPEN", value: 130)
!326 = !DIEnumerator(name: "TXT_LOG_STARTED", value: 131)
!327 = !DIEnumerator(name: "TXT_LOG_STOPPED", value: 132)
!328 = !DIEnumerator(name: "TXT_LOG_LIST_HEADER", value: 133)
!329 = !DIEnumerator(name: "TXT_LOG_LIST", value: 134)
!330 = !DIEnumerator(name: "TXT_LOG_LIST_FOOTER", value: 135)
!331 = !DIEnumerator(name: "TXT_WINDOWLOG_FILE", value: 136)
!332 = !DIEnumerator(name: "TXT_WINDOWLOG_FILE_LOGGING", value: 137)
!333 = !DIEnumerator(name: "TXT_LOG_NO_AWAY_MSGS", value: 138)
!334 = !DIEnumerator(name: "TXT_LOG_AWAY_MSGS", value: 139)
!335 = !DIEnumerator(name: "TXT_FILL_9", value: 140)
!336 = !DIEnumerator(name: "TXT_MODULE_HEADER", value: 141)
!337 = !DIEnumerator(name: "TXT_MODULE_LINE", value: 142)
!338 = !DIEnumerator(name: "TXT_MODULE_FOOTER", value: 143)
!339 = !DIEnumerator(name: "TXT_MODULE_ALREADY_LOADED", value: 144)
!340 = !DIEnumerator(name: "TXT_MODULE_NOT_LOADED", value: 145)
!341 = !DIEnumerator(name: "TXT_MODULE_LOAD_ERROR", value: 146)
!342 = !DIEnumerator(name: "TXT_MODULE_VERSION_MISMATCH", value: 147)
!343 = !DIEnumerator(name: "TXT_MODULE_INVALID", value: 148)
!344 = !DIEnumerator(name: "TXT_MODULE_LOADED", value: 149)
!345 = !DIEnumerator(name: "TXT_MODULE_UNLOADED", value: 150)
!346 = !DIEnumerator(name: "TXT_FILL_10", value: 151)
!347 = !DIEnumerator(name: "TXT_COMMAND_UNKNOWN", value: 152)
!348 = !DIEnumerator(name: "TXT_COMMAND_AMBIGUOUS", value: 153)
!349 = !DIEnumerator(name: "TXT_OPTION_UNKNOWN", value: 154)
!350 = !DIEnumerator(name: "TXT_OPTION_AMBIGUOUS", value: 155)
!351 = !DIEnumerator(name: "TXT_OPTION_MISSING_ARG", value: 156)
!352 = !DIEnumerator(name: "TXT_NOT_ENOUGH_PARAMS", value: 157)
!353 = !DIEnumerator(name: "TXT_NOT_CONNECTED", value: 158)
!354 = !DIEnumerator(name: "TXT_NOT_JOINED", value: 159)
!355 = !DIEnumerator(name: "TXT_CHAN_NOT_FOUND", value: 160)
!356 = !DIEnumerator(name: "TXT_CHAN_NOT_SYNCED", value: 161)
!357 = !DIEnumerator(name: "TXT_ILLEGAL_PROTO", value: 162)
!358 = !DIEnumerator(name: "TXT_NOT_GOOD_IDEA", value: 163)
!359 = !DIEnumerator(name: "TXT_INVALID_NUMBER", value: 164)
!360 = !DIEnumerator(name: "TXT_INVALID_TIME", value: 165)
!361 = !DIEnumerator(name: "TXT_INVALID_LEVEL", value: 166)
!362 = !DIEnumerator(name: "TXT_INVALID_SIZE", value: 167)
!363 = !DIEnumerator(name: "TXT_INVALID_CHARSET", value: 168)
!364 = !DIEnumerator(name: "TXT_INVALID_CHOICE", value: 169)
!365 = !DIEnumerator(name: "TXT_EVAL_MAX_RECURSE", value: 170)
!366 = !DIEnumerator(name: "TXT_PROGRAM_NOT_FOUND", value: 171)
!367 = !DIEnumerator(name: "TXT_NO_SERVER_DEFINED", value: 172)
!368 = !DIEnumerator(name: "TXT_FILL_11", value: 173)
!369 = !DIEnumerator(name: "TXT_THEME_SAVED", value: 174)
!370 = !DIEnumerator(name: "TXT_THEME_SAVE_FAILED", value: 175)
!371 = !DIEnumerator(name: "TXT_THEME_NOT_FOUND", value: 176)
!372 = !DIEnumerator(name: "TXT_THEME_CHANGED", value: 177)
!373 = !DIEnumerator(name: "TXT_WINDOW_THEME", value: 178)
!374 = !DIEnumerator(name: "TXT_WINDOW_THEME_DEFAULT", value: 179)
!375 = !DIEnumerator(name: "TXT_WINDOW_THEME_CHANGED", value: 180)
!376 = !DIEnumerator(name: "TXT_WINDOW_THEME_REMOVED", value: 181)
!377 = !DIEnumerator(name: "TXT_FORMAT_TITLE", value: 182)
!378 = !DIEnumerator(name: "TXT_FORMAT_SUBTITLE", value: 183)
!379 = !DIEnumerator(name: "TXT_FORMAT_ITEM", value: 184)
!380 = !DIEnumerator(name: "TXT_FILL_12", value: 185)
!381 = !DIEnumerator(name: "TXT_IGNORED", value: 186)
!382 = !DIEnumerator(name: "TXT_IGNORED_OPTIONS", value: 187)
!383 = !DIEnumerator(name: "TXT_UNIGNORED", value: 188)
!384 = !DIEnumerator(name: "TXT_IGNORE_NOT_FOUND", value: 189)
!385 = !DIEnumerator(name: "TXT_IGNORE_NO_IGNORES", value: 190)
!386 = !DIEnumerator(name: "TXT_IGNORE_HEADER", value: 191)
!387 = !DIEnumerator(name: "TXT_IGNORE_LINE", value: 192)
!388 = !DIEnumerator(name: "TXT_IGNORE_FOOTER", value: 193)
!389 = !DIEnumerator(name: "TXT_FILL_13", value: 194)
!390 = !DIEnumerator(name: "TXT_NOT_CHANNEL_OR_QUERY", value: 195)
!391 = !DIEnumerator(name: "TXT_CONVERSION_ADDED", value: 196)
!392 = !DIEnumerator(name: "TXT_CONVERSION_REMOVED", value: 197)
!393 = !DIEnumerator(name: "TXT_CONVERSION_NOT_FOUND", value: 198)
!394 = !DIEnumerator(name: "TXT_CONVERSION_NO_TRANSLITS", value: 199)
!395 = !DIEnumerator(name: "TXT_RECODE_HEADER", value: 200)
!396 = !DIEnumerator(name: "TXT_RECODE_LINE", value: 201)
!397 = !DIEnumerator(name: "TXT_FILL_14", value: 202)
!398 = !DIEnumerator(name: "TXT_UNKNOWN_CHAT_PROTOCOL", value: 203)
!399 = !DIEnumerator(name: "TXT_UNKNOWN_CHATNET", value: 204)
!400 = !DIEnumerator(name: "TXT_NOT_TOGGLE", value: 205)
!401 = !DIEnumerator(name: "TXT_PERL_ERROR", value: 206)
!402 = !DIEnumerator(name: "TXT_BIND_HEADER", value: 207)
!403 = !DIEnumerator(name: "TXT_BIND_LIST", value: 208)
!404 = !DIEnumerator(name: "TXT_BIND_COMMAND_LIST", value: 209)
!405 = !DIEnumerator(name: "TXT_BIND_FOOTER", value: 210)
!406 = !DIEnumerator(name: "TXT_BIND_UNKNOWN_ID", value: 211)
!407 = !DIEnumerator(name: "TXT_CONFIG_SAVED", value: 212)
!408 = !DIEnumerator(name: "TXT_CONFIG_RELOADED", value: 213)
!409 = !DIEnumerator(name: "TXT_CONFIG_MODIFIED", value: 214)
!410 = !DIEnumerator(name: "TXT_GLIB_ERROR", value: 215)
!411 = !DIEnumerator(name: "TXT_OVERWRITE_CONFIG", value: 216)
!412 = !DIEnumerator(name: "TXT_SET_TITLE", value: 217)
!413 = !DIEnumerator(name: "TXT_SET_ITEM", value: 218)
!414 = !DIEnumerator(name: "TXT_SET_UNKNOWN", value: 219)
!415 = !DIEnumerator(name: "TXT_SET_NOT_BOOLEAN", value: 220)
!416 = !DIEnumerator(name: "TXT_NO_COMPLETIONS", value: 221)
!417 = !DIEnumerator(name: "TXT_COMPLETION_REMOVED", value: 222)
!418 = !DIEnumerator(name: "TXT_COMPLETION_HEADER", value: 223)
!419 = !DIEnumerator(name: "TXT_COMPLETION_LINE", value: 224)
!420 = !DIEnumerator(name: "TXT_COMPLETION_FOOTER", value: 225)
!421 = !DIEnumerator(name: "TXT_CAPSICUM_ENABLED", value: 226)
!422 = !DIEnumerator(name: "TXT_CAPSICUM_DISABLED", value: 227)
!423 = !DIEnumerator(name: "TXT_CAPSICUM_FAILED", value: 228)
!424 = !DIEnumerator(name: "TLS_FILL_15", value: 229)
!425 = !DIEnumerator(name: "TXT_TLS_EPHEMERAL_KEY", value: 230)
!426 = !DIEnumerator(name: "TXT_TLS_EPHEMERAL_KEY_UNAVAILBLE", value: 231)
!427 = !DIEnumerator(name: "TXT_TLS_PUBKEY", value: 232)
!428 = !DIEnumerator(name: "TXT_TLS_CERT_HEADER", value: 233)
!429 = !DIEnumerator(name: "TXT_TLS_CERT_SUBJECT", value: 234)
!430 = !DIEnumerator(name: "TXT_TLS_CERT_ISSUER", value: 235)
!431 = !DIEnumerator(name: "TXT_TLS_PUBKEY_FINGERPRINT", value: 236)
!432 = !DIEnumerator(name: "TXT_TLS_CERT_FINGERPRINT", value: 237)
!433 = !DIEnumerator(name: "TXT_TLS_PROTOCOL_VERSION", value: 238)
!434 = !{!435, !442, !443, !447, !449, !874, !769, !457, !559, !719}
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !436, line: 9, baseType: !437)
!436 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64, align: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{null, !440, !440, !440, !440, !440, !440}
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64, align: 64)
!441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64, align: 64)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !445, line: 46, baseType: !446)
!445 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!446 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64, align: 64)
!448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !446)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64, align: 64)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !451, line: 7, baseType: !452)
!451 = !DIFile(filename: "../../../src/irc/core/irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !453, line: 15, size: 1600, align: 64, elements: !454)
!453 = !DIFile(filename: "../../../src/irc/core/irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!454 = !{!455, !458, !459, !464, !465, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !452, file: !456, line: 3, baseType: !457, size: 32, align: 32)
!456 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!457 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !452, file: !456, line: 4, baseType: !457, size: 32, align: 32, offset: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !452, file: !456, line: 5, baseType: !460, size: 64, align: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64, align: 64)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !462, line: 37, baseType: !463)
!462 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!463 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !462, line: 37, flags: DIFlagFwdDecl)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !452, file: !456, line: 7, baseType: !442, size: 64, align: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !452, file: !456, line: 8, baseType: !466, size: 64, align: 64, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64, align: 64)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !451, line: 6, baseType: !468)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !469, line: 42, size: 39168, align: 64, elements: !470)
!469 = !DIFile(filename: "../../../src/irc/core/irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!470 = !{!471, !473, !474, !475, !718, !723, !724, !725, !726, !727, !728, !729, !730, !731, !735, !736, !740, !741, !742, !746, !747, !748, !749, !750, !751, !752, !753, !754, !761, !762, !763, !764, !765, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1046, !1048}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !468, file: !472, line: 3, baseType: !457, size: 32, align: 32)
!472 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!473 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !468, file: !472, line: 4, baseType: !457, size: 32, align: 32, offset: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !468, file: !472, line: 6, baseType: !457, size: 32, align: 32, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !468, file: !472, line: 8, baseType: !476, size: 64, align: 64, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64, align: 64)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !451, line: 5, baseType: !478)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !469, line: 24, size: 2496, align: 64, elements: !479)
!479 = !{!480, !482, !483, !484, !486, !487, !488, !489, !490, !492, !493, !494, !495, !496, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !478, file: !481, line: 3, baseType: !457, size: 32, align: 32)
!481 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!482 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !478, file: !481, line: 4, baseType: !457, size: 32, align: 32, offset: 32)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !478, file: !481, line: 6, baseType: !457, size: 32, align: 32, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !478, file: !481, line: 9, baseType: !485, size: 64, align: 64, offset: 128)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64, align: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !478, file: !481, line: 10, baseType: !457, size: 32, align: 32, offset: 192)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !478, file: !481, line: 11, baseType: !485, size: 64, align: 64, offset: 256)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !478, file: !481, line: 11, baseType: !485, size: 64, align: 64, offset: 320)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !478, file: !481, line: 11, baseType: !485, size: 64, align: 64, offset: 384)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !478, file: !481, line: 13, baseType: !491, size: 16, align: 16, offset: 448)
!491 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !478, file: !481, line: 14, baseType: !485, size: 64, align: 64, offset: 512)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !478, file: !481, line: 15, baseType: !485, size: 64, align: 64, offset: 576)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !478, file: !481, line: 16, baseType: !457, size: 32, align: 32, offset: 640)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !478, file: !481, line: 17, baseType: !485, size: 64, align: 64, offset: 704)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !478, file: !481, line: 19, baseType: !497, size: 64, align: 64, offset: 768)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64, align: 64)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !499, line: 99, baseType: !500)
!499 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!500 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !499, line: 99, flags: DIFlagFwdDecl)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !478, file: !481, line: 19, baseType: !497, size: 64, align: 64, offset: 832)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !478, file: !481, line: 21, baseType: !485, size: 64, align: 64, offset: 896)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !478, file: !481, line: 22, baseType: !485, size: 64, align: 64, offset: 960)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !478, file: !481, line: 23, baseType: !485, size: 64, align: 64, offset: 1024)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !478, file: !481, line: 24, baseType: !485, size: 64, align: 64, offset: 1088)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !478, file: !481, line: 26, baseType: !485, size: 64, align: 64, offset: 1152)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !478, file: !481, line: 27, baseType: !485, size: 64, align: 64, offset: 1216)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !478, file: !481, line: 28, baseType: !485, size: 64, align: 64, offset: 1280)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !478, file: !481, line: 29, baseType: !485, size: 64, align: 64, offset: 1344)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !478, file: !481, line: 30, baseType: !485, size: 64, align: 64, offset: 1408)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !478, file: !481, line: 31, baseType: !485, size: 64, align: 64, offset: 1472)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !478, file: !481, line: 32, baseType: !485, size: 64, align: 64, offset: 1536)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !478, file: !481, line: 33, baseType: !485, size: 64, align: 64, offset: 1600)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !478, file: !481, line: 35, baseType: !515, size: 64, align: 64, offset: 1664)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64, align: 64)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !517)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !518)
!518 = !{!519, !521, !663, !664, !669, !670, !671, !672, !673, !682, !683, !684, !688, !689, !690, !691, !692, !693, !694, !695}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !517, file: !4, line: 100, baseType: !520, size: 32, align: 32)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !445, line: 49, baseType: !457)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !517, file: !4, line: 101, baseType: !522, size: 64, align: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64, align: 64)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !524)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !525)
!525 = !{!526, !548, !554, !561, !565, !650, !654, !659}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !524, file: !4, line: 133, baseType: !527, size: 64, align: 64)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64, align: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!530, !515, !443, !531, !534, !535}
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !532, line: 66, baseType: !533)
!532 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!533 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64, align: 64)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64, align: 64)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64, align: 64)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !538, line: 42, baseType: !539)
!538 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !538, line: 44, size: 128, align: 64, elements: !540)
!540 = !{!541, !546, !547}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !539, file: !538, line: 46, baseType: !542, size: 32, align: 32)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !543, line: 36, baseType: !544)
!543 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !532, line: 45, baseType: !545)
!545 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !539, file: !538, line: 47, baseType: !520, size: 32, align: 32, offset: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !539, file: !538, line: 48, baseType: !443, size: 64, align: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !524, file: !4, line: 138, baseType: !549, size: 64, align: 64, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64, align: 64)
!550 = !DISubroutineType(types: !551)
!551 = !{!530, !515, !552, !531, !534, !535}
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64, align: 64)
!553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !444)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !524, file: !4, line: 143, baseType: !555, size: 64, align: 64, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64, align: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!530, !515, !558, !560, !535}
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !532, line: 51, baseType: !559)
!559 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !524, file: !4, line: 147, baseType: !562, size: 64, align: 64, offset: 192)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64, align: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!530, !515, !535}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !524, file: !4, line: 149, baseType: !566, size: 64, align: 64, offset: 256)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64, align: 64)
!567 = !DISubroutineType(types: !568)
!568 = !{!569, !515, !649}
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64, align: 64)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !571)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !572)
!572 = !{!573, !575, !596, !625, !627, !631, !632, !633, !634, !642, !643, !644, !645}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !571, file: !16, line: 174, baseType: !574, size: 64, align: 64)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !445, line: 77, baseType: !442)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !571, file: !16, line: 175, baseType: !576, size: 64, align: 64, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64, align: 64)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !578)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !579)
!579 = !{!580, !584, !585}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !578, file: !16, line: 198, baseType: !581, size: 64, align: 64)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64, align: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{null, !574}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !578, file: !16, line: 199, baseType: !581, size: 64, align: 64, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !578, file: !16, line: 200, baseType: !586, size: 64, align: 64, offset: 128)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64, align: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{null, !574, !569, !589, !595}
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64, align: 64)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !591)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64, align: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!594, !574}
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !445, line: 50, baseType: !520)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64, align: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !571, file: !16, line: 177, baseType: !597, size: 64, align: 64, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64, align: 64)
!598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !599)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !600)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !601)
!601 = !{!602, !607, !611, !615, !619, !620}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !600, file: !16, line: 216, baseType: !603, size: 64, align: 64)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64, align: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!594, !569, !606}
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64, align: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !600, file: !16, line: 218, baseType: !608, size: 64, align: 64, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64, align: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!594, !569}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !600, file: !16, line: 219, baseType: !612, size: 64, align: 64, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64, align: 64)
!613 = !DISubroutineType(types: !614)
!614 = !{!594, !569, !590, !574}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !600, file: !16, line: 222, baseType: !616, size: 64, align: 64, offset: 192)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64, align: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{null, !569}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !600, file: !16, line: 226, baseType: !590, size: 64, align: 64, offset: 256)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !600, file: !16, line: 227, baseType: !621, size: 64, align: 64, offset: 320)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !622)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64, align: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{null}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !571, file: !16, line: 178, baseType: !626, size: 32, align: 32, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !445, line: 55, baseType: !545)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !571, file: !16, line: 180, baseType: !628, size: 64, align: 64, offset: 256)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64, align: 64)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !630)
!630 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !571, file: !16, line: 182, baseType: !520, size: 32, align: 32, offset: 320)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !571, file: !16, line: 183, baseType: !626, size: 32, align: 32, offset: 352)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !571, file: !16, line: 184, baseType: !626, size: 32, align: 32, offset: 384)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !571, file: !16, line: 186, baseType: !635, size: 64, align: 64, offset: 448)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64, align: 64)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !637, line: 37, baseType: !638)
!637 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !637, line: 39, size: 128, align: 64, elements: !639)
!639 = !{!640, !641}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !638, file: !637, line: 41, baseType: !574, size: 64, align: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !638, file: !637, line: 42, baseType: !635, size: 64, align: 64, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !571, file: !16, line: 188, baseType: !569, size: 64, align: 64, offset: 512)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !571, file: !16, line: 189, baseType: !569, size: 64, align: 64, offset: 576)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !571, file: !16, line: 191, baseType: !485, size: 64, align: 64, offset: 640)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !571, file: !16, line: 193, baseType: !646, size: 64, align: 64, offset: 704)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64, align: 64)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !648)
!648 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !524, file: !4, line: 151, baseType: !651, size: 64, align: 64, offset: 320)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64, align: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{null, !515}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !524, file: !4, line: 152, baseType: !655, size: 64, align: 64, offset: 384)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64, align: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{!530, !515, !658, !535}
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !524, file: !4, line: 155, baseType: !660, size: 64, align: 64, offset: 448)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64, align: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!658, !515}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !517, file: !4, line: 103, baseType: !443, size: 64, align: 64, offset: 128)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !517, file: !4, line: 104, baseType: !665, size: 64, align: 64, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !666, line: 77, baseType: !667)
!666 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64, align: 64)
!668 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !666, line: 77, flags: DIFlagFwdDecl)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !517, file: !4, line: 105, baseType: !665, size: 64, align: 64, offset: 256)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !517, file: !4, line: 106, baseType: !443, size: 64, align: 64, offset: 320)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !517, file: !4, line: 107, baseType: !626, size: 32, align: 32, offset: 384)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !517, file: !4, line: 109, baseType: !531, size: 64, align: 64, offset: 448)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !517, file: !4, line: 110, baseType: !674, size: 64, align: 64, offset: 512)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64, align: 64)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !676, line: 39, baseType: !677)
!676 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !676, line: 41, size: 192, align: 64, elements: !678)
!678 = !{!679, !680, !681}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !677, file: !676, line: 43, baseType: !443, size: 64, align: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !677, file: !676, line: 44, baseType: !531, size: 64, align: 64, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !677, file: !676, line: 45, baseType: !531, size: 64, align: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !517, file: !4, line: 111, baseType: !674, size: 64, align: 64, offset: 576)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !517, file: !4, line: 112, baseType: !674, size: 64, align: 64, offset: 640)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !517, file: !4, line: 113, baseType: !685, size: 48, align: 8, offset: 704)
!685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 48, align: 8, elements: !686)
!686 = !{!687}
!687 = !DISubrange(count: 6)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !517, file: !4, line: 117, baseType: !626, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !517, file: !4, line: 118, baseType: !626, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !517, file: !4, line: 119, baseType: !626, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !517, file: !4, line: 120, baseType: !626, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !517, file: !4, line: 121, baseType: !626, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !517, file: !4, line: 122, baseType: !626, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !517, file: !4, line: 124, baseType: !574, size: 64, align: 64, offset: 768)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !517, file: !4, line: 125, baseType: !574, size: 64, align: 64, offset: 832)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !478, file: !481, line: 38, baseType: !545, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !478, file: !481, line: 39, baseType: !545, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !478, file: !481, line: 40, baseType: !545, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !478, file: !481, line: 41, baseType: !545, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !478, file: !481, line: 42, baseType: !545, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !478, file: !481, line: 43, baseType: !545, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !478, file: !481, line: 44, baseType: !545, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !478, file: !481, line: 45, baseType: !545, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !478, file: !481, line: 46, baseType: !485, size: 64, align: 64, offset: 1792)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !478, file: !481, line: 47, baseType: !485, size: 64, align: 64, offset: 1856)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !478, file: !469, line: 27, baseType: !485, size: 64, align: 64, offset: 1920)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !478, file: !469, line: 28, baseType: !485, size: 64, align: 64, offset: 1984)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !478, file: !469, line: 30, baseType: !457, size: 32, align: 32, offset: 2048)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !478, file: !469, line: 31, baseType: !485, size: 64, align: 64, offset: 2112)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !478, file: !469, line: 32, baseType: !485, size: 64, align: 64, offset: 2176)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !478, file: !469, line: 34, baseType: !457, size: 32, align: 32, offset: 2240)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !478, file: !469, line: 35, baseType: !457, size: 32, align: 32, offset: 2272)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !478, file: !469, line: 36, baseType: !457, size: 32, align: 32, offset: 2304)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !478, file: !469, line: 38, baseType: !457, size: 32, align: 32, offset: 2336)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !478, file: !469, line: 38, baseType: !457, size: 32, align: 32, offset: 2368)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !478, file: !469, line: 38, baseType: !457, size: 32, align: 32, offset: 2400)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !478, file: !469, line: 38, baseType: !457, size: 32, align: 32, offset: 2432)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !468, file: !472, line: 9, baseType: !719, size: 64, align: 64, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !720, line: 75, baseType: !721)
!720 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !722, line: 139, baseType: !559)
!722 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!723 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !468, file: !472, line: 10, baseType: !719, size: 64, align: 64, offset: 256)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !468, file: !472, line: 12, baseType: !485, size: 64, align: 64, offset: 320)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !468, file: !472, line: 13, baseType: !485, size: 64, align: 64, offset: 384)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !468, file: !472, line: 15, baseType: !545, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !468, file: !472, line: 16, baseType: !545, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !468, file: !472, line: 17, baseType: !545, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !468, file: !472, line: 18, baseType: !545, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !468, file: !472, line: 19, baseType: !545, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !468, file: !472, line: 21, baseType: !732, size: 64, align: 64, offset: 512)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64, align: 64)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !499, line: 102, baseType: !734)
!734 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !499, line: 102, flags: DIFlagFwdDecl)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !468, file: !472, line: 22, baseType: !457, size: 32, align: 32, offset: 576)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !468, file: !472, line: 25, baseType: !737, size: 128, align: 64, offset: 640)
!737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !515, size: 128, align: 64, elements: !738)
!738 = !{!739}
!739 = !DISubrange(count: 2)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !468, file: !472, line: 26, baseType: !457, size: 32, align: 32, offset: 768)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !468, file: !472, line: 27, baseType: !457, size: 32, align: 32, offset: 800)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !468, file: !472, line: 29, baseType: !743, size: 64, align: 64, offset: 832)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64, align: 64)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !499, line: 103, baseType: !745)
!745 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !499, line: 103, flags: DIFlagFwdDecl)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !468, file: !472, line: 30, baseType: !460, size: 64, align: 64, offset: 896)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !468, file: !472, line: 32, baseType: !485, size: 64, align: 64, offset: 960)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !468, file: !472, line: 33, baseType: !485, size: 64, align: 64, offset: 1024)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !468, file: !472, line: 34, baseType: !485, size: 64, align: 64, offset: 1088)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !468, file: !472, line: 35, baseType: !545, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !468, file: !472, line: 36, baseType: !545, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !468, file: !472, line: 37, baseType: !545, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !468, file: !472, line: 38, baseType: !545, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !468, file: !472, line: 40, baseType: !755, size: 128, align: 64, offset: 1216)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !445, line: 504, baseType: !756)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !445, line: 506, size: 128, align: 64, elements: !757)
!757 = !{!758, !760}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !756, file: !445, line: 508, baseType: !759, size: 64, align: 64)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !445, line: 48, baseType: !559)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !756, file: !445, line: 509, baseType: !759, size: 64, align: 64, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !468, file: !472, line: 41, baseType: !719, size: 64, align: 64, offset: 1344)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !468, file: !472, line: 42, baseType: !457, size: 32, align: 32, offset: 1408)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !468, file: !472, line: 44, baseType: !635, size: 64, align: 64, offset: 1472)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !468, file: !472, line: 45, baseType: !635, size: 64, align: 64, offset: 1536)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !468, file: !472, line: 53, baseType: !766, size: 64, align: 64, offset: 1600)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64, align: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{null, !769, !447, !457}
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64, align: 64)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !499, line: 107, baseType: !771)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !772, line: 30, size: 2240, align: 64, elements: !773)
!772 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!773 = !{!774, !775, !776, !777, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !853, !857, !861, !865, !870, !962, !969, !973}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !771, file: !472, line: 3, baseType: !457, size: 32, align: 32)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !771, file: !472, line: 4, baseType: !457, size: 32, align: 32, offset: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !771, file: !472, line: 6, baseType: !457, size: 32, align: 32, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !771, file: !472, line: 8, baseType: !778, size: 64, align: 64, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64, align: 64)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !499, line: 113, baseType: !780)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !772, line: 25, size: 1920, align: 64, elements: !781)
!781 = !{!782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !780, file: !481, line: 3, baseType: !457, size: 32, align: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !780, file: !481, line: 4, baseType: !457, size: 32, align: 32, offset: 32)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !780, file: !481, line: 6, baseType: !457, size: 32, align: 32, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !780, file: !481, line: 9, baseType: !485, size: 64, align: 64, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !780, file: !481, line: 10, baseType: !457, size: 32, align: 32, offset: 192)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !780, file: !481, line: 11, baseType: !485, size: 64, align: 64, offset: 256)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !780, file: !481, line: 11, baseType: !485, size: 64, align: 64, offset: 320)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !780, file: !481, line: 11, baseType: !485, size: 64, align: 64, offset: 384)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !780, file: !481, line: 13, baseType: !491, size: 16, align: 16, offset: 448)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !780, file: !481, line: 14, baseType: !485, size: 64, align: 64, offset: 512)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !780, file: !481, line: 15, baseType: !485, size: 64, align: 64, offset: 576)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !780, file: !481, line: 16, baseType: !457, size: 32, align: 32, offset: 640)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !780, file: !481, line: 17, baseType: !485, size: 64, align: 64, offset: 704)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !780, file: !481, line: 19, baseType: !497, size: 64, align: 64, offset: 768)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !780, file: !481, line: 19, baseType: !497, size: 64, align: 64, offset: 832)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !780, file: !481, line: 21, baseType: !485, size: 64, align: 64, offset: 896)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !780, file: !481, line: 22, baseType: !485, size: 64, align: 64, offset: 960)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !780, file: !481, line: 23, baseType: !485, size: 64, align: 64, offset: 1024)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !780, file: !481, line: 24, baseType: !485, size: 64, align: 64, offset: 1088)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !780, file: !481, line: 26, baseType: !485, size: 64, align: 64, offset: 1152)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !780, file: !481, line: 27, baseType: !485, size: 64, align: 64, offset: 1216)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !780, file: !481, line: 28, baseType: !485, size: 64, align: 64, offset: 1280)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !780, file: !481, line: 29, baseType: !485, size: 64, align: 64, offset: 1344)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !780, file: !481, line: 30, baseType: !485, size: 64, align: 64, offset: 1408)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !780, file: !481, line: 31, baseType: !485, size: 64, align: 64, offset: 1472)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !780, file: !481, line: 32, baseType: !485, size: 64, align: 64, offset: 1536)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !780, file: !481, line: 33, baseType: !485, size: 64, align: 64, offset: 1600)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !780, file: !481, line: 35, baseType: !515, size: 64, align: 64, offset: 1664)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !780, file: !481, line: 38, baseType: !545, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !780, file: !481, line: 39, baseType: !545, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !780, file: !481, line: 40, baseType: !545, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !780, file: !481, line: 41, baseType: !545, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !780, file: !481, line: 42, baseType: !545, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !780, file: !481, line: 43, baseType: !545, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !780, file: !481, line: 44, baseType: !545, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !780, file: !481, line: 45, baseType: !545, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !780, file: !481, line: 46, baseType: !485, size: 64, align: 64, offset: 1792)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !780, file: !481, line: 47, baseType: !485, size: 64, align: 64, offset: 1856)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !771, file: !472, line: 9, baseType: !719, size: 64, align: 64, offset: 192)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !771, file: !472, line: 10, baseType: !719, size: 64, align: 64, offset: 256)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !771, file: !472, line: 12, baseType: !485, size: 64, align: 64, offset: 320)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !771, file: !472, line: 13, baseType: !485, size: 64, align: 64, offset: 384)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !771, file: !472, line: 15, baseType: !545, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !771, file: !472, line: 16, baseType: !545, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !771, file: !472, line: 17, baseType: !545, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !771, file: !472, line: 18, baseType: !545, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !771, file: !472, line: 19, baseType: !545, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !771, file: !472, line: 21, baseType: !732, size: 64, align: 64, offset: 512)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !771, file: !472, line: 22, baseType: !457, size: 32, align: 32, offset: 576)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !771, file: !472, line: 25, baseType: !737, size: 128, align: 64, offset: 640)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !771, file: !472, line: 26, baseType: !457, size: 32, align: 32, offset: 768)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !771, file: !472, line: 27, baseType: !457, size: 32, align: 32, offset: 800)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !771, file: !472, line: 29, baseType: !743, size: 64, align: 64, offset: 832)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !771, file: !472, line: 30, baseType: !460, size: 64, align: 64, offset: 896)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !771, file: !472, line: 32, baseType: !485, size: 64, align: 64, offset: 960)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !771, file: !472, line: 33, baseType: !485, size: 64, align: 64, offset: 1024)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !771, file: !472, line: 34, baseType: !485, size: 64, align: 64, offset: 1088)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !771, file: !472, line: 35, baseType: !545, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !771, file: !472, line: 36, baseType: !545, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !771, file: !472, line: 37, baseType: !545, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !771, file: !472, line: 38, baseType: !545, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !771, file: !472, line: 40, baseType: !755, size: 128, align: 64, offset: 1216)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !771, file: !472, line: 41, baseType: !719, size: 64, align: 64, offset: 1344)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !771, file: !472, line: 42, baseType: !457, size: 32, align: 32, offset: 1408)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !771, file: !472, line: 44, baseType: !635, size: 64, align: 64, offset: 1472)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !771, file: !472, line: 45, baseType: !635, size: 64, align: 64, offset: 1536)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !771, file: !472, line: 53, baseType: !766, size: 64, align: 64, offset: 1600)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !771, file: !472, line: 55, baseType: !850, size: 64, align: 64, offset: 1664)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64, align: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{!457, !769, !446}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !771, file: !472, line: 57, baseType: !854, size: 64, align: 64, offset: 1728)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64, align: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{!457, !769, !447}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !771, file: !472, line: 60, baseType: !858, size: 64, align: 64, offset: 1792)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64, align: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{!447, !769}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !771, file: !472, line: 62, baseType: !862, size: 64, align: 64, offset: 1856)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64, align: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{null, !769, !447, !447, !457}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !771, file: !472, line: 65, baseType: !866, size: 64, align: 64, offset: 1920)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64, align: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{!869, !769, !447, !447}
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64, align: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !771, file: !472, line: 69, baseType: !871, size: 64, align: 64, offset: 1984)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64, align: 64)
!872 = !DISubroutineType(types: !873)
!873 = !{!874, !769, !447}
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64, align: 64)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !499, line: 109, baseType: !876)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !877, line: 15, size: 1408, align: 64, elements: !878)
!877 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!878 = !{!879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !913, !914, !916, !917, !918, !919, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !876, file: !456, line: 3, baseType: !457, size: 32, align: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !876, file: !456, line: 4, baseType: !457, size: 32, align: 32, offset: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !876, file: !456, line: 5, baseType: !460, size: 64, align: 64, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !876, file: !456, line: 7, baseType: !442, size: 64, align: 64, offset: 128)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !876, file: !456, line: 8, baseType: !769, size: 64, align: 64, offset: 192)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !876, file: !456, line: 9, baseType: !485, size: 64, align: 64, offset: 256)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !876, file: !456, line: 10, baseType: !485, size: 64, align: 64, offset: 320)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !876, file: !456, line: 11, baseType: !719, size: 64, align: 64, offset: 384)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !876, file: !456, line: 12, baseType: !457, size: 32, align: 32, offset: 448)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !876, file: !456, line: 13, baseType: !485, size: 64, align: 64, offset: 512)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !876, file: !456, line: 15, baseType: !890, size: 64, align: 64, offset: 576)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64, align: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{null, !893}
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64, align: 64)
!894 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !499, line: 108, baseType: !895)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !896, line: 5, size: 704, align: 64, elements: !897)
!896 = !DIFile(filename: "../../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!897 = !{!898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !895, file: !456, line: 3, baseType: !457, size: 32, align: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !895, file: !456, line: 4, baseType: !457, size: 32, align: 32, offset: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !895, file: !456, line: 5, baseType: !460, size: 64, align: 64, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !895, file: !456, line: 7, baseType: !442, size: 64, align: 64, offset: 128)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !895, file: !456, line: 8, baseType: !769, size: 64, align: 64, offset: 192)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !895, file: !456, line: 9, baseType: !485, size: 64, align: 64, offset: 256)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !895, file: !456, line: 10, baseType: !485, size: 64, align: 64, offset: 320)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !895, file: !456, line: 11, baseType: !719, size: 64, align: 64, offset: 384)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !895, file: !456, line: 12, baseType: !457, size: 32, align: 32, offset: 448)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !895, file: !456, line: 13, baseType: !485, size: 64, align: 64, offset: 512)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !895, file: !456, line: 15, baseType: !890, size: 64, align: 64, offset: 576)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !895, file: !456, line: 17, baseType: !910, size: 64, align: 64, offset: 640)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64, align: 64)
!911 = !DISubroutineType(types: !912)
!912 = !{!447, !893}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !876, file: !456, line: 17, baseType: !910, size: 64, align: 64, offset: 640)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !876, file: !915, line: 5, baseType: !485, size: 64, align: 64, offset: 704)
!915 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!916 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !876, file: !915, line: 6, baseType: !485, size: 64, align: 64, offset: 768)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !876, file: !915, line: 7, baseType: !719, size: 64, align: 64, offset: 832)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !876, file: !915, line: 9, baseType: !460, size: 64, align: 64, offset: 896)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !876, file: !915, line: 10, baseType: !920, size: 64, align: 64, offset: 960)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64, align: 64)
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !499, line: 111, baseType: !922)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !923, line: 13, size: 576, align: 64, elements: !924)
!923 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!924 = !{!925, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !943, !944}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !922, file: !926, line: 3, baseType: !457, size: 32, align: 32)
!926 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!927 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !922, file: !926, line: 4, baseType: !457, size: 32, align: 32, offset: 32)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !922, file: !926, line: 6, baseType: !719, size: 64, align: 64, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !922, file: !926, line: 8, baseType: !485, size: 64, align: 64, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !922, file: !926, line: 9, baseType: !485, size: 64, align: 64, offset: 192)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !922, file: !926, line: 10, baseType: !485, size: 64, align: 64, offset: 256)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !922, file: !926, line: 11, baseType: !457, size: 32, align: 32, offset: 320)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !922, file: !926, line: 14, baseType: !545, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !922, file: !926, line: 15, baseType: !545, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !922, file: !926, line: 18, baseType: !545, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !922, file: !926, line: 19, baseType: !545, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !922, file: !926, line: 20, baseType: !545, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !922, file: !926, line: 21, baseType: !545, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !922, file: !926, line: 22, baseType: !940, size: 64, align: 8, offset: 360)
!940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 64, align: 8, elements: !941)
!941 = !{!942}
!942 = !DISubrange(count: 8)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !922, file: !926, line: 26, baseType: !442, size: 64, align: 64, offset: 448)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !922, file: !926, line: 28, baseType: !920, size: 64, align: 64, offset: 512)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !876, file: !915, line: 12, baseType: !545, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !876, file: !915, line: 13, baseType: !485, size: 64, align: 64, offset: 1088)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !876, file: !915, line: 14, baseType: !457, size: 32, align: 32, offset: 1152)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !876, file: !915, line: 15, baseType: !485, size: 64, align: 64, offset: 1216)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !876, file: !915, line: 17, baseType: !545, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !876, file: !915, line: 18, baseType: !545, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !876, file: !915, line: 19, baseType: !545, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !876, file: !915, line: 20, baseType: !545, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !876, file: !915, line: 22, baseType: !545, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !876, file: !915, line: 23, baseType: !545, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !876, file: !915, line: 24, baseType: !545, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !876, file: !915, line: 25, baseType: !545, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !876, file: !915, line: 26, baseType: !545, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !876, file: !915, line: 31, baseType: !959, size: 64, align: 64, offset: 1344)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64, align: 64)
!960 = !DISubroutineType(types: !961)
!961 = !{!485, !874}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !771, file: !472, line: 70, baseType: !963, size: 64, align: 64, offset: 2048)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64, align: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{!966, !769, !447}
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64, align: 64)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !499, line: 110, baseType: !968)
!968 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !499, line: 110, flags: DIFlagFwdDecl)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !771, file: !472, line: 71, baseType: !970, size: 64, align: 64, offset: 2112)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64, align: 64)
!971 = !DISubroutineType(types: !972)
!972 = !{!457, !447, !447}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !771, file: !472, line: 73, baseType: !970, size: 64, align: 64, offset: 2176)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !468, file: !472, line: 55, baseType: !850, size: 64, align: 64, offset: 1664)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !468, file: !472, line: 57, baseType: !854, size: 64, align: 64, offset: 1728)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !468, file: !472, line: 60, baseType: !858, size: 64, align: 64, offset: 1792)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !468, file: !472, line: 62, baseType: !862, size: 64, align: 64, offset: 1856)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !468, file: !472, line: 65, baseType: !866, size: 64, align: 64, offset: 1920)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !468, file: !472, line: 69, baseType: !871, size: 64, align: 64, offset: 1984)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !468, file: !472, line: 70, baseType: !963, size: 64, align: 64, offset: 2048)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !468, file: !472, line: 71, baseType: !970, size: 64, align: 64, offset: 2112)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !468, file: !472, line: 73, baseType: !970, size: 64, align: 64, offset: 2176)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !468, file: !469, line: 46, baseType: !635, size: 64, align: 64, offset: 2240)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !468, file: !469, line: 47, baseType: !635, size: 64, align: 64, offset: 2304)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !468, file: !469, line: 48, baseType: !986, size: 64, align: 64, offset: 2368)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64, align: 64)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !451, line: 8, baseType: !988)
!988 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !451, line: 8, flags: DIFlagFwdDecl)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !468, file: !469, line: 49, baseType: !635, size: 64, align: 64, offset: 2432)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !468, file: !469, line: 51, baseType: !485, size: 64, align: 64, offset: 2496)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !468, file: !469, line: 53, baseType: !485, size: 64, align: 64, offset: 2560)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !468, file: !469, line: 54, baseType: !485, size: 64, align: 64, offset: 2624)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !468, file: !469, line: 55, baseType: !485, size: 64, align: 64, offset: 2688)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !468, file: !469, line: 56, baseType: !485, size: 64, align: 64, offset: 2752)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !468, file: !469, line: 57, baseType: !457, size: 32, align: 32, offset: 2816)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !468, file: !469, line: 59, baseType: !545, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !468, file: !469, line: 60, baseType: !545, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !468, file: !469, line: 62, baseType: !545, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !468, file: !469, line: 63, baseType: !545, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !468, file: !469, line: 64, baseType: !545, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !468, file: !469, line: 65, baseType: !545, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !468, file: !469, line: 66, baseType: !545, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !468, file: !469, line: 67, baseType: !545, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !468, file: !469, line: 68, baseType: !545, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !468, file: !469, line: 69, baseType: !545, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !468, file: !469, line: 70, baseType: !545, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !468, file: !469, line: 71, baseType: !545, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !468, file: !469, line: 72, baseType: !545, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !468, file: !469, line: 74, baseType: !457, size: 32, align: 32, offset: 2880)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !468, file: !469, line: 75, baseType: !457, size: 32, align: 32, offset: 2912)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !468, file: !469, line: 76, baseType: !457, size: 32, align: 32, offset: 2944)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !468, file: !469, line: 77, baseType: !457, size: 32, align: 32, offset: 2976)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !468, file: !469, line: 79, baseType: !460, size: 64, align: 64, offset: 3008)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !468, file: !469, line: 80, baseType: !635, size: 64, align: 64, offset: 3072)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !468, file: !469, line: 81, baseType: !635, size: 64, align: 64, offset: 3136)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !468, file: !469, line: 83, baseType: !674, size: 64, align: 64, offset: 3200)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !468, file: !469, line: 84, baseType: !626, size: 32, align: 32, offset: 3264)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !468, file: !469, line: 87, baseType: !457, size: 32, align: 32, offset: 3296)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !468, file: !469, line: 91, baseType: !635, size: 64, align: 64, offset: 3328)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !468, file: !469, line: 92, baseType: !755, size: 128, align: 64, offset: 3392)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !468, file: !469, line: 93, baseType: !755, size: 128, align: 64, offset: 3520)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !468, file: !469, line: 95, baseType: !457, size: 32, align: 32, offset: 3648)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !468, file: !469, line: 96, baseType: !457, size: 32, align: 32, offset: 3680)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !468, file: !469, line: 97, baseType: !457, size: 32, align: 32, offset: 3712)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !468, file: !469, line: 100, baseType: !635, size: 64, align: 64, offset: 3776)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !468, file: !469, line: 103, baseType: !635, size: 64, align: 64, offset: 3840)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !468, file: !469, line: 106, baseType: !635, size: 64, align: 64, offset: 3904)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !468, file: !469, line: 108, baseType: !460, size: 64, align: 64, offset: 3968)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !468, file: !469, line: 109, baseType: !635, size: 64, align: 64, offset: 4032)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !468, file: !469, line: 111, baseType: !635, size: 64, align: 64, offset: 4096)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !468, file: !469, line: 114, baseType: !442, size: 64, align: 64, offset: 4160)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !468, file: !469, line: 116, baseType: !460, size: 64, align: 64, offset: 4224)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !468, file: !469, line: 117, baseType: !1034, size: 32768, align: 64, offset: 4288)
!1034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1035, size: 32768, align: 64, elements: !1044)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !1036, line: 10, size: 128, align: 64, elements: !1037)
!1036 = !DIFile(filename: "../../../src/irc/core/modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!1037 = !{!1038, !1043}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1035, file: !1036, line: 11, baseType: !1039, size: 64, align: 64)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64, align: 64)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !1036, line: 7, baseType: !1041)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{null, !449, !447, !446, !446, !485, !674}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !1035, file: !1036, line: 12, baseType: !446, size: 8, align: 8, offset: 64)
!1044 = !{!1045}
!1045 = !DISubrange(count: 256)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !468, file: !469, line: 118, baseType: !1047, size: 2048, align: 8, offset: 37056)
!1047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !446, size: 2048, align: 8, elements: !1044)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !468, file: !469, line: 120, baseType: !970, size: 64, align: 64, offset: 39104)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !452, file: !456, line: 9, baseType: !485, size: 64, align: 64, offset: 256)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !452, file: !456, line: 10, baseType: !485, size: 64, align: 64, offset: 320)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !452, file: !456, line: 11, baseType: !719, size: 64, align: 64, offset: 384)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !452, file: !456, line: 12, baseType: !457, size: 32, align: 32, offset: 448)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !452, file: !456, line: 13, baseType: !485, size: 64, align: 64, offset: 512)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !452, file: !456, line: 15, baseType: !890, size: 64, align: 64, offset: 576)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !452, file: !456, line: 17, baseType: !910, size: 64, align: 64, offset: 640)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !452, file: !915, line: 5, baseType: !485, size: 64, align: 64, offset: 704)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !452, file: !915, line: 6, baseType: !485, size: 64, align: 64, offset: 768)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !452, file: !915, line: 7, baseType: !719, size: 64, align: 64, offset: 832)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !452, file: !915, line: 9, baseType: !460, size: 64, align: 64, offset: 896)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !452, file: !915, line: 10, baseType: !920, size: 64, align: 64, offset: 960)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !452, file: !915, line: 12, baseType: !545, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !452, file: !915, line: 13, baseType: !485, size: 64, align: 64, offset: 1088)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !452, file: !915, line: 14, baseType: !457, size: 32, align: 32, offset: 1152)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !452, file: !915, line: 15, baseType: !485, size: 64, align: 64, offset: 1216)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !452, file: !915, line: 17, baseType: !545, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !452, file: !915, line: 18, baseType: !545, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !452, file: !915, line: 19, baseType: !545, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !452, file: !915, line: 20, baseType: !545, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !452, file: !915, line: 22, baseType: !545, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !452, file: !915, line: 23, baseType: !545, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !452, file: !915, line: 24, baseType: !545, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !452, file: !915, line: 25, baseType: !545, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !452, file: !915, line: 26, baseType: !545, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !452, file: !915, line: 31, baseType: !959, size: 64, align: 64, offset: 1344)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !452, file: !453, line: 18, baseType: !635, size: 64, align: 64, offset: 1408)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !452, file: !453, line: 20, baseType: !719, size: 64, align: 64, offset: 1472)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !452, file: !453, line: 21, baseType: !457, size: 32, align: 32, offset: 1536)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !452, file: !453, line: 22, baseType: !457, size: 32, align: 32, offset: 1568)
!1079 = !{!1080, !1082}
!1080 = distinct !DIGlobalVariable(name: "last_away_nick", scope: !0, file: !1081, line: 42, type: !485, isLocal: true, isDefinition: true, variable: i8** @last_away_nick)
!1081 = !DIFile(filename: "fe-events-numeric.c", directory: "/home/lichi/Desktop/irssi/task1")
!1082 = distinct !DIGlobalVariable(name: "last_away_msg", scope: !0, file: !1081, line: 43, type: !485, isLocal: true, isDefinition: true, variable: i8** @last_away_msg)
!1083 = !{i32 2, !"Dwarf Version", i32 4}
!1084 = !{i32 2, !"Debug Info Version", i32 3}
!1085 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!1086 = distinct !DISubprogram(name: "fe_events_numeric_init", scope: !1081, file: !1081, line: 645, type: !623, isLocal: false, isDefinition: true, scopeLine: 646, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!1087 = !{}
!1088 = !DILocation(line: 647, column: 17, scope: !1086)
!1089 = !DILocation(line: 648, column: 16, scope: !1086)
!1090 = !DILocation(line: 650, column: 2, scope: !1086)
!1091 = !DILocation(line: 651, column: 2, scope: !1086)
!1092 = !DILocation(line: 652, column: 2, scope: !1086)
!1093 = !DILocation(line: 653, column: 2, scope: !1086)
!1094 = !DILocation(line: 654, column: 2, scope: !1086)
!1095 = !DILocation(line: 655, column: 2, scope: !1086)
!1096 = !DILocation(line: 656, column: 2, scope: !1086)
!1097 = !DILocation(line: 657, column: 2, scope: !1086)
!1098 = !DILocation(line: 658, column: 2, scope: !1086)
!1099 = !DILocation(line: 659, column: 2, scope: !1086)
!1100 = !DILocation(line: 660, column: 2, scope: !1086)
!1101 = !DILocation(line: 661, column: 2, scope: !1086)
!1102 = !DILocation(line: 662, column: 2, scope: !1086)
!1103 = !DILocation(line: 663, column: 2, scope: !1086)
!1104 = !DILocation(line: 664, column: 2, scope: !1086)
!1105 = !DILocation(line: 665, column: 2, scope: !1086)
!1106 = !DILocation(line: 666, column: 2, scope: !1086)
!1107 = !DILocation(line: 667, column: 2, scope: !1086)
!1108 = !DILocation(line: 668, column: 2, scope: !1086)
!1109 = !DILocation(line: 669, column: 2, scope: !1086)
!1110 = !DILocation(line: 670, column: 2, scope: !1086)
!1111 = !DILocation(line: 671, column: 2, scope: !1086)
!1112 = !DILocation(line: 672, column: 2, scope: !1086)
!1113 = !DILocation(line: 674, column: 2, scope: !1086)
!1114 = !DILocation(line: 675, column: 2, scope: !1086)
!1115 = !DILocation(line: 676, column: 2, scope: !1086)
!1116 = !DILocation(line: 677, column: 2, scope: !1086)
!1117 = !DILocation(line: 678, column: 2, scope: !1086)
!1118 = !DILocation(line: 679, column: 2, scope: !1086)
!1119 = !DILocation(line: 680, column: 2, scope: !1086)
!1120 = !DILocation(line: 681, column: 2, scope: !1086)
!1121 = !DILocation(line: 682, column: 2, scope: !1086)
!1122 = !DILocation(line: 683, column: 2, scope: !1086)
!1123 = !DILocation(line: 684, column: 2, scope: !1086)
!1124 = !DILocation(line: 685, column: 2, scope: !1086)
!1125 = !DILocation(line: 686, column: 2, scope: !1086)
!1126 = !DILocation(line: 687, column: 2, scope: !1086)
!1127 = !DILocation(line: 688, column: 2, scope: !1086)
!1128 = !DILocation(line: 689, column: 2, scope: !1086)
!1129 = !DILocation(line: 690, column: 2, scope: !1086)
!1130 = !DILocation(line: 691, column: 2, scope: !1086)
!1131 = !DILocation(line: 693, column: 9, scope: !1086)
!1132 = !DILocation(line: 698, column: 2, scope: !1086)
!1133 = !DILocation(line: 699, column: 2, scope: !1086)
!1134 = !DILocation(line: 700, column: 2, scope: !1086)
!1135 = !DILocation(line: 701, column: 2, scope: !1086)
!1136 = !DILocation(line: 702, column: 2, scope: !1086)
!1137 = !DILocation(line: 703, column: 2, scope: !1086)
!1138 = !DILocation(line: 704, column: 2, scope: !1086)
!1139 = !DILocation(line: 705, column: 2, scope: !1086)
!1140 = !DILocation(line: 706, column: 2, scope: !1086)
!1141 = !DILocation(line: 707, column: 2, scope: !1086)
!1142 = !DILocation(line: 708, column: 2, scope: !1086)
!1143 = !DILocation(line: 709, column: 2, scope: !1086)
!1144 = !DILocation(line: 710, column: 2, scope: !1086)
!1145 = !DILocation(line: 711, column: 2, scope: !1086)
!1146 = !DILocation(line: 712, column: 2, scope: !1086)
!1147 = !DILocation(line: 714, column: 2, scope: !1086)
!1148 = !DILocation(line: 715, column: 2, scope: !1086)
!1149 = !DILocation(line: 716, column: 2, scope: !1086)
!1150 = !DILocation(line: 717, column: 2, scope: !1086)
!1151 = !DILocation(line: 718, column: 2, scope: !1086)
!1152 = !DILocation(line: 719, column: 2, scope: !1086)
!1153 = !DILocation(line: 720, column: 2, scope: !1086)
!1154 = !DILocation(line: 721, column: 2, scope: !1086)
!1155 = !DILocation(line: 722, column: 2, scope: !1086)
!1156 = !DILocation(line: 723, column: 2, scope: !1086)
!1157 = !DILocation(line: 724, column: 2, scope: !1086)
!1158 = !DILocation(line: 725, column: 2, scope: !1086)
!1159 = !DILocation(line: 726, column: 2, scope: !1086)
!1160 = !DILocation(line: 727, column: 2, scope: !1086)
!1161 = !DILocation(line: 728, column: 2, scope: !1086)
!1162 = !DILocation(line: 729, column: 2, scope: !1086)
!1163 = !DILocation(line: 730, column: 2, scope: !1086)
!1164 = !DILocation(line: 731, column: 2, scope: !1086)
!1165 = !DILocation(line: 732, column: 2, scope: !1086)
!1166 = !DILocation(line: 733, column: 2, scope: !1086)
!1167 = !DILocation(line: 734, column: 2, scope: !1086)
!1168 = !DILocation(line: 735, column: 2, scope: !1086)
!1169 = !DILocation(line: 736, column: 1, scope: !1086)
!1170 = distinct !DISubprogram(name: "event_user_mode", scope: !1081, file: !1081, line: 45, type: !1171, isLocal: true, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{null, !466, !447}
!1173 = !DILocalVariable(name: "server", arg: 1, scope: !1170, file: !1081, line: 45, type: !466)
!1174 = !DIExpression()
!1175 = !DILocation(line: 45, column: 45, scope: !1170)
!1176 = !DILocalVariable(name: "data", arg: 2, scope: !1170, file: !1081, line: 45, type: !447)
!1177 = !DILocation(line: 45, column: 65, scope: !1170)
!1178 = !DILocalVariable(name: "params", scope: !1170, file: !1081, line: 47, type: !485)
!1179 = !DILocation(line: 47, column: 8, scope: !1170)
!1180 = !DILocalVariable(name: "mode", scope: !1170, file: !1081, line: 47, type: !485)
!1181 = !DILocation(line: 47, column: 17, scope: !1170)
!1182 = !DILocation(line: 49, column: 2, scope: !1170)
!1183 = distinct !{!1183, !1182}
!1184 = !DILocation(line: 49, column: 10, scope: !1185)
!1185 = !DILexicalBlockFile(scope: !1186, file: !1081, discriminator: 1)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !1081, line: 49, column: 10)
!1187 = distinct !DILexicalBlock(scope: !1170, file: !1081, line: 49, column: 4)
!1188 = !DILocation(line: 49, column: 15, scope: !1185)
!1189 = !DILocation(line: 49, column: 5, scope: !1190)
!1190 = !DILexicalBlockFile(scope: !1191, file: !1081, discriminator: 2)
!1191 = distinct !DILexicalBlock(scope: !1186, file: !1081, line: 49, column: 3)
!1192 = !DILocation(line: 49, column: 14, scope: !1193)
!1193 = !DILexicalBlockFile(scope: !1194, file: !1081, discriminator: 3)
!1194 = distinct !DILexicalBlock(scope: !1186, file: !1081, line: 49, column: 12)
!1195 = !DILocation(line: 49, column: 99, scope: !1193)
!1196 = !DILocation(line: 49, column: 110, scope: !1197)
!1197 = !DILexicalBlockFile(scope: !1187, file: !1081, discriminator: 4)
!1198 = !DILocation(line: 50, column: 2, scope: !1170)
!1199 = distinct !{!1199, !1198}
!1200 = !DILocation(line: 50, column: 10, scope: !1201)
!1201 = !DILexicalBlockFile(scope: !1202, file: !1081, discriminator: 1)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !1081, line: 50, column: 10)
!1203 = distinct !DILexicalBlock(scope: !1170, file: !1081, line: 50, column: 4)
!1204 = !DILocation(line: 50, column: 17, scope: !1201)
!1205 = !DILocation(line: 50, column: 5, scope: !1206)
!1206 = !DILexicalBlockFile(scope: !1207, file: !1081, discriminator: 2)
!1207 = distinct !DILexicalBlock(scope: !1202, file: !1081, line: 50, column: 3)
!1208 = !DILocation(line: 50, column: 14, scope: !1209)
!1209 = !DILexicalBlockFile(scope: !1210, file: !1081, discriminator: 3)
!1210 = distinct !DILexicalBlock(scope: !1202, file: !1081, line: 50, column: 12)
!1211 = !DILocation(line: 50, column: 101, scope: !1209)
!1212 = !DILocation(line: 50, column: 112, scope: !1213)
!1213 = !DILexicalBlockFile(scope: !1203, file: !1081, discriminator: 4)
!1214 = !DILocation(line: 52, column: 28, scope: !1170)
!1215 = !DILocation(line: 52, column: 11, scope: !1170)
!1216 = !DILocation(line: 52, column: 9, scope: !1170)
!1217 = !DILocation(line: 53, column: 45, scope: !1170)
!1218 = !DILocation(line: 53, column: 54, scope: !1170)
!1219 = !DILocation(line: 53, column: 43, scope: !1170)
!1220 = !DILocation(line: 53, column: 9, scope: !1221)
!1221 = !DILexicalBlockFile(scope: !1170, file: !1081, discriminator: 1)
!1222 = !DILocation(line: 55, column: 9, scope: !1170)
!1223 = !DILocation(line: 55, column: 2, scope: !1170)
!1224 = !DILocation(line: 56, column: 1, scope: !1170)
!1225 = !DILocation(line: 56, column: 1, scope: !1221)
!1226 = distinct !DISubprogram(name: "event_ison", scope: !1081, file: !1081, line: 58, type: !1171, isLocal: true, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!1227 = !DILocalVariable(name: "server", arg: 1, scope: !1226, file: !1081, line: 58, type: !466)
!1228 = !DILocation(line: 58, column: 40, scope: !1226)
!1229 = !DILocalVariable(name: "data", arg: 2, scope: !1226, file: !1081, line: 58, type: !447)
!1230 = !DILocation(line: 58, column: 60, scope: !1226)
!1231 = !DILocalVariable(name: "params", scope: !1226, file: !1081, line: 60, type: !485)
!1232 = !DILocation(line: 60, column: 8, scope: !1226)
!1233 = !DILocalVariable(name: "online", scope: !1226, file: !1081, line: 60, type: !485)
!1234 = !DILocation(line: 60, column: 17, scope: !1226)
!1235 = !DILocation(line: 62, column: 2, scope: !1226)
!1236 = distinct !{!1236, !1235}
!1237 = !DILocation(line: 62, column: 10, scope: !1238)
!1238 = !DILexicalBlockFile(scope: !1239, file: !1081, discriminator: 1)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !1081, line: 62, column: 10)
!1240 = distinct !DILexicalBlock(scope: !1226, file: !1081, line: 62, column: 4)
!1241 = !DILocation(line: 62, column: 15, scope: !1238)
!1242 = !DILocation(line: 62, column: 5, scope: !1243)
!1243 = !DILexicalBlockFile(scope: !1244, file: !1081, discriminator: 2)
!1244 = distinct !DILexicalBlock(scope: !1239, file: !1081, line: 62, column: 3)
!1245 = !DILocation(line: 62, column: 14, scope: !1246)
!1246 = !DILexicalBlockFile(scope: !1247, file: !1081, discriminator: 3)
!1247 = distinct !DILexicalBlock(scope: !1239, file: !1081, line: 62, column: 12)
!1248 = !DILocation(line: 62, column: 99, scope: !1246)
!1249 = !DILocation(line: 62, column: 110, scope: !1250)
!1250 = !DILexicalBlockFile(scope: !1240, file: !1081, discriminator: 4)
!1251 = !DILocation(line: 63, column: 2, scope: !1226)
!1252 = distinct !{!1252, !1251}
!1253 = !DILocation(line: 63, column: 10, scope: !1254)
!1254 = !DILexicalBlockFile(scope: !1255, file: !1081, discriminator: 1)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !1081, line: 63, column: 10)
!1256 = distinct !DILexicalBlock(scope: !1226, file: !1081, line: 63, column: 4)
!1257 = !DILocation(line: 63, column: 17, scope: !1254)
!1258 = !DILocation(line: 63, column: 5, scope: !1259)
!1259 = !DILexicalBlockFile(scope: !1260, file: !1081, discriminator: 2)
!1260 = distinct !DILexicalBlock(scope: !1255, file: !1081, line: 63, column: 3)
!1261 = !DILocation(line: 63, column: 14, scope: !1262)
!1262 = !DILexicalBlockFile(scope: !1263, file: !1081, discriminator: 3)
!1263 = distinct !DILexicalBlock(scope: !1255, file: !1081, line: 63, column: 12)
!1264 = !DILocation(line: 63, column: 101, scope: !1262)
!1265 = !DILocation(line: 63, column: 112, scope: !1266)
!1266 = !DILexicalBlockFile(scope: !1256, file: !1081, discriminator: 4)
!1267 = !DILocation(line: 65, column: 28, scope: !1226)
!1268 = !DILocation(line: 65, column: 11, scope: !1226)
!1269 = !DILocation(line: 65, column: 9, scope: !1226)
!1270 = !DILocation(line: 66, column: 38, scope: !1226)
!1271 = !DILocation(line: 66, column: 33, scope: !1226)
!1272 = !DILocation(line: 66, column: 2, scope: !1226)
!1273 = !DILocation(line: 67, column: 9, scope: !1226)
!1274 = !DILocation(line: 67, column: 2, scope: !1226)
!1275 = !DILocation(line: 68, column: 1, scope: !1226)
!1276 = !DILocation(line: 68, column: 1, scope: !1277)
!1277 = !DILexicalBlockFile(scope: !1226, file: !1081, discriminator: 1)
!1278 = distinct !DISubprogram(name: "event_names_list", scope: !1081, file: !1081, line: 70, type: !1171, isLocal: true, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!1279 = !DILocalVariable(name: "server", arg: 1, scope: !1278, file: !1081, line: 70, type: !466)
!1280 = !DILocation(line: 70, column: 46, scope: !1278)
!1281 = !DILocalVariable(name: "data", arg: 2, scope: !1278, file: !1081, line: 70, type: !447)
!1282 = !DILocation(line: 70, column: 66, scope: !1278)
!1283 = !DILocalVariable(name: "chanrec", scope: !1278, file: !1081, line: 72, type: !449)
!1284 = !DILocation(line: 72, column: 19, scope: !1278)
!1285 = !DILocalVariable(name: "params", scope: !1278, file: !1081, line: 73, type: !485)
!1286 = !DILocation(line: 73, column: 8, scope: !1278)
!1287 = !DILocalVariable(name: "channel", scope: !1278, file: !1081, line: 73, type: !485)
!1288 = !DILocation(line: 73, column: 17, scope: !1278)
!1289 = !DILocalVariable(name: "names", scope: !1278, file: !1081, line: 73, type: !485)
!1290 = !DILocation(line: 73, column: 27, scope: !1278)
!1291 = !DILocation(line: 75, column: 2, scope: !1278)
!1292 = distinct !{!1292, !1291}
!1293 = !DILocation(line: 75, column: 10, scope: !1294)
!1294 = !DILexicalBlockFile(scope: !1295, file: !1081, discriminator: 1)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !1081, line: 75, column: 10)
!1296 = distinct !DILexicalBlock(scope: !1278, file: !1081, line: 75, column: 4)
!1297 = !DILocation(line: 75, column: 15, scope: !1294)
!1298 = !DILocation(line: 75, column: 5, scope: !1299)
!1299 = !DILexicalBlockFile(scope: !1300, file: !1081, discriminator: 2)
!1300 = distinct !DILexicalBlock(scope: !1295, file: !1081, line: 75, column: 3)
!1301 = !DILocation(line: 75, column: 14, scope: !1302)
!1302 = !DILexicalBlockFile(scope: !1303, file: !1081, discriminator: 3)
!1303 = distinct !DILexicalBlock(scope: !1295, file: !1081, line: 75, column: 12)
!1304 = !DILocation(line: 75, column: 99, scope: !1302)
!1305 = !DILocation(line: 75, column: 110, scope: !1306)
!1306 = !DILexicalBlockFile(scope: !1296, file: !1081, discriminator: 4)
!1307 = !DILocation(line: 77, column: 28, scope: !1278)
!1308 = !DILocation(line: 77, column: 11, scope: !1278)
!1309 = !DILocation(line: 77, column: 9, scope: !1278)
!1310 = !DILocation(line: 79, column: 147, scope: !1278)
!1311 = !DILocation(line: 79, column: 129, scope: !1278)
!1312 = !DILocation(line: 79, column: 114, scope: !1278)
!1313 = !DILocation(line: 79, column: 25, scope: !1278)
!1314 = !DILocation(line: 79, column: 100, scope: !1315)
!1315 = !DILexicalBlockFile(scope: !1278, file: !1081, discriminator: 1)
!1316 = !DILocation(line: 79, column: 100, scope: !1278)
!1317 = !DILocation(line: 79, column: 75, scope: !1318)
!1318 = !DILexicalBlockFile(scope: !1278, file: !1081, discriminator: 2)
!1319 = !DILocation(line: 79, column: 59, scope: !1278)
!1320 = !DILocation(line: 79, column: 58, scope: !1278)
!1321 = !DILocation(line: 79, column: 33, scope: !1322)
!1322 = !DILexicalBlockFile(scope: !1278, file: !1081, discriminator: 3)
!1323 = !DILocation(line: 79, column: 13, scope: !1278)
!1324 = !DILocation(line: 79, column: 10, scope: !1278)
!1325 = !DILocation(line: 80, column: 6, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1278, file: !1081, line: 80, column: 6)
!1327 = !DILocation(line: 80, column: 14, scope: !1326)
!1328 = !DILocation(line: 80, column: 21, scope: !1326)
!1329 = !DILocation(line: 80, column: 24, scope: !1330)
!1330 = !DILexicalBlockFile(scope: !1326, file: !1081, discriminator: 1)
!1331 = !DILocation(line: 80, column: 33, scope: !1330)
!1332 = !DILocation(line: 80, column: 6, scope: !1330)
!1333 = !DILocation(line: 81, column: 40, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1326, file: !1081, line: 80, column: 44)
!1335 = !DILocation(line: 81, column: 48, scope: !1334)
!1336 = !DILocation(line: 83, column: 8, scope: !1334)
!1337 = !DILocation(line: 81, column: 3, scope: !1334)
!1338 = !DILocation(line: 84, column: 27, scope: !1334)
!1339 = !DILocation(line: 84, column: 35, scope: !1334)
!1340 = !DILocation(line: 84, column: 65, scope: !1334)
!1341 = !DILocation(line: 84, column: 17, scope: !1334)
!1342 = !DILocation(line: 86, column: 2, scope: !1334)
!1343 = !DILocation(line: 87, column: 9, scope: !1278)
!1344 = !DILocation(line: 87, column: 2, scope: !1278)
!1345 = !DILocation(line: 88, column: 1, scope: !1278)
!1346 = !DILocation(line: 88, column: 1, scope: !1315)
!1347 = distinct !DISubprogram(name: "event_end_of_names", scope: !1081, file: !1081, line: 90, type: !1348, isLocal: true, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{null, !466, !447, !447}
!1350 = !DILocalVariable(name: "server", arg: 1, scope: !1347, file: !1081, line: 90, type: !466)
!1351 = !DILocation(line: 90, column: 48, scope: !1347)
!1352 = !DILocalVariable(name: "data", arg: 2, scope: !1347, file: !1081, line: 90, type: !447)
!1353 = !DILocation(line: 90, column: 68, scope: !1347)
!1354 = !DILocalVariable(name: "nick", arg: 3, scope: !1347, file: !1081, line: 91, type: !447)
!1355 = !DILocation(line: 91, column: 23, scope: !1347)
!1356 = !DILocalVariable(name: "chanrec", scope: !1347, file: !1081, line: 93, type: !449)
!1357 = !DILocation(line: 93, column: 19, scope: !1347)
!1358 = !DILocalVariable(name: "params", scope: !1347, file: !1081, line: 94, type: !485)
!1359 = !DILocation(line: 94, column: 8, scope: !1347)
!1360 = !DILocalVariable(name: "channel", scope: !1347, file: !1081, line: 94, type: !485)
!1361 = !DILocation(line: 94, column: 17, scope: !1347)
!1362 = !DILocation(line: 96, column: 2, scope: !1347)
!1363 = distinct !{!1363, !1362}
!1364 = !DILocation(line: 96, column: 10, scope: !1365)
!1365 = !DILexicalBlockFile(scope: !1366, file: !1081, discriminator: 1)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !1081, line: 96, column: 10)
!1367 = distinct !DILexicalBlock(scope: !1347, file: !1081, line: 96, column: 4)
!1368 = !DILocation(line: 96, column: 15, scope: !1365)
!1369 = !DILocation(line: 96, column: 5, scope: !1370)
!1370 = !DILexicalBlockFile(scope: !1371, file: !1081, discriminator: 2)
!1371 = distinct !DILexicalBlock(scope: !1366, file: !1081, line: 96, column: 3)
!1372 = !DILocation(line: 96, column: 14, scope: !1373)
!1373 = !DILexicalBlockFile(scope: !1374, file: !1081, discriminator: 3)
!1374 = distinct !DILexicalBlock(scope: !1366, file: !1081, line: 96, column: 12)
!1375 = !DILocation(line: 96, column: 99, scope: !1373)
!1376 = !DILocation(line: 96, column: 110, scope: !1377)
!1377 = !DILexicalBlockFile(scope: !1367, file: !1081, discriminator: 4)
!1378 = !DILocation(line: 98, column: 28, scope: !1347)
!1379 = !DILocation(line: 98, column: 11, scope: !1347)
!1380 = !DILocation(line: 98, column: 9, scope: !1347)
!1381 = !DILocation(line: 100, column: 147, scope: !1347)
!1382 = !DILocation(line: 100, column: 129, scope: !1347)
!1383 = !DILocation(line: 100, column: 114, scope: !1347)
!1384 = !DILocation(line: 100, column: 25, scope: !1347)
!1385 = !DILocation(line: 100, column: 100, scope: !1386)
!1386 = !DILexicalBlockFile(scope: !1347, file: !1081, discriminator: 1)
!1387 = !DILocation(line: 100, column: 100, scope: !1347)
!1388 = !DILocation(line: 100, column: 75, scope: !1389)
!1389 = !DILexicalBlockFile(scope: !1347, file: !1081, discriminator: 2)
!1390 = !DILocation(line: 100, column: 59, scope: !1347)
!1391 = !DILocation(line: 100, column: 58, scope: !1347)
!1392 = !DILocation(line: 100, column: 33, scope: !1393)
!1393 = !DILexicalBlockFile(scope: !1347, file: !1081, discriminator: 3)
!1394 = !DILocation(line: 100, column: 13, scope: !1347)
!1395 = !DILocation(line: 100, column: 10, scope: !1347)
!1396 = !DILocation(line: 101, column: 6, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1347, file: !1081, line: 101, column: 6)
!1398 = !DILocation(line: 101, column: 14, scope: !1397)
!1399 = !DILocation(line: 101, column: 21, scope: !1397)
!1400 = !DILocation(line: 101, column: 24, scope: !1401)
!1401 = !DILexicalBlockFile(scope: !1397, file: !1081, discriminator: 1)
!1402 = !DILocation(line: 101, column: 33, scope: !1401)
!1403 = !DILocation(line: 101, column: 6, scope: !1401)
!1404 = !DILocation(line: 102, column: 24, scope: !1397)
!1405 = !DILocation(line: 102, column: 32, scope: !1397)
!1406 = !DILocation(line: 102, column: 38, scope: !1397)
!1407 = !DILocation(line: 102, column: 3, scope: !1397)
!1408 = !DILocation(line: 103, column: 9, scope: !1347)
!1409 = !DILocation(line: 103, column: 2, scope: !1347)
!1410 = !DILocation(line: 104, column: 1, scope: !1347)
!1411 = !DILocation(line: 104, column: 1, scope: !1386)
!1412 = distinct !DISubprogram(name: "event_who", scope: !1081, file: !1081, line: 106, type: !1171, isLocal: true, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!1413 = !DILocalVariable(name: "server", arg: 1, scope: !1412, file: !1081, line: 106, type: !466)
!1414 = !DILocation(line: 106, column: 39, scope: !1412)
!1415 = !DILocalVariable(name: "data", arg: 2, scope: !1412, file: !1081, line: 106, type: !447)
!1416 = !DILocation(line: 106, column: 59, scope: !1412)
!1417 = !DILocalVariable(name: "params", scope: !1412, file: !1081, line: 108, type: !485)
!1418 = !DILocation(line: 108, column: 8, scope: !1412)
!1419 = !DILocalVariable(name: "nick", scope: !1412, file: !1081, line: 108, type: !485)
!1420 = !DILocation(line: 108, column: 17, scope: !1412)
!1421 = !DILocalVariable(name: "channel", scope: !1412, file: !1081, line: 108, type: !485)
!1422 = !DILocation(line: 108, column: 24, scope: !1412)
!1423 = !DILocalVariable(name: "user", scope: !1412, file: !1081, line: 108, type: !485)
!1424 = !DILocation(line: 108, column: 34, scope: !1412)
!1425 = !DILocalVariable(name: "host", scope: !1412, file: !1081, line: 108, type: !485)
!1426 = !DILocation(line: 108, column: 41, scope: !1412)
!1427 = !DILocalVariable(name: "stat", scope: !1412, file: !1081, line: 108, type: !485)
!1428 = !DILocation(line: 108, column: 48, scope: !1412)
!1429 = !DILocalVariable(name: "realname", scope: !1412, file: !1081, line: 108, type: !485)
!1430 = !DILocation(line: 108, column: 55, scope: !1412)
!1431 = !DILocalVariable(name: "hops", scope: !1412, file: !1081, line: 108, type: !485)
!1432 = !DILocation(line: 108, column: 66, scope: !1412)
!1433 = !DILocalVariable(name: "serv", scope: !1412, file: !1081, line: 109, type: !485)
!1434 = !DILocation(line: 109, column: 8, scope: !1412)
!1435 = !DILocalVariable(name: "recoded", scope: !1412, file: !1081, line: 109, type: !485)
!1436 = !DILocation(line: 109, column: 15, scope: !1412)
!1437 = !DILocation(line: 111, column: 2, scope: !1412)
!1438 = distinct !{!1438, !1437}
!1439 = !DILocation(line: 111, column: 10, scope: !1440)
!1440 = !DILexicalBlockFile(scope: !1441, file: !1081, discriminator: 1)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !1081, line: 111, column: 10)
!1442 = distinct !DILexicalBlock(scope: !1412, file: !1081, line: 111, column: 4)
!1443 = !DILocation(line: 111, column: 15, scope: !1440)
!1444 = !DILocation(line: 111, column: 5, scope: !1445)
!1445 = !DILexicalBlockFile(scope: !1446, file: !1081, discriminator: 2)
!1446 = distinct !DILexicalBlock(scope: !1441, file: !1081, line: 111, column: 3)
!1447 = !DILocation(line: 111, column: 14, scope: !1448)
!1448 = !DILexicalBlockFile(scope: !1449, file: !1081, discriminator: 3)
!1449 = distinct !DILexicalBlock(scope: !1441, file: !1081, line: 111, column: 12)
!1450 = !DILocation(line: 111, column: 99, scope: !1448)
!1451 = !DILocation(line: 111, column: 110, scope: !1452)
!1452 = !DILexicalBlockFile(scope: !1442, file: !1081, discriminator: 4)
!1453 = !DILocation(line: 113, column: 28, scope: !1412)
!1454 = !DILocation(line: 113, column: 11, scope: !1412)
!1455 = !DILocation(line: 113, column: 9, scope: !1412)
!1456 = !DILocation(line: 117, column: 9, scope: !1412)
!1457 = !DILocation(line: 117, column: 7, scope: !1412)
!1458 = !DILocation(line: 118, column: 2, scope: !1412)
!1459 = !DILocation(line: 118, column: 10, scope: !1460)
!1460 = !DILexicalBlockFile(scope: !1412, file: !1081, discriminator: 1)
!1461 = !DILocation(line: 118, column: 9, scope: !1460)
!1462 = !DILocation(line: 118, column: 19, scope: !1460)
!1463 = !DILocation(line: 118, column: 27, scope: !1460)
!1464 = !DILocation(line: 118, column: 31, scope: !1465)
!1465 = !DILexicalBlockFile(scope: !1412, file: !1081, discriminator: 2)
!1466 = !DILocation(line: 118, column: 30, scope: !1465)
!1467 = !DILocation(line: 118, column: 40, scope: !1465)
!1468 = !DILocation(line: 118, column: 2, scope: !1469)
!1469 = !DILexicalBlockFile(scope: !1412, file: !1081, discriminator: 3)
!1470 = !DILocation(line: 118, column: 56, scope: !1471)
!1471 = !DILexicalBlockFile(scope: !1412, file: !1081, discriminator: 4)
!1472 = !DILocation(line: 118, column: 2, scope: !1471)
!1473 = distinct !{!1473, !1458}
!1474 = !DILocation(line: 119, column: 7, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1412, file: !1081, line: 119, column: 6)
!1476 = !DILocation(line: 119, column: 6, scope: !1475)
!1477 = !DILocation(line: 119, column: 16, scope: !1475)
!1478 = !DILocation(line: 119, column: 6, scope: !1412)
!1479 = !DILocation(line: 120, column: 12, scope: !1475)
!1480 = !DILocation(line: 120, column: 15, scope: !1475)
!1481 = !DILocation(line: 120, column: 3, scope: !1475)
!1482 = !DILocation(line: 122, column: 56, scope: !1412)
!1483 = !DILocation(line: 122, column: 38, scope: !1412)
!1484 = !DILocation(line: 122, column: 23, scope: !1412)
!1485 = !DILocation(line: 122, column: 35, scope: !1412)
!1486 = !DILocation(line: 122, column: 45, scope: !1412)
!1487 = !DILocation(line: 122, column: 12, scope: !1460)
!1488 = !DILocation(line: 122, column: 10, scope: !1412)
!1489 = !DILocation(line: 123, column: 38, scope: !1412)
!1490 = !DILocation(line: 123, column: 30, scope: !1412)
!1491 = !DILocation(line: 123, column: 39, scope: !1412)
!1492 = !DILocation(line: 123, column: 45, scope: !1412)
!1493 = !DILocation(line: 123, column: 51, scope: !1412)
!1494 = !DILocation(line: 123, column: 57, scope: !1412)
!1495 = !DILocation(line: 123, column: 63, scope: !1412)
!1496 = !DILocation(line: 123, column: 69, scope: !1412)
!1497 = !DILocation(line: 123, column: 78, scope: !1412)
!1498 = !DILocation(line: 123, column: 2, scope: !1412)
!1499 = !DILocation(line: 126, column: 9, scope: !1412)
!1500 = !DILocation(line: 126, column: 2, scope: !1412)
!1501 = !DILocation(line: 127, column: 9, scope: !1412)
!1502 = !DILocation(line: 127, column: 2, scope: !1412)
!1503 = !DILocation(line: 128, column: 1, scope: !1412)
!1504 = !DILocation(line: 128, column: 1, scope: !1460)
!1505 = distinct !DISubprogram(name: "event_end_of_who", scope: !1081, file: !1081, line: 130, type: !1171, isLocal: true, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!1506 = !DILocalVariable(name: "server", arg: 1, scope: !1505, file: !1081, line: 130, type: !466)
!1507 = !DILocation(line: 130, column: 46, scope: !1505)
!1508 = !DILocalVariable(name: "data", arg: 2, scope: !1505, file: !1081, line: 130, type: !447)
!1509 = !DILocation(line: 130, column: 66, scope: !1505)
!1510 = !DILocalVariable(name: "params", scope: !1505, file: !1081, line: 132, type: !485)
!1511 = !DILocation(line: 132, column: 8, scope: !1505)
!1512 = !DILocalVariable(name: "channel", scope: !1505, file: !1081, line: 132, type: !485)
!1513 = !DILocation(line: 132, column: 17, scope: !1505)
!1514 = !DILocation(line: 134, column: 2, scope: !1505)
!1515 = distinct !{!1515, !1514}
!1516 = !DILocation(line: 134, column: 10, scope: !1517)
!1517 = !DILexicalBlockFile(scope: !1518, file: !1081, discriminator: 1)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !1081, line: 134, column: 10)
!1519 = distinct !DILexicalBlock(scope: !1505, file: !1081, line: 134, column: 4)
!1520 = !DILocation(line: 134, column: 15, scope: !1517)
!1521 = !DILocation(line: 134, column: 5, scope: !1522)
!1522 = !DILexicalBlockFile(scope: !1523, file: !1081, discriminator: 2)
!1523 = distinct !DILexicalBlock(scope: !1518, file: !1081, line: 134, column: 3)
!1524 = !DILocation(line: 134, column: 14, scope: !1525)
!1525 = !DILexicalBlockFile(scope: !1526, file: !1081, discriminator: 3)
!1526 = distinct !DILexicalBlock(scope: !1518, file: !1081, line: 134, column: 12)
!1527 = !DILocation(line: 134, column: 99, scope: !1525)
!1528 = !DILocation(line: 134, column: 110, scope: !1529)
!1529 = !DILexicalBlockFile(scope: !1519, file: !1081, discriminator: 4)
!1530 = !DILocation(line: 136, column: 28, scope: !1505)
!1531 = !DILocation(line: 136, column: 11, scope: !1505)
!1532 = !DILocation(line: 136, column: 9, scope: !1505)
!1533 = !DILocation(line: 137, column: 38, scope: !1505)
!1534 = !DILocation(line: 137, column: 37, scope: !1505)
!1535 = !DILocation(line: 137, column: 2, scope: !1505)
!1536 = !DILocation(line: 138, column: 9, scope: !1505)
!1537 = !DILocation(line: 138, column: 2, scope: !1505)
!1538 = !DILocation(line: 139, column: 1, scope: !1505)
!1539 = !DILocation(line: 139, column: 1, scope: !1540)
!1540 = !DILexicalBlockFile(scope: !1505, file: !1081, discriminator: 1)
!1541 = distinct !DISubprogram(name: "event_silence_list", scope: !1081, file: !1081, line: 189, type: !1171, isLocal: true, isDefinition: true, scopeLine: 190, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!1542 = !DILocalVariable(name: "server", arg: 1, scope: !1541, file: !1081, line: 189, type: !466)
!1543 = !DILocation(line: 189, column: 48, scope: !1541)
!1544 = !DILocalVariable(name: "data", arg: 2, scope: !1541, file: !1081, line: 189, type: !447)
!1545 = !DILocation(line: 189, column: 68, scope: !1541)
!1546 = !DILocalVariable(name: "params", scope: !1541, file: !1081, line: 191, type: !485)
!1547 = !DILocation(line: 191, column: 8, scope: !1541)
!1548 = !DILocalVariable(name: "nick", scope: !1541, file: !1081, line: 191, type: !485)
!1549 = !DILocation(line: 191, column: 17, scope: !1541)
!1550 = !DILocalVariable(name: "mask", scope: !1541, file: !1081, line: 191, type: !485)
!1551 = !DILocation(line: 191, column: 24, scope: !1541)
!1552 = !DILocation(line: 193, column: 2, scope: !1541)
!1553 = distinct !{!1553, !1552}
!1554 = !DILocation(line: 193, column: 10, scope: !1555)
!1555 = !DILexicalBlockFile(scope: !1556, file: !1081, discriminator: 1)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !1081, line: 193, column: 10)
!1557 = distinct !DILexicalBlock(scope: !1541, file: !1081, line: 193, column: 4)
!1558 = !DILocation(line: 193, column: 15, scope: !1555)
!1559 = !DILocation(line: 193, column: 5, scope: !1560)
!1560 = !DILexicalBlockFile(scope: !1561, file: !1081, discriminator: 2)
!1561 = distinct !DILexicalBlock(scope: !1556, file: !1081, line: 193, column: 3)
!1562 = !DILocation(line: 193, column: 14, scope: !1563)
!1563 = !DILexicalBlockFile(scope: !1564, file: !1081, discriminator: 3)
!1564 = distinct !DILexicalBlock(scope: !1556, file: !1081, line: 193, column: 12)
!1565 = !DILocation(line: 193, column: 99, scope: !1563)
!1566 = !DILocation(line: 193, column: 110, scope: !1567)
!1567 = !DILexicalBlockFile(scope: !1557, file: !1081, discriminator: 4)
!1568 = !DILocation(line: 195, column: 28, scope: !1541)
!1569 = !DILocation(line: 195, column: 11, scope: !1541)
!1570 = !DILocation(line: 195, column: 9, scope: !1541)
!1571 = !DILocation(line: 196, column: 38, scope: !1541)
!1572 = !DILocation(line: 196, column: 39, scope: !1541)
!1573 = !DILocation(line: 196, column: 45, scope: !1541)
!1574 = !DILocation(line: 196, column: 2, scope: !1541)
!1575 = !DILocation(line: 198, column: 9, scope: !1541)
!1576 = !DILocation(line: 198, column: 2, scope: !1541)
!1577 = !DILocation(line: 199, column: 1, scope: !1541)
!1578 = !DILocation(line: 199, column: 1, scope: !1579)
!1579 = !DILexicalBlockFile(scope: !1541, file: !1081, discriminator: 1)
!1580 = distinct !DISubprogram(name: "sig_empty", scope: !1081, file: !1081, line: 641, type: !623, isLocal: true, isDefinition: true, scopeLine: 642, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!1581 = !DILocation(line: 643, column: 1, scope: !1580)
!1582 = distinct !DISubprogram(name: "event_accept_list", scope: !1081, file: !1081, line: 201, type: !1171, isLocal: true, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!1583 = !DILocalVariable(name: "server", arg: 1, scope: !1582, file: !1081, line: 201, type: !466)
!1584 = !DILocation(line: 201, column: 47, scope: !1582)
!1585 = !DILocalVariable(name: "data", arg: 2, scope: !1582, file: !1081, line: 201, type: !447)
!1586 = !DILocation(line: 201, column: 67, scope: !1582)
!1587 = !DILocalVariable(name: "params", scope: !1582, file: !1081, line: 203, type: !485)
!1588 = !DILocation(line: 203, column: 8, scope: !1582)
!1589 = !DILocalVariable(name: "accepted", scope: !1582, file: !1081, line: 203, type: !485)
!1590 = !DILocation(line: 203, column: 17, scope: !1582)
!1591 = !DILocation(line: 205, column: 2, scope: !1582)
!1592 = distinct !{!1592, !1591}
!1593 = !DILocation(line: 205, column: 10, scope: !1594)
!1594 = !DILexicalBlockFile(scope: !1595, file: !1081, discriminator: 1)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !1081, line: 205, column: 10)
!1596 = distinct !DILexicalBlock(scope: !1582, file: !1081, line: 205, column: 4)
!1597 = !DILocation(line: 205, column: 15, scope: !1594)
!1598 = !DILocation(line: 205, column: 5, scope: !1599)
!1599 = !DILexicalBlockFile(scope: !1600, file: !1081, discriminator: 2)
!1600 = distinct !DILexicalBlock(scope: !1595, file: !1081, line: 205, column: 3)
!1601 = !DILocation(line: 205, column: 14, scope: !1602)
!1602 = !DILexicalBlockFile(scope: !1603, file: !1081, discriminator: 3)
!1603 = distinct !DILexicalBlock(scope: !1595, file: !1081, line: 205, column: 12)
!1604 = !DILocation(line: 205, column: 99, scope: !1602)
!1605 = !DILocation(line: 205, column: 110, scope: !1606)
!1606 = !DILexicalBlockFile(scope: !1596, file: !1081, discriminator: 4)
!1607 = !DILocation(line: 206, column: 2, scope: !1582)
!1608 = distinct !{!1608, !1607}
!1609 = !DILocation(line: 206, column: 10, scope: !1610)
!1610 = !DILexicalBlockFile(scope: !1611, file: !1081, discriminator: 1)
!1611 = distinct !DILexicalBlock(scope: !1612, file: !1081, line: 206, column: 10)
!1612 = distinct !DILexicalBlock(scope: !1582, file: !1081, line: 206, column: 4)
!1613 = !DILocation(line: 206, column: 17, scope: !1610)
!1614 = !DILocation(line: 206, column: 5, scope: !1615)
!1615 = !DILexicalBlockFile(scope: !1616, file: !1081, discriminator: 2)
!1616 = distinct !DILexicalBlock(scope: !1611, file: !1081, line: 206, column: 3)
!1617 = !DILocation(line: 206, column: 14, scope: !1618)
!1618 = !DILexicalBlockFile(scope: !1619, file: !1081, discriminator: 3)
!1619 = distinct !DILexicalBlock(scope: !1611, file: !1081, line: 206, column: 12)
!1620 = !DILocation(line: 206, column: 101, scope: !1618)
!1621 = !DILocation(line: 206, column: 112, scope: !1622)
!1622 = !DILexicalBlockFile(scope: !1612, file: !1081, discriminator: 4)
!1623 = !DILocation(line: 208, column: 28, scope: !1582)
!1624 = !DILocation(line: 208, column: 11, scope: !1582)
!1625 = !DILocation(line: 208, column: 9, scope: !1582)
!1626 = !DILocation(line: 210, column: 38, scope: !1582)
!1627 = !DILocation(line: 210, column: 2, scope: !1582)
!1628 = !DILocation(line: 211, column: 9, scope: !1582)
!1629 = !DILocation(line: 211, column: 2, scope: !1582)
!1630 = !DILocation(line: 212, column: 1, scope: !1582)
!1631 = !DILocation(line: 212, column: 1, scope: !1632)
!1632 = !DILexicalBlockFile(scope: !1582, file: !1081, discriminator: 1)
!1633 = distinct !DISubprogram(name: "event_ban_list", scope: !1081, file: !1081, line: 141, type: !1171, isLocal: true, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!1634 = !DILocalVariable(name: "server", arg: 1, scope: !1633, file: !1081, line: 141, type: !466)
!1635 = !DILocation(line: 141, column: 44, scope: !1633)
!1636 = !DILocalVariable(name: "data", arg: 2, scope: !1633, file: !1081, line: 141, type: !447)
!1637 = !DILocation(line: 141, column: 64, scope: !1633)
!1638 = !DILocalVariable(name: "chanrec", scope: !1633, file: !1081, line: 143, type: !449)
!1639 = !DILocation(line: 143, column: 19, scope: !1633)
!1640 = !DILocalVariable(name: "banrec", scope: !1633, file: !1081, line: 144, type: !1641)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64, align: 64)
!1642 = !DIDerivedType(tag: DW_TAG_typedef, name: "BAN_REC", file: !1643, line: 8, baseType: !1644)
!1643 = !DIFile(filename: "../../../src/irc/core/mode-lists.h", directory: "/home/lichi/Desktop/irssi/task1")
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1643, line: 4, size: 192, align: 64, elements: !1645)
!1645 = !{!1646, !1647, !1648}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "ban", scope: !1644, file: !1643, line: 5, baseType: !485, size: 64, align: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "setby", scope: !1644, file: !1643, line: 6, baseType: !485, size: 64, align: 64, offset: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1644, file: !1643, line: 7, baseType: !719, size: 64, align: 64, offset: 128)
!1649 = !DILocation(line: 144, column: 11, scope: !1633)
!1650 = !DILocalVariable(name: "channel", scope: !1633, file: !1081, line: 145, type: !447)
!1651 = !DILocation(line: 145, column: 14, scope: !1633)
!1652 = !DILocalVariable(name: "params", scope: !1633, file: !1081, line: 146, type: !485)
!1653 = !DILocation(line: 146, column: 8, scope: !1633)
!1654 = !DILocalVariable(name: "ban", scope: !1633, file: !1081, line: 146, type: !485)
!1655 = !DILocation(line: 146, column: 17, scope: !1633)
!1656 = !DILocalVariable(name: "setby", scope: !1633, file: !1081, line: 146, type: !485)
!1657 = !DILocation(line: 146, column: 23, scope: !1633)
!1658 = !DILocalVariable(name: "tims", scope: !1633, file: !1081, line: 146, type: !485)
!1659 = !DILocation(line: 146, column: 31, scope: !1633)
!1660 = !DILocalVariable(name: "secs", scope: !1633, file: !1081, line: 147, type: !559)
!1661 = !DILocation(line: 147, column: 7, scope: !1633)
!1662 = !DILocation(line: 149, column: 2, scope: !1633)
!1663 = distinct !{!1663, !1662}
!1664 = !DILocation(line: 149, column: 10, scope: !1665)
!1665 = !DILexicalBlockFile(scope: !1666, file: !1081, discriminator: 1)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !1081, line: 149, column: 10)
!1667 = distinct !DILexicalBlock(scope: !1633, file: !1081, line: 149, column: 4)
!1668 = !DILocation(line: 149, column: 15, scope: !1665)
!1669 = !DILocation(line: 149, column: 5, scope: !1670)
!1670 = !DILexicalBlockFile(scope: !1671, file: !1081, discriminator: 2)
!1671 = distinct !DILexicalBlock(scope: !1666, file: !1081, line: 149, column: 3)
!1672 = !DILocation(line: 149, column: 14, scope: !1673)
!1673 = !DILexicalBlockFile(scope: !1674, file: !1081, discriminator: 3)
!1674 = distinct !DILexicalBlock(scope: !1666, file: !1081, line: 149, column: 12)
!1675 = !DILocation(line: 149, column: 99, scope: !1673)
!1676 = !DILocation(line: 149, column: 110, scope: !1677)
!1677 = !DILexicalBlockFile(scope: !1667, file: !1081, discriminator: 4)
!1678 = !DILocation(line: 151, column: 28, scope: !1633)
!1679 = !DILocation(line: 151, column: 11, scope: !1633)
!1680 = !DILocation(line: 151, column: 9, scope: !1633)
!1681 = !DILocation(line: 153, column: 10, scope: !1633)
!1682 = !DILocation(line: 153, column: 9, scope: !1633)
!1683 = !DILocation(line: 153, column: 15, scope: !1633)
!1684 = !DILocation(line: 153, column: 9, scope: !1685)
!1685 = !DILexicalBlockFile(scope: !1633, file: !1081, discriminator: 1)
!1686 = !DILocation(line: 154, column: 11, scope: !1633)
!1687 = !DILocation(line: 154, column: 28, scope: !1633)
!1688 = !DILocation(line: 154, column: 23, scope: !1685)
!1689 = !DILocation(line: 154, column: 21, scope: !1633)
!1690 = !DILocation(line: 153, column: 9, scope: !1691)
!1691 = !DILexicalBlockFile(scope: !1633, file: !1081, discriminator: 2)
!1692 = !DILocation(line: 153, column: 9, scope: !1693)
!1693 = !DILexicalBlockFile(scope: !1633, file: !1081, discriminator: 3)
!1694 = !DILocation(line: 153, column: 7, scope: !1693)
!1695 = !DILocation(line: 156, column: 147, scope: !1633)
!1696 = !DILocation(line: 156, column: 129, scope: !1633)
!1697 = !DILocation(line: 156, column: 114, scope: !1633)
!1698 = !DILocation(line: 156, column: 25, scope: !1633)
!1699 = !DILocation(line: 156, column: 100, scope: !1685)
!1700 = !DILocation(line: 156, column: 100, scope: !1633)
!1701 = !DILocation(line: 156, column: 75, scope: !1691)
!1702 = !DILocation(line: 156, column: 59, scope: !1633)
!1703 = !DILocation(line: 156, column: 58, scope: !1633)
!1704 = !DILocation(line: 156, column: 33, scope: !1693)
!1705 = !DILocation(line: 156, column: 13, scope: !1633)
!1706 = !DILocation(line: 156, column: 10, scope: !1633)
!1707 = !DILocation(line: 157, column: 11, scope: !1633)
!1708 = !DILocation(line: 157, column: 19, scope: !1633)
!1709 = !DILocation(line: 157, column: 11, scope: !1685)
!1710 = !DILocation(line: 157, column: 48, scope: !1691)
!1711 = !DILocation(line: 157, column: 57, scope: !1691)
!1712 = !DILocation(line: 157, column: 66, scope: !1691)
!1713 = !DILocation(line: 157, column: 35, scope: !1691)
!1714 = !DILocation(line: 157, column: 11, scope: !1691)
!1715 = !DILocation(line: 157, column: 11, scope: !1693)
!1716 = !DILocation(line: 157, column: 9, scope: !1693)
!1717 = !DILocation(line: 159, column: 31, scope: !1633)
!1718 = !DILocation(line: 159, column: 39, scope: !1633)
!1719 = !DILocation(line: 159, column: 12, scope: !1633)
!1720 = !DILocation(line: 159, column: 10, scope: !1633)
!1721 = !DILocation(line: 160, column: 38, scope: !1633)
!1722 = !DILocation(line: 160, column: 46, scope: !1633)
!1723 = !DILocation(line: 160, column: 71, scope: !1633)
!1724 = !DILocation(line: 160, column: 70, scope: !1633)
!1725 = !DILocation(line: 160, column: 77, scope: !1633)
!1726 = !DILocation(line: 160, column: 125, scope: !1633)
!1727 = !DILocation(line: 160, column: 132, scope: !1633)
!1728 = !DILocation(line: 160, column: 125, scope: !1685)
!1729 = !DILocation(line: 160, column: 21, scope: !1691)
!1730 = !DILocation(line: 160, column: 30, scope: !1691)
!1731 = !DILocation(line: 160, column: 39, scope: !1691)
!1732 = !DILocation(line: 160, column: 7, scope: !1691)
!1733 = !DILocation(line: 160, column: 46, scope: !1691)
!1734 = !DILocation(line: 160, column: 125, scope: !1691)
!1735 = !DILocation(line: 160, column: 125, scope: !1693)
!1736 = !DILocation(line: 160, column: 50, scope: !1693)
!1737 = !DILocation(line: 160, column: 59, scope: !1693)
!1738 = !DILocation(line: 160, column: 64, scope: !1693)
!1739 = !DILocation(line: 160, column: 71, scope: !1693)
!1740 = !DILocation(line: 160, column: 2, scope: !1693)
!1741 = !DILocation(line: 165, column: 9, scope: !1633)
!1742 = !DILocation(line: 165, column: 2, scope: !1633)
!1743 = !DILocation(line: 166, column: 1, scope: !1633)
!1744 = !DILocation(line: 166, column: 1, scope: !1685)
!1745 = distinct !DISubprogram(name: "event_eban_list", scope: !1081, file: !1081, line: 168, type: !1171, isLocal: true, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!1746 = !DILocalVariable(name: "server", arg: 1, scope: !1745, file: !1081, line: 168, type: !466)
!1747 = !DILocation(line: 168, column: 45, scope: !1745)
!1748 = !DILocalVariable(name: "data", arg: 2, scope: !1745, file: !1081, line: 168, type: !447)
!1749 = !DILocation(line: 168, column: 65, scope: !1745)
!1750 = !DILocalVariable(name: "channel", scope: !1745, file: !1081, line: 170, type: !447)
!1751 = !DILocation(line: 170, column: 14, scope: !1745)
!1752 = !DILocalVariable(name: "params", scope: !1745, file: !1081, line: 171, type: !485)
!1753 = !DILocation(line: 171, column: 8, scope: !1745)
!1754 = !DILocalVariable(name: "ban", scope: !1745, file: !1081, line: 171, type: !485)
!1755 = !DILocation(line: 171, column: 17, scope: !1745)
!1756 = !DILocalVariable(name: "setby", scope: !1745, file: !1081, line: 171, type: !485)
!1757 = !DILocation(line: 171, column: 23, scope: !1745)
!1758 = !DILocalVariable(name: "tims", scope: !1745, file: !1081, line: 171, type: !485)
!1759 = !DILocation(line: 171, column: 31, scope: !1745)
!1760 = !DILocalVariable(name: "secs", scope: !1745, file: !1081, line: 172, type: !559)
!1761 = !DILocation(line: 172, column: 7, scope: !1745)
!1762 = !DILocation(line: 174, column: 2, scope: !1745)
!1763 = distinct !{!1763, !1762}
!1764 = !DILocation(line: 174, column: 10, scope: !1765)
!1765 = !DILexicalBlockFile(scope: !1766, file: !1081, discriminator: 1)
!1766 = distinct !DILexicalBlock(scope: !1767, file: !1081, line: 174, column: 10)
!1767 = distinct !DILexicalBlock(scope: !1745, file: !1081, line: 174, column: 4)
!1768 = !DILocation(line: 174, column: 15, scope: !1765)
!1769 = !DILocation(line: 174, column: 5, scope: !1770)
!1770 = !DILexicalBlockFile(scope: !1771, file: !1081, discriminator: 2)
!1771 = distinct !DILexicalBlock(scope: !1766, file: !1081, line: 174, column: 3)
!1772 = !DILocation(line: 174, column: 14, scope: !1773)
!1773 = !DILexicalBlockFile(scope: !1774, file: !1081, discriminator: 3)
!1774 = distinct !DILexicalBlock(scope: !1766, file: !1081, line: 174, column: 12)
!1775 = !DILocation(line: 174, column: 99, scope: !1773)
!1776 = !DILocation(line: 174, column: 110, scope: !1777)
!1777 = !DILexicalBlockFile(scope: !1767, file: !1081, discriminator: 4)
!1778 = !DILocation(line: 176, column: 28, scope: !1745)
!1779 = !DILocation(line: 176, column: 11, scope: !1745)
!1780 = !DILocation(line: 176, column: 9, scope: !1745)
!1781 = !DILocation(line: 178, column: 10, scope: !1745)
!1782 = !DILocation(line: 178, column: 9, scope: !1745)
!1783 = !DILocation(line: 178, column: 15, scope: !1745)
!1784 = !DILocation(line: 178, column: 9, scope: !1785)
!1785 = !DILexicalBlockFile(scope: !1745, file: !1081, discriminator: 1)
!1786 = !DILocation(line: 179, column: 11, scope: !1745)
!1787 = !DILocation(line: 179, column: 28, scope: !1745)
!1788 = !DILocation(line: 179, column: 23, scope: !1785)
!1789 = !DILocation(line: 179, column: 21, scope: !1745)
!1790 = !DILocation(line: 178, column: 9, scope: !1791)
!1791 = !DILexicalBlockFile(scope: !1745, file: !1081, discriminator: 2)
!1792 = !DILocation(line: 178, column: 9, scope: !1793)
!1793 = !DILexicalBlockFile(scope: !1745, file: !1081, discriminator: 3)
!1794 = !DILocation(line: 178, column: 7, scope: !1793)
!1795 = !DILocation(line: 181, column: 31, scope: !1745)
!1796 = !DILocation(line: 181, column: 39, scope: !1745)
!1797 = !DILocation(line: 181, column: 12, scope: !1745)
!1798 = !DILocation(line: 181, column: 10, scope: !1745)
!1799 = !DILocation(line: 182, column: 38, scope: !1745)
!1800 = !DILocation(line: 182, column: 46, scope: !1745)
!1801 = !DILocation(line: 182, column: 71, scope: !1745)
!1802 = !DILocation(line: 182, column: 70, scope: !1745)
!1803 = !DILocation(line: 182, column: 77, scope: !1745)
!1804 = !DILocation(line: 182, column: 127, scope: !1745)
!1805 = !DILocation(line: 182, column: 136, scope: !1745)
!1806 = !DILocation(line: 182, column: 141, scope: !1745)
!1807 = !DILocation(line: 182, column: 148, scope: !1745)
!1808 = !DILocation(line: 182, column: 2, scope: !1745)
!1809 = !DILocation(line: 186, column: 9, scope: !1745)
!1810 = !DILocation(line: 186, column: 2, scope: !1745)
!1811 = !DILocation(line: 187, column: 1, scope: !1745)
!1812 = !DILocation(line: 187, column: 1, scope: !1785)
!1813 = distinct !DISubprogram(name: "event_invite_list", scope: !1081, file: !1081, line: 214, type: !1171, isLocal: true, isDefinition: true, scopeLine: 215, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!1814 = !DILocalVariable(name: "server", arg: 1, scope: !1813, file: !1081, line: 214, type: !466)
!1815 = !DILocation(line: 214, column: 47, scope: !1813)
!1816 = !DILocalVariable(name: "data", arg: 2, scope: !1813, file: !1081, line: 214, type: !447)
!1817 = !DILocation(line: 214, column: 67, scope: !1813)
!1818 = !DILocalVariable(name: "channel", scope: !1813, file: !1081, line: 216, type: !447)
!1819 = !DILocation(line: 216, column: 14, scope: !1813)
!1820 = !DILocalVariable(name: "params", scope: !1813, file: !1081, line: 217, type: !485)
!1821 = !DILocation(line: 217, column: 8, scope: !1813)
!1822 = !DILocalVariable(name: "invite", scope: !1813, file: !1081, line: 217, type: !485)
!1823 = !DILocation(line: 217, column: 17, scope: !1813)
!1824 = !DILocalVariable(name: "setby", scope: !1813, file: !1081, line: 217, type: !485)
!1825 = !DILocation(line: 217, column: 26, scope: !1813)
!1826 = !DILocalVariable(name: "tims", scope: !1813, file: !1081, line: 217, type: !485)
!1827 = !DILocation(line: 217, column: 34, scope: !1813)
!1828 = !DILocalVariable(name: "secs", scope: !1813, file: !1081, line: 218, type: !559)
!1829 = !DILocation(line: 218, column: 7, scope: !1813)
!1830 = !DILocation(line: 220, column: 2, scope: !1813)
!1831 = distinct !{!1831, !1830}
!1832 = !DILocation(line: 220, column: 10, scope: !1833)
!1833 = !DILexicalBlockFile(scope: !1834, file: !1081, discriminator: 1)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !1081, line: 220, column: 10)
!1835 = distinct !DILexicalBlock(scope: !1813, file: !1081, line: 220, column: 4)
!1836 = !DILocation(line: 220, column: 15, scope: !1833)
!1837 = !DILocation(line: 220, column: 5, scope: !1838)
!1838 = !DILexicalBlockFile(scope: !1839, file: !1081, discriminator: 2)
!1839 = distinct !DILexicalBlock(scope: !1834, file: !1081, line: 220, column: 3)
!1840 = !DILocation(line: 220, column: 14, scope: !1841)
!1841 = !DILexicalBlockFile(scope: !1842, file: !1081, discriminator: 3)
!1842 = distinct !DILexicalBlock(scope: !1834, file: !1081, line: 220, column: 12)
!1843 = !DILocation(line: 220, column: 99, scope: !1841)
!1844 = !DILocation(line: 220, column: 110, scope: !1845)
!1845 = !DILexicalBlockFile(scope: !1835, file: !1081, discriminator: 4)
!1846 = !DILocation(line: 222, column: 28, scope: !1813)
!1847 = !DILocation(line: 222, column: 11, scope: !1813)
!1848 = !DILocation(line: 222, column: 9, scope: !1813)
!1849 = !DILocation(line: 224, column: 10, scope: !1813)
!1850 = !DILocation(line: 224, column: 9, scope: !1813)
!1851 = !DILocation(line: 224, column: 15, scope: !1813)
!1852 = !DILocation(line: 224, column: 9, scope: !1853)
!1853 = !DILexicalBlockFile(scope: !1813, file: !1081, discriminator: 1)
!1854 = !DILocation(line: 225, column: 11, scope: !1813)
!1855 = !DILocation(line: 225, column: 28, scope: !1813)
!1856 = !DILocation(line: 225, column: 23, scope: !1853)
!1857 = !DILocation(line: 225, column: 21, scope: !1813)
!1858 = !DILocation(line: 224, column: 9, scope: !1859)
!1859 = !DILexicalBlockFile(scope: !1813, file: !1081, discriminator: 2)
!1860 = !DILocation(line: 224, column: 9, scope: !1861)
!1861 = !DILexicalBlockFile(scope: !1813, file: !1081, discriminator: 3)
!1862 = !DILocation(line: 224, column: 7, scope: !1861)
!1863 = !DILocation(line: 227, column: 31, scope: !1813)
!1864 = !DILocation(line: 227, column: 39, scope: !1813)
!1865 = !DILocation(line: 227, column: 12, scope: !1813)
!1866 = !DILocation(line: 227, column: 10, scope: !1813)
!1867 = !DILocation(line: 228, column: 38, scope: !1813)
!1868 = !DILocation(line: 228, column: 46, scope: !1813)
!1869 = !DILocation(line: 228, column: 71, scope: !1813)
!1870 = !DILocation(line: 228, column: 70, scope: !1813)
!1871 = !DILocation(line: 228, column: 77, scope: !1813)
!1872 = !DILocation(line: 228, column: 131, scope: !1813)
!1873 = !DILocation(line: 228, column: 140, scope: !1813)
!1874 = !DILocation(line: 228, column: 148, scope: !1813)
!1875 = !DILocation(line: 228, column: 155, scope: !1813)
!1876 = !DILocation(line: 228, column: 2, scope: !1813)
!1877 = !DILocation(line: 231, column: 9, scope: !1813)
!1878 = !DILocation(line: 231, column: 2, scope: !1813)
!1879 = !DILocation(line: 232, column: 1, scope: !1813)
!1880 = !DILocation(line: 232, column: 1, scope: !1853)
!1881 = distinct !DISubprogram(name: "event_nick_in_use", scope: !1081, file: !1081, line: 234, type: !1171, isLocal: true, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!1882 = !DILocalVariable(name: "server", arg: 1, scope: !1881, file: !1081, line: 234, type: !466)
!1883 = !DILocation(line: 234, column: 47, scope: !1881)
!1884 = !DILocalVariable(name: "data", arg: 2, scope: !1881, file: !1081, line: 234, type: !447)
!1885 = !DILocation(line: 234, column: 67, scope: !1881)
!1886 = !DILocalVariable(name: "params", scope: !1881, file: !1081, line: 236, type: !485)
!1887 = !DILocation(line: 236, column: 8, scope: !1881)
!1888 = !DILocalVariable(name: "nick", scope: !1881, file: !1081, line: 236, type: !485)
!1889 = !DILocation(line: 236, column: 17, scope: !1881)
!1890 = !DILocation(line: 238, column: 2, scope: !1881)
!1891 = distinct !{!1891, !1890}
!1892 = !DILocation(line: 238, column: 10, scope: !1893)
!1893 = !DILexicalBlockFile(scope: !1894, file: !1081, discriminator: 1)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !1081, line: 238, column: 10)
!1895 = distinct !DILexicalBlock(scope: !1881, file: !1081, line: 238, column: 4)
!1896 = !DILocation(line: 238, column: 15, scope: !1893)
!1897 = !DILocation(line: 238, column: 5, scope: !1898)
!1898 = !DILexicalBlockFile(scope: !1899, file: !1081, discriminator: 2)
!1899 = distinct !DILexicalBlock(scope: !1894, file: !1081, line: 238, column: 3)
!1900 = !DILocation(line: 238, column: 14, scope: !1901)
!1901 = !DILexicalBlockFile(scope: !1902, file: !1081, discriminator: 3)
!1902 = distinct !DILexicalBlock(scope: !1894, file: !1081, line: 238, column: 12)
!1903 = !DILocation(line: 238, column: 99, scope: !1901)
!1904 = !DILocation(line: 238, column: 110, scope: !1905)
!1905 = !DILexicalBlockFile(scope: !1895, file: !1081, discriminator: 4)
!1906 = !DILocation(line: 240, column: 28, scope: !1881)
!1907 = !DILocation(line: 240, column: 11, scope: !1881)
!1908 = !DILocation(line: 240, column: 9, scope: !1881)
!1909 = !DILocation(line: 241, column: 6, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1881, file: !1081, line: 241, column: 6)
!1911 = !DILocation(line: 241, column: 14, scope: !1910)
!1912 = !DILocation(line: 241, column: 6, scope: !1881)
!1913 = !DILocation(line: 242, column: 39, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1910, file: !1081, line: 241, column: 25)
!1915 = !DILocation(line: 242, column: 3, scope: !1914)
!1916 = !DILocation(line: 244, column: 2, scope: !1914)
!1917 = !DILocation(line: 246, column: 9, scope: !1881)
!1918 = !DILocation(line: 246, column: 2, scope: !1881)
!1919 = !DILocation(line: 247, column: 1, scope: !1881)
!1920 = !DILocation(line: 247, column: 1, scope: !1921)
!1921 = !DILexicalBlockFile(scope: !1881, file: !1081, discriminator: 1)
!1922 = distinct !DISubprogram(name: "event_topic_get", scope: !1081, file: !1081, line: 249, type: !1171, isLocal: true, isDefinition: true, scopeLine: 250, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!1923 = !DILocalVariable(name: "server", arg: 1, scope: !1922, file: !1081, line: 249, type: !466)
!1924 = !DILocation(line: 249, column: 45, scope: !1922)
!1925 = !DILocalVariable(name: "data", arg: 2, scope: !1922, file: !1081, line: 249, type: !447)
!1926 = !DILocation(line: 249, column: 65, scope: !1922)
!1927 = !DILocalVariable(name: "channel", scope: !1922, file: !1081, line: 251, type: !447)
!1928 = !DILocation(line: 251, column: 14, scope: !1922)
!1929 = !DILocalVariable(name: "params", scope: !1922, file: !1081, line: 252, type: !485)
!1930 = !DILocation(line: 252, column: 8, scope: !1922)
!1931 = !DILocalVariable(name: "topic", scope: !1922, file: !1081, line: 252, type: !485)
!1932 = !DILocation(line: 252, column: 17, scope: !1922)
!1933 = !DILocalVariable(name: "recoded", scope: !1922, file: !1081, line: 252, type: !485)
!1934 = !DILocation(line: 252, column: 25, scope: !1922)
!1935 = !DILocation(line: 254, column: 2, scope: !1922)
!1936 = distinct !{!1936, !1935}
!1937 = !DILocation(line: 254, column: 10, scope: !1938)
!1938 = !DILexicalBlockFile(scope: !1939, file: !1081, discriminator: 1)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !1081, line: 254, column: 10)
!1940 = distinct !DILexicalBlock(scope: !1922, file: !1081, line: 254, column: 4)
!1941 = !DILocation(line: 254, column: 15, scope: !1938)
!1942 = !DILocation(line: 254, column: 5, scope: !1943)
!1943 = !DILexicalBlockFile(scope: !1944, file: !1081, discriminator: 2)
!1944 = distinct !DILexicalBlock(scope: !1939, file: !1081, line: 254, column: 3)
!1945 = !DILocation(line: 254, column: 14, scope: !1946)
!1946 = !DILexicalBlockFile(scope: !1947, file: !1081, discriminator: 3)
!1947 = distinct !DILexicalBlock(scope: !1939, file: !1081, line: 254, column: 12)
!1948 = !DILocation(line: 254, column: 99, scope: !1946)
!1949 = !DILocation(line: 254, column: 110, scope: !1950)
!1950 = !DILexicalBlockFile(scope: !1940, file: !1081, discriminator: 4)
!1951 = !DILocation(line: 256, column: 28, scope: !1922)
!1952 = !DILocation(line: 256, column: 11, scope: !1922)
!1953 = !DILocation(line: 256, column: 9, scope: !1922)
!1954 = !DILocation(line: 257, column: 56, scope: !1922)
!1955 = !DILocation(line: 257, column: 38, scope: !1922)
!1956 = !DILocation(line: 257, column: 23, scope: !1922)
!1957 = !DILocation(line: 257, column: 35, scope: !1922)
!1958 = !DILocation(line: 257, column: 42, scope: !1922)
!1959 = !DILocation(line: 257, column: 12, scope: !1960)
!1960 = !DILexicalBlockFile(scope: !1922, file: !1081, discriminator: 1)
!1961 = !DILocation(line: 257, column: 10, scope: !1922)
!1962 = !DILocation(line: 258, column: 31, scope: !1922)
!1963 = !DILocation(line: 258, column: 39, scope: !1922)
!1964 = !DILocation(line: 258, column: 12, scope: !1922)
!1965 = !DILocation(line: 258, column: 10, scope: !1922)
!1966 = !DILocation(line: 259, column: 38, scope: !1922)
!1967 = !DILocation(line: 259, column: 46, scope: !1922)
!1968 = !DILocation(line: 259, column: 84, scope: !1922)
!1969 = !DILocation(line: 259, column: 93, scope: !1922)
!1970 = !DILocation(line: 259, column: 2, scope: !1922)
!1971 = !DILocation(line: 261, column: 9, scope: !1922)
!1972 = !DILocation(line: 261, column: 2, scope: !1922)
!1973 = !DILocation(line: 262, column: 9, scope: !1922)
!1974 = !DILocation(line: 262, column: 2, scope: !1922)
!1975 = !DILocation(line: 263, column: 1, scope: !1922)
!1976 = !DILocation(line: 263, column: 1, scope: !1960)
!1977 = distinct !DISubprogram(name: "event_topic_info", scope: !1081, file: !1081, line: 265, type: !1171, isLocal: true, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!1978 = !DILocalVariable(name: "server", arg: 1, scope: !1977, file: !1081, line: 265, type: !466)
!1979 = !DILocation(line: 265, column: 46, scope: !1977)
!1980 = !DILocalVariable(name: "data", arg: 2, scope: !1977, file: !1081, line: 265, type: !447)
!1981 = !DILocation(line: 265, column: 66, scope: !1977)
!1982 = !DILocalVariable(name: "channel", scope: !1977, file: !1081, line: 267, type: !447)
!1983 = !DILocation(line: 267, column: 14, scope: !1977)
!1984 = !DILocalVariable(name: "params", scope: !1977, file: !1081, line: 268, type: !485)
!1985 = !DILocation(line: 268, column: 8, scope: !1977)
!1986 = !DILocalVariable(name: "timestr", scope: !1977, file: !1081, line: 268, type: !485)
!1987 = !DILocation(line: 268, column: 17, scope: !1977)
!1988 = !DILocalVariable(name: "bynick", scope: !1977, file: !1081, line: 268, type: !485)
!1989 = !DILocation(line: 268, column: 27, scope: !1977)
!1990 = !DILocalVariable(name: "byhost", scope: !1977, file: !1081, line: 268, type: !485)
!1991 = !DILocation(line: 268, column: 36, scope: !1977)
!1992 = !DILocalVariable(name: "topictime", scope: !1977, file: !1081, line: 268, type: !485)
!1993 = !DILocation(line: 268, column: 45, scope: !1977)
!1994 = !DILocation(line: 270, column: 2, scope: !1977)
!1995 = distinct !{!1995, !1994}
!1996 = !DILocation(line: 270, column: 10, scope: !1997)
!1997 = !DILexicalBlockFile(scope: !1998, file: !1081, discriminator: 1)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !1081, line: 270, column: 10)
!1999 = distinct !DILexicalBlock(scope: !1977, file: !1081, line: 270, column: 4)
!2000 = !DILocation(line: 270, column: 15, scope: !1997)
!2001 = !DILocation(line: 270, column: 5, scope: !2002)
!2002 = !DILexicalBlockFile(scope: !2003, file: !1081, discriminator: 2)
!2003 = distinct !DILexicalBlock(scope: !1998, file: !1081, line: 270, column: 3)
!2004 = !DILocation(line: 270, column: 14, scope: !2005)
!2005 = !DILexicalBlockFile(scope: !2006, file: !1081, discriminator: 3)
!2006 = distinct !DILexicalBlock(scope: !1998, file: !1081, line: 270, column: 12)
!2007 = !DILocation(line: 270, column: 99, scope: !2005)
!2008 = !DILocation(line: 270, column: 110, scope: !2009)
!2009 = !DILexicalBlockFile(scope: !1999, file: !1081, discriminator: 4)
!2010 = !DILocation(line: 272, column: 28, scope: !1977)
!2011 = !DILocation(line: 272, column: 11, scope: !1977)
!2012 = !DILocation(line: 272, column: 9, scope: !1977)
!2013 = !DILocation(line: 275, column: 44, scope: !1977)
!2014 = !DILocation(line: 275, column: 39, scope: !1977)
!2015 = !DILocation(line: 275, column: 19, scope: !2016)
!2016 = !DILexicalBlockFile(scope: !1977, file: !1081, discriminator: 1)
!2017 = !DILocation(line: 275, column: 17, scope: !1977)
!2018 = !DILocation(line: 277, column: 18, scope: !1977)
!2019 = !DILocation(line: 277, column: 11, scope: !1977)
!2020 = !DILocation(line: 277, column: 9, scope: !1977)
!2021 = !DILocation(line: 278, column: 6, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !1977, file: !1081, line: 278, column: 6)
!2023 = !DILocation(line: 278, column: 13, scope: !2022)
!2024 = !DILocation(line: 278, column: 6, scope: !1977)
!2025 = !DILocation(line: 279, column: 10, scope: !2022)
!2026 = !DILocation(line: 279, column: 13, scope: !2022)
!2027 = !DILocation(line: 279, column: 3, scope: !2022)
!2028 = !DILocation(line: 281, column: 31, scope: !1977)
!2029 = !DILocation(line: 281, column: 39, scope: !1977)
!2030 = !DILocation(line: 281, column: 12, scope: !1977)
!2031 = !DILocation(line: 281, column: 10, scope: !1977)
!2032 = !DILocation(line: 282, column: 38, scope: !1977)
!2033 = !DILocation(line: 282, column: 46, scope: !1977)
!2034 = !DILocation(line: 282, column: 89, scope: !1977)
!2035 = !DILocation(line: 282, column: 97, scope: !1977)
!2036 = !DILocation(line: 282, column: 106, scope: !1977)
!2037 = !DILocation(line: 282, column: 113, scope: !1977)
!2038 = !DILocation(line: 282, column: 106, scope: !2016)
!2039 = !DILocation(line: 282, column: 8, scope: !2040)
!2040 = !DILexicalBlockFile(scope: !1977, file: !1081, discriminator: 2)
!2041 = !DILocation(line: 282, column: 106, scope: !2040)
!2042 = !DILocation(line: 282, column: 106, scope: !2043)
!2043 = !DILexicalBlockFile(scope: !1977, file: !1081, discriminator: 3)
!2044 = !DILocation(line: 282, column: 2, scope: !2043)
!2045 = !DILocation(line: 284, column: 9, scope: !1977)
!2046 = !DILocation(line: 284, column: 2, scope: !1977)
!2047 = !DILocation(line: 285, column: 9, scope: !1977)
!2048 = !DILocation(line: 285, column: 2, scope: !1977)
!2049 = !DILocation(line: 286, column: 1, scope: !1977)
!2050 = !DILocation(line: 286, column: 1, scope: !2016)
!2051 = distinct !DISubprogram(name: "event_channel_mode", scope: !1081, file: !1081, line: 288, type: !1171, isLocal: true, isDefinition: true, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!2052 = !DILocalVariable(name: "server", arg: 1, scope: !2051, file: !1081, line: 288, type: !466)
!2053 = !DILocation(line: 288, column: 48, scope: !2051)
!2054 = !DILocalVariable(name: "data", arg: 2, scope: !2051, file: !1081, line: 288, type: !447)
!2055 = !DILocation(line: 288, column: 68, scope: !2051)
!2056 = !DILocalVariable(name: "channel", scope: !2051, file: !1081, line: 290, type: !447)
!2057 = !DILocation(line: 290, column: 14, scope: !2051)
!2058 = !DILocalVariable(name: "params", scope: !2051, file: !1081, line: 291, type: !485)
!2059 = !DILocation(line: 291, column: 8, scope: !2051)
!2060 = !DILocalVariable(name: "mode", scope: !2051, file: !1081, line: 291, type: !485)
!2061 = !DILocation(line: 291, column: 17, scope: !2051)
!2062 = !DILocation(line: 293, column: 2, scope: !2051)
!2063 = distinct !{!2063, !2062}
!2064 = !DILocation(line: 293, column: 10, scope: !2065)
!2065 = !DILexicalBlockFile(scope: !2066, file: !1081, discriminator: 1)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !1081, line: 293, column: 10)
!2067 = distinct !DILexicalBlock(scope: !2051, file: !1081, line: 293, column: 4)
!2068 = !DILocation(line: 293, column: 15, scope: !2065)
!2069 = !DILocation(line: 293, column: 5, scope: !2070)
!2070 = !DILexicalBlockFile(scope: !2071, file: !1081, discriminator: 2)
!2071 = distinct !DILexicalBlock(scope: !2066, file: !1081, line: 293, column: 3)
!2072 = !DILocation(line: 293, column: 14, scope: !2073)
!2073 = !DILexicalBlockFile(scope: !2074, file: !1081, discriminator: 3)
!2074 = distinct !DILexicalBlock(scope: !2066, file: !1081, line: 293, column: 12)
!2075 = !DILocation(line: 293, column: 99, scope: !2073)
!2076 = !DILocation(line: 293, column: 110, scope: !2077)
!2077 = !DILexicalBlockFile(scope: !2067, file: !1081, discriminator: 4)
!2078 = !DILocation(line: 295, column: 28, scope: !2051)
!2079 = !DILocation(line: 295, column: 11, scope: !2051)
!2080 = !DILocation(line: 295, column: 9, scope: !2051)
!2081 = !DILocation(line: 297, column: 31, scope: !2051)
!2082 = !DILocation(line: 297, column: 39, scope: !2051)
!2083 = !DILocation(line: 297, column: 12, scope: !2051)
!2084 = !DILocation(line: 297, column: 10, scope: !2051)
!2085 = !DILocation(line: 298, column: 38, scope: !2051)
!2086 = !DILocation(line: 298, column: 46, scope: !2051)
!2087 = !DILocation(line: 298, column: 91, scope: !2051)
!2088 = !DILocation(line: 298, column: 111, scope: !2051)
!2089 = !DILocation(line: 298, column: 100, scope: !2051)
!2090 = !DILocation(line: 298, column: 2, scope: !2091)
!2091 = !DILexicalBlockFile(scope: !2051, file: !1081, discriminator: 1)
!2092 = !DILocation(line: 300, column: 9, scope: !2051)
!2093 = !DILocation(line: 300, column: 2, scope: !2051)
!2094 = !DILocation(line: 301, column: 1, scope: !2051)
!2095 = !DILocation(line: 301, column: 1, scope: !2091)
!2096 = distinct !DISubprogram(name: "event_channel_created", scope: !1081, file: !1081, line: 303, type: !1171, isLocal: true, isDefinition: true, scopeLine: 304, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!2097 = !DILocalVariable(name: "server", arg: 1, scope: !2096, file: !1081, line: 303, type: !466)
!2098 = !DILocation(line: 303, column: 51, scope: !2096)
!2099 = !DILocalVariable(name: "data", arg: 2, scope: !2096, file: !1081, line: 303, type: !447)
!2100 = !DILocation(line: 303, column: 71, scope: !2096)
!2101 = !DILocalVariable(name: "channel", scope: !2096, file: !1081, line: 305, type: !447)
!2102 = !DILocation(line: 305, column: 14, scope: !2096)
!2103 = !DILocalVariable(name: "params", scope: !2096, file: !1081, line: 306, type: !485)
!2104 = !DILocation(line: 306, column: 8, scope: !2096)
!2105 = !DILocalVariable(name: "createtime", scope: !2096, file: !1081, line: 306, type: !485)
!2106 = !DILocation(line: 306, column: 17, scope: !2096)
!2107 = !DILocalVariable(name: "timestr", scope: !2096, file: !1081, line: 306, type: !485)
!2108 = !DILocation(line: 306, column: 30, scope: !2096)
!2109 = !DILocation(line: 308, column: 2, scope: !2096)
!2110 = distinct !{!2110, !2109}
!2111 = !DILocation(line: 308, column: 10, scope: !2112)
!2112 = !DILexicalBlockFile(scope: !2113, file: !1081, discriminator: 1)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !1081, line: 308, column: 10)
!2114 = distinct !DILexicalBlock(scope: !2096, file: !1081, line: 308, column: 4)
!2115 = !DILocation(line: 308, column: 15, scope: !2112)
!2116 = !DILocation(line: 308, column: 5, scope: !2117)
!2117 = !DILexicalBlockFile(scope: !2118, file: !1081, discriminator: 2)
!2118 = distinct !DILexicalBlock(scope: !2113, file: !1081, line: 308, column: 3)
!2119 = !DILocation(line: 308, column: 14, scope: !2120)
!2120 = !DILexicalBlockFile(scope: !2121, file: !1081, discriminator: 3)
!2121 = distinct !DILexicalBlock(scope: !2113, file: !1081, line: 308, column: 12)
!2122 = !DILocation(line: 308, column: 99, scope: !2120)
!2123 = !DILocation(line: 308, column: 110, scope: !2124)
!2124 = !DILexicalBlockFile(scope: !2114, file: !1081, discriminator: 4)
!2125 = !DILocation(line: 310, column: 28, scope: !2096)
!2126 = !DILocation(line: 310, column: 11, scope: !2096)
!2127 = !DILocation(line: 310, column: 9, scope: !2096)
!2128 = !DILocation(line: 312, column: 44, scope: !2096)
!2129 = !DILocation(line: 312, column: 39, scope: !2096)
!2130 = !DILocation(line: 312, column: 19, scope: !2131)
!2131 = !DILexicalBlockFile(scope: !2096, file: !1081, discriminator: 1)
!2132 = !DILocation(line: 312, column: 17, scope: !2096)
!2133 = !DILocation(line: 313, column: 31, scope: !2096)
!2134 = !DILocation(line: 313, column: 39, scope: !2096)
!2135 = !DILocation(line: 313, column: 12, scope: !2096)
!2136 = !DILocation(line: 313, column: 10, scope: !2096)
!2137 = !DILocation(line: 314, column: 38, scope: !2096)
!2138 = !DILocation(line: 314, column: 46, scope: !2096)
!2139 = !DILocation(line: 314, column: 94, scope: !2096)
!2140 = !DILocation(line: 314, column: 103, scope: !2096)
!2141 = !DILocation(line: 314, column: 2, scope: !2096)
!2142 = !DILocation(line: 316, column: 9, scope: !2096)
!2143 = !DILocation(line: 316, column: 2, scope: !2096)
!2144 = !DILocation(line: 317, column: 9, scope: !2096)
!2145 = !DILocation(line: 317, column: 2, scope: !2096)
!2146 = !DILocation(line: 318, column: 1, scope: !2096)
!2147 = !DILocation(line: 318, column: 1, scope: !2131)
!2148 = distinct !DISubprogram(name: "event_nowaway", scope: !1081, file: !1081, line: 320, type: !1171, isLocal: true, isDefinition: true, scopeLine: 321, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!2149 = !DILocalVariable(name: "server", arg: 1, scope: !2148, file: !1081, line: 320, type: !466)
!2150 = !DILocation(line: 320, column: 43, scope: !2148)
!2151 = !DILocalVariable(name: "data", arg: 2, scope: !2148, file: !1081, line: 320, type: !447)
!2152 = !DILocation(line: 320, column: 63, scope: !2148)
!2153 = !DILocation(line: 322, column: 38, scope: !2148)
!2154 = !DILocation(line: 322, column: 2, scope: !2148)
!2155 = !DILocation(line: 323, column: 1, scope: !2148)
!2156 = distinct !DISubprogram(name: "event_unaway", scope: !1081, file: !1081, line: 325, type: !1171, isLocal: true, isDefinition: true, scopeLine: 326, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!2157 = !DILocalVariable(name: "server", arg: 1, scope: !2156, file: !1081, line: 325, type: !466)
!2158 = !DILocation(line: 325, column: 42, scope: !2156)
!2159 = !DILocalVariable(name: "data", arg: 2, scope: !2156, file: !1081, line: 325, type: !447)
!2160 = !DILocation(line: 325, column: 62, scope: !2156)
!2161 = !DILocation(line: 327, column: 38, scope: !2156)
!2162 = !DILocation(line: 327, column: 2, scope: !2156)
!2163 = !DILocation(line: 328, column: 1, scope: !2156)
!2164 = distinct !DISubprogram(name: "event_away", scope: !1081, file: !1081, line: 330, type: !1171, isLocal: true, isDefinition: true, scopeLine: 331, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!2165 = !DILocalVariable(name: "server", arg: 1, scope: !2164, file: !1081, line: 330, type: !466)
!2166 = !DILocation(line: 330, column: 40, scope: !2164)
!2167 = !DILocalVariable(name: "data", arg: 2, scope: !2164, file: !1081, line: 330, type: !447)
!2168 = !DILocation(line: 330, column: 60, scope: !2164)
!2169 = !DILocalVariable(name: "params", scope: !2164, file: !1081, line: 332, type: !485)
!2170 = !DILocation(line: 332, column: 8, scope: !2164)
!2171 = !DILocalVariable(name: "nick", scope: !2164, file: !1081, line: 332, type: !485)
!2172 = !DILocation(line: 332, column: 17, scope: !2164)
!2173 = !DILocalVariable(name: "awaymsg", scope: !2164, file: !1081, line: 332, type: !485)
!2174 = !DILocation(line: 332, column: 24, scope: !2164)
!2175 = !DILocalVariable(name: "recoded", scope: !2164, file: !1081, line: 332, type: !485)
!2176 = !DILocation(line: 332, column: 34, scope: !2164)
!2177 = !DILocation(line: 334, column: 2, scope: !2164)
!2178 = distinct !{!2178, !2177}
!2179 = !DILocation(line: 334, column: 10, scope: !2180)
!2180 = !DILexicalBlockFile(scope: !2181, file: !1081, discriminator: 1)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !1081, line: 334, column: 10)
!2182 = distinct !DILexicalBlock(scope: !2164, file: !1081, line: 334, column: 4)
!2183 = !DILocation(line: 334, column: 15, scope: !2180)
!2184 = !DILocation(line: 334, column: 5, scope: !2185)
!2185 = !DILexicalBlockFile(scope: !2186, file: !1081, discriminator: 2)
!2186 = distinct !DILexicalBlock(scope: !2181, file: !1081, line: 334, column: 3)
!2187 = !DILocation(line: 334, column: 14, scope: !2188)
!2188 = !DILexicalBlockFile(scope: !2189, file: !1081, discriminator: 3)
!2189 = distinct !DILexicalBlock(scope: !2181, file: !1081, line: 334, column: 12)
!2190 = !DILocation(line: 334, column: 99, scope: !2188)
!2191 = !DILocation(line: 334, column: 110, scope: !2192)
!2192 = !DILexicalBlockFile(scope: !2182, file: !1081, discriminator: 4)
!2193 = !DILocation(line: 336, column: 28, scope: !2164)
!2194 = !DILocation(line: 336, column: 11, scope: !2164)
!2195 = !DILocation(line: 336, column: 9, scope: !2164)
!2196 = !DILocation(line: 337, column: 56, scope: !2164)
!2197 = !DILocation(line: 337, column: 38, scope: !2164)
!2198 = !DILocation(line: 337, column: 23, scope: !2164)
!2199 = !DILocation(line: 337, column: 35, scope: !2164)
!2200 = !DILocation(line: 337, column: 44, scope: !2164)
!2201 = !DILocation(line: 337, column: 12, scope: !2202)
!2202 = !DILexicalBlockFile(scope: !2164, file: !1081, discriminator: 1)
!2203 = !DILocation(line: 337, column: 10, scope: !2164)
!2204 = !DILocation(line: 338, column: 7, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2164, file: !1081, line: 338, column: 6)
!2206 = !DILocation(line: 338, column: 43, scope: !2205)
!2207 = !DILocation(line: 339, column: 6, scope: !2205)
!2208 = !DILocation(line: 339, column: 21, scope: !2205)
!2209 = !DILocation(line: 339, column: 28, scope: !2205)
!2210 = !DILocation(line: 340, column: 25, scope: !2205)
!2211 = !DILocation(line: 340, column: 41, scope: !2205)
!2212 = !DILocation(line: 340, column: 6, scope: !2205)
!2213 = !DILocation(line: 340, column: 47, scope: !2205)
!2214 = !DILocation(line: 340, column: 52, scope: !2205)
!2215 = !DILocation(line: 341, column: 6, scope: !2205)
!2216 = !DILocation(line: 341, column: 20, scope: !2205)
!2217 = !DILocation(line: 341, column: 27, scope: !2205)
!2218 = !DILocation(line: 342, column: 25, scope: !2205)
!2219 = !DILocation(line: 342, column: 40, scope: !2205)
!2220 = !DILocation(line: 342, column: 6, scope: !2205)
!2221 = !DILocation(line: 342, column: 49, scope: !2205)
!2222 = !DILocation(line: 338, column: 6, scope: !2202)
!2223 = !DILocation(line: 345, column: 10, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2205, file: !1081, line: 342, column: 55)
!2225 = !DILocation(line: 345, column: 3, scope: !2224)
!2226 = !DILocation(line: 346, column: 10, scope: !2224)
!2227 = !DILocation(line: 346, column: 3, scope: !2224)
!2228 = !DILocation(line: 347, column: 29, scope: !2224)
!2229 = !DILocation(line: 347, column: 20, scope: !2224)
!2230 = !DILocation(line: 347, column: 18, scope: !2224)
!2231 = !DILocation(line: 348, column: 28, scope: !2224)
!2232 = !DILocation(line: 348, column: 19, scope: !2224)
!2233 = !DILocation(line: 348, column: 17, scope: !2224)
!2234 = !DILocation(line: 350, column: 39, scope: !2224)
!2235 = !DILocation(line: 350, column: 47, scope: !2224)
!2236 = !DILocation(line: 350, column: 86, scope: !2224)
!2237 = !DILocation(line: 350, column: 92, scope: !2224)
!2238 = !DILocation(line: 350, column: 3, scope: !2224)
!2239 = !DILocation(line: 352, column: 2, scope: !2224)
!2240 = !DILocation(line: 353, column: 9, scope: !2164)
!2241 = !DILocation(line: 353, column: 2, scope: !2164)
!2242 = !DILocation(line: 354, column: 9, scope: !2164)
!2243 = !DILocation(line: 354, column: 2, scope: !2164)
!2244 = !DILocation(line: 355, column: 1, scope: !2164)
!2245 = !DILocation(line: 355, column: 1, scope: !2202)
!2246 = distinct !DISubprogram(name: "event_chanserv_url", scope: !1081, file: !1081, line: 380, type: !1171, isLocal: true, isDefinition: true, scopeLine: 381, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!2247 = !DILocalVariable(name: "server", arg: 1, scope: !2246, file: !1081, line: 380, type: !466)
!2248 = !DILocation(line: 380, column: 48, scope: !2246)
!2249 = !DILocalVariable(name: "data", arg: 2, scope: !2246, file: !1081, line: 380, type: !447)
!2250 = !DILocation(line: 380, column: 68, scope: !2246)
!2251 = !DILocalVariable(name: "channel", scope: !2246, file: !1081, line: 382, type: !447)
!2252 = !DILocation(line: 382, column: 14, scope: !2246)
!2253 = !DILocalVariable(name: "params", scope: !2246, file: !1081, line: 383, type: !485)
!2254 = !DILocation(line: 383, column: 8, scope: !2246)
!2255 = !DILocalVariable(name: "url", scope: !2246, file: !1081, line: 383, type: !485)
!2256 = !DILocation(line: 383, column: 17, scope: !2246)
!2257 = !DILocation(line: 385, column: 2, scope: !2246)
!2258 = distinct !{!2258, !2257}
!2259 = !DILocation(line: 385, column: 10, scope: !2260)
!2260 = !DILexicalBlockFile(scope: !2261, file: !1081, discriminator: 1)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !1081, line: 385, column: 10)
!2262 = distinct !DILexicalBlock(scope: !2246, file: !1081, line: 385, column: 4)
!2263 = !DILocation(line: 385, column: 15, scope: !2260)
!2264 = !DILocation(line: 385, column: 5, scope: !2265)
!2265 = !DILexicalBlockFile(scope: !2266, file: !1081, discriminator: 2)
!2266 = distinct !DILexicalBlock(scope: !2261, file: !1081, line: 385, column: 3)
!2267 = !DILocation(line: 385, column: 14, scope: !2268)
!2268 = !DILexicalBlockFile(scope: !2269, file: !1081, discriminator: 3)
!2269 = distinct !DILexicalBlock(scope: !2261, file: !1081, line: 385, column: 12)
!2270 = !DILocation(line: 385, column: 99, scope: !2268)
!2271 = !DILocation(line: 385, column: 110, scope: !2272)
!2272 = !DILexicalBlockFile(scope: !2262, file: !1081, discriminator: 4)
!2273 = !DILocation(line: 387, column: 28, scope: !2246)
!2274 = !DILocation(line: 387, column: 11, scope: !2246)
!2275 = !DILocation(line: 387, column: 9, scope: !2246)
!2276 = !DILocation(line: 388, column: 31, scope: !2246)
!2277 = !DILocation(line: 388, column: 39, scope: !2246)
!2278 = !DILocation(line: 388, column: 12, scope: !2246)
!2279 = !DILocation(line: 388, column: 10, scope: !2246)
!2280 = !DILocation(line: 389, column: 38, scope: !2246)
!2281 = !DILocation(line: 389, column: 46, scope: !2246)
!2282 = !DILocation(line: 389, column: 90, scope: !2246)
!2283 = !DILocation(line: 389, column: 99, scope: !2246)
!2284 = !DILocation(line: 389, column: 2, scope: !2246)
!2285 = !DILocation(line: 391, column: 9, scope: !2246)
!2286 = !DILocation(line: 391, column: 2, scope: !2246)
!2287 = !DILocation(line: 392, column: 1, scope: !2246)
!2288 = !DILocation(line: 392, column: 1, scope: !2289)
!2289 = !DILexicalBlockFile(scope: !2246, file: !1081, discriminator: 1)
!2290 = distinct !DISubprogram(name: "event_userhost", scope: !1081, file: !1081, line: 357, type: !1171, isLocal: true, isDefinition: true, scopeLine: 358, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!2291 = !DILocalVariable(name: "server", arg: 1, scope: !2290, file: !1081, line: 357, type: !466)
!2292 = !DILocation(line: 357, column: 44, scope: !2290)
!2293 = !DILocalVariable(name: "data", arg: 2, scope: !2290, file: !1081, line: 357, type: !447)
!2294 = !DILocation(line: 357, column: 64, scope: !2290)
!2295 = !DILocalVariable(name: "params", scope: !2290, file: !1081, line: 359, type: !485)
!2296 = !DILocation(line: 359, column: 8, scope: !2290)
!2297 = !DILocalVariable(name: "hosts", scope: !2290, file: !1081, line: 359, type: !485)
!2298 = !DILocation(line: 359, column: 17, scope: !2290)
!2299 = !DILocation(line: 361, column: 2, scope: !2290)
!2300 = distinct !{!2300, !2299}
!2301 = !DILocation(line: 361, column: 10, scope: !2302)
!2302 = !DILexicalBlockFile(scope: !2303, file: !1081, discriminator: 1)
!2303 = distinct !DILexicalBlock(scope: !2304, file: !1081, line: 361, column: 10)
!2304 = distinct !DILexicalBlock(scope: !2290, file: !1081, line: 361, column: 4)
!2305 = !DILocation(line: 361, column: 15, scope: !2302)
!2306 = !DILocation(line: 361, column: 5, scope: !2307)
!2307 = !DILexicalBlockFile(scope: !2308, file: !1081, discriminator: 2)
!2308 = distinct !DILexicalBlock(scope: !2303, file: !1081, line: 361, column: 3)
!2309 = !DILocation(line: 361, column: 14, scope: !2310)
!2310 = !DILexicalBlockFile(scope: !2311, file: !1081, discriminator: 3)
!2311 = distinct !DILexicalBlock(scope: !2303, file: !1081, line: 361, column: 12)
!2312 = !DILocation(line: 361, column: 99, scope: !2310)
!2313 = !DILocation(line: 361, column: 110, scope: !2314)
!2314 = !DILexicalBlockFile(scope: !2304, file: !1081, discriminator: 4)
!2315 = !DILocation(line: 363, column: 28, scope: !2290)
!2316 = !DILocation(line: 363, column: 11, scope: !2290)
!2317 = !DILocation(line: 363, column: 9, scope: !2290)
!2318 = !DILocation(line: 364, column: 12, scope: !2290)
!2319 = !DILocation(line: 364, column: 46, scope: !2290)
!2320 = !DILocation(line: 364, column: 2, scope: !2290)
!2321 = !DILocation(line: 365, column: 9, scope: !2290)
!2322 = !DILocation(line: 365, column: 2, scope: !2290)
!2323 = !DILocation(line: 366, column: 1, scope: !2290)
!2324 = !DILocation(line: 366, column: 1, scope: !2325)
!2325 = !DILexicalBlockFile(scope: !2290, file: !1081, discriminator: 1)
!2326 = distinct !DISubprogram(name: "event_sent_invite", scope: !1081, file: !1081, line: 368, type: !1171, isLocal: true, isDefinition: true, scopeLine: 369, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!2327 = !DILocalVariable(name: "server", arg: 1, scope: !2326, file: !1081, line: 368, type: !466)
!2328 = !DILocation(line: 368, column: 47, scope: !2326)
!2329 = !DILocalVariable(name: "data", arg: 2, scope: !2326, file: !1081, line: 368, type: !447)
!2330 = !DILocation(line: 368, column: 67, scope: !2326)
!2331 = !DILocalVariable(name: "params", scope: !2326, file: !1081, line: 370, type: !485)
!2332 = !DILocation(line: 370, column: 15, scope: !2326)
!2333 = !DILocalVariable(name: "nick", scope: !2326, file: !1081, line: 370, type: !485)
!2334 = !DILocation(line: 370, column: 24, scope: !2326)
!2335 = !DILocalVariable(name: "channel", scope: !2326, file: !1081, line: 370, type: !485)
!2336 = !DILocation(line: 370, column: 31, scope: !2326)
!2337 = !DILocation(line: 372, column: 2, scope: !2326)
!2338 = distinct !{!2338, !2337}
!2339 = !DILocation(line: 372, column: 10, scope: !2340)
!2340 = !DILexicalBlockFile(scope: !2341, file: !1081, discriminator: 1)
!2341 = distinct !DILexicalBlock(scope: !2342, file: !1081, line: 372, column: 10)
!2342 = distinct !DILexicalBlock(scope: !2326, file: !1081, line: 372, column: 4)
!2343 = !DILocation(line: 372, column: 15, scope: !2340)
!2344 = !DILocation(line: 372, column: 5, scope: !2345)
!2345 = !DILexicalBlockFile(scope: !2346, file: !1081, discriminator: 2)
!2346 = distinct !DILexicalBlock(scope: !2341, file: !1081, line: 372, column: 3)
!2347 = !DILocation(line: 372, column: 14, scope: !2348)
!2348 = !DILexicalBlockFile(scope: !2349, file: !1081, discriminator: 3)
!2349 = distinct !DILexicalBlock(scope: !2341, file: !1081, line: 372, column: 12)
!2350 = !DILocation(line: 372, column: 99, scope: !2348)
!2351 = !DILocation(line: 372, column: 110, scope: !2352)
!2352 = !DILexicalBlockFile(scope: !2342, file: !1081, discriminator: 4)
!2353 = !DILocation(line: 374, column: 28, scope: !2326)
!2354 = !DILocation(line: 374, column: 11, scope: !2326)
!2355 = !DILocation(line: 374, column: 9, scope: !2326)
!2356 = !DILocation(line: 375, column: 38, scope: !2326)
!2357 = !DILocation(line: 375, column: 46, scope: !2326)
!2358 = !DILocation(line: 375, column: 84, scope: !2326)
!2359 = !DILocation(line: 375, column: 90, scope: !2326)
!2360 = !DILocation(line: 375, column: 2, scope: !2326)
!2361 = !DILocation(line: 377, column: 9, scope: !2326)
!2362 = !DILocation(line: 377, column: 2, scope: !2326)
!2363 = !DILocation(line: 378, column: 1, scope: !2326)
!2364 = !DILocation(line: 378, column: 1, scope: !2365)
!2365 = !DILexicalBlockFile(scope: !2326, file: !1081, discriminator: 1)
!2366 = distinct !DISubprogram(name: "event_target_unavailable", scope: !1081, file: !1081, line: 394, type: !2367, isLocal: true, isDefinition: true, scopeLine: 396, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{null, !466, !447, !447, !447}
!2369 = !DILocalVariable(name: "server", arg: 1, scope: !2366, file: !1081, line: 394, type: !466)
!2370 = !DILocation(line: 394, column: 54, scope: !2366)
!2371 = !DILocalVariable(name: "data", arg: 2, scope: !2366, file: !1081, line: 394, type: !447)
!2372 = !DILocation(line: 394, column: 74, scope: !2366)
!2373 = !DILocalVariable(name: "nick", arg: 3, scope: !2366, file: !1081, line: 395, type: !447)
!2374 = !DILocation(line: 395, column: 22, scope: !2366)
!2375 = !DILocalVariable(name: "addr", arg: 4, scope: !2366, file: !1081, line: 395, type: !447)
!2376 = !DILocation(line: 395, column: 40, scope: !2366)
!2377 = !DILocalVariable(name: "chanrec", scope: !2366, file: !1081, line: 397, type: !449)
!2378 = !DILocation(line: 397, column: 19, scope: !2366)
!2379 = !DILocalVariable(name: "params", scope: !2366, file: !1081, line: 398, type: !485)
!2380 = !DILocation(line: 398, column: 8, scope: !2366)
!2381 = !DILocalVariable(name: "target", scope: !2366, file: !1081, line: 398, type: !485)
!2382 = !DILocation(line: 398, column: 17, scope: !2366)
!2383 = !DILocation(line: 400, column: 2, scope: !2366)
!2384 = distinct !{!2384, !2383}
!2385 = !DILocation(line: 400, column: 10, scope: !2386)
!2386 = !DILexicalBlockFile(scope: !2387, file: !1081, discriminator: 1)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !1081, line: 400, column: 10)
!2388 = distinct !DILexicalBlock(scope: !2366, file: !1081, line: 400, column: 4)
!2389 = !DILocation(line: 400, column: 15, scope: !2386)
!2390 = !DILocation(line: 400, column: 5, scope: !2391)
!2391 = !DILexicalBlockFile(scope: !2392, file: !1081, discriminator: 2)
!2392 = distinct !DILexicalBlock(scope: !2387, file: !1081, line: 400, column: 3)
!2393 = !DILocation(line: 400, column: 14, scope: !2394)
!2394 = !DILexicalBlockFile(scope: !2395, file: !1081, discriminator: 3)
!2395 = distinct !DILexicalBlock(scope: !2387, file: !1081, line: 400, column: 12)
!2396 = !DILocation(line: 400, column: 99, scope: !2394)
!2397 = !DILocation(line: 400, column: 110, scope: !2398)
!2398 = !DILexicalBlockFile(scope: !2388, file: !1081, discriminator: 4)
!2399 = !DILocation(line: 402, column: 28, scope: !2366)
!2400 = !DILocation(line: 402, column: 11, scope: !2366)
!2401 = !DILocation(line: 402, column: 9, scope: !2366)
!2402 = !DILocation(line: 403, column: 43, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2366, file: !1081, line: 403, column: 6)
!2404 = !DILocation(line: 403, column: 25, scope: !2403)
!2405 = !DILocation(line: 403, column: 10, scope: !2403)
!2406 = !DILocation(line: 403, column: 21, scope: !2403)
!2407 = !DILocation(line: 403, column: 65, scope: !2403)
!2408 = !DILocation(line: 403, column: 47, scope: !2409)
!2409 = !DILexicalBlockFile(scope: !2403, file: !1081, discriminator: 1)
!2410 = !DILocation(line: 403, column: 32, scope: !2403)
!2411 = !DILocation(line: 403, column: 20, scope: !2403)
!2412 = !DILocation(line: 403, column: 8, scope: !2413)
!2413 = !DILexicalBlockFile(scope: !2403, file: !1081, discriminator: 2)
!2414 = !DILocation(line: 403, column: 8, scope: !2403)
!2415 = !DILocation(line: 403, column: 6, scope: !2366)
!2416 = !DILocation(line: 405, column: 39, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2403, file: !1081, line: 403, column: 30)
!2418 = !DILocation(line: 405, column: 44, scope: !2417)
!2419 = !DILocation(line: 405, column: 3, scope: !2417)
!2420 = !DILocation(line: 407, column: 2, scope: !2417)
!2421 = !DILocation(line: 408, column: 148, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2403, file: !1081, line: 407, column: 9)
!2423 = !DILocation(line: 408, column: 130, scope: !2422)
!2424 = !DILocation(line: 408, column: 115, scope: !2422)
!2425 = !DILocation(line: 408, column: 26, scope: !2422)
!2426 = !DILocation(line: 408, column: 101, scope: !2427)
!2427 = !DILexicalBlockFile(scope: !2422, file: !1081, discriminator: 1)
!2428 = !DILocation(line: 408, column: 101, scope: !2422)
!2429 = !DILocation(line: 408, column: 76, scope: !2430)
!2430 = !DILexicalBlockFile(scope: !2422, file: !1081, discriminator: 2)
!2431 = !DILocation(line: 408, column: 60, scope: !2422)
!2432 = !DILocation(line: 408, column: 59, scope: !2422)
!2433 = !DILocation(line: 408, column: 34, scope: !2434)
!2434 = !DILexicalBlockFile(scope: !2422, file: !1081, discriminator: 3)
!2435 = !DILocation(line: 408, column: 14, scope: !2422)
!2436 = !DILocation(line: 408, column: 11, scope: !2422)
!2437 = !DILocation(line: 409, column: 7, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2422, file: !1081, line: 409, column: 7)
!2439 = !DILocation(line: 409, column: 15, scope: !2438)
!2440 = !DILocation(line: 409, column: 22, scope: !2438)
!2441 = !DILocation(line: 409, column: 25, scope: !2442)
!2442 = !DILexicalBlockFile(scope: !2438, file: !1081, discriminator: 1)
!2443 = !DILocation(line: 409, column: 34, scope: !2442)
!2444 = !DILocation(line: 409, column: 7, scope: !2442)
!2445 = !DILocation(line: 411, column: 25, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2438, file: !1081, line: 409, column: 42)
!2447 = !DILocation(line: 411, column: 33, scope: !2446)
!2448 = !DILocation(line: 411, column: 39, scope: !2446)
!2449 = !DILocation(line: 411, column: 4, scope: !2446)
!2450 = !DILocation(line: 412, column: 3, scope: !2446)
!2451 = !DILocation(line: 414, column: 40, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2438, file: !1081, line: 412, column: 10)
!2453 = !DILocation(line: 414, column: 46, scope: !2452)
!2454 = !DILocation(line: 414, column: 4, scope: !2452)
!2455 = !DILocation(line: 419, column: 9, scope: !2366)
!2456 = !DILocation(line: 419, column: 2, scope: !2366)
!2457 = !DILocation(line: 420, column: 1, scope: !2366)
!2458 = !DILocation(line: 420, column: 1, scope: !2459)
!2459 = !DILexicalBlockFile(scope: !2366, file: !1081, discriminator: 1)
!2460 = distinct !DISubprogram(name: "event_no_such_nick", scope: !1081, file: !1081, line: 422, type: !2367, isLocal: true, isDefinition: true, scopeLine: 424, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!2461 = !DILocalVariable(name: "server", arg: 1, scope: !2460, file: !1081, line: 422, type: !466)
!2462 = !DILocation(line: 422, column: 48, scope: !2460)
!2463 = !DILocalVariable(name: "data", arg: 2, scope: !2460, file: !1081, line: 422, type: !447)
!2464 = !DILocation(line: 422, column: 68, scope: !2460)
!2465 = !DILocalVariable(name: "nick", arg: 3, scope: !2460, file: !1081, line: 423, type: !447)
!2466 = !DILocation(line: 423, column: 22, scope: !2460)
!2467 = !DILocalVariable(name: "addr", arg: 4, scope: !2460, file: !1081, line: 423, type: !447)
!2468 = !DILocation(line: 423, column: 40, scope: !2460)
!2469 = !DILocalVariable(name: "params", scope: !2460, file: !1081, line: 425, type: !485)
!2470 = !DILocation(line: 425, column: 8, scope: !2460)
!2471 = !DILocalVariable(name: "unick", scope: !2460, file: !1081, line: 425, type: !485)
!2472 = !DILocation(line: 425, column: 17, scope: !2460)
!2473 = !DILocation(line: 427, column: 2, scope: !2460)
!2474 = distinct !{!2474, !2473}
!2475 = !DILocation(line: 427, column: 10, scope: !2476)
!2476 = !DILexicalBlockFile(scope: !2477, file: !1081, discriminator: 1)
!2477 = distinct !DILexicalBlock(scope: !2478, file: !1081, line: 427, column: 10)
!2478 = distinct !DILexicalBlock(scope: !2460, file: !1081, line: 427, column: 4)
!2479 = !DILocation(line: 427, column: 15, scope: !2476)
!2480 = !DILocation(line: 427, column: 5, scope: !2481)
!2481 = !DILexicalBlockFile(scope: !2482, file: !1081, discriminator: 2)
!2482 = distinct !DILexicalBlock(scope: !2477, file: !1081, line: 427, column: 3)
!2483 = !DILocation(line: 427, column: 14, scope: !2484)
!2484 = !DILexicalBlockFile(scope: !2485, file: !1081, discriminator: 3)
!2485 = distinct !DILexicalBlock(scope: !2477, file: !1081, line: 427, column: 12)
!2486 = !DILocation(line: 427, column: 99, scope: !2484)
!2487 = !DILocation(line: 427, column: 110, scope: !2488)
!2488 = !DILexicalBlockFile(scope: !2478, file: !1081, discriminator: 4)
!2489 = !DILocation(line: 429, column: 28, scope: !2460)
!2490 = !DILocation(line: 429, column: 11, scope: !2460)
!2491 = !DILocation(line: 429, column: 9, scope: !2460)
!2492 = !DILocation(line: 430, column: 17, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2460, file: !1081, line: 430, column: 6)
!2494 = !DILocation(line: 430, column: 7, scope: !2493)
!2495 = !DILocation(line: 430, column: 6, scope: !2460)
!2496 = !DILocation(line: 433, column: 24, scope: !2493)
!2497 = !DILocation(line: 433, column: 32, scope: !2493)
!2498 = !DILocation(line: 433, column: 38, scope: !2493)
!2499 = !DILocation(line: 433, column: 3, scope: !2493)
!2500 = !DILocation(line: 435, column: 39, scope: !2493)
!2501 = !DILocation(line: 435, column: 47, scope: !2493)
!2502 = !DILocation(line: 435, column: 90, scope: !2493)
!2503 = !DILocation(line: 435, column: 3, scope: !2493)
!2504 = !DILocation(line: 436, column: 9, scope: !2460)
!2505 = !DILocation(line: 436, column: 2, scope: !2460)
!2506 = !DILocation(line: 437, column: 1, scope: !2460)
!2507 = !DILocation(line: 437, column: 1, scope: !2508)
!2508 = !DILexicalBlockFile(scope: !2460, file: !1081, discriminator: 1)
!2509 = distinct !DISubprogram(name: "event_no_such_channel", scope: !1081, file: !1081, line: 439, type: !1171, isLocal: true, isDefinition: true, scopeLine: 440, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!2510 = !DILocalVariable(name: "server", arg: 1, scope: !2509, file: !1081, line: 439, type: !466)
!2511 = !DILocation(line: 439, column: 51, scope: !2509)
!2512 = !DILocalVariable(name: "data", arg: 2, scope: !2509, file: !1081, line: 439, type: !447)
!2513 = !DILocation(line: 439, column: 71, scope: !2509)
!2514 = !DILocalVariable(name: "params", scope: !2509, file: !1081, line: 441, type: !485)
!2515 = !DILocation(line: 441, column: 8, scope: !2509)
!2516 = !DILocalVariable(name: "channel", scope: !2509, file: !1081, line: 441, type: !485)
!2517 = !DILocation(line: 441, column: 17, scope: !2509)
!2518 = !DILocation(line: 443, column: 2, scope: !2509)
!2519 = distinct !{!2519, !2518}
!2520 = !DILocation(line: 443, column: 10, scope: !2521)
!2521 = !DILexicalBlockFile(scope: !2522, file: !1081, discriminator: 1)
!2522 = distinct !DILexicalBlock(scope: !2523, file: !1081, line: 443, column: 10)
!2523 = distinct !DILexicalBlock(scope: !2509, file: !1081, line: 443, column: 4)
!2524 = !DILocation(line: 443, column: 15, scope: !2521)
!2525 = !DILocation(line: 443, column: 5, scope: !2526)
!2526 = !DILexicalBlockFile(scope: !2527, file: !1081, discriminator: 2)
!2527 = distinct !DILexicalBlock(scope: !2522, file: !1081, line: 443, column: 3)
!2528 = !DILocation(line: 443, column: 14, scope: !2529)
!2529 = !DILexicalBlockFile(scope: !2530, file: !1081, discriminator: 3)
!2530 = distinct !DILexicalBlock(scope: !2522, file: !1081, line: 443, column: 12)
!2531 = !DILocation(line: 443, column: 99, scope: !2529)
!2532 = !DILocation(line: 443, column: 110, scope: !2533)
!2533 = !DILexicalBlockFile(scope: !2523, file: !1081, discriminator: 4)
!2534 = !DILocation(line: 445, column: 28, scope: !2509)
!2535 = !DILocation(line: 445, column: 11, scope: !2509)
!2536 = !DILocation(line: 445, column: 9, scope: !2509)
!2537 = !DILocation(line: 446, column: 38, scope: !2509)
!2538 = !DILocation(line: 446, column: 46, scope: !2509)
!2539 = !DILocation(line: 446, column: 94, scope: !2509)
!2540 = !DILocation(line: 446, column: 2, scope: !2509)
!2541 = !DILocation(line: 448, column: 9, scope: !2509)
!2542 = !DILocation(line: 448, column: 2, scope: !2509)
!2543 = !DILocation(line: 449, column: 1, scope: !2509)
!2544 = !DILocation(line: 449, column: 1, scope: !2545)
!2545 = !DILexicalBlockFile(scope: !2509, file: !1081, discriminator: 1)
!2546 = distinct !DISubprogram(name: "event_too_many_channels", scope: !1081, file: !1081, line: 462, type: !1171, isLocal: true, isDefinition: true, scopeLine: 463, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!2547 = !DILocalVariable(name: "server", arg: 1, scope: !2546, file: !1081, line: 462, type: !466)
!2548 = !DILocation(line: 462, column: 53, scope: !2546)
!2549 = !DILocalVariable(name: "data", arg: 2, scope: !2546, file: !1081, line: 462, type: !447)
!2550 = !DILocation(line: 462, column: 73, scope: !2546)
!2551 = !DILocation(line: 464, column: 14, scope: !2546)
!2552 = !DILocation(line: 464, column: 22, scope: !2546)
!2553 = !DILocation(line: 464, column: 2, scope: !2546)
!2554 = !DILocation(line: 465, column: 1, scope: !2546)
!2555 = distinct !DISubprogram(name: "event_duplicate_channel", scope: !1081, file: !1081, line: 467, type: !1348, isLocal: true, isDefinition: true, scopeLine: 469, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!2556 = !DILocalVariable(name: "server", arg: 1, scope: !2555, file: !1081, line: 467, type: !466)
!2557 = !DILocation(line: 467, column: 53, scope: !2555)
!2558 = !DILocalVariable(name: "data", arg: 2, scope: !2555, file: !1081, line: 467, type: !447)
!2559 = !DILocation(line: 467, column: 73, scope: !2555)
!2560 = !DILocalVariable(name: "nick", arg: 3, scope: !2555, file: !1081, line: 468, type: !447)
!2561 = !DILocation(line: 468, column: 15, scope: !2555)
!2562 = !DILocalVariable(name: "params", scope: !2555, file: !1081, line: 470, type: !485)
!2563 = !DILocation(line: 470, column: 8, scope: !2555)
!2564 = !DILocalVariable(name: "channel", scope: !2555, file: !1081, line: 470, type: !485)
!2565 = !DILocation(line: 470, column: 17, scope: !2555)
!2566 = !DILocalVariable(name: "p", scope: !2555, file: !1081, line: 470, type: !485)
!2567 = !DILocation(line: 470, column: 27, scope: !2555)
!2568 = !DILocation(line: 472, column: 2, scope: !2555)
!2569 = distinct !{!2569, !2568}
!2570 = !DILocation(line: 472, column: 10, scope: !2571)
!2571 = !DILexicalBlockFile(scope: !2572, file: !1081, discriminator: 1)
!2572 = distinct !DILexicalBlock(scope: !2573, file: !1081, line: 472, column: 10)
!2573 = distinct !DILexicalBlock(scope: !2555, file: !1081, line: 472, column: 4)
!2574 = !DILocation(line: 472, column: 15, scope: !2571)
!2575 = !DILocation(line: 472, column: 5, scope: !2576)
!2576 = !DILexicalBlockFile(scope: !2577, file: !1081, discriminator: 2)
!2577 = distinct !DILexicalBlock(scope: !2572, file: !1081, line: 472, column: 3)
!2578 = !DILocation(line: 472, column: 14, scope: !2579)
!2579 = !DILexicalBlockFile(scope: !2580, file: !1081, discriminator: 3)
!2580 = distinct !DILexicalBlock(scope: !2572, file: !1081, line: 472, column: 12)
!2581 = !DILocation(line: 472, column: 99, scope: !2579)
!2582 = !DILocation(line: 472, column: 110, scope: !2583)
!2583 = !DILexicalBlockFile(scope: !2573, file: !1081, discriminator: 4)
!2584 = !DILocation(line: 476, column: 28, scope: !2555)
!2585 = !DILocation(line: 476, column: 11, scope: !2555)
!2586 = !DILocation(line: 476, column: 9, scope: !2555)
!2587 = !DILocation(line: 477, column: 13, scope: !2555)
!2588 = !DILocation(line: 477, column: 6, scope: !2555)
!2589 = !DILocation(line: 477, column: 4, scope: !2555)
!2590 = !DILocation(line: 478, column: 6, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2555, file: !1081, line: 478, column: 6)
!2592 = !DILocation(line: 478, column: 8, scope: !2591)
!2593 = !DILocation(line: 478, column: 6, scope: !2555)
!2594 = !DILocation(line: 478, column: 17, scope: !2595)
!2595 = !DILexicalBlockFile(scope: !2591, file: !1081, discriminator: 1)
!2596 = !DILocation(line: 478, column: 19, scope: !2595)
!2597 = !DILocation(line: 478, column: 16, scope: !2595)
!2598 = !DILocation(line: 480, column: 6, scope: !2599)
!2599 = distinct !DILexicalBlock(scope: !2555, file: !1081, line: 480, column: 6)
!2600 = !DILocation(line: 480, column: 17, scope: !2599)
!2601 = !DILocation(line: 480, column: 24, scope: !2599)
!2602 = !DILocation(line: 480, column: 27, scope: !2603)
!2603 = !DILexicalBlockFile(scope: !2599, file: !1081, discriminator: 1)
!2604 = !DILocation(line: 480, column: 38, scope: !2603)
!2605 = !DILocation(line: 480, column: 6, scope: !2603)
!2606 = !DILocation(line: 481, column: 39, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2599, file: !1081, line: 480, column: 46)
!2608 = !DILocation(line: 481, column: 47, scope: !2607)
!2609 = !DILocation(line: 481, column: 54, scope: !2607)
!2610 = !DILocation(line: 481, column: 3, scope: !2607)
!2611 = !DILocation(line: 483, column: 2, scope: !2607)
!2612 = !DILocation(line: 484, column: 24, scope: !2599)
!2613 = !DILocation(line: 484, column: 32, scope: !2599)
!2614 = !DILocation(line: 484, column: 38, scope: !2599)
!2615 = !DILocation(line: 484, column: 3, scope: !2599)
!2616 = !DILocation(line: 486, column: 9, scope: !2555)
!2617 = !DILocation(line: 486, column: 2, scope: !2555)
!2618 = !DILocation(line: 487, column: 1, scope: !2555)
!2619 = !DILocation(line: 487, column: 1, scope: !2620)
!2620 = !DILexicalBlockFile(scope: !2555, file: !1081, discriminator: 1)
!2621 = distinct !DISubprogram(name: "event_channel_is_full", scope: !1081, file: !1081, line: 489, type: !1171, isLocal: true, isDefinition: true, scopeLine: 490, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!2622 = !DILocalVariable(name: "server", arg: 1, scope: !2621, file: !1081, line: 489, type: !466)
!2623 = !DILocation(line: 489, column: 51, scope: !2621)
!2624 = !DILocalVariable(name: "data", arg: 2, scope: !2621, file: !1081, line: 489, type: !447)
!2625 = !DILocation(line: 489, column: 71, scope: !2621)
!2626 = !DILocation(line: 491, column: 14, scope: !2621)
!2627 = !DILocation(line: 491, column: 22, scope: !2621)
!2628 = !DILocation(line: 491, column: 2, scope: !2621)
!2629 = !DILocation(line: 492, column: 1, scope: !2621)
!2630 = distinct !DISubprogram(name: "event_unknown_mode", scope: !1081, file: !1081, line: 553, type: !1171, isLocal: true, isDefinition: true, scopeLine: 554, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!2631 = !DILocalVariable(name: "server", arg: 1, scope: !2630, file: !1081, line: 553, type: !466)
!2632 = !DILocation(line: 553, column: 48, scope: !2630)
!2633 = !DILocalVariable(name: "data", arg: 2, scope: !2630, file: !1081, line: 553, type: !447)
!2634 = !DILocation(line: 553, column: 68, scope: !2630)
!2635 = !DILocalVariable(name: "params", scope: !2630, file: !1081, line: 555, type: !485)
!2636 = !DILocation(line: 555, column: 8, scope: !2630)
!2637 = !DILocalVariable(name: "mode", scope: !2630, file: !1081, line: 555, type: !485)
!2638 = !DILocation(line: 555, column: 17, scope: !2630)
!2639 = !DILocation(line: 557, column: 2, scope: !2630)
!2640 = distinct !{!2640, !2639}
!2641 = !DILocation(line: 557, column: 10, scope: !2642)
!2642 = !DILexicalBlockFile(scope: !2643, file: !1081, discriminator: 1)
!2643 = distinct !DILexicalBlock(scope: !2644, file: !1081, line: 557, column: 10)
!2644 = distinct !DILexicalBlock(scope: !2630, file: !1081, line: 557, column: 4)
!2645 = !DILocation(line: 557, column: 15, scope: !2642)
!2646 = !DILocation(line: 557, column: 5, scope: !2647)
!2647 = !DILexicalBlockFile(scope: !2648, file: !1081, discriminator: 2)
!2648 = distinct !DILexicalBlock(scope: !2643, file: !1081, line: 557, column: 3)
!2649 = !DILocation(line: 557, column: 14, scope: !2650)
!2650 = !DILexicalBlockFile(scope: !2651, file: !1081, discriminator: 3)
!2651 = distinct !DILexicalBlock(scope: !2643, file: !1081, line: 557, column: 12)
!2652 = !DILocation(line: 557, column: 99, scope: !2650)
!2653 = !DILocation(line: 557, column: 110, scope: !2654)
!2654 = !DILexicalBlockFile(scope: !2644, file: !1081, discriminator: 4)
!2655 = !DILocation(line: 559, column: 28, scope: !2630)
!2656 = !DILocation(line: 559, column: 11, scope: !2630)
!2657 = !DILocation(line: 559, column: 9, scope: !2630)
!2658 = !DILocation(line: 560, column: 38, scope: !2630)
!2659 = !DILocation(line: 560, column: 39, scope: !2630)
!2660 = !DILocation(line: 560, column: 2, scope: !2630)
!2661 = !DILocation(line: 561, column: 9, scope: !2630)
!2662 = !DILocation(line: 561, column: 2, scope: !2630)
!2663 = !DILocation(line: 562, column: 1, scope: !2630)
!2664 = !DILocation(line: 562, column: 1, scope: !2665)
!2665 = !DILexicalBlockFile(scope: !2630, file: !1081, discriminator: 1)
!2666 = distinct !DISubprogram(name: "event_invite_only", scope: !1081, file: !1081, line: 494, type: !1171, isLocal: true, isDefinition: true, scopeLine: 495, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!2667 = !DILocalVariable(name: "server", arg: 1, scope: !2666, file: !1081, line: 494, type: !466)
!2668 = !DILocation(line: 494, column: 47, scope: !2666)
!2669 = !DILocalVariable(name: "data", arg: 2, scope: !2666, file: !1081, line: 494, type: !447)
!2670 = !DILocation(line: 494, column: 67, scope: !2666)
!2671 = !DILocation(line: 496, column: 14, scope: !2666)
!2672 = !DILocation(line: 496, column: 22, scope: !2666)
!2673 = !DILocation(line: 496, column: 2, scope: !2666)
!2674 = !DILocation(line: 497, column: 1, scope: !2666)
!2675 = distinct !DISubprogram(name: "event_banned", scope: !1081, file: !1081, line: 499, type: !1171, isLocal: true, isDefinition: true, scopeLine: 500, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!2676 = !DILocalVariable(name: "server", arg: 1, scope: !2675, file: !1081, line: 499, type: !466)
!2677 = !DILocation(line: 499, column: 42, scope: !2675)
!2678 = !DILocalVariable(name: "data", arg: 2, scope: !2675, file: !1081, line: 499, type: !447)
!2679 = !DILocation(line: 499, column: 62, scope: !2675)
!2680 = !DILocation(line: 501, column: 14, scope: !2675)
!2681 = !DILocation(line: 501, column: 22, scope: !2675)
!2682 = !DILocation(line: 501, column: 2, scope: !2675)
!2683 = !DILocation(line: 502, column: 1, scope: !2675)
!2684 = distinct !DISubprogram(name: "event_bad_channel_key", scope: !1081, file: !1081, line: 504, type: !1171, isLocal: true, isDefinition: true, scopeLine: 505, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!2685 = !DILocalVariable(name: "server", arg: 1, scope: !2684, file: !1081, line: 504, type: !466)
!2686 = !DILocation(line: 504, column: 51, scope: !2684)
!2687 = !DILocalVariable(name: "data", arg: 2, scope: !2684, file: !1081, line: 504, type: !447)
!2688 = !DILocation(line: 504, column: 71, scope: !2684)
!2689 = !DILocation(line: 506, column: 14, scope: !2684)
!2690 = !DILocation(line: 506, column: 22, scope: !2684)
!2691 = !DILocation(line: 506, column: 2, scope: !2684)
!2692 = !DILocation(line: 507, column: 1, scope: !2684)
!2693 = distinct !DISubprogram(name: "event_bad_channel_mask", scope: !1081, file: !1081, line: 509, type: !1171, isLocal: true, isDefinition: true, scopeLine: 510, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!2694 = !DILocalVariable(name: "server", arg: 1, scope: !2693, file: !1081, line: 509, type: !466)
!2695 = !DILocation(line: 509, column: 52, scope: !2693)
!2696 = !DILocalVariable(name: "data", arg: 2, scope: !2693, file: !1081, line: 509, type: !447)
!2697 = !DILocation(line: 509, column: 72, scope: !2693)
!2698 = !DILocation(line: 511, column: 14, scope: !2693)
!2699 = !DILocation(line: 511, column: 22, scope: !2693)
!2700 = !DILocation(line: 511, column: 2, scope: !2693)
!2701 = !DILocation(line: 512, column: 1, scope: !2693)
!2702 = distinct !DISubprogram(name: "event_477", scope: !1081, file: !1081, line: 514, type: !1348, isLocal: true, isDefinition: true, scopeLine: 516, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!2703 = !DILocalVariable(name: "server", arg: 1, scope: !2702, file: !1081, line: 514, type: !466)
!2704 = !DILocation(line: 514, column: 39, scope: !2702)
!2705 = !DILocalVariable(name: "data", arg: 2, scope: !2702, file: !1081, line: 514, type: !447)
!2706 = !DILocation(line: 514, column: 59, scope: !2702)
!2707 = !DILocalVariable(name: "nick", arg: 3, scope: !2702, file: !1081, line: 515, type: !447)
!2708 = !DILocation(line: 515, column: 21, scope: !2702)
!2709 = !DILocalVariable(name: "chanrec", scope: !2702, file: !1081, line: 522, type: !449)
!2710 = !DILocation(line: 522, column: 19, scope: !2702)
!2711 = !DILocalVariable(name: "params", scope: !2702, file: !1081, line: 523, type: !485)
!2712 = !DILocation(line: 523, column: 8, scope: !2702)
!2713 = !DILocalVariable(name: "channel", scope: !2702, file: !1081, line: 523, type: !485)
!2714 = !DILocation(line: 523, column: 17, scope: !2702)
!2715 = !DILocation(line: 525, column: 2, scope: !2702)
!2716 = distinct !{!2716, !2715}
!2717 = !DILocation(line: 525, column: 10, scope: !2718)
!2718 = !DILexicalBlockFile(scope: !2719, file: !1081, discriminator: 1)
!2719 = distinct !DILexicalBlock(scope: !2720, file: !1081, line: 525, column: 10)
!2720 = distinct !DILexicalBlock(scope: !2702, file: !1081, line: 525, column: 4)
!2721 = !DILocation(line: 525, column: 15, scope: !2718)
!2722 = !DILocation(line: 525, column: 5, scope: !2723)
!2723 = !DILexicalBlockFile(scope: !2724, file: !1081, discriminator: 2)
!2724 = distinct !DILexicalBlock(scope: !2719, file: !1081, line: 525, column: 3)
!2725 = !DILocation(line: 525, column: 14, scope: !2726)
!2726 = !DILexicalBlockFile(scope: !2727, file: !1081, discriminator: 3)
!2727 = distinct !DILexicalBlock(scope: !2719, file: !1081, line: 525, column: 12)
!2728 = !DILocation(line: 525, column: 99, scope: !2726)
!2729 = !DILocation(line: 525, column: 110, scope: !2730)
!2730 = !DILexicalBlockFile(scope: !2720, file: !1081, discriminator: 4)
!2731 = !DILocation(line: 527, column: 28, scope: !2702)
!2732 = !DILocation(line: 527, column: 11, scope: !2702)
!2733 = !DILocation(line: 527, column: 9, scope: !2702)
!2734 = !DILocation(line: 529, column: 147, scope: !2702)
!2735 = !DILocation(line: 529, column: 129, scope: !2702)
!2736 = !DILocation(line: 529, column: 114, scope: !2702)
!2737 = !DILocation(line: 529, column: 25, scope: !2702)
!2738 = !DILocation(line: 529, column: 100, scope: !2739)
!2739 = !DILexicalBlockFile(scope: !2702, file: !1081, discriminator: 1)
!2740 = !DILocation(line: 529, column: 100, scope: !2702)
!2741 = !DILocation(line: 529, column: 75, scope: !2742)
!2742 = !DILexicalBlockFile(scope: !2702, file: !1081, discriminator: 2)
!2743 = !DILocation(line: 529, column: 59, scope: !2702)
!2744 = !DILocation(line: 529, column: 58, scope: !2702)
!2745 = !DILocation(line: 529, column: 33, scope: !2746)
!2746 = !DILexicalBlockFile(scope: !2702, file: !1081, discriminator: 3)
!2747 = !DILocation(line: 529, column: 13, scope: !2702)
!2748 = !DILocation(line: 529, column: 10, scope: !2702)
!2749 = !DILocation(line: 530, column: 23, scope: !2702)
!2750 = !DILocation(line: 530, column: 31, scope: !2702)
!2751 = !DILocation(line: 530, column: 37, scope: !2702)
!2752 = !DILocation(line: 530, column: 43, scope: !2702)
!2753 = !DILocation(line: 530, column: 51, scope: !2702)
!2754 = !DILocation(line: 530, column: 58, scope: !2702)
!2755 = !DILocation(line: 530, column: 61, scope: !2739)
!2756 = !DILocation(line: 530, column: 70, scope: !2739)
!2757 = !DILocation(line: 530, column: 58, scope: !2739)
!2758 = !DILocation(line: 530, column: 58, scope: !2742)
!2759 = !DILocation(line: 530, column: 2, scope: !2742)
!2760 = !DILocation(line: 531, column: 9, scope: !2702)
!2761 = !DILocation(line: 531, column: 2, scope: !2702)
!2762 = !DILocation(line: 532, column: 1, scope: !2702)
!2763 = !DILocation(line: 532, column: 1, scope: !2739)
!2764 = distinct !DISubprogram(name: "event_motd", scope: !1081, file: !1081, line: 630, type: !2367, isLocal: true, isDefinition: true, scopeLine: 632, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!2765 = !DILocalVariable(name: "server", arg: 1, scope: !2764, file: !1081, line: 630, type: !466)
!2766 = !DILocation(line: 630, column: 40, scope: !2764)
!2767 = !DILocalVariable(name: "data", arg: 2, scope: !2764, file: !1081, line: 630, type: !447)
!2768 = !DILocation(line: 630, column: 60, scope: !2764)
!2769 = !DILocalVariable(name: "nick", arg: 3, scope: !2764, file: !1081, line: 631, type: !447)
!2770 = !DILocation(line: 631, column: 22, scope: !2764)
!2771 = !DILocalVariable(name: "addr", arg: 4, scope: !2764, file: !1081, line: 631, type: !447)
!2772 = !DILocation(line: 631, column: 40, scope: !2764)
!2773 = !DILocation(line: 635, column: 6, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2764, file: !1081, line: 635, column: 6)
!2775 = !DILocation(line: 635, column: 37, scope: !2774)
!2776 = !DILocation(line: 635, column: 41, scope: !2777)
!2777 = !DILexicalBlockFile(scope: !2774, file: !1081, discriminator: 1)
!2778 = !DILocation(line: 635, column: 49, scope: !2777)
!2779 = !DILocation(line: 635, column: 6, scope: !2777)
!2780 = !DILocation(line: 636, column: 3, scope: !2774)
!2781 = !DILocation(line: 638, column: 30, scope: !2764)
!2782 = !DILocation(line: 638, column: 38, scope: !2764)
!2783 = !DILocation(line: 638, column: 44, scope: !2764)
!2784 = !DILocation(line: 638, column: 9, scope: !2764)
!2785 = !DILocation(line: 639, column: 1, scope: !2764)
!2786 = !DILocation(line: 639, column: 1, scope: !2787)
!2787 = !DILexicalBlockFile(scope: !2764, file: !1081, discriminator: 1)
!2788 = distinct !DISubprogram(name: "event_target_too_fast", scope: !1081, file: !1081, line: 534, type: !1348, isLocal: true, isDefinition: true, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!2789 = !DILocalVariable(name: "server", arg: 1, scope: !2788, file: !1081, line: 534, type: !466)
!2790 = !DILocation(line: 534, column: 51, scope: !2788)
!2791 = !DILocalVariable(name: "data", arg: 2, scope: !2788, file: !1081, line: 534, type: !447)
!2792 = !DILocation(line: 534, column: 71, scope: !2788)
!2793 = !DILocalVariable(name: "nick", arg: 3, scope: !2788, file: !1081, line: 535, type: !447)
!2794 = !DILocation(line: 535, column: 21, scope: !2788)
!2795 = !DILocalVariable(name: "chanrec", scope: !2788, file: !1081, line: 541, type: !449)
!2796 = !DILocation(line: 541, column: 19, scope: !2788)
!2797 = !DILocalVariable(name: "params", scope: !2788, file: !1081, line: 542, type: !485)
!2798 = !DILocation(line: 542, column: 8, scope: !2788)
!2799 = !DILocalVariable(name: "channel", scope: !2788, file: !1081, line: 542, type: !485)
!2800 = !DILocation(line: 542, column: 17, scope: !2788)
!2801 = !DILocation(line: 544, column: 2, scope: !2788)
!2802 = distinct !{!2802, !2801}
!2803 = !DILocation(line: 544, column: 10, scope: !2804)
!2804 = !DILexicalBlockFile(scope: !2805, file: !1081, discriminator: 1)
!2805 = distinct !DILexicalBlock(scope: !2806, file: !1081, line: 544, column: 10)
!2806 = distinct !DILexicalBlock(scope: !2788, file: !1081, line: 544, column: 4)
!2807 = !DILocation(line: 544, column: 15, scope: !2804)
!2808 = !DILocation(line: 544, column: 5, scope: !2809)
!2809 = !DILexicalBlockFile(scope: !2810, file: !1081, discriminator: 2)
!2810 = distinct !DILexicalBlock(scope: !2805, file: !1081, line: 544, column: 3)
!2811 = !DILocation(line: 544, column: 14, scope: !2812)
!2812 = !DILexicalBlockFile(scope: !2813, file: !1081, discriminator: 3)
!2813 = distinct !DILexicalBlock(scope: !2805, file: !1081, line: 544, column: 12)
!2814 = !DILocation(line: 544, column: 99, scope: !2812)
!2815 = !DILocation(line: 544, column: 110, scope: !2816)
!2816 = !DILexicalBlockFile(scope: !2806, file: !1081, discriminator: 4)
!2817 = !DILocation(line: 546, column: 28, scope: !2788)
!2818 = !DILocation(line: 546, column: 11, scope: !2788)
!2819 = !DILocation(line: 546, column: 9, scope: !2788)
!2820 = !DILocation(line: 548, column: 147, scope: !2788)
!2821 = !DILocation(line: 548, column: 129, scope: !2788)
!2822 = !DILocation(line: 548, column: 114, scope: !2788)
!2823 = !DILocation(line: 548, column: 25, scope: !2788)
!2824 = !DILocation(line: 548, column: 100, scope: !2825)
!2825 = !DILexicalBlockFile(scope: !2788, file: !1081, discriminator: 1)
!2826 = !DILocation(line: 548, column: 100, scope: !2788)
!2827 = !DILocation(line: 548, column: 75, scope: !2828)
!2828 = !DILexicalBlockFile(scope: !2788, file: !1081, discriminator: 2)
!2829 = !DILocation(line: 548, column: 59, scope: !2788)
!2830 = !DILocation(line: 548, column: 58, scope: !2788)
!2831 = !DILocation(line: 548, column: 33, scope: !2832)
!2832 = !DILexicalBlockFile(scope: !2788, file: !1081, discriminator: 3)
!2833 = !DILocation(line: 548, column: 13, scope: !2788)
!2834 = !DILocation(line: 548, column: 10, scope: !2788)
!2835 = !DILocation(line: 549, column: 23, scope: !2788)
!2836 = !DILocation(line: 549, column: 31, scope: !2788)
!2837 = !DILocation(line: 549, column: 37, scope: !2788)
!2838 = !DILocation(line: 549, column: 43, scope: !2788)
!2839 = !DILocation(line: 549, column: 51, scope: !2788)
!2840 = !DILocation(line: 549, column: 58, scope: !2788)
!2841 = !DILocation(line: 549, column: 61, scope: !2825)
!2842 = !DILocation(line: 549, column: 70, scope: !2825)
!2843 = !DILocation(line: 549, column: 58, scope: !2825)
!2844 = !DILocation(line: 549, column: 58, scope: !2828)
!2845 = !DILocation(line: 549, column: 2, scope: !2828)
!2846 = !DILocation(line: 550, column: 9, scope: !2788)
!2847 = !DILocation(line: 550, column: 2, scope: !2788)
!2848 = !DILocation(line: 551, column: 1, scope: !2788)
!2849 = !DILocation(line: 551, column: 1, scope: !2825)
!2850 = distinct !DISubprogram(name: "event_numeric", scope: !1081, file: !1081, line: 564, type: !1348, isLocal: true, isDefinition: true, scopeLine: 566, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!2851 = !DILocalVariable(name: "server", arg: 1, scope: !2850, file: !1081, line: 564, type: !466)
!2852 = !DILocation(line: 564, column: 43, scope: !2850)
!2853 = !DILocalVariable(name: "data", arg: 2, scope: !2850, file: !1081, line: 564, type: !447)
!2854 = !DILocation(line: 564, column: 63, scope: !2850)
!2855 = !DILocalVariable(name: "nick", arg: 3, scope: !2850, file: !1081, line: 565, type: !447)
!2856 = !DILocation(line: 565, column: 18, scope: !2850)
!2857 = !DILocation(line: 567, column: 16, scope: !2850)
!2858 = !DILocation(line: 567, column: 9, scope: !2850)
!2859 = !DILocation(line: 567, column: 7, scope: !2850)
!2860 = !DILocation(line: 568, column: 6, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2850, file: !1081, line: 568, column: 6)
!2862 = !DILocation(line: 568, column: 11, scope: !2861)
!2863 = !DILocation(line: 568, column: 6, scope: !2850)
!2864 = !DILocation(line: 569, column: 38, scope: !2861)
!2865 = !DILocation(line: 569, column: 46, scope: !2861)
!2866 = !DILocation(line: 569, column: 50, scope: !2861)
!2867 = !DILocation(line: 569, column: 54, scope: !2861)
!2868 = !DILocation(line: 569, column: 17, scope: !2861)
!2869 = !DILocation(line: 570, column: 1, scope: !2850)
!2870 = distinct !DISubprogram(name: "event_received", scope: !1081, file: !1081, line: 618, type: !1348, isLocal: true, isDefinition: true, scopeLine: 620, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!2871 = !DILocalVariable(name: "server", arg: 1, scope: !2870, file: !1081, line: 618, type: !466)
!2872 = !DILocation(line: 618, column: 44, scope: !2870)
!2873 = !DILocalVariable(name: "data", arg: 2, scope: !2870, file: !1081, line: 618, type: !447)
!2874 = !DILocation(line: 618, column: 64, scope: !2870)
!2875 = !DILocalVariable(name: "nick", arg: 3, scope: !2870, file: !1081, line: 619, type: !447)
!2876 = !DILocation(line: 619, column: 19, scope: !2870)
!2877 = !DILocation(line: 621, column: 30, scope: !2870)
!2878 = !DILocation(line: 621, column: 38, scope: !2870)
!2879 = !DILocation(line: 621, column: 44, scope: !2870)
!2880 = !DILocation(line: 621, column: 9, scope: !2870)
!2881 = !DILocation(line: 622, column: 1, scope: !2870)
!2882 = distinct !DISubprogram(name: "event_target_received", scope: !1081, file: !1081, line: 624, type: !1348, isLocal: true, isDefinition: true, scopeLine: 626, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!2883 = !DILocalVariable(name: "server", arg: 1, scope: !2882, file: !1081, line: 624, type: !466)
!2884 = !DILocation(line: 624, column: 51, scope: !2882)
!2885 = !DILocalVariable(name: "data", arg: 2, scope: !2882, file: !1081, line: 624, type: !447)
!2886 = !DILocation(line: 624, column: 71, scope: !2882)
!2887 = !DILocalVariable(name: "nick", arg: 3, scope: !2882, file: !1081, line: 625, type: !447)
!2888 = !DILocation(line: 625, column: 19, scope: !2882)
!2889 = !DILocation(line: 627, column: 30, scope: !2882)
!2890 = !DILocation(line: 627, column: 38, scope: !2882)
!2891 = !DILocation(line: 627, column: 44, scope: !2882)
!2892 = !DILocation(line: 627, column: 9, scope: !2882)
!2893 = !DILocation(line: 628, column: 1, scope: !2882)
!2894 = distinct !DISubprogram(name: "fe_events_numeric_deinit", scope: !1081, file: !1081, line: 738, type: !623, isLocal: false, isDefinition: true, scopeLine: 739, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!2895 = !DILocation(line: 740, column: 9, scope: !2894)
!2896 = !DILocation(line: 740, column: 2, scope: !2894)
!2897 = !DILocation(line: 741, column: 9, scope: !2894)
!2898 = !DILocation(line: 741, column: 2, scope: !2894)
!2899 = !DILocation(line: 743, column: 2, scope: !2894)
!2900 = !DILocation(line: 744, column: 2, scope: !2894)
!2901 = !DILocation(line: 745, column: 2, scope: !2894)
!2902 = !DILocation(line: 746, column: 2, scope: !2894)
!2903 = !DILocation(line: 747, column: 2, scope: !2894)
!2904 = !DILocation(line: 748, column: 2, scope: !2894)
!2905 = !DILocation(line: 749, column: 2, scope: !2894)
!2906 = !DILocation(line: 750, column: 2, scope: !2894)
!2907 = !DILocation(line: 751, column: 2, scope: !2894)
!2908 = !DILocation(line: 752, column: 2, scope: !2894)
!2909 = !DILocation(line: 753, column: 2, scope: !2894)
!2910 = !DILocation(line: 754, column: 2, scope: !2894)
!2911 = !DILocation(line: 755, column: 2, scope: !2894)
!2912 = !DILocation(line: 756, column: 2, scope: !2894)
!2913 = !DILocation(line: 757, column: 2, scope: !2894)
!2914 = !DILocation(line: 758, column: 2, scope: !2894)
!2915 = !DILocation(line: 759, column: 2, scope: !2894)
!2916 = !DILocation(line: 760, column: 2, scope: !2894)
!2917 = !DILocation(line: 761, column: 2, scope: !2894)
!2918 = !DILocation(line: 762, column: 2, scope: !2894)
!2919 = !DILocation(line: 763, column: 2, scope: !2894)
!2920 = !DILocation(line: 764, column: 2, scope: !2894)
!2921 = !DILocation(line: 765, column: 2, scope: !2894)
!2922 = !DILocation(line: 767, column: 2, scope: !2894)
!2923 = !DILocation(line: 768, column: 2, scope: !2894)
!2924 = !DILocation(line: 769, column: 2, scope: !2894)
!2925 = !DILocation(line: 770, column: 2, scope: !2894)
!2926 = !DILocation(line: 771, column: 2, scope: !2894)
!2927 = !DILocation(line: 772, column: 2, scope: !2894)
!2928 = !DILocation(line: 773, column: 2, scope: !2894)
!2929 = !DILocation(line: 774, column: 2, scope: !2894)
!2930 = !DILocation(line: 775, column: 2, scope: !2894)
!2931 = !DILocation(line: 776, column: 2, scope: !2894)
!2932 = !DILocation(line: 777, column: 2, scope: !2894)
!2933 = !DILocation(line: 778, column: 2, scope: !2894)
!2934 = !DILocation(line: 779, column: 2, scope: !2894)
!2935 = !DILocation(line: 780, column: 2, scope: !2894)
!2936 = !DILocation(line: 781, column: 2, scope: !2894)
!2937 = !DILocation(line: 782, column: 2, scope: !2894)
!2938 = !DILocation(line: 783, column: 2, scope: !2894)
!2939 = !DILocation(line: 784, column: 2, scope: !2894)
!2940 = !DILocation(line: 786, column: 9, scope: !2894)
!2941 = !DILocation(line: 787, column: 2, scope: !2894)
!2942 = !DILocation(line: 788, column: 2, scope: !2894)
!2943 = !DILocation(line: 789, column: 2, scope: !2894)
!2944 = !DILocation(line: 790, column: 2, scope: !2894)
!2945 = !DILocation(line: 791, column: 2, scope: !2894)
!2946 = !DILocation(line: 792, column: 2, scope: !2894)
!2947 = !DILocation(line: 793, column: 2, scope: !2894)
!2948 = !DILocation(line: 794, column: 2, scope: !2894)
!2949 = !DILocation(line: 795, column: 2, scope: !2894)
!2950 = !DILocation(line: 796, column: 2, scope: !2894)
!2951 = !DILocation(line: 797, column: 2, scope: !2894)
!2952 = !DILocation(line: 798, column: 2, scope: !2894)
!2953 = !DILocation(line: 799, column: 2, scope: !2894)
!2954 = !DILocation(line: 800, column: 2, scope: !2894)
!2955 = !DILocation(line: 801, column: 2, scope: !2894)
!2956 = !DILocation(line: 803, column: 2, scope: !2894)
!2957 = !DILocation(line: 804, column: 2, scope: !2894)
!2958 = !DILocation(line: 805, column: 2, scope: !2894)
!2959 = !DILocation(line: 806, column: 2, scope: !2894)
!2960 = !DILocation(line: 807, column: 2, scope: !2894)
!2961 = !DILocation(line: 808, column: 2, scope: !2894)
!2962 = !DILocation(line: 809, column: 2, scope: !2894)
!2963 = !DILocation(line: 810, column: 2, scope: !2894)
!2964 = !DILocation(line: 811, column: 2, scope: !2894)
!2965 = !DILocation(line: 812, column: 2, scope: !2894)
!2966 = !DILocation(line: 813, column: 2, scope: !2894)
!2967 = !DILocation(line: 814, column: 2, scope: !2894)
!2968 = !DILocation(line: 815, column: 2, scope: !2894)
!2969 = !DILocation(line: 816, column: 2, scope: !2894)
!2970 = !DILocation(line: 817, column: 2, scope: !2894)
!2971 = !DILocation(line: 818, column: 2, scope: !2894)
!2972 = !DILocation(line: 819, column: 2, scope: !2894)
!2973 = !DILocation(line: 820, column: 2, scope: !2894)
!2974 = !DILocation(line: 821, column: 2, scope: !2894)
!2975 = !DILocation(line: 822, column: 2, scope: !2894)
!2976 = !DILocation(line: 823, column: 2, scope: !2894)
!2977 = !DILocation(line: 824, column: 2, scope: !2894)
!2978 = !DILocation(line: 825, column: 1, scope: !2894)
!2979 = distinct !DISubprogram(name: "print_event_received", scope: !1081, file: !1081, line: 572, type: !2980, isLocal: true, isDefinition: true, scopeLine: 574, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{null, !466, !447, !447, !457}
!2982 = !DILocalVariable(name: "server", arg: 1, scope: !2979, file: !1081, line: 572, type: !466)
!2983 = !DILocation(line: 572, column: 50, scope: !2979)
!2984 = !DILocalVariable(name: "data", arg: 2, scope: !2979, file: !1081, line: 572, type: !447)
!2985 = !DILocation(line: 572, column: 70, scope: !2979)
!2986 = !DILocalVariable(name: "nick", arg: 3, scope: !2979, file: !1081, line: 573, type: !447)
!2987 = !DILocation(line: 573, column: 18, scope: !2979)
!2988 = !DILocalVariable(name: "target_param", arg: 4, scope: !2979, file: !1081, line: 573, type: !457)
!2989 = !DILocation(line: 573, column: 28, scope: !2979)
!2990 = !DILocalVariable(name: "target", scope: !2979, file: !1081, line: 575, type: !485)
!2991 = !DILocation(line: 575, column: 8, scope: !2979)
!2992 = !DILocalVariable(name: "args", scope: !2979, file: !1081, line: 575, type: !485)
!2993 = !DILocation(line: 575, column: 17, scope: !2979)
!2994 = !DILocalVariable(name: "ptr", scope: !2979, file: !1081, line: 575, type: !485)
!2995 = !DILocation(line: 575, column: 24, scope: !2979)
!2996 = !DILocalVariable(name: "ptr2", scope: !2979, file: !1081, line: 575, type: !485)
!2997 = !DILocation(line: 575, column: 30, scope: !2979)
!2998 = !DILocalVariable(name: "recoded", scope: !2979, file: !1081, line: 575, type: !485)
!2999 = !DILocation(line: 575, column: 37, scope: !2979)
!3000 = !DILocalVariable(name: "format", scope: !2979, file: !1081, line: 576, type: !457)
!3001 = !DILocation(line: 576, column: 6, scope: !2979)
!3002 = !DILocation(line: 578, column: 2, scope: !2979)
!3003 = distinct !{!3003, !3002}
!3004 = !DILocation(line: 578, column: 10, scope: !3005)
!3005 = !DILexicalBlockFile(scope: !3006, file: !1081, discriminator: 1)
!3006 = distinct !DILexicalBlock(scope: !3007, file: !1081, line: 578, column: 10)
!3007 = distinct !DILexicalBlock(scope: !2979, file: !1081, line: 578, column: 4)
!3008 = !DILocation(line: 578, column: 15, scope: !3005)
!3009 = !DILocation(line: 578, column: 5, scope: !3010)
!3010 = !DILexicalBlockFile(scope: !3011, file: !1081, discriminator: 2)
!3011 = distinct !DILexicalBlock(scope: !3006, file: !1081, line: 578, column: 3)
!3012 = !DILocation(line: 578, column: 14, scope: !3013)
!3013 = !DILexicalBlockFile(scope: !3014, file: !1081, discriminator: 3)
!3014 = distinct !DILexicalBlock(scope: !3006, file: !1081, line: 578, column: 12)
!3015 = !DILocation(line: 578, column: 99, scope: !3013)
!3016 = !DILocation(line: 578, column: 110, scope: !3017)
!3017 = !DILexicalBlockFile(scope: !3007, file: !1081, discriminator: 4)
!3018 = !DILocation(line: 581, column: 15, scope: !2979)
!3019 = !DILocation(line: 581, column: 8, scope: !2979)
!3020 = !DILocation(line: 581, column: 6, scope: !2979)
!3021 = !DILocation(line: 582, column: 6, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !2979, file: !1081, line: 582, column: 6)
!3023 = !DILocation(line: 582, column: 10, scope: !3022)
!3024 = !DILocation(line: 582, column: 6, scope: !2979)
!3025 = !DILocation(line: 583, column: 3, scope: !3022)
!3026 = !DILocation(line: 584, column: 5, scope: !2979)
!3027 = !DILocation(line: 586, column: 42, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !2979, file: !1081, line: 586, column: 6)
!3029 = !DILocation(line: 586, column: 24, scope: !3028)
!3030 = !DILocation(line: 586, column: 9, scope: !3028)
!3031 = !DILocation(line: 586, column: 20, scope: !3028)
!3032 = !DILocation(line: 586, column: 64, scope: !3028)
!3033 = !DILocation(line: 586, column: 46, scope: !3034)
!3034 = !DILexicalBlockFile(scope: !3028, file: !1081, discriminator: 1)
!3035 = !DILocation(line: 586, column: 31, scope: !3028)
!3036 = !DILocation(line: 586, column: 19, scope: !3028)
!3037 = !DILocation(line: 586, column: 7, scope: !3038)
!3038 = !DILexicalBlockFile(scope: !3028, file: !1081, discriminator: 2)
!3039 = !DILocation(line: 586, column: 7, scope: !3028)
!3040 = !DILocation(line: 586, column: 6, scope: !2979)
!3041 = !DILocation(line: 587, column: 22, scope: !3028)
!3042 = !DILocation(line: 587, column: 34, scope: !3028)
!3043 = !DILocation(line: 587, column: 40, scope: !3028)
!3044 = !DILocation(line: 587, column: 38, scope: !3028)
!3045 = !DILocation(line: 587, column: 45, scope: !3028)
!3046 = !DILocation(line: 587, column: 28, scope: !3028)
!3047 = !DILocation(line: 587, column: 12, scope: !3028)
!3048 = !DILocation(line: 587, column: 10, scope: !3028)
!3049 = !DILocation(line: 587, column: 3, scope: !3028)
!3050 = !DILocation(line: 588, column: 12, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3028, file: !1081, line: 588, column: 11)
!3052 = !DILocation(line: 588, column: 25, scope: !3051)
!3053 = !DILocation(line: 588, column: 29, scope: !3054)
!3054 = !DILexicalBlockFile(scope: !3051, file: !1081, discriminator: 1)
!3055 = !DILocation(line: 588, column: 28, scope: !3054)
!3056 = !DILocation(line: 588, column: 33, scope: !3054)
!3057 = !DILocation(line: 588, column: 40, scope: !3054)
!3058 = !DILocation(line: 588, column: 58, scope: !3059)
!3059 = !DILexicalBlockFile(scope: !3051, file: !1081, discriminator: 2)
!3060 = !DILocation(line: 588, column: 51, scope: !3059)
!3061 = !DILocation(line: 588, column: 49, scope: !3059)
!3062 = !DILocation(line: 588, column: 69, scope: !3059)
!3063 = !DILocation(line: 588, column: 11, scope: !3059)
!3064 = !DILocation(line: 589, column: 10, scope: !3051)
!3065 = !DILocation(line: 589, column: 3, scope: !3051)
!3066 = !DILocation(line: 592, column: 36, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3051, file: !1081, line: 590, column: 7)
!3068 = !DILocation(line: 592, column: 48, scope: !3067)
!3069 = !DILocation(line: 592, column: 53, scope: !3067)
!3070 = !DILocation(line: 592, column: 52, scope: !3067)
!3071 = !DILocation(line: 592, column: 41, scope: !3067)
!3072 = !DILocation(line: 592, column: 26, scope: !3067)
!3073 = !DILocation(line: 592, column: 24, scope: !3067)
!3074 = !DILocation(line: 596, column: 7, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !2979, file: !1081, line: 596, column: 6)
!3076 = !DILocation(line: 596, column: 6, scope: !3075)
!3077 = !DILocation(line: 596, column: 11, scope: !3075)
!3078 = !DILocation(line: 596, column: 6, scope: !2979)
!3079 = !DILocation(line: 598, column: 19, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3075, file: !1081, line: 596, column: 19)
!3081 = !DILocation(line: 598, column: 22, scope: !3080)
!3082 = !DILocation(line: 598, column: 10, scope: !3080)
!3083 = !DILocation(line: 598, column: 8, scope: !3080)
!3084 = !DILocation(line: 599, column: 2, scope: !3080)
!3085 = !DILocation(line: 600, column: 19, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3075, file: !1081, line: 599, column: 9)
!3087 = !DILocation(line: 600, column: 10, scope: !3086)
!3088 = !DILocation(line: 600, column: 8, scope: !3086)
!3089 = !DILocation(line: 601, column: 16, scope: !3086)
!3090 = !DILocation(line: 601, column: 9, scope: !3086)
!3091 = !DILocation(line: 601, column: 7, scope: !3086)
!3092 = !DILocation(line: 602, column: 7, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3086, file: !1081, line: 602, column: 7)
!3094 = !DILocation(line: 602, column: 11, scope: !3093)
!3095 = !DILocation(line: 602, column: 7, scope: !3086)
!3096 = !DILocation(line: 603, column: 4, scope: !3093)
!3097 = distinct !{!3097, !3096}
!3098 = !DILocation(line: 603, column: 19, scope: !3099)
!3099 = !DILexicalBlockFile(scope: !3100, file: !1081, discriminator: 1)
!3100 = distinct !DILexicalBlock(scope: !3093, file: !1081, line: 603, column: 7)
!3101 = !DILocation(line: 603, column: 22, scope: !3099)
!3102 = !DILocation(line: 603, column: 28, scope: !3099)
!3103 = !DILocation(line: 603, column: 31, scope: !3099)
!3104 = !DILocation(line: 603, column: 44, scope: !3099)
!3105 = !DILocation(line: 603, column: 47, scope: !3099)
!3106 = !DILocation(line: 603, column: 37, scope: !3099)
!3107 = !DILocation(line: 603, column: 9, scope: !3108)
!3108 = !DILexicalBlockFile(scope: !3099, file: !1081, discriminator: 3)
!3109 = !DILocation(line: 603, column: 54, scope: !3099)
!3110 = !DILocation(line: 603, column: 54, scope: !3111)
!3111 = !DILexicalBlockFile(scope: !3100, file: !1081, discriminator: 2)
!3112 = !DILocation(line: 606, column: 56, scope: !2979)
!3113 = !DILocation(line: 606, column: 38, scope: !2979)
!3114 = !DILocation(line: 606, column: 23, scope: !2979)
!3115 = !DILocation(line: 606, column: 35, scope: !2979)
!3116 = !DILocation(line: 606, column: 12, scope: !3117)
!3117 = !DILexicalBlockFile(scope: !2979, file: !1081, discriminator: 1)
!3118 = !DILocation(line: 606, column: 10, scope: !2979)
!3119 = !DILocation(line: 607, column: 11, scope: !2979)
!3120 = !DILocation(line: 607, column: 16, scope: !2979)
!3121 = !DILocation(line: 607, column: 23, scope: !2979)
!3122 = !DILocation(line: 607, column: 26, scope: !3117)
!3123 = !DILocation(line: 607, column: 34, scope: !3117)
!3124 = !DILocation(line: 607, column: 47, scope: !3117)
!3125 = !DILocation(line: 607, column: 55, scope: !3117)
!3126 = !DILocation(line: 608, column: 13, scope: !2979)
!3127 = !DILocation(line: 608, column: 19, scope: !2979)
!3128 = !DILocation(line: 608, column: 27, scope: !2979)
!3129 = !DILocation(line: 608, column: 3, scope: !2979)
!3130 = !DILocation(line: 608, column: 41, scope: !2979)
!3131 = !DILocation(line: 607, column: 55, scope: !3132)
!3132 = !DILexicalBlockFile(scope: !2979, file: !1081, discriminator: 2)
!3133 = !DILocation(line: 607, column: 11, scope: !3134)
!3134 = !DILexicalBlockFile(scope: !2979, file: !1081, discriminator: 3)
!3135 = !DILocation(line: 607, column: 9, scope: !3134)
!3136 = !DILocation(line: 610, column: 38, scope: !2979)
!3137 = !DILocation(line: 610, column: 46, scope: !2979)
!3138 = !DILocation(line: 610, column: 69, scope: !2979)
!3139 = !DILocation(line: 610, column: 77, scope: !2979)
!3140 = !DILocation(line: 610, column: 83, scope: !2979)
!3141 = !DILocation(line: 610, column: 92, scope: !2979)
!3142 = !DILocation(line: 610, column: 2, scope: !2979)
!3143 = !DILocation(line: 613, column: 9, scope: !2979)
!3144 = !DILocation(line: 613, column: 2, scope: !2979)
!3145 = !DILocation(line: 614, column: 9, scope: !2979)
!3146 = !DILocation(line: 614, column: 2, scope: !2979)
!3147 = !DILocation(line: 615, column: 9, scope: !2979)
!3148 = !DILocation(line: 615, column: 2, scope: !2979)
!3149 = !DILocation(line: 616, column: 1, scope: !2979)
!3150 = !DILocation(line: 616, column: 1, scope: !3117)
!3151 = distinct !DISubprogram(name: "cannot_join", scope: !1081, file: !1081, line: 451, type: !3152, isLocal: true, isDefinition: true, scopeLine: 452, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !1087)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{null, !466, !447, !457}
!3154 = !DILocalVariable(name: "server", arg: 1, scope: !3151, file: !1081, line: 451, type: !466)
!3155 = !DILocation(line: 451, column: 41, scope: !3151)
!3156 = !DILocalVariable(name: "data", arg: 2, scope: !3151, file: !1081, line: 451, type: !447)
!3157 = !DILocation(line: 451, column: 61, scope: !3151)
!3158 = !DILocalVariable(name: "format", arg: 3, scope: !3151, file: !1081, line: 451, type: !457)
!3159 = !DILocation(line: 451, column: 71, scope: !3151)
!3160 = !DILocalVariable(name: "params", scope: !3151, file: !1081, line: 453, type: !485)
!3161 = !DILocation(line: 453, column: 8, scope: !3151)
!3162 = !DILocalVariable(name: "channel", scope: !3151, file: !1081, line: 453, type: !485)
!3163 = !DILocation(line: 453, column: 17, scope: !3151)
!3164 = !DILocation(line: 455, column: 2, scope: !3151)
!3165 = distinct !{!3165, !3164}
!3166 = !DILocation(line: 455, column: 10, scope: !3167)
!3167 = !DILexicalBlockFile(scope: !3168, file: !1081, discriminator: 1)
!3168 = distinct !DILexicalBlock(scope: !3169, file: !1081, line: 455, column: 10)
!3169 = distinct !DILexicalBlock(scope: !3151, file: !1081, line: 455, column: 4)
!3170 = !DILocation(line: 455, column: 15, scope: !3167)
!3171 = !DILocation(line: 455, column: 5, scope: !3172)
!3172 = !DILexicalBlockFile(scope: !3173, file: !1081, discriminator: 2)
!3173 = distinct !DILexicalBlock(scope: !3168, file: !1081, line: 455, column: 3)
!3174 = !DILocation(line: 455, column: 14, scope: !3175)
!3175 = !DILexicalBlockFile(scope: !3176, file: !1081, discriminator: 3)
!3176 = distinct !DILexicalBlock(scope: !3168, file: !1081, line: 455, column: 12)
!3177 = !DILocation(line: 455, column: 99, scope: !3175)
!3178 = !DILocation(line: 455, column: 110, scope: !3179)
!3179 = !DILexicalBlockFile(scope: !3169, file: !1081, discriminator: 4)
!3180 = !DILocation(line: 457, column: 28, scope: !3151)
!3181 = !DILocation(line: 457, column: 11, scope: !3151)
!3182 = !DILocation(line: 457, column: 9, scope: !3151)
!3183 = !DILocation(line: 458, column: 38, scope: !3151)
!3184 = !DILocation(line: 458, column: 18, scope: !3151)
!3185 = !DILocation(line: 458, column: 26, scope: !3151)
!3186 = !DILocation(line: 458, column: 2, scope: !3151)
!3187 = !DILocation(line: 459, column: 9, scope: !3151)
!3188 = !DILocation(line: 459, column: 2, scope: !3151)
!3189 = !DILocation(line: 460, column: 1, scope: !3151)
!3190 = !DILocation(line: 460, column: 1, scope: !3191)
!3191 = !DILexicalBlockFile(scope: !3151, file: !1081, discriminator: 1)
