; ModuleID = './line300-fe-irc-commands.o.i'
source_filename = "./line300-fe-irc-commands.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct._GString = type { i8*, i64, i64 }
%struct._GTimeVal = type { i64, i64 }
%struct._GHashTable = type opaque
%struct.modes_type = type { void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, i8 }
%struct._IRC_CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._IRC_SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)*, %struct._GSList*, i64, i32, i32 }
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, {}*, i8* (%struct._WI_ITEM_REC*)* }
%struct.OPER_PASS_REC = type { i8*, i8* }
%struct._WINDOW_REC = type { i32, i8*, i32, i32, %struct._GSList*, %struct._WI_ITEM_REC*, %struct._SERVER_REC*, %struct._SERVER_REC*, i8*, i32, %struct._GSList*, i8, %struct.HISTORY_REC*, i8*, i32, i8*, i64, i64, i8*, i8*, i8* }
%struct.HISTORY_REC = type { i8*, %struct._GList*, i32, i32, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct.WINDOW_BIND_REC = type { i8*, i8*, i8 }
%struct.BAN_REC = type { i8*, i8*, i64 }

@.str = private unnamed_addr constant [14 x i8] c"fe-common/irc\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"me\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"IRC\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"notice\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"ctcp\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"nctcp\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"wall\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"ban\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"ver\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"topic\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"ts\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"oper\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"sethost\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"error command\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"WINDOW ITEM TYPE\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"CHANNEL\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"QUERY\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"message irc own_action\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"message irc own_notice\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"message irc own_ctcp\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"message irc own_wall\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"%s b\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"command mode\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"%s e\00", align 1
@__func__.cmd_ver = private unnamed_addr constant [8 x i8] c"cmd_ver\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"%s VERSION\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"command ctcp\00", align 1
@__func__.cmd_topic = private unnamed_addr constant [10 x i8] c"cmd_topic\00", align 1
@__func__.cmd_ts = private unnamed_addr constant [7 x i8] c"cmd_ts\00", align 1
@channels = external global %struct._GSList*, align 8
@__func__.cmd_oper = private unnamed_addr constant [9 x i8] c"cmd_oper\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"OPER %s %s\00", align 1
@__func__.cmd_sethost = private unnamed_addr constant [12 x i8] c"cmd_sethost\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"SETHOST %s\00", align 1

; Function Attrs: nounwind uwtable
define void @fe_irc_commands_init() #0 !dbg !934 {
  %1 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !936
  call void @command_bind_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_me to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !937
  %2 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !939
  call void @command_bind_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i32 %2, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @cmd_action to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !940
  %3 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !941
  call void @command_bind_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i32 %3, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_notice to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !942
  %4 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !943
  call void @command_bind_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %4, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_ctcp to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !944
  %5 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !945
  call void @command_bind_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i32 %5, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_nctcp to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !946
  %6 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !947
  call void @command_bind_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %6, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_wall to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !948
  %7 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !949
  call void @command_bind_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i32 %7, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_ban to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !950
  %8 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !951
  call void @command_bind_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 %8, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_ver to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !952
  %9 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !953
  call void @command_bind_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 %9, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_topic to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !954
  %10 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !955
  call void @command_bind_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i32 %10, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_ts to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !956
  %11 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !957
  call void @command_bind_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 %11, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @cmd_oper to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !958
  %12 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !959
  call void @command_bind_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 %12, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @cmd_sethost to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !960
  ret void, !dbg !961
}

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare i32 @chat_protocol_lookup(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @cmd_me(i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !962 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !965, metadata !966), !dbg !967
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !968, metadata !966), !dbg !969
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !970, metadata !966), !dbg !971
  call void @llvm.dbg.declare(metadata i8** %7, metadata !972, metadata !966), !dbg !973
  call void @llvm.dbg.declare(metadata i8** %8, metadata !974, metadata !966), !dbg !975
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !976, metadata !966), !dbg !977
  call void @llvm.dbg.declare(metadata i32* %10, metadata !978, metadata !966), !dbg !979
  store i32 0, i32* %10, align 4, !dbg !979
  br label %11, !dbg !980, !llvm.loop !981

; <label>:11:                                     ; preds = %3
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !982
  %13 = icmp ne %struct._IRC_SERVER_REC* %12, null, !dbg !986
  br i1 %13, label %14, label %26, !dbg !987

; <label>:14:                                     ; preds = %11
  %15 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !988
  %16 = bitcast %struct._IRC_SERVER_REC* %15 to i8*, !dbg !988
  %17 = call i8* @module_check_cast(i8* %16, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0)), !dbg !990
  %18 = bitcast i8* %17 to %struct._SERVER_REC*, !dbg !991
  %19 = bitcast %struct._SERVER_REC* %18 to i8*, !dbg !992
  %20 = call i8* @chat_protocol_check_cast(i8* %19, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !993
  %21 = bitcast i8* %20 to %struct._IRC_SERVER_REC*, !dbg !995
  %22 = icmp ne %struct._IRC_SERVER_REC* %21, null, !dbg !995
  br i1 %22, label %23, label %24, !dbg !996

; <label>:23:                                     ; preds = %14
  br i1 false, label %25, label %26, !dbg !997

; <label>:24:                                     ; preds = %14
  br i1 false, label %26, label %25, !dbg !999

; <label>:25:                                     ; preds = %24, %23
  br label %108, !dbg !1001

; <label>:26:                                     ; preds = %24, %23, %11
  %27 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1003
  %28 = icmp eq %struct._IRC_SERVER_REC* %27, null, !dbg !1006
  br i1 %28, label %36, label %29, !dbg !1007

; <label>:29:                                     ; preds = %26
  %30 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1008
  %31 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %30, i32 0, i32 8, !dbg !1010
  %32 = load i8, i8* %31, align 8, !dbg !1010
  %33 = and i8 %32, 1, !dbg !1010
  %34 = zext i8 %33 to i32, !dbg !1010
  %35 = icmp ne i32 %34, 0, !dbg !1011
  br i1 %35, label %40, label %36, !dbg !1012

; <label>:36:                                     ; preds = %29, %26
  br label %37, !dbg !1013, !llvm.loop !1015

; <label>:37:                                     ; preds = %36
  %38 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !1017
  call void @signal_stop(), !dbg !1020
  br label %108, !dbg !1022
                                                  ; No predecessors!
  br label %40, !dbg !1023

; <label>:40:                                     ; preds = %39, %29
  br label %41, !dbg !1025

; <label>:41:                                     ; preds = %40
  %42 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1027
  %43 = bitcast %struct._WI_ITEM_REC* %42 to i8*, !dbg !1027
  %44 = call i8* @module_check_cast_module(i8* %43, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0)), !dbg !1029
  %45 = bitcast i8* %44 to %struct._CHANNEL_REC*, !dbg !1030
  %46 = bitcast %struct._CHANNEL_REC* %45 to i8*, !dbg !1031
  %47 = call i8* @chat_protocol_check_cast(i8* %46, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !1032
  %48 = bitcast i8* %47 to %struct._IRC_CHANNEL_REC*, !dbg !1034
  %49 = icmp ne %struct._IRC_CHANNEL_REC* %48, null, !dbg !1034
  br i1 %49, label %50, label %51, !dbg !1035

; <label>:50:                                     ; preds = %41
  br i1 false, label %52, label %64, !dbg !1036

; <label>:51:                                     ; preds = %41
  br i1 false, label %64, label %52, !dbg !1038

; <label>:52:                                     ; preds = %51, %50
  %53 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1040
  %54 = bitcast %struct._WI_ITEM_REC* %53 to i8*, !dbg !1040
  %55 = call i8* @module_check_cast_module(i8* %54, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0)), !dbg !1042
  %56 = bitcast i8* %55 to %struct._QUERY_REC*, !dbg !1043
  %57 = bitcast %struct._QUERY_REC* %56 to i8*, !dbg !1044
  %58 = call i8* @chat_protocol_check_cast(i8* %57, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !1045
  %59 = bitcast i8* %58 to %struct._QUERY_REC*, !dbg !1047
  %60 = icmp ne %struct._QUERY_REC* %59, null, !dbg !1047
  br i1 %60, label %61, label %62, !dbg !1048

; <label>:61:                                     ; preds = %52
  br i1 false, label %63, label %64, !dbg !1049

; <label>:62:                                     ; preds = %52
  br i1 false, label %64, label %63, !dbg !1051

; <label>:63:                                     ; preds = %62, %61
  br label %108, !dbg !1053

; <label>:64:                                     ; preds = %62, %61, %51, %50
  %65 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1054
  %66 = icmp eq %struct._IRC_SERVER_REC* %65, null, !dbg !1056
  br i1 %66, label %74, label %67, !dbg !1057

; <label>:67:                                     ; preds = %64
  %68 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1058
  %69 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %68, i32 0, i32 8, !dbg !1060
  %70 = load i8, i8* %69, align 8, !dbg !1060
  %71 = and i8 %70, 1, !dbg !1060
  %72 = zext i8 %71 to i32, !dbg !1060
  %73 = icmp ne i32 %72, 0, !dbg !1058
  br i1 %73, label %78, label %74, !dbg !1061

; <label>:74:                                     ; preds = %67, %64
  br label %75, !dbg !1062, !llvm.loop !1063

; <label>:75:                                     ; preds = %74
  %76 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !1064
  call void @signal_stop(), !dbg !1067
  br label %108, !dbg !1069
                                                  ; No predecessors!
  br label %78, !dbg !1070

; <label>:78:                                     ; preds = %77, %67
  %79 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1072
  %80 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %79, i32 0, i32 11, !dbg !1073
  %81 = load i8* (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)** %80, align 8, !dbg !1073
  %82 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1074
  %83 = call i8* %81(%struct._WI_ITEM_REC* %82), !dbg !1075
  store i8* %83, i8** %7, align 8, !dbg !1076
  %84 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1077
  %85 = load i8*, i8** %7, align 8, !dbg !1078
  %86 = load i8*, i8** %4, align 8, !dbg !1079
  %87 = call i8** @irc_server_split_action(%struct._IRC_SERVER_REC* %84, i8* %85, i8* %86), !dbg !1080
  store i8** %87, i8*** %9, align 8, !dbg !1081
  br label %88, !dbg !1082

; <label>:88:                                     ; preds = %96, %78
  %89 = load i32, i32* %10, align 4, !dbg !1083
  %90 = add nsw i32 %89, 1, !dbg !1083
  store i32 %90, i32* %10, align 4, !dbg !1083
  %91 = sext i32 %89 to i64, !dbg !1085
  %92 = load i8**, i8*** %9, align 8, !dbg !1085
  %93 = getelementptr inbounds i8*, i8** %92, i64 %91, !dbg !1085
  %94 = load i8*, i8** %93, align 8, !dbg !1085
  store i8* %94, i8** %8, align 8, !dbg !1086
  %95 = icmp ne i8* %94, null, !dbg !1087
  br i1 %95, label %96, label %106, !dbg !1087

; <label>:96:                                     ; preds = %88
  %97 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1088
  %98 = load i8*, i8** %7, align 8, !dbg !1090
  %99 = load i8*, i8** %8, align 8, !dbg !1091
  call void @irc_server_send_action(%struct._IRC_SERVER_REC* %97, i8* %98, i8* %99), !dbg !1092
  %100 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1093
  %101 = load i8*, i8** %8, align 8, !dbg !1094
  %102 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1095
  %103 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %102, i32 0, i32 5, !dbg !1096
  %104 = load i8*, i8** %103, align 8, !dbg !1096
  %105 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i32 0, i32 0), i32 3, %struct._IRC_SERVER_REC* %100, i8* %101, i8* %104), !dbg !1097
  br label %88, !dbg !1098, !llvm.loop !1100

; <label>:106:                                    ; preds = %88
  %107 = load i8**, i8*** %9, align 8, !dbg !1101
  call void @g_strfreev(i8** %107), !dbg !1102
  br label %108, !dbg !1103

; <label>:108:                                    ; preds = %106, %75, %63, %37, %25
  ret void, !dbg !1104
}

; Function Attrs: nounwind uwtable
define internal void @cmd_action(i8*, %struct._IRC_SERVER_REC*) #0 !dbg !1105 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca %struct._GHashTable*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1108, metadata !966), !dbg !1109
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !1110, metadata !966), !dbg !1111
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %5, metadata !1112, metadata !966), !dbg !1113
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1114, metadata !966), !dbg !1115
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1116, metadata !966), !dbg !1117
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1118, metadata !966), !dbg !1119
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !1120, metadata !966), !dbg !1121
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1122, metadata !966), !dbg !1123
  store i32 0, i32* %10, align 4, !dbg !1123
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1124, metadata !966), !dbg !1125
  br label %12, !dbg !1126, !llvm.loop !1127

; <label>:12:                                     ; preds = %2
  %13 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1128
  %14 = icmp ne %struct._IRC_SERVER_REC* %13, null, !dbg !1132
  br i1 %14, label %15, label %27, !dbg !1133

; <label>:15:                                     ; preds = %12
  %16 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1134
  %17 = bitcast %struct._IRC_SERVER_REC* %16 to i8*, !dbg !1134
  %18 = call i8* @module_check_cast(i8* %17, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0)), !dbg !1136
  %19 = bitcast i8* %18 to %struct._SERVER_REC*, !dbg !1137
  %20 = bitcast %struct._SERVER_REC* %19 to i8*, !dbg !1138
  %21 = call i8* @chat_protocol_check_cast(i8* %20, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !1139
  %22 = bitcast i8* %21 to %struct._IRC_SERVER_REC*, !dbg !1141
  %23 = icmp ne %struct._IRC_SERVER_REC* %22, null, !dbg !1141
  br i1 %23, label %24, label %25, !dbg !1142

; <label>:24:                                     ; preds = %15
  br i1 false, label %26, label %27, !dbg !1143

; <label>:25:                                     ; preds = %15
  br i1 false, label %27, label %26, !dbg !1145

; <label>:26:                                     ; preds = %25, %24
  br label %117, !dbg !1147

; <label>:27:                                     ; preds = %25, %24, %12
  %28 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1149
  %29 = icmp eq %struct._IRC_SERVER_REC* %28, null, !dbg !1152
  br i1 %29, label %37, label %30, !dbg !1153

; <label>:30:                                     ; preds = %27
  %31 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1154
  %32 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %31, i32 0, i32 8, !dbg !1156
  %33 = load i8, i8* %32, align 8, !dbg !1156
  %34 = and i8 %33, 1, !dbg !1156
  %35 = zext i8 %34 to i32, !dbg !1156
  %36 = icmp ne i32 %35, 0, !dbg !1157
  br i1 %36, label %41, label %37, !dbg !1158

; <label>:37:                                     ; preds = %30, %27
  br label %38, !dbg !1159, !llvm.loop !1161

; <label>:38:                                     ; preds = %37
  %39 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !1163
  call void @signal_stop(), !dbg !1166
  br label %117, !dbg !1168
                                                  ; No predecessors!
  br label %41, !dbg !1169

; <label>:41:                                     ; preds = %40, %30
  br label %42, !dbg !1171

; <label>:42:                                     ; preds = %41
  %43 = load i8*, i8** %3, align 8, !dbg !1173
  %44 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %43, i8** %11, i32 57346, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), %struct._GHashTable** %5, i8** %6, i8** %7), !dbg !1175
  %45 = icmp ne i32 %44, 0, !dbg !1175
  br i1 %45, label %47, label %46, !dbg !1176

; <label>:46:                                     ; preds = %42
  br label %117, !dbg !1177

; <label>:47:                                     ; preds = %42
  %48 = load i8*, i8** %6, align 8, !dbg !1178
  %49 = load i8, i8* %48, align 1, !dbg !1180
  %50 = sext i8 %49 to i32, !dbg !1180
  %51 = icmp eq i32 %50, 0, !dbg !1181
  br i1 %51, label %57, label %52, !dbg !1182

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %7, align 8, !dbg !1183
  %54 = load i8, i8* %53, align 1, !dbg !1185
  %55 = sext i8 %54 to i32, !dbg !1185
  %56 = icmp eq i32 %55, 0, !dbg !1186
  br i1 %56, label %57, label %64, !dbg !1187

; <label>:57:                                     ; preds = %52, %47
  br label %58, !dbg !1188, !llvm.loop !1189

; <label>:58:                                     ; preds = %57
  %59 = load i8*, i8** %11, align 8, !dbg !1190
  call void @cmd_params_free(i8* %59), !dbg !1193
  br label %60, !dbg !1194, !llvm.loop !1195

; <label>:60:                                     ; preds = %58
  %61 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !1197
  call void @signal_stop(), !dbg !1200
  br label %117, !dbg !1202
                                                  ; No predecessors!
  br label %63, !dbg !1203

; <label>:63:                                     ; preds = %62
  br label %64, !dbg !1205

; <label>:64:                                     ; preds = %63, %52
  %65 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1207
  %66 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1208
  %67 = bitcast %struct._IRC_SERVER_REC* %66 to i8*, !dbg !1208
  %68 = call i8* @module_check_cast(i8* %67, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0)), !dbg !1209
  %69 = bitcast i8* %68 to %struct._SERVER_REC*, !dbg !1210
  %70 = call %struct._SERVER_REC* @cmd_options_get_server(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), %struct._GHashTable* %65, %struct._SERVER_REC* %69), !dbg !1211
  %71 = bitcast %struct._SERVER_REC* %70 to i8*, !dbg !1213
  %72 = call i8* @module_check_cast(i8* %71, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0)), !dbg !1214
  %73 = bitcast i8* %72 to %struct._SERVER_REC*, !dbg !1216
  %74 = bitcast %struct._SERVER_REC* %73 to i8*, !dbg !1217
  %75 = call i8* @chat_protocol_check_cast(i8* %74, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !1218
  %76 = bitcast i8* %75 to %struct._IRC_SERVER_REC*, !dbg !1220
  store %struct._IRC_SERVER_REC* %76, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1221
  %77 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1222
  %78 = icmp eq %struct._IRC_SERVER_REC* %77, null, !dbg !1224
  br i1 %78, label %86, label %79, !dbg !1225

; <label>:79:                                     ; preds = %64
  %80 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1226
  %81 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %80, i32 0, i32 8, !dbg !1228
  %82 = load i8, i8* %81, align 8, !dbg !1228
  %83 = and i8 %82, 1, !dbg !1228
  %84 = zext i8 %83 to i32, !dbg !1228
  %85 = icmp ne i32 %84, 0, !dbg !1226
  br i1 %85, label %93, label %86, !dbg !1229

; <label>:86:                                     ; preds = %79, %64
  br label %87, !dbg !1230, !llvm.loop !1231

; <label>:87:                                     ; preds = %86
  %88 = load i8*, i8** %11, align 8, !dbg !1232
  call void @cmd_params_free(i8* %88), !dbg !1235
  br label %89, !dbg !1236, !llvm.loop !1237

; <label>:89:                                     ; preds = %87
  %90 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !1239
  call void @signal_stop(), !dbg !1242
  br label %117, !dbg !1244
                                                  ; No predecessors!
  br label %92, !dbg !1245

; <label>:92:                                     ; preds = %91
  br label %93, !dbg !1247

; <label>:93:                                     ; preds = %92, %79
  %94 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1249
  %95 = load i8*, i8** %6, align 8, !dbg !1250
  %96 = load i8*, i8** %7, align 8, !dbg !1251
  %97 = call i8** @irc_server_split_action(%struct._IRC_SERVER_REC* %94, i8* %95, i8* %96), !dbg !1252
  store i8** %97, i8*** %9, align 8, !dbg !1253
  br label %98, !dbg !1254

; <label>:98:                                     ; preds = %106, %93
  %99 = load i32, i32* %10, align 4, !dbg !1255
  %100 = add nsw i32 %99, 1, !dbg !1255
  store i32 %100, i32* %10, align 4, !dbg !1255
  %101 = sext i32 %99 to i64, !dbg !1256
  %102 = load i8**, i8*** %9, align 8, !dbg !1256
  %103 = getelementptr inbounds i8*, i8** %102, i64 %101, !dbg !1256
  %104 = load i8*, i8** %103, align 8, !dbg !1256
  store i8* %104, i8** %8, align 8, !dbg !1257
  %105 = icmp ne i8* %104, null, !dbg !1258
  br i1 %105, label %106, label %114, !dbg !1258

; <label>:106:                                    ; preds = %98
  %107 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1259
  %108 = load i8*, i8** %6, align 8, !dbg !1261
  %109 = load i8*, i8** %8, align 8, !dbg !1262
  call void @irc_server_send_action(%struct._IRC_SERVER_REC* %107, i8* %108, i8* %109), !dbg !1263
  %110 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1264
  %111 = load i8*, i8** %8, align 8, !dbg !1265
  %112 = load i8*, i8** %6, align 8, !dbg !1266
  %113 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i32 0, i32 0), i32 3, %struct._IRC_SERVER_REC* %110, i8* %111, i8* %112), !dbg !1267
  br label %98, !dbg !1268, !llvm.loop !1269

; <label>:114:                                    ; preds = %98
  %115 = load i8**, i8*** %9, align 8, !dbg !1270
  call void @g_strfreev(i8** %115), !dbg !1271
  %116 = load i8*, i8** %11, align 8, !dbg !1272
  call void @cmd_params_free(i8* %116), !dbg !1273
  br label %117, !dbg !1274

; <label>:117:                                    ; preds = %114, %89, %60, %46, %38, %26
  ret void, !dbg !1275
}

; Function Attrs: nounwind uwtable
define internal void @cmd_notice(i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !1276 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1277, metadata !966), !dbg !1278
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1279, metadata !966), !dbg !1280
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !1281, metadata !966), !dbg !1282
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1283, metadata !966), !dbg !1284
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1285, metadata !966), !dbg !1286
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1287, metadata !966), !dbg !1288
  br label %10, !dbg !1289, !llvm.loop !1290

; <label>:10:                                     ; preds = %3
  %11 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1291
  %12 = icmp ne %struct._IRC_SERVER_REC* %11, null, !dbg !1295
  br i1 %12, label %13, label %25, !dbg !1296

; <label>:13:                                     ; preds = %10
  %14 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1297
  %15 = bitcast %struct._IRC_SERVER_REC* %14 to i8*, !dbg !1297
  %16 = call i8* @module_check_cast(i8* %15, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0)), !dbg !1299
  %17 = bitcast i8* %16 to %struct._SERVER_REC*, !dbg !1300
  %18 = bitcast %struct._SERVER_REC* %17 to i8*, !dbg !1301
  %19 = call i8* @chat_protocol_check_cast(i8* %18, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !1302
  %20 = bitcast i8* %19 to %struct._IRC_SERVER_REC*, !dbg !1304
  %21 = icmp ne %struct._IRC_SERVER_REC* %20, null, !dbg !1304
  br i1 %21, label %22, label %23, !dbg !1305

; <label>:22:                                     ; preds = %13
  br i1 false, label %24, label %25, !dbg !1306

; <label>:23:                                     ; preds = %13
  br i1 false, label %25, label %24, !dbg !1308

; <label>:24:                                     ; preds = %23, %22
  br label %84, !dbg !1310

; <label>:25:                                     ; preds = %23, %22, %10
  %26 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1312
  %27 = icmp eq %struct._IRC_SERVER_REC* %26, null, !dbg !1315
  br i1 %27, label %35, label %28, !dbg !1316

; <label>:28:                                     ; preds = %25
  %29 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1317
  %30 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %29, i32 0, i32 8, !dbg !1319
  %31 = load i8, i8* %30, align 8, !dbg !1319
  %32 = and i8 %31, 1, !dbg !1319
  %33 = zext i8 %32 to i32, !dbg !1319
  %34 = icmp ne i32 %33, 0, !dbg !1320
  br i1 %34, label %39, label %35, !dbg !1321

; <label>:35:                                     ; preds = %28, %25
  br label %36, !dbg !1322, !llvm.loop !1324

; <label>:36:                                     ; preds = %35
  %37 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !1326
  call void @signal_stop(), !dbg !1329
  br label %84, !dbg !1331
                                                  ; No predecessors!
  br label %39, !dbg !1332

; <label>:39:                                     ; preds = %38, %28
  br label %40, !dbg !1334

; <label>:40:                                     ; preds = %39
  %41 = load i8*, i8** %4, align 8, !dbg !1336
  %42 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %41, i8** %9, i32 8194, i8** %7, i8** %8), !dbg !1338
  %43 = icmp ne i32 %42, 0, !dbg !1338
  br i1 %43, label %45, label %44, !dbg !1339

; <label>:44:                                     ; preds = %40
  br label %84, !dbg !1340

; <label>:45:                                     ; preds = %40
  %46 = load i8*, i8** %7, align 8, !dbg !1341
  %47 = call i32 @g_strcmp0(i8* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0)), !dbg !1343
  %48 = icmp eq i32 %47, 0, !dbg !1344
  br i1 %48, label %49, label %61, !dbg !1345

; <label>:49:                                     ; preds = %45
  %50 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1346
  %51 = icmp eq %struct._WI_ITEM_REC* %50, null, !dbg !1347
  br i1 %51, label %52, label %53, !dbg !1346

; <label>:52:                                     ; preds = %49
  br label %59, !dbg !1348

; <label>:53:                                     ; preds = %49
  %54 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1350
  %55 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %54, i32 0, i32 11, !dbg !1352
  %56 = load i8* (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)** %55, align 8, !dbg !1352
  %57 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1353
  %58 = call i8* %56(%struct._WI_ITEM_REC* %57), !dbg !1354
  br label %59, !dbg !1355

; <label>:59:                                     ; preds = %53, %52
  %60 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0), %52 ], [ %58, %53 ], !dbg !1356
  store i8* %60, i8** %7, align 8, !dbg !1358
  br label %61, !dbg !1359

; <label>:61:                                     ; preds = %59, %45
  %62 = load i8*, i8** %7, align 8, !dbg !1360
  %63 = load i8, i8* %62, align 1, !dbg !1362
  %64 = sext i8 %63 to i32, !dbg !1362
  %65 = icmp eq i32 %64, 0, !dbg !1363
  br i1 %65, label %71, label %66, !dbg !1364

; <label>:66:                                     ; preds = %61
  %67 = load i8*, i8** %8, align 8, !dbg !1365
  %68 = load i8, i8* %67, align 1, !dbg !1367
  %69 = sext i8 %68 to i32, !dbg !1367
  %70 = icmp eq i32 %69, 0, !dbg !1368
  br i1 %70, label %71, label %78, !dbg !1369

; <label>:71:                                     ; preds = %66, %61
  br label %72, !dbg !1370, !llvm.loop !1371

; <label>:72:                                     ; preds = %71
  %73 = load i8*, i8** %9, align 8, !dbg !1372
  call void @cmd_params_free(i8* %73), !dbg !1375
  br label %74, !dbg !1376, !llvm.loop !1377

; <label>:74:                                     ; preds = %72
  %75 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !1379
  call void @signal_stop(), !dbg !1382
  br label %84, !dbg !1384
                                                  ; No predecessors!
  br label %77, !dbg !1385

; <label>:77:                                     ; preds = %76
  br label %78, !dbg !1387

; <label>:78:                                     ; preds = %77, %66
  %79 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1389
  %80 = load i8*, i8** %8, align 8, !dbg !1390
  %81 = load i8*, i8** %7, align 8, !dbg !1391
  %82 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i32 0, i32 0), i32 3, %struct._IRC_SERVER_REC* %79, i8* %80, i8* %81), !dbg !1392
  %83 = load i8*, i8** %9, align 8, !dbg !1393
  call void @cmd_params_free(i8* %83), !dbg !1394
  br label %84, !dbg !1395

; <label>:84:                                     ; preds = %78, %74, %44, %36, %24
  ret void, !dbg !1396
}

; Function Attrs: nounwind uwtable
define internal void @cmd_ctcp(i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !1398 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1399, metadata !966), !dbg !1400
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1401, metadata !966), !dbg !1402
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !1403, metadata !966), !dbg !1404
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1405, metadata !966), !dbg !1406
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1407, metadata !966), !dbg !1408
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1409, metadata !966), !dbg !1410
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1411, metadata !966), !dbg !1412
  br label %11, !dbg !1413, !llvm.loop !1414

; <label>:11:                                     ; preds = %3
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1415
  %13 = icmp ne %struct._IRC_SERVER_REC* %12, null, !dbg !1419
  br i1 %13, label %14, label %26, !dbg !1420

; <label>:14:                                     ; preds = %11
  %15 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1421
  %16 = bitcast %struct._IRC_SERVER_REC* %15 to i8*, !dbg !1421
  %17 = call i8* @module_check_cast(i8* %16, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0)), !dbg !1423
  %18 = bitcast i8* %17 to %struct._SERVER_REC*, !dbg !1424
  %19 = bitcast %struct._SERVER_REC* %18 to i8*, !dbg !1425
  %20 = call i8* @chat_protocol_check_cast(i8* %19, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !1426
  %21 = bitcast i8* %20 to %struct._IRC_SERVER_REC*, !dbg !1428
  %22 = icmp ne %struct._IRC_SERVER_REC* %21, null, !dbg !1428
  br i1 %22, label %23, label %24, !dbg !1429

; <label>:23:                                     ; preds = %14
  br i1 false, label %25, label %26, !dbg !1430

; <label>:24:                                     ; preds = %14
  br i1 false, label %26, label %25, !dbg !1432

; <label>:25:                                     ; preds = %24, %23
  br label %95, !dbg !1434

; <label>:26:                                     ; preds = %24, %23, %11
  %27 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1436
  %28 = icmp eq %struct._IRC_SERVER_REC* %27, null, !dbg !1439
  br i1 %28, label %36, label %29, !dbg !1440

; <label>:29:                                     ; preds = %26
  %30 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1441
  %31 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %30, i32 0, i32 8, !dbg !1443
  %32 = load i8, i8* %31, align 8, !dbg !1443
  %33 = and i8 %32, 1, !dbg !1443
  %34 = zext i8 %33 to i32, !dbg !1443
  %35 = icmp ne i32 %34, 0, !dbg !1444
  br i1 %35, label %40, label %36, !dbg !1445

; <label>:36:                                     ; preds = %29, %26
  br label %37, !dbg !1446, !llvm.loop !1448

; <label>:37:                                     ; preds = %36
  %38 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !1450
  call void @signal_stop(), !dbg !1453
  br label %95, !dbg !1455
                                                  ; No predecessors!
  br label %40, !dbg !1456

; <label>:40:                                     ; preds = %39, %29
  br label %41, !dbg !1458

; <label>:41:                                     ; preds = %40
  %42 = load i8*, i8** %4, align 8, !dbg !1460
  %43 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %42, i8** %10, i32 8195, i8** %7, i8** %8, i8** %9), !dbg !1462
  %44 = icmp ne i32 %43, 0, !dbg !1462
  br i1 %44, label %46, label %45, !dbg !1463

; <label>:45:                                     ; preds = %41
  br label %95, !dbg !1464

; <label>:46:                                     ; preds = %41
  %47 = load i8*, i8** %7, align 8, !dbg !1465
  %48 = call i32 @g_strcmp0(i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0)), !dbg !1467
  %49 = icmp eq i32 %48, 0, !dbg !1468
  br i1 %49, label %50, label %62, !dbg !1469

; <label>:50:                                     ; preds = %46
  %51 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1470
  %52 = icmp eq %struct._WI_ITEM_REC* %51, null, !dbg !1471
  br i1 %52, label %53, label %54, !dbg !1470

; <label>:53:                                     ; preds = %50
  br label %60, !dbg !1472

; <label>:54:                                     ; preds = %50
  %55 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1474
  %56 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %55, i32 0, i32 11, !dbg !1476
  %57 = load i8* (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)** %56, align 8, !dbg !1476
  %58 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1477
  %59 = call i8* %57(%struct._WI_ITEM_REC* %58), !dbg !1478
  br label %60, !dbg !1479

; <label>:60:                                     ; preds = %54, %53
  %61 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0), %53 ], [ %59, %54 ], !dbg !1480
  store i8* %61, i8** %7, align 8, !dbg !1482
  br label %62, !dbg !1483

; <label>:62:                                     ; preds = %60, %46
  %63 = load i8*, i8** %7, align 8, !dbg !1484
  %64 = load i8, i8* %63, align 1, !dbg !1486
  %65 = sext i8 %64 to i32, !dbg !1486
  %66 = icmp eq i32 %65, 0, !dbg !1487
  br i1 %66, label %72, label %67, !dbg !1488

; <label>:67:                                     ; preds = %62
  %68 = load i8*, i8** %8, align 8, !dbg !1489
  %69 = load i8, i8* %68, align 1, !dbg !1491
  %70 = sext i8 %69 to i32, !dbg !1491
  %71 = icmp eq i32 %70, 0, !dbg !1492
  br i1 %71, label %72, label %79, !dbg !1493

; <label>:72:                                     ; preds = %67, %62
  br label %73, !dbg !1494, !llvm.loop !1495

; <label>:73:                                     ; preds = %72
  %74 = load i8*, i8** %10, align 8, !dbg !1496
  call void @cmd_params_free(i8* %74), !dbg !1499
  br label %75, !dbg !1500, !llvm.loop !1501

; <label>:75:                                     ; preds = %73
  %76 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !1503
  call void @signal_stop(), !dbg !1506
  br label %95, !dbg !1508
                                                  ; No predecessors!
  br label %78, !dbg !1509

; <label>:78:                                     ; preds = %77
  br label %79, !dbg !1511

; <label>:79:                                     ; preds = %78, %67
  %80 = load i8*, i8** %7, align 8, !dbg !1513
  %81 = load i8, i8* %80, align 1, !dbg !1515
  %82 = sext i8 %81 to i32, !dbg !1515
  %83 = icmp eq i32 %82, 61, !dbg !1516
  br i1 %83, label %84, label %86, !dbg !1517

; <label>:84:                                     ; preds = %79
  %85 = load i8*, i8** %10, align 8, !dbg !1518
  call void @cmd_params_free(i8* %85), !dbg !1520
  br label %95, !dbg !1521

; <label>:86:                                     ; preds = %79
  %87 = load i8*, i8** %8, align 8, !dbg !1522
  %88 = call i8* @ascii_strup(i8* %87), !dbg !1523
  %89 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1524
  %90 = load i8*, i8** %8, align 8, !dbg !1525
  %91 = load i8*, i8** %9, align 8, !dbg !1526
  %92 = load i8*, i8** %7, align 8, !dbg !1527
  %93 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i32 0, i32 0), i32 4, %struct._IRC_SERVER_REC* %89, i8* %90, i8* %91, i8* %92), !dbg !1528
  %94 = load i8*, i8** %10, align 8, !dbg !1529
  call void @cmd_params_free(i8* %94), !dbg !1530
  br label %95, !dbg !1531

; <label>:95:                                     ; preds = %86, %84, %75, %45, %37, %25
  ret void, !dbg !1532
}

; Function Attrs: nounwind uwtable
define internal void @cmd_nctcp(i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !1534 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1535, metadata !966), !dbg !1536
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1537, metadata !966), !dbg !1538
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !1539, metadata !966), !dbg !1540
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1541, metadata !966), !dbg !1542
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1543, metadata !966), !dbg !1544
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1545, metadata !966), !dbg !1546
  br label %10, !dbg !1547, !llvm.loop !1548

; <label>:10:                                     ; preds = %3
  %11 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1549
  %12 = icmp ne %struct._IRC_SERVER_REC* %11, null, !dbg !1553
  br i1 %12, label %13, label %25, !dbg !1554

; <label>:13:                                     ; preds = %10
  %14 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1555
  %15 = bitcast %struct._IRC_SERVER_REC* %14 to i8*, !dbg !1555
  %16 = call i8* @module_check_cast(i8* %15, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0)), !dbg !1557
  %17 = bitcast i8* %16 to %struct._SERVER_REC*, !dbg !1558
  %18 = bitcast %struct._SERVER_REC* %17 to i8*, !dbg !1559
  %19 = call i8* @chat_protocol_check_cast(i8* %18, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !1560
  %20 = bitcast i8* %19 to %struct._IRC_SERVER_REC*, !dbg !1562
  %21 = icmp ne %struct._IRC_SERVER_REC* %20, null, !dbg !1562
  br i1 %21, label %22, label %23, !dbg !1563

; <label>:22:                                     ; preds = %13
  br i1 false, label %24, label %25, !dbg !1564

; <label>:23:                                     ; preds = %13
  br i1 false, label %25, label %24, !dbg !1566

; <label>:24:                                     ; preds = %23, %22
  br label %84, !dbg !1568

; <label>:25:                                     ; preds = %23, %22, %10
  %26 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1570
  %27 = icmp eq %struct._IRC_SERVER_REC* %26, null, !dbg !1573
  br i1 %27, label %35, label %28, !dbg !1574

; <label>:28:                                     ; preds = %25
  %29 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1575
  %30 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %29, i32 0, i32 8, !dbg !1577
  %31 = load i8, i8* %30, align 8, !dbg !1577
  %32 = and i8 %31, 1, !dbg !1577
  %33 = zext i8 %32 to i32, !dbg !1577
  %34 = icmp ne i32 %33, 0, !dbg !1578
  br i1 %34, label %39, label %35, !dbg !1579

; <label>:35:                                     ; preds = %28, %25
  br label %36, !dbg !1580, !llvm.loop !1582

; <label>:36:                                     ; preds = %35
  %37 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !1584
  call void @signal_stop(), !dbg !1587
  br label %84, !dbg !1589
                                                  ; No predecessors!
  br label %39, !dbg !1590

; <label>:39:                                     ; preds = %38, %28
  br label %40, !dbg !1592

; <label>:40:                                     ; preds = %39
  %41 = load i8*, i8** %4, align 8, !dbg !1594
  %42 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %41, i8** %9, i32 8194, i8** %7, i8** %8), !dbg !1596
  %43 = icmp ne i32 %42, 0, !dbg !1596
  br i1 %43, label %45, label %44, !dbg !1597

; <label>:44:                                     ; preds = %40
  br label %84, !dbg !1598

; <label>:45:                                     ; preds = %40
  %46 = load i8*, i8** %7, align 8, !dbg !1599
  %47 = call i32 @g_strcmp0(i8* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0)), !dbg !1601
  %48 = icmp eq i32 %47, 0, !dbg !1602
  br i1 %48, label %49, label %61, !dbg !1603

; <label>:49:                                     ; preds = %45
  %50 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1604
  %51 = icmp eq %struct._WI_ITEM_REC* %50, null, !dbg !1605
  br i1 %51, label %52, label %53, !dbg !1604

; <label>:52:                                     ; preds = %49
  br label %59, !dbg !1606

; <label>:53:                                     ; preds = %49
  %54 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1608
  %55 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %54, i32 0, i32 11, !dbg !1610
  %56 = load i8* (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)** %55, align 8, !dbg !1610
  %57 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1611
  %58 = call i8* %56(%struct._WI_ITEM_REC* %57), !dbg !1612
  br label %59, !dbg !1613

; <label>:59:                                     ; preds = %53, %52
  %60 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0), %52 ], [ %58, %53 ], !dbg !1614
  store i8* %60, i8** %7, align 8, !dbg !1616
  br label %61, !dbg !1617

; <label>:61:                                     ; preds = %59, %45
  %62 = load i8*, i8** %7, align 8, !dbg !1618
  %63 = load i8, i8* %62, align 1, !dbg !1620
  %64 = sext i8 %63 to i32, !dbg !1620
  %65 = icmp eq i32 %64, 0, !dbg !1621
  br i1 %65, label %71, label %66, !dbg !1622

; <label>:66:                                     ; preds = %61
  %67 = load i8*, i8** %8, align 8, !dbg !1623
  %68 = load i8, i8* %67, align 1, !dbg !1625
  %69 = sext i8 %68 to i32, !dbg !1625
  %70 = icmp eq i32 %69, 0, !dbg !1626
  br i1 %70, label %71, label %78, !dbg !1627

; <label>:71:                                     ; preds = %66, %61
  br label %72, !dbg !1628, !llvm.loop !1629

; <label>:72:                                     ; preds = %71
  %73 = load i8*, i8** %9, align 8, !dbg !1630
  call void @cmd_params_free(i8* %73), !dbg !1633
  br label %74, !dbg !1634, !llvm.loop !1635

; <label>:74:                                     ; preds = %72
  %75 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !1637
  call void @signal_stop(), !dbg !1640
  br label %84, !dbg !1642
                                                  ; No predecessors!
  br label %77, !dbg !1643

; <label>:77:                                     ; preds = %76
  br label %78, !dbg !1645

; <label>:78:                                     ; preds = %77, %66
  %79 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1647
  %80 = load i8*, i8** %8, align 8, !dbg !1648
  %81 = load i8*, i8** %7, align 8, !dbg !1649
  %82 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i32 0, i32 0), i32 3, %struct._IRC_SERVER_REC* %79, i8* %80, i8* %81), !dbg !1650
  %83 = load i8*, i8** %9, align 8, !dbg !1651
  call void @cmd_params_free(i8* %83), !dbg !1652
  br label %84, !dbg !1653

; <label>:84:                                     ; preds = %78, %74, %44, %36, %24
  ret void, !dbg !1654
}

; Function Attrs: nounwind uwtable
define internal void @cmd_wall(i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !1656 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1657, metadata !966), !dbg !1658
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1659, metadata !966), !dbg !1660
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !1661, metadata !966), !dbg !1662
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %7, metadata !1663, metadata !966), !dbg !1664
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1665, metadata !966), !dbg !1666
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1667, metadata !966), !dbg !1668
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1669, metadata !966), !dbg !1670
  br label %11, !dbg !1671, !llvm.loop !1672

; <label>:11:                                     ; preds = %3
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1673
  %13 = icmp ne %struct._IRC_SERVER_REC* %12, null, !dbg !1677
  br i1 %13, label %14, label %26, !dbg !1678

; <label>:14:                                     ; preds = %11
  %15 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1679
  %16 = bitcast %struct._IRC_SERVER_REC* %15 to i8*, !dbg !1679
  %17 = call i8* @module_check_cast(i8* %16, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0)), !dbg !1681
  %18 = bitcast i8* %17 to %struct._SERVER_REC*, !dbg !1682
  %19 = bitcast %struct._SERVER_REC* %18 to i8*, !dbg !1683
  %20 = call i8* @chat_protocol_check_cast(i8* %19, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !1684
  %21 = bitcast i8* %20 to %struct._IRC_SERVER_REC*, !dbg !1686
  %22 = icmp ne %struct._IRC_SERVER_REC* %21, null, !dbg !1686
  br i1 %22, label %23, label %24, !dbg !1687

; <label>:23:                                     ; preds = %14
  br i1 false, label %25, label %26, !dbg !1688

; <label>:24:                                     ; preds = %14
  br i1 false, label %26, label %25, !dbg !1690

; <label>:25:                                     ; preds = %24, %23
  br label %89, !dbg !1692

; <label>:26:                                     ; preds = %24, %23, %11
  %27 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1694
  %28 = icmp eq %struct._IRC_SERVER_REC* %27, null, !dbg !1697
  br i1 %28, label %36, label %29, !dbg !1698

; <label>:29:                                     ; preds = %26
  %30 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1699
  %31 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %30, i32 0, i32 8, !dbg !1701
  %32 = load i8, i8* %31, align 8, !dbg !1701
  %33 = and i8 %32, 1, !dbg !1701
  %34 = zext i8 %33 to i32, !dbg !1701
  %35 = icmp ne i32 %34, 0, !dbg !1702
  br i1 %35, label %40, label %36, !dbg !1703

; <label>:36:                                     ; preds = %29, %26
  br label %37, !dbg !1704, !llvm.loop !1706

; <label>:37:                                     ; preds = %36
  %38 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !1708
  call void @signal_stop(), !dbg !1711
  br label %89, !dbg !1713
                                                  ; No predecessors!
  br label %40, !dbg !1714

; <label>:40:                                     ; preds = %39, %29
  br label %41, !dbg !1716

; <label>:41:                                     ; preds = %40
  %42 = load i8*, i8** %4, align 8, !dbg !1718
  %43 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1720
  %44 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %42, i8** %10, i32 73730, %struct._WI_ITEM_REC* %43, i8** %8, i8** %9), !dbg !1721
  %45 = icmp ne i32 %44, 0, !dbg !1721
  br i1 %45, label %47, label %46, !dbg !1722

; <label>:46:                                     ; preds = %41
  br label %89, !dbg !1723

; <label>:47:                                     ; preds = %41
  %48 = load i8*, i8** %9, align 8, !dbg !1724
  %49 = load i8, i8* %48, align 1, !dbg !1726
  %50 = sext i8 %49 to i32, !dbg !1726
  %51 = icmp eq i32 %50, 0, !dbg !1727
  br i1 %51, label %52, label %59, !dbg !1728

; <label>:52:                                     ; preds = %47
  br label %53, !dbg !1729, !llvm.loop !1731

; <label>:53:                                     ; preds = %52
  %54 = load i8*, i8** %10, align 8, !dbg !1733
  call void @cmd_params_free(i8* %54), !dbg !1736
  br label %55, !dbg !1737, !llvm.loop !1738

; <label>:55:                                     ; preds = %53
  %56 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !1740
  call void @signal_stop(), !dbg !1743
  br label %89, !dbg !1745
                                                  ; No predecessors!
  br label %58, !dbg !1746

; <label>:58:                                     ; preds = %57
  br label %59, !dbg !1748

; <label>:59:                                     ; preds = %58, %47
  %60 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1750
  %61 = bitcast %struct._IRC_SERVER_REC* %60 to i8*, !dbg !1750
  %62 = call i8* @module_check_cast(i8* %61, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0)), !dbg !1751
  %63 = bitcast i8* %62 to %struct._SERVER_REC*, !dbg !1752
  %64 = load i8*, i8** %8, align 8, !dbg !1753
  %65 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %63, i8* %64), !dbg !1754
  %66 = bitcast %struct._CHANNEL_REC* %65 to i8*, !dbg !1756
  %67 = call i8* @module_check_cast_module(i8* %66, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0)), !dbg !1757
  %68 = bitcast i8* %67 to %struct._CHANNEL_REC*, !dbg !1759
  %69 = bitcast %struct._CHANNEL_REC* %68 to i8*, !dbg !1760
  %70 = call i8* @chat_protocol_check_cast(i8* %69, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !1761
  %71 = bitcast i8* %70 to %struct._IRC_CHANNEL_REC*, !dbg !1763
  store %struct._IRC_CHANNEL_REC* %71, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !1764
  %72 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !1765
  %73 = icmp eq %struct._IRC_CHANNEL_REC* %72, null, !dbg !1767
  br i1 %73, label %74, label %81, !dbg !1768

; <label>:74:                                     ; preds = %59
  br label %75, !dbg !1769, !llvm.loop !1771

; <label>:75:                                     ; preds = %74
  %76 = load i8*, i8** %10, align 8, !dbg !1773
  call void @cmd_params_free(i8* %76), !dbg !1776
  br label %77, !dbg !1777, !llvm.loop !1778

; <label>:77:                                     ; preds = %75
  %78 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 1, i8* inttoptr (i64 6 to i8*)), !dbg !1780
  call void @signal_stop(), !dbg !1783
  br label %89, !dbg !1785
                                                  ; No predecessors!
  br label %80, !dbg !1786

; <label>:80:                                     ; preds = %79
  br label %81, !dbg !1788

; <label>:81:                                     ; preds = %80, %59
  %82 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1790
  %83 = load i8*, i8** %9, align 8, !dbg !1791
  %84 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !1792
  %85 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %84, i32 0, i32 5, !dbg !1793
  %86 = load i8*, i8** %85, align 8, !dbg !1793
  %87 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i32 0, i32 0), i32 3, %struct._IRC_SERVER_REC* %82, i8* %83, i8* %86), !dbg !1794
  %88 = load i8*, i8** %10, align 8, !dbg !1795
  call void @cmd_params_free(i8* %88), !dbg !1796
  br label %89, !dbg !1797

; <label>:89:                                     ; preds = %81, %77, %55, %46, %37, %25
  ret void, !dbg !1798
}

; Function Attrs: nounwind uwtable
define internal void @cmd_ban(i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !1799 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1800, metadata !966), !dbg !1801
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1802, metadata !966), !dbg !1803
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !1804, metadata !966), !dbg !1805
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %7, metadata !1806, metadata !966), !dbg !1807
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1808, metadata !966), !dbg !1809
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1810, metadata !966), !dbg !1811
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1812, metadata !966), !dbg !1813
  br label %11, !dbg !1814, !llvm.loop !1815

; <label>:11:                                     ; preds = %3
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1816
  %13 = icmp ne %struct._IRC_SERVER_REC* %12, null, !dbg !1820
  br i1 %13, label %14, label %26, !dbg !1821

; <label>:14:                                     ; preds = %11
  %15 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1822
  %16 = bitcast %struct._IRC_SERVER_REC* %15 to i8*, !dbg !1822
  %17 = call i8* @module_check_cast(i8* %16, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0)), !dbg !1824
  %18 = bitcast i8* %17 to %struct._SERVER_REC*, !dbg !1825
  %19 = bitcast %struct._SERVER_REC* %18 to i8*, !dbg !1826
  %20 = call i8* @chat_protocol_check_cast(i8* %19, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !1827
  %21 = bitcast i8* %20 to %struct._IRC_SERVER_REC*, !dbg !1829
  %22 = icmp ne %struct._IRC_SERVER_REC* %21, null, !dbg !1829
  br i1 %22, label %23, label %24, !dbg !1830

; <label>:23:                                     ; preds = %14
  br i1 false, label %25, label %26, !dbg !1831

; <label>:24:                                     ; preds = %14
  br i1 false, label %26, label %25, !dbg !1833

; <label>:25:                                     ; preds = %24, %23
  br label %118, !dbg !1835

; <label>:26:                                     ; preds = %24, %23, %11
  %27 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1837
  %28 = icmp eq %struct._IRC_SERVER_REC* %27, null, !dbg !1840
  br i1 %28, label %36, label %29, !dbg !1841

; <label>:29:                                     ; preds = %26
  %30 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1842
  %31 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %30, i32 0, i32 8, !dbg !1844
  %32 = load i8, i8* %31, align 8, !dbg !1844
  %33 = and i8 %32, 1, !dbg !1844
  %34 = zext i8 %33 to i32, !dbg !1844
  %35 = icmp ne i32 %34, 0, !dbg !1845
  br i1 %35, label %40, label %36, !dbg !1846

; <label>:36:                                     ; preds = %29, %26
  br label %37, !dbg !1847, !llvm.loop !1849

; <label>:37:                                     ; preds = %36
  %38 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !1851
  call void @signal_stop(), !dbg !1854
  br label %118, !dbg !1856
                                                  ; No predecessors!
  br label %40, !dbg !1857

; <label>:40:                                     ; preds = %39, %29
  br label %41, !dbg !1859

; <label>:41:                                     ; preds = %40
  %42 = load i8*, i8** %4, align 8, !dbg !1861
  %43 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1863
  %44 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %42, i8** %10, i32 335874, %struct._WI_ITEM_REC* %43, i8** %8, i8** %9), !dbg !1864
  %45 = icmp ne i32 %44, 0, !dbg !1864
  br i1 %45, label %47, label %46, !dbg !1865

; <label>:46:                                     ; preds = %41
  br label %118, !dbg !1866

; <label>:47:                                     ; preds = %41
  %48 = load i8*, i8** %9, align 8, !dbg !1867
  %49 = load i8, i8* %48, align 1, !dbg !1869
  %50 = sext i8 %49 to i32, !dbg !1869
  %51 = icmp ne i32 %50, 0, !dbg !1870
  br i1 %51, label %52, label %54, !dbg !1871

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %10, align 8, !dbg !1872
  call void @cmd_params_free(i8* %53), !dbg !1874
  br label %118, !dbg !1875

; <label>:54:                                     ; preds = %47
  %55 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1876
  %56 = bitcast %struct._WI_ITEM_REC* %55 to i8*, !dbg !1876
  %57 = call i8* @module_check_cast_module(i8* %56, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0)), !dbg !1877
  %58 = bitcast i8* %57 to %struct._CHANNEL_REC*, !dbg !1878
  %59 = bitcast %struct._CHANNEL_REC* %58 to i8*, !dbg !1879
  %60 = call i8* @chat_protocol_check_cast(i8* %59, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !1880
  %61 = bitcast i8* %60 to %struct._IRC_CHANNEL_REC*, !dbg !1882
  store %struct._IRC_CHANNEL_REC* %61, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !1883
  %62 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !1884
  %63 = icmp eq %struct._IRC_CHANNEL_REC* %62, null, !dbg !1886
  br i1 %63, label %64, label %76, !dbg !1887

; <label>:64:                                     ; preds = %54
  %65 = load i8*, i8** %8, align 8, !dbg !1888
  %66 = load i8, i8* %65, align 1, !dbg !1890
  %67 = sext i8 %66 to i32, !dbg !1890
  %68 = icmp eq i32 %67, 0, !dbg !1891
  br i1 %68, label %69, label %76, !dbg !1892

; <label>:69:                                     ; preds = %64
  br label %70, !dbg !1893, !llvm.loop !1894

; <label>:70:                                     ; preds = %69
  %71 = load i8*, i8** %10, align 8, !dbg !1895
  call void @cmd_params_free(i8* %71), !dbg !1898
  br label %72, !dbg !1899, !llvm.loop !1900

; <label>:72:                                     ; preds = %70
  %73 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 1, i8* inttoptr (i64 5 to i8*)), !dbg !1902
  call void @signal_stop(), !dbg !1905
  br label %118, !dbg !1907
                                                  ; No predecessors!
  br label %75, !dbg !1908

; <label>:75:                                     ; preds = %74
  br label %76, !dbg !1910

; <label>:76:                                     ; preds = %75, %64, %54
  %77 = load i8*, i8** %8, align 8, !dbg !1912
  %78 = load i8, i8* %77, align 1, !dbg !1914
  %79 = sext i8 %78 to i32, !dbg !1914
  %80 = icmp ne i32 %79, 0, !dbg !1915
  br i1 %80, label %81, label %98, !dbg !1916

; <label>:81:                                     ; preds = %76
  %82 = load i8*, i8** %8, align 8, !dbg !1917
  %83 = call i32 @g_strcmp0(i8* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0)), !dbg !1919
  %84 = icmp ne i32 %83, 0, !dbg !1920
  br i1 %84, label %85, label %98, !dbg !1921

; <label>:85:                                     ; preds = %81
  %86 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1922
  %87 = bitcast %struct._IRC_SERVER_REC* %86 to i8*, !dbg !1922
  %88 = call i8* @module_check_cast(i8* %87, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0)), !dbg !1923
  %89 = bitcast i8* %88 to %struct._SERVER_REC*, !dbg !1924
  %90 = load i8*, i8** %8, align 8, !dbg !1925
  %91 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %89, i8* %90), !dbg !1926
  %92 = bitcast %struct._CHANNEL_REC* %91 to i8*, !dbg !1927
  %93 = call i8* @module_check_cast_module(i8* %92, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0)), !dbg !1928
  %94 = bitcast i8* %93 to %struct._CHANNEL_REC*, !dbg !1930
  %95 = bitcast %struct._CHANNEL_REC* %94 to i8*, !dbg !1931
  %96 = call i8* @chat_protocol_check_cast(i8* %95, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !1932
  %97 = bitcast i8* %96 to %struct._IRC_CHANNEL_REC*, !dbg !1934
  store %struct._IRC_CHANNEL_REC* %97, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !1935
  br label %98, !dbg !1936

; <label>:98:                                     ; preds = %85, %81, %76
  %99 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !1937
  %100 = icmp eq %struct._IRC_CHANNEL_REC* %99, null, !dbg !1939
  br i1 %100, label %109, label %101, !dbg !1940

; <label>:101:                                    ; preds = %98
  %102 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !1941
  %103 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %102, i32 0, i32 21, !dbg !1943
  %104 = load i16, i16* %103, align 8, !dbg !1943
  %105 = lshr i16 %104, 3, !dbg !1943
  %106 = and i16 %105, 1, !dbg !1943
  %107 = zext i16 %106 to i32, !dbg !1943
  %108 = icmp ne i32 %107, 0, !dbg !1941
  br i1 %108, label %113, label %109, !dbg !1944

; <label>:109:                                    ; preds = %101, %98
  %110 = load i8*, i8** %8, align 8, !dbg !1945
  %111 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1947
  %112 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1948
  call void @bans_ask_channel(i8* %110, %struct._IRC_SERVER_REC* %111, %struct._WI_ITEM_REC* %112), !dbg !1949
  br label %116, !dbg !1950

; <label>:113:                                    ; preds = %101
  %114 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !1951
  %115 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1953
  call void @bans_show_channel(%struct._IRC_CHANNEL_REC* %114, %struct._IRC_SERVER_REC* %115), !dbg !1954
  br label %116

; <label>:116:                                    ; preds = %113, %109
  call void @signal_stop(), !dbg !1955
  %117 = load i8*, i8** %10, align 8, !dbg !1956
  call void @cmd_params_free(i8* %117), !dbg !1957
  br label %118, !dbg !1958

; <label>:118:                                    ; preds = %116, %72, %52, %46, %37, %25
  ret void, !dbg !1959
}

; Function Attrs: nounwind uwtable
define internal void @cmd_ver(i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !1960 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1963, metadata !966), !dbg !1964
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1965, metadata !966), !dbg !1966
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !1967, metadata !966), !dbg !1968
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1969, metadata !966), !dbg !1970
  br label %8, !dbg !1971, !llvm.loop !1972

; <label>:8:                                      ; preds = %3
  %9 = load i8*, i8** %4, align 8, !dbg !1973
  %10 = icmp ne i8* %9, null, !dbg !1977
  br i1 %10, label %11, label %12, !dbg !1973

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !1978

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.cmd_ver, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0)), !dbg !1981
  br label %83, !dbg !1984

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !1985

; <label>:14:                                     ; preds = %13
  br label %15, !dbg !1987, !llvm.loop !1988

; <label>:15:                                     ; preds = %14
  %16 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1989
  %17 = icmp ne %struct._IRC_SERVER_REC* %16, null, !dbg !1993
  br i1 %17, label %18, label %30, !dbg !1994

; <label>:18:                                     ; preds = %15
  %19 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1995
  %20 = bitcast %struct._IRC_SERVER_REC* %19 to i8*, !dbg !1995
  %21 = call i8* @module_check_cast(i8* %20, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0)), !dbg !1997
  %22 = bitcast i8* %21 to %struct._SERVER_REC*, !dbg !1998
  %23 = bitcast %struct._SERVER_REC* %22 to i8*, !dbg !1999
  %24 = call i8* @chat_protocol_check_cast(i8* %23, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !2000
  %25 = bitcast i8* %24 to %struct._IRC_SERVER_REC*, !dbg !2002
  %26 = icmp ne %struct._IRC_SERVER_REC* %25, null, !dbg !2002
  br i1 %26, label %27, label %28, !dbg !2003

; <label>:27:                                     ; preds = %18
  br i1 false, label %29, label %30, !dbg !2004

; <label>:28:                                     ; preds = %18
  br i1 false, label %30, label %29, !dbg !2006

; <label>:29:                                     ; preds = %28, %27
  br label %83, !dbg !2008

; <label>:30:                                     ; preds = %28, %27, %15
  %31 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2010
  %32 = icmp eq %struct._IRC_SERVER_REC* %31, null, !dbg !2013
  br i1 %32, label %40, label %33, !dbg !2014

; <label>:33:                                     ; preds = %30
  %34 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2015
  %35 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %34, i32 0, i32 8, !dbg !2017
  %36 = load i8, i8* %35, align 8, !dbg !2017
  %37 = and i8 %36, 1, !dbg !2017
  %38 = zext i8 %37 to i32, !dbg !2017
  %39 = icmp ne i32 %38, 0, !dbg !2018
  br i1 %39, label %44, label %40, !dbg !2019

; <label>:40:                                     ; preds = %33, %30
  br label %41, !dbg !2020, !llvm.loop !2022

; <label>:41:                                     ; preds = %40
  %42 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !2024
  call void @signal_stop(), !dbg !2027
  br label %83, !dbg !2029
                                                  ; No predecessors!
  br label %44, !dbg !2030

; <label>:44:                                     ; preds = %43, %33
  br label %45, !dbg !2032

; <label>:45:                                     ; preds = %44
  %46 = load i8*, i8** %4, align 8, !dbg !2034
  %47 = load i8, i8* %46, align 1, !dbg !2036
  %48 = sext i8 %47 to i32, !dbg !2036
  %49 = icmp eq i32 %48, 0, !dbg !2037
  br i1 %49, label %50, label %62, !dbg !2038

; <label>:50:                                     ; preds = %45
  %51 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !2039
  %52 = bitcast %struct._WI_ITEM_REC* %51 to i8*, !dbg !2039
  %53 = call i8* @module_check_cast_module(i8* %52, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0)), !dbg !2041
  %54 = bitcast i8* %53 to %struct._QUERY_REC*, !dbg !2042
  %55 = icmp ne %struct._QUERY_REC* %54, null, !dbg !2042
  br i1 %55, label %56, label %57, !dbg !2043

; <label>:56:                                     ; preds = %50
  br i1 false, label %58, label %62, !dbg !2044

; <label>:57:                                     ; preds = %50
  br i1 false, label %62, label %58, !dbg !2046

; <label>:58:                                     ; preds = %57, %56
  br label %59, !dbg !2048, !llvm.loop !2049

; <label>:59:                                     ; preds = %58
  %60 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !2050
  call void @signal_stop(), !dbg !2053
  br label %83, !dbg !2055
                                                  ; No predecessors!
  br label %62, !dbg !2056

; <label>:62:                                     ; preds = %61, %57, %56, %45
  %63 = load i8*, i8** %4, align 8, !dbg !2058
  %64 = load i8, i8* %63, align 1, !dbg !2059
  %65 = sext i8 %64 to i32, !dbg !2059
  %66 = icmp eq i32 %65, 0, !dbg !2060
  br i1 %66, label %67, label %73, !dbg !2059

; <label>:67:                                     ; preds = %62
  %68 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !2061
  %69 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %68, i32 0, i32 11, !dbg !2062
  %70 = load i8* (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)** %69, align 8, !dbg !2062
  %71 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !2063
  %72 = call i8* %70(%struct._WI_ITEM_REC* %71), !dbg !2064
  br label %75, !dbg !2065

; <label>:73:                                     ; preds = %62
  %74 = load i8*, i8** %4, align 8, !dbg !2067
  br label %75, !dbg !2068

; <label>:75:                                     ; preds = %73, %67
  %76 = phi i8* [ %72, %67 ], [ %74, %73 ], !dbg !2070
  %77 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i8* %76), !dbg !2071
  store i8* %77, i8** %7, align 8, !dbg !2072
  %78 = load i8*, i8** %7, align 8, !dbg !2073
  %79 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2074
  %80 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !2075
  %81 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0), i32 3, i8* %78, %struct._IRC_SERVER_REC* %79, %struct._WI_ITEM_REC* %80), !dbg !2076
  %82 = load i8*, i8** %7, align 8, !dbg !2077
  call void @g_free(i8* %82), !dbg !2078
  br label %83, !dbg !2079

; <label>:83:                                     ; preds = %75, %59, %41, %29, %12
  ret void, !dbg !2080
}

; Function Attrs: nounwind uwtable
define internal void @cmd_topic(i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !2081 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca %struct._CHANNEL_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2084, metadata !966), !dbg !2085
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !2086, metadata !966), !dbg !2087
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !2088, metadata !966), !dbg !2089
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %7, metadata !2090, metadata !966), !dbg !2091
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2092, metadata !966), !dbg !2093
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2094, metadata !966), !dbg !2095
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2096, metadata !966), !dbg !2097
  br label %11, !dbg !2098, !llvm.loop !2099

; <label>:11:                                     ; preds = %3
  %12 = load i8*, i8** %4, align 8, !dbg !2100
  %13 = icmp ne i8* %12, null, !dbg !2104
  br i1 %13, label %14, label %15, !dbg !2100

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !2105

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.cmd_topic, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0)), !dbg !2108
  br label %101, !dbg !2111

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !2112

; <label>:17:                                     ; preds = %16
  %18 = load i8*, i8** %4, align 8, !dbg !2114
  %19 = load i8, i8* %18, align 1, !dbg !2115
  %20 = sext i8 %19 to i32, !dbg !2115
  %21 = icmp ne i32 %20, 0, !dbg !2116
  br i1 %21, label %22, label %26, !dbg !2115

; <label>:22:                                     ; preds = %17
  %23 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !2117
  %24 = load i8*, i8** %4, align 8, !dbg !2119
  %25 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %23, i8* %24), !dbg !2120
  br label %31, !dbg !2121

; <label>:26:                                     ; preds = %17
  %27 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !2122
  %28 = bitcast %struct._WI_ITEM_REC* %27 to i8*, !dbg !2122
  %29 = call i8* @module_check_cast_module(i8* %28, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0)), !dbg !2124
  %30 = bitcast i8* %29 to %struct._CHANNEL_REC*, !dbg !2125
  br label %31, !dbg !2126

; <label>:31:                                     ; preds = %26, %22
  %32 = phi %struct._CHANNEL_REC* [ %25, %22 ], [ %30, %26 ], !dbg !2127
  store %struct._CHANNEL_REC* %32, %struct._CHANNEL_REC** %7, align 8, !dbg !2129
  %33 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %7, align 8, !dbg !2130
  %34 = icmp eq %struct._CHANNEL_REC* %33, null, !dbg !2132
  br i1 %34, label %35, label %36, !dbg !2133

; <label>:35:                                     ; preds = %31
  br label %101, !dbg !2134

; <label>:36:                                     ; preds = %31
  %37 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !2136
  %38 = bitcast %struct._SERVER_REC* %37 to i8*, !dbg !2136
  %39 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %7, align 8, !dbg !2137
  %40 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %39, i32 0, i32 5, !dbg !2138
  %41 = load i8*, i8** %40, align 8, !dbg !2138
  %42 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %7, align 8, !dbg !2139
  %43 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %42, i32 0, i32 12, !dbg !2140
  %44 = load i8*, i8** %43, align 8, !dbg !2140
  %45 = icmp eq i8* %44, null, !dbg !2141
  %46 = select i1 %45, i32 42, i32 41, !dbg !2139
  %47 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %7, align 8, !dbg !2142
  %48 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %47, i32 0, i32 5, !dbg !2143
  %49 = load i8*, i8** %48, align 8, !dbg !2143
  %50 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %7, align 8, !dbg !2144
  %51 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %50, i32 0, i32 12, !dbg !2145
  %52 = load i8*, i8** %51, align 8, !dbg !2145
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %38, i8* %41, i32 1, i32 %46, i8* %49, i8* %52), !dbg !2146
  %53 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %7, align 8, !dbg !2147
  %54 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %53, i32 0, i32 14, !dbg !2149
  %55 = load i64, i64* %54, align 8, !dbg !2149
  %56 = icmp sgt i64 %55, 0, !dbg !2150
  br i1 %56, label %57, label %100, !dbg !2151

; <label>:57:                                     ; preds = %36
  %58 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %7, align 8, !dbg !2152
  %59 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %58, i32 0, i32 13, !dbg !2154
  %60 = load i8*, i8** %59, align 8, !dbg !2154
  %61 = call i8* @strchr(i8* %60, i32 33) #5, !dbg !2155
  store i8* %61, i8** %10, align 8, !dbg !2156
  %62 = load i8*, i8** %10, align 8, !dbg !2157
  %63 = icmp eq i8* %62, null, !dbg !2159
  br i1 %63, label %64, label %69, !dbg !2160

; <label>:64:                                     ; preds = %57
  %65 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %7, align 8, !dbg !2161
  %66 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %65, i32 0, i32 13, !dbg !2163
  %67 = load i8*, i8** %66, align 8, !dbg !2163
  %68 = call noalias i8* @g_strdup(i8* %67), !dbg !2164
  store i8* %68, i8** %9, align 8, !dbg !2165
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0), i8** %10, align 8, !dbg !2166
  br label %85, !dbg !2167

; <label>:69:                                     ; preds = %57
  %70 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %7, align 8, !dbg !2168
  %71 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %70, i32 0, i32 13, !dbg !2170
  %72 = load i8*, i8** %71, align 8, !dbg !2170
  %73 = load i8*, i8** %10, align 8, !dbg !2171
  %74 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %7, align 8, !dbg !2172
  %75 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %74, i32 0, i32 13, !dbg !2173
  %76 = load i8*, i8** %75, align 8, !dbg !2173
  %77 = ptrtoint i8* %73 to i64, !dbg !2174
  %78 = ptrtoint i8* %76 to i64, !dbg !2174
  %79 = sub i64 %77, %78, !dbg !2174
  %80 = trunc i64 %79 to i32, !dbg !2175
  %81 = sext i32 %80 to i64, !dbg !2175
  %82 = call noalias i8* @g_strndup(i8* %72, i64 %81), !dbg !2176
  store i8* %82, i8** %9, align 8, !dbg !2177
  %83 = load i8*, i8** %10, align 8, !dbg !2178
  %84 = getelementptr inbounds i8, i8* %83, i32 1, !dbg !2178
  store i8* %84, i8** %10, align 8, !dbg !2178
  br label %85

; <label>:85:                                     ; preds = %69, %64
  %86 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %7, align 8, !dbg !2179
  %87 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %86, i32 0, i32 14, !dbg !2180
  %88 = load i64, i64* %87, align 8, !dbg !2180
  %89 = call i8* @my_asctime(i64 %88), !dbg !2181
  store i8* %89, i8** %8, align 8, !dbg !2182
  %90 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !2183
  %91 = bitcast %struct._SERVER_REC* %90 to i8*, !dbg !2183
  %92 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %7, align 8, !dbg !2184
  %93 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %92, i32 0, i32 5, !dbg !2185
  %94 = load i8*, i8** %93, align 8, !dbg !2185
  %95 = load i8*, i8** %9, align 8, !dbg !2186
  %96 = load i8*, i8** %8, align 8, !dbg !2187
  %97 = load i8*, i8** %10, align 8, !dbg !2188
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %91, i8* %94, i32 1, i32 43, i8* %95, i8* %96, i8* %97), !dbg !2189
  %98 = load i8*, i8** %8, align 8, !dbg !2190
  call void @g_free(i8* %98), !dbg !2191
  %99 = load i8*, i8** %9, align 8, !dbg !2192
  call void @g_free(i8* %99), !dbg !2193
  br label %100, !dbg !2194

; <label>:100:                                    ; preds = %85, %36
  call void @signal_stop(), !dbg !2195
  br label %101, !dbg !2196

; <label>:101:                                    ; preds = %100, %35, %15
  ret void, !dbg !2197
}

; Function Attrs: nounwind uwtable
define internal void @cmd_ts(i8*) #0 !dbg !2198 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._CHANNEL_REC*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2201, metadata !966), !dbg !2202
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !2203, metadata !966), !dbg !2204
  br label %5, !dbg !2205, !llvm.loop !2206

; <label>:5:                                      ; preds = %1
  %6 = load i8*, i8** %2, align 8, !dbg !2207
  %7 = icmp ne i8* %6, null, !dbg !2211
  br i1 %7, label %8, label %9, !dbg !2207

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !2212

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @__func__.cmd_ts, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0)), !dbg !2215
  br label %39, !dbg !2218

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !2219

; <label>:11:                                     ; preds = %10
  %12 = load %struct._GSList*, %struct._GSList** @channels, align 8, !dbg !2221
  store %struct._GSList* %12, %struct._GSList** %3, align 8, !dbg !2223
  br label %13, !dbg !2224

; <label>:13:                                     ; preds = %35, %11
  %14 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !2225
  %15 = icmp ne %struct._GSList* %14, null, !dbg !2228
  br i1 %15, label %16, label %39, !dbg !2229

; <label>:16:                                     ; preds = %13
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %4, metadata !2230, metadata !966), !dbg !2232
  %17 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !2233
  %18 = getelementptr inbounds %struct._GSList, %struct._GSList* %17, i32 0, i32 0, !dbg !2234
  %19 = load i8*, i8** %18, align 8, !dbg !2234
  %20 = bitcast i8* %19 to %struct._CHANNEL_REC*, !dbg !2233
  store %struct._CHANNEL_REC* %20, %struct._CHANNEL_REC** %4, align 8, !dbg !2232
  %21 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %4, align 8, !dbg !2235
  %22 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %21, i32 0, i32 5, !dbg !2236
  %23 = load i8*, i8** %22, align 8, !dbg !2236
  %24 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %4, align 8, !dbg !2237
  %25 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %24, i32 0, i32 12, !dbg !2238
  %26 = load i8*, i8** %25, align 8, !dbg !2238
  %27 = icmp eq i8* %26, null, !dbg !2239
  br i1 %27, label %28, label %29, !dbg !2237

; <label>:28:                                     ; preds = %16
  br label %33, !dbg !2240

; <label>:29:                                     ; preds = %16
  %30 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %4, align 8, !dbg !2242
  %31 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %30, i32 0, i32 12, !dbg !2244
  %32 = load i8*, i8** %31, align 8, !dbg !2244
  br label %33, !dbg !2245

; <label>:33:                                     ; preds = %29, %28
  %34 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0), %28 ], [ %32, %29 ], !dbg !2246
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 41, i8* %23, i8* %34), !dbg !2248
  br label %35, !dbg !2249

; <label>:35:                                     ; preds = %33
  %36 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !2250
  %37 = getelementptr inbounds %struct._GSList, %struct._GSList* %36, i32 0, i32 1, !dbg !2252
  %38 = load %struct._GSList*, %struct._GSList** %37, align 8, !dbg !2252
  store %struct._GSList* %38, %struct._GSList** %3, align 8, !dbg !2253
  br label %13, !dbg !2254, !llvm.loop !2255

; <label>:39:                                     ; preds = %9, %13
  ret void, !dbg !2257
}

; Function Attrs: nounwind uwtable
define internal void @cmd_oper(i8*, %struct._IRC_SERVER_REC*) #0 !dbg !2258 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.OPER_PASS_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2259, metadata !966), !dbg !2260
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !2261, metadata !966), !dbg !2262
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2263, metadata !966), !dbg !2264
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2265, metadata !966), !dbg !2266
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2267, metadata !966), !dbg !2268
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2269, metadata !966), !dbg !2270
  br label %10, !dbg !2271, !llvm.loop !2272

; <label>:10:                                     ; preds = %2
  %11 = load i8*, i8** %3, align 8, !dbg !2273
  %12 = icmp ne i8* %11, null, !dbg !2277
  br i1 %12, label %13, label %14, !dbg !2273

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !2278

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.cmd_oper, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0)), !dbg !2281
  br label %81, !dbg !2284

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !2285

; <label>:16:                                     ; preds = %15
  %17 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2287
  %18 = bitcast %struct._IRC_SERVER_REC* %17 to i8*, !dbg !2287
  %19 = call i8* @module_check_cast(i8* %18, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0)), !dbg !2289
  %20 = bitcast i8* %19 to %struct._SERVER_REC*, !dbg !2290
  %21 = bitcast %struct._SERVER_REC* %20 to i8*, !dbg !2291
  %22 = call i8* @chat_protocol_check_cast(i8* %21, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !2292
  %23 = bitcast i8* %22 to %struct._IRC_SERVER_REC*, !dbg !2294
  %24 = icmp ne %struct._IRC_SERVER_REC* %23, null, !dbg !2294
  br i1 %24, label %25, label %26, !dbg !2295

; <label>:25:                                     ; preds = %16
  br i1 false, label %34, label %27, !dbg !2296

; <label>:26:                                     ; preds = %16
  br i1 false, label %27, label %34, !dbg !2298

; <label>:27:                                     ; preds = %26, %25
  %28 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2300
  %29 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %28, i32 0, i32 8, !dbg !2302
  %30 = load i8, i8* %29, align 8, !dbg !2302
  %31 = and i8 %30, 1, !dbg !2302
  %32 = zext i8 %31 to i32, !dbg !2302
  %33 = icmp ne i32 %32, 0, !dbg !2300
  br i1 %33, label %38, label %34, !dbg !2303

; <label>:34:                                     ; preds = %27, %26, %25
  br label %35, !dbg !2304, !llvm.loop !2305

; <label>:35:                                     ; preds = %34
  %36 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !2306
  call void @signal_stop(), !dbg !2309
  br label %81, !dbg !2311
                                                  ; No predecessors!
  br label %38, !dbg !2312

; <label>:38:                                     ; preds = %37, %27
  %39 = load i8*, i8** %3, align 8, !dbg !2314
  %40 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %39, i8** %8, i32 2, i8** %5, i8** %6), !dbg !2316
  %41 = icmp ne i32 %40, 0, !dbg !2316
  br i1 %41, label %43, label %42, !dbg !2317

; <label>:42:                                     ; preds = %38
  br label %81, !dbg !2318

; <label>:43:                                     ; preds = %38
  %44 = load i8*, i8** %6, align 8, !dbg !2319
  %45 = load i8, i8* %44, align 1, !dbg !2321
  %46 = sext i8 %45 to i32, !dbg !2321
  %47 = icmp eq i32 %46, 0, !dbg !2322
  br i1 %47, label %48, label %79, !dbg !2323

; <label>:48:                                     ; preds = %43
  call void @llvm.dbg.declare(metadata %struct.OPER_PASS_REC** %9, metadata !2324, metadata !966), !dbg !2326
  %49 = call noalias i8* @g_malloc_n(i64 1, i64 16), !dbg !2327
  %50 = bitcast i8* %49 to %struct.OPER_PASS_REC*, !dbg !2328
  store %struct.OPER_PASS_REC* %50, %struct.OPER_PASS_REC** %9, align 8, !dbg !2329
  %51 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2330
  %52 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %51, i32 0, i32 6, !dbg !2331
  %53 = load i8*, i8** %52, align 8, !dbg !2331
  %54 = call noalias i8* @g_strdup(i8* %53), !dbg !2332
  %55 = load %struct.OPER_PASS_REC*, %struct.OPER_PASS_REC** %9, align 8, !dbg !2333
  %56 = getelementptr inbounds %struct.OPER_PASS_REC, %struct.OPER_PASS_REC* %55, i32 0, i32 0, !dbg !2334
  store i8* %54, i8** %56, align 8, !dbg !2335
  %57 = load i8*, i8** %5, align 8, !dbg !2336
  %58 = load i8, i8* %57, align 1, !dbg !2337
  %59 = sext i8 %58 to i32, !dbg !2337
  %60 = icmp ne i32 %59, 0, !dbg !2338
  br i1 %60, label %61, label %63, !dbg !2337

; <label>:61:                                     ; preds = %48
  %62 = load i8*, i8** %5, align 8, !dbg !2339
  br label %67, !dbg !2341

; <label>:63:                                     ; preds = %48
  %64 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2342
  %65 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %64, i32 0, i32 7, !dbg !2344
  %66 = load i8*, i8** %65, align 8, !dbg !2344
  br label %67, !dbg !2345

; <label>:67:                                     ; preds = %63, %61
  %68 = phi i8* [ %62, %61 ], [ %66, %63 ], !dbg !2346
  %69 = call noalias i8* @g_strdup(i8* %68), !dbg !2348
  %70 = load %struct.OPER_PASS_REC*, %struct.OPER_PASS_REC** %9, align 8, !dbg !2349
  %71 = getelementptr inbounds %struct.OPER_PASS_REC, %struct.OPER_PASS_REC* %70, i32 0, i32 1, !dbg !2350
  store i8* %69, i8** %71, align 8, !dbg !2351
  %72 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2352
  %73 = bitcast %struct._IRC_SERVER_REC* %72 to i8*, !dbg !2352
  %74 = call i8* (i8*, %struct._WINDOW_REC*, i8*, i8*, i32, ...) @format_get_text(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), %struct._WINDOW_REC* null, i8* %73, i8* null, i32 121), !dbg !2353
  store i8* %74, i8** %7, align 8, !dbg !2354
  %75 = load i8*, i8** %7, align 8, !dbg !2355
  %76 = load %struct.OPER_PASS_REC*, %struct.OPER_PASS_REC** %9, align 8, !dbg !2356
  %77 = bitcast %struct.OPER_PASS_REC* %76 to i8*, !dbg !2356
  call void @keyboard_entry_redirect(void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct.OPER_PASS_REC*)* @cmd_oper_got_pass to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* %75, i32 2, i8* %77), !dbg !2357
  %78 = load i8*, i8** %7, align 8, !dbg !2358
  call void @g_free(i8* %78), !dbg !2359
  call void @signal_stop(), !dbg !2360
  br label %79, !dbg !2361

; <label>:79:                                     ; preds = %67, %43
  %80 = load i8*, i8** %8, align 8, !dbg !2362
  call void @cmd_params_free(i8* %80), !dbg !2363
  br label %81, !dbg !2364

; <label>:81:                                     ; preds = %79, %42, %35, %14
  ret void, !dbg !2365
}

; Function Attrs: nounwind uwtable
define internal void @cmd_sethost(i8*, %struct._IRC_SERVER_REC*) #0 !dbg !2367 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca %struct._CHANNEL_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2368, metadata !966), !dbg !2369
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !2370, metadata !966), !dbg !2371
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !2372, metadata !966), !dbg !2373
  br label %7, !dbg !2374, !llvm.loop !2375

; <label>:7:                                      ; preds = %2
  %8 = load i8*, i8** %3, align 8, !dbg !2376
  %9 = icmp ne i8* %8, null, !dbg !2380
  br i1 %9, label %10, label %11, !dbg !2376

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !2381

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.cmd_sethost, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i32 0, i32 0)), !dbg !2384
  br label %66, !dbg !2387

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !2388

; <label>:13:                                     ; preds = %12
  %14 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2390
  %15 = bitcast %struct._IRC_SERVER_REC* %14 to i8*, !dbg !2390
  %16 = call i8* @module_check_cast(i8* %15, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0)), !dbg !2392
  %17 = bitcast i8* %16 to %struct._SERVER_REC*, !dbg !2393
  %18 = bitcast %struct._SERVER_REC* %17 to i8*, !dbg !2394
  %19 = call i8* @chat_protocol_check_cast(i8* %18, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !2395
  %20 = bitcast i8* %19 to %struct._IRC_SERVER_REC*, !dbg !2397
  %21 = icmp ne %struct._IRC_SERVER_REC* %20, null, !dbg !2397
  br i1 %21, label %22, label %23, !dbg !2398

; <label>:22:                                     ; preds = %13
  br i1 false, label %31, label %24, !dbg !2399

; <label>:23:                                     ; preds = %13
  br i1 false, label %24, label %31, !dbg !2401

; <label>:24:                                     ; preds = %23, %22
  %25 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2403
  %26 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %25, i32 0, i32 8, !dbg !2405
  %27 = load i8, i8* %26, align 8, !dbg !2405
  %28 = and i8 %27, 1, !dbg !2405
  %29 = zext i8 %28 to i32, !dbg !2405
  %30 = icmp ne i32 %29, 0, !dbg !2403
  br i1 %30, label %35, label %31, !dbg !2406

; <label>:31:                                     ; preds = %24, %23, %22
  br label %32, !dbg !2407, !llvm.loop !2408

; <label>:32:                                     ; preds = %31
  %33 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !2409
  call void @signal_stop(), !dbg !2412
  br label %66, !dbg !2414
                                                  ; No predecessors!
  br label %35, !dbg !2415

; <label>:35:                                     ; preds = %34, %24
  %36 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2417
  %37 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %36, i32 0, i32 23, !dbg !2419
  %38 = load %struct._GSList*, %struct._GSList** %37, align 8, !dbg !2419
  store %struct._GSList* %38, %struct._GSList** %5, align 8, !dbg !2420
  br label %39, !dbg !2421

; <label>:39:                                     ; preds = %59, %35
  %40 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2422
  %41 = icmp ne %struct._GSList* %40, null, !dbg !2425
  br i1 %41, label %42, label %63, !dbg !2426

; <label>:42:                                     ; preds = %39
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %6, metadata !2427, metadata !966), !dbg !2429
  %43 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2430
  %44 = getelementptr inbounds %struct._GSList, %struct._GSList* %43, i32 0, i32 0, !dbg !2431
  %45 = load i8*, i8** %44, align 8, !dbg !2431
  %46 = bitcast i8* %45 to %struct._CHANNEL_REC*, !dbg !2430
  store %struct._CHANNEL_REC* %46, %struct._CHANNEL_REC** %6, align 8, !dbg !2429
  %47 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %6, align 8, !dbg !2432
  %48 = bitcast %struct._CHANNEL_REC* %47 to %struct._WI_ITEM_REC*, !dbg !2433
  %49 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %48, i32 0, i32 3, !dbg !2433
  %50 = load i8*, i8** %49, align 8, !dbg !2433
  %51 = bitcast i8* %50 to %struct._WINDOW_REC*, !dbg !2434
  %52 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2435
  %53 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %52, i32 0, i32 6, !dbg !2436
  %54 = load i8*, i8** %53, align 8, !dbg !2436
  %55 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %6, align 8, !dbg !2437
  %56 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %55, i32 0, i32 5, !dbg !2438
  %57 = load i8*, i8** %56, align 8, !dbg !2438
  %58 = call %struct.WINDOW_BIND_REC* @window_bind_add(%struct._WINDOW_REC* %51, i8* %54, i8* %57), !dbg !2439
  br label %59, !dbg !2440

; <label>:59:                                     ; preds = %42
  %60 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2441
  %61 = getelementptr inbounds %struct._GSList, %struct._GSList* %60, i32 0, i32 1, !dbg !2443
  %62 = load %struct._GSList*, %struct._GSList** %61, align 8, !dbg !2443
  store %struct._GSList* %62, %struct._GSList** %5, align 8, !dbg !2444
  br label %39, !dbg !2445, !llvm.loop !2446

; <label>:63:                                     ; preds = %39
  %64 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2448
  %65 = load i8*, i8** %3, align 8, !dbg !2449
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0), i8* %65), !dbg !2450
  br label %66, !dbg !2451

; <label>:66:                                     ; preds = %63, %32, %11
  ret void, !dbg !2452
}

; Function Attrs: nounwind uwtable
define void @fe_irc_commands_deinit() #0 !dbg !2454 {
  call void @command_unbind_full(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_me to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2455
  call void @command_unbind_full(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @cmd_action to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2456
  call void @command_unbind_full(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_notice to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2457
  call void @command_unbind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_ctcp to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2458
  call void @command_unbind_full(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_nctcp to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2459
  call void @command_unbind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_wall to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2460
  call void @command_unbind_full(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_ban to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2461
  call void @command_unbind_full(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_ver to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2462
  call void @command_unbind_full(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_topic to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2463
  call void @command_unbind_full(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_ts to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2464
  call void @command_unbind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @cmd_oper to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2465
  call void @command_unbind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @cmd_sethost to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2466
  ret void, !dbg !2467
}

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i8* @chat_protocol_check_cast(i8*, i32, i8*) #1

declare i8* @module_check_cast(i8*, i32, i8*) #1

declare i32 @signal_emit(i8*, i32, ...) #1

declare void @signal_stop() #1

declare i8* @module_check_cast_module(i8*, i32, i8*, i8*) #1

declare i8** @irc_server_split_action(%struct._IRC_SERVER_REC*, i8*, i8*) #1

declare void @irc_server_send_action(%struct._IRC_SERVER_REC*, i8*, i8*) #1

declare void @g_strfreev(i8**) #1

declare i32 @cmd_get_params(i8*, i8**, i32, ...) #1

declare void @cmd_params_free(i8*) #1

declare %struct._SERVER_REC* @cmd_options_get_server(i8*, %struct._GHashTable*, %struct._SERVER_REC*) #1

declare i32 @g_strcmp0(i8*, i8*) #1

declare i8* @ascii_strup(i8*) #1

declare %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @bans_ask_channel(i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !2468 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca %struct._GString*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2469, metadata !966), !dbg !2470
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !2471, metadata !966), !dbg !2472
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !2473, metadata !966), !dbg !2474
  call void @llvm.dbg.declare(metadata %struct._GString** %7, metadata !2475, metadata !966), !dbg !2476
  %8 = call %struct._GString* @g_string_new(i8* null), !dbg !2477
  store %struct._GString* %8, %struct._GString** %7, align 8, !dbg !2478
  %9 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !2479
  %10 = load i8*, i8** %4, align 8, !dbg !2480
  call void (%struct._GString*, i8*, ...) @g_string_printf(%struct._GString* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8* %10), !dbg !2481
  %11 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !2482
  %12 = getelementptr inbounds %struct._GString, %struct._GString* %11, i32 0, i32 0, !dbg !2483
  %13 = load i8*, i8** %12, align 8, !dbg !2483
  %14 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2484
  %15 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !2485
  %16 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i32 3, i8* %13, %struct._IRC_SERVER_REC* %14, %struct._WI_ITEM_REC* %15), !dbg !2486
  %17 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2487
  %18 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %17, i32 0, i32 45, !dbg !2489
  %19 = load i16, i16* %18, align 4, !dbg !2489
  %20 = lshr i16 %19, 2, !dbg !2489
  %21 = and i16 %20, 1, !dbg !2489
  %22 = zext i16 %21 to i32, !dbg !2489
  %23 = icmp ne i32 %22, 0, !dbg !2487
  br i1 %23, label %24, label %33, !dbg !2490

; <label>:24:                                     ; preds = %3
  %25 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !2491
  %26 = load i8*, i8** %4, align 8, !dbg !2493
  call void (%struct._GString*, i8*, ...) @g_string_printf(%struct._GString* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i8* %26), !dbg !2494
  %27 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !2495
  %28 = getelementptr inbounds %struct._GString, %struct._GString* %27, i32 0, i32 0, !dbg !2496
  %29 = load i8*, i8** %28, align 8, !dbg !2496
  %30 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2497
  %31 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !2498
  %32 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i32 3, i8* %29, %struct._IRC_SERVER_REC* %30, %struct._WI_ITEM_REC* %31), !dbg !2499
  br label %33, !dbg !2500

; <label>:33:                                     ; preds = %24, %3
  %34 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !2501
  %35 = call i8* @g_string_free(%struct._GString* %34, i32 1), !dbg !2502
  ret void, !dbg !2503
}

; Function Attrs: nounwind uwtable
define internal void @bans_show_channel(%struct._IRC_CHANNEL_REC*, %struct._IRC_SERVER_REC*) #0 !dbg !2504 {
  %3 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.BAN_REC*, align 8
  store %struct._IRC_CHANNEL_REC* %0, %struct._IRC_CHANNEL_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %3, metadata !2507, metadata !966), !dbg !2508
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !2509, metadata !966), !dbg !2510
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !2511, metadata !966), !dbg !2512
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2513, metadata !966), !dbg !2514
  %8 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %3, align 8, !dbg !2515
  %9 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %8, i32 0, i32 23, !dbg !2517
  %10 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !2517
  %11 = icmp eq %struct._GSList* %10, null, !dbg !2518
  br i1 %11, label %12, label %21, !dbg !2519

; <label>:12:                                     ; preds = %2
  %13 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2520
  %14 = bitcast %struct._IRC_SERVER_REC* %13 to i8*, !dbg !2520
  %15 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %3, align 8, !dbg !2522
  %16 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %15, i32 0, i32 5, !dbg !2523
  %17 = load i8*, i8** %16, align 8, !dbg !2523
  %18 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %3, align 8, !dbg !2524
  %19 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %18, i32 0, i32 5, !dbg !2525
  %20 = load i8*, i8** %19, align 8, !dbg !2525
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %14, i8* %17, i32 262144, i32 48, i8* %20), !dbg !2526
  br label %74, !dbg !2527

; <label>:21:                                     ; preds = %2
  store i32 1, i32* %6, align 4, !dbg !2528
  %22 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %3, align 8, !dbg !2529
  %23 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %22, i32 0, i32 23, !dbg !2531
  %24 = load %struct._GSList*, %struct._GSList** %23, align 8, !dbg !2531
  store %struct._GSList* %24, %struct._GSList** %5, align 8, !dbg !2532
  br label %25, !dbg !2533

; <label>:25:                                     ; preds = %70, %21
  %26 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2534
  %27 = icmp ne %struct._GSList* %26, null, !dbg !2537
  br i1 %27, label %28, label %74, !dbg !2538

; <label>:28:                                     ; preds = %25
  call void @llvm.dbg.declare(metadata %struct.BAN_REC** %7, metadata !2539, metadata !966), !dbg !2549
  %29 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2550
  %30 = getelementptr inbounds %struct._GSList, %struct._GSList* %29, i32 0, i32 0, !dbg !2551
  %31 = load i8*, i8** %30, align 8, !dbg !2551
  %32 = bitcast i8* %31 to %struct.BAN_REC*, !dbg !2550
  store %struct.BAN_REC* %32, %struct.BAN_REC** %7, align 8, !dbg !2549
  %33 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2552
  %34 = bitcast %struct._IRC_SERVER_REC* %33 to i8*, !dbg !2552
  %35 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %3, align 8, !dbg !2553
  %36 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %35, i32 0, i32 5, !dbg !2554
  %37 = load i8*, i8** %36, align 8, !dbg !2554
  %38 = load %struct.BAN_REC*, %struct.BAN_REC** %7, align 8, !dbg !2555
  %39 = getelementptr inbounds %struct.BAN_REC, %struct.BAN_REC* %38, i32 0, i32 1, !dbg !2556
  %40 = load i8*, i8** %39, align 8, !dbg !2556
  %41 = icmp eq i8* %40, null, !dbg !2557
  br i1 %41, label %49, label %42, !dbg !2558

; <label>:42:                                     ; preds = %28
  %43 = load %struct.BAN_REC*, %struct.BAN_REC** %7, align 8, !dbg !2559
  %44 = getelementptr inbounds %struct.BAN_REC, %struct.BAN_REC* %43, i32 0, i32 1, !dbg !2561
  %45 = load i8*, i8** %44, align 8, !dbg !2561
  %46 = load i8, i8* %45, align 1, !dbg !2562
  %47 = sext i8 %46 to i32, !dbg !2562
  %48 = icmp eq i32 %47, 0, !dbg !2563
  br label %49, !dbg !2564

; <label>:49:                                     ; preds = %42, %28
  %50 = phi i1 [ true, %28 ], [ %48, %42 ]
  %51 = select i1 %50, i32 49, i32 50, !dbg !2565
  %52 = load i32, i32* %6, align 4, !dbg !2567
  %53 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %3, align 8, !dbg !2568
  %54 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %53, i32 0, i32 5, !dbg !2569
  %55 = load i8*, i8** %54, align 8, !dbg !2569
  %56 = load %struct.BAN_REC*, %struct.BAN_REC** %7, align 8, !dbg !2570
  %57 = getelementptr inbounds %struct.BAN_REC, %struct.BAN_REC* %56, i32 0, i32 0, !dbg !2571
  %58 = load i8*, i8** %57, align 8, !dbg !2571
  %59 = load %struct.BAN_REC*, %struct.BAN_REC** %7, align 8, !dbg !2572
  %60 = getelementptr inbounds %struct.BAN_REC, %struct.BAN_REC* %59, i32 0, i32 1, !dbg !2573
  %61 = load i8*, i8** %60, align 8, !dbg !2573
  %62 = call i64 @time(i64* null) #6, !dbg !2574
  %63 = load %struct.BAN_REC*, %struct.BAN_REC** %7, align 8, !dbg !2575
  %64 = getelementptr inbounds %struct.BAN_REC, %struct.BAN_REC* %63, i32 0, i32 2, !dbg !2576
  %65 = load i64, i64* %64, align 8, !dbg !2576
  %66 = sub nsw i64 %62, %65, !dbg !2577
  %67 = trunc i64 %66 to i32, !dbg !2578
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %34, i8* %37, i32 1, i32 %51, i32 %52, i8* %55, i8* %58, i8* %61, i32 %67), !dbg !2579
  %68 = load i32, i32* %6, align 4, !dbg !2581
  %69 = add nsw i32 %68, 1, !dbg !2581
  store i32 %69, i32* %6, align 4, !dbg !2581
  br label %70, !dbg !2582

; <label>:70:                                     ; preds = %49
  %71 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2583
  %72 = getelementptr inbounds %struct._GSList, %struct._GSList* %71, i32 0, i32 1, !dbg !2585
  %73 = load %struct._GSList*, %struct._GSList** %72, align 8, !dbg !2585
  store %struct._GSList* %73, %struct._GSList** %5, align 8, !dbg !2586
  br label %25, !dbg !2587, !llvm.loop !2588

; <label>:74:                                     ; preds = %12, %25
  ret void, !dbg !2590
}

declare %struct._GString* @g_string_new(i8*) #1

declare void @g_string_printf(%struct._GString*, i8*, ...) #1

declare i8* @g_string_free(%struct._GString*, i32) #1

declare void @printformat_module(i8*, i8*, i8*, i32, i32, ...) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #3

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

declare noalias i8* @g_strdup(i8*) #1

declare noalias i8* @g_strndup(i8*, i64) #1

declare i8* @my_asctime(i64) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

declare i8* @format_get_text(i8*, %struct._WINDOW_REC*, i8*, i8*, i32, ...) #1

declare void @keyboard_entry_redirect(void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @cmd_oper_got_pass(i8*, %struct.OPER_PASS_REC*) #0 !dbg !2591 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.OPER_PASS_REC*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2594, metadata !966), !dbg !2595
  store %struct.OPER_PASS_REC* %1, %struct.OPER_PASS_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.OPER_PASS_REC** %4, metadata !2596, metadata !966), !dbg !2597
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !2598, metadata !966), !dbg !2599
  %6 = load %struct.OPER_PASS_REC*, %struct.OPER_PASS_REC** %4, align 8, !dbg !2600
  %7 = getelementptr inbounds %struct.OPER_PASS_REC, %struct.OPER_PASS_REC* %6, i32 0, i32 0, !dbg !2601
  %8 = load i8*, i8** %7, align 8, !dbg !2601
  %9 = call %struct._SERVER_REC* @server_find_tag(i8* %8), !dbg !2602
  store %struct._SERVER_REC* %9, %struct._SERVER_REC** %5, align 8, !dbg !2599
  %10 = load i8*, i8** %3, align 8, !dbg !2603
  %11 = load i8, i8* %10, align 1, !dbg !2605
  %12 = sext i8 %11 to i32, !dbg !2605
  %13 = icmp ne i32 %12, 0, !dbg !2606
  br i1 %13, label %14, label %32, !dbg !2607

; <label>:14:                                     ; preds = %2
  %15 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !2608
  %16 = bitcast %struct._SERVER_REC* %15 to i8*, !dbg !2608
  %17 = call i8* @module_check_cast(i8* %16, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0)), !dbg !2610
  %18 = bitcast i8* %17 to %struct._SERVER_REC*, !dbg !2611
  %19 = bitcast %struct._SERVER_REC* %18 to i8*, !dbg !2612
  %20 = call i8* @chat_protocol_check_cast(i8* %19, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !2613
  %21 = bitcast i8* %20 to %struct._IRC_SERVER_REC*, !dbg !2615
  %22 = icmp ne %struct._IRC_SERVER_REC* %21, null, !dbg !2615
  br i1 %22, label %23, label %24, !dbg !2616

; <label>:23:                                     ; preds = %14
  br i1 false, label %32, label %25, !dbg !2617

; <label>:24:                                     ; preds = %14
  br i1 false, label %25, label %32, !dbg !2619

; <label>:25:                                     ; preds = %24, %23
  %26 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !2621
  %27 = bitcast %struct._SERVER_REC* %26 to %struct._IRC_SERVER_REC*, !dbg !2622
  %28 = load %struct.OPER_PASS_REC*, %struct.OPER_PASS_REC** %4, align 8, !dbg !2623
  %29 = getelementptr inbounds %struct.OPER_PASS_REC, %struct.OPER_PASS_REC* %28, i32 0, i32 1, !dbg !2624
  %30 = load i8*, i8** %29, align 8, !dbg !2624
  %31 = load i8*, i8** %3, align 8, !dbg !2625
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), i8* %30, i8* %31), !dbg !2626
  br label %32, !dbg !2626

; <label>:32:                                     ; preds = %25, %24, %23, %2
  %33 = load %struct.OPER_PASS_REC*, %struct.OPER_PASS_REC** %4, align 8, !dbg !2627
  %34 = getelementptr inbounds %struct.OPER_PASS_REC, %struct.OPER_PASS_REC* %33, i32 0, i32 1, !dbg !2628
  %35 = load i8*, i8** %34, align 8, !dbg !2628
  call void @g_free(i8* %35), !dbg !2629
  %36 = load %struct.OPER_PASS_REC*, %struct.OPER_PASS_REC** %4, align 8, !dbg !2630
  %37 = getelementptr inbounds %struct.OPER_PASS_REC, %struct.OPER_PASS_REC* %36, i32 0, i32 0, !dbg !2631
  %38 = load i8*, i8** %37, align 8, !dbg !2631
  call void @g_free(i8* %38), !dbg !2632
  %39 = load %struct.OPER_PASS_REC*, %struct.OPER_PASS_REC** %4, align 8, !dbg !2633
  %40 = bitcast %struct.OPER_PASS_REC* %39 to i8*, !dbg !2633
  call void @g_free(i8* %40), !dbg !2634
  ret void, !dbg !2635
}

declare %struct._SERVER_REC* @server_find_tag(i8*) #1

declare void @irc_send_cmdv(%struct._IRC_SERVER_REC*, i8*, ...) #1

declare %struct.WINDOW_BIND_REC* @window_bind_add(%struct._WINDOW_REC*, i8*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!931, !932}
!llvm.ident = !{!933}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !213)
!1 = !DIFile(filename: "line300-fe-irc-commands.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10, !15, !24, !35, !56, !87}
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
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !57, line: 10, size: 32, align: 32, elements: !58)
!57 = !DIFile(filename: "../../../src/core/levels.h", directory: "/home/lichi/Desktop/irssi/task1")
!58 = !{!59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86}
!59 = !DIEnumerator(name: "MSGLEVEL_CRAP", value: 1)
!60 = !DIEnumerator(name: "MSGLEVEL_MSGS", value: 2)
!61 = !DIEnumerator(name: "MSGLEVEL_PUBLIC", value: 4)
!62 = !DIEnumerator(name: "MSGLEVEL_NOTICES", value: 8)
!63 = !DIEnumerator(name: "MSGLEVEL_SNOTES", value: 16)
!64 = !DIEnumerator(name: "MSGLEVEL_CTCPS", value: 32)
!65 = !DIEnumerator(name: "MSGLEVEL_ACTIONS", value: 64)
!66 = !DIEnumerator(name: "MSGLEVEL_JOINS", value: 128)
!67 = !DIEnumerator(name: "MSGLEVEL_PARTS", value: 256)
!68 = !DIEnumerator(name: "MSGLEVEL_QUITS", value: 512)
!69 = !DIEnumerator(name: "MSGLEVEL_KICKS", value: 1024)
!70 = !DIEnumerator(name: "MSGLEVEL_MODES", value: 2048)
!71 = !DIEnumerator(name: "MSGLEVEL_TOPICS", value: 4096)
!72 = !DIEnumerator(name: "MSGLEVEL_WALLOPS", value: 8192)
!73 = !DIEnumerator(name: "MSGLEVEL_INVITES", value: 16384)
!74 = !DIEnumerator(name: "MSGLEVEL_NICKS", value: 32768)
!75 = !DIEnumerator(name: "MSGLEVEL_DCC", value: 65536)
!76 = !DIEnumerator(name: "MSGLEVEL_DCCMSGS", value: 131072)
!77 = !DIEnumerator(name: "MSGLEVEL_CLIENTNOTICE", value: 262144)
!78 = !DIEnumerator(name: "MSGLEVEL_CLIENTCRAP", value: 524288)
!79 = !DIEnumerator(name: "MSGLEVEL_CLIENTERROR", value: 1048576)
!80 = !DIEnumerator(name: "MSGLEVEL_HILIGHT", value: 2097152)
!81 = !DIEnumerator(name: "MSGLEVEL_ALL", value: 4194303)
!82 = !DIEnumerator(name: "MSGLEVEL_NOHILIGHT", value: 16777216)
!83 = !DIEnumerator(name: "MSGLEVEL_NO_ACT", value: 33554432)
!84 = !DIEnumerator(name: "MSGLEVEL_NEVER", value: 67108864)
!85 = !DIEnumerator(name: "MSGLEVEL_LASTLOG", value: 134217728)
!86 = !DIEnumerator(name: "MSGLEVEL_HIDDEN", value: 268435456)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !88, line: 3, size: 32, align: 32, elements: !89)
!88 = !DIFile(filename: "module-formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!89 = !{!90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212}
!90 = !DIEnumerator(name: "IRCTXT_MODULE_NAME", value: 0)
!91 = !DIEnumerator(name: "IRCTXT_FILL_1", value: 1)
!92 = !DIEnumerator(name: "IRCTXT_NETSPLIT", value: 2)
!93 = !DIEnumerator(name: "IRCTXT_NETSPLIT_MORE", value: 3)
!94 = !DIEnumerator(name: "IRCTXT_NETSPLIT_JOIN", value: 4)
!95 = !DIEnumerator(name: "IRCTXT_NETSPLIT_JOIN_MORE", value: 5)
!96 = !DIEnumerator(name: "IRCTXT_NO_NETSPLITS", value: 6)
!97 = !DIEnumerator(name: "IRCTXT_NETSPLITS_HEADER", value: 7)
!98 = !DIEnumerator(name: "IRCTXT_NETSPLITS_LINE", value: 8)
!99 = !DIEnumerator(name: "IRCTXT_NETSPLITS_FOOTER", value: 9)
!100 = !DIEnumerator(name: "IRCTXT_NETWORK_ADDED", value: 10)
!101 = !DIEnumerator(name: "IRCTXT_NETWORK_REMOVED", value: 11)
!102 = !DIEnumerator(name: "IRCTXT_NETWORK_NOT_FOUND", value: 12)
!103 = !DIEnumerator(name: "IRCTXT_NETWORK_HEADER", value: 13)
!104 = !DIEnumerator(name: "IRCTXT_NETWORK_LINE", value: 14)
!105 = !DIEnumerator(name: "IRCTXT_NETWORK_FOOTER", value: 15)
!106 = !DIEnumerator(name: "IRCTXT_SETUPSERVER_HEADER", value: 16)
!107 = !DIEnumerator(name: "IRCTXT_SETUPSERVER_LINE", value: 17)
!108 = !DIEnumerator(name: "IRCTXT_SETUPSERVER_FOOTER", value: 18)
!109 = !DIEnumerator(name: "IRCTXT_SASL_SUCCESS", value: 19)
!110 = !DIEnumerator(name: "IRCTXT_SASL_ERROR", value: 20)
!111 = !DIEnumerator(name: "IRCTXT_CAP_REQ", value: 21)
!112 = !DIEnumerator(name: "IRCTXT_CAP_LS", value: 22)
!113 = !DIEnumerator(name: "IRCTXT_CAP_ACK", value: 23)
!114 = !DIEnumerator(name: "IRCTXT_CAP_NAK", value: 24)
!115 = !DIEnumerator(name: "IRCTXT_CAP_LIST", value: 25)
!116 = !DIEnumerator(name: "IRCTXT_CAP_NEW", value: 26)
!117 = !DIEnumerator(name: "IRCTXT_CAP_DEL", value: 27)
!118 = !DIEnumerator(name: "IRCTXT_FILL_2", value: 28)
!119 = !DIEnumerator(name: "IRCTXT_JOINERROR_TOOMANY", value: 29)
!120 = !DIEnumerator(name: "IRCTXT_JOINERROR_FULL", value: 30)
!121 = !DIEnumerator(name: "IRCTXT_JOINERROR_INVITE", value: 31)
!122 = !DIEnumerator(name: "IRCTXT_JOINERROR_BANNED", value: 32)
!123 = !DIEnumerator(name: "IRCTXT_JOINERROR_BAD_KEY", value: 33)
!124 = !DIEnumerator(name: "IRCTXT_JOINERROR_BAD_MASK", value: 34)
!125 = !DIEnumerator(name: "IRCTXT_JOINERROR_UNAVAIL", value: 35)
!126 = !DIEnumerator(name: "IRCTXT_JOINERROR_DUPLICATE", value: 36)
!127 = !DIEnumerator(name: "IRCTXT_CHANNEL_REJOIN", value: 37)
!128 = !DIEnumerator(name: "IRCTXT_INVITING", value: 38)
!129 = !DIEnumerator(name: "IRCTXT_CHANNEL_CREATED", value: 39)
!130 = !DIEnumerator(name: "IRCTXT_CHANNEL_URL", value: 40)
!131 = !DIEnumerator(name: "IRCTXT_TOPIC", value: 41)
!132 = !DIEnumerator(name: "IRCTXT_NO_TOPIC", value: 42)
!133 = !DIEnumerator(name: "IRCTXT_TOPIC_INFO", value: 43)
!134 = !DIEnumerator(name: "IRCTXT_CHANMODE_CHANGE", value: 44)
!135 = !DIEnumerator(name: "IRCTXT_SERVER_CHANMODE_CHANGE", value: 45)
!136 = !DIEnumerator(name: "IRCTXT_CHANNEL_MODE", value: 46)
!137 = !DIEnumerator(name: "IRCTXT_BANTYPE", value: 47)
!138 = !DIEnumerator(name: "IRCTXT_NO_BANS", value: 48)
!139 = !DIEnumerator(name: "IRCTXT_BANLIST", value: 49)
!140 = !DIEnumerator(name: "IRCTXT_BANLIST_LONG", value: 50)
!141 = !DIEnumerator(name: "IRCTXT_EBANLIST", value: 51)
!142 = !DIEnumerator(name: "IRCTXT_EBANLIST_LONG", value: 52)
!143 = !DIEnumerator(name: "IRCTXT_NO_INVITELIST", value: 53)
!144 = !DIEnumerator(name: "IRCTXT_INVITELIST", value: 54)
!145 = !DIEnumerator(name: "IRCTXT_INVITELIST_LONG", value: 55)
!146 = !DIEnumerator(name: "IRCTXT_NO_SUCH_CHANNEL", value: 56)
!147 = !DIEnumerator(name: "IRCTXT_CHANNEL_SYNCED", value: 57)
!148 = !DIEnumerator(name: "IRCTXT_FILL_4", value: 58)
!149 = !DIEnumerator(name: "IRCTXT_USERMODE_CHANGE", value: 59)
!150 = !DIEnumerator(name: "IRCTXT_USER_MODE", value: 60)
!151 = !DIEnumerator(name: "IRCTXT_AWAY", value: 61)
!152 = !DIEnumerator(name: "IRCTXT_UNAWAY", value: 62)
!153 = !DIEnumerator(name: "IRCTXT_NICK_AWAY", value: 63)
!154 = !DIEnumerator(name: "IRCTXT_NO_SUCH_NICK", value: 64)
!155 = !DIEnumerator(name: "IRCTXT_NICK_IN_USE", value: 65)
!156 = !DIEnumerator(name: "IRCTXT_NICK_UNAVAILABLE", value: 66)
!157 = !DIEnumerator(name: "IRCTXT_YOUR_NICK_OWNED", value: 67)
!158 = !DIEnumerator(name: "IRCTXT_FILL_5", value: 68)
!159 = !DIEnumerator(name: "IRCTXT_WHOIS", value: 69)
!160 = !DIEnumerator(name: "IRCTXT_WHOWAS", value: 70)
!161 = !DIEnumerator(name: "IRCTXT_WHOIS_IDLE", value: 71)
!162 = !DIEnumerator(name: "IRCTXT_WHOIS_IDLE_SIGNON", value: 72)
!163 = !DIEnumerator(name: "IRCTXT_WHOIS_SERVER", value: 73)
!164 = !DIEnumerator(name: "IRCTXT_WHOIS_OPER", value: 74)
!165 = !DIEnumerator(name: "IRCTXT_WHOIS_MODES", value: 75)
!166 = !DIEnumerator(name: "IRCTXT_WHOIS_REALHOST", value: 76)
!167 = !DIEnumerator(name: "IRCTXT_WHOIS_USERMODE", value: 77)
!168 = !DIEnumerator(name: "IRCTXT_WHOIS_CHANNELS", value: 78)
!169 = !DIEnumerator(name: "IRCTXT_WHOIS_AWAY", value: 79)
!170 = !DIEnumerator(name: "IRCTXT_WHOIS_SPECIAL", value: 80)
!171 = !DIEnumerator(name: "IRCTXT_WHOIS_EXTRA", value: 81)
!172 = !DIEnumerator(name: "IRCTXT_END_OF_WHOIS", value: 82)
!173 = !DIEnumerator(name: "IRCTXT_END_OF_WHOWAS", value: 83)
!174 = !DIEnumerator(name: "IRCTXT_WHOIS_NOT_FOUND", value: 84)
!175 = !DIEnumerator(name: "IRCTXT_WHO", value: 85)
!176 = !DIEnumerator(name: "IRCTXT_END_OF_WHO", value: 86)
!177 = !DIEnumerator(name: "IRCTXT_FILL_6", value: 87)
!178 = !DIEnumerator(name: "IRCTXT_OWN_NOTICE", value: 88)
!179 = !DIEnumerator(name: "IRCTXT_OWN_ACTION", value: 89)
!180 = !DIEnumerator(name: "IRCTXT_OWN_ACTION_TARGET", value: 90)
!181 = !DIEnumerator(name: "IRCTXT_OWN_CTCP", value: 91)
!182 = !DIEnumerator(name: "IRCTXT_FILL_7", value: 92)
!183 = !DIEnumerator(name: "IRCTXT_NOTICE_SERVER", value: 93)
!184 = !DIEnumerator(name: "IRCTXT_NOTICE_PUBLIC", value: 94)
!185 = !DIEnumerator(name: "IRCTXT_NOTICE_PRIVATE", value: 95)
!186 = !DIEnumerator(name: "IRCTXT_ACTION_PRIVATE", value: 96)
!187 = !DIEnumerator(name: "IRCTXT_ACTION_PRIVATE_QUERY", value: 97)
!188 = !DIEnumerator(name: "IRCTXT_ACTION_PUBLIC", value: 98)
!189 = !DIEnumerator(name: "IRCTXT_ACTION_PUBLIC_CHANNEL", value: 99)
!190 = !DIEnumerator(name: "IRCTXT_FILL_8", value: 100)
!191 = !DIEnumerator(name: "IRCTXT_CTCP_REPLY", value: 101)
!192 = !DIEnumerator(name: "IRCTXT_CTCP_REPLY_CHANNEL", value: 102)
!193 = !DIEnumerator(name: "IRCTXT_CTCP_PING_REPLY", value: 103)
!194 = !DIEnumerator(name: "IRCTXT_CTCP_REQUESTED", value: 104)
!195 = !DIEnumerator(name: "IRCTXT_CTCP_REQUESTED_UNKNOWN", value: 105)
!196 = !DIEnumerator(name: "IRCTXT_FILL_10", value: 106)
!197 = !DIEnumerator(name: "IRCTXT_ONLINE", value: 107)
!198 = !DIEnumerator(name: "IRCTXT_PONG", value: 108)
!199 = !DIEnumerator(name: "IRCTXT_WALLOPS", value: 109)
!200 = !DIEnumerator(name: "IRCTXT_ACTION_WALLOPS", value: 110)
!201 = !DIEnumerator(name: "IRCTXT_KILL", value: 111)
!202 = !DIEnumerator(name: "IRCTXT_KILL_SERVER", value: 112)
!203 = !DIEnumerator(name: "IRCTXT_ERROR", value: 113)
!204 = !DIEnumerator(name: "IRCTXT_UNKNOWN_MODE", value: 114)
!205 = !DIEnumerator(name: "IRCTXT_DEFAULT_EVENT", value: 115)
!206 = !DIEnumerator(name: "IRCTXT_DEFAULT_EVENT_SERVER", value: 116)
!207 = !DIEnumerator(name: "IRCTXT_FILL_11", value: 117)
!208 = !DIEnumerator(name: "IRCTXT_SILENCED", value: 118)
!209 = !DIEnumerator(name: "IRCTXT_UNSILENCED", value: 119)
!210 = !DIEnumerator(name: "IRCTXT_SILENCE_LINE", value: 120)
!211 = !DIEnumerator(name: "IRCTXT_ASK_OPER_PASS", value: 121)
!212 = !DIEnumerator(name: "IRCTXT_ACCEPT_LIST", value: 122)
!213 = !{!214, !221, !222, !535, !336, !525, !832, !642, !735, !230, !291, !623, !878, !885, !662}
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !215, line: 9, baseType: !216)
!215 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{null, !219, !219, !219, !219, !219, !219}
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64, align: 64)
!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !224, line: 6, baseType: !225)
!224 = !DIFile(filename: "../../../src/irc/core/irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !226, line: 42, size: 39168, align: 64, elements: !227)
!226 = !DIFile(filename: "../../../src/irc/core/irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!227 = !{!228, !231, !232, !233, !480, !485, !486, !487, !488, !489, !490, !491, !492, !493, !497, !498, !502, !503, !504, !508, !513, !514, !515, !516, !517, !518, !519, !520, !527, !528, !529, !530, !531, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !875, !877}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !225, file: !229, line: 3, baseType: !230, size: 32, align: 32)
!229 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!230 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !225, file: !229, line: 4, baseType: !230, size: 32, align: 32, offset: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !225, file: !229, line: 6, baseType: !230, size: 32, align: 32, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !225, file: !229, line: 8, baseType: !234, size: 64, align: 64, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64, align: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !224, line: 5, baseType: !236)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !226, line: 24, size: 2496, align: 64, elements: !237)
!237 = !{!238, !240, !241, !242, !245, !246, !247, !248, !249, !251, !252, !253, !254, !255, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !236, file: !239, line: 3, baseType: !230, size: 32, align: 32)
!239 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!240 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !236, file: !239, line: 4, baseType: !230, size: 32, align: 32, offset: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !236, file: !239, line: 6, baseType: !230, size: 32, align: 32, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !236, file: !239, line: 9, baseType: !243, size: 64, align: 64, offset: 128)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!244 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !236, file: !239, line: 10, baseType: !230, size: 32, align: 32, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !236, file: !239, line: 11, baseType: !243, size: 64, align: 64, offset: 256)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !236, file: !239, line: 11, baseType: !243, size: 64, align: 64, offset: 320)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !236, file: !239, line: 11, baseType: !243, size: 64, align: 64, offset: 384)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !236, file: !239, line: 13, baseType: !250, size: 16, align: 16, offset: 448)
!250 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !236, file: !239, line: 14, baseType: !243, size: 64, align: 64, offset: 512)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !236, file: !239, line: 15, baseType: !243, size: 64, align: 64, offset: 576)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !236, file: !239, line: 16, baseType: !230, size: 32, align: 32, offset: 640)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !236, file: !239, line: 17, baseType: !243, size: 64, align: 64, offset: 704)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !236, file: !239, line: 19, baseType: !256, size: 64, align: 64, offset: 768)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64, align: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !258, line: 99, baseType: !259)
!258 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!259 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !258, line: 99, flags: DIFlagFwdDecl)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !236, file: !239, line: 19, baseType: !256, size: 64, align: 64, offset: 832)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !236, file: !239, line: 21, baseType: !243, size: 64, align: 64, offset: 896)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !236, file: !239, line: 22, baseType: !243, size: 64, align: 64, offset: 960)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !236, file: !239, line: 23, baseType: !243, size: 64, align: 64, offset: 1024)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !236, file: !239, line: 24, baseType: !243, size: 64, align: 64, offset: 1088)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !236, file: !239, line: 26, baseType: !243, size: 64, align: 64, offset: 1152)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !236, file: !239, line: 27, baseType: !243, size: 64, align: 64, offset: 1216)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !236, file: !239, line: 28, baseType: !243, size: 64, align: 64, offset: 1280)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !236, file: !239, line: 29, baseType: !243, size: 64, align: 64, offset: 1344)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !236, file: !239, line: 30, baseType: !243, size: 64, align: 64, offset: 1408)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !236, file: !239, line: 31, baseType: !243, size: 64, align: 64, offset: 1472)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !236, file: !239, line: 32, baseType: !243, size: 64, align: 64, offset: 1536)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !236, file: !239, line: 33, baseType: !243, size: 64, align: 64, offset: 1600)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !236, file: !239, line: 35, baseType: !274, size: 64, align: 64, offset: 1664)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64, align: 64)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !276)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !277)
!277 = !{!278, !281, !425, !426, !431, !432, !433, !434, !435, !444, !445, !446, !450, !451, !452, !453, !454, !455, !456, !457}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !276, file: !4, line: 100, baseType: !279, size: 32, align: 32)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !280, line: 49, baseType: !230)
!280 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!281 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !276, file: !4, line: 101, baseType: !282, size: 64, align: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64, align: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !284)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !285)
!285 = !{!286, !310, !316, !323, !327, !412, !416, !421}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !284, file: !4, line: 133, baseType: !287, size: 64, align: 64)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64, align: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!290, !274, !291, !293, !296, !297}
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64, align: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !280, line: 46, baseType: !244)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !294, line: 66, baseType: !295)
!294 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!295 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, align: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64, align: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64, align: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !300, line: 42, baseType: !301)
!300 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !300, line: 44, size: 128, align: 64, elements: !302)
!302 = !{!303, !308, !309}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !301, file: !300, line: 46, baseType: !304, size: 32, align: 32)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !305, line: 36, baseType: !306)
!305 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !294, line: 45, baseType: !307)
!307 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !301, file: !300, line: 47, baseType: !279, size: 32, align: 32, offset: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !301, file: !300, line: 48, baseType: !291, size: 64, align: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !284, file: !4, line: 138, baseType: !311, size: 64, align: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!290, !274, !314, !293, !296, !297}
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64, align: 64)
!315 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !284, file: !4, line: 143, baseType: !317, size: 64, align: 64, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64, align: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!290, !274, !320, !322, !297}
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !294, line: 51, baseType: !321)
!321 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !284, file: !4, line: 147, baseType: !324, size: 64, align: 64, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64, align: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!290, !274, !297}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !284, file: !4, line: 149, baseType: !328, size: 64, align: 64, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64, align: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!331, !274, !411}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !333)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !334)
!334 = !{!335, !337, !358, !387, !389, !393, !394, !395, !396, !404, !405, !406, !407}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !333, file: !16, line: 174, baseType: !336, size: 64, align: 64)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !280, line: 77, baseType: !221)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !333, file: !16, line: 175, baseType: !338, size: 64, align: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64, align: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !340)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !341)
!341 = !{!342, !346, !347}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !340, file: !16, line: 198, baseType: !343, size: 64, align: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64, align: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !336}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !340, file: !16, line: 199, baseType: !343, size: 64, align: 64, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !340, file: !16, line: 200, baseType: !348, size: 64, align: 64, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64, align: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{null, !336, !331, !351, !357}
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64, align: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{!356, !336}
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !280, line: 50, baseType: !279)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64, align: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !333, file: !16, line: 177, baseType: !359, size: 64, align: 64, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !362)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !363)
!363 = !{!364, !369, !373, !377, !381, !382}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !362, file: !16, line: 216, baseType: !365, size: 64, align: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64, align: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{!356, !331, !368}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !362, file: !16, line: 218, baseType: !370, size: 64, align: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64, align: 64)
!371 = !DISubroutineType(types: !372)
!372 = !{!356, !331}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !362, file: !16, line: 219, baseType: !374, size: 64, align: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64, align: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{!356, !331, !352, !336}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !362, file: !16, line: 222, baseType: !378, size: 64, align: 64, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64, align: 64)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !331}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !362, file: !16, line: 226, baseType: !352, size: 64, align: 64, offset: 256)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !362, file: !16, line: 227, baseType: !383, size: 64, align: 64, offset: 320)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64, align: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{null}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !333, file: !16, line: 178, baseType: !388, size: 32, align: 32, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !280, line: 55, baseType: !307)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !333, file: !16, line: 180, baseType: !390, size: 64, align: 64, offset: 256)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64, align: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !392)
!392 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !333, file: !16, line: 182, baseType: !279, size: 32, align: 32, offset: 320)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !333, file: !16, line: 183, baseType: !388, size: 32, align: 32, offset: 352)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !333, file: !16, line: 184, baseType: !388, size: 32, align: 32, offset: 384)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !333, file: !16, line: 186, baseType: !397, size: 64, align: 64, offset: 448)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64, align: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !399, line: 37, baseType: !400)
!399 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !399, line: 39, size: 128, align: 64, elements: !401)
!401 = !{!402, !403}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !400, file: !399, line: 41, baseType: !336, size: 64, align: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !400, file: !399, line: 42, baseType: !397, size: 64, align: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !333, file: !16, line: 188, baseType: !331, size: 64, align: 64, offset: 512)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !333, file: !16, line: 189, baseType: !331, size: 64, align: 64, offset: 576)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !333, file: !16, line: 191, baseType: !243, size: 64, align: 64, offset: 640)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !333, file: !16, line: 193, baseType: !408, size: 64, align: 64, offset: 704)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64, align: 64)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !410)
!410 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !284, file: !4, line: 151, baseType: !413, size: 64, align: 64, offset: 320)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64, align: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !274}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !284, file: !4, line: 152, baseType: !417, size: 64, align: 64, offset: 384)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64, align: 64)
!418 = !DISubroutineType(types: !419)
!419 = !{!290, !274, !420, !297}
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !284, file: !4, line: 155, baseType: !422, size: 64, align: 64, offset: 448)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64, align: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!420, !274}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !276, file: !4, line: 103, baseType: !291, size: 64, align: 64, offset: 128)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !276, file: !4, line: 104, baseType: !427, size: 64, align: 64, offset: 192)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !428, line: 77, baseType: !429)
!428 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64, align: 64)
!430 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !428, line: 77, flags: DIFlagFwdDecl)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !276, file: !4, line: 105, baseType: !427, size: 64, align: 64, offset: 256)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !276, file: !4, line: 106, baseType: !291, size: 64, align: 64, offset: 320)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !276, file: !4, line: 107, baseType: !388, size: 32, align: 32, offset: 384)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !276, file: !4, line: 109, baseType: !293, size: 64, align: 64, offset: 448)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !276, file: !4, line: 110, baseType: !436, size: 64, align: 64, offset: 512)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64, align: 64)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !438, line: 39, baseType: !439)
!438 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !438, line: 41, size: 192, align: 64, elements: !440)
!440 = !{!441, !442, !443}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !439, file: !438, line: 43, baseType: !291, size: 64, align: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !439, file: !438, line: 44, baseType: !293, size: 64, align: 64, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !439, file: !438, line: 45, baseType: !293, size: 64, align: 64, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !276, file: !4, line: 111, baseType: !436, size: 64, align: 64, offset: 576)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !276, file: !4, line: 112, baseType: !436, size: 64, align: 64, offset: 640)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !276, file: !4, line: 113, baseType: !447, size: 48, align: 8, offset: 704)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 48, align: 8, elements: !448)
!448 = !{!449}
!449 = !DISubrange(count: 6)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !276, file: !4, line: 117, baseType: !388, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !276, file: !4, line: 118, baseType: !388, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !276, file: !4, line: 119, baseType: !388, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !276, file: !4, line: 120, baseType: !388, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !276, file: !4, line: 121, baseType: !388, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !276, file: !4, line: 122, baseType: !388, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !276, file: !4, line: 124, baseType: !336, size: 64, align: 64, offset: 768)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !276, file: !4, line: 125, baseType: !336, size: 64, align: 64, offset: 832)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !236, file: !239, line: 38, baseType: !307, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !236, file: !239, line: 39, baseType: !307, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !236, file: !239, line: 40, baseType: !307, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !236, file: !239, line: 41, baseType: !307, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !236, file: !239, line: 42, baseType: !307, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !236, file: !239, line: 43, baseType: !307, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !236, file: !239, line: 44, baseType: !307, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !236, file: !239, line: 45, baseType: !307, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !236, file: !239, line: 46, baseType: !243, size: 64, align: 64, offset: 1792)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !236, file: !239, line: 47, baseType: !243, size: 64, align: 64, offset: 1856)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !236, file: !226, line: 27, baseType: !243, size: 64, align: 64, offset: 1920)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !236, file: !226, line: 28, baseType: !243, size: 64, align: 64, offset: 1984)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !236, file: !226, line: 30, baseType: !230, size: 32, align: 32, offset: 2048)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !236, file: !226, line: 31, baseType: !243, size: 64, align: 64, offset: 2112)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !236, file: !226, line: 32, baseType: !243, size: 64, align: 64, offset: 2176)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !236, file: !226, line: 34, baseType: !230, size: 32, align: 32, offset: 2240)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !236, file: !226, line: 35, baseType: !230, size: 32, align: 32, offset: 2272)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !236, file: !226, line: 36, baseType: !230, size: 32, align: 32, offset: 2304)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !236, file: !226, line: 38, baseType: !230, size: 32, align: 32, offset: 2336)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !236, file: !226, line: 38, baseType: !230, size: 32, align: 32, offset: 2368)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !236, file: !226, line: 38, baseType: !230, size: 32, align: 32, offset: 2400)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !236, file: !226, line: 38, baseType: !230, size: 32, align: 32, offset: 2432)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !225, file: !229, line: 9, baseType: !481, size: 64, align: 64, offset: 192)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !482, line: 75, baseType: !483)
!482 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !484, line: 139, baseType: !321)
!484 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!485 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !225, file: !229, line: 10, baseType: !481, size: 64, align: 64, offset: 256)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !225, file: !229, line: 12, baseType: !243, size: 64, align: 64, offset: 320)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !225, file: !229, line: 13, baseType: !243, size: 64, align: 64, offset: 384)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !225, file: !229, line: 15, baseType: !307, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !225, file: !229, line: 16, baseType: !307, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !225, file: !229, line: 17, baseType: !307, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !225, file: !229, line: 18, baseType: !307, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !225, file: !229, line: 19, baseType: !307, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !225, file: !229, line: 21, baseType: !494, size: 64, align: 64, offset: 512)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64, align: 64)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !258, line: 102, baseType: !496)
!496 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !258, line: 102, flags: DIFlagFwdDecl)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !225, file: !229, line: 22, baseType: !230, size: 32, align: 32, offset: 576)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !225, file: !229, line: 25, baseType: !499, size: 128, align: 64, offset: 640)
!499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 128, align: 64, elements: !500)
!500 = !{!501}
!501 = !DISubrange(count: 2)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !225, file: !229, line: 26, baseType: !230, size: 32, align: 32, offset: 768)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !225, file: !229, line: 27, baseType: !230, size: 32, align: 32, offset: 800)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !225, file: !229, line: 29, baseType: !505, size: 64, align: 64, offset: 832)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64, align: 64)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !258, line: 103, baseType: !507)
!507 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !258, line: 103, flags: DIFlagFwdDecl)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !225, file: !229, line: 30, baseType: !509, size: 64, align: 64, offset: 896)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64, align: 64)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !511, line: 37, baseType: !512)
!511 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!512 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !511, line: 37, flags: DIFlagFwdDecl)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !225, file: !229, line: 32, baseType: !243, size: 64, align: 64, offset: 960)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !225, file: !229, line: 33, baseType: !243, size: 64, align: 64, offset: 1024)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !225, file: !229, line: 34, baseType: !243, size: 64, align: 64, offset: 1088)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !225, file: !229, line: 35, baseType: !307, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !225, file: !229, line: 36, baseType: !307, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !225, file: !229, line: 37, baseType: !307, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !225, file: !229, line: 38, baseType: !307, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !225, file: !229, line: 40, baseType: !521, size: 128, align: 64, offset: 1216)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !280, line: 504, baseType: !522)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !280, line: 506, size: 128, align: 64, elements: !523)
!523 = !{!524, !526}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !522, file: !280, line: 508, baseType: !525, size: 64, align: 64)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !280, line: 48, baseType: !321)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !522, file: !280, line: 509, baseType: !525, size: 64, align: 64, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !225, file: !229, line: 41, baseType: !481, size: 64, align: 64, offset: 1344)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !225, file: !229, line: 42, baseType: !230, size: 32, align: 32, offset: 1408)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !225, file: !229, line: 44, baseType: !397, size: 64, align: 64, offset: 1472)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !225, file: !229, line: 45, baseType: !397, size: 64, align: 64, offset: 1536)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !225, file: !229, line: 53, baseType: !532, size: 64, align: 64, offset: 1600)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64, align: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{null, !535, !623, !230}
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64, align: 64)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !258, line: 107, baseType: !537)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !538, line: 30, size: 2240, align: 64, elements: !539)
!538 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!539 = !{!540, !541, !542, !543, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !619, !625, !629, !633, !638, !731, !758, !762}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !537, file: !229, line: 3, baseType: !230, size: 32, align: 32)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !537, file: !229, line: 4, baseType: !230, size: 32, align: 32, offset: 32)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !537, file: !229, line: 6, baseType: !230, size: 32, align: 32, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !537, file: !229, line: 8, baseType: !544, size: 64, align: 64, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64, align: 64)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !258, line: 113, baseType: !546)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !538, line: 25, size: 1920, align: 64, elements: !547)
!547 = !{!548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !546, file: !239, line: 3, baseType: !230, size: 32, align: 32)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !546, file: !239, line: 4, baseType: !230, size: 32, align: 32, offset: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !546, file: !239, line: 6, baseType: !230, size: 32, align: 32, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !546, file: !239, line: 9, baseType: !243, size: 64, align: 64, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !546, file: !239, line: 10, baseType: !230, size: 32, align: 32, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !546, file: !239, line: 11, baseType: !243, size: 64, align: 64, offset: 256)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !546, file: !239, line: 11, baseType: !243, size: 64, align: 64, offset: 320)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !546, file: !239, line: 11, baseType: !243, size: 64, align: 64, offset: 384)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !546, file: !239, line: 13, baseType: !250, size: 16, align: 16, offset: 448)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !546, file: !239, line: 14, baseType: !243, size: 64, align: 64, offset: 512)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !546, file: !239, line: 15, baseType: !243, size: 64, align: 64, offset: 576)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !546, file: !239, line: 16, baseType: !230, size: 32, align: 32, offset: 640)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !546, file: !239, line: 17, baseType: !243, size: 64, align: 64, offset: 704)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !546, file: !239, line: 19, baseType: !256, size: 64, align: 64, offset: 768)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !546, file: !239, line: 19, baseType: !256, size: 64, align: 64, offset: 832)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !546, file: !239, line: 21, baseType: !243, size: 64, align: 64, offset: 896)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !546, file: !239, line: 22, baseType: !243, size: 64, align: 64, offset: 960)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !546, file: !239, line: 23, baseType: !243, size: 64, align: 64, offset: 1024)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !546, file: !239, line: 24, baseType: !243, size: 64, align: 64, offset: 1088)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !546, file: !239, line: 26, baseType: !243, size: 64, align: 64, offset: 1152)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !546, file: !239, line: 27, baseType: !243, size: 64, align: 64, offset: 1216)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !546, file: !239, line: 28, baseType: !243, size: 64, align: 64, offset: 1280)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !546, file: !239, line: 29, baseType: !243, size: 64, align: 64, offset: 1344)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !546, file: !239, line: 30, baseType: !243, size: 64, align: 64, offset: 1408)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !546, file: !239, line: 31, baseType: !243, size: 64, align: 64, offset: 1472)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !546, file: !239, line: 32, baseType: !243, size: 64, align: 64, offset: 1536)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !546, file: !239, line: 33, baseType: !243, size: 64, align: 64, offset: 1600)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !546, file: !239, line: 35, baseType: !274, size: 64, align: 64, offset: 1664)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !546, file: !239, line: 38, baseType: !307, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !546, file: !239, line: 39, baseType: !307, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !546, file: !239, line: 40, baseType: !307, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !546, file: !239, line: 41, baseType: !307, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !546, file: !239, line: 42, baseType: !307, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !546, file: !239, line: 43, baseType: !307, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !546, file: !239, line: 44, baseType: !307, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !546, file: !239, line: 45, baseType: !307, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !546, file: !239, line: 46, baseType: !243, size: 64, align: 64, offset: 1792)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !546, file: !239, line: 47, baseType: !243, size: 64, align: 64, offset: 1856)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !537, file: !229, line: 9, baseType: !481, size: 64, align: 64, offset: 192)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !537, file: !229, line: 10, baseType: !481, size: 64, align: 64, offset: 256)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !537, file: !229, line: 12, baseType: !243, size: 64, align: 64, offset: 320)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !537, file: !229, line: 13, baseType: !243, size: 64, align: 64, offset: 384)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !537, file: !229, line: 15, baseType: !307, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !537, file: !229, line: 16, baseType: !307, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !537, file: !229, line: 17, baseType: !307, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !537, file: !229, line: 18, baseType: !307, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !537, file: !229, line: 19, baseType: !307, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !537, file: !229, line: 21, baseType: !494, size: 64, align: 64, offset: 512)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !537, file: !229, line: 22, baseType: !230, size: 32, align: 32, offset: 576)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !537, file: !229, line: 25, baseType: !499, size: 128, align: 64, offset: 640)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !537, file: !229, line: 26, baseType: !230, size: 32, align: 32, offset: 768)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !537, file: !229, line: 27, baseType: !230, size: 32, align: 32, offset: 800)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !537, file: !229, line: 29, baseType: !505, size: 64, align: 64, offset: 832)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !537, file: !229, line: 30, baseType: !509, size: 64, align: 64, offset: 896)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !537, file: !229, line: 32, baseType: !243, size: 64, align: 64, offset: 960)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !537, file: !229, line: 33, baseType: !243, size: 64, align: 64, offset: 1024)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !537, file: !229, line: 34, baseType: !243, size: 64, align: 64, offset: 1088)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !537, file: !229, line: 35, baseType: !307, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !537, file: !229, line: 36, baseType: !307, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !537, file: !229, line: 37, baseType: !307, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !537, file: !229, line: 38, baseType: !307, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !537, file: !229, line: 40, baseType: !521, size: 128, align: 64, offset: 1216)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !537, file: !229, line: 41, baseType: !481, size: 64, align: 64, offset: 1344)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !537, file: !229, line: 42, baseType: !230, size: 32, align: 32, offset: 1408)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !537, file: !229, line: 44, baseType: !397, size: 64, align: 64, offset: 1472)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !537, file: !229, line: 45, baseType: !397, size: 64, align: 64, offset: 1536)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !537, file: !229, line: 53, baseType: !532, size: 64, align: 64, offset: 1600)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !537, file: !229, line: 55, baseType: !616, size: 64, align: 64, offset: 1664)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64, align: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{!230, !535, !244}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !537, file: !229, line: 57, baseType: !620, size: 64, align: 64, offset: 1728)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64, align: 64)
!621 = !DISubroutineType(types: !622)
!622 = !{!230, !535, !623}
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64, align: 64)
!624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !537, file: !229, line: 60, baseType: !626, size: 64, align: 64, offset: 1792)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64, align: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{!623, !535}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !537, file: !229, line: 62, baseType: !630, size: 64, align: 64, offset: 1856)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64, align: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{null, !535, !623, !623, !230}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !537, file: !229, line: 65, baseType: !634, size: 64, align: 64, offset: 1920)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64, align: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!637, !535, !623, !623}
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !537, file: !229, line: 69, baseType: !639, size: 64, align: 64, offset: 1984)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64, align: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!642, !535, !623}
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64, align: 64)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !258, line: 109, baseType: !644)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !645, line: 15, size: 1408, align: 64, elements: !646)
!645 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!646 = !{!647, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !682, !683, !685, !686, !687, !688, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !644, file: !648, line: 3, baseType: !230, size: 32, align: 32)
!648 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!649 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !644, file: !648, line: 4, baseType: !230, size: 32, align: 32, offset: 32)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !644, file: !648, line: 5, baseType: !509, size: 64, align: 64, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !644, file: !648, line: 7, baseType: !221, size: 64, align: 64, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !644, file: !648, line: 8, baseType: !535, size: 64, align: 64, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !644, file: !648, line: 9, baseType: !243, size: 64, align: 64, offset: 256)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !644, file: !648, line: 10, baseType: !243, size: 64, align: 64, offset: 320)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !644, file: !648, line: 11, baseType: !481, size: 64, align: 64, offset: 384)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !644, file: !648, line: 12, baseType: !230, size: 32, align: 32, offset: 448)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !644, file: !648, line: 13, baseType: !243, size: 64, align: 64, offset: 512)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !644, file: !648, line: 15, baseType: !659, size: 64, align: 64, offset: 576)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64, align: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{null, !662}
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64, align: 64)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !258, line: 108, baseType: !664)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !665, line: 5, size: 704, align: 64, elements: !666)
!665 = !DIFile(filename: "../../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!666 = !{!667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !664, file: !648, line: 3, baseType: !230, size: 32, align: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !664, file: !648, line: 4, baseType: !230, size: 32, align: 32, offset: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !664, file: !648, line: 5, baseType: !509, size: 64, align: 64, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !664, file: !648, line: 7, baseType: !221, size: 64, align: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !664, file: !648, line: 8, baseType: !535, size: 64, align: 64, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !664, file: !648, line: 9, baseType: !243, size: 64, align: 64, offset: 256)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !664, file: !648, line: 10, baseType: !243, size: 64, align: 64, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !664, file: !648, line: 11, baseType: !481, size: 64, align: 64, offset: 384)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !664, file: !648, line: 12, baseType: !230, size: 32, align: 32, offset: 448)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !664, file: !648, line: 13, baseType: !243, size: 64, align: 64, offset: 512)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !664, file: !648, line: 15, baseType: !659, size: 64, align: 64, offset: 576)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !664, file: !648, line: 17, baseType: !679, size: 64, align: 64, offset: 640)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64, align: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{!623, !662}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !644, file: !648, line: 17, baseType: !679, size: 64, align: 64, offset: 640)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !644, file: !684, line: 5, baseType: !243, size: 64, align: 64, offset: 704)
!684 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!685 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !644, file: !684, line: 6, baseType: !243, size: 64, align: 64, offset: 768)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !644, file: !684, line: 7, baseType: !481, size: 64, align: 64, offset: 832)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !644, file: !684, line: 9, baseType: !509, size: 64, align: 64, offset: 896)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !644, file: !684, line: 10, baseType: !689, size: 64, align: 64, offset: 960)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64, align: 64)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !258, line: 111, baseType: !691)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !692, line: 13, size: 576, align: 64, elements: !693)
!692 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!693 = !{!694, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !712, !713}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !691, file: !695, line: 3, baseType: !230, size: 32, align: 32)
!695 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!696 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !691, file: !695, line: 4, baseType: !230, size: 32, align: 32, offset: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !691, file: !695, line: 6, baseType: !481, size: 64, align: 64, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !691, file: !695, line: 8, baseType: !243, size: 64, align: 64, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !691, file: !695, line: 9, baseType: !243, size: 64, align: 64, offset: 192)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !691, file: !695, line: 10, baseType: !243, size: 64, align: 64, offset: 256)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !691, file: !695, line: 11, baseType: !230, size: 32, align: 32, offset: 320)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !691, file: !695, line: 14, baseType: !307, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !691, file: !695, line: 15, baseType: !307, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !691, file: !695, line: 18, baseType: !307, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !691, file: !695, line: 19, baseType: !307, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !691, file: !695, line: 20, baseType: !307, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !691, file: !695, line: 21, baseType: !307, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !691, file: !695, line: 22, baseType: !709, size: 64, align: 8, offset: 360)
!709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 64, align: 8, elements: !710)
!710 = !{!711}
!711 = !DISubrange(count: 8)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !691, file: !695, line: 26, baseType: !221, size: 64, align: 64, offset: 448)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !691, file: !695, line: 28, baseType: !689, size: 64, align: 64, offset: 512)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !644, file: !684, line: 12, baseType: !307, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !644, file: !684, line: 13, baseType: !243, size: 64, align: 64, offset: 1088)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !644, file: !684, line: 14, baseType: !230, size: 32, align: 32, offset: 1152)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !644, file: !684, line: 15, baseType: !243, size: 64, align: 64, offset: 1216)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !644, file: !684, line: 17, baseType: !307, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !644, file: !684, line: 18, baseType: !307, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !644, file: !684, line: 19, baseType: !307, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !644, file: !684, line: 20, baseType: !307, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !644, file: !684, line: 22, baseType: !307, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !644, file: !684, line: 23, baseType: !307, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !644, file: !684, line: 24, baseType: !307, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !644, file: !684, line: 25, baseType: !307, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !644, file: !684, line: 26, baseType: !307, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !644, file: !684, line: 31, baseType: !728, size: 64, align: 64, offset: 1344)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64, align: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{!243, !642}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !537, file: !229, line: 70, baseType: !732, size: 64, align: 64, offset: 2048)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64, align: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!735, !535, !623}
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64, align: 64)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !258, line: 110, baseType: !737)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !738, line: 15, size: 960, align: 64, elements: !739)
!738 = !DIFile(filename: "../../../src/core/queries.h", directory: "/home/lichi/Desktop/irssi/task1")
!739 = !{!740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !754, !755, !756, !757}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !737, file: !648, line: 3, baseType: !230, size: 32, align: 32)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !737, file: !648, line: 4, baseType: !230, size: 32, align: 32, offset: 32)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !737, file: !648, line: 5, baseType: !509, size: 64, align: 64, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !737, file: !648, line: 7, baseType: !221, size: 64, align: 64, offset: 128)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !737, file: !648, line: 8, baseType: !535, size: 64, align: 64, offset: 192)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !737, file: !648, line: 9, baseType: !243, size: 64, align: 64, offset: 256)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !737, file: !648, line: 10, baseType: !243, size: 64, align: 64, offset: 320)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !737, file: !648, line: 11, baseType: !481, size: 64, align: 64, offset: 384)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !737, file: !648, line: 12, baseType: !230, size: 32, align: 32, offset: 448)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !737, file: !648, line: 13, baseType: !243, size: 64, align: 64, offset: 512)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !737, file: !648, line: 15, baseType: !659, size: 64, align: 64, offset: 576)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !737, file: !648, line: 17, baseType: !679, size: 64, align: 64, offset: 640)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !737, file: !753, line: 5, baseType: !243, size: 64, align: 64, offset: 704)
!753 = !DIFile(filename: "../../../src/core/query-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!754 = !DIDerivedType(tag: DW_TAG_member, name: "server_tag", scope: !737, file: !753, line: 6, baseType: !243, size: 64, align: 64, offset: 768)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "last_unread_msg", scope: !737, file: !753, line: 7, baseType: !481, size: 64, align: 64, offset: 832)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "unwanted", scope: !737, file: !753, line: 9, baseType: !307, size: 1, align: 32, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !737, file: !753, line: 11, baseType: !307, size: 1, align: 32, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !537, file: !229, line: 71, baseType: !759, size: 64, align: 64, offset: 2112)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64, align: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!230, !623, !623}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !537, file: !229, line: 73, baseType: !759, size: 64, align: 64, offset: 2176)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !225, file: !229, line: 55, baseType: !616, size: 64, align: 64, offset: 1664)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !225, file: !229, line: 57, baseType: !620, size: 64, align: 64, offset: 1728)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !225, file: !229, line: 60, baseType: !626, size: 64, align: 64, offset: 1792)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !225, file: !229, line: 62, baseType: !630, size: 64, align: 64, offset: 1856)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !225, file: !229, line: 65, baseType: !634, size: 64, align: 64, offset: 1920)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !225, file: !229, line: 69, baseType: !639, size: 64, align: 64, offset: 1984)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !225, file: !229, line: 70, baseType: !732, size: 64, align: 64, offset: 2048)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !225, file: !229, line: 71, baseType: !759, size: 64, align: 64, offset: 2112)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !225, file: !229, line: 73, baseType: !759, size: 64, align: 64, offset: 2176)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !225, file: !226, line: 46, baseType: !397, size: 64, align: 64, offset: 2240)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !225, file: !226, line: 47, baseType: !397, size: 64, align: 64, offset: 2304)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !225, file: !226, line: 48, baseType: !775, size: 64, align: 64, offset: 2368)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64, align: 64)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !224, line: 8, baseType: !777)
!777 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !224, line: 8, flags: DIFlagFwdDecl)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !225, file: !226, line: 49, baseType: !397, size: 64, align: 64, offset: 2432)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !225, file: !226, line: 51, baseType: !243, size: 64, align: 64, offset: 2496)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !225, file: !226, line: 53, baseType: !243, size: 64, align: 64, offset: 2560)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !225, file: !226, line: 54, baseType: !243, size: 64, align: 64, offset: 2624)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !225, file: !226, line: 55, baseType: !243, size: 64, align: 64, offset: 2688)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !225, file: !226, line: 56, baseType: !243, size: 64, align: 64, offset: 2752)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !225, file: !226, line: 57, baseType: !230, size: 32, align: 32, offset: 2816)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !225, file: !226, line: 59, baseType: !307, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !225, file: !226, line: 60, baseType: !307, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !225, file: !226, line: 62, baseType: !307, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !225, file: !226, line: 63, baseType: !307, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !225, file: !226, line: 64, baseType: !307, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !225, file: !226, line: 65, baseType: !307, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !225, file: !226, line: 66, baseType: !307, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !225, file: !226, line: 67, baseType: !307, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !225, file: !226, line: 68, baseType: !307, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !225, file: !226, line: 69, baseType: !307, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !225, file: !226, line: 70, baseType: !307, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !225, file: !226, line: 71, baseType: !307, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !225, file: !226, line: 72, baseType: !307, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !225, file: !226, line: 74, baseType: !230, size: 32, align: 32, offset: 2880)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !225, file: !226, line: 75, baseType: !230, size: 32, align: 32, offset: 2912)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !225, file: !226, line: 76, baseType: !230, size: 32, align: 32, offset: 2944)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !225, file: !226, line: 77, baseType: !230, size: 32, align: 32, offset: 2976)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !225, file: !226, line: 79, baseType: !509, size: 64, align: 64, offset: 3008)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !225, file: !226, line: 80, baseType: !397, size: 64, align: 64, offset: 3072)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !225, file: !226, line: 81, baseType: !397, size: 64, align: 64, offset: 3136)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !225, file: !226, line: 83, baseType: !436, size: 64, align: 64, offset: 3200)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !225, file: !226, line: 84, baseType: !388, size: 32, align: 32, offset: 3264)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !225, file: !226, line: 87, baseType: !230, size: 32, align: 32, offset: 3296)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !225, file: !226, line: 91, baseType: !397, size: 64, align: 64, offset: 3328)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !225, file: !226, line: 92, baseType: !521, size: 128, align: 64, offset: 3392)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !225, file: !226, line: 93, baseType: !521, size: 128, align: 64, offset: 3520)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !225, file: !226, line: 95, baseType: !230, size: 32, align: 32, offset: 3648)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !225, file: !226, line: 96, baseType: !230, size: 32, align: 32, offset: 3680)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !225, file: !226, line: 97, baseType: !230, size: 32, align: 32, offset: 3712)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !225, file: !226, line: 100, baseType: !397, size: 64, align: 64, offset: 3776)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !225, file: !226, line: 103, baseType: !397, size: 64, align: 64, offset: 3840)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !225, file: !226, line: 106, baseType: !397, size: 64, align: 64, offset: 3904)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !225, file: !226, line: 108, baseType: !509, size: 64, align: 64, offset: 3968)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !225, file: !226, line: 109, baseType: !397, size: 64, align: 64, offset: 4032)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !225, file: !226, line: 111, baseType: !397, size: 64, align: 64, offset: 4096)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !225, file: !226, line: 114, baseType: !221, size: 64, align: 64, offset: 4160)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !225, file: !226, line: 116, baseType: !509, size: 64, align: 64, offset: 4224)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !225, file: !226, line: 117, baseType: !823, size: 32768, align: 64, offset: 4288)
!823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !824, size: 32768, align: 64, elements: !873)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !825, line: 10, size: 128, align: 64, elements: !826)
!825 = !DIFile(filename: "../../../src/irc/core/modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!826 = !{!827, !872}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !824, file: !825, line: 11, baseType: !828, size: 64, align: 64)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64, align: 64)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !825, line: 7, baseType: !830)
!830 = !DISubroutineType(types: !831)
!831 = !{null, !832, !623, !244, !244, !243, !436}
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64, align: 64)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !224, line: 7, baseType: !834)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !835, line: 15, size: 1600, align: 64, elements: !836)
!835 = !DIFile(filename: "../../../src/irc/core/irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!836 = !{!837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !834, file: !648, line: 3, baseType: !230, size: 32, align: 32)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !834, file: !648, line: 4, baseType: !230, size: 32, align: 32, offset: 32)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !834, file: !648, line: 5, baseType: !509, size: 64, align: 64, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !834, file: !648, line: 7, baseType: !221, size: 64, align: 64, offset: 128)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !834, file: !648, line: 8, baseType: !222, size: 64, align: 64, offset: 192)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !834, file: !648, line: 9, baseType: !243, size: 64, align: 64, offset: 256)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !834, file: !648, line: 10, baseType: !243, size: 64, align: 64, offset: 320)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !834, file: !648, line: 11, baseType: !481, size: 64, align: 64, offset: 384)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !834, file: !648, line: 12, baseType: !230, size: 32, align: 32, offset: 448)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !834, file: !648, line: 13, baseType: !243, size: 64, align: 64, offset: 512)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !834, file: !648, line: 15, baseType: !659, size: 64, align: 64, offset: 576)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !834, file: !648, line: 17, baseType: !679, size: 64, align: 64, offset: 640)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !834, file: !684, line: 5, baseType: !243, size: 64, align: 64, offset: 704)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !834, file: !684, line: 6, baseType: !243, size: 64, align: 64, offset: 768)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !834, file: !684, line: 7, baseType: !481, size: 64, align: 64, offset: 832)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !834, file: !684, line: 9, baseType: !509, size: 64, align: 64, offset: 896)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !834, file: !684, line: 10, baseType: !689, size: 64, align: 64, offset: 960)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !834, file: !684, line: 12, baseType: !307, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !834, file: !684, line: 13, baseType: !243, size: 64, align: 64, offset: 1088)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !834, file: !684, line: 14, baseType: !230, size: 32, align: 32, offset: 1152)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !834, file: !684, line: 15, baseType: !243, size: 64, align: 64, offset: 1216)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !834, file: !684, line: 17, baseType: !307, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !834, file: !684, line: 18, baseType: !307, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !834, file: !684, line: 19, baseType: !307, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !834, file: !684, line: 20, baseType: !307, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !834, file: !684, line: 22, baseType: !307, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !834, file: !684, line: 23, baseType: !307, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !834, file: !684, line: 24, baseType: !307, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !834, file: !684, line: 25, baseType: !307, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !834, file: !684, line: 26, baseType: !307, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !834, file: !684, line: 31, baseType: !728, size: 64, align: 64, offset: 1344)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !834, file: !835, line: 18, baseType: !397, size: 64, align: 64, offset: 1408)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !834, file: !835, line: 20, baseType: !481, size: 64, align: 64, offset: 1472)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !834, file: !835, line: 21, baseType: !230, size: 32, align: 32, offset: 1536)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !834, file: !835, line: 22, baseType: !230, size: 32, align: 32, offset: 1568)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !824, file: !825, line: 12, baseType: !244, size: 8, align: 8, offset: 64)
!873 = !{!874}
!874 = !DISubrange(count: 256)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !225, file: !226, line: 118, baseType: !876, size: 2048, align: 8, offset: 37056)
!876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 2048, align: 8, elements: !873)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !225, file: !226, line: 120, baseType: !759, size: 64, align: 64, offset: 39104)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64, align: 64)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "OPER_PASS_REC", file: !880, line: 350, baseType: !881)
!880 = !DIFile(filename: "fe-irc-commands.c", directory: "/home/lichi/Desktop/irssi/task1")
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !880, line: 347, size: 128, align: 64, elements: !882)
!882 = !{!883, !884}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "server_tag", scope: !881, file: !880, line: 348, baseType: !243, size: 64, align: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !881, file: !880, line: 349, baseType: !243, size: 64, align: 64, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64, align: 64)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW_REC", file: !258, line: 117, baseType: !887)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WINDOW_REC", file: !888, line: 28, size: 1280, align: 64, elements: !889)
!888 = !DIFile(filename: "../../../src/fe-common/core/fe-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!889 = !{!890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !923, !924, !925, !926, !927, !928, !929, !930}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "refnum", scope: !887, file: !888, line: 29, baseType: !230, size: 32, align: 32)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !887, file: !888, line: 30, baseType: !243, size: 64, align: 64, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !887, file: !888, line: 32, baseType: !230, size: 32, align: 32, offset: 128)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !887, file: !888, line: 32, baseType: !230, size: 32, align: 32, offset: 160)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !887, file: !888, line: 34, baseType: !397, size: 64, align: 64, offset: 192)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !887, file: !888, line: 35, baseType: !662, size: 64, align: 64, offset: 256)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "active_server", scope: !887, file: !888, line: 36, baseType: !535, size: 64, align: 64, offset: 320)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "connect_server", scope: !887, file: !888, line: 37, baseType: !535, size: 64, align: 64, offset: 384)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !887, file: !888, line: 38, baseType: !243, size: 64, align: 64, offset: 448)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !887, file: !888, line: 40, baseType: !230, size: 32, align: 32, offset: 512)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "bound_items", scope: !887, file: !888, line: 41, baseType: !397, size: 64, align: 64, offset: 576)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "immortal", scope: !887, file: !888, line: 43, baseType: !307, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_refnum", scope: !887, file: !888, line: 44, baseType: !307, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !887, file: !888, line: 45, baseType: !307, size: 1, align: 32, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !887, file: !888, line: 48, baseType: !905, size: 64, align: 64, offset: 704)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64, align: 64)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "HISTORY_REC", file: !907, line: 14, baseType: !908)
!907 = !DIFile(filename: "../../../src/fe-common/core/command-history.h", directory: "/home/lichi/Desktop/irssi/task1")
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !907, line: 6, size: 256, align: 64, elements: !909)
!909 = !{!910, !911, !920, !921, !922}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !908, file: !907, line: 7, baseType: !243, size: 64, align: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !908, file: !907, line: 9, baseType: !912, size: 64, align: 64, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64, align: 64)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !914, line: 37, baseType: !915)
!914 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/irssi/task1")
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !914, line: 39, size: 192, align: 64, elements: !916)
!916 = !{!917, !918, !919}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !915, file: !914, line: 41, baseType: !336, size: 64, align: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !915, file: !914, line: 42, baseType: !912, size: 64, align: 64, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !915, file: !914, line: 43, baseType: !912, size: 64, align: 64, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !908, file: !907, line: 10, baseType: !230, size: 32, align: 32, offset: 128)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !908, file: !907, line: 12, baseType: !230, size: 32, align: 32, offset: 160)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "redo", scope: !908, file: !907, line: 13, baseType: !230, size: 1, align: 32, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "history_name", scope: !887, file: !888, line: 49, baseType: !243, size: 64, align: 64, offset: 768)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !887, file: !888, line: 51, baseType: !230, size: 32, align: 32, offset: 832)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !887, file: !888, line: 52, baseType: !243, size: 64, align: 64, offset: 896)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "last_timestamp", scope: !887, file: !888, line: 54, baseType: !481, size: 64, align: 64, offset: 960)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !887, file: !888, line: 55, baseType: !481, size: 64, align: 64, offset: 1024)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "theme_name", scope: !887, file: !888, line: 57, baseType: !243, size: 64, align: 64, offset: 1088)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "theme", scope: !887, file: !888, line: 58, baseType: !221, size: 64, align: 64, offset: 1152)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !887, file: !888, line: 60, baseType: !221, size: 64, align: 64, offset: 1216)
!931 = !{i32 2, !"Dwarf Version", i32 4}
!932 = !{i32 2, !"Debug Info Version", i32 3}
!933 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!934 = distinct !DISubprogram(name: "fe_irc_commands_init", scope: !880, file: !880, line: 418, type: !385, isLocal: false, isDefinition: true, scopeLine: 419, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !935)
!935 = !{}
!936 = !DILocation(line: 420, column: 49, scope: !934)
!937 = !DILocation(line: 420, column: 2, scope: !938)
!938 = !DILexicalBlockFile(scope: !934, file: !880, discriminator: 1)
!939 = !DILocation(line: 421, column: 53, scope: !934)
!940 = !DILocation(line: 421, column: 2, scope: !938)
!941 = !DILocation(line: 422, column: 51, scope: !934)
!942 = !DILocation(line: 422, column: 2, scope: !938)
!943 = !DILocation(line: 423, column: 49, scope: !934)
!944 = !DILocation(line: 423, column: 2, scope: !938)
!945 = !DILocation(line: 424, column: 50, scope: !934)
!946 = !DILocation(line: 424, column: 2, scope: !938)
!947 = !DILocation(line: 425, column: 49, scope: !934)
!948 = !DILocation(line: 425, column: 2, scope: !938)
!949 = !DILocation(line: 426, column: 48, scope: !934)
!950 = !DILocation(line: 426, column: 2, scope: !938)
!951 = !DILocation(line: 427, column: 48, scope: !934)
!952 = !DILocation(line: 427, column: 2, scope: !938)
!953 = !DILocation(line: 428, column: 50, scope: !934)
!954 = !DILocation(line: 428, column: 2, scope: !938)
!955 = !DILocation(line: 429, column: 47, scope: !934)
!956 = !DILocation(line: 429, column: 2, scope: !938)
!957 = !DILocation(line: 430, column: 49, scope: !934)
!958 = !DILocation(line: 430, column: 2, scope: !938)
!959 = !DILocation(line: 431, column: 52, scope: !934)
!960 = !DILocation(line: 431, column: 2, scope: !938)
!961 = !DILocation(line: 432, column: 1, scope: !934)
!962 = distinct !DISubprogram(name: "cmd_me", scope: !880, file: !880, line: 44, type: !963, isLocal: true, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !935)
!963 = !DISubroutineType(types: !964)
!964 = !{null, !623, !222, !662}
!965 = !DILocalVariable(name: "data", arg: 1, scope: !962, file: !880, line: 44, type: !623)
!966 = !DIExpression()
!967 = !DILocation(line: 44, column: 32, scope: !962)
!968 = !DILocalVariable(name: "server", arg: 2, scope: !962, file: !880, line: 44, type: !222)
!969 = !DILocation(line: 44, column: 54, scope: !962)
!970 = !DILocalVariable(name: "item", arg: 3, scope: !962, file: !880, line: 44, type: !662)
!971 = !DILocation(line: 44, column: 75, scope: !962)
!972 = !DILocalVariable(name: "target", scope: !962, file: !880, line: 46, type: !623)
!973 = !DILocation(line: 46, column: 14, scope: !962)
!974 = !DILocalVariable(name: "subdata", scope: !962, file: !880, line: 47, type: !243)
!975 = !DILocation(line: 47, column: 8, scope: !962)
!976 = !DILocalVariable(name: "splitdata", scope: !962, file: !880, line: 48, type: !637)
!977 = !DILocation(line: 48, column: 9, scope: !962)
!978 = !DILocalVariable(name: "n", scope: !962, file: !880, line: 49, type: !230)
!979 = !DILocation(line: 49, column: 6, scope: !962)
!980 = !DILocation(line: 51, column: 9, scope: !962)
!981 = distinct !{!981, !980}
!982 = !DILocation(line: 51, column: 18, scope: !983)
!983 = !DILexicalBlockFile(scope: !984, file: !880, discriminator: 1)
!984 = distinct !DILexicalBlock(scope: !985, file: !880, line: 51, column: 18)
!985 = distinct !DILexicalBlock(scope: !962, file: !880, line: 51, column: 12)
!986 = !DILocation(line: 51, column: 25, scope: !983)
!987 = !DILocation(line: 51, column: 8, scope: !983)
!988 = !DILocation(line: 51, column: 92, scope: !989)
!989 = !DILexicalBlockFile(scope: !984, file: !880, discriminator: 2)
!990 = !DILocation(line: 51, column: 74, scope: !989)
!991 = !DILocation(line: 51, column: 59, scope: !989)
!992 = !DILocation(line: 51, column: 58, scope: !989)
!993 = !DILocation(line: 51, column: 33, scope: !994)
!994 = !DILexicalBlockFile(scope: !989, file: !880, discriminator: 12)
!995 = !DILocation(line: 51, column: 14, scope: !989)
!996 = !DILocation(line: 51, column: 18, scope: !989)
!997 = !DILocation(line: 51, column: 13, scope: !998)
!998 = !DILexicalBlockFile(scope: !984, file: !880, discriminator: 3)
!999 = !DILocation(line: 51, column: 18, scope: !1000)
!1000 = !DILexicalBlockFile(scope: !985, file: !880, discriminator: 4)
!1001 = !DILocation(line: 51, column: 35, scope: !1002)
!1002 = !DILexicalBlockFile(scope: !984, file: !880, discriminator: 5)
!1003 = !DILocation(line: 51, column: 47, scope: !1004)
!1004 = !DILexicalBlockFile(scope: !1005, file: !880, discriminator: 6)
!1005 = distinct !DILexicalBlock(scope: !985, file: !880, line: 51, column: 47)
!1006 = !DILocation(line: 51, column: 54, scope: !1004)
!1007 = !DILocation(line: 51, column: 8, scope: !1004)
!1008 = !DILocation(line: 51, column: 13, scope: !1009)
!1009 = !DILexicalBlockFile(scope: !1005, file: !880, discriminator: 7)
!1010 = !DILocation(line: 51, column: 22, scope: !1009)
!1011 = !DILocation(line: 51, column: 12, scope: !1009)
!1012 = !DILocation(line: 51, column: 47, scope: !1009)
!1013 = !DILocation(line: 51, column: 33, scope: !1014)
!1014 = !DILexicalBlockFile(scope: !1005, file: !880, discriminator: 8)
!1015 = distinct !{!1015, !1016}
!1016 = !DILocation(line: 51, column: 33, scope: !1005)
!1017 = !DILocation(line: 51, column: 38, scope: !1018)
!1018 = !DILexicalBlockFile(scope: !1019, file: !880, discriminator: 9)
!1019 = distinct !DILexicalBlock(scope: !1005, file: !880, line: 51, column: 36)
!1020 = !DILocation(line: 51, column: 116, scope: !1021)
!1021 = !DILexicalBlockFile(scope: !1018, file: !880, discriminator: 13)
!1022 = !DILocation(line: 51, column: 131, scope: !1018)
!1023 = !DILocation(line: 51, column: 139, scope: !1024)
!1024 = !DILexicalBlockFile(scope: !1019, file: !880, discriminator: 10)
!1025 = !DILocation(line: 51, column: 152, scope: !1026)
!1026 = !DILexicalBlockFile(scope: !985, file: !880, discriminator: 11)
!1027 = !DILocation(line: 52, column: 97, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !962, file: !880, line: 52, column: 6)
!1029 = !DILocation(line: 52, column: 72, scope: !1028)
!1030 = !DILocation(line: 52, column: 56, scope: !1028)
!1031 = !DILocation(line: 52, column: 55, scope: !1028)
!1032 = !DILocation(line: 52, column: 30, scope: !1033)
!1033 = !DILexicalBlockFile(scope: !1028, file: !880, discriminator: 6)
!1034 = !DILocation(line: 52, column: 10, scope: !1028)
!1035 = !DILocation(line: 52, column: 32, scope: !1028)
!1036 = !DILocation(line: 52, column: 9, scope: !1037)
!1037 = !DILexicalBlockFile(scope: !1028, file: !880, discriminator: 1)
!1038 = !DILocation(line: 52, column: 32, scope: !1039)
!1039 = !DILexicalBlockFile(scope: !1028, file: !880, discriminator: 2)
!1040 = !DILocation(line: 52, column: 116, scope: !1041)
!1041 = !DILexicalBlockFile(scope: !1028, file: !880, discriminator: 3)
!1042 = !DILocation(line: 52, column: 91, scope: !1041)
!1043 = !DILocation(line: 52, column: 77, scope: !1041)
!1044 = !DILocation(line: 52, column: 76, scope: !1041)
!1045 = !DILocation(line: 52, column: 51, scope: !1046)
!1046 = !DILexicalBlockFile(scope: !1041, file: !880, discriminator: 7)
!1047 = !DILocation(line: 52, column: 37, scope: !1041)
!1048 = !DILocation(line: 52, column: 6, scope: !1041)
!1049 = !DILocation(line: 52, column: 36, scope: !1050)
!1050 = !DILexicalBlockFile(scope: !1028, file: !880, discriminator: 4)
!1051 = !DILocation(line: 52, column: 6, scope: !1052)
!1052 = !DILexicalBlockFile(scope: !962, file: !880, discriminator: 5)
!1053 = !DILocation(line: 53, column: 3, scope: !1028)
!1054 = !DILocation(line: 55, column: 6, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !962, file: !880, line: 55, column: 6)
!1056 = !DILocation(line: 55, column: 13, scope: !1055)
!1057 = !DILocation(line: 55, column: 20, scope: !1055)
!1058 = !DILocation(line: 55, column: 24, scope: !1059)
!1059 = !DILexicalBlockFile(scope: !1055, file: !880, discriminator: 1)
!1060 = !DILocation(line: 55, column: 32, scope: !1059)
!1061 = !DILocation(line: 55, column: 6, scope: !1059)
!1062 = !DILocation(line: 56, column: 3, scope: !1055)
!1063 = distinct !{!1063, !1062}
!1064 = !DILocation(line: 56, column: 8, scope: !1065)
!1065 = !DILexicalBlockFile(scope: !1066, file: !880, discriminator: 1)
!1066 = distinct !DILexicalBlock(scope: !1055, file: !880, line: 56, column: 6)
!1067 = !DILocation(line: 56, column: 86, scope: !1068)
!1068 = !DILexicalBlockFile(scope: !1065, file: !880, discriminator: 3)
!1069 = !DILocation(line: 56, column: 101, scope: !1065)
!1070 = !DILocation(line: 56, column: 109, scope: !1071)
!1071 = !DILexicalBlockFile(scope: !1066, file: !880, discriminator: 2)
!1072 = !DILocation(line: 58, column: 13, scope: !962)
!1073 = !DILocation(line: 58, column: 20, scope: !962)
!1074 = !DILocation(line: 58, column: 31, scope: !962)
!1075 = !DILocation(line: 58, column: 12, scope: !962)
!1076 = !DILocation(line: 58, column: 9, scope: !962)
!1077 = !DILocation(line: 59, column: 38, scope: !962)
!1078 = !DILocation(line: 59, column: 46, scope: !962)
!1079 = !DILocation(line: 59, column: 54, scope: !962)
!1080 = !DILocation(line: 59, column: 14, scope: !962)
!1081 = !DILocation(line: 59, column: 12, scope: !962)
!1082 = !DILocation(line: 60, column: 2, scope: !962)
!1083 = !DILocation(line: 60, column: 31, scope: !1084)
!1084 = !DILexicalBlockFile(scope: !962, file: !880, discriminator: 1)
!1085 = !DILocation(line: 60, column: 20, scope: !1084)
!1086 = !DILocation(line: 60, column: 18, scope: !1084)
!1087 = !DILocation(line: 60, column: 2, scope: !1084)
!1088 = !DILocation(line: 61, column: 26, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !962, file: !880, line: 60, column: 37)
!1090 = !DILocation(line: 61, column: 34, scope: !1089)
!1091 = !DILocation(line: 61, column: 42, scope: !1089)
!1092 = !DILocation(line: 61, column: 3, scope: !1089)
!1093 = !DILocation(line: 62, column: 44, scope: !1089)
!1094 = !DILocation(line: 62, column: 52, scope: !1089)
!1095 = !DILocation(line: 63, column: 8, scope: !1089)
!1096 = !DILocation(line: 63, column: 14, scope: !1089)
!1097 = !DILocation(line: 62, column: 3, scope: !1089)
!1098 = !DILocation(line: 60, column: 2, scope: !1099)
!1099 = !DILexicalBlockFile(scope: !962, file: !880, discriminator: 2)
!1100 = distinct !{!1100, !1082}
!1101 = !DILocation(line: 65, column: 13, scope: !962)
!1102 = !DILocation(line: 65, column: 2, scope: !962)
!1103 = !DILocation(line: 66, column: 1, scope: !962)
!1104 = !DILocation(line: 66, column: 1, scope: !1084)
!1105 = distinct !DISubprogram(name: "cmd_action", scope: !880, file: !880, line: 69, type: !1106, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !935)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{null, !623, !222}
!1108 = !DILocalVariable(name: "data", arg: 1, scope: !1105, file: !880, line: 69, type: !623)
!1109 = !DILocation(line: 69, column: 36, scope: !1105)
!1110 = !DILocalVariable(name: "server", arg: 2, scope: !1105, file: !880, line: 69, type: !222)
!1111 = !DILocation(line: 69, column: 58, scope: !1105)
!1112 = !DILocalVariable(name: "optlist", scope: !1105, file: !880, line: 71, type: !509)
!1113 = !DILocation(line: 71, column: 14, scope: !1105)
!1114 = !DILocalVariable(name: "target", scope: !1105, file: !880, line: 72, type: !623)
!1115 = !DILocation(line: 72, column: 14, scope: !1105)
!1116 = !DILocalVariable(name: "text", scope: !1105, file: !880, line: 72, type: !623)
!1117 = !DILocation(line: 72, column: 23, scope: !1105)
!1118 = !DILocalVariable(name: "subtext", scope: !1105, file: !880, line: 73, type: !243)
!1119 = !DILocation(line: 73, column: 8, scope: !1105)
!1120 = !DILocalVariable(name: "splittexts", scope: !1105, file: !880, line: 74, type: !637)
!1121 = !DILocation(line: 74, column: 9, scope: !1105)
!1122 = !DILocalVariable(name: "n", scope: !1105, file: !880, line: 75, type: !230)
!1123 = !DILocation(line: 75, column: 6, scope: !1105)
!1124 = !DILocalVariable(name: "free_arg", scope: !1105, file: !880, line: 76, type: !221)
!1125 = !DILocation(line: 76, column: 8, scope: !1105)
!1126 = !DILocation(line: 78, column: 9, scope: !1105)
!1127 = distinct !{!1127, !1126}
!1128 = !DILocation(line: 78, column: 18, scope: !1129)
!1129 = !DILexicalBlockFile(scope: !1130, file: !880, discriminator: 1)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !880, line: 78, column: 18)
!1131 = distinct !DILexicalBlock(scope: !1105, file: !880, line: 78, column: 12)
!1132 = !DILocation(line: 78, column: 25, scope: !1129)
!1133 = !DILocation(line: 78, column: 8, scope: !1129)
!1134 = !DILocation(line: 78, column: 92, scope: !1135)
!1135 = !DILexicalBlockFile(scope: !1130, file: !880, discriminator: 2)
!1136 = !DILocation(line: 78, column: 74, scope: !1135)
!1137 = !DILocation(line: 78, column: 59, scope: !1135)
!1138 = !DILocation(line: 78, column: 58, scope: !1135)
!1139 = !DILocation(line: 78, column: 33, scope: !1140)
!1140 = !DILexicalBlockFile(scope: !1135, file: !880, discriminator: 12)
!1141 = !DILocation(line: 78, column: 14, scope: !1135)
!1142 = !DILocation(line: 78, column: 18, scope: !1135)
!1143 = !DILocation(line: 78, column: 13, scope: !1144)
!1144 = !DILexicalBlockFile(scope: !1130, file: !880, discriminator: 3)
!1145 = !DILocation(line: 78, column: 18, scope: !1146)
!1146 = !DILexicalBlockFile(scope: !1131, file: !880, discriminator: 4)
!1147 = !DILocation(line: 78, column: 35, scope: !1148)
!1148 = !DILexicalBlockFile(scope: !1130, file: !880, discriminator: 5)
!1149 = !DILocation(line: 78, column: 47, scope: !1150)
!1150 = !DILexicalBlockFile(scope: !1151, file: !880, discriminator: 6)
!1151 = distinct !DILexicalBlock(scope: !1131, file: !880, line: 78, column: 47)
!1152 = !DILocation(line: 78, column: 54, scope: !1150)
!1153 = !DILocation(line: 78, column: 8, scope: !1150)
!1154 = !DILocation(line: 78, column: 13, scope: !1155)
!1155 = !DILexicalBlockFile(scope: !1151, file: !880, discriminator: 7)
!1156 = !DILocation(line: 78, column: 22, scope: !1155)
!1157 = !DILocation(line: 78, column: 12, scope: !1155)
!1158 = !DILocation(line: 78, column: 47, scope: !1155)
!1159 = !DILocation(line: 78, column: 33, scope: !1160)
!1160 = !DILexicalBlockFile(scope: !1151, file: !880, discriminator: 8)
!1161 = distinct !{!1161, !1162}
!1162 = !DILocation(line: 78, column: 33, scope: !1151)
!1163 = !DILocation(line: 78, column: 38, scope: !1164)
!1164 = !DILexicalBlockFile(scope: !1165, file: !880, discriminator: 9)
!1165 = distinct !DILexicalBlock(scope: !1151, file: !880, line: 78, column: 36)
!1166 = !DILocation(line: 78, column: 116, scope: !1167)
!1167 = !DILexicalBlockFile(scope: !1164, file: !880, discriminator: 13)
!1168 = !DILocation(line: 78, column: 131, scope: !1164)
!1169 = !DILocation(line: 78, column: 139, scope: !1170)
!1170 = !DILexicalBlockFile(scope: !1165, file: !880, discriminator: 10)
!1171 = !DILocation(line: 78, column: 152, scope: !1172)
!1172 = !DILexicalBlockFile(scope: !1131, file: !880, discriminator: 11)
!1173 = !DILocation(line: 80, column: 22, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1105, file: !880, line: 80, column: 6)
!1175 = !DILocation(line: 80, column: 7, scope: !1174)
!1176 = !DILocation(line: 80, column: 6, scope: !1105)
!1177 = !DILocation(line: 83, column: 3, scope: !1174)
!1178 = !DILocation(line: 84, column: 7, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1105, file: !880, line: 84, column: 6)
!1180 = !DILocation(line: 84, column: 6, scope: !1179)
!1181 = !DILocation(line: 84, column: 14, scope: !1179)
!1182 = !DILocation(line: 84, column: 22, scope: !1179)
!1183 = !DILocation(line: 84, column: 26, scope: !1184)
!1184 = !DILexicalBlockFile(scope: !1179, file: !880, discriminator: 1)
!1185 = !DILocation(line: 84, column: 25, scope: !1184)
!1186 = !DILocation(line: 84, column: 31, scope: !1184)
!1187 = !DILocation(line: 84, column: 6, scope: !1184)
!1188 = !DILocation(line: 85, column: 3, scope: !1179)
!1189 = distinct !{!1189, !1188}
!1190 = !DILocation(line: 85, column: 24, scope: !1191)
!1191 = !DILexicalBlockFile(scope: !1192, file: !880, discriminator: 1)
!1192 = distinct !DILexicalBlock(scope: !1179, file: !880, line: 85, column: 6)
!1193 = !DILocation(line: 85, column: 8, scope: !1191)
!1194 = !DILocation(line: 85, column: 35, scope: !1191)
!1195 = distinct !{!1195, !1196}
!1196 = !DILocation(line: 85, column: 35, scope: !1192)
!1197 = !DILocation(line: 85, column: 40, scope: !1198)
!1198 = !DILexicalBlockFile(scope: !1199, file: !880, discriminator: 2)
!1199 = distinct !DILexicalBlock(scope: !1192, file: !880, line: 85, column: 38)
!1200 = !DILocation(line: 85, column: 122, scope: !1201)
!1201 = !DILexicalBlockFile(scope: !1198, file: !880, discriminator: 5)
!1202 = !DILocation(line: 85, column: 137, scope: !1198)
!1203 = !DILocation(line: 85, column: 158, scope: !1204)
!1204 = !DILexicalBlockFile(scope: !1192, file: !880, discriminator: 3)
!1205 = !DILocation(line: 85, column: 158, scope: !1206)
!1206 = !DILexicalBlockFile(scope: !1192, file: !880, discriminator: 4)
!1207 = !DILocation(line: 87, column: 123, scope: !1105)
!1208 = !DILocation(line: 87, column: 166, scope: !1105)
!1209 = !DILocation(line: 87, column: 148, scope: !1105)
!1210 = !DILocation(line: 87, column: 133, scope: !1105)
!1211 = !DILocation(line: 87, column: 90, scope: !1212)
!1212 = !DILexicalBlockFile(scope: !1105, file: !880, discriminator: 1)
!1213 = !DILocation(line: 87, column: 90, scope: !1105)
!1214 = !DILocation(line: 87, column: 72, scope: !1215)
!1215 = !DILexicalBlockFile(scope: !1105, file: !880, discriminator: 2)
!1216 = !DILocation(line: 87, column: 57, scope: !1105)
!1217 = !DILocation(line: 87, column: 56, scope: !1105)
!1218 = !DILocation(line: 87, column: 31, scope: !1219)
!1219 = !DILexicalBlockFile(scope: !1105, file: !880, discriminator: 3)
!1220 = !DILocation(line: 87, column: 12, scope: !1105)
!1221 = !DILocation(line: 87, column: 9, scope: !1105)
!1222 = !DILocation(line: 88, column: 6, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1105, file: !880, line: 88, column: 6)
!1224 = !DILocation(line: 88, column: 13, scope: !1223)
!1225 = !DILocation(line: 88, column: 20, scope: !1223)
!1226 = !DILocation(line: 88, column: 24, scope: !1227)
!1227 = !DILexicalBlockFile(scope: !1223, file: !880, discriminator: 1)
!1228 = !DILocation(line: 88, column: 32, scope: !1227)
!1229 = !DILocation(line: 88, column: 6, scope: !1227)
!1230 = !DILocation(line: 89, column: 3, scope: !1223)
!1231 = distinct !{!1231, !1230}
!1232 = !DILocation(line: 89, column: 24, scope: !1233)
!1233 = !DILexicalBlockFile(scope: !1234, file: !880, discriminator: 1)
!1234 = distinct !DILexicalBlock(scope: !1223, file: !880, line: 89, column: 6)
!1235 = !DILocation(line: 89, column: 8, scope: !1233)
!1236 = !DILocation(line: 89, column: 35, scope: !1233)
!1237 = distinct !{!1237, !1238}
!1238 = !DILocation(line: 89, column: 35, scope: !1234)
!1239 = !DILocation(line: 89, column: 40, scope: !1240)
!1240 = !DILexicalBlockFile(scope: !1241, file: !880, discriminator: 2)
!1241 = distinct !DILexicalBlock(scope: !1234, file: !880, line: 89, column: 38)
!1242 = !DILocation(line: 89, column: 118, scope: !1243)
!1243 = !DILexicalBlockFile(scope: !1240, file: !880, discriminator: 5)
!1244 = !DILocation(line: 89, column: 133, scope: !1240)
!1245 = !DILocation(line: 89, column: 154, scope: !1246)
!1246 = !DILexicalBlockFile(scope: !1234, file: !880, discriminator: 3)
!1247 = !DILocation(line: 89, column: 154, scope: !1248)
!1248 = !DILexicalBlockFile(scope: !1234, file: !880, discriminator: 4)
!1249 = !DILocation(line: 91, column: 39, scope: !1105)
!1250 = !DILocation(line: 91, column: 47, scope: !1105)
!1251 = !DILocation(line: 91, column: 55, scope: !1105)
!1252 = !DILocation(line: 91, column: 15, scope: !1105)
!1253 = !DILocation(line: 91, column: 13, scope: !1105)
!1254 = !DILocation(line: 92, column: 2, scope: !1105)
!1255 = !DILocation(line: 92, column: 32, scope: !1212)
!1256 = !DILocation(line: 92, column: 20, scope: !1212)
!1257 = !DILocation(line: 92, column: 18, scope: !1212)
!1258 = !DILocation(line: 92, column: 2, scope: !1212)
!1259 = !DILocation(line: 93, column: 26, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1105, file: !880, line: 92, column: 38)
!1261 = !DILocation(line: 93, column: 34, scope: !1260)
!1262 = !DILocation(line: 93, column: 42, scope: !1260)
!1263 = !DILocation(line: 93, column: 3, scope: !1260)
!1264 = !DILocation(line: 94, column: 44, scope: !1260)
!1265 = !DILocation(line: 94, column: 52, scope: !1260)
!1266 = !DILocation(line: 95, column: 8, scope: !1260)
!1267 = !DILocation(line: 94, column: 3, scope: !1260)
!1268 = !DILocation(line: 92, column: 2, scope: !1215)
!1269 = distinct !{!1269, !1254}
!1270 = !DILocation(line: 98, column: 13, scope: !1105)
!1271 = !DILocation(line: 98, column: 2, scope: !1105)
!1272 = !DILocation(line: 99, column: 18, scope: !1105)
!1273 = !DILocation(line: 99, column: 2, scope: !1105)
!1274 = !DILocation(line: 100, column: 1, scope: !1105)
!1275 = !DILocation(line: 100, column: 1, scope: !1212)
!1276 = distinct !DISubprogram(name: "cmd_notice", scope: !880, file: !880, line: 102, type: !963, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !935)
!1277 = !DILocalVariable(name: "data", arg: 1, scope: !1276, file: !880, line: 102, type: !623)
!1278 = !DILocation(line: 102, column: 36, scope: !1276)
!1279 = !DILocalVariable(name: "server", arg: 2, scope: !1276, file: !880, line: 102, type: !222)
!1280 = !DILocation(line: 102, column: 58, scope: !1276)
!1281 = !DILocalVariable(name: "item", arg: 3, scope: !1276, file: !880, line: 103, type: !662)
!1282 = !DILocation(line: 103, column: 23, scope: !1276)
!1283 = !DILocalVariable(name: "target", scope: !1276, file: !880, line: 105, type: !623)
!1284 = !DILocation(line: 105, column: 14, scope: !1276)
!1285 = !DILocalVariable(name: "msg", scope: !1276, file: !880, line: 105, type: !623)
!1286 = !DILocation(line: 105, column: 23, scope: !1276)
!1287 = !DILocalVariable(name: "free_arg", scope: !1276, file: !880, line: 106, type: !221)
!1288 = !DILocation(line: 106, column: 8, scope: !1276)
!1289 = !DILocation(line: 108, column: 9, scope: !1276)
!1290 = distinct !{!1290, !1289}
!1291 = !DILocation(line: 108, column: 18, scope: !1292)
!1292 = !DILexicalBlockFile(scope: !1293, file: !880, discriminator: 1)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !880, line: 108, column: 18)
!1294 = distinct !DILexicalBlock(scope: !1276, file: !880, line: 108, column: 12)
!1295 = !DILocation(line: 108, column: 25, scope: !1292)
!1296 = !DILocation(line: 108, column: 8, scope: !1292)
!1297 = !DILocation(line: 108, column: 92, scope: !1298)
!1298 = !DILexicalBlockFile(scope: !1293, file: !880, discriminator: 2)
!1299 = !DILocation(line: 108, column: 74, scope: !1298)
!1300 = !DILocation(line: 108, column: 59, scope: !1298)
!1301 = !DILocation(line: 108, column: 58, scope: !1298)
!1302 = !DILocation(line: 108, column: 33, scope: !1303)
!1303 = !DILexicalBlockFile(scope: !1298, file: !880, discriminator: 12)
!1304 = !DILocation(line: 108, column: 14, scope: !1298)
!1305 = !DILocation(line: 108, column: 18, scope: !1298)
!1306 = !DILocation(line: 108, column: 13, scope: !1307)
!1307 = !DILexicalBlockFile(scope: !1293, file: !880, discriminator: 3)
!1308 = !DILocation(line: 108, column: 18, scope: !1309)
!1309 = !DILexicalBlockFile(scope: !1294, file: !880, discriminator: 4)
!1310 = !DILocation(line: 108, column: 35, scope: !1311)
!1311 = !DILexicalBlockFile(scope: !1293, file: !880, discriminator: 5)
!1312 = !DILocation(line: 108, column: 47, scope: !1313)
!1313 = !DILexicalBlockFile(scope: !1314, file: !880, discriminator: 6)
!1314 = distinct !DILexicalBlock(scope: !1294, file: !880, line: 108, column: 47)
!1315 = !DILocation(line: 108, column: 54, scope: !1313)
!1316 = !DILocation(line: 108, column: 8, scope: !1313)
!1317 = !DILocation(line: 108, column: 13, scope: !1318)
!1318 = !DILexicalBlockFile(scope: !1314, file: !880, discriminator: 7)
!1319 = !DILocation(line: 108, column: 22, scope: !1318)
!1320 = !DILocation(line: 108, column: 12, scope: !1318)
!1321 = !DILocation(line: 108, column: 47, scope: !1318)
!1322 = !DILocation(line: 108, column: 33, scope: !1323)
!1323 = !DILexicalBlockFile(scope: !1314, file: !880, discriminator: 8)
!1324 = distinct !{!1324, !1325}
!1325 = !DILocation(line: 108, column: 33, scope: !1314)
!1326 = !DILocation(line: 108, column: 38, scope: !1327)
!1327 = !DILexicalBlockFile(scope: !1328, file: !880, discriminator: 9)
!1328 = distinct !DILexicalBlock(scope: !1314, file: !880, line: 108, column: 36)
!1329 = !DILocation(line: 108, column: 116, scope: !1330)
!1330 = !DILexicalBlockFile(scope: !1327, file: !880, discriminator: 13)
!1331 = !DILocation(line: 108, column: 131, scope: !1327)
!1332 = !DILocation(line: 108, column: 139, scope: !1333)
!1333 = !DILexicalBlockFile(scope: !1328, file: !880, discriminator: 10)
!1334 = !DILocation(line: 108, column: 152, scope: !1335)
!1335 = !DILexicalBlockFile(scope: !1294, file: !880, discriminator: 11)
!1336 = !DILocation(line: 110, column: 22, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1276, file: !880, line: 110, column: 6)
!1338 = !DILocation(line: 110, column: 7, scope: !1337)
!1339 = !DILocation(line: 110, column: 6, scope: !1276)
!1340 = !DILocation(line: 112, column: 3, scope: !1337)
!1341 = !DILocation(line: 113, column: 16, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1276, file: !880, line: 113, column: 6)
!1343 = !DILocation(line: 113, column: 6, scope: !1342)
!1344 = !DILocation(line: 113, column: 29, scope: !1342)
!1345 = !DILocation(line: 113, column: 6, scope: !1276)
!1346 = !DILocation(line: 114, column: 12, scope: !1342)
!1347 = !DILocation(line: 114, column: 17, scope: !1342)
!1348 = !DILocation(line: 114, column: 12, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !1342, file: !880, discriminator: 1)
!1350 = !DILocation(line: 114, column: 33, scope: !1351)
!1351 = !DILexicalBlockFile(scope: !1342, file: !880, discriminator: 2)
!1352 = !DILocation(line: 114, column: 40, scope: !1351)
!1353 = !DILocation(line: 114, column: 51, scope: !1351)
!1354 = !DILocation(line: 114, column: 32, scope: !1351)
!1355 = !DILocation(line: 114, column: 12, scope: !1351)
!1356 = !DILocation(line: 114, column: 12, scope: !1357)
!1357 = !DILexicalBlockFile(scope: !1342, file: !880, discriminator: 3)
!1358 = !DILocation(line: 114, column: 10, scope: !1357)
!1359 = !DILocation(line: 114, column: 3, scope: !1357)
!1360 = !DILocation(line: 116, column: 7, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1276, file: !880, line: 116, column: 6)
!1362 = !DILocation(line: 116, column: 6, scope: !1361)
!1363 = !DILocation(line: 116, column: 14, scope: !1361)
!1364 = !DILocation(line: 116, column: 22, scope: !1361)
!1365 = !DILocation(line: 116, column: 26, scope: !1366)
!1366 = !DILexicalBlockFile(scope: !1361, file: !880, discriminator: 1)
!1367 = !DILocation(line: 116, column: 25, scope: !1366)
!1368 = !DILocation(line: 116, column: 30, scope: !1366)
!1369 = !DILocation(line: 116, column: 6, scope: !1366)
!1370 = !DILocation(line: 117, column: 3, scope: !1361)
!1371 = distinct !{!1371, !1370}
!1372 = !DILocation(line: 117, column: 24, scope: !1373)
!1373 = !DILexicalBlockFile(scope: !1374, file: !880, discriminator: 1)
!1374 = distinct !DILexicalBlock(scope: !1361, file: !880, line: 117, column: 6)
!1375 = !DILocation(line: 117, column: 8, scope: !1373)
!1376 = !DILocation(line: 117, column: 35, scope: !1373)
!1377 = distinct !{!1377, !1378}
!1378 = !DILocation(line: 117, column: 35, scope: !1374)
!1379 = !DILocation(line: 117, column: 40, scope: !1380)
!1380 = !DILexicalBlockFile(scope: !1381, file: !880, discriminator: 2)
!1381 = distinct !DILexicalBlock(scope: !1374, file: !880, line: 117, column: 38)
!1382 = !DILocation(line: 117, column: 122, scope: !1383)
!1383 = !DILexicalBlockFile(scope: !1380, file: !880, discriminator: 5)
!1384 = !DILocation(line: 117, column: 137, scope: !1380)
!1385 = !DILocation(line: 117, column: 158, scope: !1386)
!1386 = !DILexicalBlockFile(scope: !1374, file: !880, discriminator: 3)
!1387 = !DILocation(line: 117, column: 158, scope: !1388)
!1388 = !DILexicalBlockFile(scope: !1374, file: !880, discriminator: 4)
!1389 = !DILocation(line: 119, column: 43, scope: !1276)
!1390 = !DILocation(line: 119, column: 51, scope: !1276)
!1391 = !DILocation(line: 119, column: 56, scope: !1276)
!1392 = !DILocation(line: 119, column: 2, scope: !1276)
!1393 = !DILocation(line: 121, column: 18, scope: !1276)
!1394 = !DILocation(line: 121, column: 2, scope: !1276)
!1395 = !DILocation(line: 122, column: 1, scope: !1276)
!1396 = !DILocation(line: 122, column: 1, scope: !1397)
!1397 = !DILexicalBlockFile(scope: !1276, file: !880, discriminator: 1)
!1398 = distinct !DISubprogram(name: "cmd_ctcp", scope: !880, file: !880, line: 124, type: !963, isLocal: true, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !935)
!1399 = !DILocalVariable(name: "data", arg: 1, scope: !1398, file: !880, line: 124, type: !623)
!1400 = !DILocation(line: 124, column: 34, scope: !1398)
!1401 = !DILocalVariable(name: "server", arg: 2, scope: !1398, file: !880, line: 124, type: !222)
!1402 = !DILocation(line: 124, column: 56, scope: !1398)
!1403 = !DILocalVariable(name: "item", arg: 3, scope: !1398, file: !880, line: 125, type: !662)
!1404 = !DILocation(line: 125, column: 21, scope: !1398)
!1405 = !DILocalVariable(name: "target", scope: !1398, file: !880, line: 127, type: !623)
!1406 = !DILocation(line: 127, column: 14, scope: !1398)
!1407 = !DILocalVariable(name: "ctcpcmd", scope: !1398, file: !880, line: 128, type: !243)
!1408 = !DILocation(line: 128, column: 8, scope: !1398)
!1409 = !DILocalVariable(name: "ctcpdata", scope: !1398, file: !880, line: 128, type: !243)
!1410 = !DILocation(line: 128, column: 18, scope: !1398)
!1411 = !DILocalVariable(name: "free_arg", scope: !1398, file: !880, line: 129, type: !221)
!1412 = !DILocation(line: 129, column: 8, scope: !1398)
!1413 = !DILocation(line: 131, column: 9, scope: !1398)
!1414 = distinct !{!1414, !1413}
!1415 = !DILocation(line: 131, column: 18, scope: !1416)
!1416 = !DILexicalBlockFile(scope: !1417, file: !880, discriminator: 1)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !880, line: 131, column: 18)
!1418 = distinct !DILexicalBlock(scope: !1398, file: !880, line: 131, column: 12)
!1419 = !DILocation(line: 131, column: 25, scope: !1416)
!1420 = !DILocation(line: 131, column: 8, scope: !1416)
!1421 = !DILocation(line: 131, column: 92, scope: !1422)
!1422 = !DILexicalBlockFile(scope: !1417, file: !880, discriminator: 2)
!1423 = !DILocation(line: 131, column: 74, scope: !1422)
!1424 = !DILocation(line: 131, column: 59, scope: !1422)
!1425 = !DILocation(line: 131, column: 58, scope: !1422)
!1426 = !DILocation(line: 131, column: 33, scope: !1427)
!1427 = !DILexicalBlockFile(scope: !1422, file: !880, discriminator: 12)
!1428 = !DILocation(line: 131, column: 14, scope: !1422)
!1429 = !DILocation(line: 131, column: 18, scope: !1422)
!1430 = !DILocation(line: 131, column: 13, scope: !1431)
!1431 = !DILexicalBlockFile(scope: !1417, file: !880, discriminator: 3)
!1432 = !DILocation(line: 131, column: 18, scope: !1433)
!1433 = !DILexicalBlockFile(scope: !1418, file: !880, discriminator: 4)
!1434 = !DILocation(line: 131, column: 35, scope: !1435)
!1435 = !DILexicalBlockFile(scope: !1417, file: !880, discriminator: 5)
!1436 = !DILocation(line: 131, column: 47, scope: !1437)
!1437 = !DILexicalBlockFile(scope: !1438, file: !880, discriminator: 6)
!1438 = distinct !DILexicalBlock(scope: !1418, file: !880, line: 131, column: 47)
!1439 = !DILocation(line: 131, column: 54, scope: !1437)
!1440 = !DILocation(line: 131, column: 8, scope: !1437)
!1441 = !DILocation(line: 131, column: 13, scope: !1442)
!1442 = !DILexicalBlockFile(scope: !1438, file: !880, discriminator: 7)
!1443 = !DILocation(line: 131, column: 22, scope: !1442)
!1444 = !DILocation(line: 131, column: 12, scope: !1442)
!1445 = !DILocation(line: 131, column: 47, scope: !1442)
!1446 = !DILocation(line: 131, column: 33, scope: !1447)
!1447 = !DILexicalBlockFile(scope: !1438, file: !880, discriminator: 8)
!1448 = distinct !{!1448, !1449}
!1449 = !DILocation(line: 131, column: 33, scope: !1438)
!1450 = !DILocation(line: 131, column: 38, scope: !1451)
!1451 = !DILexicalBlockFile(scope: !1452, file: !880, discriminator: 9)
!1452 = distinct !DILexicalBlock(scope: !1438, file: !880, line: 131, column: 36)
!1453 = !DILocation(line: 131, column: 116, scope: !1454)
!1454 = !DILexicalBlockFile(scope: !1451, file: !880, discriminator: 13)
!1455 = !DILocation(line: 131, column: 131, scope: !1451)
!1456 = !DILocation(line: 131, column: 139, scope: !1457)
!1457 = !DILexicalBlockFile(scope: !1452, file: !880, discriminator: 10)
!1458 = !DILocation(line: 131, column: 152, scope: !1459)
!1459 = !DILexicalBlockFile(scope: !1418, file: !880, discriminator: 11)
!1460 = !DILocation(line: 133, column: 22, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1398, file: !880, line: 133, column: 6)
!1462 = !DILocation(line: 133, column: 7, scope: !1461)
!1463 = !DILocation(line: 133, column: 6, scope: !1398)
!1464 = !DILocation(line: 135, column: 3, scope: !1461)
!1465 = !DILocation(line: 136, column: 16, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1398, file: !880, line: 136, column: 6)
!1467 = !DILocation(line: 136, column: 6, scope: !1466)
!1468 = !DILocation(line: 136, column: 29, scope: !1466)
!1469 = !DILocation(line: 136, column: 6, scope: !1398)
!1470 = !DILocation(line: 137, column: 12, scope: !1466)
!1471 = !DILocation(line: 137, column: 17, scope: !1466)
!1472 = !DILocation(line: 137, column: 12, scope: !1473)
!1473 = !DILexicalBlockFile(scope: !1466, file: !880, discriminator: 1)
!1474 = !DILocation(line: 137, column: 33, scope: !1475)
!1475 = !DILexicalBlockFile(scope: !1466, file: !880, discriminator: 2)
!1476 = !DILocation(line: 137, column: 40, scope: !1475)
!1477 = !DILocation(line: 137, column: 51, scope: !1475)
!1478 = !DILocation(line: 137, column: 32, scope: !1475)
!1479 = !DILocation(line: 137, column: 12, scope: !1475)
!1480 = !DILocation(line: 137, column: 12, scope: !1481)
!1481 = !DILexicalBlockFile(scope: !1466, file: !880, discriminator: 3)
!1482 = !DILocation(line: 137, column: 10, scope: !1481)
!1483 = !DILocation(line: 137, column: 3, scope: !1481)
!1484 = !DILocation(line: 138, column: 7, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1398, file: !880, line: 138, column: 6)
!1486 = !DILocation(line: 138, column: 6, scope: !1485)
!1487 = !DILocation(line: 138, column: 14, scope: !1485)
!1488 = !DILocation(line: 138, column: 22, scope: !1485)
!1489 = !DILocation(line: 138, column: 26, scope: !1490)
!1490 = !DILexicalBlockFile(scope: !1485, file: !880, discriminator: 1)
!1491 = !DILocation(line: 138, column: 25, scope: !1490)
!1492 = !DILocation(line: 138, column: 34, scope: !1490)
!1493 = !DILocation(line: 138, column: 6, scope: !1490)
!1494 = !DILocation(line: 139, column: 3, scope: !1485)
!1495 = distinct !{!1495, !1494}
!1496 = !DILocation(line: 139, column: 24, scope: !1497)
!1497 = !DILexicalBlockFile(scope: !1498, file: !880, discriminator: 1)
!1498 = distinct !DILexicalBlock(scope: !1485, file: !880, line: 139, column: 6)
!1499 = !DILocation(line: 139, column: 8, scope: !1497)
!1500 = !DILocation(line: 139, column: 35, scope: !1497)
!1501 = distinct !{!1501, !1502}
!1502 = !DILocation(line: 139, column: 35, scope: !1498)
!1503 = !DILocation(line: 139, column: 40, scope: !1504)
!1504 = !DILexicalBlockFile(scope: !1505, file: !880, discriminator: 2)
!1505 = distinct !DILexicalBlock(scope: !1498, file: !880, line: 139, column: 38)
!1506 = !DILocation(line: 139, column: 122, scope: !1507)
!1507 = !DILexicalBlockFile(scope: !1504, file: !880, discriminator: 5)
!1508 = !DILocation(line: 139, column: 137, scope: !1504)
!1509 = !DILocation(line: 139, column: 158, scope: !1510)
!1510 = !DILexicalBlockFile(scope: !1498, file: !880, discriminator: 3)
!1511 = !DILocation(line: 139, column: 158, scope: !1512)
!1512 = !DILexicalBlockFile(scope: !1498, file: !880, discriminator: 4)
!1513 = !DILocation(line: 141, column: 7, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1398, file: !880, line: 141, column: 6)
!1515 = !DILocation(line: 141, column: 6, scope: !1514)
!1516 = !DILocation(line: 141, column: 14, scope: !1514)
!1517 = !DILocation(line: 141, column: 6, scope: !1398)
!1518 = !DILocation(line: 143, column: 19, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1514, file: !880, line: 141, column: 22)
!1520 = !DILocation(line: 143, column: 3, scope: !1519)
!1521 = !DILocation(line: 144, column: 3, scope: !1519)
!1522 = !DILocation(line: 147, column: 14, scope: !1398)
!1523 = !DILocation(line: 147, column: 2, scope: !1398)
!1524 = !DILocation(line: 149, column: 7, scope: !1398)
!1525 = !DILocation(line: 149, column: 15, scope: !1398)
!1526 = !DILocation(line: 149, column: 24, scope: !1398)
!1527 = !DILocation(line: 149, column: 34, scope: !1398)
!1528 = !DILocation(line: 148, column: 2, scope: !1398)
!1529 = !DILocation(line: 151, column: 18, scope: !1398)
!1530 = !DILocation(line: 151, column: 2, scope: !1398)
!1531 = !DILocation(line: 152, column: 1, scope: !1398)
!1532 = !DILocation(line: 152, column: 1, scope: !1533)
!1533 = !DILexicalBlockFile(scope: !1398, file: !880, discriminator: 1)
!1534 = distinct !DISubprogram(name: "cmd_nctcp", scope: !880, file: !880, line: 154, type: !963, isLocal: true, isDefinition: true, scopeLine: 156, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !935)
!1535 = !DILocalVariable(name: "data", arg: 1, scope: !1534, file: !880, line: 154, type: !623)
!1536 = !DILocation(line: 154, column: 35, scope: !1534)
!1537 = !DILocalVariable(name: "server", arg: 2, scope: !1534, file: !880, line: 154, type: !222)
!1538 = !DILocation(line: 154, column: 57, scope: !1534)
!1539 = !DILocalVariable(name: "item", arg: 3, scope: !1534, file: !880, line: 155, type: !662)
!1540 = !DILocation(line: 155, column: 22, scope: !1534)
!1541 = !DILocalVariable(name: "target", scope: !1534, file: !880, line: 157, type: !623)
!1542 = !DILocation(line: 157, column: 14, scope: !1534)
!1543 = !DILocalVariable(name: "text", scope: !1534, file: !880, line: 157, type: !623)
!1544 = !DILocation(line: 157, column: 23, scope: !1534)
!1545 = !DILocalVariable(name: "free_arg", scope: !1534, file: !880, line: 158, type: !221)
!1546 = !DILocation(line: 158, column: 8, scope: !1534)
!1547 = !DILocation(line: 160, column: 9, scope: !1534)
!1548 = distinct !{!1548, !1547}
!1549 = !DILocation(line: 160, column: 18, scope: !1550)
!1550 = !DILexicalBlockFile(scope: !1551, file: !880, discriminator: 1)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !880, line: 160, column: 18)
!1552 = distinct !DILexicalBlock(scope: !1534, file: !880, line: 160, column: 12)
!1553 = !DILocation(line: 160, column: 25, scope: !1550)
!1554 = !DILocation(line: 160, column: 8, scope: !1550)
!1555 = !DILocation(line: 160, column: 92, scope: !1556)
!1556 = !DILexicalBlockFile(scope: !1551, file: !880, discriminator: 2)
!1557 = !DILocation(line: 160, column: 74, scope: !1556)
!1558 = !DILocation(line: 160, column: 59, scope: !1556)
!1559 = !DILocation(line: 160, column: 58, scope: !1556)
!1560 = !DILocation(line: 160, column: 33, scope: !1561)
!1561 = !DILexicalBlockFile(scope: !1556, file: !880, discriminator: 12)
!1562 = !DILocation(line: 160, column: 14, scope: !1556)
!1563 = !DILocation(line: 160, column: 18, scope: !1556)
!1564 = !DILocation(line: 160, column: 13, scope: !1565)
!1565 = !DILexicalBlockFile(scope: !1551, file: !880, discriminator: 3)
!1566 = !DILocation(line: 160, column: 18, scope: !1567)
!1567 = !DILexicalBlockFile(scope: !1552, file: !880, discriminator: 4)
!1568 = !DILocation(line: 160, column: 35, scope: !1569)
!1569 = !DILexicalBlockFile(scope: !1551, file: !880, discriminator: 5)
!1570 = !DILocation(line: 160, column: 47, scope: !1571)
!1571 = !DILexicalBlockFile(scope: !1572, file: !880, discriminator: 6)
!1572 = distinct !DILexicalBlock(scope: !1552, file: !880, line: 160, column: 47)
!1573 = !DILocation(line: 160, column: 54, scope: !1571)
!1574 = !DILocation(line: 160, column: 8, scope: !1571)
!1575 = !DILocation(line: 160, column: 13, scope: !1576)
!1576 = !DILexicalBlockFile(scope: !1572, file: !880, discriminator: 7)
!1577 = !DILocation(line: 160, column: 22, scope: !1576)
!1578 = !DILocation(line: 160, column: 12, scope: !1576)
!1579 = !DILocation(line: 160, column: 47, scope: !1576)
!1580 = !DILocation(line: 160, column: 33, scope: !1581)
!1581 = !DILexicalBlockFile(scope: !1572, file: !880, discriminator: 8)
!1582 = distinct !{!1582, !1583}
!1583 = !DILocation(line: 160, column: 33, scope: !1572)
!1584 = !DILocation(line: 160, column: 38, scope: !1585)
!1585 = !DILexicalBlockFile(scope: !1586, file: !880, discriminator: 9)
!1586 = distinct !DILexicalBlock(scope: !1572, file: !880, line: 160, column: 36)
!1587 = !DILocation(line: 160, column: 116, scope: !1588)
!1588 = !DILexicalBlockFile(scope: !1585, file: !880, discriminator: 13)
!1589 = !DILocation(line: 160, column: 131, scope: !1585)
!1590 = !DILocation(line: 160, column: 139, scope: !1591)
!1591 = !DILexicalBlockFile(scope: !1586, file: !880, discriminator: 10)
!1592 = !DILocation(line: 160, column: 152, scope: !1593)
!1593 = !DILexicalBlockFile(scope: !1552, file: !880, discriminator: 11)
!1594 = !DILocation(line: 162, column: 22, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1534, file: !880, line: 162, column: 6)
!1596 = !DILocation(line: 162, column: 7, scope: !1595)
!1597 = !DILocation(line: 162, column: 6, scope: !1534)
!1598 = !DILocation(line: 164, column: 3, scope: !1595)
!1599 = !DILocation(line: 165, column: 16, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1534, file: !880, line: 165, column: 6)
!1601 = !DILocation(line: 165, column: 6, scope: !1600)
!1602 = !DILocation(line: 165, column: 29, scope: !1600)
!1603 = !DILocation(line: 165, column: 6, scope: !1534)
!1604 = !DILocation(line: 166, column: 12, scope: !1600)
!1605 = !DILocation(line: 166, column: 17, scope: !1600)
!1606 = !DILocation(line: 166, column: 12, scope: !1607)
!1607 = !DILexicalBlockFile(scope: !1600, file: !880, discriminator: 1)
!1608 = !DILocation(line: 166, column: 33, scope: !1609)
!1609 = !DILexicalBlockFile(scope: !1600, file: !880, discriminator: 2)
!1610 = !DILocation(line: 166, column: 40, scope: !1609)
!1611 = !DILocation(line: 166, column: 51, scope: !1609)
!1612 = !DILocation(line: 166, column: 32, scope: !1609)
!1613 = !DILocation(line: 166, column: 12, scope: !1609)
!1614 = !DILocation(line: 166, column: 12, scope: !1615)
!1615 = !DILexicalBlockFile(scope: !1600, file: !880, discriminator: 3)
!1616 = !DILocation(line: 166, column: 10, scope: !1615)
!1617 = !DILocation(line: 166, column: 3, scope: !1615)
!1618 = !DILocation(line: 167, column: 7, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1534, file: !880, line: 167, column: 6)
!1620 = !DILocation(line: 167, column: 6, scope: !1619)
!1621 = !DILocation(line: 167, column: 14, scope: !1619)
!1622 = !DILocation(line: 167, column: 22, scope: !1619)
!1623 = !DILocation(line: 167, column: 26, scope: !1624)
!1624 = !DILexicalBlockFile(scope: !1619, file: !880, discriminator: 1)
!1625 = !DILocation(line: 167, column: 25, scope: !1624)
!1626 = !DILocation(line: 167, column: 31, scope: !1624)
!1627 = !DILocation(line: 167, column: 6, scope: !1624)
!1628 = !DILocation(line: 168, column: 3, scope: !1619)
!1629 = distinct !{!1629, !1628}
!1630 = !DILocation(line: 168, column: 24, scope: !1631)
!1631 = !DILexicalBlockFile(scope: !1632, file: !880, discriminator: 1)
!1632 = distinct !DILexicalBlock(scope: !1619, file: !880, line: 168, column: 6)
!1633 = !DILocation(line: 168, column: 8, scope: !1631)
!1634 = !DILocation(line: 168, column: 35, scope: !1631)
!1635 = distinct !{!1635, !1636}
!1636 = !DILocation(line: 168, column: 35, scope: !1632)
!1637 = !DILocation(line: 168, column: 40, scope: !1638)
!1638 = !DILexicalBlockFile(scope: !1639, file: !880, discriminator: 2)
!1639 = distinct !DILexicalBlock(scope: !1632, file: !880, line: 168, column: 38)
!1640 = !DILocation(line: 168, column: 122, scope: !1641)
!1641 = !DILexicalBlockFile(scope: !1638, file: !880, discriminator: 5)
!1642 = !DILocation(line: 168, column: 137, scope: !1638)
!1643 = !DILocation(line: 168, column: 158, scope: !1644)
!1644 = !DILexicalBlockFile(scope: !1632, file: !880, discriminator: 3)
!1645 = !DILocation(line: 168, column: 158, scope: !1646)
!1646 = !DILexicalBlockFile(scope: !1632, file: !880, discriminator: 4)
!1647 = !DILocation(line: 170, column: 43, scope: !1534)
!1648 = !DILocation(line: 170, column: 51, scope: !1534)
!1649 = !DILocation(line: 170, column: 57, scope: !1534)
!1650 = !DILocation(line: 170, column: 2, scope: !1534)
!1651 = !DILocation(line: 171, column: 18, scope: !1534)
!1652 = !DILocation(line: 171, column: 2, scope: !1534)
!1653 = !DILocation(line: 172, column: 1, scope: !1534)
!1654 = !DILocation(line: 172, column: 1, scope: !1655)
!1655 = !DILexicalBlockFile(scope: !1534, file: !880, discriminator: 1)
!1656 = distinct !DISubprogram(name: "cmd_wall", scope: !880, file: !880, line: 174, type: !963, isLocal: true, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !935)
!1657 = !DILocalVariable(name: "data", arg: 1, scope: !1656, file: !880, line: 174, type: !623)
!1658 = !DILocation(line: 174, column: 34, scope: !1656)
!1659 = !DILocalVariable(name: "server", arg: 2, scope: !1656, file: !880, line: 174, type: !222)
!1660 = !DILocation(line: 174, column: 56, scope: !1656)
!1661 = !DILocalVariable(name: "item", arg: 3, scope: !1656, file: !880, line: 175, type: !662)
!1662 = !DILocation(line: 175, column: 21, scope: !1656)
!1663 = !DILocalVariable(name: "chanrec", scope: !1656, file: !880, line: 177, type: !832)
!1664 = !DILocation(line: 177, column: 19, scope: !1656)
!1665 = !DILocalVariable(name: "channame", scope: !1656, file: !880, line: 178, type: !623)
!1666 = !DILocation(line: 178, column: 14, scope: !1656)
!1667 = !DILocalVariable(name: "msg", scope: !1656, file: !880, line: 178, type: !623)
!1668 = !DILocation(line: 178, column: 25, scope: !1656)
!1669 = !DILocalVariable(name: "free_arg", scope: !1656, file: !880, line: 179, type: !221)
!1670 = !DILocation(line: 179, column: 8, scope: !1656)
!1671 = !DILocation(line: 181, column: 9, scope: !1656)
!1672 = distinct !{!1672, !1671}
!1673 = !DILocation(line: 181, column: 18, scope: !1674)
!1674 = !DILexicalBlockFile(scope: !1675, file: !880, discriminator: 1)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !880, line: 181, column: 18)
!1676 = distinct !DILexicalBlock(scope: !1656, file: !880, line: 181, column: 12)
!1677 = !DILocation(line: 181, column: 25, scope: !1674)
!1678 = !DILocation(line: 181, column: 8, scope: !1674)
!1679 = !DILocation(line: 181, column: 92, scope: !1680)
!1680 = !DILexicalBlockFile(scope: !1675, file: !880, discriminator: 2)
!1681 = !DILocation(line: 181, column: 74, scope: !1680)
!1682 = !DILocation(line: 181, column: 59, scope: !1680)
!1683 = !DILocation(line: 181, column: 58, scope: !1680)
!1684 = !DILocation(line: 181, column: 33, scope: !1685)
!1685 = !DILexicalBlockFile(scope: !1680, file: !880, discriminator: 12)
!1686 = !DILocation(line: 181, column: 14, scope: !1680)
!1687 = !DILocation(line: 181, column: 18, scope: !1680)
!1688 = !DILocation(line: 181, column: 13, scope: !1689)
!1689 = !DILexicalBlockFile(scope: !1675, file: !880, discriminator: 3)
!1690 = !DILocation(line: 181, column: 18, scope: !1691)
!1691 = !DILexicalBlockFile(scope: !1676, file: !880, discriminator: 4)
!1692 = !DILocation(line: 181, column: 35, scope: !1693)
!1693 = !DILexicalBlockFile(scope: !1675, file: !880, discriminator: 5)
!1694 = !DILocation(line: 181, column: 47, scope: !1695)
!1695 = !DILexicalBlockFile(scope: !1696, file: !880, discriminator: 6)
!1696 = distinct !DILexicalBlock(scope: !1676, file: !880, line: 181, column: 47)
!1697 = !DILocation(line: 181, column: 54, scope: !1695)
!1698 = !DILocation(line: 181, column: 8, scope: !1695)
!1699 = !DILocation(line: 181, column: 13, scope: !1700)
!1700 = !DILexicalBlockFile(scope: !1696, file: !880, discriminator: 7)
!1701 = !DILocation(line: 181, column: 22, scope: !1700)
!1702 = !DILocation(line: 181, column: 12, scope: !1700)
!1703 = !DILocation(line: 181, column: 47, scope: !1700)
!1704 = !DILocation(line: 181, column: 33, scope: !1705)
!1705 = !DILexicalBlockFile(scope: !1696, file: !880, discriminator: 8)
!1706 = distinct !{!1706, !1707}
!1707 = !DILocation(line: 181, column: 33, scope: !1696)
!1708 = !DILocation(line: 181, column: 38, scope: !1709)
!1709 = !DILexicalBlockFile(scope: !1710, file: !880, discriminator: 9)
!1710 = distinct !DILexicalBlock(scope: !1696, file: !880, line: 181, column: 36)
!1711 = !DILocation(line: 181, column: 116, scope: !1712)
!1712 = !DILexicalBlockFile(scope: !1709, file: !880, discriminator: 13)
!1713 = !DILocation(line: 181, column: 131, scope: !1709)
!1714 = !DILocation(line: 181, column: 139, scope: !1715)
!1715 = !DILexicalBlockFile(scope: !1710, file: !880, discriminator: 10)
!1716 = !DILocation(line: 181, column: 152, scope: !1717)
!1717 = !DILexicalBlockFile(scope: !1676, file: !880, discriminator: 11)
!1718 = !DILocation(line: 183, column: 22, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1656, file: !880, line: 183, column: 6)
!1720 = !DILocation(line: 184, column: 20, scope: !1719)
!1721 = !DILocation(line: 183, column: 7, scope: !1719)
!1722 = !DILocation(line: 183, column: 6, scope: !1656)
!1723 = !DILocation(line: 185, column: 3, scope: !1719)
!1724 = !DILocation(line: 186, column: 7, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1656, file: !880, line: 186, column: 6)
!1726 = !DILocation(line: 186, column: 6, scope: !1725)
!1727 = !DILocation(line: 186, column: 11, scope: !1725)
!1728 = !DILocation(line: 186, column: 6, scope: !1656)
!1729 = !DILocation(line: 186, column: 20, scope: !1730)
!1730 = !DILexicalBlockFile(scope: !1725, file: !880, discriminator: 1)
!1731 = distinct !{!1731, !1732}
!1732 = !DILocation(line: 186, column: 20, scope: !1725)
!1733 = !DILocation(line: 186, column: 41, scope: !1734)
!1734 = !DILexicalBlockFile(scope: !1735, file: !880, discriminator: 2)
!1735 = distinct !DILexicalBlock(scope: !1725, file: !880, line: 186, column: 23)
!1736 = !DILocation(line: 186, column: 25, scope: !1734)
!1737 = !DILocation(line: 186, column: 52, scope: !1734)
!1738 = distinct !{!1738, !1739}
!1739 = !DILocation(line: 186, column: 52, scope: !1735)
!1740 = !DILocation(line: 186, column: 57, scope: !1741)
!1741 = !DILexicalBlockFile(scope: !1742, file: !880, discriminator: 3)
!1742 = distinct !DILexicalBlock(scope: !1735, file: !880, line: 186, column: 55)
!1743 = !DILocation(line: 186, column: 139, scope: !1744)
!1744 = !DILexicalBlockFile(scope: !1741, file: !880, discriminator: 6)
!1745 = !DILocation(line: 186, column: 154, scope: !1741)
!1746 = !DILocation(line: 186, column: 175, scope: !1747)
!1747 = !DILexicalBlockFile(scope: !1735, file: !880, discriminator: 4)
!1748 = !DILocation(line: 186, column: 175, scope: !1749)
!1749 = !DILexicalBlockFile(scope: !1735, file: !880, discriminator: 5)
!1750 = !DILocation(line: 188, column: 147, scope: !1656)
!1751 = !DILocation(line: 188, column: 129, scope: !1656)
!1752 = !DILocation(line: 188, column: 114, scope: !1656)
!1753 = !DILocation(line: 188, column: 25, scope: !1656)
!1754 = !DILocation(line: 188, column: 100, scope: !1755)
!1755 = !DILexicalBlockFile(scope: !1656, file: !880, discriminator: 1)
!1756 = !DILocation(line: 188, column: 100, scope: !1656)
!1757 = !DILocation(line: 188, column: 75, scope: !1758)
!1758 = !DILexicalBlockFile(scope: !1656, file: !880, discriminator: 2)
!1759 = !DILocation(line: 188, column: 59, scope: !1656)
!1760 = !DILocation(line: 188, column: 58, scope: !1656)
!1761 = !DILocation(line: 188, column: 33, scope: !1762)
!1762 = !DILexicalBlockFile(scope: !1656, file: !880, discriminator: 3)
!1763 = !DILocation(line: 188, column: 13, scope: !1656)
!1764 = !DILocation(line: 188, column: 10, scope: !1656)
!1765 = !DILocation(line: 189, column: 6, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1656, file: !880, line: 189, column: 6)
!1767 = !DILocation(line: 189, column: 14, scope: !1766)
!1768 = !DILocation(line: 189, column: 6, scope: !1656)
!1769 = !DILocation(line: 189, column: 22, scope: !1770)
!1770 = !DILexicalBlockFile(scope: !1766, file: !880, discriminator: 1)
!1771 = distinct !{!1771, !1772}
!1772 = !DILocation(line: 189, column: 22, scope: !1766)
!1773 = !DILocation(line: 189, column: 43, scope: !1774)
!1774 = !DILexicalBlockFile(scope: !1775, file: !880, discriminator: 2)
!1775 = distinct !DILexicalBlock(scope: !1766, file: !880, line: 189, column: 25)
!1776 = !DILocation(line: 189, column: 27, scope: !1774)
!1777 = !DILocation(line: 189, column: 54, scope: !1774)
!1778 = distinct !{!1778, !1779}
!1779 = !DILocation(line: 189, column: 54, scope: !1775)
!1780 = !DILocation(line: 189, column: 59, scope: !1781)
!1781 = !DILexicalBlockFile(scope: !1782, file: !880, discriminator: 3)
!1782 = distinct !DILexicalBlock(scope: !1775, file: !880, line: 189, column: 57)
!1783 = !DILocation(line: 189, column: 138, scope: !1784)
!1784 = !DILexicalBlockFile(scope: !1781, file: !880, discriminator: 6)
!1785 = !DILocation(line: 189, column: 153, scope: !1781)
!1786 = !DILocation(line: 189, column: 174, scope: !1787)
!1787 = !DILexicalBlockFile(scope: !1775, file: !880, discriminator: 4)
!1788 = !DILocation(line: 189, column: 174, scope: !1789)
!1789 = !DILexicalBlockFile(scope: !1775, file: !880, discriminator: 5)
!1790 = !DILocation(line: 191, column: 41, scope: !1656)
!1791 = !DILocation(line: 191, column: 49, scope: !1656)
!1792 = !DILocation(line: 192, column: 7, scope: !1656)
!1793 = !DILocation(line: 192, column: 16, scope: !1656)
!1794 = !DILocation(line: 191, column: 2, scope: !1656)
!1795 = !DILocation(line: 194, column: 18, scope: !1656)
!1796 = !DILocation(line: 194, column: 2, scope: !1656)
!1797 = !DILocation(line: 195, column: 1, scope: !1656)
!1798 = !DILocation(line: 195, column: 1, scope: !1755)
!1799 = distinct !DISubprogram(name: "cmd_ban", scope: !880, file: !880, line: 240, type: !963, isLocal: true, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !935)
!1800 = !DILocalVariable(name: "data", arg: 1, scope: !1799, file: !880, line: 240, type: !623)
!1801 = !DILocation(line: 240, column: 33, scope: !1799)
!1802 = !DILocalVariable(name: "server", arg: 2, scope: !1799, file: !880, line: 240, type: !222)
!1803 = !DILocation(line: 240, column: 55, scope: !1799)
!1804 = !DILocalVariable(name: "item", arg: 3, scope: !1799, file: !880, line: 241, type: !662)
!1805 = !DILocation(line: 241, column: 20, scope: !1799)
!1806 = !DILocalVariable(name: "chanrec", scope: !1799, file: !880, line: 243, type: !832)
!1807 = !DILocation(line: 243, column: 19, scope: !1799)
!1808 = !DILocalVariable(name: "channel", scope: !1799, file: !880, line: 244, type: !243)
!1809 = !DILocation(line: 244, column: 8, scope: !1799)
!1810 = !DILocalVariable(name: "nicks", scope: !1799, file: !880, line: 244, type: !243)
!1811 = !DILocation(line: 244, column: 18, scope: !1799)
!1812 = !DILocalVariable(name: "free_arg", scope: !1799, file: !880, line: 245, type: !221)
!1813 = !DILocation(line: 245, column: 8, scope: !1799)
!1814 = !DILocation(line: 247, column: 9, scope: !1799)
!1815 = distinct !{!1815, !1814}
!1816 = !DILocation(line: 247, column: 18, scope: !1817)
!1817 = !DILexicalBlockFile(scope: !1818, file: !880, discriminator: 1)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !880, line: 247, column: 18)
!1819 = distinct !DILexicalBlock(scope: !1799, file: !880, line: 247, column: 12)
!1820 = !DILocation(line: 247, column: 25, scope: !1817)
!1821 = !DILocation(line: 247, column: 8, scope: !1817)
!1822 = !DILocation(line: 247, column: 92, scope: !1823)
!1823 = !DILexicalBlockFile(scope: !1818, file: !880, discriminator: 2)
!1824 = !DILocation(line: 247, column: 74, scope: !1823)
!1825 = !DILocation(line: 247, column: 59, scope: !1823)
!1826 = !DILocation(line: 247, column: 58, scope: !1823)
!1827 = !DILocation(line: 247, column: 33, scope: !1828)
!1828 = !DILexicalBlockFile(scope: !1823, file: !880, discriminator: 12)
!1829 = !DILocation(line: 247, column: 14, scope: !1823)
!1830 = !DILocation(line: 247, column: 18, scope: !1823)
!1831 = !DILocation(line: 247, column: 13, scope: !1832)
!1832 = !DILexicalBlockFile(scope: !1818, file: !880, discriminator: 3)
!1833 = !DILocation(line: 247, column: 18, scope: !1834)
!1834 = !DILexicalBlockFile(scope: !1819, file: !880, discriminator: 4)
!1835 = !DILocation(line: 247, column: 35, scope: !1836)
!1836 = !DILexicalBlockFile(scope: !1818, file: !880, discriminator: 5)
!1837 = !DILocation(line: 247, column: 47, scope: !1838)
!1838 = !DILexicalBlockFile(scope: !1839, file: !880, discriminator: 6)
!1839 = distinct !DILexicalBlock(scope: !1819, file: !880, line: 247, column: 47)
!1840 = !DILocation(line: 247, column: 54, scope: !1838)
!1841 = !DILocation(line: 247, column: 8, scope: !1838)
!1842 = !DILocation(line: 247, column: 13, scope: !1843)
!1843 = !DILexicalBlockFile(scope: !1839, file: !880, discriminator: 7)
!1844 = !DILocation(line: 247, column: 22, scope: !1843)
!1845 = !DILocation(line: 247, column: 12, scope: !1843)
!1846 = !DILocation(line: 247, column: 47, scope: !1843)
!1847 = !DILocation(line: 247, column: 33, scope: !1848)
!1848 = !DILexicalBlockFile(scope: !1839, file: !880, discriminator: 8)
!1849 = distinct !{!1849, !1850}
!1850 = !DILocation(line: 247, column: 33, scope: !1839)
!1851 = !DILocation(line: 247, column: 38, scope: !1852)
!1852 = !DILexicalBlockFile(scope: !1853, file: !880, discriminator: 9)
!1853 = distinct !DILexicalBlock(scope: !1839, file: !880, line: 247, column: 36)
!1854 = !DILocation(line: 247, column: 116, scope: !1855)
!1855 = !DILexicalBlockFile(scope: !1852, file: !880, discriminator: 13)
!1856 = !DILocation(line: 247, column: 131, scope: !1852)
!1857 = !DILocation(line: 247, column: 139, scope: !1858)
!1858 = !DILexicalBlockFile(scope: !1853, file: !880, discriminator: 10)
!1859 = !DILocation(line: 247, column: 152, scope: !1860)
!1860 = !DILexicalBlockFile(scope: !1819, file: !880, discriminator: 11)
!1861 = !DILocation(line: 249, column: 22, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1799, file: !880, line: 249, column: 6)
!1863 = !DILocation(line: 251, column: 8, scope: !1862)
!1864 = !DILocation(line: 249, column: 7, scope: !1862)
!1865 = !DILocation(line: 249, column: 6, scope: !1799)
!1866 = !DILocation(line: 252, column: 3, scope: !1862)
!1867 = !DILocation(line: 254, column: 7, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1799, file: !880, line: 254, column: 6)
!1869 = !DILocation(line: 254, column: 6, scope: !1868)
!1870 = !DILocation(line: 254, column: 13, scope: !1868)
!1871 = !DILocation(line: 254, column: 6, scope: !1799)
!1872 = !DILocation(line: 256, column: 19, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1868, file: !880, line: 254, column: 22)
!1874 = !DILocation(line: 256, column: 3, scope: !1873)
!1875 = !DILocation(line: 257, column: 3, scope: !1873)
!1876 = !DILocation(line: 261, column: 100, scope: !1799)
!1877 = !DILocation(line: 261, column: 75, scope: !1799)
!1878 = !DILocation(line: 261, column: 59, scope: !1799)
!1879 = !DILocation(line: 261, column: 58, scope: !1799)
!1880 = !DILocation(line: 261, column: 33, scope: !1881)
!1881 = !DILexicalBlockFile(scope: !1799, file: !880, discriminator: 1)
!1882 = !DILocation(line: 261, column: 13, scope: !1799)
!1883 = !DILocation(line: 261, column: 10, scope: !1799)
!1884 = !DILocation(line: 262, column: 6, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1799, file: !880, line: 262, column: 6)
!1886 = !DILocation(line: 262, column: 14, scope: !1885)
!1887 = !DILocation(line: 262, column: 21, scope: !1885)
!1888 = !DILocation(line: 262, column: 25, scope: !1889)
!1889 = !DILexicalBlockFile(scope: !1885, file: !880, discriminator: 1)
!1890 = !DILocation(line: 262, column: 24, scope: !1889)
!1891 = !DILocation(line: 262, column: 33, scope: !1889)
!1892 = !DILocation(line: 262, column: 6, scope: !1889)
!1893 = !DILocation(line: 263, column: 3, scope: !1885)
!1894 = distinct !{!1894, !1893}
!1895 = !DILocation(line: 263, column: 24, scope: !1896)
!1896 = !DILexicalBlockFile(scope: !1897, file: !880, discriminator: 1)
!1897 = distinct !DILexicalBlock(scope: !1885, file: !880, line: 263, column: 6)
!1898 = !DILocation(line: 263, column: 8, scope: !1896)
!1899 = !DILocation(line: 263, column: 35, scope: !1896)
!1900 = distinct !{!1900, !1901}
!1901 = !DILocation(line: 263, column: 35, scope: !1897)
!1902 = !DILocation(line: 263, column: 40, scope: !1903)
!1903 = !DILexicalBlockFile(scope: !1904, file: !880, discriminator: 2)
!1904 = distinct !DILexicalBlock(scope: !1897, file: !880, line: 263, column: 38)
!1905 = !DILocation(line: 263, column: 115, scope: !1906)
!1906 = !DILexicalBlockFile(scope: !1903, file: !880, discriminator: 5)
!1907 = !DILocation(line: 263, column: 130, scope: !1903)
!1908 = !DILocation(line: 263, column: 151, scope: !1909)
!1909 = !DILexicalBlockFile(scope: !1897, file: !880, discriminator: 3)
!1910 = !DILocation(line: 263, column: 151, scope: !1911)
!1911 = !DILexicalBlockFile(scope: !1897, file: !880, discriminator: 4)
!1912 = !DILocation(line: 265, column: 7, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1799, file: !880, line: 265, column: 6)
!1914 = !DILocation(line: 265, column: 6, scope: !1913)
!1915 = !DILocation(line: 265, column: 15, scope: !1913)
!1916 = !DILocation(line: 265, column: 23, scope: !1913)
!1917 = !DILocation(line: 265, column: 36, scope: !1918)
!1918 = !DILexicalBlockFile(scope: !1913, file: !880, discriminator: 1)
!1919 = !DILocation(line: 265, column: 26, scope: !1918)
!1920 = !DILocation(line: 265, column: 50, scope: !1918)
!1921 = !DILocation(line: 265, column: 6, scope: !1918)
!1922 = !DILocation(line: 266, column: 148, scope: !1913)
!1923 = !DILocation(line: 266, column: 130, scope: !1913)
!1924 = !DILocation(line: 266, column: 115, scope: !1913)
!1925 = !DILocation(line: 266, column: 26, scope: !1913)
!1926 = !DILocation(line: 266, column: 101, scope: !1918)
!1927 = !DILocation(line: 266, column: 101, scope: !1913)
!1928 = !DILocation(line: 266, column: 76, scope: !1929)
!1929 = !DILexicalBlockFile(scope: !1913, file: !880, discriminator: 2)
!1930 = !DILocation(line: 266, column: 60, scope: !1913)
!1931 = !DILocation(line: 266, column: 59, scope: !1913)
!1932 = !DILocation(line: 266, column: 34, scope: !1933)
!1933 = !DILexicalBlockFile(scope: !1913, file: !880, discriminator: 3)
!1934 = !DILocation(line: 266, column: 14, scope: !1913)
!1935 = !DILocation(line: 266, column: 11, scope: !1913)
!1936 = !DILocation(line: 266, column: 3, scope: !1913)
!1937 = !DILocation(line: 268, column: 6, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1799, file: !880, line: 268, column: 6)
!1939 = !DILocation(line: 268, column: 14, scope: !1938)
!1940 = !DILocation(line: 268, column: 21, scope: !1938)
!1941 = !DILocation(line: 268, column: 25, scope: !1942)
!1942 = !DILexicalBlockFile(scope: !1938, file: !880, discriminator: 1)
!1943 = !DILocation(line: 268, column: 34, scope: !1942)
!1944 = !DILocation(line: 268, column: 6, scope: !1942)
!1945 = !DILocation(line: 271, column: 20, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1938, file: !880, line: 268, column: 42)
!1947 = !DILocation(line: 271, column: 29, scope: !1946)
!1948 = !DILocation(line: 271, column: 37, scope: !1946)
!1949 = !DILocation(line: 271, column: 3, scope: !1946)
!1950 = !DILocation(line: 272, column: 2, scope: !1946)
!1951 = !DILocation(line: 273, column: 21, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1938, file: !880, line: 272, column: 9)
!1953 = !DILocation(line: 273, column: 30, scope: !1952)
!1954 = !DILocation(line: 273, column: 3, scope: !1952)
!1955 = !DILocation(line: 276, column: 2, scope: !1799)
!1956 = !DILocation(line: 277, column: 18, scope: !1799)
!1957 = !DILocation(line: 277, column: 2, scope: !1799)
!1958 = !DILocation(line: 278, column: 1, scope: !1799)
!1959 = !DILocation(line: 278, column: 1, scope: !1881)
!1960 = distinct !DISubprogram(name: "cmd_ver", scope: !880, file: !880, line: 281, type: !1961, isLocal: true, isDefinition: true, scopeLine: 282, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !935)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{null, !291, !222, !662}
!1963 = !DILocalVariable(name: "data", arg: 1, scope: !1960, file: !880, line: 281, type: !291)
!1964 = !DILocation(line: 281, column: 28, scope: !1960)
!1965 = !DILocalVariable(name: "server", arg: 2, scope: !1960, file: !880, line: 281, type: !222)
!1966 = !DILocation(line: 281, column: 50, scope: !1960)
!1967 = !DILocalVariable(name: "item", arg: 3, scope: !1960, file: !880, line: 281, type: !662)
!1968 = !DILocation(line: 281, column: 71, scope: !1960)
!1969 = !DILocalVariable(name: "str", scope: !1960, file: !880, line: 283, type: !243)
!1970 = !DILocation(line: 283, column: 8, scope: !1960)
!1971 = !DILocation(line: 285, column: 2, scope: !1960)
!1972 = distinct !{!1972, !1971}
!1973 = !DILocation(line: 285, column: 10, scope: !1974)
!1974 = !DILexicalBlockFile(scope: !1975, file: !880, discriminator: 1)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !880, line: 285, column: 10)
!1976 = distinct !DILexicalBlock(scope: !1960, file: !880, line: 285, column: 4)
!1977 = !DILocation(line: 285, column: 15, scope: !1974)
!1978 = !DILocation(line: 285, column: 5, scope: !1979)
!1979 = !DILexicalBlockFile(scope: !1980, file: !880, discriminator: 2)
!1980 = distinct !DILexicalBlock(scope: !1975, file: !880, line: 285, column: 3)
!1981 = !DILocation(line: 285, column: 14, scope: !1982)
!1982 = !DILexicalBlockFile(scope: !1983, file: !880, discriminator: 3)
!1983 = distinct !DILexicalBlock(scope: !1975, file: !880, line: 285, column: 12)
!1984 = !DILocation(line: 285, column: 99, scope: !1982)
!1985 = !DILocation(line: 285, column: 110, scope: !1986)
!1986 = !DILexicalBlockFile(scope: !1976, file: !880, discriminator: 4)
!1987 = !DILocation(line: 287, column: 9, scope: !1960)
!1988 = distinct !{!1988, !1987}
!1989 = !DILocation(line: 287, column: 18, scope: !1990)
!1990 = !DILexicalBlockFile(scope: !1991, file: !880, discriminator: 1)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !880, line: 287, column: 18)
!1992 = distinct !DILexicalBlock(scope: !1960, file: !880, line: 287, column: 12)
!1993 = !DILocation(line: 287, column: 25, scope: !1990)
!1994 = !DILocation(line: 287, column: 8, scope: !1990)
!1995 = !DILocation(line: 287, column: 92, scope: !1996)
!1996 = !DILexicalBlockFile(scope: !1991, file: !880, discriminator: 2)
!1997 = !DILocation(line: 287, column: 74, scope: !1996)
!1998 = !DILocation(line: 287, column: 59, scope: !1996)
!1999 = !DILocation(line: 287, column: 58, scope: !1996)
!2000 = !DILocation(line: 287, column: 33, scope: !2001)
!2001 = !DILexicalBlockFile(scope: !1996, file: !880, discriminator: 12)
!2002 = !DILocation(line: 287, column: 14, scope: !1996)
!2003 = !DILocation(line: 287, column: 18, scope: !1996)
!2004 = !DILocation(line: 287, column: 13, scope: !2005)
!2005 = !DILexicalBlockFile(scope: !1991, file: !880, discriminator: 3)
!2006 = !DILocation(line: 287, column: 18, scope: !2007)
!2007 = !DILexicalBlockFile(scope: !1992, file: !880, discriminator: 4)
!2008 = !DILocation(line: 287, column: 35, scope: !2009)
!2009 = !DILexicalBlockFile(scope: !1991, file: !880, discriminator: 5)
!2010 = !DILocation(line: 287, column: 47, scope: !2011)
!2011 = !DILexicalBlockFile(scope: !2012, file: !880, discriminator: 6)
!2012 = distinct !DILexicalBlock(scope: !1992, file: !880, line: 287, column: 47)
!2013 = !DILocation(line: 287, column: 54, scope: !2011)
!2014 = !DILocation(line: 287, column: 8, scope: !2011)
!2015 = !DILocation(line: 287, column: 13, scope: !2016)
!2016 = !DILexicalBlockFile(scope: !2012, file: !880, discriminator: 7)
!2017 = !DILocation(line: 287, column: 22, scope: !2016)
!2018 = !DILocation(line: 287, column: 12, scope: !2016)
!2019 = !DILocation(line: 287, column: 47, scope: !2016)
!2020 = !DILocation(line: 287, column: 33, scope: !2021)
!2021 = !DILexicalBlockFile(scope: !2012, file: !880, discriminator: 8)
!2022 = distinct !{!2022, !2023}
!2023 = !DILocation(line: 287, column: 33, scope: !2012)
!2024 = !DILocation(line: 287, column: 38, scope: !2025)
!2025 = !DILexicalBlockFile(scope: !2026, file: !880, discriminator: 9)
!2026 = distinct !DILexicalBlock(scope: !2012, file: !880, line: 287, column: 36)
!2027 = !DILocation(line: 287, column: 116, scope: !2028)
!2028 = !DILexicalBlockFile(scope: !2025, file: !880, discriminator: 13)
!2029 = !DILocation(line: 287, column: 131, scope: !2025)
!2030 = !DILocation(line: 287, column: 139, scope: !2031)
!2031 = !DILexicalBlockFile(scope: !2026, file: !880, discriminator: 10)
!2032 = !DILocation(line: 287, column: 152, scope: !2033)
!2033 = !DILexicalBlockFile(scope: !1992, file: !880, discriminator: 11)
!2034 = !DILocation(line: 288, column: 7, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !1960, file: !880, line: 288, column: 6)
!2036 = !DILocation(line: 288, column: 6, scope: !2035)
!2037 = !DILocation(line: 288, column: 12, scope: !2035)
!2038 = !DILocation(line: 288, column: 20, scope: !2035)
!2039 = !DILocation(line: 288, column: 65, scope: !2040)
!2040 = !DILexicalBlockFile(scope: !2035, file: !880, discriminator: 1)
!2041 = !DILocation(line: 288, column: 40, scope: !2040)
!2042 = !DILocation(line: 288, column: 26, scope: !2040)
!2043 = !DILocation(line: 288, column: 6, scope: !2040)
!2044 = !DILocation(line: 288, column: 25, scope: !2045)
!2045 = !DILexicalBlockFile(scope: !2035, file: !880, discriminator: 2)
!2046 = !DILocation(line: 288, column: 6, scope: !2047)
!2047 = !DILexicalBlockFile(scope: !1960, file: !880, discriminator: 3)
!2048 = !DILocation(line: 289, column: 3, scope: !2035)
!2049 = distinct !{!2049, !2048}
!2050 = !DILocation(line: 289, column: 8, scope: !2051)
!2051 = !DILexicalBlockFile(scope: !2052, file: !880, discriminator: 1)
!2052 = distinct !DILexicalBlock(scope: !2035, file: !880, line: 289, column: 6)
!2053 = !DILocation(line: 289, column: 90, scope: !2054)
!2054 = !DILexicalBlockFile(scope: !2051, file: !880, discriminator: 3)
!2055 = !DILocation(line: 289, column: 105, scope: !2051)
!2056 = !DILocation(line: 289, column: 113, scope: !2057)
!2057 = !DILexicalBlockFile(scope: !2052, file: !880, discriminator: 2)
!2058 = !DILocation(line: 291, column: 39, scope: !1960)
!2059 = !DILocation(line: 291, column: 38, scope: !1960)
!2060 = !DILocation(line: 291, column: 44, scope: !1960)
!2061 = !DILocation(line: 292, column: 12, scope: !1960)
!2062 = !DILocation(line: 292, column: 19, scope: !1960)
!2063 = !DILocation(line: 292, column: 30, scope: !1960)
!2064 = !DILocation(line: 292, column: 11, scope: !1960)
!2065 = !DILocation(line: 291, column: 38, scope: !2066)
!2066 = !DILexicalBlockFile(scope: !1960, file: !880, discriminator: 1)
!2067 = !DILocation(line: 292, column: 39, scope: !2066)
!2068 = !DILocation(line: 291, column: 38, scope: !2069)
!2069 = !DILexicalBlockFile(scope: !1960, file: !880, discriminator: 2)
!2070 = !DILocation(line: 291, column: 38, scope: !2047)
!2071 = !DILocation(line: 291, column: 8, scope: !2047)
!2072 = !DILocation(line: 291, column: 6, scope: !2047)
!2073 = !DILocation(line: 293, column: 33, scope: !1960)
!2074 = !DILocation(line: 293, column: 38, scope: !1960)
!2075 = !DILocation(line: 293, column: 46, scope: !1960)
!2076 = !DILocation(line: 293, column: 2, scope: !1960)
!2077 = !DILocation(line: 294, column: 9, scope: !1960)
!2078 = !DILocation(line: 294, column: 2, scope: !1960)
!2079 = !DILocation(line: 295, column: 1, scope: !1960)
!2080 = !DILocation(line: 295, column: 1, scope: !2066)
!2081 = distinct !DISubprogram(name: "cmd_topic", scope: !880, file: !880, line: 297, type: !2082, isLocal: true, isDefinition: true, scopeLine: 298, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !935)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{null, !623, !535, !662}
!2084 = !DILocalVariable(name: "data", arg: 1, scope: !2081, file: !880, line: 297, type: !623)
!2085 = !DILocation(line: 297, column: 35, scope: !2081)
!2086 = !DILocalVariable(name: "server", arg: 2, scope: !2081, file: !880, line: 297, type: !535)
!2087 = !DILocation(line: 297, column: 53, scope: !2081)
!2088 = !DILocalVariable(name: "item", arg: 3, scope: !2081, file: !880, line: 297, type: !662)
!2089 = !DILocation(line: 297, column: 74, scope: !2081)
!2090 = !DILocalVariable(name: "channel", scope: !2081, file: !880, line: 299, type: !642)
!2091 = !DILocation(line: 299, column: 15, scope: !2081)
!2092 = !DILocalVariable(name: "timestr", scope: !2081, file: !880, line: 300, type: !243)
!2093 = !DILocation(line: 300, column: 8, scope: !2081)
!2094 = !DILocalVariable(name: "bynick", scope: !2081, file: !880, line: 300, type: !243)
!2095 = !DILocation(line: 300, column: 18, scope: !2081)
!2096 = !DILocalVariable(name: "byhost", scope: !2081, file: !880, line: 300, type: !243)
!2097 = !DILocation(line: 300, column: 27, scope: !2081)
!2098 = !DILocation(line: 302, column: 2, scope: !2081)
!2099 = distinct !{!2099, !2098}
!2100 = !DILocation(line: 302, column: 10, scope: !2101)
!2101 = !DILexicalBlockFile(scope: !2102, file: !880, discriminator: 1)
!2102 = distinct !DILexicalBlock(scope: !2103, file: !880, line: 302, column: 10)
!2103 = distinct !DILexicalBlock(scope: !2081, file: !880, line: 302, column: 4)
!2104 = !DILocation(line: 302, column: 15, scope: !2101)
!2105 = !DILocation(line: 302, column: 5, scope: !2106)
!2106 = !DILexicalBlockFile(scope: !2107, file: !880, discriminator: 2)
!2107 = distinct !DILexicalBlock(scope: !2102, file: !880, line: 302, column: 3)
!2108 = !DILocation(line: 302, column: 14, scope: !2109)
!2109 = !DILexicalBlockFile(scope: !2110, file: !880, discriminator: 3)
!2110 = distinct !DILexicalBlock(scope: !2102, file: !880, line: 302, column: 12)
!2111 = !DILocation(line: 302, column: 99, scope: !2109)
!2112 = !DILocation(line: 302, column: 110, scope: !2113)
!2113 = !DILexicalBlockFile(scope: !2103, file: !880, discriminator: 4)
!2114 = !DILocation(line: 304, column: 13, scope: !2081)
!2115 = !DILocation(line: 304, column: 12, scope: !2081)
!2116 = !DILocation(line: 304, column: 18, scope: !2081)
!2117 = !DILocation(line: 304, column: 41, scope: !2118)
!2118 = !DILexicalBlockFile(scope: !2081, file: !880, discriminator: 1)
!2119 = !DILocation(line: 304, column: 49, scope: !2118)
!2120 = !DILocation(line: 304, column: 28, scope: !2118)
!2121 = !DILocation(line: 304, column: 12, scope: !2118)
!2122 = !DILocation(line: 304, column: 99, scope: !2123)
!2123 = !DILexicalBlockFile(scope: !2081, file: !880, discriminator: 2)
!2124 = !DILocation(line: 304, column: 74, scope: !2123)
!2125 = !DILocation(line: 304, column: 58, scope: !2123)
!2126 = !DILocation(line: 304, column: 12, scope: !2123)
!2127 = !DILocation(line: 304, column: 12, scope: !2128)
!2128 = !DILexicalBlockFile(scope: !2081, file: !880, discriminator: 3)
!2129 = !DILocation(line: 304, column: 10, scope: !2128)
!2130 = !DILocation(line: 305, column: 6, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2081, file: !880, line: 305, column: 6)
!2132 = !DILocation(line: 305, column: 14, scope: !2131)
!2133 = !DILocation(line: 305, column: 6, scope: !2081)
!2134 = !DILocation(line: 305, column: 22, scope: !2135)
!2135 = !DILexicalBlockFile(scope: !2131, file: !880, discriminator: 1)
!2136 = !DILocation(line: 307, column: 38, scope: !2081)
!2137 = !DILocation(line: 307, column: 46, scope: !2081)
!2138 = !DILocation(line: 307, column: 55, scope: !2081)
!2139 = !DILocation(line: 307, column: 84, scope: !2081)
!2140 = !DILocation(line: 307, column: 93, scope: !2081)
!2141 = !DILocation(line: 307, column: 99, scope: !2081)
!2142 = !DILocation(line: 307, column: 35, scope: !2081)
!2143 = !DILocation(line: 307, column: 44, scope: !2081)
!2144 = !DILocation(line: 307, column: 58, scope: !2081)
!2145 = !DILocation(line: 307, column: 67, scope: !2081)
!2146 = !DILocation(line: 307, column: 2, scope: !2081)
!2147 = !DILocation(line: 311, column: 6, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2081, file: !880, line: 311, column: 6)
!2149 = !DILocation(line: 311, column: 15, scope: !2148)
!2150 = !DILocation(line: 311, column: 26, scope: !2148)
!2151 = !DILocation(line: 311, column: 6, scope: !2081)
!2152 = !DILocation(line: 312, column: 19, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2148, file: !880, line: 311, column: 31)
!2154 = !DILocation(line: 312, column: 28, scope: !2153)
!2155 = !DILocation(line: 312, column: 12, scope: !2153)
!2156 = !DILocation(line: 312, column: 10, scope: !2153)
!2157 = !DILocation(line: 313, column: 7, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2153, file: !880, line: 313, column: 7)
!2159 = !DILocation(line: 313, column: 14, scope: !2158)
!2160 = !DILocation(line: 313, column: 7, scope: !2153)
!2161 = !DILocation(line: 314, column: 22, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2158, file: !880, line: 313, column: 22)
!2163 = !DILocation(line: 314, column: 31, scope: !2162)
!2164 = !DILocation(line: 314, column: 13, scope: !2162)
!2165 = !DILocation(line: 314, column: 11, scope: !2162)
!2166 = !DILocation(line: 315, column: 11, scope: !2162)
!2167 = !DILocation(line: 316, column: 3, scope: !2162)
!2168 = !DILocation(line: 317, column: 23, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2158, file: !880, line: 316, column: 10)
!2170 = !DILocation(line: 317, column: 32, scope: !2169)
!2171 = !DILocation(line: 318, column: 16, scope: !2169)
!2172 = !DILocation(line: 318, column: 23, scope: !2169)
!2173 = !DILocation(line: 318, column: 32, scope: !2169)
!2174 = !DILocation(line: 318, column: 22, scope: !2169)
!2175 = !DILocation(line: 318, column: 9, scope: !2169)
!2176 = !DILocation(line: 317, column: 13, scope: !2169)
!2177 = !DILocation(line: 317, column: 11, scope: !2169)
!2178 = !DILocation(line: 319, column: 10, scope: !2169)
!2179 = !DILocation(line: 322, column: 24, scope: !2153)
!2180 = !DILocation(line: 322, column: 33, scope: !2153)
!2181 = !DILocation(line: 322, column: 13, scope: !2153)
!2182 = !DILocation(line: 322, column: 11, scope: !2153)
!2183 = !DILocation(line: 323, column: 39, scope: !2153)
!2184 = !DILocation(line: 323, column: 47, scope: !2153)
!2185 = !DILocation(line: 323, column: 56, scope: !2153)
!2186 = !DILocation(line: 323, column: 104, scope: !2153)
!2187 = !DILocation(line: 323, column: 112, scope: !2153)
!2188 = !DILocation(line: 323, column: 121, scope: !2153)
!2189 = !DILocation(line: 323, column: 3, scope: !2153)
!2190 = !DILocation(line: 325, column: 10, scope: !2153)
!2191 = !DILocation(line: 325, column: 3, scope: !2153)
!2192 = !DILocation(line: 326, column: 10, scope: !2153)
!2193 = !DILocation(line: 326, column: 3, scope: !2153)
!2194 = !DILocation(line: 327, column: 2, scope: !2153)
!2195 = !DILocation(line: 328, column: 2, scope: !2081)
!2196 = !DILocation(line: 329, column: 1, scope: !2081)
!2197 = !DILocation(line: 329, column: 1, scope: !2118)
!2198 = distinct !DISubprogram(name: "cmd_ts", scope: !880, file: !880, line: 332, type: !2199, isLocal: true, isDefinition: true, scopeLine: 333, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !935)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{null, !623}
!2201 = !DILocalVariable(name: "data", arg: 1, scope: !2198, file: !880, line: 332, type: !623)
!2202 = !DILocation(line: 332, column: 32, scope: !2198)
!2203 = !DILocalVariable(name: "tmp", scope: !2198, file: !880, line: 334, type: !397)
!2204 = !DILocation(line: 334, column: 10, scope: !2198)
!2205 = !DILocation(line: 336, column: 2, scope: !2198)
!2206 = distinct !{!2206, !2205}
!2207 = !DILocation(line: 336, column: 10, scope: !2208)
!2208 = !DILexicalBlockFile(scope: !2209, file: !880, discriminator: 1)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !880, line: 336, column: 10)
!2210 = distinct !DILexicalBlock(scope: !2198, file: !880, line: 336, column: 4)
!2211 = !DILocation(line: 336, column: 15, scope: !2208)
!2212 = !DILocation(line: 336, column: 5, scope: !2213)
!2213 = !DILexicalBlockFile(scope: !2214, file: !880, discriminator: 2)
!2214 = distinct !DILexicalBlock(scope: !2209, file: !880, line: 336, column: 3)
!2215 = !DILocation(line: 336, column: 14, scope: !2216)
!2216 = !DILexicalBlockFile(scope: !2217, file: !880, discriminator: 3)
!2217 = distinct !DILexicalBlock(scope: !2209, file: !880, line: 336, column: 12)
!2218 = !DILocation(line: 336, column: 99, scope: !2216)
!2219 = !DILocation(line: 336, column: 110, scope: !2220)
!2220 = !DILexicalBlockFile(scope: !2210, file: !880, discriminator: 4)
!2221 = !DILocation(line: 338, column: 13, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2198, file: !880, line: 338, column: 2)
!2223 = !DILocation(line: 338, column: 11, scope: !2222)
!2224 = !DILocation(line: 338, column: 7, scope: !2222)
!2225 = !DILocation(line: 338, column: 23, scope: !2226)
!2226 = !DILexicalBlockFile(scope: !2227, file: !880, discriminator: 1)
!2227 = distinct !DILexicalBlock(scope: !2222, file: !880, line: 338, column: 2)
!2228 = !DILocation(line: 338, column: 27, scope: !2226)
!2229 = !DILocation(line: 338, column: 2, scope: !2226)
!2230 = !DILocalVariable(name: "rec", scope: !2231, file: !880, line: 339, type: !642)
!2231 = distinct !DILexicalBlock(scope: !2227, file: !880, line: 338, column: 52)
!2232 = !DILocation(line: 339, column: 16, scope: !2231)
!2233 = !DILocation(line: 339, column: 22, scope: !2231)
!2234 = !DILocation(line: 339, column: 27, scope: !2231)
!2235 = !DILocation(line: 341, column: 41, scope: !2231)
!2236 = !DILocation(line: 341, column: 46, scope: !2231)
!2237 = !DILocation(line: 341, column: 60, scope: !2231)
!2238 = !DILocation(line: 341, column: 65, scope: !2231)
!2239 = !DILocation(line: 341, column: 71, scope: !2231)
!2240 = !DILocation(line: 341, column: 60, scope: !2241)
!2241 = !DILexicalBlockFile(scope: !2231, file: !880, discriminator: 1)
!2242 = !DILocation(line: 341, column: 9, scope: !2243)
!2243 = !DILexicalBlockFile(scope: !2231, file: !880, discriminator: 2)
!2244 = !DILocation(line: 341, column: 14, scope: !2243)
!2245 = !DILocation(line: 341, column: 60, scope: !2243)
!2246 = !DILocation(line: 341, column: 60, scope: !2247)
!2247 = !DILexicalBlockFile(scope: !2231, file: !880, discriminator: 3)
!2248 = !DILocation(line: 341, column: 3, scope: !2247)
!2249 = !DILocation(line: 344, column: 2, scope: !2231)
!2250 = !DILocation(line: 338, column: 41, scope: !2251)
!2251 = !DILexicalBlockFile(scope: !2227, file: !880, discriminator: 2)
!2252 = !DILocation(line: 338, column: 46, scope: !2251)
!2253 = !DILocation(line: 338, column: 39, scope: !2251)
!2254 = !DILocation(line: 338, column: 2, scope: !2251)
!2255 = distinct !{!2255, !2256}
!2256 = !DILocation(line: 338, column: 2, scope: !2198)
!2257 = !DILocation(line: 345, column: 1, scope: !2198)
!2258 = distinct !DISubprogram(name: "cmd_oper", scope: !880, file: !880, line: 362, type: !1106, isLocal: true, isDefinition: true, scopeLine: 363, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !935)
!2259 = !DILocalVariable(name: "data", arg: 1, scope: !2258, file: !880, line: 362, type: !623)
!2260 = !DILocation(line: 362, column: 34, scope: !2258)
!2261 = !DILocalVariable(name: "server", arg: 2, scope: !2258, file: !880, line: 362, type: !222)
!2262 = !DILocation(line: 362, column: 56, scope: !2258)
!2263 = !DILocalVariable(name: "nick", scope: !2258, file: !880, line: 364, type: !243)
!2264 = !DILocation(line: 364, column: 8, scope: !2258)
!2265 = !DILocalVariable(name: "password", scope: !2258, file: !880, line: 364, type: !243)
!2266 = !DILocation(line: 364, column: 15, scope: !2258)
!2267 = !DILocalVariable(name: "format", scope: !2258, file: !880, line: 364, type: !243)
!2268 = !DILocation(line: 364, column: 26, scope: !2258)
!2269 = !DILocalVariable(name: "free_arg", scope: !2258, file: !880, line: 365, type: !221)
!2270 = !DILocation(line: 365, column: 8, scope: !2258)
!2271 = !DILocation(line: 367, column: 2, scope: !2258)
!2272 = distinct !{!2272, !2271}
!2273 = !DILocation(line: 367, column: 10, scope: !2274)
!2274 = !DILexicalBlockFile(scope: !2275, file: !880, discriminator: 1)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !880, line: 367, column: 10)
!2276 = distinct !DILexicalBlock(scope: !2258, file: !880, line: 367, column: 4)
!2277 = !DILocation(line: 367, column: 15, scope: !2274)
!2278 = !DILocation(line: 367, column: 5, scope: !2279)
!2279 = !DILexicalBlockFile(scope: !2280, file: !880, discriminator: 2)
!2280 = distinct !DILexicalBlock(scope: !2275, file: !880, line: 367, column: 3)
!2281 = !DILocation(line: 367, column: 14, scope: !2282)
!2282 = !DILexicalBlockFile(scope: !2283, file: !880, discriminator: 3)
!2283 = distinct !DILexicalBlock(scope: !2275, file: !880, line: 367, column: 12)
!2284 = !DILocation(line: 367, column: 99, scope: !2282)
!2285 = !DILocation(line: 367, column: 110, scope: !2286)
!2286 = !DILexicalBlockFile(scope: !2276, file: !880, discriminator: 4)
!2287 = !DILocation(line: 368, column: 87, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2258, file: !880, line: 368, column: 6)
!2289 = !DILocation(line: 368, column: 69, scope: !2288)
!2290 = !DILocation(line: 368, column: 54, scope: !2288)
!2291 = !DILocation(line: 368, column: 53, scope: !2288)
!2292 = !DILocation(line: 368, column: 28, scope: !2293)
!2293 = !DILexicalBlockFile(scope: !2288, file: !880, discriminator: 4)
!2294 = !DILocation(line: 368, column: 9, scope: !2288)
!2295 = !DILocation(line: 368, column: 32, scope: !2288)
!2296 = !DILocation(line: 368, column: 8, scope: !2297)
!2297 = !DILexicalBlockFile(scope: !2288, file: !880, discriminator: 1)
!2298 = !DILocation(line: 368, column: 32, scope: !2299)
!2299 = !DILexicalBlockFile(scope: !2288, file: !880, discriminator: 2)
!2300 = !DILocation(line: 368, column: 36, scope: !2301)
!2301 = !DILexicalBlockFile(scope: !2288, file: !880, discriminator: 3)
!2302 = !DILocation(line: 368, column: 44, scope: !2301)
!2303 = !DILocation(line: 368, column: 6, scope: !2301)
!2304 = !DILocation(line: 369, column: 3, scope: !2288)
!2305 = distinct !{!2305, !2304}
!2306 = !DILocation(line: 369, column: 8, scope: !2307)
!2307 = !DILexicalBlockFile(scope: !2308, file: !880, discriminator: 1)
!2308 = distinct !DILexicalBlock(scope: !2288, file: !880, line: 369, column: 6)
!2309 = !DILocation(line: 369, column: 86, scope: !2310)
!2310 = !DILexicalBlockFile(scope: !2307, file: !880, discriminator: 3)
!2311 = !DILocation(line: 369, column: 101, scope: !2307)
!2312 = !DILocation(line: 369, column: 109, scope: !2313)
!2313 = !DILexicalBlockFile(scope: !2308, file: !880, discriminator: 2)
!2314 = !DILocation(line: 371, column: 22, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2258, file: !880, line: 371, column: 6)
!2316 = !DILocation(line: 371, column: 7, scope: !2315)
!2317 = !DILocation(line: 371, column: 6, scope: !2258)
!2318 = !DILocation(line: 372, column: 3, scope: !2315)
!2319 = !DILocation(line: 373, column: 7, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2258, file: !880, line: 373, column: 6)
!2321 = !DILocation(line: 373, column: 6, scope: !2320)
!2322 = !DILocation(line: 373, column: 16, scope: !2320)
!2323 = !DILocation(line: 373, column: 6, scope: !2258)
!2324 = !DILocalVariable(name: "rec", scope: !2325, file: !880, line: 376, type: !878)
!2325 = distinct !DILexicalBlock(scope: !2320, file: !880, line: 373, column: 25)
!2326 = !DILocation(line: 376, column: 18, scope: !2325)
!2327 = !DILocation(line: 378, column: 28, scope: !2325)
!2328 = !DILocation(line: 378, column: 10, scope: !2325)
!2329 = !DILocation(line: 378, column: 7, scope: !2325)
!2330 = !DILocation(line: 379, column: 30, scope: !2325)
!2331 = !DILocation(line: 379, column: 38, scope: !2325)
!2332 = !DILocation(line: 379, column: 21, scope: !2325)
!2333 = !DILocation(line: 379, column: 3, scope: !2325)
!2334 = !DILocation(line: 379, column: 8, scope: !2325)
!2335 = !DILocation(line: 379, column: 19, scope: !2325)
!2336 = !DILocation(line: 380, column: 25, scope: !2325)
!2337 = !DILocation(line: 380, column: 24, scope: !2325)
!2338 = !DILocation(line: 380, column: 30, scope: !2325)
!2339 = !DILocation(line: 380, column: 40, scope: !2340)
!2340 = !DILexicalBlockFile(scope: !2325, file: !880, discriminator: 1)
!2341 = !DILocation(line: 380, column: 24, scope: !2340)
!2342 = !DILocation(line: 380, column: 47, scope: !2343)
!2343 = !DILexicalBlockFile(scope: !2325, file: !880, discriminator: 2)
!2344 = !DILocation(line: 380, column: 55, scope: !2343)
!2345 = !DILocation(line: 380, column: 24, scope: !2343)
!2346 = !DILocation(line: 380, column: 24, scope: !2347)
!2347 = !DILexicalBlockFile(scope: !2325, file: !880, discriminator: 3)
!2348 = !DILocation(line: 380, column: 15, scope: !2347)
!2349 = !DILocation(line: 380, column: 3, scope: !2347)
!2350 = !DILocation(line: 380, column: 8, scope: !2347)
!2351 = !DILocation(line: 380, column: 13, scope: !2347)
!2352 = !DILocation(line: 382, column: 46, scope: !2325)
!2353 = !DILocation(line: 382, column: 12, scope: !2325)
!2354 = !DILocation(line: 382, column: 10, scope: !2325)
!2355 = !DILocation(line: 386, column: 6, scope: !2325)
!2356 = !DILocation(line: 387, column: 12, scope: !2325)
!2357 = !DILocation(line: 385, column: 3, scope: !2325)
!2358 = !DILocation(line: 388, column: 24, scope: !2325)
!2359 = !DILocation(line: 388, column: 17, scope: !2325)
!2360 = !DILocation(line: 390, column: 3, scope: !2325)
!2361 = !DILocation(line: 391, column: 2, scope: !2325)
!2362 = !DILocation(line: 393, column: 18, scope: !2258)
!2363 = !DILocation(line: 393, column: 2, scope: !2258)
!2364 = !DILocation(line: 394, column: 1, scope: !2258)
!2365 = !DILocation(line: 394, column: 1, scope: !2366)
!2366 = !DILexicalBlockFile(scope: !2258, file: !880, discriminator: 1)
!2367 = distinct !DISubprogram(name: "cmd_sethost", scope: !880, file: !880, line: 398, type: !1106, isLocal: true, isDefinition: true, scopeLine: 399, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !935)
!2368 = !DILocalVariable(name: "data", arg: 1, scope: !2367, file: !880, line: 398, type: !623)
!2369 = !DILocation(line: 398, column: 37, scope: !2367)
!2370 = !DILocalVariable(name: "server", arg: 2, scope: !2367, file: !880, line: 398, type: !222)
!2371 = !DILocation(line: 398, column: 59, scope: !2367)
!2372 = !DILocalVariable(name: "tmp", scope: !2367, file: !880, line: 400, type: !397)
!2373 = !DILocation(line: 400, column: 10, scope: !2367)
!2374 = !DILocation(line: 402, column: 2, scope: !2367)
!2375 = distinct !{!2375, !2374}
!2376 = !DILocation(line: 402, column: 10, scope: !2377)
!2377 = !DILexicalBlockFile(scope: !2378, file: !880, discriminator: 1)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !880, line: 402, column: 10)
!2379 = distinct !DILexicalBlock(scope: !2367, file: !880, line: 402, column: 4)
!2380 = !DILocation(line: 402, column: 15, scope: !2377)
!2381 = !DILocation(line: 402, column: 5, scope: !2382)
!2382 = !DILexicalBlockFile(scope: !2383, file: !880, discriminator: 2)
!2383 = distinct !DILexicalBlock(scope: !2378, file: !880, line: 402, column: 3)
!2384 = !DILocation(line: 402, column: 14, scope: !2385)
!2385 = !DILexicalBlockFile(scope: !2386, file: !880, discriminator: 3)
!2386 = distinct !DILexicalBlock(scope: !2378, file: !880, line: 402, column: 12)
!2387 = !DILocation(line: 402, column: 99, scope: !2385)
!2388 = !DILocation(line: 402, column: 110, scope: !2389)
!2389 = !DILexicalBlockFile(scope: !2379, file: !880, discriminator: 4)
!2390 = !DILocation(line: 403, column: 87, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2367, file: !880, line: 403, column: 6)
!2392 = !DILocation(line: 403, column: 69, scope: !2391)
!2393 = !DILocation(line: 403, column: 54, scope: !2391)
!2394 = !DILocation(line: 403, column: 53, scope: !2391)
!2395 = !DILocation(line: 403, column: 28, scope: !2396)
!2396 = !DILexicalBlockFile(scope: !2391, file: !880, discriminator: 4)
!2397 = !DILocation(line: 403, column: 9, scope: !2391)
!2398 = !DILocation(line: 403, column: 32, scope: !2391)
!2399 = !DILocation(line: 403, column: 8, scope: !2400)
!2400 = !DILexicalBlockFile(scope: !2391, file: !880, discriminator: 1)
!2401 = !DILocation(line: 403, column: 32, scope: !2402)
!2402 = !DILexicalBlockFile(scope: !2391, file: !880, discriminator: 2)
!2403 = !DILocation(line: 403, column: 36, scope: !2404)
!2404 = !DILexicalBlockFile(scope: !2391, file: !880, discriminator: 3)
!2405 = !DILocation(line: 403, column: 44, scope: !2404)
!2406 = !DILocation(line: 403, column: 6, scope: !2404)
!2407 = !DILocation(line: 404, column: 3, scope: !2391)
!2408 = distinct !{!2408, !2407}
!2409 = !DILocation(line: 404, column: 8, scope: !2410)
!2410 = !DILexicalBlockFile(scope: !2411, file: !880, discriminator: 1)
!2411 = distinct !DILexicalBlock(scope: !2391, file: !880, line: 404, column: 6)
!2412 = !DILocation(line: 404, column: 86, scope: !2413)
!2413 = !DILexicalBlockFile(scope: !2410, file: !880, discriminator: 3)
!2414 = !DILocation(line: 404, column: 101, scope: !2410)
!2415 = !DILocation(line: 404, column: 109, scope: !2416)
!2416 = !DILexicalBlockFile(scope: !2411, file: !880, discriminator: 2)
!2417 = !DILocation(line: 408, column: 13, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2367, file: !880, line: 408, column: 2)
!2419 = !DILocation(line: 408, column: 21, scope: !2418)
!2420 = !DILocation(line: 408, column: 11, scope: !2418)
!2421 = !DILocation(line: 408, column: 7, scope: !2418)
!2422 = !DILocation(line: 408, column: 31, scope: !2423)
!2423 = !DILexicalBlockFile(scope: !2424, file: !880, discriminator: 1)
!2424 = distinct !DILexicalBlock(scope: !2418, file: !880, line: 408, column: 2)
!2425 = !DILocation(line: 408, column: 35, scope: !2423)
!2426 = !DILocation(line: 408, column: 2, scope: !2423)
!2427 = !DILocalVariable(name: "channel", scope: !2428, file: !880, line: 409, type: !642)
!2428 = distinct !DILexicalBlock(scope: !2424, file: !880, line: 408, column: 60)
!2429 = !DILocation(line: 409, column: 16, scope: !2428)
!2430 = !DILocation(line: 409, column: 26, scope: !2428)
!2431 = !DILocation(line: 409, column: 31, scope: !2428)
!2432 = !DILocation(line: 411, column: 53, scope: !2428)
!2433 = !DILocation(line: 411, column: 64, scope: !2428)
!2434 = !DILocation(line: 411, column: 20, scope: !2428)
!2435 = !DILocation(line: 412, column: 5, scope: !2428)
!2436 = !DILocation(line: 412, column: 13, scope: !2428)
!2437 = !DILocation(line: 412, column: 18, scope: !2428)
!2438 = !DILocation(line: 412, column: 27, scope: !2428)
!2439 = !DILocation(line: 411, column: 3, scope: !2428)
!2440 = !DILocation(line: 413, column: 2, scope: !2428)
!2441 = !DILocation(line: 408, column: 49, scope: !2442)
!2442 = !DILexicalBlockFile(scope: !2424, file: !880, discriminator: 2)
!2443 = !DILocation(line: 408, column: 54, scope: !2442)
!2444 = !DILocation(line: 408, column: 47, scope: !2442)
!2445 = !DILocation(line: 408, column: 2, scope: !2442)
!2446 = distinct !{!2446, !2447}
!2447 = !DILocation(line: 408, column: 2, scope: !2367)
!2448 = !DILocation(line: 415, column: 23, scope: !2367)
!2449 = !DILocation(line: 415, column: 45, scope: !2367)
!2450 = !DILocation(line: 415, column: 9, scope: !2367)
!2451 = !DILocation(line: 416, column: 1, scope: !2367)
!2452 = !DILocation(line: 416, column: 1, scope: !2453)
!2453 = !DILexicalBlockFile(scope: !2367, file: !880, discriminator: 1)
!2454 = distinct !DISubprogram(name: "fe_irc_commands_deinit", scope: !880, file: !880, line: 434, type: !385, isLocal: false, isDefinition: true, scopeLine: 435, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !935)
!2455 = !DILocation(line: 436, column: 2, scope: !2454)
!2456 = !DILocation(line: 437, column: 2, scope: !2454)
!2457 = !DILocation(line: 438, column: 2, scope: !2454)
!2458 = !DILocation(line: 439, column: 2, scope: !2454)
!2459 = !DILocation(line: 440, column: 2, scope: !2454)
!2460 = !DILocation(line: 441, column: 2, scope: !2454)
!2461 = !DILocation(line: 442, column: 2, scope: !2454)
!2462 = !DILocation(line: 443, column: 2, scope: !2454)
!2463 = !DILocation(line: 444, column: 2, scope: !2454)
!2464 = !DILocation(line: 445, column: 2, scope: !2454)
!2465 = !DILocation(line: 446, column: 2, scope: !2454)
!2466 = !DILocation(line: 447, column: 2, scope: !2454)
!2467 = !DILocation(line: 448, column: 1, scope: !2454)
!2468 = distinct !DISubprogram(name: "bans_ask_channel", scope: !880, file: !880, line: 197, type: !963, isLocal: true, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !935)
!2469 = !DILocalVariable(name: "channel", arg: 1, scope: !2468, file: !880, line: 197, type: !623)
!2470 = !DILocation(line: 197, column: 42, scope: !2468)
!2471 = !DILocalVariable(name: "server", arg: 2, scope: !2468, file: !880, line: 197, type: !222)
!2472 = !DILocation(line: 197, column: 67, scope: !2468)
!2473 = !DILocalVariable(name: "item", arg: 3, scope: !2468, file: !880, line: 198, type: !662)
!2474 = !DILocation(line: 198, column: 22, scope: !2468)
!2475 = !DILocalVariable(name: "str", scope: !2468, file: !880, line: 200, type: !436)
!2476 = !DILocation(line: 200, column: 11, scope: !2468)
!2477 = !DILocation(line: 202, column: 8, scope: !2468)
!2478 = !DILocation(line: 202, column: 6, scope: !2468)
!2479 = !DILocation(line: 203, column: 18, scope: !2468)
!2480 = !DILocation(line: 203, column: 31, scope: !2468)
!2481 = !DILocation(line: 203, column: 2, scope: !2468)
!2482 = !DILocation(line: 204, column: 33, scope: !2468)
!2483 = !DILocation(line: 204, column: 38, scope: !2468)
!2484 = !DILocation(line: 204, column: 43, scope: !2468)
!2485 = !DILocation(line: 204, column: 51, scope: !2468)
!2486 = !DILocation(line: 204, column: 2, scope: !2468)
!2487 = !DILocation(line: 205, column: 6, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2468, file: !880, line: 205, column: 6)
!2489 = !DILocation(line: 205, column: 14, scope: !2488)
!2490 = !DILocation(line: 205, column: 6, scope: !2468)
!2491 = !DILocation(line: 206, column: 19, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2488, file: !880, line: 205, column: 27)
!2493 = !DILocation(line: 206, column: 32, scope: !2492)
!2494 = !DILocation(line: 206, column: 3, scope: !2492)
!2495 = !DILocation(line: 207, column: 34, scope: !2492)
!2496 = !DILocation(line: 207, column: 39, scope: !2492)
!2497 = !DILocation(line: 207, column: 44, scope: !2492)
!2498 = !DILocation(line: 207, column: 52, scope: !2492)
!2499 = !DILocation(line: 207, column: 3, scope: !2492)
!2500 = !DILocation(line: 208, column: 2, scope: !2492)
!2501 = !DILocation(line: 209, column: 16, scope: !2468)
!2502 = !DILocation(line: 209, column: 2, scope: !2468)
!2503 = !DILocation(line: 210, column: 1, scope: !2468)
!2504 = distinct !DISubprogram(name: "bans_show_channel", scope: !880, file: !880, line: 212, type: !2505, isLocal: true, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !935)
!2505 = !DISubroutineType(types: !2506)
!2506 = !{null, !832, !222}
!2507 = !DILocalVariable(name: "channel", arg: 1, scope: !2504, file: !880, line: 212, type: !832)
!2508 = !DILocation(line: 212, column: 48, scope: !2504)
!2509 = !DILocalVariable(name: "server", arg: 2, scope: !2504, file: !880, line: 212, type: !222)
!2510 = !DILocation(line: 212, column: 73, scope: !2504)
!2511 = !DILocalVariable(name: "tmp", scope: !2504, file: !880, line: 214, type: !397)
!2512 = !DILocation(line: 214, column: 10, scope: !2504)
!2513 = !DILocalVariable(name: "counter", scope: !2504, file: !880, line: 215, type: !230)
!2514 = !DILocation(line: 215, column: 13, scope: !2504)
!2515 = !DILocation(line: 217, column: 6, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2504, file: !880, line: 217, column: 6)
!2517 = !DILocation(line: 217, column: 15, scope: !2516)
!2518 = !DILocation(line: 217, column: 23, scope: !2516)
!2519 = !DILocation(line: 217, column: 6, scope: !2504)
!2520 = !DILocation(line: 218, column: 39, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2516, file: !880, line: 217, column: 31)
!2522 = !DILocation(line: 218, column: 47, scope: !2521)
!2523 = !DILocation(line: 218, column: 56, scope: !2521)
!2524 = !DILocation(line: 218, column: 109, scope: !2521)
!2525 = !DILocation(line: 218, column: 118, scope: !2521)
!2526 = !DILocation(line: 218, column: 3, scope: !2521)
!2527 = !DILocation(line: 221, column: 3, scope: !2521)
!2528 = !DILocation(line: 225, column: 17, scope: !2504)
!2529 = !DILocation(line: 226, column: 13, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2504, file: !880, line: 226, column: 2)
!2531 = !DILocation(line: 226, column: 22, scope: !2530)
!2532 = !DILocation(line: 226, column: 11, scope: !2530)
!2533 = !DILocation(line: 226, column: 7, scope: !2530)
!2534 = !DILocation(line: 226, column: 31, scope: !2535)
!2535 = !DILexicalBlockFile(scope: !2536, file: !880, discriminator: 1)
!2536 = distinct !DILexicalBlock(scope: !2530, file: !880, line: 226, column: 2)
!2537 = !DILocation(line: 226, column: 35, scope: !2535)
!2538 = !DILocation(line: 226, column: 2, scope: !2535)
!2539 = !DILocalVariable(name: "rec", scope: !2540, file: !880, line: 227, type: !2541)
!2540 = distinct !DILexicalBlock(scope: !2536, file: !880, line: 226, column: 60)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64, align: 64)
!2542 = !DIDerivedType(tag: DW_TAG_typedef, name: "BAN_REC", file: !2543, line: 8, baseType: !2544)
!2543 = !DIFile(filename: "../../../src/irc/core/mode-lists.h", directory: "/home/lichi/Desktop/irssi/task1")
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2543, line: 4, size: 192, align: 64, elements: !2545)
!2545 = !{!2546, !2547, !2548}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "ban", scope: !2544, file: !2543, line: 5, baseType: !243, size: 64, align: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "setby", scope: !2544, file: !2543, line: 6, baseType: !243, size: 64, align: 64, offset: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2544, file: !2543, line: 7, baseType: !481, size: 64, align: 64, offset: 128)
!2549 = !DILocation(line: 227, column: 12, scope: !2540)
!2550 = !DILocation(line: 227, column: 18, scope: !2540)
!2551 = !DILocation(line: 227, column: 23, scope: !2540)
!2552 = !DILocation(line: 229, column: 39, scope: !2540)
!2553 = !DILocation(line: 229, column: 47, scope: !2540)
!2554 = !DILocation(line: 229, column: 56, scope: !2540)
!2555 = !DILocation(line: 229, column: 86, scope: !2540)
!2556 = !DILocation(line: 229, column: 91, scope: !2540)
!2557 = !DILocation(line: 229, column: 97, scope: !2540)
!2558 = !DILocation(line: 229, column: 2, scope: !2540)
!2559 = !DILocation(line: 229, column: 6, scope: !2560)
!2560 = !DILexicalBlockFile(scope: !2540, file: !880, discriminator: 1)
!2561 = !DILocation(line: 229, column: 11, scope: !2560)
!2562 = !DILocation(line: 229, column: 5, scope: !2560)
!2563 = !DILocation(line: 229, column: 17, scope: !2560)
!2564 = !DILocation(line: 229, column: 2, scope: !2560)
!2565 = !DILocation(line: 229, column: 85, scope: !2566)
!2566 = !DILexicalBlockFile(scope: !2540, file: !880, discriminator: 2)
!2567 = !DILocation(line: 229, column: 66, scope: !2566)
!2568 = !DILocation(line: 229, column: 75, scope: !2566)
!2569 = !DILocation(line: 229, column: 84, scope: !2566)
!2570 = !DILocation(line: 229, column: 98, scope: !2566)
!2571 = !DILocation(line: 229, column: 103, scope: !2566)
!2572 = !DILocation(line: 229, column: 108, scope: !2566)
!2573 = !DILocation(line: 229, column: 113, scope: !2566)
!2574 = !DILocation(line: 229, column: 127, scope: !2566)
!2575 = !DILocation(line: 229, column: 4, scope: !2566)
!2576 = !DILocation(line: 229, column: 9, scope: !2566)
!2577 = !DILocation(line: 229, column: 3, scope: !2566)
!2578 = !DILocation(line: 229, column: 120, scope: !2566)
!2579 = !DILocation(line: 229, column: 3, scope: !2580)
!2580 = !DILexicalBlockFile(scope: !2566, file: !880, discriminator: 3)
!2581 = !DILocation(line: 235, column: 24, scope: !2540)
!2582 = !DILocation(line: 236, column: 2, scope: !2540)
!2583 = !DILocation(line: 226, column: 49, scope: !2584)
!2584 = !DILexicalBlockFile(scope: !2536, file: !880, discriminator: 2)
!2585 = !DILocation(line: 226, column: 54, scope: !2584)
!2586 = !DILocation(line: 226, column: 47, scope: !2584)
!2587 = !DILocation(line: 226, column: 2, scope: !2584)
!2588 = distinct !{!2588, !2589}
!2589 = !DILocation(line: 226, column: 2, scope: !2504)
!2590 = !DILocation(line: 237, column: 1, scope: !2504)
!2591 = distinct !DISubprogram(name: "cmd_oper_got_pass", scope: !880, file: !880, line: 352, type: !2592, isLocal: true, isDefinition: true, scopeLine: 353, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !935)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{null, !623, !878}
!2594 = !DILocalVariable(name: "password", arg: 1, scope: !2591, file: !880, line: 352, type: !623)
!2595 = !DILocation(line: 352, column: 43, scope: !2591)
!2596 = !DILocalVariable(name: "rec", arg: 2, scope: !2591, file: !880, line: 352, type: !878)
!2597 = !DILocation(line: 352, column: 68, scope: !2591)
!2598 = !DILocalVariable(name: "server_rec", scope: !2591, file: !880, line: 354, type: !535)
!2599 = !DILocation(line: 354, column: 14, scope: !2591)
!2600 = !DILocation(line: 354, column: 43, scope: !2591)
!2601 = !DILocation(line: 354, column: 48, scope: !2591)
!2602 = !DILocation(line: 354, column: 27, scope: !2591)
!2603 = !DILocation(line: 355, column: 7, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2591, file: !880, line: 355, column: 6)
!2605 = !DILocation(line: 355, column: 6, scope: !2604)
!2606 = !DILocation(line: 355, column: 16, scope: !2604)
!2607 = !DILocation(line: 355, column: 24, scope: !2604)
!2608 = !DILocation(line: 355, column: 107, scope: !2609)
!2609 = !DILexicalBlockFile(scope: !2604, file: !880, discriminator: 1)
!2610 = !DILocation(line: 355, column: 89, scope: !2609)
!2611 = !DILocation(line: 355, column: 74, scope: !2609)
!2612 = !DILocation(line: 355, column: 73, scope: !2609)
!2613 = !DILocation(line: 355, column: 48, scope: !2614)
!2614 = !DILexicalBlockFile(scope: !2609, file: !880, discriminator: 4)
!2615 = !DILocation(line: 355, column: 29, scope: !2609)
!2616 = !DILocation(line: 355, column: 6, scope: !2609)
!2617 = !DILocation(line: 355, column: 28, scope: !2618)
!2618 = !DILexicalBlockFile(scope: !2604, file: !880, discriminator: 2)
!2619 = !DILocation(line: 355, column: 6, scope: !2620)
!2620 = !DILexicalBlockFile(scope: !2591, file: !880, discriminator: 3)
!2621 = !DILocation(line: 356, column: 36, scope: !2604)
!2622 = !DILocation(line: 356, column: 17, scope: !2604)
!2623 = !DILocation(line: 356, column: 62, scope: !2604)
!2624 = !DILocation(line: 356, column: 67, scope: !2604)
!2625 = !DILocation(line: 356, column: 73, scope: !2604)
!2626 = !DILocation(line: 356, column: 3, scope: !2604)
!2627 = !DILocation(line: 357, column: 9, scope: !2591)
!2628 = !DILocation(line: 357, column: 14, scope: !2591)
!2629 = !DILocation(line: 357, column: 2, scope: !2591)
!2630 = !DILocation(line: 358, column: 9, scope: !2591)
!2631 = !DILocation(line: 358, column: 14, scope: !2591)
!2632 = !DILocation(line: 358, column: 2, scope: !2591)
!2633 = !DILocation(line: 359, column: 9, scope: !2591)
!2634 = !DILocation(line: 359, column: 2, scope: !2591)
!2635 = !DILocation(line: 360, column: 1, scope: !2591)
