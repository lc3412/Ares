; ModuleID = './line125-irc-commands.o.i'
source_filename = "./line125-irc-commands.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GString = type { i8*, i64, i64 }
%struct._GSList = type { i8*, %struct._GSList* }
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
%struct._NICK_REC = type { i32, i32, i64, i8*, i8*, i8*, i32, i8, [8 x i8], i8*, %struct._NICK_REC* }
%struct._QUERY_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, i8 }
%struct._REDIRECT_REC = type opaque
%struct._GTimeVal = type { i64, i64 }
%struct._GHashTable = type opaque
%struct.modes_type = type { void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, i8 }
%struct._IRC_CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._IRC_SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)*, %struct._GSList*, i64, i32, i32 }
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, {}*, i8* (%struct._WI_ITEM_REC*)* }
%struct.KNOCKOUT_REC = type { %struct._IRC_CHANNEL_REC*, i8*, i64 }

@tmpstr = internal global %struct._GString* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"irc/core\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"part_message\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"knockout_time\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"5min\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"wall_format\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"[Wall/$0] $1-\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"kick_first_on_kickban\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"auto_whowas\00", align 1
@knockout_tag = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"notice\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"IRC\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"ctcp\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"nctcp\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"part\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"kick\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"topic\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"invite\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"who\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"names\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"nick\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"whois\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"whowas\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"ping\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"kill\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"away\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"ison\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"admin\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"knock\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"links\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"lusers\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"map\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"motd\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"rehash\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"servlist\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"silence\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"unsilence\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"sconnect\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"squery\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"die\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"oper\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"restart\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"squit\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"userhost\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"quote\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"wall\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"wait\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"wallops\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"kickban\00", align 1
@.str.57 = private unnamed_addr constant [9 x i8] c"knockout\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"server purge\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c"channel destroyed\00", align 1
@.str.60 = private unnamed_addr constant [20 x i8] c"server disconnected\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"whois try whowas\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"whois event\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"whois end\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"whowas event\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"+ircnet\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.68 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"one all\00", align 1
@servers = external global %struct._GSList*, align 8
@__func__.knockout_timeout_server = private unnamed_addr constant [24 x i8] c"knockout_timeout_server\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"server != NULL\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"command unban\00", align 1
@.str.73 = private unnamed_addr constant [14 x i8] c"error command\00", align 1
@.str.74 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.75 = private unnamed_addr constant [14 x i8] c"NOTICE %s :%s\00", align 1
@.str.76 = private unnamed_addr constant [17 x i8] c"PRIVMSG %s :\01%s\01\00", align 1
@.str.77 = private unnamed_addr constant [20 x i8] c"PRIVMSG %s :\01%s %s\01\00", align 1
@.str.78 = private unnamed_addr constant [19 x i8] c"NOTICE %s :\01%s %s\01\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"PART %s\00", align 1
@.str.80 = private unnamed_addr constant [12 x i8] c"PART %s :%s\00", align 1
@.str.81 = private unnamed_addr constant [15 x i8] c"KICK %s %s :%s\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"TOPIC %s\00", align 1
@.str.83 = private unnamed_addr constant [13 x i8] c"TOPIC %s :%s\00", align 1
@.str.84 = private unnamed_addr constant [17 x i8] c"WINDOW ITEM TYPE\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"CHANNEL\00", align 1
@.str.86 = private unnamed_addr constant [13 x i8] c"INVITE %s %s\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"LIST %s\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"**\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"WHO %s\00", align 1
@.str.90 = private unnamed_addr constant [10 x i8] c"WHO %s %s\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"NAMES\00", align 1
@.str.92 = private unnamed_addr constant [9 x i8] c"NAMES %s\00", align 1
@__func__.cmd_nick = private unnamed_addr constant [9 x i8] c"cmd_nick\00", align 1
@.str.93 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@.str.94 = private unnamed_addr constant [8 x i8] c"NICK %s\00", align 1
@.str.95 = private unnamed_addr constant [6 x i8] c"QUERY\00", align 1
@.str.96 = private unnamed_addr constant [10 x i8] c"event 402\00", align 1
@.str.97 = private unnamed_addr constant [9 x i8] c"WHOIS %s\00", align 1
@.str.98 = private unnamed_addr constant [12 x i8] c"WHOIS %s %s\00", align 1
@.str.99 = private unnamed_addr constant [22 x i8] c"whois event not found\00", align 1
@.str.100 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.101 = private unnamed_addr constant [10 x i8] c"event 318\00", align 1
@.str.102 = private unnamed_addr constant [10 x i8] c"event 301\00", align 1
@.str.103 = private unnamed_addr constant [11 x i8] c"whois away\00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c"event 313\00", align 1
@.str.105 = private unnamed_addr constant [11 x i8] c"whois oper\00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c"event 401\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"event 311\00", align 1
@.str.108 = private unnamed_addr constant [20 x i8] c"whois default event\00", align 1
@.str.109 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.110 = private unnamed_addr constant [12 x i8] c"whowas away\00", align 1
@.str.111 = private unnamed_addr constant [10 x i8] c"event 314\00", align 1
@.str.112 = private unnamed_addr constant [10 x i8] c"WHOWAS %s\00", align 1
@.str.113 = private unnamed_addr constant [13 x i8] c"WHOWAS %s %s\00", align 1
@.str.114 = private unnamed_addr constant [16 x i8] c"%s PING %ld %ld\00", align 1
@.str.115 = private unnamed_addr constant [13 x i8] c"command ctcp\00", align 1
@.str.116 = private unnamed_addr constant [10 x i8] c"%s %s :%s\00", align 1
@current_command = external global i8*, align 8
@.str.117 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@__func__.command_1self = private unnamed_addr constant [14 x i8] c"command_1self\00", align 1
@.str.118 = private unnamed_addr constant [7 x i8] c"%s :%s\00", align 1
@.str.119 = private unnamed_addr constant [9 x i8] c"ACCEPT *\00", align 1
@.str.120 = private unnamed_addr constant [10 x i8] c"ACCEPT %s\00", align 1
@.str.121 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.122 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.123 = private unnamed_addr constant [12 x i8] c"SILENCE -%s\00", align 1
@.str.124 = private unnamed_addr constant [11 x i8] c"CONNECT %s\00", align 1
@.str.125 = private unnamed_addr constant [11 x i8] c"OPER %s %s\00", align 1
@.str.126 = private unnamed_addr constant [10 x i8] c"statusmsg\00", align 1
@.str.127 = private unnamed_addr constant [10 x i8] c"wallchops\00", align 1
@.str.128 = private unnamed_addr constant [15 x i8] c"NOTICE @%s :%s\00", align 1
@.str.129 = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@.str.130 = private unnamed_addr constant [13 x i8] c"command kick\00", align 1
@.str.131 = private unnamed_addr constant [12 x i8] c"command ban\00", align 1
@__func__.sig_server_disconnected = private unnamed_addr constant [24 x i8] c"sig_server_disconnected\00", align 1
@__func__.sig_whois_try_whowas = private unnamed_addr constant [21 x i8] c"sig_whois_try_whowas\00", align 1
@.str.132 = private unnamed_addr constant [10 x i8] c"event 369\00", align 1
@.str.133 = private unnamed_addr constant [17 x i8] c"whowas event end\00", align 1
@.str.134 = private unnamed_addr constant [10 x i8] c"event 406\00", align 1
@.str.135 = private unnamed_addr constant [12 x i8] c"event empty\00", align 1
@.str.136 = private unnamed_addr constant [12 x i8] c"WHOWAS %s 1\00", align 1

; Function Attrs: nounwind uwtable
define void @irc_commands_init() #0 !dbg !759 {
  %1 = call %struct._GString* @g_string_new(i8* null), !dbg !761
  store %struct._GString* %1, %struct._GString** @tmpstr, align 8, !dbg !762
  call void @settings_add_str_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0)), !dbg !763
  call void @settings_add_time_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)), !dbg !764
  call void @settings_add_str_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0)), !dbg !765
  call void @settings_add_bool_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i32 0), !dbg !766
  call void @settings_add_bool_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i32 1), !dbg !767
  %2 = call i32 @g_timeout_add(i32 10000, i32 (i8*)* bitcast (i32 ()* @knockout_timeout to i32 (i8*)*), i8* null), !dbg !768
  store i32 %2, i32* @knockout_tag, align 4, !dbg !769
  %3 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !770
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 %3, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_notice to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !771
  %4 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !773
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 %4, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_ctcp to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !774
  %5 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !775
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 %5, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_nctcp to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !776
  %6 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !777
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 %6, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_part to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !778
  %7 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !779
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 %7, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_kick to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !780
  %8 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !781
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %8, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_topic to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !782
  %9 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !783
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i32 %9, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_invite to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !784
  %10 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !785
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i32 %10, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_list to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !786
  %11 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !787
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i32 %11, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_who to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !788
  %12 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !789
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 %12, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_names to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !790
  %13 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !791
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32 %13, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_nick to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !792
  %14 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !793
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 %14, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_whois to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !794
  %15 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !795
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i32 %15, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @cmd_whowas to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !796
  %16 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !797
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i32 %16, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_ping to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !798
  %17 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !799
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i32 %17, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_2self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !800
  %18 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !801
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i32 %18, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @cmd_away to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !802
  %19 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !803
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i32 %19, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_1self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !804
  %20 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !805
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), i32 %20, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @cmd_accept to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !806
  %21 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !807
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %21, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !808
  %22 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !809
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i32 %22, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !810
  %23 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !811
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 %23, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !812
  %24 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !813
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 %24, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !814
  %25 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !815
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i32 %25, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !816
  %26 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !817
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), i32 %26, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !818
  %27 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !819
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i32 %27, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !820
  %28 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !821
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i32 %28, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !822
  %29 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !823
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 %29, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !824
  %30 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !825
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32 %30, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !826
  %31 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !827
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32 %31, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !828
  %32 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !829
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i32 %32, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !830
  %33 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !831
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i32 %33, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !832
  %34 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !833
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), i32 %34, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !834
  %35 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !835
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i32 %35, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @cmd_unsilence to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !836
  %36 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !837
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), i32 %36, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @cmd_sconnect to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !838
  %37 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !839
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i32 %37, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_2self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !840
  %38 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !841
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0), i32 %38, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !842
  %39 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !843
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 %39, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !844
  %40 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !845
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), i32 %40, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @cmd_oper to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !846
  %41 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !847
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), i32 %41, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !848
  %42 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !849
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i32 %42, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_2self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !850
  %43 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !851
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), i32 %43, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !852
  %44 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !853
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i32 %44, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @cmd_quote to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !854
  %45 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !855
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i32 %45, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_wall to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !856
  %46 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !857
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), i32 %46, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @cmd_wait to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !858
  %47 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !859
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i32 %47, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_1self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !860
  %48 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !861
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i32 %48, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_kickban to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !862
  %49 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !863
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), i32 %49, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._IRC_CHANNEL_REC*)* @cmd_knockout to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !864
  %50 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !865
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i32 0, i32 0), i32 %50, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @cmd_server_purge to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !866
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.59, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_CHANNEL_REC*)* @sig_channel_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !867
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.60, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @sig_server_disconnected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !868
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.61, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @sig_whois_try_whowas to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !869
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_whois to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !870
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_end_of_whois to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !871
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.64, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_whowas to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !872
  call void @command_set_options_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i32 0, i32 0)), !dbg !873
  call void @command_set_options_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i32 0, i32 0)), !dbg !874
  call void @command_set_options_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0)), !dbg !875
  call void @command_set_options_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0)), !dbg !876
  call void @command_set_options_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0)), !dbg !877
  ret void, !dbg !878
}

declare %struct._GString* @g_string_new(i8*) #1

declare void @settings_add_str_module(i8*, i8*, i8*, i8*) #1

declare void @settings_add_time_module(i8*, i8*, i8*, i8*) #1

declare void @settings_add_bool_module(i8*, i8*, i8*, i32) #1

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @knockout_timeout() #0 !dbg !879 {
  %1 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !882
  call void @g_slist_foreach(%struct._GSList* %1, void (i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @knockout_timeout_server to void (i8*, i8*)*), i8* null), !dbg !883
  ret i32 1, !dbg !884
}

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare i32 @chat_protocol_lookup(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @cmd_notice(i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !885 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !888, metadata !889), !dbg !890
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !891, metadata !889), !dbg !892
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !893, metadata !889), !dbg !894
  call void @llvm.dbg.declare(metadata i8** %7, metadata !895, metadata !889), !dbg !896
  call void @llvm.dbg.declare(metadata i8** %8, metadata !897, metadata !889), !dbg !898
  call void @llvm.dbg.declare(metadata i8** %9, metadata !899, metadata !889), !dbg !900
  call void @llvm.dbg.declare(metadata i8** %10, metadata !901, metadata !889), !dbg !902
  br label %11, !dbg !903, !llvm.loop !904

; <label>:11:                                     ; preds = %3
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !905
  %13 = icmp ne %struct._IRC_SERVER_REC* %12, null, !dbg !909
  br i1 %13, label %14, label %26, !dbg !910

; <label>:14:                                     ; preds = %11
  %15 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !911
  %16 = bitcast %struct._IRC_SERVER_REC* %15 to i8*, !dbg !911
  %17 = call i8* @module_check_cast(i8* %16, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !913
  %18 = bitcast i8* %17 to %struct._SERVER_REC*, !dbg !914
  %19 = bitcast %struct._SERVER_REC* %18 to i8*, !dbg !915
  %20 = call i8* @chat_protocol_check_cast(i8* %19, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !916
  %21 = bitcast i8* %20 to %struct._IRC_SERVER_REC*, !dbg !918
  %22 = icmp ne %struct._IRC_SERVER_REC* %21, null, !dbg !918
  br i1 %22, label %23, label %24, !dbg !919

; <label>:23:                                     ; preds = %14
  br i1 false, label %25, label %26, !dbg !920

; <label>:24:                                     ; preds = %14
  br i1 false, label %26, label %25, !dbg !922

; <label>:25:                                     ; preds = %24, %23
  br label %102, !dbg !924

; <label>:26:                                     ; preds = %24, %23, %11
  %27 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !926
  %28 = icmp eq %struct._IRC_SERVER_REC* %27, null, !dbg !929
  br i1 %28, label %36, label %29, !dbg !930

; <label>:29:                                     ; preds = %26
  %30 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !931
  %31 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %30, i32 0, i32 8, !dbg !933
  %32 = load i8, i8* %31, align 8, !dbg !933
  %33 = and i8 %32, 1, !dbg !933
  %34 = zext i8 %33 to i32, !dbg !933
  %35 = icmp ne i32 %34, 0, !dbg !934
  br i1 %35, label %40, label %36, !dbg !935

; <label>:36:                                     ; preds = %29, %26
  br label %37, !dbg !936, !llvm.loop !938

; <label>:37:                                     ; preds = %36
  %38 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !940
  call void @signal_stop(), !dbg !943
  br label %102, !dbg !945
                                                  ; No predecessors!
  br label %40, !dbg !946

; <label>:40:                                     ; preds = %39, %29
  br label %41, !dbg !948

; <label>:41:                                     ; preds = %40
  %42 = load i8*, i8** %4, align 8, !dbg !950
  %43 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %42, i8** %10, i32 8194, i8** %7, i8** %8), !dbg !952
  %44 = icmp ne i32 %43, 0, !dbg !952
  br i1 %44, label %46, label %45, !dbg !953

; <label>:45:                                     ; preds = %41
  br label %102, !dbg !954

; <label>:46:                                     ; preds = %41
  %47 = load i8*, i8** %7, align 8, !dbg !955
  %48 = call i32 @g_strcmp0(i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.74, i32 0, i32 0)), !dbg !957
  %49 = icmp eq i32 %48, 0, !dbg !958
  br i1 %49, label %50, label %62, !dbg !959

; <label>:50:                                     ; preds = %46
  %51 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !960
  %52 = icmp eq %struct._WI_ITEM_REC* %51, null, !dbg !961
  br i1 %52, label %53, label %54, !dbg !960

; <label>:53:                                     ; preds = %50
  br label %60, !dbg !962

; <label>:54:                                     ; preds = %50
  %55 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !964
  %56 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %55, i32 0, i32 11, !dbg !966
  %57 = load i8* (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)** %56, align 8, !dbg !966
  %58 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !967
  %59 = call i8* %57(%struct._WI_ITEM_REC* %58), !dbg !968
  br label %60, !dbg !969

; <label>:60:                                     ; preds = %54, %53
  %61 = phi i8* [ null, %53 ], [ %59, %54 ], !dbg !970
  store i8* %61, i8** %7, align 8, !dbg !972
  br label %62, !dbg !973

; <label>:62:                                     ; preds = %60, %46
  %63 = load i8*, i8** %7, align 8, !dbg !974
  %64 = icmp eq i8* %63, null, !dbg !976
  br i1 %64, label %75, label %65, !dbg !977

; <label>:65:                                     ; preds = %62
  %66 = load i8*, i8** %7, align 8, !dbg !978
  %67 = load i8, i8* %66, align 1, !dbg !980
  %68 = sext i8 %67 to i32, !dbg !980
  %69 = icmp eq i32 %68, 0, !dbg !981
  br i1 %69, label %75, label %70, !dbg !982

; <label>:70:                                     ; preds = %65
  %71 = load i8*, i8** %8, align 8, !dbg !983
  %72 = load i8, i8* %71, align 1, !dbg !985
  %73 = sext i8 %72 to i32, !dbg !985
  %74 = icmp eq i32 %73, 0, !dbg !986
  br i1 %74, label %75, label %82, !dbg !987

; <label>:75:                                     ; preds = %70, %65, %62
  br label %76, !dbg !988, !llvm.loop !989

; <label>:76:                                     ; preds = %75
  %77 = load i8*, i8** %10, align 8, !dbg !990
  call void @cmd_params_free(i8* %77), !dbg !993
  br label %78, !dbg !994, !llvm.loop !995

; <label>:78:                                     ; preds = %76
  %79 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !997
  call void @signal_stop(), !dbg !1000
  br label %102, !dbg !1002
                                                  ; No predecessors!
  br label %81, !dbg !1003

; <label>:81:                                     ; preds = %80
  br label %82, !dbg !1005

; <label>:82:                                     ; preds = %81, %70
  %83 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1007
  %84 = bitcast %struct._IRC_SERVER_REC* %83 to i8*, !dbg !1007
  %85 = call i8* @module_check_cast(i8* %84, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !1008
  %86 = bitcast i8* %85 to %struct._SERVER_REC*, !dbg !1009
  %87 = load i8*, i8** %8, align 8, !dbg !1010
  %88 = load i8*, i8** %7, align 8, !dbg !1011
  %89 = call i8* @recode_out(%struct._SERVER_REC* %86, i8* %87, i8* %88), !dbg !1012
  store i8* %89, i8** %9, align 8, !dbg !1014
  %90 = load %struct._GString*, %struct._GString** @tmpstr, align 8, !dbg !1015
  %91 = load i8*, i8** %7, align 8, !dbg !1016
  %92 = load i8*, i8** %9, align 8, !dbg !1017
  call void (%struct._GString*, i8*, ...) @g_string_printf(%struct._GString* %90, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i32 0, i32 0), i8* %91, i8* %92), !dbg !1018
  %93 = load i8*, i8** %9, align 8, !dbg !1019
  call void @g_free(i8* %93), !dbg !1020
  %94 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1021
  %95 = load %struct._GString*, %struct._GString** @tmpstr, align 8, !dbg !1022
  %96 = getelementptr inbounds %struct._GString, %struct._GString* %95, i32 0, i32 0, !dbg !1023
  %97 = load i8*, i8** %96, align 8, !dbg !1023
  %98 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1024
  %99 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %98, i32 0, i32 49, !dbg !1025
  %100 = load i32, i32* %99, align 4, !dbg !1025
  call void @irc_send_cmd_split(%struct._IRC_SERVER_REC* %94, i8* %97, i32 2, i32 %100), !dbg !1026
  %101 = load i8*, i8** %10, align 8, !dbg !1027
  call void @cmd_params_free(i8* %101), !dbg !1028
  br label %102, !dbg !1029

; <label>:102:                                    ; preds = %82, %78, %45, %37, %25
  ret void, !dbg !1030
}

; Function Attrs: nounwind uwtable
define internal void @cmd_ctcp(i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !1031 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1032, metadata !889), !dbg !1033
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1034, metadata !889), !dbg !1035
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !1036, metadata !889), !dbg !1037
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1038, metadata !889), !dbg !1039
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1040, metadata !889), !dbg !1041
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1042, metadata !889), !dbg !1043
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1044, metadata !889), !dbg !1045
  br label %12, !dbg !1046, !llvm.loop !1047

; <label>:12:                                     ; preds = %3
  %13 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1048
  %14 = icmp ne %struct._IRC_SERVER_REC* %13, null, !dbg !1052
  br i1 %14, label %15, label %27, !dbg !1053

; <label>:15:                                     ; preds = %12
  %16 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1054
  %17 = bitcast %struct._IRC_SERVER_REC* %16 to i8*, !dbg !1054
  %18 = call i8* @module_check_cast(i8* %17, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !1056
  %19 = bitcast i8* %18 to %struct._SERVER_REC*, !dbg !1057
  %20 = bitcast %struct._SERVER_REC* %19 to i8*, !dbg !1058
  %21 = call i8* @chat_protocol_check_cast(i8* %20, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !1059
  %22 = bitcast i8* %21 to %struct._IRC_SERVER_REC*, !dbg !1061
  %23 = icmp ne %struct._IRC_SERVER_REC* %22, null, !dbg !1061
  br i1 %23, label %24, label %25, !dbg !1062

; <label>:24:                                     ; preds = %15
  br i1 false, label %26, label %27, !dbg !1063

; <label>:25:                                     ; preds = %15
  br i1 false, label %27, label %26, !dbg !1065

; <label>:26:                                     ; preds = %25, %24
  br label %116, !dbg !1067

; <label>:27:                                     ; preds = %25, %24, %12
  %28 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1069
  %29 = icmp eq %struct._IRC_SERVER_REC* %28, null, !dbg !1072
  br i1 %29, label %37, label %30, !dbg !1073

; <label>:30:                                     ; preds = %27
  %31 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1074
  %32 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %31, i32 0, i32 8, !dbg !1076
  %33 = load i8, i8* %32, align 8, !dbg !1076
  %34 = and i8 %33, 1, !dbg !1076
  %35 = zext i8 %34 to i32, !dbg !1076
  %36 = icmp ne i32 %35, 0, !dbg !1077
  br i1 %36, label %41, label %37, !dbg !1078

; <label>:37:                                     ; preds = %30, %27
  br label %38, !dbg !1079, !llvm.loop !1081

; <label>:38:                                     ; preds = %37
  %39 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !1083
  call void @signal_stop(), !dbg !1086
  br label %116, !dbg !1088
                                                  ; No predecessors!
  br label %41, !dbg !1089

; <label>:41:                                     ; preds = %40, %30
  br label %42, !dbg !1091

; <label>:42:                                     ; preds = %41
  %43 = load i8*, i8** %4, align 8, !dbg !1093
  %44 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %43, i8** %10, i32 8195, i8** %7, i8** %8, i8** %9), !dbg !1095
  %45 = icmp ne i32 %44, 0, !dbg !1095
  br i1 %45, label %47, label %46, !dbg !1096

; <label>:46:                                     ; preds = %42
  br label %116, !dbg !1097

; <label>:47:                                     ; preds = %42
  %48 = load i8*, i8** %7, align 8, !dbg !1098
  %49 = call i32 @g_strcmp0(i8* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.74, i32 0, i32 0)), !dbg !1100
  %50 = icmp eq i32 %49, 0, !dbg !1101
  br i1 %50, label %51, label %63, !dbg !1102

; <label>:51:                                     ; preds = %47
  %52 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1103
  %53 = icmp eq %struct._WI_ITEM_REC* %52, null, !dbg !1104
  br i1 %53, label %54, label %55, !dbg !1103

; <label>:54:                                     ; preds = %51
  br label %61, !dbg !1105

; <label>:55:                                     ; preds = %51
  %56 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1107
  %57 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %56, i32 0, i32 11, !dbg !1109
  %58 = load i8* (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)** %57, align 8, !dbg !1109
  %59 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1110
  %60 = call i8* %58(%struct._WI_ITEM_REC* %59), !dbg !1111
  br label %61, !dbg !1112

; <label>:61:                                     ; preds = %55, %54
  %62 = phi i8* [ null, %54 ], [ %60, %55 ], !dbg !1113
  store i8* %62, i8** %7, align 8, !dbg !1115
  br label %63, !dbg !1116

; <label>:63:                                     ; preds = %61, %47
  %64 = load i8*, i8** %7, align 8, !dbg !1117
  %65 = icmp eq i8* %64, null, !dbg !1119
  br i1 %65, label %76, label %66, !dbg !1120

; <label>:66:                                     ; preds = %63
  %67 = load i8*, i8** %7, align 8, !dbg !1121
  %68 = load i8, i8* %67, align 1, !dbg !1123
  %69 = sext i8 %68 to i32, !dbg !1123
  %70 = icmp eq i32 %69, 0, !dbg !1124
  br i1 %70, label %76, label %71, !dbg !1125

; <label>:71:                                     ; preds = %66
  %72 = load i8*, i8** %8, align 8, !dbg !1126
  %73 = load i8, i8* %72, align 1, !dbg !1128
  %74 = sext i8 %73 to i32, !dbg !1128
  %75 = icmp eq i32 %74, 0, !dbg !1129
  br i1 %75, label %76, label %83, !dbg !1130

; <label>:76:                                     ; preds = %71, %66, %63
  br label %77, !dbg !1131, !llvm.loop !1132

; <label>:77:                                     ; preds = %76
  %78 = load i8*, i8** %10, align 8, !dbg !1133
  call void @cmd_params_free(i8* %78), !dbg !1136
  br label %79, !dbg !1137, !llvm.loop !1138

; <label>:79:                                     ; preds = %77
  %80 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !1140
  call void @signal_stop(), !dbg !1143
  br label %116, !dbg !1145
                                                  ; No predecessors!
  br label %82, !dbg !1146

; <label>:82:                                     ; preds = %81
  br label %83, !dbg !1148

; <label>:83:                                     ; preds = %82, %71
  %84 = load i8*, i8** %8, align 8, !dbg !1150
  %85 = call i8* @ascii_strup(i8* %84), !dbg !1151
  %86 = load i8*, i8** %9, align 8, !dbg !1152
  %87 = load i8, i8* %86, align 1, !dbg !1154
  %88 = sext i8 %87 to i32, !dbg !1154
  %89 = icmp eq i32 %88, 0, !dbg !1155
  br i1 %89, label %90, label %94, !dbg !1156

; <label>:90:                                     ; preds = %83
  %91 = load %struct._GString*, %struct._GString** @tmpstr, align 8, !dbg !1157
  %92 = load i8*, i8** %7, align 8, !dbg !1158
  %93 = load i8*, i8** %8, align 8, !dbg !1159
  call void (%struct._GString*, i8*, ...) @g_string_printf(%struct._GString* %91, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.76, i32 0, i32 0), i8* %92, i8* %93), !dbg !1160
  br label %107, !dbg !1160

; <label>:94:                                     ; preds = %83
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1161, metadata !889), !dbg !1163
  %95 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1164
  %96 = bitcast %struct._IRC_SERVER_REC* %95 to i8*, !dbg !1164
  %97 = call i8* @module_check_cast(i8* %96, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !1165
  %98 = bitcast i8* %97 to %struct._SERVER_REC*, !dbg !1166
  %99 = load i8*, i8** %9, align 8, !dbg !1167
  %100 = load i8*, i8** %7, align 8, !dbg !1168
  %101 = call i8* @recode_out(%struct._SERVER_REC* %98, i8* %99, i8* %100), !dbg !1169
  store i8* %101, i8** %11, align 8, !dbg !1171
  %102 = load %struct._GString*, %struct._GString** @tmpstr, align 8, !dbg !1172
  %103 = load i8*, i8** %7, align 8, !dbg !1173
  %104 = load i8*, i8** %8, align 8, !dbg !1174
  %105 = load i8*, i8** %11, align 8, !dbg !1175
  call void (%struct._GString*, i8*, ...) @g_string_printf(%struct._GString* %102, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.77, i32 0, i32 0), i8* %103, i8* %104, i8* %105), !dbg !1176
  %106 = load i8*, i8** %11, align 8, !dbg !1177
  call void @g_free(i8* %106), !dbg !1178
  br label %107

; <label>:107:                                    ; preds = %94, %90
  %108 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1179
  %109 = load %struct._GString*, %struct._GString** @tmpstr, align 8, !dbg !1180
  %110 = getelementptr inbounds %struct._GString, %struct._GString* %109, i32 0, i32 0, !dbg !1181
  %111 = load i8*, i8** %110, align 8, !dbg !1181
  %112 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1182
  %113 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %112, i32 0, i32 49, !dbg !1183
  %114 = load i32, i32* %113, align 4, !dbg !1183
  call void @irc_send_cmd_split(%struct._IRC_SERVER_REC* %108, i8* %111, i32 2, i32 %114), !dbg !1184
  %115 = load i8*, i8** %10, align 8, !dbg !1185
  call void @cmd_params_free(i8* %115), !dbg !1186
  br label %116, !dbg !1187

; <label>:116:                                    ; preds = %107, %79, %46, %38, %26
  ret void, !dbg !1188
}

; Function Attrs: nounwind uwtable
define internal void @cmd_nctcp(i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !1190 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1191, metadata !889), !dbg !1192
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1193, metadata !889), !dbg !1194
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !1195, metadata !889), !dbg !1196
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1197, metadata !889), !dbg !1198
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1199, metadata !889), !dbg !1200
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1201, metadata !889), !dbg !1202
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1203, metadata !889), !dbg !1204
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1205, metadata !889), !dbg !1206
  br label %12, !dbg !1207, !llvm.loop !1208

; <label>:12:                                     ; preds = %3
  %13 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1209
  %14 = icmp ne %struct._IRC_SERVER_REC* %13, null, !dbg !1213
  br i1 %14, label %15, label %27, !dbg !1214

; <label>:15:                                     ; preds = %12
  %16 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1215
  %17 = bitcast %struct._IRC_SERVER_REC* %16 to i8*, !dbg !1215
  %18 = call i8* @module_check_cast(i8* %17, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !1217
  %19 = bitcast i8* %18 to %struct._SERVER_REC*, !dbg !1218
  %20 = bitcast %struct._SERVER_REC* %19 to i8*, !dbg !1219
  %21 = call i8* @chat_protocol_check_cast(i8* %20, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !1220
  %22 = bitcast i8* %21 to %struct._IRC_SERVER_REC*, !dbg !1222
  %23 = icmp ne %struct._IRC_SERVER_REC* %22, null, !dbg !1222
  br i1 %23, label %24, label %25, !dbg !1223

; <label>:24:                                     ; preds = %15
  br i1 false, label %26, label %27, !dbg !1224

; <label>:25:                                     ; preds = %15
  br i1 false, label %27, label %26, !dbg !1226

; <label>:26:                                     ; preds = %25, %24
  br label %106, !dbg !1228

; <label>:27:                                     ; preds = %25, %24, %12
  %28 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1230
  %29 = icmp eq %struct._IRC_SERVER_REC* %28, null, !dbg !1233
  br i1 %29, label %37, label %30, !dbg !1234

; <label>:30:                                     ; preds = %27
  %31 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1235
  %32 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %31, i32 0, i32 8, !dbg !1237
  %33 = load i8, i8* %32, align 8, !dbg !1237
  %34 = and i8 %33, 1, !dbg !1237
  %35 = zext i8 %34 to i32, !dbg !1237
  %36 = icmp ne i32 %35, 0, !dbg !1238
  br i1 %36, label %41, label %37, !dbg !1239

; <label>:37:                                     ; preds = %30, %27
  br label %38, !dbg !1240, !llvm.loop !1242

; <label>:38:                                     ; preds = %37
  %39 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !1244
  call void @signal_stop(), !dbg !1247
  br label %106, !dbg !1249
                                                  ; No predecessors!
  br label %41, !dbg !1250

; <label>:41:                                     ; preds = %40, %30
  br label %42, !dbg !1252

; <label>:42:                                     ; preds = %41
  %43 = load i8*, i8** %4, align 8, !dbg !1254
  %44 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %43, i8** %11, i32 8195, i8** %7, i8** %8, i8** %9), !dbg !1256
  %45 = icmp ne i32 %44, 0, !dbg !1256
  br i1 %45, label %47, label %46, !dbg !1257

; <label>:46:                                     ; preds = %42
  br label %106, !dbg !1258

; <label>:47:                                     ; preds = %42
  %48 = load i8*, i8** %7, align 8, !dbg !1259
  %49 = call i32 @g_strcmp0(i8* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.74, i32 0, i32 0)), !dbg !1261
  %50 = icmp eq i32 %49, 0, !dbg !1262
  br i1 %50, label %51, label %63, !dbg !1263

; <label>:51:                                     ; preds = %47
  %52 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1264
  %53 = icmp eq %struct._WI_ITEM_REC* %52, null, !dbg !1265
  br i1 %53, label %54, label %55, !dbg !1264

; <label>:54:                                     ; preds = %51
  br label %61, !dbg !1266

; <label>:55:                                     ; preds = %51
  %56 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1268
  %57 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %56, i32 0, i32 11, !dbg !1270
  %58 = load i8* (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)** %57, align 8, !dbg !1270
  %59 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1271
  %60 = call i8* %58(%struct._WI_ITEM_REC* %59), !dbg !1272
  br label %61, !dbg !1273

; <label>:61:                                     ; preds = %55, %54
  %62 = phi i8* [ null, %54 ], [ %60, %55 ], !dbg !1274
  store i8* %62, i8** %7, align 8, !dbg !1276
  br label %63, !dbg !1277

; <label>:63:                                     ; preds = %61, %47
  %64 = load i8*, i8** %7, align 8, !dbg !1278
  %65 = icmp eq i8* %64, null, !dbg !1280
  br i1 %65, label %76, label %66, !dbg !1281

; <label>:66:                                     ; preds = %63
  %67 = load i8*, i8** %7, align 8, !dbg !1282
  %68 = load i8, i8* %67, align 1, !dbg !1284
  %69 = sext i8 %68 to i32, !dbg !1284
  %70 = icmp eq i32 %69, 0, !dbg !1285
  br i1 %70, label %76, label %71, !dbg !1286

; <label>:71:                                     ; preds = %66
  %72 = load i8*, i8** %8, align 8, !dbg !1287
  %73 = load i8, i8* %72, align 1, !dbg !1289
  %74 = sext i8 %73 to i32, !dbg !1289
  %75 = icmp eq i32 %74, 0, !dbg !1290
  br i1 %75, label %76, label %83, !dbg !1291

; <label>:76:                                     ; preds = %71, %66, %63
  br label %77, !dbg !1292, !llvm.loop !1293

; <label>:77:                                     ; preds = %76
  %78 = load i8*, i8** %11, align 8, !dbg !1294
  call void @cmd_params_free(i8* %78), !dbg !1297
  br label %79, !dbg !1298, !llvm.loop !1299

; <label>:79:                                     ; preds = %77
  %80 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !1301
  call void @signal_stop(), !dbg !1304
  br label %106, !dbg !1306
                                                  ; No predecessors!
  br label %82, !dbg !1307

; <label>:82:                                     ; preds = %81
  br label %83, !dbg !1309

; <label>:83:                                     ; preds = %82, %71
  %84 = load i8*, i8** %8, align 8, !dbg !1311
  %85 = call i8* @ascii_strup(i8* %84), !dbg !1312
  %86 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1313
  %87 = bitcast %struct._IRC_SERVER_REC* %86 to i8*, !dbg !1313
  %88 = call i8* @module_check_cast(i8* %87, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !1314
  %89 = bitcast i8* %88 to %struct._SERVER_REC*, !dbg !1315
  %90 = load i8*, i8** %9, align 8, !dbg !1316
  %91 = load i8*, i8** %7, align 8, !dbg !1317
  %92 = call i8* @recode_out(%struct._SERVER_REC* %89, i8* %90, i8* %91), !dbg !1318
  store i8* %92, i8** %10, align 8, !dbg !1320
  %93 = load %struct._GString*, %struct._GString** @tmpstr, align 8, !dbg !1321
  %94 = load i8*, i8** %7, align 8, !dbg !1322
  %95 = load i8*, i8** %8, align 8, !dbg !1323
  %96 = load i8*, i8** %10, align 8, !dbg !1324
  call void (%struct._GString*, i8*, ...) @g_string_printf(%struct._GString* %93, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.78, i32 0, i32 0), i8* %94, i8* %95, i8* %96), !dbg !1325
  %97 = load i8*, i8** %10, align 8, !dbg !1326
  call void @g_free(i8* %97), !dbg !1327
  %98 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1328
  %99 = load %struct._GString*, %struct._GString** @tmpstr, align 8, !dbg !1329
  %100 = getelementptr inbounds %struct._GString, %struct._GString* %99, i32 0, i32 0, !dbg !1330
  %101 = load i8*, i8** %100, align 8, !dbg !1330
  %102 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1331
  %103 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %102, i32 0, i32 49, !dbg !1332
  %104 = load i32, i32* %103, align 4, !dbg !1332
  call void @irc_send_cmd_split(%struct._IRC_SERVER_REC* %98, i8* %101, i32 2, i32 %104), !dbg !1333
  %105 = load i8*, i8** %11, align 8, !dbg !1334
  call void @cmd_params_free(i8* %105), !dbg !1335
  br label %106, !dbg !1336

; <label>:106:                                    ; preds = %83, %79, %46, %38, %26
  ret void, !dbg !1337
}

; Function Attrs: nounwind uwtable
define internal void @cmd_part(i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !1338 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1339, metadata !889), !dbg !1340
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1341, metadata !889), !dbg !1342
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !1343, metadata !889), !dbg !1344
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1345, metadata !889), !dbg !1346
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1347, metadata !889), !dbg !1348
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1349, metadata !889), !dbg !1350
  store i8* null, i8** %9, align 8, !dbg !1350
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1351, metadata !889), !dbg !1352
  br label %11, !dbg !1353, !llvm.loop !1354

; <label>:11:                                     ; preds = %3
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1355
  %13 = icmp ne %struct._IRC_SERVER_REC* %12, null, !dbg !1359
  br i1 %13, label %14, label %26, !dbg !1360

; <label>:14:                                     ; preds = %11
  %15 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1361
  %16 = bitcast %struct._IRC_SERVER_REC* %15 to i8*, !dbg !1361
  %17 = call i8* @module_check_cast(i8* %16, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !1363
  %18 = bitcast i8* %17 to %struct._SERVER_REC*, !dbg !1364
  %19 = bitcast %struct._SERVER_REC* %18 to i8*, !dbg !1365
  %20 = call i8* @chat_protocol_check_cast(i8* %19, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !1366
  %21 = bitcast i8* %20 to %struct._IRC_SERVER_REC*, !dbg !1368
  %22 = icmp ne %struct._IRC_SERVER_REC* %21, null, !dbg !1368
  br i1 %22, label %23, label %24, !dbg !1369

; <label>:23:                                     ; preds = %14
  br i1 false, label %25, label %26, !dbg !1370

; <label>:24:                                     ; preds = %14
  br i1 false, label %26, label %25, !dbg !1372

; <label>:25:                                     ; preds = %24, %23
  br label %100, !dbg !1374

; <label>:26:                                     ; preds = %24, %23, %11
  %27 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1376
  %28 = icmp eq %struct._IRC_SERVER_REC* %27, null, !dbg !1379
  br i1 %28, label %36, label %29, !dbg !1380

; <label>:29:                                     ; preds = %26
  %30 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1381
  %31 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %30, i32 0, i32 8, !dbg !1383
  %32 = load i8, i8* %31, align 8, !dbg !1383
  %33 = and i8 %32, 1, !dbg !1383
  %34 = zext i8 %33 to i32, !dbg !1383
  %35 = icmp ne i32 %34, 0, !dbg !1384
  br i1 %35, label %40, label %36, !dbg !1385

; <label>:36:                                     ; preds = %29, %26
  br label %37, !dbg !1386, !llvm.loop !1388

; <label>:37:                                     ; preds = %36
  %38 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !1390
  call void @signal_stop(), !dbg !1393
  br label %100, !dbg !1395
                                                  ; No predecessors!
  br label %40, !dbg !1396

; <label>:40:                                     ; preds = %39, %29
  br label %41, !dbg !1398

; <label>:41:                                     ; preds = %40
  %42 = load i8*, i8** %4, align 8, !dbg !1400
  %43 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1402
  %44 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %42, i8** %10, i32 73730, %struct._WI_ITEM_REC* %43, i8** %7, i8** %8), !dbg !1403
  %45 = icmp ne i32 %44, 0, !dbg !1403
  br i1 %45, label %47, label %46, !dbg !1404

; <label>:46:                                     ; preds = %41
  br label %100, !dbg !1405

; <label>:47:                                     ; preds = %41
  %48 = load i8*, i8** %7, align 8, !dbg !1406
  %49 = load i8, i8* %48, align 1, !dbg !1408
  %50 = sext i8 %49 to i32, !dbg !1408
  %51 = icmp eq i32 %50, 0, !dbg !1409
  br i1 %51, label %52, label %59, !dbg !1410

; <label>:52:                                     ; preds = %47
  br label %53, !dbg !1411, !llvm.loop !1413

; <label>:53:                                     ; preds = %52
  %54 = load i8*, i8** %10, align 8, !dbg !1415
  call void @cmd_params_free(i8* %54), !dbg !1418
  br label %55, !dbg !1419, !llvm.loop !1420

; <label>:55:                                     ; preds = %53
  %56 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !1422
  call void @signal_stop(), !dbg !1425
  br label %100, !dbg !1427
                                                  ; No predecessors!
  br label %58, !dbg !1428

; <label>:58:                                     ; preds = %57
  br label %59, !dbg !1430

; <label>:59:                                     ; preds = %58, %47
  %60 = load i8*, i8** %8, align 8, !dbg !1432
  %61 = load i8, i8* %60, align 1, !dbg !1434
  %62 = sext i8 %61 to i32, !dbg !1434
  %63 = icmp eq i32 %62, 0, !dbg !1435
  br i1 %63, label %64, label %66, !dbg !1436

; <label>:64:                                     ; preds = %59
  %65 = call i8* @settings_get_str(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0)), !dbg !1437
  store i8* %65, i8** %8, align 8, !dbg !1439
  br label %66, !dbg !1440

; <label>:66:                                     ; preds = %64, %59
  %67 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1441
  %68 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %67, i32 0, i32 55, !dbg !1443
  %69 = load i32, i32* %68, align 4, !dbg !1443
  %70 = icmp sgt i32 %69, 10, !dbg !1444
  br i1 %70, label %71, label %74, !dbg !1445

; <label>:71:                                     ; preds = %66
  %72 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1446
  %73 = load i8*, i8** %7, align 8, !dbg !1447
  call void @irc_server_purge_output(%struct._IRC_SERVER_REC* %72, i8* %73), !dbg !1448
  br label %74, !dbg !1448

; <label>:74:                                     ; preds = %71, %66
  %75 = load i8*, i8** %8, align 8, !dbg !1449
  %76 = load i8, i8* %75, align 1, !dbg !1451
  %77 = sext i8 %76 to i32, !dbg !1451
  %78 = icmp ne i32 %77, 0, !dbg !1452
  br i1 %78, label %79, label %87, !dbg !1453

; <label>:79:                                     ; preds = %74
  %80 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1454
  %81 = bitcast %struct._IRC_SERVER_REC* %80 to i8*, !dbg !1454
  %82 = call i8* @module_check_cast(i8* %81, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !1455
  %83 = bitcast i8* %82 to %struct._SERVER_REC*, !dbg !1456
  %84 = load i8*, i8** %8, align 8, !dbg !1457
  %85 = load i8*, i8** %7, align 8, !dbg !1458
  %86 = call i8* @recode_out(%struct._SERVER_REC* %83, i8* %84, i8* %85), !dbg !1459
  store i8* %86, i8** %9, align 8, !dbg !1461
  br label %87, !dbg !1462

; <label>:87:                                     ; preds = %79, %74
  %88 = load i8*, i8** %9, align 8, !dbg !1463
  %89 = icmp eq i8* %88, null, !dbg !1465
  br i1 %89, label %90, label %93, !dbg !1466

; <label>:90:                                     ; preds = %87
  %91 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1467
  %92 = load i8*, i8** %7, align 8, !dbg !1468
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.79, i32 0, i32 0), i8* %92), !dbg !1469
  br label %97, !dbg !1469

; <label>:93:                                     ; preds = %87
  %94 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1470
  %95 = load i8*, i8** %7, align 8, !dbg !1471
  %96 = load i8*, i8** %9, align 8, !dbg !1472
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %94, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.80, i32 0, i32 0), i8* %95, i8* %96), !dbg !1473
  br label %97

; <label>:97:                                     ; preds = %93, %90
  %98 = load i8*, i8** %9, align 8, !dbg !1474
  call void @g_free(i8* %98), !dbg !1475
  %99 = load i8*, i8** %10, align 8, !dbg !1476
  call void @cmd_params_free(i8* %99), !dbg !1477
  br label %100, !dbg !1478

; <label>:100:                                    ; preds = %97, %55, %46, %37, %25
  ret void, !dbg !1479
}

; Function Attrs: nounwind uwtable
define internal void @cmd_kick(i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !1481 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1482, metadata !889), !dbg !1483
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1484, metadata !889), !dbg !1485
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !1486, metadata !889), !dbg !1487
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1488, metadata !889), !dbg !1489
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1490, metadata !889), !dbg !1491
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1492, metadata !889), !dbg !1493
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1494, metadata !889), !dbg !1495
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1496, metadata !889), !dbg !1497
  br label %12, !dbg !1498, !llvm.loop !1499

; <label>:12:                                     ; preds = %3
  %13 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1500
  %14 = icmp ne %struct._IRC_SERVER_REC* %13, null, !dbg !1504
  br i1 %14, label %15, label %27, !dbg !1505

; <label>:15:                                     ; preds = %12
  %16 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1506
  %17 = bitcast %struct._IRC_SERVER_REC* %16 to i8*, !dbg !1506
  %18 = call i8* @module_check_cast(i8* %17, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !1508
  %19 = bitcast i8* %18 to %struct._SERVER_REC*, !dbg !1509
  %20 = bitcast %struct._SERVER_REC* %19 to i8*, !dbg !1510
  %21 = call i8* @chat_protocol_check_cast(i8* %20, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !1511
  %22 = bitcast i8* %21 to %struct._IRC_SERVER_REC*, !dbg !1513
  %23 = icmp ne %struct._IRC_SERVER_REC* %22, null, !dbg !1513
  br i1 %23, label %24, label %25, !dbg !1514

; <label>:24:                                     ; preds = %15
  br i1 false, label %26, label %27, !dbg !1515

; <label>:25:                                     ; preds = %15
  br i1 false, label %27, label %26, !dbg !1517

; <label>:26:                                     ; preds = %25, %24
  br label %107, !dbg !1519

; <label>:27:                                     ; preds = %25, %24, %12
  %28 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1521
  %29 = icmp eq %struct._IRC_SERVER_REC* %28, null, !dbg !1524
  br i1 %29, label %37, label %30, !dbg !1525

; <label>:30:                                     ; preds = %27
  %31 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1526
  %32 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %31, i32 0, i32 8, !dbg !1528
  %33 = load i8, i8* %32, align 8, !dbg !1528
  %34 = and i8 %33, 1, !dbg !1528
  %35 = zext i8 %34 to i32, !dbg !1528
  %36 = icmp ne i32 %35, 0, !dbg !1529
  br i1 %36, label %41, label %37, !dbg !1530

; <label>:37:                                     ; preds = %30, %27
  br label %38, !dbg !1531, !llvm.loop !1533

; <label>:38:                                     ; preds = %37
  %39 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !1535
  call void @signal_stop(), !dbg !1538
  br label %107, !dbg !1540
                                                  ; No predecessors!
  br label %41, !dbg !1541

; <label>:41:                                     ; preds = %40, %30
  br label %42, !dbg !1543

; <label>:42:                                     ; preds = %41
  %43 = load i8*, i8** %4, align 8, !dbg !1545
  %44 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1547
  %45 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %43, i8** %11, i32 73731, %struct._WI_ITEM_REC* %44, i8** %7, i8** %8, i8** %9), !dbg !1548
  %46 = icmp ne i32 %45, 0, !dbg !1548
  br i1 %46, label %48, label %47, !dbg !1549

; <label>:47:                                     ; preds = %42
  br label %107, !dbg !1550

; <label>:48:                                     ; preds = %42
  %49 = load i8*, i8** %7, align 8, !dbg !1551
  %50 = load i8, i8* %49, align 1, !dbg !1553
  %51 = sext i8 %50 to i32, !dbg !1553
  %52 = icmp eq i32 %51, 0, !dbg !1554
  br i1 %52, label %58, label %53, !dbg !1555

; <label>:53:                                     ; preds = %48
  %54 = load i8*, i8** %8, align 8, !dbg !1556
  %55 = load i8, i8* %54, align 1, !dbg !1558
  %56 = sext i8 %55 to i32, !dbg !1558
  %57 = icmp eq i32 %56, 0, !dbg !1559
  br i1 %57, label %58, label %65, !dbg !1560

; <label>:58:                                     ; preds = %53, %48
  br label %59, !dbg !1561, !llvm.loop !1563

; <label>:59:                                     ; preds = %58
  %60 = load i8*, i8** %11, align 8, !dbg !1565
  call void @cmd_params_free(i8* %60), !dbg !1568
  br label %61, !dbg !1569, !llvm.loop !1570

; <label>:61:                                     ; preds = %59
  %62 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !1572
  call void @signal_stop(), !dbg !1575
  br label %107, !dbg !1577
                                                  ; No predecessors!
  br label %64, !dbg !1578

; <label>:64:                                     ; preds = %63
  br label %65, !dbg !1580

; <label>:65:                                     ; preds = %64, %53
  %66 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1582
  %67 = bitcast %struct._IRC_SERVER_REC* %66 to i8*, !dbg !1582
  %68 = call i8* @module_check_cast(i8* %67, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !1584
  %69 = bitcast i8* %68 to %struct._SERVER_REC*, !dbg !1585
  %70 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %69, i32 0, i32 27, !dbg !1586
  %71 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %70, align 8, !dbg !1586
  %72 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1587
  %73 = bitcast %struct._IRC_SERVER_REC* %72 to i8*, !dbg !1587
  %74 = call i8* @module_check_cast(i8* %73, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !1588
  %75 = bitcast i8* %74 to %struct._SERVER_REC*, !dbg !1590
  %76 = load i8*, i8** %7, align 8, !dbg !1591
  %77 = call i32 %71(%struct._SERVER_REC* %75, i8* %76), !dbg !1592
  %78 = icmp ne i32 %77, 0, !dbg !1594
  br i1 %78, label %86, label %79, !dbg !1595

; <label>:79:                                     ; preds = %65
  br label %80, !dbg !1596, !llvm.loop !1598

; <label>:80:                                     ; preds = %79
  %81 = load i8*, i8** %11, align 8, !dbg !1599
  call void @cmd_params_free(i8* %81), !dbg !1602
  br label %82, !dbg !1603, !llvm.loop !1604

; <label>:82:                                     ; preds = %80
  %83 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 5 to i8*)), !dbg !1606
  call void @signal_stop(), !dbg !1609
  br label %107, !dbg !1611
                                                  ; No predecessors!
  br label %85, !dbg !1612

; <label>:85:                                     ; preds = %84
  br label %86, !dbg !1614

; <label>:86:                                     ; preds = %85, %65
  %87 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1616
  %88 = bitcast %struct._IRC_SERVER_REC* %87 to i8*, !dbg !1616
  %89 = call i8* @module_check_cast(i8* %88, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !1617
  %90 = bitcast i8* %89 to %struct._SERVER_REC*, !dbg !1618
  %91 = load i8*, i8** %9, align 8, !dbg !1619
  %92 = load i8*, i8** %7, align 8, !dbg !1620
  %93 = call i8* @recode_out(%struct._SERVER_REC* %90, i8* %91, i8* %92), !dbg !1621
  store i8* %93, i8** %10, align 8, !dbg !1623
  %94 = load %struct._GString*, %struct._GString** @tmpstr, align 8, !dbg !1624
  %95 = load i8*, i8** %7, align 8, !dbg !1625
  %96 = load i8*, i8** %8, align 8, !dbg !1626
  %97 = load i8*, i8** %10, align 8, !dbg !1627
  call void (%struct._GString*, i8*, ...) @g_string_printf(%struct._GString* %94, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.81, i32 0, i32 0), i8* %95, i8* %96, i8* %97), !dbg !1628
  %98 = load i8*, i8** %10, align 8, !dbg !1629
  call void @g_free(i8* %98), !dbg !1630
  %99 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1631
  %100 = load %struct._GString*, %struct._GString** @tmpstr, align 8, !dbg !1632
  %101 = getelementptr inbounds %struct._GString, %struct._GString* %100, i32 0, i32 0, !dbg !1633
  %102 = load i8*, i8** %101, align 8, !dbg !1633
  %103 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1634
  %104 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %103, i32 0, i32 46, !dbg !1635
  %105 = load i32, i32* %104, align 8, !dbg !1635
  call void @irc_send_cmd_split(%struct._IRC_SERVER_REC* %99, i8* %102, i32 3, i32 %105), !dbg !1636
  %106 = load i8*, i8** %11, align 8, !dbg !1637
  call void @cmd_params_free(i8* %106), !dbg !1638
  br label %107, !dbg !1639

; <label>:107:                                    ; preds = %86, %82, %61, %47, %38, %26
  ret void, !dbg !1640
}

; Function Attrs: nounwind uwtable
define internal void @cmd_topic(i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !1641 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca %struct._GHashTable*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1642, metadata !889), !dbg !1643
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1644, metadata !889), !dbg !1645
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !1646, metadata !889), !dbg !1647
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %7, metadata !1648, metadata !889), !dbg !1649
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1650, metadata !889), !dbg !1651
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1652, metadata !889), !dbg !1653
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1654, metadata !889), !dbg !1655
  store i8* null, i8** %10, align 8, !dbg !1655
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1656, metadata !889), !dbg !1657
  br label %12, !dbg !1658, !llvm.loop !1659

; <label>:12:                                     ; preds = %3
  %13 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1660
  %14 = icmp ne %struct._IRC_SERVER_REC* %13, null, !dbg !1664
  br i1 %14, label %15, label %27, !dbg !1665

; <label>:15:                                     ; preds = %12
  %16 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1666
  %17 = bitcast %struct._IRC_SERVER_REC* %16 to i8*, !dbg !1666
  %18 = call i8* @module_check_cast(i8* %17, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !1668
  %19 = bitcast i8* %18 to %struct._SERVER_REC*, !dbg !1669
  %20 = bitcast %struct._SERVER_REC* %19 to i8*, !dbg !1670
  %21 = call i8* @chat_protocol_check_cast(i8* %20, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !1671
  %22 = bitcast i8* %21 to %struct._IRC_SERVER_REC*, !dbg !1673
  %23 = icmp ne %struct._IRC_SERVER_REC* %22, null, !dbg !1673
  br i1 %23, label %24, label %25, !dbg !1674

; <label>:24:                                     ; preds = %15
  br i1 false, label %26, label %27, !dbg !1675

; <label>:25:                                     ; preds = %15
  br i1 false, label %27, label %26, !dbg !1677

; <label>:26:                                     ; preds = %25, %24
  br label %78, !dbg !1679

; <label>:27:                                     ; preds = %25, %24, %12
  %28 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1681
  %29 = icmp eq %struct._IRC_SERVER_REC* %28, null, !dbg !1684
  br i1 %29, label %37, label %30, !dbg !1685

; <label>:30:                                     ; preds = %27
  %31 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1686
  %32 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %31, i32 0, i32 8, !dbg !1688
  %33 = load i8, i8* %32, align 8, !dbg !1688
  %34 = and i8 %33, 1, !dbg !1688
  %35 = zext i8 %34 to i32, !dbg !1688
  %36 = icmp ne i32 %35, 0, !dbg !1689
  br i1 %36, label %41, label %37, !dbg !1690

; <label>:37:                                     ; preds = %30, %27
  br label %38, !dbg !1691, !llvm.loop !1693

; <label>:38:                                     ; preds = %37
  %39 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !1695
  call void @signal_stop(), !dbg !1698
  br label %78, !dbg !1700
                                                  ; No predecessors!
  br label %41, !dbg !1701

; <label>:41:                                     ; preds = %40, %30
  br label %42, !dbg !1703

; <label>:42:                                     ; preds = %41
  %43 = load i8*, i8** %4, align 8, !dbg !1705
  %44 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1707
  %45 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %43, i8** %11, i32 90114, %struct._WI_ITEM_REC* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), %struct._GHashTable** %7, i8** %8, i8** %9), !dbg !1708
  %46 = icmp ne i32 %45, 0, !dbg !1708
  br i1 %46, label %48, label %47, !dbg !1709

; <label>:47:                                     ; preds = %42
  br label %78, !dbg !1710

; <label>:48:                                     ; preds = %42
  %49 = load i8*, i8** %9, align 8, !dbg !1711
  %50 = load i8, i8* %49, align 1, !dbg !1713
  %51 = sext i8 %50 to i32, !dbg !1713
  %52 = icmp ne i32 %51, 0, !dbg !1714
  br i1 %52, label %57, label %53, !dbg !1715

; <label>:53:                                     ; preds = %48
  %54 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !1716
  %55 = call i8* @g_hash_table_lookup(%struct._GHashTable* %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i32 0, i32 0)), !dbg !1718
  %56 = icmp ne i8* %55, null, !dbg !1719
  br i1 %56, label %57, label %65, !dbg !1720

; <label>:57:                                     ; preds = %53, %48
  %58 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1721
  %59 = bitcast %struct._IRC_SERVER_REC* %58 to i8*, !dbg !1721
  %60 = call i8* @module_check_cast(i8* %59, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !1722
  %61 = bitcast i8* %60 to %struct._SERVER_REC*, !dbg !1723
  %62 = load i8*, i8** %9, align 8, !dbg !1724
  %63 = load i8*, i8** %8, align 8, !dbg !1725
  %64 = call i8* @recode_out(%struct._SERVER_REC* %61, i8* %62, i8* %63), !dbg !1726
  store i8* %64, i8** %10, align 8, !dbg !1727
  br label %65, !dbg !1728

; <label>:65:                                     ; preds = %57, %53
  %66 = load i8*, i8** %10, align 8, !dbg !1729
  %67 = icmp eq i8* %66, null, !dbg !1731
  br i1 %67, label %68, label %71, !dbg !1732

; <label>:68:                                     ; preds = %65
  %69 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1733
  %70 = load i8*, i8** %8, align 8, !dbg !1734
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.82, i32 0, i32 0), i8* %70), !dbg !1735
  br label %75, !dbg !1735

; <label>:71:                                     ; preds = %65
  %72 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1736
  %73 = load i8*, i8** %8, align 8, !dbg !1737
  %74 = load i8*, i8** %10, align 8, !dbg !1738
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %72, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.83, i32 0, i32 0), i8* %73, i8* %74), !dbg !1739
  br label %75

; <label>:75:                                     ; preds = %71, %68
  %76 = load i8*, i8** %10, align 8, !dbg !1740
  call void @g_free(i8* %76), !dbg !1741
  %77 = load i8*, i8** %11, align 8, !dbg !1742
  call void @cmd_params_free(i8* %77), !dbg !1743
  br label %78, !dbg !1744

; <label>:78:                                     ; preds = %75, %47, %38, %26
  ret void, !dbg !1745
}

; Function Attrs: nounwind uwtable
define internal void @cmd_invite(i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !1747 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1748, metadata !889), !dbg !1749
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1750, metadata !889), !dbg !1751
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !1752, metadata !889), !dbg !1753
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1754, metadata !889), !dbg !1755
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1756, metadata !889), !dbg !1757
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1758, metadata !889), !dbg !1759
  br label %10, !dbg !1760, !llvm.loop !1761

; <label>:10:                                     ; preds = %3
  %11 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1762
  %12 = icmp ne %struct._IRC_SERVER_REC* %11, null, !dbg !1766
  br i1 %12, label %13, label %25, !dbg !1767

; <label>:13:                                     ; preds = %10
  %14 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1768
  %15 = bitcast %struct._IRC_SERVER_REC* %14 to i8*, !dbg !1768
  %16 = call i8* @module_check_cast(i8* %15, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !1770
  %17 = bitcast i8* %16 to %struct._SERVER_REC*, !dbg !1771
  %18 = bitcast %struct._SERVER_REC* %17 to i8*, !dbg !1772
  %19 = call i8* @chat_protocol_check_cast(i8* %18, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !1773
  %20 = bitcast i8* %19 to %struct._IRC_SERVER_REC*, !dbg !1775
  %21 = icmp ne %struct._IRC_SERVER_REC* %20, null, !dbg !1775
  br i1 %21, label %22, label %23, !dbg !1776

; <label>:22:                                     ; preds = %13
  br i1 false, label %24, label %25, !dbg !1777

; <label>:23:                                     ; preds = %13
  br i1 false, label %25, label %24, !dbg !1779

; <label>:24:                                     ; preds = %23, %22
  br label %99, !dbg !1781

; <label>:25:                                     ; preds = %23, %22, %10
  %26 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1783
  %27 = icmp eq %struct._IRC_SERVER_REC* %26, null, !dbg !1786
  br i1 %27, label %35, label %28, !dbg !1787

; <label>:28:                                     ; preds = %25
  %29 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1788
  %30 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %29, i32 0, i32 8, !dbg !1790
  %31 = load i8, i8* %30, align 8, !dbg !1790
  %32 = and i8 %31, 1, !dbg !1790
  %33 = zext i8 %32 to i32, !dbg !1790
  %34 = icmp ne i32 %33, 0, !dbg !1791
  br i1 %34, label %39, label %35, !dbg !1792

; <label>:35:                                     ; preds = %28, %25
  br label %36, !dbg !1793, !llvm.loop !1795

; <label>:36:                                     ; preds = %35
  %37 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !1797
  call void @signal_stop(), !dbg !1800
  br label %99, !dbg !1802
                                                  ; No predecessors!
  br label %39, !dbg !1803

; <label>:39:                                     ; preds = %38, %28
  br label %40, !dbg !1805

; <label>:40:                                     ; preds = %39
  %41 = load i8*, i8** %4, align 8, !dbg !1807
  %42 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %41, i8** %9, i32 2, i8** %7, i8** %8), !dbg !1809
  %43 = icmp ne i32 %42, 0, !dbg !1809
  br i1 %43, label %45, label %44, !dbg !1810

; <label>:44:                                     ; preds = %40
  br label %99, !dbg !1811

; <label>:45:                                     ; preds = %40
  %46 = load i8*, i8** %7, align 8, !dbg !1812
  %47 = load i8, i8* %46, align 1, !dbg !1814
  %48 = sext i8 %47 to i32, !dbg !1814
  %49 = icmp eq i32 %48, 0, !dbg !1815
  br i1 %49, label %50, label %57, !dbg !1816

; <label>:50:                                     ; preds = %45
  br label %51, !dbg !1817, !llvm.loop !1819

; <label>:51:                                     ; preds = %50
  %52 = load i8*, i8** %9, align 8, !dbg !1821
  call void @cmd_params_free(i8* %52), !dbg !1824
  br label %53, !dbg !1825, !llvm.loop !1826

; <label>:53:                                     ; preds = %51
  %54 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !1828
  call void @signal_stop(), !dbg !1831
  br label %99, !dbg !1833
                                                  ; No predecessors!
  br label %56, !dbg !1834

; <label>:56:                                     ; preds = %55
  br label %57, !dbg !1836

; <label>:57:                                     ; preds = %56, %45
  %58 = load i8*, i8** %8, align 8, !dbg !1838
  %59 = load i8, i8* %58, align 1, !dbg !1840
  %60 = sext i8 %59 to i32, !dbg !1840
  %61 = icmp eq i32 %60, 0, !dbg !1841
  br i1 %61, label %66, label %62, !dbg !1842

; <label>:62:                                     ; preds = %57
  %63 = load i8*, i8** %8, align 8, !dbg !1843
  %64 = call i32 @g_strcmp0(i8* %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.74, i32 0, i32 0)), !dbg !1845
  %65 = icmp eq i32 %64, 0, !dbg !1846
  br i1 %65, label %66, label %94, !dbg !1847

; <label>:66:                                     ; preds = %62, %57
  %67 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1848
  %68 = bitcast %struct._WI_ITEM_REC* %67 to i8*, !dbg !1848
  %69 = call i8* @module_check_cast_module(i8* %68, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0)), !dbg !1851
  %70 = bitcast i8* %69 to %struct._CHANNEL_REC*, !dbg !1852
  %71 = bitcast %struct._CHANNEL_REC* %70 to i8*, !dbg !1853
  %72 = call i8* @chat_protocol_check_cast(i8* %71, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !1854
  %73 = bitcast i8* %72 to %struct._IRC_CHANNEL_REC*, !dbg !1856
  %74 = icmp ne %struct._IRC_CHANNEL_REC* %73, null, !dbg !1856
  br i1 %74, label %75, label %76, !dbg !1857

; <label>:75:                                     ; preds = %66
  br i1 false, label %77, label %84, !dbg !1858

; <label>:76:                                     ; preds = %66
  br i1 false, label %84, label %77, !dbg !1860

; <label>:77:                                     ; preds = %76, %75
  br label %78, !dbg !1862, !llvm.loop !1863

; <label>:78:                                     ; preds = %77
  %79 = load i8*, i8** %9, align 8, !dbg !1864
  call void @cmd_params_free(i8* %79), !dbg !1867
  br label %80, !dbg !1868, !llvm.loop !1869

; <label>:80:                                     ; preds = %78
  %81 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 5 to i8*)), !dbg !1871
  call void @signal_stop(), !dbg !1874
  br label %99, !dbg !1876
                                                  ; No predecessors!
  br label %83, !dbg !1877

; <label>:83:                                     ; preds = %82
  br label %84, !dbg !1879

; <label>:84:                                     ; preds = %83, %76, %75
  %85 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1881
  %86 = bitcast %struct._WI_ITEM_REC* %85 to i8*, !dbg !1881
  %87 = call i8* @module_check_cast_module(i8* %86, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0)), !dbg !1882
  %88 = bitcast i8* %87 to %struct._CHANNEL_REC*, !dbg !1883
  %89 = bitcast %struct._CHANNEL_REC* %88 to i8*, !dbg !1884
  %90 = call i8* @chat_protocol_check_cast(i8* %89, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !1885
  %91 = bitcast i8* %90 to %struct._IRC_CHANNEL_REC*, !dbg !1887
  %92 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %91, i32 0, i32 6, !dbg !1888
  %93 = load i8*, i8** %92, align 8, !dbg !1888
  store i8* %93, i8** %8, align 8, !dbg !1889
  br label %94, !dbg !1890

; <label>:94:                                     ; preds = %84, %62
  %95 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1891
  %96 = load i8*, i8** %7, align 8, !dbg !1892
  %97 = load i8*, i8** %8, align 8, !dbg !1893
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %95, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.86, i32 0, i32 0), i8* %96, i8* %97), !dbg !1894
  %98 = load i8*, i8** %9, align 8, !dbg !1895
  call void @cmd_params_free(i8* %98), !dbg !1896
  br label %99, !dbg !1897

; <label>:99:                                     ; preds = %94, %80, %53, %44, %36, %24
  ret void, !dbg !1898
}

; Function Attrs: nounwind uwtable
define internal void @cmd_list(i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !1900 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca %struct._GHashTable*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1901, metadata !889), !dbg !1902
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1903, metadata !889), !dbg !1904
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !1905, metadata !889), !dbg !1906
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %7, metadata !1907, metadata !889), !dbg !1908
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1909, metadata !889), !dbg !1910
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1911, metadata !889), !dbg !1912
  br label %10, !dbg !1913, !llvm.loop !1914

; <label>:10:                                     ; preds = %3
  %11 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1915
  %12 = icmp ne %struct._IRC_SERVER_REC* %11, null, !dbg !1919
  br i1 %12, label %13, label %25, !dbg !1920

; <label>:13:                                     ; preds = %10
  %14 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1921
  %15 = bitcast %struct._IRC_SERVER_REC* %14 to i8*, !dbg !1921
  %16 = call i8* @module_check_cast(i8* %15, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !1923
  %17 = bitcast i8* %16 to %struct._SERVER_REC*, !dbg !1924
  %18 = bitcast %struct._SERVER_REC* %17 to i8*, !dbg !1925
  %19 = call i8* @chat_protocol_check_cast(i8* %18, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !1926
  %20 = bitcast i8* %19 to %struct._IRC_SERVER_REC*, !dbg !1928
  %21 = icmp ne %struct._IRC_SERVER_REC* %20, null, !dbg !1928
  br i1 %21, label %22, label %23, !dbg !1929

; <label>:22:                                     ; preds = %13
  br i1 false, label %24, label %25, !dbg !1930

; <label>:23:                                     ; preds = %13
  br i1 false, label %25, label %24, !dbg !1932

; <label>:24:                                     ; preds = %23, %22
  br label %75, !dbg !1934

; <label>:25:                                     ; preds = %23, %22, %10
  %26 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1936
  %27 = icmp eq %struct._IRC_SERVER_REC* %26, null, !dbg !1939
  br i1 %27, label %35, label %28, !dbg !1940

; <label>:28:                                     ; preds = %25
  %29 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1941
  %30 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %29, i32 0, i32 8, !dbg !1943
  %31 = load i8, i8* %30, align 8, !dbg !1943
  %32 = and i8 %31, 1, !dbg !1943
  %33 = zext i8 %32 to i32, !dbg !1943
  %34 = icmp ne i32 %33, 0, !dbg !1944
  br i1 %34, label %39, label %35, !dbg !1945

; <label>:35:                                     ; preds = %28, %25
  br label %36, !dbg !1946, !llvm.loop !1948

; <label>:36:                                     ; preds = %35
  %37 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !1950
  call void @signal_stop(), !dbg !1953
  br label %75, !dbg !1955
                                                  ; No predecessors!
  br label %39, !dbg !1956

; <label>:39:                                     ; preds = %38, %28
  br label %40, !dbg !1958

; <label>:40:                                     ; preds = %39
  %41 = load i8*, i8** %4, align 8, !dbg !1960
  %42 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %41, i8** %9, i32 286721, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), %struct._GHashTable** %7, i8** %8), !dbg !1962
  %43 = icmp ne i32 %42, 0, !dbg !1962
  br i1 %43, label %45, label %44, !dbg !1963

; <label>:44:                                     ; preds = %40
  br label %75, !dbg !1964

; <label>:45:                                     ; preds = %40
  %46 = load i8*, i8** %8, align 8, !dbg !1965
  %47 = load i8, i8* %46, align 1, !dbg !1967
  %48 = sext i8 %47 to i32, !dbg !1967
  %49 = icmp eq i32 %48, 0, !dbg !1968
  br i1 %49, label %50, label %71, !dbg !1969

; <label>:50:                                     ; preds = %45
  %51 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !1970
  %52 = call i8* @g_hash_table_lookup(%struct._GHashTable* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0)), !dbg !1972
  %53 = icmp eq i8* %52, null, !dbg !1973
  br i1 %53, label %54, label %71, !dbg !1974

; <label>:54:                                     ; preds = %50
  %55 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1975
  %56 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %55, i32 0, i32 44, !dbg !1976
  %57 = load i32, i32* %56, align 8, !dbg !1976
  %58 = icmp sle i32 %57, 0, !dbg !1977
  br i1 %58, label %64, label %59, !dbg !1978

; <label>:59:                                     ; preds = %54
  %60 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1979
  %61 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %60, i32 0, i32 44, !dbg !1980
  %62 = load i32, i32* %61, align 8, !dbg !1980
  %63 = icmp sgt i32 %62, 1000, !dbg !1981
  br i1 %63, label %64, label %71, !dbg !1982

; <label>:64:                                     ; preds = %59, %54
  br label %65, !dbg !1984, !llvm.loop !1985

; <label>:65:                                     ; preds = %64
  %66 = load i8*, i8** %9, align 8, !dbg !1986
  call void @cmd_params_free(i8* %66), !dbg !1989
  br label %67, !dbg !1990, !llvm.loop !1991

; <label>:67:                                     ; preds = %65
  %68 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 9 to i8*)), !dbg !1993
  call void @signal_stop(), !dbg !1996
  br label %75, !dbg !1998
                                                  ; No predecessors!
  br label %70, !dbg !1999

; <label>:70:                                     ; preds = %69
  br label %71, !dbg !2001

; <label>:71:                                     ; preds = %70, %59, %50, %45
  %72 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2003
  %73 = load i8*, i8** %8, align 8, !dbg !2004
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i32 0, i32 0), i8* %73), !dbg !2005
  %74 = load i8*, i8** %9, align 8, !dbg !2006
  call void @cmd_params_free(i8* %74), !dbg !2007
  br label %75, !dbg !2008

; <label>:75:                                     ; preds = %71, %67, %44, %36, %24
  ret void, !dbg !2009
}

; Function Attrs: nounwind uwtable
define internal void @cmd_who(i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !2011 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2012, metadata !889), !dbg !2013
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !2014, metadata !889), !dbg !2015
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !2016, metadata !889), !dbg !2017
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2018, metadata !889), !dbg !2019
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2020, metadata !889), !dbg !2021
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2022, metadata !889), !dbg !2023
  br label %10, !dbg !2024, !llvm.loop !2025

; <label>:10:                                     ; preds = %3
  %11 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2026
  %12 = icmp ne %struct._IRC_SERVER_REC* %11, null, !dbg !2030
  br i1 %12, label %13, label %25, !dbg !2031

; <label>:13:                                     ; preds = %10
  %14 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2032
  %15 = bitcast %struct._IRC_SERVER_REC* %14 to i8*, !dbg !2032
  %16 = call i8* @module_check_cast(i8* %15, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !2034
  %17 = bitcast i8* %16 to %struct._SERVER_REC*, !dbg !2035
  %18 = bitcast %struct._SERVER_REC* %17 to i8*, !dbg !2036
  %19 = call i8* @chat_protocol_check_cast(i8* %18, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !2037
  %20 = bitcast i8* %19 to %struct._IRC_SERVER_REC*, !dbg !2039
  %21 = icmp ne %struct._IRC_SERVER_REC* %20, null, !dbg !2039
  br i1 %21, label %22, label %23, !dbg !2040

; <label>:22:                                     ; preds = %13
  br i1 false, label %24, label %25, !dbg !2041

; <label>:23:                                     ; preds = %13
  br i1 false, label %25, label %24, !dbg !2043

; <label>:24:                                     ; preds = %23, %22
  br label %103, !dbg !2045

; <label>:25:                                     ; preds = %23, %22, %10
  %26 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2047
  %27 = icmp eq %struct._IRC_SERVER_REC* %26, null, !dbg !2050
  br i1 %27, label %35, label %28, !dbg !2051

; <label>:28:                                     ; preds = %25
  %29 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2052
  %30 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %29, i32 0, i32 8, !dbg !2054
  %31 = load i8, i8* %30, align 8, !dbg !2054
  %32 = and i8 %31, 1, !dbg !2054
  %33 = zext i8 %32 to i32, !dbg !2054
  %34 = icmp ne i32 %33, 0, !dbg !2055
  br i1 %34, label %39, label %35, !dbg !2056

; <label>:35:                                     ; preds = %28, %25
  br label %36, !dbg !2057, !llvm.loop !2059

; <label>:36:                                     ; preds = %35
  %37 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !2061
  call void @signal_stop(), !dbg !2064
  br label %103, !dbg !2066
                                                  ; No predecessors!
  br label %39, !dbg !2067

; <label>:39:                                     ; preds = %38, %28
  br label %40, !dbg !2069

; <label>:40:                                     ; preds = %39
  %41 = load i8*, i8** %4, align 8, !dbg !2071
  %42 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %41, i8** %9, i32 270338, i8** %7, i8** %8), !dbg !2073
  %43 = icmp ne i32 %42, 0, !dbg !2073
  br i1 %43, label %45, label %44, !dbg !2074

; <label>:44:                                     ; preds = %40
  br label %103, !dbg !2075

; <label>:45:                                     ; preds = %40
  %46 = load i8*, i8** %7, align 8, !dbg !2076
  %47 = call i32 @g_strcmp0(i8* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.74, i32 0, i32 0)), !dbg !2078
  %48 = icmp eq i32 %47, 0, !dbg !2079
  br i1 %48, label %54, label %49, !dbg !2080

; <label>:49:                                     ; preds = %45
  %50 = load i8*, i8** %7, align 8, !dbg !2081
  %51 = load i8, i8* %50, align 1, !dbg !2083
  %52 = sext i8 %51 to i32, !dbg !2083
  %53 = icmp eq i32 %52, 0, !dbg !2084
  br i1 %53, label %54, label %82, !dbg !2085

; <label>:54:                                     ; preds = %49, %45
  %55 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !2086
  %56 = bitcast %struct._WI_ITEM_REC* %55 to i8*, !dbg !2086
  %57 = call i8* @module_check_cast_module(i8* %56, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0)), !dbg !2089
  %58 = bitcast i8* %57 to %struct._CHANNEL_REC*, !dbg !2090
  %59 = bitcast %struct._CHANNEL_REC* %58 to i8*, !dbg !2091
  %60 = call i8* @chat_protocol_check_cast(i8* %59, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !2092
  %61 = bitcast i8* %60 to %struct._IRC_CHANNEL_REC*, !dbg !2094
  %62 = icmp ne %struct._IRC_CHANNEL_REC* %61, null, !dbg !2094
  br i1 %62, label %63, label %64, !dbg !2095

; <label>:63:                                     ; preds = %54
  br i1 false, label %65, label %72, !dbg !2096

; <label>:64:                                     ; preds = %54
  br i1 false, label %72, label %65, !dbg !2098

; <label>:65:                                     ; preds = %64, %63
  br label %66, !dbg !2100, !llvm.loop !2101

; <label>:66:                                     ; preds = %65
  %67 = load i8*, i8** %9, align 8, !dbg !2102
  call void @cmd_params_free(i8* %67), !dbg !2105
  br label %68, !dbg !2106, !llvm.loop !2107

; <label>:68:                                     ; preds = %66
  %69 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 5 to i8*)), !dbg !2109
  call void @signal_stop(), !dbg !2112
  br label %103, !dbg !2114
                                                  ; No predecessors!
  br label %71, !dbg !2115

; <label>:71:                                     ; preds = %70
  br label %72, !dbg !2117

; <label>:72:                                     ; preds = %71, %64, %63
  %73 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !2119
  %74 = bitcast %struct._WI_ITEM_REC* %73 to i8*, !dbg !2119
  %75 = call i8* @module_check_cast_module(i8* %74, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0)), !dbg !2120
  %76 = bitcast i8* %75 to %struct._CHANNEL_REC*, !dbg !2121
  %77 = bitcast %struct._CHANNEL_REC* %76 to i8*, !dbg !2122
  %78 = call i8* @chat_protocol_check_cast(i8* %77, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !2123
  %79 = bitcast i8* %78 to %struct._IRC_CHANNEL_REC*, !dbg !2125
  %80 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %79, i32 0, i32 6, !dbg !2126
  %81 = load i8*, i8** %80, align 8, !dbg !2126
  store i8* %81, i8** %7, align 8, !dbg !2127
  br label %82, !dbg !2128

; <label>:82:                                     ; preds = %72, %49
  %83 = load i8*, i8** %7, align 8, !dbg !2129
  %84 = call i32 @g_strcmp0(i8* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i32 0, i32 0)), !dbg !2131
  %85 = icmp eq i32 %84, 0, !dbg !2132
  br i1 %85, label %86, label %88, !dbg !2133

; <label>:86:                                     ; preds = %82
  %87 = load i8*, i8** %7, align 8, !dbg !2134
  store i8 0, i8* %87, align 1, !dbg !2136
  br label %88, !dbg !2137

; <label>:88:                                     ; preds = %86, %82
  %89 = load i8*, i8** %8, align 8, !dbg !2138
  %90 = getelementptr inbounds i8, i8* %89, i64 0, !dbg !2138
  %91 = load i8, i8* %90, align 1, !dbg !2138
  %92 = sext i8 %91 to i32, !dbg !2138
  %93 = icmp eq i32 %92, 0, !dbg !2140
  br i1 %93, label %94, label %97, !dbg !2141

; <label>:94:                                     ; preds = %88
  %95 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2142
  %96 = load i8*, i8** %7, align 8, !dbg !2143
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i32 0, i32 0), i8* %96), !dbg !2144
  br label %101, !dbg !2144

; <label>:97:                                     ; preds = %88
  %98 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2145
  %99 = load i8*, i8** %7, align 8, !dbg !2146
  %100 = load i8*, i8** %8, align 8, !dbg !2147
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %98, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.90, i32 0, i32 0), i8* %99, i8* %100), !dbg !2148
  br label %101

; <label>:101:                                    ; preds = %97, %94
  %102 = load i8*, i8** %9, align 8, !dbg !2149
  call void @cmd_params_free(i8* %102), !dbg !2150
  br label %103, !dbg !2151

; <label>:103:                                    ; preds = %101, %68, %44, %36, %24
  ret void, !dbg !2152
}

; Function Attrs: nounwind uwtable
define internal void @cmd_names(i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !2154 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca %struct._GHashTable*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2155, metadata !889), !dbg !2156
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !2157, metadata !889), !dbg !2158
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !2159, metadata !889), !dbg !2160
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %7, metadata !2161, metadata !889), !dbg !2162
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2163, metadata !889), !dbg !2164
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2165, metadata !889), !dbg !2166
  br label %10, !dbg !2167, !llvm.loop !2168

; <label>:10:                                     ; preds = %3
  %11 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2169
  %12 = icmp ne %struct._IRC_SERVER_REC* %11, null, !dbg !2173
  br i1 %12, label %13, label %25, !dbg !2174

; <label>:13:                                     ; preds = %10
  %14 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2175
  %15 = bitcast %struct._IRC_SERVER_REC* %14 to i8*, !dbg !2175
  %16 = call i8* @module_check_cast(i8* %15, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !2177
  %17 = bitcast i8* %16 to %struct._SERVER_REC*, !dbg !2178
  %18 = bitcast %struct._SERVER_REC* %17 to i8*, !dbg !2179
  %19 = call i8* @chat_protocol_check_cast(i8* %18, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !2180
  %20 = bitcast i8* %19 to %struct._IRC_SERVER_REC*, !dbg !2182
  %21 = icmp ne %struct._IRC_SERVER_REC* %20, null, !dbg !2182
  br i1 %21, label %22, label %23, !dbg !2183

; <label>:22:                                     ; preds = %13
  br i1 false, label %24, label %25, !dbg !2184

; <label>:23:                                     ; preds = %13
  br i1 false, label %25, label %24, !dbg !2186

; <label>:24:                                     ; preds = %23, %22
  br label %93, !dbg !2188

; <label>:25:                                     ; preds = %23, %22, %10
  %26 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2190
  %27 = icmp eq %struct._IRC_SERVER_REC* %26, null, !dbg !2193
  br i1 %27, label %35, label %28, !dbg !2194

; <label>:28:                                     ; preds = %25
  %29 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2195
  %30 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %29, i32 0, i32 8, !dbg !2197
  %31 = load i8, i8* %30, align 8, !dbg !2197
  %32 = and i8 %31, 1, !dbg !2197
  %33 = zext i8 %32 to i32, !dbg !2197
  %34 = icmp ne i32 %33, 0, !dbg !2198
  br i1 %34, label %39, label %35, !dbg !2199

; <label>:35:                                     ; preds = %28, %25
  br label %36, !dbg !2200, !llvm.loop !2202

; <label>:36:                                     ; preds = %35
  %37 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !2204
  call void @signal_stop(), !dbg !2207
  br label %93, !dbg !2209
                                                  ; No predecessors!
  br label %39, !dbg !2210

; <label>:39:                                     ; preds = %38, %28
  br label %40, !dbg !2212

; <label>:40:                                     ; preds = %39
  %41 = load i8*, i8** %4, align 8, !dbg !2214
  %42 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %41, i8** %9, i32 286721, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), %struct._GHashTable** %7, i8** %8), !dbg !2216
  %43 = icmp ne i32 %42, 0, !dbg !2216
  br i1 %43, label %45, label %44, !dbg !2217

; <label>:44:                                     ; preds = %40
  br label %93, !dbg !2218

; <label>:45:                                     ; preds = %40
  %46 = load i8*, i8** %8, align 8, !dbg !2219
  %47 = call i32 @g_strcmp0(i8* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.74, i32 0, i32 0)), !dbg !2221
  %48 = icmp eq i32 %47, 0, !dbg !2222
  br i1 %48, label %54, label %49, !dbg !2223

; <label>:49:                                     ; preds = %45
  %50 = load i8*, i8** %8, align 8, !dbg !2224
  %51 = load i8, i8* %50, align 1, !dbg !2226
  %52 = sext i8 %51 to i32, !dbg !2226
  %53 = icmp eq i32 %52, 0, !dbg !2227
  br i1 %53, label %54, label %82, !dbg !2228

; <label>:54:                                     ; preds = %49, %45
  %55 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !2229
  %56 = bitcast %struct._WI_ITEM_REC* %55 to i8*, !dbg !2229
  %57 = call i8* @module_check_cast_module(i8* %56, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0)), !dbg !2232
  %58 = bitcast i8* %57 to %struct._CHANNEL_REC*, !dbg !2233
  %59 = bitcast %struct._CHANNEL_REC* %58 to i8*, !dbg !2234
  %60 = call i8* @chat_protocol_check_cast(i8* %59, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !2235
  %61 = bitcast i8* %60 to %struct._IRC_CHANNEL_REC*, !dbg !2237
  %62 = icmp ne %struct._IRC_CHANNEL_REC* %61, null, !dbg !2237
  br i1 %62, label %63, label %64, !dbg !2238

; <label>:63:                                     ; preds = %54
  br i1 false, label %65, label %72, !dbg !2239

; <label>:64:                                     ; preds = %54
  br i1 false, label %72, label %65, !dbg !2241

; <label>:65:                                     ; preds = %64, %63
  br label %66, !dbg !2243, !llvm.loop !2244

; <label>:66:                                     ; preds = %65
  %67 = load i8*, i8** %9, align 8, !dbg !2245
  call void @cmd_params_free(i8* %67), !dbg !2248
  br label %68, !dbg !2249, !llvm.loop !2250

; <label>:68:                                     ; preds = %66
  %69 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 5 to i8*)), !dbg !2252
  call void @signal_stop(), !dbg !2255
  br label %93, !dbg !2257
                                                  ; No predecessors!
  br label %71, !dbg !2258

; <label>:71:                                     ; preds = %70
  br label %72, !dbg !2260

; <label>:72:                                     ; preds = %71, %64, %63
  %73 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !2262
  %74 = bitcast %struct._WI_ITEM_REC* %73 to i8*, !dbg !2262
  %75 = call i8* @module_check_cast_module(i8* %74, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0)), !dbg !2263
  %76 = bitcast i8* %75 to %struct._CHANNEL_REC*, !dbg !2264
  %77 = bitcast %struct._CHANNEL_REC* %76 to i8*, !dbg !2265
  %78 = call i8* @chat_protocol_check_cast(i8* %77, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !2266
  %79 = bitcast i8* %78 to %struct._IRC_CHANNEL_REC*, !dbg !2268
  %80 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %79, i32 0, i32 6, !dbg !2269
  %81 = load i8*, i8** %80, align 8, !dbg !2269
  store i8* %81, i8** %8, align 8, !dbg !2270
  br label %82, !dbg !2271

; <label>:82:                                     ; preds = %72, %49
  %83 = load i8*, i8** %8, align 8, !dbg !2272
  %84 = call i32 @g_strcmp0(i8* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i32 0, i32 0)), !dbg !2274
  %85 = icmp eq i32 %84, 0, !dbg !2275
  br i1 %85, label %86, label %88, !dbg !2276

; <label>:86:                                     ; preds = %82
  %87 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2277
  call void @irc_send_cmd(%struct._IRC_SERVER_REC* %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i32 0, i32 0)), !dbg !2279
  br label %91, !dbg !2280

; <label>:88:                                     ; preds = %82
  %89 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2281
  %90 = load i8*, i8** %8, align 8, !dbg !2283
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.92, i32 0, i32 0), i8* %90), !dbg !2284
  br label %91

; <label>:91:                                     ; preds = %88, %86
  %92 = load i8*, i8** %9, align 8, !dbg !2285
  call void @cmd_params_free(i8* %92), !dbg !2286
  br label %93, !dbg !2287

; <label>:93:                                     ; preds = %91, %68, %44, %36, %24
  ret void, !dbg !2288
}

; Function Attrs: nounwind uwtable
define internal void @cmd_nick(i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !2290 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2291, metadata !889), !dbg !2292
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !2293, metadata !889), !dbg !2294
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !2295, metadata !889), !dbg !2296
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2297, metadata !889), !dbg !2298
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2299, metadata !889), !dbg !2300
  br label %9, !dbg !2301, !llvm.loop !2302

; <label>:9:                                      ; preds = %3
  %10 = load i8*, i8** %4, align 8, !dbg !2303
  %11 = icmp ne i8* %10, null, !dbg !2307
  br i1 %11, label %12, label %13, !dbg !2303

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !2308

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.cmd_nick, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.93, i32 0, i32 0)), !dbg !2311
  br label %62, !dbg !2314

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !2315

; <label>:15:                                     ; preds = %14
  br label %16, !dbg !2317, !llvm.loop !2318

; <label>:16:                                     ; preds = %15
  %17 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2319
  %18 = icmp ne %struct._IRC_SERVER_REC* %17, null, !dbg !2323
  br i1 %18, label %19, label %31, !dbg !2324

; <label>:19:                                     ; preds = %16
  %20 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2325
  %21 = bitcast %struct._IRC_SERVER_REC* %20 to i8*, !dbg !2325
  %22 = call i8* @module_check_cast(i8* %21, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !2327
  %23 = bitcast i8* %22 to %struct._SERVER_REC*, !dbg !2328
  %24 = bitcast %struct._SERVER_REC* %23 to i8*, !dbg !2329
  %25 = call i8* @chat_protocol_check_cast(i8* %24, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !2330
  %26 = bitcast i8* %25 to %struct._IRC_SERVER_REC*, !dbg !2332
  %27 = icmp ne %struct._IRC_SERVER_REC* %26, null, !dbg !2332
  br i1 %27, label %28, label %29, !dbg !2333

; <label>:28:                                     ; preds = %19
  br i1 false, label %30, label %31, !dbg !2334

; <label>:29:                                     ; preds = %19
  br i1 false, label %31, label %30, !dbg !2336

; <label>:30:                                     ; preds = %29, %28
  br label %62, !dbg !2338

; <label>:31:                                     ; preds = %29, %28, %16
  %32 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2340
  %33 = icmp eq %struct._IRC_SERVER_REC* %32, null, !dbg !2343
  br i1 %33, label %41, label %34, !dbg !2344

; <label>:34:                                     ; preds = %31
  %35 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2345
  %36 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %35, i32 0, i32 8, !dbg !2347
  %37 = load i8, i8* %36, align 8, !dbg !2347
  %38 = and i8 %37, 1, !dbg !2347
  %39 = zext i8 %38 to i32, !dbg !2347
  %40 = icmp ne i32 %39, 0, !dbg !2348
  br i1 %40, label %45, label %41, !dbg !2349

; <label>:41:                                     ; preds = %34, %31
  br label %42, !dbg !2350, !llvm.loop !2352

; <label>:42:                                     ; preds = %41
  %43 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !2354
  call void @signal_stop(), !dbg !2357
  br label %62, !dbg !2359
                                                  ; No predecessors!
  br label %45, !dbg !2360

; <label>:45:                                     ; preds = %44, %34
  br label %46, !dbg !2362

; <label>:46:                                     ; preds = %45
  %47 = load i8*, i8** %4, align 8, !dbg !2364
  %48 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %47, i8** %8, i32 1, i8** %7), !dbg !2366
  %49 = icmp ne i32 %48, 0, !dbg !2366
  br i1 %49, label %51, label %50, !dbg !2367

; <label>:50:                                     ; preds = %46
  br label %62, !dbg !2368

; <label>:51:                                     ; preds = %46
  %52 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2369
  %53 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %52, i32 0, i32 39, !dbg !2370
  %54 = load i8*, i8** %53, align 8, !dbg !2370
  call void @g_free(i8* %54), !dbg !2371
  %55 = load i8*, i8** %7, align 8, !dbg !2372
  %56 = call noalias i8* @g_strdup(i8* %55), !dbg !2373
  %57 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2374
  %58 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %57, i32 0, i32 39, !dbg !2375
  store i8* %56, i8** %58, align 8, !dbg !2376
  %59 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2377
  %60 = load i8*, i8** %7, align 8, !dbg !2378
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.94, i32 0, i32 0), i8* %60), !dbg !2379
  %61 = load i8*, i8** %8, align 8, !dbg !2380
  call void @cmd_params_free(i8* %61), !dbg !2381
  br label %62, !dbg !2382

; <label>:62:                                     ; preds = %51, %50, %42, %30, %13
  ret void, !dbg !2383
}

; Function Attrs: nounwind uwtable
define internal void @cmd_whois(i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !2385 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca %struct._GHashTable*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct._QUERY_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2386, metadata !889), !dbg !2387
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !2388, metadata !889), !dbg !2389
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !2390, metadata !889), !dbg !2391
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %7, metadata !2392, metadata !889), !dbg !2393
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2394, metadata !889), !dbg !2395
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2396, metadata !889), !dbg !2397
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2398, metadata !889), !dbg !2399
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2400, metadata !889), !dbg !2401
  call void @llvm.dbg.declare(metadata i8** %12, metadata !2402, metadata !889), !dbg !2403
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2404, metadata !889), !dbg !2405
  br label %15, !dbg !2406, !llvm.loop !2407

; <label>:15:                                     ; preds = %3
  %16 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2408
  %17 = icmp ne %struct._IRC_SERVER_REC* %16, null, !dbg !2412
  br i1 %17, label %18, label %30, !dbg !2413

; <label>:18:                                     ; preds = %15
  %19 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2414
  %20 = bitcast %struct._IRC_SERVER_REC* %19 to i8*, !dbg !2414
  %21 = call i8* @module_check_cast(i8* %20, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !2416
  %22 = bitcast i8* %21 to %struct._SERVER_REC*, !dbg !2417
  %23 = bitcast %struct._SERVER_REC* %22 to i8*, !dbg !2418
  %24 = call i8* @chat_protocol_check_cast(i8* %23, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !2419
  %25 = bitcast i8* %24 to %struct._IRC_SERVER_REC*, !dbg !2421
  %26 = icmp ne %struct._IRC_SERVER_REC* %25, null, !dbg !2421
  br i1 %26, label %27, label %28, !dbg !2422

; <label>:27:                                     ; preds = %18
  br i1 false, label %29, label %30, !dbg !2423

; <label>:28:                                     ; preds = %18
  br i1 false, label %30, label %29, !dbg !2425

; <label>:29:                                     ; preds = %28, %27
  br label %158, !dbg !2427

; <label>:30:                                     ; preds = %28, %27, %15
  %31 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2429
  %32 = icmp eq %struct._IRC_SERVER_REC* %31, null, !dbg !2432
  br i1 %32, label %40, label %33, !dbg !2433

; <label>:33:                                     ; preds = %30
  %34 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2434
  %35 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %34, i32 0, i32 8, !dbg !2436
  %36 = load i8, i8* %35, align 8, !dbg !2436
  %37 = and i8 %36, 1, !dbg !2436
  %38 = zext i8 %37 to i32, !dbg !2436
  %39 = icmp ne i32 %38, 0, !dbg !2437
  br i1 %39, label %44, label %40, !dbg !2438

; <label>:40:                                     ; preds = %33, %30
  br label %41, !dbg !2439, !llvm.loop !2441

; <label>:41:                                     ; preds = %40
  %42 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !2443
  call void @signal_stop(), !dbg !2446
  br label %158, !dbg !2448
                                                  ; No predecessors!
  br label %44, !dbg !2449

; <label>:44:                                     ; preds = %43, %33
  br label %45, !dbg !2451

; <label>:45:                                     ; preds = %44
  %46 = load i8*, i8** %4, align 8, !dbg !2453
  %47 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %46, i8** %12, i32 49154, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), %struct._GHashTable** %7, i8** %8, i8** %9), !dbg !2455
  %48 = icmp ne i32 %47, 0, !dbg !2455
  br i1 %48, label %50, label %49, !dbg !2456

; <label>:49:                                     ; preds = %45
  br label %158, !dbg !2457

; <label>:50:                                     ; preds = %45
  %51 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !2458
  %52 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2459
  %53 = bitcast %struct._IRC_SERVER_REC* %52 to i8*, !dbg !2459
  %54 = call i8* @module_check_cast(i8* %53, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !2460
  %55 = bitcast i8* %54 to %struct._SERVER_REC*, !dbg !2461
  %56 = call %struct._SERVER_REC* @cmd_options_get_server(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), %struct._GHashTable* %51, %struct._SERVER_REC* %55), !dbg !2462
  %57 = bitcast %struct._SERVER_REC* %56 to i8*, !dbg !2464
  %58 = call i8* @module_check_cast(i8* %57, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !2465
  %59 = bitcast i8* %58 to %struct._SERVER_REC*, !dbg !2467
  %60 = bitcast %struct._SERVER_REC* %59 to i8*, !dbg !2468
  %61 = call i8* @chat_protocol_check_cast(i8* %60, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !2469
  %62 = bitcast i8* %61 to %struct._IRC_SERVER_REC*, !dbg !2471
  store %struct._IRC_SERVER_REC* %62, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2472
  %63 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2473
  %64 = icmp eq %struct._IRC_SERVER_REC* %63, null, !dbg !2475
  br i1 %64, label %65, label %67, !dbg !2476

; <label>:65:                                     ; preds = %50
  %66 = load i8*, i8** %12, align 8, !dbg !2477
  call void @cmd_params_free(i8* %66), !dbg !2479
  br label %158, !dbg !2480

; <label>:67:                                     ; preds = %50
  %68 = load i8*, i8** %9, align 8, !dbg !2481
  %69 = load i8, i8* %68, align 1, !dbg !2483
  %70 = sext i8 %69 to i32, !dbg !2483
  %71 = icmp eq i32 %70, 0, !dbg !2484
  br i1 %71, label %72, label %74, !dbg !2485

; <label>:72:                                     ; preds = %67
  %73 = load i8*, i8** %8, align 8, !dbg !2486
  store i8* %73, i8** %9, align 8, !dbg !2488
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8** %8, align 8, !dbg !2489
  br label %74, !dbg !2490

; <label>:74:                                     ; preds = %72, %67
  %75 = load i8*, i8** %9, align 8, !dbg !2491
  %76 = load i8, i8* %75, align 1, !dbg !2493
  %77 = sext i8 %76 to i32, !dbg !2493
  %78 = icmp eq i32 %77, 0, !dbg !2494
  br i1 %78, label %79, label %95, !dbg !2495

; <label>:79:                                     ; preds = %74
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %14, metadata !2496, metadata !889), !dbg !2498
  %80 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !2499
  %81 = bitcast %struct._WI_ITEM_REC* %80 to i8*, !dbg !2499
  %82 = call i8* @module_check_cast_module(i8* %81, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.95, i32 0, i32 0)), !dbg !2500
  %83 = bitcast i8* %82 to %struct._QUERY_REC*, !dbg !2501
  store %struct._QUERY_REC* %83, %struct._QUERY_REC** %14, align 8, !dbg !2498
  %84 = load %struct._QUERY_REC*, %struct._QUERY_REC** %14, align 8, !dbg !2502
  %85 = icmp eq %struct._QUERY_REC* %84, null, !dbg !2504
  br i1 %85, label %86, label %90, !dbg !2505

; <label>:86:                                     ; preds = %79
  %87 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2506
  %88 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %87, i32 0, i32 7, !dbg !2507
  %89 = load i8*, i8** %88, align 8, !dbg !2507
  store i8* %89, i8** %9, align 8, !dbg !2508
  br label %94, !dbg !2509

; <label>:90:                                     ; preds = %79
  %91 = load %struct._QUERY_REC*, %struct._QUERY_REC** %14, align 8, !dbg !2510
  %92 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %91, i32 0, i32 6, !dbg !2511
  %93 = load i8*, i8** %92, align 8, !dbg !2511
  store i8* %93, i8** %8, align 8, !dbg !2512
  store i8* %93, i8** %9, align 8, !dbg !2513
  br label %94

; <label>:94:                                     ; preds = %90, %86
  br label %95, !dbg !2514

; <label>:95:                                     ; preds = %94, %74
  %96 = load i8*, i8** %9, align 8, !dbg !2515
  %97 = call i32 @g_strcmp0(i8* %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.74, i32 0, i32 0)), !dbg !2517
  %98 = icmp eq i32 %97, 0, !dbg !2518
  br i1 %98, label %99, label %110, !dbg !2519

; <label>:99:                                     ; preds = %95
  %100 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !2520
  %101 = call i8* @g_hash_table_lookup(%struct._GHashTable* %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.68, i32 0, i32 0)), !dbg !2521
  %102 = icmp eq i8* %101, null, !dbg !2522
  br i1 %102, label %103, label %110, !dbg !2523

; <label>:103:                                    ; preds = %99
  br label %104, !dbg !2524, !llvm.loop !2525

; <label>:104:                                    ; preds = %103
  %105 = load i8*, i8** %12, align 8, !dbg !2526
  call void @cmd_params_free(i8* %105), !dbg !2529
  br label %106, !dbg !2530, !llvm.loop !2531

; <label>:106:                                    ; preds = %104
  %107 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 9 to i8*)), !dbg !2533
  call void @signal_stop(), !dbg !2536
  br label %158, !dbg !2538
                                                  ; No predecessors!
  br label %109, !dbg !2539

; <label>:109:                                    ; preds = %108
  br label %110, !dbg !2541

; <label>:110:                                    ; preds = %109, %99, %95
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.96, i32 0, i32 0), i8** %10, align 8, !dbg !2543
  %111 = load i8*, i8** %8, align 8, !dbg !2544
  %112 = load i8, i8* %111, align 1, !dbg !2546
  %113 = sext i8 %112 to i32, !dbg !2546
  %114 = icmp eq i32 %113, 0, !dbg !2547
  br i1 %114, label %115, label %118, !dbg !2548

; <label>:115:                                    ; preds = %110
  %116 = load %struct._GString*, %struct._GString** @tmpstr, align 8, !dbg !2549
  %117 = load i8*, i8** %9, align 8, !dbg !2550
  call void (%struct._GString*, i8*, ...) @g_string_printf(%struct._GString* %116, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.97, i32 0, i32 0), i8* %117), !dbg !2551
  br label %128, !dbg !2551

; <label>:118:                                    ; preds = %110
  %119 = load %struct._GString*, %struct._GString** @tmpstr, align 8, !dbg !2552
  %120 = load i8*, i8** %8, align 8, !dbg !2554
  %121 = load i8*, i8** %9, align 8, !dbg !2555
  call void (%struct._GString*, i8*, ...) @g_string_printf(%struct._GString* %119, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.98, i32 0, i32 0), i8* %120, i8* %121), !dbg !2556
  %122 = load i8*, i8** %8, align 8, !dbg !2557
  %123 = load i8*, i8** %9, align 8, !dbg !2559
  %124 = call i32 @g_ascii_strcasecmp(i8* %122, i8* %123), !dbg !2560
  %125 = icmp eq i32 %124, 0, !dbg !2561
  br i1 %125, label %126, label %127, !dbg !2562

; <label>:126:                                    ; preds = %118
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.99, i32 0, i32 0), i8** %10, align 8, !dbg !2563
  br label %127, !dbg !2564

; <label>:127:                                    ; preds = %126, %118
  br label %128

; <label>:128:                                    ; preds = %127, %115
  %129 = load i8*, i8** %9, align 8, !dbg !2565
  %130 = call i8* @get_redirect_nicklist(i8* %129, i32* %13), !dbg !2566
  store i8* %130, i8** %9, align 8, !dbg !2567
  %131 = load i8*, i8** %8, align 8, !dbg !2568
  %132 = load i8*, i8** %9, align 8, !dbg !2569
  %133 = call noalias i8* (i8*, ...) @g_strconcat(i8* %131, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.100, i32 0, i32 0), i8* %132, i8* null), !dbg !2570
  store i8* %133, i8** %11, align 8, !dbg !2571
  %134 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2572
  %135 = load i8*, i8** %11, align 8, !dbg !2573
  %136 = load i8*, i8** %10, align 8, !dbg !2574
  %137 = call i32 @settings_get_bool(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0)), !dbg !2575
  %138 = icmp ne i32 %137, 0, !dbg !2575
  %139 = select i1 %138, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.99, i32 0, i32 0), !dbg !2575
  call void (%struct._IRC_SERVER_REC*, i8*, i32, i8*, i32, i8*, ...) @server_redirect_event(%struct._IRC_SERVER_REC* %134, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 1, i8* %135, i32 1, i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.101, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.96, i32 0, i32 0), i8* %136, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.103, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.104, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.106, i32 0, i32 0), i8* %139, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.107, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.108, i32 0, i32 0), i8* null), !dbg !2576
  %140 = load i8*, i8** %11, align 8, !dbg !2577
  call void @g_free(i8* %140), !dbg !2578
  %141 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2579
  %142 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %141, i32 0, i32 45, !dbg !2580
  %143 = load i16, i16* %142, align 4, !dbg !2581
  %144 = and i16 %143, -2, !dbg !2581
  store i16 %144, i16* %142, align 4, !dbg !2581
  %145 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2582
  %146 = load %struct._GString*, %struct._GString** @tmpstr, align 8, !dbg !2583
  %147 = getelementptr inbounds %struct._GString, %struct._GString* %146, i32 0, i32 0, !dbg !2584
  %148 = load i8*, i8** %147, align 8, !dbg !2584
  %149 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2585
  %150 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %149, i32 0, i32 48, !dbg !2586
  %151 = load i32, i32* %150, align 8, !dbg !2586
  call void @irc_send_cmd_split(%struct._IRC_SERVER_REC* %145, i8* %148, i32 2, i32 %151), !dbg !2587
  %152 = load i32, i32* %13, align 4, !dbg !2588
  %153 = icmp ne i32 %152, 0, !dbg !2588
  br i1 %153, label %154, label %156, !dbg !2590

; <label>:154:                                    ; preds = %128
  %155 = load i8*, i8** %9, align 8, !dbg !2591
  call void @g_free(i8* %155), !dbg !2593
  br label %156, !dbg !2593

; <label>:156:                                    ; preds = %154, %128
  %157 = load i8*, i8** %12, align 8, !dbg !2594
  call void @cmd_params_free(i8* %157), !dbg !2595
  br label %158, !dbg !2596

; <label>:158:                                    ; preds = %156, %106, %65, %49, %41, %29
  ret void, !dbg !2597
}

; Function Attrs: nounwind uwtable
define internal void @cmd_whowas(i8*, %struct._IRC_SERVER_REC*) #0 !dbg !2598 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2601, metadata !889), !dbg !2602
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !2603, metadata !889), !dbg !2604
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2605, metadata !889), !dbg !2606
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2607, metadata !889), !dbg !2608
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2609, metadata !889), !dbg !2610
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2611, metadata !889), !dbg !2612
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2613, metadata !889), !dbg !2614
  br label %10, !dbg !2615, !llvm.loop !2616

; <label>:10:                                     ; preds = %2
  %11 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2617
  %12 = icmp ne %struct._IRC_SERVER_REC* %11, null, !dbg !2621
  br i1 %12, label %13, label %25, !dbg !2622

; <label>:13:                                     ; preds = %10
  %14 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2623
  %15 = bitcast %struct._IRC_SERVER_REC* %14 to i8*, !dbg !2623
  %16 = call i8* @module_check_cast(i8* %15, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !2625
  %17 = bitcast i8* %16 to %struct._SERVER_REC*, !dbg !2626
  %18 = bitcast %struct._SERVER_REC* %17 to i8*, !dbg !2627
  %19 = call i8* @chat_protocol_check_cast(i8* %18, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !2628
  %20 = bitcast i8* %19 to %struct._IRC_SERVER_REC*, !dbg !2630
  %21 = icmp ne %struct._IRC_SERVER_REC* %20, null, !dbg !2630
  br i1 %21, label %22, label %23, !dbg !2631

; <label>:22:                                     ; preds = %13
  br i1 false, label %24, label %25, !dbg !2632

; <label>:23:                                     ; preds = %13
  br i1 false, label %25, label %24, !dbg !2634

; <label>:24:                                     ; preds = %23, %22
  br label %82, !dbg !2636

; <label>:25:                                     ; preds = %23, %22, %10
  %26 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2638
  %27 = icmp eq %struct._IRC_SERVER_REC* %26, null, !dbg !2641
  br i1 %27, label %35, label %28, !dbg !2642

; <label>:28:                                     ; preds = %25
  %29 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2643
  %30 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %29, i32 0, i32 8, !dbg !2645
  %31 = load i8, i8* %30, align 8, !dbg !2645
  %32 = and i8 %31, 1, !dbg !2645
  %33 = zext i8 %32 to i32, !dbg !2645
  %34 = icmp ne i32 %33, 0, !dbg !2646
  br i1 %34, label %39, label %35, !dbg !2647

; <label>:35:                                     ; preds = %28, %25
  br label %36, !dbg !2648, !llvm.loop !2650

; <label>:36:                                     ; preds = %35
  %37 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !2652
  call void @signal_stop(), !dbg !2655
  br label %82, !dbg !2657
                                                  ; No predecessors!
  br label %39, !dbg !2658

; <label>:39:                                     ; preds = %38, %28
  br label %40, !dbg !2660

; <label>:40:                                     ; preds = %39
  %41 = load i8*, i8** %3, align 8, !dbg !2662
  %42 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %41, i8** %8, i32 270338, i8** %5, i8** %6), !dbg !2664
  %43 = icmp ne i32 %42, 0, !dbg !2664
  br i1 %43, label %45, label %44, !dbg !2665

; <label>:44:                                     ; preds = %40
  br label %82, !dbg !2666

; <label>:45:                                     ; preds = %40
  %46 = load i8*, i8** %5, align 8, !dbg !2667
  %47 = load i8, i8* %46, align 1, !dbg !2669
  %48 = sext i8 %47 to i32, !dbg !2669
  %49 = icmp eq i32 %48, 0, !dbg !2670
  br i1 %49, label %50, label %54, !dbg !2671

; <label>:50:                                     ; preds = %45
  %51 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2672
  %52 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %51, i32 0, i32 7, !dbg !2674
  %53 = load i8*, i8** %52, align 8, !dbg !2674
  store i8* %53, i8** %5, align 8, !dbg !2675
  br label %54, !dbg !2676

; <label>:54:                                     ; preds = %50, %45
  %55 = load i8*, i8** %5, align 8, !dbg !2677
  %56 = call i8* @get_redirect_nicklist(i8* %55, i32* %9), !dbg !2678
  store i8* %56, i8** %7, align 8, !dbg !2679
  %57 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2680
  %58 = load i8*, i8** %7, align 8, !dbg !2681
  call void (%struct._IRC_SERVER_REC*, i8*, i32, i8*, i32, i8*, ...) @server_redirect_event(%struct._IRC_SERVER_REC* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i32 1, i8* %58, i32 -1, i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.102, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.110, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.64, i32 0, i32 0), i8* null), !dbg !2682
  %59 = load i32, i32* %9, align 4, !dbg !2683
  %60 = icmp ne i32 %59, 0, !dbg !2683
  br i1 %60, label %61, label %63, !dbg !2685

; <label>:61:                                     ; preds = %54
  %62 = load i8*, i8** %7, align 8, !dbg !2686
  call void @g_free(i8* %62), !dbg !2688
  br label %63, !dbg !2688

; <label>:63:                                     ; preds = %61, %54
  %64 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2689
  %65 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %64, i32 0, i32 45, !dbg !2690
  %66 = load i16, i16* %65, align 4, !dbg !2691
  %67 = and i16 %66, -3, !dbg !2691
  store i16 %67, i16* %65, align 4, !dbg !2691
  %68 = load i8*, i8** %6, align 8, !dbg !2692
  %69 = getelementptr inbounds i8, i8* %68, i64 0, !dbg !2692
  %70 = load i8, i8* %69, align 1, !dbg !2692
  %71 = sext i8 %70 to i32, !dbg !2692
  %72 = icmp eq i32 %71, 0, !dbg !2694
  br i1 %72, label %73, label %76, !dbg !2695

; <label>:73:                                     ; preds = %63
  %74 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2696
  %75 = load i8*, i8** %5, align 8, !dbg !2697
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.112, i32 0, i32 0), i8* %75), !dbg !2698
  br label %80, !dbg !2698

; <label>:76:                                     ; preds = %63
  %77 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2699
  %78 = load i8*, i8** %5, align 8, !dbg !2700
  %79 = load i8*, i8** %6, align 8, !dbg !2701
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %77, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.113, i32 0, i32 0), i8* %78, i8* %79), !dbg !2702
  br label %80

; <label>:80:                                     ; preds = %76, %73
  %81 = load i8*, i8** %8, align 8, !dbg !2703
  call void @cmd_params_free(i8* %81), !dbg !2704
  br label %82, !dbg !2705

; <label>:82:                                     ; preds = %80, %44, %36, %24
  ret void, !dbg !2706
}

; Function Attrs: nounwind uwtable
define internal void @cmd_ping(i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !2708 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca %struct._GTimeVal, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2709, metadata !889), !dbg !2710
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !2711, metadata !889), !dbg !2712
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !2713, metadata !889), !dbg !2714
  call void @llvm.dbg.declare(metadata %struct._GTimeVal* %7, metadata !2715, metadata !889), !dbg !2716
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2717, metadata !889), !dbg !2718
  br label %9, !dbg !2719, !llvm.loop !2720

; <label>:9:                                      ; preds = %3
  %10 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2721
  %11 = icmp ne %struct._IRC_SERVER_REC* %10, null, !dbg !2725
  br i1 %11, label %12, label %24, !dbg !2726

; <label>:12:                                     ; preds = %9
  %13 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2727
  %14 = bitcast %struct._IRC_SERVER_REC* %13 to i8*, !dbg !2727
  %15 = call i8* @module_check_cast(i8* %14, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !2729
  %16 = bitcast i8* %15 to %struct._SERVER_REC*, !dbg !2730
  %17 = bitcast %struct._SERVER_REC* %16 to i8*, !dbg !2731
  %18 = call i8* @chat_protocol_check_cast(i8* %17, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !2732
  %19 = bitcast i8* %18 to %struct._IRC_SERVER_REC*, !dbg !2734
  %20 = icmp ne %struct._IRC_SERVER_REC* %19, null, !dbg !2734
  br i1 %20, label %21, label %22, !dbg !2735

; <label>:21:                                     ; preds = %12
  br i1 false, label %23, label %24, !dbg !2736

; <label>:22:                                     ; preds = %12
  br i1 false, label %24, label %23, !dbg !2738

; <label>:23:                                     ; preds = %22, %21
  br label %74, !dbg !2740

; <label>:24:                                     ; preds = %22, %21, %9
  %25 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2742
  %26 = icmp eq %struct._IRC_SERVER_REC* %25, null, !dbg !2745
  br i1 %26, label %34, label %27, !dbg !2746

; <label>:27:                                     ; preds = %24
  %28 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2747
  %29 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %28, i32 0, i32 8, !dbg !2749
  %30 = load i8, i8* %29, align 8, !dbg !2749
  %31 = and i8 %30, 1, !dbg !2749
  %32 = zext i8 %31 to i32, !dbg !2749
  %33 = icmp ne i32 %32, 0, !dbg !2750
  br i1 %33, label %38, label %34, !dbg !2751

; <label>:34:                                     ; preds = %27, %24
  br label %35, !dbg !2752, !llvm.loop !2754

; <label>:35:                                     ; preds = %34
  %36 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !2756
  call void @signal_stop(), !dbg !2759
  br label %74, !dbg !2761
                                                  ; No predecessors!
  br label %38, !dbg !2762

; <label>:38:                                     ; preds = %37, %27
  br label %39, !dbg !2764

; <label>:39:                                     ; preds = %38
  %40 = load i8*, i8** %4, align 8, !dbg !2766
  %41 = load i8, i8* %40, align 1, !dbg !2768
  %42 = sext i8 %41 to i32, !dbg !2768
  %43 = icmp eq i32 %42, 0, !dbg !2769
  br i1 %43, label %44, label %62, !dbg !2770

; <label>:44:                                     ; preds = %39
  %45 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !2771
  %46 = bitcast %struct._WI_ITEM_REC* %45 to i8*, !dbg !2771
  %47 = call i8* @module_check_cast_module(i8* %46, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.95, i32 0, i32 0)), !dbg !2774
  %48 = bitcast i8* %47 to %struct._QUERY_REC*, !dbg !2775
  %49 = icmp ne %struct._QUERY_REC* %48, null, !dbg !2775
  br i1 %49, label %50, label %51, !dbg !2776

; <label>:50:                                     ; preds = %44
  br i1 false, label %52, label %56, !dbg !2777

; <label>:51:                                     ; preds = %44
  br i1 false, label %56, label %52, !dbg !2779

; <label>:52:                                     ; preds = %51, %50
  br label %53, !dbg !2781, !llvm.loop !2782

; <label>:53:                                     ; preds = %52
  %54 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !2783
  call void @signal_stop(), !dbg !2786
  br label %74, !dbg !2788
                                                  ; No predecessors!
  br label %56, !dbg !2789

; <label>:56:                                     ; preds = %55, %51, %50
  %57 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !2791
  %58 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %57, i32 0, i32 11, !dbg !2792
  %59 = load i8* (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)** %58, align 8, !dbg !2792
  %60 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !2793
  %61 = call i8* %59(%struct._WI_ITEM_REC* %60), !dbg !2794
  store i8* %61, i8** %4, align 8, !dbg !2795
  br label %62, !dbg !2796

; <label>:62:                                     ; preds = %56, %39
  call void @g_get_current_time(%struct._GTimeVal* %7), !dbg !2797
  %63 = load i8*, i8** %4, align 8, !dbg !2798
  %64 = getelementptr inbounds %struct._GTimeVal, %struct._GTimeVal* %7, i32 0, i32 0, !dbg !2799
  %65 = load i64, i64* %64, align 8, !dbg !2799
  %66 = getelementptr inbounds %struct._GTimeVal, %struct._GTimeVal* %7, i32 0, i32 1, !dbg !2800
  %67 = load i64, i64* %66, align 8, !dbg !2800
  %68 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.114, i32 0, i32 0), i8* %63, i64 %65, i64 %67), !dbg !2801
  store i8* %68, i8** %8, align 8, !dbg !2802
  %69 = load i8*, i8** %8, align 8, !dbg !2803
  %70 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2804
  %71 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !2805
  %72 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.115, i32 0, i32 0), i32 3, i8* %69, %struct._IRC_SERVER_REC* %70, %struct._WI_ITEM_REC* %71), !dbg !2806
  %73 = load i8*, i8** %8, align 8, !dbg !2807
  call void @g_free(i8* %73), !dbg !2808
  br label %74, !dbg !2809

; <label>:74:                                     ; preds = %62, %53, %35, %23
  ret void, !dbg !2810
}

; Function Attrs: nounwind uwtable
define internal void @command_2self(i8*, %struct._IRC_SERVER_REC*) #0 !dbg !2812 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2813, metadata !889), !dbg !2814
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !2815, metadata !889), !dbg !2816
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2817, metadata !889), !dbg !2818
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2819, metadata !889), !dbg !2820
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2821, metadata !889), !dbg !2822
  br label %8, !dbg !2823, !llvm.loop !2824

; <label>:8:                                      ; preds = %2
  %9 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2825
  %10 = icmp ne %struct._IRC_SERVER_REC* %9, null, !dbg !2829
  br i1 %10, label %11, label %23, !dbg !2830

; <label>:11:                                     ; preds = %8
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2831
  %13 = bitcast %struct._IRC_SERVER_REC* %12 to i8*, !dbg !2831
  %14 = call i8* @module_check_cast(i8* %13, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !2833
  %15 = bitcast i8* %14 to %struct._SERVER_REC*, !dbg !2834
  %16 = bitcast %struct._SERVER_REC* %15 to i8*, !dbg !2835
  %17 = call i8* @chat_protocol_check_cast(i8* %16, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !2836
  %18 = bitcast i8* %17 to %struct._IRC_SERVER_REC*, !dbg !2838
  %19 = icmp ne %struct._IRC_SERVER_REC* %18, null, !dbg !2838
  br i1 %19, label %20, label %21, !dbg !2839

; <label>:20:                                     ; preds = %11
  br i1 false, label %22, label %23, !dbg !2840

; <label>:21:                                     ; preds = %11
  br i1 false, label %23, label %22, !dbg !2842

; <label>:22:                                     ; preds = %21, %20
  br label %61, !dbg !2844

; <label>:23:                                     ; preds = %21, %20, %8
  %24 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2846
  %25 = icmp eq %struct._IRC_SERVER_REC* %24, null, !dbg !2849
  br i1 %25, label %33, label %26, !dbg !2850

; <label>:26:                                     ; preds = %23
  %27 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2851
  %28 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %27, i32 0, i32 8, !dbg !2853
  %29 = load i8, i8* %28, align 8, !dbg !2853
  %30 = and i8 %29, 1, !dbg !2853
  %31 = zext i8 %30 to i32, !dbg !2853
  %32 = icmp ne i32 %31, 0, !dbg !2854
  br i1 %32, label %37, label %33, !dbg !2855

; <label>:33:                                     ; preds = %26, %23
  br label %34, !dbg !2856, !llvm.loop !2858

; <label>:34:                                     ; preds = %33
  %35 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !2860
  call void @signal_stop(), !dbg !2863
  br label %61, !dbg !2865
                                                  ; No predecessors!
  br label %37, !dbg !2866

; <label>:37:                                     ; preds = %36, %26
  br label %38, !dbg !2868

; <label>:38:                                     ; preds = %37
  %39 = load i8*, i8** %3, align 8, !dbg !2870
  %40 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %39, i8** %7, i32 8194, i8** %5, i8** %6), !dbg !2872
  %41 = icmp ne i32 %40, 0, !dbg !2872
  br i1 %41, label %43, label %42, !dbg !2873

; <label>:42:                                     ; preds = %38
  br label %61, !dbg !2874

; <label>:43:                                     ; preds = %38
  %44 = load i8*, i8** %5, align 8, !dbg !2875
  %45 = load i8, i8* %44, align 1, !dbg !2877
  %46 = sext i8 %45 to i32, !dbg !2877
  %47 = icmp eq i32 %46, 0, !dbg !2878
  br i1 %47, label %48, label %55, !dbg !2879

; <label>:48:                                     ; preds = %43
  br label %49, !dbg !2880, !llvm.loop !2882

; <label>:49:                                     ; preds = %48
  %50 = load i8*, i8** %7, align 8, !dbg !2884
  call void @cmd_params_free(i8* %50), !dbg !2887
  br label %51, !dbg !2888, !llvm.loop !2889

; <label>:51:                                     ; preds = %49
  %52 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !2891
  call void @signal_stop(), !dbg !2894
  br label %61, !dbg !2896
                                                  ; No predecessors!
  br label %54, !dbg !2897

; <label>:54:                                     ; preds = %53
  br label %55, !dbg !2899

; <label>:55:                                     ; preds = %54, %43
  %56 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2901
  %57 = load i8*, i8** @current_command, align 8, !dbg !2902
  %58 = load i8*, i8** %5, align 8, !dbg !2903
  %59 = load i8*, i8** %6, align 8, !dbg !2904
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.116, i32 0, i32 0), i8* %57, i8* %58, i8* %59), !dbg !2905
  %60 = load i8*, i8** %7, align 8, !dbg !2906
  call void @cmd_params_free(i8* %60), !dbg !2907
  br label %61, !dbg !2908

; <label>:61:                                     ; preds = %55, %51, %42, %34, %22
  ret void, !dbg !2909
}

; Function Attrs: nounwind uwtable
define internal void @cmd_away(i8*, %struct._IRC_SERVER_REC*) #0 !dbg !2911 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca %struct._GHashTable*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2912, metadata !889), !dbg !2913
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !2914, metadata !889), !dbg !2915
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %5, metadata !2916, metadata !889), !dbg !2917
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2918, metadata !889), !dbg !2919
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2920, metadata !889), !dbg !2921
  %8 = load i8*, i8** %3, align 8, !dbg !2922
  %9 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %8, i8** %7, i32 24577, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), %struct._GHashTable** %5, i8** %6), !dbg !2924
  %10 = icmp ne i32 %9, 0, !dbg !2924
  br i1 %10, label %12, label %11, !dbg !2925

; <label>:11:                                     ; preds = %2
  br label %24, !dbg !2926

; <label>:12:                                     ; preds = %2
  %13 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !2927
  %14 = call i8* @g_hash_table_lookup(%struct._GHashTable* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.117, i32 0, i32 0)), !dbg !2929
  %15 = icmp ne i8* %14, null, !dbg !2930
  br i1 %15, label %16, label %19, !dbg !2931

; <label>:16:                                     ; preds = %12
  %17 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2932
  %18 = load i8*, i8** %6, align 8, !dbg !2933
  call void @irc_server_send_away(%struct._IRC_SERVER_REC* %17, i8* %18), !dbg !2934
  br label %22, !dbg !2934

; <label>:19:                                     ; preds = %12
  %20 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !2935
  %21 = load i8*, i8** %6, align 8, !dbg !2936
  call void @g_slist_foreach(%struct._GSList* %20, void (i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @irc_server_send_away to void (i8*, i8*)*), i8* %21), !dbg !2937
  br label %22

; <label>:22:                                     ; preds = %19, %16
  %23 = load i8*, i8** %7, align 8, !dbg !2938
  call void @cmd_params_free(i8* %23), !dbg !2939
  br label %24, !dbg !2940

; <label>:24:                                     ; preds = %22, %11
  ret void, !dbg !2941
}

; Function Attrs: nounwind uwtable
define internal void @command_1self(i8*, %struct._IRC_SERVER_REC*) #0 !dbg !2943 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2944, metadata !889), !dbg !2945
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !2946, metadata !889), !dbg !2947
  br label %5, !dbg !2948, !llvm.loop !2949

; <label>:5:                                      ; preds = %2
  %6 = load i8*, i8** %3, align 8, !dbg !2950
  %7 = icmp ne i8* %6, null, !dbg !2954
  br i1 %7, label %8, label %9, !dbg !2950

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !2955

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.command_1self, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.93, i32 0, i32 0)), !dbg !2958
  br label %46, !dbg !2961

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !2962

; <label>:11:                                     ; preds = %10
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2964
  %13 = bitcast %struct._IRC_SERVER_REC* %12 to i8*, !dbg !2964
  %14 = call i8* @module_check_cast(i8* %13, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !2966
  %15 = bitcast i8* %14 to %struct._SERVER_REC*, !dbg !2967
  %16 = bitcast %struct._SERVER_REC* %15 to i8*, !dbg !2968
  %17 = call i8* @chat_protocol_check_cast(i8* %16, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !2969
  %18 = bitcast i8* %17 to %struct._IRC_SERVER_REC*, !dbg !2971
  %19 = icmp ne %struct._IRC_SERVER_REC* %18, null, !dbg !2971
  br i1 %19, label %20, label %21, !dbg !2972

; <label>:20:                                     ; preds = %11
  br i1 false, label %29, label %22, !dbg !2973

; <label>:21:                                     ; preds = %11
  br i1 false, label %22, label %29, !dbg !2975

; <label>:22:                                     ; preds = %21, %20
  %23 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2977
  %24 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %23, i32 0, i32 8, !dbg !2979
  %25 = load i8, i8* %24, align 8, !dbg !2979
  %26 = and i8 %25, 1, !dbg !2979
  %27 = zext i8 %26 to i32, !dbg !2979
  %28 = icmp ne i32 %27, 0, !dbg !2977
  br i1 %28, label %33, label %29, !dbg !2980

; <label>:29:                                     ; preds = %22, %21, %20
  br label %30, !dbg !2981, !llvm.loop !2982

; <label>:30:                                     ; preds = %29
  %31 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !2983
  call void @signal_stop(), !dbg !2986
  br label %46, !dbg !2988
                                                  ; No predecessors!
  br label %33, !dbg !2989

; <label>:33:                                     ; preds = %32, %22
  %34 = load i8*, i8** %3, align 8, !dbg !2991
  %35 = load i8, i8* %34, align 1, !dbg !2993
  %36 = sext i8 %35 to i32, !dbg !2993
  %37 = icmp eq i32 %36, 0, !dbg !2994
  br i1 %37, label %38, label %42, !dbg !2995

; <label>:38:                                     ; preds = %33
  br label %39, !dbg !2996, !llvm.loop !2998

; <label>:39:                                     ; preds = %38
  %40 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !3000
  call void @signal_stop(), !dbg !3003
  br label %46, !dbg !3005
                                                  ; No predecessors!
  br label %42, !dbg !3006

; <label>:42:                                     ; preds = %41, %33
  %43 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3008
  %44 = load i8*, i8** @current_command, align 8, !dbg !3009
  %45 = load i8*, i8** %3, align 8, !dbg !3010
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.118, i32 0, i32 0), i8* %44, i8* %45), !dbg !3011
  br label %46, !dbg !3012

; <label>:46:                                     ; preds = %42, %39, %30, %9
  ret void, !dbg !3013
}

; Function Attrs: nounwind uwtable
define internal void @cmd_accept(i8*, %struct._IRC_SERVER_REC*) #0 !dbg !3015 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3016, metadata !889), !dbg !3017
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !3018, metadata !889), !dbg !3019
  br label %5, !dbg !3020, !llvm.loop !3021

; <label>:5:                                      ; preds = %2
  %6 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3022
  %7 = icmp ne %struct._IRC_SERVER_REC* %6, null, !dbg !3026
  br i1 %7, label %8, label %20, !dbg !3027

; <label>:8:                                      ; preds = %5
  %9 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3028
  %10 = bitcast %struct._IRC_SERVER_REC* %9 to i8*, !dbg !3028
  %11 = call i8* @module_check_cast(i8* %10, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !3030
  %12 = bitcast i8* %11 to %struct._SERVER_REC*, !dbg !3031
  %13 = bitcast %struct._SERVER_REC* %12 to i8*, !dbg !3032
  %14 = call i8* @chat_protocol_check_cast(i8* %13, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !3033
  %15 = bitcast i8* %14 to %struct._IRC_SERVER_REC*, !dbg !3035
  %16 = icmp ne %struct._IRC_SERVER_REC* %15, null, !dbg !3035
  br i1 %16, label %17, label %18, !dbg !3036

; <label>:17:                                     ; preds = %8
  br i1 false, label %19, label %20, !dbg !3037

; <label>:18:                                     ; preds = %8
  br i1 false, label %20, label %19, !dbg !3039

; <label>:19:                                     ; preds = %18, %17
  br label %45, !dbg !3041

; <label>:20:                                     ; preds = %18, %17, %5
  %21 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3043
  %22 = icmp eq %struct._IRC_SERVER_REC* %21, null, !dbg !3046
  br i1 %22, label %30, label %23, !dbg !3047

; <label>:23:                                     ; preds = %20
  %24 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3048
  %25 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %24, i32 0, i32 8, !dbg !3050
  %26 = load i8, i8* %25, align 8, !dbg !3050
  %27 = and i8 %26, 1, !dbg !3050
  %28 = zext i8 %27 to i32, !dbg !3050
  %29 = icmp ne i32 %28, 0, !dbg !3051
  br i1 %29, label %34, label %30, !dbg !3052

; <label>:30:                                     ; preds = %23, %20
  br label %31, !dbg !3053, !llvm.loop !3055

; <label>:31:                                     ; preds = %30
  %32 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !3057
  call void @signal_stop(), !dbg !3060
  br label %45, !dbg !3062
                                                  ; No predecessors!
  br label %34, !dbg !3063

; <label>:34:                                     ; preds = %33, %23
  br label %35, !dbg !3065

; <label>:35:                                     ; preds = %34
  %36 = load i8*, i8** %3, align 8, !dbg !3067
  %37 = load i8, i8* %36, align 1, !dbg !3069
  %38 = sext i8 %37 to i32, !dbg !3069
  %39 = icmp eq i32 %38, 0, !dbg !3070
  br i1 %39, label %40, label %42, !dbg !3071

; <label>:40:                                     ; preds = %35
  %41 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3072
  call void @irc_send_cmd(%struct._IRC_SERVER_REC* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.119, i32 0, i32 0)), !dbg !3073
  br label %45, !dbg !3073

; <label>:42:                                     ; preds = %35
  %43 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3074
  %44 = load i8*, i8** %3, align 8, !dbg !3075
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.120, i32 0, i32 0), i8* %44), !dbg !3076
  br label %45

; <label>:45:                                     ; preds = %19, %31, %42, %40
  ret void, !dbg !3077
}

; Function Attrs: nounwind uwtable
define internal void @command_self(i8*, %struct._IRC_SERVER_REC*) #0 !dbg !3078 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3079, metadata !889), !dbg !3080
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !3081, metadata !889), !dbg !3082
  br label %5, !dbg !3083, !llvm.loop !3084

; <label>:5:                                      ; preds = %2
  %6 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3085
  %7 = icmp ne %struct._IRC_SERVER_REC* %6, null, !dbg !3089
  br i1 %7, label %8, label %20, !dbg !3090

; <label>:8:                                      ; preds = %5
  %9 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3091
  %10 = bitcast %struct._IRC_SERVER_REC* %9 to i8*, !dbg !3091
  %11 = call i8* @module_check_cast(i8* %10, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !3093
  %12 = bitcast i8* %11 to %struct._SERVER_REC*, !dbg !3094
  %13 = bitcast %struct._SERVER_REC* %12 to i8*, !dbg !3095
  %14 = call i8* @chat_protocol_check_cast(i8* %13, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !3096
  %15 = bitcast i8* %14 to %struct._IRC_SERVER_REC*, !dbg !3098
  %16 = icmp ne %struct._IRC_SERVER_REC* %15, null, !dbg !3098
  br i1 %16, label %17, label %18, !dbg !3099

; <label>:17:                                     ; preds = %8
  br i1 false, label %19, label %20, !dbg !3100

; <label>:18:                                     ; preds = %8
  br i1 false, label %20, label %19, !dbg !3102

; <label>:19:                                     ; preds = %18, %17
  br label %48, !dbg !3104

; <label>:20:                                     ; preds = %18, %17, %5
  %21 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3106
  %22 = icmp eq %struct._IRC_SERVER_REC* %21, null, !dbg !3109
  br i1 %22, label %30, label %23, !dbg !3110

; <label>:23:                                     ; preds = %20
  %24 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3111
  %25 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %24, i32 0, i32 8, !dbg !3113
  %26 = load i8, i8* %25, align 8, !dbg !3113
  %27 = and i8 %26, 1, !dbg !3113
  %28 = zext i8 %27 to i32, !dbg !3113
  %29 = icmp ne i32 %28, 0, !dbg !3114
  br i1 %29, label %34, label %30, !dbg !3115

; <label>:30:                                     ; preds = %23, %20
  br label %31, !dbg !3116, !llvm.loop !3118

; <label>:31:                                     ; preds = %30
  %32 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !3120
  call void @signal_stop(), !dbg !3123
  br label %48, !dbg !3125
                                                  ; No predecessors!
  br label %34, !dbg !3126

; <label>:34:                                     ; preds = %33, %23
  br label %35, !dbg !3128

; <label>:35:                                     ; preds = %34
  %36 = load i8*, i8** %3, align 8, !dbg !3130
  %37 = getelementptr inbounds i8, i8* %36, i64 0, !dbg !3130
  %38 = load i8, i8* %37, align 1, !dbg !3130
  %39 = sext i8 %38 to i32, !dbg !3130
  %40 = icmp eq i32 %39, 0, !dbg !3132
  br i1 %40, label %41, label %44, !dbg !3133

; <label>:41:                                     ; preds = %35
  %42 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3134
  %43 = load i8*, i8** @current_command, align 8, !dbg !3135
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i32 0, i32 0), i8* %43), !dbg !3136
  br label %48, !dbg !3136

; <label>:44:                                     ; preds = %35
  %45 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3137
  %46 = load i8*, i8** @current_command, align 8, !dbg !3138
  %47 = load i8*, i8** %3, align 8, !dbg !3139
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.122, i32 0, i32 0), i8* %46, i8* %47), !dbg !3140
  br label %48

; <label>:48:                                     ; preds = %19, %31, %44, %41
  ret void, !dbg !3141
}

; Function Attrs: nounwind uwtable
define internal void @cmd_unsilence(i8*, %struct._IRC_SERVER_REC*) #0 !dbg !3142 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3143, metadata !889), !dbg !3144
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !3145, metadata !889), !dbg !3146
  br label %5, !dbg !3147, !llvm.loop !3148

; <label>:5:                                      ; preds = %2
  %6 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3149
  %7 = icmp ne %struct._IRC_SERVER_REC* %6, null, !dbg !3153
  br i1 %7, label %8, label %20, !dbg !3154

; <label>:8:                                      ; preds = %5
  %9 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3155
  %10 = bitcast %struct._IRC_SERVER_REC* %9 to i8*, !dbg !3155
  %11 = call i8* @module_check_cast(i8* %10, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !3157
  %12 = bitcast i8* %11 to %struct._SERVER_REC*, !dbg !3158
  %13 = bitcast %struct._SERVER_REC* %12 to i8*, !dbg !3159
  %14 = call i8* @chat_protocol_check_cast(i8* %13, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !3160
  %15 = bitcast i8* %14 to %struct._IRC_SERVER_REC*, !dbg !3162
  %16 = icmp ne %struct._IRC_SERVER_REC* %15, null, !dbg !3162
  br i1 %16, label %17, label %18, !dbg !3163

; <label>:17:                                     ; preds = %8
  br i1 false, label %19, label %20, !dbg !3164

; <label>:18:                                     ; preds = %8
  br i1 false, label %20, label %19, !dbg !3166

; <label>:19:                                     ; preds = %18, %17
  br label %47, !dbg !3168

; <label>:20:                                     ; preds = %18, %17, %5
  %21 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3170
  %22 = icmp eq %struct._IRC_SERVER_REC* %21, null, !dbg !3173
  br i1 %22, label %30, label %23, !dbg !3174

; <label>:23:                                     ; preds = %20
  %24 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3175
  %25 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %24, i32 0, i32 8, !dbg !3177
  %26 = load i8, i8* %25, align 8, !dbg !3177
  %27 = and i8 %26, 1, !dbg !3177
  %28 = zext i8 %27 to i32, !dbg !3177
  %29 = icmp ne i32 %28, 0, !dbg !3178
  br i1 %29, label %34, label %30, !dbg !3179

; <label>:30:                                     ; preds = %23, %20
  br label %31, !dbg !3180, !llvm.loop !3182

; <label>:31:                                     ; preds = %30
  %32 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !3184
  call void @signal_stop(), !dbg !3187
  br label %47, !dbg !3189
                                                  ; No predecessors!
  br label %34, !dbg !3190

; <label>:34:                                     ; preds = %33, %23
  br label %35, !dbg !3192

; <label>:35:                                     ; preds = %34
  %36 = load i8*, i8** %3, align 8, !dbg !3194
  %37 = load i8, i8* %36, align 1, !dbg !3196
  %38 = sext i8 %37 to i32, !dbg !3196
  %39 = icmp eq i32 %38, 0, !dbg !3197
  br i1 %39, label %40, label %44, !dbg !3198

; <label>:40:                                     ; preds = %35
  br label %41, !dbg !3199, !llvm.loop !3200

; <label>:41:                                     ; preds = %40
  %42 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !3201
  call void @signal_stop(), !dbg !3204
  br label %47, !dbg !3206
                                                  ; No predecessors!
  br label %44, !dbg !3207

; <label>:44:                                     ; preds = %43, %35
  %45 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3209
  %46 = load i8*, i8** %3, align 8, !dbg !3210
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.123, i32 0, i32 0), i8* %46), !dbg !3211
  br label %47, !dbg !3212

; <label>:47:                                     ; preds = %44, %41, %31, %19
  ret void, !dbg !3213
}

; Function Attrs: nounwind uwtable
define internal void @cmd_sconnect(i8*, %struct._IRC_SERVER_REC*) #0 !dbg !3215 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3216, metadata !889), !dbg !3217
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !3218, metadata !889), !dbg !3219
  br label %5, !dbg !3220, !llvm.loop !3221

; <label>:5:                                      ; preds = %2
  %6 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3222
  %7 = icmp ne %struct._IRC_SERVER_REC* %6, null, !dbg !3226
  br i1 %7, label %8, label %20, !dbg !3227

; <label>:8:                                      ; preds = %5
  %9 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3228
  %10 = bitcast %struct._IRC_SERVER_REC* %9 to i8*, !dbg !3228
  %11 = call i8* @module_check_cast(i8* %10, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !3230
  %12 = bitcast i8* %11 to %struct._SERVER_REC*, !dbg !3231
  %13 = bitcast %struct._SERVER_REC* %12 to i8*, !dbg !3232
  %14 = call i8* @chat_protocol_check_cast(i8* %13, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !3233
  %15 = bitcast i8* %14 to %struct._IRC_SERVER_REC*, !dbg !3235
  %16 = icmp ne %struct._IRC_SERVER_REC* %15, null, !dbg !3235
  br i1 %16, label %17, label %18, !dbg !3236

; <label>:17:                                     ; preds = %8
  br i1 false, label %19, label %20, !dbg !3237

; <label>:18:                                     ; preds = %8
  br i1 false, label %20, label %19, !dbg !3239

; <label>:19:                                     ; preds = %18, %17
  br label %47, !dbg !3241

; <label>:20:                                     ; preds = %18, %17, %5
  %21 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3243
  %22 = icmp eq %struct._IRC_SERVER_REC* %21, null, !dbg !3246
  br i1 %22, label %30, label %23, !dbg !3247

; <label>:23:                                     ; preds = %20
  %24 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3248
  %25 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %24, i32 0, i32 8, !dbg !3250
  %26 = load i8, i8* %25, align 8, !dbg !3250
  %27 = and i8 %26, 1, !dbg !3250
  %28 = zext i8 %27 to i32, !dbg !3250
  %29 = icmp ne i32 %28, 0, !dbg !3251
  br i1 %29, label %34, label %30, !dbg !3252

; <label>:30:                                     ; preds = %23, %20
  br label %31, !dbg !3253, !llvm.loop !3255

; <label>:31:                                     ; preds = %30
  %32 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !3257
  call void @signal_stop(), !dbg !3260
  br label %47, !dbg !3262
                                                  ; No predecessors!
  br label %34, !dbg !3263

; <label>:34:                                     ; preds = %33, %23
  br label %35, !dbg !3265

; <label>:35:                                     ; preds = %34
  %36 = load i8*, i8** %3, align 8, !dbg !3267
  %37 = load i8, i8* %36, align 1, !dbg !3269
  %38 = sext i8 %37 to i32, !dbg !3269
  %39 = icmp eq i32 %38, 0, !dbg !3270
  br i1 %39, label %40, label %44, !dbg !3271

; <label>:40:                                     ; preds = %35
  br label %41, !dbg !3272, !llvm.loop !3274

; <label>:41:                                     ; preds = %40
  %42 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !3276
  call void @signal_stop(), !dbg !3279
  br label %47, !dbg !3281
                                                  ; No predecessors!
  br label %44, !dbg !3282

; <label>:44:                                     ; preds = %43, %35
  %45 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3284
  %46 = load i8*, i8** %3, align 8, !dbg !3285
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.124, i32 0, i32 0), i8* %46), !dbg !3286
  br label %47, !dbg !3287

; <label>:47:                                     ; preds = %44, %41, %31, %19
  ret void, !dbg !3288
}

; Function Attrs: nounwind uwtable
define internal void @cmd_oper(i8*, %struct._IRC_SERVER_REC*) #0 !dbg !3290 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3291, metadata !889), !dbg !3292
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !3293, metadata !889), !dbg !3294
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3295, metadata !889), !dbg !3296
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3297, metadata !889), !dbg !3298
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3299, metadata !889), !dbg !3300
  br label %8, !dbg !3301, !llvm.loop !3302

; <label>:8:                                      ; preds = %2
  %9 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3303
  %10 = icmp ne %struct._IRC_SERVER_REC* %9, null, !dbg !3307
  br i1 %10, label %11, label %23, !dbg !3308

; <label>:11:                                     ; preds = %8
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3309
  %13 = bitcast %struct._IRC_SERVER_REC* %12 to i8*, !dbg !3309
  %14 = call i8* @module_check_cast(i8* %13, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !3311
  %15 = bitcast i8* %14 to %struct._SERVER_REC*, !dbg !3312
  %16 = bitcast %struct._SERVER_REC* %15 to i8*, !dbg !3313
  %17 = call i8* @chat_protocol_check_cast(i8* %16, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !3314
  %18 = bitcast i8* %17 to %struct._IRC_SERVER_REC*, !dbg !3316
  %19 = icmp ne %struct._IRC_SERVER_REC* %18, null, !dbg !3316
  br i1 %19, label %20, label %21, !dbg !3317

; <label>:20:                                     ; preds = %11
  br i1 false, label %22, label %23, !dbg !3318

; <label>:21:                                     ; preds = %11
  br i1 false, label %23, label %22, !dbg !3320

; <label>:22:                                     ; preds = %21, %20
  br label %60, !dbg !3322

; <label>:23:                                     ; preds = %21, %20, %8
  %24 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3324
  %25 = icmp eq %struct._IRC_SERVER_REC* %24, null, !dbg !3327
  br i1 %25, label %33, label %26, !dbg !3328

; <label>:26:                                     ; preds = %23
  %27 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3329
  %28 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %27, i32 0, i32 8, !dbg !3331
  %29 = load i8, i8* %28, align 8, !dbg !3331
  %30 = and i8 %29, 1, !dbg !3331
  %31 = zext i8 %30 to i32, !dbg !3331
  %32 = icmp ne i32 %31, 0, !dbg !3332
  br i1 %32, label %37, label %33, !dbg !3333

; <label>:33:                                     ; preds = %26, %23
  br label %34, !dbg !3334, !llvm.loop !3336

; <label>:34:                                     ; preds = %33
  %35 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !3338
  call void @signal_stop(), !dbg !3341
  br label %60, !dbg !3343
                                                  ; No predecessors!
  br label %37, !dbg !3344

; <label>:37:                                     ; preds = %36, %26
  br label %38, !dbg !3346

; <label>:38:                                     ; preds = %37
  %39 = load i8*, i8** %3, align 8, !dbg !3348
  %40 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %39, i8** %7, i32 2, i8** %5, i8** %6), !dbg !3350
  %41 = icmp ne i32 %40, 0, !dbg !3350
  br i1 %41, label %43, label %42, !dbg !3351

; <label>:42:                                     ; preds = %38
  br label %60, !dbg !3352

; <label>:43:                                     ; preds = %38
  %44 = load i8*, i8** %6, align 8, !dbg !3353
  %45 = load i8, i8* %44, align 1, !dbg !3355
  %46 = sext i8 %45 to i32, !dbg !3355
  %47 = icmp eq i32 %46, 0, !dbg !3356
  br i1 %47, label %48, label %55, !dbg !3357

; <label>:48:                                     ; preds = %43
  br label %49, !dbg !3358, !llvm.loop !3360

; <label>:49:                                     ; preds = %48
  %50 = load i8*, i8** %7, align 8, !dbg !3362
  call void @cmd_params_free(i8* %50), !dbg !3365
  br label %51, !dbg !3366, !llvm.loop !3367

; <label>:51:                                     ; preds = %49
  %52 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !3369
  call void @signal_stop(), !dbg !3372
  br label %60, !dbg !3374
                                                  ; No predecessors!
  br label %54, !dbg !3375

; <label>:54:                                     ; preds = %53
  br label %55, !dbg !3377

; <label>:55:                                     ; preds = %54, %43
  %56 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3379
  %57 = load i8*, i8** %5, align 8, !dbg !3380
  %58 = load i8*, i8** %6, align 8, !dbg !3381
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.125, i32 0, i32 0), i8* %57, i8* %58), !dbg !3382
  %59 = load i8*, i8** %7, align 8, !dbg !3383
  call void @cmd_params_free(i8* %59), !dbg !3384
  br label %60, !dbg !3385

; <label>:60:                                     ; preds = %55, %51, %42, %34, %22
  ret void, !dbg !3386
}

; Function Attrs: nounwind uwtable
define internal void @cmd_quote(i8*, %struct._IRC_SERVER_REC*) #0 !dbg !3388 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3389, metadata !889), !dbg !3390
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !3391, metadata !889), !dbg !3392
  %5 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3393
  %6 = icmp ne %struct._IRC_SERVER_REC* %5, null, !dbg !3395
  br i1 %6, label %7, label %19, !dbg !3396

; <label>:7:                                      ; preds = %2
  %8 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3397
  %9 = bitcast %struct._IRC_SERVER_REC* %8 to i8*, !dbg !3397
  %10 = call i8* @module_check_cast(i8* %9, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !3399
  %11 = bitcast i8* %10 to %struct._SERVER_REC*, !dbg !3400
  %12 = bitcast %struct._SERVER_REC* %11 to i8*, !dbg !3401
  %13 = call i8* @chat_protocol_check_cast(i8* %12, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !3402
  %14 = bitcast i8* %13 to %struct._IRC_SERVER_REC*, !dbg !3404
  %15 = icmp ne %struct._IRC_SERVER_REC* %14, null, !dbg !3404
  br i1 %15, label %16, label %17, !dbg !3405

; <label>:16:                                     ; preds = %7
  br i1 false, label %18, label %19, !dbg !3406

; <label>:17:                                     ; preds = %7
  br i1 false, label %19, label %18, !dbg !3408

; <label>:18:                                     ; preds = %17, %16
  br label %44, !dbg !3410

; <label>:19:                                     ; preds = %17, %16, %2
  %20 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3411
  %21 = icmp eq %struct._IRC_SERVER_REC* %20, null, !dbg !3413
  br i1 %21, label %27, label %22, !dbg !3414

; <label>:22:                                     ; preds = %19
  %23 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3415
  %24 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %23, i32 0, i32 4, !dbg !3417
  %25 = load i64, i64* %24, align 8, !dbg !3417
  %26 = icmp eq i64 %25, 0, !dbg !3418
  br i1 %26, label %27, label %31, !dbg !3419

; <label>:27:                                     ; preds = %22, %19
  br label %28, !dbg !3420, !llvm.loop !3421

; <label>:28:                                     ; preds = %27
  %29 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !3422
  call void @signal_stop(), !dbg !3425
  br label %44, !dbg !3427
                                                  ; No predecessors!
  br label %31, !dbg !3428

; <label>:31:                                     ; preds = %30, %22
  %32 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3430
  %33 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %32, i32 0, i32 8, !dbg !3432
  %34 = load i8, i8* %33, align 8, !dbg !3432
  %35 = and i8 %34, 1, !dbg !3432
  %36 = zext i8 %35 to i32, !dbg !3432
  %37 = icmp ne i32 %36, 0, !dbg !3430
  br i1 %37, label %41, label %38, !dbg !3433

; <label>:38:                                     ; preds = %31
  %39 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3434
  %40 = load i8*, i8** %3, align 8, !dbg !3435
  call void @irc_send_cmd_now(%struct._IRC_SERVER_REC* %39, i8* %40), !dbg !3436
  br label %44, !dbg !3436

; <label>:41:                                     ; preds = %31
  %42 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3437
  %43 = load i8*, i8** %3, align 8, !dbg !3438
  call void @irc_send_cmd(%struct._IRC_SERVER_REC* %42, i8* %43), !dbg !3439
  br label %44

; <label>:44:                                     ; preds = %18, %28, %41, %38
  ret void, !dbg !3440
}

; Function Attrs: nounwind uwtable
define internal void @cmd_wall(i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !3441 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %13 = alloca %struct._GSList*, align 8
  %14 = alloca %struct._GSList*, align 8
  %15 = alloca %struct._NICK_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3442, metadata !889), !dbg !3443
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !3444, metadata !889), !dbg !3445
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !3446, metadata !889), !dbg !3447
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3448, metadata !889), !dbg !3449
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3450, metadata !889), !dbg !3451
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3452, metadata !889), !dbg !3453
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3454, metadata !889), !dbg !3455
  call void @llvm.dbg.declare(metadata i8** %11, metadata !3456, metadata !889), !dbg !3457
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %12, metadata !3458, metadata !889), !dbg !3459
  call void @llvm.dbg.declare(metadata %struct._GSList** %13, metadata !3460, metadata !889), !dbg !3461
  call void @llvm.dbg.declare(metadata %struct._GSList** %14, metadata !3462, metadata !889), !dbg !3463
  br label %16, !dbg !3464, !llvm.loop !3465

; <label>:16:                                     ; preds = %3
  %17 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3466
  %18 = icmp ne %struct._IRC_SERVER_REC* %17, null, !dbg !3470
  br i1 %18, label %19, label %31, !dbg !3471

; <label>:19:                                     ; preds = %16
  %20 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3472
  %21 = bitcast %struct._IRC_SERVER_REC* %20 to i8*, !dbg !3472
  %22 = call i8* @module_check_cast(i8* %21, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !3474
  %23 = bitcast i8* %22 to %struct._SERVER_REC*, !dbg !3475
  %24 = bitcast %struct._SERVER_REC* %23 to i8*, !dbg !3476
  %25 = call i8* @chat_protocol_check_cast(i8* %24, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !3477
  %26 = bitcast i8* %25 to %struct._IRC_SERVER_REC*, !dbg !3479
  %27 = icmp ne %struct._IRC_SERVER_REC* %26, null, !dbg !3479
  br i1 %27, label %28, label %29, !dbg !3480

; <label>:28:                                     ; preds = %19
  br i1 false, label %30, label %31, !dbg !3481

; <label>:29:                                     ; preds = %19
  br i1 false, label %31, label %30, !dbg !3483

; <label>:30:                                     ; preds = %29, %28
  br label %166, !dbg !3485

; <label>:31:                                     ; preds = %29, %28, %16
  %32 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3487
  %33 = icmp eq %struct._IRC_SERVER_REC* %32, null, !dbg !3490
  br i1 %33, label %41, label %34, !dbg !3491

; <label>:34:                                     ; preds = %31
  %35 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3492
  %36 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %35, i32 0, i32 8, !dbg !3494
  %37 = load i8, i8* %36, align 8, !dbg !3494
  %38 = and i8 %37, 1, !dbg !3494
  %39 = zext i8 %38 to i32, !dbg !3494
  %40 = icmp ne i32 %39, 0, !dbg !3495
  br i1 %40, label %45, label %41, !dbg !3496

; <label>:41:                                     ; preds = %34, %31
  br label %42, !dbg !3497, !llvm.loop !3499

; <label>:42:                                     ; preds = %41
  %43 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !3501
  call void @signal_stop(), !dbg !3504
  br label %166, !dbg !3506
                                                  ; No predecessors!
  br label %45, !dbg !3507

; <label>:45:                                     ; preds = %44, %34
  br label %46, !dbg !3509

; <label>:46:                                     ; preds = %45
  %47 = load i8*, i8** %4, align 8, !dbg !3511
  %48 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !3513
  %49 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %47, i8** %11, i32 73730, %struct._WI_ITEM_REC* %48, i8** %7, i8** %8), !dbg !3514
  %50 = icmp ne i32 %49, 0, !dbg !3514
  br i1 %50, label %52, label %51, !dbg !3515

; <label>:51:                                     ; preds = %46
  br label %166, !dbg !3516

; <label>:52:                                     ; preds = %46
  %53 = load i8*, i8** %8, align 8, !dbg !3517
  %54 = load i8, i8* %53, align 1, !dbg !3519
  %55 = sext i8 %54 to i32, !dbg !3519
  %56 = icmp eq i32 %55, 0, !dbg !3520
  br i1 %56, label %57, label %64, !dbg !3521

; <label>:57:                                     ; preds = %52
  br label %58, !dbg !3522, !llvm.loop !3524

; <label>:58:                                     ; preds = %57
  %59 = load i8*, i8** %11, align 8, !dbg !3526
  call void @cmd_params_free(i8* %59), !dbg !3529
  br label %60, !dbg !3530, !llvm.loop !3531

; <label>:60:                                     ; preds = %58
  %61 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !3533
  call void @signal_stop(), !dbg !3536
  br label %166, !dbg !3538
                                                  ; No predecessors!
  br label %63, !dbg !3539

; <label>:63:                                     ; preds = %62
  br label %64, !dbg !3541

; <label>:64:                                     ; preds = %63, %52
  %65 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3543
  %66 = bitcast %struct._IRC_SERVER_REC* %65 to i8*, !dbg !3543
  %67 = call i8* @module_check_cast(i8* %66, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !3544
  %68 = bitcast i8* %67 to %struct._SERVER_REC*, !dbg !3545
  %69 = load i8*, i8** %7, align 8, !dbg !3546
  %70 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %68, i8* %69), !dbg !3547
  %71 = bitcast %struct._CHANNEL_REC* %70 to i8*, !dbg !3549
  %72 = call i8* @module_check_cast_module(i8* %71, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0)), !dbg !3550
  %73 = bitcast i8* %72 to %struct._CHANNEL_REC*, !dbg !3552
  %74 = bitcast %struct._CHANNEL_REC* %73 to i8*, !dbg !3553
  %75 = call i8* @chat_protocol_check_cast(i8* %74, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !3554
  %76 = bitcast i8* %75 to %struct._IRC_CHANNEL_REC*, !dbg !3556
  store %struct._IRC_CHANNEL_REC* %76, %struct._IRC_CHANNEL_REC** %12, align 8, !dbg !3557
  %77 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %12, align 8, !dbg !3558
  %78 = icmp eq %struct._IRC_CHANNEL_REC* %77, null, !dbg !3560
  br i1 %78, label %79, label %86, !dbg !3561

; <label>:79:                                     ; preds = %64
  br label %80, !dbg !3562, !llvm.loop !3564

; <label>:80:                                     ; preds = %79
  %81 = load i8*, i8** %11, align 8, !dbg !3566
  call void @cmd_params_free(i8* %81), !dbg !3569
  br label %82, !dbg !3570, !llvm.loop !3571

; <label>:82:                                     ; preds = %80
  %83 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 6 to i8*)), !dbg !3573
  call void @signal_stop(), !dbg !3576
  br label %166, !dbg !3578
                                                  ; No predecessors!
  br label %85, !dbg !3579

; <label>:85:                                     ; preds = %84
  br label %86, !dbg !3581

; <label>:86:                                     ; preds = %85, %64
  %87 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3583
  %88 = bitcast %struct._IRC_SERVER_REC* %87 to i8*, !dbg !3583
  %89 = call i8* @module_check_cast(i8* %88, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !3584
  %90 = bitcast i8* %89 to %struct._SERVER_REC*, !dbg !3585
  %91 = load i8*, i8** %8, align 8, !dbg !3586
  %92 = load i8*, i8** %7, align 8, !dbg !3587
  %93 = call i8* @recode_out(%struct._SERVER_REC* %90, i8* %91, i8* %92), !dbg !3588
  store i8* %93, i8** %10, align 8, !dbg !3589
  %94 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %12, align 8, !dbg !3590
  %95 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %94, i32 0, i32 4, !dbg !3592
  %96 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %95, align 8, !dbg !3592
  %97 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %96, i32 0, i32 69, !dbg !3593
  %98 = load %struct._GHashTable*, %struct._GHashTable** %97, align 8, !dbg !3593
  %99 = call i8* @g_hash_table_lookup(%struct._GHashTable* %98, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.126, i32 0, i32 0)), !dbg !3594
  %100 = icmp ne i8* %99, null, !dbg !3594
  br i1 %100, label %109, label %101, !dbg !3595

; <label>:101:                                    ; preds = %86
  %102 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %12, align 8, !dbg !3596
  %103 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %102, i32 0, i32 4, !dbg !3597
  %104 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %103, align 8, !dbg !3597
  %105 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %104, i32 0, i32 69, !dbg !3598
  %106 = load %struct._GHashTable*, %struct._GHashTable** %105, align 8, !dbg !3598
  %107 = call i8* @g_hash_table_lookup(%struct._GHashTable* %106, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.127, i32 0, i32 0)), !dbg !3599
  %108 = icmp ne i8* %107, null, !dbg !3599
  br i1 %108, label %109, label %115, !dbg !3600

; <label>:109:                                    ; preds = %101, %86
  %110 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3601
  %111 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %12, align 8, !dbg !3602
  %112 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %111, i32 0, i32 6, !dbg !3603
  %113 = load i8*, i8** %112, align 8, !dbg !3603
  %114 = load i8*, i8** %10, align 8, !dbg !3604
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %110, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.128, i32 0, i32 0), i8* %113, i8* %114), !dbg !3605
  br label %163, !dbg !3605

; <label>:115:                                    ; preds = %101
  store %struct._GSList* null, %struct._GSList** %14, align 8, !dbg !3606
  %116 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %12, align 8, !dbg !3608
  %117 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %116, i32 0, i32 15, !dbg !3609
  %118 = load %struct._GHashTable*, %struct._GHashTable** %117, align 8, !dbg !3609
  %119 = bitcast %struct._GSList** %14 to i8*, !dbg !3610
  call void @g_hash_table_foreach(%struct._GHashTable* %118, void (i8*, i8*, i8*)* bitcast (void (i8*, %struct._NICK_REC*, %struct._GSList**)* @cmd_wall_hash to void (i8*, i8*, i8*)*), i8* %119), !dbg !3611
  %120 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %12, align 8, !dbg !3612
  %121 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %120, i32 0, i32 6, !dbg !3613
  %122 = load i8*, i8** %121, align 8, !dbg !3613
  %123 = load i8*, i8** %10, align 8, !dbg !3614
  %124 = call noalias i8* (i8*, ...) @g_strconcat(i8* %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.100, i32 0, i32 0), i8* %123, i8* null), !dbg !3615
  store i8* %124, i8** %9, align 8, !dbg !3616
  %125 = call i8* @settings_get_str(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0)), !dbg !3617
  %126 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3618
  %127 = bitcast %struct._IRC_SERVER_REC* %126 to i8*, !dbg !3618
  %128 = call i8* @module_check_cast(i8* %127, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !3619
  %129 = bitcast i8* %128 to %struct._SERVER_REC*, !dbg !3620
  %130 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !3621
  %131 = bitcast %struct._WI_ITEM_REC* %130 to i8*, !dbg !3621
  %132 = load i8*, i8** %9, align 8, !dbg !3622
  %133 = call i8* @parse_special_string(i8* %125, %struct._SERVER_REC* %129, i8* %131, i8* %132, i32* null, i32 0), !dbg !3623
  store i8* %133, i8** %8, align 8, !dbg !3625
  %134 = load i8*, i8** %9, align 8, !dbg !3626
  call void @g_free(i8* %134), !dbg !3627
  %135 = load %struct._GSList*, %struct._GSList** %14, align 8, !dbg !3628
  store %struct._GSList* %135, %struct._GSList** %13, align 8, !dbg !3630
  br label %136, !dbg !3631

; <label>:136:                                    ; preds = %156, %115
  %137 = load %struct._GSList*, %struct._GSList** %13, align 8, !dbg !3632
  %138 = icmp ne %struct._GSList* %137, null, !dbg !3635
  br i1 %138, label %139, label %160, !dbg !3636

; <label>:139:                                    ; preds = %136
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %15, metadata !3637, metadata !889), !dbg !3639
  %140 = load %struct._GSList*, %struct._GSList** %13, align 8, !dbg !3640
  %141 = getelementptr inbounds %struct._GSList, %struct._GSList* %140, i32 0, i32 0, !dbg !3641
  %142 = load i8*, i8** %141, align 8, !dbg !3641
  %143 = bitcast i8* %142 to %struct._NICK_REC*, !dbg !3640
  store %struct._NICK_REC* %143, %struct._NICK_REC** %15, align 8, !dbg !3639
  %144 = load %struct._NICK_REC*, %struct._NICK_REC** %15, align 8, !dbg !3642
  %145 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %12, align 8, !dbg !3644
  %146 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %145, i32 0, i32 16, !dbg !3645
  %147 = load %struct._NICK_REC*, %struct._NICK_REC** %146, align 8, !dbg !3645
  %148 = icmp ne %struct._NICK_REC* %144, %147, !dbg !3646
  br i1 %148, label %149, label %155, !dbg !3647

; <label>:149:                                    ; preds = %139
  %150 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3648
  %151 = load %struct._NICK_REC*, %struct._NICK_REC** %15, align 8, !dbg !3650
  %152 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %151, i32 0, i32 3, !dbg !3651
  %153 = load i8*, i8** %152, align 8, !dbg !3651
  %154 = load i8*, i8** %8, align 8, !dbg !3652
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %150, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.75, i32 0, i32 0), i8* %153, i8* %154), !dbg !3653
  br label %155, !dbg !3654

; <label>:155:                                    ; preds = %149, %139
  br label %156, !dbg !3655

; <label>:156:                                    ; preds = %155
  %157 = load %struct._GSList*, %struct._GSList** %13, align 8, !dbg !3656
  %158 = getelementptr inbounds %struct._GSList, %struct._GSList* %157, i32 0, i32 1, !dbg !3658
  %159 = load %struct._GSList*, %struct._GSList** %158, align 8, !dbg !3658
  store %struct._GSList* %159, %struct._GSList** %13, align 8, !dbg !3659
  br label %136, !dbg !3660, !llvm.loop !3661

; <label>:160:                                    ; preds = %136
  %161 = load i8*, i8** %8, align 8, !dbg !3663
  call void @g_free(i8* %161), !dbg !3664
  %162 = load %struct._GSList*, %struct._GSList** %14, align 8, !dbg !3665
  call void @g_slist_free(%struct._GSList* %162), !dbg !3666
  br label %163

; <label>:163:                                    ; preds = %160, %109
  %164 = load i8*, i8** %10, align 8, !dbg !3667
  call void @g_free(i8* %164), !dbg !3668
  %165 = load i8*, i8** %11, align 8, !dbg !3669
  call void @cmd_params_free(i8* %165), !dbg !3670
  br label %166, !dbg !3671

; <label>:166:                                    ; preds = %163, %82, %60, %51, %42, %30
  ret void, !dbg !3672
}

; Function Attrs: nounwind uwtable
define internal void @cmd_wait(i8*, %struct._IRC_SERVER_REC*) #0 !dbg !3673 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca %struct._GHashTable*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !3674, metadata !889), !dbg !3675
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !3676, metadata !889), !dbg !3677
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %5, metadata !3678, metadata !889), !dbg !3679
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3680, metadata !889), !dbg !3681
  call void @llvm.dbg.declare(metadata i8** %7, metadata !3682, metadata !889), !dbg !3683
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3684, metadata !889), !dbg !3685
  br label %9, !dbg !3686, !llvm.loop !3687

; <label>:9:                                      ; preds = %2
  %10 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3688
  %11 = icmp ne %struct._IRC_SERVER_REC* %10, null, !dbg !3692
  br i1 %11, label %12, label %24, !dbg !3693

; <label>:12:                                     ; preds = %9
  %13 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3694
  %14 = bitcast %struct._IRC_SERVER_REC* %13 to i8*, !dbg !3694
  %15 = call i8* @module_check_cast(i8* %14, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !3696
  %16 = bitcast i8* %15 to %struct._SERVER_REC*, !dbg !3697
  %17 = bitcast %struct._SERVER_REC* %16 to i8*, !dbg !3698
  %18 = call i8* @chat_protocol_check_cast(i8* %17, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !3699
  %19 = bitcast i8* %18 to %struct._IRC_SERVER_REC*, !dbg !3701
  %20 = icmp ne %struct._IRC_SERVER_REC* %19, null, !dbg !3701
  br i1 %20, label %21, label %22, !dbg !3702

; <label>:21:                                     ; preds = %12
  br i1 false, label %23, label %24, !dbg !3703

; <label>:22:                                     ; preds = %12
  br i1 false, label %24, label %23, !dbg !3705

; <label>:23:                                     ; preds = %22, %21
  br label %114, !dbg !3707

; <label>:24:                                     ; preds = %22, %21, %9
  %25 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3709
  %26 = icmp eq %struct._IRC_SERVER_REC* %25, null, !dbg !3712
  br i1 %26, label %34, label %27, !dbg !3713

; <label>:27:                                     ; preds = %24
  %28 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3714
  %29 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %28, i32 0, i32 8, !dbg !3716
  %30 = load i8, i8* %29, align 8, !dbg !3716
  %31 = and i8 %30, 1, !dbg !3716
  %32 = zext i8 %31 to i32, !dbg !3716
  %33 = icmp ne i32 %32, 0, !dbg !3717
  br i1 %33, label %38, label %34, !dbg !3718

; <label>:34:                                     ; preds = %27, %24
  br label %35, !dbg !3719, !llvm.loop !3721

; <label>:35:                                     ; preds = %34
  %36 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !3723
  call void @signal_stop(), !dbg !3726
  br label %114, !dbg !3728
                                                  ; No predecessors!
  br label %38, !dbg !3729

; <label>:38:                                     ; preds = %37, %27
  br label %39, !dbg !3731

; <label>:39:                                     ; preds = %38
  %40 = load i8*, i8** %3, align 8, !dbg !3733
  %41 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %40, i8** %7, i32 57345, i8* null, %struct._GHashTable** %5, i8** %6), !dbg !3735
  %42 = icmp ne i32 %41, 0, !dbg !3735
  br i1 %42, label %44, label %43, !dbg !3736

; <label>:43:                                     ; preds = %39
  br label %114, !dbg !3737

; <label>:44:                                     ; preds = %39
  %45 = load i8*, i8** %6, align 8, !dbg !3738
  %46 = load i8, i8* %45, align 1, !dbg !3740
  %47 = sext i8 %46 to i32, !dbg !3740
  %48 = icmp eq i32 %47, 0, !dbg !3741
  br i1 %48, label %49, label %56, !dbg !3742

; <label>:49:                                     ; preds = %44
  br label %50, !dbg !3743, !llvm.loop !3744

; <label>:50:                                     ; preds = %49
  %51 = load i8*, i8** %7, align 8, !dbg !3745
  call void @cmd_params_free(i8* %51), !dbg !3748
  br label %52, !dbg !3749, !llvm.loop !3750

; <label>:52:                                     ; preds = %50
  %53 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !3752
  call void @signal_stop(), !dbg !3755
  br label %114, !dbg !3757
                                                  ; No predecessors!
  br label %55, !dbg !3758

; <label>:55:                                     ; preds = %54
  br label %56, !dbg !3760

; <label>:56:                                     ; preds = %55, %44
  %57 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !3762
  %58 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3763
  %59 = bitcast %struct._IRC_SERVER_REC* %58 to i8*, !dbg !3763
  %60 = call i8* @module_check_cast(i8* %59, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !3764
  %61 = bitcast i8* %60 to %struct._SERVER_REC*, !dbg !3765
  %62 = call %struct._SERVER_REC* @cmd_options_get_server(i8* null, %struct._GHashTable* %57, %struct._SERVER_REC* %61), !dbg !3766
  %63 = bitcast %struct._SERVER_REC* %62 to i8*, !dbg !3768
  %64 = call i8* @module_check_cast(i8* %63, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !3769
  %65 = bitcast i8* %64 to %struct._SERVER_REC*, !dbg !3771
  %66 = bitcast %struct._SERVER_REC* %65 to i8*, !dbg !3772
  %67 = call i8* @chat_protocol_check_cast(i8* %66, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !3773
  %68 = bitcast i8* %67 to %struct._IRC_SERVER_REC*, !dbg !3762
  store %struct._IRC_SERVER_REC* %68, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3775
  %69 = load i8*, i8** %6, align 8, !dbg !3776
  %70 = call i32 @atoi(i8* %69) #6, !dbg !3777
  store i32 %70, i32* %8, align 4, !dbg !3778
  %71 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3779
  %72 = icmp ne %struct._IRC_SERVER_REC* %71, null, !dbg !3781
  br i1 %72, label %73, label %112, !dbg !3782

; <label>:73:                                     ; preds = %56
  %74 = load i32, i32* %8, align 4, !dbg !3783
  %75 = icmp sgt i32 %74, 0, !dbg !3785
  br i1 %75, label %76, label %112, !dbg !3786

; <label>:76:                                     ; preds = %73
  %77 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3787
  %78 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %77, i32 0, i32 57, !dbg !3789
  call void @g_get_current_time(%struct._GTimeVal* %78), !dbg !3790
  %79 = load i32, i32* %8, align 4, !dbg !3791
  %80 = sdiv i32 %79, 1000, !dbg !3792
  %81 = sext i32 %80 to i64, !dbg !3791
  %82 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3793
  %83 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %82, i32 0, i32 57, !dbg !3794
  %84 = getelementptr inbounds %struct._GTimeVal, %struct._GTimeVal* %83, i32 0, i32 0, !dbg !3795
  %85 = load i64, i64* %84, align 8, !dbg !3796
  %86 = add nsw i64 %85, %81, !dbg !3796
  store i64 %86, i64* %84, align 8, !dbg !3796
  %87 = load i32, i32* %8, align 4, !dbg !3797
  %88 = srem i32 %87, 1000, !dbg !3798
  %89 = sext i32 %88 to i64, !dbg !3797
  %90 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3799
  %91 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %90, i32 0, i32 57, !dbg !3800
  %92 = getelementptr inbounds %struct._GTimeVal, %struct._GTimeVal* %91, i32 0, i32 1, !dbg !3801
  %93 = load i64, i64* %92, align 8, !dbg !3802
  %94 = add nsw i64 %93, %89, !dbg !3802
  store i64 %94, i64* %92, align 8, !dbg !3802
  %95 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3803
  %96 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %95, i32 0, i32 57, !dbg !3805
  %97 = getelementptr inbounds %struct._GTimeVal, %struct._GTimeVal* %96, i32 0, i32 1, !dbg !3806
  %98 = load i64, i64* %97, align 8, !dbg !3806
  %99 = icmp sge i64 %98, 1000, !dbg !3807
  br i1 %99, label %100, label %111, !dbg !3808

; <label>:100:                                    ; preds = %76
  %101 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3809
  %102 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %101, i32 0, i32 57, !dbg !3811
  %103 = getelementptr inbounds %struct._GTimeVal, %struct._GTimeVal* %102, i32 0, i32 0, !dbg !3812
  %104 = load i64, i64* %103, align 8, !dbg !3813
  %105 = add nsw i64 %104, 1, !dbg !3813
  store i64 %105, i64* %103, align 8, !dbg !3813
  %106 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3814
  %107 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %106, i32 0, i32 57, !dbg !3815
  %108 = getelementptr inbounds %struct._GTimeVal, %struct._GTimeVal* %107, i32 0, i32 1, !dbg !3816
  %109 = load i64, i64* %108, align 8, !dbg !3817
  %110 = sub nsw i64 %109, 1000, !dbg !3817
  store i64 %110, i64* %108, align 8, !dbg !3817
  br label %111, !dbg !3818

; <label>:111:                                    ; preds = %100, %76
  br label %112, !dbg !3819

; <label>:112:                                    ; preds = %111, %73, %56
  %113 = load i8*, i8** %7, align 8, !dbg !3820
  call void @cmd_params_free(i8* %113), !dbg !3821
  br label %114, !dbg !3822

; <label>:114:                                    ; preds = %112, %52, %43, %35, %23
  ret void, !dbg !3823
}

; Function Attrs: nounwind uwtable
define internal void @cmd_kickban(i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !3824 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3825, metadata !889), !dbg !3826
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !3827, metadata !889), !dbg !3828
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !3829, metadata !889), !dbg !3830
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %7, metadata !3831, metadata !889), !dbg !3832
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3833, metadata !889), !dbg !3834
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3835, metadata !889), !dbg !3836
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3837, metadata !889), !dbg !3838
  call void @llvm.dbg.declare(metadata i8** %11, metadata !3839, metadata !889), !dbg !3840
  call void @llvm.dbg.declare(metadata i8** %12, metadata !3841, metadata !889), !dbg !3842
  call void @llvm.dbg.declare(metadata i8** %13, metadata !3843, metadata !889), !dbg !3844
  call void @llvm.dbg.declare(metadata i8*** %14, metadata !3845, metadata !889), !dbg !3846
  call void @llvm.dbg.declare(metadata i8** %15, metadata !3847, metadata !889), !dbg !3848
  call void @llvm.dbg.declare(metadata i8** %16, metadata !3849, metadata !889), !dbg !3850
  br label %17, !dbg !3851, !llvm.loop !3852

; <label>:17:                                     ; preds = %3
  %18 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3853
  %19 = icmp ne %struct._IRC_SERVER_REC* %18, null, !dbg !3857
  br i1 %19, label %20, label %32, !dbg !3858

; <label>:20:                                     ; preds = %17
  %21 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3859
  %22 = bitcast %struct._IRC_SERVER_REC* %21 to i8*, !dbg !3859
  %23 = call i8* @module_check_cast(i8* %22, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !3861
  %24 = bitcast i8* %23 to %struct._SERVER_REC*, !dbg !3862
  %25 = bitcast %struct._SERVER_REC* %24 to i8*, !dbg !3863
  %26 = call i8* @chat_protocol_check_cast(i8* %25, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !3864
  %27 = bitcast i8* %26 to %struct._IRC_SERVER_REC*, !dbg !3866
  %28 = icmp ne %struct._IRC_SERVER_REC* %27, null, !dbg !3866
  br i1 %28, label %29, label %30, !dbg !3867

; <label>:29:                                     ; preds = %20
  br i1 false, label %31, label %32, !dbg !3868

; <label>:30:                                     ; preds = %20
  br i1 false, label %32, label %31, !dbg !3870

; <label>:31:                                     ; preds = %30, %29
  br label %142, !dbg !3872

; <label>:32:                                     ; preds = %30, %29, %17
  %33 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3874
  %34 = icmp eq %struct._IRC_SERVER_REC* %33, null, !dbg !3877
  br i1 %34, label %42, label %35, !dbg !3878

; <label>:35:                                     ; preds = %32
  %36 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3879
  %37 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %36, i32 0, i32 8, !dbg !3881
  %38 = load i8, i8* %37, align 8, !dbg !3881
  %39 = and i8 %38, 1, !dbg !3881
  %40 = zext i8 %39 to i32, !dbg !3881
  %41 = icmp ne i32 %40, 0, !dbg !3882
  br i1 %41, label %46, label %42, !dbg !3883

; <label>:42:                                     ; preds = %35, %32
  br label %43, !dbg !3884, !llvm.loop !3886

; <label>:43:                                     ; preds = %42
  %44 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !3888
  call void @signal_stop(), !dbg !3891
  br label %142, !dbg !3893
                                                  ; No predecessors!
  br label %46, !dbg !3894

; <label>:46:                                     ; preds = %45, %35
  br label %47, !dbg !3896

; <label>:47:                                     ; preds = %46
  %48 = load i8*, i8** %4, align 8, !dbg !3898
  %49 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !3900
  %50 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %48, i8** %16, i32 73731, %struct._WI_ITEM_REC* %49, i8** %8, i8** %9, i8** %10), !dbg !3901
  %51 = icmp ne i32 %50, 0, !dbg !3901
  br i1 %51, label %53, label %52, !dbg !3902

; <label>:52:                                     ; preds = %47
  br label %142, !dbg !3903

; <label>:53:                                     ; preds = %47
  %54 = load i8*, i8** %8, align 8, !dbg !3904
  %55 = load i8, i8* %54, align 1, !dbg !3906
  %56 = sext i8 %55 to i32, !dbg !3906
  %57 = icmp eq i32 %56, 0, !dbg !3907
  br i1 %57, label %63, label %58, !dbg !3908

; <label>:58:                                     ; preds = %53
  %59 = load i8*, i8** %9, align 8, !dbg !3909
  %60 = load i8, i8* %59, align 1, !dbg !3911
  %61 = sext i8 %60 to i32, !dbg !3911
  %62 = icmp eq i32 %61, 0, !dbg !3912
  br i1 %62, label %63, label %70, !dbg !3913

; <label>:63:                                     ; preds = %58, %53
  br label %64, !dbg !3914, !llvm.loop !3915

; <label>:64:                                     ; preds = %63
  %65 = load i8*, i8** %16, align 8, !dbg !3916
  call void @cmd_params_free(i8* %65), !dbg !3919
  br label %66, !dbg !3920, !llvm.loop !3921

; <label>:66:                                     ; preds = %64
  %67 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !3923
  call void @signal_stop(), !dbg !3926
  br label %142, !dbg !3928
                                                  ; No predecessors!
  br label %69, !dbg !3929

; <label>:69:                                     ; preds = %68
  br label %70, !dbg !3931

; <label>:70:                                     ; preds = %69, %58
  %71 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3933
  %72 = bitcast %struct._IRC_SERVER_REC* %71 to i8*, !dbg !3933
  %73 = call i8* @module_check_cast(i8* %72, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !3934
  %74 = bitcast i8* %73 to %struct._SERVER_REC*, !dbg !3935
  %75 = load i8*, i8** %8, align 8, !dbg !3936
  %76 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %74, i8* %75), !dbg !3937
  %77 = bitcast %struct._CHANNEL_REC* %76 to i8*, !dbg !3939
  %78 = call i8* @module_check_cast_module(i8* %77, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0)), !dbg !3940
  %79 = bitcast i8* %78 to %struct._CHANNEL_REC*, !dbg !3942
  %80 = bitcast %struct._CHANNEL_REC* %79 to i8*, !dbg !3943
  %81 = call i8* @chat_protocol_check_cast(i8* %80, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !3944
  %82 = bitcast i8* %81 to %struct._IRC_CHANNEL_REC*, !dbg !3946
  store %struct._IRC_CHANNEL_REC* %82, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !3947
  %83 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !3948
  %84 = icmp eq %struct._IRC_CHANNEL_REC* %83, null, !dbg !3950
  br i1 %84, label %85, label %92, !dbg !3951

; <label>:85:                                     ; preds = %70
  br label %86, !dbg !3952, !llvm.loop !3953

; <label>:86:                                     ; preds = %85
  %87 = load i8*, i8** %16, align 8, !dbg !3954
  call void @cmd_params_free(i8* %87), !dbg !3957
  br label %88, !dbg !3958, !llvm.loop !3959

; <label>:88:                                     ; preds = %86
  %89 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 6 to i8*)), !dbg !3961
  call void @signal_stop(), !dbg !3964
  br label %142, !dbg !3966
                                                  ; No predecessors!
  br label %91, !dbg !3967

; <label>:91:                                     ; preds = %90
  br label %92, !dbg !3969

; <label>:92:                                     ; preds = %91, %70
  %93 = load i8*, i8** %9, align 8, !dbg !3971
  %94 = call noalias i8** @g_strsplit(i8* %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.109, i32 0, i32 0), i32 -1), !dbg !3972
  store i8** %94, i8*** %14, align 8, !dbg !3973
  %95 = load i8**, i8*** %14, align 8, !dbg !3974
  %96 = call noalias i8* @g_strjoinv(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.100, i32 0, i32 0), i8** %95), !dbg !3975
  store i8* %96, i8** %15, align 8, !dbg !3976
  %97 = load i8**, i8*** %14, align 8, !dbg !3977
  call void @g_strfreev(i8** %97), !dbg !3978
  %98 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3979
  %99 = bitcast %struct._IRC_SERVER_REC* %98 to i8*, !dbg !3979
  %100 = call i8* @module_check_cast(i8* %99, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !3980
  %101 = bitcast i8* %100 to %struct._SERVER_REC*, !dbg !3981
  %102 = load i8*, i8** %10, align 8, !dbg !3982
  %103 = load i8*, i8** %8, align 8, !dbg !3983
  %104 = call i8* @recode_out(%struct._SERVER_REC* %101, i8* %102, i8* %103), !dbg !3984
  store i8* %104, i8** %13, align 8, !dbg !3985
  %105 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !3986
  %106 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %105, i32 0, i32 6, !dbg !3987
  %107 = load i8*, i8** %106, align 8, !dbg !3987
  %108 = load i8*, i8** %9, align 8, !dbg !3988
  %109 = load i8*, i8** %13, align 8, !dbg !3989
  %110 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.129, i32 0, i32 0), i8* %107, i8* %108, i8* %109), !dbg !3990
  store i8* %110, i8** %11, align 8, !dbg !3991
  %111 = load i8*, i8** %13, align 8, !dbg !3992
  call void @g_free(i8* %111), !dbg !3993
  %112 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !3994
  %113 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %112, i32 0, i32 6, !dbg !3995
  %114 = load i8*, i8** %113, align 8, !dbg !3995
  %115 = load i8*, i8** %15, align 8, !dbg !3996
  %116 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.122, i32 0, i32 0), i8* %114, i8* %115), !dbg !3997
  store i8* %116, i8** %12, align 8, !dbg !3998
  %117 = load i8*, i8** %15, align 8, !dbg !3999
  call void @g_free(i8* %117), !dbg !4000
  %118 = call i32 @settings_get_bool(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0)), !dbg !4001
  %119 = icmp ne i32 %118, 0, !dbg !4001
  br i1 %119, label %120, label %129, !dbg !4003

; <label>:120:                                    ; preds = %92
  %121 = load i8*, i8** %11, align 8, !dbg !4004
  %122 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !4006
  %123 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !4007
  %124 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.130, i32 0, i32 0), i32 3, i8* %121, %struct._IRC_SERVER_REC* %122, %struct._IRC_CHANNEL_REC* %123), !dbg !4008
  %125 = load i8*, i8** %12, align 8, !dbg !4009
  %126 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !4010
  %127 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !4011
  %128 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.131, i32 0, i32 0), i32 3, i8* %125, %struct._IRC_SERVER_REC* %126, %struct._IRC_CHANNEL_REC* %127), !dbg !4012
  br label %138, !dbg !4013

; <label>:129:                                    ; preds = %92
  %130 = load i8*, i8** %12, align 8, !dbg !4014
  %131 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !4016
  %132 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !4017
  %133 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.131, i32 0, i32 0), i32 3, i8* %130, %struct._IRC_SERVER_REC* %131, %struct._IRC_CHANNEL_REC* %132), !dbg !4018
  %134 = load i8*, i8** %11, align 8, !dbg !4019
  %135 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !4020
  %136 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !4021
  %137 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.130, i32 0, i32 0), i32 3, i8* %134, %struct._IRC_SERVER_REC* %135, %struct._IRC_CHANNEL_REC* %136), !dbg !4022
  br label %138

; <label>:138:                                    ; preds = %129, %120
  %139 = load i8*, i8** %11, align 8, !dbg !4023
  call void @g_free(i8* %139), !dbg !4024
  %140 = load i8*, i8** %12, align 8, !dbg !4025
  call void @g_free(i8* %140), !dbg !4026
  %141 = load i8*, i8** %16, align 8, !dbg !4027
  call void @cmd_params_free(i8* %141), !dbg !4028
  br label %142, !dbg !4029

; <label>:142:                                    ; preds = %138, %88, %66, %52, %43, %31
  ret void, !dbg !4030
}

; Function Attrs: nounwind uwtable
define internal void @cmd_knockout(i8*, %struct._IRC_SERVER_REC*, %struct._IRC_CHANNEL_REC*) #0 !dbg !4031 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %7 = alloca %struct.KNOCKOUT_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct._GSList*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4034, metadata !889), !dbg !4035
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !4036, metadata !889), !dbg !4037
  store %struct._IRC_CHANNEL_REC* %2, %struct._IRC_CHANNEL_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %6, metadata !4038, metadata !889), !dbg !4039
  call void @llvm.dbg.declare(metadata %struct.KNOCKOUT_REC** %7, metadata !4040, metadata !889), !dbg !4041
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4042, metadata !889), !dbg !4043
  call void @llvm.dbg.declare(metadata i8** %9, metadata !4044, metadata !889), !dbg !4045
  call void @llvm.dbg.declare(metadata i8** %10, metadata !4046, metadata !889), !dbg !4047
  call void @llvm.dbg.declare(metadata i8** %11, metadata !4048, metadata !889), !dbg !4049
  call void @llvm.dbg.declare(metadata i8** %12, metadata !4050, metadata !889), !dbg !4051
  call void @llvm.dbg.declare(metadata i8** %13, metadata !4052, metadata !889), !dbg !4053
  call void @llvm.dbg.declare(metadata i8*** %14, metadata !4054, metadata !889), !dbg !4055
  call void @llvm.dbg.declare(metadata i8** %15, metadata !4056, metadata !889), !dbg !4057
  call void @llvm.dbg.declare(metadata i8** %16, metadata !4058, metadata !889), !dbg !4059
  call void @llvm.dbg.declare(metadata i8** %17, metadata !4060, metadata !889), !dbg !4061
  call void @llvm.dbg.declare(metadata i32* %18, metadata !4062, metadata !889), !dbg !4063
  call void @llvm.dbg.declare(metadata %struct._GSList** %19, metadata !4064, metadata !889), !dbg !4065
  br label %20, !dbg !4066, !llvm.loop !4067

; <label>:20:                                     ; preds = %3
  %21 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !4068
  %22 = icmp ne %struct._IRC_SERVER_REC* %21, null, !dbg !4072
  br i1 %22, label %23, label %35, !dbg !4073

; <label>:23:                                     ; preds = %20
  %24 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !4074
  %25 = bitcast %struct._IRC_SERVER_REC* %24 to i8*, !dbg !4074
  %26 = call i8* @module_check_cast(i8* %25, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !4076
  %27 = bitcast i8* %26 to %struct._SERVER_REC*, !dbg !4077
  %28 = bitcast %struct._SERVER_REC* %27 to i8*, !dbg !4078
  %29 = call i8* @chat_protocol_check_cast(i8* %28, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !4079
  %30 = bitcast i8* %29 to %struct._IRC_SERVER_REC*, !dbg !4081
  %31 = icmp ne %struct._IRC_SERVER_REC* %30, null, !dbg !4081
  br i1 %31, label %32, label %33, !dbg !4082

; <label>:32:                                     ; preds = %23
  br i1 false, label %34, label %35, !dbg !4083

; <label>:33:                                     ; preds = %23
  br i1 false, label %35, label %34, !dbg !4085

; <label>:34:                                     ; preds = %33, %32
  br label %249, !dbg !4087

; <label>:35:                                     ; preds = %33, %32, %20
  %36 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !4089
  %37 = icmp eq %struct._IRC_SERVER_REC* %36, null, !dbg !4092
  br i1 %37, label %45, label %38, !dbg !4093

; <label>:38:                                     ; preds = %35
  %39 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !4094
  %40 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %39, i32 0, i32 8, !dbg !4096
  %41 = load i8, i8* %40, align 8, !dbg !4096
  %42 = and i8 %41, 1, !dbg !4096
  %43 = zext i8 %42 to i32, !dbg !4096
  %44 = icmp ne i32 %43, 0, !dbg !4097
  br i1 %44, label %49, label %45, !dbg !4098

; <label>:45:                                     ; preds = %38, %35
  br label %46, !dbg !4099, !llvm.loop !4101

; <label>:46:                                     ; preds = %45
  %47 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !4103
  call void @signal_stop(), !dbg !4106
  br label %249, !dbg !4108
                                                  ; No predecessors!
  br label %49, !dbg !4109

; <label>:49:                                     ; preds = %48, %38
  br label %50, !dbg !4111

; <label>:50:                                     ; preds = %49
  %51 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !4113
  %52 = bitcast %struct._IRC_CHANNEL_REC* %51 to i8*, !dbg !4113
  %53 = call i8* @module_check_cast_module(i8* %52, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0)), !dbg !4115
  %54 = bitcast i8* %53 to %struct._CHANNEL_REC*, !dbg !4116
  %55 = bitcast %struct._CHANNEL_REC* %54 to i8*, !dbg !4117
  %56 = call i8* @chat_protocol_check_cast(i8* %55, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !4118
  %57 = bitcast i8* %56 to %struct._IRC_CHANNEL_REC*, !dbg !4120
  %58 = icmp ne %struct._IRC_CHANNEL_REC* %57, null, !dbg !4120
  br i1 %58, label %59, label %60, !dbg !4121

; <label>:59:                                     ; preds = %50
  br i1 false, label %61, label %65, !dbg !4122

; <label>:60:                                     ; preds = %50
  br i1 false, label %65, label %61, !dbg !4124

; <label>:61:                                     ; preds = %60, %59
  br label %62, !dbg !4126, !llvm.loop !4127

; <label>:62:                                     ; preds = %61
  %63 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 5 to i8*)), !dbg !4128
  call void @signal_stop(), !dbg !4131
  br label %249, !dbg !4133
                                                  ; No predecessors!
  br label %65, !dbg !4134

; <label>:65:                                     ; preds = %64, %60, %59
  %66 = load i8*, i8** %4, align 8, !dbg !4136
  %67 = load i8, i8* %66, align 1, !dbg !4138
  %68 = zext i8 %67 to i32, !dbg !4139
  %69 = sext i32 %68 to i64, !dbg !4140
  %70 = call i16** @__ctype_b_loc() #2, !dbg !4141
  %71 = load i16*, i16** %70, align 8, !dbg !4142
  %72 = getelementptr inbounds i16, i16* %71, i64 %69, !dbg !4140
  %73 = load i16, i16* %72, align 2, !dbg !4140
  %74 = zext i16 %73 to i32, !dbg !4140
  %75 = and i32 %74, 2048, !dbg !4143
  %76 = icmp ne i32 %75, 0, !dbg !4143
  br i1 %76, label %77, label %94, !dbg !4144

; <label>:77:                                     ; preds = %65
  %78 = load i8*, i8** %4, align 8, !dbg !4145
  %79 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %78, i8** %17, i32 8195, i8** %10, i8** %8, i8** %9), !dbg !4148
  %80 = icmp ne i32 %79, 0, !dbg !4148
  br i1 %80, label %82, label %81, !dbg !4149

; <label>:81:                                     ; preds = %77
  br label %249, !dbg !4150

; <label>:82:                                     ; preds = %77
  %83 = load i8*, i8** %10, align 8, !dbg !4151
  %84 = call i32 @parse_time_interval(i8* %83, i32* %18), !dbg !4153
  %85 = icmp ne i32 %84, 0, !dbg !4153
  br i1 %85, label %93, label %86, !dbg !4154

; <label>:86:                                     ; preds = %82
  br label %87, !dbg !4155, !llvm.loop !4156

; <label>:87:                                     ; preds = %86
  %88 = load i8*, i8** %17, align 8, !dbg !4157
  call void @cmd_params_free(i8* %88), !dbg !4160
  br label %89, !dbg !4161, !llvm.loop !4162

; <label>:89:                                     ; preds = %87
  %90 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 10 to i8*)), !dbg !4164
  call void @signal_stop(), !dbg !4167
  br label %249, !dbg !4169
                                                  ; No predecessors!
  br label %92, !dbg !4170

; <label>:92:                                     ; preds = %91
  br label %93, !dbg !4172

; <label>:93:                                     ; preds = %92, %82
  br label %101, !dbg !4174

; <label>:94:                                     ; preds = %65
  %95 = load i8*, i8** %4, align 8, !dbg !4175
  %96 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %95, i8** %17, i32 8194, i8** %8, i8** %9), !dbg !4178
  %97 = icmp ne i32 %96, 0, !dbg !4178
  br i1 %97, label %99, label %98, !dbg !4179

; <label>:98:                                     ; preds = %94
  br label %249, !dbg !4180

; <label>:99:                                     ; preds = %94
  %100 = call i32 @settings_get_time(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0)), !dbg !4181
  store i32 %100, i32* %18, align 4, !dbg !4182
  br label %101

; <label>:101:                                    ; preds = %99, %93
  %102 = load i8*, i8** %8, align 8, !dbg !4183
  %103 = load i8, i8* %102, align 1, !dbg !4185
  %104 = sext i8 %103 to i32, !dbg !4185
  %105 = icmp eq i32 %104, 0, !dbg !4186
  br i1 %105, label %106, label %113, !dbg !4187

; <label>:106:                                    ; preds = %101
  br label %107, !dbg !4188, !llvm.loop !4190

; <label>:107:                                    ; preds = %106
  %108 = load i8*, i8** %17, align 8, !dbg !4192
  call void @cmd_params_free(i8* %108), !dbg !4195
  br label %109, !dbg !4196, !llvm.loop !4197

; <label>:109:                                    ; preds = %107
  %110 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !4199
  call void @signal_stop(), !dbg !4202
  br label %249, !dbg !4204
                                                  ; No predecessors!
  br label %112, !dbg !4205

; <label>:112:                                    ; preds = %111
  br label %113, !dbg !4207

; <label>:113:                                    ; preds = %112, %101
  %114 = load i8*, i8** %8, align 8, !dbg !4209
  %115 = call noalias i8** @g_strsplit(i8* %114, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.109, i32 0, i32 0), i32 -1), !dbg !4210
  store i8** %115, i8*** %14, align 8, !dbg !4211
  %116 = load i8**, i8*** %14, align 8, !dbg !4212
  %117 = call noalias i8* @g_strjoinv(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.100, i32 0, i32 0), i8** %116), !dbg !4213
  store i8* %117, i8** %15, align 8, !dbg !4214
  %118 = load i8**, i8*** %14, align 8, !dbg !4215
  call void @g_strfreev(i8** %118), !dbg !4216
  %119 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !4217
  %120 = load i8*, i8** %15, align 8, !dbg !4218
  %121 = call i8* @ban_get_masks(%struct._IRC_CHANNEL_REC* %119, i8* %120, i32 0), !dbg !4219
  store i8* %121, i8** %16, align 8, !dbg !4220
  %122 = load i8*, i8** %15, align 8, !dbg !4221
  call void @g_free(i8* %122), !dbg !4222
  %123 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !4223
  %124 = bitcast %struct._IRC_SERVER_REC* %123 to i8*, !dbg !4223
  %125 = call i8* @module_check_cast(i8* %124, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !4224
  %126 = bitcast i8* %125 to %struct._SERVER_REC*, !dbg !4225
  %127 = load i8*, i8** %9, align 8, !dbg !4226
  %128 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !4227
  %129 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %128, i32 0, i32 6, !dbg !4228
  %130 = load i8*, i8** %129, align 8, !dbg !4228
  %131 = call i8* @recode_out(%struct._SERVER_REC* %126, i8* %127, i8* %130), !dbg !4229
  store i8* %131, i8** %13, align 8, !dbg !4231
  %132 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !4232
  %133 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %132, i32 0, i32 6, !dbg !4233
  %134 = load i8*, i8** %133, align 8, !dbg !4233
  %135 = load i8*, i8** %8, align 8, !dbg !4234
  %136 = load i8*, i8** %13, align 8, !dbg !4235
  %137 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.129, i32 0, i32 0), i8* %134, i8* %135, i8* %136), !dbg !4236
  store i8* %137, i8** %11, align 8, !dbg !4237
  %138 = load i8*, i8** %13, align 8, !dbg !4238
  call void @g_free(i8* %138), !dbg !4239
  %139 = load i8*, i8** %16, align 8, !dbg !4240
  %140 = load i8, i8* %139, align 1, !dbg !4241
  %141 = sext i8 %140 to i32, !dbg !4241
  %142 = icmp eq i32 %141, 0, !dbg !4242
  br i1 %142, label %143, label %144, !dbg !4241

; <label>:143:                                    ; preds = %113
  br label %150, !dbg !4243

; <label>:144:                                    ; preds = %113
  %145 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !4244
  %146 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %145, i32 0, i32 6, !dbg !4245
  %147 = load i8*, i8** %146, align 8, !dbg !4245
  %148 = load i8*, i8** %16, align 8, !dbg !4246
  %149 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.122, i32 0, i32 0), i8* %147, i8* %148), !dbg !4247
  br label %150, !dbg !4248

; <label>:150:                                    ; preds = %144, %143
  %151 = phi i8* [ null, %143 ], [ %149, %144 ], !dbg !4249
  store i8* %151, i8** %12, align 8, !dbg !4251
  %152 = call i32 @settings_get_bool(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0)), !dbg !4252
  %153 = icmp ne i32 %152, 0, !dbg !4252
  br i1 %153, label %154, label %167, !dbg !4254

; <label>:154:                                    ; preds = %150
  %155 = load i8*, i8** %11, align 8, !dbg !4255
  %156 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !4257
  %157 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !4258
  %158 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.130, i32 0, i32 0), i32 3, i8* %155, %struct._IRC_SERVER_REC* %156, %struct._IRC_CHANNEL_REC* %157), !dbg !4259
  %159 = load i8*, i8** %12, align 8, !dbg !4260
  %160 = icmp ne i8* %159, null, !dbg !4262
  br i1 %160, label %161, label %166, !dbg !4263

; <label>:161:                                    ; preds = %154
  %162 = load i8*, i8** %12, align 8, !dbg !4264
  %163 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !4265
  %164 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !4266
  %165 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.131, i32 0, i32 0), i32 3, i8* %162, %struct._IRC_SERVER_REC* %163, %struct._IRC_CHANNEL_REC* %164), !dbg !4267
  br label %166, !dbg !4267

; <label>:166:                                    ; preds = %161, %154
  br label %180, !dbg !4268

; <label>:167:                                    ; preds = %150
  %168 = load i8*, i8** %12, align 8, !dbg !4269
  %169 = icmp ne i8* %168, null, !dbg !4272
  br i1 %169, label %170, label %175, !dbg !4273

; <label>:170:                                    ; preds = %167
  %171 = load i8*, i8** %12, align 8, !dbg !4274
  %172 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !4275
  %173 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !4276
  %174 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.131, i32 0, i32 0), i32 3, i8* %171, %struct._IRC_SERVER_REC* %172, %struct._IRC_CHANNEL_REC* %173), !dbg !4277
  br label %175, !dbg !4277

; <label>:175:                                    ; preds = %170, %167
  %176 = load i8*, i8** %11, align 8, !dbg !4278
  %177 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !4279
  %178 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !4280
  %179 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.130, i32 0, i32 0), i32 3, i8* %176, %struct._IRC_SERVER_REC* %177, %struct._IRC_CHANNEL_REC* %178), !dbg !4281
  br label %180

; <label>:180:                                    ; preds = %175, %166
  %181 = load i8*, i8** %11, align 8, !dbg !4282
  call void @g_free(i8* %181), !dbg !4283
  %182 = load i8*, i8** %12, align 8, !dbg !4284
  call void @g_free(i8* %182), !dbg !4285
  %183 = load i8*, i8** %16, align 8, !dbg !4286
  %184 = load i8, i8* %183, align 1, !dbg !4288
  %185 = sext i8 %184 to i32, !dbg !4288
  %186 = icmp eq i32 %185, 0, !dbg !4289
  br i1 %186, label %187, label %189, !dbg !4290

; <label>:187:                                    ; preds = %180
  %188 = load i8*, i8** %16, align 8, !dbg !4291
  call void @g_free(i8* %188), !dbg !4292
  br label %247, !dbg !4292

; <label>:189:                                    ; preds = %180
  %190 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !4293
  %191 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %190, i32 0, i32 64, !dbg !4296
  %192 = load %struct._GSList*, %struct._GSList** %191, align 8, !dbg !4296
  store %struct._GSList* %192, %struct._GSList** %19, align 8, !dbg !4297
  br label %193, !dbg !4298

; <label>:193:                                    ; preds = %215, %189
  %194 = load %struct._GSList*, %struct._GSList** %19, align 8, !dbg !4299
  %195 = icmp ne %struct._GSList* %194, null, !dbg !4302
  br i1 %195, label %196, label %219, !dbg !4303

; <label>:196:                                    ; preds = %193
  %197 = load %struct._GSList*, %struct._GSList** %19, align 8, !dbg !4304
  %198 = getelementptr inbounds %struct._GSList, %struct._GSList* %197, i32 0, i32 0, !dbg !4306
  %199 = load i8*, i8** %198, align 8, !dbg !4306
  %200 = bitcast i8* %199 to %struct.KNOCKOUT_REC*, !dbg !4304
  store %struct.KNOCKOUT_REC* %200, %struct.KNOCKOUT_REC** %7, align 8, !dbg !4307
  %201 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !4308
  %202 = load %struct.KNOCKOUT_REC*, %struct.KNOCKOUT_REC** %7, align 8, !dbg !4310
  %203 = getelementptr inbounds %struct.KNOCKOUT_REC, %struct.KNOCKOUT_REC* %202, i32 0, i32 0, !dbg !4311
  %204 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %203, align 8, !dbg !4311
  %205 = icmp eq %struct._IRC_CHANNEL_REC* %201, %204, !dbg !4312
  br i1 %205, label %206, label %214, !dbg !4313

; <label>:206:                                    ; preds = %196
  %207 = load %struct.KNOCKOUT_REC*, %struct.KNOCKOUT_REC** %7, align 8, !dbg !4314
  %208 = getelementptr inbounds %struct.KNOCKOUT_REC, %struct.KNOCKOUT_REC* %207, i32 0, i32 1, !dbg !4315
  %209 = load i8*, i8** %208, align 8, !dbg !4315
  %210 = load i8*, i8** %16, align 8, !dbg !4316
  %211 = call i32 @g_strcmp0(i8* %209, i8* %210), !dbg !4317
  %212 = icmp ne i32 %211, 0, !dbg !4317
  br i1 %212, label %214, label %213, !dbg !4318

; <label>:213:                                    ; preds = %206
  br label %219, !dbg !4320

; <label>:214:                                    ; preds = %206, %196
  br label %215, !dbg !4321

; <label>:215:                                    ; preds = %214
  %216 = load %struct._GSList*, %struct._GSList** %19, align 8, !dbg !4322
  %217 = getelementptr inbounds %struct._GSList, %struct._GSList* %216, i32 0, i32 1, !dbg !4324
  %218 = load %struct._GSList*, %struct._GSList** %217, align 8, !dbg !4324
  store %struct._GSList* %218, %struct._GSList** %19, align 8, !dbg !4325
  br label %193, !dbg !4326, !llvm.loop !4327

; <label>:219:                                    ; preds = %213, %193
  %220 = load %struct._GSList*, %struct._GSList** %19, align 8, !dbg !4329
  %221 = icmp eq %struct._GSList* %220, null, !dbg !4331
  br i1 %221, label %222, label %239, !dbg !4332

; <label>:222:                                    ; preds = %219
  %223 = call noalias i8* @g_malloc_n(i64 1, i64 24), !dbg !4333
  %224 = bitcast i8* %223 to %struct.KNOCKOUT_REC*, !dbg !4335
  store %struct.KNOCKOUT_REC* %224, %struct.KNOCKOUT_REC** %7, align 8, !dbg !4336
  %225 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !4337
  %226 = load %struct.KNOCKOUT_REC*, %struct.KNOCKOUT_REC** %7, align 8, !dbg !4338
  %227 = getelementptr inbounds %struct.KNOCKOUT_REC, %struct.KNOCKOUT_REC* %226, i32 0, i32 0, !dbg !4339
  store %struct._IRC_CHANNEL_REC* %225, %struct._IRC_CHANNEL_REC** %227, align 8, !dbg !4340
  %228 = load i8*, i8** %16, align 8, !dbg !4341
  %229 = load %struct.KNOCKOUT_REC*, %struct.KNOCKOUT_REC** %7, align 8, !dbg !4342
  %230 = getelementptr inbounds %struct.KNOCKOUT_REC, %struct.KNOCKOUT_REC* %229, i32 0, i32 1, !dbg !4343
  store i8* %228, i8** %230, align 8, !dbg !4344
  %231 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !4345
  %232 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %231, i32 0, i32 64, !dbg !4346
  %233 = load %struct._GSList*, %struct._GSList** %232, align 8, !dbg !4346
  %234 = load %struct.KNOCKOUT_REC*, %struct.KNOCKOUT_REC** %7, align 8, !dbg !4347
  %235 = bitcast %struct.KNOCKOUT_REC* %234 to i8*, !dbg !4347
  %236 = call %struct._GSList* @g_slist_append(%struct._GSList* %233, i8* %235), !dbg !4348
  %237 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !4349
  %238 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %237, i32 0, i32 64, !dbg !4350
  store %struct._GSList* %236, %struct._GSList** %238, align 8, !dbg !4351
  br label %239, !dbg !4352

; <label>:239:                                    ; preds = %222, %219
  %240 = call i64 @time(i64* null) #7, !dbg !4353
  %241 = load i32, i32* %18, align 4, !dbg !4354
  %242 = sdiv i32 %241, 1000, !dbg !4355
  %243 = sext i32 %242 to i64, !dbg !4354
  %244 = add nsw i64 %240, %243, !dbg !4356
  %245 = load %struct.KNOCKOUT_REC*, %struct.KNOCKOUT_REC** %7, align 8, !dbg !4357
  %246 = getelementptr inbounds %struct.KNOCKOUT_REC, %struct.KNOCKOUT_REC* %245, i32 0, i32 2, !dbg !4358
  store i64 %244, i64* %246, align 8, !dbg !4359
  br label %247

; <label>:247:                                    ; preds = %239, %187
  %248 = load i8*, i8** %17, align 8, !dbg !4360
  call void @cmd_params_free(i8* %248), !dbg !4361
  br label %249, !dbg !4362

; <label>:249:                                    ; preds = %247, %109, %98, %89, %81, %62, %46, %34
  ret void, !dbg !4363
}

; Function Attrs: nounwind uwtable
define internal void @cmd_server_purge(i8*, %struct._IRC_SERVER_REC*) #0 !dbg !4364 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !4365, metadata !889), !dbg !4366
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !4367, metadata !889), !dbg !4368
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4369, metadata !889), !dbg !4370
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4371, metadata !889), !dbg !4372
  br label %7, !dbg !4373, !llvm.loop !4374

; <label>:7:                                      ; preds = %2
  %8 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !4375
  %9 = icmp ne %struct._IRC_SERVER_REC* %8, null, !dbg !4379
  br i1 %9, label %10, label %22, !dbg !4380

; <label>:10:                                     ; preds = %7
  %11 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !4381
  %12 = bitcast %struct._IRC_SERVER_REC* %11 to i8*, !dbg !4381
  %13 = call i8* @module_check_cast(i8* %12, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !4383
  %14 = bitcast i8* %13 to %struct._SERVER_REC*, !dbg !4384
  %15 = bitcast %struct._SERVER_REC* %14 to i8*, !dbg !4385
  %16 = call i8* @chat_protocol_check_cast(i8* %15, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !4386
  %17 = bitcast i8* %16 to %struct._IRC_SERVER_REC*, !dbg !4388
  %18 = icmp ne %struct._IRC_SERVER_REC* %17, null, !dbg !4388
  br i1 %18, label %19, label %20, !dbg !4389

; <label>:19:                                     ; preds = %10
  br i1 false, label %21, label %22, !dbg !4390

; <label>:20:                                     ; preds = %10
  br i1 false, label %22, label %21, !dbg !4392

; <label>:21:                                     ; preds = %20, %19
  br label %54, !dbg !4394

; <label>:22:                                     ; preds = %20, %19, %7
  %23 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !4396
  %24 = icmp eq %struct._IRC_SERVER_REC* %23, null, !dbg !4399
  br i1 %24, label %32, label %25, !dbg !4400

; <label>:25:                                     ; preds = %22
  %26 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !4401
  %27 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %26, i32 0, i32 8, !dbg !4403
  %28 = load i8, i8* %27, align 8, !dbg !4403
  %29 = and i8 %28, 1, !dbg !4403
  %30 = zext i8 %29 to i32, !dbg !4403
  %31 = icmp ne i32 %30, 0, !dbg !4404
  br i1 %31, label %36, label %32, !dbg !4405

; <label>:32:                                     ; preds = %25, %22
  br label %33, !dbg !4406, !llvm.loop !4408

; <label>:33:                                     ; preds = %32
  %34 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !4410
  call void @signal_stop(), !dbg !4413
  br label %54, !dbg !4415
                                                  ; No predecessors!
  br label %36, !dbg !4416

; <label>:36:                                     ; preds = %35, %25
  br label %37, !dbg !4418

; <label>:37:                                     ; preds = %36
  %38 = load i8*, i8** %3, align 8, !dbg !4420
  %39 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %38, i8** %6, i32 1, i8** %5), !dbg !4422
  %40 = icmp ne i32 %39, 0, !dbg !4422
  br i1 %40, label %42, label %41, !dbg !4423

; <label>:41:                                     ; preds = %37
  br label %54, !dbg !4424

; <label>:42:                                     ; preds = %37
  %43 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !4425
  %44 = load i8*, i8** %5, align 8, !dbg !4426
  %45 = load i8, i8* %44, align 1, !dbg !4427
  %46 = sext i8 %45 to i32, !dbg !4427
  %47 = icmp eq i32 %46, 0, !dbg !4428
  br i1 %47, label %48, label %49, !dbg !4427

; <label>:48:                                     ; preds = %42
  br label %51, !dbg !4429

; <label>:49:                                     ; preds = %42
  %50 = load i8*, i8** %5, align 8, !dbg !4431
  br label %51, !dbg !4433

; <label>:51:                                     ; preds = %49, %48
  %52 = phi i8* [ null, %48 ], [ %50, %49 ], !dbg !4434
  call void @irc_server_purge_output(%struct._IRC_SERVER_REC* %43, i8* %52), !dbg !4436
  %53 = load i8*, i8** %6, align 8, !dbg !4437
  call void @cmd_params_free(i8* %53), !dbg !4438
  br label %54, !dbg !4439

; <label>:54:                                     ; preds = %51, %41, %33, %21
  ret void, !dbg !4440
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @sig_channel_destroyed(%struct._IRC_CHANNEL_REC*) #0 !dbg !4441 {
  %2 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct.KNOCKOUT_REC*, align 8
  store %struct._IRC_CHANNEL_REC* %0, %struct._IRC_CHANNEL_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %2, metadata !4444, metadata !889), !dbg !4445
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !4446, metadata !889), !dbg !4447
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !4448, metadata !889), !dbg !4449
  %6 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !4450
  %7 = bitcast %struct._IRC_CHANNEL_REC* %6 to i8*, !dbg !4450
  %8 = call i8* @module_check_cast_module(i8* %7, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0)), !dbg !4452
  %9 = bitcast i8* %8 to %struct._CHANNEL_REC*, !dbg !4453
  %10 = bitcast %struct._CHANNEL_REC* %9 to i8*, !dbg !4454
  %11 = call i8* @chat_protocol_check_cast(i8* %10, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !4455
  %12 = bitcast i8* %11 to %struct._IRC_CHANNEL_REC*, !dbg !4457
  %13 = icmp ne %struct._IRC_CHANNEL_REC* %12, null, !dbg !4457
  br i1 %13, label %14, label %15, !dbg !4458

; <label>:14:                                     ; preds = %1
  br i1 false, label %29, label %16, !dbg !4459

; <label>:15:                                     ; preds = %1
  br i1 false, label %16, label %29, !dbg !4461

; <label>:16:                                     ; preds = %15, %14
  %17 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !4463
  %18 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %17, i32 0, i32 4, !dbg !4465
  %19 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %18, align 8, !dbg !4465
  %20 = bitcast %struct._IRC_SERVER_REC* %19 to i8*, !dbg !4463
  %21 = call i8* @module_check_cast(i8* %20, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !4466
  %22 = bitcast i8* %21 to %struct._SERVER_REC*, !dbg !4467
  %23 = bitcast %struct._SERVER_REC* %22 to i8*, !dbg !4468
  %24 = call i8* @chat_protocol_check_cast(i8* %23, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !4469
  %25 = bitcast i8* %24 to %struct._IRC_SERVER_REC*, !dbg !4471
  %26 = icmp ne %struct._IRC_SERVER_REC* %25, null, !dbg !4471
  br i1 %26, label %27, label %28, !dbg !4472

; <label>:27:                                     ; preds = %16
  br i1 false, label %29, label %30, !dbg !4473

; <label>:28:                                     ; preds = %16
  br i1 false, label %30, label %29, !dbg !4475

; <label>:29:                                     ; preds = %28, %27, %15, %14
  br label %60, !dbg !4477

; <label>:30:                                     ; preds = %28, %27
  %31 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !4478
  %32 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %31, i32 0, i32 4, !dbg !4480
  %33 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %32, align 8, !dbg !4480
  %34 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %33, i32 0, i32 64, !dbg !4481
  %35 = load %struct._GSList*, %struct._GSList** %34, align 8, !dbg !4481
  store %struct._GSList* %35, %struct._GSList** %3, align 8, !dbg !4482
  br label %36, !dbg !4483

; <label>:36:                                     ; preds = %58, %30
  %37 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !4484
  %38 = icmp ne %struct._GSList* %37, null, !dbg !4487
  br i1 %38, label %39, label %60, !dbg !4488

; <label>:39:                                     ; preds = %36
  call void @llvm.dbg.declare(metadata %struct.KNOCKOUT_REC** %5, metadata !4489, metadata !889), !dbg !4491
  %40 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !4492
  %41 = getelementptr inbounds %struct._GSList, %struct._GSList* %40, i32 0, i32 0, !dbg !4493
  %42 = load i8*, i8** %41, align 8, !dbg !4493
  %43 = bitcast i8* %42 to %struct.KNOCKOUT_REC*, !dbg !4492
  store %struct.KNOCKOUT_REC* %43, %struct.KNOCKOUT_REC** %5, align 8, !dbg !4491
  %44 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !4494
  %45 = getelementptr inbounds %struct._GSList, %struct._GSList* %44, i32 0, i32 1, !dbg !4495
  %46 = load %struct._GSList*, %struct._GSList** %45, align 8, !dbg !4495
  store %struct._GSList* %46, %struct._GSList** %4, align 8, !dbg !4496
  %47 = load %struct.KNOCKOUT_REC*, %struct.KNOCKOUT_REC** %5, align 8, !dbg !4497
  %48 = getelementptr inbounds %struct.KNOCKOUT_REC, %struct.KNOCKOUT_REC* %47, i32 0, i32 0, !dbg !4499
  %49 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %48, align 8, !dbg !4499
  %50 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !4500
  %51 = icmp eq %struct._IRC_CHANNEL_REC* %49, %50, !dbg !4501
  br i1 %51, label %52, label %57, !dbg !4502

; <label>:52:                                     ; preds = %39
  %53 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %2, align 8, !dbg !4503
  %54 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %53, i32 0, i32 4, !dbg !4504
  %55 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %54, align 8, !dbg !4504
  %56 = load %struct.KNOCKOUT_REC*, %struct.KNOCKOUT_REC** %5, align 8, !dbg !4505
  call void @knockout_destroy(%struct._IRC_SERVER_REC* %55, %struct.KNOCKOUT_REC* %56), !dbg !4506
  br label %57, !dbg !4506

; <label>:57:                                     ; preds = %52, %39
  br label %58, !dbg !4507

; <label>:58:                                     ; preds = %57
  %59 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !4508
  store %struct._GSList* %59, %struct._GSList** %3, align 8, !dbg !4510
  br label %36, !dbg !4511, !llvm.loop !4512

; <label>:60:                                     ; preds = %29, %36
  ret void, !dbg !4514
}

; Function Attrs: nounwind uwtable
define internal void @sig_server_disconnected(%struct._IRC_SERVER_REC*) #0 !dbg !4515 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !4518, metadata !889), !dbg !4519
  br label %3, !dbg !4520, !llvm.loop !4521

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !4522
  %5 = icmp ne %struct._IRC_SERVER_REC* %4, null, !dbg !4526
  br i1 %5, label %6, label %7, !dbg !4522

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !4527

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.sig_server_disconnected, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.70, i32 0, i32 0)), !dbg !4530
  br label %38, !dbg !4533

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !4534

; <label>:9:                                      ; preds = %8
  %10 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !4536
  %11 = bitcast %struct._IRC_SERVER_REC* %10 to i8*, !dbg !4536
  %12 = call i8* @module_check_cast(i8* %11, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !4538
  %13 = bitcast i8* %12 to %struct._SERVER_REC*, !dbg !4539
  %14 = bitcast %struct._SERVER_REC* %13 to i8*, !dbg !4540
  %15 = call i8* @chat_protocol_check_cast(i8* %14, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !4541
  %16 = bitcast i8* %15 to %struct._IRC_SERVER_REC*, !dbg !4543
  %17 = icmp ne %struct._IRC_SERVER_REC* %16, null, !dbg !4543
  br i1 %17, label %18, label %19, !dbg !4544

; <label>:18:                                     ; preds = %9
  br i1 false, label %20, label %21, !dbg !4545

; <label>:19:                                     ; preds = %9
  br i1 false, label %21, label %20, !dbg !4547

; <label>:20:                                     ; preds = %19, %18
  br label %38, !dbg !4549

; <label>:21:                                     ; preds = %19, %18
  %22 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !4550
  %23 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %22, i32 0, i32 39, !dbg !4551
  %24 = load i8*, i8** %23, align 8, !dbg !4551
  call void @g_free(i8* %24), !dbg !4552
  br label %25, !dbg !4553

; <label>:25:                                     ; preds = %30, %21
  %26 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !4554
  %27 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %26, i32 0, i32 64, !dbg !4556
  %28 = load %struct._GSList*, %struct._GSList** %27, align 8, !dbg !4556
  %29 = icmp ne %struct._GSList* %28, null, !dbg !4557
  br i1 %29, label %30, label %38, !dbg !4558

; <label>:30:                                     ; preds = %25
  %31 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !4559
  %32 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !4560
  %33 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %32, i32 0, i32 64, !dbg !4561
  %34 = load %struct._GSList*, %struct._GSList** %33, align 8, !dbg !4561
  %35 = getelementptr inbounds %struct._GSList, %struct._GSList* %34, i32 0, i32 0, !dbg !4562
  %36 = load i8*, i8** %35, align 8, !dbg !4562
  %37 = bitcast i8* %36 to %struct.KNOCKOUT_REC*, !dbg !4560
  call void @knockout_destroy(%struct._IRC_SERVER_REC* %31, %struct.KNOCKOUT_REC* %37), !dbg !4563
  br label %25, !dbg !4564, !llvm.loop !4565

; <label>:38:                                     ; preds = %7, %20, %25
  ret void, !dbg !4566
}

; Function Attrs: nounwind uwtable
define internal void @sig_whois_try_whowas(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !4567 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !4570, metadata !889), !dbg !4571
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4572, metadata !889), !dbg !4573
  call void @llvm.dbg.declare(metadata i8** %5, metadata !4574, metadata !889), !dbg !4575
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4576, metadata !889), !dbg !4577
  br label %7, !dbg !4578, !llvm.loop !4579

; <label>:7:                                      ; preds = %2
  %8 = load i8*, i8** %4, align 8, !dbg !4580
  %9 = icmp ne i8* %8, null, !dbg !4584
  br i1 %9, label %10, label %11, !dbg !4580

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !4585

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.sig_whois_try_whowas, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.93, i32 0, i32 0)), !dbg !4588
  br label %25, !dbg !4591

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !4592

; <label>:13:                                     ; preds = %12
  %14 = load i8*, i8** %4, align 8, !dbg !4594
  %15 = call i8* (i8*, i32, ...) @event_get_params(i8* %14, i32 2, i8* null, i8** %6), !dbg !4595
  store i8* %15, i8** %5, align 8, !dbg !4596
  %16 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !4597
  %17 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %16, i32 0, i32 45, !dbg !4598
  %18 = load i16, i16* %17, align 4, !dbg !4599
  %19 = and i16 %18, -3, !dbg !4599
  store i16 %19, i16* %17, align 4, !dbg !4599
  %20 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !4600
  %21 = load i8*, i8** %6, align 8, !dbg !4601
  call void (%struct._IRC_SERVER_REC*, i8*, i32, i8*, i32, i8*, ...) @server_redirect_event(%struct._IRC_SERVER_REC* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), i32 1, i8* %21, i32 -1, i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.133, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.134, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.135, i32 0, i32 0), i8* null), !dbg !4602
  %22 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !4603
  %23 = load i8*, i8** %6, align 8, !dbg !4604
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.136, i32 0, i32 0), i8* %23), !dbg !4605
  %24 = load i8*, i8** %5, align 8, !dbg !4606
  call void @g_free(i8* %24), !dbg !4607
  br label %25, !dbg !4608

; <label>:25:                                     ; preds = %13, %11
  ret void, !dbg !4609
}

; Function Attrs: nounwind uwtable
define internal void @event_whois(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !4611 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !4614, metadata !889), !dbg !4615
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4616, metadata !889), !dbg !4617
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4618, metadata !889), !dbg !4619
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4620, metadata !889), !dbg !4621
  %9 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !4622
  %10 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %9, i32 0, i32 45, !dbg !4623
  %11 = load i16, i16* %10, align 4, !dbg !4624
  %12 = and i16 %11, -2, !dbg !4624
  %13 = or i16 %12, 1, !dbg !4624
  store i16 %13, i16* %10, align 4, !dbg !4624
  %14 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !4625
  %15 = load i8*, i8** %6, align 8, !dbg !4626
  %16 = load i8*, i8** %7, align 8, !dbg !4627
  %17 = load i8*, i8** %8, align 8, !dbg !4628
  %18 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.107, i32 0, i32 0), i32 4, %struct._IRC_SERVER_REC* %14, i8* %15, i8* %16, i8* %17), !dbg !4629
  ret void, !dbg !4630
}

; Function Attrs: nounwind uwtable
define internal void @event_end_of_whois(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !4631 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !4632, metadata !889), !dbg !4633
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4634, metadata !889), !dbg !4635
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4636, metadata !889), !dbg !4637
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4638, metadata !889), !dbg !4639
  %9 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !4640
  %10 = load i8*, i8** %6, align 8, !dbg !4641
  %11 = load i8*, i8** %7, align 8, !dbg !4642
  %12 = load i8*, i8** %8, align 8, !dbg !4643
  %13 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.101, i32 0, i32 0), i32 4, %struct._IRC_SERVER_REC* %9, i8* %10, i8* %11, i8* %12), !dbg !4644
  %14 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !4645
  %15 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %14, i32 0, i32 45, !dbg !4646
  %16 = load i16, i16* %15, align 4, !dbg !4647
  %17 = and i16 %16, -2, !dbg !4647
  store i16 %17, i16* %15, align 4, !dbg !4647
  ret void, !dbg !4648
}

; Function Attrs: nounwind uwtable
define internal void @event_whowas(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !4649 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !4650, metadata !889), !dbg !4651
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4652, metadata !889), !dbg !4653
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4654, metadata !889), !dbg !4655
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4656, metadata !889), !dbg !4657
  %9 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !4658
  %10 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %9, i32 0, i32 45, !dbg !4659
  %11 = load i16, i16* %10, align 4, !dbg !4660
  %12 = and i16 %11, -3, !dbg !4660
  %13 = or i16 %12, 2, !dbg !4660
  store i16 %13, i16* %10, align 4, !dbg !4660
  %14 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !4661
  %15 = load i8*, i8** %6, align 8, !dbg !4662
  %16 = load i8*, i8** %7, align 8, !dbg !4663
  %17 = load i8*, i8** %8, align 8, !dbg !4664
  %18 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.111, i32 0, i32 0), i32 4, %struct._IRC_SERVER_REC* %14, i8* %15, i8* %16, i8* %17), !dbg !4665
  ret void, !dbg !4666
}

declare void @command_set_options_module(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @irc_commands_deinit() #0 !dbg !4667 {
  %1 = load i32, i32* @knockout_tag, align 4, !dbg !4668
  %2 = call i32 @g_source_remove(i32 %1), !dbg !4669
  call void @command_unbind_full(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_notice to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4670
  call void @command_unbind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_ctcp to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4671
  call void @command_unbind_full(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_nctcp to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4672
  call void @command_unbind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_part to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4673
  call void @command_unbind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_kick to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4674
  call void @command_unbind_full(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_topic to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4675
  call void @command_unbind_full(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_invite to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4676
  call void @command_unbind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_list to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4677
  call void @command_unbind_full(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_who to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4678
  call void @command_unbind_full(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_names to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4679
  call void @command_unbind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_nick to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4680
  call void @command_unbind_full(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_whois to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4681
  call void @command_unbind_full(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @cmd_whowas to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4682
  call void @command_unbind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_ping to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4683
  call void @command_unbind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_2self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4684
  call void @command_unbind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @cmd_away to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4685
  call void @command_unbind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_1self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4686
  call void @command_unbind_full(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @cmd_accept to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4687
  call void @command_unbind_full(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4688
  call void @command_unbind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4689
  call void @command_unbind_full(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4690
  call void @command_unbind_full(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4691
  call void @command_unbind_full(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4692
  call void @command_unbind_full(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4693
  call void @command_unbind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4694
  call void @command_unbind_full(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4695
  call void @command_unbind_full(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4696
  call void @command_unbind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4697
  call void @command_unbind_full(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4698
  call void @command_unbind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4699
  call void @command_unbind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4700
  call void @command_unbind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4701
  call void @command_unbind_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @cmd_unsilence to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4702
  call void @command_unbind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @cmd_sconnect to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4703
  call void @command_unbind_full(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_2self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4704
  call void @command_unbind_full(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4705
  call void @command_unbind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4706
  call void @command_unbind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @cmd_oper to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4707
  call void @command_unbind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4708
  call void @command_unbind_full(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_2self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4709
  call void @command_unbind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4710
  call void @command_unbind_full(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @cmd_quote to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4711
  call void @command_unbind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_wall to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4712
  call void @command_unbind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @cmd_wait to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4713
  call void @command_unbind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @command_1self to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4714
  call void @command_unbind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_kickban to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4715
  call void @command_unbind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.57, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._IRC_CHANNEL_REC*)* @cmd_knockout to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4716
  call void @command_unbind_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @cmd_server_purge to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4717
  call void @signal_remove_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.59, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_CHANNEL_REC*)* @sig_channel_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4718
  call void @signal_remove_full(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.60, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @sig_server_disconnected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4719
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.61, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @sig_whois_try_whowas to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4720
  call void @signal_remove_full(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_whois to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4721
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_end_of_whois to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4722
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.64, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_whowas to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !4723
  %3 = load %struct._GString*, %struct._GString** @tmpstr, align 8, !dbg !4724
  %4 = call i8* @g_string_free(%struct._GString* %3, i32 1), !dbg !4725
  ret void, !dbg !4726
}

declare i32 @g_source_remove(i32) #1

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare i8* @g_string_free(%struct._GString*, i32) #1

declare void @g_slist_foreach(%struct._GSList*, void (i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @knockout_timeout_server(%struct._IRC_SERVER_REC*) #0 !dbg !4727 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.KNOCKOUT_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !4728, metadata !889), !dbg !4729
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !4730, metadata !889), !dbg !4731
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !4732, metadata !889), !dbg !4733
  call void @llvm.dbg.declare(metadata i64* %5, metadata !4734, metadata !889), !dbg !4735
  br label %7, !dbg !4736, !llvm.loop !4737

; <label>:7:                                      ; preds = %1
  %8 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !4738
  %9 = icmp ne %struct._IRC_SERVER_REC* %8, null, !dbg !4742
  br i1 %9, label %10, label %11, !dbg !4738

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !4743

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.knockout_timeout_server, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.70, i32 0, i32 0)), !dbg !4746
  br label %60, !dbg !4749

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !4750

; <label>:13:                                     ; preds = %12
  %14 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !4752
  %15 = bitcast %struct._IRC_SERVER_REC* %14 to i8*, !dbg !4752
  %16 = call i8* @module_check_cast(i8* %15, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)), !dbg !4754
  %17 = bitcast i8* %16 to %struct._SERVER_REC*, !dbg !4755
  %18 = bitcast %struct._SERVER_REC* %17 to i8*, !dbg !4756
  %19 = call i8* @chat_protocol_check_cast(i8* %18, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !4757
  %20 = bitcast i8* %19 to %struct._IRC_SERVER_REC*, !dbg !4759
  %21 = icmp ne %struct._IRC_SERVER_REC* %20, null, !dbg !4759
  br i1 %21, label %22, label %23, !dbg !4760

; <label>:22:                                     ; preds = %13
  br i1 false, label %24, label %25, !dbg !4761

; <label>:23:                                     ; preds = %13
  br i1 false, label %25, label %24, !dbg !4763

; <label>:24:                                     ; preds = %23, %22
  br label %60, !dbg !4765

; <label>:25:                                     ; preds = %23, %22
  %26 = call i64 @time(i64* null) #7, !dbg !4766
  store i64 %26, i64* %5, align 8, !dbg !4767
  %27 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !4768
  %28 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %27, i32 0, i32 64, !dbg !4770
  %29 = load %struct._GSList*, %struct._GSList** %28, align 8, !dbg !4770
  store %struct._GSList* %29, %struct._GSList** %3, align 8, !dbg !4771
  br label %30, !dbg !4772

; <label>:30:                                     ; preds = %58, %25
  %31 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !4773
  %32 = icmp ne %struct._GSList* %31, null, !dbg !4776
  br i1 %32, label %33, label %60, !dbg !4777

; <label>:33:                                     ; preds = %30
  call void @llvm.dbg.declare(metadata %struct.KNOCKOUT_REC** %6, metadata !4778, metadata !889), !dbg !4780
  %34 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !4781
  %35 = getelementptr inbounds %struct._GSList, %struct._GSList* %34, i32 0, i32 0, !dbg !4782
  %36 = load i8*, i8** %35, align 8, !dbg !4782
  %37 = bitcast i8* %36 to %struct.KNOCKOUT_REC*, !dbg !4781
  store %struct.KNOCKOUT_REC* %37, %struct.KNOCKOUT_REC** %6, align 8, !dbg !4780
  %38 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !4783
  %39 = getelementptr inbounds %struct._GSList, %struct._GSList* %38, i32 0, i32 1, !dbg !4784
  %40 = load %struct._GSList*, %struct._GSList** %39, align 8, !dbg !4784
  store %struct._GSList* %40, %struct._GSList** %4, align 8, !dbg !4785
  %41 = load %struct.KNOCKOUT_REC*, %struct.KNOCKOUT_REC** %6, align 8, !dbg !4786
  %42 = getelementptr inbounds %struct.KNOCKOUT_REC, %struct.KNOCKOUT_REC* %41, i32 0, i32 2, !dbg !4788
  %43 = load i64, i64* %42, align 8, !dbg !4788
  %44 = load i64, i64* %5, align 8, !dbg !4789
  %45 = icmp sle i64 %43, %44, !dbg !4790
  br i1 %45, label %46, label %57, !dbg !4791

; <label>:46:                                     ; preds = %33
  %47 = load %struct.KNOCKOUT_REC*, %struct.KNOCKOUT_REC** %6, align 8, !dbg !4792
  %48 = getelementptr inbounds %struct.KNOCKOUT_REC, %struct.KNOCKOUT_REC* %47, i32 0, i32 1, !dbg !4794
  %49 = load i8*, i8** %48, align 8, !dbg !4794
  %50 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !4795
  %51 = load %struct.KNOCKOUT_REC*, %struct.KNOCKOUT_REC** %6, align 8, !dbg !4796
  %52 = getelementptr inbounds %struct.KNOCKOUT_REC, %struct.KNOCKOUT_REC* %51, i32 0, i32 0, !dbg !4797
  %53 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %52, align 8, !dbg !4797
  %54 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.72, i32 0, i32 0), i32 3, i8* %49, %struct._IRC_SERVER_REC* %50, %struct._IRC_CHANNEL_REC* %53), !dbg !4798
  %55 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !4799
  %56 = load %struct.KNOCKOUT_REC*, %struct.KNOCKOUT_REC** %6, align 8, !dbg !4800
  call void @knockout_destroy(%struct._IRC_SERVER_REC* %55, %struct.KNOCKOUT_REC* %56), !dbg !4801
  br label %57, !dbg !4802

; <label>:57:                                     ; preds = %46, %33
  br label %58, !dbg !4803

; <label>:58:                                     ; preds = %57
  %59 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !4804
  store %struct._GSList* %59, %struct._GSList** %3, align 8, !dbg !4806
  br label %30, !dbg !4807, !llvm.loop !4808

; <label>:60:                                     ; preds = %11, %24, %30
  ret void, !dbg !4810
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i8* @chat_protocol_check_cast(i8*, i32, i8*) #1

declare i8* @module_check_cast(i8*, i32, i8*) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #3

declare i32 @signal_emit(i8*, i32, ...) #1

; Function Attrs: nounwind uwtable
define internal void @knockout_destroy(%struct._IRC_SERVER_REC*, %struct.KNOCKOUT_REC*) #0 !dbg !4811 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca %struct.KNOCKOUT_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !4814, metadata !889), !dbg !4815
  store %struct.KNOCKOUT_REC* %1, %struct.KNOCKOUT_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.KNOCKOUT_REC** %4, metadata !4816, metadata !889), !dbg !4817
  %5 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !4818
  %6 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %5, i32 0, i32 64, !dbg !4819
  %7 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !4819
  %8 = load %struct.KNOCKOUT_REC*, %struct.KNOCKOUT_REC** %4, align 8, !dbg !4820
  %9 = bitcast %struct.KNOCKOUT_REC* %8 to i8*, !dbg !4820
  %10 = call %struct._GSList* @g_slist_remove(%struct._GSList* %7, i8* %9), !dbg !4821
  %11 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !4822
  %12 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %11, i32 0, i32 64, !dbg !4823
  store %struct._GSList* %10, %struct._GSList** %12, align 8, !dbg !4824
  %13 = load %struct.KNOCKOUT_REC*, %struct.KNOCKOUT_REC** %4, align 8, !dbg !4825
  %14 = getelementptr inbounds %struct.KNOCKOUT_REC, %struct.KNOCKOUT_REC* %13, i32 0, i32 1, !dbg !4826
  %15 = load i8*, i8** %14, align 8, !dbg !4826
  call void @g_free(i8* %15), !dbg !4827
  %16 = load %struct.KNOCKOUT_REC*, %struct.KNOCKOUT_REC** %4, align 8, !dbg !4828
  %17 = bitcast %struct.KNOCKOUT_REC* %16 to i8*, !dbg !4828
  call void @g_free(i8* %17), !dbg !4829
  ret void, !dbg !4830
}

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #1

declare void @g_free(i8*) #1

declare void @signal_stop() #1

declare i32 @cmd_get_params(i8*, i8**, i32, ...) #1

declare i32 @g_strcmp0(i8*, i8*) #1

declare void @cmd_params_free(i8*) #1

declare i8* @recode_out(%struct._SERVER_REC*, i8*, i8*) #1

declare void @g_string_printf(%struct._GString*, i8*, ...) #1

declare void @irc_send_cmd_split(%struct._IRC_SERVER_REC*, i8*, i32, i32) #1

declare i8* @ascii_strup(i8*) #1

declare i8* @settings_get_str(i8*) #1

declare void @irc_server_purge_output(%struct._IRC_SERVER_REC*, i8*) #1

declare void @irc_send_cmdv(%struct._IRC_SERVER_REC*, i8*, ...) #1

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

declare i8* @module_check_cast_module(i8*, i32, i8*, i8*) #1

declare void @irc_send_cmd(%struct._IRC_SERVER_REC*, i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare %struct._SERVER_REC* @cmd_options_get_server(i8*, %struct._GHashTable*, %struct._SERVER_REC*) #1

declare i32 @g_ascii_strcasecmp(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i8* @get_redirect_nicklist(i8*, i32*) #0 !dbg !4831 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4835, metadata !889), !dbg !4836
  store i32* %1, i32** %5, align 8
  call void @llvm.dbg.declare(metadata i32** %5, metadata !4837, metadata !889), !dbg !4838
  call void @llvm.dbg.declare(metadata i8** %6, metadata !4839, metadata !889), !dbg !4840
  call void @llvm.dbg.declare(metadata i8** %7, metadata !4841, metadata !889), !dbg !4842
  %8 = load i8*, i8** %4, align 8, !dbg !4843
  %9 = load i8, i8* %8, align 1, !dbg !4845
  %10 = sext i8 %9 to i32, !dbg !4845
  %11 = icmp ne i32 %10, 33, !dbg !4846
  br i1 %11, label %12, label %19, !dbg !4847

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %4, align 8, !dbg !4848
  %14 = call i8* @strchr(i8* %13, i32 44) #6, !dbg !4850
  %15 = icmp eq i8* %14, null, !dbg !4851
  br i1 %15, label %16, label %19, !dbg !4852

; <label>:16:                                     ; preds = %12
  %17 = load i32*, i32** %5, align 8, !dbg !4853
  store i32 0, i32* %17, align 4, !dbg !4855
  %18 = load i8*, i8** %4, align 8, !dbg !4856
  store i8* %18, i8** %3, align 8, !dbg !4857
  br label %40, !dbg !4857

; <label>:19:                                     ; preds = %12, %2
  %20 = load i32*, i32** %5, align 8, !dbg !4858
  store i32 1, i32* %20, align 4, !dbg !4859
  %21 = load i8*, i8** %4, align 8, !dbg !4860
  %22 = load i8, i8* %21, align 1, !dbg !4861
  %23 = sext i8 %22 to i32, !dbg !4861
  %24 = icmp eq i32 %23, 33, !dbg !4862
  br i1 %24, label %25, label %28, !dbg !4861

; <label>:25:                                     ; preds = %19
  %26 = load i8*, i8** %4, align 8, !dbg !4863
  %27 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !4865
  br label %30, !dbg !4866

; <label>:28:                                     ; preds = %19
  %29 = load i8*, i8** %4, align 8, !dbg !4867
  br label %30, !dbg !4869

; <label>:30:                                     ; preds = %28, %25
  %31 = phi i8* [ %27, %25 ], [ %29, %28 ], !dbg !4870
  %32 = call noalias i8* @g_strdup(i8* %31), !dbg !4872
  store i8* %32, i8** %6, align 8, !dbg !4873
  %33 = load i8*, i8** %6, align 8, !dbg !4874
  %34 = call i8* @g_strdelimit(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.109, i32 0, i32 0), i8 signext 32), !dbg !4875
  %35 = load i8*, i8** %6, align 8, !dbg !4876
  %36 = load i8*, i8** %4, align 8, !dbg !4877
  %37 = call noalias i8* (i8*, ...) @g_strconcat(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.100, i32 0, i32 0), i8* %36, i8* null), !dbg !4878
  store i8* %37, i8** %7, align 8, !dbg !4879
  %38 = load i8*, i8** %6, align 8, !dbg !4880
  call void @g_free(i8* %38), !dbg !4881
  %39 = load i8*, i8** %7, align 8, !dbg !4882
  store i8* %39, i8** %3, align 8, !dbg !4883
  br label %40, !dbg !4883

; <label>:40:                                     ; preds = %30, %16
  %41 = load i8*, i8** %3, align 8, !dbg !4884
  ret i8* %41, !dbg !4884
}

declare noalias i8* @g_strconcat(i8*, ...) #1

declare void @server_redirect_event(%struct._IRC_SERVER_REC*, i8*, i32, i8*, i32, i8*, ...) #1

declare i32 @settings_get_bool(i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

declare i8* @g_strdelimit(i8*, i8*, i8 signext) #1

declare void @g_get_current_time(%struct._GTimeVal*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare void @irc_server_send_away(%struct._IRC_SERVER_REC*, i8*) #1

declare void @irc_send_cmd_now(%struct._IRC_SERVER_REC*, i8*) #1

declare %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC*, i8*) #1

declare void @g_hash_table_foreach(%struct._GHashTable*, void (i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @cmd_wall_hash(i8*, %struct._NICK_REC*, %struct._GSList**) #0 !dbg !4885 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._NICK_REC*, align 8
  %6 = alloca %struct._GSList**, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !4889, metadata !889), !dbg !4890
  store %struct._NICK_REC* %1, %struct._NICK_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %5, metadata !4891, metadata !889), !dbg !4892
  store %struct._GSList** %2, %struct._GSList*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList*** %6, metadata !4893, metadata !889), !dbg !4894
  %7 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !4895
  %8 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %7, i32 0, i32 7, !dbg !4897
  %9 = load i8, i8* %8, align 4, !dbg !4897
  %10 = lshr i8 %9, 3, !dbg !4897
  %11 = and i8 %10, 1, !dbg !4897
  %12 = zext i8 %11 to i32, !dbg !4897
  %13 = icmp ne i32 %12, 0, !dbg !4895
  br i1 %13, label %14, label %21, !dbg !4898

; <label>:14:                                     ; preds = %3
  %15 = load %struct._GSList**, %struct._GSList*** %6, align 8, !dbg !4899
  %16 = load %struct._GSList*, %struct._GSList** %15, align 8, !dbg !4901
  %17 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !4902
  %18 = bitcast %struct._NICK_REC* %17 to i8*, !dbg !4902
  %19 = call %struct._GSList* @g_slist_append(%struct._GSList* %16, i8* %18), !dbg !4903
  %20 = load %struct._GSList**, %struct._GSList*** %6, align 8, !dbg !4904
  store %struct._GSList* %19, %struct._GSList** %20, align 8, !dbg !4905
  br label %21, !dbg !4906

; <label>:21:                                     ; preds = %14, %3
  ret void, !dbg !4907
}

declare i8* @parse_special_string(i8*, %struct._SERVER_REC*, i8*, i8*, i32*, i32) #1

declare void @g_slist_free(%struct._GSList*) #1

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

declare noalias i8** @g_strsplit(i8*, i8*, i32) #1

declare noalias i8* @g_strjoinv(i8*, i8**) #1

declare void @g_strfreev(i8**) #1

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

declare i32 @parse_time_interval(i8*, i32*) #1

declare i32 @settings_get_time(i8*) #1

declare i8* @ban_get_masks(%struct._IRC_CHANNEL_REC*, i8*, i32) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare i8* @event_get_params(i8*, i32, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!756, !757}
!llvm.ident = !{!758}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !71, globals: !753)
!1 = !DIFile(filename: "line125-irc-commands.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10, !15, !24, !35, !56}
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
!36 = !DIFile(filename: "../../../src/core/commands.h", directory: "/home/lichi/Desktop/irssi/task1")
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
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !57, line: 46, size: 32, align: 32, elements: !58)
!57 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/lichi/Desktop/irssi/task1")
!58 = !{!59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70}
!59 = !DIEnumerator(name: "_ISupper", value: 256)
!60 = !DIEnumerator(name: "_ISlower", value: 512)
!61 = !DIEnumerator(name: "_ISalpha", value: 1024)
!62 = !DIEnumerator(name: "_ISdigit", value: 2048)
!63 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!64 = !DIEnumerator(name: "_ISspace", value: 8192)
!65 = !DIEnumerator(name: "_ISprint", value: 16384)
!66 = !DIEnumerator(name: "_ISgraph", value: 32768)
!67 = !DIEnumerator(name: "_ISblank", value: 1)
!68 = !DIEnumerator(name: "_IScntrl", value: 2)
!69 = !DIEnumerator(name: "_ISpunct", value: 4)
!70 = !DIEnumerator(name: "_ISalnum", value: 8)
!71 = !{!72, !81, !82, !89, !93, !96, !98, !399, !80, !389, !118, !694, !504, !597, !740, !79, !744, !124, !745}
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DISubroutineType(types: !75)
!75 = !{!76, !80}
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !77, line: 50, baseType: !78)
!77 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !77, line: 49, baseType: !79)
!79 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !77, line: 77, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !83, line: 9, baseType: !84)
!83 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DISubroutineType(types: !86)
!86 = !{null, !87, !87, !87, !87, !87, !87}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "GFunc", file: !77, line: 88, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !80, !80}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !77, line: 46, baseType: !95)
!95 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !100, line: 6, baseType: !101)
!100 = !DIFile(filename: "irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !102, line: 42, size: 39168, align: 64, elements: !103)
!102 = !DIFile(filename: "irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!103 = !{!104, !106, !107, !108, !344, !349, !350, !351, !352, !353, !354, !355, !356, !357, !361, !362, !366, !367, !368, !372, !377, !378, !379, !380, !381, !382, !383, !384, !391, !392, !393, !394, !395, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !737, !739}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !101, file: !105, line: 3, baseType: !79, size: 32, align: 32)
!105 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!106 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !101, file: !105, line: 4, baseType: !79, size: 32, align: 32, offset: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !101, file: !105, line: 6, baseType: !79, size: 32, align: 32, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !101, file: !105, line: 8, baseType: !109, size: 64, align: 64, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !100, line: 5, baseType: !111)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !102, line: 24, size: 2496, align: 64, elements: !112)
!112 = !{!113, !115, !116, !117, !119, !120, !121, !122, !123, !125, !126, !127, !128, !129, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !111, file: !114, line: 3, baseType: !79, size: 32, align: 32)
!114 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!115 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !111, file: !114, line: 4, baseType: !79, size: 32, align: 32, offset: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !111, file: !114, line: 6, baseType: !79, size: 32, align: 32, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !111, file: !114, line: 9, baseType: !118, size: 64, align: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !111, file: !114, line: 10, baseType: !79, size: 32, align: 32, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !111, file: !114, line: 11, baseType: !118, size: 64, align: 64, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !111, file: !114, line: 11, baseType: !118, size: 64, align: 64, offset: 320)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !111, file: !114, line: 11, baseType: !118, size: 64, align: 64, offset: 384)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !111, file: !114, line: 13, baseType: !124, size: 16, align: 16, offset: 448)
!124 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !111, file: !114, line: 14, baseType: !118, size: 64, align: 64, offset: 512)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !111, file: !114, line: 15, baseType: !118, size: 64, align: 64, offset: 576)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !111, file: !114, line: 16, baseType: !79, size: 32, align: 32, offset: 640)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !111, file: !114, line: 17, baseType: !118, size: 64, align: 64, offset: 704)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !111, file: !114, line: 19, baseType: !130, size: 64, align: 64, offset: 768)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !132, line: 99, baseType: !133)
!132 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!133 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !132, line: 99, flags: DIFlagFwdDecl)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !111, file: !114, line: 19, baseType: !130, size: 64, align: 64, offset: 832)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !111, file: !114, line: 21, baseType: !118, size: 64, align: 64, offset: 896)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !111, file: !114, line: 22, baseType: !118, size: 64, align: 64, offset: 960)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !111, file: !114, line: 23, baseType: !118, size: 64, align: 64, offset: 1024)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !111, file: !114, line: 24, baseType: !118, size: 64, align: 64, offset: 1088)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !111, file: !114, line: 26, baseType: !118, size: 64, align: 64, offset: 1152)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !111, file: !114, line: 27, baseType: !118, size: 64, align: 64, offset: 1216)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !111, file: !114, line: 28, baseType: !118, size: 64, align: 64, offset: 1280)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !111, file: !114, line: 29, baseType: !118, size: 64, align: 64, offset: 1344)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !111, file: !114, line: 30, baseType: !118, size: 64, align: 64, offset: 1408)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !111, file: !114, line: 31, baseType: !118, size: 64, align: 64, offset: 1472)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !111, file: !114, line: 32, baseType: !118, size: 64, align: 64, offset: 1536)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !111, file: !114, line: 33, baseType: !118, size: 64, align: 64, offset: 1600)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !111, file: !114, line: 35, baseType: !148, size: 64, align: 64, offset: 1664)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !150)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !151)
!151 = !{!152, !153, !289, !290, !295, !296, !297, !298, !299, !308, !309, !310, !314, !315, !316, !317, !318, !319, !320, !321}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !150, file: !4, line: 100, baseType: !78, size: 32, align: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !150, file: !4, line: 101, baseType: !154, size: 64, align: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64, align: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !156)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !157)
!157 = !{!158, !180, !186, !193, !197, !276, !280, !285}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !156, file: !4, line: 133, baseType: !159, size: 64, align: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64, align: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{!162, !148, !93, !163, !166, !167}
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !164, line: 66, baseType: !165)
!164 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!165 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64, align: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64, align: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !170, line: 42, baseType: !171)
!170 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !170, line: 44, size: 128, align: 64, elements: !172)
!172 = !{!173, !178, !179}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !171, file: !170, line: 46, baseType: !174, size: 32, align: 32)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !175, line: 36, baseType: !176)
!175 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !164, line: 45, baseType: !177)
!177 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !171, file: !170, line: 47, baseType: !78, size: 32, align: 32, offset: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !171, file: !170, line: 48, baseType: !93, size: 64, align: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !156, file: !4, line: 138, baseType: !181, size: 64, align: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, align: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{!162, !148, !184, !163, !166, !167}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64, align: 64)
!185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !156, file: !4, line: 143, baseType: !187, size: 64, align: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!162, !148, !190, !192, !167}
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !164, line: 51, baseType: !191)
!191 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !156, file: !4, line: 147, baseType: !194, size: 64, align: 64, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!162, !148, !167}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !156, file: !4, line: 149, baseType: !198, size: 64, align: 64, offset: 256)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!201, !148, !275}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !204)
!204 = !{!205, !206, !222, !251, !253, !257, !258, !259, !260, !268, !269, !270, !271}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !203, file: !16, line: 174, baseType: !80, size: 64, align: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !203, file: !16, line: 175, baseType: !207, size: 64, align: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !209)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !210)
!210 = !{!211, !215, !216}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !209, file: !16, line: 198, baseType: !212, size: 64, align: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{null, !80}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !209, file: !16, line: 199, baseType: !212, size: 64, align: 64, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !209, file: !16, line: 200, baseType: !217, size: 64, align: 64, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{null, !80, !201, !220, !221}
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !203, file: !16, line: 177, baseType: !223, size: 64, align: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, align: 64)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !226)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !227)
!227 = !{!228, !233, !237, !241, !245, !246}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !226, file: !16, line: 216, baseType: !229, size: 64, align: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!76, !201, !232}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !226, file: !16, line: 218, baseType: !234, size: 64, align: 64, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64, align: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!76, !201}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !226, file: !16, line: 219, baseType: !238, size: 64, align: 64, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!76, !201, !72, !80}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !226, file: !16, line: 222, baseType: !242, size: 64, align: 64, offset: 192)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{null, !201}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !226, file: !16, line: 226, baseType: !72, size: 64, align: 64, offset: 256)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !226, file: !16, line: 227, baseType: !247, size: 64, align: 64, offset: 320)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !248)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64, align: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{null}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !203, file: !16, line: 178, baseType: !252, size: 32, align: 32, offset: 192)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !77, line: 55, baseType: !177)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !203, file: !16, line: 180, baseType: !254, size: 64, align: 64, offset: 256)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64, align: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !256)
!256 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !203, file: !16, line: 182, baseType: !78, size: 32, align: 32, offset: 320)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !203, file: !16, line: 183, baseType: !252, size: 32, align: 32, offset: 352)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !203, file: !16, line: 184, baseType: !252, size: 32, align: 32, offset: 384)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !203, file: !16, line: 186, baseType: !261, size: 64, align: 64, offset: 448)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64, align: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !263, line: 37, baseType: !264)
!263 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !263, line: 39, size: 128, align: 64, elements: !265)
!265 = !{!266, !267}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !264, file: !263, line: 41, baseType: !80, size: 64, align: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !264, file: !263, line: 42, baseType: !261, size: 64, align: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !203, file: !16, line: 188, baseType: !201, size: 64, align: 64, offset: 512)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !203, file: !16, line: 189, baseType: !201, size: 64, align: 64, offset: 576)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !203, file: !16, line: 191, baseType: !118, size: 64, align: 64, offset: 640)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !203, file: !16, line: 193, baseType: !272, size: 64, align: 64, offset: 704)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64, align: 64)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !274)
!274 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !156, file: !4, line: 151, baseType: !277, size: 64, align: 64, offset: 320)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64, align: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{null, !148}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !156, file: !4, line: 152, baseType: !281, size: 64, align: 64, offset: 384)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64, align: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!162, !148, !284, !167}
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !156, file: !4, line: 155, baseType: !286, size: 64, align: 64, offset: 448)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64, align: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!284, !148}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !150, file: !4, line: 103, baseType: !93, size: 64, align: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !150, file: !4, line: 104, baseType: !291, size: 64, align: 64, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !292, line: 77, baseType: !293)
!292 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64, align: 64)
!294 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !292, line: 77, flags: DIFlagFwdDecl)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !150, file: !4, line: 105, baseType: !291, size: 64, align: 64, offset: 256)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !150, file: !4, line: 106, baseType: !93, size: 64, align: 64, offset: 320)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !150, file: !4, line: 107, baseType: !252, size: 32, align: 32, offset: 384)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !150, file: !4, line: 109, baseType: !163, size: 64, align: 64, offset: 448)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !150, file: !4, line: 110, baseType: !300, size: 64, align: 64, offset: 512)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !302, line: 39, baseType: !303)
!302 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !302, line: 41, size: 192, align: 64, elements: !304)
!304 = !{!305, !306, !307}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !303, file: !302, line: 43, baseType: !93, size: 64, align: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !303, file: !302, line: 44, baseType: !163, size: 64, align: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !303, file: !302, line: 45, baseType: !163, size: 64, align: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !150, file: !4, line: 111, baseType: !300, size: 64, align: 64, offset: 576)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !150, file: !4, line: 112, baseType: !300, size: 64, align: 64, offset: 640)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !150, file: !4, line: 113, baseType: !311, size: 48, align: 8, offset: 704)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 48, align: 8, elements: !312)
!312 = !{!313}
!313 = !DISubrange(count: 6)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !150, file: !4, line: 117, baseType: !252, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !150, file: !4, line: 118, baseType: !252, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !150, file: !4, line: 119, baseType: !252, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !150, file: !4, line: 120, baseType: !252, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !150, file: !4, line: 121, baseType: !252, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !150, file: !4, line: 122, baseType: !252, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !150, file: !4, line: 124, baseType: !80, size: 64, align: 64, offset: 768)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !150, file: !4, line: 125, baseType: !80, size: 64, align: 64, offset: 832)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !111, file: !114, line: 38, baseType: !177, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !111, file: !114, line: 39, baseType: !177, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !111, file: !114, line: 40, baseType: !177, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !111, file: !114, line: 41, baseType: !177, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !111, file: !114, line: 42, baseType: !177, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !111, file: !114, line: 43, baseType: !177, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !111, file: !114, line: 44, baseType: !177, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !111, file: !114, line: 45, baseType: !177, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !111, file: !114, line: 46, baseType: !118, size: 64, align: 64, offset: 1792)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !111, file: !114, line: 47, baseType: !118, size: 64, align: 64, offset: 1856)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !111, file: !102, line: 27, baseType: !118, size: 64, align: 64, offset: 1920)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !111, file: !102, line: 28, baseType: !118, size: 64, align: 64, offset: 1984)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !111, file: !102, line: 30, baseType: !79, size: 32, align: 32, offset: 2048)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !111, file: !102, line: 31, baseType: !118, size: 64, align: 64, offset: 2112)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !111, file: !102, line: 32, baseType: !118, size: 64, align: 64, offset: 2176)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !111, file: !102, line: 34, baseType: !79, size: 32, align: 32, offset: 2240)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !111, file: !102, line: 35, baseType: !79, size: 32, align: 32, offset: 2272)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !111, file: !102, line: 36, baseType: !79, size: 32, align: 32, offset: 2304)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !111, file: !102, line: 38, baseType: !79, size: 32, align: 32, offset: 2336)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !111, file: !102, line: 38, baseType: !79, size: 32, align: 32, offset: 2368)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !111, file: !102, line: 38, baseType: !79, size: 32, align: 32, offset: 2400)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !111, file: !102, line: 38, baseType: !79, size: 32, align: 32, offset: 2432)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !101, file: !105, line: 9, baseType: !345, size: 64, align: 64, offset: 192)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !346, line: 75, baseType: !347)
!346 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !348, line: 139, baseType: !191)
!348 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!349 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !101, file: !105, line: 10, baseType: !345, size: 64, align: 64, offset: 256)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !101, file: !105, line: 12, baseType: !118, size: 64, align: 64, offset: 320)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !101, file: !105, line: 13, baseType: !118, size: 64, align: 64, offset: 384)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !101, file: !105, line: 15, baseType: !177, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !101, file: !105, line: 16, baseType: !177, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !101, file: !105, line: 17, baseType: !177, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !101, file: !105, line: 18, baseType: !177, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !101, file: !105, line: 19, baseType: !177, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !101, file: !105, line: 21, baseType: !358, size: 64, align: 64, offset: 512)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !132, line: 102, baseType: !360)
!360 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !132, line: 102, flags: DIFlagFwdDecl)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !101, file: !105, line: 22, baseType: !79, size: 32, align: 32, offset: 576)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !101, file: !105, line: 25, baseType: !363, size: 128, align: 64, offset: 640)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 128, align: 64, elements: !364)
!364 = !{!365}
!365 = !DISubrange(count: 2)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !101, file: !105, line: 26, baseType: !79, size: 32, align: 32, offset: 768)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !101, file: !105, line: 27, baseType: !79, size: 32, align: 32, offset: 800)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !101, file: !105, line: 29, baseType: !369, size: 64, align: 64, offset: 832)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64, align: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !132, line: 103, baseType: !371)
!371 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !132, line: 103, flags: DIFlagFwdDecl)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !101, file: !105, line: 30, baseType: !373, size: 64, align: 64, offset: 896)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64, align: 64)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !375, line: 37, baseType: !376)
!375 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!376 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !375, line: 37, flags: DIFlagFwdDecl)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !101, file: !105, line: 32, baseType: !118, size: 64, align: 64, offset: 960)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !101, file: !105, line: 33, baseType: !118, size: 64, align: 64, offset: 1024)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !101, file: !105, line: 34, baseType: !118, size: 64, align: 64, offset: 1088)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !101, file: !105, line: 35, baseType: !177, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !101, file: !105, line: 36, baseType: !177, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !101, file: !105, line: 37, baseType: !177, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !101, file: !105, line: 38, baseType: !177, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !101, file: !105, line: 40, baseType: !385, size: 128, align: 64, offset: 1216)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !77, line: 504, baseType: !386)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !77, line: 506, size: 128, align: 64, elements: !387)
!387 = !{!388, !390}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !386, file: !77, line: 508, baseType: !389, size: 64, align: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !77, line: 48, baseType: !191)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !386, file: !77, line: 509, baseType: !389, size: 64, align: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !101, file: !105, line: 41, baseType: !345, size: 64, align: 64, offset: 1344)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !101, file: !105, line: 42, baseType: !79, size: 32, align: 32, offset: 1408)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !101, file: !105, line: 44, baseType: !261, size: 64, align: 64, offset: 1472)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !101, file: !105, line: 45, baseType: !261, size: 64, align: 64, offset: 1536)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !101, file: !105, line: 53, baseType: !396, size: 64, align: 64, offset: 1600)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64, align: 64)
!397 = !DISubroutineType(types: !398)
!398 = !{null, !399, !96, !79}
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64, align: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !132, line: 107, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !402, line: 30, size: 2240, align: 64, elements: !403)
!402 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!403 = !{!404, !405, !406, !407, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !483, !487, !491, !495, !500, !593, !620, !624}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !401, file: !105, line: 3, baseType: !79, size: 32, align: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !401, file: !105, line: 4, baseType: !79, size: 32, align: 32, offset: 32)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !401, file: !105, line: 6, baseType: !79, size: 32, align: 32, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !401, file: !105, line: 8, baseType: !408, size: 64, align: 64, offset: 128)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64, align: 64)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !132, line: 113, baseType: !410)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !402, line: 25, size: 1920, align: 64, elements: !411)
!411 = !{!412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !410, file: !114, line: 3, baseType: !79, size: 32, align: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !410, file: !114, line: 4, baseType: !79, size: 32, align: 32, offset: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !410, file: !114, line: 6, baseType: !79, size: 32, align: 32, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !410, file: !114, line: 9, baseType: !118, size: 64, align: 64, offset: 128)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !410, file: !114, line: 10, baseType: !79, size: 32, align: 32, offset: 192)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !410, file: !114, line: 11, baseType: !118, size: 64, align: 64, offset: 256)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !410, file: !114, line: 11, baseType: !118, size: 64, align: 64, offset: 320)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !410, file: !114, line: 11, baseType: !118, size: 64, align: 64, offset: 384)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !410, file: !114, line: 13, baseType: !124, size: 16, align: 16, offset: 448)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !410, file: !114, line: 14, baseType: !118, size: 64, align: 64, offset: 512)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !410, file: !114, line: 15, baseType: !118, size: 64, align: 64, offset: 576)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !410, file: !114, line: 16, baseType: !79, size: 32, align: 32, offset: 640)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !410, file: !114, line: 17, baseType: !118, size: 64, align: 64, offset: 704)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !410, file: !114, line: 19, baseType: !130, size: 64, align: 64, offset: 768)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !410, file: !114, line: 19, baseType: !130, size: 64, align: 64, offset: 832)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !410, file: !114, line: 21, baseType: !118, size: 64, align: 64, offset: 896)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !410, file: !114, line: 22, baseType: !118, size: 64, align: 64, offset: 960)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !410, file: !114, line: 23, baseType: !118, size: 64, align: 64, offset: 1024)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !410, file: !114, line: 24, baseType: !118, size: 64, align: 64, offset: 1088)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !410, file: !114, line: 26, baseType: !118, size: 64, align: 64, offset: 1152)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !410, file: !114, line: 27, baseType: !118, size: 64, align: 64, offset: 1216)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !410, file: !114, line: 28, baseType: !118, size: 64, align: 64, offset: 1280)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !410, file: !114, line: 29, baseType: !118, size: 64, align: 64, offset: 1344)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !410, file: !114, line: 30, baseType: !118, size: 64, align: 64, offset: 1408)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !410, file: !114, line: 31, baseType: !118, size: 64, align: 64, offset: 1472)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !410, file: !114, line: 32, baseType: !118, size: 64, align: 64, offset: 1536)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !410, file: !114, line: 33, baseType: !118, size: 64, align: 64, offset: 1600)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !410, file: !114, line: 35, baseType: !148, size: 64, align: 64, offset: 1664)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !410, file: !114, line: 38, baseType: !177, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !410, file: !114, line: 39, baseType: !177, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !410, file: !114, line: 40, baseType: !177, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !410, file: !114, line: 41, baseType: !177, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !410, file: !114, line: 42, baseType: !177, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !410, file: !114, line: 43, baseType: !177, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !410, file: !114, line: 44, baseType: !177, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !410, file: !114, line: 45, baseType: !177, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !410, file: !114, line: 46, baseType: !118, size: 64, align: 64, offset: 1792)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !410, file: !114, line: 47, baseType: !118, size: 64, align: 64, offset: 1856)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !401, file: !105, line: 9, baseType: !345, size: 64, align: 64, offset: 192)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !401, file: !105, line: 10, baseType: !345, size: 64, align: 64, offset: 256)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !401, file: !105, line: 12, baseType: !118, size: 64, align: 64, offset: 320)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !401, file: !105, line: 13, baseType: !118, size: 64, align: 64, offset: 384)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !401, file: !105, line: 15, baseType: !177, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !401, file: !105, line: 16, baseType: !177, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !401, file: !105, line: 17, baseType: !177, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !401, file: !105, line: 18, baseType: !177, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !401, file: !105, line: 19, baseType: !177, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !401, file: !105, line: 21, baseType: !358, size: 64, align: 64, offset: 512)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !401, file: !105, line: 22, baseType: !79, size: 32, align: 32, offset: 576)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !401, file: !105, line: 25, baseType: !363, size: 128, align: 64, offset: 640)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !401, file: !105, line: 26, baseType: !79, size: 32, align: 32, offset: 768)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !401, file: !105, line: 27, baseType: !79, size: 32, align: 32, offset: 800)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !401, file: !105, line: 29, baseType: !369, size: 64, align: 64, offset: 832)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !401, file: !105, line: 30, baseType: !373, size: 64, align: 64, offset: 896)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !401, file: !105, line: 32, baseType: !118, size: 64, align: 64, offset: 960)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !401, file: !105, line: 33, baseType: !118, size: 64, align: 64, offset: 1024)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !401, file: !105, line: 34, baseType: !118, size: 64, align: 64, offset: 1088)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !401, file: !105, line: 35, baseType: !177, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !401, file: !105, line: 36, baseType: !177, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !401, file: !105, line: 37, baseType: !177, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !401, file: !105, line: 38, baseType: !177, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !401, file: !105, line: 40, baseType: !385, size: 128, align: 64, offset: 1216)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !401, file: !105, line: 41, baseType: !345, size: 64, align: 64, offset: 1344)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !401, file: !105, line: 42, baseType: !79, size: 32, align: 32, offset: 1408)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !401, file: !105, line: 44, baseType: !261, size: 64, align: 64, offset: 1472)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !401, file: !105, line: 45, baseType: !261, size: 64, align: 64, offset: 1536)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !401, file: !105, line: 53, baseType: !396, size: 64, align: 64, offset: 1600)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !401, file: !105, line: 55, baseType: !480, size: 64, align: 64, offset: 1664)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64, align: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!79, !399, !95}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !401, file: !105, line: 57, baseType: !484, size: 64, align: 64, offset: 1728)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64, align: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!79, !399, !96}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !401, file: !105, line: 60, baseType: !488, size: 64, align: 64, offset: 1792)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64, align: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!96, !399}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !401, file: !105, line: 62, baseType: !492, size: 64, align: 64, offset: 1856)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64, align: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{null, !399, !96, !96, !79}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !401, file: !105, line: 65, baseType: !496, size: 64, align: 64, offset: 1920)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64, align: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!499, !399, !96, !96}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !401, file: !105, line: 69, baseType: !501, size: 64, align: 64, offset: 1984)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64, align: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!504, !399, !96}
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64, align: 64)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !132, line: 109, baseType: !506)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !507, line: 15, size: 1408, align: 64, elements: !508)
!507 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!508 = !{!509, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !544, !545, !547, !548, !549, !550, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !506, file: !510, line: 3, baseType: !79, size: 32, align: 32)
!510 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!511 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !506, file: !510, line: 4, baseType: !79, size: 32, align: 32, offset: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !506, file: !510, line: 5, baseType: !373, size: 64, align: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !506, file: !510, line: 7, baseType: !81, size: 64, align: 64, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !506, file: !510, line: 8, baseType: !399, size: 64, align: 64, offset: 192)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !506, file: !510, line: 9, baseType: !118, size: 64, align: 64, offset: 256)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !506, file: !510, line: 10, baseType: !118, size: 64, align: 64, offset: 320)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !506, file: !510, line: 11, baseType: !345, size: 64, align: 64, offset: 384)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !506, file: !510, line: 12, baseType: !79, size: 32, align: 32, offset: 448)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !506, file: !510, line: 13, baseType: !118, size: 64, align: 64, offset: 512)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !506, file: !510, line: 15, baseType: !521, size: 64, align: 64, offset: 576)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64, align: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{null, !524}
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64, align: 64)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !132, line: 108, baseType: !526)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !527, line: 5, size: 704, align: 64, elements: !528)
!527 = !DIFile(filename: "../../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!528 = !{!529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !526, file: !510, line: 3, baseType: !79, size: 32, align: 32)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !526, file: !510, line: 4, baseType: !79, size: 32, align: 32, offset: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !526, file: !510, line: 5, baseType: !373, size: 64, align: 64, offset: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !526, file: !510, line: 7, baseType: !81, size: 64, align: 64, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !526, file: !510, line: 8, baseType: !399, size: 64, align: 64, offset: 192)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !526, file: !510, line: 9, baseType: !118, size: 64, align: 64, offset: 256)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !526, file: !510, line: 10, baseType: !118, size: 64, align: 64, offset: 320)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !526, file: !510, line: 11, baseType: !345, size: 64, align: 64, offset: 384)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !526, file: !510, line: 12, baseType: !79, size: 32, align: 32, offset: 448)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !526, file: !510, line: 13, baseType: !118, size: 64, align: 64, offset: 512)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !526, file: !510, line: 15, baseType: !521, size: 64, align: 64, offset: 576)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !526, file: !510, line: 17, baseType: !541, size: 64, align: 64, offset: 640)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64, align: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!96, !524}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !506, file: !510, line: 17, baseType: !541, size: 64, align: 64, offset: 640)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !506, file: !546, line: 5, baseType: !118, size: 64, align: 64, offset: 704)
!546 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!547 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !506, file: !546, line: 6, baseType: !118, size: 64, align: 64, offset: 768)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !506, file: !546, line: 7, baseType: !345, size: 64, align: 64, offset: 832)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !506, file: !546, line: 9, baseType: !373, size: 64, align: 64, offset: 896)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !506, file: !546, line: 10, baseType: !551, size: 64, align: 64, offset: 960)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64, align: 64)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !132, line: 111, baseType: !553)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !554, line: 13, size: 576, align: 64, elements: !555)
!554 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!555 = !{!556, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !574, !575}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !553, file: !557, line: 3, baseType: !79, size: 32, align: 32)
!557 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!558 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !553, file: !557, line: 4, baseType: !79, size: 32, align: 32, offset: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !553, file: !557, line: 6, baseType: !345, size: 64, align: 64, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !553, file: !557, line: 8, baseType: !118, size: 64, align: 64, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !553, file: !557, line: 9, baseType: !118, size: 64, align: 64, offset: 192)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !553, file: !557, line: 10, baseType: !118, size: 64, align: 64, offset: 256)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !553, file: !557, line: 11, baseType: !79, size: 32, align: 32, offset: 320)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !553, file: !557, line: 14, baseType: !177, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !553, file: !557, line: 15, baseType: !177, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !553, file: !557, line: 18, baseType: !177, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !553, file: !557, line: 19, baseType: !177, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !553, file: !557, line: 20, baseType: !177, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !553, file: !557, line: 21, baseType: !177, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !553, file: !557, line: 22, baseType: !571, size: 64, align: 8, offset: 360)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 64, align: 8, elements: !572)
!572 = !{!573}
!573 = !DISubrange(count: 8)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !553, file: !557, line: 26, baseType: !81, size: 64, align: 64, offset: 448)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !553, file: !557, line: 28, baseType: !551, size: 64, align: 64, offset: 512)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !506, file: !546, line: 12, baseType: !177, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !506, file: !546, line: 13, baseType: !118, size: 64, align: 64, offset: 1088)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !506, file: !546, line: 14, baseType: !79, size: 32, align: 32, offset: 1152)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !506, file: !546, line: 15, baseType: !118, size: 64, align: 64, offset: 1216)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !506, file: !546, line: 17, baseType: !177, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !506, file: !546, line: 18, baseType: !177, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !506, file: !546, line: 19, baseType: !177, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !506, file: !546, line: 20, baseType: !177, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !506, file: !546, line: 22, baseType: !177, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !506, file: !546, line: 23, baseType: !177, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !506, file: !546, line: 24, baseType: !177, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !506, file: !546, line: 25, baseType: !177, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !506, file: !546, line: 26, baseType: !177, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !506, file: !546, line: 31, baseType: !590, size: 64, align: 64, offset: 1344)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64, align: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!118, !504}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !401, file: !105, line: 70, baseType: !594, size: 64, align: 64, offset: 2048)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64, align: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{!597, !399, !96}
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64, align: 64)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !132, line: 110, baseType: !599)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !600, line: 15, size: 960, align: 64, elements: !601)
!600 = !DIFile(filename: "../../../src/core/queries.h", directory: "/home/lichi/Desktop/irssi/task1")
!601 = !{!602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !616, !617, !618, !619}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !599, file: !510, line: 3, baseType: !79, size: 32, align: 32)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !599, file: !510, line: 4, baseType: !79, size: 32, align: 32, offset: 32)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !599, file: !510, line: 5, baseType: !373, size: 64, align: 64, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !599, file: !510, line: 7, baseType: !81, size: 64, align: 64, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !599, file: !510, line: 8, baseType: !399, size: 64, align: 64, offset: 192)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !599, file: !510, line: 9, baseType: !118, size: 64, align: 64, offset: 256)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !599, file: !510, line: 10, baseType: !118, size: 64, align: 64, offset: 320)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !599, file: !510, line: 11, baseType: !345, size: 64, align: 64, offset: 384)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !599, file: !510, line: 12, baseType: !79, size: 32, align: 32, offset: 448)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !599, file: !510, line: 13, baseType: !118, size: 64, align: 64, offset: 512)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !599, file: !510, line: 15, baseType: !521, size: 64, align: 64, offset: 576)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !599, file: !510, line: 17, baseType: !541, size: 64, align: 64, offset: 640)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !599, file: !615, line: 5, baseType: !118, size: 64, align: 64, offset: 704)
!615 = !DIFile(filename: "../../../src/core/query-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!616 = !DIDerivedType(tag: DW_TAG_member, name: "server_tag", scope: !599, file: !615, line: 6, baseType: !118, size: 64, align: 64, offset: 768)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "last_unread_msg", scope: !599, file: !615, line: 7, baseType: !345, size: 64, align: 64, offset: 832)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "unwanted", scope: !599, file: !615, line: 9, baseType: !177, size: 1, align: 32, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !599, file: !615, line: 11, baseType: !177, size: 1, align: 32, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !401, file: !105, line: 71, baseType: !621, size: 64, align: 64, offset: 2112)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64, align: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!79, !96, !96}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !401, file: !105, line: 73, baseType: !621, size: 64, align: 64, offset: 2176)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !101, file: !105, line: 55, baseType: !480, size: 64, align: 64, offset: 1664)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !101, file: !105, line: 57, baseType: !484, size: 64, align: 64, offset: 1728)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !101, file: !105, line: 60, baseType: !488, size: 64, align: 64, offset: 1792)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !101, file: !105, line: 62, baseType: !492, size: 64, align: 64, offset: 1856)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !101, file: !105, line: 65, baseType: !496, size: 64, align: 64, offset: 1920)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !101, file: !105, line: 69, baseType: !501, size: 64, align: 64, offset: 1984)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !101, file: !105, line: 70, baseType: !594, size: 64, align: 64, offset: 2048)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !101, file: !105, line: 71, baseType: !621, size: 64, align: 64, offset: 2112)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !101, file: !105, line: 73, baseType: !621, size: 64, align: 64, offset: 2176)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !101, file: !102, line: 46, baseType: !261, size: 64, align: 64, offset: 2240)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !101, file: !102, line: 47, baseType: !261, size: 64, align: 64, offset: 2304)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !101, file: !102, line: 48, baseType: !637, size: 64, align: 64, offset: 2368)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64, align: 64)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !100, line: 8, baseType: !639)
!639 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !100, line: 8, flags: DIFlagFwdDecl)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !101, file: !102, line: 49, baseType: !261, size: 64, align: 64, offset: 2432)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !101, file: !102, line: 51, baseType: !118, size: 64, align: 64, offset: 2496)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !101, file: !102, line: 53, baseType: !118, size: 64, align: 64, offset: 2560)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !101, file: !102, line: 54, baseType: !118, size: 64, align: 64, offset: 2624)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !101, file: !102, line: 55, baseType: !118, size: 64, align: 64, offset: 2688)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !101, file: !102, line: 56, baseType: !118, size: 64, align: 64, offset: 2752)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !101, file: !102, line: 57, baseType: !79, size: 32, align: 32, offset: 2816)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !101, file: !102, line: 59, baseType: !177, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !101, file: !102, line: 60, baseType: !177, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !101, file: !102, line: 62, baseType: !177, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !101, file: !102, line: 63, baseType: !177, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !101, file: !102, line: 64, baseType: !177, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !101, file: !102, line: 65, baseType: !177, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !101, file: !102, line: 66, baseType: !177, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !101, file: !102, line: 67, baseType: !177, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !101, file: !102, line: 68, baseType: !177, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !101, file: !102, line: 69, baseType: !177, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !101, file: !102, line: 70, baseType: !177, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !101, file: !102, line: 71, baseType: !177, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !101, file: !102, line: 72, baseType: !177, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !101, file: !102, line: 74, baseType: !79, size: 32, align: 32, offset: 2880)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !101, file: !102, line: 75, baseType: !79, size: 32, align: 32, offset: 2912)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !101, file: !102, line: 76, baseType: !79, size: 32, align: 32, offset: 2944)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !101, file: !102, line: 77, baseType: !79, size: 32, align: 32, offset: 2976)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !101, file: !102, line: 79, baseType: !373, size: 64, align: 64, offset: 3008)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !101, file: !102, line: 80, baseType: !261, size: 64, align: 64, offset: 3072)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !101, file: !102, line: 81, baseType: !261, size: 64, align: 64, offset: 3136)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !101, file: !102, line: 83, baseType: !300, size: 64, align: 64, offset: 3200)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !101, file: !102, line: 84, baseType: !252, size: 32, align: 32, offset: 3264)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !101, file: !102, line: 87, baseType: !79, size: 32, align: 32, offset: 3296)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !101, file: !102, line: 91, baseType: !261, size: 64, align: 64, offset: 3328)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !101, file: !102, line: 92, baseType: !385, size: 128, align: 64, offset: 3392)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !101, file: !102, line: 93, baseType: !385, size: 128, align: 64, offset: 3520)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !101, file: !102, line: 95, baseType: !79, size: 32, align: 32, offset: 3648)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !101, file: !102, line: 96, baseType: !79, size: 32, align: 32, offset: 3680)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !101, file: !102, line: 97, baseType: !79, size: 32, align: 32, offset: 3712)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !101, file: !102, line: 100, baseType: !261, size: 64, align: 64, offset: 3776)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !101, file: !102, line: 103, baseType: !261, size: 64, align: 64, offset: 3840)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !101, file: !102, line: 106, baseType: !261, size: 64, align: 64, offset: 3904)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !101, file: !102, line: 108, baseType: !373, size: 64, align: 64, offset: 3968)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !101, file: !102, line: 109, baseType: !261, size: 64, align: 64, offset: 4032)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !101, file: !102, line: 111, baseType: !261, size: 64, align: 64, offset: 4096)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !101, file: !102, line: 114, baseType: !81, size: 64, align: 64, offset: 4160)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !101, file: !102, line: 116, baseType: !373, size: 64, align: 64, offset: 4224)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !101, file: !102, line: 117, baseType: !685, size: 32768, align: 64, offset: 4288)
!685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 32768, align: 64, elements: !735)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !687, line: 10, size: 128, align: 64, elements: !688)
!687 = !DIFile(filename: "modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!688 = !{!689, !734}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !686, file: !687, line: 11, baseType: !690, size: 64, align: 64)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64, align: 64)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !687, line: 7, baseType: !692)
!692 = !DISubroutineType(types: !693)
!693 = !{null, !694, !96, !95, !95, !118, !300}
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64, align: 64)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !100, line: 7, baseType: !696)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !697, line: 15, size: 1600, align: 64, elements: !698)
!697 = !DIFile(filename: "irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!698 = !{!699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !696, file: !510, line: 3, baseType: !79, size: 32, align: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !696, file: !510, line: 4, baseType: !79, size: 32, align: 32, offset: 32)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !696, file: !510, line: 5, baseType: !373, size: 64, align: 64, offset: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !696, file: !510, line: 7, baseType: !81, size: 64, align: 64, offset: 128)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !696, file: !510, line: 8, baseType: !98, size: 64, align: 64, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !696, file: !510, line: 9, baseType: !118, size: 64, align: 64, offset: 256)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !696, file: !510, line: 10, baseType: !118, size: 64, align: 64, offset: 320)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !696, file: !510, line: 11, baseType: !345, size: 64, align: 64, offset: 384)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !696, file: !510, line: 12, baseType: !79, size: 32, align: 32, offset: 448)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !696, file: !510, line: 13, baseType: !118, size: 64, align: 64, offset: 512)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !696, file: !510, line: 15, baseType: !521, size: 64, align: 64, offset: 576)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !696, file: !510, line: 17, baseType: !541, size: 64, align: 64, offset: 640)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !696, file: !546, line: 5, baseType: !118, size: 64, align: 64, offset: 704)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !696, file: !546, line: 6, baseType: !118, size: 64, align: 64, offset: 768)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !696, file: !546, line: 7, baseType: !345, size: 64, align: 64, offset: 832)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !696, file: !546, line: 9, baseType: !373, size: 64, align: 64, offset: 896)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !696, file: !546, line: 10, baseType: !551, size: 64, align: 64, offset: 960)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !696, file: !546, line: 12, baseType: !177, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !696, file: !546, line: 13, baseType: !118, size: 64, align: 64, offset: 1088)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !696, file: !546, line: 14, baseType: !79, size: 32, align: 32, offset: 1152)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !696, file: !546, line: 15, baseType: !118, size: 64, align: 64, offset: 1216)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !696, file: !546, line: 17, baseType: !177, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !696, file: !546, line: 18, baseType: !177, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !696, file: !546, line: 19, baseType: !177, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !696, file: !546, line: 20, baseType: !177, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !696, file: !546, line: 22, baseType: !177, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !696, file: !546, line: 23, baseType: !177, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !696, file: !546, line: 24, baseType: !177, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !696, file: !546, line: 25, baseType: !177, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !696, file: !546, line: 26, baseType: !177, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !696, file: !546, line: 31, baseType: !590, size: 64, align: 64, offset: 1344)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !696, file: !697, line: 18, baseType: !261, size: 64, align: 64, offset: 1408)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !696, file: !697, line: 20, baseType: !345, size: 64, align: 64, offset: 1472)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !696, file: !697, line: 21, baseType: !79, size: 32, align: 32, offset: 1536)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !696, file: !697, line: 22, baseType: !79, size: 32, align: 32, offset: 1568)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !686, file: !687, line: 12, baseType: !95, size: 8, align: 8, offset: 64)
!735 = !{!736}
!736 = !DISubrange(count: 256)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !101, file: !102, line: 118, baseType: !738, size: 2048, align: 8, offset: 37056)
!738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 2048, align: 8, elements: !735)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !101, file: !102, line: 120, baseType: !621, size: 64, align: 64, offset: 39104)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHFunc", file: !77, line: 91, baseType: !741)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64, align: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{null, !80, !80, !80}
!744 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64, align: 64)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "KNOCKOUT_REC", file: !747, line: 57, baseType: !748)
!747 = !DIFile(filename: "irc-commands.c", directory: "/home/lichi/Desktop/irssi/task1")
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !747, line: 53, size: 192, align: 64, elements: !749)
!749 = !{!750, !751, !752}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !748, file: !747, line: 54, baseType: !694, size: 64, align: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "ban", scope: !748, file: !747, line: 55, baseType: !118, size: 64, align: 64, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "unban_time", scope: !748, file: !747, line: 56, baseType: !345, size: 64, align: 64, offset: 128)
!753 = !{!754, !755}
!754 = distinct !DIGlobalVariable(name: "tmpstr", scope: !0, file: !747, line: 59, type: !300, isLocal: true, isDefinition: true, variable: %struct._GString** @tmpstr)
!755 = distinct !DIGlobalVariable(name: "knockout_tag", scope: !0, file: !747, line: 60, type: !79, isLocal: true, isDefinition: true, variable: i32* @knockout_tag)
!756 = !{i32 2, !"Dwarf Version", i32 4}
!757 = !{i32 2, !"Debug Info Version", i32 3}
!758 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!759 = distinct !DISubprogram(name: "irc_commands_init", scope: !747, file: !747, line: 965, type: !249, isLocal: false, isDefinition: true, scopeLine: 966, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !760)
!760 = !{}
!761 = !DILocation(line: 967, column: 11, scope: !759)
!762 = !DILocation(line: 967, column: 9, scope: !759)
!763 = !DILocation(line: 969, column: 2, scope: !759)
!764 = !DILocation(line: 970, column: 2, scope: !759)
!765 = !DILocation(line: 971, column: 2, scope: !759)
!766 = !DILocation(line: 972, column: 2, scope: !759)
!767 = !DILocation(line: 973, column: 2, scope: !759)
!768 = !DILocation(line: 975, column: 17, scope: !759)
!769 = !DILocation(line: 975, column: 15, scope: !759)
!770 = !DILocation(line: 977, column: 46, scope: !759)
!771 = !DILocation(line: 977, column: 2, scope: !772)
!772 = !DILexicalBlockFile(scope: !759, file: !747, discriminator: 1)
!773 = !DILocation(line: 978, column: 44, scope: !759)
!774 = !DILocation(line: 978, column: 2, scope: !772)
!775 = !DILocation(line: 979, column: 45, scope: !759)
!776 = !DILocation(line: 979, column: 2, scope: !772)
!777 = !DILocation(line: 980, column: 44, scope: !759)
!778 = !DILocation(line: 980, column: 2, scope: !772)
!779 = !DILocation(line: 981, column: 44, scope: !759)
!780 = !DILocation(line: 981, column: 2, scope: !772)
!781 = !DILocation(line: 982, column: 45, scope: !759)
!782 = !DILocation(line: 982, column: 2, scope: !772)
!783 = !DILocation(line: 983, column: 46, scope: !759)
!784 = !DILocation(line: 983, column: 2, scope: !772)
!785 = !DILocation(line: 984, column: 44, scope: !759)
!786 = !DILocation(line: 984, column: 2, scope: !772)
!787 = !DILocation(line: 985, column: 43, scope: !759)
!788 = !DILocation(line: 985, column: 2, scope: !772)
!789 = !DILocation(line: 986, column: 45, scope: !759)
!790 = !DILocation(line: 986, column: 2, scope: !772)
!791 = !DILocation(line: 987, column: 44, scope: !759)
!792 = !DILocation(line: 987, column: 2, scope: !772)
!793 = !DILocation(line: 988, column: 45, scope: !759)
!794 = !DILocation(line: 988, column: 2, scope: !772)
!795 = !DILocation(line: 989, column: 46, scope: !759)
!796 = !DILocation(line: 989, column: 2, scope: !772)
!797 = !DILocation(line: 990, column: 44, scope: !759)
!798 = !DILocation(line: 990, column: 2, scope: !772)
!799 = !DILocation(line: 992, column: 44, scope: !759)
!800 = !DILocation(line: 992, column: 2, scope: !772)
!801 = !DILocation(line: 993, column: 44, scope: !759)
!802 = !DILocation(line: 993, column: 2, scope: !772)
!803 = !DILocation(line: 995, column: 44, scope: !759)
!804 = !DILocation(line: 995, column: 2, scope: !772)
!805 = !DILocation(line: 996, column: 46, scope: !759)
!806 = !DILocation(line: 996, column: 2, scope: !772)
!807 = !DILocation(line: 998, column: 45, scope: !759)
!808 = !DILocation(line: 998, column: 2, scope: !772)
!809 = !DILocation(line: 1000, column: 44, scope: !759)
!810 = !DILocation(line: 1000, column: 2, scope: !772)
!811 = !DILocation(line: 1002, column: 45, scope: !759)
!812 = !DILocation(line: 1002, column: 2, scope: !772)
!813 = !DILocation(line: 1004, column: 45, scope: !759)
!814 = !DILocation(line: 1004, column: 2, scope: !772)
!815 = !DILocation(line: 1006, column: 46, scope: !759)
!816 = !DILocation(line: 1006, column: 2, scope: !772)
!817 = !DILocation(line: 1008, column: 43, scope: !759)
!818 = !DILocation(line: 1008, column: 2, scope: !772)
!819 = !DILocation(line: 1010, column: 44, scope: !759)
!820 = !DILocation(line: 1010, column: 2, scope: !772)
!821 = !DILocation(line: 1012, column: 46, scope: !759)
!822 = !DILocation(line: 1012, column: 2, scope: !772)
!823 = !DILocation(line: 1014, column: 45, scope: !759)
!824 = !DILocation(line: 1014, column: 2, scope: !772)
!825 = !DILocation(line: 1016, column: 44, scope: !759)
!826 = !DILocation(line: 1016, column: 2, scope: !772)
!827 = !DILocation(line: 1018, column: 45, scope: !759)
!828 = !DILocation(line: 1018, column: 2, scope: !772)
!829 = !DILocation(line: 1020, column: 47, scope: !759)
!830 = !DILocation(line: 1020, column: 2, scope: !772)
!831 = !DILocation(line: 1022, column: 48, scope: !759)
!832 = !DILocation(line: 1022, column: 2, scope: !772)
!833 = !DILocation(line: 1025, column: 47, scope: !759)
!834 = !DILocation(line: 1025, column: 2, scope: !772)
!835 = !DILocation(line: 1026, column: 49, scope: !759)
!836 = !DILocation(line: 1026, column: 2, scope: !772)
!837 = !DILocation(line: 1027, column: 48, scope: !759)
!838 = !DILocation(line: 1027, column: 2, scope: !772)
!839 = !DILocation(line: 1029, column: 46, scope: !759)
!840 = !DILocation(line: 1029, column: 2, scope: !772)
!841 = !DILocation(line: 1031, column: 43, scope: !759)
!842 = !DILocation(line: 1031, column: 2, scope: !772)
!843 = !DILocation(line: 1033, column: 44, scope: !759)
!844 = !DILocation(line: 1033, column: 2, scope: !772)
!845 = !DILocation(line: 1034, column: 44, scope: !759)
!846 = !DILocation(line: 1034, column: 2, scope: !772)
!847 = !DILocation(line: 1036, column: 47, scope: !759)
!848 = !DILocation(line: 1036, column: 2, scope: !772)
!849 = !DILocation(line: 1038, column: 45, scope: !759)
!850 = !DILocation(line: 1038, column: 2, scope: !772)
!851 = !DILocation(line: 1040, column: 48, scope: !759)
!852 = !DILocation(line: 1040, column: 2, scope: !772)
!853 = !DILocation(line: 1041, column: 45, scope: !759)
!854 = !DILocation(line: 1041, column: 2, scope: !772)
!855 = !DILocation(line: 1042, column: 44, scope: !759)
!856 = !DILocation(line: 1042, column: 2, scope: !772)
!857 = !DILocation(line: 1043, column: 44, scope: !759)
!858 = !DILocation(line: 1043, column: 2, scope: !772)
!859 = !DILocation(line: 1045, column: 47, scope: !759)
!860 = !DILocation(line: 1045, column: 2, scope: !772)
!861 = !DILocation(line: 1046, column: 47, scope: !759)
!862 = !DILocation(line: 1046, column: 2, scope: !772)
!863 = !DILocation(line: 1047, column: 48, scope: !759)
!864 = !DILocation(line: 1047, column: 2, scope: !772)
!865 = !DILocation(line: 1048, column: 52, scope: !759)
!866 = !DILocation(line: 1048, column: 2, scope: !772)
!867 = !DILocation(line: 1050, column: 2, scope: !759)
!868 = !DILocation(line: 1051, column: 2, scope: !759)
!869 = !DILocation(line: 1052, column: 2, scope: !759)
!870 = !DILocation(line: 1053, column: 2, scope: !759)
!871 = !DILocation(line: 1054, column: 2, scope: !759)
!872 = !DILocation(line: 1055, column: 2, scope: !759)
!873 = !DILocation(line: 1057, column: 2, scope: !759)
!874 = !DILocation(line: 1058, column: 2, scope: !759)
!875 = !DILocation(line: 1059, column: 2, scope: !759)
!876 = !DILocation(line: 1060, column: 2, scope: !759)
!877 = !DILocation(line: 1061, column: 2, scope: !759)
!878 = !DILocation(line: 1062, column: 1, scope: !759)
!879 = distinct !DISubprogram(name: "knockout_timeout", scope: !747, file: !747, line: 758, type: !880, isLocal: true, isDefinition: true, scopeLine: 759, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !760)
!880 = !DISubroutineType(types: !881)
!881 = !{!79}
!882 = !DILocation(line: 760, column: 18, scope: !879)
!883 = !DILocation(line: 760, column: 2, scope: !879)
!884 = !DILocation(line: 761, column: 2, scope: !879)
!885 = distinct !DISubprogram(name: "cmd_notice", scope: !747, file: !747, line: 63, type: !886, isLocal: true, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !760)
!886 = !DISubroutineType(types: !887)
!887 = !{null, !96, !98, !524}
!888 = !DILocalVariable(name: "data", arg: 1, scope: !885, file: !747, line: 63, type: !96)
!889 = !DIExpression()
!890 = !DILocation(line: 63, column: 36, scope: !885)
!891 = !DILocalVariable(name: "server", arg: 2, scope: !885, file: !747, line: 63, type: !98)
!892 = !DILocation(line: 63, column: 58, scope: !885)
!893 = !DILocalVariable(name: "item", arg: 3, scope: !885, file: !747, line: 64, type: !524)
!894 = !DILocation(line: 64, column: 37, scope: !885)
!895 = !DILocalVariable(name: "target", scope: !885, file: !747, line: 66, type: !96)
!896 = !DILocation(line: 66, column: 14, scope: !885)
!897 = !DILocalVariable(name: "msg", scope: !885, file: !747, line: 66, type: !96)
!898 = !DILocation(line: 66, column: 23, scope: !885)
!899 = !DILocalVariable(name: "recoded", scope: !885, file: !747, line: 67, type: !118)
!900 = !DILocation(line: 67, column: 8, scope: !885)
!901 = !DILocalVariable(name: "free_arg", scope: !885, file: !747, line: 68, type: !81)
!902 = !DILocation(line: 68, column: 8, scope: !885)
!903 = !DILocation(line: 70, column: 2, scope: !885)
!904 = distinct !{!904, !903}
!905 = !DILocation(line: 70, column: 11, scope: !906)
!906 = !DILexicalBlockFile(scope: !907, file: !747, discriminator: 1)
!907 = distinct !DILexicalBlock(scope: !908, file: !747, line: 70, column: 11)
!908 = distinct !DILexicalBlock(scope: !885, file: !747, line: 70, column: 5)
!909 = !DILocation(line: 70, column: 18, scope: !906)
!910 = !DILocation(line: 70, column: 1, scope: !906)
!911 = !DILocation(line: 70, column: 85, scope: !912)
!912 = !DILexicalBlockFile(scope: !907, file: !747, discriminator: 2)
!913 = !DILocation(line: 70, column: 67, scope: !912)
!914 = !DILocation(line: 70, column: 52, scope: !912)
!915 = !DILocation(line: 70, column: 51, scope: !912)
!916 = !DILocation(line: 70, column: 26, scope: !917)
!917 = !DILexicalBlockFile(scope: !912, file: !747, discriminator: 12)
!918 = !DILocation(line: 70, column: 7, scope: !912)
!919 = !DILocation(line: 70, column: 11, scope: !912)
!920 = !DILocation(line: 70, column: 6, scope: !921)
!921 = !DILexicalBlockFile(scope: !907, file: !747, discriminator: 3)
!922 = !DILocation(line: 70, column: 11, scope: !923)
!923 = !DILexicalBlockFile(scope: !908, file: !747, discriminator: 4)
!924 = !DILocation(line: 70, column: 28, scope: !925)
!925 = !DILexicalBlockFile(scope: !907, file: !747, discriminator: 5)
!926 = !DILocation(line: 70, column: 40, scope: !927)
!927 = !DILexicalBlockFile(scope: !928, file: !747, discriminator: 6)
!928 = distinct !DILexicalBlock(scope: !908, file: !747, line: 70, column: 40)
!929 = !DILocation(line: 70, column: 47, scope: !927)
!930 = !DILocation(line: 70, column: 1, scope: !927)
!931 = !DILocation(line: 70, column: 6, scope: !932)
!932 = !DILexicalBlockFile(scope: !928, file: !747, discriminator: 7)
!933 = !DILocation(line: 70, column: 15, scope: !932)
!934 = !DILocation(line: 70, column: 5, scope: !932)
!935 = !DILocation(line: 70, column: 40, scope: !932)
!936 = !DILocation(line: 70, column: 26, scope: !937)
!937 = !DILexicalBlockFile(scope: !928, file: !747, discriminator: 8)
!938 = distinct !{!938, !939}
!939 = !DILocation(line: 70, column: 26, scope: !928)
!940 = !DILocation(line: 70, column: 31, scope: !941)
!941 = !DILexicalBlockFile(scope: !942, file: !747, discriminator: 9)
!942 = distinct !DILexicalBlock(scope: !928, file: !747, line: 70, column: 29)
!943 = !DILocation(line: 70, column: 109, scope: !944)
!944 = !DILexicalBlockFile(scope: !941, file: !747, discriminator: 13)
!945 = !DILocation(line: 70, column: 124, scope: !941)
!946 = !DILocation(line: 70, column: 132, scope: !947)
!947 = !DILexicalBlockFile(scope: !942, file: !747, discriminator: 10)
!948 = !DILocation(line: 70, column: 145, scope: !949)
!949 = !DILexicalBlockFile(scope: !908, file: !747, discriminator: 11)
!950 = !DILocation(line: 72, column: 22, scope: !951)
!951 = distinct !DILexicalBlock(scope: !885, file: !747, line: 72, column: 6)
!952 = !DILocation(line: 72, column: 7, scope: !951)
!953 = !DILocation(line: 72, column: 6, scope: !885)
!954 = !DILocation(line: 74, column: 3, scope: !951)
!955 = !DILocation(line: 75, column: 16, scope: !956)
!956 = distinct !DILexicalBlock(scope: !885, file: !747, line: 75, column: 6)
!957 = !DILocation(line: 75, column: 6, scope: !956)
!958 = !DILocation(line: 75, column: 29, scope: !956)
!959 = !DILocation(line: 75, column: 6, scope: !885)
!960 = !DILocation(line: 76, column: 12, scope: !956)
!961 = !DILocation(line: 76, column: 17, scope: !956)
!962 = !DILocation(line: 76, column: 12, scope: !963)
!963 = !DILexicalBlockFile(scope: !956, file: !747, discriminator: 1)
!964 = !DILocation(line: 76, column: 35, scope: !965)
!965 = !DILexicalBlockFile(scope: !956, file: !747, discriminator: 2)
!966 = !DILocation(line: 76, column: 42, scope: !965)
!967 = !DILocation(line: 76, column: 53, scope: !965)
!968 = !DILocation(line: 76, column: 34, scope: !965)
!969 = !DILocation(line: 76, column: 12, scope: !965)
!970 = !DILocation(line: 76, column: 12, scope: !971)
!971 = !DILexicalBlockFile(scope: !956, file: !747, discriminator: 3)
!972 = !DILocation(line: 76, column: 10, scope: !971)
!973 = !DILocation(line: 76, column: 3, scope: !971)
!974 = !DILocation(line: 77, column: 6, scope: !975)
!975 = distinct !DILexicalBlock(scope: !885, file: !747, line: 77, column: 6)
!976 = !DILocation(line: 77, column: 13, scope: !975)
!977 = !DILocation(line: 77, column: 20, scope: !975)
!978 = !DILocation(line: 77, column: 24, scope: !979)
!979 = !DILexicalBlockFile(scope: !975, file: !747, discriminator: 1)
!980 = !DILocation(line: 77, column: 23, scope: !979)
!981 = !DILocation(line: 77, column: 31, scope: !979)
!982 = !DILocation(line: 77, column: 39, scope: !979)
!983 = !DILocation(line: 77, column: 43, scope: !984)
!984 = !DILexicalBlockFile(scope: !975, file: !747, discriminator: 2)
!985 = !DILocation(line: 77, column: 42, scope: !984)
!986 = !DILocation(line: 77, column: 47, scope: !984)
!987 = !DILocation(line: 77, column: 6, scope: !984)
!988 = !DILocation(line: 78, column: 3, scope: !975)
!989 = distinct !{!989, !988}
!990 = !DILocation(line: 78, column: 24, scope: !991)
!991 = !DILexicalBlockFile(scope: !992, file: !747, discriminator: 1)
!992 = distinct !DILexicalBlock(scope: !975, file: !747, line: 78, column: 6)
!993 = !DILocation(line: 78, column: 8, scope: !991)
!994 = !DILocation(line: 78, column: 35, scope: !991)
!995 = distinct !{!995, !996}
!996 = !DILocation(line: 78, column: 35, scope: !992)
!997 = !DILocation(line: 78, column: 40, scope: !998)
!998 = !DILexicalBlockFile(scope: !999, file: !747, discriminator: 2)
!999 = distinct !DILexicalBlock(scope: !992, file: !747, line: 78, column: 38)
!1000 = !DILocation(line: 78, column: 122, scope: !1001)
!1001 = !DILexicalBlockFile(scope: !998, file: !747, discriminator: 5)
!1002 = !DILocation(line: 78, column: 137, scope: !998)
!1003 = !DILocation(line: 78, column: 158, scope: !1004)
!1004 = !DILexicalBlockFile(scope: !992, file: !747, discriminator: 3)
!1005 = !DILocation(line: 78, column: 158, scope: !1006)
!1006 = !DILexicalBlockFile(scope: !992, file: !747, discriminator: 4)
!1007 = !DILocation(line: 80, column: 57, scope: !885)
!1008 = !DILocation(line: 80, column: 39, scope: !885)
!1009 = !DILocation(line: 80, column: 24, scope: !885)
!1010 = !DILocation(line: 80, column: 36, scope: !885)
!1011 = !DILocation(line: 80, column: 41, scope: !885)
!1012 = !DILocation(line: 80, column: 12, scope: !1013)
!1013 = !DILexicalBlockFile(scope: !885, file: !747, discriminator: 1)
!1014 = !DILocation(line: 80, column: 10, scope: !885)
!1015 = !DILocation(line: 81, column: 18, scope: !885)
!1016 = !DILocation(line: 81, column: 43, scope: !885)
!1017 = !DILocation(line: 81, column: 51, scope: !885)
!1018 = !DILocation(line: 81, column: 2, scope: !885)
!1019 = !DILocation(line: 82, column: 9, scope: !885)
!1020 = !DILocation(line: 82, column: 2, scope: !885)
!1021 = !DILocation(line: 84, column: 21, scope: !885)
!1022 = !DILocation(line: 84, column: 29, scope: !885)
!1023 = !DILocation(line: 84, column: 37, scope: !885)
!1024 = !DILocation(line: 84, column: 45, scope: !885)
!1025 = !DILocation(line: 84, column: 53, scope: !885)
!1026 = !DILocation(line: 84, column: 2, scope: !885)
!1027 = !DILocation(line: 86, column: 18, scope: !885)
!1028 = !DILocation(line: 86, column: 2, scope: !885)
!1029 = !DILocation(line: 87, column: 1, scope: !885)
!1030 = !DILocation(line: 87, column: 1, scope: !1013)
!1031 = distinct !DISubprogram(name: "cmd_ctcp", scope: !747, file: !747, line: 90, type: !886, isLocal: true, isDefinition: true, scopeLine: 92, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !760)
!1032 = !DILocalVariable(name: "data", arg: 1, scope: !1031, file: !747, line: 90, type: !96)
!1033 = !DILocation(line: 90, column: 34, scope: !1031)
!1034 = !DILocalVariable(name: "server", arg: 2, scope: !1031, file: !747, line: 90, type: !98)
!1035 = !DILocation(line: 90, column: 56, scope: !1031)
!1036 = !DILocalVariable(name: "item", arg: 3, scope: !1031, file: !747, line: 91, type: !524)
!1037 = !DILocation(line: 91, column: 35, scope: !1031)
!1038 = !DILocalVariable(name: "target", scope: !1031, file: !747, line: 93, type: !96)
!1039 = !DILocation(line: 93, column: 14, scope: !1031)
!1040 = !DILocalVariable(name: "ctcpcmd", scope: !1031, file: !747, line: 94, type: !118)
!1041 = !DILocation(line: 94, column: 8, scope: !1031)
!1042 = !DILocalVariable(name: "ctcpdata", scope: !1031, file: !747, line: 94, type: !118)
!1043 = !DILocation(line: 94, column: 18, scope: !1031)
!1044 = !DILocalVariable(name: "free_arg", scope: !1031, file: !747, line: 95, type: !81)
!1045 = !DILocation(line: 95, column: 8, scope: !1031)
!1046 = !DILocation(line: 97, column: 2, scope: !1031)
!1047 = distinct !{!1047, !1046}
!1048 = !DILocation(line: 97, column: 11, scope: !1049)
!1049 = !DILexicalBlockFile(scope: !1050, file: !747, discriminator: 1)
!1050 = distinct !DILexicalBlock(scope: !1051, file: !747, line: 97, column: 11)
!1051 = distinct !DILexicalBlock(scope: !1031, file: !747, line: 97, column: 5)
!1052 = !DILocation(line: 97, column: 18, scope: !1049)
!1053 = !DILocation(line: 97, column: 1, scope: !1049)
!1054 = !DILocation(line: 97, column: 85, scope: !1055)
!1055 = !DILexicalBlockFile(scope: !1050, file: !747, discriminator: 2)
!1056 = !DILocation(line: 97, column: 67, scope: !1055)
!1057 = !DILocation(line: 97, column: 52, scope: !1055)
!1058 = !DILocation(line: 97, column: 51, scope: !1055)
!1059 = !DILocation(line: 97, column: 26, scope: !1060)
!1060 = !DILexicalBlockFile(scope: !1055, file: !747, discriminator: 12)
!1061 = !DILocation(line: 97, column: 7, scope: !1055)
!1062 = !DILocation(line: 97, column: 11, scope: !1055)
!1063 = !DILocation(line: 97, column: 6, scope: !1064)
!1064 = !DILexicalBlockFile(scope: !1050, file: !747, discriminator: 3)
!1065 = !DILocation(line: 97, column: 11, scope: !1066)
!1066 = !DILexicalBlockFile(scope: !1051, file: !747, discriminator: 4)
!1067 = !DILocation(line: 97, column: 28, scope: !1068)
!1068 = !DILexicalBlockFile(scope: !1050, file: !747, discriminator: 5)
!1069 = !DILocation(line: 97, column: 40, scope: !1070)
!1070 = !DILexicalBlockFile(scope: !1071, file: !747, discriminator: 6)
!1071 = distinct !DILexicalBlock(scope: !1051, file: !747, line: 97, column: 40)
!1072 = !DILocation(line: 97, column: 47, scope: !1070)
!1073 = !DILocation(line: 97, column: 1, scope: !1070)
!1074 = !DILocation(line: 97, column: 6, scope: !1075)
!1075 = !DILexicalBlockFile(scope: !1071, file: !747, discriminator: 7)
!1076 = !DILocation(line: 97, column: 15, scope: !1075)
!1077 = !DILocation(line: 97, column: 5, scope: !1075)
!1078 = !DILocation(line: 97, column: 40, scope: !1075)
!1079 = !DILocation(line: 97, column: 26, scope: !1080)
!1080 = !DILexicalBlockFile(scope: !1071, file: !747, discriminator: 8)
!1081 = distinct !{!1081, !1082}
!1082 = !DILocation(line: 97, column: 26, scope: !1071)
!1083 = !DILocation(line: 97, column: 31, scope: !1084)
!1084 = !DILexicalBlockFile(scope: !1085, file: !747, discriminator: 9)
!1085 = distinct !DILexicalBlock(scope: !1071, file: !747, line: 97, column: 29)
!1086 = !DILocation(line: 97, column: 109, scope: !1087)
!1087 = !DILexicalBlockFile(scope: !1084, file: !747, discriminator: 13)
!1088 = !DILocation(line: 97, column: 124, scope: !1084)
!1089 = !DILocation(line: 97, column: 132, scope: !1090)
!1090 = !DILexicalBlockFile(scope: !1085, file: !747, discriminator: 10)
!1091 = !DILocation(line: 97, column: 145, scope: !1092)
!1092 = !DILexicalBlockFile(scope: !1051, file: !747, discriminator: 11)
!1093 = !DILocation(line: 99, column: 22, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1031, file: !747, line: 99, column: 6)
!1095 = !DILocation(line: 99, column: 7, scope: !1094)
!1096 = !DILocation(line: 99, column: 6, scope: !1031)
!1097 = !DILocation(line: 101, column: 3, scope: !1094)
!1098 = !DILocation(line: 102, column: 16, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1031, file: !747, line: 102, column: 6)
!1100 = !DILocation(line: 102, column: 6, scope: !1099)
!1101 = !DILocation(line: 102, column: 29, scope: !1099)
!1102 = !DILocation(line: 102, column: 6, scope: !1031)
!1103 = !DILocation(line: 103, column: 12, scope: !1099)
!1104 = !DILocation(line: 103, column: 17, scope: !1099)
!1105 = !DILocation(line: 103, column: 12, scope: !1106)
!1106 = !DILexicalBlockFile(scope: !1099, file: !747, discriminator: 1)
!1107 = !DILocation(line: 103, column: 35, scope: !1108)
!1108 = !DILexicalBlockFile(scope: !1099, file: !747, discriminator: 2)
!1109 = !DILocation(line: 103, column: 42, scope: !1108)
!1110 = !DILocation(line: 103, column: 53, scope: !1108)
!1111 = !DILocation(line: 103, column: 34, scope: !1108)
!1112 = !DILocation(line: 103, column: 12, scope: !1108)
!1113 = !DILocation(line: 103, column: 12, scope: !1114)
!1114 = !DILexicalBlockFile(scope: !1099, file: !747, discriminator: 3)
!1115 = !DILocation(line: 103, column: 10, scope: !1114)
!1116 = !DILocation(line: 103, column: 3, scope: !1114)
!1117 = !DILocation(line: 104, column: 6, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1031, file: !747, line: 104, column: 6)
!1119 = !DILocation(line: 104, column: 13, scope: !1118)
!1120 = !DILocation(line: 104, column: 20, scope: !1118)
!1121 = !DILocation(line: 104, column: 24, scope: !1122)
!1122 = !DILexicalBlockFile(scope: !1118, file: !747, discriminator: 1)
!1123 = !DILocation(line: 104, column: 23, scope: !1122)
!1124 = !DILocation(line: 104, column: 31, scope: !1122)
!1125 = !DILocation(line: 104, column: 39, scope: !1122)
!1126 = !DILocation(line: 104, column: 43, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1118, file: !747, discriminator: 2)
!1128 = !DILocation(line: 104, column: 42, scope: !1127)
!1129 = !DILocation(line: 104, column: 51, scope: !1127)
!1130 = !DILocation(line: 104, column: 6, scope: !1127)
!1131 = !DILocation(line: 105, column: 3, scope: !1118)
!1132 = distinct !{!1132, !1131}
!1133 = !DILocation(line: 105, column: 24, scope: !1134)
!1134 = !DILexicalBlockFile(scope: !1135, file: !747, discriminator: 1)
!1135 = distinct !DILexicalBlock(scope: !1118, file: !747, line: 105, column: 6)
!1136 = !DILocation(line: 105, column: 8, scope: !1134)
!1137 = !DILocation(line: 105, column: 35, scope: !1134)
!1138 = distinct !{!1138, !1139}
!1139 = !DILocation(line: 105, column: 35, scope: !1135)
!1140 = !DILocation(line: 105, column: 40, scope: !1141)
!1141 = !DILexicalBlockFile(scope: !1142, file: !747, discriminator: 2)
!1142 = distinct !DILexicalBlock(scope: !1135, file: !747, line: 105, column: 38)
!1143 = !DILocation(line: 105, column: 122, scope: !1144)
!1144 = !DILexicalBlockFile(scope: !1141, file: !747, discriminator: 5)
!1145 = !DILocation(line: 105, column: 137, scope: !1141)
!1146 = !DILocation(line: 105, column: 158, scope: !1147)
!1147 = !DILexicalBlockFile(scope: !1135, file: !747, discriminator: 3)
!1148 = !DILocation(line: 105, column: 158, scope: !1149)
!1149 = !DILexicalBlockFile(scope: !1135, file: !747, discriminator: 4)
!1150 = !DILocation(line: 107, column: 14, scope: !1031)
!1151 = !DILocation(line: 107, column: 2, scope: !1031)
!1152 = !DILocation(line: 108, column: 7, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1031, file: !747, line: 108, column: 6)
!1154 = !DILocation(line: 108, column: 6, scope: !1153)
!1155 = !DILocation(line: 108, column: 16, scope: !1153)
!1156 = !DILocation(line: 108, column: 6, scope: !1031)
!1157 = !DILocation(line: 109, column: 19, scope: !1153)
!1158 = !DILocation(line: 109, column: 53, scope: !1153)
!1159 = !DILocation(line: 109, column: 61, scope: !1153)
!1160 = !DILocation(line: 109, column: 3, scope: !1153)
!1161 = !DILocalVariable(name: "recoded", scope: !1162, file: !747, line: 111, type: !118)
!1162 = distinct !DILexicalBlock(scope: !1153, file: !747, line: 110, column: 7)
!1163 = !DILocation(line: 111, column: 9, scope: !1162)
!1164 = !DILocation(line: 113, column: 58, scope: !1162)
!1165 = !DILocation(line: 113, column: 40, scope: !1162)
!1166 = !DILocation(line: 113, column: 25, scope: !1162)
!1167 = !DILocation(line: 113, column: 37, scope: !1162)
!1168 = !DILocation(line: 113, column: 47, scope: !1162)
!1169 = !DILocation(line: 113, column: 13, scope: !1170)
!1170 = !DILexicalBlockFile(scope: !1162, file: !747, discriminator: 1)
!1171 = !DILocation(line: 113, column: 11, scope: !1162)
!1172 = !DILocation(line: 114, column: 19, scope: !1162)
!1173 = !DILocation(line: 114, column: 56, scope: !1162)
!1174 = !DILocation(line: 114, column: 64, scope: !1162)
!1175 = !DILocation(line: 114, column: 73, scope: !1162)
!1176 = !DILocation(line: 114, column: 3, scope: !1162)
!1177 = !DILocation(line: 115, column: 10, scope: !1162)
!1178 = !DILocation(line: 115, column: 3, scope: !1162)
!1179 = !DILocation(line: 118, column: 21, scope: !1031)
!1180 = !DILocation(line: 118, column: 29, scope: !1031)
!1181 = !DILocation(line: 118, column: 37, scope: !1031)
!1182 = !DILocation(line: 118, column: 45, scope: !1031)
!1183 = !DILocation(line: 118, column: 53, scope: !1031)
!1184 = !DILocation(line: 118, column: 2, scope: !1031)
!1185 = !DILocation(line: 120, column: 18, scope: !1031)
!1186 = !DILocation(line: 120, column: 2, scope: !1031)
!1187 = !DILocation(line: 121, column: 1, scope: !1031)
!1188 = !DILocation(line: 121, column: 1, scope: !1189)
!1189 = !DILexicalBlockFile(scope: !1031, file: !747, discriminator: 1)
!1190 = distinct !DISubprogram(name: "cmd_nctcp", scope: !747, file: !747, line: 124, type: !886, isLocal: true, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !760)
!1191 = !DILocalVariable(name: "data", arg: 1, scope: !1190, file: !747, line: 124, type: !96)
!1192 = !DILocation(line: 124, column: 35, scope: !1190)
!1193 = !DILocalVariable(name: "server", arg: 2, scope: !1190, file: !747, line: 124, type: !98)
!1194 = !DILocation(line: 124, column: 57, scope: !1190)
!1195 = !DILocalVariable(name: "item", arg: 3, scope: !1190, file: !747, line: 125, type: !524)
!1196 = !DILocation(line: 125, column: 36, scope: !1190)
!1197 = !DILocalVariable(name: "target", scope: !1190, file: !747, line: 127, type: !96)
!1198 = !DILocation(line: 127, column: 14, scope: !1190)
!1199 = !DILocalVariable(name: "ctcpcmd", scope: !1190, file: !747, line: 128, type: !118)
!1200 = !DILocation(line: 128, column: 8, scope: !1190)
!1201 = !DILocalVariable(name: "ctcpdata", scope: !1190, file: !747, line: 128, type: !118)
!1202 = !DILocation(line: 128, column: 18, scope: !1190)
!1203 = !DILocalVariable(name: "recoded", scope: !1190, file: !747, line: 128, type: !118)
!1204 = !DILocation(line: 128, column: 29, scope: !1190)
!1205 = !DILocalVariable(name: "free_arg", scope: !1190, file: !747, line: 129, type: !81)
!1206 = !DILocation(line: 129, column: 8, scope: !1190)
!1207 = !DILocation(line: 131, column: 2, scope: !1190)
!1208 = distinct !{!1208, !1207}
!1209 = !DILocation(line: 131, column: 11, scope: !1210)
!1210 = !DILexicalBlockFile(scope: !1211, file: !747, discriminator: 1)
!1211 = distinct !DILexicalBlock(scope: !1212, file: !747, line: 131, column: 11)
!1212 = distinct !DILexicalBlock(scope: !1190, file: !747, line: 131, column: 5)
!1213 = !DILocation(line: 131, column: 18, scope: !1210)
!1214 = !DILocation(line: 131, column: 1, scope: !1210)
!1215 = !DILocation(line: 131, column: 85, scope: !1216)
!1216 = !DILexicalBlockFile(scope: !1211, file: !747, discriminator: 2)
!1217 = !DILocation(line: 131, column: 67, scope: !1216)
!1218 = !DILocation(line: 131, column: 52, scope: !1216)
!1219 = !DILocation(line: 131, column: 51, scope: !1216)
!1220 = !DILocation(line: 131, column: 26, scope: !1221)
!1221 = !DILexicalBlockFile(scope: !1216, file: !747, discriminator: 12)
!1222 = !DILocation(line: 131, column: 7, scope: !1216)
!1223 = !DILocation(line: 131, column: 11, scope: !1216)
!1224 = !DILocation(line: 131, column: 6, scope: !1225)
!1225 = !DILexicalBlockFile(scope: !1211, file: !747, discriminator: 3)
!1226 = !DILocation(line: 131, column: 11, scope: !1227)
!1227 = !DILexicalBlockFile(scope: !1212, file: !747, discriminator: 4)
!1228 = !DILocation(line: 131, column: 28, scope: !1229)
!1229 = !DILexicalBlockFile(scope: !1211, file: !747, discriminator: 5)
!1230 = !DILocation(line: 131, column: 40, scope: !1231)
!1231 = !DILexicalBlockFile(scope: !1232, file: !747, discriminator: 6)
!1232 = distinct !DILexicalBlock(scope: !1212, file: !747, line: 131, column: 40)
!1233 = !DILocation(line: 131, column: 47, scope: !1231)
!1234 = !DILocation(line: 131, column: 1, scope: !1231)
!1235 = !DILocation(line: 131, column: 6, scope: !1236)
!1236 = !DILexicalBlockFile(scope: !1232, file: !747, discriminator: 7)
!1237 = !DILocation(line: 131, column: 15, scope: !1236)
!1238 = !DILocation(line: 131, column: 5, scope: !1236)
!1239 = !DILocation(line: 131, column: 40, scope: !1236)
!1240 = !DILocation(line: 131, column: 26, scope: !1241)
!1241 = !DILexicalBlockFile(scope: !1232, file: !747, discriminator: 8)
!1242 = distinct !{!1242, !1243}
!1243 = !DILocation(line: 131, column: 26, scope: !1232)
!1244 = !DILocation(line: 131, column: 31, scope: !1245)
!1245 = !DILexicalBlockFile(scope: !1246, file: !747, discriminator: 9)
!1246 = distinct !DILexicalBlock(scope: !1232, file: !747, line: 131, column: 29)
!1247 = !DILocation(line: 131, column: 109, scope: !1248)
!1248 = !DILexicalBlockFile(scope: !1245, file: !747, discriminator: 13)
!1249 = !DILocation(line: 131, column: 124, scope: !1245)
!1250 = !DILocation(line: 131, column: 132, scope: !1251)
!1251 = !DILexicalBlockFile(scope: !1246, file: !747, discriminator: 10)
!1252 = !DILocation(line: 131, column: 145, scope: !1253)
!1253 = !DILexicalBlockFile(scope: !1212, file: !747, discriminator: 11)
!1254 = !DILocation(line: 133, column: 22, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1190, file: !747, line: 133, column: 6)
!1256 = !DILocation(line: 133, column: 7, scope: !1255)
!1257 = !DILocation(line: 133, column: 6, scope: !1190)
!1258 = !DILocation(line: 135, column: 3, scope: !1255)
!1259 = !DILocation(line: 136, column: 16, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1190, file: !747, line: 136, column: 6)
!1261 = !DILocation(line: 136, column: 6, scope: !1260)
!1262 = !DILocation(line: 136, column: 29, scope: !1260)
!1263 = !DILocation(line: 136, column: 6, scope: !1190)
!1264 = !DILocation(line: 137, column: 12, scope: !1260)
!1265 = !DILocation(line: 137, column: 17, scope: !1260)
!1266 = !DILocation(line: 137, column: 12, scope: !1267)
!1267 = !DILexicalBlockFile(scope: !1260, file: !747, discriminator: 1)
!1268 = !DILocation(line: 137, column: 35, scope: !1269)
!1269 = !DILexicalBlockFile(scope: !1260, file: !747, discriminator: 2)
!1270 = !DILocation(line: 137, column: 42, scope: !1269)
!1271 = !DILocation(line: 137, column: 53, scope: !1269)
!1272 = !DILocation(line: 137, column: 34, scope: !1269)
!1273 = !DILocation(line: 137, column: 12, scope: !1269)
!1274 = !DILocation(line: 137, column: 12, scope: !1275)
!1275 = !DILexicalBlockFile(scope: !1260, file: !747, discriminator: 3)
!1276 = !DILocation(line: 137, column: 10, scope: !1275)
!1277 = !DILocation(line: 137, column: 3, scope: !1275)
!1278 = !DILocation(line: 138, column: 6, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1190, file: !747, line: 138, column: 6)
!1280 = !DILocation(line: 138, column: 13, scope: !1279)
!1281 = !DILocation(line: 138, column: 20, scope: !1279)
!1282 = !DILocation(line: 138, column: 24, scope: !1283)
!1283 = !DILexicalBlockFile(scope: !1279, file: !747, discriminator: 1)
!1284 = !DILocation(line: 138, column: 23, scope: !1283)
!1285 = !DILocation(line: 138, column: 31, scope: !1283)
!1286 = !DILocation(line: 138, column: 39, scope: !1283)
!1287 = !DILocation(line: 138, column: 43, scope: !1288)
!1288 = !DILexicalBlockFile(scope: !1279, file: !747, discriminator: 2)
!1289 = !DILocation(line: 138, column: 42, scope: !1288)
!1290 = !DILocation(line: 138, column: 51, scope: !1288)
!1291 = !DILocation(line: 138, column: 6, scope: !1288)
!1292 = !DILocation(line: 139, column: 3, scope: !1279)
!1293 = distinct !{!1293, !1292}
!1294 = !DILocation(line: 139, column: 24, scope: !1295)
!1295 = !DILexicalBlockFile(scope: !1296, file: !747, discriminator: 1)
!1296 = distinct !DILexicalBlock(scope: !1279, file: !747, line: 139, column: 6)
!1297 = !DILocation(line: 139, column: 8, scope: !1295)
!1298 = !DILocation(line: 139, column: 35, scope: !1295)
!1299 = distinct !{!1299, !1300}
!1300 = !DILocation(line: 139, column: 35, scope: !1296)
!1301 = !DILocation(line: 139, column: 40, scope: !1302)
!1302 = !DILexicalBlockFile(scope: !1303, file: !747, discriminator: 2)
!1303 = distinct !DILexicalBlock(scope: !1296, file: !747, line: 139, column: 38)
!1304 = !DILocation(line: 139, column: 122, scope: !1305)
!1305 = !DILexicalBlockFile(scope: !1302, file: !747, discriminator: 5)
!1306 = !DILocation(line: 139, column: 137, scope: !1302)
!1307 = !DILocation(line: 139, column: 158, scope: !1308)
!1308 = !DILexicalBlockFile(scope: !1296, file: !747, discriminator: 3)
!1309 = !DILocation(line: 139, column: 158, scope: !1310)
!1310 = !DILexicalBlockFile(scope: !1296, file: !747, discriminator: 4)
!1311 = !DILocation(line: 141, column: 14, scope: !1190)
!1312 = !DILocation(line: 141, column: 2, scope: !1190)
!1313 = !DILocation(line: 142, column: 57, scope: !1190)
!1314 = !DILocation(line: 142, column: 39, scope: !1190)
!1315 = !DILocation(line: 142, column: 24, scope: !1190)
!1316 = !DILocation(line: 142, column: 36, scope: !1190)
!1317 = !DILocation(line: 142, column: 46, scope: !1190)
!1318 = !DILocation(line: 142, column: 12, scope: !1319)
!1319 = !DILexicalBlockFile(scope: !1190, file: !747, discriminator: 1)
!1320 = !DILocation(line: 142, column: 10, scope: !1190)
!1321 = !DILocation(line: 143, column: 18, scope: !1190)
!1322 = !DILocation(line: 143, column: 54, scope: !1190)
!1323 = !DILocation(line: 143, column: 62, scope: !1190)
!1324 = !DILocation(line: 143, column: 71, scope: !1190)
!1325 = !DILocation(line: 143, column: 2, scope: !1190)
!1326 = !DILocation(line: 144, column: 9, scope: !1190)
!1327 = !DILocation(line: 144, column: 2, scope: !1190)
!1328 = !DILocation(line: 146, column: 21, scope: !1190)
!1329 = !DILocation(line: 146, column: 29, scope: !1190)
!1330 = !DILocation(line: 146, column: 37, scope: !1190)
!1331 = !DILocation(line: 146, column: 45, scope: !1190)
!1332 = !DILocation(line: 146, column: 53, scope: !1190)
!1333 = !DILocation(line: 146, column: 2, scope: !1190)
!1334 = !DILocation(line: 148, column: 18, scope: !1190)
!1335 = !DILocation(line: 148, column: 2, scope: !1190)
!1336 = !DILocation(line: 149, column: 1, scope: !1190)
!1337 = !DILocation(line: 149, column: 1, scope: !1319)
!1338 = distinct !DISubprogram(name: "cmd_part", scope: !747, file: !747, line: 152, type: !886, isLocal: true, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !760)
!1339 = !DILocalVariable(name: "data", arg: 1, scope: !1338, file: !747, line: 152, type: !96)
!1340 = !DILocation(line: 152, column: 34, scope: !1338)
!1341 = !DILocalVariable(name: "server", arg: 2, scope: !1338, file: !747, line: 152, type: !98)
!1342 = !DILocation(line: 152, column: 56, scope: !1338)
!1343 = !DILocalVariable(name: "item", arg: 3, scope: !1338, file: !747, line: 153, type: !524)
!1344 = !DILocation(line: 153, column: 35, scope: !1338)
!1345 = !DILocalVariable(name: "channame", scope: !1338, file: !747, line: 155, type: !118)
!1346 = !DILocation(line: 155, column: 8, scope: !1338)
!1347 = !DILocalVariable(name: "msg", scope: !1338, file: !747, line: 155, type: !118)
!1348 = !DILocation(line: 155, column: 19, scope: !1338)
!1349 = !DILocalVariable(name: "recoded", scope: !1338, file: !747, line: 156, type: !118)
!1350 = !DILocation(line: 156, column: 8, scope: !1338)
!1351 = !DILocalVariable(name: "free_arg", scope: !1338, file: !747, line: 157, type: !81)
!1352 = !DILocation(line: 157, column: 8, scope: !1338)
!1353 = !DILocation(line: 159, column: 2, scope: !1338)
!1354 = distinct !{!1354, !1353}
!1355 = !DILocation(line: 159, column: 11, scope: !1356)
!1356 = !DILexicalBlockFile(scope: !1357, file: !747, discriminator: 1)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !747, line: 159, column: 11)
!1358 = distinct !DILexicalBlock(scope: !1338, file: !747, line: 159, column: 5)
!1359 = !DILocation(line: 159, column: 18, scope: !1356)
!1360 = !DILocation(line: 159, column: 1, scope: !1356)
!1361 = !DILocation(line: 159, column: 85, scope: !1362)
!1362 = !DILexicalBlockFile(scope: !1357, file: !747, discriminator: 2)
!1363 = !DILocation(line: 159, column: 67, scope: !1362)
!1364 = !DILocation(line: 159, column: 52, scope: !1362)
!1365 = !DILocation(line: 159, column: 51, scope: !1362)
!1366 = !DILocation(line: 159, column: 26, scope: !1367)
!1367 = !DILexicalBlockFile(scope: !1362, file: !747, discriminator: 12)
!1368 = !DILocation(line: 159, column: 7, scope: !1362)
!1369 = !DILocation(line: 159, column: 11, scope: !1362)
!1370 = !DILocation(line: 159, column: 6, scope: !1371)
!1371 = !DILexicalBlockFile(scope: !1357, file: !747, discriminator: 3)
!1372 = !DILocation(line: 159, column: 11, scope: !1373)
!1373 = !DILexicalBlockFile(scope: !1358, file: !747, discriminator: 4)
!1374 = !DILocation(line: 159, column: 28, scope: !1375)
!1375 = !DILexicalBlockFile(scope: !1357, file: !747, discriminator: 5)
!1376 = !DILocation(line: 159, column: 40, scope: !1377)
!1377 = !DILexicalBlockFile(scope: !1378, file: !747, discriminator: 6)
!1378 = distinct !DILexicalBlock(scope: !1358, file: !747, line: 159, column: 40)
!1379 = !DILocation(line: 159, column: 47, scope: !1377)
!1380 = !DILocation(line: 159, column: 1, scope: !1377)
!1381 = !DILocation(line: 159, column: 6, scope: !1382)
!1382 = !DILexicalBlockFile(scope: !1378, file: !747, discriminator: 7)
!1383 = !DILocation(line: 159, column: 15, scope: !1382)
!1384 = !DILocation(line: 159, column: 5, scope: !1382)
!1385 = !DILocation(line: 159, column: 40, scope: !1382)
!1386 = !DILocation(line: 159, column: 26, scope: !1387)
!1387 = !DILexicalBlockFile(scope: !1378, file: !747, discriminator: 8)
!1388 = distinct !{!1388, !1389}
!1389 = !DILocation(line: 159, column: 26, scope: !1378)
!1390 = !DILocation(line: 159, column: 31, scope: !1391)
!1391 = !DILexicalBlockFile(scope: !1392, file: !747, discriminator: 9)
!1392 = distinct !DILexicalBlock(scope: !1378, file: !747, line: 159, column: 29)
!1393 = !DILocation(line: 159, column: 109, scope: !1394)
!1394 = !DILexicalBlockFile(scope: !1391, file: !747, discriminator: 13)
!1395 = !DILocation(line: 159, column: 124, scope: !1391)
!1396 = !DILocation(line: 159, column: 132, scope: !1397)
!1397 = !DILexicalBlockFile(scope: !1392, file: !747, discriminator: 10)
!1398 = !DILocation(line: 159, column: 145, scope: !1399)
!1399 = !DILexicalBlockFile(scope: !1358, file: !747, discriminator: 11)
!1400 = !DILocation(line: 161, column: 22, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1338, file: !747, line: 161, column: 6)
!1402 = !DILocation(line: 162, column: 34, scope: !1401)
!1403 = !DILocation(line: 161, column: 7, scope: !1401)
!1404 = !DILocation(line: 161, column: 6, scope: !1338)
!1405 = !DILocation(line: 163, column: 3, scope: !1401)
!1406 = !DILocation(line: 164, column: 7, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1338, file: !747, line: 164, column: 6)
!1408 = !DILocation(line: 164, column: 6, scope: !1407)
!1409 = !DILocation(line: 164, column: 16, scope: !1407)
!1410 = !DILocation(line: 164, column: 6, scope: !1338)
!1411 = !DILocation(line: 164, column: 25, scope: !1412)
!1412 = !DILexicalBlockFile(scope: !1407, file: !747, discriminator: 1)
!1413 = distinct !{!1413, !1414}
!1414 = !DILocation(line: 164, column: 25, scope: !1407)
!1415 = !DILocation(line: 164, column: 46, scope: !1416)
!1416 = !DILexicalBlockFile(scope: !1417, file: !747, discriminator: 2)
!1417 = distinct !DILexicalBlock(scope: !1407, file: !747, line: 164, column: 28)
!1418 = !DILocation(line: 164, column: 30, scope: !1416)
!1419 = !DILocation(line: 164, column: 57, scope: !1416)
!1420 = distinct !{!1420, !1421}
!1421 = !DILocation(line: 164, column: 57, scope: !1417)
!1422 = !DILocation(line: 164, column: 62, scope: !1423)
!1423 = !DILexicalBlockFile(scope: !1424, file: !747, discriminator: 3)
!1424 = distinct !DILexicalBlock(scope: !1417, file: !747, line: 164, column: 60)
!1425 = !DILocation(line: 164, column: 144, scope: !1426)
!1426 = !DILexicalBlockFile(scope: !1423, file: !747, discriminator: 6)
!1427 = !DILocation(line: 164, column: 159, scope: !1423)
!1428 = !DILocation(line: 164, column: 180, scope: !1429)
!1429 = !DILexicalBlockFile(scope: !1417, file: !747, discriminator: 4)
!1430 = !DILocation(line: 164, column: 180, scope: !1431)
!1431 = !DILexicalBlockFile(scope: !1417, file: !747, discriminator: 5)
!1432 = !DILocation(line: 166, column: 7, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1338, file: !747, line: 166, column: 6)
!1434 = !DILocation(line: 166, column: 6, scope: !1433)
!1435 = !DILocation(line: 166, column: 11, scope: !1433)
!1436 = !DILocation(line: 166, column: 6, scope: !1338)
!1437 = !DILocation(line: 166, column: 35, scope: !1438)
!1438 = !DILexicalBlockFile(scope: !1433, file: !747, discriminator: 1)
!1439 = !DILocation(line: 166, column: 24, scope: !1438)
!1440 = !DILocation(line: 166, column: 20, scope: !1438)
!1441 = !DILocation(line: 168, column: 6, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1338, file: !747, line: 168, column: 6)
!1443 = !DILocation(line: 168, column: 14, scope: !1442)
!1444 = !DILocation(line: 168, column: 23, scope: !1442)
!1445 = !DILocation(line: 168, column: 6, scope: !1338)
!1446 = !DILocation(line: 169, column: 27, scope: !1442)
!1447 = !DILocation(line: 169, column: 35, scope: !1442)
!1448 = !DILocation(line: 169, column: 3, scope: !1442)
!1449 = !DILocation(line: 171, column: 7, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1338, file: !747, line: 171, column: 6)
!1451 = !DILocation(line: 171, column: 6, scope: !1450)
!1452 = !DILocation(line: 171, column: 11, scope: !1450)
!1453 = !DILocation(line: 171, column: 6, scope: !1338)
!1454 = !DILocation(line: 172, column: 58, scope: !1450)
!1455 = !DILocation(line: 172, column: 40, scope: !1450)
!1456 = !DILocation(line: 172, column: 25, scope: !1450)
!1457 = !DILocation(line: 172, column: 37, scope: !1450)
!1458 = !DILocation(line: 172, column: 42, scope: !1450)
!1459 = !DILocation(line: 172, column: 13, scope: !1460)
!1460 = !DILexicalBlockFile(scope: !1450, file: !747, discriminator: 1)
!1461 = !DILocation(line: 172, column: 11, scope: !1450)
!1462 = !DILocation(line: 172, column: 3, scope: !1450)
!1463 = !DILocation(line: 174, column: 6, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1338, file: !747, line: 174, column: 6)
!1465 = !DILocation(line: 174, column: 14, scope: !1464)
!1466 = !DILocation(line: 174, column: 6, scope: !1338)
!1467 = !DILocation(line: 175, column: 17, scope: !1464)
!1468 = !DILocation(line: 175, column: 36, scope: !1464)
!1469 = !DILocation(line: 175, column: 3, scope: !1464)
!1470 = !DILocation(line: 177, column: 17, scope: !1464)
!1471 = !DILocation(line: 177, column: 40, scope: !1464)
!1472 = !DILocation(line: 177, column: 50, scope: !1464)
!1473 = !DILocation(line: 177, column: 3, scope: !1464)
!1474 = !DILocation(line: 179, column: 9, scope: !1338)
!1475 = !DILocation(line: 179, column: 2, scope: !1338)
!1476 = !DILocation(line: 180, column: 18, scope: !1338)
!1477 = !DILocation(line: 180, column: 2, scope: !1338)
!1478 = !DILocation(line: 181, column: 1, scope: !1338)
!1479 = !DILocation(line: 181, column: 1, scope: !1480)
!1480 = !DILexicalBlockFile(scope: !1338, file: !747, discriminator: 1)
!1481 = distinct !DISubprogram(name: "cmd_kick", scope: !747, file: !747, line: 184, type: !886, isLocal: true, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !760)
!1482 = !DILocalVariable(name: "data", arg: 1, scope: !1481, file: !747, line: 184, type: !96)
!1483 = !DILocation(line: 184, column: 34, scope: !1481)
!1484 = !DILocalVariable(name: "server", arg: 2, scope: !1481, file: !747, line: 184, type: !98)
!1485 = !DILocation(line: 184, column: 56, scope: !1481)
!1486 = !DILocalVariable(name: "item", arg: 3, scope: !1481, file: !747, line: 184, type: !524)
!1487 = !DILocation(line: 184, column: 77, scope: !1481)
!1488 = !DILocalVariable(name: "channame", scope: !1481, file: !747, line: 186, type: !118)
!1489 = !DILocation(line: 186, column: 8, scope: !1481)
!1490 = !DILocalVariable(name: "nicks", scope: !1481, file: !747, line: 186, type: !118)
!1491 = !DILocation(line: 186, column: 19, scope: !1481)
!1492 = !DILocalVariable(name: "reason", scope: !1481, file: !747, line: 186, type: !118)
!1493 = !DILocation(line: 186, column: 27, scope: !1481)
!1494 = !DILocalVariable(name: "recoded", scope: !1481, file: !747, line: 186, type: !118)
!1495 = !DILocation(line: 186, column: 36, scope: !1481)
!1496 = !DILocalVariable(name: "free_arg", scope: !1481, file: !747, line: 187, type: !81)
!1497 = !DILocation(line: 187, column: 8, scope: !1481)
!1498 = !DILocation(line: 189, column: 2, scope: !1481)
!1499 = distinct !{!1499, !1498}
!1500 = !DILocation(line: 189, column: 11, scope: !1501)
!1501 = !DILexicalBlockFile(scope: !1502, file: !747, discriminator: 1)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !747, line: 189, column: 11)
!1503 = distinct !DILexicalBlock(scope: !1481, file: !747, line: 189, column: 5)
!1504 = !DILocation(line: 189, column: 18, scope: !1501)
!1505 = !DILocation(line: 189, column: 1, scope: !1501)
!1506 = !DILocation(line: 189, column: 85, scope: !1507)
!1507 = !DILexicalBlockFile(scope: !1502, file: !747, discriminator: 2)
!1508 = !DILocation(line: 189, column: 67, scope: !1507)
!1509 = !DILocation(line: 189, column: 52, scope: !1507)
!1510 = !DILocation(line: 189, column: 51, scope: !1507)
!1511 = !DILocation(line: 189, column: 26, scope: !1512)
!1512 = !DILexicalBlockFile(scope: !1507, file: !747, discriminator: 12)
!1513 = !DILocation(line: 189, column: 7, scope: !1507)
!1514 = !DILocation(line: 189, column: 11, scope: !1507)
!1515 = !DILocation(line: 189, column: 6, scope: !1516)
!1516 = !DILexicalBlockFile(scope: !1502, file: !747, discriminator: 3)
!1517 = !DILocation(line: 189, column: 11, scope: !1518)
!1518 = !DILexicalBlockFile(scope: !1503, file: !747, discriminator: 4)
!1519 = !DILocation(line: 189, column: 28, scope: !1520)
!1520 = !DILexicalBlockFile(scope: !1502, file: !747, discriminator: 5)
!1521 = !DILocation(line: 189, column: 40, scope: !1522)
!1522 = !DILexicalBlockFile(scope: !1523, file: !747, discriminator: 6)
!1523 = distinct !DILexicalBlock(scope: !1503, file: !747, line: 189, column: 40)
!1524 = !DILocation(line: 189, column: 47, scope: !1522)
!1525 = !DILocation(line: 189, column: 1, scope: !1522)
!1526 = !DILocation(line: 189, column: 6, scope: !1527)
!1527 = !DILexicalBlockFile(scope: !1523, file: !747, discriminator: 7)
!1528 = !DILocation(line: 189, column: 15, scope: !1527)
!1529 = !DILocation(line: 189, column: 5, scope: !1527)
!1530 = !DILocation(line: 189, column: 40, scope: !1527)
!1531 = !DILocation(line: 189, column: 26, scope: !1532)
!1532 = !DILexicalBlockFile(scope: !1523, file: !747, discriminator: 8)
!1533 = distinct !{!1533, !1534}
!1534 = !DILocation(line: 189, column: 26, scope: !1523)
!1535 = !DILocation(line: 189, column: 31, scope: !1536)
!1536 = !DILexicalBlockFile(scope: !1537, file: !747, discriminator: 9)
!1537 = distinct !DILexicalBlock(scope: !1523, file: !747, line: 189, column: 29)
!1538 = !DILocation(line: 189, column: 109, scope: !1539)
!1539 = !DILexicalBlockFile(scope: !1536, file: !747, discriminator: 13)
!1540 = !DILocation(line: 189, column: 124, scope: !1536)
!1541 = !DILocation(line: 189, column: 132, scope: !1542)
!1542 = !DILexicalBlockFile(scope: !1537, file: !747, discriminator: 10)
!1543 = !DILocation(line: 189, column: 145, scope: !1544)
!1544 = !DILexicalBlockFile(scope: !1503, file: !747, discriminator: 11)
!1545 = !DILocation(line: 191, column: 22, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1481, file: !747, line: 191, column: 6)
!1547 = !DILocation(line: 192, column: 34, scope: !1546)
!1548 = !DILocation(line: 191, column: 7, scope: !1546)
!1549 = !DILocation(line: 191, column: 6, scope: !1481)
!1550 = !DILocation(line: 194, column: 3, scope: !1546)
!1551 = !DILocation(line: 196, column: 7, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1481, file: !747, line: 196, column: 6)
!1553 = !DILocation(line: 196, column: 6, scope: !1552)
!1554 = !DILocation(line: 196, column: 16, scope: !1552)
!1555 = !DILocation(line: 196, column: 24, scope: !1552)
!1556 = !DILocation(line: 196, column: 28, scope: !1557)
!1557 = !DILexicalBlockFile(scope: !1552, file: !747, discriminator: 1)
!1558 = !DILocation(line: 196, column: 27, scope: !1557)
!1559 = !DILocation(line: 196, column: 34, scope: !1557)
!1560 = !DILocation(line: 196, column: 6, scope: !1557)
!1561 = !DILocation(line: 196, column: 43, scope: !1562)
!1562 = !DILexicalBlockFile(scope: !1552, file: !747, discriminator: 2)
!1563 = distinct !{!1563, !1564}
!1564 = !DILocation(line: 196, column: 43, scope: !1552)
!1565 = !DILocation(line: 196, column: 64, scope: !1566)
!1566 = !DILexicalBlockFile(scope: !1567, file: !747, discriminator: 3)
!1567 = distinct !DILexicalBlock(scope: !1552, file: !747, line: 196, column: 46)
!1568 = !DILocation(line: 196, column: 48, scope: !1566)
!1569 = !DILocation(line: 196, column: 75, scope: !1566)
!1570 = distinct !{!1570, !1571}
!1571 = !DILocation(line: 196, column: 75, scope: !1567)
!1572 = !DILocation(line: 196, column: 80, scope: !1573)
!1573 = !DILexicalBlockFile(scope: !1574, file: !747, discriminator: 4)
!1574 = distinct !DILexicalBlock(scope: !1567, file: !747, line: 196, column: 78)
!1575 = !DILocation(line: 196, column: 162, scope: !1576)
!1576 = !DILexicalBlockFile(scope: !1573, file: !747, discriminator: 7)
!1577 = !DILocation(line: 196, column: 177, scope: !1573)
!1578 = !DILocation(line: 196, column: 198, scope: !1579)
!1579 = !DILexicalBlockFile(scope: !1567, file: !747, discriminator: 5)
!1580 = !DILocation(line: 196, column: 198, scope: !1581)
!1581 = !DILexicalBlockFile(scope: !1567, file: !747, discriminator: 6)
!1582 = !DILocation(line: 197, column: 43, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1481, file: !747, line: 197, column: 6)
!1584 = !DILocation(line: 197, column: 25, scope: !1583)
!1585 = !DILocation(line: 197, column: 10, scope: !1583)
!1586 = !DILocation(line: 197, column: 21, scope: !1583)
!1587 = !DILocation(line: 197, column: 65, scope: !1583)
!1588 = !DILocation(line: 197, column: 47, scope: !1589)
!1589 = !DILexicalBlockFile(scope: !1583, file: !747, discriminator: 6)
!1590 = !DILocation(line: 197, column: 32, scope: !1583)
!1591 = !DILocation(line: 197, column: 20, scope: !1583)
!1592 = !DILocation(line: 197, column: 8, scope: !1593)
!1593 = !DILexicalBlockFile(scope: !1583, file: !747, discriminator: 7)
!1594 = !DILocation(line: 197, column: 8, scope: !1583)
!1595 = !DILocation(line: 197, column: 6, scope: !1481)
!1596 = !DILocation(line: 197, column: 32, scope: !1597)
!1597 = !DILexicalBlockFile(scope: !1583, file: !747, discriminator: 1)
!1598 = distinct !{!1598, !1590}
!1599 = !DILocation(line: 197, column: 53, scope: !1600)
!1600 = !DILexicalBlockFile(scope: !1601, file: !747, discriminator: 2)
!1601 = distinct !DILexicalBlock(scope: !1583, file: !747, line: 197, column: 35)
!1602 = !DILocation(line: 197, column: 37, scope: !1600)
!1603 = !DILocation(line: 197, column: 64, scope: !1600)
!1604 = distinct !{!1604, !1605}
!1605 = !DILocation(line: 197, column: 64, scope: !1601)
!1606 = !DILocation(line: 197, column: 69, scope: !1607)
!1607 = !DILexicalBlockFile(scope: !1608, file: !747, discriminator: 3)
!1608 = distinct !DILexicalBlock(scope: !1601, file: !747, line: 197, column: 67)
!1609 = !DILocation(line: 197, column: 144, scope: !1610)
!1610 = !DILexicalBlockFile(scope: !1607, file: !747, discriminator: 8)
!1611 = !DILocation(line: 197, column: 159, scope: !1607)
!1612 = !DILocation(line: 197, column: 180, scope: !1613)
!1613 = !DILexicalBlockFile(scope: !1601, file: !747, discriminator: 4)
!1614 = !DILocation(line: 197, column: 180, scope: !1615)
!1615 = !DILexicalBlockFile(scope: !1601, file: !747, discriminator: 5)
!1616 = !DILocation(line: 199, column: 57, scope: !1481)
!1617 = !DILocation(line: 199, column: 39, scope: !1481)
!1618 = !DILocation(line: 199, column: 24, scope: !1481)
!1619 = !DILocation(line: 199, column: 36, scope: !1481)
!1620 = !DILocation(line: 199, column: 44, scope: !1481)
!1621 = !DILocation(line: 199, column: 12, scope: !1622)
!1622 = !DILexicalBlockFile(scope: !1481, file: !747, discriminator: 1)
!1623 = !DILocation(line: 199, column: 10, scope: !1481)
!1624 = !DILocation(line: 200, column: 18, scope: !1481)
!1625 = !DILocation(line: 200, column: 44, scope: !1481)
!1626 = !DILocation(line: 200, column: 54, scope: !1481)
!1627 = !DILocation(line: 200, column: 61, scope: !1481)
!1628 = !DILocation(line: 200, column: 2, scope: !1481)
!1629 = !DILocation(line: 201, column: 9, scope: !1481)
!1630 = !DILocation(line: 201, column: 2, scope: !1481)
!1631 = !DILocation(line: 203, column: 21, scope: !1481)
!1632 = !DILocation(line: 203, column: 29, scope: !1481)
!1633 = !DILocation(line: 203, column: 37, scope: !1481)
!1634 = !DILocation(line: 203, column: 45, scope: !1481)
!1635 = !DILocation(line: 203, column: 53, scope: !1481)
!1636 = !DILocation(line: 203, column: 2, scope: !1481)
!1637 = !DILocation(line: 205, column: 18, scope: !1481)
!1638 = !DILocation(line: 205, column: 2, scope: !1481)
!1639 = !DILocation(line: 206, column: 1, scope: !1481)
!1640 = !DILocation(line: 206, column: 1, scope: !1622)
!1641 = distinct !DISubprogram(name: "cmd_topic", scope: !747, file: !747, line: 209, type: !886, isLocal: true, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !760)
!1642 = !DILocalVariable(name: "data", arg: 1, scope: !1641, file: !747, line: 209, type: !96)
!1643 = !DILocation(line: 209, column: 35, scope: !1641)
!1644 = !DILocalVariable(name: "server", arg: 2, scope: !1641, file: !747, line: 209, type: !98)
!1645 = !DILocation(line: 209, column: 57, scope: !1641)
!1646 = !DILocalVariable(name: "item", arg: 3, scope: !1641, file: !747, line: 209, type: !524)
!1647 = !DILocation(line: 209, column: 78, scope: !1641)
!1648 = !DILocalVariable(name: "optlist", scope: !1641, file: !747, line: 211, type: !373)
!1649 = !DILocation(line: 211, column: 14, scope: !1641)
!1650 = !DILocalVariable(name: "channame", scope: !1641, file: !747, line: 212, type: !118)
!1651 = !DILocation(line: 212, column: 8, scope: !1641)
!1652 = !DILocalVariable(name: "topic", scope: !1641, file: !747, line: 212, type: !118)
!1653 = !DILocation(line: 212, column: 19, scope: !1641)
!1654 = !DILocalVariable(name: "recoded", scope: !1641, file: !747, line: 213, type: !118)
!1655 = !DILocation(line: 213, column: 8, scope: !1641)
!1656 = !DILocalVariable(name: "free_arg", scope: !1641, file: !747, line: 214, type: !81)
!1657 = !DILocation(line: 214, column: 8, scope: !1641)
!1658 = !DILocation(line: 216, column: 2, scope: !1641)
!1659 = distinct !{!1659, !1658}
!1660 = !DILocation(line: 216, column: 11, scope: !1661)
!1661 = !DILexicalBlockFile(scope: !1662, file: !747, discriminator: 1)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !747, line: 216, column: 11)
!1663 = distinct !DILexicalBlock(scope: !1641, file: !747, line: 216, column: 5)
!1664 = !DILocation(line: 216, column: 18, scope: !1661)
!1665 = !DILocation(line: 216, column: 1, scope: !1661)
!1666 = !DILocation(line: 216, column: 85, scope: !1667)
!1667 = !DILexicalBlockFile(scope: !1662, file: !747, discriminator: 2)
!1668 = !DILocation(line: 216, column: 67, scope: !1667)
!1669 = !DILocation(line: 216, column: 52, scope: !1667)
!1670 = !DILocation(line: 216, column: 51, scope: !1667)
!1671 = !DILocation(line: 216, column: 26, scope: !1672)
!1672 = !DILexicalBlockFile(scope: !1667, file: !747, discriminator: 12)
!1673 = !DILocation(line: 216, column: 7, scope: !1667)
!1674 = !DILocation(line: 216, column: 11, scope: !1667)
!1675 = !DILocation(line: 216, column: 6, scope: !1676)
!1676 = !DILexicalBlockFile(scope: !1662, file: !747, discriminator: 3)
!1677 = !DILocation(line: 216, column: 11, scope: !1678)
!1678 = !DILexicalBlockFile(scope: !1663, file: !747, discriminator: 4)
!1679 = !DILocation(line: 216, column: 28, scope: !1680)
!1680 = !DILexicalBlockFile(scope: !1662, file: !747, discriminator: 5)
!1681 = !DILocation(line: 216, column: 40, scope: !1682)
!1682 = !DILexicalBlockFile(scope: !1683, file: !747, discriminator: 6)
!1683 = distinct !DILexicalBlock(scope: !1663, file: !747, line: 216, column: 40)
!1684 = !DILocation(line: 216, column: 47, scope: !1682)
!1685 = !DILocation(line: 216, column: 1, scope: !1682)
!1686 = !DILocation(line: 216, column: 6, scope: !1687)
!1687 = !DILexicalBlockFile(scope: !1683, file: !747, discriminator: 7)
!1688 = !DILocation(line: 216, column: 15, scope: !1687)
!1689 = !DILocation(line: 216, column: 5, scope: !1687)
!1690 = !DILocation(line: 216, column: 40, scope: !1687)
!1691 = !DILocation(line: 216, column: 26, scope: !1692)
!1692 = !DILexicalBlockFile(scope: !1683, file: !747, discriminator: 8)
!1693 = distinct !{!1693, !1694}
!1694 = !DILocation(line: 216, column: 26, scope: !1683)
!1695 = !DILocation(line: 216, column: 31, scope: !1696)
!1696 = !DILexicalBlockFile(scope: !1697, file: !747, discriminator: 9)
!1697 = distinct !DILexicalBlock(scope: !1683, file: !747, line: 216, column: 29)
!1698 = !DILocation(line: 216, column: 109, scope: !1699)
!1699 = !DILexicalBlockFile(scope: !1696, file: !747, discriminator: 13)
!1700 = !DILocation(line: 216, column: 124, scope: !1696)
!1701 = !DILocation(line: 216, column: 132, scope: !1702)
!1702 = !DILexicalBlockFile(scope: !1697, file: !747, discriminator: 10)
!1703 = !DILocation(line: 216, column: 145, scope: !1704)
!1704 = !DILexicalBlockFile(scope: !1663, file: !747, discriminator: 11)
!1705 = !DILocation(line: 218, column: 22, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1641, file: !747, line: 218, column: 6)
!1707 = !DILocation(line: 220, column: 22, scope: !1706)
!1708 = !DILocation(line: 218, column: 7, scope: !1706)
!1709 = !DILocation(line: 218, column: 6, scope: !1641)
!1710 = !DILocation(line: 221, column: 3, scope: !1706)
!1711 = !DILocation(line: 223, column: 7, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1641, file: !747, line: 223, column: 6)
!1713 = !DILocation(line: 223, column: 6, scope: !1712)
!1714 = !DILocation(line: 223, column: 13, scope: !1712)
!1715 = !DILocation(line: 223, column: 21, scope: !1712)
!1716 = !DILocation(line: 223, column: 44, scope: !1717)
!1717 = !DILexicalBlockFile(scope: !1712, file: !747, discriminator: 1)
!1718 = !DILocation(line: 223, column: 24, scope: !1717)
!1719 = !DILocation(line: 223, column: 63, scope: !1717)
!1720 = !DILocation(line: 223, column: 6, scope: !1717)
!1721 = !DILocation(line: 224, column: 58, scope: !1712)
!1722 = !DILocation(line: 224, column: 40, scope: !1712)
!1723 = !DILocation(line: 224, column: 25, scope: !1712)
!1724 = !DILocation(line: 224, column: 37, scope: !1712)
!1725 = !DILocation(line: 224, column: 44, scope: !1712)
!1726 = !DILocation(line: 224, column: 13, scope: !1717)
!1727 = !DILocation(line: 224, column: 11, scope: !1712)
!1728 = !DILocation(line: 224, column: 3, scope: !1712)
!1729 = !DILocation(line: 226, column: 6, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1641, file: !747, line: 226, column: 6)
!1731 = !DILocation(line: 226, column: 14, scope: !1730)
!1732 = !DILocation(line: 226, column: 6, scope: !1641)
!1733 = !DILocation(line: 227, column: 17, scope: !1730)
!1734 = !DILocation(line: 227, column: 37, scope: !1730)
!1735 = !DILocation(line: 227, column: 3, scope: !1730)
!1736 = !DILocation(line: 229, column: 17, scope: !1730)
!1737 = !DILocation(line: 229, column: 41, scope: !1730)
!1738 = !DILocation(line: 229, column: 51, scope: !1730)
!1739 = !DILocation(line: 229, column: 3, scope: !1730)
!1740 = !DILocation(line: 231, column: 9, scope: !1641)
!1741 = !DILocation(line: 231, column: 2, scope: !1641)
!1742 = !DILocation(line: 233, column: 18, scope: !1641)
!1743 = !DILocation(line: 233, column: 2, scope: !1641)
!1744 = !DILocation(line: 234, column: 1, scope: !1641)
!1745 = !DILocation(line: 234, column: 1, scope: !1746)
!1746 = !DILexicalBlockFile(scope: !1641, file: !747, discriminator: 1)
!1747 = distinct !DISubprogram(name: "cmd_invite", scope: !747, file: !747, line: 237, type: !886, isLocal: true, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !760)
!1748 = !DILocalVariable(name: "data", arg: 1, scope: !1747, file: !747, line: 237, type: !96)
!1749 = !DILocation(line: 237, column: 36, scope: !1747)
!1750 = !DILocalVariable(name: "server", arg: 2, scope: !1747, file: !747, line: 237, type: !98)
!1751 = !DILocation(line: 237, column: 58, scope: !1747)
!1752 = !DILocalVariable(name: "item", arg: 3, scope: !1747, file: !747, line: 237, type: !524)
!1753 = !DILocation(line: 237, column: 79, scope: !1747)
!1754 = !DILocalVariable(name: "nick", scope: !1747, file: !747, line: 239, type: !118)
!1755 = !DILocation(line: 239, column: 8, scope: !1747)
!1756 = !DILocalVariable(name: "channame", scope: !1747, file: !747, line: 239, type: !118)
!1757 = !DILocation(line: 239, column: 15, scope: !1747)
!1758 = !DILocalVariable(name: "free_arg", scope: !1747, file: !747, line: 240, type: !81)
!1759 = !DILocation(line: 240, column: 8, scope: !1747)
!1760 = !DILocation(line: 242, column: 2, scope: !1747)
!1761 = distinct !{!1761, !1760}
!1762 = !DILocation(line: 242, column: 11, scope: !1763)
!1763 = !DILexicalBlockFile(scope: !1764, file: !747, discriminator: 1)
!1764 = distinct !DILexicalBlock(scope: !1765, file: !747, line: 242, column: 11)
!1765 = distinct !DILexicalBlock(scope: !1747, file: !747, line: 242, column: 5)
!1766 = !DILocation(line: 242, column: 18, scope: !1763)
!1767 = !DILocation(line: 242, column: 1, scope: !1763)
!1768 = !DILocation(line: 242, column: 85, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !1764, file: !747, discriminator: 2)
!1770 = !DILocation(line: 242, column: 67, scope: !1769)
!1771 = !DILocation(line: 242, column: 52, scope: !1769)
!1772 = !DILocation(line: 242, column: 51, scope: !1769)
!1773 = !DILocation(line: 242, column: 26, scope: !1774)
!1774 = !DILexicalBlockFile(scope: !1769, file: !747, discriminator: 12)
!1775 = !DILocation(line: 242, column: 7, scope: !1769)
!1776 = !DILocation(line: 242, column: 11, scope: !1769)
!1777 = !DILocation(line: 242, column: 6, scope: !1778)
!1778 = !DILexicalBlockFile(scope: !1764, file: !747, discriminator: 3)
!1779 = !DILocation(line: 242, column: 11, scope: !1780)
!1780 = !DILexicalBlockFile(scope: !1765, file: !747, discriminator: 4)
!1781 = !DILocation(line: 242, column: 28, scope: !1782)
!1782 = !DILexicalBlockFile(scope: !1764, file: !747, discriminator: 5)
!1783 = !DILocation(line: 242, column: 40, scope: !1784)
!1784 = !DILexicalBlockFile(scope: !1785, file: !747, discriminator: 6)
!1785 = distinct !DILexicalBlock(scope: !1765, file: !747, line: 242, column: 40)
!1786 = !DILocation(line: 242, column: 47, scope: !1784)
!1787 = !DILocation(line: 242, column: 1, scope: !1784)
!1788 = !DILocation(line: 242, column: 6, scope: !1789)
!1789 = !DILexicalBlockFile(scope: !1785, file: !747, discriminator: 7)
!1790 = !DILocation(line: 242, column: 15, scope: !1789)
!1791 = !DILocation(line: 242, column: 5, scope: !1789)
!1792 = !DILocation(line: 242, column: 40, scope: !1789)
!1793 = !DILocation(line: 242, column: 26, scope: !1794)
!1794 = !DILexicalBlockFile(scope: !1785, file: !747, discriminator: 8)
!1795 = distinct !{!1795, !1796}
!1796 = !DILocation(line: 242, column: 26, scope: !1785)
!1797 = !DILocation(line: 242, column: 31, scope: !1798)
!1798 = !DILexicalBlockFile(scope: !1799, file: !747, discriminator: 9)
!1799 = distinct !DILexicalBlock(scope: !1785, file: !747, line: 242, column: 29)
!1800 = !DILocation(line: 242, column: 109, scope: !1801)
!1801 = !DILexicalBlockFile(scope: !1798, file: !747, discriminator: 13)
!1802 = !DILocation(line: 242, column: 124, scope: !1798)
!1803 = !DILocation(line: 242, column: 132, scope: !1804)
!1804 = !DILexicalBlockFile(scope: !1799, file: !747, discriminator: 10)
!1805 = !DILocation(line: 242, column: 145, scope: !1806)
!1806 = !DILexicalBlockFile(scope: !1765, file: !747, discriminator: 11)
!1807 = !DILocation(line: 244, column: 22, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1747, file: !747, line: 244, column: 6)
!1809 = !DILocation(line: 244, column: 7, scope: !1808)
!1810 = !DILocation(line: 244, column: 6, scope: !1747)
!1811 = !DILocation(line: 245, column: 3, scope: !1808)
!1812 = !DILocation(line: 247, column: 7, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1747, file: !747, line: 247, column: 6)
!1814 = !DILocation(line: 247, column: 6, scope: !1813)
!1815 = !DILocation(line: 247, column: 12, scope: !1813)
!1816 = !DILocation(line: 247, column: 6, scope: !1747)
!1817 = !DILocation(line: 247, column: 21, scope: !1818)
!1818 = !DILexicalBlockFile(scope: !1813, file: !747, discriminator: 1)
!1819 = distinct !{!1819, !1820}
!1820 = !DILocation(line: 247, column: 21, scope: !1813)
!1821 = !DILocation(line: 247, column: 42, scope: !1822)
!1822 = !DILexicalBlockFile(scope: !1823, file: !747, discriminator: 2)
!1823 = distinct !DILexicalBlock(scope: !1813, file: !747, line: 247, column: 24)
!1824 = !DILocation(line: 247, column: 26, scope: !1822)
!1825 = !DILocation(line: 247, column: 53, scope: !1822)
!1826 = distinct !{!1826, !1827}
!1827 = !DILocation(line: 247, column: 53, scope: !1823)
!1828 = !DILocation(line: 247, column: 58, scope: !1829)
!1829 = !DILexicalBlockFile(scope: !1830, file: !747, discriminator: 3)
!1830 = distinct !DILexicalBlock(scope: !1823, file: !747, line: 247, column: 56)
!1831 = !DILocation(line: 247, column: 140, scope: !1832)
!1832 = !DILexicalBlockFile(scope: !1829, file: !747, discriminator: 6)
!1833 = !DILocation(line: 247, column: 155, scope: !1829)
!1834 = !DILocation(line: 247, column: 176, scope: !1835)
!1835 = !DILexicalBlockFile(scope: !1823, file: !747, discriminator: 4)
!1836 = !DILocation(line: 247, column: 176, scope: !1837)
!1837 = !DILexicalBlockFile(scope: !1823, file: !747, discriminator: 5)
!1838 = !DILocation(line: 248, column: 7, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1747, file: !747, line: 248, column: 6)
!1840 = !DILocation(line: 248, column: 6, scope: !1839)
!1841 = !DILocation(line: 248, column: 16, scope: !1839)
!1842 = !DILocation(line: 248, column: 24, scope: !1839)
!1843 = !DILocation(line: 248, column: 37, scope: !1844)
!1844 = !DILexicalBlockFile(scope: !1839, file: !747, discriminator: 1)
!1845 = !DILocation(line: 248, column: 27, scope: !1844)
!1846 = !DILocation(line: 248, column: 52, scope: !1844)
!1847 = !DILocation(line: 248, column: 6, scope: !1844)
!1848 = !DILocation(line: 249, column: 97, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !747, line: 249, column: 7)
!1850 = distinct !DILexicalBlock(scope: !1839, file: !747, line: 248, column: 58)
!1851 = !DILocation(line: 249, column: 72, scope: !1849)
!1852 = !DILocation(line: 249, column: 56, scope: !1849)
!1853 = !DILocation(line: 249, column: 55, scope: !1849)
!1854 = !DILocation(line: 249, column: 30, scope: !1855)
!1855 = !DILexicalBlockFile(scope: !1849, file: !747, discriminator: 3)
!1856 = !DILocation(line: 249, column: 10, scope: !1849)
!1857 = !DILocation(line: 249, column: 7, scope: !1850)
!1858 = !DILocation(line: 249, column: 9, scope: !1859)
!1859 = !DILexicalBlockFile(scope: !1849, file: !747, discriminator: 1)
!1860 = !DILocation(line: 249, column: 7, scope: !1861)
!1861 = !DILexicalBlockFile(scope: !1850, file: !747, discriminator: 2)
!1862 = !DILocation(line: 250, column: 4, scope: !1849)
!1863 = distinct !{!1863, !1862}
!1864 = !DILocation(line: 250, column: 25, scope: !1865)
!1865 = !DILexicalBlockFile(scope: !1866, file: !747, discriminator: 1)
!1866 = distinct !DILexicalBlock(scope: !1849, file: !747, line: 250, column: 7)
!1867 = !DILocation(line: 250, column: 9, scope: !1865)
!1868 = !DILocation(line: 250, column: 36, scope: !1865)
!1869 = distinct !{!1869, !1870}
!1870 = !DILocation(line: 250, column: 36, scope: !1866)
!1871 = !DILocation(line: 250, column: 41, scope: !1872)
!1872 = !DILexicalBlockFile(scope: !1873, file: !747, discriminator: 2)
!1873 = distinct !DILexicalBlock(scope: !1866, file: !747, line: 250, column: 39)
!1874 = !DILocation(line: 250, column: 116, scope: !1875)
!1875 = !DILexicalBlockFile(scope: !1872, file: !747, discriminator: 5)
!1876 = !DILocation(line: 250, column: 131, scope: !1872)
!1877 = !DILocation(line: 250, column: 152, scope: !1878)
!1878 = !DILexicalBlockFile(scope: !1866, file: !747, discriminator: 3)
!1879 = !DILocation(line: 250, column: 152, scope: !1880)
!1880 = !DILexicalBlockFile(scope: !1866, file: !747, discriminator: 4)
!1881 = !DILocation(line: 252, column: 102, scope: !1850)
!1882 = !DILocation(line: 252, column: 77, scope: !1850)
!1883 = !DILocation(line: 252, column: 61, scope: !1850)
!1884 = !DILocation(line: 252, column: 60, scope: !1850)
!1885 = !DILocation(line: 252, column: 35, scope: !1886)
!1886 = !DILexicalBlockFile(scope: !1850, file: !747, discriminator: 1)
!1887 = !DILocation(line: 252, column: 15, scope: !1850)
!1888 = !DILocation(line: 252, column: 24, scope: !1850)
!1889 = !DILocation(line: 252, column: 12, scope: !1850)
!1890 = !DILocation(line: 253, column: 2, scope: !1850)
!1891 = !DILocation(line: 255, column: 16, scope: !1747)
!1892 = !DILocation(line: 255, column: 40, scope: !1747)
!1893 = !DILocation(line: 255, column: 46, scope: !1747)
!1894 = !DILocation(line: 255, column: 2, scope: !1747)
!1895 = !DILocation(line: 256, column: 18, scope: !1747)
!1896 = !DILocation(line: 256, column: 2, scope: !1747)
!1897 = !DILocation(line: 257, column: 1, scope: !1747)
!1898 = !DILocation(line: 257, column: 1, scope: !1899)
!1899 = !DILexicalBlockFile(scope: !1747, file: !747, discriminator: 1)
!1900 = distinct !DISubprogram(name: "cmd_list", scope: !747, file: !747, line: 260, type: !886, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !760)
!1901 = !DILocalVariable(name: "data", arg: 1, scope: !1900, file: !747, line: 260, type: !96)
!1902 = !DILocation(line: 260, column: 34, scope: !1900)
!1903 = !DILocalVariable(name: "server", arg: 2, scope: !1900, file: !747, line: 260, type: !98)
!1904 = !DILocation(line: 260, column: 56, scope: !1900)
!1905 = !DILocalVariable(name: "item", arg: 3, scope: !1900, file: !747, line: 261, type: !524)
!1906 = !DILocation(line: 261, column: 35, scope: !1900)
!1907 = !DILocalVariable(name: "optlist", scope: !1900, file: !747, line: 263, type: !373)
!1908 = !DILocation(line: 263, column: 14, scope: !1900)
!1909 = !DILocalVariable(name: "str", scope: !1900, file: !747, line: 264, type: !118)
!1910 = !DILocation(line: 264, column: 8, scope: !1900)
!1911 = !DILocalVariable(name: "free_arg", scope: !1900, file: !747, line: 265, type: !81)
!1912 = !DILocation(line: 265, column: 8, scope: !1900)
!1913 = !DILocation(line: 267, column: 2, scope: !1900)
!1914 = distinct !{!1914, !1913}
!1915 = !DILocation(line: 267, column: 11, scope: !1916)
!1916 = !DILexicalBlockFile(scope: !1917, file: !747, discriminator: 1)
!1917 = distinct !DILexicalBlock(scope: !1918, file: !747, line: 267, column: 11)
!1918 = distinct !DILexicalBlock(scope: !1900, file: !747, line: 267, column: 5)
!1919 = !DILocation(line: 267, column: 18, scope: !1916)
!1920 = !DILocation(line: 267, column: 1, scope: !1916)
!1921 = !DILocation(line: 267, column: 85, scope: !1922)
!1922 = !DILexicalBlockFile(scope: !1917, file: !747, discriminator: 2)
!1923 = !DILocation(line: 267, column: 67, scope: !1922)
!1924 = !DILocation(line: 267, column: 52, scope: !1922)
!1925 = !DILocation(line: 267, column: 51, scope: !1922)
!1926 = !DILocation(line: 267, column: 26, scope: !1927)
!1927 = !DILexicalBlockFile(scope: !1922, file: !747, discriminator: 12)
!1928 = !DILocation(line: 267, column: 7, scope: !1922)
!1929 = !DILocation(line: 267, column: 11, scope: !1922)
!1930 = !DILocation(line: 267, column: 6, scope: !1931)
!1931 = !DILexicalBlockFile(scope: !1917, file: !747, discriminator: 3)
!1932 = !DILocation(line: 267, column: 11, scope: !1933)
!1933 = !DILexicalBlockFile(scope: !1918, file: !747, discriminator: 4)
!1934 = !DILocation(line: 267, column: 28, scope: !1935)
!1935 = !DILexicalBlockFile(scope: !1917, file: !747, discriminator: 5)
!1936 = !DILocation(line: 267, column: 40, scope: !1937)
!1937 = !DILexicalBlockFile(scope: !1938, file: !747, discriminator: 6)
!1938 = distinct !DILexicalBlock(scope: !1918, file: !747, line: 267, column: 40)
!1939 = !DILocation(line: 267, column: 47, scope: !1937)
!1940 = !DILocation(line: 267, column: 1, scope: !1937)
!1941 = !DILocation(line: 267, column: 6, scope: !1942)
!1942 = !DILexicalBlockFile(scope: !1938, file: !747, discriminator: 7)
!1943 = !DILocation(line: 267, column: 15, scope: !1942)
!1944 = !DILocation(line: 267, column: 5, scope: !1942)
!1945 = !DILocation(line: 267, column: 40, scope: !1942)
!1946 = !DILocation(line: 267, column: 26, scope: !1947)
!1947 = !DILexicalBlockFile(scope: !1938, file: !747, discriminator: 8)
!1948 = distinct !{!1948, !1949}
!1949 = !DILocation(line: 267, column: 26, scope: !1938)
!1950 = !DILocation(line: 267, column: 31, scope: !1951)
!1951 = !DILexicalBlockFile(scope: !1952, file: !747, discriminator: 9)
!1952 = distinct !DILexicalBlock(scope: !1938, file: !747, line: 267, column: 29)
!1953 = !DILocation(line: 267, column: 109, scope: !1954)
!1954 = !DILexicalBlockFile(scope: !1951, file: !747, discriminator: 13)
!1955 = !DILocation(line: 267, column: 124, scope: !1951)
!1956 = !DILocation(line: 267, column: 132, scope: !1957)
!1957 = !DILexicalBlockFile(scope: !1952, file: !747, discriminator: 10)
!1958 = !DILocation(line: 267, column: 145, scope: !1959)
!1959 = !DILexicalBlockFile(scope: !1918, file: !747, discriminator: 11)
!1960 = !DILocation(line: 269, column: 22, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1900, file: !747, line: 269, column: 6)
!1962 = !DILocation(line: 269, column: 7, scope: !1961)
!1963 = !DILocation(line: 269, column: 6, scope: !1900)
!1964 = !DILocation(line: 272, column: 3, scope: !1961)
!1965 = !DILocation(line: 274, column: 7, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1900, file: !747, line: 274, column: 6)
!1967 = !DILocation(line: 274, column: 6, scope: !1966)
!1968 = !DILocation(line: 274, column: 11, scope: !1966)
!1969 = !DILocation(line: 274, column: 19, scope: !1966)
!1970 = !DILocation(line: 274, column: 42, scope: !1971)
!1971 = !DILexicalBlockFile(scope: !1966, file: !747, discriminator: 1)
!1972 = !DILocation(line: 274, column: 22, scope: !1971)
!1973 = !DILocation(line: 274, column: 58, scope: !1971)
!1974 = !DILocation(line: 274, column: 65, scope: !1971)
!1975 = !DILocation(line: 275, column: 7, scope: !1966)
!1976 = !DILocation(line: 275, column: 15, scope: !1966)
!1977 = !DILocation(line: 275, column: 31, scope: !1966)
!1978 = !DILocation(line: 275, column: 36, scope: !1966)
!1979 = !DILocation(line: 276, column: 7, scope: !1966)
!1980 = !DILocation(line: 276, column: 15, scope: !1966)
!1981 = !DILocation(line: 276, column: 31, scope: !1966)
!1982 = !DILocation(line: 274, column: 6, scope: !1983)
!1983 = !DILexicalBlockFile(scope: !1900, file: !747, discriminator: 2)
!1984 = !DILocation(line: 277, column: 3, scope: !1966)
!1985 = distinct !{!1985, !1984}
!1986 = !DILocation(line: 277, column: 24, scope: !1987)
!1987 = !DILexicalBlockFile(scope: !1988, file: !747, discriminator: 1)
!1988 = distinct !DILexicalBlock(scope: !1966, file: !747, line: 277, column: 6)
!1989 = !DILocation(line: 277, column: 8, scope: !1987)
!1990 = !DILocation(line: 277, column: 35, scope: !1987)
!1991 = distinct !{!1991, !1992}
!1992 = !DILocation(line: 277, column: 35, scope: !1988)
!1993 = !DILocation(line: 277, column: 40, scope: !1994)
!1994 = !DILexicalBlockFile(scope: !1995, file: !747, discriminator: 2)
!1995 = distinct !DILexicalBlock(scope: !1988, file: !747, line: 277, column: 38)
!1996 = !DILocation(line: 277, column: 118, scope: !1997)
!1997 = !DILexicalBlockFile(scope: !1994, file: !747, discriminator: 5)
!1998 = !DILocation(line: 277, column: 133, scope: !1994)
!1999 = !DILocation(line: 277, column: 154, scope: !2000)
!2000 = !DILexicalBlockFile(scope: !1988, file: !747, discriminator: 3)
!2001 = !DILocation(line: 277, column: 154, scope: !2002)
!2002 = !DILexicalBlockFile(scope: !1988, file: !747, discriminator: 4)
!2003 = !DILocation(line: 279, column: 16, scope: !1900)
!2004 = !DILocation(line: 279, column: 35, scope: !1900)
!2005 = !DILocation(line: 279, column: 2, scope: !1900)
!2006 = !DILocation(line: 280, column: 18, scope: !1900)
!2007 = !DILocation(line: 280, column: 2, scope: !1900)
!2008 = !DILocation(line: 281, column: 1, scope: !1900)
!2009 = !DILocation(line: 281, column: 1, scope: !2010)
!2010 = !DILexicalBlockFile(scope: !1900, file: !747, discriminator: 1)
!2011 = distinct !DISubprogram(name: "cmd_who", scope: !747, file: !747, line: 284, type: !886, isLocal: true, isDefinition: true, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !760)
!2012 = !DILocalVariable(name: "data", arg: 1, scope: !2011, file: !747, line: 284, type: !96)
!2013 = !DILocation(line: 284, column: 33, scope: !2011)
!2014 = !DILocalVariable(name: "server", arg: 2, scope: !2011, file: !747, line: 284, type: !98)
!2015 = !DILocation(line: 284, column: 55, scope: !2011)
!2016 = !DILocalVariable(name: "item", arg: 3, scope: !2011, file: !747, line: 285, type: !524)
!2017 = !DILocation(line: 285, column: 34, scope: !2011)
!2018 = !DILocalVariable(name: "channel", scope: !2011, file: !747, line: 287, type: !118)
!2019 = !DILocation(line: 287, column: 8, scope: !2011)
!2020 = !DILocalVariable(name: "rest", scope: !2011, file: !747, line: 287, type: !118)
!2021 = !DILocation(line: 287, column: 18, scope: !2011)
!2022 = !DILocalVariable(name: "free_arg", scope: !2011, file: !747, line: 288, type: !81)
!2023 = !DILocation(line: 288, column: 8, scope: !2011)
!2024 = !DILocation(line: 290, column: 2, scope: !2011)
!2025 = distinct !{!2025, !2024}
!2026 = !DILocation(line: 290, column: 11, scope: !2027)
!2027 = !DILexicalBlockFile(scope: !2028, file: !747, discriminator: 1)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !747, line: 290, column: 11)
!2029 = distinct !DILexicalBlock(scope: !2011, file: !747, line: 290, column: 5)
!2030 = !DILocation(line: 290, column: 18, scope: !2027)
!2031 = !DILocation(line: 290, column: 1, scope: !2027)
!2032 = !DILocation(line: 290, column: 85, scope: !2033)
!2033 = !DILexicalBlockFile(scope: !2028, file: !747, discriminator: 2)
!2034 = !DILocation(line: 290, column: 67, scope: !2033)
!2035 = !DILocation(line: 290, column: 52, scope: !2033)
!2036 = !DILocation(line: 290, column: 51, scope: !2033)
!2037 = !DILocation(line: 290, column: 26, scope: !2038)
!2038 = !DILexicalBlockFile(scope: !2033, file: !747, discriminator: 12)
!2039 = !DILocation(line: 290, column: 7, scope: !2033)
!2040 = !DILocation(line: 290, column: 11, scope: !2033)
!2041 = !DILocation(line: 290, column: 6, scope: !2042)
!2042 = !DILexicalBlockFile(scope: !2028, file: !747, discriminator: 3)
!2043 = !DILocation(line: 290, column: 11, scope: !2044)
!2044 = !DILexicalBlockFile(scope: !2029, file: !747, discriminator: 4)
!2045 = !DILocation(line: 290, column: 28, scope: !2046)
!2046 = !DILexicalBlockFile(scope: !2028, file: !747, discriminator: 5)
!2047 = !DILocation(line: 290, column: 40, scope: !2048)
!2048 = !DILexicalBlockFile(scope: !2049, file: !747, discriminator: 6)
!2049 = distinct !DILexicalBlock(scope: !2029, file: !747, line: 290, column: 40)
!2050 = !DILocation(line: 290, column: 47, scope: !2048)
!2051 = !DILocation(line: 290, column: 1, scope: !2048)
!2052 = !DILocation(line: 290, column: 6, scope: !2053)
!2053 = !DILexicalBlockFile(scope: !2049, file: !747, discriminator: 7)
!2054 = !DILocation(line: 290, column: 15, scope: !2053)
!2055 = !DILocation(line: 290, column: 5, scope: !2053)
!2056 = !DILocation(line: 290, column: 40, scope: !2053)
!2057 = !DILocation(line: 290, column: 26, scope: !2058)
!2058 = !DILexicalBlockFile(scope: !2049, file: !747, discriminator: 8)
!2059 = distinct !{!2059, !2060}
!2060 = !DILocation(line: 290, column: 26, scope: !2049)
!2061 = !DILocation(line: 290, column: 31, scope: !2062)
!2062 = !DILexicalBlockFile(scope: !2063, file: !747, discriminator: 9)
!2063 = distinct !DILexicalBlock(scope: !2049, file: !747, line: 290, column: 29)
!2064 = !DILocation(line: 290, column: 109, scope: !2065)
!2065 = !DILexicalBlockFile(scope: !2062, file: !747, discriminator: 13)
!2066 = !DILocation(line: 290, column: 124, scope: !2062)
!2067 = !DILocation(line: 290, column: 132, scope: !2068)
!2068 = !DILexicalBlockFile(scope: !2063, file: !747, discriminator: 10)
!2069 = !DILocation(line: 290, column: 145, scope: !2070)
!2070 = !DILexicalBlockFile(scope: !2029, file: !747, discriminator: 11)
!2071 = !DILocation(line: 292, column: 22, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2011, file: !747, line: 292, column: 6)
!2073 = !DILocation(line: 292, column: 7, scope: !2072)
!2074 = !DILocation(line: 292, column: 6, scope: !2011)
!2075 = !DILocation(line: 294, column: 3, scope: !2072)
!2076 = !DILocation(line: 296, column: 16, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2011, file: !747, line: 296, column: 6)
!2078 = !DILocation(line: 296, column: 6, scope: !2077)
!2079 = !DILocation(line: 296, column: 30, scope: !2077)
!2080 = !DILocation(line: 296, column: 35, scope: !2077)
!2081 = !DILocation(line: 296, column: 39, scope: !2082)
!2082 = !DILexicalBlockFile(scope: !2077, file: !747, discriminator: 1)
!2083 = !DILocation(line: 296, column: 38, scope: !2082)
!2084 = !DILocation(line: 296, column: 47, scope: !2082)
!2085 = !DILocation(line: 296, column: 6, scope: !2082)
!2086 = !DILocation(line: 297, column: 97, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !747, line: 297, column: 7)
!2088 = distinct !DILexicalBlock(scope: !2077, file: !747, line: 296, column: 56)
!2089 = !DILocation(line: 297, column: 72, scope: !2087)
!2090 = !DILocation(line: 297, column: 56, scope: !2087)
!2091 = !DILocation(line: 297, column: 55, scope: !2087)
!2092 = !DILocation(line: 297, column: 30, scope: !2093)
!2093 = !DILexicalBlockFile(scope: !2087, file: !747, discriminator: 3)
!2094 = !DILocation(line: 297, column: 10, scope: !2087)
!2095 = !DILocation(line: 297, column: 7, scope: !2088)
!2096 = !DILocation(line: 297, column: 9, scope: !2097)
!2097 = !DILexicalBlockFile(scope: !2087, file: !747, discriminator: 1)
!2098 = !DILocation(line: 297, column: 7, scope: !2099)
!2099 = !DILexicalBlockFile(scope: !2088, file: !747, discriminator: 2)
!2100 = !DILocation(line: 298, column: 4, scope: !2087)
!2101 = distinct !{!2101, !2100}
!2102 = !DILocation(line: 298, column: 25, scope: !2103)
!2103 = !DILexicalBlockFile(scope: !2104, file: !747, discriminator: 1)
!2104 = distinct !DILexicalBlock(scope: !2087, file: !747, line: 298, column: 7)
!2105 = !DILocation(line: 298, column: 9, scope: !2103)
!2106 = !DILocation(line: 298, column: 36, scope: !2103)
!2107 = distinct !{!2107, !2108}
!2108 = !DILocation(line: 298, column: 36, scope: !2104)
!2109 = !DILocation(line: 298, column: 41, scope: !2110)
!2110 = !DILexicalBlockFile(scope: !2111, file: !747, discriminator: 2)
!2111 = distinct !DILexicalBlock(scope: !2104, file: !747, line: 298, column: 39)
!2112 = !DILocation(line: 298, column: 116, scope: !2113)
!2113 = !DILexicalBlockFile(scope: !2110, file: !747, discriminator: 5)
!2114 = !DILocation(line: 298, column: 131, scope: !2110)
!2115 = !DILocation(line: 298, column: 152, scope: !2116)
!2116 = !DILexicalBlockFile(scope: !2104, file: !747, discriminator: 3)
!2117 = !DILocation(line: 298, column: 152, scope: !2118)
!2118 = !DILexicalBlockFile(scope: !2104, file: !747, discriminator: 4)
!2119 = !DILocation(line: 300, column: 101, scope: !2088)
!2120 = !DILocation(line: 300, column: 76, scope: !2088)
!2121 = !DILocation(line: 300, column: 60, scope: !2088)
!2122 = !DILocation(line: 300, column: 59, scope: !2088)
!2123 = !DILocation(line: 300, column: 34, scope: !2124)
!2124 = !DILexicalBlockFile(scope: !2088, file: !747, discriminator: 1)
!2125 = !DILocation(line: 300, column: 14, scope: !2088)
!2126 = !DILocation(line: 300, column: 23, scope: !2088)
!2127 = !DILocation(line: 300, column: 11, scope: !2088)
!2128 = !DILocation(line: 301, column: 2, scope: !2088)
!2129 = !DILocation(line: 302, column: 16, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2011, file: !747, line: 302, column: 6)
!2131 = !DILocation(line: 302, column: 6, scope: !2130)
!2132 = !DILocation(line: 302, column: 31, scope: !2130)
!2133 = !DILocation(line: 302, column: 6, scope: !2011)
!2134 = !DILocation(line: 304, column: 4, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2130, file: !747, line: 302, column: 37)
!2136 = !DILocation(line: 304, column: 12, scope: !2135)
!2137 = !DILocation(line: 305, column: 2, scope: !2135)
!2138 = !DILocation(line: 307, column: 6, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2011, file: !747, line: 307, column: 6)
!2140 = !DILocation(line: 307, column: 14, scope: !2139)
!2141 = !DILocation(line: 307, column: 6, scope: !2011)
!2142 = !DILocation(line: 308, column: 17, scope: !2139)
!2143 = !DILocation(line: 308, column: 35, scope: !2139)
!2144 = !DILocation(line: 308, column: 3, scope: !2139)
!2145 = !DILocation(line: 310, column: 17, scope: !2139)
!2146 = !DILocation(line: 310, column: 38, scope: !2139)
!2147 = !DILocation(line: 310, column: 47, scope: !2139)
!2148 = !DILocation(line: 310, column: 3, scope: !2139)
!2149 = !DILocation(line: 312, column: 18, scope: !2011)
!2150 = !DILocation(line: 312, column: 2, scope: !2011)
!2151 = !DILocation(line: 313, column: 1, scope: !2011)
!2152 = !DILocation(line: 313, column: 1, scope: !2153)
!2153 = !DILexicalBlockFile(scope: !2011, file: !747, discriminator: 1)
!2154 = distinct !DISubprogram(name: "cmd_names", scope: !747, file: !747, line: 315, type: !886, isLocal: true, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !760)
!2155 = !DILocalVariable(name: "data", arg: 1, scope: !2154, file: !747, line: 315, type: !96)
!2156 = !DILocation(line: 315, column: 35, scope: !2154)
!2157 = !DILocalVariable(name: "server", arg: 2, scope: !2154, file: !747, line: 315, type: !98)
!2158 = !DILocation(line: 315, column: 57, scope: !2154)
!2159 = !DILocalVariable(name: "item", arg: 3, scope: !2154, file: !747, line: 316, type: !524)
!2160 = !DILocation(line: 316, column: 36, scope: !2154)
!2161 = !DILocalVariable(name: "optlist", scope: !2154, file: !747, line: 318, type: !373)
!2162 = !DILocation(line: 318, column: 14, scope: !2154)
!2163 = !DILocalVariable(name: "channel", scope: !2154, file: !747, line: 319, type: !118)
!2164 = !DILocation(line: 319, column: 8, scope: !2154)
!2165 = !DILocalVariable(name: "free_arg", scope: !2154, file: !747, line: 320, type: !81)
!2166 = !DILocation(line: 320, column: 8, scope: !2154)
!2167 = !DILocation(line: 322, column: 2, scope: !2154)
!2168 = distinct !{!2168, !2167}
!2169 = !DILocation(line: 322, column: 11, scope: !2170)
!2170 = !DILexicalBlockFile(scope: !2171, file: !747, discriminator: 1)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !747, line: 322, column: 11)
!2172 = distinct !DILexicalBlock(scope: !2154, file: !747, line: 322, column: 5)
!2173 = !DILocation(line: 322, column: 18, scope: !2170)
!2174 = !DILocation(line: 322, column: 1, scope: !2170)
!2175 = !DILocation(line: 322, column: 85, scope: !2176)
!2176 = !DILexicalBlockFile(scope: !2171, file: !747, discriminator: 2)
!2177 = !DILocation(line: 322, column: 67, scope: !2176)
!2178 = !DILocation(line: 322, column: 52, scope: !2176)
!2179 = !DILocation(line: 322, column: 51, scope: !2176)
!2180 = !DILocation(line: 322, column: 26, scope: !2181)
!2181 = !DILexicalBlockFile(scope: !2176, file: !747, discriminator: 12)
!2182 = !DILocation(line: 322, column: 7, scope: !2176)
!2183 = !DILocation(line: 322, column: 11, scope: !2176)
!2184 = !DILocation(line: 322, column: 6, scope: !2185)
!2185 = !DILexicalBlockFile(scope: !2171, file: !747, discriminator: 3)
!2186 = !DILocation(line: 322, column: 11, scope: !2187)
!2187 = !DILexicalBlockFile(scope: !2172, file: !747, discriminator: 4)
!2188 = !DILocation(line: 322, column: 28, scope: !2189)
!2189 = !DILexicalBlockFile(scope: !2171, file: !747, discriminator: 5)
!2190 = !DILocation(line: 322, column: 40, scope: !2191)
!2191 = !DILexicalBlockFile(scope: !2192, file: !747, discriminator: 6)
!2192 = distinct !DILexicalBlock(scope: !2172, file: !747, line: 322, column: 40)
!2193 = !DILocation(line: 322, column: 47, scope: !2191)
!2194 = !DILocation(line: 322, column: 1, scope: !2191)
!2195 = !DILocation(line: 322, column: 6, scope: !2196)
!2196 = !DILexicalBlockFile(scope: !2192, file: !747, discriminator: 7)
!2197 = !DILocation(line: 322, column: 15, scope: !2196)
!2198 = !DILocation(line: 322, column: 5, scope: !2196)
!2199 = !DILocation(line: 322, column: 40, scope: !2196)
!2200 = !DILocation(line: 322, column: 26, scope: !2201)
!2201 = !DILexicalBlockFile(scope: !2192, file: !747, discriminator: 8)
!2202 = distinct !{!2202, !2203}
!2203 = !DILocation(line: 322, column: 26, scope: !2192)
!2204 = !DILocation(line: 322, column: 31, scope: !2205)
!2205 = !DILexicalBlockFile(scope: !2206, file: !747, discriminator: 9)
!2206 = distinct !DILexicalBlock(scope: !2192, file: !747, line: 322, column: 29)
!2207 = !DILocation(line: 322, column: 109, scope: !2208)
!2208 = !DILexicalBlockFile(scope: !2205, file: !747, discriminator: 13)
!2209 = !DILocation(line: 322, column: 124, scope: !2205)
!2210 = !DILocation(line: 322, column: 132, scope: !2211)
!2211 = !DILexicalBlockFile(scope: !2206, file: !747, discriminator: 10)
!2212 = !DILocation(line: 322, column: 145, scope: !2213)
!2213 = !DILexicalBlockFile(scope: !2172, file: !747, discriminator: 11)
!2214 = !DILocation(line: 324, column: 22, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2154, file: !747, line: 324, column: 6)
!2216 = !DILocation(line: 324, column: 7, scope: !2215)
!2217 = !DILocation(line: 324, column: 6, scope: !2154)
!2218 = !DILocation(line: 327, column: 3, scope: !2215)
!2219 = !DILocation(line: 329, column: 16, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2154, file: !747, line: 329, column: 6)
!2221 = !DILocation(line: 329, column: 6, scope: !2220)
!2222 = !DILocation(line: 329, column: 30, scope: !2220)
!2223 = !DILocation(line: 329, column: 35, scope: !2220)
!2224 = !DILocation(line: 329, column: 39, scope: !2225)
!2225 = !DILexicalBlockFile(scope: !2220, file: !747, discriminator: 1)
!2226 = !DILocation(line: 329, column: 38, scope: !2225)
!2227 = !DILocation(line: 329, column: 47, scope: !2225)
!2228 = !DILocation(line: 329, column: 6, scope: !2225)
!2229 = !DILocation(line: 330, column: 97, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !747, line: 330, column: 7)
!2231 = distinct !DILexicalBlock(scope: !2220, file: !747, line: 329, column: 56)
!2232 = !DILocation(line: 330, column: 72, scope: !2230)
!2233 = !DILocation(line: 330, column: 56, scope: !2230)
!2234 = !DILocation(line: 330, column: 55, scope: !2230)
!2235 = !DILocation(line: 330, column: 30, scope: !2236)
!2236 = !DILexicalBlockFile(scope: !2230, file: !747, discriminator: 3)
!2237 = !DILocation(line: 330, column: 10, scope: !2230)
!2238 = !DILocation(line: 330, column: 7, scope: !2231)
!2239 = !DILocation(line: 330, column: 9, scope: !2240)
!2240 = !DILexicalBlockFile(scope: !2230, file: !747, discriminator: 1)
!2241 = !DILocation(line: 330, column: 7, scope: !2242)
!2242 = !DILexicalBlockFile(scope: !2231, file: !747, discriminator: 2)
!2243 = !DILocation(line: 331, column: 4, scope: !2230)
!2244 = distinct !{!2244, !2243}
!2245 = !DILocation(line: 331, column: 25, scope: !2246)
!2246 = !DILexicalBlockFile(scope: !2247, file: !747, discriminator: 1)
!2247 = distinct !DILexicalBlock(scope: !2230, file: !747, line: 331, column: 7)
!2248 = !DILocation(line: 331, column: 9, scope: !2246)
!2249 = !DILocation(line: 331, column: 36, scope: !2246)
!2250 = distinct !{!2250, !2251}
!2251 = !DILocation(line: 331, column: 36, scope: !2247)
!2252 = !DILocation(line: 331, column: 41, scope: !2253)
!2253 = !DILexicalBlockFile(scope: !2254, file: !747, discriminator: 2)
!2254 = distinct !DILexicalBlock(scope: !2247, file: !747, line: 331, column: 39)
!2255 = !DILocation(line: 331, column: 116, scope: !2256)
!2256 = !DILexicalBlockFile(scope: !2253, file: !747, discriminator: 5)
!2257 = !DILocation(line: 331, column: 131, scope: !2253)
!2258 = !DILocation(line: 331, column: 152, scope: !2259)
!2259 = !DILexicalBlockFile(scope: !2247, file: !747, discriminator: 3)
!2260 = !DILocation(line: 331, column: 152, scope: !2261)
!2261 = !DILexicalBlockFile(scope: !2247, file: !747, discriminator: 4)
!2262 = !DILocation(line: 333, column: 101, scope: !2231)
!2263 = !DILocation(line: 333, column: 76, scope: !2231)
!2264 = !DILocation(line: 333, column: 60, scope: !2231)
!2265 = !DILocation(line: 333, column: 59, scope: !2231)
!2266 = !DILocation(line: 333, column: 34, scope: !2267)
!2267 = !DILexicalBlockFile(scope: !2231, file: !747, discriminator: 1)
!2268 = !DILocation(line: 333, column: 14, scope: !2231)
!2269 = !DILocation(line: 333, column: 23, scope: !2231)
!2270 = !DILocation(line: 333, column: 11, scope: !2231)
!2271 = !DILocation(line: 334, column: 2, scope: !2231)
!2272 = !DILocation(line: 336, column: 16, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2154, file: !747, line: 336, column: 6)
!2274 = !DILocation(line: 336, column: 6, scope: !2273)
!2275 = !DILocation(line: 336, column: 31, scope: !2273)
!2276 = !DILocation(line: 336, column: 6, scope: !2154)
!2277 = !DILocation(line: 338, column: 16, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2273, file: !747, line: 336, column: 37)
!2279 = !DILocation(line: 338, column: 3, scope: !2278)
!2280 = !DILocation(line: 339, column: 2, scope: !2278)
!2281 = !DILocation(line: 340, column: 17, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2273, file: !747, line: 339, column: 9)
!2283 = !DILocation(line: 340, column: 37, scope: !2282)
!2284 = !DILocation(line: 340, column: 3, scope: !2282)
!2285 = !DILocation(line: 343, column: 18, scope: !2154)
!2286 = !DILocation(line: 343, column: 2, scope: !2154)
!2287 = !DILocation(line: 344, column: 1, scope: !2154)
!2288 = !DILocation(line: 344, column: 1, scope: !2289)
!2289 = !DILexicalBlockFile(scope: !2154, file: !747, discriminator: 1)
!2290 = distinct !DISubprogram(name: "cmd_nick", scope: !747, file: !747, line: 347, type: !886, isLocal: true, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !760)
!2291 = !DILocalVariable(name: "data", arg: 1, scope: !2290, file: !747, line: 347, type: !96)
!2292 = !DILocation(line: 347, column: 34, scope: !2290)
!2293 = !DILocalVariable(name: "server", arg: 2, scope: !2290, file: !747, line: 347, type: !98)
!2294 = !DILocation(line: 347, column: 56, scope: !2290)
!2295 = !DILocalVariable(name: "item", arg: 3, scope: !2290, file: !747, line: 347, type: !524)
!2296 = !DILocation(line: 347, column: 77, scope: !2290)
!2297 = !DILocalVariable(name: "nick", scope: !2290, file: !747, line: 349, type: !118)
!2298 = !DILocation(line: 349, column: 8, scope: !2290)
!2299 = !DILocalVariable(name: "free_arg", scope: !2290, file: !747, line: 350, type: !81)
!2300 = !DILocation(line: 350, column: 8, scope: !2290)
!2301 = !DILocation(line: 352, column: 2, scope: !2290)
!2302 = distinct !{!2302, !2301}
!2303 = !DILocation(line: 352, column: 10, scope: !2304)
!2304 = !DILexicalBlockFile(scope: !2305, file: !747, discriminator: 1)
!2305 = distinct !DILexicalBlock(scope: !2306, file: !747, line: 352, column: 10)
!2306 = distinct !DILexicalBlock(scope: !2290, file: !747, line: 352, column: 4)
!2307 = !DILocation(line: 352, column: 15, scope: !2304)
!2308 = !DILocation(line: 352, column: 5, scope: !2309)
!2309 = !DILexicalBlockFile(scope: !2310, file: !747, discriminator: 2)
!2310 = distinct !DILexicalBlock(scope: !2305, file: !747, line: 352, column: 3)
!2311 = !DILocation(line: 352, column: 14, scope: !2312)
!2312 = !DILexicalBlockFile(scope: !2313, file: !747, discriminator: 3)
!2313 = distinct !DILexicalBlock(scope: !2305, file: !747, line: 352, column: 12)
!2314 = !DILocation(line: 352, column: 99, scope: !2312)
!2315 = !DILocation(line: 352, column: 110, scope: !2316)
!2316 = !DILexicalBlockFile(scope: !2306, file: !747, discriminator: 4)
!2317 = !DILocation(line: 354, column: 2, scope: !2290)
!2318 = distinct !{!2318, !2317}
!2319 = !DILocation(line: 354, column: 11, scope: !2320)
!2320 = !DILexicalBlockFile(scope: !2321, file: !747, discriminator: 1)
!2321 = distinct !DILexicalBlock(scope: !2322, file: !747, line: 354, column: 11)
!2322 = distinct !DILexicalBlock(scope: !2290, file: !747, line: 354, column: 5)
!2323 = !DILocation(line: 354, column: 18, scope: !2320)
!2324 = !DILocation(line: 354, column: 1, scope: !2320)
!2325 = !DILocation(line: 354, column: 85, scope: !2326)
!2326 = !DILexicalBlockFile(scope: !2321, file: !747, discriminator: 2)
!2327 = !DILocation(line: 354, column: 67, scope: !2326)
!2328 = !DILocation(line: 354, column: 52, scope: !2326)
!2329 = !DILocation(line: 354, column: 51, scope: !2326)
!2330 = !DILocation(line: 354, column: 26, scope: !2331)
!2331 = !DILexicalBlockFile(scope: !2326, file: !747, discriminator: 12)
!2332 = !DILocation(line: 354, column: 7, scope: !2326)
!2333 = !DILocation(line: 354, column: 11, scope: !2326)
!2334 = !DILocation(line: 354, column: 6, scope: !2335)
!2335 = !DILexicalBlockFile(scope: !2321, file: !747, discriminator: 3)
!2336 = !DILocation(line: 354, column: 11, scope: !2337)
!2337 = !DILexicalBlockFile(scope: !2322, file: !747, discriminator: 4)
!2338 = !DILocation(line: 354, column: 28, scope: !2339)
!2339 = !DILexicalBlockFile(scope: !2321, file: !747, discriminator: 5)
!2340 = !DILocation(line: 354, column: 40, scope: !2341)
!2341 = !DILexicalBlockFile(scope: !2342, file: !747, discriminator: 6)
!2342 = distinct !DILexicalBlock(scope: !2322, file: !747, line: 354, column: 40)
!2343 = !DILocation(line: 354, column: 47, scope: !2341)
!2344 = !DILocation(line: 354, column: 1, scope: !2341)
!2345 = !DILocation(line: 354, column: 6, scope: !2346)
!2346 = !DILexicalBlockFile(scope: !2342, file: !747, discriminator: 7)
!2347 = !DILocation(line: 354, column: 15, scope: !2346)
!2348 = !DILocation(line: 354, column: 5, scope: !2346)
!2349 = !DILocation(line: 354, column: 40, scope: !2346)
!2350 = !DILocation(line: 354, column: 26, scope: !2351)
!2351 = !DILexicalBlockFile(scope: !2342, file: !747, discriminator: 8)
!2352 = distinct !{!2352, !2353}
!2353 = !DILocation(line: 354, column: 26, scope: !2342)
!2354 = !DILocation(line: 354, column: 31, scope: !2355)
!2355 = !DILexicalBlockFile(scope: !2356, file: !747, discriminator: 9)
!2356 = distinct !DILexicalBlock(scope: !2342, file: !747, line: 354, column: 29)
!2357 = !DILocation(line: 354, column: 109, scope: !2358)
!2358 = !DILexicalBlockFile(scope: !2355, file: !747, discriminator: 13)
!2359 = !DILocation(line: 354, column: 124, scope: !2355)
!2360 = !DILocation(line: 354, column: 132, scope: !2361)
!2361 = !DILexicalBlockFile(scope: !2356, file: !747, discriminator: 10)
!2362 = !DILocation(line: 354, column: 145, scope: !2363)
!2363 = !DILexicalBlockFile(scope: !2322, file: !747, discriminator: 11)
!2364 = !DILocation(line: 356, column: 22, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2290, file: !747, line: 356, column: 6)
!2366 = !DILocation(line: 356, column: 7, scope: !2365)
!2367 = !DILocation(line: 356, column: 6, scope: !2290)
!2368 = !DILocation(line: 357, column: 3, scope: !2365)
!2369 = !DILocation(line: 359, column: 9, scope: !2290)
!2370 = !DILocation(line: 359, column: 17, scope: !2290)
!2371 = !DILocation(line: 359, column: 2, scope: !2290)
!2372 = !DILocation(line: 360, column: 31, scope: !2290)
!2373 = !DILocation(line: 360, column: 22, scope: !2290)
!2374 = !DILocation(line: 360, column: 2, scope: !2290)
!2375 = !DILocation(line: 360, column: 10, scope: !2290)
!2376 = !DILocation(line: 360, column: 20, scope: !2290)
!2377 = !DILocation(line: 362, column: 16, scope: !2290)
!2378 = !DILocation(line: 362, column: 35, scope: !2290)
!2379 = !DILocation(line: 362, column: 2, scope: !2290)
!2380 = !DILocation(line: 363, column: 18, scope: !2290)
!2381 = !DILocation(line: 363, column: 2, scope: !2290)
!2382 = !DILocation(line: 364, column: 1, scope: !2290)
!2383 = !DILocation(line: 364, column: 1, scope: !2384)
!2384 = !DILexicalBlockFile(scope: !2290, file: !747, discriminator: 1)
!2385 = distinct !DISubprogram(name: "cmd_whois", scope: !747, file: !747, line: 390, type: !886, isLocal: true, isDefinition: true, scopeLine: 392, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !760)
!2386 = !DILocalVariable(name: "data", arg: 1, scope: !2385, file: !747, line: 390, type: !96)
!2387 = !DILocation(line: 390, column: 35, scope: !2385)
!2388 = !DILocalVariable(name: "server", arg: 2, scope: !2385, file: !747, line: 390, type: !98)
!2389 = !DILocation(line: 390, column: 57, scope: !2385)
!2390 = !DILocalVariable(name: "item", arg: 3, scope: !2385, file: !747, line: 391, type: !524)
!2391 = !DILocation(line: 391, column: 36, scope: !2385)
!2392 = !DILocalVariable(name: "optlist", scope: !2385, file: !747, line: 393, type: !373)
!2393 = !DILocation(line: 393, column: 14, scope: !2385)
!2394 = !DILocalVariable(name: "qserver", scope: !2385, file: !747, line: 394, type: !118)
!2395 = !DILocation(line: 394, column: 8, scope: !2385)
!2396 = !DILocalVariable(name: "query", scope: !2385, file: !747, line: 394, type: !118)
!2397 = !DILocation(line: 394, column: 18, scope: !2385)
!2398 = !DILocalVariable(name: "event_402", scope: !2385, file: !747, line: 394, type: !118)
!2399 = !DILocation(line: 394, column: 26, scope: !2385)
!2400 = !DILocalVariable(name: "str", scope: !2385, file: !747, line: 394, type: !118)
!2401 = !DILocation(line: 394, column: 38, scope: !2385)
!2402 = !DILocalVariable(name: "free_arg", scope: !2385, file: !747, line: 395, type: !81)
!2403 = !DILocation(line: 395, column: 8, scope: !2385)
!2404 = !DILocalVariable(name: "free_nick", scope: !2385, file: !747, line: 396, type: !79)
!2405 = !DILocation(line: 396, column: 6, scope: !2385)
!2406 = !DILocation(line: 398, column: 2, scope: !2385)
!2407 = distinct !{!2407, !2406}
!2408 = !DILocation(line: 398, column: 11, scope: !2409)
!2409 = !DILexicalBlockFile(scope: !2410, file: !747, discriminator: 1)
!2410 = distinct !DILexicalBlock(scope: !2411, file: !747, line: 398, column: 11)
!2411 = distinct !DILexicalBlock(scope: !2385, file: !747, line: 398, column: 5)
!2412 = !DILocation(line: 398, column: 18, scope: !2409)
!2413 = !DILocation(line: 398, column: 1, scope: !2409)
!2414 = !DILocation(line: 398, column: 85, scope: !2415)
!2415 = !DILexicalBlockFile(scope: !2410, file: !747, discriminator: 2)
!2416 = !DILocation(line: 398, column: 67, scope: !2415)
!2417 = !DILocation(line: 398, column: 52, scope: !2415)
!2418 = !DILocation(line: 398, column: 51, scope: !2415)
!2419 = !DILocation(line: 398, column: 26, scope: !2420)
!2420 = !DILexicalBlockFile(scope: !2415, file: !747, discriminator: 12)
!2421 = !DILocation(line: 398, column: 7, scope: !2415)
!2422 = !DILocation(line: 398, column: 11, scope: !2415)
!2423 = !DILocation(line: 398, column: 6, scope: !2424)
!2424 = !DILexicalBlockFile(scope: !2410, file: !747, discriminator: 3)
!2425 = !DILocation(line: 398, column: 11, scope: !2426)
!2426 = !DILexicalBlockFile(scope: !2411, file: !747, discriminator: 4)
!2427 = !DILocation(line: 398, column: 28, scope: !2428)
!2428 = !DILexicalBlockFile(scope: !2410, file: !747, discriminator: 5)
!2429 = !DILocation(line: 398, column: 40, scope: !2430)
!2430 = !DILexicalBlockFile(scope: !2431, file: !747, discriminator: 6)
!2431 = distinct !DILexicalBlock(scope: !2411, file: !747, line: 398, column: 40)
!2432 = !DILocation(line: 398, column: 47, scope: !2430)
!2433 = !DILocation(line: 398, column: 1, scope: !2430)
!2434 = !DILocation(line: 398, column: 6, scope: !2435)
!2435 = !DILexicalBlockFile(scope: !2431, file: !747, discriminator: 7)
!2436 = !DILocation(line: 398, column: 15, scope: !2435)
!2437 = !DILocation(line: 398, column: 5, scope: !2435)
!2438 = !DILocation(line: 398, column: 40, scope: !2435)
!2439 = !DILocation(line: 398, column: 26, scope: !2440)
!2440 = !DILexicalBlockFile(scope: !2431, file: !747, discriminator: 8)
!2441 = distinct !{!2441, !2442}
!2442 = !DILocation(line: 398, column: 26, scope: !2431)
!2443 = !DILocation(line: 398, column: 31, scope: !2444)
!2444 = !DILexicalBlockFile(scope: !2445, file: !747, discriminator: 9)
!2445 = distinct !DILexicalBlock(scope: !2431, file: !747, line: 398, column: 29)
!2446 = !DILocation(line: 398, column: 109, scope: !2447)
!2447 = !DILexicalBlockFile(scope: !2444, file: !747, discriminator: 13)
!2448 = !DILocation(line: 398, column: 124, scope: !2444)
!2449 = !DILocation(line: 398, column: 132, scope: !2450)
!2450 = !DILexicalBlockFile(scope: !2445, file: !747, discriminator: 10)
!2451 = !DILocation(line: 398, column: 145, scope: !2452)
!2452 = !DILexicalBlockFile(scope: !2411, file: !747, discriminator: 11)
!2453 = !DILocation(line: 400, column: 22, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2385, file: !747, line: 400, column: 6)
!2455 = !DILocation(line: 400, column: 7, scope: !2454)
!2456 = !DILocation(line: 400, column: 6, scope: !2385)
!2457 = !DILocation(line: 403, column: 3, scope: !2454)
!2458 = !DILocation(line: 406, column: 122, scope: !2385)
!2459 = !DILocation(line: 406, column: 165, scope: !2385)
!2460 = !DILocation(line: 406, column: 147, scope: !2385)
!2461 = !DILocation(line: 406, column: 132, scope: !2385)
!2462 = !DILocation(line: 406, column: 90, scope: !2463)
!2463 = !DILexicalBlockFile(scope: !2385, file: !747, discriminator: 1)
!2464 = !DILocation(line: 406, column: 90, scope: !2385)
!2465 = !DILocation(line: 406, column: 72, scope: !2466)
!2466 = !DILexicalBlockFile(scope: !2385, file: !747, discriminator: 2)
!2467 = !DILocation(line: 406, column: 57, scope: !2385)
!2468 = !DILocation(line: 406, column: 56, scope: !2385)
!2469 = !DILocation(line: 406, column: 31, scope: !2470)
!2470 = !DILexicalBlockFile(scope: !2385, file: !747, discriminator: 3)
!2471 = !DILocation(line: 406, column: 12, scope: !2385)
!2472 = !DILocation(line: 406, column: 9, scope: !2385)
!2473 = !DILocation(line: 408, column: 6, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2385, file: !747, line: 408, column: 6)
!2475 = !DILocation(line: 408, column: 13, scope: !2474)
!2476 = !DILocation(line: 408, column: 6, scope: !2385)
!2477 = !DILocation(line: 409, column: 19, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2474, file: !747, line: 408, column: 21)
!2479 = !DILocation(line: 409, column: 3, scope: !2478)
!2480 = !DILocation(line: 410, column: 3, scope: !2478)
!2481 = !DILocation(line: 413, column: 7, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2385, file: !747, line: 413, column: 6)
!2483 = !DILocation(line: 413, column: 6, scope: !2482)
!2484 = !DILocation(line: 413, column: 13, scope: !2482)
!2485 = !DILocation(line: 413, column: 6, scope: !2385)
!2486 = !DILocation(line: 414, column: 11, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2482, file: !747, line: 413, column: 22)
!2488 = !DILocation(line: 414, column: 9, scope: !2487)
!2489 = !DILocation(line: 415, column: 11, scope: !2487)
!2490 = !DILocation(line: 416, column: 2, scope: !2487)
!2491 = !DILocation(line: 417, column: 7, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2385, file: !747, line: 417, column: 6)
!2493 = !DILocation(line: 417, column: 6, scope: !2492)
!2494 = !DILocation(line: 417, column: 13, scope: !2492)
!2495 = !DILocation(line: 417, column: 6, scope: !2385)
!2496 = !DILocalVariable(name: "queryitem", scope: !2497, file: !747, line: 418, type: !597)
!2497 = distinct !DILexicalBlock(scope: !2492, file: !747, line: 417, column: 22)
!2498 = !DILocation(line: 418, column: 14, scope: !2497)
!2499 = !DILocation(line: 418, column: 66, scope: !2497)
!2500 = !DILocation(line: 418, column: 41, scope: !2497)
!2501 = !DILocation(line: 418, column: 27, scope: !2497)
!2502 = !DILocation(line: 419, column: 7, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2497, file: !747, line: 419, column: 7)
!2504 = !DILocation(line: 419, column: 17, scope: !2503)
!2505 = !DILocation(line: 419, column: 7, scope: !2497)
!2506 = !DILocation(line: 420, column: 12, scope: !2503)
!2507 = !DILocation(line: 420, column: 20, scope: !2503)
!2508 = !DILocation(line: 420, column: 10, scope: !2503)
!2509 = !DILocation(line: 420, column: 4, scope: !2503)
!2510 = !DILocation(line: 422, column: 22, scope: !2503)
!2511 = !DILocation(line: 422, column: 33, scope: !2503)
!2512 = !DILocation(line: 422, column: 20, scope: !2503)
!2513 = !DILocation(line: 422, column: 10, scope: !2503)
!2514 = !DILocation(line: 423, column: 2, scope: !2497)
!2515 = !DILocation(line: 425, column: 16, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2385, file: !747, line: 425, column: 6)
!2517 = !DILocation(line: 425, column: 6, scope: !2516)
!2518 = !DILocation(line: 425, column: 28, scope: !2516)
!2519 = !DILocation(line: 425, column: 33, scope: !2516)
!2520 = !DILocation(line: 426, column: 26, scope: !2516)
!2521 = !DILocation(line: 426, column: 6, scope: !2516)
!2522 = !DILocation(line: 426, column: 42, scope: !2516)
!2523 = !DILocation(line: 425, column: 6, scope: !2463)
!2524 = !DILocation(line: 427, column: 3, scope: !2516)
!2525 = distinct !{!2525, !2524}
!2526 = !DILocation(line: 427, column: 24, scope: !2527)
!2527 = !DILexicalBlockFile(scope: !2528, file: !747, discriminator: 1)
!2528 = distinct !DILexicalBlock(scope: !2516, file: !747, line: 427, column: 6)
!2529 = !DILocation(line: 427, column: 8, scope: !2527)
!2530 = !DILocation(line: 427, column: 35, scope: !2527)
!2531 = distinct !{!2531, !2532}
!2532 = !DILocation(line: 427, column: 35, scope: !2528)
!2533 = !DILocation(line: 427, column: 40, scope: !2534)
!2534 = !DILexicalBlockFile(scope: !2535, file: !747, discriminator: 2)
!2535 = distinct !DILexicalBlock(scope: !2528, file: !747, line: 427, column: 38)
!2536 = !DILocation(line: 427, column: 118, scope: !2537)
!2537 = !DILexicalBlockFile(scope: !2534, file: !747, discriminator: 5)
!2538 = !DILocation(line: 427, column: 133, scope: !2534)
!2539 = !DILocation(line: 427, column: 154, scope: !2540)
!2540 = !DILexicalBlockFile(scope: !2528, file: !747, discriminator: 3)
!2541 = !DILocation(line: 427, column: 154, scope: !2542)
!2542 = !DILexicalBlockFile(scope: !2528, file: !747, discriminator: 4)
!2543 = !DILocation(line: 429, column: 12, scope: !2385)
!2544 = !DILocation(line: 430, column: 7, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2385, file: !747, line: 430, column: 6)
!2546 = !DILocation(line: 430, column: 6, scope: !2545)
!2547 = !DILocation(line: 430, column: 15, scope: !2545)
!2548 = !DILocation(line: 430, column: 6, scope: !2385)
!2549 = !DILocation(line: 431, column: 19, scope: !2545)
!2550 = !DILocation(line: 431, column: 39, scope: !2545)
!2551 = !DILocation(line: 431, column: 3, scope: !2545)
!2552 = !DILocation(line: 433, column: 19, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2545, file: !747, line: 432, column: 7)
!2554 = !DILocation(line: 433, column: 42, scope: !2553)
!2555 = !DILocation(line: 433, column: 51, scope: !2553)
!2556 = !DILocation(line: 433, column: 3, scope: !2553)
!2557 = !DILocation(line: 434, column: 26, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2553, file: !747, line: 434, column: 7)
!2559 = !DILocation(line: 434, column: 35, scope: !2558)
!2560 = !DILocation(line: 434, column: 7, scope: !2558)
!2561 = !DILocation(line: 434, column: 42, scope: !2558)
!2562 = !DILocation(line: 434, column: 7, scope: !2553)
!2563 = !DILocation(line: 435, column: 14, scope: !2558)
!2564 = !DILocation(line: 435, column: 4, scope: !2558)
!2565 = !DILocation(line: 438, column: 32, scope: !2385)
!2566 = !DILocation(line: 438, column: 10, scope: !2385)
!2567 = !DILocation(line: 438, column: 8, scope: !2385)
!2568 = !DILocation(line: 440, column: 20, scope: !2385)
!2569 = !DILocation(line: 440, column: 34, scope: !2385)
!2570 = !DILocation(line: 440, column: 8, scope: !2385)
!2571 = !DILocation(line: 440, column: 6, scope: !2385)
!2572 = !DILocation(line: 441, column: 24, scope: !2385)
!2573 = !DILocation(line: 441, column: 44, scope: !2385)
!2574 = !DILocation(line: 444, column: 29, scope: !2385)
!2575 = !DILocation(line: 447, column: 30, scope: !2385)
!2576 = !DILocation(line: 441, column: 2, scope: !2385)
!2577 = !DILocation(line: 450, column: 9, scope: !2385)
!2578 = !DILocation(line: 450, column: 2, scope: !2385)
!2579 = !DILocation(line: 452, column: 2, scope: !2385)
!2580 = !DILocation(line: 452, column: 10, scope: !2385)
!2581 = !DILocation(line: 452, column: 22, scope: !2385)
!2582 = !DILocation(line: 453, column: 21, scope: !2385)
!2583 = !DILocation(line: 453, column: 29, scope: !2385)
!2584 = !DILocation(line: 453, column: 37, scope: !2385)
!2585 = !DILocation(line: 453, column: 45, scope: !2385)
!2586 = !DILocation(line: 453, column: 53, scope: !2385)
!2587 = !DILocation(line: 453, column: 2, scope: !2385)
!2588 = !DILocation(line: 455, column: 6, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2385, file: !747, line: 455, column: 6)
!2590 = !DILocation(line: 455, column: 6, scope: !2385)
!2591 = !DILocation(line: 455, column: 24, scope: !2592)
!2592 = !DILexicalBlockFile(scope: !2589, file: !747, discriminator: 1)
!2593 = !DILocation(line: 455, column: 17, scope: !2592)
!2594 = !DILocation(line: 456, column: 18, scope: !2385)
!2595 = !DILocation(line: 456, column: 2, scope: !2385)
!2596 = !DILocation(line: 457, column: 1, scope: !2385)
!2597 = !DILocation(line: 457, column: 1, scope: !2463)
!2598 = distinct !DISubprogram(name: "cmd_whowas", scope: !747, file: !747, line: 499, type: !2599, isLocal: true, isDefinition: true, scopeLine: 500, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !760)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{null, !96, !98}
!2601 = !DILocalVariable(name: "data", arg: 1, scope: !2598, file: !747, line: 499, type: !96)
!2602 = !DILocation(line: 499, column: 36, scope: !2598)
!2603 = !DILocalVariable(name: "server", arg: 2, scope: !2598, file: !747, line: 499, type: !98)
!2604 = !DILocation(line: 499, column: 58, scope: !2598)
!2605 = !DILocalVariable(name: "nicks", scope: !2598, file: !747, line: 501, type: !118)
!2606 = !DILocation(line: 501, column: 8, scope: !2598)
!2607 = !DILocalVariable(name: "rest", scope: !2598, file: !747, line: 501, type: !118)
!2608 = !DILocation(line: 501, column: 16, scope: !2598)
!2609 = !DILocalVariable(name: "nicks_redir", scope: !2598, file: !747, line: 501, type: !118)
!2610 = !DILocation(line: 501, column: 23, scope: !2598)
!2611 = !DILocalVariable(name: "free_arg", scope: !2598, file: !747, line: 502, type: !81)
!2612 = !DILocation(line: 502, column: 8, scope: !2598)
!2613 = !DILocalVariable(name: "free_nick", scope: !2598, file: !747, line: 503, type: !79)
!2614 = !DILocation(line: 503, column: 6, scope: !2598)
!2615 = !DILocation(line: 505, column: 2, scope: !2598)
!2616 = distinct !{!2616, !2615}
!2617 = !DILocation(line: 505, column: 11, scope: !2618)
!2618 = !DILexicalBlockFile(scope: !2619, file: !747, discriminator: 1)
!2619 = distinct !DILexicalBlock(scope: !2620, file: !747, line: 505, column: 11)
!2620 = distinct !DILexicalBlock(scope: !2598, file: !747, line: 505, column: 5)
!2621 = !DILocation(line: 505, column: 18, scope: !2618)
!2622 = !DILocation(line: 505, column: 1, scope: !2618)
!2623 = !DILocation(line: 505, column: 85, scope: !2624)
!2624 = !DILexicalBlockFile(scope: !2619, file: !747, discriminator: 2)
!2625 = !DILocation(line: 505, column: 67, scope: !2624)
!2626 = !DILocation(line: 505, column: 52, scope: !2624)
!2627 = !DILocation(line: 505, column: 51, scope: !2624)
!2628 = !DILocation(line: 505, column: 26, scope: !2629)
!2629 = !DILexicalBlockFile(scope: !2624, file: !747, discriminator: 12)
!2630 = !DILocation(line: 505, column: 7, scope: !2624)
!2631 = !DILocation(line: 505, column: 11, scope: !2624)
!2632 = !DILocation(line: 505, column: 6, scope: !2633)
!2633 = !DILexicalBlockFile(scope: !2619, file: !747, discriminator: 3)
!2634 = !DILocation(line: 505, column: 11, scope: !2635)
!2635 = !DILexicalBlockFile(scope: !2620, file: !747, discriminator: 4)
!2636 = !DILocation(line: 505, column: 28, scope: !2637)
!2637 = !DILexicalBlockFile(scope: !2619, file: !747, discriminator: 5)
!2638 = !DILocation(line: 505, column: 40, scope: !2639)
!2639 = !DILexicalBlockFile(scope: !2640, file: !747, discriminator: 6)
!2640 = distinct !DILexicalBlock(scope: !2620, file: !747, line: 505, column: 40)
!2641 = !DILocation(line: 505, column: 47, scope: !2639)
!2642 = !DILocation(line: 505, column: 1, scope: !2639)
!2643 = !DILocation(line: 505, column: 6, scope: !2644)
!2644 = !DILexicalBlockFile(scope: !2640, file: !747, discriminator: 7)
!2645 = !DILocation(line: 505, column: 15, scope: !2644)
!2646 = !DILocation(line: 505, column: 5, scope: !2644)
!2647 = !DILocation(line: 505, column: 40, scope: !2644)
!2648 = !DILocation(line: 505, column: 26, scope: !2649)
!2649 = !DILexicalBlockFile(scope: !2640, file: !747, discriminator: 8)
!2650 = distinct !{!2650, !2651}
!2651 = !DILocation(line: 505, column: 26, scope: !2640)
!2652 = !DILocation(line: 505, column: 31, scope: !2653)
!2653 = !DILexicalBlockFile(scope: !2654, file: !747, discriminator: 9)
!2654 = distinct !DILexicalBlock(scope: !2640, file: !747, line: 505, column: 29)
!2655 = !DILocation(line: 505, column: 109, scope: !2656)
!2656 = !DILexicalBlockFile(scope: !2653, file: !747, discriminator: 13)
!2657 = !DILocation(line: 505, column: 124, scope: !2653)
!2658 = !DILocation(line: 505, column: 132, scope: !2659)
!2659 = !DILexicalBlockFile(scope: !2654, file: !747, discriminator: 10)
!2660 = !DILocation(line: 505, column: 145, scope: !2661)
!2661 = !DILexicalBlockFile(scope: !2620, file: !747, discriminator: 11)
!2662 = !DILocation(line: 507, column: 22, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2598, file: !747, line: 507, column: 6)
!2664 = !DILocation(line: 507, column: 7, scope: !2663)
!2665 = !DILocation(line: 507, column: 6, scope: !2598)
!2666 = !DILocation(line: 509, column: 3, scope: !2663)
!2667 = !DILocation(line: 510, column: 7, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2598, file: !747, line: 510, column: 6)
!2669 = !DILocation(line: 510, column: 6, scope: !2668)
!2670 = !DILocation(line: 510, column: 13, scope: !2668)
!2671 = !DILocation(line: 510, column: 6, scope: !2598)
!2672 = !DILocation(line: 510, column: 30, scope: !2673)
!2673 = !DILexicalBlockFile(scope: !2668, file: !747, discriminator: 1)
!2674 = !DILocation(line: 510, column: 38, scope: !2673)
!2675 = !DILocation(line: 510, column: 28, scope: !2673)
!2676 = !DILocation(line: 510, column: 22, scope: !2673)
!2677 = !DILocation(line: 512, column: 38, scope: !2598)
!2678 = !DILocation(line: 512, column: 16, scope: !2598)
!2679 = !DILocation(line: 512, column: 14, scope: !2598)
!2680 = !DILocation(line: 513, column: 24, scope: !2598)
!2681 = !DILocation(line: 513, column: 45, scope: !2598)
!2682 = !DILocation(line: 513, column: 2, scope: !2598)
!2683 = !DILocation(line: 516, column: 6, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2598, file: !747, line: 516, column: 6)
!2685 = !DILocation(line: 516, column: 6, scope: !2598)
!2686 = !DILocation(line: 516, column: 24, scope: !2687)
!2687 = !DILexicalBlockFile(scope: !2684, file: !747, discriminator: 1)
!2688 = !DILocation(line: 516, column: 17, scope: !2687)
!2689 = !DILocation(line: 518, column: 2, scope: !2598)
!2690 = !DILocation(line: 518, column: 10, scope: !2598)
!2691 = !DILocation(line: 518, column: 23, scope: !2598)
!2692 = !DILocation(line: 520, column: 6, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2598, file: !747, line: 520, column: 6)
!2694 = !DILocation(line: 520, column: 14, scope: !2693)
!2695 = !DILocation(line: 520, column: 6, scope: !2598)
!2696 = !DILocation(line: 521, column: 17, scope: !2693)
!2697 = !DILocation(line: 521, column: 38, scope: !2693)
!2698 = !DILocation(line: 521, column: 3, scope: !2693)
!2699 = !DILocation(line: 523, column: 17, scope: !2693)
!2700 = !DILocation(line: 523, column: 41, scope: !2693)
!2701 = !DILocation(line: 523, column: 48, scope: !2693)
!2702 = !DILocation(line: 523, column: 3, scope: !2693)
!2703 = !DILocation(line: 525, column: 18, scope: !2598)
!2704 = !DILocation(line: 525, column: 2, scope: !2598)
!2705 = !DILocation(line: 526, column: 1, scope: !2598)
!2706 = !DILocation(line: 526, column: 1, scope: !2707)
!2707 = !DILexicalBlockFile(scope: !2598, file: !747, discriminator: 1)
!2708 = distinct !DISubprogram(name: "cmd_ping", scope: !747, file: !747, line: 529, type: !886, isLocal: true, isDefinition: true, scopeLine: 530, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !760)
!2709 = !DILocalVariable(name: "data", arg: 1, scope: !2708, file: !747, line: 529, type: !96)
!2710 = !DILocation(line: 529, column: 34, scope: !2708)
!2711 = !DILocalVariable(name: "server", arg: 2, scope: !2708, file: !747, line: 529, type: !98)
!2712 = !DILocation(line: 529, column: 56, scope: !2708)
!2713 = !DILocalVariable(name: "item", arg: 3, scope: !2708, file: !747, line: 529, type: !524)
!2714 = !DILocation(line: 529, column: 77, scope: !2708)
!2715 = !DILocalVariable(name: "tv", scope: !2708, file: !747, line: 531, type: !385)
!2716 = !DILocation(line: 531, column: 11, scope: !2708)
!2717 = !DILocalVariable(name: "str", scope: !2708, file: !747, line: 532, type: !118)
!2718 = !DILocation(line: 532, column: 8, scope: !2708)
!2719 = !DILocation(line: 534, column: 2, scope: !2708)
!2720 = distinct !{!2720, !2719}
!2721 = !DILocation(line: 534, column: 11, scope: !2722)
!2722 = !DILexicalBlockFile(scope: !2723, file: !747, discriminator: 1)
!2723 = distinct !DILexicalBlock(scope: !2724, file: !747, line: 534, column: 11)
!2724 = distinct !DILexicalBlock(scope: !2708, file: !747, line: 534, column: 5)
!2725 = !DILocation(line: 534, column: 18, scope: !2722)
!2726 = !DILocation(line: 534, column: 1, scope: !2722)
!2727 = !DILocation(line: 534, column: 85, scope: !2728)
!2728 = !DILexicalBlockFile(scope: !2723, file: !747, discriminator: 2)
!2729 = !DILocation(line: 534, column: 67, scope: !2728)
!2730 = !DILocation(line: 534, column: 52, scope: !2728)
!2731 = !DILocation(line: 534, column: 51, scope: !2728)
!2732 = !DILocation(line: 534, column: 26, scope: !2733)
!2733 = !DILexicalBlockFile(scope: !2728, file: !747, discriminator: 12)
!2734 = !DILocation(line: 534, column: 7, scope: !2728)
!2735 = !DILocation(line: 534, column: 11, scope: !2728)
!2736 = !DILocation(line: 534, column: 6, scope: !2737)
!2737 = !DILexicalBlockFile(scope: !2723, file: !747, discriminator: 3)
!2738 = !DILocation(line: 534, column: 11, scope: !2739)
!2739 = !DILexicalBlockFile(scope: !2724, file: !747, discriminator: 4)
!2740 = !DILocation(line: 534, column: 28, scope: !2741)
!2741 = !DILexicalBlockFile(scope: !2723, file: !747, discriminator: 5)
!2742 = !DILocation(line: 534, column: 40, scope: !2743)
!2743 = !DILexicalBlockFile(scope: !2744, file: !747, discriminator: 6)
!2744 = distinct !DILexicalBlock(scope: !2724, file: !747, line: 534, column: 40)
!2745 = !DILocation(line: 534, column: 47, scope: !2743)
!2746 = !DILocation(line: 534, column: 1, scope: !2743)
!2747 = !DILocation(line: 534, column: 6, scope: !2748)
!2748 = !DILexicalBlockFile(scope: !2744, file: !747, discriminator: 7)
!2749 = !DILocation(line: 534, column: 15, scope: !2748)
!2750 = !DILocation(line: 534, column: 5, scope: !2748)
!2751 = !DILocation(line: 534, column: 40, scope: !2748)
!2752 = !DILocation(line: 534, column: 26, scope: !2753)
!2753 = !DILexicalBlockFile(scope: !2744, file: !747, discriminator: 8)
!2754 = distinct !{!2754, !2755}
!2755 = !DILocation(line: 534, column: 26, scope: !2744)
!2756 = !DILocation(line: 534, column: 31, scope: !2757)
!2757 = !DILexicalBlockFile(scope: !2758, file: !747, discriminator: 9)
!2758 = distinct !DILexicalBlock(scope: !2744, file: !747, line: 534, column: 29)
!2759 = !DILocation(line: 534, column: 109, scope: !2760)
!2760 = !DILexicalBlockFile(scope: !2757, file: !747, discriminator: 13)
!2761 = !DILocation(line: 534, column: 124, scope: !2757)
!2762 = !DILocation(line: 534, column: 132, scope: !2763)
!2763 = !DILexicalBlockFile(scope: !2758, file: !747, discriminator: 10)
!2764 = !DILocation(line: 534, column: 145, scope: !2765)
!2765 = !DILexicalBlockFile(scope: !2724, file: !747, discriminator: 11)
!2766 = !DILocation(line: 536, column: 7, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2708, file: !747, line: 536, column: 6)
!2768 = !DILocation(line: 536, column: 6, scope: !2767)
!2769 = !DILocation(line: 536, column: 12, scope: !2767)
!2770 = !DILocation(line: 536, column: 6, scope: !2708)
!2771 = !DILocation(line: 537, column: 49, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2773, file: !747, line: 537, column: 7)
!2773 = distinct !DILexicalBlock(scope: !2767, file: !747, line: 536, column: 21)
!2774 = !DILocation(line: 537, column: 24, scope: !2772)
!2775 = !DILocation(line: 537, column: 10, scope: !2772)
!2776 = !DILocation(line: 537, column: 7, scope: !2773)
!2777 = !DILocation(line: 537, column: 9, scope: !2778)
!2778 = !DILexicalBlockFile(scope: !2772, file: !747, discriminator: 1)
!2779 = !DILocation(line: 537, column: 7, scope: !2780)
!2780 = !DILexicalBlockFile(scope: !2773, file: !747, discriminator: 2)
!2781 = !DILocation(line: 538, column: 4, scope: !2772)
!2782 = distinct !{!2782, !2781}
!2783 = !DILocation(line: 538, column: 9, scope: !2784)
!2784 = !DILexicalBlockFile(scope: !2785, file: !747, discriminator: 1)
!2785 = distinct !DILexicalBlock(scope: !2772, file: !747, line: 538, column: 7)
!2786 = !DILocation(line: 538, column: 91, scope: !2787)
!2787 = !DILexicalBlockFile(scope: !2784, file: !747, discriminator: 3)
!2788 = !DILocation(line: 538, column: 106, scope: !2784)
!2789 = !DILocation(line: 538, column: 114, scope: !2790)
!2790 = !DILexicalBlockFile(scope: !2785, file: !747, discriminator: 2)
!2791 = !DILocation(line: 539, column: 12, scope: !2773)
!2792 = !DILocation(line: 539, column: 19, scope: !2773)
!2793 = !DILocation(line: 539, column: 30, scope: !2773)
!2794 = !DILocation(line: 539, column: 11, scope: !2773)
!2795 = !DILocation(line: 539, column: 8, scope: !2773)
!2796 = !DILocation(line: 540, column: 2, scope: !2773)
!2797 = !DILocation(line: 542, column: 2, scope: !2708)
!2798 = !DILocation(line: 544, column: 43, scope: !2708)
!2799 = !DILocation(line: 544, column: 52, scope: !2708)
!2800 = !DILocation(line: 544, column: 63, scope: !2708)
!2801 = !DILocation(line: 544, column: 8, scope: !2708)
!2802 = !DILocation(line: 544, column: 6, scope: !2708)
!2803 = !DILocation(line: 545, column: 33, scope: !2708)
!2804 = !DILocation(line: 545, column: 38, scope: !2708)
!2805 = !DILocation(line: 545, column: 46, scope: !2708)
!2806 = !DILocation(line: 545, column: 2, scope: !2708)
!2807 = !DILocation(line: 546, column: 9, scope: !2708)
!2808 = !DILocation(line: 546, column: 2, scope: !2708)
!2809 = !DILocation(line: 547, column: 1, scope: !2708)
!2810 = !DILocation(line: 547, column: 1, scope: !2811)
!2811 = !DILexicalBlockFile(scope: !2708, file: !747, discriminator: 1)
!2812 = distinct !DISubprogram(name: "command_2self", scope: !747, file: !747, line: 951, type: !2599, isLocal: true, isDefinition: true, scopeLine: 952, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !760)
!2813 = !DILocalVariable(name: "data", arg: 1, scope: !2812, file: !747, line: 951, type: !96)
!2814 = !DILocation(line: 951, column: 39, scope: !2812)
!2815 = !DILocalVariable(name: "server", arg: 2, scope: !2812, file: !747, line: 951, type: !98)
!2816 = !DILocation(line: 951, column: 61, scope: !2812)
!2817 = !DILocalVariable(name: "target", scope: !2812, file: !747, line: 953, type: !118)
!2818 = !DILocation(line: 953, column: 8, scope: !2812)
!2819 = !DILocalVariable(name: "text", scope: !2812, file: !747, line: 953, type: !118)
!2820 = !DILocation(line: 953, column: 17, scope: !2812)
!2821 = !DILocalVariable(name: "free_arg", scope: !2812, file: !747, line: 954, type: !81)
!2822 = !DILocation(line: 954, column: 8, scope: !2812)
!2823 = !DILocation(line: 956, column: 2, scope: !2812)
!2824 = distinct !{!2824, !2823}
!2825 = !DILocation(line: 956, column: 11, scope: !2826)
!2826 = !DILexicalBlockFile(scope: !2827, file: !747, discriminator: 1)
!2827 = distinct !DILexicalBlock(scope: !2828, file: !747, line: 956, column: 11)
!2828 = distinct !DILexicalBlock(scope: !2812, file: !747, line: 956, column: 5)
!2829 = !DILocation(line: 956, column: 18, scope: !2826)
!2830 = !DILocation(line: 956, column: 1, scope: !2826)
!2831 = !DILocation(line: 956, column: 85, scope: !2832)
!2832 = !DILexicalBlockFile(scope: !2827, file: !747, discriminator: 2)
!2833 = !DILocation(line: 956, column: 67, scope: !2832)
!2834 = !DILocation(line: 956, column: 52, scope: !2832)
!2835 = !DILocation(line: 956, column: 51, scope: !2832)
!2836 = !DILocation(line: 956, column: 26, scope: !2837)
!2837 = !DILexicalBlockFile(scope: !2832, file: !747, discriminator: 12)
!2838 = !DILocation(line: 956, column: 7, scope: !2832)
!2839 = !DILocation(line: 956, column: 11, scope: !2832)
!2840 = !DILocation(line: 956, column: 6, scope: !2841)
!2841 = !DILexicalBlockFile(scope: !2827, file: !747, discriminator: 3)
!2842 = !DILocation(line: 956, column: 11, scope: !2843)
!2843 = !DILexicalBlockFile(scope: !2828, file: !747, discriminator: 4)
!2844 = !DILocation(line: 956, column: 28, scope: !2845)
!2845 = !DILexicalBlockFile(scope: !2827, file: !747, discriminator: 5)
!2846 = !DILocation(line: 956, column: 40, scope: !2847)
!2847 = !DILexicalBlockFile(scope: !2848, file: !747, discriminator: 6)
!2848 = distinct !DILexicalBlock(scope: !2828, file: !747, line: 956, column: 40)
!2849 = !DILocation(line: 956, column: 47, scope: !2847)
!2850 = !DILocation(line: 956, column: 1, scope: !2847)
!2851 = !DILocation(line: 956, column: 6, scope: !2852)
!2852 = !DILexicalBlockFile(scope: !2848, file: !747, discriminator: 7)
!2853 = !DILocation(line: 956, column: 15, scope: !2852)
!2854 = !DILocation(line: 956, column: 5, scope: !2852)
!2855 = !DILocation(line: 956, column: 40, scope: !2852)
!2856 = !DILocation(line: 956, column: 26, scope: !2857)
!2857 = !DILexicalBlockFile(scope: !2848, file: !747, discriminator: 8)
!2858 = distinct !{!2858, !2859}
!2859 = !DILocation(line: 956, column: 26, scope: !2848)
!2860 = !DILocation(line: 956, column: 31, scope: !2861)
!2861 = !DILexicalBlockFile(scope: !2862, file: !747, discriminator: 9)
!2862 = distinct !DILexicalBlock(scope: !2848, file: !747, line: 956, column: 29)
!2863 = !DILocation(line: 956, column: 109, scope: !2864)
!2864 = !DILexicalBlockFile(scope: !2861, file: !747, discriminator: 13)
!2865 = !DILocation(line: 956, column: 124, scope: !2861)
!2866 = !DILocation(line: 956, column: 132, scope: !2867)
!2867 = !DILexicalBlockFile(scope: !2862, file: !747, discriminator: 10)
!2868 = !DILocation(line: 956, column: 145, scope: !2869)
!2869 = !DILexicalBlockFile(scope: !2828, file: !747, discriminator: 11)
!2870 = !DILocation(line: 958, column: 22, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2812, file: !747, line: 958, column: 6)
!2872 = !DILocation(line: 958, column: 7, scope: !2871)
!2873 = !DILocation(line: 958, column: 6, scope: !2812)
!2874 = !DILocation(line: 959, column: 3, scope: !2871)
!2875 = !DILocation(line: 960, column: 7, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2812, file: !747, line: 960, column: 6)
!2877 = !DILocation(line: 960, column: 6, scope: !2876)
!2878 = !DILocation(line: 960, column: 14, scope: !2876)
!2879 = !DILocation(line: 960, column: 6, scope: !2812)
!2880 = !DILocation(line: 960, column: 23, scope: !2881)
!2881 = !DILexicalBlockFile(scope: !2876, file: !747, discriminator: 1)
!2882 = distinct !{!2882, !2883}
!2883 = !DILocation(line: 960, column: 23, scope: !2876)
!2884 = !DILocation(line: 960, column: 44, scope: !2885)
!2885 = !DILexicalBlockFile(scope: !2886, file: !747, discriminator: 2)
!2886 = distinct !DILexicalBlock(scope: !2876, file: !747, line: 960, column: 26)
!2887 = !DILocation(line: 960, column: 28, scope: !2885)
!2888 = !DILocation(line: 960, column: 55, scope: !2885)
!2889 = distinct !{!2889, !2890}
!2890 = !DILocation(line: 960, column: 55, scope: !2886)
!2891 = !DILocation(line: 960, column: 60, scope: !2892)
!2892 = !DILexicalBlockFile(scope: !2893, file: !747, discriminator: 3)
!2893 = distinct !DILexicalBlock(scope: !2886, file: !747, line: 960, column: 58)
!2894 = !DILocation(line: 960, column: 142, scope: !2895)
!2895 = !DILexicalBlockFile(scope: !2892, file: !747, discriminator: 6)
!2896 = !DILocation(line: 960, column: 157, scope: !2892)
!2897 = !DILocation(line: 960, column: 178, scope: !2898)
!2898 = !DILexicalBlockFile(scope: !2886, file: !747, discriminator: 4)
!2899 = !DILocation(line: 960, column: 178, scope: !2900)
!2900 = !DILexicalBlockFile(scope: !2886, file: !747, discriminator: 5)
!2901 = !DILocation(line: 961, column: 16, scope: !2812)
!2902 = !DILocation(line: 961, column: 37, scope: !2812)
!2903 = !DILocation(line: 961, column: 54, scope: !2812)
!2904 = !DILocation(line: 961, column: 62, scope: !2812)
!2905 = !DILocation(line: 961, column: 2, scope: !2812)
!2906 = !DILocation(line: 962, column: 18, scope: !2812)
!2907 = !DILocation(line: 962, column: 2, scope: !2812)
!2908 = !DILocation(line: 963, column: 1, scope: !2812)
!2909 = !DILocation(line: 963, column: 1, scope: !2910)
!2910 = !DILexicalBlockFile(scope: !2812, file: !747, discriminator: 1)
!2911 = distinct !DISubprogram(name: "cmd_away", scope: !747, file: !747, line: 550, type: !2599, isLocal: true, isDefinition: true, scopeLine: 551, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !760)
!2912 = !DILocalVariable(name: "data", arg: 1, scope: !2911, file: !747, line: 550, type: !96)
!2913 = !DILocation(line: 550, column: 34, scope: !2911)
!2914 = !DILocalVariable(name: "server", arg: 2, scope: !2911, file: !747, line: 550, type: !98)
!2915 = !DILocation(line: 550, column: 56, scope: !2911)
!2916 = !DILocalVariable(name: "optlist", scope: !2911, file: !747, line: 552, type: !373)
!2917 = !DILocation(line: 552, column: 14, scope: !2911)
!2918 = !DILocalVariable(name: "reason", scope: !2911, file: !747, line: 553, type: !118)
!2919 = !DILocation(line: 553, column: 8, scope: !2911)
!2920 = !DILocalVariable(name: "free_arg", scope: !2911, file: !747, line: 554, type: !81)
!2921 = !DILocation(line: 554, column: 8, scope: !2911)
!2922 = !DILocation(line: 556, column: 22, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2911, file: !747, line: 556, column: 6)
!2924 = !DILocation(line: 556, column: 7, scope: !2923)
!2925 = !DILocation(line: 556, column: 6, scope: !2911)
!2926 = !DILocation(line: 557, column: 62, scope: !2923)
!2927 = !DILocation(line: 559, column: 26, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2911, file: !747, line: 559, column: 6)
!2929 = !DILocation(line: 559, column: 6, scope: !2928)
!2930 = !DILocation(line: 559, column: 42, scope: !2928)
!2931 = !DILocation(line: 559, column: 6, scope: !2911)
!2932 = !DILocation(line: 560, column: 24, scope: !2928)
!2933 = !DILocation(line: 560, column: 32, scope: !2928)
!2934 = !DILocation(line: 560, column: 3, scope: !2928)
!2935 = !DILocation(line: 562, column: 19, scope: !2928)
!2936 = !DILocation(line: 562, column: 58, scope: !2928)
!2937 = !DILocation(line: 562, column: 3, scope: !2928)
!2938 = !DILocation(line: 564, column: 18, scope: !2911)
!2939 = !DILocation(line: 564, column: 2, scope: !2911)
!2940 = !DILocation(line: 565, column: 1, scope: !2911)
!2941 = !DILocation(line: 565, column: 1, scope: !2942)
!2942 = !DILexicalBlockFile(scope: !2911, file: !747, discriminator: 1)
!2943 = distinct !DISubprogram(name: "command_1self", scope: !747, file: !747, line: 941, type: !2599, isLocal: true, isDefinition: true, scopeLine: 942, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !760)
!2944 = !DILocalVariable(name: "data", arg: 1, scope: !2943, file: !747, line: 941, type: !96)
!2945 = !DILocation(line: 941, column: 39, scope: !2943)
!2946 = !DILocalVariable(name: "server", arg: 2, scope: !2943, file: !747, line: 941, type: !98)
!2947 = !DILocation(line: 941, column: 61, scope: !2943)
!2948 = !DILocation(line: 943, column: 2, scope: !2943)
!2949 = distinct !{!2949, !2948}
!2950 = !DILocation(line: 943, column: 10, scope: !2951)
!2951 = !DILexicalBlockFile(scope: !2952, file: !747, discriminator: 1)
!2952 = distinct !DILexicalBlock(scope: !2953, file: !747, line: 943, column: 10)
!2953 = distinct !DILexicalBlock(scope: !2943, file: !747, line: 943, column: 4)
!2954 = !DILocation(line: 943, column: 15, scope: !2951)
!2955 = !DILocation(line: 943, column: 5, scope: !2956)
!2956 = !DILexicalBlockFile(scope: !2957, file: !747, discriminator: 2)
!2957 = distinct !DILexicalBlock(scope: !2952, file: !747, line: 943, column: 3)
!2958 = !DILocation(line: 943, column: 14, scope: !2959)
!2959 = !DILexicalBlockFile(scope: !2960, file: !747, discriminator: 3)
!2960 = distinct !DILexicalBlock(scope: !2952, file: !747, line: 943, column: 12)
!2961 = !DILocation(line: 943, column: 99, scope: !2959)
!2962 = !DILocation(line: 943, column: 110, scope: !2963)
!2963 = !DILexicalBlockFile(scope: !2953, file: !747, discriminator: 4)
!2964 = !DILocation(line: 944, column: 87, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2943, file: !747, line: 944, column: 6)
!2966 = !DILocation(line: 944, column: 69, scope: !2965)
!2967 = !DILocation(line: 944, column: 54, scope: !2965)
!2968 = !DILocation(line: 944, column: 53, scope: !2965)
!2969 = !DILocation(line: 944, column: 28, scope: !2970)
!2970 = !DILexicalBlockFile(scope: !2965, file: !747, discriminator: 4)
!2971 = !DILocation(line: 944, column: 9, scope: !2965)
!2972 = !DILocation(line: 944, column: 32, scope: !2965)
!2973 = !DILocation(line: 944, column: 8, scope: !2974)
!2974 = !DILexicalBlockFile(scope: !2965, file: !747, discriminator: 1)
!2975 = !DILocation(line: 944, column: 32, scope: !2976)
!2976 = !DILexicalBlockFile(scope: !2965, file: !747, discriminator: 2)
!2977 = !DILocation(line: 944, column: 36, scope: !2978)
!2978 = !DILexicalBlockFile(scope: !2965, file: !747, discriminator: 3)
!2979 = !DILocation(line: 944, column: 44, scope: !2978)
!2980 = !DILocation(line: 944, column: 6, scope: !2978)
!2981 = !DILocation(line: 945, column: 3, scope: !2965)
!2982 = distinct !{!2982, !2981}
!2983 = !DILocation(line: 945, column: 8, scope: !2984)
!2984 = !DILexicalBlockFile(scope: !2985, file: !747, discriminator: 1)
!2985 = distinct !DILexicalBlock(scope: !2965, file: !747, line: 945, column: 6)
!2986 = !DILocation(line: 945, column: 86, scope: !2987)
!2987 = !DILexicalBlockFile(scope: !2984, file: !747, discriminator: 3)
!2988 = !DILocation(line: 945, column: 101, scope: !2984)
!2989 = !DILocation(line: 945, column: 109, scope: !2990)
!2990 = !DILexicalBlockFile(scope: !2985, file: !747, discriminator: 2)
!2991 = !DILocation(line: 946, column: 7, scope: !2992)
!2992 = distinct !DILexicalBlock(scope: !2943, file: !747, line: 946, column: 6)
!2993 = !DILocation(line: 946, column: 6, scope: !2992)
!2994 = !DILocation(line: 946, column: 12, scope: !2992)
!2995 = !DILocation(line: 946, column: 6, scope: !2943)
!2996 = !DILocation(line: 946, column: 21, scope: !2997)
!2997 = !DILexicalBlockFile(scope: !2992, file: !747, discriminator: 1)
!2998 = distinct !{!2998, !2999}
!2999 = !DILocation(line: 946, column: 21, scope: !2992)
!3000 = !DILocation(line: 946, column: 26, scope: !3001)
!3001 = !DILexicalBlockFile(scope: !3002, file: !747, discriminator: 2)
!3002 = distinct !DILexicalBlock(scope: !2992, file: !747, line: 946, column: 24)
!3003 = !DILocation(line: 946, column: 108, scope: !3004)
!3004 = !DILexicalBlockFile(scope: !3001, file: !747, discriminator: 4)
!3005 = !DILocation(line: 946, column: 123, scope: !3001)
!3006 = !DILocation(line: 946, column: 131, scope: !3007)
!3007 = !DILexicalBlockFile(scope: !3002, file: !747, discriminator: 3)
!3008 = !DILocation(line: 948, column: 16, scope: !2943)
!3009 = !DILocation(line: 948, column: 34, scope: !2943)
!3010 = !DILocation(line: 948, column: 51, scope: !2943)
!3011 = !DILocation(line: 948, column: 2, scope: !2943)
!3012 = !DILocation(line: 949, column: 1, scope: !2943)
!3013 = !DILocation(line: 949, column: 1, scope: !3014)
!3014 = !DILexicalBlockFile(scope: !2943, file: !747, discriminator: 1)
!3015 = distinct !DISubprogram(name: "cmd_accept", scope: !747, file: !747, line: 910, type: !2599, isLocal: true, isDefinition: true, scopeLine: 911, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !760)
!3016 = !DILocalVariable(name: "data", arg: 1, scope: !3015, file: !747, line: 910, type: !96)
!3017 = !DILocation(line: 910, column: 36, scope: !3015)
!3018 = !DILocalVariable(name: "server", arg: 2, scope: !3015, file: !747, line: 910, type: !98)
!3019 = !DILocation(line: 910, column: 58, scope: !3015)
!3020 = !DILocation(line: 912, column: 2, scope: !3015)
!3021 = distinct !{!3021, !3020}
!3022 = !DILocation(line: 912, column: 11, scope: !3023)
!3023 = !DILexicalBlockFile(scope: !3024, file: !747, discriminator: 1)
!3024 = distinct !DILexicalBlock(scope: !3025, file: !747, line: 912, column: 11)
!3025 = distinct !DILexicalBlock(scope: !3015, file: !747, line: 912, column: 5)
!3026 = !DILocation(line: 912, column: 18, scope: !3023)
!3027 = !DILocation(line: 912, column: 1, scope: !3023)
!3028 = !DILocation(line: 912, column: 85, scope: !3029)
!3029 = !DILexicalBlockFile(scope: !3024, file: !747, discriminator: 2)
!3030 = !DILocation(line: 912, column: 67, scope: !3029)
!3031 = !DILocation(line: 912, column: 52, scope: !3029)
!3032 = !DILocation(line: 912, column: 51, scope: !3029)
!3033 = !DILocation(line: 912, column: 26, scope: !3034)
!3034 = !DILexicalBlockFile(scope: !3029, file: !747, discriminator: 12)
!3035 = !DILocation(line: 912, column: 7, scope: !3029)
!3036 = !DILocation(line: 912, column: 11, scope: !3029)
!3037 = !DILocation(line: 912, column: 6, scope: !3038)
!3038 = !DILexicalBlockFile(scope: !3024, file: !747, discriminator: 3)
!3039 = !DILocation(line: 912, column: 11, scope: !3040)
!3040 = !DILexicalBlockFile(scope: !3025, file: !747, discriminator: 4)
!3041 = !DILocation(line: 912, column: 28, scope: !3042)
!3042 = !DILexicalBlockFile(scope: !3024, file: !747, discriminator: 5)
!3043 = !DILocation(line: 912, column: 40, scope: !3044)
!3044 = !DILexicalBlockFile(scope: !3045, file: !747, discriminator: 6)
!3045 = distinct !DILexicalBlock(scope: !3025, file: !747, line: 912, column: 40)
!3046 = !DILocation(line: 912, column: 47, scope: !3044)
!3047 = !DILocation(line: 912, column: 1, scope: !3044)
!3048 = !DILocation(line: 912, column: 6, scope: !3049)
!3049 = !DILexicalBlockFile(scope: !3045, file: !747, discriminator: 7)
!3050 = !DILocation(line: 912, column: 15, scope: !3049)
!3051 = !DILocation(line: 912, column: 5, scope: !3049)
!3052 = !DILocation(line: 912, column: 40, scope: !3049)
!3053 = !DILocation(line: 912, column: 26, scope: !3054)
!3054 = !DILexicalBlockFile(scope: !3045, file: !747, discriminator: 8)
!3055 = distinct !{!3055, !3056}
!3056 = !DILocation(line: 912, column: 26, scope: !3045)
!3057 = !DILocation(line: 912, column: 31, scope: !3058)
!3058 = !DILexicalBlockFile(scope: !3059, file: !747, discriminator: 9)
!3059 = distinct !DILexicalBlock(scope: !3045, file: !747, line: 912, column: 29)
!3060 = !DILocation(line: 912, column: 109, scope: !3061)
!3061 = !DILexicalBlockFile(scope: !3058, file: !747, discriminator: 13)
!3062 = !DILocation(line: 912, column: 124, scope: !3058)
!3063 = !DILocation(line: 912, column: 132, scope: !3064)
!3064 = !DILexicalBlockFile(scope: !3059, file: !747, discriminator: 10)
!3065 = !DILocation(line: 912, column: 145, scope: !3066)
!3066 = !DILexicalBlockFile(scope: !3025, file: !747, discriminator: 11)
!3067 = !DILocation(line: 914, column: 7, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3015, file: !747, line: 914, column: 6)
!3069 = !DILocation(line: 914, column: 6, scope: !3068)
!3070 = !DILocation(line: 914, column: 12, scope: !3068)
!3071 = !DILocation(line: 914, column: 6, scope: !3015)
!3072 = !DILocation(line: 915, column: 16, scope: !3068)
!3073 = !DILocation(line: 915, column: 3, scope: !3068)
!3074 = !DILocation(line: 917, column: 17, scope: !3068)
!3075 = !DILocation(line: 917, column: 38, scope: !3068)
!3076 = !DILocation(line: 917, column: 3, scope: !3068)
!3077 = !DILocation(line: 918, column: 1, scope: !3015)
!3078 = distinct !DISubprogram(name: "command_self", scope: !747, file: !747, line: 931, type: !2599, isLocal: true, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !760)
!3079 = !DILocalVariable(name: "data", arg: 1, scope: !3078, file: !747, line: 931, type: !96)
!3080 = !DILocation(line: 931, column: 38, scope: !3078)
!3081 = !DILocalVariable(name: "server", arg: 2, scope: !3078, file: !747, line: 931, type: !98)
!3082 = !DILocation(line: 931, column: 60, scope: !3078)
!3083 = !DILocation(line: 933, column: 2, scope: !3078)
!3084 = distinct !{!3084, !3083}
!3085 = !DILocation(line: 933, column: 11, scope: !3086)
!3086 = !DILexicalBlockFile(scope: !3087, file: !747, discriminator: 1)
!3087 = distinct !DILexicalBlock(scope: !3088, file: !747, line: 933, column: 11)
!3088 = distinct !DILexicalBlock(scope: !3078, file: !747, line: 933, column: 5)
!3089 = !DILocation(line: 933, column: 18, scope: !3086)
!3090 = !DILocation(line: 933, column: 1, scope: !3086)
!3091 = !DILocation(line: 933, column: 85, scope: !3092)
!3092 = !DILexicalBlockFile(scope: !3087, file: !747, discriminator: 2)
!3093 = !DILocation(line: 933, column: 67, scope: !3092)
!3094 = !DILocation(line: 933, column: 52, scope: !3092)
!3095 = !DILocation(line: 933, column: 51, scope: !3092)
!3096 = !DILocation(line: 933, column: 26, scope: !3097)
!3097 = !DILexicalBlockFile(scope: !3092, file: !747, discriminator: 12)
!3098 = !DILocation(line: 933, column: 7, scope: !3092)
!3099 = !DILocation(line: 933, column: 11, scope: !3092)
!3100 = !DILocation(line: 933, column: 6, scope: !3101)
!3101 = !DILexicalBlockFile(scope: !3087, file: !747, discriminator: 3)
!3102 = !DILocation(line: 933, column: 11, scope: !3103)
!3103 = !DILexicalBlockFile(scope: !3088, file: !747, discriminator: 4)
!3104 = !DILocation(line: 933, column: 28, scope: !3105)
!3105 = !DILexicalBlockFile(scope: !3087, file: !747, discriminator: 5)
!3106 = !DILocation(line: 933, column: 40, scope: !3107)
!3107 = !DILexicalBlockFile(scope: !3108, file: !747, discriminator: 6)
!3108 = distinct !DILexicalBlock(scope: !3088, file: !747, line: 933, column: 40)
!3109 = !DILocation(line: 933, column: 47, scope: !3107)
!3110 = !DILocation(line: 933, column: 1, scope: !3107)
!3111 = !DILocation(line: 933, column: 6, scope: !3112)
!3112 = !DILexicalBlockFile(scope: !3108, file: !747, discriminator: 7)
!3113 = !DILocation(line: 933, column: 15, scope: !3112)
!3114 = !DILocation(line: 933, column: 5, scope: !3112)
!3115 = !DILocation(line: 933, column: 40, scope: !3112)
!3116 = !DILocation(line: 933, column: 26, scope: !3117)
!3117 = !DILexicalBlockFile(scope: !3108, file: !747, discriminator: 8)
!3118 = distinct !{!3118, !3119}
!3119 = !DILocation(line: 933, column: 26, scope: !3108)
!3120 = !DILocation(line: 933, column: 31, scope: !3121)
!3121 = !DILexicalBlockFile(scope: !3122, file: !747, discriminator: 9)
!3122 = distinct !DILexicalBlock(scope: !3108, file: !747, line: 933, column: 29)
!3123 = !DILocation(line: 933, column: 109, scope: !3124)
!3124 = !DILexicalBlockFile(scope: !3121, file: !747, discriminator: 13)
!3125 = !DILocation(line: 933, column: 124, scope: !3121)
!3126 = !DILocation(line: 933, column: 132, scope: !3127)
!3127 = !DILexicalBlockFile(scope: !3122, file: !747, discriminator: 10)
!3128 = !DILocation(line: 933, column: 145, scope: !3129)
!3129 = !DILexicalBlockFile(scope: !3088, file: !747, discriminator: 11)
!3130 = !DILocation(line: 935, column: 6, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3078, file: !747, line: 935, column: 6)
!3132 = !DILocation(line: 935, column: 14, scope: !3131)
!3133 = !DILocation(line: 935, column: 6, scope: !3078)
!3134 = !DILocation(line: 936, column: 17, scope: !3131)
!3135 = !DILocation(line: 936, column: 31, scope: !3131)
!3136 = !DILocation(line: 936, column: 3, scope: !3131)
!3137 = !DILocation(line: 938, column: 17, scope: !3131)
!3138 = !DILocation(line: 938, column: 34, scope: !3131)
!3139 = !DILocation(line: 938, column: 51, scope: !3131)
!3140 = !DILocation(line: 938, column: 3, scope: !3131)
!3141 = !DILocation(line: 939, column: 1, scope: !3078)
!3142 = distinct !DISubprogram(name: "cmd_unsilence", scope: !747, file: !747, line: 921, type: !2599, isLocal: true, isDefinition: true, scopeLine: 922, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !760)
!3143 = !DILocalVariable(name: "data", arg: 1, scope: !3142, file: !747, line: 921, type: !96)
!3144 = !DILocation(line: 921, column: 39, scope: !3142)
!3145 = !DILocalVariable(name: "server", arg: 2, scope: !3142, file: !747, line: 921, type: !98)
!3146 = !DILocation(line: 921, column: 61, scope: !3142)
!3147 = !DILocation(line: 923, column: 2, scope: !3142)
!3148 = distinct !{!3148, !3147}
!3149 = !DILocation(line: 923, column: 11, scope: !3150)
!3150 = !DILexicalBlockFile(scope: !3151, file: !747, discriminator: 1)
!3151 = distinct !DILexicalBlock(scope: !3152, file: !747, line: 923, column: 11)
!3152 = distinct !DILexicalBlock(scope: !3142, file: !747, line: 923, column: 5)
!3153 = !DILocation(line: 923, column: 18, scope: !3150)
!3154 = !DILocation(line: 923, column: 1, scope: !3150)
!3155 = !DILocation(line: 923, column: 85, scope: !3156)
!3156 = !DILexicalBlockFile(scope: !3151, file: !747, discriminator: 2)
!3157 = !DILocation(line: 923, column: 67, scope: !3156)
!3158 = !DILocation(line: 923, column: 52, scope: !3156)
!3159 = !DILocation(line: 923, column: 51, scope: !3156)
!3160 = !DILocation(line: 923, column: 26, scope: !3161)
!3161 = !DILexicalBlockFile(scope: !3156, file: !747, discriminator: 12)
!3162 = !DILocation(line: 923, column: 7, scope: !3156)
!3163 = !DILocation(line: 923, column: 11, scope: !3156)
!3164 = !DILocation(line: 923, column: 6, scope: !3165)
!3165 = !DILexicalBlockFile(scope: !3151, file: !747, discriminator: 3)
!3166 = !DILocation(line: 923, column: 11, scope: !3167)
!3167 = !DILexicalBlockFile(scope: !3152, file: !747, discriminator: 4)
!3168 = !DILocation(line: 923, column: 28, scope: !3169)
!3169 = !DILexicalBlockFile(scope: !3151, file: !747, discriminator: 5)
!3170 = !DILocation(line: 923, column: 40, scope: !3171)
!3171 = !DILexicalBlockFile(scope: !3172, file: !747, discriminator: 6)
!3172 = distinct !DILexicalBlock(scope: !3152, file: !747, line: 923, column: 40)
!3173 = !DILocation(line: 923, column: 47, scope: !3171)
!3174 = !DILocation(line: 923, column: 1, scope: !3171)
!3175 = !DILocation(line: 923, column: 6, scope: !3176)
!3176 = !DILexicalBlockFile(scope: !3172, file: !747, discriminator: 7)
!3177 = !DILocation(line: 923, column: 15, scope: !3176)
!3178 = !DILocation(line: 923, column: 5, scope: !3176)
!3179 = !DILocation(line: 923, column: 40, scope: !3176)
!3180 = !DILocation(line: 923, column: 26, scope: !3181)
!3181 = !DILexicalBlockFile(scope: !3172, file: !747, discriminator: 8)
!3182 = distinct !{!3182, !3183}
!3183 = !DILocation(line: 923, column: 26, scope: !3172)
!3184 = !DILocation(line: 923, column: 31, scope: !3185)
!3185 = !DILexicalBlockFile(scope: !3186, file: !747, discriminator: 9)
!3186 = distinct !DILexicalBlock(scope: !3172, file: !747, line: 923, column: 29)
!3187 = !DILocation(line: 923, column: 109, scope: !3188)
!3188 = !DILexicalBlockFile(scope: !3185, file: !747, discriminator: 13)
!3189 = !DILocation(line: 923, column: 124, scope: !3185)
!3190 = !DILocation(line: 923, column: 132, scope: !3191)
!3191 = !DILexicalBlockFile(scope: !3186, file: !747, discriminator: 10)
!3192 = !DILocation(line: 923, column: 145, scope: !3193)
!3193 = !DILexicalBlockFile(scope: !3152, file: !747, discriminator: 11)
!3194 = !DILocation(line: 925, column: 7, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3142, file: !747, line: 925, column: 6)
!3196 = !DILocation(line: 925, column: 6, scope: !3195)
!3197 = !DILocation(line: 925, column: 12, scope: !3195)
!3198 = !DILocation(line: 925, column: 6, scope: !3142)
!3199 = !DILocation(line: 926, column: 3, scope: !3195)
!3200 = distinct !{!3200, !3199}
!3201 = !DILocation(line: 926, column: 8, scope: !3202)
!3202 = !DILexicalBlockFile(scope: !3203, file: !747, discriminator: 1)
!3203 = distinct !DILexicalBlock(scope: !3195, file: !747, line: 926, column: 6)
!3204 = !DILocation(line: 926, column: 90, scope: !3205)
!3205 = !DILexicalBlockFile(scope: !3202, file: !747, discriminator: 3)
!3206 = !DILocation(line: 926, column: 105, scope: !3202)
!3207 = !DILocation(line: 926, column: 113, scope: !3208)
!3208 = !DILexicalBlockFile(scope: !3203, file: !747, discriminator: 2)
!3209 = !DILocation(line: 928, column: 16, scope: !3142)
!3210 = !DILocation(line: 928, column: 39, scope: !3142)
!3211 = !DILocation(line: 928, column: 2, scope: !3142)
!3212 = !DILocation(line: 929, column: 1, scope: !3142)
!3213 = !DILocation(line: 929, column: 1, scope: !3214)
!3214 = !DILexicalBlockFile(scope: !3142, file: !747, discriminator: 1)
!3215 = distinct !DISubprogram(name: "cmd_sconnect", scope: !747, file: !747, line: 568, type: !2599, isLocal: true, isDefinition: true, scopeLine: 569, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !760)
!3216 = !DILocalVariable(name: "data", arg: 1, scope: !3215, file: !747, line: 568, type: !96)
!3217 = !DILocation(line: 568, column: 38, scope: !3215)
!3218 = !DILocalVariable(name: "server", arg: 2, scope: !3215, file: !747, line: 568, type: !98)
!3219 = !DILocation(line: 568, column: 60, scope: !3215)
!3220 = !DILocation(line: 570, column: 2, scope: !3215)
!3221 = distinct !{!3221, !3220}
!3222 = !DILocation(line: 570, column: 11, scope: !3223)
!3223 = !DILexicalBlockFile(scope: !3224, file: !747, discriminator: 1)
!3224 = distinct !DILexicalBlock(scope: !3225, file: !747, line: 570, column: 11)
!3225 = distinct !DILexicalBlock(scope: !3215, file: !747, line: 570, column: 5)
!3226 = !DILocation(line: 570, column: 18, scope: !3223)
!3227 = !DILocation(line: 570, column: 1, scope: !3223)
!3228 = !DILocation(line: 570, column: 85, scope: !3229)
!3229 = !DILexicalBlockFile(scope: !3224, file: !747, discriminator: 2)
!3230 = !DILocation(line: 570, column: 67, scope: !3229)
!3231 = !DILocation(line: 570, column: 52, scope: !3229)
!3232 = !DILocation(line: 570, column: 51, scope: !3229)
!3233 = !DILocation(line: 570, column: 26, scope: !3234)
!3234 = !DILexicalBlockFile(scope: !3229, file: !747, discriminator: 12)
!3235 = !DILocation(line: 570, column: 7, scope: !3229)
!3236 = !DILocation(line: 570, column: 11, scope: !3229)
!3237 = !DILocation(line: 570, column: 6, scope: !3238)
!3238 = !DILexicalBlockFile(scope: !3224, file: !747, discriminator: 3)
!3239 = !DILocation(line: 570, column: 11, scope: !3240)
!3240 = !DILexicalBlockFile(scope: !3225, file: !747, discriminator: 4)
!3241 = !DILocation(line: 570, column: 28, scope: !3242)
!3242 = !DILexicalBlockFile(scope: !3224, file: !747, discriminator: 5)
!3243 = !DILocation(line: 570, column: 40, scope: !3244)
!3244 = !DILexicalBlockFile(scope: !3245, file: !747, discriminator: 6)
!3245 = distinct !DILexicalBlock(scope: !3225, file: !747, line: 570, column: 40)
!3246 = !DILocation(line: 570, column: 47, scope: !3244)
!3247 = !DILocation(line: 570, column: 1, scope: !3244)
!3248 = !DILocation(line: 570, column: 6, scope: !3249)
!3249 = !DILexicalBlockFile(scope: !3245, file: !747, discriminator: 7)
!3250 = !DILocation(line: 570, column: 15, scope: !3249)
!3251 = !DILocation(line: 570, column: 5, scope: !3249)
!3252 = !DILocation(line: 570, column: 40, scope: !3249)
!3253 = !DILocation(line: 570, column: 26, scope: !3254)
!3254 = !DILexicalBlockFile(scope: !3245, file: !747, discriminator: 8)
!3255 = distinct !{!3255, !3256}
!3256 = !DILocation(line: 570, column: 26, scope: !3245)
!3257 = !DILocation(line: 570, column: 31, scope: !3258)
!3258 = !DILexicalBlockFile(scope: !3259, file: !747, discriminator: 9)
!3259 = distinct !DILexicalBlock(scope: !3245, file: !747, line: 570, column: 29)
!3260 = !DILocation(line: 570, column: 109, scope: !3261)
!3261 = !DILexicalBlockFile(scope: !3258, file: !747, discriminator: 13)
!3262 = !DILocation(line: 570, column: 124, scope: !3258)
!3263 = !DILocation(line: 570, column: 132, scope: !3264)
!3264 = !DILexicalBlockFile(scope: !3259, file: !747, discriminator: 10)
!3265 = !DILocation(line: 570, column: 145, scope: !3266)
!3266 = !DILexicalBlockFile(scope: !3225, file: !747, discriminator: 11)
!3267 = !DILocation(line: 571, column: 7, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3215, file: !747, line: 571, column: 6)
!3269 = !DILocation(line: 571, column: 6, scope: !3268)
!3270 = !DILocation(line: 571, column: 12, scope: !3268)
!3271 = !DILocation(line: 571, column: 6, scope: !3215)
!3272 = !DILocation(line: 571, column: 21, scope: !3273)
!3273 = !DILexicalBlockFile(scope: !3268, file: !747, discriminator: 1)
!3274 = distinct !{!3274, !3275}
!3275 = !DILocation(line: 571, column: 21, scope: !3268)
!3276 = !DILocation(line: 571, column: 26, scope: !3277)
!3277 = !DILexicalBlockFile(scope: !3278, file: !747, discriminator: 2)
!3278 = distinct !DILexicalBlock(scope: !3268, file: !747, line: 571, column: 24)
!3279 = !DILocation(line: 571, column: 108, scope: !3280)
!3280 = !DILexicalBlockFile(scope: !3277, file: !747, discriminator: 4)
!3281 = !DILocation(line: 571, column: 123, scope: !3277)
!3282 = !DILocation(line: 571, column: 131, scope: !3283)
!3283 = !DILexicalBlockFile(scope: !3278, file: !747, discriminator: 3)
!3284 = !DILocation(line: 573, column: 16, scope: !3215)
!3285 = !DILocation(line: 573, column: 38, scope: !3215)
!3286 = !DILocation(line: 573, column: 2, scope: !3215)
!3287 = !DILocation(line: 574, column: 1, scope: !3215)
!3288 = !DILocation(line: 574, column: 1, scope: !3289)
!3289 = !DILexicalBlockFile(scope: !3215, file: !747, discriminator: 1)
!3290 = distinct !DISubprogram(name: "cmd_oper", scope: !747, file: !747, line: 893, type: !2599, isLocal: true, isDefinition: true, scopeLine: 894, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !760)
!3291 = !DILocalVariable(name: "data", arg: 1, scope: !3290, file: !747, line: 893, type: !96)
!3292 = !DILocation(line: 893, column: 34, scope: !3290)
!3293 = !DILocalVariable(name: "server", arg: 2, scope: !3290, file: !747, line: 893, type: !98)
!3294 = !DILocation(line: 893, column: 56, scope: !3290)
!3295 = !DILocalVariable(name: "nick", scope: !3290, file: !747, line: 895, type: !118)
!3296 = !DILocation(line: 895, column: 8, scope: !3290)
!3297 = !DILocalVariable(name: "password", scope: !3290, file: !747, line: 895, type: !118)
!3298 = !DILocation(line: 895, column: 15, scope: !3290)
!3299 = !DILocalVariable(name: "free_arg", scope: !3290, file: !747, line: 896, type: !81)
!3300 = !DILocation(line: 896, column: 8, scope: !3290)
!3301 = !DILocation(line: 898, column: 2, scope: !3290)
!3302 = distinct !{!3302, !3301}
!3303 = !DILocation(line: 898, column: 11, scope: !3304)
!3304 = !DILexicalBlockFile(scope: !3305, file: !747, discriminator: 1)
!3305 = distinct !DILexicalBlock(scope: !3306, file: !747, line: 898, column: 11)
!3306 = distinct !DILexicalBlock(scope: !3290, file: !747, line: 898, column: 5)
!3307 = !DILocation(line: 898, column: 18, scope: !3304)
!3308 = !DILocation(line: 898, column: 1, scope: !3304)
!3309 = !DILocation(line: 898, column: 85, scope: !3310)
!3310 = !DILexicalBlockFile(scope: !3305, file: !747, discriminator: 2)
!3311 = !DILocation(line: 898, column: 67, scope: !3310)
!3312 = !DILocation(line: 898, column: 52, scope: !3310)
!3313 = !DILocation(line: 898, column: 51, scope: !3310)
!3314 = !DILocation(line: 898, column: 26, scope: !3315)
!3315 = !DILexicalBlockFile(scope: !3310, file: !747, discriminator: 12)
!3316 = !DILocation(line: 898, column: 7, scope: !3310)
!3317 = !DILocation(line: 898, column: 11, scope: !3310)
!3318 = !DILocation(line: 898, column: 6, scope: !3319)
!3319 = !DILexicalBlockFile(scope: !3305, file: !747, discriminator: 3)
!3320 = !DILocation(line: 898, column: 11, scope: !3321)
!3321 = !DILexicalBlockFile(scope: !3306, file: !747, discriminator: 4)
!3322 = !DILocation(line: 898, column: 28, scope: !3323)
!3323 = !DILexicalBlockFile(scope: !3305, file: !747, discriminator: 5)
!3324 = !DILocation(line: 898, column: 40, scope: !3325)
!3325 = !DILexicalBlockFile(scope: !3326, file: !747, discriminator: 6)
!3326 = distinct !DILexicalBlock(scope: !3306, file: !747, line: 898, column: 40)
!3327 = !DILocation(line: 898, column: 47, scope: !3325)
!3328 = !DILocation(line: 898, column: 1, scope: !3325)
!3329 = !DILocation(line: 898, column: 6, scope: !3330)
!3330 = !DILexicalBlockFile(scope: !3326, file: !747, discriminator: 7)
!3331 = !DILocation(line: 898, column: 15, scope: !3330)
!3332 = !DILocation(line: 898, column: 5, scope: !3330)
!3333 = !DILocation(line: 898, column: 40, scope: !3330)
!3334 = !DILocation(line: 898, column: 26, scope: !3335)
!3335 = !DILexicalBlockFile(scope: !3326, file: !747, discriminator: 8)
!3336 = distinct !{!3336, !3337}
!3337 = !DILocation(line: 898, column: 26, scope: !3326)
!3338 = !DILocation(line: 898, column: 31, scope: !3339)
!3339 = !DILexicalBlockFile(scope: !3340, file: !747, discriminator: 9)
!3340 = distinct !DILexicalBlock(scope: !3326, file: !747, line: 898, column: 29)
!3341 = !DILocation(line: 898, column: 109, scope: !3342)
!3342 = !DILexicalBlockFile(scope: !3339, file: !747, discriminator: 13)
!3343 = !DILocation(line: 898, column: 124, scope: !3339)
!3344 = !DILocation(line: 898, column: 132, scope: !3345)
!3345 = !DILexicalBlockFile(scope: !3340, file: !747, discriminator: 10)
!3346 = !DILocation(line: 898, column: 145, scope: !3347)
!3347 = !DILexicalBlockFile(scope: !3306, file: !747, discriminator: 11)
!3348 = !DILocation(line: 901, column: 22, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3290, file: !747, line: 901, column: 6)
!3350 = !DILocation(line: 901, column: 7, scope: !3349)
!3351 = !DILocation(line: 901, column: 6, scope: !3290)
!3352 = !DILocation(line: 902, column: 3, scope: !3349)
!3353 = !DILocation(line: 903, column: 7, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3290, file: !747, line: 903, column: 6)
!3355 = !DILocation(line: 903, column: 6, scope: !3354)
!3356 = !DILocation(line: 903, column: 16, scope: !3354)
!3357 = !DILocation(line: 903, column: 6, scope: !3290)
!3358 = !DILocation(line: 903, column: 25, scope: !3359)
!3359 = !DILexicalBlockFile(scope: !3354, file: !747, discriminator: 1)
!3360 = distinct !{!3360, !3361}
!3361 = !DILocation(line: 903, column: 25, scope: !3354)
!3362 = !DILocation(line: 903, column: 46, scope: !3363)
!3363 = !DILexicalBlockFile(scope: !3364, file: !747, discriminator: 2)
!3364 = distinct !DILexicalBlock(scope: !3354, file: !747, line: 903, column: 28)
!3365 = !DILocation(line: 903, column: 30, scope: !3363)
!3366 = !DILocation(line: 903, column: 57, scope: !3363)
!3367 = distinct !{!3367, !3368}
!3368 = !DILocation(line: 903, column: 57, scope: !3364)
!3369 = !DILocation(line: 903, column: 62, scope: !3370)
!3370 = !DILexicalBlockFile(scope: !3371, file: !747, discriminator: 3)
!3371 = distinct !DILexicalBlock(scope: !3364, file: !747, line: 903, column: 60)
!3372 = !DILocation(line: 903, column: 144, scope: !3373)
!3373 = !DILexicalBlockFile(scope: !3370, file: !747, discriminator: 6)
!3374 = !DILocation(line: 903, column: 159, scope: !3370)
!3375 = !DILocation(line: 903, column: 180, scope: !3376)
!3376 = !DILexicalBlockFile(scope: !3364, file: !747, discriminator: 4)
!3377 = !DILocation(line: 903, column: 180, scope: !3378)
!3378 = !DILexicalBlockFile(scope: !3364, file: !747, discriminator: 5)
!3379 = !DILocation(line: 905, column: 16, scope: !3290)
!3380 = !DILocation(line: 905, column: 38, scope: !3290)
!3381 = !DILocation(line: 905, column: 44, scope: !3290)
!3382 = !DILocation(line: 905, column: 2, scope: !3290)
!3383 = !DILocation(line: 906, column: 18, scope: !3290)
!3384 = !DILocation(line: 906, column: 2, scope: !3290)
!3385 = !DILocation(line: 907, column: 1, scope: !3290)
!3386 = !DILocation(line: 907, column: 1, scope: !3387)
!3387 = !DILexicalBlockFile(scope: !3290, file: !747, discriminator: 1)
!3388 = distinct !DISubprogram(name: "cmd_quote", scope: !747, file: !747, line: 577, type: !2599, isLocal: true, isDefinition: true, scopeLine: 578, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !760)
!3389 = !DILocalVariable(name: "data", arg: 1, scope: !3388, file: !747, line: 577, type: !96)
!3390 = !DILocation(line: 577, column: 35, scope: !3388)
!3391 = !DILocalVariable(name: "server", arg: 2, scope: !3388, file: !747, line: 577, type: !98)
!3392 = !DILocation(line: 577, column: 57, scope: !3388)
!3393 = !DILocation(line: 579, column: 6, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3388, file: !747, line: 579, column: 6)
!3395 = !DILocation(line: 579, column: 13, scope: !3394)
!3396 = !DILocation(line: 579, column: 20, scope: !3394)
!3397 = !DILocation(line: 579, column: 104, scope: !3398)
!3398 = !DILexicalBlockFile(scope: !3394, file: !747, discriminator: 1)
!3399 = !DILocation(line: 579, column: 86, scope: !3398)
!3400 = !DILocation(line: 579, column: 71, scope: !3398)
!3401 = !DILocation(line: 579, column: 70, scope: !3398)
!3402 = !DILocation(line: 579, column: 45, scope: !3403)
!3403 = !DILexicalBlockFile(scope: !3398, file: !747, discriminator: 4)
!3404 = !DILocation(line: 579, column: 26, scope: !3398)
!3405 = !DILocation(line: 579, column: 6, scope: !3398)
!3406 = !DILocation(line: 579, column: 25, scope: !3407)
!3407 = !DILexicalBlockFile(scope: !3394, file: !747, discriminator: 2)
!3408 = !DILocation(line: 579, column: 6, scope: !3409)
!3409 = !DILexicalBlockFile(scope: !3388, file: !747, discriminator: 3)
!3410 = !DILocation(line: 580, column: 3, scope: !3394)
!3411 = !DILocation(line: 581, column: 6, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3388, file: !747, line: 581, column: 6)
!3413 = !DILocation(line: 581, column: 13, scope: !3412)
!3414 = !DILocation(line: 581, column: 20, scope: !3412)
!3415 = !DILocation(line: 581, column: 23, scope: !3416)
!3416 = !DILexicalBlockFile(scope: !3412, file: !747, discriminator: 1)
!3417 = !DILocation(line: 581, column: 31, scope: !3416)
!3418 = !DILocation(line: 581, column: 44, scope: !3416)
!3419 = !DILocation(line: 581, column: 6, scope: !3416)
!3420 = !DILocation(line: 582, column: 3, scope: !3412)
!3421 = distinct !{!3421, !3420}
!3422 = !DILocation(line: 582, column: 8, scope: !3423)
!3423 = !DILexicalBlockFile(scope: !3424, file: !747, discriminator: 1)
!3424 = distinct !DILexicalBlock(scope: !3412, file: !747, line: 582, column: 6)
!3425 = !DILocation(line: 582, column: 86, scope: !3426)
!3426 = !DILexicalBlockFile(scope: !3423, file: !747, discriminator: 3)
!3427 = !DILocation(line: 582, column: 101, scope: !3423)
!3428 = !DILocation(line: 582, column: 109, scope: !3429)
!3429 = !DILexicalBlockFile(scope: !3424, file: !747, discriminator: 2)
!3430 = !DILocation(line: 584, column: 7, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3388, file: !747, line: 584, column: 6)
!3432 = !DILocation(line: 584, column: 15, scope: !3431)
!3433 = !DILocation(line: 584, column: 6, scope: !3388)
!3434 = !DILocation(line: 585, column: 20, scope: !3431)
!3435 = !DILocation(line: 585, column: 28, scope: !3431)
!3436 = !DILocation(line: 585, column: 3, scope: !3431)
!3437 = !DILocation(line: 587, column: 16, scope: !3431)
!3438 = !DILocation(line: 587, column: 24, scope: !3431)
!3439 = !DILocation(line: 587, column: 3, scope: !3431)
!3440 = !DILocation(line: 588, column: 1, scope: !3388)
!3441 = distinct !DISubprogram(name: "cmd_wall", scope: !747, file: !747, line: 631, type: !886, isLocal: true, isDefinition: true, scopeLine: 632, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !760)
!3442 = !DILocalVariable(name: "data", arg: 1, scope: !3441, file: !747, line: 631, type: !96)
!3443 = !DILocation(line: 631, column: 34, scope: !3441)
!3444 = !DILocalVariable(name: "server", arg: 2, scope: !3441, file: !747, line: 631, type: !98)
!3445 = !DILocation(line: 631, column: 56, scope: !3441)
!3446 = !DILocalVariable(name: "item", arg: 3, scope: !3441, file: !747, line: 631, type: !524)
!3447 = !DILocation(line: 631, column: 77, scope: !3441)
!3448 = !DILocalVariable(name: "channame", scope: !3441, file: !747, line: 633, type: !118)
!3449 = !DILocation(line: 633, column: 8, scope: !3441)
!3450 = !DILocalVariable(name: "msg", scope: !3441, file: !747, line: 633, type: !118)
!3451 = !DILocation(line: 633, column: 19, scope: !3441)
!3452 = !DILocalVariable(name: "args", scope: !3441, file: !747, line: 633, type: !118)
!3453 = !DILocation(line: 633, column: 25, scope: !3441)
!3454 = !DILocalVariable(name: "recoded", scope: !3441, file: !747, line: 633, type: !118)
!3455 = !DILocation(line: 633, column: 32, scope: !3441)
!3456 = !DILocalVariable(name: "free_arg", scope: !3441, file: !747, line: 634, type: !81)
!3457 = !DILocation(line: 634, column: 8, scope: !3441)
!3458 = !DILocalVariable(name: "chanrec", scope: !3441, file: !747, line: 635, type: !694)
!3459 = !DILocation(line: 635, column: 19, scope: !3441)
!3460 = !DILocalVariable(name: "tmp", scope: !3441, file: !747, line: 636, type: !261)
!3461 = !DILocation(line: 636, column: 10, scope: !3441)
!3462 = !DILocalVariable(name: "nicks", scope: !3441, file: !747, line: 636, type: !261)
!3463 = !DILocation(line: 636, column: 16, scope: !3441)
!3464 = !DILocation(line: 638, column: 2, scope: !3441)
!3465 = distinct !{!3465, !3464}
!3466 = !DILocation(line: 638, column: 11, scope: !3467)
!3467 = !DILexicalBlockFile(scope: !3468, file: !747, discriminator: 1)
!3468 = distinct !DILexicalBlock(scope: !3469, file: !747, line: 638, column: 11)
!3469 = distinct !DILexicalBlock(scope: !3441, file: !747, line: 638, column: 5)
!3470 = !DILocation(line: 638, column: 18, scope: !3467)
!3471 = !DILocation(line: 638, column: 1, scope: !3467)
!3472 = !DILocation(line: 638, column: 85, scope: !3473)
!3473 = !DILexicalBlockFile(scope: !3468, file: !747, discriminator: 2)
!3474 = !DILocation(line: 638, column: 67, scope: !3473)
!3475 = !DILocation(line: 638, column: 52, scope: !3473)
!3476 = !DILocation(line: 638, column: 51, scope: !3473)
!3477 = !DILocation(line: 638, column: 26, scope: !3478)
!3478 = !DILexicalBlockFile(scope: !3473, file: !747, discriminator: 12)
!3479 = !DILocation(line: 638, column: 7, scope: !3473)
!3480 = !DILocation(line: 638, column: 11, scope: !3473)
!3481 = !DILocation(line: 638, column: 6, scope: !3482)
!3482 = !DILexicalBlockFile(scope: !3468, file: !747, discriminator: 3)
!3483 = !DILocation(line: 638, column: 11, scope: !3484)
!3484 = !DILexicalBlockFile(scope: !3469, file: !747, discriminator: 4)
!3485 = !DILocation(line: 638, column: 28, scope: !3486)
!3486 = !DILexicalBlockFile(scope: !3468, file: !747, discriminator: 5)
!3487 = !DILocation(line: 638, column: 40, scope: !3488)
!3488 = !DILexicalBlockFile(scope: !3489, file: !747, discriminator: 6)
!3489 = distinct !DILexicalBlock(scope: !3469, file: !747, line: 638, column: 40)
!3490 = !DILocation(line: 638, column: 47, scope: !3488)
!3491 = !DILocation(line: 638, column: 1, scope: !3488)
!3492 = !DILocation(line: 638, column: 6, scope: !3493)
!3493 = !DILexicalBlockFile(scope: !3489, file: !747, discriminator: 7)
!3494 = !DILocation(line: 638, column: 15, scope: !3493)
!3495 = !DILocation(line: 638, column: 5, scope: !3493)
!3496 = !DILocation(line: 638, column: 40, scope: !3493)
!3497 = !DILocation(line: 638, column: 26, scope: !3498)
!3498 = !DILexicalBlockFile(scope: !3489, file: !747, discriminator: 8)
!3499 = distinct !{!3499, !3500}
!3500 = !DILocation(line: 638, column: 26, scope: !3489)
!3501 = !DILocation(line: 638, column: 31, scope: !3502)
!3502 = !DILexicalBlockFile(scope: !3503, file: !747, discriminator: 9)
!3503 = distinct !DILexicalBlock(scope: !3489, file: !747, line: 638, column: 29)
!3504 = !DILocation(line: 638, column: 109, scope: !3505)
!3505 = !DILexicalBlockFile(scope: !3502, file: !747, discriminator: 13)
!3506 = !DILocation(line: 638, column: 124, scope: !3502)
!3507 = !DILocation(line: 638, column: 132, scope: !3508)
!3508 = !DILexicalBlockFile(scope: !3503, file: !747, discriminator: 10)
!3509 = !DILocation(line: 638, column: 145, scope: !3510)
!3510 = !DILexicalBlockFile(scope: !3469, file: !747, discriminator: 11)
!3511 = !DILocation(line: 640, column: 22, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3441, file: !747, line: 640, column: 6)
!3513 = !DILocation(line: 641, column: 34, scope: !3512)
!3514 = !DILocation(line: 640, column: 7, scope: !3512)
!3515 = !DILocation(line: 640, column: 6, scope: !3441)
!3516 = !DILocation(line: 642, column: 3, scope: !3512)
!3517 = !DILocation(line: 643, column: 7, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3441, file: !747, line: 643, column: 6)
!3519 = !DILocation(line: 643, column: 6, scope: !3518)
!3520 = !DILocation(line: 643, column: 11, scope: !3518)
!3521 = !DILocation(line: 643, column: 6, scope: !3441)
!3522 = !DILocation(line: 643, column: 20, scope: !3523)
!3523 = !DILexicalBlockFile(scope: !3518, file: !747, discriminator: 1)
!3524 = distinct !{!3524, !3525}
!3525 = !DILocation(line: 643, column: 20, scope: !3518)
!3526 = !DILocation(line: 643, column: 41, scope: !3527)
!3527 = !DILexicalBlockFile(scope: !3528, file: !747, discriminator: 2)
!3528 = distinct !DILexicalBlock(scope: !3518, file: !747, line: 643, column: 23)
!3529 = !DILocation(line: 643, column: 25, scope: !3527)
!3530 = !DILocation(line: 643, column: 52, scope: !3527)
!3531 = distinct !{!3531, !3532}
!3532 = !DILocation(line: 643, column: 52, scope: !3528)
!3533 = !DILocation(line: 643, column: 57, scope: !3534)
!3534 = !DILexicalBlockFile(scope: !3535, file: !747, discriminator: 3)
!3535 = distinct !DILexicalBlock(scope: !3528, file: !747, line: 643, column: 55)
!3536 = !DILocation(line: 643, column: 139, scope: !3537)
!3537 = !DILexicalBlockFile(scope: !3534, file: !747, discriminator: 6)
!3538 = !DILocation(line: 643, column: 154, scope: !3534)
!3539 = !DILocation(line: 643, column: 175, scope: !3540)
!3540 = !DILexicalBlockFile(scope: !3528, file: !747, discriminator: 4)
!3541 = !DILocation(line: 643, column: 175, scope: !3542)
!3542 = !DILexicalBlockFile(scope: !3528, file: !747, discriminator: 5)
!3543 = !DILocation(line: 645, column: 147, scope: !3441)
!3544 = !DILocation(line: 645, column: 129, scope: !3441)
!3545 = !DILocation(line: 645, column: 114, scope: !3441)
!3546 = !DILocation(line: 645, column: 25, scope: !3441)
!3547 = !DILocation(line: 645, column: 100, scope: !3548)
!3548 = !DILexicalBlockFile(scope: !3441, file: !747, discriminator: 1)
!3549 = !DILocation(line: 645, column: 100, scope: !3441)
!3550 = !DILocation(line: 645, column: 75, scope: !3551)
!3551 = !DILexicalBlockFile(scope: !3441, file: !747, discriminator: 2)
!3552 = !DILocation(line: 645, column: 59, scope: !3441)
!3553 = !DILocation(line: 645, column: 58, scope: !3441)
!3554 = !DILocation(line: 645, column: 33, scope: !3555)
!3555 = !DILexicalBlockFile(scope: !3441, file: !747, discriminator: 3)
!3556 = !DILocation(line: 645, column: 13, scope: !3441)
!3557 = !DILocation(line: 645, column: 10, scope: !3441)
!3558 = !DILocation(line: 646, column: 6, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3441, file: !747, line: 646, column: 6)
!3560 = !DILocation(line: 646, column: 14, scope: !3559)
!3561 = !DILocation(line: 646, column: 6, scope: !3441)
!3562 = !DILocation(line: 646, column: 22, scope: !3563)
!3563 = !DILexicalBlockFile(scope: !3559, file: !747, discriminator: 1)
!3564 = distinct !{!3564, !3565}
!3565 = !DILocation(line: 646, column: 22, scope: !3559)
!3566 = !DILocation(line: 646, column: 43, scope: !3567)
!3567 = !DILexicalBlockFile(scope: !3568, file: !747, discriminator: 2)
!3568 = distinct !DILexicalBlock(scope: !3559, file: !747, line: 646, column: 25)
!3569 = !DILocation(line: 646, column: 27, scope: !3567)
!3570 = !DILocation(line: 646, column: 54, scope: !3567)
!3571 = distinct !{!3571, !3572}
!3572 = !DILocation(line: 646, column: 54, scope: !3568)
!3573 = !DILocation(line: 646, column: 59, scope: !3574)
!3574 = !DILexicalBlockFile(scope: !3575, file: !747, discriminator: 3)
!3575 = distinct !DILexicalBlock(scope: !3568, file: !747, line: 646, column: 57)
!3576 = !DILocation(line: 646, column: 138, scope: !3577)
!3577 = !DILexicalBlockFile(scope: !3574, file: !747, discriminator: 6)
!3578 = !DILocation(line: 646, column: 153, scope: !3574)
!3579 = !DILocation(line: 646, column: 174, scope: !3580)
!3580 = !DILexicalBlockFile(scope: !3568, file: !747, discriminator: 4)
!3581 = !DILocation(line: 646, column: 174, scope: !3582)
!3582 = !DILexicalBlockFile(scope: !3568, file: !747, discriminator: 5)
!3583 = !DILocation(line: 648, column: 57, scope: !3441)
!3584 = !DILocation(line: 648, column: 39, scope: !3441)
!3585 = !DILocation(line: 648, column: 24, scope: !3441)
!3586 = !DILocation(line: 648, column: 36, scope: !3441)
!3587 = !DILocation(line: 648, column: 41, scope: !3441)
!3588 = !DILocation(line: 648, column: 12, scope: !3548)
!3589 = !DILocation(line: 648, column: 10, scope: !3441)
!3590 = !DILocation(line: 650, column: 26, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3441, file: !747, line: 650, column: 6)
!3592 = !DILocation(line: 650, column: 35, scope: !3591)
!3593 = !DILocation(line: 650, column: 43, scope: !3591)
!3594 = !DILocation(line: 650, column: 6, scope: !3591)
!3595 = !DILocation(line: 650, column: 66, scope: !3591)
!3596 = !DILocation(line: 651, column: 26, scope: !3591)
!3597 = !DILocation(line: 651, column: 35, scope: !3591)
!3598 = !DILocation(line: 651, column: 43, scope: !3591)
!3599 = !DILocation(line: 651, column: 6, scope: !3591)
!3600 = !DILocation(line: 650, column: 6, scope: !3548)
!3601 = !DILocation(line: 652, column: 17, scope: !3591)
!3602 = !DILocation(line: 652, column: 43, scope: !3591)
!3603 = !DILocation(line: 652, column: 52, scope: !3591)
!3604 = !DILocation(line: 652, column: 58, scope: !3591)
!3605 = !DILocation(line: 652, column: 3, scope: !3591)
!3606 = !DILocation(line: 655, column: 9, scope: !3607)
!3607 = distinct !DILexicalBlock(scope: !3591, file: !747, line: 653, column: 7)
!3608 = !DILocation(line: 656, column: 24, scope: !3607)
!3609 = !DILocation(line: 656, column: 33, scope: !3607)
!3610 = !DILocation(line: 657, column: 48, scope: !3607)
!3611 = !DILocation(line: 656, column: 3, scope: !3607)
!3612 = !DILocation(line: 659, column: 22, scope: !3607)
!3613 = !DILocation(line: 659, column: 31, scope: !3607)
!3614 = !DILocation(line: 659, column: 42, scope: !3607)
!3615 = !DILocation(line: 659, column: 10, scope: !3607)
!3616 = !DILocation(line: 659, column: 8, scope: !3607)
!3617 = !DILocation(line: 660, column: 30, scope: !3607)
!3618 = !DILocation(line: 661, column: 64, scope: !3607)
!3619 = !DILocation(line: 661, column: 46, scope: !3607)
!3620 = !DILocation(line: 661, column: 31, scope: !3607)
!3621 = !DILocation(line: 661, column: 43, scope: !3607)
!3622 = !DILocation(line: 661, column: 49, scope: !3607)
!3623 = !DILocation(line: 660, column: 9, scope: !3624)
!3624 = !DILexicalBlockFile(scope: !3607, file: !747, discriminator: 1)
!3625 = !DILocation(line: 660, column: 7, scope: !3607)
!3626 = !DILocation(line: 662, column: 10, scope: !3607)
!3627 = !DILocation(line: 662, column: 3, scope: !3607)
!3628 = !DILocation(line: 664, column: 14, scope: !3629)
!3629 = distinct !DILexicalBlock(scope: !3607, file: !747, line: 664, column: 3)
!3630 = !DILocation(line: 664, column: 12, scope: !3629)
!3631 = !DILocation(line: 664, column: 8, scope: !3629)
!3632 = !DILocation(line: 664, column: 21, scope: !3633)
!3633 = !DILexicalBlockFile(scope: !3634, file: !747, discriminator: 1)
!3634 = distinct !DILexicalBlock(scope: !3629, file: !747, line: 664, column: 3)
!3635 = !DILocation(line: 664, column: 25, scope: !3633)
!3636 = !DILocation(line: 664, column: 3, scope: !3633)
!3637 = !DILocalVariable(name: "rec", scope: !3638, file: !747, line: 665, type: !551)
!3638 = distinct !DILexicalBlock(scope: !3634, file: !747, line: 664, column: 50)
!3639 = !DILocation(line: 665, column: 14, scope: !3638)
!3640 = !DILocation(line: 665, column: 20, scope: !3638)
!3641 = !DILocation(line: 665, column: 25, scope: !3638)
!3642 = !DILocation(line: 667, column: 8, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3638, file: !747, line: 667, column: 8)
!3644 = !DILocation(line: 667, column: 15, scope: !3643)
!3645 = !DILocation(line: 667, column: 24, scope: !3643)
!3646 = !DILocation(line: 667, column: 12, scope: !3643)
!3647 = !DILocation(line: 667, column: 8, scope: !3638)
!3648 = !DILocation(line: 668, column: 19, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !3643, file: !747, line: 667, column: 33)
!3650 = !DILocation(line: 669, column: 19, scope: !3649)
!3651 = !DILocation(line: 669, column: 24, scope: !3649)
!3652 = !DILocation(line: 669, column: 30, scope: !3649)
!3653 = !DILocation(line: 668, column: 5, scope: !3649)
!3654 = !DILocation(line: 670, column: 4, scope: !3649)
!3655 = !DILocation(line: 671, column: 3, scope: !3638)
!3656 = !DILocation(line: 664, column: 39, scope: !3657)
!3657 = !DILexicalBlockFile(scope: !3634, file: !747, discriminator: 2)
!3658 = !DILocation(line: 664, column: 44, scope: !3657)
!3659 = !DILocation(line: 664, column: 37, scope: !3657)
!3660 = !DILocation(line: 664, column: 3, scope: !3657)
!3661 = distinct !{!3661, !3662}
!3662 = !DILocation(line: 664, column: 3, scope: !3607)
!3663 = !DILocation(line: 673, column: 10, scope: !3607)
!3664 = !DILocation(line: 673, column: 3, scope: !3607)
!3665 = !DILocation(line: 674, column: 16, scope: !3607)
!3666 = !DILocation(line: 674, column: 3, scope: !3607)
!3667 = !DILocation(line: 677, column: 9, scope: !3441)
!3668 = !DILocation(line: 677, column: 2, scope: !3441)
!3669 = !DILocation(line: 678, column: 18, scope: !3441)
!3670 = !DILocation(line: 678, column: 2, scope: !3441)
!3671 = !DILocation(line: 679, column: 1, scope: !3441)
!3672 = !DILocation(line: 679, column: 1, scope: !3548)
!3673 = distinct !DISubprogram(name: "cmd_wait", scope: !747, file: !747, line: 596, type: !2599, isLocal: true, isDefinition: true, scopeLine: 597, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !760)
!3674 = !DILocalVariable(name: "data", arg: 1, scope: !3673, file: !747, line: 596, type: !96)
!3675 = !DILocation(line: 596, column: 34, scope: !3673)
!3676 = !DILocalVariable(name: "server", arg: 2, scope: !3673, file: !747, line: 596, type: !98)
!3677 = !DILocation(line: 596, column: 56, scope: !3673)
!3678 = !DILocalVariable(name: "optlist", scope: !3673, file: !747, line: 598, type: !373)
!3679 = !DILocation(line: 598, column: 14, scope: !3673)
!3680 = !DILocalVariable(name: "msecs", scope: !3673, file: !747, line: 599, type: !118)
!3681 = !DILocation(line: 599, column: 8, scope: !3673)
!3682 = !DILocalVariable(name: "free_arg", scope: !3673, file: !747, line: 600, type: !81)
!3683 = !DILocation(line: 600, column: 8, scope: !3673)
!3684 = !DILocalVariable(name: "n", scope: !3673, file: !747, line: 601, type: !79)
!3685 = !DILocation(line: 601, column: 6, scope: !3673)
!3686 = !DILocation(line: 603, column: 2, scope: !3673)
!3687 = distinct !{!3687, !3686}
!3688 = !DILocation(line: 603, column: 11, scope: !3689)
!3689 = !DILexicalBlockFile(scope: !3690, file: !747, discriminator: 1)
!3690 = distinct !DILexicalBlock(scope: !3691, file: !747, line: 603, column: 11)
!3691 = distinct !DILexicalBlock(scope: !3673, file: !747, line: 603, column: 5)
!3692 = !DILocation(line: 603, column: 18, scope: !3689)
!3693 = !DILocation(line: 603, column: 1, scope: !3689)
!3694 = !DILocation(line: 603, column: 85, scope: !3695)
!3695 = !DILexicalBlockFile(scope: !3690, file: !747, discriminator: 2)
!3696 = !DILocation(line: 603, column: 67, scope: !3695)
!3697 = !DILocation(line: 603, column: 52, scope: !3695)
!3698 = !DILocation(line: 603, column: 51, scope: !3695)
!3699 = !DILocation(line: 603, column: 26, scope: !3700)
!3700 = !DILexicalBlockFile(scope: !3695, file: !747, discriminator: 12)
!3701 = !DILocation(line: 603, column: 7, scope: !3695)
!3702 = !DILocation(line: 603, column: 11, scope: !3695)
!3703 = !DILocation(line: 603, column: 6, scope: !3704)
!3704 = !DILexicalBlockFile(scope: !3690, file: !747, discriminator: 3)
!3705 = !DILocation(line: 603, column: 11, scope: !3706)
!3706 = !DILexicalBlockFile(scope: !3691, file: !747, discriminator: 4)
!3707 = !DILocation(line: 603, column: 28, scope: !3708)
!3708 = !DILexicalBlockFile(scope: !3690, file: !747, discriminator: 5)
!3709 = !DILocation(line: 603, column: 40, scope: !3710)
!3710 = !DILexicalBlockFile(scope: !3711, file: !747, discriminator: 6)
!3711 = distinct !DILexicalBlock(scope: !3691, file: !747, line: 603, column: 40)
!3712 = !DILocation(line: 603, column: 47, scope: !3710)
!3713 = !DILocation(line: 603, column: 1, scope: !3710)
!3714 = !DILocation(line: 603, column: 6, scope: !3715)
!3715 = !DILexicalBlockFile(scope: !3711, file: !747, discriminator: 7)
!3716 = !DILocation(line: 603, column: 15, scope: !3715)
!3717 = !DILocation(line: 603, column: 5, scope: !3715)
!3718 = !DILocation(line: 603, column: 40, scope: !3715)
!3719 = !DILocation(line: 603, column: 26, scope: !3720)
!3720 = !DILexicalBlockFile(scope: !3711, file: !747, discriminator: 8)
!3721 = distinct !{!3721, !3722}
!3722 = !DILocation(line: 603, column: 26, scope: !3711)
!3723 = !DILocation(line: 603, column: 31, scope: !3724)
!3724 = !DILexicalBlockFile(scope: !3725, file: !747, discriminator: 9)
!3725 = distinct !DILexicalBlock(scope: !3711, file: !747, line: 603, column: 29)
!3726 = !DILocation(line: 603, column: 109, scope: !3727)
!3727 = !DILexicalBlockFile(scope: !3724, file: !747, discriminator: 13)
!3728 = !DILocation(line: 603, column: 124, scope: !3724)
!3729 = !DILocation(line: 603, column: 132, scope: !3730)
!3730 = !DILexicalBlockFile(scope: !3725, file: !747, discriminator: 10)
!3731 = !DILocation(line: 603, column: 145, scope: !3732)
!3732 = !DILexicalBlockFile(scope: !3691, file: !747, discriminator: 11)
!3733 = !DILocation(line: 605, column: 22, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3673, file: !747, line: 605, column: 6)
!3735 = !DILocation(line: 605, column: 7, scope: !3734)
!3736 = !DILocation(line: 605, column: 6, scope: !3673)
!3737 = !DILocation(line: 608, column: 3, scope: !3734)
!3738 = !DILocation(line: 610, column: 7, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !3673, file: !747, line: 610, column: 6)
!3740 = !DILocation(line: 610, column: 6, scope: !3739)
!3741 = !DILocation(line: 610, column: 13, scope: !3739)
!3742 = !DILocation(line: 610, column: 6, scope: !3673)
!3743 = !DILocation(line: 611, column: 3, scope: !3739)
!3744 = distinct !{!3744, !3743}
!3745 = !DILocation(line: 611, column: 24, scope: !3746)
!3746 = !DILexicalBlockFile(scope: !3747, file: !747, discriminator: 1)
!3747 = distinct !DILexicalBlock(scope: !3739, file: !747, line: 611, column: 6)
!3748 = !DILocation(line: 611, column: 8, scope: !3746)
!3749 = !DILocation(line: 611, column: 35, scope: !3746)
!3750 = distinct !{!3750, !3751}
!3751 = !DILocation(line: 611, column: 35, scope: !3747)
!3752 = !DILocation(line: 611, column: 40, scope: !3753)
!3753 = !DILexicalBlockFile(scope: !3754, file: !747, discriminator: 2)
!3754 = distinct !DILexicalBlock(scope: !3747, file: !747, line: 611, column: 38)
!3755 = !DILocation(line: 611, column: 122, scope: !3756)
!3756 = !DILexicalBlockFile(scope: !3753, file: !747, discriminator: 5)
!3757 = !DILocation(line: 611, column: 137, scope: !3753)
!3758 = !DILocation(line: 611, column: 158, scope: !3759)
!3759 = !DILexicalBlockFile(scope: !3747, file: !747, discriminator: 3)
!3760 = !DILocation(line: 611, column: 158, scope: !3761)
!3761 = !DILexicalBlockFile(scope: !3747, file: !747, discriminator: 4)
!3762 = !DILocation(line: 614, column: 12, scope: !3673)
!3763 = !DILocation(line: 614, column: 55, scope: !3673)
!3764 = !DILocation(line: 614, column: 37, scope: !3673)
!3765 = !DILocation(line: 614, column: 22, scope: !3673)
!3766 = !DILocation(line: 614, column: 90, scope: !3767)
!3767 = !DILexicalBlockFile(scope: !3673, file: !747, discriminator: 1)
!3768 = !DILocation(line: 614, column: 90, scope: !3673)
!3769 = !DILocation(line: 614, column: 72, scope: !3770)
!3770 = !DILexicalBlockFile(scope: !3673, file: !747, discriminator: 2)
!3771 = !DILocation(line: 614, column: 57, scope: !3673)
!3772 = !DILocation(line: 614, column: 56, scope: !3673)
!3773 = !DILocation(line: 614, column: 31, scope: !3774)
!3774 = !DILexicalBlockFile(scope: !3673, file: !747, discriminator: 3)
!3775 = !DILocation(line: 614, column: 9, scope: !3673)
!3776 = !DILocation(line: 617, column: 11, scope: !3673)
!3777 = !DILocation(line: 617, column: 6, scope: !3673)
!3778 = !DILocation(line: 617, column: 4, scope: !3673)
!3779 = !DILocation(line: 618, column: 6, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3673, file: !747, line: 618, column: 6)
!3781 = !DILocation(line: 618, column: 13, scope: !3780)
!3782 = !DILocation(line: 618, column: 20, scope: !3780)
!3783 = !DILocation(line: 618, column: 23, scope: !3784)
!3784 = !DILexicalBlockFile(scope: !3780, file: !747, discriminator: 1)
!3785 = !DILocation(line: 618, column: 25, scope: !3784)
!3786 = !DILocation(line: 618, column: 6, scope: !3784)
!3787 = !DILocation(line: 619, column: 23, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !3780, file: !747, line: 618, column: 30)
!3789 = !DILocation(line: 619, column: 31, scope: !3788)
!3790 = !DILocation(line: 619, column: 3, scope: !3788)
!3791 = !DILocation(line: 620, column: 30, scope: !3788)
!3792 = !DILocation(line: 620, column: 31, scope: !3788)
!3793 = !DILocation(line: 620, column: 3, scope: !3788)
!3794 = !DILocation(line: 620, column: 11, scope: !3788)
!3795 = !DILocation(line: 620, column: 20, scope: !3788)
!3796 = !DILocation(line: 620, column: 27, scope: !3788)
!3797 = !DILocation(line: 621, column: 31, scope: !3788)
!3798 = !DILocation(line: 621, column: 32, scope: !3788)
!3799 = !DILocation(line: 621, column: 3, scope: !3788)
!3800 = !DILocation(line: 621, column: 11, scope: !3788)
!3801 = !DILocation(line: 621, column: 20, scope: !3788)
!3802 = !DILocation(line: 621, column: 28, scope: !3788)
!3803 = !DILocation(line: 622, column: 7, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3788, file: !747, line: 622, column: 7)
!3805 = !DILocation(line: 622, column: 15, scope: !3804)
!3806 = !DILocation(line: 622, column: 24, scope: !3804)
!3807 = !DILocation(line: 622, column: 32, scope: !3804)
!3808 = !DILocation(line: 622, column: 7, scope: !3788)
!3809 = !DILocation(line: 623, column: 4, scope: !3810)
!3810 = distinct !DILexicalBlock(scope: !3804, file: !747, line: 622, column: 41)
!3811 = !DILocation(line: 623, column: 12, scope: !3810)
!3812 = !DILocation(line: 623, column: 21, scope: !3810)
!3813 = !DILocation(line: 623, column: 27, scope: !3810)
!3814 = !DILocation(line: 624, column: 4, scope: !3810)
!3815 = !DILocation(line: 624, column: 12, scope: !3810)
!3816 = !DILocation(line: 624, column: 21, scope: !3810)
!3817 = !DILocation(line: 624, column: 29, scope: !3810)
!3818 = !DILocation(line: 625, column: 3, scope: !3810)
!3819 = !DILocation(line: 626, column: 2, scope: !3788)
!3820 = !DILocation(line: 627, column: 18, scope: !3673)
!3821 = !DILocation(line: 627, column: 2, scope: !3673)
!3822 = !DILocation(line: 628, column: 1, scope: !3673)
!3823 = !DILocation(line: 628, column: 1, scope: !3767)
!3824 = distinct !DISubprogram(name: "cmd_kickban", scope: !747, file: !747, line: 682, type: !886, isLocal: true, isDefinition: true, scopeLine: 684, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !760)
!3825 = !DILocalVariable(name: "data", arg: 1, scope: !3824, file: !747, line: 682, type: !96)
!3826 = !DILocation(line: 682, column: 37, scope: !3824)
!3827 = !DILocalVariable(name: "server", arg: 2, scope: !3824, file: !747, line: 682, type: !98)
!3828 = !DILocation(line: 682, column: 59, scope: !3824)
!3829 = !DILocalVariable(name: "item", arg: 3, scope: !3824, file: !747, line: 683, type: !524)
!3830 = !DILocation(line: 683, column: 38, scope: !3824)
!3831 = !DILocalVariable(name: "chanrec", scope: !3824, file: !747, line: 685, type: !694)
!3832 = !DILocation(line: 685, column: 19, scope: !3824)
!3833 = !DILocalVariable(name: "channel", scope: !3824, file: !747, line: 686, type: !118)
!3834 = !DILocation(line: 686, column: 8, scope: !3824)
!3835 = !DILocalVariable(name: "nicks", scope: !3824, file: !747, line: 686, type: !118)
!3836 = !DILocation(line: 686, column: 18, scope: !3824)
!3837 = !DILocalVariable(name: "reason", scope: !3824, file: !747, line: 686, type: !118)
!3838 = !DILocation(line: 686, column: 26, scope: !3824)
!3839 = !DILocalVariable(name: "kickcmd", scope: !3824, file: !747, line: 686, type: !118)
!3840 = !DILocation(line: 686, column: 35, scope: !3824)
!3841 = !DILocalVariable(name: "bancmd", scope: !3824, file: !747, line: 686, type: !118)
!3842 = !DILocation(line: 686, column: 45, scope: !3824)
!3843 = !DILocalVariable(name: "recoded", scope: !3824, file: !747, line: 686, type: !118)
!3844 = !DILocation(line: 686, column: 54, scope: !3824)
!3845 = !DILocalVariable(name: "nicklist", scope: !3824, file: !747, line: 687, type: !499)
!3846 = !DILocation(line: 687, column: 9, scope: !3824)
!3847 = !DILocalVariable(name: "spacenicks", scope: !3824, file: !747, line: 687, type: !118)
!3848 = !DILocation(line: 687, column: 20, scope: !3824)
!3849 = !DILocalVariable(name: "free_arg", scope: !3824, file: !747, line: 688, type: !81)
!3850 = !DILocation(line: 688, column: 8, scope: !3824)
!3851 = !DILocation(line: 690, column: 2, scope: !3824)
!3852 = distinct !{!3852, !3851}
!3853 = !DILocation(line: 690, column: 11, scope: !3854)
!3854 = !DILexicalBlockFile(scope: !3855, file: !747, discriminator: 1)
!3855 = distinct !DILexicalBlock(scope: !3856, file: !747, line: 690, column: 11)
!3856 = distinct !DILexicalBlock(scope: !3824, file: !747, line: 690, column: 5)
!3857 = !DILocation(line: 690, column: 18, scope: !3854)
!3858 = !DILocation(line: 690, column: 1, scope: !3854)
!3859 = !DILocation(line: 690, column: 85, scope: !3860)
!3860 = !DILexicalBlockFile(scope: !3855, file: !747, discriminator: 2)
!3861 = !DILocation(line: 690, column: 67, scope: !3860)
!3862 = !DILocation(line: 690, column: 52, scope: !3860)
!3863 = !DILocation(line: 690, column: 51, scope: !3860)
!3864 = !DILocation(line: 690, column: 26, scope: !3865)
!3865 = !DILexicalBlockFile(scope: !3860, file: !747, discriminator: 12)
!3866 = !DILocation(line: 690, column: 7, scope: !3860)
!3867 = !DILocation(line: 690, column: 11, scope: !3860)
!3868 = !DILocation(line: 690, column: 6, scope: !3869)
!3869 = !DILexicalBlockFile(scope: !3855, file: !747, discriminator: 3)
!3870 = !DILocation(line: 690, column: 11, scope: !3871)
!3871 = !DILexicalBlockFile(scope: !3856, file: !747, discriminator: 4)
!3872 = !DILocation(line: 690, column: 28, scope: !3873)
!3873 = !DILexicalBlockFile(scope: !3855, file: !747, discriminator: 5)
!3874 = !DILocation(line: 690, column: 40, scope: !3875)
!3875 = !DILexicalBlockFile(scope: !3876, file: !747, discriminator: 6)
!3876 = distinct !DILexicalBlock(scope: !3856, file: !747, line: 690, column: 40)
!3877 = !DILocation(line: 690, column: 47, scope: !3875)
!3878 = !DILocation(line: 690, column: 1, scope: !3875)
!3879 = !DILocation(line: 690, column: 6, scope: !3880)
!3880 = !DILexicalBlockFile(scope: !3876, file: !747, discriminator: 7)
!3881 = !DILocation(line: 690, column: 15, scope: !3880)
!3882 = !DILocation(line: 690, column: 5, scope: !3880)
!3883 = !DILocation(line: 690, column: 40, scope: !3880)
!3884 = !DILocation(line: 690, column: 26, scope: !3885)
!3885 = !DILexicalBlockFile(scope: !3876, file: !747, discriminator: 8)
!3886 = distinct !{!3886, !3887}
!3887 = !DILocation(line: 690, column: 26, scope: !3876)
!3888 = !DILocation(line: 690, column: 31, scope: !3889)
!3889 = !DILexicalBlockFile(scope: !3890, file: !747, discriminator: 9)
!3890 = distinct !DILexicalBlock(scope: !3876, file: !747, line: 690, column: 29)
!3891 = !DILocation(line: 690, column: 109, scope: !3892)
!3892 = !DILexicalBlockFile(scope: !3889, file: !747, discriminator: 13)
!3893 = !DILocation(line: 690, column: 124, scope: !3889)
!3894 = !DILocation(line: 690, column: 132, scope: !3895)
!3895 = !DILexicalBlockFile(scope: !3890, file: !747, discriminator: 10)
!3896 = !DILocation(line: 690, column: 145, scope: !3897)
!3897 = !DILexicalBlockFile(scope: !3856, file: !747, discriminator: 11)
!3898 = !DILocation(line: 692, column: 22, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3824, file: !747, line: 692, column: 6)
!3900 = !DILocation(line: 693, column: 22, scope: !3899)
!3901 = !DILocation(line: 692, column: 7, scope: !3899)
!3902 = !DILocation(line: 692, column: 6, scope: !3824)
!3903 = !DILocation(line: 694, column: 3, scope: !3899)
!3904 = !DILocation(line: 696, column: 7, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3824, file: !747, line: 696, column: 6)
!3906 = !DILocation(line: 696, column: 6, scope: !3905)
!3907 = !DILocation(line: 696, column: 15, scope: !3905)
!3908 = !DILocation(line: 696, column: 23, scope: !3905)
!3909 = !DILocation(line: 696, column: 27, scope: !3910)
!3910 = !DILexicalBlockFile(scope: !3905, file: !747, discriminator: 1)
!3911 = !DILocation(line: 696, column: 26, scope: !3910)
!3912 = !DILocation(line: 696, column: 33, scope: !3910)
!3913 = !DILocation(line: 696, column: 6, scope: !3910)
!3914 = !DILocation(line: 697, column: 3, scope: !3905)
!3915 = distinct !{!3915, !3914}
!3916 = !DILocation(line: 697, column: 24, scope: !3917)
!3917 = !DILexicalBlockFile(scope: !3918, file: !747, discriminator: 1)
!3918 = distinct !DILexicalBlock(scope: !3905, file: !747, line: 697, column: 6)
!3919 = !DILocation(line: 697, column: 8, scope: !3917)
!3920 = !DILocation(line: 697, column: 35, scope: !3917)
!3921 = distinct !{!3921, !3922}
!3922 = !DILocation(line: 697, column: 35, scope: !3918)
!3923 = !DILocation(line: 697, column: 40, scope: !3924)
!3924 = !DILexicalBlockFile(scope: !3925, file: !747, discriminator: 2)
!3925 = distinct !DILexicalBlock(scope: !3918, file: !747, line: 697, column: 38)
!3926 = !DILocation(line: 697, column: 122, scope: !3927)
!3927 = !DILexicalBlockFile(scope: !3924, file: !747, discriminator: 5)
!3928 = !DILocation(line: 697, column: 137, scope: !3924)
!3929 = !DILocation(line: 697, column: 158, scope: !3930)
!3930 = !DILexicalBlockFile(scope: !3918, file: !747, discriminator: 3)
!3931 = !DILocation(line: 697, column: 158, scope: !3932)
!3932 = !DILexicalBlockFile(scope: !3918, file: !747, discriminator: 4)
!3933 = !DILocation(line: 699, column: 147, scope: !3824)
!3934 = !DILocation(line: 699, column: 129, scope: !3824)
!3935 = !DILocation(line: 699, column: 114, scope: !3824)
!3936 = !DILocation(line: 699, column: 25, scope: !3824)
!3937 = !DILocation(line: 699, column: 100, scope: !3938)
!3938 = !DILexicalBlockFile(scope: !3824, file: !747, discriminator: 1)
!3939 = !DILocation(line: 699, column: 100, scope: !3824)
!3940 = !DILocation(line: 699, column: 75, scope: !3941)
!3941 = !DILexicalBlockFile(scope: !3824, file: !747, discriminator: 2)
!3942 = !DILocation(line: 699, column: 59, scope: !3824)
!3943 = !DILocation(line: 699, column: 58, scope: !3824)
!3944 = !DILocation(line: 699, column: 33, scope: !3945)
!3945 = !DILexicalBlockFile(scope: !3824, file: !747, discriminator: 3)
!3946 = !DILocation(line: 699, column: 13, scope: !3824)
!3947 = !DILocation(line: 699, column: 10, scope: !3824)
!3948 = !DILocation(line: 700, column: 6, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !3824, file: !747, line: 700, column: 6)
!3950 = !DILocation(line: 700, column: 14, scope: !3949)
!3951 = !DILocation(line: 700, column: 6, scope: !3824)
!3952 = !DILocation(line: 701, column: 3, scope: !3949)
!3953 = distinct !{!3953, !3952}
!3954 = !DILocation(line: 701, column: 24, scope: !3955)
!3955 = !DILexicalBlockFile(scope: !3956, file: !747, discriminator: 1)
!3956 = distinct !DILexicalBlock(scope: !3949, file: !747, line: 701, column: 6)
!3957 = !DILocation(line: 701, column: 8, scope: !3955)
!3958 = !DILocation(line: 701, column: 35, scope: !3955)
!3959 = distinct !{!3959, !3960}
!3960 = !DILocation(line: 701, column: 35, scope: !3956)
!3961 = !DILocation(line: 701, column: 40, scope: !3962)
!3962 = !DILexicalBlockFile(scope: !3963, file: !747, discriminator: 2)
!3963 = distinct !DILexicalBlock(scope: !3956, file: !747, line: 701, column: 38)
!3964 = !DILocation(line: 701, column: 119, scope: !3965)
!3965 = !DILexicalBlockFile(scope: !3962, file: !747, discriminator: 5)
!3966 = !DILocation(line: 701, column: 134, scope: !3962)
!3967 = !DILocation(line: 701, column: 155, scope: !3968)
!3968 = !DILexicalBlockFile(scope: !3956, file: !747, discriminator: 3)
!3969 = !DILocation(line: 701, column: 155, scope: !3970)
!3970 = !DILexicalBlockFile(scope: !3956, file: !747, discriminator: 4)
!3971 = !DILocation(line: 703, column: 24, scope: !3824)
!3972 = !DILocation(line: 703, column: 13, scope: !3824)
!3973 = !DILocation(line: 703, column: 11, scope: !3824)
!3974 = !DILocation(line: 704, column: 31, scope: !3824)
!3975 = !DILocation(line: 704, column: 15, scope: !3824)
!3976 = !DILocation(line: 704, column: 13, scope: !3824)
!3977 = !DILocation(line: 705, column: 13, scope: !3824)
!3978 = !DILocation(line: 705, column: 2, scope: !3824)
!3979 = !DILocation(line: 707, column: 57, scope: !3824)
!3980 = !DILocation(line: 707, column: 39, scope: !3824)
!3981 = !DILocation(line: 707, column: 24, scope: !3824)
!3982 = !DILocation(line: 707, column: 36, scope: !3824)
!3983 = !DILocation(line: 707, column: 44, scope: !3824)
!3984 = !DILocation(line: 707, column: 12, scope: !3938)
!3985 = !DILocation(line: 707, column: 10, scope: !3824)
!3986 = !DILocation(line: 708, column: 40, scope: !3824)
!3987 = !DILocation(line: 708, column: 49, scope: !3824)
!3988 = !DILocation(line: 708, column: 55, scope: !3824)
!3989 = !DILocation(line: 708, column: 62, scope: !3824)
!3990 = !DILocation(line: 708, column: 12, scope: !3824)
!3991 = !DILocation(line: 708, column: 10, scope: !3824)
!3992 = !DILocation(line: 709, column: 9, scope: !3824)
!3993 = !DILocation(line: 709, column: 2, scope: !3824)
!3994 = !DILocation(line: 711, column: 36, scope: !3824)
!3995 = !DILocation(line: 711, column: 45, scope: !3824)
!3996 = !DILocation(line: 711, column: 51, scope: !3824)
!3997 = !DILocation(line: 711, column: 11, scope: !3824)
!3998 = !DILocation(line: 711, column: 9, scope: !3824)
!3999 = !DILocation(line: 712, column: 9, scope: !3824)
!4000 = !DILocation(line: 712, column: 2, scope: !3824)
!4001 = !DILocation(line: 714, column: 6, scope: !4002)
!4002 = distinct !DILexicalBlock(scope: !3824, file: !747, line: 714, column: 6)
!4003 = !DILocation(line: 714, column: 6, scope: !3824)
!4004 = !DILocation(line: 715, column: 34, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !4002, file: !747, line: 714, column: 50)
!4006 = !DILocation(line: 715, column: 43, scope: !4005)
!4007 = !DILocation(line: 715, column: 51, scope: !4005)
!4008 = !DILocation(line: 715, column: 3, scope: !4005)
!4009 = !DILocation(line: 716, column: 33, scope: !4005)
!4010 = !DILocation(line: 716, column: 41, scope: !4005)
!4011 = !DILocation(line: 716, column: 49, scope: !4005)
!4012 = !DILocation(line: 716, column: 3, scope: !4005)
!4013 = !DILocation(line: 717, column: 2, scope: !4005)
!4014 = !DILocation(line: 718, column: 33, scope: !4015)
!4015 = distinct !DILexicalBlock(scope: !4002, file: !747, line: 717, column: 9)
!4016 = !DILocation(line: 718, column: 41, scope: !4015)
!4017 = !DILocation(line: 718, column: 49, scope: !4015)
!4018 = !DILocation(line: 718, column: 3, scope: !4015)
!4019 = !DILocation(line: 719, column: 34, scope: !4015)
!4020 = !DILocation(line: 719, column: 43, scope: !4015)
!4021 = !DILocation(line: 719, column: 51, scope: !4015)
!4022 = !DILocation(line: 719, column: 3, scope: !4015)
!4023 = !DILocation(line: 721, column: 9, scope: !3824)
!4024 = !DILocation(line: 721, column: 2, scope: !3824)
!4025 = !DILocation(line: 722, column: 9, scope: !3824)
!4026 = !DILocation(line: 722, column: 2, scope: !3824)
!4027 = !DILocation(line: 724, column: 18, scope: !3824)
!4028 = !DILocation(line: 724, column: 2, scope: !3824)
!4029 = !DILocation(line: 725, column: 1, scope: !3824)
!4030 = !DILocation(line: 725, column: 1, scope: !3938)
!4031 = distinct !DISubprogram(name: "cmd_knockout", scope: !747, file: !747, line: 765, type: !4032, isLocal: true, isDefinition: true, scopeLine: 767, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !760)
!4032 = !DISubroutineType(types: !4033)
!4033 = !{null, !96, !98, !694}
!4034 = !DILocalVariable(name: "data", arg: 1, scope: !4031, file: !747, line: 765, type: !96)
!4035 = !DILocation(line: 765, column: 38, scope: !4031)
!4036 = !DILocalVariable(name: "server", arg: 2, scope: !4031, file: !747, line: 765, type: !98)
!4037 = !DILocation(line: 765, column: 60, scope: !4031)
!4038 = !DILocalVariable(name: "channel", arg: 3, scope: !4031, file: !747, line: 766, type: !694)
!4039 = !DILocation(line: 766, column: 43, scope: !4031)
!4040 = !DILocalVariable(name: "rec", scope: !4031, file: !747, line: 768, type: !745)
!4041 = !DILocation(line: 768, column: 16, scope: !4031)
!4042 = !DILocalVariable(name: "nicks", scope: !4031, file: !747, line: 769, type: !118)
!4043 = !DILocation(line: 769, column: 8, scope: !4031)
!4044 = !DILocalVariable(name: "reason", scope: !4031, file: !747, line: 769, type: !118)
!4045 = !DILocation(line: 769, column: 16, scope: !4031)
!4046 = !DILocalVariable(name: "timeoutstr", scope: !4031, file: !747, line: 769, type: !118)
!4047 = !DILocation(line: 769, column: 25, scope: !4031)
!4048 = !DILocalVariable(name: "kickcmd", scope: !4031, file: !747, line: 769, type: !118)
!4049 = !DILocation(line: 769, column: 38, scope: !4031)
!4050 = !DILocalVariable(name: "bancmd", scope: !4031, file: !747, line: 769, type: !118)
!4051 = !DILocation(line: 769, column: 48, scope: !4031)
!4052 = !DILocalVariable(name: "recoded", scope: !4031, file: !747, line: 769, type: !118)
!4053 = !DILocation(line: 769, column: 57, scope: !4031)
!4054 = !DILocalVariable(name: "nicklist", scope: !4031, file: !747, line: 770, type: !499)
!4055 = !DILocation(line: 770, column: 9, scope: !4031)
!4056 = !DILocalVariable(name: "spacenicks", scope: !4031, file: !747, line: 770, type: !118)
!4057 = !DILocation(line: 770, column: 20, scope: !4031)
!4058 = !DILocalVariable(name: "banmasks", scope: !4031, file: !747, line: 770, type: !118)
!4059 = !DILocation(line: 770, column: 33, scope: !4031)
!4060 = !DILocalVariable(name: "free_arg", scope: !4031, file: !747, line: 771, type: !81)
!4061 = !DILocation(line: 771, column: 8, scope: !4031)
!4062 = !DILocalVariable(name: "timeleft", scope: !4031, file: !747, line: 772, type: !79)
!4063 = !DILocation(line: 772, column: 6, scope: !4031)
!4064 = !DILocalVariable(name: "ptr", scope: !4031, file: !747, line: 773, type: !261)
!4065 = !DILocation(line: 773, column: 10, scope: !4031)
!4066 = !DILocation(line: 775, column: 2, scope: !4031)
!4067 = distinct !{!4067, !4066}
!4068 = !DILocation(line: 775, column: 11, scope: !4069)
!4069 = !DILexicalBlockFile(scope: !4070, file: !747, discriminator: 1)
!4070 = distinct !DILexicalBlock(scope: !4071, file: !747, line: 775, column: 11)
!4071 = distinct !DILexicalBlock(scope: !4031, file: !747, line: 775, column: 5)
!4072 = !DILocation(line: 775, column: 18, scope: !4069)
!4073 = !DILocation(line: 775, column: 1, scope: !4069)
!4074 = !DILocation(line: 775, column: 85, scope: !4075)
!4075 = !DILexicalBlockFile(scope: !4070, file: !747, discriminator: 2)
!4076 = !DILocation(line: 775, column: 67, scope: !4075)
!4077 = !DILocation(line: 775, column: 52, scope: !4075)
!4078 = !DILocation(line: 775, column: 51, scope: !4075)
!4079 = !DILocation(line: 775, column: 26, scope: !4080)
!4080 = !DILexicalBlockFile(scope: !4075, file: !747, discriminator: 12)
!4081 = !DILocation(line: 775, column: 7, scope: !4075)
!4082 = !DILocation(line: 775, column: 11, scope: !4075)
!4083 = !DILocation(line: 775, column: 6, scope: !4084)
!4084 = !DILexicalBlockFile(scope: !4070, file: !747, discriminator: 3)
!4085 = !DILocation(line: 775, column: 11, scope: !4086)
!4086 = !DILexicalBlockFile(scope: !4071, file: !747, discriminator: 4)
!4087 = !DILocation(line: 775, column: 28, scope: !4088)
!4088 = !DILexicalBlockFile(scope: !4070, file: !747, discriminator: 5)
!4089 = !DILocation(line: 775, column: 40, scope: !4090)
!4090 = !DILexicalBlockFile(scope: !4091, file: !747, discriminator: 6)
!4091 = distinct !DILexicalBlock(scope: !4071, file: !747, line: 775, column: 40)
!4092 = !DILocation(line: 775, column: 47, scope: !4090)
!4093 = !DILocation(line: 775, column: 1, scope: !4090)
!4094 = !DILocation(line: 775, column: 6, scope: !4095)
!4095 = !DILexicalBlockFile(scope: !4091, file: !747, discriminator: 7)
!4096 = !DILocation(line: 775, column: 15, scope: !4095)
!4097 = !DILocation(line: 775, column: 5, scope: !4095)
!4098 = !DILocation(line: 775, column: 40, scope: !4095)
!4099 = !DILocation(line: 775, column: 26, scope: !4100)
!4100 = !DILexicalBlockFile(scope: !4091, file: !747, discriminator: 8)
!4101 = distinct !{!4101, !4102}
!4102 = !DILocation(line: 775, column: 26, scope: !4091)
!4103 = !DILocation(line: 775, column: 31, scope: !4104)
!4104 = !DILexicalBlockFile(scope: !4105, file: !747, discriminator: 9)
!4105 = distinct !DILexicalBlock(scope: !4091, file: !747, line: 775, column: 29)
!4106 = !DILocation(line: 775, column: 109, scope: !4107)
!4107 = !DILexicalBlockFile(scope: !4104, file: !747, discriminator: 13)
!4108 = !DILocation(line: 775, column: 124, scope: !4104)
!4109 = !DILocation(line: 775, column: 132, scope: !4110)
!4110 = !DILexicalBlockFile(scope: !4105, file: !747, discriminator: 10)
!4111 = !DILocation(line: 775, column: 145, scope: !4112)
!4112 = !DILexicalBlockFile(scope: !4071, file: !747, discriminator: 11)
!4113 = !DILocation(line: 777, column: 96, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4031, file: !747, line: 777, column: 6)
!4115 = !DILocation(line: 777, column: 71, scope: !4114)
!4116 = !DILocation(line: 777, column: 55, scope: !4114)
!4117 = !DILocation(line: 777, column: 54, scope: !4114)
!4118 = !DILocation(line: 777, column: 29, scope: !4119)
!4119 = !DILexicalBlockFile(scope: !4114, file: !747, discriminator: 3)
!4120 = !DILocation(line: 777, column: 9, scope: !4114)
!4121 = !DILocation(line: 777, column: 6, scope: !4031)
!4122 = !DILocation(line: 777, column: 8, scope: !4123)
!4123 = !DILexicalBlockFile(scope: !4114, file: !747, discriminator: 1)
!4124 = !DILocation(line: 777, column: 6, scope: !4125)
!4125 = !DILexicalBlockFile(scope: !4031, file: !747, discriminator: 2)
!4126 = !DILocation(line: 778, column: 3, scope: !4114)
!4127 = distinct !{!4127, !4126}
!4128 = !DILocation(line: 778, column: 8, scope: !4129)
!4129 = !DILexicalBlockFile(scope: !4130, file: !747, discriminator: 1)
!4130 = distinct !DILexicalBlock(scope: !4114, file: !747, line: 778, column: 6)
!4131 = !DILocation(line: 778, column: 83, scope: !4132)
!4132 = !DILexicalBlockFile(scope: !4129, file: !747, discriminator: 3)
!4133 = !DILocation(line: 778, column: 98, scope: !4129)
!4134 = !DILocation(line: 778, column: 106, scope: !4135)
!4135 = !DILexicalBlockFile(scope: !4130, file: !747, discriminator: 2)
!4136 = !DILocation(line: 780, column: 29, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !4031, file: !747, line: 780, column: 5)
!4138 = !DILocation(line: 780, column: 28, scope: !4137)
!4139 = !DILocation(line: 780, column: 5, scope: !4137)
!4140 = !DILocation(line: 780, column: 6, scope: !4137)
!4141 = !DILocation(line: 780, column: 8, scope: !4137)
!4142 = !DILocation(line: 780, column: 7, scope: !4137)
!4143 = !DILocation(line: 780, column: 9, scope: !4137)
!4144 = !DILocation(line: 780, column: 5, scope: !4031)
!4145 = !DILocation(line: 782, column: 23, scope: !4146)
!4146 = distinct !DILexicalBlock(scope: !4147, file: !747, line: 782, column: 7)
!4147 = distinct !DILexicalBlock(scope: !4137, file: !747, line: 780, column: 23)
!4148 = !DILocation(line: 782, column: 8, scope: !4146)
!4149 = !DILocation(line: 782, column: 7, scope: !4147)
!4150 = !DILocation(line: 784, column: 25, scope: !4146)
!4151 = !DILocation(line: 786, column: 28, scope: !4152)
!4152 = distinct !DILexicalBlock(scope: !4147, file: !747, line: 786, column: 7)
!4153 = !DILocation(line: 786, column: 8, scope: !4152)
!4154 = !DILocation(line: 786, column: 7, scope: !4147)
!4155 = !DILocation(line: 787, column: 4, scope: !4152)
!4156 = distinct !{!4156, !4155}
!4157 = !DILocation(line: 787, column: 25, scope: !4158)
!4158 = !DILexicalBlockFile(scope: !4159, file: !747, discriminator: 1)
!4159 = distinct !DILexicalBlock(scope: !4152, file: !747, line: 787, column: 7)
!4160 = !DILocation(line: 787, column: 9, scope: !4158)
!4161 = !DILocation(line: 787, column: 36, scope: !4158)
!4162 = distinct !{!4162, !4163}
!4163 = !DILocation(line: 787, column: 36, scope: !4159)
!4164 = !DILocation(line: 787, column: 41, scope: !4165)
!4165 = !DILexicalBlockFile(scope: !4166, file: !747, discriminator: 2)
!4166 = distinct !DILexicalBlock(scope: !4159, file: !747, line: 787, column: 39)
!4167 = !DILocation(line: 787, column: 118, scope: !4168)
!4168 = !DILexicalBlockFile(scope: !4165, file: !747, discriminator: 5)
!4169 = !DILocation(line: 787, column: 133, scope: !4165)
!4170 = !DILocation(line: 787, column: 154, scope: !4171)
!4171 = !DILexicalBlockFile(scope: !4159, file: !747, discriminator: 3)
!4172 = !DILocation(line: 787, column: 154, scope: !4173)
!4173 = !DILexicalBlockFile(scope: !4159, file: !747, discriminator: 4)
!4174 = !DILocation(line: 788, column: 2, scope: !4147)
!4175 = !DILocation(line: 789, column: 23, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !4177, file: !747, line: 789, column: 7)
!4177 = distinct !DILexicalBlock(scope: !4137, file: !747, line: 788, column: 9)
!4178 = !DILocation(line: 789, column: 8, scope: !4176)
!4179 = !DILocation(line: 789, column: 7, scope: !4177)
!4180 = !DILocation(line: 791, column: 4, scope: !4176)
!4181 = !DILocation(line: 792, column: 28, scope: !4177)
!4182 = !DILocation(line: 792, column: 26, scope: !4177)
!4183 = !DILocation(line: 795, column: 7, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4031, file: !747, line: 795, column: 6)
!4185 = !DILocation(line: 795, column: 6, scope: !4184)
!4186 = !DILocation(line: 795, column: 13, scope: !4184)
!4187 = !DILocation(line: 795, column: 6, scope: !4031)
!4188 = !DILocation(line: 795, column: 22, scope: !4189)
!4189 = !DILexicalBlockFile(scope: !4184, file: !747, discriminator: 1)
!4190 = distinct !{!4190, !4191}
!4191 = !DILocation(line: 795, column: 22, scope: !4184)
!4192 = !DILocation(line: 795, column: 43, scope: !4193)
!4193 = !DILexicalBlockFile(scope: !4194, file: !747, discriminator: 2)
!4194 = distinct !DILexicalBlock(scope: !4184, file: !747, line: 795, column: 25)
!4195 = !DILocation(line: 795, column: 27, scope: !4193)
!4196 = !DILocation(line: 795, column: 54, scope: !4193)
!4197 = distinct !{!4197, !4198}
!4198 = !DILocation(line: 795, column: 54, scope: !4194)
!4199 = !DILocation(line: 795, column: 59, scope: !4200)
!4200 = !DILexicalBlockFile(scope: !4201, file: !747, discriminator: 3)
!4201 = distinct !DILexicalBlock(scope: !4194, file: !747, line: 795, column: 57)
!4202 = !DILocation(line: 795, column: 141, scope: !4203)
!4203 = !DILexicalBlockFile(scope: !4200, file: !747, discriminator: 6)
!4204 = !DILocation(line: 795, column: 156, scope: !4200)
!4205 = !DILocation(line: 795, column: 177, scope: !4206)
!4206 = !DILexicalBlockFile(scope: !4194, file: !747, discriminator: 4)
!4207 = !DILocation(line: 795, column: 177, scope: !4208)
!4208 = !DILexicalBlockFile(scope: !4194, file: !747, discriminator: 5)
!4209 = !DILocation(line: 797, column: 24, scope: !4031)
!4210 = !DILocation(line: 797, column: 13, scope: !4031)
!4211 = !DILocation(line: 797, column: 11, scope: !4031)
!4212 = !DILocation(line: 798, column: 31, scope: !4031)
!4213 = !DILocation(line: 798, column: 15, scope: !4031)
!4214 = !DILocation(line: 798, column: 13, scope: !4031)
!4215 = !DILocation(line: 799, column: 13, scope: !4031)
!4216 = !DILocation(line: 799, column: 2, scope: !4031)
!4217 = !DILocation(line: 801, column: 27, scope: !4031)
!4218 = !DILocation(line: 801, column: 36, scope: !4031)
!4219 = !DILocation(line: 801, column: 13, scope: !4031)
!4220 = !DILocation(line: 801, column: 11, scope: !4031)
!4221 = !DILocation(line: 802, column: 9, scope: !4031)
!4222 = !DILocation(line: 802, column: 2, scope: !4031)
!4223 = !DILocation(line: 804, column: 57, scope: !4031)
!4224 = !DILocation(line: 804, column: 39, scope: !4031)
!4225 = !DILocation(line: 804, column: 24, scope: !4031)
!4226 = !DILocation(line: 804, column: 36, scope: !4031)
!4227 = !DILocation(line: 804, column: 44, scope: !4031)
!4228 = !DILocation(line: 804, column: 53, scope: !4031)
!4229 = !DILocation(line: 804, column: 12, scope: !4230)
!4230 = !DILexicalBlockFile(scope: !4031, file: !747, discriminator: 1)
!4231 = !DILocation(line: 804, column: 10, scope: !4031)
!4232 = !DILocation(line: 805, column: 40, scope: !4031)
!4233 = !DILocation(line: 805, column: 49, scope: !4031)
!4234 = !DILocation(line: 805, column: 55, scope: !4031)
!4235 = !DILocation(line: 805, column: 62, scope: !4031)
!4236 = !DILocation(line: 805, column: 12, scope: !4031)
!4237 = !DILocation(line: 805, column: 10, scope: !4031)
!4238 = !DILocation(line: 806, column: 9, scope: !4031)
!4239 = !DILocation(line: 806, column: 2, scope: !4031)
!4240 = !DILocation(line: 808, column: 12, scope: !4031)
!4241 = !DILocation(line: 808, column: 11, scope: !4031)
!4242 = !DILocation(line: 808, column: 21, scope: !4031)
!4243 = !DILocation(line: 808, column: 11, scope: !4230)
!4244 = !DILocation(line: 809, column: 28, scope: !4031)
!4245 = !DILocation(line: 809, column: 37, scope: !4031)
!4246 = !DILocation(line: 809, column: 43, scope: !4031)
!4247 = !DILocation(line: 809, column: 3, scope: !4031)
!4248 = !DILocation(line: 808, column: 11, scope: !4125)
!4249 = !DILocation(line: 808, column: 11, scope: !4250)
!4250 = !DILexicalBlockFile(scope: !4031, file: !747, discriminator: 3)
!4251 = !DILocation(line: 808, column: 9, scope: !4250)
!4252 = !DILocation(line: 811, column: 6, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4031, file: !747, line: 811, column: 6)
!4254 = !DILocation(line: 811, column: 6, scope: !4031)
!4255 = !DILocation(line: 812, column: 34, scope: !4256)
!4256 = distinct !DILexicalBlock(scope: !4253, file: !747, line: 811, column: 50)
!4257 = !DILocation(line: 812, column: 43, scope: !4256)
!4258 = !DILocation(line: 812, column: 51, scope: !4256)
!4259 = !DILocation(line: 812, column: 3, scope: !4256)
!4260 = !DILocation(line: 813, column: 7, scope: !4261)
!4261 = distinct !DILexicalBlock(scope: !4256, file: !747, line: 813, column: 7)
!4262 = !DILocation(line: 813, column: 14, scope: !4261)
!4263 = !DILocation(line: 813, column: 7, scope: !4256)
!4264 = !DILocation(line: 814, column: 34, scope: !4261)
!4265 = !DILocation(line: 814, column: 42, scope: !4261)
!4266 = !DILocation(line: 814, column: 50, scope: !4261)
!4267 = !DILocation(line: 814, column: 4, scope: !4261)
!4268 = !DILocation(line: 815, column: 2, scope: !4256)
!4269 = !DILocation(line: 816, column: 7, scope: !4270)
!4270 = distinct !DILexicalBlock(scope: !4271, file: !747, line: 816, column: 7)
!4271 = distinct !DILexicalBlock(scope: !4253, file: !747, line: 815, column: 9)
!4272 = !DILocation(line: 816, column: 14, scope: !4270)
!4273 = !DILocation(line: 816, column: 7, scope: !4271)
!4274 = !DILocation(line: 817, column: 34, scope: !4270)
!4275 = !DILocation(line: 817, column: 42, scope: !4270)
!4276 = !DILocation(line: 817, column: 50, scope: !4270)
!4277 = !DILocation(line: 817, column: 4, scope: !4270)
!4278 = !DILocation(line: 818, column: 34, scope: !4271)
!4279 = !DILocation(line: 818, column: 43, scope: !4271)
!4280 = !DILocation(line: 818, column: 51, scope: !4271)
!4281 = !DILocation(line: 818, column: 3, scope: !4271)
!4282 = !DILocation(line: 820, column: 9, scope: !4031)
!4283 = !DILocation(line: 820, column: 2, scope: !4031)
!4284 = !DILocation(line: 821, column: 9, scope: !4031)
!4285 = !DILocation(line: 821, column: 2, scope: !4031)
!4286 = !DILocation(line: 823, column: 7, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4031, file: !747, line: 823, column: 6)
!4288 = !DILocation(line: 823, column: 6, scope: !4287)
!4289 = !DILocation(line: 823, column: 16, scope: !4287)
!4290 = !DILocation(line: 823, column: 6, scope: !4031)
!4291 = !DILocation(line: 824, column: 10, scope: !4287)
!4292 = !DILocation(line: 824, column: 3, scope: !4287)
!4293 = !DILocation(line: 827, column: 14, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4295, file: !747, line: 827, column: 3)
!4295 = distinct !DILexicalBlock(scope: !4287, file: !747, line: 825, column: 7)
!4296 = !DILocation(line: 827, column: 22, scope: !4294)
!4297 = !DILocation(line: 827, column: 12, scope: !4294)
!4298 = !DILocation(line: 827, column: 8, scope: !4294)
!4299 = !DILocation(line: 827, column: 36, scope: !4300)
!4300 = !DILexicalBlockFile(scope: !4301, file: !747, discriminator: 1)
!4301 = distinct !DILexicalBlock(scope: !4294, file: !747, line: 827, column: 3)
!4302 = !DILocation(line: 827, column: 40, scope: !4300)
!4303 = !DILocation(line: 827, column: 3, scope: !4300)
!4304 = !DILocation(line: 828, column: 10, scope: !4305)
!4305 = distinct !DILexicalBlock(scope: !4301, file: !747, line: 827, column: 65)
!4306 = !DILocation(line: 828, column: 15, scope: !4305)
!4307 = !DILocation(line: 828, column: 8, scope: !4305)
!4308 = !DILocation(line: 829, column: 8, scope: !4309)
!4309 = distinct !DILexicalBlock(scope: !4305, file: !747, line: 829, column: 8)
!4310 = !DILocation(line: 829, column: 19, scope: !4309)
!4311 = !DILocation(line: 829, column: 24, scope: !4309)
!4312 = !DILocation(line: 829, column: 16, scope: !4309)
!4313 = !DILocation(line: 829, column: 32, scope: !4309)
!4314 = !DILocation(line: 830, column: 19, scope: !4309)
!4315 = !DILocation(line: 830, column: 24, scope: !4309)
!4316 = !DILocation(line: 830, column: 29, scope: !4309)
!4317 = !DILocation(line: 830, column: 9, scope: !4309)
!4318 = !DILocation(line: 829, column: 8, scope: !4319)
!4319 = !DILexicalBlockFile(scope: !4305, file: !747, discriminator: 1)
!4320 = !DILocation(line: 831, column: 5, scope: !4309)
!4321 = !DILocation(line: 832, column: 3, scope: !4305)
!4322 = !DILocation(line: 827, column: 54, scope: !4323)
!4323 = !DILexicalBlockFile(scope: !4301, file: !747, discriminator: 2)
!4324 = !DILocation(line: 827, column: 59, scope: !4323)
!4325 = !DILocation(line: 827, column: 52, scope: !4323)
!4326 = !DILocation(line: 827, column: 3, scope: !4323)
!4327 = distinct !{!4327, !4328}
!4328 = !DILocation(line: 827, column: 3, scope: !4295)
!4329 = !DILocation(line: 833, column: 7, scope: !4330)
!4330 = distinct !DILexicalBlock(scope: !4295, file: !747, line: 833, column: 7)
!4331 = !DILocation(line: 833, column: 11, scope: !4330)
!4332 = !DILocation(line: 833, column: 7, scope: !4295)
!4333 = !DILocation(line: 834, column: 28, scope: !4334)
!4334 = distinct !DILexicalBlock(scope: !4330, file: !747, line: 833, column: 19)
!4335 = !DILocation(line: 834, column: 11, scope: !4334)
!4336 = !DILocation(line: 834, column: 8, scope: !4334)
!4337 = !DILocation(line: 835, column: 19, scope: !4334)
!4338 = !DILocation(line: 835, column: 4, scope: !4334)
!4339 = !DILocation(line: 835, column: 9, scope: !4334)
!4340 = !DILocation(line: 835, column: 17, scope: !4334)
!4341 = !DILocation(line: 836, column: 15, scope: !4334)
!4342 = !DILocation(line: 836, column: 4, scope: !4334)
!4343 = !DILocation(line: 836, column: 9, scope: !4334)
!4344 = !DILocation(line: 836, column: 13, scope: !4334)
!4345 = !DILocation(line: 837, column: 42, scope: !4334)
!4346 = !DILocation(line: 837, column: 50, scope: !4334)
!4347 = !DILocation(line: 837, column: 64, scope: !4334)
!4348 = !DILocation(line: 837, column: 27, scope: !4334)
!4349 = !DILocation(line: 837, column: 4, scope: !4334)
!4350 = !DILocation(line: 837, column: 12, scope: !4334)
!4351 = !DILocation(line: 837, column: 25, scope: !4334)
!4352 = !DILocation(line: 838, column: 3, scope: !4334)
!4353 = !DILocation(line: 839, column: 21, scope: !4295)
!4354 = !DILocation(line: 839, column: 31, scope: !4295)
!4355 = !DILocation(line: 839, column: 39, scope: !4295)
!4356 = !DILocation(line: 839, column: 30, scope: !4295)
!4357 = !DILocation(line: 839, column: 3, scope: !4295)
!4358 = !DILocation(line: 839, column: 8, scope: !4295)
!4359 = !DILocation(line: 839, column: 19, scope: !4295)
!4360 = !DILocation(line: 842, column: 18, scope: !4031)
!4361 = !DILocation(line: 842, column: 2, scope: !4031)
!4362 = !DILocation(line: 843, column: 1, scope: !4031)
!4363 = !DILocation(line: 843, column: 1, scope: !4230)
!4364 = distinct !DISubprogram(name: "cmd_server_purge", scope: !747, file: !747, line: 846, type: !2599, isLocal: true, isDefinition: true, scopeLine: 847, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !760)
!4365 = !DILocalVariable(name: "data", arg: 1, scope: !4364, file: !747, line: 846, type: !96)
!4366 = !DILocation(line: 846, column: 42, scope: !4364)
!4367 = !DILocalVariable(name: "server", arg: 2, scope: !4364, file: !747, line: 846, type: !98)
!4368 = !DILocation(line: 846, column: 64, scope: !4364)
!4369 = !DILocalVariable(name: "target", scope: !4364, file: !747, line: 848, type: !118)
!4370 = !DILocation(line: 848, column: 8, scope: !4364)
!4371 = !DILocalVariable(name: "free_arg", scope: !4364, file: !747, line: 849, type: !81)
!4372 = !DILocation(line: 849, column: 8, scope: !4364)
!4373 = !DILocation(line: 851, column: 2, scope: !4364)
!4374 = distinct !{!4374, !4373}
!4375 = !DILocation(line: 851, column: 11, scope: !4376)
!4376 = !DILexicalBlockFile(scope: !4377, file: !747, discriminator: 1)
!4377 = distinct !DILexicalBlock(scope: !4378, file: !747, line: 851, column: 11)
!4378 = distinct !DILexicalBlock(scope: !4364, file: !747, line: 851, column: 5)
!4379 = !DILocation(line: 851, column: 18, scope: !4376)
!4380 = !DILocation(line: 851, column: 1, scope: !4376)
!4381 = !DILocation(line: 851, column: 85, scope: !4382)
!4382 = !DILexicalBlockFile(scope: !4377, file: !747, discriminator: 2)
!4383 = !DILocation(line: 851, column: 67, scope: !4382)
!4384 = !DILocation(line: 851, column: 52, scope: !4382)
!4385 = !DILocation(line: 851, column: 51, scope: !4382)
!4386 = !DILocation(line: 851, column: 26, scope: !4387)
!4387 = !DILexicalBlockFile(scope: !4382, file: !747, discriminator: 12)
!4388 = !DILocation(line: 851, column: 7, scope: !4382)
!4389 = !DILocation(line: 851, column: 11, scope: !4382)
!4390 = !DILocation(line: 851, column: 6, scope: !4391)
!4391 = !DILexicalBlockFile(scope: !4377, file: !747, discriminator: 3)
!4392 = !DILocation(line: 851, column: 11, scope: !4393)
!4393 = !DILexicalBlockFile(scope: !4378, file: !747, discriminator: 4)
!4394 = !DILocation(line: 851, column: 28, scope: !4395)
!4395 = !DILexicalBlockFile(scope: !4377, file: !747, discriminator: 5)
!4396 = !DILocation(line: 851, column: 40, scope: !4397)
!4397 = !DILexicalBlockFile(scope: !4398, file: !747, discriminator: 6)
!4398 = distinct !DILexicalBlock(scope: !4378, file: !747, line: 851, column: 40)
!4399 = !DILocation(line: 851, column: 47, scope: !4397)
!4400 = !DILocation(line: 851, column: 1, scope: !4397)
!4401 = !DILocation(line: 851, column: 6, scope: !4402)
!4402 = !DILexicalBlockFile(scope: !4398, file: !747, discriminator: 7)
!4403 = !DILocation(line: 851, column: 15, scope: !4402)
!4404 = !DILocation(line: 851, column: 5, scope: !4402)
!4405 = !DILocation(line: 851, column: 40, scope: !4402)
!4406 = !DILocation(line: 851, column: 26, scope: !4407)
!4407 = !DILexicalBlockFile(scope: !4398, file: !747, discriminator: 8)
!4408 = distinct !{!4408, !4409}
!4409 = !DILocation(line: 851, column: 26, scope: !4398)
!4410 = !DILocation(line: 851, column: 31, scope: !4411)
!4411 = !DILexicalBlockFile(scope: !4412, file: !747, discriminator: 9)
!4412 = distinct !DILexicalBlock(scope: !4398, file: !747, line: 851, column: 29)
!4413 = !DILocation(line: 851, column: 109, scope: !4414)
!4414 = !DILexicalBlockFile(scope: !4411, file: !747, discriminator: 13)
!4415 = !DILocation(line: 851, column: 124, scope: !4411)
!4416 = !DILocation(line: 851, column: 132, scope: !4417)
!4417 = !DILexicalBlockFile(scope: !4412, file: !747, discriminator: 10)
!4418 = !DILocation(line: 851, column: 145, scope: !4419)
!4419 = !DILexicalBlockFile(scope: !4378, file: !747, discriminator: 11)
!4420 = !DILocation(line: 853, column: 22, scope: !4421)
!4421 = distinct !DILexicalBlock(scope: !4364, file: !747, line: 853, column: 6)
!4422 = !DILocation(line: 853, column: 7, scope: !4421)
!4423 = !DILocation(line: 853, column: 6, scope: !4364)
!4424 = !DILocation(line: 854, column: 3, scope: !4421)
!4425 = !DILocation(line: 856, column: 26, scope: !4364)
!4426 = !DILocation(line: 856, column: 35, scope: !4364)
!4427 = !DILocation(line: 856, column: 34, scope: !4364)
!4428 = !DILocation(line: 856, column: 42, scope: !4364)
!4429 = !DILocation(line: 856, column: 34, scope: !4430)
!4430 = !DILexicalBlockFile(scope: !4364, file: !747, discriminator: 1)
!4431 = !DILocation(line: 856, column: 58, scope: !4432)
!4432 = !DILexicalBlockFile(scope: !4364, file: !747, discriminator: 2)
!4433 = !DILocation(line: 856, column: 34, scope: !4432)
!4434 = !DILocation(line: 856, column: 34, scope: !4435)
!4435 = !DILexicalBlockFile(scope: !4364, file: !747, discriminator: 3)
!4436 = !DILocation(line: 856, column: 2, scope: !4435)
!4437 = !DILocation(line: 858, column: 18, scope: !4364)
!4438 = !DILocation(line: 858, column: 2, scope: !4364)
!4439 = !DILocation(line: 859, column: 1, scope: !4364)
!4440 = !DILocation(line: 859, column: 1, scope: !4430)
!4441 = distinct !DISubprogram(name: "sig_channel_destroyed", scope: !747, file: !747, line: 876, type: !4442, isLocal: true, isDefinition: true, scopeLine: 877, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !760)
!4442 = !DISubroutineType(types: !4443)
!4443 = !{null, !694}
!4444 = !DILocalVariable(name: "channel", arg: 1, scope: !4441, file: !747, line: 876, type: !694)
!4445 = !DILocation(line: 876, column: 52, scope: !4441)
!4446 = !DILocalVariable(name: "tmp", scope: !4441, file: !747, line: 878, type: !261)
!4447 = !DILocation(line: 878, column: 10, scope: !4441)
!4448 = !DILocalVariable(name: "next", scope: !4441, file: !747, line: 878, type: !261)
!4449 = !DILocation(line: 878, column: 16, scope: !4441)
!4450 = !DILocation(line: 880, column: 96, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4441, file: !747, line: 880, column: 6)
!4452 = !DILocation(line: 880, column: 71, scope: !4451)
!4453 = !DILocation(line: 880, column: 55, scope: !4451)
!4454 = !DILocation(line: 880, column: 54, scope: !4451)
!4455 = !DILocation(line: 880, column: 29, scope: !4456)
!4456 = !DILexicalBlockFile(scope: !4451, file: !747, discriminator: 6)
!4457 = !DILocation(line: 880, column: 9, scope: !4451)
!4458 = !DILocation(line: 880, column: 32, scope: !4451)
!4459 = !DILocation(line: 880, column: 8, scope: !4460)
!4460 = !DILexicalBlockFile(scope: !4451, file: !747, discriminator: 1)
!4461 = !DILocation(line: 880, column: 32, scope: !4462)
!4462 = !DILexicalBlockFile(scope: !4451, file: !747, discriminator: 2)
!4463 = !DILocation(line: 880, column: 116, scope: !4464)
!4464 = !DILexicalBlockFile(scope: !4451, file: !747, discriminator: 3)
!4465 = !DILocation(line: 880, column: 125, scope: !4464)
!4466 = !DILocation(line: 880, column: 98, scope: !4464)
!4467 = !DILocation(line: 880, column: 83, scope: !4464)
!4468 = !DILocation(line: 880, column: 82, scope: !4464)
!4469 = !DILocation(line: 880, column: 57, scope: !4470)
!4470 = !DILexicalBlockFile(scope: !4464, file: !747, discriminator: 7)
!4471 = !DILocation(line: 880, column: 38, scope: !4464)
!4472 = !DILocation(line: 880, column: 6, scope: !4464)
!4473 = !DILocation(line: 880, column: 37, scope: !4474)
!4474 = !DILexicalBlockFile(scope: !4451, file: !747, discriminator: 4)
!4475 = !DILocation(line: 880, column: 6, scope: !4476)
!4476 = !DILexicalBlockFile(scope: !4441, file: !747, discriminator: 5)
!4477 = !DILocation(line: 881, column: 3, scope: !4451)
!4478 = !DILocation(line: 883, column: 13, scope: !4479)
!4479 = distinct !DILexicalBlock(scope: !4441, file: !747, line: 883, column: 2)
!4480 = !DILocation(line: 883, column: 22, scope: !4479)
!4481 = !DILocation(line: 883, column: 30, scope: !4479)
!4482 = !DILocation(line: 883, column: 11, scope: !4479)
!4483 = !DILocation(line: 883, column: 7, scope: !4479)
!4484 = !DILocation(line: 883, column: 44, scope: !4485)
!4485 = !DILexicalBlockFile(scope: !4486, file: !747, discriminator: 1)
!4486 = distinct !DILexicalBlock(scope: !4479, file: !747, line: 883, column: 2)
!4487 = !DILocation(line: 883, column: 48, scope: !4485)
!4488 = !DILocation(line: 883, column: 2, scope: !4485)
!4489 = !DILocalVariable(name: "rec", scope: !4490, file: !747, line: 884, type: !745)
!4490 = distinct !DILexicalBlock(scope: !4486, file: !747, line: 883, column: 68)
!4491 = !DILocation(line: 884, column: 17, scope: !4490)
!4492 = !DILocation(line: 884, column: 23, scope: !4490)
!4493 = !DILocation(line: 884, column: 28, scope: !4490)
!4494 = !DILocation(line: 886, column: 10, scope: !4490)
!4495 = !DILocation(line: 886, column: 15, scope: !4490)
!4496 = !DILocation(line: 886, column: 8, scope: !4490)
!4497 = !DILocation(line: 887, column: 7, scope: !4498)
!4498 = distinct !DILexicalBlock(scope: !4490, file: !747, line: 887, column: 7)
!4499 = !DILocation(line: 887, column: 12, scope: !4498)
!4500 = !DILocation(line: 887, column: 23, scope: !4498)
!4501 = !DILocation(line: 887, column: 20, scope: !4498)
!4502 = !DILocation(line: 887, column: 7, scope: !4490)
!4503 = !DILocation(line: 888, column: 21, scope: !4498)
!4504 = !DILocation(line: 888, column: 30, scope: !4498)
!4505 = !DILocation(line: 888, column: 38, scope: !4498)
!4506 = !DILocation(line: 888, column: 4, scope: !4498)
!4507 = !DILocation(line: 889, column: 2, scope: !4490)
!4508 = !DILocation(line: 883, column: 62, scope: !4509)
!4509 = !DILexicalBlockFile(scope: !4486, file: !747, discriminator: 2)
!4510 = !DILocation(line: 883, column: 60, scope: !4509)
!4511 = !DILocation(line: 883, column: 2, scope: !4509)
!4512 = distinct !{!4512, !4513}
!4513 = !DILocation(line: 883, column: 2, scope: !4441)
!4514 = !DILocation(line: 890, column: 1, scope: !4441)
!4515 = distinct !DISubprogram(name: "sig_server_disconnected", scope: !747, file: !747, line: 862, type: !4516, isLocal: true, isDefinition: true, scopeLine: 863, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !760)
!4516 = !DISubroutineType(types: !4517)
!4517 = !{null, !98}
!4518 = !DILocalVariable(name: "server", arg: 1, scope: !4515, file: !747, line: 862, type: !98)
!4519 = !DILocation(line: 862, column: 53, scope: !4515)
!4520 = !DILocation(line: 864, column: 2, scope: !4515)
!4521 = distinct !{!4521, !4520}
!4522 = !DILocation(line: 864, column: 10, scope: !4523)
!4523 = !DILexicalBlockFile(scope: !4524, file: !747, discriminator: 1)
!4524 = distinct !DILexicalBlock(scope: !4525, file: !747, line: 864, column: 10)
!4525 = distinct !DILexicalBlock(scope: !4515, file: !747, line: 864, column: 4)
!4526 = !DILocation(line: 864, column: 17, scope: !4523)
!4527 = !DILocation(line: 864, column: 5, scope: !4528)
!4528 = !DILexicalBlockFile(scope: !4529, file: !747, discriminator: 2)
!4529 = distinct !DILexicalBlock(scope: !4524, file: !747, line: 864, column: 3)
!4530 = !DILocation(line: 864, column: 14, scope: !4531)
!4531 = !DILexicalBlockFile(scope: !4532, file: !747, discriminator: 3)
!4532 = distinct !DILexicalBlock(scope: !4524, file: !747, line: 864, column: 12)
!4533 = !DILocation(line: 864, column: 101, scope: !4531)
!4534 = !DILocation(line: 864, column: 112, scope: !4535)
!4535 = !DILexicalBlockFile(scope: !4525, file: !747, discriminator: 4)
!4536 = !DILocation(line: 866, column: 87, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4515, file: !747, line: 866, column: 6)
!4538 = !DILocation(line: 866, column: 69, scope: !4537)
!4539 = !DILocation(line: 866, column: 54, scope: !4537)
!4540 = !DILocation(line: 866, column: 53, scope: !4537)
!4541 = !DILocation(line: 866, column: 28, scope: !4542)
!4542 = !DILexicalBlockFile(scope: !4537, file: !747, discriminator: 3)
!4543 = !DILocation(line: 866, column: 9, scope: !4537)
!4544 = !DILocation(line: 866, column: 6, scope: !4515)
!4545 = !DILocation(line: 866, column: 8, scope: !4546)
!4546 = !DILexicalBlockFile(scope: !4537, file: !747, discriminator: 1)
!4547 = !DILocation(line: 866, column: 6, scope: !4548)
!4548 = !DILexicalBlockFile(scope: !4515, file: !747, discriminator: 2)
!4549 = !DILocation(line: 867, column: 3, scope: !4537)
!4550 = !DILocation(line: 869, column: 9, scope: !4515)
!4551 = !DILocation(line: 869, column: 17, scope: !4515)
!4552 = !DILocation(line: 869, column: 2, scope: !4515)
!4553 = !DILocation(line: 871, column: 2, scope: !4515)
!4554 = !DILocation(line: 871, column: 9, scope: !4555)
!4555 = !DILexicalBlockFile(scope: !4515, file: !747, discriminator: 1)
!4556 = !DILocation(line: 871, column: 17, scope: !4555)
!4557 = !DILocation(line: 871, column: 30, scope: !4555)
!4558 = !DILocation(line: 871, column: 2, scope: !4555)
!4559 = !DILocation(line: 872, column: 20, scope: !4515)
!4560 = !DILocation(line: 872, column: 28, scope: !4515)
!4561 = !DILocation(line: 872, column: 36, scope: !4515)
!4562 = !DILocation(line: 872, column: 50, scope: !4515)
!4563 = !DILocation(line: 872, column: 3, scope: !4515)
!4564 = !DILocation(line: 871, column: 2, scope: !4548)
!4565 = distinct !{!4565, !4553}
!4566 = !DILocation(line: 873, column: 1, scope: !4515)
!4567 = distinct !DISubprogram(name: "sig_whois_try_whowas", scope: !747, file: !747, line: 466, type: !4568, isLocal: true, isDefinition: true, scopeLine: 467, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !760)
!4568 = !DISubroutineType(types: !4569)
!4569 = !{null, !98, !96}
!4570 = !DILocalVariable(name: "server", arg: 1, scope: !4567, file: !747, line: 466, type: !98)
!4571 = !DILocation(line: 466, column: 50, scope: !4567)
!4572 = !DILocalVariable(name: "data", arg: 2, scope: !4567, file: !747, line: 466, type: !96)
!4573 = !DILocation(line: 466, column: 70, scope: !4567)
!4574 = !DILocalVariable(name: "params", scope: !4567, file: !747, line: 468, type: !118)
!4575 = !DILocation(line: 468, column: 8, scope: !4567)
!4576 = !DILocalVariable(name: "nick", scope: !4567, file: !747, line: 468, type: !118)
!4577 = !DILocation(line: 468, column: 17, scope: !4567)
!4578 = !DILocation(line: 470, column: 2, scope: !4567)
!4579 = distinct !{!4579, !4578}
!4580 = !DILocation(line: 470, column: 10, scope: !4581)
!4581 = !DILexicalBlockFile(scope: !4582, file: !747, discriminator: 1)
!4582 = distinct !DILexicalBlock(scope: !4583, file: !747, line: 470, column: 10)
!4583 = distinct !DILexicalBlock(scope: !4567, file: !747, line: 470, column: 4)
!4584 = !DILocation(line: 470, column: 15, scope: !4581)
!4585 = !DILocation(line: 470, column: 5, scope: !4586)
!4586 = !DILexicalBlockFile(scope: !4587, file: !747, discriminator: 2)
!4587 = distinct !DILexicalBlock(scope: !4582, file: !747, line: 470, column: 3)
!4588 = !DILocation(line: 470, column: 14, scope: !4589)
!4589 = !DILexicalBlockFile(scope: !4590, file: !747, discriminator: 3)
!4590 = distinct !DILexicalBlock(scope: !4582, file: !747, line: 470, column: 12)
!4591 = !DILocation(line: 470, column: 99, scope: !4589)
!4592 = !DILocation(line: 470, column: 110, scope: !4593)
!4593 = !DILexicalBlockFile(scope: !4583, file: !747, discriminator: 4)
!4594 = !DILocation(line: 472, column: 28, scope: !4567)
!4595 = !DILocation(line: 472, column: 11, scope: !4567)
!4596 = !DILocation(line: 472, column: 9, scope: !4567)
!4597 = !DILocation(line: 474, column: 2, scope: !4567)
!4598 = !DILocation(line: 474, column: 10, scope: !4567)
!4599 = !DILocation(line: 474, column: 23, scope: !4567)
!4600 = !DILocation(line: 475, column: 24, scope: !4567)
!4601 = !DILocation(line: 475, column: 45, scope: !4567)
!4602 = !DILocation(line: 475, column: 2, scope: !4567)
!4603 = !DILocation(line: 479, column: 16, scope: !4567)
!4604 = !DILocation(line: 479, column: 39, scope: !4567)
!4605 = !DILocation(line: 479, column: 2, scope: !4567)
!4606 = !DILocation(line: 481, column: 9, scope: !4567)
!4607 = !DILocation(line: 481, column: 2, scope: !4567)
!4608 = !DILocation(line: 482, column: 1, scope: !4567)
!4609 = !DILocation(line: 482, column: 1, scope: !4610)
!4610 = !DILexicalBlockFile(scope: !4567, file: !747, discriminator: 1)
!4611 = distinct !DISubprogram(name: "event_whois", scope: !747, file: !747, line: 459, type: !4612, isLocal: true, isDefinition: true, scopeLine: 461, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !760)
!4612 = !DISubroutineType(types: !4613)
!4613 = !{null, !98, !96, !96, !96}
!4614 = !DILocalVariable(name: "server", arg: 1, scope: !4611, file: !747, line: 459, type: !98)
!4615 = !DILocation(line: 459, column: 41, scope: !4611)
!4616 = !DILocalVariable(name: "data", arg: 2, scope: !4611, file: !747, line: 459, type: !96)
!4617 = !DILocation(line: 459, column: 61, scope: !4611)
!4618 = !DILocalVariable(name: "nick", arg: 3, scope: !4611, file: !747, line: 460, type: !96)
!4619 = !DILocation(line: 460, column: 37, scope: !4611)
!4620 = !DILocalVariable(name: "addr", arg: 4, scope: !4611, file: !747, line: 460, type: !96)
!4621 = !DILocation(line: 460, column: 55, scope: !4611)
!4622 = !DILocation(line: 462, column: 2, scope: !4611)
!4623 = !DILocation(line: 462, column: 10, scope: !4611)
!4624 = !DILocation(line: 462, column: 22, scope: !4611)
!4625 = !DILocation(line: 463, column: 30, scope: !4611)
!4626 = !DILocation(line: 463, column: 38, scope: !4611)
!4627 = !DILocation(line: 463, column: 44, scope: !4611)
!4628 = !DILocation(line: 463, column: 50, scope: !4611)
!4629 = !DILocation(line: 463, column: 2, scope: !4611)
!4630 = !DILocation(line: 464, column: 1, scope: !4611)
!4631 = distinct !DISubprogram(name: "event_end_of_whois", scope: !747, file: !747, line: 484, type: !4612, isLocal: true, isDefinition: true, scopeLine: 486, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !760)
!4632 = !DILocalVariable(name: "server", arg: 1, scope: !4631, file: !747, line: 484, type: !98)
!4633 = !DILocation(line: 484, column: 48, scope: !4631)
!4634 = !DILocalVariable(name: "data", arg: 2, scope: !4631, file: !747, line: 484, type: !96)
!4635 = !DILocation(line: 484, column: 68, scope: !4631)
!4636 = !DILocalVariable(name: "nick", arg: 3, scope: !4631, file: !747, line: 485, type: !96)
!4637 = !DILocation(line: 485, column: 44, scope: !4631)
!4638 = !DILocalVariable(name: "addr", arg: 4, scope: !4631, file: !747, line: 485, type: !96)
!4639 = !DILocation(line: 485, column: 62, scope: !4631)
!4640 = !DILocation(line: 487, column: 30, scope: !4631)
!4641 = !DILocation(line: 487, column: 38, scope: !4631)
!4642 = !DILocation(line: 487, column: 44, scope: !4631)
!4643 = !DILocation(line: 487, column: 50, scope: !4631)
!4644 = !DILocation(line: 487, column: 2, scope: !4631)
!4645 = !DILocation(line: 488, column: 2, scope: !4631)
!4646 = !DILocation(line: 488, column: 10, scope: !4631)
!4647 = !DILocation(line: 488, column: 22, scope: !4631)
!4648 = !DILocation(line: 489, column: 1, scope: !4631)
!4649 = distinct !DISubprogram(name: "event_whowas", scope: !747, file: !747, line: 491, type: !4612, isLocal: true, isDefinition: true, scopeLine: 493, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !760)
!4650 = !DILocalVariable(name: "server", arg: 1, scope: !4649, file: !747, line: 491, type: !98)
!4651 = !DILocation(line: 491, column: 42, scope: !4649)
!4652 = !DILocalVariable(name: "data", arg: 2, scope: !4649, file: !747, line: 491, type: !96)
!4653 = !DILocation(line: 491, column: 62, scope: !4649)
!4654 = !DILocalVariable(name: "nick", arg: 3, scope: !4649, file: !747, line: 492, type: !96)
!4655 = !DILocation(line: 492, column: 38, scope: !4649)
!4656 = !DILocalVariable(name: "addr", arg: 4, scope: !4649, file: !747, line: 492, type: !96)
!4657 = !DILocation(line: 492, column: 56, scope: !4649)
!4658 = !DILocation(line: 494, column: 2, scope: !4649)
!4659 = !DILocation(line: 494, column: 10, scope: !4649)
!4660 = !DILocation(line: 494, column: 23, scope: !4649)
!4661 = !DILocation(line: 495, column: 30, scope: !4649)
!4662 = !DILocation(line: 495, column: 38, scope: !4649)
!4663 = !DILocation(line: 495, column: 44, scope: !4649)
!4664 = !DILocation(line: 495, column: 50, scope: !4649)
!4665 = !DILocation(line: 495, column: 2, scope: !4649)
!4666 = !DILocation(line: 496, column: 1, scope: !4649)
!4667 = distinct !DISubprogram(name: "irc_commands_deinit", scope: !747, file: !747, line: 1064, type: !249, isLocal: false, isDefinition: true, scopeLine: 1065, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !760)
!4668 = !DILocation(line: 1066, column: 18, scope: !4667)
!4669 = !DILocation(line: 1066, column: 2, scope: !4667)
!4670 = !DILocation(line: 1068, column: 2, scope: !4667)
!4671 = !DILocation(line: 1069, column: 2, scope: !4667)
!4672 = !DILocation(line: 1070, column: 2, scope: !4667)
!4673 = !DILocation(line: 1071, column: 2, scope: !4667)
!4674 = !DILocation(line: 1072, column: 2, scope: !4667)
!4675 = !DILocation(line: 1073, column: 2, scope: !4667)
!4676 = !DILocation(line: 1074, column: 2, scope: !4667)
!4677 = !DILocation(line: 1075, column: 2, scope: !4667)
!4678 = !DILocation(line: 1076, column: 2, scope: !4667)
!4679 = !DILocation(line: 1077, column: 2, scope: !4667)
!4680 = !DILocation(line: 1078, column: 2, scope: !4667)
!4681 = !DILocation(line: 1079, column: 2, scope: !4667)
!4682 = !DILocation(line: 1080, column: 2, scope: !4667)
!4683 = !DILocation(line: 1081, column: 2, scope: !4667)
!4684 = !DILocation(line: 1082, column: 2, scope: !4667)
!4685 = !DILocation(line: 1083, column: 2, scope: !4667)
!4686 = !DILocation(line: 1084, column: 2, scope: !4667)
!4687 = !DILocation(line: 1085, column: 2, scope: !4667)
!4688 = !DILocation(line: 1086, column: 2, scope: !4667)
!4689 = !DILocation(line: 1087, column: 2, scope: !4667)
!4690 = !DILocation(line: 1088, column: 2, scope: !4667)
!4691 = !DILocation(line: 1089, column: 2, scope: !4667)
!4692 = !DILocation(line: 1090, column: 2, scope: !4667)
!4693 = !DILocation(line: 1091, column: 2, scope: !4667)
!4694 = !DILocation(line: 1092, column: 2, scope: !4667)
!4695 = !DILocation(line: 1093, column: 2, scope: !4667)
!4696 = !DILocation(line: 1094, column: 2, scope: !4667)
!4697 = !DILocation(line: 1095, column: 2, scope: !4667)
!4698 = !DILocation(line: 1096, column: 2, scope: !4667)
!4699 = !DILocation(line: 1097, column: 2, scope: !4667)
!4700 = !DILocation(line: 1098, column: 2, scope: !4667)
!4701 = !DILocation(line: 1099, column: 2, scope: !4667)
!4702 = !DILocation(line: 1100, column: 2, scope: !4667)
!4703 = !DILocation(line: 1101, column: 2, scope: !4667)
!4704 = !DILocation(line: 1102, column: 2, scope: !4667)
!4705 = !DILocation(line: 1103, column: 2, scope: !4667)
!4706 = !DILocation(line: 1104, column: 2, scope: !4667)
!4707 = !DILocation(line: 1105, column: 2, scope: !4667)
!4708 = !DILocation(line: 1106, column: 2, scope: !4667)
!4709 = !DILocation(line: 1107, column: 2, scope: !4667)
!4710 = !DILocation(line: 1108, column: 2, scope: !4667)
!4711 = !DILocation(line: 1109, column: 2, scope: !4667)
!4712 = !DILocation(line: 1110, column: 2, scope: !4667)
!4713 = !DILocation(line: 1111, column: 2, scope: !4667)
!4714 = !DILocation(line: 1112, column: 2, scope: !4667)
!4715 = !DILocation(line: 1113, column: 2, scope: !4667)
!4716 = !DILocation(line: 1114, column: 2, scope: !4667)
!4717 = !DILocation(line: 1115, column: 2, scope: !4667)
!4718 = !DILocation(line: 1117, column: 2, scope: !4667)
!4719 = !DILocation(line: 1118, column: 2, scope: !4667)
!4720 = !DILocation(line: 1119, column: 2, scope: !4667)
!4721 = !DILocation(line: 1120, column: 2, scope: !4667)
!4722 = !DILocation(line: 1121, column: 2, scope: !4667)
!4723 = !DILocation(line: 1122, column: 2, scope: !4667)
!4724 = !DILocation(line: 1124, column: 16, scope: !4667)
!4725 = !DILocation(line: 1124, column: 2, scope: !4667)
!4726 = !DILocation(line: 1125, column: 1, scope: !4667)
!4727 = distinct !DISubprogram(name: "knockout_timeout_server", scope: !747, file: !747, line: 735, type: !4516, isLocal: true, isDefinition: true, scopeLine: 736, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !760)
!4728 = !DILocalVariable(name: "server", arg: 1, scope: !4727, file: !747, line: 735, type: !98)
!4729 = !DILocation(line: 735, column: 53, scope: !4727)
!4730 = !DILocalVariable(name: "tmp", scope: !4727, file: !747, line: 737, type: !261)
!4731 = !DILocation(line: 737, column: 10, scope: !4727)
!4732 = !DILocalVariable(name: "next", scope: !4727, file: !747, line: 737, type: !261)
!4733 = !DILocation(line: 737, column: 16, scope: !4727)
!4734 = !DILocalVariable(name: "now", scope: !4727, file: !747, line: 738, type: !345)
!4735 = !DILocation(line: 738, column: 9, scope: !4727)
!4736 = !DILocation(line: 740, column: 2, scope: !4727)
!4737 = distinct !{!4737, !4736}
!4738 = !DILocation(line: 740, column: 10, scope: !4739)
!4739 = !DILexicalBlockFile(scope: !4740, file: !747, discriminator: 1)
!4740 = distinct !DILexicalBlock(scope: !4741, file: !747, line: 740, column: 10)
!4741 = distinct !DILexicalBlock(scope: !4727, file: !747, line: 740, column: 4)
!4742 = !DILocation(line: 740, column: 17, scope: !4739)
!4743 = !DILocation(line: 740, column: 5, scope: !4744)
!4744 = !DILexicalBlockFile(scope: !4745, file: !747, discriminator: 2)
!4745 = distinct !DILexicalBlock(scope: !4740, file: !747, line: 740, column: 3)
!4746 = !DILocation(line: 740, column: 14, scope: !4747)
!4747 = !DILexicalBlockFile(scope: !4748, file: !747, discriminator: 3)
!4748 = distinct !DILexicalBlock(scope: !4740, file: !747, line: 740, column: 12)
!4749 = !DILocation(line: 740, column: 101, scope: !4747)
!4750 = !DILocation(line: 740, column: 112, scope: !4751)
!4751 = !DILexicalBlockFile(scope: !4741, file: !747, discriminator: 4)
!4752 = !DILocation(line: 742, column: 87, scope: !4753)
!4753 = distinct !DILexicalBlock(scope: !4727, file: !747, line: 742, column: 6)
!4754 = !DILocation(line: 742, column: 69, scope: !4753)
!4755 = !DILocation(line: 742, column: 54, scope: !4753)
!4756 = !DILocation(line: 742, column: 53, scope: !4753)
!4757 = !DILocation(line: 742, column: 28, scope: !4758)
!4758 = !DILexicalBlockFile(scope: !4753, file: !747, discriminator: 3)
!4759 = !DILocation(line: 742, column: 9, scope: !4753)
!4760 = !DILocation(line: 742, column: 6, scope: !4727)
!4761 = !DILocation(line: 742, column: 8, scope: !4762)
!4762 = !DILexicalBlockFile(scope: !4753, file: !747, discriminator: 1)
!4763 = !DILocation(line: 742, column: 6, scope: !4764)
!4764 = !DILexicalBlockFile(scope: !4727, file: !747, discriminator: 2)
!4765 = !DILocation(line: 743, column: 3, scope: !4753)
!4766 = !DILocation(line: 745, column: 8, scope: !4727)
!4767 = !DILocation(line: 745, column: 6, scope: !4727)
!4768 = !DILocation(line: 746, column: 13, scope: !4769)
!4769 = distinct !DILexicalBlock(scope: !4727, file: !747, line: 746, column: 2)
!4770 = !DILocation(line: 746, column: 21, scope: !4769)
!4771 = !DILocation(line: 746, column: 11, scope: !4769)
!4772 = !DILocation(line: 746, column: 7, scope: !4769)
!4773 = !DILocation(line: 746, column: 35, scope: !4774)
!4774 = !DILexicalBlockFile(scope: !4775, file: !747, discriminator: 1)
!4775 = distinct !DILexicalBlock(scope: !4769, file: !747, line: 746, column: 2)
!4776 = !DILocation(line: 746, column: 39, scope: !4774)
!4777 = !DILocation(line: 746, column: 2, scope: !4774)
!4778 = !DILocalVariable(name: "rec", scope: !4779, file: !747, line: 747, type: !745)
!4779 = distinct !DILexicalBlock(scope: !4775, file: !747, line: 746, column: 59)
!4780 = !DILocation(line: 747, column: 17, scope: !4779)
!4781 = !DILocation(line: 747, column: 23, scope: !4779)
!4782 = !DILocation(line: 747, column: 28, scope: !4779)
!4783 = !DILocation(line: 749, column: 10, scope: !4779)
!4784 = !DILocation(line: 749, column: 15, scope: !4779)
!4785 = !DILocation(line: 749, column: 8, scope: !4779)
!4786 = !DILocation(line: 750, column: 7, scope: !4787)
!4787 = distinct !DILexicalBlock(scope: !4779, file: !747, line: 750, column: 7)
!4788 = !DILocation(line: 750, column: 12, scope: !4787)
!4789 = !DILocation(line: 750, column: 26, scope: !4787)
!4790 = !DILocation(line: 750, column: 23, scope: !4787)
!4791 = !DILocation(line: 750, column: 7, scope: !4779)
!4792 = !DILocation(line: 752, column: 36, scope: !4793)
!4793 = distinct !DILexicalBlock(scope: !4787, file: !747, line: 750, column: 31)
!4794 = !DILocation(line: 752, column: 41, scope: !4793)
!4795 = !DILocation(line: 752, column: 46, scope: !4793)
!4796 = !DILocation(line: 752, column: 54, scope: !4793)
!4797 = !DILocation(line: 752, column: 59, scope: !4793)
!4798 = !DILocation(line: 752, column: 4, scope: !4793)
!4799 = !DILocation(line: 753, column: 21, scope: !4793)
!4800 = !DILocation(line: 753, column: 29, scope: !4793)
!4801 = !DILocation(line: 753, column: 4, scope: !4793)
!4802 = !DILocation(line: 754, column: 3, scope: !4793)
!4803 = !DILocation(line: 755, column: 2, scope: !4779)
!4804 = !DILocation(line: 746, column: 53, scope: !4805)
!4805 = !DILexicalBlockFile(scope: !4775, file: !747, discriminator: 2)
!4806 = !DILocation(line: 746, column: 51, scope: !4805)
!4807 = !DILocation(line: 746, column: 2, scope: !4805)
!4808 = distinct !{!4808, !4809}
!4809 = !DILocation(line: 746, column: 2, scope: !4727)
!4810 = !DILocation(line: 756, column: 1, scope: !4727)
!4811 = distinct !DISubprogram(name: "knockout_destroy", scope: !747, file: !747, line: 727, type: !4812, isLocal: true, isDefinition: true, scopeLine: 728, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !760)
!4812 = !DISubroutineType(types: !4813)
!4813 = !{null, !98, !745}
!4814 = !DILocalVariable(name: "server", arg: 1, scope: !4811, file: !747, line: 727, type: !98)
!4815 = !DILocation(line: 727, column: 46, scope: !4811)
!4816 = !DILocalVariable(name: "rec", arg: 2, scope: !4811, file: !747, line: 727, type: !745)
!4817 = !DILocation(line: 727, column: 68, scope: !4811)
!4818 = !DILocation(line: 729, column: 40, scope: !4811)
!4819 = !DILocation(line: 729, column: 48, scope: !4811)
!4820 = !DILocation(line: 729, column: 62, scope: !4811)
!4821 = !DILocation(line: 729, column: 25, scope: !4811)
!4822 = !DILocation(line: 729, column: 2, scope: !4811)
!4823 = !DILocation(line: 729, column: 10, scope: !4811)
!4824 = !DILocation(line: 729, column: 23, scope: !4811)
!4825 = !DILocation(line: 730, column: 9, scope: !4811)
!4826 = !DILocation(line: 730, column: 14, scope: !4811)
!4827 = !DILocation(line: 730, column: 2, scope: !4811)
!4828 = !DILocation(line: 731, column: 9, scope: !4811)
!4829 = !DILocation(line: 731, column: 2, scope: !4811)
!4830 = !DILocation(line: 732, column: 1, scope: !4811)
!4831 = distinct !DISubprogram(name: "get_redirect_nicklist", scope: !747, file: !747, line: 366, type: !4832, isLocal: true, isDefinition: true, scopeLine: 367, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !760)
!4832 = !DISubroutineType(types: !4833)
!4833 = !{!118, !96, !4834}
!4834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!4835 = !DILocalVariable(name: "nicks", arg: 1, scope: !4831, file: !747, line: 366, type: !96)
!4836 = !DILocation(line: 366, column: 48, scope: !4831)
!4837 = !DILocalVariable(name: "free", arg: 2, scope: !4831, file: !747, line: 366, type: !4834)
!4838 = !DILocation(line: 366, column: 60, scope: !4831)
!4839 = !DILocalVariable(name: "str", scope: !4831, file: !747, line: 368, type: !118)
!4840 = !DILocation(line: 368, column: 8, scope: !4831)
!4841 = !DILocalVariable(name: "ret", scope: !4831, file: !747, line: 368, type: !118)
!4842 = !DILocation(line: 368, column: 14, scope: !4831)
!4843 = !DILocation(line: 370, column: 7, scope: !4844)
!4844 = distinct !DILexicalBlock(scope: !4831, file: !747, line: 370, column: 6)
!4845 = !DILocation(line: 370, column: 6, scope: !4844)
!4846 = !DILocation(line: 370, column: 13, scope: !4844)
!4847 = !DILocation(line: 370, column: 20, scope: !4844)
!4848 = !DILocation(line: 370, column: 30, scope: !4849)
!4849 = !DILexicalBlockFile(scope: !4844, file: !747, discriminator: 1)
!4850 = !DILocation(line: 370, column: 23, scope: !4849)
!4851 = !DILocation(line: 370, column: 42, scope: !4849)
!4852 = !DILocation(line: 370, column: 6, scope: !4849)
!4853 = !DILocation(line: 371, column: 4, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4844, file: !747, line: 370, column: 50)
!4855 = !DILocation(line: 371, column: 9, scope: !4854)
!4856 = !DILocation(line: 372, column: 19, scope: !4854)
!4857 = !DILocation(line: 372, column: 3, scope: !4854)
!4858 = !DILocation(line: 375, column: 3, scope: !4831)
!4859 = !DILocation(line: 375, column: 8, scope: !4831)
!4860 = !DILocation(line: 381, column: 18, scope: !4831)
!4861 = !DILocation(line: 381, column: 17, scope: !4831)
!4862 = !DILocation(line: 381, column: 24, scope: !4831)
!4863 = !DILocation(line: 381, column: 33, scope: !4864)
!4864 = !DILexicalBlockFile(scope: !4831, file: !747, discriminator: 1)
!4865 = !DILocation(line: 381, column: 39, scope: !4864)
!4866 = !DILocation(line: 381, column: 17, scope: !4864)
!4867 = !DILocation(line: 381, column: 45, scope: !4868)
!4868 = !DILexicalBlockFile(scope: !4831, file: !747, discriminator: 2)
!4869 = !DILocation(line: 381, column: 17, scope: !4868)
!4870 = !DILocation(line: 381, column: 17, scope: !4871)
!4871 = !DILexicalBlockFile(scope: !4831, file: !747, discriminator: 3)
!4872 = !DILocation(line: 381, column: 8, scope: !4871)
!4873 = !DILocation(line: 381, column: 6, scope: !4871)
!4874 = !DILocation(line: 382, column: 15, scope: !4831)
!4875 = !DILocation(line: 382, column: 2, scope: !4831)
!4876 = !DILocation(line: 383, column: 20, scope: !4831)
!4877 = !DILocation(line: 383, column: 30, scope: !4831)
!4878 = !DILocation(line: 383, column: 8, scope: !4831)
!4879 = !DILocation(line: 383, column: 6, scope: !4831)
!4880 = !DILocation(line: 384, column: 9, scope: !4831)
!4881 = !DILocation(line: 384, column: 2, scope: !4831)
!4882 = !DILocation(line: 386, column: 9, scope: !4831)
!4883 = !DILocation(line: 386, column: 2, scope: !4831)
!4884 = !DILocation(line: 387, column: 1, scope: !4831)
!4885 = distinct !DISubprogram(name: "cmd_wall_hash", scope: !747, file: !747, line: 590, type: !4886, isLocal: true, isDefinition: true, scopeLine: 591, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !760)
!4886 = !DISubroutineType(types: !4887)
!4887 = !{null, !80, !551, !4888}
!4888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!4889 = !DILocalVariable(name: "key", arg: 1, scope: !4885, file: !747, line: 590, type: !80)
!4890 = !DILocation(line: 590, column: 36, scope: !4885)
!4891 = !DILocalVariable(name: "nick", arg: 2, scope: !4885, file: !747, line: 590, type: !551)
!4892 = !DILocation(line: 590, column: 51, scope: !4885)
!4893 = !DILocalVariable(name: "nicks", arg: 3, scope: !4885, file: !747, line: 590, type: !4888)
!4894 = !DILocation(line: 590, column: 66, scope: !4885)
!4895 = !DILocation(line: 592, column: 6, scope: !4896)
!4896 = distinct !DILexicalBlock(scope: !4885, file: !747, line: 592, column: 6)
!4897 = !DILocation(line: 592, column: 12, scope: !4896)
!4898 = !DILocation(line: 592, column: 6, scope: !4885)
!4899 = !DILocation(line: 592, column: 41, scope: !4900)
!4900 = !DILexicalBlockFile(scope: !4896, file: !747, discriminator: 1)
!4901 = !DILocation(line: 592, column: 40, scope: !4900)
!4902 = !DILocation(line: 592, column: 48, scope: !4900)
!4903 = !DILocation(line: 592, column: 25, scope: !4900)
!4904 = !DILocation(line: 592, column: 17, scope: !4900)
!4905 = !DILocation(line: 592, column: 23, scope: !4900)
!4906 = !DILocation(line: 592, column: 16, scope: !4900)
!4907 = !DILocation(line: 593, column: 1, scope: !4885)
