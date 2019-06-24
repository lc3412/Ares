; ModuleID = './line278-fe-dcc-chat-messages.o.i'
source_filename = "./line278-fe-dcc-chat-messages.o.i"
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
%struct._TEXT_DEST_REC = type { %struct._WINDOW_REC*, %struct._SERVER_REC*, i8*, i8*, i8*, i8*, i32, i32, i8*, i32 }
%struct._WINDOW_REC = type { i32, i8*, i32, i32, %struct._GSList*, %struct._WI_ITEM_REC*, %struct._SERVER_REC*, %struct._SERVER_REC*, i8*, i32, %struct._GSList*, i8, %struct.HISTORY_REC*, i8*, i32, i8*, i64, i64, i8*, i8*, i8* }
%struct.HISTORY_REC = type { i8*, %struct._GList*, i32, i32, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }

@.str = private unnamed_addr constant [18 x i8] c"fe-common/irc/dcc\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"message dcc own\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"message dcc own_action\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"message dcc own_ctcp\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"message dcc\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"message dcc action\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"message dcc ctcp\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1

; Function Attrs: nounwind uwtable
define void @fe_dcc_chat_messages_init() #0 !dbg !603 {
  call void @signal_add_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.CHAT_DCC_REC*, i8*)* @sig_message_dcc_own to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !606
  call void @signal_add_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.CHAT_DCC_REC*, i8*)* @sig_message_dcc_own_action to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !607
  call void @signal_add_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.CHAT_DCC_REC*, i8*, i8*)* @sig_message_dcc_own_ctcp to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !608
  call void @signal_add_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.CHAT_DCC_REC*, i8*)* @sig_message_dcc to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !609
  call void @signal_add_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.CHAT_DCC_REC*, i8*)* @sig_message_dcc_action to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !610
  call void @signal_add_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.CHAT_DCC_REC*, i8*, i8*)* @sig_message_dcc_ctcp to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !611
  ret void, !dbg !612
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @sig_message_dcc_own(%struct.CHAT_DCC_REC*, i8*) #0 !dbg !613 {
  %3 = alloca %struct.CHAT_DCC_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._TEXT_DEST_REC, align 8
  %6 = alloca %struct._QUERY_REC*, align 8
  %7 = alloca i8*, align 8
  store %struct.CHAT_DCC_REC* %0, %struct.CHAT_DCC_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %3, metadata !861, metadata !862), !dbg !863
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !864, metadata !862), !dbg !865
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC* %5, metadata !866, metadata !862), !dbg !927
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %6, metadata !928, metadata !862), !dbg !929
  call void @llvm.dbg.declare(metadata i8** %7, metadata !930, metadata !862), !dbg !931
  %8 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !932
  %9 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %8, i32 0, i32 22, !dbg !933
  %10 = load i8*, i8** %9, align 8, !dbg !933
  %11 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* %10, i8* null), !dbg !934
  store i8* %11, i8** %7, align 8, !dbg !935
  %12 = load i8*, i8** %7, align 8, !dbg !936
  %13 = call %struct._QUERY_REC* @query_find(%struct._SERVER_REC* null, i8* %12), !dbg !937
  store %struct._QUERY_REC* %13, %struct._QUERY_REC** %6, align 8, !dbg !938
  %14 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !939
  %15 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %14, i32 0, i32 3, !dbg !940
  %16 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %15, align 8, !dbg !940
  %17 = bitcast %struct._IRC_SERVER_REC* %16 to i8*, !dbg !939
  %18 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !941
  %19 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %18, i32 0, i32 4, !dbg !942
  %20 = load i8*, i8** %19, align 8, !dbg !942
  %21 = load i8*, i8** %7, align 8, !dbg !943
  call void @format_create_dest_tag(%struct._TEXT_DEST_REC* %5, i8* %17, i8* %20, i8* %21, i32 50462720, %struct._WINDOW_REC* null), !dbg !944
  %22 = load %struct._QUERY_REC*, %struct._QUERY_REC** %6, align 8, !dbg !945
  %23 = icmp ne %struct._QUERY_REC* %22, null, !dbg !946
  %24 = select i1 %23, i32 9, i32 2, !dbg !945
  %25 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !947
  %26 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %25, i32 0, i32 5, !dbg !948
  %27 = load i8*, i8** %26, align 8, !dbg !948
  %28 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !949
  %29 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %28, i32 0, i32 22, !dbg !946
  %30 = load i8*, i8** %29, align 8, !dbg !946
  %31 = load i8*, i8** %4, align 8, !dbg !950
  call void (i8*, %struct._TEXT_DEST_REC*, i32, ...) @printformat_module_dest(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), %struct._TEXT_DEST_REC* %5, i32 %24, i8* %27, i8* %30, i8* %31), !dbg !951
  %32 = load i8*, i8** %7, align 8, !dbg !952
  call void @g_free(i8* %32), !dbg !953
  ret void, !dbg !954
}

; Function Attrs: nounwind uwtable
define internal void @sig_message_dcc_own_action(%struct.CHAT_DCC_REC*, i8*) #0 !dbg !955 {
  %3 = alloca %struct.CHAT_DCC_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._TEXT_DEST_REC, align 8
  %6 = alloca %struct._QUERY_REC*, align 8
  %7 = alloca i8*, align 8
  store %struct.CHAT_DCC_REC* %0, %struct.CHAT_DCC_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %3, metadata !956, metadata !862), !dbg !957
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !958, metadata !862), !dbg !959
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC* %5, metadata !960, metadata !862), !dbg !961
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %6, metadata !962, metadata !862), !dbg !963
  call void @llvm.dbg.declare(metadata i8** %7, metadata !964, metadata !862), !dbg !965
  %8 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !966
  %9 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %8, i32 0, i32 22, !dbg !967
  %10 = load i8*, i8** %9, align 8, !dbg !967
  %11 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* %10, i8* null), !dbg !968
  store i8* %11, i8** %7, align 8, !dbg !969
  %12 = load i8*, i8** %7, align 8, !dbg !970
  %13 = call %struct._QUERY_REC* @query_find(%struct._SERVER_REC* null, i8* %12), !dbg !971
  store %struct._QUERY_REC* %13, %struct._QUERY_REC** %6, align 8, !dbg !972
  %14 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !973
  %15 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %14, i32 0, i32 3, !dbg !974
  %16 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %15, align 8, !dbg !974
  %17 = bitcast %struct._IRC_SERVER_REC* %16 to i8*, !dbg !973
  %18 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !975
  %19 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %18, i32 0, i32 4, !dbg !976
  %20 = load i8*, i8** %19, align 8, !dbg !976
  %21 = load i8*, i8** %7, align 8, !dbg !977
  call void @format_create_dest_tag(%struct._TEXT_DEST_REC* %5, i8* %17, i8* %20, i8* %21, i32 50462784, %struct._WINDOW_REC* null), !dbg !978
  %22 = load %struct._QUERY_REC*, %struct._QUERY_REC** %6, align 8, !dbg !979
  %23 = icmp ne %struct._QUERY_REC* %22, null, !dbg !980
  %24 = select i1 %23, i32 4, i32 3, !dbg !979
  %25 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !981
  %26 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %25, i32 0, i32 5, !dbg !982
  %27 = load i8*, i8** %26, align 8, !dbg !982
  %28 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !983
  %29 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %28, i32 0, i32 22, !dbg !984
  %30 = load i8*, i8** %29, align 8, !dbg !984
  %31 = load i8*, i8** %4, align 8, !dbg !985
  call void (i8*, %struct._TEXT_DEST_REC*, i32, ...) @printformat_module_dest(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), %struct._TEXT_DEST_REC* %5, i32 %24, i8* %27, i8* %30, i8* %31), !dbg !986
  %32 = load i8*, i8** %7, align 8, !dbg !987
  call void @g_free(i8* %32), !dbg !988
  ret void, !dbg !989
}

; Function Attrs: nounwind uwtable
define internal void @sig_message_dcc_own_ctcp(%struct.CHAT_DCC_REC*, i8*, i8*) #0 !dbg !990 {
  %4 = alloca %struct.CHAT_DCC_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._TEXT_DEST_REC, align 8
  %8 = alloca i8*, align 8
  store %struct.CHAT_DCC_REC* %0, %struct.CHAT_DCC_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %4, metadata !993, metadata !862), !dbg !994
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !995, metadata !862), !dbg !996
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !997, metadata !862), !dbg !998
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC* %7, metadata !999, metadata !862), !dbg !1000
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1001, metadata !862), !dbg !1002
  %9 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %4, align 8, !dbg !1003
  %10 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %9, i32 0, i32 22, !dbg !1004
  %11 = load i8*, i8** %10, align 8, !dbg !1004
  %12 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* %11, i8* null), !dbg !1005
  store i8* %12, i8** %8, align 8, !dbg !1006
  %13 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %4, align 8, !dbg !1007
  %14 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %13, i32 0, i32 3, !dbg !1008
  %15 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %14, align 8, !dbg !1008
  %16 = bitcast %struct._IRC_SERVER_REC* %15 to i8*, !dbg !1007
  %17 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %4, align 8, !dbg !1009
  %18 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %17, i32 0, i32 4, !dbg !1010
  %19 = load i8*, i8** %18, align 8, !dbg !1010
  %20 = load i8*, i8** %8, align 8, !dbg !1011
  call void @format_create_dest_tag(%struct._TEXT_DEST_REC* %7, i8* %16, i8* %19, i8* %20, i32 50397216, %struct._WINDOW_REC* null), !dbg !1012
  %21 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %4, align 8, !dbg !1013
  %22 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %21, i32 0, i32 22, !dbg !1014
  %23 = load i8*, i8** %22, align 8, !dbg !1014
  %24 = load i8*, i8** %5, align 8, !dbg !1015
  %25 = load i8*, i8** %6, align 8, !dbg !1016
  call void (i8*, %struct._TEXT_DEST_REC*, i32, ...) @printformat_module_dest(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), %struct._TEXT_DEST_REC* %7, i32 5, i8* %23, i8* %24, i8* %25), !dbg !1017
  %26 = load i8*, i8** %8, align 8, !dbg !1018
  call void @g_free(i8* %26), !dbg !1019
  ret void, !dbg !1020
}

; Function Attrs: nounwind uwtable
define internal void @sig_message_dcc(%struct.CHAT_DCC_REC*, i8*) #0 !dbg !1021 {
  %3 = alloca %struct.CHAT_DCC_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._TEXT_DEST_REC, align 8
  %6 = alloca %struct._QUERY_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.CHAT_DCC_REC* %0, %struct.CHAT_DCC_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %3, metadata !1022, metadata !862), !dbg !1023
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1024, metadata !862), !dbg !1025
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC* %5, metadata !1026, metadata !862), !dbg !1027
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %6, metadata !1028, metadata !862), !dbg !1029
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1030, metadata !862), !dbg !1031
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1032, metadata !862), !dbg !1033
  store i32 131072, i32* %8, align 4, !dbg !1033
  %9 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !1034
  %10 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %9, i32 0, i32 22, !dbg !1035
  %11 = load i8*, i8** %10, align 8, !dbg !1035
  %12 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* %11, i8* null), !dbg !1036
  store i8* %12, i8** %7, align 8, !dbg !1037
  %13 = load i8*, i8** %7, align 8, !dbg !1038
  %14 = call %struct._QUERY_REC* @query_find(%struct._SERVER_REC* null, i8* %13), !dbg !1039
  store %struct._QUERY_REC* %14, %struct._QUERY_REC** %6, align 8, !dbg !1040
  %15 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !1041
  %16 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %15, i32 0, i32 3, !dbg !1043
  %17 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %16, align 8, !dbg !1043
  %18 = bitcast %struct._IRC_SERVER_REC* %17 to i8*, !dbg !1041
  %19 = call i8* @module_check_cast(i8* %18, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0)), !dbg !1044
  %20 = bitcast i8* %19 to %struct._SERVER_REC*, !dbg !1045
  %21 = load i8*, i8** %7, align 8, !dbg !1046
  %22 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !1047
  %23 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %22, i32 0, i32 11, !dbg !1048
  %24 = getelementptr inbounds [46 x i8], [46 x i8]* %23, i32 0, i32 0, !dbg !1047
  %25 = load i8*, i8** %4, align 8, !dbg !1049
  %26 = load i32, i32* %8, align 4, !dbg !1050
  %27 = or i32 %26, 33554432, !dbg !1051
  %28 = call i32 @ignore_check(%struct._SERVER_REC* %20, i8* %21, i8* %24, i8* null, i8* %25, i32 %27), !dbg !1052
  %29 = icmp ne i32 %28, 0, !dbg !1054
  br i1 %29, label %30, label %33, !dbg !1055

; <label>:30:                                     ; preds = %2
  %31 = load i32, i32* %8, align 4, !dbg !1056
  %32 = or i32 %31, 33554432, !dbg !1056
  store i32 %32, i32* %8, align 4, !dbg !1056
  br label %33, !dbg !1057

; <label>:33:                                     ; preds = %30, %2
  %34 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !1058
  %35 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %34, i32 0, i32 3, !dbg !1060
  %36 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %35, align 8, !dbg !1060
  %37 = bitcast %struct._IRC_SERVER_REC* %36 to i8*, !dbg !1058
  %38 = call i8* @module_check_cast(i8* %37, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0)), !dbg !1061
  %39 = bitcast i8* %38 to %struct._SERVER_REC*, !dbg !1062
  %40 = load i8*, i8** %7, align 8, !dbg !1063
  %41 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !1064
  %42 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %41, i32 0, i32 11, !dbg !1065
  %43 = getelementptr inbounds [46 x i8], [46 x i8]* %42, i32 0, i32 0, !dbg !1064
  %44 = load i8*, i8** %4, align 8, !dbg !1066
  %45 = load i32, i32* %8, align 4, !dbg !1067
  %46 = or i32 %45, 268435456, !dbg !1068
  %47 = call i32 @ignore_check(%struct._SERVER_REC* %39, i8* %40, i8* %43, i8* null, i8* %44, i32 %46), !dbg !1069
  %48 = icmp ne i32 %47, 0, !dbg !1071
  br i1 %48, label %49, label %52, !dbg !1072

; <label>:49:                                     ; preds = %33
  %50 = load i32, i32* %8, align 4, !dbg !1073
  %51 = or i32 %50, 268435456, !dbg !1073
  store i32 %51, i32* %8, align 4, !dbg !1073
  br label %52, !dbg !1074

; <label>:52:                                     ; preds = %49, %33
  %53 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !1075
  %54 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %53, i32 0, i32 3, !dbg !1076
  %55 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %54, align 8, !dbg !1076
  %56 = bitcast %struct._IRC_SERVER_REC* %55 to i8*, !dbg !1075
  %57 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !1077
  %58 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %57, i32 0, i32 4, !dbg !1078
  %59 = load i8*, i8** %58, align 8, !dbg !1078
  %60 = load i8*, i8** %7, align 8, !dbg !1079
  %61 = load i32, i32* %8, align 4, !dbg !1080
  call void @format_create_dest_tag(%struct._TEXT_DEST_REC* %5, i8* %56, i8* %59, i8* %60, i32 %61, %struct._WINDOW_REC* null), !dbg !1081
  %62 = load %struct._QUERY_REC*, %struct._QUERY_REC** %6, align 8, !dbg !1082
  %63 = icmp ne %struct._QUERY_REC* %62, null, !dbg !1083
  %64 = select i1 %63, i32 10, i32 6, !dbg !1082
  %65 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !1084
  %66 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %65, i32 0, i32 22, !dbg !1085
  %67 = load i8*, i8** %66, align 8, !dbg !1085
  %68 = load i8*, i8** %4, align 8, !dbg !1086
  call void (i8*, %struct._TEXT_DEST_REC*, i32, ...) @printformat_module_dest(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), %struct._TEXT_DEST_REC* %5, i32 %64, i8* %67, i8* %68), !dbg !1087
  %69 = load i8*, i8** %7, align 8, !dbg !1088
  call void @g_free(i8* %69), !dbg !1089
  ret void, !dbg !1090
}

; Function Attrs: nounwind uwtable
define internal void @sig_message_dcc_action(%struct.CHAT_DCC_REC*, i8*) #0 !dbg !1091 {
  %3 = alloca %struct.CHAT_DCC_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._TEXT_DEST_REC, align 8
  %6 = alloca %struct._QUERY_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.CHAT_DCC_REC* %0, %struct.CHAT_DCC_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %3, metadata !1092, metadata !862), !dbg !1093
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1094, metadata !862), !dbg !1095
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC* %5, metadata !1096, metadata !862), !dbg !1097
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %6, metadata !1098, metadata !862), !dbg !1099
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1100, metadata !862), !dbg !1101
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1102, metadata !862), !dbg !1103
  store i32 131136, i32* %8, align 4, !dbg !1103
  %9 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !1104
  %10 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %9, i32 0, i32 22, !dbg !1105
  %11 = load i8*, i8** %10, align 8, !dbg !1105
  %12 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* %11, i8* null), !dbg !1106
  store i8* %12, i8** %7, align 8, !dbg !1107
  %13 = load i8*, i8** %7, align 8, !dbg !1108
  %14 = call %struct._QUERY_REC* @query_find(%struct._SERVER_REC* null, i8* %13), !dbg !1109
  store %struct._QUERY_REC* %14, %struct._QUERY_REC** %6, align 8, !dbg !1110
  %15 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !1111
  %16 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %15, i32 0, i32 3, !dbg !1113
  %17 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %16, align 8, !dbg !1113
  %18 = bitcast %struct._IRC_SERVER_REC* %17 to i8*, !dbg !1111
  %19 = call i8* @module_check_cast(i8* %18, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0)), !dbg !1114
  %20 = bitcast i8* %19 to %struct._SERVER_REC*, !dbg !1115
  %21 = load i8*, i8** %7, align 8, !dbg !1116
  %22 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !1117
  %23 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %22, i32 0, i32 11, !dbg !1118
  %24 = getelementptr inbounds [46 x i8], [46 x i8]* %23, i32 0, i32 0, !dbg !1117
  %25 = load i8*, i8** %4, align 8, !dbg !1119
  %26 = load i32, i32* %8, align 4, !dbg !1120
  %27 = or i32 %26, 33554432, !dbg !1121
  %28 = call i32 @ignore_check(%struct._SERVER_REC* %20, i8* %21, i8* %24, i8* null, i8* %25, i32 %27), !dbg !1122
  %29 = icmp ne i32 %28, 0, !dbg !1124
  br i1 %29, label %30, label %33, !dbg !1125

; <label>:30:                                     ; preds = %2
  %31 = load i32, i32* %8, align 4, !dbg !1126
  %32 = or i32 %31, 33554432, !dbg !1126
  store i32 %32, i32* %8, align 4, !dbg !1126
  br label %33, !dbg !1127

; <label>:33:                                     ; preds = %30, %2
  %34 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !1128
  %35 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %34, i32 0, i32 3, !dbg !1130
  %36 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %35, align 8, !dbg !1130
  %37 = bitcast %struct._IRC_SERVER_REC* %36 to i8*, !dbg !1128
  %38 = call i8* @module_check_cast(i8* %37, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0)), !dbg !1131
  %39 = bitcast i8* %38 to %struct._SERVER_REC*, !dbg !1132
  %40 = load i8*, i8** %7, align 8, !dbg !1133
  %41 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !1134
  %42 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %41, i32 0, i32 11, !dbg !1135
  %43 = getelementptr inbounds [46 x i8], [46 x i8]* %42, i32 0, i32 0, !dbg !1134
  %44 = load i8*, i8** %4, align 8, !dbg !1136
  %45 = load i32, i32* %8, align 4, !dbg !1137
  %46 = or i32 %45, 268435456, !dbg !1138
  %47 = call i32 @ignore_check(%struct._SERVER_REC* %39, i8* %40, i8* %43, i8* null, i8* %44, i32 %46), !dbg !1139
  %48 = icmp ne i32 %47, 0, !dbg !1141
  br i1 %48, label %49, label %52, !dbg !1142

; <label>:49:                                     ; preds = %33
  %50 = load i32, i32* %8, align 4, !dbg !1143
  %51 = or i32 %50, 268435456, !dbg !1143
  store i32 %51, i32* %8, align 4, !dbg !1143
  br label %52, !dbg !1144

; <label>:52:                                     ; preds = %49, %33
  %53 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !1145
  %54 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %53, i32 0, i32 3, !dbg !1146
  %55 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %54, align 8, !dbg !1146
  %56 = bitcast %struct._IRC_SERVER_REC* %55 to i8*, !dbg !1145
  %57 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !1147
  %58 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %57, i32 0, i32 4, !dbg !1148
  %59 = load i8*, i8** %58, align 8, !dbg !1148
  %60 = load i8*, i8** %7, align 8, !dbg !1149
  %61 = load i32, i32* %8, align 4, !dbg !1150
  call void @format_create_dest_tag(%struct._TEXT_DEST_REC* %5, i8* %56, i8* %59, i8* %60, i32 %61, %struct._WINDOW_REC* null), !dbg !1151
  %62 = load %struct._QUERY_REC*, %struct._QUERY_REC** %6, align 8, !dbg !1152
  %63 = icmp ne %struct._QUERY_REC* %62, null, !dbg !1153
  %64 = select i1 %63, i32 8, i32 7, !dbg !1152
  %65 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %3, align 8, !dbg !1154
  %66 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %65, i32 0, i32 22, !dbg !1155
  %67 = load i8*, i8** %66, align 8, !dbg !1155
  %68 = load i8*, i8** %4, align 8, !dbg !1156
  call void (i8*, %struct._TEXT_DEST_REC*, i32, ...) @printformat_module_dest(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), %struct._TEXT_DEST_REC* %5, i32 %64, i8* %67, i8* %68), !dbg !1157
  %69 = load i8*, i8** %7, align 8, !dbg !1158
  call void @g_free(i8* %69), !dbg !1159
  ret void, !dbg !1160
}

; Function Attrs: nounwind uwtable
define internal void @sig_message_dcc_ctcp(%struct.CHAT_DCC_REC*, i8*, i8*) #0 !dbg !1161 {
  %4 = alloca %struct.CHAT_DCC_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._TEXT_DEST_REC, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.CHAT_DCC_REC* %0, %struct.CHAT_DCC_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %4, metadata !1162, metadata !862), !dbg !1163
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1164, metadata !862), !dbg !1165
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1166, metadata !862), !dbg !1167
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC* %7, metadata !1168, metadata !862), !dbg !1169
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1170, metadata !862), !dbg !1171
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1172, metadata !862), !dbg !1173
  store i32 131104, i32* %9, align 4, !dbg !1173
  %10 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %4, align 8, !dbg !1174
  %11 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %10, i32 0, i32 22, !dbg !1175
  %12 = load i8*, i8** %11, align 8, !dbg !1175
  %13 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* %12, i8* null), !dbg !1176
  store i8* %13, i8** %8, align 8, !dbg !1177
  %14 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %4, align 8, !dbg !1178
  %15 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %14, i32 0, i32 3, !dbg !1180
  %16 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %15, align 8, !dbg !1180
  %17 = bitcast %struct._IRC_SERVER_REC* %16 to i8*, !dbg !1178
  %18 = call i8* @module_check_cast(i8* %17, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0)), !dbg !1181
  %19 = bitcast i8* %18 to %struct._SERVER_REC*, !dbg !1182
  %20 = load i8*, i8** %8, align 8, !dbg !1183
  %21 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %4, align 8, !dbg !1184
  %22 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %21, i32 0, i32 11, !dbg !1185
  %23 = getelementptr inbounds [46 x i8], [46 x i8]* %22, i32 0, i32 0, !dbg !1184
  %24 = load i8*, i8** %5, align 8, !dbg !1186
  %25 = load i32, i32* %9, align 4, !dbg !1187
  %26 = or i32 %25, 33554432, !dbg !1188
  %27 = call i32 @ignore_check(%struct._SERVER_REC* %19, i8* %20, i8* %23, i8* null, i8* %24, i32 %26), !dbg !1189
  %28 = icmp ne i32 %27, 0, !dbg !1191
  br i1 %28, label %29, label %32, !dbg !1192

; <label>:29:                                     ; preds = %3
  %30 = load i32, i32* %9, align 4, !dbg !1193
  %31 = or i32 %30, 33554432, !dbg !1193
  store i32 %31, i32* %9, align 4, !dbg !1193
  br label %32, !dbg !1194

; <label>:32:                                     ; preds = %29, %3
  %33 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %4, align 8, !dbg !1195
  %34 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %33, i32 0, i32 3, !dbg !1197
  %35 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %34, align 8, !dbg !1197
  %36 = bitcast %struct._IRC_SERVER_REC* %35 to i8*, !dbg !1195
  %37 = call i8* @module_check_cast(i8* %36, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0)), !dbg !1198
  %38 = bitcast i8* %37 to %struct._SERVER_REC*, !dbg !1199
  %39 = load i8*, i8** %8, align 8, !dbg !1200
  %40 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %4, align 8, !dbg !1201
  %41 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %40, i32 0, i32 11, !dbg !1202
  %42 = getelementptr inbounds [46 x i8], [46 x i8]* %41, i32 0, i32 0, !dbg !1201
  %43 = load i8*, i8** %5, align 8, !dbg !1203
  %44 = load i32, i32* %9, align 4, !dbg !1204
  %45 = or i32 %44, 268435456, !dbg !1205
  %46 = call i32 @ignore_check(%struct._SERVER_REC* %38, i8* %39, i8* %42, i8* null, i8* %43, i32 %45), !dbg !1206
  %47 = icmp ne i32 %46, 0, !dbg !1208
  br i1 %47, label %48, label %51, !dbg !1209

; <label>:48:                                     ; preds = %32
  %49 = load i32, i32* %9, align 4, !dbg !1210
  %50 = or i32 %49, 268435456, !dbg !1210
  store i32 %50, i32* %9, align 4, !dbg !1210
  br label %51, !dbg !1211

; <label>:51:                                     ; preds = %48, %32
  %52 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %4, align 8, !dbg !1212
  %53 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %52, i32 0, i32 3, !dbg !1213
  %54 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %53, align 8, !dbg !1213
  %55 = bitcast %struct._IRC_SERVER_REC* %54 to i8*, !dbg !1212
  %56 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %4, align 8, !dbg !1214
  %57 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %56, i32 0, i32 4, !dbg !1215
  %58 = load i8*, i8** %57, align 8, !dbg !1215
  %59 = load i8*, i8** %8, align 8, !dbg !1216
  %60 = load i32, i32* %9, align 4, !dbg !1217
  call void @format_create_dest_tag(%struct._TEXT_DEST_REC* %7, i8* %55, i8* %58, i8* %59, i32 %60, %struct._WINDOW_REC* null), !dbg !1218
  %61 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %4, align 8, !dbg !1219
  %62 = getelementptr inbounds %struct.CHAT_DCC_REC, %struct.CHAT_DCC_REC* %61, i32 0, i32 22, !dbg !1220
  %63 = load i8*, i8** %62, align 8, !dbg !1220
  %64 = load i8*, i8** %5, align 8, !dbg !1221
  %65 = load i8*, i8** %6, align 8, !dbg !1222
  call void (i8*, %struct._TEXT_DEST_REC*, i32, ...) @printformat_module_dest(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), %struct._TEXT_DEST_REC* %7, i32 11, i8* %63, i8* %64, i8* %65), !dbg !1223
  %66 = load i8*, i8** %8, align 8, !dbg !1224
  call void @g_free(i8* %66), !dbg !1225
  ret void, !dbg !1226
}

; Function Attrs: nounwind uwtable
define void @fe_dcc_chat_messages_deinit() #0 !dbg !1227 {
  call void @signal_remove_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.CHAT_DCC_REC*, i8*)* @sig_message_dcc_own to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1228
  call void @signal_remove_full(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.CHAT_DCC_REC*, i8*)* @sig_message_dcc_own_action to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1229
  call void @signal_remove_full(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.CHAT_DCC_REC*, i8*, i8*)* @sig_message_dcc_own_ctcp to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1230
  call void @signal_remove_full(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.CHAT_DCC_REC*, i8*)* @sig_message_dcc to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1231
  call void @signal_remove_full(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.CHAT_DCC_REC*, i8*)* @sig_message_dcc_action to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1232
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.CHAT_DCC_REC*, i8*, i8*)* @sig_message_dcc_ctcp to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1233
  ret void, !dbg !1234
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare noalias i8* @g_strconcat(i8*, ...) #1

declare %struct._QUERY_REC* @query_find(%struct._SERVER_REC*, i8*) #1

declare void @format_create_dest_tag(%struct._TEXT_DEST_REC*, i8*, i8*, i8*, i32, %struct._WINDOW_REC*) #1

declare void @printformat_module_dest(i8*, %struct._TEXT_DEST_REC*, i32, ...) #1

declare void @g_free(i8*) #1

declare i32 @ignore_check(%struct._SERVER_REC*, i8*, i8*, i8*, i8*, i32) #1

declare i8* @module_check_cast(i8*, i32, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!600, !601}
!llvm.ident = !{!602}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !118)
!1 = !DIFile(filename: "line278-fe-dcc-chat-messages.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!118 = !{!119, !126, !127}
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !120, line: 9, baseType: !121)
!120 = !DIFile(filename: "../../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{null, !124, !124, !124, !124, !124, !124}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !129, line: 107, baseType: !130)
!129 = !DIFile(filename: "../../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !131, line: 30, size: 2240, align: 64, elements: !132)
!131 = !DIFile(filename: "../../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!132 = !{!133, !136, !137, !138, !399, !404, !405, !406, !407, !408, !409, !410, !411, !412, !416, !417, !421, !422, !423, !427, !432, !433, !434, !435, !436, !437, !438, !439, !446, !447, !448, !449, !450, !456, !460, !464, !468, !472, !477, !568, !595, !599}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !130, file: !134, line: 3, baseType: !135, size: 32, align: 32)
!134 = !DIFile(filename: "../../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!135 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !130, file: !134, line: 4, baseType: !135, size: 32, align: 32, offset: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !130, file: !134, line: 6, baseType: !135, size: 32, align: 32, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !130, file: !134, line: 8, baseType: !139, size: 64, align: 64, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !129, line: 113, baseType: !141)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !131, line: 25, size: 1920, align: 64, elements: !142)
!142 = !{!143, !145, !146, !147, !150, !151, !152, !153, !154, !156, !157, !158, !159, !160, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !141, file: !144, line: 3, baseType: !135, size: 32, align: 32)
!144 = !DIFile(filename: "../../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!145 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !141, file: !144, line: 4, baseType: !135, size: 32, align: 32, offset: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !141, file: !144, line: 6, baseType: !135, size: 32, align: 32, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !141, file: !144, line: 9, baseType: !148, size: 64, align: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!149 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !141, file: !144, line: 10, baseType: !135, size: 32, align: 32, offset: 192)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !141, file: !144, line: 11, baseType: !148, size: 64, align: 64, offset: 256)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !141, file: !144, line: 11, baseType: !148, size: 64, align: 64, offset: 320)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !141, file: !144, line: 11, baseType: !148, size: 64, align: 64, offset: 384)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !141, file: !144, line: 13, baseType: !155, size: 16, align: 16, offset: 448)
!155 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !141, file: !144, line: 14, baseType: !148, size: 64, align: 64, offset: 512)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !141, file: !144, line: 15, baseType: !148, size: 64, align: 64, offset: 576)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !141, file: !144, line: 16, baseType: !135, size: 32, align: 32, offset: 640)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !141, file: !144, line: 17, baseType: !148, size: 64, align: 64, offset: 704)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !141, file: !144, line: 19, baseType: !161, size: 64, align: 64, offset: 768)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64, align: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !129, line: 99, baseType: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !164, line: 22, size: 160, align: 32, elements: !165)
!164 = !DIFile(filename: "../../../../src/core/network.h", directory: "/home/lichi/Desktop/irssi/task1")
!165 = !{!166, !167}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !163, file: !164, line: 23, baseType: !155, size: 16, align: 16)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !163, file: !164, line: 24, baseType: !168, size: 128, align: 32, offset: 32)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !169, line: 211, size: 128, align: 32, elements: !170)
!169 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/irssi/task1")
!170 = !{!171}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !168, file: !169, line: 220, baseType: !172, size: 128, align: 32)
!172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !168, file: !169, line: 213, size: 128, align: 32, elements: !173)
!173 = !{!174, !181, !186}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !172, file: !169, line: 215, baseType: !175, size: 128, align: 8)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 128, align: 8, elements: !179)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !177, line: 48, baseType: !178)
!177 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/irssi/task1")
!178 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!179 = !{!180}
!180 = !DISubrange(count: 16)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !172, file: !169, line: 217, baseType: !182, size: 128, align: 16)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 128, align: 16, elements: !184)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !177, line: 49, baseType: !155)
!184 = !{!185}
!185 = !DISubrange(count: 8)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !172, file: !169, line: 218, baseType: !187, size: 128, align: 32)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 128, align: 32, elements: !190)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !177, line: 51, baseType: !189)
!189 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!190 = !{!191}
!191 = !DISubrange(count: 4)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !141, file: !144, line: 19, baseType: !161, size: 64, align: 64, offset: 832)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !141, file: !144, line: 21, baseType: !148, size: 64, align: 64, offset: 896)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !141, file: !144, line: 22, baseType: !148, size: 64, align: 64, offset: 960)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !141, file: !144, line: 23, baseType: !148, size: 64, align: 64, offset: 1024)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !141, file: !144, line: 24, baseType: !148, size: 64, align: 64, offset: 1088)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !141, file: !144, line: 26, baseType: !148, size: 64, align: 64, offset: 1152)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !141, file: !144, line: 27, baseType: !148, size: 64, align: 64, offset: 1216)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !141, file: !144, line: 28, baseType: !148, size: 64, align: 64, offset: 1280)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !141, file: !144, line: 29, baseType: !148, size: 64, align: 64, offset: 1344)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !141, file: !144, line: 30, baseType: !148, size: 64, align: 64, offset: 1408)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !141, file: !144, line: 31, baseType: !148, size: 64, align: 64, offset: 1472)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !141, file: !144, line: 32, baseType: !148, size: 64, align: 64, offset: 1536)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !141, file: !144, line: 33, baseType: !148, size: 64, align: 64, offset: 1600)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !141, file: !144, line: 35, baseType: !206, size: 64, align: 64, offset: 1664)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !208)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !209)
!209 = !{!210, !213, !356, !357, !362, !363, !364, !365, !366, !375, !376, !377, !381, !382, !383, !384, !385, !386, !387, !388}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !208, file: !4, line: 100, baseType: !211, size: 32, align: 32)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !212, line: 49, baseType: !135)
!212 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!213 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !208, file: !4, line: 101, baseType: !214, size: 64, align: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64, align: 64)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !216)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !217)
!217 = !{!218, !241, !247, !254, !258, !343, !347, !352}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !216, file: !4, line: 133, baseType: !219, size: 64, align: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64, align: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!222, !206, !223, !225, !228, !229}
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, align: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !212, line: 46, baseType: !149)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !226, line: 66, baseType: !227)
!226 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!227 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64, align: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !232, line: 42, baseType: !233)
!232 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !232, line: 44, size: 128, align: 64, elements: !234)
!234 = !{!235, !239, !240}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !233, file: !232, line: 46, baseType: !236, size: 32, align: 32)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !237, line: 36, baseType: !238)
!237 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !226, line: 45, baseType: !189)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !233, file: !232, line: 47, baseType: !211, size: 32, align: 32, offset: 32)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !233, file: !232, line: 48, baseType: !223, size: 64, align: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !216, file: !4, line: 138, baseType: !242, size: 64, align: 64, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!222, !206, !245, !225, !228, !229}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !216, file: !4, line: 143, baseType: !248, size: 64, align: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64, align: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!222, !206, !251, !253, !229}
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !226, line: 51, baseType: !252)
!252 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !216, file: !4, line: 147, baseType: !255, size: 64, align: 64, offset: 192)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64, align: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{!222, !206, !229}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !216, file: !4, line: 149, baseType: !259, size: 64, align: 64, offset: 256)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{!262, !206, !342}
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64, align: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !264)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !265)
!265 = !{!266, !268, !289, !318, !320, !324, !325, !326, !327, !335, !336, !337, !338}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !264, file: !16, line: 174, baseType: !267, size: 64, align: 64)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !212, line: 77, baseType: !126)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !264, file: !16, line: 175, baseType: !269, size: 64, align: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64, align: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !271)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !272)
!272 = !{!273, !277, !278}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !271, file: !16, line: 198, baseType: !274, size: 64, align: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64, align: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{null, !267}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !271, file: !16, line: 199, baseType: !274, size: 64, align: 64, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !271, file: !16, line: 200, baseType: !279, size: 64, align: 64, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{null, !267, !262, !282, !288}
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64, align: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64, align: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{!287, !267}
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !212, line: 50, baseType: !211)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !264, file: !16, line: 177, baseType: !290, size: 64, align: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64, align: 64)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !293)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !294)
!294 = !{!295, !300, !304, !308, !312, !313}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !293, file: !16, line: 216, baseType: !296, size: 64, align: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64, align: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!287, !262, !299}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !293, file: !16, line: 218, baseType: !301, size: 64, align: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64, align: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!287, !262}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !293, file: !16, line: 219, baseType: !305, size: 64, align: 64, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64, align: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!287, !262, !283, !267}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !293, file: !16, line: 222, baseType: !309, size: 64, align: 64, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64, align: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !262}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !293, file: !16, line: 226, baseType: !283, size: 64, align: 64, offset: 256)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !293, file: !16, line: 227, baseType: !314, size: 64, align: 64, offset: 320)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64, align: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{null}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !264, file: !16, line: 178, baseType: !319, size: 32, align: 32, offset: 192)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !212, line: 55, baseType: !189)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !264, file: !16, line: 180, baseType: !321, size: 64, align: 64, offset: 256)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64, align: 64)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !323)
!323 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !264, file: !16, line: 182, baseType: !211, size: 32, align: 32, offset: 320)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !264, file: !16, line: 183, baseType: !319, size: 32, align: 32, offset: 352)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !264, file: !16, line: 184, baseType: !319, size: 32, align: 32, offset: 384)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !264, file: !16, line: 186, baseType: !328, size: 64, align: 64, offset: 448)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64, align: 64)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !330, line: 37, baseType: !331)
!330 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !330, line: 39, size: 128, align: 64, elements: !332)
!332 = !{!333, !334}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !331, file: !330, line: 41, baseType: !267, size: 64, align: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !331, file: !330, line: 42, baseType: !328, size: 64, align: 64, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !264, file: !16, line: 188, baseType: !262, size: 64, align: 64, offset: 512)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !264, file: !16, line: 189, baseType: !262, size: 64, align: 64, offset: 576)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !264, file: !16, line: 191, baseType: !148, size: 64, align: 64, offset: 640)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !264, file: !16, line: 193, baseType: !339, size: 64, align: 64, offset: 704)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64, align: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !341)
!341 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !216, file: !4, line: 151, baseType: !344, size: 64, align: 64, offset: 320)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64, align: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !206}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !216, file: !4, line: 152, baseType: !348, size: 64, align: 64, offset: 384)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64, align: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{!222, !206, !351, !229}
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !216, file: !4, line: 155, baseType: !353, size: 64, align: 64, offset: 448)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64, align: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{!351, !206}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !208, file: !4, line: 103, baseType: !223, size: 64, align: 64, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !208, file: !4, line: 104, baseType: !358, size: 64, align: 64, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !359, line: 77, baseType: !360)
!359 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!361 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !359, line: 77, flags: DIFlagFwdDecl)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !208, file: !4, line: 105, baseType: !358, size: 64, align: 64, offset: 256)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !208, file: !4, line: 106, baseType: !223, size: 64, align: 64, offset: 320)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !208, file: !4, line: 107, baseType: !319, size: 32, align: 32, offset: 384)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !208, file: !4, line: 109, baseType: !225, size: 64, align: 64, offset: 448)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !208, file: !4, line: 110, baseType: !367, size: 64, align: 64, offset: 512)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64, align: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !369, line: 39, baseType: !370)
!369 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !369, line: 41, size: 192, align: 64, elements: !371)
!371 = !{!372, !373, !374}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !370, file: !369, line: 43, baseType: !223, size: 64, align: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !370, file: !369, line: 44, baseType: !225, size: 64, align: 64, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !370, file: !369, line: 45, baseType: !225, size: 64, align: 64, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !208, file: !4, line: 111, baseType: !367, size: 64, align: 64, offset: 576)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !208, file: !4, line: 112, baseType: !367, size: 64, align: 64, offset: 640)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !208, file: !4, line: 113, baseType: !378, size: 48, align: 8, offset: 704)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 48, align: 8, elements: !379)
!379 = !{!380}
!380 = !DISubrange(count: 6)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !208, file: !4, line: 117, baseType: !319, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !208, file: !4, line: 118, baseType: !319, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !208, file: !4, line: 119, baseType: !319, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !208, file: !4, line: 120, baseType: !319, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !208, file: !4, line: 121, baseType: !319, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !208, file: !4, line: 122, baseType: !319, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !208, file: !4, line: 124, baseType: !267, size: 64, align: 64, offset: 768)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !208, file: !4, line: 125, baseType: !267, size: 64, align: 64, offset: 832)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !141, file: !144, line: 38, baseType: !189, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !141, file: !144, line: 39, baseType: !189, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !141, file: !144, line: 40, baseType: !189, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !141, file: !144, line: 41, baseType: !189, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !141, file: !144, line: 42, baseType: !189, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !141, file: !144, line: 43, baseType: !189, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !141, file: !144, line: 44, baseType: !189, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !141, file: !144, line: 45, baseType: !189, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !141, file: !144, line: 46, baseType: !148, size: 64, align: 64, offset: 1792)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !141, file: !144, line: 47, baseType: !148, size: 64, align: 64, offset: 1856)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !130, file: !134, line: 9, baseType: !400, size: 64, align: 64, offset: 192)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !401, line: 75, baseType: !402)
!401 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !403, line: 139, baseType: !252)
!403 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!404 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !130, file: !134, line: 10, baseType: !400, size: 64, align: 64, offset: 256)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !130, file: !134, line: 12, baseType: !148, size: 64, align: 64, offset: 320)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !130, file: !134, line: 13, baseType: !148, size: 64, align: 64, offset: 384)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !130, file: !134, line: 15, baseType: !189, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !130, file: !134, line: 16, baseType: !189, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !130, file: !134, line: 17, baseType: !189, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !130, file: !134, line: 18, baseType: !189, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !130, file: !134, line: 19, baseType: !189, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !130, file: !134, line: 21, baseType: !413, size: 64, align: 64, offset: 512)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64, align: 64)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !129, line: 102, baseType: !415)
!415 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !129, line: 102, flags: DIFlagFwdDecl)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !130, file: !134, line: 22, baseType: !135, size: 32, align: 32, offset: 576)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !130, file: !134, line: 25, baseType: !418, size: 128, align: 64, offset: 640)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 128, align: 64, elements: !419)
!419 = !{!420}
!420 = !DISubrange(count: 2)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !130, file: !134, line: 26, baseType: !135, size: 32, align: 32, offset: 768)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !130, file: !134, line: 27, baseType: !135, size: 32, align: 32, offset: 800)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !130, file: !134, line: 29, baseType: !424, size: 64, align: 64, offset: 832)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64, align: 64)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !129, line: 103, baseType: !426)
!426 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !129, line: 103, flags: DIFlagFwdDecl)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !130, file: !134, line: 30, baseType: !428, size: 64, align: 64, offset: 896)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64, align: 64)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !430, line: 37, baseType: !431)
!430 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!431 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !430, line: 37, flags: DIFlagFwdDecl)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !130, file: !134, line: 32, baseType: !148, size: 64, align: 64, offset: 960)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !130, file: !134, line: 33, baseType: !148, size: 64, align: 64, offset: 1024)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !130, file: !134, line: 34, baseType: !148, size: 64, align: 64, offset: 1088)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !130, file: !134, line: 35, baseType: !189, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !130, file: !134, line: 36, baseType: !189, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !130, file: !134, line: 37, baseType: !189, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !130, file: !134, line: 38, baseType: !189, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !130, file: !134, line: 40, baseType: !440, size: 128, align: 64, offset: 1216)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !212, line: 504, baseType: !441)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !212, line: 506, size: 128, align: 64, elements: !442)
!442 = !{!443, !445}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !441, file: !212, line: 508, baseType: !444, size: 64, align: 64)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !212, line: 48, baseType: !252)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !441, file: !212, line: 509, baseType: !444, size: 64, align: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !130, file: !134, line: 41, baseType: !400, size: 64, align: 64, offset: 1344)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !130, file: !134, line: 42, baseType: !135, size: 32, align: 32, offset: 1408)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !130, file: !134, line: 44, baseType: !328, size: 64, align: 64, offset: 1472)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !130, file: !134, line: 45, baseType: !328, size: 64, align: 64, offset: 1536)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !130, file: !134, line: 53, baseType: !451, size: 64, align: 64, offset: 1600)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64, align: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !127, !454, !135}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64, align: 64)
!455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !130, file: !134, line: 55, baseType: !457, size: 64, align: 64, offset: 1664)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64, align: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!135, !127, !149}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !130, file: !134, line: 57, baseType: !461, size: 64, align: 64, offset: 1728)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64, align: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!135, !127, !454}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !130, file: !134, line: 60, baseType: !465, size: 64, align: 64, offset: 1792)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64, align: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!454, !127}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !130, file: !134, line: 62, baseType: !469, size: 64, align: 64, offset: 1856)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64, align: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{null, !127, !454, !454, !135}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !130, file: !134, line: 65, baseType: !473, size: 64, align: 64, offset: 1920)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64, align: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!476, !127, !454, !454}
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, align: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !130, file: !134, line: 69, baseType: !478, size: 64, align: 64, offset: 1984)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64, align: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{!481, !127, !454}
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64, align: 64)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !129, line: 109, baseType: !483)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !484, line: 15, size: 1408, align: 64, elements: !485)
!484 = !DIFile(filename: "../../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!485 = !{!486, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !521, !522, !524, !525, !526, !527, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !483, file: !487, line: 3, baseType: !135, size: 32, align: 32)
!487 = !DIFile(filename: "../../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!488 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !483, file: !487, line: 4, baseType: !135, size: 32, align: 32, offset: 32)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !483, file: !487, line: 5, baseType: !428, size: 64, align: 64, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !483, file: !487, line: 7, baseType: !126, size: 64, align: 64, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !483, file: !487, line: 8, baseType: !127, size: 64, align: 64, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !483, file: !487, line: 9, baseType: !148, size: 64, align: 64, offset: 256)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !483, file: !487, line: 10, baseType: !148, size: 64, align: 64, offset: 320)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !483, file: !487, line: 11, baseType: !400, size: 64, align: 64, offset: 384)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !483, file: !487, line: 12, baseType: !135, size: 32, align: 32, offset: 448)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !483, file: !487, line: 13, baseType: !148, size: 64, align: 64, offset: 512)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !483, file: !487, line: 15, baseType: !498, size: 64, align: 64, offset: 576)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64, align: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{null, !501}
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64, align: 64)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !129, line: 108, baseType: !503)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !504, line: 5, size: 704, align: 64, elements: !505)
!504 = !DIFile(filename: "../../../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!505 = !{!506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !503, file: !487, line: 3, baseType: !135, size: 32, align: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !503, file: !487, line: 4, baseType: !135, size: 32, align: 32, offset: 32)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !503, file: !487, line: 5, baseType: !428, size: 64, align: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !503, file: !487, line: 7, baseType: !126, size: 64, align: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !503, file: !487, line: 8, baseType: !127, size: 64, align: 64, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !503, file: !487, line: 9, baseType: !148, size: 64, align: 64, offset: 256)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !503, file: !487, line: 10, baseType: !148, size: 64, align: 64, offset: 320)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !503, file: !487, line: 11, baseType: !400, size: 64, align: 64, offset: 384)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !503, file: !487, line: 12, baseType: !135, size: 32, align: 32, offset: 448)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !503, file: !487, line: 13, baseType: !148, size: 64, align: 64, offset: 512)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !503, file: !487, line: 15, baseType: !498, size: 64, align: 64, offset: 576)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !503, file: !487, line: 17, baseType: !518, size: 64, align: 64, offset: 640)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64, align: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!454, !501}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !483, file: !487, line: 17, baseType: !518, size: 64, align: 64, offset: 640)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !483, file: !523, line: 5, baseType: !148, size: 64, align: 64, offset: 704)
!523 = !DIFile(filename: "../../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!524 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !483, file: !523, line: 6, baseType: !148, size: 64, align: 64, offset: 768)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !483, file: !523, line: 7, baseType: !400, size: 64, align: 64, offset: 832)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !483, file: !523, line: 9, baseType: !428, size: 64, align: 64, offset: 896)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !483, file: !523, line: 10, baseType: !528, size: 64, align: 64, offset: 960)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64, align: 64)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !129, line: 111, baseType: !530)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !531, line: 13, size: 576, align: 64, elements: !532)
!531 = !DIFile(filename: "../../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!532 = !{!533, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !549, !550}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !530, file: !534, line: 3, baseType: !135, size: 32, align: 32)
!534 = !DIFile(filename: "../../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!535 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !530, file: !534, line: 4, baseType: !135, size: 32, align: 32, offset: 32)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !530, file: !534, line: 6, baseType: !400, size: 64, align: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !530, file: !534, line: 8, baseType: !148, size: 64, align: 64, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !530, file: !534, line: 9, baseType: !148, size: 64, align: 64, offset: 192)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !530, file: !534, line: 10, baseType: !148, size: 64, align: 64, offset: 256)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !530, file: !534, line: 11, baseType: !135, size: 32, align: 32, offset: 320)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !530, file: !534, line: 14, baseType: !189, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !530, file: !534, line: 15, baseType: !189, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !530, file: !534, line: 18, baseType: !189, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !530, file: !534, line: 19, baseType: !189, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !530, file: !534, line: 20, baseType: !189, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !530, file: !534, line: 21, baseType: !189, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !530, file: !534, line: 22, baseType: !548, size: 64, align: 8, offset: 360)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 64, align: 8, elements: !184)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !530, file: !534, line: 26, baseType: !126, size: 64, align: 64, offset: 448)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !530, file: !534, line: 28, baseType: !528, size: 64, align: 64, offset: 512)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !483, file: !523, line: 12, baseType: !189, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !483, file: !523, line: 13, baseType: !148, size: 64, align: 64, offset: 1088)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !483, file: !523, line: 14, baseType: !135, size: 32, align: 32, offset: 1152)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !483, file: !523, line: 15, baseType: !148, size: 64, align: 64, offset: 1216)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !483, file: !523, line: 17, baseType: !189, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !483, file: !523, line: 18, baseType: !189, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !483, file: !523, line: 19, baseType: !189, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !483, file: !523, line: 20, baseType: !189, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !483, file: !523, line: 22, baseType: !189, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !483, file: !523, line: 23, baseType: !189, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !483, file: !523, line: 24, baseType: !189, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !483, file: !523, line: 25, baseType: !189, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !483, file: !523, line: 26, baseType: !189, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !483, file: !523, line: 31, baseType: !565, size: 64, align: 64, offset: 1344)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64, align: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{!148, !481}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !130, file: !134, line: 70, baseType: !569, size: 64, align: 64, offset: 2048)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64, align: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{!572, !127, !454}
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64, align: 64)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !129, line: 110, baseType: !574)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !575, line: 15, size: 960, align: 64, elements: !576)
!575 = !DIFile(filename: "../../../../src/core/queries.h", directory: "/home/lichi/Desktop/irssi/task1")
!576 = !{!577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !591, !592, !593, !594}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !574, file: !487, line: 3, baseType: !135, size: 32, align: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !574, file: !487, line: 4, baseType: !135, size: 32, align: 32, offset: 32)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !574, file: !487, line: 5, baseType: !428, size: 64, align: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !574, file: !487, line: 7, baseType: !126, size: 64, align: 64, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !574, file: !487, line: 8, baseType: !127, size: 64, align: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !574, file: !487, line: 9, baseType: !148, size: 64, align: 64, offset: 256)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !574, file: !487, line: 10, baseType: !148, size: 64, align: 64, offset: 320)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !574, file: !487, line: 11, baseType: !400, size: 64, align: 64, offset: 384)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !574, file: !487, line: 12, baseType: !135, size: 32, align: 32, offset: 448)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !574, file: !487, line: 13, baseType: !148, size: 64, align: 64, offset: 512)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !574, file: !487, line: 15, baseType: !498, size: 64, align: 64, offset: 576)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !574, file: !487, line: 17, baseType: !518, size: 64, align: 64, offset: 640)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !574, file: !590, line: 5, baseType: !148, size: 64, align: 64, offset: 704)
!590 = !DIFile(filename: "../../../../src/core/query-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!591 = !DIDerivedType(tag: DW_TAG_member, name: "server_tag", scope: !574, file: !590, line: 6, baseType: !148, size: 64, align: 64, offset: 768)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "last_unread_msg", scope: !574, file: !590, line: 7, baseType: !400, size: 64, align: 64, offset: 832)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "unwanted", scope: !574, file: !590, line: 9, baseType: !189, size: 1, align: 32, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !574, file: !590, line: 11, baseType: !189, size: 1, align: 32, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !130, file: !134, line: 71, baseType: !596, size: 64, align: 64, offset: 2112)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64, align: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{!135, !454, !454}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !130, file: !134, line: 73, baseType: !596, size: 64, align: 64, offset: 2176)
!600 = !{i32 2, !"Dwarf Version", i32 4}
!601 = !{i32 2, !"Debug Info Version", i32 3}
!602 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!603 = distinct !DISubprogram(name: "fe_dcc_chat_messages_init", scope: !604, file: !604, line: 161, type: !316, isLocal: false, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !605)
!604 = !DIFile(filename: "fe-dcc-chat-messages.c", directory: "/home/lichi/Desktop/irssi/task1")
!605 = !{}
!606 = !DILocation(line: 163, column: 9, scope: !603)
!607 = !DILocation(line: 164, column: 9, scope: !603)
!608 = !DILocation(line: 165, column: 9, scope: !603)
!609 = !DILocation(line: 166, column: 9, scope: !603)
!610 = !DILocation(line: 167, column: 9, scope: !603)
!611 = !DILocation(line: 168, column: 9, scope: !603)
!612 = !DILocation(line: 169, column: 1, scope: !603)
!613 = distinct !DISubprogram(name: "sig_message_dcc_own", scope: !604, file: !604, line: 33, type: !614, isLocal: true, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !605)
!614 = !DISubroutineType(types: !615)
!615 = !{null, !616, !454}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64, align: 64)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAT_DCC_REC", file: !618, line: 9, baseType: !619)
!618 = !DIFile(filename: "../../../../src/irc/dcc/dcc.h", directory: "/home/lichi/Desktop/irssi/task1")
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CHAT_DCC_REC", file: !620, line: 12, size: 1792, align: 64, elements: !621)
!620 = !DIFile(filename: "../../../../src/irc/dcc/dcc-chat.h", directory: "/home/lichi/Desktop/irssi/task1")
!621 = !{!622, !624, !625, !626, !835, !836, !837, !838, !839, !840, !841, !842, !846, !847, !848, !849, !850, !851, !852, !854, !855, !856, !857, !858, !859, !860}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !619, file: !623, line: 1, baseType: !135, size: 32, align: 32)
!623 = !DIFile(filename: "../../../../src/irc/dcc/dcc-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!624 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !619, file: !623, line: 2, baseType: !135, size: 32, align: 32, offset: 32)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "created", scope: !619, file: !623, line: 3, baseType: !400, size: 64, align: 64, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !619, file: !623, line: 5, baseType: !627, size: 64, align: 64, offset: 128)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64, align: 64)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !629, line: 6, baseType: !630)
!629 = !DIFile(filename: "../../../../src/irc/core/irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !631, line: 42, size: 39168, align: 64, elements: !632)
!631 = !DIFile(filename: "../../../../src/irc/core/irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!632 = !{!633, !634, !635, !636, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !832, !834}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !630, file: !134, line: 3, baseType: !135, size: 32, align: 32)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !630, file: !134, line: 4, baseType: !135, size: 32, align: 32, offset: 32)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !630, file: !134, line: 6, baseType: !135, size: 32, align: 32, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !630, file: !134, line: 8, baseType: !637, size: 64, align: 64, offset: 128)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64, align: 64)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !629, line: 5, baseType: !639)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !631, line: 24, size: 2496, align: 64, elements: !640)
!640 = !{!641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !639, file: !144, line: 3, baseType: !135, size: 32, align: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !639, file: !144, line: 4, baseType: !135, size: 32, align: 32, offset: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !639, file: !144, line: 6, baseType: !135, size: 32, align: 32, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !639, file: !144, line: 9, baseType: !148, size: 64, align: 64, offset: 128)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !639, file: !144, line: 10, baseType: !135, size: 32, align: 32, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !639, file: !144, line: 11, baseType: !148, size: 64, align: 64, offset: 256)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !639, file: !144, line: 11, baseType: !148, size: 64, align: 64, offset: 320)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !639, file: !144, line: 11, baseType: !148, size: 64, align: 64, offset: 384)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !639, file: !144, line: 13, baseType: !155, size: 16, align: 16, offset: 448)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !639, file: !144, line: 14, baseType: !148, size: 64, align: 64, offset: 512)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !639, file: !144, line: 15, baseType: !148, size: 64, align: 64, offset: 576)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !639, file: !144, line: 16, baseType: !135, size: 32, align: 32, offset: 640)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !639, file: !144, line: 17, baseType: !148, size: 64, align: 64, offset: 704)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !639, file: !144, line: 19, baseType: !161, size: 64, align: 64, offset: 768)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !639, file: !144, line: 19, baseType: !161, size: 64, align: 64, offset: 832)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !639, file: !144, line: 21, baseType: !148, size: 64, align: 64, offset: 896)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !639, file: !144, line: 22, baseType: !148, size: 64, align: 64, offset: 960)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !639, file: !144, line: 23, baseType: !148, size: 64, align: 64, offset: 1024)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !639, file: !144, line: 24, baseType: !148, size: 64, align: 64, offset: 1088)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !639, file: !144, line: 26, baseType: !148, size: 64, align: 64, offset: 1152)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !639, file: !144, line: 27, baseType: !148, size: 64, align: 64, offset: 1216)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !639, file: !144, line: 28, baseType: !148, size: 64, align: 64, offset: 1280)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !639, file: !144, line: 29, baseType: !148, size: 64, align: 64, offset: 1344)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !639, file: !144, line: 30, baseType: !148, size: 64, align: 64, offset: 1408)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !639, file: !144, line: 31, baseType: !148, size: 64, align: 64, offset: 1472)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !639, file: !144, line: 32, baseType: !148, size: 64, align: 64, offset: 1536)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !639, file: !144, line: 33, baseType: !148, size: 64, align: 64, offset: 1600)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !639, file: !144, line: 35, baseType: !206, size: 64, align: 64, offset: 1664)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !639, file: !144, line: 38, baseType: !189, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !639, file: !144, line: 39, baseType: !189, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !639, file: !144, line: 40, baseType: !189, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !639, file: !144, line: 41, baseType: !189, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !639, file: !144, line: 42, baseType: !189, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !639, file: !144, line: 43, baseType: !189, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !639, file: !144, line: 44, baseType: !189, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !639, file: !144, line: 45, baseType: !189, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !639, file: !144, line: 46, baseType: !148, size: 64, align: 64, offset: 1792)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !639, file: !144, line: 47, baseType: !148, size: 64, align: 64, offset: 1856)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !639, file: !631, line: 27, baseType: !148, size: 64, align: 64, offset: 1920)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !639, file: !631, line: 28, baseType: !148, size: 64, align: 64, offset: 1984)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !639, file: !631, line: 30, baseType: !135, size: 32, align: 32, offset: 2048)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !639, file: !631, line: 31, baseType: !148, size: 64, align: 64, offset: 2112)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !639, file: !631, line: 32, baseType: !148, size: 64, align: 64, offset: 2176)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !639, file: !631, line: 34, baseType: !135, size: 32, align: 32, offset: 2240)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !639, file: !631, line: 35, baseType: !135, size: 32, align: 32, offset: 2272)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !639, file: !631, line: 36, baseType: !135, size: 32, align: 32, offset: 2304)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !639, file: !631, line: 38, baseType: !135, size: 32, align: 32, offset: 2336)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !639, file: !631, line: 38, baseType: !135, size: 32, align: 32, offset: 2368)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !639, file: !631, line: 38, baseType: !135, size: 32, align: 32, offset: 2400)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !639, file: !631, line: 38, baseType: !135, size: 32, align: 32, offset: 2432)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !630, file: !134, line: 9, baseType: !400, size: 64, align: 64, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !630, file: !134, line: 10, baseType: !400, size: 64, align: 64, offset: 256)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !630, file: !134, line: 12, baseType: !148, size: 64, align: 64, offset: 320)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !630, file: !134, line: 13, baseType: !148, size: 64, align: 64, offset: 384)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !630, file: !134, line: 15, baseType: !189, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !630, file: !134, line: 16, baseType: !189, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !630, file: !134, line: 17, baseType: !189, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !630, file: !134, line: 18, baseType: !189, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !630, file: !134, line: 19, baseType: !189, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !630, file: !134, line: 21, baseType: !413, size: 64, align: 64, offset: 512)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !630, file: !134, line: 22, baseType: !135, size: 32, align: 32, offset: 576)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !630, file: !134, line: 25, baseType: !418, size: 128, align: 64, offset: 640)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !630, file: !134, line: 26, baseType: !135, size: 32, align: 32, offset: 768)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !630, file: !134, line: 27, baseType: !135, size: 32, align: 32, offset: 800)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !630, file: !134, line: 29, baseType: !424, size: 64, align: 64, offset: 832)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !630, file: !134, line: 30, baseType: !428, size: 64, align: 64, offset: 896)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !630, file: !134, line: 32, baseType: !148, size: 64, align: 64, offset: 960)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !630, file: !134, line: 33, baseType: !148, size: 64, align: 64, offset: 1024)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !630, file: !134, line: 34, baseType: !148, size: 64, align: 64, offset: 1088)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !630, file: !134, line: 35, baseType: !189, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !630, file: !134, line: 36, baseType: !189, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !630, file: !134, line: 37, baseType: !189, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !630, file: !134, line: 38, baseType: !189, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !630, file: !134, line: 40, baseType: !440, size: 128, align: 64, offset: 1216)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !630, file: !134, line: 41, baseType: !400, size: 64, align: 64, offset: 1344)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !630, file: !134, line: 42, baseType: !135, size: 32, align: 32, offset: 1408)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !630, file: !134, line: 44, baseType: !328, size: 64, align: 64, offset: 1472)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !630, file: !134, line: 45, baseType: !328, size: 64, align: 64, offset: 1536)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !630, file: !134, line: 53, baseType: !451, size: 64, align: 64, offset: 1600)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !630, file: !134, line: 55, baseType: !457, size: 64, align: 64, offset: 1664)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !630, file: !134, line: 57, baseType: !461, size: 64, align: 64, offset: 1728)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !630, file: !134, line: 60, baseType: !465, size: 64, align: 64, offset: 1792)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !630, file: !134, line: 62, baseType: !469, size: 64, align: 64, offset: 1856)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !630, file: !134, line: 65, baseType: !473, size: 64, align: 64, offset: 1920)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !630, file: !134, line: 69, baseType: !478, size: 64, align: 64, offset: 1984)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !630, file: !134, line: 70, baseType: !569, size: 64, align: 64, offset: 2048)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !630, file: !134, line: 71, baseType: !596, size: 64, align: 64, offset: 2112)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !630, file: !134, line: 73, baseType: !596, size: 64, align: 64, offset: 2176)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !630, file: !631, line: 46, baseType: !328, size: 64, align: 64, offset: 2240)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !630, file: !631, line: 47, baseType: !328, size: 64, align: 64, offset: 2304)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !630, file: !631, line: 48, baseType: !732, size: 64, align: 64, offset: 2368)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64, align: 64)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !629, line: 8, baseType: !734)
!734 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !629, line: 8, flags: DIFlagFwdDecl)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !630, file: !631, line: 49, baseType: !328, size: 64, align: 64, offset: 2432)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !630, file: !631, line: 51, baseType: !148, size: 64, align: 64, offset: 2496)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !630, file: !631, line: 53, baseType: !148, size: 64, align: 64, offset: 2560)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !630, file: !631, line: 54, baseType: !148, size: 64, align: 64, offset: 2624)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !630, file: !631, line: 55, baseType: !148, size: 64, align: 64, offset: 2688)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !630, file: !631, line: 56, baseType: !148, size: 64, align: 64, offset: 2752)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !630, file: !631, line: 57, baseType: !135, size: 32, align: 32, offset: 2816)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !630, file: !631, line: 59, baseType: !189, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !630, file: !631, line: 60, baseType: !189, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !630, file: !631, line: 62, baseType: !189, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !630, file: !631, line: 63, baseType: !189, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !630, file: !631, line: 64, baseType: !189, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !630, file: !631, line: 65, baseType: !189, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !630, file: !631, line: 66, baseType: !189, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !630, file: !631, line: 67, baseType: !189, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !630, file: !631, line: 68, baseType: !189, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !630, file: !631, line: 69, baseType: !189, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !630, file: !631, line: 70, baseType: !189, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !630, file: !631, line: 71, baseType: !189, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !630, file: !631, line: 72, baseType: !189, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !630, file: !631, line: 74, baseType: !135, size: 32, align: 32, offset: 2880)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !630, file: !631, line: 75, baseType: !135, size: 32, align: 32, offset: 2912)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !630, file: !631, line: 76, baseType: !135, size: 32, align: 32, offset: 2944)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !630, file: !631, line: 77, baseType: !135, size: 32, align: 32, offset: 2976)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !630, file: !631, line: 79, baseType: !428, size: 64, align: 64, offset: 3008)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !630, file: !631, line: 80, baseType: !328, size: 64, align: 64, offset: 3072)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !630, file: !631, line: 81, baseType: !328, size: 64, align: 64, offset: 3136)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !630, file: !631, line: 83, baseType: !367, size: 64, align: 64, offset: 3200)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !630, file: !631, line: 84, baseType: !319, size: 32, align: 32, offset: 3264)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !630, file: !631, line: 87, baseType: !135, size: 32, align: 32, offset: 3296)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !630, file: !631, line: 91, baseType: !328, size: 64, align: 64, offset: 3328)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !630, file: !631, line: 92, baseType: !440, size: 128, align: 64, offset: 3392)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !630, file: !631, line: 93, baseType: !440, size: 128, align: 64, offset: 3520)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !630, file: !631, line: 95, baseType: !135, size: 32, align: 32, offset: 3648)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !630, file: !631, line: 96, baseType: !135, size: 32, align: 32, offset: 3680)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !630, file: !631, line: 97, baseType: !135, size: 32, align: 32, offset: 3712)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !630, file: !631, line: 100, baseType: !328, size: 64, align: 64, offset: 3776)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !630, file: !631, line: 103, baseType: !328, size: 64, align: 64, offset: 3840)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !630, file: !631, line: 106, baseType: !328, size: 64, align: 64, offset: 3904)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !630, file: !631, line: 108, baseType: !428, size: 64, align: 64, offset: 3968)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !630, file: !631, line: 109, baseType: !328, size: 64, align: 64, offset: 4032)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !630, file: !631, line: 111, baseType: !328, size: 64, align: 64, offset: 4096)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !630, file: !631, line: 114, baseType: !126, size: 64, align: 64, offset: 4160)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !630, file: !631, line: 116, baseType: !428, size: 64, align: 64, offset: 4224)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !630, file: !631, line: 117, baseType: !780, size: 32768, align: 64, offset: 4288)
!780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !781, size: 32768, align: 64, elements: !830)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !782, line: 10, size: 128, align: 64, elements: !783)
!782 = !DIFile(filename: "../../../../src/irc/core/modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!783 = !{!784, !829}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !781, file: !782, line: 11, baseType: !785, size: 64, align: 64)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64, align: 64)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !782, line: 7, baseType: !787)
!787 = !DISubroutineType(types: !788)
!788 = !{null, !789, !454, !149, !149, !148, !367}
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64, align: 64)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !629, line: 7, baseType: !791)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !792, line: 15, size: 1600, align: 64, elements: !793)
!792 = !DIFile(filename: "../../../../src/irc/core/irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!793 = !{!794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !791, file: !487, line: 3, baseType: !135, size: 32, align: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !791, file: !487, line: 4, baseType: !135, size: 32, align: 32, offset: 32)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !791, file: !487, line: 5, baseType: !428, size: 64, align: 64, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !791, file: !487, line: 7, baseType: !126, size: 64, align: 64, offset: 128)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !791, file: !487, line: 8, baseType: !627, size: 64, align: 64, offset: 192)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !791, file: !487, line: 9, baseType: !148, size: 64, align: 64, offset: 256)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !791, file: !487, line: 10, baseType: !148, size: 64, align: 64, offset: 320)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !791, file: !487, line: 11, baseType: !400, size: 64, align: 64, offset: 384)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !791, file: !487, line: 12, baseType: !135, size: 32, align: 32, offset: 448)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !791, file: !487, line: 13, baseType: !148, size: 64, align: 64, offset: 512)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !791, file: !487, line: 15, baseType: !498, size: 64, align: 64, offset: 576)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !791, file: !487, line: 17, baseType: !518, size: 64, align: 64, offset: 640)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !791, file: !523, line: 5, baseType: !148, size: 64, align: 64, offset: 704)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !791, file: !523, line: 6, baseType: !148, size: 64, align: 64, offset: 768)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !791, file: !523, line: 7, baseType: !400, size: 64, align: 64, offset: 832)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !791, file: !523, line: 9, baseType: !428, size: 64, align: 64, offset: 896)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !791, file: !523, line: 10, baseType: !528, size: 64, align: 64, offset: 960)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !791, file: !523, line: 12, baseType: !189, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !791, file: !523, line: 13, baseType: !148, size: 64, align: 64, offset: 1088)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !791, file: !523, line: 14, baseType: !135, size: 32, align: 32, offset: 1152)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !791, file: !523, line: 15, baseType: !148, size: 64, align: 64, offset: 1216)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !791, file: !523, line: 17, baseType: !189, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !791, file: !523, line: 18, baseType: !189, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !791, file: !523, line: 19, baseType: !189, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !791, file: !523, line: 20, baseType: !189, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !791, file: !523, line: 22, baseType: !189, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !791, file: !523, line: 23, baseType: !189, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !791, file: !523, line: 24, baseType: !189, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !791, file: !523, line: 25, baseType: !189, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !791, file: !523, line: 26, baseType: !189, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !791, file: !523, line: 31, baseType: !565, size: 64, align: 64, offset: 1344)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !791, file: !792, line: 18, baseType: !328, size: 64, align: 64, offset: 1408)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !791, file: !792, line: 20, baseType: !400, size: 64, align: 64, offset: 1472)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !791, file: !792, line: 21, baseType: !135, size: 32, align: 32, offset: 1536)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !791, file: !792, line: 22, baseType: !135, size: 32, align: 32, offset: 1568)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !781, file: !782, line: 12, baseType: !149, size: 8, align: 8, offset: 64)
!830 = !{!831}
!831 = !DISubrange(count: 256)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !630, file: !631, line: 118, baseType: !833, size: 2048, align: 8, offset: 37056)
!833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 2048, align: 8, elements: !830)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !630, file: !631, line: 120, baseType: !596, size: 64, align: 64, offset: 39104)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !619, file: !623, line: 6, baseType: !148, size: 64, align: 64, offset: 192)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "mynick", scope: !619, file: !623, line: 7, baseType: !148, size: 64, align: 64, offset: 256)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !619, file: !623, line: 8, baseType: !148, size: 64, align: 64, offset: 320)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "chat", scope: !619, file: !623, line: 10, baseType: !616, size: 64, align: 64, offset: 384)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !619, file: !623, line: 11, baseType: !148, size: 64, align: 64, offset: 448)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !619, file: !623, line: 12, baseType: !148, size: 64, align: 64, offset: 512)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !619, file: !623, line: 14, baseType: !162, size: 160, align: 32, offset: 576)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "addrstr", scope: !619, file: !623, line: 15, baseType: !843, size: 368, align: 8, offset: 736)
!843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 368, align: 8, elements: !844)
!844 = !{!845}
!845 = !DISubrange(count: 46)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !619, file: !623, line: 16, baseType: !135, size: 32, align: 32, offset: 1120)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !619, file: !623, line: 18, baseType: !206, size: 64, align: 64, offset: 1152)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "tagconn", scope: !619, file: !623, line: 19, baseType: !135, size: 32, align: 32, offset: 1216)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "tagread", scope: !619, file: !623, line: 19, baseType: !135, size: 32, align: 32, offset: 1248)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "tagwrite", scope: !619, file: !623, line: 19, baseType: !135, size: 32, align: 32, offset: 1280)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "starttime", scope: !619, file: !623, line: 20, baseType: !400, size: 64, align: 64, offset: 1344)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "transfd", scope: !619, file: !623, line: 21, baseType: !853, size: 64, align: 64, offset: 1408)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "uoff_t", file: !129, line: 49, baseType: !227)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "pasv_id", scope: !619, file: !623, line: 23, baseType: !135, size: 32, align: 32, offset: 1472)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !619, file: !623, line: 25, baseType: !189, size: 1, align: 32, offset: 1504, flags: DIFlagBitField, extraData: i64 1504)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !619, file: !623, line: 27, baseType: !428, size: 64, align: 64, offset: 1536)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !619, file: !620, line: 15, baseType: !148, size: 64, align: 64, offset: 1600)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "sendbuf", scope: !619, file: !620, line: 16, baseType: !413, size: 64, align: 64, offset: 1664)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "mirc_ctcp", scope: !619, file: !620, line: 18, baseType: !189, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !619, file: !620, line: 19, baseType: !189, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!861 = !DILocalVariable(name: "dcc", arg: 1, scope: !613, file: !604, line: 33, type: !616)
!862 = !DIExpression()
!863 = !DILocation(line: 33, column: 47, scope: !613)
!864 = !DILocalVariable(name: "msg", arg: 2, scope: !613, file: !604, line: 33, type: !454)
!865 = !DILocation(line: 33, column: 64, scope: !613)
!866 = !DILocalVariable(name: "dest", scope: !613, file: !604, line: 35, type: !867)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_DEST_REC", file: !868, line: 62, baseType: !869)
!868 = !DIFile(filename: "../../../../src/fe-common/core/formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TEXT_DEST_REC", file: !868, line: 50, size: 576, align: 64, elements: !870)
!870 = !{!871, !918, !919, !920, !921, !922, !923, !924, !925, !926}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !869, file: !868, line: 51, baseType: !872, size: 64, align: 64)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64, align: 64)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW_REC", file: !129, line: 117, baseType: !874)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WINDOW_REC", file: !875, line: 28, size: 1280, align: 64, elements: !876)
!875 = !DIFile(filename: "../../../../src/fe-common/core/fe-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!876 = !{!877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !910, !911, !912, !913, !914, !915, !916, !917}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "refnum", scope: !874, file: !875, line: 29, baseType: !135, size: 32, align: 32)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !874, file: !875, line: 30, baseType: !148, size: 64, align: 64, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !874, file: !875, line: 32, baseType: !135, size: 32, align: 32, offset: 128)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !874, file: !875, line: 32, baseType: !135, size: 32, align: 32, offset: 160)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !874, file: !875, line: 34, baseType: !328, size: 64, align: 64, offset: 192)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !874, file: !875, line: 35, baseType: !501, size: 64, align: 64, offset: 256)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "active_server", scope: !874, file: !875, line: 36, baseType: !127, size: 64, align: 64, offset: 320)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "connect_server", scope: !874, file: !875, line: 37, baseType: !127, size: 64, align: 64, offset: 384)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !874, file: !875, line: 38, baseType: !148, size: 64, align: 64, offset: 448)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !874, file: !875, line: 40, baseType: !135, size: 32, align: 32, offset: 512)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "bound_items", scope: !874, file: !875, line: 41, baseType: !328, size: 64, align: 64, offset: 576)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "immortal", scope: !874, file: !875, line: 43, baseType: !189, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_refnum", scope: !874, file: !875, line: 44, baseType: !189, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !874, file: !875, line: 45, baseType: !189, size: 1, align: 32, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !874, file: !875, line: 48, baseType: !892, size: 64, align: 64, offset: 704)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64, align: 64)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "HISTORY_REC", file: !894, line: 14, baseType: !895)
!894 = !DIFile(filename: "../../../../src/fe-common/core/command-history.h", directory: "/home/lichi/Desktop/irssi/task1")
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !894, line: 6, size: 256, align: 64, elements: !896)
!896 = !{!897, !898, !907, !908, !909}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !895, file: !894, line: 7, baseType: !148, size: 64, align: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !895, file: !894, line: 9, baseType: !899, size: 64, align: 64, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64, align: 64)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !901, line: 37, baseType: !902)
!901 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/irssi/task1")
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !901, line: 39, size: 192, align: 64, elements: !903)
!903 = !{!904, !905, !906}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !902, file: !901, line: 41, baseType: !267, size: 64, align: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !902, file: !901, line: 42, baseType: !899, size: 64, align: 64, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !902, file: !901, line: 43, baseType: !899, size: 64, align: 64, offset: 128)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !895, file: !894, line: 10, baseType: !135, size: 32, align: 32, offset: 128)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !895, file: !894, line: 12, baseType: !135, size: 32, align: 32, offset: 160)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "redo", scope: !895, file: !894, line: 13, baseType: !135, size: 1, align: 32, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "history_name", scope: !874, file: !875, line: 49, baseType: !148, size: 64, align: 64, offset: 768)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !874, file: !875, line: 51, baseType: !135, size: 32, align: 32, offset: 832)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !874, file: !875, line: 52, baseType: !148, size: 64, align: 64, offset: 896)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "last_timestamp", scope: !874, file: !875, line: 54, baseType: !400, size: 64, align: 64, offset: 960)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !874, file: !875, line: 55, baseType: !400, size: 64, align: 64, offset: 1024)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "theme_name", scope: !874, file: !875, line: 57, baseType: !148, size: 64, align: 64, offset: 1088)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "theme", scope: !874, file: !875, line: 58, baseType: !126, size: 64, align: 64, offset: 1152)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !874, file: !875, line: 60, baseType: !126, size: 64, align: 64, offset: 1216)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !869, file: !868, line: 52, baseType: !127, size: 64, align: 64, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "server_tag", scope: !869, file: !868, line: 53, baseType: !454, size: 64, align: 64, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !869, file: !868, line: 54, baseType: !454, size: 64, align: 64, offset: 192)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !869, file: !868, line: 55, baseType: !454, size: 64, align: 64, offset: 256)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !869, file: !868, line: 56, baseType: !454, size: 64, align: 64, offset: 320)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !869, file: !868, line: 57, baseType: !135, size: 32, align: 32, offset: 384)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_priority", scope: !869, file: !868, line: 59, baseType: !135, size: 32, align: 32, offset: 416)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !869, file: !868, line: 60, baseType: !148, size: 64, align: 64, offset: 448)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !869, file: !868, line: 61, baseType: !135, size: 32, align: 32, offset: 512)
!927 = !DILocation(line: 35, column: 23, scope: !613)
!928 = !DILocalVariable(name: "query", scope: !613, file: !604, line: 36, type: !572)
!929 = !DILocation(line: 36, column: 20, scope: !613)
!930 = !DILocalVariable(name: "tag", scope: !613, file: !604, line: 37, type: !148)
!931 = !DILocation(line: 37, column: 8, scope: !613)
!932 = !DILocation(line: 39, column: 25, scope: !613)
!933 = !DILocation(line: 39, column: 30, scope: !613)
!934 = !DILocation(line: 39, column: 8, scope: !613)
!935 = !DILocation(line: 39, column: 6, scope: !613)
!936 = !DILocation(line: 40, column: 26, scope: !613)
!937 = !DILocation(line: 40, column: 10, scope: !613)
!938 = !DILocation(line: 40, column: 8, scope: !613)
!939 = !DILocation(line: 42, column: 32, scope: !613)
!940 = !DILocation(line: 42, column: 37, scope: !613)
!941 = !DILocation(line: 42, column: 45, scope: !613)
!942 = !DILocation(line: 42, column: 50, scope: !613)
!943 = !DILocation(line: 42, column: 61, scope: !613)
!944 = !DILocation(line: 42, column: 2, scope: !613)
!945 = !DILocation(line: 46, column: 54, scope: !613)
!946 = !DILocation(line: 46, column: 60, scope: !613)
!947 = !DILocation(line: 46, column: 42, scope: !613)
!948 = !DILocation(line: 46, column: 47, scope: !613)
!949 = !DILocation(line: 46, column: 55, scope: !613)
!950 = !DILocation(line: 46, column: 64, scope: !613)
!951 = !DILocation(line: 46, column: 2, scope: !613)
!952 = !DILocation(line: 48, column: 16, scope: !613)
!953 = !DILocation(line: 48, column: 9, scope: !613)
!954 = !DILocation(line: 49, column: 1, scope: !613)
!955 = distinct !DISubprogram(name: "sig_message_dcc_own_action", scope: !604, file: !604, line: 51, type: !614, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !605)
!956 = !DILocalVariable(name: "dcc", arg: 1, scope: !955, file: !604, line: 51, type: !616)
!957 = !DILocation(line: 51, column: 54, scope: !955)
!958 = !DILocalVariable(name: "msg", arg: 2, scope: !955, file: !604, line: 51, type: !454)
!959 = !DILocation(line: 51, column: 71, scope: !955)
!960 = !DILocalVariable(name: "dest", scope: !955, file: !604, line: 53, type: !867)
!961 = !DILocation(line: 53, column: 23, scope: !955)
!962 = !DILocalVariable(name: "query", scope: !955, file: !604, line: 54, type: !572)
!963 = !DILocation(line: 54, column: 20, scope: !955)
!964 = !DILocalVariable(name: "tag", scope: !955, file: !604, line: 55, type: !148)
!965 = !DILocation(line: 55, column: 8, scope: !955)
!966 = !DILocation(line: 57, column: 25, scope: !955)
!967 = !DILocation(line: 57, column: 30, scope: !955)
!968 = !DILocation(line: 57, column: 8, scope: !955)
!969 = !DILocation(line: 57, column: 6, scope: !955)
!970 = !DILocation(line: 58, column: 26, scope: !955)
!971 = !DILocation(line: 58, column: 10, scope: !955)
!972 = !DILocation(line: 58, column: 8, scope: !955)
!973 = !DILocation(line: 60, column: 32, scope: !955)
!974 = !DILocation(line: 60, column: 37, scope: !955)
!975 = !DILocation(line: 60, column: 45, scope: !955)
!976 = !DILocation(line: 60, column: 50, scope: !955)
!977 = !DILocation(line: 60, column: 61, scope: !955)
!978 = !DILocation(line: 60, column: 2, scope: !955)
!979 = !DILocation(line: 64, column: 61, scope: !955)
!980 = !DILocation(line: 64, column: 67, scope: !955)
!981 = !DILocation(line: 64, column: 63, scope: !955)
!982 = !DILocation(line: 64, column: 68, scope: !955)
!983 = !DILocation(line: 64, column: 76, scope: !955)
!984 = !DILocation(line: 64, column: 81, scope: !955)
!985 = !DILocation(line: 64, column: 85, scope: !955)
!986 = !DILocation(line: 64, column: 9, scope: !955)
!987 = !DILocation(line: 66, column: 16, scope: !955)
!988 = !DILocation(line: 66, column: 9, scope: !955)
!989 = !DILocation(line: 67, column: 1, scope: !955)
!990 = distinct !DISubprogram(name: "sig_message_dcc_own_ctcp", scope: !604, file: !604, line: 69, type: !991, isLocal: true, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !605)
!991 = !DISubroutineType(types: !992)
!992 = !{null, !616, !454, !454}
!993 = !DILocalVariable(name: "dcc", arg: 1, scope: !990, file: !604, line: 69, type: !616)
!994 = !DILocation(line: 69, column: 52, scope: !990)
!995 = !DILocalVariable(name: "cmd", arg: 2, scope: !990, file: !604, line: 69, type: !454)
!996 = !DILocation(line: 69, column: 69, scope: !990)
!997 = !DILocalVariable(name: "data", arg: 3, scope: !990, file: !604, line: 70, type: !454)
!998 = !DILocation(line: 70, column: 22, scope: !990)
!999 = !DILocalVariable(name: "dest", scope: !990, file: !604, line: 72, type: !867)
!1000 = !DILocation(line: 72, column: 23, scope: !990)
!1001 = !DILocalVariable(name: "tag", scope: !990, file: !604, line: 73, type: !148)
!1002 = !DILocation(line: 73, column: 8, scope: !990)
!1003 = !DILocation(line: 75, column: 25, scope: !990)
!1004 = !DILocation(line: 75, column: 30, scope: !990)
!1005 = !DILocation(line: 75, column: 8, scope: !990)
!1006 = !DILocation(line: 75, column: 6, scope: !990)
!1007 = !DILocation(line: 77, column: 32, scope: !990)
!1008 = !DILocation(line: 77, column: 37, scope: !990)
!1009 = !DILocation(line: 77, column: 45, scope: !990)
!1010 = !DILocation(line: 77, column: 50, scope: !990)
!1011 = !DILocation(line: 77, column: 61, scope: !990)
!1012 = !DILocation(line: 77, column: 2, scope: !990)
!1013 = !DILocation(line: 81, column: 75, scope: !990)
!1014 = !DILocation(line: 81, column: 80, scope: !990)
!1015 = !DILocation(line: 81, column: 84, scope: !990)
!1016 = !DILocation(line: 81, column: 89, scope: !990)
!1017 = !DILocation(line: 81, column: 2, scope: !990)
!1018 = !DILocation(line: 82, column: 16, scope: !990)
!1019 = !DILocation(line: 82, column: 9, scope: !990)
!1020 = !DILocation(line: 83, column: 1, scope: !990)
!1021 = distinct !DISubprogram(name: "sig_message_dcc", scope: !604, file: !604, line: 85, type: !614, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !605)
!1022 = !DILocalVariable(name: "dcc", arg: 1, scope: !1021, file: !604, line: 85, type: !616)
!1023 = !DILocation(line: 85, column: 43, scope: !1021)
!1024 = !DILocalVariable(name: "msg", arg: 2, scope: !1021, file: !604, line: 85, type: !454)
!1025 = !DILocation(line: 85, column: 60, scope: !1021)
!1026 = !DILocalVariable(name: "dest", scope: !1021, file: !604, line: 87, type: !867)
!1027 = !DILocation(line: 87, column: 23, scope: !1021)
!1028 = !DILocalVariable(name: "query", scope: !1021, file: !604, line: 88, type: !572)
!1029 = !DILocation(line: 88, column: 20, scope: !1021)
!1030 = !DILocalVariable(name: "tag", scope: !1021, file: !604, line: 89, type: !148)
!1031 = !DILocation(line: 89, column: 8, scope: !1021)
!1032 = !DILocalVariable(name: "level", scope: !1021, file: !604, line: 90, type: !135)
!1033 = !DILocation(line: 90, column: 6, scope: !1021)
!1034 = !DILocation(line: 92, column: 25, scope: !1021)
!1035 = !DILocation(line: 92, column: 30, scope: !1021)
!1036 = !DILocation(line: 92, column: 8, scope: !1021)
!1037 = !DILocation(line: 92, column: 6, scope: !1021)
!1038 = !DILocation(line: 93, column: 26, scope: !1021)
!1039 = !DILocation(line: 93, column: 10, scope: !1021)
!1040 = !DILocation(line: 93, column: 8, scope: !1021)
!1041 = !DILocation(line: 95, column: 53, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1021, file: !604, line: 95, column: 6)
!1043 = !DILocation(line: 95, column: 58, scope: !1042)
!1044 = !DILocation(line: 95, column: 35, scope: !1042)
!1045 = !DILocation(line: 95, column: 20, scope: !1042)
!1046 = !DILocation(line: 95, column: 32, scope: !1042)
!1047 = !DILocation(line: 95, column: 37, scope: !1042)
!1048 = !DILocation(line: 95, column: 42, scope: !1042)
!1049 = !DILocation(line: 95, column: 64, scope: !1042)
!1050 = !DILocation(line: 96, column: 5, scope: !1042)
!1051 = !DILocation(line: 96, column: 11, scope: !1042)
!1052 = !DILocation(line: 95, column: 6, scope: !1053)
!1053 = !DILexicalBlockFile(scope: !1042, file: !604, discriminator: 1)
!1054 = !DILocation(line: 95, column: 6, scope: !1042)
!1055 = !DILocation(line: 95, column: 6, scope: !1021)
!1056 = !DILocation(line: 97, column: 9, scope: !1042)
!1057 = !DILocation(line: 97, column: 3, scope: !1042)
!1058 = !DILocation(line: 99, column: 53, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1021, file: !604, line: 99, column: 6)
!1060 = !DILocation(line: 99, column: 58, scope: !1059)
!1061 = !DILocation(line: 99, column: 35, scope: !1059)
!1062 = !DILocation(line: 99, column: 20, scope: !1059)
!1063 = !DILocation(line: 99, column: 32, scope: !1059)
!1064 = !DILocation(line: 99, column: 37, scope: !1059)
!1065 = !DILocation(line: 99, column: 42, scope: !1059)
!1066 = !DILocation(line: 99, column: 64, scope: !1059)
!1067 = !DILocation(line: 100, column: 5, scope: !1059)
!1068 = !DILocation(line: 100, column: 11, scope: !1059)
!1069 = !DILocation(line: 99, column: 6, scope: !1070)
!1070 = !DILexicalBlockFile(scope: !1059, file: !604, discriminator: 1)
!1071 = !DILocation(line: 99, column: 6, scope: !1059)
!1072 = !DILocation(line: 99, column: 6, scope: !1021)
!1073 = !DILocation(line: 101, column: 9, scope: !1059)
!1074 = !DILocation(line: 101, column: 3, scope: !1059)
!1075 = !DILocation(line: 103, column: 32, scope: !1021)
!1076 = !DILocation(line: 103, column: 37, scope: !1021)
!1077 = !DILocation(line: 103, column: 45, scope: !1021)
!1078 = !DILocation(line: 103, column: 50, scope: !1021)
!1079 = !DILocation(line: 103, column: 61, scope: !1021)
!1080 = !DILocation(line: 104, column: 11, scope: !1021)
!1081 = !DILocation(line: 103, column: 2, scope: !1021)
!1082 = !DILocation(line: 106, column: 54, scope: !1021)
!1083 = !DILocation(line: 106, column: 60, scope: !1021)
!1084 = !DILocation(line: 106, column: 42, scope: !1021)
!1085 = !DILocation(line: 106, column: 47, scope: !1021)
!1086 = !DILocation(line: 106, column: 51, scope: !1021)
!1087 = !DILocation(line: 106, column: 2, scope: !1021)
!1088 = !DILocation(line: 108, column: 16, scope: !1021)
!1089 = !DILocation(line: 108, column: 9, scope: !1021)
!1090 = !DILocation(line: 109, column: 1, scope: !1021)
!1091 = distinct !DISubprogram(name: "sig_message_dcc_action", scope: !604, file: !604, line: 111, type: !614, isLocal: true, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !605)
!1092 = !DILocalVariable(name: "dcc", arg: 1, scope: !1091, file: !604, line: 111, type: !616)
!1093 = !DILocation(line: 111, column: 50, scope: !1091)
!1094 = !DILocalVariable(name: "msg", arg: 2, scope: !1091, file: !604, line: 111, type: !454)
!1095 = !DILocation(line: 111, column: 67, scope: !1091)
!1096 = !DILocalVariable(name: "dest", scope: !1091, file: !604, line: 113, type: !867)
!1097 = !DILocation(line: 113, column: 23, scope: !1091)
!1098 = !DILocalVariable(name: "query", scope: !1091, file: !604, line: 114, type: !572)
!1099 = !DILocation(line: 114, column: 20, scope: !1091)
!1100 = !DILocalVariable(name: "tag", scope: !1091, file: !604, line: 115, type: !148)
!1101 = !DILocation(line: 115, column: 8, scope: !1091)
!1102 = !DILocalVariable(name: "level", scope: !1091, file: !604, line: 116, type: !135)
!1103 = !DILocation(line: 116, column: 6, scope: !1091)
!1104 = !DILocation(line: 118, column: 25, scope: !1091)
!1105 = !DILocation(line: 118, column: 30, scope: !1091)
!1106 = !DILocation(line: 118, column: 8, scope: !1091)
!1107 = !DILocation(line: 118, column: 6, scope: !1091)
!1108 = !DILocation(line: 119, column: 26, scope: !1091)
!1109 = !DILocation(line: 119, column: 10, scope: !1091)
!1110 = !DILocation(line: 119, column: 8, scope: !1091)
!1111 = !DILocation(line: 121, column: 53, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1091, file: !604, line: 121, column: 6)
!1113 = !DILocation(line: 121, column: 58, scope: !1112)
!1114 = !DILocation(line: 121, column: 35, scope: !1112)
!1115 = !DILocation(line: 121, column: 20, scope: !1112)
!1116 = !DILocation(line: 121, column: 32, scope: !1112)
!1117 = !DILocation(line: 121, column: 37, scope: !1112)
!1118 = !DILocation(line: 121, column: 42, scope: !1112)
!1119 = !DILocation(line: 121, column: 64, scope: !1112)
!1120 = !DILocation(line: 122, column: 5, scope: !1112)
!1121 = !DILocation(line: 122, column: 11, scope: !1112)
!1122 = !DILocation(line: 121, column: 6, scope: !1123)
!1123 = !DILexicalBlockFile(scope: !1112, file: !604, discriminator: 1)
!1124 = !DILocation(line: 121, column: 6, scope: !1112)
!1125 = !DILocation(line: 121, column: 6, scope: !1091)
!1126 = !DILocation(line: 123, column: 9, scope: !1112)
!1127 = !DILocation(line: 123, column: 3, scope: !1112)
!1128 = !DILocation(line: 125, column: 53, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1091, file: !604, line: 125, column: 6)
!1130 = !DILocation(line: 125, column: 58, scope: !1129)
!1131 = !DILocation(line: 125, column: 35, scope: !1129)
!1132 = !DILocation(line: 125, column: 20, scope: !1129)
!1133 = !DILocation(line: 125, column: 32, scope: !1129)
!1134 = !DILocation(line: 125, column: 37, scope: !1129)
!1135 = !DILocation(line: 125, column: 42, scope: !1129)
!1136 = !DILocation(line: 125, column: 64, scope: !1129)
!1137 = !DILocation(line: 126, column: 5, scope: !1129)
!1138 = !DILocation(line: 126, column: 11, scope: !1129)
!1139 = !DILocation(line: 125, column: 6, scope: !1140)
!1140 = !DILexicalBlockFile(scope: !1129, file: !604, discriminator: 1)
!1141 = !DILocation(line: 125, column: 6, scope: !1129)
!1142 = !DILocation(line: 125, column: 6, scope: !1091)
!1143 = !DILocation(line: 127, column: 9, scope: !1129)
!1144 = !DILocation(line: 127, column: 3, scope: !1129)
!1145 = !DILocation(line: 129, column: 32, scope: !1091)
!1146 = !DILocation(line: 129, column: 37, scope: !1091)
!1147 = !DILocation(line: 129, column: 45, scope: !1091)
!1148 = !DILocation(line: 129, column: 50, scope: !1091)
!1149 = !DILocation(line: 129, column: 61, scope: !1091)
!1150 = !DILocation(line: 130, column: 11, scope: !1091)
!1151 = !DILocation(line: 129, column: 2, scope: !1091)
!1152 = !DILocation(line: 132, column: 54, scope: !1091)
!1153 = !DILocation(line: 132, column: 60, scope: !1091)
!1154 = !DILocation(line: 132, column: 48, scope: !1091)
!1155 = !DILocation(line: 132, column: 53, scope: !1091)
!1156 = !DILocation(line: 132, column: 57, scope: !1091)
!1157 = !DILocation(line: 132, column: 2, scope: !1091)
!1158 = !DILocation(line: 134, column: 9, scope: !1091)
!1159 = !DILocation(line: 134, column: 2, scope: !1091)
!1160 = !DILocation(line: 135, column: 1, scope: !1091)
!1161 = distinct !DISubprogram(name: "sig_message_dcc_ctcp", scope: !604, file: !604, line: 137, type: !991, isLocal: true, isDefinition: true, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !605)
!1162 = !DILocalVariable(name: "dcc", arg: 1, scope: !1161, file: !604, line: 137, type: !616)
!1163 = !DILocation(line: 137, column: 48, scope: !1161)
!1164 = !DILocalVariable(name: "cmd", arg: 2, scope: !1161, file: !604, line: 137, type: !454)
!1165 = !DILocation(line: 137, column: 65, scope: !1161)
!1166 = !DILocalVariable(name: "data", arg: 3, scope: !1161, file: !604, line: 138, type: !454)
!1167 = !DILocation(line: 138, column: 18, scope: !1161)
!1168 = !DILocalVariable(name: "dest", scope: !1161, file: !604, line: 140, type: !867)
!1169 = !DILocation(line: 140, column: 23, scope: !1161)
!1170 = !DILocalVariable(name: "tag", scope: !1161, file: !604, line: 141, type: !148)
!1171 = !DILocation(line: 141, column: 8, scope: !1161)
!1172 = !DILocalVariable(name: "level", scope: !1161, file: !604, line: 142, type: !135)
!1173 = !DILocation(line: 142, column: 6, scope: !1161)
!1174 = !DILocation(line: 144, column: 25, scope: !1161)
!1175 = !DILocation(line: 144, column: 30, scope: !1161)
!1176 = !DILocation(line: 144, column: 8, scope: !1161)
!1177 = !DILocation(line: 144, column: 6, scope: !1161)
!1178 = !DILocation(line: 146, column: 53, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1161, file: !604, line: 146, column: 6)
!1180 = !DILocation(line: 146, column: 58, scope: !1179)
!1181 = !DILocation(line: 146, column: 35, scope: !1179)
!1182 = !DILocation(line: 146, column: 20, scope: !1179)
!1183 = !DILocation(line: 146, column: 32, scope: !1179)
!1184 = !DILocation(line: 146, column: 37, scope: !1179)
!1185 = !DILocation(line: 146, column: 42, scope: !1179)
!1186 = !DILocation(line: 146, column: 64, scope: !1179)
!1187 = !DILocation(line: 147, column: 5, scope: !1179)
!1188 = !DILocation(line: 147, column: 11, scope: !1179)
!1189 = !DILocation(line: 146, column: 6, scope: !1190)
!1190 = !DILexicalBlockFile(scope: !1179, file: !604, discriminator: 1)
!1191 = !DILocation(line: 146, column: 6, scope: !1179)
!1192 = !DILocation(line: 146, column: 6, scope: !1161)
!1193 = !DILocation(line: 148, column: 9, scope: !1179)
!1194 = !DILocation(line: 148, column: 3, scope: !1179)
!1195 = !DILocation(line: 150, column: 53, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1161, file: !604, line: 150, column: 6)
!1197 = !DILocation(line: 150, column: 58, scope: !1196)
!1198 = !DILocation(line: 150, column: 35, scope: !1196)
!1199 = !DILocation(line: 150, column: 20, scope: !1196)
!1200 = !DILocation(line: 150, column: 32, scope: !1196)
!1201 = !DILocation(line: 150, column: 37, scope: !1196)
!1202 = !DILocation(line: 150, column: 42, scope: !1196)
!1203 = !DILocation(line: 150, column: 64, scope: !1196)
!1204 = !DILocation(line: 151, column: 5, scope: !1196)
!1205 = !DILocation(line: 151, column: 11, scope: !1196)
!1206 = !DILocation(line: 150, column: 6, scope: !1207)
!1207 = !DILexicalBlockFile(scope: !1196, file: !604, discriminator: 1)
!1208 = !DILocation(line: 150, column: 6, scope: !1196)
!1209 = !DILocation(line: 150, column: 6, scope: !1161)
!1210 = !DILocation(line: 152, column: 9, scope: !1196)
!1211 = !DILocation(line: 152, column: 3, scope: !1196)
!1212 = !DILocation(line: 154, column: 32, scope: !1161)
!1213 = !DILocation(line: 154, column: 37, scope: !1161)
!1214 = !DILocation(line: 154, column: 45, scope: !1161)
!1215 = !DILocation(line: 154, column: 50, scope: !1161)
!1216 = !DILocation(line: 154, column: 61, scope: !1161)
!1217 = !DILocation(line: 155, column: 11, scope: !1161)
!1218 = !DILocation(line: 154, column: 2, scope: !1161)
!1219 = !DILocation(line: 157, column: 71, scope: !1161)
!1220 = !DILocation(line: 157, column: 76, scope: !1161)
!1221 = !DILocation(line: 157, column: 80, scope: !1161)
!1222 = !DILocation(line: 157, column: 85, scope: !1161)
!1223 = !DILocation(line: 157, column: 2, scope: !1161)
!1224 = !DILocation(line: 158, column: 16, scope: !1161)
!1225 = !DILocation(line: 158, column: 9, scope: !1161)
!1226 = !DILocation(line: 159, column: 1, scope: !1161)
!1227 = distinct !DISubprogram(name: "fe_dcc_chat_messages_deinit", scope: !604, file: !604, line: 171, type: !316, isLocal: false, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !605)
!1228 = !DILocation(line: 173, column: 9, scope: !1227)
!1229 = !DILocation(line: 174, column: 9, scope: !1227)
!1230 = !DILocation(line: 175, column: 9, scope: !1227)
!1231 = !DILocation(line: 176, column: 9, scope: !1227)
!1232 = !DILocation(line: 177, column: 9, scope: !1227)
!1233 = !DILocation(line: 178, column: 9, scope: !1227)
!1234 = !DILocation(line: 179, column: 1, scope: !1227)
