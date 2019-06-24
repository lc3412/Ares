; ModuleID = './line324-fe-whois.o.i'
source_filename = "./line324-fe-whois.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.whois_event_table = type { i32, void (%struct._IRC_SERVER_REC*, i8*)* }
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

@.str = private unnamed_addr constant [14 x i8] c"fe-common/irc\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"lookandfeel\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"whois_hide_safe_channel_id\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"event 311\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"event 312\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"event 317\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"event 319\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"event 313\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"event 330\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"event 377\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"event 378\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"event 379\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"event 327\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"event 326\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"event 338\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"whois away\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"whois oper\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"whowas away\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"whois default event\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"event 318\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"event 314\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"event 369\00", align 1
@__func__.event_whois = private unnamed_addr constant [12 x i8] c"event_whois\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@__func__.event_whois_server = private unnamed_addr constant [19 x i8] c"event_whois_server\00", align 1
@__func__.event_whois_idle = private unnamed_addr constant [17 x i8] c"event_whois_idle\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"signon time\00", align 1
@__func__.event_whois_channels = private unnamed_addr constant [21 x i8] c"event_whois_channels\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"!:5\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"IDCHAN\00", align 1
@__func__.event_whois_oper = private unnamed_addr constant [17 x i8] c"event_whois_oper\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"is an \00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"is a \00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"IRC Operator\00", align 1
@__func__.event_whois_auth = private unnamed_addr constant [17 x i8] c"event_whois_auth\00", align 1
@__func__.event_whois_usermode = private unnamed_addr constant [21 x i8] c"event_whois_usermode\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"usermodes\00", align 1
@__func__.event_whois_special = private unnamed_addr constant [20 x i8] c"event_whois_special\00", align 1
@__func__.event_whois_realhost = private unnamed_addr constant [21 x i8] c"event_whois_realhost\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"hostname\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"from \00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"*@\00", align 1
@.str.35 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__func__.event_whois_modes = private unnamed_addr constant [18 x i8] c"event_whois_modes\00", align 1
@.str.36 = private unnamed_addr constant [16 x i8] c"is using modes \00", align 1
@__func__.event_whois_realhost327 = private unnamed_addr constant [24 x i8] c"event_whois_realhost327\00", align 1
@__func__.event_whois_usermode326 = private unnamed_addr constant [24 x i8] c"event_whois_usermode326\00", align 1
@__func__.event_whois_realhost338 = private unnamed_addr constant [24 x i8] c"event_whois_realhost338\00", align 1
@__func__.event_whois_away = private unnamed_addr constant [17 x i8] c"event_whois_away\00", align 1
@current_server_event = external global i8*, align 8
@events = internal global [11 x %struct.whois_event_table] [%struct.whois_event_table { i32 312, void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_server }, %struct.whois_event_table { i32 326, void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_usermode326 }, %struct.whois_event_table { i32 327, void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_realhost327 }, %struct.whois_event_table { i32 338, void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_realhost338 }, %struct.whois_event_table { i32 379, void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_modes }, %struct.whois_event_table { i32 378, void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_realhost }, %struct.whois_event_table { i32 377, void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_usermode }, %struct.whois_event_table { i32 317, void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_idle }, %struct.whois_event_table { i32 330, void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_auth }, %struct.whois_event_table { i32 319, void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_channels }, %struct.whois_event_table zeroinitializer], align 16
@__func__.event_end_of_whois = private unnamed_addr constant [19 x i8] c"event_end_of_whois\00", align 1
@__func__.event_whowas = private unnamed_addr constant [13 x i8] c"event_whowas\00", align 1
@__func__.event_end_of_whowas = private unnamed_addr constant [20 x i8] c"event_end_of_whowas\00", align 1

; Function Attrs: nounwind uwtable
define void @fe_whois_init() #0 !dbg !853 {
  call void @settings_add_bool_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0), i32 1), !dbg !855
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whois to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !856
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_server to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !857
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_idle to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !858
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_channels to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !859
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_oper to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !860
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_auth to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !861
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_usermode to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !862
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_realhost to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !863
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_modes to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !864
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_realhost327 to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !865
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_usermode326 to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !866
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_realhost338 to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !867
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_away to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !868
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_oper to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !869
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_away to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !870
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_default to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !871
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_end_of_whois to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !872
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whowas to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !873
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_end_of_whowas to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !874
  ret void, !dbg !875
}

declare void @settings_add_bool_module(i8*, i8*, i8*, i32) #1

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @event_whois(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !876 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !877, metadata !878), !dbg !879
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !880, metadata !878), !dbg !881
  call void @llvm.dbg.declare(metadata i8** %5, metadata !882, metadata !878), !dbg !883
  call void @llvm.dbg.declare(metadata i8** %6, metadata !884, metadata !878), !dbg !885
  call void @llvm.dbg.declare(metadata i8** %7, metadata !886, metadata !878), !dbg !887
  call void @llvm.dbg.declare(metadata i8** %8, metadata !888, metadata !878), !dbg !889
  call void @llvm.dbg.declare(metadata i8** %9, metadata !890, metadata !878), !dbg !891
  call void @llvm.dbg.declare(metadata i8** %10, metadata !892, metadata !878), !dbg !893
  br label %11, !dbg !894, !llvm.loop !895

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %4, align 8, !dbg !896
  %13 = icmp ne i8* %12, null, !dbg !900
  br i1 %13, label %14, label %15, !dbg !896

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !901

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.event_whois, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0)), !dbg !904
  br label %36, !dbg !907

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !908

; <label>:17:                                     ; preds = %16
  %18 = load i8*, i8** %4, align 8, !dbg !910
  %19 = call i8* (i8*, i32, ...) @event_get_params(i8* %18, i32 6, i8* null, i8** %6, i8** %7, i8** %8, i8* null, i8** %9), !dbg !911
  store i8* %19, i8** %5, align 8, !dbg !912
  %20 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !913
  %21 = bitcast %struct._IRC_SERVER_REC* %20 to i8*, !dbg !913
  %22 = call i8* @module_check_cast(i8* %21, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0)), !dbg !914
  %23 = bitcast i8* %22 to %struct._SERVER_REC*, !dbg !915
  %24 = load i8*, i8** %9, align 8, !dbg !916
  %25 = load i8*, i8** %6, align 8, !dbg !917
  %26 = call i8* @recode_in(%struct._SERVER_REC* %23, i8* %24, i8* %25), !dbg !918
  store i8* %26, i8** %10, align 8, !dbg !920
  %27 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !921
  %28 = bitcast %struct._IRC_SERVER_REC* %27 to i8*, !dbg !921
  %29 = load i8*, i8** %6, align 8, !dbg !922
  %30 = load i8*, i8** %6, align 8, !dbg !923
  %31 = load i8*, i8** %7, align 8, !dbg !924
  %32 = load i8*, i8** %8, align 8, !dbg !925
  %33 = load i8*, i8** %10, align 8, !dbg !926
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %28, i8* %29, i32 1, i32 69, i8* %30, i8* %31, i8* %32, i8* %33), !dbg !927
  %34 = load i8*, i8** %5, align 8, !dbg !928
  call void @g_free(i8* %34), !dbg !929
  %35 = load i8*, i8** %10, align 8, !dbg !930
  call void @g_free(i8* %35), !dbg !931
  br label %36, !dbg !932

; <label>:36:                                     ; preds = %17, %15
  ret void, !dbg !933
}

; Function Attrs: nounwind uwtable
define internal void @event_whois_server(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !934 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !935, metadata !878), !dbg !936
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !937, metadata !878), !dbg !938
  call void @llvm.dbg.declare(metadata i8** %5, metadata !939, metadata !878), !dbg !940
  call void @llvm.dbg.declare(metadata i8** %6, metadata !941, metadata !878), !dbg !942
  call void @llvm.dbg.declare(metadata i8** %7, metadata !943, metadata !878), !dbg !944
  call void @llvm.dbg.declare(metadata i8** %8, metadata !945, metadata !878), !dbg !946
  br label %9, !dbg !947, !llvm.loop !948

; <label>:9:                                      ; preds = %2
  %10 = load i8*, i8** %4, align 8, !dbg !949
  %11 = icmp ne i8* %10, null, !dbg !953
  br i1 %11, label %12, label %13, !dbg !949

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !954

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.event_whois_server, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0)), !dbg !957
  br label %25, !dbg !960

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !961

; <label>:15:                                     ; preds = %14
  %16 = load i8*, i8** %4, align 8, !dbg !963
  %17 = call i8* (i8*, i32, ...) @event_get_params(i8* %16, i32 4, i8* null, i8** %6, i8** %7, i8** %8), !dbg !964
  store i8* %17, i8** %5, align 8, !dbg !965
  %18 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !966
  %19 = bitcast %struct._IRC_SERVER_REC* %18 to i8*, !dbg !966
  %20 = load i8*, i8** %6, align 8, !dbg !967
  %21 = load i8*, i8** %6, align 8, !dbg !968
  %22 = load i8*, i8** %7, align 8, !dbg !969
  %23 = load i8*, i8** %8, align 8, !dbg !970
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %19, i8* %20, i32 1, i32 73, i8* %21, i8* %22, i8* %23), !dbg !971
  %24 = load i8*, i8** %5, align 8, !dbg !972
  call void @g_free(i8* %24), !dbg !973
  br label %25, !dbg !974

; <label>:25:                                     ; preds = %15, %13
  ret void, !dbg !975
}

; Function Attrs: nounwind uwtable
define internal void @event_whois_idle(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !977 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !978, metadata !878), !dbg !979
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !980, metadata !878), !dbg !981
  call void @llvm.dbg.declare(metadata i8** %5, metadata !982, metadata !878), !dbg !983
  call void @llvm.dbg.declare(metadata i8** %6, metadata !984, metadata !878), !dbg !985
  call void @llvm.dbg.declare(metadata i8** %7, metadata !986, metadata !878), !dbg !987
  call void @llvm.dbg.declare(metadata i8** %8, metadata !988, metadata !878), !dbg !989
  call void @llvm.dbg.declare(metadata i8** %9, metadata !990, metadata !878), !dbg !991
  call void @llvm.dbg.declare(metadata i8** %10, metadata !992, metadata !878), !dbg !993
  call void @llvm.dbg.declare(metadata i64* %11, metadata !994, metadata !878), !dbg !995
  call void @llvm.dbg.declare(metadata i64* %12, metadata !996, metadata !878), !dbg !997
  call void @llvm.dbg.declare(metadata i64* %13, metadata !998, metadata !878), !dbg !999
  call void @llvm.dbg.declare(metadata i64* %14, metadata !1000, metadata !878), !dbg !1001
  call void @llvm.dbg.declare(metadata i64* %15, metadata !1002, metadata !878), !dbg !1003
  br label %16, !dbg !1004, !llvm.loop !1005

; <label>:16:                                     ; preds = %2
  %17 = load i8*, i8** %4, align 8, !dbg !1006
  %18 = icmp ne i8* %17, null, !dbg !1010
  br i1 %18, label %19, label %20, !dbg !1006

; <label>:19:                                     ; preds = %16
  br label %21, !dbg !1011

; <label>:20:                                     ; preds = %16
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.event_whois_idle, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0)), !dbg !1014
  br label %73, !dbg !1017

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !1018

; <label>:22:                                     ; preds = %21
  %23 = load i8*, i8** %4, align 8, !dbg !1020
  %24 = call i8* (i8*, i32, ...) @event_get_params(i8* %23, i32 8197, i8* null, i8** %6, i8** %7, i8** %8, i8** %9), !dbg !1021
  store i8* %24, i8** %5, align 8, !dbg !1022
  %25 = load i8*, i8** %7, align 8, !dbg !1023
  %26 = call i64 @atol(i8* %25) #5, !dbg !1024
  store i64 %26, i64* %14, align 8, !dbg !1025
  %27 = load i8*, i8** %9, align 8, !dbg !1026
  %28 = call i8* @strstr(i8* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0)) #5, !dbg !1027
  %29 = icmp eq i8* %28, null, !dbg !1028
  br i1 %29, label %30, label %31, !dbg !1027

; <label>:30:                                     ; preds = %22
  br label %34, !dbg !1029

; <label>:31:                                     ; preds = %22
  %32 = load i8*, i8** %8, align 8, !dbg !1031
  %33 = call i64 @atol(i8* %32) #5, !dbg !1032
  br label %34, !dbg !1033

; <label>:34:                                     ; preds = %31, %30
  %35 = phi i64 [ 0, %30 ], [ %33, %31 ], !dbg !1035
  store i64 %35, i64* %15, align 8, !dbg !1037
  %36 = load i64, i64* %14, align 8, !dbg !1038
  %37 = sdiv i64 %36, 3600, !dbg !1039
  %38 = sdiv i64 %37, 24, !dbg !1040
  store i64 %38, i64* %11, align 8, !dbg !1041
  %39 = load i64, i64* %14, align 8, !dbg !1042
  %40 = srem i64 %39, 86400, !dbg !1043
  %41 = sdiv i64 %40, 3600, !dbg !1044
  store i64 %41, i64* %12, align 8, !dbg !1045
  %42 = load i64, i64* %14, align 8, !dbg !1046
  %43 = srem i64 %42, 3600, !dbg !1047
  %44 = sdiv i64 %43, 60, !dbg !1048
  store i64 %44, i64* %13, align 8, !dbg !1049
  %45 = load i64, i64* %14, align 8, !dbg !1050
  %46 = srem i64 %45, 60, !dbg !1050
  store i64 %46, i64* %14, align 8, !dbg !1050
  %47 = load i64, i64* %15, align 8, !dbg !1051
  %48 = icmp eq i64 %47, 0, !dbg !1053
  br i1 %48, label %49, label %58, !dbg !1054

; <label>:49:                                     ; preds = %34
  %50 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1055
  %51 = bitcast %struct._IRC_SERVER_REC* %50 to i8*, !dbg !1055
  %52 = load i8*, i8** %6, align 8, !dbg !1056
  %53 = load i8*, i8** %6, align 8, !dbg !1057
  %54 = load i64, i64* %11, align 8, !dbg !1058
  %55 = load i64, i64* %12, align 8, !dbg !1059
  %56 = load i64, i64* %13, align 8, !dbg !1060
  %57 = load i64, i64* %14, align 8, !dbg !1061
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %51, i8* %52, i32 1, i32 71, i8* %53, i64 %54, i64 %55, i64 %56, i64 %57), !dbg !1062
  br label %71, !dbg !1062

; <label>:58:                                     ; preds = %34
  %59 = load i64, i64* %15, align 8, !dbg !1063
  %60 = call i8* @my_asctime(i64 %59), !dbg !1065
  store i8* %60, i8** %10, align 8, !dbg !1066
  %61 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1067
  %62 = bitcast %struct._IRC_SERVER_REC* %61 to i8*, !dbg !1067
  %63 = load i8*, i8** %6, align 8, !dbg !1068
  %64 = load i8*, i8** %6, align 8, !dbg !1069
  %65 = load i64, i64* %11, align 8, !dbg !1070
  %66 = load i64, i64* %12, align 8, !dbg !1071
  %67 = load i64, i64* %13, align 8, !dbg !1072
  %68 = load i64, i64* %14, align 8, !dbg !1073
  %69 = load i8*, i8** %10, align 8, !dbg !1074
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %62, i8* %63, i32 1, i32 72, i8* %64, i64 %65, i64 %66, i64 %67, i64 %68, i8* %69), !dbg !1075
  %70 = load i8*, i8** %10, align 8, !dbg !1076
  call void @g_free(i8* %70), !dbg !1077
  br label %71

; <label>:71:                                     ; preds = %58, %49
  %72 = load i8*, i8** %5, align 8, !dbg !1078
  call void @g_free(i8* %72), !dbg !1079
  br label %73, !dbg !1080

; <label>:73:                                     ; preds = %71, %20
  ret void, !dbg !1081
}

; Function Attrs: nounwind uwtable
define internal void @event_whois_channels(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1082 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1083, metadata !878), !dbg !1084
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1085, metadata !878), !dbg !1086
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1087, metadata !878), !dbg !1088
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1089, metadata !878), !dbg !1090
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1091, metadata !878), !dbg !1092
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1093, metadata !878), !dbg !1094
  br label %9, !dbg !1095, !llvm.loop !1096

; <label>:9:                                      ; preds = %2
  %10 = load i8*, i8** %4, align 8, !dbg !1097
  %11 = icmp ne i8* %10, null, !dbg !1101
  br i1 %11, label %12, label %13, !dbg !1097

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !1102

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.event_whois_channels, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0)), !dbg !1105
  br label %41, !dbg !1108

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !1109

; <label>:15:                                     ; preds = %14
  %16 = load i8*, i8** %4, align 8, !dbg !1111
  %17 = call i8* (i8*, i32, ...) @event_get_params(i8* %16, i32 3, i8* null, i8** %6, i8** %7), !dbg !1112
  store i8* %17, i8** %5, align 8, !dbg !1113
  %18 = load i8*, i8** %7, align 8, !dbg !1114
  %19 = call i8* @show_lowascii(i8* %18), !dbg !1115
  store i8* %19, i8** %7, align 8, !dbg !1116
  %20 = call i32 @settings_get_bool(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0)), !dbg !1117
  %21 = icmp ne i32 %20, 0, !dbg !1117
  br i1 %21, label %22, label %25, !dbg !1119

; <label>:22:                                     ; preds = %15
  %23 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1120
  %24 = load i8*, i8** %7, align 8, !dbg !1121
  call void @hide_safe_channel_id(%struct._IRC_SERVER_REC* %23, i8* %24), !dbg !1122
  br label %25, !dbg !1122

; <label>:25:                                     ; preds = %22, %15
  %26 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1123
  %27 = bitcast %struct._IRC_SERVER_REC* %26 to i8*, !dbg !1123
  %28 = call i8* @module_check_cast(i8* %27, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0)), !dbg !1124
  %29 = bitcast i8* %28 to %struct._SERVER_REC*, !dbg !1125
  %30 = load i8*, i8** %7, align 8, !dbg !1126
  %31 = load i8*, i8** %6, align 8, !dbg !1127
  %32 = call i8* @recode_in(%struct._SERVER_REC* %29, i8* %30, i8* %31), !dbg !1128
  store i8* %32, i8** %8, align 8, !dbg !1130
  %33 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1131
  %34 = bitcast %struct._IRC_SERVER_REC* %33 to i8*, !dbg !1131
  %35 = load i8*, i8** %6, align 8, !dbg !1132
  %36 = load i8*, i8** %6, align 8, !dbg !1133
  %37 = load i8*, i8** %8, align 8, !dbg !1134
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %34, i8* %35, i32 1, i32 78, i8* %36, i8* %37), !dbg !1135
  %38 = load i8*, i8** %7, align 8, !dbg !1136
  call void @g_free(i8* %38), !dbg !1137
  %39 = load i8*, i8** %5, align 8, !dbg !1138
  call void @g_free(i8* %39), !dbg !1139
  %40 = load i8*, i8** %8, align 8, !dbg !1140
  call void @g_free(i8* %40), !dbg !1141
  br label %41, !dbg !1142

; <label>:41:                                     ; preds = %25, %13
  ret void, !dbg !1143
}

; Function Attrs: nounwind uwtable
define internal void @event_whois_oper(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1144 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1145, metadata !878), !dbg !1146
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1147, metadata !878), !dbg !1148
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1149, metadata !878), !dbg !1150
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1151, metadata !878), !dbg !1152
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1153, metadata !878), !dbg !1154
  br label %8, !dbg !1155, !llvm.loop !1156

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %4, align 8, !dbg !1157
  %10 = icmp ne i8* %9, null, !dbg !1161
  br i1 %10, label %11, label %12, !dbg !1157

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !1162

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.event_whois_oper, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0)), !dbg !1165
  br label %48, !dbg !1168

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !1169

; <label>:14:                                     ; preds = %13
  %15 = load i8*, i8** %4, align 8, !dbg !1171
  %16 = call i8* (i8*, i32, ...) @event_get_params(i8* %15, i32 3, i8* null, i8** %6, i8** %7), !dbg !1172
  store i8* %16, i8** %5, align 8, !dbg !1173
  %17 = load i8*, i8** %7, align 8, !dbg !1174
  %18 = call i32 @strncmp(i8* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i64 6) #5, !dbg !1176
  %19 = icmp ne i32 %18, 0, !dbg !1176
  br i1 %19, label %20, label %24, !dbg !1177

; <label>:20:                                     ; preds = %14
  %21 = load i8*, i8** %7, align 8, !dbg !1178
  %22 = call i32 @strncmp(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i64 5) #5, !dbg !1180
  %23 = icmp ne i32 %22, 0, !dbg !1180
  br i1 %23, label %35, label %24, !dbg !1181

; <label>:24:                                     ; preds = %20, %14
  %25 = load i8*, i8** %7, align 8, !dbg !1182
  %26 = getelementptr inbounds i8, i8* %25, i64 5, !dbg !1182
  store i8* %26, i8** %7, align 8, !dbg !1182
  %27 = load i8*, i8** %7, align 8, !dbg !1184
  %28 = load i8, i8* %27, align 1, !dbg !1186
  %29 = sext i8 %28 to i32, !dbg !1186
  %30 = icmp eq i32 %29, 32, !dbg !1187
  br i1 %30, label %31, label %34, !dbg !1188

; <label>:31:                                     ; preds = %24
  %32 = load i8*, i8** %7, align 8, !dbg !1189
  %33 = getelementptr inbounds i8, i8* %32, i32 1, !dbg !1189
  store i8* %33, i8** %7, align 8, !dbg !1189
  br label %34, !dbg !1191

; <label>:34:                                     ; preds = %31, %24
  br label %35, !dbg !1192

; <label>:35:                                     ; preds = %34, %20
  %36 = load i8*, i8** %7, align 8, !dbg !1193
  %37 = load i8, i8* %36, align 1, !dbg !1195
  %38 = sext i8 %37 to i32, !dbg !1195
  %39 = icmp eq i32 %38, 0, !dbg !1196
  br i1 %39, label %40, label %41, !dbg !1197

; <label>:40:                                     ; preds = %35
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0), i8** %7, align 8, !dbg !1198
  br label %41, !dbg !1199

; <label>:41:                                     ; preds = %40, %35
  %42 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1200
  %43 = bitcast %struct._IRC_SERVER_REC* %42 to i8*, !dbg !1200
  %44 = load i8*, i8** %6, align 8, !dbg !1201
  %45 = load i8*, i8** %6, align 8, !dbg !1202
  %46 = load i8*, i8** %7, align 8, !dbg !1203
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %43, i8* %44, i32 1, i32 74, i8* %45, i8* %46), !dbg !1204
  %47 = load i8*, i8** %5, align 8, !dbg !1205
  call void @g_free(i8* %47), !dbg !1206
  br label %48, !dbg !1207

; <label>:48:                                     ; preds = %41, %12
  ret void, !dbg !1208
}

; Function Attrs: nounwind uwtable
define internal void @event_whois_auth(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1210 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1211, metadata !878), !dbg !1212
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1213, metadata !878), !dbg !1214
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1215, metadata !878), !dbg !1216
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1217, metadata !878), !dbg !1218
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1219, metadata !878), !dbg !1220
  br label %8, !dbg !1221, !llvm.loop !1222

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %4, align 8, !dbg !1223
  %10 = icmp ne i8* %9, null, !dbg !1227
  br i1 %10, label %11, label %12, !dbg !1223

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !1228

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.event_whois_auth, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0)), !dbg !1231
  br label %23, !dbg !1234

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !1235

; <label>:14:                                     ; preds = %13
  %15 = load i8*, i8** %4, align 8, !dbg !1237
  %16 = call i8* (i8*, i32, ...) @event_get_params(i8* %15, i32 3, i8* null, i8** %6, i8** %7), !dbg !1238
  store i8* %16, i8** %5, align 8, !dbg !1239
  %17 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1240
  %18 = bitcast %struct._IRC_SERVER_REC* %17 to i8*, !dbg !1240
  %19 = load i8*, i8** %6, align 8, !dbg !1241
  %20 = load i8*, i8** %6, align 8, !dbg !1242
  %21 = load i8*, i8** %7, align 8, !dbg !1243
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %18, i8* %19, i32 1, i32 81, i8* %20, i8* %21), !dbg !1244
  %22 = load i8*, i8** %5, align 8, !dbg !1245
  call void @g_free(i8* %22), !dbg !1246
  br label %23, !dbg !1247

; <label>:23:                                     ; preds = %14, %12
  ret void, !dbg !1248
}

; Function Attrs: nounwind uwtable
define internal void @event_whois_usermode(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1250 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1251, metadata !878), !dbg !1252
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1253, metadata !878), !dbg !1254
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1255, metadata !878), !dbg !1256
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1257, metadata !878), !dbg !1258
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1259, metadata !878), !dbg !1260
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1261, metadata !878), !dbg !1262
  br label %9, !dbg !1263, !llvm.loop !1264

; <label>:9:                                      ; preds = %2
  %10 = load i8*, i8** %4, align 8, !dbg !1265
  %11 = icmp ne i8* %10, null, !dbg !1269
  br i1 %11, label %12, label %13, !dbg !1265

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !1270

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.event_whois_usermode, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0)), !dbg !1273
  br label %32, !dbg !1276

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !1277

; <label>:15:                                     ; preds = %14
  %16 = load i8*, i8** %4, align 8, !dbg !1279
  %17 = call i8* (i8*, i32, ...) @event_get_params(i8* %16, i32 4, i8* null, i8** %6, i8** %7, i8** %8), !dbg !1280
  store i8* %17, i8** %5, align 8, !dbg !1281
  %18 = load i8*, i8** %6, align 8, !dbg !1282
  %19 = call i32 @g_strcmp0(i8* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0)), !dbg !1284
  %20 = icmp eq i32 %19, 0, !dbg !1285
  br i1 %20, label %21, label %27, !dbg !1286

; <label>:21:                                     ; preds = %15
  %22 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1287
  %23 = bitcast %struct._IRC_SERVER_REC* %22 to i8*, !dbg !1287
  %24 = load i8*, i8** %7, align 8, !dbg !1289
  %25 = load i8*, i8** %7, align 8, !dbg !1290
  %26 = load i8*, i8** %8, align 8, !dbg !1291
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %23, i8* %24, i32 1, i32 77, i8* %25, i8* %26), !dbg !1292
  br label %30, !dbg !1293

; <label>:27:                                     ; preds = %15
  %28 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1294
  %29 = load i8*, i8** %4, align 8, !dbg !1296
  call void @event_whois_special(%struct._IRC_SERVER_REC* %28, i8* %29), !dbg !1297
  br label %30

; <label>:30:                                     ; preds = %27, %21
  %31 = load i8*, i8** %5, align 8, !dbg !1298
  call void @g_free(i8* %31), !dbg !1299
  br label %32, !dbg !1300

; <label>:32:                                     ; preds = %30, %13
  ret void, !dbg !1301
}

; Function Attrs: nounwind uwtable
define internal void @event_whois_realhost(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1303 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1304, metadata !878), !dbg !1305
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1306, metadata !878), !dbg !1307
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1308, metadata !878), !dbg !1309
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1310, metadata !878), !dbg !1311
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1312, metadata !878), !dbg !1313
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1314, metadata !878), !dbg !1315
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1316, metadata !878), !dbg !1317
  br label %10, !dbg !1318, !llvm.loop !1319

; <label>:10:                                     ; preds = %2
  %11 = load i8*, i8** %4, align 8, !dbg !1320
  %12 = icmp ne i8* %11, null, !dbg !1324
  br i1 %12, label %13, label %14, !dbg !1320

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !1325

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.event_whois_realhost, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0)), !dbg !1328
  br label %59, !dbg !1331

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !1332

; <label>:16:                                     ; preds = %15
  %17 = load i8*, i8** %4, align 8, !dbg !1334
  %18 = call i8* (i8*, i32, ...) @event_get_params(i8* %17, i32 5, i8* null, i8** %6, i8** %7, i8** %8, i8** %9), !dbg !1335
  store i8* %18, i8** %5, align 8, !dbg !1336
  %19 = load i8*, i8** %7, align 8, !dbg !1337
  %20 = call i32 @g_strcmp0(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0)), !dbg !1339
  %21 = icmp ne i32 %20, 0, !dbg !1340
  br i1 %21, label %26, label %22, !dbg !1341

; <label>:22:                                     ; preds = %16
  %23 = load i8*, i8** %8, align 8, !dbg !1342
  %24 = call i32 @g_strcmp0(i8* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0)), !dbg !1343
  %25 = icmp ne i32 %24, 0, !dbg !1344
  br i1 %25, label %26, label %38, !dbg !1345

; <label>:26:                                     ; preds = %22, %16
  %27 = load i8*, i8** %5, align 8, !dbg !1347
  call void @g_free(i8* %27), !dbg !1349
  %28 = load i8*, i8** %4, align 8, !dbg !1350
  %29 = call i8* (i8*, i32, ...) @event_get_params(i8* %28, i32 3, i8* null, i8** %6, i8** %9), !dbg !1351
  store i8* %29, i8** %5, align 8, !dbg !1352
  %30 = load i8*, i8** %9, align 8, !dbg !1353
  %31 = call i8* @strstr(i8* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0)) #5, !dbg !1354
  store i8* %31, i8** %9, align 8, !dbg !1355
  %32 = load i8*, i8** %9, align 8, !dbg !1356
  %33 = icmp ne i8* %32, null, !dbg !1358
  br i1 %33, label %34, label %37, !dbg !1359

; <label>:34:                                     ; preds = %26
  %35 = load i8*, i8** %9, align 8, !dbg !1360
  %36 = getelementptr inbounds i8, i8* %35, i64 5, !dbg !1360
  store i8* %36, i8** %9, align 8, !dbg !1360
  br label %37, !dbg !1362

; <label>:37:                                     ; preds = %34, %26
  br label %38, !dbg !1363

; <label>:38:                                     ; preds = %37, %22
  %39 = load i8*, i8** %9, align 8, !dbg !1364
  %40 = icmp ne i8* %39, null, !dbg !1366
  br i1 %40, label %41, label %54, !dbg !1367

; <label>:41:                                     ; preds = %38
  %42 = load i8*, i8** %9, align 8, !dbg !1368
  %43 = call i32 @strncmp(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i64 2) #5, !dbg !1371
  %44 = icmp ne i32 %43, 0, !dbg !1371
  br i1 %44, label %48, label %45, !dbg !1372

; <label>:45:                                     ; preds = %41
  %46 = load i8*, i8** %9, align 8, !dbg !1373
  %47 = getelementptr inbounds i8, i8* %46, i64 2, !dbg !1373
  store i8* %47, i8** %9, align 8, !dbg !1373
  br label %48, !dbg !1374

; <label>:48:                                     ; preds = %45, %41
  %49 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1375
  %50 = bitcast %struct._IRC_SERVER_REC* %49 to i8*, !dbg !1375
  %51 = load i8*, i8** %6, align 8, !dbg !1376
  %52 = load i8*, i8** %6, align 8, !dbg !1377
  %53 = load i8*, i8** %9, align 8, !dbg !1378
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %50, i8* %51, i32 1, i32 76, i8* %52, i8* %53, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.35, i32 0, i32 0)), !dbg !1379
  br label %57, !dbg !1380

; <label>:54:                                     ; preds = %38
  %55 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1381
  %56 = load i8*, i8** %4, align 8, !dbg !1383
  call void @event_whois_special(%struct._IRC_SERVER_REC* %55, i8* %56), !dbg !1384
  br label %57

; <label>:57:                                     ; preds = %54, %48
  %58 = load i8*, i8** %5, align 8, !dbg !1385
  call void @g_free(i8* %58), !dbg !1386
  br label %59, !dbg !1387

; <label>:59:                                     ; preds = %57, %14
  ret void, !dbg !1388
}

; Function Attrs: nounwind uwtable
define internal void @event_whois_modes(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1389 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1390, metadata !878), !dbg !1391
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1392, metadata !878), !dbg !1393
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1394, metadata !878), !dbg !1395
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1396, metadata !878), !dbg !1397
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1398, metadata !878), !dbg !1399
  br label %8, !dbg !1400, !llvm.loop !1401

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %4, align 8, !dbg !1402
  %10 = icmp ne i8* %9, null, !dbg !1406
  br i1 %10, label %11, label %12, !dbg !1402

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !1407

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.event_whois_modes, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0)), !dbg !1410
  br label %30, !dbg !1413

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !1414

; <label>:14:                                     ; preds = %13
  %15 = load i8*, i8** %4, align 8, !dbg !1416
  %16 = call i8* (i8*, i32, ...) @event_get_params(i8* %15, i32 8195, i8* null, i8** %6, i8** %7), !dbg !1417
  store i8* %16, i8** %5, align 8, !dbg !1418
  %17 = load i8*, i8** %7, align 8, !dbg !1419
  %18 = call i32 @strncmp(i8* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.36, i32 0, i32 0), i64 15) #5, !dbg !1421
  %19 = icmp ne i32 %18, 0, !dbg !1421
  br i1 %19, label %23, label %20, !dbg !1422

; <label>:20:                                     ; preds = %14
  %21 = load i8*, i8** %7, align 8, !dbg !1423
  %22 = getelementptr inbounds i8, i8* %21, i64 15, !dbg !1423
  store i8* %22, i8** %7, align 8, !dbg !1423
  br label %23, !dbg !1424

; <label>:23:                                     ; preds = %20, %14
  %24 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1425
  %25 = bitcast %struct._IRC_SERVER_REC* %24 to i8*, !dbg !1425
  %26 = load i8*, i8** %6, align 8, !dbg !1426
  %27 = load i8*, i8** %6, align 8, !dbg !1427
  %28 = load i8*, i8** %7, align 8, !dbg !1428
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %25, i8* %26, i32 1, i32 75, i8* %27, i8* %28), !dbg !1429
  %29 = load i8*, i8** %5, align 8, !dbg !1430
  call void @g_free(i8* %29), !dbg !1431
  br label %30, !dbg !1432

; <label>:30:                                     ; preds = %23, %12
  ret void, !dbg !1433
}

; Function Attrs: nounwind uwtable
define internal void @event_whois_realhost327(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1435 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1436, metadata !878), !dbg !1437
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1438, metadata !878), !dbg !1439
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1440, metadata !878), !dbg !1441
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1442, metadata !878), !dbg !1443
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1444, metadata !878), !dbg !1445
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1446, metadata !878), !dbg !1447
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1448, metadata !878), !dbg !1449
  br label %10, !dbg !1450, !llvm.loop !1451

; <label>:10:                                     ; preds = %2
  %11 = load i8*, i8** %4, align 8, !dbg !1452
  %12 = icmp ne i8* %11, null, !dbg !1456
  br i1 %12, label %13, label %14, !dbg !1452

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !1457

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.event_whois_realhost327, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0)), !dbg !1460
  br label %35, !dbg !1463

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !1464

; <label>:16:                                     ; preds = %15
  %17 = load i8*, i8** %4, align 8, !dbg !1466
  %18 = call i8* (i8*, i32, ...) @event_get_params(i8* %17, i32 5, i8* null, i8** %6, i8** %7, i8** %8, i8** %9), !dbg !1467
  store i8* %18, i8** %5, align 8, !dbg !1468
  %19 = load i8*, i8** %9, align 8, !dbg !1469
  %20 = load i8, i8* %19, align 1, !dbg !1471
  %21 = sext i8 %20 to i32, !dbg !1471
  %22 = icmp ne i32 %21, 0, !dbg !1472
  br i1 %22, label %23, label %30, !dbg !1473

; <label>:23:                                     ; preds = %16
  %24 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1474
  %25 = bitcast %struct._IRC_SERVER_REC* %24 to i8*, !dbg !1474
  %26 = load i8*, i8** %6, align 8, !dbg !1476
  %27 = load i8*, i8** %6, align 8, !dbg !1477
  %28 = load i8*, i8** %7, align 8, !dbg !1478
  %29 = load i8*, i8** %8, align 8, !dbg !1479
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %25, i8* %26, i32 1, i32 76, i8* %27, i8* %28, i8* %29), !dbg !1480
  br label %33, !dbg !1481

; <label>:30:                                     ; preds = %16
  %31 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1482
  %32 = load i8*, i8** %4, align 8, !dbg !1484
  call void @event_whois_special(%struct._IRC_SERVER_REC* %31, i8* %32), !dbg !1485
  br label %33

; <label>:33:                                     ; preds = %30, %23
  %34 = load i8*, i8** %5, align 8, !dbg !1486
  call void @g_free(i8* %34), !dbg !1487
  br label %35, !dbg !1488

; <label>:35:                                     ; preds = %33, %14
  ret void, !dbg !1489
}

; Function Attrs: nounwind uwtable
define internal void @event_whois_usermode326(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1491 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1492, metadata !878), !dbg !1493
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1494, metadata !878), !dbg !1495
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1496, metadata !878), !dbg !1497
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1498, metadata !878), !dbg !1499
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1500, metadata !878), !dbg !1501
  br label %8, !dbg !1502, !llvm.loop !1503

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %4, align 8, !dbg !1504
  %10 = icmp ne i8* %9, null, !dbg !1508
  br i1 %10, label %11, label %12, !dbg !1504

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !1509

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.event_whois_usermode326, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0)), !dbg !1512
  br label %23, !dbg !1515

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !1516

; <label>:14:                                     ; preds = %13
  %15 = load i8*, i8** %4, align 8, !dbg !1518
  %16 = call i8* (i8*, i32, ...) @event_get_params(i8* %15, i32 3, i8* null, i8** %6, i8** %7), !dbg !1519
  store i8* %16, i8** %5, align 8, !dbg !1520
  %17 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1521
  %18 = bitcast %struct._IRC_SERVER_REC* %17 to i8*, !dbg !1521
  %19 = load i8*, i8** %6, align 8, !dbg !1522
  %20 = load i8*, i8** %6, align 8, !dbg !1523
  %21 = load i8*, i8** %7, align 8, !dbg !1524
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %18, i8* %19, i32 1, i32 77, i8* %20, i8* %21), !dbg !1525
  %22 = load i8*, i8** %5, align 8, !dbg !1526
  call void @g_free(i8* %22), !dbg !1527
  br label %23, !dbg !1528

; <label>:23:                                     ; preds = %14, %12
  ret void, !dbg !1529
}

; Function Attrs: nounwind uwtable
define internal void @event_whois_realhost338(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1531 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1532, metadata !878), !dbg !1533
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1534, metadata !878), !dbg !1535
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1536, metadata !878), !dbg !1537
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1538, metadata !878), !dbg !1539
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1540, metadata !878), !dbg !1541
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1542, metadata !878), !dbg !1543
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1544, metadata !878), !dbg !1545
  br label %10, !dbg !1546, !llvm.loop !1547

; <label>:10:                                     ; preds = %2
  %11 = load i8*, i8** %4, align 8, !dbg !1548
  %12 = icmp ne i8* %11, null, !dbg !1552
  br i1 %12, label %13, label %14, !dbg !1548

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !1553

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.event_whois_realhost338, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0)), !dbg !1556
  br label %47, !dbg !1559

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !1560

; <label>:16:                                     ; preds = %15
  %17 = load i8*, i8** %4, align 8, !dbg !1562
  %18 = call i8* (i8*, i32, ...) @event_get_params(i8* %17, i32 5, i8* null, i8** %6, i8** %7, i8** %8, i8** %9), !dbg !1563
  store i8* %18, i8** %5, align 8, !dbg !1564
  %19 = load i8*, i8** %9, align 8, !dbg !1565
  %20 = load i8, i8* %19, align 1, !dbg !1567
  %21 = sext i8 %20 to i32, !dbg !1567
  %22 = icmp ne i32 %21, 0, !dbg !1568
  br i1 %22, label %23, label %30, !dbg !1569

; <label>:23:                                     ; preds = %16
  %24 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1570
  %25 = bitcast %struct._IRC_SERVER_REC* %24 to i8*, !dbg !1570
  %26 = load i8*, i8** %6, align 8, !dbg !1572
  %27 = load i8*, i8** %6, align 8, !dbg !1573
  %28 = load i8*, i8** %7, align 8, !dbg !1574
  %29 = load i8*, i8** %8, align 8, !dbg !1575
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %25, i8* %26, i32 1, i32 76, i8* %27, i8* %28, i8* %29), !dbg !1576
  br label %45, !dbg !1577

; <label>:30:                                     ; preds = %16
  %31 = load i8*, i8** %8, align 8, !dbg !1578
  %32 = load i8, i8* %31, align 1, !dbg !1581
  %33 = sext i8 %32 to i32, !dbg !1581
  %34 = icmp ne i32 %33, 0, !dbg !1582
  br i1 %34, label %35, label %41, !dbg !1581

; <label>:35:                                     ; preds = %30
  %36 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1583
  %37 = bitcast %struct._IRC_SERVER_REC* %36 to i8*, !dbg !1583
  %38 = load i8*, i8** %6, align 8, !dbg !1585
  %39 = load i8*, i8** %6, align 8, !dbg !1586
  %40 = load i8*, i8** %7, align 8, !dbg !1587
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %37, i8* %38, i32 1, i32 76, i8* %39, i8* %40, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.35, i32 0, i32 0)), !dbg !1588
  br label %44, !dbg !1589

; <label>:41:                                     ; preds = %30
  %42 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1590
  %43 = load i8*, i8** %4, align 8, !dbg !1592
  call void @event_whois_special(%struct._IRC_SERVER_REC* %42, i8* %43), !dbg !1593
  br label %44

; <label>:44:                                     ; preds = %41, %35
  br label %45

; <label>:45:                                     ; preds = %44, %23
  %46 = load i8*, i8** %5, align 8, !dbg !1594
  call void @g_free(i8* %46), !dbg !1595
  br label %47, !dbg !1596

; <label>:47:                                     ; preds = %45, %14
  ret void, !dbg !1597
}

; Function Attrs: nounwind uwtable
define internal void @event_whois_away(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1599 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1600, metadata !878), !dbg !1601
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1602, metadata !878), !dbg !1603
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1604, metadata !878), !dbg !1605
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1606, metadata !878), !dbg !1607
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1608, metadata !878), !dbg !1609
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1610, metadata !878), !dbg !1611
  br label %9, !dbg !1612, !llvm.loop !1613

; <label>:9:                                      ; preds = %2
  %10 = load i8*, i8** %4, align 8, !dbg !1614
  %11 = icmp ne i8* %10, null, !dbg !1618
  br i1 %11, label %12, label %13, !dbg !1614

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !1619

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.event_whois_away, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0)), !dbg !1622
  br label %32, !dbg !1625

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !1626

; <label>:15:                                     ; preds = %14
  %16 = load i8*, i8** %4, align 8, !dbg !1628
  %17 = call i8* (i8*, i32, ...) @event_get_params(i8* %16, i32 3, i8* null, i8** %6, i8** %7), !dbg !1629
  store i8* %17, i8** %5, align 8, !dbg !1630
  %18 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1631
  %19 = bitcast %struct._IRC_SERVER_REC* %18 to i8*, !dbg !1631
  %20 = call i8* @module_check_cast(i8* %19, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0)), !dbg !1632
  %21 = bitcast i8* %20 to %struct._SERVER_REC*, !dbg !1633
  %22 = load i8*, i8** %7, align 8, !dbg !1634
  %23 = load i8*, i8** %6, align 8, !dbg !1635
  %24 = call i8* @recode_in(%struct._SERVER_REC* %21, i8* %22, i8* %23), !dbg !1636
  store i8* %24, i8** %8, align 8, !dbg !1638
  %25 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1639
  %26 = bitcast %struct._IRC_SERVER_REC* %25 to i8*, !dbg !1639
  %27 = load i8*, i8** %6, align 8, !dbg !1640
  %28 = load i8*, i8** %6, align 8, !dbg !1641
  %29 = load i8*, i8** %8, align 8, !dbg !1642
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %26, i8* %27, i32 1, i32 79, i8* %28, i8* %29), !dbg !1643
  %30 = load i8*, i8** %5, align 8, !dbg !1644
  call void @g_free(i8* %30), !dbg !1645
  %31 = load i8*, i8** %8, align 8, !dbg !1646
  call void @g_free(i8* %31), !dbg !1647
  br label %32, !dbg !1648

; <label>:32:                                     ; preds = %15, %13
  ret void, !dbg !1649
}

; Function Attrs: nounwind uwtable
define internal void @event_whois_default(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1650 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1651, metadata !878), !dbg !1652
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1653, metadata !878), !dbg !1654
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1655, metadata !878), !dbg !1656
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1657, metadata !878), !dbg !1658
  %7 = load i8*, i8** @current_server_event, align 8, !dbg !1659
  %8 = call i32 @atoi(i8* %7) #5, !dbg !1660
  store i32 %8, i32* %6, align 4, !dbg !1661
  store i32 0, i32* %5, align 4, !dbg !1662
  br label %9, !dbg !1664

; <label>:9:                                      ; preds = %33, %2
  %10 = load i32, i32* %5, align 4, !dbg !1665
  %11 = sext i32 %10 to i64, !dbg !1668
  %12 = getelementptr inbounds [11 x %struct.whois_event_table], [11 x %struct.whois_event_table]* @events, i64 0, i64 %11, !dbg !1668
  %13 = getelementptr inbounds %struct.whois_event_table, %struct.whois_event_table* %12, i32 0, i32 0, !dbg !1669
  %14 = load i32, i32* %13, align 16, !dbg !1669
  %15 = icmp ne i32 %14, 0, !dbg !1670
  br i1 %15, label %16, label %36, !dbg !1671

; <label>:16:                                     ; preds = %9
  %17 = load i32, i32* %5, align 4, !dbg !1672
  %18 = sext i32 %17 to i64, !dbg !1675
  %19 = getelementptr inbounds [11 x %struct.whois_event_table], [11 x %struct.whois_event_table]* @events, i64 0, i64 %18, !dbg !1675
  %20 = getelementptr inbounds %struct.whois_event_table, %struct.whois_event_table* %19, i32 0, i32 0, !dbg !1676
  %21 = load i32, i32* %20, align 16, !dbg !1676
  %22 = load i32, i32* %6, align 4, !dbg !1677
  %23 = icmp eq i32 %21, %22, !dbg !1678
  br i1 %23, label %24, label %32, !dbg !1679

; <label>:24:                                     ; preds = %16
  %25 = load i32, i32* %5, align 4, !dbg !1680
  %26 = sext i32 %25 to i64, !dbg !1682
  %27 = getelementptr inbounds [11 x %struct.whois_event_table], [11 x %struct.whois_event_table]* @events, i64 0, i64 %26, !dbg !1682
  %28 = getelementptr inbounds %struct.whois_event_table, %struct.whois_event_table* %27, i32 0, i32 1, !dbg !1683
  %29 = load void (%struct._IRC_SERVER_REC*, i8*)*, void (%struct._IRC_SERVER_REC*, i8*)** %28, align 8, !dbg !1683
  %30 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1684
  %31 = load i8*, i8** %4, align 8, !dbg !1685
  call void %29(%struct._IRC_SERVER_REC* %30, i8* %31), !dbg !1682
  br label %39, !dbg !1686

; <label>:32:                                     ; preds = %16
  br label %33, !dbg !1687

; <label>:33:                                     ; preds = %32
  %34 = load i32, i32* %5, align 4, !dbg !1688
  %35 = add nsw i32 %34, 1, !dbg !1688
  store i32 %35, i32* %5, align 4, !dbg !1688
  br label %9, !dbg !1690, !llvm.loop !1691

; <label>:36:                                     ; preds = %9
  %37 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1693
  %38 = load i8*, i8** %4, align 8, !dbg !1694
  call void @event_whois_special(%struct._IRC_SERVER_REC* %37, i8* %38), !dbg !1695
  br label %39, !dbg !1696

; <label>:39:                                     ; preds = %36, %24
  ret void, !dbg !1697
}

; Function Attrs: nounwind uwtable
define internal void @event_end_of_whois(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1699 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1700, metadata !878), !dbg !1701
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1702, metadata !878), !dbg !1703
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1704, metadata !878), !dbg !1705
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1706, metadata !878), !dbg !1707
  br label %7, !dbg !1708, !llvm.loop !1709

; <label>:7:                                      ; preds = %2
  %8 = load i8*, i8** %4, align 8, !dbg !1710
  %9 = icmp ne i8* %8, null, !dbg !1714
  br i1 %9, label %10, label %11, !dbg !1710

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !1715

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.event_end_of_whois, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0)), !dbg !1718
  br label %29, !dbg !1721

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !1722

; <label>:13:                                     ; preds = %12
  %14 = load i8*, i8** %4, align 8, !dbg !1724
  %15 = call i8* (i8*, i32, ...) @event_get_params(i8* %14, i32 2, i8* null, i8** %6), !dbg !1725
  store i8* %15, i8** %5, align 8, !dbg !1726
  %16 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1727
  %17 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %16, i32 0, i32 45, !dbg !1729
  %18 = load i16, i16* %17, align 4, !dbg !1729
  %19 = and i16 %18, 1, !dbg !1729
  %20 = zext i16 %19 to i32, !dbg !1729
  %21 = icmp ne i32 %20, 0, !dbg !1727
  br i1 %21, label %22, label %27, !dbg !1730

; <label>:22:                                     ; preds = %13
  %23 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1731
  %24 = bitcast %struct._IRC_SERVER_REC* %23 to i8*, !dbg !1731
  %25 = load i8*, i8** %6, align 8, !dbg !1733
  %26 = load i8*, i8** %6, align 8, !dbg !1734
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %24, i8* %25, i32 1, i32 82, i8* %26), !dbg !1735
  br label %27, !dbg !1736

; <label>:27:                                     ; preds = %22, %13
  %28 = load i8*, i8** %5, align 8, !dbg !1737
  call void @g_free(i8* %28), !dbg !1738
  br label %29, !dbg !1739

; <label>:29:                                     ; preds = %27, %11
  ret void, !dbg !1740
}

; Function Attrs: nounwind uwtable
define internal void @event_whowas(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1742 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1743, metadata !878), !dbg !1744
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1745, metadata !878), !dbg !1746
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1747, metadata !878), !dbg !1748
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1749, metadata !878), !dbg !1750
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1751, metadata !878), !dbg !1752
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1753, metadata !878), !dbg !1754
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1755, metadata !878), !dbg !1756
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1757, metadata !878), !dbg !1758
  br label %11, !dbg !1759, !llvm.loop !1760

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %4, align 8, !dbg !1761
  %13 = icmp ne i8* %12, null, !dbg !1765
  br i1 %13, label %14, label %15, !dbg !1761

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !1766

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.event_whowas, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0)), !dbg !1769
  br label %36, !dbg !1772

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !1773

; <label>:17:                                     ; preds = %16
  %18 = load i8*, i8** %4, align 8, !dbg !1775
  %19 = call i8* (i8*, i32, ...) @event_get_params(i8* %18, i32 6, i8* null, i8** %6, i8** %7, i8** %8, i8* null, i8** %9), !dbg !1776
  store i8* %19, i8** %5, align 8, !dbg !1777
  %20 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1778
  %21 = bitcast %struct._IRC_SERVER_REC* %20 to i8*, !dbg !1778
  %22 = call i8* @module_check_cast(i8* %21, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0)), !dbg !1779
  %23 = bitcast i8* %22 to %struct._SERVER_REC*, !dbg !1780
  %24 = load i8*, i8** %9, align 8, !dbg !1781
  %25 = load i8*, i8** %6, align 8, !dbg !1782
  %26 = call i8* @recode_in(%struct._SERVER_REC* %23, i8* %24, i8* %25), !dbg !1783
  store i8* %26, i8** %10, align 8, !dbg !1785
  %27 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1786
  %28 = bitcast %struct._IRC_SERVER_REC* %27 to i8*, !dbg !1786
  %29 = load i8*, i8** %6, align 8, !dbg !1787
  %30 = load i8*, i8** %6, align 8, !dbg !1788
  %31 = load i8*, i8** %7, align 8, !dbg !1789
  %32 = load i8*, i8** %8, align 8, !dbg !1790
  %33 = load i8*, i8** %10, align 8, !dbg !1791
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %28, i8* %29, i32 1, i32 70, i8* %30, i8* %31, i8* %32, i8* %33), !dbg !1792
  %34 = load i8*, i8** %5, align 8, !dbg !1793
  call void @g_free(i8* %34), !dbg !1794
  %35 = load i8*, i8** %10, align 8, !dbg !1795
  call void @g_free(i8* %35), !dbg !1796
  br label %36, !dbg !1797

; <label>:36:                                     ; preds = %17, %15
  ret void, !dbg !1798
}

; Function Attrs: nounwind uwtable
define internal void @event_end_of_whowas(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1799 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1800, metadata !878), !dbg !1801
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1802, metadata !878), !dbg !1803
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1804, metadata !878), !dbg !1805
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1806, metadata !878), !dbg !1807
  br label %7, !dbg !1808, !llvm.loop !1809

; <label>:7:                                      ; preds = %2
  %8 = load i8*, i8** %4, align 8, !dbg !1810
  %9 = icmp ne i8* %8, null, !dbg !1814
  br i1 %9, label %10, label %11, !dbg !1810

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !1815

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.event_end_of_whowas, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0)), !dbg !1818
  br label %30, !dbg !1821

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !1822

; <label>:13:                                     ; preds = %12
  %14 = load i8*, i8** %4, align 8, !dbg !1824
  %15 = call i8* (i8*, i32, ...) @event_get_params(i8* %14, i32 2, i8* null, i8** %6), !dbg !1825
  store i8* %15, i8** %5, align 8, !dbg !1826
  %16 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1827
  %17 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %16, i32 0, i32 45, !dbg !1829
  %18 = load i16, i16* %17, align 4, !dbg !1829
  %19 = lshr i16 %18, 1, !dbg !1829
  %20 = and i16 %19, 1, !dbg !1829
  %21 = zext i16 %20 to i32, !dbg !1829
  %22 = icmp ne i32 %21, 0, !dbg !1827
  br i1 %22, label %23, label %28, !dbg !1830

; <label>:23:                                     ; preds = %13
  %24 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1831
  %25 = bitcast %struct._IRC_SERVER_REC* %24 to i8*, !dbg !1831
  %26 = load i8*, i8** %6, align 8, !dbg !1833
  %27 = load i8*, i8** %6, align 8, !dbg !1834
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %25, i8* %26, i32 1, i32 83, i8* %27), !dbg !1835
  br label %28, !dbg !1836

; <label>:28:                                     ; preds = %23, %13
  %29 = load i8*, i8** %5, align 8, !dbg !1837
  call void @g_free(i8* %29), !dbg !1838
  br label %30, !dbg !1839

; <label>:30:                                     ; preds = %28, %11
  ret void, !dbg !1840
}

; Function Attrs: nounwind uwtable
define void @fe_whois_deinit() #0 !dbg !1842 {
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whois to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1843
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_server to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1844
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_idle to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1845
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_channels to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1846
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_oper to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1847
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_auth to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1848
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_usermode to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1849
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_realhost to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1850
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_modes to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1851
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_realhost327 to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1852
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_usermode326 to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1853
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_realhost338 to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1854
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_away to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1855
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_oper to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1856
  call void @signal_remove_full(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_away to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1857
  call void @signal_remove_full(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whois_default to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1858
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_end_of_whois to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1859
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_whowas to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1860
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_end_of_whowas to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1861
  ret void, !dbg !1862
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @event_get_params(i8*, i32, ...) #1

declare i8* @recode_in(%struct._SERVER_REC*, i8*, i8*) #1

declare i8* @module_check_cast(i8*, i32, i8*) #1

declare void @printformat_module(i8*, i8*, i8*, i32, i32, ...) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind readonly
declare i64 @atol(i8*) #3

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #3

declare i8* @my_asctime(i64) #1

declare i8* @show_lowascii(i8*) #1

declare i32 @settings_get_bool(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @hide_safe_channel_id(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1863 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1866, metadata !878), !dbg !1867
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1868, metadata !878), !dbg !1869
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1870, metadata !878), !dbg !1871
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1872, metadata !878), !dbg !1873
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1874, metadata !878), !dbg !1875
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1876, metadata !878), !dbg !1877
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1878, metadata !878), !dbg !1879
  call void @llvm.dbg.declare(metadata i8* %10, metadata !1880, metadata !878), !dbg !1881
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1882, metadata !878), !dbg !1883
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1884, metadata !878), !dbg !1885
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1886, metadata !878), !dbg !1887
  %14 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1888
  %15 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %14, i32 0, i32 45, !dbg !1890
  %16 = load i16, i16* %15, align 4, !dbg !1890
  %17 = lshr i16 %16, 9, !dbg !1890
  %18 = and i16 %17, 1, !dbg !1890
  %19 = zext i16 %18 to i32, !dbg !1890
  %20 = icmp ne i32 %19, 0, !dbg !1888
  br i1 %20, label %22, label %21, !dbg !1891

; <label>:21:                                     ; preds = %2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i8** %5, align 8, !dbg !1892
  br label %31, !dbg !1893

; <label>:22:                                     ; preds = %2
  %23 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1894
  %24 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %23, i32 0, i32 69, !dbg !1896
  %25 = load %struct._GHashTable*, %struct._GHashTable** %24, align 8, !dbg !1896
  %26 = call i8* @g_hash_table_lookup(%struct._GHashTable* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)), !dbg !1897
  store i8* %26, i8** %5, align 8, !dbg !1898
  %27 = load i8*, i8** %5, align 8, !dbg !1899
  %28 = icmp eq i8* %27, null, !dbg !1901
  br i1 %28, label %29, label %30, !dbg !1902

; <label>:29:                                     ; preds = %22
  br label %129, !dbg !1903

; <label>:30:                                     ; preds = %22
  br label %31

; <label>:31:                                     ; preds = %30, %21
  %32 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1904
  %33 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %32, i32 0, i32 28, !dbg !1905
  %34 = load i8* (%struct._SERVER_REC*)*, i8* (%struct._SERVER_REC*)** %33, align 8, !dbg !1905
  %35 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1906
  %36 = bitcast %struct._IRC_SERVER_REC* %35 to i8*, !dbg !1906
  %37 = call i8* @module_check_cast(i8* %36, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0)), !dbg !1907
  %38 = bitcast i8* %37 to %struct._SERVER_REC*, !dbg !1908
  %39 = call i8* %34(%struct._SERVER_REC* %38), !dbg !1909
  store i8* %39, i8** %6, align 8, !dbg !1911
  br label %40, !dbg !1912

; <label>:40:                                     ; preds = %127, %31
  %41 = load i8*, i8** %5, align 8, !dbg !1913
  %42 = load i8, i8* %41, align 1, !dbg !1914
  %43 = sext i8 %42 to i32, !dbg !1914
  %44 = icmp ne i32 %43, 0, !dbg !1915
  br i1 %44, label %45, label %129, !dbg !1916

; <label>:45:                                     ; preds = %40
  %46 = load i8*, i8** %5, align 8, !dbg !1917
  %47 = load i8, i8* %46, align 1, !dbg !1919
  store i8 %47, i8* %10, align 1, !dbg !1920
  %48 = load i8*, i8** %5, align 8, !dbg !1921
  %49 = getelementptr inbounds i8, i8* %48, i64 1, !dbg !1921
  %50 = load i8, i8* %49, align 1, !dbg !1921
  %51 = sext i8 %50 to i32, !dbg !1921
  %52 = icmp ne i32 %51, 58, !dbg !1923
  br i1 %52, label %53, label %54, !dbg !1924

; <label>:53:                                     ; preds = %45
  br label %129, !dbg !1925

; <label>:54:                                     ; preds = %45
  %55 = load i8*, i8** %5, align 8, !dbg !1926
  %56 = getelementptr inbounds i8, i8* %55, i64 2, !dbg !1927
  %57 = call i64 @strtoul(i8* %56, i8** %9, i32 10) #6, !dbg !1928
  %58 = trunc i64 %57 to i32, !dbg !1928
  store i32 %58, i32* %12, align 4, !dbg !1929
  %59 = load i8*, i8** %9, align 8, !dbg !1930
  %60 = load i8, i8* %59, align 1, !dbg !1932
  %61 = sext i8 %60 to i32, !dbg !1932
  %62 = icmp eq i32 %61, 44, !dbg !1933
  br i1 %62, label %63, label %66, !dbg !1934

; <label>:63:                                     ; preds = %54
  %64 = load i8*, i8** %9, align 8, !dbg !1935
  %65 = getelementptr inbounds i8, i8* %64, i32 1, !dbg !1935
  store i8* %65, i8** %9, align 8, !dbg !1935
  br label %73, !dbg !1936

; <label>:66:                                     ; preds = %54
  %67 = load i8*, i8** %9, align 8, !dbg !1937
  %68 = load i8, i8* %67, align 1, !dbg !1939
  %69 = sext i8 %68 to i32, !dbg !1939
  %70 = icmp ne i32 %69, 0, !dbg !1940
  br i1 %70, label %71, label %72, !dbg !1941

; <label>:71:                                     ; preds = %66
  br label %129, !dbg !1942

; <label>:72:                                     ; preds = %66
  br label %73

; <label>:73:                                     ; preds = %72, %63
  %74 = load i8*, i8** %9, align 8, !dbg !1943
  store i8* %74, i8** %5, align 8, !dbg !1944
  store i32 0, i32* %11, align 4, !dbg !1945
  store i32 1, i32* %13, align 4, !dbg !1946
  %75 = load i8*, i8** %4, align 8, !dbg !1947
  store i8* %75, i8** %7, align 8, !dbg !1949
  store i8* %75, i8** %8, align 8, !dbg !1950
  br label %76, !dbg !1951

; <label>:76:                                     ; preds = %124, %73
  %77 = load i8*, i8** %7, align 8, !dbg !1952
  %78 = load i8, i8* %77, align 1, !dbg !1955
  %79 = sext i8 %78 to i32, !dbg !1955
  %80 = icmp ne i32 %79, 0, !dbg !1956
  br i1 %80, label %81, label %127, !dbg !1957

; <label>:81:                                     ; preds = %76
  %82 = load i32, i32* %11, align 4, !dbg !1958
  %83 = icmp sgt i32 %82, 0, !dbg !1961
  br i1 %83, label %84, label %87, !dbg !1962

; <label>:84:                                     ; preds = %81
  %85 = load i32, i32* %11, align 4, !dbg !1963
  %86 = add nsw i32 %85, -1, !dbg !1963
  store i32 %86, i32* %11, align 4, !dbg !1963
  br label %123, !dbg !1964

; <label>:87:                                     ; preds = %81
  %88 = load i8*, i8** %7, align 8, !dbg !1965
  %89 = load i8, i8* %88, align 1, !dbg !1968
  %90 = sext i8 %89 to i32, !dbg !1968
  %91 = icmp eq i32 %90, 32, !dbg !1969
  br i1 %91, label %92, label %93, !dbg !1970

; <label>:92:                                     ; preds = %87
  store i32 1, i32* %13, align 4, !dbg !1971
  br label %118, !dbg !1972

; <label>:93:                                     ; preds = %87
  %94 = load i32, i32* %13, align 4, !dbg !1973
  %95 = icmp ne i32 %94, 0, !dbg !1973
  br i1 %95, label %96, label %105, !dbg !1976

; <label>:96:                                     ; preds = %93
  %97 = load i8*, i8** %7, align 8, !dbg !1977
  %98 = load i8, i8* %97, align 1, !dbg !1979
  %99 = sext i8 %98 to i32, !dbg !1979
  %100 = load i8, i8* %10, align 1, !dbg !1980
  %101 = sext i8 %100 to i32, !dbg !1980
  %102 = icmp eq i32 %99, %101, !dbg !1981
  br i1 %102, label %103, label %105, !dbg !1982

; <label>:103:                                    ; preds = %96
  %104 = load i32, i32* %12, align 4, !dbg !1983
  store i32 %104, i32* %11, align 4, !dbg !1984
  br label %105, !dbg !1985

; <label>:105:                                    ; preds = %103, %96, %93
  %106 = load i32, i32* %13, align 4, !dbg !1986
  %107 = icmp ne i32 %106, 0, !dbg !1986
  br i1 %107, label %108, label %115, !dbg !1987

; <label>:108:                                    ; preds = %105
  %109 = load i8*, i8** %6, align 8, !dbg !1988
  %110 = load i8*, i8** %7, align 8, !dbg !1990
  %111 = load i8, i8* %110, align 1, !dbg !1991
  %112 = sext i8 %111 to i32, !dbg !1991
  %113 = call i8* @strchr(i8* %109, i32 %112) #5, !dbg !1992
  %114 = icmp ne i8* %113, null, !dbg !1993
  br label %115

; <label>:115:                                    ; preds = %108, %105
  %116 = phi i1 [ false, %105 ], [ %114, %108 ]
  %117 = zext i1 %116 to i32, !dbg !1994
  store i32 %117, i32* %13, align 4, !dbg !1996
  br label %118

; <label>:118:                                    ; preds = %115, %92
  %119 = load i8*, i8** %7, align 8, !dbg !1997
  %120 = load i8, i8* %119, align 1, !dbg !1998
  %121 = load i8*, i8** %8, align 8, !dbg !1999
  %122 = getelementptr inbounds i8, i8* %121, i32 1, !dbg !1999
  store i8* %122, i8** %8, align 8, !dbg !1999
  store i8 %120, i8* %121, align 1, !dbg !2000
  br label %123

; <label>:123:                                    ; preds = %118, %84
  br label %124, !dbg !2001

; <label>:124:                                    ; preds = %123
  %125 = load i8*, i8** %7, align 8, !dbg !2002
  %126 = getelementptr inbounds i8, i8* %125, i32 1, !dbg !2002
  store i8* %126, i8** %7, align 8, !dbg !2002
  br label %76, !dbg !2004, !llvm.loop !2005

; <label>:127:                                    ; preds = %76
  %128 = load i8*, i8** %8, align 8, !dbg !2007
  store i8 0, i8* %128, align 1, !dbg !2008
  br label %40, !dbg !2009, !llvm.loop !2011

; <label>:129:                                    ; preds = %29, %53, %71, %40
  ret void, !dbg !2012
}

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

; Function Attrs: nounwind
declare i64 @strtoul(i8*, i8**, i32) #4

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

declare i32 @g_strcmp0(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @event_whois_special(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !2013 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !2014, metadata !878), !dbg !2015
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2016, metadata !878), !dbg !2017
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2018, metadata !878), !dbg !2019
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2020, metadata !878), !dbg !2021
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2022, metadata !878), !dbg !2023
  br label %8, !dbg !2024, !llvm.loop !2025

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %4, align 8, !dbg !2026
  %10 = icmp ne i8* %9, null, !dbg !2030
  br i1 %10, label %11, label %12, !dbg !2026

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !2031

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.event_whois_special, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0)), !dbg !2034
  br label %23, !dbg !2037

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !2038

; <label>:14:                                     ; preds = %13
  %15 = load i8*, i8** %4, align 8, !dbg !2040
  %16 = call i8* (i8*, i32, ...) @event_get_params(i8* %15, i32 8195, i8* null, i8** %6, i8** %7), !dbg !2041
  store i8* %16, i8** %5, align 8, !dbg !2042
  %17 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2043
  %18 = bitcast %struct._IRC_SERVER_REC* %17 to i8*, !dbg !2043
  %19 = load i8*, i8** %6, align 8, !dbg !2044
  %20 = load i8*, i8** %6, align 8, !dbg !2045
  %21 = load i8*, i8** %7, align 8, !dbg !2046
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %18, i8* %19, i32 1, i32 80, i8* %20, i8* %21), !dbg !2047
  %22 = load i8*, i8** %5, align 8, !dbg !2048
  call void @g_free(i8* %22), !dbg !2049
  br label %23, !dbg !2050

; <label>:23:                                     ; preds = %14, %12
  ret void, !dbg !2051
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!850, !851}
!llvm.ident = !{!852}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !192, globals: !629)
!1 = !DIFile(filename: "line324-fe-whois.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10, !15, !24, !35, !66}
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
!192 = !{!193, !200, !201, !205, !207, !449}
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !194, line: 9, baseType: !195)
!194 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !198, !198, !198, !198, !198, !198}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !203, line: 46, baseType: !204)
!203 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!204 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !209, line: 107, baseType: !210)
!209 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !211, line: 30, size: 2240, align: 64, elements: !212)
!211 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!212 = !{!213, !216, !217, !218, !448, !453, !454, !455, !456, !457, !458, !459, !460, !461, !465, !466, !470, !471, !472, !476, !481, !482, !483, !484, !485, !486, !487, !488, !495, !496, !497, !498, !499, !503, !507, !511, !515, !519, !524, !617, !624, !628}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !210, file: !214, line: 3, baseType: !215, size: 32, align: 32)
!214 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!215 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !210, file: !214, line: 4, baseType: !215, size: 32, align: 32, offset: 32)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !210, file: !214, line: 6, baseType: !215, size: 32, align: 32, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !210, file: !214, line: 8, baseType: !219, size: 64, align: 64, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64, align: 64)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !209, line: 113, baseType: !221)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !211, line: 25, size: 1920, align: 64, elements: !222)
!222 = !{!223, !225, !226, !227, !229, !230, !231, !232, !233, !235, !236, !237, !238, !239, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !221, file: !224, line: 3, baseType: !215, size: 32, align: 32)
!224 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!225 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !221, file: !224, line: 4, baseType: !215, size: 32, align: 32, offset: 32)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !221, file: !224, line: 6, baseType: !215, size: 32, align: 32, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !221, file: !224, line: 9, baseType: !228, size: 64, align: 64, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !221, file: !224, line: 10, baseType: !215, size: 32, align: 32, offset: 192)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !221, file: !224, line: 11, baseType: !228, size: 64, align: 64, offset: 256)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !221, file: !224, line: 11, baseType: !228, size: 64, align: 64, offset: 320)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !221, file: !224, line: 11, baseType: !228, size: 64, align: 64, offset: 384)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !221, file: !224, line: 13, baseType: !234, size: 16, align: 16, offset: 448)
!234 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !221, file: !224, line: 14, baseType: !228, size: 64, align: 64, offset: 512)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !221, file: !224, line: 15, baseType: !228, size: 64, align: 64, offset: 576)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !221, file: !224, line: 16, baseType: !215, size: 32, align: 32, offset: 640)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !221, file: !224, line: 17, baseType: !228, size: 64, align: 64, offset: 704)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !221, file: !224, line: 19, baseType: !240, size: 64, align: 64, offset: 768)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !209, line: 99, baseType: !242)
!242 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !209, line: 99, flags: DIFlagFwdDecl)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !221, file: !224, line: 19, baseType: !240, size: 64, align: 64, offset: 832)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !221, file: !224, line: 21, baseType: !228, size: 64, align: 64, offset: 896)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !221, file: !224, line: 22, baseType: !228, size: 64, align: 64, offset: 960)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !221, file: !224, line: 23, baseType: !228, size: 64, align: 64, offset: 1024)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !221, file: !224, line: 24, baseType: !228, size: 64, align: 64, offset: 1088)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !221, file: !224, line: 26, baseType: !228, size: 64, align: 64, offset: 1152)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !221, file: !224, line: 27, baseType: !228, size: 64, align: 64, offset: 1216)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !221, file: !224, line: 28, baseType: !228, size: 64, align: 64, offset: 1280)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !221, file: !224, line: 29, baseType: !228, size: 64, align: 64, offset: 1344)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !221, file: !224, line: 30, baseType: !228, size: 64, align: 64, offset: 1408)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !221, file: !224, line: 31, baseType: !228, size: 64, align: 64, offset: 1472)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !221, file: !224, line: 32, baseType: !228, size: 64, align: 64, offset: 1536)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !221, file: !224, line: 33, baseType: !228, size: 64, align: 64, offset: 1600)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !221, file: !224, line: 35, baseType: !257, size: 64, align: 64, offset: 1664)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64, align: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !259)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !260)
!260 = !{!261, !263, !405, !406, !411, !412, !413, !414, !415, !424, !425, !426, !430, !431, !432, !433, !434, !435, !436, !437}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !259, file: !4, line: 100, baseType: !262, size: 32, align: 32)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !203, line: 49, baseType: !215)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !259, file: !4, line: 101, baseType: !264, size: 64, align: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !266)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !267)
!267 = !{!268, !290, !296, !303, !307, !392, !396, !401}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !266, file: !4, line: 133, baseType: !269, size: 64, align: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64, align: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!272, !257, !201, !273, !276, !277}
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !274, line: 66, baseType: !275)
!274 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!275 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64, align: 64)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64, align: 64)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !280, line: 42, baseType: !281)
!280 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !280, line: 44, size: 128, align: 64, elements: !282)
!282 = !{!283, !288, !289}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !281, file: !280, line: 46, baseType: !284, size: 32, align: 32)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !285, line: 36, baseType: !286)
!285 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !274, line: 45, baseType: !287)
!287 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !281, file: !280, line: 47, baseType: !262, size: 32, align: 32, offset: 32)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !281, file: !280, line: 48, baseType: !201, size: 64, align: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !266, file: !4, line: 138, baseType: !291, size: 64, align: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64, align: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!272, !257, !294, !273, !276, !277}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64, align: 64)
!295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !266, file: !4, line: 143, baseType: !297, size: 64, align: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64, align: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{!272, !257, !300, !302, !277}
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !274, line: 51, baseType: !301)
!301 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !266, file: !4, line: 147, baseType: !304, size: 64, align: 64, offset: 192)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!272, !257, !277}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !266, file: !4, line: 149, baseType: !308, size: 64, align: 64, offset: 256)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64, align: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!311, !257, !391}
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !313)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !314)
!314 = !{!315, !317, !338, !367, !369, !373, !374, !375, !376, !384, !385, !386, !387}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !313, file: !16, line: 174, baseType: !316, size: 64, align: 64)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !203, line: 77, baseType: !200)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !313, file: !16, line: 175, baseType: !318, size: 64, align: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64, align: 64)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !320)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !321)
!321 = !{!322, !326, !327}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !320, file: !16, line: 198, baseType: !323, size: 64, align: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64, align: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{null, !316}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !320, file: !16, line: 199, baseType: !323, size: 64, align: 64, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !320, file: !16, line: 200, baseType: !328, size: 64, align: 64, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64, align: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !316, !311, !331, !337}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64, align: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!336, !316}
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !203, line: 50, baseType: !262)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64, align: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !313, file: !16, line: 177, baseType: !339, size: 64, align: 64, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64, align: 64)
!340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !342)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !343)
!343 = !{!344, !349, !353, !357, !361, !362}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !342, file: !16, line: 216, baseType: !345, size: 64, align: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64, align: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{!336, !311, !348}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64, align: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !342, file: !16, line: 218, baseType: !350, size: 64, align: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, align: 64)
!351 = !DISubroutineType(types: !352)
!352 = !{!336, !311}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !342, file: !16, line: 219, baseType: !354, size: 64, align: 64, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64, align: 64)
!355 = !DISubroutineType(types: !356)
!356 = !{!336, !311, !332, !316}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !342, file: !16, line: 222, baseType: !358, size: 64, align: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !311}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !342, file: !16, line: 226, baseType: !332, size: 64, align: 64, offset: 256)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !342, file: !16, line: 227, baseType: !363, size: 64, align: 64, offset: 320)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64, align: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{null}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !313, file: !16, line: 178, baseType: !368, size: 32, align: 32, offset: 192)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !203, line: 55, baseType: !287)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !313, file: !16, line: 180, baseType: !370, size: 64, align: 64, offset: 256)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64, align: 64)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !372)
!372 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !313, file: !16, line: 182, baseType: !262, size: 32, align: 32, offset: 320)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !313, file: !16, line: 183, baseType: !368, size: 32, align: 32, offset: 352)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !313, file: !16, line: 184, baseType: !368, size: 32, align: 32, offset: 384)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !313, file: !16, line: 186, baseType: !377, size: 64, align: 64, offset: 448)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64, align: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !379, line: 37, baseType: !380)
!379 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !379, line: 39, size: 128, align: 64, elements: !381)
!381 = !{!382, !383}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !380, file: !379, line: 41, baseType: !316, size: 64, align: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !380, file: !379, line: 42, baseType: !377, size: 64, align: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !313, file: !16, line: 188, baseType: !311, size: 64, align: 64, offset: 512)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !313, file: !16, line: 189, baseType: !311, size: 64, align: 64, offset: 576)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !313, file: !16, line: 191, baseType: !228, size: 64, align: 64, offset: 640)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !313, file: !16, line: 193, baseType: !388, size: 64, align: 64, offset: 704)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64, align: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !390)
!390 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !266, file: !4, line: 151, baseType: !393, size: 64, align: 64, offset: 320)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64, align: 64)
!394 = !DISubroutineType(types: !395)
!395 = !{null, !257}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !266, file: !4, line: 152, baseType: !397, size: 64, align: 64, offset: 384)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64, align: 64)
!398 = !DISubroutineType(types: !399)
!399 = !{!272, !257, !400, !277}
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !266, file: !4, line: 155, baseType: !402, size: 64, align: 64, offset: 448)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64, align: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{!400, !257}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !259, file: !4, line: 103, baseType: !201, size: 64, align: 64, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !259, file: !4, line: 104, baseType: !407, size: 64, align: 64, offset: 192)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !408, line: 77, baseType: !409)
!408 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64, align: 64)
!410 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !408, line: 77, flags: DIFlagFwdDecl)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !259, file: !4, line: 105, baseType: !407, size: 64, align: 64, offset: 256)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !259, file: !4, line: 106, baseType: !201, size: 64, align: 64, offset: 320)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !259, file: !4, line: 107, baseType: !368, size: 32, align: 32, offset: 384)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !259, file: !4, line: 109, baseType: !273, size: 64, align: 64, offset: 448)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !259, file: !4, line: 110, baseType: !416, size: 64, align: 64, offset: 512)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64, align: 64)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !418, line: 39, baseType: !419)
!418 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !418, line: 41, size: 192, align: 64, elements: !420)
!420 = !{!421, !422, !423}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !419, file: !418, line: 43, baseType: !201, size: 64, align: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !419, file: !418, line: 44, baseType: !273, size: 64, align: 64, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !419, file: !418, line: 45, baseType: !273, size: 64, align: 64, offset: 128)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !259, file: !4, line: 111, baseType: !416, size: 64, align: 64, offset: 576)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !259, file: !4, line: 112, baseType: !416, size: 64, align: 64, offset: 640)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !259, file: !4, line: 113, baseType: !427, size: 48, align: 8, offset: 704)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 48, align: 8, elements: !428)
!428 = !{!429}
!429 = !DISubrange(count: 6)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !259, file: !4, line: 117, baseType: !368, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !259, file: !4, line: 118, baseType: !368, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !259, file: !4, line: 119, baseType: !368, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !259, file: !4, line: 120, baseType: !368, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !259, file: !4, line: 121, baseType: !368, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !259, file: !4, line: 122, baseType: !368, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !259, file: !4, line: 124, baseType: !316, size: 64, align: 64, offset: 768)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !259, file: !4, line: 125, baseType: !316, size: 64, align: 64, offset: 832)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !221, file: !224, line: 38, baseType: !287, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !221, file: !224, line: 39, baseType: !287, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !221, file: !224, line: 40, baseType: !287, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !221, file: !224, line: 41, baseType: !287, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !221, file: !224, line: 42, baseType: !287, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !221, file: !224, line: 43, baseType: !287, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !221, file: !224, line: 44, baseType: !287, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !221, file: !224, line: 45, baseType: !287, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !221, file: !224, line: 46, baseType: !228, size: 64, align: 64, offset: 1792)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !221, file: !224, line: 47, baseType: !228, size: 64, align: 64, offset: 1856)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !210, file: !214, line: 9, baseType: !449, size: 64, align: 64, offset: 192)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !450, line: 75, baseType: !451)
!450 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !452, line: 139, baseType: !301)
!452 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!453 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !210, file: !214, line: 10, baseType: !449, size: 64, align: 64, offset: 256)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !210, file: !214, line: 12, baseType: !228, size: 64, align: 64, offset: 320)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !210, file: !214, line: 13, baseType: !228, size: 64, align: 64, offset: 384)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !210, file: !214, line: 15, baseType: !287, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !210, file: !214, line: 16, baseType: !287, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !210, file: !214, line: 17, baseType: !287, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !210, file: !214, line: 18, baseType: !287, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !210, file: !214, line: 19, baseType: !287, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !210, file: !214, line: 21, baseType: !462, size: 64, align: 64, offset: 512)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64, align: 64)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !209, line: 102, baseType: !464)
!464 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !209, line: 102, flags: DIFlagFwdDecl)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !210, file: !214, line: 22, baseType: !215, size: 32, align: 32, offset: 576)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !210, file: !214, line: 25, baseType: !467, size: 128, align: 64, offset: 640)
!467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 128, align: 64, elements: !468)
!468 = !{!469}
!469 = !DISubrange(count: 2)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !210, file: !214, line: 26, baseType: !215, size: 32, align: 32, offset: 768)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !210, file: !214, line: 27, baseType: !215, size: 32, align: 32, offset: 800)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !210, file: !214, line: 29, baseType: !473, size: 64, align: 64, offset: 832)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64, align: 64)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !209, line: 103, baseType: !475)
!475 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !209, line: 103, flags: DIFlagFwdDecl)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !210, file: !214, line: 30, baseType: !477, size: 64, align: 64, offset: 896)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64, align: 64)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !479, line: 37, baseType: !480)
!479 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!480 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !479, line: 37, flags: DIFlagFwdDecl)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !210, file: !214, line: 32, baseType: !228, size: 64, align: 64, offset: 960)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !210, file: !214, line: 33, baseType: !228, size: 64, align: 64, offset: 1024)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !210, file: !214, line: 34, baseType: !228, size: 64, align: 64, offset: 1088)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !210, file: !214, line: 35, baseType: !287, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !210, file: !214, line: 36, baseType: !287, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !210, file: !214, line: 37, baseType: !287, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !210, file: !214, line: 38, baseType: !287, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !210, file: !214, line: 40, baseType: !489, size: 128, align: 64, offset: 1216)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !203, line: 504, baseType: !490)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !203, line: 506, size: 128, align: 64, elements: !491)
!491 = !{!492, !494}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !490, file: !203, line: 508, baseType: !493, size: 64, align: 64)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !203, line: 48, baseType: !301)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !490, file: !203, line: 509, baseType: !493, size: 64, align: 64, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !210, file: !214, line: 41, baseType: !449, size: 64, align: 64, offset: 1344)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !210, file: !214, line: 42, baseType: !215, size: 32, align: 32, offset: 1408)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !210, file: !214, line: 44, baseType: !377, size: 64, align: 64, offset: 1472)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !210, file: !214, line: 45, baseType: !377, size: 64, align: 64, offset: 1536)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !210, file: !214, line: 53, baseType: !500, size: 64, align: 64, offset: 1600)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64, align: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{null, !207, !205, !215}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !210, file: !214, line: 55, baseType: !504, size: 64, align: 64, offset: 1664)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64, align: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!215, !207, !204}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !210, file: !214, line: 57, baseType: !508, size: 64, align: 64, offset: 1728)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64, align: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!215, !207, !205}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !210, file: !214, line: 60, baseType: !512, size: 64, align: 64, offset: 1792)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64, align: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!205, !207}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !210, file: !214, line: 62, baseType: !516, size: 64, align: 64, offset: 1856)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64, align: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{null, !207, !205, !205, !215}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !210, file: !214, line: 65, baseType: !520, size: 64, align: 64, offset: 1920)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64, align: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!523, !207, !205, !205}
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64, align: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !210, file: !214, line: 69, baseType: !525, size: 64, align: 64, offset: 1984)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64, align: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!528, !207, !205}
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64, align: 64)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !209, line: 109, baseType: !530)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !531, line: 15, size: 1408, align: 64, elements: !532)
!531 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!532 = !{!533, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !568, !569, !571, !572, !573, !574, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !530, file: !534, line: 3, baseType: !215, size: 32, align: 32)
!534 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!535 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !530, file: !534, line: 4, baseType: !215, size: 32, align: 32, offset: 32)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !530, file: !534, line: 5, baseType: !477, size: 64, align: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !530, file: !534, line: 7, baseType: !200, size: 64, align: 64, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !530, file: !534, line: 8, baseType: !207, size: 64, align: 64, offset: 192)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !530, file: !534, line: 9, baseType: !228, size: 64, align: 64, offset: 256)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !530, file: !534, line: 10, baseType: !228, size: 64, align: 64, offset: 320)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !530, file: !534, line: 11, baseType: !449, size: 64, align: 64, offset: 384)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !530, file: !534, line: 12, baseType: !215, size: 32, align: 32, offset: 448)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !530, file: !534, line: 13, baseType: !228, size: 64, align: 64, offset: 512)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !530, file: !534, line: 15, baseType: !545, size: 64, align: 64, offset: 576)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64, align: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{null, !548}
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64, align: 64)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !209, line: 108, baseType: !550)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !551, line: 5, size: 704, align: 64, elements: !552)
!551 = !DIFile(filename: "../../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!552 = !{!553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !550, file: !534, line: 3, baseType: !215, size: 32, align: 32)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !550, file: !534, line: 4, baseType: !215, size: 32, align: 32, offset: 32)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !550, file: !534, line: 5, baseType: !477, size: 64, align: 64, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !550, file: !534, line: 7, baseType: !200, size: 64, align: 64, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !550, file: !534, line: 8, baseType: !207, size: 64, align: 64, offset: 192)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !550, file: !534, line: 9, baseType: !228, size: 64, align: 64, offset: 256)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !550, file: !534, line: 10, baseType: !228, size: 64, align: 64, offset: 320)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !550, file: !534, line: 11, baseType: !449, size: 64, align: 64, offset: 384)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !550, file: !534, line: 12, baseType: !215, size: 32, align: 32, offset: 448)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !550, file: !534, line: 13, baseType: !228, size: 64, align: 64, offset: 512)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !550, file: !534, line: 15, baseType: !545, size: 64, align: 64, offset: 576)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !550, file: !534, line: 17, baseType: !565, size: 64, align: 64, offset: 640)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64, align: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{!205, !548}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !530, file: !534, line: 17, baseType: !565, size: 64, align: 64, offset: 640)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !530, file: !570, line: 5, baseType: !228, size: 64, align: 64, offset: 704)
!570 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!571 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !530, file: !570, line: 6, baseType: !228, size: 64, align: 64, offset: 768)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !530, file: !570, line: 7, baseType: !449, size: 64, align: 64, offset: 832)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !530, file: !570, line: 9, baseType: !477, size: 64, align: 64, offset: 896)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !530, file: !570, line: 10, baseType: !575, size: 64, align: 64, offset: 960)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64, align: 64)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !209, line: 111, baseType: !577)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !578, line: 13, size: 576, align: 64, elements: !579)
!578 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!579 = !{!580, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !598, !599}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !577, file: !581, line: 3, baseType: !215, size: 32, align: 32)
!581 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!582 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !577, file: !581, line: 4, baseType: !215, size: 32, align: 32, offset: 32)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !577, file: !581, line: 6, baseType: !449, size: 64, align: 64, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !577, file: !581, line: 8, baseType: !228, size: 64, align: 64, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !577, file: !581, line: 9, baseType: !228, size: 64, align: 64, offset: 192)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !577, file: !581, line: 10, baseType: !228, size: 64, align: 64, offset: 256)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !577, file: !581, line: 11, baseType: !215, size: 32, align: 32, offset: 320)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !577, file: !581, line: 14, baseType: !287, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !577, file: !581, line: 15, baseType: !287, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !577, file: !581, line: 18, baseType: !287, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !577, file: !581, line: 19, baseType: !287, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !577, file: !581, line: 20, baseType: !287, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !577, file: !581, line: 21, baseType: !287, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !577, file: !581, line: 22, baseType: !595, size: 64, align: 8, offset: 360)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 64, align: 8, elements: !596)
!596 = !{!597}
!597 = !DISubrange(count: 8)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !577, file: !581, line: 26, baseType: !200, size: 64, align: 64, offset: 448)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !577, file: !581, line: 28, baseType: !575, size: 64, align: 64, offset: 512)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !530, file: !570, line: 12, baseType: !287, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !530, file: !570, line: 13, baseType: !228, size: 64, align: 64, offset: 1088)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !530, file: !570, line: 14, baseType: !215, size: 32, align: 32, offset: 1152)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !530, file: !570, line: 15, baseType: !228, size: 64, align: 64, offset: 1216)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !530, file: !570, line: 17, baseType: !287, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !530, file: !570, line: 18, baseType: !287, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !530, file: !570, line: 19, baseType: !287, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !530, file: !570, line: 20, baseType: !287, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !530, file: !570, line: 22, baseType: !287, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !530, file: !570, line: 23, baseType: !287, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !530, file: !570, line: 24, baseType: !287, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !530, file: !570, line: 25, baseType: !287, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !530, file: !570, line: 26, baseType: !287, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !530, file: !570, line: 31, baseType: !614, size: 64, align: 64, offset: 1344)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64, align: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{!228, !528}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !210, file: !214, line: 70, baseType: !618, size: 64, align: 64, offset: 2048)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64, align: 64)
!619 = !DISubroutineType(types: !620)
!620 = !{!621, !207, !205}
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64, align: 64)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !209, line: 110, baseType: !623)
!623 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !209, line: 110, flags: DIFlagFwdDecl)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !210, file: !214, line: 71, baseType: !625, size: 64, align: 64, offset: 2112)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64, align: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!215, !205, !205}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !210, file: !214, line: 73, baseType: !625, size: 64, align: 64, offset: 2176)
!629 = !{!630}
!630 = distinct !DIGlobalVariable(name: "events", scope: !0, file: !631, line: 377, type: !632, isLocal: true, isDefinition: true, variable: [11 x %struct.whois_event_table]* @events)
!631 = !DIFile(filename: "fe-whois.c", directory: "/home/lichi/Desktop/irssi/task1")
!632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !633, size: 1408, align: 64, elements: !848)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "whois_event_table", file: !631, line: 372, size: 128, align: 64, elements: !634)
!634 = !{!635, !636}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !633, file: !631, line: 373, baseType: !215, size: 32, align: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !633, file: !631, line: 374, baseType: !637, size: 64, align: 64, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64, align: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{null, !640, !205}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64, align: 64)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !642, line: 6, baseType: !643)
!642 = !DIFile(filename: "../../../src/irc/core/irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !644, line: 42, size: 39168, align: 64, elements: !645)
!644 = !DIFile(filename: "../../../src/irc/core/irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!645 = !{!646, !647, !648, !649, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !845, !847}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !643, file: !214, line: 3, baseType: !215, size: 32, align: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !643, file: !214, line: 4, baseType: !215, size: 32, align: 32, offset: 32)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !643, file: !214, line: 6, baseType: !215, size: 32, align: 32, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !643, file: !214, line: 8, baseType: !650, size: 64, align: 64, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64, align: 64)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !642, line: 5, baseType: !652)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !644, line: 24, size: 2496, align: 64, elements: !653)
!653 = !{!654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !652, file: !224, line: 3, baseType: !215, size: 32, align: 32)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !652, file: !224, line: 4, baseType: !215, size: 32, align: 32, offset: 32)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !652, file: !224, line: 6, baseType: !215, size: 32, align: 32, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !652, file: !224, line: 9, baseType: !228, size: 64, align: 64, offset: 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !652, file: !224, line: 10, baseType: !215, size: 32, align: 32, offset: 192)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !652, file: !224, line: 11, baseType: !228, size: 64, align: 64, offset: 256)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !652, file: !224, line: 11, baseType: !228, size: 64, align: 64, offset: 320)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !652, file: !224, line: 11, baseType: !228, size: 64, align: 64, offset: 384)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !652, file: !224, line: 13, baseType: !234, size: 16, align: 16, offset: 448)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !652, file: !224, line: 14, baseType: !228, size: 64, align: 64, offset: 512)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !652, file: !224, line: 15, baseType: !228, size: 64, align: 64, offset: 576)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !652, file: !224, line: 16, baseType: !215, size: 32, align: 32, offset: 640)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !652, file: !224, line: 17, baseType: !228, size: 64, align: 64, offset: 704)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !652, file: !224, line: 19, baseType: !240, size: 64, align: 64, offset: 768)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !652, file: !224, line: 19, baseType: !240, size: 64, align: 64, offset: 832)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !652, file: !224, line: 21, baseType: !228, size: 64, align: 64, offset: 896)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !652, file: !224, line: 22, baseType: !228, size: 64, align: 64, offset: 960)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !652, file: !224, line: 23, baseType: !228, size: 64, align: 64, offset: 1024)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !652, file: !224, line: 24, baseType: !228, size: 64, align: 64, offset: 1088)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !652, file: !224, line: 26, baseType: !228, size: 64, align: 64, offset: 1152)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !652, file: !224, line: 27, baseType: !228, size: 64, align: 64, offset: 1216)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !652, file: !224, line: 28, baseType: !228, size: 64, align: 64, offset: 1280)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !652, file: !224, line: 29, baseType: !228, size: 64, align: 64, offset: 1344)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !652, file: !224, line: 30, baseType: !228, size: 64, align: 64, offset: 1408)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !652, file: !224, line: 31, baseType: !228, size: 64, align: 64, offset: 1472)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !652, file: !224, line: 32, baseType: !228, size: 64, align: 64, offset: 1536)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !652, file: !224, line: 33, baseType: !228, size: 64, align: 64, offset: 1600)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !652, file: !224, line: 35, baseType: !257, size: 64, align: 64, offset: 1664)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !652, file: !224, line: 38, baseType: !287, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !652, file: !224, line: 39, baseType: !287, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !652, file: !224, line: 40, baseType: !287, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !652, file: !224, line: 41, baseType: !287, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !652, file: !224, line: 42, baseType: !287, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !652, file: !224, line: 43, baseType: !287, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !652, file: !224, line: 44, baseType: !287, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !652, file: !224, line: 45, baseType: !287, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !652, file: !224, line: 46, baseType: !228, size: 64, align: 64, offset: 1792)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !652, file: !224, line: 47, baseType: !228, size: 64, align: 64, offset: 1856)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !652, file: !644, line: 27, baseType: !228, size: 64, align: 64, offset: 1920)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !652, file: !644, line: 28, baseType: !228, size: 64, align: 64, offset: 1984)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !652, file: !644, line: 30, baseType: !215, size: 32, align: 32, offset: 2048)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !652, file: !644, line: 31, baseType: !228, size: 64, align: 64, offset: 2112)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !652, file: !644, line: 32, baseType: !228, size: 64, align: 64, offset: 2176)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !652, file: !644, line: 34, baseType: !215, size: 32, align: 32, offset: 2240)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !652, file: !644, line: 35, baseType: !215, size: 32, align: 32, offset: 2272)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !652, file: !644, line: 36, baseType: !215, size: 32, align: 32, offset: 2304)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !652, file: !644, line: 38, baseType: !215, size: 32, align: 32, offset: 2336)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !652, file: !644, line: 38, baseType: !215, size: 32, align: 32, offset: 2368)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !652, file: !644, line: 38, baseType: !215, size: 32, align: 32, offset: 2400)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !652, file: !644, line: 38, baseType: !215, size: 32, align: 32, offset: 2432)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !643, file: !214, line: 9, baseType: !449, size: 64, align: 64, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !643, file: !214, line: 10, baseType: !449, size: 64, align: 64, offset: 256)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !643, file: !214, line: 12, baseType: !228, size: 64, align: 64, offset: 320)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !643, file: !214, line: 13, baseType: !228, size: 64, align: 64, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !643, file: !214, line: 15, baseType: !287, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !643, file: !214, line: 16, baseType: !287, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !643, file: !214, line: 17, baseType: !287, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !643, file: !214, line: 18, baseType: !287, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !643, file: !214, line: 19, baseType: !287, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !643, file: !214, line: 21, baseType: !462, size: 64, align: 64, offset: 512)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !643, file: !214, line: 22, baseType: !215, size: 32, align: 32, offset: 576)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !643, file: !214, line: 25, baseType: !467, size: 128, align: 64, offset: 640)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !643, file: !214, line: 26, baseType: !215, size: 32, align: 32, offset: 768)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !643, file: !214, line: 27, baseType: !215, size: 32, align: 32, offset: 800)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !643, file: !214, line: 29, baseType: !473, size: 64, align: 64, offset: 832)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !643, file: !214, line: 30, baseType: !477, size: 64, align: 64, offset: 896)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !643, file: !214, line: 32, baseType: !228, size: 64, align: 64, offset: 960)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !643, file: !214, line: 33, baseType: !228, size: 64, align: 64, offset: 1024)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !643, file: !214, line: 34, baseType: !228, size: 64, align: 64, offset: 1088)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !643, file: !214, line: 35, baseType: !287, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !643, file: !214, line: 36, baseType: !287, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !643, file: !214, line: 37, baseType: !287, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !643, file: !214, line: 38, baseType: !287, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !643, file: !214, line: 40, baseType: !489, size: 128, align: 64, offset: 1216)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !643, file: !214, line: 41, baseType: !449, size: 64, align: 64, offset: 1344)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !643, file: !214, line: 42, baseType: !215, size: 32, align: 32, offset: 1408)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !643, file: !214, line: 44, baseType: !377, size: 64, align: 64, offset: 1472)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !643, file: !214, line: 45, baseType: !377, size: 64, align: 64, offset: 1536)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !643, file: !214, line: 53, baseType: !500, size: 64, align: 64, offset: 1600)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !643, file: !214, line: 55, baseType: !504, size: 64, align: 64, offset: 1664)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !643, file: !214, line: 57, baseType: !508, size: 64, align: 64, offset: 1728)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !643, file: !214, line: 60, baseType: !512, size: 64, align: 64, offset: 1792)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !643, file: !214, line: 62, baseType: !516, size: 64, align: 64, offset: 1856)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !643, file: !214, line: 65, baseType: !520, size: 64, align: 64, offset: 1920)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !643, file: !214, line: 69, baseType: !525, size: 64, align: 64, offset: 1984)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !643, file: !214, line: 70, baseType: !618, size: 64, align: 64, offset: 2048)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !643, file: !214, line: 71, baseType: !625, size: 64, align: 64, offset: 2112)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !643, file: !214, line: 73, baseType: !625, size: 64, align: 64, offset: 2176)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !643, file: !644, line: 46, baseType: !377, size: 64, align: 64, offset: 2240)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !643, file: !644, line: 47, baseType: !377, size: 64, align: 64, offset: 2304)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !643, file: !644, line: 48, baseType: !745, size: 64, align: 64, offset: 2368)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64, align: 64)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !642, line: 8, baseType: !747)
!747 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !642, line: 8, flags: DIFlagFwdDecl)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !643, file: !644, line: 49, baseType: !377, size: 64, align: 64, offset: 2432)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !643, file: !644, line: 51, baseType: !228, size: 64, align: 64, offset: 2496)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !643, file: !644, line: 53, baseType: !228, size: 64, align: 64, offset: 2560)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !643, file: !644, line: 54, baseType: !228, size: 64, align: 64, offset: 2624)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !643, file: !644, line: 55, baseType: !228, size: 64, align: 64, offset: 2688)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !643, file: !644, line: 56, baseType: !228, size: 64, align: 64, offset: 2752)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !643, file: !644, line: 57, baseType: !215, size: 32, align: 32, offset: 2816)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !643, file: !644, line: 59, baseType: !287, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !643, file: !644, line: 60, baseType: !287, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !643, file: !644, line: 62, baseType: !287, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !643, file: !644, line: 63, baseType: !287, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !643, file: !644, line: 64, baseType: !287, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !643, file: !644, line: 65, baseType: !287, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !643, file: !644, line: 66, baseType: !287, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !643, file: !644, line: 67, baseType: !287, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !643, file: !644, line: 68, baseType: !287, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !643, file: !644, line: 69, baseType: !287, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !643, file: !644, line: 70, baseType: !287, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !643, file: !644, line: 71, baseType: !287, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !643, file: !644, line: 72, baseType: !287, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !643, file: !644, line: 74, baseType: !215, size: 32, align: 32, offset: 2880)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !643, file: !644, line: 75, baseType: !215, size: 32, align: 32, offset: 2912)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !643, file: !644, line: 76, baseType: !215, size: 32, align: 32, offset: 2944)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !643, file: !644, line: 77, baseType: !215, size: 32, align: 32, offset: 2976)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !643, file: !644, line: 79, baseType: !477, size: 64, align: 64, offset: 3008)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !643, file: !644, line: 80, baseType: !377, size: 64, align: 64, offset: 3072)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !643, file: !644, line: 81, baseType: !377, size: 64, align: 64, offset: 3136)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !643, file: !644, line: 83, baseType: !416, size: 64, align: 64, offset: 3200)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !643, file: !644, line: 84, baseType: !368, size: 32, align: 32, offset: 3264)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !643, file: !644, line: 87, baseType: !215, size: 32, align: 32, offset: 3296)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !643, file: !644, line: 91, baseType: !377, size: 64, align: 64, offset: 3328)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !643, file: !644, line: 92, baseType: !489, size: 128, align: 64, offset: 3392)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !643, file: !644, line: 93, baseType: !489, size: 128, align: 64, offset: 3520)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !643, file: !644, line: 95, baseType: !215, size: 32, align: 32, offset: 3648)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !643, file: !644, line: 96, baseType: !215, size: 32, align: 32, offset: 3680)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !643, file: !644, line: 97, baseType: !215, size: 32, align: 32, offset: 3712)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !643, file: !644, line: 100, baseType: !377, size: 64, align: 64, offset: 3776)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !643, file: !644, line: 103, baseType: !377, size: 64, align: 64, offset: 3840)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !643, file: !644, line: 106, baseType: !377, size: 64, align: 64, offset: 3904)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !643, file: !644, line: 108, baseType: !477, size: 64, align: 64, offset: 3968)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !643, file: !644, line: 109, baseType: !377, size: 64, align: 64, offset: 4032)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !643, file: !644, line: 111, baseType: !377, size: 64, align: 64, offset: 4096)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !643, file: !644, line: 114, baseType: !200, size: 64, align: 64, offset: 4160)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !643, file: !644, line: 116, baseType: !477, size: 64, align: 64, offset: 4224)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !643, file: !644, line: 117, baseType: !793, size: 32768, align: 64, offset: 4288)
!793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !794, size: 32768, align: 64, elements: !843)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !795, line: 10, size: 128, align: 64, elements: !796)
!795 = !DIFile(filename: "../../../src/irc/core/modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!796 = !{!797, !842}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !794, file: !795, line: 11, baseType: !798, size: 64, align: 64)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64, align: 64)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !795, line: 7, baseType: !800)
!800 = !DISubroutineType(types: !801)
!801 = !{null, !802, !205, !204, !204, !228, !416}
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64, align: 64)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !642, line: 7, baseType: !804)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !805, line: 15, size: 1600, align: 64, elements: !806)
!805 = !DIFile(filename: "../../../src/irc/core/irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!806 = !{!807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !804, file: !534, line: 3, baseType: !215, size: 32, align: 32)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !804, file: !534, line: 4, baseType: !215, size: 32, align: 32, offset: 32)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !804, file: !534, line: 5, baseType: !477, size: 64, align: 64, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !804, file: !534, line: 7, baseType: !200, size: 64, align: 64, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !804, file: !534, line: 8, baseType: !640, size: 64, align: 64, offset: 192)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !804, file: !534, line: 9, baseType: !228, size: 64, align: 64, offset: 256)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !804, file: !534, line: 10, baseType: !228, size: 64, align: 64, offset: 320)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !804, file: !534, line: 11, baseType: !449, size: 64, align: 64, offset: 384)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !804, file: !534, line: 12, baseType: !215, size: 32, align: 32, offset: 448)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !804, file: !534, line: 13, baseType: !228, size: 64, align: 64, offset: 512)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !804, file: !534, line: 15, baseType: !545, size: 64, align: 64, offset: 576)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !804, file: !534, line: 17, baseType: !565, size: 64, align: 64, offset: 640)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !804, file: !570, line: 5, baseType: !228, size: 64, align: 64, offset: 704)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !804, file: !570, line: 6, baseType: !228, size: 64, align: 64, offset: 768)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !804, file: !570, line: 7, baseType: !449, size: 64, align: 64, offset: 832)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !804, file: !570, line: 9, baseType: !477, size: 64, align: 64, offset: 896)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !804, file: !570, line: 10, baseType: !575, size: 64, align: 64, offset: 960)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !804, file: !570, line: 12, baseType: !287, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !804, file: !570, line: 13, baseType: !228, size: 64, align: 64, offset: 1088)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !804, file: !570, line: 14, baseType: !215, size: 32, align: 32, offset: 1152)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !804, file: !570, line: 15, baseType: !228, size: 64, align: 64, offset: 1216)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !804, file: !570, line: 17, baseType: !287, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !804, file: !570, line: 18, baseType: !287, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !804, file: !570, line: 19, baseType: !287, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !804, file: !570, line: 20, baseType: !287, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !804, file: !570, line: 22, baseType: !287, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !804, file: !570, line: 23, baseType: !287, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !804, file: !570, line: 24, baseType: !287, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !804, file: !570, line: 25, baseType: !287, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !804, file: !570, line: 26, baseType: !287, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !804, file: !570, line: 31, baseType: !614, size: 64, align: 64, offset: 1344)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !804, file: !805, line: 18, baseType: !377, size: 64, align: 64, offset: 1408)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !804, file: !805, line: 20, baseType: !449, size: 64, align: 64, offset: 1472)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !804, file: !805, line: 21, baseType: !215, size: 32, align: 32, offset: 1536)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !804, file: !805, line: 22, baseType: !215, size: 32, align: 32, offset: 1568)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !794, file: !795, line: 12, baseType: !204, size: 8, align: 8, offset: 64)
!843 = !{!844}
!844 = !DISubrange(count: 256)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !643, file: !644, line: 118, baseType: !846, size: 2048, align: 8, offset: 37056)
!846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 2048, align: 8, elements: !843)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !643, file: !644, line: 120, baseType: !625, size: 64, align: 64, offset: 39104)
!848 = !{!849}
!849 = !DISubrange(count: 11)
!850 = !{i32 2, !"Dwarf Version", i32 4}
!851 = !{i32 2, !"Debug Info Version", i32 3}
!852 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!853 = distinct !DISubprogram(name: "fe_whois_init", scope: !631, file: !631, line: 406, type: !365, isLocal: false, isDefinition: true, scopeLine: 407, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !854)
!854 = !{}
!855 = !DILocation(line: 408, column: 2, scope: !853)
!856 = !DILocation(line: 410, column: 2, scope: !853)
!857 = !DILocation(line: 411, column: 2, scope: !853)
!858 = !DILocation(line: 414, column: 2, scope: !853)
!859 = !DILocation(line: 415, column: 2, scope: !853)
!860 = !DILocation(line: 416, column: 2, scope: !853)
!861 = !DILocation(line: 417, column: 2, scope: !853)
!862 = !DILocation(line: 418, column: 2, scope: !853)
!863 = !DILocation(line: 419, column: 2, scope: !853)
!864 = !DILocation(line: 420, column: 2, scope: !853)
!865 = !DILocation(line: 421, column: 2, scope: !853)
!866 = !DILocation(line: 422, column: 2, scope: !853)
!867 = !DILocation(line: 423, column: 2, scope: !853)
!868 = !DILocation(line: 424, column: 2, scope: !853)
!869 = !DILocation(line: 425, column: 2, scope: !853)
!870 = !DILocation(line: 426, column: 2, scope: !853)
!871 = !DILocation(line: 427, column: 2, scope: !853)
!872 = !DILocation(line: 428, column: 2, scope: !853)
!873 = !DILocation(line: 429, column: 2, scope: !853)
!874 = !DILocation(line: 430, column: 2, scope: !853)
!875 = !DILocation(line: 431, column: 1, scope: !853)
!876 = distinct !DISubprogram(name: "event_whois", scope: !631, file: !631, line: 15, type: !638, isLocal: true, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !854)
!877 = !DILocalVariable(name: "server", arg: 1, scope: !876, file: !631, line: 15, type: !640)
!878 = !DIExpression()
!879 = !DILocation(line: 15, column: 41, scope: !876)
!880 = !DILocalVariable(name: "data", arg: 2, scope: !876, file: !631, line: 15, type: !205)
!881 = !DILocation(line: 15, column: 61, scope: !876)
!882 = !DILocalVariable(name: "params", scope: !876, file: !631, line: 17, type: !228)
!883 = !DILocation(line: 17, column: 8, scope: !876)
!884 = !DILocalVariable(name: "nick", scope: !876, file: !631, line: 17, type: !228)
!885 = !DILocation(line: 17, column: 17, scope: !876)
!886 = !DILocalVariable(name: "user", scope: !876, file: !631, line: 17, type: !228)
!887 = !DILocation(line: 17, column: 24, scope: !876)
!888 = !DILocalVariable(name: "host", scope: !876, file: !631, line: 17, type: !228)
!889 = !DILocation(line: 17, column: 31, scope: !876)
!890 = !DILocalVariable(name: "realname", scope: !876, file: !631, line: 17, type: !228)
!891 = !DILocation(line: 17, column: 38, scope: !876)
!892 = !DILocalVariable(name: "recoded", scope: !876, file: !631, line: 17, type: !228)
!893 = !DILocation(line: 17, column: 49, scope: !876)
!894 = !DILocation(line: 19, column: 2, scope: !876)
!895 = distinct !{!895, !894}
!896 = !DILocation(line: 19, column: 10, scope: !897)
!897 = !DILexicalBlockFile(scope: !898, file: !631, discriminator: 1)
!898 = distinct !DILexicalBlock(scope: !899, file: !631, line: 19, column: 10)
!899 = distinct !DILexicalBlock(scope: !876, file: !631, line: 19, column: 4)
!900 = !DILocation(line: 19, column: 15, scope: !897)
!901 = !DILocation(line: 19, column: 5, scope: !902)
!902 = !DILexicalBlockFile(scope: !903, file: !631, discriminator: 2)
!903 = distinct !DILexicalBlock(scope: !898, file: !631, line: 19, column: 3)
!904 = !DILocation(line: 19, column: 14, scope: !905)
!905 = !DILexicalBlockFile(scope: !906, file: !631, discriminator: 3)
!906 = distinct !DILexicalBlock(scope: !898, file: !631, line: 19, column: 12)
!907 = !DILocation(line: 19, column: 99, scope: !905)
!908 = !DILocation(line: 19, column: 110, scope: !909)
!909 = !DILexicalBlockFile(scope: !899, file: !631, discriminator: 4)
!910 = !DILocation(line: 21, column: 28, scope: !876)
!911 = !DILocation(line: 21, column: 11, scope: !876)
!912 = !DILocation(line: 21, column: 9, scope: !876)
!913 = !DILocation(line: 23, column: 56, scope: !876)
!914 = !DILocation(line: 23, column: 38, scope: !876)
!915 = !DILocation(line: 23, column: 23, scope: !876)
!916 = !DILocation(line: 23, column: 35, scope: !876)
!917 = !DILocation(line: 23, column: 45, scope: !876)
!918 = !DILocation(line: 23, column: 12, scope: !919)
!919 = !DILexicalBlockFile(scope: !876, file: !631, discriminator: 1)
!920 = !DILocation(line: 23, column: 10, scope: !876)
!921 = !DILocation(line: 24, column: 38, scope: !876)
!922 = !DILocation(line: 24, column: 46, scope: !876)
!923 = !DILocation(line: 24, column: 81, scope: !876)
!924 = !DILocation(line: 24, column: 87, scope: !876)
!925 = !DILocation(line: 24, column: 93, scope: !876)
!926 = !DILocation(line: 24, column: 99, scope: !876)
!927 = !DILocation(line: 24, column: 2, scope: !876)
!928 = !DILocation(line: 26, column: 9, scope: !876)
!929 = !DILocation(line: 26, column: 2, scope: !876)
!930 = !DILocation(line: 27, column: 9, scope: !876)
!931 = !DILocation(line: 27, column: 2, scope: !876)
!932 = !DILocation(line: 28, column: 1, scope: !876)
!933 = !DILocation(line: 28, column: 1, scope: !919)
!934 = distinct !DISubprogram(name: "event_whois_server", scope: !631, file: !631, line: 75, type: !638, isLocal: true, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !854)
!935 = !DILocalVariable(name: "server", arg: 1, scope: !934, file: !631, line: 75, type: !640)
!936 = !DILocation(line: 75, column: 48, scope: !934)
!937 = !DILocalVariable(name: "data", arg: 2, scope: !934, file: !631, line: 75, type: !205)
!938 = !DILocation(line: 75, column: 68, scope: !934)
!939 = !DILocalVariable(name: "params", scope: !934, file: !631, line: 77, type: !228)
!940 = !DILocation(line: 77, column: 8, scope: !934)
!941 = !DILocalVariable(name: "nick", scope: !934, file: !631, line: 77, type: !228)
!942 = !DILocation(line: 77, column: 17, scope: !934)
!943 = !DILocalVariable(name: "whoserver", scope: !934, file: !631, line: 77, type: !228)
!944 = !DILocation(line: 77, column: 24, scope: !934)
!945 = !DILocalVariable(name: "desc", scope: !934, file: !631, line: 77, type: !228)
!946 = !DILocation(line: 77, column: 36, scope: !934)
!947 = !DILocation(line: 79, column: 2, scope: !934)
!948 = distinct !{!948, !947}
!949 = !DILocation(line: 79, column: 10, scope: !950)
!950 = !DILexicalBlockFile(scope: !951, file: !631, discriminator: 1)
!951 = distinct !DILexicalBlock(scope: !952, file: !631, line: 79, column: 10)
!952 = distinct !DILexicalBlock(scope: !934, file: !631, line: 79, column: 4)
!953 = !DILocation(line: 79, column: 15, scope: !950)
!954 = !DILocation(line: 79, column: 5, scope: !955)
!955 = !DILexicalBlockFile(scope: !956, file: !631, discriminator: 2)
!956 = distinct !DILexicalBlock(scope: !951, file: !631, line: 79, column: 3)
!957 = !DILocation(line: 79, column: 14, scope: !958)
!958 = !DILexicalBlockFile(scope: !959, file: !631, discriminator: 3)
!959 = distinct !DILexicalBlock(scope: !951, file: !631, line: 79, column: 12)
!960 = !DILocation(line: 79, column: 99, scope: !958)
!961 = !DILocation(line: 79, column: 110, scope: !962)
!962 = !DILexicalBlockFile(scope: !952, file: !631, discriminator: 4)
!963 = !DILocation(line: 81, column: 28, scope: !934)
!964 = !DILocation(line: 81, column: 11, scope: !934)
!965 = !DILocation(line: 81, column: 9, scope: !934)
!966 = !DILocation(line: 82, column: 38, scope: !934)
!967 = !DILocation(line: 82, column: 46, scope: !934)
!968 = !DILocation(line: 82, column: 88, scope: !934)
!969 = !DILocation(line: 82, column: 94, scope: !934)
!970 = !DILocation(line: 82, column: 105, scope: !934)
!971 = !DILocation(line: 82, column: 2, scope: !934)
!972 = !DILocation(line: 84, column: 9, scope: !934)
!973 = !DILocation(line: 84, column: 2, scope: !934)
!974 = !DILocation(line: 85, column: 1, scope: !934)
!975 = !DILocation(line: 85, column: 1, scope: !976)
!976 = !DILexicalBlockFile(scope: !934, file: !631, discriminator: 1)
!977 = distinct !DISubprogram(name: "event_whois_idle", scope: !631, file: !631, line: 42, type: !638, isLocal: true, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !854)
!978 = !DILocalVariable(name: "server", arg: 1, scope: !977, file: !631, line: 42, type: !640)
!979 = !DILocation(line: 42, column: 46, scope: !977)
!980 = !DILocalVariable(name: "data", arg: 2, scope: !977, file: !631, line: 42, type: !205)
!981 = !DILocation(line: 42, column: 66, scope: !977)
!982 = !DILocalVariable(name: "params", scope: !977, file: !631, line: 44, type: !228)
!983 = !DILocation(line: 44, column: 8, scope: !977)
!984 = !DILocalVariable(name: "nick", scope: !977, file: !631, line: 44, type: !228)
!985 = !DILocation(line: 44, column: 17, scope: !977)
!986 = !DILocalVariable(name: "secstr", scope: !977, file: !631, line: 44, type: !228)
!987 = !DILocation(line: 44, column: 24, scope: !977)
!988 = !DILocalVariable(name: "signonstr", scope: !977, file: !631, line: 44, type: !228)
!989 = !DILocation(line: 44, column: 33, scope: !977)
!990 = !DILocalVariable(name: "rest", scope: !977, file: !631, line: 44, type: !228)
!991 = !DILocation(line: 44, column: 45, scope: !977)
!992 = !DILocalVariable(name: "timestr", scope: !977, file: !631, line: 44, type: !228)
!993 = !DILocation(line: 44, column: 52, scope: !977)
!994 = !DILocalVariable(name: "days", scope: !977, file: !631, line: 45, type: !301)
!995 = !DILocation(line: 45, column: 7, scope: !977)
!996 = !DILocalVariable(name: "hours", scope: !977, file: !631, line: 45, type: !301)
!997 = !DILocation(line: 45, column: 13, scope: !977)
!998 = !DILocalVariable(name: "mins", scope: !977, file: !631, line: 45, type: !301)
!999 = !DILocation(line: 45, column: 20, scope: !977)
!1000 = !DILocalVariable(name: "secs", scope: !977, file: !631, line: 45, type: !301)
!1001 = !DILocation(line: 45, column: 26, scope: !977)
!1002 = !DILocalVariable(name: "signon", scope: !977, file: !631, line: 46, type: !449)
!1003 = !DILocation(line: 46, column: 9, scope: !977)
!1004 = !DILocation(line: 48, column: 2, scope: !977)
!1005 = distinct !{!1005, !1004}
!1006 = !DILocation(line: 48, column: 10, scope: !1007)
!1007 = !DILexicalBlockFile(scope: !1008, file: !631, discriminator: 1)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !631, line: 48, column: 10)
!1009 = distinct !DILexicalBlock(scope: !977, file: !631, line: 48, column: 4)
!1010 = !DILocation(line: 48, column: 15, scope: !1007)
!1011 = !DILocation(line: 48, column: 5, scope: !1012)
!1012 = !DILexicalBlockFile(scope: !1013, file: !631, discriminator: 2)
!1013 = distinct !DILexicalBlock(scope: !1008, file: !631, line: 48, column: 3)
!1014 = !DILocation(line: 48, column: 14, scope: !1015)
!1015 = !DILexicalBlockFile(scope: !1016, file: !631, discriminator: 3)
!1016 = distinct !DILexicalBlock(scope: !1008, file: !631, line: 48, column: 12)
!1017 = !DILocation(line: 48, column: 99, scope: !1015)
!1018 = !DILocation(line: 48, column: 110, scope: !1019)
!1019 = !DILexicalBlockFile(scope: !1009, file: !631, discriminator: 4)
!1020 = !DILocation(line: 50, column: 28, scope: !977)
!1021 = !DILocation(line: 50, column: 11, scope: !977)
!1022 = !DILocation(line: 50, column: 9, scope: !977)
!1023 = !DILocation(line: 53, column: 14, scope: !977)
!1024 = !DILocation(line: 53, column: 9, scope: !977)
!1025 = !DILocation(line: 53, column: 7, scope: !977)
!1026 = !DILocation(line: 54, column: 18, scope: !977)
!1027 = !DILocation(line: 54, column: 11, scope: !977)
!1028 = !DILocation(line: 54, column: 39, scope: !977)
!1029 = !DILocation(line: 54, column: 11, scope: !1030)
!1030 = !DILexicalBlockFile(scope: !977, file: !631, discriminator: 1)
!1031 = !DILocation(line: 55, column: 17, scope: !977)
!1032 = !DILocation(line: 55, column: 12, scope: !977)
!1033 = !DILocation(line: 54, column: 11, scope: !1034)
!1034 = !DILexicalBlockFile(scope: !977, file: !631, discriminator: 2)
!1035 = !DILocation(line: 54, column: 11, scope: !1036)
!1036 = !DILexicalBlockFile(scope: !977, file: !631, discriminator: 3)
!1037 = !DILocation(line: 54, column: 9, scope: !1036)
!1038 = !DILocation(line: 57, column: 9, scope: !977)
!1039 = !DILocation(line: 57, column: 13, scope: !977)
!1040 = !DILocation(line: 57, column: 18, scope: !977)
!1041 = !DILocation(line: 57, column: 7, scope: !977)
!1042 = !DILocation(line: 58, column: 11, scope: !977)
!1043 = !DILocation(line: 58, column: 15, scope: !977)
!1044 = !DILocation(line: 58, column: 26, scope: !977)
!1045 = !DILocation(line: 58, column: 8, scope: !977)
!1046 = !DILocation(line: 59, column: 10, scope: !977)
!1047 = !DILocation(line: 59, column: 14, scope: !977)
!1048 = !DILocation(line: 59, column: 20, scope: !977)
!1049 = !DILocation(line: 59, column: 7, scope: !977)
!1050 = !DILocation(line: 60, column: 7, scope: !977)
!1051 = !DILocation(line: 62, column: 6, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !977, file: !631, line: 62, column: 6)
!1053 = !DILocation(line: 62, column: 13, scope: !1052)
!1054 = !DILocation(line: 62, column: 6, scope: !977)
!1055 = !DILocation(line: 63, column: 39, scope: !1052)
!1056 = !DILocation(line: 63, column: 47, scope: !1052)
!1057 = !DILocation(line: 63, column: 87, scope: !1052)
!1058 = !DILocation(line: 63, column: 93, scope: !1052)
!1059 = !DILocation(line: 63, column: 99, scope: !1052)
!1060 = !DILocation(line: 63, column: 106, scope: !1052)
!1061 = !DILocation(line: 63, column: 112, scope: !1052)
!1062 = !DILocation(line: 63, column: 3, scope: !1052)
!1063 = !DILocation(line: 66, column: 24, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1052, file: !631, line: 65, column: 7)
!1065 = !DILocation(line: 66, column: 13, scope: !1064)
!1066 = !DILocation(line: 66, column: 11, scope: !1064)
!1067 = !DILocation(line: 67, column: 39, scope: !1064)
!1068 = !DILocation(line: 67, column: 47, scope: !1064)
!1069 = !DILocation(line: 67, column: 94, scope: !1064)
!1070 = !DILocation(line: 67, column: 100, scope: !1064)
!1071 = !DILocation(line: 67, column: 106, scope: !1064)
!1072 = !DILocation(line: 67, column: 113, scope: !1064)
!1073 = !DILocation(line: 67, column: 119, scope: !1064)
!1074 = !DILocation(line: 67, column: 125, scope: !1064)
!1075 = !DILocation(line: 67, column: 3, scope: !1064)
!1076 = !DILocation(line: 70, column: 10, scope: !1064)
!1077 = !DILocation(line: 70, column: 3, scope: !1064)
!1078 = !DILocation(line: 72, column: 9, scope: !977)
!1079 = !DILocation(line: 72, column: 2, scope: !977)
!1080 = !DILocation(line: 73, column: 1, scope: !977)
!1081 = !DILocation(line: 73, column: 1, scope: !1030)
!1082 = distinct !DISubprogram(name: "event_whois_channels", scope: !631, file: !631, line: 279, type: !638, isLocal: true, isDefinition: true, scopeLine: 280, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !854)
!1083 = !DILocalVariable(name: "server", arg: 1, scope: !1082, file: !631, line: 279, type: !640)
!1084 = !DILocation(line: 279, column: 50, scope: !1082)
!1085 = !DILocalVariable(name: "data", arg: 2, scope: !1082, file: !631, line: 279, type: !205)
!1086 = !DILocation(line: 279, column: 70, scope: !1082)
!1087 = !DILocalVariable(name: "params", scope: !1082, file: !631, line: 281, type: !228)
!1088 = !DILocation(line: 281, column: 8, scope: !1082)
!1089 = !DILocalVariable(name: "nick", scope: !1082, file: !631, line: 281, type: !228)
!1090 = !DILocation(line: 281, column: 17, scope: !1082)
!1091 = !DILocalVariable(name: "chans", scope: !1082, file: !631, line: 281, type: !228)
!1092 = !DILocation(line: 281, column: 24, scope: !1082)
!1093 = !DILocalVariable(name: "recoded", scope: !1082, file: !631, line: 281, type: !228)
!1094 = !DILocation(line: 281, column: 32, scope: !1082)
!1095 = !DILocation(line: 283, column: 2, scope: !1082)
!1096 = distinct !{!1096, !1095}
!1097 = !DILocation(line: 283, column: 10, scope: !1098)
!1098 = !DILexicalBlockFile(scope: !1099, file: !631, discriminator: 1)
!1099 = distinct !DILexicalBlock(scope: !1100, file: !631, line: 283, column: 10)
!1100 = distinct !DILexicalBlock(scope: !1082, file: !631, line: 283, column: 4)
!1101 = !DILocation(line: 283, column: 15, scope: !1098)
!1102 = !DILocation(line: 283, column: 5, scope: !1103)
!1103 = !DILexicalBlockFile(scope: !1104, file: !631, discriminator: 2)
!1104 = distinct !DILexicalBlock(scope: !1099, file: !631, line: 283, column: 3)
!1105 = !DILocation(line: 283, column: 14, scope: !1106)
!1106 = !DILexicalBlockFile(scope: !1107, file: !631, discriminator: 3)
!1107 = distinct !DILexicalBlock(scope: !1099, file: !631, line: 283, column: 12)
!1108 = !DILocation(line: 283, column: 99, scope: !1106)
!1109 = !DILocation(line: 283, column: 110, scope: !1110)
!1110 = !DILexicalBlockFile(scope: !1100, file: !631, discriminator: 4)
!1111 = !DILocation(line: 285, column: 28, scope: !1082)
!1112 = !DILocation(line: 285, column: 11, scope: !1082)
!1113 = !DILocation(line: 285, column: 9, scope: !1082)
!1114 = !DILocation(line: 291, column: 24, scope: !1082)
!1115 = !DILocation(line: 291, column: 10, scope: !1082)
!1116 = !DILocation(line: 291, column: 8, scope: !1082)
!1117 = !DILocation(line: 292, column: 6, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1082, file: !631, line: 292, column: 6)
!1119 = !DILocation(line: 292, column: 6, scope: !1082)
!1120 = !DILocation(line: 293, column: 24, scope: !1118)
!1121 = !DILocation(line: 293, column: 32, scope: !1118)
!1122 = !DILocation(line: 293, column: 3, scope: !1118)
!1123 = !DILocation(line: 294, column: 56, scope: !1082)
!1124 = !DILocation(line: 294, column: 38, scope: !1082)
!1125 = !DILocation(line: 294, column: 23, scope: !1082)
!1126 = !DILocation(line: 294, column: 35, scope: !1082)
!1127 = !DILocation(line: 294, column: 42, scope: !1082)
!1128 = !DILocation(line: 294, column: 12, scope: !1129)
!1129 = !DILexicalBlockFile(scope: !1082, file: !631, discriminator: 1)
!1130 = !DILocation(line: 294, column: 10, scope: !1082)
!1131 = !DILocation(line: 295, column: 38, scope: !1082)
!1132 = !DILocation(line: 295, column: 46, scope: !1082)
!1133 = !DILocation(line: 295, column: 90, scope: !1082)
!1134 = !DILocation(line: 295, column: 96, scope: !1082)
!1135 = !DILocation(line: 295, column: 2, scope: !1082)
!1136 = !DILocation(line: 297, column: 9, scope: !1082)
!1137 = !DILocation(line: 297, column: 2, scope: !1082)
!1138 = !DILocation(line: 299, column: 9, scope: !1082)
!1139 = !DILocation(line: 299, column: 2, scope: !1082)
!1140 = !DILocation(line: 300, column: 9, scope: !1082)
!1141 = !DILocation(line: 300, column: 2, scope: !1082)
!1142 = !DILocation(line: 301, column: 1, scope: !1082)
!1143 = !DILocation(line: 301, column: 1, scope: !1129)
!1144 = distinct !DISubprogram(name: "event_whois_oper", scope: !631, file: !631, line: 87, type: !638, isLocal: true, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !854)
!1145 = !DILocalVariable(name: "server", arg: 1, scope: !1144, file: !631, line: 87, type: !640)
!1146 = !DILocation(line: 87, column: 46, scope: !1144)
!1147 = !DILocalVariable(name: "data", arg: 2, scope: !1144, file: !631, line: 87, type: !205)
!1148 = !DILocation(line: 87, column: 66, scope: !1144)
!1149 = !DILocalVariable(name: "params", scope: !1144, file: !631, line: 89, type: !228)
!1150 = !DILocation(line: 89, column: 8, scope: !1144)
!1151 = !DILocalVariable(name: "nick", scope: !1144, file: !631, line: 89, type: !228)
!1152 = !DILocation(line: 89, column: 17, scope: !1144)
!1153 = !DILocalVariable(name: "type", scope: !1144, file: !631, line: 89, type: !228)
!1154 = !DILocation(line: 89, column: 24, scope: !1144)
!1155 = !DILocation(line: 91, column: 2, scope: !1144)
!1156 = distinct !{!1156, !1155}
!1157 = !DILocation(line: 91, column: 10, scope: !1158)
!1158 = !DILexicalBlockFile(scope: !1159, file: !631, discriminator: 1)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !631, line: 91, column: 10)
!1160 = distinct !DILexicalBlock(scope: !1144, file: !631, line: 91, column: 4)
!1161 = !DILocation(line: 91, column: 15, scope: !1158)
!1162 = !DILocation(line: 91, column: 5, scope: !1163)
!1163 = !DILexicalBlockFile(scope: !1164, file: !631, discriminator: 2)
!1164 = distinct !DILexicalBlock(scope: !1159, file: !631, line: 91, column: 3)
!1165 = !DILocation(line: 91, column: 14, scope: !1166)
!1166 = !DILexicalBlockFile(scope: !1167, file: !631, discriminator: 3)
!1167 = distinct !DILexicalBlock(scope: !1159, file: !631, line: 91, column: 12)
!1168 = !DILocation(line: 91, column: 99, scope: !1166)
!1169 = !DILocation(line: 91, column: 110, scope: !1170)
!1170 = !DILexicalBlockFile(scope: !1160, file: !631, discriminator: 4)
!1171 = !DILocation(line: 93, column: 28, scope: !1144)
!1172 = !DILocation(line: 93, column: 11, scope: !1144)
!1173 = !DILocation(line: 93, column: 9, scope: !1144)
!1174 = !DILocation(line: 100, column: 16, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1144, file: !631, line: 100, column: 6)
!1176 = !DILocation(line: 100, column: 8, scope: !1175)
!1177 = !DILocation(line: 100, column: 36, scope: !1175)
!1178 = !DILocation(line: 100, column: 49, scope: !1179)
!1179 = !DILexicalBlockFile(scope: !1175, file: !631, discriminator: 1)
!1180 = !DILocation(line: 100, column: 41, scope: !1179)
!1181 = !DILocation(line: 100, column: 6, scope: !1179)
!1182 = !DILocation(line: 101, column: 8, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1175, file: !631, line: 100, column: 69)
!1184 = !DILocation(line: 102, column: 8, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1183, file: !631, line: 102, column: 7)
!1186 = !DILocation(line: 102, column: 7, scope: !1185)
!1187 = !DILocation(line: 102, column: 13, scope: !1185)
!1188 = !DILocation(line: 102, column: 7, scope: !1183)
!1189 = !DILocation(line: 102, column: 25, scope: !1190)
!1190 = !DILexicalBlockFile(scope: !1185, file: !631, discriminator: 1)
!1191 = !DILocation(line: 102, column: 21, scope: !1190)
!1192 = !DILocation(line: 103, column: 2, scope: !1183)
!1193 = !DILocation(line: 105, column: 7, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1144, file: !631, line: 105, column: 6)
!1195 = !DILocation(line: 105, column: 6, scope: !1194)
!1196 = !DILocation(line: 105, column: 12, scope: !1194)
!1197 = !DILocation(line: 105, column: 6, scope: !1144)
!1198 = !DILocation(line: 106, column: 8, scope: !1194)
!1199 = !DILocation(line: 106, column: 3, scope: !1194)
!1200 = !DILocation(line: 108, column: 38, scope: !1144)
!1201 = !DILocation(line: 108, column: 46, scope: !1144)
!1202 = !DILocation(line: 108, column: 86, scope: !1144)
!1203 = !DILocation(line: 108, column: 92, scope: !1144)
!1204 = !DILocation(line: 108, column: 2, scope: !1144)
!1205 = !DILocation(line: 110, column: 9, scope: !1144)
!1206 = !DILocation(line: 110, column: 2, scope: !1144)
!1207 = !DILocation(line: 111, column: 1, scope: !1144)
!1208 = !DILocation(line: 111, column: 1, scope: !1209)
!1209 = !DILexicalBlockFile(scope: !1144, file: !631, discriminator: 1)
!1210 = distinct !DISubprogram(name: "event_whois_auth", scope: !631, file: !631, line: 331, type: !638, isLocal: true, isDefinition: true, scopeLine: 332, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !854)
!1211 = !DILocalVariable(name: "server", arg: 1, scope: !1210, file: !631, line: 331, type: !640)
!1212 = !DILocation(line: 331, column: 46, scope: !1210)
!1213 = !DILocalVariable(name: "data", arg: 2, scope: !1210, file: !631, line: 331, type: !205)
!1214 = !DILocation(line: 331, column: 66, scope: !1210)
!1215 = !DILocalVariable(name: "params", scope: !1210, file: !631, line: 333, type: !228)
!1216 = !DILocation(line: 333, column: 8, scope: !1210)
!1217 = !DILocalVariable(name: "nick", scope: !1210, file: !631, line: 333, type: !228)
!1218 = !DILocation(line: 333, column: 17, scope: !1210)
!1219 = !DILocalVariable(name: "text", scope: !1210, file: !631, line: 333, type: !228)
!1220 = !DILocation(line: 333, column: 24, scope: !1210)
!1221 = !DILocation(line: 335, column: 2, scope: !1210)
!1222 = distinct !{!1222, !1221}
!1223 = !DILocation(line: 335, column: 10, scope: !1224)
!1224 = !DILexicalBlockFile(scope: !1225, file: !631, discriminator: 1)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !631, line: 335, column: 10)
!1226 = distinct !DILexicalBlock(scope: !1210, file: !631, line: 335, column: 4)
!1227 = !DILocation(line: 335, column: 15, scope: !1224)
!1228 = !DILocation(line: 335, column: 5, scope: !1229)
!1229 = !DILexicalBlockFile(scope: !1230, file: !631, discriminator: 2)
!1230 = distinct !DILexicalBlock(scope: !1225, file: !631, line: 335, column: 3)
!1231 = !DILocation(line: 335, column: 14, scope: !1232)
!1232 = !DILexicalBlockFile(scope: !1233, file: !631, discriminator: 3)
!1233 = distinct !DILexicalBlock(scope: !1225, file: !631, line: 335, column: 12)
!1234 = !DILocation(line: 335, column: 99, scope: !1232)
!1235 = !DILocation(line: 335, column: 110, scope: !1236)
!1236 = !DILexicalBlockFile(scope: !1226, file: !631, discriminator: 4)
!1237 = !DILocation(line: 337, column: 28, scope: !1210)
!1238 = !DILocation(line: 337, column: 11, scope: !1210)
!1239 = !DILocation(line: 337, column: 9, scope: !1210)
!1240 = !DILocation(line: 338, column: 38, scope: !1210)
!1241 = !DILocation(line: 338, column: 46, scope: !1210)
!1242 = !DILocation(line: 338, column: 87, scope: !1210)
!1243 = !DILocation(line: 338, column: 93, scope: !1210)
!1244 = !DILocation(line: 338, column: 2, scope: !1210)
!1245 = !DILocation(line: 340, column: 9, scope: !1210)
!1246 = !DILocation(line: 340, column: 2, scope: !1210)
!1247 = !DILocation(line: 341, column: 1, scope: !1210)
!1248 = !DILocation(line: 341, column: 1, scope: !1249)
!1249 = !DILexicalBlockFile(scope: !1210, file: !631, discriminator: 1)
!1250 = distinct !DISubprogram(name: "event_whois_usermode", scope: !631, file: !631, line: 213, type: !638, isLocal: true, isDefinition: true, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !854)
!1251 = !DILocalVariable(name: "server", arg: 1, scope: !1250, file: !631, line: 213, type: !640)
!1252 = !DILocation(line: 213, column: 50, scope: !1250)
!1253 = !DILocalVariable(name: "data", arg: 2, scope: !1250, file: !631, line: 213, type: !205)
!1254 = !DILocation(line: 213, column: 70, scope: !1250)
!1255 = !DILocalVariable(name: "params", scope: !1250, file: !631, line: 215, type: !228)
!1256 = !DILocation(line: 215, column: 8, scope: !1250)
!1257 = !DILocalVariable(name: "txt_usermodes", scope: !1250, file: !631, line: 215, type: !228)
!1258 = !DILocation(line: 215, column: 17, scope: !1250)
!1259 = !DILocalVariable(name: "nick", scope: !1250, file: !631, line: 215, type: !228)
!1260 = !DILocation(line: 215, column: 33, scope: !1250)
!1261 = !DILocalVariable(name: "usermode", scope: !1250, file: !631, line: 215, type: !228)
!1262 = !DILocation(line: 215, column: 40, scope: !1250)
!1263 = !DILocation(line: 217, column: 2, scope: !1250)
!1264 = distinct !{!1264, !1263}
!1265 = !DILocation(line: 217, column: 10, scope: !1266)
!1266 = !DILexicalBlockFile(scope: !1267, file: !631, discriminator: 1)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !631, line: 217, column: 10)
!1268 = distinct !DILexicalBlock(scope: !1250, file: !631, line: 217, column: 4)
!1269 = !DILocation(line: 217, column: 15, scope: !1266)
!1270 = !DILocation(line: 217, column: 5, scope: !1271)
!1271 = !DILexicalBlockFile(scope: !1272, file: !631, discriminator: 2)
!1272 = distinct !DILexicalBlock(scope: !1267, file: !631, line: 217, column: 3)
!1273 = !DILocation(line: 217, column: 14, scope: !1274)
!1274 = !DILexicalBlockFile(scope: !1275, file: !631, discriminator: 3)
!1275 = distinct !DILexicalBlock(scope: !1267, file: !631, line: 217, column: 12)
!1276 = !DILocation(line: 217, column: 99, scope: !1274)
!1277 = !DILocation(line: 217, column: 110, scope: !1278)
!1278 = !DILexicalBlockFile(scope: !1268, file: !631, discriminator: 4)
!1279 = !DILocation(line: 219, column: 28, scope: !1250)
!1280 = !DILocation(line: 219, column: 11, scope: !1250)
!1281 = !DILocation(line: 219, column: 9, scope: !1250)
!1282 = !DILocation(line: 222, column: 16, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1250, file: !631, line: 222, column: 6)
!1284 = !DILocation(line: 222, column: 6, scope: !1283)
!1285 = !DILocation(line: 222, column: 44, scope: !1283)
!1286 = !DILocation(line: 222, column: 6, scope: !1250)
!1287 = !DILocation(line: 224, column: 39, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1283, file: !631, line: 222, column: 50)
!1289 = !DILocation(line: 224, column: 47, scope: !1288)
!1290 = !DILocation(line: 224, column: 91, scope: !1288)
!1291 = !DILocation(line: 224, column: 97, scope: !1288)
!1292 = !DILocation(line: 224, column: 3, scope: !1288)
!1293 = !DILocation(line: 226, column: 2, scope: !1288)
!1294 = !DILocation(line: 227, column: 23, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1283, file: !631, line: 226, column: 9)
!1296 = !DILocation(line: 227, column: 31, scope: !1295)
!1297 = !DILocation(line: 227, column: 3, scope: !1295)
!1298 = !DILocation(line: 229, column: 9, scope: !1250)
!1299 = !DILocation(line: 229, column: 2, scope: !1250)
!1300 = !DILocation(line: 230, column: 1, scope: !1250)
!1301 = !DILocation(line: 230, column: 1, scope: !1302)
!1302 = !DILexicalBlockFile(scope: !1250, file: !631, discriminator: 1)
!1303 = distinct !DISubprogram(name: "event_whois_realhost", scope: !631, file: !631, line: 128, type: !638, isLocal: true, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !854)
!1304 = !DILocalVariable(name: "server", arg: 1, scope: !1303, file: !631, line: 128, type: !640)
!1305 = !DILocation(line: 128, column: 50, scope: !1303)
!1306 = !DILocalVariable(name: "data", arg: 2, scope: !1303, file: !631, line: 128, type: !205)
!1307 = !DILocation(line: 128, column: 70, scope: !1303)
!1308 = !DILocalVariable(name: "params", scope: !1303, file: !631, line: 130, type: !228)
!1309 = !DILocation(line: 130, column: 8, scope: !1303)
!1310 = !DILocalVariable(name: "nick", scope: !1303, file: !631, line: 130, type: !228)
!1311 = !DILocation(line: 130, column: 17, scope: !1303)
!1312 = !DILocalVariable(name: "txt_real", scope: !1303, file: !631, line: 130, type: !228)
!1313 = !DILocation(line: 130, column: 24, scope: !1303)
!1314 = !DILocalVariable(name: "txt_hostname", scope: !1303, file: !631, line: 130, type: !228)
!1315 = !DILocation(line: 130, column: 35, scope: !1303)
!1316 = !DILocalVariable(name: "hostname", scope: !1303, file: !631, line: 130, type: !228)
!1317 = !DILocation(line: 130, column: 50, scope: !1303)
!1318 = !DILocation(line: 132, column: 2, scope: !1303)
!1319 = distinct !{!1319, !1318}
!1320 = !DILocation(line: 132, column: 10, scope: !1321)
!1321 = !DILexicalBlockFile(scope: !1322, file: !631, discriminator: 1)
!1322 = distinct !DILexicalBlock(scope: !1323, file: !631, line: 132, column: 10)
!1323 = distinct !DILexicalBlock(scope: !1303, file: !631, line: 132, column: 4)
!1324 = !DILocation(line: 132, column: 15, scope: !1321)
!1325 = !DILocation(line: 132, column: 5, scope: !1326)
!1326 = !DILexicalBlockFile(scope: !1327, file: !631, discriminator: 2)
!1327 = distinct !DILexicalBlock(scope: !1322, file: !631, line: 132, column: 3)
!1328 = !DILocation(line: 132, column: 14, scope: !1329)
!1329 = !DILexicalBlockFile(scope: !1330, file: !631, discriminator: 3)
!1330 = distinct !DILexicalBlock(scope: !1322, file: !631, line: 132, column: 12)
!1331 = !DILocation(line: 132, column: 99, scope: !1329)
!1332 = !DILocation(line: 132, column: 110, scope: !1333)
!1333 = !DILexicalBlockFile(scope: !1323, file: !631, discriminator: 4)
!1334 = !DILocation(line: 135, column: 28, scope: !1303)
!1335 = !DILocation(line: 135, column: 11, scope: !1303)
!1336 = !DILocation(line: 135, column: 9, scope: !1303)
!1337 = !DILocation(line: 137, column: 16, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1303, file: !631, line: 137, column: 6)
!1339 = !DILocation(line: 137, column: 6, scope: !1338)
!1340 = !DILocation(line: 137, column: 34, scope: !1338)
!1341 = !DILocation(line: 137, column: 39, scope: !1338)
!1342 = !DILocation(line: 138, column: 16, scope: !1338)
!1343 = !DILocation(line: 138, column: 6, scope: !1338)
!1344 = !DILocation(line: 138, column: 42, scope: !1338)
!1345 = !DILocation(line: 137, column: 6, scope: !1346)
!1346 = !DILexicalBlockFile(scope: !1303, file: !631, discriminator: 1)
!1347 = !DILocation(line: 140, column: 24, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1338, file: !631, line: 138, column: 48)
!1349 = !DILocation(line: 140, column: 17, scope: !1348)
!1350 = !DILocation(line: 141, column: 29, scope: !1348)
!1351 = !DILocation(line: 141, column: 12, scope: !1348)
!1352 = !DILocation(line: 141, column: 10, scope: !1348)
!1353 = !DILocation(line: 143, column: 21, scope: !1348)
!1354 = !DILocation(line: 143, column: 14, scope: !1348)
!1355 = !DILocation(line: 143, column: 12, scope: !1348)
!1356 = !DILocation(line: 144, column: 21, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1348, file: !631, line: 144, column: 21)
!1358 = !DILocation(line: 144, column: 30, scope: !1357)
!1359 = !DILocation(line: 144, column: 21, scope: !1348)
!1360 = !DILocation(line: 144, column: 47, scope: !1361)
!1361 = !DILexicalBlockFile(scope: !1357, file: !631, discriminator: 1)
!1362 = !DILocation(line: 144, column: 38, scope: !1361)
!1363 = !DILocation(line: 145, column: 2, scope: !1348)
!1364 = !DILocation(line: 147, column: 6, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1303, file: !631, line: 147, column: 6)
!1366 = !DILocation(line: 147, column: 15, scope: !1365)
!1367 = !DILocation(line: 147, column: 6, scope: !1303)
!1368 = !DILocation(line: 148, column: 16, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !631, line: 148, column: 7)
!1370 = distinct !DILexicalBlock(scope: !1365, file: !631, line: 147, column: 23)
!1371 = !DILocation(line: 148, column: 8, scope: !1369)
!1372 = !DILocation(line: 148, column: 7, scope: !1370)
!1373 = !DILocation(line: 149, column: 13, scope: !1369)
!1374 = !DILocation(line: 149, column: 4, scope: !1369)
!1375 = !DILocation(line: 150, column: 39, scope: !1370)
!1376 = !DILocation(line: 150, column: 47, scope: !1370)
!1377 = !DILocation(line: 150, column: 91, scope: !1370)
!1378 = !DILocation(line: 150, column: 97, scope: !1370)
!1379 = !DILocation(line: 150, column: 3, scope: !1370)
!1380 = !DILocation(line: 152, column: 2, scope: !1370)
!1381 = !DILocation(line: 153, column: 23, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1365, file: !631, line: 152, column: 9)
!1383 = !DILocation(line: 153, column: 31, scope: !1382)
!1384 = !DILocation(line: 153, column: 3, scope: !1382)
!1385 = !DILocation(line: 155, column: 9, scope: !1303)
!1386 = !DILocation(line: 155, column: 2, scope: !1303)
!1387 = !DILocation(line: 156, column: 1, scope: !1303)
!1388 = !DILocation(line: 156, column: 1, scope: !1346)
!1389 = distinct !DISubprogram(name: "event_whois_modes", scope: !631, file: !631, line: 113, type: !638, isLocal: true, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !854)
!1390 = !DILocalVariable(name: "server", arg: 1, scope: !1389, file: !631, line: 113, type: !640)
!1391 = !DILocation(line: 113, column: 47, scope: !1389)
!1392 = !DILocalVariable(name: "data", arg: 2, scope: !1389, file: !631, line: 113, type: !205)
!1393 = !DILocation(line: 113, column: 67, scope: !1389)
!1394 = !DILocalVariable(name: "params", scope: !1389, file: !631, line: 115, type: !228)
!1395 = !DILocation(line: 115, column: 8, scope: !1389)
!1396 = !DILocalVariable(name: "nick", scope: !1389, file: !631, line: 115, type: !228)
!1397 = !DILocation(line: 115, column: 17, scope: !1389)
!1398 = !DILocalVariable(name: "modes", scope: !1389, file: !631, line: 115, type: !228)
!1399 = !DILocation(line: 115, column: 24, scope: !1389)
!1400 = !DILocation(line: 117, column: 2, scope: !1389)
!1401 = distinct !{!1401, !1400}
!1402 = !DILocation(line: 117, column: 10, scope: !1403)
!1403 = !DILexicalBlockFile(scope: !1404, file: !631, discriminator: 1)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !631, line: 117, column: 10)
!1405 = distinct !DILexicalBlock(scope: !1389, file: !631, line: 117, column: 4)
!1406 = !DILocation(line: 117, column: 15, scope: !1403)
!1407 = !DILocation(line: 117, column: 5, scope: !1408)
!1408 = !DILexicalBlockFile(scope: !1409, file: !631, discriminator: 2)
!1409 = distinct !DILexicalBlock(scope: !1404, file: !631, line: 117, column: 3)
!1410 = !DILocation(line: 117, column: 14, scope: !1411)
!1411 = !DILexicalBlockFile(scope: !1412, file: !631, discriminator: 3)
!1412 = distinct !DILexicalBlock(scope: !1404, file: !631, line: 117, column: 12)
!1413 = !DILocation(line: 117, column: 99, scope: !1411)
!1414 = !DILocation(line: 117, column: 110, scope: !1415)
!1415 = !DILexicalBlockFile(scope: !1405, file: !631, discriminator: 4)
!1416 = !DILocation(line: 119, column: 28, scope: !1389)
!1417 = !DILocation(line: 119, column: 11, scope: !1389)
!1418 = !DILocation(line: 119, column: 9, scope: !1389)
!1419 = !DILocation(line: 121, column: 15, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1389, file: !631, line: 121, column: 6)
!1421 = !DILocation(line: 121, column: 7, scope: !1420)
!1422 = !DILocation(line: 121, column: 6, scope: !1389)
!1423 = !DILocation(line: 122, column: 9, scope: !1420)
!1424 = !DILocation(line: 122, column: 3, scope: !1420)
!1425 = !DILocation(line: 123, column: 38, scope: !1389)
!1426 = !DILocation(line: 123, column: 46, scope: !1389)
!1427 = !DILocation(line: 123, column: 87, scope: !1389)
!1428 = !DILocation(line: 123, column: 93, scope: !1389)
!1429 = !DILocation(line: 123, column: 2, scope: !1389)
!1430 = !DILocation(line: 125, column: 9, scope: !1389)
!1431 = !DILocation(line: 125, column: 2, scope: !1389)
!1432 = !DILocation(line: 126, column: 1, scope: !1389)
!1433 = !DILocation(line: 126, column: 1, scope: !1434)
!1434 = !DILexicalBlockFile(scope: !1389, file: !631, discriminator: 1)
!1435 = distinct !DISubprogram(name: "event_whois_realhost327", scope: !631, file: !631, line: 171, type: !638, isLocal: true, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !854)
!1436 = !DILocalVariable(name: "server", arg: 1, scope: !1435, file: !631, line: 171, type: !640)
!1437 = !DILocation(line: 171, column: 53, scope: !1435)
!1438 = !DILocalVariable(name: "data", arg: 2, scope: !1435, file: !631, line: 171, type: !205)
!1439 = !DILocation(line: 171, column: 73, scope: !1435)
!1440 = !DILocalVariable(name: "params", scope: !1435, file: !631, line: 173, type: !228)
!1441 = !DILocation(line: 173, column: 8, scope: !1435)
!1442 = !DILocalVariable(name: "nick", scope: !1435, file: !631, line: 173, type: !228)
!1443 = !DILocation(line: 173, column: 17, scope: !1435)
!1444 = !DILocalVariable(name: "hostname", scope: !1435, file: !631, line: 173, type: !228)
!1445 = !DILocation(line: 173, column: 24, scope: !1435)
!1446 = !DILocalVariable(name: "ip", scope: !1435, file: !631, line: 173, type: !228)
!1447 = !DILocation(line: 173, column: 35, scope: !1435)
!1448 = !DILocalVariable(name: "text", scope: !1435, file: !631, line: 173, type: !228)
!1449 = !DILocation(line: 173, column: 40, scope: !1435)
!1450 = !DILocation(line: 175, column: 2, scope: !1435)
!1451 = distinct !{!1451, !1450}
!1452 = !DILocation(line: 175, column: 10, scope: !1453)
!1453 = !DILexicalBlockFile(scope: !1454, file: !631, discriminator: 1)
!1454 = distinct !DILexicalBlock(scope: !1455, file: !631, line: 175, column: 10)
!1455 = distinct !DILexicalBlock(scope: !1435, file: !631, line: 175, column: 4)
!1456 = !DILocation(line: 175, column: 15, scope: !1453)
!1457 = !DILocation(line: 175, column: 5, scope: !1458)
!1458 = !DILexicalBlockFile(scope: !1459, file: !631, discriminator: 2)
!1459 = distinct !DILexicalBlock(scope: !1454, file: !631, line: 175, column: 3)
!1460 = !DILocation(line: 175, column: 14, scope: !1461)
!1461 = !DILexicalBlockFile(scope: !1462, file: !631, discriminator: 3)
!1462 = distinct !DILexicalBlock(scope: !1454, file: !631, line: 175, column: 12)
!1463 = !DILocation(line: 175, column: 99, scope: !1461)
!1464 = !DILocation(line: 175, column: 110, scope: !1465)
!1465 = !DILexicalBlockFile(scope: !1455, file: !631, discriminator: 4)
!1466 = !DILocation(line: 178, column: 28, scope: !1435)
!1467 = !DILocation(line: 178, column: 11, scope: !1435)
!1468 = !DILocation(line: 178, column: 9, scope: !1435)
!1469 = !DILocation(line: 179, column: 7, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1435, file: !631, line: 179, column: 6)
!1471 = !DILocation(line: 179, column: 6, scope: !1470)
!1472 = !DILocation(line: 179, column: 12, scope: !1470)
!1473 = !DILocation(line: 179, column: 6, scope: !1435)
!1474 = !DILocation(line: 180, column: 39, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1470, file: !631, line: 179, column: 21)
!1476 = !DILocation(line: 180, column: 47, scope: !1475)
!1477 = !DILocation(line: 180, column: 91, scope: !1475)
!1478 = !DILocation(line: 180, column: 97, scope: !1475)
!1479 = !DILocation(line: 180, column: 107, scope: !1475)
!1480 = !DILocation(line: 180, column: 3, scope: !1475)
!1481 = !DILocation(line: 182, column: 2, scope: !1475)
!1482 = !DILocation(line: 183, column: 23, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1470, file: !631, line: 182, column: 9)
!1484 = !DILocation(line: 183, column: 31, scope: !1483)
!1485 = !DILocation(line: 183, column: 3, scope: !1483)
!1486 = !DILocation(line: 185, column: 9, scope: !1435)
!1487 = !DILocation(line: 185, column: 2, scope: !1435)
!1488 = !DILocation(line: 186, column: 1, scope: !1435)
!1489 = !DILocation(line: 186, column: 1, scope: !1490)
!1490 = !DILexicalBlockFile(scope: !1435, file: !631, discriminator: 1)
!1491 = distinct !DISubprogram(name: "event_whois_usermode326", scope: !631, file: !631, line: 158, type: !638, isLocal: true, isDefinition: true, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !854)
!1492 = !DILocalVariable(name: "server", arg: 1, scope: !1491, file: !631, line: 158, type: !640)
!1493 = !DILocation(line: 158, column: 53, scope: !1491)
!1494 = !DILocalVariable(name: "data", arg: 2, scope: !1491, file: !631, line: 158, type: !205)
!1495 = !DILocation(line: 158, column: 73, scope: !1491)
!1496 = !DILocalVariable(name: "params", scope: !1491, file: !631, line: 160, type: !228)
!1497 = !DILocation(line: 160, column: 8, scope: !1491)
!1498 = !DILocalVariable(name: "nick", scope: !1491, file: !631, line: 160, type: !228)
!1499 = !DILocation(line: 160, column: 17, scope: !1491)
!1500 = !DILocalVariable(name: "usermode", scope: !1491, file: !631, line: 160, type: !228)
!1501 = !DILocation(line: 160, column: 24, scope: !1491)
!1502 = !DILocation(line: 162, column: 2, scope: !1491)
!1503 = distinct !{!1503, !1502}
!1504 = !DILocation(line: 162, column: 10, scope: !1505)
!1505 = !DILexicalBlockFile(scope: !1506, file: !631, discriminator: 1)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !631, line: 162, column: 10)
!1507 = distinct !DILexicalBlock(scope: !1491, file: !631, line: 162, column: 4)
!1508 = !DILocation(line: 162, column: 15, scope: !1505)
!1509 = !DILocation(line: 162, column: 5, scope: !1510)
!1510 = !DILexicalBlockFile(scope: !1511, file: !631, discriminator: 2)
!1511 = distinct !DILexicalBlock(scope: !1506, file: !631, line: 162, column: 3)
!1512 = !DILocation(line: 162, column: 14, scope: !1513)
!1513 = !DILexicalBlockFile(scope: !1514, file: !631, discriminator: 3)
!1514 = distinct !DILexicalBlock(scope: !1506, file: !631, line: 162, column: 12)
!1515 = !DILocation(line: 162, column: 99, scope: !1513)
!1516 = !DILocation(line: 162, column: 110, scope: !1517)
!1517 = !DILexicalBlockFile(scope: !1507, file: !631, discriminator: 4)
!1518 = !DILocation(line: 165, column: 28, scope: !1491)
!1519 = !DILocation(line: 165, column: 11, scope: !1491)
!1520 = !DILocation(line: 165, column: 9, scope: !1491)
!1521 = !DILocation(line: 166, column: 38, scope: !1491)
!1522 = !DILocation(line: 166, column: 46, scope: !1491)
!1523 = !DILocation(line: 166, column: 90, scope: !1491)
!1524 = !DILocation(line: 166, column: 96, scope: !1491)
!1525 = !DILocation(line: 166, column: 2, scope: !1491)
!1526 = !DILocation(line: 168, column: 16, scope: !1491)
!1527 = !DILocation(line: 168, column: 9, scope: !1491)
!1528 = !DILocation(line: 169, column: 1, scope: !1491)
!1529 = !DILocation(line: 169, column: 1, scope: !1530)
!1530 = !DILexicalBlockFile(scope: !1491, file: !631, discriminator: 1)
!1531 = distinct !DISubprogram(name: "event_whois_realhost338", scope: !631, file: !631, line: 188, type: !638, isLocal: true, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !854)
!1532 = !DILocalVariable(name: "server", arg: 1, scope: !1531, file: !631, line: 188, type: !640)
!1533 = !DILocation(line: 188, column: 53, scope: !1531)
!1534 = !DILocalVariable(name: "data", arg: 2, scope: !1531, file: !631, line: 188, type: !205)
!1535 = !DILocation(line: 188, column: 73, scope: !1531)
!1536 = !DILocalVariable(name: "params", scope: !1531, file: !631, line: 190, type: !228)
!1537 = !DILocation(line: 190, column: 8, scope: !1531)
!1538 = !DILocalVariable(name: "nick", scope: !1531, file: !631, line: 190, type: !228)
!1539 = !DILocation(line: 190, column: 17, scope: !1531)
!1540 = !DILocalVariable(name: "arg1", scope: !1531, file: !631, line: 190, type: !228)
!1541 = !DILocation(line: 190, column: 24, scope: !1531)
!1542 = !DILocalVariable(name: "arg2", scope: !1531, file: !631, line: 190, type: !228)
!1543 = !DILocation(line: 190, column: 31, scope: !1531)
!1544 = !DILocalVariable(name: "arg3", scope: !1531, file: !631, line: 190, type: !228)
!1545 = !DILocation(line: 190, column: 38, scope: !1531)
!1546 = !DILocation(line: 192, column: 2, scope: !1531)
!1547 = distinct !{!1547, !1546}
!1548 = !DILocation(line: 192, column: 10, scope: !1549)
!1549 = !DILexicalBlockFile(scope: !1550, file: !631, discriminator: 1)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !631, line: 192, column: 10)
!1551 = distinct !DILexicalBlock(scope: !1531, file: !631, line: 192, column: 4)
!1552 = !DILocation(line: 192, column: 15, scope: !1549)
!1553 = !DILocation(line: 192, column: 5, scope: !1554)
!1554 = !DILexicalBlockFile(scope: !1555, file: !631, discriminator: 2)
!1555 = distinct !DILexicalBlock(scope: !1550, file: !631, line: 192, column: 3)
!1556 = !DILocation(line: 192, column: 14, scope: !1557)
!1557 = !DILexicalBlockFile(scope: !1558, file: !631, discriminator: 3)
!1558 = distinct !DILexicalBlock(scope: !1550, file: !631, line: 192, column: 12)
!1559 = !DILocation(line: 192, column: 99, scope: !1557)
!1560 = !DILocation(line: 192, column: 110, scope: !1561)
!1561 = !DILexicalBlockFile(scope: !1551, file: !631, discriminator: 4)
!1562 = !DILocation(line: 200, column: 28, scope: !1531)
!1563 = !DILocation(line: 200, column: 11, scope: !1531)
!1564 = !DILocation(line: 200, column: 9, scope: !1531)
!1565 = !DILocation(line: 201, column: 7, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1531, file: !631, line: 201, column: 6)
!1567 = !DILocation(line: 201, column: 6, scope: !1566)
!1568 = !DILocation(line: 201, column: 12, scope: !1566)
!1569 = !DILocation(line: 201, column: 6, scope: !1531)
!1570 = !DILocation(line: 202, column: 39, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1566, file: !631, line: 201, column: 21)
!1572 = !DILocation(line: 202, column: 47, scope: !1571)
!1573 = !DILocation(line: 202, column: 91, scope: !1571)
!1574 = !DILocation(line: 202, column: 97, scope: !1571)
!1575 = !DILocation(line: 202, column: 103, scope: !1571)
!1576 = !DILocation(line: 202, column: 3, scope: !1571)
!1577 = !DILocation(line: 204, column: 2, scope: !1571)
!1578 = !DILocation(line: 204, column: 14, scope: !1579)
!1579 = !DILexicalBlockFile(scope: !1580, file: !631, discriminator: 1)
!1580 = distinct !DILexicalBlock(scope: !1566, file: !631, line: 204, column: 13)
!1581 = !DILocation(line: 204, column: 13, scope: !1579)
!1582 = !DILocation(line: 204, column: 19, scope: !1579)
!1583 = !DILocation(line: 205, column: 39, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1580, file: !631, line: 204, column: 28)
!1585 = !DILocation(line: 205, column: 47, scope: !1584)
!1586 = !DILocation(line: 205, column: 91, scope: !1584)
!1587 = !DILocation(line: 205, column: 97, scope: !1584)
!1588 = !DILocation(line: 205, column: 3, scope: !1584)
!1589 = !DILocation(line: 207, column: 2, scope: !1584)
!1590 = !DILocation(line: 208, column: 23, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1580, file: !631, line: 207, column: 9)
!1592 = !DILocation(line: 208, column: 31, scope: !1591)
!1593 = !DILocation(line: 208, column: 3, scope: !1591)
!1594 = !DILocation(line: 210, column: 9, scope: !1531)
!1595 = !DILocation(line: 210, column: 2, scope: !1531)
!1596 = !DILocation(line: 211, column: 1, scope: !1531)
!1597 = !DILocation(line: 211, column: 1, scope: !1598)
!1598 = !DILexicalBlockFile(scope: !1531, file: !631, discriminator: 1)
!1599 = distinct !DISubprogram(name: "event_whois_away", scope: !631, file: !631, line: 303, type: !638, isLocal: true, isDefinition: true, scopeLine: 304, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !854)
!1600 = !DILocalVariable(name: "server", arg: 1, scope: !1599, file: !631, line: 303, type: !640)
!1601 = !DILocation(line: 303, column: 46, scope: !1599)
!1602 = !DILocalVariable(name: "data", arg: 2, scope: !1599, file: !631, line: 303, type: !205)
!1603 = !DILocation(line: 303, column: 66, scope: !1599)
!1604 = !DILocalVariable(name: "params", scope: !1599, file: !631, line: 305, type: !228)
!1605 = !DILocation(line: 305, column: 8, scope: !1599)
!1606 = !DILocalVariable(name: "nick", scope: !1599, file: !631, line: 305, type: !228)
!1607 = !DILocation(line: 305, column: 17, scope: !1599)
!1608 = !DILocalVariable(name: "awaymsg", scope: !1599, file: !631, line: 305, type: !228)
!1609 = !DILocation(line: 305, column: 24, scope: !1599)
!1610 = !DILocalVariable(name: "recoded", scope: !1599, file: !631, line: 305, type: !228)
!1611 = !DILocation(line: 305, column: 34, scope: !1599)
!1612 = !DILocation(line: 307, column: 2, scope: !1599)
!1613 = distinct !{!1613, !1612}
!1614 = !DILocation(line: 307, column: 10, scope: !1615)
!1615 = !DILexicalBlockFile(scope: !1616, file: !631, discriminator: 1)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !631, line: 307, column: 10)
!1617 = distinct !DILexicalBlock(scope: !1599, file: !631, line: 307, column: 4)
!1618 = !DILocation(line: 307, column: 15, scope: !1615)
!1619 = !DILocation(line: 307, column: 5, scope: !1620)
!1620 = !DILexicalBlockFile(scope: !1621, file: !631, discriminator: 2)
!1621 = distinct !DILexicalBlock(scope: !1616, file: !631, line: 307, column: 3)
!1622 = !DILocation(line: 307, column: 14, scope: !1623)
!1623 = !DILexicalBlockFile(scope: !1624, file: !631, discriminator: 3)
!1624 = distinct !DILexicalBlock(scope: !1616, file: !631, line: 307, column: 12)
!1625 = !DILocation(line: 307, column: 99, scope: !1623)
!1626 = !DILocation(line: 307, column: 110, scope: !1627)
!1627 = !DILexicalBlockFile(scope: !1617, file: !631, discriminator: 4)
!1628 = !DILocation(line: 309, column: 28, scope: !1599)
!1629 = !DILocation(line: 309, column: 11, scope: !1599)
!1630 = !DILocation(line: 309, column: 9, scope: !1599)
!1631 = !DILocation(line: 310, column: 56, scope: !1599)
!1632 = !DILocation(line: 310, column: 38, scope: !1599)
!1633 = !DILocation(line: 310, column: 23, scope: !1599)
!1634 = !DILocation(line: 310, column: 35, scope: !1599)
!1635 = !DILocation(line: 310, column: 44, scope: !1599)
!1636 = !DILocation(line: 310, column: 12, scope: !1637)
!1637 = !DILexicalBlockFile(scope: !1599, file: !631, discriminator: 1)
!1638 = !DILocation(line: 310, column: 10, scope: !1599)
!1639 = !DILocation(line: 311, column: 38, scope: !1599)
!1640 = !DILocation(line: 311, column: 46, scope: !1599)
!1641 = !DILocation(line: 311, column: 86, scope: !1599)
!1642 = !DILocation(line: 311, column: 92, scope: !1599)
!1643 = !DILocation(line: 311, column: 2, scope: !1599)
!1644 = !DILocation(line: 313, column: 9, scope: !1599)
!1645 = !DILocation(line: 313, column: 2, scope: !1599)
!1646 = !DILocation(line: 314, column: 9, scope: !1599)
!1647 = !DILocation(line: 314, column: 2, scope: !1599)
!1648 = !DILocation(line: 315, column: 1, scope: !1599)
!1649 = !DILocation(line: 315, column: 1, scope: !1637)
!1650 = distinct !DISubprogram(name: "event_whois_default", scope: !631, file: !631, line: 391, type: !638, isLocal: true, isDefinition: true, scopeLine: 392, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !854)
!1651 = !DILocalVariable(name: "server", arg: 1, scope: !1650, file: !631, line: 391, type: !640)
!1652 = !DILocation(line: 391, column: 49, scope: !1650)
!1653 = !DILocalVariable(name: "data", arg: 2, scope: !1650, file: !631, line: 391, type: !205)
!1654 = !DILocation(line: 391, column: 69, scope: !1650)
!1655 = !DILocalVariable(name: "i", scope: !1650, file: !631, line: 393, type: !215)
!1656 = !DILocation(line: 393, column: 6, scope: !1650)
!1657 = !DILocalVariable(name: "num", scope: !1650, file: !631, line: 393, type: !215)
!1658 = !DILocation(line: 393, column: 9, scope: !1650)
!1659 = !DILocation(line: 395, column: 13, scope: !1650)
!1660 = !DILocation(line: 395, column: 8, scope: !1650)
!1661 = !DILocation(line: 395, column: 6, scope: !1650)
!1662 = !DILocation(line: 396, column: 9, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1650, file: !631, line: 396, column: 2)
!1664 = !DILocation(line: 396, column: 7, scope: !1663)
!1665 = !DILocation(line: 396, column: 21, scope: !1666)
!1666 = !DILexicalBlockFile(scope: !1667, file: !631, discriminator: 1)
!1667 = distinct !DILexicalBlock(scope: !1663, file: !631, line: 396, column: 2)
!1668 = !DILocation(line: 396, column: 14, scope: !1666)
!1669 = !DILocation(line: 396, column: 24, scope: !1666)
!1670 = !DILocation(line: 396, column: 28, scope: !1666)
!1671 = !DILocation(line: 396, column: 2, scope: !1666)
!1672 = !DILocation(line: 397, column: 14, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !631, line: 397, column: 7)
!1674 = distinct !DILexicalBlock(scope: !1667, file: !631, line: 396, column: 39)
!1675 = !DILocation(line: 397, column: 7, scope: !1673)
!1676 = !DILocation(line: 397, column: 17, scope: !1673)
!1677 = !DILocation(line: 397, column: 24, scope: !1673)
!1678 = !DILocation(line: 397, column: 21, scope: !1673)
!1679 = !DILocation(line: 397, column: 7, scope: !1674)
!1680 = !DILocation(line: 398, column: 11, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1673, file: !631, line: 397, column: 29)
!1682 = !DILocation(line: 398, column: 4, scope: !1681)
!1683 = !DILocation(line: 398, column: 14, scope: !1681)
!1684 = !DILocation(line: 398, column: 19, scope: !1681)
!1685 = !DILocation(line: 398, column: 27, scope: !1681)
!1686 = !DILocation(line: 399, column: 4, scope: !1681)
!1687 = !DILocation(line: 401, column: 2, scope: !1674)
!1688 = !DILocation(line: 396, column: 35, scope: !1689)
!1689 = !DILexicalBlockFile(scope: !1667, file: !631, discriminator: 2)
!1690 = !DILocation(line: 396, column: 2, scope: !1689)
!1691 = distinct !{!1691, !1692}
!1692 = !DILocation(line: 396, column: 2, scope: !1650)
!1693 = !DILocation(line: 403, column: 22, scope: !1650)
!1694 = !DILocation(line: 403, column: 30, scope: !1650)
!1695 = !DILocation(line: 403, column: 2, scope: !1650)
!1696 = !DILocation(line: 404, column: 1, scope: !1650)
!1697 = !DILocation(line: 404, column: 1, scope: !1698)
!1698 = !DILexicalBlockFile(scope: !1650, file: !631, discriminator: 1)
!1699 = distinct !DISubprogram(name: "event_end_of_whois", scope: !631, file: !631, line: 317, type: !638, isLocal: true, isDefinition: true, scopeLine: 318, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !854)
!1700 = !DILocalVariable(name: "server", arg: 1, scope: !1699, file: !631, line: 317, type: !640)
!1701 = !DILocation(line: 317, column: 48, scope: !1699)
!1702 = !DILocalVariable(name: "data", arg: 2, scope: !1699, file: !631, line: 317, type: !205)
!1703 = !DILocation(line: 317, column: 68, scope: !1699)
!1704 = !DILocalVariable(name: "params", scope: !1699, file: !631, line: 319, type: !228)
!1705 = !DILocation(line: 319, column: 8, scope: !1699)
!1706 = !DILocalVariable(name: "nick", scope: !1699, file: !631, line: 319, type: !228)
!1707 = !DILocation(line: 319, column: 17, scope: !1699)
!1708 = !DILocation(line: 321, column: 2, scope: !1699)
!1709 = distinct !{!1709, !1708}
!1710 = !DILocation(line: 321, column: 10, scope: !1711)
!1711 = !DILexicalBlockFile(scope: !1712, file: !631, discriminator: 1)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !631, line: 321, column: 10)
!1713 = distinct !DILexicalBlock(scope: !1699, file: !631, line: 321, column: 4)
!1714 = !DILocation(line: 321, column: 15, scope: !1711)
!1715 = !DILocation(line: 321, column: 5, scope: !1716)
!1716 = !DILexicalBlockFile(scope: !1717, file: !631, discriminator: 2)
!1717 = distinct !DILexicalBlock(scope: !1712, file: !631, line: 321, column: 3)
!1718 = !DILocation(line: 321, column: 14, scope: !1719)
!1719 = !DILexicalBlockFile(scope: !1720, file: !631, discriminator: 3)
!1720 = distinct !DILexicalBlock(scope: !1712, file: !631, line: 321, column: 12)
!1721 = !DILocation(line: 321, column: 99, scope: !1719)
!1722 = !DILocation(line: 321, column: 110, scope: !1723)
!1723 = !DILexicalBlockFile(scope: !1713, file: !631, discriminator: 4)
!1724 = !DILocation(line: 323, column: 28, scope: !1699)
!1725 = !DILocation(line: 323, column: 11, scope: !1699)
!1726 = !DILocation(line: 323, column: 9, scope: !1699)
!1727 = !DILocation(line: 324, column: 6, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1699, file: !631, line: 324, column: 6)
!1729 = !DILocation(line: 324, column: 14, scope: !1728)
!1730 = !DILocation(line: 324, column: 6, scope: !1699)
!1731 = !DILocation(line: 325, column: 39, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1728, file: !631, line: 324, column: 27)
!1733 = !DILocation(line: 325, column: 47, scope: !1732)
!1734 = !DILocation(line: 325, column: 89, scope: !1732)
!1735 = !DILocation(line: 325, column: 3, scope: !1732)
!1736 = !DILocation(line: 327, column: 2, scope: !1732)
!1737 = !DILocation(line: 328, column: 9, scope: !1699)
!1738 = !DILocation(line: 328, column: 2, scope: !1699)
!1739 = !DILocation(line: 329, column: 1, scope: !1699)
!1740 = !DILocation(line: 329, column: 1, scope: !1741)
!1741 = !DILexicalBlockFile(scope: !1699, file: !631, discriminator: 1)
!1742 = distinct !DISubprogram(name: "event_whowas", scope: !631, file: !631, line: 343, type: !638, isLocal: true, isDefinition: true, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !854)
!1743 = !DILocalVariable(name: "server", arg: 1, scope: !1742, file: !631, line: 343, type: !640)
!1744 = !DILocation(line: 343, column: 42, scope: !1742)
!1745 = !DILocalVariable(name: "data", arg: 2, scope: !1742, file: !631, line: 343, type: !205)
!1746 = !DILocation(line: 343, column: 62, scope: !1742)
!1747 = !DILocalVariable(name: "params", scope: !1742, file: !631, line: 345, type: !228)
!1748 = !DILocation(line: 345, column: 8, scope: !1742)
!1749 = !DILocalVariable(name: "nick", scope: !1742, file: !631, line: 345, type: !228)
!1750 = !DILocation(line: 345, column: 17, scope: !1742)
!1751 = !DILocalVariable(name: "user", scope: !1742, file: !631, line: 345, type: !228)
!1752 = !DILocation(line: 345, column: 24, scope: !1742)
!1753 = !DILocalVariable(name: "host", scope: !1742, file: !631, line: 345, type: !228)
!1754 = !DILocation(line: 345, column: 31, scope: !1742)
!1755 = !DILocalVariable(name: "realname", scope: !1742, file: !631, line: 345, type: !228)
!1756 = !DILocation(line: 345, column: 38, scope: !1742)
!1757 = !DILocalVariable(name: "recoded", scope: !1742, file: !631, line: 345, type: !228)
!1758 = !DILocation(line: 345, column: 49, scope: !1742)
!1759 = !DILocation(line: 347, column: 2, scope: !1742)
!1760 = distinct !{!1760, !1759}
!1761 = !DILocation(line: 347, column: 10, scope: !1762)
!1762 = !DILexicalBlockFile(scope: !1763, file: !631, discriminator: 1)
!1763 = distinct !DILexicalBlock(scope: !1764, file: !631, line: 347, column: 10)
!1764 = distinct !DILexicalBlock(scope: !1742, file: !631, line: 347, column: 4)
!1765 = !DILocation(line: 347, column: 15, scope: !1762)
!1766 = !DILocation(line: 347, column: 5, scope: !1767)
!1767 = !DILexicalBlockFile(scope: !1768, file: !631, discriminator: 2)
!1768 = distinct !DILexicalBlock(scope: !1763, file: !631, line: 347, column: 3)
!1769 = !DILocation(line: 347, column: 14, scope: !1770)
!1770 = !DILexicalBlockFile(scope: !1771, file: !631, discriminator: 3)
!1771 = distinct !DILexicalBlock(scope: !1763, file: !631, line: 347, column: 12)
!1772 = !DILocation(line: 347, column: 99, scope: !1770)
!1773 = !DILocation(line: 347, column: 110, scope: !1774)
!1774 = !DILexicalBlockFile(scope: !1764, file: !631, discriminator: 4)
!1775 = !DILocation(line: 349, column: 28, scope: !1742)
!1776 = !DILocation(line: 349, column: 11, scope: !1742)
!1777 = !DILocation(line: 349, column: 9, scope: !1742)
!1778 = !DILocation(line: 351, column: 56, scope: !1742)
!1779 = !DILocation(line: 351, column: 38, scope: !1742)
!1780 = !DILocation(line: 351, column: 23, scope: !1742)
!1781 = !DILocation(line: 351, column: 35, scope: !1742)
!1782 = !DILocation(line: 351, column: 45, scope: !1742)
!1783 = !DILocation(line: 351, column: 12, scope: !1784)
!1784 = !DILexicalBlockFile(scope: !1742, file: !631, discriminator: 1)
!1785 = !DILocation(line: 351, column: 10, scope: !1742)
!1786 = !DILocation(line: 352, column: 38, scope: !1742)
!1787 = !DILocation(line: 352, column: 46, scope: !1742)
!1788 = !DILocation(line: 352, column: 82, scope: !1742)
!1789 = !DILocation(line: 352, column: 88, scope: !1742)
!1790 = !DILocation(line: 352, column: 94, scope: !1742)
!1791 = !DILocation(line: 352, column: 100, scope: !1742)
!1792 = !DILocation(line: 352, column: 2, scope: !1742)
!1793 = !DILocation(line: 354, column: 9, scope: !1742)
!1794 = !DILocation(line: 354, column: 2, scope: !1742)
!1795 = !DILocation(line: 355, column: 9, scope: !1742)
!1796 = !DILocation(line: 355, column: 2, scope: !1742)
!1797 = !DILocation(line: 356, column: 1, scope: !1742)
!1798 = !DILocation(line: 356, column: 1, scope: !1784)
!1799 = distinct !DISubprogram(name: "event_end_of_whowas", scope: !631, file: !631, line: 358, type: !638, isLocal: true, isDefinition: true, scopeLine: 359, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !854)
!1800 = !DILocalVariable(name: "server", arg: 1, scope: !1799, file: !631, line: 358, type: !640)
!1801 = !DILocation(line: 358, column: 49, scope: !1799)
!1802 = !DILocalVariable(name: "data", arg: 2, scope: !1799, file: !631, line: 358, type: !205)
!1803 = !DILocation(line: 358, column: 69, scope: !1799)
!1804 = !DILocalVariable(name: "params", scope: !1799, file: !631, line: 360, type: !228)
!1805 = !DILocation(line: 360, column: 8, scope: !1799)
!1806 = !DILocalVariable(name: "nick", scope: !1799, file: !631, line: 360, type: !228)
!1807 = !DILocation(line: 360, column: 17, scope: !1799)
!1808 = !DILocation(line: 362, column: 2, scope: !1799)
!1809 = distinct !{!1809, !1808}
!1810 = !DILocation(line: 362, column: 10, scope: !1811)
!1811 = !DILexicalBlockFile(scope: !1812, file: !631, discriminator: 1)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !631, line: 362, column: 10)
!1813 = distinct !DILexicalBlock(scope: !1799, file: !631, line: 362, column: 4)
!1814 = !DILocation(line: 362, column: 15, scope: !1811)
!1815 = !DILocation(line: 362, column: 5, scope: !1816)
!1816 = !DILexicalBlockFile(scope: !1817, file: !631, discriminator: 2)
!1817 = distinct !DILexicalBlock(scope: !1812, file: !631, line: 362, column: 3)
!1818 = !DILocation(line: 362, column: 14, scope: !1819)
!1819 = !DILexicalBlockFile(scope: !1820, file: !631, discriminator: 3)
!1820 = distinct !DILexicalBlock(scope: !1812, file: !631, line: 362, column: 12)
!1821 = !DILocation(line: 362, column: 99, scope: !1819)
!1822 = !DILocation(line: 362, column: 110, scope: !1823)
!1823 = !DILexicalBlockFile(scope: !1813, file: !631, discriminator: 4)
!1824 = !DILocation(line: 364, column: 28, scope: !1799)
!1825 = !DILocation(line: 364, column: 11, scope: !1799)
!1826 = !DILocation(line: 364, column: 9, scope: !1799)
!1827 = !DILocation(line: 365, column: 6, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1799, file: !631, line: 365, column: 6)
!1829 = !DILocation(line: 365, column: 14, scope: !1828)
!1830 = !DILocation(line: 365, column: 6, scope: !1799)
!1831 = !DILocation(line: 366, column: 39, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1828, file: !631, line: 365, column: 28)
!1833 = !DILocation(line: 366, column: 47, scope: !1832)
!1834 = !DILocation(line: 366, column: 90, scope: !1832)
!1835 = !DILocation(line: 366, column: 3, scope: !1832)
!1836 = !DILocation(line: 368, column: 2, scope: !1832)
!1837 = !DILocation(line: 369, column: 9, scope: !1799)
!1838 = !DILocation(line: 369, column: 2, scope: !1799)
!1839 = !DILocation(line: 370, column: 1, scope: !1799)
!1840 = !DILocation(line: 370, column: 1, scope: !1841)
!1841 = !DILexicalBlockFile(scope: !1799, file: !631, discriminator: 1)
!1842 = distinct !DISubprogram(name: "fe_whois_deinit", scope: !631, file: !631, line: 433, type: !365, isLocal: false, isDefinition: true, scopeLine: 434, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !854)
!1843 = !DILocation(line: 435, column: 2, scope: !1842)
!1844 = !DILocation(line: 436, column: 2, scope: !1842)
!1845 = !DILocation(line: 437, column: 2, scope: !1842)
!1846 = !DILocation(line: 438, column: 2, scope: !1842)
!1847 = !DILocation(line: 439, column: 2, scope: !1842)
!1848 = !DILocation(line: 440, column: 2, scope: !1842)
!1849 = !DILocation(line: 441, column: 2, scope: !1842)
!1850 = !DILocation(line: 442, column: 2, scope: !1842)
!1851 = !DILocation(line: 443, column: 2, scope: !1842)
!1852 = !DILocation(line: 444, column: 2, scope: !1842)
!1853 = !DILocation(line: 445, column: 2, scope: !1842)
!1854 = !DILocation(line: 446, column: 2, scope: !1842)
!1855 = !DILocation(line: 447, column: 2, scope: !1842)
!1856 = !DILocation(line: 448, column: 2, scope: !1842)
!1857 = !DILocation(line: 449, column: 2, scope: !1842)
!1858 = !DILocation(line: 450, column: 2, scope: !1842)
!1859 = !DILocation(line: 451, column: 2, scope: !1842)
!1860 = !DILocation(line: 452, column: 2, scope: !1842)
!1861 = !DILocation(line: 453, column: 2, scope: !1842)
!1862 = !DILocation(line: 454, column: 1, scope: !1842)
!1863 = distinct !DISubprogram(name: "hide_safe_channel_id", scope: !631, file: !631, line: 232, type: !1864, isLocal: true, isDefinition: true, scopeLine: 233, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !854)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{null, !640, !228}
!1866 = !DILocalVariable(name: "server", arg: 1, scope: !1863, file: !631, line: 232, type: !640)
!1867 = !DILocation(line: 232, column: 50, scope: !1863)
!1868 = !DILocalVariable(name: "chans", arg: 2, scope: !1863, file: !631, line: 232, type: !228)
!1869 = !DILocation(line: 232, column: 64, scope: !1863)
!1870 = !DILocalVariable(name: "idchan", scope: !1863, file: !631, line: 234, type: !205)
!1871 = !DILocation(line: 234, column: 14, scope: !1863)
!1872 = !DILocalVariable(name: "nick_flags", scope: !1863, file: !631, line: 234, type: !205)
!1873 = !DILocation(line: 234, column: 23, scope: !1863)
!1874 = !DILocalVariable(name: "p", scope: !1863, file: !631, line: 235, type: !228)
!1875 = !DILocation(line: 235, column: 8, scope: !1863)
!1876 = !DILocalVariable(name: "dest", scope: !1863, file: !631, line: 235, type: !228)
!1877 = !DILocation(line: 235, column: 12, scope: !1863)
!1878 = !DILocalVariable(name: "end", scope: !1863, file: !631, line: 235, type: !228)
!1879 = !DILocation(line: 235, column: 19, scope: !1863)
!1880 = !DILocalVariable(name: "id", scope: !1863, file: !631, line: 235, type: !204)
!1881 = !DILocation(line: 235, column: 24, scope: !1863)
!1882 = !DILocalVariable(name: "count", scope: !1863, file: !631, line: 236, type: !215)
!1883 = !DILocation(line: 236, column: 6, scope: !1863)
!1884 = !DILocalVariable(name: "length", scope: !1863, file: !631, line: 236, type: !215)
!1885 = !DILocation(line: 236, column: 13, scope: !1863)
!1886 = !DILocalVariable(name: "chanstart", scope: !1863, file: !631, line: 236, type: !215)
!1887 = !DILocation(line: 236, column: 21, scope: !1863)
!1888 = !DILocation(line: 238, column: 7, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1863, file: !631, line: 238, column: 6)
!1890 = !DILocation(line: 238, column: 15, scope: !1889)
!1891 = !DILocation(line: 238, column: 6, scope: !1863)
!1892 = !DILocation(line: 239, column: 10, scope: !1889)
!1893 = !DILocation(line: 239, column: 3, scope: !1889)
!1894 = !DILocation(line: 241, column: 32, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1889, file: !631, line: 240, column: 7)
!1896 = !DILocation(line: 241, column: 40, scope: !1895)
!1897 = !DILocation(line: 241, column: 12, scope: !1895)
!1898 = !DILocation(line: 241, column: 10, scope: !1895)
!1899 = !DILocation(line: 242, column: 7, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1895, file: !631, line: 242, column: 7)
!1901 = !DILocation(line: 242, column: 14, scope: !1900)
!1902 = !DILocation(line: 242, column: 7, scope: !1895)
!1903 = !DILocation(line: 243, column: 4, scope: !1900)
!1904 = !DILocation(line: 245, column: 15, scope: !1863)
!1905 = !DILocation(line: 245, column: 23, scope: !1863)
!1906 = !DILocation(line: 245, column: 72, scope: !1863)
!1907 = !DILocation(line: 245, column: 54, scope: !1863)
!1908 = !DILocation(line: 245, column: 39, scope: !1863)
!1909 = !DILocation(line: 245, column: 15, scope: !1910)
!1910 = !DILexicalBlockFile(scope: !1863, file: !631, discriminator: 1)
!1911 = !DILocation(line: 245, column: 13, scope: !1863)
!1912 = !DILocation(line: 247, column: 2, scope: !1863)
!1913 = !DILocation(line: 247, column: 10, scope: !1910)
!1914 = !DILocation(line: 247, column: 9, scope: !1910)
!1915 = !DILocation(line: 247, column: 17, scope: !1910)
!1916 = !DILocation(line: 247, column: 2, scope: !1910)
!1917 = !DILocation(line: 248, column: 9, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1863, file: !631, line: 247, column: 26)
!1919 = !DILocation(line: 248, column: 8, scope: !1918)
!1920 = !DILocation(line: 248, column: 6, scope: !1918)
!1921 = !DILocation(line: 249, column: 7, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1918, file: !631, line: 249, column: 7)
!1923 = !DILocation(line: 249, column: 17, scope: !1922)
!1924 = !DILocation(line: 249, column: 7, scope: !1918)
!1925 = !DILocation(line: 250, column: 4, scope: !1922)
!1926 = !DILocation(line: 252, column: 20, scope: !1918)
!1927 = !DILocation(line: 252, column: 26, scope: !1918)
!1928 = !DILocation(line: 252, column: 12, scope: !1918)
!1929 = !DILocation(line: 252, column: 10, scope: !1918)
!1930 = !DILocation(line: 253, column: 8, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1918, file: !631, line: 253, column: 7)
!1932 = !DILocation(line: 253, column: 7, scope: !1931)
!1933 = !DILocation(line: 253, column: 12, scope: !1931)
!1934 = !DILocation(line: 253, column: 7, scope: !1918)
!1935 = !DILocation(line: 254, column: 7, scope: !1931)
!1936 = !DILocation(line: 254, column: 4, scope: !1931)
!1937 = !DILocation(line: 255, column: 13, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1931, file: !631, line: 255, column: 12)
!1939 = !DILocation(line: 255, column: 12, scope: !1938)
!1940 = !DILocation(line: 255, column: 17, scope: !1938)
!1941 = !DILocation(line: 255, column: 12, scope: !1931)
!1942 = !DILocation(line: 256, column: 4, scope: !1938)
!1943 = !DILocation(line: 257, column: 12, scope: !1918)
!1944 = !DILocation(line: 257, column: 10, scope: !1918)
!1945 = !DILocation(line: 259, column: 9, scope: !1918)
!1946 = !DILocation(line: 260, column: 13, scope: !1918)
!1947 = !DILocation(line: 261, column: 19, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1918, file: !631, line: 261, column: 3)
!1949 = !DILocation(line: 261, column: 17, scope: !1948)
!1950 = !DILocation(line: 261, column: 13, scope: !1948)
!1951 = !DILocation(line: 261, column: 8, scope: !1948)
!1952 = !DILocation(line: 261, column: 27, scope: !1953)
!1953 = !DILexicalBlockFile(scope: !1954, file: !631, discriminator: 1)
!1954 = distinct !DILexicalBlock(scope: !1948, file: !631, line: 261, column: 3)
!1955 = !DILocation(line: 261, column: 26, scope: !1953)
!1956 = !DILocation(line: 261, column: 29, scope: !1953)
!1957 = !DILocation(line: 261, column: 3, scope: !1953)
!1958 = !DILocation(line: 262, column: 8, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !631, line: 262, column: 8)
!1960 = distinct !DILexicalBlock(scope: !1954, file: !631, line: 261, column: 43)
!1961 = !DILocation(line: 262, column: 14, scope: !1959)
!1962 = !DILocation(line: 262, column: 8, scope: !1960)
!1963 = !DILocation(line: 263, column: 10, scope: !1959)
!1964 = !DILocation(line: 263, column: 5, scope: !1959)
!1965 = !DILocation(line: 265, column: 10, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1967, file: !631, line: 265, column: 9)
!1967 = distinct !DILexicalBlock(scope: !1959, file: !631, line: 264, column: 9)
!1968 = !DILocation(line: 265, column: 9, scope: !1966)
!1969 = !DILocation(line: 265, column: 12, scope: !1966)
!1970 = !DILocation(line: 265, column: 9, scope: !1967)
!1971 = !DILocation(line: 266, column: 16, scope: !1966)
!1972 = !DILocation(line: 266, column: 6, scope: !1966)
!1973 = !DILocation(line: 268, column: 10, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !631, line: 268, column: 10)
!1975 = distinct !DILexicalBlock(scope: !1966, file: !631, line: 267, column: 10)
!1976 = !DILocation(line: 268, column: 20, scope: !1974)
!1977 = !DILocation(line: 268, column: 24, scope: !1978)
!1978 = !DILexicalBlockFile(scope: !1974, file: !631, discriminator: 1)
!1979 = !DILocation(line: 268, column: 23, scope: !1978)
!1980 = !DILocation(line: 268, column: 29, scope: !1978)
!1981 = !DILocation(line: 268, column: 26, scope: !1978)
!1982 = !DILocation(line: 268, column: 10, scope: !1978)
!1983 = !DILocation(line: 269, column: 15, scope: !1974)
!1984 = !DILocation(line: 269, column: 13, scope: !1974)
!1985 = !DILocation(line: 269, column: 7, scope: !1974)
!1986 = !DILocation(line: 270, column: 18, scope: !1975)
!1987 = !DILocation(line: 270, column: 28, scope: !1975)
!1988 = !DILocation(line: 270, column: 38, scope: !1989)
!1989 = !DILexicalBlockFile(scope: !1975, file: !631, discriminator: 1)
!1990 = !DILocation(line: 270, column: 51, scope: !1989)
!1991 = !DILocation(line: 270, column: 50, scope: !1989)
!1992 = !DILocation(line: 270, column: 31, scope: !1989)
!1993 = !DILocation(line: 270, column: 28, scope: !1989)
!1994 = !DILocation(line: 270, column: 28, scope: !1995)
!1995 = !DILexicalBlockFile(scope: !1975, file: !631, discriminator: 2)
!1996 = !DILocation(line: 270, column: 16, scope: !1995)
!1997 = !DILocation(line: 272, column: 16, scope: !1967)
!1998 = !DILocation(line: 272, column: 15, scope: !1967)
!1999 = !DILocation(line: 272, column: 10, scope: !1967)
!2000 = !DILocation(line: 272, column: 13, scope: !1967)
!2001 = !DILocation(line: 274, column: 3, scope: !1960)
!2002 = !DILocation(line: 261, column: 39, scope: !2003)
!2003 = !DILexicalBlockFile(scope: !1954, file: !631, discriminator: 2)
!2004 = !DILocation(line: 261, column: 3, scope: !2003)
!2005 = distinct !{!2005, !2006}
!2006 = !DILocation(line: 261, column: 3, scope: !1918)
!2007 = !DILocation(line: 275, column: 4, scope: !1918)
!2008 = !DILocation(line: 275, column: 9, scope: !1918)
!2009 = !DILocation(line: 247, column: 2, scope: !2010)
!2010 = !DILexicalBlockFile(scope: !1863, file: !631, discriminator: 2)
!2011 = distinct !{!2011, !1912}
!2012 = !DILocation(line: 277, column: 1, scope: !1863)
!2013 = distinct !DISubprogram(name: "event_whois_special", scope: !631, file: !631, line: 30, type: !638, isLocal: true, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !854)
!2014 = !DILocalVariable(name: "server", arg: 1, scope: !2013, file: !631, line: 30, type: !640)
!2015 = !DILocation(line: 30, column: 49, scope: !2013)
!2016 = !DILocalVariable(name: "data", arg: 2, scope: !2013, file: !631, line: 30, type: !205)
!2017 = !DILocation(line: 30, column: 69, scope: !2013)
!2018 = !DILocalVariable(name: "params", scope: !2013, file: !631, line: 32, type: !228)
!2019 = !DILocation(line: 32, column: 8, scope: !2013)
!2020 = !DILocalVariable(name: "nick", scope: !2013, file: !631, line: 32, type: !228)
!2021 = !DILocation(line: 32, column: 17, scope: !2013)
!2022 = !DILocalVariable(name: "str", scope: !2013, file: !631, line: 32, type: !228)
!2023 = !DILocation(line: 32, column: 24, scope: !2013)
!2024 = !DILocation(line: 34, column: 2, scope: !2013)
!2025 = distinct !{!2025, !2024}
!2026 = !DILocation(line: 34, column: 10, scope: !2027)
!2027 = !DILexicalBlockFile(scope: !2028, file: !631, discriminator: 1)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !631, line: 34, column: 10)
!2029 = distinct !DILexicalBlock(scope: !2013, file: !631, line: 34, column: 4)
!2030 = !DILocation(line: 34, column: 15, scope: !2027)
!2031 = !DILocation(line: 34, column: 5, scope: !2032)
!2032 = !DILexicalBlockFile(scope: !2033, file: !631, discriminator: 2)
!2033 = distinct !DILexicalBlock(scope: !2028, file: !631, line: 34, column: 3)
!2034 = !DILocation(line: 34, column: 14, scope: !2035)
!2035 = !DILexicalBlockFile(scope: !2036, file: !631, discriminator: 3)
!2036 = distinct !DILexicalBlock(scope: !2028, file: !631, line: 34, column: 12)
!2037 = !DILocation(line: 34, column: 99, scope: !2035)
!2038 = !DILocation(line: 34, column: 110, scope: !2039)
!2039 = !DILexicalBlockFile(scope: !2029, file: !631, discriminator: 4)
!2040 = !DILocation(line: 36, column: 28, scope: !2013)
!2041 = !DILocation(line: 36, column: 11, scope: !2013)
!2042 = !DILocation(line: 36, column: 9, scope: !2013)
!2043 = !DILocation(line: 37, column: 38, scope: !2013)
!2044 = !DILocation(line: 37, column: 46, scope: !2013)
!2045 = !DILocation(line: 37, column: 89, scope: !2013)
!2046 = !DILocation(line: 37, column: 95, scope: !2013)
!2047 = !DILocation(line: 37, column: 2, scope: !2013)
!2048 = !DILocation(line: 39, column: 9, scope: !2013)
!2049 = !DILocation(line: 39, column: 2, scope: !2013)
!2050 = !DILocation(line: 40, column: 1, scope: !2013)
!2051 = !DILocation(line: 40, column: 1, scope: !2052)
!2052 = !DILexicalBlockFile(scope: !2013, file: !631, discriminator: 1)
