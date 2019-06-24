; ModuleID = './line117-irc-core.o.i'
source_filename = "./line117-irc-core.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._CHAT_PROTOCOL_REC = type { i32, i8, i8*, i8*, i8*, %struct._CHATNET_REC* ()*, %struct._SERVER_SETUP_REC* ()*, %struct._CHANNEL_SETUP_REC* ()*, %struct._SERVER_CONNECT_REC* ()*, void (%struct._SERVER_CONNECT_REC*)*, %struct._SERVER_REC* (%struct._SERVER_CONNECT_REC*)*, void (%struct._SERVER_REC*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*, i8*, i32)*, %struct._QUERY_REC* (i8*, i8*, i32)* }
%struct._CHATNET_REC = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IPADDR*, %struct._IPADDR* }
%struct._IPADDR = type opaque
%struct._SERVER_SETUP_REC = type { i32, i32, i8*, i16, i8*, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IPADDR*, %struct._IPADDR*, i64, i8, %struct._GHashTable* }
%struct._GHashTable = type opaque
%struct._CHANNEL_SETUP_REC = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8, %struct._GHashTable* }
%struct._SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8* }
%struct._GIOChannel = type { i32, %struct._GIOFuncs*, i8*, %struct._GIConv*, %struct._GIConv*, i8*, i32, i64, %struct._GString*, %struct._GString*, %struct._GString*, [6 x i8], i8, i8*, i8* }
%struct._GIOFuncs = type { i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i64, i32, %struct._GError**)*, i32 (%struct._GIOChannel*, %struct._GError**)*, %struct._GSource* (%struct._GIOChannel*, i32)*, void (%struct._GIOChannel*)*, i32 (%struct._GIOChannel*, i32, %struct._GError**)*, i32 (%struct._GIOChannel*)* }
%struct._GError = type { i32, i32, i8* }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GSourcePrivate = type opaque
%struct._GIConv = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._SERVER_REC = type { i32, i32, i32, %struct._SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, void (%struct._SERVER_REC*, i8*, i32)*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)* }
%struct._NET_SENDBUF_REC = type opaque
%struct._RAWLOG_REC = type opaque
%struct._GTimeVal = type { i64, i64 }
%struct._CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)* }
%struct._WI_ITEM_REC = type opaque
%struct._NICK_REC = type { i32, i32, i64, i8*, i8*, i8*, i32, i8, [8 x i8], i8*, %struct._NICK_REC* }
%struct._QUERY_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, i8 }
%struct.MODULE_FILE_REC = type { %struct._MODULE_REC*, i8*, i8*, void ()*, %struct._GModule*, i8 }
%struct._MODULE_REC = type { i8*, %struct._GSList* }
%struct._GModule = type opaque
%struct._IRC_SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct._IRC_CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._IRC_SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)*, %struct._GSList*, i64, i32, i32 }
%struct._IRC_SERVER_REC = type { i32, i32, i32, %struct._IRC_SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, void (%struct._SERVER_REC*, i8*, i32)*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)*, %struct._GSList*, %struct._GSList*, %struct._REDIRECT_REC*, %struct._GSList*, i8*, i8*, i8*, i8*, i8*, i32, i16, i32, i32, i32, i32, %struct._GHashTable*, %struct._GSList*, %struct._GSList*, %struct._GString*, i32, i32, %struct._GSList*, %struct._GTimeVal, %struct._GTimeVal, i32, i32, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GHashTable*, %struct._GSList*, %struct._GSList*, i8*, %struct._GHashTable*, [256 x %struct.modes_type], [256 x i8], i32 (i8*, i8*)* }
%struct._REDIRECT_REC = type opaque
%struct.modes_type = type { void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, i8 }

@.str = private unnamed_addr constant [4 x i8] c"IRC\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Internet Relay Chat\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ircnet\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"irc/core\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"irc\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"chat protocol deinit\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"SERVER CONNECT\00", align 1

; Function Attrs: nounwind uwtable
define void @irc_core_init() #0 !dbg !643 {
  %1 = alloca %struct._CHAT_PROTOCOL_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._CHAT_PROTOCOL_REC** %1, metadata !646, metadata !647), !dbg !648
  %2 = call noalias i8* @g_malloc0_n(i64 1, i64 104), !dbg !649
  %3 = bitcast i8* %2 to %struct._CHAT_PROTOCOL_REC*, !dbg !650
  store %struct._CHAT_PROTOCOL_REC* %3, %struct._CHAT_PROTOCOL_REC** %1, align 8, !dbg !651
  %4 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %1, align 8, !dbg !652
  %5 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %4, i32 0, i32 2, !dbg !653
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8** %5, align 8, !dbg !654
  %6 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %1, align 8, !dbg !655
  %7 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %6, i32 0, i32 3, !dbg !656
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i8** %7, align 8, !dbg !657
  %8 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %1, align 8, !dbg !658
  %9 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %8, i32 0, i32 4, !dbg !659
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8** %9, align 8, !dbg !660
  %10 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %1, align 8, !dbg !661
  %11 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %10, i32 0, i32 1, !dbg !662
  %12 = load i8, i8* %11, align 4, !dbg !663
  %13 = and i8 %12, -3, !dbg !663
  %14 = or i8 %13, 2, !dbg !663
  store i8 %14, i8* %11, align 4, !dbg !663
  %15 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %1, align 8, !dbg !664
  %16 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %15, i32 0, i32 5, !dbg !665
  store %struct._CHATNET_REC* ()* @create_chatnet, %struct._CHATNET_REC* ()** %16, align 8, !dbg !666
  %17 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %1, align 8, !dbg !667
  %18 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %17, i32 0, i32 6, !dbg !668
  store %struct._SERVER_SETUP_REC* ()* @create_server_setup, %struct._SERVER_SETUP_REC* ()** %18, align 8, !dbg !669
  %19 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %1, align 8, !dbg !670
  %20 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %19, i32 0, i32 7, !dbg !671
  store %struct._CHANNEL_SETUP_REC* ()* @create_channel_setup, %struct._CHANNEL_SETUP_REC* ()** %20, align 8, !dbg !672
  %21 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %1, align 8, !dbg !673
  %22 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %21, i32 0, i32 8, !dbg !674
  store %struct._SERVER_CONNECT_REC* ()* @create_server_connect, %struct._SERVER_CONNECT_REC* ()** %22, align 8, !dbg !675
  %23 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %1, align 8, !dbg !676
  %24 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %23, i32 0, i32 9, !dbg !677
  store void (%struct._SERVER_CONNECT_REC*)* @destroy_server_connect, void (%struct._SERVER_CONNECT_REC*)** %24, align 8, !dbg !678
  %25 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %1, align 8, !dbg !679
  %26 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %25, i32 0, i32 10, !dbg !680
  store %struct._SERVER_REC* (%struct._SERVER_CONNECT_REC*)* @irc_server_init_connect, %struct._SERVER_REC* (%struct._SERVER_CONNECT_REC*)** %26, align 8, !dbg !681
  %27 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %1, align 8, !dbg !682
  %28 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %27, i32 0, i32 11, !dbg !683
  store void (%struct._SERVER_REC*)* @irc_server_connect, void (%struct._SERVER_REC*)** %28, align 8, !dbg !684
  %29 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %1, align 8, !dbg !685
  %30 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %29, i32 0, i32 12, !dbg !686
  store %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*, i8*, i32)* bitcast (%struct._IRC_CHANNEL_REC* (%struct._IRC_SERVER_REC*, i8*, i8*, i32)* @irc_channel_create to %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*, i8*, i32)*), %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*, i8*, i32)** %30, align 8, !dbg !687
  %31 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %1, align 8, !dbg !688
  %32 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %31, i32 0, i32 13, !dbg !689
  store %struct._QUERY_REC* (i8*, i8*, i32)* @irc_query_create, %struct._QUERY_REC* (i8*, i8*, i32)** %32, align 8, !dbg !690
  %33 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %1, align 8, !dbg !691
  %34 = call %struct._CHAT_PROTOCOL_REC* @chat_protocol_register(%struct._CHAT_PROTOCOL_REC* %33), !dbg !692
  %35 = load %struct._CHAT_PROTOCOL_REC*, %struct._CHAT_PROTOCOL_REC** %1, align 8, !dbg !693
  %36 = bitcast %struct._CHAT_PROTOCOL_REC* %35 to i8*, !dbg !693
  call void @g_free(i8* %36), !dbg !694
  call void @irc_session_init(), !dbg !695
  call void @irc_chatnets_init(), !dbg !696
  call void @irc_servers_init(), !dbg !697
  call void @irc_channels_init(), !dbg !698
  call void @irc_queries_init(), !dbg !699
  call void @ctcp_init(), !dbg !700
  call void @irc_commands_init(), !dbg !701
  call void @irc_irc_init(), !dbg !702
  call void @lag_init(), !dbg !703
  call void @netsplit_init(), !dbg !704
  call void @irc_expandos_init(), !dbg !705
  call void @cap_init(), !dbg !706
  call void @sasl_init(), !dbg !707
  call void @settings_check_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)), !dbg !708
  %37 = call %struct.MODULE_FILE_REC* @module_register_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)), !dbg !709
  ret void, !dbg !710
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare noalias i8* @g_malloc0_n(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal %struct._CHATNET_REC* @create_chatnet() #0 !dbg !711 {
  %1 = call noalias i8* @g_malloc0(i64 144), !dbg !712
  %2 = bitcast i8* %1 to %struct._CHATNET_REC*, !dbg !712
  ret %struct._CHATNET_REC* %2, !dbg !713
}

; Function Attrs: nounwind uwtable
define internal %struct._SERVER_SETUP_REC* @create_server_setup() #0 !dbg !714 {
  %1 = call noalias i8* @g_malloc0(i64 192), !dbg !715
  %2 = bitcast i8* %1 to %struct._SERVER_SETUP_REC*, !dbg !715
  ret %struct._SERVER_SETUP_REC* %2, !dbg !716
}

; Function Attrs: nounwind uwtable
define internal %struct._CHANNEL_SETUP_REC* @create_channel_setup() #0 !dbg !717 {
  %1 = call noalias i8* @g_malloc0(i64 64), !dbg !718
  %2 = bitcast i8* %1 to %struct._CHANNEL_SETUP_REC*, !dbg !718
  ret %struct._CHANNEL_SETUP_REC* %2, !dbg !719
}

; Function Attrs: nounwind uwtable
define internal %struct._SERVER_CONNECT_REC* @create_server_connect() #0 !dbg !720 {
  %1 = call noalias i8* @g_malloc0(i64 312), !dbg !721
  %2 = bitcast i8* %1 to %struct._SERVER_CONNECT_REC*, !dbg !721
  ret %struct._SERVER_CONNECT_REC* %2, !dbg !722
}

; Function Attrs: nounwind uwtable
define internal void @destroy_server_connect(%struct._SERVER_CONNECT_REC*) #0 !dbg !723 {
  %2 = alloca %struct._SERVER_CONNECT_REC*, align 8
  %3 = alloca %struct._IRC_SERVER_CONNECT_REC*, align 8
  store %struct._SERVER_CONNECT_REC* %0, %struct._SERVER_CONNECT_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_CONNECT_REC** %2, metadata !724, metadata !647), !dbg !725
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_CONNECT_REC** %3, metadata !726, metadata !647), !dbg !727
  %4 = load %struct._SERVER_CONNECT_REC*, %struct._SERVER_CONNECT_REC** %2, align 8, !dbg !728
  %5 = bitcast %struct._SERVER_CONNECT_REC* %4 to i8*, !dbg !728
  %6 = call i8* @module_check_cast(i8* %5, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0)), !dbg !729
  %7 = bitcast i8* %6 to %struct._SERVER_CONNECT_REC*, !dbg !730
  %8 = bitcast %struct._SERVER_CONNECT_REC* %7 to i8*, !dbg !731
  %9 = call i8* @chat_protocol_check_cast(i8* %8, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0)), !dbg !732
  %10 = bitcast i8* %9 to %struct._IRC_SERVER_CONNECT_REC*, !dbg !734
  store %struct._IRC_SERVER_CONNECT_REC* %10, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !735
  %11 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !736
  %12 = icmp eq %struct._IRC_SERVER_CONNECT_REC* %11, null, !dbg !738
  br i1 %12, label %13, label %14, !dbg !739

; <label>:13:                                     ; preds = %1
  br label %21, !dbg !740

; <label>:14:                                     ; preds = %1
  %15 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !741
  %16 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %15, i32 0, i32 31, !dbg !742
  %17 = load i8*, i8** %16, align 8, !dbg !742
  call void @g_free(i8* %17), !dbg !743
  %18 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !744
  %19 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %18, i32 0, i32 32, !dbg !745
  %20 = load i8*, i8** %19, align 8, !dbg !745
  call void @g_free(i8* %20), !dbg !746
  br label %21, !dbg !747

; <label>:21:                                     ; preds = %14, %13
  ret void, !dbg !748
}

declare %struct._SERVER_REC* @irc_server_init_connect(%struct._SERVER_CONNECT_REC*) #2

declare void @irc_server_connect(%struct._SERVER_REC*) #2

declare %struct._IRC_CHANNEL_REC* @irc_channel_create(%struct._IRC_SERVER_REC*, i8*, i8*, i32) #2

declare %struct._QUERY_REC* @irc_query_create(i8*, i8*, i32) #2

declare %struct._CHAT_PROTOCOL_REC* @chat_protocol_register(%struct._CHAT_PROTOCOL_REC*) #2

declare void @g_free(i8*) #2

declare void @irc_session_init() #2

declare void @irc_chatnets_init() #2

declare void @irc_servers_init() #2

declare void @irc_channels_init() #2

declare void @irc_queries_init() #2

declare void @ctcp_init() #2

declare void @irc_commands_init() #2

declare void @irc_irc_init() #2

declare void @lag_init() #2

declare void @netsplit_init() #2

declare void @irc_expandos_init() #2

declare void @cap_init() #2

declare void @sasl_init() #2

declare void @settings_check_module(i8*) #2

declare %struct.MODULE_FILE_REC* @module_register_full(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @irc_core_deinit() #0 !dbg !749 {
  %1 = call %struct._CHAT_PROTOCOL_REC* @chat_protocol_find(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0)), !dbg !750
  %2 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i32 1, %struct._CHAT_PROTOCOL_REC* %1), !dbg !751
  call void @sasl_deinit(), !dbg !753
  call void @cap_deinit(), !dbg !754
  call void @irc_expandos_deinit(), !dbg !755
  call void @netsplit_deinit(), !dbg !756
  call void @lag_deinit(), !dbg !757
  call void @irc_commands_deinit(), !dbg !758
  call void @ctcp_deinit(), !dbg !759
  call void @irc_queries_deinit(), !dbg !760
  call void @irc_channels_deinit(), !dbg !761
  call void @irc_irc_deinit(), !dbg !762
  call void @irc_servers_deinit(), !dbg !763
  call void @irc_chatnets_deinit(), !dbg !764
  call void @irc_session_deinit(), !dbg !765
  call void @chat_protocol_unregister(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0)), !dbg !766
  ret void, !dbg !767
}

declare i32 @signal_emit(i8*, i32, ...) #2

declare %struct._CHAT_PROTOCOL_REC* @chat_protocol_find(i8*) #2

declare void @sasl_deinit() #2

declare void @cap_deinit() #2

declare void @irc_expandos_deinit() #2

declare void @netsplit_deinit() #2

declare void @lag_deinit() #2

declare void @irc_commands_deinit() #2

declare void @ctcp_deinit() #2

declare void @irc_queries_deinit() #2

declare void @irc_channels_deinit() #2

declare void @irc_irc_deinit() #2

declare void @irc_servers_deinit() #2

declare void @irc_chatnets_deinit() #2

declare void @irc_session_deinit() #2

declare void @chat_protocol_unregister(i8*) #2

declare noalias i8* @g_malloc0(i64) #2

declare i8* @chat_protocol_check_cast(i8*, i32, i8*) #2

declare i8* @module_check_cast(i8*, i32, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!640, !641}
!llvm.ident = !{!642}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !35)
!1 = !DIFile(filename: "line117-irc-core.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10, !15, !24}
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
!35 = !{!36, !577, !581, !584, !147, !242}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAT_PROTOCOL_REC", file: !38, line: 105, baseType: !39)
!38 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHAT_PROTOCOL_REC", file: !40, line: 4, size: 832, align: 64, elements: !41)
!40 = !DIFile(filename: "../../../src/core/chat-protocols.h", directory: "/home/lichi/Desktop/irssi/task1")
!41 = !{!42, !44, !46, !47, !50, !51, !52, !75, !124, !143, !374, !378, !572, !576, !580}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !39, file: !40, line: 5, baseType: !43, size: 32, align: 32)
!43 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "not_initialized", scope: !39, file: !40, line: 7, baseType: !45, size: 1, align: 32, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!45 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "case_insensitive", scope: !39, file: !40, line: 8, baseType: !45, size: 1, align: 32, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !39, file: !40, line: 10, baseType: !48, size: 64, align: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "fullname", scope: !39, file: !40, line: 11, baseType: !48, size: 64, align: 64, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !39, file: !40, line: 12, baseType: !48, size: 64, align: 64, offset: 192)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "create_chatnet", scope: !39, file: !40, line: 14, baseType: !53, size: 64, align: 64, offset: 256)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DISubroutineType(types: !55)
!55 = !{!56}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHATNET_REC", file: !38, line: 106, baseType: !58)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHATNET_REC", file: !59, line: 13, size: 576, align: 64, elements: !60)
!59 = !DIFile(filename: "../../../src/core/chatnets.h", directory: "/home/lichi/Desktop/irssi/task1")
!60 = !{!61, !63, !64, !65, !66, !67, !68, !69, !70, !74}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !58, file: !62, line: 1, baseType: !43, size: 32, align: 32)
!62 = !DIFile(filename: "../../../src/core/chatnet-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!63 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !58, file: !62, line: 2, baseType: !43, size: 32, align: 32, offset: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !58, file: !62, line: 4, baseType: !48, size: 64, align: 64, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !58, file: !62, line: 6, baseType: !48, size: 64, align: 64, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !58, file: !62, line: 7, baseType: !48, size: 64, align: 64, offset: 192)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !58, file: !62, line: 8, baseType: !48, size: 64, align: 64, offset: 256)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "own_host", scope: !58, file: !62, line: 10, baseType: !48, size: 64, align: 64, offset: 320)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "autosendcmd", scope: !58, file: !62, line: 11, baseType: !48, size: 64, align: 64, offset: 384)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !58, file: !62, line: 12, baseType: !71, size: 64, align: 64, offset: 448)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !38, line: 99, baseType: !73)
!73 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !38, line: 99, flags: DIFlagFwdDecl)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !58, file: !62, line: 12, baseType: !71, size: 64, align: 64, offset: 512)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "create_server_setup", scope: !39, file: !40, line: 15, baseType: !76, size: 64, align: 64, offset: 320)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{!79}
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_SETUP_REC", file: !38, line: 114, baseType: !81)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_SETUP_REC", file: !82, line: 13, size: 1408, align: 64, elements: !83)
!82 = !DIFile(filename: "../../../src/core/servers-setup.h", directory: "/home/lichi/Desktop/irssi/task1")
!83 = !{!84, !86, !87, !88, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !112, !113, !114, !115, !116, !117, !118, !119}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !81, file: !85, line: 1, baseType: !43, size: 32, align: 32)
!85 = !DIFile(filename: "../../../src/core/server-setup-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!86 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !81, file: !85, line: 2, baseType: !43, size: 32, align: 32, offset: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !81, file: !85, line: 4, baseType: !48, size: 64, align: 64, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !81, file: !85, line: 6, baseType: !89, size: 16, align: 16, offset: 128)
!89 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !81, file: !85, line: 7, baseType: !48, size: 64, align: 64, offset: 192)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !81, file: !85, line: 8, baseType: !43, size: 32, align: 32, offset: 256)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !81, file: !85, line: 9, baseType: !48, size: 64, align: 64, offset: 320)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !81, file: !85, line: 11, baseType: !43, size: 32, align: 32, offset: 384)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !81, file: !85, line: 12, baseType: !48, size: 64, align: 64, offset: 448)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !81, file: !85, line: 14, baseType: !48, size: 64, align: 64, offset: 512)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !81, file: !85, line: 15, baseType: !48, size: 64, align: 64, offset: 576)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !81, file: !85, line: 16, baseType: !48, size: 64, align: 64, offset: 640)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !81, file: !85, line: 17, baseType: !48, size: 64, align: 64, offset: 704)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !81, file: !85, line: 18, baseType: !48, size: 64, align: 64, offset: 768)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !81, file: !85, line: 19, baseType: !48, size: 64, align: 64, offset: 832)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !81, file: !85, line: 20, baseType: !48, size: 64, align: 64, offset: 896)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !81, file: !85, line: 21, baseType: !48, size: 64, align: 64, offset: 960)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "own_host", scope: !81, file: !85, line: 23, baseType: !48, size: 64, align: 64, offset: 1024)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !81, file: !85, line: 24, baseType: !71, size: 64, align: 64, offset: 1088)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !81, file: !85, line: 24, baseType: !71, size: 64, align: 64, offset: 1152)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "last_connect", scope: !81, file: !85, line: 26, baseType: !107, size: 64, align: 64, offset: 1216)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !108, line: 75, baseType: !109)
!108 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !110, line: 139, baseType: !111)
!110 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!111 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "autoconnect", scope: !81, file: !85, line: 28, baseType: !45, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "no_proxy", scope: !81, file: !85, line: 29, baseType: !45, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "last_failed", scope: !81, file: !85, line: 30, baseType: !45, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !81, file: !85, line: 31, baseType: !45, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !81, file: !85, line: 32, baseType: !45, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !81, file: !85, line: 33, baseType: !45, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !81, file: !85, line: 34, baseType: !45, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !81, file: !85, line: 36, baseType: !120, size: 64, align: 64, offset: 1344)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !122, line: 37, baseType: !123)
!122 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!123 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !122, line: 37, flags: DIFlagFwdDecl)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "create_channel_setup", scope: !39, file: !40, line: 16, baseType: !125, size: 64, align: 64, offset: 384)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DISubroutineType(types: !127)
!127 = !{!128}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_SETUP_REC", file: !38, line: 115, baseType: !130)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_SETUP_REC", file: !131, line: 12, size: 512, align: 64, elements: !132)
!131 = !DIFile(filename: "../../../src/core/channels-setup.h", directory: "/home/lichi/Desktop/irssi/task1")
!132 = !{!133, !135, !136, !137, !138, !139, !140, !141, !142}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !130, file: !134, line: 1, baseType: !43, size: 32, align: 32)
!134 = !DIFile(filename: "../../../src/core/channel-setup-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!135 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !130, file: !134, line: 2, baseType: !43, size: 32, align: 32, offset: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !130, file: !134, line: 4, baseType: !48, size: 64, align: 64, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !130, file: !134, line: 5, baseType: !48, size: 64, align: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !130, file: !134, line: 6, baseType: !48, size: 64, align: 64, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "botmasks", scope: !130, file: !134, line: 8, baseType: !48, size: 64, align: 64, offset: 256)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "autosendcmd", scope: !130, file: !134, line: 9, baseType: !48, size: 64, align: 64, offset: 320)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "autojoin", scope: !130, file: !134, line: 11, baseType: !45, size: 1, align: 32, offset: 384, flags: DIFlagBitField, extraData: i64 384)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !130, file: !134, line: 12, baseType: !120, size: 64, align: 64, offset: 448)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "create_server_connect", scope: !39, file: !40, line: 17, baseType: !144, size: 64, align: 64, offset: 448)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!145 = !DISubroutineType(types: !146)
!146 = !{!147}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, align: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !38, line: 113, baseType: !149)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !150, line: 25, size: 1920, align: 64, elements: !151)
!150 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!151 = !{!152, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !149, file: !153, line: 3, baseType: !43, size: 32, align: 32)
!153 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!154 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !149, file: !153, line: 4, baseType: !43, size: 32, align: 32, offset: 32)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !149, file: !153, line: 6, baseType: !43, size: 32, align: 32, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !149, file: !153, line: 9, baseType: !48, size: 64, align: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !149, file: !153, line: 10, baseType: !43, size: 32, align: 32, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !149, file: !153, line: 11, baseType: !48, size: 64, align: 64, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !149, file: !153, line: 11, baseType: !48, size: 64, align: 64, offset: 320)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !149, file: !153, line: 11, baseType: !48, size: 64, align: 64, offset: 384)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !149, file: !153, line: 13, baseType: !89, size: 16, align: 16, offset: 448)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !149, file: !153, line: 14, baseType: !48, size: 64, align: 64, offset: 512)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !149, file: !153, line: 15, baseType: !48, size: 64, align: 64, offset: 576)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !149, file: !153, line: 16, baseType: !43, size: 32, align: 32, offset: 640)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !149, file: !153, line: 17, baseType: !48, size: 64, align: 64, offset: 704)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !149, file: !153, line: 19, baseType: !71, size: 64, align: 64, offset: 768)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !149, file: !153, line: 19, baseType: !71, size: 64, align: 64, offset: 832)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !149, file: !153, line: 21, baseType: !48, size: 64, align: 64, offset: 896)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !149, file: !153, line: 22, baseType: !48, size: 64, align: 64, offset: 960)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !149, file: !153, line: 23, baseType: !48, size: 64, align: 64, offset: 1024)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !149, file: !153, line: 24, baseType: !48, size: 64, align: 64, offset: 1088)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !149, file: !153, line: 26, baseType: !48, size: 64, align: 64, offset: 1152)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !149, file: !153, line: 27, baseType: !48, size: 64, align: 64, offset: 1216)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !149, file: !153, line: 28, baseType: !48, size: 64, align: 64, offset: 1280)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !149, file: !153, line: 29, baseType: !48, size: 64, align: 64, offset: 1344)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !149, file: !153, line: 30, baseType: !48, size: 64, align: 64, offset: 1408)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !149, file: !153, line: 31, baseType: !48, size: 64, align: 64, offset: 1472)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !149, file: !153, line: 32, baseType: !48, size: 64, align: 64, offset: 1536)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !149, file: !153, line: 33, baseType: !48, size: 64, align: 64, offset: 1600)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !149, file: !153, line: 35, baseType: !181, size: 64, align: 64, offset: 1664)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !183)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !184)
!184 = !{!185, !188, !331, !332, !337, !338, !339, !340, !341, !350, !351, !352, !356, !357, !358, !359, !360, !361, !362, !363}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !183, file: !4, line: 100, baseType: !186, size: 32, align: 32)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !187, line: 49, baseType: !43)
!187 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!188 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !183, file: !4, line: 101, baseType: !189, size: 64, align: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !191)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !192)
!192 = !{!193, !216, !222, !228, !232, !318, !322, !327}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !191, file: !4, line: 133, baseType: !194, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!197, !181, !198, !200, !203, !204}
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !187, line: 46, baseType: !49)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !201, line: 66, baseType: !202)
!201 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!202 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !207, line: 42, baseType: !208)
!207 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !207, line: 44, size: 128, align: 64, elements: !209)
!209 = !{!210, !214, !215}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !208, file: !207, line: 46, baseType: !211, size: 32, align: 32)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !212, line: 36, baseType: !213)
!212 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !201, line: 45, baseType: !45)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !208, file: !207, line: 47, baseType: !186, size: 32, align: 32, offset: 32)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !208, file: !207, line: 48, baseType: !198, size: 64, align: 64, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !191, file: !4, line: 138, baseType: !217, size: 64, align: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!197, !181, !220, !200, !203, !204}
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !191, file: !4, line: 143, baseType: !223, size: 64, align: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, align: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!197, !181, !226, !227, !204}
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !201, line: 51, baseType: !111)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !191, file: !4, line: 147, baseType: !229, size: 64, align: 64, offset: 192)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!197, !181, !204}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !191, file: !4, line: 149, baseType: !233, size: 64, align: 64, offset: 256)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, align: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!236, !181, !317}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64, align: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !238)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !239)
!239 = !{!240, !243, !264, !293, !295, !299, !300, !301, !302, !310, !311, !312, !313}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !238, file: !16, line: 174, baseType: !241, size: 64, align: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !187, line: 77, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !238, file: !16, line: 175, baseType: !244, size: 64, align: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64, align: 64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !246)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !247)
!247 = !{!248, !252, !253}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !246, file: !16, line: 198, baseType: !249, size: 64, align: 64)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64, align: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{null, !241}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !246, file: !16, line: 199, baseType: !249, size: 64, align: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !246, file: !16, line: 200, baseType: !254, size: 64, align: 64, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64, align: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{null, !241, !236, !257, !263}
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64, align: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{!262, !241}
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !187, line: 50, baseType: !186)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !238, file: !16, line: 177, baseType: !265, size: 64, align: 64, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64, align: 64)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !268)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !269)
!269 = !{!270, !275, !279, !283, !287, !288}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !268, file: !16, line: 216, baseType: !271, size: 64, align: 64)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64, align: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!262, !236, !274}
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64, align: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !268, file: !16, line: 218, baseType: !276, size: 64, align: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!262, !236}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !268, file: !16, line: 219, baseType: !280, size: 64, align: 64, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64, align: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!262, !236, !258, !241}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !268, file: !16, line: 222, baseType: !284, size: 64, align: 64, offset: 192)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64, align: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{null, !236}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !268, file: !16, line: 226, baseType: !258, size: 64, align: 64, offset: 256)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !268, file: !16, line: 227, baseType: !289, size: 64, align: 64, offset: 320)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64, align: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{null}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !238, file: !16, line: 178, baseType: !294, size: 32, align: 32, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !187, line: 55, baseType: !45)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !238, file: !16, line: 180, baseType: !296, size: 64, align: 64, offset: 256)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64, align: 64)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !298)
!298 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !238, file: !16, line: 182, baseType: !186, size: 32, align: 32, offset: 320)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !238, file: !16, line: 183, baseType: !294, size: 32, align: 32, offset: 352)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !238, file: !16, line: 184, baseType: !294, size: 32, align: 32, offset: 384)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !238, file: !16, line: 186, baseType: !303, size: 64, align: 64, offset: 448)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !305, line: 37, baseType: !306)
!305 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !305, line: 39, size: 128, align: 64, elements: !307)
!307 = !{!308, !309}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !306, file: !305, line: 41, baseType: !241, size: 64, align: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !306, file: !305, line: 42, baseType: !303, size: 64, align: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !238, file: !16, line: 188, baseType: !236, size: 64, align: 64, offset: 512)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !238, file: !16, line: 189, baseType: !236, size: 64, align: 64, offset: 576)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !238, file: !16, line: 191, baseType: !48, size: 64, align: 64, offset: 640)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !238, file: !16, line: 193, baseType: !314, size: 64, align: 64, offset: 704)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64, align: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !316)
!316 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !191, file: !4, line: 151, baseType: !319, size: 64, align: 64, offset: 320)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64, align: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{null, !181}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !191, file: !4, line: 152, baseType: !323, size: 64, align: 64, offset: 384)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64, align: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!197, !181, !326, !204}
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !191, file: !4, line: 155, baseType: !328, size: 64, align: 64, offset: 448)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64, align: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!326, !181}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !183, file: !4, line: 103, baseType: !198, size: 64, align: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !183, file: !4, line: 104, baseType: !333, size: 64, align: 64, offset: 192)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !334, line: 77, baseType: !335)
!334 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64, align: 64)
!336 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !334, line: 77, flags: DIFlagFwdDecl)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !183, file: !4, line: 105, baseType: !333, size: 64, align: 64, offset: 256)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !183, file: !4, line: 106, baseType: !198, size: 64, align: 64, offset: 320)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !183, file: !4, line: 107, baseType: !294, size: 32, align: 32, offset: 384)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !183, file: !4, line: 109, baseType: !200, size: 64, align: 64, offset: 448)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !183, file: !4, line: 110, baseType: !342, size: 64, align: 64, offset: 512)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64, align: 64)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !344, line: 39, baseType: !345)
!344 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !344, line: 41, size: 192, align: 64, elements: !346)
!346 = !{!347, !348, !349}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !345, file: !344, line: 43, baseType: !198, size: 64, align: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !345, file: !344, line: 44, baseType: !200, size: 64, align: 64, offset: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !345, file: !344, line: 45, baseType: !200, size: 64, align: 64, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !183, file: !4, line: 111, baseType: !342, size: 64, align: 64, offset: 576)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !183, file: !4, line: 112, baseType: !342, size: 64, align: 64, offset: 640)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !183, file: !4, line: 113, baseType: !353, size: 48, align: 8, offset: 704)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 48, align: 8, elements: !354)
!354 = !{!355}
!355 = !DISubrange(count: 6)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !183, file: !4, line: 117, baseType: !294, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !183, file: !4, line: 118, baseType: !294, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !183, file: !4, line: 119, baseType: !294, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !183, file: !4, line: 120, baseType: !294, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !183, file: !4, line: 121, baseType: !294, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !183, file: !4, line: 122, baseType: !294, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !183, file: !4, line: 124, baseType: !241, size: 64, align: 64, offset: 768)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !183, file: !4, line: 125, baseType: !241, size: 64, align: 64, offset: 832)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !149, file: !153, line: 38, baseType: !45, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !149, file: !153, line: 39, baseType: !45, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !149, file: !153, line: 40, baseType: !45, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !149, file: !153, line: 41, baseType: !45, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !149, file: !153, line: 42, baseType: !45, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !149, file: !153, line: 43, baseType: !45, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !149, file: !153, line: 44, baseType: !45, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !149, file: !153, line: 45, baseType: !45, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !149, file: !153, line: 46, baseType: !48, size: 64, align: 64, offset: 1792)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !149, file: !153, line: 47, baseType: !48, size: 64, align: 64, offset: 1856)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_server_connect", scope: !39, file: !40, line: 18, baseType: !375, size: 64, align: 64, offset: 512)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64, align: 64)
!376 = !DISubroutineType(types: !377)
!377 = !{null, !147}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "server_init_connect", scope: !39, file: !40, line: 20, baseType: !379, size: 64, align: 64, offset: 576)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64, align: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{!382, !147}
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64, align: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !38, line: 107, baseType: !384)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !150, line: 30, size: 2240, align: 64, elements: !385)
!385 = !{!386, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !404, !405, !409, !410, !411, !415, !416, !417, !418, !419, !420, !421, !422, !423, !430, !431, !432, !433, !434, !440, !444, !448, !452, !456, !461, !540, !567, !571}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !384, file: !387, line: 3, baseType: !43, size: 32, align: 32)
!387 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!388 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !384, file: !387, line: 4, baseType: !43, size: 32, align: 32, offset: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !384, file: !387, line: 6, baseType: !43, size: 32, align: 32, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !384, file: !387, line: 8, baseType: !147, size: 64, align: 64, offset: 128)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !384, file: !387, line: 9, baseType: !107, size: 64, align: 64, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !384, file: !387, line: 10, baseType: !107, size: 64, align: 64, offset: 256)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !384, file: !387, line: 12, baseType: !48, size: 64, align: 64, offset: 320)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !384, file: !387, line: 13, baseType: !48, size: 64, align: 64, offset: 384)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !384, file: !387, line: 15, baseType: !45, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !384, file: !387, line: 16, baseType: !45, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !384, file: !387, line: 17, baseType: !45, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !384, file: !387, line: 18, baseType: !45, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !384, file: !387, line: 19, baseType: !45, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !384, file: !387, line: 21, baseType: !401, size: 64, align: 64, offset: 512)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64, align: 64)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !38, line: 102, baseType: !403)
!403 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !38, line: 102, flags: DIFlagFwdDecl)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !384, file: !387, line: 22, baseType: !43, size: 32, align: 32, offset: 576)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !384, file: !387, line: 25, baseType: !406, size: 128, align: 64, offset: 640)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 128, align: 64, elements: !407)
!407 = !{!408}
!408 = !DISubrange(count: 2)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !384, file: !387, line: 26, baseType: !43, size: 32, align: 32, offset: 768)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !384, file: !387, line: 27, baseType: !43, size: 32, align: 32, offset: 800)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !384, file: !387, line: 29, baseType: !412, size: 64, align: 64, offset: 832)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64, align: 64)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !38, line: 103, baseType: !414)
!414 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !38, line: 103, flags: DIFlagFwdDecl)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !384, file: !387, line: 30, baseType: !120, size: 64, align: 64, offset: 896)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !384, file: !387, line: 32, baseType: !48, size: 64, align: 64, offset: 960)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !384, file: !387, line: 33, baseType: !48, size: 64, align: 64, offset: 1024)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !384, file: !387, line: 34, baseType: !48, size: 64, align: 64, offset: 1088)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !384, file: !387, line: 35, baseType: !45, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !384, file: !387, line: 36, baseType: !45, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !384, file: !387, line: 37, baseType: !45, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !384, file: !387, line: 38, baseType: !45, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !384, file: !387, line: 40, baseType: !424, size: 128, align: 64, offset: 1216)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !187, line: 504, baseType: !425)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !187, line: 506, size: 128, align: 64, elements: !426)
!426 = !{!427, !429}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !425, file: !187, line: 508, baseType: !428, size: 64, align: 64)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !187, line: 48, baseType: !111)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !425, file: !187, line: 509, baseType: !428, size: 64, align: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !384, file: !387, line: 41, baseType: !107, size: 64, align: 64, offset: 1344)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !384, file: !387, line: 42, baseType: !43, size: 32, align: 32, offset: 1408)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !384, file: !387, line: 44, baseType: !303, size: 64, align: 64, offset: 1472)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !384, file: !387, line: 45, baseType: !303, size: 64, align: 64, offset: 1536)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !384, file: !387, line: 53, baseType: !435, size: 64, align: 64, offset: 1600)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64, align: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !382, !438, !43}
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64, align: 64)
!439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !384, file: !387, line: 55, baseType: !441, size: 64, align: 64, offset: 1664)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64, align: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!43, !382, !49}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !384, file: !387, line: 57, baseType: !445, size: 64, align: 64, offset: 1728)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64, align: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{!43, !382, !438}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !384, file: !387, line: 60, baseType: !449, size: 64, align: 64, offset: 1792)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64, align: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{!438, !382}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !384, file: !387, line: 62, baseType: !453, size: 64, align: 64, offset: 1856)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64, align: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{null, !382, !438, !438, !43}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !384, file: !387, line: 65, baseType: !457, size: 64, align: 64, offset: 1920)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64, align: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!460, !382, !438, !438}
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !384, file: !387, line: 69, baseType: !462, size: 64, align: 64, offset: 1984)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64, align: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!465, !382, !438}
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64, align: 64)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !38, line: 109, baseType: !467)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !468, line: 15, size: 1408, align: 64, elements: !469)
!468 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!469 = !{!470, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !488, !492, !494, !495, !496, !497, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !467, file: !471, line: 3, baseType: !43, size: 32, align: 32)
!471 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!472 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !467, file: !471, line: 4, baseType: !43, size: 32, align: 32, offset: 32)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !467, file: !471, line: 5, baseType: !120, size: 64, align: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !467, file: !471, line: 7, baseType: !242, size: 64, align: 64, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !467, file: !471, line: 8, baseType: !382, size: 64, align: 64, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !467, file: !471, line: 9, baseType: !48, size: 64, align: 64, offset: 256)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !467, file: !471, line: 10, baseType: !48, size: 64, align: 64, offset: 320)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !467, file: !471, line: 11, baseType: !107, size: 64, align: 64, offset: 384)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !467, file: !471, line: 12, baseType: !43, size: 32, align: 32, offset: 448)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !467, file: !471, line: 13, baseType: !48, size: 64, align: 64, offset: 512)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !467, file: !471, line: 15, baseType: !482, size: 64, align: 64, offset: 576)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64, align: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{null, !485}
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64, align: 64)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !38, line: 108, baseType: !487)
!487 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !38, line: 108, flags: DIFlagFwdDecl)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !467, file: !471, line: 17, baseType: !489, size: 64, align: 64, offset: 640)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64, align: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!438, !485}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !467, file: !493, line: 5, baseType: !48, size: 64, align: 64, offset: 704)
!493 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!494 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !467, file: !493, line: 6, baseType: !48, size: 64, align: 64, offset: 768)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !467, file: !493, line: 7, baseType: !107, size: 64, align: 64, offset: 832)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !467, file: !493, line: 9, baseType: !120, size: 64, align: 64, offset: 896)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !467, file: !493, line: 10, baseType: !498, size: 64, align: 64, offset: 960)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64, align: 64)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !38, line: 111, baseType: !500)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !501, line: 13, size: 576, align: 64, elements: !502)
!501 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!502 = !{!503, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !521, !522}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !500, file: !504, line: 3, baseType: !43, size: 32, align: 32)
!504 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!505 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !500, file: !504, line: 4, baseType: !43, size: 32, align: 32, offset: 32)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !500, file: !504, line: 6, baseType: !107, size: 64, align: 64, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !500, file: !504, line: 8, baseType: !48, size: 64, align: 64, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !500, file: !504, line: 9, baseType: !48, size: 64, align: 64, offset: 192)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !500, file: !504, line: 10, baseType: !48, size: 64, align: 64, offset: 256)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !500, file: !504, line: 11, baseType: !43, size: 32, align: 32, offset: 320)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !500, file: !504, line: 14, baseType: !45, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !500, file: !504, line: 15, baseType: !45, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !500, file: !504, line: 18, baseType: !45, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !500, file: !504, line: 19, baseType: !45, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !500, file: !504, line: 20, baseType: !45, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !500, file: !504, line: 21, baseType: !45, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !500, file: !504, line: 22, baseType: !518, size: 64, align: 8, offset: 360)
!518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 64, align: 8, elements: !519)
!519 = !{!520}
!520 = !DISubrange(count: 8)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !500, file: !504, line: 26, baseType: !242, size: 64, align: 64, offset: 448)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !500, file: !504, line: 28, baseType: !498, size: 64, align: 64, offset: 512)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !467, file: !493, line: 12, baseType: !45, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !467, file: !493, line: 13, baseType: !48, size: 64, align: 64, offset: 1088)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !467, file: !493, line: 14, baseType: !43, size: 32, align: 32, offset: 1152)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !467, file: !493, line: 15, baseType: !48, size: 64, align: 64, offset: 1216)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !467, file: !493, line: 17, baseType: !45, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !467, file: !493, line: 18, baseType: !45, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !467, file: !493, line: 19, baseType: !45, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !467, file: !493, line: 20, baseType: !45, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !467, file: !493, line: 22, baseType: !45, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !467, file: !493, line: 23, baseType: !45, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !467, file: !493, line: 24, baseType: !45, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !467, file: !493, line: 25, baseType: !45, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !467, file: !493, line: 26, baseType: !45, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !467, file: !493, line: 31, baseType: !537, size: 64, align: 64, offset: 1344)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64, align: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!48, !465}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !384, file: !387, line: 70, baseType: !541, size: 64, align: 64, offset: 2048)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64, align: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!544, !382, !438}
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64, align: 64)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !38, line: 110, baseType: !546)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !547, line: 15, size: 960, align: 64, elements: !548)
!547 = !DIFile(filename: "../../../src/core/queries.h", directory: "/home/lichi/Desktop/irssi/task1")
!548 = !{!549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !563, !564, !565, !566}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !546, file: !471, line: 3, baseType: !43, size: 32, align: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !546, file: !471, line: 4, baseType: !43, size: 32, align: 32, offset: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !546, file: !471, line: 5, baseType: !120, size: 64, align: 64, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !546, file: !471, line: 7, baseType: !242, size: 64, align: 64, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !546, file: !471, line: 8, baseType: !382, size: 64, align: 64, offset: 192)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !546, file: !471, line: 9, baseType: !48, size: 64, align: 64, offset: 256)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !546, file: !471, line: 10, baseType: !48, size: 64, align: 64, offset: 320)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !546, file: !471, line: 11, baseType: !107, size: 64, align: 64, offset: 384)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !546, file: !471, line: 12, baseType: !43, size: 32, align: 32, offset: 448)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !546, file: !471, line: 13, baseType: !48, size: 64, align: 64, offset: 512)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !546, file: !471, line: 15, baseType: !482, size: 64, align: 64, offset: 576)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !546, file: !471, line: 17, baseType: !489, size: 64, align: 64, offset: 640)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !546, file: !562, line: 5, baseType: !48, size: 64, align: 64, offset: 704)
!562 = !DIFile(filename: "../../../src/core/query-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!563 = !DIDerivedType(tag: DW_TAG_member, name: "server_tag", scope: !546, file: !562, line: 6, baseType: !48, size: 64, align: 64, offset: 768)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "last_unread_msg", scope: !546, file: !562, line: 7, baseType: !107, size: 64, align: 64, offset: 832)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "unwanted", scope: !546, file: !562, line: 9, baseType: !45, size: 1, align: 32, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !546, file: !562, line: 11, baseType: !45, size: 1, align: 32, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !384, file: !387, line: 71, baseType: !568, size: 64, align: 64, offset: 2112)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64, align: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!43, !438, !438}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !384, file: !387, line: 73, baseType: !568, size: 64, align: 64, offset: 2176)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "server_connect", scope: !39, file: !40, line: 21, baseType: !573, size: 64, align: 64, offset: 640)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64, align: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{null, !382}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "channel_create", scope: !39, file: !40, line: 22, baseType: !577, size: 64, align: 64, offset: 704)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64, align: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!465, !382, !438, !438, !43}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "query_create", scope: !39, file: !40, line: 24, baseType: !581, size: 64, align: 64, offset: 768)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64, align: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!544, !438, !438, !43}
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64, align: 64)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !586, line: 5, baseType: !587)
!586 = !DIFile(filename: "irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !588, line: 24, size: 2496, align: 64, elements: !589)
!588 = !DIFile(filename: "irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!589 = !{!590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !587, file: !153, line: 3, baseType: !43, size: 32, align: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !587, file: !153, line: 4, baseType: !43, size: 32, align: 32, offset: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !587, file: !153, line: 6, baseType: !43, size: 32, align: 32, offset: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !587, file: !153, line: 9, baseType: !48, size: 64, align: 64, offset: 128)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !587, file: !153, line: 10, baseType: !43, size: 32, align: 32, offset: 192)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !587, file: !153, line: 11, baseType: !48, size: 64, align: 64, offset: 256)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !587, file: !153, line: 11, baseType: !48, size: 64, align: 64, offset: 320)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !587, file: !153, line: 11, baseType: !48, size: 64, align: 64, offset: 384)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !587, file: !153, line: 13, baseType: !89, size: 16, align: 16, offset: 448)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !587, file: !153, line: 14, baseType: !48, size: 64, align: 64, offset: 512)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !587, file: !153, line: 15, baseType: !48, size: 64, align: 64, offset: 576)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !587, file: !153, line: 16, baseType: !43, size: 32, align: 32, offset: 640)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !587, file: !153, line: 17, baseType: !48, size: 64, align: 64, offset: 704)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !587, file: !153, line: 19, baseType: !71, size: 64, align: 64, offset: 768)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !587, file: !153, line: 19, baseType: !71, size: 64, align: 64, offset: 832)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !587, file: !153, line: 21, baseType: !48, size: 64, align: 64, offset: 896)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !587, file: !153, line: 22, baseType: !48, size: 64, align: 64, offset: 960)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !587, file: !153, line: 23, baseType: !48, size: 64, align: 64, offset: 1024)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !587, file: !153, line: 24, baseType: !48, size: 64, align: 64, offset: 1088)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !587, file: !153, line: 26, baseType: !48, size: 64, align: 64, offset: 1152)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !587, file: !153, line: 27, baseType: !48, size: 64, align: 64, offset: 1216)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !587, file: !153, line: 28, baseType: !48, size: 64, align: 64, offset: 1280)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !587, file: !153, line: 29, baseType: !48, size: 64, align: 64, offset: 1344)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !587, file: !153, line: 30, baseType: !48, size: 64, align: 64, offset: 1408)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !587, file: !153, line: 31, baseType: !48, size: 64, align: 64, offset: 1472)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !587, file: !153, line: 32, baseType: !48, size: 64, align: 64, offset: 1536)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !587, file: !153, line: 33, baseType: !48, size: 64, align: 64, offset: 1600)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !587, file: !153, line: 35, baseType: !181, size: 64, align: 64, offset: 1664)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !587, file: !153, line: 38, baseType: !45, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !587, file: !153, line: 39, baseType: !45, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !587, file: !153, line: 40, baseType: !45, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !587, file: !153, line: 41, baseType: !45, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !587, file: !153, line: 42, baseType: !45, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !587, file: !153, line: 43, baseType: !45, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !587, file: !153, line: 44, baseType: !45, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !587, file: !153, line: 45, baseType: !45, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !587, file: !153, line: 46, baseType: !48, size: 64, align: 64, offset: 1792)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !587, file: !153, line: 47, baseType: !48, size: 64, align: 64, offset: 1856)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !587, file: !588, line: 27, baseType: !48, size: 64, align: 64, offset: 1920)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !587, file: !588, line: 28, baseType: !48, size: 64, align: 64, offset: 1984)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !587, file: !588, line: 30, baseType: !43, size: 32, align: 32, offset: 2048)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !587, file: !588, line: 31, baseType: !48, size: 64, align: 64, offset: 2112)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !587, file: !588, line: 32, baseType: !48, size: 64, align: 64, offset: 2176)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !587, file: !588, line: 34, baseType: !43, size: 32, align: 32, offset: 2240)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !587, file: !588, line: 35, baseType: !43, size: 32, align: 32, offset: 2272)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !587, file: !588, line: 36, baseType: !43, size: 32, align: 32, offset: 2304)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !587, file: !588, line: 38, baseType: !43, size: 32, align: 32, offset: 2336)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !587, file: !588, line: 38, baseType: !43, size: 32, align: 32, offset: 2368)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !587, file: !588, line: 38, baseType: !43, size: 32, align: 32, offset: 2400)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !587, file: !588, line: 38, baseType: !43, size: 32, align: 32, offset: 2432)
!640 = !{i32 2, !"Dwarf Version", i32 4}
!641 = !{i32 2, !"Debug Info Version", i32 3}
!642 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!643 = distinct !DISubprogram(name: "irc_core_init", scope: !644, file: !644, line: 80, type: !291, isLocal: false, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !645)
!644 = !DIFile(filename: "irc-core.c", directory: "/home/lichi/Desktop/irssi/task1")
!645 = !{}
!646 = !DILocalVariable(name: "rec", scope: !643, file: !644, line: 82, type: !36)
!647 = !DIExpression()
!648 = !DILocation(line: 82, column: 21, scope: !643)
!649 = !DILocation(line: 84, column: 31, scope: !643)
!650 = !DILocation(line: 84, column: 9, scope: !643)
!651 = !DILocation(line: 84, column: 6, scope: !643)
!652 = !DILocation(line: 85, column: 2, scope: !643)
!653 = !DILocation(line: 85, column: 7, scope: !643)
!654 = !DILocation(line: 85, column: 12, scope: !643)
!655 = !DILocation(line: 86, column: 2, scope: !643)
!656 = !DILocation(line: 86, column: 7, scope: !643)
!657 = !DILocation(line: 86, column: 16, scope: !643)
!658 = !DILocation(line: 87, column: 2, scope: !643)
!659 = !DILocation(line: 87, column: 7, scope: !643)
!660 = !DILocation(line: 87, column: 15, scope: !643)
!661 = !DILocation(line: 89, column: 9, scope: !643)
!662 = !DILocation(line: 89, column: 14, scope: !643)
!663 = !DILocation(line: 89, column: 31, scope: !643)
!664 = !DILocation(line: 91, column: 2, scope: !643)
!665 = !DILocation(line: 91, column: 7, scope: !643)
!666 = !DILocation(line: 91, column: 22, scope: !643)
!667 = !DILocation(line: 92, column: 9, scope: !643)
!668 = !DILocation(line: 92, column: 14, scope: !643)
!669 = !DILocation(line: 92, column: 34, scope: !643)
!670 = !DILocation(line: 93, column: 9, scope: !643)
!671 = !DILocation(line: 93, column: 14, scope: !643)
!672 = !DILocation(line: 93, column: 35, scope: !643)
!673 = !DILocation(line: 94, column: 2, scope: !643)
!674 = !DILocation(line: 94, column: 7, scope: !643)
!675 = !DILocation(line: 94, column: 29, scope: !643)
!676 = !DILocation(line: 95, column: 2, scope: !643)
!677 = !DILocation(line: 95, column: 7, scope: !643)
!678 = !DILocation(line: 95, column: 30, scope: !643)
!679 = !DILocation(line: 97, column: 2, scope: !643)
!680 = !DILocation(line: 97, column: 7, scope: !643)
!681 = !DILocation(line: 97, column: 27, scope: !643)
!682 = !DILocation(line: 98, column: 2, scope: !643)
!683 = !DILocation(line: 98, column: 7, scope: !643)
!684 = !DILocation(line: 98, column: 22, scope: !643)
!685 = !DILocation(line: 99, column: 2, scope: !643)
!686 = !DILocation(line: 99, column: 7, scope: !643)
!687 = !DILocation(line: 99, column: 22, scope: !643)
!688 = !DILocation(line: 103, column: 2, scope: !643)
!689 = !DILocation(line: 103, column: 7, scope: !643)
!690 = !DILocation(line: 103, column: 20, scope: !643)
!691 = !DILocation(line: 107, column: 25, scope: !643)
!692 = !DILocation(line: 107, column: 2, scope: !643)
!693 = !DILocation(line: 108, column: 16, scope: !643)
!694 = !DILocation(line: 108, column: 9, scope: !643)
!695 = !DILocation(line: 110, column: 9, scope: !643)
!696 = !DILocation(line: 111, column: 2, scope: !643)
!697 = !DILocation(line: 112, column: 2, scope: !643)
!698 = !DILocation(line: 113, column: 2, scope: !643)
!699 = !DILocation(line: 114, column: 2, scope: !643)
!700 = !DILocation(line: 116, column: 2, scope: !643)
!701 = !DILocation(line: 117, column: 2, scope: !643)
!702 = !DILocation(line: 118, column: 2, scope: !643)
!703 = !DILocation(line: 119, column: 2, scope: !643)
!704 = !DILocation(line: 120, column: 2, scope: !643)
!705 = !DILocation(line: 121, column: 2, scope: !643)
!706 = !DILocation(line: 122, column: 2, scope: !643)
!707 = !DILocation(line: 123, column: 2, scope: !643)
!708 = !DILocation(line: 125, column: 2, scope: !643)
!709 = !DILocation(line: 126, column: 2, scope: !643)
!710 = !DILocation(line: 127, column: 1, scope: !643)
!711 = distinct !DISubprogram(name: "create_chatnet", scope: !644, file: !644, line: 48, type: !54, isLocal: true, isDefinition: true, scopeLine: 49, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !645)
!712 = !DILocation(line: 50, column: 16, scope: !711)
!713 = !DILocation(line: 50, column: 9, scope: !711)
!714 = distinct !DISubprogram(name: "create_server_setup", scope: !644, file: !644, line: 53, type: !77, isLocal: true, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !645)
!715 = !DILocation(line: 55, column: 16, scope: !714)
!716 = !DILocation(line: 55, column: 9, scope: !714)
!717 = distinct !DISubprogram(name: "create_channel_setup", scope: !644, file: !644, line: 58, type: !126, isLocal: true, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !645)
!718 = !DILocation(line: 60, column: 16, scope: !717)
!719 = !DILocation(line: 60, column: 9, scope: !717)
!720 = distinct !DISubprogram(name: "create_server_connect", scope: !644, file: !644, line: 63, type: !145, isLocal: true, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !645)
!721 = !DILocation(line: 65, column: 16, scope: !720)
!722 = !DILocation(line: 65, column: 9, scope: !720)
!723 = distinct !DISubprogram(name: "destroy_server_connect", scope: !644, file: !644, line: 68, type: !376, isLocal: true, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !645)
!724 = !DILocalVariable(name: "conn", arg: 1, scope: !723, file: !644, line: 68, type: !147)
!725 = !DILocation(line: 68, column: 56, scope: !723)
!726 = !DILocalVariable(name: "ircconn", scope: !723, file: !644, line: 70, type: !584)
!727 = !DILocation(line: 70, column: 26, scope: !723)
!728 = !DILocation(line: 72, column: 114, scope: !723)
!729 = !DILocation(line: 72, column: 96, scope: !723)
!730 = !DILocation(line: 72, column: 73, scope: !723)
!731 = !DILocation(line: 72, column: 72, scope: !723)
!732 = !DILocation(line: 72, column: 47, scope: !733)
!733 = !DILexicalBlockFile(scope: !723, file: !644, discriminator: 1)
!734 = !DILocation(line: 72, column: 20, scope: !723)
!735 = !DILocation(line: 72, column: 17, scope: !723)
!736 = !DILocation(line: 73, column: 6, scope: !737)
!737 = distinct !DILexicalBlock(scope: !723, file: !644, line: 73, column: 6)
!738 = !DILocation(line: 73, column: 14, scope: !737)
!739 = !DILocation(line: 73, column: 6, scope: !723)
!740 = !DILocation(line: 74, column: 3, scope: !737)
!741 = !DILocation(line: 76, column: 9, scope: !723)
!742 = !DILocation(line: 76, column: 18, scope: !723)
!743 = !DILocation(line: 76, column: 2, scope: !723)
!744 = !DILocation(line: 77, column: 9, scope: !723)
!745 = !DILocation(line: 77, column: 18, scope: !723)
!746 = !DILocation(line: 77, column: 2, scope: !723)
!747 = !DILocation(line: 78, column: 1, scope: !723)
!748 = !DILocation(line: 78, column: 1, scope: !733)
!749 = distinct !DISubprogram(name: "irc_core_deinit", scope: !644, file: !644, line: 129, type: !291, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !645)
!750 = !DILocation(line: 131, column: 41, scope: !749)
!751 = !DILocation(line: 131, column: 2, scope: !752)
!752 = !DILexicalBlockFile(scope: !749, file: !644, discriminator: 1)
!753 = !DILocation(line: 133, column: 2, scope: !749)
!754 = !DILocation(line: 134, column: 2, scope: !749)
!755 = !DILocation(line: 135, column: 2, scope: !749)
!756 = !DILocation(line: 136, column: 2, scope: !749)
!757 = !DILocation(line: 137, column: 2, scope: !749)
!758 = !DILocation(line: 138, column: 2, scope: !749)
!759 = !DILocation(line: 139, column: 2, scope: !749)
!760 = !DILocation(line: 141, column: 2, scope: !749)
!761 = !DILocation(line: 142, column: 2, scope: !749)
!762 = !DILocation(line: 143, column: 2, scope: !749)
!763 = !DILocation(line: 144, column: 2, scope: !749)
!764 = !DILocation(line: 145, column: 2, scope: !749)
!765 = !DILocation(line: 146, column: 2, scope: !749)
!766 = !DILocation(line: 148, column: 2, scope: !749)
!767 = !DILocation(line: 149, column: 1, scope: !749)
