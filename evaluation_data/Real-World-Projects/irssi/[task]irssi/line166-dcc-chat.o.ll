; ModuleID = './line166-dcc-chat.o.i'
source_filename = "./line166-dcc-chat.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
%struct._IRC_SERVER_REC = type { i32, i32, i32, %struct._IRC_SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, void (%struct._SERVER_REC*, i8*, i32)*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)*, %struct._GSList*, %struct._GSList*, %struct._REDIRECT_REC*, %struct._GSList*, i8*, i8*, i8*, i8*, i8*, i32, i16, i32, i32, i32, i32, %struct._GHashTable*, %struct._GSList*, %struct._GSList*, %struct._GString*, i32, i32, %struct._GSList*, %struct._GTimeVal, %struct._GTimeVal, i32, i32, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GHashTable*, %struct._GSList*, %struct._GSList*, i8*, %struct._GHashTable*, [256 x %struct.modes_type], [256 x i8], i32 (i8*, i8*)* }
%struct._IRC_SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
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
%struct._NET_SENDBUF_REC = type { %struct._GIOChannel*, %struct._LINEBUF_REC*, i32, i32, i32, i8*, i32, i8 }
%struct._LINEBUF_REC = type opaque
%struct._RAWLOG_REC = type opaque
%struct._SERVER_REC = type { i32, i32, i32, %struct._SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, {}*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)* }
%struct._SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8* }
%struct._CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)* }
%struct._WI_ITEM_REC = type opaque
%struct._NICK_REC = type { i32, i32, i64, i8*, i8*, i8*, i32, i8, [8 x i8], i8*, %struct._NICK_REC* }
%struct._QUERY_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, i8 }
%struct._REDIRECT_REC = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GTimeVal = type { i64, i64 }
%struct._GHashTable = type opaque
%struct.modes_type = type { void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, i8 }
%struct._IRC_CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._IRC_SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)*, %struct._GSList*, i64, i32, i32 }
%struct.CHAT_DCC_REC = type { i32, i32, i64, %struct._IRC_SERVER_REC*, i8*, i8*, i8*, %struct.CHAT_DCC_REC*, i8*, i8*, %struct._IPADDR, [46 x i8], i32, %struct._GIOChannel*, i32, i32, i32, i64, i64, i32, i8, %struct._GHashTable*, i8*, %struct._NET_SENDBUF_REC*, i8 }
%struct.DCC_REC = type { i32, i32, i64, %struct._IRC_SERVER_REC*, i8*, i8*, i8*, %struct.CHAT_DCC_REC*, i8*, i8*, %struct._IPADDR, [46 x i8], i32, %struct._GIOChannel*, i32, i32, i32, i64, i64, i32, i8, %struct._GHashTable* }

@.str = private unnamed_addr constant [4 x i8] c"DCC\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"CHAT\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"dcc_mirc_ctcp\00", align 1
@__func__.dcc_chat_find_id = private unnamed_addr constant [17 x i8] c"dcc_chat_find_id\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"id != NULL\00", align 1
@dcc_conns = external global %struct._GSList*, align 8
@__func__.dcc_chat_send = private unnamed_addr constant [14 x i8] c"dcc_chat_send\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"IS_DCC_CHAT(dcc)\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"dcc->sendbuf != NULL\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"%s\01%s\01\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"CTCP_REPLY \00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"CTCP_MESSAGE \00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"%s %s :\01%s\01\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"NOTICE\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"PRIVMSG\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"WINDOW ITEM TYPE\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"QUERY\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"IRC\00", align 1
@__func__.dcc_chat_input = private unnamed_addr constant [15 x i8] c"dcc_chat_input\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"dcc chat message\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"irc/dcc\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"dcc\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"dcc_autochat_masks\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"msg\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"me\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"action\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"ctcp\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"dcc chat\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"passive\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"mircdcc\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"dcc close\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"whois\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"dcc destroyed\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"ctcp msg dcc chat\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"dcc ctcp dcc\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"dcc reply dcc\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"ctcp reply dcc reject\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"event nick\00", align 1
@__func__.dcc_chat_get_new_id = private unnamed_addr constant [20 x i8] c"dcc_chat_get_new_id\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"nick != NULL\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@__func__.cmd_msg = private unnamed_addr constant [8 x i8] c"cmd_msg\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@__func__.cmd_me = private unnamed_addr constant [7 x i8] c"cmd_me\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"ACTION \00", align 1
@__func__.cmd_action = private unnamed_addr constant [11 x i8] c"cmd_action\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"error command\00", align 1
@__func__.cmd_ctcp = private unnamed_addr constant [9 x i8] c"cmd_ctcp\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c" \00", align 1
@__func__.cmd_dcc_chat = private unnamed_addr constant [13 x i8] c"cmd_dcc_chat\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"chat\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"dcc-chat.c\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"dcc request send\00", align 1
@.str.47 = private unnamed_addr constant [34 x i8] c"PRIVMSG %s :\01DCC CHAT CHAT %s %d\01\00", align 1
@.str.48 = private unnamed_addr constant [42 x i8] c"PRIVMSG %s :\01DCC CHAT CHAT 16843009 0 %d\01\00", align 1
@__func__.dcc_chat_connect = private unnamed_addr constant [17 x i8] c"dcc_chat_connect\00", align 1
@.str.49 = private unnamed_addr constant [18 x i8] c"dcc error connect\00", align 1
@__func__.sig_chat_connected = private unnamed_addr constant [19 x i8] c"sig_chat_connected\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"dcc connected\00", align 1
@__func__.dcc_chat_passive = private unnamed_addr constant [17 x i8] c"dcc_chat_passive\00", align 1
@.str.51 = private unnamed_addr constant [37 x i8] c"PRIVMSG %s :\01DCC CHAT CHAT %s %d %d\01\00", align 1
@__func__.dcc_chat_listen = private unnamed_addr constant [16 x i8] c"dcc_chat_listen\00", align 1
@__func__.cmd_mircdcc = private unnamed_addr constant [12 x i8] c"cmd_mircdcc\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"OF\00", align 1
@__func__.cmd_dcc_close = private unnamed_addr constant [14 x i8] c"cmd_dcc_close\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"CHAT \00", align 1
@__func__.cmd_whois = private unnamed_addr constant [10 x i8] c"cmd_whois\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"command whois\00", align 1
@__func__.dcc_remove_chat_refs = private unnamed_addr constant [21 x i8] c"dcc_remove_chat_refs\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"dcc != NULL\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@__func__.ctcp_msg_dcc_chat = private unnamed_addr constant [18 x i8] c"ctcp_msg_dcc_chat\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"dcc request\00", align 1
@.str.58 = private unnamed_addr constant [24 x i8] c"dcc_autoaccept_lowports\00", align 1
@__func__.dcc_chat_msg = private unnamed_addr constant [13 x i8] c"dcc_chat_msg\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"msg != NULL\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"dcc reply \00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"dcc ctcp \00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"default dcc reply\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"default dcc ctcp\00", align 1
@__func__.dcc_ctcp_redirect = private unnamed_addr constant [18 x i8] c"dcc_ctcp_redirect\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"ctcp msg dcc\00", align 1
@__func__.dcc_ctcp_reply_redirect = private unnamed_addr constant [24 x i8] c"dcc_ctcp_reply_redirect\00", align 1
@.str.65 = private unnamed_addr constant [15 x i8] c"ctcp reply dcc\00", align 1
@__func__.event_nick = private unnamed_addr constant [11 x i8] c"event_nick\00", align 1
@.str.66 = private unnamed_addr constant [17 x i8] c"orignick != NULL\00", align 1
@.str.67 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@__func__.dcc_chat_find_nick = private unnamed_addr constant [19 x i8] c"dcc_chat_find_nick\00", align 1

; Function Attrs: nounwind uwtable
define %struct.CHAT_DCC_REC* @dcc_chat_create(%struct._IRC_SERVER_REC*, %struct.CHAT_DCC_REC*, i8*, i8*) #0 !dbg !815 {
  %5 = alloca %struct.CHAT_DCC_REC*, align 8
  %6 = alloca %struct._IRC_SERVER_REC*, align 8
  %7 = alloca %struct.CHAT_DCC_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.CHAT_DCC_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %6, metadata !820, metadata !821), !dbg !822
  store %struct.CHAT_DCC_REC* %1, %struct.CHAT_DCC_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %7, metadata !823, metadata !821), !dbg !824
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !825, metadata !821), !dbg !826
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !827, metadata !821), !dbg !828
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %10, metadata !829, metadata !821), !dbg !830
  %11 = call noalias i8* @g_malloc0_n(i64 1, i64 224), !dbg !831
  %12 = bitcast i8* %11 to %struct.CHAT_DCC_REC*, !dbg !832
  store %struct.CHAT_DCC_REC* %12, %struct.CHAT_DCC_REC** %10, align 8, !dbg !833
  %13 = call i32 @module_get_uniq_id_str(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)), !dbg !834
  %14 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %10, align 8, !dbg !835
  %15 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %14, i32 0, i32 0, !dbg !836
  store i32 %13, i32* %15, align 8, !dbg !837
  %16 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %10, align 8, !dbg !838
  %17 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %16, i32 0, i32 1, !dbg !839
  store i32 %13, i32* %17, align 4, !dbg !840
  %18 = call i32 @settings_get_bool(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0)), !dbg !841
  %19 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %10, align 8, !dbg !842
  %20 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %19, i32 0, i32 24, !dbg !843
  %21 = trunc i32 %18 to i8, !dbg !844
  %22 = load i8, i8* %20, align 8, !dbg !844
  %23 = and i8 %21, 1, !dbg !844
  %24 = and i8 %22, -2, !dbg !844
  %25 = or i8 %24, %23, !dbg !844
  store i8 %25, i8* %20, align 8, !dbg !844
  %26 = zext i8 %23 to i32, !dbg !844
  %27 = load i8*, i8** %8, align 8, !dbg !845
  %28 = call i8* @dcc_chat_get_new_id(i8* %27), !dbg !846
  %29 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %10, align 8, !dbg !847
  %30 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %29, i32 0, i32 22, !dbg !848
  store i8* %28, i8** %30, align 8, !dbg !849
  %31 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %10, align 8, !dbg !850
  %32 = bitcast %struct.CHAT_DCC_REC* %31 to %struct.DCC_REC*, !dbg !851
  %33 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !852
  %34 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %7, align 8, !dbg !853
  %35 = load i8*, i8** %8, align 8, !dbg !854
  %36 = load i8*, i8** %9, align 8, !dbg !855
  call void @dcc_init_rec(%struct.DCC_REC* %32, %struct._IRC_SERVER_REC* %33, %struct.CHAT_DCC_REC* %34, i8* %35, i8* %36), !dbg !856
  %37 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %10, align 8, !dbg !857
  %38 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %37, i32 0, i32 21, !dbg !859
  %39 = load %struct._GHashTable*, %struct._GHashTable** %38, align 8, !dbg !859
  %40 = icmp eq %struct._GHashTable* %39, null, !dbg !860
  br i1 %40, label %41, label %47, !dbg !861

; <label>:41:                                     ; preds = %4
  %42 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %10, align 8, !dbg !862
  %43 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %42, i32 0, i32 22, !dbg !864
  %44 = load i8*, i8** %43, align 8, !dbg !864
  call void @g_free(i8* %44), !dbg !865
  %45 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %10, align 8, !dbg !866
  %46 = bitcast %struct.CHAT_DCC_REC* %45 to i8*, !dbg !866
  call void @g_free(i8* %46), !dbg !867
  store %struct.CHAT_DCC_REC* null, %struct.CHAT_DCC_REC** %5, align 8, !dbg !868
  br label %49, !dbg !868

; <label>:47:                                     ; preds = %4
  %48 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %10, align 8, !dbg !869
  store %struct.CHAT_DCC_REC* %48, %struct.CHAT_DCC_REC** %5, align 8, !dbg !870
  br label %49, !dbg !870

; <label>:49:                                     ; preds = %47, %41
  %50 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %5, align 8, !dbg !871
  ret %struct.CHAT_DCC_REC* %50, !dbg !871
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare noalias i8* @g_malloc0_n(i64, i64) #2

declare i32 @module_get_uniq_id_str(i8*, i8*) #2

declare i32 @settings_get_bool(i8*) #2

; Function Attrs: nounwind uwtable
define internal i8* @dcc_chat_get_new_id(i8*) #0 !dbg !872 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !875, metadata !821), !dbg !876
  call void @llvm.dbg.declare(metadata i8** %4, metadata !877, metadata !821), !dbg !878
  call void @llvm.dbg.declare(metadata i32* %5, metadata !879, metadata !821), !dbg !880
  br label %6, !dbg !881, !llvm.loop !882

; <label>:6:                                      ; preds = %1
  %7 = load i8*, i8** %3, align 8, !dbg !883
  %8 = icmp ne i8* %7, null, !dbg !887
  br i1 %8, label %9, label %10, !dbg !883

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !888

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.dcc_chat_get_new_id, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0)), !dbg !891
  store i8* null, i8** %2, align 8, !dbg !894
  br label %34, !dbg !894

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !895

; <label>:12:                                     ; preds = %11
  %13 = load i8*, i8** %3, align 8, !dbg !897
  %14 = call %struct.CHAT_DCC_REC* @dcc_chat_find_id(i8* %13), !dbg !899
  %15 = icmp eq %struct.CHAT_DCC_REC* %14, null, !dbg !900
  br i1 %15, label %16, label %19, !dbg !901

; <label>:16:                                     ; preds = %12
  %17 = load i8*, i8** %3, align 8, !dbg !902
  %18 = call noalias i8* @g_strdup(i8* %17), !dbg !904
  store i8* %18, i8** %2, align 8, !dbg !905
  br label %34, !dbg !905

; <label>:19:                                     ; preds = %12
  store i32 2, i32* %5, align 4, !dbg !906
  br label %20, !dbg !908

; <label>:20:                                     ; preds = %31, %19
  %21 = load i8*, i8** %3, align 8, !dbg !909
  %22 = load i32, i32* %5, align 4, !dbg !912
  %23 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i8* %21, i32 %22), !dbg !913
  store i8* %23, i8** %4, align 8, !dbg !914
  %24 = load i8*, i8** %4, align 8, !dbg !915
  %25 = call %struct.CHAT_DCC_REC* @dcc_chat_find_id(i8* %24), !dbg !917
  %26 = icmp eq %struct.CHAT_DCC_REC* %25, null, !dbg !918
  br i1 %26, label %27, label %29, !dbg !919

; <label>:27:                                     ; preds = %20
  %28 = load i8*, i8** %4, align 8, !dbg !920
  store i8* %28, i8** %2, align 8, !dbg !921
  br label %34, !dbg !921

; <label>:29:                                     ; preds = %20
  %30 = load i8*, i8** %4, align 8, !dbg !922
  call void @g_free(i8* %30), !dbg !923
  br label %31, !dbg !924

; <label>:31:                                     ; preds = %29
  %32 = load i32, i32* %5, align 4, !dbg !925
  %33 = add nsw i32 %32, 1, !dbg !925
  store i32 %33, i32* %5, align 4, !dbg !925
  br label %20, !dbg !927, !llvm.loop !928

; <label>:34:                                     ; preds = %27, %16, %10
  %35 = load i8*, i8** %2, align 8, !dbg !930
  ret i8* %35, !dbg !930
}

declare void @dcc_init_rec(%struct.DCC_REC*, %struct._IRC_SERVER_REC*, %struct.CHAT_DCC_REC*, i8*, i8*) #2

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.CHAT_DCC_REC* @dcc_chat_find_id(i8*) #0 !dbg !931 {
  %2 = alloca %struct.CHAT_DCC_REC*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct.CHAT_DCC_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !934, metadata !821), !dbg !935
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !936, metadata !821), !dbg !937
  br label %6, !dbg !938, !llvm.loop !939

; <label>:6:                                      ; preds = %1
  %7 = load i8*, i8** %3, align 8, !dbg !940
  %8 = icmp ne i8* %7, null, !dbg !944
  br i1 %8, label %9, label %10, !dbg !940

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !945

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.dcc_chat_find_id, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0)), !dbg !948
  store %struct.CHAT_DCC_REC* null, %struct.CHAT_DCC_REC** %2, align 8, !dbg !951
  br label %49, !dbg !951

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !952

; <label>:12:                                     ; preds = %11
  %13 = load %struct._GSList*, %struct._GSList** @dcc_conns, align 8, !dbg !954
  store %struct._GSList* %13, %struct._GSList** %4, align 8, !dbg !956
  br label %14, !dbg !957

; <label>:14:                                     ; preds = %44, %12
  %15 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !958
  %16 = icmp ne %struct._GSList* %15, null, !dbg !961
  br i1 %16, label %17, label %48, !dbg !962

; <label>:17:                                     ; preds = %14
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %5, metadata !963, metadata !821), !dbg !965
  %18 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !966
  %19 = getelementptr inbounds %struct._GSList, %struct._GSList* %18, i32 0, i32 0, !dbg !967
  %20 = load i8*, i8** %19, align 8, !dbg !967
  %21 = bitcast i8* %20 to %struct.CHAT_DCC_REC*, !dbg !966
  store %struct.CHAT_DCC_REC* %21, %struct.CHAT_DCC_REC** %5, align 8, !dbg !965
  %22 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %5, align 8, !dbg !968
  %23 = bitcast %struct.CHAT_DCC_REC* %22 to i8*, !dbg !968
  %24 = call i8* @module_check_cast_module(i8* %23, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)), !dbg !970
  %25 = bitcast i8* %24 to %struct.CHAT_DCC_REC*, !dbg !971
  %26 = icmp ne %struct.CHAT_DCC_REC* %25, null, !dbg !971
  br i1 %26, label %27, label %28, !dbg !972

; <label>:27:                                     ; preds = %17
  br i1 false, label %43, label %29, !dbg !973

; <label>:28:                                     ; preds = %17
  br i1 false, label %29, label %43, !dbg !975

; <label>:29:                                     ; preds = %28, %27
  %30 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %5, align 8, !dbg !977
  %31 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %30, i32 0, i32 22, !dbg !979
  %32 = load i8*, i8** %31, align 8, !dbg !979
  %33 = icmp ne i8* %32, null, !dbg !980
  br i1 %33, label %34, label %43, !dbg !981

; <label>:34:                                     ; preds = %29
  %35 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %5, align 8, !dbg !982
  %36 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %35, i32 0, i32 22, !dbg !983
  %37 = load i8*, i8** %36, align 8, !dbg !983
  %38 = load i8*, i8** %3, align 8, !dbg !984
  %39 = call i32 @g_ascii_strcasecmp(i8* %37, i8* %38), !dbg !985
  %40 = icmp eq i32 %39, 0, !dbg !986
  br i1 %40, label %41, label %43, !dbg !987

; <label>:41:                                     ; preds = %34
  %42 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %5, align 8, !dbg !989
  store %struct.CHAT_DCC_REC* %42, %struct.CHAT_DCC_REC** %2, align 8, !dbg !990
  br label %49, !dbg !990

; <label>:43:                                     ; preds = %34, %29, %28, %27
  br label %44, !dbg !991

; <label>:44:                                     ; preds = %43
  %45 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !992
  %46 = getelementptr inbounds %struct._GSList, %struct._GSList* %45, i32 0, i32 1, !dbg !994
  %47 = load %struct._GSList*, %struct._GSList** %46, align 8, !dbg !994
  store %struct._GSList* %47, %struct._GSList** %4, align 8, !dbg !995
  br label %14, !dbg !996, !llvm.loop !997

; <label>:48:                                     ; preds = %14
  store %struct.CHAT_DCC_REC* null, %struct.CHAT_DCC_REC** %2, align 8, !dbg !999
  br label %49, !dbg !999

; <label>:49:                                     ; preds = %48, %41, %10
  %50 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !1000
  ret %struct.CHAT_DCC_REC* %50, !dbg !1000
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare i8* @module_check_cast_module(i8*, i32, i8*, i8*) #2

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @dcc_chat_send(%struct.CHAT_DCC_REC*, i8*) #0 !dbg !1001 {
  %3 = alloca %struct.CHAT_DCC_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct.CHAT_DCC_REC* %0, %struct.CHAT_DCC_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %3, metadata !1004, metadata !821), !dbg !1005
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1006, metadata !821), !dbg !1007
  br label %5, !dbg !1008, !llvm.loop !1009

; <label>:5:                                      ; preds = %2
  %6 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !1010
  %7 = bitcast %struct.CHAT_DCC_REC* %6 to i8*, !dbg !1010
  %8 = call i8* @module_check_cast_module(i8* %7, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)), !dbg !1014
  %9 = bitcast i8* %8 to %struct.CHAT_DCC_REC*, !dbg !1015
  %10 = icmp ne %struct.CHAT_DCC_REC* %9, null, !dbg !1015
  br i1 %10, label %11, label %12, !dbg !1016

; <label>:11:                                     ; preds = %5
  br i1 false, label %14, label %13, !dbg !1017

; <label>:12:                                     ; preds = %5
  br i1 false, label %13, label %14, !dbg !1019

; <label>:13:                                     ; preds = %12, %11
  br label %15, !dbg !1021

; <label>:14:                                     ; preds = %12, %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.dcc_chat_send, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0)), !dbg !1024
  br label %45, !dbg !1027

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !1028

; <label>:16:                                     ; preds = %15
  br label %17, !dbg !1030, !llvm.loop !1031

; <label>:17:                                     ; preds = %16
  %18 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !1032
  %19 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %18, i32 0, i32 23, !dbg !1036
  %20 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %19, align 8, !dbg !1036
  %21 = icmp ne %struct._NET_SENDBUF_REC* %20, null, !dbg !1037
  br i1 %21, label %22, label %23, !dbg !1032

; <label>:22:                                     ; preds = %17
  br label %24, !dbg !1038

; <label>:23:                                     ; preds = %17
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.dcc_chat_send, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0)), !dbg !1041
  br label %45, !dbg !1044

; <label>:24:                                     ; preds = %22
  br label %25, !dbg !1045

; <label>:25:                                     ; preds = %24
  br label %26, !dbg !1047, !llvm.loop !1048

; <label>:26:                                     ; preds = %25
  %27 = load i8*, i8** %4, align 8, !dbg !1049
  %28 = icmp ne i8* %27, null, !dbg !1053
  br i1 %28, label %29, label %30, !dbg !1049

; <label>:29:                                     ; preds = %26
  br label %31, !dbg !1054

; <label>:30:                                     ; preds = %26
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.dcc_chat_send, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0)), !dbg !1057
  br label %45, !dbg !1060

; <label>:31:                                     ; preds = %29
  br label %32, !dbg !1061

; <label>:32:                                     ; preds = %31
  %33 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !1063
  %34 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %33, i32 0, i32 23, !dbg !1064
  %35 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %34, align 8, !dbg !1064
  %36 = load i8*, i8** %4, align 8, !dbg !1065
  %37 = load i8*, i8** %4, align 8, !dbg !1066
  %38 = call i64 @strlen(i8* %37) #6, !dbg !1067
  %39 = trunc i64 %38 to i32, !dbg !1067
  %40 = call i32 @net_sendbuffer_send(%struct._NET_SENDBUF_REC* %35, i8* %36, i32 %39), !dbg !1068
  %41 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !1070
  %42 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %41, i32 0, i32 23, !dbg !1071
  %43 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %42, align 8, !dbg !1071
  %44 = call i32 @net_sendbuffer_send(%struct._NET_SENDBUF_REC* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i32 1), !dbg !1072
  br label %45, !dbg !1073

; <label>:45:                                     ; preds = %32, %30, %23, %14
  ret void, !dbg !1074
}

declare i32 @net_sendbuffer_send(%struct._NET_SENDBUF_REC*, i8*, i32) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind uwtable
define void @dcc_ctcp_message(%struct._IRC_SERVER_REC*, i8*, %struct.CHAT_DCC_REC*, i32, i8*) #0 !dbg !1075 {
  %6 = alloca %struct._IRC_SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.CHAT_DCC_REC*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %6, metadata !1078, metadata !821), !dbg !1079
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1080, metadata !821), !dbg !1081
  store %struct.CHAT_DCC_REC* %2, %struct.CHAT_DCC_REC** %8, align 8
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %8, metadata !1082, metadata !821), !dbg !1083
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1084, metadata !821), !dbg !1085
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1086, metadata !821), !dbg !1087
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1088, metadata !821), !dbg !1089
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1090, metadata !821), !dbg !1091
  %13 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %8, align 8, !dbg !1092
  %14 = icmp ne %struct.CHAT_DCC_REC* %13, null, !dbg !1094
  br i1 %14, label %15, label %48, !dbg !1095

; <label>:15:                                     ; preds = %5
  %16 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %8, align 8, !dbg !1096
  %17 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %16, i32 0, i32 23, !dbg !1098
  %18 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %17, align 8, !dbg !1098
  %19 = icmp ne %struct._NET_SENDBUF_REC* %18, null, !dbg !1099
  br i1 %19, label %20, label %48, !dbg !1100

; <label>:20:                                     ; preds = %15
  %21 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1101
  %22 = bitcast %struct._IRC_SERVER_REC* %21 to i8*, !dbg !1101
  %23 = call i8* @module_check_cast(i8* %22, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0)), !dbg !1103
  %24 = bitcast i8* %23 to %struct._SERVER_REC*, !dbg !1104
  %25 = load i8*, i8** %10, align 8, !dbg !1105
  %26 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %8, align 8, !dbg !1106
  %27 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %26, i32 0, i32 6, !dbg !1107
  %28 = load i8*, i8** %27, align 8, !dbg !1107
  %29 = call i8* @recode_out(%struct._SERVER_REC* %24, i8* %25, i8* %28), !dbg !1108
  store i8* %29, i8** %12, align 8, !dbg !1110
  %30 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %8, align 8, !dbg !1111
  %31 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %30, i32 0, i32 24, !dbg !1112
  %32 = load i8, i8* %31, align 8, !dbg !1112
  %33 = and i8 %32, 1, !dbg !1112
  %34 = zext i8 %33 to i32, !dbg !1112
  %35 = icmp ne i32 %34, 0, !dbg !1111
  br i1 %35, label %36, label %37, !dbg !1111

; <label>:36:                                     ; preds = %20
  br label %41, !dbg !1113

; <label>:37:                                     ; preds = %20
  %38 = load i32, i32* %9, align 4, !dbg !1114
  %39 = icmp ne i32 %38, 0, !dbg !1114
  %40 = select i1 %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), !dbg !1114
  br label %41, !dbg !1115

; <label>:41:                                     ; preds = %37, %36
  %42 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i32 0, i32 0), %36 ], [ %40, %37 ], !dbg !1117
  %43 = load i8*, i8** %12, align 8, !dbg !1119
  %44 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* %42, i8* %43), !dbg !1120
  store i8* %44, i8** %11, align 8, !dbg !1121
  %45 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %8, align 8, !dbg !1122
  %46 = load i8*, i8** %11, align 8, !dbg !1123
  call void @dcc_chat_send(%struct.CHAT_DCC_REC* %45, i8* %46), !dbg !1124
  %47 = load i8*, i8** %11, align 8, !dbg !1125
  call void @g_free(i8* %47), !dbg !1126
  br label %62, !dbg !1127

; <label>:48:                                     ; preds = %15, %5
  %49 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1128
  %50 = bitcast %struct._IRC_SERVER_REC* %49 to i8*, !dbg !1128
  %51 = call i8* @module_check_cast(i8* %50, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0)), !dbg !1130
  %52 = bitcast i8* %51 to %struct._SERVER_REC*, !dbg !1131
  %53 = load i8*, i8** %10, align 8, !dbg !1132
  %54 = load i8*, i8** %7, align 8, !dbg !1133
  %55 = call i8* @recode_out(%struct._SERVER_REC* %52, i8* %53, i8* %54), !dbg !1134
  store i8* %55, i8** %12, align 8, !dbg !1136
  %56 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1137
  %57 = load i32, i32* %9, align 4, !dbg !1138
  %58 = icmp ne i32 %57, 0, !dbg !1138
  %59 = select i1 %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), !dbg !1138
  %60 = load i8*, i8** %7, align 8, !dbg !1139
  %61 = load i8*, i8** %12, align 8, !dbg !1140
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8* %59, i8* %60, i8* %61), !dbg !1141
  br label %62

; <label>:62:                                     ; preds = %48, %41
  %63 = load i8*, i8** %12, align 8, !dbg !1142
  call void @g_free(i8* %63), !dbg !1143
  ret void, !dbg !1144
}

declare i8* @recode_out(%struct._SERVER_REC*, i8*, i8*) #2

declare i8* @module_check_cast(i8*, i32, i8*) #2

declare noalias i8* @g_strdup_printf(i8*, ...) #2

declare void @irc_send_cmdv(%struct._IRC_SERVER_REC*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define %struct.CHAT_DCC_REC* @item_get_dcc(%struct._WI_ITEM_REC*) #0 !dbg !1145 {
  %2 = alloca %struct.CHAT_DCC_REC*, align 8
  %3 = alloca %struct._WI_ITEM_REC*, align 8
  %4 = alloca %struct._QUERY_REC*, align 8
  store %struct._WI_ITEM_REC* %0, %struct._WI_ITEM_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %3, metadata !1148, metadata !821), !dbg !1149
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %4, metadata !1150, metadata !821), !dbg !1151
  %5 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %3, align 8, !dbg !1152
  %6 = bitcast %struct._WI_ITEM_REC* %5 to i8*, !dbg !1152
  %7 = call i8* @module_check_cast_module(i8* %6, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0)), !dbg !1153
  %8 = bitcast i8* %7 to %struct._QUERY_REC*, !dbg !1154
  %9 = bitcast %struct._QUERY_REC* %8 to i8*, !dbg !1155
  %10 = call i8* @chat_protocol_check_cast(i8* %9, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0)), !dbg !1156
  %11 = bitcast i8* %10 to %struct._QUERY_REC*, !dbg !1158
  store %struct._QUERY_REC* %11, %struct._QUERY_REC** %4, align 8, !dbg !1159
  %12 = load %struct._QUERY_REC*, %struct._QUERY_REC** %4, align 8, !dbg !1160
  %13 = icmp eq %struct._QUERY_REC* %12, null, !dbg !1162
  br i1 %13, label %21, label %14, !dbg !1163

; <label>:14:                                     ; preds = %1
  %15 = load %struct._QUERY_REC*, %struct._QUERY_REC** %4, align 8, !dbg !1164
  %16 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %15, i32 0, i32 6, !dbg !1166
  %17 = load i8*, i8** %16, align 8, !dbg !1166
  %18 = load i8, i8* %17, align 1, !dbg !1167
  %19 = sext i8 %18 to i32, !dbg !1167
  %20 = icmp ne i32 %19, 61, !dbg !1168
  br i1 %20, label %21, label %22, !dbg !1169

; <label>:21:                                     ; preds = %14, %1
  store %struct.CHAT_DCC_REC* null, %struct.CHAT_DCC_REC** %2, align 8, !dbg !1170
  br label %28, !dbg !1170

; <label>:22:                                     ; preds = %14
  %23 = load %struct._QUERY_REC*, %struct._QUERY_REC** %4, align 8, !dbg !1171
  %24 = getelementptr inbounds %struct._QUERY_REC, %struct._QUERY_REC* %23, i32 0, i32 6, !dbg !1172
  %25 = load i8*, i8** %24, align 8, !dbg !1172
  %26 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !1173
  %27 = call %struct.CHAT_DCC_REC* @dcc_chat_find_id(i8* %26), !dbg !1174
  store %struct.CHAT_DCC_REC* %27, %struct.CHAT_DCC_REC** %2, align 8, !dbg !1175
  br label %28, !dbg !1175

; <label>:28:                                     ; preds = %22, %21
  %29 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !1176
  ret %struct.CHAT_DCC_REC* %29, !dbg !1176
}

declare i8* @chat_protocol_check_cast(i8*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define void @dcc_chat_input(%struct.CHAT_DCC_REC*) #0 !dbg !1177 {
  %2 = alloca %struct.CHAT_DCC_REC*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.CHAT_DCC_REC* %0, %struct.CHAT_DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %2, metadata !1180, metadata !821), !dbg !1181
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1182, metadata !821), !dbg !1183
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1184, metadata !821), !dbg !1185
  br label %6, !dbg !1186, !llvm.loop !1187

; <label>:6:                                      ; preds = %1
  %7 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !1188
  %8 = bitcast %struct.CHAT_DCC_REC* %7 to i8*, !dbg !1188
  %9 = call i8* @module_check_cast_module(i8* %8, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)), !dbg !1192
  %10 = bitcast i8* %9 to %struct.CHAT_DCC_REC*, !dbg !1193
  %11 = icmp ne %struct.CHAT_DCC_REC* %10, null, !dbg !1193
  br i1 %11, label %12, label %13, !dbg !1194

; <label>:12:                                     ; preds = %6
  br i1 false, label %15, label %14, !dbg !1195

; <label>:13:                                     ; preds = %6
  br i1 false, label %14, label %15, !dbg !1197

; <label>:14:                                     ; preds = %13, %12
  br label %16, !dbg !1199

; <label>:15:                                     ; preds = %13, %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.dcc_chat_input, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0)), !dbg !1202
  br label %62, !dbg !1205

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !1206

; <label>:17:                                     ; preds = %16
  br label %18, !dbg !1208, !llvm.loop !1209

; <label>:18:                                     ; preds = %59, %17
  %19 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !1210
  %20 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %19, i32 0, i32 23, !dbg !1212
  %21 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %20, align 8, !dbg !1212
  %22 = call i32 @net_sendbuffer_receive_line(%struct._NET_SENDBUF_REC* %21, i8** %3, i32 1), !dbg !1213
  store i32 %22, i32* %4, align 4, !dbg !1214
  %23 = load i32, i32* %4, align 4, !dbg !1215
  %24 = icmp eq i32 %23, -1, !dbg !1217
  br i1 %24, label %25, label %33, !dbg !1218

; <label>:25:                                     ; preds = %18
  %26 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !1219
  %27 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %26, i32 0, i32 24, !dbg !1221
  %28 = load i8, i8* %27, align 8, !dbg !1222
  %29 = and i8 %28, -3, !dbg !1222
  %30 = or i8 %29, 2, !dbg !1222
  store i8 %30, i8* %27, align 8, !dbg !1222
  %31 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !1223
  %32 = bitcast %struct.CHAT_DCC_REC* %31 to %struct.DCC_REC*, !dbg !1224
  call void @dcc_close(%struct.DCC_REC* %32), !dbg !1225
  br label %62, !dbg !1226

; <label>:33:                                     ; preds = %18
  %34 = load i32, i32* %4, align 4, !dbg !1227
  %35 = icmp sgt i32 %34, 0, !dbg !1229
  br i1 %35, label %36, label %58, !dbg !1230

; <label>:36:                                     ; preds = %33
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1231, metadata !821), !dbg !1233
  %37 = load i32, i32* %4, align 4, !dbg !1234
  %38 = sext i32 %37 to i64, !dbg !1234
  %39 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !1235
  %40 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %39, i32 0, i32 18, !dbg !1236
  %41 = load i64, i64* %40, align 8, !dbg !1237
  %42 = add i64 %41, %38, !dbg !1237
  store i64 %42, i64* %40, align 8, !dbg !1237
  %43 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !1238
  %44 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %43, i32 0, i32 3, !dbg !1239
  %45 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %44, align 8, !dbg !1239
  %46 = bitcast %struct._IRC_SERVER_REC* %45 to i8*, !dbg !1238
  %47 = call i8* @module_check_cast(i8* %46, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0)), !dbg !1240
  %48 = bitcast i8* %47 to %struct._SERVER_REC*, !dbg !1241
  %49 = load i8*, i8** %3, align 8, !dbg !1242
  %50 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !1243
  %51 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %50, i32 0, i32 6, !dbg !1244
  %52 = load i8*, i8** %51, align 8, !dbg !1244
  %53 = call i8* @recode_in(%struct._SERVER_REC* %48, i8* %49, i8* %52), !dbg !1245
  store i8* %53, i8** %5, align 8, !dbg !1247
  %54 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !1248
  %55 = load i8*, i8** %5, align 8, !dbg !1249
  %56 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), i32 2, %struct.CHAT_DCC_REC* %54, i8* %55), !dbg !1250
  %57 = load i8*, i8** %5, align 8, !dbg !1251
  call void @g_free(i8* %57), !dbg !1252
  br label %58, !dbg !1253

; <label>:58:                                     ; preds = %36, %33
  br label %59, !dbg !1254

; <label>:59:                                     ; preds = %58
  %60 = load i32, i32* %4, align 4, !dbg !1255
  %61 = icmp sgt i32 %60, 0, !dbg !1257
  br i1 %61, label %18, label %62, !dbg !1258, !llvm.loop !1209

; <label>:62:                                     ; preds = %15, %59, %25
  ret void, !dbg !1259
}

declare i32 @net_sendbuffer_receive_line(%struct._NET_SENDBUF_REC*, i8**, i32) #2

declare void @dcc_close(%struct.DCC_REC*) #2

declare i8* @recode_in(%struct._SERVER_REC*, i8*, i8*) #2

declare i32 @signal_emit(i8*, i32, ...) #2

; Function Attrs: nounwind uwtable
define void @dcc_chat_init() #0 !dbg !1260 {
  call void @dcc_register_type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)), !dbg !1261
  call void @settings_add_bool_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i32 0), !dbg !1262
  call void @settings_add_str_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i32 0, i32 0)), !dbg !1263
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_msg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1264
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_me to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1265
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @cmd_action to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1266
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @cmd_ctcp to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1267
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @cmd_dcc_chat to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1268
  call void @command_set_options_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0)), !dbg !1269
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._QUERY_REC*)* @cmd_mircdcc to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1270
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*)* @cmd_dcc_close to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1271
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_whois to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1272
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.CHAT_DCC_REC*)* @sig_dcc_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1273
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*, %struct.CHAT_DCC_REC*)* @ctcp_msg_dcc_chat to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1274
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.CHAT_DCC_REC*, i8*)* @dcc_chat_msg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1275
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.CHAT_DCC_REC*, i8*)* @dcc_ctcp_redirect to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1276
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.CHAT_DCC_REC*, i8*)* @dcc_ctcp_reply_redirect to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1277
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, %struct.DCC_REC*)* @ctcp_reply_dcc_reject to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1278
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_nick to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1279
  ret void, !dbg !1280
}

declare void @dcc_register_type(i8*) #2

declare void @settings_add_bool_module(i8*, i8*, i8*, i32) #2

declare void @settings_add_str_module(i8*, i8*, i8*, i8*) #2

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @cmd_msg(i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !1281 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca %struct.CHAT_DCC_REC*, align 8
  %8 = alloca %struct._GHashTable*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1284, metadata !821), !dbg !1285
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !1286, metadata !821), !dbg !1287
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !1288, metadata !821), !dbg !1289
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %7, metadata !1290, metadata !821), !dbg !1291
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %8, metadata !1292, metadata !821), !dbg !1293
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1294, metadata !821), !dbg !1295
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1296, metadata !821), !dbg !1297
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1298, metadata !821), !dbg !1299
  br label %13, !dbg !1300, !llvm.loop !1301

; <label>:13:                                     ; preds = %3
  %14 = load i8*, i8** %4, align 8, !dbg !1302
  %15 = icmp ne i8* %14, null, !dbg !1306
  br i1 %15, label %16, label %17, !dbg !1302

; <label>:16:                                     ; preds = %13
  br label %18, !dbg !1307

; <label>:17:                                     ; preds = %13
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.cmd_msg, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0)), !dbg !1310
  br label %71, !dbg !1313

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !1314

; <label>:19:                                     ; preds = %18
  %20 = load i8*, i8** %4, align 8, !dbg !1316
  %21 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %20, i8** %11, i32 57346, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), %struct._GHashTable** %8, i8** %10, i8** %9), !dbg !1318
  %22 = icmp ne i32 %21, 0, !dbg !1318
  br i1 %22, label %24, label %23, !dbg !1319

; <label>:23:                                     ; preds = %19
  br label %71, !dbg !1320

; <label>:24:                                     ; preds = %19
  %25 = load i8*, i8** %10, align 8, !dbg !1321
  %26 = call i32 @g_strcmp0(i8* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0)), !dbg !1323
  %27 = icmp eq i32 %26, 0, !dbg !1324
  br i1 %27, label %28, label %31, !dbg !1325

; <label>:28:                                     ; preds = %24
  %29 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1326
  %30 = call %struct.CHAT_DCC_REC* @item_get_dcc(%struct._WI_ITEM_REC* %29), !dbg !1327
  store %struct.CHAT_DCC_REC* %30, %struct.CHAT_DCC_REC** %7, align 8, !dbg !1328
  br label %42, !dbg !1329

; <label>:31:                                     ; preds = %24
  %32 = load i8*, i8** %10, align 8, !dbg !1330
  %33 = load i8, i8* %32, align 1, !dbg !1332
  %34 = sext i8 %33 to i32, !dbg !1332
  %35 = icmp eq i32 %34, 61, !dbg !1333
  br i1 %35, label %36, label %40, !dbg !1334

; <label>:36:                                     ; preds = %31
  %37 = load i8*, i8** %10, align 8, !dbg !1335
  %38 = getelementptr inbounds i8, i8* %37, i64 1, !dbg !1336
  %39 = call %struct.CHAT_DCC_REC* @dcc_chat_find_id(i8* %38), !dbg !1337
  store %struct.CHAT_DCC_REC* %39, %struct.CHAT_DCC_REC** %7, align 8, !dbg !1338
  br label %41, !dbg !1339

; <label>:40:                                     ; preds = %31
  store %struct.CHAT_DCC_REC* null, %struct.CHAT_DCC_REC** %7, align 8, !dbg !1340
  br label %41

; <label>:41:                                     ; preds = %40, %36
  br label %42

; <label>:42:                                     ; preds = %41, %28
  %43 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %7, align 8, !dbg !1341
  %44 = icmp ne %struct.CHAT_DCC_REC* %43, null, !dbg !1343
  br i1 %44, label %45, label %60, !dbg !1344

; <label>:45:                                     ; preds = %42
  %46 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %7, align 8, !dbg !1345
  %47 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %46, i32 0, i32 23, !dbg !1347
  %48 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %47, align 8, !dbg !1347
  %49 = icmp ne %struct._NET_SENDBUF_REC* %48, null, !dbg !1348
  br i1 %49, label %50, label %60, !dbg !1349

; <label>:50:                                     ; preds = %45
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1350, metadata !821), !dbg !1352
  %51 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1353
  %52 = load i8*, i8** %9, align 8, !dbg !1354
  %53 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %7, align 8, !dbg !1355
  %54 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %53, i32 0, i32 6, !dbg !1356
  %55 = load i8*, i8** %54, align 8, !dbg !1356
  %56 = call i8* @recode_out(%struct._SERVER_REC* %51, i8* %52, i8* %55), !dbg !1357
  store i8* %56, i8** %12, align 8, !dbg !1358
  %57 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %7, align 8, !dbg !1359
  %58 = load i8*, i8** %12, align 8, !dbg !1360
  call void @dcc_chat_send(%struct.CHAT_DCC_REC* %57, i8* %58), !dbg !1361
  %59 = load i8*, i8** %12, align 8, !dbg !1362
  call void @g_free(i8* %59), !dbg !1363
  br label %60, !dbg !1364

; <label>:60:                                     ; preds = %50, %45, %42
  %61 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %7, align 8, !dbg !1365
  %62 = icmp ne %struct.CHAT_DCC_REC* %61, null, !dbg !1367
  br i1 %62, label %68, label %63, !dbg !1368

; <label>:63:                                     ; preds = %60
  %64 = load i8*, i8** %10, align 8, !dbg !1369
  %65 = load i8, i8* %64, align 1, !dbg !1371
  %66 = sext i8 %65 to i32, !dbg !1371
  %67 = icmp eq i32 %66, 61, !dbg !1372
  br i1 %67, label %68, label %69, !dbg !1373

; <label>:68:                                     ; preds = %63, %60
  call void @signal_stop(), !dbg !1374
  br label %69, !dbg !1374

; <label>:69:                                     ; preds = %68, %63
  %70 = load i8*, i8** %11, align 8, !dbg !1375
  call void @cmd_params_free(i8* %70), !dbg !1376
  br label %71, !dbg !1377

; <label>:71:                                     ; preds = %69, %23, %17
  ret void, !dbg !1378
}

; Function Attrs: nounwind uwtable
define internal void @cmd_me(i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !1380 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca %struct.CHAT_DCC_REC*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1383, metadata !821), !dbg !1384
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1385, metadata !821), !dbg !1386
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !1387, metadata !821), !dbg !1388
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %7, metadata !1389, metadata !821), !dbg !1390
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1391, metadata !821), !dbg !1392
  br label %9, !dbg !1393, !llvm.loop !1394

; <label>:9:                                      ; preds = %3
  %10 = load i8*, i8** %4, align 8, !dbg !1395
  %11 = icmp ne i8* %10, null, !dbg !1399
  br i1 %11, label %12, label %13, !dbg !1395

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !1400

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @__func__.cmd_me, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0)), !dbg !1403
  br label %31, !dbg !1406

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !1407

; <label>:15:                                     ; preds = %14
  %16 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !1409
  %17 = call %struct.CHAT_DCC_REC* @item_get_dcc(%struct._WI_ITEM_REC* %16), !dbg !1410
  store %struct.CHAT_DCC_REC* %17, %struct.CHAT_DCC_REC** %7, align 8, !dbg !1411
  %18 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %7, align 8, !dbg !1412
  %19 = icmp eq %struct.CHAT_DCC_REC* %18, null, !dbg !1414
  br i1 %19, label %20, label %21, !dbg !1415

; <label>:20:                                     ; preds = %15
  br label %31, !dbg !1416

; <label>:21:                                     ; preds = %15
  %22 = load i8*, i8** %4, align 8, !dbg !1418
  %23 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i8* %22, i8* null), !dbg !1419
  store i8* %23, i8** %8, align 8, !dbg !1420
  %24 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1421
  %25 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %7, align 8, !dbg !1422
  %26 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %25, i32 0, i32 6, !dbg !1423
  %27 = load i8*, i8** %26, align 8, !dbg !1423
  %28 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %7, align 8, !dbg !1424
  %29 = load i8*, i8** %8, align 8, !dbg !1425
  call void @dcc_ctcp_message(%struct._IRC_SERVER_REC* %24, i8* %27, %struct.CHAT_DCC_REC* %28, i32 0, i8* %29), !dbg !1426
  %30 = load i8*, i8** %8, align 8, !dbg !1427
  call void @g_free(i8* %30), !dbg !1428
  call void @signal_stop(), !dbg !1429
  br label %31, !dbg !1430

; <label>:31:                                     ; preds = %21, %20, %13
  ret void, !dbg !1431
}

; Function Attrs: nounwind uwtable
define internal void @cmd_action(i8*, %struct._IRC_SERVER_REC*) #0 !dbg !1433 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca %struct.CHAT_DCC_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1436, metadata !821), !dbg !1437
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !1438, metadata !821), !dbg !1439
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %5, metadata !1440, metadata !821), !dbg !1441
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1442, metadata !821), !dbg !1443
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1444, metadata !821), !dbg !1445
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1446, metadata !821), !dbg !1447
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1448, metadata !821), !dbg !1449
  br label %10, !dbg !1450, !llvm.loop !1451

; <label>:10:                                     ; preds = %2
  %11 = load i8*, i8** %3, align 8, !dbg !1452
  %12 = icmp ne i8* %11, null, !dbg !1456
  br i1 %12, label %13, label %14, !dbg !1452

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !1457

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.cmd_action, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0)), !dbg !1460
  br label %62, !dbg !1463

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !1464

; <label>:16:                                     ; preds = %15
  %17 = load i8*, i8** %3, align 8, !dbg !1466
  %18 = load i8, i8* %17, align 1, !dbg !1468
  %19 = sext i8 %18 to i32, !dbg !1468
  %20 = icmp ne i32 %19, 61, !dbg !1469
  br i1 %20, label %21, label %22, !dbg !1470

; <label>:21:                                     ; preds = %16
  br label %62, !dbg !1471

; <label>:22:                                     ; preds = %16
  %23 = load i8*, i8** %3, align 8, !dbg !1473
  %24 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %23, i8** %9, i32 8194, i8** %6, i8** %7), !dbg !1475
  %25 = icmp ne i32 %24, 0, !dbg !1475
  br i1 %25, label %27, label %26, !dbg !1476

; <label>:26:                                     ; preds = %22
  br label %62, !dbg !1477

; <label>:27:                                     ; preds = %22
  %28 = load i8*, i8** %6, align 8, !dbg !1478
  %29 = load i8, i8* %28, align 1, !dbg !1480
  %30 = sext i8 %29 to i32, !dbg !1480
  %31 = icmp eq i32 %30, 0, !dbg !1481
  br i1 %31, label %37, label %32, !dbg !1482

; <label>:32:                                     ; preds = %27
  %33 = load i8*, i8** %7, align 8, !dbg !1483
  %34 = load i8, i8* %33, align 1, !dbg !1485
  %35 = sext i8 %34 to i32, !dbg !1485
  %36 = icmp eq i32 %35, 0, !dbg !1486
  br i1 %36, label %37, label %44, !dbg !1487

; <label>:37:                                     ; preds = %32, %27
  br label %38, !dbg !1488, !llvm.loop !1489

; <label>:38:                                     ; preds = %37
  %39 = load i8*, i8** %9, align 8, !dbg !1490
  call void @cmd_params_free(i8* %39), !dbg !1493
  br label %40, !dbg !1494, !llvm.loop !1495

; <label>:40:                                     ; preds = %38
  %41 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !1497
  call void @signal_stop(), !dbg !1500
  br label %62, !dbg !1502
                                                  ; No predecessors!
  br label %43, !dbg !1503

; <label>:43:                                     ; preds = %42
  br label %44, !dbg !1505

; <label>:44:                                     ; preds = %43, %32
  %45 = load i8*, i8** %6, align 8, !dbg !1507
  %46 = getelementptr inbounds i8, i8* %45, i64 1, !dbg !1508
  %47 = call %struct.CHAT_DCC_REC* @dcc_chat_find_id(i8* %46), !dbg !1509
  store %struct.CHAT_DCC_REC* %47, %struct.CHAT_DCC_REC** %5, align 8, !dbg !1510
  %48 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %5, align 8, !dbg !1511
  %49 = icmp ne %struct.CHAT_DCC_REC* %48, null, !dbg !1513
  br i1 %49, label %50, label %60, !dbg !1514

; <label>:50:                                     ; preds = %44
  %51 = load i8*, i8** %7, align 8, !dbg !1515
  %52 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i8* %51, i8* null), !dbg !1517
  store i8* %52, i8** %8, align 8, !dbg !1518
  %53 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1519
  %54 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %5, align 8, !dbg !1520
  %55 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %54, i32 0, i32 6, !dbg !1521
  %56 = load i8*, i8** %55, align 8, !dbg !1521
  %57 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %5, align 8, !dbg !1522
  %58 = load i8*, i8** %8, align 8, !dbg !1523
  call void @dcc_ctcp_message(%struct._IRC_SERVER_REC* %53, i8* %56, %struct.CHAT_DCC_REC* %57, i32 0, i8* %58), !dbg !1524
  %59 = load i8*, i8** %8, align 8, !dbg !1525
  call void @g_free(i8* %59), !dbg !1526
  br label %60, !dbg !1527

; <label>:60:                                     ; preds = %50, %44
  %61 = load i8*, i8** %9, align 8, !dbg !1528
  call void @cmd_params_free(i8* %61), !dbg !1529
  call void @signal_stop(), !dbg !1530
  br label %62, !dbg !1531

; <label>:62:                                     ; preds = %60, %40, %26, %21, %14
  ret void, !dbg !1532
}

; Function Attrs: nounwind uwtable
define internal void @cmd_ctcp(i8*, %struct._IRC_SERVER_REC*) #0 !dbg !1534 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca %struct.CHAT_DCC_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1535, metadata !821), !dbg !1536
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !1537, metadata !821), !dbg !1538
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %5, metadata !1539, metadata !821), !dbg !1540
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1541, metadata !821), !dbg !1542
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1543, metadata !821), !dbg !1544
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1545, metadata !821), !dbg !1546
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1547, metadata !821), !dbg !1548
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1549, metadata !821), !dbg !1550
  br label %11, !dbg !1551, !llvm.loop !1552

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %3, align 8, !dbg !1553
  %13 = icmp ne i8* %12, null, !dbg !1557
  br i1 %13, label %14, label %15, !dbg !1553

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !1558

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.cmd_ctcp, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0)), !dbg !1561
  br label %67, !dbg !1564

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !1565

; <label>:17:                                     ; preds = %16
  %18 = load i8*, i8** %3, align 8, !dbg !1567
  %19 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %18, i8** %10, i32 8195, i8** %6, i8** %7, i8** %8), !dbg !1569
  %20 = icmp ne i32 %19, 0, !dbg !1569
  br i1 %20, label %22, label %21, !dbg !1570

; <label>:21:                                     ; preds = %17
  br label %67, !dbg !1571

; <label>:22:                                     ; preds = %17
  %23 = load i8*, i8** %6, align 8, !dbg !1572
  %24 = load i8, i8* %23, align 1, !dbg !1574
  %25 = sext i8 %24 to i32, !dbg !1574
  %26 = icmp eq i32 %25, 0, !dbg !1575
  br i1 %26, label %32, label %27, !dbg !1576

; <label>:27:                                     ; preds = %22
  %28 = load i8*, i8** %7, align 8, !dbg !1577
  %29 = load i8, i8* %28, align 1, !dbg !1579
  %30 = sext i8 %29 to i32, !dbg !1579
  %31 = icmp eq i32 %30, 0, !dbg !1580
  br i1 %31, label %32, label %39, !dbg !1581

; <label>:32:                                     ; preds = %27, %22
  br label %33, !dbg !1582, !llvm.loop !1583

; <label>:33:                                     ; preds = %32
  %34 = load i8*, i8** %10, align 8, !dbg !1584
  call void @cmd_params_free(i8* %34), !dbg !1587
  br label %35, !dbg !1588, !llvm.loop !1589

; <label>:35:                                     ; preds = %33
  %36 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !1591
  call void @signal_stop(), !dbg !1594
  br label %67, !dbg !1596
                                                  ; No predecessors!
  br label %38, !dbg !1597

; <label>:38:                                     ; preds = %37
  br label %39, !dbg !1599

; <label>:39:                                     ; preds = %38, %27
  %40 = load i8*, i8** %6, align 8, !dbg !1601
  %41 = load i8, i8* %40, align 1, !dbg !1603
  %42 = sext i8 %41 to i32, !dbg !1603
  %43 = icmp ne i32 %42, 61, !dbg !1604
  br i1 %43, label %44, label %46, !dbg !1605

; <label>:44:                                     ; preds = %39
  %45 = load i8*, i8** %10, align 8, !dbg !1606
  call void @cmd_params_free(i8* %45), !dbg !1608
  br label %67, !dbg !1609

; <label>:46:                                     ; preds = %39
  %47 = load i8*, i8** %6, align 8, !dbg !1610
  %48 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !1611
  %49 = call %struct.CHAT_DCC_REC* @dcc_chat_find_id(i8* %48), !dbg !1612
  store %struct.CHAT_DCC_REC* %49, %struct.CHAT_DCC_REC** %5, align 8, !dbg !1613
  %50 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %5, align 8, !dbg !1614
  %51 = icmp ne %struct.CHAT_DCC_REC* %50, null, !dbg !1616
  br i1 %51, label %52, label %65, !dbg !1617

; <label>:52:                                     ; preds = %46
  %53 = load i8*, i8** %7, align 8, !dbg !1618
  %54 = call i8* @ascii_strup(i8* %53), !dbg !1620
  %55 = load i8*, i8** %7, align 8, !dbg !1621
  %56 = load i8*, i8** %8, align 8, !dbg !1622
  %57 = call noalias i8* (i8*, ...) @g_strconcat(i8* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i32 0, i32 0), i8* %56, i8* null), !dbg !1623
  store i8* %57, i8** %9, align 8, !dbg !1624
  %58 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1625
  %59 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %5, align 8, !dbg !1626
  %60 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %59, i32 0, i32 6, !dbg !1627
  %61 = load i8*, i8** %60, align 8, !dbg !1627
  %62 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %5, align 8, !dbg !1628
  %63 = load i8*, i8** %9, align 8, !dbg !1629
  call void @dcc_ctcp_message(%struct._IRC_SERVER_REC* %58, i8* %61, %struct.CHAT_DCC_REC* %62, i32 0, i8* %63), !dbg !1630
  %64 = load i8*, i8** %9, align 8, !dbg !1631
  call void @g_free(i8* %64), !dbg !1632
  br label %65, !dbg !1633

; <label>:65:                                     ; preds = %52, %46
  %66 = load i8*, i8** %10, align 8, !dbg !1634
  call void @cmd_params_free(i8* %66), !dbg !1635
  call void @signal_stop(), !dbg !1636
  br label %67, !dbg !1637

; <label>:67:                                     ; preds = %65, %44, %35, %21, %15
  ret void, !dbg !1638
}

; Function Attrs: nounwind uwtable
define internal void @cmd_dcc_chat(i8*, %struct._IRC_SERVER_REC*) #0 !dbg !1640 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.CHAT_DCC_REC*, align 8
  %7 = alloca %struct._IPADDR, align 4
  %8 = alloca %struct._GIOChannel*, align 8
  %9 = alloca %struct._GHashTable*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca [46 x i8], align 16
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1641, metadata !821), !dbg !1642
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !1643, metadata !821), !dbg !1644
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1645, metadata !821), !dbg !1646
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %6, metadata !1647, metadata !821), !dbg !1648
  call void @llvm.dbg.declare(metadata %struct._IPADDR* %7, metadata !1649, metadata !821), !dbg !1650
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %8, metadata !1651, metadata !821), !dbg !1652
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %9, metadata !1653, metadata !821), !dbg !1654
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1655, metadata !821), !dbg !1656
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1657, metadata !821), !dbg !1658
  call void @llvm.dbg.declare(metadata [46 x i8]* %12, metadata !1659, metadata !821), !dbg !1660
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1661, metadata !821), !dbg !1662
  br label %14, !dbg !1663, !llvm.loop !1664

; <label>:14:                                     ; preds = %2
  %15 = load i8*, i8** %3, align 8, !dbg !1665
  %16 = icmp ne i8* %15, null, !dbg !1669
  br i1 %16, label %17, label %18, !dbg !1665

; <label>:17:                                     ; preds = %14
  br label %19, !dbg !1670

; <label>:18:                                     ; preds = %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.cmd_dcc_chat, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0)), !dbg !1673
  br label %181, !dbg !1676

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !1677

; <label>:20:                                     ; preds = %19
  %21 = load i8*, i8** %3, align 8, !dbg !1679
  %22 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %21, i8** %5, i32 16385, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), %struct._GHashTable** %9, i8** %11), !dbg !1681
  %23 = icmp ne i32 %22, 0, !dbg !1681
  br i1 %23, label %25, label %24, !dbg !1682

; <label>:24:                                     ; preds = %20
  br label %181, !dbg !1683

; <label>:25:                                     ; preds = %20
  %26 = load i8*, i8** %11, align 8, !dbg !1684
  %27 = load i8, i8* %26, align 1, !dbg !1686
  %28 = sext i8 %27 to i32, !dbg !1686
  %29 = icmp eq i32 %28, 0, !dbg !1687
  br i1 %29, label %30, label %50, !dbg !1688

; <label>:30:                                     ; preds = %25
  %31 = call i32 @module_get_uniq_id_str(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)), !dbg !1689
  %32 = call %struct.DCC_REC* @dcc_find_request_latest(i32 %31), !dbg !1691
  %33 = bitcast %struct.DCC_REC* %32 to i8*, !dbg !1693
  %34 = call i8* @module_check_cast_module(i8* %33, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)), !dbg !1694
  %35 = bitcast i8* %34 to %struct.CHAT_DCC_REC*, !dbg !1696
  store %struct.CHAT_DCC_REC* %35, %struct.CHAT_DCC_REC** %6, align 8, !dbg !1697
  %36 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %6, align 8, !dbg !1698
  %37 = icmp ne %struct.CHAT_DCC_REC* %36, null, !dbg !1700
  br i1 %37, label %38, label %48, !dbg !1701

; <label>:38:                                     ; preds = %30
  %39 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %6, align 8, !dbg !1702
  %40 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %39, i32 0, i32 19, !dbg !1705
  %41 = load i32, i32* %40, align 8, !dbg !1705
  %42 = icmp sge i32 %41, 0, !dbg !1706
  br i1 %42, label %45, label %43, !dbg !1707

; <label>:43:                                     ; preds = %38
  %44 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %6, align 8, !dbg !1708
  call void @dcc_chat_connect(%struct.CHAT_DCC_REC* %44), !dbg !1709
  br label %47, !dbg !1709

; <label>:45:                                     ; preds = %38
  %46 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %6, align 8, !dbg !1710
  call void @dcc_chat_passive(%struct.CHAT_DCC_REC* %46), !dbg !1711
  br label %47

; <label>:47:                                     ; preds = %45, %43
  br label %48, !dbg !1712

; <label>:48:                                     ; preds = %47, %30
  %49 = load i8*, i8** %5, align 8, !dbg !1713
  call void @cmd_params_free(i8* %49), !dbg !1714
  br label %181, !dbg !1715

; <label>:50:                                     ; preds = %25
  %51 = load i8*, i8** %11, align 8, !dbg !1716
  %52 = call %struct.CHAT_DCC_REC* @dcc_chat_find_id(i8* %51), !dbg !1717
  store %struct.CHAT_DCC_REC* %52, %struct.CHAT_DCC_REC** %6, align 8, !dbg !1718
  %53 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %6, align 8, !dbg !1719
  %54 = icmp ne %struct.CHAT_DCC_REC* %53, null, !dbg !1721
  br i1 %54, label %55, label %71, !dbg !1722

; <label>:55:                                     ; preds = %50
  %56 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %6, align 8, !dbg !1723
  %57 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %56, i32 0, i32 13, !dbg !1725
  %58 = load %struct._GIOChannel*, %struct._GIOChannel** %57, align 8, !dbg !1725
  %59 = icmp eq %struct._GIOChannel* %58, null, !dbg !1726
  br i1 %59, label %60, label %71, !dbg !1727

; <label>:60:                                     ; preds = %55
  %61 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %6, align 8, !dbg !1728
  %62 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %61, i32 0, i32 19, !dbg !1731
  %63 = load i32, i32* %62, align 8, !dbg !1731
  %64 = icmp sge i32 %63, 0, !dbg !1732
  br i1 %64, label %67, label %65, !dbg !1733

; <label>:65:                                     ; preds = %60
  %66 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %6, align 8, !dbg !1734
  call void @dcc_chat_connect(%struct.CHAT_DCC_REC* %66), !dbg !1736
  br label %69, !dbg !1737

; <label>:67:                                     ; preds = %60
  %68 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %6, align 8, !dbg !1738
  call void @dcc_chat_passive(%struct.CHAT_DCC_REC* %68), !dbg !1740
  br label %69

; <label>:69:                                     ; preds = %67, %65
  %70 = load i8*, i8** %5, align 8, !dbg !1741
  call void @cmd_params_free(i8* %70), !dbg !1742
  br label %181, !dbg !1743

; <label>:71:                                     ; preds = %55, %50
  %72 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %6, align 8, !dbg !1744
  %73 = icmp ne %struct.CHAT_DCC_REC* %72, null, !dbg !1746
  br i1 %73, label %74, label %93, !dbg !1747

; <label>:74:                                     ; preds = %71
  %75 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %6, align 8, !dbg !1748
  %76 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %75, i32 0, i32 13, !dbg !1750
  %77 = load %struct._GIOChannel*, %struct._GIOChannel** %76, align 8, !dbg !1750
  %78 = icmp ne %struct._GIOChannel* %77, null, !dbg !1751
  br i1 %78, label %79, label %93, !dbg !1752

; <label>:79:                                     ; preds = %74
  %80 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %6, align 8, !dbg !1753
  %81 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %80, i32 0, i32 17, !dbg !1755
  %82 = load i64, i64* %81, align 8, !dbg !1755
  %83 = icmp eq i64 %82, 0, !dbg !1756
  br i1 %83, label %84, label %93, !dbg !1757

; <label>:84:                                     ; preds = %79
  %85 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %6, align 8, !dbg !1758
  %86 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %85, i32 0, i32 3, !dbg !1759
  %87 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %86, align 8, !dbg !1759
  %88 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1760
  %89 = icmp eq %struct._IRC_SERVER_REC* %87, %88, !dbg !1761
  br i1 %89, label %90, label %93, !dbg !1762

; <label>:90:                                     ; preds = %84
  %91 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %6, align 8, !dbg !1764
  %92 = bitcast %struct.CHAT_DCC_REC* %91 to %struct.DCC_REC*, !dbg !1766
  call void @dcc_destroy(%struct.DCC_REC* %92), !dbg !1767
  br label %93, !dbg !1768

; <label>:93:                                     ; preds = %90, %84, %79, %74, %71
  %94 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1769
  %95 = bitcast %struct._IRC_SERVER_REC* %94 to i8*, !dbg !1769
  %96 = call i8* @module_check_cast(i8* %95, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0)), !dbg !1771
  %97 = bitcast i8* %96 to %struct._SERVER_REC*, !dbg !1772
  %98 = bitcast %struct._SERVER_REC* %97 to i8*, !dbg !1773
  %99 = call i8* @chat_protocol_check_cast(i8* %98, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0)), !dbg !1774
  %100 = bitcast i8* %99 to %struct._IRC_SERVER_REC*, !dbg !1776
  %101 = icmp ne %struct._IRC_SERVER_REC* %100, null, !dbg !1776
  br i1 %101, label %102, label %103, !dbg !1777

; <label>:102:                                    ; preds = %93
  br i1 false, label %111, label %104, !dbg !1778

; <label>:103:                                    ; preds = %93
  br i1 false, label %104, label %111, !dbg !1780

; <label>:104:                                    ; preds = %103, %102
  %105 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1782
  %106 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %105, i32 0, i32 8, !dbg !1784
  %107 = load i8, i8* %106, align 8, !dbg !1784
  %108 = and i8 %107, 1, !dbg !1784
  %109 = zext i8 %108 to i32, !dbg !1784
  %110 = icmp ne i32 %109, 0, !dbg !1782
  br i1 %110, label %118, label %111, !dbg !1785

; <label>:111:                                    ; preds = %104, %103, %102
  br label %112, !dbg !1786, !llvm.loop !1787

; <label>:112:                                    ; preds = %111
  %113 = load i8*, i8** %5, align 8, !dbg !1788
  call void @cmd_params_free(i8* %113), !dbg !1791
  br label %114, !dbg !1792, !llvm.loop !1793

; <label>:114:                                    ; preds = %112
  %115 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !1795
  call void @signal_stop(), !dbg !1798
  br label %181, !dbg !1800
                                                  ; No predecessors!
  br label %117, !dbg !1801

; <label>:117:                                    ; preds = %116
  br label %118, !dbg !1803

; <label>:118:                                    ; preds = %117, %104
  %119 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1805
  %120 = load i8*, i8** %11, align 8, !dbg !1806
  %121 = call %struct.CHAT_DCC_REC* @dcc_chat_create(%struct._IRC_SERVER_REC* %119, %struct.CHAT_DCC_REC* null, i8* %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0)), !dbg !1807
  store %struct.CHAT_DCC_REC* %121, %struct.CHAT_DCC_REC** %6, align 8, !dbg !1808
  %122 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %6, align 8, !dbg !1809
  %123 = icmp eq %struct.CHAT_DCC_REC* %122, null, !dbg !1811
  br i1 %123, label %124, label %128, !dbg !1812

; <label>:124:                                    ; preds = %118
  %125 = load i8*, i8** %5, align 8, !dbg !1813
  call void @cmd_params_free(i8* %125), !dbg !1815
  br label %126, !dbg !1816, !llvm.loop !1817

; <label>:126:                                    ; preds = %124
  call void @g_warn_message(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), i32 498, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.cmd_dcc_chat, i32 0, i32 0), i8* null), !dbg !1818
  br label %127, !dbg !1821

; <label>:127:                                    ; preds = %126
  br label %181, !dbg !1822

; <label>:128:                                    ; preds = %118
  %129 = load %struct._GHashTable*, %struct._GHashTable** %9, align 8, !dbg !1823
  %130 = call i8* @g_hash_table_lookup(%struct._GHashTable* %129, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0)), !dbg !1825
  %131 = icmp eq i8* %130, null, !dbg !1826
  br i1 %131, label %132, label %166, !dbg !1827

; <label>:132:                                    ; preds = %128
  %133 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1828
  %134 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %133, i32 0, i32 9, !dbg !1830
  %135 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %134, align 8, !dbg !1830
  %136 = call %struct._GIOChannel* @net_sendbuffer_handle(%struct._NET_SENDBUF_REC* %135), !dbg !1831
  %137 = call %struct._GIOChannel* @dcc_listen(%struct._GIOChannel* %136, %struct._IPADDR* %7, i32* %13), !dbg !1832
  store %struct._GIOChannel* %137, %struct._GIOChannel** %8, align 8, !dbg !1834
  %138 = load %struct._GIOChannel*, %struct._GIOChannel** %8, align 8, !dbg !1835
  %139 = icmp eq %struct._GIOChannel* %138, null, !dbg !1837
  br i1 %139, label %140, label %147, !dbg !1838

; <label>:140:                                    ; preds = %132
  br label %141, !dbg !1839, !llvm.loop !1840

; <label>:141:                                    ; preds = %140
  %142 = load i8*, i8** %5, align 8, !dbg !1841
  call void @cmd_params_free(i8* %142), !dbg !1844
  br label %143, !dbg !1845, !llvm.loop !1846

; <label>:143:                                    ; preds = %141
  %144 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), i32 1, i8* inttoptr (i64 2 to i8*)), !dbg !1848
  call void @signal_stop(), !dbg !1851
  br label %181, !dbg !1853
                                                  ; No predecessors!
  br label %146, !dbg !1854

; <label>:146:                                    ; preds = %145
  br label %147, !dbg !1856

; <label>:147:                                    ; preds = %146, %132
  %148 = load %struct._GIOChannel*, %struct._GIOChannel** %8, align 8, !dbg !1858
  %149 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %6, align 8, !dbg !1859
  %150 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %149, i32 0, i32 13, !dbg !1860
  store %struct._GIOChannel* %148, %struct._GIOChannel** %150, align 8, !dbg !1861
  %151 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %6, align 8, !dbg !1862
  %152 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %151, i32 0, i32 13, !dbg !1863
  %153 = load %struct._GIOChannel*, %struct._GIOChannel** %152, align 8, !dbg !1863
  %154 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %6, align 8, !dbg !1864
  %155 = bitcast %struct.CHAT_DCC_REC* %154 to i8*, !dbg !1864
  %156 = call i32 @g_input_add(%struct._GIOChannel* %153, i32 1, void (i8*, %struct._GIOChannel*, i32)* bitcast (void (%struct.CHAT_DCC_REC*)* @dcc_chat_listen to void (i8*, %struct._GIOChannel*, i32)*), i8* %155), !dbg !1865
  %157 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %6, align 8, !dbg !1866
  %158 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %157, i32 0, i32 14, !dbg !1867
  store i32 %156, i32* %158, align 8, !dbg !1868
  %159 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %6, align 8, !dbg !1869
  %160 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i32 0, i32 0), i32 1, %struct.CHAT_DCC_REC* %159), !dbg !1870
  %161 = getelementptr inbounds [46 x i8], [46 x i8]* %12, i32 0, i32 0, !dbg !1871
  call void @dcc_ip2str(%struct._IPADDR* %7, i8* %161), !dbg !1872
  %162 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1873
  %163 = load i8*, i8** %11, align 8, !dbg !1874
  %164 = getelementptr inbounds [46 x i8], [46 x i8]* %12, i32 0, i32 0, !dbg !1875
  %165 = load i32, i32* %13, align 4, !dbg !1876
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %162, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.47, i32 0, i32 0), i8* %163, i8* %164, i32 %165), !dbg !1877
  br label %179, !dbg !1878

; <label>:166:                                    ; preds = %128
  %167 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %6, align 8, !dbg !1879
  %168 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %167, i32 0, i32 12, !dbg !1881
  store i32 0, i32* %168, align 4, !dbg !1882
  %169 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %6, align 8, !dbg !1883
  %170 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i32 0, i32 0), i32 1, %struct.CHAT_DCC_REC* %169), !dbg !1884
  %171 = call i32 @rand() #7, !dbg !1885
  %172 = srem i32 %171, 64, !dbg !1886
  store i32 %172, i32* %10, align 4, !dbg !1887
  %173 = load i32, i32* %10, align 4, !dbg !1888
  %174 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %6, align 8, !dbg !1889
  %175 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %174, i32 0, i32 19, !dbg !1890
  store i32 %173, i32* %175, align 8, !dbg !1891
  %176 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1892
  %177 = load i8*, i8** %11, align 8, !dbg !1893
  %178 = load i32, i32* %10, align 4, !dbg !1894
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %176, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.48, i32 0, i32 0), i8* %177, i32 %178), !dbg !1895
  br label %179

; <label>:179:                                    ; preds = %166, %147
  %180 = load i8*, i8** %5, align 8, !dbg !1896
  call void @cmd_params_free(i8* %180), !dbg !1897
  br label %181, !dbg !1898

; <label>:181:                                    ; preds = %179, %143, %127, %114, %69, %48, %24, %18
  ret void, !dbg !1899
}

declare void @command_set_options_module(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @cmd_mircdcc(i8*, %struct._SERVER_REC*, %struct._QUERY_REC*) #0 !dbg !1901 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca %struct._QUERY_REC*, align 8
  %7 = alloca %struct.CHAT_DCC_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1904, metadata !821), !dbg !1905
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !1906, metadata !821), !dbg !1907
  store %struct._QUERY_REC* %2, %struct._QUERY_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %6, metadata !1908, metadata !821), !dbg !1909
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %7, metadata !1910, metadata !821), !dbg !1911
  br label %8, !dbg !1912, !llvm.loop !1913

; <label>:8:                                      ; preds = %3
  %9 = load i8*, i8** %4, align 8, !dbg !1914
  %10 = icmp ne i8* %9, null, !dbg !1918
  br i1 %10, label %11, label %12, !dbg !1914

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !1919

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.cmd_mircdcc, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0)), !dbg !1922
  br label %42, !dbg !1925

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !1926

; <label>:14:                                     ; preds = %13
  %15 = load %struct._QUERY_REC*, %struct._QUERY_REC** %6, align 8, !dbg !1928
  %16 = bitcast %struct._QUERY_REC* %15 to %struct._WI_ITEM_REC*, !dbg !1929
  %17 = call %struct.CHAT_DCC_REC* @item_get_dcc(%struct._WI_ITEM_REC* %16), !dbg !1930
  store %struct.CHAT_DCC_REC* %17, %struct.CHAT_DCC_REC** %7, align 8, !dbg !1931
  %18 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %7, align 8, !dbg !1932
  %19 = icmp eq %struct.CHAT_DCC_REC* %18, null, !dbg !1934
  br i1 %19, label %20, label %21, !dbg !1935

; <label>:20:                                     ; preds = %14
  br label %42, !dbg !1936

; <label>:21:                                     ; preds = %14
  %22 = load i8*, i8** %4, align 8, !dbg !1938
  %23 = load i8, i8* %22, align 1, !dbg !1939
  %24 = zext i8 %23 to i32, !dbg !1940
  %25 = call i32 @toupper(i32 %24) #6, !dbg !1941
  %26 = icmp ne i32 %25, 78, !dbg !1942
  br i1 %26, label %27, label %31, !dbg !1943

; <label>:27:                                     ; preds = %21
  %28 = load i8*, i8** %4, align 8, !dbg !1944
  %29 = call i32 @g_ascii_strncasecmp(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0), i64 2), !dbg !1945
  %30 = icmp ne i32 %29, 0, !dbg !1946
  br label %31

; <label>:31:                                     ; preds = %27, %21
  %32 = phi i1 [ false, %21 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32, !dbg !1947
  %34 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %7, align 8, !dbg !1949
  %35 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %34, i32 0, i32 24, !dbg !1950
  %36 = trunc i32 %33 to i8, !dbg !1951
  %37 = load i8, i8* %35, align 8, !dbg !1951
  %38 = and i8 %36, 1, !dbg !1951
  %39 = and i8 %37, -2, !dbg !1951
  %40 = or i8 %39, %38, !dbg !1951
  store i8 %40, i8* %35, align 8, !dbg !1951
  %41 = zext i8 %38 to i32, !dbg !1951
  br label %42, !dbg !1952

; <label>:42:                                     ; preds = %31, %20, %12
  ret void, !dbg !1953
}

; Function Attrs: nounwind uwtable
define internal void @cmd_dcc_close(i8*, %struct._SERVER_REC*) #0 !dbg !1954 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.CHAT_DCC_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1957, metadata !821), !dbg !1958
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1959, metadata !821), !dbg !1960
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !1961, metadata !821), !dbg !1962
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !1963, metadata !821), !dbg !1964
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1965, metadata !821), !dbg !1966
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1967, metadata !821), !dbg !1968
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1969, metadata !821), !dbg !1970
  br label %11, !dbg !1971, !llvm.loop !1972

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %3, align 8, !dbg !1973
  %13 = icmp ne i8* %12, null, !dbg !1977
  br i1 %13, label %14, label %15, !dbg !1973

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !1978

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.cmd_dcc_close, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0)), !dbg !1981
  br label %109, !dbg !1984

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !1985

; <label>:17:                                     ; preds = %16
  %18 = load i8*, i8** %3, align 8, !dbg !1987
  %19 = call i32 @g_ascii_strncasecmp(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.53, i32 0, i32 0), i64 5), !dbg !1989
  %20 = icmp ne i32 %19, 0, !dbg !1990
  br i1 %20, label %25, label %21, !dbg !1991

; <label>:21:                                     ; preds = %17
  %22 = load i8*, i8** %3, align 8, !dbg !1992
  %23 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %22, i8** %8, i32 2, i8* null, i8** %7), !dbg !1993
  %24 = icmp ne i32 %23, 0, !dbg !1993
  br i1 %24, label %26, label %25, !dbg !1994

; <label>:25:                                     ; preds = %21, %17
  br label %109, !dbg !1996

; <label>:26:                                     ; preds = %21
  %27 = load i8*, i8** %7, align 8, !dbg !1997
  %28 = load i8, i8* %27, align 1, !dbg !1999
  %29 = sext i8 %28 to i32, !dbg !1999
  %30 = icmp eq i32 %29, 0, !dbg !2000
  br i1 %30, label %31, label %38, !dbg !2001

; <label>:31:                                     ; preds = %26
  br label %32, !dbg !2002, !llvm.loop !2004

; <label>:32:                                     ; preds = %31
  %33 = load i8*, i8** %8, align 8, !dbg !2006
  call void @cmd_params_free(i8* %33), !dbg !2009
  br label %34, !dbg !2010, !llvm.loop !2011

; <label>:34:                                     ; preds = %32
  %35 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !2013
  call void @signal_stop(), !dbg !2016
  br label %109, !dbg !2018
                                                  ; No predecessors!
  br label %37, !dbg !2019

; <label>:37:                                     ; preds = %36
  br label %38, !dbg !2021

; <label>:38:                                     ; preds = %37, %26
  store i32 0, i32* %9, align 4, !dbg !2023
  %39 = load %struct._GSList*, %struct._GSList** @dcc_conns, align 8, !dbg !2024
  store %struct._GSList* %39, %struct._GSList** %5, align 8, !dbg !2026
  br label %40, !dbg !2027

; <label>:40:                                     ; preds = %101, %38
  %41 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2028
  %42 = icmp ne %struct._GSList* %41, null, !dbg !2031
  br i1 %42, label %43, label %103, !dbg !2032

; <label>:43:                                     ; preds = %40
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %10, metadata !2033, metadata !821), !dbg !2035
  %44 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2036
  %45 = getelementptr inbounds %struct._GSList, %struct._GSList* %44, i32 0, i32 0, !dbg !2037
  %46 = load i8*, i8** %45, align 8, !dbg !2037
  %47 = bitcast i8* %46 to %struct.CHAT_DCC_REC*, !dbg !2036
  store %struct.CHAT_DCC_REC* %47, %struct.CHAT_DCC_REC** %10, align 8, !dbg !2035
  %48 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !2038
  %49 = getelementptr inbounds %struct._GSList, %struct._GSList* %48, i32 0, i32 1, !dbg !2039
  %50 = load %struct._GSList*, %struct._GSList** %49, align 8, !dbg !2039
  store %struct._GSList* %50, %struct._GSList** %6, align 8, !dbg !2040
  %51 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %10, align 8, !dbg !2041
  %52 = bitcast %struct.CHAT_DCC_REC* %51 to i8*, !dbg !2041
  %53 = call i8* @module_check_cast_module(i8* %52, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)), !dbg !2043
  %54 = bitcast i8* %53 to %struct.CHAT_DCC_REC*, !dbg !2044
  %55 = icmp ne %struct.CHAT_DCC_REC* %54, null, !dbg !2044
  br i1 %55, label %56, label %57, !dbg !2045

; <label>:56:                                     ; preds = %43
  br i1 false, label %100, label %58, !dbg !2046

; <label>:57:                                     ; preds = %43
  br i1 false, label %58, label %100, !dbg !2048

; <label>:58:                                     ; preds = %57, %56
  %59 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %10, align 8, !dbg !2050
  %60 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %59, i32 0, i32 22, !dbg !2052
  %61 = load i8*, i8** %60, align 8, !dbg !2052
  %62 = icmp ne i8* %61, null, !dbg !2053
  br i1 %62, label %63, label %100, !dbg !2054

; <label>:63:                                     ; preds = %58
  %64 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %10, align 8, !dbg !2055
  %65 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %64, i32 0, i32 22, !dbg !2056
  %66 = load i8*, i8** %65, align 8, !dbg !2056
  %67 = load i8*, i8** %7, align 8, !dbg !2057
  %68 = call i32 @g_ascii_strcasecmp(i8* %66, i8* %67), !dbg !2058
  %69 = icmp eq i32 %68, 0, !dbg !2059
  br i1 %69, label %70, label %100, !dbg !2060

; <label>:70:                                     ; preds = %63
  store i32 1, i32* %9, align 4, !dbg !2062
  %71 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %10, align 8, !dbg !2064
  %72 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %71, i32 0, i32 17, !dbg !2066
  %73 = load i64, i64* %72, align 8, !dbg !2066
  %74 = icmp ne i64 %73, 0, !dbg !2067
  br i1 %74, label %96, label %75, !dbg !2068

; <label>:75:                                     ; preds = %70
  %76 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !2069
  %77 = bitcast %struct._SERVER_REC* %76 to i8*, !dbg !2069
  %78 = call i8* @module_check_cast(i8* %77, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0)), !dbg !2071
  %79 = bitcast i8* %78 to %struct._SERVER_REC*, !dbg !2072
  %80 = bitcast %struct._SERVER_REC* %79 to i8*, !dbg !2073
  %81 = call i8* @chat_protocol_check_cast(i8* %80, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0)), !dbg !2074
  %82 = bitcast i8* %81 to %struct._IRC_SERVER_REC*, !dbg !2076
  %83 = icmp ne %struct._IRC_SERVER_REC* %82, null, !dbg !2076
  br i1 %83, label %84, label %85, !dbg !2077

; <label>:84:                                     ; preds = %75
  br i1 false, label %96, label %86, !dbg !2078

; <label>:85:                                     ; preds = %75
  br i1 false, label %86, label %96, !dbg !2080

; <label>:86:                                     ; preds = %85, %84
  %87 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %10, align 8, !dbg !2082
  %88 = bitcast %struct.CHAT_DCC_REC* %87 to %struct.DCC_REC*, !dbg !2083
  %89 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !2084
  %90 = bitcast %struct._SERVER_REC* %89 to i8*, !dbg !2084
  %91 = call i8* @module_check_cast(i8* %90, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0)), !dbg !2085
  %92 = bitcast i8* %91 to %struct._SERVER_REC*, !dbg !2086
  %93 = bitcast %struct._SERVER_REC* %92 to i8*, !dbg !2087
  %94 = call i8* @chat_protocol_check_cast(i8* %93, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0)), !dbg !2088
  %95 = bitcast i8* %94 to %struct._IRC_SERVER_REC*, !dbg !2089
  call void @dcc_reject(%struct.DCC_REC* %88, %struct._IRC_SERVER_REC* %95), !dbg !2090
  br label %99, !dbg !2091

; <label>:96:                                     ; preds = %85, %84, %70
  %97 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %10, align 8, !dbg !2092
  %98 = bitcast %struct.CHAT_DCC_REC* %97 to %struct.DCC_REC*, !dbg !2094
  call void @dcc_close(%struct.DCC_REC* %98), !dbg !2095
  br label %99

; <label>:99:                                     ; preds = %96, %86
  br label %100, !dbg !2096

; <label>:100:                                    ; preds = %99, %63, %58, %57, %56
  br label %101, !dbg !2097

; <label>:101:                                    ; preds = %100
  %102 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !2098
  store %struct._GSList* %102, %struct._GSList** %5, align 8, !dbg !2100
  br label %40, !dbg !2101, !llvm.loop !2102

; <label>:103:                                    ; preds = %40
  %104 = load i32, i32* %9, align 4, !dbg !2104
  %105 = icmp ne i32 %104, 0, !dbg !2104
  br i1 %105, label %106, label %107, !dbg !2106

; <label>:106:                                    ; preds = %103
  call void @signal_stop(), !dbg !2107
  br label %107, !dbg !2107

; <label>:107:                                    ; preds = %106, %103
  %108 = load i8*, i8** %8, align 8, !dbg !2109
  call void @cmd_params_free(i8* %108), !dbg !2110
  br label %109, !dbg !2111

; <label>:109:                                    ; preds = %107, %34, %25, %15
  ret void, !dbg !2112
}

; Function Attrs: nounwind uwtable
define internal void @cmd_whois(i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !2113 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca %struct.CHAT_DCC_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2114, metadata !821), !dbg !2115
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !2116, metadata !821), !dbg !2117
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !2118, metadata !821), !dbg !2119
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %7, metadata !2120, metadata !821), !dbg !2121
  br label %8, !dbg !2122, !llvm.loop !2123

; <label>:8:                                      ; preds = %3
  %9 = load i8*, i8** %4, align 8, !dbg !2124
  %10 = icmp ne i8* %9, null, !dbg !2128
  br i1 %10, label %11, label %12, !dbg !2124

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !2129

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.cmd_whois, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0)), !dbg !2132
  br label %32, !dbg !2135

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !2136

; <label>:14:                                     ; preds = %13
  %15 = load i8*, i8** %4, align 8, !dbg !2138
  %16 = load i8, i8* %15, align 1, !dbg !2140
  %17 = sext i8 %16 to i32, !dbg !2140
  %18 = icmp eq i32 %17, 0, !dbg !2141
  br i1 %18, label %19, label %32, !dbg !2142

; <label>:19:                                     ; preds = %14
  %20 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !2143
  %21 = call %struct.CHAT_DCC_REC* @item_get_dcc(%struct._WI_ITEM_REC* %20), !dbg !2145
  store %struct.CHAT_DCC_REC* %21, %struct.CHAT_DCC_REC** %7, align 8, !dbg !2146
  %22 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %7, align 8, !dbg !2147
  %23 = icmp ne %struct.CHAT_DCC_REC* %22, null, !dbg !2149
  br i1 %23, label %24, label %31, !dbg !2150

; <label>:24:                                     ; preds = %19
  %25 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %7, align 8, !dbg !2151
  %26 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %25, i32 0, i32 6, !dbg !2153
  %27 = load i8*, i8** %26, align 8, !dbg !2153
  %28 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !2154
  %29 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !2155
  %30 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0), i32 3, i8* %27, %struct._SERVER_REC* %28, %struct._WI_ITEM_REC* %29), !dbg !2156
  call void @signal_stop(), !dbg !2157
  br label %31, !dbg !2158

; <label>:31:                                     ; preds = %24, %19
  br label %32, !dbg !2159

; <label>:32:                                     ; preds = %12, %31, %14
  ret void, !dbg !2160
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_dcc_destroyed(%struct.CHAT_DCC_REC*) #0 !dbg !2161 {
  %2 = alloca %struct.CHAT_DCC_REC*, align 8
  store %struct.CHAT_DCC_REC* %0, %struct.CHAT_DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %2, metadata !2162, metadata !821), !dbg !2163
  %3 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !2164
  %4 = bitcast %struct.CHAT_DCC_REC* %3 to i8*, !dbg !2164
  %5 = call i8* @module_check_cast_module(i8* %4, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)), !dbg !2166
  %6 = bitcast i8* %5 to %struct.CHAT_DCC_REC*, !dbg !2167
  %7 = icmp ne %struct.CHAT_DCC_REC* %6, null, !dbg !2167
  br i1 %7, label %8, label %9, !dbg !2168

; <label>:8:                                      ; preds = %1
  br i1 false, label %10, label %11, !dbg !2169

; <label>:9:                                      ; preds = %1
  br i1 false, label %11, label %10, !dbg !2171

; <label>:10:                                     ; preds = %9, %8
  br label %25, !dbg !2173

; <label>:11:                                     ; preds = %9, %8
  %12 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !2175
  call void @dcc_remove_chat_refs(%struct.CHAT_DCC_REC* %12), !dbg !2176
  %13 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !2177
  %14 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %13, i32 0, i32 23, !dbg !2179
  %15 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %14, align 8, !dbg !2179
  %16 = icmp ne %struct._NET_SENDBUF_REC* %15, null, !dbg !2180
  br i1 %16, label %17, label %21, !dbg !2181

; <label>:17:                                     ; preds = %11
  %18 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !2182
  %19 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %18, i32 0, i32 23, !dbg !2184
  %20 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %19, align 8, !dbg !2184
  call void @net_sendbuffer_destroy(%struct._NET_SENDBUF_REC* %20, i32 0), !dbg !2185
  br label %21, !dbg !2185

; <label>:21:                                     ; preds = %17, %11
  %22 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !2186
  %23 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %22, i32 0, i32 22, !dbg !2187
  %24 = load i8*, i8** %23, align 8, !dbg !2187
  call void @g_free(i8* %24), !dbg !2188
  br label %25, !dbg !2189

; <label>:25:                                     ; preds = %21, %10
  ret void, !dbg !2190
}

; Function Attrs: nounwind uwtable
define internal void @ctcp_msg_dcc_chat(%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*, %struct.CHAT_DCC_REC*) #0 !dbg !2192 {
  %7 = alloca %struct._IRC_SERVER_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.CHAT_DCC_REC*, align 8
  %13 = alloca %struct.CHAT_DCC_REC*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %7, metadata !2195, metadata !821), !dbg !2196
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2197, metadata !821), !dbg !2198
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2199, metadata !821), !dbg !2200
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2201, metadata !821), !dbg !2202
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2203, metadata !821), !dbg !2204
  store %struct.CHAT_DCC_REC* %5, %struct.CHAT_DCC_REC** %12, align 8
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %12, metadata !2205, metadata !821), !dbg !2206
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %13, metadata !2207, metadata !821), !dbg !2208
  call void @llvm.dbg.declare(metadata i8*** %14, metadata !2209, metadata !821), !dbg !2210
  call void @llvm.dbg.declare(metadata i32* %15, metadata !2211, metadata !821), !dbg !2212
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2213, metadata !821), !dbg !2214
  call void @llvm.dbg.declare(metadata i32* %17, metadata !2215, metadata !821), !dbg !2216
  store i32 0, i32* %17, align 4, !dbg !2216
  %18 = load i8*, i8** %8, align 8, !dbg !2217
  %19 = call noalias i8** @g_strsplit(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i32 0, i32 0), i32 -1), !dbg !2218
  store i8** %19, i8*** %14, align 8, !dbg !2219
  %20 = load i8**, i8*** %14, align 8, !dbg !2220
  %21 = call i32 @g_strv_length(i8** %20), !dbg !2221
  store i32 %21, i32* %15, align 4, !dbg !2222
  %22 = load i32, i32* %15, align 4, !dbg !2223
  %23 = icmp slt i32 %22, 3, !dbg !2225
  br i1 %23, label %24, label %26, !dbg !2226

; <label>:24:                                     ; preds = %6
  %25 = load i8**, i8*** %14, align 8, !dbg !2227
  call void @g_strfreev(i8** %25), !dbg !2229
  br label %193, !dbg !2230

; <label>:26:                                     ; preds = %6
  %27 = load i32, i32* %15, align 4, !dbg !2231
  %28 = icmp eq i32 %27, 4, !dbg !2232
  br i1 %28, label %29, label %35, !dbg !2233

; <label>:29:                                     ; preds = %26
  %30 = load i8**, i8*** %14, align 8, !dbg !2234
  %31 = getelementptr inbounds i8*, i8** %30, i64 2, !dbg !2234
  %32 = load i8*, i8** %31, align 8, !dbg !2234
  %33 = call i32 @g_strcmp0(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0)), !dbg !2236
  %34 = icmp eq i32 %33, 0, !dbg !2237
  br label %35

; <label>:35:                                     ; preds = %29, %26
  %36 = phi i1 [ false, %26 ], [ %34, %29 ]
  %37 = zext i1 %36 to i32, !dbg !2238
  store i32 %37, i32* %16, align 4, !dbg !2240
  %38 = load i8*, i8** %9, align 8, !dbg !2241
  %39 = icmp eq i8* %38, null, !dbg !2243
  br i1 %39, label %40, label %41, !dbg !2244

; <label>:40:                                     ; preds = %35
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i32 0, i32 0), i8** %9, align 8, !dbg !2245
  br label %41, !dbg !2246

; <label>:41:                                     ; preds = %40, %35
  %42 = call i32 @module_get_uniq_id_str(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)), !dbg !2247
  %43 = load i8*, i8** %9, align 8, !dbg !2248
  %44 = call %struct.DCC_REC* @dcc_find_request(i32 %42, i8* %43, i8* null), !dbg !2249
  %45 = bitcast %struct.DCC_REC* %44 to i8*, !dbg !2250
  %46 = call i8* @module_check_cast_module(i8* %45, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)), !dbg !2251
  %47 = bitcast i8* %46 to %struct.CHAT_DCC_REC*, !dbg !2252
  store %struct.CHAT_DCC_REC* %47, %struct.CHAT_DCC_REC** %13, align 8, !dbg !2253
  %48 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %13, align 8, !dbg !2254
  %49 = icmp ne %struct.CHAT_DCC_REC* %48, null, !dbg !2256
  br i1 %49, label %50, label %114, !dbg !2257

; <label>:50:                                     ; preds = %41
  %51 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %13, align 8, !dbg !2258
  %52 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %51, i32 0, i32 13, !dbg !2261
  %53 = load %struct._GIOChannel*, %struct._GIOChannel** %52, align 8, !dbg !2261
  %54 = icmp ne %struct._GIOChannel* %53, null, !dbg !2262
  br i1 %54, label %55, label %63, !dbg !2263

; <label>:55:                                     ; preds = %50
  %56 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %13, align 8, !dbg !2264
  %57 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %56, i32 0, i32 17, !dbg !2266
  %58 = load i64, i64* %57, align 8, !dbg !2266
  %59 = icmp eq i64 %58, 0, !dbg !2267
  br i1 %59, label %60, label %63, !dbg !2268

; <label>:60:                                     ; preds = %55
  %61 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %13, align 8, !dbg !2269
  %62 = bitcast %struct.CHAT_DCC_REC* %61 to %struct.DCC_REC*, !dbg !2271
  call void @dcc_destroy(%struct.DCC_REC* %62), !dbg !2272
  store i32 1, i32* %17, align 4, !dbg !2273
  br label %113, !dbg !2274

; <label>:63:                                     ; preds = %55, %50
  %64 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %13, align 8, !dbg !2275
  %65 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %64, i32 0, i32 19, !dbg !2278
  %66 = load i32, i32* %65, align 8, !dbg !2278
  %67 = icmp sge i32 %66, 0, !dbg !2279
  br i1 %67, label %71, label %68, !dbg !2280

; <label>:68:                                     ; preds = %63
  %69 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %13, align 8, !dbg !2281
  %70 = bitcast %struct.CHAT_DCC_REC* %69 to %struct.DCC_REC*, !dbg !2283
  call void @dcc_destroy(%struct.DCC_REC* %70), !dbg !2284
  br label %112, !dbg !2285

; <label>:71:                                     ; preds = %63
  %72 = load i32, i32* %16, align 4, !dbg !2286
  %73 = icmp ne i32 %72, 0, !dbg !2286
  br i1 %73, label %74, label %111, !dbg !2286

; <label>:74:                                     ; preds = %71
  %75 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %13, align 8, !dbg !2289
  %76 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %75, i32 0, i32 19, !dbg !2292
  %77 = load i32, i32* %76, align 8, !dbg !2292
  %78 = load i8**, i8*** %14, align 8, !dbg !2293
  %79 = getelementptr inbounds i8*, i8** %78, i64 3, !dbg !2293
  %80 = load i8*, i8** %79, align 8, !dbg !2293
  %81 = call i32 @atoi(i8* %80) #6, !dbg !2294
  %82 = icmp ne i32 %77, %81, !dbg !2295
  br i1 %82, label %83, label %86, !dbg !2296

; <label>:83:                                     ; preds = %74
  %84 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %13, align 8, !dbg !2297
  %85 = bitcast %struct.CHAT_DCC_REC* %84 to %struct.DCC_REC*, !dbg !2299
  call void @dcc_destroy(%struct.DCC_REC* %85), !dbg !2300
  br label %110, !dbg !2301

; <label>:86:                                     ; preds = %74
  %87 = load i8*, i8** %11, align 8, !dbg !2302
  %88 = call noalias i8* @g_strdup(i8* %87), !dbg !2304
  %89 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %13, align 8, !dbg !2305
  %90 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %89, i32 0, i32 8, !dbg !2306
  store i8* %88, i8** %90, align 8, !dbg !2307
  %91 = load i8**, i8*** %14, align 8, !dbg !2308
  %92 = getelementptr inbounds i8*, i8** %91, i64 2, !dbg !2308
  %93 = load i8*, i8** %92, align 8, !dbg !2308
  %94 = call i32 @atoi(i8* %93) #6, !dbg !2309
  %95 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %13, align 8, !dbg !2310
  %96 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %95, i32 0, i32 12, !dbg !2311
  store i32 %94, i32* %96, align 4, !dbg !2312
  %97 = load i8**, i8*** %14, align 8, !dbg !2313
  %98 = getelementptr inbounds i8*, i8** %97, i64 1, !dbg !2313
  %99 = load i8*, i8** %98, align 8, !dbg !2313
  %100 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %13, align 8, !dbg !2314
  %101 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %100, i32 0, i32 10, !dbg !2315
  call void @dcc_str2ip(i8* %99, %struct._IPADDR* %101), !dbg !2316
  %102 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %13, align 8, !dbg !2317
  %103 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %102, i32 0, i32 10, !dbg !2318
  %104 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %13, align 8, !dbg !2319
  %105 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %104, i32 0, i32 11, !dbg !2320
  %106 = getelementptr inbounds [46 x i8], [46 x i8]* %105, i32 0, i32 0, !dbg !2319
  %107 = call i32 @net_ip2host(%struct._IPADDR* %103, i8* %106), !dbg !2321
  %108 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %13, align 8, !dbg !2322
  call void @dcc_chat_connect(%struct.CHAT_DCC_REC* %108), !dbg !2323
  %109 = load i8**, i8*** %14, align 8, !dbg !2324
  call void @g_strfreev(i8** %109), !dbg !2325
  br label %193, !dbg !2326

; <label>:110:                                    ; preds = %83
  br label %111, !dbg !2327

; <label>:111:                                    ; preds = %110, %71
  br label %112

; <label>:112:                                    ; preds = %111, %68
  br label %113

; <label>:113:                                    ; preds = %112, %60
  br label %114, !dbg !2328

; <label>:114:                                    ; preds = %113, %41
  %115 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !2329
  %116 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %12, align 8, !dbg !2330
  %117 = load i8*, i8** %9, align 8, !dbg !2331
  %118 = load i8**, i8*** %14, align 8, !dbg !2332
  %119 = getelementptr inbounds i8*, i8** %118, i64 0, !dbg !2332
  %120 = load i8*, i8** %119, align 8, !dbg !2332
  %121 = call %struct.CHAT_DCC_REC* @dcc_chat_create(%struct._IRC_SERVER_REC* %115, %struct.CHAT_DCC_REC* %116, i8* %117, i8* %120), !dbg !2333
  store %struct.CHAT_DCC_REC* %121, %struct.CHAT_DCC_REC** %13, align 8, !dbg !2334
  %122 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %13, align 8, !dbg !2335
  %123 = icmp eq %struct.CHAT_DCC_REC* %122, null, !dbg !2337
  br i1 %123, label %124, label %128, !dbg !2338

; <label>:124:                                    ; preds = %114
  %125 = load i8**, i8*** %14, align 8, !dbg !2339
  call void @g_strfreev(i8** %125), !dbg !2341
  br label %126, !dbg !2342, !llvm.loop !2343

; <label>:126:                                    ; preds = %124
  call void @g_warn_message(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), i32 679, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.ctcp_msg_dcc_chat, i32 0, i32 0), i8* null), !dbg !2344
  br label %127, !dbg !2347

; <label>:127:                                    ; preds = %126
  br label %193, !dbg !2348

; <label>:128:                                    ; preds = %114
  %129 = load i8*, i8** %11, align 8, !dbg !2349
  %130 = call noalias i8* @g_strdup(i8* %129), !dbg !2350
  %131 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %13, align 8, !dbg !2351
  %132 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %131, i32 0, i32 8, !dbg !2352
  store i8* %130, i8** %132, align 8, !dbg !2353
  %133 = load i8**, i8*** %14, align 8, !dbg !2354
  %134 = getelementptr inbounds i8*, i8** %133, i64 2, !dbg !2354
  %135 = load i8*, i8** %134, align 8, !dbg !2354
  %136 = call i32 @atoi(i8* %135) #6, !dbg !2355
  %137 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %13, align 8, !dbg !2356
  %138 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %137, i32 0, i32 12, !dbg !2357
  store i32 %136, i32* %138, align 4, !dbg !2358
  %139 = load i32, i32* %16, align 4, !dbg !2359
  %140 = icmp ne i32 %139, 0, !dbg !2359
  br i1 %140, label %141, label %148, !dbg !2361

; <label>:141:                                    ; preds = %128
  %142 = load i8**, i8*** %14, align 8, !dbg !2362
  %143 = getelementptr inbounds i8*, i8** %142, i64 3, !dbg !2362
  %144 = load i8*, i8** %143, align 8, !dbg !2362
  %145 = call i32 @atoi(i8* %144) #6, !dbg !2363
  %146 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %13, align 8, !dbg !2364
  %147 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %146, i32 0, i32 19, !dbg !2365
  store i32 %145, i32* %147, align 8, !dbg !2366
  br label %148, !dbg !2364

; <label>:148:                                    ; preds = %141, %128
  %149 = load i8**, i8*** %14, align 8, !dbg !2367
  %150 = getelementptr inbounds i8*, i8** %149, i64 1, !dbg !2367
  %151 = load i8*, i8** %150, align 8, !dbg !2367
  %152 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %13, align 8, !dbg !2368
  %153 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %152, i32 0, i32 10, !dbg !2369
  call void @dcc_str2ip(i8* %151, %struct._IPADDR* %153), !dbg !2370
  %154 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %13, align 8, !dbg !2371
  %155 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %154, i32 0, i32 10, !dbg !2372
  %156 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %13, align 8, !dbg !2373
  %157 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %156, i32 0, i32 11, !dbg !2374
  %158 = getelementptr inbounds [46 x i8], [46 x i8]* %157, i32 0, i32 0, !dbg !2373
  %159 = call i32 @net_ip2host(%struct._IPADDR* %155, i8* %158), !dbg !2375
  %160 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %13, align 8, !dbg !2376
  %161 = load i8*, i8** %10, align 8, !dbg !2377
  %162 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i32 0, i32 0), i32 2, %struct.CHAT_DCC_REC* %160, i8* %161), !dbg !2378
  %163 = load i32, i32* %17, align 4, !dbg !2379
  %164 = icmp ne i32 %163, 0, !dbg !2379
  br i1 %164, label %183, label %165, !dbg !2381

; <label>:165:                                    ; preds = %148
  %166 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %13, align 8, !dbg !2382
  %167 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %166, i32 0, i32 12, !dbg !2384
  %168 = load i32, i32* %167, align 4, !dbg !2384
  %169 = icmp sge i32 %168, 1024, !dbg !2385
  br i1 %169, label %173, label %170, !dbg !2386

; <label>:170:                                    ; preds = %165
  %171 = call i32 @settings_get_bool(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.58, i32 0, i32 0)), !dbg !2387
  %172 = icmp ne i32 %171, 0, !dbg !2387
  br i1 %172, label %173, label %191, !dbg !2389

; <label>:173:                                    ; preds = %170, %165
  %174 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !2390
  %175 = bitcast %struct._IRC_SERVER_REC* %174 to i8*, !dbg !2390
  %176 = call i8* @module_check_cast(i8* %175, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0)), !dbg !2392
  %177 = bitcast i8* %176 to %struct._SERVER_REC*, !dbg !2393
  %178 = call i8* @settings_get_str(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0)), !dbg !2394
  %179 = load i8*, i8** %9, align 8, !dbg !2396
  %180 = load i8*, i8** %10, align 8, !dbg !2397
  %181 = call i32 @masks_match(%struct._SERVER_REC* %177, i8* %178, i8* %179, i8* %180), !dbg !2398
  %182 = icmp ne i32 %181, 0, !dbg !2400
  br i1 %182, label %183, label %191, !dbg !2401

; <label>:183:                                    ; preds = %173, %148
  %184 = load i32, i32* %16, align 4, !dbg !2402
  %185 = icmp ne i32 %184, 0, !dbg !2402
  br i1 %185, label %186, label %188, !dbg !2405

; <label>:186:                                    ; preds = %183
  %187 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %13, align 8, !dbg !2406
  call void @dcc_chat_passive(%struct.CHAT_DCC_REC* %187), !dbg !2408
  br label %190, !dbg !2409

; <label>:188:                                    ; preds = %183
  %189 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %13, align 8, !dbg !2410
  call void @dcc_chat_connect(%struct.CHAT_DCC_REC* %189), !dbg !2412
  br label %190

; <label>:190:                                    ; preds = %188, %186
  br label %191, !dbg !2413

; <label>:191:                                    ; preds = %190, %173, %170
  %192 = load i8**, i8*** %14, align 8, !dbg !2414
  call void @g_strfreev(i8** %192), !dbg !2415
  br label %193, !dbg !2416

; <label>:193:                                    ; preds = %191, %127, %86, %24
  ret void, !dbg !2417
}

; Function Attrs: nounwind uwtable
define internal void @dcc_chat_msg(%struct.CHAT_DCC_REC*, i8*) #0 !dbg !2418 {
  %3 = alloca %struct.CHAT_DCC_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.CHAT_DCC_REC* %0, %struct.CHAT_DCC_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %3, metadata !2419, metadata !821), !dbg !2420
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2421, metadata !821), !dbg !2422
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2423, metadata !821), !dbg !2424
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2425, metadata !821), !dbg !2426
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2427, metadata !821), !dbg !2428
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2429, metadata !821), !dbg !2430
  br label %9, !dbg !2431, !llvm.loop !2432

; <label>:9:                                      ; preds = %2
  %10 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !2433
  %11 = bitcast %struct.CHAT_DCC_REC* %10 to i8*, !dbg !2433
  %12 = call i8* @module_check_cast_module(i8* %11, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)), !dbg !2437
  %13 = bitcast i8* %12 to %struct.CHAT_DCC_REC*, !dbg !2438
  %14 = icmp ne %struct.CHAT_DCC_REC* %13, null, !dbg !2438
  br i1 %14, label %15, label %16, !dbg !2439

; <label>:15:                                     ; preds = %9
  br i1 false, label %18, label %17, !dbg !2440

; <label>:16:                                     ; preds = %9
  br i1 false, label %17, label %18, !dbg !2442

; <label>:17:                                     ; preds = %16, %15
  br label %19, !dbg !2444

; <label>:18:                                     ; preds = %16, %15
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.dcc_chat_msg, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0)), !dbg !2447
  br label %126, !dbg !2450

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !2451

; <label>:20:                                     ; preds = %19
  br label %21, !dbg !2453, !llvm.loop !2454

; <label>:21:                                     ; preds = %20
  %22 = load i8*, i8** %4, align 8, !dbg !2455
  %23 = icmp ne i8* %22, null, !dbg !2459
  br i1 %23, label %24, label %25, !dbg !2455

; <label>:24:                                     ; preds = %21
  br label %26, !dbg !2460

; <label>:25:                                     ; preds = %21
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.dcc_chat_msg, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.59, i32 0, i32 0)), !dbg !2463
  br label %126, !dbg !2466

; <label>:26:                                     ; preds = %24
  br label %27, !dbg !2467

; <label>:27:                                     ; preds = %26
  store i32 0, i32* %8, align 4, !dbg !2469
  %28 = load i8*, i8** %4, align 8, !dbg !2470
  %29 = call i32 @g_ascii_strncasecmp(i8* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i64 13), !dbg !2472
  %30 = icmp eq i32 %29, 0, !dbg !2473
  br i1 %30, label %31, label %38, !dbg !2474

; <label>:31:                                     ; preds = %27
  %32 = load i8*, i8** %4, align 8, !dbg !2475
  %33 = getelementptr inbounds i8, i8* %32, i64 13, !dbg !2475
  store i8* %33, i8** %4, align 8, !dbg !2475
  %34 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !2477
  %35 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %34, i32 0, i32 24, !dbg !2478
  %36 = load i8, i8* %35, align 8, !dbg !2479
  %37 = and i8 %36, -2, !dbg !2479
  store i8 %37, i8* %35, align 8, !dbg !2479
  br label %62, !dbg !2480

; <label>:38:                                     ; preds = %27
  %39 = load i8*, i8** %4, align 8, !dbg !2481
  %40 = call i32 @g_ascii_strncasecmp(i8* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0), i64 11), !dbg !2484
  %41 = icmp eq i32 %40, 0, !dbg !2485
  br i1 %41, label %42, label %49, !dbg !2484

; <label>:42:                                     ; preds = %38
  %43 = load i8*, i8** %4, align 8, !dbg !2486
  %44 = getelementptr inbounds i8, i8* %43, i64 11, !dbg !2486
  store i8* %44, i8** %4, align 8, !dbg !2486
  store i32 1, i32* %8, align 4, !dbg !2488
  %45 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !2489
  %46 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %45, i32 0, i32 24, !dbg !2490
  %47 = load i8, i8* %46, align 8, !dbg !2491
  %48 = and i8 %47, -2, !dbg !2491
  store i8 %48, i8* %46, align 8, !dbg !2491
  br label %61, !dbg !2492

; <label>:49:                                     ; preds = %38
  %50 = load i8*, i8** %4, align 8, !dbg !2493
  %51 = load i8, i8* %50, align 1, !dbg !2496
  %52 = sext i8 %51 to i32, !dbg !2496
  %53 = icmp eq i32 %52, 1, !dbg !2497
  br i1 %53, label %54, label %60, !dbg !2496

; <label>:54:                                     ; preds = %49
  %55 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !2498
  %56 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %55, i32 0, i32 24, !dbg !2500
  %57 = load i8, i8* %56, align 8, !dbg !2501
  %58 = and i8 %57, -2, !dbg !2501
  %59 = or i8 %58, 1, !dbg !2501
  store i8 %59, i8* %56, align 8, !dbg !2501
  br label %60, !dbg !2502

; <label>:60:                                     ; preds = %54, %49
  br label %61

; <label>:61:                                     ; preds = %60, %42
  br label %62

; <label>:62:                                     ; preds = %61, %31
  %63 = load i8*, i8** %4, align 8, !dbg !2503
  %64 = load i8, i8* %63, align 1, !dbg !2505
  %65 = sext i8 %64 to i32, !dbg !2505
  %66 = icmp ne i32 %65, 1, !dbg !2506
  br i1 %66, label %67, label %68, !dbg !2507

; <label>:67:                                     ; preds = %62
  br label %126, !dbg !2508

; <label>:68:                                     ; preds = %62
  %69 = load i32, i32* %8, align 4, !dbg !2509
  %70 = icmp ne i32 %69, 0, !dbg !2509
  %71 = select i1 %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0), !dbg !2509
  %72 = load i8*, i8** %4, align 8, !dbg !2510
  %73 = getelementptr inbounds i8, i8* %72, i64 1, !dbg !2511
  %74 = call noalias i8* (i8*, ...) @g_strconcat(i8* %71, i8* %73, i8* null), !dbg !2512
  store i8* %74, i8** %5, align 8, !dbg !2513
  %75 = load i8*, i8** %5, align 8, !dbg !2514
  %76 = call i64 @strlen(i8* %75) #6, !dbg !2516
  %77 = sub i64 %76, 1, !dbg !2517
  %78 = load i8*, i8** %5, align 8, !dbg !2518
  %79 = getelementptr inbounds i8, i8* %78, i64 %77, !dbg !2518
  %80 = load i8, i8* %79, align 1, !dbg !2518
  %81 = sext i8 %80 to i32, !dbg !2518
  %82 = icmp eq i32 %81, 1, !dbg !2519
  br i1 %82, label %83, label %89, !dbg !2520

; <label>:83:                                     ; preds = %68
  %84 = load i8*, i8** %5, align 8, !dbg !2521
  %85 = call i64 @strlen(i8* %84) #6, !dbg !2523
  %86 = sub i64 %85, 1, !dbg !2524
  %87 = load i8*, i8** %5, align 8, !dbg !2525
  %88 = getelementptr inbounds i8, i8* %87, i64 %86, !dbg !2525
  store i8 0, i8* %88, align 1, !dbg !2526
  br label %89, !dbg !2525

; <label>:89:                                     ; preds = %83, %68
  %90 = load i8*, i8** %5, align 8, !dbg !2527
  %91 = load i32, i32* %8, align 4, !dbg !2528
  %92 = icmp ne i32 %91, 0, !dbg !2528
  %93 = select i1 %92, i32 10, i32 9, !dbg !2528
  %94 = sext i32 %93 to i64, !dbg !2529
  %95 = getelementptr inbounds i8, i8* %90, i64 %94, !dbg !2529
  store i8* %95, i8** %6, align 8, !dbg !2530
  %96 = load i8*, i8** %6, align 8, !dbg !2531
  %97 = call i8* @strchr(i8* %96, i32 32) #6, !dbg !2532
  store i8* %97, i8** %7, align 8, !dbg !2533
  %98 = load i8*, i8** %7, align 8, !dbg !2534
  %99 = icmp ne i8* %98, null, !dbg !2536
  br i1 %99, label %100, label %103, !dbg !2537

; <label>:100:                                    ; preds = %89
  %101 = load i8*, i8** %7, align 8, !dbg !2538
  %102 = getelementptr inbounds i8, i8* %101, i32 1, !dbg !2538
  store i8* %102, i8** %7, align 8, !dbg !2538
  store i8 0, i8* %101, align 1, !dbg !2540
  br label %104, !dbg !2541

; <label>:103:                                    ; preds = %89
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i32 0, i32 0), i8** %7, align 8, !dbg !2542
  br label %104

; <label>:104:                                    ; preds = %103, %100
  %105 = load i8*, i8** %6, align 8, !dbg !2544
  %106 = call noalias i8* @g_ascii_strup(i8* %105, i64 -1), !dbg !2545
  store i8* %106, i8** %6, align 8, !dbg !2546
  %107 = load i8*, i8** %5, align 8, !dbg !2547
  %108 = getelementptr inbounds i8, i8* %107, i64 9, !dbg !2548
  %109 = call i8* @ascii_strdown(i8* %108), !dbg !2549
  %110 = load i8*, i8** %5, align 8, !dbg !2550
  %111 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !2552
  %112 = load i8*, i8** %7, align 8, !dbg !2553
  %113 = call i32 (i8*, i32, ...) @signal_emit(i8* %110, i32 2, %struct.CHAT_DCC_REC* %111, i8* %112), !dbg !2554
  %114 = icmp ne i32 %113, 0, !dbg !2554
  br i1 %114, label %123, label %115, !dbg !2555

; <label>:115:                                    ; preds = %104
  %116 = load i32, i32* %8, align 4, !dbg !2556
  %117 = icmp ne i32 %116, 0, !dbg !2556
  %118 = select i1 %117, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.63, i32 0, i32 0), !dbg !2556
  %119 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !2558
  %120 = load i8*, i8** %6, align 8, !dbg !2559
  %121 = load i8*, i8** %7, align 8, !dbg !2560
  %122 = call i32 (i8*, i32, ...) @signal_emit(i8* %118, i32 3, %struct.CHAT_DCC_REC* %119, i8* %120, i8* %121), !dbg !2561
  br label %123, !dbg !2562

; <label>:123:                                    ; preds = %115, %104
  %124 = load i8*, i8** %6, align 8, !dbg !2563
  call void @g_free(i8* %124), !dbg !2564
  %125 = load i8*, i8** %5, align 8, !dbg !2565
  call void @g_free(i8* %125), !dbg !2566
  call void @signal_stop(), !dbg !2567
  br label %126, !dbg !2568

; <label>:126:                                    ; preds = %123, %67, %25, %18
  ret void, !dbg !2569
}

; Function Attrs: nounwind uwtable
define internal void @dcc_ctcp_redirect(%struct.CHAT_DCC_REC*, i8*) #0 !dbg !2571 {
  %3 = alloca %struct.CHAT_DCC_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct.CHAT_DCC_REC* %0, %struct.CHAT_DCC_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %3, metadata !2572, metadata !821), !dbg !2573
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2574, metadata !821), !dbg !2575
  br label %5, !dbg !2576, !llvm.loop !2577

; <label>:5:                                      ; preds = %2
  %6 = load i8*, i8** %4, align 8, !dbg !2578
  %7 = icmp ne i8* %6, null, !dbg !2582
  br i1 %7, label %8, label %9, !dbg !2578

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !2583

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.dcc_ctcp_redirect, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.59, i32 0, i32 0)), !dbg !2586
  br label %36, !dbg !2589

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !2590

; <label>:11:                                     ; preds = %10
  br label %12, !dbg !2592, !llvm.loop !2593

; <label>:12:                                     ; preds = %11
  %13 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !2594
  %14 = bitcast %struct.CHAT_DCC_REC* %13 to i8*, !dbg !2594
  %15 = call i8* @module_check_cast_module(i8* %14, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)), !dbg !2598
  %16 = bitcast i8* %15 to %struct.CHAT_DCC_REC*, !dbg !2599
  %17 = icmp ne %struct.CHAT_DCC_REC* %16, null, !dbg !2599
  br i1 %17, label %18, label %19, !dbg !2600

; <label>:18:                                     ; preds = %12
  br i1 false, label %21, label %20, !dbg !2601

; <label>:19:                                     ; preds = %12
  br i1 false, label %20, label %21, !dbg !2603

; <label>:20:                                     ; preds = %19, %18
  br label %22, !dbg !2605

; <label>:21:                                     ; preds = %19, %18
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.dcc_ctcp_redirect, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0)), !dbg !2608
  br label %36, !dbg !2611

; <label>:22:                                     ; preds = %20
  br label %23, !dbg !2612

; <label>:23:                                     ; preds = %22
  %24 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !2614
  %25 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %24, i32 0, i32 3, !dbg !2615
  %26 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %25, align 8, !dbg !2615
  %27 = load i8*, i8** %4, align 8, !dbg !2616
  %28 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !2617
  %29 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %28, i32 0, i32 6, !dbg !2618
  %30 = load i8*, i8** %29, align 8, !dbg !2618
  %31 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !2619
  %32 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %31, i32 0, i32 5, !dbg !2620
  %33 = load i8*, i8** %32, align 8, !dbg !2620
  %34 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !2621
  %35 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.64, i32 0, i32 0), i32 6, %struct._IRC_SERVER_REC* %26, i8* %27, i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8* %33, %struct.CHAT_DCC_REC* %34), !dbg !2622
  br label %36, !dbg !2623

; <label>:36:                                     ; preds = %23, %21, %9
  ret void, !dbg !2624
}

; Function Attrs: nounwind uwtable
define internal void @dcc_ctcp_reply_redirect(%struct.CHAT_DCC_REC*, i8*) #0 !dbg !2626 {
  %3 = alloca %struct.CHAT_DCC_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct.CHAT_DCC_REC* %0, %struct.CHAT_DCC_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %3, metadata !2627, metadata !821), !dbg !2628
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2629, metadata !821), !dbg !2630
  br label %5, !dbg !2631, !llvm.loop !2632

; <label>:5:                                      ; preds = %2
  %6 = load i8*, i8** %4, align 8, !dbg !2633
  %7 = icmp ne i8* %6, null, !dbg !2637
  br i1 %7, label %8, label %9, !dbg !2633

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !2638

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.dcc_ctcp_reply_redirect, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.59, i32 0, i32 0)), !dbg !2641
  br label %36, !dbg !2644

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !2645

; <label>:11:                                     ; preds = %10
  br label %12, !dbg !2647, !llvm.loop !2648

; <label>:12:                                     ; preds = %11
  %13 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !2649
  %14 = bitcast %struct.CHAT_DCC_REC* %13 to i8*, !dbg !2649
  %15 = call i8* @module_check_cast_module(i8* %14, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)), !dbg !2653
  %16 = bitcast i8* %15 to %struct.CHAT_DCC_REC*, !dbg !2654
  %17 = icmp ne %struct.CHAT_DCC_REC* %16, null, !dbg !2654
  br i1 %17, label %18, label %19, !dbg !2655

; <label>:18:                                     ; preds = %12
  br i1 false, label %21, label %20, !dbg !2656

; <label>:19:                                     ; preds = %12
  br i1 false, label %20, label %21, !dbg !2658

; <label>:20:                                     ; preds = %19, %18
  br label %22, !dbg !2660

; <label>:21:                                     ; preds = %19, %18
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.dcc_ctcp_reply_redirect, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0)), !dbg !2663
  br label %36, !dbg !2666

; <label>:22:                                     ; preds = %20
  br label %23, !dbg !2667

; <label>:23:                                     ; preds = %22
  %24 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !2669
  %25 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %24, i32 0, i32 3, !dbg !2670
  %26 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %25, align 8, !dbg !2670
  %27 = load i8*, i8** %4, align 8, !dbg !2671
  %28 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !2672
  %29 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %28, i32 0, i32 6, !dbg !2673
  %30 = load i8*, i8** %29, align 8, !dbg !2673
  %31 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !2674
  %32 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %31, i32 0, i32 5, !dbg !2675
  %33 = load i8*, i8** %32, align 8, !dbg !2675
  %34 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !2676
  %35 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.65, i32 0, i32 0), i32 6, %struct._IRC_SERVER_REC* %26, i8* %27, i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i8* %33, %struct.CHAT_DCC_REC* %34), !dbg !2677
  br label %36, !dbg !2678

; <label>:36:                                     ; preds = %23, %21, %9
  ret void, !dbg !2679
}

; Function Attrs: nounwind uwtable
define internal void @ctcp_reply_dcc_reject(%struct._IRC_SERVER_REC*, i8*, i8*, i8*, %struct.DCC_REC*) #0 !dbg !2681 {
  %6 = alloca %struct._IRC_SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.DCC_REC*, align 8
  %11 = alloca %struct.DCC_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %6, metadata !2684, metadata !821), !dbg !2685
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2686, metadata !821), !dbg !2687
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2688, metadata !821), !dbg !2689
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2690, metadata !821), !dbg !2691
  store %struct.DCC_REC* %4, %struct.DCC_REC** %10, align 8
  call void @llvm.dbg.declare(metadata %struct.DCC_REC** %10, metadata !2692, metadata !821), !dbg !2693
  call void @llvm.dbg.declare(metadata %struct.DCC_REC** %11, metadata !2694, metadata !821), !dbg !2695
  %12 = load i8*, i8** %7, align 8, !dbg !2696
  %13 = call i32 @g_ascii_strncasecmp(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i64 4), !dbg !2698
  %14 = icmp eq i32 %13, 0, !dbg !2699
  br i1 %14, label %15, label %36, !dbg !2700

; <label>:15:                                     ; preds = %5
  %16 = load i8*, i8** %7, align 8, !dbg !2701
  %17 = getelementptr inbounds i8, i8* %16, i64 4, !dbg !2701
  %18 = load i8, i8* %17, align 1, !dbg !2701
  %19 = sext i8 %18 to i32, !dbg !2701
  %20 = icmp eq i32 %19, 0, !dbg !2702
  br i1 %20, label %27, label %21, !dbg !2703

; <label>:21:                                     ; preds = %15
  %22 = load i8*, i8** %7, align 8, !dbg !2704
  %23 = getelementptr inbounds i8, i8* %22, i64 4, !dbg !2704
  %24 = load i8, i8* %23, align 1, !dbg !2704
  %25 = sext i8 %24 to i32, !dbg !2704
  %26 = icmp eq i32 %25, 32, !dbg !2706
  br i1 %26, label %27, label %36, !dbg !2707

; <label>:27:                                     ; preds = %21, %15
  %28 = call i32 @module_get_uniq_id_str(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)), !dbg !2709
  %29 = load i8*, i8** %8, align 8, !dbg !2711
  %30 = call %struct.DCC_REC* @dcc_find_request(i32 %28, i8* %29, i8* null), !dbg !2712
  store %struct.DCC_REC* %30, %struct.DCC_REC** %11, align 8, !dbg !2714
  %31 = load %struct.DCC_REC*, %struct.DCC_REC** %11, align 8, !dbg !2715
  %32 = icmp ne %struct.DCC_REC* %31, null, !dbg !2717
  br i1 %32, label %33, label %35, !dbg !2718

; <label>:33:                                     ; preds = %27
  %34 = load %struct.DCC_REC*, %struct.DCC_REC** %11, align 8, !dbg !2719
  call void @dcc_close(%struct.DCC_REC* %34), !dbg !2721
  br label %35, !dbg !2721

; <label>:35:                                     ; preds = %33, %27
  call void @signal_stop(), !dbg !2722
  br label %36, !dbg !2723

; <label>:36:                                     ; preds = %35, %21, %5
  ret void, !dbg !2724
}

; Function Attrs: nounwind uwtable
define internal void @event_nick(%struct._IRC_SERVER_REC*, i8*, i8*) #0 !dbg !2725 {
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._QUERY_REC*, align 8
  %8 = alloca %struct.CHAT_DCC_REC*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !2728, metadata !821), !dbg !2729
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2730, metadata !821), !dbg !2731
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2732, metadata !821), !dbg !2733
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %7, metadata !2734, metadata !821), !dbg !2735
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %8, metadata !2736, metadata !821), !dbg !2737
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2738, metadata !821), !dbg !2739
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2740, metadata !821), !dbg !2741
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2742, metadata !821), !dbg !2743
  br label %12, !dbg !2744, !llvm.loop !2745

; <label>:12:                                     ; preds = %3
  %13 = load i8*, i8** %5, align 8, !dbg !2746
  %14 = icmp ne i8* %13, null, !dbg !2750
  br i1 %14, label %15, label %16, !dbg !2746

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !2751

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.event_nick, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0)), !dbg !2754
  br label %78, !dbg !2757

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !2758

; <label>:18:                                     ; preds = %17
  br label %19, !dbg !2760, !llvm.loop !2761

; <label>:19:                                     ; preds = %18
  %20 = load i8*, i8** %6, align 8, !dbg !2762
  %21 = icmp ne i8* %20, null, !dbg !2766
  br i1 %21, label %22, label %23, !dbg !2762

; <label>:22:                                     ; preds = %19
  br label %24, !dbg !2767

; <label>:23:                                     ; preds = %19
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.event_nick, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i32 0, i32 0)), !dbg !2770
  br label %78, !dbg !2773

; <label>:24:                                     ; preds = %22
  br label %25, !dbg !2774

; <label>:25:                                     ; preds = %24
  %26 = load i8*, i8** %5, align 8, !dbg !2776
  %27 = call i8* (i8*, i32, ...) @event_get_params(i8* %26, i32 1, i8** %10), !dbg !2777
  store i8* %27, i8** %9, align 8, !dbg !2778
  %28 = load i8*, i8** %10, align 8, !dbg !2779
  %29 = load i8*, i8** %6, align 8, !dbg !2781
  %30 = call i32 @g_ascii_strcasecmp(i8* %28, i8* %29), !dbg !2782
  %31 = icmp eq i32 %30, 0, !dbg !2783
  br i1 %31, label %32, label %34, !dbg !2784

; <label>:32:                                     ; preds = %25
  %33 = load i8*, i8** %9, align 8, !dbg !2785
  call void @g_free(i8* %33), !dbg !2787
  br label %78, !dbg !2788

; <label>:34:                                     ; preds = %25
  br label %35, !dbg !2789

; <label>:35:                                     ; preds = %75, %34
  %36 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2790
  %37 = load i8*, i8** %6, align 8, !dbg !2792
  %38 = call %struct.CHAT_DCC_REC* @dcc_chat_find_nick(%struct._IRC_SERVER_REC* %36, i8* %37), !dbg !2793
  store %struct.CHAT_DCC_REC* %38, %struct.CHAT_DCC_REC** %8, align 8, !dbg !2794
  %39 = icmp ne %struct.CHAT_DCC_REC* %38, null, !dbg !2795
  br i1 %39, label %40, label %76, !dbg !2796

; <label>:40:                                     ; preds = %35
  %41 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %8, align 8, !dbg !2797
  %42 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %41, i32 0, i32 6, !dbg !2799
  %43 = load i8*, i8** %42, align 8, !dbg !2799
  call void @g_free(i8* %43), !dbg !2800
  %44 = load i8*, i8** %10, align 8, !dbg !2801
  %45 = call noalias i8* @g_strdup(i8* %44), !dbg !2802
  %46 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %8, align 8, !dbg !2803
  %47 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %46, i32 0, i32 6, !dbg !2804
  store i8* %45, i8** %47, align 8, !dbg !2805
  %48 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %8, align 8, !dbg !2806
  %49 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %48, i32 0, i32 22, !dbg !2807
  %50 = load i8*, i8** %49, align 8, !dbg !2807
  %51 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i32 0, i32 0), i8* %50, i8* null), !dbg !2808
  store i8* %51, i8** %11, align 8, !dbg !2809
  %52 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2810
  %53 = load i8*, i8** %11, align 8, !dbg !2811
  %54 = call %struct._QUERY_REC* @irc_query_find(%struct._IRC_SERVER_REC* %52, i8* %53), !dbg !2812
  store %struct._QUERY_REC* %54, %struct._QUERY_REC** %7, align 8, !dbg !2813
  %55 = load i8*, i8** %11, align 8, !dbg !2814
  call void @g_free(i8* %55), !dbg !2815
  %56 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %8, align 8, !dbg !2816
  %57 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %56, i32 0, i32 22, !dbg !2817
  %58 = load i8*, i8** %57, align 8, !dbg !2817
  call void @g_free(i8* %58), !dbg !2818
  %59 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %8, align 8, !dbg !2819
  %60 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %59, i32 0, i32 22, !dbg !2820
  store i8* null, i8** %60, align 8, !dbg !2821
  %61 = load i8*, i8** %10, align 8, !dbg !2822
  %62 = call i8* @dcc_chat_get_new_id(i8* %61), !dbg !2823
  %63 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %8, align 8, !dbg !2824
  %64 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %63, i32 0, i32 22, !dbg !2825
  store i8* %62, i8** %64, align 8, !dbg !2826
  %65 = load %struct._QUERY_REC*, %struct._QUERY_REC** %7, align 8, !dbg !2827
  %66 = icmp ne %struct._QUERY_REC* %65, null, !dbg !2829
  br i1 %66, label %67, label %75, !dbg !2830

; <label>:67:                                     ; preds = %40
  %68 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %8, align 8, !dbg !2831
  %69 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %68, i32 0, i32 22, !dbg !2833
  %70 = load i8*, i8** %69, align 8, !dbg !2833
  %71 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.67, i32 0, i32 0), i8* %70, i8* null), !dbg !2834
  store i8* %71, i8** %11, align 8, !dbg !2835
  %72 = load %struct._QUERY_REC*, %struct._QUERY_REC** %7, align 8, !dbg !2836
  %73 = load i8*, i8** %11, align 8, !dbg !2837
  call void @query_change_nick(%struct._QUERY_REC* %72, i8* %73), !dbg !2838
  %74 = load i8*, i8** %11, align 8, !dbg !2839
  call void @g_free(i8* %74), !dbg !2840
  br label %75, !dbg !2841

; <label>:75:                                     ; preds = %67, %40
  br label %35, !dbg !2842, !llvm.loop !2844

; <label>:76:                                     ; preds = %35
  %77 = load i8*, i8** %9, align 8, !dbg !2845
  call void @g_free(i8* %77), !dbg !2846
  br label %78, !dbg !2847

; <label>:78:                                     ; preds = %76, %32, %23, %16
  ret void, !dbg !2848
}

; Function Attrs: nounwind uwtable
define void @dcc_chat_deinit() #0 !dbg !2849 {
  call void @dcc_unregister_type(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)), !dbg !2850
  call void @command_unbind_full(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_msg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2851
  call void @command_unbind_full(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_me to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2852
  call void @command_unbind_full(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @cmd_action to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2853
  call void @command_unbind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @cmd_ctcp to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2854
  call void @command_unbind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*)* @cmd_dcc_chat to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2855
  call void @command_unbind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._QUERY_REC*)* @cmd_mircdcc to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2856
  call void @command_unbind_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*)* @cmd_dcc_close to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2857
  call void @command_unbind_full(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_whois to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2858
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.CHAT_DCC_REC*)* @sig_dcc_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2859
  call void @signal_remove_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*, %struct.CHAT_DCC_REC*)* @ctcp_msg_dcc_chat to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2860
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.CHAT_DCC_REC*, i8*)* @dcc_chat_msg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2861
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.CHAT_DCC_REC*, i8*)* @dcc_ctcp_redirect to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2862
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.CHAT_DCC_REC*, i8*)* @dcc_ctcp_reply_redirect to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2863
  call void @signal_remove_full(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, %struct.DCC_REC*)* @ctcp_reply_dcc_reject to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2864
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_nick to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2865
  ret void, !dbg !2866
}

declare void @dcc_unregister_type(i8*) #2

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare noalias i8* @g_strdup(i8*) #2

declare i32 @cmd_get_params(i8*, i8**, i32, ...) #2

declare i32 @g_strcmp0(i8*, i8*) #2

declare void @signal_stop() #2

declare void @cmd_params_free(i8*) #2

declare noalias i8* @g_strconcat(i8*, ...) #2

declare i8* @ascii_strup(i8*) #2

declare %struct.DCC_REC* @dcc_find_request_latest(i32) #2

; Function Attrs: nounwind uwtable
define internal void @dcc_chat_connect(%struct.CHAT_DCC_REC*) #0 !dbg !2867 {
  %2 = alloca %struct.CHAT_DCC_REC*, align 8
  store %struct.CHAT_DCC_REC* %0, %struct.CHAT_DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %2, metadata !2868, metadata !821), !dbg !2869
  br label %3, !dbg !2870, !llvm.loop !2871

; <label>:3:                                      ; preds = %1
  %4 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !2872
  %5 = bitcast %struct.CHAT_DCC_REC* %4 to i8*, !dbg !2872
  %6 = call i8* @module_check_cast_module(i8* %5, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)), !dbg !2876
  %7 = bitcast i8* %6 to %struct.CHAT_DCC_REC*, !dbg !2877
  %8 = icmp ne %struct.CHAT_DCC_REC* %7, null, !dbg !2877
  br i1 %8, label %9, label %10, !dbg !2878

; <label>:9:                                      ; preds = %3
  br i1 false, label %12, label %11, !dbg !2879

; <label>:10:                                     ; preds = %3
  br i1 false, label %11, label %12, !dbg !2881

; <label>:11:                                     ; preds = %10, %9
  br label %13, !dbg !2883

; <label>:12:                                     ; preds = %10, %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.dcc_chat_connect, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0)), !dbg !2886
  br label %59, !dbg !2889

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !2890

; <label>:14:                                     ; preds = %13
  %15 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !2892
  %16 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %15, i32 0, i32 11, !dbg !2894
  %17 = getelementptr inbounds [46 x i8], [46 x i8]* %16, i64 0, i64 0, !dbg !2892
  %18 = load i8, i8* %17, align 4, !dbg !2892
  %19 = sext i8 %18 to i32, !dbg !2892
  %20 = icmp eq i32 %19, 0, !dbg !2895
  br i1 %20, label %31, label %21, !dbg !2896

; <label>:21:                                     ; preds = %14
  %22 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !2897
  %23 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %22, i32 0, i32 17, !dbg !2898
  %24 = load i64, i64* %23, align 8, !dbg !2898
  %25 = icmp ne i64 %24, 0, !dbg !2899
  br i1 %25, label %31, label %26, !dbg !2900

; <label>:26:                                     ; preds = %21
  %27 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !2901
  %28 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %27, i32 0, i32 13, !dbg !2903
  %29 = load %struct._GIOChannel*, %struct._GIOChannel** %28, align 8, !dbg !2903
  %30 = icmp ne %struct._GIOChannel* %29, null, !dbg !2904
  br i1 %30, label %31, label %32, !dbg !2905

; <label>:31:                                     ; preds = %26, %21, %14
  br label %59, !dbg !2907

; <label>:32:                                     ; preds = %26
  %33 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !2909
  %34 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %33, i32 0, i32 10, !dbg !2910
  %35 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !2911
  %36 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %35, i32 0, i32 12, !dbg !2912
  %37 = load i32, i32* %36, align 4, !dbg !2912
  %38 = call %struct._GIOChannel* @dcc_connect_ip(%struct._IPADDR* %34, i32 %37), !dbg !2913
  %39 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !2914
  %40 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %39, i32 0, i32 13, !dbg !2915
  store %struct._GIOChannel* %38, %struct._GIOChannel** %40, align 8, !dbg !2916
  %41 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !2917
  %42 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %41, i32 0, i32 13, !dbg !2919
  %43 = load %struct._GIOChannel*, %struct._GIOChannel** %42, align 8, !dbg !2919
  %44 = icmp ne %struct._GIOChannel* %43, null, !dbg !2920
  br i1 %44, label %45, label %54, !dbg !2921

; <label>:45:                                     ; preds = %32
  %46 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !2922
  %47 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %46, i32 0, i32 13, !dbg !2924
  %48 = load %struct._GIOChannel*, %struct._GIOChannel** %47, align 8, !dbg !2924
  %49 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !2925
  %50 = bitcast %struct.CHAT_DCC_REC* %49 to i8*, !dbg !2925
  %51 = call i32 @g_input_add(%struct._GIOChannel* %48, i32 3, void (i8*, %struct._GIOChannel*, i32)* bitcast (void (%struct.CHAT_DCC_REC*)* @sig_chat_connected to void (i8*, %struct._GIOChannel*, i32)*), i8* %50), !dbg !2926
  %52 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !2927
  %53 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %52, i32 0, i32 14, !dbg !2928
  store i32 %51, i32* %53, align 8, !dbg !2929
  br label %59, !dbg !2930

; <label>:54:                                     ; preds = %32
  %55 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !2931
  %56 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.49, i32 0, i32 0), i32 1, %struct.CHAT_DCC_REC* %55), !dbg !2933
  %57 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !2934
  %58 = bitcast %struct.CHAT_DCC_REC* %57 to %struct.DCC_REC*, !dbg !2935
  call void @dcc_destroy(%struct.DCC_REC* %58), !dbg !2936
  br label %59

; <label>:59:                                     ; preds = %12, %31, %54, %45
  ret void, !dbg !2937
}

; Function Attrs: nounwind uwtable
define internal void @dcc_chat_passive(%struct.CHAT_DCC_REC*) #0 !dbg !2938 {
  %2 = alloca %struct.CHAT_DCC_REC*, align 8
  %3 = alloca %struct._IPADDR, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct._GIOChannel*, align 8
  %6 = alloca [46 x i8], align 16
  store %struct.CHAT_DCC_REC* %0, %struct.CHAT_DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %2, metadata !2939, metadata !821), !dbg !2940
  call void @llvm.dbg.declare(metadata %struct._IPADDR* %3, metadata !2941, metadata !821), !dbg !2942
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2943, metadata !821), !dbg !2944
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %5, metadata !2945, metadata !821), !dbg !2946
  call void @llvm.dbg.declare(metadata [46 x i8]* %6, metadata !2947, metadata !821), !dbg !2948
  br label %7, !dbg !2949, !llvm.loop !2950

; <label>:7:                                      ; preds = %1
  %8 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !2951
  %9 = bitcast %struct.CHAT_DCC_REC* %8 to i8*, !dbg !2951
  %10 = call i8* @module_check_cast_module(i8* %9, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)), !dbg !2955
  %11 = bitcast i8* %10 to %struct.CHAT_DCC_REC*, !dbg !2956
  %12 = icmp ne %struct.CHAT_DCC_REC* %11, null, !dbg !2956
  br i1 %12, label %13, label %14, !dbg !2957

; <label>:13:                                     ; preds = %7
  br i1 false, label %16, label %15, !dbg !2958

; <label>:14:                                     ; preds = %7
  br i1 false, label %15, label %16, !dbg !2960

; <label>:15:                                     ; preds = %14, %13
  br label %17, !dbg !2962

; <label>:16:                                     ; preds = %14, %13
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.dcc_chat_passive, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0)), !dbg !2965
  br label %74, !dbg !2968

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !2969

; <label>:18:                                     ; preds = %17
  %19 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !2971
  %20 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %19, i32 0, i32 11, !dbg !2973
  %21 = getelementptr inbounds [46 x i8], [46 x i8]* %20, i64 0, i64 0, !dbg !2971
  %22 = load i8, i8* %21, align 4, !dbg !2971
  %23 = sext i8 %22 to i32, !dbg !2971
  %24 = icmp eq i32 %23, 0, !dbg !2974
  br i1 %24, label %35, label %25, !dbg !2975

; <label>:25:                                     ; preds = %18
  %26 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !2976
  %27 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %26, i32 0, i32 17, !dbg !2977
  %28 = load i64, i64* %27, align 8, !dbg !2977
  %29 = icmp ne i64 %28, 0, !dbg !2978
  br i1 %29, label %35, label %30, !dbg !2979

; <label>:30:                                     ; preds = %25
  %31 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !2980
  %32 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %31, i32 0, i32 13, !dbg !2982
  %33 = load %struct._GIOChannel*, %struct._GIOChannel** %32, align 8, !dbg !2982
  %34 = icmp ne %struct._GIOChannel* %33, null, !dbg !2983
  br i1 %34, label %35, label %36, !dbg !2984

; <label>:35:                                     ; preds = %30, %25, %18
  br label %74, !dbg !2986

; <label>:36:                                     ; preds = %30
  %37 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !2988
  %38 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %37, i32 0, i32 3, !dbg !2989
  %39 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %38, align 8, !dbg !2989
  %40 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %39, i32 0, i32 9, !dbg !2990
  %41 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %40, align 8, !dbg !2990
  %42 = call %struct._GIOChannel* @net_sendbuffer_handle(%struct._NET_SENDBUF_REC* %41), !dbg !2991
  %43 = call %struct._GIOChannel* @dcc_listen(%struct._GIOChannel* %42, %struct._IPADDR* %3, i32* %4), !dbg !2992
  store %struct._GIOChannel* %43, %struct._GIOChannel** %5, align 8, !dbg !2993
  %44 = load %struct._GIOChannel*, %struct._GIOChannel** %5, align 8, !dbg !2994
  %45 = icmp eq %struct._GIOChannel* %44, null, !dbg !2996
  br i1 %45, label %46, label %50, !dbg !2997

; <label>:46:                                     ; preds = %36
  br label %47, !dbg !2998, !llvm.loop !2999

; <label>:47:                                     ; preds = %46
  %48 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), i32 1, i8* inttoptr (i64 2 to i8*)), !dbg !3000
  call void @signal_stop(), !dbg !3003
  br label %74, !dbg !3005
                                                  ; No predecessors!
  br label %50, !dbg !3006

; <label>:50:                                     ; preds = %49, %36
  %51 = load %struct._GIOChannel*, %struct._GIOChannel** %5, align 8, !dbg !3008
  %52 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !3009
  %53 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %52, i32 0, i32 13, !dbg !3010
  store %struct._GIOChannel* %51, %struct._GIOChannel** %53, align 8, !dbg !3011
  %54 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !3012
  %55 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %54, i32 0, i32 13, !dbg !3013
  %56 = load %struct._GIOChannel*, %struct._GIOChannel** %55, align 8, !dbg !3013
  %57 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !3014
  %58 = bitcast %struct.CHAT_DCC_REC* %57 to i8*, !dbg !3014
  %59 = call i32 @g_input_add(%struct._GIOChannel* %56, i32 1, void (i8*, %struct._GIOChannel*, i32)* bitcast (void (%struct.CHAT_DCC_REC*)* @dcc_chat_listen to void (i8*, %struct._GIOChannel*, i32)*), i8* %58), !dbg !3015
  %60 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !3016
  %61 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %60, i32 0, i32 14, !dbg !3017
  store i32 %59, i32* %61, align 8, !dbg !3018
  %62 = getelementptr inbounds [46 x i8], [46 x i8]* %6, i32 0, i32 0, !dbg !3019
  call void @dcc_ip2str(%struct._IPADDR* %3, i8* %62), !dbg !3020
  %63 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !3021
  %64 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %63, i32 0, i32 3, !dbg !3022
  %65 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %64, align 8, !dbg !3022
  %66 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !3023
  %67 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %66, i32 0, i32 6, !dbg !3024
  %68 = load i8*, i8** %67, align 8, !dbg !3024
  %69 = getelementptr inbounds [46 x i8], [46 x i8]* %6, i32 0, i32 0, !dbg !3025
  %70 = load i32, i32* %4, align 4, !dbg !3026
  %71 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !3027
  %72 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %71, i32 0, i32 19, !dbg !3028
  %73 = load i32, i32* %72, align 8, !dbg !3028
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %65, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.51, i32 0, i32 0), i8* %68, i8* %69, i32 %70, i32 %73), !dbg !3029
  br label %74, !dbg !3030

; <label>:74:                                     ; preds = %50, %47, %35, %16
  ret void, !dbg !3031
}

declare void @dcc_destroy(%struct.DCC_REC*) #2

declare void @g_warn_message(i8*, i8*, i32, i8*, i8*) #2

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

declare %struct._GIOChannel* @dcc_listen(%struct._GIOChannel*, %struct._IPADDR*, i32*) #2

declare %struct._GIOChannel* @net_sendbuffer_handle(%struct._NET_SENDBUF_REC*) #2

declare i32 @g_input_add(%struct._GIOChannel*, i32, void (i8*, %struct._GIOChannel*, i32)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @dcc_chat_listen(%struct.CHAT_DCC_REC*) #0 !dbg !3032 {
  %2 = alloca %struct.CHAT_DCC_REC*, align 8
  %3 = alloca %struct._IPADDR, align 4
  %4 = alloca %struct._GIOChannel*, align 8
  %5 = alloca i32, align 4
  store %struct.CHAT_DCC_REC* %0, %struct.CHAT_DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %2, metadata !3033, metadata !821), !dbg !3034
  call void @llvm.dbg.declare(metadata %struct._IPADDR* %3, metadata !3035, metadata !821), !dbg !3036
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %4, metadata !3037, metadata !821), !dbg !3038
  call void @llvm.dbg.declare(metadata i32* %5, metadata !3039, metadata !821), !dbg !3040
  br label %6, !dbg !3041, !llvm.loop !3042

; <label>:6:                                      ; preds = %1
  %7 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !3043
  %8 = bitcast %struct.CHAT_DCC_REC* %7 to i8*, !dbg !3043
  %9 = call i8* @module_check_cast_module(i8* %8, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)), !dbg !3047
  %10 = bitcast i8* %9 to %struct.CHAT_DCC_REC*, !dbg !3048
  %11 = icmp ne %struct.CHAT_DCC_REC* %10, null, !dbg !3048
  br i1 %11, label %12, label %13, !dbg !3049

; <label>:12:                                     ; preds = %6
  br i1 false, label %15, label %14, !dbg !3050

; <label>:13:                                     ; preds = %6
  br i1 false, label %14, label %15, !dbg !3052

; <label>:14:                                     ; preds = %13, %12
  br label %16, !dbg !3054

; <label>:15:                                     ; preds = %13, %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.dcc_chat_listen, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0)), !dbg !3057
  br label %66, !dbg !3060

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !3061

; <label>:17:                                     ; preds = %16
  %18 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !3063
  %19 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %18, i32 0, i32 13, !dbg !3064
  %20 = load %struct._GIOChannel*, %struct._GIOChannel** %19, align 8, !dbg !3064
  %21 = call %struct._GIOChannel* @net_accept(%struct._GIOChannel* %20, %struct._IPADDR* %3, i32* %5), !dbg !3065
  store %struct._GIOChannel* %21, %struct._GIOChannel** %4, align 8, !dbg !3066
  %22 = load %struct._GIOChannel*, %struct._GIOChannel** %4, align 8, !dbg !3067
  %23 = icmp eq %struct._GIOChannel* %22, null, !dbg !3069
  br i1 %23, label %24, label %25, !dbg !3070

; <label>:24:                                     ; preds = %17
  br label %66, !dbg !3071

; <label>:25:                                     ; preds = %17
  %26 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !3072
  %27 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %26, i32 0, i32 13, !dbg !3073
  %28 = load %struct._GIOChannel*, %struct._GIOChannel** %27, align 8, !dbg !3073
  call void @net_disconnect(%struct._GIOChannel* %28), !dbg !3074
  %29 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !3075
  %30 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %29, i32 0, i32 14, !dbg !3076
  %31 = load i32, i32* %30, align 8, !dbg !3076
  %32 = call i32 @g_source_remove(i32 %31), !dbg !3077
  %33 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !3078
  %34 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %33, i32 0, i32 14, !dbg !3079
  store i32 -1, i32* %34, align 8, !dbg !3080
  %35 = call i64 @time(i64* null) #7, !dbg !3081
  %36 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !3082
  %37 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %36, i32 0, i32 17, !dbg !3083
  store i64 %35, i64* %37, align 8, !dbg !3084
  %38 = load %struct._GIOChannel*, %struct._GIOChannel** %4, align 8, !dbg !3085
  %39 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !3086
  %40 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %39, i32 0, i32 13, !dbg !3087
  store %struct._GIOChannel* %38, %struct._GIOChannel** %40, align 8, !dbg !3088
  %41 = load %struct._GIOChannel*, %struct._GIOChannel** %4, align 8, !dbg !3089
  %42 = call %struct._NET_SENDBUF_REC* @net_sendbuffer_create(%struct._GIOChannel* %41, i32 0), !dbg !3090
  %43 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !3091
  %44 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %43, i32 0, i32 23, !dbg !3092
  store %struct._NET_SENDBUF_REC* %42, %struct._NET_SENDBUF_REC** %44, align 8, !dbg !3093
  %45 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !3094
  %46 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %45, i32 0, i32 10, !dbg !3095
  %47 = bitcast %struct._IPADDR* %46 to i8*, !dbg !3096
  %48 = bitcast %struct._IPADDR* %3 to i8*, !dbg !3096
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 20, i32 4, i1 false), !dbg !3096
  %49 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !3097
  %50 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %49, i32 0, i32 10, !dbg !3098
  %51 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !3099
  %52 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %51, i32 0, i32 11, !dbg !3100
  %53 = getelementptr inbounds [46 x i8], [46 x i8]* %52, i32 0, i32 0, !dbg !3099
  %54 = call i32 @net_ip2host(%struct._IPADDR* %50, i8* %53), !dbg !3101
  %55 = load i32, i32* %5, align 4, !dbg !3102
  %56 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !3103
  %57 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %56, i32 0, i32 12, !dbg !3104
  store i32 %55, i32* %57, align 4, !dbg !3105
  %58 = load %struct._GIOChannel*, %struct._GIOChannel** %4, align 8, !dbg !3106
  %59 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !3107
  %60 = bitcast %struct.CHAT_DCC_REC* %59 to i8*, !dbg !3107
  %61 = call i32 @g_input_add(%struct._GIOChannel* %58, i32 1, void (i8*, %struct._GIOChannel*, i32)* bitcast (void (%struct.CHAT_DCC_REC*)* @dcc_chat_input to void (i8*, %struct._GIOChannel*, i32)*), i8* %60), !dbg !3108
  %62 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !3109
  %63 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %62, i32 0, i32 15, !dbg !3110
  store i32 %61, i32* %63, align 4, !dbg !3111
  %64 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !3112
  %65 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i32 0, i32 0), i32 1, %struct.CHAT_DCC_REC* %64), !dbg !3113
  br label %66, !dbg !3114

; <label>:66:                                     ; preds = %25, %24, %15
  ret void, !dbg !3115
}

declare void @dcc_ip2str(%struct._IPADDR*, i8*) #2

; Function Attrs: nounwind
declare i32 @rand() #4

declare %struct._GIOChannel* @dcc_connect_ip(%struct._IPADDR*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @sig_chat_connected(%struct.CHAT_DCC_REC*) #0 !dbg !3117 {
  %2 = alloca %struct.CHAT_DCC_REC*, align 8
  store %struct.CHAT_DCC_REC* %0, %struct.CHAT_DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %2, metadata !3118, metadata !821), !dbg !3119
  br label %3, !dbg !3120, !llvm.loop !3121

; <label>:3:                                      ; preds = %1
  %4 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !3122
  %5 = bitcast %struct.CHAT_DCC_REC* %4 to i8*, !dbg !3122
  %6 = call i8* @module_check_cast_module(i8* %5, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)), !dbg !3126
  %7 = bitcast i8* %6 to %struct.CHAT_DCC_REC*, !dbg !3127
  %8 = icmp ne %struct.CHAT_DCC_REC* %7, null, !dbg !3127
  br i1 %8, label %9, label %10, !dbg !3128

; <label>:9:                                      ; preds = %3
  br i1 false, label %12, label %11, !dbg !3129

; <label>:10:                                     ; preds = %3
  br i1 false, label %11, label %12, !dbg !3131

; <label>:11:                                     ; preds = %10, %9
  br label %13, !dbg !3133

; <label>:12:                                     ; preds = %10, %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.sig_chat_connected, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0)), !dbg !3136
  br label %51, !dbg !3139

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !3140

; <label>:14:                                     ; preds = %13
  %15 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !3142
  %16 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %15, i32 0, i32 13, !dbg !3144
  %17 = load %struct._GIOChannel*, %struct._GIOChannel** %16, align 8, !dbg !3144
  %18 = call i32 @net_geterror(%struct._GIOChannel* %17), !dbg !3145
  %19 = icmp ne i32 %18, 0, !dbg !3146
  br i1 %19, label %20, label %25, !dbg !3147

; <label>:20:                                     ; preds = %14
  %21 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !3148
  %22 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.49, i32 0, i32 0), i32 1, %struct.CHAT_DCC_REC* %21), !dbg !3150
  %23 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !3151
  %24 = bitcast %struct.CHAT_DCC_REC* %23 to %struct.DCC_REC*, !dbg !3152
  call void @dcc_destroy(%struct.DCC_REC* %24), !dbg !3153
  br label %51, !dbg !3154

; <label>:25:                                     ; preds = %14
  %26 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !3155
  %27 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %26, i32 0, i32 14, !dbg !3156
  %28 = load i32, i32* %27, align 8, !dbg !3156
  %29 = call i32 @g_source_remove(i32 %28), !dbg !3157
  %30 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !3158
  %31 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %30, i32 0, i32 14, !dbg !3159
  store i32 -1, i32* %31, align 8, !dbg !3160
  %32 = call i64 @time(i64* null) #7, !dbg !3161
  %33 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !3162
  %34 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %33, i32 0, i32 17, !dbg !3163
  store i64 %32, i64* %34, align 8, !dbg !3164
  %35 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !3165
  %36 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %35, i32 0, i32 13, !dbg !3166
  %37 = load %struct._GIOChannel*, %struct._GIOChannel** %36, align 8, !dbg !3166
  %38 = call %struct._NET_SENDBUF_REC* @net_sendbuffer_create(%struct._GIOChannel* %37, i32 0), !dbg !3167
  %39 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !3168
  %40 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %39, i32 0, i32 23, !dbg !3169
  store %struct._NET_SENDBUF_REC* %38, %struct._NET_SENDBUF_REC** %40, align 8, !dbg !3170
  %41 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !3171
  %42 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %41, i32 0, i32 13, !dbg !3172
  %43 = load %struct._GIOChannel*, %struct._GIOChannel** %42, align 8, !dbg !3172
  %44 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !3173
  %45 = bitcast %struct.CHAT_DCC_REC* %44 to i8*, !dbg !3173
  %46 = call i32 @g_input_add(%struct._GIOChannel* %43, i32 1, void (i8*, %struct._GIOChannel*, i32)* bitcast (void (%struct.CHAT_DCC_REC*)* @dcc_chat_input to void (i8*, %struct._GIOChannel*, i32)*), i8* %45), !dbg !3174
  %47 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !3175
  %48 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %47, i32 0, i32 15, !dbg !3176
  store i32 %46, i32* %48, align 4, !dbg !3177
  %49 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !3178
  %50 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i32 0, i32 0), i32 1, %struct.CHAT_DCC_REC* %49), !dbg !3179
  br label %51, !dbg !3180

; <label>:51:                                     ; preds = %25, %20, %12
  ret void, !dbg !3181
}

declare i32 @net_geterror(%struct._GIOChannel*) #2

declare i32 @g_source_remove(i32) #2

; Function Attrs: nounwind
declare i64 @time(i64*) #4

declare %struct._NET_SENDBUF_REC* @net_sendbuffer_create(%struct._GIOChannel*, i32) #2

declare %struct._GIOChannel* @net_accept(%struct._GIOChannel*, %struct._IPADDR*, i32*) #2

declare void @net_disconnect(%struct._GIOChannel*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #5

declare i32 @net_ip2host(%struct._IPADDR*, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @toupper(i32) #3

declare i32 @g_ascii_strncasecmp(i8*, i8*, i64) #2

declare void @dcc_reject(%struct.DCC_REC*, %struct._IRC_SERVER_REC*) #2

; Function Attrs: nounwind uwtable
define internal void @dcc_remove_chat_refs(%struct.CHAT_DCC_REC*) #0 !dbg !3183 {
  %2 = alloca %struct.CHAT_DCC_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct.DCC_REC*, align 8
  store %struct.CHAT_DCC_REC* %0, %struct.CHAT_DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %2, metadata !3184, metadata !821), !dbg !3185
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !3186, metadata !821), !dbg !3187
  br label %5, !dbg !3188, !llvm.loop !3189

; <label>:5:                                      ; preds = %1
  %6 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !3190
  %7 = icmp ne %struct.CHAT_DCC_REC* %6, null, !dbg !3194
  br i1 %7, label %8, label %9, !dbg !3190

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !3195

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.dcc_remove_chat_refs, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i32 0, i32 0)), !dbg !3198
  br label %34, !dbg !3201

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !3202

; <label>:11:                                     ; preds = %10
  %12 = load %struct._GSList*, %struct._GSList** @dcc_conns, align 8, !dbg !3204
  store %struct._GSList* %12, %struct._GSList** %3, align 8, !dbg !3206
  br label %13, !dbg !3207

; <label>:13:                                     ; preds = %30, %11
  %14 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !3208
  %15 = icmp ne %struct._GSList* %14, null, !dbg !3211
  br i1 %15, label %16, label %34, !dbg !3212

; <label>:16:                                     ; preds = %13
  call void @llvm.dbg.declare(metadata %struct.DCC_REC** %4, metadata !3213, metadata !821), !dbg !3215
  %17 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !3216
  %18 = getelementptr inbounds %struct._GSList, %struct._GSList* %17, i32 0, i32 0, !dbg !3217
  %19 = load i8*, i8** %18, align 8, !dbg !3217
  %20 = bitcast i8* %19 to %struct.DCC_REC*, !dbg !3216
  store %struct.DCC_REC* %20, %struct.DCC_REC** %4, align 8, !dbg !3215
  %21 = load %struct.DCC_REC*, %struct.DCC_REC** %4, align 8, !dbg !3218
  %22 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %21, i32 0, i32 7, !dbg !3220
  %23 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %22, align 8, !dbg !3220
  %24 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !3221
  %25 = icmp eq %struct.CHAT_DCC_REC* %23, %24, !dbg !3222
  br i1 %25, label %26, label %29, !dbg !3223

; <label>:26:                                     ; preds = %16
  %27 = load %struct.DCC_REC*, %struct.DCC_REC** %4, align 8, !dbg !3224
  %28 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %27, i32 0, i32 7, !dbg !3225
  store %struct.CHAT_DCC_REC* null, %struct.CHAT_DCC_REC** %28, align 8, !dbg !3226
  br label %29, !dbg !3224

; <label>:29:                                     ; preds = %26, %16
  br label %30, !dbg !3227

; <label>:30:                                     ; preds = %29
  %31 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !3228
  %32 = getelementptr inbounds %struct._GSList, %struct._GSList* %31, i32 0, i32 1, !dbg !3230
  %33 = load %struct._GSList*, %struct._GSList** %32, align 8, !dbg !3230
  store %struct._GSList* %33, %struct._GSList** %3, align 8, !dbg !3231
  br label %13, !dbg !3232, !llvm.loop !3233

; <label>:34:                                     ; preds = %9, %13
  ret void, !dbg !3235
}

declare void @net_sendbuffer_destroy(%struct._NET_SENDBUF_REC*, i32) #2

declare noalias i8** @g_strsplit(i8*, i8*, i32) #2

declare i32 @g_strv_length(i8**) #2

declare void @g_strfreev(i8**) #2

declare %struct.DCC_REC* @dcc_find_request(i32, i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

declare void @dcc_str2ip(i8*, %struct._IPADDR*) #2

declare i32 @masks_match(%struct._SERVER_REC*, i8*, i8*, i8*) #2

declare i8* @settings_get_str(i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

declare noalias i8* @g_ascii_strup(i8*, i64) #2

declare i8* @ascii_strdown(i8*) #2

declare i8* @event_get_params(i8*, i32, ...) #2

; Function Attrs: nounwind uwtable
define internal %struct.CHAT_DCC_REC* @dcc_chat_find_nick(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !3236 {
  %3 = alloca %struct.CHAT_DCC_REC*, align 8
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct.CHAT_DCC_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !3239, metadata !821), !dbg !3240
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3241, metadata !821), !dbg !3242
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !3243, metadata !821), !dbg !3244
  br label %8, !dbg !3245, !llvm.loop !3246

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %5, align 8, !dbg !3247
  %10 = icmp ne i8* %9, null, !dbg !3251
  br i1 %10, label %11, label %12, !dbg !3247

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !3252

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.dcc_chat_find_nick, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0)), !dbg !3255
  store %struct.CHAT_DCC_REC* null, %struct.CHAT_DCC_REC** %3, align 8, !dbg !3258
  br label %52, !dbg !3258

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !3259

; <label>:14:                                     ; preds = %13
  %15 = load %struct._GSList*, %struct._GSList** @dcc_conns, align 8, !dbg !3261
  store %struct._GSList* %15, %struct._GSList** %6, align 8, !dbg !3263
  br label %16, !dbg !3264

; <label>:16:                                     ; preds = %47, %14
  %17 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !3265
  %18 = icmp ne %struct._GSList* %17, null, !dbg !3268
  br i1 %18, label %19, label %51, !dbg !3269

; <label>:19:                                     ; preds = %16
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %7, metadata !3270, metadata !821), !dbg !3272
  %20 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !3273
  %21 = getelementptr inbounds %struct._GSList, %struct._GSList* %20, i32 0, i32 0, !dbg !3274
  %22 = load i8*, i8** %21, align 8, !dbg !3274
  %23 = bitcast i8* %22 to %struct.CHAT_DCC_REC*, !dbg !3273
  store %struct.CHAT_DCC_REC* %23, %struct.CHAT_DCC_REC** %7, align 8, !dbg !3272
  %24 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %7, align 8, !dbg !3275
  %25 = bitcast %struct.CHAT_DCC_REC* %24 to i8*, !dbg !3275
  %26 = call i8* @module_check_cast_module(i8* %25, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0)), !dbg !3277
  %27 = bitcast i8* %26 to %struct.CHAT_DCC_REC*, !dbg !3278
  %28 = icmp ne %struct.CHAT_DCC_REC* %27, null, !dbg !3278
  br i1 %28, label %29, label %30, !dbg !3279

; <label>:29:                                     ; preds = %19
  br i1 false, label %46, label %31, !dbg !3280

; <label>:30:                                     ; preds = %19
  br i1 false, label %31, label %46, !dbg !3282

; <label>:31:                                     ; preds = %30, %29
  %32 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %7, align 8, !dbg !3284
  %33 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %32, i32 0, i32 3, !dbg !3286
  %34 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %33, align 8, !dbg !3286
  %35 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !3287
  %36 = icmp eq %struct._IRC_SERVER_REC* %34, %35, !dbg !3288
  br i1 %36, label %37, label %46, !dbg !3289

; <label>:37:                                     ; preds = %31
  %38 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %7, align 8, !dbg !3290
  %39 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %38, i32 0, i32 6, !dbg !3291
  %40 = load i8*, i8** %39, align 8, !dbg !3291
  %41 = load i8*, i8** %5, align 8, !dbg !3292
  %42 = call i32 @g_ascii_strcasecmp(i8* %40, i8* %41), !dbg !3293
  %43 = icmp eq i32 %42, 0, !dbg !3294
  br i1 %43, label %44, label %46, !dbg !3295

; <label>:44:                                     ; preds = %37
  %45 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %7, align 8, !dbg !3297
  store %struct.CHAT_DCC_REC* %45, %struct.CHAT_DCC_REC** %3, align 8, !dbg !3298
  br label %52, !dbg !3298

; <label>:46:                                     ; preds = %37, %31, %30, %29
  br label %47, !dbg !3299

; <label>:47:                                     ; preds = %46
  %48 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !3300
  %49 = getelementptr inbounds %struct._GSList, %struct._GSList* %48, i32 0, i32 1, !dbg !3302
  %50 = load %struct._GSList*, %struct._GSList** %49, align 8, !dbg !3302
  store %struct._GSList* %50, %struct._GSList** %6, align 8, !dbg !3303
  br label %16, !dbg !3304, !llvm.loop !3305

; <label>:51:                                     ; preds = %16
  store %struct.CHAT_DCC_REC* null, %struct.CHAT_DCC_REC** %3, align 8, !dbg !3307
  br label %52, !dbg !3307

; <label>:52:                                     ; preds = %51, %44, %12
  %53 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !3308
  ret %struct.CHAT_DCC_REC* %53, !dbg !3308
}

declare %struct._QUERY_REC* @irc_query_find(%struct._IRC_SERVER_REC*, i8*) #2

declare void @query_change_nick(%struct._QUERY_REC*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!812, !813}
!llvm.ident = !{!814}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !56)
!1 = !DIFile(filename: "line166-dcc-chat.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!56 = !{!57, !775, !214, !170, !510, !422, !606, !801, !213, !412, !74, !808, !549, !65, !125}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAT_DCC_REC", file: !59, line: 9, baseType: !60)
!59 = !DIFile(filename: "dcc.h", directory: "/home/lichi/Desktop/irssi/task1")
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CHAT_DCC_REC", file: !61, line: 12, size: 1792, align: 64, elements: !62)
!61 = !DIFile(filename: "dcc-chat.h", directory: "/home/lichi/Desktop/irssi/task1")
!62 = !{!63, !66, !67, !73, !749, !750, !751, !752, !753, !754, !755, !756, !760, !761, !762, !763, !764, !765, !766, !768, !769, !770, !771, !772, !773, !774}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !60, file: !64, line: 1, baseType: !65, size: 32, align: 32)
!64 = !DIFile(filename: "dcc-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!65 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !60, file: !64, line: 2, baseType: !65, size: 32, align: 32, offset: 32)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "created", scope: !60, file: !64, line: 3, baseType: !68, size: 64, align: 64, offset: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !69, line: 75, baseType: !70)
!69 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !71, line: 139, baseType: !72)
!71 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!72 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !60, file: !64, line: 5, baseType: !74, size: 64, align: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !76, line: 6, baseType: !77)
!76 = !DIFile(filename: "../../../src/irc/core/irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !78, line: 42, size: 39168, align: 64, elements: !79)
!78 = !DIFile(filename: "../../../src/irc/core/irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!79 = !{!80, !82, !83, !84, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !384, !385, !389, !390, !391, !395, !400, !401, !402, !403, !404, !405, !406, !407, !414, !415, !416, !417, !418, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !746, !748}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !77, file: !81, line: 3, baseType: !65, size: 32, align: 32)
!81 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!82 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !77, file: !81, line: 4, baseType: !65, size: 32, align: 32, offset: 32)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !77, file: !81, line: 6, baseType: !65, size: 32, align: 32, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !77, file: !81, line: 8, baseType: !85, size: 64, align: 64, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !76, line: 5, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !78, line: 24, size: 2496, align: 64, elements: !88)
!88 = !{!89, !91, !92, !93, !96, !97, !98, !99, !100, !102, !103, !104, !105, !106, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !87, file: !90, line: 3, baseType: !65, size: 32, align: 32)
!90 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!91 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !87, file: !90, line: 4, baseType: !65, size: 32, align: 32, offset: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !87, file: !90, line: 6, baseType: !65, size: 32, align: 32, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !87, file: !90, line: 9, baseType: !94, size: 64, align: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !87, file: !90, line: 10, baseType: !65, size: 32, align: 32, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !87, file: !90, line: 11, baseType: !94, size: 64, align: 64, offset: 256)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !87, file: !90, line: 11, baseType: !94, size: 64, align: 64, offset: 320)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !87, file: !90, line: 11, baseType: !94, size: 64, align: 64, offset: 384)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !87, file: !90, line: 13, baseType: !101, size: 16, align: 16, offset: 448)
!101 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !87, file: !90, line: 14, baseType: !94, size: 64, align: 64, offset: 512)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !87, file: !90, line: 15, baseType: !94, size: 64, align: 64, offset: 576)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !87, file: !90, line: 16, baseType: !65, size: 32, align: 32, offset: 640)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !87, file: !90, line: 17, baseType: !94, size: 64, align: 64, offset: 704)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !87, file: !90, line: 19, baseType: !107, size: 64, align: 64, offset: 768)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !109, line: 99, baseType: !110)
!109 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !111, line: 22, size: 160, align: 32, elements: !112)
!111 = !DIFile(filename: "../../../src/core/network.h", directory: "/home/lichi/Desktop/irssi/task1")
!112 = !{!113, !114}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !110, file: !111, line: 23, baseType: !101, size: 16, align: 16)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !110, file: !111, line: 24, baseType: !115, size: 128, align: 32, offset: 32)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !116, line: 211, size: 128, align: 32, elements: !117)
!116 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/irssi/task1")
!117 = !{!118}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !115, file: !116, line: 220, baseType: !119, size: 128, align: 32)
!119 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !115, file: !116, line: 213, size: 128, align: 32, elements: !120)
!120 = !{!121, !128, !133}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !119, file: !116, line: 215, baseType: !122, size: 128, align: 8)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 128, align: 8, elements: !126)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !124, line: 48, baseType: !125)
!124 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/irssi/task1")
!125 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!126 = !{!127}
!127 = !DISubrange(count: 16)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !119, file: !116, line: 217, baseType: !129, size: 128, align: 16)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 128, align: 16, elements: !131)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !124, line: 49, baseType: !101)
!131 = !{!132}
!132 = !DISubrange(count: 8)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !119, file: !116, line: 218, baseType: !134, size: 128, align: 32)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 128, align: 32, elements: !137)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !124, line: 51, baseType: !136)
!136 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!137 = !{!138}
!138 = !DISubrange(count: 4)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !87, file: !90, line: 19, baseType: !107, size: 64, align: 64, offset: 832)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !87, file: !90, line: 21, baseType: !94, size: 64, align: 64, offset: 896)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !87, file: !90, line: 22, baseType: !94, size: 64, align: 64, offset: 960)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !87, file: !90, line: 23, baseType: !94, size: 64, align: 64, offset: 1024)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !87, file: !90, line: 24, baseType: !94, size: 64, align: 64, offset: 1088)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !87, file: !90, line: 26, baseType: !94, size: 64, align: 64, offset: 1152)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !87, file: !90, line: 27, baseType: !94, size: 64, align: 64, offset: 1216)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !87, file: !90, line: 28, baseType: !94, size: 64, align: 64, offset: 1280)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !87, file: !90, line: 29, baseType: !94, size: 64, align: 64, offset: 1344)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !87, file: !90, line: 30, baseType: !94, size: 64, align: 64, offset: 1408)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !87, file: !90, line: 31, baseType: !94, size: 64, align: 64, offset: 1472)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !87, file: !90, line: 32, baseType: !94, size: 64, align: 64, offset: 1536)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !87, file: !90, line: 33, baseType: !94, size: 64, align: 64, offset: 1600)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !87, file: !90, line: 35, baseType: !153, size: 64, align: 64, offset: 1664)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64, align: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !155)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !156)
!156 = !{!157, !160, !303, !304, !309, !310, !311, !312, !313, !322, !323, !324, !328, !329, !330, !331, !332, !333, !334, !335}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !155, file: !4, line: 100, baseType: !158, size: 32, align: 32)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !159, line: 49, baseType: !65)
!159 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!160 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !155, file: !4, line: 101, baseType: !161, size: 64, align: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64, align: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !164)
!164 = !{!165, !188, !194, !200, !204, !290, !294, !299}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !163, file: !4, line: 133, baseType: !166, size: 64, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{!169, !153, !170, !172, !175, !176}
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64, align: 64)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !159, line: 46, baseType: !95)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !173, line: 66, baseType: !174)
!173 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!174 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64, align: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !179, line: 42, baseType: !180)
!179 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !179, line: 44, size: 128, align: 64, elements: !181)
!181 = !{!182, !186, !187}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !180, file: !179, line: 46, baseType: !183, size: 32, align: 32)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !184, line: 36, baseType: !185)
!184 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !173, line: 45, baseType: !136)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !180, file: !179, line: 47, baseType: !158, size: 32, align: 32, offset: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !180, file: !179, line: 48, baseType: !170, size: 64, align: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !163, file: !4, line: 138, baseType: !189, size: 64, align: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!169, !153, !192, !172, !175, !176}
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !163, file: !4, line: 143, baseType: !195, size: 64, align: 64, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!169, !153, !198, !199, !176}
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !173, line: 51, baseType: !72)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !163, file: !4, line: 147, baseType: !201, size: 64, align: 64, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!169, !153, !176}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !163, file: !4, line: 149, baseType: !205, size: 64, align: 64, offset: 256)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{!208, !153, !289}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !210)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !211)
!211 = !{!212, !215, !236, !265, !267, !271, !272, !273, !274, !282, !283, !284, !285}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !210, file: !16, line: 174, baseType: !213, size: 64, align: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !159, line: 77, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !210, file: !16, line: 175, baseType: !216, size: 64, align: 64, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !218)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !219)
!219 = !{!220, !224, !225}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !218, file: !16, line: 198, baseType: !221, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !213}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !218, file: !16, line: 199, baseType: !221, size: 64, align: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !218, file: !16, line: 200, baseType: !226, size: 64, align: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !213, !208, !229, !235}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, align: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!234, !213}
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !159, line: 50, baseType: !158)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !210, file: !16, line: 177, baseType: !237, size: 64, align: 64, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, align: 64)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !240)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !241)
!241 = !{!242, !247, !251, !255, !259, !260}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !240, file: !16, line: 216, baseType: !243, size: 64, align: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!244 = !DISubroutineType(types: !245)
!245 = !{!234, !208, !246}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !240, file: !16, line: 218, baseType: !248, size: 64, align: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64, align: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!234, !208}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !240, file: !16, line: 219, baseType: !252, size: 64, align: 64, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64, align: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!234, !208, !230, !213}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !240, file: !16, line: 222, baseType: !256, size: 64, align: 64, offset: 192)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64, align: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{null, !208}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !240, file: !16, line: 226, baseType: !230, size: 64, align: 64, offset: 256)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !240, file: !16, line: 227, baseType: !261, size: 64, align: 64, offset: 320)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64, align: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{null}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !210, file: !16, line: 178, baseType: !266, size: 32, align: 32, offset: 192)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !159, line: 55, baseType: !136)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !210, file: !16, line: 180, baseType: !268, size: 64, align: 64, offset: 256)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64, align: 64)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !270)
!270 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !210, file: !16, line: 182, baseType: !158, size: 32, align: 32, offset: 320)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !210, file: !16, line: 183, baseType: !266, size: 32, align: 32, offset: 352)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !210, file: !16, line: 184, baseType: !266, size: 32, align: 32, offset: 384)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !210, file: !16, line: 186, baseType: !275, size: 64, align: 64, offset: 448)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, align: 64)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !277, line: 37, baseType: !278)
!277 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !277, line: 39, size: 128, align: 64, elements: !279)
!279 = !{!280, !281}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !278, file: !277, line: 41, baseType: !213, size: 64, align: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !278, file: !277, line: 42, baseType: !275, size: 64, align: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !210, file: !16, line: 188, baseType: !208, size: 64, align: 64, offset: 512)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !210, file: !16, line: 189, baseType: !208, size: 64, align: 64, offset: 576)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !210, file: !16, line: 191, baseType: !94, size: 64, align: 64, offset: 640)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !210, file: !16, line: 193, baseType: !286, size: 64, align: 64, offset: 704)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64, align: 64)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !288)
!288 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !163, file: !4, line: 151, baseType: !291, size: 64, align: 64, offset: 320)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64, align: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !153}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !163, file: !4, line: 152, baseType: !295, size: 64, align: 64, offset: 384)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, align: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{!169, !153, !298, !176}
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !163, file: !4, line: 155, baseType: !300, size: 64, align: 64, offset: 448)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!298, !153}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !155, file: !4, line: 103, baseType: !170, size: 64, align: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !155, file: !4, line: 104, baseType: !305, size: 64, align: 64, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !306, line: 77, baseType: !307)
!306 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64, align: 64)
!308 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !306, line: 77, flags: DIFlagFwdDecl)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !155, file: !4, line: 105, baseType: !305, size: 64, align: 64, offset: 256)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !155, file: !4, line: 106, baseType: !170, size: 64, align: 64, offset: 320)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !155, file: !4, line: 107, baseType: !266, size: 32, align: 32, offset: 384)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !155, file: !4, line: 109, baseType: !172, size: 64, align: 64, offset: 448)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !155, file: !4, line: 110, baseType: !314, size: 64, align: 64, offset: 512)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64, align: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !316, line: 39, baseType: !317)
!316 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !316, line: 41, size: 192, align: 64, elements: !318)
!318 = !{!319, !320, !321}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !317, file: !316, line: 43, baseType: !170, size: 64, align: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !317, file: !316, line: 44, baseType: !172, size: 64, align: 64, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !317, file: !316, line: 45, baseType: !172, size: 64, align: 64, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !155, file: !4, line: 111, baseType: !314, size: 64, align: 64, offset: 576)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !155, file: !4, line: 112, baseType: !314, size: 64, align: 64, offset: 640)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !155, file: !4, line: 113, baseType: !325, size: 48, align: 8, offset: 704)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 48, align: 8, elements: !326)
!326 = !{!327}
!327 = !DISubrange(count: 6)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !155, file: !4, line: 117, baseType: !266, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !155, file: !4, line: 118, baseType: !266, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !155, file: !4, line: 119, baseType: !266, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !155, file: !4, line: 120, baseType: !266, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !155, file: !4, line: 121, baseType: !266, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !155, file: !4, line: 122, baseType: !266, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !155, file: !4, line: 124, baseType: !213, size: 64, align: 64, offset: 768)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !155, file: !4, line: 125, baseType: !213, size: 64, align: 64, offset: 832)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !87, file: !90, line: 38, baseType: !136, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !87, file: !90, line: 39, baseType: !136, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !87, file: !90, line: 40, baseType: !136, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !87, file: !90, line: 41, baseType: !136, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !87, file: !90, line: 42, baseType: !136, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !87, file: !90, line: 43, baseType: !136, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !87, file: !90, line: 44, baseType: !136, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !87, file: !90, line: 45, baseType: !136, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !87, file: !90, line: 46, baseType: !94, size: 64, align: 64, offset: 1792)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !87, file: !90, line: 47, baseType: !94, size: 64, align: 64, offset: 1856)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !87, file: !78, line: 27, baseType: !94, size: 64, align: 64, offset: 1920)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !87, file: !78, line: 28, baseType: !94, size: 64, align: 64, offset: 1984)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !87, file: !78, line: 30, baseType: !65, size: 32, align: 32, offset: 2048)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !87, file: !78, line: 31, baseType: !94, size: 64, align: 64, offset: 2112)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !87, file: !78, line: 32, baseType: !94, size: 64, align: 64, offset: 2176)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !87, file: !78, line: 34, baseType: !65, size: 32, align: 32, offset: 2240)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !87, file: !78, line: 35, baseType: !65, size: 32, align: 32, offset: 2272)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !87, file: !78, line: 36, baseType: !65, size: 32, align: 32, offset: 2304)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !87, file: !78, line: 38, baseType: !65, size: 32, align: 32, offset: 2336)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !87, file: !78, line: 38, baseType: !65, size: 32, align: 32, offset: 2368)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !87, file: !78, line: 38, baseType: !65, size: 32, align: 32, offset: 2400)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !87, file: !78, line: 38, baseType: !65, size: 32, align: 32, offset: 2432)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !77, file: !81, line: 9, baseType: !68, size: 64, align: 64, offset: 192)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !77, file: !81, line: 10, baseType: !68, size: 64, align: 64, offset: 256)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !77, file: !81, line: 12, baseType: !94, size: 64, align: 64, offset: 320)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !77, file: !81, line: 13, baseType: !94, size: 64, align: 64, offset: 384)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !77, file: !81, line: 15, baseType: !136, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !77, file: !81, line: 16, baseType: !136, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !77, file: !81, line: 17, baseType: !136, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !77, file: !81, line: 18, baseType: !136, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !77, file: !81, line: 19, baseType: !136, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !77, file: !81, line: 21, baseType: !368, size: 64, align: 64, offset: 512)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !109, line: 102, baseType: !370)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !371, line: 7, size: 384, align: 64, elements: !372)
!371 = !DIFile(filename: "../../../src/core/net-sendbuffer.h", directory: "/home/lichi/Desktop/irssi/task1")
!372 = !{!373, !374, !378, !379, !380, !381, !382, !383}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !370, file: !371, line: 8, baseType: !153, size: 64, align: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "readbuffer", scope: !370, file: !371, line: 9, baseType: !375, size: 64, align: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64, align: 64)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "LINEBUF_REC", file: !109, line: 101, baseType: !377)
!377 = !DICompositeType(tag: DW_TAG_structure_type, name: "_LINEBUF_REC", file: !109, line: 101, flags: DIFlagFwdDecl)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "send_tag", scope: !370, file: !371, line: 11, baseType: !65, size: 32, align: 32, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "bufsize", scope: !370, file: !371, line: 12, baseType: !65, size: 32, align: 32, offset: 160)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !370, file: !371, line: 13, baseType: !65, size: 32, align: 32, offset: 192)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !370, file: !371, line: 14, baseType: !94, size: 64, align: 64, offset: 256)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "def_bufsize", scope: !370, file: !371, line: 15, baseType: !65, size: 32, align: 32, offset: 320)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !370, file: !371, line: 16, baseType: !136, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !77, file: !81, line: 22, baseType: !65, size: 32, align: 32, offset: 576)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !77, file: !81, line: 25, baseType: !386, size: 128, align: 64, offset: 640)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 128, align: 64, elements: !387)
!387 = !{!388}
!388 = !DISubrange(count: 2)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !77, file: !81, line: 26, baseType: !65, size: 32, align: 32, offset: 768)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !77, file: !81, line: 27, baseType: !65, size: 32, align: 32, offset: 800)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !77, file: !81, line: 29, baseType: !392, size: 64, align: 64, offset: 832)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64, align: 64)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !109, line: 103, baseType: !394)
!394 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !109, line: 103, flags: DIFlagFwdDecl)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !77, file: !81, line: 30, baseType: !396, size: 64, align: 64, offset: 896)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64, align: 64)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !398, line: 37, baseType: !399)
!398 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!399 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !398, line: 37, flags: DIFlagFwdDecl)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !77, file: !81, line: 32, baseType: !94, size: 64, align: 64, offset: 960)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !77, file: !81, line: 33, baseType: !94, size: 64, align: 64, offset: 1024)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !77, file: !81, line: 34, baseType: !94, size: 64, align: 64, offset: 1088)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !77, file: !81, line: 35, baseType: !136, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !77, file: !81, line: 36, baseType: !136, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !77, file: !81, line: 37, baseType: !136, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !77, file: !81, line: 38, baseType: !136, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !77, file: !81, line: 40, baseType: !408, size: 128, align: 64, offset: 1216)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !159, line: 504, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !159, line: 506, size: 128, align: 64, elements: !410)
!410 = !{!411, !413}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !409, file: !159, line: 508, baseType: !412, size: 64, align: 64)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !159, line: 48, baseType: !72)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !409, file: !159, line: 509, baseType: !412, size: 64, align: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !77, file: !81, line: 41, baseType: !68, size: 64, align: 64, offset: 1344)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !77, file: !81, line: 42, baseType: !65, size: 32, align: 32, offset: 1408)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !77, file: !81, line: 44, baseType: !275, size: 64, align: 64, offset: 1472)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !77, file: !81, line: 45, baseType: !275, size: 64, align: 64, offset: 1536)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !77, file: !81, line: 53, baseType: !419, size: 64, align: 64, offset: 1600)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64, align: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{null, !422, !510, !65}
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64, align: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !109, line: 107, baseType: !424)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !425, line: 30, size: 2240, align: 64, elements: !426)
!425 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!426 = !{!427, !428, !429, !430, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !506, !512, !516, !520, !525, !602, !629, !633}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !424, file: !81, line: 3, baseType: !65, size: 32, align: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !424, file: !81, line: 4, baseType: !65, size: 32, align: 32, offset: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !424, file: !81, line: 6, baseType: !65, size: 32, align: 32, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !424, file: !81, line: 8, baseType: !431, size: 64, align: 64, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64, align: 64)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !109, line: 113, baseType: !433)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !425, line: 25, size: 1920, align: 64, elements: !434)
!434 = !{!435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !433, file: !90, line: 3, baseType: !65, size: 32, align: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !433, file: !90, line: 4, baseType: !65, size: 32, align: 32, offset: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !433, file: !90, line: 6, baseType: !65, size: 32, align: 32, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !433, file: !90, line: 9, baseType: !94, size: 64, align: 64, offset: 128)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !433, file: !90, line: 10, baseType: !65, size: 32, align: 32, offset: 192)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !433, file: !90, line: 11, baseType: !94, size: 64, align: 64, offset: 256)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !433, file: !90, line: 11, baseType: !94, size: 64, align: 64, offset: 320)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !433, file: !90, line: 11, baseType: !94, size: 64, align: 64, offset: 384)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !433, file: !90, line: 13, baseType: !101, size: 16, align: 16, offset: 448)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !433, file: !90, line: 14, baseType: !94, size: 64, align: 64, offset: 512)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !433, file: !90, line: 15, baseType: !94, size: 64, align: 64, offset: 576)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !433, file: !90, line: 16, baseType: !65, size: 32, align: 32, offset: 640)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !433, file: !90, line: 17, baseType: !94, size: 64, align: 64, offset: 704)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !433, file: !90, line: 19, baseType: !107, size: 64, align: 64, offset: 768)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !433, file: !90, line: 19, baseType: !107, size: 64, align: 64, offset: 832)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !433, file: !90, line: 21, baseType: !94, size: 64, align: 64, offset: 896)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !433, file: !90, line: 22, baseType: !94, size: 64, align: 64, offset: 960)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !433, file: !90, line: 23, baseType: !94, size: 64, align: 64, offset: 1024)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !433, file: !90, line: 24, baseType: !94, size: 64, align: 64, offset: 1088)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !433, file: !90, line: 26, baseType: !94, size: 64, align: 64, offset: 1152)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !433, file: !90, line: 27, baseType: !94, size: 64, align: 64, offset: 1216)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !433, file: !90, line: 28, baseType: !94, size: 64, align: 64, offset: 1280)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !433, file: !90, line: 29, baseType: !94, size: 64, align: 64, offset: 1344)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !433, file: !90, line: 30, baseType: !94, size: 64, align: 64, offset: 1408)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !433, file: !90, line: 31, baseType: !94, size: 64, align: 64, offset: 1472)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !433, file: !90, line: 32, baseType: !94, size: 64, align: 64, offset: 1536)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !433, file: !90, line: 33, baseType: !94, size: 64, align: 64, offset: 1600)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !433, file: !90, line: 35, baseType: !153, size: 64, align: 64, offset: 1664)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !433, file: !90, line: 38, baseType: !136, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !433, file: !90, line: 39, baseType: !136, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !433, file: !90, line: 40, baseType: !136, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !433, file: !90, line: 41, baseType: !136, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !433, file: !90, line: 42, baseType: !136, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !433, file: !90, line: 43, baseType: !136, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !433, file: !90, line: 44, baseType: !136, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !433, file: !90, line: 45, baseType: !136, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !433, file: !90, line: 46, baseType: !94, size: 64, align: 64, offset: 1792)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !433, file: !90, line: 47, baseType: !94, size: 64, align: 64, offset: 1856)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !424, file: !81, line: 9, baseType: !68, size: 64, align: 64, offset: 192)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !424, file: !81, line: 10, baseType: !68, size: 64, align: 64, offset: 256)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !424, file: !81, line: 12, baseType: !94, size: 64, align: 64, offset: 320)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !424, file: !81, line: 13, baseType: !94, size: 64, align: 64, offset: 384)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !424, file: !81, line: 15, baseType: !136, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !424, file: !81, line: 16, baseType: !136, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !424, file: !81, line: 17, baseType: !136, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !424, file: !81, line: 18, baseType: !136, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !424, file: !81, line: 19, baseType: !136, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !424, file: !81, line: 21, baseType: !368, size: 64, align: 64, offset: 512)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !424, file: !81, line: 22, baseType: !65, size: 32, align: 32, offset: 576)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !424, file: !81, line: 25, baseType: !386, size: 128, align: 64, offset: 640)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !424, file: !81, line: 26, baseType: !65, size: 32, align: 32, offset: 768)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !424, file: !81, line: 27, baseType: !65, size: 32, align: 32, offset: 800)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !424, file: !81, line: 29, baseType: !392, size: 64, align: 64, offset: 832)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !424, file: !81, line: 30, baseType: !396, size: 64, align: 64, offset: 896)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !424, file: !81, line: 32, baseType: !94, size: 64, align: 64, offset: 960)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !424, file: !81, line: 33, baseType: !94, size: 64, align: 64, offset: 1024)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !424, file: !81, line: 34, baseType: !94, size: 64, align: 64, offset: 1088)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !424, file: !81, line: 35, baseType: !136, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !424, file: !81, line: 36, baseType: !136, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !424, file: !81, line: 37, baseType: !136, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !424, file: !81, line: 38, baseType: !136, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !424, file: !81, line: 40, baseType: !408, size: 128, align: 64, offset: 1216)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !424, file: !81, line: 41, baseType: !68, size: 64, align: 64, offset: 1344)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !424, file: !81, line: 42, baseType: !65, size: 32, align: 32, offset: 1408)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !424, file: !81, line: 44, baseType: !275, size: 64, align: 64, offset: 1472)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !424, file: !81, line: 45, baseType: !275, size: 64, align: 64, offset: 1536)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !424, file: !81, line: 53, baseType: !419, size: 64, align: 64, offset: 1600)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !424, file: !81, line: 55, baseType: !503, size: 64, align: 64, offset: 1664)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64, align: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!65, !422, !95}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !424, file: !81, line: 57, baseType: !507, size: 64, align: 64, offset: 1728)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64, align: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!65, !422, !510}
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64, align: 64)
!511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !424, file: !81, line: 60, baseType: !513, size: 64, align: 64, offset: 1792)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64, align: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{!510, !422}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !424, file: !81, line: 62, baseType: !517, size: 64, align: 64, offset: 1856)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64, align: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{null, !422, !510, !510, !65}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !424, file: !81, line: 65, baseType: !521, size: 64, align: 64, offset: 1920)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64, align: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!524, !422, !510, !510}
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !424, file: !81, line: 69, baseType: !526, size: 64, align: 64, offset: 1984)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64, align: 64)
!527 = !DISubroutineType(types: !528)
!528 = !{!529, !422, !510}
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64, align: 64)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !109, line: 109, baseType: !531)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !532, line: 15, size: 1408, align: 64, elements: !533)
!532 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!533 = !{!534, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !552, !556, !558, !559, !560, !561, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !531, file: !535, line: 3, baseType: !65, size: 32, align: 32)
!535 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!536 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !531, file: !535, line: 4, baseType: !65, size: 32, align: 32, offset: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !531, file: !535, line: 5, baseType: !396, size: 64, align: 64, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !531, file: !535, line: 7, baseType: !214, size: 64, align: 64, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !531, file: !535, line: 8, baseType: !422, size: 64, align: 64, offset: 192)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !531, file: !535, line: 9, baseType: !94, size: 64, align: 64, offset: 256)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !531, file: !535, line: 10, baseType: !94, size: 64, align: 64, offset: 320)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !531, file: !535, line: 11, baseType: !68, size: 64, align: 64, offset: 384)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !531, file: !535, line: 12, baseType: !65, size: 32, align: 32, offset: 448)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !531, file: !535, line: 13, baseType: !94, size: 64, align: 64, offset: 512)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !531, file: !535, line: 15, baseType: !546, size: 64, align: 64, offset: 576)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64, align: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{null, !549}
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64, align: 64)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !109, line: 108, baseType: !551)
!551 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !109, line: 108, flags: DIFlagFwdDecl)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !531, file: !535, line: 17, baseType: !553, size: 64, align: 64, offset: 640)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64, align: 64)
!554 = !DISubroutineType(types: !555)
!555 = !{!510, !549}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !531, file: !557, line: 5, baseType: !94, size: 64, align: 64, offset: 704)
!557 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!558 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !531, file: !557, line: 6, baseType: !94, size: 64, align: 64, offset: 768)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !531, file: !557, line: 7, baseType: !68, size: 64, align: 64, offset: 832)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !531, file: !557, line: 9, baseType: !396, size: 64, align: 64, offset: 896)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !531, file: !557, line: 10, baseType: !562, size: 64, align: 64, offset: 960)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64, align: 64)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !109, line: 111, baseType: !564)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !565, line: 13, size: 576, align: 64, elements: !566)
!565 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!566 = !{!567, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !583, !584}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !564, file: !568, line: 3, baseType: !65, size: 32, align: 32)
!568 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!569 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !564, file: !568, line: 4, baseType: !65, size: 32, align: 32, offset: 32)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !564, file: !568, line: 6, baseType: !68, size: 64, align: 64, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !564, file: !568, line: 8, baseType: !94, size: 64, align: 64, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !564, file: !568, line: 9, baseType: !94, size: 64, align: 64, offset: 192)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !564, file: !568, line: 10, baseType: !94, size: 64, align: 64, offset: 256)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !564, file: !568, line: 11, baseType: !65, size: 32, align: 32, offset: 320)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !564, file: !568, line: 14, baseType: !136, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !564, file: !568, line: 15, baseType: !136, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !564, file: !568, line: 18, baseType: !136, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !564, file: !568, line: 19, baseType: !136, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !564, file: !568, line: 20, baseType: !136, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !564, file: !568, line: 21, baseType: !136, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !564, file: !568, line: 22, baseType: !582, size: 64, align: 8, offset: 360)
!582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 64, align: 8, elements: !131)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !564, file: !568, line: 26, baseType: !214, size: 64, align: 64, offset: 448)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !564, file: !568, line: 28, baseType: !562, size: 64, align: 64, offset: 512)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !531, file: !557, line: 12, baseType: !136, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !531, file: !557, line: 13, baseType: !94, size: 64, align: 64, offset: 1088)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !531, file: !557, line: 14, baseType: !65, size: 32, align: 32, offset: 1152)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !531, file: !557, line: 15, baseType: !94, size: 64, align: 64, offset: 1216)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !531, file: !557, line: 17, baseType: !136, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !531, file: !557, line: 18, baseType: !136, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !531, file: !557, line: 19, baseType: !136, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !531, file: !557, line: 20, baseType: !136, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !531, file: !557, line: 22, baseType: !136, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !531, file: !557, line: 23, baseType: !136, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !531, file: !557, line: 24, baseType: !136, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !531, file: !557, line: 25, baseType: !136, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !531, file: !557, line: 26, baseType: !136, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !531, file: !557, line: 31, baseType: !599, size: 64, align: 64, offset: 1344)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64, align: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{!94, !529}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !424, file: !81, line: 70, baseType: !603, size: 64, align: 64, offset: 2048)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64, align: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!606, !422, !510}
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64, align: 64)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !109, line: 110, baseType: !608)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !609, line: 15, size: 960, align: 64, elements: !610)
!609 = !DIFile(filename: "../../../src/core/queries.h", directory: "/home/lichi/Desktop/irssi/task1")
!610 = !{!611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !625, !626, !627, !628}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !608, file: !535, line: 3, baseType: !65, size: 32, align: 32)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !608, file: !535, line: 4, baseType: !65, size: 32, align: 32, offset: 32)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !608, file: !535, line: 5, baseType: !396, size: 64, align: 64, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !608, file: !535, line: 7, baseType: !214, size: 64, align: 64, offset: 128)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !608, file: !535, line: 8, baseType: !422, size: 64, align: 64, offset: 192)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !608, file: !535, line: 9, baseType: !94, size: 64, align: 64, offset: 256)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !608, file: !535, line: 10, baseType: !94, size: 64, align: 64, offset: 320)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !608, file: !535, line: 11, baseType: !68, size: 64, align: 64, offset: 384)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !608, file: !535, line: 12, baseType: !65, size: 32, align: 32, offset: 448)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !608, file: !535, line: 13, baseType: !94, size: 64, align: 64, offset: 512)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !608, file: !535, line: 15, baseType: !546, size: 64, align: 64, offset: 576)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !608, file: !535, line: 17, baseType: !553, size: 64, align: 64, offset: 640)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !608, file: !624, line: 5, baseType: !94, size: 64, align: 64, offset: 704)
!624 = !DIFile(filename: "../../../src/core/query-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!625 = !DIDerivedType(tag: DW_TAG_member, name: "server_tag", scope: !608, file: !624, line: 6, baseType: !94, size: 64, align: 64, offset: 768)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "last_unread_msg", scope: !608, file: !624, line: 7, baseType: !68, size: 64, align: 64, offset: 832)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "unwanted", scope: !608, file: !624, line: 9, baseType: !136, size: 1, align: 32, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !608, file: !624, line: 11, baseType: !136, size: 1, align: 32, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !424, file: !81, line: 71, baseType: !630, size: 64, align: 64, offset: 2112)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64, align: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!65, !510, !510}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !424, file: !81, line: 73, baseType: !630, size: 64, align: 64, offset: 2176)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !77, file: !81, line: 55, baseType: !503, size: 64, align: 64, offset: 1664)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !77, file: !81, line: 57, baseType: !507, size: 64, align: 64, offset: 1728)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !77, file: !81, line: 60, baseType: !513, size: 64, align: 64, offset: 1792)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !77, file: !81, line: 62, baseType: !517, size: 64, align: 64, offset: 1856)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !77, file: !81, line: 65, baseType: !521, size: 64, align: 64, offset: 1920)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !77, file: !81, line: 69, baseType: !526, size: 64, align: 64, offset: 1984)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !77, file: !81, line: 70, baseType: !603, size: 64, align: 64, offset: 2048)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !77, file: !81, line: 71, baseType: !630, size: 64, align: 64, offset: 2112)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !77, file: !81, line: 73, baseType: !630, size: 64, align: 64, offset: 2176)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !77, file: !78, line: 46, baseType: !275, size: 64, align: 64, offset: 2240)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !77, file: !78, line: 47, baseType: !275, size: 64, align: 64, offset: 2304)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !77, file: !78, line: 48, baseType: !646, size: 64, align: 64, offset: 2368)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64, align: 64)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !76, line: 8, baseType: !648)
!648 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !76, line: 8, flags: DIFlagFwdDecl)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !77, file: !78, line: 49, baseType: !275, size: 64, align: 64, offset: 2432)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !77, file: !78, line: 51, baseType: !94, size: 64, align: 64, offset: 2496)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !77, file: !78, line: 53, baseType: !94, size: 64, align: 64, offset: 2560)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !77, file: !78, line: 54, baseType: !94, size: 64, align: 64, offset: 2624)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !77, file: !78, line: 55, baseType: !94, size: 64, align: 64, offset: 2688)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !77, file: !78, line: 56, baseType: !94, size: 64, align: 64, offset: 2752)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !77, file: !78, line: 57, baseType: !65, size: 32, align: 32, offset: 2816)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !77, file: !78, line: 59, baseType: !136, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !77, file: !78, line: 60, baseType: !136, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !77, file: !78, line: 62, baseType: !136, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !77, file: !78, line: 63, baseType: !136, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !77, file: !78, line: 64, baseType: !136, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !77, file: !78, line: 65, baseType: !136, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !77, file: !78, line: 66, baseType: !136, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !77, file: !78, line: 67, baseType: !136, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !77, file: !78, line: 68, baseType: !136, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !77, file: !78, line: 69, baseType: !136, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !77, file: !78, line: 70, baseType: !136, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !77, file: !78, line: 71, baseType: !136, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !77, file: !78, line: 72, baseType: !136, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !77, file: !78, line: 74, baseType: !65, size: 32, align: 32, offset: 2880)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !77, file: !78, line: 75, baseType: !65, size: 32, align: 32, offset: 2912)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !77, file: !78, line: 76, baseType: !65, size: 32, align: 32, offset: 2944)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !77, file: !78, line: 77, baseType: !65, size: 32, align: 32, offset: 2976)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !77, file: !78, line: 79, baseType: !396, size: 64, align: 64, offset: 3008)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !77, file: !78, line: 80, baseType: !275, size: 64, align: 64, offset: 3072)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !77, file: !78, line: 81, baseType: !275, size: 64, align: 64, offset: 3136)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !77, file: !78, line: 83, baseType: !314, size: 64, align: 64, offset: 3200)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !77, file: !78, line: 84, baseType: !266, size: 32, align: 32, offset: 3264)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !77, file: !78, line: 87, baseType: !65, size: 32, align: 32, offset: 3296)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !77, file: !78, line: 91, baseType: !275, size: 64, align: 64, offset: 3328)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !77, file: !78, line: 92, baseType: !408, size: 128, align: 64, offset: 3392)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !77, file: !78, line: 93, baseType: !408, size: 128, align: 64, offset: 3520)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !77, file: !78, line: 95, baseType: !65, size: 32, align: 32, offset: 3648)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !77, file: !78, line: 96, baseType: !65, size: 32, align: 32, offset: 3680)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !77, file: !78, line: 97, baseType: !65, size: 32, align: 32, offset: 3712)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !77, file: !78, line: 100, baseType: !275, size: 64, align: 64, offset: 3776)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !77, file: !78, line: 103, baseType: !275, size: 64, align: 64, offset: 3840)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !77, file: !78, line: 106, baseType: !275, size: 64, align: 64, offset: 3904)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !77, file: !78, line: 108, baseType: !396, size: 64, align: 64, offset: 3968)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !77, file: !78, line: 109, baseType: !275, size: 64, align: 64, offset: 4032)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !77, file: !78, line: 111, baseType: !275, size: 64, align: 64, offset: 4096)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !77, file: !78, line: 114, baseType: !214, size: 64, align: 64, offset: 4160)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !77, file: !78, line: 116, baseType: !396, size: 64, align: 64, offset: 4224)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !77, file: !78, line: 117, baseType: !694, size: 32768, align: 64, offset: 4288)
!694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !695, size: 32768, align: 64, elements: !744)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !696, line: 10, size: 128, align: 64, elements: !697)
!696 = !DIFile(filename: "../../../src/irc/core/modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!697 = !{!698, !743}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !695, file: !696, line: 11, baseType: !699, size: 64, align: 64)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64, align: 64)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !696, line: 7, baseType: !701)
!701 = !DISubroutineType(types: !702)
!702 = !{null, !703, !510, !95, !95, !94, !314}
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64, align: 64)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !76, line: 7, baseType: !705)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !706, line: 15, size: 1600, align: 64, elements: !707)
!706 = !DIFile(filename: "../../../src/irc/core/irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!707 = !{!708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !705, file: !535, line: 3, baseType: !65, size: 32, align: 32)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !705, file: !535, line: 4, baseType: !65, size: 32, align: 32, offset: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !705, file: !535, line: 5, baseType: !396, size: 64, align: 64, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !705, file: !535, line: 7, baseType: !214, size: 64, align: 64, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !705, file: !535, line: 8, baseType: !74, size: 64, align: 64, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !705, file: !535, line: 9, baseType: !94, size: 64, align: 64, offset: 256)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !705, file: !535, line: 10, baseType: !94, size: 64, align: 64, offset: 320)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !705, file: !535, line: 11, baseType: !68, size: 64, align: 64, offset: 384)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !705, file: !535, line: 12, baseType: !65, size: 32, align: 32, offset: 448)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !705, file: !535, line: 13, baseType: !94, size: 64, align: 64, offset: 512)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !705, file: !535, line: 15, baseType: !546, size: 64, align: 64, offset: 576)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !705, file: !535, line: 17, baseType: !553, size: 64, align: 64, offset: 640)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !705, file: !557, line: 5, baseType: !94, size: 64, align: 64, offset: 704)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !705, file: !557, line: 6, baseType: !94, size: 64, align: 64, offset: 768)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !705, file: !557, line: 7, baseType: !68, size: 64, align: 64, offset: 832)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !705, file: !557, line: 9, baseType: !396, size: 64, align: 64, offset: 896)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !705, file: !557, line: 10, baseType: !562, size: 64, align: 64, offset: 960)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !705, file: !557, line: 12, baseType: !136, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !705, file: !557, line: 13, baseType: !94, size: 64, align: 64, offset: 1088)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !705, file: !557, line: 14, baseType: !65, size: 32, align: 32, offset: 1152)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !705, file: !557, line: 15, baseType: !94, size: 64, align: 64, offset: 1216)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !705, file: !557, line: 17, baseType: !136, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !705, file: !557, line: 18, baseType: !136, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !705, file: !557, line: 19, baseType: !136, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !705, file: !557, line: 20, baseType: !136, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !705, file: !557, line: 22, baseType: !136, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !705, file: !557, line: 23, baseType: !136, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !705, file: !557, line: 24, baseType: !136, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !705, file: !557, line: 25, baseType: !136, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !705, file: !557, line: 26, baseType: !136, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !705, file: !557, line: 31, baseType: !599, size: 64, align: 64, offset: 1344)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !705, file: !706, line: 18, baseType: !275, size: 64, align: 64, offset: 1408)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !705, file: !706, line: 20, baseType: !68, size: 64, align: 64, offset: 1472)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !705, file: !706, line: 21, baseType: !65, size: 32, align: 32, offset: 1536)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !705, file: !706, line: 22, baseType: !65, size: 32, align: 32, offset: 1568)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !695, file: !696, line: 12, baseType: !95, size: 8, align: 8, offset: 64)
!744 = !{!745}
!745 = !DISubrange(count: 256)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !77, file: !78, line: 118, baseType: !747, size: 2048, align: 8, offset: 37056)
!747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 2048, align: 8, elements: !744)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !77, file: !78, line: 120, baseType: !630, size: 64, align: 64, offset: 39104)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !60, file: !64, line: 6, baseType: !94, size: 64, align: 64, offset: 192)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "mynick", scope: !60, file: !64, line: 7, baseType: !94, size: 64, align: 64, offset: 256)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !60, file: !64, line: 8, baseType: !94, size: 64, align: 64, offset: 320)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "chat", scope: !60, file: !64, line: 10, baseType: !57, size: 64, align: 64, offset: 384)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !60, file: !64, line: 11, baseType: !94, size: 64, align: 64, offset: 448)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !60, file: !64, line: 12, baseType: !94, size: 64, align: 64, offset: 512)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !60, file: !64, line: 14, baseType: !108, size: 160, align: 32, offset: 576)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "addrstr", scope: !60, file: !64, line: 15, baseType: !757, size: 368, align: 8, offset: 736)
!757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 368, align: 8, elements: !758)
!758 = !{!759}
!759 = !DISubrange(count: 46)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !60, file: !64, line: 16, baseType: !65, size: 32, align: 32, offset: 1120)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !60, file: !64, line: 18, baseType: !153, size: 64, align: 64, offset: 1152)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "tagconn", scope: !60, file: !64, line: 19, baseType: !65, size: 32, align: 32, offset: 1216)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "tagread", scope: !60, file: !64, line: 19, baseType: !65, size: 32, align: 32, offset: 1248)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "tagwrite", scope: !60, file: !64, line: 19, baseType: !65, size: 32, align: 32, offset: 1280)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "starttime", scope: !60, file: !64, line: 20, baseType: !68, size: 64, align: 64, offset: 1344)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "transfd", scope: !60, file: !64, line: 21, baseType: !767, size: 64, align: 64, offset: 1408)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "uoff_t", file: !109, line: 49, baseType: !174)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "pasv_id", scope: !60, file: !64, line: 23, baseType: !65, size: 32, align: 32, offset: 1472)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !60, file: !64, line: 25, baseType: !136, size: 1, align: 32, offset: 1504, flags: DIFlagBitField, extraData: i64 1504)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !60, file: !64, line: 27, baseType: !396, size: 64, align: 64, offset: 1536)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !60, file: !61, line: 15, baseType: !94, size: 64, align: 64, offset: 1600)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "sendbuf", scope: !60, file: !61, line: 16, baseType: !368, size: 64, align: 64, offset: 1664)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "mirc_ctcp", scope: !60, file: !61, line: 18, baseType: !136, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !60, file: !61, line: 19, baseType: !136, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64, align: 64)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "DCC_REC", file: !59, line: 13, baseType: !777)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !59, line: 11, size: 1600, align: 64, elements: !778)
!778 = !{!779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !777, file: !64, line: 1, baseType: !65, size: 32, align: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !777, file: !64, line: 2, baseType: !65, size: 32, align: 32, offset: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "created", scope: !777, file: !64, line: 3, baseType: !68, size: 64, align: 64, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !777, file: !64, line: 5, baseType: !74, size: 64, align: 64, offset: 128)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !777, file: !64, line: 6, baseType: !94, size: 64, align: 64, offset: 192)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "mynick", scope: !777, file: !64, line: 7, baseType: !94, size: 64, align: 64, offset: 256)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !777, file: !64, line: 8, baseType: !94, size: 64, align: 64, offset: 320)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "chat", scope: !777, file: !64, line: 10, baseType: !57, size: 64, align: 64, offset: 384)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !777, file: !64, line: 11, baseType: !94, size: 64, align: 64, offset: 448)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !777, file: !64, line: 12, baseType: !94, size: 64, align: 64, offset: 512)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !777, file: !64, line: 14, baseType: !108, size: 160, align: 32, offset: 576)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "addrstr", scope: !777, file: !64, line: 15, baseType: !757, size: 368, align: 8, offset: 736)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !777, file: !64, line: 16, baseType: !65, size: 32, align: 32, offset: 1120)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !777, file: !64, line: 18, baseType: !153, size: 64, align: 64, offset: 1152)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "tagconn", scope: !777, file: !64, line: 19, baseType: !65, size: 32, align: 32, offset: 1216)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "tagread", scope: !777, file: !64, line: 19, baseType: !65, size: 32, align: 32, offset: 1248)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "tagwrite", scope: !777, file: !64, line: 19, baseType: !65, size: 32, align: 32, offset: 1280)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "starttime", scope: !777, file: !64, line: 20, baseType: !68, size: 64, align: 64, offset: 1344)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "transfd", scope: !777, file: !64, line: 21, baseType: !767, size: 64, align: 64, offset: 1408)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "pasv_id", scope: !777, file: !64, line: 23, baseType: !65, size: 32, align: 32, offset: 1472)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !777, file: !64, line: 25, baseType: !136, size: 1, align: 32, offset: 1504, flags: DIFlagBitField, extraData: i64 1504)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !777, file: !64, line: 27, baseType: !396, size: 64, align: 64, offset: 1536)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !802, line: 9, baseType: !803)
!802 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64, align: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{null, !806, !806, !806, !806, !806, !806}
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64, align: 64)
!807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "GInputFunction", file: !109, line: 60, baseType: !809)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64, align: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{null, !214, !153, !65}
!812 = !{i32 2, !"Dwarf Version", i32 4}
!813 = !{i32 2, !"Debug Info Version", i32 3}
!814 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!815 = distinct !DISubprogram(name: "dcc_chat_create", scope: !816, file: !816, line: 57, type: !817, isLocal: false, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !819)
!816 = !DIFile(filename: "dcc-chat.c", directory: "/home/lichi/Desktop/irssi/task1")
!817 = !DISubroutineType(types: !818)
!818 = !{!57, !74, !57, !510, !510}
!819 = !{}
!820 = !DILocalVariable(name: "server", arg: 1, scope: !815, file: !816, line: 57, type: !74)
!821 = !DIExpression()
!822 = !DILocation(line: 57, column: 47, scope: !815)
!823 = !DILocalVariable(name: "chat", arg: 2, scope: !815, file: !816, line: 58, type: !57)
!824 = !DILocation(line: 58, column: 24, scope: !815)
!825 = !DILocalVariable(name: "nick", arg: 3, scope: !815, file: !816, line: 59, type: !510)
!826 = !DILocation(line: 59, column: 22, scope: !815)
!827 = !DILocalVariable(name: "arg", arg: 4, scope: !815, file: !816, line: 59, type: !510)
!828 = !DILocation(line: 59, column: 40, scope: !815)
!829 = !DILocalVariable(name: "dcc", scope: !815, file: !816, line: 61, type: !57)
!830 = !DILocation(line: 61, column: 16, scope: !815)
!831 = !DILocation(line: 63, column: 26, scope: !815)
!832 = !DILocation(line: 63, column: 9, scope: !815)
!833 = !DILocation(line: 63, column: 6, scope: !815)
!834 = !DILocation(line: 64, column: 31, scope: !815)
!835 = !DILocation(line: 64, column: 19, scope: !815)
!836 = !DILocation(line: 64, column: 24, scope: !815)
!837 = !DILocation(line: 64, column: 29, scope: !815)
!838 = !DILocation(line: 64, column: 2, scope: !815)
!839 = !DILocation(line: 64, column: 7, scope: !815)
!840 = !DILocation(line: 64, column: 17, scope: !815)
!841 = !DILocation(line: 65, column: 19, scope: !815)
!842 = !DILocation(line: 65, column: 2, scope: !815)
!843 = !DILocation(line: 65, column: 7, scope: !815)
!844 = !DILocation(line: 65, column: 17, scope: !815)
!845 = !DILocation(line: 66, column: 39, scope: !815)
!846 = !DILocation(line: 66, column: 19, scope: !815)
!847 = !DILocation(line: 66, column: 9, scope: !815)
!848 = !DILocation(line: 66, column: 14, scope: !815)
!849 = !DILocation(line: 66, column: 17, scope: !815)
!850 = !DILocation(line: 68, column: 29, scope: !815)
!851 = !DILocation(line: 68, column: 16, scope: !815)
!852 = !DILocation(line: 68, column: 36, scope: !815)
!853 = !DILocation(line: 68, column: 44, scope: !815)
!854 = !DILocation(line: 68, column: 50, scope: !815)
!855 = !DILocation(line: 68, column: 56, scope: !815)
!856 = !DILocation(line: 68, column: 2, scope: !815)
!857 = !DILocation(line: 69, column: 6, scope: !858)
!858 = distinct !DILexicalBlock(scope: !815, file: !816, line: 69, column: 6)
!859 = !DILocation(line: 69, column: 11, scope: !858)
!860 = !DILocation(line: 69, column: 23, scope: !858)
!861 = !DILocation(line: 69, column: 6, scope: !815)
!862 = !DILocation(line: 71, column: 10, scope: !863)
!863 = distinct !DILexicalBlock(scope: !858, file: !816, line: 69, column: 31)
!864 = !DILocation(line: 71, column: 15, scope: !863)
!865 = !DILocation(line: 71, column: 3, scope: !863)
!866 = !DILocation(line: 72, column: 10, scope: !863)
!867 = !DILocation(line: 72, column: 3, scope: !863)
!868 = !DILocation(line: 73, column: 3, scope: !863)
!869 = !DILocation(line: 76, column: 16, scope: !815)
!870 = !DILocation(line: 76, column: 9, scope: !815)
!871 = !DILocation(line: 77, column: 1, scope: !815)
!872 = distinct !DISubprogram(name: "dcc_chat_get_new_id", scope: !816, file: !816, line: 36, type: !873, isLocal: true, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !819)
!873 = !DISubroutineType(types: !874)
!874 = !{!94, !510}
!875 = !DILocalVariable(name: "nick", arg: 1, scope: !872, file: !816, line: 36, type: !510)
!876 = !DILocation(line: 36, column: 46, scope: !872)
!877 = !DILocalVariable(name: "id", scope: !872, file: !816, line: 38, type: !94)
!878 = !DILocation(line: 38, column: 15, scope: !872)
!879 = !DILocalVariable(name: "num", scope: !872, file: !816, line: 39, type: !65)
!880 = !DILocation(line: 39, column: 6, scope: !872)
!881 = !DILocation(line: 41, column: 9, scope: !872)
!882 = distinct !{!882, !881}
!883 = !DILocation(line: 41, column: 17, scope: !884)
!884 = !DILexicalBlockFile(scope: !885, file: !816, discriminator: 1)
!885 = distinct !DILexicalBlock(scope: !886, file: !816, line: 41, column: 17)
!886 = distinct !DILexicalBlock(scope: !872, file: !816, line: 41, column: 11)
!887 = !DILocation(line: 41, column: 22, scope: !884)
!888 = !DILocation(line: 41, column: 12, scope: !889)
!889 = !DILexicalBlockFile(scope: !890, file: !816, discriminator: 2)
!890 = distinct !DILexicalBlock(scope: !885, file: !816, line: 41, column: 10)
!891 = !DILocation(line: 41, column: 21, scope: !892)
!892 = !DILexicalBlockFile(scope: !893, file: !816, discriminator: 3)
!893 = distinct !DILexicalBlock(scope: !885, file: !816, line: 41, column: 19)
!894 = !DILocation(line: 41, column: 106, scope: !892)
!895 = !DILocation(line: 41, column: 14, scope: !896)
!896 = !DILexicalBlockFile(scope: !886, file: !816, discriminator: 4)
!897 = !DILocation(line: 43, column: 23, scope: !898)
!898 = distinct !DILexicalBlock(scope: !872, file: !816, line: 43, column: 6)
!899 = !DILocation(line: 43, column: 6, scope: !898)
!900 = !DILocation(line: 43, column: 29, scope: !898)
!901 = !DILocation(line: 43, column: 6, scope: !872)
!902 = !DILocation(line: 45, column: 33, scope: !903)
!903 = distinct !DILexicalBlock(scope: !898, file: !816, line: 43, column: 37)
!904 = !DILocation(line: 45, column: 24, scope: !903)
!905 = !DILocation(line: 45, column: 17, scope: !903)
!906 = !DILocation(line: 49, column: 11, scope: !907)
!907 = distinct !DILexicalBlock(scope: !872, file: !816, line: 49, column: 2)
!908 = !DILocation(line: 49, column: 7, scope: !907)
!909 = !DILocation(line: 50, column: 46, scope: !910)
!910 = distinct !DILexicalBlock(scope: !911, file: !816, line: 49, column: 24)
!911 = distinct !DILexicalBlock(scope: !907, file: !816, line: 49, column: 2)
!912 = !DILocation(line: 50, column: 52, scope: !910)
!913 = !DILocation(line: 50, column: 22, scope: !910)
!914 = !DILocation(line: 50, column: 20, scope: !910)
!915 = !DILocation(line: 51, column: 24, scope: !916)
!916 = distinct !DILexicalBlock(scope: !910, file: !816, line: 51, column: 7)
!917 = !DILocation(line: 51, column: 7, scope: !916)
!918 = !DILocation(line: 51, column: 28, scope: !916)
!919 = !DILocation(line: 51, column: 7, scope: !910)
!920 = !DILocation(line: 52, column: 32, scope: !916)
!921 = !DILocation(line: 52, column: 25, scope: !916)
!922 = !DILocation(line: 53, column: 24, scope: !910)
!923 = !DILocation(line: 53, column: 17, scope: !910)
!924 = !DILocation(line: 54, column: 2, scope: !910)
!925 = !DILocation(line: 49, column: 20, scope: !926)
!926 = !DILexicalBlockFile(scope: !911, file: !816, discriminator: 1)
!927 = !DILocation(line: 49, column: 2, scope: !926)
!928 = distinct !{!928, !929}
!929 = !DILocation(line: 49, column: 2, scope: !872)
!930 = !DILocation(line: 55, column: 1, scope: !872)
!931 = distinct !DISubprogram(name: "dcc_chat_find_id", scope: !816, file: !816, line: 103, type: !932, isLocal: false, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !819)
!932 = !DISubroutineType(types: !933)
!933 = !{!57, !510}
!934 = !DILocalVariable(name: "id", arg: 1, scope: !931, file: !816, line: 103, type: !510)
!935 = !DILocation(line: 103, column: 44, scope: !931)
!936 = !DILocalVariable(name: "tmp", scope: !931, file: !816, line: 105, type: !275)
!937 = !DILocation(line: 105, column: 10, scope: !931)
!938 = !DILocation(line: 107, column: 2, scope: !931)
!939 = distinct !{!939, !938}
!940 = !DILocation(line: 107, column: 10, scope: !941)
!941 = !DILexicalBlockFile(scope: !942, file: !816, discriminator: 1)
!942 = distinct !DILexicalBlock(scope: !943, file: !816, line: 107, column: 10)
!943 = distinct !DILexicalBlock(scope: !931, file: !816, line: 107, column: 4)
!944 = !DILocation(line: 107, column: 13, scope: !941)
!945 = !DILocation(line: 107, column: 5, scope: !946)
!946 = !DILexicalBlockFile(scope: !947, file: !816, discriminator: 2)
!947 = distinct !DILexicalBlock(scope: !942, file: !816, line: 107, column: 3)
!948 = !DILocation(line: 107, column: 14, scope: !949)
!949 = !DILexicalBlockFile(scope: !950, file: !816, discriminator: 3)
!950 = distinct !DILexicalBlock(scope: !942, file: !816, line: 107, column: 12)
!951 = !DILocation(line: 107, column: 97, scope: !949)
!952 = !DILocation(line: 107, column: 7, scope: !953)
!953 = !DILexicalBlockFile(scope: !943, file: !816, discriminator: 4)
!954 = !DILocation(line: 109, column: 13, scope: !955)
!955 = distinct !DILexicalBlock(scope: !931, file: !816, line: 109, column: 2)
!956 = !DILocation(line: 109, column: 11, scope: !955)
!957 = !DILocation(line: 109, column: 7, scope: !955)
!958 = !DILocation(line: 109, column: 24, scope: !959)
!959 = !DILexicalBlockFile(scope: !960, file: !816, discriminator: 1)
!960 = distinct !DILexicalBlock(scope: !955, file: !816, line: 109, column: 2)
!961 = !DILocation(line: 109, column: 28, scope: !959)
!962 = !DILocation(line: 109, column: 2, scope: !959)
!963 = !DILocalVariable(name: "dcc", scope: !964, file: !816, line: 110, type: !57)
!964 = distinct !DILexicalBlock(scope: !960, file: !816, line: 109, column: 53)
!965 = !DILocation(line: 110, column: 17, scope: !964)
!966 = !DILocation(line: 110, column: 23, scope: !964)
!967 = !DILocation(line: 110, column: 28, scope: !964)
!968 = !DILocation(line: 112, column: 51, scope: !969)
!969 = distinct !DILexicalBlock(scope: !964, file: !816, line: 112, column: 7)
!970 = !DILocation(line: 112, column: 26, scope: !969)
!971 = !DILocation(line: 112, column: 9, scope: !969)
!972 = !DILocation(line: 112, column: 40, scope: !969)
!973 = !DILocation(line: 112, column: 8, scope: !974)
!974 = !DILexicalBlockFile(scope: !969, file: !816, discriminator: 1)
!975 = !DILocation(line: 112, column: 40, scope: !976)
!976 = !DILexicalBlockFile(scope: !969, file: !816, discriminator: 2)
!977 = !DILocation(line: 112, column: 43, scope: !978)
!978 = !DILexicalBlockFile(scope: !969, file: !816, discriminator: 3)
!979 = !DILocation(line: 112, column: 48, scope: !978)
!980 = !DILocation(line: 112, column: 51, scope: !978)
!981 = !DILocation(line: 112, column: 42, scope: !978)
!982 = !DILocation(line: 113, column: 26, scope: !969)
!983 = !DILocation(line: 113, column: 31, scope: !969)
!984 = !DILocation(line: 113, column: 35, scope: !969)
!985 = !DILocation(line: 113, column: 7, scope: !969)
!986 = !DILocation(line: 113, column: 39, scope: !969)
!987 = !DILocation(line: 112, column: 7, scope: !988)
!988 = !DILexicalBlockFile(scope: !964, file: !816, discriminator: 4)
!989 = !DILocation(line: 114, column: 11, scope: !969)
!990 = !DILocation(line: 114, column: 4, scope: !969)
!991 = !DILocation(line: 115, column: 2, scope: !964)
!992 = !DILocation(line: 109, column: 42, scope: !993)
!993 = !DILexicalBlockFile(scope: !960, file: !816, discriminator: 2)
!994 = !DILocation(line: 109, column: 47, scope: !993)
!995 = !DILocation(line: 109, column: 40, scope: !993)
!996 = !DILocation(line: 109, column: 2, scope: !993)
!997 = distinct !{!997, !998}
!998 = !DILocation(line: 109, column: 2, scope: !931)
!999 = !DILocation(line: 117, column: 2, scope: !931)
!1000 = !DILocation(line: 118, column: 1, scope: !931)
!1001 = distinct !DISubprogram(name: "dcc_chat_send", scope: !816, file: !816, line: 139, type: !1002, isLocal: false, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !819)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{null, !57, !510}
!1004 = !DILocalVariable(name: "dcc", arg: 1, scope: !1001, file: !816, line: 139, type: !57)
!1005 = !DILocation(line: 139, column: 34, scope: !1001)
!1006 = !DILocalVariable(name: "data", arg: 2, scope: !1001, file: !816, line: 139, type: !510)
!1007 = !DILocation(line: 139, column: 51, scope: !1001)
!1008 = !DILocation(line: 141, column: 2, scope: !1001)
!1009 = distinct !{!1009, !1008}
!1010 = !DILocation(line: 141, column: 54, scope: !1011)
!1011 = !DILexicalBlockFile(scope: !1012, file: !816, discriminator: 1)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !816, line: 141, column: 10)
!1013 = distinct !DILexicalBlock(scope: !1001, file: !816, line: 141, column: 4)
!1014 = !DILocation(line: 141, column: 29, scope: !1011)
!1015 = !DILocation(line: 141, column: 12, scope: !1011)
!1016 = !DILocation(line: 141, column: 10, scope: !1011)
!1017 = !DILocation(line: 141, column: 11, scope: !1018)
!1018 = !DILexicalBlockFile(scope: !1012, file: !816, discriminator: 2)
!1019 = !DILocation(line: 141, column: 10, scope: !1020)
!1020 = !DILexicalBlockFile(scope: !1013, file: !816, discriminator: 3)
!1021 = !DILocation(line: 141, column: 38, scope: !1022)
!1022 = !DILexicalBlockFile(scope: !1023, file: !816, discriminator: 4)
!1023 = distinct !DILexicalBlock(scope: !1012, file: !816, line: 141, column: 36)
!1024 = !DILocation(line: 141, column: 47, scope: !1025)
!1025 = !DILexicalBlockFile(scope: !1026, file: !816, discriminator: 5)
!1026 = distinct !DILexicalBlock(scope: !1012, file: !816, line: 141, column: 45)
!1027 = !DILocation(line: 141, column: 136, scope: !1025)
!1028 = !DILocation(line: 141, column: 147, scope: !1029)
!1029 = !DILexicalBlockFile(scope: !1013, file: !816, discriminator: 6)
!1030 = !DILocation(line: 142, column: 9, scope: !1001)
!1031 = distinct !{!1031, !1030}
!1032 = !DILocation(line: 142, column: 17, scope: !1033)
!1033 = !DILexicalBlockFile(scope: !1034, file: !816, discriminator: 1)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !816, line: 142, column: 17)
!1035 = distinct !DILexicalBlock(scope: !1001, file: !816, line: 142, column: 11)
!1036 = !DILocation(line: 142, column: 22, scope: !1033)
!1037 = !DILocation(line: 142, column: 30, scope: !1033)
!1038 = !DILocation(line: 142, column: 12, scope: !1039)
!1039 = !DILexicalBlockFile(scope: !1040, file: !816, discriminator: 2)
!1040 = distinct !DILexicalBlock(scope: !1034, file: !816, line: 142, column: 10)
!1041 = !DILocation(line: 142, column: 21, scope: !1042)
!1042 = !DILexicalBlockFile(scope: !1043, file: !816, discriminator: 3)
!1043 = distinct !DILexicalBlock(scope: !1034, file: !816, line: 142, column: 19)
!1044 = !DILocation(line: 142, column: 114, scope: !1042)
!1045 = !DILocation(line: 142, column: 125, scope: !1046)
!1046 = !DILexicalBlockFile(scope: !1035, file: !816, discriminator: 4)
!1047 = !DILocation(line: 143, column: 2, scope: !1001)
!1048 = distinct !{!1048, !1047}
!1049 = !DILocation(line: 143, column: 10, scope: !1050)
!1050 = !DILexicalBlockFile(scope: !1051, file: !816, discriminator: 1)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !816, line: 143, column: 10)
!1052 = distinct !DILexicalBlock(scope: !1001, file: !816, line: 143, column: 4)
!1053 = !DILocation(line: 143, column: 15, scope: !1050)
!1054 = !DILocation(line: 143, column: 5, scope: !1055)
!1055 = !DILexicalBlockFile(scope: !1056, file: !816, discriminator: 2)
!1056 = distinct !DILexicalBlock(scope: !1051, file: !816, line: 143, column: 3)
!1057 = !DILocation(line: 143, column: 14, scope: !1058)
!1058 = !DILexicalBlockFile(scope: !1059, file: !816, discriminator: 3)
!1059 = distinct !DILexicalBlock(scope: !1051, file: !816, line: 143, column: 12)
!1060 = !DILocation(line: 143, column: 99, scope: !1058)
!1061 = !DILocation(line: 143, column: 110, scope: !1062)
!1062 = !DILexicalBlockFile(scope: !1052, file: !816, discriminator: 4)
!1063 = !DILocation(line: 145, column: 22, scope: !1001)
!1064 = !DILocation(line: 145, column: 27, scope: !1001)
!1065 = !DILocation(line: 145, column: 36, scope: !1001)
!1066 = !DILocation(line: 145, column: 49, scope: !1001)
!1067 = !DILocation(line: 145, column: 42, scope: !1001)
!1068 = !DILocation(line: 145, column: 2, scope: !1069)
!1069 = !DILexicalBlockFile(scope: !1001, file: !816, discriminator: 1)
!1070 = !DILocation(line: 146, column: 22, scope: !1001)
!1071 = !DILocation(line: 146, column: 27, scope: !1001)
!1072 = !DILocation(line: 146, column: 2, scope: !1001)
!1073 = !DILocation(line: 147, column: 1, scope: !1001)
!1074 = !DILocation(line: 147, column: 1, scope: !1069)
!1075 = distinct !DISubprogram(name: "dcc_ctcp_message", scope: !816, file: !816, line: 151, type: !1076, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !819)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{null, !74, !510, !57, !65, !510}
!1078 = !DILocalVariable(name: "server", arg: 1, scope: !1075, file: !816, line: 151, type: !74)
!1079 = !DILocation(line: 151, column: 39, scope: !1075)
!1080 = !DILocalVariable(name: "target", arg: 2, scope: !1075, file: !816, line: 151, type: !510)
!1081 = !DILocation(line: 151, column: 59, scope: !1075)
!1082 = !DILocalVariable(name: "chat", arg: 3, scope: !1075, file: !816, line: 152, type: !57)
!1083 = !DILocation(line: 152, column: 23, scope: !1075)
!1084 = !DILocalVariable(name: "notice", arg: 4, scope: !1075, file: !816, line: 152, type: !65)
!1085 = !DILocation(line: 152, column: 33, scope: !1075)
!1086 = !DILocalVariable(name: "msg", arg: 5, scope: !1075, file: !816, line: 152, type: !510)
!1087 = !DILocation(line: 152, column: 53, scope: !1075)
!1088 = !DILocalVariable(name: "str", scope: !1075, file: !816, line: 154, type: !94)
!1089 = !DILocation(line: 154, column: 8, scope: !1075)
!1090 = !DILocalVariable(name: "recoded", scope: !1075, file: !816, line: 155, type: !94)
!1091 = !DILocation(line: 155, column: 8, scope: !1075)
!1092 = !DILocation(line: 157, column: 6, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1075, file: !816, line: 157, column: 6)
!1094 = !DILocation(line: 157, column: 11, scope: !1093)
!1095 = !DILocation(line: 157, column: 18, scope: !1093)
!1096 = !DILocation(line: 157, column: 21, scope: !1097)
!1097 = !DILexicalBlockFile(scope: !1093, file: !816, discriminator: 1)
!1098 = !DILocation(line: 157, column: 27, scope: !1097)
!1099 = !DILocation(line: 157, column: 35, scope: !1097)
!1100 = !DILocation(line: 157, column: 6, scope: !1097)
!1101 = !DILocation(line: 159, column: 58, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1093, file: !816, line: 157, column: 44)
!1103 = !DILocation(line: 159, column: 40, scope: !1102)
!1104 = !DILocation(line: 159, column: 25, scope: !1102)
!1105 = !DILocation(line: 159, column: 37, scope: !1102)
!1106 = !DILocation(line: 159, column: 42, scope: !1102)
!1107 = !DILocation(line: 159, column: 48, scope: !1102)
!1108 = !DILocation(line: 159, column: 13, scope: !1109)
!1109 = !DILexicalBlockFile(scope: !1102, file: !816, discriminator: 1)
!1110 = !DILocation(line: 159, column: 11, scope: !1102)
!1111 = !DILocation(line: 160, column: 41, scope: !1102)
!1112 = !DILocation(line: 160, column: 47, scope: !1102)
!1113 = !DILocation(line: 160, column: 41, scope: !1109)
!1114 = !DILocation(line: 161, column: 11, scope: !1102)
!1115 = !DILocation(line: 160, column: 41, scope: !1116)
!1116 = !DILexicalBlockFile(scope: !1102, file: !816, discriminator: 2)
!1117 = !DILocation(line: 160, column: 41, scope: !1118)
!1118 = !DILexicalBlockFile(scope: !1102, file: !816, discriminator: 3)
!1119 = !DILocation(line: 162, column: 28, scope: !1102)
!1120 = !DILocation(line: 160, column: 9, scope: !1118)
!1121 = !DILocation(line: 160, column: 7, scope: !1118)
!1122 = !DILocation(line: 163, column: 31, scope: !1102)
!1123 = !DILocation(line: 163, column: 37, scope: !1102)
!1124 = !DILocation(line: 163, column: 17, scope: !1102)
!1125 = !DILocation(line: 164, column: 10, scope: !1102)
!1126 = !DILocation(line: 164, column: 3, scope: !1102)
!1127 = !DILocation(line: 165, column: 2, scope: !1102)
!1128 = !DILocation(line: 166, column: 58, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1093, file: !816, line: 165, column: 9)
!1130 = !DILocation(line: 166, column: 40, scope: !1129)
!1131 = !DILocation(line: 166, column: 25, scope: !1129)
!1132 = !DILocation(line: 166, column: 37, scope: !1129)
!1133 = !DILocation(line: 166, column: 42, scope: !1129)
!1134 = !DILocation(line: 166, column: 13, scope: !1135)
!1135 = !DILexicalBlockFile(scope: !1129, file: !816, discriminator: 1)
!1136 = !DILocation(line: 166, column: 11, scope: !1129)
!1137 = !DILocation(line: 167, column: 17, scope: !1129)
!1138 = !DILocation(line: 168, column: 10, scope: !1129)
!1139 = !DILocation(line: 168, column: 41, scope: !1129)
!1140 = !DILocation(line: 168, column: 49, scope: !1129)
!1141 = !DILocation(line: 167, column: 3, scope: !1129)
!1142 = !DILocation(line: 170, column: 9, scope: !1075)
!1143 = !DILocation(line: 170, column: 2, scope: !1075)
!1144 = !DILocation(line: 171, column: 1, scope: !1075)
!1145 = distinct !DISubprogram(name: "item_get_dcc", scope: !816, file: !816, line: 174, type: !1146, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !819)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!57, !549}
!1148 = !DILocalVariable(name: "item", arg: 1, scope: !1145, file: !816, line: 174, type: !549)
!1149 = !DILocation(line: 174, column: 41, scope: !1145)
!1150 = !DILocalVariable(name: "query", scope: !1145, file: !816, line: 176, type: !606)
!1151 = !DILocation(line: 176, column: 13, scope: !1145)
!1152 = !DILocation(line: 178, column: 90, scope: !1145)
!1153 = !DILocation(line: 178, column: 65, scope: !1145)
!1154 = !DILocation(line: 178, column: 51, scope: !1145)
!1155 = !DILocation(line: 178, column: 50, scope: !1145)
!1156 = !DILocation(line: 178, column: 25, scope: !1157)
!1157 = !DILexicalBlockFile(scope: !1145, file: !816, discriminator: 1)
!1158 = !DILocation(line: 178, column: 11, scope: !1145)
!1159 = !DILocation(line: 178, column: 8, scope: !1145)
!1160 = !DILocation(line: 179, column: 6, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1145, file: !816, line: 179, column: 6)
!1162 = !DILocation(line: 179, column: 12, scope: !1161)
!1163 = !DILocation(line: 179, column: 19, scope: !1161)
!1164 = !DILocation(line: 179, column: 23, scope: !1165)
!1165 = !DILexicalBlockFile(scope: !1161, file: !816, discriminator: 1)
!1166 = !DILocation(line: 179, column: 30, scope: !1165)
!1167 = !DILocation(line: 179, column: 22, scope: !1165)
!1168 = !DILocation(line: 179, column: 35, scope: !1165)
!1169 = !DILocation(line: 179, column: 6, scope: !1165)
!1170 = !DILocation(line: 180, column: 3, scope: !1161)
!1171 = !DILocation(line: 182, column: 26, scope: !1145)
!1172 = !DILocation(line: 182, column: 33, scope: !1145)
!1173 = !DILocation(line: 182, column: 37, scope: !1145)
!1174 = !DILocation(line: 182, column: 9, scope: !1145)
!1175 = !DILocation(line: 182, column: 2, scope: !1145)
!1176 = !DILocation(line: 183, column: 1, scope: !1145)
!1177 = distinct !DISubprogram(name: "dcc_chat_input", scope: !816, file: !816, line: 303, type: !1178, isLocal: false, isDefinition: true, scopeLine: 304, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !819)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{null, !57}
!1180 = !DILocalVariable(name: "dcc", arg: 1, scope: !1177, file: !816, line: 303, type: !57)
!1181 = !DILocation(line: 303, column: 35, scope: !1177)
!1182 = !DILocalVariable(name: "str", scope: !1177, file: !816, line: 305, type: !94)
!1183 = !DILocation(line: 305, column: 8, scope: !1177)
!1184 = !DILocalVariable(name: "ret", scope: !1177, file: !816, line: 306, type: !65)
!1185 = !DILocation(line: 306, column: 6, scope: !1177)
!1186 = !DILocation(line: 308, column: 2, scope: !1177)
!1187 = distinct !{!1187, !1186}
!1188 = !DILocation(line: 308, column: 54, scope: !1189)
!1189 = !DILexicalBlockFile(scope: !1190, file: !816, discriminator: 1)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !816, line: 308, column: 10)
!1191 = distinct !DILexicalBlock(scope: !1177, file: !816, line: 308, column: 4)
!1192 = !DILocation(line: 308, column: 29, scope: !1189)
!1193 = !DILocation(line: 308, column: 12, scope: !1189)
!1194 = !DILocation(line: 308, column: 10, scope: !1189)
!1195 = !DILocation(line: 308, column: 11, scope: !1196)
!1196 = !DILexicalBlockFile(scope: !1190, file: !816, discriminator: 2)
!1197 = !DILocation(line: 308, column: 10, scope: !1198)
!1198 = !DILexicalBlockFile(scope: !1191, file: !816, discriminator: 3)
!1199 = !DILocation(line: 308, column: 38, scope: !1200)
!1200 = !DILexicalBlockFile(scope: !1201, file: !816, discriminator: 4)
!1201 = distinct !DILexicalBlock(scope: !1190, file: !816, line: 308, column: 36)
!1202 = !DILocation(line: 308, column: 47, scope: !1203)
!1203 = !DILexicalBlockFile(scope: !1204, file: !816, discriminator: 5)
!1204 = distinct !DILexicalBlock(scope: !1190, file: !816, line: 308, column: 45)
!1205 = !DILocation(line: 308, column: 136, scope: !1203)
!1206 = !DILocation(line: 308, column: 147, scope: !1207)
!1207 = !DILexicalBlockFile(scope: !1191, file: !816, discriminator: 6)
!1208 = !DILocation(line: 310, column: 2, scope: !1177)
!1209 = distinct !{!1209, !1208}
!1210 = !DILocation(line: 311, column: 37, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1177, file: !816, line: 310, column: 5)
!1212 = !DILocation(line: 311, column: 42, scope: !1211)
!1213 = !DILocation(line: 311, column: 9, scope: !1211)
!1214 = !DILocation(line: 311, column: 7, scope: !1211)
!1215 = !DILocation(line: 313, column: 7, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1211, file: !816, line: 313, column: 7)
!1217 = !DILocation(line: 313, column: 11, scope: !1216)
!1218 = !DILocation(line: 313, column: 7, scope: !1211)
!1219 = !DILocation(line: 315, column: 25, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1216, file: !816, line: 313, column: 18)
!1221 = !DILocation(line: 315, column: 30, scope: !1220)
!1222 = !DILocation(line: 315, column: 46, scope: !1220)
!1223 = !DILocation(line: 316, column: 28, scope: !1220)
!1224 = !DILocation(line: 316, column: 15, scope: !1220)
!1225 = !DILocation(line: 316, column: 4, scope: !1220)
!1226 = !DILocation(line: 317, column: 4, scope: !1220)
!1227 = !DILocation(line: 320, column: 7, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1211, file: !816, line: 320, column: 7)
!1229 = !DILocation(line: 320, column: 11, scope: !1228)
!1230 = !DILocation(line: 320, column: 7, scope: !1211)
!1231 = !DILocalVariable(name: "recoded", scope: !1232, file: !816, line: 321, type: !94)
!1232 = distinct !DILexicalBlock(scope: !1228, file: !816, line: 320, column: 16)
!1233 = !DILocation(line: 321, column: 10, scope: !1232)
!1234 = !DILocation(line: 323, column: 20, scope: !1232)
!1235 = !DILocation(line: 323, column: 4, scope: !1232)
!1236 = !DILocation(line: 323, column: 9, scope: !1232)
!1237 = !DILocation(line: 323, column: 17, scope: !1232)
!1238 = !DILocation(line: 325, column: 58, scope: !1232)
!1239 = !DILocation(line: 325, column: 63, scope: !1232)
!1240 = !DILocation(line: 325, column: 40, scope: !1232)
!1241 = !DILocation(line: 325, column: 25, scope: !1232)
!1242 = !DILocation(line: 325, column: 37, scope: !1232)
!1243 = !DILocation(line: 325, column: 42, scope: !1232)
!1244 = !DILocation(line: 325, column: 47, scope: !1232)
!1245 = !DILocation(line: 325, column: 14, scope: !1246)
!1246 = !DILexicalBlockFile(scope: !1232, file: !816, discriminator: 1)
!1247 = !DILocation(line: 325, column: 12, scope: !1232)
!1248 = !DILocation(line: 326, column: 39, scope: !1232)
!1249 = !DILocation(line: 326, column: 44, scope: !1232)
!1250 = !DILocation(line: 326, column: 4, scope: !1232)
!1251 = !DILocation(line: 327, column: 11, scope: !1232)
!1252 = !DILocation(line: 327, column: 4, scope: !1232)
!1253 = !DILocation(line: 328, column: 3, scope: !1232)
!1254 = !DILocation(line: 329, column: 2, scope: !1211)
!1255 = !DILocation(line: 329, column: 11, scope: !1256)
!1256 = !DILexicalBlockFile(scope: !1177, file: !816, discriminator: 1)
!1257 = !DILocation(line: 329, column: 15, scope: !1256)
!1258 = !DILocation(line: 329, column: 2, scope: !1256)
!1259 = !DILocation(line: 330, column: 1, scope: !1177)
!1260 = distinct !DISubprogram(name: "dcc_chat_init", scope: !816, file: !816, line: 831, type: !263, isLocal: false, isDefinition: true, scopeLine: 832, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !819)
!1261 = !DILocation(line: 833, column: 9, scope: !1260)
!1262 = !DILocation(line: 834, column: 2, scope: !1260)
!1263 = !DILocation(line: 835, column: 2, scope: !1260)
!1264 = !DILocation(line: 837, column: 2, scope: !1260)
!1265 = !DILocation(line: 838, column: 2, scope: !1260)
!1266 = !DILocation(line: 839, column: 2, scope: !1260)
!1267 = !DILocation(line: 840, column: 2, scope: !1260)
!1268 = !DILocation(line: 841, column: 2, scope: !1260)
!1269 = !DILocation(line: 842, column: 2, scope: !1260)
!1270 = !DILocation(line: 843, column: 2, scope: !1260)
!1271 = !DILocation(line: 844, column: 2, scope: !1260)
!1272 = !DILocation(line: 845, column: 2, scope: !1260)
!1273 = !DILocation(line: 846, column: 2, scope: !1260)
!1274 = !DILocation(line: 847, column: 2, scope: !1260)
!1275 = !DILocation(line: 848, column: 2, scope: !1260)
!1276 = !DILocation(line: 849, column: 2, scope: !1260)
!1277 = !DILocation(line: 850, column: 2, scope: !1260)
!1278 = !DILocation(line: 851, column: 2, scope: !1260)
!1279 = !DILocation(line: 852, column: 2, scope: !1260)
!1280 = !DILocation(line: 853, column: 1, scope: !1260)
!1281 = distinct !DISubprogram(name: "cmd_msg", scope: !816, file: !816, line: 186, type: !1282, isLocal: true, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !819)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{null, !510, !422, !549}
!1284 = !DILocalVariable(name: "data", arg: 1, scope: !1281, file: !816, line: 186, type: !510)
!1285 = !DILocation(line: 186, column: 33, scope: !1281)
!1286 = !DILocalVariable(name: "server", arg: 2, scope: !1281, file: !816, line: 186, type: !422)
!1287 = !DILocation(line: 186, column: 51, scope: !1281)
!1288 = !DILocalVariable(name: "item", arg: 3, scope: !1281, file: !816, line: 186, type: !549)
!1289 = !DILocation(line: 186, column: 72, scope: !1281)
!1290 = !DILocalVariable(name: "dcc", scope: !1281, file: !816, line: 188, type: !57)
!1291 = !DILocation(line: 188, column: 16, scope: !1281)
!1292 = !DILocalVariable(name: "optlist", scope: !1281, file: !816, line: 189, type: !396)
!1293 = !DILocation(line: 189, column: 21, scope: !1281)
!1294 = !DILocalVariable(name: "text", scope: !1281, file: !816, line: 190, type: !94)
!1295 = !DILocation(line: 190, column: 8, scope: !1281)
!1296 = !DILocalVariable(name: "target", scope: !1281, file: !816, line: 190, type: !94)
!1297 = !DILocation(line: 190, column: 15, scope: !1281)
!1298 = !DILocalVariable(name: "free_arg", scope: !1281, file: !816, line: 191, type: !214)
!1299 = !DILocation(line: 191, column: 8, scope: !1281)
!1300 = !DILocation(line: 193, column: 2, scope: !1281)
!1301 = distinct !{!1301, !1300}
!1302 = !DILocation(line: 193, column: 10, scope: !1303)
!1303 = !DILexicalBlockFile(scope: !1304, file: !816, discriminator: 1)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !816, line: 193, column: 10)
!1305 = distinct !DILexicalBlock(scope: !1281, file: !816, line: 193, column: 4)
!1306 = !DILocation(line: 193, column: 15, scope: !1303)
!1307 = !DILocation(line: 193, column: 5, scope: !1308)
!1308 = !DILexicalBlockFile(scope: !1309, file: !816, discriminator: 2)
!1309 = distinct !DILexicalBlock(scope: !1304, file: !816, line: 193, column: 3)
!1310 = !DILocation(line: 193, column: 14, scope: !1311)
!1311 = !DILexicalBlockFile(scope: !1312, file: !816, discriminator: 3)
!1312 = distinct !DILexicalBlock(scope: !1304, file: !816, line: 193, column: 12)
!1313 = !DILocation(line: 193, column: 99, scope: !1311)
!1314 = !DILocation(line: 193, column: 110, scope: !1315)
!1315 = !DILexicalBlockFile(scope: !1305, file: !816, discriminator: 4)
!1316 = !DILocation(line: 195, column: 22, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1281, file: !816, line: 195, column: 6)
!1318 = !DILocation(line: 195, column: 7, scope: !1317)
!1319 = !DILocation(line: 195, column: 6, scope: !1281)
!1320 = !DILocation(line: 198, column: 3, scope: !1317)
!1321 = !DILocation(line: 201, column: 16, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1281, file: !816, line: 201, column: 6)
!1323 = !DILocation(line: 201, column: 6, scope: !1322)
!1324 = !DILocation(line: 201, column: 29, scope: !1322)
!1325 = !DILocation(line: 201, column: 6, scope: !1281)
!1326 = !DILocation(line: 202, column: 22, scope: !1322)
!1327 = !DILocation(line: 202, column: 9, scope: !1322)
!1328 = !DILocation(line: 202, column: 7, scope: !1322)
!1329 = !DILocation(line: 202, column: 3, scope: !1322)
!1330 = !DILocation(line: 203, column: 12, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1322, file: !816, line: 203, column: 11)
!1332 = !DILocation(line: 203, column: 11, scope: !1331)
!1333 = !DILocation(line: 203, column: 19, scope: !1331)
!1334 = !DILocation(line: 203, column: 11, scope: !1322)
!1335 = !DILocation(line: 204, column: 26, scope: !1331)
!1336 = !DILocation(line: 204, column: 32, scope: !1331)
!1337 = !DILocation(line: 204, column: 9, scope: !1331)
!1338 = !DILocation(line: 204, column: 7, scope: !1331)
!1339 = !DILocation(line: 204, column: 3, scope: !1331)
!1340 = !DILocation(line: 206, column: 7, scope: !1331)
!1341 = !DILocation(line: 208, column: 6, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1281, file: !816, line: 208, column: 6)
!1343 = !DILocation(line: 208, column: 10, scope: !1342)
!1344 = !DILocation(line: 208, column: 17, scope: !1342)
!1345 = !DILocation(line: 208, column: 20, scope: !1346)
!1346 = !DILexicalBlockFile(scope: !1342, file: !816, discriminator: 1)
!1347 = !DILocation(line: 208, column: 25, scope: !1346)
!1348 = !DILocation(line: 208, column: 33, scope: !1346)
!1349 = !DILocation(line: 208, column: 6, scope: !1346)
!1350 = !DILocalVariable(name: "recoded", scope: !1351, file: !816, line: 209, type: !94)
!1351 = distinct !DILexicalBlock(scope: !1342, file: !816, line: 208, column: 42)
!1352 = !DILocation(line: 209, column: 9, scope: !1351)
!1353 = !DILocation(line: 211, column: 24, scope: !1351)
!1354 = !DILocation(line: 211, column: 32, scope: !1351)
!1355 = !DILocation(line: 211, column: 38, scope: !1351)
!1356 = !DILocation(line: 211, column: 43, scope: !1351)
!1357 = !DILocation(line: 211, column: 13, scope: !1351)
!1358 = !DILocation(line: 211, column: 11, scope: !1351)
!1359 = !DILocation(line: 212, column: 17, scope: !1351)
!1360 = !DILocation(line: 212, column: 22, scope: !1351)
!1361 = !DILocation(line: 212, column: 3, scope: !1351)
!1362 = !DILocation(line: 213, column: 10, scope: !1351)
!1363 = !DILocation(line: 213, column: 3, scope: !1351)
!1364 = !DILocation(line: 214, column: 2, scope: !1351)
!1365 = !DILocation(line: 216, column: 6, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1281, file: !816, line: 216, column: 6)
!1367 = !DILocation(line: 216, column: 10, scope: !1366)
!1368 = !DILocation(line: 216, column: 17, scope: !1366)
!1369 = !DILocation(line: 216, column: 21, scope: !1370)
!1370 = !DILexicalBlockFile(scope: !1366, file: !816, discriminator: 1)
!1371 = !DILocation(line: 216, column: 20, scope: !1370)
!1372 = !DILocation(line: 216, column: 28, scope: !1370)
!1373 = !DILocation(line: 216, column: 6, scope: !1370)
!1374 = !DILocation(line: 217, column: 3, scope: !1366)
!1375 = !DILocation(line: 219, column: 18, scope: !1281)
!1376 = !DILocation(line: 219, column: 2, scope: !1281)
!1377 = !DILocation(line: 220, column: 1, scope: !1281)
!1378 = !DILocation(line: 220, column: 1, scope: !1379)
!1379 = !DILexicalBlockFile(scope: !1281, file: !816, discriminator: 1)
!1380 = distinct !DISubprogram(name: "cmd_me", scope: !816, file: !816, line: 222, type: !1381, isLocal: true, isDefinition: true, scopeLine: 223, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !819)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{null, !510, !74, !549}
!1383 = !DILocalVariable(name: "data", arg: 1, scope: !1380, file: !816, line: 222, type: !510)
!1384 = !DILocation(line: 222, column: 32, scope: !1380)
!1385 = !DILocalVariable(name: "server", arg: 2, scope: !1380, file: !816, line: 222, type: !74)
!1386 = !DILocation(line: 222, column: 54, scope: !1380)
!1387 = !DILocalVariable(name: "item", arg: 3, scope: !1380, file: !816, line: 222, type: !549)
!1388 = !DILocation(line: 222, column: 75, scope: !1380)
!1389 = !DILocalVariable(name: "dcc", scope: !1380, file: !816, line: 224, type: !57)
!1390 = !DILocation(line: 224, column: 16, scope: !1380)
!1391 = !DILocalVariable(name: "str", scope: !1380, file: !816, line: 225, type: !94)
!1392 = !DILocation(line: 225, column: 8, scope: !1380)
!1393 = !DILocation(line: 227, column: 2, scope: !1380)
!1394 = distinct !{!1394, !1393}
!1395 = !DILocation(line: 227, column: 10, scope: !1396)
!1396 = !DILexicalBlockFile(scope: !1397, file: !816, discriminator: 1)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !816, line: 227, column: 10)
!1398 = distinct !DILexicalBlock(scope: !1380, file: !816, line: 227, column: 4)
!1399 = !DILocation(line: 227, column: 15, scope: !1396)
!1400 = !DILocation(line: 227, column: 5, scope: !1401)
!1401 = !DILexicalBlockFile(scope: !1402, file: !816, discriminator: 2)
!1402 = distinct !DILexicalBlock(scope: !1397, file: !816, line: 227, column: 3)
!1403 = !DILocation(line: 227, column: 14, scope: !1404)
!1404 = !DILexicalBlockFile(scope: !1405, file: !816, discriminator: 3)
!1405 = distinct !DILexicalBlock(scope: !1397, file: !816, line: 227, column: 12)
!1406 = !DILocation(line: 227, column: 99, scope: !1404)
!1407 = !DILocation(line: 227, column: 110, scope: !1408)
!1408 = !DILexicalBlockFile(scope: !1398, file: !816, discriminator: 4)
!1409 = !DILocation(line: 229, column: 21, scope: !1380)
!1410 = !DILocation(line: 229, column: 8, scope: !1380)
!1411 = !DILocation(line: 229, column: 6, scope: !1380)
!1412 = !DILocation(line: 230, column: 6, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1380, file: !816, line: 230, column: 6)
!1414 = !DILocation(line: 230, column: 10, scope: !1413)
!1415 = !DILocation(line: 230, column: 6, scope: !1380)
!1416 = !DILocation(line: 230, column: 18, scope: !1417)
!1417 = !DILexicalBlockFile(scope: !1413, file: !816, discriminator: 1)
!1418 = !DILocation(line: 232, column: 31, scope: !1380)
!1419 = !DILocation(line: 232, column: 8, scope: !1380)
!1420 = !DILocation(line: 232, column: 6, scope: !1380)
!1421 = !DILocation(line: 233, column: 19, scope: !1380)
!1422 = !DILocation(line: 233, column: 27, scope: !1380)
!1423 = !DILocation(line: 233, column: 32, scope: !1380)
!1424 = !DILocation(line: 233, column: 38, scope: !1380)
!1425 = !DILocation(line: 233, column: 48, scope: !1380)
!1426 = !DILocation(line: 233, column: 2, scope: !1380)
!1427 = !DILocation(line: 234, column: 9, scope: !1380)
!1428 = !DILocation(line: 234, column: 2, scope: !1380)
!1429 = !DILocation(line: 236, column: 2, scope: !1380)
!1430 = !DILocation(line: 237, column: 1, scope: !1380)
!1431 = !DILocation(line: 237, column: 1, scope: !1432)
!1432 = !DILexicalBlockFile(scope: !1380, file: !816, discriminator: 1)
!1433 = distinct !DISubprogram(name: "cmd_action", scope: !816, file: !816, line: 239, type: !1434, isLocal: true, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !819)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{null, !510, !74}
!1436 = !DILocalVariable(name: "data", arg: 1, scope: !1433, file: !816, line: 239, type: !510)
!1437 = !DILocation(line: 239, column: 36, scope: !1433)
!1438 = !DILocalVariable(name: "server", arg: 2, scope: !1433, file: !816, line: 239, type: !74)
!1439 = !DILocation(line: 239, column: 58, scope: !1433)
!1440 = !DILocalVariable(name: "dcc", scope: !1433, file: !816, line: 241, type: !57)
!1441 = !DILocation(line: 241, column: 16, scope: !1433)
!1442 = !DILocalVariable(name: "target", scope: !1433, file: !816, line: 242, type: !94)
!1443 = !DILocation(line: 242, column: 8, scope: !1433)
!1444 = !DILocalVariable(name: "text", scope: !1433, file: !816, line: 242, type: !94)
!1445 = !DILocation(line: 242, column: 17, scope: !1433)
!1446 = !DILocalVariable(name: "str", scope: !1433, file: !816, line: 242, type: !94)
!1447 = !DILocation(line: 242, column: 24, scope: !1433)
!1448 = !DILocalVariable(name: "free_arg", scope: !1433, file: !816, line: 243, type: !214)
!1449 = !DILocation(line: 243, column: 8, scope: !1433)
!1450 = !DILocation(line: 245, column: 2, scope: !1433)
!1451 = distinct !{!1451, !1450}
!1452 = !DILocation(line: 245, column: 10, scope: !1453)
!1453 = !DILexicalBlockFile(scope: !1454, file: !816, discriminator: 1)
!1454 = distinct !DILexicalBlock(scope: !1455, file: !816, line: 245, column: 10)
!1455 = distinct !DILexicalBlock(scope: !1433, file: !816, line: 245, column: 4)
!1456 = !DILocation(line: 245, column: 15, scope: !1453)
!1457 = !DILocation(line: 245, column: 5, scope: !1458)
!1458 = !DILexicalBlockFile(scope: !1459, file: !816, discriminator: 2)
!1459 = distinct !DILexicalBlock(scope: !1454, file: !816, line: 245, column: 3)
!1460 = !DILocation(line: 245, column: 14, scope: !1461)
!1461 = !DILexicalBlockFile(scope: !1462, file: !816, discriminator: 3)
!1462 = distinct !DILexicalBlock(scope: !1454, file: !816, line: 245, column: 12)
!1463 = !DILocation(line: 245, column: 99, scope: !1461)
!1464 = !DILocation(line: 245, column: 110, scope: !1465)
!1465 = !DILexicalBlockFile(scope: !1455, file: !816, discriminator: 4)
!1466 = !DILocation(line: 247, column: 7, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1433, file: !816, line: 247, column: 6)
!1468 = !DILocation(line: 247, column: 6, scope: !1467)
!1469 = !DILocation(line: 247, column: 12, scope: !1467)
!1470 = !DILocation(line: 247, column: 6, scope: !1433)
!1471 = !DILocation(line: 249, column: 3, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1467, file: !816, line: 247, column: 20)
!1473 = !DILocation(line: 252, column: 22, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1433, file: !816, line: 252, column: 6)
!1475 = !DILocation(line: 252, column: 7, scope: !1474)
!1476 = !DILocation(line: 252, column: 6, scope: !1433)
!1477 = !DILocation(line: 254, column: 3, scope: !1474)
!1478 = !DILocation(line: 255, column: 7, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1433, file: !816, line: 255, column: 6)
!1480 = !DILocation(line: 255, column: 6, scope: !1479)
!1481 = !DILocation(line: 255, column: 14, scope: !1479)
!1482 = !DILocation(line: 255, column: 22, scope: !1479)
!1483 = !DILocation(line: 255, column: 26, scope: !1484)
!1484 = !DILexicalBlockFile(scope: !1479, file: !816, discriminator: 1)
!1485 = !DILocation(line: 255, column: 25, scope: !1484)
!1486 = !DILocation(line: 255, column: 31, scope: !1484)
!1487 = !DILocation(line: 255, column: 6, scope: !1484)
!1488 = !DILocation(line: 256, column: 3, scope: !1479)
!1489 = distinct !{!1489, !1488}
!1490 = !DILocation(line: 256, column: 24, scope: !1491)
!1491 = !DILexicalBlockFile(scope: !1492, file: !816, discriminator: 1)
!1492 = distinct !DILexicalBlock(scope: !1479, file: !816, line: 256, column: 6)
!1493 = !DILocation(line: 256, column: 8, scope: !1491)
!1494 = !DILocation(line: 256, column: 35, scope: !1491)
!1495 = distinct !{!1495, !1496}
!1496 = !DILocation(line: 256, column: 35, scope: !1492)
!1497 = !DILocation(line: 256, column: 40, scope: !1498)
!1498 = !DILexicalBlockFile(scope: !1499, file: !816, discriminator: 2)
!1499 = distinct !DILexicalBlock(scope: !1492, file: !816, line: 256, column: 38)
!1500 = !DILocation(line: 256, column: 122, scope: !1501)
!1501 = !DILexicalBlockFile(scope: !1498, file: !816, discriminator: 5)
!1502 = !DILocation(line: 256, column: 137, scope: !1498)
!1503 = !DILocation(line: 256, column: 158, scope: !1504)
!1504 = !DILexicalBlockFile(scope: !1492, file: !816, discriminator: 3)
!1505 = !DILocation(line: 256, column: 158, scope: !1506)
!1506 = !DILexicalBlockFile(scope: !1492, file: !816, discriminator: 4)
!1507 = !DILocation(line: 258, column: 25, scope: !1433)
!1508 = !DILocation(line: 258, column: 31, scope: !1433)
!1509 = !DILocation(line: 258, column: 8, scope: !1433)
!1510 = !DILocation(line: 258, column: 6, scope: !1433)
!1511 = !DILocation(line: 259, column: 6, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1433, file: !816, line: 259, column: 6)
!1513 = !DILocation(line: 259, column: 10, scope: !1512)
!1514 = !DILocation(line: 259, column: 6, scope: !1433)
!1515 = !DILocation(line: 260, column: 32, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1512, file: !816, line: 259, column: 18)
!1517 = !DILocation(line: 260, column: 9, scope: !1516)
!1518 = !DILocation(line: 260, column: 7, scope: !1516)
!1519 = !DILocation(line: 261, column: 20, scope: !1516)
!1520 = !DILocation(line: 261, column: 28, scope: !1516)
!1521 = !DILocation(line: 261, column: 33, scope: !1516)
!1522 = !DILocation(line: 261, column: 39, scope: !1516)
!1523 = !DILocation(line: 261, column: 49, scope: !1516)
!1524 = !DILocation(line: 261, column: 3, scope: !1516)
!1525 = !DILocation(line: 262, column: 10, scope: !1516)
!1526 = !DILocation(line: 262, column: 3, scope: !1516)
!1527 = !DILocation(line: 263, column: 2, scope: !1516)
!1528 = !DILocation(line: 265, column: 18, scope: !1433)
!1529 = !DILocation(line: 265, column: 2, scope: !1433)
!1530 = !DILocation(line: 266, column: 2, scope: !1433)
!1531 = !DILocation(line: 267, column: 1, scope: !1433)
!1532 = !DILocation(line: 267, column: 1, scope: !1533)
!1533 = !DILexicalBlockFile(scope: !1433, file: !816, discriminator: 1)
!1534 = distinct !DISubprogram(name: "cmd_ctcp", scope: !816, file: !816, line: 269, type: !1434, isLocal: true, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !819)
!1535 = !DILocalVariable(name: "data", arg: 1, scope: !1534, file: !816, line: 269, type: !510)
!1536 = !DILocation(line: 269, column: 34, scope: !1534)
!1537 = !DILocalVariable(name: "server", arg: 2, scope: !1534, file: !816, line: 269, type: !74)
!1538 = !DILocation(line: 269, column: 56, scope: !1534)
!1539 = !DILocalVariable(name: "dcc", scope: !1534, file: !816, line: 271, type: !57)
!1540 = !DILocation(line: 271, column: 16, scope: !1534)
!1541 = !DILocalVariable(name: "target", scope: !1534, file: !816, line: 272, type: !94)
!1542 = !DILocation(line: 272, column: 8, scope: !1534)
!1543 = !DILocalVariable(name: "ctcpcmd", scope: !1534, file: !816, line: 272, type: !94)
!1544 = !DILocation(line: 272, column: 17, scope: !1534)
!1545 = !DILocalVariable(name: "ctcpdata", scope: !1534, file: !816, line: 272, type: !94)
!1546 = !DILocation(line: 272, column: 27, scope: !1534)
!1547 = !DILocalVariable(name: "str", scope: !1534, file: !816, line: 272, type: !94)
!1548 = !DILocation(line: 272, column: 38, scope: !1534)
!1549 = !DILocalVariable(name: "free_arg", scope: !1534, file: !816, line: 273, type: !214)
!1550 = !DILocation(line: 273, column: 8, scope: !1534)
!1551 = !DILocation(line: 275, column: 2, scope: !1534)
!1552 = distinct !{!1552, !1551}
!1553 = !DILocation(line: 275, column: 10, scope: !1554)
!1554 = !DILexicalBlockFile(scope: !1555, file: !816, discriminator: 1)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !816, line: 275, column: 10)
!1556 = distinct !DILexicalBlock(scope: !1534, file: !816, line: 275, column: 4)
!1557 = !DILocation(line: 275, column: 15, scope: !1554)
!1558 = !DILocation(line: 275, column: 5, scope: !1559)
!1559 = !DILexicalBlockFile(scope: !1560, file: !816, discriminator: 2)
!1560 = distinct !DILexicalBlock(scope: !1555, file: !816, line: 275, column: 3)
!1561 = !DILocation(line: 275, column: 14, scope: !1562)
!1562 = !DILexicalBlockFile(scope: !1563, file: !816, discriminator: 3)
!1563 = distinct !DILexicalBlock(scope: !1555, file: !816, line: 275, column: 12)
!1564 = !DILocation(line: 275, column: 99, scope: !1562)
!1565 = !DILocation(line: 275, column: 110, scope: !1566)
!1566 = !DILexicalBlockFile(scope: !1556, file: !816, discriminator: 4)
!1567 = !DILocation(line: 277, column: 22, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1534, file: !816, line: 277, column: 6)
!1569 = !DILocation(line: 277, column: 7, scope: !1568)
!1570 = !DILocation(line: 277, column: 6, scope: !1534)
!1571 = !DILocation(line: 279, column: 3, scope: !1568)
!1572 = !DILocation(line: 280, column: 7, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1534, file: !816, line: 280, column: 6)
!1574 = !DILocation(line: 280, column: 6, scope: !1573)
!1575 = !DILocation(line: 280, column: 14, scope: !1573)
!1576 = !DILocation(line: 280, column: 22, scope: !1573)
!1577 = !DILocation(line: 280, column: 26, scope: !1578)
!1578 = !DILexicalBlockFile(scope: !1573, file: !816, discriminator: 1)
!1579 = !DILocation(line: 280, column: 25, scope: !1578)
!1580 = !DILocation(line: 280, column: 34, scope: !1578)
!1581 = !DILocation(line: 280, column: 6, scope: !1578)
!1582 = !DILocation(line: 281, column: 3, scope: !1573)
!1583 = distinct !{!1583, !1582}
!1584 = !DILocation(line: 281, column: 24, scope: !1585)
!1585 = !DILexicalBlockFile(scope: !1586, file: !816, discriminator: 1)
!1586 = distinct !DILexicalBlock(scope: !1573, file: !816, line: 281, column: 6)
!1587 = !DILocation(line: 281, column: 8, scope: !1585)
!1588 = !DILocation(line: 281, column: 35, scope: !1585)
!1589 = distinct !{!1589, !1590}
!1590 = !DILocation(line: 281, column: 35, scope: !1586)
!1591 = !DILocation(line: 281, column: 40, scope: !1592)
!1592 = !DILexicalBlockFile(scope: !1593, file: !816, discriminator: 2)
!1593 = distinct !DILexicalBlock(scope: !1586, file: !816, line: 281, column: 38)
!1594 = !DILocation(line: 281, column: 122, scope: !1595)
!1595 = !DILexicalBlockFile(scope: !1592, file: !816, discriminator: 5)
!1596 = !DILocation(line: 281, column: 137, scope: !1592)
!1597 = !DILocation(line: 281, column: 158, scope: !1598)
!1598 = !DILexicalBlockFile(scope: !1586, file: !816, discriminator: 3)
!1599 = !DILocation(line: 281, column: 158, scope: !1600)
!1600 = !DILexicalBlockFile(scope: !1586, file: !816, discriminator: 4)
!1601 = !DILocation(line: 283, column: 7, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1534, file: !816, line: 283, column: 6)
!1603 = !DILocation(line: 283, column: 6, scope: !1602)
!1604 = !DILocation(line: 283, column: 14, scope: !1602)
!1605 = !DILocation(line: 283, column: 6, scope: !1534)
!1606 = !DILocation(line: 285, column: 19, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1602, file: !816, line: 283, column: 22)
!1608 = !DILocation(line: 285, column: 3, scope: !1607)
!1609 = !DILocation(line: 286, column: 3, scope: !1607)
!1610 = !DILocation(line: 289, column: 25, scope: !1534)
!1611 = !DILocation(line: 289, column: 31, scope: !1534)
!1612 = !DILocation(line: 289, column: 8, scope: !1534)
!1613 = !DILocation(line: 289, column: 6, scope: !1534)
!1614 = !DILocation(line: 290, column: 6, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1534, file: !816, line: 290, column: 6)
!1616 = !DILocation(line: 290, column: 10, scope: !1615)
!1617 = !DILocation(line: 290, column: 6, scope: !1534)
!1618 = !DILocation(line: 291, column: 15, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1615, file: !816, line: 290, column: 18)
!1620 = !DILocation(line: 291, column: 3, scope: !1619)
!1621 = !DILocation(line: 293, column: 21, scope: !1619)
!1622 = !DILocation(line: 293, column: 35, scope: !1619)
!1623 = !DILocation(line: 293, column: 9, scope: !1619)
!1624 = !DILocation(line: 293, column: 7, scope: !1619)
!1625 = !DILocation(line: 294, column: 20, scope: !1619)
!1626 = !DILocation(line: 294, column: 28, scope: !1619)
!1627 = !DILocation(line: 294, column: 33, scope: !1619)
!1628 = !DILocation(line: 294, column: 39, scope: !1619)
!1629 = !DILocation(line: 294, column: 49, scope: !1619)
!1630 = !DILocation(line: 294, column: 3, scope: !1619)
!1631 = !DILocation(line: 295, column: 10, scope: !1619)
!1632 = !DILocation(line: 295, column: 3, scope: !1619)
!1633 = !DILocation(line: 296, column: 2, scope: !1619)
!1634 = !DILocation(line: 298, column: 18, scope: !1534)
!1635 = !DILocation(line: 298, column: 2, scope: !1534)
!1636 = !DILocation(line: 299, column: 2, scope: !1534)
!1637 = !DILocation(line: 300, column: 1, scope: !1534)
!1638 = !DILocation(line: 300, column: 1, scope: !1639)
!1639 = !DILexicalBlockFile(scope: !1534, file: !816, discriminator: 1)
!1640 = distinct !DISubprogram(name: "cmd_dcc_chat", scope: !816, file: !816, line: 442, type: !1434, isLocal: true, isDefinition: true, scopeLine: 443, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !819)
!1641 = !DILocalVariable(name: "data", arg: 1, scope: !1640, file: !816, line: 442, type: !510)
!1642 = !DILocation(line: 442, column: 38, scope: !1640)
!1643 = !DILocalVariable(name: "server", arg: 2, scope: !1640, file: !816, line: 442, type: !74)
!1644 = !DILocation(line: 442, column: 60, scope: !1640)
!1645 = !DILocalVariable(name: "free_arg", scope: !1640, file: !816, line: 444, type: !214)
!1646 = !DILocation(line: 444, column: 8, scope: !1640)
!1647 = !DILocalVariable(name: "dcc", scope: !1640, file: !816, line: 445, type: !57)
!1648 = !DILocation(line: 445, column: 16, scope: !1640)
!1649 = !DILocalVariable(name: "own_ip", scope: !1640, file: !816, line: 446, type: !108)
!1650 = !DILocation(line: 446, column: 9, scope: !1640)
!1651 = !DILocalVariable(name: "handle", scope: !1640, file: !816, line: 447, type: !153)
!1652 = !DILocation(line: 447, column: 14, scope: !1640)
!1653 = !DILocalVariable(name: "optlist", scope: !1640, file: !816, line: 448, type: !396)
!1654 = !DILocation(line: 448, column: 14, scope: !1640)
!1655 = !DILocalVariable(name: "p_id", scope: !1640, file: !816, line: 449, type: !65)
!1656 = !DILocation(line: 449, column: 6, scope: !1640)
!1657 = !DILocalVariable(name: "nick", scope: !1640, file: !816, line: 450, type: !94)
!1658 = !DILocation(line: 450, column: 8, scope: !1640)
!1659 = !DILocalVariable(name: "host", scope: !1640, file: !816, line: 450, type: !757)
!1660 = !DILocation(line: 450, column: 14, scope: !1640)
!1661 = !DILocalVariable(name: "port", scope: !1640, file: !816, line: 451, type: !65)
!1662 = !DILocation(line: 451, column: 6, scope: !1640)
!1663 = !DILocation(line: 453, column: 2, scope: !1640)
!1664 = distinct !{!1664, !1663}
!1665 = !DILocation(line: 453, column: 10, scope: !1666)
!1666 = !DILexicalBlockFile(scope: !1667, file: !816, discriminator: 1)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !816, line: 453, column: 10)
!1668 = distinct !DILexicalBlock(scope: !1640, file: !816, line: 453, column: 4)
!1669 = !DILocation(line: 453, column: 15, scope: !1666)
!1670 = !DILocation(line: 453, column: 5, scope: !1671)
!1671 = !DILexicalBlockFile(scope: !1672, file: !816, discriminator: 2)
!1672 = distinct !DILexicalBlock(scope: !1667, file: !816, line: 453, column: 3)
!1673 = !DILocation(line: 453, column: 14, scope: !1674)
!1674 = !DILexicalBlockFile(scope: !1675, file: !816, discriminator: 3)
!1675 = distinct !DILexicalBlock(scope: !1667, file: !816, line: 453, column: 12)
!1676 = !DILocation(line: 453, column: 99, scope: !1674)
!1677 = !DILocation(line: 453, column: 110, scope: !1678)
!1678 = !DILexicalBlockFile(scope: !1668, file: !816, discriminator: 4)
!1679 = !DILocation(line: 455, column: 22, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1640, file: !816, line: 455, column: 6)
!1681 = !DILocation(line: 455, column: 7, scope: !1680)
!1682 = !DILocation(line: 455, column: 6, scope: !1640)
!1683 = !DILocation(line: 457, column: 3, scope: !1680)
!1684 = !DILocation(line: 459, column: 7, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1640, file: !816, line: 459, column: 6)
!1686 = !DILocation(line: 459, column: 6, scope: !1685)
!1687 = !DILocation(line: 459, column: 12, scope: !1685)
!1688 = !DILocation(line: 459, column: 6, scope: !1640)
!1689 = !DILocation(line: 460, column: 76, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1685, file: !816, line: 459, column: 21)
!1691 = !DILocation(line: 460, column: 52, scope: !1692)
!1692 = !DILexicalBlockFile(scope: !1690, file: !816, discriminator: 1)
!1693 = !DILocation(line: 460, column: 52, scope: !1690)
!1694 = !DILocation(line: 460, column: 27, scope: !1695)
!1695 = !DILexicalBlockFile(scope: !1690, file: !816, discriminator: 2)
!1696 = !DILocation(line: 460, column: 10, scope: !1690)
!1697 = !DILocation(line: 460, column: 7, scope: !1690)
!1698 = !DILocation(line: 461, column: 7, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1690, file: !816, line: 461, column: 7)
!1700 = !DILocation(line: 461, column: 11, scope: !1699)
!1701 = !DILocation(line: 461, column: 7, scope: !1690)
!1702 = !DILocation(line: 462, column: 11, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1704, file: !816, line: 462, column: 8)
!1704 = distinct !DILexicalBlock(scope: !1699, file: !816, line: 461, column: 19)
!1705 = !DILocation(line: 462, column: 17, scope: !1703)
!1706 = !DILocation(line: 462, column: 25, scope: !1703)
!1707 = !DILocation(line: 462, column: 8, scope: !1704)
!1708 = !DILocation(line: 463, column: 22, scope: !1703)
!1709 = !DILocation(line: 463, column: 5, scope: !1703)
!1710 = !DILocation(line: 465, column: 22, scope: !1703)
!1711 = !DILocation(line: 465, column: 5, scope: !1703)
!1712 = !DILocation(line: 466, column: 3, scope: !1704)
!1713 = !DILocation(line: 467, column: 19, scope: !1690)
!1714 = !DILocation(line: 467, column: 3, scope: !1690)
!1715 = !DILocation(line: 468, column: 3, scope: !1690)
!1716 = !DILocation(line: 471, column: 25, scope: !1640)
!1717 = !DILocation(line: 471, column: 8, scope: !1640)
!1718 = !DILocation(line: 471, column: 6, scope: !1640)
!1719 = !DILocation(line: 472, column: 6, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1640, file: !816, line: 472, column: 6)
!1721 = !DILocation(line: 472, column: 10, scope: !1720)
!1722 = !DILocation(line: 472, column: 17, scope: !1720)
!1723 = !DILocation(line: 472, column: 22, scope: !1724)
!1724 = !DILexicalBlockFile(scope: !1720, file: !816, discriminator: 1)
!1725 = !DILocation(line: 472, column: 28, scope: !1724)
!1726 = !DILocation(line: 472, column: 35, scope: !1724)
!1727 = !DILocation(line: 472, column: 6, scope: !1724)
!1728 = !DILocation(line: 473, column: 10, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !816, line: 473, column: 7)
!1730 = distinct !DILexicalBlock(scope: !1720, file: !816, line: 472, column: 23)
!1731 = !DILocation(line: 473, column: 16, scope: !1729)
!1732 = !DILocation(line: 473, column: 24, scope: !1729)
!1733 = !DILocation(line: 473, column: 7, scope: !1730)
!1734 = !DILocation(line: 476, column: 21, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1729, file: !816, line: 473, column: 31)
!1736 = !DILocation(line: 476, column: 4, scope: !1735)
!1737 = !DILocation(line: 477, column: 3, scope: !1735)
!1738 = !DILocation(line: 479, column: 21, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1729, file: !816, line: 477, column: 10)
!1740 = !DILocation(line: 479, column: 4, scope: !1739)
!1741 = !DILocation(line: 481, column: 19, scope: !1730)
!1742 = !DILocation(line: 481, column: 3, scope: !1730)
!1743 = !DILocation(line: 482, column: 3, scope: !1730)
!1744 = !DILocation(line: 485, column: 6, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1640, file: !816, line: 485, column: 6)
!1746 = !DILocation(line: 485, column: 10, scope: !1745)
!1747 = !DILocation(line: 485, column: 17, scope: !1745)
!1748 = !DILocation(line: 485, column: 22, scope: !1749)
!1749 = !DILexicalBlockFile(scope: !1745, file: !816, discriminator: 1)
!1750 = !DILocation(line: 485, column: 28, scope: !1749)
!1751 = !DILocation(line: 485, column: 35, scope: !1749)
!1752 = !DILocation(line: 485, column: 20, scope: !1749)
!1753 = !DILocation(line: 485, column: 24, scope: !1754)
!1754 = !DILexicalBlockFile(scope: !1745, file: !816, discriminator: 2)
!1755 = !DILocation(line: 485, column: 30, scope: !1754)
!1756 = !DILocation(line: 485, column: 40, scope: !1754)
!1757 = !DILocation(line: 485, column: 46, scope: !1754)
!1758 = !DILocation(line: 486, column: 6, scope: !1745)
!1759 = !DILocation(line: 486, column: 11, scope: !1745)
!1760 = !DILocation(line: 486, column: 21, scope: !1745)
!1761 = !DILocation(line: 486, column: 18, scope: !1745)
!1762 = !DILocation(line: 485, column: 6, scope: !1763)
!1763 = !DILexicalBlockFile(scope: !1640, file: !816, discriminator: 3)
!1764 = !DILocation(line: 489, column: 29, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1745, file: !816, line: 486, column: 29)
!1766 = !DILocation(line: 489, column: 16, scope: !1765)
!1767 = !DILocation(line: 489, column: 3, scope: !1765)
!1768 = !DILocation(line: 490, column: 2, scope: !1765)
!1769 = !DILocation(line: 492, column: 87, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1640, file: !816, line: 492, column: 6)
!1771 = !DILocation(line: 492, column: 69, scope: !1770)
!1772 = !DILocation(line: 492, column: 54, scope: !1770)
!1773 = !DILocation(line: 492, column: 53, scope: !1770)
!1774 = !DILocation(line: 492, column: 28, scope: !1775)
!1775 = !DILexicalBlockFile(scope: !1770, file: !816, discriminator: 4)
!1776 = !DILocation(line: 492, column: 9, scope: !1770)
!1777 = !DILocation(line: 492, column: 32, scope: !1770)
!1778 = !DILocation(line: 492, column: 8, scope: !1779)
!1779 = !DILexicalBlockFile(scope: !1770, file: !816, discriminator: 1)
!1780 = !DILocation(line: 492, column: 32, scope: !1781)
!1781 = !DILexicalBlockFile(scope: !1770, file: !816, discriminator: 2)
!1782 = !DILocation(line: 492, column: 36, scope: !1783)
!1783 = !DILexicalBlockFile(scope: !1770, file: !816, discriminator: 3)
!1784 = !DILocation(line: 492, column: 44, scope: !1783)
!1785 = !DILocation(line: 492, column: 6, scope: !1783)
!1786 = !DILocation(line: 493, column: 3, scope: !1770)
!1787 = distinct !{!1787, !1786}
!1788 = !DILocation(line: 493, column: 24, scope: !1789)
!1789 = !DILexicalBlockFile(scope: !1790, file: !816, discriminator: 1)
!1790 = distinct !DILexicalBlock(scope: !1770, file: !816, line: 493, column: 6)
!1791 = !DILocation(line: 493, column: 8, scope: !1789)
!1792 = !DILocation(line: 493, column: 35, scope: !1789)
!1793 = distinct !{!1793, !1794}
!1794 = !DILocation(line: 493, column: 35, scope: !1790)
!1795 = !DILocation(line: 493, column: 40, scope: !1796)
!1796 = !DILexicalBlockFile(scope: !1797, file: !816, discriminator: 2)
!1797 = distinct !DILexicalBlock(scope: !1790, file: !816, line: 493, column: 38)
!1798 = !DILocation(line: 493, column: 118, scope: !1799)
!1799 = !DILexicalBlockFile(scope: !1796, file: !816, discriminator: 5)
!1800 = !DILocation(line: 493, column: 133, scope: !1796)
!1801 = !DILocation(line: 493, column: 154, scope: !1802)
!1802 = !DILexicalBlockFile(scope: !1790, file: !816, discriminator: 3)
!1803 = !DILocation(line: 493, column: 154, scope: !1804)
!1804 = !DILexicalBlockFile(scope: !1790, file: !816, discriminator: 4)
!1805 = !DILocation(line: 495, column: 24, scope: !1640)
!1806 = !DILocation(line: 495, column: 37, scope: !1640)
!1807 = !DILocation(line: 495, column: 8, scope: !1640)
!1808 = !DILocation(line: 495, column: 6, scope: !1640)
!1809 = !DILocation(line: 496, column: 6, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1640, file: !816, line: 496, column: 6)
!1811 = !DILocation(line: 496, column: 10, scope: !1810)
!1812 = !DILocation(line: 496, column: 6, scope: !1640)
!1813 = !DILocation(line: 497, column: 19, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1810, file: !816, line: 496, column: 18)
!1815 = !DILocation(line: 497, column: 3, scope: !1814)
!1816 = !DILocation(line: 498, column: 3, scope: !1814)
!1817 = distinct !{!1817, !1816}
!1818 = !DILocation(line: 498, column: 8, scope: !1819)
!1819 = !DILexicalBlockFile(scope: !1820, file: !816, discriminator: 1)
!1820 = distinct !DILexicalBlock(scope: !1814, file: !816, line: 498, column: 6)
!1821 = !DILocation(line: 498, column: 5, scope: !1819)
!1822 = !DILocation(line: 499, column: 3, scope: !1814)
!1823 = !DILocation(line: 502, column: 26, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1640, file: !816, line: 502, column: 6)
!1825 = !DILocation(line: 502, column: 6, scope: !1824)
!1826 = !DILocation(line: 502, column: 46, scope: !1824)
!1827 = !DILocation(line: 502, column: 6, scope: !1640)
!1828 = !DILocation(line: 504, column: 45, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1824, file: !816, line: 502, column: 54)
!1830 = !DILocation(line: 504, column: 53, scope: !1829)
!1831 = !DILocation(line: 504, column: 23, scope: !1829)
!1832 = !DILocation(line: 504, column: 12, scope: !1833)
!1833 = !DILexicalBlockFile(scope: !1829, file: !816, discriminator: 1)
!1834 = !DILocation(line: 504, column: 10, scope: !1829)
!1835 = !DILocation(line: 506, column: 7, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1829, file: !816, line: 506, column: 7)
!1837 = !DILocation(line: 506, column: 14, scope: !1836)
!1838 = !DILocation(line: 506, column: 7, scope: !1829)
!1839 = !DILocation(line: 507, column: 4, scope: !1836)
!1840 = distinct !{!1840, !1839}
!1841 = !DILocation(line: 507, column: 25, scope: !1842)
!1842 = !DILexicalBlockFile(scope: !1843, file: !816, discriminator: 1)
!1843 = distinct !DILexicalBlock(scope: !1836, file: !816, line: 507, column: 7)
!1844 = !DILocation(line: 507, column: 9, scope: !1842)
!1845 = !DILocation(line: 507, column: 36, scope: !1842)
!1846 = distinct !{!1846, !1847}
!1847 = !DILocation(line: 507, column: 36, scope: !1843)
!1848 = !DILocation(line: 507, column: 41, scope: !1849)
!1849 = !DILexicalBlockFile(scope: !1850, file: !816, discriminator: 2)
!1850 = distinct !DILexicalBlock(scope: !1843, file: !816, line: 507, column: 39)
!1851 = !DILocation(line: 507, column: 111, scope: !1852)
!1852 = !DILexicalBlockFile(scope: !1849, file: !816, discriminator: 5)
!1853 = !DILocation(line: 507, column: 126, scope: !1849)
!1854 = !DILocation(line: 507, column: 147, scope: !1855)
!1855 = !DILexicalBlockFile(scope: !1843, file: !816, discriminator: 3)
!1856 = !DILocation(line: 507, column: 147, scope: !1857)
!1857 = !DILexicalBlockFile(scope: !1843, file: !816, discriminator: 4)
!1858 = !DILocation(line: 509, column: 17, scope: !1829)
!1859 = !DILocation(line: 509, column: 3, scope: !1829)
!1860 = !DILocation(line: 509, column: 8, scope: !1829)
!1861 = !DILocation(line: 509, column: 15, scope: !1829)
!1862 = !DILocation(line: 511, column: 16, scope: !1829)
!1863 = !DILocation(line: 511, column: 21, scope: !1829)
!1864 = !DILocation(line: 512, column: 43, scope: !1829)
!1865 = !DILocation(line: 511, column: 4, scope: !1829)
!1866 = !DILocation(line: 510, column: 3, scope: !1829)
!1867 = !DILocation(line: 510, column: 8, scope: !1829)
!1868 = !DILocation(line: 510, column: 16, scope: !1829)
!1869 = !DILocation(line: 515, column: 38, scope: !1829)
!1870 = !DILocation(line: 515, column: 3, scope: !1829)
!1871 = !DILocation(line: 517, column: 23, scope: !1829)
!1872 = !DILocation(line: 517, column: 3, scope: !1829)
!1873 = !DILocation(line: 518, column: 17, scope: !1829)
!1874 = !DILocation(line: 519, column: 10, scope: !1829)
!1875 = !DILocation(line: 519, column: 16, scope: !1829)
!1876 = !DILocation(line: 519, column: 22, scope: !1829)
!1877 = !DILocation(line: 518, column: 3, scope: !1829)
!1878 = !DILocation(line: 520, column: 2, scope: !1829)
!1879 = !DILocation(line: 523, column: 3, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1824, file: !816, line: 520, column: 9)
!1881 = !DILocation(line: 523, column: 8, scope: !1880)
!1882 = !DILocation(line: 523, column: 13, scope: !1880)
!1883 = !DILocation(line: 524, column: 38, scope: !1880)
!1884 = !DILocation(line: 524, column: 3, scope: !1880)
!1885 = !DILocation(line: 527, column: 10, scope: !1880)
!1886 = !DILocation(line: 527, column: 17, scope: !1880)
!1887 = !DILocation(line: 527, column: 8, scope: !1880)
!1888 = !DILocation(line: 528, column: 18, scope: !1880)
!1889 = !DILocation(line: 528, column: 3, scope: !1880)
!1890 = !DILocation(line: 528, column: 8, scope: !1880)
!1891 = !DILocation(line: 528, column: 16, scope: !1880)
!1892 = !DILocation(line: 533, column: 17, scope: !1880)
!1893 = !DILocation(line: 535, column: 10, scope: !1880)
!1894 = !DILocation(line: 535, column: 16, scope: !1880)
!1895 = !DILocation(line: 533, column: 3, scope: !1880)
!1896 = !DILocation(line: 537, column: 18, scope: !1640)
!1897 = !DILocation(line: 537, column: 2, scope: !1640)
!1898 = !DILocation(line: 538, column: 1, scope: !1640)
!1899 = !DILocation(line: 538, column: 1, scope: !1900)
!1900 = !DILexicalBlockFile(scope: !1640, file: !816, discriminator: 1)
!1901 = distinct !DISubprogram(name: "cmd_mircdcc", scope: !816, file: !816, line: 541, type: !1902, isLocal: true, isDefinition: true, scopeLine: 543, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !819)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{null, !510, !422, !606}
!1904 = !DILocalVariable(name: "data", arg: 1, scope: !1901, file: !816, line: 541, type: !510)
!1905 = !DILocation(line: 541, column: 37, scope: !1901)
!1906 = !DILocalVariable(name: "server", arg: 2, scope: !1901, file: !816, line: 541, type: !422)
!1907 = !DILocation(line: 541, column: 55, scope: !1901)
!1908 = !DILocalVariable(name: "item", arg: 3, scope: !1901, file: !816, line: 542, type: !606)
!1909 = !DILocation(line: 542, column: 15, scope: !1901)
!1910 = !DILocalVariable(name: "dcc", scope: !1901, file: !816, line: 544, type: !57)
!1911 = !DILocation(line: 544, column: 16, scope: !1901)
!1912 = !DILocation(line: 546, column: 2, scope: !1901)
!1913 = distinct !{!1913, !1912}
!1914 = !DILocation(line: 546, column: 10, scope: !1915)
!1915 = !DILexicalBlockFile(scope: !1916, file: !816, discriminator: 1)
!1916 = distinct !DILexicalBlock(scope: !1917, file: !816, line: 546, column: 10)
!1917 = distinct !DILexicalBlock(scope: !1901, file: !816, line: 546, column: 4)
!1918 = !DILocation(line: 546, column: 15, scope: !1915)
!1919 = !DILocation(line: 546, column: 5, scope: !1920)
!1920 = !DILexicalBlockFile(scope: !1921, file: !816, discriminator: 2)
!1921 = distinct !DILexicalBlock(scope: !1916, file: !816, line: 546, column: 3)
!1922 = !DILocation(line: 546, column: 14, scope: !1923)
!1923 = !DILexicalBlockFile(scope: !1924, file: !816, discriminator: 3)
!1924 = distinct !DILexicalBlock(scope: !1916, file: !816, line: 546, column: 12)
!1925 = !DILocation(line: 546, column: 99, scope: !1923)
!1926 = !DILocation(line: 546, column: 110, scope: !1927)
!1927 = !DILexicalBlockFile(scope: !1917, file: !816, discriminator: 4)
!1928 = !DILocation(line: 548, column: 37, scope: !1901)
!1929 = !DILocation(line: 548, column: 21, scope: !1901)
!1930 = !DILocation(line: 548, column: 8, scope: !1901)
!1931 = !DILocation(line: 548, column: 6, scope: !1901)
!1932 = !DILocation(line: 549, column: 6, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1901, file: !816, line: 549, column: 6)
!1934 = !DILocation(line: 549, column: 10, scope: !1933)
!1935 = !DILocation(line: 549, column: 6, scope: !1901)
!1936 = !DILocation(line: 549, column: 18, scope: !1937)
!1937 = !DILexicalBlockFile(scope: !1933, file: !816, discriminator: 1)
!1938 = !DILocation(line: 551, column: 51, scope: !1901)
!1939 = !DILocation(line: 551, column: 50, scope: !1901)
!1940 = !DILocation(line: 551, column: 27, scope: !1901)
!1941 = !DILocation(line: 551, column: 19, scope: !1901)
!1942 = !DILocation(line: 551, column: 58, scope: !1901)
!1943 = !DILocation(line: 551, column: 65, scope: !1901)
!1944 = !DILocation(line: 552, column: 23, scope: !1901)
!1945 = !DILocation(line: 552, column: 3, scope: !1901)
!1946 = !DILocation(line: 552, column: 38, scope: !1901)
!1947 = !DILocation(line: 551, column: 65, scope: !1948)
!1948 = !DILexicalBlockFile(scope: !1901, file: !816, discriminator: 1)
!1949 = !DILocation(line: 551, column: 2, scope: !1948)
!1950 = !DILocation(line: 551, column: 7, scope: !1948)
!1951 = !DILocation(line: 551, column: 17, scope: !1948)
!1952 = !DILocation(line: 553, column: 1, scope: !1901)
!1953 = !DILocation(line: 553, column: 1, scope: !1948)
!1954 = distinct !DISubprogram(name: "cmd_dcc_close", scope: !816, file: !816, line: 557, type: !1955, isLocal: true, isDefinition: true, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !819)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{null, !94, !422}
!1957 = !DILocalVariable(name: "data", arg: 1, scope: !1954, file: !816, line: 557, type: !94)
!1958 = !DILocation(line: 557, column: 33, scope: !1954)
!1959 = !DILocalVariable(name: "server", arg: 2, scope: !1954, file: !816, line: 557, type: !422)
!1960 = !DILocation(line: 557, column: 51, scope: !1954)
!1961 = !DILocalVariable(name: "tmp", scope: !1954, file: !816, line: 559, type: !275)
!1962 = !DILocation(line: 559, column: 10, scope: !1954)
!1963 = !DILocalVariable(name: "next", scope: !1954, file: !816, line: 559, type: !275)
!1964 = !DILocation(line: 559, column: 16, scope: !1954)
!1965 = !DILocalVariable(name: "nick", scope: !1954, file: !816, line: 560, type: !94)
!1966 = !DILocation(line: 560, column: 8, scope: !1954)
!1967 = !DILocalVariable(name: "free_arg", scope: !1954, file: !816, line: 561, type: !214)
!1968 = !DILocation(line: 561, column: 8, scope: !1954)
!1969 = !DILocalVariable(name: "found", scope: !1954, file: !816, line: 562, type: !65)
!1970 = !DILocation(line: 562, column: 6, scope: !1954)
!1971 = !DILocation(line: 564, column: 2, scope: !1954)
!1972 = distinct !{!1972, !1971}
!1973 = !DILocation(line: 564, column: 10, scope: !1974)
!1974 = !DILexicalBlockFile(scope: !1975, file: !816, discriminator: 1)
!1975 = distinct !DILexicalBlock(scope: !1976, file: !816, line: 564, column: 10)
!1976 = distinct !DILexicalBlock(scope: !1954, file: !816, line: 564, column: 4)
!1977 = !DILocation(line: 564, column: 15, scope: !1974)
!1978 = !DILocation(line: 564, column: 5, scope: !1979)
!1979 = !DILexicalBlockFile(scope: !1980, file: !816, discriminator: 2)
!1980 = distinct !DILexicalBlock(scope: !1975, file: !816, line: 564, column: 3)
!1981 = !DILocation(line: 564, column: 14, scope: !1982)
!1982 = !DILexicalBlockFile(scope: !1983, file: !816, discriminator: 3)
!1983 = distinct !DILexicalBlock(scope: !1975, file: !816, line: 564, column: 12)
!1984 = !DILocation(line: 564, column: 99, scope: !1982)
!1985 = !DILocation(line: 564, column: 110, scope: !1986)
!1986 = !DILexicalBlockFile(scope: !1976, file: !816, discriminator: 4)
!1987 = !DILocation(line: 566, column: 26, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1954, file: !816, line: 566, column: 6)
!1989 = !DILocation(line: 566, column: 6, scope: !1988)
!1990 = !DILocation(line: 566, column: 44, scope: !1988)
!1991 = !DILocation(line: 566, column: 49, scope: !1988)
!1992 = !DILocation(line: 567, column: 22, scope: !1988)
!1993 = !DILocation(line: 567, column: 7, scope: !1988)
!1994 = !DILocation(line: 566, column: 6, scope: !1995)
!1995 = !DILexicalBlockFile(scope: !1954, file: !816, discriminator: 1)
!1996 = !DILocation(line: 568, column: 3, scope: !1988)
!1997 = !DILocation(line: 570, column: 7, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1954, file: !816, line: 570, column: 6)
!1999 = !DILocation(line: 570, column: 6, scope: !1998)
!2000 = !DILocation(line: 570, column: 12, scope: !1998)
!2001 = !DILocation(line: 570, column: 6, scope: !1954)
!2002 = !DILocation(line: 570, column: 21, scope: !2003)
!2003 = !DILexicalBlockFile(scope: !1998, file: !816, discriminator: 1)
!2004 = distinct !{!2004, !2005}
!2005 = !DILocation(line: 570, column: 21, scope: !1998)
!2006 = !DILocation(line: 570, column: 42, scope: !2007)
!2007 = !DILexicalBlockFile(scope: !2008, file: !816, discriminator: 2)
!2008 = distinct !DILexicalBlock(scope: !1998, file: !816, line: 570, column: 24)
!2009 = !DILocation(line: 570, column: 26, scope: !2007)
!2010 = !DILocation(line: 570, column: 53, scope: !2007)
!2011 = distinct !{!2011, !2012}
!2012 = !DILocation(line: 570, column: 53, scope: !2008)
!2013 = !DILocation(line: 570, column: 58, scope: !2014)
!2014 = !DILexicalBlockFile(scope: !2015, file: !816, discriminator: 3)
!2015 = distinct !DILexicalBlock(scope: !2008, file: !816, line: 570, column: 56)
!2016 = !DILocation(line: 570, column: 140, scope: !2017)
!2017 = !DILexicalBlockFile(scope: !2014, file: !816, discriminator: 6)
!2018 = !DILocation(line: 570, column: 155, scope: !2014)
!2019 = !DILocation(line: 570, column: 176, scope: !2020)
!2020 = !DILexicalBlockFile(scope: !2008, file: !816, discriminator: 4)
!2021 = !DILocation(line: 570, column: 176, scope: !2022)
!2022 = !DILexicalBlockFile(scope: !2008, file: !816, discriminator: 5)
!2023 = !DILocation(line: 572, column: 8, scope: !1954)
!2024 = !DILocation(line: 573, column: 13, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !1954, file: !816, line: 573, column: 2)
!2026 = !DILocation(line: 573, column: 11, scope: !2025)
!2027 = !DILocation(line: 573, column: 7, scope: !2025)
!2028 = !DILocation(line: 573, column: 24, scope: !2029)
!2029 = !DILexicalBlockFile(scope: !2030, file: !816, discriminator: 1)
!2030 = distinct !DILexicalBlock(scope: !2025, file: !816, line: 573, column: 2)
!2031 = !DILocation(line: 573, column: 28, scope: !2029)
!2032 = !DILocation(line: 573, column: 2, scope: !2029)
!2033 = !DILocalVariable(name: "dcc", scope: !2034, file: !816, line: 574, type: !57)
!2034 = distinct !DILexicalBlock(scope: !2030, file: !816, line: 573, column: 48)
!2035 = !DILocation(line: 574, column: 17, scope: !2034)
!2036 = !DILocation(line: 574, column: 23, scope: !2034)
!2037 = !DILocation(line: 574, column: 28, scope: !2034)
!2038 = !DILocation(line: 576, column: 10, scope: !2034)
!2039 = !DILocation(line: 576, column: 15, scope: !2034)
!2040 = !DILocation(line: 576, column: 8, scope: !2034)
!2041 = !DILocation(line: 577, column: 51, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2034, file: !816, line: 577, column: 7)
!2043 = !DILocation(line: 577, column: 26, scope: !2042)
!2044 = !DILocation(line: 577, column: 9, scope: !2042)
!2045 = !DILocation(line: 577, column: 40, scope: !2042)
!2046 = !DILocation(line: 577, column: 8, scope: !2047)
!2047 = !DILexicalBlockFile(scope: !2042, file: !816, discriminator: 1)
!2048 = !DILocation(line: 577, column: 40, scope: !2049)
!2049 = !DILexicalBlockFile(scope: !2042, file: !816, discriminator: 2)
!2050 = !DILocation(line: 577, column: 43, scope: !2051)
!2051 = !DILexicalBlockFile(scope: !2042, file: !816, discriminator: 3)
!2052 = !DILocation(line: 577, column: 48, scope: !2051)
!2053 = !DILocation(line: 577, column: 51, scope: !2051)
!2054 = !DILocation(line: 577, column: 42, scope: !2051)
!2055 = !DILocation(line: 578, column: 26, scope: !2042)
!2056 = !DILocation(line: 578, column: 31, scope: !2042)
!2057 = !DILocation(line: 578, column: 35, scope: !2042)
!2058 = !DILocation(line: 578, column: 7, scope: !2042)
!2059 = !DILocation(line: 578, column: 41, scope: !2042)
!2060 = !DILocation(line: 577, column: 7, scope: !2061)
!2061 = !DILexicalBlockFile(scope: !2034, file: !816, discriminator: 4)
!2062 = !DILocation(line: 579, column: 10, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2042, file: !816, line: 578, column: 47)
!2064 = !DILocation(line: 580, column: 11, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2063, file: !816, line: 580, column: 8)
!2066 = !DILocation(line: 580, column: 17, scope: !2065)
!2067 = !DILocation(line: 580, column: 27, scope: !2065)
!2068 = !DILocation(line: 580, column: 33, scope: !2065)
!2069 = !DILocation(line: 580, column: 116, scope: !2070)
!2070 = !DILexicalBlockFile(scope: !2065, file: !816, discriminator: 1)
!2071 = !DILocation(line: 580, column: 98, scope: !2070)
!2072 = !DILocation(line: 580, column: 83, scope: !2070)
!2073 = !DILocation(line: 580, column: 82, scope: !2070)
!2074 = !DILocation(line: 580, column: 57, scope: !2075)
!2075 = !DILexicalBlockFile(scope: !2070, file: !816, discriminator: 4)
!2076 = !DILocation(line: 580, column: 38, scope: !2070)
!2077 = !DILocation(line: 580, column: 8, scope: !2070)
!2078 = !DILocation(line: 580, column: 37, scope: !2079)
!2079 = !DILexicalBlockFile(scope: !2065, file: !816, discriminator: 2)
!2080 = !DILocation(line: 580, column: 8, scope: !2081)
!2081 = !DILexicalBlockFile(scope: !2063, file: !816, discriminator: 3)
!2082 = !DILocation(line: 581, column: 30, scope: !2065)
!2083 = !DILocation(line: 581, column: 17, scope: !2065)
!2084 = !DILocation(line: 581, column: 116, scope: !2065)
!2085 = !DILocation(line: 581, column: 98, scope: !2065)
!2086 = !DILocation(line: 581, column: 83, scope: !2065)
!2087 = !DILocation(line: 581, column: 82, scope: !2065)
!2088 = !DILocation(line: 581, column: 57, scope: !2070)
!2089 = !DILocation(line: 581, column: 38, scope: !2065)
!2090 = !DILocation(line: 581, column: 5, scope: !2079)
!2091 = !DILocation(line: 581, column: 5, scope: !2065)
!2092 = !DILocation(line: 585, column: 29, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2065, file: !816, line: 582, column: 9)
!2094 = !DILocation(line: 585, column: 16, scope: !2093)
!2095 = !DILocation(line: 585, column: 5, scope: !2093)
!2096 = !DILocation(line: 587, column: 3, scope: !2063)
!2097 = !DILocation(line: 588, column: 2, scope: !2034)
!2098 = !DILocation(line: 573, column: 42, scope: !2099)
!2099 = !DILexicalBlockFile(scope: !2030, file: !816, discriminator: 2)
!2100 = !DILocation(line: 573, column: 40, scope: !2099)
!2101 = !DILocation(line: 573, column: 2, scope: !2099)
!2102 = distinct !{!2102, !2103}
!2103 = !DILocation(line: 573, column: 2, scope: !1954)
!2104 = !DILocation(line: 590, column: 6, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !1954, file: !816, line: 590, column: 6)
!2106 = !DILocation(line: 590, column: 6, scope: !1954)
!2107 = !DILocation(line: 590, column: 13, scope: !2108)
!2108 = !DILexicalBlockFile(scope: !2105, file: !816, discriminator: 1)
!2109 = !DILocation(line: 592, column: 18, scope: !1954)
!2110 = !DILocation(line: 592, column: 2, scope: !1954)
!2111 = !DILocation(line: 593, column: 1, scope: !1954)
!2112 = !DILocation(line: 593, column: 1, scope: !1995)
!2113 = distinct !DISubprogram(name: "cmd_whois", scope: !816, file: !816, line: 595, type: !1282, isLocal: true, isDefinition: true, scopeLine: 597, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !819)
!2114 = !DILocalVariable(name: "data", arg: 1, scope: !2113, file: !816, line: 595, type: !510)
!2115 = !DILocation(line: 595, column: 35, scope: !2113)
!2116 = !DILocalVariable(name: "server", arg: 2, scope: !2113, file: !816, line: 595, type: !422)
!2117 = !DILocation(line: 595, column: 53, scope: !2113)
!2118 = !DILocalVariable(name: "item", arg: 3, scope: !2113, file: !816, line: 596, type: !549)
!2119 = !DILocation(line: 596, column: 22, scope: !2113)
!2120 = !DILocalVariable(name: "dcc", scope: !2113, file: !816, line: 598, type: !57)
!2121 = !DILocation(line: 598, column: 16, scope: !2113)
!2122 = !DILocation(line: 600, column: 2, scope: !2113)
!2123 = distinct !{!2123, !2122}
!2124 = !DILocation(line: 600, column: 10, scope: !2125)
!2125 = !DILexicalBlockFile(scope: !2126, file: !816, discriminator: 1)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !816, line: 600, column: 10)
!2127 = distinct !DILexicalBlock(scope: !2113, file: !816, line: 600, column: 4)
!2128 = !DILocation(line: 600, column: 15, scope: !2125)
!2129 = !DILocation(line: 600, column: 5, scope: !2130)
!2130 = !DILexicalBlockFile(scope: !2131, file: !816, discriminator: 2)
!2131 = distinct !DILexicalBlock(scope: !2126, file: !816, line: 600, column: 3)
!2132 = !DILocation(line: 600, column: 14, scope: !2133)
!2133 = !DILexicalBlockFile(scope: !2134, file: !816, discriminator: 3)
!2134 = distinct !DILexicalBlock(scope: !2126, file: !816, line: 600, column: 12)
!2135 = !DILocation(line: 600, column: 99, scope: !2133)
!2136 = !DILocation(line: 600, column: 110, scope: !2137)
!2137 = !DILexicalBlockFile(scope: !2127, file: !816, discriminator: 4)
!2138 = !DILocation(line: 603, column: 7, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2113, file: !816, line: 603, column: 6)
!2140 = !DILocation(line: 603, column: 6, scope: !2139)
!2141 = !DILocation(line: 603, column: 12, scope: !2139)
!2142 = !DILocation(line: 603, column: 6, scope: !2113)
!2143 = !DILocation(line: 604, column: 22, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2139, file: !816, line: 603, column: 21)
!2145 = !DILocation(line: 604, column: 9, scope: !2144)
!2146 = !DILocation(line: 604, column: 7, scope: !2144)
!2147 = !DILocation(line: 605, column: 7, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2144, file: !816, line: 605, column: 7)
!2149 = !DILocation(line: 605, column: 11, scope: !2148)
!2150 = !DILocation(line: 605, column: 7, scope: !2144)
!2151 = !DILocation(line: 607, column: 9, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2148, file: !816, line: 605, column: 19)
!2153 = !DILocation(line: 607, column: 14, scope: !2152)
!2154 = !DILocation(line: 607, column: 20, scope: !2152)
!2155 = !DILocation(line: 607, column: 28, scope: !2152)
!2156 = !DILocation(line: 606, column: 4, scope: !2152)
!2157 = !DILocation(line: 608, column: 25, scope: !2152)
!2158 = !DILocation(line: 609, column: 3, scope: !2152)
!2159 = !DILocation(line: 610, column: 2, scope: !2144)
!2160 = !DILocation(line: 611, column: 1, scope: !2113)
!2161 = distinct !DISubprogram(name: "sig_dcc_destroyed", scope: !816, file: !816, line: 93, type: !1178, isLocal: true, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !819)
!2162 = !DILocalVariable(name: "dcc", arg: 1, scope: !2161, file: !816, line: 93, type: !57)
!2163 = !DILocation(line: 93, column: 45, scope: !2161)
!2164 = !DILocation(line: 95, column: 51, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2161, file: !816, line: 95, column: 6)
!2166 = !DILocation(line: 95, column: 26, scope: !2165)
!2167 = !DILocation(line: 95, column: 9, scope: !2165)
!2168 = !DILocation(line: 95, column: 6, scope: !2161)
!2169 = !DILocation(line: 95, column: 8, scope: !2170)
!2170 = !DILexicalBlockFile(scope: !2165, file: !816, discriminator: 1)
!2171 = !DILocation(line: 95, column: 6, scope: !2172)
!2172 = !DILexicalBlockFile(scope: !2161, file: !816, discriminator: 2)
!2173 = !DILocation(line: 95, column: 41, scope: !2174)
!2174 = !DILexicalBlockFile(scope: !2165, file: !816, discriminator: 3)
!2175 = !DILocation(line: 97, column: 23, scope: !2161)
!2176 = !DILocation(line: 97, column: 2, scope: !2161)
!2177 = !DILocation(line: 99, column: 6, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2161, file: !816, line: 99, column: 6)
!2179 = !DILocation(line: 99, column: 11, scope: !2178)
!2180 = !DILocation(line: 99, column: 19, scope: !2178)
!2181 = !DILocation(line: 99, column: 6, scope: !2161)
!2182 = !DILocation(line: 99, column: 50, scope: !2183)
!2183 = !DILexicalBlockFile(scope: !2178, file: !816, discriminator: 1)
!2184 = !DILocation(line: 99, column: 55, scope: !2183)
!2185 = !DILocation(line: 99, column: 27, scope: !2183)
!2186 = !DILocation(line: 100, column: 9, scope: !2161)
!2187 = !DILocation(line: 100, column: 14, scope: !2161)
!2188 = !DILocation(line: 100, column: 2, scope: !2161)
!2189 = !DILocation(line: 101, column: 1, scope: !2161)
!2190 = !DILocation(line: 101, column: 1, scope: !2191)
!2191 = !DILexicalBlockFile(scope: !2161, file: !816, discriminator: 1)
!2192 = distinct !DISubprogram(name: "ctcp_msg_dcc_chat", scope: !816, file: !816, line: 623, type: !2193, isLocal: true, isDefinition: true, scopeLine: 626, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !819)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{null, !74, !510, !510, !510, !510, !57}
!2195 = !DILocalVariable(name: "server", arg: 1, scope: !2192, file: !816, line: 623, type: !74)
!2196 = !DILocation(line: 623, column: 47, scope: !2192)
!2197 = !DILocalVariable(name: "data", arg: 2, scope: !2192, file: !816, line: 623, type: !510)
!2198 = !DILocation(line: 623, column: 67, scope: !2192)
!2199 = !DILocalVariable(name: "nick", arg: 3, scope: !2192, file: !816, line: 624, type: !510)
!2200 = !DILocation(line: 624, column: 22, scope: !2192)
!2201 = !DILocalVariable(name: "addr", arg: 4, scope: !2192, file: !816, line: 624, type: !510)
!2202 = !DILocation(line: 624, column: 40, scope: !2192)
!2203 = !DILocalVariable(name: "target", arg: 5, scope: !2192, file: !816, line: 625, type: !510)
!2204 = !DILocation(line: 625, column: 22, scope: !2192)
!2205 = !DILocalVariable(name: "chat", arg: 6, scope: !2192, file: !816, line: 625, type: !57)
!2206 = !DILocation(line: 625, column: 44, scope: !2192)
!2207 = !DILocalVariable(name: "dcc", scope: !2192, file: !816, line: 627, type: !57)
!2208 = !DILocation(line: 627, column: 23, scope: !2192)
!2209 = !DILocalVariable(name: "params", scope: !2192, file: !816, line: 628, type: !524)
!2210 = !DILocation(line: 628, column: 9, scope: !2192)
!2211 = !DILocalVariable(name: "paramcount", scope: !2192, file: !816, line: 629, type: !65)
!2212 = !DILocation(line: 629, column: 6, scope: !2192)
!2213 = !DILocalVariable(name: "passive", scope: !2192, file: !816, line: 630, type: !65)
!2214 = !DILocation(line: 630, column: 13, scope: !2192)
!2215 = !DILocalVariable(name: "autoallow", scope: !2192, file: !816, line: 630, type: !65)
!2216 = !DILocation(line: 630, column: 22, scope: !2192)
!2217 = !DILocation(line: 634, column: 22, scope: !2192)
!2218 = !DILocation(line: 634, column: 11, scope: !2192)
!2219 = !DILocation(line: 634, column: 9, scope: !2192)
!2220 = !DILocation(line: 635, column: 29, scope: !2192)
!2221 = !DILocation(line: 635, column: 15, scope: !2192)
!2222 = !DILocation(line: 635, column: 13, scope: !2192)
!2223 = !DILocation(line: 637, column: 6, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2192, file: !816, line: 637, column: 6)
!2225 = !DILocation(line: 637, column: 17, scope: !2224)
!2226 = !DILocation(line: 637, column: 6, scope: !2192)
!2227 = !DILocation(line: 638, column: 14, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2224, file: !816, line: 637, column: 22)
!2229 = !DILocation(line: 638, column: 3, scope: !2228)
!2230 = !DILocation(line: 639, column: 3, scope: !2228)
!2231 = !DILocation(line: 641, column: 12, scope: !2192)
!2232 = !DILocation(line: 641, column: 23, scope: !2192)
!2233 = !DILocation(line: 641, column: 28, scope: !2192)
!2234 = !DILocation(line: 641, column: 41, scope: !2235)
!2235 = !DILexicalBlockFile(scope: !2192, file: !816, discriminator: 1)
!2236 = !DILocation(line: 641, column: 31, scope: !2235)
!2237 = !DILocation(line: 641, column: 57, scope: !2235)
!2238 = !DILocation(line: 641, column: 28, scope: !2239)
!2239 = !DILexicalBlockFile(scope: !2192, file: !816, discriminator: 2)
!2240 = !DILocation(line: 641, column: 10, scope: !2239)
!2241 = !DILocation(line: 643, column: 6, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2192, file: !816, line: 643, column: 6)
!2243 = !DILocation(line: 643, column: 11, scope: !2242)
!2244 = !DILocation(line: 643, column: 6, scope: !2192)
!2245 = !DILocation(line: 644, column: 8, scope: !2242)
!2246 = !DILocation(line: 644, column: 3, scope: !2242)
!2247 = !DILocation(line: 646, column: 68, scope: !2192)
!2248 = !DILocation(line: 646, column: 107, scope: !2192)
!2249 = !DILocation(line: 646, column: 51, scope: !2235)
!2250 = !DILocation(line: 646, column: 51, scope: !2192)
!2251 = !DILocation(line: 646, column: 26, scope: !2239)
!2252 = !DILocation(line: 646, column: 9, scope: !2192)
!2253 = !DILocation(line: 646, column: 6, scope: !2192)
!2254 = !DILocation(line: 647, column: 6, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2192, file: !816, line: 647, column: 6)
!2256 = !DILocation(line: 647, column: 10, scope: !2255)
!2257 = !DILocation(line: 647, column: 6, scope: !2192)
!2258 = !DILocation(line: 648, column: 9, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !816, line: 648, column: 7)
!2260 = distinct !DILexicalBlock(scope: !2255, file: !816, line: 647, column: 18)
!2261 = !DILocation(line: 648, column: 15, scope: !2259)
!2262 = !DILocation(line: 648, column: 22, scope: !2259)
!2263 = !DILocation(line: 648, column: 6, scope: !2259)
!2264 = !DILocation(line: 648, column: 10, scope: !2265)
!2265 = !DILexicalBlockFile(scope: !2259, file: !816, discriminator: 1)
!2266 = !DILocation(line: 648, column: 16, scope: !2265)
!2267 = !DILocation(line: 648, column: 26, scope: !2265)
!2268 = !DILocation(line: 648, column: 7, scope: !2265)
!2269 = !DILocation(line: 651, column: 30, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2259, file: !816, line: 648, column: 33)
!2271 = !DILocation(line: 651, column: 17, scope: !2270)
!2272 = !DILocation(line: 651, column: 4, scope: !2270)
!2273 = !DILocation(line: 652, column: 14, scope: !2270)
!2274 = !DILocation(line: 653, column: 3, scope: !2270)
!2275 = !DILocation(line: 653, column: 17, scope: !2276)
!2276 = !DILexicalBlockFile(scope: !2277, file: !816, discriminator: 1)
!2277 = distinct !DILexicalBlock(scope: !2259, file: !816, line: 653, column: 14)
!2278 = !DILocation(line: 653, column: 23, scope: !2276)
!2279 = !DILocation(line: 653, column: 31, scope: !2276)
!2280 = !DILocation(line: 653, column: 14, scope: !2276)
!2281 = !DILocation(line: 656, column: 30, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2277, file: !816, line: 653, column: 38)
!2283 = !DILocation(line: 656, column: 17, scope: !2282)
!2284 = !DILocation(line: 656, column: 4, scope: !2282)
!2285 = !DILocation(line: 657, column: 3, scope: !2282)
!2286 = !DILocation(line: 657, column: 14, scope: !2287)
!2287 = !DILexicalBlockFile(scope: !2288, file: !816, discriminator: 1)
!2288 = distinct !DILexicalBlock(scope: !2277, file: !816, line: 657, column: 14)
!2289 = !DILocation(line: 658, column: 8, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2291, file: !816, line: 658, column: 8)
!2291 = distinct !DILexicalBlock(scope: !2288, file: !816, line: 657, column: 23)
!2292 = !DILocation(line: 658, column: 13, scope: !2290)
!2293 = !DILocation(line: 658, column: 29, scope: !2290)
!2294 = !DILocation(line: 658, column: 24, scope: !2290)
!2295 = !DILocation(line: 658, column: 21, scope: !2290)
!2296 = !DILocation(line: 658, column: 8, scope: !2291)
!2297 = !DILocation(line: 660, column: 31, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2290, file: !816, line: 658, column: 41)
!2299 = !DILocation(line: 660, column: 18, scope: !2298)
!2300 = !DILocation(line: 660, column: 5, scope: !2298)
!2301 = !DILocation(line: 661, column: 4, scope: !2298)
!2302 = !DILocation(line: 664, column: 28, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2290, file: !816, line: 661, column: 11)
!2304 = !DILocation(line: 664, column: 19, scope: !2303)
!2305 = !DILocation(line: 664, column: 5, scope: !2303)
!2306 = !DILocation(line: 664, column: 10, scope: !2303)
!2307 = !DILocation(line: 664, column: 17, scope: !2303)
!2308 = !DILocation(line: 665, column: 22, scope: !2303)
!2309 = !DILocation(line: 665, column: 17, scope: !2303)
!2310 = !DILocation(line: 665, column: 5, scope: !2303)
!2311 = !DILocation(line: 665, column: 10, scope: !2303)
!2312 = !DILocation(line: 665, column: 15, scope: !2303)
!2313 = !DILocation(line: 666, column: 16, scope: !2303)
!2314 = !DILocation(line: 666, column: 28, scope: !2303)
!2315 = !DILocation(line: 666, column: 33, scope: !2303)
!2316 = !DILocation(line: 666, column: 5, scope: !2303)
!2317 = !DILocation(line: 667, column: 18, scope: !2303)
!2318 = !DILocation(line: 667, column: 23, scope: !2303)
!2319 = !DILocation(line: 667, column: 29, scope: !2303)
!2320 = !DILocation(line: 667, column: 34, scope: !2303)
!2321 = !DILocation(line: 667, column: 5, scope: !2303)
!2322 = !DILocation(line: 669, column: 22, scope: !2303)
!2323 = !DILocation(line: 669, column: 5, scope: !2303)
!2324 = !DILocation(line: 670, column: 16, scope: !2303)
!2325 = !DILocation(line: 670, column: 5, scope: !2303)
!2326 = !DILocation(line: 671, column: 5, scope: !2303)
!2327 = !DILocation(line: 673, column: 3, scope: !2291)
!2328 = !DILocation(line: 674, column: 2, scope: !2260)
!2329 = !DILocation(line: 676, column: 24, scope: !2192)
!2330 = !DILocation(line: 676, column: 32, scope: !2192)
!2331 = !DILocation(line: 676, column: 38, scope: !2192)
!2332 = !DILocation(line: 676, column: 44, scope: !2192)
!2333 = !DILocation(line: 676, column: 8, scope: !2192)
!2334 = !DILocation(line: 676, column: 6, scope: !2192)
!2335 = !DILocation(line: 677, column: 6, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2192, file: !816, line: 677, column: 6)
!2337 = !DILocation(line: 677, column: 10, scope: !2336)
!2338 = !DILocation(line: 677, column: 6, scope: !2192)
!2339 = !DILocation(line: 678, column: 14, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2336, file: !816, line: 677, column: 18)
!2341 = !DILocation(line: 678, column: 3, scope: !2340)
!2342 = !DILocation(line: 679, column: 3, scope: !2340)
!2343 = distinct !{!2343, !2342}
!2344 = !DILocation(line: 679, column: 8, scope: !2345)
!2345 = !DILexicalBlockFile(scope: !2346, file: !816, discriminator: 1)
!2346 = distinct !DILexicalBlock(scope: !2340, file: !816, line: 679, column: 6)
!2347 = !DILocation(line: 679, column: 5, scope: !2345)
!2348 = !DILocation(line: 680, column: 3, scope: !2340)
!2349 = !DILocation(line: 682, column: 25, scope: !2192)
!2350 = !DILocation(line: 682, column: 16, scope: !2192)
!2351 = !DILocation(line: 682, column: 2, scope: !2192)
!2352 = !DILocation(line: 682, column: 7, scope: !2192)
!2353 = !DILocation(line: 682, column: 14, scope: !2192)
!2354 = !DILocation(line: 683, column: 19, scope: !2192)
!2355 = !DILocation(line: 683, column: 14, scope: !2192)
!2356 = !DILocation(line: 683, column: 2, scope: !2192)
!2357 = !DILocation(line: 683, column: 7, scope: !2192)
!2358 = !DILocation(line: 683, column: 12, scope: !2192)
!2359 = !DILocation(line: 685, column: 6, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2192, file: !816, line: 685, column: 6)
!2361 = !DILocation(line: 685, column: 6, scope: !2192)
!2362 = !DILocation(line: 686, column: 23, scope: !2360)
!2363 = !DILocation(line: 686, column: 18, scope: !2360)
!2364 = !DILocation(line: 686, column: 3, scope: !2360)
!2365 = !DILocation(line: 686, column: 8, scope: !2360)
!2366 = !DILocation(line: 686, column: 16, scope: !2360)
!2367 = !DILocation(line: 688, column: 13, scope: !2192)
!2368 = !DILocation(line: 688, column: 25, scope: !2192)
!2369 = !DILocation(line: 688, column: 30, scope: !2192)
!2370 = !DILocation(line: 688, column: 2, scope: !2192)
!2371 = !DILocation(line: 689, column: 15, scope: !2192)
!2372 = !DILocation(line: 689, column: 20, scope: !2192)
!2373 = !DILocation(line: 689, column: 26, scope: !2192)
!2374 = !DILocation(line: 689, column: 31, scope: !2192)
!2375 = !DILocation(line: 689, column: 2, scope: !2192)
!2376 = !DILocation(line: 691, column: 32, scope: !2192)
!2377 = !DILocation(line: 691, column: 37, scope: !2192)
!2378 = !DILocation(line: 691, column: 2, scope: !2192)
!2379 = !DILocation(line: 693, column: 6, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2192, file: !816, line: 693, column: 6)
!2381 = !DILocation(line: 693, column: 16, scope: !2380)
!2382 = !DILocation(line: 693, column: 22, scope: !2383)
!2383 = !DILexicalBlockFile(scope: !2380, file: !816, discriminator: 1)
!2384 = !DILocation(line: 693, column: 28, scope: !2383)
!2385 = !DILocation(line: 693, column: 33, scope: !2383)
!2386 = !DILocation(line: 693, column: 41, scope: !2383)
!2387 = !DILocation(line: 693, column: 44, scope: !2388)
!2388 = !DILexicalBlockFile(scope: !2380, file: !816, discriminator: 2)
!2389 = !DILocation(line: 693, column: 90, scope: !2388)
!2390 = !DILocation(line: 693, column: 139, scope: !2391)
!2391 = !DILexicalBlockFile(scope: !2380, file: !816, discriminator: 3)
!2392 = !DILocation(line: 693, column: 121, scope: !2391)
!2393 = !DILocation(line: 693, column: 106, scope: !2391)
!2394 = !DILocation(line: 693, column: 32, scope: !2395)
!2395 = !DILexicalBlockFile(scope: !2391, file: !816, discriminator: 4)
!2396 = !DILocation(line: 693, column: 73, scope: !2391)
!2397 = !DILocation(line: 693, column: 81, scope: !2391)
!2398 = !DILocation(line: 693, column: 93, scope: !2399)
!2399 = !DILexicalBlockFile(scope: !2391, file: !816, discriminator: 5)
!2400 = !DILocation(line: 693, column: 93, scope: !2391)
!2401 = !DILocation(line: 693, column: 6, scope: !2391)
!2402 = !DILocation(line: 694, column: 7, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2404, file: !816, line: 694, column: 7)
!2404 = distinct !DILexicalBlock(scope: !2380, file: !816, line: 693, column: 90)
!2405 = !DILocation(line: 694, column: 7, scope: !2404)
!2406 = !DILocation(line: 697, column: 21, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2403, file: !816, line: 694, column: 16)
!2408 = !DILocation(line: 697, column: 4, scope: !2407)
!2409 = !DILocation(line: 698, column: 3, scope: !2407)
!2410 = !DILocation(line: 699, column: 21, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2403, file: !816, line: 698, column: 10)
!2412 = !DILocation(line: 699, column: 4, scope: !2411)
!2413 = !DILocation(line: 701, column: 2, scope: !2404)
!2414 = !DILocation(line: 702, column: 13, scope: !2192)
!2415 = !DILocation(line: 702, column: 2, scope: !2192)
!2416 = !DILocation(line: 703, column: 1, scope: !2192)
!2417 = !DILocation(line: 703, column: 1, scope: !2235)
!2418 = distinct !DISubprogram(name: "dcc_chat_msg", scope: !816, file: !816, line: 706, type: !1002, isLocal: true, isDefinition: true, scopeLine: 707, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !819)
!2419 = !DILocalVariable(name: "dcc", arg: 1, scope: !2418, file: !816, line: 706, type: !57)
!2420 = !DILocation(line: 706, column: 40, scope: !2418)
!2421 = !DILocalVariable(name: "msg", arg: 2, scope: !2418, file: !816, line: 706, type: !510)
!2422 = !DILocation(line: 706, column: 57, scope: !2418)
!2423 = !DILocalVariable(name: "event", scope: !2418, file: !816, line: 708, type: !94)
!2424 = !DILocation(line: 708, column: 8, scope: !2418)
!2425 = !DILocalVariable(name: "cmd", scope: !2418, file: !816, line: 708, type: !94)
!2426 = !DILocation(line: 708, column: 16, scope: !2418)
!2427 = !DILocalVariable(name: "ptr", scope: !2418, file: !816, line: 708, type: !94)
!2428 = !DILocation(line: 708, column: 22, scope: !2418)
!2429 = !DILocalVariable(name: "reply", scope: !2418, file: !816, line: 709, type: !65)
!2430 = !DILocation(line: 709, column: 6, scope: !2418)
!2431 = !DILocation(line: 711, column: 2, scope: !2418)
!2432 = distinct !{!2432, !2431}
!2433 = !DILocation(line: 711, column: 54, scope: !2434)
!2434 = !DILexicalBlockFile(scope: !2435, file: !816, discriminator: 1)
!2435 = distinct !DILexicalBlock(scope: !2436, file: !816, line: 711, column: 10)
!2436 = distinct !DILexicalBlock(scope: !2418, file: !816, line: 711, column: 4)
!2437 = !DILocation(line: 711, column: 29, scope: !2434)
!2438 = !DILocation(line: 711, column: 12, scope: !2434)
!2439 = !DILocation(line: 711, column: 10, scope: !2434)
!2440 = !DILocation(line: 711, column: 11, scope: !2441)
!2441 = !DILexicalBlockFile(scope: !2435, file: !816, discriminator: 2)
!2442 = !DILocation(line: 711, column: 10, scope: !2443)
!2443 = !DILexicalBlockFile(scope: !2436, file: !816, discriminator: 3)
!2444 = !DILocation(line: 711, column: 38, scope: !2445)
!2445 = !DILexicalBlockFile(scope: !2446, file: !816, discriminator: 4)
!2446 = distinct !DILexicalBlock(scope: !2435, file: !816, line: 711, column: 36)
!2447 = !DILocation(line: 711, column: 47, scope: !2448)
!2448 = !DILexicalBlockFile(scope: !2449, file: !816, discriminator: 5)
!2449 = distinct !DILexicalBlock(scope: !2435, file: !816, line: 711, column: 45)
!2450 = !DILocation(line: 711, column: 136, scope: !2448)
!2451 = !DILocation(line: 711, column: 147, scope: !2452)
!2452 = !DILexicalBlockFile(scope: !2436, file: !816, discriminator: 6)
!2453 = !DILocation(line: 712, column: 2, scope: !2418)
!2454 = distinct !{!2454, !2453}
!2455 = !DILocation(line: 712, column: 10, scope: !2456)
!2456 = !DILexicalBlockFile(scope: !2457, file: !816, discriminator: 1)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !816, line: 712, column: 10)
!2458 = distinct !DILexicalBlock(scope: !2418, file: !816, line: 712, column: 4)
!2459 = !DILocation(line: 712, column: 14, scope: !2456)
!2460 = !DILocation(line: 712, column: 5, scope: !2461)
!2461 = !DILexicalBlockFile(scope: !2462, file: !816, discriminator: 2)
!2462 = distinct !DILexicalBlock(scope: !2457, file: !816, line: 712, column: 3)
!2463 = !DILocation(line: 712, column: 14, scope: !2464)
!2464 = !DILexicalBlockFile(scope: !2465, file: !816, discriminator: 3)
!2465 = distinct !DILexicalBlock(scope: !2457, file: !816, line: 712, column: 12)
!2466 = !DILocation(line: 712, column: 98, scope: !2464)
!2467 = !DILocation(line: 712, column: 109, scope: !2468)
!2468 = !DILexicalBlockFile(scope: !2458, file: !816, discriminator: 4)
!2469 = !DILocation(line: 714, column: 8, scope: !2418)
!2470 = !DILocation(line: 715, column: 26, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2418, file: !816, line: 715, column: 6)
!2472 = !DILocation(line: 715, column: 6, scope: !2471)
!2473 = !DILocation(line: 715, column: 52, scope: !2471)
!2474 = !DILocation(line: 715, column: 6, scope: !2418)
!2475 = !DILocation(line: 717, column: 7, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2471, file: !816, line: 715, column: 58)
!2477 = !DILocation(line: 718, column: 3, scope: !2476)
!2478 = !DILocation(line: 718, column: 8, scope: !2476)
!2479 = !DILocation(line: 718, column: 18, scope: !2476)
!2480 = !DILocation(line: 719, column: 2, scope: !2476)
!2481 = !DILocation(line: 719, column: 33, scope: !2482)
!2482 = !DILexicalBlockFile(scope: !2483, file: !816, discriminator: 1)
!2483 = distinct !DILexicalBlock(scope: !2471, file: !816, line: 719, column: 13)
!2484 = !DILocation(line: 719, column: 13, scope: !2482)
!2485 = !DILocation(line: 719, column: 57, scope: !2482)
!2486 = !DILocation(line: 721, column: 7, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2483, file: !816, line: 719, column: 63)
!2488 = !DILocation(line: 722, column: 9, scope: !2487)
!2489 = !DILocation(line: 723, column: 3, scope: !2487)
!2490 = !DILocation(line: 723, column: 8, scope: !2487)
!2491 = !DILocation(line: 723, column: 18, scope: !2487)
!2492 = !DILocation(line: 724, column: 2, scope: !2487)
!2493 = !DILocation(line: 724, column: 14, scope: !2494)
!2494 = !DILexicalBlockFile(scope: !2495, file: !816, discriminator: 1)
!2495 = distinct !DILexicalBlock(scope: !2483, file: !816, line: 724, column: 13)
!2496 = !DILocation(line: 724, column: 13, scope: !2494)
!2497 = !DILocation(line: 724, column: 18, scope: !2494)
!2498 = !DILocation(line: 726, column: 3, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2495, file: !816, line: 724, column: 24)
!2500 = !DILocation(line: 726, column: 8, scope: !2499)
!2501 = !DILocation(line: 726, column: 18, scope: !2499)
!2502 = !DILocation(line: 727, column: 2, scope: !2499)
!2503 = !DILocation(line: 730, column: 7, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2418, file: !816, line: 730, column: 6)
!2505 = !DILocation(line: 730, column: 6, scope: !2504)
!2506 = !DILocation(line: 730, column: 11, scope: !2504)
!2507 = !DILocation(line: 730, column: 6, scope: !2418)
!2508 = !DILocation(line: 731, column: 3, scope: !2504)
!2509 = !DILocation(line: 734, column: 22, scope: !2418)
!2510 = !DILocation(line: 734, column: 58, scope: !2418)
!2511 = !DILocation(line: 734, column: 61, scope: !2418)
!2512 = !DILocation(line: 734, column: 10, scope: !2418)
!2513 = !DILocation(line: 734, column: 8, scope: !2418)
!2514 = !DILocation(line: 735, column: 19, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2418, file: !816, line: 735, column: 6)
!2516 = !DILocation(line: 735, column: 12, scope: !2515)
!2517 = !DILocation(line: 735, column: 25, scope: !2515)
!2518 = !DILocation(line: 735, column: 6, scope: !2515)
!2519 = !DILocation(line: 735, column: 29, scope: !2515)
!2520 = !DILocation(line: 735, column: 6, scope: !2418)
!2521 = !DILocation(line: 735, column: 48, scope: !2522)
!2522 = !DILexicalBlockFile(scope: !2515, file: !816, discriminator: 1)
!2523 = !DILocation(line: 735, column: 41, scope: !2522)
!2524 = !DILocation(line: 735, column: 54, scope: !2522)
!2525 = !DILocation(line: 735, column: 35, scope: !2522)
!2526 = !DILocation(line: 735, column: 58, scope: !2522)
!2527 = !DILocation(line: 737, column: 15, scope: !2418)
!2528 = !DILocation(line: 737, column: 24, scope: !2418)
!2529 = !DILocation(line: 737, column: 21, scope: !2418)
!2530 = !DILocation(line: 737, column: 13, scope: !2418)
!2531 = !DILocation(line: 738, column: 15, scope: !2418)
!2532 = !DILocation(line: 738, column: 8, scope: !2418)
!2533 = !DILocation(line: 738, column: 6, scope: !2418)
!2534 = !DILocation(line: 739, column: 6, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2418, file: !816, line: 739, column: 6)
!2536 = !DILocation(line: 739, column: 10, scope: !2535)
!2537 = !DILocation(line: 739, column: 6, scope: !2418)
!2538 = !DILocation(line: 739, column: 22, scope: !2539)
!2539 = !DILexicalBlockFile(scope: !2535, file: !816, discriminator: 1)
!2540 = !DILocation(line: 739, column: 25, scope: !2539)
!2541 = !DILocation(line: 739, column: 18, scope: !2539)
!2542 = !DILocation(line: 739, column: 42, scope: !2543)
!2543 = !DILexicalBlockFile(scope: !2535, file: !816, discriminator: 2)
!2544 = !DILocation(line: 741, column: 22, scope: !2418)
!2545 = !DILocation(line: 741, column: 8, scope: !2418)
!2546 = !DILocation(line: 741, column: 6, scope: !2418)
!2547 = !DILocation(line: 743, column: 16, scope: !2418)
!2548 = !DILocation(line: 743, column: 21, scope: !2418)
!2549 = !DILocation(line: 743, column: 2, scope: !2418)
!2550 = !DILocation(line: 744, column: 19, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2418, file: !816, line: 744, column: 6)
!2552 = !DILocation(line: 744, column: 29, scope: !2551)
!2553 = !DILocation(line: 744, column: 34, scope: !2551)
!2554 = !DILocation(line: 744, column: 7, scope: !2551)
!2555 = !DILocation(line: 744, column: 6, scope: !2418)
!2556 = !DILocation(line: 745, column: 15, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2551, file: !816, line: 744, column: 40)
!2558 = !DILocation(line: 746, column: 31, scope: !2557)
!2559 = !DILocation(line: 746, column: 36, scope: !2557)
!2560 = !DILocation(line: 746, column: 41, scope: !2557)
!2561 = !DILocation(line: 745, column: 3, scope: !2557)
!2562 = !DILocation(line: 747, column: 2, scope: !2557)
!2563 = !DILocation(line: 749, column: 16, scope: !2418)
!2564 = !DILocation(line: 749, column: 9, scope: !2418)
!2565 = !DILocation(line: 750, column: 9, scope: !2418)
!2566 = !DILocation(line: 750, column: 2, scope: !2418)
!2567 = !DILocation(line: 752, column: 2, scope: !2418)
!2568 = !DILocation(line: 753, column: 1, scope: !2418)
!2569 = !DILocation(line: 753, column: 1, scope: !2570)
!2570 = !DILexicalBlockFile(scope: !2418, file: !816, discriminator: 1)
!2571 = distinct !DISubprogram(name: "dcc_ctcp_redirect", scope: !816, file: !816, line: 755, type: !1002, isLocal: true, isDefinition: true, scopeLine: 756, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !819)
!2572 = !DILocalVariable(name: "dcc", arg: 1, scope: !2571, file: !816, line: 755, type: !57)
!2573 = !DILocation(line: 755, column: 45, scope: !2571)
!2574 = !DILocalVariable(name: "msg", arg: 2, scope: !2571, file: !816, line: 755, type: !510)
!2575 = !DILocation(line: 755, column: 62, scope: !2571)
!2576 = !DILocation(line: 757, column: 2, scope: !2571)
!2577 = distinct !{!2577, !2576}
!2578 = !DILocation(line: 757, column: 10, scope: !2579)
!2579 = !DILexicalBlockFile(scope: !2580, file: !816, discriminator: 1)
!2580 = distinct !DILexicalBlock(scope: !2581, file: !816, line: 757, column: 10)
!2581 = distinct !DILexicalBlock(scope: !2571, file: !816, line: 757, column: 4)
!2582 = !DILocation(line: 757, column: 14, scope: !2579)
!2583 = !DILocation(line: 757, column: 5, scope: !2584)
!2584 = !DILexicalBlockFile(scope: !2585, file: !816, discriminator: 2)
!2585 = distinct !DILexicalBlock(scope: !2580, file: !816, line: 757, column: 3)
!2586 = !DILocation(line: 757, column: 14, scope: !2587)
!2587 = !DILexicalBlockFile(scope: !2588, file: !816, discriminator: 3)
!2588 = distinct !DILexicalBlock(scope: !2580, file: !816, line: 757, column: 12)
!2589 = !DILocation(line: 757, column: 98, scope: !2587)
!2590 = !DILocation(line: 757, column: 109, scope: !2591)
!2591 = !DILexicalBlockFile(scope: !2581, file: !816, discriminator: 4)
!2592 = !DILocation(line: 758, column: 2, scope: !2571)
!2593 = distinct !{!2593, !2592}
!2594 = !DILocation(line: 758, column: 54, scope: !2595)
!2595 = !DILexicalBlockFile(scope: !2596, file: !816, discriminator: 1)
!2596 = distinct !DILexicalBlock(scope: !2597, file: !816, line: 758, column: 10)
!2597 = distinct !DILexicalBlock(scope: !2571, file: !816, line: 758, column: 4)
!2598 = !DILocation(line: 758, column: 29, scope: !2595)
!2599 = !DILocation(line: 758, column: 12, scope: !2595)
!2600 = !DILocation(line: 758, column: 10, scope: !2595)
!2601 = !DILocation(line: 758, column: 11, scope: !2602)
!2602 = !DILexicalBlockFile(scope: !2596, file: !816, discriminator: 2)
!2603 = !DILocation(line: 758, column: 10, scope: !2604)
!2604 = !DILexicalBlockFile(scope: !2597, file: !816, discriminator: 3)
!2605 = !DILocation(line: 758, column: 38, scope: !2606)
!2606 = !DILexicalBlockFile(scope: !2607, file: !816, discriminator: 4)
!2607 = distinct !DILexicalBlock(scope: !2596, file: !816, line: 758, column: 36)
!2608 = !DILocation(line: 758, column: 47, scope: !2609)
!2609 = !DILexicalBlockFile(scope: !2610, file: !816, discriminator: 5)
!2610 = distinct !DILexicalBlock(scope: !2596, file: !816, line: 758, column: 45)
!2611 = !DILocation(line: 758, column: 136, scope: !2609)
!2612 = !DILocation(line: 758, column: 147, scope: !2613)
!2613 = !DILexicalBlockFile(scope: !2597, file: !816, discriminator: 6)
!2614 = !DILocation(line: 760, column: 33, scope: !2571)
!2615 = !DILocation(line: 760, column: 38, scope: !2571)
!2616 = !DILocation(line: 760, column: 46, scope: !2571)
!2617 = !DILocation(line: 761, column: 7, scope: !2571)
!2618 = !DILocation(line: 761, column: 12, scope: !2571)
!2619 = !DILocation(line: 761, column: 25, scope: !2571)
!2620 = !DILocation(line: 761, column: 30, scope: !2571)
!2621 = !DILocation(line: 761, column: 38, scope: !2571)
!2622 = !DILocation(line: 760, column: 2, scope: !2571)
!2623 = !DILocation(line: 762, column: 1, scope: !2571)
!2624 = !DILocation(line: 762, column: 1, scope: !2625)
!2625 = !DILexicalBlockFile(scope: !2571, file: !816, discriminator: 1)
!2626 = distinct !DISubprogram(name: "dcc_ctcp_reply_redirect", scope: !816, file: !816, line: 764, type: !1002, isLocal: true, isDefinition: true, scopeLine: 765, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !819)
!2627 = !DILocalVariable(name: "dcc", arg: 1, scope: !2626, file: !816, line: 764, type: !57)
!2628 = !DILocation(line: 764, column: 51, scope: !2626)
!2629 = !DILocalVariable(name: "msg", arg: 2, scope: !2626, file: !816, line: 764, type: !510)
!2630 = !DILocation(line: 764, column: 68, scope: !2626)
!2631 = !DILocation(line: 766, column: 2, scope: !2626)
!2632 = distinct !{!2632, !2631}
!2633 = !DILocation(line: 766, column: 10, scope: !2634)
!2634 = !DILexicalBlockFile(scope: !2635, file: !816, discriminator: 1)
!2635 = distinct !DILexicalBlock(scope: !2636, file: !816, line: 766, column: 10)
!2636 = distinct !DILexicalBlock(scope: !2626, file: !816, line: 766, column: 4)
!2637 = !DILocation(line: 766, column: 14, scope: !2634)
!2638 = !DILocation(line: 766, column: 5, scope: !2639)
!2639 = !DILexicalBlockFile(scope: !2640, file: !816, discriminator: 2)
!2640 = distinct !DILexicalBlock(scope: !2635, file: !816, line: 766, column: 3)
!2641 = !DILocation(line: 766, column: 14, scope: !2642)
!2642 = !DILexicalBlockFile(scope: !2643, file: !816, discriminator: 3)
!2643 = distinct !DILexicalBlock(scope: !2635, file: !816, line: 766, column: 12)
!2644 = !DILocation(line: 766, column: 98, scope: !2642)
!2645 = !DILocation(line: 766, column: 109, scope: !2646)
!2646 = !DILexicalBlockFile(scope: !2636, file: !816, discriminator: 4)
!2647 = !DILocation(line: 767, column: 2, scope: !2626)
!2648 = distinct !{!2648, !2647}
!2649 = !DILocation(line: 767, column: 54, scope: !2650)
!2650 = !DILexicalBlockFile(scope: !2651, file: !816, discriminator: 1)
!2651 = distinct !DILexicalBlock(scope: !2652, file: !816, line: 767, column: 10)
!2652 = distinct !DILexicalBlock(scope: !2626, file: !816, line: 767, column: 4)
!2653 = !DILocation(line: 767, column: 29, scope: !2650)
!2654 = !DILocation(line: 767, column: 12, scope: !2650)
!2655 = !DILocation(line: 767, column: 10, scope: !2650)
!2656 = !DILocation(line: 767, column: 11, scope: !2657)
!2657 = !DILexicalBlockFile(scope: !2651, file: !816, discriminator: 2)
!2658 = !DILocation(line: 767, column: 10, scope: !2659)
!2659 = !DILexicalBlockFile(scope: !2652, file: !816, discriminator: 3)
!2660 = !DILocation(line: 767, column: 38, scope: !2661)
!2661 = !DILexicalBlockFile(scope: !2662, file: !816, discriminator: 4)
!2662 = distinct !DILexicalBlock(scope: !2651, file: !816, line: 767, column: 36)
!2663 = !DILocation(line: 767, column: 47, scope: !2664)
!2664 = !DILexicalBlockFile(scope: !2665, file: !816, discriminator: 5)
!2665 = distinct !DILexicalBlock(scope: !2651, file: !816, line: 767, column: 45)
!2666 = !DILocation(line: 767, column: 136, scope: !2664)
!2667 = !DILocation(line: 767, column: 147, scope: !2668)
!2668 = !DILexicalBlockFile(scope: !2652, file: !816, discriminator: 6)
!2669 = !DILocation(line: 769, column: 35, scope: !2626)
!2670 = !DILocation(line: 769, column: 40, scope: !2626)
!2671 = !DILocation(line: 769, column: 48, scope: !2626)
!2672 = !DILocation(line: 770, column: 7, scope: !2626)
!2673 = !DILocation(line: 770, column: 12, scope: !2626)
!2674 = !DILocation(line: 770, column: 25, scope: !2626)
!2675 = !DILocation(line: 770, column: 30, scope: !2626)
!2676 = !DILocation(line: 770, column: 38, scope: !2626)
!2677 = !DILocation(line: 769, column: 2, scope: !2626)
!2678 = !DILocation(line: 771, column: 1, scope: !2626)
!2679 = !DILocation(line: 771, column: 1, scope: !2680)
!2680 = !DILexicalBlockFile(scope: !2626, file: !816, discriminator: 1)
!2681 = distinct !DISubprogram(name: "ctcp_reply_dcc_reject", scope: !816, file: !816, line: 774, type: !2682, isLocal: true, isDefinition: true, scopeLine: 777, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !819)
!2682 = !DISubroutineType(types: !2683)
!2683 = !{null, !74, !510, !510, !510, !775}
!2684 = !DILocalVariable(name: "server", arg: 1, scope: !2681, file: !816, line: 774, type: !74)
!2685 = !DILocation(line: 774, column: 51, scope: !2681)
!2686 = !DILocalVariable(name: "data", arg: 2, scope: !2681, file: !816, line: 774, type: !510)
!2687 = !DILocation(line: 774, column: 71, scope: !2681)
!2688 = !DILocalVariable(name: "nick", arg: 3, scope: !2681, file: !816, line: 775, type: !510)
!2689 = !DILocation(line: 775, column: 19, scope: !2681)
!2690 = !DILocalVariable(name: "addr", arg: 4, scope: !2681, file: !816, line: 775, type: !510)
!2691 = !DILocation(line: 775, column: 37, scope: !2681)
!2692 = !DILocalVariable(name: "chat", arg: 5, scope: !2681, file: !816, line: 776, type: !775)
!2693 = !DILocation(line: 776, column: 16, scope: !2681)
!2694 = !DILocalVariable(name: "dcc", scope: !2681, file: !816, line: 778, type: !775)
!2695 = !DILocation(line: 778, column: 18, scope: !2681)
!2696 = !DILocation(line: 782, column: 26, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2681, file: !816, line: 782, column: 6)
!2698 = !DILocation(line: 782, column: 6, scope: !2697)
!2699 = !DILocation(line: 782, column: 43, scope: !2697)
!2700 = !DILocation(line: 782, column: 48, scope: !2697)
!2701 = !DILocation(line: 783, column: 7, scope: !2697)
!2702 = !DILocation(line: 783, column: 15, scope: !2697)
!2703 = !DILocation(line: 783, column: 23, scope: !2697)
!2704 = !DILocation(line: 783, column: 26, scope: !2705)
!2705 = !DILexicalBlockFile(scope: !2697, file: !816, discriminator: 1)
!2706 = !DILocation(line: 783, column: 34, scope: !2705)
!2707 = !DILocation(line: 782, column: 6, scope: !2708)
!2708 = !DILexicalBlockFile(scope: !2681, file: !816, discriminator: 1)
!2709 = !DILocation(line: 784, column: 26, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2697, file: !816, line: 783, column: 43)
!2711 = !DILocation(line: 784, column: 65, scope: !2710)
!2712 = !DILocation(line: 784, column: 9, scope: !2713)
!2713 = !DILexicalBlockFile(scope: !2710, file: !816, discriminator: 1)
!2714 = !DILocation(line: 784, column: 7, scope: !2710)
!2715 = !DILocation(line: 785, column: 7, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2710, file: !816, line: 785, column: 7)
!2717 = !DILocation(line: 785, column: 11, scope: !2716)
!2718 = !DILocation(line: 785, column: 7, scope: !2710)
!2719 = !DILocation(line: 785, column: 29, scope: !2720)
!2720 = !DILexicalBlockFile(scope: !2716, file: !816, discriminator: 1)
!2721 = !DILocation(line: 785, column: 19, scope: !2720)
!2722 = !DILocation(line: 786, column: 3, scope: !2710)
!2723 = !DILocation(line: 787, column: 2, scope: !2710)
!2724 = !DILocation(line: 788, column: 1, scope: !2681)
!2725 = distinct !DISubprogram(name: "event_nick", scope: !816, file: !816, line: 790, type: !2726, isLocal: true, isDefinition: true, scopeLine: 792, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !819)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{null, !74, !510, !510}
!2728 = !DILocalVariable(name: "server", arg: 1, scope: !2725, file: !816, line: 790, type: !74)
!2729 = !DILocation(line: 790, column: 40, scope: !2725)
!2730 = !DILocalVariable(name: "data", arg: 2, scope: !2725, file: !816, line: 790, type: !510)
!2731 = !DILocation(line: 790, column: 60, scope: !2725)
!2732 = !DILocalVariable(name: "orignick", arg: 3, scope: !2725, file: !816, line: 791, type: !510)
!2733 = !DILocation(line: 791, column: 22, scope: !2725)
!2734 = !DILocalVariable(name: "query", scope: !2725, file: !816, line: 793, type: !606)
!2735 = !DILocation(line: 793, column: 20, scope: !2725)
!2736 = !DILocalVariable(name: "dcc", scope: !2725, file: !816, line: 794, type: !57)
!2737 = !DILocation(line: 794, column: 23, scope: !2725)
!2738 = !DILocalVariable(name: "params", scope: !2725, file: !816, line: 795, type: !94)
!2739 = !DILocation(line: 795, column: 8, scope: !2725)
!2740 = !DILocalVariable(name: "nick", scope: !2725, file: !816, line: 795, type: !94)
!2741 = !DILocation(line: 795, column: 17, scope: !2725)
!2742 = !DILocalVariable(name: "tag", scope: !2725, file: !816, line: 795, type: !94)
!2743 = !DILocation(line: 795, column: 24, scope: !2725)
!2744 = !DILocation(line: 797, column: 2, scope: !2725)
!2745 = distinct !{!2745, !2744}
!2746 = !DILocation(line: 797, column: 10, scope: !2747)
!2747 = !DILexicalBlockFile(scope: !2748, file: !816, discriminator: 1)
!2748 = distinct !DILexicalBlock(scope: !2749, file: !816, line: 797, column: 10)
!2749 = distinct !DILexicalBlock(scope: !2725, file: !816, line: 797, column: 4)
!2750 = !DILocation(line: 797, column: 15, scope: !2747)
!2751 = !DILocation(line: 797, column: 5, scope: !2752)
!2752 = !DILexicalBlockFile(scope: !2753, file: !816, discriminator: 2)
!2753 = distinct !DILexicalBlock(scope: !2748, file: !816, line: 797, column: 3)
!2754 = !DILocation(line: 797, column: 14, scope: !2755)
!2755 = !DILexicalBlockFile(scope: !2756, file: !816, discriminator: 3)
!2756 = distinct !DILexicalBlock(scope: !2748, file: !816, line: 797, column: 12)
!2757 = !DILocation(line: 797, column: 99, scope: !2755)
!2758 = !DILocation(line: 797, column: 110, scope: !2759)
!2759 = !DILexicalBlockFile(scope: !2749, file: !816, discriminator: 4)
!2760 = !DILocation(line: 798, column: 2, scope: !2725)
!2761 = distinct !{!2761, !2760}
!2762 = !DILocation(line: 798, column: 10, scope: !2763)
!2763 = !DILexicalBlockFile(scope: !2764, file: !816, discriminator: 1)
!2764 = distinct !DILexicalBlock(scope: !2765, file: !816, line: 798, column: 10)
!2765 = distinct !DILexicalBlock(scope: !2725, file: !816, line: 798, column: 4)
!2766 = !DILocation(line: 798, column: 19, scope: !2763)
!2767 = !DILocation(line: 798, column: 5, scope: !2768)
!2768 = !DILexicalBlockFile(scope: !2769, file: !816, discriminator: 2)
!2769 = distinct !DILexicalBlock(scope: !2764, file: !816, line: 798, column: 3)
!2770 = !DILocation(line: 798, column: 14, scope: !2771)
!2771 = !DILexicalBlockFile(scope: !2772, file: !816, discriminator: 3)
!2772 = distinct !DILexicalBlock(scope: !2764, file: !816, line: 798, column: 12)
!2773 = !DILocation(line: 798, column: 103, scope: !2771)
!2774 = !DILocation(line: 798, column: 114, scope: !2775)
!2775 = !DILexicalBlockFile(scope: !2765, file: !816, discriminator: 4)
!2776 = !DILocation(line: 800, column: 28, scope: !2725)
!2777 = !DILocation(line: 800, column: 11, scope: !2725)
!2778 = !DILocation(line: 800, column: 9, scope: !2725)
!2779 = !DILocation(line: 801, column: 25, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2725, file: !816, line: 801, column: 6)
!2781 = !DILocation(line: 801, column: 31, scope: !2780)
!2782 = !DILocation(line: 801, column: 6, scope: !2780)
!2783 = !DILocation(line: 801, column: 41, scope: !2780)
!2784 = !DILocation(line: 801, column: 6, scope: !2725)
!2785 = !DILocation(line: 804, column: 24, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2780, file: !816, line: 801, column: 47)
!2787 = !DILocation(line: 804, column: 17, scope: !2786)
!2788 = !DILocation(line: 805, column: 3, scope: !2786)
!2789 = !DILocation(line: 808, column: 2, scope: !2725)
!2790 = !DILocation(line: 808, column: 35, scope: !2791)
!2791 = !DILexicalBlockFile(scope: !2725, file: !816, discriminator: 1)
!2792 = !DILocation(line: 808, column: 43, scope: !2791)
!2793 = !DILocation(line: 808, column: 16, scope: !2791)
!2794 = !DILocation(line: 808, column: 14, scope: !2791)
!2795 = !DILocation(line: 808, column: 54, scope: !2791)
!2796 = !DILocation(line: 808, column: 2, scope: !2791)
!2797 = !DILocation(line: 809, column: 10, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2725, file: !816, line: 808, column: 62)
!2799 = !DILocation(line: 809, column: 15, scope: !2798)
!2800 = !DILocation(line: 809, column: 3, scope: !2798)
!2801 = !DILocation(line: 810, column: 24, scope: !2798)
!2802 = !DILocation(line: 810, column: 15, scope: !2798)
!2803 = !DILocation(line: 810, column: 3, scope: !2798)
!2804 = !DILocation(line: 810, column: 8, scope: !2798)
!2805 = !DILocation(line: 810, column: 13, scope: !2798)
!2806 = !DILocation(line: 812, column: 26, scope: !2798)
!2807 = !DILocation(line: 812, column: 31, scope: !2798)
!2808 = !DILocation(line: 812, column: 9, scope: !2798)
!2809 = !DILocation(line: 812, column: 7, scope: !2798)
!2810 = !DILocation(line: 813, column: 26, scope: !2798)
!2811 = !DILocation(line: 813, column: 34, scope: !2798)
!2812 = !DILocation(line: 813, column: 11, scope: !2798)
!2813 = !DILocation(line: 813, column: 9, scope: !2798)
!2814 = !DILocation(line: 814, column: 24, scope: !2798)
!2815 = !DILocation(line: 814, column: 17, scope: !2798)
!2816 = !DILocation(line: 817, column: 10, scope: !2798)
!2817 = !DILocation(line: 817, column: 15, scope: !2798)
!2818 = !DILocation(line: 817, column: 3, scope: !2798)
!2819 = !DILocation(line: 818, column: 3, scope: !2798)
!2820 = !DILocation(line: 818, column: 8, scope: !2798)
!2821 = !DILocation(line: 818, column: 11, scope: !2798)
!2822 = !DILocation(line: 819, column: 33, scope: !2798)
!2823 = !DILocation(line: 819, column: 13, scope: !2798)
!2824 = !DILocation(line: 819, column: 3, scope: !2798)
!2825 = !DILocation(line: 819, column: 8, scope: !2798)
!2826 = !DILocation(line: 819, column: 11, scope: !2798)
!2827 = !DILocation(line: 821, column: 7, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2798, file: !816, line: 821, column: 7)
!2829 = !DILocation(line: 821, column: 13, scope: !2828)
!2830 = !DILocation(line: 821, column: 7, scope: !2798)
!2831 = !DILocation(line: 822, column: 27, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2828, file: !816, line: 821, column: 21)
!2833 = !DILocation(line: 822, column: 32, scope: !2832)
!2834 = !DILocation(line: 822, column: 10, scope: !2832)
!2835 = !DILocation(line: 822, column: 8, scope: !2832)
!2836 = !DILocation(line: 823, column: 22, scope: !2832)
!2837 = !DILocation(line: 823, column: 29, scope: !2832)
!2838 = !DILocation(line: 823, column: 4, scope: !2832)
!2839 = !DILocation(line: 824, column: 32, scope: !2832)
!2840 = !DILocation(line: 824, column: 25, scope: !2832)
!2841 = !DILocation(line: 825, column: 3, scope: !2832)
!2842 = !DILocation(line: 808, column: 2, scope: !2843)
!2843 = !DILexicalBlockFile(scope: !2725, file: !816, discriminator: 2)
!2844 = distinct !{!2844, !2789}
!2845 = !DILocation(line: 828, column: 9, scope: !2725)
!2846 = !DILocation(line: 828, column: 2, scope: !2725)
!2847 = !DILocation(line: 829, column: 1, scope: !2725)
!2848 = !DILocation(line: 829, column: 1, scope: !2791)
!2849 = distinct !DISubprogram(name: "dcc_chat_deinit", scope: !816, file: !816, line: 855, type: !263, isLocal: false, isDefinition: true, scopeLine: 856, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !819)
!2850 = !DILocation(line: 857, column: 9, scope: !2849)
!2851 = !DILocation(line: 858, column: 2, scope: !2849)
!2852 = !DILocation(line: 859, column: 2, scope: !2849)
!2853 = !DILocation(line: 860, column: 2, scope: !2849)
!2854 = !DILocation(line: 861, column: 2, scope: !2849)
!2855 = !DILocation(line: 862, column: 2, scope: !2849)
!2856 = !DILocation(line: 863, column: 2, scope: !2849)
!2857 = !DILocation(line: 864, column: 2, scope: !2849)
!2858 = !DILocation(line: 865, column: 2, scope: !2849)
!2859 = !DILocation(line: 866, column: 2, scope: !2849)
!2860 = !DILocation(line: 867, column: 2, scope: !2849)
!2861 = !DILocation(line: 868, column: 2, scope: !2849)
!2862 = !DILocation(line: 869, column: 2, scope: !2849)
!2863 = !DILocation(line: 870, column: 2, scope: !2849)
!2864 = !DILocation(line: 871, column: 2, scope: !2849)
!2865 = !DILocation(line: 872, column: 2, scope: !2849)
!2866 = !DILocation(line: 873, column: 1, scope: !2849)
!2867 = distinct !DISubprogram(name: "dcc_chat_connect", scope: !816, file: !816, line: 388, type: !1178, isLocal: true, isDefinition: true, scopeLine: 389, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !819)
!2868 = !DILocalVariable(name: "dcc", arg: 1, scope: !2867, file: !816, line: 388, type: !57)
!2869 = !DILocation(line: 388, column: 44, scope: !2867)
!2870 = !DILocation(line: 390, column: 2, scope: !2867)
!2871 = distinct !{!2871, !2870}
!2872 = !DILocation(line: 390, column: 54, scope: !2873)
!2873 = !DILexicalBlockFile(scope: !2874, file: !816, discriminator: 1)
!2874 = distinct !DILexicalBlock(scope: !2875, file: !816, line: 390, column: 10)
!2875 = distinct !DILexicalBlock(scope: !2867, file: !816, line: 390, column: 4)
!2876 = !DILocation(line: 390, column: 29, scope: !2873)
!2877 = !DILocation(line: 390, column: 12, scope: !2873)
!2878 = !DILocation(line: 390, column: 10, scope: !2873)
!2879 = !DILocation(line: 390, column: 11, scope: !2880)
!2880 = !DILexicalBlockFile(scope: !2874, file: !816, discriminator: 2)
!2881 = !DILocation(line: 390, column: 10, scope: !2882)
!2882 = !DILexicalBlockFile(scope: !2875, file: !816, discriminator: 3)
!2883 = !DILocation(line: 390, column: 38, scope: !2884)
!2884 = !DILexicalBlockFile(scope: !2885, file: !816, discriminator: 4)
!2885 = distinct !DILexicalBlock(scope: !2874, file: !816, line: 390, column: 36)
!2886 = !DILocation(line: 390, column: 47, scope: !2887)
!2887 = !DILexicalBlockFile(scope: !2888, file: !816, discriminator: 5)
!2888 = distinct !DILexicalBlock(scope: !2874, file: !816, line: 390, column: 45)
!2889 = !DILocation(line: 390, column: 136, scope: !2887)
!2890 = !DILocation(line: 390, column: 147, scope: !2891)
!2891 = !DILexicalBlockFile(scope: !2875, file: !816, discriminator: 6)
!2892 = !DILocation(line: 392, column: 6, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2867, file: !816, line: 392, column: 6)
!2894 = !DILocation(line: 392, column: 11, scope: !2893)
!2895 = !DILocation(line: 392, column: 22, scope: !2893)
!2896 = !DILocation(line: 392, column: 30, scope: !2893)
!2897 = !DILocation(line: 393, column: 6, scope: !2893)
!2898 = !DILocation(line: 393, column: 11, scope: !2893)
!2899 = !DILocation(line: 393, column: 21, scope: !2893)
!2900 = !DILocation(line: 393, column: 26, scope: !2893)
!2901 = !DILocation(line: 393, column: 29, scope: !2902)
!2902 = !DILexicalBlockFile(scope: !2893, file: !816, discriminator: 1)
!2903 = !DILocation(line: 393, column: 34, scope: !2902)
!2904 = !DILocation(line: 393, column: 41, scope: !2902)
!2905 = !DILocation(line: 392, column: 6, scope: !2906)
!2906 = !DILexicalBlockFile(scope: !2867, file: !816, discriminator: 1)
!2907 = !DILocation(line: 395, column: 3, scope: !2908)
!2908 = distinct !DILexicalBlock(scope: !2893, file: !816, line: 393, column: 49)
!2909 = !DILocation(line: 398, column: 32, scope: !2867)
!2910 = !DILocation(line: 398, column: 37, scope: !2867)
!2911 = !DILocation(line: 398, column: 43, scope: !2867)
!2912 = !DILocation(line: 398, column: 48, scope: !2867)
!2913 = !DILocation(line: 398, column: 16, scope: !2867)
!2914 = !DILocation(line: 398, column: 2, scope: !2867)
!2915 = !DILocation(line: 398, column: 7, scope: !2867)
!2916 = !DILocation(line: 398, column: 14, scope: !2867)
!2917 = !DILocation(line: 399, column: 6, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2867, file: !816, line: 399, column: 6)
!2919 = !DILocation(line: 399, column: 11, scope: !2918)
!2920 = !DILocation(line: 399, column: 18, scope: !2918)
!2921 = !DILocation(line: 399, column: 6, scope: !2867)
!2922 = !DILocation(line: 400, column: 30, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2918, file: !816, line: 399, column: 26)
!2924 = !DILocation(line: 400, column: 35, scope: !2923)
!2925 = !DILocation(line: 402, column: 46, scope: !2923)
!2926 = !DILocation(line: 400, column: 18, scope: !2923)
!2927 = !DILocation(line: 400, column: 3, scope: !2923)
!2928 = !DILocation(line: 400, column: 8, scope: !2923)
!2929 = !DILocation(line: 400, column: 16, scope: !2923)
!2930 = !DILocation(line: 403, column: 2, scope: !2923)
!2931 = !DILocation(line: 405, column: 39, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2918, file: !816, line: 403, column: 9)
!2933 = !DILocation(line: 405, column: 3, scope: !2932)
!2934 = !DILocation(line: 406, column: 29, scope: !2932)
!2935 = !DILocation(line: 406, column: 16, scope: !2932)
!2936 = !DILocation(line: 406, column: 3, scope: !2932)
!2937 = !DILocation(line: 408, column: 1, scope: !2867)
!2938 = distinct !DISubprogram(name: "dcc_chat_passive", scope: !816, file: !816, line: 410, type: !1178, isLocal: true, isDefinition: true, scopeLine: 411, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !819)
!2939 = !DILocalVariable(name: "dcc", arg: 1, scope: !2938, file: !816, line: 410, type: !57)
!2940 = !DILocation(line: 410, column: 44, scope: !2938)
!2941 = !DILocalVariable(name: "own_ip", scope: !2938, file: !816, line: 412, type: !108)
!2942 = !DILocation(line: 412, column: 9, scope: !2938)
!2943 = !DILocalVariable(name: "port", scope: !2938, file: !816, line: 413, type: !65)
!2944 = !DILocation(line: 413, column: 6, scope: !2938)
!2945 = !DILocalVariable(name: "handle", scope: !2938, file: !816, line: 414, type: !153)
!2946 = !DILocation(line: 414, column: 14, scope: !2938)
!2947 = !DILocalVariable(name: "host", scope: !2938, file: !816, line: 415, type: !757)
!2948 = !DILocation(line: 415, column: 7, scope: !2938)
!2949 = !DILocation(line: 417, column: 2, scope: !2938)
!2950 = distinct !{!2950, !2949}
!2951 = !DILocation(line: 417, column: 54, scope: !2952)
!2952 = !DILexicalBlockFile(scope: !2953, file: !816, discriminator: 1)
!2953 = distinct !DILexicalBlock(scope: !2954, file: !816, line: 417, column: 10)
!2954 = distinct !DILexicalBlock(scope: !2938, file: !816, line: 417, column: 4)
!2955 = !DILocation(line: 417, column: 29, scope: !2952)
!2956 = !DILocation(line: 417, column: 12, scope: !2952)
!2957 = !DILocation(line: 417, column: 10, scope: !2952)
!2958 = !DILocation(line: 417, column: 11, scope: !2959)
!2959 = !DILexicalBlockFile(scope: !2953, file: !816, discriminator: 2)
!2960 = !DILocation(line: 417, column: 10, scope: !2961)
!2961 = !DILexicalBlockFile(scope: !2954, file: !816, discriminator: 3)
!2962 = !DILocation(line: 417, column: 38, scope: !2963)
!2963 = !DILexicalBlockFile(scope: !2964, file: !816, discriminator: 4)
!2964 = distinct !DILexicalBlock(scope: !2953, file: !816, line: 417, column: 36)
!2965 = !DILocation(line: 417, column: 47, scope: !2966)
!2966 = !DILexicalBlockFile(scope: !2967, file: !816, discriminator: 5)
!2967 = distinct !DILexicalBlock(scope: !2953, file: !816, line: 417, column: 45)
!2968 = !DILocation(line: 417, column: 136, scope: !2966)
!2969 = !DILocation(line: 417, column: 147, scope: !2970)
!2970 = !DILexicalBlockFile(scope: !2954, file: !816, discriminator: 6)
!2971 = !DILocation(line: 419, column: 6, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2938, file: !816, line: 419, column: 6)
!2973 = !DILocation(line: 419, column: 11, scope: !2972)
!2974 = !DILocation(line: 419, column: 22, scope: !2972)
!2975 = !DILocation(line: 419, column: 30, scope: !2972)
!2976 = !DILocation(line: 420, column: 6, scope: !2972)
!2977 = !DILocation(line: 420, column: 11, scope: !2972)
!2978 = !DILocation(line: 420, column: 21, scope: !2972)
!2979 = !DILocation(line: 420, column: 26, scope: !2972)
!2980 = !DILocation(line: 420, column: 29, scope: !2981)
!2981 = !DILexicalBlockFile(scope: !2972, file: !816, discriminator: 1)
!2982 = !DILocation(line: 420, column: 34, scope: !2981)
!2983 = !DILocation(line: 420, column: 41, scope: !2981)
!2984 = !DILocation(line: 419, column: 6, scope: !2985)
!2985 = !DILexicalBlockFile(scope: !2938, file: !816, discriminator: 1)
!2986 = !DILocation(line: 422, column: 3, scope: !2987)
!2987 = distinct !DILexicalBlock(scope: !2972, file: !816, line: 420, column: 49)
!2988 = !DILocation(line: 425, column: 44, scope: !2938)
!2989 = !DILocation(line: 425, column: 49, scope: !2938)
!2990 = !DILocation(line: 425, column: 57, scope: !2938)
!2991 = !DILocation(line: 425, column: 22, scope: !2938)
!2992 = !DILocation(line: 425, column: 11, scope: !2985)
!2993 = !DILocation(line: 425, column: 9, scope: !2938)
!2994 = !DILocation(line: 427, column: 6, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2938, file: !816, line: 427, column: 6)
!2996 = !DILocation(line: 427, column: 13, scope: !2995)
!2997 = !DILocation(line: 427, column: 6, scope: !2938)
!2998 = !DILocation(line: 428, column: 3, scope: !2995)
!2999 = distinct !{!2999, !2998}
!3000 = !DILocation(line: 428, column: 8, scope: !3001)
!3001 = !DILexicalBlockFile(scope: !3002, file: !816, discriminator: 1)
!3002 = distinct !DILexicalBlock(scope: !2995, file: !816, line: 428, column: 6)
!3003 = !DILocation(line: 428, column: 78, scope: !3004)
!3004 = !DILexicalBlockFile(scope: !3001, file: !816, discriminator: 3)
!3005 = !DILocation(line: 428, column: 93, scope: !3001)
!3006 = !DILocation(line: 428, column: 101, scope: !3007)
!3007 = !DILexicalBlockFile(scope: !3002, file: !816, discriminator: 2)
!3008 = !DILocation(line: 430, column: 16, scope: !2938)
!3009 = !DILocation(line: 430, column: 2, scope: !2938)
!3010 = !DILocation(line: 430, column: 7, scope: !2938)
!3011 = !DILocation(line: 430, column: 14, scope: !2938)
!3012 = !DILocation(line: 431, column: 29, scope: !2938)
!3013 = !DILocation(line: 431, column: 34, scope: !2938)
!3014 = !DILocation(line: 432, column: 42, scope: !2938)
!3015 = !DILocation(line: 431, column: 17, scope: !2938)
!3016 = !DILocation(line: 431, column: 2, scope: !2938)
!3017 = !DILocation(line: 431, column: 7, scope: !2938)
!3018 = !DILocation(line: 431, column: 15, scope: !2938)
!3019 = !DILocation(line: 435, column: 22, scope: !2938)
!3020 = !DILocation(line: 435, column: 2, scope: !2938)
!3021 = !DILocation(line: 436, column: 16, scope: !2938)
!3022 = !DILocation(line: 436, column: 21, scope: !2938)
!3023 = !DILocation(line: 437, column: 9, scope: !2938)
!3024 = !DILocation(line: 437, column: 14, scope: !2938)
!3025 = !DILocation(line: 437, column: 20, scope: !2938)
!3026 = !DILocation(line: 437, column: 26, scope: !2938)
!3027 = !DILocation(line: 437, column: 32, scope: !2938)
!3028 = !DILocation(line: 437, column: 37, scope: !2938)
!3029 = !DILocation(line: 436, column: 2, scope: !2938)
!3030 = !DILocation(line: 439, column: 1, scope: !2938)
!3031 = !DILocation(line: 439, column: 1, scope: !2985)
!3032 = distinct !DISubprogram(name: "dcc_chat_listen", scope: !816, file: !816, line: 333, type: !1178, isLocal: true, isDefinition: true, scopeLine: 334, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !819)
!3033 = !DILocalVariable(name: "dcc", arg: 1, scope: !3032, file: !816, line: 333, type: !57)
!3034 = !DILocation(line: 333, column: 43, scope: !3032)
!3035 = !DILocalVariable(name: "ip", scope: !3032, file: !816, line: 335, type: !108)
!3036 = !DILocation(line: 335, column: 9, scope: !3032)
!3037 = !DILocalVariable(name: "handle", scope: !3032, file: !816, line: 336, type: !153)
!3038 = !DILocation(line: 336, column: 21, scope: !3032)
!3039 = !DILocalVariable(name: "port", scope: !3032, file: !816, line: 337, type: !65)
!3040 = !DILocation(line: 337, column: 6, scope: !3032)
!3041 = !DILocation(line: 339, column: 2, scope: !3032)
!3042 = distinct !{!3042, !3041}
!3043 = !DILocation(line: 339, column: 54, scope: !3044)
!3044 = !DILexicalBlockFile(scope: !3045, file: !816, discriminator: 1)
!3045 = distinct !DILexicalBlock(scope: !3046, file: !816, line: 339, column: 10)
!3046 = distinct !DILexicalBlock(scope: !3032, file: !816, line: 339, column: 4)
!3047 = !DILocation(line: 339, column: 29, scope: !3044)
!3048 = !DILocation(line: 339, column: 12, scope: !3044)
!3049 = !DILocation(line: 339, column: 10, scope: !3044)
!3050 = !DILocation(line: 339, column: 11, scope: !3051)
!3051 = !DILexicalBlockFile(scope: !3045, file: !816, discriminator: 2)
!3052 = !DILocation(line: 339, column: 10, scope: !3053)
!3053 = !DILexicalBlockFile(scope: !3046, file: !816, discriminator: 3)
!3054 = !DILocation(line: 339, column: 38, scope: !3055)
!3055 = !DILexicalBlockFile(scope: !3056, file: !816, discriminator: 4)
!3056 = distinct !DILexicalBlock(scope: !3045, file: !816, line: 339, column: 36)
!3057 = !DILocation(line: 339, column: 47, scope: !3058)
!3058 = !DILexicalBlockFile(scope: !3059, file: !816, discriminator: 5)
!3059 = distinct !DILexicalBlock(scope: !3045, file: !816, line: 339, column: 45)
!3060 = !DILocation(line: 339, column: 136, scope: !3058)
!3061 = !DILocation(line: 339, column: 147, scope: !3062)
!3062 = !DILexicalBlockFile(scope: !3046, file: !816, discriminator: 6)
!3063 = !DILocation(line: 342, column: 22, scope: !3032)
!3064 = !DILocation(line: 342, column: 27, scope: !3032)
!3065 = !DILocation(line: 342, column: 11, scope: !3032)
!3066 = !DILocation(line: 342, column: 9, scope: !3032)
!3067 = !DILocation(line: 343, column: 6, scope: !3068)
!3068 = distinct !DILexicalBlock(scope: !3032, file: !816, line: 343, column: 6)
!3069 = !DILocation(line: 343, column: 13, scope: !3068)
!3070 = !DILocation(line: 343, column: 6, scope: !3032)
!3071 = !DILocation(line: 344, column: 3, scope: !3068)
!3072 = !DILocation(line: 348, column: 17, scope: !3032)
!3073 = !DILocation(line: 348, column: 22, scope: !3032)
!3074 = !DILocation(line: 348, column: 2, scope: !3032)
!3075 = !DILocation(line: 349, column: 18, scope: !3032)
!3076 = !DILocation(line: 349, column: 23, scope: !3032)
!3077 = !DILocation(line: 349, column: 2, scope: !3032)
!3078 = !DILocation(line: 350, column: 2, scope: !3032)
!3079 = !DILocation(line: 350, column: 7, scope: !3032)
!3080 = !DILocation(line: 350, column: 15, scope: !3032)
!3081 = !DILocation(line: 352, column: 19, scope: !3032)
!3082 = !DILocation(line: 352, column: 2, scope: !3032)
!3083 = !DILocation(line: 352, column: 7, scope: !3032)
!3084 = !DILocation(line: 352, column: 17, scope: !3032)
!3085 = !DILocation(line: 353, column: 16, scope: !3032)
!3086 = !DILocation(line: 353, column: 2, scope: !3032)
!3087 = !DILocation(line: 353, column: 7, scope: !3032)
!3088 = !DILocation(line: 353, column: 14, scope: !3032)
!3089 = !DILocation(line: 354, column: 39, scope: !3032)
!3090 = !DILocation(line: 354, column: 17, scope: !3032)
!3091 = !DILocation(line: 354, column: 2, scope: !3032)
!3092 = !DILocation(line: 354, column: 7, scope: !3032)
!3093 = !DILocation(line: 354, column: 15, scope: !3032)
!3094 = !DILocation(line: 355, column: 10, scope: !3032)
!3095 = !DILocation(line: 355, column: 15, scope: !3032)
!3096 = !DILocation(line: 355, column: 2, scope: !3032)
!3097 = !DILocation(line: 356, column: 15, scope: !3032)
!3098 = !DILocation(line: 356, column: 20, scope: !3032)
!3099 = !DILocation(line: 356, column: 26, scope: !3032)
!3100 = !DILocation(line: 356, column: 31, scope: !3032)
!3101 = !DILocation(line: 356, column: 2, scope: !3032)
!3102 = !DILocation(line: 357, column: 14, scope: !3032)
!3103 = !DILocation(line: 357, column: 2, scope: !3032)
!3104 = !DILocation(line: 357, column: 7, scope: !3032)
!3105 = !DILocation(line: 357, column: 12, scope: !3032)
!3106 = !DILocation(line: 358, column: 29, scope: !3032)
!3107 = !DILocation(line: 359, column: 41, scope: !3032)
!3108 = !DILocation(line: 358, column: 17, scope: !3032)
!3109 = !DILocation(line: 358, column: 2, scope: !3032)
!3110 = !DILocation(line: 358, column: 7, scope: !3032)
!3111 = !DILocation(line: 358, column: 15, scope: !3032)
!3112 = !DILocation(line: 361, column: 34, scope: !3032)
!3113 = !DILocation(line: 361, column: 2, scope: !3032)
!3114 = !DILocation(line: 362, column: 1, scope: !3032)
!3115 = !DILocation(line: 362, column: 1, scope: !3116)
!3116 = !DILexicalBlockFile(scope: !3032, file: !816, discriminator: 1)
!3117 = distinct !DISubprogram(name: "sig_chat_connected", scope: !816, file: !816, line: 365, type: !1178, isLocal: true, isDefinition: true, scopeLine: 366, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !819)
!3118 = !DILocalVariable(name: "dcc", arg: 1, scope: !3117, file: !816, line: 365, type: !57)
!3119 = !DILocation(line: 365, column: 46, scope: !3117)
!3120 = !DILocation(line: 367, column: 2, scope: !3117)
!3121 = distinct !{!3121, !3120}
!3122 = !DILocation(line: 367, column: 54, scope: !3123)
!3123 = !DILexicalBlockFile(scope: !3124, file: !816, discriminator: 1)
!3124 = distinct !DILexicalBlock(scope: !3125, file: !816, line: 367, column: 10)
!3125 = distinct !DILexicalBlock(scope: !3117, file: !816, line: 367, column: 4)
!3126 = !DILocation(line: 367, column: 29, scope: !3123)
!3127 = !DILocation(line: 367, column: 12, scope: !3123)
!3128 = !DILocation(line: 367, column: 10, scope: !3123)
!3129 = !DILocation(line: 367, column: 11, scope: !3130)
!3130 = !DILexicalBlockFile(scope: !3124, file: !816, discriminator: 2)
!3131 = !DILocation(line: 367, column: 10, scope: !3132)
!3132 = !DILexicalBlockFile(scope: !3125, file: !816, discriminator: 3)
!3133 = !DILocation(line: 367, column: 38, scope: !3134)
!3134 = !DILexicalBlockFile(scope: !3135, file: !816, discriminator: 4)
!3135 = distinct !DILexicalBlock(scope: !3124, file: !816, line: 367, column: 36)
!3136 = !DILocation(line: 367, column: 47, scope: !3137)
!3137 = !DILexicalBlockFile(scope: !3138, file: !816, discriminator: 5)
!3138 = distinct !DILexicalBlock(scope: !3124, file: !816, line: 367, column: 45)
!3139 = !DILocation(line: 367, column: 136, scope: !3137)
!3140 = !DILocation(line: 367, column: 147, scope: !3141)
!3141 = !DILexicalBlockFile(scope: !3125, file: !816, discriminator: 6)
!3142 = !DILocation(line: 369, column: 19, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3117, file: !816, line: 369, column: 6)
!3144 = !DILocation(line: 369, column: 24, scope: !3143)
!3145 = !DILocation(line: 369, column: 6, scope: !3143)
!3146 = !DILocation(line: 369, column: 32, scope: !3143)
!3147 = !DILocation(line: 369, column: 6, scope: !3117)
!3148 = !DILocation(line: 371, column: 39, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3143, file: !816, line: 369, column: 38)
!3150 = !DILocation(line: 371, column: 3, scope: !3149)
!3151 = !DILocation(line: 372, column: 29, scope: !3149)
!3152 = !DILocation(line: 372, column: 16, scope: !3149)
!3153 = !DILocation(line: 372, column: 3, scope: !3149)
!3154 = !DILocation(line: 373, column: 3, scope: !3149)
!3155 = !DILocation(line: 377, column: 18, scope: !3117)
!3156 = !DILocation(line: 377, column: 23, scope: !3117)
!3157 = !DILocation(line: 377, column: 2, scope: !3117)
!3158 = !DILocation(line: 378, column: 2, scope: !3117)
!3159 = !DILocation(line: 378, column: 7, scope: !3117)
!3160 = !DILocation(line: 378, column: 15, scope: !3117)
!3161 = !DILocation(line: 380, column: 19, scope: !3117)
!3162 = !DILocation(line: 380, column: 2, scope: !3117)
!3163 = !DILocation(line: 380, column: 7, scope: !3117)
!3164 = !DILocation(line: 380, column: 17, scope: !3117)
!3165 = !DILocation(line: 381, column: 39, scope: !3117)
!3166 = !DILocation(line: 381, column: 44, scope: !3117)
!3167 = !DILocation(line: 381, column: 17, scope: !3117)
!3168 = !DILocation(line: 381, column: 2, scope: !3117)
!3169 = !DILocation(line: 381, column: 7, scope: !3117)
!3170 = !DILocation(line: 381, column: 15, scope: !3117)
!3171 = !DILocation(line: 382, column: 29, scope: !3117)
!3172 = !DILocation(line: 382, column: 34, scope: !3117)
!3173 = !DILocation(line: 383, column: 41, scope: !3117)
!3174 = !DILocation(line: 382, column: 17, scope: !3117)
!3175 = !DILocation(line: 382, column: 2, scope: !3117)
!3176 = !DILocation(line: 382, column: 7, scope: !3117)
!3177 = !DILocation(line: 382, column: 15, scope: !3117)
!3178 = !DILocation(line: 385, column: 34, scope: !3117)
!3179 = !DILocation(line: 385, column: 2, scope: !3117)
!3180 = !DILocation(line: 386, column: 1, scope: !3117)
!3181 = !DILocation(line: 386, column: 1, scope: !3182)
!3182 = !DILexicalBlockFile(scope: !3117, file: !816, discriminator: 1)
!3183 = distinct !DISubprogram(name: "dcc_remove_chat_refs", scope: !816, file: !816, line: 79, type: !1178, isLocal: true, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !819)
!3184 = !DILocalVariable(name: "dcc", arg: 1, scope: !3183, file: !816, line: 79, type: !57)
!3185 = !DILocation(line: 79, column: 48, scope: !3183)
!3186 = !DILocalVariable(name: "tmp", scope: !3183, file: !816, line: 81, type: !275)
!3187 = !DILocation(line: 81, column: 10, scope: !3183)
!3188 = !DILocation(line: 83, column: 2, scope: !3183)
!3189 = distinct !{!3189, !3188}
!3190 = !DILocation(line: 83, column: 10, scope: !3191)
!3191 = !DILexicalBlockFile(scope: !3192, file: !816, discriminator: 1)
!3192 = distinct !DILexicalBlock(scope: !3193, file: !816, line: 83, column: 10)
!3193 = distinct !DILexicalBlock(scope: !3183, file: !816, line: 83, column: 4)
!3194 = !DILocation(line: 83, column: 14, scope: !3191)
!3195 = !DILocation(line: 83, column: 5, scope: !3196)
!3196 = !DILexicalBlockFile(scope: !3197, file: !816, discriminator: 2)
!3197 = distinct !DILexicalBlock(scope: !3192, file: !816, line: 83, column: 3)
!3198 = !DILocation(line: 83, column: 14, scope: !3199)
!3199 = !DILexicalBlockFile(scope: !3200, file: !816, discriminator: 3)
!3200 = distinct !DILexicalBlock(scope: !3192, file: !816, line: 83, column: 12)
!3201 = !DILocation(line: 83, column: 98, scope: !3199)
!3202 = !DILocation(line: 83, column: 109, scope: !3203)
!3203 = !DILexicalBlockFile(scope: !3193, file: !816, discriminator: 4)
!3204 = !DILocation(line: 85, column: 13, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3183, file: !816, line: 85, column: 2)
!3206 = !DILocation(line: 85, column: 11, scope: !3205)
!3207 = !DILocation(line: 85, column: 7, scope: !3205)
!3208 = !DILocation(line: 85, column: 24, scope: !3209)
!3209 = !DILexicalBlockFile(scope: !3210, file: !816, discriminator: 1)
!3210 = distinct !DILexicalBlock(scope: !3205, file: !816, line: 85, column: 2)
!3211 = !DILocation(line: 85, column: 28, scope: !3209)
!3212 = !DILocation(line: 85, column: 2, scope: !3209)
!3213 = !DILocalVariable(name: "rec", scope: !3214, file: !816, line: 86, type: !775)
!3214 = distinct !DILexicalBlock(scope: !3210, file: !816, line: 85, column: 53)
!3215 = !DILocation(line: 86, column: 12, scope: !3214)
!3216 = !DILocation(line: 86, column: 18, scope: !3214)
!3217 = !DILocation(line: 86, column: 23, scope: !3214)
!3218 = !DILocation(line: 88, column: 7, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3214, file: !816, line: 88, column: 7)
!3220 = !DILocation(line: 88, column: 12, scope: !3219)
!3221 = !DILocation(line: 88, column: 20, scope: !3219)
!3222 = !DILocation(line: 88, column: 17, scope: !3219)
!3223 = !DILocation(line: 88, column: 7, scope: !3214)
!3224 = !DILocation(line: 89, column: 4, scope: !3219)
!3225 = !DILocation(line: 89, column: 9, scope: !3219)
!3226 = !DILocation(line: 89, column: 14, scope: !3219)
!3227 = !DILocation(line: 90, column: 2, scope: !3214)
!3228 = !DILocation(line: 85, column: 42, scope: !3229)
!3229 = !DILexicalBlockFile(scope: !3210, file: !816, discriminator: 2)
!3230 = !DILocation(line: 85, column: 47, scope: !3229)
!3231 = !DILocation(line: 85, column: 40, scope: !3229)
!3232 = !DILocation(line: 85, column: 2, scope: !3229)
!3233 = distinct !{!3233, !3234}
!3234 = !DILocation(line: 85, column: 2, scope: !3183)
!3235 = !DILocation(line: 91, column: 1, scope: !3183)
!3236 = distinct !DISubprogram(name: "dcc_chat_find_nick", scope: !816, file: !816, line: 120, type: !3237, isLocal: true, isDefinition: true, scopeLine: 122, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !819)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{!57, !74, !510}
!3239 = !DILocalVariable(name: "server", arg: 1, scope: !3236, file: !816, line: 120, type: !74)
!3240 = !DILocation(line: 120, column: 57, scope: !3236)
!3241 = !DILocalVariable(name: "nick", arg: 2, scope: !3236, file: !816, line: 121, type: !510)
!3242 = !DILocation(line: 121, column: 18, scope: !3236)
!3243 = !DILocalVariable(name: "tmp", scope: !3236, file: !816, line: 123, type: !275)
!3244 = !DILocation(line: 123, column: 10, scope: !3236)
!3245 = !DILocation(line: 125, column: 2, scope: !3236)
!3246 = distinct !{!3246, !3245}
!3247 = !DILocation(line: 125, column: 10, scope: !3248)
!3248 = !DILexicalBlockFile(scope: !3249, file: !816, discriminator: 1)
!3249 = distinct !DILexicalBlock(scope: !3250, file: !816, line: 125, column: 10)
!3250 = distinct !DILexicalBlock(scope: !3236, file: !816, line: 125, column: 4)
!3251 = !DILocation(line: 125, column: 15, scope: !3248)
!3252 = !DILocation(line: 125, column: 5, scope: !3253)
!3253 = !DILexicalBlockFile(scope: !3254, file: !816, discriminator: 2)
!3254 = distinct !DILexicalBlock(scope: !3249, file: !816, line: 125, column: 3)
!3255 = !DILocation(line: 125, column: 14, scope: !3256)
!3256 = !DILexicalBlockFile(scope: !3257, file: !816, discriminator: 3)
!3257 = distinct !DILexicalBlock(scope: !3249, file: !816, line: 125, column: 12)
!3258 = !DILocation(line: 125, column: 99, scope: !3256)
!3259 = !DILocation(line: 125, column: 7, scope: !3260)
!3260 = !DILexicalBlockFile(scope: !3250, file: !816, discriminator: 4)
!3261 = !DILocation(line: 127, column: 13, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3236, file: !816, line: 127, column: 2)
!3263 = !DILocation(line: 127, column: 11, scope: !3262)
!3264 = !DILocation(line: 127, column: 7, scope: !3262)
!3265 = !DILocation(line: 127, column: 24, scope: !3266)
!3266 = !DILexicalBlockFile(scope: !3267, file: !816, discriminator: 1)
!3267 = distinct !DILexicalBlock(scope: !3262, file: !816, line: 127, column: 2)
!3268 = !DILocation(line: 127, column: 28, scope: !3266)
!3269 = !DILocation(line: 127, column: 2, scope: !3266)
!3270 = !DILocalVariable(name: "dcc", scope: !3271, file: !816, line: 128, type: !57)
!3271 = distinct !DILexicalBlock(scope: !3267, file: !816, line: 127, column: 53)
!3272 = !DILocation(line: 128, column: 17, scope: !3271)
!3273 = !DILocation(line: 128, column: 23, scope: !3271)
!3274 = !DILocation(line: 128, column: 28, scope: !3271)
!3275 = !DILocation(line: 130, column: 51, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3271, file: !816, line: 130, column: 7)
!3277 = !DILocation(line: 130, column: 26, scope: !3276)
!3278 = !DILocation(line: 130, column: 9, scope: !3276)
!3279 = !DILocation(line: 130, column: 40, scope: !3276)
!3280 = !DILocation(line: 130, column: 8, scope: !3281)
!3281 = !DILexicalBlockFile(scope: !3276, file: !816, discriminator: 1)
!3282 = !DILocation(line: 130, column: 40, scope: !3283)
!3283 = !DILexicalBlockFile(scope: !3276, file: !816, discriminator: 2)
!3284 = !DILocation(line: 130, column: 43, scope: !3285)
!3285 = !DILexicalBlockFile(scope: !3276, file: !816, discriminator: 3)
!3286 = !DILocation(line: 130, column: 48, scope: !3285)
!3287 = !DILocation(line: 130, column: 58, scope: !3285)
!3288 = !DILocation(line: 130, column: 55, scope: !3285)
!3289 = !DILocation(line: 130, column: 65, scope: !3285)
!3290 = !DILocation(line: 131, column: 26, scope: !3276)
!3291 = !DILocation(line: 131, column: 31, scope: !3276)
!3292 = !DILocation(line: 131, column: 37, scope: !3276)
!3293 = !DILocation(line: 131, column: 7, scope: !3276)
!3294 = !DILocation(line: 131, column: 43, scope: !3276)
!3295 = !DILocation(line: 130, column: 7, scope: !3296)
!3296 = !DILexicalBlockFile(scope: !3271, file: !816, discriminator: 4)
!3297 = !DILocation(line: 132, column: 11, scope: !3276)
!3298 = !DILocation(line: 132, column: 4, scope: !3276)
!3299 = !DILocation(line: 133, column: 2, scope: !3271)
!3300 = !DILocation(line: 127, column: 42, scope: !3301)
!3301 = !DILexicalBlockFile(scope: !3267, file: !816, discriminator: 2)
!3302 = !DILocation(line: 127, column: 47, scope: !3301)
!3303 = !DILocation(line: 127, column: 40, scope: !3301)
!3304 = !DILocation(line: 127, column: 2, scope: !3301)
!3305 = distinct !{!3305, !3306}
!3306 = !DILocation(line: 127, column: 2, scope: !3236)
!3307 = !DILocation(line: 135, column: 2, scope: !3236)
!3308 = !DILocation(line: 136, column: 1, scope: !3236)
