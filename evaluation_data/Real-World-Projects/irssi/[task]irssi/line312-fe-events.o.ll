; ModuleID = './line312-fe-events.o.i'
source_filename = "./line312-fe-events.o.i"
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
%struct._QUERY_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, i8 }
%struct._REDIRECT_REC = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GTimeVal = type { i64, i64 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GHashTable = type opaque
%struct.modes_type = type { void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, i8 }
%struct._IRC_CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._IRC_SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)*, %struct._GSList*, i64, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"fe-common/irc\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"event privmsg\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"ctcp action\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"event notice\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"event join\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"event part\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"event quit\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"event kick\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"event kill\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"event nick\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"event mode\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"event pong\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"event invite\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"event topic\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"event error\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"event wallops\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"event silence\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"default event\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"channel sync\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"event connected\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"nickfind event whois\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"ban type changed\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"whois event not found\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"whowas event end\00", align 1
@__func__.event_privmsg = private unnamed_addr constant [14 x i8] c"event_privmsg\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@.str.25 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"message irc op_public\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"message public\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"message private\00", align 1
@__func__.ctcp_action = private unnamed_addr constant [12 x i8] c"ctcp_action\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"message irc action\00", align 1
@__func__.event_notice = private unnamed_addr constant [13 x i8] c"event_notice\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"message irc notice\00", align 1
@__func__.event_join = private unnamed_addr constant [11 x i8] c"event_join\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"message join\00", align 1
@__func__.event_part = private unnamed_addr constant [11 x i8] c"event_part\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"message part\00", align 1
@__func__.event_quit = private unnamed_addr constant [11 x i8] c"event_quit\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"message quit\00", align 1
@__func__.event_kick = private unnamed_addr constant [11 x i8] c"event_kick\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"message kick\00", align 1
@__func__.event_kill = private unnamed_addr constant [11 x i8] c"event_kill\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@__func__.event_nick = private unnamed_addr constant [11 x i8] c"event_nick\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"message own_nick\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"message nick\00", align 1
@__func__.event_mode = private unnamed_addr constant [11 x i8] c"event_mode\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"message irc mode\00", align 1
@__func__.event_pong = private unnamed_addr constant [11 x i8] c"event_pong\00", align 1
@__func__.event_invite = private unnamed_addr constant [13 x i8] c"event_invite\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"message invite\00", align 1
@__func__.event_topic = private unnamed_addr constant [12 x i8] c"event_topic\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"message topic\00", align 1
@__func__.event_error = private unnamed_addr constant [12 x i8] c"event_error\00", align 1
@__func__.event_wallops = private unnamed_addr constant [14 x i8] c"event_wallops\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"\01ACTION \00", align 1
@__func__.event_silence = private unnamed_addr constant [14 x i8] c"event_silence\00", align 1
@.str.43 = private unnamed_addr constant [29 x i8] c"*data == '+' || *data == '-'\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c"default event numeric\00", align 1
@__func__.channel_sync = private unnamed_addr constant [13 x i8] c"channel_sync\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"channel != NULL\00", align 1
@__func__.event_connected = private unnamed_addr constant [16 x i8] c"event_connected\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"server != NULL\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"whois\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"event 311\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"event empty\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"WHOIS %s\00", align 1
@__func__.event_nickfind_whois = private unnamed_addr constant [21 x i8] c"event_nickfind_whois\00", align 1
@.str.52 = private unnamed_addr constant [20 x i8] c"Error, using Normal\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"Domain\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"Custom:\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c" Nick\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c" User\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c" Host\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c" Domain\00", align 1
@__func__.sig_whois_event_not_found = private unnamed_addr constant [26 x i8] c"sig_whois_event_not_found\00", align 1
@__func__.sig_whowas_event_end = private unnamed_addr constant [21 x i8] c"sig_whowas_event_end\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"event 369\00", align 1

; Function Attrs: nounwind uwtable
define void @fe_events_init() #0 !dbg !668 {
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_privmsg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !671
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*)* @ctcp_action to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !672
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_notice to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !673
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_join to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !674
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_part to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !675
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_quit to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !676
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_kick to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !677
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_kill to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !678
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_nick to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !679
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_mode to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !680
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_pong to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !681
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_invite to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !682
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_topic to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !683
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_error to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !684
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_wallops to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !685
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_silence to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !686
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !687
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*)* @channel_sync to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !688
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @event_connected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !689
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_nickfind_whois to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !690
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @event_ban_type_changed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !691
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @sig_whois_event_not_found to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !692
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @sig_whowas_event_end to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !693
  ret void, !dbg !694
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @event_privmsg(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !695 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !906, metadata !907), !dbg !908
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !909, metadata !907), !dbg !910
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !911, metadata !907), !dbg !912
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !913, metadata !907), !dbg !914
  call void @llvm.dbg.declare(metadata i8** %9, metadata !915, metadata !907), !dbg !916
  call void @llvm.dbg.declare(metadata i8** %10, metadata !917, metadata !907), !dbg !918
  call void @llvm.dbg.declare(metadata i8** %11, metadata !919, metadata !907), !dbg !920
  call void @llvm.dbg.declare(metadata i8** %12, metadata !921, metadata !907), !dbg !922
  br label %14, !dbg !923, !llvm.loop !924

; <label>:14:                                     ; preds = %4
  %15 = load i8*, i8** %6, align 8, !dbg !925
  %16 = icmp ne i8* %15, null, !dbg !929
  br i1 %16, label %17, label %18, !dbg !925

; <label>:17:                                     ; preds = %14
  br label %19, !dbg !930

; <label>:18:                                     ; preds = %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.event_privmsg, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0)), !dbg !933
  br label %106, !dbg !936

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !937

; <label>:20:                                     ; preds = %19
  %21 = load i8*, i8** %6, align 8, !dbg !939
  %22 = call i8* (i8*, i32, ...) @event_get_params(i8* %21, i32 8194, i8** %10, i8** %11), !dbg !940
  store i8* %22, i8** %9, align 8, !dbg !941
  %23 = load i8*, i8** %7, align 8, !dbg !942
  %24 = icmp eq i8* %23, null, !dbg !944
  br i1 %24, label %25, label %29, !dbg !945

; <label>:25:                                     ; preds = %20
  %26 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !946
  %27 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %26, i32 0, i32 40, !dbg !948
  %28 = load i8*, i8** %27, align 8, !dbg !948
  store i8* %28, i8** %7, align 8, !dbg !949
  br label %29, !dbg !950

; <label>:29:                                     ; preds = %25, %20
  %30 = load i8*, i8** %8, align 8, !dbg !951
  %31 = icmp eq i8* %30, null, !dbg !953
  br i1 %31, label %32, label %33, !dbg !954

; <label>:32:                                     ; preds = %29
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i32 0, i32 0), i8** %8, align 8, !dbg !955
  br label %33, !dbg !957

; <label>:33:                                     ; preds = %32, %29
  %34 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !958
  %35 = load i8*, i8** %10, align 8, !dbg !960
  %36 = call i32 @fe_channel_is_opchannel(%struct._IRC_SERVER_REC* %34, i8* %35), !dbg !961
  %37 = icmp ne i32 %36, 0, !dbg !961
  br i1 %37, label %38, label %55, !dbg !962

; <label>:38:                                     ; preds = %33
  call void @llvm.dbg.declare(metadata i8** %13, metadata !963, metadata !907), !dbg !965
  %39 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !966
  %40 = load i8*, i8** %10, align 8, !dbg !967
  %41 = call i8* @fe_channel_skip_prefix(%struct._IRC_SERVER_REC* %39, i8* %40), !dbg !968
  store i8* %41, i8** %13, align 8, !dbg !965
  %42 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !969
  %43 = bitcast %struct._IRC_SERVER_REC* %42 to i8*, !dbg !969
  %44 = call i8* @module_check_cast(i8* %43, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)), !dbg !970
  %45 = bitcast i8* %44 to %struct._SERVER_REC*, !dbg !971
  %46 = load i8*, i8** %11, align 8, !dbg !972
  %47 = load i8*, i8** %13, align 8, !dbg !973
  %48 = call i8* @recode_in(%struct._SERVER_REC* %45, i8* %46, i8* %47), !dbg !974
  store i8* %48, i8** %12, align 8, !dbg !976
  %49 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !977
  %50 = load i8*, i8** %12, align 8, !dbg !978
  %51 = load i8*, i8** %7, align 8, !dbg !979
  %52 = load i8*, i8** %8, align 8, !dbg !980
  %53 = load i8*, i8** %10, align 8, !dbg !981
  %54 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i32 0, i32 0), i32 5, %struct._IRC_SERVER_REC* %49, i8* %50, i8* %51, i8* %52, i8* %53), !dbg !982
  br label %103, !dbg !983

; <label>:55:                                     ; preds = %33
  %56 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !984
  %57 = bitcast %struct._IRC_SERVER_REC* %56 to i8*, !dbg !984
  %58 = call i8* @module_check_cast(i8* %57, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)), !dbg !986
  %59 = bitcast i8* %58 to %struct._SERVER_REC*, !dbg !987
  %60 = load i8*, i8** %11, align 8, !dbg !988
  %61 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !989
  %62 = bitcast %struct._IRC_SERVER_REC* %61 to i8*, !dbg !989
  %63 = call i8* @module_check_cast(i8* %62, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)), !dbg !990
  %64 = bitcast i8* %63 to %struct._SERVER_REC*, !dbg !992
  %65 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %64, i32 0, i32 27, !dbg !993
  %66 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %65, align 8, !dbg !993
  %67 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !994
  %68 = bitcast %struct._IRC_SERVER_REC* %67 to i8*, !dbg !994
  %69 = call i8* @module_check_cast(i8* %68, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)), !dbg !995
  %70 = bitcast i8* %69 to %struct._SERVER_REC*, !dbg !997
  %71 = load i8*, i8** %10, align 8, !dbg !984
  %72 = call i32 %66(%struct._SERVER_REC* %70, i8* %71), !dbg !998
  %73 = icmp ne i32 %72, 0, !dbg !1000
  br i1 %73, label %74, label %76, !dbg !1001

; <label>:74:                                     ; preds = %55
  %75 = load i8*, i8** %10, align 8, !dbg !1002
  br label %78, !dbg !1004

; <label>:76:                                     ; preds = %55
  %77 = load i8*, i8** %7, align 8, !dbg !1005
  br label %78, !dbg !1007

; <label>:78:                                     ; preds = %76, %74
  %79 = phi i8* [ %75, %74 ], [ %77, %76 ], !dbg !1008
  %80 = call i8* @recode_in(%struct._SERVER_REC* %59, i8* %60, i8* %79), !dbg !1010
  store i8* %80, i8** %12, align 8, !dbg !1011
  %81 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1012
  %82 = bitcast %struct._IRC_SERVER_REC* %81 to i8*, !dbg !1012
  %83 = call i8* @module_check_cast(i8* %82, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)), !dbg !1013
  %84 = bitcast i8* %83 to %struct._SERVER_REC*, !dbg !1014
  %85 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %84, i32 0, i32 27, !dbg !1015
  %86 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %85, align 8, !dbg !1015
  %87 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1016
  %88 = bitcast %struct._IRC_SERVER_REC* %87 to i8*, !dbg !1016
  %89 = call i8* @module_check_cast(i8* %88, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)), !dbg !1017
  %90 = bitcast i8* %89 to %struct._SERVER_REC*, !dbg !1018
  %91 = load i8*, i8** %10, align 8, !dbg !1019
  %92 = call i32 %86(%struct._SERVER_REC* %90, i8* %91), !dbg !1020
  %93 = icmp ne i32 %92, 0, !dbg !1021
  %94 = select i1 %93, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), !dbg !1021
  %95 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1022
  %96 = load i8*, i8** %12, align 8, !dbg !1023
  %97 = load i8*, i8** %7, align 8, !dbg !1024
  %98 = load i8*, i8** %8, align 8, !dbg !1025
  %99 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1026
  %100 = load i8*, i8** %10, align 8, !dbg !1027
  %101 = call i8* @get_visible_target(%struct._IRC_SERVER_REC* %99, i8* %100), !dbg !1028
  %102 = call i32 (i8*, i32, ...) @signal_emit(i8* %94, i32 5, %struct._IRC_SERVER_REC* %95, i8* %96, i8* %97, i8* %98, i8* %101), !dbg !1029
  br label %103

; <label>:103:                                    ; preds = %78, %38
  %104 = load i8*, i8** %9, align 8, !dbg !1030
  call void @g_free(i8* %104), !dbg !1031
  %105 = load i8*, i8** %12, align 8, !dbg !1032
  call void @g_free(i8* %105), !dbg !1033
  br label %106, !dbg !1034

; <label>:106:                                    ; preds = %103, %18
  ret void, !dbg !1035
}

; Function Attrs: nounwind uwtable
define internal void @ctcp_action(%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*) #0 !dbg !1037 {
  %6 = alloca %struct._IRC_SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %6, metadata !1040, metadata !907), !dbg !1041
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1042, metadata !907), !dbg !1043
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1044, metadata !907), !dbg !1045
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1046, metadata !907), !dbg !1047
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1048, metadata !907), !dbg !1049
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1050, metadata !907), !dbg !1051
  br label %12, !dbg !1052, !llvm.loop !1053

; <label>:12:                                     ; preds = %5
  %13 = load i8*, i8** %7, align 8, !dbg !1054
  %14 = icmp ne i8* %13, null, !dbg !1058
  br i1 %14, label %15, label %16, !dbg !1054

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !1059

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.ctcp_action, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0)), !dbg !1062
  br label %35, !dbg !1065

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !1066

; <label>:18:                                     ; preds = %17
  %19 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1068
  %20 = bitcast %struct._IRC_SERVER_REC* %19 to i8*, !dbg !1068
  %21 = call i8* @module_check_cast(i8* %20, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)), !dbg !1069
  %22 = bitcast i8* %21 to %struct._SERVER_REC*, !dbg !1070
  %23 = load i8*, i8** %7, align 8, !dbg !1071
  %24 = load i8*, i8** %10, align 8, !dbg !1072
  %25 = call i8* @recode_in(%struct._SERVER_REC* %22, i8* %23, i8* %24), !dbg !1073
  store i8* %25, i8** %11, align 8, !dbg !1075
  %26 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1076
  %27 = load i8*, i8** %11, align 8, !dbg !1077
  %28 = load i8*, i8** %8, align 8, !dbg !1078
  %29 = load i8*, i8** %9, align 8, !dbg !1079
  %30 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1080
  %31 = load i8*, i8** %10, align 8, !dbg !1081
  %32 = call i8* @get_visible_target(%struct._IRC_SERVER_REC* %30, i8* %31), !dbg !1082
  %33 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i32 0, i32 0), i32 5, %struct._IRC_SERVER_REC* %26, i8* %27, i8* %28, i8* %29, i8* %32), !dbg !1083
  %34 = load i8*, i8** %11, align 8, !dbg !1084
  call void @g_free(i8* %34), !dbg !1085
  br label %35, !dbg !1086

; <label>:35:                                     ; preds = %18, %16
  ret void, !dbg !1087
}

; Function Attrs: nounwind uwtable
define internal void @event_notice(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !1088 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1089, metadata !907), !dbg !1090
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1091, metadata !907), !dbg !1092
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1093, metadata !907), !dbg !1094
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1095, metadata !907), !dbg !1096
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1097, metadata !907), !dbg !1098
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1099, metadata !907), !dbg !1100
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1101, metadata !907), !dbg !1102
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1103, metadata !907), !dbg !1104
  br label %13, !dbg !1105, !llvm.loop !1106

; <label>:13:                                     ; preds = %4
  %14 = load i8*, i8** %6, align 8, !dbg !1107
  %15 = icmp ne i8* %14, null, !dbg !1111
  br i1 %15, label %16, label %17, !dbg !1107

; <label>:16:                                     ; preds = %13
  br label %18, !dbg !1112

; <label>:17:                                     ; preds = %13
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.event_notice, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0)), !dbg !1115
  br label %59, !dbg !1118

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !1119

; <label>:19:                                     ; preds = %18
  %20 = load i8*, i8** %6, align 8, !dbg !1121
  %21 = call i8* (i8*, i32, ...) @event_get_params(i8* %20, i32 8194, i8** %10, i8** %11), !dbg !1122
  store i8* %21, i8** %9, align 8, !dbg !1123
  %22 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1124
  %23 = bitcast %struct._IRC_SERVER_REC* %22 to i8*, !dbg !1124
  %24 = call i8* @module_check_cast(i8* %23, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)), !dbg !1125
  %25 = bitcast i8* %24 to %struct._SERVER_REC*, !dbg !1126
  %26 = load i8*, i8** %11, align 8, !dbg !1127
  %27 = load i8*, i8** %10, align 8, !dbg !1128
  %28 = call i8* @recode_in(%struct._SERVER_REC* %25, i8* %26, i8* %27), !dbg !1129
  store i8* %28, i8** %12, align 8, !dbg !1131
  %29 = load i8*, i8** %7, align 8, !dbg !1132
  %30 = icmp eq i8* %29, null, !dbg !1134
  br i1 %30, label %31, label %48, !dbg !1135

; <label>:31:                                     ; preds = %19
  %32 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1136
  %33 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %32, i32 0, i32 40, !dbg !1138
  %34 = load i8*, i8** %33, align 8, !dbg !1138
  %35 = icmp eq i8* %34, null, !dbg !1139
  br i1 %35, label %36, label %42, !dbg !1136

; <label>:36:                                     ; preds = %31
  %37 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1140
  %38 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %37, i32 0, i32 3, !dbg !1141
  %39 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %38, align 8, !dbg !1141
  %40 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %39, i32 0, i32 10, !dbg !1142
  %41 = load i8*, i8** %40, align 8, !dbg !1142
  br label %46, !dbg !1143

; <label>:42:                                     ; preds = %31
  %43 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1145
  %44 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %43, i32 0, i32 40, !dbg !1146
  %45 = load i8*, i8** %44, align 8, !dbg !1146
  br label %46, !dbg !1147

; <label>:46:                                     ; preds = %42, %36
  %47 = phi i8* [ %41, %36 ], [ %45, %42 ], !dbg !1149
  store i8* %47, i8** %7, align 8, !dbg !1151
  br label %48, !dbg !1152

; <label>:48:                                     ; preds = %46, %19
  %49 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1153
  %50 = load i8*, i8** %12, align 8, !dbg !1154
  %51 = load i8*, i8** %7, align 8, !dbg !1155
  %52 = load i8*, i8** %8, align 8, !dbg !1156
  %53 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1157
  %54 = load i8*, i8** %10, align 8, !dbg !1158
  %55 = call i8* @get_visible_target(%struct._IRC_SERVER_REC* %53, i8* %54), !dbg !1159
  %56 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i32 0, i32 0), i32 5, %struct._IRC_SERVER_REC* %49, i8* %50, i8* %51, i8* %52, i8* %55), !dbg !1160
  %57 = load i8*, i8** %9, align 8, !dbg !1161
  call void @g_free(i8* %57), !dbg !1162
  %58 = load i8*, i8** %12, align 8, !dbg !1163
  call void @g_free(i8* %58), !dbg !1164
  br label %59, !dbg !1165

; <label>:59:                                     ; preds = %48, %17
  ret void, !dbg !1166
}

; Function Attrs: nounwind uwtable
define internal void @event_join(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !1167 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1168, metadata !907), !dbg !1169
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1170, metadata !907), !dbg !1171
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1172, metadata !907), !dbg !1173
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1174, metadata !907), !dbg !1175
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1176, metadata !907), !dbg !1177
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1178, metadata !907), !dbg !1179
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1180, metadata !907), !dbg !1181
  br label %12, !dbg !1182, !llvm.loop !1183

; <label>:12:                                     ; preds = %4
  %13 = load i8*, i8** %6, align 8, !dbg !1184
  %14 = icmp ne i8* %13, null, !dbg !1188
  br i1 %14, label %15, label %16, !dbg !1184

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !1189

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.event_join, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0)), !dbg !1192
  br label %36, !dbg !1195

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !1196

; <label>:18:                                     ; preds = %17
  %19 = load i8*, i8** %6, align 8, !dbg !1198
  %20 = call i8* (i8*, i32, ...) @event_get_params(i8* %19, i32 1, i8** %10), !dbg !1199
  store i8* %20, i8** %9, align 8, !dbg !1200
  %21 = load i8*, i8** %10, align 8, !dbg !1201
  %22 = call i8* @strchr(i8* %21, i32 7) #6, !dbg !1202
  store i8* %22, i8** %11, align 8, !dbg !1203
  %23 = load i8*, i8** %11, align 8, !dbg !1204
  %24 = icmp ne i8* %23, null, !dbg !1206
  br i1 %24, label %25, label %27, !dbg !1207

; <label>:25:                                     ; preds = %18
  %26 = load i8*, i8** %11, align 8, !dbg !1208
  store i8 0, i8* %26, align 1, !dbg !1210
  br label %27, !dbg !1211

; <label>:27:                                     ; preds = %25, %18
  %28 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1212
  %29 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1213
  %30 = load i8*, i8** %10, align 8, !dbg !1214
  %31 = call i8* @get_visible_target(%struct._IRC_SERVER_REC* %29, i8* %30), !dbg !1215
  %32 = load i8*, i8** %7, align 8, !dbg !1216
  %33 = load i8*, i8** %8, align 8, !dbg !1217
  %34 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0), i32 4, %struct._IRC_SERVER_REC* %28, i8* %31, i8* %32, i8* %33), !dbg !1218
  %35 = load i8*, i8** %9, align 8, !dbg !1219
  call void @g_free(i8* %35), !dbg !1220
  br label %36, !dbg !1221

; <label>:36:                                     ; preds = %27, %16
  ret void, !dbg !1222
}

; Function Attrs: nounwind uwtable
define internal void @event_part(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !1224 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1225, metadata !907), !dbg !1226
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1227, metadata !907), !dbg !1228
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1229, metadata !907), !dbg !1230
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1231, metadata !907), !dbg !1232
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1233, metadata !907), !dbg !1234
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1235, metadata !907), !dbg !1236
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1237, metadata !907), !dbg !1238
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1239, metadata !907), !dbg !1240
  br label %13, !dbg !1241, !llvm.loop !1242

; <label>:13:                                     ; preds = %4
  %14 = load i8*, i8** %6, align 8, !dbg !1243
  %15 = icmp ne i8* %14, null, !dbg !1247
  br i1 %15, label %16, label %17, !dbg !1243

; <label>:16:                                     ; preds = %13
  br label %18, !dbg !1248

; <label>:17:                                     ; preds = %13
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.event_part, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0)), !dbg !1251
  br label %39, !dbg !1254

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !1255

; <label>:19:                                     ; preds = %18
  %20 = load i8*, i8** %6, align 8, !dbg !1257
  %21 = call i8* (i8*, i32, ...) @event_get_params(i8* %20, i32 8194, i8** %10, i8** %11), !dbg !1258
  store i8* %21, i8** %9, align 8, !dbg !1259
  %22 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1260
  %23 = bitcast %struct._IRC_SERVER_REC* %22 to i8*, !dbg !1260
  %24 = call i8* @module_check_cast(i8* %23, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)), !dbg !1261
  %25 = bitcast i8* %24 to %struct._SERVER_REC*, !dbg !1262
  %26 = load i8*, i8** %11, align 8, !dbg !1263
  %27 = load i8*, i8** %10, align 8, !dbg !1264
  %28 = call i8* @recode_in(%struct._SERVER_REC* %25, i8* %26, i8* %27), !dbg !1265
  store i8* %28, i8** %12, align 8, !dbg !1267
  %29 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1268
  %30 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1269
  %31 = load i8*, i8** %10, align 8, !dbg !1270
  %32 = call i8* @get_visible_target(%struct._IRC_SERVER_REC* %30, i8* %31), !dbg !1271
  %33 = load i8*, i8** %7, align 8, !dbg !1272
  %34 = load i8*, i8** %8, align 8, !dbg !1273
  %35 = load i8*, i8** %12, align 8, !dbg !1274
  %36 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0), i32 5, %struct._IRC_SERVER_REC* %29, i8* %32, i8* %33, i8* %34, i8* %35), !dbg !1275
  %37 = load i8*, i8** %9, align 8, !dbg !1276
  call void @g_free(i8* %37), !dbg !1277
  %38 = load i8*, i8** %12, align 8, !dbg !1278
  call void @g_free(i8* %38), !dbg !1279
  br label %39, !dbg !1280

; <label>:39:                                     ; preds = %19, %17
  ret void, !dbg !1281
}

; Function Attrs: nounwind uwtable
define internal void @event_quit(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !1282 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1283, metadata !907), !dbg !1284
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1285, metadata !907), !dbg !1286
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1287, metadata !907), !dbg !1288
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1289, metadata !907), !dbg !1290
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1291, metadata !907), !dbg !1292
  br label %10, !dbg !1293, !llvm.loop !1294

; <label>:10:                                     ; preds = %4
  %11 = load i8*, i8** %6, align 8, !dbg !1295
  %12 = icmp ne i8* %11, null, !dbg !1299
  br i1 %12, label %13, label %14, !dbg !1295

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !1300

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.event_quit, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0)), !dbg !1303
  br label %38, !dbg !1306

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !1307

; <label>:16:                                     ; preds = %15
  %17 = load i8*, i8** %6, align 8, !dbg !1309
  %18 = load i8, i8* %17, align 1, !dbg !1311
  %19 = sext i8 %18 to i32, !dbg !1311
  %20 = icmp eq i32 %19, 58, !dbg !1312
  br i1 %20, label %21, label %24, !dbg !1313

; <label>:21:                                     ; preds = %16
  %22 = load i8*, i8** %6, align 8, !dbg !1314
  %23 = getelementptr inbounds i8, i8* %22, i32 1, !dbg !1314
  store i8* %23, i8** %6, align 8, !dbg !1314
  br label %24, !dbg !1316

; <label>:24:                                     ; preds = %21, %16
  %25 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1317
  %26 = bitcast %struct._IRC_SERVER_REC* %25 to i8*, !dbg !1317
  %27 = call i8* @module_check_cast(i8* %26, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)), !dbg !1318
  %28 = bitcast i8* %27 to %struct._SERVER_REC*, !dbg !1319
  %29 = load i8*, i8** %6, align 8, !dbg !1320
  %30 = load i8*, i8** %7, align 8, !dbg !1321
  %31 = call i8* @recode_in(%struct._SERVER_REC* %28, i8* %29, i8* %30), !dbg !1322
  store i8* %31, i8** %9, align 8, !dbg !1324
  %32 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1325
  %33 = load i8*, i8** %7, align 8, !dbg !1326
  %34 = load i8*, i8** %8, align 8, !dbg !1327
  %35 = load i8*, i8** %9, align 8, !dbg !1328
  %36 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0), i32 4, %struct._IRC_SERVER_REC* %32, i8* %33, i8* %34, i8* %35), !dbg !1329
  %37 = load i8*, i8** %9, align 8, !dbg !1330
  call void @g_free(i8* %37), !dbg !1331
  br label %38, !dbg !1332

; <label>:38:                                     ; preds = %24, %14
  ret void, !dbg !1333
}

; Function Attrs: nounwind uwtable
define internal void @event_kick(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !1334 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1335, metadata !907), !dbg !1336
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1337, metadata !907), !dbg !1338
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1339, metadata !907), !dbg !1340
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1341, metadata !907), !dbg !1342
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1343, metadata !907), !dbg !1344
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1345, metadata !907), !dbg !1346
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1347, metadata !907), !dbg !1348
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1349, metadata !907), !dbg !1350
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1351, metadata !907), !dbg !1352
  br label %14, !dbg !1353, !llvm.loop !1354

; <label>:14:                                     ; preds = %4
  %15 = load i8*, i8** %6, align 8, !dbg !1355
  %16 = icmp ne i8* %15, null, !dbg !1359
  br i1 %16, label %17, label %18, !dbg !1355

; <label>:17:                                     ; preds = %14
  br label %19, !dbg !1360

; <label>:18:                                     ; preds = %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.event_kick, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0)), !dbg !1363
  br label %41, !dbg !1366

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !1367

; <label>:20:                                     ; preds = %19
  %21 = load i8*, i8** %6, align 8, !dbg !1369
  %22 = call i8* (i8*, i32, ...) @event_get_params(i8* %21, i32 8195, i8** %10, i8** %11, i8** %12), !dbg !1370
  store i8* %22, i8** %9, align 8, !dbg !1371
  %23 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1372
  %24 = bitcast %struct._IRC_SERVER_REC* %23 to i8*, !dbg !1372
  %25 = call i8* @module_check_cast(i8* %24, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)), !dbg !1373
  %26 = bitcast i8* %25 to %struct._SERVER_REC*, !dbg !1374
  %27 = load i8*, i8** %12, align 8, !dbg !1375
  %28 = load i8*, i8** %10, align 8, !dbg !1376
  %29 = call i8* @recode_in(%struct._SERVER_REC* %26, i8* %27, i8* %28), !dbg !1377
  store i8* %29, i8** %13, align 8, !dbg !1379
  %30 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1380
  %31 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1381
  %32 = load i8*, i8** %10, align 8, !dbg !1382
  %33 = call i8* @get_visible_target(%struct._IRC_SERVER_REC* %31, i8* %32), !dbg !1383
  %34 = load i8*, i8** %11, align 8, !dbg !1384
  %35 = load i8*, i8** %7, align 8, !dbg !1385
  %36 = load i8*, i8** %8, align 8, !dbg !1386
  %37 = load i8*, i8** %13, align 8, !dbg !1387
  %38 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0), i32 6, %struct._IRC_SERVER_REC* %30, i8* %33, i8* %34, i8* %35, i8* %36, i8* %37), !dbg !1388
  %39 = load i8*, i8** %9, align 8, !dbg !1389
  call void @g_free(i8* %39), !dbg !1390
  %40 = load i8*, i8** %13, align 8, !dbg !1391
  call void @g_free(i8* %40), !dbg !1392
  br label %41, !dbg !1393

; <label>:41:                                     ; preds = %20, %18
  ret void, !dbg !1394
}

; Function Attrs: nounwind uwtable
define internal void @event_kill(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !1395 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1396, metadata !907), !dbg !1397
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1398, metadata !907), !dbg !1399
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1400, metadata !907), !dbg !1401
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1402, metadata !907), !dbg !1403
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1404, metadata !907), !dbg !1405
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1406, metadata !907), !dbg !1407
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1408, metadata !907), !dbg !1409
  br label %12, !dbg !1410, !llvm.loop !1411

; <label>:12:                                     ; preds = %4
  %13 = load i8*, i8** %6, align 8, !dbg !1412
  %14 = icmp ne i8* %13, null, !dbg !1416
  br i1 %14, label %15, label %16, !dbg !1412

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !1417

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.event_kill, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0)), !dbg !1420
  br label %63, !dbg !1423

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !1424

; <label>:18:                                     ; preds = %17
  %19 = load i8*, i8** %6, align 8, !dbg !1426
  %20 = call i8* (i8*, i32, ...) @event_get_params(i8* %19, i32 8194, i8* null, i8** %10), !dbg !1427
  store i8* %20, i8** %9, align 8, !dbg !1428
  %21 = load i8*, i8** %10, align 8, !dbg !1429
  %22 = call i8* @strstr(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0)) #6, !dbg !1430
  store i8* %22, i8** %11, align 8, !dbg !1431
  %23 = load i8*, i8** %11, align 8, !dbg !1432
  %24 = icmp eq i8* %23, null, !dbg !1434
  br i1 %24, label %34, label %25, !dbg !1435

; <label>:25:                                     ; preds = %18
  %26 = load i8*, i8** %11, align 8, !dbg !1436
  %27 = call i64 @strlen(i8* %26) #6, !dbg !1438
  %28 = sub i64 %27, 1, !dbg !1439
  %29 = load i8*, i8** %11, align 8, !dbg !1440
  %30 = getelementptr inbounds i8, i8* %29, i64 %28, !dbg !1440
  %31 = load i8, i8* %30, align 1, !dbg !1440
  %32 = sext i8 %31 to i32, !dbg !1440
  %33 = icmp ne i32 %32, 41, !dbg !1441
  br i1 %33, label %34, label %36, !dbg !1442

; <label>:34:                                     ; preds = %25, %18
  %35 = load i8*, i8** %10, align 8, !dbg !1443
  store i8* %35, i8** %11, align 8, !dbg !1445
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i32 0, i32 0), i8** %10, align 8, !dbg !1446
  br label %45, !dbg !1447

; <label>:36:                                     ; preds = %25
  %37 = load i8*, i8** %11, align 8, !dbg !1448
  store i8 0, i8* %37, align 1, !dbg !1450
  %38 = load i8*, i8** %11, align 8, !dbg !1451
  %39 = getelementptr inbounds i8, i8* %38, i64 2, !dbg !1451
  store i8* %39, i8** %11, align 8, !dbg !1451
  %40 = load i8*, i8** %11, align 8, !dbg !1452
  %41 = call i64 @strlen(i8* %40) #6, !dbg !1453
  %42 = sub i64 %41, 1, !dbg !1454
  %43 = load i8*, i8** %11, align 8, !dbg !1455
  %44 = getelementptr inbounds i8, i8* %43, i64 %42, !dbg !1455
  store i8 0, i8* %44, align 1, !dbg !1456
  br label %45

; <label>:45:                                     ; preds = %36, %34
  %46 = load i8*, i8** %8, align 8, !dbg !1457
  %47 = icmp ne i8* %46, null, !dbg !1459
  br i1 %47, label %48, label %55, !dbg !1460

; <label>:48:                                     ; preds = %45
  %49 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1461
  %50 = bitcast %struct._IRC_SERVER_REC* %49 to i8*, !dbg !1461
  %51 = load i8*, i8** %7, align 8, !dbg !1463
  %52 = load i8*, i8** %8, align 8, !dbg !1464
  %53 = load i8*, i8** %11, align 8, !dbg !1465
  %54 = load i8*, i8** %10, align 8, !dbg !1466
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %50, i8* null, i32 1, i32 111, i8* %51, i8* %52, i8* %53, i8* %54), !dbg !1467
  br label %61, !dbg !1468

; <label>:55:                                     ; preds = %45
  %56 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1469
  %57 = bitcast %struct._IRC_SERVER_REC* %56 to i8*, !dbg !1469
  %58 = load i8*, i8** %7, align 8, !dbg !1469
  %59 = load i8*, i8** %11, align 8, !dbg !1471
  %60 = load i8*, i8** %10, align 8, !dbg !1472
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %57, i8* null, i32 1, i32 112, i8* %58, i8* %59, i8* %60), !dbg !1473
  br label %61

; <label>:61:                                     ; preds = %55, %48
  %62 = load i8*, i8** %9, align 8, !dbg !1474
  call void @g_free(i8* %62), !dbg !1475
  br label %63, !dbg !1476

; <label>:63:                                     ; preds = %61, %16
  ret void, !dbg !1477
}

; Function Attrs: nounwind uwtable
define internal void @event_nick(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !1479 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1480, metadata !907), !dbg !1481
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1482, metadata !907), !dbg !1483
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1484, metadata !907), !dbg !1485
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1486, metadata !907), !dbg !1487
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1488, metadata !907), !dbg !1489
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1490, metadata !907), !dbg !1491
  br label %11, !dbg !1492, !llvm.loop !1493

; <label>:11:                                     ; preds = %4
  %12 = load i8*, i8** %6, align 8, !dbg !1494
  %13 = icmp ne i8* %12, null, !dbg !1498
  br i1 %13, label %14, label %15, !dbg !1494

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !1499

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.event_nick, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0)), !dbg !1502
  br label %33, !dbg !1505

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !1506

; <label>:17:                                     ; preds = %16
  %18 = load i8*, i8** %6, align 8, !dbg !1508
  %19 = call i8* (i8*, i32, ...) @event_get_params(i8* %18, i32 1, i8** %10), !dbg !1509
  store i8* %19, i8** %9, align 8, !dbg !1510
  %20 = load i8*, i8** %10, align 8, !dbg !1511
  %21 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1512
  %22 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %21, i32 0, i32 7, !dbg !1513
  %23 = load i8*, i8** %22, align 8, !dbg !1513
  %24 = call i32 @g_ascii_strcasecmp(i8* %20, i8* %23), !dbg !1514
  %25 = icmp eq i32 %24, 0, !dbg !1515
  %26 = select i1 %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0), !dbg !1514
  %27 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1516
  %28 = load i8*, i8** %10, align 8, !dbg !1517
  %29 = load i8*, i8** %7, align 8, !dbg !1518
  %30 = load i8*, i8** %8, align 8, !dbg !1519
  %31 = call i32 (i8*, i32, ...) @signal_emit(i8* %26, i32 4, %struct._IRC_SERVER_REC* %27, i8* %28, i8* %29, i8* %30), !dbg !1520
  %32 = load i8*, i8** %9, align 8, !dbg !1522
  call void @g_free(i8* %32), !dbg !1523
  br label %33, !dbg !1524

; <label>:33:                                     ; preds = %17, %15
  ret void, !dbg !1525
}

; Function Attrs: nounwind uwtable
define internal void @event_mode(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !1526 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1527, metadata !907), !dbg !1528
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1529, metadata !907), !dbg !1530
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1531, metadata !907), !dbg !1532
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1533, metadata !907), !dbg !1534
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1535, metadata !907), !dbg !1536
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1537, metadata !907), !dbg !1538
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1539, metadata !907), !dbg !1540
  br label %12, !dbg !1541, !llvm.loop !1542

; <label>:12:                                     ; preds = %4
  %13 = load i8*, i8** %6, align 8, !dbg !1543
  %14 = icmp ne i8* %13, null, !dbg !1547
  br i1 %14, label %15, label %16, !dbg !1543

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !1548

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.event_mode, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0)), !dbg !1551
  br label %31, !dbg !1554

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !1555

; <label>:18:                                     ; preds = %17
  %19 = load i8*, i8** %6, align 8, !dbg !1557
  %20 = call i8* (i8*, i32, ...) @event_get_params(i8* %19, i32 8194, i8** %10, i8** %11), !dbg !1558
  store i8* %20, i8** %9, align 8, !dbg !1559
  %21 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1560
  %22 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1561
  %23 = load i8*, i8** %10, align 8, !dbg !1562
  %24 = call i8* @get_visible_target(%struct._IRC_SERVER_REC* %22, i8* %23), !dbg !1563
  %25 = load i8*, i8** %7, align 8, !dbg !1564
  %26 = load i8*, i8** %8, align 8, !dbg !1565
  %27 = load i8*, i8** %11, align 8, !dbg !1566
  %28 = call i8* @g_strchomp(i8* %27), !dbg !1567
  %29 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i32 0, i32 0), i32 5, %struct._IRC_SERVER_REC* %21, i8* %24, i8* %25, i8* %26, i8* %28), !dbg !1568
  %30 = load i8*, i8** %9, align 8, !dbg !1569
  call void @g_free(i8* %30), !dbg !1570
  br label %31, !dbg !1571

; <label>:31:                                     ; preds = %18, %16
  ret void, !dbg !1572
}

; Function Attrs: nounwind uwtable
define internal void @event_pong(%struct._IRC_SERVER_REC*, i8*, i8*) #0 !dbg !1574 {
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !1577, metadata !907), !dbg !1578
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1579, metadata !907), !dbg !1580
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1581, metadata !907), !dbg !1582
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1583, metadata !907), !dbg !1584
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1585, metadata !907), !dbg !1586
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1587, metadata !907), !dbg !1588
  br label %10, !dbg !1589, !llvm.loop !1590

; <label>:10:                                     ; preds = %3
  %11 = load i8*, i8** %5, align 8, !dbg !1591
  %12 = icmp ne i8* %11, null, !dbg !1595
  br i1 %12, label %13, label %14, !dbg !1591

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !1596

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.event_pong, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0)), !dbg !1599
  br label %31, !dbg !1602

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !1603

; <label>:16:                                     ; preds = %15
  %17 = load i8*, i8** %6, align 8, !dbg !1605
  %18 = icmp eq i8* %17, null, !dbg !1607
  br i1 %18, label %19, label %23, !dbg !1608

; <label>:19:                                     ; preds = %16
  %20 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1609
  %21 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %20, i32 0, i32 40, !dbg !1611
  %22 = load i8*, i8** %21, align 8, !dbg !1611
  store i8* %22, i8** %6, align 8, !dbg !1612
  br label %23, !dbg !1613

; <label>:23:                                     ; preds = %19, %16
  %24 = load i8*, i8** %5, align 8, !dbg !1614
  %25 = call i8* (i8*, i32, ...) @event_get_params(i8* %24, i32 8194, i8** %8, i8** %9), !dbg !1615
  store i8* %25, i8** %7, align 8, !dbg !1616
  %26 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1617
  %27 = bitcast %struct._IRC_SERVER_REC* %26 to i8*, !dbg !1617
  %28 = load i8*, i8** %8, align 8, !dbg !1618
  %29 = load i8*, i8** %9, align 8, !dbg !1619
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %27, i8* null, i32 1, i32 108, i8* %28, i8* %29), !dbg !1620
  %30 = load i8*, i8** %7, align 8, !dbg !1621
  call void @g_free(i8* %30), !dbg !1622
  br label %31, !dbg !1623

; <label>:31:                                     ; preds = %23, %14
  ret void, !dbg !1624
}

; Function Attrs: nounwind uwtable
define internal void @event_invite(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !1626 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1627, metadata !907), !dbg !1628
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1629, metadata !907), !dbg !1630
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1631, metadata !907), !dbg !1632
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1633, metadata !907), !dbg !1634
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1635, metadata !907), !dbg !1636
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1637, metadata !907), !dbg !1638
  br label %11, !dbg !1639, !llvm.loop !1640

; <label>:11:                                     ; preds = %4
  %12 = load i8*, i8** %6, align 8, !dbg !1641
  %13 = icmp ne i8* %12, null, !dbg !1645
  br i1 %13, label %14, label %15, !dbg !1641

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !1646

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.event_invite, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0)), !dbg !1649
  br label %28, !dbg !1652

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !1653

; <label>:17:                                     ; preds = %16
  %18 = load i8*, i8** %6, align 8, !dbg !1655
  %19 = call i8* (i8*, i32, ...) @event_get_params(i8* %18, i32 2, i8* null, i8** %10), !dbg !1656
  store i8* %19, i8** %9, align 8, !dbg !1657
  %20 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1658
  %21 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1659
  %22 = load i8*, i8** %10, align 8, !dbg !1660
  %23 = call i8* @get_visible_target(%struct._IRC_SERVER_REC* %21, i8* %22), !dbg !1661
  %24 = load i8*, i8** %7, align 8, !dbg !1662
  %25 = load i8*, i8** %8, align 8, !dbg !1663
  %26 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i32 0, i32 0), i32 4, %struct._IRC_SERVER_REC* %20, i8* %23, i8* %24, i8* %25), !dbg !1664
  %27 = load i8*, i8** %9, align 8, !dbg !1665
  call void @g_free(i8* %27), !dbg !1666
  br label %28, !dbg !1667

; <label>:28:                                     ; preds = %17, %15
  ret void, !dbg !1668
}

; Function Attrs: nounwind uwtable
define internal void @event_topic(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !1670 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1671, metadata !907), !dbg !1672
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1673, metadata !907), !dbg !1674
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1675, metadata !907), !dbg !1676
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1677, metadata !907), !dbg !1678
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1679, metadata !907), !dbg !1680
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1681, metadata !907), !dbg !1682
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1683, metadata !907), !dbg !1684
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1685, metadata !907), !dbg !1686
  br label %13, !dbg !1687, !llvm.loop !1688

; <label>:13:                                     ; preds = %4
  %14 = load i8*, i8** %6, align 8, !dbg !1689
  %15 = icmp ne i8* %14, null, !dbg !1693
  br i1 %15, label %16, label %17, !dbg !1689

; <label>:16:                                     ; preds = %13
  br label %18, !dbg !1694

; <label>:17:                                     ; preds = %13
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.event_topic, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0)), !dbg !1697
  br label %39, !dbg !1700

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !1701

; <label>:19:                                     ; preds = %18
  %20 = load i8*, i8** %6, align 8, !dbg !1703
  %21 = call i8* (i8*, i32, ...) @event_get_params(i8* %20, i32 8194, i8** %10, i8** %11), !dbg !1704
  store i8* %21, i8** %9, align 8, !dbg !1705
  %22 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1706
  %23 = bitcast %struct._IRC_SERVER_REC* %22 to i8*, !dbg !1706
  %24 = call i8* @module_check_cast(i8* %23, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)), !dbg !1707
  %25 = bitcast i8* %24 to %struct._SERVER_REC*, !dbg !1708
  %26 = load i8*, i8** %11, align 8, !dbg !1709
  %27 = load i8*, i8** %10, align 8, !dbg !1710
  %28 = call i8* @recode_in(%struct._SERVER_REC* %25, i8* %26, i8* %27), !dbg !1711
  store i8* %28, i8** %12, align 8, !dbg !1713
  %29 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1714
  %30 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1715
  %31 = load i8*, i8** %10, align 8, !dbg !1716
  %32 = call i8* @get_visible_target(%struct._IRC_SERVER_REC* %30, i8* %31), !dbg !1717
  %33 = load i8*, i8** %12, align 8, !dbg !1718
  %34 = load i8*, i8** %7, align 8, !dbg !1719
  %35 = load i8*, i8** %8, align 8, !dbg !1720
  %36 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.41, i32 0, i32 0), i32 5, %struct._IRC_SERVER_REC* %29, i8* %32, i8* %33, i8* %34, i8* %35), !dbg !1721
  %37 = load i8*, i8** %9, align 8, !dbg !1722
  call void @g_free(i8* %37), !dbg !1723
  %38 = load i8*, i8** %12, align 8, !dbg !1724
  call void @g_free(i8* %38), !dbg !1725
  br label %39, !dbg !1726

; <label>:39:                                     ; preds = %19, %17
  ret void, !dbg !1727
}

; Function Attrs: nounwind uwtable
define internal void @event_error(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1728 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1731, metadata !907), !dbg !1732
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1733, metadata !907), !dbg !1734
  br label %5, !dbg !1735, !llvm.loop !1736

; <label>:5:                                      ; preds = %2
  %6 = load i8*, i8** %4, align 8, !dbg !1737
  %7 = icmp ne i8* %6, null, !dbg !1741
  br i1 %7, label %8, label %9, !dbg !1737

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !1742

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.event_error, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0)), !dbg !1745
  br label %23, !dbg !1748

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !1749

; <label>:11:                                     ; preds = %10
  %12 = load i8*, i8** %4, align 8, !dbg !1751
  %13 = load i8, i8* %12, align 1, !dbg !1753
  %14 = sext i8 %13 to i32, !dbg !1753
  %15 = icmp eq i32 %14, 58, !dbg !1754
  br i1 %15, label %16, label %19, !dbg !1755

; <label>:16:                                     ; preds = %11
  %17 = load i8*, i8** %4, align 8, !dbg !1756
  %18 = getelementptr inbounds i8, i8* %17, i32 1, !dbg !1756
  store i8* %18, i8** %4, align 8, !dbg !1756
  br label %19, !dbg !1758

; <label>:19:                                     ; preds = %16, %11
  %20 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1759
  %21 = bitcast %struct._IRC_SERVER_REC* %20 to i8*, !dbg !1759
  %22 = load i8*, i8** %4, align 8, !dbg !1760
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %21, i8* null, i32 1, i32 113, i8* %22), !dbg !1761
  br label %23, !dbg !1762

; <label>:23:                                     ; preds = %19, %9
  ret void, !dbg !1763
}

; Function Attrs: nounwind uwtable
define internal void @event_wallops(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !1765 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1766, metadata !907), !dbg !1767
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1768, metadata !907), !dbg !1769
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1770, metadata !907), !dbg !1771
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1772, metadata !907), !dbg !1773
  br label %11, !dbg !1774, !llvm.loop !1775

; <label>:11:                                     ; preds = %4
  %12 = load i8*, i8** %6, align 8, !dbg !1776
  %13 = icmp ne i8* %12, null, !dbg !1780
  br i1 %13, label %14, label %15, !dbg !1776

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !1781

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.event_wallops, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0)), !dbg !1784
  br label %75, !dbg !1787

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !1788

; <label>:17:                                     ; preds = %16
  %18 = load i8*, i8** %6, align 8, !dbg !1790
  %19 = load i8, i8* %18, align 1, !dbg !1792
  %20 = sext i8 %19 to i32, !dbg !1792
  %21 = icmp eq i32 %20, 58, !dbg !1793
  br i1 %21, label %22, label %25, !dbg !1794

; <label>:22:                                     ; preds = %17
  %23 = load i8*, i8** %6, align 8, !dbg !1795
  %24 = getelementptr inbounds i8, i8* %23, i32 1, !dbg !1795
  store i8* %24, i8** %6, align 8, !dbg !1795
  br label %25, !dbg !1797

; <label>:25:                                     ; preds = %22, %17
  %26 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1798
  %27 = bitcast %struct._IRC_SERVER_REC* %26 to i8*, !dbg !1798
  %28 = call i8* @module_check_cast(i8* %27, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)), !dbg !1800
  %29 = bitcast i8* %28 to %struct._SERVER_REC*, !dbg !1801
  %30 = load i8*, i8** %7, align 8, !dbg !1802
  %31 = load i8*, i8** %8, align 8, !dbg !1803
  %32 = load i8*, i8** %6, align 8, !dbg !1804
  %33 = call i32 @ignore_check(%struct._SERVER_REC* %29, i8* %30, i8* %31, i8* null, i8* %32, i32 8192), !dbg !1805
  %34 = icmp ne i32 %33, 0, !dbg !1807
  br i1 %34, label %35, label %36, !dbg !1808

; <label>:35:                                     ; preds = %25
  br label %75, !dbg !1809

; <label>:36:                                     ; preds = %25
  %37 = load i8*, i8** %6, align 8, !dbg !1810
  %38 = call i32 @g_ascii_strncasecmp(i8* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0), i64 8), !dbg !1812
  %39 = icmp ne i32 %38, 0, !dbg !1813
  br i1 %39, label %40, label %45, !dbg !1814

; <label>:40:                                     ; preds = %36
  %41 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1815
  %42 = bitcast %struct._IRC_SERVER_REC* %41 to i8*, !dbg !1815
  %43 = load i8*, i8** %7, align 8, !dbg !1816
  %44 = load i8*, i8** %6, align 8, !dbg !1817
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %42, i8* null, i32 8192, i32 109, i8* %43, i8* %44), !dbg !1818
  br label %75, !dbg !1818

; <label>:45:                                     ; preds = %36
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1819, metadata !907), !dbg !1821
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1822, metadata !907), !dbg !1823
  %46 = load i8*, i8** %6, align 8, !dbg !1824
  %47 = getelementptr inbounds i8, i8* %46, i64 8, !dbg !1825
  %48 = call noalias i8* @g_strdup(i8* %47), !dbg !1826
  store i8* %48, i8** %10, align 8, !dbg !1827
  %49 = load i8*, i8** %10, align 8, !dbg !1828
  %50 = call i64 @strlen(i8* %49) #6, !dbg !1829
  %51 = trunc i64 %50 to i32, !dbg !1829
  store i32 %51, i32* %9, align 4, !dbg !1830
  %52 = load i32, i32* %9, align 4, !dbg !1831
  %53 = icmp sge i32 %52, 1, !dbg !1833
  br i1 %53, label %54, label %69, !dbg !1834

; <label>:54:                                     ; preds = %45
  %55 = load i32, i32* %9, align 4, !dbg !1835
  %56 = sub nsw i32 %55, 1, !dbg !1837
  %57 = sext i32 %56 to i64, !dbg !1838
  %58 = load i8*, i8** %10, align 8, !dbg !1838
  %59 = getelementptr inbounds i8, i8* %58, i64 %57, !dbg !1838
  %60 = load i8, i8* %59, align 1, !dbg !1838
  %61 = sext i8 %60 to i32, !dbg !1838
  %62 = icmp eq i32 %61, 1, !dbg !1839
  br i1 %62, label %63, label %69, !dbg !1840

; <label>:63:                                     ; preds = %54
  %64 = load i32, i32* %9, align 4, !dbg !1841
  %65 = sub nsw i32 %64, 1, !dbg !1843
  %66 = sext i32 %65 to i64, !dbg !1844
  %67 = load i8*, i8** %10, align 8, !dbg !1844
  %68 = getelementptr inbounds i8, i8* %67, i64 %66, !dbg !1844
  store i8 0, i8* %68, align 1, !dbg !1845
  br label %69, !dbg !1844

; <label>:69:                                     ; preds = %63, %54, %45
  %70 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1846
  %71 = bitcast %struct._IRC_SERVER_REC* %70 to i8*, !dbg !1846
  %72 = load i8*, i8** %7, align 8, !dbg !1847
  %73 = load i8*, i8** %10, align 8, !dbg !1848
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %71, i8* null, i32 8192, i32 110, i8* %72, i8* %73), !dbg !1849
  %74 = load i8*, i8** %10, align 8, !dbg !1850
  call void @g_free(i8* %74), !dbg !1851
  br label %75

; <label>:75:                                     ; preds = %15, %35, %69, %40
  ret void, !dbg !1852
}

; Function Attrs: nounwind uwtable
define internal void @event_silence(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !1853 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1854, metadata !907), !dbg !1855
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1856, metadata !907), !dbg !1857
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1858, metadata !907), !dbg !1859
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1860, metadata !907), !dbg !1861
  br label %9, !dbg !1862, !llvm.loop !1863

; <label>:9:                                      ; preds = %4
  %10 = load i8*, i8** %6, align 8, !dbg !1864
  %11 = icmp ne i8* %10, null, !dbg !1868
  br i1 %11, label %12, label %13, !dbg !1864

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !1869

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.event_silence, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0)), !dbg !1872
  br label %39, !dbg !1875

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !1876

; <label>:15:                                     ; preds = %14
  br label %16, !dbg !1878, !llvm.loop !1879

; <label>:16:                                     ; preds = %15
  %17 = load i8*, i8** %6, align 8, !dbg !1880
  %18 = load i8, i8* %17, align 1, !dbg !1884
  %19 = sext i8 %18 to i32, !dbg !1884
  %20 = icmp eq i32 %19, 43, !dbg !1885
  br i1 %20, label %26, label %21, !dbg !1886

; <label>:21:                                     ; preds = %16
  %22 = load i8*, i8** %6, align 8, !dbg !1887
  %23 = load i8, i8* %22, align 1, !dbg !1889
  %24 = sext i8 %23 to i32, !dbg !1889
  %25 = icmp eq i32 %24, 45, !dbg !1890
  br i1 %25, label %26, label %27, !dbg !1891

; <label>:26:                                     ; preds = %21, %16
  br label %28, !dbg !1892

; <label>:27:                                     ; preds = %21
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.event_silence, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.43, i32 0, i32 0)), !dbg !1895
  br label %39, !dbg !1898

; <label>:28:                                     ; preds = %26
  br label %29, !dbg !1899

; <label>:29:                                     ; preds = %28
  %30 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1901
  %31 = bitcast %struct._IRC_SERVER_REC* %30 to i8*, !dbg !1901
  %32 = load i8*, i8** %6, align 8, !dbg !1902
  %33 = load i8, i8* %32, align 1, !dbg !1903
  %34 = sext i8 %33 to i32, !dbg !1903
  %35 = icmp eq i32 %34, 43, !dbg !1904
  %36 = select i1 %35, i32 118, i32 119, !dbg !1903
  %37 = load i8*, i8** %6, align 8, !dbg !1905
  %38 = getelementptr inbounds i8, i8* %37, i64 1, !dbg !1906
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %31, i8* null, i32 1, i32 %36, i8* %38), !dbg !1907
  br label %39, !dbg !1908

; <label>:39:                                     ; preds = %29, %27, %13
  ret void, !dbg !1909
}

; Function Attrs: nounwind uwtable
define internal void @event_received(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !1911 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1912, metadata !907), !dbg !1913
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1914, metadata !907), !dbg !1915
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1916, metadata !907), !dbg !1917
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1918, metadata !907), !dbg !1919
  %9 = load i8*, i8** %6, align 8, !dbg !1920
  %10 = load i8, i8* %9, align 1, !dbg !1922
  %11 = zext i8 %10 to i32, !dbg !1923
  %12 = sext i32 %11 to i64, !dbg !1924
  %13 = call i16** @__ctype_b_loc() #2, !dbg !1925
  %14 = load i16*, i16** %13, align 8, !dbg !1926
  %15 = getelementptr inbounds i16, i16* %14, i64 %12, !dbg !1924
  %16 = load i16, i16* %15, align 2, !dbg !1924
  %17 = zext i16 %16 to i32, !dbg !1924
  %18 = and i32 %17, 2048, !dbg !1927
  %19 = icmp ne i32 %18, 0, !dbg !1927
  br i1 %19, label %24, label %20, !dbg !1928

; <label>:20:                                     ; preds = %4
  %21 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1929
  %22 = bitcast %struct._IRC_SERVER_REC* %21 to i8*, !dbg !1929
  %23 = load i8*, i8** %6, align 8, !dbg !1931
  call void (i8*, i8*, i32, i8*, ...) @printtext(i8* %22, i8* null, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0), i8* %23), !dbg !1932
  br label %30, !dbg !1933

; <label>:24:                                     ; preds = %4
  %25 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1934
  %26 = load i8*, i8** %6, align 8, !dbg !1935
  %27 = load i8*, i8** %7, align 8, !dbg !1936
  %28 = load i8*, i8** %8, align 8, !dbg !1937
  %29 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.45, i32 0, i32 0), i32 4, %struct._IRC_SERVER_REC* %25, i8* %26, i8* %27, i8* %28), !dbg !1938
  br label %30, !dbg !1939

; <label>:30:                                     ; preds = %24, %20
  ret void, !dbg !1940
}

; Function Attrs: nounwind uwtable
define internal void @channel_sync(%struct._CHANNEL_REC*) #0 !dbg !1942 {
  %2 = alloca %struct._CHANNEL_REC*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %2, metadata !1945, metadata !907), !dbg !1946
  br label %3, !dbg !1947, !llvm.loop !1948

; <label>:3:                                      ; preds = %1
  %4 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !1949
  %5 = icmp ne %struct._CHANNEL_REC* %4, null, !dbg !1953
  br i1 %5, label %6, label %7, !dbg !1949

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !1954

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.channel_sync, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.46, i32 0, i32 0)), !dbg !1957
  br label %25, !dbg !1960

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !1961

; <label>:9:                                      ; preds = %8
  %10 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !1963
  %11 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %10, i32 0, i32 4, !dbg !1964
  %12 = load %struct._SERVER_REC*, %struct._SERVER_REC** %11, align 8, !dbg !1964
  %13 = bitcast %struct._SERVER_REC* %12 to i8*, !dbg !1963
  %14 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !1965
  %15 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %14, i32 0, i32 5, !dbg !1966
  %16 = load i8*, i8** %15, align 8, !dbg !1966
  %17 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !1967
  %18 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %17, i32 0, i32 5, !dbg !1968
  %19 = load i8*, i8** %18, align 8, !dbg !1968
  %20 = call i64 @time(i64* null) #7, !dbg !1969
  %21 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !1970
  %22 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %21, i32 0, i32 7, !dbg !1971
  %23 = load i64, i64* %22, align 8, !dbg !1971
  %24 = sub nsw i64 %20, %23, !dbg !1972
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %13, i8* %16, i32 33816576, i32 57, i8* %19, i64 %24), !dbg !1973
  br label %25, !dbg !1975

; <label>:25:                                     ; preds = %9, %7
  ret void, !dbg !1976
}

; Function Attrs: nounwind uwtable
define internal void @event_connected(%struct._IRC_SERVER_REC*) #0 !dbg !1977 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  %3 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !1980, metadata !907), !dbg !1981
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1982, metadata !907), !dbg !1983
  br label %4, !dbg !1984, !llvm.loop !1985

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1986
  %6 = icmp ne %struct._IRC_SERVER_REC* %5, null, !dbg !1990
  br i1 %6, label %7, label %8, !dbg !1986

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !1991

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.event_connected, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0)), !dbg !1994
  br label %28, !dbg !1997

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !1998

; <label>:10:                                     ; preds = %9
  %11 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2000
  %12 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %11, i32 0, i32 3, !dbg !2001
  %13 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %12, align 8, !dbg !2001
  %14 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %13, i32 0, i32 16, !dbg !2002
  %15 = load i8*, i8** %14, align 8, !dbg !2002
  store i8* %15, i8** %3, align 8, !dbg !2003
  %16 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2004
  %17 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %16, i32 0, i32 7, !dbg !2006
  %18 = load i8*, i8** %17, align 8, !dbg !2006
  %19 = load i8*, i8** %3, align 8, !dbg !2007
  %20 = call i32 @g_ascii_strcasecmp(i8* %18, i8* %19), !dbg !2008
  %21 = icmp eq i32 %20, 0, !dbg !2009
  br i1 %21, label %22, label %23, !dbg !2010

; <label>:22:                                     ; preds = %10
  br label %28, !dbg !2011

; <label>:23:                                     ; preds = %10
  %24 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2012
  %25 = load i8*, i8** %3, align 8, !dbg !2013
  call void (%struct._IRC_SERVER_REC*, i8*, i32, i8*, i32, i8*, ...) @server_redirect_event(%struct._IRC_SERVER_REC* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i32 1, i8* %25, i32 1, i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0), i8* null), !dbg !2014
  %26 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2015
  %27 = load i8*, i8** %3, align 8, !dbg !2016
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), i8* %27), !dbg !2017
  br label %28, !dbg !2018

; <label>:28:                                     ; preds = %23, %22, %8
  ret void, !dbg !2019
}

; Function Attrs: nounwind uwtable
define internal void @event_nickfind_whois(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !2021 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !2022, metadata !907), !dbg !2023
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2024, metadata !907), !dbg !2025
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2026, metadata !907), !dbg !2027
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2028, metadata !907), !dbg !2029
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2030, metadata !907), !dbg !2031
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2032, metadata !907), !dbg !2033
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2034, metadata !907), !dbg !2035
  br label %10, !dbg !2036, !llvm.loop !2037

; <label>:10:                                     ; preds = %2
  %11 = load i8*, i8** %4, align 8, !dbg !2038
  %12 = icmp ne i8* %11, null, !dbg !2042
  br i1 %12, label %13, label %14, !dbg !2038

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !2043

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.event_nickfind_whois, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0)), !dbg !2046
  br label %26, !dbg !2049

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !2050

; <label>:16:                                     ; preds = %15
  %17 = load i8*, i8** %4, align 8, !dbg !2052
  %18 = call i8* (i8*, i32, ...) @event_get_params(i8* %17, i32 6, i8* null, i8** %6, i8** %7, i8** %8, i8* null, i8** %9), !dbg !2053
  store i8* %18, i8** %5, align 8, !dbg !2054
  %19 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2055
  %20 = bitcast %struct._IRC_SERVER_REC* %19 to i8*, !dbg !2055
  %21 = load i8*, i8** %6, align 8, !dbg !2056
  %22 = load i8*, i8** %7, align 8, !dbg !2057
  %23 = load i8*, i8** %8, align 8, !dbg !2058
  %24 = load i8*, i8** %9, align 8, !dbg !2059
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %20, i8* null, i32 262144, i32 67, i8* %21, i8* %22, i8* %23, i8* %24), !dbg !2060
  %25 = load i8*, i8** %5, align 8, !dbg !2061
  call void @g_free(i8* %25), !dbg !2062
  br label %26, !dbg !2063

; <label>:26:                                     ; preds = %16, %14
  ret void, !dbg !2064
}

; Function Attrs: nounwind uwtable
define internal void @event_ban_type_changed(i8*) #0 !dbg !2066 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._GString*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2069, metadata !907), !dbg !2070
  call void @llvm.dbg.declare(metadata %struct._GString** %3, metadata !2071, metadata !907), !dbg !2072
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2073, metadata !907), !dbg !2074
  %5 = load i8*, i8** %2, align 8, !dbg !2075
  %6 = ptrtoint i8* %5 to i64, !dbg !2076
  %7 = trunc i64 %6 to i32, !dbg !2077
  store i32 %7, i32* %4, align 4, !dbg !2078
  %8 = load i32, i32* %4, align 4, !dbg !2079
  %9 = icmp eq i32 %8, 0, !dbg !2081
  br i1 %9, label %10, label %11, !dbg !2082

; <label>:10:                                     ; preds = %1
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 1048576, i32 47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.52, i32 0, i32 0)), !dbg !2083
  br label %60, !dbg !2085

; <label>:11:                                     ; preds = %1
  %12 = load i32, i32* %4, align 4, !dbg !2086
  %13 = icmp eq i32 %12, 10, !dbg !2088
  br i1 %13, label %14, label %15, !dbg !2089

; <label>:14:                                     ; preds = %11
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0)), !dbg !2090
  br label %60, !dbg !2092

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %4, align 4, !dbg !2093
  %17 = icmp eq i32 %16, 12, !dbg !2096
  br i1 %17, label %18, label %19, !dbg !2093

; <label>:18:                                     ; preds = %15
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0)), !dbg !2097
  br label %59, !dbg !2099

; <label>:19:                                     ; preds = %15
  %20 = load i32, i32* %4, align 4, !dbg !2100
  %21 = icmp eq i32 %20, 8, !dbg !2103
  br i1 %21, label %22, label %23, !dbg !2100

; <label>:22:                                     ; preds = %19
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0)), !dbg !2104
  br label %58, !dbg !2106

; <label>:23:                                     ; preds = %19
  %24 = call %struct._GString* @g_string_new(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0)), !dbg !2107
  store %struct._GString* %24, %struct._GString** %3, align 8, !dbg !2109
  %25 = load i32, i32* %4, align 4, !dbg !2110
  %26 = and i32 %25, 1, !dbg !2112
  %27 = icmp ne i32 %26, 0, !dbg !2112
  br i1 %27, label %28, label %31, !dbg !2113

; <label>:28:                                     ; preds = %23
  %29 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !2114
  %30 = call %struct._GString* @g_string_append(%struct._GString* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0)), !dbg !2115
  br label %31, !dbg !2115

; <label>:31:                                     ; preds = %28, %23
  %32 = load i32, i32* %4, align 4, !dbg !2116
  %33 = and i32 %32, 2, !dbg !2118
  %34 = icmp ne i32 %33, 0, !dbg !2118
  br i1 %34, label %35, label %38, !dbg !2119

; <label>:35:                                     ; preds = %31
  %36 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !2120
  %37 = call %struct._GString* @g_string_append(%struct._GString* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0)), !dbg !2121
  br label %38, !dbg !2121

; <label>:38:                                     ; preds = %35, %31
  %39 = load i32, i32* %4, align 4, !dbg !2122
  %40 = and i32 %39, 4, !dbg !2124
  %41 = icmp ne i32 %40, 0, !dbg !2124
  br i1 %41, label %42, label %45, !dbg !2125

; <label>:42:                                     ; preds = %38
  %43 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !2126
  %44 = call %struct._GString* @g_string_append(%struct._GString* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0)), !dbg !2127
  br label %45, !dbg !2127

; <label>:45:                                     ; preds = %42, %38
  %46 = load i32, i32* %4, align 4, !dbg !2128
  %47 = and i32 %46, 8, !dbg !2130
  %48 = icmp ne i32 %47, 0, !dbg !2130
  br i1 %48, label %49, label %52, !dbg !2131

; <label>:49:                                     ; preds = %45
  %50 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !2132
  %51 = call %struct._GString* @g_string_append(%struct._GString* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0)), !dbg !2133
  br label %52, !dbg !2133

; <label>:52:                                     ; preds = %49, %45
  %53 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !2134
  %54 = getelementptr inbounds %struct._GString, %struct._GString* %53, i32 0, i32 0, !dbg !2135
  %55 = load i8*, i8** %54, align 8, !dbg !2135
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 47, i8* %55), !dbg !2136
  %56 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !2137
  %57 = call i8* @g_string_free(%struct._GString* %56, i32 1), !dbg !2138
  br label %58

; <label>:58:                                     ; preds = %52, %22
  br label %59

; <label>:59:                                     ; preds = %58, %18
  br label %60

; <label>:60:                                     ; preds = %10, %59, %14
  ret void, !dbg !2139
}

; Function Attrs: nounwind uwtable
define internal void @sig_whois_event_not_found(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !2140 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !2141, metadata !907), !dbg !2142
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2143, metadata !907), !dbg !2144
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2145, metadata !907), !dbg !2146
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2147, metadata !907), !dbg !2148
  br label %7, !dbg !2149, !llvm.loop !2150

; <label>:7:                                      ; preds = %2
  %8 = load i8*, i8** %4, align 8, !dbg !2151
  %9 = icmp ne i8* %8, null, !dbg !2155
  br i1 %9, label %10, label %11, !dbg !2151

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !2156

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.sig_whois_event_not_found, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0)), !dbg !2159
  br label %21, !dbg !2162

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !2163

; <label>:13:                                     ; preds = %12
  %14 = load i8*, i8** %4, align 8, !dbg !2165
  %15 = call i8* (i8*, i32, ...) @event_get_params(i8* %14, i32 2, i8* null, i8** %6), !dbg !2166
  store i8* %15, i8** %5, align 8, !dbg !2167
  %16 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2168
  %17 = bitcast %struct._IRC_SERVER_REC* %16 to i8*, !dbg !2168
  %18 = load i8*, i8** %6, align 8, !dbg !2169
  %19 = load i8*, i8** %6, align 8, !dbg !2170
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %17, i8* %18, i32 1, i32 84, i8* %19), !dbg !2171
  %20 = load i8*, i8** %5, align 8, !dbg !2172
  call void @g_free(i8* %20), !dbg !2173
  br label %21, !dbg !2174

; <label>:21:                                     ; preds = %13, %11
  ret void, !dbg !2175
}

; Function Attrs: nounwind uwtable
define internal void @sig_whowas_event_end(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !2177 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !2178, metadata !907), !dbg !2179
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2180, metadata !907), !dbg !2181
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2182, metadata !907), !dbg !2183
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2184, metadata !907), !dbg !2185
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2186, metadata !907), !dbg !2187
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2188, metadata !907), !dbg !2189
  br label %11, !dbg !2190, !llvm.loop !2191

; <label>:11:                                     ; preds = %4
  %12 = load i8*, i8** %6, align 8, !dbg !2192
  %13 = icmp ne i8* %12, null, !dbg !2196
  br i1 %13, label %14, label %15, !dbg !2192

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !2197

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.sig_whowas_event_end, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0)), !dbg !2200
  br label %39, !dbg !2203

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !2204

; <label>:17:                                     ; preds = %16
  %18 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2206
  %19 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %18, i32 0, i32 45, !dbg !2208
  %20 = load i16, i16* %19, align 4, !dbg !2208
  %21 = lshr i16 %20, 1, !dbg !2208
  %22 = and i16 %21, 1, !dbg !2208
  %23 = zext i16 %22 to i32, !dbg !2208
  %24 = icmp ne i32 %23, 0, !dbg !2206
  br i1 %24, label %25, label %31, !dbg !2209

; <label>:25:                                     ; preds = %17
  %26 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2210
  %27 = load i8*, i8** %6, align 8, !dbg !2212
  %28 = load i8*, i8** %7, align 8, !dbg !2213
  %29 = load i8*, i8** %8, align 8, !dbg !2214
  %30 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0), i32 4, %struct._IRC_SERVER_REC* %26, i8* %27, i8* %28, i8* %29), !dbg !2215
  br label %39, !dbg !2216

; <label>:31:                                     ; preds = %17
  %32 = load i8*, i8** %6, align 8, !dbg !2217
  %33 = call i8* (i8*, i32, ...) @event_get_params(i8* %32, i32 2, i8* null, i8** %10), !dbg !2218
  store i8* %33, i8** %9, align 8, !dbg !2219
  %34 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2220
  %35 = bitcast %struct._IRC_SERVER_REC* %34 to i8*, !dbg !2220
  %36 = load i8*, i8** %10, align 8, !dbg !2221
  %37 = load i8*, i8** %10, align 8, !dbg !2222
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %35, i8* %36, i32 1, i32 84, i8* %37), !dbg !2223
  %38 = load i8*, i8** %9, align 8, !dbg !2224
  call void @g_free(i8* %38), !dbg !2225
  br label %39, !dbg !2226

; <label>:39:                                     ; preds = %31, %25, %15
  ret void, !dbg !2227
}

; Function Attrs: nounwind uwtable
define void @fe_events_deinit() #0 !dbg !2229 {
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_privmsg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2230
  call void @signal_remove_full(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*)* @ctcp_action to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2231
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_notice to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2232
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_join to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2233
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_part to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2234
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_quit to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2235
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_kick to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2236
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_kill to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2237
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_nick to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2238
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_mode to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2239
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_pong to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2240
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_invite to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2241
  call void @signal_remove_full(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_topic to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2242
  call void @signal_remove_full(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_error to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2243
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_wallops to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2244
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_silence to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2245
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_received to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2246
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*)* @channel_sync to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2247
  call void @signal_remove_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @event_connected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2248
  call void @signal_remove_full(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_nickfind_whois to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2249
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @event_ban_type_changed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2250
  call void @signal_remove_full(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @sig_whois_event_not_found to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2251
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @sig_whowas_event_end to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2252
  ret void, !dbg !2253
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @event_get_params(i8*, i32, ...) #1

declare i32 @fe_channel_is_opchannel(%struct._IRC_SERVER_REC*, i8*) #1

declare i8* @fe_channel_skip_prefix(%struct._IRC_SERVER_REC*, i8*) #1

declare i8* @recode_in(%struct._SERVER_REC*, i8*, i8*) #1

declare i8* @module_check_cast(i8*, i32, i8*) #1

declare i32 @signal_emit(i8*, i32, ...) #1

declare i8* @get_visible_target(%struct._IRC_SERVER_REC*, i8*) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare void @printformat_module(i8*, i8*, i8*, i32, i32, ...) #1

declare i32 @g_ascii_strcasecmp(i8*, i8*) #1

declare i8* @g_strchomp(i8*) #1

declare i32 @ignore_check(%struct._SERVER_REC*, i8*, i8*, i8*, i8*, i32) #1

declare i32 @g_ascii_strncasecmp(i8*, i8*, i64) #1

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #4

declare void @printtext(i8*, i8*, i32, i8*, ...) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #5

declare void @server_redirect_event(%struct._IRC_SERVER_REC*, i8*, i32, i8*, i32, i8*, ...) #1

declare void @irc_send_cmdv(%struct._IRC_SERVER_REC*, i8*, ...) #1

declare %struct._GString* @g_string_new(i8*) #1

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #1

declare i8* @g_string_free(%struct._GString*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!665, !666}
!llvm.ident = !{!667}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !207)
!1 = !DIFile(filename: "line312-fe-events.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!192 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !193, line: 46, size: 32, align: 32, elements: !194)
!193 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/lichi/Desktop/irssi/task1")
!194 = !{!195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206}
!195 = !DIEnumerator(name: "_ISupper", value: 256)
!196 = !DIEnumerator(name: "_ISlower", value: 512)
!197 = !DIEnumerator(name: "_ISalpha", value: 1024)
!198 = !DIEnumerator(name: "_ISdigit", value: 2048)
!199 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!200 = !DIEnumerator(name: "_ISspace", value: 8192)
!201 = !DIEnumerator(name: "_ISprint", value: 16384)
!202 = !DIEnumerator(name: "_ISgraph", value: 32768)
!203 = !DIEnumerator(name: "_ISblank", value: 1)
!204 = !DIEnumerator(name: "_IScntrl", value: 2)
!205 = !DIEnumerator(name: "_ISpunct", value: 4)
!206 = !DIEnumerator(name: "_ISalnum", value: 8)
!207 = !{!208, !215, !216, !220, !222, !230, !664, !249, !316, !277, !508}
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !209, line: 9, baseType: !210)
!209 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{null, !213, !213, !213, !213, !213, !213}
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !218, line: 46, baseType: !219)
!218 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!219 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !224, line: 107, baseType: !225)
!224 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !226, line: 30, size: 2240, align: 64, elements: !227)
!226 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!227 = !{!228, !231, !232, !233, !463, !468, !469, !470, !471, !472, !473, !474, !475, !476, !480, !481, !485, !486, !487, !491, !496, !497, !498, !499, !500, !501, !502, !503, !510, !511, !512, !513, !514, !518, !522, !526, !530, !534, !539, !632, !659, !663}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !225, file: !229, line: 3, baseType: !230, size: 32, align: 32)
!229 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!230 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !225, file: !229, line: 4, baseType: !230, size: 32, align: 32, offset: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !225, file: !229, line: 6, baseType: !230, size: 32, align: 32, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !225, file: !229, line: 8, baseType: !234, size: 64, align: 64, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64, align: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !224, line: 113, baseType: !236)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !226, line: 25, size: 1920, align: 64, elements: !237)
!237 = !{!238, !240, !241, !242, !244, !245, !246, !247, !248, !250, !251, !252, !253, !254, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !236, file: !239, line: 3, baseType: !230, size: 32, align: 32)
!239 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!240 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !236, file: !239, line: 4, baseType: !230, size: 32, align: 32, offset: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !236, file: !239, line: 6, baseType: !230, size: 32, align: 32, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !236, file: !239, line: 9, baseType: !243, size: 64, align: 64, offset: 128)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64, align: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !236, file: !239, line: 10, baseType: !230, size: 32, align: 32, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !236, file: !239, line: 11, baseType: !243, size: 64, align: 64, offset: 256)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !236, file: !239, line: 11, baseType: !243, size: 64, align: 64, offset: 320)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !236, file: !239, line: 11, baseType: !243, size: 64, align: 64, offset: 384)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !236, file: !239, line: 13, baseType: !249, size: 16, align: 16, offset: 448)
!249 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !236, file: !239, line: 14, baseType: !243, size: 64, align: 64, offset: 512)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !236, file: !239, line: 15, baseType: !243, size: 64, align: 64, offset: 576)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !236, file: !239, line: 16, baseType: !230, size: 32, align: 32, offset: 640)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !236, file: !239, line: 17, baseType: !243, size: 64, align: 64, offset: 704)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !236, file: !239, line: 19, baseType: !255, size: 64, align: 64, offset: 768)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64, align: 64)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !224, line: 99, baseType: !257)
!257 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !224, line: 99, flags: DIFlagFwdDecl)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !236, file: !239, line: 19, baseType: !255, size: 64, align: 64, offset: 832)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !236, file: !239, line: 21, baseType: !243, size: 64, align: 64, offset: 896)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !236, file: !239, line: 22, baseType: !243, size: 64, align: 64, offset: 960)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !236, file: !239, line: 23, baseType: !243, size: 64, align: 64, offset: 1024)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !236, file: !239, line: 24, baseType: !243, size: 64, align: 64, offset: 1088)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !236, file: !239, line: 26, baseType: !243, size: 64, align: 64, offset: 1152)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !236, file: !239, line: 27, baseType: !243, size: 64, align: 64, offset: 1216)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !236, file: !239, line: 28, baseType: !243, size: 64, align: 64, offset: 1280)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !236, file: !239, line: 29, baseType: !243, size: 64, align: 64, offset: 1344)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !236, file: !239, line: 30, baseType: !243, size: 64, align: 64, offset: 1408)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !236, file: !239, line: 31, baseType: !243, size: 64, align: 64, offset: 1472)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !236, file: !239, line: 32, baseType: !243, size: 64, align: 64, offset: 1536)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !236, file: !239, line: 33, baseType: !243, size: 64, align: 64, offset: 1600)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !236, file: !239, line: 35, baseType: !272, size: 64, align: 64, offset: 1664)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64, align: 64)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !274)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !275)
!275 = !{!276, !278, !420, !421, !426, !427, !428, !429, !430, !439, !440, !441, !445, !446, !447, !448, !449, !450, !451, !452}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !274, file: !4, line: 100, baseType: !277, size: 32, align: 32)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !218, line: 49, baseType: !230)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !274, file: !4, line: 101, baseType: !279, size: 64, align: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !282)
!282 = !{!283, !305, !311, !318, !322, !407, !411, !416}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !281, file: !4, line: 133, baseType: !284, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64, align: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{!287, !272, !216, !288, !291, !292}
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !289, line: 66, baseType: !290)
!289 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!290 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64, align: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, align: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64, align: 64)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !295, line: 42, baseType: !296)
!295 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !295, line: 44, size: 128, align: 64, elements: !297)
!297 = !{!298, !303, !304}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !296, file: !295, line: 46, baseType: !299, size: 32, align: 32)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !300, line: 36, baseType: !301)
!300 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !289, line: 45, baseType: !302)
!302 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !296, file: !295, line: 47, baseType: !277, size: 32, align: 32, offset: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !296, file: !295, line: 48, baseType: !216, size: 64, align: 64, offset: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !281, file: !4, line: 138, baseType: !306, size: 64, align: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!287, !272, !309, !288, !291, !292}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64, align: 64)
!310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !281, file: !4, line: 143, baseType: !312, size: 64, align: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64, align: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!287, !272, !315, !317, !292}
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !289, line: 51, baseType: !316)
!316 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !281, file: !4, line: 147, baseType: !319, size: 64, align: 64, offset: 192)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64, align: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!287, !272, !292}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !281, file: !4, line: 149, baseType: !323, size: 64, align: 64, offset: 256)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64, align: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!326, !272, !406}
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64, align: 64)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !328)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !329)
!329 = !{!330, !332, !353, !382, !384, !388, !389, !390, !391, !399, !400, !401, !402}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !328, file: !16, line: 174, baseType: !331, size: 64, align: 64)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !218, line: 77, baseType: !215)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !328, file: !16, line: 175, baseType: !333, size: 64, align: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64, align: 64)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !335)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !336)
!336 = !{!337, !341, !342}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !335, file: !16, line: 198, baseType: !338, size: 64, align: 64)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64, align: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !331}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !335, file: !16, line: 199, baseType: !338, size: 64, align: 64, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !335, file: !16, line: 200, baseType: !343, size: 64, align: 64, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64, align: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !331, !326, !346, !352}
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64, align: 64)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !348)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64, align: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{!351, !331}
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !218, line: 50, baseType: !277)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, align: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !328, file: !16, line: 177, baseType: !354, size: 64, align: 64, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64, align: 64)
!355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !356)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !357)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !358)
!358 = !{!359, !364, !368, !372, !376, !377}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !357, file: !16, line: 216, baseType: !360, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{!351, !326, !363}
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !357, file: !16, line: 218, baseType: !365, size: 64, align: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64, align: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{!351, !326}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !357, file: !16, line: 219, baseType: !369, size: 64, align: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64, align: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{!351, !326, !347, !331}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !357, file: !16, line: 222, baseType: !373, size: 64, align: 64, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64, align: 64)
!374 = !DISubroutineType(types: !375)
!375 = !{null, !326}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !357, file: !16, line: 226, baseType: !347, size: 64, align: 64, offset: 256)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !357, file: !16, line: 227, baseType: !378, size: 64, align: 64, offset: 320)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !379)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64, align: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{null}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !328, file: !16, line: 178, baseType: !383, size: 32, align: 32, offset: 192)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !218, line: 55, baseType: !302)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !328, file: !16, line: 180, baseType: !385, size: 64, align: 64, offset: 256)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64, align: 64)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !387)
!387 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !328, file: !16, line: 182, baseType: !277, size: 32, align: 32, offset: 320)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !328, file: !16, line: 183, baseType: !383, size: 32, align: 32, offset: 352)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !328, file: !16, line: 184, baseType: !383, size: 32, align: 32, offset: 384)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !328, file: !16, line: 186, baseType: !392, size: 64, align: 64, offset: 448)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64, align: 64)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !394, line: 37, baseType: !395)
!394 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !394, line: 39, size: 128, align: 64, elements: !396)
!396 = !{!397, !398}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !395, file: !394, line: 41, baseType: !331, size: 64, align: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !395, file: !394, line: 42, baseType: !392, size: 64, align: 64, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !328, file: !16, line: 188, baseType: !326, size: 64, align: 64, offset: 512)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !328, file: !16, line: 189, baseType: !326, size: 64, align: 64, offset: 576)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !328, file: !16, line: 191, baseType: !243, size: 64, align: 64, offset: 640)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !328, file: !16, line: 193, baseType: !403, size: 64, align: 64, offset: 704)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64, align: 64)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !405)
!405 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !281, file: !4, line: 151, baseType: !408, size: 64, align: 64, offset: 320)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64, align: 64)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !272}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !281, file: !4, line: 152, baseType: !412, size: 64, align: 64, offset: 384)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64, align: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{!287, !272, !415, !292}
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !281, file: !4, line: 155, baseType: !417, size: 64, align: 64, offset: 448)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64, align: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{!415, !272}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !274, file: !4, line: 103, baseType: !216, size: 64, align: 64, offset: 128)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !274, file: !4, line: 104, baseType: !422, size: 64, align: 64, offset: 192)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !423, line: 77, baseType: !424)
!423 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64, align: 64)
!425 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !423, line: 77, flags: DIFlagFwdDecl)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !274, file: !4, line: 105, baseType: !422, size: 64, align: 64, offset: 256)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !274, file: !4, line: 106, baseType: !216, size: 64, align: 64, offset: 320)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !274, file: !4, line: 107, baseType: !383, size: 32, align: 32, offset: 384)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !274, file: !4, line: 109, baseType: !288, size: 64, align: 64, offset: 448)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !274, file: !4, line: 110, baseType: !431, size: 64, align: 64, offset: 512)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64, align: 64)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !433, line: 39, baseType: !434)
!433 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !433, line: 41, size: 192, align: 64, elements: !435)
!435 = !{!436, !437, !438}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !434, file: !433, line: 43, baseType: !216, size: 64, align: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !434, file: !433, line: 44, baseType: !288, size: 64, align: 64, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !434, file: !433, line: 45, baseType: !288, size: 64, align: 64, offset: 128)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !274, file: !4, line: 111, baseType: !431, size: 64, align: 64, offset: 576)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !274, file: !4, line: 112, baseType: !431, size: 64, align: 64, offset: 640)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !274, file: !4, line: 113, baseType: !442, size: 48, align: 8, offset: 704)
!442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !217, size: 48, align: 8, elements: !443)
!443 = !{!444}
!444 = !DISubrange(count: 6)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !274, file: !4, line: 117, baseType: !383, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !274, file: !4, line: 118, baseType: !383, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !274, file: !4, line: 119, baseType: !383, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !274, file: !4, line: 120, baseType: !383, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !274, file: !4, line: 121, baseType: !383, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !274, file: !4, line: 122, baseType: !383, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !274, file: !4, line: 124, baseType: !331, size: 64, align: 64, offset: 768)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !274, file: !4, line: 125, baseType: !331, size: 64, align: 64, offset: 832)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !236, file: !239, line: 38, baseType: !302, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !236, file: !239, line: 39, baseType: !302, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !236, file: !239, line: 40, baseType: !302, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !236, file: !239, line: 41, baseType: !302, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !236, file: !239, line: 42, baseType: !302, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !236, file: !239, line: 43, baseType: !302, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !236, file: !239, line: 44, baseType: !302, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !236, file: !239, line: 45, baseType: !302, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !236, file: !239, line: 46, baseType: !243, size: 64, align: 64, offset: 1792)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !236, file: !239, line: 47, baseType: !243, size: 64, align: 64, offset: 1856)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !225, file: !229, line: 9, baseType: !464, size: 64, align: 64, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !465, line: 75, baseType: !466)
!465 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !467, line: 139, baseType: !316)
!467 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!468 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !225, file: !229, line: 10, baseType: !464, size: 64, align: 64, offset: 256)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !225, file: !229, line: 12, baseType: !243, size: 64, align: 64, offset: 320)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !225, file: !229, line: 13, baseType: !243, size: 64, align: 64, offset: 384)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !225, file: !229, line: 15, baseType: !302, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !225, file: !229, line: 16, baseType: !302, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !225, file: !229, line: 17, baseType: !302, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !225, file: !229, line: 18, baseType: !302, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !225, file: !229, line: 19, baseType: !302, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !225, file: !229, line: 21, baseType: !477, size: 64, align: 64, offset: 512)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64, align: 64)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !224, line: 102, baseType: !479)
!479 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !224, line: 102, flags: DIFlagFwdDecl)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !225, file: !229, line: 22, baseType: !230, size: 32, align: 32, offset: 576)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !225, file: !229, line: 25, baseType: !482, size: 128, align: 64, offset: 640)
!482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 128, align: 64, elements: !483)
!483 = !{!484}
!484 = !DISubrange(count: 2)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !225, file: !229, line: 26, baseType: !230, size: 32, align: 32, offset: 768)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !225, file: !229, line: 27, baseType: !230, size: 32, align: 32, offset: 800)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !225, file: !229, line: 29, baseType: !488, size: 64, align: 64, offset: 832)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64, align: 64)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !224, line: 103, baseType: !490)
!490 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !224, line: 103, flags: DIFlagFwdDecl)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !225, file: !229, line: 30, baseType: !492, size: 64, align: 64, offset: 896)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64, align: 64)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !494, line: 37, baseType: !495)
!494 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!495 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !494, line: 37, flags: DIFlagFwdDecl)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !225, file: !229, line: 32, baseType: !243, size: 64, align: 64, offset: 960)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !225, file: !229, line: 33, baseType: !243, size: 64, align: 64, offset: 1024)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !225, file: !229, line: 34, baseType: !243, size: 64, align: 64, offset: 1088)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !225, file: !229, line: 35, baseType: !302, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !225, file: !229, line: 36, baseType: !302, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !225, file: !229, line: 37, baseType: !302, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !225, file: !229, line: 38, baseType: !302, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !225, file: !229, line: 40, baseType: !504, size: 128, align: 64, offset: 1216)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !218, line: 504, baseType: !505)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !218, line: 506, size: 128, align: 64, elements: !506)
!506 = !{!507, !509}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !505, file: !218, line: 508, baseType: !508, size: 64, align: 64)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !218, line: 48, baseType: !316)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !505, file: !218, line: 509, baseType: !508, size: 64, align: 64, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !225, file: !229, line: 41, baseType: !464, size: 64, align: 64, offset: 1344)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !225, file: !229, line: 42, baseType: !230, size: 32, align: 32, offset: 1408)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !225, file: !229, line: 44, baseType: !392, size: 64, align: 64, offset: 1472)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !225, file: !229, line: 45, baseType: !392, size: 64, align: 64, offset: 1536)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !225, file: !229, line: 53, baseType: !515, size: 64, align: 64, offset: 1600)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64, align: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{null, !222, !220, !230}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !225, file: !229, line: 55, baseType: !519, size: 64, align: 64, offset: 1664)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64, align: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!230, !222, !219}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !225, file: !229, line: 57, baseType: !523, size: 64, align: 64, offset: 1728)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64, align: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{!230, !222, !220}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !225, file: !229, line: 60, baseType: !527, size: 64, align: 64, offset: 1792)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64, align: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!220, !222}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !225, file: !229, line: 62, baseType: !531, size: 64, align: 64, offset: 1856)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64, align: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{null, !222, !220, !220, !230}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !225, file: !229, line: 65, baseType: !535, size: 64, align: 64, offset: 1920)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64, align: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!538, !222, !220, !220}
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !225, file: !229, line: 69, baseType: !540, size: 64, align: 64, offset: 1984)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64, align: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!543, !222, !220}
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64, align: 64)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !224, line: 109, baseType: !545)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !546, line: 15, size: 1408, align: 64, elements: !547)
!546 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!547 = !{!548, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !583, !584, !586, !587, !588, !589, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !545, file: !549, line: 3, baseType: !230, size: 32, align: 32)
!549 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!550 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !545, file: !549, line: 4, baseType: !230, size: 32, align: 32, offset: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !545, file: !549, line: 5, baseType: !492, size: 64, align: 64, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !545, file: !549, line: 7, baseType: !215, size: 64, align: 64, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !545, file: !549, line: 8, baseType: !222, size: 64, align: 64, offset: 192)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !545, file: !549, line: 9, baseType: !243, size: 64, align: 64, offset: 256)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !545, file: !549, line: 10, baseType: !243, size: 64, align: 64, offset: 320)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !545, file: !549, line: 11, baseType: !464, size: 64, align: 64, offset: 384)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !545, file: !549, line: 12, baseType: !230, size: 32, align: 32, offset: 448)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !545, file: !549, line: 13, baseType: !243, size: 64, align: 64, offset: 512)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !545, file: !549, line: 15, baseType: !560, size: 64, align: 64, offset: 576)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64, align: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{null, !563}
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64, align: 64)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !224, line: 108, baseType: !565)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !566, line: 5, size: 704, align: 64, elements: !567)
!566 = !DIFile(filename: "../../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!567 = !{!568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !565, file: !549, line: 3, baseType: !230, size: 32, align: 32)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !565, file: !549, line: 4, baseType: !230, size: 32, align: 32, offset: 32)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !565, file: !549, line: 5, baseType: !492, size: 64, align: 64, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !565, file: !549, line: 7, baseType: !215, size: 64, align: 64, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !565, file: !549, line: 8, baseType: !222, size: 64, align: 64, offset: 192)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !565, file: !549, line: 9, baseType: !243, size: 64, align: 64, offset: 256)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !565, file: !549, line: 10, baseType: !243, size: 64, align: 64, offset: 320)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !565, file: !549, line: 11, baseType: !464, size: 64, align: 64, offset: 384)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !565, file: !549, line: 12, baseType: !230, size: 32, align: 32, offset: 448)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !565, file: !549, line: 13, baseType: !243, size: 64, align: 64, offset: 512)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !565, file: !549, line: 15, baseType: !560, size: 64, align: 64, offset: 576)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !565, file: !549, line: 17, baseType: !580, size: 64, align: 64, offset: 640)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64, align: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{!220, !563}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !545, file: !549, line: 17, baseType: !580, size: 64, align: 64, offset: 640)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !545, file: !585, line: 5, baseType: !243, size: 64, align: 64, offset: 704)
!585 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!586 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !545, file: !585, line: 6, baseType: !243, size: 64, align: 64, offset: 768)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !545, file: !585, line: 7, baseType: !464, size: 64, align: 64, offset: 832)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !545, file: !585, line: 9, baseType: !492, size: 64, align: 64, offset: 896)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !545, file: !585, line: 10, baseType: !590, size: 64, align: 64, offset: 960)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64, align: 64)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !224, line: 111, baseType: !592)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !593, line: 13, size: 576, align: 64, elements: !594)
!593 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!594 = !{!595, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !613, !614}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !592, file: !596, line: 3, baseType: !230, size: 32, align: 32)
!596 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!597 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !592, file: !596, line: 4, baseType: !230, size: 32, align: 32, offset: 32)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !592, file: !596, line: 6, baseType: !464, size: 64, align: 64, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !592, file: !596, line: 8, baseType: !243, size: 64, align: 64, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !592, file: !596, line: 9, baseType: !243, size: 64, align: 64, offset: 192)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !592, file: !596, line: 10, baseType: !243, size: 64, align: 64, offset: 256)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !592, file: !596, line: 11, baseType: !230, size: 32, align: 32, offset: 320)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !592, file: !596, line: 14, baseType: !302, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !592, file: !596, line: 15, baseType: !302, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !592, file: !596, line: 18, baseType: !302, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !592, file: !596, line: 19, baseType: !302, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !592, file: !596, line: 20, baseType: !302, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !592, file: !596, line: 21, baseType: !302, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !592, file: !596, line: 22, baseType: !610, size: 64, align: 8, offset: 360)
!610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 64, align: 8, elements: !611)
!611 = !{!612}
!612 = !DISubrange(count: 8)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !592, file: !596, line: 26, baseType: !215, size: 64, align: 64, offset: 448)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !592, file: !596, line: 28, baseType: !590, size: 64, align: 64, offset: 512)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !545, file: !585, line: 12, baseType: !302, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !545, file: !585, line: 13, baseType: !243, size: 64, align: 64, offset: 1088)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !545, file: !585, line: 14, baseType: !230, size: 32, align: 32, offset: 1152)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !545, file: !585, line: 15, baseType: !243, size: 64, align: 64, offset: 1216)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !545, file: !585, line: 17, baseType: !302, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !545, file: !585, line: 18, baseType: !302, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !545, file: !585, line: 19, baseType: !302, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !545, file: !585, line: 20, baseType: !302, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !545, file: !585, line: 22, baseType: !302, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !545, file: !585, line: 23, baseType: !302, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !545, file: !585, line: 24, baseType: !302, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !545, file: !585, line: 25, baseType: !302, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !545, file: !585, line: 26, baseType: !302, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !545, file: !585, line: 31, baseType: !629, size: 64, align: 64, offset: 1344)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64, align: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!243, !543}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !225, file: !229, line: 70, baseType: !633, size: 64, align: 64, offset: 2048)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64, align: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!636, !222, !220}
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64, align: 64)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !224, line: 110, baseType: !638)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !639, line: 15, size: 960, align: 64, elements: !640)
!639 = !DIFile(filename: "../../../src/core/queries.h", directory: "/home/lichi/Desktop/irssi/task1")
!640 = !{!641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !655, !656, !657, !658}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !638, file: !549, line: 3, baseType: !230, size: 32, align: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !638, file: !549, line: 4, baseType: !230, size: 32, align: 32, offset: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !638, file: !549, line: 5, baseType: !492, size: 64, align: 64, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !638, file: !549, line: 7, baseType: !215, size: 64, align: 64, offset: 128)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !638, file: !549, line: 8, baseType: !222, size: 64, align: 64, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !638, file: !549, line: 9, baseType: !243, size: 64, align: 64, offset: 256)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !638, file: !549, line: 10, baseType: !243, size: 64, align: 64, offset: 320)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !638, file: !549, line: 11, baseType: !464, size: 64, align: 64, offset: 384)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !638, file: !549, line: 12, baseType: !230, size: 32, align: 32, offset: 448)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !638, file: !549, line: 13, baseType: !243, size: 64, align: 64, offset: 512)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !638, file: !549, line: 15, baseType: !560, size: 64, align: 64, offset: 576)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !638, file: !549, line: 17, baseType: !580, size: 64, align: 64, offset: 640)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !638, file: !654, line: 5, baseType: !243, size: 64, align: 64, offset: 704)
!654 = !DIFile(filename: "../../../src/core/query-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!655 = !DIDerivedType(tag: DW_TAG_member, name: "server_tag", scope: !638, file: !654, line: 6, baseType: !243, size: 64, align: 64, offset: 768)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "last_unread_msg", scope: !638, file: !654, line: 7, baseType: !464, size: 64, align: 64, offset: 832)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "unwanted", scope: !638, file: !654, line: 9, baseType: !302, size: 1, align: 32, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !638, file: !654, line: 11, baseType: !302, size: 1, align: 32, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !225, file: !229, line: 71, baseType: !660, size: 64, align: 64, offset: 2112)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64, align: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!230, !220, !220}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !225, file: !229, line: 73, baseType: !660, size: 64, align: 64, offset: 2176)
!664 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!665 = !{i32 2, !"Dwarf Version", i32 4}
!666 = !{i32 2, !"Debug Info Version", i32 3}
!667 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!668 = distinct !DISubprogram(name: "fe_events_init", scope: !669, file: !669, line: 438, type: !380, isLocal: false, isDefinition: true, scopeLine: 439, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !670)
!669 = !DIFile(filename: "fe-events.c", directory: "/home/lichi/Desktop/irssi/task1")
!670 = !{}
!671 = !DILocation(line: 440, column: 2, scope: !668)
!672 = !DILocation(line: 441, column: 2, scope: !668)
!673 = !DILocation(line: 442, column: 2, scope: !668)
!674 = !DILocation(line: 443, column: 2, scope: !668)
!675 = !DILocation(line: 444, column: 2, scope: !668)
!676 = !DILocation(line: 445, column: 2, scope: !668)
!677 = !DILocation(line: 446, column: 2, scope: !668)
!678 = !DILocation(line: 447, column: 2, scope: !668)
!679 = !DILocation(line: 448, column: 2, scope: !668)
!680 = !DILocation(line: 449, column: 2, scope: !668)
!681 = !DILocation(line: 450, column: 2, scope: !668)
!682 = !DILocation(line: 451, column: 2, scope: !668)
!683 = !DILocation(line: 452, column: 2, scope: !668)
!684 = !DILocation(line: 453, column: 2, scope: !668)
!685 = !DILocation(line: 454, column: 2, scope: !668)
!686 = !DILocation(line: 455, column: 2, scope: !668)
!687 = !DILocation(line: 457, column: 2, scope: !668)
!688 = !DILocation(line: 459, column: 2, scope: !668)
!689 = !DILocation(line: 460, column: 2, scope: !668)
!690 = !DILocation(line: 461, column: 2, scope: !668)
!691 = !DILocation(line: 462, column: 2, scope: !668)
!692 = !DILocation(line: 463, column: 2, scope: !668)
!693 = !DILocation(line: 464, column: 2, scope: !668)
!694 = !DILocation(line: 465, column: 1, scope: !668)
!695 = distinct !DISubprogram(name: "event_privmsg", scope: !669, file: !669, line: 46, type: !696, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !670)
!696 = !DISubroutineType(types: !697)
!697 = !{null, !698, !220, !220, !220}
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64, align: 64)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !700, line: 6, baseType: !701)
!700 = !DIFile(filename: "../../../src/irc/core/irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !702, line: 42, size: 39168, align: 64, elements: !703)
!702 = !DIFile(filename: "../../../src/irc/core/irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!703 = !{!704, !705, !706, !707, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !903, !905}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !701, file: !229, line: 3, baseType: !230, size: 32, align: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !701, file: !229, line: 4, baseType: !230, size: 32, align: 32, offset: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !701, file: !229, line: 6, baseType: !230, size: 32, align: 32, offset: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !701, file: !229, line: 8, baseType: !708, size: 64, align: 64, offset: 128)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64, align: 64)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !700, line: 5, baseType: !710)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !702, line: 24, size: 2496, align: 64, elements: !711)
!711 = !{!712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !710, file: !239, line: 3, baseType: !230, size: 32, align: 32)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !710, file: !239, line: 4, baseType: !230, size: 32, align: 32, offset: 32)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !710, file: !239, line: 6, baseType: !230, size: 32, align: 32, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !710, file: !239, line: 9, baseType: !243, size: 64, align: 64, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !710, file: !239, line: 10, baseType: !230, size: 32, align: 32, offset: 192)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !710, file: !239, line: 11, baseType: !243, size: 64, align: 64, offset: 256)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !710, file: !239, line: 11, baseType: !243, size: 64, align: 64, offset: 320)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !710, file: !239, line: 11, baseType: !243, size: 64, align: 64, offset: 384)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !710, file: !239, line: 13, baseType: !249, size: 16, align: 16, offset: 448)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !710, file: !239, line: 14, baseType: !243, size: 64, align: 64, offset: 512)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !710, file: !239, line: 15, baseType: !243, size: 64, align: 64, offset: 576)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !710, file: !239, line: 16, baseType: !230, size: 32, align: 32, offset: 640)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !710, file: !239, line: 17, baseType: !243, size: 64, align: 64, offset: 704)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !710, file: !239, line: 19, baseType: !255, size: 64, align: 64, offset: 768)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !710, file: !239, line: 19, baseType: !255, size: 64, align: 64, offset: 832)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !710, file: !239, line: 21, baseType: !243, size: 64, align: 64, offset: 896)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !710, file: !239, line: 22, baseType: !243, size: 64, align: 64, offset: 960)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !710, file: !239, line: 23, baseType: !243, size: 64, align: 64, offset: 1024)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !710, file: !239, line: 24, baseType: !243, size: 64, align: 64, offset: 1088)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !710, file: !239, line: 26, baseType: !243, size: 64, align: 64, offset: 1152)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !710, file: !239, line: 27, baseType: !243, size: 64, align: 64, offset: 1216)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !710, file: !239, line: 28, baseType: !243, size: 64, align: 64, offset: 1280)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !710, file: !239, line: 29, baseType: !243, size: 64, align: 64, offset: 1344)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !710, file: !239, line: 30, baseType: !243, size: 64, align: 64, offset: 1408)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !710, file: !239, line: 31, baseType: !243, size: 64, align: 64, offset: 1472)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !710, file: !239, line: 32, baseType: !243, size: 64, align: 64, offset: 1536)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !710, file: !239, line: 33, baseType: !243, size: 64, align: 64, offset: 1600)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !710, file: !239, line: 35, baseType: !272, size: 64, align: 64, offset: 1664)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !710, file: !239, line: 38, baseType: !302, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !710, file: !239, line: 39, baseType: !302, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !710, file: !239, line: 40, baseType: !302, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !710, file: !239, line: 41, baseType: !302, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !710, file: !239, line: 42, baseType: !302, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !710, file: !239, line: 43, baseType: !302, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !710, file: !239, line: 44, baseType: !302, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !710, file: !239, line: 45, baseType: !302, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !710, file: !239, line: 46, baseType: !243, size: 64, align: 64, offset: 1792)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !710, file: !239, line: 47, baseType: !243, size: 64, align: 64, offset: 1856)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !710, file: !702, line: 27, baseType: !243, size: 64, align: 64, offset: 1920)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !710, file: !702, line: 28, baseType: !243, size: 64, align: 64, offset: 1984)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !710, file: !702, line: 30, baseType: !230, size: 32, align: 32, offset: 2048)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !710, file: !702, line: 31, baseType: !243, size: 64, align: 64, offset: 2112)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !710, file: !702, line: 32, baseType: !243, size: 64, align: 64, offset: 2176)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !710, file: !702, line: 34, baseType: !230, size: 32, align: 32, offset: 2240)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !710, file: !702, line: 35, baseType: !230, size: 32, align: 32, offset: 2272)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !710, file: !702, line: 36, baseType: !230, size: 32, align: 32, offset: 2304)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !710, file: !702, line: 38, baseType: !230, size: 32, align: 32, offset: 2336)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !710, file: !702, line: 38, baseType: !230, size: 32, align: 32, offset: 2368)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !710, file: !702, line: 38, baseType: !230, size: 32, align: 32, offset: 2400)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !710, file: !702, line: 38, baseType: !230, size: 32, align: 32, offset: 2432)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !701, file: !229, line: 9, baseType: !464, size: 64, align: 64, offset: 192)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !701, file: !229, line: 10, baseType: !464, size: 64, align: 64, offset: 256)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !701, file: !229, line: 12, baseType: !243, size: 64, align: 64, offset: 320)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !701, file: !229, line: 13, baseType: !243, size: 64, align: 64, offset: 384)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !701, file: !229, line: 15, baseType: !302, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !701, file: !229, line: 16, baseType: !302, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !701, file: !229, line: 17, baseType: !302, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !701, file: !229, line: 18, baseType: !302, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !701, file: !229, line: 19, baseType: !302, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !701, file: !229, line: 21, baseType: !477, size: 64, align: 64, offset: 512)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !701, file: !229, line: 22, baseType: !230, size: 32, align: 32, offset: 576)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !701, file: !229, line: 25, baseType: !482, size: 128, align: 64, offset: 640)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !701, file: !229, line: 26, baseType: !230, size: 32, align: 32, offset: 768)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !701, file: !229, line: 27, baseType: !230, size: 32, align: 32, offset: 800)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !701, file: !229, line: 29, baseType: !488, size: 64, align: 64, offset: 832)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !701, file: !229, line: 30, baseType: !492, size: 64, align: 64, offset: 896)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !701, file: !229, line: 32, baseType: !243, size: 64, align: 64, offset: 960)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !701, file: !229, line: 33, baseType: !243, size: 64, align: 64, offset: 1024)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !701, file: !229, line: 34, baseType: !243, size: 64, align: 64, offset: 1088)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !701, file: !229, line: 35, baseType: !302, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !701, file: !229, line: 36, baseType: !302, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !701, file: !229, line: 37, baseType: !302, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !701, file: !229, line: 38, baseType: !302, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !701, file: !229, line: 40, baseType: !504, size: 128, align: 64, offset: 1216)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !701, file: !229, line: 41, baseType: !464, size: 64, align: 64, offset: 1344)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !701, file: !229, line: 42, baseType: !230, size: 32, align: 32, offset: 1408)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !701, file: !229, line: 44, baseType: !392, size: 64, align: 64, offset: 1472)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !701, file: !229, line: 45, baseType: !392, size: 64, align: 64, offset: 1536)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !701, file: !229, line: 53, baseType: !515, size: 64, align: 64, offset: 1600)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !701, file: !229, line: 55, baseType: !519, size: 64, align: 64, offset: 1664)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !701, file: !229, line: 57, baseType: !523, size: 64, align: 64, offset: 1728)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !701, file: !229, line: 60, baseType: !527, size: 64, align: 64, offset: 1792)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !701, file: !229, line: 62, baseType: !531, size: 64, align: 64, offset: 1856)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !701, file: !229, line: 65, baseType: !535, size: 64, align: 64, offset: 1920)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !701, file: !229, line: 69, baseType: !540, size: 64, align: 64, offset: 1984)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !701, file: !229, line: 70, baseType: !633, size: 64, align: 64, offset: 2048)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !701, file: !229, line: 71, baseType: !660, size: 64, align: 64, offset: 2112)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !701, file: !229, line: 73, baseType: !660, size: 64, align: 64, offset: 2176)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !701, file: !702, line: 46, baseType: !392, size: 64, align: 64, offset: 2240)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !701, file: !702, line: 47, baseType: !392, size: 64, align: 64, offset: 2304)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !701, file: !702, line: 48, baseType: !803, size: 64, align: 64, offset: 2368)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64, align: 64)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !700, line: 8, baseType: !805)
!805 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !700, line: 8, flags: DIFlagFwdDecl)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !701, file: !702, line: 49, baseType: !392, size: 64, align: 64, offset: 2432)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !701, file: !702, line: 51, baseType: !243, size: 64, align: 64, offset: 2496)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !701, file: !702, line: 53, baseType: !243, size: 64, align: 64, offset: 2560)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !701, file: !702, line: 54, baseType: !243, size: 64, align: 64, offset: 2624)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !701, file: !702, line: 55, baseType: !243, size: 64, align: 64, offset: 2688)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !701, file: !702, line: 56, baseType: !243, size: 64, align: 64, offset: 2752)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !701, file: !702, line: 57, baseType: !230, size: 32, align: 32, offset: 2816)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !701, file: !702, line: 59, baseType: !302, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !701, file: !702, line: 60, baseType: !302, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !701, file: !702, line: 62, baseType: !302, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !701, file: !702, line: 63, baseType: !302, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !701, file: !702, line: 64, baseType: !302, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !701, file: !702, line: 65, baseType: !302, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !701, file: !702, line: 66, baseType: !302, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !701, file: !702, line: 67, baseType: !302, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !701, file: !702, line: 68, baseType: !302, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !701, file: !702, line: 69, baseType: !302, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !701, file: !702, line: 70, baseType: !302, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !701, file: !702, line: 71, baseType: !302, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !701, file: !702, line: 72, baseType: !302, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !701, file: !702, line: 74, baseType: !230, size: 32, align: 32, offset: 2880)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !701, file: !702, line: 75, baseType: !230, size: 32, align: 32, offset: 2912)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !701, file: !702, line: 76, baseType: !230, size: 32, align: 32, offset: 2944)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !701, file: !702, line: 77, baseType: !230, size: 32, align: 32, offset: 2976)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !701, file: !702, line: 79, baseType: !492, size: 64, align: 64, offset: 3008)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !701, file: !702, line: 80, baseType: !392, size: 64, align: 64, offset: 3072)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !701, file: !702, line: 81, baseType: !392, size: 64, align: 64, offset: 3136)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !701, file: !702, line: 83, baseType: !431, size: 64, align: 64, offset: 3200)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !701, file: !702, line: 84, baseType: !383, size: 32, align: 32, offset: 3264)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !701, file: !702, line: 87, baseType: !230, size: 32, align: 32, offset: 3296)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !701, file: !702, line: 91, baseType: !392, size: 64, align: 64, offset: 3328)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !701, file: !702, line: 92, baseType: !504, size: 128, align: 64, offset: 3392)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !701, file: !702, line: 93, baseType: !504, size: 128, align: 64, offset: 3520)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !701, file: !702, line: 95, baseType: !230, size: 32, align: 32, offset: 3648)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !701, file: !702, line: 96, baseType: !230, size: 32, align: 32, offset: 3680)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !701, file: !702, line: 97, baseType: !230, size: 32, align: 32, offset: 3712)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !701, file: !702, line: 100, baseType: !392, size: 64, align: 64, offset: 3776)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !701, file: !702, line: 103, baseType: !392, size: 64, align: 64, offset: 3840)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !701, file: !702, line: 106, baseType: !392, size: 64, align: 64, offset: 3904)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !701, file: !702, line: 108, baseType: !492, size: 64, align: 64, offset: 3968)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !701, file: !702, line: 109, baseType: !392, size: 64, align: 64, offset: 4032)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !701, file: !702, line: 111, baseType: !392, size: 64, align: 64, offset: 4096)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !701, file: !702, line: 114, baseType: !215, size: 64, align: 64, offset: 4160)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !701, file: !702, line: 116, baseType: !492, size: 64, align: 64, offset: 4224)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !701, file: !702, line: 117, baseType: !851, size: 32768, align: 64, offset: 4288)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !852, size: 32768, align: 64, elements: !901)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !853, line: 10, size: 128, align: 64, elements: !854)
!853 = !DIFile(filename: "../../../src/irc/core/modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!854 = !{!855, !900}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !852, file: !853, line: 11, baseType: !856, size: 64, align: 64)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64, align: 64)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !853, line: 7, baseType: !858)
!858 = !DISubroutineType(types: !859)
!859 = !{null, !860, !220, !219, !219, !243, !431}
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64, align: 64)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !700, line: 7, baseType: !862)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !863, line: 15, size: 1600, align: 64, elements: !864)
!863 = !DIFile(filename: "../../../src/irc/core/irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!864 = !{!865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !862, file: !549, line: 3, baseType: !230, size: 32, align: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !862, file: !549, line: 4, baseType: !230, size: 32, align: 32, offset: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !862, file: !549, line: 5, baseType: !492, size: 64, align: 64, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !862, file: !549, line: 7, baseType: !215, size: 64, align: 64, offset: 128)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !862, file: !549, line: 8, baseType: !698, size: 64, align: 64, offset: 192)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !862, file: !549, line: 9, baseType: !243, size: 64, align: 64, offset: 256)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !862, file: !549, line: 10, baseType: !243, size: 64, align: 64, offset: 320)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !862, file: !549, line: 11, baseType: !464, size: 64, align: 64, offset: 384)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !862, file: !549, line: 12, baseType: !230, size: 32, align: 32, offset: 448)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !862, file: !549, line: 13, baseType: !243, size: 64, align: 64, offset: 512)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !862, file: !549, line: 15, baseType: !560, size: 64, align: 64, offset: 576)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !862, file: !549, line: 17, baseType: !580, size: 64, align: 64, offset: 640)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !862, file: !585, line: 5, baseType: !243, size: 64, align: 64, offset: 704)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !862, file: !585, line: 6, baseType: !243, size: 64, align: 64, offset: 768)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !862, file: !585, line: 7, baseType: !464, size: 64, align: 64, offset: 832)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !862, file: !585, line: 9, baseType: !492, size: 64, align: 64, offset: 896)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !862, file: !585, line: 10, baseType: !590, size: 64, align: 64, offset: 960)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !862, file: !585, line: 12, baseType: !302, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !862, file: !585, line: 13, baseType: !243, size: 64, align: 64, offset: 1088)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !862, file: !585, line: 14, baseType: !230, size: 32, align: 32, offset: 1152)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !862, file: !585, line: 15, baseType: !243, size: 64, align: 64, offset: 1216)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !862, file: !585, line: 17, baseType: !302, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !862, file: !585, line: 18, baseType: !302, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !862, file: !585, line: 19, baseType: !302, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !862, file: !585, line: 20, baseType: !302, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !862, file: !585, line: 22, baseType: !302, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !862, file: !585, line: 23, baseType: !302, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !862, file: !585, line: 24, baseType: !302, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !862, file: !585, line: 25, baseType: !302, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !862, file: !585, line: 26, baseType: !302, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !862, file: !585, line: 31, baseType: !629, size: 64, align: 64, offset: 1344)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !862, file: !863, line: 18, baseType: !392, size: 64, align: 64, offset: 1408)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !862, file: !863, line: 20, baseType: !464, size: 64, align: 64, offset: 1472)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !862, file: !863, line: 21, baseType: !230, size: 32, align: 32, offset: 1536)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !862, file: !863, line: 22, baseType: !230, size: 32, align: 32, offset: 1568)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !852, file: !853, line: 12, baseType: !219, size: 8, align: 8, offset: 64)
!901 = !{!902}
!902 = !DISubrange(count: 256)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !701, file: !702, line: 118, baseType: !904, size: 2048, align: 8, offset: 37056)
!904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 2048, align: 8, elements: !901)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !701, file: !702, line: 120, baseType: !660, size: 64, align: 64, offset: 39104)
!906 = !DILocalVariable(name: "server", arg: 1, scope: !695, file: !669, line: 46, type: !698)
!907 = !DIExpression()
!908 = !DILocation(line: 46, column: 43, scope: !695)
!909 = !DILocalVariable(name: "data", arg: 2, scope: !695, file: !669, line: 46, type: !220)
!910 = !DILocation(line: 46, column: 63, scope: !695)
!911 = !DILocalVariable(name: "nick", arg: 3, scope: !695, file: !669, line: 47, type: !220)
!912 = !DILocation(line: 47, column: 18, scope: !695)
!913 = !DILocalVariable(name: "addr", arg: 4, scope: !695, file: !669, line: 47, type: !220)
!914 = !DILocation(line: 47, column: 36, scope: !695)
!915 = !DILocalVariable(name: "params", scope: !695, file: !669, line: 49, type: !243)
!916 = !DILocation(line: 49, column: 8, scope: !695)
!917 = !DILocalVariable(name: "target", scope: !695, file: !669, line: 49, type: !243)
!918 = !DILocation(line: 49, column: 17, scope: !695)
!919 = !DILocalVariable(name: "msg", scope: !695, file: !669, line: 49, type: !243)
!920 = !DILocation(line: 49, column: 26, scope: !695)
!921 = !DILocalVariable(name: "recoded", scope: !695, file: !669, line: 49, type: !243)
!922 = !DILocation(line: 49, column: 32, scope: !695)
!923 = !DILocation(line: 51, column: 2, scope: !695)
!924 = distinct !{!924, !923}
!925 = !DILocation(line: 51, column: 10, scope: !926)
!926 = !DILexicalBlockFile(scope: !927, file: !669, discriminator: 1)
!927 = distinct !DILexicalBlock(scope: !928, file: !669, line: 51, column: 10)
!928 = distinct !DILexicalBlock(scope: !695, file: !669, line: 51, column: 4)
!929 = !DILocation(line: 51, column: 15, scope: !926)
!930 = !DILocation(line: 51, column: 5, scope: !931)
!931 = !DILexicalBlockFile(scope: !932, file: !669, discriminator: 2)
!932 = distinct !DILexicalBlock(scope: !927, file: !669, line: 51, column: 3)
!933 = !DILocation(line: 51, column: 14, scope: !934)
!934 = !DILexicalBlockFile(scope: !935, file: !669, discriminator: 3)
!935 = distinct !DILexicalBlock(scope: !927, file: !669, line: 51, column: 12)
!936 = !DILocation(line: 51, column: 99, scope: !934)
!937 = !DILocation(line: 51, column: 110, scope: !938)
!938 = !DILexicalBlockFile(scope: !928, file: !669, discriminator: 4)
!939 = !DILocation(line: 53, column: 28, scope: !695)
!940 = !DILocation(line: 53, column: 11, scope: !695)
!941 = !DILocation(line: 53, column: 9, scope: !695)
!942 = !DILocation(line: 54, column: 6, scope: !943)
!943 = distinct !DILexicalBlock(scope: !695, file: !669, line: 54, column: 6)
!944 = !DILocation(line: 54, column: 11, scope: !943)
!945 = !DILocation(line: 54, column: 6, scope: !695)
!946 = !DILocation(line: 54, column: 26, scope: !947)
!947 = !DILexicalBlockFile(scope: !943, file: !669, discriminator: 1)
!948 = !DILocation(line: 54, column: 34, scope: !947)
!949 = !DILocation(line: 54, column: 24, scope: !947)
!950 = !DILocation(line: 54, column: 19, scope: !947)
!951 = !DILocation(line: 55, column: 6, scope: !952)
!952 = distinct !DILexicalBlock(scope: !695, file: !669, line: 55, column: 6)
!953 = !DILocation(line: 55, column: 11, scope: !952)
!954 = !DILocation(line: 55, column: 6, scope: !695)
!955 = !DILocation(line: 55, column: 24, scope: !956)
!956 = !DILexicalBlockFile(scope: !952, file: !669, discriminator: 1)
!957 = !DILocation(line: 55, column: 19, scope: !956)
!958 = !DILocation(line: 57, column: 30, scope: !959)
!959 = distinct !DILexicalBlock(scope: !695, file: !669, line: 57, column: 6)
!960 = !DILocation(line: 57, column: 38, scope: !959)
!961 = !DILocation(line: 57, column: 6, scope: !959)
!962 = !DILocation(line: 57, column: 6, scope: !695)
!963 = !DILocalVariable(name: "cleantarget", scope: !964, file: !669, line: 59, type: !220)
!964 = distinct !DILexicalBlock(scope: !959, file: !669, line: 57, column: 47)
!965 = !DILocation(line: 59, column: 15, scope: !964)
!966 = !DILocation(line: 59, column: 52, scope: !964)
!967 = !DILocation(line: 59, column: 60, scope: !964)
!968 = !DILocation(line: 59, column: 29, scope: !964)
!969 = !DILocation(line: 60, column: 57, scope: !964)
!970 = !DILocation(line: 60, column: 39, scope: !964)
!971 = !DILocation(line: 60, column: 24, scope: !964)
!972 = !DILocation(line: 60, column: 36, scope: !964)
!973 = !DILocation(line: 60, column: 41, scope: !964)
!974 = !DILocation(line: 60, column: 13, scope: !975)
!975 = !DILexicalBlockFile(scope: !964, file: !669, discriminator: 1)
!976 = !DILocation(line: 60, column: 11, scope: !964)
!977 = !DILocation(line: 65, column: 8, scope: !964)
!978 = !DILocation(line: 65, column: 16, scope: !964)
!979 = !DILocation(line: 65, column: 25, scope: !964)
!980 = !DILocation(line: 65, column: 31, scope: !964)
!981 = !DILocation(line: 65, column: 37, scope: !964)
!982 = !DILocation(line: 64, column: 3, scope: !964)
!983 = !DILocation(line: 66, column: 2, scope: !964)
!984 = !DILocation(line: 67, column: 57, scope: !985)
!985 = distinct !DILexicalBlock(scope: !959, file: !669, line: 66, column: 9)
!986 = !DILocation(line: 67, column: 39, scope: !985)
!987 = !DILocation(line: 67, column: 24, scope: !985)
!988 = !DILocation(line: 67, column: 36, scope: !985)
!989 = !DILocation(line: 67, column: 77, scope: !985)
!990 = !DILocation(line: 67, column: 59, scope: !991)
!991 = !DILexicalBlockFile(scope: !985, file: !669, discriminator: 4)
!992 = !DILocation(line: 67, column: 44, scope: !985)
!993 = !DILocation(line: 67, column: 58, scope: !985)
!994 = !DILocation(line: 67, column: 102, scope: !985)
!995 = !DILocation(line: 67, column: 84, scope: !996)
!996 = !DILexicalBlockFile(scope: !985, file: !669, discriminator: 5)
!997 = !DILocation(line: 67, column: 69, scope: !985)
!998 = !DILocation(line: 67, column: 42, scope: !999)
!999 = !DILexicalBlockFile(scope: !985, file: !669, discriminator: 6)
!1000 = !DILocation(line: 67, column: 42, scope: !985)
!1001 = !DILocation(line: 67, column: 41, scope: !985)
!1002 = !DILocation(line: 67, column: 68, scope: !1003)
!1003 = !DILexicalBlockFile(scope: !985, file: !669, discriminator: 1)
!1004 = !DILocation(line: 67, column: 41, scope: !1003)
!1005 = !DILocation(line: 67, column: 77, scope: !1006)
!1006 = !DILexicalBlockFile(scope: !985, file: !669, discriminator: 2)
!1007 = !DILocation(line: 67, column: 41, scope: !1006)
!1008 = !DILocation(line: 67, column: 41, scope: !1009)
!1009 = !DILexicalBlockFile(scope: !985, file: !669, discriminator: 3)
!1010 = !DILocation(line: 67, column: 13, scope: !1009)
!1011 = !DILocation(line: 67, column: 11, scope: !1009)
!1012 = !DILocation(line: 68, column: 51, scope: !985)
!1013 = !DILocation(line: 68, column: 33, scope: !985)
!1014 = !DILocation(line: 68, column: 18, scope: !985)
!1015 = !DILocation(line: 68, column: 29, scope: !985)
!1016 = !DILocation(line: 68, column: 73, scope: !985)
!1017 = !DILocation(line: 68, column: 55, scope: !1003)
!1018 = !DILocation(line: 68, column: 40, scope: !985)
!1019 = !DILocation(line: 68, column: 28, scope: !985)
!1020 = !DILocation(line: 68, column: 16, scope: !1006)
!1021 = !DILocation(line: 68, column: 15, scope: !985)
!1022 = !DILocation(line: 70, column: 8, scope: !985)
!1023 = !DILocation(line: 70, column: 16, scope: !985)
!1024 = !DILocation(line: 70, column: 25, scope: !985)
!1025 = !DILocation(line: 70, column: 31, scope: !985)
!1026 = !DILocation(line: 71, column: 27, scope: !985)
!1027 = !DILocation(line: 71, column: 35, scope: !985)
!1028 = !DILocation(line: 71, column: 8, scope: !985)
!1029 = !DILocation(line: 68, column: 3, scope: !1009)
!1030 = !DILocation(line: 74, column: 9, scope: !695)
!1031 = !DILocation(line: 74, column: 2, scope: !695)
!1032 = !DILocation(line: 75, column: 9, scope: !695)
!1033 = !DILocation(line: 75, column: 2, scope: !695)
!1034 = !DILocation(line: 76, column: 1, scope: !695)
!1035 = !DILocation(line: 76, column: 1, scope: !1036)
!1036 = !DILexicalBlockFile(scope: !695, file: !669, discriminator: 1)
!1037 = distinct !DISubprogram(name: "ctcp_action", scope: !669, file: !669, line: 78, type: !1038, isLocal: true, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !670)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{null, !698, !220, !220, !220, !220}
!1040 = !DILocalVariable(name: "server", arg: 1, scope: !1037, file: !669, line: 78, type: !698)
!1041 = !DILocation(line: 78, column: 41, scope: !1037)
!1042 = !DILocalVariable(name: "data", arg: 2, scope: !1037, file: !669, line: 78, type: !220)
!1043 = !DILocation(line: 78, column: 61, scope: !1037)
!1044 = !DILocalVariable(name: "nick", arg: 3, scope: !1037, file: !669, line: 79, type: !220)
!1045 = !DILocation(line: 79, column: 16, scope: !1037)
!1046 = !DILocalVariable(name: "addr", arg: 4, scope: !1037, file: !669, line: 79, type: !220)
!1047 = !DILocation(line: 79, column: 34, scope: !1037)
!1048 = !DILocalVariable(name: "target", arg: 5, scope: !1037, file: !669, line: 80, type: !220)
!1049 = !DILocation(line: 80, column: 16, scope: !1037)
!1050 = !DILocalVariable(name: "recoded", scope: !1037, file: !669, line: 82, type: !243)
!1051 = !DILocation(line: 82, column: 8, scope: !1037)
!1052 = !DILocation(line: 84, column: 2, scope: !1037)
!1053 = distinct !{!1053, !1052}
!1054 = !DILocation(line: 84, column: 10, scope: !1055)
!1055 = !DILexicalBlockFile(scope: !1056, file: !669, discriminator: 1)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !669, line: 84, column: 10)
!1057 = distinct !DILexicalBlock(scope: !1037, file: !669, line: 84, column: 4)
!1058 = !DILocation(line: 84, column: 15, scope: !1055)
!1059 = !DILocation(line: 84, column: 5, scope: !1060)
!1060 = !DILexicalBlockFile(scope: !1061, file: !669, discriminator: 2)
!1061 = distinct !DILexicalBlock(scope: !1056, file: !669, line: 84, column: 3)
!1062 = !DILocation(line: 84, column: 14, scope: !1063)
!1063 = !DILexicalBlockFile(scope: !1064, file: !669, discriminator: 3)
!1064 = distinct !DILexicalBlock(scope: !1056, file: !669, line: 84, column: 12)
!1065 = !DILocation(line: 84, column: 99, scope: !1063)
!1066 = !DILocation(line: 84, column: 110, scope: !1067)
!1067 = !DILexicalBlockFile(scope: !1057, file: !669, discriminator: 4)
!1068 = !DILocation(line: 85, column: 56, scope: !1037)
!1069 = !DILocation(line: 85, column: 38, scope: !1037)
!1070 = !DILocation(line: 85, column: 23, scope: !1037)
!1071 = !DILocation(line: 85, column: 35, scope: !1037)
!1072 = !DILocation(line: 85, column: 41, scope: !1037)
!1073 = !DILocation(line: 85, column: 12, scope: !1074)
!1074 = !DILexicalBlockFile(scope: !1037, file: !669, discriminator: 1)
!1075 = !DILocation(line: 85, column: 10, scope: !1037)
!1076 = !DILocation(line: 87, column: 7, scope: !1037)
!1077 = !DILocation(line: 87, column: 15, scope: !1037)
!1078 = !DILocation(line: 87, column: 24, scope: !1037)
!1079 = !DILocation(line: 87, column: 30, scope: !1037)
!1080 = !DILocation(line: 88, column: 26, scope: !1037)
!1081 = !DILocation(line: 88, column: 34, scope: !1037)
!1082 = !DILocation(line: 88, column: 7, scope: !1037)
!1083 = !DILocation(line: 86, column: 2, scope: !1037)
!1084 = !DILocation(line: 89, column: 9, scope: !1037)
!1085 = !DILocation(line: 89, column: 2, scope: !1037)
!1086 = !DILocation(line: 90, column: 1, scope: !1037)
!1087 = !DILocation(line: 90, column: 1, scope: !1074)
!1088 = distinct !DISubprogram(name: "event_notice", scope: !669, file: !669, line: 92, type: !696, isLocal: true, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !670)
!1089 = !DILocalVariable(name: "server", arg: 1, scope: !1088, file: !669, line: 92, type: !698)
!1090 = !DILocation(line: 92, column: 42, scope: !1088)
!1091 = !DILocalVariable(name: "data", arg: 2, scope: !1088, file: !669, line: 92, type: !220)
!1092 = !DILocation(line: 92, column: 62, scope: !1088)
!1093 = !DILocalVariable(name: "nick", arg: 3, scope: !1088, file: !669, line: 93, type: !220)
!1094 = !DILocation(line: 93, column: 17, scope: !1088)
!1095 = !DILocalVariable(name: "addr", arg: 4, scope: !1088, file: !669, line: 93, type: !220)
!1096 = !DILocation(line: 93, column: 35, scope: !1088)
!1097 = !DILocalVariable(name: "params", scope: !1088, file: !669, line: 95, type: !243)
!1098 = !DILocation(line: 95, column: 8, scope: !1088)
!1099 = !DILocalVariable(name: "target", scope: !1088, file: !669, line: 95, type: !243)
!1100 = !DILocation(line: 95, column: 17, scope: !1088)
!1101 = !DILocalVariable(name: "msg", scope: !1088, file: !669, line: 95, type: !243)
!1102 = !DILocation(line: 95, column: 26, scope: !1088)
!1103 = !DILocalVariable(name: "recoded", scope: !1088, file: !669, line: 95, type: !243)
!1104 = !DILocation(line: 95, column: 32, scope: !1088)
!1105 = !DILocation(line: 97, column: 2, scope: !1088)
!1106 = distinct !{!1106, !1105}
!1107 = !DILocation(line: 97, column: 10, scope: !1108)
!1108 = !DILexicalBlockFile(scope: !1109, file: !669, discriminator: 1)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !669, line: 97, column: 10)
!1110 = distinct !DILexicalBlock(scope: !1088, file: !669, line: 97, column: 4)
!1111 = !DILocation(line: 97, column: 15, scope: !1108)
!1112 = !DILocation(line: 97, column: 5, scope: !1113)
!1113 = !DILexicalBlockFile(scope: !1114, file: !669, discriminator: 2)
!1114 = distinct !DILexicalBlock(scope: !1109, file: !669, line: 97, column: 3)
!1115 = !DILocation(line: 97, column: 14, scope: !1116)
!1116 = !DILexicalBlockFile(scope: !1117, file: !669, discriminator: 3)
!1117 = distinct !DILexicalBlock(scope: !1109, file: !669, line: 97, column: 12)
!1118 = !DILocation(line: 97, column: 99, scope: !1116)
!1119 = !DILocation(line: 97, column: 110, scope: !1120)
!1120 = !DILexicalBlockFile(scope: !1110, file: !669, discriminator: 4)
!1121 = !DILocation(line: 99, column: 28, scope: !1088)
!1122 = !DILocation(line: 99, column: 11, scope: !1088)
!1123 = !DILocation(line: 99, column: 9, scope: !1088)
!1124 = !DILocation(line: 100, column: 56, scope: !1088)
!1125 = !DILocation(line: 100, column: 38, scope: !1088)
!1126 = !DILocation(line: 100, column: 23, scope: !1088)
!1127 = !DILocation(line: 100, column: 35, scope: !1088)
!1128 = !DILocation(line: 100, column: 40, scope: !1088)
!1129 = !DILocation(line: 100, column: 12, scope: !1130)
!1130 = !DILexicalBlockFile(scope: !1088, file: !669, discriminator: 1)
!1131 = !DILocation(line: 100, column: 10, scope: !1088)
!1132 = !DILocation(line: 101, column: 6, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1088, file: !669, line: 101, column: 6)
!1134 = !DILocation(line: 101, column: 11, scope: !1133)
!1135 = !DILocation(line: 101, column: 6, scope: !1088)
!1136 = !DILocation(line: 102, column: 10, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1133, file: !669, line: 101, column: 19)
!1138 = !DILocation(line: 102, column: 18, scope: !1137)
!1139 = !DILocation(line: 102, column: 31, scope: !1137)
!1140 = !DILocation(line: 103, column: 4, scope: !1137)
!1141 = !DILocation(line: 103, column: 12, scope: !1137)
!1142 = !DILocation(line: 103, column: 21, scope: !1137)
!1143 = !DILocation(line: 102, column: 10, scope: !1144)
!1144 = !DILexicalBlockFile(scope: !1137, file: !669, discriminator: 1)
!1145 = !DILocation(line: 104, column: 4, scope: !1137)
!1146 = !DILocation(line: 104, column: 12, scope: !1137)
!1147 = !DILocation(line: 102, column: 10, scope: !1148)
!1148 = !DILexicalBlockFile(scope: !1137, file: !669, discriminator: 2)
!1149 = !DILocation(line: 102, column: 10, scope: !1150)
!1150 = !DILexicalBlockFile(scope: !1137, file: !669, discriminator: 3)
!1151 = !DILocation(line: 102, column: 8, scope: !1150)
!1152 = !DILocation(line: 105, column: 2, scope: !1137)
!1153 = !DILocation(line: 107, column: 39, scope: !1088)
!1154 = !DILocation(line: 107, column: 47, scope: !1088)
!1155 = !DILocation(line: 107, column: 56, scope: !1088)
!1156 = !DILocation(line: 107, column: 62, scope: !1088)
!1157 = !DILocation(line: 108, column: 26, scope: !1088)
!1158 = !DILocation(line: 108, column: 34, scope: !1088)
!1159 = !DILocation(line: 108, column: 7, scope: !1088)
!1160 = !DILocation(line: 107, column: 2, scope: !1088)
!1161 = !DILocation(line: 109, column: 9, scope: !1088)
!1162 = !DILocation(line: 109, column: 2, scope: !1088)
!1163 = !DILocation(line: 110, column: 9, scope: !1088)
!1164 = !DILocation(line: 110, column: 2, scope: !1088)
!1165 = !DILocation(line: 111, column: 1, scope: !1088)
!1166 = !DILocation(line: 111, column: 1, scope: !1130)
!1167 = distinct !DISubprogram(name: "event_join", scope: !669, file: !669, line: 113, type: !696, isLocal: true, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !670)
!1168 = !DILocalVariable(name: "server", arg: 1, scope: !1167, file: !669, line: 113, type: !698)
!1169 = !DILocation(line: 113, column: 40, scope: !1167)
!1170 = !DILocalVariable(name: "data", arg: 2, scope: !1167, file: !669, line: 113, type: !220)
!1171 = !DILocation(line: 113, column: 60, scope: !1167)
!1172 = !DILocalVariable(name: "nick", arg: 3, scope: !1167, file: !669, line: 114, type: !220)
!1173 = !DILocation(line: 114, column: 22, scope: !1167)
!1174 = !DILocalVariable(name: "addr", arg: 4, scope: !1167, file: !669, line: 114, type: !220)
!1175 = !DILocation(line: 114, column: 40, scope: !1167)
!1176 = !DILocalVariable(name: "params", scope: !1167, file: !669, line: 116, type: !243)
!1177 = !DILocation(line: 116, column: 8, scope: !1167)
!1178 = !DILocalVariable(name: "channel", scope: !1167, file: !669, line: 116, type: !243)
!1179 = !DILocation(line: 116, column: 17, scope: !1167)
!1180 = !DILocalVariable(name: "tmp", scope: !1167, file: !669, line: 116, type: !243)
!1181 = !DILocation(line: 116, column: 27, scope: !1167)
!1182 = !DILocation(line: 118, column: 2, scope: !1167)
!1183 = distinct !{!1183, !1182}
!1184 = !DILocation(line: 118, column: 10, scope: !1185)
!1185 = !DILexicalBlockFile(scope: !1186, file: !669, discriminator: 1)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !669, line: 118, column: 10)
!1187 = distinct !DILexicalBlock(scope: !1167, file: !669, line: 118, column: 4)
!1188 = !DILocation(line: 118, column: 15, scope: !1185)
!1189 = !DILocation(line: 118, column: 5, scope: !1190)
!1190 = !DILexicalBlockFile(scope: !1191, file: !669, discriminator: 2)
!1191 = distinct !DILexicalBlock(scope: !1186, file: !669, line: 118, column: 3)
!1192 = !DILocation(line: 118, column: 14, scope: !1193)
!1193 = !DILexicalBlockFile(scope: !1194, file: !669, discriminator: 3)
!1194 = distinct !DILexicalBlock(scope: !1186, file: !669, line: 118, column: 12)
!1195 = !DILocation(line: 118, column: 99, scope: !1193)
!1196 = !DILocation(line: 118, column: 110, scope: !1197)
!1197 = !DILexicalBlockFile(scope: !1187, file: !669, discriminator: 4)
!1198 = !DILocation(line: 120, column: 28, scope: !1167)
!1199 = !DILocation(line: 120, column: 11, scope: !1167)
!1200 = !DILocation(line: 120, column: 9, scope: !1167)
!1201 = !DILocation(line: 121, column: 15, scope: !1167)
!1202 = !DILocation(line: 121, column: 8, scope: !1167)
!1203 = !DILocation(line: 121, column: 6, scope: !1167)
!1204 = !DILocation(line: 122, column: 6, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1167, file: !669, line: 122, column: 6)
!1206 = !DILocation(line: 122, column: 10, scope: !1205)
!1207 = !DILocation(line: 122, column: 6, scope: !1167)
!1208 = !DILocation(line: 122, column: 19, scope: !1209)
!1209 = !DILexicalBlockFile(scope: !1205, file: !669, discriminator: 1)
!1210 = !DILocation(line: 122, column: 23, scope: !1209)
!1211 = !DILocation(line: 122, column: 18, scope: !1209)
!1212 = !DILocation(line: 124, column: 33, scope: !1167)
!1213 = !DILocation(line: 125, column: 26, scope: !1167)
!1214 = !DILocation(line: 125, column: 34, scope: !1167)
!1215 = !DILocation(line: 125, column: 7, scope: !1167)
!1216 = !DILocation(line: 125, column: 44, scope: !1167)
!1217 = !DILocation(line: 125, column: 50, scope: !1167)
!1218 = !DILocation(line: 124, column: 2, scope: !1167)
!1219 = !DILocation(line: 126, column: 9, scope: !1167)
!1220 = !DILocation(line: 126, column: 2, scope: !1167)
!1221 = !DILocation(line: 127, column: 1, scope: !1167)
!1222 = !DILocation(line: 127, column: 1, scope: !1223)
!1223 = !DILexicalBlockFile(scope: !1167, file: !669, discriminator: 1)
!1224 = distinct !DISubprogram(name: "event_part", scope: !669, file: !669, line: 129, type: !696, isLocal: true, isDefinition: true, scopeLine: 131, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !670)
!1225 = !DILocalVariable(name: "server", arg: 1, scope: !1224, file: !669, line: 129, type: !698)
!1226 = !DILocation(line: 129, column: 40, scope: !1224)
!1227 = !DILocalVariable(name: "data", arg: 2, scope: !1224, file: !669, line: 129, type: !220)
!1228 = !DILocation(line: 129, column: 60, scope: !1224)
!1229 = !DILocalVariable(name: "nick", arg: 3, scope: !1224, file: !669, line: 130, type: !220)
!1230 = !DILocation(line: 130, column: 22, scope: !1224)
!1231 = !DILocalVariable(name: "addr", arg: 4, scope: !1224, file: !669, line: 130, type: !220)
!1232 = !DILocation(line: 130, column: 40, scope: !1224)
!1233 = !DILocalVariable(name: "params", scope: !1224, file: !669, line: 132, type: !243)
!1234 = !DILocation(line: 132, column: 8, scope: !1224)
!1235 = !DILocalVariable(name: "channel", scope: !1224, file: !669, line: 132, type: !243)
!1236 = !DILocation(line: 132, column: 17, scope: !1224)
!1237 = !DILocalVariable(name: "reason", scope: !1224, file: !669, line: 132, type: !243)
!1238 = !DILocation(line: 132, column: 27, scope: !1224)
!1239 = !DILocalVariable(name: "recoded", scope: !1224, file: !669, line: 132, type: !243)
!1240 = !DILocation(line: 132, column: 36, scope: !1224)
!1241 = !DILocation(line: 134, column: 2, scope: !1224)
!1242 = distinct !{!1242, !1241}
!1243 = !DILocation(line: 134, column: 10, scope: !1244)
!1244 = !DILexicalBlockFile(scope: !1245, file: !669, discriminator: 1)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !669, line: 134, column: 10)
!1246 = distinct !DILexicalBlock(scope: !1224, file: !669, line: 134, column: 4)
!1247 = !DILocation(line: 134, column: 15, scope: !1244)
!1248 = !DILocation(line: 134, column: 5, scope: !1249)
!1249 = !DILexicalBlockFile(scope: !1250, file: !669, discriminator: 2)
!1250 = distinct !DILexicalBlock(scope: !1245, file: !669, line: 134, column: 3)
!1251 = !DILocation(line: 134, column: 14, scope: !1252)
!1252 = !DILexicalBlockFile(scope: !1253, file: !669, discriminator: 3)
!1253 = distinct !DILexicalBlock(scope: !1245, file: !669, line: 134, column: 12)
!1254 = !DILocation(line: 134, column: 99, scope: !1252)
!1255 = !DILocation(line: 134, column: 110, scope: !1256)
!1256 = !DILexicalBlockFile(scope: !1246, file: !669, discriminator: 4)
!1257 = !DILocation(line: 136, column: 28, scope: !1224)
!1258 = !DILocation(line: 136, column: 11, scope: !1224)
!1259 = !DILocation(line: 136, column: 9, scope: !1224)
!1260 = !DILocation(line: 138, column: 56, scope: !1224)
!1261 = !DILocation(line: 138, column: 38, scope: !1224)
!1262 = !DILocation(line: 138, column: 23, scope: !1224)
!1263 = !DILocation(line: 138, column: 35, scope: !1224)
!1264 = !DILocation(line: 138, column: 43, scope: !1224)
!1265 = !DILocation(line: 138, column: 12, scope: !1266)
!1266 = !DILexicalBlockFile(scope: !1224, file: !669, discriminator: 1)
!1267 = !DILocation(line: 138, column: 10, scope: !1224)
!1268 = !DILocation(line: 139, column: 33, scope: !1224)
!1269 = !DILocation(line: 140, column: 26, scope: !1224)
!1270 = !DILocation(line: 140, column: 34, scope: !1224)
!1271 = !DILocation(line: 140, column: 7, scope: !1224)
!1272 = !DILocation(line: 140, column: 44, scope: !1224)
!1273 = !DILocation(line: 140, column: 50, scope: !1224)
!1274 = !DILocation(line: 140, column: 56, scope: !1224)
!1275 = !DILocation(line: 139, column: 2, scope: !1224)
!1276 = !DILocation(line: 141, column: 9, scope: !1224)
!1277 = !DILocation(line: 141, column: 2, scope: !1224)
!1278 = !DILocation(line: 142, column: 9, scope: !1224)
!1279 = !DILocation(line: 142, column: 2, scope: !1224)
!1280 = !DILocation(line: 143, column: 1, scope: !1224)
!1281 = !DILocation(line: 143, column: 1, scope: !1266)
!1282 = distinct !DISubprogram(name: "event_quit", scope: !669, file: !669, line: 145, type: !696, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !670)
!1283 = !DILocalVariable(name: "server", arg: 1, scope: !1282, file: !669, line: 145, type: !698)
!1284 = !DILocation(line: 145, column: 40, scope: !1282)
!1285 = !DILocalVariable(name: "data", arg: 2, scope: !1282, file: !669, line: 145, type: !220)
!1286 = !DILocation(line: 145, column: 60, scope: !1282)
!1287 = !DILocalVariable(name: "nick", arg: 3, scope: !1282, file: !669, line: 146, type: !220)
!1288 = !DILocation(line: 146, column: 22, scope: !1282)
!1289 = !DILocalVariable(name: "addr", arg: 4, scope: !1282, file: !669, line: 146, type: !220)
!1290 = !DILocation(line: 146, column: 40, scope: !1282)
!1291 = !DILocalVariable(name: "recoded", scope: !1282, file: !669, line: 148, type: !243)
!1292 = !DILocation(line: 148, column: 8, scope: !1282)
!1293 = !DILocation(line: 150, column: 2, scope: !1282)
!1294 = distinct !{!1294, !1293}
!1295 = !DILocation(line: 150, column: 10, scope: !1296)
!1296 = !DILexicalBlockFile(scope: !1297, file: !669, discriminator: 1)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !669, line: 150, column: 10)
!1298 = distinct !DILexicalBlock(scope: !1282, file: !669, line: 150, column: 4)
!1299 = !DILocation(line: 150, column: 15, scope: !1296)
!1300 = !DILocation(line: 150, column: 5, scope: !1301)
!1301 = !DILexicalBlockFile(scope: !1302, file: !669, discriminator: 2)
!1302 = distinct !DILexicalBlock(scope: !1297, file: !669, line: 150, column: 3)
!1303 = !DILocation(line: 150, column: 14, scope: !1304)
!1304 = !DILexicalBlockFile(scope: !1305, file: !669, discriminator: 3)
!1305 = distinct !DILexicalBlock(scope: !1297, file: !669, line: 150, column: 12)
!1306 = !DILocation(line: 150, column: 99, scope: !1304)
!1307 = !DILocation(line: 150, column: 110, scope: !1308)
!1308 = !DILexicalBlockFile(scope: !1298, file: !669, discriminator: 4)
!1309 = !DILocation(line: 152, column: 7, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1282, file: !669, line: 152, column: 6)
!1311 = !DILocation(line: 152, column: 6, scope: !1310)
!1312 = !DILocation(line: 152, column: 12, scope: !1310)
!1313 = !DILocation(line: 152, column: 6, scope: !1282)
!1314 = !DILocation(line: 152, column: 24, scope: !1315)
!1315 = !DILexicalBlockFile(scope: !1310, file: !669, discriminator: 1)
!1316 = !DILocation(line: 152, column: 20, scope: !1315)
!1317 = !DILocation(line: 153, column: 56, scope: !1282)
!1318 = !DILocation(line: 153, column: 38, scope: !1282)
!1319 = !DILocation(line: 153, column: 23, scope: !1282)
!1320 = !DILocation(line: 153, column: 35, scope: !1282)
!1321 = !DILocation(line: 153, column: 41, scope: !1282)
!1322 = !DILocation(line: 153, column: 12, scope: !1323)
!1323 = !DILexicalBlockFile(scope: !1282, file: !669, discriminator: 1)
!1324 = !DILocation(line: 153, column: 10, scope: !1282)
!1325 = !DILocation(line: 154, column: 33, scope: !1282)
!1326 = !DILocation(line: 154, column: 41, scope: !1282)
!1327 = !DILocation(line: 154, column: 47, scope: !1282)
!1328 = !DILocation(line: 154, column: 53, scope: !1282)
!1329 = !DILocation(line: 154, column: 2, scope: !1282)
!1330 = !DILocation(line: 155, column: 9, scope: !1282)
!1331 = !DILocation(line: 155, column: 2, scope: !1282)
!1332 = !DILocation(line: 156, column: 1, scope: !1282)
!1333 = !DILocation(line: 156, column: 1, scope: !1323)
!1334 = distinct !DISubprogram(name: "event_kick", scope: !669, file: !669, line: 158, type: !696, isLocal: true, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !670)
!1335 = !DILocalVariable(name: "server", arg: 1, scope: !1334, file: !669, line: 158, type: !698)
!1336 = !DILocation(line: 158, column: 40, scope: !1334)
!1337 = !DILocalVariable(name: "data", arg: 2, scope: !1334, file: !669, line: 158, type: !220)
!1338 = !DILocation(line: 158, column: 60, scope: !1334)
!1339 = !DILocalVariable(name: "kicker", arg: 3, scope: !1334, file: !669, line: 159, type: !220)
!1340 = !DILocation(line: 159, column: 22, scope: !1334)
!1341 = !DILocalVariable(name: "addr", arg: 4, scope: !1334, file: !669, line: 159, type: !220)
!1342 = !DILocation(line: 159, column: 42, scope: !1334)
!1343 = !DILocalVariable(name: "params", scope: !1334, file: !669, line: 161, type: !243)
!1344 = !DILocation(line: 161, column: 8, scope: !1334)
!1345 = !DILocalVariable(name: "channel", scope: !1334, file: !669, line: 161, type: !243)
!1346 = !DILocation(line: 161, column: 17, scope: !1334)
!1347 = !DILocalVariable(name: "nick", scope: !1334, file: !669, line: 161, type: !243)
!1348 = !DILocation(line: 161, column: 27, scope: !1334)
!1349 = !DILocalVariable(name: "reason", scope: !1334, file: !669, line: 161, type: !243)
!1350 = !DILocation(line: 161, column: 34, scope: !1334)
!1351 = !DILocalVariable(name: "recoded", scope: !1334, file: !669, line: 161, type: !243)
!1352 = !DILocation(line: 161, column: 43, scope: !1334)
!1353 = !DILocation(line: 163, column: 2, scope: !1334)
!1354 = distinct !{!1354, !1353}
!1355 = !DILocation(line: 163, column: 10, scope: !1356)
!1356 = !DILexicalBlockFile(scope: !1357, file: !669, discriminator: 1)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !669, line: 163, column: 10)
!1358 = distinct !DILexicalBlock(scope: !1334, file: !669, line: 163, column: 4)
!1359 = !DILocation(line: 163, column: 15, scope: !1356)
!1360 = !DILocation(line: 163, column: 5, scope: !1361)
!1361 = !DILexicalBlockFile(scope: !1362, file: !669, discriminator: 2)
!1362 = distinct !DILexicalBlock(scope: !1357, file: !669, line: 163, column: 3)
!1363 = !DILocation(line: 163, column: 14, scope: !1364)
!1364 = !DILexicalBlockFile(scope: !1365, file: !669, discriminator: 3)
!1365 = distinct !DILexicalBlock(scope: !1357, file: !669, line: 163, column: 12)
!1366 = !DILocation(line: 163, column: 99, scope: !1364)
!1367 = !DILocation(line: 163, column: 110, scope: !1368)
!1368 = !DILexicalBlockFile(scope: !1358, file: !669, discriminator: 4)
!1369 = !DILocation(line: 165, column: 28, scope: !1334)
!1370 = !DILocation(line: 165, column: 11, scope: !1334)
!1371 = !DILocation(line: 165, column: 9, scope: !1334)
!1372 = !DILocation(line: 167, column: 56, scope: !1334)
!1373 = !DILocation(line: 167, column: 38, scope: !1334)
!1374 = !DILocation(line: 167, column: 23, scope: !1334)
!1375 = !DILocation(line: 167, column: 35, scope: !1334)
!1376 = !DILocation(line: 167, column: 43, scope: !1334)
!1377 = !DILocation(line: 167, column: 12, scope: !1378)
!1378 = !DILexicalBlockFile(scope: !1334, file: !669, discriminator: 1)
!1379 = !DILocation(line: 167, column: 10, scope: !1334)
!1380 = !DILocation(line: 169, column: 7, scope: !1334)
!1381 = !DILocation(line: 169, column: 34, scope: !1334)
!1382 = !DILocation(line: 169, column: 42, scope: !1334)
!1383 = !DILocation(line: 169, column: 15, scope: !1334)
!1384 = !DILocation(line: 170, column: 7, scope: !1334)
!1385 = !DILocation(line: 170, column: 13, scope: !1334)
!1386 = !DILocation(line: 170, column: 21, scope: !1334)
!1387 = !DILocation(line: 170, column: 27, scope: !1334)
!1388 = !DILocation(line: 168, column: 2, scope: !1334)
!1389 = !DILocation(line: 171, column: 9, scope: !1334)
!1390 = !DILocation(line: 171, column: 2, scope: !1334)
!1391 = !DILocation(line: 172, column: 9, scope: !1334)
!1392 = !DILocation(line: 172, column: 2, scope: !1334)
!1393 = !DILocation(line: 173, column: 1, scope: !1334)
!1394 = !DILocation(line: 173, column: 1, scope: !1378)
!1395 = distinct !DISubprogram(name: "event_kill", scope: !669, file: !669, line: 175, type: !696, isLocal: true, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !670)
!1396 = !DILocalVariable(name: "server", arg: 1, scope: !1395, file: !669, line: 175, type: !698)
!1397 = !DILocation(line: 175, column: 40, scope: !1395)
!1398 = !DILocalVariable(name: "data", arg: 2, scope: !1395, file: !669, line: 175, type: !220)
!1399 = !DILocation(line: 175, column: 60, scope: !1395)
!1400 = !DILocalVariable(name: "nick", arg: 3, scope: !1395, file: !669, line: 176, type: !220)
!1401 = !DILocation(line: 176, column: 22, scope: !1395)
!1402 = !DILocalVariable(name: "addr", arg: 4, scope: !1395, file: !669, line: 176, type: !220)
!1403 = !DILocation(line: 176, column: 40, scope: !1395)
!1404 = !DILocalVariable(name: "params", scope: !1395, file: !669, line: 178, type: !243)
!1405 = !DILocation(line: 178, column: 8, scope: !1395)
!1406 = !DILocalVariable(name: "path", scope: !1395, file: !669, line: 178, type: !243)
!1407 = !DILocation(line: 178, column: 17, scope: !1395)
!1408 = !DILocalVariable(name: "reason", scope: !1395, file: !669, line: 178, type: !243)
!1409 = !DILocation(line: 178, column: 24, scope: !1395)
!1410 = !DILocation(line: 180, column: 2, scope: !1395)
!1411 = distinct !{!1411, !1410}
!1412 = !DILocation(line: 180, column: 10, scope: !1413)
!1413 = !DILexicalBlockFile(scope: !1414, file: !669, discriminator: 1)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !669, line: 180, column: 10)
!1415 = distinct !DILexicalBlock(scope: !1395, file: !669, line: 180, column: 4)
!1416 = !DILocation(line: 180, column: 15, scope: !1413)
!1417 = !DILocation(line: 180, column: 5, scope: !1418)
!1418 = !DILexicalBlockFile(scope: !1419, file: !669, discriminator: 2)
!1419 = distinct !DILexicalBlock(scope: !1414, file: !669, line: 180, column: 3)
!1420 = !DILocation(line: 180, column: 14, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !1422, file: !669, discriminator: 3)
!1422 = distinct !DILexicalBlock(scope: !1414, file: !669, line: 180, column: 12)
!1423 = !DILocation(line: 180, column: 99, scope: !1421)
!1424 = !DILocation(line: 180, column: 110, scope: !1425)
!1425 = !DILexicalBlockFile(scope: !1415, file: !669, discriminator: 4)
!1426 = !DILocation(line: 182, column: 28, scope: !1395)
!1427 = !DILocation(line: 182, column: 11, scope: !1395)
!1428 = !DILocation(line: 182, column: 9, scope: !1395)
!1429 = !DILocation(line: 184, column: 18, scope: !1395)
!1430 = !DILocation(line: 184, column: 11, scope: !1395)
!1431 = !DILocation(line: 184, column: 9, scope: !1395)
!1432 = !DILocation(line: 185, column: 6, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1395, file: !669, line: 185, column: 6)
!1434 = !DILocation(line: 185, column: 13, scope: !1433)
!1435 = !DILocation(line: 185, column: 20, scope: !1433)
!1436 = !DILocation(line: 185, column: 37, scope: !1437)
!1437 = !DILexicalBlockFile(scope: !1433, file: !669, discriminator: 1)
!1438 = !DILocation(line: 185, column: 30, scope: !1437)
!1439 = !DILocation(line: 185, column: 44, scope: !1437)
!1440 = !DILocation(line: 185, column: 23, scope: !1437)
!1441 = !DILocation(line: 185, column: 48, scope: !1437)
!1442 = !DILocation(line: 185, column: 6, scope: !1437)
!1443 = !DILocation(line: 187, column: 26, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1433, file: !669, line: 185, column: 56)
!1445 = !DILocation(line: 187, column: 24, scope: !1444)
!1446 = !DILocation(line: 188, column: 8, scope: !1444)
!1447 = !DILocation(line: 189, column: 2, scope: !1444)
!1448 = !DILocation(line: 191, column: 4, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1433, file: !669, line: 189, column: 9)
!1450 = !DILocation(line: 191, column: 11, scope: !1449)
!1451 = !DILocation(line: 192, column: 10, scope: !1449)
!1452 = !DILocation(line: 193, column: 17, scope: !1449)
!1453 = !DILocation(line: 193, column: 10, scope: !1449)
!1454 = !DILocation(line: 193, column: 24, scope: !1449)
!1455 = !DILocation(line: 193, column: 3, scope: !1449)
!1456 = !DILocation(line: 193, column: 28, scope: !1449)
!1457 = !DILocation(line: 196, column: 6, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1395, file: !669, line: 196, column: 6)
!1459 = !DILocation(line: 196, column: 11, scope: !1458)
!1460 = !DILocation(line: 196, column: 6, scope: !1395)
!1461 = !DILocation(line: 197, column: 39, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1458, file: !669, line: 196, column: 19)
!1463 = !DILocation(line: 197, column: 32, scope: !1462)
!1464 = !DILocation(line: 197, column: 38, scope: !1462)
!1465 = !DILocation(line: 197, column: 44, scope: !1462)
!1466 = !DILocation(line: 197, column: 52, scope: !1462)
!1467 = !DILocation(line: 197, column: 3, scope: !1462)
!1468 = !DILocation(line: 199, column: 2, scope: !1462)
!1469 = !DILocation(line: 200, column: 39, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1458, file: !669, line: 199, column: 9)
!1471 = !DILocation(line: 200, column: 45, scope: !1470)
!1472 = !DILocation(line: 200, column: 53, scope: !1470)
!1473 = !DILocation(line: 200, column: 3, scope: !1470)
!1474 = !DILocation(line: 204, column: 9, scope: !1395)
!1475 = !DILocation(line: 204, column: 2, scope: !1395)
!1476 = !DILocation(line: 205, column: 1, scope: !1395)
!1477 = !DILocation(line: 205, column: 1, scope: !1478)
!1478 = !DILexicalBlockFile(scope: !1395, file: !669, discriminator: 1)
!1479 = distinct !DISubprogram(name: "event_nick", scope: !669, file: !669, line: 207, type: !696, isLocal: true, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !670)
!1480 = !DILocalVariable(name: "server", arg: 1, scope: !1479, file: !669, line: 207, type: !698)
!1481 = !DILocation(line: 207, column: 40, scope: !1479)
!1482 = !DILocalVariable(name: "data", arg: 2, scope: !1479, file: !669, line: 207, type: !220)
!1483 = !DILocation(line: 207, column: 60, scope: !1479)
!1484 = !DILocalVariable(name: "sender", arg: 3, scope: !1479, file: !669, line: 208, type: !220)
!1485 = !DILocation(line: 208, column: 22, scope: !1479)
!1486 = !DILocalVariable(name: "addr", arg: 4, scope: !1479, file: !669, line: 208, type: !220)
!1487 = !DILocation(line: 208, column: 42, scope: !1479)
!1488 = !DILocalVariable(name: "params", scope: !1479, file: !669, line: 210, type: !243)
!1489 = !DILocation(line: 210, column: 8, scope: !1479)
!1490 = !DILocalVariable(name: "newnick", scope: !1479, file: !669, line: 210, type: !243)
!1491 = !DILocation(line: 210, column: 17, scope: !1479)
!1492 = !DILocation(line: 212, column: 2, scope: !1479)
!1493 = distinct !{!1493, !1492}
!1494 = !DILocation(line: 212, column: 10, scope: !1495)
!1495 = !DILexicalBlockFile(scope: !1496, file: !669, discriminator: 1)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !669, line: 212, column: 10)
!1497 = distinct !DILexicalBlock(scope: !1479, file: !669, line: 212, column: 4)
!1498 = !DILocation(line: 212, column: 15, scope: !1495)
!1499 = !DILocation(line: 212, column: 5, scope: !1500)
!1500 = !DILexicalBlockFile(scope: !1501, file: !669, discriminator: 2)
!1501 = distinct !DILexicalBlock(scope: !1496, file: !669, line: 212, column: 3)
!1502 = !DILocation(line: 212, column: 14, scope: !1503)
!1503 = !DILexicalBlockFile(scope: !1504, file: !669, discriminator: 3)
!1504 = distinct !DILexicalBlock(scope: !1496, file: !669, line: 212, column: 12)
!1505 = !DILocation(line: 212, column: 99, scope: !1503)
!1506 = !DILocation(line: 212, column: 110, scope: !1507)
!1507 = !DILexicalBlockFile(scope: !1497, file: !669, discriminator: 4)
!1508 = !DILocation(line: 214, column: 28, scope: !1479)
!1509 = !DILocation(line: 214, column: 11, scope: !1479)
!1510 = !DILocation(line: 214, column: 9, scope: !1479)
!1511 = !DILocation(line: 217, column: 33, scope: !1479)
!1512 = !DILocation(line: 217, column: 42, scope: !1479)
!1513 = !DILocation(line: 217, column: 50, scope: !1479)
!1514 = !DILocation(line: 217, column: 14, scope: !1479)
!1515 = !DILocation(line: 217, column: 56, scope: !1479)
!1516 = !DILocation(line: 219, column: 7, scope: !1479)
!1517 = !DILocation(line: 219, column: 15, scope: !1479)
!1518 = !DILocation(line: 219, column: 24, scope: !1479)
!1519 = !DILocation(line: 219, column: 32, scope: !1479)
!1520 = !DILocation(line: 217, column: 2, scope: !1521)
!1521 = !DILexicalBlockFile(scope: !1479, file: !669, discriminator: 1)
!1522 = !DILocation(line: 221, column: 9, scope: !1479)
!1523 = !DILocation(line: 221, column: 2, scope: !1479)
!1524 = !DILocation(line: 222, column: 1, scope: !1479)
!1525 = !DILocation(line: 222, column: 1, scope: !1521)
!1526 = distinct !DISubprogram(name: "event_mode", scope: !669, file: !669, line: 224, type: !696, isLocal: true, isDefinition: true, scopeLine: 226, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !670)
!1527 = !DILocalVariable(name: "server", arg: 1, scope: !1526, file: !669, line: 224, type: !698)
!1528 = !DILocation(line: 224, column: 40, scope: !1526)
!1529 = !DILocalVariable(name: "data", arg: 2, scope: !1526, file: !669, line: 224, type: !220)
!1530 = !DILocation(line: 224, column: 60, scope: !1526)
!1531 = !DILocalVariable(name: "nick", arg: 3, scope: !1526, file: !669, line: 225, type: !220)
!1532 = !DILocation(line: 225, column: 22, scope: !1526)
!1533 = !DILocalVariable(name: "addr", arg: 4, scope: !1526, file: !669, line: 225, type: !220)
!1534 = !DILocation(line: 225, column: 40, scope: !1526)
!1535 = !DILocalVariable(name: "params", scope: !1526, file: !669, line: 227, type: !243)
!1536 = !DILocation(line: 227, column: 8, scope: !1526)
!1537 = !DILocalVariable(name: "channel", scope: !1526, file: !669, line: 227, type: !243)
!1538 = !DILocation(line: 227, column: 17, scope: !1526)
!1539 = !DILocalVariable(name: "mode", scope: !1526, file: !669, line: 227, type: !243)
!1540 = !DILocation(line: 227, column: 27, scope: !1526)
!1541 = !DILocation(line: 229, column: 2, scope: !1526)
!1542 = distinct !{!1542, !1541}
!1543 = !DILocation(line: 229, column: 10, scope: !1544)
!1544 = !DILexicalBlockFile(scope: !1545, file: !669, discriminator: 1)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !669, line: 229, column: 10)
!1546 = distinct !DILexicalBlock(scope: !1526, file: !669, line: 229, column: 4)
!1547 = !DILocation(line: 229, column: 15, scope: !1544)
!1548 = !DILocation(line: 229, column: 5, scope: !1549)
!1549 = !DILexicalBlockFile(scope: !1550, file: !669, discriminator: 2)
!1550 = distinct !DILexicalBlock(scope: !1545, file: !669, line: 229, column: 3)
!1551 = !DILocation(line: 229, column: 14, scope: !1552)
!1552 = !DILexicalBlockFile(scope: !1553, file: !669, discriminator: 3)
!1553 = distinct !DILexicalBlock(scope: !1545, file: !669, line: 229, column: 12)
!1554 = !DILocation(line: 229, column: 99, scope: !1552)
!1555 = !DILocation(line: 229, column: 110, scope: !1556)
!1556 = !DILexicalBlockFile(scope: !1546, file: !669, discriminator: 4)
!1557 = !DILocation(line: 231, column: 28, scope: !1526)
!1558 = !DILocation(line: 231, column: 11, scope: !1526)
!1559 = !DILocation(line: 231, column: 9, scope: !1526)
!1560 = !DILocation(line: 235, column: 7, scope: !1526)
!1561 = !DILocation(line: 235, column: 34, scope: !1526)
!1562 = !DILocation(line: 235, column: 42, scope: !1526)
!1563 = !DILocation(line: 235, column: 15, scope: !1526)
!1564 = !DILocation(line: 236, column: 7, scope: !1526)
!1565 = !DILocation(line: 236, column: 13, scope: !1526)
!1566 = !DILocation(line: 236, column: 30, scope: !1526)
!1567 = !DILocation(line: 236, column: 19, scope: !1526)
!1568 = !DILocation(line: 234, column: 2, scope: !1526)
!1569 = !DILocation(line: 237, column: 9, scope: !1526)
!1570 = !DILocation(line: 237, column: 2, scope: !1526)
!1571 = !DILocation(line: 238, column: 1, scope: !1526)
!1572 = !DILocation(line: 238, column: 1, scope: !1573)
!1573 = !DILexicalBlockFile(scope: !1526, file: !669, discriminator: 1)
!1574 = distinct !DISubprogram(name: "event_pong", scope: !669, file: !669, line: 240, type: !1575, isLocal: true, isDefinition: true, scopeLine: 241, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !670)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{null, !698, !220, !220}
!1577 = !DILocalVariable(name: "server", arg: 1, scope: !1574, file: !669, line: 240, type: !698)
!1578 = !DILocation(line: 240, column: 40, scope: !1574)
!1579 = !DILocalVariable(name: "data", arg: 2, scope: !1574, file: !669, line: 240, type: !220)
!1580 = !DILocation(line: 240, column: 60, scope: !1574)
!1581 = !DILocalVariable(name: "nick", arg: 3, scope: !1574, file: !669, line: 240, type: !220)
!1582 = !DILocation(line: 240, column: 78, scope: !1574)
!1583 = !DILocalVariable(name: "params", scope: !1574, file: !669, line: 242, type: !243)
!1584 = !DILocation(line: 242, column: 8, scope: !1574)
!1585 = !DILocalVariable(name: "host", scope: !1574, file: !669, line: 242, type: !243)
!1586 = !DILocation(line: 242, column: 17, scope: !1574)
!1587 = !DILocalVariable(name: "reply", scope: !1574, file: !669, line: 242, type: !243)
!1588 = !DILocation(line: 242, column: 24, scope: !1574)
!1589 = !DILocation(line: 244, column: 2, scope: !1574)
!1590 = distinct !{!1590, !1589}
!1591 = !DILocation(line: 244, column: 10, scope: !1592)
!1592 = !DILexicalBlockFile(scope: !1593, file: !669, discriminator: 1)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !669, line: 244, column: 10)
!1594 = distinct !DILexicalBlock(scope: !1574, file: !669, line: 244, column: 4)
!1595 = !DILocation(line: 244, column: 15, scope: !1592)
!1596 = !DILocation(line: 244, column: 5, scope: !1597)
!1597 = !DILexicalBlockFile(scope: !1598, file: !669, discriminator: 2)
!1598 = distinct !DILexicalBlock(scope: !1593, file: !669, line: 244, column: 3)
!1599 = !DILocation(line: 244, column: 14, scope: !1600)
!1600 = !DILexicalBlockFile(scope: !1601, file: !669, discriminator: 3)
!1601 = distinct !DILexicalBlock(scope: !1593, file: !669, line: 244, column: 12)
!1602 = !DILocation(line: 244, column: 99, scope: !1600)
!1603 = !DILocation(line: 244, column: 110, scope: !1604)
!1604 = !DILexicalBlockFile(scope: !1594, file: !669, discriminator: 4)
!1605 = !DILocation(line: 245, column: 6, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1574, file: !669, line: 245, column: 6)
!1607 = !DILocation(line: 245, column: 11, scope: !1606)
!1608 = !DILocation(line: 245, column: 6, scope: !1574)
!1609 = !DILocation(line: 245, column: 26, scope: !1610)
!1610 = !DILexicalBlockFile(scope: !1606, file: !669, discriminator: 1)
!1611 = !DILocation(line: 245, column: 34, scope: !1610)
!1612 = !DILocation(line: 245, column: 24, scope: !1610)
!1613 = !DILocation(line: 245, column: 19, scope: !1610)
!1614 = !DILocation(line: 247, column: 28, scope: !1574)
!1615 = !DILocation(line: 247, column: 11, scope: !1574)
!1616 = !DILocation(line: 247, column: 9, scope: !1574)
!1617 = !DILocation(line: 248, column: 38, scope: !1574)
!1618 = !DILocation(line: 248, column: 31, scope: !1574)
!1619 = !DILocation(line: 248, column: 37, scope: !1574)
!1620 = !DILocation(line: 248, column: 2, scope: !1574)
!1621 = !DILocation(line: 249, column: 9, scope: !1574)
!1622 = !DILocation(line: 249, column: 2, scope: !1574)
!1623 = !DILocation(line: 250, column: 1, scope: !1574)
!1624 = !DILocation(line: 250, column: 1, scope: !1625)
!1625 = !DILexicalBlockFile(scope: !1574, file: !669, discriminator: 1)
!1626 = distinct !DISubprogram(name: "event_invite", scope: !669, file: !669, line: 252, type: !696, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !670)
!1627 = !DILocalVariable(name: "server", arg: 1, scope: !1626, file: !669, line: 252, type: !698)
!1628 = !DILocation(line: 252, column: 42, scope: !1626)
!1629 = !DILocalVariable(name: "data", arg: 2, scope: !1626, file: !669, line: 252, type: !220)
!1630 = !DILocation(line: 252, column: 62, scope: !1626)
!1631 = !DILocalVariable(name: "nick", arg: 3, scope: !1626, file: !669, line: 253, type: !220)
!1632 = !DILocation(line: 253, column: 17, scope: !1626)
!1633 = !DILocalVariable(name: "addr", arg: 4, scope: !1626, file: !669, line: 253, type: !220)
!1634 = !DILocation(line: 253, column: 35, scope: !1626)
!1635 = !DILocalVariable(name: "params", scope: !1626, file: !669, line: 255, type: !243)
!1636 = !DILocation(line: 255, column: 8, scope: !1626)
!1637 = !DILocalVariable(name: "channel", scope: !1626, file: !669, line: 255, type: !243)
!1638 = !DILocation(line: 255, column: 17, scope: !1626)
!1639 = !DILocation(line: 257, column: 2, scope: !1626)
!1640 = distinct !{!1640, !1639}
!1641 = !DILocation(line: 257, column: 10, scope: !1642)
!1642 = !DILexicalBlockFile(scope: !1643, file: !669, discriminator: 1)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !669, line: 257, column: 10)
!1644 = distinct !DILexicalBlock(scope: !1626, file: !669, line: 257, column: 4)
!1645 = !DILocation(line: 257, column: 15, scope: !1642)
!1646 = !DILocation(line: 257, column: 5, scope: !1647)
!1647 = !DILexicalBlockFile(scope: !1648, file: !669, discriminator: 2)
!1648 = distinct !DILexicalBlock(scope: !1643, file: !669, line: 257, column: 3)
!1649 = !DILocation(line: 257, column: 14, scope: !1650)
!1650 = !DILexicalBlockFile(scope: !1651, file: !669, discriminator: 3)
!1651 = distinct !DILexicalBlock(scope: !1643, file: !669, line: 257, column: 12)
!1652 = !DILocation(line: 257, column: 99, scope: !1650)
!1653 = !DILocation(line: 257, column: 110, scope: !1654)
!1654 = !DILexicalBlockFile(scope: !1644, file: !669, discriminator: 4)
!1655 = !DILocation(line: 259, column: 28, scope: !1626)
!1656 = !DILocation(line: 259, column: 11, scope: !1626)
!1657 = !DILocation(line: 259, column: 9, scope: !1626)
!1658 = !DILocation(line: 261, column: 7, scope: !1626)
!1659 = !DILocation(line: 261, column: 34, scope: !1626)
!1660 = !DILocation(line: 261, column: 42, scope: !1626)
!1661 = !DILocation(line: 261, column: 15, scope: !1626)
!1662 = !DILocation(line: 261, column: 52, scope: !1626)
!1663 = !DILocation(line: 261, column: 58, scope: !1626)
!1664 = !DILocation(line: 260, column: 2, scope: !1626)
!1665 = !DILocation(line: 262, column: 9, scope: !1626)
!1666 = !DILocation(line: 262, column: 2, scope: !1626)
!1667 = !DILocation(line: 263, column: 1, scope: !1626)
!1668 = !DILocation(line: 263, column: 1, scope: !1669)
!1669 = !DILexicalBlockFile(scope: !1626, file: !669, discriminator: 1)
!1670 = distinct !DISubprogram(name: "event_topic", scope: !669, file: !669, line: 265, type: !696, isLocal: true, isDefinition: true, scopeLine: 267, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !670)
!1671 = !DILocalVariable(name: "server", arg: 1, scope: !1670, file: !669, line: 265, type: !698)
!1672 = !DILocation(line: 265, column: 41, scope: !1670)
!1673 = !DILocalVariable(name: "data", arg: 2, scope: !1670, file: !669, line: 265, type: !220)
!1674 = !DILocation(line: 265, column: 61, scope: !1670)
!1675 = !DILocalVariable(name: "nick", arg: 3, scope: !1670, file: !669, line: 266, type: !220)
!1676 = !DILocation(line: 266, column: 16, scope: !1670)
!1677 = !DILocalVariable(name: "addr", arg: 4, scope: !1670, file: !669, line: 266, type: !220)
!1678 = !DILocation(line: 266, column: 34, scope: !1670)
!1679 = !DILocalVariable(name: "params", scope: !1670, file: !669, line: 268, type: !243)
!1680 = !DILocation(line: 268, column: 8, scope: !1670)
!1681 = !DILocalVariable(name: "channel", scope: !1670, file: !669, line: 268, type: !243)
!1682 = !DILocation(line: 268, column: 17, scope: !1670)
!1683 = !DILocalVariable(name: "topic", scope: !1670, file: !669, line: 268, type: !243)
!1684 = !DILocation(line: 268, column: 27, scope: !1670)
!1685 = !DILocalVariable(name: "recoded", scope: !1670, file: !669, line: 268, type: !243)
!1686 = !DILocation(line: 268, column: 35, scope: !1670)
!1687 = !DILocation(line: 270, column: 2, scope: !1670)
!1688 = distinct !{!1688, !1687}
!1689 = !DILocation(line: 270, column: 10, scope: !1690)
!1690 = !DILexicalBlockFile(scope: !1691, file: !669, discriminator: 1)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !669, line: 270, column: 10)
!1692 = distinct !DILexicalBlock(scope: !1670, file: !669, line: 270, column: 4)
!1693 = !DILocation(line: 270, column: 15, scope: !1690)
!1694 = !DILocation(line: 270, column: 5, scope: !1695)
!1695 = !DILexicalBlockFile(scope: !1696, file: !669, discriminator: 2)
!1696 = distinct !DILexicalBlock(scope: !1691, file: !669, line: 270, column: 3)
!1697 = !DILocation(line: 270, column: 14, scope: !1698)
!1698 = !DILexicalBlockFile(scope: !1699, file: !669, discriminator: 3)
!1699 = distinct !DILexicalBlock(scope: !1691, file: !669, line: 270, column: 12)
!1700 = !DILocation(line: 270, column: 99, scope: !1698)
!1701 = !DILocation(line: 270, column: 110, scope: !1702)
!1702 = !DILexicalBlockFile(scope: !1692, file: !669, discriminator: 4)
!1703 = !DILocation(line: 272, column: 28, scope: !1670)
!1704 = !DILocation(line: 272, column: 11, scope: !1670)
!1705 = !DILocation(line: 272, column: 9, scope: !1670)
!1706 = !DILocation(line: 274, column: 56, scope: !1670)
!1707 = !DILocation(line: 274, column: 38, scope: !1670)
!1708 = !DILocation(line: 274, column: 23, scope: !1670)
!1709 = !DILocation(line: 274, column: 35, scope: !1670)
!1710 = !DILocation(line: 274, column: 42, scope: !1670)
!1711 = !DILocation(line: 274, column: 12, scope: !1712)
!1712 = !DILexicalBlockFile(scope: !1670, file: !669, discriminator: 1)
!1713 = !DILocation(line: 274, column: 10, scope: !1670)
!1714 = !DILocation(line: 275, column: 34, scope: !1670)
!1715 = !DILocation(line: 276, column: 26, scope: !1670)
!1716 = !DILocation(line: 276, column: 34, scope: !1670)
!1717 = !DILocation(line: 276, column: 7, scope: !1670)
!1718 = !DILocation(line: 276, column: 44, scope: !1670)
!1719 = !DILocation(line: 276, column: 53, scope: !1670)
!1720 = !DILocation(line: 276, column: 59, scope: !1670)
!1721 = !DILocation(line: 275, column: 2, scope: !1670)
!1722 = !DILocation(line: 277, column: 9, scope: !1670)
!1723 = !DILocation(line: 277, column: 2, scope: !1670)
!1724 = !DILocation(line: 278, column: 9, scope: !1670)
!1725 = !DILocation(line: 278, column: 2, scope: !1670)
!1726 = !DILocation(line: 279, column: 1, scope: !1670)
!1727 = !DILocation(line: 279, column: 1, scope: !1712)
!1728 = distinct !DISubprogram(name: "event_error", scope: !669, file: !669, line: 281, type: !1729, isLocal: true, isDefinition: true, scopeLine: 282, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !670)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{null, !698, !220}
!1731 = !DILocalVariable(name: "server", arg: 1, scope: !1728, file: !669, line: 281, type: !698)
!1732 = !DILocation(line: 281, column: 41, scope: !1728)
!1733 = !DILocalVariable(name: "data", arg: 2, scope: !1728, file: !669, line: 281, type: !220)
!1734 = !DILocation(line: 281, column: 61, scope: !1728)
!1735 = !DILocation(line: 283, column: 2, scope: !1728)
!1736 = distinct !{!1736, !1735}
!1737 = !DILocation(line: 283, column: 10, scope: !1738)
!1738 = !DILexicalBlockFile(scope: !1739, file: !669, discriminator: 1)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !669, line: 283, column: 10)
!1740 = distinct !DILexicalBlock(scope: !1728, file: !669, line: 283, column: 4)
!1741 = !DILocation(line: 283, column: 15, scope: !1738)
!1742 = !DILocation(line: 283, column: 5, scope: !1743)
!1743 = !DILexicalBlockFile(scope: !1744, file: !669, discriminator: 2)
!1744 = distinct !DILexicalBlock(scope: !1739, file: !669, line: 283, column: 3)
!1745 = !DILocation(line: 283, column: 14, scope: !1746)
!1746 = !DILexicalBlockFile(scope: !1747, file: !669, discriminator: 3)
!1747 = distinct !DILexicalBlock(scope: !1739, file: !669, line: 283, column: 12)
!1748 = !DILocation(line: 283, column: 99, scope: !1746)
!1749 = !DILocation(line: 283, column: 110, scope: !1750)
!1750 = !DILexicalBlockFile(scope: !1740, file: !669, discriminator: 4)
!1751 = !DILocation(line: 285, column: 7, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1728, file: !669, line: 285, column: 6)
!1753 = !DILocation(line: 285, column: 6, scope: !1752)
!1754 = !DILocation(line: 285, column: 12, scope: !1752)
!1755 = !DILocation(line: 285, column: 6, scope: !1728)
!1756 = !DILocation(line: 285, column: 24, scope: !1757)
!1757 = !DILexicalBlockFile(scope: !1752, file: !669, discriminator: 1)
!1758 = !DILocation(line: 285, column: 20, scope: !1757)
!1759 = !DILocation(line: 286, column: 38, scope: !1728)
!1760 = !DILocation(line: 286, column: 32, scope: !1728)
!1761 = !DILocation(line: 286, column: 2, scope: !1728)
!1762 = !DILocation(line: 287, column: 1, scope: !1728)
!1763 = !DILocation(line: 287, column: 1, scope: !1764)
!1764 = !DILexicalBlockFile(scope: !1728, file: !669, discriminator: 1)
!1765 = distinct !DISubprogram(name: "event_wallops", scope: !669, file: !669, line: 289, type: !696, isLocal: true, isDefinition: true, scopeLine: 290, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !670)
!1766 = !DILocalVariable(name: "server", arg: 1, scope: !1765, file: !669, line: 289, type: !698)
!1767 = !DILocation(line: 289, column: 43, scope: !1765)
!1768 = !DILocalVariable(name: "data", arg: 2, scope: !1765, file: !669, line: 289, type: !220)
!1769 = !DILocation(line: 289, column: 63, scope: !1765)
!1770 = !DILocalVariable(name: "nick", arg: 3, scope: !1765, file: !669, line: 289, type: !220)
!1771 = !DILocation(line: 289, column: 81, scope: !1765)
!1772 = !DILocalVariable(name: "addr", arg: 4, scope: !1765, file: !669, line: 289, type: !220)
!1773 = !DILocation(line: 289, column: 99, scope: !1765)
!1774 = !DILocation(line: 291, column: 2, scope: !1765)
!1775 = distinct !{!1775, !1774}
!1776 = !DILocation(line: 291, column: 10, scope: !1777)
!1777 = !DILexicalBlockFile(scope: !1778, file: !669, discriminator: 1)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !669, line: 291, column: 10)
!1779 = distinct !DILexicalBlock(scope: !1765, file: !669, line: 291, column: 4)
!1780 = !DILocation(line: 291, column: 15, scope: !1777)
!1781 = !DILocation(line: 291, column: 5, scope: !1782)
!1782 = !DILexicalBlockFile(scope: !1783, file: !669, discriminator: 2)
!1783 = distinct !DILexicalBlock(scope: !1778, file: !669, line: 291, column: 3)
!1784 = !DILocation(line: 291, column: 14, scope: !1785)
!1785 = !DILexicalBlockFile(scope: !1786, file: !669, discriminator: 3)
!1786 = distinct !DILexicalBlock(scope: !1778, file: !669, line: 291, column: 12)
!1787 = !DILocation(line: 291, column: 99, scope: !1785)
!1788 = !DILocation(line: 291, column: 110, scope: !1789)
!1789 = !DILexicalBlockFile(scope: !1779, file: !669, discriminator: 4)
!1790 = !DILocation(line: 293, column: 7, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1765, file: !669, line: 293, column: 6)
!1792 = !DILocation(line: 293, column: 6, scope: !1791)
!1793 = !DILocation(line: 293, column: 12, scope: !1791)
!1794 = !DILocation(line: 293, column: 6, scope: !1765)
!1795 = !DILocation(line: 293, column: 24, scope: !1796)
!1796 = !DILexicalBlockFile(scope: !1791, file: !669, discriminator: 1)
!1797 = !DILocation(line: 293, column: 20, scope: !1796)
!1798 = !DILocation(line: 294, column: 53, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1765, file: !669, line: 294, column: 6)
!1800 = !DILocation(line: 294, column: 35, scope: !1799)
!1801 = !DILocation(line: 294, column: 20, scope: !1799)
!1802 = !DILocation(line: 294, column: 32, scope: !1799)
!1803 = !DILocation(line: 294, column: 38, scope: !1799)
!1804 = !DILocation(line: 294, column: 52, scope: !1799)
!1805 = !DILocation(line: 294, column: 6, scope: !1806)
!1806 = !DILexicalBlockFile(scope: !1799, file: !669, discriminator: 1)
!1807 = !DILocation(line: 294, column: 6, scope: !1799)
!1808 = !DILocation(line: 294, column: 6, scope: !1765)
!1809 = !DILocation(line: 295, column: 3, scope: !1799)
!1810 = !DILocation(line: 297, column: 26, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1765, file: !669, line: 297, column: 6)
!1812 = !DILocation(line: 297, column: 6, scope: !1811)
!1813 = !DILocation(line: 297, column: 50, scope: !1811)
!1814 = !DILocation(line: 297, column: 6, scope: !1765)
!1815 = !DILocation(line: 298, column: 39, scope: !1811)
!1816 = !DILocation(line: 298, column: 38, scope: !1811)
!1817 = !DILocation(line: 298, column: 44, scope: !1811)
!1818 = !DILocation(line: 298, column: 3, scope: !1811)
!1819 = !DILocalVariable(name: "len", scope: !1820, file: !669, line: 301, type: !230)
!1820 = distinct !DILexicalBlock(scope: !1811, file: !669, line: 299, column: 7)
!1821 = !DILocation(line: 301, column: 7, scope: !1820)
!1822 = !DILocalVariable(name: "tmp", scope: !1820, file: !669, line: 302, type: !243)
!1823 = !DILocation(line: 302, column: 9, scope: !1820)
!1824 = !DILocation(line: 304, column: 18, scope: !1820)
!1825 = !DILocation(line: 304, column: 22, scope: !1820)
!1826 = !DILocation(line: 304, column: 9, scope: !1820)
!1827 = !DILocation(line: 304, column: 7, scope: !1820)
!1828 = !DILocation(line: 305, column: 16, scope: !1820)
!1829 = !DILocation(line: 305, column: 9, scope: !1820)
!1830 = !DILocation(line: 305, column: 7, scope: !1820)
!1831 = !DILocation(line: 306, column: 7, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1820, file: !669, line: 306, column: 7)
!1833 = !DILocation(line: 306, column: 11, scope: !1832)
!1834 = !DILocation(line: 306, column: 16, scope: !1832)
!1835 = !DILocation(line: 306, column: 23, scope: !1836)
!1836 = !DILexicalBlockFile(scope: !1832, file: !669, discriminator: 1)
!1837 = !DILocation(line: 306, column: 26, scope: !1836)
!1838 = !DILocation(line: 306, column: 19, scope: !1836)
!1839 = !DILocation(line: 306, column: 30, scope: !1836)
!1840 = !DILocation(line: 306, column: 7, scope: !1836)
!1841 = !DILocation(line: 306, column: 40, scope: !1842)
!1842 = !DILexicalBlockFile(scope: !1832, file: !669, discriminator: 2)
!1843 = !DILocation(line: 306, column: 43, scope: !1842)
!1844 = !DILocation(line: 306, column: 36, scope: !1842)
!1845 = !DILocation(line: 306, column: 47, scope: !1842)
!1846 = !DILocation(line: 307, column: 39, scope: !1820)
!1847 = !DILocation(line: 307, column: 45, scope: !1820)
!1848 = !DILocation(line: 307, column: 51, scope: !1820)
!1849 = !DILocation(line: 307, column: 3, scope: !1820)
!1850 = !DILocation(line: 308, column: 10, scope: !1820)
!1851 = !DILocation(line: 308, column: 3, scope: !1820)
!1852 = !DILocation(line: 310, column: 1, scope: !1765)
!1853 = distinct !DISubprogram(name: "event_silence", scope: !669, file: !669, line: 312, type: !696, isLocal: true, isDefinition: true, scopeLine: 313, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !670)
!1854 = !DILocalVariable(name: "server", arg: 1, scope: !1853, file: !669, line: 312, type: !698)
!1855 = !DILocation(line: 312, column: 43, scope: !1853)
!1856 = !DILocalVariable(name: "data", arg: 2, scope: !1853, file: !669, line: 312, type: !220)
!1857 = !DILocation(line: 312, column: 63, scope: !1853)
!1858 = !DILocalVariable(name: "nick", arg: 3, scope: !1853, file: !669, line: 312, type: !220)
!1859 = !DILocation(line: 312, column: 81, scope: !1853)
!1860 = !DILocalVariable(name: "addr", arg: 4, scope: !1853, file: !669, line: 312, type: !220)
!1861 = !DILocation(line: 312, column: 99, scope: !1853)
!1862 = !DILocation(line: 314, column: 2, scope: !1853)
!1863 = distinct !{!1863, !1862}
!1864 = !DILocation(line: 314, column: 10, scope: !1865)
!1865 = !DILexicalBlockFile(scope: !1866, file: !669, discriminator: 1)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !669, line: 314, column: 10)
!1867 = distinct !DILexicalBlock(scope: !1853, file: !669, line: 314, column: 4)
!1868 = !DILocation(line: 314, column: 15, scope: !1865)
!1869 = !DILocation(line: 314, column: 5, scope: !1870)
!1870 = !DILexicalBlockFile(scope: !1871, file: !669, discriminator: 2)
!1871 = distinct !DILexicalBlock(scope: !1866, file: !669, line: 314, column: 3)
!1872 = !DILocation(line: 314, column: 14, scope: !1873)
!1873 = !DILexicalBlockFile(scope: !1874, file: !669, discriminator: 3)
!1874 = distinct !DILexicalBlock(scope: !1866, file: !669, line: 314, column: 12)
!1875 = !DILocation(line: 314, column: 99, scope: !1873)
!1876 = !DILocation(line: 314, column: 110, scope: !1877)
!1877 = !DILexicalBlockFile(scope: !1867, file: !669, discriminator: 4)
!1878 = !DILocation(line: 316, column: 2, scope: !1853)
!1879 = distinct !{!1879, !1878}
!1880 = !DILocation(line: 316, column: 11, scope: !1881)
!1881 = !DILexicalBlockFile(scope: !1882, file: !669, discriminator: 1)
!1882 = distinct !DILexicalBlock(scope: !1883, file: !669, line: 316, column: 10)
!1883 = distinct !DILexicalBlock(scope: !1853, file: !669, line: 316, column: 4)
!1884 = !DILocation(line: 316, column: 10, scope: !1881)
!1885 = !DILocation(line: 316, column: 16, scope: !1881)
!1886 = !DILocation(line: 316, column: 23, scope: !1881)
!1887 = !DILocation(line: 316, column: 27, scope: !1888)
!1888 = !DILexicalBlockFile(scope: !1882, file: !669, discriminator: 2)
!1889 = !DILocation(line: 316, column: 26, scope: !1888)
!1890 = !DILocation(line: 316, column: 32, scope: !1888)
!1891 = !DILocation(line: 316, column: 10, scope: !1888)
!1892 = !DILocation(line: 316, column: 42, scope: !1893)
!1893 = !DILexicalBlockFile(scope: !1894, file: !669, discriminator: 3)
!1894 = distinct !DILexicalBlock(scope: !1882, file: !669, line: 316, column: 40)
!1895 = !DILocation(line: 316, column: 51, scope: !1896)
!1896 = !DILexicalBlockFile(scope: !1897, file: !669, discriminator: 4)
!1897 = distinct !DILexicalBlock(scope: !1882, file: !669, line: 316, column: 49)
!1898 = !DILocation(line: 316, column: 152, scope: !1896)
!1899 = !DILocation(line: 316, column: 163, scope: !1900)
!1900 = !DILexicalBlockFile(scope: !1883, file: !669, discriminator: 5)
!1901 = !DILocation(line: 318, column: 38, scope: !1853)
!1902 = !DILocation(line: 318, column: 19, scope: !1853)
!1903 = !DILocation(line: 318, column: 18, scope: !1853)
!1904 = !DILocation(line: 318, column: 24, scope: !1853)
!1905 = !DILocation(line: 318, column: 70, scope: !1853)
!1906 = !DILocation(line: 318, column: 74, scope: !1853)
!1907 = !DILocation(line: 318, column: 2, scope: !1853)
!1908 = !DILocation(line: 319, column: 1, scope: !1853)
!1909 = !DILocation(line: 319, column: 1, scope: !1910)
!1910 = !DILexicalBlockFile(scope: !1853, file: !669, discriminator: 1)
!1911 = distinct !DISubprogram(name: "event_received", scope: !669, file: !669, line: 426, type: !696, isLocal: true, isDefinition: true, scopeLine: 428, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !670)
!1912 = !DILocalVariable(name: "server", arg: 1, scope: !1911, file: !669, line: 426, type: !698)
!1913 = !DILocation(line: 426, column: 44, scope: !1911)
!1914 = !DILocalVariable(name: "data", arg: 2, scope: !1911, file: !669, line: 426, type: !220)
!1915 = !DILocation(line: 426, column: 64, scope: !1911)
!1916 = !DILocalVariable(name: "nick", arg: 3, scope: !1911, file: !669, line: 427, type: !220)
!1917 = !DILocation(line: 427, column: 19, scope: !1911)
!1918 = !DILocalVariable(name: "addr", arg: 4, scope: !1911, file: !669, line: 427, type: !220)
!1919 = !DILocation(line: 427, column: 37, scope: !1911)
!1920 = !DILocation(line: 429, column: 30, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1911, file: !669, line: 429, column: 6)
!1922 = !DILocation(line: 429, column: 29, scope: !1921)
!1923 = !DILocation(line: 429, column: 6, scope: !1921)
!1924 = !DILocation(line: 429, column: 7, scope: !1921)
!1925 = !DILocation(line: 429, column: 9, scope: !1921)
!1926 = !DILocation(line: 429, column: 8, scope: !1921)
!1927 = !DILocation(line: 429, column: 10, scope: !1921)
!1928 = !DILocation(line: 429, column: 6, scope: !1911)
!1929 = !DILocation(line: 430, column: 13, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1921, file: !669, line: 429, column: 24)
!1931 = !DILocation(line: 430, column: 47, scope: !1930)
!1932 = !DILocation(line: 430, column: 3, scope: !1930)
!1933 = !DILocation(line: 431, column: 3, scope: !1930)
!1934 = !DILocation(line: 435, column: 49, scope: !1911)
!1935 = !DILocation(line: 435, column: 57, scope: !1911)
!1936 = !DILocation(line: 435, column: 63, scope: !1911)
!1937 = !DILocation(line: 435, column: 69, scope: !1911)
!1938 = !DILocation(line: 435, column: 9, scope: !1911)
!1939 = !DILocation(line: 436, column: 1, scope: !1911)
!1940 = !DILocation(line: 436, column: 1, scope: !1941)
!1941 = !DILexicalBlockFile(scope: !1911, file: !669, discriminator: 1)
!1942 = distinct !DISubprogram(name: "channel_sync", scope: !669, file: !669, line: 321, type: !1943, isLocal: true, isDefinition: true, scopeLine: 322, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !670)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{null, !543}
!1945 = !DILocalVariable(name: "channel", arg: 1, scope: !1942, file: !669, line: 321, type: !543)
!1946 = !DILocation(line: 321, column: 39, scope: !1942)
!1947 = !DILocation(line: 323, column: 2, scope: !1942)
!1948 = distinct !{!1948, !1947}
!1949 = !DILocation(line: 323, column: 10, scope: !1950)
!1950 = !DILexicalBlockFile(scope: !1951, file: !669, discriminator: 1)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !669, line: 323, column: 10)
!1952 = distinct !DILexicalBlock(scope: !1942, file: !669, line: 323, column: 4)
!1953 = !DILocation(line: 323, column: 18, scope: !1950)
!1954 = !DILocation(line: 323, column: 5, scope: !1955)
!1955 = !DILexicalBlockFile(scope: !1956, file: !669, discriminator: 2)
!1956 = distinct !DILexicalBlock(scope: !1951, file: !669, line: 323, column: 3)
!1957 = !DILocation(line: 323, column: 14, scope: !1958)
!1958 = !DILexicalBlockFile(scope: !1959, file: !669, discriminator: 3)
!1959 = distinct !DILexicalBlock(scope: !1951, file: !669, line: 323, column: 12)
!1960 = !DILocation(line: 323, column: 102, scope: !1958)
!1961 = !DILocation(line: 323, column: 113, scope: !1962)
!1962 = !DILexicalBlockFile(scope: !1952, file: !669, discriminator: 4)
!1963 = !DILocation(line: 325, column: 38, scope: !1942)
!1964 = !DILocation(line: 325, column: 47, scope: !1942)
!1965 = !DILocation(line: 325, column: 55, scope: !1942)
!1966 = !DILocation(line: 325, column: 64, scope: !1942)
!1967 = !DILocation(line: 325, column: 140, scope: !1942)
!1968 = !DILocation(line: 325, column: 149, scope: !1942)
!1969 = !DILocation(line: 325, column: 171, scope: !1942)
!1970 = !DILocation(line: 325, column: 3, scope: !1942)
!1971 = !DILocation(line: 325, column: 12, scope: !1942)
!1972 = !DILocation(line: 325, column: 2, scope: !1942)
!1973 = !DILocation(line: 325, column: 2, scope: !1974)
!1974 = !DILexicalBlockFile(scope: !1942, file: !669, discriminator: 1)
!1975 = !DILocation(line: 329, column: 1, scope: !1942)
!1976 = !DILocation(line: 329, column: 1, scope: !1974)
!1977 = distinct !DISubprogram(name: "event_connected", scope: !669, file: !669, line: 331, type: !1978, isLocal: true, isDefinition: true, scopeLine: 332, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !670)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{null, !698}
!1980 = !DILocalVariable(name: "server", arg: 1, scope: !1977, file: !669, line: 331, type: !698)
!1981 = !DILocation(line: 331, column: 45, scope: !1977)
!1982 = !DILocalVariable(name: "nick", scope: !1977, file: !669, line: 333, type: !220)
!1983 = !DILocation(line: 333, column: 14, scope: !1977)
!1984 = !DILocation(line: 335, column: 2, scope: !1977)
!1985 = distinct !{!1985, !1984}
!1986 = !DILocation(line: 335, column: 10, scope: !1987)
!1987 = !DILexicalBlockFile(scope: !1988, file: !669, discriminator: 1)
!1988 = distinct !DILexicalBlock(scope: !1989, file: !669, line: 335, column: 10)
!1989 = distinct !DILexicalBlock(scope: !1977, file: !669, line: 335, column: 4)
!1990 = !DILocation(line: 335, column: 17, scope: !1987)
!1991 = !DILocation(line: 335, column: 5, scope: !1992)
!1992 = !DILexicalBlockFile(scope: !1993, file: !669, discriminator: 2)
!1993 = distinct !DILexicalBlock(scope: !1988, file: !669, line: 335, column: 3)
!1994 = !DILocation(line: 335, column: 14, scope: !1995)
!1995 = !DILexicalBlockFile(scope: !1996, file: !669, discriminator: 3)
!1996 = distinct !DILexicalBlock(scope: !1988, file: !669, line: 335, column: 12)
!1997 = !DILocation(line: 335, column: 101, scope: !1995)
!1998 = !DILocation(line: 335, column: 112, scope: !1999)
!1999 = !DILexicalBlockFile(scope: !1989, file: !669, discriminator: 4)
!2000 = !DILocation(line: 337, column: 16, scope: !1977)
!2001 = !DILocation(line: 337, column: 24, scope: !1977)
!2002 = !DILocation(line: 337, column: 33, scope: !1977)
!2003 = !DILocation(line: 337, column: 14, scope: !1977)
!2004 = !DILocation(line: 338, column: 25, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1977, file: !669, line: 338, column: 6)
!2006 = !DILocation(line: 338, column: 33, scope: !2005)
!2007 = !DILocation(line: 338, column: 39, scope: !2005)
!2008 = !DILocation(line: 338, column: 6, scope: !2005)
!2009 = !DILocation(line: 338, column: 45, scope: !2005)
!2010 = !DILocation(line: 338, column: 6, scope: !1977)
!2011 = !DILocation(line: 339, column: 3, scope: !2005)
!2012 = !DILocation(line: 342, column: 24, scope: !1977)
!2013 = !DILocation(line: 342, column: 44, scope: !1977)
!2014 = !DILocation(line: 342, column: 2, scope: !1977)
!2015 = !DILocation(line: 345, column: 16, scope: !1977)
!2016 = !DILocation(line: 345, column: 36, scope: !1977)
!2017 = !DILocation(line: 345, column: 2, scope: !1977)
!2018 = !DILocation(line: 346, column: 1, scope: !1977)
!2019 = !DILocation(line: 346, column: 1, scope: !2020)
!2020 = !DILexicalBlockFile(scope: !1977, file: !669, discriminator: 1)
!2021 = distinct !DISubprogram(name: "event_nickfind_whois", scope: !669, file: !669, line: 348, type: !1729, isLocal: true, isDefinition: true, scopeLine: 349, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !670)
!2022 = !DILocalVariable(name: "server", arg: 1, scope: !2021, file: !669, line: 348, type: !698)
!2023 = !DILocation(line: 348, column: 50, scope: !2021)
!2024 = !DILocalVariable(name: "data", arg: 2, scope: !2021, file: !669, line: 348, type: !220)
!2025 = !DILocation(line: 348, column: 70, scope: !2021)
!2026 = !DILocalVariable(name: "params", scope: !2021, file: !669, line: 350, type: !243)
!2027 = !DILocation(line: 350, column: 8, scope: !2021)
!2028 = !DILocalVariable(name: "nick", scope: !2021, file: !669, line: 350, type: !243)
!2029 = !DILocation(line: 350, column: 17, scope: !2021)
!2030 = !DILocalVariable(name: "user", scope: !2021, file: !669, line: 350, type: !243)
!2031 = !DILocation(line: 350, column: 24, scope: !2021)
!2032 = !DILocalVariable(name: "host", scope: !2021, file: !669, line: 350, type: !243)
!2033 = !DILocation(line: 350, column: 31, scope: !2021)
!2034 = !DILocalVariable(name: "realname", scope: !2021, file: !669, line: 350, type: !243)
!2035 = !DILocation(line: 350, column: 38, scope: !2021)
!2036 = !DILocation(line: 352, column: 2, scope: !2021)
!2037 = distinct !{!2037, !2036}
!2038 = !DILocation(line: 352, column: 10, scope: !2039)
!2039 = !DILexicalBlockFile(scope: !2040, file: !669, discriminator: 1)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !669, line: 352, column: 10)
!2041 = distinct !DILexicalBlock(scope: !2021, file: !669, line: 352, column: 4)
!2042 = !DILocation(line: 352, column: 15, scope: !2039)
!2043 = !DILocation(line: 352, column: 5, scope: !2044)
!2044 = !DILexicalBlockFile(scope: !2045, file: !669, discriminator: 2)
!2045 = distinct !DILexicalBlock(scope: !2040, file: !669, line: 352, column: 3)
!2046 = !DILocation(line: 352, column: 14, scope: !2047)
!2047 = !DILexicalBlockFile(scope: !2048, file: !669, discriminator: 3)
!2048 = distinct !DILexicalBlock(scope: !2040, file: !669, line: 352, column: 12)
!2049 = !DILocation(line: 352, column: 99, scope: !2047)
!2050 = !DILocation(line: 352, column: 110, scope: !2051)
!2051 = !DILexicalBlockFile(scope: !2041, file: !669, discriminator: 4)
!2052 = !DILocation(line: 354, column: 28, scope: !2021)
!2053 = !DILocation(line: 354, column: 11, scope: !2021)
!2054 = !DILocation(line: 354, column: 9, scope: !2021)
!2055 = !DILocation(line: 355, column: 38, scope: !2021)
!2056 = !DILocation(line: 355, column: 50, scope: !2021)
!2057 = !DILocation(line: 355, column: 56, scope: !2021)
!2058 = !DILocation(line: 355, column: 62, scope: !2021)
!2059 = !DILocation(line: 355, column: 68, scope: !2021)
!2060 = !DILocation(line: 355, column: 2, scope: !2021)
!2061 = !DILocation(line: 356, column: 9, scope: !2021)
!2062 = !DILocation(line: 356, column: 2, scope: !2021)
!2063 = !DILocation(line: 357, column: 1, scope: !2021)
!2064 = !DILocation(line: 357, column: 1, scope: !2065)
!2065 = !DILexicalBlockFile(scope: !2021, file: !669, discriminator: 1)
!2066 = distinct !DISubprogram(name: "event_ban_type_changed", scope: !669, file: !669, line: 359, type: !2067, isLocal: true, isDefinition: true, scopeLine: 360, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !670)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{null, !215}
!2069 = !DILocalVariable(name: "ban_typep", arg: 1, scope: !2066, file: !669, line: 359, type: !215)
!2070 = !DILocation(line: 359, column: 42, scope: !2066)
!2071 = !DILocalVariable(name: "str", scope: !2066, file: !669, line: 361, type: !431)
!2072 = !DILocation(line: 361, column: 11, scope: !2066)
!2073 = !DILocalVariable(name: "ban_type", scope: !2066, file: !669, line: 362, type: !230)
!2074 = !DILocation(line: 362, column: 6, scope: !2066)
!2075 = !DILocation(line: 364, column: 30, scope: !2066)
!2076 = !DILocation(line: 364, column: 21, scope: !2066)
!2077 = !DILocation(line: 364, column: 14, scope: !2066)
!2078 = !DILocation(line: 364, column: 11, scope: !2066)
!2079 = !DILocation(line: 366, column: 6, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2066, file: !669, line: 366, column: 6)
!2081 = !DILocation(line: 366, column: 15, scope: !2080)
!2082 = !DILocation(line: 366, column: 6, scope: !2066)
!2083 = !DILocation(line: 367, column: 3, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2080, file: !669, line: 366, column: 21)
!2085 = !DILocation(line: 369, column: 17, scope: !2084)
!2086 = !DILocation(line: 372, column: 6, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2066, file: !669, line: 372, column: 6)
!2088 = !DILocation(line: 372, column: 15, scope: !2087)
!2089 = !DILocation(line: 372, column: 6, scope: !2066)
!2090 = !DILocation(line: 373, column: 3, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2087, file: !669, line: 372, column: 31)
!2092 = !DILocation(line: 375, column: 2, scope: !2091)
!2093 = !DILocation(line: 375, column: 13, scope: !2094)
!2094 = !DILexicalBlockFile(scope: !2095, file: !669, discriminator: 1)
!2095 = distinct !DILexicalBlock(scope: !2087, file: !669, line: 375, column: 13)
!2096 = !DILocation(line: 375, column: 22, scope: !2094)
!2097 = !DILocation(line: 376, column: 3, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2095, file: !669, line: 375, column: 38)
!2099 = !DILocation(line: 378, column: 2, scope: !2098)
!2100 = !DILocation(line: 378, column: 13, scope: !2101)
!2101 = !DILexicalBlockFile(scope: !2102, file: !669, discriminator: 1)
!2102 = distinct !DILexicalBlock(scope: !2095, file: !669, line: 378, column: 13)
!2103 = !DILocation(line: 378, column: 22, scope: !2101)
!2104 = !DILocation(line: 379, column: 3, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2102, file: !669, line: 378, column: 31)
!2106 = !DILocation(line: 381, column: 2, scope: !2105)
!2107 = !DILocation(line: 382, column: 9, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2102, file: !669, line: 381, column: 9)
!2109 = !DILocation(line: 382, column: 7, scope: !2108)
!2110 = !DILocation(line: 383, column: 7, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2108, file: !669, line: 383, column: 7)
!2112 = !DILocation(line: 383, column: 16, scope: !2111)
!2113 = !DILocation(line: 383, column: 7, scope: !2108)
!2114 = !DILocation(line: 384, column: 20, scope: !2111)
!2115 = !DILocation(line: 384, column: 4, scope: !2111)
!2116 = !DILocation(line: 385, column: 7, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2108, file: !669, line: 385, column: 7)
!2118 = !DILocation(line: 385, column: 16, scope: !2117)
!2119 = !DILocation(line: 385, column: 7, scope: !2108)
!2120 = !DILocation(line: 386, column: 20, scope: !2117)
!2121 = !DILocation(line: 386, column: 4, scope: !2117)
!2122 = !DILocation(line: 387, column: 7, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2108, file: !669, line: 387, column: 7)
!2124 = !DILocation(line: 387, column: 16, scope: !2123)
!2125 = !DILocation(line: 387, column: 7, scope: !2108)
!2126 = !DILocation(line: 388, column: 20, scope: !2123)
!2127 = !DILocation(line: 388, column: 4, scope: !2123)
!2128 = !DILocation(line: 389, column: 7, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2108, file: !669, line: 389, column: 7)
!2130 = !DILocation(line: 389, column: 16, scope: !2129)
!2131 = !DILocation(line: 389, column: 7, scope: !2108)
!2132 = !DILocation(line: 390, column: 20, scope: !2129)
!2133 = !DILocation(line: 390, column: 4, scope: !2129)
!2134 = !DILocation(line: 392, column: 43, scope: !2108)
!2135 = !DILocation(line: 392, column: 48, scope: !2108)
!2136 = !DILocation(line: 392, column: 3, scope: !2108)
!2137 = !DILocation(line: 394, column: 17, scope: !2108)
!2138 = !DILocation(line: 394, column: 3, scope: !2108)
!2139 = !DILocation(line: 396, column: 1, scope: !2066)
!2140 = distinct !DISubprogram(name: "sig_whois_event_not_found", scope: !669, file: !669, line: 398, type: !1729, isLocal: true, isDefinition: true, scopeLine: 399, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !670)
!2141 = !DILocalVariable(name: "server", arg: 1, scope: !2140, file: !669, line: 398, type: !698)
!2142 = !DILocation(line: 398, column: 55, scope: !2140)
!2143 = !DILocalVariable(name: "data", arg: 2, scope: !2140, file: !669, line: 398, type: !220)
!2144 = !DILocation(line: 398, column: 75, scope: !2140)
!2145 = !DILocalVariable(name: "params", scope: !2140, file: !669, line: 400, type: !243)
!2146 = !DILocation(line: 400, column: 8, scope: !2140)
!2147 = !DILocalVariable(name: "nick", scope: !2140, file: !669, line: 400, type: !243)
!2148 = !DILocation(line: 400, column: 17, scope: !2140)
!2149 = !DILocation(line: 402, column: 2, scope: !2140)
!2150 = distinct !{!2150, !2149}
!2151 = !DILocation(line: 402, column: 10, scope: !2152)
!2152 = !DILexicalBlockFile(scope: !2153, file: !669, discriminator: 1)
!2153 = distinct !DILexicalBlock(scope: !2154, file: !669, line: 402, column: 10)
!2154 = distinct !DILexicalBlock(scope: !2140, file: !669, line: 402, column: 4)
!2155 = !DILocation(line: 402, column: 15, scope: !2152)
!2156 = !DILocation(line: 402, column: 5, scope: !2157)
!2157 = !DILexicalBlockFile(scope: !2158, file: !669, discriminator: 2)
!2158 = distinct !DILexicalBlock(scope: !2153, file: !669, line: 402, column: 3)
!2159 = !DILocation(line: 402, column: 14, scope: !2160)
!2160 = !DILexicalBlockFile(scope: !2161, file: !669, discriminator: 3)
!2161 = distinct !DILexicalBlock(scope: !2153, file: !669, line: 402, column: 12)
!2162 = !DILocation(line: 402, column: 99, scope: !2160)
!2163 = !DILocation(line: 402, column: 110, scope: !2164)
!2164 = !DILexicalBlockFile(scope: !2154, file: !669, discriminator: 4)
!2165 = !DILocation(line: 404, column: 28, scope: !2140)
!2166 = !DILocation(line: 404, column: 11, scope: !2140)
!2167 = !DILocation(line: 404, column: 9, scope: !2140)
!2168 = !DILocation(line: 405, column: 38, scope: !2140)
!2169 = !DILocation(line: 405, column: 46, scope: !2140)
!2170 = !DILocation(line: 405, column: 91, scope: !2140)
!2171 = !DILocation(line: 405, column: 2, scope: !2140)
!2172 = !DILocation(line: 406, column: 9, scope: !2140)
!2173 = !DILocation(line: 406, column: 2, scope: !2140)
!2174 = !DILocation(line: 407, column: 1, scope: !2140)
!2175 = !DILocation(line: 407, column: 1, scope: !2176)
!2176 = !DILexicalBlockFile(scope: !2140, file: !669, discriminator: 1)
!2177 = distinct !DISubprogram(name: "sig_whowas_event_end", scope: !669, file: !669, line: 409, type: !696, isLocal: true, isDefinition: true, scopeLine: 411, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !670)
!2178 = !DILocalVariable(name: "server", arg: 1, scope: !2177, file: !669, line: 409, type: !698)
!2179 = !DILocation(line: 409, column: 50, scope: !2177)
!2180 = !DILocalVariable(name: "data", arg: 2, scope: !2177, file: !669, line: 409, type: !220)
!2181 = !DILocation(line: 409, column: 70, scope: !2177)
!2182 = !DILocalVariable(name: "sender", arg: 3, scope: !2177, file: !669, line: 410, type: !220)
!2183 = !DILocation(line: 410, column: 18, scope: !2177)
!2184 = !DILocalVariable(name: "addr", arg: 4, scope: !2177, file: !669, line: 410, type: !220)
!2185 = !DILocation(line: 410, column: 38, scope: !2177)
!2186 = !DILocalVariable(name: "params", scope: !2177, file: !669, line: 412, type: !243)
!2187 = !DILocation(line: 412, column: 8, scope: !2177)
!2188 = !DILocalVariable(name: "nick", scope: !2177, file: !669, line: 412, type: !243)
!2189 = !DILocation(line: 412, column: 17, scope: !2177)
!2190 = !DILocation(line: 414, column: 2, scope: !2177)
!2191 = distinct !{!2191, !2190}
!2192 = !DILocation(line: 414, column: 10, scope: !2193)
!2193 = !DILexicalBlockFile(scope: !2194, file: !669, discriminator: 1)
!2194 = distinct !DILexicalBlock(scope: !2195, file: !669, line: 414, column: 10)
!2195 = distinct !DILexicalBlock(scope: !2177, file: !669, line: 414, column: 4)
!2196 = !DILocation(line: 414, column: 15, scope: !2193)
!2197 = !DILocation(line: 414, column: 5, scope: !2198)
!2198 = !DILexicalBlockFile(scope: !2199, file: !669, discriminator: 2)
!2199 = distinct !DILexicalBlock(scope: !2194, file: !669, line: 414, column: 3)
!2200 = !DILocation(line: 414, column: 14, scope: !2201)
!2201 = !DILexicalBlockFile(scope: !2202, file: !669, discriminator: 3)
!2202 = distinct !DILexicalBlock(scope: !2194, file: !669, line: 414, column: 12)
!2203 = !DILocation(line: 414, column: 99, scope: !2201)
!2204 = !DILocation(line: 414, column: 110, scope: !2205)
!2205 = !DILexicalBlockFile(scope: !2195, file: !669, discriminator: 4)
!2206 = !DILocation(line: 416, column: 6, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2177, file: !669, line: 416, column: 6)
!2208 = !DILocation(line: 416, column: 14, scope: !2207)
!2209 = !DILocation(line: 416, column: 6, scope: !2177)
!2210 = !DILocation(line: 417, column: 31, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2207, file: !669, line: 416, column: 28)
!2212 = !DILocation(line: 417, column: 39, scope: !2211)
!2213 = !DILocation(line: 417, column: 45, scope: !2211)
!2214 = !DILocation(line: 417, column: 53, scope: !2211)
!2215 = !DILocation(line: 417, column: 3, scope: !2211)
!2216 = !DILocation(line: 418, column: 3, scope: !2211)
!2217 = !DILocation(line: 421, column: 28, scope: !2177)
!2218 = !DILocation(line: 421, column: 11, scope: !2177)
!2219 = !DILocation(line: 421, column: 9, scope: !2177)
!2220 = !DILocation(line: 422, column: 38, scope: !2177)
!2221 = !DILocation(line: 422, column: 46, scope: !2177)
!2222 = !DILocation(line: 422, column: 91, scope: !2177)
!2223 = !DILocation(line: 422, column: 2, scope: !2177)
!2224 = !DILocation(line: 423, column: 9, scope: !2177)
!2225 = !DILocation(line: 423, column: 2, scope: !2177)
!2226 = !DILocation(line: 424, column: 1, scope: !2177)
!2227 = !DILocation(line: 424, column: 1, scope: !2228)
!2228 = !DILexicalBlockFile(scope: !2177, file: !669, discriminator: 1)
!2229 = distinct !DISubprogram(name: "fe_events_deinit", scope: !669, file: !669, line: 467, type: !380, isLocal: false, isDefinition: true, scopeLine: 468, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !670)
!2230 = !DILocation(line: 469, column: 2, scope: !2229)
!2231 = !DILocation(line: 470, column: 2, scope: !2229)
!2232 = !DILocation(line: 471, column: 2, scope: !2229)
!2233 = !DILocation(line: 472, column: 2, scope: !2229)
!2234 = !DILocation(line: 473, column: 2, scope: !2229)
!2235 = !DILocation(line: 474, column: 2, scope: !2229)
!2236 = !DILocation(line: 475, column: 2, scope: !2229)
!2237 = !DILocation(line: 476, column: 2, scope: !2229)
!2238 = !DILocation(line: 477, column: 2, scope: !2229)
!2239 = !DILocation(line: 478, column: 2, scope: !2229)
!2240 = !DILocation(line: 479, column: 2, scope: !2229)
!2241 = !DILocation(line: 480, column: 2, scope: !2229)
!2242 = !DILocation(line: 481, column: 2, scope: !2229)
!2243 = !DILocation(line: 482, column: 2, scope: !2229)
!2244 = !DILocation(line: 483, column: 2, scope: !2229)
!2245 = !DILocation(line: 484, column: 2, scope: !2229)
!2246 = !DILocation(line: 486, column: 2, scope: !2229)
!2247 = !DILocation(line: 488, column: 2, scope: !2229)
!2248 = !DILocation(line: 489, column: 2, scope: !2229)
!2249 = !DILocation(line: 490, column: 2, scope: !2229)
!2250 = !DILocation(line: 491, column: 2, scope: !2229)
!2251 = !DILocation(line: 492, column: 2, scope: !2229)
!2252 = !DILocation(line: 493, column: 2, scope: !2229)
!2253 = !DILocation(line: 494, column: 1, scope: !2229)
