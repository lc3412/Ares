; ModuleID = './line276-fe-dcc-chat.o.i'
source_filename = "./line276-fe-dcc-chat.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.CHAT_DCC_REC = type { i32, i32, i64, %struct._IRC_SERVER_REC*, i8*, i8*, i8*, %struct.CHAT_DCC_REC*, i8*, i8*, %struct._IPADDR, [46 x i8], i32, %struct._GIOChannel*, i32, i32, i32, i64, i64, i32, i8, %struct._GHashTable*, i8*, %struct._NET_SENDBUF_REC*, i8 }
%struct._IRC_SERVER_REC = type { i32, i32, i32, %struct._IRC_SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, void (%struct._SERVER_REC*, i8*, i32)*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)*, %struct._GSList*, %struct._GSList*, %struct._REDIRECT_REC*, %struct._GSList*, i8*, i8*, i8*, i8*, i8*, i32, i16, i32, i32, i32, i32, %struct._GHashTable*, %struct._GSList*, %struct._GSList*, %struct._GString*, i32, i32, %struct._GSList*, %struct._GTimeVal, %struct._GTimeVal, i32, i32, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GHashTable*, %struct._GSList*, %struct._GSList*, i8*, %struct._GHashTable*, [256 x %struct.modes_type], [256 x i8], i32 (i8*, i8*)* }
%struct._IRC_SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.modes_type = type { void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, i8 }
%struct._IRC_CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._IRC_SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)*, %struct._GSList*, i64, i32, i32 }
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
%struct._GHashTable = type opaque
%struct._NET_SENDBUF_REC = type opaque
%struct.DCC_REC = type { i32, i32, i64, %struct._IRC_SERVER_REC*, i8*, i8*, i8*, %struct.CHAT_DCC_REC*, i8*, i8*, %struct._IPADDR, [46 x i8], i32, %struct._GIOChannel*, i32, i32, i32, i64, i64, i32, i8, %struct._GHashTable* }

@.str = private unnamed_addr constant [18 x i8] c"fe-common/irc/dcc\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"dcc request\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"dcc connected\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"dcc closed\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"dcc chat message\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"dcc ctcp action\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"default dcc ctcp\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"dcc error ctcp\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"default ctcp msg dcc\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"default ctcp reply dcc\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"dcc destroyed\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"query destroyed\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"dcc list print\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"me\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"ctcp\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"dcc error close not found\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"DCC\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"CHAT\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"autocreate_query_level\00", align 1
@__func__.dcc_chat_msg = private unnamed_addr constant [13 x i8] c"dcc_chat_msg\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"IS_DCC_CHAT(dcc)\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"msg != NULL\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"emphasis\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"message dcc\00", align 1
@__func__.dcc_chat_action = private unnamed_addr constant [16 x i8] c"dcc_chat_action\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"message dcc action\00", align 1
@__func__.dcc_chat_ctcp = private unnamed_addr constant [14 x i8] c"dcc_chat_ctcp\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"message dcc ctcp\00", align 1
@__func__.dcc_unknown_ctcp = private unnamed_addr constant [17 x i8] c"dcc_unknown_ctcp\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@__func__.dcc_unknown_reply = private unnamed_addr constant [18 x i8] c"dcc_unknown_reply\00", align 1
@__func__.cmd_msg = private unnamed_addr constant [8 x i8] c"cmd_msg\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.31 = private unnamed_addr constant [16 x i8] c"message dcc own\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"message dcc own_action\00", align 1
@__func__.cmd_action = private unnamed_addr constant [11 x i8] c"cmd_action\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"error command\00", align 1
@__func__.cmd_ctcp = private unnamed_addr constant [9 x i8] c"cmd_ctcp\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c"message dcc own_ctcp\00", align 1
@__func__.dcc_error_close_not_found = private unnamed_addr constant [26 x i8] c"dcc_error_close_not_found\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"type != NULL\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"nick != NULL\00", align 1

; Function Attrs: nounwind uwtable
define void @fe_dcc_chat_init() #0 !dbg !895 {
  call void @fe_dcc_chat_messages_init(), !dbg !898
  call void @signal_add_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.CHAT_DCC_REC*)* @dcc_request to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !899
  call void @signal_add_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.CHAT_DCC_REC*)* @dcc_connected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !900
  call void @signal_add_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.CHAT_DCC_REC*)* @dcc_closed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !901
  call void @signal_add_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.CHAT_DCC_REC*, i8*)* @dcc_chat_msg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !902
  call void @signal_add_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.CHAT_DCC_REC*, i8*)* @dcc_chat_action to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !903
  call void @signal_add_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.CHAT_DCC_REC*, i8*, i8*)* @dcc_chat_ctcp to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !904
  call void @signal_add_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*, i8*, i8*, i8*)* @dcc_error_ctcp to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !905
  call void @signal_add_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*, %struct.CHAT_DCC_REC*)* @dcc_unknown_ctcp to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !906
  call void @signal_add_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @dcc_unknown_reply to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !907
  call void @signal_add_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.CHAT_DCC_REC*)* @sig_dcc_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !908
  call void @signal_add_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._QUERY_REC*)* @sig_query_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !909
  call void @signal_add_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.CHAT_DCC_REC*)* @sig_dcc_list_print to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !910
  call void @command_bind_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_msg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !911
  call void @command_bind_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_me to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !912
  call void @command_bind_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_action to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !913
  call void @command_bind_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*)* @cmd_ctcp to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !914
  call void @signal_add_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*, i8*)* @dcc_error_close_not_found to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !915
  ret void, !dbg !916
}

declare void @fe_dcc_chat_messages_init() #1

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @dcc_request(%struct.CHAT_DCC_REC*) #0 !dbg !917 {
  %2 = alloca %struct.CHAT_DCC_REC*, align 8
  store %struct.CHAT_DCC_REC* %0, %struct.CHAT_DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %2, metadata !920, metadata !921), !dbg !922
  %3 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !923
  %4 = bitcast %struct.CHAT_DCC_REC* %3 to i8*, !dbg !923
  %5 = call i8* @module_check_cast_module(i8* %4, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0)), !dbg !925
  %6 = bitcast i8* %5 to %struct.CHAT_DCC_REC*, !dbg !926
  %7 = icmp ne %struct.CHAT_DCC_REC* %6, null, !dbg !926
  br i1 %7, label %8, label %9, !dbg !927

; <label>:8:                                      ; preds = %1
  br i1 false, label %10, label %11, !dbg !928

; <label>:9:                                      ; preds = %1
  br i1 false, label %11, label %10, !dbg !930

; <label>:10:                                     ; preds = %9, %8
  br label %48, !dbg !932

; <label>:11:                                     ; preds = %9, %8
  %12 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !934
  %13 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %12, i32 0, i32 3, !dbg !935
  %14 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %13, align 8, !dbg !935
  %15 = bitcast %struct._IRC_SERVER_REC* %14 to i8*, !dbg !934
  %16 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !936
  %17 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %16, i32 0, i32 3, !dbg !937
  %18 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %17, align 8, !dbg !937
  %19 = bitcast %struct._IRC_SERVER_REC* %18 to i8*, !dbg !936
  %20 = call i8* @module_check_cast(i8* %19, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0)), !dbg !938
  %21 = bitcast i8* %20 to %struct._SERVER_REC*, !dbg !939
  %22 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %21, i32 0, i32 27, !dbg !940
  %23 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %22, align 8, !dbg !940
  %24 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !941
  %25 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %24, i32 0, i32 3, !dbg !942
  %26 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %25, align 8, !dbg !942
  %27 = bitcast %struct._IRC_SERVER_REC* %26 to i8*, !dbg !941
  %28 = call i8* @module_check_cast(i8* %27, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0)), !dbg !943
  %29 = bitcast i8* %28 to %struct._SERVER_REC*, !dbg !945
  %30 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !946
  %31 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %30, i32 0, i32 8, !dbg !939
  %32 = load i8*, i8** %31, align 8, !dbg !939
  %33 = call i32 %23(%struct._SERVER_REC* %29, i8* %32), !dbg !947
  %34 = icmp ne i32 %33, 0, !dbg !948
  %35 = select i1 %34, i32 13, i32 12, !dbg !948
  %36 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !949
  %37 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %36, i32 0, i32 22, !dbg !950
  %38 = load i8*, i8** %37, align 8, !dbg !950
  %39 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !951
  %40 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %39, i32 0, i32 11, !dbg !952
  %41 = getelementptr inbounds [46 x i8], [46 x i8]* %40, i32 0, i32 0, !dbg !951
  %42 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !953
  %43 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %42, i32 0, i32 12, !dbg !954
  %44 = load i32, i32* %43, align 4, !dbg !954
  %45 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !955
  %46 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %45, i32 0, i32 8, !dbg !956
  %47 = load i8*, i8** %46, align 8, !dbg !956
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* %15, i8* null, i32 65536, i32 %35, i8* %38, i8* %41, i32 %44, i8* %47), !dbg !957
  br label %48, !dbg !959

; <label>:48:                                     ; preds = %11, %10
  ret void, !dbg !960
}

; Function Attrs: nounwind uwtable
define internal void @dcc_connected(%struct.CHAT_DCC_REC*) #0 !dbg !961 {
  %2 = alloca %struct.CHAT_DCC_REC*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.CHAT_DCC_REC* %0, %struct.CHAT_DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %2, metadata !962, metadata !921), !dbg !963
  call void @llvm.dbg.declare(metadata i8** %3, metadata !964, metadata !921), !dbg !965
  %6 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !966
  %7 = bitcast %struct.CHAT_DCC_REC* %6 to i8*, !dbg !966
  %8 = call i8* @module_check_cast_module(i8* %7, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0)), !dbg !968
  %9 = bitcast i8* %8 to %struct.CHAT_DCC_REC*, !dbg !969
  %10 = icmp ne %struct.CHAT_DCC_REC* %9, null, !dbg !969
  br i1 %10, label %11, label %12, !dbg !970

; <label>:11:                                     ; preds = %1
  br i1 false, label %13, label %14, !dbg !971

; <label>:12:                                     ; preds = %1
  br i1 false, label %14, label %13, !dbg !973

; <label>:13:                                     ; preds = %12, %11
  br label %54, !dbg !975

; <label>:14:                                     ; preds = %12, %11
  %15 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !977
  %16 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %15, i32 0, i32 22, !dbg !978
  %17 = load i8*, i8** %16, align 8, !dbg !978
  %18 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), i8* %17, i8* null), !dbg !979
  store i8* %18, i8** %3, align 8, !dbg !980
  %19 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !981
  %20 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %19, i32 0, i32 3, !dbg !982
  %21 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %20, align 8, !dbg !982
  %22 = bitcast %struct._IRC_SERVER_REC* %21 to i8*, !dbg !981
  %23 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !983
  %24 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %23, i32 0, i32 22, !dbg !984
  %25 = load i8*, i8** %24, align 8, !dbg !984
  %26 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !985
  %27 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %26, i32 0, i32 11, !dbg !986
  %28 = getelementptr inbounds [46 x i8], [46 x i8]* %27, i32 0, i32 0, !dbg !985
  %29 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !987
  %30 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %29, i32 0, i32 12, !dbg !988
  %31 = load i32, i32* %30, align 4, !dbg !988
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* %22, i8* null, i32 65536, i32 15, i8* %25, i8* %28, i32 %31), !dbg !989
  %32 = load i8*, i8** %3, align 8, !dbg !990
  %33 = call %struct._QUERY_REC* @query_find(%struct._SERVER_REC* null, i8* %32), !dbg !992
  %34 = icmp eq %struct._QUERY_REC* %33, null, !dbg !993
  br i1 %34, label %35, label %52, !dbg !994

; <label>:35:                                     ; preds = %14
  call void @llvm.dbg.declare(metadata i32* %4, metadata !995, metadata !921), !dbg !997
  %36 = call i32 @settings_get_level(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i32 0, i32 0)), !dbg !998
  store i32 %36, i32* %4, align 4, !dbg !997
  call void @llvm.dbg.declare(metadata i32* %5, metadata !999, metadata !921), !dbg !1000
  %37 = load i32, i32* %4, align 4, !dbg !1001
  %38 = and i32 %37, 131072, !dbg !1002
  %39 = icmp ne i32 %38, 0, !dbg !1003
  %40 = zext i1 %39 to i32, !dbg !1003
  store i32 %40, i32* %5, align 4, !dbg !1000
  %41 = load i32, i32* %5, align 4, !dbg !1004
  %42 = icmp ne i32 %41, 0, !dbg !1004
  br i1 %42, label %45, label %43, !dbg !1006

; <label>:43:                                     ; preds = %35
  %44 = load i8*, i8** %3, align 8, !dbg !1007
  call void @completion_last_message_add(i8* %44), !dbg !1008
  br label %51, !dbg !1008

; <label>:45:                                     ; preds = %35
  %46 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !1009
  %47 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %46, i32 0, i32 4, !dbg !1010
  %48 = load i8*, i8** %47, align 8, !dbg !1010
  %49 = load i8*, i8** %3, align 8, !dbg !1011
  %50 = call %struct._QUERY_REC* @irc_query_create(i8* %48, i8* %49, i32 1), !dbg !1012
  br label %51

; <label>:51:                                     ; preds = %45, %43
  br label %52, !dbg !1013

; <label>:52:                                     ; preds = %51, %14
  %53 = load i8*, i8** %3, align 8, !dbg !1014
  call void @g_free(i8* %53), !dbg !1015
  br label %54, !dbg !1016

; <label>:54:                                     ; preds = %52, %13
  ret void, !dbg !1017
}

; Function Attrs: nounwind uwtable
define internal void @dcc_closed(%struct.CHAT_DCC_REC*) #0 !dbg !1019 {
  %2 = alloca %struct.CHAT_DCC_REC*, align 8
  %3 = alloca i8*, align 8
  store %struct.CHAT_DCC_REC* %0, %struct.CHAT_DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %2, metadata !1020, metadata !921), !dbg !1021
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1022, metadata !921), !dbg !1023
  %4 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !1024
  %5 = bitcast %struct.CHAT_DCC_REC* %4 to i8*, !dbg !1024
  %6 = call i8* @module_check_cast_module(i8* %5, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0)), !dbg !1026
  %7 = bitcast i8* %6 to %struct.CHAT_DCC_REC*, !dbg !1027
  %8 = icmp ne %struct.CHAT_DCC_REC* %7, null, !dbg !1027
  br i1 %8, label %9, label %10, !dbg !1028

; <label>:9:                                      ; preds = %1
  br i1 false, label %11, label %12, !dbg !1029

; <label>:10:                                     ; preds = %1
  br i1 false, label %12, label %11, !dbg !1031

; <label>:11:                                     ; preds = %10, %9
  br label %25, !dbg !1033

; <label>:12:                                     ; preds = %10, %9
  %13 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !1035
  %14 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %13, i32 0, i32 22, !dbg !1036
  %15 = load i8*, i8** %14, align 8, !dbg !1036
  %16 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), i8* %15, i8* null), !dbg !1037
  store i8* %16, i8** %3, align 8, !dbg !1038
  %17 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !1039
  %18 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %17, i32 0, i32 3, !dbg !1040
  %19 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %18, align 8, !dbg !1040
  %20 = bitcast %struct._IRC_SERVER_REC* %19 to i8*, !dbg !1039
  %21 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !1040
  %22 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %21, i32 0, i32 22, !dbg !1041
  %23 = load i8*, i8** %22, align 8, !dbg !1041
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* %20, i8* null, i32 65536, i32 16, i8* %23), !dbg !1042
  %24 = load i8*, i8** %3, align 8, !dbg !1043
  call void @g_free(i8* %24), !dbg !1044
  br label %25, !dbg !1045

; <label>:25:                                     ; preds = %12, %11
  ret void, !dbg !1046
}

; Function Attrs: nounwind uwtable
define internal void @dcc_chat_msg(%struct.CHAT_DCC_REC*, i8*) #0 !dbg !1048 {
  %3 = alloca %struct.CHAT_DCC_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._QUERY_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.CHAT_DCC_REC* %0, %struct.CHAT_DCC_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %3, metadata !1051, metadata !921), !dbg !1052
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1053, metadata !921), !dbg !1054
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %5, metadata !1055, metadata !921), !dbg !1056
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1057, metadata !921), !dbg !1058
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1059, metadata !921), !dbg !1060
  br label %8, !dbg !1061, !llvm.loop !1062

; <label>:8:                                      ; preds = %2
  %9 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !1063
  %10 = bitcast %struct.CHAT_DCC_REC* %9 to i8*, !dbg !1063
  %11 = call i8* @module_check_cast_module(i8* %10, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0)), !dbg !1067
  %12 = bitcast i8* %11 to %struct.CHAT_DCC_REC*, !dbg !1068
  %13 = icmp ne %struct.CHAT_DCC_REC* %12, null, !dbg !1068
  br i1 %13, label %14, label %15, !dbg !1069

; <label>:14:                                     ; preds = %8
  br i1 false, label %17, label %16, !dbg !1070

; <label>:15:                                     ; preds = %8
  br i1 false, label %16, label %17, !dbg !1072

; <label>:16:                                     ; preds = %15, %14
  br label %18, !dbg !1074

; <label>:17:                                     ; preds = %15, %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.dcc_chat_msg, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0)), !dbg !1077
  br label %52, !dbg !1080

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !1081

; <label>:19:                                     ; preds = %18
  br label %20, !dbg !1083, !llvm.loop !1084

; <label>:20:                                     ; preds = %19
  %21 = load i8*, i8** %4, align 8, !dbg !1085
  %22 = icmp ne i8* %21, null, !dbg !1089
  br i1 %22, label %23, label %24, !dbg !1085

; <label>:23:                                     ; preds = %20
  br label %25, !dbg !1090

; <label>:24:                                     ; preds = %20
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.dcc_chat_msg, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0)), !dbg !1093
  br label %52, !dbg !1096

; <label>:25:                                     ; preds = %23
  br label %26, !dbg !1097

; <label>:26:                                     ; preds = %25
  %27 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !1099
  %28 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %27, i32 0, i32 22, !dbg !1100
  %29 = load i8*, i8** %28, align 8, !dbg !1100
  %30 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), i8* %29, i8* null), !dbg !1101
  store i8* %30, i8** %6, align 8, !dbg !1102
  %31 = load i8*, i8** %6, align 8, !dbg !1103
  %32 = call %struct._QUERY_REC* @query_find(%struct._SERVER_REC* null, i8* %31), !dbg !1104
  store %struct._QUERY_REC* %32, %struct._QUERY_REC** %5, align 8, !dbg !1105
  %33 = call i32 @settings_get_bool(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0)), !dbg !1106
  %34 = icmp ne i32 %33, 0, !dbg !1106
  br i1 %34, label %35, label %40, !dbg !1108

; <label>:35:                                     ; preds = %26
  %36 = load %struct._QUERY_REC*, %struct._QUERY_REC** %5, align 8, !dbg !1109
  %37 = bitcast %struct._QUERY_REC* %36 to %struct._WI_ITEM_REC*, !dbg !1110
  %38 = load i8*, i8** %4, align 8, !dbg !1111
  %39 = call i8* @expand_emphasis(%struct._WI_ITEM_REC* %37, i8* %38), !dbg !1112
  store i8* %39, i8** %7, align 8, !dbg !1113
  store i8* %39, i8** %4, align 8, !dbg !1114
  br label %41, !dbg !1115

; <label>:40:                                     ; preds = %26
  store i8* null, i8** %7, align 8, !dbg !1116
  br label %41

; <label>:41:                                     ; preds = %40, %35
  %42 = load %struct._QUERY_REC*, %struct._QUERY_REC** %5, align 8, !dbg !1117
  %43 = icmp eq %struct._QUERY_REC* %42, null, !dbg !1119
  br i1 %43, label %44, label %46, !dbg !1120

; <label>:44:                                     ; preds = %41
  %45 = load i8*, i8** %6, align 8, !dbg !1121
  call void @completion_last_message_add(i8* %45), !dbg !1122
  br label %46, !dbg !1122

; <label>:46:                                     ; preds = %44, %41
  %47 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !1123
  %48 = load i8*, i8** %4, align 8, !dbg !1124
  %49 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), i32 2, %struct.CHAT_DCC_REC* %47, i8* %48), !dbg !1125
  %50 = load i8*, i8** %7, align 8, !dbg !1126
  call void @g_free(i8* %50), !dbg !1127
  %51 = load i8*, i8** %6, align 8, !dbg !1128
  call void @g_free(i8* %51), !dbg !1129
  br label %52, !dbg !1130

; <label>:52:                                     ; preds = %46, %24, %17
  ret void, !dbg !1131
}

; Function Attrs: nounwind uwtable
define internal void @dcc_chat_action(%struct.CHAT_DCC_REC*, i8*) #0 !dbg !1133 {
  %3 = alloca %struct.CHAT_DCC_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.CHAT_DCC_REC* %0, %struct.CHAT_DCC_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %3, metadata !1134, metadata !921), !dbg !1135
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1136, metadata !921), !dbg !1137
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1138, metadata !921), !dbg !1139
  br label %6, !dbg !1140, !llvm.loop !1141

; <label>:6:                                      ; preds = %2
  %7 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !1142
  %8 = bitcast %struct.CHAT_DCC_REC* %7 to i8*, !dbg !1142
  %9 = call i8* @module_check_cast_module(i8* %8, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0)), !dbg !1146
  %10 = bitcast i8* %9 to %struct.CHAT_DCC_REC*, !dbg !1147
  %11 = icmp ne %struct.CHAT_DCC_REC* %10, null, !dbg !1147
  br i1 %11, label %12, label %13, !dbg !1148

; <label>:12:                                     ; preds = %6
  br i1 false, label %15, label %14, !dbg !1149

; <label>:13:                                     ; preds = %6
  br i1 false, label %14, label %15, !dbg !1151

; <label>:14:                                     ; preds = %13, %12
  br label %16, !dbg !1153

; <label>:15:                                     ; preds = %13, %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.dcc_chat_action, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0)), !dbg !1156
  br label %39, !dbg !1159

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !1160

; <label>:17:                                     ; preds = %16
  br label %18, !dbg !1162, !llvm.loop !1163

; <label>:18:                                     ; preds = %17
  %19 = load i8*, i8** %4, align 8, !dbg !1164
  %20 = icmp ne i8* %19, null, !dbg !1168
  br i1 %20, label %21, label %22, !dbg !1164

; <label>:21:                                     ; preds = %18
  br label %23, !dbg !1169

; <label>:22:                                     ; preds = %18
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.dcc_chat_action, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0)), !dbg !1172
  br label %39, !dbg !1175

; <label>:23:                                     ; preds = %21
  br label %24, !dbg !1176

; <label>:24:                                     ; preds = %23
  %25 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !1178
  %26 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %25, i32 0, i32 22, !dbg !1179
  %27 = load i8*, i8** %26, align 8, !dbg !1179
  %28 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), i8* %27, i8* null), !dbg !1180
  store i8* %28, i8** %5, align 8, !dbg !1181
  %29 = load i8*, i8** %5, align 8, !dbg !1182
  %30 = call %struct._QUERY_REC* @query_find(%struct._SERVER_REC* null, i8* %29), !dbg !1184
  %31 = icmp eq %struct._QUERY_REC* %30, null, !dbg !1185
  br i1 %31, label %32, label %34, !dbg !1186

; <label>:32:                                     ; preds = %24
  %33 = load i8*, i8** %5, align 8, !dbg !1187
  call void @completion_last_message_add(i8* %33), !dbg !1188
  br label %34, !dbg !1188

; <label>:34:                                     ; preds = %32, %24
  %35 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !1189
  %36 = load i8*, i8** %4, align 8, !dbg !1190
  %37 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i32 0, i32 0), i32 2, %struct.CHAT_DCC_REC* %35, i8* %36), !dbg !1191
  %38 = load i8*, i8** %5, align 8, !dbg !1192
  call void @g_free(i8* %38), !dbg !1193
  br label %39, !dbg !1194

; <label>:39:                                     ; preds = %34, %22, %15
  ret void, !dbg !1195
}

; Function Attrs: nounwind uwtable
define internal void @dcc_chat_ctcp(%struct.CHAT_DCC_REC*, i8*, i8*) #0 !dbg !1197 {
  %4 = alloca %struct.CHAT_DCC_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.CHAT_DCC_REC* %0, %struct.CHAT_DCC_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %4, metadata !1200, metadata !921), !dbg !1201
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1202, metadata !921), !dbg !1203
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1204, metadata !921), !dbg !1205
  br label %7, !dbg !1206, !llvm.loop !1207

; <label>:7:                                      ; preds = %3
  %8 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %4, align 8, !dbg !1208
  %9 = bitcast %struct.CHAT_DCC_REC* %8 to i8*, !dbg !1208
  %10 = call i8* @module_check_cast_module(i8* %9, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0)), !dbg !1212
  %11 = bitcast i8* %10 to %struct.CHAT_DCC_REC*, !dbg !1213
  %12 = icmp ne %struct.CHAT_DCC_REC* %11, null, !dbg !1213
  br i1 %12, label %13, label %14, !dbg !1214

; <label>:13:                                     ; preds = %7
  br i1 false, label %16, label %15, !dbg !1215

; <label>:14:                                     ; preds = %7
  br i1 false, label %15, label %16, !dbg !1217

; <label>:15:                                     ; preds = %14, %13
  br label %17, !dbg !1219

; <label>:16:                                     ; preds = %14, %13
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.dcc_chat_ctcp, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i32 0, i32 0)), !dbg !1222
  br label %23, !dbg !1225

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !1226

; <label>:18:                                     ; preds = %17
  %19 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %4, align 8, !dbg !1228
  %20 = load i8*, i8** %5, align 8, !dbg !1229
  %21 = load i8*, i8** %6, align 8, !dbg !1230
  %22 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i32 0, i32 0), i32 3, %struct.CHAT_DCC_REC* %19, i8* %20, i8* %21), !dbg !1231
  br label %23, !dbg !1232

; <label>:23:                                     ; preds = %18, %16
  ret void, !dbg !1233
}

; Function Attrs: nounwind uwtable
define internal void @dcc_error_ctcp(i8*, i8*, i8*, i8*, i8*) #0 !dbg !1235 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1238, metadata !921), !dbg !1239
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1240, metadata !921), !dbg !1241
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1242, metadata !921), !dbg !1243
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1244, metadata !921), !dbg !1245
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1246, metadata !921), !dbg !1247
  %11 = load i8*, i8** %6, align 8, !dbg !1248
  %12 = load i8*, i8** %8, align 8, !dbg !1249
  %13 = load i8*, i8** %9, align 8, !dbg !1250
  %14 = load i8*, i8** %10, align 8, !dbg !1251
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 65536, i32 34, i8* %11, i8* %12, i8* %13, i8* %14), !dbg !1252
  ret void, !dbg !1253
}

; Function Attrs: nounwind uwtable
define internal void @dcc_unknown_ctcp(%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*, %struct.CHAT_DCC_REC*) #0 !dbg !1254 {
  %7 = alloca %struct._IRC_SERVER_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.CHAT_DCC_REC*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %7, metadata !1257, metadata !921), !dbg !1258
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1259, metadata !921), !dbg !1260
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1261, metadata !921), !dbg !1262
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1263, metadata !921), !dbg !1264
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1265, metadata !921), !dbg !1266
  store %struct.CHAT_DCC_REC* %5, %struct.CHAT_DCC_REC** %12, align 8
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %12, metadata !1267, metadata !921), !dbg !1268
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1269, metadata !921), !dbg !1270
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1271, metadata !921), !dbg !1272
  call void @llvm.dbg.declare(metadata i8** %15, metadata !1273, metadata !921), !dbg !1274
  br label %16, !dbg !1275, !llvm.loop !1276

; <label>:16:                                     ; preds = %6
  %17 = load i8*, i8** %8, align 8, !dbg !1277
  %18 = icmp ne i8* %17, null, !dbg !1281
  br i1 %18, label %19, label %20, !dbg !1277

; <label>:19:                                     ; preds = %16
  br label %21, !dbg !1282

; <label>:20:                                     ; preds = %16
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.dcc_unknown_ctcp, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0)), !dbg !1285
  br label %32, !dbg !1288

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !1289

; <label>:22:                                     ; preds = %21
  %23 = load i8*, i8** %8, align 8, !dbg !1291
  %24 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %23, i8** %15, i32 8194, i8** %13, i8** %14), !dbg !1293
  %25 = icmp ne i32 %24, 0, !dbg !1293
  br i1 %25, label %27, label %26, !dbg !1294

; <label>:26:                                     ; preds = %22
  br label %32, !dbg !1295

; <label>:27:                                     ; preds = %22
  %28 = load i8*, i8** %13, align 8, !dbg !1296
  %29 = load i8*, i8** %9, align 8, !dbg !1297
  %30 = load i8*, i8** %14, align 8, !dbg !1298
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 65536, i32 31, i8* %28, i8* %29, i8* %30), !dbg !1299
  %31 = load i8*, i8** %15, align 8, !dbg !1300
  call void @cmd_params_free(i8* %31), !dbg !1301
  br label %32, !dbg !1302

; <label>:32:                                     ; preds = %27, %26, %20
  ret void, !dbg !1303
}

; Function Attrs: nounwind uwtable
define internal void @dcc_unknown_reply(%struct._IRC_SERVER_REC*, i8*, i8*) #0 !dbg !1305 {
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !1308, metadata !921), !dbg !1309
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1310, metadata !921), !dbg !1311
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1312, metadata !921), !dbg !1313
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1314, metadata !921), !dbg !1315
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1316, metadata !921), !dbg !1317
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1318, metadata !921), !dbg !1319
  br label %10, !dbg !1320, !llvm.loop !1321

; <label>:10:                                     ; preds = %3
  %11 = load i8*, i8** %5, align 8, !dbg !1322
  %12 = icmp ne i8* %11, null, !dbg !1326
  br i1 %12, label %13, label %14, !dbg !1322

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !1327

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.dcc_unknown_reply, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0)), !dbg !1330
  br label %26, !dbg !1333

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !1334

; <label>:16:                                     ; preds = %15
  %17 = load i8*, i8** %5, align 8, !dbg !1336
  %18 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %17, i8** %9, i32 8194, i8** %7, i8** %8), !dbg !1338
  %19 = icmp ne i32 %18, 0, !dbg !1338
  br i1 %19, label %21, label %20, !dbg !1339

; <label>:20:                                     ; preds = %16
  br label %26, !dbg !1340

; <label>:21:                                     ; preds = %16
  %22 = load i8*, i8** %7, align 8, !dbg !1341
  %23 = load i8*, i8** %6, align 8, !dbg !1342
  %24 = load i8*, i8** %8, align 8, !dbg !1343
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 65536, i32 32, i8* %22, i8* %23, i8* %24), !dbg !1344
  %25 = load i8*, i8** %9, align 8, !dbg !1345
  call void @cmd_params_free(i8* %25), !dbg !1346
  br label %26, !dbg !1347

; <label>:26:                                     ; preds = %21, %20, %14
  ret void, !dbg !1348
}

; Function Attrs: nounwind uwtable
define internal void @sig_dcc_destroyed(%struct.CHAT_DCC_REC*) #0 !dbg !1350 {
  %2 = alloca %struct.CHAT_DCC_REC*, align 8
  %3 = alloca %struct._QUERY_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct.CHAT_DCC_REC* %0, %struct.CHAT_DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %2, metadata !1351, metadata !921), !dbg !1352
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %3, metadata !1353, metadata !921), !dbg !1354
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1355, metadata !921), !dbg !1356
  %5 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !1357
  %6 = bitcast %struct.CHAT_DCC_REC* %5 to i8*, !dbg !1357
  %7 = call i8* @module_check_cast_module(i8* %6, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0)), !dbg !1359
  %8 = bitcast i8* %7 to %struct.CHAT_DCC_REC*, !dbg !1360
  %9 = icmp ne %struct.CHAT_DCC_REC* %8, null, !dbg !1360
  br i1 %9, label %10, label %11, !dbg !1361

; <label>:10:                                     ; preds = %1
  br i1 false, label %12, label %13, !dbg !1362

; <label>:11:                                     ; preds = %1
  br i1 false, label %13, label %12, !dbg !1364

; <label>:12:                                     ; preds = %11, %10
  br label %42, !dbg !1366

; <label>:13:                                     ; preds = %11, %10
  %14 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !1368
  %15 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %14, i32 0, i32 22, !dbg !1369
  %16 = load i8*, i8** %15, align 8, !dbg !1369
  %17 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), i8* %16, i8* null), !dbg !1370
  store i8* %17, i8** %4, align 8, !dbg !1371
  %18 = load i8*, i8** %4, align 8, !dbg !1372
  %19 = call %struct._QUERY_REC* @query_find(%struct._SERVER_REC* null, i8* %18), !dbg !1373
  store %struct._QUERY_REC* %19, %struct._QUERY_REC** %3, align 8, !dbg !1374
  %20 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !1375
  %21 = icmp ne %struct._QUERY_REC* %20, null, !dbg !1377
  br i1 %21, label %22, label %38, !dbg !1378

; <label>:22:                                     ; preds = %13
  %23 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !1379
  %24 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %23, i32 0, i32 24, !dbg !1382
  %25 = load i8, i8* %24, align 8, !dbg !1382
  %26 = lshr i8 %25, 1, !dbg !1382
  %27 = and i8 %26, 1, !dbg !1382
  %28 = zext i8 %27 to i32, !dbg !1382
  %29 = icmp ne i32 %28, 0, !dbg !1379
  br i1 %29, label %30, label %36, !dbg !1383

; <label>:30:                                     ; preds = %22
  %31 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !1384
  %32 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %31, i32 0, i32 15, !dbg !1386
  %33 = load i8, i8* %32, align 8, !dbg !1387
  %34 = and i8 %33, -2, !dbg !1387
  %35 = or i8 %34, 1, !dbg !1387
  store i8 %35, i8* %32, align 8, !dbg !1387
  br label %36, !dbg !1384

; <label>:36:                                     ; preds = %30, %22
  %37 = load %struct._QUERY_REC*, %struct._QUERY_REC** %3, align 8, !dbg !1388
  call void @query_destroy(%struct._QUERY_REC* %37), !dbg !1389
  br label %40, !dbg !1390

; <label>:38:                                     ; preds = %13
  %39 = load i8*, i8** %4, align 8, !dbg !1391
  call void @completion_last_message_remove(i8* %39), !dbg !1393
  br label %40

; <label>:40:                                     ; preds = %38, %36
  %41 = load i8*, i8** %4, align 8, !dbg !1394
  call void @g_free(i8* %41), !dbg !1395
  br label %42, !dbg !1396

; <label>:42:                                     ; preds = %40, %12
  ret void, !dbg !1397
}

; Function Attrs: nounwind uwtable
define internal void @sig_query_destroyed(%struct._QUERY_REC*) #0 !dbg !1399 {
  %2 = alloca %struct._QUERY_REC*, align 8
  %3 = alloca %struct.CHAT_DCC_REC*, align 8
  store %struct._QUERY_REC* %0, %struct._QUERY_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %2, metadata !1402, metadata !921), !dbg !1403
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %3, metadata !1404, metadata !921), !dbg !1405
  %4 = load %struct._QUERY_REC*, %struct._QUERY_REC** %2, align 8, !dbg !1406
  %5 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %4, i32 0, i32 6, !dbg !1408
  %6 = load i8*, i8** %5, align 8, !dbg !1408
  %7 = load i8, i8* %6, align 1, !dbg !1409
  %8 = sext i8 %7 to i32, !dbg !1409
  %9 = icmp ne i32 %8, 61, !dbg !1410
  br i1 %9, label %10, label %11, !dbg !1411

; <label>:10:                                     ; preds = %1
  br label %29, !dbg !1412

; <label>:11:                                     ; preds = %1
  %12 = load %struct._QUERY_REC*, %struct._QUERY_REC** %2, align 8, !dbg !1413
  %13 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %12, i32 0, i32 6, !dbg !1414
  %14 = load i8*, i8** %13, align 8, !dbg !1414
  %15 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !1415
  %16 = call %struct.CHAT_DCC_REC* @dcc_chat_find_id(i8* %15), !dbg !1416
  store %struct.CHAT_DCC_REC* %16, %struct.CHAT_DCC_REC** %3, align 8, !dbg !1417
  %17 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !1418
  %18 = icmp ne %struct.CHAT_DCC_REC* %17, null, !dbg !1420
  br i1 %18, label %19, label %29, !dbg !1421

; <label>:19:                                     ; preds = %11
  %20 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !1422
  %21 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %20, i32 0, i32 20, !dbg !1424
  %22 = load i8, i8* %21, align 4, !dbg !1424
  %23 = and i8 %22, 1, !dbg !1424
  %24 = zext i8 %23 to i32, !dbg !1424
  %25 = icmp ne i32 %24, 0, !dbg !1422
  br i1 %25, label %29, label %26, !dbg !1425

; <label>:26:                                     ; preds = %19
  %27 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !1426
  %28 = bitcast %struct.CHAT_DCC_REC* %27 to %struct.DCC_REC*, !dbg !1428
  call void @dcc_close(%struct.DCC_REC* %28), !dbg !1429
  br label %29, !dbg !1430

; <label>:29:                                     ; preds = %10, %26, %19, %11
  ret void, !dbg !1431
}

; Function Attrs: nounwind uwtable
define internal void @sig_dcc_list_print(%struct.CHAT_DCC_REC*) #0 !dbg !1432 {
  %2 = alloca %struct.CHAT_DCC_REC*, align 8
  store %struct.CHAT_DCC_REC* %0, %struct.CHAT_DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %2, metadata !1433, metadata !921), !dbg !1434
  %3 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !1435
  %4 = bitcast %struct.CHAT_DCC_REC* %3 to i8*, !dbg !1435
  %5 = call i8* @module_check_cast_module(i8* %4, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0)), !dbg !1437
  %6 = bitcast i8* %5 to %struct.CHAT_DCC_REC*, !dbg !1438
  %7 = icmp ne %struct.CHAT_DCC_REC* %6, null, !dbg !1438
  br i1 %7, label %8, label %9, !dbg !1439

; <label>:8:                                      ; preds = %1
  br i1 false, label %10, label %11, !dbg !1440

; <label>:9:                                      ; preds = %1
  br i1 false, label %11, label %10, !dbg !1442

; <label>:10:                                     ; preds = %9, %8
  br label %15, !dbg !1444

; <label>:11:                                     ; preds = %9, %8
  %12 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !1446
  %13 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %12, i32 0, i32 22, !dbg !1447
  %14 = load i8*, i8** %13, align 8, !dbg !1447
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 65536, i32 42, i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0)), !dbg !1448
  br label %15, !dbg !1449

; <label>:15:                                     ; preds = %11, %10
  ret void, !dbg !1450
}

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @cmd_msg(i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !1452 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca %struct.CHAT_DCC_REC*, align 8
  %8 = alloca %struct._GHashTable*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1455, metadata !921), !dbg !1456
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !1457, metadata !921), !dbg !1458
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !1459, metadata !921), !dbg !1460
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %7, metadata !1461, metadata !921), !dbg !1462
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %8, metadata !1463, metadata !921), !dbg !1464
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1465, metadata !921), !dbg !1466
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1467, metadata !921), !dbg !1468
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1469, metadata !921), !dbg !1470
  br label %12, !dbg !1471, !llvm.loop !1472

; <label>:12:                                     ; preds = %3
  %13 = load i8*, i8** %4, align 8, !dbg !1473
  %14 = icmp ne i8* %13, null, !dbg !1477
  br i1 %14, label %15, label %16, !dbg !1473

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !1478

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.cmd_msg, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0)), !dbg !1481
  br label %68, !dbg !1484

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !1485

; <label>:18:                                     ; preds = %17
  %19 = load i8*, i8** %4, align 8, !dbg !1487
  %20 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %19, i8** %11, i32 57346, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), %struct._GHashTable** %8, i8** %10, i8** %9), !dbg !1489
  %21 = icmp ne i32 %20, 0, !dbg !1489
  br i1 %21, label %23, label %22, !dbg !1490

; <label>:22:                                     ; preds = %18
  br label %68, !dbg !1491

; <label>:23:                                     ; preds = %18
  %24 = load i8*, i8** %10, align 8, !dbg !1492
  %25 = call i32 @g_strcmp0(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0)), !dbg !1494
  %26 = icmp eq i32 %25, 0, !dbg !1495
  br i1 %26, label %27, label %30, !dbg !1496

; <label>:27:                                     ; preds = %23
  %28 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1497
  %29 = call %struct.CHAT_DCC_REC* @item_get_dcc(%struct._WI_ITEM_REC* %28), !dbg !1498
  store %struct.CHAT_DCC_REC* %29, %struct.CHAT_DCC_REC** %7, align 8, !dbg !1499
  br label %41, !dbg !1500

; <label>:30:                                     ; preds = %23
  %31 = load i8*, i8** %10, align 8, !dbg !1501
  %32 = load i8, i8* %31, align 1, !dbg !1503
  %33 = sext i8 %32 to i32, !dbg !1503
  %34 = icmp eq i32 %33, 61, !dbg !1504
  br i1 %34, label %35, label %39, !dbg !1505

; <label>:35:                                     ; preds = %30
  %36 = load i8*, i8** %10, align 8, !dbg !1506
  %37 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !1507
  %38 = call %struct.CHAT_DCC_REC* @dcc_chat_find_id(i8* %37), !dbg !1508
  store %struct.CHAT_DCC_REC* %38, %struct.CHAT_DCC_REC** %7, align 8, !dbg !1509
  br label %40, !dbg !1510

; <label>:39:                                     ; preds = %30
  store %struct.CHAT_DCC_REC* null, %struct.CHAT_DCC_REC** %7, align 8, !dbg !1511
  br label %40

; <label>:40:                                     ; preds = %39, %35
  br label %41

; <label>:41:                                     ; preds = %40, %27
  %42 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %7, align 8, !dbg !1512
  %43 = icmp eq %struct.CHAT_DCC_REC* %42, null, !dbg !1514
  br i1 %43, label %44, label %52, !dbg !1515

; <label>:44:                                     ; preds = %41
  %45 = load i8*, i8** %10, align 8, !dbg !1516
  %46 = load i8, i8* %45, align 1, !dbg !1518
  %47 = sext i8 %46 to i32, !dbg !1518
  %48 = icmp eq i32 %47, 61, !dbg !1519
  br i1 %48, label %49, label %52, !dbg !1520

; <label>:49:                                     ; preds = %44
  %50 = load i8*, i8** %10, align 8, !dbg !1521
  %51 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !1523
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 1048576, i32 14, i8* %51), !dbg !1524
  br label %66, !dbg !1525

; <label>:52:                                     ; preds = %44, %41
  %53 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %7, align 8, !dbg !1526
  %54 = icmp ne %struct.CHAT_DCC_REC* %53, null, !dbg !1529
  br i1 %54, label %55, label %65, !dbg !1526

; <label>:55:                                     ; preds = %52
  %56 = load i8*, i8** %10, align 8, !dbg !1530
  %57 = call %struct._QUERY_REC* @query_find(%struct._SERVER_REC* null, i8* %56), !dbg !1533
  %58 = icmp eq %struct._QUERY_REC* %57, null, !dbg !1534
  br i1 %58, label %59, label %61, !dbg !1535

; <label>:59:                                     ; preds = %55
  %60 = load i8*, i8** %10, align 8, !dbg !1536
  call void @completion_last_message_add(i8* %60), !dbg !1537
  br label %61, !dbg !1537

; <label>:61:                                     ; preds = %59, %55
  %62 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %7, align 8, !dbg !1538
  %63 = load i8*, i8** %9, align 8, !dbg !1539
  %64 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i32 0, i32 0), i32 2, %struct.CHAT_DCC_REC* %62, i8* %63), !dbg !1540
  br label %65, !dbg !1541

; <label>:65:                                     ; preds = %61, %52
  br label %66

; <label>:66:                                     ; preds = %65, %49
  %67 = load i8*, i8** %11, align 8, !dbg !1542
  call void @cmd_params_free(i8* %67), !dbg !1543
  br label %68, !dbg !1544

; <label>:68:                                     ; preds = %66, %22, %16
  ret void, !dbg !1545
}

; Function Attrs: nounwind uwtable
define internal void @cmd_me(i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !1547 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca %struct.CHAT_DCC_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1548, metadata !921), !dbg !1549
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !1550, metadata !921), !dbg !1551
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !1552, metadata !921), !dbg !1553
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %7, metadata !1554, metadata !921), !dbg !1555
  %8 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1556
  %9 = call %struct.CHAT_DCC_REC* @item_get_dcc(%struct._WI_ITEM_REC* %8), !dbg !1557
  store %struct.CHAT_DCC_REC* %9, %struct.CHAT_DCC_REC** %7, align 8, !dbg !1558
  %10 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %7, align 8, !dbg !1559
  %11 = icmp ne %struct.CHAT_DCC_REC* %10, null, !dbg !1561
  br i1 %11, label %12, label %16, !dbg !1562

; <label>:12:                                     ; preds = %3
  %13 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %7, align 8, !dbg !1563
  %14 = load i8*, i8** %4, align 8, !dbg !1564
  %15 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i32 0, i32 0), i32 2, %struct.CHAT_DCC_REC* %13, i8* %14), !dbg !1565
  br label %16, !dbg !1565

; <label>:16:                                     ; preds = %12, %3
  ret void, !dbg !1566
}

; Function Attrs: nounwind uwtable
define internal void @cmd_action(i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !1567 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca %struct.CHAT_DCC_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1568, metadata !921), !dbg !1569
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !1570, metadata !921), !dbg !1571
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !1572, metadata !921), !dbg !1573
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %7, metadata !1574, metadata !921), !dbg !1575
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1576, metadata !921), !dbg !1577
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1578, metadata !921), !dbg !1579
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1580, metadata !921), !dbg !1581
  br label %11, !dbg !1582, !llvm.loop !1583

; <label>:11:                                     ; preds = %3
  %12 = load i8*, i8** %4, align 8, !dbg !1584
  %13 = icmp ne i8* %12, null, !dbg !1588
  br i1 %13, label %14, label %15, !dbg !1584

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !1589

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.cmd_action, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0)), !dbg !1592
  br label %71, !dbg !1595

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !1596

; <label>:17:                                     ; preds = %16
  %18 = load i8*, i8** %4, align 8, !dbg !1598
  %19 = load i8, i8* %18, align 1, !dbg !1600
  %20 = sext i8 %19 to i32, !dbg !1600
  %21 = icmp ne i32 %20, 61, !dbg !1601
  br i1 %21, label %22, label %23, !dbg !1602

; <label>:22:                                     ; preds = %17
  br label %71, !dbg !1603

; <label>:23:                                     ; preds = %17
  %24 = load i8*, i8** %4, align 8, !dbg !1605
  %25 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %24, i8** %10, i32 8194, i8** %8, i8** %9), !dbg !1607
  %26 = icmp ne i32 %25, 0, !dbg !1607
  br i1 %26, label %28, label %27, !dbg !1608

; <label>:27:                                     ; preds = %23
  br label %71, !dbg !1609

; <label>:28:                                     ; preds = %23
  %29 = load i8*, i8** %8, align 8, !dbg !1610
  %30 = load i8, i8* %29, align 1, !dbg !1612
  %31 = sext i8 %30 to i32, !dbg !1612
  %32 = icmp eq i32 %31, 0, !dbg !1613
  br i1 %32, label %38, label %33, !dbg !1614

; <label>:33:                                     ; preds = %28
  %34 = load i8*, i8** %9, align 8, !dbg !1615
  %35 = load i8, i8* %34, align 1, !dbg !1617
  %36 = sext i8 %35 to i32, !dbg !1617
  %37 = icmp eq i32 %36, 0, !dbg !1618
  br i1 %37, label %38, label %45, !dbg !1619

; <label>:38:                                     ; preds = %33, %28
  br label %39, !dbg !1620, !llvm.loop !1621

; <label>:39:                                     ; preds = %38
  %40 = load i8*, i8** %10, align 8, !dbg !1622
  call void @cmd_params_free(i8* %40), !dbg !1625
  br label %41, !dbg !1626, !llvm.loop !1627

; <label>:41:                                     ; preds = %39
  %42 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !1629
  call void @signal_stop(), !dbg !1632
  br label %71, !dbg !1634
                                                  ; No predecessors!
  br label %44, !dbg !1635

; <label>:44:                                     ; preds = %43
  br label %45, !dbg !1637

; <label>:45:                                     ; preds = %44, %33
  %46 = load i8*, i8** %8, align 8, !dbg !1639
  %47 = getelementptr inbounds i8, i8* %46, i64 1, !dbg !1640
  %48 = call %struct.CHAT_DCC_REC* @dcc_chat_find_id(i8* %47), !dbg !1641
  store %struct.CHAT_DCC_REC* %48, %struct.CHAT_DCC_REC** %7, align 8, !dbg !1642
  %49 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %7, align 8, !dbg !1643
  %50 = icmp eq %struct.CHAT_DCC_REC* %49, null, !dbg !1645
  br i1 %50, label %56, label %51, !dbg !1646

; <label>:51:                                     ; preds = %45
  %52 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %7, align 8, !dbg !1647
  %53 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %52, i32 0, i32 23, !dbg !1649
  %54 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %53, align 8, !dbg !1649
  %55 = icmp eq %struct._NET_SENDBUF_REC* %54, null, !dbg !1650
  br i1 %55, label %56, label %59, !dbg !1651

; <label>:56:                                     ; preds = %51, %45
  %57 = load i8*, i8** %8, align 8, !dbg !1652
  %58 = getelementptr inbounds i8, i8* %57, i64 1, !dbg !1654
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 1048576, i32 14, i8* %58), !dbg !1655
  br label %69, !dbg !1656

; <label>:59:                                     ; preds = %51
  %60 = load i8*, i8** %8, align 8, !dbg !1657
  %61 = call %struct._QUERY_REC* @query_find(%struct._SERVER_REC* null, i8* %60), !dbg !1660
  %62 = icmp eq %struct._QUERY_REC* %61, null, !dbg !1661
  br i1 %62, label %63, label %65, !dbg !1662

; <label>:63:                                     ; preds = %59
  %64 = load i8*, i8** %8, align 8, !dbg !1663
  call void @completion_last_message_add(i8* %64), !dbg !1664
  br label %65, !dbg !1664

; <label>:65:                                     ; preds = %63, %59
  %66 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %7, align 8, !dbg !1665
  %67 = load i8*, i8** %9, align 8, !dbg !1666
  %68 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i32 0, i32 0), i32 2, %struct.CHAT_DCC_REC* %66, i8* %67), !dbg !1667
  br label %69

; <label>:69:                                     ; preds = %65, %56
  %70 = load i8*, i8** %10, align 8, !dbg !1668
  call void @cmd_params_free(i8* %70), !dbg !1669
  br label %71, !dbg !1670

; <label>:71:                                     ; preds = %69, %41, %27, %22, %15
  ret void, !dbg !1671
}

; Function Attrs: nounwind uwtable
define internal void @cmd_ctcp(i8*, %struct._SERVER_REC*) #0 !dbg !1673 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca %struct.CHAT_DCC_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1676, metadata !921), !dbg !1677
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1678, metadata !921), !dbg !1679
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %5, metadata !1680, metadata !921), !dbg !1681
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1682, metadata !921), !dbg !1683
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1684, metadata !921), !dbg !1685
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1686, metadata !921), !dbg !1687
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1688, metadata !921), !dbg !1689
  br label %10, !dbg !1690, !llvm.loop !1691

; <label>:10:                                     ; preds = %2
  %11 = load i8*, i8** %3, align 8, !dbg !1692
  %12 = icmp ne i8* %11, null, !dbg !1696
  br i1 %12, label %13, label %14, !dbg !1692

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !1697

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.cmd_ctcp, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0)), !dbg !1700
  br label %82, !dbg !1703

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !1704

; <label>:16:                                     ; preds = %15
  %17 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1706
  %18 = icmp eq %struct._SERVER_REC* %17, null, !dbg !1708
  br i1 %18, label %26, label %19, !dbg !1709

; <label>:19:                                     ; preds = %16
  %20 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1710
  %21 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %20, i32 0, i32 8, !dbg !1712
  %22 = load i8, i8* %21, align 8, !dbg !1712
  %23 = and i8 %22, 1, !dbg !1712
  %24 = zext i8 %23 to i32, !dbg !1712
  %25 = icmp ne i32 %24, 0, !dbg !1710
  br i1 %25, label %30, label %26, !dbg !1713

; <label>:26:                                     ; preds = %19, %16
  br label %27, !dbg !1714, !llvm.loop !1715

; <label>:27:                                     ; preds = %26
  %28 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !1716
  call void @signal_stop(), !dbg !1719
  br label %82, !dbg !1721
                                                  ; No predecessors!
  br label %30, !dbg !1722

; <label>:30:                                     ; preds = %29, %19
  %31 = load i8*, i8** %3, align 8, !dbg !1724
  %32 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %31, i8** %9, i32 8195, i8** %6, i8** %7, i8** %8), !dbg !1726
  %33 = icmp ne i32 %32, 0, !dbg !1726
  br i1 %33, label %35, label %34, !dbg !1727

; <label>:34:                                     ; preds = %30
  br label %82, !dbg !1728

; <label>:35:                                     ; preds = %30
  %36 = load i8*, i8** %6, align 8, !dbg !1729
  %37 = load i8, i8* %36, align 1, !dbg !1731
  %38 = sext i8 %37 to i32, !dbg !1731
  %39 = icmp eq i32 %38, 0, !dbg !1732
  br i1 %39, label %45, label %40, !dbg !1733

; <label>:40:                                     ; preds = %35
  %41 = load i8*, i8** %7, align 8, !dbg !1734
  %42 = load i8, i8* %41, align 1, !dbg !1736
  %43 = sext i8 %42 to i32, !dbg !1736
  %44 = icmp eq i32 %43, 0, !dbg !1737
  br i1 %44, label %45, label %52, !dbg !1738

; <label>:45:                                     ; preds = %40, %35
  br label %46, !dbg !1739, !llvm.loop !1740

; <label>:46:                                     ; preds = %45
  %47 = load i8*, i8** %9, align 8, !dbg !1741
  call void @cmd_params_free(i8* %47), !dbg !1744
  br label %48, !dbg !1745, !llvm.loop !1746

; <label>:48:                                     ; preds = %46
  %49 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !1748
  call void @signal_stop(), !dbg !1751
  br label %82, !dbg !1753
                                                  ; No predecessors!
  br label %51, !dbg !1754

; <label>:51:                                     ; preds = %50
  br label %52, !dbg !1756

; <label>:52:                                     ; preds = %51, %40
  %53 = load i8*, i8** %6, align 8, !dbg !1758
  %54 = load i8, i8* %53, align 1, !dbg !1760
  %55 = sext i8 %54 to i32, !dbg !1760
  %56 = icmp ne i32 %55, 61, !dbg !1761
  br i1 %56, label %57, label %59, !dbg !1762

; <label>:57:                                     ; preds = %52
  %58 = load i8*, i8** %9, align 8, !dbg !1763
  call void @cmd_params_free(i8* %58), !dbg !1765
  br label %82, !dbg !1766

; <label>:59:                                     ; preds = %52
  %60 = load i8*, i8** %6, align 8, !dbg !1767
  %61 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1768
  %62 = call %struct.CHAT_DCC_REC* @dcc_chat_find_id(i8* %61), !dbg !1769
  store %struct.CHAT_DCC_REC* %62, %struct.CHAT_DCC_REC** %5, align 8, !dbg !1770
  %63 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %5, align 8, !dbg !1771
  %64 = icmp eq %struct.CHAT_DCC_REC* %63, null, !dbg !1773
  br i1 %64, label %70, label %65, !dbg !1774

; <label>:65:                                     ; preds = %59
  %66 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %5, align 8, !dbg !1775
  %67 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %66, i32 0, i32 23, !dbg !1777
  %68 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %67, align 8, !dbg !1777
  %69 = icmp eq %struct._NET_SENDBUF_REC* %68, null, !dbg !1778
  br i1 %69, label %70, label %73, !dbg !1779

; <label>:70:                                     ; preds = %65, %59
  %71 = load i8*, i8** %6, align 8, !dbg !1780
  %72 = getelementptr inbounds i8, i8* %71, i64 1, !dbg !1782
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 1048576, i32 14, i8* %72), !dbg !1783
  br label %80, !dbg !1784

; <label>:73:                                     ; preds = %65
  %74 = load i8*, i8** %7, align 8, !dbg !1785
  %75 = call i8* @ascii_strup(i8* %74), !dbg !1787
  %76 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %5, align 8, !dbg !1788
  %77 = load i8*, i8** %7, align 8, !dbg !1789
  %78 = load i8*, i8** %8, align 8, !dbg !1790
  %79 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.34, i32 0, i32 0), i32 3, %struct.CHAT_DCC_REC* %76, i8* %77, i8* %78), !dbg !1791
  br label %80

; <label>:80:                                     ; preds = %73, %70
  %81 = load i8*, i8** %9, align 8, !dbg !1792
  call void @cmd_params_free(i8* %81), !dbg !1793
  br label %82, !dbg !1794

; <label>:82:                                     ; preds = %80, %57, %48, %34, %27, %14
  ret void, !dbg !1795
}

; Function Attrs: nounwind uwtable
define internal void @dcc_error_close_not_found(i8*, i8*, i8*) #0 !dbg !1797 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1800, metadata !921), !dbg !1801
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1802, metadata !921), !dbg !1803
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1804, metadata !921), !dbg !1805
  br label %7, !dbg !1806, !llvm.loop !1807

; <label>:7:                                      ; preds = %3
  %8 = load i8*, i8** %4, align 8, !dbg !1808
  %9 = icmp ne i8* %8, null, !dbg !1812
  br i1 %9, label %10, label %11, !dbg !1808

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !1813

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.dcc_error_close_not_found, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0)), !dbg !1816
  br label %27, !dbg !1819

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !1820

; <label>:13:                                     ; preds = %12
  br label %14, !dbg !1822, !llvm.loop !1823

; <label>:14:                                     ; preds = %13
  %15 = load i8*, i8** %5, align 8, !dbg !1824
  %16 = icmp ne i8* %15, null, !dbg !1828
  br i1 %16, label %17, label %18, !dbg !1824

; <label>:17:                                     ; preds = %14
  br label %19, !dbg !1829

; <label>:18:                                     ; preds = %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.dcc_error_close_not_found, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i32 0, i32 0)), !dbg !1832
  br label %27, !dbg !1835

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !1836

; <label>:20:                                     ; preds = %19
  %21 = load i8*, i8** %4, align 8, !dbg !1838
  %22 = call i32 @g_ascii_strcasecmp(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0)), !dbg !1840
  %23 = icmp ne i32 %22, 0, !dbg !1841
  br i1 %23, label %24, label %25, !dbg !1842

; <label>:24:                                     ; preds = %20
  br label %27, !dbg !1843

; <label>:25:                                     ; preds = %20
  %26 = load i8*, i8** %5, align 8, !dbg !1845
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 65536, i32 14, i8* %26), !dbg !1846
  br label %27, !dbg !1847

; <label>:27:                                     ; preds = %25, %24, %18, %11
  ret void, !dbg !1848
}

; Function Attrs: nounwind uwtable
define void @fe_dcc_chat_deinit() #0 !dbg !1850 {
  call void @fe_dcc_chat_messages_deinit(), !dbg !1851
  call void @signal_remove_full(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.CHAT_DCC_REC*)* @dcc_request to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1852
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.CHAT_DCC_REC*)* @dcc_connected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1853
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.CHAT_DCC_REC*)* @dcc_closed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1854
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.CHAT_DCC_REC*, i8*)* @dcc_chat_msg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1855
  call void @signal_remove_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.CHAT_DCC_REC*, i8*)* @dcc_chat_action to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1856
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.CHAT_DCC_REC*, i8*, i8*)* @dcc_chat_ctcp to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1857
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*, i8*, i8*, i8*)* @dcc_error_ctcp to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1858
  call void @signal_remove_full(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*, %struct.CHAT_DCC_REC*)* @dcc_unknown_ctcp to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1859
  call void @signal_remove_full(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @dcc_unknown_reply to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1860
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.CHAT_DCC_REC*)* @sig_dcc_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1861
  call void @signal_remove_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._QUERY_REC*)* @sig_query_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1862
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.CHAT_DCC_REC*)* @sig_dcc_list_print to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1863
  call void @command_unbind_full(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_msg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1864
  call void @command_unbind_full(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_me to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1865
  call void @command_unbind_full(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_action to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1866
  call void @command_unbind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*)* @cmd_ctcp to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1867
  call void @signal_remove_full(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*, i8*)* @dcc_error_close_not_found to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1868
  ret void, !dbg !1869
}

declare void @fe_dcc_chat_messages_deinit() #1

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i8* @module_check_cast_module(i8*, i32, i8*, i8*) #1

declare void @printformat_module(i8*, i8*, i8*, i32, i32, ...) #1

declare i8* @module_check_cast(i8*, i32, i8*) #1

declare noalias i8* @g_strconcat(i8*, ...) #1

declare %struct._QUERY_REC* @query_find(%struct._SERVER_REC*, i8*) #1

declare i32 @settings_get_level(i8*) #1

declare void @completion_last_message_add(i8*) #1

declare %struct._QUERY_REC* @irc_query_create(i8*, i8*, i32) #1

declare void @g_free(i8*) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i32 @settings_get_bool(i8*) #1

declare i8* @expand_emphasis(%struct._WI_ITEM_REC*, i8*) #1

declare i32 @signal_emit(i8*, i32, ...) #1

declare i32 @cmd_get_params(i8*, i8**, i32, ...) #1

declare void @cmd_params_free(i8*) #1

declare void @query_destroy(%struct._QUERY_REC*) #1

declare void @completion_last_message_remove(i8*) #1

declare %struct.CHAT_DCC_REC* @dcc_chat_find_id(i8*) #1

declare void @dcc_close(%struct.DCC_REC*) #1

declare i32 @g_strcmp0(i8*, i8*) #1

declare %struct.CHAT_DCC_REC* @item_get_dcc(%struct._WI_ITEM_REC*) #1

declare void @signal_stop() #1

declare i8* @ascii_strup(i8*) #1

declare i32 @g_ascii_strcasecmp(i8*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!892, !893}
!llvm.ident = !{!894}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !139)
!1 = !DIFile(filename: "line276-fe-dcc-chat.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10, !15, !24, !35, !66, !118}
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
!36 = !DIFile(filename: "../../../../src/core/levels.h", directory: "/home/lichi/Desktop/irssi/task1")
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
!68 = !{!69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117}
!69 = !DIEnumerator(name: "IRCTXT_MODULE_NAME", value: 0)
!70 = !DIEnumerator(name: "IRCTXT_FILL_1", value: 1)
!71 = !DIEnumerator(name: "IRCTXT_OWN_DCC", value: 2)
!72 = !DIEnumerator(name: "IRCTXT_OWN_DCC_ACTION", value: 3)
!73 = !DIEnumerator(name: "IRCTXT_OWN_DCC_ACTION_QUERY", value: 4)
!74 = !DIEnumerator(name: "IRCTXT_OWN_DCC_CTCP", value: 5)
!75 = !DIEnumerator(name: "IRCTXT_DCC_MSG", value: 6)
!76 = !DIEnumerator(name: "IRCTXT_ACTION_DCC", value: 7)
!77 = !DIEnumerator(name: "IRCTXT_ACTION_DCC_QUERY", value: 8)
!78 = !DIEnumerator(name: "IRCTXT_OWN_DCC_QUERY", value: 9)
!79 = !DIEnumerator(name: "IRCTXT_DCC_MSG_QUERY", value: 10)
!80 = !DIEnumerator(name: "IRCTXT_DCC_CTCP", value: 11)
!81 = !DIEnumerator(name: "IRCTXT_DCC_CHAT", value: 12)
!82 = !DIEnumerator(name: "IRCTXT_DCC_CHAT_CHANNEL", value: 13)
!83 = !DIEnumerator(name: "IRCTXT_DCC_CHAT_NOT_FOUND", value: 14)
!84 = !DIEnumerator(name: "IRCTXT_DCC_CHAT_CONNECTED", value: 15)
!85 = !DIEnumerator(name: "IRCTXT_DCC_CHAT_DISCONNECTED", value: 16)
!86 = !DIEnumerator(name: "IRCTXT_DCC_SEND", value: 17)
!87 = !DIEnumerator(name: "IRCTXT_DCC_SEND_CHANNEL", value: 18)
!88 = !DIEnumerator(name: "IRCTXT_DCC_SEND_EXISTS", value: 19)
!89 = !DIEnumerator(name: "IRCTXT_DCC_SEND_NO_ROUTE", value: 20)
!90 = !DIEnumerator(name: "IRCTXT_DCC_SEND_NOT_FOUND", value: 21)
!91 = !DIEnumerator(name: "IRCTXT_DCC_SEND_FILE_OPEN_ERROR", value: 22)
!92 = !DIEnumerator(name: "IRCTXT_DCC_SEND_CONNECTED", value: 23)
!93 = !DIEnumerator(name: "IRCTXT_DCC_SEND_COMPLETE", value: 24)
!94 = !DIEnumerator(name: "IRCTXT_DCC_SEND_ABORTED", value: 25)
!95 = !DIEnumerator(name: "IRCTXT_DCC_GET_NOT_FOUND", value: 26)
!96 = !DIEnumerator(name: "IRCTXT_DCC_GET_CONNECTED", value: 27)
!97 = !DIEnumerator(name: "IRCTXT_DCC_GET_COMPLETE", value: 28)
!98 = !DIEnumerator(name: "IRCTXT_DCC_GET_ABORTED", value: 29)
!99 = !DIEnumerator(name: "IRCTXT_DCC_GET_WRITE_ERROR", value: 30)
!100 = !DIEnumerator(name: "IRCTXT_DCC_UNKNOWN_CTCP", value: 31)
!101 = !DIEnumerator(name: "IRCTXT_DCC_UNKNOWN_REPLY", value: 32)
!102 = !DIEnumerator(name: "IRCTXT_DCC_UNKNOWN_TYPE", value: 33)
!103 = !DIEnumerator(name: "IRCTXT_DCC_INVALID_CTCP", value: 34)
!104 = !DIEnumerator(name: "IRCTXT_DCC_CONNECT_ERROR", value: 35)
!105 = !DIEnumerator(name: "IRCTXT_DCC_CANT_CREATE", value: 36)
!106 = !DIEnumerator(name: "IRCTXT_DCC_REJECTED", value: 37)
!107 = !DIEnumerator(name: "IRCTXT_DCC_REQUEST_SEND", value: 38)
!108 = !DIEnumerator(name: "IRCTXT_DCC_CLOSE", value: 39)
!109 = !DIEnumerator(name: "IRCTXT_DCC_LOWPORT", value: 40)
!110 = !DIEnumerator(name: "IRCTXT_DCC_LIST_HEADER", value: 41)
!111 = !DIEnumerator(name: "IRCTXT_DCC_LIST_LINE_CHAT", value: 42)
!112 = !DIEnumerator(name: "IRCTXT_DCC_LIST_LINE_FILE", value: 43)
!113 = !DIEnumerator(name: "IRCTXT_DCC_LIST_LINE_QUEUED_SEND", value: 44)
!114 = !DIEnumerator(name: "IRCTXT_DCC_LIST_FOOTER", value: 45)
!115 = !DIEnumerator(name: "IRCTXT_DCC_LIST_LINE_SERVER", value: 46)
!116 = !DIEnumerator(name: "IRCTXT_DCC_SERVER_STARTED", value: 47)
!117 = !DIEnumerator(name: "IRCTXT_DCC_SERVER_CLOSED", value: 48)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !119, line: 25, size: 32, align: 32, elements: !120)
!119 = !DIFile(filename: "../../../../src/core/commands.h", directory: "/home/lichi/Desktop/irssi/task1")
!120 = !{!121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138}
!121 = !DIEnumerator(name: "CMDERR_OPTION_UNKNOWN", value: -3)
!122 = !DIEnumerator(name: "CMDERR_OPTION_AMBIGUOUS", value: -2)
!123 = !DIEnumerator(name: "CMDERR_OPTION_ARG_MISSING", value: -1)
!124 = !DIEnumerator(name: "CMDERR_UNKNOWN", value: 0)
!125 = !DIEnumerator(name: "CMDERR_AMBIGUOUS", value: 1)
!126 = !DIEnumerator(name: "CMDERR_ERRNO", value: 2)
!127 = !DIEnumerator(name: "CMDERR_NOT_ENOUGH_PARAMS", value: 3)
!128 = !DIEnumerator(name: "CMDERR_NOT_CONNECTED", value: 4)
!129 = !DIEnumerator(name: "CMDERR_NOT_JOINED", value: 5)
!130 = !DIEnumerator(name: "CMDERR_CHAN_NOT_FOUND", value: 6)
!131 = !DIEnumerator(name: "CMDERR_CHAN_NOT_SYNCED", value: 7)
!132 = !DIEnumerator(name: "CMDERR_ILLEGAL_PROTO", value: 8)
!133 = !DIEnumerator(name: "CMDERR_NOT_GOOD_IDEA", value: 9)
!134 = !DIEnumerator(name: "CMDERR_INVALID_TIME", value: 10)
!135 = !DIEnumerator(name: "CMDERR_INVALID_CHARSET", value: 11)
!136 = !DIEnumerator(name: "CMDERR_EVAL_MAX_RECURSE", value: 12)
!137 = !DIEnumerator(name: "CMDERR_PROGRAM_NOT_FOUND", value: 13)
!138 = !DIEnumerator(name: "CMDERR_NO_SERVER_DEFINED", value: 14)
!139 = !{!140, !147, !148, !499, !261, !587, !626, !866, !304, !489}
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !141, line: 9, baseType: !142)
!141 = !DIFile(filename: "../../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64, align: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{null, !145, !145, !145, !145, !145, !145}
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAT_DCC_REC", file: !150, line: 9, baseType: !151)
!150 = !DIFile(filename: "../../../../src/irc/dcc/dcc.h", directory: "/home/lichi/Desktop/irssi/task1")
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CHAT_DCC_REC", file: !152, line: 12, size: 1792, align: 64, elements: !153)
!152 = !DIFile(filename: "../../../../src/irc/dcc/dcc-chat.h", directory: "/home/lichi/Desktop/irssi/task1")
!153 = !{!154, !157, !158, !164, !840, !841, !842, !843, !844, !845, !846, !847, !851, !852, !853, !854, !855, !856, !857, !859, !860, !861, !862, !863, !864, !865}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !151, file: !155, line: 1, baseType: !156, size: 32, align: 32)
!155 = !DIFile(filename: "../../../../src/irc/dcc/dcc-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!156 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !151, file: !155, line: 2, baseType: !156, size: 32, align: 32, offset: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "created", scope: !151, file: !155, line: 3, baseType: !159, size: 64, align: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !160, line: 75, baseType: !161)
!160 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !162, line: 139, baseType: !163)
!162 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!163 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !151, file: !155, line: 5, baseType: !165, size: 64, align: 64, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !167, line: 6, baseType: !168)
!167 = !DIFile(filename: "../../../../src/irc/core/irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !169, line: 42, size: 39168, align: 64, elements: !170)
!169 = !DIFile(filename: "../../../../src/irc/core/irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!170 = !{!171, !173, !174, !175, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !461, !462, !466, !467, !468, !472, !477, !478, !479, !480, !481, !482, !483, !484, !491, !492, !493, !494, !495, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !837, !839}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !168, file: !172, line: 3, baseType: !156, size: 32, align: 32)
!172 = !DIFile(filename: "../../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!173 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !168, file: !172, line: 4, baseType: !156, size: 32, align: 32, offset: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !168, file: !172, line: 6, baseType: !156, size: 32, align: 32, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !168, file: !172, line: 8, baseType: !176, size: 64, align: 64, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64, align: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !167, line: 5, baseType: !178)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !169, line: 24, size: 2496, align: 64, elements: !179)
!179 = !{!180, !182, !183, !184, !187, !188, !189, !190, !191, !193, !194, !195, !196, !197, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !178, file: !181, line: 3, baseType: !156, size: 32, align: 32)
!181 = !DIFile(filename: "../../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!182 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !178, file: !181, line: 4, baseType: !156, size: 32, align: 32, offset: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !178, file: !181, line: 6, baseType: !156, size: 32, align: 32, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !178, file: !181, line: 9, baseType: !185, size: 64, align: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64, align: 64)
!186 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !178, file: !181, line: 10, baseType: !156, size: 32, align: 32, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !178, file: !181, line: 11, baseType: !185, size: 64, align: 64, offset: 256)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !178, file: !181, line: 11, baseType: !185, size: 64, align: 64, offset: 320)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !178, file: !181, line: 11, baseType: !185, size: 64, align: 64, offset: 384)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !178, file: !181, line: 13, baseType: !192, size: 16, align: 16, offset: 448)
!192 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !178, file: !181, line: 14, baseType: !185, size: 64, align: 64, offset: 512)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !178, file: !181, line: 15, baseType: !185, size: 64, align: 64, offset: 576)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !178, file: !181, line: 16, baseType: !156, size: 32, align: 32, offset: 640)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !178, file: !181, line: 17, baseType: !185, size: 64, align: 64, offset: 704)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !178, file: !181, line: 19, baseType: !198, size: 64, align: 64, offset: 768)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !200, line: 99, baseType: !201)
!200 = !DIFile(filename: "../../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !202, line: 22, size: 160, align: 32, elements: !203)
!202 = !DIFile(filename: "../../../../src/core/network.h", directory: "/home/lichi/Desktop/irssi/task1")
!203 = !{!204, !205}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !201, file: !202, line: 23, baseType: !192, size: 16, align: 16)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !201, file: !202, line: 24, baseType: !206, size: 128, align: 32, offset: 32)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !207, line: 211, size: 128, align: 32, elements: !208)
!207 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/irssi/task1")
!208 = !{!209}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !206, file: !207, line: 220, baseType: !210, size: 128, align: 32)
!210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !206, file: !207, line: 213, size: 128, align: 32, elements: !211)
!211 = !{!212, !219, !224}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !210, file: !207, line: 215, baseType: !213, size: 128, align: 8)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 128, align: 8, elements: !217)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !215, line: 48, baseType: !216)
!215 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/irssi/task1")
!216 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!217 = !{!218}
!218 = !DISubrange(count: 16)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !210, file: !207, line: 217, baseType: !220, size: 128, align: 16)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 128, align: 16, elements: !222)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !215, line: 49, baseType: !192)
!222 = !{!223}
!223 = !DISubrange(count: 8)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !210, file: !207, line: 218, baseType: !225, size: 128, align: 32)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 128, align: 32, elements: !228)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !215, line: 51, baseType: !227)
!227 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!228 = !{!229}
!229 = !DISubrange(count: 4)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !178, file: !181, line: 19, baseType: !198, size: 64, align: 64, offset: 832)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !178, file: !181, line: 21, baseType: !185, size: 64, align: 64, offset: 896)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !178, file: !181, line: 22, baseType: !185, size: 64, align: 64, offset: 960)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !178, file: !181, line: 23, baseType: !185, size: 64, align: 64, offset: 1024)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !178, file: !181, line: 24, baseType: !185, size: 64, align: 64, offset: 1088)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !178, file: !181, line: 26, baseType: !185, size: 64, align: 64, offset: 1152)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !178, file: !181, line: 27, baseType: !185, size: 64, align: 64, offset: 1216)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !178, file: !181, line: 28, baseType: !185, size: 64, align: 64, offset: 1280)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !178, file: !181, line: 29, baseType: !185, size: 64, align: 64, offset: 1344)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !178, file: !181, line: 30, baseType: !185, size: 64, align: 64, offset: 1408)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !178, file: !181, line: 31, baseType: !185, size: 64, align: 64, offset: 1472)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !178, file: !181, line: 32, baseType: !185, size: 64, align: 64, offset: 1536)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !178, file: !181, line: 33, baseType: !185, size: 64, align: 64, offset: 1600)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !178, file: !181, line: 35, baseType: !244, size: 64, align: 64, offset: 1664)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64, align: 64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !246)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !247)
!247 = !{!248, !251, !393, !394, !399, !400, !401, !402, !403, !412, !413, !414, !418, !419, !420, !421, !422, !423, !424, !425}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !246, file: !4, line: 100, baseType: !249, size: 32, align: 32)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !250, line: 49, baseType: !156)
!250 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!251 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !246, file: !4, line: 101, baseType: !252, size: 64, align: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !255)
!255 = !{!256, !279, !285, !291, !295, !380, !384, !389}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !254, file: !4, line: 133, baseType: !257, size: 64, align: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64, align: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!260, !244, !261, !263, !266, !267}
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64, align: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !250, line: 46, baseType: !186)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !264, line: 66, baseType: !265)
!264 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!265 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64, align: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64, align: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64, align: 64)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !270, line: 42, baseType: !271)
!270 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !270, line: 44, size: 128, align: 64, elements: !272)
!272 = !{!273, !277, !278}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !271, file: !270, line: 46, baseType: !274, size: 32, align: 32)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !275, line: 36, baseType: !276)
!275 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !264, line: 45, baseType: !227)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !271, file: !270, line: 47, baseType: !249, size: 32, align: 32, offset: 32)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !271, file: !270, line: 48, baseType: !261, size: 64, align: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !254, file: !4, line: 138, baseType: !280, size: 64, align: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64, align: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!260, !244, !283, !263, !266, !267}
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !262)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !254, file: !4, line: 143, baseType: !286, size: 64, align: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64, align: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!260, !244, !289, !290, !267}
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !264, line: 51, baseType: !163)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !254, file: !4, line: 147, baseType: !292, size: 64, align: 64, offset: 192)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, align: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{!260, !244, !267}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !254, file: !4, line: 149, baseType: !296, size: 64, align: 64, offset: 256)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64, align: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!299, !244, !379}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !301)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !302)
!302 = !{!303, !305, !326, !355, !357, !361, !362, !363, !364, !372, !373, !374, !375}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !301, file: !16, line: 174, baseType: !304, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !250, line: 77, baseType: !147)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !301, file: !16, line: 175, baseType: !306, size: 64, align: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !308)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !309)
!309 = !{!310, !314, !315}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !308, file: !16, line: 198, baseType: !311, size: 64, align: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !304}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !308, file: !16, line: 199, baseType: !311, size: 64, align: 64, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !308, file: !16, line: 200, baseType: !316, size: 64, align: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64, align: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !304, !299, !319, !325}
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64, align: 64)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64, align: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!324, !304}
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !250, line: 50, baseType: !249)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64, align: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !301, file: !16, line: 177, baseType: !327, size: 64, align: 64, offset: 128)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, align: 64)
!328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !330)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !331)
!331 = !{!332, !337, !341, !345, !349, !350}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !330, file: !16, line: 216, baseType: !333, size: 64, align: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64, align: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!324, !299, !336}
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64, align: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !330, file: !16, line: 218, baseType: !338, size: 64, align: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64, align: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{!324, !299}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !330, file: !16, line: 219, baseType: !342, size: 64, align: 64, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64, align: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{!324, !299, !320, !304}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !330, file: !16, line: 222, baseType: !346, size: 64, align: 64, offset: 192)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64, align: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{null, !299}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !330, file: !16, line: 226, baseType: !320, size: 64, align: 64, offset: 256)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !330, file: !16, line: 227, baseType: !351, size: 64, align: 64, offset: 320)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64, align: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{null}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !301, file: !16, line: 178, baseType: !356, size: 32, align: 32, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !250, line: 55, baseType: !227)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !301, file: !16, line: 180, baseType: !358, size: 64, align: 64, offset: 256)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !360)
!360 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !301, file: !16, line: 182, baseType: !249, size: 32, align: 32, offset: 320)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !301, file: !16, line: 183, baseType: !356, size: 32, align: 32, offset: 352)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !301, file: !16, line: 184, baseType: !356, size: 32, align: 32, offset: 384)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !301, file: !16, line: 186, baseType: !365, size: 64, align: 64, offset: 448)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64, align: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !367, line: 37, baseType: !368)
!367 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !367, line: 39, size: 128, align: 64, elements: !369)
!369 = !{!370, !371}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !368, file: !367, line: 41, baseType: !304, size: 64, align: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !368, file: !367, line: 42, baseType: !365, size: 64, align: 64, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !301, file: !16, line: 188, baseType: !299, size: 64, align: 64, offset: 512)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !301, file: !16, line: 189, baseType: !299, size: 64, align: 64, offset: 576)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !301, file: !16, line: 191, baseType: !185, size: 64, align: 64, offset: 640)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !301, file: !16, line: 193, baseType: !376, size: 64, align: 64, offset: 704)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64, align: 64)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !378)
!378 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !254, file: !4, line: 151, baseType: !381, size: 64, align: 64, offset: 320)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64, align: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !244}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !254, file: !4, line: 152, baseType: !385, size: 64, align: 64, offset: 384)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64, align: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{!260, !244, !388, !267}
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !254, file: !4, line: 155, baseType: !390, size: 64, align: 64, offset: 448)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64, align: 64)
!391 = !DISubroutineType(types: !392)
!392 = !{!388, !244}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !246, file: !4, line: 103, baseType: !261, size: 64, align: 64, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !246, file: !4, line: 104, baseType: !395, size: 64, align: 64, offset: 192)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !396, line: 77, baseType: !397)
!396 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64, align: 64)
!398 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !396, line: 77, flags: DIFlagFwdDecl)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !246, file: !4, line: 105, baseType: !395, size: 64, align: 64, offset: 256)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !246, file: !4, line: 106, baseType: !261, size: 64, align: 64, offset: 320)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !246, file: !4, line: 107, baseType: !356, size: 32, align: 32, offset: 384)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !246, file: !4, line: 109, baseType: !263, size: 64, align: 64, offset: 448)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !246, file: !4, line: 110, baseType: !404, size: 64, align: 64, offset: 512)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64, align: 64)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !406, line: 39, baseType: !407)
!406 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !406, line: 41, size: 192, align: 64, elements: !408)
!408 = !{!409, !410, !411}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !407, file: !406, line: 43, baseType: !261, size: 64, align: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !407, file: !406, line: 44, baseType: !263, size: 64, align: 64, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !407, file: !406, line: 45, baseType: !263, size: 64, align: 64, offset: 128)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !246, file: !4, line: 111, baseType: !404, size: 64, align: 64, offset: 576)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !246, file: !4, line: 112, baseType: !404, size: 64, align: 64, offset: 640)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !246, file: !4, line: 113, baseType: !415, size: 48, align: 8, offset: 704)
!415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 48, align: 8, elements: !416)
!416 = !{!417}
!417 = !DISubrange(count: 6)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !246, file: !4, line: 117, baseType: !356, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !246, file: !4, line: 118, baseType: !356, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !246, file: !4, line: 119, baseType: !356, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !246, file: !4, line: 120, baseType: !356, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !246, file: !4, line: 121, baseType: !356, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !246, file: !4, line: 122, baseType: !356, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !246, file: !4, line: 124, baseType: !304, size: 64, align: 64, offset: 768)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !246, file: !4, line: 125, baseType: !304, size: 64, align: 64, offset: 832)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !178, file: !181, line: 38, baseType: !227, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !178, file: !181, line: 39, baseType: !227, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !178, file: !181, line: 40, baseType: !227, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !178, file: !181, line: 41, baseType: !227, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !178, file: !181, line: 42, baseType: !227, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !178, file: !181, line: 43, baseType: !227, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !178, file: !181, line: 44, baseType: !227, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !178, file: !181, line: 45, baseType: !227, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !178, file: !181, line: 46, baseType: !185, size: 64, align: 64, offset: 1792)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !178, file: !181, line: 47, baseType: !185, size: 64, align: 64, offset: 1856)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !178, file: !169, line: 27, baseType: !185, size: 64, align: 64, offset: 1920)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !178, file: !169, line: 28, baseType: !185, size: 64, align: 64, offset: 1984)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !178, file: !169, line: 30, baseType: !156, size: 32, align: 32, offset: 2048)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !178, file: !169, line: 31, baseType: !185, size: 64, align: 64, offset: 2112)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !178, file: !169, line: 32, baseType: !185, size: 64, align: 64, offset: 2176)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !178, file: !169, line: 34, baseType: !156, size: 32, align: 32, offset: 2240)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !178, file: !169, line: 35, baseType: !156, size: 32, align: 32, offset: 2272)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !178, file: !169, line: 36, baseType: !156, size: 32, align: 32, offset: 2304)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !178, file: !169, line: 38, baseType: !156, size: 32, align: 32, offset: 2336)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !178, file: !169, line: 38, baseType: !156, size: 32, align: 32, offset: 2368)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !178, file: !169, line: 38, baseType: !156, size: 32, align: 32, offset: 2400)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !178, file: !169, line: 38, baseType: !156, size: 32, align: 32, offset: 2432)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !168, file: !172, line: 9, baseType: !159, size: 64, align: 64, offset: 192)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !168, file: !172, line: 10, baseType: !159, size: 64, align: 64, offset: 256)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !168, file: !172, line: 12, baseType: !185, size: 64, align: 64, offset: 320)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !168, file: !172, line: 13, baseType: !185, size: 64, align: 64, offset: 384)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !168, file: !172, line: 15, baseType: !227, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !168, file: !172, line: 16, baseType: !227, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !168, file: !172, line: 17, baseType: !227, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !168, file: !172, line: 18, baseType: !227, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !168, file: !172, line: 19, baseType: !227, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !168, file: !172, line: 21, baseType: !458, size: 64, align: 64, offset: 512)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64, align: 64)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !200, line: 102, baseType: !460)
!460 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !200, line: 102, flags: DIFlagFwdDecl)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !168, file: !172, line: 22, baseType: !156, size: 32, align: 32, offset: 576)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !168, file: !172, line: 25, baseType: !463, size: 128, align: 64, offset: 640)
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !244, size: 128, align: 64, elements: !464)
!464 = !{!465}
!465 = !DISubrange(count: 2)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !168, file: !172, line: 26, baseType: !156, size: 32, align: 32, offset: 768)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !168, file: !172, line: 27, baseType: !156, size: 32, align: 32, offset: 800)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !168, file: !172, line: 29, baseType: !469, size: 64, align: 64, offset: 832)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64, align: 64)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !200, line: 103, baseType: !471)
!471 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !200, line: 103, flags: DIFlagFwdDecl)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !168, file: !172, line: 30, baseType: !473, size: 64, align: 64, offset: 896)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64, align: 64)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !475, line: 37, baseType: !476)
!475 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!476 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !475, line: 37, flags: DIFlagFwdDecl)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !168, file: !172, line: 32, baseType: !185, size: 64, align: 64, offset: 960)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !168, file: !172, line: 33, baseType: !185, size: 64, align: 64, offset: 1024)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !168, file: !172, line: 34, baseType: !185, size: 64, align: 64, offset: 1088)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !168, file: !172, line: 35, baseType: !227, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !168, file: !172, line: 36, baseType: !227, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !168, file: !172, line: 37, baseType: !227, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !168, file: !172, line: 38, baseType: !227, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !168, file: !172, line: 40, baseType: !485, size: 128, align: 64, offset: 1216)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !250, line: 504, baseType: !486)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !250, line: 506, size: 128, align: 64, elements: !487)
!487 = !{!488, !490}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !486, file: !250, line: 508, baseType: !489, size: 64, align: 64)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !250, line: 48, baseType: !163)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !486, file: !250, line: 509, baseType: !489, size: 64, align: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !168, file: !172, line: 41, baseType: !159, size: 64, align: 64, offset: 1344)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !168, file: !172, line: 42, baseType: !156, size: 32, align: 32, offset: 1408)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !168, file: !172, line: 44, baseType: !365, size: 64, align: 64, offset: 1472)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !168, file: !172, line: 45, baseType: !365, size: 64, align: 64, offset: 1536)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !168, file: !172, line: 53, baseType: !496, size: 64, align: 64, offset: 1600)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64, align: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !499, !587, !156}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64, align: 64)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !200, line: 107, baseType: !501)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !502, line: 30, size: 2240, align: 64, elements: !503)
!502 = !DIFile(filename: "../../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!503 = !{!504, !505, !506, !507, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !583, !589, !593, !597, !602, !693, !720, !724}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !501, file: !172, line: 3, baseType: !156, size: 32, align: 32)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !501, file: !172, line: 4, baseType: !156, size: 32, align: 32, offset: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !501, file: !172, line: 6, baseType: !156, size: 32, align: 32, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !501, file: !172, line: 8, baseType: !508, size: 64, align: 64, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64, align: 64)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !200, line: 113, baseType: !510)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !502, line: 25, size: 1920, align: 64, elements: !511)
!511 = !{!512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !510, file: !181, line: 3, baseType: !156, size: 32, align: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !510, file: !181, line: 4, baseType: !156, size: 32, align: 32, offset: 32)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !510, file: !181, line: 6, baseType: !156, size: 32, align: 32, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !510, file: !181, line: 9, baseType: !185, size: 64, align: 64, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !510, file: !181, line: 10, baseType: !156, size: 32, align: 32, offset: 192)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !510, file: !181, line: 11, baseType: !185, size: 64, align: 64, offset: 256)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !510, file: !181, line: 11, baseType: !185, size: 64, align: 64, offset: 320)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !510, file: !181, line: 11, baseType: !185, size: 64, align: 64, offset: 384)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !510, file: !181, line: 13, baseType: !192, size: 16, align: 16, offset: 448)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !510, file: !181, line: 14, baseType: !185, size: 64, align: 64, offset: 512)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !510, file: !181, line: 15, baseType: !185, size: 64, align: 64, offset: 576)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !510, file: !181, line: 16, baseType: !156, size: 32, align: 32, offset: 640)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !510, file: !181, line: 17, baseType: !185, size: 64, align: 64, offset: 704)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !510, file: !181, line: 19, baseType: !198, size: 64, align: 64, offset: 768)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !510, file: !181, line: 19, baseType: !198, size: 64, align: 64, offset: 832)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !510, file: !181, line: 21, baseType: !185, size: 64, align: 64, offset: 896)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !510, file: !181, line: 22, baseType: !185, size: 64, align: 64, offset: 960)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !510, file: !181, line: 23, baseType: !185, size: 64, align: 64, offset: 1024)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !510, file: !181, line: 24, baseType: !185, size: 64, align: 64, offset: 1088)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !510, file: !181, line: 26, baseType: !185, size: 64, align: 64, offset: 1152)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !510, file: !181, line: 27, baseType: !185, size: 64, align: 64, offset: 1216)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !510, file: !181, line: 28, baseType: !185, size: 64, align: 64, offset: 1280)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !510, file: !181, line: 29, baseType: !185, size: 64, align: 64, offset: 1344)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !510, file: !181, line: 30, baseType: !185, size: 64, align: 64, offset: 1408)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !510, file: !181, line: 31, baseType: !185, size: 64, align: 64, offset: 1472)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !510, file: !181, line: 32, baseType: !185, size: 64, align: 64, offset: 1536)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !510, file: !181, line: 33, baseType: !185, size: 64, align: 64, offset: 1600)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !510, file: !181, line: 35, baseType: !244, size: 64, align: 64, offset: 1664)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !510, file: !181, line: 38, baseType: !227, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !510, file: !181, line: 39, baseType: !227, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !510, file: !181, line: 40, baseType: !227, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !510, file: !181, line: 41, baseType: !227, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !510, file: !181, line: 42, baseType: !227, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !510, file: !181, line: 43, baseType: !227, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !510, file: !181, line: 44, baseType: !227, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !510, file: !181, line: 45, baseType: !227, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !510, file: !181, line: 46, baseType: !185, size: 64, align: 64, offset: 1792)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !510, file: !181, line: 47, baseType: !185, size: 64, align: 64, offset: 1856)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !501, file: !172, line: 9, baseType: !159, size: 64, align: 64, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !501, file: !172, line: 10, baseType: !159, size: 64, align: 64, offset: 256)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !501, file: !172, line: 12, baseType: !185, size: 64, align: 64, offset: 320)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !501, file: !172, line: 13, baseType: !185, size: 64, align: 64, offset: 384)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !501, file: !172, line: 15, baseType: !227, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !501, file: !172, line: 16, baseType: !227, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !501, file: !172, line: 17, baseType: !227, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !501, file: !172, line: 18, baseType: !227, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !501, file: !172, line: 19, baseType: !227, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !501, file: !172, line: 21, baseType: !458, size: 64, align: 64, offset: 512)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !501, file: !172, line: 22, baseType: !156, size: 32, align: 32, offset: 576)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !501, file: !172, line: 25, baseType: !463, size: 128, align: 64, offset: 640)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !501, file: !172, line: 26, baseType: !156, size: 32, align: 32, offset: 768)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !501, file: !172, line: 27, baseType: !156, size: 32, align: 32, offset: 800)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !501, file: !172, line: 29, baseType: !469, size: 64, align: 64, offset: 832)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !501, file: !172, line: 30, baseType: !473, size: 64, align: 64, offset: 896)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !501, file: !172, line: 32, baseType: !185, size: 64, align: 64, offset: 960)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !501, file: !172, line: 33, baseType: !185, size: 64, align: 64, offset: 1024)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !501, file: !172, line: 34, baseType: !185, size: 64, align: 64, offset: 1088)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !501, file: !172, line: 35, baseType: !227, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !501, file: !172, line: 36, baseType: !227, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !501, file: !172, line: 37, baseType: !227, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !501, file: !172, line: 38, baseType: !227, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !501, file: !172, line: 40, baseType: !485, size: 128, align: 64, offset: 1216)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !501, file: !172, line: 41, baseType: !159, size: 64, align: 64, offset: 1344)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !501, file: !172, line: 42, baseType: !156, size: 32, align: 32, offset: 1408)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !501, file: !172, line: 44, baseType: !365, size: 64, align: 64, offset: 1472)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !501, file: !172, line: 45, baseType: !365, size: 64, align: 64, offset: 1536)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !501, file: !172, line: 53, baseType: !496, size: 64, align: 64, offset: 1600)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !501, file: !172, line: 55, baseType: !580, size: 64, align: 64, offset: 1664)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64, align: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{!156, !499, !186}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !501, file: !172, line: 57, baseType: !584, size: 64, align: 64, offset: 1728)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64, align: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!156, !499, !587}
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64, align: 64)
!588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !501, file: !172, line: 60, baseType: !590, size: 64, align: 64, offset: 1792)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64, align: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!587, !499}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !501, file: !172, line: 62, baseType: !594, size: 64, align: 64, offset: 1856)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64, align: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{null, !499, !587, !587, !156}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !501, file: !172, line: 65, baseType: !598, size: 64, align: 64, offset: 1920)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64, align: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!601, !499, !587, !587}
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64, align: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !501, file: !172, line: 69, baseType: !603, size: 64, align: 64, offset: 1984)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64, align: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!606, !499, !587}
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64, align: 64)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !200, line: 109, baseType: !608)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !609, line: 15, size: 1408, align: 64, elements: !610)
!609 = !DIFile(filename: "../../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!610 = !{!611, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !646, !647, !649, !650, !651, !652, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !608, file: !612, line: 3, baseType: !156, size: 32, align: 32)
!612 = !DIFile(filename: "../../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!613 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !608, file: !612, line: 4, baseType: !156, size: 32, align: 32, offset: 32)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !608, file: !612, line: 5, baseType: !473, size: 64, align: 64, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !608, file: !612, line: 7, baseType: !147, size: 64, align: 64, offset: 128)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !608, file: !612, line: 8, baseType: !499, size: 64, align: 64, offset: 192)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !608, file: !612, line: 9, baseType: !185, size: 64, align: 64, offset: 256)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !608, file: !612, line: 10, baseType: !185, size: 64, align: 64, offset: 320)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !608, file: !612, line: 11, baseType: !159, size: 64, align: 64, offset: 384)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !608, file: !612, line: 12, baseType: !156, size: 32, align: 32, offset: 448)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !608, file: !612, line: 13, baseType: !185, size: 64, align: 64, offset: 512)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !608, file: !612, line: 15, baseType: !623, size: 64, align: 64, offset: 576)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64, align: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{null, !626}
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64, align: 64)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !200, line: 108, baseType: !628)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !629, line: 5, size: 704, align: 64, elements: !630)
!629 = !DIFile(filename: "../../../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!630 = !{!631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !628, file: !612, line: 3, baseType: !156, size: 32, align: 32)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !628, file: !612, line: 4, baseType: !156, size: 32, align: 32, offset: 32)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !628, file: !612, line: 5, baseType: !473, size: 64, align: 64, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !628, file: !612, line: 7, baseType: !147, size: 64, align: 64, offset: 128)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !628, file: !612, line: 8, baseType: !499, size: 64, align: 64, offset: 192)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !628, file: !612, line: 9, baseType: !185, size: 64, align: 64, offset: 256)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !628, file: !612, line: 10, baseType: !185, size: 64, align: 64, offset: 320)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !628, file: !612, line: 11, baseType: !159, size: 64, align: 64, offset: 384)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !628, file: !612, line: 12, baseType: !156, size: 32, align: 32, offset: 448)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !628, file: !612, line: 13, baseType: !185, size: 64, align: 64, offset: 512)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !628, file: !612, line: 15, baseType: !623, size: 64, align: 64, offset: 576)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !628, file: !612, line: 17, baseType: !643, size: 64, align: 64, offset: 640)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64, align: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!587, !626}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !608, file: !612, line: 17, baseType: !643, size: 64, align: 64, offset: 640)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !608, file: !648, line: 5, baseType: !185, size: 64, align: 64, offset: 704)
!648 = !DIFile(filename: "../../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!649 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !608, file: !648, line: 6, baseType: !185, size: 64, align: 64, offset: 768)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !608, file: !648, line: 7, baseType: !159, size: 64, align: 64, offset: 832)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !608, file: !648, line: 9, baseType: !473, size: 64, align: 64, offset: 896)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !608, file: !648, line: 10, baseType: !653, size: 64, align: 64, offset: 960)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64, align: 64)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !200, line: 111, baseType: !655)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !656, line: 13, size: 576, align: 64, elements: !657)
!656 = !DIFile(filename: "../../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!657 = !{!658, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !674, !675}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !655, file: !659, line: 3, baseType: !156, size: 32, align: 32)
!659 = !DIFile(filename: "../../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!660 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !655, file: !659, line: 4, baseType: !156, size: 32, align: 32, offset: 32)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !655, file: !659, line: 6, baseType: !159, size: 64, align: 64, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !655, file: !659, line: 8, baseType: !185, size: 64, align: 64, offset: 128)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !655, file: !659, line: 9, baseType: !185, size: 64, align: 64, offset: 192)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !655, file: !659, line: 10, baseType: !185, size: 64, align: 64, offset: 256)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !655, file: !659, line: 11, baseType: !156, size: 32, align: 32, offset: 320)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !655, file: !659, line: 14, baseType: !227, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !655, file: !659, line: 15, baseType: !227, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !655, file: !659, line: 18, baseType: !227, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !655, file: !659, line: 19, baseType: !227, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !655, file: !659, line: 20, baseType: !227, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !655, file: !659, line: 21, baseType: !227, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !655, file: !659, line: 22, baseType: !673, size: 64, align: 8, offset: 360)
!673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 64, align: 8, elements: !222)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !655, file: !659, line: 26, baseType: !147, size: 64, align: 64, offset: 448)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !655, file: !659, line: 28, baseType: !653, size: 64, align: 64, offset: 512)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !608, file: !648, line: 12, baseType: !227, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !608, file: !648, line: 13, baseType: !185, size: 64, align: 64, offset: 1088)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !608, file: !648, line: 14, baseType: !156, size: 32, align: 32, offset: 1152)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !608, file: !648, line: 15, baseType: !185, size: 64, align: 64, offset: 1216)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !608, file: !648, line: 17, baseType: !227, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !608, file: !648, line: 18, baseType: !227, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !608, file: !648, line: 19, baseType: !227, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !608, file: !648, line: 20, baseType: !227, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !608, file: !648, line: 22, baseType: !227, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !608, file: !648, line: 23, baseType: !227, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !608, file: !648, line: 24, baseType: !227, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !608, file: !648, line: 25, baseType: !227, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !608, file: !648, line: 26, baseType: !227, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !608, file: !648, line: 31, baseType: !690, size: 64, align: 64, offset: 1344)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64, align: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{!185, !606}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !501, file: !172, line: 70, baseType: !694, size: 64, align: 64, offset: 2048)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64, align: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{!697, !499, !587}
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64, align: 64)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !200, line: 110, baseType: !699)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !700, line: 15, size: 960, align: 64, elements: !701)
!700 = !DIFile(filename: "../../../../src/core/queries.h", directory: "/home/lichi/Desktop/irssi/task1")
!701 = !{!702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !716, !717, !718, !719}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !699, file: !612, line: 3, baseType: !156, size: 32, align: 32)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !699, file: !612, line: 4, baseType: !156, size: 32, align: 32, offset: 32)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !699, file: !612, line: 5, baseType: !473, size: 64, align: 64, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !699, file: !612, line: 7, baseType: !147, size: 64, align: 64, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !699, file: !612, line: 8, baseType: !499, size: 64, align: 64, offset: 192)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !699, file: !612, line: 9, baseType: !185, size: 64, align: 64, offset: 256)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !699, file: !612, line: 10, baseType: !185, size: 64, align: 64, offset: 320)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !699, file: !612, line: 11, baseType: !159, size: 64, align: 64, offset: 384)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !699, file: !612, line: 12, baseType: !156, size: 32, align: 32, offset: 448)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !699, file: !612, line: 13, baseType: !185, size: 64, align: 64, offset: 512)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !699, file: !612, line: 15, baseType: !623, size: 64, align: 64, offset: 576)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !699, file: !612, line: 17, baseType: !643, size: 64, align: 64, offset: 640)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !699, file: !715, line: 5, baseType: !185, size: 64, align: 64, offset: 704)
!715 = !DIFile(filename: "../../../../src/core/query-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!716 = !DIDerivedType(tag: DW_TAG_member, name: "server_tag", scope: !699, file: !715, line: 6, baseType: !185, size: 64, align: 64, offset: 768)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "last_unread_msg", scope: !699, file: !715, line: 7, baseType: !159, size: 64, align: 64, offset: 832)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "unwanted", scope: !699, file: !715, line: 9, baseType: !227, size: 1, align: 32, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !699, file: !715, line: 11, baseType: !227, size: 1, align: 32, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !501, file: !172, line: 71, baseType: !721, size: 64, align: 64, offset: 2112)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64, align: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{!156, !587, !587}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !501, file: !172, line: 73, baseType: !721, size: 64, align: 64, offset: 2176)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !168, file: !172, line: 55, baseType: !580, size: 64, align: 64, offset: 1664)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !168, file: !172, line: 57, baseType: !584, size: 64, align: 64, offset: 1728)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !168, file: !172, line: 60, baseType: !590, size: 64, align: 64, offset: 1792)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !168, file: !172, line: 62, baseType: !594, size: 64, align: 64, offset: 1856)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !168, file: !172, line: 65, baseType: !598, size: 64, align: 64, offset: 1920)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !168, file: !172, line: 69, baseType: !603, size: 64, align: 64, offset: 1984)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !168, file: !172, line: 70, baseType: !694, size: 64, align: 64, offset: 2048)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !168, file: !172, line: 71, baseType: !721, size: 64, align: 64, offset: 2112)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !168, file: !172, line: 73, baseType: !721, size: 64, align: 64, offset: 2176)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !168, file: !169, line: 46, baseType: !365, size: 64, align: 64, offset: 2240)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !168, file: !169, line: 47, baseType: !365, size: 64, align: 64, offset: 2304)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !168, file: !169, line: 48, baseType: !737, size: 64, align: 64, offset: 2368)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64, align: 64)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !167, line: 8, baseType: !739)
!739 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !167, line: 8, flags: DIFlagFwdDecl)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !168, file: !169, line: 49, baseType: !365, size: 64, align: 64, offset: 2432)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !168, file: !169, line: 51, baseType: !185, size: 64, align: 64, offset: 2496)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !168, file: !169, line: 53, baseType: !185, size: 64, align: 64, offset: 2560)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !168, file: !169, line: 54, baseType: !185, size: 64, align: 64, offset: 2624)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !168, file: !169, line: 55, baseType: !185, size: 64, align: 64, offset: 2688)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !168, file: !169, line: 56, baseType: !185, size: 64, align: 64, offset: 2752)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !168, file: !169, line: 57, baseType: !156, size: 32, align: 32, offset: 2816)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !168, file: !169, line: 59, baseType: !227, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !168, file: !169, line: 60, baseType: !227, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !168, file: !169, line: 62, baseType: !227, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !168, file: !169, line: 63, baseType: !227, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !168, file: !169, line: 64, baseType: !227, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !168, file: !169, line: 65, baseType: !227, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !168, file: !169, line: 66, baseType: !227, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !168, file: !169, line: 67, baseType: !227, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !168, file: !169, line: 68, baseType: !227, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !168, file: !169, line: 69, baseType: !227, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !168, file: !169, line: 70, baseType: !227, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !168, file: !169, line: 71, baseType: !227, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !168, file: !169, line: 72, baseType: !227, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !168, file: !169, line: 74, baseType: !156, size: 32, align: 32, offset: 2880)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !168, file: !169, line: 75, baseType: !156, size: 32, align: 32, offset: 2912)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !168, file: !169, line: 76, baseType: !156, size: 32, align: 32, offset: 2944)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !168, file: !169, line: 77, baseType: !156, size: 32, align: 32, offset: 2976)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !168, file: !169, line: 79, baseType: !473, size: 64, align: 64, offset: 3008)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !168, file: !169, line: 80, baseType: !365, size: 64, align: 64, offset: 3072)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !168, file: !169, line: 81, baseType: !365, size: 64, align: 64, offset: 3136)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !168, file: !169, line: 83, baseType: !404, size: 64, align: 64, offset: 3200)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !168, file: !169, line: 84, baseType: !356, size: 32, align: 32, offset: 3264)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !168, file: !169, line: 87, baseType: !156, size: 32, align: 32, offset: 3296)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !168, file: !169, line: 91, baseType: !365, size: 64, align: 64, offset: 3328)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !168, file: !169, line: 92, baseType: !485, size: 128, align: 64, offset: 3392)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !168, file: !169, line: 93, baseType: !485, size: 128, align: 64, offset: 3520)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !168, file: !169, line: 95, baseType: !156, size: 32, align: 32, offset: 3648)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !168, file: !169, line: 96, baseType: !156, size: 32, align: 32, offset: 3680)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !168, file: !169, line: 97, baseType: !156, size: 32, align: 32, offset: 3712)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !168, file: !169, line: 100, baseType: !365, size: 64, align: 64, offset: 3776)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !168, file: !169, line: 103, baseType: !365, size: 64, align: 64, offset: 3840)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !168, file: !169, line: 106, baseType: !365, size: 64, align: 64, offset: 3904)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !168, file: !169, line: 108, baseType: !473, size: 64, align: 64, offset: 3968)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !168, file: !169, line: 109, baseType: !365, size: 64, align: 64, offset: 4032)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !168, file: !169, line: 111, baseType: !365, size: 64, align: 64, offset: 4096)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !168, file: !169, line: 114, baseType: !147, size: 64, align: 64, offset: 4160)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !168, file: !169, line: 116, baseType: !473, size: 64, align: 64, offset: 4224)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !168, file: !169, line: 117, baseType: !785, size: 32768, align: 64, offset: 4288)
!785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !786, size: 32768, align: 64, elements: !835)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !787, line: 10, size: 128, align: 64, elements: !788)
!787 = !DIFile(filename: "../../../../src/irc/core/modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!788 = !{!789, !834}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !786, file: !787, line: 11, baseType: !790, size: 64, align: 64)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64, align: 64)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !787, line: 7, baseType: !792)
!792 = !DISubroutineType(types: !793)
!793 = !{null, !794, !587, !186, !186, !185, !404}
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64, align: 64)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !167, line: 7, baseType: !796)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !797, line: 15, size: 1600, align: 64, elements: !798)
!797 = !DIFile(filename: "../../../../src/irc/core/irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!798 = !{!799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !796, file: !612, line: 3, baseType: !156, size: 32, align: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !796, file: !612, line: 4, baseType: !156, size: 32, align: 32, offset: 32)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !796, file: !612, line: 5, baseType: !473, size: 64, align: 64, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !796, file: !612, line: 7, baseType: !147, size: 64, align: 64, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !796, file: !612, line: 8, baseType: !165, size: 64, align: 64, offset: 192)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !796, file: !612, line: 9, baseType: !185, size: 64, align: 64, offset: 256)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !796, file: !612, line: 10, baseType: !185, size: 64, align: 64, offset: 320)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !796, file: !612, line: 11, baseType: !159, size: 64, align: 64, offset: 384)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !796, file: !612, line: 12, baseType: !156, size: 32, align: 32, offset: 448)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !796, file: !612, line: 13, baseType: !185, size: 64, align: 64, offset: 512)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !796, file: !612, line: 15, baseType: !623, size: 64, align: 64, offset: 576)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !796, file: !612, line: 17, baseType: !643, size: 64, align: 64, offset: 640)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !796, file: !648, line: 5, baseType: !185, size: 64, align: 64, offset: 704)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !796, file: !648, line: 6, baseType: !185, size: 64, align: 64, offset: 768)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !796, file: !648, line: 7, baseType: !159, size: 64, align: 64, offset: 832)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !796, file: !648, line: 9, baseType: !473, size: 64, align: 64, offset: 896)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !796, file: !648, line: 10, baseType: !653, size: 64, align: 64, offset: 960)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !796, file: !648, line: 12, baseType: !227, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !796, file: !648, line: 13, baseType: !185, size: 64, align: 64, offset: 1088)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !796, file: !648, line: 14, baseType: !156, size: 32, align: 32, offset: 1152)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !796, file: !648, line: 15, baseType: !185, size: 64, align: 64, offset: 1216)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !796, file: !648, line: 17, baseType: !227, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !796, file: !648, line: 18, baseType: !227, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !796, file: !648, line: 19, baseType: !227, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !796, file: !648, line: 20, baseType: !227, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !796, file: !648, line: 22, baseType: !227, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !796, file: !648, line: 23, baseType: !227, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !796, file: !648, line: 24, baseType: !227, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !796, file: !648, line: 25, baseType: !227, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !796, file: !648, line: 26, baseType: !227, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !796, file: !648, line: 31, baseType: !690, size: 64, align: 64, offset: 1344)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !796, file: !797, line: 18, baseType: !365, size: 64, align: 64, offset: 1408)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !796, file: !797, line: 20, baseType: !159, size: 64, align: 64, offset: 1472)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !796, file: !797, line: 21, baseType: !156, size: 32, align: 32, offset: 1536)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !796, file: !797, line: 22, baseType: !156, size: 32, align: 32, offset: 1568)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !786, file: !787, line: 12, baseType: !186, size: 8, align: 8, offset: 64)
!835 = !{!836}
!836 = !DISubrange(count: 256)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !168, file: !169, line: 118, baseType: !838, size: 2048, align: 8, offset: 37056)
!838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 2048, align: 8, elements: !835)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !168, file: !169, line: 120, baseType: !721, size: 64, align: 64, offset: 39104)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !151, file: !155, line: 6, baseType: !185, size: 64, align: 64, offset: 192)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "mynick", scope: !151, file: !155, line: 7, baseType: !185, size: 64, align: 64, offset: 256)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !151, file: !155, line: 8, baseType: !185, size: 64, align: 64, offset: 320)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "chat", scope: !151, file: !155, line: 10, baseType: !148, size: 64, align: 64, offset: 384)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !151, file: !155, line: 11, baseType: !185, size: 64, align: 64, offset: 448)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !151, file: !155, line: 12, baseType: !185, size: 64, align: 64, offset: 512)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !151, file: !155, line: 14, baseType: !199, size: 160, align: 32, offset: 576)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "addrstr", scope: !151, file: !155, line: 15, baseType: !848, size: 368, align: 8, offset: 736)
!848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 368, align: 8, elements: !849)
!849 = !{!850}
!850 = !DISubrange(count: 46)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !151, file: !155, line: 16, baseType: !156, size: 32, align: 32, offset: 1120)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !151, file: !155, line: 18, baseType: !244, size: 64, align: 64, offset: 1152)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "tagconn", scope: !151, file: !155, line: 19, baseType: !156, size: 32, align: 32, offset: 1216)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "tagread", scope: !151, file: !155, line: 19, baseType: !156, size: 32, align: 32, offset: 1248)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "tagwrite", scope: !151, file: !155, line: 19, baseType: !156, size: 32, align: 32, offset: 1280)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "starttime", scope: !151, file: !155, line: 20, baseType: !159, size: 64, align: 64, offset: 1344)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "transfd", scope: !151, file: !155, line: 21, baseType: !858, size: 64, align: 64, offset: 1408)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "uoff_t", file: !200, line: 49, baseType: !265)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "pasv_id", scope: !151, file: !155, line: 23, baseType: !156, size: 32, align: 32, offset: 1472)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !151, file: !155, line: 25, baseType: !227, size: 1, align: 32, offset: 1504, flags: DIFlagBitField, extraData: i64 1504)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !151, file: !155, line: 27, baseType: !473, size: 64, align: 64, offset: 1536)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !151, file: !152, line: 15, baseType: !185, size: 64, align: 64, offset: 1600)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "sendbuf", scope: !151, file: !152, line: 16, baseType: !458, size: 64, align: 64, offset: 1664)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "mirc_ctcp", scope: !151, file: !152, line: 18, baseType: !227, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !151, file: !152, line: 19, baseType: !227, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64, align: 64)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "DCC_REC", file: !150, line: 13, baseType: !868)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !150, line: 11, size: 1600, align: 64, elements: !869)
!869 = !{!870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !868, file: !155, line: 1, baseType: !156, size: 32, align: 32)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !868, file: !155, line: 2, baseType: !156, size: 32, align: 32, offset: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "created", scope: !868, file: !155, line: 3, baseType: !159, size: 64, align: 64, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !868, file: !155, line: 5, baseType: !165, size: 64, align: 64, offset: 128)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !868, file: !155, line: 6, baseType: !185, size: 64, align: 64, offset: 192)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "mynick", scope: !868, file: !155, line: 7, baseType: !185, size: 64, align: 64, offset: 256)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !868, file: !155, line: 8, baseType: !185, size: 64, align: 64, offset: 320)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "chat", scope: !868, file: !155, line: 10, baseType: !148, size: 64, align: 64, offset: 384)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !868, file: !155, line: 11, baseType: !185, size: 64, align: 64, offset: 448)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !868, file: !155, line: 12, baseType: !185, size: 64, align: 64, offset: 512)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !868, file: !155, line: 14, baseType: !199, size: 160, align: 32, offset: 576)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "addrstr", scope: !868, file: !155, line: 15, baseType: !848, size: 368, align: 8, offset: 736)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !868, file: !155, line: 16, baseType: !156, size: 32, align: 32, offset: 1120)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !868, file: !155, line: 18, baseType: !244, size: 64, align: 64, offset: 1152)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "tagconn", scope: !868, file: !155, line: 19, baseType: !156, size: 32, align: 32, offset: 1216)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "tagread", scope: !868, file: !155, line: 19, baseType: !156, size: 32, align: 32, offset: 1248)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "tagwrite", scope: !868, file: !155, line: 19, baseType: !156, size: 32, align: 32, offset: 1280)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "starttime", scope: !868, file: !155, line: 20, baseType: !159, size: 64, align: 64, offset: 1344)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "transfd", scope: !868, file: !155, line: 21, baseType: !858, size: 64, align: 64, offset: 1408)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "pasv_id", scope: !868, file: !155, line: 23, baseType: !156, size: 32, align: 32, offset: 1472)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !868, file: !155, line: 25, baseType: !227, size: 1, align: 32, offset: 1504, flags: DIFlagBitField, extraData: i64 1504)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !868, file: !155, line: 27, baseType: !473, size: 64, align: 64, offset: 1536)
!892 = !{i32 2, !"Dwarf Version", i32 4}
!893 = !{i32 2, !"Debug Info Version", i32 3}
!894 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!895 = distinct !DISubprogram(name: "fe_dcc_chat_init", scope: !896, file: !896, line: 341, type: !353, isLocal: false, isDefinition: true, scopeLine: 342, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !897)
!896 = !DIFile(filename: "fe-dcc-chat.c", directory: "/home/lichi/Desktop/irssi/task1")
!897 = !{}
!898 = !DILocation(line: 343, column: 2, scope: !895)
!899 = !DILocation(line: 345, column: 2, scope: !895)
!900 = !DILocation(line: 346, column: 2, scope: !895)
!901 = !DILocation(line: 347, column: 2, scope: !895)
!902 = !DILocation(line: 348, column: 2, scope: !895)
!903 = !DILocation(line: 349, column: 2, scope: !895)
!904 = !DILocation(line: 350, column: 2, scope: !895)
!905 = !DILocation(line: 351, column: 2, scope: !895)
!906 = !DILocation(line: 352, column: 2, scope: !895)
!907 = !DILocation(line: 353, column: 2, scope: !895)
!908 = !DILocation(line: 354, column: 2, scope: !895)
!909 = !DILocation(line: 355, column: 2, scope: !895)
!910 = !DILocation(line: 356, column: 9, scope: !895)
!911 = !DILocation(line: 357, column: 2, scope: !895)
!912 = !DILocation(line: 358, column: 2, scope: !895)
!913 = !DILocation(line: 359, column: 2, scope: !895)
!914 = !DILocation(line: 360, column: 2, scope: !895)
!915 = !DILocation(line: 361, column: 2, scope: !895)
!916 = !DILocation(line: 362, column: 1, scope: !895)
!917 = distinct !DISubprogram(name: "dcc_request", scope: !896, file: !896, line: 42, type: !918, isLocal: true, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !897)
!918 = !DISubroutineType(types: !919)
!919 = !{null, !148}
!920 = !DILocalVariable(name: "dcc", arg: 1, scope: !917, file: !896, line: 42, type: !148)
!921 = !DIExpression()
!922 = !DILocation(line: 42, column: 39, scope: !917)
!923 = !DILocation(line: 44, column: 58, scope: !924)
!924 = distinct !DILexicalBlock(scope: !917, file: !896, line: 44, column: 13)
!925 = !DILocation(line: 44, column: 33, scope: !924)
!926 = !DILocation(line: 44, column: 16, scope: !924)
!927 = !DILocation(line: 44, column: 13, scope: !917)
!928 = !DILocation(line: 44, column: 15, scope: !929)
!929 = !DILexicalBlockFile(scope: !924, file: !896, discriminator: 1)
!930 = !DILocation(line: 44, column: 13, scope: !931)
!931 = !DILexicalBlockFile(scope: !917, file: !896, discriminator: 2)
!932 = !DILocation(line: 44, column: 48, scope: !933)
!933 = !DILexicalBlockFile(scope: !924, file: !896, discriminator: 3)
!934 = !DILocation(line: 46, column: 42, scope: !917)
!935 = !DILocation(line: 46, column: 47, scope: !917)
!936 = !DILocation(line: 46, column: 53, scope: !917)
!937 = !DILocation(line: 46, column: 58, scope: !917)
!938 = !DILocation(line: 46, column: 35, scope: !917)
!939 = !DILocation(line: 46, column: 20, scope: !917)
!940 = !DILocation(line: 46, column: 16, scope: !917)
!941 = !DILocation(line: 46, column: 60, scope: !917)
!942 = !DILocation(line: 46, column: 65, scope: !917)
!943 = !DILocation(line: 46, column: 42, scope: !944)
!944 = !DILexicalBlockFile(scope: !917, file: !896, discriminator: 1)
!945 = !DILocation(line: 46, column: 27, scope: !917)
!946 = !DILocation(line: 46, column: 15, scope: !917)
!947 = !DILocation(line: 46, column: 18, scope: !931)
!948 = !DILocation(line: 46, column: 17, scope: !917)
!949 = !DILocation(line: 46, column: 74, scope: !917)
!950 = !DILocation(line: 46, column: 79, scope: !917)
!951 = !DILocation(line: 46, column: 83, scope: !917)
!952 = !DILocation(line: 46, column: 88, scope: !917)
!953 = !DILocation(line: 46, column: 97, scope: !917)
!954 = !DILocation(line: 46, column: 102, scope: !917)
!955 = !DILocation(line: 46, column: 108, scope: !917)
!956 = !DILocation(line: 46, column: 113, scope: !917)
!957 = !DILocation(line: 46, column: 2, scope: !958)
!958 = !DILexicalBlockFile(scope: !917, file: !896, discriminator: 3)
!959 = !DILocation(line: 50, column: 1, scope: !917)
!960 = !DILocation(line: 50, column: 1, scope: !944)
!961 = distinct !DISubprogram(name: "dcc_connected", scope: !896, file: !896, line: 52, type: !918, isLocal: true, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !897)
!962 = !DILocalVariable(name: "dcc", arg: 1, scope: !961, file: !896, line: 52, type: !148)
!963 = !DILocation(line: 52, column: 41, scope: !961)
!964 = !DILocalVariable(name: "sender", scope: !961, file: !896, line: 54, type: !185)
!965 = !DILocation(line: 54, column: 8, scope: !961)
!966 = !DILocation(line: 56, column: 58, scope: !967)
!967 = distinct !DILexicalBlock(scope: !961, file: !896, line: 56, column: 13)
!968 = !DILocation(line: 56, column: 33, scope: !967)
!969 = !DILocation(line: 56, column: 16, scope: !967)
!970 = !DILocation(line: 56, column: 13, scope: !961)
!971 = !DILocation(line: 56, column: 15, scope: !972)
!972 = !DILexicalBlockFile(scope: !967, file: !896, discriminator: 1)
!973 = !DILocation(line: 56, column: 13, scope: !974)
!974 = !DILexicalBlockFile(scope: !961, file: !896, discriminator: 2)
!975 = !DILocation(line: 56, column: 48, scope: !976)
!976 = !DILexicalBlockFile(scope: !967, file: !896, discriminator: 3)
!977 = !DILocation(line: 58, column: 28, scope: !961)
!978 = !DILocation(line: 58, column: 33, scope: !961)
!979 = !DILocation(line: 58, column: 11, scope: !961)
!980 = !DILocation(line: 58, column: 9, scope: !961)
!981 = !DILocation(line: 59, column: 42, scope: !961)
!982 = !DILocation(line: 59, column: 47, scope: !961)
!983 = !DILocation(line: 59, column: 44, scope: !961)
!984 = !DILocation(line: 59, column: 49, scope: !961)
!985 = !DILocation(line: 59, column: 53, scope: !961)
!986 = !DILocation(line: 59, column: 58, scope: !961)
!987 = !DILocation(line: 59, column: 67, scope: !961)
!988 = !DILocation(line: 59, column: 72, scope: !961)
!989 = !DILocation(line: 59, column: 2, scope: !961)
!990 = !DILocation(line: 63, column: 22, scope: !991)
!991 = distinct !DILexicalBlock(scope: !961, file: !896, line: 63, column: 6)
!992 = !DILocation(line: 63, column: 6, scope: !991)
!993 = !DILocation(line: 63, column: 30, scope: !991)
!994 = !DILocation(line: 63, column: 6, scope: !961)
!995 = !DILocalVariable(name: "level", scope: !996, file: !896, line: 64, type: !156)
!996 = distinct !DILexicalBlock(scope: !991, file: !896, line: 63, column: 39)
!997 = !DILocation(line: 64, column: 7, scope: !996)
!998 = !DILocation(line: 64, column: 15, scope: !996)
!999 = !DILocalVariable(name: "autocreate_dccquery", scope: !996, file: !896, line: 65, type: !156)
!1000 = !DILocation(line: 65, column: 7, scope: !996)
!1001 = !DILocation(line: 65, column: 30, scope: !996)
!1002 = !DILocation(line: 65, column: 36, scope: !996)
!1003 = !DILocation(line: 65, column: 56, scope: !996)
!1004 = !DILocation(line: 67, column: 8, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !996, file: !896, line: 67, column: 7)
!1006 = !DILocation(line: 67, column: 7, scope: !996)
!1007 = !DILocation(line: 68, column: 32, scope: !1005)
!1008 = !DILocation(line: 68, column: 4, scope: !1005)
!1009 = !DILocation(line: 70, column: 21, scope: !1005)
!1010 = !DILocation(line: 70, column: 26, scope: !1005)
!1011 = !DILocation(line: 70, column: 37, scope: !1005)
!1012 = !DILocation(line: 70, column: 4, scope: !1005)
!1013 = !DILocation(line: 71, column: 2, scope: !996)
!1014 = !DILocation(line: 72, column: 9, scope: !961)
!1015 = !DILocation(line: 72, column: 2, scope: !961)
!1016 = !DILocation(line: 73, column: 1, scope: !961)
!1017 = !DILocation(line: 73, column: 1, scope: !1018)
!1018 = !DILexicalBlockFile(scope: !961, file: !896, discriminator: 1)
!1019 = distinct !DISubprogram(name: "dcc_closed", scope: !896, file: !896, line: 75, type: !918, isLocal: true, isDefinition: true, scopeLine: 76, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !897)
!1020 = !DILocalVariable(name: "dcc", arg: 1, scope: !1019, file: !896, line: 75, type: !148)
!1021 = !DILocation(line: 75, column: 38, scope: !1019)
!1022 = !DILocalVariable(name: "sender", scope: !1019, file: !896, line: 77, type: !185)
!1023 = !DILocation(line: 77, column: 8, scope: !1019)
!1024 = !DILocation(line: 79, column: 58, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1019, file: !896, line: 79, column: 13)
!1026 = !DILocation(line: 79, column: 33, scope: !1025)
!1027 = !DILocation(line: 79, column: 16, scope: !1025)
!1028 = !DILocation(line: 79, column: 13, scope: !1019)
!1029 = !DILocation(line: 79, column: 15, scope: !1030)
!1030 = !DILexicalBlockFile(scope: !1025, file: !896, discriminator: 1)
!1031 = !DILocation(line: 79, column: 13, scope: !1032)
!1032 = !DILexicalBlockFile(scope: !1019, file: !896, discriminator: 2)
!1033 = !DILocation(line: 79, column: 48, scope: !1034)
!1034 = !DILexicalBlockFile(scope: !1025, file: !896, discriminator: 3)
!1035 = !DILocation(line: 81, column: 28, scope: !1019)
!1036 = !DILocation(line: 81, column: 33, scope: !1019)
!1037 = !DILocation(line: 81, column: 11, scope: !1019)
!1038 = !DILocation(line: 81, column: 9, scope: !1019)
!1039 = !DILocation(line: 82, column: 42, scope: !1019)
!1040 = !DILocation(line: 82, column: 47, scope: !1019)
!1041 = !DILocation(line: 82, column: 52, scope: !1019)
!1042 = !DILocation(line: 82, column: 2, scope: !1019)
!1043 = !DILocation(line: 84, column: 9, scope: !1019)
!1044 = !DILocation(line: 84, column: 2, scope: !1019)
!1045 = !DILocation(line: 85, column: 1, scope: !1019)
!1046 = !DILocation(line: 85, column: 1, scope: !1047)
!1047 = !DILexicalBlockFile(scope: !1019, file: !896, discriminator: 1)
!1048 = distinct !DISubprogram(name: "dcc_chat_msg", scope: !896, file: !896, line: 87, type: !1049, isLocal: true, isDefinition: true, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !897)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{null, !148, !587}
!1051 = !DILocalVariable(name: "dcc", arg: 1, scope: !1048, file: !896, line: 87, type: !148)
!1052 = !DILocation(line: 87, column: 40, scope: !1048)
!1053 = !DILocalVariable(name: "msg", arg: 2, scope: !1048, file: !896, line: 87, type: !587)
!1054 = !DILocation(line: 87, column: 57, scope: !1048)
!1055 = !DILocalVariable(name: "query", scope: !1048, file: !896, line: 89, type: !697)
!1056 = !DILocation(line: 89, column: 20, scope: !1048)
!1057 = !DILocalVariable(name: "sender", scope: !1048, file: !896, line: 90, type: !185)
!1058 = !DILocation(line: 90, column: 8, scope: !1048)
!1059 = !DILocalVariable(name: "freemsg", scope: !1048, file: !896, line: 90, type: !185)
!1060 = !DILocation(line: 90, column: 17, scope: !1048)
!1061 = !DILocation(line: 92, column: 2, scope: !1048)
!1062 = distinct !{!1062, !1061}
!1063 = !DILocation(line: 92, column: 54, scope: !1064)
!1064 = !DILexicalBlockFile(scope: !1065, file: !896, discriminator: 1)
!1065 = distinct !DILexicalBlock(scope: !1066, file: !896, line: 92, column: 10)
!1066 = distinct !DILexicalBlock(scope: !1048, file: !896, line: 92, column: 4)
!1067 = !DILocation(line: 92, column: 29, scope: !1064)
!1068 = !DILocation(line: 92, column: 12, scope: !1064)
!1069 = !DILocation(line: 92, column: 10, scope: !1064)
!1070 = !DILocation(line: 92, column: 11, scope: !1071)
!1071 = !DILexicalBlockFile(scope: !1065, file: !896, discriminator: 2)
!1072 = !DILocation(line: 92, column: 10, scope: !1073)
!1073 = !DILexicalBlockFile(scope: !1066, file: !896, discriminator: 3)
!1074 = !DILocation(line: 92, column: 38, scope: !1075)
!1075 = !DILexicalBlockFile(scope: !1076, file: !896, discriminator: 4)
!1076 = distinct !DILexicalBlock(scope: !1065, file: !896, line: 92, column: 36)
!1077 = !DILocation(line: 92, column: 47, scope: !1078)
!1078 = !DILexicalBlockFile(scope: !1079, file: !896, discriminator: 5)
!1079 = distinct !DILexicalBlock(scope: !1065, file: !896, line: 92, column: 45)
!1080 = !DILocation(line: 92, column: 136, scope: !1078)
!1081 = !DILocation(line: 92, column: 147, scope: !1082)
!1082 = !DILexicalBlockFile(scope: !1066, file: !896, discriminator: 6)
!1083 = !DILocation(line: 93, column: 2, scope: !1048)
!1084 = distinct !{!1084, !1083}
!1085 = !DILocation(line: 93, column: 10, scope: !1086)
!1086 = !DILexicalBlockFile(scope: !1087, file: !896, discriminator: 1)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !896, line: 93, column: 10)
!1088 = distinct !DILexicalBlock(scope: !1048, file: !896, line: 93, column: 4)
!1089 = !DILocation(line: 93, column: 14, scope: !1086)
!1090 = !DILocation(line: 93, column: 5, scope: !1091)
!1091 = !DILexicalBlockFile(scope: !1092, file: !896, discriminator: 2)
!1092 = distinct !DILexicalBlock(scope: !1087, file: !896, line: 93, column: 3)
!1093 = !DILocation(line: 93, column: 14, scope: !1094)
!1094 = !DILexicalBlockFile(scope: !1095, file: !896, discriminator: 3)
!1095 = distinct !DILexicalBlock(scope: !1087, file: !896, line: 93, column: 12)
!1096 = !DILocation(line: 93, column: 98, scope: !1094)
!1097 = !DILocation(line: 93, column: 109, scope: !1098)
!1098 = !DILexicalBlockFile(scope: !1088, file: !896, discriminator: 4)
!1099 = !DILocation(line: 95, column: 28, scope: !1048)
!1100 = !DILocation(line: 95, column: 33, scope: !1048)
!1101 = !DILocation(line: 95, column: 11, scope: !1048)
!1102 = !DILocation(line: 95, column: 9, scope: !1048)
!1103 = !DILocation(line: 96, column: 33, scope: !1048)
!1104 = !DILocation(line: 96, column: 17, scope: !1048)
!1105 = !DILocation(line: 96, column: 15, scope: !1048)
!1106 = !DILocation(line: 98, column: 6, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1048, file: !896, line: 98, column: 6)
!1108 = !DILocation(line: 98, column: 6, scope: !1048)
!1109 = !DILocation(line: 99, column: 51, scope: !1107)
!1110 = !DILocation(line: 99, column: 35, scope: !1107)
!1111 = !DILocation(line: 99, column: 58, scope: !1107)
!1112 = !DILocation(line: 99, column: 19, scope: !1107)
!1113 = !DILocation(line: 99, column: 17, scope: !1107)
!1114 = !DILocation(line: 99, column: 7, scope: !1107)
!1115 = !DILocation(line: 99, column: 3, scope: !1107)
!1116 = !DILocation(line: 101, column: 11, scope: !1107)
!1117 = !DILocation(line: 103, column: 6, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1048, file: !896, line: 103, column: 6)
!1119 = !DILocation(line: 103, column: 12, scope: !1118)
!1120 = !DILocation(line: 103, column: 6, scope: !1048)
!1121 = !DILocation(line: 104, column: 31, scope: !1118)
!1122 = !DILocation(line: 104, column: 3, scope: !1118)
!1123 = !DILocation(line: 105, column: 32, scope: !1048)
!1124 = !DILocation(line: 105, column: 37, scope: !1048)
!1125 = !DILocation(line: 105, column: 2, scope: !1048)
!1126 = !DILocation(line: 107, column: 9, scope: !1048)
!1127 = !DILocation(line: 107, column: 2, scope: !1048)
!1128 = !DILocation(line: 108, column: 9, scope: !1048)
!1129 = !DILocation(line: 108, column: 2, scope: !1048)
!1130 = !DILocation(line: 109, column: 1, scope: !1048)
!1131 = !DILocation(line: 109, column: 1, scope: !1132)
!1132 = !DILexicalBlockFile(scope: !1048, file: !896, discriminator: 1)
!1133 = distinct !DISubprogram(name: "dcc_chat_action", scope: !896, file: !896, line: 111, type: !1049, isLocal: true, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !897)
!1134 = !DILocalVariable(name: "dcc", arg: 1, scope: !1133, file: !896, line: 111, type: !148)
!1135 = !DILocation(line: 111, column: 43, scope: !1133)
!1136 = !DILocalVariable(name: "msg", arg: 2, scope: !1133, file: !896, line: 111, type: !587)
!1137 = !DILocation(line: 111, column: 60, scope: !1133)
!1138 = !DILocalVariable(name: "sender", scope: !1133, file: !896, line: 113, type: !185)
!1139 = !DILocation(line: 113, column: 8, scope: !1133)
!1140 = !DILocation(line: 115, column: 2, scope: !1133)
!1141 = distinct !{!1141, !1140}
!1142 = !DILocation(line: 115, column: 54, scope: !1143)
!1143 = !DILexicalBlockFile(scope: !1144, file: !896, discriminator: 1)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !896, line: 115, column: 10)
!1145 = distinct !DILexicalBlock(scope: !1133, file: !896, line: 115, column: 4)
!1146 = !DILocation(line: 115, column: 29, scope: !1143)
!1147 = !DILocation(line: 115, column: 12, scope: !1143)
!1148 = !DILocation(line: 115, column: 10, scope: !1143)
!1149 = !DILocation(line: 115, column: 11, scope: !1150)
!1150 = !DILexicalBlockFile(scope: !1144, file: !896, discriminator: 2)
!1151 = !DILocation(line: 115, column: 10, scope: !1152)
!1152 = !DILexicalBlockFile(scope: !1145, file: !896, discriminator: 3)
!1153 = !DILocation(line: 115, column: 38, scope: !1154)
!1154 = !DILexicalBlockFile(scope: !1155, file: !896, discriminator: 4)
!1155 = distinct !DILexicalBlock(scope: !1144, file: !896, line: 115, column: 36)
!1156 = !DILocation(line: 115, column: 47, scope: !1157)
!1157 = !DILexicalBlockFile(scope: !1158, file: !896, discriminator: 5)
!1158 = distinct !DILexicalBlock(scope: !1144, file: !896, line: 115, column: 45)
!1159 = !DILocation(line: 115, column: 136, scope: !1157)
!1160 = !DILocation(line: 115, column: 147, scope: !1161)
!1161 = !DILexicalBlockFile(scope: !1145, file: !896, discriminator: 6)
!1162 = !DILocation(line: 116, column: 2, scope: !1133)
!1163 = distinct !{!1163, !1162}
!1164 = !DILocation(line: 116, column: 10, scope: !1165)
!1165 = !DILexicalBlockFile(scope: !1166, file: !896, discriminator: 1)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !896, line: 116, column: 10)
!1167 = distinct !DILexicalBlock(scope: !1133, file: !896, line: 116, column: 4)
!1168 = !DILocation(line: 116, column: 14, scope: !1165)
!1169 = !DILocation(line: 116, column: 5, scope: !1170)
!1170 = !DILexicalBlockFile(scope: !1171, file: !896, discriminator: 2)
!1171 = distinct !DILexicalBlock(scope: !1166, file: !896, line: 116, column: 3)
!1172 = !DILocation(line: 116, column: 14, scope: !1173)
!1173 = !DILexicalBlockFile(scope: !1174, file: !896, discriminator: 3)
!1174 = distinct !DILexicalBlock(scope: !1166, file: !896, line: 116, column: 12)
!1175 = !DILocation(line: 116, column: 98, scope: !1173)
!1176 = !DILocation(line: 116, column: 109, scope: !1177)
!1177 = !DILexicalBlockFile(scope: !1167, file: !896, discriminator: 4)
!1178 = !DILocation(line: 118, column: 28, scope: !1133)
!1179 = !DILocation(line: 118, column: 33, scope: !1133)
!1180 = !DILocation(line: 118, column: 11, scope: !1133)
!1181 = !DILocation(line: 118, column: 9, scope: !1133)
!1182 = !DILocation(line: 119, column: 22, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1133, file: !896, line: 119, column: 6)
!1184 = !DILocation(line: 119, column: 6, scope: !1183)
!1185 = !DILocation(line: 119, column: 30, scope: !1183)
!1186 = !DILocation(line: 119, column: 6, scope: !1133)
!1187 = !DILocation(line: 120, column: 31, scope: !1183)
!1188 = !DILocation(line: 120, column: 3, scope: !1183)
!1189 = !DILocation(line: 122, column: 39, scope: !1133)
!1190 = !DILocation(line: 122, column: 44, scope: !1133)
!1191 = !DILocation(line: 122, column: 2, scope: !1133)
!1192 = !DILocation(line: 123, column: 9, scope: !1133)
!1193 = !DILocation(line: 123, column: 2, scope: !1133)
!1194 = !DILocation(line: 124, column: 1, scope: !1133)
!1195 = !DILocation(line: 124, column: 1, scope: !1196)
!1196 = !DILexicalBlockFile(scope: !1133, file: !896, discriminator: 1)
!1197 = distinct !DISubprogram(name: "dcc_chat_ctcp", scope: !896, file: !896, line: 126, type: !1198, isLocal: true, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !897)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{null, !148, !587, !587}
!1200 = !DILocalVariable(name: "dcc", arg: 1, scope: !1197, file: !896, line: 126, type: !148)
!1201 = !DILocation(line: 126, column: 41, scope: !1197)
!1202 = !DILocalVariable(name: "cmd", arg: 2, scope: !1197, file: !896, line: 126, type: !587)
!1203 = !DILocation(line: 126, column: 58, scope: !1197)
!1204 = !DILocalVariable(name: "data", arg: 3, scope: !1197, file: !896, line: 126, type: !587)
!1205 = !DILocation(line: 126, column: 75, scope: !1197)
!1206 = !DILocation(line: 128, column: 2, scope: !1197)
!1207 = distinct !{!1207, !1206}
!1208 = !DILocation(line: 128, column: 54, scope: !1209)
!1209 = !DILexicalBlockFile(scope: !1210, file: !896, discriminator: 1)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !896, line: 128, column: 10)
!1211 = distinct !DILexicalBlock(scope: !1197, file: !896, line: 128, column: 4)
!1212 = !DILocation(line: 128, column: 29, scope: !1209)
!1213 = !DILocation(line: 128, column: 12, scope: !1209)
!1214 = !DILocation(line: 128, column: 10, scope: !1209)
!1215 = !DILocation(line: 128, column: 11, scope: !1216)
!1216 = !DILexicalBlockFile(scope: !1210, file: !896, discriminator: 2)
!1217 = !DILocation(line: 128, column: 10, scope: !1218)
!1218 = !DILexicalBlockFile(scope: !1211, file: !896, discriminator: 3)
!1219 = !DILocation(line: 128, column: 38, scope: !1220)
!1220 = !DILexicalBlockFile(scope: !1221, file: !896, discriminator: 4)
!1221 = distinct !DILexicalBlock(scope: !1210, file: !896, line: 128, column: 36)
!1222 = !DILocation(line: 128, column: 47, scope: !1223)
!1223 = !DILexicalBlockFile(scope: !1224, file: !896, discriminator: 5)
!1224 = distinct !DILexicalBlock(scope: !1210, file: !896, line: 128, column: 45)
!1225 = !DILocation(line: 128, column: 136, scope: !1223)
!1226 = !DILocation(line: 128, column: 147, scope: !1227)
!1227 = !DILexicalBlockFile(scope: !1211, file: !896, discriminator: 6)
!1228 = !DILocation(line: 130, column: 37, scope: !1197)
!1229 = !DILocation(line: 130, column: 42, scope: !1197)
!1230 = !DILocation(line: 130, column: 47, scope: !1197)
!1231 = !DILocation(line: 130, column: 2, scope: !1197)
!1232 = !DILocation(line: 131, column: 1, scope: !1197)
!1233 = !DILocation(line: 131, column: 1, scope: !1234)
!1234 = !DILexicalBlockFile(scope: !1197, file: !896, discriminator: 1)
!1235 = distinct !DISubprogram(name: "dcc_error_ctcp", scope: !896, file: !896, line: 133, type: !1236, isLocal: true, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !897)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{null, !587, !587, !587, !587, !587}
!1238 = !DILocalVariable(name: "type", arg: 1, scope: !1235, file: !896, line: 133, type: !587)
!1239 = !DILocation(line: 133, column: 40, scope: !1235)
!1240 = !DILocalVariable(name: "data", arg: 2, scope: !1235, file: !896, line: 133, type: !587)
!1241 = !DILocation(line: 133, column: 58, scope: !1235)
!1242 = !DILocalVariable(name: "nick", arg: 3, scope: !1235, file: !896, line: 134, type: !587)
!1243 = !DILocation(line: 134, column: 40, scope: !1235)
!1244 = !DILocalVariable(name: "addr", arg: 4, scope: !1235, file: !896, line: 134, type: !587)
!1245 = !DILocation(line: 134, column: 58, scope: !1235)
!1246 = !DILocalVariable(name: "target", arg: 5, scope: !1235, file: !896, line: 135, type: !587)
!1247 = !DILocation(line: 135, column: 19, scope: !1235)
!1248 = !DILocation(line: 137, column: 42, scope: !1235)
!1249 = !DILocation(line: 137, column: 48, scope: !1235)
!1250 = !DILocation(line: 137, column: 54, scope: !1235)
!1251 = !DILocation(line: 137, column: 60, scope: !1235)
!1252 = !DILocation(line: 137, column: 2, scope: !1235)
!1253 = !DILocation(line: 139, column: 1, scope: !1235)
!1254 = distinct !DISubprogram(name: "dcc_unknown_ctcp", scope: !896, file: !896, line: 141, type: !1255, isLocal: true, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !897)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{null, !165, !587, !587, !587, !587, !148}
!1257 = !DILocalVariable(name: "server", arg: 1, scope: !1254, file: !896, line: 141, type: !165)
!1258 = !DILocation(line: 141, column: 46, scope: !1254)
!1259 = !DILocalVariable(name: "data", arg: 2, scope: !1254, file: !896, line: 141, type: !587)
!1260 = !DILocation(line: 141, column: 66, scope: !1254)
!1261 = !DILocalVariable(name: "nick", arg: 3, scope: !1254, file: !896, line: 142, type: !587)
!1262 = !DILocation(line: 142, column: 21, scope: !1254)
!1263 = !DILocalVariable(name: "addr", arg: 4, scope: !1254, file: !896, line: 142, type: !587)
!1264 = !DILocation(line: 142, column: 39, scope: !1254)
!1265 = !DILocalVariable(name: "target", arg: 5, scope: !1254, file: !896, line: 143, type: !587)
!1266 = !DILocation(line: 143, column: 21, scope: !1254)
!1267 = !DILocalVariable(name: "chat", arg: 6, scope: !1254, file: !896, line: 143, type: !148)
!1268 = !DILocation(line: 143, column: 43, scope: !1254)
!1269 = !DILocalVariable(name: "type", scope: !1254, file: !896, line: 145, type: !185)
!1270 = !DILocation(line: 145, column: 8, scope: !1254)
!1271 = !DILocalVariable(name: "args", scope: !1254, file: !896, line: 145, type: !185)
!1272 = !DILocation(line: 145, column: 15, scope: !1254)
!1273 = !DILocalVariable(name: "free_arg", scope: !1254, file: !896, line: 146, type: !147)
!1274 = !DILocation(line: 146, column: 8, scope: !1254)
!1275 = !DILocation(line: 148, column: 2, scope: !1254)
!1276 = distinct !{!1276, !1275}
!1277 = !DILocation(line: 148, column: 10, scope: !1278)
!1278 = !DILexicalBlockFile(scope: !1279, file: !896, discriminator: 1)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !896, line: 148, column: 10)
!1280 = distinct !DILexicalBlock(scope: !1254, file: !896, line: 148, column: 4)
!1281 = !DILocation(line: 148, column: 15, scope: !1278)
!1282 = !DILocation(line: 148, column: 5, scope: !1283)
!1283 = !DILexicalBlockFile(scope: !1284, file: !896, discriminator: 2)
!1284 = distinct !DILexicalBlock(scope: !1279, file: !896, line: 148, column: 3)
!1285 = !DILocation(line: 148, column: 14, scope: !1286)
!1286 = !DILexicalBlockFile(scope: !1287, file: !896, discriminator: 3)
!1287 = distinct !DILexicalBlock(scope: !1279, file: !896, line: 148, column: 12)
!1288 = !DILocation(line: 148, column: 99, scope: !1286)
!1289 = !DILocation(line: 148, column: 110, scope: !1290)
!1290 = !DILexicalBlockFile(scope: !1280, file: !896, discriminator: 4)
!1291 = !DILocation(line: 150, column: 22, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1254, file: !896, line: 150, column: 6)
!1293 = !DILocation(line: 150, column: 7, scope: !1292)
!1294 = !DILocation(line: 150, column: 6, scope: !1254)
!1295 = !DILocation(line: 152, column: 3, scope: !1292)
!1296 = !DILocation(line: 154, column: 42, scope: !1254)
!1297 = !DILocation(line: 154, column: 48, scope: !1254)
!1298 = !DILocation(line: 154, column: 54, scope: !1254)
!1299 = !DILocation(line: 154, column: 2, scope: !1254)
!1300 = !DILocation(line: 156, column: 18, scope: !1254)
!1301 = !DILocation(line: 156, column: 2, scope: !1254)
!1302 = !DILocation(line: 157, column: 1, scope: !1254)
!1303 = !DILocation(line: 157, column: 1, scope: !1304)
!1304 = !DILexicalBlockFile(scope: !1254, file: !896, discriminator: 1)
!1305 = distinct !DISubprogram(name: "dcc_unknown_reply", scope: !896, file: !896, line: 159, type: !1306, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !897)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{null, !165, !587, !587}
!1308 = !DILocalVariable(name: "server", arg: 1, scope: !1305, file: !896, line: 159, type: !165)
!1309 = !DILocation(line: 159, column: 47, scope: !1305)
!1310 = !DILocalVariable(name: "data", arg: 2, scope: !1305, file: !896, line: 159, type: !587)
!1311 = !DILocation(line: 159, column: 67, scope: !1305)
!1312 = !DILocalVariable(name: "nick", arg: 3, scope: !1305, file: !896, line: 160, type: !587)
!1313 = !DILocation(line: 160, column: 22, scope: !1305)
!1314 = !DILocalVariable(name: "type", scope: !1305, file: !896, line: 162, type: !185)
!1315 = !DILocation(line: 162, column: 8, scope: !1305)
!1316 = !DILocalVariable(name: "args", scope: !1305, file: !896, line: 162, type: !185)
!1317 = !DILocation(line: 162, column: 15, scope: !1305)
!1318 = !DILocalVariable(name: "free_arg", scope: !1305, file: !896, line: 163, type: !147)
!1319 = !DILocation(line: 163, column: 8, scope: !1305)
!1320 = !DILocation(line: 165, column: 2, scope: !1305)
!1321 = distinct !{!1321, !1320}
!1322 = !DILocation(line: 165, column: 10, scope: !1323)
!1323 = !DILexicalBlockFile(scope: !1324, file: !896, discriminator: 1)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !896, line: 165, column: 10)
!1325 = distinct !DILexicalBlock(scope: !1305, file: !896, line: 165, column: 4)
!1326 = !DILocation(line: 165, column: 15, scope: !1323)
!1327 = !DILocation(line: 165, column: 5, scope: !1328)
!1328 = !DILexicalBlockFile(scope: !1329, file: !896, discriminator: 2)
!1329 = distinct !DILexicalBlock(scope: !1324, file: !896, line: 165, column: 3)
!1330 = !DILocation(line: 165, column: 14, scope: !1331)
!1331 = !DILexicalBlockFile(scope: !1332, file: !896, discriminator: 3)
!1332 = distinct !DILexicalBlock(scope: !1324, file: !896, line: 165, column: 12)
!1333 = !DILocation(line: 165, column: 99, scope: !1331)
!1334 = !DILocation(line: 165, column: 110, scope: !1335)
!1335 = !DILexicalBlockFile(scope: !1325, file: !896, discriminator: 4)
!1336 = !DILocation(line: 167, column: 22, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1305, file: !896, line: 167, column: 6)
!1338 = !DILocation(line: 167, column: 7, scope: !1337)
!1339 = !DILocation(line: 167, column: 6, scope: !1305)
!1340 = !DILocation(line: 169, column: 3, scope: !1337)
!1341 = !DILocation(line: 171, column: 43, scope: !1305)
!1342 = !DILocation(line: 171, column: 49, scope: !1305)
!1343 = !DILocation(line: 171, column: 55, scope: !1305)
!1344 = !DILocation(line: 171, column: 2, scope: !1305)
!1345 = !DILocation(line: 173, column: 18, scope: !1305)
!1346 = !DILocation(line: 173, column: 2, scope: !1305)
!1347 = !DILocation(line: 174, column: 1, scope: !1305)
!1348 = !DILocation(line: 174, column: 1, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !1305, file: !896, discriminator: 1)
!1350 = distinct !DISubprogram(name: "sig_dcc_destroyed", scope: !896, file: !896, line: 176, type: !918, isLocal: true, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !897)
!1351 = !DILocalVariable(name: "dcc", arg: 1, scope: !1350, file: !896, line: 176, type: !148)
!1352 = !DILocation(line: 176, column: 45, scope: !1350)
!1353 = !DILocalVariable(name: "query", scope: !1350, file: !896, line: 178, type: !697)
!1354 = !DILocation(line: 178, column: 13, scope: !1350)
!1355 = !DILocalVariable(name: "nick", scope: !1350, file: !896, line: 179, type: !185)
!1356 = !DILocation(line: 179, column: 8, scope: !1350)
!1357 = !DILocation(line: 181, column: 51, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1350, file: !896, line: 181, column: 6)
!1359 = !DILocation(line: 181, column: 26, scope: !1358)
!1360 = !DILocation(line: 181, column: 9, scope: !1358)
!1361 = !DILocation(line: 181, column: 6, scope: !1350)
!1362 = !DILocation(line: 181, column: 8, scope: !1363)
!1363 = !DILexicalBlockFile(scope: !1358, file: !896, discriminator: 1)
!1364 = !DILocation(line: 181, column: 6, scope: !1365)
!1365 = !DILexicalBlockFile(scope: !1350, file: !896, discriminator: 2)
!1366 = !DILocation(line: 181, column: 41, scope: !1367)
!1367 = !DILexicalBlockFile(scope: !1358, file: !896, discriminator: 3)
!1368 = !DILocation(line: 183, column: 33, scope: !1350)
!1369 = !DILocation(line: 183, column: 38, scope: !1350)
!1370 = !DILocation(line: 183, column: 16, scope: !1350)
!1371 = !DILocation(line: 183, column: 14, scope: !1350)
!1372 = !DILocation(line: 184, column: 26, scope: !1350)
!1373 = !DILocation(line: 184, column: 10, scope: !1350)
!1374 = !DILocation(line: 184, column: 8, scope: !1350)
!1375 = !DILocation(line: 185, column: 6, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1350, file: !896, line: 185, column: 6)
!1377 = !DILocation(line: 185, column: 12, scope: !1376)
!1378 = !DILocation(line: 185, column: 6, scope: !1350)
!1379 = !DILocation(line: 187, column: 7, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !896, line: 187, column: 7)
!1381 = distinct !DILexicalBlock(scope: !1376, file: !896, line: 185, column: 20)
!1382 = !DILocation(line: 187, column: 12, scope: !1380)
!1383 = !DILocation(line: 187, column: 7, scope: !1381)
!1384 = !DILocation(line: 187, column: 29, scope: !1385)
!1385 = !DILexicalBlockFile(scope: !1380, file: !896, discriminator: 1)
!1386 = !DILocation(line: 187, column: 36, scope: !1385)
!1387 = !DILocation(line: 187, column: 45, scope: !1385)
!1388 = !DILocation(line: 188, column: 17, scope: !1381)
!1389 = !DILocation(line: 188, column: 3, scope: !1381)
!1390 = !DILocation(line: 189, column: 2, scope: !1381)
!1391 = !DILocation(line: 192, column: 34, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1376, file: !896, line: 189, column: 9)
!1393 = !DILocation(line: 192, column: 3, scope: !1392)
!1394 = !DILocation(line: 195, column: 9, scope: !1350)
!1395 = !DILocation(line: 195, column: 2, scope: !1350)
!1396 = !DILocation(line: 196, column: 1, scope: !1350)
!1397 = !DILocation(line: 196, column: 1, scope: !1398)
!1398 = !DILexicalBlockFile(scope: !1350, file: !896, discriminator: 1)
!1399 = distinct !DISubprogram(name: "sig_query_destroyed", scope: !896, file: !896, line: 198, type: !1400, isLocal: true, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !897)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{null, !697}
!1402 = !DILocalVariable(name: "query", arg: 1, scope: !1399, file: !896, line: 198, type: !697)
!1403 = !DILocation(line: 198, column: 44, scope: !1399)
!1404 = !DILocalVariable(name: "dcc", scope: !1399, file: !896, line: 200, type: !148)
!1405 = !DILocation(line: 200, column: 16, scope: !1399)
!1406 = !DILocation(line: 202, column: 7, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1399, file: !896, line: 202, column: 6)
!1408 = !DILocation(line: 202, column: 14, scope: !1407)
!1409 = !DILocation(line: 202, column: 6, scope: !1407)
!1410 = !DILocation(line: 202, column: 19, scope: !1407)
!1411 = !DILocation(line: 202, column: 6, scope: !1399)
!1412 = !DILocation(line: 203, column: 3, scope: !1407)
!1413 = !DILocation(line: 205, column: 25, scope: !1399)
!1414 = !DILocation(line: 205, column: 32, scope: !1399)
!1415 = !DILocation(line: 205, column: 36, scope: !1399)
!1416 = !DILocation(line: 205, column: 8, scope: !1399)
!1417 = !DILocation(line: 205, column: 6, scope: !1399)
!1418 = !DILocation(line: 206, column: 6, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1399, file: !896, line: 206, column: 6)
!1420 = !DILocation(line: 206, column: 10, scope: !1419)
!1421 = !DILocation(line: 206, column: 17, scope: !1419)
!1422 = !DILocation(line: 206, column: 21, scope: !1423)
!1423 = !DILexicalBlockFile(scope: !1419, file: !896, discriminator: 1)
!1424 = !DILocation(line: 206, column: 26, scope: !1423)
!1425 = !DILocation(line: 206, column: 6, scope: !1423)
!1426 = !DILocation(line: 208, column: 27, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1419, file: !896, line: 206, column: 37)
!1428 = !DILocation(line: 208, column: 14, scope: !1427)
!1429 = !DILocation(line: 208, column: 3, scope: !1427)
!1430 = !DILocation(line: 209, column: 2, scope: !1427)
!1431 = !DILocation(line: 210, column: 1, scope: !1399)
!1432 = distinct !DISubprogram(name: "sig_dcc_list_print", scope: !896, file: !896, line: 223, type: !918, isLocal: true, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !897)
!1433 = !DILocalVariable(name: "dcc", arg: 1, scope: !1432, file: !896, line: 223, type: !148)
!1434 = !DILocation(line: 223, column: 46, scope: !1432)
!1435 = !DILocation(line: 225, column: 51, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1432, file: !896, line: 225, column: 6)
!1437 = !DILocation(line: 225, column: 26, scope: !1436)
!1438 = !DILocation(line: 225, column: 9, scope: !1436)
!1439 = !DILocation(line: 225, column: 6, scope: !1432)
!1440 = !DILocation(line: 225, column: 8, scope: !1441)
!1441 = !DILexicalBlockFile(scope: !1436, file: !896, discriminator: 1)
!1442 = !DILocation(line: 225, column: 6, scope: !1443)
!1443 = !DILexicalBlockFile(scope: !1432, file: !896, discriminator: 2)
!1444 = !DILocation(line: 225, column: 41, scope: !1445)
!1445 = !DILexicalBlockFile(scope: !1436, file: !896, discriminator: 3)
!1446 = !DILocation(line: 227, column: 44, scope: !1432)
!1447 = !DILocation(line: 227, column: 49, scope: !1432)
!1448 = !DILocation(line: 227, column: 2, scope: !1432)
!1449 = !DILocation(line: 229, column: 1, scope: !1432)
!1450 = !DILocation(line: 229, column: 1, scope: !1451)
!1451 = !DILexicalBlockFile(scope: !1432, file: !896, discriminator: 1)
!1452 = distinct !DISubprogram(name: "cmd_msg", scope: !896, file: !896, line: 231, type: !1453, isLocal: true, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !897)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{null, !587, !499, !626}
!1455 = !DILocalVariable(name: "data", arg: 1, scope: !1452, file: !896, line: 231, type: !587)
!1456 = !DILocation(line: 231, column: 33, scope: !1452)
!1457 = !DILocalVariable(name: "server", arg: 2, scope: !1452, file: !896, line: 231, type: !499)
!1458 = !DILocation(line: 231, column: 51, scope: !1452)
!1459 = !DILocalVariable(name: "item", arg: 3, scope: !1452, file: !896, line: 231, type: !626)
!1460 = !DILocation(line: 231, column: 72, scope: !1452)
!1461 = !DILocalVariable(name: "dcc", scope: !1452, file: !896, line: 233, type: !148)
!1462 = !DILocation(line: 233, column: 16, scope: !1452)
!1463 = !DILocalVariable(name: "optlist", scope: !1452, file: !896, line: 234, type: !473)
!1464 = !DILocation(line: 234, column: 21, scope: !1452)
!1465 = !DILocalVariable(name: "text", scope: !1452, file: !896, line: 235, type: !185)
!1466 = !DILocation(line: 235, column: 8, scope: !1452)
!1467 = !DILocalVariable(name: "target", scope: !1452, file: !896, line: 235, type: !185)
!1468 = !DILocation(line: 235, column: 15, scope: !1452)
!1469 = !DILocalVariable(name: "free_arg", scope: !1452, file: !896, line: 236, type: !147)
!1470 = !DILocation(line: 236, column: 8, scope: !1452)
!1471 = !DILocation(line: 238, column: 2, scope: !1452)
!1472 = distinct !{!1472, !1471}
!1473 = !DILocation(line: 238, column: 10, scope: !1474)
!1474 = !DILexicalBlockFile(scope: !1475, file: !896, discriminator: 1)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !896, line: 238, column: 10)
!1476 = distinct !DILexicalBlock(scope: !1452, file: !896, line: 238, column: 4)
!1477 = !DILocation(line: 238, column: 15, scope: !1474)
!1478 = !DILocation(line: 238, column: 5, scope: !1479)
!1479 = !DILexicalBlockFile(scope: !1480, file: !896, discriminator: 2)
!1480 = distinct !DILexicalBlock(scope: !1475, file: !896, line: 238, column: 3)
!1481 = !DILocation(line: 238, column: 14, scope: !1482)
!1482 = !DILexicalBlockFile(scope: !1483, file: !896, discriminator: 3)
!1483 = distinct !DILexicalBlock(scope: !1475, file: !896, line: 238, column: 12)
!1484 = !DILocation(line: 238, column: 99, scope: !1482)
!1485 = !DILocation(line: 238, column: 110, scope: !1486)
!1486 = !DILexicalBlockFile(scope: !1476, file: !896, discriminator: 4)
!1487 = !DILocation(line: 240, column: 22, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1452, file: !896, line: 240, column: 6)
!1489 = !DILocation(line: 240, column: 7, scope: !1488)
!1490 = !DILocation(line: 240, column: 6, scope: !1452)
!1491 = !DILocation(line: 243, column: 3, scope: !1488)
!1492 = !DILocation(line: 246, column: 16, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1452, file: !896, line: 246, column: 6)
!1494 = !DILocation(line: 246, column: 6, scope: !1493)
!1495 = !DILocation(line: 246, column: 29, scope: !1493)
!1496 = !DILocation(line: 246, column: 6, scope: !1452)
!1497 = !DILocation(line: 247, column: 22, scope: !1493)
!1498 = !DILocation(line: 247, column: 9, scope: !1493)
!1499 = !DILocation(line: 247, column: 7, scope: !1493)
!1500 = !DILocation(line: 247, column: 3, scope: !1493)
!1501 = !DILocation(line: 248, column: 12, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1493, file: !896, line: 248, column: 11)
!1503 = !DILocation(line: 248, column: 11, scope: !1502)
!1504 = !DILocation(line: 248, column: 19, scope: !1502)
!1505 = !DILocation(line: 248, column: 11, scope: !1493)
!1506 = !DILocation(line: 249, column: 26, scope: !1502)
!1507 = !DILocation(line: 249, column: 32, scope: !1502)
!1508 = !DILocation(line: 249, column: 9, scope: !1502)
!1509 = !DILocation(line: 249, column: 7, scope: !1502)
!1510 = !DILocation(line: 249, column: 3, scope: !1502)
!1511 = !DILocation(line: 251, column: 7, scope: !1502)
!1512 = !DILocation(line: 253, column: 6, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1452, file: !896, line: 253, column: 6)
!1514 = !DILocation(line: 253, column: 10, scope: !1513)
!1515 = !DILocation(line: 253, column: 17, scope: !1513)
!1516 = !DILocation(line: 253, column: 21, scope: !1517)
!1517 = !DILexicalBlockFile(scope: !1513, file: !896, discriminator: 1)
!1518 = !DILocation(line: 253, column: 20, scope: !1517)
!1519 = !DILocation(line: 253, column: 28, scope: !1517)
!1520 = !DILocation(line: 253, column: 6, scope: !1517)
!1521 = !DILocation(line: 254, column: 53, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1513, file: !896, line: 253, column: 36)
!1523 = !DILocation(line: 254, column: 59, scope: !1522)
!1524 = !DILocation(line: 254, column: 3, scope: !1522)
!1525 = !DILocation(line: 256, column: 2, scope: !1522)
!1526 = !DILocation(line: 256, column: 13, scope: !1527)
!1527 = !DILexicalBlockFile(scope: !1528, file: !896, discriminator: 1)
!1528 = distinct !DILexicalBlock(scope: !1513, file: !896, line: 256, column: 13)
!1529 = !DILocation(line: 256, column: 17, scope: !1527)
!1530 = !DILocation(line: 257, column: 23, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !896, line: 257, column: 7)
!1532 = distinct !DILexicalBlock(scope: !1528, file: !896, line: 256, column: 25)
!1533 = !DILocation(line: 257, column: 7, scope: !1531)
!1534 = !DILocation(line: 257, column: 31, scope: !1531)
!1535 = !DILocation(line: 257, column: 7, scope: !1532)
!1536 = !DILocation(line: 258, column: 32, scope: !1531)
!1537 = !DILocation(line: 258, column: 4, scope: !1531)
!1538 = !DILocation(line: 260, column: 37, scope: !1532)
!1539 = !DILocation(line: 260, column: 42, scope: !1532)
!1540 = !DILocation(line: 260, column: 3, scope: !1532)
!1541 = !DILocation(line: 261, column: 2, scope: !1532)
!1542 = !DILocation(line: 263, column: 18, scope: !1452)
!1543 = !DILocation(line: 263, column: 2, scope: !1452)
!1544 = !DILocation(line: 264, column: 1, scope: !1452)
!1545 = !DILocation(line: 264, column: 1, scope: !1546)
!1546 = !DILexicalBlockFile(scope: !1452, file: !896, discriminator: 1)
!1547 = distinct !DISubprogram(name: "cmd_me", scope: !896, file: !896, line: 266, type: !1453, isLocal: true, isDefinition: true, scopeLine: 267, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !897)
!1548 = !DILocalVariable(name: "data", arg: 1, scope: !1547, file: !896, line: 266, type: !587)
!1549 = !DILocation(line: 266, column: 32, scope: !1547)
!1550 = !DILocalVariable(name: "server", arg: 2, scope: !1547, file: !896, line: 266, type: !499)
!1551 = !DILocation(line: 266, column: 50, scope: !1547)
!1552 = !DILocalVariable(name: "item", arg: 3, scope: !1547, file: !896, line: 266, type: !626)
!1553 = !DILocation(line: 266, column: 71, scope: !1547)
!1554 = !DILocalVariable(name: "dcc", scope: !1547, file: !896, line: 268, type: !148)
!1555 = !DILocation(line: 268, column: 16, scope: !1547)
!1556 = !DILocation(line: 270, column: 21, scope: !1547)
!1557 = !DILocation(line: 270, column: 8, scope: !1547)
!1558 = !DILocation(line: 270, column: 6, scope: !1547)
!1559 = !DILocation(line: 271, column: 6, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1547, file: !896, line: 271, column: 6)
!1561 = !DILocation(line: 271, column: 10, scope: !1560)
!1562 = !DILocation(line: 271, column: 6, scope: !1547)
!1563 = !DILocation(line: 272, column: 44, scope: !1560)
!1564 = !DILocation(line: 272, column: 49, scope: !1560)
!1565 = !DILocation(line: 272, column: 3, scope: !1560)
!1566 = !DILocation(line: 273, column: 1, scope: !1547)
!1567 = distinct !DISubprogram(name: "cmd_action", scope: !896, file: !896, line: 275, type: !1453, isLocal: true, isDefinition: true, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !897)
!1568 = !DILocalVariable(name: "data", arg: 1, scope: !1567, file: !896, line: 275, type: !587)
!1569 = !DILocation(line: 275, column: 36, scope: !1567)
!1570 = !DILocalVariable(name: "server", arg: 2, scope: !1567, file: !896, line: 275, type: !499)
!1571 = !DILocation(line: 275, column: 54, scope: !1567)
!1572 = !DILocalVariable(name: "item", arg: 3, scope: !1567, file: !896, line: 275, type: !626)
!1573 = !DILocation(line: 275, column: 75, scope: !1567)
!1574 = !DILocalVariable(name: "dcc", scope: !1567, file: !896, line: 277, type: !148)
!1575 = !DILocation(line: 277, column: 16, scope: !1567)
!1576 = !DILocalVariable(name: "target", scope: !1567, file: !896, line: 278, type: !185)
!1577 = !DILocation(line: 278, column: 8, scope: !1567)
!1578 = !DILocalVariable(name: "text", scope: !1567, file: !896, line: 278, type: !185)
!1579 = !DILocation(line: 278, column: 17, scope: !1567)
!1580 = !DILocalVariable(name: "free_arg", scope: !1567, file: !896, line: 279, type: !147)
!1581 = !DILocation(line: 279, column: 8, scope: !1567)
!1582 = !DILocation(line: 281, column: 2, scope: !1567)
!1583 = distinct !{!1583, !1582}
!1584 = !DILocation(line: 281, column: 10, scope: !1585)
!1585 = !DILexicalBlockFile(scope: !1586, file: !896, discriminator: 1)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !896, line: 281, column: 10)
!1587 = distinct !DILexicalBlock(scope: !1567, file: !896, line: 281, column: 4)
!1588 = !DILocation(line: 281, column: 15, scope: !1585)
!1589 = !DILocation(line: 281, column: 5, scope: !1590)
!1590 = !DILexicalBlockFile(scope: !1591, file: !896, discriminator: 2)
!1591 = distinct !DILexicalBlock(scope: !1586, file: !896, line: 281, column: 3)
!1592 = !DILocation(line: 281, column: 14, scope: !1593)
!1593 = !DILexicalBlockFile(scope: !1594, file: !896, discriminator: 3)
!1594 = distinct !DILexicalBlock(scope: !1586, file: !896, line: 281, column: 12)
!1595 = !DILocation(line: 281, column: 99, scope: !1593)
!1596 = !DILocation(line: 281, column: 110, scope: !1597)
!1597 = !DILexicalBlockFile(scope: !1587, file: !896, discriminator: 4)
!1598 = !DILocation(line: 283, column: 7, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1567, file: !896, line: 283, column: 6)
!1600 = !DILocation(line: 283, column: 6, scope: !1599)
!1601 = !DILocation(line: 283, column: 12, scope: !1599)
!1602 = !DILocation(line: 283, column: 6, scope: !1567)
!1603 = !DILocation(line: 285, column: 3, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1599, file: !896, line: 283, column: 20)
!1605 = !DILocation(line: 288, column: 22, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1567, file: !896, line: 288, column: 6)
!1607 = !DILocation(line: 288, column: 7, scope: !1606)
!1608 = !DILocation(line: 288, column: 6, scope: !1567)
!1609 = !DILocation(line: 290, column: 3, scope: !1606)
!1610 = !DILocation(line: 291, column: 7, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1567, file: !896, line: 291, column: 6)
!1612 = !DILocation(line: 291, column: 6, scope: !1611)
!1613 = !DILocation(line: 291, column: 14, scope: !1611)
!1614 = !DILocation(line: 291, column: 22, scope: !1611)
!1615 = !DILocation(line: 291, column: 26, scope: !1616)
!1616 = !DILexicalBlockFile(scope: !1611, file: !896, discriminator: 1)
!1617 = !DILocation(line: 291, column: 25, scope: !1616)
!1618 = !DILocation(line: 291, column: 31, scope: !1616)
!1619 = !DILocation(line: 291, column: 6, scope: !1616)
!1620 = !DILocation(line: 292, column: 3, scope: !1611)
!1621 = distinct !{!1621, !1620}
!1622 = !DILocation(line: 292, column: 24, scope: !1623)
!1623 = !DILexicalBlockFile(scope: !1624, file: !896, discriminator: 1)
!1624 = distinct !DILexicalBlock(scope: !1611, file: !896, line: 292, column: 6)
!1625 = !DILocation(line: 292, column: 8, scope: !1623)
!1626 = !DILocation(line: 292, column: 35, scope: !1623)
!1627 = distinct !{!1627, !1628}
!1628 = !DILocation(line: 292, column: 35, scope: !1624)
!1629 = !DILocation(line: 292, column: 40, scope: !1630)
!1630 = !DILexicalBlockFile(scope: !1631, file: !896, discriminator: 2)
!1631 = distinct !DILexicalBlock(scope: !1624, file: !896, line: 292, column: 38)
!1632 = !DILocation(line: 292, column: 122, scope: !1633)
!1633 = !DILexicalBlockFile(scope: !1630, file: !896, discriminator: 5)
!1634 = !DILocation(line: 292, column: 137, scope: !1630)
!1635 = !DILocation(line: 292, column: 158, scope: !1636)
!1636 = !DILexicalBlockFile(scope: !1624, file: !896, discriminator: 3)
!1637 = !DILocation(line: 292, column: 158, scope: !1638)
!1638 = !DILexicalBlockFile(scope: !1624, file: !896, discriminator: 4)
!1639 = !DILocation(line: 294, column: 25, scope: !1567)
!1640 = !DILocation(line: 294, column: 31, scope: !1567)
!1641 = !DILocation(line: 294, column: 8, scope: !1567)
!1642 = !DILocation(line: 294, column: 6, scope: !1567)
!1643 = !DILocation(line: 295, column: 6, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1567, file: !896, line: 295, column: 6)
!1645 = !DILocation(line: 295, column: 10, scope: !1644)
!1646 = !DILocation(line: 295, column: 17, scope: !1644)
!1647 = !DILocation(line: 295, column: 20, scope: !1648)
!1648 = !DILexicalBlockFile(scope: !1644, file: !896, discriminator: 1)
!1649 = !DILocation(line: 295, column: 25, scope: !1648)
!1650 = !DILocation(line: 295, column: 33, scope: !1648)
!1651 = !DILocation(line: 295, column: 6, scope: !1648)
!1652 = !DILocation(line: 296, column: 53, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1644, file: !896, line: 295, column: 42)
!1654 = !DILocation(line: 296, column: 59, scope: !1653)
!1655 = !DILocation(line: 296, column: 3, scope: !1653)
!1656 = !DILocation(line: 298, column: 2, scope: !1653)
!1657 = !DILocation(line: 299, column: 23, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1659, file: !896, line: 299, column: 7)
!1659 = distinct !DILexicalBlock(scope: !1644, file: !896, line: 298, column: 9)
!1660 = !DILocation(line: 299, column: 7, scope: !1658)
!1661 = !DILocation(line: 299, column: 31, scope: !1658)
!1662 = !DILocation(line: 299, column: 7, scope: !1659)
!1663 = !DILocation(line: 300, column: 32, scope: !1658)
!1664 = !DILocation(line: 300, column: 4, scope: !1658)
!1665 = !DILocation(line: 302, column: 44, scope: !1659)
!1666 = !DILocation(line: 302, column: 49, scope: !1659)
!1667 = !DILocation(line: 302, column: 3, scope: !1659)
!1668 = !DILocation(line: 304, column: 18, scope: !1567)
!1669 = !DILocation(line: 304, column: 2, scope: !1567)
!1670 = !DILocation(line: 305, column: 1, scope: !1567)
!1671 = !DILocation(line: 305, column: 1, scope: !1672)
!1672 = !DILexicalBlockFile(scope: !1567, file: !896, discriminator: 1)
!1673 = distinct !DISubprogram(name: "cmd_ctcp", scope: !896, file: !896, line: 307, type: !1674, isLocal: true, isDefinition: true, scopeLine: 308, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !897)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{null, !587, !499}
!1676 = !DILocalVariable(name: "data", arg: 1, scope: !1673, file: !896, line: 307, type: !587)
!1677 = !DILocation(line: 307, column: 34, scope: !1673)
!1678 = !DILocalVariable(name: "server", arg: 2, scope: !1673, file: !896, line: 307, type: !499)
!1679 = !DILocation(line: 307, column: 52, scope: !1673)
!1680 = !DILocalVariable(name: "dcc", scope: !1673, file: !896, line: 309, type: !148)
!1681 = !DILocation(line: 309, column: 16, scope: !1673)
!1682 = !DILocalVariable(name: "target", scope: !1673, file: !896, line: 310, type: !185)
!1683 = !DILocation(line: 310, column: 8, scope: !1673)
!1684 = !DILocalVariable(name: "ctcpcmd", scope: !1673, file: !896, line: 310, type: !185)
!1685 = !DILocation(line: 310, column: 17, scope: !1673)
!1686 = !DILocalVariable(name: "ctcpdata", scope: !1673, file: !896, line: 310, type: !185)
!1687 = !DILocation(line: 310, column: 27, scope: !1673)
!1688 = !DILocalVariable(name: "free_arg", scope: !1673, file: !896, line: 311, type: !147)
!1689 = !DILocation(line: 311, column: 8, scope: !1673)
!1690 = !DILocation(line: 313, column: 2, scope: !1673)
!1691 = distinct !{!1691, !1690}
!1692 = !DILocation(line: 313, column: 10, scope: !1693)
!1693 = !DILexicalBlockFile(scope: !1694, file: !896, discriminator: 1)
!1694 = distinct !DILexicalBlock(scope: !1695, file: !896, line: 313, column: 10)
!1695 = distinct !DILexicalBlock(scope: !1673, file: !896, line: 313, column: 4)
!1696 = !DILocation(line: 313, column: 15, scope: !1693)
!1697 = !DILocation(line: 313, column: 5, scope: !1698)
!1698 = !DILexicalBlockFile(scope: !1699, file: !896, discriminator: 2)
!1699 = distinct !DILexicalBlock(scope: !1694, file: !896, line: 313, column: 3)
!1700 = !DILocation(line: 313, column: 14, scope: !1701)
!1701 = !DILexicalBlockFile(scope: !1702, file: !896, discriminator: 3)
!1702 = distinct !DILexicalBlock(scope: !1694, file: !896, line: 313, column: 12)
!1703 = !DILocation(line: 313, column: 99, scope: !1701)
!1704 = !DILocation(line: 313, column: 110, scope: !1705)
!1705 = !DILexicalBlockFile(scope: !1695, file: !896, discriminator: 4)
!1706 = !DILocation(line: 314, column: 6, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1673, file: !896, line: 314, column: 6)
!1708 = !DILocation(line: 314, column: 13, scope: !1707)
!1709 = !DILocation(line: 314, column: 20, scope: !1707)
!1710 = !DILocation(line: 314, column: 24, scope: !1711)
!1711 = !DILexicalBlockFile(scope: !1707, file: !896, discriminator: 1)
!1712 = !DILocation(line: 314, column: 32, scope: !1711)
!1713 = !DILocation(line: 314, column: 6, scope: !1711)
!1714 = !DILocation(line: 315, column: 3, scope: !1707)
!1715 = distinct !{!1715, !1714}
!1716 = !DILocation(line: 315, column: 8, scope: !1717)
!1717 = !DILexicalBlockFile(scope: !1718, file: !896, discriminator: 1)
!1718 = distinct !DILexicalBlock(scope: !1707, file: !896, line: 315, column: 6)
!1719 = !DILocation(line: 315, column: 86, scope: !1720)
!1720 = !DILexicalBlockFile(scope: !1717, file: !896, discriminator: 3)
!1721 = !DILocation(line: 315, column: 101, scope: !1717)
!1722 = !DILocation(line: 315, column: 109, scope: !1723)
!1723 = !DILexicalBlockFile(scope: !1718, file: !896, discriminator: 2)
!1724 = !DILocation(line: 317, column: 22, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1673, file: !896, line: 317, column: 6)
!1726 = !DILocation(line: 317, column: 7, scope: !1725)
!1727 = !DILocation(line: 317, column: 6, scope: !1673)
!1728 = !DILocation(line: 319, column: 3, scope: !1725)
!1729 = !DILocation(line: 320, column: 7, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1673, file: !896, line: 320, column: 6)
!1731 = !DILocation(line: 320, column: 6, scope: !1730)
!1732 = !DILocation(line: 320, column: 14, scope: !1730)
!1733 = !DILocation(line: 320, column: 22, scope: !1730)
!1734 = !DILocation(line: 320, column: 26, scope: !1735)
!1735 = !DILexicalBlockFile(scope: !1730, file: !896, discriminator: 1)
!1736 = !DILocation(line: 320, column: 25, scope: !1735)
!1737 = !DILocation(line: 320, column: 34, scope: !1735)
!1738 = !DILocation(line: 320, column: 6, scope: !1735)
!1739 = !DILocation(line: 321, column: 3, scope: !1730)
!1740 = distinct !{!1740, !1739}
!1741 = !DILocation(line: 321, column: 24, scope: !1742)
!1742 = !DILexicalBlockFile(scope: !1743, file: !896, discriminator: 1)
!1743 = distinct !DILexicalBlock(scope: !1730, file: !896, line: 321, column: 6)
!1744 = !DILocation(line: 321, column: 8, scope: !1742)
!1745 = !DILocation(line: 321, column: 35, scope: !1742)
!1746 = distinct !{!1746, !1747}
!1747 = !DILocation(line: 321, column: 35, scope: !1743)
!1748 = !DILocation(line: 321, column: 40, scope: !1749)
!1749 = !DILexicalBlockFile(scope: !1750, file: !896, discriminator: 2)
!1750 = distinct !DILexicalBlock(scope: !1743, file: !896, line: 321, column: 38)
!1751 = !DILocation(line: 321, column: 122, scope: !1752)
!1752 = !DILexicalBlockFile(scope: !1749, file: !896, discriminator: 5)
!1753 = !DILocation(line: 321, column: 137, scope: !1749)
!1754 = !DILocation(line: 321, column: 158, scope: !1755)
!1755 = !DILexicalBlockFile(scope: !1743, file: !896, discriminator: 3)
!1756 = !DILocation(line: 321, column: 158, scope: !1757)
!1757 = !DILexicalBlockFile(scope: !1743, file: !896, discriminator: 4)
!1758 = !DILocation(line: 323, column: 7, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1673, file: !896, line: 323, column: 6)
!1760 = !DILocation(line: 323, column: 6, scope: !1759)
!1761 = !DILocation(line: 323, column: 14, scope: !1759)
!1762 = !DILocation(line: 323, column: 6, scope: !1673)
!1763 = !DILocation(line: 325, column: 19, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1759, file: !896, line: 323, column: 22)
!1765 = !DILocation(line: 325, column: 3, scope: !1764)
!1766 = !DILocation(line: 326, column: 3, scope: !1764)
!1767 = !DILocation(line: 329, column: 25, scope: !1673)
!1768 = !DILocation(line: 329, column: 31, scope: !1673)
!1769 = !DILocation(line: 329, column: 8, scope: !1673)
!1770 = !DILocation(line: 329, column: 6, scope: !1673)
!1771 = !DILocation(line: 330, column: 6, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1673, file: !896, line: 330, column: 6)
!1773 = !DILocation(line: 330, column: 10, scope: !1772)
!1774 = !DILocation(line: 330, column: 17, scope: !1772)
!1775 = !DILocation(line: 330, column: 20, scope: !1776)
!1776 = !DILexicalBlockFile(scope: !1772, file: !896, discriminator: 1)
!1777 = !DILocation(line: 330, column: 25, scope: !1776)
!1778 = !DILocation(line: 330, column: 33, scope: !1776)
!1779 = !DILocation(line: 330, column: 6, scope: !1776)
!1780 = !DILocation(line: 331, column: 53, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1772, file: !896, line: 330, column: 42)
!1782 = !DILocation(line: 331, column: 59, scope: !1781)
!1783 = !DILocation(line: 331, column: 3, scope: !1781)
!1784 = !DILocation(line: 333, column: 2, scope: !1781)
!1785 = !DILocation(line: 334, column: 15, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1772, file: !896, line: 333, column: 9)
!1787 = !DILocation(line: 334, column: 3, scope: !1786)
!1788 = !DILocation(line: 335, column: 42, scope: !1786)
!1789 = !DILocation(line: 335, column: 47, scope: !1786)
!1790 = !DILocation(line: 335, column: 56, scope: !1786)
!1791 = !DILocation(line: 335, column: 3, scope: !1786)
!1792 = !DILocation(line: 338, column: 18, scope: !1673)
!1793 = !DILocation(line: 338, column: 2, scope: !1673)
!1794 = !DILocation(line: 339, column: 1, scope: !1673)
!1795 = !DILocation(line: 339, column: 1, scope: !1796)
!1796 = !DILexicalBlockFile(scope: !1673, file: !896, discriminator: 1)
!1797 = distinct !DISubprogram(name: "dcc_error_close_not_found", scope: !896, file: !896, line: 212, type: !1798, isLocal: true, isDefinition: true, scopeLine: 214, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !897)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{null, !587, !587, !587}
!1800 = !DILocalVariable(name: "type", arg: 1, scope: !1797, file: !896, line: 212, type: !587)
!1801 = !DILocation(line: 212, column: 51, scope: !1797)
!1802 = !DILocalVariable(name: "nick", arg: 2, scope: !1797, file: !896, line: 212, type: !587)
!1803 = !DILocation(line: 212, column: 69, scope: !1797)
!1804 = !DILocalVariable(name: "fname", arg: 3, scope: !1797, file: !896, line: 213, type: !587)
!1805 = !DILocation(line: 213, column: 23, scope: !1797)
!1806 = !DILocation(line: 215, column: 2, scope: !1797)
!1807 = distinct !{!1807, !1806}
!1808 = !DILocation(line: 215, column: 10, scope: !1809)
!1809 = !DILexicalBlockFile(scope: !1810, file: !896, discriminator: 1)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !896, line: 215, column: 10)
!1811 = distinct !DILexicalBlock(scope: !1797, file: !896, line: 215, column: 4)
!1812 = !DILocation(line: 215, column: 15, scope: !1809)
!1813 = !DILocation(line: 215, column: 5, scope: !1814)
!1814 = !DILexicalBlockFile(scope: !1815, file: !896, discriminator: 2)
!1815 = distinct !DILexicalBlock(scope: !1810, file: !896, line: 215, column: 3)
!1816 = !DILocation(line: 215, column: 14, scope: !1817)
!1817 = !DILexicalBlockFile(scope: !1818, file: !896, discriminator: 3)
!1818 = distinct !DILexicalBlock(scope: !1810, file: !896, line: 215, column: 12)
!1819 = !DILocation(line: 215, column: 99, scope: !1817)
!1820 = !DILocation(line: 215, column: 110, scope: !1821)
!1821 = !DILexicalBlockFile(scope: !1811, file: !896, discriminator: 4)
!1822 = !DILocation(line: 216, column: 2, scope: !1797)
!1823 = distinct !{!1823, !1822}
!1824 = !DILocation(line: 216, column: 10, scope: !1825)
!1825 = !DILexicalBlockFile(scope: !1826, file: !896, discriminator: 1)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !896, line: 216, column: 10)
!1827 = distinct !DILexicalBlock(scope: !1797, file: !896, line: 216, column: 4)
!1828 = !DILocation(line: 216, column: 15, scope: !1825)
!1829 = !DILocation(line: 216, column: 5, scope: !1830)
!1830 = !DILexicalBlockFile(scope: !1831, file: !896, discriminator: 2)
!1831 = distinct !DILexicalBlock(scope: !1826, file: !896, line: 216, column: 3)
!1832 = !DILocation(line: 216, column: 14, scope: !1833)
!1833 = !DILexicalBlockFile(scope: !1834, file: !896, discriminator: 3)
!1834 = distinct !DILexicalBlock(scope: !1826, file: !896, line: 216, column: 12)
!1835 = !DILocation(line: 216, column: 99, scope: !1833)
!1836 = !DILocation(line: 216, column: 110, scope: !1837)
!1837 = !DILexicalBlockFile(scope: !1827, file: !896, discriminator: 4)
!1838 = !DILocation(line: 217, column: 25, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1797, file: !896, line: 217, column: 6)
!1840 = !DILocation(line: 217, column: 6, scope: !1839)
!1841 = !DILocation(line: 217, column: 39, scope: !1839)
!1842 = !DILocation(line: 217, column: 6, scope: !1797)
!1843 = !DILocation(line: 217, column: 45, scope: !1844)
!1844 = !DILexicalBlockFile(scope: !1839, file: !896, discriminator: 1)
!1845 = !DILocation(line: 219, column: 44, scope: !1797)
!1846 = !DILocation(line: 219, column: 2, scope: !1797)
!1847 = !DILocation(line: 221, column: 1, scope: !1797)
!1848 = !DILocation(line: 221, column: 1, scope: !1849)
!1849 = !DILexicalBlockFile(scope: !1797, file: !896, discriminator: 1)
!1850 = distinct !DISubprogram(name: "fe_dcc_chat_deinit", scope: !896, file: !896, line: 364, type: !353, isLocal: false, isDefinition: true, scopeLine: 365, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !897)
!1851 = !DILocation(line: 366, column: 2, scope: !1850)
!1852 = !DILocation(line: 368, column: 2, scope: !1850)
!1853 = !DILocation(line: 369, column: 2, scope: !1850)
!1854 = !DILocation(line: 370, column: 2, scope: !1850)
!1855 = !DILocation(line: 371, column: 2, scope: !1850)
!1856 = !DILocation(line: 372, column: 2, scope: !1850)
!1857 = !DILocation(line: 373, column: 2, scope: !1850)
!1858 = !DILocation(line: 374, column: 2, scope: !1850)
!1859 = !DILocation(line: 375, column: 2, scope: !1850)
!1860 = !DILocation(line: 376, column: 2, scope: !1850)
!1861 = !DILocation(line: 377, column: 2, scope: !1850)
!1862 = !DILocation(line: 378, column: 2, scope: !1850)
!1863 = !DILocation(line: 379, column: 9, scope: !1850)
!1864 = !DILocation(line: 380, column: 2, scope: !1850)
!1865 = !DILocation(line: 381, column: 2, scope: !1850)
!1866 = !DILocation(line: 382, column: 2, scope: !1850)
!1867 = !DILocation(line: 383, column: 2, scope: !1850)
!1868 = !DILocation(line: 384, column: 2, scope: !1850)
!1869 = !DILocation(line: 385, column: 1, scope: !1850)
